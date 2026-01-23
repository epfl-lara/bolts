; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487326 () Bool)

(assert start!487326)

(declare-fun b!4764752 () Bool)

(declare-fun b_free!129547 () Bool)

(declare-fun b_next!130337 () Bool)

(assert (=> b!4764752 (= b_free!129547 (not b_next!130337))))

(declare-fun tp!1354860 () Bool)

(declare-fun b_and!341239 () Bool)

(assert (=> b!4764752 (= tp!1354860 b_and!341239)))

(declare-fun b!4764757 () Bool)

(declare-fun b_free!129549 () Bool)

(declare-fun b_next!130339 () Bool)

(assert (=> b!4764757 (= b_free!129549 (not b_next!130339))))

(declare-fun tp!1354863 () Bool)

(declare-fun b_and!341241 () Bool)

(assert (=> b!4764757 (= tp!1354863 b_and!341241)))

(declare-fun res!2020858 () Bool)

(declare-fun e!2973824 () Bool)

(assert (=> start!487326 (=> (not res!2020858) (not e!2973824))))

(declare-datatypes ((K!14894 0))(
  ( (K!14895 (val!20221 Int)) )
))
(declare-datatypes ((V!15140 0))(
  ( (V!15141 (val!20222 Int)) )
))
(declare-datatypes ((tuple2!55444 0))(
  ( (tuple2!55445 (_1!31016 K!14894) (_2!31016 V!15140)) )
))
(declare-datatypes ((array!17906 0))(
  ( (array!17907 (arr!7987 (Array (_ BitVec 32) (_ BitVec 64))) (size!36217 (_ BitVec 32))) )
))
(declare-datatypes ((List!53566 0))(
  ( (Nil!53442) (Cons!53442 (h!59854 tuple2!55444) (t!360972 List!53566)) )
))
(declare-datatypes ((array!17908 0))(
  ( (array!17909 (arr!7988 (Array (_ BitVec 32) List!53566)) (size!36218 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6562 0))(
  ( (HashableExt!6561 (__x!32451 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9802 0))(
  ( (LongMapFixedSize!9803 (defaultEntry!5319 Int) (mask!14647 (_ BitVec 32)) (extraKeys!5176 (_ BitVec 32)) (zeroValue!5189 List!53566) (minValue!5189 List!53566) (_size!9827 (_ BitVec 32)) (_keys!5243 array!17906) (_values!5214 array!17908) (_vacant!4966 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19369 0))(
  ( (Cell!19370 (v!47540 LongMapFixedSize!9802)) )
))
(declare-datatypes ((MutLongMap!4901 0))(
  ( (LongMap!4901 (underlying!10009 Cell!19369)) (MutLongMapExt!4900 (__x!32452 Int)) )
))
(declare-datatypes ((Cell!19371 0))(
  ( (Cell!19372 (v!47541 MutLongMap!4901)) )
))
(declare-datatypes ((MutableMap!4785 0))(
  ( (MutableMapExt!4784 (__x!32453 Int)) (HashMap!4785 (underlying!10010 Cell!19371) (hashF!12387 Hashable!6562) (_size!9828 (_ BitVec 32)) (defaultValue!4956 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4785)

(get-info :version)

(assert (=> start!487326 (= res!2020858 ((_ is HashMap!4785) thiss!42052))))

(assert (=> start!487326 e!2973824))

(declare-fun e!2973830 () Bool)

(assert (=> start!487326 e!2973830))

(declare-fun tp_is_empty!32381 () Bool)

(assert (=> start!487326 tp_is_empty!32381))

(declare-fun b!4764750 () Bool)

(declare-fun e!2973828 () Bool)

(declare-fun e!2973829 () Bool)

(declare-fun lt!1927523 () MutLongMap!4901)

(assert (=> b!4764750 (= e!2973828 (and e!2973829 ((_ is LongMap!4901) lt!1927523)))))

(assert (=> b!4764750 (= lt!1927523 (v!47541 (underlying!10010 thiss!42052)))))

(declare-fun b!4764751 () Bool)

(declare-datatypes ((Unit!138116 0))(
  ( (Unit!138117) )
))
(declare-fun e!2973823 () Unit!138116)

(declare-fun Unit!138118 () Unit!138116)

(assert (=> b!4764751 (= e!2973823 Unit!138118)))

(declare-fun tp!1354859 () Bool)

(declare-fun e!2973825 () Bool)

(declare-fun tp!1354862 () Bool)

(declare-fun e!2973831 () Bool)

(declare-fun array_inv!5747 (array!17906) Bool)

(declare-fun array_inv!5748 (array!17908) Bool)

(assert (=> b!4764752 (= e!2973831 (and tp!1354860 tp!1354859 tp!1354862 (array_inv!5747 (_keys!5243 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) (array_inv!5748 (_values!5214 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) e!2973825))))

(declare-fun b!4764753 () Bool)

(declare-fun res!2020855 () Bool)

(assert (=> b!4764753 (=> (not res!2020855) (not e!2973824))))

(declare-fun valid!3900 (MutableMap!4785) Bool)

(assert (=> b!4764753 (= res!2020855 (valid!3900 thiss!42052))))

(declare-fun b!4764754 () Bool)

(declare-fun e!2973822 () Bool)

(assert (=> b!4764754 (= e!2973829 e!2973822)))

(declare-fun b!4764755 () Bool)

(declare-fun e!2973827 () Bool)

(declare-fun lt!1927519 () Bool)

(assert (=> b!4764755 (= e!2973827 lt!1927519)))

(declare-fun mapIsEmpty!21761 () Bool)

(declare-fun mapRes!21761 () Bool)

(assert (=> mapIsEmpty!21761 mapRes!21761))

(declare-fun b!4764756 () Bool)

(declare-fun Unit!138119 () Unit!138116)

(assert (=> b!4764756 (= e!2973823 Unit!138119)))

(declare-fun lt!1927526 () Unit!138116)

(declare-datatypes ((tuple2!55446 0))(
  ( (tuple2!55447 (_1!31017 (_ BitVec 64)) (_2!31017 List!53566)) )
))
(declare-datatypes ((List!53567 0))(
  ( (Nil!53443) (Cons!53443 (h!59855 tuple2!55446) (t!360973 List!53567)) )
))
(declare-datatypes ((ListLongMap!4653 0))(
  ( (ListLongMap!4654 (toList!6257 List!53567)) )
))
(declare-fun lt!1927520 () ListLongMap!4653)

(declare-fun lt!1927521 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1971 (List!53567 (_ BitVec 64)) Unit!138116)

(assert (=> b!4764756 (= lt!1927526 (lemmaContainsKeyImpliesGetValueByKeyDefined!1971 (toList!6257 lt!1927520) lt!1927521))))

(declare-datatypes ((Option!12634 0))(
  ( (None!12633) (Some!12633 (v!47542 List!53566)) )
))
(declare-fun isDefined!9807 (Option!12634) Bool)

(declare-fun getValueByKey!2157 (List!53567 (_ BitVec 64)) Option!12634)

(assert (=> b!4764756 (isDefined!9807 (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521))))

(declare-fun lt!1927524 () Unit!138116)

(declare-fun lt!1927522 () List!53566)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!915 (List!53567 (_ BitVec 64) List!53566) Unit!138116)

(assert (=> b!4764756 (= lt!1927524 (lemmaGetValueByKeyImpliesContainsTuple!915 (toList!6257 lt!1927520) lt!1927521 lt!1927522))))

(assert (=> b!4764756 false))

(assert (=> b!4764757 (= e!2973830 (and e!2973828 tp!1354863))))

(declare-fun b!4764758 () Bool)

(declare-fun res!2020856 () Bool)

(assert (=> b!4764758 (=> (not res!2020856) (not e!2973824))))

(declare-fun key!1776 () K!14894)

(declare-fun contains!16760 (MutableMap!4785 K!14894) Bool)

(assert (=> b!4764758 (= res!2020856 (contains!16760 thiss!42052 key!1776))))

(declare-fun b!4764759 () Bool)

(assert (=> b!4764759 (= e!2973824 e!2973827)))

(declare-fun res!2020857 () Bool)

(assert (=> b!4764759 (=> res!2020857 e!2973827)))

(declare-fun lambda!224075 () Int)

(declare-fun forall!11864 (List!53567 Int) Bool)

(assert (=> b!4764759 (= res!2020857 (not (forall!11864 (toList!6257 lt!1927520) lambda!224075)))))

(declare-fun lt!1927525 () Unit!138116)

(assert (=> b!4764759 (= lt!1927525 e!2973823)))

(declare-fun c!812779 () Bool)

(assert (=> b!4764759 (= c!812779 lt!1927519)))

(declare-fun contains!16761 (List!53567 tuple2!55446) Bool)

(assert (=> b!4764759 (= lt!1927519 (not (contains!16761 (toList!6257 lt!1927520) (tuple2!55447 lt!1927521 lt!1927522))))))

(declare-fun apply!12588 (MutLongMap!4901 (_ BitVec 64)) List!53566)

(assert (=> b!4764759 (= lt!1927522 (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927521))))

(declare-fun map!11942 (MutLongMap!4901) ListLongMap!4653)

(assert (=> b!4764759 (= lt!1927520 (map!11942 (v!47541 (underlying!10010 thiss!42052))))))

(declare-fun hash!4546 (Hashable!6562 K!14894) (_ BitVec 64))

(assert (=> b!4764759 (= lt!1927521 (hash!4546 (hashF!12387 thiss!42052) key!1776))))

(declare-fun mapNonEmpty!21761 () Bool)

(declare-fun tp!1354861 () Bool)

(declare-fun tp!1354857 () Bool)

(assert (=> mapNonEmpty!21761 (= mapRes!21761 (and tp!1354861 tp!1354857))))

(declare-fun mapRest!21761 () (Array (_ BitVec 32) List!53566))

(declare-fun mapValue!21761 () List!53566)

(declare-fun mapKey!21761 () (_ BitVec 32))

(assert (=> mapNonEmpty!21761 (= (arr!7988 (_values!5214 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) (store mapRest!21761 mapKey!21761 mapValue!21761))))

(declare-fun b!4764760 () Bool)

(assert (=> b!4764760 (= e!2973822 e!2973831)))

(declare-fun b!4764761 () Bool)

(declare-fun tp!1354858 () Bool)

(assert (=> b!4764761 (= e!2973825 (and tp!1354858 mapRes!21761))))

(declare-fun condMapEmpty!21761 () Bool)

(declare-fun mapDefault!21761 () List!53566)

(assert (=> b!4764761 (= condMapEmpty!21761 (= (arr!7988 (_values!5214 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53566)) mapDefault!21761)))))

(assert (= (and start!487326 res!2020858) b!4764753))

(assert (= (and b!4764753 res!2020855) b!4764758))

(assert (= (and b!4764758 res!2020856) b!4764759))

(assert (= (and b!4764759 c!812779) b!4764756))

(assert (= (and b!4764759 (not c!812779)) b!4764751))

(assert (= (and b!4764759 (not res!2020857)) b!4764755))

(assert (= (and b!4764761 condMapEmpty!21761) mapIsEmpty!21761))

(assert (= (and b!4764761 (not condMapEmpty!21761)) mapNonEmpty!21761))

(assert (= b!4764752 b!4764761))

(assert (= b!4764760 b!4764752))

(assert (= b!4764754 b!4764760))

(assert (= (and b!4764750 ((_ is LongMap!4901) (v!47541 (underlying!10010 thiss!42052)))) b!4764754))

(assert (= b!4764757 b!4764750))

(assert (= (and start!487326 ((_ is HashMap!4785) thiss!42052)) b!4764757))

(declare-fun m!5735218 () Bool)

(assert (=> b!4764753 m!5735218))

(declare-fun m!5735220 () Bool)

(assert (=> b!4764758 m!5735220))

(declare-fun m!5735222 () Bool)

(assert (=> b!4764759 m!5735222))

(declare-fun m!5735224 () Bool)

(assert (=> b!4764759 m!5735224))

(declare-fun m!5735226 () Bool)

(assert (=> b!4764759 m!5735226))

(declare-fun m!5735228 () Bool)

(assert (=> b!4764759 m!5735228))

(declare-fun m!5735230 () Bool)

(assert (=> b!4764759 m!5735230))

(declare-fun m!5735232 () Bool)

(assert (=> b!4764756 m!5735232))

(declare-fun m!5735234 () Bool)

(assert (=> b!4764756 m!5735234))

(assert (=> b!4764756 m!5735234))

(declare-fun m!5735236 () Bool)

(assert (=> b!4764756 m!5735236))

(declare-fun m!5735238 () Bool)

(assert (=> b!4764756 m!5735238))

(declare-fun m!5735240 () Bool)

(assert (=> b!4764752 m!5735240))

(declare-fun m!5735242 () Bool)

(assert (=> b!4764752 m!5735242))

(declare-fun m!5735244 () Bool)

(assert (=> mapNonEmpty!21761 m!5735244))

(check-sat (not b!4764759) (not b_next!130339) (not mapNonEmpty!21761) tp_is_empty!32381 (not b!4764758) (not b_next!130337) (not b!4764753) (not b!4764752) (not b!4764761) (not b!4764756) b_and!341239 b_and!341241)
(check-sat b_and!341241 b_and!341239 (not b_next!130339) (not b_next!130337))
(get-model)

(declare-fun bs!1148733 () Bool)

(declare-fun b!4764790 () Bool)

(assert (= bs!1148733 (and b!4764790 b!4764759)))

(declare-fun lambda!224078 () Int)

(assert (=> bs!1148733 (= lambda!224078 lambda!224075)))

(declare-fun b!4764784 () Bool)

(declare-fun e!2973852 () Unit!138116)

(declare-fun Unit!138120 () Unit!138116)

(assert (=> b!4764784 (= e!2973852 Unit!138120)))

(declare-fun call!334071 () ListLongMap!4653)

(declare-fun lt!1927585 () ListLongMap!4653)

(declare-fun call!334072 () List!53566)

(declare-fun call!334073 () (_ BitVec 64))

(declare-fun c!812788 () Bool)

(declare-fun bm!334065 () Bool)

(declare-fun apply!12589 (ListLongMap!4653 (_ BitVec 64)) List!53566)

(assert (=> bm!334065 (= call!334072 (apply!12589 (ite c!812788 lt!1927585 call!334071) call!334073))))

(declare-fun b!4764785 () Bool)

(assert (=> b!4764785 false))

(declare-fun lt!1927567 () Unit!138116)

(declare-fun lt!1927584 () Unit!138116)

(assert (=> b!4764785 (= lt!1927567 lt!1927584)))

(declare-fun lt!1927577 () ListLongMap!4653)

(declare-datatypes ((ListMap!5755 0))(
  ( (ListMap!5756 (toList!6258 List!53566)) )
))
(declare-fun contains!16762 (ListMap!5755 K!14894) Bool)

(declare-fun extractMap!2130 (List!53567) ListMap!5755)

(assert (=> b!4764785 (contains!16762 (extractMap!2130 (toList!6257 lt!1927577)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!194 (ListLongMap!4653 K!14894 Hashable!6562) Unit!138116)

(assert (=> b!4764785 (= lt!1927584 (lemmaInLongMapThenInGenericMap!194 lt!1927577 key!1776 (hashF!12387 thiss!42052)))))

(assert (=> b!4764785 (= lt!1927577 call!334071)))

(declare-fun Unit!138121 () Unit!138116)

(assert (=> b!4764785 (= e!2973852 Unit!138121)))

(declare-fun b!4764786 () Bool)

(declare-fun e!2973850 () Unit!138116)

(assert (=> b!4764786 (= e!2973850 e!2973852)))

(declare-fun res!2020866 () Bool)

(declare-fun call!334070 () Bool)

(assert (=> b!4764786 (= res!2020866 call!334070)))

(declare-fun e!2973846 () Bool)

(assert (=> b!4764786 (=> (not res!2020866) (not e!2973846))))

(declare-fun c!812791 () Bool)

(assert (=> b!4764786 (= c!812791 e!2973846)))

(declare-fun bm!334066 () Bool)

(assert (=> bm!334066 (= call!334073 (hash!4546 (hashF!12387 thiss!42052) key!1776))))

(declare-fun b!4764787 () Bool)

(declare-fun lt!1927570 () (_ BitVec 64))

(declare-fun e!2973851 () Bool)

(declare-datatypes ((Option!12635 0))(
  ( (None!12634) (Some!12634 (v!47545 tuple2!55444)) )
))
(declare-fun isDefined!9808 (Option!12635) Bool)

(declare-fun getPair!630 (List!53566 K!14894) Option!12635)

(assert (=> b!4764787 (= e!2973851 (isDefined!9808 (getPair!630 (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927570) key!1776)))))

(declare-fun b!4764788 () Bool)

(declare-fun e!2973848 () Bool)

(declare-fun call!334069 () Bool)

(assert (=> b!4764788 (= e!2973848 call!334069)))

(declare-fun b!4764789 () Bool)

(assert (=> b!4764789 false))

(declare-fun lt!1927572 () Unit!138116)

(declare-fun lt!1927576 () Unit!138116)

(assert (=> b!4764789 (= lt!1927572 lt!1927576)))

(declare-fun lt!1927581 () List!53567)

(declare-fun lt!1927578 () List!53566)

(assert (=> b!4764789 (contains!16761 lt!1927581 (tuple2!55447 lt!1927570 lt!1927578))))

(assert (=> b!4764789 (= lt!1927576 (lemmaGetValueByKeyImpliesContainsTuple!915 lt!1927581 lt!1927570 lt!1927578))))

(assert (=> b!4764789 (= lt!1927578 (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927570))))

(assert (=> b!4764789 (= lt!1927581 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))))))

(declare-fun lt!1927575 () Unit!138116)

(declare-fun lt!1927574 () Unit!138116)

(assert (=> b!4764789 (= lt!1927575 lt!1927574)))

(declare-fun lt!1927583 () List!53567)

(assert (=> b!4764789 (isDefined!9807 (getValueByKey!2157 lt!1927583 lt!1927570))))

(assert (=> b!4764789 (= lt!1927574 (lemmaContainsKeyImpliesGetValueByKeyDefined!1971 lt!1927583 lt!1927570))))

(assert (=> b!4764789 (= lt!1927583 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))))))

(declare-fun lt!1927582 () Unit!138116)

(declare-fun lt!1927573 () Unit!138116)

(assert (=> b!4764789 (= lt!1927582 lt!1927573)))

(declare-fun lt!1927568 () List!53567)

(declare-fun containsKey!3651 (List!53567 (_ BitVec 64)) Bool)

(assert (=> b!4764789 (containsKey!3651 lt!1927568 lt!1927570)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!195 (List!53567 (_ BitVec 64)) Unit!138116)

(assert (=> b!4764789 (= lt!1927573 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!195 lt!1927568 lt!1927570))))

(assert (=> b!4764789 (= lt!1927568 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))))))

(declare-fun e!2973849 () Unit!138116)

(declare-fun Unit!138122 () Unit!138116)

(assert (=> b!4764789 (= e!2973849 Unit!138122)))

(declare-fun bm!334064 () Bool)

(assert (=> bm!334064 (= call!334071 (map!11942 (v!47541 (underlying!10010 thiss!42052))))))

(declare-fun d!1523284 () Bool)

(declare-fun lt!1927579 () Bool)

(declare-fun map!11943 (MutableMap!4785) ListMap!5755)

(assert (=> d!1523284 (= lt!1927579 (contains!16762 (map!11943 thiss!42052) key!1776))))

(assert (=> d!1523284 (= lt!1927579 e!2973851)))

(declare-fun res!2020865 () Bool)

(assert (=> d!1523284 (=> (not res!2020865) (not e!2973851))))

(declare-fun contains!16763 (MutLongMap!4901 (_ BitVec 64)) Bool)

(assert (=> d!1523284 (= res!2020865 (contains!16763 (v!47541 (underlying!10010 thiss!42052)) lt!1927570))))

(declare-fun lt!1927580 () Unit!138116)

(assert (=> d!1523284 (= lt!1927580 e!2973850)))

(assert (=> d!1523284 (= c!812788 (contains!16762 (extractMap!2130 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052))))) key!1776))))

(declare-fun lt!1927569 () Unit!138116)

(declare-fun e!2973847 () Unit!138116)

(assert (=> d!1523284 (= lt!1927569 e!2973847)))

(declare-fun c!812790 () Bool)

(assert (=> d!1523284 (= c!812790 (contains!16763 (v!47541 (underlying!10010 thiss!42052)) lt!1927570))))

(assert (=> d!1523284 (= lt!1927570 (hash!4546 (hashF!12387 thiss!42052) key!1776))))

(assert (=> d!1523284 (valid!3900 thiss!42052)))

(assert (=> d!1523284 (= (contains!16760 thiss!42052 key!1776) lt!1927579)))

(declare-fun bm!334067 () Bool)

(declare-fun call!334074 () Option!12635)

(assert (=> bm!334067 (= call!334069 (isDefined!9808 call!334074))))

(declare-fun forallContained!3845 (List!53567 Int tuple2!55446) Unit!138116)

(assert (=> b!4764790 (= e!2973847 (forallContained!3845 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))) lambda!224078 (tuple2!55447 lt!1927570 (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927570))))))

