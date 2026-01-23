; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486688 () Bool)

(assert start!486688)

(declare-fun b!4759121 () Bool)

(declare-fun b_free!129279 () Bool)

(declare-fun b_next!129983 () Bool)

(assert (=> b!4759121 (= b_free!129279 (not b_next!129983))))

(declare-fun tp!1352572 () Bool)

(declare-fun b_and!340891 () Bool)

(assert (=> b!4759121 (= tp!1352572 b_and!340891)))

(declare-fun b!4759119 () Bool)

(declare-fun b_free!129281 () Bool)

(declare-fun b_next!129985 () Bool)

(assert (=> b!4759119 (= b_free!129281 (not b_next!129985))))

(declare-fun tp!1352570 () Bool)

(declare-fun b_and!340893 () Bool)

(assert (=> b!4759119 (= tp!1352570 b_and!340893)))

(declare-fun b!4759129 () Bool)

(assert (=> b!4759129 true))

(declare-fun setIsEmpty!27070 () Bool)

(declare-fun setRes!27070 () Bool)

(assert (=> setIsEmpty!27070 setRes!27070))

(declare-fun b!4759116 () Bool)

(declare-fun e!2969511 () Bool)

(declare-fun e!2969520 () Bool)

(assert (=> b!4759116 (= e!2969511 e!2969520)))

(declare-fun b!4759117 () Bool)

(declare-fun e!2969516 () Bool)

(declare-fun e!2969519 () Bool)

