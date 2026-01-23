; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487466 () Bool)

(assert start!487466)

(declare-fun b!4765684 () Bool)

(declare-fun b_free!129603 () Bool)

(declare-fun b_next!130393 () Bool)

(assert (=> b!4765684 (= b_free!129603 (not b_next!130393))))

(declare-fun tp!1355212 () Bool)

(declare-fun b_and!341303 () Bool)

(assert (=> b!4765684 (= tp!1355212 b_and!341303)))

(declare-fun b!4765679 () Bool)

(declare-fun b_free!129605 () Bool)

(declare-fun b_next!130395 () Bool)

(assert (=> b!4765679 (= b_free!129605 (not b_next!130395))))

(declare-fun tp!1355216 () Bool)

(declare-fun b_and!341305 () Bool)

(assert (=> b!4765679 (= tp!1355216 b_and!341305)))

(declare-fun res!2021197 () Bool)

(declare-fun e!2974508 () Bool)

(assert (=> start!487466 (=> (not res!2021197) (not e!2974508))))

(declare-datatypes ((K!14929 0))(
  ( (K!14930 (val!20249 Int)) )
))
(declare-datatypes ((V!15175 0))(
  ( (V!15176 (val!20250 Int)) )
))
(declare-datatypes ((tuple2!55488 0))(
  ( (tuple2!55489 (_1!31038 K!14929) (_2!31038 V!15175)) )
))
(declare-datatypes ((array!17970 0))(
  ( (array!17971 (arr!8015 (Array (_ BitVec 32) (_ BitVec 64))) (size!36245 (_ BitVec 32))) )
))
(declare-datatypes ((List!53588 0))(
  ( (Nil!53464) (Cons!53464 (h!59876 tuple2!55488) (t!361002 List!53588)) )
))
(declare-datatypes ((array!17972 0))(
  ( (array!17973 (arr!8016 (Array (_ BitVec 32) List!53588)) (size!36246 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6576 0))(
  ( (HashableExt!6575 (__x!32493 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9830 0))(
  ( (LongMapFixedSize!9831 (defaultEntry!5333 Int) (mask!14668 (_ BitVec 32)) (extraKeys!5190 (_ BitVec 32)) (zeroValue!5203 List!53588) (minValue!5203 List!53588) (_size!9855 (_ BitVec 32)) (_keys!5257 array!17970) (_values!5228 array!17972) (_vacant!4980 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19425 0))(
  ( (Cell!19426 (v!47590 LongMapFixedSize!9830)) )
))
(declare-datatypes ((MutLongMap!4915 0))(
  ( (LongMap!4915 (underlying!10037 Cell!19425)) (MutLongMapExt!4914 (__x!32494 Int)) )
))
(declare-datatypes ((Cell!19427 0))(
  ( (Cell!19428 (v!47591 MutLongMap!4915)) )
))
(declare-datatypes ((MutableMap!4799 0))(
  ( (MutableMapExt!4798 (__x!32495 Int)) (HashMap!4799 (underlying!10038 Cell!19427) (hashF!12401 Hashable!6576) (_size!9856 (_ BitVec 32)) (defaultValue!4970 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4799)

(get-info :version)

(assert (=> start!487466 (= res!2021197 ((_ is HashMap!4799) thiss!42052))))

(assert (=> start!487466 e!2974508))

(declare-fun e!2974501 () Bool)

(assert (=> start!487466 e!2974501))

(declare-fun tp_is_empty!32417 () Bool)

(assert (=> start!487466 tp_is_empty!32417))

(declare-fun b!4765671 () Bool)

(declare-fun e!2974503 () Bool)

(assert (=> b!4765671 (= e!2974508 e!2974503)))

(declare-fun res!2021196 () Bool)

(assert (=> b!4765671 (=> (not res!2021196) (not e!2974503))))

(declare-datatypes ((tuple2!55490 0))(
  ( (tuple2!55491 (_1!31039 (_ BitVec 64)) (_2!31039 List!53588)) )
))
(declare-datatypes ((List!53589 0))(
  ( (Nil!53465) (Cons!53465 (h!59877 tuple2!55490) (t!361003 List!53589)) )
))
(declare-datatypes ((ListLongMap!4669 0))(
  ( (ListLongMap!4670 (toList!6272 List!53589)) )
))
(declare-fun lt!1928369 () ListLongMap!4669)

(declare-fun lambda!224193 () Int)

(declare-fun forall!11871 (List!53589 Int) Bool)

(assert (=> b!4765671 (= res!2021196 (forall!11871 (toList!6272 lt!1928369) lambda!224193))))

(declare-datatypes ((Option!12648 0))(
  ( (None!12647) (Some!12647 (v!47592 tuple2!55488)) )
))
(declare-fun lt!1928364 () Option!12648)

(declare-fun lt!1928365 () List!53588)

(declare-fun key!1776 () K!14929)

(declare-fun getPair!637 (List!53588 K!14929) Option!12648)

(assert (=> b!4765671 (= lt!1928364 (getPair!637 lt!1928365 key!1776))))

(declare-fun lt!1928366 () tuple2!55490)

(declare-datatypes ((Unit!138173 0))(
  ( (Unit!138174) )
))
(declare-fun lt!1928360 () Unit!138173)

(declare-fun forallContained!3853 (List!53589 Int tuple2!55490) Unit!138173)

(assert (=> b!4765671 (= lt!1928360 (forallContained!3853 (toList!6272 lt!1928369) lambda!224193 lt!1928366))))

(declare-fun lt!1928361 () Unit!138173)

(declare-fun e!2974505 () Unit!138173)

(assert (=> b!4765671 (= lt!1928361 e!2974505)))

(declare-fun c!812911 () Bool)

(declare-fun contains!16795 (List!53589 tuple2!55490) Bool)

(assert (=> b!4765671 (= c!812911 (not (contains!16795 (toList!6272 lt!1928369) lt!1928366)))))

(declare-fun lt!1928363 () (_ BitVec 64))

(assert (=> b!4765671 (= lt!1928366 (tuple2!55491 lt!1928363 lt!1928365))))

(declare-fun apply!12607 (MutLongMap!4915 (_ BitVec 64)) List!53588)

(assert (=> b!4765671 (= lt!1928365 (apply!12607 (v!47591 (underlying!10038 thiss!42052)) lt!1928363))))

(declare-fun map!11965 (MutLongMap!4915) ListLongMap!4669)

(assert (=> b!4765671 (= lt!1928369 (map!11965 (v!47591 (underlying!10038 thiss!42052))))))

(declare-fun hash!4558 (Hashable!6576 K!14929) (_ BitVec 64))

(assert (=> b!4765671 (= lt!1928363 (hash!4558 (hashF!12401 thiss!42052) key!1776))))

(declare-fun b!4765672 () Bool)

(declare-fun res!2021200 () Bool)

(assert (=> b!4765672 (=> (not res!2021200) (not e!2974503))))

(declare-datatypes ((ListMap!5769 0))(
  ( (ListMap!5770 (toList!6273 List!53588)) )
))
(declare-fun contains!16796 (ListMap!5769 K!14929) Bool)

(declare-fun extractMap!2137 (List!53589) ListMap!5769)

(assert (=> b!4765672 (= res!2021200 (contains!16796 (extractMap!2137 (toList!6272 lt!1928369)) key!1776))))

(declare-fun b!4765673 () Bool)

(declare-fun e!2974506 () Bool)

(assert (=> b!4765673 (= e!2974506 true)))

(declare-fun lt!1928353 () tuple2!55490)

(declare-fun lt!1928367 () Unit!138173)

(assert (=> b!4765673 (= lt!1928367 (forallContained!3853 (toList!6272 lt!1928369) lambda!224193 lt!1928353))))

(declare-fun lt!1928355 () Unit!138173)

(assert (=> b!4765673 (= lt!1928355 (forallContained!3853 (toList!6272 lt!1928369) lambda!224193 lt!1928353))))

(declare-fun mapIsEmpty!21815 () Bool)

(declare-fun mapRes!21815 () Bool)

(assert (=> mapIsEmpty!21815 mapRes!21815))

(declare-fun b!4765674 () Bool)

(declare-fun res!2021199 () Bool)

(assert (=> b!4765674 (=> res!2021199 e!2974506)))

(assert (=> b!4765674 (= res!2021199 (not (forall!11871 (toList!6272 lt!1928369) lambda!224193)))))

(declare-fun b!4765675 () Bool)

(assert (=> b!4765675 (= e!2974503 (not e!2974506))))

(declare-fun res!2021202 () Bool)

(assert (=> b!4765675 (=> res!2021202 e!2974506)))

(declare-fun lt!1928372 () Option!12648)

(declare-fun get!18008 (Option!12648) tuple2!55488)

(assert (=> b!4765675 (= res!2021202 (not (= (_2!31038 (get!18008 lt!1928372)) (_2!31038 (get!18008 lt!1928364)))))))

(declare-fun isDefined!9821 (Option!12648) Bool)

(assert (=> b!4765675 (isDefined!9821 lt!1928372)))

(declare-fun lt!1928368 () List!53588)

(assert (=> b!4765675 (= lt!1928372 (getPair!637 lt!1928368 key!1776))))

(declare-fun lt!1928362 () Unit!138173)

(assert (=> b!4765675 (= lt!1928362 (forallContained!3853 (toList!6272 lt!1928369) lambda!224193 lt!1928353))))

(declare-fun lt!1928371 () Unit!138173)

(declare-fun lemmaInGenMapThenGetPairDefined!420 (ListLongMap!4669 K!14929 Hashable!6576) Unit!138173)

(assert (=> b!4765675 (= lt!1928371 (lemmaInGenMapThenGetPairDefined!420 lt!1928369 key!1776 (hashF!12401 thiss!42052)))))

(declare-fun lt!1928354 () Unit!138173)

(assert (=> b!4765675 (= lt!1928354 (forallContained!3853 (toList!6272 lt!1928369) lambda!224193 lt!1928353))))

(assert (=> b!4765675 (contains!16795 (toList!6272 lt!1928369) lt!1928353)))

(assert (=> b!4765675 (= lt!1928353 (tuple2!55491 lt!1928363 lt!1928368))))

(declare-fun lt!1928358 () Unit!138173)

(declare-fun lemmaGetValueImpliesTupleContained!429 (ListLongMap!4669 (_ BitVec 64) List!53588) Unit!138173)

(assert (=> b!4765675 (= lt!1928358 (lemmaGetValueImpliesTupleContained!429 lt!1928369 lt!1928363 lt!1928368))))

(declare-fun apply!12608 (ListLongMap!4669 (_ BitVec 64)) List!53588)

(assert (=> b!4765675 (= lt!1928368 (apply!12608 lt!1928369 lt!1928363))))

(declare-fun contains!16797 (ListLongMap!4669 (_ BitVec 64)) Bool)

(assert (=> b!4765675 (contains!16797 lt!1928369 lt!1928363)))

(declare-fun lt!1928357 () Unit!138173)

(declare-fun lemmaInGenMapThenLongMapContainsHash!830 (ListLongMap!4669 K!14929 Hashable!6576) Unit!138173)

(assert (=> b!4765675 (= lt!1928357 (lemmaInGenMapThenLongMapContainsHash!830 lt!1928369 key!1776 (hashF!12401 thiss!42052)))))

(declare-fun b!4765676 () Bool)

(declare-fun e!2974509 () Bool)

(declare-fun e!2974500 () Bool)

(assert (=> b!4765676 (= e!2974509 e!2974500)))

(declare-fun b!4765677 () Bool)

(declare-fun e!2974507 () Bool)

(declare-fun tp!1355213 () Bool)

(assert (=> b!4765677 (= e!2974507 (and tp!1355213 mapRes!21815))))

(declare-fun condMapEmpty!21815 () Bool)

(declare-fun mapDefault!21815 () List!53588)

(assert (=> b!4765677 (= condMapEmpty!21815 (= (arr!8016 (_values!5228 (v!47590 (underlying!10037 (v!47591 (underlying!10038 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53588)) mapDefault!21815)))))

(declare-fun b!4765678 () Bool)

(declare-fun Unit!138175 () Unit!138173)

(assert (=> b!4765678 (= e!2974505 Unit!138175)))

(declare-fun lt!1928370 () Unit!138173)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1978 (List!53589 (_ BitVec 64)) Unit!138173)

(assert (=> b!4765678 (= lt!1928370 (lemmaContainsKeyImpliesGetValueByKeyDefined!1978 (toList!6272 lt!1928369) lt!1928363))))

(declare-datatypes ((Option!12649 0))(
  ( (None!12648) (Some!12648 (v!47593 List!53588)) )
))
(declare-fun isDefined!9822 (Option!12649) Bool)

(declare-fun getValueByKey!2164 (List!53589 (_ BitVec 64)) Option!12649)

(assert (=> b!4765678 (isDefined!9822 (getValueByKey!2164 (toList!6272 lt!1928369) lt!1928363))))

(declare-fun lt!1928359 () Unit!138173)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!922 (List!53589 (_ BitVec 64) List!53588) Unit!138173)

(assert (=> b!4765678 (= lt!1928359 (lemmaGetValueByKeyImpliesContainsTuple!922 (toList!6272 lt!1928369) lt!1928363 lt!1928365))))

(assert (=> b!4765678 false))

(declare-fun e!2974504 () Bool)

(assert (=> b!4765679 (= e!2974501 (and e!2974504 tp!1355216))))

(declare-fun b!4765680 () Bool)

(declare-fun res!2021201 () Bool)

(assert (=> b!4765680 (=> (not res!2021201) (not e!2974508))))

(declare-fun contains!16798 (MutableMap!4799 K!14929) Bool)

(assert (=> b!4765680 (= res!2021201 (contains!16798 thiss!42052 key!1776))))

(declare-fun b!4765681 () Bool)

(declare-fun e!2974502 () Bool)

(assert (=> b!4765681 (= e!2974502 e!2974509)))

(declare-fun b!4765682 () Bool)

(declare-fun lt!1928356 () MutLongMap!4915)

(assert (=> b!4765682 (= e!2974504 (and e!2974502 ((_ is LongMap!4915) lt!1928356)))))

(assert (=> b!4765682 (= lt!1928356 (v!47591 (underlying!10038 thiss!42052)))))

(declare-fun b!4765683 () Bool)

(declare-fun res!2021198 () Bool)

(assert (=> b!4765683 (=> (not res!2021198) (not e!2974503))))

(declare-fun allKeysSameHashInMap!2017 (ListLongMap!4669 Hashable!6576) Bool)

(assert (=> b!4765683 (= res!2021198 (allKeysSameHashInMap!2017 lt!1928369 (hashF!12401 thiss!42052)))))

(declare-fun mapNonEmpty!21815 () Bool)

(declare-fun tp!1355217 () Bool)

(declare-fun tp!1355215 () Bool)

(assert (=> mapNonEmpty!21815 (= mapRes!21815 (and tp!1355217 tp!1355215))))

(declare-fun mapRest!21815 () (Array (_ BitVec 32) List!53588))

(declare-fun mapKey!21815 () (_ BitVec 32))

(declare-fun mapValue!21815 () List!53588)

(assert (=> mapNonEmpty!21815 (= (arr!8016 (_values!5228 (v!47590 (underlying!10037 (v!47591 (underlying!10038 thiss!42052)))))) (store mapRest!21815 mapKey!21815 mapValue!21815))))

(declare-fun tp!1355214 () Bool)

(declare-fun tp!1355211 () Bool)

(declare-fun array_inv!5767 (array!17970) Bool)

(declare-fun array_inv!5768 (array!17972) Bool)

(assert (=> b!4765684 (= e!2974500 (and tp!1355212 tp!1355214 tp!1355211 (array_inv!5767 (_keys!5257 (v!47590 (underlying!10037 (v!47591 (underlying!10038 thiss!42052)))))) (array_inv!5768 (_values!5228 (v!47590 (underlying!10037 (v!47591 (underlying!10038 thiss!42052)))))) e!2974507))))

(declare-fun b!4765685 () Bool)

(declare-fun res!2021203 () Bool)

(assert (=> b!4765685 (=> (not res!2021203) (not e!2974508))))

(declare-fun valid!3913 (MutableMap!4799) Bool)

(assert (=> b!4765685 (= res!2021203 (valid!3913 thiss!42052))))

(declare-fun b!4765686 () Bool)

(declare-fun Unit!138176 () Unit!138173)

(assert (=> b!4765686 (= e!2974505 Unit!138176)))

(assert (= (and start!487466 res!2021197) b!4765685))

(assert (= (and b!4765685 res!2021203) b!4765680))

(assert (= (and b!4765680 res!2021201) b!4765671))

(assert (= (and b!4765671 c!812911) b!4765678))

(assert (= (and b!4765671 (not c!812911)) b!4765686))

(assert (= (and b!4765671 res!2021196) b!4765683))

(assert (= (and b!4765683 res!2021198) b!4765672))

(assert (= (and b!4765672 res!2021200) b!4765675))

(assert (= (and b!4765675 (not res!2021202)) b!4765674))

(assert (= (and b!4765674 (not res!2021199)) b!4765673))

(assert (= (and b!4765677 condMapEmpty!21815) mapIsEmpty!21815))

(assert (= (and b!4765677 (not condMapEmpty!21815)) mapNonEmpty!21815))

(assert (= b!4765684 b!4765677))

(assert (= b!4765676 b!4765684))

(assert (= b!4765681 b!4765676))

(assert (= (and b!4765682 ((_ is LongMap!4915) (v!47591 (underlying!10038 thiss!42052)))) b!4765681))

(assert (= b!4765679 b!4765682))

(assert (= (and start!487466 ((_ is HashMap!4799) thiss!42052)) b!4765679))

(declare-fun m!5736194 () Bool)

(assert (=> b!4765684 m!5736194))

(declare-fun m!5736196 () Bool)

(assert (=> b!4765684 m!5736196))

(declare-fun m!5736198 () Bool)

(assert (=> b!4765680 m!5736198))

(declare-fun m!5736200 () Bool)

(assert (=> mapNonEmpty!21815 m!5736200))

(declare-fun m!5736202 () Bool)

(assert (=> b!4765673 m!5736202))

(assert (=> b!4765673 m!5736202))

(declare-fun m!5736204 () Bool)

(assert (=> b!4765674 m!5736204))

(declare-fun m!5736206 () Bool)

(assert (=> b!4765683 m!5736206))

(declare-fun m!5736208 () Bool)

(assert (=> b!4765678 m!5736208))

(declare-fun m!5736210 () Bool)

(assert (=> b!4765678 m!5736210))

(assert (=> b!4765678 m!5736210))

(declare-fun m!5736212 () Bool)

(assert (=> b!4765678 m!5736212))

(declare-fun m!5736214 () Bool)

(assert (=> b!4765678 m!5736214))

(declare-fun m!5736216 () Bool)

(assert (=> b!4765672 m!5736216))

(assert (=> b!4765672 m!5736216))

(declare-fun m!5736218 () Bool)

(assert (=> b!4765672 m!5736218))

(declare-fun m!5736220 () Bool)

(assert (=> b!4765685 m!5736220))

(declare-fun m!5736222 () Bool)

(assert (=> b!4765671 m!5736222))

(declare-fun m!5736224 () Bool)

(assert (=> b!4765671 m!5736224))

(declare-fun m!5736226 () Bool)

(assert (=> b!4765671 m!5736226))

(assert (=> b!4765671 m!5736204))

(declare-fun m!5736228 () Bool)

(assert (=> b!4765671 m!5736228))

(declare-fun m!5736230 () Bool)

(assert (=> b!4765671 m!5736230))

(declare-fun m!5736232 () Bool)

(assert (=> b!4765671 m!5736232))

(declare-fun m!5736234 () Bool)

(assert (=> b!4765675 m!5736234))

(declare-fun m!5736236 () Bool)

(assert (=> b!4765675 m!5736236))

(declare-fun m!5736238 () Bool)

(assert (=> b!4765675 m!5736238))

(declare-fun m!5736240 () Bool)

(assert (=> b!4765675 m!5736240))

(assert (=> b!4765675 m!5736202))

(declare-fun m!5736242 () Bool)

(assert (=> b!4765675 m!5736242))

(assert (=> b!4765675 m!5736202))

(declare-fun m!5736244 () Bool)

(assert (=> b!4765675 m!5736244))

(declare-fun m!5736246 () Bool)

(assert (=> b!4765675 m!5736246))

(declare-fun m!5736248 () Bool)

(assert (=> b!4765675 m!5736248))

(declare-fun m!5736250 () Bool)

(assert (=> b!4765675 m!5736250))

(declare-fun m!5736252 () Bool)

(assert (=> b!4765675 m!5736252))

(check-sat (not b!4765680) (not b_next!130395) (not mapNonEmpty!21815) b_and!341305 (not b!4765671) b_and!341303 (not b!4765678) (not b!4765677) (not b!4765684) (not b!4765673) (not b!4765674) (not b!4765672) (not b!4765683) (not b_next!130393) (not b!4765675) tp_is_empty!32417 (not b!4765685))
(check-sat b_and!341305 b_and!341303 (not b_next!130395) (not b_next!130393))