(declare-fun c!812789 () Bool)

(assert (=> b!4764790 (= c!812789 (not (contains!16761 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))) (tuple2!55447 lt!1927570 (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927570)))))))

(declare-fun lt!1927586 () Unit!138116)

(assert (=> b!4764790 (= lt!1927586 e!2973849)))

(declare-fun bm!334068 () Bool)

(declare-fun contains!16764 (ListLongMap!4653 (_ BitVec 64)) Bool)

(assert (=> bm!334068 (= call!334070 (contains!16764 (ite c!812788 lt!1927585 call!334071) call!334073))))

(declare-fun b!4764791 () Bool)

(declare-fun Unit!138123 () Unit!138116)

(assert (=> b!4764791 (= e!2973849 Unit!138123)))

(declare-fun b!4764792 () Bool)

(declare-fun Unit!138124 () Unit!138116)

(assert (=> b!4764792 (= e!2973847 Unit!138124)))

(declare-fun b!4764793 () Bool)

(assert (=> b!4764793 (= e!2973846 call!334069)))

(declare-fun bm!334069 () Bool)

(assert (=> bm!334069 (= call!334074 (getPair!630 call!334072 key!1776))))

(declare-fun b!4764794 () Bool)

(declare-fun lt!1927571 () Unit!138116)