(declare-datatypes ((C!26276 0))(
  ( (C!26277 (val!20126 Int)) )
))
(declare-datatypes ((Regex!13039 0))(
  ( (ElementMatch!13039 (c!811980 C!26276)) (Concat!21358 (regOne!26590 Regex!13039) (regTwo!26590 Regex!13039)) (EmptyExpr!13039) (Star!13039 (reg!13368 Regex!13039)) (EmptyLang!13039) (Union!13039 (regOne!26591 Regex!13039) (regTwo!26591 Regex!13039)) )
))
(declare-datatypes ((List!53426 0))(
  ( (Nil!53302) (Cons!53302 (h!59713 Regex!13039) (t!360780 List!53426)) )
))
(declare-datatypes ((Context!5858 0))(
  ( (Context!5859 (exprs!3429 List!53426)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55218 0))(
  ( (tuple2!55219 (_1!30903 (InoxSet Context!5858)) (_2!30903 Int)) )
))
(declare-datatypes ((tuple2!55220 0))(
  ( (tuple2!55221 (_1!30904 tuple2!55218) (_2!30904 Int)) )
))
(declare-datatypes ((List!53427 0))(
  ( (Nil!53303) (Cons!53303 (h!59714 tuple2!55220) (t!360781 List!53427)) )
))
(declare-datatypes ((List!53428 0))(
  ( (Nil!53304) (Cons!53304 (h!59715 C!26276) (t!360782 List!53428)) )
))
(declare-datatypes ((IArray!29021 0))(
  ( (IArray!29022 (innerList!14568 List!53428)) )
))
(declare-datatypes ((Conc!14480 0))(
  ( (Node!14480 (left!39093 Conc!14480) (right!39423 Conc!14480) (csize!29190 Int) (cheight!14691 Int)) (Leaf!23572 (xs!17786 IArray!29021) (csize!29191 Int)) (Empty!14480) )
))
(declare-datatypes ((Hashable!6502 0))(
  ( (HashableExt!6501 (__x!32271 Int)) )
))
(declare-datatypes ((array!17634 0))(
  ( (array!17635 (arr!7867 (Array (_ BitVec 32) (_ BitVec 64))) (size!36079 (_ BitVec 32))) )
))
(declare-datatypes ((array!17636 0))(
  ( (array!17637 (arr!7868 (Array (_ BitVec 32) List!53427)) (size!36080 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9682 0))(
  ( (LongMapFixedSize!9683 (defaultEntry!5255 Int) (mask!14547 (_ BitVec 32)) (extraKeys!5111 (_ BitVec 32)) (zeroValue!5124 List!53427) (minValue!5124 List!53427) (_size!9707 (_ BitVec 32)) (_keys!5176 array!17634) (_values!5149 array!17636) (_vacant!4906 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19129 0))(
  ( (Cell!19130 (v!47359 LongMapFixedSize!9682)) )
))
(declare-datatypes ((MutLongMap!4841 0))(
  ( (LongMap!4841 (underlying!9889 Cell!19129)) (MutLongMapExt!4840 (__x!32272 Int)) )
))
(declare-datatypes ((Cell!19131 0))(
  ( (Cell!19132 (v!47360 MutLongMap!4841)) )
))
(declare-datatypes ((MutableMap!4725 0))(
  ( (MutableMapExt!4724 (__x!32273 Int)) (HashMap!4725 (underlying!9890 Cell!19131) (hashF!12312 Hashable!6502) (_size!9708 (_ BitVec 32)) (defaultValue!4896 Int)) )
))
(declare-datatypes ((BalanceConc!28450 0))(
  ( (BalanceConc!28451 (c!811981 Conc!14480)) )
))
(declare-datatypes ((CacheFindLongestMatch!648 0))(
  ( (CacheFindLongestMatch!649 (cache!4567 MutableMap!4725) (totalInput!4482 BalanceConc!28450)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!648)

(declare-fun e!2969509 () Bool)

(declare-fun inv!68786 (BalanceConc!28450) Bool)

(assert (=> b!4759117 (= e!2969516 (and e!2969519 (inv!68786 (totalInput!4482 thiss!28909)) e!2969509))))

(declare-fun mapIsEmpty!21530 () Bool)

(declare-fun mapRes!21530 () Bool)

(assert (=> mapIsEmpty!21530 mapRes!21530))

(declare-fun tp!1352569 () Bool)

(declare-fun tp!1352574 () Bool)

(declare-fun e!2969522 () Bool)

(declare-fun array_inv!5661 (array!17634) Bool)

(declare-fun array_inv!5662 (array!17636) Bool)

(assert (=> b!4759119 (= e!2969520 (and tp!1352570 tp!1352569 tp!1352574 (array_inv!5661 (_keys!5176 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) (array_inv!5662 (_values!5149 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) e!2969522))))

(declare-fun b!4759120 () Bool)

(declare-fun tp!1352571 () Bool)

(assert (=> b!4759120 (= e!2969522 (and tp!1352571 mapRes!21530))))

(declare-fun condMapEmpty!21530 () Bool)

(declare-fun mapDefault!21530 () List!53427)

(assert (=> b!4759120 (= condMapEmpty!21530 (= (arr!7868 (_values!5149 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53427)) mapDefault!21530)))))

(declare-fun e!2969510 () Bool)

(assert (=> b!4759121 (= e!2969519 (and e!2969510 tp!1352572))))

(declare-fun b!4759122 () Bool)

(declare-fun e!2969515 () Bool)

(declare-fun e!2969518 () Bool)

(assert (=> b!4759122 (= e!2969515 (not e!2969518))))

(declare-fun res!2018753 () Bool)

(assert (=> b!4759122 (=> res!2018753 e!2969518)))

(declare-fun lt!1924137 () tuple2!55218)

(declare-fun contains!16634 (MutableMap!4725 tuple2!55218) Bool)

(assert (=> b!4759122 (= res!2018753 (not (contains!16634 (cache!4567 thiss!28909) lt!1924137)))))

(declare-fun z!482 () (InoxSet Context!5858))

(declare-fun from!922 () Int)

(assert (=> b!4759122 (= lt!1924137 (tuple2!55219 z!482 from!922))))

(declare-fun localTotalInput!8 () BalanceConc!28450)

(declare-fun validCacheMapFindLongestMatch!124 (MutableMap!4725 BalanceConc!28450) Bool)

(assert (=> b!4759122 (validCacheMapFindLongestMatch!124 (cache!4567 thiss!28909) localTotalInput!8)))

(declare-fun b!4759123 () Bool)

(declare-fun e!2969514 () Bool)

(assert (=> b!4759123 (= e!2969514 e!2969511)))

(declare-fun b!4759124 () Bool)

(declare-fun lt!1924138 () MutLongMap!4841)

(get-info :version)

(assert (=> b!4759124 (= e!2969510 (and e!2969514 ((_ is LongMap!4841) lt!1924138)))))

(assert (=> b!4759124 (= lt!1924138 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))

(declare-fun b!4759125 () Bool)

(declare-fun tp!1352568 () Bool)

(declare-fun inv!68787 (Conc!14480) Bool)

(assert (=> b!4759125 (= e!2969509 (and (inv!68787 (c!811981 (totalInput!4482 thiss!28909))) tp!1352568))))

(declare-fun e!2969521 () Bool)

(declare-fun tp!1352566 () Bool)

(declare-fun setNonEmpty!27070 () Bool)

(declare-fun setElem!27070 () Context!5858)

(declare-fun inv!68788 (Context!5858) Bool)

(assert (=> setNonEmpty!27070 (= setRes!27070 (and tp!1352566 (inv!68788 setElem!27070) e!2969521))))

(declare-fun setRest!27070 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27070 (= z!482 ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27070 true) setRest!27070))))

(declare-fun b!4759126 () Bool)

(declare-fun res!2018754 () Bool)

(assert (=> b!4759126 (=> (not res!2018754) (not e!2969515))))

(assert (=> b!4759126 (= res!2018754 (validCacheMapFindLongestMatch!124 (cache!4567 thiss!28909) (totalInput!4482 thiss!28909)))))

(declare-fun b!4759127 () Bool)

(declare-fun e!2969517 () Bool)

(declare-fun tp!1352576 () Bool)

(assert (=> b!4759127 (= e!2969517 (and (inv!68787 (c!811981 localTotalInput!8)) tp!1352576))))

(declare-fun mapNonEmpty!21530 () Bool)

(declare-fun tp!1352573 () Bool)

(declare-fun tp!1352575 () Bool)

(assert (=> mapNonEmpty!21530 (= mapRes!21530 (and tp!1352573 tp!1352575))))

(declare-fun mapRest!21530 () (Array (_ BitVec 32) List!53427))

(declare-fun mapValue!21530 () List!53427)

(declare-fun mapKey!21530 () (_ BitVec 32))

(assert (=> mapNonEmpty!21530 (= (arr!7868 (_values!5149 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) (store mapRest!21530 mapKey!21530 mapValue!21530))))

(declare-fun b!4759118 () Bool)

(declare-fun tp!1352567 () Bool)

(assert (=> b!4759118 (= e!2969521 tp!1352567)))

(declare-fun res!2018756 () Bool)

(assert (=> start!486688 (=> (not res!2018756) (not e!2969515))))

(assert (=> start!486688 (= res!2018756 (= localTotalInput!8 (totalInput!4482 thiss!28909)))))

(assert (=> start!486688 e!2969515))

(assert (=> start!486688 (and (inv!68786 localTotalInput!8) e!2969517)))

(declare-fun inv!68789 (CacheFindLongestMatch!648) Bool)

(assert (=> start!486688 (and (inv!68789 thiss!28909) e!2969516)))

(assert (=> start!486688 true))

(declare-fun condSetEmpty!27070 () Bool)

(assert (=> start!486688 (= condSetEmpty!27070 (= z!482 ((as const (Array Context!5858 Bool)) false)))))

(assert (=> start!486688 setRes!27070))

(declare-fun b!4759128 () Bool)

(declare-fun e!2969513 () Bool)

(declare-fun valid!3845 (MutableMap!4725) Bool)

(assert (=> b!4759128 (= e!2969513 (valid!3845 (cache!4567 thiss!28909)))))

(assert (=> b!4759129 (= e!2969518 e!2969513)))

(declare-fun res!2018755 () Bool)

(assert (=> b!4759129 (=> res!2018755 e!2969513)))

(assert (=> b!4759129 (= res!2018755 (not ((_ is HashMap!4725) (cache!4567 thiss!28909))))))

(declare-fun validCacheMapFindLongestMatchBody!17 (tuple2!55220 BalanceConc!28450) Bool)

(declare-fun apply!12521 (MutableMap!4725 tuple2!55218) Int)

(assert (=> b!4759129 (validCacheMapFindLongestMatchBody!17 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)) localTotalInput!8)))

(declare-datatypes ((Unit!137771 0))(
  ( (Unit!137772) )
))
(declare-fun lt!1924139 () Unit!137771)

(declare-fun lambda!223653 () Int)

(declare-fun lemmaForallPairsThenForLookup!64 (MutableMap!4725 tuple2!55218 Int) Unit!137771)

(assert (=> b!4759129 (= lt!1924139 (lemmaForallPairsThenForLookup!64 (cache!4567 thiss!28909) lt!1924137 lambda!223653))))

(assert (= (and start!486688 res!2018756) b!4759126))

(assert (= (and b!4759126 res!2018754) b!4759122))

(assert (= (and b!4759122 (not res!2018753)) b!4759129))

(assert (= (and b!4759129 (not res!2018755)) b!4759128))

(assert (= start!486688 b!4759127))

(assert (= (and b!4759120 condMapEmpty!21530) mapIsEmpty!21530))

(assert (= (and b!4759120 (not condMapEmpty!21530)) mapNonEmpty!21530))

(assert (= b!4759119 b!4759120))

(assert (= b!4759116 b!4759119))

(assert (= b!4759123 b!4759116))

(assert (= (and b!4759124 ((_ is LongMap!4841) (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) b!4759123))

(assert (= b!4759121 b!4759124))

(assert (= (and b!4759117 ((_ is HashMap!4725) (cache!4567 thiss!28909))) b!4759121))

(assert (= b!4759117 b!4759125))

(assert (= start!486688 b!4759117))

(assert (= (and start!486688 condSetEmpty!27070) setIsEmpty!27070))

(assert (= (and start!486688 (not condSetEmpty!27070)) setNonEmpty!27070))

(assert (= setNonEmpty!27070 b!4759118))

(declare-fun m!5728493 () Bool)

(assert (=> b!4759129 m!5728493))

(declare-fun m!5728495 () Bool)

(assert (=> b!4759129 m!5728495))

(declare-fun m!5728497 () Bool)

(assert (=> b!4759129 m!5728497))

(declare-fun m!5728499 () Bool)

(assert (=> mapNonEmpty!21530 m!5728499))

(declare-fun m!5728501 () Bool)

(assert (=> setNonEmpty!27070 m!5728501))

(declare-fun m!5728503 () Bool)

(assert (=> b!4759125 m!5728503))

(declare-fun m!5728505 () Bool)

(assert (=> start!486688 m!5728505))

(declare-fun m!5728507 () Bool)

(assert (=> start!486688 m!5728507))

(declare-fun m!5728509 () Bool)

(assert (=> b!4759128 m!5728509))

(declare-fun m!5728511 () Bool)

(assert (=> b!4759122 m!5728511))

(declare-fun m!5728513 () Bool)

(assert (=> b!4759122 m!5728513))

(declare-fun m!5728515 () Bool)

(assert (=> b!4759127 m!5728515))

(declare-fun m!5728517 () Bool)

(assert (=> b!4759126 m!5728517))

(declare-fun m!5728519 () Bool)

(assert (=> b!4759119 m!5728519))

(declare-fun m!5728521 () Bool)

(assert (=> b!4759119 m!5728521))

(declare-fun m!5728523 () Bool)

(assert (=> b!4759117 m!5728523))

(check-sat (not b!4759129) (not b!4759118) (not b!4759125) (not setNonEmpty!27070) (not b_next!129983) b_and!340891 (not mapNonEmpty!21530) (not b!4759117) (not b!4759122) (not b!4759127) (not b!4759120) (not start!486688) (not b!4759126) (not b!4759128) (not b_next!129985) (not b!4759119) b_and!340893)
(check-sat b_and!340891 b_and!340893 (not b_next!129985) (not b_next!129983))
(get-model)

(declare-fun d!1521200 () Bool)

(declare-fun c!811984 () Bool)

(assert (=> d!1521200 (= c!811984 ((_ is Node!14480) (c!811981 localTotalInput!8)))))

(declare-fun e!2969527 () Bool)

(assert (=> d!1521200 (= (inv!68787 (c!811981 localTotalInput!8)) e!2969527)))

(declare-fun b!4759138 () Bool)

(declare-fun inv!68790 (Conc!14480) Bool)

(assert (=> b!4759138 (= e!2969527 (inv!68790 (c!811981 localTotalInput!8)))))

(declare-fun b!4759139 () Bool)

(declare-fun e!2969528 () Bool)

(assert (=> b!4759139 (= e!2969527 e!2969528)))

(declare-fun res!2018759 () Bool)

(assert (=> b!4759139 (= res!2018759 (not ((_ is Leaf!23572) (c!811981 localTotalInput!8))))))

(assert (=> b!4759139 (=> res!2018759 e!2969528)))

(declare-fun b!4759140 () Bool)

(declare-fun inv!68791 (Conc!14480) Bool)

(assert (=> b!4759140 (= e!2969528 (inv!68791 (c!811981 localTotalInput!8)))))

(assert (= (and d!1521200 c!811984) b!4759138))

(assert (= (and d!1521200 (not c!811984)) b!4759139))

(assert (= (and b!4759139 (not res!2018759)) b!4759140))

(declare-fun m!5728525 () Bool)

(assert (=> b!4759138 m!5728525))

(declare-fun m!5728527 () Bool)

(assert (=> b!4759140 m!5728527))

(assert (=> b!4759127 d!1521200))

(declare-fun d!1521202 () Bool)

(declare-fun isBalanced!3905 (Conc!14480) Bool)

(assert (=> d!1521202 (= (inv!68786 localTotalInput!8) (isBalanced!3905 (c!811981 localTotalInput!8)))))

(declare-fun bs!1147022 () Bool)

(assert (= bs!1147022 d!1521202))

(declare-fun m!5728529 () Bool)

(assert (=> bs!1147022 m!5728529))

(assert (=> start!486688 d!1521202))

(declare-fun d!1521204 () Bool)

(declare-fun res!2018762 () Bool)

(declare-fun e!2969531 () Bool)

(assert (=> d!1521204 (=> (not res!2018762) (not e!2969531))))

(assert (=> d!1521204 (= res!2018762 ((_ is HashMap!4725) (cache!4567 thiss!28909)))))

(assert (=> d!1521204 (= (inv!68789 thiss!28909) e!2969531)))

(declare-fun b!4759143 () Bool)

(assert (=> b!4759143 (= e!2969531 (validCacheMapFindLongestMatch!124 (cache!4567 thiss!28909) (totalInput!4482 thiss!28909)))))

(assert (= (and d!1521204 res!2018762) b!4759143))

(assert (=> b!4759143 m!5728517))

(assert (=> start!486688 d!1521204))

(declare-fun d!1521206 () Bool)

(declare-fun res!2018767 () Bool)

(declare-fun e!2969534 () Bool)

(assert (=> d!1521206 (=> (not res!2018767) (not e!2969534))))

(declare-fun valid!3846 (MutLongMap!4841) Bool)

(assert (=> d!1521206 (= res!2018767 (valid!3846 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))))

(assert (=> d!1521206 (= (valid!3845 (cache!4567 thiss!28909)) e!2969534)))

(declare-fun b!4759148 () Bool)

(declare-fun res!2018768 () Bool)

(assert (=> b!4759148 (=> (not res!2018768) (not e!2969534))))

(declare-fun lambda!223656 () Int)

(declare-datatypes ((tuple2!55222 0))(
  ( (tuple2!55223 (_1!30905 (_ BitVec 64)) (_2!30905 List!53427)) )
))
(declare-datatypes ((List!53429 0))(
  ( (Nil!53305) (Cons!53305 (h!59716 tuple2!55222) (t!360785 List!53429)) )
))
(declare-fun forall!11821 (List!53429 Int) Bool)

(declare-datatypes ((ListLongMap!4597 0))(
  ( (ListLongMap!4598 (toList!6204 List!53429)) )
))
(declare-fun map!11854 (MutLongMap!4841) ListLongMap!4597)

(assert (=> b!4759148 (= res!2018768 (forall!11821 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) lambda!223656))))

(declare-fun b!4759149 () Bool)

(declare-fun allKeysSameHashInMap!1999 (ListLongMap!4597 Hashable!6502) Bool)

(assert (=> b!4759149 (= e!2969534 (allKeysSameHashInMap!1999 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))) (hashF!12312 (cache!4567 thiss!28909))))))

(assert (= (and d!1521206 res!2018767) b!4759148))

(assert (= (and b!4759148 res!2018768) b!4759149))

(declare-fun m!5728531 () Bool)

(assert (=> d!1521206 m!5728531))

(declare-fun m!5728533 () Bool)

(assert (=> b!4759148 m!5728533))

(declare-fun m!5728535 () Bool)

(assert (=> b!4759148 m!5728535))

(assert (=> b!4759149 m!5728533))

(assert (=> b!4759149 m!5728533))

(declare-fun m!5728537 () Bool)

(assert (=> b!4759149 m!5728537))

(assert (=> b!4759128 d!1521206))

(declare-fun d!1521208 () Bool)

(assert (=> d!1521208 (= (array_inv!5661 (_keys!5176 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) (bvsge (size!36079 (_keys!5176 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759119 d!1521208))

(declare-fun d!1521210 () Bool)

(assert (=> d!1521210 (= (array_inv!5662 (_values!5149 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) (bvsge (size!36080 (_values!5149 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759119 d!1521210))

(declare-fun d!1521212 () Bool)

(declare-fun lambda!223659 () Int)

(declare-fun forall!11822 (List!53426 Int) Bool)

(assert (=> d!1521212 (= (inv!68788 setElem!27070) (forall!11822 (exprs!3429 setElem!27070) lambda!223659))))

(declare-fun bs!1147023 () Bool)

(assert (= bs!1147023 d!1521212))

(declare-fun m!5728539 () Bool)

(assert (=> bs!1147023 m!5728539))

(assert (=> setNonEmpty!27070 d!1521212))

(declare-fun d!1521214 () Bool)

(declare-fun res!2018773 () Bool)

(declare-fun e!2969537 () Bool)

(assert (=> d!1521214 (=> (not res!2018773) (not e!2969537))))

(assert (=> d!1521214 (= res!2018773 (>= (_2!30903 (_1!30904 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)))) 0))))

(assert (=> d!1521214 (= (validCacheMapFindLongestMatchBody!17 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)) localTotalInput!8) e!2969537)))

(declare-fun b!4759154 () Bool)

(declare-fun res!2018774 () Bool)

(assert (=> b!4759154 (=> (not res!2018774) (not e!2969537))))

(declare-fun size!36081 (BalanceConc!28450) Int)

(assert (=> b!4759154 (= res!2018774 (<= (_2!30903 (_1!30904 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)))) (size!36081 localTotalInput!8)))))

(declare-fun b!4759155 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!70 ((InoxSet Context!5858) Int BalanceConc!28450 Int) Int)

(assert (=> b!4759155 (= e!2969537 (= (_2!30904 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137))) (findLongestMatchInnerZipperFastV2!70 (_1!30903 (_1!30904 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)))) (_2!30903 (_1!30904 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)))) localTotalInput!8 (size!36081 localTotalInput!8))))))

(assert (= (and d!1521214 res!2018773) b!4759154))

(assert (= (and b!4759154 res!2018774) b!4759155))

(declare-fun m!5728541 () Bool)

(assert (=> b!4759154 m!5728541))

(assert (=> b!4759155 m!5728541))

(assert (=> b!4759155 m!5728541))

(declare-fun m!5728543 () Bool)

(assert (=> b!4759155 m!5728543))

(assert (=> b!4759129 d!1521214))

(declare-fun bs!1147024 () Bool)

(declare-fun b!4759172 () Bool)

(assert (= bs!1147024 (and b!4759172 b!4759148)))

(declare-fun lambda!223666 () Int)

(assert (=> bs!1147024 (= lambda!223666 lambda!223656)))

(declare-fun b!4759168 () Bool)

(declare-fun e!2969545 () Unit!137771)

(declare-fun Unit!137773 () Unit!137771)

(assert (=> b!4759168 (= e!2969545 Unit!137773)))

(declare-fun b!4759169 () Bool)

(assert (=> b!4759169 false))

(declare-fun lt!1924214 () Unit!137771)

(declare-fun lt!1924201 () Unit!137771)

(assert (=> b!4759169 (= lt!1924214 lt!1924201)))

(declare-fun lt!1924225 () List!53429)

(declare-fun lt!1924216 () (_ BitVec 64))

(declare-fun lt!1924215 () List!53427)

(declare-fun contains!16635 (List!53429 tuple2!55222) Bool)

(assert (=> b!4759169 (contains!16635 lt!1924225 (tuple2!55223 lt!1924216 lt!1924215))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!892 (List!53429 (_ BitVec 64) List!53427) Unit!137771)

(assert (=> b!4759169 (= lt!1924201 (lemmaGetValueByKeyImpliesContainsTuple!892 lt!1924225 lt!1924216 lt!1924215))))

(declare-fun apply!12522 (MutLongMap!4841 (_ BitVec 64)) List!53427)

(assert (=> b!4759169 (= lt!1924215 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924216))))

(assert (=> b!4759169 (= lt!1924225 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))

(declare-fun lt!1924210 () Unit!137771)

(declare-fun lt!1924218 () Unit!137771)

(assert (=> b!4759169 (= lt!1924210 lt!1924218)))

(declare-fun lt!1924207 () List!53429)

(declare-datatypes ((Option!12589 0))(
  ( (None!12588) (Some!12588 (v!47361 List!53427)) )
))
(declare-fun isDefined!9770 (Option!12589) Bool)

(declare-fun getValueByKey!2128 (List!53429 (_ BitVec 64)) Option!12589)

(assert (=> b!4759169 (isDefined!9770 (getValueByKey!2128 lt!1924207 lt!1924216))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1950 (List!53429 (_ BitVec 64)) Unit!137771)

(assert (=> b!4759169 (= lt!1924218 (lemmaContainsKeyImpliesGetValueByKeyDefined!1950 lt!1924207 lt!1924216))))

(assert (=> b!4759169 (= lt!1924207 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))

(declare-fun Unit!137774 () Unit!137771)

(assert (=> b!4759169 (= e!2969545 Unit!137774)))

(declare-fun e!2969546 () Bool)

(declare-fun lt!1924203 () Int)

(declare-fun b!4759170 () Bool)

(declare-fun dynLambda!21914 (Int tuple2!55218) Int)

(assert (=> b!4759170 (= e!2969546 (= lt!1924203 (dynLambda!21914 (defaultValue!4896 (cache!4567 thiss!28909)) lt!1924137)))))

(declare-fun d!1521216 () Bool)

(assert (=> d!1521216 e!2969546))

(declare-fun c!811993 () Bool)

(assert (=> d!1521216 (= c!811993 (contains!16634 (cache!4567 thiss!28909) lt!1924137))))

(declare-fun e!2969544 () Int)

(assert (=> d!1521216 (= lt!1924203 e!2969544)))

(declare-fun c!811992 () Bool)

(assert (=> d!1521216 (= c!811992 (not (contains!16634 (cache!4567 thiss!28909) lt!1924137)))))

(assert (=> d!1521216 (valid!3845 (cache!4567 thiss!28909))))

(assert (=> d!1521216 (= (apply!12521 (cache!4567 thiss!28909) lt!1924137) lt!1924203)))

(declare-fun b!4759171 () Bool)

(declare-datatypes ((Option!12590 0))(
  ( (None!12589) (Some!12589 (v!47362 Int)) )
))
(declare-fun get!17946 (Option!12590) Int)

(declare-fun getValueByKey!2129 (List!53427 tuple2!55218) Option!12590)

(declare-datatypes ((ListMap!5705 0))(
  ( (ListMap!5706 (toList!6205 List!53427)) )
))
(declare-fun map!11855 (MutableMap!4725) ListMap!5705)

(assert (=> b!4759171 (= e!2969546 (= lt!1924203 (get!17946 (getValueByKey!2129 (toList!6205 (map!11855 (cache!4567 thiss!28909))) lt!1924137))))))

(declare-datatypes ((Option!12591 0))(
  ( (None!12590) (Some!12590 (v!47363 tuple2!55220)) )
))
(declare-fun get!17947 (Option!12591) tuple2!55220)

(declare-fun getPair!614 (List!53427 tuple2!55218) Option!12591)

(assert (=> b!4759172 (= e!2969544 (_2!30904 (get!17947 (getPair!614 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924216) lt!1924137))))))

(declare-fun hash!4515 (Hashable!6502 tuple2!55218) (_ BitVec 64))

(assert (=> b!4759172 (= lt!1924216 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun c!811991 () Bool)

(assert (=> b!4759172 (= c!811991 (not (contains!16635 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) (tuple2!55223 lt!1924216 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924216)))))))

(declare-fun lt!1924204 () Unit!137771)

(assert (=> b!4759172 (= lt!1924204 e!2969545)))

(declare-fun lt!1924220 () Unit!137771)

(declare-fun forallContained!3824 (List!53429 Int tuple2!55222) Unit!137771)

(assert (=> b!4759172 (= lt!1924220 (forallContained!3824 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) lambda!223666 (tuple2!55223 lt!1924216 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924216))))))

(declare-fun lt!1924226 () ListLongMap!4597)

(assert (=> b!4759172 (= lt!1924226 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))))

(declare-fun lt!1924212 () Unit!137771)

(declare-fun lemmaGetPairGetSameValueAsMap!46 (ListLongMap!4597 tuple2!55218 Int Hashable!6502) Unit!137771)

(assert (=> b!4759172 (= lt!1924212 (lemmaGetPairGetSameValueAsMap!46 lt!1924226 lt!1924137 (_2!30904 (get!17947 (getPair!614 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924216) lt!1924137))) (hashF!12312 (cache!4567 thiss!28909))))))

