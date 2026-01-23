; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486624 () Bool)

(assert start!486624)

(declare-fun b!4758521 () Bool)

(declare-fun b_free!129247 () Bool)

(declare-fun b_next!129951 () Bool)

(assert (=> b!4758521 (= b_free!129247 (not b_next!129951))))

(declare-fun tp!1352159 () Bool)

(declare-fun b_and!340855 () Bool)

(assert (=> b!4758521 (= tp!1352159 b_and!340855)))

(declare-fun b!4758522 () Bool)

(declare-fun b_free!129249 () Bool)

(declare-fun b_next!129953 () Bool)

(assert (=> b!4758522 (= b_free!129249 (not b_next!129953))))

(declare-fun tp!1352154 () Bool)

(declare-fun b_and!340857 () Bool)

(assert (=> b!4758522 (= tp!1352154 b_and!340857)))

(declare-fun res!2018600 () Bool)

(declare-fun e!2969027 () Bool)

(assert (=> start!486624 (=> (not res!2018600) (not e!2969027))))

(declare-datatypes ((C!26260 0))(
  ( (C!26261 (val!20118 Int)) )
))
(declare-datatypes ((List!53400 0))(
  ( (Nil!53276) (Cons!53276 (h!59687 C!26260) (t!360752 List!53400)) )
))
(declare-datatypes ((IArray!29005 0))(
  ( (IArray!29006 (innerList!14560 List!53400)) )
))
(declare-datatypes ((Conc!14472 0))(
  ( (Node!14472 (left!39065 Conc!14472) (right!39395 Conc!14472) (csize!29174 Int) (cheight!14683 Int)) (Leaf!23560 (xs!17778 IArray!29005) (csize!29175 Int)) (Empty!14472) )
))
(declare-datatypes ((BalanceConc!28434 0))(
  ( (BalanceConc!28435 (c!811931 Conc!14472)) )
))
(declare-fun localTotalInput!8 () BalanceConc!28434)