(assert (=> b!4764794 (= e!2973850 lt!1927571)))

(assert (=> b!4764794 (= lt!1927585 call!334071)))

(declare-fun lemmaInGenericMapThenInLongMap!194 (ListLongMap!4653 K!14894 Hashable!6562) Unit!138116)

(assert (=> b!4764794 (= lt!1927571 (lemmaInGenericMapThenInLongMap!194 lt!1927585 key!1776 (hashF!12387 thiss!42052)))))

(declare-fun res!2020867 () Bool)

(assert (=> b!4764794 (= res!2020867 call!334070)))

(assert (=> b!4764794 (=> (not res!2020867) (not e!2973848))))

(assert (=> b!4764794 e!2973848))

(assert (= (and d!1523284 c!812790) b!4764790))

(assert (= (and d!1523284 (not c!812790)) b!4764792))

(assert (= (and b!4764790 c!812789) b!4764789))

(assert (= (and b!4764790 (not c!812789)) b!4764791))

(assert (= (and d!1523284 c!812788) b!4764794))

(assert (= (and d!1523284 (not c!812788)) b!4764786))

(assert (= (and b!4764794 res!2020867) b!4764788))

(assert (= (and b!4764786 res!2020866) b!4764793))

(assert (= (and b!4764786 c!812791) b!4764785))