(declare-fun lt!1924209 () Unit!137771)

(declare-fun lemmaInGenMapThenLongMapContainsHash!820 (ListLongMap!4597 tuple2!55218 Hashable!6502) Unit!137771)

(assert (=> b!4759172 (= lt!1924209 (lemmaInGenMapThenLongMapContainsHash!820 lt!1924226 lt!1924137 (hashF!12312 (cache!4567 thiss!28909))))))

(declare-fun contains!16636 (ListLongMap!4597 (_ BitVec 64)) Bool)

(assert (=> b!4759172 (contains!16636 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun lt!1924202 () Unit!137771)

(assert (=> b!4759172 (= lt!1924202 lt!1924209)))

(declare-fun lt!1924227 () (_ BitVec 64))

(assert (=> b!4759172 (= lt!1924227 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun lt!1924213 () List!53427)

(declare-fun apply!12523 (ListLongMap!4597 (_ BitVec 64)) List!53427)

(assert (=> b!4759172 (= lt!1924213 (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)))))

(declare-fun lt!1924200 () Unit!137771)

(declare-fun lemmaGetValueImpliesTupleContained!419 (ListLongMap!4597 (_ BitVec 64) List!53427) Unit!137771)

(assert (=> b!4759172 (= lt!1924200 (lemmaGetValueImpliesTupleContained!419 lt!1924226 lt!1924227 lt!1924213))))

(assert (=> b!4759172 (contains!16635 (toList!6204 lt!1924226) (tuple2!55223 lt!1924227 lt!1924213))))

(declare-fun lt!1924223 () Unit!137771)

(assert (=> b!4759172 (= lt!1924223 lt!1924200)))

(declare-fun lt!1924211 () Unit!137771)

(assert (=> b!4759172 (= lt!1924211 (forallContained!3824 (toList!6204 lt!1924226) lambda!223666 (tuple2!55223 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137) (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)))))))

(declare-fun lt!1924228 () Unit!137771)

(declare-fun lemmaInGenMapThenGetPairDefined!410 (ListLongMap!4597 tuple2!55218 Hashable!6502) Unit!137771)

(assert (=> b!4759172 (= lt!1924228 (lemmaInGenMapThenGetPairDefined!410 lt!1924226 lt!1924137 (hashF!12312 (cache!4567 thiss!28909))))))

(declare-fun lt!1924229 () Unit!137771)

(assert (=> b!4759172 (= lt!1924229 (lemmaInGenMapThenLongMapContainsHash!820 lt!1924226 lt!1924137 (hashF!12312 (cache!4567 thiss!28909))))))

(declare-fun lt!1924217 () Unit!137771)

(assert (=> b!4759172 (= lt!1924217 lt!1924229)))

(declare-fun lt!1924205 () (_ BitVec 64))

(assert (=> b!4759172 (= lt!1924205 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun lt!1924219 () List!53427)

(assert (=> b!4759172 (= lt!1924219 (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)))))

(declare-fun lt!1924208 () Unit!137771)

(assert (=> b!4759172 (= lt!1924208 (lemmaGetValueImpliesTupleContained!419 lt!1924226 lt!1924205 lt!1924219))))

(assert (=> b!4759172 (contains!16635 (toList!6204 lt!1924226) (tuple2!55223 lt!1924205 lt!1924219))))

(declare-fun lt!1924221 () Unit!137771)

(assert (=> b!4759172 (= lt!1924221 lt!1924208)))

(declare-fun lt!1924206 () Unit!137771)

(assert (=> b!4759172 (= lt!1924206 (forallContained!3824 (toList!6204 lt!1924226) lambda!223666 (tuple2!55223 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137) (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)))))))

