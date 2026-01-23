; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488060 () Bool)

(assert start!488060)

(declare-fun b!4768885 () Bool)

(declare-fun b_free!129707 () Bool)

(declare-fun b_next!130497 () Bool)

(assert (=> b!4768885 (= b_free!129707 (not b_next!130497))))

(declare-fun tp!1355899 () Bool)

(declare-fun b_and!341439 () Bool)

(assert (=> b!4768885 (= tp!1355899 b_and!341439)))

(declare-fun b!4768880 () Bool)

(declare-fun b_free!129709 () Bool)

(declare-fun b_next!130499 () Bool)

(assert (=> b!4768880 (= b_free!129709 (not b_next!130499))))

(declare-fun tp!1355897 () Bool)

(declare-fun b_and!341441 () Bool)

(assert (=> b!4768880 (= tp!1355897 b_and!341441)))

(declare-fun b!4768879 () Bool)

(declare-fun e!2976759 () Bool)

(declare-fun e!2976757 () Bool)

(assert (=> b!4768879 (= e!2976759 e!2976757)))

(declare-fun res!2022621 () Bool)

(declare-fun e!2976755 () Bool)

(assert (=> start!488060 (=> (not res!2022621) (not e!2976755))))

(declare-datatypes ((K!14994 0))(
  ( (K!14995 (val!20301 Int)) )
))
(declare-datatypes ((V!15240 0))(
  ( (V!15241 (val!20302 Int)) )
))
(declare-datatypes ((tuple2!55582 0))(
  ( (tuple2!55583 (_1!31085 K!14994) (_2!31085 V!15240)) )
))
(declare-datatypes ((array!18090 0))(
  ( (array!18091 (arr!8067 (Array (_ BitVec 32) (_ BitVec 64))) (size!36297 (_ BitVec 32))) )
))
(declare-datatypes ((List!53637 0))(
  ( (Nil!53513) (Cons!53513 (h!59925 tuple2!55582) (t!361071 List!53637)) )
))
(declare-datatypes ((array!18092 0))(
  ( (array!18093 (arr!8068 (Array (_ BitVec 32) List!53637)) (size!36298 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6602 0))(
  ( (HashableExt!6601 (__x!32571 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9882 0))(
  ( (LongMapFixedSize!9883 (defaultEntry!5359 Int) (mask!14707 (_ BitVec 32)) (extraKeys!5216 (_ BitVec 32)) (zeroValue!5229 List!53637) (minValue!5229 List!53637) (_size!9907 (_ BitVec 32)) (_keys!5283 array!18090) (_values!5254 array!18092) (_vacant!5006 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19529 0))(
  ( (Cell!19530 (v!47755 LongMapFixedSize!9882)) )
))
(declare-datatypes ((MutLongMap!4941 0))(
  ( (LongMap!4941 (underlying!10089 Cell!19529)) (MutLongMapExt!4940 (__x!32572 Int)) )
))
(declare-datatypes ((Cell!19531 0))(
  ( (Cell!19532 (v!47756 MutLongMap!4941)) )
))
(declare-datatypes ((MutableMap!4825 0))(
  ( (MutableMapExt!4824 (__x!32573 Int)) (HashMap!4825 (underlying!10090 Cell!19531) (hashF!12487 Hashable!6602) (_size!9908 (_ BitVec 32)) (defaultValue!4996 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4825)

(get-info :version)

(assert (=> start!488060 (= res!2022621 ((_ is HashMap!4825) thiss!42052))))

(assert (=> start!488060 e!2976755))

(declare-fun e!2976754 () Bool)

(assert (=> start!488060 e!2976754))

(declare-fun tp_is_empty!32485 () Bool)

(assert (=> start!488060 tp_is_empty!32485))

(declare-fun e!2976756 () Bool)

(assert (=> b!4768880 (= e!2976754 (and e!2976756 tp!1355897))))

(declare-fun b!4768881 () Bool)

(declare-fun lt!1931817 () MutLongMap!4941)

(assert (=> b!4768881 (= e!2976756 (and e!2976759 ((_ is LongMap!4941) lt!1931817)))))

(assert (=> b!4768881 (= lt!1931817 (v!47756 (underlying!10090 thiss!42052)))))

(declare-fun lt!1931803 () tuple2!55582)

(declare-fun key!1776 () K!14994)

(declare-fun b!4768882 () Bool)

(declare-datatypes ((Option!12707 0))(
  ( (None!12706) (Some!12706 (v!47757 V!15240)) )
))
(declare-fun get!18069 (Option!12707) V!15240)

(declare-fun getValueByKey!2202 (List!53637 K!14994) Option!12707)

(declare-datatypes ((ListMap!5809 0))(
  ( (ListMap!5810 (toList!6313 List!53637)) )
))
(declare-fun map!12013 (MutableMap!4825) ListMap!5809)

(assert (=> b!4768882 (= e!2976755 (not (= (_2!31085 lt!1931803) (get!18069 (getValueByKey!2202 (toList!6313 (map!12013 thiss!42052)) key!1776)))))))

(declare-fun e!2976761 () Bool)

(assert (=> b!4768882 e!2976761))

(declare-fun res!2022620 () Bool)

(assert (=> b!4768882 (=> (not res!2022620) (not e!2976761))))

(declare-datatypes ((Option!12708 0))(
  ( (None!12707) (Some!12707 (v!47758 tuple2!55582)) )
))
(declare-fun lt!1931804 () Option!12708)

(declare-fun isDefined!9858 (Option!12708) Bool)

(assert (=> b!4768882 (= res!2022620 (isDefined!9858 lt!1931804))))

(declare-fun lt!1931809 () List!53637)

(declare-fun getPair!653 (List!53637 K!14994) Option!12708)

(assert (=> b!4768882 (= lt!1931804 (getPair!653 lt!1931809 key!1776))))

(declare-datatypes ((tuple2!55584 0))(
  ( (tuple2!55585 (_1!31086 (_ BitVec 64)) (_2!31086 List!53637)) )
))
(declare-datatypes ((List!53638 0))(
  ( (Nil!53514) (Cons!53514 (h!59926 tuple2!55584) (t!361072 List!53638)) )
))
(declare-datatypes ((ListLongMap!4711 0))(
  ( (ListLongMap!4712 (toList!6314 List!53638)) )
))
(declare-fun lt!1931818 () ListLongMap!4711)

(declare-fun lt!1931802 () tuple2!55584)

(declare-datatypes ((Unit!138345 0))(
  ( (Unit!138346) )
))
(declare-fun lt!1931813 () Unit!138345)

(declare-fun lambda!224737 () Int)

(declare-fun forallContained!3871 (List!53638 Int tuple2!55584) Unit!138345)

(assert (=> b!4768882 (= lt!1931813 (forallContained!3871 (toList!6314 lt!1931818) lambda!224737 lt!1931802))))

(declare-fun lt!1931812 () Unit!138345)

(declare-fun lemmaInGenMapThenGetPairDefined!436 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> b!4768882 (= lt!1931812 (lemmaInGenMapThenGetPairDefined!436 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(declare-fun lt!1931801 () Unit!138345)

(assert (=> b!4768882 (= lt!1931801 (forallContained!3871 (toList!6314 lt!1931818) lambda!224737 lt!1931802))))

(declare-fun contains!16874 (List!53638 tuple2!55584) Bool)

(assert (=> b!4768882 (contains!16874 (toList!6314 lt!1931818) lt!1931802)))

(declare-fun lt!1931811 () (_ BitVec 64))

(assert (=> b!4768882 (= lt!1931802 (tuple2!55585 lt!1931811 lt!1931809))))

(declare-fun lt!1931814 () Unit!138345)

(declare-fun lemmaGetValueImpliesTupleContained!445 (ListLongMap!4711 (_ BitVec 64) List!53637) Unit!138345)

(assert (=> b!4768882 (= lt!1931814 (lemmaGetValueImpliesTupleContained!445 lt!1931818 lt!1931811 lt!1931809))))

(declare-fun apply!12647 (ListLongMap!4711 (_ BitVec 64)) List!53637)

(assert (=> b!4768882 (= lt!1931809 (apply!12647 lt!1931818 lt!1931811))))

(declare-fun contains!16875 (ListLongMap!4711 (_ BitVec 64)) Bool)

(assert (=> b!4768882 (contains!16875 lt!1931818 lt!1931811)))

(declare-fun lt!1931810 () Unit!138345)

(declare-fun lemmaInGenMapThenLongMapContainsHash!846 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> b!4768882 (= lt!1931810 (lemmaInGenMapThenLongMapContainsHash!846 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(declare-fun lt!1931815 () Unit!138345)

(declare-fun lemmaGetPairGetSameValueAsMap!68 (ListLongMap!4711 K!14994 V!15240 Hashable!6602) Unit!138345)

(assert (=> b!4768882 (= lt!1931815 (lemmaGetPairGetSameValueAsMap!68 lt!1931818 key!1776 (_2!31085 lt!1931803) (hashF!12487 thiss!42052)))))

(declare-fun lt!1931816 () List!53637)

(declare-fun get!18070 (Option!12708) tuple2!55582)

(assert (=> b!4768882 (= lt!1931803 (get!18070 (getPair!653 lt!1931816 key!1776)))))

(declare-fun lt!1931806 () tuple2!55584)

(declare-fun lt!1931819 () Unit!138345)

(assert (=> b!4768882 (= lt!1931819 (forallContained!3871 (toList!6314 lt!1931818) lambda!224737 lt!1931806))))

(declare-fun lt!1931807 () Unit!138345)

(declare-fun e!2976758 () Unit!138345)

(assert (=> b!4768882 (= lt!1931807 e!2976758)))

(declare-fun c!813487 () Bool)

(assert (=> b!4768882 (= c!813487 (not (contains!16874 (toList!6314 lt!1931818) lt!1931806)))))

(assert (=> b!4768882 (= lt!1931806 (tuple2!55585 lt!1931811 lt!1931816))))

(declare-fun apply!12648 (MutLongMap!4941 (_ BitVec 64)) List!53637)

(assert (=> b!4768882 (= lt!1931816 (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931811))))

(declare-fun map!12014 (MutLongMap!4941) ListLongMap!4711)

(assert (=> b!4768882 (= lt!1931818 (map!12014 (v!47756 (underlying!10090 thiss!42052))))))

(declare-fun hash!4582 (Hashable!6602 K!14994) (_ BitVec 64))

(assert (=> b!4768882 (= lt!1931811 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun b!4768883 () Bool)

(declare-fun extractMap!2156 (List!53638) ListMap!5809)

(assert (=> b!4768883 (= e!2976761 (= (_2!31085 (get!18070 lt!1931804)) (get!18069 (getValueByKey!2202 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))) key!1776))))))

(declare-fun mapIsEmpty!21919 () Bool)

(declare-fun mapRes!21919 () Bool)

(assert (=> mapIsEmpty!21919 mapRes!21919))

(declare-fun b!4768884 () Bool)

(declare-fun res!2022623 () Bool)

(assert (=> b!4768884 (=> (not res!2022623) (not e!2976755))))

(declare-fun contains!16876 (MutableMap!4825 K!14994) Bool)

(assert (=> b!4768884 (= res!2022623 (contains!16876 thiss!42052 key!1776))))

(declare-fun e!2976763 () Bool)

(declare-fun e!2976762 () Bool)

(declare-fun tp!1355900 () Bool)

(declare-fun tp!1355898 () Bool)

(declare-fun array_inv!5809 (array!18090) Bool)

(declare-fun array_inv!5810 (array!18092) Bool)

(assert (=> b!4768885 (= e!2976763 (and tp!1355899 tp!1355898 tp!1355900 (array_inv!5809 (_keys!5283 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) (array_inv!5810 (_values!5254 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) e!2976762))))

(declare-fun b!4768886 () Bool)

(declare-fun tp!1355901 () Bool)

(assert (=> b!4768886 (= e!2976762 (and tp!1355901 mapRes!21919))))

(declare-fun condMapEmpty!21919 () Bool)

(declare-fun mapDefault!21919 () List!53637)

(assert (=> b!4768886 (= condMapEmpty!21919 (= (arr!8068 (_values!5254 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53637)) mapDefault!21919)))))

(declare-fun b!4768887 () Bool)

(assert (=> b!4768887 (= e!2976757 e!2976763)))

(declare-fun b!4768888 () Bool)

(declare-fun Unit!138347 () Unit!138345)

(assert (=> b!4768888 (= e!2976758 Unit!138347)))

(declare-fun mapNonEmpty!21919 () Bool)

(declare-fun tp!1355902 () Bool)

(declare-fun tp!1355903 () Bool)

(assert (=> mapNonEmpty!21919 (= mapRes!21919 (and tp!1355902 tp!1355903))))

(declare-fun mapKey!21919 () (_ BitVec 32))

(declare-fun mapRest!21919 () (Array (_ BitVec 32) List!53637))

(declare-fun mapValue!21919 () List!53637)

(assert (=> mapNonEmpty!21919 (= (arr!8068 (_values!5254 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) (store mapRest!21919 mapKey!21919 mapValue!21919))))

(declare-fun b!4768889 () Bool)

(declare-fun Unit!138348 () Unit!138345)

(assert (=> b!4768889 (= e!2976758 Unit!138348)))

(declare-fun lt!1931805 () Unit!138345)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1999 (List!53638 (_ BitVec 64)) Unit!138345)

(assert (=> b!4768889 (= lt!1931805 (lemmaContainsKeyImpliesGetValueByKeyDefined!1999 (toList!6314 lt!1931818) lt!1931811))))

(declare-datatypes ((Option!12709 0))(
  ( (None!12708) (Some!12708 (v!47759 List!53637)) )
))
(declare-fun isDefined!9859 (Option!12709) Bool)

(declare-fun getValueByKey!2203 (List!53638 (_ BitVec 64)) Option!12709)

(assert (=> b!4768889 (isDefined!9859 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811))))

(declare-fun lt!1931808 () Unit!138345)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!941 (List!53638 (_ BitVec 64) List!53637) Unit!138345)

(assert (=> b!4768889 (= lt!1931808 (lemmaGetValueByKeyImpliesContainsTuple!941 (toList!6314 lt!1931818) lt!1931811 lt!1931816))))

(assert (=> b!4768889 false))

(declare-fun b!4768890 () Bool)

(declare-fun res!2022622 () Bool)

(assert (=> b!4768890 (=> (not res!2022622) (not e!2976755))))

(declare-fun valid!3947 (MutableMap!4825) Bool)

(assert (=> b!4768890 (= res!2022622 (valid!3947 thiss!42052))))

(assert (= (and start!488060 res!2022621) b!4768890))

(assert (= (and b!4768890 res!2022622) b!4768884))

(assert (= (and b!4768884 res!2022623) b!4768882))

(assert (= (and b!4768882 c!813487) b!4768889))

(assert (= (and b!4768882 (not c!813487)) b!4768888))

(assert (= (and b!4768882 res!2022620) b!4768883))

(assert (= (and b!4768886 condMapEmpty!21919) mapIsEmpty!21919))

(assert (= (and b!4768886 (not condMapEmpty!21919)) mapNonEmpty!21919))

(assert (= b!4768885 b!4768886))

(assert (= b!4768887 b!4768885))

(assert (= b!4768879 b!4768887))

(assert (= (and b!4768881 ((_ is LongMap!4941) (v!47756 (underlying!10090 thiss!42052)))) b!4768879))

(assert (= b!4768880 b!4768881))

(assert (= (and start!488060 ((_ is HashMap!4825) thiss!42052)) b!4768880))

(declare-fun m!5740576 () Bool)

(assert (=> b!4768885 m!5740576))

(declare-fun m!5740578 () Bool)

(assert (=> b!4768885 m!5740578))

(declare-fun m!5740580 () Bool)

(assert (=> b!4768882 m!5740580))

(declare-fun m!5740582 () Bool)

(assert (=> b!4768882 m!5740582))

(declare-fun m!5740584 () Bool)

(assert (=> b!4768882 m!5740584))

(declare-fun m!5740586 () Bool)

(assert (=> b!4768882 m!5740586))

(declare-fun m!5740588 () Bool)

(assert (=> b!4768882 m!5740588))

(declare-fun m!5740590 () Bool)

(assert (=> b!4768882 m!5740590))

(declare-fun m!5740592 () Bool)

(assert (=> b!4768882 m!5740592))

(declare-fun m!5740594 () Bool)

(assert (=> b!4768882 m!5740594))

(declare-fun m!5740596 () Bool)

(assert (=> b!4768882 m!5740596))

(declare-fun m!5740598 () Bool)

(assert (=> b!4768882 m!5740598))

(assert (=> b!4768882 m!5740584))

(declare-fun m!5740600 () Bool)

(assert (=> b!4768882 m!5740600))

(declare-fun m!5740602 () Bool)

(assert (=> b!4768882 m!5740602))

(declare-fun m!5740604 () Bool)

(assert (=> b!4768882 m!5740604))

(assert (=> b!4768882 m!5740582))

(declare-fun m!5740606 () Bool)

(assert (=> b!4768882 m!5740606))

(declare-fun m!5740608 () Bool)

(assert (=> b!4768882 m!5740608))

(declare-fun m!5740610 () Bool)

(assert (=> b!4768882 m!5740610))

(declare-fun m!5740612 () Bool)

(assert (=> b!4768882 m!5740612))

(assert (=> b!4768882 m!5740596))

(declare-fun m!5740614 () Bool)

(assert (=> b!4768882 m!5740614))

(declare-fun m!5740616 () Bool)

(assert (=> b!4768882 m!5740616))

(declare-fun m!5740618 () Bool)

(assert (=> b!4768882 m!5740618))

(declare-fun m!5740620 () Bool)

(assert (=> b!4768884 m!5740620))

(declare-fun m!5740622 () Bool)

(assert (=> mapNonEmpty!21919 m!5740622))

(declare-fun m!5740624 () Bool)

(assert (=> b!4768890 m!5740624))

(declare-fun m!5740626 () Bool)

(assert (=> b!4768883 m!5740626))

(declare-fun m!5740628 () Bool)

(assert (=> b!4768883 m!5740628))

(declare-fun m!5740630 () Bool)

(assert (=> b!4768883 m!5740630))

(assert (=> b!4768883 m!5740630))

(declare-fun m!5740632 () Bool)

(assert (=> b!4768883 m!5740632))

(declare-fun m!5740634 () Bool)

(assert (=> b!4768889 m!5740634))

(declare-fun m!5740636 () Bool)

(assert (=> b!4768889 m!5740636))

(assert (=> b!4768889 m!5740636))

(declare-fun m!5740638 () Bool)

(assert (=> b!4768889 m!5740638))

(declare-fun m!5740640 () Bool)

(assert (=> b!4768889 m!5740640))

(check-sat (not b!4768884) (not b!4768889) (not b!4768890) (not b!4768886) (not mapNonEmpty!21919) (not b!4768883) b_and!341441 tp_is_empty!32485 (not b!4768885) (not b!4768882) (not b_next!130497) (not b_next!130499) b_and!341439)
(check-sat b_and!341441 b_and!341439 (not b_next!130499) (not b_next!130497))
(get-model)

(declare-fun bs!1149334 () Bool)

(declare-fun b!4768895 () Bool)

(assert (= bs!1149334 (and b!4768895 b!4768882)))

(declare-fun lambda!224740 () Int)

(assert (=> bs!1149334 (= lambda!224740 lambda!224737)))

(declare-fun d!1524404 () Bool)

(declare-fun res!2022628 () Bool)

(declare-fun e!2976766 () Bool)

(assert (=> d!1524404 (=> (not res!2022628) (not e!2976766))))

(declare-fun valid!3948 (MutLongMap!4941) Bool)

(assert (=> d!1524404 (= res!2022628 (valid!3948 (v!47756 (underlying!10090 thiss!42052))))))

(assert (=> d!1524404 (= (valid!3947 thiss!42052) e!2976766)))

(declare-fun res!2022629 () Bool)

(assert (=> b!4768895 (=> (not res!2022629) (not e!2976766))))

(declare-fun forall!11882 (List!53638 Int) Bool)

(assert (=> b!4768895 (= res!2022629 (forall!11882 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))) lambda!224740))))

(declare-fun b!4768896 () Bool)

(declare-fun allKeysSameHashInMap!2026 (ListLongMap!4711 Hashable!6602) Bool)

(assert (=> b!4768896 (= e!2976766 (allKeysSameHashInMap!2026 (map!12014 (v!47756 (underlying!10090 thiss!42052))) (hashF!12487 thiss!42052)))))

(assert (= (and d!1524404 res!2022628) b!4768895))

(assert (= (and b!4768895 res!2022629) b!4768896))

(declare-fun m!5740642 () Bool)

(assert (=> d!1524404 m!5740642))

(assert (=> b!4768895 m!5740608))

(declare-fun m!5740644 () Bool)

(assert (=> b!4768895 m!5740644))

(assert (=> b!4768896 m!5740608))

(assert (=> b!4768896 m!5740608))

(declare-fun m!5740646 () Bool)

(assert (=> b!4768896 m!5740646))

(assert (=> b!4768890 d!1524404))

(declare-fun d!1524406 () Bool)

(assert (=> d!1524406 (= (array_inv!5809 (_keys!5283 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) (bvsge (size!36297 (_keys!5283 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4768885 d!1524406))

(declare-fun d!1524408 () Bool)

(assert (=> d!1524408 (= (array_inv!5810 (_values!5254 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) (bvsge (size!36298 (_values!5254 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4768885 d!1524408))

(declare-fun d!1524410 () Bool)

(assert (=> d!1524410 (isDefined!9859 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811))))

(declare-fun lt!1931822 () Unit!138345)

(declare-fun choose!34007 (List!53638 (_ BitVec 64)) Unit!138345)

(assert (=> d!1524410 (= lt!1931822 (choose!34007 (toList!6314 lt!1931818) lt!1931811))))

(declare-fun e!2976769 () Bool)

(assert (=> d!1524410 e!2976769))

(declare-fun res!2022632 () Bool)

(assert (=> d!1524410 (=> (not res!2022632) (not e!2976769))))

(declare-fun isStrictlySorted!812 (List!53638) Bool)

(assert (=> d!1524410 (= res!2022632 (isStrictlySorted!812 (toList!6314 lt!1931818)))))

(assert (=> d!1524410 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1999 (toList!6314 lt!1931818) lt!1931811) lt!1931822)))

(declare-fun b!4768899 () Bool)

(declare-fun containsKey!3675 (List!53638 (_ BitVec 64)) Bool)

(assert (=> b!4768899 (= e!2976769 (containsKey!3675 (toList!6314 lt!1931818) lt!1931811))))

(assert (= (and d!1524410 res!2022632) b!4768899))

(assert (=> d!1524410 m!5740636))

(assert (=> d!1524410 m!5740636))

(assert (=> d!1524410 m!5740638))

(declare-fun m!5740648 () Bool)

(assert (=> d!1524410 m!5740648))

(declare-fun m!5740650 () Bool)

(assert (=> d!1524410 m!5740650))

(declare-fun m!5740652 () Bool)

(assert (=> b!4768899 m!5740652))

(assert (=> b!4768889 d!1524410))

(declare-fun d!1524412 () Bool)

(declare-fun isEmpty!29290 (Option!12709) Bool)

(assert (=> d!1524412 (= (isDefined!9859 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811)) (not (isEmpty!29290 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811))))))

(declare-fun bs!1149335 () Bool)

(assert (= bs!1149335 d!1524412))

(assert (=> bs!1149335 m!5740636))

(declare-fun m!5740654 () Bool)

(assert (=> bs!1149335 m!5740654))

(assert (=> b!4768889 d!1524412))

(declare-fun b!4768909 () Bool)

(declare-fun e!2976774 () Option!12709)

(declare-fun e!2976775 () Option!12709)

(assert (=> b!4768909 (= e!2976774 e!2976775)))

(declare-fun c!813493 () Bool)

(assert (=> b!4768909 (= c!813493 (and ((_ is Cons!53514) (toList!6314 lt!1931818)) (not (= (_1!31086 (h!59926 (toList!6314 lt!1931818))) lt!1931811))))))

(declare-fun b!4768910 () Bool)

(assert (=> b!4768910 (= e!2976775 (getValueByKey!2203 (t!361072 (toList!6314 lt!1931818)) lt!1931811))))

(declare-fun d!1524414 () Bool)

(declare-fun c!813492 () Bool)

(assert (=> d!1524414 (= c!813492 (and ((_ is Cons!53514) (toList!6314 lt!1931818)) (= (_1!31086 (h!59926 (toList!6314 lt!1931818))) lt!1931811)))))

(assert (=> d!1524414 (= (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811) e!2976774)))

(declare-fun b!4768911 () Bool)

(assert (=> b!4768911 (= e!2976775 None!12708)))

(declare-fun b!4768908 () Bool)

(assert (=> b!4768908 (= e!2976774 (Some!12708 (_2!31086 (h!59926 (toList!6314 lt!1931818)))))))

(assert (= (and d!1524414 c!813492) b!4768908))

(assert (= (and d!1524414 (not c!813492)) b!4768909))

(assert (= (and b!4768909 c!813493) b!4768910))

(assert (= (and b!4768909 (not c!813493)) b!4768911))

(declare-fun m!5740656 () Bool)

(assert (=> b!4768910 m!5740656))

(assert (=> b!4768889 d!1524414))

(declare-fun d!1524416 () Bool)

(assert (=> d!1524416 (contains!16874 (toList!6314 lt!1931818) (tuple2!55585 lt!1931811 lt!1931816))))

(declare-fun lt!1931825 () Unit!138345)

(declare-fun choose!34008 (List!53638 (_ BitVec 64) List!53637) Unit!138345)

(assert (=> d!1524416 (= lt!1931825 (choose!34008 (toList!6314 lt!1931818) lt!1931811 lt!1931816))))

(declare-fun e!2976778 () Bool)

(assert (=> d!1524416 e!2976778))

(declare-fun res!2022635 () Bool)

(assert (=> d!1524416 (=> (not res!2022635) (not e!2976778))))

(assert (=> d!1524416 (= res!2022635 (isStrictlySorted!812 (toList!6314 lt!1931818)))))

(assert (=> d!1524416 (= (lemmaGetValueByKeyImpliesContainsTuple!941 (toList!6314 lt!1931818) lt!1931811 lt!1931816) lt!1931825)))

(declare-fun b!4768914 () Bool)

(assert (=> b!4768914 (= e!2976778 (= (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811) (Some!12708 lt!1931816)))))

(assert (= (and d!1524416 res!2022635) b!4768914))

(declare-fun m!5740658 () Bool)

(assert (=> d!1524416 m!5740658))

(declare-fun m!5740660 () Bool)

(assert (=> d!1524416 m!5740660))

(assert (=> d!1524416 m!5740650))

(assert (=> b!4768914 m!5740636))

(assert (=> b!4768889 d!1524416))

(declare-fun bs!1149336 () Bool)

(declare-fun b!4768937 () Bool)

(assert (= bs!1149336 (and b!4768937 b!4768882)))

(declare-fun lambda!224743 () Int)

(assert (=> bs!1149336 (= lambda!224743 lambda!224737)))

(declare-fun bs!1149337 () Bool)

(assert (= bs!1149337 (and b!4768937 b!4768895)))

(assert (=> bs!1149337 (= lambda!224743 lambda!224740)))

(declare-fun e!2976796 () Unit!138345)

(declare-fun lt!1931873 () (_ BitVec 64))

(assert (=> b!4768937 (= e!2976796 (forallContained!3871 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))) lambda!224743 (tuple2!55585 lt!1931873 (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931873))))))

(declare-fun c!813503 () Bool)

(assert (=> b!4768937 (= c!813503 (not (contains!16874 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))) (tuple2!55585 lt!1931873 (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931873)))))))

(declare-fun lt!1931874 () Unit!138345)

(declare-fun e!2976795 () Unit!138345)

(assert (=> b!4768937 (= lt!1931874 e!2976795)))

(declare-fun b!4768938 () Bool)

(declare-fun e!2976798 () Bool)

(declare-fun call!334341 () Bool)

(assert (=> b!4768938 (= e!2976798 call!334341)))

(declare-fun b!4768939 () Bool)

(declare-fun e!2976794 () Unit!138345)

(declare-fun e!2976799 () Unit!138345)

(assert (=> b!4768939 (= e!2976794 e!2976799)))

(declare-fun res!2022644 () Bool)

(declare-fun call!334343 () Bool)

(assert (=> b!4768939 (= res!2022644 call!334343)))

(assert (=> b!4768939 (=> (not res!2022644) (not e!2976798))))

(declare-fun c!813504 () Bool)

(assert (=> b!4768939 (= c!813504 e!2976798)))

(declare-fun bm!334334 () Bool)

(declare-fun call!334342 () (_ BitVec 64))

(assert (=> bm!334334 (= call!334342 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun e!2976797 () Bool)

(declare-fun b!4768940 () Bool)

(assert (=> b!4768940 (= e!2976797 (isDefined!9858 (getPair!653 (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931873) key!1776)))))

(declare-fun call!334344 () ListLongMap!4711)

(declare-fun call!334340 () List!53637)

(declare-fun bm!334335 () Bool)

(declare-fun lt!1931882 () ListLongMap!4711)

(declare-fun c!813505 () Bool)

(assert (=> bm!334335 (= call!334340 (apply!12647 (ite c!813505 lt!1931882 call!334344) call!334342))))

(declare-fun b!4768941 () Bool)

(declare-fun lt!1931868 () Unit!138345)

(assert (=> b!4768941 (= e!2976794 lt!1931868)))

(assert (=> b!4768941 (= lt!1931882 call!334344)))

(declare-fun lemmaInGenericMapThenInLongMap!206 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> b!4768941 (= lt!1931868 (lemmaInGenericMapThenInLongMap!206 lt!1931882 key!1776 (hashF!12487 thiss!42052)))))

(declare-fun res!2022643 () Bool)

(assert (=> b!4768941 (= res!2022643 call!334343)))

(declare-fun e!2976793 () Bool)

(assert (=> b!4768941 (=> (not res!2022643) (not e!2976793))))

(assert (=> b!4768941 e!2976793))

(declare-fun b!4768942 () Bool)

(assert (=> b!4768942 (= e!2976793 call!334341)))

(declare-fun bm!334336 () Bool)

(declare-fun call!334339 () Option!12708)

(assert (=> bm!334336 (= call!334341 (isDefined!9858 call!334339))))

(declare-fun d!1524418 () Bool)

(declare-fun lt!1931866 () Bool)

(declare-fun contains!16877 (ListMap!5809 K!14994) Bool)

(assert (=> d!1524418 (= lt!1931866 (contains!16877 (map!12013 thiss!42052) key!1776))))

(assert (=> d!1524418 (= lt!1931866 e!2976797)))

(declare-fun res!2022642 () Bool)

(assert (=> d!1524418 (=> (not res!2022642) (not e!2976797))))

(declare-fun contains!16878 (MutLongMap!4941 (_ BitVec 64)) Bool)

(assert (=> d!1524418 (= res!2022642 (contains!16878 (v!47756 (underlying!10090 thiss!42052)) lt!1931873))))

(declare-fun lt!1931880 () Unit!138345)

(assert (=> d!1524418 (= lt!1931880 e!2976794)))

(assert (=> d!1524418 (= c!813505 (contains!16877 (extractMap!2156 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052))))) key!1776))))

(declare-fun lt!1931870 () Unit!138345)

(assert (=> d!1524418 (= lt!1931870 e!2976796)))

(declare-fun c!813502 () Bool)

(assert (=> d!1524418 (= c!813502 (contains!16878 (v!47756 (underlying!10090 thiss!42052)) lt!1931873))))

(assert (=> d!1524418 (= lt!1931873 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(assert (=> d!1524418 (valid!3947 thiss!42052)))

(assert (=> d!1524418 (= (contains!16876 thiss!42052 key!1776) lt!1931866)))

(declare-fun b!4768943 () Bool)

(declare-fun Unit!138349 () Unit!138345)

(assert (=> b!4768943 (= e!2976796 Unit!138349)))

(declare-fun bm!334337 () Bool)

(assert (=> bm!334337 (= call!334343 (contains!16875 (ite c!813505 lt!1931882 call!334344) call!334342))))

(declare-fun b!4768944 () Bool)

(declare-fun Unit!138350 () Unit!138345)

(assert (=> b!4768944 (= e!2976799 Unit!138350)))

(declare-fun bm!334338 () Bool)

(assert (=> bm!334338 (= call!334339 (getPair!653 call!334340 key!1776))))

(declare-fun b!4768945 () Bool)

(declare-fun Unit!138351 () Unit!138345)

(assert (=> b!4768945 (= e!2976795 Unit!138351)))

(declare-fun b!4768946 () Bool)

(assert (=> b!4768946 false))

(declare-fun lt!1931876 () Unit!138345)

(declare-fun lt!1931875 () Unit!138345)

(assert (=> b!4768946 (= lt!1931876 lt!1931875)))

(declare-fun lt!1931872 () ListLongMap!4711)

(assert (=> b!4768946 (contains!16877 (extractMap!2156 (toList!6314 lt!1931872)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!206 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> b!4768946 (= lt!1931875 (lemmaInLongMapThenInGenericMap!206 lt!1931872 key!1776 (hashF!12487 thiss!42052)))))

(assert (=> b!4768946 (= lt!1931872 call!334344)))

(declare-fun Unit!138352 () Unit!138345)

(assert (=> b!4768946 (= e!2976799 Unit!138352)))

(declare-fun b!4768947 () Bool)

(assert (=> b!4768947 false))

(declare-fun lt!1931867 () Unit!138345)

(declare-fun lt!1931879 () Unit!138345)

(assert (=> b!4768947 (= lt!1931867 lt!1931879)))

(declare-fun lt!1931878 () List!53638)

(declare-fun lt!1931881 () List!53637)

(assert (=> b!4768947 (contains!16874 lt!1931878 (tuple2!55585 lt!1931873 lt!1931881))))

(assert (=> b!4768947 (= lt!1931879 (lemmaGetValueByKeyImpliesContainsTuple!941 lt!1931878 lt!1931873 lt!1931881))))

(assert (=> b!4768947 (= lt!1931881 (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931873))))

(assert (=> b!4768947 (= lt!1931878 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))))))

(declare-fun lt!1931884 () Unit!138345)

(declare-fun lt!1931871 () Unit!138345)

(assert (=> b!4768947 (= lt!1931884 lt!1931871)))

(declare-fun lt!1931883 () List!53638)

(assert (=> b!4768947 (isDefined!9859 (getValueByKey!2203 lt!1931883 lt!1931873))))

(assert (=> b!4768947 (= lt!1931871 (lemmaContainsKeyImpliesGetValueByKeyDefined!1999 lt!1931883 lt!1931873))))

(assert (=> b!4768947 (= lt!1931883 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))))))

(declare-fun lt!1931869 () Unit!138345)

(declare-fun lt!1931877 () Unit!138345)

(assert (=> b!4768947 (= lt!1931869 lt!1931877)))

(declare-fun lt!1931885 () List!53638)

(assert (=> b!4768947 (containsKey!3675 lt!1931885 lt!1931873)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!207 (List!53638 (_ BitVec 64)) Unit!138345)

(assert (=> b!4768947 (= lt!1931877 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!207 lt!1931885 lt!1931873))))

(assert (=> b!4768947 (= lt!1931885 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))))))

(declare-fun Unit!138353 () Unit!138345)

(assert (=> b!4768947 (= e!2976795 Unit!138353)))

(declare-fun bm!334339 () Bool)

(assert (=> bm!334339 (= call!334344 (map!12014 (v!47756 (underlying!10090 thiss!42052))))))

(assert (= (and d!1524418 c!813502) b!4768937))

(assert (= (and d!1524418 (not c!813502)) b!4768943))

(assert (= (and b!4768937 c!813503) b!4768947))

(assert (= (and b!4768937 (not c!813503)) b!4768945))

(assert (= (and d!1524418 c!813505) b!4768941))

(assert (= (and d!1524418 (not c!813505)) b!4768939))

(assert (= (and b!4768941 res!2022643) b!4768942))

(assert (= (and b!4768939 res!2022644) b!4768938))

(assert (= (and b!4768939 c!813504) b!4768946))

(assert (= (and b!4768939 (not c!813504)) b!4768944))

(assert (= (or b!4768941 b!4768939 b!4768938 b!4768946) bm!334339))

(assert (= (or b!4768941 b!4768942 b!4768939 b!4768938) bm!334334))

(assert (= (or b!4768942 b!4768938) bm!334335))

(assert (= (or b!4768941 b!4768939) bm!334337))

(assert (= (or b!4768942 b!4768938) bm!334338))

(assert (= (or b!4768942 b!4768938) bm!334336))

(assert (= (and d!1524418 res!2022642) b!4768940))

(declare-fun m!5740662 () Bool)

(assert (=> bm!334335 m!5740662))

(declare-fun m!5740664 () Bool)

(assert (=> bm!334337 m!5740664))

(assert (=> bm!334334 m!5740594))

(declare-fun m!5740666 () Bool)

(assert (=> d!1524418 m!5740666))

(declare-fun m!5740668 () Bool)

(assert (=> d!1524418 m!5740668))

(assert (=> d!1524418 m!5740608))

(assert (=> d!1524418 m!5740594))

(assert (=> d!1524418 m!5740624))

(assert (=> d!1524418 m!5740600))

(declare-fun m!5740670 () Bool)

(assert (=> d!1524418 m!5740670))

(assert (=> d!1524418 m!5740600))

(assert (=> d!1524418 m!5740666))

(declare-fun m!5740672 () Bool)

(assert (=> d!1524418 m!5740672))

(assert (=> bm!334339 m!5740608))

(declare-fun m!5740674 () Bool)

(assert (=> bm!334338 m!5740674))

(declare-fun m!5740676 () Bool)

(assert (=> bm!334336 m!5740676))

(assert (=> b!4768937 m!5740608))

(declare-fun m!5740678 () Bool)

(assert (=> b!4768937 m!5740678))

(declare-fun m!5740680 () Bool)

(assert (=> b!4768937 m!5740680))

(declare-fun m!5740682 () Bool)

(assert (=> b!4768937 m!5740682))

(declare-fun m!5740684 () Bool)

(assert (=> b!4768947 m!5740684))

(declare-fun m!5740686 () Bool)

(assert (=> b!4768947 m!5740686))

(declare-fun m!5740688 () Bool)

(assert (=> b!4768947 m!5740688))

(assert (=> b!4768947 m!5740686))

(declare-fun m!5740690 () Bool)

(assert (=> b!4768947 m!5740690))

(declare-fun m!5740692 () Bool)

(assert (=> b!4768947 m!5740692))

(declare-fun m!5740694 () Bool)

(assert (=> b!4768947 m!5740694))

(declare-fun m!5740696 () Bool)

(assert (=> b!4768947 m!5740696))

(assert (=> b!4768947 m!5740678))

(assert (=> b!4768947 m!5740608))

(declare-fun m!5740698 () Bool)

(assert (=> b!4768941 m!5740698))

(assert (=> b!4768940 m!5740678))

(assert (=> b!4768940 m!5740678))

(declare-fun m!5740700 () Bool)

(assert (=> b!4768940 m!5740700))

(assert (=> b!4768940 m!5740700))

(declare-fun m!5740702 () Bool)

(assert (=> b!4768940 m!5740702))

(declare-fun m!5740704 () Bool)

(assert (=> b!4768946 m!5740704))

(assert (=> b!4768946 m!5740704))

(declare-fun m!5740706 () Bool)

(assert (=> b!4768946 m!5740706))

(declare-fun m!5740708 () Bool)

(assert (=> b!4768946 m!5740708))

(assert (=> b!4768884 d!1524418))

(declare-fun d!1524420 () Bool)

(assert (=> d!1524420 (= (get!18070 lt!1931804) (v!47758 lt!1931804))))

(assert (=> b!4768883 d!1524420))

(declare-fun d!1524422 () Bool)

(assert (=> d!1524422 (= (get!18069 (getValueByKey!2202 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))) key!1776)) (v!47757 (getValueByKey!2202 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))) key!1776)))))

