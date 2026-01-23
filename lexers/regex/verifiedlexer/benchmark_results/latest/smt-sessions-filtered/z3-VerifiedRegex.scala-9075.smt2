; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486458 () Bool)

(assert start!486458)

(declare-fun b!4756916 () Bool)

(declare-fun b_free!129151 () Bool)

(declare-fun b_next!129855 () Bool)

(assert (=> b!4756916 (= b_free!129151 (not b_next!129855))))

(declare-fun tp!1351156 () Bool)

(declare-fun b_and!340743 () Bool)

(assert (=> b!4756916 (= tp!1351156 b_and!340743)))

(declare-fun b!4756912 () Bool)

(declare-fun b_free!129153 () Bool)

(declare-fun b_next!129857 () Bool)

(assert (=> b!4756912 (= b_free!129153 (not b_next!129857))))

(declare-fun tp!1351153 () Bool)

(declare-fun b_and!340745 () Bool)

(assert (=> b!4756912 (= tp!1351153 b_and!340745)))

(declare-fun tp!1351159 () Bool)

(declare-fun setNonEmpty!26881 () Bool)

(declare-fun setRes!26881 () Bool)

(declare-fun e!2967639 () Bool)

(declare-datatypes ((C!26212 0))(
  ( (C!26213 (val!20094 Int)) )
))
(declare-datatypes ((Regex!13007 0))(
  ( (ElementMatch!13007 (c!811744 C!26212)) (Concat!21326 (regOne!26526 Regex!13007) (regTwo!26526 Regex!13007)) (EmptyExpr!13007) (Star!13007 (reg!13336 Regex!13007)) (EmptyLang!13007) (Union!13007 (regOne!26527 Regex!13007) (regTwo!26527 Regex!13007)) )
))
(declare-datatypes ((List!53324 0))(
  ( (Nil!53200) (Cons!53200 (h!59611 Regex!13007) (t!360668 List!53324)) )
))
(declare-datatypes ((Context!5794 0))(
  ( (Context!5795 (exprs!3397 List!53324)) )
))
(declare-fun setElem!26881 () Context!5794)

(declare-fun inv!68619 (Context!5794) Bool)

