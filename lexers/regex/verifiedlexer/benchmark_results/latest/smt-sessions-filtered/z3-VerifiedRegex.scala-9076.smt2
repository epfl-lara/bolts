; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486462 () Bool)

(assert start!486462)

(declare-fun b!4756988 () Bool)

(declare-fun b_free!129159 () Bool)

(declare-fun b_next!129863 () Bool)

(assert (=> b!4756988 (= b_free!129159 (not b_next!129863))))

(declare-fun tp!1351215 () Bool)

(declare-fun b_and!340751 () Bool)

(assert (=> b!4756988 (= tp!1351215 b_and!340751)))

(declare-fun b!4756998 () Bool)

(declare-fun b_free!129161 () Bool)

(declare-fun b_next!129865 () Bool)

(assert (=> b!4756998 (= b_free!129161 (not b_next!129865))))

(declare-fun tp!1351211 () Bool)

(declare-fun b_and!340753 () Bool)

(assert (=> b!4756998 (= tp!1351211 b_and!340753)))

(declare-fun b!4756986 () Bool)

(declare-fun e!2967724 () Bool)

(declare-fun e!2967730 () Bool)

(assert (=> b!4756986 (= e!2967724 e!2967730)))

(declare-fun res!2018193 () Bool)

(assert (=> b!4756986 (=> (not res!2018193) (not e!2967730))))

