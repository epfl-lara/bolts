; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486564 () Bool)

(assert start!486564)

(declare-fun b!4757931 () Bool)

(declare-fun b_free!129207 () Bool)

(declare-fun b_next!129911 () Bool)

(assert (=> b!4757931 (= b_free!129207 (not b_next!129911))))

(declare-fun tp!1351759 () Bool)

(declare-fun b_and!340811 () Bool)

(assert (=> b!4757931 (= tp!1351759 b_and!340811)))

(declare-fun b!4757927 () Bool)

(declare-fun b_free!129209 () Bool)

(declare-fun b_next!129913 () Bool)

(assert (=> b!4757927 (= b_free!129209 (not b_next!129913))))

(declare-fun tp!1351755 () Bool)

(declare-fun b_and!340813 () Bool)

(assert (=> b!4757927 (= tp!1351755 b_and!340813)))

(declare-fun b!4757926 () Bool)

(declare-fun res!2018459 () Bool)

(declare-fun e!2968513 () Bool)

(assert (=> b!4757926 (=> (not res!2018459) (not e!2968513))))

(assert (=> b!4757926 (= res!2018459 false)))

(declare-fun mapIsEmpty!21461 () Bool)

(declare-fun mapRes!21461 () Bool)

(assert (=> mapIsEmpty!21461 mapRes!21461))

(declare-fun e!2968519 () Bool)

(declare-fun e!2968516 () Bool)

(assert (=> b!4757927 (= e!2968519 (and e!2968516 tp!1351755))))

(declare-fun b!4757928 () Bool)

(declare-fun from!930 () Int)

(declare-fun lt!1923704 () Int)

(assert (=> b!4757928 (= e!2968513 (or (< from!930 0) (> from!930 lt!1923704)))))