(assert (= (and b!4764786 (not c!812791)) b!4764784))

(assert (= (or b!4764794 b!4764788 b!4764786 b!4764793) bm!334066))

(assert (= (or b!4764794 b!4764786 b!4764793 b!4764785) bm!334064))

(assert (= (or b!4764788 b!4764793) bm!334065))

(assert (= (or b!4764794 b!4764786) bm!334068))

(assert (= (or b!4764788 b!4764793) bm!334069))

(assert (= (or b!4764788 b!4764793) bm!334067))

(assert (= (and d!1523284 res!2020865) b!4764787))

(assert (=> bm!334066 m!5735230))

(declare-fun m!5735246 () Bool)

(assert (=> b!4764789 m!5735246))

(declare-fun m!5735248 () Bool)

(assert (=> b!4764789 m!5735248))

(declare-fun m!5735250 () Bool)

(assert (=> b!4764789 m!5735250))

(declare-fun m!5735252 () Bool)

(assert (=> b!4764789 m!5735252))

(declare-fun m!5735254 () Bool)

(assert (=> b!4764789 m!5735254))

(declare-fun m!5735256 () Bool)

(assert (=> b!4764789 m!5735256))

(declare-fun m!5735258 () Bool)

(assert (=> b!4764789 m!5735258))