(assert (=> b!4768883 d!1524422))

(declare-fun b!4768958 () Bool)

(declare-fun e!2976805 () Option!12707)

(assert (=> b!4768958 (= e!2976805 (getValueByKey!2202 (t!361071 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818)))) key!1776))))

(declare-fun b!4768959 () Bool)

(assert (=> b!4768959 (= e!2976805 None!12706)))

(declare-fun b!4768957 () Bool)

(declare-fun e!2976804 () Option!12707)

(assert (=> b!4768957 (= e!2976804 e!2976805)))

(declare-fun c!813511 () Bool)

(assert (=> b!4768957 (= c!813511 (and ((_ is Cons!53513) (toList!6313 (extractMap!2156 (toList!6314 lt!1931818)))) (not (= (_1!31085 (h!59925 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))))) key!1776))))))

(declare-fun d!1524424 () Bool)

(declare-fun c!813510 () Bool)

(assert (=> d!1524424 (= c!813510 (and ((_ is Cons!53513) (toList!6313 (extractMap!2156 (toList!6314 lt!1931818)))) (= (_1!31085 (h!59925 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))))) key!1776)))))

(assert (=> d!1524424 (= (getValueByKey!2202 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))) key!1776) e!2976804)))

(declare-fun b!4768956 () Bool)