(declare-datatypes ((C!26240 0))(
  ( (C!26241 (val!20108 Int)) )
))
(declare-datatypes ((Regex!13021 0))(
  ( (ElementMatch!13021 (c!811871 C!26240)) (Concat!21340 (regOne!26554 Regex!13021) (regTwo!26554 Regex!13021)) (EmptyExpr!13021) (Star!13021 (reg!13350 Regex!13021)) (EmptyLang!13021) (Union!13021 (regOne!26555 Regex!13021) (regTwo!26555 Regex!13021)) )
))
(declare-datatypes ((List!53369 0))(
  ( (Nil!53245) (Cons!53245 (h!59656 Regex!13021) (t!360719 List!53369)) )
))
(declare-datatypes ((Context!5822 0))(
  ( (Context!5823 (exprs!3411 List!53369)) )
))
(declare-datatypes ((array!17552 0))(
  ( (array!17553 (arr!7831 (Array (_ BitVec 32) (_ BitVec 64))) (size!36033 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6484 0))(
  ( (HashableExt!6483 (__x!32217 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55140 0))(
  ( (tuple2!55141 (_1!30864 (InoxSet Context!5822)) (_2!30864 Int)) )
))
(declare-datatypes ((tuple2!55142 0))(
  ( (tuple2!55143 (_1!30865 tuple2!55140) (_2!30865 Int)) )
))
(declare-datatypes ((List!53370 0))(
  ( (Nil!53246) (Cons!53246 (h!59657 tuple2!55142) (t!360720 List!53370)) )
))
(declare-datatypes ((List!53371 0))(
  ( (Nil!53247) (Cons!53247 (h!59658 C!26240) (t!360721 List!53371)) )
))
(declare-datatypes ((IArray!28985 0))(
  ( (IArray!28986 (innerList!14550 List!53371)) )
))
(declare-datatypes ((Conc!14462 0))(
  ( (Node!14462 (left!39046 Conc!14462) (right!39376 Conc!14462) (csize!29154 Int) (cheight!14673 Int)) (Leaf!23545 (xs!17768 IArray!28985) (csize!29155 Int)) (Empty!14462) )
))
(declare-datatypes ((BalanceConc!28414 0))(
  ( (BalanceConc!28415 (c!811872 Conc!14462)) )
))
(declare-datatypes ((array!17554 0))(
  ( (array!17555 (arr!7832 (Array (_ BitVec 32) List!53370)) (size!36034 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9646 0))(
  ( (LongMapFixedSize!9647 (defaultEntry!5237 Int) (mask!14520 (_ BitVec 32)) (extraKeys!5093 (_ BitVec 32)) (zeroValue!5106 List!53370) (minValue!5106 List!53370) (_size!9671 (_ BitVec 32)) (_keys!5158 array!17552) (_values!5131 array!17554) (_vacant!4888 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19057 0))(
  ( (Cell!19058 (v!47315 LongMapFixedSize!9646)) )
))
(declare-datatypes ((MutLongMap!4823 0))(
  ( (LongMap!4823 (underlying!9853 Cell!19057)) (MutLongMapExt!4822 (__x!32218 Int)) )
))
(declare-datatypes ((Cell!19059 0))(
  ( (Cell!19060 (v!47316 MutLongMap!4823)) )
))
(declare-datatypes ((MutableMap!4707 0))(
  ( (MutableMapExt!4706 (__x!32219 Int)) (HashMap!4707 (underlying!9854 Cell!19059) (hashF!12294 Hashable!6484) (_size!9672 (_ BitVec 32)) (defaultValue!4878 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!612 0))(
  ( (CacheFindLongestMatch!613 (cache!4549 MutableMap!4707) (totalInput!4457 BalanceConc!28414)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!612)

(declare-fun size!36035 (BalanceConc!28414) Int)

(assert (=> b!4757928 (= lt!1923704 (size!36035 (totalInput!4457 thiss!28972)))))

(declare-fun res!2018458 () Bool)

(assert (=> start!486564 (=> (not res!2018458) (not e!2968513))))

(declare-fun validCacheMapFindLongestMatch!108 (MutableMap!4707 BalanceConc!28414) Bool)

(assert (=> start!486564 (= res!2018458 (validCacheMapFindLongestMatch!108 (cache!4549 thiss!28972) (totalInput!4457 thiss!28972)))))

(assert (=> start!486564 e!2968513))

(declare-fun e!2968523 () Bool)

(declare-fun inv!68686 (CacheFindLongestMatch!612) Bool)

(assert (=> start!486564 (and (inv!68686 thiss!28972) e!2968523)))

(declare-fun condSetEmpty!26968 () Bool)

(declare-fun z!490 () (InoxSet Context!5822))

(assert (=> start!486564 (= condSetEmpty!26968 (= z!490 ((as const (Array Context!5822 Bool)) false)))))

(declare-fun setRes!26968 () Bool)

(assert (=> start!486564 setRes!26968))

(assert (=> start!486564 true))

(declare-fun b!4757929 () Bool)

(declare-fun e!2968518 () Bool)

(declare-fun e!2968515 () Bool)

(assert (=> b!4757929 (= e!2968518 e!2968515)))

(declare-fun b!4757930 () Bool)

(declare-fun res!2018457 () Bool)

(assert (=> b!4757930 (=> (not res!2018457) (not e!2968513))))

(declare-fun contains!16617 (MutableMap!4707 tuple2!55140) Bool)

(assert (=> b!4757930 (= res!2018457 (not (contains!16617 (cache!4549 thiss!28972) (tuple2!55141 z!490 from!930))))))

(declare-fun e!2968521 () Bool)

(declare-fun setElem!26968 () Context!5822)

(declare-fun tp!1351760 () Bool)

(declare-fun setNonEmpty!26968 () Bool)

(declare-fun inv!68687 (Context!5822) Bool)

(assert (=> setNonEmpty!26968 (= setRes!26968 (and tp!1351760 (inv!68687 setElem!26968) e!2968521))))

(declare-fun setRest!26968 () (InoxSet Context!5822))

(assert (=> setNonEmpty!26968 (= z!490 ((_ map or) (store ((as const (Array Context!5822 Bool)) false) setElem!26968 true) setRest!26968))))

(declare-fun tp!1351751 () Bool)

(declare-fun e!2968520 () Bool)

(declare-fun e!2968522 () Bool)

(declare-fun tp!1351752 () Bool)

(declare-fun array_inv!5635 (array!17552) Bool)

(declare-fun array_inv!5636 (array!17554) Bool)

(assert (=> b!4757931 (= e!2968520 (and tp!1351759 tp!1351752 tp!1351751 (array_inv!5635 (_keys!5158 (v!47315 (underlying!9853 (v!47316 (underlying!9854 (cache!4549 thiss!28972))))))) (array_inv!5636 (_values!5131 (v!47315 (underlying!9853 (v!47316 (underlying!9854 (cache!4549 thiss!28972))))))) e!2968522))))

(declare-fun b!4757932 () Bool)

(declare-fun lt!1923703 () MutLongMap!4823)

(get-info :version)

(assert (=> b!4757932 (= e!2968516 (and e!2968518 ((_ is LongMap!4823) lt!1923703)))))

(assert (=> b!4757932 (= lt!1923703 (v!47316 (underlying!9854 (cache!4549 thiss!28972))))))

(declare-fun b!4757933 () Bool)

(declare-fun tp!1351756 () Bool)

(assert (=> b!4757933 (= e!2968521 tp!1351756)))

(declare-fun b!4757934 () Bool)

(declare-fun e!2968517 () Bool)

(declare-fun tp!1351753 () Bool)

(declare-fun inv!68688 (Conc!14462) Bool)

(assert (=> b!4757934 (= e!2968517 (and (inv!68688 (c!811872 (totalInput!4457 thiss!28972))) tp!1351753))))

(declare-fun b!4757935 () Bool)

(assert (=> b!4757935 (= e!2968515 e!2968520)))

(declare-fun mapNonEmpty!21461 () Bool)

(declare-fun tp!1351758 () Bool)

(declare-fun tp!1351757 () Bool)

(assert (=> mapNonEmpty!21461 (= mapRes!21461 (and tp!1351758 tp!1351757))))

(declare-fun mapKey!21461 () (_ BitVec 32))

(declare-fun mapRest!21461 () (Array (_ BitVec 32) List!53370))

(declare-fun mapValue!21461 () List!53370)

(assert (=> mapNonEmpty!21461 (= (arr!7832 (_values!5131 (v!47315 (underlying!9853 (v!47316 (underlying!9854 (cache!4549 thiss!28972))))))) (store mapRest!21461 mapKey!21461 mapValue!21461))))

(declare-fun b!4757936 () Bool)

(declare-fun tp!1351754 () Bool)

(assert (=> b!4757936 (= e!2968522 (and tp!1351754 mapRes!21461))))

(declare-fun condMapEmpty!21461 () Bool)

(declare-fun mapDefault!21461 () List!53370)

(assert (=> b!4757936 (= condMapEmpty!21461 (= (arr!7832 (_values!5131 (v!47315 (underlying!9853 (v!47316 (underlying!9854 (cache!4549 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53370)) mapDefault!21461)))))

(declare-fun setIsEmpty!26968 () Bool)

(assert (=> setIsEmpty!26968 setRes!26968))

(declare-fun b!4757937 () Bool)

(declare-fun inv!68689 (BalanceConc!28414) Bool)

(assert (=> b!4757937 (= e!2968523 (and e!2968519 (inv!68689 (totalInput!4457 thiss!28972)) e!2968517))))

(assert (= (and start!486564 res!2018458) b!4757930))

(assert (= (and b!4757930 res!2018457) b!4757926))

(assert (= (and b!4757926 res!2018459) b!4757928))

(assert (= (and b!4757936 condMapEmpty!21461) mapIsEmpty!21461))

(assert (= (and b!4757936 (not condMapEmpty!21461)) mapNonEmpty!21461))

(assert (= b!4757931 b!4757936))

(assert (= b!4757935 b!4757931))

(assert (= b!4757929 b!4757935))

(assert (= (and b!4757932 ((_ is LongMap!4823) (v!47316 (underlying!9854 (cache!4549 thiss!28972))))) b!4757929))

(assert (= b!4757927 b!4757932))

(assert (= (and b!4757937 ((_ is HashMap!4707) (cache!4549 thiss!28972))) b!4757927))

(assert (= b!4757937 b!4757934))

(assert (= start!486564 b!4757937))

(assert (= (and start!486564 condSetEmpty!26968) setIsEmpty!26968))

(assert (= (and start!486564 (not condSetEmpty!26968)) setNonEmpty!26968))

(assert (= setNonEmpty!26968 b!4757933))

(declare-fun m!5727552 () Bool)

(assert (=> mapNonEmpty!21461 m!5727552))

(declare-fun m!5727554 () Bool)

(assert (=> b!4757931 m!5727554))

(declare-fun m!5727556 () Bool)

(assert (=> b!4757931 m!5727556))

(declare-fun m!5727558 () Bool)

(assert (=> b!4757937 m!5727558))

(declare-fun m!5727560 () Bool)

(assert (=> b!4757934 m!5727560))

(declare-fun m!5727562 () Bool)

(assert (=> setNonEmpty!26968 m!5727562))

(declare-fun m!5727564 () Bool)

(assert (=> b!4757928 m!5727564))

(declare-fun m!5727566 () Bool)

(assert (=> b!4757930 m!5727566))

(declare-fun m!5727568 () Bool)

(assert (=> start!486564 m!5727568))

(declare-fun m!5727570 () Bool)

(assert (=> start!486564 m!5727570))

(check-sat b_and!340811 (not b_next!129911) (not mapNonEmpty!21461) (not setNonEmpty!26968) (not b!4757928) (not b!4757934) (not b!4757937) (not b!4757930) (not start!486564) (not b!4757931) (not b!4757936) (not b!4757933) (not b_next!129913) b_and!340813)
(check-sat b_and!340813 b_and!340811 (not b_next!129911) (not b_next!129913))