(assert (=> b!4764789 m!5735228))

(declare-fun m!5735260 () Bool)

(assert (=> b!4764789 m!5735260))

(assert (=> b!4764789 m!5735254))

(declare-fun m!5735262 () Bool)

(assert (=> d!1523284 m!5735262))

(declare-fun m!5735264 () Bool)

(assert (=> d!1523284 m!5735264))

(declare-fun m!5735266 () Bool)

(assert (=> d!1523284 m!5735266))

(declare-fun m!5735268 () Bool)

(assert (=> d!1523284 m!5735268))

(assert (=> d!1523284 m!5735266))

(assert (=> d!1523284 m!5735228))

(assert (=> d!1523284 m!5735230))

(assert (=> d!1523284 m!5735218))

(assert (=> d!1523284 m!5735264))

(declare-fun m!5735270 () Bool)

(assert (=> d!1523284 m!5735270))

(declare-fun m!5735272 () Bool)

(assert (=> bm!334068 m!5735272))

(assert (=> bm!334064 m!5735228))

(assert (=> b!4764790 m!5735228))

(assert (=> b!4764790 m!5735250))

(declare-fun m!5735274 () Bool)

(assert (=> b!4764790 m!5735274))

(declare-fun m!5735276 () Bool)

(assert (=> b!4764790 m!5735276))

(declare-fun m!5735278 () Bool)

(assert (=> b!4764785 m!5735278))

(assert (=> b!4764785 m!5735278))

(declare-fun m!5735280 () Bool)

(assert (=> b!4764785 m!5735280))

(declare-fun m!5735282 () Bool)

(assert (=> b!4764785 m!5735282))

(assert (=> b!4764787 m!5735250))

(assert (=> b!4764787 m!5735250))

(declare-fun m!5735284 () Bool)

(assert (=> b!4764787 m!5735284))

(assert (=> b!4764787 m!5735284))

(declare-fun m!5735286 () Bool)

(assert (=> b!4764787 m!5735286))

(declare-fun m!5735288 () Bool)

(assert (=> bm!334067 m!5735288))

(declare-fun m!5735290 () Bool)

(assert (=> bm!334065 m!5735290))

(declare-fun m!5735292 () Bool)

(assert (=> bm!334069 m!5735292))

(declare-fun m!5735294 () Bool)

(assert (=> b!4764794 m!5735294))

(assert (=> b!4764758 d!1523284))

(declare-fun bs!1148734 () Bool)

(declare-fun b!4764799 () Bool)

(assert (= bs!1148734 (and b!4764799 b!4764759)))

(declare-fun lambda!224081 () Int)

(assert (=> bs!1148734 (= lambda!224081 lambda!224075)))

(declare-fun bs!1148735 () Bool)

(assert (= bs!1148735 (and b!4764799 b!4764790)))

(assert (=> bs!1148735 (= lambda!224081 lambda!224078)))

(declare-fun d!1523286 () Bool)

(declare-fun res!2020872 () Bool)

(declare-fun e!2973855 () Bool)

(assert (=> d!1523286 (=> (not res!2020872) (not e!2973855))))

(declare-fun valid!3901 (MutLongMap!4901) Bool)

(assert (=> d!1523286 (= res!2020872 (valid!3901 (v!47541 (underlying!10010 thiss!42052))))))

(assert (=> d!1523286 (= (valid!3900 thiss!42052) e!2973855)))

(declare-fun res!2020873 () Bool)

(assert (=> b!4764799 (=> (not res!2020873) (not e!2973855))))

(assert (=> b!4764799 (= res!2020873 (forall!11864 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))) lambda!224081))))

(declare-fun b!4764800 () Bool)

(declare-fun allKeysSameHashInMap!2011 (ListLongMap!4653 Hashable!6562) Bool)

(assert (=> b!4764800 (= e!2973855 (allKeysSameHashInMap!2011 (map!11942 (v!47541 (underlying!10010 thiss!42052))) (hashF!12387 thiss!42052)))))

(assert (= (and d!1523286 res!2020872) b!4764799))

(assert (= (and b!4764799 res!2020873) b!4764800))

(declare-fun m!5735296 () Bool)

(assert (=> d!1523286 m!5735296))

(assert (=> b!4764799 m!5735228))

(declare-fun m!5735298 () Bool)

(assert (=> b!4764799 m!5735298))

(assert (=> b!4764800 m!5735228))

(assert (=> b!4764800 m!5735228))

(declare-fun m!5735300 () Bool)

(assert (=> b!4764800 m!5735300))

(assert (=> b!4764753 d!1523286))

(declare-fun d!1523288 () Bool)