(assert (=> b!4768956 (= e!2976804 (Some!12706 (_2!31085 (h!59925 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818)))))))))

(assert (= (and d!1524424 c!813510) b!4768956))

(assert (= (and d!1524424 (not c!813510)) b!4768957))

(assert (= (and b!4768957 c!813511) b!4768958))

(assert (= (and b!4768957 (not c!813511)) b!4768959))

(declare-fun m!5740710 () Bool)

(assert (=> b!4768958 m!5740710))

(assert (=> b!4768883 d!1524424))

(declare-fun bs!1149338 () Bool)

(declare-fun d!1524426 () Bool)

(assert (= bs!1149338 (and d!1524426 b!4768882)))

(declare-fun lambda!224746 () Int)

(assert (=> bs!1149338 (= lambda!224746 lambda!224737)))

(declare-fun bs!1149339 () Bool)

(assert (= bs!1149339 (and d!1524426 b!4768895)))

(assert (=> bs!1149339 (= lambda!224746 lambda!224740)))

(declare-fun bs!1149340 () Bool)

(assert (= bs!1149340 (and d!1524426 b!4768937)))

(assert (=> bs!1149340 (= lambda!224746 lambda!224743)))

(declare-fun lt!1931888 () ListMap!5809)

(declare-fun invariantList!1665 (List!53637) Bool)