(assert (=> setNonEmpty!26881 (= setRes!26881 (and tp!1351159 (inv!68619 setElem!26881) e!2967639))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!490 () (InoxSet Context!5794))

(declare-fun setRest!26881 () (InoxSet Context!5794))

(assert (=> setNonEmpty!26881 (= z!490 ((_ map or) (store ((as const (Array Context!5794 Bool)) false) setElem!26881 true) setRest!26881))))

(declare-fun b!4756911 () Bool)

(declare-fun tp!1351155 () Bool)

(assert (=> b!4756911 (= e!2967639 tp!1351155)))

(declare-fun res!2018171 () Bool)

(declare-fun e!2967643 () Bool)

(assert (=> start!486458 (=> (not res!2018171) (not e!2967643))))

(declare-datatypes ((array!17490 0))(
  ( (array!17491 (arr!7803 (Array (_ BitVec 32) (_ BitVec 64))) (size!35991 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6470 0))(
  ( (HashableExt!6469 (__x!32175 Int)) )
))
(declare-datatypes ((tuple2!55078 0))(
  ( (tuple2!55079 (_1!30833 (InoxSet Context!5794)) (_2!30833 Int)) )
))
(declare-datatypes ((tuple2!55080 0))(
  ( (tuple2!55081 (_1!30834 tuple2!55078) (_2!30834 Int)) )
))
(declare-datatypes ((List!53325 0))(
  ( (Nil!53201) (Cons!53201 (h!59612 tuple2!55080) (t!360669 List!53325)) )
))
(declare-datatypes ((List!53326 0))(
  ( (Nil!53202) (Cons!53202 (h!59613 C!26212) (t!360670 List!53326)) )
))
(declare-datatypes ((IArray!28957 0))(
  ( (IArray!28958 (innerList!14536 List!53326)) )
))
(declare-datatypes ((Conc!14448 0))(
  ( (Node!14448 (left!39019 Conc!14448) (right!39349 Conc!14448) (csize!29126 Int) (cheight!14659 Int)) (Leaf!23524 (xs!17754 IArray!28957) (csize!29127 Int)) (Empty!14448) )
))
(declare-datatypes ((BalanceConc!28386 0))(
  ( (BalanceConc!28387 (c!811745 Conc!14448)) )
))
(declare-datatypes ((array!17492 0))(
  ( (array!17493 (arr!7804 (Array (_ BitVec 32) List!53325)) (size!35992 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9618 0))(
  ( (LongMapFixedSize!9619 (defaultEntry!5223 Int) (mask!14499 (_ BitVec 32)) (extraKeys!5079 (_ BitVec 32)) (zeroValue!5092 List!53325) (minValue!5092 List!53325) (_size!9643 (_ BitVec 32)) (_keys!5144 array!17490) (_values!5117 array!17492) (_vacant!4874 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19001 0))(
  ( (Cell!19002 (v!47274 LongMapFixedSize!9618)) )
))
(declare-datatypes ((MutLongMap!4809 0))(
  ( (LongMap!4809 (underlying!9825 Cell!19001)) (MutLongMapExt!4808 (__x!32176 Int)) )
))
(declare-datatypes ((Cell!19003 0))(
  ( (Cell!19004 (v!47275 MutLongMap!4809)) )
))
(declare-datatypes ((MutableMap!4693 0))(
  ( (MutableMapExt!4692 (__x!32177 Int)) (HashMap!4693 (underlying!9826 Cell!19003) (hashF!12280 Hashable!6470) (_size!9644 (_ BitVec 32)) (defaultValue!4864 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!584 0))(
  ( (CacheFindLongestMatch!585 (cache!4535 MutableMap!4693) (totalInput!4437 BalanceConc!28386)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!584)

(declare-fun validCacheMapFindLongestMatch!98 (MutableMap!4693 BalanceConc!28386) Bool)

(assert (=> start!486458 (= res!2018171 (validCacheMapFindLongestMatch!98 (cache!4535 thiss!28972) (totalInput!4437 thiss!28972)))))

(assert (=> start!486458 e!2967643))

(declare-fun e!2967646 () Bool)

(declare-fun inv!68620 (CacheFindLongestMatch!584) Bool)

(assert (=> start!486458 (and (inv!68620 thiss!28972) e!2967646)))

(declare-fun condSetEmpty!26881 () Bool)

(assert (=> start!486458 (= condSetEmpty!26881 (= z!490 ((as const (Array Context!5794 Bool)) false)))))

(assert (=> start!486458 setRes!26881))

(assert (=> start!486458 true))

(declare-fun e!2967638 () Bool)

(declare-fun tp!1351157 () Bool)

(declare-fun e!2967644 () Bool)

(declare-fun tp!1351160 () Bool)

(declare-fun array_inv!5619 (array!17490) Bool)

(declare-fun array_inv!5620 (array!17492) Bool)

(assert (=> b!4756912 (= e!2967644 (and tp!1351153 tp!1351160 tp!1351157 (array_inv!5619 (_keys!5144 (v!47274 (underlying!9825 (v!47275 (underlying!9826 (cache!4535 thiss!28972))))))) (array_inv!5620 (_values!5117 (v!47274 (underlying!9825 (v!47275 (underlying!9826 (cache!4535 thiss!28972))))))) e!2967638))))

(declare-fun mapNonEmpty!21410 () Bool)

(declare-fun mapRes!21410 () Bool)

(declare-fun tp!1351154 () Bool)

(declare-fun tp!1351151 () Bool)

(assert (=> mapNonEmpty!21410 (= mapRes!21410 (and tp!1351154 tp!1351151))))

(declare-fun mapRest!21410 () (Array (_ BitVec 32) List!53325))

(declare-fun mapValue!21410 () List!53325)

(declare-fun mapKey!21410 () (_ BitVec 32))

(assert (=> mapNonEmpty!21410 (= (arr!7804 (_values!5117 (v!47274 (underlying!9825 (v!47275 (underlying!9826 (cache!4535 thiss!28972))))))) (store mapRest!21410 mapKey!21410 mapValue!21410))))

(declare-fun mapIsEmpty!21410 () Bool)

(assert (=> mapIsEmpty!21410 mapRes!21410))

(declare-fun b!4756913 () Bool)

(declare-fun e!2967641 () Bool)

(assert (=> b!4756913 (= e!2967641 e!2967644)))

(declare-fun setIsEmpty!26881 () Bool)

(assert (=> setIsEmpty!26881 setRes!26881))

(declare-fun b!4756914 () Bool)

(declare-fun e!2967642 () Bool)

(declare-fun tp!1351152 () Bool)

(declare-fun inv!68621 (Conc!14448) Bool)

(assert (=> b!4756914 (= e!2967642 (and (inv!68621 (c!811745 (totalInput!4437 thiss!28972))) tp!1351152))))

(declare-fun b!4756915 () Bool)

(declare-fun e!2967640 () Bool)

(assert (=> b!4756915 (= e!2967640 e!2967641)))

(declare-fun e!2967647 () Bool)

(declare-fun e!2967637 () Bool)

(assert (=> b!4756916 (= e!2967647 (and e!2967637 tp!1351156))))

(declare-fun b!4756917 () Bool)

(declare-fun inv!68622 (BalanceConc!28386) Bool)

(assert (=> b!4756917 (= e!2967646 (and e!2967647 (inv!68622 (totalInput!4437 thiss!28972)) e!2967642))))

(declare-fun b!4756918 () Bool)

(assert (=> b!4756918 (= e!2967643 false)))

(declare-fun from!930 () Int)

(declare-fun lt!1923053 () Bool)

(declare-fun contains!16594 (MutableMap!4693 tuple2!55078) Bool)

(assert (=> b!4756918 (= lt!1923053 (contains!16594 (cache!4535 thiss!28972) (tuple2!55079 z!490 from!930)))))

(declare-fun b!4756919 () Bool)

(declare-fun lt!1923052 () MutLongMap!4809)

(get-info :version)

(assert (=> b!4756919 (= e!2967637 (and e!2967640 ((_ is LongMap!4809) lt!1923052)))))

(assert (=> b!4756919 (= lt!1923052 (v!47275 (underlying!9826 (cache!4535 thiss!28972))))))

(declare-fun b!4756920 () Bool)

(declare-fun tp!1351158 () Bool)

(assert (=> b!4756920 (= e!2967638 (and tp!1351158 mapRes!21410))))

(declare-fun condMapEmpty!21410 () Bool)

(declare-fun mapDefault!21410 () List!53325)

(assert (=> b!4756920 (= condMapEmpty!21410 (= (arr!7804 (_values!5117 (v!47274 (underlying!9825 (v!47275 (underlying!9826 (cache!4535 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53325)) mapDefault!21410)))))

(assert (= (and start!486458 res!2018171) b!4756918))

(assert (= (and b!4756920 condMapEmpty!21410) mapIsEmpty!21410))

(assert (= (and b!4756920 (not condMapEmpty!21410)) mapNonEmpty!21410))

(assert (= b!4756912 b!4756920))

(assert (= b!4756913 b!4756912))

(assert (= b!4756915 b!4756913))

(assert (= (and b!4756919 ((_ is LongMap!4809) (v!47275 (underlying!9826 (cache!4535 thiss!28972))))) b!4756915))

(assert (= b!4756916 b!4756919))

(assert (= (and b!4756917 ((_ is HashMap!4693) (cache!4535 thiss!28972))) b!4756916))

(assert (= b!4756917 b!4756914))

(assert (= start!486458 b!4756917))

(assert (= (and start!486458 condSetEmpty!26881) setIsEmpty!26881))

(assert (= (and start!486458 (not condSetEmpty!26881)) setNonEmpty!26881))

(assert (= setNonEmpty!26881 b!4756911))

(declare-fun m!5726675 () Bool)

(assert (=> b!4756914 m!5726675))

(declare-fun m!5726677 () Bool)

(assert (=> setNonEmpty!26881 m!5726677))

(declare-fun m!5726679 () Bool)

(assert (=> start!486458 m!5726679))

(declare-fun m!5726681 () Bool)

(assert (=> start!486458 m!5726681))

(declare-fun m!5726683 () Bool)

(assert (=> b!4756912 m!5726683))

(declare-fun m!5726685 () Bool)

(assert (=> b!4756912 m!5726685))

(declare-fun m!5726687 () Bool)

(assert (=> b!4756918 m!5726687))

(declare-fun m!5726689 () Bool)

(assert (=> mapNonEmpty!21410 m!5726689))

(declare-fun m!5726691 () Bool)

(assert (=> b!4756917 m!5726691))

(check-sat (not b!4756920) b_and!340745 (not setNonEmpty!26881) (not mapNonEmpty!21410) (not b!4756914) (not b!4756918) (not b!4756917) b_and!340743 (not b_next!129857) (not b!4756912) (not b!4756911) (not b_next!129855) (not start!486458))
(check-sat b_and!340743 b_and!340745 (not b_next!129857) (not b_next!129855))