(assert (=> d!1523288 (= (array_inv!5747 (_keys!5243 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) (bvsge (size!36217 (_keys!5243 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764752 d!1523288))

(declare-fun d!1523290 () Bool)

(assert (=> d!1523290 (= (array_inv!5748 (_values!5214 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) (bvsge (size!36218 (_values!5214 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764752 d!1523290))

(declare-fun d!1523292 () Bool)

(assert (=> d!1523292 (isDefined!9807 (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521))))

(declare-fun lt!1927589 () Unit!138116)

(declare-fun choose!33932 (List!53567 (_ BitVec 64)) Unit!138116)

(assert (=> d!1523292 (= lt!1927589 (choose!33932 (toList!6257 lt!1927520) lt!1927521))))

(declare-fun e!2973858 () Bool)

(assert (=> d!1523292 e!2973858))

(declare-fun res!2020876 () Bool)

(assert (=> d!1523292 (=> (not res!2020876) (not e!2973858))))

(declare-fun isStrictlySorted!800 (List!53567) Bool)

(assert (=> d!1523292 (= res!2020876 (isStrictlySorted!800 (toList!6257 lt!1927520)))))

(assert (=> d!1523292 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1971 (toList!6257 lt!1927520) lt!1927521) lt!1927589)))

(declare-fun b!4764803 () Bool)

(assert (=> b!4764803 (= e!2973858 (containsKey!3651 (toList!6257 lt!1927520) lt!1927521))))

(assert (= (and d!1523292 res!2020876) b!4764803))

(assert (=> d!1523292 m!5735234))

(assert (=> d!1523292 m!5735234))

(assert (=> d!1523292 m!5735236))

(declare-fun m!5735302 () Bool)

(assert (=> d!1523292 m!5735302))

(declare-fun m!5735304 () Bool)

(assert (=> d!1523292 m!5735304))

(declare-fun m!5735306 () Bool)

(assert (=> b!4764803 m!5735306))

(assert (=> b!4764756 d!1523292))

(declare-fun d!1523294 () Bool)

(declare-fun isEmpty!29267 (Option!12634) Bool)

(assert (=> d!1523294 (= (isDefined!9807 (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521)) (not (isEmpty!29267 (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521))))))

(declare-fun bs!1148736 () Bool)

(assert (= bs!1148736 d!1523294))

(assert (=> bs!1148736 m!5735234))

(declare-fun m!5735308 () Bool)

(assert (=> bs!1148736 m!5735308))

(assert (=> b!4764756 d!1523294))

(declare-fun d!1523296 () Bool)

(declare-fun c!812796 () Bool)

(assert (=> d!1523296 (= c!812796 (and ((_ is Cons!53443) (toList!6257 lt!1927520)) (= (_1!31017 (h!59855 (toList!6257 lt!1927520))) lt!1927521)))))

(declare-fun e!2973863 () Option!12634)

(assert (=> d!1523296 (= (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521) e!2973863)))

(declare-fun b!4764814 () Bool)

(declare-fun e!2973864 () Option!12634)

(assert (=> b!4764814 (= e!2973864 (getValueByKey!2157 (t!360973 (toList!6257 lt!1927520)) lt!1927521))))

(declare-fun b!4764813 () Bool)

(assert (=> b!4764813 (= e!2973863 e!2973864)))

(declare-fun c!812797 () Bool)

(assert (=> b!4764813 (= c!812797 (and ((_ is Cons!53443) (toList!6257 lt!1927520)) (not (= (_1!31017 (h!59855 (toList!6257 lt!1927520))) lt!1927521))))))

(declare-fun b!4764812 () Bool)

(assert (=> b!4764812 (= e!2973863 (Some!12633 (_2!31017 (h!59855 (toList!6257 lt!1927520)))))))

(declare-fun b!4764815 () Bool)

(assert (=> b!4764815 (= e!2973864 None!12633)))

(assert (= (and d!1523296 c!812796) b!4764812))

(assert (= (and d!1523296 (not c!812796)) b!4764813))

(assert (= (and b!4764813 c!812797) b!4764814))

(assert (= (and b!4764813 (not c!812797)) b!4764815))

(declare-fun m!5735310 () Bool)

(assert (=> b!4764814 m!5735310))

(assert (=> b!4764756 d!1523296))

(declare-fun d!1523298 () Bool)

(assert (=> d!1523298 (contains!16761 (toList!6257 lt!1927520) (tuple2!55447 lt!1927521 lt!1927522))))

(declare-fun lt!1927592 () Unit!138116)

(declare-fun choose!33933 (List!53567 (_ BitVec 64) List!53566) Unit!138116)

(assert (=> d!1523298 (= lt!1927592 (choose!33933 (toList!6257 lt!1927520) lt!1927521 lt!1927522))))

(declare-fun e!2973867 () Bool)

(assert (=> d!1523298 e!2973867))

(declare-fun res!2020879 () Bool)

(assert (=> d!1523298 (=> (not res!2020879) (not e!2973867))))

(assert (=> d!1523298 (= res!2020879 (isStrictlySorted!800 (toList!6257 lt!1927520)))))

(assert (=> d!1523298 (= (lemmaGetValueByKeyImpliesContainsTuple!915 (toList!6257 lt!1927520) lt!1927521 lt!1927522) lt!1927592)))

(declare-fun b!4764818 () Bool)

(assert (=> b!4764818 (= e!2973867 (= (getValueByKey!2157 (toList!6257 lt!1927520) lt!1927521) (Some!12633 lt!1927522)))))

(assert (= (and d!1523298 res!2020879) b!4764818))

(assert (=> d!1523298 m!5735226))

(declare-fun m!5735312 () Bool)

(assert (=> d!1523298 m!5735312))

(assert (=> d!1523298 m!5735304))

(assert (=> b!4764818 m!5735234))

(assert (=> b!4764756 d!1523298))

(declare-fun d!1523300 () Bool)

(declare-fun e!2973870 () Bool)

(assert (=> d!1523300 e!2973870))

(declare-fun c!812800 () Bool)

(assert (=> d!1523300 (= c!812800 (contains!16763 (v!47541 (underlying!10010 thiss!42052)) lt!1927521))))

(declare-fun lt!1927595 () List!53566)

(declare-fun apply!12590 (LongMapFixedSize!9802 (_ BitVec 64)) List!53566)

(assert (=> d!1523300 (= lt!1927595 (apply!12590 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))) lt!1927521))))

(assert (=> d!1523300 (valid!3901 (v!47541 (underlying!10010 thiss!42052)))))

(assert (=> d!1523300 (= (apply!12588 (v!47541 (underlying!10010 thiss!42052)) lt!1927521) lt!1927595)))

(declare-fun b!4764823 () Bool)

(declare-fun get!17994 (Option!12634) List!53566)

(assert (=> b!4764823 (= e!2973870 (= lt!1927595 (get!17994 (getValueByKey!2157 (toList!6257 (map!11942 (v!47541 (underlying!10010 thiss!42052)))) lt!1927521))))))

(declare-fun b!4764824 () Bool)

(declare-fun dynLambda!21936 (Int (_ BitVec 64)) List!53566)

(assert (=> b!4764824 (= e!2973870 (= lt!1927595 (dynLambda!21936 (defaultEntry!5319 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052))))) lt!1927521)))))

(assert (=> b!4764824 ((_ is LongMap!4901) (v!47541 (underlying!10010 thiss!42052)))))

(assert (= (and d!1523300 c!812800) b!4764823))

(assert (= (and d!1523300 (not c!812800)) b!4764824))

(declare-fun b_lambda!184275 () Bool)

(assert (=> (not b_lambda!184275) (not b!4764824)))

(declare-fun t!360975 () Bool)

(declare-fun tb!257459 () Bool)

(assert (=> (and b!4764752 (= (defaultEntry!5319 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052))))) (defaultEntry!5319 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052)))))) t!360975) tb!257459))