(declare-fun isDefined!9771 (Option!12591) Bool)

(assert (=> b!4759172 (isDefined!9771 (getPair!614 (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)) lt!1924137))))

(declare-fun lt!1924224 () Unit!137771)

(assert (=> b!4759172 (= lt!1924224 lt!1924228)))

(declare-fun extractMap!2114 (List!53429) ListMap!5705)

(assert (=> b!4759172 (= (_2!30904 (get!17947 (getPair!614 (apply!12523 lt!1924226 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137)) lt!1924137))) (get!17946 (getValueByKey!2129 (toList!6205 (extractMap!2114 (toList!6204 lt!1924226))) lt!1924137)))))

(declare-fun lt!1924222 () Unit!137771)

(assert (=> b!4759172 (= lt!1924222 lt!1924212)))

(declare-fun b!4759173 () Bool)

(assert (=> b!4759173 (= e!2969544 (dynLambda!21914 (defaultValue!4896 (cache!4567 thiss!28909)) lt!1924137))))

(assert (= (and d!1521216 c!811992) b!4759173))

(assert (= (and d!1521216 (not c!811992)) b!4759172))

(assert (= (and b!4759172 c!811991) b!4759169))

(assert (= (and b!4759172 (not c!811991)) b!4759168))

(assert (= (and d!1521216 c!811993) b!4759171))

(assert (= (and d!1521216 (not c!811993)) b!4759170))

(declare-fun b_lambda!183777 () Bool)

(assert (=> (not b_lambda!183777) (not b!4759170)))

(declare-fun t!360784 () Bool)

(declare-fun tb!257407 () Bool)

(assert (=> (and b!4759121 (= (defaultValue!4896 (cache!4567 thiss!28909)) (defaultValue!4896 (cache!4567 thiss!28909))) t!360784) tb!257407))

(declare-fun result!318890 () Bool)

(assert (=> tb!257407 (= result!318890 true)))

(assert (=> b!4759170 t!360784))

(declare-fun b_and!340895 () Bool)

(assert (= b_and!340891 (and (=> t!360784 result!318890) b_and!340895)))

(declare-fun b_lambda!183779 () Bool)

(assert (=> (not b_lambda!183779) (not b!4759173)))

(assert (=> b!4759173 t!360784))

(declare-fun b_and!340897 () Bool)

(assert (= b_and!340895 (and (=> t!360784 result!318890) b_and!340897)))

(declare-fun m!5728545 () Bool)

(assert (=> b!4759172 m!5728545))

(declare-fun m!5728547 () Bool)

(assert (=> b!4759172 m!5728547))

(declare-fun m!5728549 () Bool)

(assert (=> b!4759172 m!5728549))

(declare-fun m!5728551 () Bool)

(assert (=> b!4759172 m!5728551))

(declare-fun m!5728553 () Bool)

(assert (=> b!4759172 m!5728553))

(declare-fun m!5728555 () Bool)

(assert (=> b!4759172 m!5728555))

(declare-fun m!5728557 () Bool)

(assert (=> b!4759172 m!5728557))

(declare-fun m!5728559 () Bool)

(assert (=> b!4759172 m!5728559))

(declare-fun m!5728561 () Bool)

(assert (=> b!4759172 m!5728561))

(declare-fun m!5728563 () Bool)

(assert (=> b!4759172 m!5728563))

(declare-fun m!5728565 () Bool)

(assert (=> b!4759172 m!5728565))

(declare-fun m!5728567 () Bool)

(assert (=> b!4759172 m!5728567))

(assert (=> b!4759172 m!5728565))

(declare-fun m!5728569 () Bool)

(assert (=> b!4759172 m!5728569))

(declare-fun m!5728571 () Bool)

(assert (=> b!4759172 m!5728571))

(assert (=> b!4759172 m!5728533))

(assert (=> b!4759172 m!5728557))

(assert (=> b!4759172 m!5728563))

(assert (=> b!4759172 m!5728565))

(declare-fun m!5728573 () Bool)

(assert (=> b!4759172 m!5728573))

(assert (=> b!4759172 m!5728549))

(assert (=> b!4759172 m!5728557))

(declare-fun m!5728575 () Bool)

(assert (=> b!4759172 m!5728575))

(assert (=> b!4759172 m!5728571))

(declare-fun m!5728577 () Bool)

(assert (=> b!4759172 m!5728577))

(declare-fun m!5728579 () Bool)

(assert (=> b!4759172 m!5728579))

(declare-fun m!5728581 () Bool)

(assert (=> b!4759172 m!5728581))

(declare-fun m!5728583 () Bool)

(assert (=> b!4759172 m!5728583))

(declare-fun m!5728585 () Bool)

(assert (=> b!4759172 m!5728585))

(declare-fun m!5728587 () Bool)

(assert (=> b!4759172 m!5728587))

(assert (=> b!4759172 m!5728585))

(assert (=> b!4759172 m!5728551))

(declare-fun m!5728589 () Bool)

(assert (=> b!4759169 m!5728589))

(declare-fun m!5728591 () Bool)

(assert (=> b!4759169 m!5728591))

(declare-fun m!5728593 () Bool)

(assert (=> b!4759169 m!5728593))

(assert (=> b!4759169 m!5728585))

(assert (=> b!4759169 m!5728593))

(declare-fun m!5728595 () Bool)

(assert (=> b!4759169 m!5728595))

(assert (=> b!4759169 m!5728533))

(declare-fun m!5728597 () Bool)

(assert (=> b!4759169 m!5728597))

(declare-fun m!5728599 () Bool)

(assert (=> b!4759170 m!5728599))

(assert (=> b!4759173 m!5728599))

(assert (=> d!1521216 m!5728511))

(assert (=> d!1521216 m!5728509))

(declare-fun m!5728601 () Bool)

(assert (=> b!4759171 m!5728601))

(declare-fun m!5728603 () Bool)

(assert (=> b!4759171 m!5728603))

(assert (=> b!4759171 m!5728603))

(declare-fun m!5728605 () Bool)

(assert (=> b!4759171 m!5728605))

(assert (=> b!4759129 d!1521216))

(declare-fun d!1521218 () Bool)

(declare-fun dynLambda!21915 (Int tuple2!55220) Bool)

(assert (=> d!1521218 (dynLambda!21915 lambda!223653 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)))))

(declare-fun lt!1924232 () Unit!137771)

(declare-fun choose!33900 (MutableMap!4725 tuple2!55218 Int) Unit!137771)

(assert (=> d!1521218 (= lt!1924232 (choose!33900 (cache!4567 thiss!28909) lt!1924137 lambda!223653))))

(assert (=> d!1521218 (valid!3845 (cache!4567 thiss!28909))))