(declare-datatypes ((Regex!13031 0))(
  ( (ElementMatch!13031 (c!811932 C!26260)) (Concat!21350 (regOne!26574 Regex!13031) (regTwo!26574 Regex!13031)) (EmptyExpr!13031) (Star!13031 (reg!13360 Regex!13031)) (EmptyLang!13031) (Union!13031 (regOne!26575 Regex!13031) (regTwo!26575 Regex!13031)) )
))
(declare-datatypes ((List!53401 0))(
  ( (Nil!53277) (Cons!53277 (h!59688 Regex!13031) (t!360753 List!53401)) )
))
(declare-datatypes ((Context!5842 0))(
  ( (Context!5843 (exprs!3421 List!53401)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55182 0))(
  ( (tuple2!55183 (_1!30885 (InoxSet Context!5842)) (_2!30885 Int)) )
))
(declare-datatypes ((tuple2!55184 0))(
  ( (tuple2!55185 (_1!30886 tuple2!55182) (_2!30886 Int)) )
))
(declare-datatypes ((List!53402 0))(
  ( (Nil!53278) (Cons!53278 (h!59689 tuple2!55184) (t!360754 List!53402)) )
))
(declare-datatypes ((Hashable!6494 0))(
  ( (HashableExt!6493 (__x!32247 Int)) )
))
(declare-datatypes ((array!17596 0))(
  ( (array!17597 (arr!7851 (Array (_ BitVec 32) (_ BitVec 64))) (size!36062 (_ BitVec 32))) )
))
(declare-datatypes ((array!17598 0))(
  ( (array!17599 (arr!7852 (Array (_ BitVec 32) List!53402)) (size!36063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9666 0))(
  ( (LongMapFixedSize!9667 (defaultEntry!5247 Int) (mask!14535 (_ BitVec 32)) (extraKeys!5103 (_ BitVec 32)) (zeroValue!5116 List!53402) (minValue!5116 List!53402) (_size!9691 (_ BitVec 32)) (_keys!5168 array!17596) (_values!5141 array!17598) (_vacant!4898 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19097 0))(
  ( (Cell!19098 (v!47340 LongMapFixedSize!9666)) )
))
(declare-datatypes ((MutLongMap!4833 0))(
  ( (LongMap!4833 (underlying!9873 Cell!19097)) (MutLongMapExt!4832 (__x!32248 Int)) )
))
(declare-datatypes ((Cell!19099 0))(
  ( (Cell!19100 (v!47341 MutLongMap!4833)) )
))
(declare-datatypes ((MutableMap!4717 0))(
  ( (MutableMapExt!4716 (__x!32249 Int)) (HashMap!4717 (underlying!9874 Cell!19099) (hashF!12304 Hashable!6494) (_size!9692 (_ BitVec 32)) (defaultValue!4888 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!632 0))(
  ( (CacheFindLongestMatch!633 (cache!4559 MutableMap!4717) (totalInput!4470 BalanceConc!28434)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!632)

(assert (=> start!486624 (= res!2018600 (= localTotalInput!8 (totalInput!4470 thiss!28909)))))

(assert (=> start!486624 e!2969027))

(declare-fun e!2969025 () Bool)

(declare-fun inv!68739 (BalanceConc!28434) Bool)

(assert (=> start!486624 (and (inv!68739 localTotalInput!8) e!2969025)))

(declare-fun e!2969019 () Bool)

(declare-fun inv!68740 (CacheFindLongestMatch!632) Bool)

(assert (=> start!486624 (and (inv!68740 thiss!28909) e!2969019)))

(declare-fun b!4758513 () Bool)

(get-info :version)

(assert (=> b!4758513 (= e!2969027 (not ((_ is HashMap!4717) (cache!4559 thiss!28909))))))

(declare-fun validCacheMapFindLongestMatch!116 (MutableMap!4717 BalanceConc!28434) Bool)

(assert (=> b!4758513 (validCacheMapFindLongestMatch!116 (cache!4559 thiss!28909) localTotalInput!8)))

(declare-fun b!4758514 () Bool)

(declare-fun e!2969026 () Bool)

(declare-fun e!2969017 () Bool)

(declare-fun lt!1923932 () MutLongMap!4833)

(assert (=> b!4758514 (= e!2969026 (and e!2969017 ((_ is LongMap!4833) lt!1923932)))))

(assert (=> b!4758514 (= lt!1923932 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))

(declare-fun b!4758515 () Bool)

(declare-fun e!2969023 () Bool)

(assert (=> b!4758515 (= e!2969017 e!2969023)))

(declare-fun b!4758516 () Bool)

(declare-fun e!2969021 () Bool)

(declare-fun tp!1352158 () Bool)

(declare-fun inv!68741 (Conc!14472) Bool)

(assert (=> b!4758516 (= e!2969021 (and (inv!68741 (c!811931 (totalInput!4470 thiss!28909))) tp!1352158))))

(declare-fun mapIsEmpty!21497 () Bool)

(declare-fun mapRes!21497 () Bool)

(assert (=> mapIsEmpty!21497 mapRes!21497))

(declare-fun b!4758517 () Bool)

(declare-fun tp!1352156 () Bool)

(assert (=> b!4758517 (= e!2969025 (and (inv!68741 (c!811931 localTotalInput!8)) tp!1352156))))

(declare-fun b!4758518 () Bool)

(declare-fun e!2969024 () Bool)

(assert (=> b!4758518 (= e!2969019 (and e!2969024 (inv!68739 (totalInput!4470 thiss!28909)) e!2969021))))

(declare-fun b!4758519 () Bool)

(declare-fun res!2018599 () Bool)

(assert (=> b!4758519 (=> (not res!2018599) (not e!2969027))))

(assert (=> b!4758519 (= res!2018599 (validCacheMapFindLongestMatch!116 (cache!4559 thiss!28909) (totalInput!4470 thiss!28909)))))

(declare-fun mapNonEmpty!21497 () Bool)

(declare-fun tp!1352155 () Bool)

(declare-fun tp!1352151 () Bool)

(assert (=> mapNonEmpty!21497 (= mapRes!21497 (and tp!1352155 tp!1352151))))

(declare-fun mapKey!21497 () (_ BitVec 32))

(declare-fun mapValue!21497 () List!53402)

(declare-fun mapRest!21497 () (Array (_ BitVec 32) List!53402))

(assert (=> mapNonEmpty!21497 (= (arr!7852 (_values!5141 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) (store mapRest!21497 mapKey!21497 mapValue!21497))))

(declare-fun b!4758520 () Bool)

(declare-fun e!2969022 () Bool)

(declare-fun tp!1352157 () Bool)

(assert (=> b!4758520 (= e!2969022 (and tp!1352157 mapRes!21497))))

(declare-fun condMapEmpty!21497 () Bool)

(declare-fun mapDefault!21497 () List!53402)

(assert (=> b!4758520 (= condMapEmpty!21497 (= (arr!7852 (_values!5141 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53402)) mapDefault!21497)))))

(assert (=> b!4758521 (= e!2969024 (and e!2969026 tp!1352159))))

(declare-fun e!2969018 () Bool)

(declare-fun tp!1352152 () Bool)

(declare-fun tp!1352153 () Bool)

(declare-fun array_inv!5649 (array!17596) Bool)

(declare-fun array_inv!5650 (array!17598) Bool)

(assert (=> b!4758522 (= e!2969018 (and tp!1352154 tp!1352153 tp!1352152 (array_inv!5649 (_keys!5168 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) (array_inv!5650 (_values!5141 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) e!2969022))))

(declare-fun b!4758523 () Bool)

(assert (=> b!4758523 (= e!2969023 e!2969018)))

(assert (= (and start!486624 res!2018600) b!4758519))

(assert (= (and b!4758519 res!2018599) b!4758513))

(assert (= start!486624 b!4758517))

(assert (= (and b!4758520 condMapEmpty!21497) mapIsEmpty!21497))

(assert (= (and b!4758520 (not condMapEmpty!21497)) mapNonEmpty!21497))

(assert (= b!4758522 b!4758520))

(assert (= b!4758523 b!4758522))

(assert (= b!4758515 b!4758523))

(assert (= (and b!4758514 ((_ is LongMap!4833) (v!47341 (underlying!9874 (cache!4559 thiss!28909))))) b!4758515))

(assert (= b!4758521 b!4758514))

(assert (= (and b!4758518 ((_ is HashMap!4717) (cache!4559 thiss!28909))) b!4758521))

(assert (= b!4758518 b!4758516))

(assert (= start!486624 b!4758518))

(declare-fun m!5728002 () Bool)

(assert (=> b!4758522 m!5728002))

(declare-fun m!5728004 () Bool)

(assert (=> b!4758522 m!5728004))

(declare-fun m!5728006 () Bool)

(assert (=> b!4758519 m!5728006))

(declare-fun m!5728008 () Bool)

(assert (=> b!4758516 m!5728008))

(declare-fun m!5728010 () Bool)

(assert (=> start!486624 m!5728010))

(declare-fun m!5728012 () Bool)

(assert (=> start!486624 m!5728012))

(declare-fun m!5728014 () Bool)

(assert (=> b!4758513 m!5728014))

(declare-fun m!5728016 () Bool)

(assert (=> b!4758517 m!5728016))

(declare-fun m!5728018 () Bool)

(assert (=> b!4758518 m!5728018))

(declare-fun m!5728020 () Bool)

(assert (=> mapNonEmpty!21497 m!5728020))

(check-sat (not b!4758519) (not b!4758522) (not b!4758520) (not b_next!129953) (not mapNonEmpty!21497) (not b!4758517) b_and!340855 (not b_next!129951) b_and!340857 (not start!486624) (not b!4758516) (not b!4758518) (not b!4758513))
(check-sat b_and!340855 b_and!340857 (not b_next!129953) (not b_next!129951))
(get-model)

(declare-fun d!1521128 () Bool)

(declare-fun c!811935 () Bool)

(assert (=> d!1521128 (= c!811935 ((_ is Node!14472) (c!811931 (totalInput!4470 thiss!28909))))))

(declare-fun e!2969032 () Bool)

(assert (=> d!1521128 (= (inv!68741 (c!811931 (totalInput!4470 thiss!28909))) e!2969032)))

(declare-fun b!4758530 () Bool)

(declare-fun inv!68742 (Conc!14472) Bool)

(assert (=> b!4758530 (= e!2969032 (inv!68742 (c!811931 (totalInput!4470 thiss!28909))))))

(declare-fun b!4758531 () Bool)

(declare-fun e!2969033 () Bool)

(assert (=> b!4758531 (= e!2969032 e!2969033)))

(declare-fun res!2018603 () Bool)

(assert (=> b!4758531 (= res!2018603 (not ((_ is Leaf!23560) (c!811931 (totalInput!4470 thiss!28909)))))))

(assert (=> b!4758531 (=> res!2018603 e!2969033)))

(declare-fun b!4758532 () Bool)

(declare-fun inv!68743 (Conc!14472) Bool)

(assert (=> b!4758532 (= e!2969033 (inv!68743 (c!811931 (totalInput!4470 thiss!28909))))))

(assert (= (and d!1521128 c!811935) b!4758530))

(assert (= (and d!1521128 (not c!811935)) b!4758531))

(assert (= (and b!4758531 (not res!2018603)) b!4758532))

(declare-fun m!5728022 () Bool)

(assert (=> b!4758530 m!5728022))

(declare-fun m!5728024 () Bool)

(assert (=> b!4758532 m!5728024))

(assert (=> b!4758516 d!1521128))

(declare-fun b!4758538 () Bool)

(assert (=> b!4758538 true))

(declare-fun d!1521130 () Bool)

(declare-fun res!2018608 () Bool)

(declare-fun e!2969036 () Bool)

(assert (=> d!1521130 (=> (not res!2018608) (not e!2969036))))

(declare-fun valid!3837 (MutableMap!4717) Bool)

(assert (=> d!1521130 (= res!2018608 (valid!3837 (cache!4559 thiss!28909)))))

(assert (=> d!1521130 (= (validCacheMapFindLongestMatch!116 (cache!4559 thiss!28909) (totalInput!4470 thiss!28909)) e!2969036)))

(declare-fun b!4758537 () Bool)

(declare-fun res!2018609 () Bool)

(assert (=> b!4758537 (=> (not res!2018609) (not e!2969036))))

(declare-fun invariantList!1639 (List!53402) Bool)

(declare-datatypes ((ListMap!5697 0))(
  ( (ListMap!5698 (toList!6198 List!53402)) )
))
(declare-fun map!11844 (MutableMap!4717) ListMap!5697)

(assert (=> b!4758537 (= res!2018609 (invariantList!1639 (toList!6198 (map!11844 (cache!4559 thiss!28909)))))))

(declare-fun lambda!223610 () Int)

(declare-fun forall!11815 (List!53402 Int) Bool)

(assert (=> b!4758538 (= e!2969036 (forall!11815 (toList!6198 (map!11844 (cache!4559 thiss!28909))) lambda!223610))))

(assert (= (and d!1521130 res!2018608) b!4758537))

(assert (= (and b!4758537 res!2018609) b!4758538))

(declare-fun m!5728027 () Bool)

(assert (=> d!1521130 m!5728027))

(declare-fun m!5728029 () Bool)

(assert (=> b!4758537 m!5728029))

(declare-fun m!5728031 () Bool)

(assert (=> b!4758537 m!5728031))

(assert (=> b!4758538 m!5728029))

(declare-fun m!5728033 () Bool)

(assert (=> b!4758538 m!5728033))

(assert (=> b!4758519 d!1521130))

(declare-fun d!1521132 () Bool)

(declare-fun isBalanced!3902 (Conc!14472) Bool)

(assert (=> d!1521132 (= (inv!68739 (totalInput!4470 thiss!28909)) (isBalanced!3902 (c!811931 (totalInput!4470 thiss!28909))))))

(declare-fun bs!1146999 () Bool)

(assert (= bs!1146999 d!1521132))

(declare-fun m!5728035 () Bool)

(assert (=> bs!1146999 m!5728035))

(assert (=> b!4758518 d!1521132))

(declare-fun d!1521134 () Bool)

(assert (=> d!1521134 (= (array_inv!5649 (_keys!5168 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) (bvsge (size!36062 (_keys!5168 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758522 d!1521134))

(declare-fun d!1521136 () Bool)

(assert (=> d!1521136 (= (array_inv!5650 (_values!5141 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) (bvsge (size!36063 (_values!5141 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758522 d!1521136))

(declare-fun bs!1147000 () Bool)

(declare-fun b!4758542 () Bool)

(assert (= bs!1147000 (and b!4758542 b!4758538)))

(declare-fun lambda!223611 () Int)

(assert (=> bs!1147000 (= (= localTotalInput!8 (totalInput!4470 thiss!28909)) (= lambda!223611 lambda!223610))))

(assert (=> b!4758542 true))

(declare-fun d!1521138 () Bool)

(declare-fun res!2018610 () Bool)

(declare-fun e!2969037 () Bool)

(assert (=> d!1521138 (=> (not res!2018610) (not e!2969037))))

(assert (=> d!1521138 (= res!2018610 (valid!3837 (cache!4559 thiss!28909)))))

(assert (=> d!1521138 (= (validCacheMapFindLongestMatch!116 (cache!4559 thiss!28909) localTotalInput!8) e!2969037)))

(declare-fun b!4758541 () Bool)

(declare-fun res!2018611 () Bool)

(assert (=> b!4758541 (=> (not res!2018611) (not e!2969037))))

(assert (=> b!4758541 (= res!2018611 (invariantList!1639 (toList!6198 (map!11844 (cache!4559 thiss!28909)))))))

(assert (=> b!4758542 (= e!2969037 (forall!11815 (toList!6198 (map!11844 (cache!4559 thiss!28909))) lambda!223611))))

(assert (= (and d!1521138 res!2018610) b!4758541))

(assert (= (and b!4758541 res!2018611) b!4758542))

(assert (=> d!1521138 m!5728027))

(assert (=> b!4758541 m!5728029))

(assert (=> b!4758541 m!5728031))

(assert (=> b!4758542 m!5728029))

(declare-fun m!5728037 () Bool)

(assert (=> b!4758542 m!5728037))

(assert (=> b!4758513 d!1521138))

(declare-fun d!1521140 () Bool)

(declare-fun c!811936 () Bool)

(assert (=> d!1521140 (= c!811936 ((_ is Node!14472) (c!811931 localTotalInput!8)))))

(declare-fun e!2969038 () Bool)

(assert (=> d!1521140 (= (inv!68741 (c!811931 localTotalInput!8)) e!2969038)))

(declare-fun b!4758543 () Bool)

(assert (=> b!4758543 (= e!2969038 (inv!68742 (c!811931 localTotalInput!8)))))

(declare-fun b!4758544 () Bool)

(declare-fun e!2969039 () Bool)

(assert (=> b!4758544 (= e!2969038 e!2969039)))

(declare-fun res!2018612 () Bool)

(assert (=> b!4758544 (= res!2018612 (not ((_ is Leaf!23560) (c!811931 localTotalInput!8))))))

(assert (=> b!4758544 (=> res!2018612 e!2969039)))

(declare-fun b!4758545 () Bool)

(assert (=> b!4758545 (= e!2969039 (inv!68743 (c!811931 localTotalInput!8)))))

(assert (= (and d!1521140 c!811936) b!4758543))

(assert (= (and d!1521140 (not c!811936)) b!4758544))

(assert (= (and b!4758544 (not res!2018612)) b!4758545))

(declare-fun m!5728039 () Bool)

(assert (=> b!4758543 m!5728039))

(declare-fun m!5728041 () Bool)

(assert (=> b!4758545 m!5728041))

(assert (=> b!4758517 d!1521140))

(declare-fun d!1521142 () Bool)

(assert (=> d!1521142 (= (inv!68739 localTotalInput!8) (isBalanced!3902 (c!811931 localTotalInput!8)))))

(declare-fun bs!1147001 () Bool)

(assert (= bs!1147001 d!1521142))

(declare-fun m!5728043 () Bool)

(assert (=> bs!1147001 m!5728043))

(assert (=> start!486624 d!1521142))

(declare-fun d!1521144 () Bool)

(declare-fun res!2018615 () Bool)

(declare-fun e!2969042 () Bool)

(assert (=> d!1521144 (=> (not res!2018615) (not e!2969042))))

(assert (=> d!1521144 (= res!2018615 ((_ is HashMap!4717) (cache!4559 thiss!28909)))))

(assert (=> d!1521144 (= (inv!68740 thiss!28909) e!2969042)))

(declare-fun b!4758548 () Bool)

(assert (=> b!4758548 (= e!2969042 (validCacheMapFindLongestMatch!116 (cache!4559 thiss!28909) (totalInput!4470 thiss!28909)))))

(assert (= (and d!1521144 res!2018615) b!4758548))

(assert (=> b!4758548 m!5728006))

(assert (=> start!486624 d!1521144))

(declare-fun tp!1352168 () Bool)

(declare-fun e!2969048 () Bool)

(declare-fun b!4758557 () Bool)

(declare-fun tp!1352166 () Bool)

(assert (=> b!4758557 (= e!2969048 (and (inv!68741 (left!39065 (c!811931 (totalInput!4470 thiss!28909)))) tp!1352168 (inv!68741 (right!39395 (c!811931 (totalInput!4470 thiss!28909)))) tp!1352166))))

(declare-fun b!4758559 () Bool)

(declare-fun e!2969047 () Bool)

(declare-fun tp!1352167 () Bool)

(assert (=> b!4758559 (= e!2969047 tp!1352167)))

(declare-fun b!4758558 () Bool)

(declare-fun inv!68744 (IArray!29005) Bool)

(assert (=> b!4758558 (= e!2969048 (and (inv!68744 (xs!17778 (c!811931 (totalInput!4470 thiss!28909)))) e!2969047))))

(assert (=> b!4758516 (= tp!1352158 (and (inv!68741 (c!811931 (totalInput!4470 thiss!28909))) e!2969048))))

(assert (= (and b!4758516 ((_ is Node!14472) (c!811931 (totalInput!4470 thiss!28909)))) b!4758557))

(assert (= b!4758558 b!4758559))

(assert (= (and b!4758516 ((_ is Leaf!23560) (c!811931 (totalInput!4470 thiss!28909)))) b!4758558))

(declare-fun m!5728045 () Bool)

(assert (=> b!4758557 m!5728045))

(declare-fun m!5728047 () Bool)

(assert (=> b!4758557 m!5728047))

(declare-fun m!5728049 () Bool)

(assert (=> b!4758558 m!5728049))

(assert (=> b!4758516 m!5728008))

(declare-fun condMapEmpty!21500 () Bool)

(declare-fun mapDefault!21500 () List!53402)

(assert (=> mapNonEmpty!21497 (= condMapEmpty!21500 (= mapRest!21497 ((as const (Array (_ BitVec 32) List!53402)) mapDefault!21500)))))

(declare-fun e!2969059 () Bool)

(declare-fun mapRes!21500 () Bool)

(assert (=> mapNonEmpty!21497 (= tp!1352155 (and e!2969059 mapRes!21500))))

(declare-fun b!4758570 () Bool)

(declare-fun e!2969058 () Bool)

(declare-fun tp!1352189 () Bool)

(assert (=> b!4758570 (= e!2969058 tp!1352189)))

(declare-fun e!2969060 () Bool)

(declare-fun setElem!27018 () Context!5842)

(declare-fun setRes!27019 () Bool)

(declare-fun tp!1352186 () Bool)

(declare-fun setNonEmpty!27018 () Bool)

(declare-fun inv!68745 (Context!5842) Bool)

(assert (=> setNonEmpty!27018 (= setRes!27019 (and tp!1352186 (inv!68745 setElem!27018) e!2969060))))

(declare-fun setRest!27019 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27018 (= (_1!30885 (_1!30886 (h!59689 mapDefault!21500))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27018 true) setRest!27019))))

(declare-fun mapIsEmpty!21500 () Bool)

(assert (=> mapIsEmpty!21500 mapRes!21500))

(declare-fun setIsEmpty!27018 () Bool)

(declare-fun setRes!27018 () Bool)

(assert (=> setIsEmpty!27018 setRes!27018))

(declare-fun b!4758571 () Bool)

(declare-fun tp!1352187 () Bool)

(assert (=> b!4758571 (= e!2969059 (and setRes!27019 tp!1352187))))

(declare-fun condSetEmpty!27018 () Bool)

(assert (=> b!4758571 (= condSetEmpty!27018 (= (_1!30885 (_1!30886 (h!59689 mapDefault!21500))) ((as const (Array Context!5842 Bool)) false)))))

(declare-fun mapNonEmpty!21500 () Bool)

(declare-fun tp!1352184 () Bool)

(declare-fun e!2969057 () Bool)

(assert (=> mapNonEmpty!21500 (= mapRes!21500 (and tp!1352184 e!2969057))))

(declare-fun mapKey!21500 () (_ BitVec 32))

(declare-fun mapValue!21500 () List!53402)

(declare-fun mapRest!21500 () (Array (_ BitVec 32) List!53402))

(assert (=> mapNonEmpty!21500 (= mapRest!21497 (store mapRest!21500 mapKey!21500 mapValue!21500))))

(declare-fun b!4758572 () Bool)

(declare-fun tp!1352188 () Bool)

(assert (=> b!4758572 (= e!2969057 (and setRes!27018 tp!1352188))))

(declare-fun condSetEmpty!27019 () Bool)

(assert (=> b!4758572 (= condSetEmpty!27019 (= (_1!30885 (_1!30886 (h!59689 mapValue!21500))) ((as const (Array Context!5842 Bool)) false)))))

(declare-fun b!4758573 () Bool)

(declare-fun tp!1352183 () Bool)

(assert (=> b!4758573 (= e!2969060 tp!1352183)))

(declare-fun setNonEmpty!27019 () Bool)

(declare-fun setElem!27019 () Context!5842)

(declare-fun tp!1352185 () Bool)

(assert (=> setNonEmpty!27019 (= setRes!27018 (and tp!1352185 (inv!68745 setElem!27019) e!2969058))))

(declare-fun setRest!27018 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27019 (= (_1!30885 (_1!30886 (h!59689 mapValue!21500))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27019 true) setRest!27018))))

(declare-fun setIsEmpty!27019 () Bool)

(assert (=> setIsEmpty!27019 setRes!27019))

(assert (= (and mapNonEmpty!21497 condMapEmpty!21500) mapIsEmpty!21500))

(assert (= (and mapNonEmpty!21497 (not condMapEmpty!21500)) mapNonEmpty!21500))

(assert (= (and b!4758572 condSetEmpty!27019) setIsEmpty!27018))

(assert (= (and b!4758572 (not condSetEmpty!27019)) setNonEmpty!27019))

(assert (= setNonEmpty!27019 b!4758570))

(assert (= (and mapNonEmpty!21500 ((_ is Cons!53278) mapValue!21500)) b!4758572))

(assert (= (and b!4758571 condSetEmpty!27018) setIsEmpty!27019))

(assert (= (and b!4758571 (not condSetEmpty!27018)) setNonEmpty!27018))

(assert (= setNonEmpty!27018 b!4758573))

(assert (= (and mapNonEmpty!21497 ((_ is Cons!53278) mapDefault!21500)) b!4758571))

(declare-fun m!5728051 () Bool)

(assert (=> setNonEmpty!27018 m!5728051))

(declare-fun m!5728053 () Bool)

(assert (=> mapNonEmpty!21500 m!5728053))

(declare-fun m!5728055 () Bool)

(assert (=> setNonEmpty!27019 m!5728055))

(declare-fun setIsEmpty!27022 () Bool)

(declare-fun setRes!27022 () Bool)

(assert (=> setIsEmpty!27022 setRes!27022))

(declare-fun b!4758580 () Bool)

(declare-fun e!2969065 () Bool)

(declare-fun tp!1352197 () Bool)

(assert (=> b!4758580 (= e!2969065 (and setRes!27022 tp!1352197))))

(declare-fun condSetEmpty!27022 () Bool)

(assert (=> b!4758580 (= condSetEmpty!27022 (= (_1!30885 (_1!30886 (h!59689 mapValue!21497))) ((as const (Array Context!5842 Bool)) false)))))

(assert (=> mapNonEmpty!21497 (= tp!1352151 e!2969065)))

(declare-fun b!4758581 () Bool)

(declare-fun e!2969066 () Bool)

(declare-fun tp!1352198 () Bool)

(assert (=> b!4758581 (= e!2969066 tp!1352198)))

(declare-fun setElem!27022 () Context!5842)

(declare-fun setNonEmpty!27022 () Bool)

(declare-fun tp!1352196 () Bool)

(assert (=> setNonEmpty!27022 (= setRes!27022 (and tp!1352196 (inv!68745 setElem!27022) e!2969066))))

(declare-fun setRest!27022 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27022 (= (_1!30885 (_1!30886 (h!59689 mapValue!21497))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27022 true) setRest!27022))))

(assert (= (and b!4758580 condSetEmpty!27022) setIsEmpty!27022))

(assert (= (and b!4758580 (not condSetEmpty!27022)) setNonEmpty!27022))

(assert (= setNonEmpty!27022 b!4758581))

(assert (= (and mapNonEmpty!21497 ((_ is Cons!53278) mapValue!21497)) b!4758580))

(declare-fun m!5728057 () Bool)

(assert (=> setNonEmpty!27022 m!5728057))

(declare-fun setIsEmpty!27023 () Bool)

(declare-fun setRes!27023 () Bool)

(assert (=> setIsEmpty!27023 setRes!27023))

(declare-fun b!4758582 () Bool)

(declare-fun e!2969067 () Bool)

(declare-fun tp!1352200 () Bool)

(assert (=> b!4758582 (= e!2969067 (and setRes!27023 tp!1352200))))

(declare-fun condSetEmpty!27023 () Bool)

(assert (=> b!4758582 (= condSetEmpty!27023 (= (_1!30885 (_1!30886 (h!59689 (zeroValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))))) ((as const (Array Context!5842 Bool)) false)))))

(assert (=> b!4758522 (= tp!1352153 e!2969067)))

(declare-fun b!4758583 () Bool)

(declare-fun e!2969068 () Bool)

(declare-fun tp!1352201 () Bool)

(assert (=> b!4758583 (= e!2969068 tp!1352201)))

(declare-fun setNonEmpty!27023 () Bool)

(declare-fun tp!1352199 () Bool)

(declare-fun setElem!27023 () Context!5842)

(assert (=> setNonEmpty!27023 (= setRes!27023 (and tp!1352199 (inv!68745 setElem!27023) e!2969068))))

(declare-fun setRest!27023 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27023 (= (_1!30885 (_1!30886 (h!59689 (zeroValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27023 true) setRest!27023))))

(assert (= (and b!4758582 condSetEmpty!27023) setIsEmpty!27023))

(assert (= (and b!4758582 (not condSetEmpty!27023)) setNonEmpty!27023))

(assert (= setNonEmpty!27023 b!4758583))

(assert (= (and b!4758522 ((_ is Cons!53278) (zeroValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909)))))))) b!4758582))

(declare-fun m!5728059 () Bool)

(assert (=> setNonEmpty!27023 m!5728059))

(declare-fun setIsEmpty!27024 () Bool)

(declare-fun setRes!27024 () Bool)

(assert (=> setIsEmpty!27024 setRes!27024))

(declare-fun b!4758584 () Bool)

(declare-fun e!2969069 () Bool)

(declare-fun tp!1352203 () Bool)

(assert (=> b!4758584 (= e!2969069 (and setRes!27024 tp!1352203))))

(declare-fun condSetEmpty!27024 () Bool)

(assert (=> b!4758584 (= condSetEmpty!27024 (= (_1!30885 (_1!30886 (h!59689 (minValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))))) ((as const (Array Context!5842 Bool)) false)))))

(assert (=> b!4758522 (= tp!1352152 e!2969069)))

(declare-fun b!4758585 () Bool)

(declare-fun e!2969070 () Bool)

(declare-fun tp!1352204 () Bool)

(assert (=> b!4758585 (= e!2969070 tp!1352204)))

(declare-fun setNonEmpty!27024 () Bool)

(declare-fun tp!1352202 () Bool)

(declare-fun setElem!27024 () Context!5842)

(assert (=> setNonEmpty!27024 (= setRes!27024 (and tp!1352202 (inv!68745 setElem!27024) e!2969070))))

(declare-fun setRest!27024 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27024 (= (_1!30885 (_1!30886 (h!59689 (minValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27024 true) setRest!27024))))

(assert (= (and b!4758584 condSetEmpty!27024) setIsEmpty!27024))

(assert (= (and b!4758584 (not condSetEmpty!27024)) setNonEmpty!27024))

(assert (= setNonEmpty!27024 b!4758585))

(assert (= (and b!4758522 ((_ is Cons!53278) (minValue!5116 (v!47340 (underlying!9873 (v!47341 (underlying!9874 (cache!4559 thiss!28909)))))))) b!4758584))

(declare-fun m!5728061 () Bool)

(assert (=> setNonEmpty!27024 m!5728061))

(declare-fun b!4758586 () Bool)

(declare-fun tp!1352207 () Bool)

(declare-fun tp!1352205 () Bool)

(declare-fun e!2969072 () Bool)

(assert (=> b!4758586 (= e!2969072 (and (inv!68741 (left!39065 (c!811931 localTotalInput!8))) tp!1352207 (inv!68741 (right!39395 (c!811931 localTotalInput!8))) tp!1352205))))

(declare-fun b!4758588 () Bool)

(declare-fun e!2969071 () Bool)

(declare-fun tp!1352206 () Bool)

(assert (=> b!4758588 (= e!2969071 tp!1352206)))

(declare-fun b!4758587 () Bool)

(assert (=> b!4758587 (= e!2969072 (and (inv!68744 (xs!17778 (c!811931 localTotalInput!8))) e!2969071))))

(assert (=> b!4758517 (= tp!1352156 (and (inv!68741 (c!811931 localTotalInput!8)) e!2969072))))

(assert (= (and b!4758517 ((_ is Node!14472) (c!811931 localTotalInput!8))) b!4758586))

(assert (= b!4758587 b!4758588))

(assert (= (and b!4758517 ((_ is Leaf!23560) (c!811931 localTotalInput!8))) b!4758587))

(declare-fun m!5728063 () Bool)

(assert (=> b!4758586 m!5728063))

(declare-fun m!5728065 () Bool)

(assert (=> b!4758586 m!5728065))

(declare-fun m!5728067 () Bool)

(assert (=> b!4758587 m!5728067))

(assert (=> b!4758517 m!5728016))

(declare-fun setIsEmpty!27025 () Bool)

(declare-fun setRes!27025 () Bool)

(assert (=> setIsEmpty!27025 setRes!27025))

(declare-fun b!4758589 () Bool)

(declare-fun e!2969073 () Bool)

(declare-fun tp!1352209 () Bool)

(assert (=> b!4758589 (= e!2969073 (and setRes!27025 tp!1352209))))

(declare-fun condSetEmpty!27025 () Bool)

(assert (=> b!4758589 (= condSetEmpty!27025 (= (_1!30885 (_1!30886 (h!59689 mapDefault!21497))) ((as const (Array Context!5842 Bool)) false)))))

(assert (=> b!4758520 (= tp!1352157 e!2969073)))

(declare-fun b!4758590 () Bool)

(declare-fun e!2969074 () Bool)

(declare-fun tp!1352210 () Bool)

(assert (=> b!4758590 (= e!2969074 tp!1352210)))

(declare-fun tp!1352208 () Bool)

(declare-fun setNonEmpty!27025 () Bool)

(declare-fun setElem!27025 () Context!5842)

(assert (=> setNonEmpty!27025 (= setRes!27025 (and tp!1352208 (inv!68745 setElem!27025) e!2969074))))

(declare-fun setRest!27025 () (InoxSet Context!5842))

(assert (=> setNonEmpty!27025 (= (_1!30885 (_1!30886 (h!59689 mapDefault!21497))) ((_ map or) (store ((as const (Array Context!5842 Bool)) false) setElem!27025 true) setRest!27025))))

(assert (= (and b!4758589 condSetEmpty!27025) setIsEmpty!27025))

(assert (= (and b!4758589 (not condSetEmpty!27025)) setNonEmpty!27025))

(assert (= setNonEmpty!27025 b!4758590))

(assert (= (and b!4758520 ((_ is Cons!53278) mapDefault!21497)) b!4758589))

(declare-fun m!5728069 () Bool)

(assert (=> setNonEmpty!27025 m!5728069))

(check-sat (not setNonEmpty!27022) (not d!1521142) (not b!4758582) (not setNonEmpty!27018) (not setNonEmpty!27019) (not b!4758586) (not b_next!129953) (not b!4758585) (not b!4758572) (not b_next!129951) (not b!4758543) (not setNonEmpty!27024) (not b!4758541) (not b!4758516) (not b!4758557) (not setNonEmpty!27025) (not b!4758584) (not b!4758558) (not b!4758537) (not mapNonEmpty!21500) (not d!1521138) (not b!4758590) (not b!4758583) (not b!4758545) (not d!1521130) (not b!4758559) (not b!4758571) (not b!4758542) (not b!4758573) (not b!4758587) (not b!4758548) (not b!4758589) (not b!4758538) (not b!4758517) (not b!4758588) (not b!4758581) b_and!340855 (not b!4758532) (not b!4758580) (not b!4758570) b_and!340857 (not d!1521132) (not setNonEmpty!27023) (not b!4758530))
(check-sat b_and!340855 b_and!340857 (not b_next!129953) (not b_next!129951))