(assert (=> b!4764824 t!360975))

(declare-fun result!319066 () Bool)

(declare-fun b_and!341243 () Bool)

(assert (= b_and!341239 (and (=> t!360975 result!319066) b_and!341243)))

(declare-fun m!5735314 () Bool)

(assert (=> d!1523300 m!5735314))

(declare-fun m!5735316 () Bool)

(assert (=> d!1523300 m!5735316))

(assert (=> d!1523300 m!5735296))

(assert (=> b!4764823 m!5735228))

(declare-fun m!5735318 () Bool)

(assert (=> b!4764823 m!5735318))

(assert (=> b!4764823 m!5735318))

(declare-fun m!5735320 () Bool)

(assert (=> b!4764823 m!5735320))

(declare-fun m!5735322 () Bool)

(assert (=> b!4764824 m!5735322))

(assert (=> b!4764759 d!1523300))

(declare-fun d!1523302 () Bool)

(declare-fun res!2020884 () Bool)

(declare-fun e!2973875 () Bool)

(assert (=> d!1523302 (=> res!2020884 e!2973875)))

(assert (=> d!1523302 (= res!2020884 ((_ is Nil!53443) (toList!6257 lt!1927520)))))

(assert (=> d!1523302 (= (forall!11864 (toList!6257 lt!1927520) lambda!224075) e!2973875)))

(declare-fun b!4764829 () Bool)

(declare-fun e!2973876 () Bool)

(assert (=> b!4764829 (= e!2973875 e!2973876)))

(declare-fun res!2020885 () Bool)

(assert (=> b!4764829 (=> (not res!2020885) (not e!2973876))))

(declare-fun dynLambda!21937 (Int tuple2!55446) Bool)

(assert (=> b!4764829 (= res!2020885 (dynLambda!21937 lambda!224075 (h!59855 (toList!6257 lt!1927520))))))

(declare-fun b!4764830 () Bool)

(assert (=> b!4764830 (= e!2973876 (forall!11864 (t!360973 (toList!6257 lt!1927520)) lambda!224075))))

(assert (= (and d!1523302 (not res!2020884)) b!4764829))

(assert (= (and b!4764829 res!2020885) b!4764830))

(declare-fun b_lambda!184277 () Bool)

(assert (=> (not b_lambda!184277) (not b!4764829)))

(declare-fun m!5735324 () Bool)

(assert (=> b!4764829 m!5735324))

(declare-fun m!5735326 () Bool)

(assert (=> b!4764830 m!5735326))

(assert (=> b!4764759 d!1523302))

(declare-fun d!1523304 () Bool)

(declare-fun map!11944 (LongMapFixedSize!9802) ListLongMap!4653)

(assert (=> d!1523304 (= (map!11942 (v!47541 (underlying!10010 thiss!42052))) (map!11944 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052))))))))

(declare-fun bs!1148737 () Bool)

(assert (= bs!1148737 d!1523304))

(declare-fun m!5735328 () Bool)

(assert (=> bs!1148737 m!5735328))

(assert (=> b!4764759 d!1523304))

(declare-fun d!1523306 () Bool)

(declare-fun hash!4547 (Hashable!6562 K!14894) (_ BitVec 64))

(assert (=> d!1523306 (= (hash!4546 (hashF!12387 thiss!42052) key!1776) (hash!4547 (hashF!12387 thiss!42052) key!1776))))

(declare-fun bs!1148738 () Bool)

(assert (= bs!1148738 d!1523306))

(declare-fun m!5735330 () Bool)

(assert (=> bs!1148738 m!5735330))

(assert (=> b!4764759 d!1523306))

(declare-fun d!1523308 () Bool)

(declare-fun lt!1927598 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9579 (List!53567) (InoxSet tuple2!55446))

(assert (=> d!1523308 (= lt!1927598 (select (content!9579 (toList!6257 lt!1927520)) (tuple2!55447 lt!1927521 lt!1927522)))))

(declare-fun e!2973881 () Bool)

(assert (=> d!1523308 (= lt!1927598 e!2973881)))

(declare-fun res!2020891 () Bool)

(assert (=> d!1523308 (=> (not res!2020891) (not e!2973881))))

(assert (=> d!1523308 (= res!2020891 ((_ is Cons!53443) (toList!6257 lt!1927520)))))

(assert (=> d!1523308 (= (contains!16761 (toList!6257 lt!1927520) (tuple2!55447 lt!1927521 lt!1927522)) lt!1927598)))

(declare-fun b!4764835 () Bool)

(declare-fun e!2973882 () Bool)

(assert (=> b!4764835 (= e!2973881 e!2973882)))

(declare-fun res!2020890 () Bool)

(assert (=> b!4764835 (=> res!2020890 e!2973882)))

(assert (=> b!4764835 (= res!2020890 (= (h!59855 (toList!6257 lt!1927520)) (tuple2!55447 lt!1927521 lt!1927522)))))

(declare-fun b!4764836 () Bool)

(assert (=> b!4764836 (= e!2973882 (contains!16761 (t!360973 (toList!6257 lt!1927520)) (tuple2!55447 lt!1927521 lt!1927522)))))

(assert (= (and d!1523308 res!2020891) b!4764835))

(assert (= (and b!4764835 (not res!2020890)) b!4764836))