(assert (=> d!1521218 (= (lemmaForallPairsThenForLookup!64 (cache!4567 thiss!28909) lt!1924137 lambda!223653) lt!1924232)))

(declare-fun b_lambda!183781 () Bool)

(assert (=> (not b_lambda!183781) (not d!1521218)))

(declare-fun bs!1147025 () Bool)

(assert (= bs!1147025 d!1521218))

(assert (=> bs!1147025 m!5728493))

(declare-fun m!5728607 () Bool)

(assert (=> bs!1147025 m!5728607))

(declare-fun m!5728609 () Bool)

(assert (=> bs!1147025 m!5728609))

(assert (=> bs!1147025 m!5728509))

(assert (=> b!4759129 d!1521218))

(declare-fun d!1521220 () Bool)

(declare-fun c!811994 () Bool)

(assert (=> d!1521220 (= c!811994 ((_ is Node!14480) (c!811981 (totalInput!4482 thiss!28909))))))

(declare-fun e!2969547 () Bool)

(assert (=> d!1521220 (= (inv!68787 (c!811981 (totalInput!4482 thiss!28909))) e!2969547)))

(declare-fun b!4759174 () Bool)

(assert (=> b!4759174 (= e!2969547 (inv!68790 (c!811981 (totalInput!4482 thiss!28909))))))

(declare-fun b!4759175 () Bool)

(declare-fun e!2969548 () Bool)

(assert (=> b!4759175 (= e!2969547 e!2969548)))

(declare-fun res!2018775 () Bool)

(assert (=> b!4759175 (= res!2018775 (not ((_ is Leaf!23572) (c!811981 (totalInput!4482 thiss!28909)))))))

(assert (=> b!4759175 (=> res!2018775 e!2969548)))

(declare-fun b!4759176 () Bool)

(assert (=> b!4759176 (= e!2969548 (inv!68791 (c!811981 (totalInput!4482 thiss!28909))))))

(assert (= (and d!1521220 c!811994) b!4759174))

(assert (= (and d!1521220 (not c!811994)) b!4759175))

(assert (= (and b!4759175 (not res!2018775)) b!4759176))

(declare-fun m!5728611 () Bool)

(assert (=> b!4759174 m!5728611))

(declare-fun m!5728613 () Bool)

(assert (=> b!4759176 m!5728613))

(assert (=> b!4759125 d!1521220))

(declare-fun bs!1147026 () Bool)

(declare-fun b!4759201 () Bool)

(assert (= bs!1147026 (and b!4759201 b!4759148)))

(declare-fun lambda!223669 () Int)

(assert (=> bs!1147026 (= lambda!223669 lambda!223656)))

(declare-fun bs!1147027 () Bool)

(assert (= bs!1147027 (and b!4759201 b!4759172)))

(assert (=> bs!1147027 (= lambda!223669 lambda!223666)))

(declare-fun b!4759199 () Bool)

(declare-fun e!2969564 () Bool)

(declare-fun call!333652 () Bool)

(assert (=> b!4759199 (= e!2969564 call!333652)))

(declare-fun b!4759200 () Bool)

(assert (=> b!4759200 false))

(declare-fun lt!1924277 () Unit!137771)

(declare-fun lt!1924291 () Unit!137771)

(assert (=> b!4759200 (= lt!1924277 lt!1924291)))

(declare-fun lt!1924282 () List!53429)

(declare-fun lt!1924274 () (_ BitVec 64))

(declare-fun lt!1924278 () List!53427)

(assert (=> b!4759200 (contains!16635 lt!1924282 (tuple2!55223 lt!1924274 lt!1924278))))

(assert (=> b!4759200 (= lt!1924291 (lemmaGetValueByKeyImpliesContainsTuple!892 lt!1924282 lt!1924274 lt!1924278))))

(assert (=> b!4759200 (= lt!1924278 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274))))

(assert (=> b!4759200 (= lt!1924282 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))

(declare-fun lt!1924283 () Unit!137771)

(declare-fun lt!1924280 () Unit!137771)

(assert (=> b!4759200 (= lt!1924283 lt!1924280)))

(declare-fun lt!1924275 () List!53429)

(assert (=> b!4759200 (isDefined!9770 (getValueByKey!2128 lt!1924275 lt!1924274))))

(assert (=> b!4759200 (= lt!1924280 (lemmaContainsKeyImpliesGetValueByKeyDefined!1950 lt!1924275 lt!1924274))))

(assert (=> b!4759200 (= lt!1924275 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))

(declare-fun lt!1924287 () Unit!137771)

(declare-fun lt!1924273 () Unit!137771)

(assert (=> b!4759200 (= lt!1924287 lt!1924273)))

(declare-fun lt!1924281 () List!53429)

(declare-fun containsKey!3633 (List!53429 (_ BitVec 64)) Bool)

(assert (=> b!4759200 (containsKey!3633 lt!1924281 lt!1924274)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!179 (List!53429 (_ BitVec 64)) Unit!137771)

(assert (=> b!4759200 (= lt!1924273 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!179 lt!1924281 lt!1924274))))

(assert (=> b!4759200 (= lt!1924281 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))

(declare-fun e!2969568 () Unit!137771)

(declare-fun Unit!137775 () Unit!137771)

(assert (=> b!4759200 (= e!2969568 Unit!137775)))

(declare-fun bm!333647 () Bool)

(declare-fun call!333655 () ListLongMap!4597)

(assert (=> bm!333647 (= call!333655 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))))

(declare-fun call!333653 () List!53427)

(declare-fun lt!1924290 () ListLongMap!4597)

(declare-fun c!812005 () Bool)

(declare-fun call!333654 () (_ BitVec 64))

(declare-fun bm!333648 () Bool)

(assert (=> bm!333648 (= call!333653 (apply!12523 (ite c!812005 lt!1924290 call!333655) call!333654))))

(declare-fun e!2969563 () Unit!137771)

(assert (=> b!4759201 (= e!2969563 (forallContained!3824 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) lambda!223669 (tuple2!55223 lt!1924274 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274))))))

(declare-fun c!812004 () Bool)

(assert (=> b!4759201 (= c!812004 (not (contains!16635 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))) (tuple2!55223 lt!1924274 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274)))))))

(declare-fun lt!1924276 () Unit!137771)

(assert (=> b!4759201 (= lt!1924276 e!2969568)))

(declare-fun d!1521222 () Bool)

(declare-fun lt!1924285 () Bool)

(declare-fun contains!16637 (ListMap!5705 tuple2!55218) Bool)