(declare-datatypes ((C!26216 0))(
  ( (C!26217 (val!20096 Int)) )
))
(declare-datatypes ((Regex!13009 0))(
  ( (ElementMatch!13009 (c!811748 C!26216)) (Concat!21328 (regOne!26530 Regex!13009) (regTwo!26530 Regex!13009)) (EmptyExpr!13009) (Star!13009 (reg!13338 Regex!13009)) (EmptyLang!13009) (Union!13009 (regOne!26531 Regex!13009) (regTwo!26531 Regex!13009)) )
))
(declare-datatypes ((List!53330 0))(
  ( (Nil!53206) (Cons!53206 (h!59617 Regex!13009) (t!360674 List!53330)) )
))
(declare-datatypes ((Context!5798 0))(
  ( (Context!5799 (exprs!3399 List!53330)) )
))
(declare-datatypes ((array!17498 0))(
  ( (array!17499 (arr!7807 (Array (_ BitVec 32) (_ BitVec 64))) (size!35996 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6472 0))(
  ( (HashableExt!6471 (__x!32181 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55086 0))(
  ( (tuple2!55087 (_1!30837 (InoxSet Context!5798)) (_2!30837 Int)) )
))
(declare-datatypes ((tuple2!55088 0))(
  ( (tuple2!55089 (_1!30838 tuple2!55086) (_2!30838 Int)) )
))
(declare-datatypes ((List!53331 0))(
  ( (Nil!53207) (Cons!53207 (h!59618 tuple2!55088) (t!360675 List!53331)) )
))
(declare-datatypes ((List!53332 0))(
  ( (Nil!53208) (Cons!53208 (h!59619 C!26216) (t!360676 List!53332)) )
))
(declare-datatypes ((IArray!28961 0))(
  ( (IArray!28962 (innerList!14538 List!53332)) )
))
(declare-datatypes ((Conc!14450 0))(
  ( (Node!14450 (left!39022 Conc!14450) (right!39352 Conc!14450) (csize!29130 Int) (cheight!14661 Int)) (Leaf!23527 (xs!17756 IArray!28961) (csize!29131 Int)) (Empty!14450) )
))
(declare-datatypes ((BalanceConc!28390 0))(
  ( (BalanceConc!28391 (c!811749 Conc!14450)) )
))
(declare-datatypes ((array!17500 0))(
  ( (array!17501 (arr!7808 (Array (_ BitVec 32) List!53331)) (size!35997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9622 0))(
  ( (LongMapFixedSize!9623 (defaultEntry!5225 Int) (mask!14502 (_ BitVec 32)) (extraKeys!5081 (_ BitVec 32)) (zeroValue!5094 List!53331) (minValue!5094 List!53331) (_size!9647 (_ BitVec 32)) (_keys!5146 array!17498) (_values!5119 array!17500) (_vacant!4876 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19009 0))(
  ( (Cell!19010 (v!47278 LongMapFixedSize!9622)) )
))
(declare-datatypes ((MutLongMap!4811 0))(
  ( (LongMap!4811 (underlying!9829 Cell!19009)) (MutLongMapExt!4810 (__x!32182 Int)) )
))
(declare-datatypes ((Cell!19011 0))(
  ( (Cell!19012 (v!47279 MutLongMap!4811)) )
))
(declare-datatypes ((MutableMap!4695 0))(
  ( (MutableMapExt!4694 (__x!32183 Int)) (HashMap!4695 (underlying!9830 Cell!19011) (hashF!12282 Hashable!6472) (_size!9648 (_ BitVec 32)) (defaultValue!4866 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!588 0))(
  ( (CacheFindLongestMatch!589 (cache!4537 MutableMap!4695) (totalInput!4439 BalanceConc!28390)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!588)

(declare-fun lt!1923076 () tuple2!55086)

(declare-fun contains!16596 (MutableMap!4695 tuple2!55086) Bool)

(assert (=> b!4756986 (= res!2018193 (contains!16596 (cache!4537 thiss!28972) lt!1923076))))

(declare-fun z!490 () (InoxSet Context!5798))

(declare-fun from!930 () Int)

(assert (=> b!4756986 (= lt!1923076 (tuple2!55087 z!490 from!930))))

(declare-fun b!4756987 () Bool)

(declare-fun e!2967721 () Bool)

(declare-fun e!2967719 () Bool)

(assert (=> b!4756987 (= e!2967721 e!2967719)))

(declare-fun setIsEmpty!26887 () Bool)

(declare-fun setRes!26887 () Bool)

(assert (=> setIsEmpty!26887 setRes!26887))

(declare-fun e!2967729 () Bool)

(declare-fun e!2967718 () Bool)

(assert (=> b!4756988 (= e!2967729 (and e!2967718 tp!1351215))))

(declare-fun mapIsEmpty!21416 () Bool)

(declare-fun mapRes!21416 () Bool)

(assert (=> mapIsEmpty!21416 mapRes!21416))

(declare-fun b!4756989 () Bool)

(declare-fun e!2967727 () Bool)

(assert (=> b!4756989 (= e!2967719 e!2967727)))

(declare-fun b!4756990 () Bool)

(declare-fun e!2967728 () Bool)

(declare-fun tp!1351216 () Bool)

(assert (=> b!4756990 (= e!2967728 tp!1351216)))

(declare-fun b!4756991 () Bool)

(declare-fun e!2967722 () Bool)

(declare-fun tp!1351213 () Bool)

(assert (=> b!4756991 (= e!2967722 (and tp!1351213 mapRes!21416))))

(declare-fun condMapEmpty!21416 () Bool)

(declare-fun mapDefault!21416 () List!53331)

(assert (=> b!4756991 (= condMapEmpty!21416 (= (arr!7808 (_values!5119 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53331)) mapDefault!21416)))))

(declare-fun res!2018195 () Bool)

(assert (=> start!486462 (=> (not res!2018195) (not e!2967724))))

(declare-fun validCacheMapFindLongestMatch!100 (MutableMap!4695 BalanceConc!28390) Bool)

(assert (=> start!486462 (= res!2018195 (validCacheMapFindLongestMatch!100 (cache!4537 thiss!28972) (totalInput!4439 thiss!28972)))))

(assert (=> start!486462 e!2967724))

(declare-fun e!2967725 () Bool)

(declare-fun inv!68628 (CacheFindLongestMatch!588) Bool)

(assert (=> start!486462 (and (inv!68628 thiss!28972) e!2967725)))

(declare-fun condSetEmpty!26887 () Bool)

(assert (=> start!486462 (= condSetEmpty!26887 (= z!490 ((as const (Array Context!5798 Bool)) false)))))

(assert (=> start!486462 setRes!26887))

(assert (=> start!486462 true))

(declare-fun b!4756992 () Bool)

(get-info :version)

(assert (=> b!4756992 (= e!2967730 (not ((_ is HashMap!4695) (cache!4537 thiss!28972))))))

(declare-fun e!2967723 () Bool)

(assert (=> b!4756992 e!2967723))

(declare-fun res!2018192 () Bool)

(assert (=> b!4756992 (=> (not res!2018192) (not e!2967723))))

(assert (=> b!4756992 (= res!2018192 (>= from!930 0))))

(declare-datatypes ((Unit!137714 0))(
  ( (Unit!137715) )
))
(declare-fun lt!1923074 () Unit!137714)

(declare-fun lemmaIfInCacheThenValid!70 (CacheFindLongestMatch!588 (InoxSet Context!5798) Int BalanceConc!28390) Unit!137714)

(assert (=> b!4756992 (= lt!1923074 (lemmaIfInCacheThenValid!70 thiss!28972 z!490 from!930 (totalInput!4439 thiss!28972)))))

(declare-fun e!2967731 () Bool)

(declare-fun b!4756993 () Bool)

(declare-fun inv!68629 (BalanceConc!28390) Bool)

(assert (=> b!4756993 (= e!2967725 (and e!2967729 (inv!68629 (totalInput!4439 thiss!28972)) e!2967731))))

(declare-fun mapNonEmpty!21416 () Bool)

(declare-fun tp!1351218 () Bool)

(declare-fun tp!1351220 () Bool)

(assert (=> mapNonEmpty!21416 (= mapRes!21416 (and tp!1351218 tp!1351220))))

(declare-fun mapKey!21416 () (_ BitVec 32))

(declare-fun mapValue!21416 () List!53331)

(declare-fun mapRest!21416 () (Array (_ BitVec 32) List!53331))

(assert (=> mapNonEmpty!21416 (= (arr!7808 (_values!5119 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) (store mapRest!21416 mapKey!21416 mapValue!21416))))

(declare-fun tp!1351212 () Bool)

(declare-fun setElem!26887 () Context!5798)

(declare-fun setNonEmpty!26887 () Bool)

(declare-fun inv!68630 (Context!5798) Bool)

(assert (=> setNonEmpty!26887 (= setRes!26887 (and tp!1351212 (inv!68630 setElem!26887) e!2967728))))

(declare-fun setRest!26887 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26887 (= z!490 ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26887 true) setRest!26887))))

(declare-fun lt!1923075 () Int)

(declare-fun e!2967726 () Bool)

(declare-fun b!4756994 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!60 ((InoxSet Context!5798) Int BalanceConc!28390 Int) Int)

(declare-fun apply!12497 (MutableMap!4695 tuple2!55086) Int)

(assert (=> b!4756994 (= e!2967726 (= (findLongestMatchInnerZipperFastV2!60 z!490 from!930 (totalInput!4439 thiss!28972) lt!1923075) (apply!12497 (cache!4537 thiss!28972) lt!1923076)))))

(declare-fun b!4756995 () Bool)

(assert (=> b!4756995 (= e!2967723 e!2967726)))

(declare-fun res!2018194 () Bool)

(assert (=> b!4756995 (=> (not res!2018194) (not e!2967726))))

(assert (=> b!4756995 (= res!2018194 (<= from!930 lt!1923075))))

(declare-fun size!35998 (BalanceConc!28390) Int)

(assert (=> b!4756995 (= lt!1923075 (size!35998 (totalInput!4439 thiss!28972)))))

(declare-fun b!4756996 () Bool)

(declare-fun tp!1351219 () Bool)

(declare-fun inv!68631 (Conc!14450) Bool)

(assert (=> b!4756996 (= e!2967731 (and (inv!68631 (c!811749 (totalInput!4439 thiss!28972))) tp!1351219))))

(declare-fun b!4756997 () Bool)

(declare-fun lt!1923077 () MutLongMap!4811)

(assert (=> b!4756997 (= e!2967718 (and e!2967721 ((_ is LongMap!4811) lt!1923077)))))

(assert (=> b!4756997 (= lt!1923077 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))

(declare-fun tp!1351217 () Bool)

(declare-fun tp!1351214 () Bool)

(declare-fun array_inv!5621 (array!17498) Bool)

(declare-fun array_inv!5622 (array!17500) Bool)

(assert (=> b!4756998 (= e!2967727 (and tp!1351211 tp!1351217 tp!1351214 (array_inv!5621 (_keys!5146 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) (array_inv!5622 (_values!5119 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) e!2967722))))

(assert (= (and start!486462 res!2018195) b!4756986))

(assert (= (and b!4756986 res!2018193) b!4756992))

(assert (= (and b!4756992 res!2018192) b!4756995))

(assert (= (and b!4756995 res!2018194) b!4756994))

(assert (= (and b!4756991 condMapEmpty!21416) mapIsEmpty!21416))

(assert (= (and b!4756991 (not condMapEmpty!21416)) mapNonEmpty!21416))

(assert (= b!4756998 b!4756991))

(assert (= b!4756989 b!4756998))

(assert (= b!4756987 b!4756989))

(assert (= (and b!4756997 ((_ is LongMap!4811) (v!47279 (underlying!9830 (cache!4537 thiss!28972))))) b!4756987))

(assert (= b!4756988 b!4756997))

(assert (= (and b!4756993 ((_ is HashMap!4695) (cache!4537 thiss!28972))) b!4756988))

(assert (= b!4756993 b!4756996))

(assert (= start!486462 b!4756993))

(assert (= (and start!486462 condSetEmpty!26887) setIsEmpty!26887))

(assert (= (and start!486462 (not condSetEmpty!26887)) setNonEmpty!26887))

(assert (= setNonEmpty!26887 b!4756990))

(declare-fun m!5726719 () Bool)

(assert (=> setNonEmpty!26887 m!5726719))

(declare-fun m!5726721 () Bool)

(assert (=> b!4756986 m!5726721))

(declare-fun m!5726723 () Bool)

(assert (=> b!4756992 m!5726723))

(declare-fun m!5726725 () Bool)

(assert (=> start!486462 m!5726725))

(declare-fun m!5726727 () Bool)

(assert (=> start!486462 m!5726727))

(declare-fun m!5726729 () Bool)

(assert (=> b!4756993 m!5726729))

(declare-fun m!5726731 () Bool)

(assert (=> mapNonEmpty!21416 m!5726731))

(declare-fun m!5726733 () Bool)

(assert (=> b!4756996 m!5726733))

(declare-fun m!5726735 () Bool)

(assert (=> b!4756995 m!5726735))

(declare-fun m!5726737 () Bool)

(assert (=> b!4756998 m!5726737))

(declare-fun m!5726739 () Bool)

(assert (=> b!4756998 m!5726739))

(declare-fun m!5726741 () Bool)

(assert (=> b!4756994 m!5726741))

(declare-fun m!5726743 () Bool)

(assert (=> b!4756994 m!5726743))

(check-sat (not setNonEmpty!26887) (not b!4756994) (not b_next!129865) (not b!4756990) b_and!340751 (not b!4756993) (not start!486462) (not b!4756992) (not b_next!129863) b_and!340753 (not mapNonEmpty!21416) (not b!4756996) (not b!4756995) (not b!4756986) (not b!4756998) (not b!4756991))
(check-sat b_and!340751 b_and!340753 (not b_next!129865) (not b_next!129863))
(get-model)

(declare-fun d!1520993 () Bool)

(declare-fun isBalanced!3897 (Conc!14450) Bool)

(assert (=> d!1520993 (= (inv!68629 (totalInput!4439 thiss!28972)) (isBalanced!3897 (c!811749 (totalInput!4439 thiss!28972))))))

(declare-fun bs!1146956 () Bool)

(assert (= bs!1146956 d!1520993))

(declare-fun m!5726745 () Bool)

(assert (=> bs!1146956 m!5726745))

(assert (=> b!4756993 d!1520993))

(declare-fun d!1520995 () Bool)

(declare-fun c!811752 () Bool)

(assert (=> d!1520995 (= c!811752 ((_ is Node!14450) (c!811749 (totalInput!4439 thiss!28972))))))

(declare-fun e!2967736 () Bool)

(assert (=> d!1520995 (= (inv!68631 (c!811749 (totalInput!4439 thiss!28972))) e!2967736)))

(declare-fun b!4757005 () Bool)

(declare-fun inv!68632 (Conc!14450) Bool)

(assert (=> b!4757005 (= e!2967736 (inv!68632 (c!811749 (totalInput!4439 thiss!28972))))))

(declare-fun b!4757006 () Bool)

(declare-fun e!2967737 () Bool)

(assert (=> b!4757006 (= e!2967736 e!2967737)))

(declare-fun res!2018198 () Bool)

(assert (=> b!4757006 (= res!2018198 (not ((_ is Leaf!23527) (c!811749 (totalInput!4439 thiss!28972)))))))

(assert (=> b!4757006 (=> res!2018198 e!2967737)))

(declare-fun b!4757007 () Bool)

(declare-fun inv!68633 (Conc!14450) Bool)

(assert (=> b!4757007 (= e!2967737 (inv!68633 (c!811749 (totalInput!4439 thiss!28972))))))

(assert (= (and d!1520995 c!811752) b!4757005))

(assert (= (and d!1520995 (not c!811752)) b!4757006))

(assert (= (and b!4757006 (not res!2018198)) b!4757007))

(declare-fun m!5726747 () Bool)

(assert (=> b!4757005 m!5726747))

(declare-fun m!5726749 () Bool)

(assert (=> b!4757007 m!5726749))

(assert (=> b!4756996 d!1520995))

(declare-datatypes ((tuple2!55090 0))(
  ( (tuple2!55091 (_1!30839 (_ BitVec 64)) (_2!30839 List!53331)) )
))
(declare-datatypes ((List!53333 0))(
  ( (Nil!53209) (Cons!53209 (h!59620 tuple2!55090) (t!360679 List!53333)) )
))
(declare-datatypes ((ListLongMap!4585 0))(
  ( (ListLongMap!4586 (toList!6189 List!53333)) )
))
(declare-fun lt!1923121 () ListLongMap!4585)

(declare-fun call!333565 () (_ BitVec 64))

(declare-fun call!333567 () List!53331)

(declare-fun call!333564 () ListLongMap!4585)

(declare-fun bm!333557 () Bool)

(declare-fun c!811764 () Bool)

(declare-fun apply!12498 (ListLongMap!4585 (_ BitVec 64)) List!53331)

(assert (=> bm!333557 (= call!333567 (apply!12498 (ite c!811764 lt!1923121 call!333564) call!333565))))

(declare-fun bm!333558 () Bool)

(declare-fun hash!4510 (Hashable!6472 tuple2!55086) (_ BitVec 64))

(assert (=> bm!333558 (= call!333565 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun b!4757030 () Bool)

(assert (=> b!4757030 false))

(declare-fun lt!1923132 () Unit!137714)

(declare-fun lt!1923133 () Unit!137714)

(assert (=> b!4757030 (= lt!1923132 lt!1923133)))

(declare-fun lt!1923122 () ListLongMap!4585)

(declare-datatypes ((ListMap!5687 0))(
  ( (ListMap!5688 (toList!6190 List!53331)) )
))
(declare-fun contains!16597 (ListMap!5687 tuple2!55086) Bool)

(declare-fun extractMap!2109 (List!53333) ListMap!5687)

(assert (=> b!4757030 (contains!16597 (extractMap!2109 (toList!6189 lt!1923122)) lt!1923076)))

(declare-fun lemmaInLongMapThenInGenericMap!173 (ListLongMap!4585 tuple2!55086 Hashable!6472) Unit!137714)

(assert (=> b!4757030 (= lt!1923133 (lemmaInLongMapThenInGenericMap!173 lt!1923122 lt!1923076 (hashF!12282 (cache!4537 thiss!28972))))))

(assert (=> b!4757030 (= lt!1923122 call!333564)))

(declare-fun e!2967755 () Unit!137714)

(declare-fun Unit!137716 () Unit!137714)

(assert (=> b!4757030 (= e!2967755 Unit!137716)))

(declare-fun b!4757031 () Bool)

(declare-fun e!2967752 () Unit!137714)

(declare-fun lt!1923128 () Unit!137714)

(assert (=> b!4757031 (= e!2967752 lt!1923128)))

(assert (=> b!4757031 (= lt!1923121 call!333564)))

(declare-fun lemmaInGenericMapThenInLongMap!173 (ListLongMap!4585 tuple2!55086 Hashable!6472) Unit!137714)

(assert (=> b!4757031 (= lt!1923128 (lemmaInGenericMapThenInLongMap!173 lt!1923121 lt!1923076 (hashF!12282 (cache!4537 thiss!28972))))))

(declare-fun res!2018207 () Bool)

(declare-fun call!333566 () Bool)

(assert (=> b!4757031 (= res!2018207 call!333566)))

(declare-fun e!2967754 () Bool)

(assert (=> b!4757031 (=> (not res!2018207) (not e!2967754))))

(assert (=> b!4757031 e!2967754))

(declare-fun b!4757032 () Bool)

(assert (=> b!4757032 false))

(declare-fun lt!1923137 () Unit!137714)

(declare-fun lt!1923130 () Unit!137714)

(assert (=> b!4757032 (= lt!1923137 lt!1923130)))

(declare-fun lt!1923124 () List!53333)

(declare-fun lt!1923118 () (_ BitVec 64))

(declare-fun lt!1923119 () List!53331)

(declare-fun contains!16598 (List!53333 tuple2!55090) Bool)

(assert (=> b!4757032 (contains!16598 lt!1923124 (tuple2!55091 lt!1923118 lt!1923119))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!887 (List!53333 (_ BitVec 64) List!53331) Unit!137714)

(assert (=> b!4757032 (= lt!1923130 (lemmaGetValueByKeyImpliesContainsTuple!887 lt!1923124 lt!1923118 lt!1923119))))

(declare-fun apply!12499 (MutLongMap!4811 (_ BitVec 64)) List!53331)

(assert (=> b!4757032 (= lt!1923119 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118))))

(declare-fun map!11824 (MutLongMap!4811) ListLongMap!4585)

(assert (=> b!4757032 (= lt!1923124 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))

(declare-fun lt!1923129 () Unit!137714)

(declare-fun lt!1923134 () Unit!137714)

(assert (=> b!4757032 (= lt!1923129 lt!1923134)))

(declare-fun lt!1923120 () List!53333)

(declare-datatypes ((Option!12568 0))(
  ( (None!12567) (Some!12567 (v!47280 List!53331)) )
))
(declare-fun isDefined!9758 (Option!12568) Bool)

(declare-fun getValueByKey!2118 (List!53333 (_ BitVec 64)) Option!12568)

(assert (=> b!4757032 (isDefined!9758 (getValueByKey!2118 lt!1923120 lt!1923118))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1945 (List!53333 (_ BitVec 64)) Unit!137714)

(assert (=> b!4757032 (= lt!1923134 (lemmaContainsKeyImpliesGetValueByKeyDefined!1945 lt!1923120 lt!1923118))))

(assert (=> b!4757032 (= lt!1923120 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))

(declare-fun lt!1923127 () Unit!137714)

(declare-fun lt!1923136 () Unit!137714)

(assert (=> b!4757032 (= lt!1923127 lt!1923136)))

(declare-fun lt!1923125 () List!53333)

(declare-fun containsKey!3628 (List!53333 (_ BitVec 64)) Bool)

(assert (=> b!4757032 (containsKey!3628 lt!1923125 lt!1923118)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!174 (List!53333 (_ BitVec 64)) Unit!137714)

(assert (=> b!4757032 (= lt!1923136 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!174 lt!1923125 lt!1923118))))

(assert (=> b!4757032 (= lt!1923125 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))

(declare-fun e!2967757 () Unit!137714)

(declare-fun Unit!137717 () Unit!137714)

(assert (=> b!4757032 (= e!2967757 Unit!137717)))

(declare-fun bm!333559 () Bool)

(declare-fun call!333563 () Bool)

(declare-datatypes ((Option!12569 0))(
  ( (None!12568) (Some!12568 (v!47281 tuple2!55088)) )
))
(declare-fun call!333562 () Option!12569)

(declare-fun isDefined!9759 (Option!12569) Bool)

(assert (=> bm!333559 (= call!333563 (isDefined!9759 call!333562))))

(declare-fun b!4757033 () Bool)

(declare-fun e!2967758 () Unit!137714)

(declare-fun lambda!223540 () Int)

(declare-fun forallContained!3819 (List!53333 Int tuple2!55090) Unit!137714)

(assert (=> b!4757033 (= e!2967758 (forallContained!3819 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))) lambda!223540 (tuple2!55091 lt!1923118 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118))))))

(declare-fun c!811762 () Bool)

(assert (=> b!4757033 (= c!811762 (not (contains!16598 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))) (tuple2!55091 lt!1923118 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118)))))))

(declare-fun lt!1923135 () Unit!137714)

(assert (=> b!4757033 (= lt!1923135 e!2967757)))

(declare-fun d!1520997 () Bool)

(declare-fun lt!1923123 () Bool)

(declare-fun map!11825 (MutableMap!4695) ListMap!5687)

(assert (=> d!1520997 (= lt!1923123 (contains!16597 (map!11825 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun e!2967753 () Bool)

(assert (=> d!1520997 (= lt!1923123 e!2967753)))

(declare-fun res!2018205 () Bool)

(assert (=> d!1520997 (=> (not res!2018205) (not e!2967753))))

(declare-fun contains!16599 (MutLongMap!4811 (_ BitVec 64)) Bool)

(assert (=> d!1520997 (= res!2018205 (contains!16599 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118))))

(declare-fun lt!1923126 () Unit!137714)

(assert (=> d!1520997 (= lt!1923126 e!2967752)))

(assert (=> d!1520997 (= c!811764 (contains!16597 (extractMap!2109 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972)))))) lt!1923076))))

(declare-fun lt!1923131 () Unit!137714)

(assert (=> d!1520997 (= lt!1923131 e!2967758)))

(declare-fun c!811763 () Bool)

(assert (=> d!1520997 (= c!811763 (contains!16599 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118))))

(assert (=> d!1520997 (= lt!1923118 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun valid!3830 (MutableMap!4695) Bool)

(assert (=> d!1520997 (valid!3830 (cache!4537 thiss!28972))))

(assert (=> d!1520997 (= (contains!16596 (cache!4537 thiss!28972) lt!1923076) lt!1923123)))

(declare-fun b!4757034 () Bool)

(declare-fun e!2967756 () Bool)

(assert (=> b!4757034 (= e!2967756 call!333563)))

(declare-fun bm!333560 () Bool)

(declare-fun contains!16600 (ListLongMap!4585 (_ BitVec 64)) Bool)

(assert (=> bm!333560 (= call!333566 (contains!16600 (ite c!811764 lt!1923121 call!333564) call!333565))))

(declare-fun b!4757035 () Bool)

(declare-fun Unit!137718 () Unit!137714)

(assert (=> b!4757035 (= e!2967757 Unit!137718)))

(declare-fun b!4757036 () Bool)

(assert (=> b!4757036 (= e!2967752 e!2967755)))

(declare-fun res!2018206 () Bool)

(assert (=> b!4757036 (= res!2018206 call!333566)))

(assert (=> b!4757036 (=> (not res!2018206) (not e!2967756))))

(declare-fun c!811761 () Bool)

(assert (=> b!4757036 (= c!811761 e!2967756)))

(declare-fun b!4757037 () Bool)

(declare-fun Unit!137719 () Unit!137714)

(assert (=> b!4757037 (= e!2967758 Unit!137719)))

(declare-fun bm!333561 () Bool)

(assert (=> bm!333561 (= call!333564 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972)))))))

(declare-fun b!4757038 () Bool)

(declare-fun getPair!609 (List!53331 tuple2!55086) Option!12569)

(assert (=> b!4757038 (= e!2967753 (isDefined!9759 (getPair!609 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923118) lt!1923076)))))

(declare-fun b!4757039 () Bool)

(assert (=> b!4757039 (= e!2967754 call!333563)))

(declare-fun bm!333562 () Bool)

(assert (=> bm!333562 (= call!333562 (getPair!609 call!333567 lt!1923076))))

(declare-fun b!4757040 () Bool)

(declare-fun Unit!137720 () Unit!137714)

(assert (=> b!4757040 (= e!2967755 Unit!137720)))

(assert (= (and d!1520997 c!811763) b!4757033))

(assert (= (and d!1520997 (not c!811763)) b!4757037))

(assert (= (and b!4757033 c!811762) b!4757032))

(assert (= (and b!4757033 (not c!811762)) b!4757035))

(assert (= (and d!1520997 c!811764) b!4757031))

(assert (= (and d!1520997 (not c!811764)) b!4757036))

(assert (= (and b!4757031 res!2018207) b!4757039))

(assert (= (and b!4757036 res!2018206) b!4757034))

(assert (= (and b!4757036 c!811761) b!4757030))

(assert (= (and b!4757036 (not c!811761)) b!4757040))

(assert (= (or b!4757031 b!4757039 b!4757036 b!4757034) bm!333558))

(assert (= (or b!4757031 b!4757036 b!4757034 b!4757030) bm!333561))

(assert (= (or b!4757039 b!4757034) bm!333557))

(assert (= (or b!4757031 b!4757036) bm!333560))

(assert (= (or b!4757039 b!4757034) bm!333562))

(assert (= (or b!4757039 b!4757034) bm!333559))

(assert (= (and d!1520997 res!2018205) b!4757038))

(declare-fun m!5726751 () Bool)

(assert (=> bm!333561 m!5726751))

(assert (=> b!4757033 m!5726751))

(declare-fun m!5726753 () Bool)

(assert (=> b!4757033 m!5726753))

(declare-fun m!5726755 () Bool)

(assert (=> b!4757033 m!5726755))

(declare-fun m!5726757 () Bool)

(assert (=> b!4757033 m!5726757))

(declare-fun m!5726759 () Bool)

(assert (=> bm!333558 m!5726759))

(declare-fun m!5726761 () Bool)

(assert (=> b!4757030 m!5726761))

(assert (=> b!4757030 m!5726761))

(declare-fun m!5726763 () Bool)

(assert (=> b!4757030 m!5726763))

(declare-fun m!5726765 () Bool)

(assert (=> b!4757030 m!5726765))

(declare-fun m!5726767 () Bool)

(assert (=> d!1520997 m!5726767))

(declare-fun m!5726769 () Bool)

(assert (=> d!1520997 m!5726769))

(declare-fun m!5726771 () Bool)

(assert (=> d!1520997 m!5726771))

(declare-fun m!5726773 () Bool)

(assert (=> d!1520997 m!5726773))

(assert (=> d!1520997 m!5726759))

(assert (=> d!1520997 m!5726751))

(declare-fun m!5726775 () Bool)

(assert (=> d!1520997 m!5726775))

(assert (=> d!1520997 m!5726773))

(declare-fun m!5726777 () Bool)

(assert (=> d!1520997 m!5726777))

(assert (=> d!1520997 m!5726767))

(declare-fun m!5726779 () Bool)

(assert (=> b!4757031 m!5726779))

(declare-fun m!5726781 () Bool)

(assert (=> bm!333559 m!5726781))

(declare-fun m!5726783 () Bool)

(assert (=> bm!333562 m!5726783))

(declare-fun m!5726785 () Bool)

(assert (=> bm!333560 m!5726785))

(declare-fun m!5726787 () Bool)

(assert (=> b!4757032 m!5726787))

(declare-fun m!5726789 () Bool)

(assert (=> b!4757032 m!5726789))

(assert (=> b!4757032 m!5726753))

(declare-fun m!5726791 () Bool)

(assert (=> b!4757032 m!5726791))

(declare-fun m!5726793 () Bool)

(assert (=> b!4757032 m!5726793))

(assert (=> b!4757032 m!5726751))

(declare-fun m!5726795 () Bool)

(assert (=> b!4757032 m!5726795))

(assert (=> b!4757032 m!5726791))

(declare-fun m!5726797 () Bool)

(assert (=> b!4757032 m!5726797))

(declare-fun m!5726799 () Bool)

(assert (=> b!4757032 m!5726799))

(assert (=> b!4757038 m!5726753))

(assert (=> b!4757038 m!5726753))

(declare-fun m!5726801 () Bool)

(assert (=> b!4757038 m!5726801))

(assert (=> b!4757038 m!5726801))

(declare-fun m!5726803 () Bool)

(assert (=> b!4757038 m!5726803))

(declare-fun m!5726805 () Bool)

(assert (=> bm!333557 m!5726805))

(assert (=> b!4756986 d!1520997))

(declare-fun d!1520999 () Bool)

(assert (=> d!1520999 (= (array_inv!5621 (_keys!5146 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) (bvsge (size!35996 (_keys!5146 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4756998 d!1520999))

(declare-fun d!1521001 () Bool)

(assert (=> d!1521001 (= (array_inv!5622 (_values!5119 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) (bvsge (size!35997 (_values!5119 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4756998 d!1521001))

(declare-fun b!4757046 () Bool)

(assert (=> b!4757046 true))

(declare-fun d!1521003 () Bool)

(declare-fun res!2018212 () Bool)

(declare-fun e!2967761 () Bool)

(assert (=> d!1521003 (=> (not res!2018212) (not e!2967761))))

(assert (=> d!1521003 (= res!2018212 (valid!3830 (cache!4537 thiss!28972)))))

(assert (=> d!1521003 (= (validCacheMapFindLongestMatch!100 (cache!4537 thiss!28972) (totalInput!4439 thiss!28972)) e!2967761)))

(declare-fun b!4757045 () Bool)

(declare-fun res!2018213 () Bool)

(assert (=> b!4757045 (=> (not res!2018213) (not e!2967761))))

(declare-fun invariantList!1634 (List!53331) Bool)

(assert (=> b!4757045 (= res!2018213 (invariantList!1634 (toList!6190 (map!11825 (cache!4537 thiss!28972)))))))

(declare-fun lambda!223543 () Int)

(declare-fun forall!11805 (List!53331 Int) Bool)

(assert (=> b!4757046 (= e!2967761 (forall!11805 (toList!6190 (map!11825 (cache!4537 thiss!28972))) lambda!223543))))

(assert (= (and d!1521003 res!2018212) b!4757045))

(assert (= (and b!4757045 res!2018213) b!4757046))

(assert (=> d!1521003 m!5726775))

(assert (=> b!4757045 m!5726767))

(declare-fun m!5726808 () Bool)

(assert (=> b!4757045 m!5726808))

(assert (=> b!4757046 m!5726767))

(declare-fun m!5726810 () Bool)

(assert (=> b!4757046 m!5726810))

(assert (=> start!486462 d!1521003))

(declare-fun d!1521005 () Bool)

(declare-fun res!2018216 () Bool)

(declare-fun e!2967764 () Bool)

(assert (=> d!1521005 (=> (not res!2018216) (not e!2967764))))

(assert (=> d!1521005 (= res!2018216 ((_ is HashMap!4695) (cache!4537 thiss!28972)))))

(assert (=> d!1521005 (= (inv!68628 thiss!28972) e!2967764)))

(declare-fun b!4757051 () Bool)

(assert (=> b!4757051 (= e!2967764 (validCacheMapFindLongestMatch!100 (cache!4537 thiss!28972) (totalInput!4439 thiss!28972)))))

(assert (= (and d!1521005 res!2018216) b!4757051))

(assert (=> b!4757051 m!5726725))

(assert (=> start!486462 d!1521005))

(declare-fun b!4757068 () Bool)

(declare-fun e!2967779 () Int)

(declare-fun e!2967776 () Int)

(assert (=> b!4757068 (= e!2967779 e!2967776)))

(declare-fun lt!1923146 () (InoxSet Context!5798))

(declare-fun derivationStepZipper!561 ((InoxSet Context!5798) C!26216) (InoxSet Context!5798))

(declare-fun apply!12500 (BalanceConc!28390 Int) C!26216)

(assert (=> b!4757068 (= lt!1923146 (derivationStepZipper!561 z!490 (apply!12500 (totalInput!4439 thiss!28972) from!930)))))

(declare-fun lt!1923144 () Int)

(assert (=> b!4757068 (= lt!1923144 (findLongestMatchInnerZipperFastV2!60 lt!1923146 (+ from!930 1) (totalInput!4439 thiss!28972) lt!1923075))))

(declare-fun c!811771 () Bool)

(assert (=> b!4757068 (= c!811771 (> lt!1923144 0))))

(declare-fun b!4757069 () Bool)

(declare-fun e!2967778 () Int)

(assert (=> b!4757069 (= e!2967778 0)))

(declare-fun b!4757070 () Bool)

(assert (=> b!4757070 (= e!2967779 0)))

(declare-fun d!1521007 () Bool)

(declare-fun lt!1923145 () Int)

(assert (=> d!1521007 (and (>= lt!1923145 0) (<= lt!1923145 (- lt!1923075 from!930)))))

(assert (=> d!1521007 (= lt!1923145 e!2967779)))

(declare-fun c!811773 () Bool)

(declare-fun e!2967775 () Bool)

(assert (=> d!1521007 (= c!811773 e!2967775)))

(declare-fun res!2018221 () Bool)

(assert (=> d!1521007 (=> res!2018221 e!2967775)))

(assert (=> d!1521007 (= res!2018221 (= from!930 lt!1923075))))

(declare-fun e!2967777 () Bool)

(assert (=> d!1521007 e!2967777))

(declare-fun res!2018222 () Bool)

(assert (=> d!1521007 (=> (not res!2018222) (not e!2967777))))

(assert (=> d!1521007 (= res!2018222 (>= from!930 0))))

(assert (=> d!1521007 (= (findLongestMatchInnerZipperFastV2!60 z!490 from!930 (totalInput!4439 thiss!28972) lt!1923075) lt!1923145)))

(declare-fun b!4757071 () Bool)

(assert (=> b!4757071 (= e!2967776 (+ 1 lt!1923144))))

(declare-fun b!4757072 () Bool)

(declare-fun lostCauseZipper!664 ((InoxSet Context!5798)) Bool)

(assert (=> b!4757072 (= e!2967775 (lostCauseZipper!664 z!490))))

(declare-fun b!4757073 () Bool)

(assert (=> b!4757073 (= e!2967778 1)))

(declare-fun b!4757074 () Bool)

(assert (=> b!4757074 (= e!2967777 (<= from!930 (size!35998 (totalInput!4439 thiss!28972))))))

(declare-fun b!4757075 () Bool)

(declare-fun c!811772 () Bool)

(declare-fun nullableZipper!784 ((InoxSet Context!5798)) Bool)

(assert (=> b!4757075 (= c!811772 (nullableZipper!784 lt!1923146))))

(assert (=> b!4757075 (= e!2967776 e!2967778)))

(assert (= (and d!1521007 res!2018222) b!4757074))

(assert (= (and d!1521007 (not res!2018221)) b!4757072))

(assert (= (and d!1521007 c!811773) b!4757070))

(assert (= (and d!1521007 (not c!811773)) b!4757068))

(assert (= (and b!4757068 c!811771) b!4757071))

(assert (= (and b!4757068 (not c!811771)) b!4757075))

(assert (= (and b!4757075 c!811772) b!4757073))

(assert (= (and b!4757075 (not c!811772)) b!4757069))

(declare-fun m!5726812 () Bool)

(assert (=> b!4757068 m!5726812))

(assert (=> b!4757068 m!5726812))

(declare-fun m!5726814 () Bool)

(assert (=> b!4757068 m!5726814))

(declare-fun m!5726816 () Bool)

(assert (=> b!4757068 m!5726816))

(declare-fun m!5726818 () Bool)

(assert (=> b!4757072 m!5726818))

(assert (=> b!4757074 m!5726735))

(declare-fun m!5726820 () Bool)

(assert (=> b!4757075 m!5726820))

(assert (=> b!4756994 d!1521007))

(declare-fun bs!1146957 () Bool)

(declare-fun b!4757088 () Bool)

(assert (= bs!1146957 (and b!4757088 b!4757033)))

(declare-fun lambda!223550 () Int)

(assert (=> bs!1146957 (= lambda!223550 lambda!223540)))

(declare-fun lt!1923208 () (_ BitVec 64))

(declare-fun e!2967786 () Int)

(declare-fun get!17919 (Option!12569) tuple2!55088)

(assert (=> b!4757088 (= e!2967786 (_2!30838 (get!17919 (getPair!609 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923208) lt!1923076))))))

(assert (=> b!4757088 (= lt!1923208 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun c!811782 () Bool)

(assert (=> b!4757088 (= c!811782 (not (contains!16598 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))) (tuple2!55091 lt!1923208 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923208)))))))

(declare-fun lt!1923217 () Unit!137714)

(declare-fun e!2967788 () Unit!137714)

(assert (=> b!4757088 (= lt!1923217 e!2967788)))

(declare-fun lt!1923216 () Unit!137714)

(assert (=> b!4757088 (= lt!1923216 (forallContained!3819 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))) lambda!223550 (tuple2!55091 lt!1923208 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923208))))))

(declare-fun lt!1923214 () ListLongMap!4585)

(assert (=> b!4757088 (= lt!1923214 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972)))))))

(declare-fun lt!1923223 () Unit!137714)

(declare-fun lemmaGetPairGetSameValueAsMap!41 (ListLongMap!4585 tuple2!55086 Int Hashable!6472) Unit!137714)

(assert (=> b!4757088 (= lt!1923223 (lemmaGetPairGetSameValueAsMap!41 lt!1923214 lt!1923076 (_2!30838 (get!17919 (getPair!609 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923208) lt!1923076))) (hashF!12282 (cache!4537 thiss!28972))))))

(declare-fun lt!1923225 () Unit!137714)

(declare-fun lemmaInGenMapThenLongMapContainsHash!815 (ListLongMap!4585 tuple2!55086 Hashable!6472) Unit!137714)

(assert (=> b!4757088 (= lt!1923225 (lemmaInGenMapThenLongMapContainsHash!815 lt!1923214 lt!1923076 (hashF!12282 (cache!4537 thiss!28972))))))

(assert (=> b!4757088 (contains!16600 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun lt!1923221 () Unit!137714)

(assert (=> b!4757088 (= lt!1923221 lt!1923225)))

(declare-fun lt!1923230 () (_ BitVec 64))

(assert (=> b!4757088 (= lt!1923230 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun lt!1923236 () List!53331)

(assert (=> b!4757088 (= lt!1923236 (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)))))

(declare-fun lt!1923210 () Unit!137714)

(declare-fun lemmaGetValueImpliesTupleContained!414 (ListLongMap!4585 (_ BitVec 64) List!53331) Unit!137714)

(assert (=> b!4757088 (= lt!1923210 (lemmaGetValueImpliesTupleContained!414 lt!1923214 lt!1923230 lt!1923236))))

(assert (=> b!4757088 (contains!16598 (toList!6189 lt!1923214) (tuple2!55091 lt!1923230 lt!1923236))))

(declare-fun lt!1923234 () Unit!137714)

(assert (=> b!4757088 (= lt!1923234 lt!1923210)))

(declare-fun lt!1923226 () Unit!137714)

(assert (=> b!4757088 (= lt!1923226 (forallContained!3819 (toList!6189 lt!1923214) lambda!223550 (tuple2!55091 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076) (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)))))))

(declare-fun lt!1923232 () Unit!137714)

(declare-fun lemmaInGenMapThenGetPairDefined!405 (ListLongMap!4585 tuple2!55086 Hashable!6472) Unit!137714)

(assert (=> b!4757088 (= lt!1923232 (lemmaInGenMapThenGetPairDefined!405 lt!1923214 lt!1923076 (hashF!12282 (cache!4537 thiss!28972))))))

(declare-fun lt!1923229 () Unit!137714)

(assert (=> b!4757088 (= lt!1923229 (lemmaInGenMapThenLongMapContainsHash!815 lt!1923214 lt!1923076 (hashF!12282 (cache!4537 thiss!28972))))))

(declare-fun lt!1923233 () Unit!137714)

(assert (=> b!4757088 (= lt!1923233 lt!1923229)))

(declare-fun lt!1923218 () (_ BitVec 64))

(assert (=> b!4757088 (= lt!1923218 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun lt!1923224 () List!53331)

(assert (=> b!4757088 (= lt!1923224 (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)))))

(declare-fun lt!1923215 () Unit!137714)

(assert (=> b!4757088 (= lt!1923215 (lemmaGetValueImpliesTupleContained!414 lt!1923214 lt!1923218 lt!1923224))))

(assert (=> b!4757088 (contains!16598 (toList!6189 lt!1923214) (tuple2!55091 lt!1923218 lt!1923224))))

(declare-fun lt!1923228 () Unit!137714)

(assert (=> b!4757088 (= lt!1923228 lt!1923215)))

(declare-fun lt!1923213 () Unit!137714)

(assert (=> b!4757088 (= lt!1923213 (forallContained!3819 (toList!6189 lt!1923214) lambda!223550 (tuple2!55091 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076) (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)))))))

(assert (=> b!4757088 (isDefined!9759 (getPair!609 (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)) lt!1923076))))

(declare-fun lt!1923212 () Unit!137714)

(assert (=> b!4757088 (= lt!1923212 lt!1923232)))

(declare-datatypes ((Option!12570 0))(
  ( (None!12569) (Some!12569 (v!47282 Int)) )
))
(declare-fun get!17920 (Option!12570) Int)

(declare-fun getValueByKey!2119 (List!53331 tuple2!55086) Option!12570)

(assert (=> b!4757088 (= (_2!30838 (get!17919 (getPair!609 (apply!12498 lt!1923214 (hash!4510 (hashF!12282 (cache!4537 thiss!28972)) lt!1923076)) lt!1923076))) (get!17920 (getValueByKey!2119 (toList!6190 (extractMap!2109 (toList!6189 lt!1923214))) lt!1923076)))))

(declare-fun lt!1923227 () Unit!137714)

(assert (=> b!4757088 (= lt!1923227 lt!1923223)))

(declare-fun d!1521009 () Bool)

(declare-fun e!2967787 () Bool)

(assert (=> d!1521009 e!2967787))

(declare-fun c!811781 () Bool)

(assert (=> d!1521009 (= c!811781 (contains!16596 (cache!4537 thiss!28972) lt!1923076))))

(declare-fun lt!1923235 () Int)

(assert (=> d!1521009 (= lt!1923235 e!2967786)))

(declare-fun c!811780 () Bool)

(assert (=> d!1521009 (= c!811780 (not (contains!16596 (cache!4537 thiss!28972) lt!1923076)))))

(assert (=> d!1521009 (valid!3830 (cache!4537 thiss!28972))))

(assert (=> d!1521009 (= (apply!12497 (cache!4537 thiss!28972) lt!1923076) lt!1923235)))

(declare-fun b!4757089 () Bool)

(declare-fun Unit!137721 () Unit!137714)

(assert (=> b!4757089 (= e!2967788 Unit!137721)))

(declare-fun b!4757090 () Bool)

(assert (=> b!4757090 false))

(declare-fun lt!1923209 () Unit!137714)

(declare-fun lt!1923220 () Unit!137714)

(assert (=> b!4757090 (= lt!1923209 lt!1923220)))

(declare-fun lt!1923231 () List!53333)

(declare-fun lt!1923222 () List!53331)

(assert (=> b!4757090 (contains!16598 lt!1923231 (tuple2!55091 lt!1923208 lt!1923222))))

(assert (=> b!4757090 (= lt!1923220 (lemmaGetValueByKeyImpliesContainsTuple!887 lt!1923231 lt!1923208 lt!1923222))))

(assert (=> b!4757090 (= lt!1923222 (apply!12499 (v!47279 (underlying!9830 (cache!4537 thiss!28972))) lt!1923208))))

(assert (=> b!4757090 (= lt!1923231 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))

(declare-fun lt!1923219 () Unit!137714)

(declare-fun lt!1923207 () Unit!137714)

(assert (=> b!4757090 (= lt!1923219 lt!1923207)))

(declare-fun lt!1923211 () List!53333)

(assert (=> b!4757090 (isDefined!9758 (getValueByKey!2118 lt!1923211 lt!1923208))))

(assert (=> b!4757090 (= lt!1923207 (lemmaContainsKeyImpliesGetValueByKeyDefined!1945 lt!1923211 lt!1923208))))

(assert (=> b!4757090 (= lt!1923211 (toList!6189 (map!11824 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))

(declare-fun Unit!137722 () Unit!137714)

(assert (=> b!4757090 (= e!2967788 Unit!137722)))

(declare-fun b!4757091 () Bool)

(assert (=> b!4757091 (= e!2967787 (= lt!1923235 (get!17920 (getValueByKey!2119 (toList!6190 (map!11825 (cache!4537 thiss!28972))) lt!1923076))))))

(declare-fun b!4757092 () Bool)

(declare-fun dynLambda!21908 (Int tuple2!55086) Int)

(assert (=> b!4757092 (= e!2967786 (dynLambda!21908 (defaultValue!4866 (cache!4537 thiss!28972)) lt!1923076))))

(declare-fun b!4757093 () Bool)

(assert (=> b!4757093 (= e!2967787 (= lt!1923235 (dynLambda!21908 (defaultValue!4866 (cache!4537 thiss!28972)) lt!1923076)))))

(assert (= (and d!1521009 c!811780) b!4757092))

(assert (= (and d!1521009 (not c!811780)) b!4757088))

(assert (= (and b!4757088 c!811782) b!4757090))

(assert (= (and b!4757088 (not c!811782)) b!4757089))

(assert (= (and d!1521009 c!811781) b!4757091))

(assert (= (and d!1521009 (not c!811781)) b!4757093))

(declare-fun b_lambda!183733 () Bool)

(assert (=> (not b_lambda!183733) (not b!4757092)))

(declare-fun t!360678 () Bool)

(declare-fun tb!257397 () Bool)

(assert (=> (and b!4756988 (= (defaultValue!4866 (cache!4537 thiss!28972)) (defaultValue!4866 (cache!4537 thiss!28972))) t!360678) tb!257397))

(declare-fun result!318812 () Bool)

(assert (=> tb!257397 (= result!318812 true)))

(assert (=> b!4757092 t!360678))

(declare-fun b_and!340755 () Bool)

(assert (= b_and!340751 (and (=> t!360678 result!318812) b_and!340755)))

(declare-fun b_lambda!183735 () Bool)

(assert (=> (not b_lambda!183735) (not b!4757093)))

(assert (=> b!4757093 t!360678))

(declare-fun b_and!340757 () Bool)

(assert (= b_and!340755 (and (=> t!360678 result!318812) b_and!340757)))

(declare-fun m!5726822 () Bool)

(assert (=> b!4757092 m!5726822))

(assert (=> b!4757091 m!5726767))

(declare-fun m!5726824 () Bool)

(assert (=> b!4757091 m!5726824))

(assert (=> b!4757091 m!5726824))

(declare-fun m!5726826 () Bool)

(assert (=> b!4757091 m!5726826))

(assert (=> d!1521009 m!5726721))

(assert (=> d!1521009 m!5726775))

(declare-fun m!5726828 () Bool)

(assert (=> b!4757090 m!5726828))

(declare-fun m!5726830 () Bool)

(assert (=> b!4757090 m!5726830))

(assert (=> b!4757090 m!5726828))

(declare-fun m!5726832 () Bool)

(assert (=> b!4757090 m!5726832))

(declare-fun m!5726834 () Bool)

(assert (=> b!4757090 m!5726834))

(declare-fun m!5726836 () Bool)

(assert (=> b!4757090 m!5726836))

(declare-fun m!5726838 () Bool)

(assert (=> b!4757090 m!5726838))

(assert (=> b!4757090 m!5726751))

(declare-fun m!5726840 () Bool)

(assert (=> b!4757088 m!5726840))

(assert (=> b!4757088 m!5726759))

(declare-fun m!5726842 () Bool)

(assert (=> b!4757088 m!5726842))

(declare-fun m!5726844 () Bool)

(assert (=> b!4757088 m!5726844))

(declare-fun m!5726846 () Bool)

(assert (=> b!4757088 m!5726846))

(assert (=> b!4757088 m!5726759))

(declare-fun m!5726848 () Bool)

(assert (=> b!4757088 m!5726848))

(declare-fun m!5726850 () Bool)

(assert (=> b!4757088 m!5726850))

(declare-fun m!5726852 () Bool)

(assert (=> b!4757088 m!5726852))

(declare-fun m!5726854 () Bool)

(assert (=> b!4757088 m!5726854))

(declare-fun m!5726856 () Bool)

(assert (=> b!4757088 m!5726856))

(assert (=> b!4757088 m!5726759))

(declare-fun m!5726858 () Bool)

(assert (=> b!4757088 m!5726858))

(declare-fun m!5726860 () Bool)

(assert (=> b!4757088 m!5726860))

(assert (=> b!4757088 m!5726832))

(assert (=> b!4757088 m!5726850))

(assert (=> b!4757088 m!5726842))

(declare-fun m!5726862 () Bool)

(assert (=> b!4757088 m!5726862))

(declare-fun m!5726864 () Bool)

(assert (=> b!4757088 m!5726864))

(assert (=> b!4757088 m!5726862))

(declare-fun m!5726866 () Bool)

(assert (=> b!4757088 m!5726866))

(declare-fun m!5726868 () Bool)

(assert (=> b!4757088 m!5726868))

(declare-fun m!5726870 () Bool)

(assert (=> b!4757088 m!5726870))

(assert (=> b!4757088 m!5726862))

(declare-fun m!5726872 () Bool)

(assert (=> b!4757088 m!5726872))

(assert (=> b!4757088 m!5726832))

(assert (=> b!4757088 m!5726751))

(declare-fun m!5726874 () Bool)

(assert (=> b!4757088 m!5726874))

(declare-fun m!5726876 () Bool)

(assert (=> b!4757088 m!5726876))

(assert (=> b!4757088 m!5726864))

(assert (=> b!4757088 m!5726858))

(declare-fun m!5726878 () Bool)

(assert (=> b!4757088 m!5726878))

(assert (=> b!4757093 m!5726822))

(assert (=> b!4756994 d!1521009))

(declare-fun d!1521011 () Bool)

(declare-fun lambda!223553 () Int)

(declare-fun forall!11806 (List!53330 Int) Bool)

(assert (=> d!1521011 (= (inv!68630 setElem!26887) (forall!11806 (exprs!3399 setElem!26887) lambda!223553))))

(declare-fun bs!1146958 () Bool)

(assert (= bs!1146958 d!1521011))

(declare-fun m!5726880 () Bool)

(assert (=> bs!1146958 m!5726880))

(assert (=> setNonEmpty!26887 d!1521011))

(declare-fun d!1521013 () Bool)

(declare-fun e!2967794 () Bool)

(assert (=> d!1521013 e!2967794))

(declare-fun res!2018229 () Bool)

(assert (=> d!1521013 (=> res!2018229 e!2967794)))

(assert (=> d!1521013 (= res!2018229 (not (contains!16596 (cache!4537 thiss!28972) (tuple2!55087 z!490 from!930))))))

(declare-fun lt!1923239 () Unit!137714)

(declare-fun choose!33895 (CacheFindLongestMatch!588 (InoxSet Context!5798) Int BalanceConc!28390) Unit!137714)

(assert (=> d!1521013 (= lt!1923239 (choose!33895 thiss!28972 z!490 from!930 (totalInput!4439 thiss!28972)))))

(assert (=> d!1521013 (= (totalInput!4439 thiss!28972) (totalInput!4439 thiss!28972))))

(assert (=> d!1521013 (= (lemmaIfInCacheThenValid!70 thiss!28972 z!490 from!930 (totalInput!4439 thiss!28972)) lt!1923239)))

(declare-fun b!4757100 () Bool)

(declare-fun e!2967793 () Bool)

(assert (=> b!4757100 (= e!2967794 e!2967793)))

(declare-fun res!2018231 () Bool)

(assert (=> b!4757100 (=> (not res!2018231) (not e!2967793))))

(assert (=> b!4757100 (= res!2018231 (>= from!930 0))))

(declare-fun b!4757101 () Bool)

(declare-fun res!2018230 () Bool)

(assert (=> b!4757101 (=> (not res!2018230) (not e!2967793))))

(assert (=> b!4757101 (= res!2018230 (<= from!930 (size!35998 (totalInput!4439 thiss!28972))))))

(declare-fun b!4757102 () Bool)

(assert (=> b!4757102 (= e!2967793 (= (findLongestMatchInnerZipperFastV2!60 z!490 from!930 (totalInput!4439 thiss!28972) (size!35998 (totalInput!4439 thiss!28972))) (apply!12497 (cache!4537 thiss!28972) (tuple2!55087 z!490 from!930))))))

(assert (= (and d!1521013 (not res!2018229)) b!4757100))

(assert (= (and b!4757100 res!2018231) b!4757101))

(assert (= (and b!4757101 res!2018230) b!4757102))

(declare-fun m!5726882 () Bool)

(assert (=> d!1521013 m!5726882))

(declare-fun m!5726884 () Bool)

(assert (=> d!1521013 m!5726884))

(assert (=> b!4757101 m!5726735))

(assert (=> b!4757102 m!5726735))

(assert (=> b!4757102 m!5726735))

(declare-fun m!5726886 () Bool)

(assert (=> b!4757102 m!5726886))

(declare-fun m!5726888 () Bool)

(assert (=> b!4757102 m!5726888))

(assert (=> b!4756992 d!1521013))

(declare-fun d!1521015 () Bool)

(declare-fun lt!1923242 () Int)

(declare-fun size!35999 (List!53332) Int)

(declare-fun list!17374 (BalanceConc!28390) List!53332)

(assert (=> d!1521015 (= lt!1923242 (size!35999 (list!17374 (totalInput!4439 thiss!28972))))))

(declare-fun size!36000 (Conc!14450) Int)

(assert (=> d!1521015 (= lt!1923242 (size!36000 (c!811749 (totalInput!4439 thiss!28972))))))

(assert (=> d!1521015 (= (size!35998 (totalInput!4439 thiss!28972)) lt!1923242)))

(declare-fun bs!1146959 () Bool)

(assert (= bs!1146959 d!1521015))

(declare-fun m!5726890 () Bool)

(assert (=> bs!1146959 m!5726890))

(assert (=> bs!1146959 m!5726890))

(declare-fun m!5726892 () Bool)

(assert (=> bs!1146959 m!5726892))

(declare-fun m!5726894 () Bool)

(assert (=> bs!1146959 m!5726894))

(assert (=> b!4756995 d!1521015))

(declare-fun b!4757111 () Bool)

(declare-fun tp!1351228 () Bool)

(declare-fun tp!1351229 () Bool)

(declare-fun e!2967799 () Bool)

(assert (=> b!4757111 (= e!2967799 (and (inv!68631 (left!39022 (c!811749 (totalInput!4439 thiss!28972)))) tp!1351229 (inv!68631 (right!39352 (c!811749 (totalInput!4439 thiss!28972)))) tp!1351228))))

(declare-fun b!4757113 () Bool)

(declare-fun e!2967800 () Bool)

(declare-fun tp!1351227 () Bool)

(assert (=> b!4757113 (= e!2967800 tp!1351227)))

(declare-fun b!4757112 () Bool)

(declare-fun inv!68634 (IArray!28961) Bool)

(assert (=> b!4757112 (= e!2967799 (and (inv!68634 (xs!17756 (c!811749 (totalInput!4439 thiss!28972)))) e!2967800))))

(assert (=> b!4756996 (= tp!1351219 (and (inv!68631 (c!811749 (totalInput!4439 thiss!28972))) e!2967799))))

(assert (= (and b!4756996 ((_ is Node!14450) (c!811749 (totalInput!4439 thiss!28972)))) b!4757111))

(assert (= b!4757112 b!4757113))

(assert (= (and b!4756996 ((_ is Leaf!23527) (c!811749 (totalInput!4439 thiss!28972)))) b!4757112))

(declare-fun m!5726896 () Bool)

(assert (=> b!4757111 m!5726896))

(declare-fun m!5726898 () Bool)

(assert (=> b!4757111 m!5726898))

(declare-fun m!5726900 () Bool)

(assert (=> b!4757112 m!5726900))

(assert (=> b!4756996 m!5726733))

(declare-fun b!4757121 () Bool)

(declare-fun e!2967806 () Bool)

(declare-fun tp!1351238 () Bool)

(assert (=> b!4757121 (= e!2967806 tp!1351238)))

(declare-fun setNonEmpty!26890 () Bool)

(declare-fun setElem!26890 () Context!5798)

(declare-fun tp!1351237 () Bool)

(declare-fun setRes!26890 () Bool)

(assert (=> setNonEmpty!26890 (= setRes!26890 (and tp!1351237 (inv!68630 setElem!26890) e!2967806))))

(declare-fun setRest!26890 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26890 (= (_1!30837 (_1!30838 (h!59618 (zeroValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26890 true) setRest!26890))))

(declare-fun b!4757120 () Bool)

(declare-fun e!2967805 () Bool)

(declare-fun tp!1351236 () Bool)

(assert (=> b!4757120 (= e!2967805 (and setRes!26890 tp!1351236))))

(declare-fun condSetEmpty!26890 () Bool)

(assert (=> b!4757120 (= condSetEmpty!26890 (= (_1!30837 (_1!30838 (h!59618 (zeroValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun setIsEmpty!26890 () Bool)

(assert (=> setIsEmpty!26890 setRes!26890))

(assert (=> b!4756998 (= tp!1351217 e!2967805)))

(assert (= (and b!4757120 condSetEmpty!26890) setIsEmpty!26890))

(assert (= (and b!4757120 (not condSetEmpty!26890)) setNonEmpty!26890))

(assert (= setNonEmpty!26890 b!4757121))

(assert (= (and b!4756998 ((_ is Cons!53207) (zeroValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972)))))))) b!4757120))

(declare-fun m!5726902 () Bool)

(assert (=> setNonEmpty!26890 m!5726902))

(declare-fun b!4757123 () Bool)

(declare-fun e!2967808 () Bool)

(declare-fun tp!1351241 () Bool)

(assert (=> b!4757123 (= e!2967808 tp!1351241)))

(declare-fun setRes!26891 () Bool)

(declare-fun setNonEmpty!26891 () Bool)

(declare-fun setElem!26891 () Context!5798)

(declare-fun tp!1351240 () Bool)

(assert (=> setNonEmpty!26891 (= setRes!26891 (and tp!1351240 (inv!68630 setElem!26891) e!2967808))))

(declare-fun setRest!26891 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26891 (= (_1!30837 (_1!30838 (h!59618 (minValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26891 true) setRest!26891))))

(declare-fun b!4757122 () Bool)

(declare-fun e!2967807 () Bool)

(declare-fun tp!1351239 () Bool)

(assert (=> b!4757122 (= e!2967807 (and setRes!26891 tp!1351239))))

(declare-fun condSetEmpty!26891 () Bool)

(assert (=> b!4757122 (= condSetEmpty!26891 (= (_1!30837 (_1!30838 (h!59618 (minValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972))))))))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun setIsEmpty!26891 () Bool)

(assert (=> setIsEmpty!26891 setRes!26891))

(assert (=> b!4756998 (= tp!1351214 e!2967807)))

(assert (= (and b!4757122 condSetEmpty!26891) setIsEmpty!26891))

(assert (= (and b!4757122 (not condSetEmpty!26891)) setNonEmpty!26891))

(assert (= setNonEmpty!26891 b!4757123))

(assert (= (and b!4756998 ((_ is Cons!53207) (minValue!5094 (v!47278 (underlying!9829 (v!47279 (underlying!9830 (cache!4537 thiss!28972)))))))) b!4757122))

(declare-fun m!5726904 () Bool)

(assert (=> setNonEmpty!26891 m!5726904))

(declare-fun setIsEmpty!26896 () Bool)

(declare-fun setRes!26897 () Bool)

(assert (=> setIsEmpty!26896 setRes!26897))

(declare-fun tp!1351258 () Bool)

(declare-fun setElem!26896 () Context!5798)

(declare-fun setNonEmpty!26896 () Bool)

(declare-fun e!2967817 () Bool)

(assert (=> setNonEmpty!26896 (= setRes!26897 (and tp!1351258 (inv!68630 setElem!26896) e!2967817))))

(declare-fun mapDefault!21419 () List!53331)

(declare-fun setRest!26896 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26896 (= (_1!30837 (_1!30838 (h!59618 mapDefault!21419))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26896 true) setRest!26896))))

(declare-fun b!4757134 () Bool)

(declare-fun e!2967819 () Bool)

(declare-fun tp!1351261 () Bool)

(assert (=> b!4757134 (= e!2967819 tp!1351261)))

(declare-fun setIsEmpty!26897 () Bool)

(declare-fun setRes!26896 () Bool)

(assert (=> setIsEmpty!26897 setRes!26896))

(declare-fun tp!1351257 () Bool)

(declare-fun setElem!26897 () Context!5798)

(declare-fun setNonEmpty!26897 () Bool)

(assert (=> setNonEmpty!26897 (= setRes!26896 (and tp!1351257 (inv!68630 setElem!26897) e!2967819))))

(declare-fun mapValue!21419 () List!53331)

(declare-fun setRest!26897 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26897 (= (_1!30837 (_1!30838 (h!59618 mapValue!21419))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26897 true) setRest!26897))))

(declare-fun mapIsEmpty!21419 () Bool)

(declare-fun mapRes!21419 () Bool)

(assert (=> mapIsEmpty!21419 mapRes!21419))

(declare-fun condMapEmpty!21419 () Bool)

(assert (=> mapNonEmpty!21416 (= condMapEmpty!21419 (= mapRest!21416 ((as const (Array (_ BitVec 32) List!53331)) mapDefault!21419)))))

(declare-fun e!2967820 () Bool)

(assert (=> mapNonEmpty!21416 (= tp!1351218 (and e!2967820 mapRes!21419))))

(declare-fun b!4757135 () Bool)

(declare-fun e!2967818 () Bool)

(declare-fun tp!1351259 () Bool)

(assert (=> b!4757135 (= e!2967818 (and setRes!26896 tp!1351259))))

(declare-fun condSetEmpty!26896 () Bool)

(assert (=> b!4757135 (= condSetEmpty!26896 (= (_1!30837 (_1!30838 (h!59618 mapValue!21419))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun mapNonEmpty!21419 () Bool)

(declare-fun tp!1351260 () Bool)

(assert (=> mapNonEmpty!21419 (= mapRes!21419 (and tp!1351260 e!2967818))))

(declare-fun mapKey!21419 () (_ BitVec 32))

(declare-fun mapRest!21419 () (Array (_ BitVec 32) List!53331))

(assert (=> mapNonEmpty!21419 (= mapRest!21416 (store mapRest!21419 mapKey!21419 mapValue!21419))))

(declare-fun b!4757136 () Bool)

(declare-fun tp!1351256 () Bool)

(assert (=> b!4757136 (= e!2967820 (and setRes!26897 tp!1351256))))

(declare-fun condSetEmpty!26897 () Bool)

(assert (=> b!4757136 (= condSetEmpty!26897 (= (_1!30837 (_1!30838 (h!59618 mapDefault!21419))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun b!4757137 () Bool)

(declare-fun tp!1351262 () Bool)

(assert (=> b!4757137 (= e!2967817 tp!1351262)))

(assert (= (and mapNonEmpty!21416 condMapEmpty!21419) mapIsEmpty!21419))

(assert (= (and mapNonEmpty!21416 (not condMapEmpty!21419)) mapNonEmpty!21419))

(assert (= (and b!4757135 condSetEmpty!26896) setIsEmpty!26897))

(assert (= (and b!4757135 (not condSetEmpty!26896)) setNonEmpty!26897))

(assert (= setNonEmpty!26897 b!4757134))

(assert (= (and mapNonEmpty!21419 ((_ is Cons!53207) mapValue!21419)) b!4757135))

(assert (= (and b!4757136 condSetEmpty!26897) setIsEmpty!26896))

(assert (= (and b!4757136 (not condSetEmpty!26897)) setNonEmpty!26896))

(assert (= setNonEmpty!26896 b!4757137))

(assert (= (and mapNonEmpty!21416 ((_ is Cons!53207) mapDefault!21419)) b!4757136))

(declare-fun m!5726906 () Bool)

(assert (=> setNonEmpty!26896 m!5726906))

(declare-fun m!5726908 () Bool)

(assert (=> setNonEmpty!26897 m!5726908))

(declare-fun m!5726910 () Bool)

(assert (=> mapNonEmpty!21419 m!5726910))

(declare-fun b!4757139 () Bool)

(declare-fun e!2967822 () Bool)

(declare-fun tp!1351265 () Bool)

(assert (=> b!4757139 (= e!2967822 tp!1351265)))

(declare-fun setNonEmpty!26898 () Bool)

(declare-fun tp!1351264 () Bool)

(declare-fun setElem!26898 () Context!5798)

(declare-fun setRes!26898 () Bool)

(assert (=> setNonEmpty!26898 (= setRes!26898 (and tp!1351264 (inv!68630 setElem!26898) e!2967822))))

(declare-fun setRest!26898 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26898 (= (_1!30837 (_1!30838 (h!59618 mapValue!21416))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26898 true) setRest!26898))))

(declare-fun b!4757138 () Bool)

(declare-fun e!2967821 () Bool)

(declare-fun tp!1351263 () Bool)

(assert (=> b!4757138 (= e!2967821 (and setRes!26898 tp!1351263))))

(declare-fun condSetEmpty!26898 () Bool)

(assert (=> b!4757138 (= condSetEmpty!26898 (= (_1!30837 (_1!30838 (h!59618 mapValue!21416))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun setIsEmpty!26898 () Bool)

(assert (=> setIsEmpty!26898 setRes!26898))

(assert (=> mapNonEmpty!21416 (= tp!1351220 e!2967821)))

(assert (= (and b!4757138 condSetEmpty!26898) setIsEmpty!26898))

(assert (= (and b!4757138 (not condSetEmpty!26898)) setNonEmpty!26898))

(assert (= setNonEmpty!26898 b!4757139))

(assert (= (and mapNonEmpty!21416 ((_ is Cons!53207) mapValue!21416)) b!4757138))

(declare-fun m!5726912 () Bool)

(assert (=> setNonEmpty!26898 m!5726912))

(declare-fun b!4757144 () Bool)

(declare-fun e!2967825 () Bool)

(declare-fun tp!1351270 () Bool)

(declare-fun tp!1351271 () Bool)

(assert (=> b!4757144 (= e!2967825 (and tp!1351270 tp!1351271))))

(assert (=> b!4756990 (= tp!1351216 e!2967825)))

(assert (= (and b!4756990 ((_ is Cons!53206) (exprs!3399 setElem!26887))) b!4757144))

(declare-fun condSetEmpty!26901 () Bool)

(assert (=> setNonEmpty!26887 (= condSetEmpty!26901 (= setRest!26887 ((as const (Array Context!5798 Bool)) false)))))

(declare-fun setRes!26901 () Bool)

(assert (=> setNonEmpty!26887 (= tp!1351212 setRes!26901)))

(declare-fun setIsEmpty!26901 () Bool)

(assert (=> setIsEmpty!26901 setRes!26901))

(declare-fun e!2967828 () Bool)

(declare-fun tp!1351277 () Bool)

(declare-fun setNonEmpty!26901 () Bool)

(declare-fun setElem!26901 () Context!5798)

(assert (=> setNonEmpty!26901 (= setRes!26901 (and tp!1351277 (inv!68630 setElem!26901) e!2967828))))

(declare-fun setRest!26901 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26901 (= setRest!26887 ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26901 true) setRest!26901))))

(declare-fun b!4757149 () Bool)

(declare-fun tp!1351276 () Bool)

(assert (=> b!4757149 (= e!2967828 tp!1351276)))

(assert (= (and setNonEmpty!26887 condSetEmpty!26901) setIsEmpty!26901))

(assert (= (and setNonEmpty!26887 (not condSetEmpty!26901)) setNonEmpty!26901))

(assert (= setNonEmpty!26901 b!4757149))

(declare-fun m!5726914 () Bool)

(assert (=> setNonEmpty!26901 m!5726914))

(declare-fun b!4757151 () Bool)

(declare-fun e!2967830 () Bool)

(declare-fun tp!1351280 () Bool)

(assert (=> b!4757151 (= e!2967830 tp!1351280)))

(declare-fun setRes!26902 () Bool)

(declare-fun tp!1351279 () Bool)

(declare-fun setElem!26902 () Context!5798)

(declare-fun setNonEmpty!26902 () Bool)

(assert (=> setNonEmpty!26902 (= setRes!26902 (and tp!1351279 (inv!68630 setElem!26902) e!2967830))))

(declare-fun setRest!26902 () (InoxSet Context!5798))

(assert (=> setNonEmpty!26902 (= (_1!30837 (_1!30838 (h!59618 mapDefault!21416))) ((_ map or) (store ((as const (Array Context!5798 Bool)) false) setElem!26902 true) setRest!26902))))

(declare-fun b!4757150 () Bool)

(declare-fun e!2967829 () Bool)

(declare-fun tp!1351278 () Bool)

(assert (=> b!4757150 (= e!2967829 (and setRes!26902 tp!1351278))))

(declare-fun condSetEmpty!26902 () Bool)

(assert (=> b!4757150 (= condSetEmpty!26902 (= (_1!30837 (_1!30838 (h!59618 mapDefault!21416))) ((as const (Array Context!5798 Bool)) false)))))

(declare-fun setIsEmpty!26902 () Bool)

(assert (=> setIsEmpty!26902 setRes!26902))

(assert (=> b!4756991 (= tp!1351213 e!2967829)))

(assert (= (and b!4757150 condSetEmpty!26902) setIsEmpty!26902))

(assert (= (and b!4757150 (not condSetEmpty!26902)) setNonEmpty!26902))

(assert (= setNonEmpty!26902 b!4757151))

(assert (= (and b!4756991 ((_ is Cons!53207) mapDefault!21416)) b!4757150))

(declare-fun m!5726916 () Bool)

(assert (=> setNonEmpty!26902 m!5726916))

(declare-fun b_lambda!183737 () Bool)

(assert (= b_lambda!183735 (or (and b!4756988 b_free!129159) b_lambda!183737)))

(declare-fun b_lambda!183739 () Bool)

(assert (= b_lambda!183733 (or (and b!4756988 b_free!129159) b_lambda!183739)))

(check-sat (not b!4757005) b_and!340757 (not b!4757090) (not b_lambda!183739) (not b!4757102) (not b!4757120) (not b!4757101) (not d!1521003) (not setNonEmpty!26901) (not b!4757113) (not b!4757007) (not mapNonEmpty!21419) (not b!4757134) (not d!1521011) (not b_next!129865) (not b!4757123) (not bm!333560) (not setNonEmpty!26902) (not b!4757121) (not b!4757112) (not setNonEmpty!26891) (not bm!333562) (not b!4757135) (not b!4757032) (not bm!333561) (not d!1520993) (not b!4757111) (not bm!333559) (not d!1521009) (not b!4757144) (not b!4757088) (not setNonEmpty!26896) (not b!4757072) (not setNonEmpty!26897) (not b!4757038) (not b_next!129863) (not d!1521013) (not b!4757046) (not b_lambda!183737) b_and!340753 (not d!1520997) (not b!4757150) (not setNonEmpty!26890) (not b!4757136) (not b!4757051) (not b!4757122) (not b!4757074) (not b!4757151) (not b!4757068) (not b!4757149) (not b!4757033) (not b!4757075) (not setNonEmpty!26898) (not b!4757137) (not b!4757138) (not d!1521015) (not b!4757045) (not b!4757139) (not bm!333557) (not b!4756996) (not b!4757030) (not bm!333558) (not b!4757031) (not b!4757091))
(check-sat b_and!340757 b_and!340753 (not b_next!129865) (not b_next!129863))