(declare-fun m!5735332 () Bool)

(assert (=> d!1523308 m!5735332))

(declare-fun m!5735334 () Bool)

(assert (=> d!1523308 m!5735334))

(declare-fun m!5735336 () Bool)

(assert (=> b!4764836 m!5735336))

(assert (=> b!4764759 d!1523308))

(declare-fun e!2973885 () Bool)

(declare-fun tp!1354866 () Bool)

(declare-fun tp_is_empty!32383 () Bool)

(declare-fun b!4764841 () Bool)

(assert (=> b!4764841 (= e!2973885 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354866))))

(assert (=> b!4764761 (= tp!1354858 e!2973885)))

(assert (= (and b!4764761 ((_ is Cons!53442) mapDefault!21761)) b!4764841))

(declare-fun e!2973886 () Bool)

(declare-fun tp!1354867 () Bool)

(declare-fun b!4764842 () Bool)

(assert (=> b!4764842 (= e!2973886 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354867))))

(assert (=> b!4764752 (= tp!1354859 e!2973886)))

(assert (= (and b!4764752 ((_ is Cons!53442) (zeroValue!5189 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052))))))) b!4764842))

(declare-fun b!4764843 () Bool)

(declare-fun e!2973887 () Bool)

(declare-fun tp!1354868 () Bool)

(assert (=> b!4764843 (= e!2973887 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354868))))

(assert (=> b!4764752 (= tp!1354862 e!2973887)))

(assert (= (and b!4764752 ((_ is Cons!53442) (minValue!5189 (v!47540 (underlying!10009 (v!47541 (underlying!10010 thiss!42052))))))) b!4764843))

(declare-fun condMapEmpty!21764 () Bool)

(declare-fun mapDefault!21764 () List!53566)

(assert (=> mapNonEmpty!21761 (= condMapEmpty!21764 (= mapRest!21761 ((as const (Array (_ BitVec 32) List!53566)) mapDefault!21764)))))

(declare-fun e!2973893 () Bool)

(declare-fun mapRes!21764 () Bool)

(assert (=> mapNonEmpty!21761 (= tp!1354861 (and e!2973893 mapRes!21764))))

(declare-fun tp!1354877 () Bool)

(declare-fun b!4764850 () Bool)

(declare-fun e!2973892 () Bool)

(assert (=> b!4764850 (= e!2973892 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354877))))

(declare-fun mapNonEmpty!21764 () Bool)

(declare-fun tp!1354876 () Bool)

(assert (=> mapNonEmpty!21764 (= mapRes!21764 (and tp!1354876 e!2973892))))

(declare-fun mapValue!21764 () List!53566)

(declare-fun mapKey!21764 () (_ BitVec 32))

(declare-fun mapRest!21764 () (Array (_ BitVec 32) List!53566))

(assert (=> mapNonEmpty!21764 (= mapRest!21761 (store mapRest!21764 mapKey!21764 mapValue!21764))))

(declare-fun b!4764851 () Bool)

(declare-fun tp!1354875 () Bool)

(assert (=> b!4764851 (= e!2973893 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354875))))

(declare-fun mapIsEmpty!21764 () Bool)

(assert (=> mapIsEmpty!21764 mapRes!21764))

(assert (= (and mapNonEmpty!21761 condMapEmpty!21764) mapIsEmpty!21764))

(assert (= (and mapNonEmpty!21761 (not condMapEmpty!21764)) mapNonEmpty!21764))

(assert (= (and mapNonEmpty!21764 ((_ is Cons!53442) mapValue!21764)) b!4764850))

(assert (= (and mapNonEmpty!21761 ((_ is Cons!53442) mapDefault!21764)) b!4764851))

(declare-fun m!5735338 () Bool)

(assert (=> mapNonEmpty!21764 m!5735338))

(declare-fun b!4764852 () Bool)

(declare-fun tp!1354878 () Bool)

(declare-fun e!2973894 () Bool)

(assert (=> b!4764852 (= e!2973894 (and tp_is_empty!32381 tp_is_empty!32383 tp!1354878))))

(assert (=> mapNonEmpty!21761 (= tp!1354857 e!2973894)))

(assert (= (and mapNonEmpty!21761 ((_ is Cons!53442) mapValue!21761)) b!4764852))

(declare-fun b_lambda!184279 () Bool)

(assert (= b_lambda!184275 (or (and b!4764752 b_free!129547) b_lambda!184279)))

(declare-fun b_lambda!184281 () Bool)

(assert (= b_lambda!184277 (or b!4764759 b_lambda!184281)))

(declare-fun bs!1148739 () Bool)

(declare-fun d!1523310 () Bool)

(assert (= bs!1148739 (and d!1523310 b!4764759)))

(declare-fun noDuplicateKeys!2246 (List!53566) Bool)

(assert (=> bs!1148739 (= (dynLambda!21937 lambda!224075 (h!59855 (toList!6257 lt!1927520))) (noDuplicateKeys!2246 (_2!31017 (h!59855 (toList!6257 lt!1927520)))))))

(declare-fun m!5735340 () Bool)

(assert (=> bs!1148739 m!5735340))

(assert (=> b!4764829 d!1523310))

(check-sat (not b_lambda!184279) b_and!341241 (not d!1523308) (not bm!334069) (not tb!257459) (not b_next!130339) (not bm!334064) (not bm!334068) (not b!4764814) (not d!1523286) (not b_next!130337) (not d!1523306) (not bm!334067) (not b!4764794) (not b_lambda!184281) (not b!4764789) (not b!4764787) (not d!1523284) (not b!4764803) (not d!1523300) (not b!4764852) (not b!4764823) (not bs!1148739) b_and!341243 (not d!1523294) (not d!1523292) (not b!4764818) (not b!4764842) (not b!4764836) tp_is_empty!32383 (not mapNonEmpty!21764) (not d!1523298) tp_is_empty!32381 (not bm!334066) (not bm!334065) (not b!4764841) (not d!1523304) (not b!4764799) (not b!4764800) (not b!4764850) (not b!4764843) (not b!4764790) (not b!4764830) (not b!4764785) (not b!4764851))
(check-sat b_and!341241 b_and!341243 (not b_next!130339) (not b_next!130337))