(assert (=> d!1521222 (= lt!1924285 (contains!16637 (map!11855 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun e!2969566 () Bool)

(assert (=> d!1521222 (= lt!1924285 e!2969566)))

(declare-fun res!2018784 () Bool)

(assert (=> d!1521222 (=> (not res!2018784) (not e!2969566))))

(declare-fun contains!16638 (MutLongMap!4841 (_ BitVec 64)) Bool)

(assert (=> d!1521222 (= res!2018784 (contains!16638 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274))))

(declare-fun lt!1924289 () Unit!137771)

(declare-fun e!2969569 () Unit!137771)

(assert (=> d!1521222 (= lt!1924289 e!2969569)))

(assert (=> d!1521222 (= c!812005 (contains!16637 (extractMap!2114 (toList!6204 (map!11854 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))) lt!1924137))))

(declare-fun lt!1924288 () Unit!137771)

(assert (=> d!1521222 (= lt!1924288 e!2969563)))

(declare-fun c!812003 () Bool)

(assert (=> d!1521222 (= c!812003 (contains!16638 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274))))

(assert (=> d!1521222 (= lt!1924274 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(assert (=> d!1521222 (valid!3845 (cache!4567 thiss!28909))))

(assert (=> d!1521222 (= (contains!16634 (cache!4567 thiss!28909) lt!1924137) lt!1924285)))

(declare-fun b!4759202 () Bool)

(declare-fun Unit!137776 () Unit!137771)

(assert (=> b!4759202 (= e!2969568 Unit!137776)))

(declare-fun b!4759203 () Bool)

(assert (=> b!4759203 (= e!2969566 (isDefined!9771 (getPair!614 (apply!12522 (v!47360 (underlying!9890 (cache!4567 thiss!28909))) lt!1924274) lt!1924137)))))

(declare-fun b!4759204 () Bool)

(declare-fun Unit!137777 () Unit!137771)

(assert (=> b!4759204 (= e!2969563 Unit!137777)))

(declare-fun b!4759205 () Bool)

(declare-fun e!2969567 () Bool)

(assert (=> b!4759205 (= e!2969567 call!333652)))

(declare-fun b!4759206 () Bool)

(declare-fun e!2969565 () Unit!137771)

(assert (=> b!4759206 (= e!2969569 e!2969565)))

(declare-fun res!2018783 () Bool)

(declare-fun call!333657 () Bool)

(assert (=> b!4759206 (= res!2018783 call!333657)))

(assert (=> b!4759206 (=> (not res!2018783) (not e!2969567))))

(declare-fun c!812006 () Bool)

(assert (=> b!4759206 (= c!812006 e!2969567)))

(declare-fun bm!333649 () Bool)

(assert (=> bm!333649 (= call!333654 (hash!4515 (hashF!12312 (cache!4567 thiss!28909)) lt!1924137))))

(declare-fun b!4759207 () Bool)

(declare-fun lt!1924284 () Unit!137771)

(assert (=> b!4759207 (= e!2969569 lt!1924284)))

(assert (=> b!4759207 (= lt!1924290 call!333655)))

(declare-fun lemmaInGenericMapThenInLongMap!178 (ListLongMap!4597 tuple2!55218 Hashable!6502) Unit!137771)

(assert (=> b!4759207 (= lt!1924284 (lemmaInGenericMapThenInLongMap!178 lt!1924290 lt!1924137 (hashF!12312 (cache!4567 thiss!28909))))))

(declare-fun res!2018782 () Bool)

(assert (=> b!4759207 (= res!2018782 call!333657)))

(assert (=> b!4759207 (=> (not res!2018782) (not e!2969564))))

(assert (=> b!4759207 e!2969564))

(declare-fun bm!333650 () Bool)

(declare-fun call!333656 () Option!12591)

(assert (=> bm!333650 (= call!333652 (isDefined!9771 call!333656))))

(declare-fun b!4759208 () Bool)

(declare-fun Unit!137778 () Unit!137771)

(assert (=> b!4759208 (= e!2969565 Unit!137778)))

(declare-fun b!4759209 () Bool)

(assert (=> b!4759209 false))

(declare-fun lt!1924279 () Unit!137771)

(declare-fun lt!1924292 () Unit!137771)

(assert (=> b!4759209 (= lt!1924279 lt!1924292)))

(declare-fun lt!1924286 () ListLongMap!4597)

(assert (=> b!4759209 (contains!16637 (extractMap!2114 (toList!6204 lt!1924286)) lt!1924137)))

(declare-fun lemmaInLongMapThenInGenericMap!178 (ListLongMap!4597 tuple2!55218 Hashable!6502) Unit!137771)

(assert (=> b!4759209 (= lt!1924292 (lemmaInLongMapThenInGenericMap!178 lt!1924286 lt!1924137 (hashF!12312 (cache!4567 thiss!28909))))))

(assert (=> b!4759209 (= lt!1924286 call!333655)))

(declare-fun Unit!137779 () Unit!137771)

(assert (=> b!4759209 (= e!2969565 Unit!137779)))

(declare-fun bm!333651 () Bool)

(assert (=> bm!333651 (= call!333657 (contains!16636 (ite c!812005 lt!1924290 call!333655) call!333654))))

(declare-fun bm!333652 () Bool)

(assert (=> bm!333652 (= call!333656 (getPair!614 call!333653 lt!1924137))))

(assert (= (and d!1521222 c!812003) b!4759201))

(assert (= (and d!1521222 (not c!812003)) b!4759204))

(assert (= (and b!4759201 c!812004) b!4759200))

(assert (= (and b!4759201 (not c!812004)) b!4759202))

(assert (= (and d!1521222 c!812005) b!4759207))

(assert (= (and d!1521222 (not c!812005)) b!4759206))

(assert (= (and b!4759207 res!2018782) b!4759199))

(assert (= (and b!4759206 res!2018783) b!4759205))

(assert (= (and b!4759206 c!812006) b!4759209))

(assert (= (and b!4759206 (not c!812006)) b!4759208))

(assert (= (or b!4759207 b!4759199 b!4759206 b!4759205) bm!333649))

(assert (= (or b!4759207 b!4759206 b!4759205 b!4759209) bm!333647))

(assert (= (or b!4759199 b!4759205) bm!333648))

(assert (= (or b!4759207 b!4759206) bm!333651))

(assert (= (or b!4759199 b!4759205) bm!333652))

(assert (= (or b!4759199 b!4759205) bm!333650))

(assert (= (and d!1521222 res!2018784) b!4759203))

(declare-fun m!5728615 () Bool)

(assert (=> b!4759203 m!5728615))

(assert (=> b!4759203 m!5728615))

(declare-fun m!5728617 () Bool)

(assert (=> b!4759203 m!5728617))

(assert (=> b!4759203 m!5728617))

(declare-fun m!5728619 () Bool)

(assert (=> b!4759203 m!5728619))

(declare-fun m!5728621 () Bool)

(assert (=> bm!333648 m!5728621))

(assert (=> b!4759201 m!5728533))

(assert (=> b!4759201 m!5728615))

(declare-fun m!5728623 () Bool)

(assert (=> b!4759201 m!5728623))

(declare-fun m!5728625 () Bool)

(assert (=> b!4759201 m!5728625))

(declare-fun m!5728627 () Bool)

(assert (=> b!4759200 m!5728627))

(assert (=> b!4759200 m!5728533))

(declare-fun m!5728629 () Bool)

(assert (=> b!4759200 m!5728629))

(assert (=> b!4759200 m!5728615))

(declare-fun m!5728631 () Bool)

(assert (=> b!4759200 m!5728631))

(declare-fun m!5728633 () Bool)

(assert (=> b!4759200 m!5728633))

(declare-fun m!5728635 () Bool)

(assert (=> b!4759200 m!5728635))

(assert (=> b!4759200 m!5728631))

(declare-fun m!5728637 () Bool)

(assert (=> b!4759200 m!5728637))

(declare-fun m!5728639 () Bool)

(assert (=> b!4759200 m!5728639))

(declare-fun m!5728641 () Bool)

(assert (=> b!4759207 m!5728641))

(assert (=> bm!333649 m!5728557))

(declare-fun m!5728643 () Bool)

(assert (=> bm!333650 m!5728643))

(declare-fun m!5728645 () Bool)

(assert (=> d!1521222 m!5728645))

(assert (=> d!1521222 m!5728645))

(declare-fun m!5728647 () Bool)

(assert (=> d!1521222 m!5728647))

(assert (=> d!1521222 m!5728533))

(assert (=> d!1521222 m!5728601))

(declare-fun m!5728649 () Bool)

(assert (=> d!1521222 m!5728649))

(assert (=> d!1521222 m!5728557))

(assert (=> d!1521222 m!5728509))

(declare-fun m!5728651 () Bool)

(assert (=> d!1521222 m!5728651))

(assert (=> d!1521222 m!5728601))

(declare-fun m!5728653 () Bool)

(assert (=> bm!333652 m!5728653))

(declare-fun m!5728655 () Bool)

(assert (=> b!4759209 m!5728655))

(assert (=> b!4759209 m!5728655))

(declare-fun m!5728657 () Bool)

(assert (=> b!4759209 m!5728657))

(declare-fun m!5728659 () Bool)

(assert (=> b!4759209 m!5728659))

(declare-fun m!5728661 () Bool)

(assert (=> bm!333651 m!5728661))

(assert (=> bm!333647 m!5728533))

(assert (=> b!4759122 d!1521222))

(declare-fun bs!1147028 () Bool)

(declare-fun b!4759215 () Bool)

(assert (= bs!1147028 (and b!4759215 b!4759129)))

(declare-fun lambda!223672 () Int)

(assert (=> bs!1147028 (= lambda!223672 lambda!223653)))

(assert (=> b!4759215 true))

(declare-fun d!1521224 () Bool)

(declare-fun res!2018789 () Bool)

(declare-fun e!2969572 () Bool)

(assert (=> d!1521224 (=> (not res!2018789) (not e!2969572))))

(assert (=> d!1521224 (= res!2018789 (valid!3845 (cache!4567 thiss!28909)))))

(assert (=> d!1521224 (= (validCacheMapFindLongestMatch!124 (cache!4567 thiss!28909) localTotalInput!8) e!2969572)))

(declare-fun b!4759214 () Bool)

(declare-fun res!2018790 () Bool)

(assert (=> b!4759214 (=> (not res!2018790) (not e!2969572))))

(declare-fun invariantList!1642 (List!53427) Bool)

(assert (=> b!4759214 (= res!2018790 (invariantList!1642 (toList!6205 (map!11855 (cache!4567 thiss!28909)))))))

(declare-fun forall!11823 (List!53427 Int) Bool)

(assert (=> b!4759215 (= e!2969572 (forall!11823 (toList!6205 (map!11855 (cache!4567 thiss!28909))) lambda!223672))))

(assert (= (and d!1521224 res!2018789) b!4759214))

(assert (= (and b!4759214 res!2018790) b!4759215))

(assert (=> d!1521224 m!5728509))

(assert (=> b!4759214 m!5728601))

(declare-fun m!5728664 () Bool)

(assert (=> b!4759214 m!5728664))

(assert (=> b!4759215 m!5728601))

(declare-fun m!5728666 () Bool)

(assert (=> b!4759215 m!5728666))

(assert (=> b!4759122 d!1521224))

(declare-fun bs!1147029 () Bool)

(declare-fun b!4759217 () Bool)

(assert (= bs!1147029 (and b!4759217 b!4759129)))

(declare-fun lambda!223673 () Int)

(assert (=> bs!1147029 (= (= (totalInput!4482 thiss!28909) localTotalInput!8) (= lambda!223673 lambda!223653))))

(declare-fun bs!1147030 () Bool)

(assert (= bs!1147030 (and b!4759217 b!4759215)))

(assert (=> bs!1147030 (= (= (totalInput!4482 thiss!28909) localTotalInput!8) (= lambda!223673 lambda!223672))))

(assert (=> b!4759217 true))

(declare-fun d!1521226 () Bool)

(declare-fun res!2018791 () Bool)

(declare-fun e!2969573 () Bool)

(assert (=> d!1521226 (=> (not res!2018791) (not e!2969573))))

(assert (=> d!1521226 (= res!2018791 (valid!3845 (cache!4567 thiss!28909)))))

(assert (=> d!1521226 (= (validCacheMapFindLongestMatch!124 (cache!4567 thiss!28909) (totalInput!4482 thiss!28909)) e!2969573)))

(declare-fun b!4759216 () Bool)

(declare-fun res!2018792 () Bool)

(assert (=> b!4759216 (=> (not res!2018792) (not e!2969573))))

(assert (=> b!4759216 (= res!2018792 (invariantList!1642 (toList!6205 (map!11855 (cache!4567 thiss!28909)))))))

(assert (=> b!4759217 (= e!2969573 (forall!11823 (toList!6205 (map!11855 (cache!4567 thiss!28909))) lambda!223673))))

(assert (= (and d!1521226 res!2018791) b!4759216))

(assert (= (and b!4759216 res!2018792) b!4759217))

(assert (=> d!1521226 m!5728509))

(assert (=> b!4759216 m!5728601))

(assert (=> b!4759216 m!5728664))

(assert (=> b!4759217 m!5728601))

(declare-fun m!5728668 () Bool)

(assert (=> b!4759217 m!5728668))

(assert (=> b!4759126 d!1521226))

(declare-fun d!1521228 () Bool)

(assert (=> d!1521228 (= (inv!68786 (totalInput!4482 thiss!28909)) (isBalanced!3905 (c!811981 (totalInput!4482 thiss!28909))))))

(declare-fun bs!1147031 () Bool)

(assert (= bs!1147031 d!1521228))

(declare-fun m!5728670 () Bool)

(assert (=> bs!1147031 m!5728670))

(assert (=> b!4759117 d!1521228))

(declare-fun b!4759222 () Bool)

(declare-fun e!2969576 () Bool)

(declare-fun tp!1352581 () Bool)

(declare-fun tp!1352582 () Bool)

(assert (=> b!4759222 (= e!2969576 (and tp!1352581 tp!1352582))))

(assert (=> b!4759118 (= tp!1352567 e!2969576)))

(assert (= (and b!4759118 ((_ is Cons!53302) (exprs!3429 setElem!27070))) b!4759222))

(declare-fun e!2969581 () Bool)

(declare-fun tp!1352589 () Bool)

(declare-fun b!4759231 () Bool)

(declare-fun tp!1352590 () Bool)

(assert (=> b!4759231 (= e!2969581 (and (inv!68787 (left!39093 (c!811981 localTotalInput!8))) tp!1352590 (inv!68787 (right!39423 (c!811981 localTotalInput!8))) tp!1352589))))

(declare-fun b!4759233 () Bool)

(declare-fun e!2969582 () Bool)

(declare-fun tp!1352591 () Bool)

(assert (=> b!4759233 (= e!2969582 tp!1352591)))

(declare-fun b!4759232 () Bool)

(declare-fun inv!68792 (IArray!29021) Bool)

(assert (=> b!4759232 (= e!2969581 (and (inv!68792 (xs!17786 (c!811981 localTotalInput!8))) e!2969582))))

(assert (=> b!4759127 (= tp!1352576 (and (inv!68787 (c!811981 localTotalInput!8)) e!2969581))))

(assert (= (and b!4759127 ((_ is Node!14480) (c!811981 localTotalInput!8))) b!4759231))

(assert (= b!4759232 b!4759233))

(assert (= (and b!4759127 ((_ is Leaf!23572) (c!811981 localTotalInput!8))) b!4759232))

(declare-fun m!5728672 () Bool)

(assert (=> b!4759231 m!5728672))

(declare-fun m!5728674 () Bool)

(assert (=> b!4759231 m!5728674))

(declare-fun m!5728676 () Bool)

(assert (=> b!4759232 m!5728676))

(assert (=> b!4759127 m!5728515))

(declare-fun e!2969588 () Bool)

(assert (=> b!4759119 (= tp!1352569 e!2969588)))

(declare-fun b!4759241 () Bool)

(declare-fun e!2969587 () Bool)

(declare-fun tp!1352598 () Bool)

(assert (=> b!4759241 (= e!2969587 tp!1352598)))

(declare-fun b!4759240 () Bool)

(declare-fun setRes!27073 () Bool)

(declare-fun tp!1352600 () Bool)

(assert (=> b!4759240 (= e!2969588 (and setRes!27073 tp!1352600))))

(declare-fun condSetEmpty!27073 () Bool)

(assert (=> b!4759240 (= condSetEmpty!27073 (= (_1!30903 (_1!30904 (h!59714 (zeroValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun setElem!27073 () Context!5858)

(declare-fun tp!1352599 () Bool)

(declare-fun setNonEmpty!27073 () Bool)

(assert (=> setNonEmpty!27073 (= setRes!27073 (and tp!1352599 (inv!68788 setElem!27073) e!2969587))))

(declare-fun setRest!27073 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27073 (= (_1!30903 (_1!30904 (h!59714 (zeroValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27073 true) setRest!27073))))

(declare-fun setIsEmpty!27073 () Bool)

(assert (=> setIsEmpty!27073 setRes!27073))

(assert (= (and b!4759240 condSetEmpty!27073) setIsEmpty!27073))

(assert (= (and b!4759240 (not condSetEmpty!27073)) setNonEmpty!27073))

(assert (= setNonEmpty!27073 b!4759241))

(assert (= (and b!4759119 ((_ is Cons!53303) (zeroValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))))) b!4759240))

(declare-fun m!5728678 () Bool)

(assert (=> setNonEmpty!27073 m!5728678))

(declare-fun e!2969590 () Bool)

(assert (=> b!4759119 (= tp!1352574 e!2969590)))

(declare-fun b!4759243 () Bool)

(declare-fun e!2969589 () Bool)

(declare-fun tp!1352601 () Bool)

(assert (=> b!4759243 (= e!2969589 tp!1352601)))

(declare-fun b!4759242 () Bool)

(declare-fun setRes!27074 () Bool)

(declare-fun tp!1352603 () Bool)

(assert (=> b!4759242 (= e!2969590 (and setRes!27074 tp!1352603))))

(declare-fun condSetEmpty!27074 () Bool)

(assert (=> b!4759242 (= condSetEmpty!27074 (= (_1!30903 (_1!30904 (h!59714 (minValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun setNonEmpty!27074 () Bool)

(declare-fun setElem!27074 () Context!5858)

(declare-fun tp!1352602 () Bool)

(assert (=> setNonEmpty!27074 (= setRes!27074 (and tp!1352602 (inv!68788 setElem!27074) e!2969589))))

(declare-fun setRest!27074 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27074 (= (_1!30903 (_1!30904 (h!59714 (minValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27074 true) setRest!27074))))

(declare-fun setIsEmpty!27074 () Bool)

(assert (=> setIsEmpty!27074 setRes!27074))

(assert (= (and b!4759242 condSetEmpty!27074) setIsEmpty!27074))

(assert (= (and b!4759242 (not condSetEmpty!27074)) setNonEmpty!27074))

(assert (= setNonEmpty!27074 b!4759243))

(assert (= (and b!4759119 ((_ is Cons!53303) (minValue!5124 (v!47359 (underlying!9889 (v!47360 (underlying!9890 (cache!4567 thiss!28909)))))))) b!4759242))

(declare-fun m!5728680 () Bool)

(assert (=> setNonEmpty!27074 m!5728680))

(declare-fun setIsEmpty!27079 () Bool)

(declare-fun setRes!27080 () Bool)

(assert (=> setIsEmpty!27079 setRes!27080))

(declare-fun b!4759254 () Bool)

(declare-fun e!2969601 () Bool)

(declare-fun tp!1352621 () Bool)

(assert (=> b!4759254 (= e!2969601 (and setRes!27080 tp!1352621))))

(declare-fun condSetEmpty!27080 () Bool)

(declare-fun mapDefault!21533 () List!53427)

(assert (=> b!4759254 (= condSetEmpty!27080 (= (_1!30903 (_1!30904 (h!59714 mapDefault!21533))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun setIsEmpty!27080 () Bool)

(declare-fun setRes!27079 () Bool)

(assert (=> setIsEmpty!27080 setRes!27079))

(declare-fun mapNonEmpty!21533 () Bool)

(declare-fun mapRes!21533 () Bool)

(declare-fun tp!1352620 () Bool)

(declare-fun e!2969600 () Bool)

(assert (=> mapNonEmpty!21533 (= mapRes!21533 (and tp!1352620 e!2969600))))

(declare-fun mapKey!21533 () (_ BitVec 32))

(declare-fun mapRest!21533 () (Array (_ BitVec 32) List!53427))

(declare-fun mapValue!21533 () List!53427)

(assert (=> mapNonEmpty!21533 (= mapRest!21530 (store mapRest!21533 mapKey!21533 mapValue!21533))))

(declare-fun b!4759255 () Bool)

(declare-fun tp!1352623 () Bool)

(assert (=> b!4759255 (= e!2969600 (and setRes!27079 tp!1352623))))

(declare-fun condSetEmpty!27079 () Bool)

(assert (=> b!4759255 (= condSetEmpty!27079 (= (_1!30903 (_1!30904 (h!59714 mapValue!21533))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun mapIsEmpty!21533 () Bool)

(assert (=> mapIsEmpty!21533 mapRes!21533))

(declare-fun b!4759256 () Bool)

(declare-fun e!2969602 () Bool)

(declare-fun tp!1352624 () Bool)

(assert (=> b!4759256 (= e!2969602 tp!1352624)))

(declare-fun tp!1352618 () Bool)

(declare-fun setElem!27079 () Context!5858)

(declare-fun setNonEmpty!27080 () Bool)

(assert (=> setNonEmpty!27080 (= setRes!27079 (and tp!1352618 (inv!68788 setElem!27079) e!2969602))))

(declare-fun setRest!27079 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27080 (= (_1!30903 (_1!30904 (h!59714 mapValue!21533))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27079 true) setRest!27079))))

(declare-fun b!4759257 () Bool)

(declare-fun e!2969599 () Bool)

(declare-fun tp!1352622 () Bool)

(assert (=> b!4759257 (= e!2969599 tp!1352622)))

(declare-fun setElem!27080 () Context!5858)

(declare-fun tp!1352619 () Bool)

(declare-fun setNonEmpty!27079 () Bool)

(assert (=> setNonEmpty!27079 (= setRes!27080 (and tp!1352619 (inv!68788 setElem!27080) e!2969599))))

(declare-fun setRest!27080 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27079 (= (_1!30903 (_1!30904 (h!59714 mapDefault!21533))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27080 true) setRest!27080))))

(declare-fun condMapEmpty!21533 () Bool)

(assert (=> mapNonEmpty!21530 (= condMapEmpty!21533 (= mapRest!21530 ((as const (Array (_ BitVec 32) List!53427)) mapDefault!21533)))))

(assert (=> mapNonEmpty!21530 (= tp!1352573 (and e!2969601 mapRes!21533))))

(assert (= (and mapNonEmpty!21530 condMapEmpty!21533) mapIsEmpty!21533))

(assert (= (and mapNonEmpty!21530 (not condMapEmpty!21533)) mapNonEmpty!21533))

(assert (= (and b!4759255 condSetEmpty!27079) setIsEmpty!27080))

(assert (= (and b!4759255 (not condSetEmpty!27079)) setNonEmpty!27080))

(assert (= setNonEmpty!27080 b!4759256))

(assert (= (and mapNonEmpty!21533 ((_ is Cons!53303) mapValue!21533)) b!4759255))

(assert (= (and b!4759254 condSetEmpty!27080) setIsEmpty!27079))

(assert (= (and b!4759254 (not condSetEmpty!27080)) setNonEmpty!27079))

(assert (= setNonEmpty!27079 b!4759257))

(assert (= (and mapNonEmpty!21530 ((_ is Cons!53303) mapDefault!21533)) b!4759254))

(declare-fun m!5728682 () Bool)

(assert (=> mapNonEmpty!21533 m!5728682))

(declare-fun m!5728684 () Bool)

(assert (=> setNonEmpty!27080 m!5728684))

(declare-fun m!5728686 () Bool)

(assert (=> setNonEmpty!27079 m!5728686))

(declare-fun e!2969604 () Bool)

(assert (=> mapNonEmpty!21530 (= tp!1352575 e!2969604)))

(declare-fun b!4759259 () Bool)

(declare-fun e!2969603 () Bool)

(declare-fun tp!1352625 () Bool)

(assert (=> b!4759259 (= e!2969603 tp!1352625)))

(declare-fun b!4759258 () Bool)

(declare-fun setRes!27081 () Bool)

(declare-fun tp!1352627 () Bool)

(assert (=> b!4759258 (= e!2969604 (and setRes!27081 tp!1352627))))

(declare-fun condSetEmpty!27081 () Bool)

(assert (=> b!4759258 (= condSetEmpty!27081 (= (_1!30903 (_1!30904 (h!59714 mapValue!21530))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun setElem!27081 () Context!5858)

(declare-fun tp!1352626 () Bool)

(declare-fun setNonEmpty!27081 () Bool)

(assert (=> setNonEmpty!27081 (= setRes!27081 (and tp!1352626 (inv!68788 setElem!27081) e!2969603))))

(declare-fun setRest!27081 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27081 (= (_1!30903 (_1!30904 (h!59714 mapValue!21530))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27081 true) setRest!27081))))

(declare-fun setIsEmpty!27081 () Bool)

(assert (=> setIsEmpty!27081 setRes!27081))

(assert (= (and b!4759258 condSetEmpty!27081) setIsEmpty!27081))

(assert (= (and b!4759258 (not condSetEmpty!27081)) setNonEmpty!27081))

(assert (= setNonEmpty!27081 b!4759259))

(assert (= (and mapNonEmpty!21530 ((_ is Cons!53303) mapValue!21530)) b!4759258))

(declare-fun m!5728688 () Bool)

(assert (=> setNonEmpty!27081 m!5728688))

(declare-fun condSetEmpty!27084 () Bool)

(assert (=> setNonEmpty!27070 (= condSetEmpty!27084 (= setRest!27070 ((as const (Array Context!5858 Bool)) false)))))

(declare-fun setRes!27084 () Bool)

(assert (=> setNonEmpty!27070 (= tp!1352566 setRes!27084)))

(declare-fun setIsEmpty!27084 () Bool)

(assert (=> setIsEmpty!27084 setRes!27084))

(declare-fun setNonEmpty!27084 () Bool)

(declare-fun setElem!27084 () Context!5858)

(declare-fun e!2969607 () Bool)

(declare-fun tp!1352633 () Bool)

(assert (=> setNonEmpty!27084 (= setRes!27084 (and tp!1352633 (inv!68788 setElem!27084) e!2969607))))

(declare-fun setRest!27084 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27084 (= setRest!27070 ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27084 true) setRest!27084))))

(declare-fun b!4759264 () Bool)

(declare-fun tp!1352632 () Bool)

(assert (=> b!4759264 (= e!2969607 tp!1352632)))

(assert (= (and setNonEmpty!27070 condSetEmpty!27084) setIsEmpty!27084))

(assert (= (and setNonEmpty!27070 (not condSetEmpty!27084)) setNonEmpty!27084))

(assert (= setNonEmpty!27084 b!4759264))

(declare-fun m!5728690 () Bool)

(assert (=> setNonEmpty!27084 m!5728690))

(declare-fun e!2969609 () Bool)

(assert (=> b!4759120 (= tp!1352571 e!2969609)))

(declare-fun b!4759266 () Bool)

(declare-fun e!2969608 () Bool)

(declare-fun tp!1352634 () Bool)

(assert (=> b!4759266 (= e!2969608 tp!1352634)))

(declare-fun b!4759265 () Bool)

(declare-fun setRes!27085 () Bool)

(declare-fun tp!1352636 () Bool)

(assert (=> b!4759265 (= e!2969609 (and setRes!27085 tp!1352636))))

(declare-fun condSetEmpty!27085 () Bool)

(assert (=> b!4759265 (= condSetEmpty!27085 (= (_1!30903 (_1!30904 (h!59714 mapDefault!21530))) ((as const (Array Context!5858 Bool)) false)))))

(declare-fun tp!1352635 () Bool)

(declare-fun setNonEmpty!27085 () Bool)

(declare-fun setElem!27085 () Context!5858)

(assert (=> setNonEmpty!27085 (= setRes!27085 (and tp!1352635 (inv!68788 setElem!27085) e!2969608))))

(declare-fun setRest!27085 () (InoxSet Context!5858))

(assert (=> setNonEmpty!27085 (= (_1!30903 (_1!30904 (h!59714 mapDefault!21530))) ((_ map or) (store ((as const (Array Context!5858 Bool)) false) setElem!27085 true) setRest!27085))))

(declare-fun setIsEmpty!27085 () Bool)

(assert (=> setIsEmpty!27085 setRes!27085))

(assert (= (and b!4759265 condSetEmpty!27085) setIsEmpty!27085))

(assert (= (and b!4759265 (not condSetEmpty!27085)) setNonEmpty!27085))

(assert (= setNonEmpty!27085 b!4759266))

(assert (= (and b!4759120 ((_ is Cons!53303) mapDefault!21530)) b!4759265))

(declare-fun m!5728692 () Bool)

(assert (=> setNonEmpty!27085 m!5728692))

(declare-fun tp!1352638 () Bool)

(declare-fun tp!1352637 () Bool)

(declare-fun e!2969610 () Bool)

(declare-fun b!4759267 () Bool)

(assert (=> b!4759267 (= e!2969610 (and (inv!68787 (left!39093 (c!811981 (totalInput!4482 thiss!28909)))) tp!1352638 (inv!68787 (right!39423 (c!811981 (totalInput!4482 thiss!28909)))) tp!1352637))))

(declare-fun b!4759269 () Bool)

(declare-fun e!2969611 () Bool)

(declare-fun tp!1352639 () Bool)

(assert (=> b!4759269 (= e!2969611 tp!1352639)))

(declare-fun b!4759268 () Bool)

(assert (=> b!4759268 (= e!2969610 (and (inv!68792 (xs!17786 (c!811981 (totalInput!4482 thiss!28909)))) e!2969611))))

(assert (=> b!4759125 (= tp!1352568 (and (inv!68787 (c!811981 (totalInput!4482 thiss!28909))) e!2969610))))

(assert (= (and b!4759125 ((_ is Node!14480) (c!811981 (totalInput!4482 thiss!28909)))) b!4759267))

(assert (= b!4759268 b!4759269))

(assert (= (and b!4759125 ((_ is Leaf!23572) (c!811981 (totalInput!4482 thiss!28909)))) b!4759268))

(declare-fun m!5728694 () Bool)

(assert (=> b!4759267 m!5728694))

(declare-fun m!5728696 () Bool)

(assert (=> b!4759267 m!5728696))

(declare-fun m!5728698 () Bool)

(assert (=> b!4759268 m!5728698))

(assert (=> b!4759125 m!5728503))

(declare-fun b_lambda!183783 () Bool)

(assert (= b_lambda!183779 (or (and b!4759121 b_free!129279) b_lambda!183783)))

(declare-fun b_lambda!183785 () Bool)

(assert (= b_lambda!183781 (or b!4759129 b_lambda!183785)))

(declare-fun bs!1147032 () Bool)

(declare-fun d!1521230 () Bool)

(assert (= bs!1147032 (and d!1521230 b!4759129)))

(assert (=> bs!1147032 (= (dynLambda!21915 lambda!223653 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137))) (validCacheMapFindLongestMatchBody!17 (tuple2!55221 lt!1924137 (apply!12521 (cache!4567 thiss!28909) lt!1924137)) localTotalInput!8))))

(assert (=> bs!1147032 m!5728495))

(assert (=> d!1521218 d!1521230))

(declare-fun b_lambda!183787 () Bool)

(assert (= b_lambda!183777 (or (and b!4759121 b_free!129279) b_lambda!183787)))

(check-sat (not setNonEmpty!27074) (not b!4759171) (not b!4759254) (not setNonEmpty!27080) (not b!4759266) (not d!1521228) (not b!4759232) (not setNonEmpty!27079) (not d!1521226) (not b!4759203) (not b!4759267) (not b!4759140) (not b!4759169) (not b!4759257) (not b!4759217) (not b!4759215) (not b!4759209) (not d!1521216) (not bm!333651) (not b!4759207) (not b!4759125) (not b!4759256) (not b!4759155) (not mapNonEmpty!21533) (not setNonEmpty!27073) (not b!4759176) (not b!4759214) b_and!340897 (not b!4759138) (not bm!333648) (not b!4759258) (not d!1521212) (not bm!333650) (not b!4759172) (not bm!333647) (not b!4759243) (not b_next!129983) (not d!1521206) (not b!4759265) (not d!1521224) (not setNonEmpty!27084) (not bs!1147032) (not b_lambda!183783) (not b_next!129985) (not b!4759200) (not b!4759264) (not b!4759216) (not d!1521202) (not setNonEmpty!27085) (not b!4759241) (not b!4759149) (not b!4759255) b_and!340893 (not b!4759148) (not setNonEmpty!27081) (not b!4759231) (not b!4759222) (not b!4759174) (not b!4759259) (not b!4759242) (not b!4759233) (not b_lambda!183787) (not b_lambda!183785) (not d!1521218) (not b!4759201) (not b!4759143) (not b!4759268) (not b!4759154) (not bm!333652) (not b!4759240) (not bm!333649) (not d!1521222) (not b!4759127) (not b!4759269))
(check-sat b_and!340897 b_and!340893 (not b_next!129985) (not b_next!129983))
