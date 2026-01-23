; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412088 () Bool)

(assert start!412088)

(declare-fun b!4290829 () Bool)

(declare-fun b_free!127407 () Bool)

(declare-fun b_next!128111 () Bool)

(assert (=> b!4290829 (= b_free!127407 (not b_next!128111))))

(declare-fun tp!1315975 () Bool)

(declare-fun b_and!338623 () Bool)

(assert (=> b!4290829 (= tp!1315975 b_and!338623)))

(declare-fun b!4290840 () Bool)

(declare-fun b_free!127409 () Bool)

(declare-fun b_next!128113 () Bool)

(assert (=> b!4290840 (= b_free!127409 (not b_next!128113))))

(declare-fun tp!1315977 () Bool)

(declare-fun b_and!338625 () Bool)

(assert (=> b!4290840 (= tp!1315977 b_and!338625)))

(declare-fun b!4290827 () Bool)

(declare-fun e!2665452 () Bool)

(declare-fun e!2665447 () Bool)

(declare-datatypes ((C!26108 0))(
  ( (C!26109 (val!15380 Int)) )
))
(declare-datatypes ((Regex!12955 0))(
  ( (ElementMatch!12955 (c!730311 C!26108)) (Concat!21274 (regOne!26422 Regex!12955) (regTwo!26422 Regex!12955)) (EmptyExpr!12955) (Star!12955 (reg!13284 Regex!12955)) (EmptyLang!12955) (Union!12955 (regOne!26423 Regex!12955) (regTwo!26423 Regex!12955)) )
))
(declare-datatypes ((List!47809 0))(
  ( (Nil!47685) (Cons!47685 (h!53105 Regex!12955) (t!354413 List!47809)) )
))
(declare-datatypes ((Context!5690 0))(
  ( (Context!5691 (exprs!3345 List!47809)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45330 0))(
  ( (tuple2!45331 (_1!25880 (InoxSet Context!5690)) (_2!25880 Int)) )
))
(declare-datatypes ((tuple2!45332 0))(
  ( (tuple2!45333 (_1!25881 tuple2!45330) (_2!25881 Int)) )
))
(declare-datatypes ((List!47810 0))(
  ( (Nil!47686) (Cons!47686 (h!53106 tuple2!45332) (t!354414 List!47810)) )
))
(declare-datatypes ((array!15716 0))(
  ( (array!15717 (arr!7018 (Array (_ BitVec 32) (_ BitVec 64))) (size!34999 (_ BitVec 32))) )
))
(declare-datatypes ((array!15718 0))(
  ( (array!15719 (arr!7019 (Array (_ BitVec 32) List!47810)) (size!35000 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8792 0))(
  ( (LongMapFixedSize!8793 (defaultEntry!4781 Int) (mask!12843 (_ BitVec 32)) (extraKeys!4645 (_ BitVec 32)) (zeroValue!4655 List!47810) (minValue!4655 List!47810) (_size!8835 (_ BitVec 32)) (_keys!4696 array!15716) (_values!4677 array!15718) (_vacant!4457 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17393 0))(
  ( (Cell!17394 (v!41603 LongMapFixedSize!8792)) )
))
(declare-datatypes ((MutLongMap!4396 0))(
  ( (LongMap!4396 (underlying!9021 Cell!17393)) (MutLongMapExt!4395 (__x!29213 Int)) )
))
(declare-fun lt!1516868 () MutLongMap!4396)

(get-info :version)

(assert (=> b!4290827 (= e!2665452 (and e!2665447 ((_ is LongMap!4396) lt!1516868)))))

(declare-datatypes ((Hashable!4312 0))(
  ( (HashableExt!4311 (__x!29214 Int)) )
))
(declare-datatypes ((Cell!17395 0))(
  ( (Cell!17396 (v!41604 MutLongMap!4396)) )
))
(declare-datatypes ((MutableMap!4302 0))(
  ( (MutableMapExt!4301 (__x!29215 Int)) (HashMap!4302 (underlying!9022 Cell!17395) (hashF!6344 Hashable!4312) (_size!8836 (_ BitVec 32)) (defaultValue!4473 Int)) )
))
(declare-datatypes ((List!47811 0))(
  ( (Nil!47687) (Cons!47687 (h!53107 C!26108) (t!354415 List!47811)) )
))
(declare-datatypes ((IArray!28855 0))(
  ( (IArray!28856 (innerList!14485 List!47811)) )
))
(declare-datatypes ((Conc!14397 0))(
  ( (Node!14397 (left!35411 Conc!14397) (right!35741 Conc!14397) (csize!29024 Int) (cheight!14608 Int)) (Leaf!22276 (xs!17703 IArray!28855) (csize!29025 Int)) (Empty!14397) )
))
(declare-datatypes ((BalanceConc!28284 0))(
  ( (BalanceConc!28285 (c!730312 Conc!14397)) )
))
(declare-datatypes ((CacheFindLongestMatch!482 0))(
  ( (CacheFindLongestMatch!483 (cache!4442 MutableMap!4302) (totalInput!4360 BalanceConc!28284)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!482)

(assert (=> b!4290827 (= lt!1516868 (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))))

(declare-fun b!4290828 () Bool)

(declare-fun e!2665457 () Bool)

(assert (=> b!4290828 (= e!2665447 e!2665457)))

(declare-fun tp!1315972 () Bool)

(declare-fun e!2665455 () Bool)

(declare-fun e!2665445 () Bool)

(declare-fun tp!1315970 () Bool)

(declare-fun array_inv!5037 (array!15716) Bool)

(declare-fun array_inv!5038 (array!15718) Bool)

(assert (=> b!4290829 (= e!2665445 (and tp!1315975 tp!1315972 tp!1315970 (array_inv!5037 (_keys!4696 (v!41603 (underlying!9021 (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))))) (array_inv!5038 (_values!4677 (v!41603 (underlying!9021 (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))))) e!2665455))))

(declare-fun b!4290830 () Bool)

(declare-fun res!1759725 () Bool)

(declare-fun e!2665456 () Bool)

(assert (=> b!4290830 (=> (not res!1759725) (not e!2665456))))

(declare-fun z!3765 () (InoxSet Context!5690))

(declare-fun lostCauseZipper!640 ((InoxSet Context!5690)) Bool)

(assert (=> b!4290830 (= res!1759725 (not (lostCauseZipper!640 z!3765)))))

(declare-fun b!4290831 () Bool)

(declare-fun e!2665450 () Bool)

(declare-fun totalInput!812 () BalanceConc!28284)

(declare-fun tp!1315968 () Bool)

(declare-fun inv!63195 (Conc!14397) Bool)

(assert (=> b!4290831 (= e!2665450 (and (inv!63195 (c!730312 totalInput!812)) tp!1315968))))

(declare-fun res!1759726 () Bool)

(declare-fun e!2665453 () Bool)

(assert (=> start!412088 (=> (not res!1759726) (not e!2665453))))

(declare-fun from!999 () Int)

(assert (=> start!412088 (= res!1759726 (>= from!999 0))))

(assert (=> start!412088 e!2665453))

(declare-fun e!2665454 () Bool)

(declare-fun inv!63196 (CacheFindLongestMatch!482) Bool)

(assert (=> start!412088 (and (inv!63196 cacheFindLongestMatch!183) e!2665454)))

(declare-fun condSetEmpty!26448 () Bool)

(assert (=> start!412088 (= condSetEmpty!26448 (= z!3765 ((as const (Array Context!5690 Bool)) false)))))

(declare-fun setRes!26448 () Bool)

(assert (=> start!412088 setRes!26448))

(assert (=> start!412088 true))

(declare-fun inv!63197 (BalanceConc!28284) Bool)

(assert (=> start!412088 (and (inv!63197 totalInput!812) e!2665450)))

(declare-fun b!4290832 () Bool)

(declare-fun e!2665451 () Bool)

(declare-fun tp!1315967 () Bool)

(assert (=> b!4290832 (= e!2665451 tp!1315967)))

(declare-fun b!4290833 () Bool)

(declare-fun res!1759727 () Bool)

(assert (=> b!4290833 (=> (not res!1759727) (not e!2665456))))

(declare-datatypes ((Option!10131 0))(
  ( (None!10130) (Some!10130 (v!41605 Int)) )
))
(declare-fun get!15440 (CacheFindLongestMatch!482 (InoxSet Context!5690) Int) Option!10131)

(assert (=> b!4290833 (= res!1759727 (not ((_ is Some!10130) (get!15440 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun b!4290834 () Bool)

(declare-fun lt!1516867 () Int)

(assert (=> b!4290834 (= e!2665456 (or (> 0 from!999) (>= from!999 lt!1516867)))))

(declare-fun b!4290835 () Bool)

(declare-fun res!1759728 () Bool)

(assert (=> b!4290835 (=> (not res!1759728) (not e!2665456))))

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4290835 (= res!1759728 (not (= from!999 totalInputSize!257)))))

(declare-fun mapNonEmpty!19800 () Bool)

(declare-fun mapRes!19800 () Bool)

(declare-fun tp!1315971 () Bool)

(declare-fun tp!1315974 () Bool)

(assert (=> mapNonEmpty!19800 (= mapRes!19800 (and tp!1315971 tp!1315974))))

(declare-fun mapKey!19800 () (_ BitVec 32))

(declare-fun mapValue!19800 () List!47810)

(declare-fun mapRest!19800 () (Array (_ BitVec 32) List!47810))

(assert (=> mapNonEmpty!19800 (= (arr!7019 (_values!4677 (v!41603 (underlying!9021 (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))))) (store mapRest!19800 mapKey!19800 mapValue!19800))))

(declare-fun b!4290836 () Bool)

(assert (=> b!4290836 (= e!2665457 e!2665445)))

(declare-fun mapIsEmpty!19800 () Bool)

(assert (=> mapIsEmpty!19800 mapRes!19800))

(declare-fun b!4290837 () Bool)

(declare-fun tp!1315973 () Bool)

(assert (=> b!4290837 (= e!2665455 (and tp!1315973 mapRes!19800))))

(declare-fun condMapEmpty!19800 () Bool)

(declare-fun mapDefault!19800 () List!47810)

(assert (=> b!4290837 (= condMapEmpty!19800 (= (arr!7019 (_values!4677 (v!41603 (underlying!9021 (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47810)) mapDefault!19800)))))

(declare-fun b!4290838 () Bool)

(declare-fun e!2665448 () Bool)

(declare-fun e!2665449 () Bool)

(assert (=> b!4290838 (= e!2665454 (and e!2665448 (inv!63197 (totalInput!4360 cacheFindLongestMatch!183)) e!2665449))))

(declare-fun setIsEmpty!26448 () Bool)

(assert (=> setIsEmpty!26448 setRes!26448))

(declare-fun b!4290839 () Bool)

(declare-fun tp!1315969 () Bool)

(assert (=> b!4290839 (= e!2665449 (and (inv!63195 (c!730312 (totalInput!4360 cacheFindLongestMatch!183))) tp!1315969))))

(assert (=> b!4290840 (= e!2665448 (and e!2665452 tp!1315977))))

(declare-fun b!4290841 () Bool)

(assert (=> b!4290841 (= e!2665453 e!2665456)))

(declare-fun res!1759729 () Bool)

(assert (=> b!4290841 (=> (not res!1759729) (not e!2665456))))

(assert (=> b!4290841 (= res!1759729 (and (<= from!999 lt!1516867) (= totalInputSize!257 lt!1516867) (= (totalInput!4360 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35001 (BalanceConc!28284) Int)

(assert (=> b!4290841 (= lt!1516867 (size!35001 totalInput!812))))

(declare-fun tp!1315976 () Bool)

(declare-fun setNonEmpty!26448 () Bool)

(declare-fun setElem!26448 () Context!5690)

(declare-fun inv!63198 (Context!5690) Bool)

(assert (=> setNonEmpty!26448 (= setRes!26448 (and tp!1315976 (inv!63198 setElem!26448) e!2665451))))

(declare-fun setRest!26448 () (InoxSet Context!5690))

(assert (=> setNonEmpty!26448 (= z!3765 ((_ map or) (store ((as const (Array Context!5690 Bool)) false) setElem!26448 true) setRest!26448))))

(assert (= (and start!412088 res!1759726) b!4290841))

(assert (= (and b!4290841 res!1759729) b!4290833))

(assert (= (and b!4290833 res!1759727) b!4290835))

(assert (= (and b!4290835 res!1759728) b!4290830))

(assert (= (and b!4290830 res!1759725) b!4290834))

(assert (= (and b!4290837 condMapEmpty!19800) mapIsEmpty!19800))

(assert (= (and b!4290837 (not condMapEmpty!19800)) mapNonEmpty!19800))

(assert (= b!4290829 b!4290837))

(assert (= b!4290836 b!4290829))

(assert (= b!4290828 b!4290836))

(assert (= (and b!4290827 ((_ is LongMap!4396) (v!41604 (underlying!9022 (cache!4442 cacheFindLongestMatch!183))))) b!4290828))

(assert (= b!4290840 b!4290827))

(assert (= (and b!4290838 ((_ is HashMap!4302) (cache!4442 cacheFindLongestMatch!183))) b!4290840))

(assert (= b!4290838 b!4290839))

(assert (= start!412088 b!4290838))

(assert (= (and start!412088 condSetEmpty!26448) setIsEmpty!26448))

(assert (= (and start!412088 (not condSetEmpty!26448)) setNonEmpty!26448))

(assert (= setNonEmpty!26448 b!4290832))

(assert (= start!412088 b!4290831))

(declare-fun m!4885121 () Bool)

(assert (=> setNonEmpty!26448 m!4885121))

(declare-fun m!4885123 () Bool)

(assert (=> b!4290833 m!4885123))

(declare-fun m!4885125 () Bool)

(assert (=> start!412088 m!4885125))

(declare-fun m!4885127 () Bool)

(assert (=> start!412088 m!4885127))

(declare-fun m!4885129 () Bool)

(assert (=> b!4290839 m!4885129))

(declare-fun m!4885131 () Bool)

(assert (=> mapNonEmpty!19800 m!4885131))

(declare-fun m!4885133 () Bool)

(assert (=> b!4290831 m!4885133))

(declare-fun m!4885135 () Bool)

(assert (=> b!4290841 m!4885135))

(declare-fun m!4885137 () Bool)

(assert (=> b!4290838 m!4885137))

(declare-fun m!4885139 () Bool)

(assert (=> b!4290830 m!4885139))

(declare-fun m!4885141 () Bool)

(assert (=> b!4290829 m!4885141))

(declare-fun m!4885143 () Bool)

(assert (=> b!4290829 m!4885143))

(check-sat (not b!4290831) b_and!338625 (not b_next!128113) (not b!4290832) (not b!4290839) (not mapNonEmpty!19800) (not start!412088) (not setNonEmpty!26448) (not b!4290838) (not b!4290829) b_and!338623 (not b!4290841) (not b!4290837) (not b!4290833) (not b!4290830) (not b_next!128111))
(check-sat b_and!338625 b_and!338623 (not b_next!128111) (not b_next!128113))
