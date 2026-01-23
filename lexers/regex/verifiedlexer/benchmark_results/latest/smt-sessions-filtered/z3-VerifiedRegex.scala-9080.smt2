; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486556 () Bool)

(assert start!486556)

(declare-fun b!4757786 () Bool)

(declare-fun b_free!129191 () Bool)

(declare-fun b_next!129895 () Bool)

(assert (=> b!4757786 (= b_free!129191 (not b_next!129895))))

(declare-fun tp!1351640 () Bool)

(declare-fun b_and!340795 () Bool)

(assert (=> b!4757786 (= tp!1351640 b_and!340795)))

(declare-fun b!4757790 () Bool)

(declare-fun b_free!129193 () Bool)

(declare-fun b_next!129897 () Bool)

(assert (=> b!4757790 (= b_free!129193 (not b_next!129897))))

(declare-fun tp!1351631 () Bool)

(declare-fun b_and!340797 () Bool)

(assert (=> b!4757790 (= tp!1351631 b_and!340797)))

(declare-fun setRes!26956 () Bool)

(declare-datatypes ((C!26232 0))(
  ( (C!26233 (val!20104 Int)) )
))
(declare-datatypes ((Regex!13017 0))(
  ( (ElementMatch!13017 (c!811863 C!26232)) (Concat!21336 (regOne!26546 Regex!13017) (regTwo!26546 Regex!13017)) (EmptyExpr!13017) (Star!13017 (reg!13346 Regex!13017)) (EmptyLang!13017) (Union!13017 (regOne!26547 Regex!13017) (regTwo!26547 Regex!13017)) )
))
(declare-datatypes ((List!53357 0))(
  ( (Nil!53233) (Cons!53233 (h!59644 Regex!13017) (t!360707 List!53357)) )
))
(declare-datatypes ((Context!5814 0))(
  ( (Context!5815 (exprs!3407 List!53357)) )
))
(declare-fun setElem!26956 () Context!5814)

(declare-fun e!2968381 () Bool)

(declare-fun tp!1351639 () Bool)

(declare-fun setNonEmpty!26956 () Bool)

(declare-fun inv!68671 (Context!5814) Bool)