(assert (=> d!1524426 (invariantList!1665 (toList!6313 lt!1931888))))

(declare-fun e!2976808 () ListMap!5809)

(assert (=> d!1524426 (= lt!1931888 e!2976808)))

(declare-fun c!813514 () Bool)

(assert (=> d!1524426 (= c!813514 ((_ is Cons!53514) (toList!6314 lt!1931818)))))

(assert (=> d!1524426 (forall!11882 (toList!6314 lt!1931818) lambda!224746)))

(assert (=> d!1524426 (= (extractMap!2156 (toList!6314 lt!1931818)) lt!1931888)))

(declare-fun b!4768964 () Bool)

(declare-fun addToMapMapFromBucket!1630 (List!53637 ListMap!5809) ListMap!5809)

(assert (=> b!4768964 (= e!2976808 (addToMapMapFromBucket!1630 (_2!31086 (h!59926 (toList!6314 lt!1931818))) (extractMap!2156 (t!361072 (toList!6314 lt!1931818)))))))

(declare-fun b!4768965 () Bool)

(assert (=> b!4768965 (= e!2976808 (ListMap!5810 Nil!53513))))

(assert (= (and d!1524426 c!813514) b!4768964))

(assert (= (and d!1524426 (not c!813514)) b!4768965))

(declare-fun m!5740712 () Bool)

(assert (=> d!1524426 m!5740712))

(declare-fun m!5740714 () Bool)

(assert (=> d!1524426 m!5740714))

(declare-fun m!5740716 () Bool)

(assert (=> b!4768964 m!5740716))

(assert (=> b!4768964 m!5740716))

(declare-fun m!5740718 () Bool)

(assert (=> b!4768964 m!5740718))

(assert (=> b!4768883 d!1524426))

(declare-fun d!1524428 () Bool)

(declare-fun lt!1931891 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9593 (List!53638) (InoxSet tuple2!55584))

(assert (=> d!1524428 (= lt!1931891 (select (content!9593 (toList!6314 lt!1931818)) lt!1931802))))

(declare-fun e!2976813 () Bool)

(assert (=> d!1524428 (= lt!1931891 e!2976813)))

(declare-fun res!2022649 () Bool)

(assert (=> d!1524428 (=> (not res!2022649) (not e!2976813))))

(assert (=> d!1524428 (= res!2022649 ((_ is Cons!53514) (toList!6314 lt!1931818)))))

(assert (=> d!1524428 (= (contains!16874 (toList!6314 lt!1931818) lt!1931802) lt!1931891)))

(declare-fun b!4768970 () Bool)

(declare-fun e!2976814 () Bool)

(assert (=> b!4768970 (= e!2976813 e!2976814)))

(declare-fun res!2022650 () Bool)

(assert (=> b!4768970 (=> res!2022650 e!2976814)))

(assert (=> b!4768970 (= res!2022650 (= (h!59926 (toList!6314 lt!1931818)) lt!1931802))))

(declare-fun b!4768971 () Bool)

(assert (=> b!4768971 (= e!2976814 (contains!16874 (t!361072 (toList!6314 lt!1931818)) lt!1931802))))

(assert (= (and d!1524428 res!2022649) b!4768970))

(assert (= (and b!4768970 (not res!2022650)) b!4768971))

(declare-fun m!5740720 () Bool)

(assert (=> d!1524428 m!5740720))

(declare-fun m!5740722 () Bool)

(assert (=> d!1524428 m!5740722))

(declare-fun m!5740724 () Bool)

(assert (=> b!4768971 m!5740724))

(assert (=> b!4768882 d!1524428))

(declare-fun d!1524430 () Bool)

(assert (=> d!1524430 (= (get!18069 (getValueByKey!2202 (toList!6313 (map!12013 thiss!42052)) key!1776)) (v!47757 (getValueByKey!2202 (toList!6313 (map!12013 thiss!42052)) key!1776)))))

(assert (=> b!4768882 d!1524430))

(declare-fun b!4768988 () Bool)

(declare-fun e!2976825 () Option!12708)

(declare-fun e!2976827 () Option!12708)

(assert (=> b!4768988 (= e!2976825 e!2976827)))

(declare-fun c!813519 () Bool)

(assert (=> b!4768988 (= c!813519 ((_ is Cons!53513) lt!1931816))))

(declare-fun b!4768989 () Bool)

(declare-fun res!2022662 () Bool)

(declare-fun e!2976826 () Bool)

(assert (=> b!4768989 (=> (not res!2022662) (not e!2976826))))

(declare-fun lt!1931894 () Option!12708)

(assert (=> b!4768989 (= res!2022662 (= (_1!31085 (get!18070 lt!1931894)) key!1776))))

(declare-fun b!4768990 () Bool)

(assert (=> b!4768990 (= e!2976825 (Some!12707 (h!59925 lt!1931816)))))

(declare-fun d!1524432 () Bool)

(declare-fun e!2976829 () Bool)

(assert (=> d!1524432 e!2976829))

(declare-fun res!2022660 () Bool)

(assert (=> d!1524432 (=> res!2022660 e!2976829)))

(declare-fun e!2976828 () Bool)

(assert (=> d!1524432 (= res!2022660 e!2976828)))

(declare-fun res!2022661 () Bool)

(assert (=> d!1524432 (=> (not res!2022661) (not e!2976828))))

(declare-fun isEmpty!29291 (Option!12708) Bool)

(assert (=> d!1524432 (= res!2022661 (isEmpty!29291 lt!1931894))))

(assert (=> d!1524432 (= lt!1931894 e!2976825)))

(declare-fun c!813520 () Bool)

(assert (=> d!1524432 (= c!813520 (and ((_ is Cons!53513) lt!1931816) (= (_1!31085 (h!59925 lt!1931816)) key!1776)))))

(declare-fun noDuplicateKeys!2259 (List!53637) Bool)

(assert (=> d!1524432 (noDuplicateKeys!2259 lt!1931816)))

(assert (=> d!1524432 (= (getPair!653 lt!1931816 key!1776) lt!1931894)))

(declare-fun b!4768991 () Bool)

(assert (=> b!4768991 (= e!2976827 (getPair!653 (t!361071 lt!1931816) key!1776))))

(declare-fun b!4768992 () Bool)

(assert (=> b!4768992 (= e!2976827 None!12707)))

(declare-fun b!4768993 () Bool)

(assert (=> b!4768993 (= e!2976829 e!2976826)))

(declare-fun res!2022659 () Bool)

(assert (=> b!4768993 (=> (not res!2022659) (not e!2976826))))

(assert (=> b!4768993 (= res!2022659 (isDefined!9858 lt!1931894))))

(declare-fun b!4768994 () Bool)

(declare-fun containsKey!3676 (List!53637 K!14994) Bool)

(assert (=> b!4768994 (= e!2976828 (not (containsKey!3676 lt!1931816 key!1776)))))

(declare-fun b!4768995 () Bool)

(declare-fun contains!16879 (List!53637 tuple2!55582) Bool)

