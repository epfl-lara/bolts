; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486568 () Bool)

(assert start!486568)

(declare-fun b!4758007 () Bool)

(declare-fun b_free!129215 () Bool)

(declare-fun b_next!129919 () Bool)

(assert (=> b!4758007 (= b_free!129215 (not b_next!129919))))

(declare-fun tp!1351813 () Bool)

(declare-fun b_and!340819 () Bool)

(assert (=> b!4758007 (= tp!1351813 b_and!340819)))

(declare-fun b!4758002 () Bool)

(declare-fun b_free!129217 () Bool)

(declare-fun b_next!129921 () Bool)

(assert (=> b!4758002 (= b_free!129217 (not b_next!129921))))

(declare-fun tp!1351811 () Bool)

(declare-fun b_and!340821 () Bool)

(assert (=> b!4758002 (= tp!1351811 b_and!340821)))

(declare-fun mapNonEmpty!21467 () Bool)

(declare-fun mapRes!21467 () Bool)

(declare-fun tp!1351820 () Bool)

(declare-fun tp!1351818 () Bool)

(assert (=> mapNonEmpty!21467 (= mapRes!21467 (and tp!1351820 tp!1351818))))

(declare-datatypes ((C!26244 0))(
  ( (C!26245 (val!20110 Int)) )
))
(declare-datatypes ((Regex!13023 0))(
  ( (ElementMatch!13023 (c!811875 C!26244)) (Concat!21342 (regOne!26558 Regex!13023) (regTwo!26558 Regex!13023)) (EmptyExpr!13023) (Star!13023 (reg!13352 Regex!13023)) (EmptyLang!13023) (Union!13023 (regOne!26559 Regex!13023) (regTwo!26559 Regex!13023)) )
))
(declare-datatypes ((List!53375 0))(
  ( (Nil!53251) (Cons!53251 (h!59662 Regex!13023) (t!360725 List!53375)) )
))
(declare-datatypes ((Context!5826 0))(
  ( (Context!5827 (exprs!3413 List!53375)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55148 0))(
  ( (tuple2!55149 (_1!30868 (InoxSet Context!5826)) (_2!30868 Int)) )
))
(declare-datatypes ((tuple2!55150 0))(
  ( (tuple2!55151 (_1!30869 tuple2!55148) (_2!30869 Int)) )
))
(declare-datatypes ((List!53376 0))(
  ( (Nil!53252) (Cons!53252 (h!59663 tuple2!55150) (t!360726 List!53376)) )
))
(declare-fun mapRest!21467 () (Array (_ BitVec 32) List!53376))

(declare-datatypes ((array!17560 0))(
  ( (array!17561 (arr!7835 (Array (_ BitVec 32) (_ BitVec 64))) (size!36039 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6486 0))(
  ( (HashableExt!6485 (__x!32223 Int)) )
))
(declare-datatypes ((List!53377 0))(
  ( (Nil!53253) (Cons!53253 (h!59664 C!26244) (t!360727 List!53377)) )
))
(declare-datatypes ((IArray!28989 0))(
  ( (IArray!28990 (innerList!14552 List!53377)) )
))
(declare-datatypes ((Conc!14464 0))(
  ( (Node!14464 (left!39049 Conc!14464) (right!39379 Conc!14464) (csize!29158 Int) (cheight!14675 Int)) (Leaf!23548 (xs!17770 IArray!28989) (csize!29159 Int)) (Empty!14464) )
))
(declare-datatypes ((BalanceConc!28418 0))(
  ( (BalanceConc!28419 (c!811876 Conc!14464)) )
))
(declare-datatypes ((array!17562 0))(
  ( (array!17563 (arr!7836 (Array (_ BitVec 32) List!53376)) (size!36040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9650 0))(
  ( (LongMapFixedSize!9651 (defaultEntry!5239 Int) (mask!14523 (_ BitVec 32)) (extraKeys!5095 (_ BitVec 32)) (zeroValue!5108 List!53376) (minValue!5108 List!53376) (_size!9675 (_ BitVec 32)) (_keys!5160 array!17560) (_values!5133 array!17562) (_vacant!4890 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19065 0))(
  ( (Cell!19066 (v!47319 LongMapFixedSize!9650)) )
))
(declare-datatypes ((MutLongMap!4825 0))(
  ( (LongMap!4825 (underlying!9857 Cell!19065)) (MutLongMapExt!4824 (__x!32224 Int)) )
))
(declare-datatypes ((Cell!19067 0))(
  ( (Cell!19068 (v!47320 MutLongMap!4825)) )
))
(declare-datatypes ((MutableMap!4709 0))(
  ( (MutableMapExt!4708 (__x!32225 Int)) (HashMap!4709 (underlying!9858 Cell!19067) (hashF!12296 Hashable!6486) (_size!9676 (_ BitVec 32)) (defaultValue!4880 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!616 0))(
  ( (CacheFindLongestMatch!617 (cache!4551 MutableMap!4709) (totalInput!4459 BalanceConc!28418)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!616)

(declare-fun mapValue!21467 () List!53376)

(declare-fun mapKey!21467 () (_ BitVec 32))

(assert (=> mapNonEmpty!21467 (= (arr!7836 (_values!5133 (v!47319 (underlying!9857 (v!47320 (underlying!9858 (cache!4551 thiss!28972))))))) (store mapRest!21467 mapKey!21467 mapValue!21467))))

(declare-fun res!2018475 () Bool)

(declare-fun e!2968587 () Bool)

(assert (=> start!486568 (=> (not res!2018475) (not e!2968587))))

(declare-fun validCacheMapFindLongestMatch!110 (MutableMap!4709 BalanceConc!28418) Bool)

(assert (=> start!486568 (= res!2018475 (validCacheMapFindLongestMatch!110 (cache!4551 thiss!28972) (totalInput!4459 thiss!28972)))))

(assert (=> start!486568 e!2968587))

(declare-fun e!2968582 () Bool)

(declare-fun inv!68696 (CacheFindLongestMatch!616) Bool)

(assert (=> start!486568 (and (inv!68696 thiss!28972) e!2968582)))

(declare-fun condSetEmpty!26974 () Bool)

(declare-fun z!490 () (InoxSet Context!5826))

(assert (=> start!486568 (= condSetEmpty!26974 (= z!490 ((as const (Array Context!5826 Bool)) false)))))

(declare-fun setRes!26974 () Bool)

(assert (=> start!486568 setRes!26974))

(assert (=> start!486568 true))

(declare-fun b!4757998 () Bool)

(declare-fun e!2968584 () Bool)

(declare-fun tp!1351816 () Bool)

(assert (=> b!4757998 (= e!2968584 tp!1351816)))

(declare-fun mapIsEmpty!21467 () Bool)

(assert (=> mapIsEmpty!21467 mapRes!21467))

(declare-fun b!4757999 () Bool)

(assert (=> b!4757999 (= e!2968587 false)))

(declare-fun lt!1923716 () Int)

(declare-fun size!36041 (BalanceConc!28418) Int)

(assert (=> b!4757999 (= lt!1923716 (size!36041 (totalInput!4459 thiss!28972)))))

(declare-fun b!4758000 () Bool)

(declare-fun e!2968589 () Bool)

(declare-fun tp!1351812 () Bool)

(declare-fun inv!68697 (Conc!14464) Bool)

(assert (=> b!4758000 (= e!2968589 (and (inv!68697 (c!811876 (totalInput!4459 thiss!28972))) tp!1351812))))

(declare-fun b!4758001 () Bool)

(declare-fun e!2968586 () Bool)

(declare-fun e!2968581 () Bool)

(assert (=> b!4758001 (= e!2968586 e!2968581)))

(declare-fun e!2968580 () Bool)

(declare-fun e!2968585 () Bool)

(assert (=> b!4758002 (= e!2968580 (and e!2968585 tp!1351811))))

(declare-fun setIsEmpty!26974 () Bool)

(assert (=> setIsEmpty!26974 setRes!26974))

(declare-fun b!4758003 () Bool)

(declare-fun inv!68698 (BalanceConc!28418) Bool)

(assert (=> b!4758003 (= e!2968582 (and e!2968580 (inv!68698 (totalInput!4459 thiss!28972)) e!2968589))))

(declare-fun b!4758004 () Bool)

(declare-fun res!2018476 () Bool)

(assert (=> b!4758004 (=> (not res!2018476) (not e!2968587))))

(assert (=> b!4758004 (= res!2018476 false)))

(declare-fun b!4758005 () Bool)

(declare-fun e!2968583 () Bool)

(declare-fun tp!1351819 () Bool)

(assert (=> b!4758005 (= e!2968583 (and tp!1351819 mapRes!21467))))

(declare-fun condMapEmpty!21467 () Bool)

(declare-fun mapDefault!21467 () List!53376)

(assert (=> b!4758005 (= condMapEmpty!21467 (= (arr!7836 (_values!5133 (v!47319 (underlying!9857 (v!47320 (underlying!9858 (cache!4551 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53376)) mapDefault!21467)))))

(declare-fun setNonEmpty!26974 () Bool)

(declare-fun setElem!26974 () Context!5826)

(declare-fun tp!1351815 () Bool)

(declare-fun inv!68699 (Context!5826) Bool)

(assert (=> setNonEmpty!26974 (= setRes!26974 (and tp!1351815 (inv!68699 setElem!26974) e!2968584))))

(declare-fun setRest!26974 () (InoxSet Context!5826))

(assert (=> setNonEmpty!26974 (= z!490 ((_ map or) (store ((as const (Array Context!5826 Bool)) false) setElem!26974 true) setRest!26974))))

(declare-fun b!4758006 () Bool)

(declare-fun lt!1923715 () MutLongMap!4825)

(get-info :version)

(assert (=> b!4758006 (= e!2968585 (and e!2968586 ((_ is LongMap!4825) lt!1923715)))))

(assert (=> b!4758006 (= lt!1923715 (v!47320 (underlying!9858 (cache!4551 thiss!28972))))))

(declare-fun tp!1351814 () Bool)

(declare-fun e!2968579 () Bool)

(declare-fun tp!1351817 () Bool)

(declare-fun array_inv!5637 (array!17560) Bool)

(declare-fun array_inv!5638 (array!17562) Bool)

(assert (=> b!4758007 (= e!2968579 (and tp!1351813 tp!1351814 tp!1351817 (array_inv!5637 (_keys!5160 (v!47319 (underlying!9857 (v!47320 (underlying!9858 (cache!4551 thiss!28972))))))) (array_inv!5638 (_values!5133 (v!47319 (underlying!9857 (v!47320 (underlying!9858 (cache!4551 thiss!28972))))))) e!2968583))))

(declare-fun b!4758008 () Bool)

(assert (=> b!4758008 (= e!2968581 e!2968579)))

(declare-fun b!4758009 () Bool)

(declare-fun res!2018477 () Bool)

(assert (=> b!4758009 (=> (not res!2018477) (not e!2968587))))

(declare-fun from!930 () Int)

(declare-fun contains!16619 (MutableMap!4709 tuple2!55148) Bool)

(assert (=> b!4758009 (= res!2018477 (not (contains!16619 (cache!4551 thiss!28972) (tuple2!55149 z!490 from!930))))))

(assert (= (and start!486568 res!2018475) b!4758009))

(assert (= (and b!4758009 res!2018477) b!4758004))

(assert (= (and b!4758004 res!2018476) b!4757999))

(assert (= (and b!4758005 condMapEmpty!21467) mapIsEmpty!21467))

(assert (= (and b!4758005 (not condMapEmpty!21467)) mapNonEmpty!21467))

(assert (= b!4758007 b!4758005))

(assert (= b!4758008 b!4758007))

(assert (= b!4758001 b!4758008))

(assert (= (and b!4758006 ((_ is LongMap!4825) (v!47320 (underlying!9858 (cache!4551 thiss!28972))))) b!4758001))

(assert (= b!4758002 b!4758006))

(assert (= (and b!4758003 ((_ is HashMap!4709) (cache!4551 thiss!28972))) b!4758002))

(assert (= b!4758003 b!4758000))

(assert (= start!486568 b!4758003))

(assert (= (and start!486568 condSetEmpty!26974) setIsEmpty!26974))

(assert (= (and start!486568 (not condSetEmpty!26974)) setNonEmpty!26974))

(assert (= setNonEmpty!26974 b!4757998))

(declare-fun m!5727592 () Bool)

(assert (=> setNonEmpty!26974 m!5727592))

(declare-fun m!5727594 () Bool)

(assert (=> b!4758009 m!5727594))

(declare-fun m!5727596 () Bool)

(assert (=> b!4758000 m!5727596))

(declare-fun m!5727598 () Bool)

(assert (=> start!486568 m!5727598))

(declare-fun m!5727600 () Bool)

(assert (=> start!486568 m!5727600))

(declare-fun m!5727602 () Bool)

(assert (=> b!4758003 m!5727602))

(declare-fun m!5727604 () Bool)

(assert (=> mapNonEmpty!21467 m!5727604))

(declare-fun m!5727606 () Bool)

(assert (=> b!4757999 m!5727606))

(declare-fun m!5727608 () Bool)

(assert (=> b!4758007 m!5727608))

(declare-fun m!5727610 () Bool)

(assert (=> b!4758007 m!5727610))

(check-sat (not b_next!129921) (not b!4758007) (not b!4757999) b_and!340821 (not setNonEmpty!26974) (not b!4757998) (not b_next!129919) (not mapNonEmpty!21467) (not b!4758005) (not b!4758009) (not b!4758003) (not b!4758000) b_and!340819 (not start!486568))
(check-sat b_and!340821 b_and!340819 (not b_next!129919) (not b_next!129921))