(assert (=> setNonEmpty!26956 (= setRes!26956 (and tp!1351639 (inv!68671 setElem!26956) e!2968381))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!490 () (InoxSet Context!5814))

(declare-fun setRest!26956 () (InoxSet Context!5814))

(assert (=> setNonEmpty!26956 (= z!490 ((_ map or) (store ((as const (Array Context!5814 Bool)) false) setElem!26956 true) setRest!26956))))

(declare-fun mapNonEmpty!21449 () Bool)

(declare-fun mapRes!21449 () Bool)

(declare-fun tp!1351637 () Bool)

(declare-fun tp!1351635 () Bool)

(assert (=> mapNonEmpty!21449 (= mapRes!21449 (and tp!1351637 tp!1351635))))

(declare-datatypes ((tuple2!55124 0))(
  ( (tuple2!55125 (_1!30856 (InoxSet Context!5814)) (_2!30856 Int)) )
))
(declare-datatypes ((tuple2!55126 0))(
  ( (tuple2!55127 (_1!30857 tuple2!55124) (_2!30857 Int)) )
))
(declare-datatypes ((List!53358 0))(
  ( (Nil!53234) (Cons!53234 (h!59645 tuple2!55126) (t!360708 List!53358)) )
))
(declare-fun mapValue!21449 () List!53358)

(declare-datatypes ((array!17536 0))(
  ( (array!17537 (arr!7823 (Array (_ BitVec 32) (_ BitVec 64))) (size!36024 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6480 0))(
  ( (HashableExt!6479 (__x!32205 Int)) )
))
(declare-datatypes ((List!53359 0))(
  ( (Nil!53235) (Cons!53235 (h!59646 C!26232) (t!360709 List!53359)) )
))
(declare-datatypes ((IArray!28977 0))(
  ( (IArray!28978 (innerList!14546 List!53359)) )
))
(declare-datatypes ((Conc!14458 0))(
  ( (Node!14458 (left!39040 Conc!14458) (right!39370 Conc!14458) (csize!29146 Int) (cheight!14669 Int)) (Leaf!23539 (xs!17764 IArray!28977) (csize!29147 Int)) (Empty!14458) )
))
(declare-datatypes ((BalanceConc!28406 0))(
  ( (BalanceConc!28407 (c!811864 Conc!14458)) )
))
(declare-datatypes ((array!17538 0))(
  ( (array!17539 (arr!7824 (Array (_ BitVec 32) List!53358)) (size!36025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9638 0))(
  ( (LongMapFixedSize!9639 (defaultEntry!5233 Int) (mask!14514 (_ BitVec 32)) (extraKeys!5089 (_ BitVec 32)) (zeroValue!5102 List!53358) (minValue!5102 List!53358) (_size!9663 (_ BitVec 32)) (_keys!5154 array!17536) (_values!5127 array!17538) (_vacant!4884 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19041 0))(
  ( (Cell!19042 (v!47306 LongMapFixedSize!9638)) )
))
(declare-datatypes ((MutLongMap!4819 0))(
  ( (LongMap!4819 (underlying!9845 Cell!19041)) (MutLongMapExt!4818 (__x!32206 Int)) )
))
(declare-datatypes ((Cell!19043 0))(
  ( (Cell!19044 (v!47307 MutLongMap!4819)) )
))
(declare-datatypes ((MutableMap!4703 0))(
  ( (MutableMapExt!4702 (__x!32207 Int)) (HashMap!4703 (underlying!9846 Cell!19043) (hashF!12290 Hashable!6480) (_size!9664 (_ BitVec 32)) (defaultValue!4874 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!604 0))(
  ( (CacheFindLongestMatch!605 (cache!4545 MutableMap!4703) (totalInput!4453 BalanceConc!28406)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!604)

(declare-fun mapRest!21449 () (Array (_ BitVec 32) List!53358))

(declare-fun mapKey!21449 () (_ BitVec 32))

(assert (=> mapNonEmpty!21449 (= (arr!7824 (_values!5127 (v!47306 (underlying!9845 (v!47307 (underlying!9846 (cache!4545 thiss!28972))))))) (store mapRest!21449 mapKey!21449 mapValue!21449))))

(declare-fun e!2968388 () Bool)

(declare-fun tp!1351633 () Bool)

(declare-fun tp!1351636 () Bool)

(declare-fun e!2968377 () Bool)

(declare-fun array_inv!5631 (array!17536) Bool)

(declare-fun array_inv!5632 (array!17538) Bool)

(assert (=> b!4757786 (= e!2968388 (and tp!1351640 tp!1351636 tp!1351633 (array_inv!5631 (_keys!5154 (v!47306 (underlying!9845 (v!47307 (underlying!9846 (cache!4545 thiss!28972))))))) (array_inv!5632 (_values!5127 (v!47306 (underlying!9845 (v!47307 (underlying!9846 (cache!4545 thiss!28972))))))) e!2968377))))

(declare-fun b!4757787 () Bool)

(declare-fun e!2968386 () Bool)

(assert (=> b!4757787 (= e!2968386 true)))

(declare-fun lt!1923684 () Int)

(declare-fun size!36026 (BalanceConc!28406) Int)

(assert (=> b!4757787 (= lt!1923684 (size!36026 (totalInput!4453 thiss!28972)))))

(declare-fun e!2968391 () Bool)

(declare-fun b!4757789 () Bool)

(declare-fun e!2968382 () Bool)

(declare-fun e!2968387 () Bool)

(declare-fun inv!68672 (BalanceConc!28406) Bool)

(assert (=> b!4757789 (= e!2968391 (and e!2968382 (inv!68672 (totalInput!4453 thiss!28972)) e!2968387))))

(declare-fun e!2968390 () Bool)

(assert (=> b!4757790 (= e!2968382 (and e!2968390 tp!1351631))))

(declare-fun b!4757791 () Bool)

(declare-fun e!2968383 () Bool)

(declare-fun e!2968384 () Bool)

(assert (=> b!4757791 (= e!2968383 e!2968384)))

(declare-fun res!2018425 () Bool)

(assert (=> b!4757791 (=> (not res!2018425) (not e!2968384))))

(declare-fun from!930 () Int)

(declare-fun lt!1923682 () Int)

(assert (=> b!4757791 (= res!2018425 (<= from!930 lt!1923682))))

(assert (=> b!4757791 (= lt!1923682 (size!36026 (totalInput!4453 thiss!28972)))))

(declare-fun mapIsEmpty!21449 () Bool)

(assert (=> mapIsEmpty!21449 mapRes!21449))

(declare-fun b!4757792 () Bool)

(declare-fun e!2968378 () Bool)

(assert (=> b!4757792 (= e!2968378 (not e!2968386))))

(declare-fun res!2018428 () Bool)

(assert (=> b!4757792 (=> res!2018428 e!2968386)))

(declare-fun lt!1923685 () tuple2!55124)

(declare-datatypes ((Option!12580 0))(
  ( (None!12579) (Some!12579 (v!47308 Int)) )
))
(declare-fun isEmpty!29260 (Option!12580) Bool)

(declare-fun apply!12512 (MutableMap!4703 tuple2!55124) Int)

(assert (=> b!4757792 (= res!2018428 (isEmpty!29260 (Some!12579 (apply!12512 (cache!4545 thiss!28972) lt!1923685))))))

(assert (=> b!4757792 e!2968383))

(declare-fun res!2018429 () Bool)

(assert (=> b!4757792 (=> (not res!2018429) (not e!2968383))))

(assert (=> b!4757792 (= res!2018429 (>= from!930 0))))

(declare-datatypes ((Unit!137749 0))(
  ( (Unit!137750) )
))
(declare-fun lt!1923683 () Unit!137749)

(declare-fun lemmaIfInCacheThenValid!77 (CacheFindLongestMatch!604 (InoxSet Context!5814) Int BalanceConc!28406) Unit!137749)

(assert (=> b!4757792 (= lt!1923683 (lemmaIfInCacheThenValid!77 thiss!28972 z!490 from!930 (totalInput!4453 thiss!28972)))))

(declare-fun b!4757793 () Bool)

(declare-fun e!2968389 () Bool)

(assert (=> b!4757793 (= e!2968389 e!2968388)))

(declare-fun b!4757794 () Bool)

(declare-fun e!2968380 () Bool)

(declare-fun lt!1923686 () MutLongMap!4819)

(get-info :version)

(assert (=> b!4757794 (= e!2968390 (and e!2968380 ((_ is LongMap!4819) lt!1923686)))))

(assert (=> b!4757794 (= lt!1923686 (v!47307 (underlying!9846 (cache!4545 thiss!28972))))))

(declare-fun b!4757795 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!65 ((InoxSet Context!5814) Int BalanceConc!28406 Int) Int)

(assert (=> b!4757795 (= e!2968384 (= (findLongestMatchInnerZipperFastV2!65 z!490 from!930 (totalInput!4453 thiss!28972) lt!1923682) (apply!12512 (cache!4545 thiss!28972) lt!1923685)))))

(declare-fun b!4757796 () Bool)

(assert (=> b!4757796 (= e!2968380 e!2968389)))

(declare-fun b!4757797 () Bool)

(declare-fun tp!1351632 () Bool)

(declare-fun inv!68673 (Conc!14458) Bool)

(assert (=> b!4757797 (= e!2968387 (and (inv!68673 (c!811864 (totalInput!4453 thiss!28972))) tp!1351632))))

(declare-fun b!4757798 () Bool)

(declare-fun e!2968385 () Bool)

(assert (=> b!4757798 (= e!2968385 e!2968378)))

(declare-fun res!2018426 () Bool)

(assert (=> b!4757798 (=> (not res!2018426) (not e!2968378))))

(declare-fun contains!16615 (MutableMap!4703 tuple2!55124) Bool)

(assert (=> b!4757798 (= res!2018426 (contains!16615 (cache!4545 thiss!28972) lt!1923685))))

(assert (=> b!4757798 (= lt!1923685 (tuple2!55125 z!490 from!930))))

(declare-fun b!4757788 () Bool)

(declare-fun tp!1351638 () Bool)

(assert (=> b!4757788 (= e!2968377 (and tp!1351638 mapRes!21449))))

(declare-fun condMapEmpty!21449 () Bool)

(declare-fun mapDefault!21449 () List!53358)

(assert (=> b!4757788 (= condMapEmpty!21449 (= (arr!7824 (_values!5127 (v!47306 (underlying!9845 (v!47307 (underlying!9846 (cache!4545 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53358)) mapDefault!21449)))))

(declare-fun res!2018427 () Bool)

(assert (=> start!486556 (=> (not res!2018427) (not e!2968385))))

(declare-fun validCacheMapFindLongestMatch!105 (MutableMap!4703 BalanceConc!28406) Bool)

(assert (=> start!486556 (= res!2018427 (validCacheMapFindLongestMatch!105 (cache!4545 thiss!28972) (totalInput!4453 thiss!28972)))))

(assert (=> start!486556 e!2968385))

(declare-fun inv!68674 (CacheFindLongestMatch!604) Bool)

(assert (=> start!486556 (and (inv!68674 thiss!28972) e!2968391)))

(declare-fun condSetEmpty!26956 () Bool)

(assert (=> start!486556 (= condSetEmpty!26956 (= z!490 ((as const (Array Context!5814 Bool)) false)))))

(assert (=> start!486556 setRes!26956))

(assert (=> start!486556 true))

(declare-fun b!4757799 () Bool)

(declare-fun tp!1351634 () Bool)

(assert (=> b!4757799 (= e!2968381 tp!1351634)))

(declare-fun setIsEmpty!26956 () Bool)

(assert (=> setIsEmpty!26956 setRes!26956))

(assert (= (and start!486556 res!2018427) b!4757798))

(assert (= (and b!4757798 res!2018426) b!4757792))

(assert (= (and b!4757792 res!2018429) b!4757791))

(assert (= (and b!4757791 res!2018425) b!4757795))

(assert (= (and b!4757792 (not res!2018428)) b!4757787))

(assert (= (and b!4757788 condMapEmpty!21449) mapIsEmpty!21449))

(assert (= (and b!4757788 (not condMapEmpty!21449)) mapNonEmpty!21449))

(assert (= b!4757786 b!4757788))

(assert (= b!4757793 b!4757786))

(assert (= b!4757796 b!4757793))

(assert (= (and b!4757794 ((_ is LongMap!4819) (v!47307 (underlying!9846 (cache!4545 thiss!28972))))) b!4757796))

(assert (= b!4757790 b!4757794))

(assert (= (and b!4757789 ((_ is HashMap!4703) (cache!4545 thiss!28972))) b!4757790))

(assert (= b!4757789 b!4757797))

(assert (= start!486556 b!4757789))

(assert (= (and start!486556 condSetEmpty!26956) setIsEmpty!26956))

(assert (= (and start!486556 (not condSetEmpty!26956)) setNonEmpty!26956))

(assert (= setNonEmpty!26956 b!4757799))

(declare-fun m!5727468 () Bool)

(assert (=> b!4757789 m!5727468))

(declare-fun m!5727470 () Bool)

(assert (=> setNonEmpty!26956 m!5727470))

(declare-fun m!5727472 () Bool)

(assert (=> b!4757795 m!5727472))

(declare-fun m!5727474 () Bool)

(assert (=> b!4757795 m!5727474))

(declare-fun m!5727476 () Bool)

(assert (=> b!4757798 m!5727476))

(assert (=> b!4757792 m!5727474))

(declare-fun m!5727478 () Bool)

(assert (=> b!4757792 m!5727478))

(declare-fun m!5727480 () Bool)

(assert (=> b!4757792 m!5727480))

(declare-fun m!5727482 () Bool)

(assert (=> start!486556 m!5727482))

(declare-fun m!5727484 () Bool)

(assert (=> start!486556 m!5727484))

(declare-fun m!5727486 () Bool)

(assert (=> mapNonEmpty!21449 m!5727486))

(declare-fun m!5727488 () Bool)

(assert (=> b!4757797 m!5727488))

(declare-fun m!5727490 () Bool)

(assert (=> b!4757791 m!5727490))

(declare-fun m!5727492 () Bool)

(assert (=> b!4757786 m!5727492))

(declare-fun m!5727494 () Bool)

(assert (=> b!4757786 m!5727494))

(assert (=> b!4757787 m!5727490))

(check-sat b_and!340795 (not setNonEmpty!26956) (not b!4757789) (not b_next!129897) (not b!4757797) (not b!4757788) (not b!4757791) (not b!4757792) (not b!4757786) b_and!340797 (not b!4757799) (not b!4757798) (not mapNonEmpty!21449) (not start!486556) (not b_next!129895) (not b!4757795) (not b!4757787))
(check-sat b_and!340797 b_and!340795 (not b_next!129895) (not b_next!129897))