(assert (=> b!4768995 (= e!2976826 (contains!16879 lt!1931816 (get!18070 lt!1931894)))))

(assert (= (and d!1524432 c!813520) b!4768990))

(assert (= (and d!1524432 (not c!813520)) b!4768988))

(assert (= (and b!4768988 c!813519) b!4768991))

(assert (= (and b!4768988 (not c!813519)) b!4768992))

(assert (= (and d!1524432 res!2022661) b!4768994))

(assert (= (and d!1524432 (not res!2022660)) b!4768993))

(assert (= (and b!4768993 res!2022659) b!4768989))

(assert (= (and b!4768989 res!2022662) b!4768995))

(declare-fun m!5740726 () Bool)

(assert (=> b!4768989 m!5740726))

(assert (=> b!4768995 m!5740726))

(assert (=> b!4768995 m!5740726))

(declare-fun m!5740728 () Bool)

(assert (=> b!4768995 m!5740728))

(declare-fun m!5740730 () Bool)

(assert (=> b!4768993 m!5740730))

(declare-fun m!5740732 () Bool)

(assert (=> b!4768991 m!5740732))

(declare-fun m!5740734 () Bool)

(assert (=> d!1524432 m!5740734))

(declare-fun m!5740736 () Bool)

(assert (=> d!1524432 m!5740736))

(declare-fun m!5740738 () Bool)

(assert (=> b!4768994 m!5740738))

(assert (=> b!4768882 d!1524432))

(declare-fun d!1524434 () Bool)

(declare-fun map!12015 (LongMapFixedSize!9882) ListLongMap!4711)

(assert (=> d!1524434 (= (map!12014 (v!47756 (underlying!10090 thiss!42052))) (map!12015 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052))))))))

(declare-fun bs!1149341 () Bool)

(assert (= bs!1149341 d!1524434))

(declare-fun m!5740740 () Bool)

(assert (=> bs!1149341 m!5740740))

(assert (=> b!4768882 d!1524434))

(declare-fun d!1524436 () Bool)

(assert (=> d!1524436 (= (get!18070 (getPair!653 lt!1931816 key!1776)) (v!47758 (getPair!653 lt!1931816 key!1776)))))

(assert (=> b!4768882 d!1524436))

(declare-fun d!1524438 () Bool)

(assert (=> d!1524438 (= (isDefined!9858 lt!1931804) (not (isEmpty!29291 lt!1931804)))))

(declare-fun bs!1149342 () Bool)

(assert (= bs!1149342 d!1524438))

(declare-fun m!5740742 () Bool)

(assert (=> bs!1149342 m!5740742))

(assert (=> b!4768882 d!1524438))

(declare-fun bs!1149343 () Bool)

(declare-fun d!1524440 () Bool)

(assert (= bs!1149343 (and d!1524440 b!4768882)))

(declare-fun lambda!224749 () Int)

(assert (=> bs!1149343 (= lambda!224749 lambda!224737)))

(declare-fun bs!1149344 () Bool)

(assert (= bs!1149344 (and d!1524440 b!4768895)))

(assert (=> bs!1149344 (= lambda!224749 lambda!224740)))

(declare-fun bs!1149345 () Bool)

(assert (= bs!1149345 (and d!1524440 b!4768937)))

(assert (=> bs!1149345 (= lambda!224749 lambda!224743)))

(declare-fun bs!1149346 () Bool)

(assert (= bs!1149346 (and d!1524440 d!1524426)))

(assert (=> bs!1149346 (= lambda!224749 lambda!224746)))

(assert (=> d!1524440 (contains!16875 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun lt!1931897 () Unit!138345)

(declare-fun choose!34009 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> d!1524440 (= lt!1931897 (choose!34009 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(assert (=> d!1524440 (forall!11882 (toList!6314 lt!1931818) lambda!224749)))

(assert (=> d!1524440 (= (lemmaInGenMapThenLongMapContainsHash!846 lt!1931818 key!1776 (hashF!12487 thiss!42052)) lt!1931897)))

(declare-fun bs!1149347 () Bool)

(assert (= bs!1149347 d!1524440))

(assert (=> bs!1149347 m!5740594))

(assert (=> bs!1149347 m!5740594))

(declare-fun m!5740744 () Bool)

(assert (=> bs!1149347 m!5740744))

(declare-fun m!5740746 () Bool)

(assert (=> bs!1149347 m!5740746))

(declare-fun m!5740748 () Bool)

(assert (=> bs!1149347 m!5740748))

(assert (=> b!4768882 d!1524440))

(declare-fun d!1524442 () Bool)

(declare-fun e!2976832 () Bool)

(assert (=> d!1524442 e!2976832))

(declare-fun c!813523 () Bool)

(assert (=> d!1524442 (= c!813523 (contains!16878 (v!47756 (underlying!10090 thiss!42052)) lt!1931811))))

(declare-fun lt!1931900 () List!53637)

(declare-fun apply!12649 (LongMapFixedSize!9882 (_ BitVec 64)) List!53637)

(assert (=> d!1524442 (= lt!1931900 (apply!12649 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))) lt!1931811))))

(assert (=> d!1524442 (valid!3948 (v!47756 (underlying!10090 thiss!42052)))))

(assert (=> d!1524442 (= (apply!12648 (v!47756 (underlying!10090 thiss!42052)) lt!1931811) lt!1931900)))

(declare-fun b!4769000 () Bool)

(declare-fun get!18071 (Option!12709) List!53637)

(assert (=> b!4769000 (= e!2976832 (= lt!1931900 (get!18071 (getValueByKey!2203 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052)))) lt!1931811))))))

(declare-fun b!4769001 () Bool)

(declare-fun dynLambda!21960 (Int (_ BitVec 64)) List!53637)

(assert (=> b!4769001 (= e!2976832 (= lt!1931900 (dynLambda!21960 (defaultEntry!5359 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052))))) lt!1931811)))))

(assert (=> b!4769001 ((_ is LongMap!4941) (v!47756 (underlying!10090 thiss!42052)))))

(assert (= (and d!1524442 c!813523) b!4769000))

(assert (= (and d!1524442 (not c!813523)) b!4769001))

(declare-fun b_lambda!184523 () Bool)

(assert (=> (not b_lambda!184523) (not b!4769001)))

(declare-fun t!361074 () Bool)

(declare-fun tb!257487 () Bool)

(assert (=> (and b!4768885 (= (defaultEntry!5359 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052))))) (defaultEntry!5359 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052)))))) t!361074) tb!257487))

(assert (=> b!4769001 t!361074))

(declare-fun result!319142 () Bool)

(declare-fun b_and!341443 () Bool)

(assert (= b_and!341439 (and (=> t!361074 result!319142) b_and!341443)))

(declare-fun m!5740750 () Bool)

(assert (=> d!1524442 m!5740750))

(declare-fun m!5740752 () Bool)

(assert (=> d!1524442 m!5740752))

(assert (=> d!1524442 m!5740642))

(assert (=> b!4769000 m!5740608))

(declare-fun m!5740754 () Bool)

(assert (=> b!4769000 m!5740754))

(assert (=> b!4769000 m!5740754))

(declare-fun m!5740756 () Bool)

(assert (=> b!4769000 m!5740756))

(declare-fun m!5740758 () Bool)

(assert (=> b!4769001 m!5740758))

(assert (=> b!4768882 d!1524442))

(declare-fun b!4769002 () Bool)

(declare-fun e!2976833 () Option!12708)

(declare-fun e!2976835 () Option!12708)

(assert (=> b!4769002 (= e!2976833 e!2976835)))

(declare-fun c!813524 () Bool)

(assert (=> b!4769002 (= c!813524 ((_ is Cons!53513) lt!1931809))))

(declare-fun b!4769003 () Bool)

(declare-fun res!2022666 () Bool)

(declare-fun e!2976834 () Bool)

(assert (=> b!4769003 (=> (not res!2022666) (not e!2976834))))

(declare-fun lt!1931901 () Option!12708)

(assert (=> b!4769003 (= res!2022666 (= (_1!31085 (get!18070 lt!1931901)) key!1776))))

(declare-fun b!4769004 () Bool)

(assert (=> b!4769004 (= e!2976833 (Some!12707 (h!59925 lt!1931809)))))

(declare-fun d!1524444 () Bool)

(declare-fun e!2976837 () Bool)

(assert (=> d!1524444 e!2976837))

(declare-fun res!2022664 () Bool)

(assert (=> d!1524444 (=> res!2022664 e!2976837)))

(declare-fun e!2976836 () Bool)

(assert (=> d!1524444 (= res!2022664 e!2976836)))

(declare-fun res!2022665 () Bool)

(assert (=> d!1524444 (=> (not res!2022665) (not e!2976836))))

(assert (=> d!1524444 (= res!2022665 (isEmpty!29291 lt!1931901))))

(assert (=> d!1524444 (= lt!1931901 e!2976833)))

(declare-fun c!813525 () Bool)

(assert (=> d!1524444 (= c!813525 (and ((_ is Cons!53513) lt!1931809) (= (_1!31085 (h!59925 lt!1931809)) key!1776)))))

(assert (=> d!1524444 (noDuplicateKeys!2259 lt!1931809)))

(assert (=> d!1524444 (= (getPair!653 lt!1931809 key!1776) lt!1931901)))

(declare-fun b!4769005 () Bool)

(assert (=> b!4769005 (= e!2976835 (getPair!653 (t!361071 lt!1931809) key!1776))))

(declare-fun b!4769006 () Bool)

(assert (=> b!4769006 (= e!2976835 None!12707)))

(declare-fun b!4769007 () Bool)

(assert (=> b!4769007 (= e!2976837 e!2976834)))

(declare-fun res!2022663 () Bool)

(assert (=> b!4769007 (=> (not res!2022663) (not e!2976834))))

(assert (=> b!4769007 (= res!2022663 (isDefined!9858 lt!1931901))))

(declare-fun b!4769008 () Bool)

(assert (=> b!4769008 (= e!2976836 (not (containsKey!3676 lt!1931809 key!1776)))))

(declare-fun b!4769009 () Bool)

(assert (=> b!4769009 (= e!2976834 (contains!16879 lt!1931809 (get!18070 lt!1931901)))))

(assert (= (and d!1524444 c!813525) b!4769004))

(assert (= (and d!1524444 (not c!813525)) b!4769002))

(assert (= (and b!4769002 c!813524) b!4769005))

(assert (= (and b!4769002 (not c!813524)) b!4769006))

(assert (= (and d!1524444 res!2022665) b!4769008))

(assert (= (and d!1524444 (not res!2022664)) b!4769007))

(assert (= (and b!4769007 res!2022663) b!4769003))

(assert (= (and b!4769003 res!2022666) b!4769009))

(declare-fun m!5740760 () Bool)

(assert (=> b!4769003 m!5740760))

(assert (=> b!4769009 m!5740760))

(assert (=> b!4769009 m!5740760))

(declare-fun m!5740762 () Bool)

(assert (=> b!4769009 m!5740762))

(declare-fun m!5740764 () Bool)

(assert (=> b!4769007 m!5740764))

(declare-fun m!5740766 () Bool)

(assert (=> b!4769005 m!5740766))

(declare-fun m!5740768 () Bool)

(assert (=> d!1524444 m!5740768))

(declare-fun m!5740770 () Bool)

(assert (=> d!1524444 m!5740770))

(declare-fun m!5740772 () Bool)

(assert (=> b!4769008 m!5740772))

(assert (=> b!4768882 d!1524444))

(declare-fun bs!1149348 () Bool)

(declare-fun d!1524446 () Bool)

(assert (= bs!1149348 (and d!1524446 d!1524440)))

(declare-fun lambda!224762 () Int)

(assert (=> bs!1149348 (= lambda!224762 lambda!224749)))

(declare-fun bs!1149349 () Bool)

(assert (= bs!1149349 (and d!1524446 b!4768882)))

(assert (=> bs!1149349 (= lambda!224762 lambda!224737)))

(declare-fun bs!1149350 () Bool)

(assert (= bs!1149350 (and d!1524446 b!4768895)))

(assert (=> bs!1149350 (= lambda!224762 lambda!224740)))

(declare-fun bs!1149351 () Bool)

(assert (= bs!1149351 (and d!1524446 b!4768937)))

(assert (=> bs!1149351 (= lambda!224762 lambda!224743)))

(declare-fun bs!1149352 () Bool)

(assert (= bs!1149352 (and d!1524446 d!1524426)))

(assert (=> bs!1149352 (= lambda!224762 lambda!224746)))

(declare-fun lt!1931942 () (_ BitVec 64))

(declare-fun lt!1931952 () List!53637)

(declare-fun e!2976850 () Bool)

(declare-fun b!4769030 () Bool)

(assert (=> b!4769030 (= e!2976850 (= (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931942) (Some!12708 lt!1931952)))))

(declare-fun b!4769031 () Bool)

(declare-fun res!2022692 () Bool)

(declare-fun e!2976851 () Bool)

(assert (=> b!4769031 (=> (not res!2022692) (not e!2976851))))

(assert (=> b!4769031 (= res!2022692 (allKeysSameHashInMap!2026 lt!1931818 (hashF!12487 thiss!42052)))))

(declare-fun b!4769032 () Bool)

(declare-fun res!2022690 () Bool)

(declare-fun e!2976848 () Bool)

(assert (=> b!4769032 (=> (not res!2022690) (not e!2976848))))

(assert (=> b!4769032 (= res!2022690 (allKeysSameHashInMap!2026 lt!1931818 (hashF!12487 thiss!42052)))))

(declare-fun b!4769033 () Bool)

(assert (=> b!4769033 (= e!2976848 (contains!16877 (extractMap!2156 (toList!6314 lt!1931818)) key!1776))))

(declare-fun b!4769034 () Bool)

(declare-fun e!2976849 () Bool)

(declare-fun lt!1931948 () List!53637)

(declare-fun lt!1931944 () (_ BitVec 64))

(assert (=> b!4769034 (= e!2976849 (= (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931944) (Some!12708 lt!1931948)))))

(declare-fun b!4769035 () Bool)

(assert (=> b!4769035 (= e!2976851 (= (_2!31085 (get!18070 (getPair!653 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)) key!1776))) (get!18069 (getValueByKey!2202 (toList!6313 (extractMap!2156 (toList!6314 lt!1931818))) key!1776))))))

(declare-fun lt!1931950 () Unit!138345)

(declare-fun lt!1931947 () Unit!138345)

(assert (=> b!4769035 (= lt!1931950 lt!1931947)))

(declare-fun e!2976852 () Bool)

(assert (=> b!4769035 e!2976852))

(declare-fun res!2022691 () Bool)

(assert (=> b!4769035 (=> (not res!2022691) (not e!2976852))))

(assert (=> b!4769035 (= res!2022691 (forall!11882 (toList!6314 lt!1931818) lambda!224762))))

(assert (=> b!4769035 (= lt!1931947 (lemmaInGenMapThenGetPairDefined!436 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(assert (=> b!4769035 e!2976848))

(declare-fun res!2022687 () Bool)

(assert (=> b!4769035 (=> (not res!2022687) (not e!2976848))))

(assert (=> b!4769035 (= res!2022687 (forall!11882 (toList!6314 lt!1931818) lambda!224762))))

(declare-fun lt!1931951 () Unit!138345)

(assert (=> b!4769035 (= lt!1931951 (forallContained!3871 (toList!6314 lt!1931818) lambda!224762 (tuple2!55585 (hash!4582 (hashF!12487 thiss!42052) key!1776) (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))))

(declare-fun lt!1931945 () Unit!138345)

(declare-fun lt!1931940 () Unit!138345)

(assert (=> b!4769035 (= lt!1931945 lt!1931940)))

(assert (=> b!4769035 (contains!16874 (toList!6314 lt!1931818) (tuple2!55585 lt!1931944 lt!1931948))))

(assert (=> b!4769035 (= lt!1931940 (lemmaGetValueImpliesTupleContained!445 lt!1931818 lt!1931944 lt!1931948))))

(assert (=> b!4769035 e!2976849))

(declare-fun res!2022688 () Bool)

(assert (=> b!4769035 (=> (not res!2022688) (not e!2976849))))

(assert (=> b!4769035 (= res!2022688 (contains!16875 lt!1931818 lt!1931944))))

(assert (=> b!4769035 (= lt!1931948 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))

(assert (=> b!4769035 (= lt!1931944 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun lt!1931937 () Unit!138345)

(declare-fun lt!1931949 () Unit!138345)

(assert (=> b!4769035 (= lt!1931937 lt!1931949)))

(assert (=> b!4769035 (contains!16875 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(assert (=> b!4769035 (= lt!1931949 (lemmaInGenMapThenLongMapContainsHash!846 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(declare-fun b!4769036 () Bool)

(declare-fun res!2022693 () Bool)

(assert (=> b!4769036 (=> (not res!2022693) (not e!2976852))))

(assert (=> b!4769036 (= res!2022693 (contains!16877 (extractMap!2156 (toList!6314 lt!1931818)) key!1776))))

(declare-fun b!4769037 () Bool)

(assert (=> b!4769037 (= e!2976852 (isDefined!9858 (getPair!653 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1931941 () Unit!138345)

(assert (=> b!4769037 (= lt!1931941 (forallContained!3871 (toList!6314 lt!1931818) lambda!224762 (tuple2!55585 (hash!4582 (hashF!12487 thiss!42052) key!1776) (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))))

(declare-fun lt!1931943 () Unit!138345)

(declare-fun lt!1931938 () Unit!138345)

(assert (=> b!4769037 (= lt!1931943 lt!1931938)))

(assert (=> b!4769037 (contains!16874 (toList!6314 lt!1931818) (tuple2!55585 lt!1931942 lt!1931952))))

(assert (=> b!4769037 (= lt!1931938 (lemmaGetValueImpliesTupleContained!445 lt!1931818 lt!1931942 lt!1931952))))

(assert (=> b!4769037 e!2976850))

(declare-fun res!2022689 () Bool)

(assert (=> b!4769037 (=> (not res!2022689) (not e!2976850))))

(assert (=> b!4769037 (= res!2022689 (contains!16875 lt!1931818 lt!1931942))))

(assert (=> b!4769037 (= lt!1931952 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))

(assert (=> b!4769037 (= lt!1931942 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun lt!1931939 () Unit!138345)

(declare-fun lt!1931946 () Unit!138345)

(assert (=> b!4769037 (= lt!1931939 lt!1931946)))

(assert (=> b!4769037 (contains!16875 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(assert (=> b!4769037 (= lt!1931946 (lemmaInGenMapThenLongMapContainsHash!846 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(declare-fun b!4769038 () Bool)

(declare-fun res!2022695 () Bool)

(assert (=> b!4769038 (=> (not res!2022695) (not e!2976852))))

(assert (=> b!4769038 (= res!2022695 (allKeysSameHashInMap!2026 lt!1931818 (hashF!12487 thiss!42052)))))

(assert (=> d!1524446 e!2976851))

(declare-fun res!2022696 () Bool)

(assert (=> d!1524446 (=> (not res!2022696) (not e!2976851))))

(assert (=> d!1524446 (= res!2022696 (forall!11882 (toList!6314 lt!1931818) lambda!224762))))

(declare-fun lt!1931936 () Unit!138345)

(declare-fun choose!34010 (ListLongMap!4711 K!14994 V!15240 Hashable!6602) Unit!138345)

(assert (=> d!1524446 (= lt!1931936 (choose!34010 lt!1931818 key!1776 (_2!31085 lt!1931803) (hashF!12487 thiss!42052)))))

(assert (=> d!1524446 (forall!11882 (toList!6314 lt!1931818) lambda!224762)))

(assert (=> d!1524446 (= (lemmaGetPairGetSameValueAsMap!68 lt!1931818 key!1776 (_2!31085 lt!1931803) (hashF!12487 thiss!42052)) lt!1931936)))

(declare-fun b!4769039 () Bool)

(declare-fun res!2022694 () Bool)

(assert (=> b!4769039 (=> (not res!2022694) (not e!2976851))))

(assert (=> b!4769039 (= res!2022694 (contains!16877 (extractMap!2156 (toList!6314 lt!1931818)) key!1776))))

(assert (= (and d!1524446 res!2022696) b!4769031))

(assert (= (and b!4769031 res!2022692) b!4769039))

(assert (= (and b!4769039 res!2022694) b!4769035))

(assert (= (and b!4769035 res!2022688) b!4769034))

(assert (= (and b!4769035 res!2022687) b!4769032))

(assert (= (and b!4769032 res!2022690) b!4769033))

(assert (= (and b!4769035 res!2022691) b!4769038))

(assert (= (and b!4769038 res!2022695) b!4769036))

(assert (= (and b!4769036 res!2022693) b!4769037))

(assert (= (and b!4769037 res!2022689) b!4769030))

(assert (=> b!4769036 m!5740628))

(assert (=> b!4769036 m!5740628))

(declare-fun m!5740774 () Bool)

(assert (=> b!4769036 m!5740774))

(declare-fun m!5740776 () Bool)

(assert (=> b!4769030 m!5740776))

(declare-fun m!5740778 () Bool)

(assert (=> b!4769037 m!5740778))

(assert (=> b!4769037 m!5740594))

(assert (=> b!4769037 m!5740744))

(declare-fun m!5740780 () Bool)

(assert (=> b!4769037 m!5740780))

(declare-fun m!5740782 () Bool)

(assert (=> b!4769037 m!5740782))

(assert (=> b!4769037 m!5740594))

(declare-fun m!5740784 () Bool)

(assert (=> b!4769037 m!5740784))

(assert (=> b!4769037 m!5740610))

(declare-fun m!5740786 () Bool)

(assert (=> b!4769037 m!5740786))

(assert (=> b!4769037 m!5740780))

(declare-fun m!5740788 () Bool)

(assert (=> b!4769037 m!5740788))

(assert (=> b!4769037 m!5740594))

(assert (=> b!4769037 m!5740786))

(declare-fun m!5740790 () Bool)

(assert (=> b!4769037 m!5740790))

(declare-fun m!5740792 () Bool)

(assert (=> b!4769032 m!5740792))

(assert (=> b!4769035 m!5740594))

(assert (=> b!4769035 m!5740744))

(assert (=> b!4769035 m!5740790))

(declare-fun m!5740794 () Bool)

(assert (=> b!4769035 m!5740794))

(declare-fun m!5740796 () Bool)

(assert (=> b!4769035 m!5740796))

(declare-fun m!5740798 () Bool)

(assert (=> b!4769035 m!5740798))

(assert (=> b!4769035 m!5740630))

(assert (=> b!4769035 m!5740632))

(assert (=> b!4769035 m!5740610))

(assert (=> b!4769035 m!5740594))

(assert (=> b!4769035 m!5740786))

(declare-fun m!5740800 () Bool)

(assert (=> b!4769035 m!5740800))

(assert (=> b!4769035 m!5740594))

(assert (=> b!4769035 m!5740592))

(assert (=> b!4769035 m!5740628))

(assert (=> b!4769035 m!5740786))

(assert (=> b!4769035 m!5740780))

(assert (=> b!4769035 m!5740796))

(assert (=> b!4769035 m!5740630))

(assert (=> b!4769035 m!5740780))

(declare-fun m!5740802 () Bool)

(assert (=> b!4769035 m!5740802))

(assert (=> b!4769031 m!5740792))

(declare-fun m!5740804 () Bool)

(assert (=> b!4769034 m!5740804))

(assert (=> b!4769039 m!5740628))

(assert (=> b!4769039 m!5740628))

(assert (=> b!4769039 m!5740774))

(assert (=> b!4769033 m!5740628))

(assert (=> b!4769033 m!5740628))

(assert (=> b!4769033 m!5740774))

(assert (=> b!4769038 m!5740792))

(assert (=> d!1524446 m!5740796))

(declare-fun m!5740806 () Bool)

(assert (=> d!1524446 m!5740806))

(assert (=> d!1524446 m!5740796))

(assert (=> b!4768882 d!1524446))

(declare-fun d!1524448 () Bool)

(declare-fun lt!1931953 () Bool)

(assert (=> d!1524448 (= lt!1931953 (select (content!9593 (toList!6314 lt!1931818)) lt!1931806))))

(declare-fun e!2976853 () Bool)

(assert (=> d!1524448 (= lt!1931953 e!2976853)))

(declare-fun res!2022697 () Bool)

(assert (=> d!1524448 (=> (not res!2022697) (not e!2976853))))

(assert (=> d!1524448 (= res!2022697 ((_ is Cons!53514) (toList!6314 lt!1931818)))))

(assert (=> d!1524448 (= (contains!16874 (toList!6314 lt!1931818) lt!1931806) lt!1931953)))

(declare-fun b!4769040 () Bool)

(declare-fun e!2976854 () Bool)

(assert (=> b!4769040 (= e!2976853 e!2976854)))

(declare-fun res!2022698 () Bool)

(assert (=> b!4769040 (=> res!2022698 e!2976854)))

(assert (=> b!4769040 (= res!2022698 (= (h!59926 (toList!6314 lt!1931818)) lt!1931806))))

(declare-fun b!4769041 () Bool)

(assert (=> b!4769041 (= e!2976854 (contains!16874 (t!361072 (toList!6314 lt!1931818)) lt!1931806))))

(assert (= (and d!1524448 res!2022697) b!4769040))

(assert (= (and b!4769040 (not res!2022698)) b!4769041))

(assert (=> d!1524448 m!5740720))

(declare-fun m!5740808 () Bool)

(assert (=> d!1524448 m!5740808))

(declare-fun m!5740810 () Bool)

(assert (=> b!4769041 m!5740810))

(assert (=> b!4768882 d!1524448))

(declare-fun d!1524450 () Bool)

(assert (=> d!1524450 (= (apply!12647 lt!1931818 lt!1931811) (get!18071 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811)))))

(declare-fun bs!1149353 () Bool)

(assert (= bs!1149353 d!1524450))

(assert (=> bs!1149353 m!5740636))

(assert (=> bs!1149353 m!5740636))

(declare-fun m!5740812 () Bool)

(assert (=> bs!1149353 m!5740812))

(assert (=> b!4768882 d!1524450))

(declare-fun d!1524452 () Bool)

(declare-fun dynLambda!21961 (Int tuple2!55584) Bool)

(assert (=> d!1524452 (dynLambda!21961 lambda!224737 lt!1931802)))

(declare-fun lt!1931956 () Unit!138345)

(declare-fun choose!34011 (List!53638 Int tuple2!55584) Unit!138345)

(assert (=> d!1524452 (= lt!1931956 (choose!34011 (toList!6314 lt!1931818) lambda!224737 lt!1931802))))

(declare-fun e!2976857 () Bool)

(assert (=> d!1524452 e!2976857))

(declare-fun res!2022701 () Bool)

(assert (=> d!1524452 (=> (not res!2022701) (not e!2976857))))

(assert (=> d!1524452 (= res!2022701 (forall!11882 (toList!6314 lt!1931818) lambda!224737))))

(assert (=> d!1524452 (= (forallContained!3871 (toList!6314 lt!1931818) lambda!224737 lt!1931802) lt!1931956)))

(declare-fun b!4769044 () Bool)

(assert (=> b!4769044 (= e!2976857 (contains!16874 (toList!6314 lt!1931818) lt!1931802))))

(assert (= (and d!1524452 res!2022701) b!4769044))

(declare-fun b_lambda!184525 () Bool)

(assert (=> (not b_lambda!184525) (not d!1524452)))

(declare-fun m!5740814 () Bool)

(assert (=> d!1524452 m!5740814))

(declare-fun m!5740816 () Bool)

(assert (=> d!1524452 m!5740816))

(declare-fun m!5740818 () Bool)

(assert (=> d!1524452 m!5740818))

(assert (=> b!4769044 m!5740612))

(assert (=> b!4768882 d!1524452))

(declare-fun bs!1149354 () Bool)

(declare-fun d!1524454 () Bool)

(assert (= bs!1149354 (and d!1524454 d!1524440)))

(declare-fun lambda!224769 () Int)

(assert (=> bs!1149354 (= lambda!224769 lambda!224749)))

(declare-fun bs!1149355 () Bool)

(assert (= bs!1149355 (and d!1524454 b!4768882)))

(assert (=> bs!1149355 (= lambda!224769 lambda!224737)))

(declare-fun bs!1149356 () Bool)

(assert (= bs!1149356 (and d!1524454 b!4768895)))

(assert (=> bs!1149356 (= lambda!224769 lambda!224740)))

(declare-fun bs!1149357 () Bool)

(assert (= bs!1149357 (and d!1524454 b!4768937)))

(assert (=> bs!1149357 (= lambda!224769 lambda!224743)))

(declare-fun bs!1149358 () Bool)

(assert (= bs!1149358 (and d!1524454 d!1524446)))

(assert (=> bs!1149358 (= lambda!224769 lambda!224762)))

(declare-fun bs!1149359 () Bool)

(assert (= bs!1149359 (and d!1524454 d!1524426)))

(assert (=> bs!1149359 (= lambda!224769 lambda!224746)))

(declare-fun b!4769054 () Bool)

(declare-fun res!2022711 () Bool)

(declare-fun e!2976862 () Bool)

(assert (=> b!4769054 (=> (not res!2022711) (not e!2976862))))

(assert (=> b!4769054 (= res!2022711 (contains!16877 (extractMap!2156 (toList!6314 lt!1931818)) key!1776))))

(declare-fun b!4769055 () Bool)

(assert (=> b!4769055 (= e!2976862 (isDefined!9858 (getPair!653 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1931976 () Unit!138345)

(assert (=> b!4769055 (= lt!1931976 (forallContained!3871 (toList!6314 lt!1931818) lambda!224769 (tuple2!55585 (hash!4582 (hashF!12487 thiss!42052) key!1776) (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))))

(declare-fun lt!1931973 () Unit!138345)

(declare-fun lt!1931977 () Unit!138345)

(assert (=> b!4769055 (= lt!1931973 lt!1931977)))

(declare-fun lt!1931979 () (_ BitVec 64))

(declare-fun lt!1931974 () List!53637)

(assert (=> b!4769055 (contains!16874 (toList!6314 lt!1931818) (tuple2!55585 lt!1931979 lt!1931974))))

(assert (=> b!4769055 (= lt!1931977 (lemmaGetValueImpliesTupleContained!445 lt!1931818 lt!1931979 lt!1931974))))

(declare-fun e!2976863 () Bool)

(assert (=> b!4769055 e!2976863))

(declare-fun res!2022713 () Bool)

(assert (=> b!4769055 (=> (not res!2022713) (not e!2976863))))

(assert (=> b!4769055 (= res!2022713 (contains!16875 lt!1931818 lt!1931979))))

(assert (=> b!4769055 (= lt!1931974 (apply!12647 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776)))))

(assert (=> b!4769055 (= lt!1931979 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(declare-fun lt!1931975 () Unit!138345)

(declare-fun lt!1931978 () Unit!138345)

(assert (=> b!4769055 (= lt!1931975 lt!1931978)))

(assert (=> b!4769055 (contains!16875 lt!1931818 (hash!4582 (hashF!12487 thiss!42052) key!1776))))

(assert (=> b!4769055 (= lt!1931978 (lemmaInGenMapThenLongMapContainsHash!846 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(assert (=> d!1524454 e!2976862))

(declare-fun res!2022710 () Bool)

(assert (=> d!1524454 (=> (not res!2022710) (not e!2976862))))

(assert (=> d!1524454 (= res!2022710 (forall!11882 (toList!6314 lt!1931818) lambda!224769))))

(declare-fun lt!1931980 () Unit!138345)

(declare-fun choose!34012 (ListLongMap!4711 K!14994 Hashable!6602) Unit!138345)

(assert (=> d!1524454 (= lt!1931980 (choose!34012 lt!1931818 key!1776 (hashF!12487 thiss!42052)))))

(assert (=> d!1524454 (forall!11882 (toList!6314 lt!1931818) lambda!224769)))

(assert (=> d!1524454 (= (lemmaInGenMapThenGetPairDefined!436 lt!1931818 key!1776 (hashF!12487 thiss!42052)) lt!1931980)))

(declare-fun b!4769056 () Bool)

(assert (=> b!4769056 (= e!2976863 (= (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931979) (Some!12708 lt!1931974)))))

(declare-fun b!4769053 () Bool)

(declare-fun res!2022712 () Bool)

(assert (=> b!4769053 (=> (not res!2022712) (not e!2976862))))

(assert (=> b!4769053 (= res!2022712 (allKeysSameHashInMap!2026 lt!1931818 (hashF!12487 thiss!42052)))))

(assert (= (and d!1524454 res!2022710) b!4769053))

(assert (= (and b!4769053 res!2022712) b!4769054))

(assert (= (and b!4769054 res!2022711) b!4769055))

(assert (= (and b!4769055 res!2022713) b!4769056))

(declare-fun m!5740820 () Bool)

(assert (=> d!1524454 m!5740820))

(declare-fun m!5740822 () Bool)

(assert (=> d!1524454 m!5740822))

(assert (=> d!1524454 m!5740820))

(assert (=> b!4769055 m!5740594))

(assert (=> b!4769055 m!5740786))

(assert (=> b!4769055 m!5740594))

(assert (=> b!4769055 m!5740744))

(assert (=> b!4769055 m!5740786))

(assert (=> b!4769055 m!5740780))

(declare-fun m!5740824 () Bool)

(assert (=> b!4769055 m!5740824))

(assert (=> b!4769055 m!5740610))

(assert (=> b!4769055 m!5740594))

(assert (=> b!4769055 m!5740780))

(assert (=> b!4769055 m!5740782))

(declare-fun m!5740826 () Bool)

(assert (=> b!4769055 m!5740826))

(declare-fun m!5740828 () Bool)

(assert (=> b!4769055 m!5740828))

(declare-fun m!5740830 () Bool)

(assert (=> b!4769055 m!5740830))

(assert (=> b!4769053 m!5740792))

(declare-fun m!5740832 () Bool)

(assert (=> b!4769056 m!5740832))

(assert (=> b!4769054 m!5740628))

(assert (=> b!4769054 m!5740628))

(assert (=> b!4769054 m!5740774))

(assert (=> b!4768882 d!1524454))

(declare-fun b!4769059 () Bool)

(declare-fun e!2976865 () Option!12707)

(assert (=> b!4769059 (= e!2976865 (getValueByKey!2202 (t!361071 (toList!6313 (map!12013 thiss!42052))) key!1776))))

(declare-fun b!4769060 () Bool)

(assert (=> b!4769060 (= e!2976865 None!12706)))

(declare-fun b!4769058 () Bool)

(declare-fun e!2976864 () Option!12707)

(assert (=> b!4769058 (= e!2976864 e!2976865)))

(declare-fun c!813527 () Bool)

(assert (=> b!4769058 (= c!813527 (and ((_ is Cons!53513) (toList!6313 (map!12013 thiss!42052))) (not (= (_1!31085 (h!59925 (toList!6313 (map!12013 thiss!42052)))) key!1776))))))

(declare-fun d!1524456 () Bool)

(declare-fun c!813526 () Bool)

(assert (=> d!1524456 (= c!813526 (and ((_ is Cons!53513) (toList!6313 (map!12013 thiss!42052))) (= (_1!31085 (h!59925 (toList!6313 (map!12013 thiss!42052)))) key!1776)))))

(assert (=> d!1524456 (= (getValueByKey!2202 (toList!6313 (map!12013 thiss!42052)) key!1776) e!2976864)))

(declare-fun b!4769057 () Bool)

(assert (=> b!4769057 (= e!2976864 (Some!12706 (_2!31085 (h!59925 (toList!6313 (map!12013 thiss!42052))))))))

(assert (= (and d!1524456 c!813526) b!4769057))

(assert (= (and d!1524456 (not c!813526)) b!4769058))

(assert (= (and b!4769058 c!813527) b!4769059))

(assert (= (and b!4769058 (not c!813527)) b!4769060))

(declare-fun m!5740834 () Bool)

(assert (=> b!4769059 m!5740834))

(assert (=> b!4768882 d!1524456))

(declare-fun d!1524458 () Bool)

(assert (=> d!1524458 (dynLambda!21961 lambda!224737 lt!1931806)))

(declare-fun lt!1931981 () Unit!138345)

(assert (=> d!1524458 (= lt!1931981 (choose!34011 (toList!6314 lt!1931818) lambda!224737 lt!1931806))))

(declare-fun e!2976866 () Bool)

(assert (=> d!1524458 e!2976866))

(declare-fun res!2022714 () Bool)

(assert (=> d!1524458 (=> (not res!2022714) (not e!2976866))))

(assert (=> d!1524458 (= res!2022714 (forall!11882 (toList!6314 lt!1931818) lambda!224737))))

(assert (=> d!1524458 (= (forallContained!3871 (toList!6314 lt!1931818) lambda!224737 lt!1931806) lt!1931981)))

(declare-fun b!4769061 () Bool)

(assert (=> b!4769061 (= e!2976866 (contains!16874 (toList!6314 lt!1931818) lt!1931806))))

(assert (= (and d!1524458 res!2022714) b!4769061))

(declare-fun b_lambda!184527 () Bool)

(assert (=> (not b_lambda!184527) (not d!1524458)))

(declare-fun m!5740836 () Bool)

(assert (=> d!1524458 m!5740836))

(declare-fun m!5740838 () Bool)

(assert (=> d!1524458 m!5740838))

(assert (=> d!1524458 m!5740818))

(assert (=> b!4769061 m!5740580))

(assert (=> b!4768882 d!1524458))

(declare-fun d!1524460 () Bool)

(declare-fun lt!1931984 () ListMap!5809)

(assert (=> d!1524460 (invariantList!1665 (toList!6313 lt!1931984))))

(assert (=> d!1524460 (= lt!1931984 (extractMap!2156 (toList!6314 (map!12014 (v!47756 (underlying!10090 thiss!42052))))))))

(assert (=> d!1524460 (valid!3947 thiss!42052)))

(assert (=> d!1524460 (= (map!12013 thiss!42052) lt!1931984)))

(declare-fun bs!1149360 () Bool)

(assert (= bs!1149360 d!1524460))

(declare-fun m!5740840 () Bool)

(assert (=> bs!1149360 m!5740840))

(assert (=> bs!1149360 m!5740608))

(assert (=> bs!1149360 m!5740666))

(assert (=> bs!1149360 m!5740624))

(assert (=> b!4768882 d!1524460))

(declare-fun d!1524462 () Bool)

(assert (=> d!1524462 (contains!16874 (toList!6314 lt!1931818) (tuple2!55585 lt!1931811 lt!1931809))))

(declare-fun lt!1931987 () Unit!138345)

(declare-fun choose!34013 (ListLongMap!4711 (_ BitVec 64) List!53637) Unit!138345)

(assert (=> d!1524462 (= lt!1931987 (choose!34013 lt!1931818 lt!1931811 lt!1931809))))

(assert (=> d!1524462 (contains!16875 lt!1931818 lt!1931811)))

(assert (=> d!1524462 (= (lemmaGetValueImpliesTupleContained!445 lt!1931818 lt!1931811 lt!1931809) lt!1931987)))

(declare-fun bs!1149361 () Bool)

(assert (= bs!1149361 d!1524462))

(declare-fun m!5740842 () Bool)

(assert (=> bs!1149361 m!5740842))

(declare-fun m!5740844 () Bool)

(assert (=> bs!1149361 m!5740844))

(assert (=> bs!1149361 m!5740588))

(assert (=> b!4768882 d!1524462))

(declare-fun d!1524464 () Bool)

(declare-fun hash!4583 (Hashable!6602 K!14994) (_ BitVec 64))

(assert (=> d!1524464 (= (hash!4582 (hashF!12487 thiss!42052) key!1776) (hash!4583 (hashF!12487 thiss!42052) key!1776))))

(declare-fun bs!1149362 () Bool)

(assert (= bs!1149362 d!1524464))

(declare-fun m!5740846 () Bool)

(assert (=> bs!1149362 m!5740846))

(assert (=> b!4768882 d!1524464))

(declare-fun d!1524466 () Bool)

(declare-fun e!2976872 () Bool)

(assert (=> d!1524466 e!2976872))

(declare-fun res!2022717 () Bool)

(assert (=> d!1524466 (=> res!2022717 e!2976872)))

(declare-fun lt!1931998 () Bool)

(assert (=> d!1524466 (= res!2022717 (not lt!1931998))))

(declare-fun lt!1931997 () Bool)

(assert (=> d!1524466 (= lt!1931998 lt!1931997)))

(declare-fun lt!1931999 () Unit!138345)

(declare-fun e!2976871 () Unit!138345)

(assert (=> d!1524466 (= lt!1931999 e!2976871)))

(declare-fun c!813530 () Bool)

(assert (=> d!1524466 (= c!813530 lt!1931997)))

(assert (=> d!1524466 (= lt!1931997 (containsKey!3675 (toList!6314 lt!1931818) lt!1931811))))

(assert (=> d!1524466 (= (contains!16875 lt!1931818 lt!1931811) lt!1931998)))

(declare-fun b!4769069 () Bool)

(declare-fun lt!1931996 () Unit!138345)

(assert (=> b!4769069 (= e!2976871 lt!1931996)))

(assert (=> b!4769069 (= lt!1931996 (lemmaContainsKeyImpliesGetValueByKeyDefined!1999 (toList!6314 lt!1931818) lt!1931811))))

(assert (=> b!4769069 (isDefined!9859 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811))))

(declare-fun b!4769070 () Bool)

(declare-fun Unit!138354 () Unit!138345)

(assert (=> b!4769070 (= e!2976871 Unit!138354)))

(declare-fun b!4769071 () Bool)

(assert (=> b!4769071 (= e!2976872 (isDefined!9859 (getValueByKey!2203 (toList!6314 lt!1931818) lt!1931811)))))

(assert (= (and d!1524466 c!813530) b!4769069))

(assert (= (and d!1524466 (not c!813530)) b!4769070))

(assert (= (and d!1524466 (not res!2022717)) b!4769071))

(assert (=> d!1524466 m!5740652))

(assert (=> b!4769069 m!5740634))

(assert (=> b!4769069 m!5740636))

(assert (=> b!4769069 m!5740636))

(assert (=> b!4769069 m!5740638))

(assert (=> b!4769071 m!5740636))

(assert (=> b!4769071 m!5740636))

(assert (=> b!4769071 m!5740638))

(assert (=> b!4768882 d!1524466))

(declare-fun tp!1355906 () Bool)

(declare-fun tp_is_empty!32487 () Bool)

(declare-fun b!4769076 () Bool)

(declare-fun e!2976875 () Bool)

(assert (=> b!4769076 (= e!2976875 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355906))))

(assert (=> b!4768886 (= tp!1355901 e!2976875)))

(assert (= (and b!4768886 ((_ is Cons!53513) mapDefault!21919)) b!4769076))

(declare-fun e!2976876 () Bool)

(declare-fun b!4769077 () Bool)

(declare-fun tp!1355907 () Bool)

(assert (=> b!4769077 (= e!2976876 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355907))))

(assert (=> b!4768885 (= tp!1355898 e!2976876)))

(assert (= (and b!4768885 ((_ is Cons!53513) (zeroValue!5229 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052))))))) b!4769077))

(declare-fun b!4769078 () Bool)

(declare-fun tp!1355908 () Bool)

(declare-fun e!2976877 () Bool)

(assert (=> b!4769078 (= e!2976877 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355908))))

(assert (=> b!4768885 (= tp!1355900 e!2976877)))

(assert (= (and b!4768885 ((_ is Cons!53513) (minValue!5229 (v!47755 (underlying!10089 (v!47756 (underlying!10090 thiss!42052))))))) b!4769078))

(declare-fun e!2976882 () Bool)

(declare-fun tp!1355916 () Bool)

(declare-fun b!4769086 () Bool)

(assert (=> b!4769086 (= e!2976882 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355916))))

(declare-fun mapIsEmpty!21922 () Bool)

(declare-fun mapRes!21922 () Bool)

(assert (=> mapIsEmpty!21922 mapRes!21922))

(declare-fun tp!1355917 () Bool)

(declare-fun b!4769085 () Bool)

(declare-fun e!2976883 () Bool)

(assert (=> b!4769085 (= e!2976883 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355917))))

(declare-fun condMapEmpty!21922 () Bool)

(declare-fun mapDefault!21922 () List!53637)

(assert (=> mapNonEmpty!21919 (= condMapEmpty!21922 (= mapRest!21919 ((as const (Array (_ BitVec 32) List!53637)) mapDefault!21922)))))

(assert (=> mapNonEmpty!21919 (= tp!1355902 (and e!2976882 mapRes!21922))))

(declare-fun mapNonEmpty!21922 () Bool)

(declare-fun tp!1355915 () Bool)

(assert (=> mapNonEmpty!21922 (= mapRes!21922 (and tp!1355915 e!2976883))))

(declare-fun mapRest!21922 () (Array (_ BitVec 32) List!53637))

(declare-fun mapKey!21922 () (_ BitVec 32))

(declare-fun mapValue!21922 () List!53637)

(assert (=> mapNonEmpty!21922 (= mapRest!21919 (store mapRest!21922 mapKey!21922 mapValue!21922))))

(assert (= (and mapNonEmpty!21919 condMapEmpty!21922) mapIsEmpty!21922))

(assert (= (and mapNonEmpty!21919 (not condMapEmpty!21922)) mapNonEmpty!21922))

(assert (= (and mapNonEmpty!21922 ((_ is Cons!53513) mapValue!21922)) b!4769085))

(assert (= (and mapNonEmpty!21919 ((_ is Cons!53513) mapDefault!21922)) b!4769086))

(declare-fun m!5740848 () Bool)

(assert (=> mapNonEmpty!21922 m!5740848))

(declare-fun e!2976884 () Bool)

(declare-fun b!4769087 () Bool)

(declare-fun tp!1355918 () Bool)

(assert (=> b!4769087 (= e!2976884 (and tp_is_empty!32485 tp_is_empty!32487 tp!1355918))))

(assert (=> mapNonEmpty!21919 (= tp!1355903 e!2976884)))

(assert (= (and mapNonEmpty!21919 ((_ is Cons!53513) mapValue!21919)) b!4769087))

(declare-fun b_lambda!184529 () Bool)

(assert (= b_lambda!184525 (or b!4768882 b_lambda!184529)))

(declare-fun bs!1149363 () Bool)

(declare-fun d!1524468 () Bool)

(assert (= bs!1149363 (and d!1524468 b!4768882)))

(assert (=> bs!1149363 (= (dynLambda!21961 lambda!224737 lt!1931802) (noDuplicateKeys!2259 (_2!31086 lt!1931802)))))

(declare-fun m!5740850 () Bool)

(assert (=> bs!1149363 m!5740850))

(assert (=> d!1524452 d!1524468))

(declare-fun b_lambda!184531 () Bool)

(assert (= b_lambda!184523 (or (and b!4768885 b_free!129707) b_lambda!184531)))

(declare-fun b_lambda!184533 () Bool)

(assert (= b_lambda!184527 (or b!4768882 b_lambda!184533)))

(declare-fun bs!1149364 () Bool)

(declare-fun d!1524470 () Bool)

(assert (= bs!1149364 (and d!1524470 b!4768882)))

(assert (=> bs!1149364 (= (dynLambda!21961 lambda!224737 lt!1931806) (noDuplicateKeys!2259 (_2!31086 lt!1931806)))))

(declare-fun m!5740852 () Bool)

(assert (=> bs!1149364 m!5740852))

(assert (=> d!1524458 d!1524470))

(check-sat (not b!4769039) (not bm!334338) (not d!1524446) (not d!1524466) (not d!1524428) (not d!1524462) (not b_next!130497) (not b!4769085) (not d!1524426) (not b!4768989) (not mapNonEmpty!21922) (not d!1524444) (not d!1524442) (not d!1524412) (not b!4769077) (not b!4768958) (not b!4769038) (not b_lambda!184533) (not d!1524440) (not b!4769087) (not b!4768994) (not b!4768895) (not b!4769030) (not d!1524404) (not bm!334335) (not b!4769061) (not d!1524434) (not d!1524410) (not b!4769008) (not b!4768937) (not b!4768993) tp_is_empty!32487 (not b!4769034) (not b!4768914) (not d!1524452) (not b!4768910) (not b!4768971) (not b!4768991) (not b!4769069) (not d!1524418) (not b!4768964) (not b_lambda!184531) (not b!4769054) (not d!1524448) (not b!4769041) (not d!1524416) (not b!4769036) (not b!4769003) (not b!4769055) (not b!4769007) (not b!4769086) (not d!1524460) (not bm!334337) (not b_lambda!184529) (not b!4769035) (not bm!334336) (not b!4768940) (not d!1524432) b_and!341443 (not bm!334334) (not b!4769059) (not b!4769056) (not b!4769005) (not b!4769033) (not bs!1149363) (not b!4769078) (not b!4769044) (not b!4768947) b_and!341441 (not b!4769071) (not d!1524454) (not b!4768899) tp_is_empty!32485 (not b!4769031) (not b!4769037) (not b!4768995) (not b!4768946) (not d!1524458) (not bs!1149364) (not b!4769053) (not bm!334339) (not d!1524450) (not b!4769009) (not b!4769032) (not b!4769076) (not b!4769000) (not b_next!130499) (not d!1524438) (not tb!257487) (not d!1524464) (not b!4768941) (not b!4768896))
(check-sat b_and!341441 b_and!341443 (not b_next!130499) (not b_next!130497))
