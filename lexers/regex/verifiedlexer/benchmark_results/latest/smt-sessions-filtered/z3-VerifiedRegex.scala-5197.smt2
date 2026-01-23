; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267034 () Bool)

(assert start!267034)

(declare-fun b!2754275 () Bool)

(declare-fun b_free!77941 () Bool)

(declare-fun b_next!78645 () Bool)

(assert (=> b!2754275 (= b_free!77941 (not b_next!78645))))

(declare-fun tp!870380 () Bool)

(declare-fun b_and!202679 () Bool)

(assert (=> b!2754275 (= tp!870380 b_and!202679)))

(declare-fun b!2754306 () Bool)

(declare-fun b_free!77943 () Bool)

(declare-fun b_next!78647 () Bool)

(assert (=> b!2754306 (= b_free!77943 (not b_next!78647))))

(declare-fun tp!870372 () Bool)

(declare-fun b_and!202681 () Bool)

(assert (=> b!2754306 (= tp!870372 b_and!202681)))

(declare-fun b!2754277 () Bool)

(declare-fun b_free!77945 () Bool)

(declare-fun b_next!78649 () Bool)

(assert (=> b!2754277 (= b_free!77945 (not b_next!78649))))

(declare-fun tp!870379 () Bool)

(declare-fun b_and!202683 () Bool)

(assert (=> b!2754277 (= tp!870379 b_and!202683)))

(declare-fun b!2754280 () Bool)

(declare-fun b_free!77947 () Bool)

(declare-fun b_next!78651 () Bool)

(assert (=> b!2754280 (= b_free!77947 (not b_next!78651))))

(declare-fun tp!870381 () Bool)

(declare-fun b_and!202685 () Bool)

(assert (=> b!2754280 (= tp!870381 b_and!202685)))

(declare-fun b!2754254 () Bool)

(declare-datatypes ((C!16276 0))(
  ( (C!16277 (val!10072 Int)) )
))
(declare-datatypes ((Regex!8059 0))(
  ( (ElementMatch!8059 (c!445786 C!16276)) (Concat!13147 (regOne!16630 Regex!8059) (regTwo!16630 Regex!8059)) (EmptyExpr!8059) (Star!8059 (reg!8388 Regex!8059)) (EmptyLang!8059) (Union!8059 (regOne!16631 Regex!8059) (regTwo!16631 Regex!8059)) )
))
(declare-datatypes ((List!31986 0))(
  ( (Nil!31886) (Cons!31886 (h!37306 Regex!8059) (t!228090 List!31986)) )
))
(declare-datatypes ((Context!4554 0))(
  ( (Context!4555 (exprs!2777 List!31986)) )
))
(declare-datatypes ((tuple2!31908 0))(
  ( (tuple2!31909 (_1!18756 Context!4554) (_2!18756 C!16276)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31910 0))(
  ( (tuple2!31911 (_1!18757 tuple2!31908) (_2!18757 (InoxSet Context!4554))) )
))
(declare-datatypes ((List!31987 0))(
  ( (Nil!31887) (Cons!31887 (h!37307 tuple2!31910) (t!228091 List!31987)) )
))
(declare-datatypes ((Hashable!3642 0))(
  ( (HashableExt!3641 (__x!20828 Int)) )
))
(declare-datatypes ((array!13261 0))(
  ( (array!13262 (arr!5918 (Array (_ BitVec 32) List!31987)) (size!24652 (_ BitVec 32))) )
))
(declare-datatypes ((array!13263 0))(
  ( (array!13264 (arr!5919 (Array (_ BitVec 32) (_ BitVec 64))) (size!24653 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7452 0))(
  ( (LongMapFixedSize!7453 (defaultEntry!4111 Int) (mask!9492 (_ BitVec 32)) (extraKeys!3975 (_ BitVec 32)) (zeroValue!3985 List!31987) (minValue!3985 List!31987) (_size!7495 (_ BitVec 32)) (_keys!4026 array!13263) (_values!4007 array!13261) (_vacant!3787 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14713 0))(
  ( (Cell!14714 (v!33496 LongMapFixedSize!7452)) )
))
(declare-datatypes ((MutLongMap!3726 0))(
  ( (LongMap!3726 (underlying!7655 Cell!14713)) (MutLongMapExt!3725 (__x!20829 Int)) )
))
(declare-datatypes ((Cell!14715 0))(
  ( (Cell!14716 (v!33497 MutLongMap!3726)) )
))
(declare-datatypes ((MutableMap!3632 0))(
  ( (MutableMapExt!3631 (__x!20830 Int)) (HashMap!3632 (underlying!7656 Cell!14715) (hashF!5674 Hashable!3642) (_size!7496 (_ BitVec 32)) (defaultValue!3803 Int)) )
))
(declare-datatypes ((CacheUp!2338 0))(
  ( (CacheUp!2339 (cache!3775 MutableMap!3632)) )
))
(declare-datatypes ((tuple3!4664 0))(
  ( (tuple3!4665 (_1!18758 Regex!8059) (_2!18758 Context!4554) (_3!2802 C!16276)) )
))
(declare-datatypes ((tuple2!31912 0))(
  ( (tuple2!31913 (_1!18759 tuple3!4664) (_2!18759 (InoxSet Context!4554))) )
))
(declare-datatypes ((List!31988 0))(
  ( (Nil!31888) (Cons!31888 (h!37308 tuple2!31912) (t!228092 List!31988)) )
))
(declare-datatypes ((array!13265 0))(
  ( (array!13266 (arr!5920 (Array (_ BitVec 32) List!31988)) (size!24654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7454 0))(
  ( (LongMapFixedSize!7455 (defaultEntry!4112 Int) (mask!9493 (_ BitVec 32)) (extraKeys!3976 (_ BitVec 32)) (zeroValue!3986 List!31988) (minValue!3986 List!31988) (_size!7497 (_ BitVec 32)) (_keys!4027 array!13263) (_values!4008 array!13265) (_vacant!3788 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14717 0))(
  ( (Cell!14718 (v!33498 LongMapFixedSize!7454)) )
))
(declare-datatypes ((MutLongMap!3727 0))(
  ( (LongMap!3727 (underlying!7657 Cell!14717)) (MutLongMapExt!3726 (__x!20831 Int)) )
))
(declare-datatypes ((Cell!14719 0))(
  ( (Cell!14720 (v!33499 MutLongMap!3727)) )
))
(declare-datatypes ((Hashable!3643 0))(
  ( (HashableExt!3642 (__x!20832 Int)) )
))
(declare-datatypes ((MutableMap!3633 0))(
  ( (MutableMapExt!3632 (__x!20833 Int)) (HashMap!3633 (underlying!7658 Cell!14719) (hashF!5675 Hashable!3643) (_size!7498 (_ BitVec 32)) (defaultValue!3804 Int)) )
))
(declare-datatypes ((CacheDown!2458 0))(
  ( (CacheDown!2459 (cache!3776 MutableMap!3633)) )
))
(declare-datatypes ((tuple3!4666 0))(
  ( (tuple3!4667 (_1!18760 Int) (_2!18760 CacheDown!2458) (_3!2803 CacheUp!2338)) )
))
(declare-fun e!1736638 () tuple3!4666)

(declare-datatypes ((tuple3!4668 0))(
  ( (tuple3!4669 (_1!18761 Int) (_2!18761 CacheUp!2338) (_3!2804 CacheDown!2458)) )
))
(declare-fun lt!976163 () tuple3!4668)

(assert (=> b!2754254 (= e!1736638 (tuple3!4667 (_1!18761 lt!976163) (_3!2804 lt!976163) (_2!18761 lt!976163)))))

(declare-datatypes ((tuple3!4670 0))(
  ( (tuple3!4671 (_1!18762 (InoxSet Context!4554)) (_2!18762 CacheUp!2338) (_3!2805 CacheDown!2458)) )
))
(declare-fun lt!976173 () tuple3!4670)

(declare-fun call!178341 () tuple3!4670)

(assert (=> b!2754254 (= lt!976173 call!178341)))

(declare-fun call!178331 () tuple3!4668)

(assert (=> b!2754254 (= lt!976163 call!178331)))

(declare-fun res!1154327 () Bool)

(declare-fun call!178347 () Bool)

(assert (=> b!2754254 (= res!1154327 call!178347)))

(declare-fun e!1736640 () Bool)

(assert (=> b!2754254 (=> (not res!1154327) (not e!1736640))))

(assert (=> b!2754254 e!1736640))

(declare-fun b!2754255 () Bool)

(declare-datatypes ((List!31989 0))(
  ( (Nil!31889) (Cons!31889 (h!37309 C!16276) (t!228093 List!31989)) )
))
(declare-datatypes ((tuple2!31914 0))(
  ( (tuple2!31915 (_1!18763 List!31989) (_2!18763 List!31989)) )
))
(declare-fun e!1736626 () tuple2!31914)

(declare-fun lt!976172 () List!31989)

(assert (=> b!2754255 (= e!1736626 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun bm!178322 () Bool)

(declare-datatypes ((Unit!45692 0))(
  ( (Unit!45693) )
))
(declare-fun call!178330 () Unit!45692)

(declare-fun lemmaIsPrefixRefl!1660 (List!31989 List!31989) Unit!45692)

(assert (=> bm!178322 (= call!178330 (lemmaIsPrefixRefl!1660 lt!976172 lt!976172))))

(declare-fun bm!178323 () Bool)

(declare-fun call!178327 () Bool)

(declare-fun isPrefix!2534 (List!31989 List!31989) Bool)

(assert (=> bm!178323 (= call!178327 (isPrefix!2534 lt!976172 lt!976172))))

(declare-fun bm!178324 () Bool)

(declare-fun call!178346 () (InoxSet Context!4554))

(declare-fun z!3597 () (InoxSet Context!4554))

(declare-fun lt!976150 () C!16276)

(declare-fun derivationStepZipper!350 ((InoxSet Context!4554) C!16276) (InoxSet Context!4554))

(assert (=> bm!178324 (= call!178346 (derivationStepZipper!350 z!3597 lt!976150))))

(declare-fun b!2754256 () Bool)

(declare-fun e!1736623 () tuple2!31914)

(assert (=> b!2754256 (= e!1736623 (tuple2!31915 Nil!31889 Nil!31889))))

(declare-fun bm!178325 () Bool)

(declare-fun call!178339 () Unit!45692)

(assert (=> bm!178325 (= call!178339 (lemmaIsPrefixRefl!1660 lt!976172 lt!976172))))

(declare-fun bm!178326 () Bool)

(declare-fun call!178345 () Unit!45692)

(declare-fun lemmaIsPrefixSameLengthThenSameList!442 (List!31989 List!31989 List!31989) Unit!45692)

(assert (=> bm!178326 (= call!178345 (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 Nil!31889 lt!976172))))

(declare-fun call!178337 () Bool)

(declare-fun c!445774 () Bool)

(declare-fun lt!976192 () tuple3!4668)

(declare-fun bm!178327 () Bool)

(declare-fun valid!2893 (CacheDown!2458) Bool)

(assert (=> bm!178327 (= call!178337 (valid!2893 (ite c!445774 (_3!2804 lt!976192) (_3!2804 lt!976163))))))

(declare-fun b!2754257 () Bool)

(declare-fun res!1154323 () Bool)

(declare-fun e!1736643 () Bool)

(assert (=> b!2754257 (=> (not res!1154323) (not e!1736643))))

(declare-fun cacheDown!939 () CacheDown!2458)

(assert (=> b!2754257 (= res!1154323 (valid!2893 cacheDown!939))))

(declare-fun b!2754258 () Bool)

(declare-fun res!1154324 () Bool)

(assert (=> b!2754258 (= res!1154324 call!178337)))

(assert (=> b!2754258 (=> (not res!1154324) (not e!1736640))))

(declare-fun b!2754259 () Bool)

(declare-fun e!1736641 () Bool)

(declare-fun lt!976183 () Int)

(declare-fun e!1736627 () Int)

(assert (=> b!2754259 (= e!1736641 (= lt!976183 e!1736627))))

(declare-fun c!445780 () Bool)

(declare-fun lt!976149 () Int)

(assert (=> b!2754259 (= c!445780 (= 0 lt!976149))))

(declare-fun b!2754260 () Bool)

(declare-fun e!1736646 () tuple3!4666)

(declare-fun e!1736632 () tuple3!4666)

(assert (=> b!2754260 (= e!1736646 e!1736632)))

(declare-fun c!445775 () Bool)

(assert (=> b!2754260 (= c!445775 (= 0 lt!976149))))

(declare-fun b!2754261 () Bool)

(declare-fun e!1736649 () Bool)

(declare-fun e!1736639 () Bool)

(assert (=> b!2754261 (= e!1736649 e!1736639)))

(declare-fun b!2754262 () Bool)

(declare-fun e!1736642 () Unit!45692)

(declare-fun Unit!45694 () Unit!45692)

(assert (=> b!2754262 (= e!1736642 Unit!45694)))

(declare-fun bm!178328 () Bool)

(declare-fun call!178332 () Unit!45692)

(assert (=> bm!178328 (= call!178332 (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 Nil!31889 lt!976172))))

(declare-fun mapNonEmpty!16939 () Bool)

(declare-fun mapRes!16939 () Bool)

(declare-fun tp!870386 () Bool)

(declare-fun tp!870378 () Bool)

(assert (=> mapNonEmpty!16939 (= mapRes!16939 (and tp!870386 tp!870378))))

(declare-fun mapKey!16939 () (_ BitVec 32))

(declare-fun mapValue!16940 () List!31988)

(declare-fun mapRest!16939 () (Array (_ BitVec 32) List!31988))

(assert (=> mapNonEmpty!16939 (= (arr!5920 (_values!4008 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) (store mapRest!16939 mapKey!16939 mapValue!16940))))

(declare-fun b!2754263 () Bool)

(declare-fun e!1736628 () Bool)

(declare-fun e!1736622 () Bool)

(assert (=> b!2754263 (= e!1736628 e!1736622)))

(declare-fun b!2754264 () Bool)

(declare-fun c!445785 () Bool)

(declare-fun call!178333 () Bool)

(assert (=> b!2754264 (= c!445785 call!178333)))

(declare-fun lt!976186 () List!31989)

(declare-fun lt!976185 () List!31989)

(declare-fun ++!7894 (List!31989 List!31989) List!31989)

(assert (=> b!2754264 (= (++!7894 lt!976186 lt!976185) lt!976172)))

(declare-fun lt!976168 () C!16276)

(assert (=> b!2754264 (= lt!976186 (++!7894 Nil!31889 (Cons!31889 lt!976168 Nil!31889)))))

(declare-fun lt!976147 () Unit!45692)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!851 (List!31989 C!16276 List!31989 List!31989) Unit!45692)

(assert (=> b!2754264 (= lt!976147 (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976168 lt!976185 lt!976172))))

(declare-fun tail!4368 (List!31989) List!31989)

(assert (=> b!2754264 (= lt!976185 (tail!4368 lt!976172))))

(declare-datatypes ((IArray!19887 0))(
  ( (IArray!19888 (innerList!10001 List!31989)) )
))
(declare-datatypes ((Conc!9941 0))(
  ( (Node!9941 (left!24338 Conc!9941) (right!24668 Conc!9941) (csize!20112 Int) (cheight!10152 Int)) (Leaf!15139 (xs!13048 IArray!19887) (csize!20113 Int)) (Empty!9941) )
))
(declare-datatypes ((BalanceConc!19496 0))(
  ( (BalanceConc!19497 (c!445787 Conc!9941)) )
))
(declare-fun input!5495 () BalanceConc!19496)

(declare-fun apply!7458 (BalanceConc!19496 Int) C!16276)

(assert (=> b!2754264 (= lt!976168 (apply!7458 input!5495 0))))

(declare-fun lt!976162 () List!31989)

(declare-fun head!6130 (List!31989) C!16276)

(assert (=> b!2754264 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)) lt!976172)))

(declare-fun lt!976132 () Unit!45692)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!439 (List!31989 List!31989) Unit!45692)

(assert (=> b!2754264 (= lt!976132 (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976172))))

(declare-fun lt!976135 () Unit!45692)

(assert (=> b!2754264 (= lt!976135 e!1736642)))

(declare-fun c!445782 () Bool)

(declare-fun lt!976136 () Int)

(assert (=> b!2754264 (= c!445782 (= lt!976136 lt!976149))))

(declare-fun size!24655 (List!31989) Int)

(assert (=> b!2754264 (<= lt!976136 (size!24655 lt!976172))))

(assert (=> b!2754264 (= lt!976136 (size!24655 Nil!31889))))

(declare-fun lt!976166 () Unit!45692)

(declare-fun lemmaIsPrefixThenSmallerEqSize!242 (List!31989 List!31989) Unit!45692)

(assert (=> b!2754264 (= lt!976166 (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976172))))

(declare-fun drop!1689 (List!31989 Int) List!31989)

(declare-fun apply!7459 (List!31989 Int) C!16276)

(assert (=> b!2754264 (= (head!6130 (drop!1689 lt!976172 0)) (apply!7459 lt!976172 0))))

(declare-fun lt!976161 () Unit!45692)

(declare-fun lemmaDropApply!895 (List!31989 Int) Unit!45692)

(assert (=> b!2754264 (= lt!976161 (lemmaDropApply!895 lt!976172 0))))

(declare-fun lt!976157 () List!31989)

(declare-fun lt!976184 () List!31989)

(assert (=> b!2754264 (and (= lt!976157 Nil!31889) (= lt!976184 lt!976172))))

(declare-fun lt!976152 () Unit!45692)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!321 (List!31989 List!31989 List!31989 List!31989) Unit!45692)

(assert (=> b!2754264 (= lt!976152 (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976157 lt!976184 Nil!31889 lt!976172))))

(declare-datatypes ((tuple2!31916 0))(
  ( (tuple2!31917 (_1!18764 BalanceConc!19496) (_2!18764 BalanceConc!19496)) )
))
(declare-fun lt!976144 () tuple2!31916)

(declare-fun list!12044 (BalanceConc!19496) List!31989)

(assert (=> b!2754264 (= lt!976184 (list!12044 (_2!18764 lt!976144)))))

(assert (=> b!2754264 (= lt!976157 (list!12044 (_1!18764 lt!976144)))))

(declare-fun splitAt!89 (BalanceConc!19496 Int) tuple2!31916)

(assert (=> b!2754264 (= lt!976144 (splitAt!89 input!5495 0))))

(declare-fun e!1736629 () Int)

(assert (=> b!2754264 (= e!1736627 e!1736629)))

(declare-fun b!2754265 () Bool)

(declare-fun call!178334 () Int)

(assert (=> b!2754265 (= e!1736640 (= (_1!18761 lt!976163) call!178334))))

(declare-fun b!2754266 () Bool)

(declare-fun res!1154325 () Bool)

(declare-fun e!1736653 () Bool)

(assert (=> b!2754266 (=> (not res!1154325) (not e!1736653))))

(declare-fun lt!976130 () tuple3!4668)

(assert (=> b!2754266 (= res!1154325 (valid!2893 (_3!2804 lt!976130)))))

(declare-fun b!2754267 () Bool)

(declare-fun e!1736625 () tuple2!31914)

(assert (=> b!2754267 (= e!1736625 e!1736626)))

(declare-fun lt!976181 () tuple2!31914)

(declare-fun call!178328 () tuple2!31914)

(assert (=> b!2754267 (= lt!976181 call!178328)))

(declare-fun c!445783 () Bool)

(declare-fun isEmpty!18068 (List!31989) Bool)

(assert (=> b!2754267 (= c!445783 (isEmpty!18068 (_1!18763 lt!976181)))))

(declare-fun b!2754268 () Bool)

(assert (=> b!2754268 (= e!1736641 (= lt!976183 0))))

(declare-fun bm!178329 () Bool)

(declare-fun call!178343 () Unit!45692)

(assert (=> bm!178329 (= call!178343 (lemmaIsPrefixRefl!1660 lt!976172 lt!976172))))

(declare-fun b!2754269 () Bool)

(declare-fun e!1736637 () Bool)

(declare-fun e!1736644 () Bool)

(assert (=> b!2754269 (= e!1736637 e!1736644)))

(declare-fun b!2754270 () Bool)

(declare-fun e!1736618 () Bool)

(declare-fun lt!976156 () MutLongMap!3727)

(get-info :version)

(assert (=> b!2754270 (= e!1736618 (and e!1736649 ((_ is LongMap!3727) lt!976156)))))

(assert (=> b!2754270 (= lt!976156 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))

(declare-fun bm!178330 () Bool)

(declare-fun nullableZipper!613 ((InoxSet Context!4554)) Bool)

(assert (=> bm!178330 (= call!178333 (nullableZipper!613 z!3597))))

(declare-fun mapNonEmpty!16940 () Bool)

(declare-fun mapRes!16940 () Bool)

(declare-fun tp!870377 () Bool)

(declare-fun tp!870374 () Bool)

(assert (=> mapNonEmpty!16940 (= mapRes!16940 (and tp!870377 tp!870374))))

(declare-fun mapValue!16939 () List!31987)

(declare-fun mapRest!16940 () (Array (_ BitVec 32) List!31987))

(declare-fun mapKey!16940 () (_ BitVec 32))

(declare-fun cacheUp!820 () CacheUp!2338)

(assert (=> mapNonEmpty!16940 (= (arr!5918 (_values!4007 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) (store mapRest!16940 mapKey!16940 mapValue!16939))))

(declare-fun b!2754271 () Bool)

(declare-fun e!1736621 () Bool)

(declare-fun tp!870383 () Bool)

(assert (=> b!2754271 (= e!1736621 (and tp!870383 mapRes!16939))))

(declare-fun condMapEmpty!16939 () Bool)

(declare-fun mapDefault!16939 () List!31988)

(assert (=> b!2754271 (= condMapEmpty!16939 (= (arr!5920 (_values!4008 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31988)) mapDefault!16939)))))

(declare-fun b!2754272 () Bool)

(declare-fun isBalanced!3027 (Conc!9941) Bool)

(assert (=> b!2754272 (= e!1736643 (not (isBalanced!3027 (c!445787 input!5495))))))

(declare-fun e!1736648 () Bool)

(assert (=> b!2754272 e!1736648))

(declare-fun c!445776 () Bool)

(declare-fun lt!976143 () Bool)

(assert (=> b!2754272 (= c!445776 lt!976143)))

(declare-fun lt!976138 () tuple2!31914)

(declare-fun findLongestMatchInnerZipper!6 ((InoxSet Context!4554) List!31989 Int List!31989 List!31989 Int) tuple2!31914)

(assert (=> b!2754272 (= lt!976138 (findLongestMatchInnerZipper!6 z!3597 Nil!31889 0 lt!976172 lt!976172 lt!976149))))

(assert (=> b!2754272 e!1736641))

(declare-fun c!445778 () Bool)

(assert (=> b!2754272 (= c!445778 lt!976143)))

(declare-fun findLongestMatchInnerZipperFast!17 ((InoxSet Context!4554) List!31989 Int List!31989 BalanceConc!19496 Int) Int)

(assert (=> b!2754272 (= lt!976183 (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149))))

(declare-fun lt!976129 () tuple3!4668)

(declare-fun lt!976137 () tuple3!4666)

(assert (=> b!2754272 (= lt!976129 (tuple3!4669 (_1!18760 lt!976137) (_3!2803 lt!976137) (_2!18760 lt!976137)))))

(assert (=> b!2754272 (= lt!976137 e!1736646)))

(declare-fun c!445773 () Bool)

(assert (=> b!2754272 (= c!445773 lt!976143)))

(declare-fun lostCauseZipper!424 ((InoxSet Context!4554)) Bool)

(assert (=> b!2754272 (= lt!976143 (lostCauseZipper!424 z!3597))))

(assert (=> b!2754272 (and (= lt!976172 lt!976162) (= lt!976162 lt!976172))))

(declare-fun lt!976194 () Unit!45692)

(declare-fun lemmaSamePrefixThenSameSuffix!1122 (List!31989 List!31989 List!31989 List!31989 List!31989) Unit!45692)

(assert (=> b!2754272 (= lt!976194 (lemmaSamePrefixThenSameSuffix!1122 Nil!31889 lt!976172 Nil!31889 lt!976162 lt!976172))))

(declare-fun getSuffix!1220 (List!31989 List!31989) List!31989)

(assert (=> b!2754272 (= lt!976162 (getSuffix!1220 lt!976172 Nil!31889))))

(assert (=> b!2754272 (isPrefix!2534 Nil!31889 (++!7894 Nil!31889 lt!976172))))

(declare-fun lt!976169 () Unit!45692)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1648 (List!31989 List!31989) Unit!45692)

(assert (=> b!2754272 (= lt!976169 (lemmaConcatTwoListThenFirstIsPrefix!1648 Nil!31889 lt!976172))))

(declare-fun e!1736651 () Bool)

(assert (=> b!2754272 e!1736651))

(declare-fun res!1154320 () Bool)

(assert (=> b!2754272 (=> (not res!1154320) (not e!1736651))))

(declare-fun valid!2894 (CacheUp!2338) Bool)

(assert (=> b!2754272 (= res!1154320 (valid!2894 (_2!18761 lt!976129)))))

(declare-fun findLongestMatchInnerZipperFastMem!14 (CacheUp!2338 CacheDown!2458 (InoxSet Context!4554) List!31989 Int List!31989 BalanceConc!19496 Int) tuple3!4668)

(assert (=> b!2754272 (= lt!976129 (findLongestMatchInnerZipperFastMem!14 (_2!18761 lt!976130) (_3!2804 lt!976130) z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149))))

(assert (=> b!2754272 e!1736653))

(declare-fun res!1154321 () Bool)

(assert (=> b!2754272 (=> (not res!1154321) (not e!1736653))))

(assert (=> b!2754272 (= res!1154321 (valid!2894 (_2!18761 lt!976130)))))

(assert (=> b!2754272 (= lt!976130 (findLongestMatchInnerZipperFastMem!14 cacheUp!820 cacheDown!939 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149))))

(declare-fun size!24656 (BalanceConc!19496) Int)

(assert (=> b!2754272 (= lt!976149 (size!24656 input!5495))))

(assert (=> b!2754272 (= lt!976172 (list!12044 input!5495))))

(declare-fun b!2754273 () Bool)

(declare-fun call!178340 () Int)

(assert (=> b!2754273 (= e!1736629 call!178340)))

(declare-fun b!2754274 () Bool)

(declare-fun e!1736645 () Unit!45692)

(declare-fun Unit!45695 () Unit!45692)

(assert (=> b!2754274 (= e!1736645 Unit!45695)))

(assert (=> b!2754275 (= e!1736622 (and e!1736618 tp!870380))))

(declare-fun bm!178331 () Bool)

(declare-fun lt!976170 () List!31989)

(declare-fun lt!976189 () tuple3!4670)

(declare-fun lt!976151 () List!31989)

(assert (=> bm!178331 (= call!178334 (findLongestMatchInnerZipperFast!17 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149))))

(declare-fun bm!178332 () Bool)

(declare-fun call!178336 () Unit!45692)

(assert (=> bm!178332 (= call!178336 (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 Nil!31889 lt!976172))))

(declare-fun b!2754276 () Bool)

(declare-fun e!1736635 () tuple2!31914)

(assert (=> b!2754276 (= e!1736648 (= lt!976138 e!1736635))))

(declare-fun c!445781 () Bool)

(assert (=> b!2754276 (= c!445781 (= 0 lt!976149))))

(declare-fun tp!870376 () Bool)

(declare-fun tp!870375 () Bool)

(declare-fun e!1736647 () Bool)

(declare-fun array_inv!4231 (array!13263) Bool)

(declare-fun array_inv!4232 (array!13265) Bool)

(assert (=> b!2754277 (= e!1736647 (and tp!870379 tp!870375 tp!870376 (array_inv!4231 (_keys!4027 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) (array_inv!4232 (_values!4008 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) e!1736621))))

(declare-fun mapIsEmpty!16939 () Bool)

(assert (=> mapIsEmpty!16939 mapRes!16939))

(declare-fun b!2754278 () Bool)

(assert (=> b!2754278 (= e!1736646 (tuple3!4667 0 (_3!2804 lt!976130) (_2!18761 lt!976130)))))

(declare-fun b!2754279 () Bool)

(declare-fun e!1736631 () Bool)

(declare-fun tp!870387 () Bool)

(declare-fun inv!43301 (Conc!9941) Bool)

(assert (=> b!2754279 (= e!1736631 (and (inv!43301 (c!445787 input!5495)) tp!870387))))

(declare-fun bm!178333 () Bool)

(declare-fun call!178329 () Bool)

(assert (=> bm!178333 (= call!178329 (nullableZipper!613 z!3597))))

(declare-fun tp!870373 () Bool)

(declare-fun tp!870371 () Bool)

(declare-fun e!1736630 () Bool)

(declare-fun e!1736624 () Bool)

(declare-fun array_inv!4233 (array!13261) Bool)

(assert (=> b!2754280 (= e!1736624 (and tp!870381 tp!870373 tp!870371 (array_inv!4231 (_keys!4026 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) (array_inv!4233 (_values!4007 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) e!1736630))))

(declare-fun setNonEmpty!22107 () Bool)

(declare-fun setElem!22107 () Context!4554)

(declare-fun setRes!22107 () Bool)

(declare-fun tp!870385 () Bool)

(declare-fun e!1736633 () Bool)

(declare-fun inv!43302 (Context!4554) Bool)

(assert (=> setNonEmpty!22107 (= setRes!22107 (and tp!870385 (inv!43302 setElem!22107) e!1736633))))

(declare-fun setRest!22107 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22107 (= z!3597 ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22107 true) setRest!22107))))

(declare-fun b!2754281 () Bool)

(declare-fun lt!976195 () Int)

(assert (=> b!2754281 (= e!1736629 (ite (= lt!976195 0) 0 lt!976195))))

(assert (=> b!2754281 (= lt!976195 call!178340)))

(declare-fun bm!178334 () Bool)

(assert (=> bm!178334 (= call!178347 (valid!2894 (ite c!445774 (_2!18761 lt!976192) (_2!18761 lt!976163))))))

(declare-fun b!2754282 () Bool)

(declare-fun e!1736654 () Bool)

(assert (=> b!2754282 (= e!1736654 (= (_1!18761 lt!976192) call!178334))))

(declare-fun b!2754283 () Bool)

(assert (=> b!2754283 (= e!1736626 lt!976181)))

(declare-fun b!2754284 () Bool)

(declare-fun res!1154328 () Bool)

(assert (=> b!2754284 (=> (not res!1154328) (not e!1736651))))

(assert (=> b!2754284 (= res!1154328 (valid!2893 (_3!2804 lt!976129)))))

(declare-fun lt!976159 () List!31989)

(declare-fun bm!178335 () Bool)

(declare-fun lt!976180 () List!31989)

(assert (=> bm!178335 (= call!178328 (findLongestMatchInnerZipper!6 call!178346 lt!976180 1 lt!976159 lt!976172 lt!976149))))

(declare-fun b!2754285 () Bool)

(declare-fun tp!870382 () Bool)

(assert (=> b!2754285 (= e!1736633 tp!870382)))

(declare-fun setIsEmpty!22107 () Bool)

(assert (=> setIsEmpty!22107 setRes!22107))

(declare-fun b!2754286 () Bool)

(assert (=> b!2754286 (= e!1736653 (= (_1!18761 lt!976130) (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149)))))

(declare-fun b!2754287 () Bool)

(declare-fun e!1736620 () Bool)

(declare-fun e!1736650 () Bool)

(declare-fun lt!976128 () MutLongMap!3726)

(assert (=> b!2754287 (= e!1736620 (and e!1736650 ((_ is LongMap!3726) lt!976128)))))

(assert (=> b!2754287 (= lt!976128 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))

(declare-fun bm!178336 () Bool)

(declare-fun call!178338 () Bool)

(assert (=> bm!178336 (= call!178338 (isPrefix!2534 lt!976172 lt!976172))))

(declare-fun b!2754288 () Bool)

(declare-fun c!445779 () Bool)

(assert (=> b!2754288 (= c!445779 call!178329)))

(assert (=> b!2754288 (= (++!7894 lt!976180 lt!976159) lt!976172)))

(declare-fun lt!976139 () Unit!45692)

(assert (=> b!2754288 (= lt!976139 (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976150 lt!976159 lt!976172))))

(assert (=> b!2754288 (= lt!976159 (tail!4368 lt!976172))))

(assert (=> b!2754288 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)) lt!976172)))

(declare-fun lt!976167 () Unit!45692)

(assert (=> b!2754288 (= lt!976167 (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976172))))

(assert (=> b!2754288 (= lt!976180 (++!7894 Nil!31889 (Cons!31889 lt!976150 Nil!31889)))))

(assert (=> b!2754288 (= lt!976150 (head!6130 lt!976172))))

(declare-fun lt!976140 () Unit!45692)

(declare-fun e!1736619 () Unit!45692)

(assert (=> b!2754288 (= lt!976140 e!1736619)))

(declare-fun c!445772 () Bool)

(declare-fun lt!976190 () Int)

(declare-fun lt!976160 () Int)

(assert (=> b!2754288 (= c!445772 (= lt!976190 lt!976160))))

(assert (=> b!2754288 (<= lt!976190 lt!976160)))

(assert (=> b!2754288 (= lt!976160 (size!24655 lt!976172))))

(assert (=> b!2754288 (= lt!976190 (size!24655 Nil!31889))))

(declare-fun lt!976153 () Unit!45692)

(assert (=> b!2754288 (= lt!976153 (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976172))))

(assert (=> b!2754288 (= e!1736635 e!1736625)))

(declare-fun b!2754289 () Bool)

(assert (=> b!2754289 (= e!1736625 call!178328)))

(declare-fun bm!178337 () Bool)

(declare-fun call!178344 () (InoxSet Context!4554))

(assert (=> bm!178337 (= call!178344 (derivationStepZipper!350 z!3597 lt!976168))))

(declare-fun b!2754290 () Bool)

(declare-fun tp!870384 () Bool)

(assert (=> b!2754290 (= e!1736630 (and tp!870384 mapRes!16940))))

(declare-fun condMapEmpty!16940 () Bool)

(declare-fun mapDefault!16940 () List!31987)

(assert (=> b!2754290 (= condMapEmpty!16940 (= (arr!5918 (_values!4007 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31987)) mapDefault!16940)))))

(declare-fun b!2754291 () Bool)

(declare-fun e!1736652 () Bool)

(assert (=> b!2754291 (= e!1736650 e!1736652)))

(declare-fun b!2754292 () Bool)

(declare-fun Unit!45696 () Unit!45692)

(assert (=> b!2754292 (= e!1736642 Unit!45696)))

(declare-fun lt!976178 () Unit!45692)

(assert (=> b!2754292 (= lt!976178 call!178330)))

(assert (=> b!2754292 call!178327))

(declare-fun lt!976131 () Unit!45692)

(assert (=> b!2754292 (= lt!976131 call!178345)))

(assert (=> b!2754292 false))

(declare-fun res!1154326 () Bool)

(assert (=> start!267034 (=> (not res!1154326) (not e!1736643))))

(assert (=> start!267034 (= res!1154326 (valid!2894 cacheUp!820))))

(assert (=> start!267034 e!1736643))

(declare-fun inv!43303 (CacheUp!2338) Bool)

(assert (=> start!267034 (and (inv!43303 cacheUp!820) e!1736637)))

(declare-fun inv!43304 (CacheDown!2458) Bool)

(assert (=> start!267034 (and (inv!43304 cacheDown!939) e!1736628)))

(declare-fun condSetEmpty!22107 () Bool)

(assert (=> start!267034 (= condSetEmpty!22107 (= z!3597 ((as const (Array Context!4554 Bool)) false)))))

(assert (=> start!267034 setRes!22107))

(declare-fun inv!43305 (BalanceConc!19496) Bool)

(assert (=> start!267034 (and (inv!43305 input!5495) e!1736631)))

(declare-fun bm!178338 () Bool)

(declare-fun call!178335 () Bool)

(assert (=> bm!178338 (= call!178335 (isPrefix!2534 lt!976172 lt!976172))))

(declare-fun bm!178339 () Bool)

(declare-fun lt!976176 () C!16276)

(declare-fun derivationStepZipperMem!81 ((InoxSet Context!4554) C!16276 CacheUp!2338 CacheDown!2458) tuple3!4670)

(assert (=> bm!178339 (= call!178341 (derivationStepZipperMem!81 z!3597 lt!976176 (_2!18761 lt!976130) (_3!2804 lt!976130)))))

(declare-fun b!2754293 () Bool)

(assert (=> b!2754293 (= e!1736623 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun b!2754294 () Bool)

(assert (=> b!2754294 (= e!1736652 e!1736624)))

(declare-fun b!2754295 () Bool)

(declare-fun c!445777 () Bool)

(assert (=> b!2754295 (= c!445777 call!178329)))

(assert (=> b!2754295 (= lt!976172 Nil!31889)))

(declare-fun lt!976193 () Unit!45692)

(assert (=> b!2754295 (= lt!976193 call!178332)))

(assert (=> b!2754295 call!178335))

(declare-fun lt!976158 () Unit!45692)

(assert (=> b!2754295 (= lt!976158 call!178343)))

(assert (=> b!2754295 (= e!1736635 e!1736623)))

(declare-fun b!2754296 () Bool)

(declare-fun Unit!45697 () Unit!45692)

(assert (=> b!2754296 (= e!1736619 Unit!45697)))

(declare-fun b!2754297 () Bool)

(declare-fun call!178342 () Bool)

(assert (=> b!2754297 (= c!445774 call!178342)))

(assert (=> b!2754297 (= (++!7894 lt!976170 lt!976151) lt!976172)))

(assert (=> b!2754297 (= lt!976170 (++!7894 Nil!31889 (Cons!31889 lt!976176 Nil!31889)))))

(declare-fun lt!976165 () Unit!45692)

(assert (=> b!2754297 (= lt!976165 (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976176 lt!976151 lt!976172))))

(assert (=> b!2754297 (= lt!976151 (tail!4368 lt!976172))))

(assert (=> b!2754297 (= lt!976176 (apply!7458 input!5495 0))))

(assert (=> b!2754297 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)) lt!976172)))

(declare-fun lt!976191 () Unit!45692)

(assert (=> b!2754297 (= lt!976191 (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976172))))

(declare-fun lt!976134 () Unit!45692)

(assert (=> b!2754297 (= lt!976134 e!1736645)))

(declare-fun c!445784 () Bool)

(declare-fun lt!976155 () Int)

(assert (=> b!2754297 (= c!445784 (= lt!976155 lt!976149))))

(assert (=> b!2754297 (<= lt!976155 (size!24655 lt!976172))))

(assert (=> b!2754297 (= lt!976155 (size!24655 Nil!31889))))

(declare-fun lt!976171 () Unit!45692)

(assert (=> b!2754297 (= lt!976171 (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976172))))

(assert (=> b!2754297 (= (head!6130 (drop!1689 lt!976172 0)) (apply!7459 lt!976172 0))))

(declare-fun lt!976188 () Unit!45692)

(assert (=> b!2754297 (= lt!976188 (lemmaDropApply!895 lt!976172 0))))

(declare-fun lt!976174 () List!31989)

(declare-fun lt!976154 () List!31989)

(assert (=> b!2754297 (and (= lt!976174 Nil!31889) (= lt!976154 lt!976172))))

(declare-fun lt!976175 () Unit!45692)

(assert (=> b!2754297 (= lt!976175 (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976174 lt!976154 Nil!31889 lt!976172))))

(declare-fun lt!976145 () tuple2!31916)

(assert (=> b!2754297 (= lt!976154 (list!12044 (_2!18764 lt!976145)))))

(assert (=> b!2754297 (= lt!976174 (list!12044 (_1!18764 lt!976145)))))

(assert (=> b!2754297 (= lt!976145 (splitAt!89 input!5495 0))))

(assert (=> b!2754297 (= e!1736632 e!1736638)))

(declare-fun b!2754298 () Bool)

(declare-fun Unit!45698 () Unit!45692)

(assert (=> b!2754298 (= e!1736619 Unit!45698)))

(declare-fun lt!976187 () Unit!45692)

(assert (=> b!2754298 (= lt!976187 call!178343)))

(assert (=> b!2754298 call!178335))

(declare-fun lt!976182 () Unit!45692)

(assert (=> b!2754298 (= lt!976182 call!178332)))

(assert (=> b!2754298 false))

(declare-fun b!2754299 () Bool)

(declare-fun lt!976146 () Bool)

(assert (=> b!2754299 (= lt!976146 call!178342)))

(assert (=> b!2754299 (= lt!976172 Nil!31889)))

(declare-fun lt!976142 () Unit!45692)

(assert (=> b!2754299 (= lt!976142 call!178336)))

(assert (=> b!2754299 call!178338))

(declare-fun lt!976164 () Unit!45692)

(assert (=> b!2754299 (= lt!976164 call!178339)))

(assert (=> b!2754299 (= e!1736632 (tuple3!4667 0 (_3!2804 lt!976130) (_2!18761 lt!976130)))))

(declare-fun bm!178340 () Bool)

(assert (=> bm!178340 (= call!178340 (findLongestMatchInnerZipperFast!17 call!178344 lt!976186 1 lt!976185 input!5495 lt!976149))))

(declare-fun b!2754300 () Bool)

(declare-fun res!1154322 () Bool)

(assert (=> b!2754300 (= res!1154322 call!178337)))

(assert (=> b!2754300 (=> (not res!1154322) (not e!1736654))))

(declare-fun b!2754301 () Bool)

(assert (=> b!2754301 (= e!1736638 (tuple3!4667 (ite (= (_1!18761 lt!976192) 0) 0 (_1!18761 lt!976192)) (_3!2804 lt!976192) (_2!18761 lt!976192)))))

(assert (=> b!2754301 (= lt!976189 call!178341)))

(assert (=> b!2754301 (= lt!976192 call!178331)))

(declare-fun res!1154319 () Bool)

(assert (=> b!2754301 (= res!1154319 call!178347)))

(assert (=> b!2754301 (=> (not res!1154319) (not e!1736654))))

(assert (=> b!2754301 e!1736654))

(declare-fun bm!178341 () Bool)

(assert (=> bm!178341 (= call!178342 (nullableZipper!613 z!3597))))

(declare-fun b!2754302 () Bool)

(assert (=> b!2754302 (= e!1736651 (= (_1!18761 lt!976129) (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149)))))

(declare-fun b!2754303 () Bool)

(assert (=> b!2754303 (= e!1736648 (= lt!976138 (tuple2!31915 Nil!31889 lt!976172)))))

(declare-fun b!2754304 () Bool)

(declare-fun lt!976177 () Bool)

(assert (=> b!2754304 (= lt!976177 call!178333)))

(assert (=> b!2754304 (= lt!976172 Nil!31889)))

(declare-fun lt!976133 () Unit!45692)

(assert (=> b!2754304 (= lt!976133 call!178345)))

(assert (=> b!2754304 call!178327))

(declare-fun lt!976141 () Unit!45692)

(assert (=> b!2754304 (= lt!976141 call!178330)))

(assert (=> b!2754304 (= e!1736627 0)))

(declare-fun b!2754305 () Bool)

(assert (=> b!2754305 (= e!1736639 e!1736647)))

(assert (=> b!2754306 (= e!1736644 (and e!1736620 tp!870372))))

(declare-fun b!2754307 () Bool)

(declare-fun Unit!45699 () Unit!45692)

(assert (=> b!2754307 (= e!1736645 Unit!45699)))

(declare-fun lt!976179 () Unit!45692)

(assert (=> b!2754307 (= lt!976179 call!178339)))

(assert (=> b!2754307 call!178338))

(declare-fun lt!976148 () Unit!45692)

(assert (=> b!2754307 (= lt!976148 call!178336)))

(assert (=> b!2754307 false))

(declare-fun bm!178342 () Bool)

(assert (=> bm!178342 (= call!178331 (findLongestMatchInnerZipperFastMem!14 (ite c!445774 (_2!18762 lt!976189) (_2!18762 lt!976173)) (ite c!445774 (_3!2805 lt!976189) (_3!2805 lt!976173)) (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149))))

(declare-fun mapIsEmpty!16940 () Bool)

(assert (=> mapIsEmpty!16940 mapRes!16940))

(assert (= (and start!267034 res!1154326) b!2754257))

(assert (= (and b!2754257 res!1154323) b!2754272))

(assert (= (and b!2754272 res!1154321) b!2754266))

(assert (= (and b!2754266 res!1154325) b!2754286))

(assert (= (and b!2754272 res!1154320) b!2754284))

(assert (= (and b!2754284 res!1154328) b!2754302))

(assert (= (and b!2754272 c!445773) b!2754278))

(assert (= (and b!2754272 (not c!445773)) b!2754260))

(assert (= (and b!2754260 c!445775) b!2754299))

(assert (= (and b!2754260 (not c!445775)) b!2754297))

(assert (= (and b!2754297 c!445784) b!2754307))

(assert (= (and b!2754297 (not c!445784)) b!2754274))

(assert (= (and b!2754297 c!445774) b!2754301))

(assert (= (and b!2754297 (not c!445774)) b!2754254))

(assert (= (and b!2754301 res!1154319) b!2754300))

(assert (= (and b!2754300 res!1154322) b!2754282))

(assert (= (and b!2754254 res!1154327) b!2754258))

(assert (= (and b!2754258 res!1154324) b!2754265))

(assert (= (or b!2754301 b!2754254) bm!178339))

(assert (= (or b!2754301 b!2754254) bm!178342))

(assert (= (or b!2754282 b!2754265) bm!178331))

(assert (= (or b!2754300 b!2754258) bm!178327))

(assert (= (or b!2754301 b!2754254) bm!178334))

(assert (= (or b!2754299 b!2754297) bm!178341))

(assert (= (or b!2754299 b!2754307) bm!178325))

(assert (= (or b!2754299 b!2754307) bm!178332))

(assert (= (or b!2754299 b!2754307) bm!178336))

(assert (= (and b!2754272 c!445778) b!2754268))

(assert (= (and b!2754272 (not c!445778)) b!2754259))

(assert (= (and b!2754259 c!445780) b!2754304))

(assert (= (and b!2754259 (not c!445780)) b!2754264))

(assert (= (and b!2754264 c!445782) b!2754292))

(assert (= (and b!2754264 (not c!445782)) b!2754262))

(assert (= (and b!2754264 c!445785) b!2754281))

(assert (= (and b!2754264 (not c!445785)) b!2754273))

(assert (= (or b!2754281 b!2754273) bm!178337))

(assert (= (or b!2754281 b!2754273) bm!178340))

(assert (= (or b!2754304 b!2754264) bm!178330))

(assert (= (or b!2754304 b!2754292) bm!178322))

(assert (= (or b!2754304 b!2754292) bm!178326))

(assert (= (or b!2754304 b!2754292) bm!178323))

(assert (= (and b!2754272 c!445776) b!2754303))

(assert (= (and b!2754272 (not c!445776)) b!2754276))

(assert (= (and b!2754276 c!445781) b!2754295))

(assert (= (and b!2754276 (not c!445781)) b!2754288))

(assert (= (and b!2754295 c!445777) b!2754256))

(assert (= (and b!2754295 (not c!445777)) b!2754293))

(assert (= (and b!2754288 c!445772) b!2754298))

(assert (= (and b!2754288 (not c!445772)) b!2754296))

(assert (= (and b!2754288 c!445779) b!2754267))

(assert (= (and b!2754288 (not c!445779)) b!2754289))

(assert (= (and b!2754267 c!445783) b!2754255))

(assert (= (and b!2754267 (not c!445783)) b!2754283))

(assert (= (or b!2754267 b!2754289) bm!178324))

(assert (= (or b!2754267 b!2754289) bm!178335))

(assert (= (or b!2754295 b!2754288) bm!178333))

(assert (= (or b!2754295 b!2754298) bm!178329))

(assert (= (or b!2754295 b!2754298) bm!178328))

(assert (= (or b!2754295 b!2754298) bm!178338))

(assert (= (and b!2754290 condMapEmpty!16940) mapIsEmpty!16940))

(assert (= (and b!2754290 (not condMapEmpty!16940)) mapNonEmpty!16940))

(assert (= b!2754280 b!2754290))

(assert (= b!2754294 b!2754280))

(assert (= b!2754291 b!2754294))

(assert (= (and b!2754287 ((_ is LongMap!3726) (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))) b!2754291))

(assert (= b!2754306 b!2754287))

(assert (= (and b!2754269 ((_ is HashMap!3632) (cache!3775 cacheUp!820))) b!2754306))

(assert (= start!267034 b!2754269))

(assert (= (and b!2754271 condMapEmpty!16939) mapIsEmpty!16939))

(assert (= (and b!2754271 (not condMapEmpty!16939)) mapNonEmpty!16939))

(assert (= b!2754277 b!2754271))

(assert (= b!2754305 b!2754277))

(assert (= b!2754261 b!2754305))

(assert (= (and b!2754270 ((_ is LongMap!3727) (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))) b!2754261))

(assert (= b!2754275 b!2754270))

(assert (= (and b!2754263 ((_ is HashMap!3633) (cache!3776 cacheDown!939))) b!2754275))

(assert (= start!267034 b!2754263))

(assert (= (and start!267034 condSetEmpty!22107) setIsEmpty!22107))

(assert (= (and start!267034 (not condSetEmpty!22107)) setNonEmpty!22107))

(assert (= setNonEmpty!22107 b!2754285))

(assert (= start!267034 b!2754279))

(declare-fun m!3169759 () Bool)

(assert (=> b!2754266 m!3169759))

(declare-fun m!3169761 () Bool)

(assert (=> b!2754267 m!3169761))

(declare-fun m!3169763 () Bool)

(assert (=> b!2754279 m!3169763))

(declare-fun m!3169765 () Bool)

(assert (=> bm!178332 m!3169765))

(declare-fun m!3169767 () Bool)

(assert (=> b!2754280 m!3169767))

(declare-fun m!3169769 () Bool)

(assert (=> b!2754280 m!3169769))

(declare-fun m!3169771 () Bool)

(assert (=> b!2754297 m!3169771))

(declare-fun m!3169773 () Bool)

(assert (=> b!2754297 m!3169773))

(declare-fun m!3169775 () Bool)

(assert (=> b!2754297 m!3169775))

(declare-fun m!3169777 () Bool)

(assert (=> b!2754297 m!3169777))

(declare-fun m!3169779 () Bool)

(assert (=> b!2754297 m!3169779))

(declare-fun m!3169781 () Bool)

(assert (=> b!2754297 m!3169781))

(declare-fun m!3169783 () Bool)

(assert (=> b!2754297 m!3169783))

(declare-fun m!3169785 () Bool)

(assert (=> b!2754297 m!3169785))

(declare-fun m!3169787 () Bool)

(assert (=> b!2754297 m!3169787))

(declare-fun m!3169789 () Bool)

(assert (=> b!2754297 m!3169789))

(declare-fun m!3169791 () Bool)

(assert (=> b!2754297 m!3169791))

(assert (=> b!2754297 m!3169777))

(assert (=> b!2754297 m!3169771))

(declare-fun m!3169793 () Bool)

(assert (=> b!2754297 m!3169793))

(declare-fun m!3169795 () Bool)

(assert (=> b!2754297 m!3169795))

(declare-fun m!3169797 () Bool)

(assert (=> b!2754297 m!3169797))

(declare-fun m!3169799 () Bool)

(assert (=> b!2754297 m!3169799))

(declare-fun m!3169801 () Bool)

(assert (=> b!2754297 m!3169801))

(declare-fun m!3169803 () Bool)

(assert (=> b!2754297 m!3169803))

(declare-fun m!3169805 () Bool)

(assert (=> b!2754297 m!3169805))

(declare-fun m!3169807 () Bool)

(assert (=> b!2754297 m!3169807))

(declare-fun m!3169809 () Bool)

(assert (=> b!2754297 m!3169809))

(declare-fun m!3169811 () Bool)

(assert (=> bm!178330 m!3169811))

(declare-fun m!3169813 () Bool)

(assert (=> b!2754272 m!3169813))

(declare-fun m!3169815 () Bool)

(assert (=> b!2754272 m!3169815))

(declare-fun m!3169817 () Bool)

(assert (=> b!2754272 m!3169817))

(declare-fun m!3169819 () Bool)

(assert (=> b!2754272 m!3169819))

(declare-fun m!3169821 () Bool)

(assert (=> b!2754272 m!3169821))

(declare-fun m!3169823 () Bool)

(assert (=> b!2754272 m!3169823))

(assert (=> b!2754272 m!3169813))

(declare-fun m!3169825 () Bool)

(assert (=> b!2754272 m!3169825))

(declare-fun m!3169827 () Bool)

(assert (=> b!2754272 m!3169827))

(declare-fun m!3169829 () Bool)

(assert (=> b!2754272 m!3169829))

(declare-fun m!3169831 () Bool)

(assert (=> b!2754272 m!3169831))

(declare-fun m!3169833 () Bool)

(assert (=> b!2754272 m!3169833))

(declare-fun m!3169835 () Bool)

(assert (=> b!2754272 m!3169835))

(declare-fun m!3169837 () Bool)

(assert (=> b!2754272 m!3169837))

(declare-fun m!3169839 () Bool)

(assert (=> b!2754272 m!3169839))

(declare-fun m!3169841 () Bool)

(assert (=> b!2754272 m!3169841))

(declare-fun m!3169843 () Bool)

(assert (=> bm!178338 m!3169843))

(assert (=> bm!178326 m!3169765))

(assert (=> b!2754302 m!3169829))

(declare-fun m!3169845 () Bool)

(assert (=> bm!178334 m!3169845))

(declare-fun m!3169847 () Bool)

(assert (=> b!2754284 m!3169847))

(assert (=> bm!178333 m!3169811))

(declare-fun m!3169849 () Bool)

(assert (=> bm!178325 m!3169849))

(assert (=> bm!178323 m!3169843))

(declare-fun m!3169851 () Bool)

(assert (=> b!2754277 m!3169851))

(declare-fun m!3169853 () Bool)

(assert (=> b!2754277 m!3169853))

(declare-fun m!3169855 () Bool)

(assert (=> bm!178324 m!3169855))

(declare-fun m!3169857 () Bool)

(assert (=> bm!178339 m!3169857))

(declare-fun m!3169859 () Bool)

(assert (=> bm!178327 m!3169859))

(assert (=> bm!178336 m!3169843))

(declare-fun m!3169861 () Bool)

(assert (=> setNonEmpty!22107 m!3169861))

(declare-fun m!3169863 () Bool)

(assert (=> b!2754264 m!3169863))

(assert (=> b!2754264 m!3169771))

(assert (=> b!2754264 m!3169793))

(assert (=> b!2754264 m!3169771))

(declare-fun m!3169865 () Bool)

(assert (=> b!2754264 m!3169865))

(assert (=> b!2754264 m!3169775))

(assert (=> b!2754264 m!3169777))

(assert (=> b!2754264 m!3169779))

(assert (=> b!2754264 m!3169781))

(assert (=> b!2754264 m!3169785))

(declare-fun m!3169867 () Bool)

(assert (=> b!2754264 m!3169867))

(assert (=> b!2754264 m!3169789))

(declare-fun m!3169869 () Bool)

(assert (=> b!2754264 m!3169869))

(assert (=> b!2754264 m!3169807))

(assert (=> b!2754264 m!3169791))

(assert (=> b!2754264 m!3169777))

(declare-fun m!3169871 () Bool)

(assert (=> b!2754264 m!3169871))

(declare-fun m!3169873 () Bool)

(assert (=> b!2754264 m!3169873))

(assert (=> b!2754264 m!3169797))

(assert (=> b!2754264 m!3169799))

(assert (=> b!2754264 m!3169801))

(assert (=> b!2754264 m!3169803))

(declare-fun m!3169875 () Bool)

(assert (=> bm!178337 m!3169875))

(declare-fun m!3169877 () Bool)

(assert (=> bm!178340 m!3169877))

(declare-fun m!3169879 () Bool)

(assert (=> mapNonEmpty!16939 m!3169879))

(assert (=> bm!178322 m!3169849))

(declare-fun m!3169881 () Bool)

(assert (=> start!267034 m!3169881))

(declare-fun m!3169883 () Bool)

(assert (=> start!267034 m!3169883))

(declare-fun m!3169885 () Bool)

(assert (=> start!267034 m!3169885))

(declare-fun m!3169887 () Bool)

(assert (=> start!267034 m!3169887))

(declare-fun m!3169889 () Bool)

(assert (=> bm!178331 m!3169889))

(declare-fun m!3169891 () Bool)

(assert (=> b!2754257 m!3169891))

(assert (=> b!2754286 m!3169829))

(assert (=> bm!178341 m!3169811))

(declare-fun m!3169893 () Bool)

(assert (=> mapNonEmpty!16940 m!3169893))

(assert (=> bm!178328 m!3169765))

(declare-fun m!3169895 () Bool)

(assert (=> bm!178342 m!3169895))

(declare-fun m!3169897 () Bool)

(assert (=> bm!178335 m!3169897))

(assert (=> bm!178329 m!3169849))

(assert (=> b!2754288 m!3169791))

(assert (=> b!2754288 m!3169771))

(assert (=> b!2754288 m!3169793))

(assert (=> b!2754288 m!3169771))

(declare-fun m!3169899 () Bool)

(assert (=> b!2754288 m!3169899))

(assert (=> b!2754288 m!3169799))

(assert (=> b!2754288 m!3169781))

(assert (=> b!2754288 m!3169803))

(assert (=> b!2754288 m!3169785))

(declare-fun m!3169901 () Bool)

(assert (=> b!2754288 m!3169901))

(declare-fun m!3169903 () Bool)

(assert (=> b!2754288 m!3169903))

(declare-fun m!3169905 () Bool)

(assert (=> b!2754288 m!3169905))

(assert (=> b!2754288 m!3169807))

(check-sat (not bm!178332) (not bm!178342) (not b!2754267) (not bm!178325) (not bm!178329) (not b!2754279) (not bm!178334) (not bm!178328) (not bm!178322) (not b!2754286) (not start!267034) (not setNonEmpty!22107) (not b!2754280) (not bm!178336) (not mapNonEmpty!16940) (not b!2754257) b_and!202685 (not b!2754272) (not bm!178335) (not bm!178337) (not bm!178326) (not b_next!78645) (not b!2754302) (not bm!178323) (not b_next!78649) (not bm!178338) (not bm!178327) (not b!2754266) (not mapNonEmpty!16939) (not b!2754264) (not b!2754297) b_and!202681 (not bm!178339) (not b!2754277) (not bm!178341) (not b!2754271) (not bm!178331) (not b!2754288) (not bm!178324) (not b!2754290) (not bm!178340) b_and!202679 (not bm!178330) (not b!2754285) (not b_next!78651) b_and!202683 (not b_next!78647) (not b!2754284) (not bm!178333))
(check-sat b_and!202685 (not b_next!78645) (not b_next!78649) b_and!202681 b_and!202679 (not b_next!78651) b_and!202683 (not b_next!78647))
(get-model)

(declare-fun d!797062 () Bool)

(assert (=> d!797062 (= lt!976172 Nil!31889)))

(declare-fun lt!976198 () Unit!45692)

(declare-fun choose!16138 (List!31989 List!31989 List!31989) Unit!45692)

(assert (=> d!797062 (= lt!976198 (choose!16138 lt!976172 Nil!31889 lt!976172))))

(assert (=> d!797062 (isPrefix!2534 lt!976172 lt!976172)))

(assert (=> d!797062 (= (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 Nil!31889 lt!976172) lt!976198)))

(declare-fun bs!490558 () Bool)

(assert (= bs!490558 d!797062))

(declare-fun m!3169907 () Bool)

(assert (=> bs!490558 m!3169907))

(assert (=> bs!490558 m!3169843))

(assert (=> bm!178326 d!797062))

(declare-fun d!797064 () Bool)

(assert (=> d!797064 (isPrefix!2534 lt!976172 lt!976172)))

(declare-fun lt!976201 () Unit!45692)

(declare-fun choose!16139 (List!31989 List!31989) Unit!45692)

(assert (=> d!797064 (= lt!976201 (choose!16139 lt!976172 lt!976172))))

(assert (=> d!797064 (= (lemmaIsPrefixRefl!1660 lt!976172 lt!976172) lt!976201)))

(declare-fun bs!490559 () Bool)

(assert (= bs!490559 d!797064))

(assert (=> bs!490559 m!3169843))

(declare-fun m!3169909 () Bool)

(assert (=> bs!490559 m!3169909))

(assert (=> bm!178325 d!797064))

(declare-fun bm!178359 () Bool)

(declare-fun call!178368 () Unit!45692)

(assert (=> bm!178359 (= call!178368 (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 lt!976180 lt!976172))))

(declare-fun bm!178360 () Bool)

(declare-fun call!178370 () (InoxSet Context!4554))

(declare-fun lt!976262 () List!31989)

(declare-fun call!178364 () tuple2!31914)

(declare-fun call!178369 () List!31989)

(assert (=> bm!178360 (= call!178364 (findLongestMatchInnerZipper!6 call!178370 lt!976262 (+ 1 1) call!178369 lt!976172 lt!976149))))

(declare-fun b!2754337 () Bool)

(declare-fun e!1736672 () tuple2!31914)

(declare-fun lt!976269 () tuple2!31914)

(assert (=> b!2754337 (= e!1736672 lt!976269)))

(declare-fun b!2754338 () Bool)

(declare-fun e!1736675 () Bool)

(declare-fun lt!976259 () tuple2!31914)

(assert (=> b!2754338 (= e!1736675 (>= (size!24655 (_1!18763 lt!976259)) (size!24655 lt!976180)))))

(declare-fun bm!178361 () Bool)

(declare-fun call!178366 () Unit!45692)

(assert (=> bm!178361 (= call!178366 (lemmaIsPrefixRefl!1660 lt!976172 lt!976172))))

(declare-fun bm!178362 () Bool)

(declare-fun call!178367 () C!16276)

(assert (=> bm!178362 (= call!178370 (derivationStepZipper!350 call!178346 call!178367))))

(declare-fun b!2754339 () Bool)

(assert (=> b!2754339 (= e!1736672 (tuple2!31915 lt!976180 lt!976159))))

(declare-fun b!2754340 () Bool)

(declare-fun c!445802 () Bool)

(declare-fun call!178365 () Bool)

(assert (=> b!2754340 (= c!445802 call!178365)))

(declare-fun lt!976261 () Unit!45692)

(declare-fun lt!976267 () Unit!45692)

(assert (=> b!2754340 (= lt!976261 lt!976267)))

(assert (=> b!2754340 (= lt!976172 lt!976180)))

(assert (=> b!2754340 (= lt!976267 call!178368)))

(declare-fun lt!976275 () Unit!45692)

(declare-fun lt!976266 () Unit!45692)

(assert (=> b!2754340 (= lt!976275 lt!976266)))

(declare-fun call!178371 () Bool)

(assert (=> b!2754340 call!178371))

(assert (=> b!2754340 (= lt!976266 call!178366)))

(declare-fun e!1736671 () tuple2!31914)

(declare-fun e!1736677 () tuple2!31914)

(assert (=> b!2754340 (= e!1736671 e!1736677)))

(declare-fun b!2754341 () Bool)

(declare-fun e!1736673 () tuple2!31914)

(assert (=> b!2754341 (= e!1736673 call!178364)))

(declare-fun b!2754342 () Bool)

(declare-fun e!1736678 () tuple2!31914)

(assert (=> b!2754342 (= e!1736678 e!1736671)))

(declare-fun c!445804 () Bool)

(assert (=> b!2754342 (= c!445804 (= 1 lt!976149))))

(declare-fun bm!178363 () Bool)

(assert (=> bm!178363 (= call!178367 (head!6130 lt!976159))))

(declare-fun b!2754343 () Bool)

(assert (=> b!2754343 (= e!1736678 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun b!2754336 () Bool)

(declare-fun e!1736674 () Unit!45692)

(declare-fun Unit!45700 () Unit!45692)

(assert (=> b!2754336 (= e!1736674 Unit!45700)))

(declare-fun d!797066 () Bool)

(declare-fun e!1736676 () Bool)

(assert (=> d!797066 e!1736676))

(declare-fun res!1154334 () Bool)

(assert (=> d!797066 (=> (not res!1154334) (not e!1736676))))

(assert (=> d!797066 (= res!1154334 (= (++!7894 (_1!18763 lt!976259) (_2!18763 lt!976259)) lt!976172))))

(assert (=> d!797066 (= lt!976259 e!1736678)))

(declare-fun c!445803 () Bool)

(assert (=> d!797066 (= c!445803 (lostCauseZipper!424 call!178346))))

(declare-fun lt!976270 () Unit!45692)

(declare-fun Unit!45701 () Unit!45692)

(assert (=> d!797066 (= lt!976270 Unit!45701)))

(assert (=> d!797066 (= (getSuffix!1220 lt!976172 lt!976180) lt!976159)))

(declare-fun lt!976258 () Unit!45692)

(declare-fun lt!976265 () Unit!45692)

(assert (=> d!797066 (= lt!976258 lt!976265)))

(declare-fun lt!976272 () List!31989)

(assert (=> d!797066 (= lt!976159 lt!976272)))

(assert (=> d!797066 (= lt!976265 (lemmaSamePrefixThenSameSuffix!1122 lt!976180 lt!976159 lt!976180 lt!976272 lt!976172))))

(assert (=> d!797066 (= lt!976272 (getSuffix!1220 lt!976172 lt!976180))))

(declare-fun lt!976263 () Unit!45692)

(declare-fun lt!976268 () Unit!45692)

(assert (=> d!797066 (= lt!976263 lt!976268)))

(assert (=> d!797066 (isPrefix!2534 lt!976180 (++!7894 lt!976180 lt!976159))))

(assert (=> d!797066 (= lt!976268 (lemmaConcatTwoListThenFirstIsPrefix!1648 lt!976180 lt!976159))))

(assert (=> d!797066 (= (++!7894 lt!976180 lt!976159) lt!976172)))

(assert (=> d!797066 (= (findLongestMatchInnerZipper!6 call!178346 lt!976180 1 lt!976159 lt!976172 lt!976149) lt!976259)))

(declare-fun b!2754344 () Bool)

(assert (=> b!2754344 (= e!1736673 e!1736672)))

(assert (=> b!2754344 (= lt!976269 call!178364)))

(declare-fun c!445805 () Bool)

(assert (=> b!2754344 (= c!445805 (isEmpty!18068 (_1!18763 lt!976269)))))

(declare-fun bm!178364 () Bool)

(assert (=> bm!178364 (= call!178365 (nullableZipper!613 call!178346))))

(declare-fun b!2754345 () Bool)

(declare-fun Unit!45702 () Unit!45692)

(assert (=> b!2754345 (= e!1736674 Unit!45702)))

(declare-fun lt!976277 () Unit!45692)

(assert (=> b!2754345 (= lt!976277 call!178366)))

(assert (=> b!2754345 call!178371))

(declare-fun lt!976271 () Unit!45692)

(assert (=> b!2754345 (= lt!976271 lt!976277)))

(declare-fun lt!976274 () Unit!45692)

(assert (=> b!2754345 (= lt!976274 call!178368)))

(assert (=> b!2754345 (= lt!976172 lt!976180)))

(declare-fun lt!976279 () Unit!45692)

(assert (=> b!2754345 (= lt!976279 lt!976274)))

(assert (=> b!2754345 false))

(declare-fun b!2754346 () Bool)

(assert (=> b!2754346 (= e!1736677 (tuple2!31915 lt!976180 Nil!31889))))

(declare-fun b!2754347 () Bool)

(assert (=> b!2754347 (= e!1736677 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun bm!178365 () Bool)

(assert (=> bm!178365 (= call!178371 (isPrefix!2534 lt!976172 lt!976172))))

(declare-fun b!2754348 () Bool)

(declare-fun c!445801 () Bool)

(assert (=> b!2754348 (= c!445801 call!178365)))

(declare-fun lt!976264 () Unit!45692)

(declare-fun lt!976273 () Unit!45692)

(assert (=> b!2754348 (= lt!976264 lt!976273)))

(declare-fun lt!976276 () C!16276)

(declare-fun lt!976260 () List!31989)

(assert (=> b!2754348 (= (++!7894 (++!7894 lt!976180 (Cons!31889 lt!976276 Nil!31889)) lt!976260) lt!976172)))

(assert (=> b!2754348 (= lt!976273 (lemmaMoveElementToOtherListKeepsConcatEq!851 lt!976180 lt!976276 lt!976260 lt!976172))))

(assert (=> b!2754348 (= lt!976260 (tail!4368 lt!976159))))

(assert (=> b!2754348 (= lt!976276 (head!6130 lt!976159))))

(declare-fun lt!976257 () Unit!45692)

(declare-fun lt!976254 () Unit!45692)

(assert (=> b!2754348 (= lt!976257 lt!976254)))

(assert (=> b!2754348 (isPrefix!2534 (++!7894 lt!976180 (Cons!31889 (head!6130 (getSuffix!1220 lt!976172 lt!976180)) Nil!31889)) lt!976172)))

(assert (=> b!2754348 (= lt!976254 (lemmaAddHeadSuffixToPrefixStillPrefix!439 lt!976180 lt!976172))))

(assert (=> b!2754348 (= lt!976262 (++!7894 lt!976180 (Cons!31889 (head!6130 lt!976159) Nil!31889)))))

(declare-fun lt!976278 () Unit!45692)

(assert (=> b!2754348 (= lt!976278 e!1736674)))

(declare-fun c!445800 () Bool)

(assert (=> b!2754348 (= c!445800 (= (size!24655 lt!976180) (size!24655 lt!976172)))))

(declare-fun lt!976255 () Unit!45692)

(declare-fun lt!976256 () Unit!45692)

(assert (=> b!2754348 (= lt!976255 lt!976256)))

(assert (=> b!2754348 (<= (size!24655 lt!976180) (size!24655 lt!976172))))

(assert (=> b!2754348 (= lt!976256 (lemmaIsPrefixThenSmallerEqSize!242 lt!976180 lt!976172))))

(assert (=> b!2754348 (= e!1736671 e!1736673)))

(declare-fun b!2754349 () Bool)

(assert (=> b!2754349 (= e!1736676 e!1736675)))

(declare-fun res!1154333 () Bool)

(assert (=> b!2754349 (=> res!1154333 e!1736675)))

(assert (=> b!2754349 (= res!1154333 (isEmpty!18068 (_1!18763 lt!976259)))))

(declare-fun bm!178366 () Bool)

(assert (=> bm!178366 (= call!178369 (tail!4368 lt!976159))))

(assert (= (and d!797066 c!445803) b!2754343))

(assert (= (and d!797066 (not c!445803)) b!2754342))

(assert (= (and b!2754342 c!445804) b!2754340))

(assert (= (and b!2754342 (not c!445804)) b!2754348))

(assert (= (and b!2754340 c!445802) b!2754346))

(assert (= (and b!2754340 (not c!445802)) b!2754347))

(assert (= (and b!2754348 c!445800) b!2754345))

(assert (= (and b!2754348 (not c!445800)) b!2754336))

(assert (= (and b!2754348 c!445801) b!2754344))

(assert (= (and b!2754348 (not c!445801)) b!2754341))

(assert (= (and b!2754344 c!445805) b!2754339))

(assert (= (and b!2754344 (not c!445805)) b!2754337))

(assert (= (or b!2754344 b!2754341) bm!178366))

(assert (= (or b!2754344 b!2754341) bm!178363))

(assert (= (or b!2754344 b!2754341) bm!178362))

(assert (= (or b!2754344 b!2754341) bm!178360))

(assert (= (or b!2754340 b!2754348) bm!178364))

(assert (= (or b!2754340 b!2754345) bm!178361))

(assert (= (or b!2754340 b!2754345) bm!178359))

(assert (= (or b!2754340 b!2754345) bm!178365))

(assert (= (and d!797066 res!1154334) b!2754349))

(assert (= (and b!2754349 (not res!1154333)) b!2754338))

(declare-fun m!3169911 () Bool)

(assert (=> bm!178366 m!3169911))

(assert (=> bm!178365 m!3169843))

(declare-fun m!3169913 () Bool)

(assert (=> bm!178362 m!3169913))

(declare-fun m!3169915 () Bool)

(assert (=> bm!178364 m!3169915))

(declare-fun m!3169917 () Bool)

(assert (=> b!2754338 m!3169917))

(declare-fun m!3169919 () Bool)

(assert (=> b!2754338 m!3169919))

(declare-fun m!3169921 () Bool)

(assert (=> bm!178360 m!3169921))

(assert (=> d!797066 m!3169905))

(declare-fun m!3169923 () Bool)

(assert (=> d!797066 m!3169923))

(assert (=> d!797066 m!3169905))

(declare-fun m!3169925 () Bool)

(assert (=> d!797066 m!3169925))

(declare-fun m!3169927 () Bool)

(assert (=> d!797066 m!3169927))

(declare-fun m!3169929 () Bool)

(assert (=> d!797066 m!3169929))

(declare-fun m!3169931 () Bool)

(assert (=> d!797066 m!3169931))

(declare-fun m!3169933 () Bool)

(assert (=> d!797066 m!3169933))

(declare-fun m!3169935 () Bool)

(assert (=> b!2754344 m!3169935))

(declare-fun m!3169937 () Bool)

(assert (=> b!2754349 m!3169937))

(assert (=> bm!178361 m!3169849))

(declare-fun m!3169939 () Bool)

(assert (=> bm!178363 m!3169939))

(declare-fun m!3169941 () Bool)

(assert (=> bm!178359 m!3169941))

(assert (=> b!2754348 m!3169931))

(declare-fun m!3169943 () Bool)

(assert (=> b!2754348 m!3169943))

(declare-fun m!3169945 () Bool)

(assert (=> b!2754348 m!3169945))

(declare-fun m!3169947 () Bool)

(assert (=> b!2754348 m!3169947))

(assert (=> b!2754348 m!3169919))

(declare-fun m!3169949 () Bool)

(assert (=> b!2754348 m!3169949))

(declare-fun m!3169951 () Bool)

(assert (=> b!2754348 m!3169951))

(assert (=> b!2754348 m!3169911))

(assert (=> b!2754348 m!3169939))

(declare-fun m!3169953 () Bool)

(assert (=> b!2754348 m!3169953))

(assert (=> b!2754348 m!3169781))

(assert (=> b!2754348 m!3169931))

(assert (=> b!2754348 m!3169949))

(assert (=> b!2754348 m!3169945))

(declare-fun m!3169955 () Bool)

(assert (=> b!2754348 m!3169955))

(declare-fun m!3169957 () Bool)

(assert (=> b!2754348 m!3169957))

(declare-fun m!3169959 () Bool)

(assert (=> b!2754348 m!3169959))

(assert (=> bm!178335 d!797066))

(declare-fun call!178397 () (InoxSet Context!4554))

(declare-fun call!178401 () List!31989)

(declare-fun call!178398 () List!31989)

(declare-fun bm!178387 () Bool)

(declare-fun call!178395 () Int)

(assert (=> bm!178387 (= call!178395 (findLongestMatchInnerZipperFast!17 call!178397 call!178401 (+ 1 1) call!178398 input!5495 lt!976149))))

(declare-fun b!2754374 () Bool)

(declare-fun e!1736692 () Int)

(assert (=> b!2754374 (= e!1736692 call!178395)))

(declare-fun b!2754375 () Bool)

(declare-fun lt!976375 () Int)

(assert (=> b!2754375 (= e!1736692 (ite (= lt!976375 0) 1 lt!976375))))

(assert (=> b!2754375 (= lt!976375 call!178395)))

(declare-fun b!2754376 () Bool)

(declare-fun e!1736696 () Int)

(declare-fun e!1736695 () Int)

(assert (=> b!2754376 (= e!1736696 e!1736695)))

(declare-fun c!445818 () Bool)

(assert (=> b!2754376 (= c!445818 (= 1 lt!976149))))

(declare-fun b!2754377 () Bool)

(declare-fun e!1736693 () Int)

(assert (=> b!2754377 (= e!1736693 0)))

(declare-fun b!2754378 () Bool)

(declare-fun e!1736691 () Unit!45692)

(declare-fun Unit!45703 () Unit!45692)

(assert (=> b!2754378 (= e!1736691 Unit!45703)))

(declare-fun bm!178388 () Bool)

(declare-fun c!445822 () Bool)

(assert (=> bm!178388 (= c!445822 c!445818)))

(declare-fun call!178392 () Unit!45692)

(declare-fun lt!976402 () List!31989)

(declare-fun lt!976369 () List!31989)

(declare-fun e!1736694 () List!31989)

(assert (=> bm!178388 (= call!178392 (lemmaIsPrefixSameLengthThenSameList!442 (ite c!445818 lt!976369 lt!976402) lt!976186 e!1736694))))

(declare-fun b!2754379 () Bool)

(declare-fun call!178394 () List!31989)

(assert (=> b!2754379 (= e!1736694 call!178394)))

(declare-fun lt!976380 () List!31989)

(declare-fun call!178399 () Bool)

(declare-fun lt!976366 () List!31989)

(declare-fun lt!976373 () List!31989)

(declare-fun bm!178389 () Bool)

(declare-fun lt!976399 () List!31989)

(assert (=> bm!178389 (= call!178399 (isPrefix!2534 (ite c!445818 lt!976380 lt!976399) (ite c!445818 lt!976366 lt!976373)))))

(declare-fun bm!178390 () Bool)

(declare-fun call!178393 () Unit!45692)

(assert (=> bm!178390 (= call!178393 (lemmaIsPrefixRefl!1660 (ite c!445818 lt!976380 lt!976399) (ite c!445818 lt!976366 lt!976373)))))

(declare-fun lt!976376 () Int)

(declare-fun d!797068 () Bool)

(assert (=> d!797068 (= (size!24655 (_1!18763 (findLongestMatchInnerZipper!6 call!178344 lt!976186 1 lt!976185 (list!12044 input!5495) lt!976149))) lt!976376)))

(assert (=> d!797068 (= lt!976376 e!1736696)))

(declare-fun c!445821 () Bool)

(assert (=> d!797068 (= c!445821 (lostCauseZipper!424 call!178344))))

(declare-fun lt!976384 () Unit!45692)

(declare-fun Unit!45704 () Unit!45692)

(assert (=> d!797068 (= lt!976384 Unit!45704)))

(assert (=> d!797068 (= (getSuffix!1220 (list!12044 input!5495) lt!976186) lt!976185)))

(declare-fun lt!976404 () Unit!45692)

(declare-fun lt!976398 () Unit!45692)

(assert (=> d!797068 (= lt!976404 lt!976398)))

(declare-fun lt!976367 () List!31989)

(assert (=> d!797068 (= lt!976185 lt!976367)))

(assert (=> d!797068 (= lt!976398 (lemmaSamePrefixThenSameSuffix!1122 lt!976186 lt!976185 lt!976186 lt!976367 (list!12044 input!5495)))))

(assert (=> d!797068 (= lt!976367 (getSuffix!1220 (list!12044 input!5495) lt!976186))))

(declare-fun lt!976403 () Unit!45692)

(declare-fun lt!976394 () Unit!45692)

(assert (=> d!797068 (= lt!976403 lt!976394)))

(assert (=> d!797068 (isPrefix!2534 lt!976186 (++!7894 lt!976186 lt!976185))))

(assert (=> d!797068 (= lt!976394 (lemmaConcatTwoListThenFirstIsPrefix!1648 lt!976186 lt!976185))))

(assert (=> d!797068 (= (++!7894 lt!976186 lt!976185) (list!12044 input!5495))))

(assert (=> d!797068 (= (findLongestMatchInnerZipperFast!17 call!178344 lt!976186 1 lt!976185 input!5495 lt!976149) lt!976376)))

(declare-fun b!2754380 () Bool)

(assert (=> b!2754380 (= e!1736694 (list!12044 input!5495))))

(declare-fun b!2754381 () Bool)

(declare-fun c!445820 () Bool)

(declare-fun call!178400 () Bool)

(assert (=> b!2754381 (= c!445820 call!178400)))

(declare-fun lt!976391 () Unit!45692)

(declare-fun lt!976377 () Unit!45692)

(assert (=> b!2754381 (= lt!976391 lt!976377)))

(declare-fun lt!976395 () List!31989)

(declare-fun lt!976368 () C!16276)

(declare-fun lt!976370 () List!31989)

(assert (=> b!2754381 (= (++!7894 (++!7894 lt!976186 (Cons!31889 lt!976368 Nil!31889)) lt!976395) lt!976370)))

(assert (=> b!2754381 (= lt!976377 (lemmaMoveElementToOtherListKeepsConcatEq!851 lt!976186 lt!976368 lt!976395 lt!976370))))

(assert (=> b!2754381 (= lt!976370 (list!12044 input!5495))))

(assert (=> b!2754381 (= lt!976395 (tail!4368 lt!976185))))

(assert (=> b!2754381 (= lt!976368 (apply!7458 input!5495 1))))

(declare-fun lt!976372 () Unit!45692)

(declare-fun lt!976381 () Unit!45692)

(assert (=> b!2754381 (= lt!976372 lt!976381)))

(declare-fun lt!976371 () List!31989)

(assert (=> b!2754381 (isPrefix!2534 (++!7894 lt!976186 (Cons!31889 (head!6130 (getSuffix!1220 lt!976371 lt!976186)) Nil!31889)) lt!976371)))

(assert (=> b!2754381 (= lt!976381 (lemmaAddHeadSuffixToPrefixStillPrefix!439 lt!976186 lt!976371))))

(assert (=> b!2754381 (= lt!976371 (list!12044 input!5495))))

(declare-fun lt!976374 () Unit!45692)

(assert (=> b!2754381 (= lt!976374 e!1736691)))

(declare-fun c!445823 () Bool)

(assert (=> b!2754381 (= c!445823 (= (size!24655 lt!976186) (size!24656 input!5495)))))

(declare-fun lt!976388 () Unit!45692)

(declare-fun lt!976364 () Unit!45692)

(assert (=> b!2754381 (= lt!976388 lt!976364)))

(declare-fun lt!976365 () List!31989)

(assert (=> b!2754381 (<= (size!24655 lt!976186) (size!24655 lt!976365))))

(assert (=> b!2754381 (= lt!976364 (lemmaIsPrefixThenSmallerEqSize!242 lt!976186 lt!976365))))

(assert (=> b!2754381 (= lt!976365 (list!12044 input!5495))))

(declare-fun lt!976390 () Unit!45692)

(declare-fun lt!976396 () Unit!45692)

(assert (=> b!2754381 (= lt!976390 lt!976396)))

(declare-fun lt!976401 () List!31989)

(assert (=> b!2754381 (= (head!6130 (drop!1689 lt!976401 1)) (apply!7459 lt!976401 1))))

(assert (=> b!2754381 (= lt!976396 (lemmaDropApply!895 lt!976401 1))))

(assert (=> b!2754381 (= lt!976401 (list!12044 input!5495))))

(declare-fun lt!976378 () Unit!45692)

(declare-fun lt!976383 () Unit!45692)

(assert (=> b!2754381 (= lt!976378 lt!976383)))

(declare-fun lt!976387 () List!31989)

(declare-fun lt!976400 () List!31989)

(assert (=> b!2754381 (and (= lt!976387 lt!976186) (= lt!976400 lt!976185))))

(assert (=> b!2754381 (= lt!976383 (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976387 lt!976400 lt!976186 lt!976185))))

(assert (=> b!2754381 (= lt!976400 call!178394)))

(declare-fun lt!976382 () tuple2!31916)

(assert (=> b!2754381 (= lt!976387 (list!12044 (_1!18764 lt!976382)))))

(assert (=> b!2754381 (= lt!976382 (splitAt!89 input!5495 1))))

(assert (=> b!2754381 (= e!1736695 e!1736692)))

(declare-fun bm!178391 () Bool)

(declare-fun call!178396 () C!16276)

(assert (=> bm!178391 (= call!178401 (++!7894 lt!976186 (Cons!31889 call!178396 Nil!31889)))))

(declare-fun b!2754382 () Bool)

(assert (=> b!2754382 (= e!1736696 0)))

(declare-fun b!2754383 () Bool)

(assert (=> b!2754383 (= e!1736693 1)))

(declare-fun b!2754384 () Bool)

(declare-fun c!445819 () Bool)

(assert (=> b!2754384 (= c!445819 call!178400)))

(declare-fun lt!976405 () Unit!45692)

(declare-fun lt!976397 () Unit!45692)

(assert (=> b!2754384 (= lt!976405 lt!976397)))

(assert (=> b!2754384 (= lt!976369 lt!976186)))

(assert (=> b!2754384 (= lt!976397 call!178392)))

(assert (=> b!2754384 (= lt!976369 call!178394)))

(declare-fun lt!976392 () Unit!45692)

(declare-fun lt!976389 () Unit!45692)

(assert (=> b!2754384 (= lt!976392 lt!976389)))

(assert (=> b!2754384 call!178399))

(assert (=> b!2754384 (= lt!976389 call!178393)))

(assert (=> b!2754384 (= lt!976366 call!178394)))

(assert (=> b!2754384 (= lt!976380 call!178394)))

(assert (=> b!2754384 (= e!1736695 e!1736693)))

(declare-fun bm!178392 () Bool)

(assert (=> bm!178392 (= call!178394 (list!12044 (ite c!445818 input!5495 (_2!18764 lt!976382))))))

(declare-fun bm!178393 () Bool)

(assert (=> bm!178393 (= call!178400 (nullableZipper!613 call!178344))))

(declare-fun bm!178394 () Bool)

(assert (=> bm!178394 (= call!178396 (apply!7458 input!5495 1))))

(declare-fun bm!178395 () Bool)

(assert (=> bm!178395 (= call!178397 (derivationStepZipper!350 call!178344 call!178396))))

(declare-fun b!2754385 () Bool)

(declare-fun Unit!45705 () Unit!45692)

(assert (=> b!2754385 (= e!1736691 Unit!45705)))

(assert (=> b!2754385 (= lt!976399 (list!12044 input!5495))))

(assert (=> b!2754385 (= lt!976373 (list!12044 input!5495))))

(declare-fun lt!976385 () Unit!45692)

(assert (=> b!2754385 (= lt!976385 call!178393)))

(assert (=> b!2754385 call!178399))

(declare-fun lt!976379 () Unit!45692)

(assert (=> b!2754385 (= lt!976379 lt!976385)))

(assert (=> b!2754385 (= lt!976402 (list!12044 input!5495))))

(declare-fun lt!976393 () Unit!45692)

(assert (=> b!2754385 (= lt!976393 call!178392)))

(assert (=> b!2754385 (= lt!976402 lt!976186)))

(declare-fun lt!976386 () Unit!45692)

(assert (=> b!2754385 (= lt!976386 lt!976393)))

(assert (=> b!2754385 false))

(declare-fun bm!178396 () Bool)

(assert (=> bm!178396 (= call!178398 (tail!4368 lt!976185))))

(assert (= (and d!797068 c!445821) b!2754382))

(assert (= (and d!797068 (not c!445821)) b!2754376))

(assert (= (and b!2754376 c!445818) b!2754384))

(assert (= (and b!2754376 (not c!445818)) b!2754381))

(assert (= (and b!2754384 c!445819) b!2754383))

(assert (= (and b!2754384 (not c!445819)) b!2754377))

(assert (= (and b!2754381 c!445823) b!2754385))

(assert (= (and b!2754381 (not c!445823)) b!2754378))

(assert (= (and b!2754381 c!445820) b!2754375))

(assert (= (and b!2754381 (not c!445820)) b!2754374))

(assert (= (or b!2754375 b!2754374) bm!178394))

(assert (= (or b!2754375 b!2754374) bm!178396))

(assert (= (or b!2754375 b!2754374) bm!178391))

(assert (= (or b!2754375 b!2754374) bm!178395))

(assert (= (or b!2754375 b!2754374) bm!178387))

(assert (= (or b!2754384 b!2754381) bm!178392))

(assert (= (or b!2754384 b!2754385) bm!178390))

(assert (= (or b!2754384 b!2754381) bm!178393))

(assert (= (or b!2754384 b!2754385) bm!178389))

(assert (= (or b!2754384 b!2754385) bm!178388))

(assert (= (and bm!178388 c!445822) b!2754379))

(assert (= (and bm!178388 (not c!445822)) b!2754380))

(declare-fun m!3169961 () Bool)

(assert (=> bm!178396 m!3169961))

(declare-fun m!3169963 () Bool)

(assert (=> bm!178391 m!3169963))

(assert (=> d!797068 m!3169871))

(assert (=> d!797068 m!3169817))

(declare-fun m!3169965 () Bool)

(assert (=> d!797068 m!3169965))

(assert (=> d!797068 m!3169817))

(declare-fun m!3169967 () Bool)

(assert (=> d!797068 m!3169967))

(declare-fun m!3169969 () Bool)

(assert (=> d!797068 m!3169969))

(assert (=> d!797068 m!3169817))

(assert (=> d!797068 m!3169817))

(declare-fun m!3169971 () Bool)

(assert (=> d!797068 m!3169971))

(declare-fun m!3169973 () Bool)

(assert (=> d!797068 m!3169973))

(assert (=> d!797068 m!3169871))

(declare-fun m!3169975 () Bool)

(assert (=> d!797068 m!3169975))

(declare-fun m!3169977 () Bool)

(assert (=> d!797068 m!3169977))

(assert (=> b!2754380 m!3169817))

(declare-fun m!3169979 () Bool)

(assert (=> bm!178393 m!3169979))

(declare-fun m!3169981 () Bool)

(assert (=> bm!178390 m!3169981))

(declare-fun m!3169983 () Bool)

(assert (=> bm!178392 m!3169983))

(declare-fun m!3169985 () Bool)

(assert (=> b!2754381 m!3169985))

(declare-fun m!3169987 () Bool)

(assert (=> b!2754381 m!3169987))

(declare-fun m!3169989 () Bool)

(assert (=> b!2754381 m!3169989))

(declare-fun m!3169991 () Bool)

(assert (=> b!2754381 m!3169991))

(declare-fun m!3169993 () Bool)

(assert (=> b!2754381 m!3169993))

(declare-fun m!3169995 () Bool)

(assert (=> b!2754381 m!3169995))

(declare-fun m!3169997 () Bool)

(assert (=> b!2754381 m!3169997))

(declare-fun m!3169999 () Bool)

(assert (=> b!2754381 m!3169999))

(declare-fun m!3170001 () Bool)

(assert (=> b!2754381 m!3170001))

(declare-fun m!3170003 () Bool)

(assert (=> b!2754381 m!3170003))

(declare-fun m!3170005 () Bool)

(assert (=> b!2754381 m!3170005))

(declare-fun m!3170007 () Bool)

(assert (=> b!2754381 m!3170007))

(assert (=> b!2754381 m!3169817))

(assert (=> b!2754381 m!3170001))

(declare-fun m!3170009 () Bool)

(assert (=> b!2754381 m!3170009))

(declare-fun m!3170011 () Bool)

(assert (=> b!2754381 m!3170011))

(declare-fun m!3170013 () Bool)

(assert (=> b!2754381 m!3170013))

(assert (=> b!2754381 m!3169961))

(declare-fun m!3170015 () Bool)

(assert (=> b!2754381 m!3170015))

(assert (=> b!2754381 m!3170005))

(declare-fun m!3170017 () Bool)

(assert (=> b!2754381 m!3170017))

(assert (=> b!2754381 m!3170009))

(declare-fun m!3170019 () Bool)

(assert (=> b!2754381 m!3170019))

(assert (=> b!2754381 m!3169835))

(assert (=> b!2754381 m!3169985))

(declare-fun m!3170021 () Bool)

(assert (=> b!2754381 m!3170021))

(assert (=> bm!178394 m!3169995))

(assert (=> b!2754385 m!3169817))

(declare-fun m!3170023 () Bool)

(assert (=> bm!178389 m!3170023))

(declare-fun m!3170025 () Bool)

(assert (=> bm!178395 m!3170025))

(declare-fun m!3170027 () Bool)

(assert (=> bm!178388 m!3170027))

(declare-fun m!3170029 () Bool)

(assert (=> bm!178387 m!3170029))

(assert (=> bm!178340 d!797068))

(declare-fun call!178407 () (InoxSet Context!4554))

(declare-fun bm!178397 () Bool)

(declare-fun call!178411 () List!31989)

(declare-fun call!178405 () Int)

(declare-fun call!178408 () List!31989)

(assert (=> bm!178397 (= call!178405 (findLongestMatchInnerZipperFast!17 call!178407 call!178411 (+ 0 1) call!178408 input!5495 lt!976149))))

(declare-fun b!2754386 () Bool)

(declare-fun e!1736698 () Int)

(assert (=> b!2754386 (= e!1736698 call!178405)))

(declare-fun b!2754387 () Bool)

(declare-fun lt!976417 () Int)

(assert (=> b!2754387 (= e!1736698 (ite (= lt!976417 0) 0 lt!976417))))

(assert (=> b!2754387 (= lt!976417 call!178405)))

(declare-fun b!2754388 () Bool)

(declare-fun e!1736702 () Int)

(declare-fun e!1736701 () Int)

(assert (=> b!2754388 (= e!1736702 e!1736701)))

(declare-fun c!445824 () Bool)

(assert (=> b!2754388 (= c!445824 (= 0 lt!976149))))

(declare-fun b!2754389 () Bool)

(declare-fun e!1736699 () Int)

(assert (=> b!2754389 (= e!1736699 0)))

(declare-fun b!2754390 () Bool)

(declare-fun e!1736697 () Unit!45692)

(declare-fun Unit!45706 () Unit!45692)

(assert (=> b!2754390 (= e!1736697 Unit!45706)))

(declare-fun bm!178398 () Bool)

(declare-fun c!445828 () Bool)

(assert (=> bm!178398 (= c!445828 c!445824)))

(declare-fun lt!976411 () List!31989)

(declare-fun call!178402 () Unit!45692)

(declare-fun lt!976444 () List!31989)

(declare-fun e!1736700 () List!31989)

(assert (=> bm!178398 (= call!178402 (lemmaIsPrefixSameLengthThenSameList!442 (ite c!445824 lt!976411 lt!976444) Nil!31889 e!1736700))))

(declare-fun b!2754391 () Bool)

(declare-fun call!178404 () List!31989)

(assert (=> b!2754391 (= e!1736700 call!178404)))

(declare-fun lt!976408 () List!31989)

(declare-fun call!178409 () Bool)

(declare-fun lt!976441 () List!31989)

(declare-fun lt!976422 () List!31989)

(declare-fun lt!976415 () List!31989)

(declare-fun bm!178399 () Bool)

(assert (=> bm!178399 (= call!178409 (isPrefix!2534 (ite c!445824 lt!976422 lt!976441) (ite c!445824 lt!976408 lt!976415)))))

(declare-fun bm!178400 () Bool)

(declare-fun call!178403 () Unit!45692)

(assert (=> bm!178400 (= call!178403 (lemmaIsPrefixRefl!1660 (ite c!445824 lt!976422 lt!976441) (ite c!445824 lt!976408 lt!976415)))))

(declare-fun d!797070 () Bool)

(declare-fun lt!976418 () Int)

(assert (=> d!797070 (= (size!24655 (_1!18763 (findLongestMatchInnerZipper!6 z!3597 Nil!31889 0 lt!976172 (list!12044 input!5495) lt!976149))) lt!976418)))

(assert (=> d!797070 (= lt!976418 e!1736702)))

(declare-fun c!445827 () Bool)

(assert (=> d!797070 (= c!445827 (lostCauseZipper!424 z!3597))))

(declare-fun lt!976426 () Unit!45692)

(declare-fun Unit!45707 () Unit!45692)

(assert (=> d!797070 (= lt!976426 Unit!45707)))

(assert (=> d!797070 (= (getSuffix!1220 (list!12044 input!5495) Nil!31889) lt!976172)))

(declare-fun lt!976446 () Unit!45692)

(declare-fun lt!976440 () Unit!45692)

(assert (=> d!797070 (= lt!976446 lt!976440)))

(declare-fun lt!976409 () List!31989)

(assert (=> d!797070 (= lt!976172 lt!976409)))

(assert (=> d!797070 (= lt!976440 (lemmaSamePrefixThenSameSuffix!1122 Nil!31889 lt!976172 Nil!31889 lt!976409 (list!12044 input!5495)))))

(assert (=> d!797070 (= lt!976409 (getSuffix!1220 (list!12044 input!5495) Nil!31889))))

(declare-fun lt!976445 () Unit!45692)

(declare-fun lt!976436 () Unit!45692)

(assert (=> d!797070 (= lt!976445 lt!976436)))

(assert (=> d!797070 (isPrefix!2534 Nil!31889 (++!7894 Nil!31889 lt!976172))))

(assert (=> d!797070 (= lt!976436 (lemmaConcatTwoListThenFirstIsPrefix!1648 Nil!31889 lt!976172))))

(assert (=> d!797070 (= (++!7894 Nil!31889 lt!976172) (list!12044 input!5495))))

(assert (=> d!797070 (= (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149) lt!976418)))

(declare-fun b!2754392 () Bool)

(assert (=> b!2754392 (= e!1736700 (list!12044 input!5495))))

(declare-fun b!2754393 () Bool)

(declare-fun c!445826 () Bool)

(declare-fun call!178410 () Bool)

(assert (=> b!2754393 (= c!445826 call!178410)))

(declare-fun lt!976433 () Unit!45692)

(declare-fun lt!976419 () Unit!45692)

(assert (=> b!2754393 (= lt!976433 lt!976419)))

(declare-fun lt!976410 () C!16276)

(declare-fun lt!976437 () List!31989)

(declare-fun lt!976412 () List!31989)

(assert (=> b!2754393 (= (++!7894 (++!7894 Nil!31889 (Cons!31889 lt!976410 Nil!31889)) lt!976437) lt!976412)))

(assert (=> b!2754393 (= lt!976419 (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976410 lt!976437 lt!976412))))

(assert (=> b!2754393 (= lt!976412 (list!12044 input!5495))))

(assert (=> b!2754393 (= lt!976437 (tail!4368 lt!976172))))

(assert (=> b!2754393 (= lt!976410 (apply!7458 input!5495 0))))

(declare-fun lt!976414 () Unit!45692)

(declare-fun lt!976423 () Unit!45692)

(assert (=> b!2754393 (= lt!976414 lt!976423)))

(declare-fun lt!976413 () List!31989)

(assert (=> b!2754393 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 (getSuffix!1220 lt!976413 Nil!31889)) Nil!31889)) lt!976413)))

(assert (=> b!2754393 (= lt!976423 (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976413))))

(assert (=> b!2754393 (= lt!976413 (list!12044 input!5495))))

(declare-fun lt!976416 () Unit!45692)

(assert (=> b!2754393 (= lt!976416 e!1736697)))

(declare-fun c!445829 () Bool)

(assert (=> b!2754393 (= c!445829 (= (size!24655 Nil!31889) (size!24656 input!5495)))))

(declare-fun lt!976430 () Unit!45692)

(declare-fun lt!976406 () Unit!45692)

(assert (=> b!2754393 (= lt!976430 lt!976406)))

(declare-fun lt!976407 () List!31989)

(assert (=> b!2754393 (<= (size!24655 Nil!31889) (size!24655 lt!976407))))

(assert (=> b!2754393 (= lt!976406 (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976407))))

(assert (=> b!2754393 (= lt!976407 (list!12044 input!5495))))

(declare-fun lt!976432 () Unit!45692)

(declare-fun lt!976438 () Unit!45692)

(assert (=> b!2754393 (= lt!976432 lt!976438)))

(declare-fun lt!976443 () List!31989)

(assert (=> b!2754393 (= (head!6130 (drop!1689 lt!976443 0)) (apply!7459 lt!976443 0))))

(assert (=> b!2754393 (= lt!976438 (lemmaDropApply!895 lt!976443 0))))

(assert (=> b!2754393 (= lt!976443 (list!12044 input!5495))))

(declare-fun lt!976420 () Unit!45692)

(declare-fun lt!976425 () Unit!45692)

(assert (=> b!2754393 (= lt!976420 lt!976425)))

(declare-fun lt!976429 () List!31989)

(declare-fun lt!976442 () List!31989)

(assert (=> b!2754393 (and (= lt!976429 Nil!31889) (= lt!976442 lt!976172))))

(assert (=> b!2754393 (= lt!976425 (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976429 lt!976442 Nil!31889 lt!976172))))

(assert (=> b!2754393 (= lt!976442 call!178404)))

(declare-fun lt!976424 () tuple2!31916)

(assert (=> b!2754393 (= lt!976429 (list!12044 (_1!18764 lt!976424)))))

(assert (=> b!2754393 (= lt!976424 (splitAt!89 input!5495 0))))

(assert (=> b!2754393 (= e!1736701 e!1736698)))

(declare-fun bm!178401 () Bool)

(declare-fun call!178406 () C!16276)

(assert (=> bm!178401 (= call!178411 (++!7894 Nil!31889 (Cons!31889 call!178406 Nil!31889)))))

(declare-fun b!2754394 () Bool)

(assert (=> b!2754394 (= e!1736702 0)))

(declare-fun b!2754395 () Bool)

(assert (=> b!2754395 (= e!1736699 0)))

(declare-fun b!2754396 () Bool)

(declare-fun c!445825 () Bool)

(assert (=> b!2754396 (= c!445825 call!178410)))

(declare-fun lt!976447 () Unit!45692)

(declare-fun lt!976439 () Unit!45692)

(assert (=> b!2754396 (= lt!976447 lt!976439)))

(assert (=> b!2754396 (= lt!976411 Nil!31889)))

(assert (=> b!2754396 (= lt!976439 call!178402)))

(assert (=> b!2754396 (= lt!976411 call!178404)))

(declare-fun lt!976434 () Unit!45692)

(declare-fun lt!976431 () Unit!45692)

(assert (=> b!2754396 (= lt!976434 lt!976431)))

(assert (=> b!2754396 call!178409))

(assert (=> b!2754396 (= lt!976431 call!178403)))

(assert (=> b!2754396 (= lt!976408 call!178404)))

(assert (=> b!2754396 (= lt!976422 call!178404)))

(assert (=> b!2754396 (= e!1736701 e!1736699)))

(declare-fun bm!178402 () Bool)

(assert (=> bm!178402 (= call!178404 (list!12044 (ite c!445824 input!5495 (_2!18764 lt!976424))))))

(declare-fun bm!178403 () Bool)

(assert (=> bm!178403 (= call!178410 (nullableZipper!613 z!3597))))

(declare-fun bm!178404 () Bool)

(assert (=> bm!178404 (= call!178406 (apply!7458 input!5495 0))))

(declare-fun bm!178405 () Bool)

(assert (=> bm!178405 (= call!178407 (derivationStepZipper!350 z!3597 call!178406))))

(declare-fun b!2754397 () Bool)

(declare-fun Unit!45708 () Unit!45692)

(assert (=> b!2754397 (= e!1736697 Unit!45708)))

(assert (=> b!2754397 (= lt!976441 (list!12044 input!5495))))

(assert (=> b!2754397 (= lt!976415 (list!12044 input!5495))))

(declare-fun lt!976427 () Unit!45692)

(assert (=> b!2754397 (= lt!976427 call!178403)))

(assert (=> b!2754397 call!178409))

(declare-fun lt!976421 () Unit!45692)

(assert (=> b!2754397 (= lt!976421 lt!976427)))

(assert (=> b!2754397 (= lt!976444 (list!12044 input!5495))))

(declare-fun lt!976435 () Unit!45692)

(assert (=> b!2754397 (= lt!976435 call!178402)))

(assert (=> b!2754397 (= lt!976444 Nil!31889)))

(declare-fun lt!976428 () Unit!45692)

(assert (=> b!2754397 (= lt!976428 lt!976435)))

(assert (=> b!2754397 false))

(declare-fun bm!178406 () Bool)

(assert (=> bm!178406 (= call!178408 (tail!4368 lt!976172))))

(assert (= (and d!797070 c!445827) b!2754394))

(assert (= (and d!797070 (not c!445827)) b!2754388))

(assert (= (and b!2754388 c!445824) b!2754396))

(assert (= (and b!2754388 (not c!445824)) b!2754393))

(assert (= (and b!2754396 c!445825) b!2754395))

(assert (= (and b!2754396 (not c!445825)) b!2754389))

(assert (= (and b!2754393 c!445829) b!2754397))

(assert (= (and b!2754393 (not c!445829)) b!2754390))

(assert (= (and b!2754393 c!445826) b!2754387))

(assert (= (and b!2754393 (not c!445826)) b!2754386))

(assert (= (or b!2754387 b!2754386) bm!178404))

(assert (= (or b!2754387 b!2754386) bm!178406))

(assert (= (or b!2754387 b!2754386) bm!178401))

(assert (= (or b!2754387 b!2754386) bm!178405))

(assert (= (or b!2754387 b!2754386) bm!178397))

(assert (= (or b!2754396 b!2754393) bm!178402))

(assert (= (or b!2754396 b!2754397) bm!178400))

(assert (= (or b!2754396 b!2754393) bm!178403))

(assert (= (or b!2754396 b!2754397) bm!178399))

(assert (= (or b!2754396 b!2754397) bm!178398))

(assert (= (and bm!178398 c!445828) b!2754391))

(assert (= (and bm!178398 (not c!445828)) b!2754392))

(assert (=> bm!178406 m!3169803))

(declare-fun m!3170031 () Bool)

(assert (=> bm!178401 m!3170031))

(assert (=> d!797070 m!3169813))

(assert (=> d!797070 m!3169817))

(declare-fun m!3170033 () Bool)

(assert (=> d!797070 m!3170033))

(assert (=> d!797070 m!3169817))

(declare-fun m!3170035 () Bool)

(assert (=> d!797070 m!3170035))

(assert (=> d!797070 m!3169821))

(assert (=> d!797070 m!3169817))

(assert (=> d!797070 m!3169817))

(declare-fun m!3170037 () Bool)

(assert (=> d!797070 m!3170037))

(assert (=> d!797070 m!3169833))

(assert (=> d!797070 m!3169813))

(assert (=> d!797070 m!3169815))

(declare-fun m!3170039 () Bool)

(assert (=> d!797070 m!3170039))

(assert (=> b!2754392 m!3169817))

(assert (=> bm!178403 m!3169811))

(declare-fun m!3170041 () Bool)

(assert (=> bm!178400 m!3170041))

(declare-fun m!3170043 () Bool)

(assert (=> bm!178402 m!3170043))

(declare-fun m!3170045 () Bool)

(assert (=> b!2754393 m!3170045))

(declare-fun m!3170047 () Bool)

(assert (=> b!2754393 m!3170047))

(declare-fun m!3170049 () Bool)

(assert (=> b!2754393 m!3170049))

(declare-fun m!3170051 () Bool)

(assert (=> b!2754393 m!3170051))

(assert (=> b!2754393 m!3169775))

(assert (=> b!2754393 m!3169801))

(declare-fun m!3170053 () Bool)

(assert (=> b!2754393 m!3170053))

(declare-fun m!3170055 () Bool)

(assert (=> b!2754393 m!3170055))

(declare-fun m!3170057 () Bool)

(assert (=> b!2754393 m!3170057))

(declare-fun m!3170059 () Bool)

(assert (=> b!2754393 m!3170059))

(declare-fun m!3170061 () Bool)

(assert (=> b!2754393 m!3170061))

(declare-fun m!3170063 () Bool)

(assert (=> b!2754393 m!3170063))

(assert (=> b!2754393 m!3169817))

(assert (=> b!2754393 m!3170057))

(declare-fun m!3170065 () Bool)

(assert (=> b!2754393 m!3170065))

(declare-fun m!3170067 () Bool)

(assert (=> b!2754393 m!3170067))

(declare-fun m!3170069 () Bool)

(assert (=> b!2754393 m!3170069))

(assert (=> b!2754393 m!3169803))

(assert (=> b!2754393 m!3169785))

(assert (=> b!2754393 m!3170061))

(declare-fun m!3170071 () Bool)

(assert (=> b!2754393 m!3170071))

(assert (=> b!2754393 m!3170065))

(declare-fun m!3170073 () Bool)

(assert (=> b!2754393 m!3170073))

(assert (=> b!2754393 m!3169835))

(assert (=> b!2754393 m!3170045))

(declare-fun m!3170075 () Bool)

(assert (=> b!2754393 m!3170075))

(assert (=> bm!178404 m!3169801))

(assert (=> b!2754397 m!3169817))

(declare-fun m!3170077 () Bool)

(assert (=> bm!178399 m!3170077))

(declare-fun m!3170079 () Bool)

(assert (=> bm!178405 m!3170079))

(declare-fun m!3170081 () Bool)

(assert (=> bm!178398 m!3170081))

(declare-fun m!3170083 () Bool)

(assert (=> bm!178397 m!3170083))

(assert (=> b!2754302 d!797070))

(declare-fun d!797072 () Bool)

(declare-fun validCacheMapDown!385 (MutableMap!3633) Bool)

(assert (=> d!797072 (= (valid!2893 cacheDown!939) (validCacheMapDown!385 (cache!3776 cacheDown!939)))))

(declare-fun bs!490560 () Bool)

(assert (= bs!490560 d!797072))

(declare-fun m!3170085 () Bool)

(assert (=> bs!490560 m!3170085))

(assert (=> b!2754257 d!797072))

(assert (=> b!2754286 d!797070))

(declare-fun d!797074 () Bool)

(declare-fun lambda!100995 () Int)

(declare-fun exists!955 ((InoxSet Context!4554) Int) Bool)

(assert (=> d!797074 (= (nullableZipper!613 z!3597) (exists!955 z!3597 lambda!100995))))

(declare-fun bs!490561 () Bool)

(assert (= bs!490561 d!797074))

(declare-fun m!3170087 () Bool)

(assert (=> bs!490561 m!3170087))

(assert (=> bm!178341 d!797074))

(declare-fun d!797076 () Bool)

(assert (=> d!797076 (= (valid!2893 (ite c!445774 (_3!2804 lt!976192) (_3!2804 lt!976163))) (validCacheMapDown!385 (cache!3776 (ite c!445774 (_3!2804 lt!976192) (_3!2804 lt!976163)))))))

(declare-fun bs!490562 () Bool)

(assert (= bs!490562 d!797076))

(declare-fun m!3170089 () Bool)

(assert (=> bs!490562 m!3170089))

(assert (=> bm!178327 d!797076))

(declare-fun d!797078 () Bool)

(declare-fun e!1736705 () Bool)

(assert (=> d!797078 e!1736705))

(declare-fun res!1154339 () Bool)

(assert (=> d!797078 (=> (not res!1154339) (not e!1736705))))

(declare-fun lt!976450 () tuple3!4668)

(assert (=> d!797078 (= res!1154339 (valid!2894 (_2!18761 lt!976450)))))

(declare-fun choose!16140 (CacheUp!2338 CacheDown!2458 (InoxSet Context!4554) List!31989 Int List!31989 BalanceConc!19496 Int) tuple3!4668)

(assert (=> d!797078 (= lt!976450 (choose!16140 (_2!18761 lt!976130) (_3!2804 lt!976130) z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149))))

(assert (=> d!797078 (= (++!7894 Nil!31889 lt!976172) (list!12044 input!5495))))

(assert (=> d!797078 (= (findLongestMatchInnerZipperFastMem!14 (_2!18761 lt!976130) (_3!2804 lt!976130) z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149) lt!976450)))

(declare-fun b!2754402 () Bool)

(declare-fun res!1154340 () Bool)

(assert (=> b!2754402 (=> (not res!1154340) (not e!1736705))))

(assert (=> b!2754402 (= res!1154340 (valid!2893 (_3!2804 lt!976450)))))

(declare-fun b!2754403 () Bool)

(assert (=> b!2754403 (= e!1736705 (= (_1!18761 lt!976450) (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149)))))

(assert (= (and d!797078 res!1154339) b!2754402))

(assert (= (and b!2754402 res!1154340) b!2754403))

(declare-fun m!3170091 () Bool)

(assert (=> d!797078 m!3170091))

(declare-fun m!3170093 () Bool)

(assert (=> d!797078 m!3170093))

(assert (=> d!797078 m!3169813))

(assert (=> d!797078 m!3169817))

(declare-fun m!3170095 () Bool)

(assert (=> b!2754402 m!3170095))

(assert (=> b!2754403 m!3169829))

(assert (=> b!2754272 d!797078))

(declare-fun d!797080 () Bool)

(assert (=> d!797080 (isPrefix!2534 Nil!31889 (++!7894 Nil!31889 lt!976172))))

(declare-fun lt!976453 () Unit!45692)

(declare-fun choose!16141 (List!31989 List!31989) Unit!45692)

(assert (=> d!797080 (= lt!976453 (choose!16141 Nil!31889 lt!976172))))

(assert (=> d!797080 (= (lemmaConcatTwoListThenFirstIsPrefix!1648 Nil!31889 lt!976172) lt!976453)))

(declare-fun bs!490563 () Bool)

(assert (= bs!490563 d!797080))

(assert (=> bs!490563 m!3169813))

(assert (=> bs!490563 m!3169813))

(assert (=> bs!490563 m!3169815))

(declare-fun m!3170097 () Bool)

(assert (=> bs!490563 m!3170097))

(assert (=> b!2754272 d!797080))

(declare-fun d!797082 () Bool)

(declare-fun lt!976456 () List!31989)

(assert (=> d!797082 (= (++!7894 Nil!31889 lt!976456) lt!976172)))

(declare-fun e!1736708 () List!31989)

(assert (=> d!797082 (= lt!976456 e!1736708)))

(declare-fun c!445834 () Bool)

(assert (=> d!797082 (= c!445834 ((_ is Cons!31889) Nil!31889))))

(assert (=> d!797082 (>= (size!24655 lt!976172) (size!24655 Nil!31889))))

(assert (=> d!797082 (= (getSuffix!1220 lt!976172 Nil!31889) lt!976456)))

(declare-fun b!2754408 () Bool)

(assert (=> b!2754408 (= e!1736708 (getSuffix!1220 (tail!4368 lt!976172) (t!228093 Nil!31889)))))

(declare-fun b!2754409 () Bool)

(assert (=> b!2754409 (= e!1736708 lt!976172)))

(assert (= (and d!797082 c!445834) b!2754408))

(assert (= (and d!797082 (not c!445834)) b!2754409))

(declare-fun m!3170099 () Bool)

(assert (=> d!797082 m!3170099))

(assert (=> d!797082 m!3169781))

(assert (=> d!797082 m!3169785))

(assert (=> b!2754408 m!3169803))

(assert (=> b!2754408 m!3169803))

(declare-fun m!3170101 () Bool)

(assert (=> b!2754408 m!3170101))

(assert (=> b!2754272 d!797082))

(declare-fun d!797084 () Bool)

(declare-fun lt!976459 () Int)

(assert (=> d!797084 (= lt!976459 (size!24655 (list!12044 input!5495)))))

(declare-fun size!24657 (Conc!9941) Int)

(assert (=> d!797084 (= lt!976459 (size!24657 (c!445787 input!5495)))))

(assert (=> d!797084 (= (size!24656 input!5495) lt!976459)))

(declare-fun bs!490564 () Bool)

(assert (= bs!490564 d!797084))

(assert (=> bs!490564 m!3169817))

(assert (=> bs!490564 m!3169817))

(declare-fun m!3170103 () Bool)

(assert (=> bs!490564 m!3170103))

(declare-fun m!3170105 () Bool)

(assert (=> bs!490564 m!3170105))

(assert (=> b!2754272 d!797084))

(declare-fun d!797086 () Bool)

(declare-fun e!1736709 () Bool)

(assert (=> d!797086 e!1736709))

(declare-fun res!1154341 () Bool)

(assert (=> d!797086 (=> (not res!1154341) (not e!1736709))))

(declare-fun lt!976460 () tuple3!4668)

(assert (=> d!797086 (= res!1154341 (valid!2894 (_2!18761 lt!976460)))))

(assert (=> d!797086 (= lt!976460 (choose!16140 cacheUp!820 cacheDown!939 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149))))

(assert (=> d!797086 (= (++!7894 Nil!31889 lt!976172) (list!12044 input!5495))))

(assert (=> d!797086 (= (findLongestMatchInnerZipperFastMem!14 cacheUp!820 cacheDown!939 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149) lt!976460)))

(declare-fun b!2754410 () Bool)

(declare-fun res!1154342 () Bool)

(assert (=> b!2754410 (=> (not res!1154342) (not e!1736709))))

(assert (=> b!2754410 (= res!1154342 (valid!2893 (_3!2804 lt!976460)))))

(declare-fun b!2754411 () Bool)

(assert (=> b!2754411 (= e!1736709 (= (_1!18761 lt!976460) (findLongestMatchInnerZipperFast!17 z!3597 Nil!31889 0 lt!976172 input!5495 lt!976149)))))

(assert (= (and d!797086 res!1154341) b!2754410))

(assert (= (and b!2754410 res!1154342) b!2754411))

(declare-fun m!3170107 () Bool)

(assert (=> d!797086 m!3170107))

(declare-fun m!3170109 () Bool)

(assert (=> d!797086 m!3170109))

(assert (=> d!797086 m!3169813))

(assert (=> d!797086 m!3169817))

(declare-fun m!3170111 () Bool)

(assert (=> b!2754410 m!3170111))

(assert (=> b!2754411 m!3169829))

(assert (=> b!2754272 d!797086))

(declare-fun d!797088 () Bool)

(assert (=> d!797088 (= lt!976172 lt!976162)))

(declare-fun lt!976463 () Unit!45692)

(declare-fun choose!16142 (List!31989 List!31989 List!31989 List!31989 List!31989) Unit!45692)

(assert (=> d!797088 (= lt!976463 (choose!16142 Nil!31889 lt!976172 Nil!31889 lt!976162 lt!976172))))

(assert (=> d!797088 (isPrefix!2534 Nil!31889 lt!976172)))

(assert (=> d!797088 (= (lemmaSamePrefixThenSameSuffix!1122 Nil!31889 lt!976172 Nil!31889 lt!976162 lt!976172) lt!976463)))

(declare-fun bs!490565 () Bool)

(assert (= bs!490565 d!797088))

(declare-fun m!3170113 () Bool)

(assert (=> bs!490565 m!3170113))

(declare-fun m!3170115 () Bool)

(assert (=> bs!490565 m!3170115))

(assert (=> b!2754272 d!797088))

(declare-fun bm!178407 () Bool)

(declare-fun call!178416 () Unit!45692)

(assert (=> bm!178407 (= call!178416 (lemmaIsPrefixSameLengthThenSameList!442 lt!976172 Nil!31889 lt!976172))))

(declare-fun bm!178408 () Bool)

(declare-fun call!178412 () tuple2!31914)

(declare-fun lt!976472 () List!31989)

(declare-fun call!178417 () List!31989)

(declare-fun call!178418 () (InoxSet Context!4554))

(assert (=> bm!178408 (= call!178412 (findLongestMatchInnerZipper!6 call!178418 lt!976472 (+ 0 1) call!178417 lt!976172 lt!976149))))

(declare-fun b!2754413 () Bool)

(declare-fun e!1736711 () tuple2!31914)

(declare-fun lt!976479 () tuple2!31914)

(assert (=> b!2754413 (= e!1736711 lt!976479)))

(declare-fun b!2754414 () Bool)

(declare-fun e!1736714 () Bool)

(declare-fun lt!976469 () tuple2!31914)

(assert (=> b!2754414 (= e!1736714 (>= (size!24655 (_1!18763 lt!976469)) (size!24655 Nil!31889)))))

(declare-fun bm!178409 () Bool)

(declare-fun call!178414 () Unit!45692)

(assert (=> bm!178409 (= call!178414 (lemmaIsPrefixRefl!1660 lt!976172 lt!976172))))

(declare-fun bm!178410 () Bool)

(declare-fun call!178415 () C!16276)

(assert (=> bm!178410 (= call!178418 (derivationStepZipper!350 z!3597 call!178415))))

(declare-fun b!2754415 () Bool)

(assert (=> b!2754415 (= e!1736711 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun b!2754416 () Bool)

(declare-fun c!445837 () Bool)

(declare-fun call!178413 () Bool)

(assert (=> b!2754416 (= c!445837 call!178413)))

(declare-fun lt!976471 () Unit!45692)

(declare-fun lt!976477 () Unit!45692)

(assert (=> b!2754416 (= lt!976471 lt!976477)))

(assert (=> b!2754416 (= lt!976172 Nil!31889)))

(assert (=> b!2754416 (= lt!976477 call!178416)))

(declare-fun lt!976485 () Unit!45692)

(declare-fun lt!976476 () Unit!45692)

(assert (=> b!2754416 (= lt!976485 lt!976476)))

(declare-fun call!178419 () Bool)

(assert (=> b!2754416 call!178419))

(assert (=> b!2754416 (= lt!976476 call!178414)))

(declare-fun e!1736710 () tuple2!31914)

(declare-fun e!1736716 () tuple2!31914)

(assert (=> b!2754416 (= e!1736710 e!1736716)))

(declare-fun b!2754417 () Bool)

(declare-fun e!1736712 () tuple2!31914)

(assert (=> b!2754417 (= e!1736712 call!178412)))

(declare-fun b!2754418 () Bool)

(declare-fun e!1736717 () tuple2!31914)

(assert (=> b!2754418 (= e!1736717 e!1736710)))

(declare-fun c!445839 () Bool)

(assert (=> b!2754418 (= c!445839 (= 0 lt!976149))))

(declare-fun bm!178411 () Bool)

(assert (=> bm!178411 (= call!178415 (head!6130 lt!976172))))

(declare-fun b!2754419 () Bool)

(assert (=> b!2754419 (= e!1736717 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun b!2754412 () Bool)

(declare-fun e!1736713 () Unit!45692)

(declare-fun Unit!45709 () Unit!45692)

(assert (=> b!2754412 (= e!1736713 Unit!45709)))

(declare-fun d!797090 () Bool)

(declare-fun e!1736715 () Bool)

(assert (=> d!797090 e!1736715))

(declare-fun res!1154344 () Bool)

(assert (=> d!797090 (=> (not res!1154344) (not e!1736715))))

(assert (=> d!797090 (= res!1154344 (= (++!7894 (_1!18763 lt!976469) (_2!18763 lt!976469)) lt!976172))))

(assert (=> d!797090 (= lt!976469 e!1736717)))

(declare-fun c!445838 () Bool)

(assert (=> d!797090 (= c!445838 (lostCauseZipper!424 z!3597))))

(declare-fun lt!976480 () Unit!45692)

(declare-fun Unit!45710 () Unit!45692)

(assert (=> d!797090 (= lt!976480 Unit!45710)))

(assert (=> d!797090 (= (getSuffix!1220 lt!976172 Nil!31889) lt!976172)))

(declare-fun lt!976468 () Unit!45692)

(declare-fun lt!976475 () Unit!45692)

(assert (=> d!797090 (= lt!976468 lt!976475)))

(declare-fun lt!976482 () List!31989)

(assert (=> d!797090 (= lt!976172 lt!976482)))

(assert (=> d!797090 (= lt!976475 (lemmaSamePrefixThenSameSuffix!1122 Nil!31889 lt!976172 Nil!31889 lt!976482 lt!976172))))

(assert (=> d!797090 (= lt!976482 (getSuffix!1220 lt!976172 Nil!31889))))

(declare-fun lt!976473 () Unit!45692)

(declare-fun lt!976478 () Unit!45692)

(assert (=> d!797090 (= lt!976473 lt!976478)))

(assert (=> d!797090 (isPrefix!2534 Nil!31889 (++!7894 Nil!31889 lt!976172))))

(assert (=> d!797090 (= lt!976478 (lemmaConcatTwoListThenFirstIsPrefix!1648 Nil!31889 lt!976172))))

(assert (=> d!797090 (= (++!7894 Nil!31889 lt!976172) lt!976172)))

(assert (=> d!797090 (= (findLongestMatchInnerZipper!6 z!3597 Nil!31889 0 lt!976172 lt!976172 lt!976149) lt!976469)))

(declare-fun b!2754420 () Bool)

(assert (=> b!2754420 (= e!1736712 e!1736711)))

(assert (=> b!2754420 (= lt!976479 call!178412)))

(declare-fun c!445840 () Bool)

(assert (=> b!2754420 (= c!445840 (isEmpty!18068 (_1!18763 lt!976479)))))

(declare-fun bm!178412 () Bool)

(assert (=> bm!178412 (= call!178413 (nullableZipper!613 z!3597))))

(declare-fun b!2754421 () Bool)

(declare-fun Unit!45711 () Unit!45692)

(assert (=> b!2754421 (= e!1736713 Unit!45711)))

(declare-fun lt!976487 () Unit!45692)

(assert (=> b!2754421 (= lt!976487 call!178414)))

(assert (=> b!2754421 call!178419))

(declare-fun lt!976481 () Unit!45692)

(assert (=> b!2754421 (= lt!976481 lt!976487)))

(declare-fun lt!976484 () Unit!45692)

(assert (=> b!2754421 (= lt!976484 call!178416)))

(assert (=> b!2754421 (= lt!976172 Nil!31889)))

(declare-fun lt!976489 () Unit!45692)

(assert (=> b!2754421 (= lt!976489 lt!976484)))

(assert (=> b!2754421 false))

(declare-fun b!2754422 () Bool)

(assert (=> b!2754422 (= e!1736716 (tuple2!31915 Nil!31889 Nil!31889))))

(declare-fun b!2754423 () Bool)

(assert (=> b!2754423 (= e!1736716 (tuple2!31915 Nil!31889 lt!976172))))

(declare-fun bm!178413 () Bool)

(assert (=> bm!178413 (= call!178419 (isPrefix!2534 lt!976172 lt!976172))))

(declare-fun b!2754424 () Bool)

(declare-fun c!445836 () Bool)

(assert (=> b!2754424 (= c!445836 call!178413)))

(declare-fun lt!976474 () Unit!45692)

(declare-fun lt!976483 () Unit!45692)

(assert (=> b!2754424 (= lt!976474 lt!976483)))

(declare-fun lt!976486 () C!16276)

(declare-fun lt!976470 () List!31989)

(assert (=> b!2754424 (= (++!7894 (++!7894 Nil!31889 (Cons!31889 lt!976486 Nil!31889)) lt!976470) lt!976172)))

(assert (=> b!2754424 (= lt!976483 (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976486 lt!976470 lt!976172))))

(assert (=> b!2754424 (= lt!976470 (tail!4368 lt!976172))))

(assert (=> b!2754424 (= lt!976486 (head!6130 lt!976172))))

(declare-fun lt!976467 () Unit!45692)

(declare-fun lt!976464 () Unit!45692)

(assert (=> b!2754424 (= lt!976467 lt!976464)))

(assert (=> b!2754424 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 (getSuffix!1220 lt!976172 Nil!31889)) Nil!31889)) lt!976172)))

(assert (=> b!2754424 (= lt!976464 (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976172))))

(assert (=> b!2754424 (= lt!976472 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976172) Nil!31889)))))

(declare-fun lt!976488 () Unit!45692)

(assert (=> b!2754424 (= lt!976488 e!1736713)))

(declare-fun c!445835 () Bool)

(assert (=> b!2754424 (= c!445835 (= (size!24655 Nil!31889) (size!24655 lt!976172)))))

(declare-fun lt!976465 () Unit!45692)

(declare-fun lt!976466 () Unit!45692)

(assert (=> b!2754424 (= lt!976465 lt!976466)))

(assert (=> b!2754424 (<= (size!24655 Nil!31889) (size!24655 lt!976172))))

(assert (=> b!2754424 (= lt!976466 (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976172))))

(assert (=> b!2754424 (= e!1736710 e!1736712)))

(declare-fun b!2754425 () Bool)

(assert (=> b!2754425 (= e!1736715 e!1736714)))

(declare-fun res!1154343 () Bool)

(assert (=> b!2754425 (=> res!1154343 e!1736714)))

(assert (=> b!2754425 (= res!1154343 (isEmpty!18068 (_1!18763 lt!976469)))))

(declare-fun bm!178414 () Bool)

(assert (=> bm!178414 (= call!178417 (tail!4368 lt!976172))))

(assert (= (and d!797090 c!445838) b!2754419))

(assert (= (and d!797090 (not c!445838)) b!2754418))

(assert (= (and b!2754418 c!445839) b!2754416))

(assert (= (and b!2754418 (not c!445839)) b!2754424))

(assert (= (and b!2754416 c!445837) b!2754422))

(assert (= (and b!2754416 (not c!445837)) b!2754423))

(assert (= (and b!2754424 c!445835) b!2754421))

(assert (= (and b!2754424 (not c!445835)) b!2754412))

(assert (= (and b!2754424 c!445836) b!2754420))

(assert (= (and b!2754424 (not c!445836)) b!2754417))

(assert (= (and b!2754420 c!445840) b!2754415))

(assert (= (and b!2754420 (not c!445840)) b!2754413))

(assert (= (or b!2754420 b!2754417) bm!178414))

(assert (= (or b!2754420 b!2754417) bm!178411))

(assert (= (or b!2754420 b!2754417) bm!178410))

(assert (= (or b!2754420 b!2754417) bm!178408))

(assert (= (or b!2754416 b!2754424) bm!178412))

(assert (= (or b!2754416 b!2754421) bm!178409))

(assert (= (or b!2754416 b!2754421) bm!178407))

(assert (= (or b!2754416 b!2754421) bm!178413))

(assert (= (and d!797090 res!1154344) b!2754425))

(assert (= (and b!2754425 (not res!1154343)) b!2754414))

(assert (=> bm!178414 m!3169803))

(assert (=> bm!178413 m!3169843))

(declare-fun m!3170117 () Bool)

(assert (=> bm!178410 m!3170117))

(assert (=> bm!178412 m!3169811))

(declare-fun m!3170119 () Bool)

(assert (=> b!2754414 m!3170119))

(assert (=> b!2754414 m!3169785))

(declare-fun m!3170121 () Bool)

(assert (=> bm!178408 m!3170121))

(assert (=> d!797090 m!3169813))

(assert (=> d!797090 m!3169815))

(assert (=> d!797090 m!3169813))

(assert (=> d!797090 m!3169821))

(declare-fun m!3170123 () Bool)

(assert (=> d!797090 m!3170123))

(assert (=> d!797090 m!3169833))

(assert (=> d!797090 m!3169819))

(declare-fun m!3170125 () Bool)

(assert (=> d!797090 m!3170125))

(declare-fun m!3170127 () Bool)

(assert (=> b!2754420 m!3170127))

(declare-fun m!3170129 () Bool)

(assert (=> b!2754425 m!3170129))

(assert (=> bm!178409 m!3169849))

(assert (=> bm!178411 m!3169899))

(assert (=> bm!178407 m!3169765))

(assert (=> b!2754424 m!3169819))

(declare-fun m!3170131 () Bool)

(assert (=> b!2754424 m!3170131))

(declare-fun m!3170133 () Bool)

(assert (=> b!2754424 m!3170133))

(declare-fun m!3170135 () Bool)

(assert (=> b!2754424 m!3170135))

(assert (=> b!2754424 m!3169785))

(declare-fun m!3170137 () Bool)

(assert (=> b!2754424 m!3170137))

(declare-fun m!3170139 () Bool)

(assert (=> b!2754424 m!3170139))

(assert (=> b!2754424 m!3169803))

(assert (=> b!2754424 m!3169899))

(declare-fun m!3170141 () Bool)

(assert (=> b!2754424 m!3170141))

(assert (=> b!2754424 m!3169781))

(assert (=> b!2754424 m!3169819))

(assert (=> b!2754424 m!3170137))

(assert (=> b!2754424 m!3170133))

(declare-fun m!3170143 () Bool)

(assert (=> b!2754424 m!3170143))

(assert (=> b!2754424 m!3169807))

(assert (=> b!2754424 m!3169791))

(assert (=> b!2754272 d!797090))

(declare-fun bs!490566 () Bool)

(declare-fun d!797092 () Bool)

(assert (= bs!490566 (and d!797092 d!797074)))

(declare-fun lambda!101008 () Int)

(assert (=> bs!490566 (not (= lambda!101008 lambda!100995))))

(declare-fun bs!490567 () Bool)

(declare-fun b!2754430 () Bool)

(assert (= bs!490567 (and b!2754430 d!797074)))

(declare-fun lambda!101009 () Int)

(assert (=> bs!490567 (not (= lambda!101009 lambda!100995))))

(declare-fun bs!490568 () Bool)

(assert (= bs!490568 (and b!2754430 d!797092)))

(assert (=> bs!490568 (not (= lambda!101009 lambda!101008))))

(declare-fun bs!490569 () Bool)

(declare-fun b!2754431 () Bool)

(assert (= bs!490569 (and b!2754431 d!797074)))

(declare-fun lambda!101010 () Int)

(assert (=> bs!490569 (not (= lambda!101010 lambda!100995))))

(declare-fun bs!490570 () Bool)

(assert (= bs!490570 (and b!2754431 d!797092)))

(assert (=> bs!490570 (not (= lambda!101010 lambda!101008))))

(declare-fun bs!490571 () Bool)

(assert (= bs!490571 (and b!2754431 b!2754430)))

(assert (=> bs!490571 (= lambda!101010 lambda!101009)))

(declare-fun lt!976508 () Bool)

(declare-datatypes ((Option!6253 0))(
  ( (None!6252) (Some!6252 (v!33500 List!31989)) )
))
(declare-fun isEmpty!18069 (Option!6253) Bool)

(declare-fun getLanguageWitness!174 ((InoxSet Context!4554)) Option!6253)

(assert (=> d!797092 (= lt!976508 (isEmpty!18069 (getLanguageWitness!174 z!3597)))))

(declare-fun forall!6594 ((InoxSet Context!4554) Int) Bool)

(assert (=> d!797092 (= lt!976508 (forall!6594 z!3597 lambda!101008))))

(declare-fun lt!976510 () Unit!45692)

(declare-fun e!1736724 () Unit!45692)

(assert (=> d!797092 (= lt!976510 e!1736724)))

(declare-fun c!445851 () Bool)

(assert (=> d!797092 (= c!445851 (not (forall!6594 z!3597 lambda!101008)))))

(assert (=> d!797092 (= (lostCauseZipper!424 z!3597) lt!976508)))

(declare-datatypes ((List!31990 0))(
  ( (Nil!31890) (Cons!31890 (h!37310 Context!4554) (t!228095 List!31990)) )
))
(declare-fun lt!976507 () List!31990)

(declare-fun bm!178419 () Bool)

(declare-fun call!178425 () Bool)

(declare-fun lt!976506 () List!31990)

(declare-fun exists!956 (List!31990 Int) Bool)

(assert (=> bm!178419 (= call!178425 (exists!956 (ite c!445851 lt!976507 lt!976506) (ite c!445851 lambda!101009 lambda!101010)))))

(declare-fun Unit!45712 () Unit!45692)

(assert (=> b!2754430 (= e!1736724 Unit!45712)))

(declare-fun call!178424 () List!31990)

(assert (=> b!2754430 (= lt!976507 call!178424)))

(declare-fun lt!976513 () Unit!45692)

(declare-fun lemmaNotForallThenExists!75 (List!31990 Int) Unit!45692)

(assert (=> b!2754430 (= lt!976513 (lemmaNotForallThenExists!75 lt!976507 lambda!101008))))

(assert (=> b!2754430 call!178425))

(declare-fun lt!976511 () Unit!45692)

(assert (=> b!2754430 (= lt!976511 lt!976513)))

(declare-fun bm!178420 () Bool)

(declare-fun toList!1820 ((InoxSet Context!4554)) List!31990)

(assert (=> bm!178420 (= call!178424 (toList!1820 z!3597))))

(declare-fun Unit!45713 () Unit!45692)

(assert (=> b!2754431 (= e!1736724 Unit!45713)))

(assert (=> b!2754431 (= lt!976506 call!178424)))

(declare-fun lt!976512 () Unit!45692)

(declare-fun lemmaForallThenNotExists!75 (List!31990 Int) Unit!45692)

(assert (=> b!2754431 (= lt!976512 (lemmaForallThenNotExists!75 lt!976506 lambda!101008))))

(assert (=> b!2754431 (not call!178425)))

(declare-fun lt!976509 () Unit!45692)

(assert (=> b!2754431 (= lt!976509 lt!976512)))

(assert (= (and d!797092 c!445851) b!2754430))

(assert (= (and d!797092 (not c!445851)) b!2754431))

(assert (= (or b!2754430 b!2754431) bm!178419))

(assert (= (or b!2754430 b!2754431) bm!178420))

(declare-fun m!3170145 () Bool)

(assert (=> d!797092 m!3170145))

(assert (=> d!797092 m!3170145))

(declare-fun m!3170147 () Bool)

(assert (=> d!797092 m!3170147))

(declare-fun m!3170149 () Bool)

(assert (=> d!797092 m!3170149))

(assert (=> d!797092 m!3170149))

(declare-fun m!3170151 () Bool)

(assert (=> b!2754431 m!3170151))

(declare-fun m!3170153 () Bool)

(assert (=> bm!178419 m!3170153))

(declare-fun m!3170155 () Bool)

(assert (=> b!2754430 m!3170155))

(declare-fun m!3170157 () Bool)

(assert (=> bm!178420 m!3170157))

(assert (=> b!2754272 d!797092))

(declare-fun d!797094 () Bool)

(declare-fun list!12045 (Conc!9941) List!31989)

(assert (=> d!797094 (= (list!12044 input!5495) (list!12045 (c!445787 input!5495)))))

(declare-fun bs!490572 () Bool)

(assert (= bs!490572 d!797094))

(declare-fun m!3170159 () Bool)

(assert (=> bs!490572 m!3170159))

(assert (=> b!2754272 d!797094))

(declare-fun b!2754440 () Bool)

(declare-fun e!1736729 () List!31989)

(assert (=> b!2754440 (= e!1736729 lt!976172)))

(declare-fun b!2754441 () Bool)

(assert (=> b!2754441 (= e!1736729 (Cons!31889 (h!37309 Nil!31889) (++!7894 (t!228093 Nil!31889) lt!976172)))))

(declare-fun b!2754443 () Bool)

(declare-fun e!1736730 () Bool)

(declare-fun lt!976516 () List!31989)

(assert (=> b!2754443 (= e!1736730 (or (not (= lt!976172 Nil!31889)) (= lt!976516 Nil!31889)))))

(declare-fun d!797096 () Bool)

(assert (=> d!797096 e!1736730))

(declare-fun res!1154349 () Bool)

(assert (=> d!797096 (=> (not res!1154349) (not e!1736730))))

(declare-fun content!4490 (List!31989) (InoxSet C!16276))

(assert (=> d!797096 (= res!1154349 (= (content!4490 lt!976516) ((_ map or) (content!4490 Nil!31889) (content!4490 lt!976172))))))

(assert (=> d!797096 (= lt!976516 e!1736729)))

(declare-fun c!445854 () Bool)

(assert (=> d!797096 (= c!445854 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797096 (= (++!7894 Nil!31889 lt!976172) lt!976516)))

(declare-fun b!2754442 () Bool)

(declare-fun res!1154350 () Bool)

(assert (=> b!2754442 (=> (not res!1154350) (not e!1736730))))

(assert (=> b!2754442 (= res!1154350 (= (size!24655 lt!976516) (+ (size!24655 Nil!31889) (size!24655 lt!976172))))))

(assert (= (and d!797096 c!445854) b!2754440))

(assert (= (and d!797096 (not c!445854)) b!2754441))

(assert (= (and d!797096 res!1154349) b!2754442))

(assert (= (and b!2754442 res!1154350) b!2754443))

(declare-fun m!3170161 () Bool)

(assert (=> b!2754441 m!3170161))

(declare-fun m!3170163 () Bool)

(assert (=> d!797096 m!3170163))

(declare-fun m!3170165 () Bool)

(assert (=> d!797096 m!3170165))

(declare-fun m!3170167 () Bool)

(assert (=> d!797096 m!3170167))

(declare-fun m!3170169 () Bool)

(assert (=> b!2754442 m!3170169))

(assert (=> b!2754442 m!3169785))

(assert (=> b!2754442 m!3169781))

(assert (=> b!2754272 d!797096))

(declare-fun d!797098 () Bool)

(declare-fun validCacheMapUp!354 (MutableMap!3632) Bool)

(assert (=> d!797098 (= (valid!2894 (_2!18761 lt!976129)) (validCacheMapUp!354 (cache!3775 (_2!18761 lt!976129))))))

(declare-fun bs!490573 () Bool)

(assert (= bs!490573 d!797098))

(declare-fun m!3170171 () Bool)

(assert (=> bs!490573 m!3170171))

(assert (=> b!2754272 d!797098))

(declare-fun d!797100 () Bool)

(assert (=> d!797100 (= (valid!2894 (_2!18761 lt!976130)) (validCacheMapUp!354 (cache!3775 (_2!18761 lt!976130))))))

(declare-fun bs!490574 () Bool)

(assert (= bs!490574 d!797100))

(declare-fun m!3170173 () Bool)

(assert (=> bs!490574 m!3170173))

(assert (=> b!2754272 d!797100))

(declare-fun b!2754452 () Bool)

(declare-fun e!1736737 () Bool)

(declare-fun e!1736739 () Bool)

(assert (=> b!2754452 (= e!1736737 e!1736739)))

(declare-fun res!1154361 () Bool)

(assert (=> b!2754452 (=> (not res!1154361) (not e!1736739))))

(assert (=> b!2754452 (= res!1154361 (not ((_ is Nil!31889) (++!7894 Nil!31889 lt!976172))))))

(declare-fun d!797102 () Bool)

(declare-fun e!1736738 () Bool)

(assert (=> d!797102 e!1736738))

(declare-fun res!1154362 () Bool)

(assert (=> d!797102 (=> res!1154362 e!1736738)))

(declare-fun lt!976519 () Bool)

(assert (=> d!797102 (= res!1154362 (not lt!976519))))

(assert (=> d!797102 (= lt!976519 e!1736737)))

(declare-fun res!1154359 () Bool)

(assert (=> d!797102 (=> res!1154359 e!1736737)))

(assert (=> d!797102 (= res!1154359 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797102 (= (isPrefix!2534 Nil!31889 (++!7894 Nil!31889 lt!976172)) lt!976519)))

(declare-fun b!2754453 () Bool)

(declare-fun res!1154360 () Bool)

(assert (=> b!2754453 (=> (not res!1154360) (not e!1736739))))

(assert (=> b!2754453 (= res!1154360 (= (head!6130 Nil!31889) (head!6130 (++!7894 Nil!31889 lt!976172))))))

(declare-fun b!2754455 () Bool)

(assert (=> b!2754455 (= e!1736738 (>= (size!24655 (++!7894 Nil!31889 lt!976172)) (size!24655 Nil!31889)))))

(declare-fun b!2754454 () Bool)

(assert (=> b!2754454 (= e!1736739 (isPrefix!2534 (tail!4368 Nil!31889) (tail!4368 (++!7894 Nil!31889 lt!976172))))))

(assert (= (and d!797102 (not res!1154359)) b!2754452))

(assert (= (and b!2754452 res!1154361) b!2754453))

(assert (= (and b!2754453 res!1154360) b!2754454))

(assert (= (and d!797102 (not res!1154362)) b!2754455))

(declare-fun m!3170175 () Bool)

(assert (=> b!2754453 m!3170175))

(assert (=> b!2754453 m!3169813))

(declare-fun m!3170177 () Bool)

(assert (=> b!2754453 m!3170177))

(assert (=> b!2754455 m!3169813))

(declare-fun m!3170179 () Bool)

(assert (=> b!2754455 m!3170179))

(assert (=> b!2754455 m!3169785))

(declare-fun m!3170181 () Bool)

(assert (=> b!2754454 m!3170181))

(assert (=> b!2754454 m!3169813))

(declare-fun m!3170183 () Bool)

(assert (=> b!2754454 m!3170183))

(assert (=> b!2754454 m!3170181))

(assert (=> b!2754454 m!3170183))

(declare-fun m!3170185 () Bool)

(assert (=> b!2754454 m!3170185))

(assert (=> b!2754272 d!797102))

(declare-fun b!2754468 () Bool)

(declare-fun res!1154377 () Bool)

(declare-fun e!1736744 () Bool)

(assert (=> b!2754468 (=> (not res!1154377) (not e!1736744))))

(declare-fun isEmpty!18070 (Conc!9941) Bool)

(assert (=> b!2754468 (= res!1154377 (not (isEmpty!18070 (left!24338 (c!445787 input!5495)))))))

(declare-fun b!2754469 () Bool)

(declare-fun res!1154380 () Bool)

(assert (=> b!2754469 (=> (not res!1154380) (not e!1736744))))

(declare-fun height!1483 (Conc!9941) Int)

(assert (=> b!2754469 (= res!1154380 (<= (- (height!1483 (left!24338 (c!445787 input!5495))) (height!1483 (right!24668 (c!445787 input!5495)))) 1))))

(declare-fun b!2754471 () Bool)

(declare-fun res!1154375 () Bool)

(assert (=> b!2754471 (=> (not res!1154375) (not e!1736744))))

(assert (=> b!2754471 (= res!1154375 (isBalanced!3027 (left!24338 (c!445787 input!5495))))))

(declare-fun b!2754472 () Bool)

(assert (=> b!2754472 (= e!1736744 (not (isEmpty!18070 (right!24668 (c!445787 input!5495)))))))

(declare-fun b!2754473 () Bool)

(declare-fun res!1154378 () Bool)

(assert (=> b!2754473 (=> (not res!1154378) (not e!1736744))))

(assert (=> b!2754473 (= res!1154378 (isBalanced!3027 (right!24668 (c!445787 input!5495))))))

(declare-fun b!2754470 () Bool)

(declare-fun e!1736745 () Bool)

(assert (=> b!2754470 (= e!1736745 e!1736744)))

(declare-fun res!1154376 () Bool)

(assert (=> b!2754470 (=> (not res!1154376) (not e!1736744))))

(assert (=> b!2754470 (= res!1154376 (<= (- 1) (- (height!1483 (left!24338 (c!445787 input!5495))) (height!1483 (right!24668 (c!445787 input!5495))))))))

(declare-fun d!797104 () Bool)

(declare-fun res!1154379 () Bool)

(assert (=> d!797104 (=> res!1154379 e!1736745)))

(assert (=> d!797104 (= res!1154379 (not ((_ is Node!9941) (c!445787 input!5495))))))

(assert (=> d!797104 (= (isBalanced!3027 (c!445787 input!5495)) e!1736745)))

(assert (= (and d!797104 (not res!1154379)) b!2754470))

(assert (= (and b!2754470 res!1154376) b!2754469))

(assert (= (and b!2754469 res!1154380) b!2754471))

(assert (= (and b!2754471 res!1154375) b!2754473))

(assert (= (and b!2754473 res!1154378) b!2754468))

(assert (= (and b!2754468 res!1154377) b!2754472))

(declare-fun m!3170187 () Bool)

(assert (=> b!2754468 m!3170187))

(declare-fun m!3170189 () Bool)

(assert (=> b!2754469 m!3170189))

(declare-fun m!3170191 () Bool)

(assert (=> b!2754469 m!3170191))

(declare-fun m!3170193 () Bool)

(assert (=> b!2754473 m!3170193))

(declare-fun m!3170195 () Bool)

(assert (=> b!2754472 m!3170195))

(assert (=> b!2754470 m!3170189))

(assert (=> b!2754470 m!3170191))

(declare-fun m!3170197 () Bool)

(assert (=> b!2754471 m!3170197))

(assert (=> b!2754272 d!797104))

(assert (=> b!2754272 d!797070))

(declare-fun d!797106 () Bool)

(assert (=> d!797106 (= (list!12044 (_2!18764 lt!976145)) (list!12045 (c!445787 (_2!18764 lt!976145))))))

(declare-fun bs!490575 () Bool)

(assert (= bs!490575 d!797106))

(declare-fun m!3170199 () Bool)

(assert (=> bs!490575 m!3170199))

(assert (=> b!2754297 d!797106))

(declare-fun b!2754474 () Bool)

(declare-fun e!1736746 () List!31989)

(assert (=> b!2754474 (= e!1736746 lt!976151)))

(declare-fun b!2754475 () Bool)

(assert (=> b!2754475 (= e!1736746 (Cons!31889 (h!37309 lt!976170) (++!7894 (t!228093 lt!976170) lt!976151)))))

(declare-fun lt!976520 () List!31989)

(declare-fun b!2754477 () Bool)

(declare-fun e!1736747 () Bool)

(assert (=> b!2754477 (= e!1736747 (or (not (= lt!976151 Nil!31889)) (= lt!976520 lt!976170)))))

(declare-fun d!797108 () Bool)

(assert (=> d!797108 e!1736747))

(declare-fun res!1154381 () Bool)

(assert (=> d!797108 (=> (not res!1154381) (not e!1736747))))

(assert (=> d!797108 (= res!1154381 (= (content!4490 lt!976520) ((_ map or) (content!4490 lt!976170) (content!4490 lt!976151))))))

(assert (=> d!797108 (= lt!976520 e!1736746)))

(declare-fun c!445855 () Bool)

(assert (=> d!797108 (= c!445855 ((_ is Nil!31889) lt!976170))))

(assert (=> d!797108 (= (++!7894 lt!976170 lt!976151) lt!976520)))

(declare-fun b!2754476 () Bool)

(declare-fun res!1154382 () Bool)

(assert (=> b!2754476 (=> (not res!1154382) (not e!1736747))))

(assert (=> b!2754476 (= res!1154382 (= (size!24655 lt!976520) (+ (size!24655 lt!976170) (size!24655 lt!976151))))))

(assert (= (and d!797108 c!445855) b!2754474))

(assert (= (and d!797108 (not c!445855)) b!2754475))

(assert (= (and d!797108 res!1154381) b!2754476))

(assert (= (and b!2754476 res!1154382) b!2754477))

(declare-fun m!3170201 () Bool)

(assert (=> b!2754475 m!3170201))

(declare-fun m!3170203 () Bool)

(assert (=> d!797108 m!3170203))

(declare-fun m!3170205 () Bool)

(assert (=> d!797108 m!3170205))

(declare-fun m!3170207 () Bool)

(assert (=> d!797108 m!3170207))

(declare-fun m!3170209 () Bool)

(assert (=> b!2754476 m!3170209))

(declare-fun m!3170211 () Bool)

(assert (=> b!2754476 m!3170211))

(declare-fun m!3170213 () Bool)

(assert (=> b!2754476 m!3170213))

(assert (=> b!2754297 d!797108))

(declare-fun d!797110 () Bool)

(assert (=> d!797110 (= (head!6130 (drop!1689 lt!976172 0)) (apply!7459 lt!976172 0))))

(declare-fun lt!976523 () Unit!45692)

(declare-fun choose!16143 (List!31989 Int) Unit!45692)

(assert (=> d!797110 (= lt!976523 (choose!16143 lt!976172 0))))

(declare-fun e!1736750 () Bool)

(assert (=> d!797110 e!1736750))

(declare-fun res!1154385 () Bool)

(assert (=> d!797110 (=> (not res!1154385) (not e!1736750))))

(assert (=> d!797110 (= res!1154385 (>= 0 0))))

(assert (=> d!797110 (= (lemmaDropApply!895 lt!976172 0) lt!976523)))

(declare-fun b!2754480 () Bool)

(assert (=> b!2754480 (= e!1736750 (< 0 (size!24655 lt!976172)))))

(assert (= (and d!797110 res!1154385) b!2754480))

(assert (=> d!797110 m!3169777))

(assert (=> d!797110 m!3169777))

(assert (=> d!797110 m!3169779))

(assert (=> d!797110 m!3169797))

(declare-fun m!3170215 () Bool)

(assert (=> d!797110 m!3170215))

(assert (=> b!2754480 m!3169781))

(assert (=> b!2754297 d!797110))

(declare-fun d!797112 () Bool)

(assert (=> d!797112 (= (list!12044 (_1!18764 lt!976145)) (list!12045 (c!445787 (_1!18764 lt!976145))))))

(declare-fun bs!490576 () Bool)

(assert (= bs!490576 d!797112))

(declare-fun m!3170217 () Bool)

(assert (=> bs!490576 m!3170217))

(assert (=> b!2754297 d!797112))

(declare-fun b!2754481 () Bool)

(declare-fun e!1736751 () Bool)

(declare-fun e!1736753 () Bool)

(assert (=> b!2754481 (= e!1736751 e!1736753)))

(declare-fun res!1154388 () Bool)

(assert (=> b!2754481 (=> (not res!1154388) (not e!1736753))))

(assert (=> b!2754481 (= res!1154388 (not ((_ is Nil!31889) lt!976172)))))

(declare-fun d!797114 () Bool)

(declare-fun e!1736752 () Bool)

(assert (=> d!797114 e!1736752))

(declare-fun res!1154389 () Bool)

(assert (=> d!797114 (=> res!1154389 e!1736752)))

(declare-fun lt!976524 () Bool)

(assert (=> d!797114 (= res!1154389 (not lt!976524))))

(assert (=> d!797114 (= lt!976524 e!1736751)))

(declare-fun res!1154386 () Bool)

(assert (=> d!797114 (=> res!1154386 e!1736751)))

(assert (=> d!797114 (= res!1154386 ((_ is Nil!31889) (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889))))))

(assert (=> d!797114 (= (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)) lt!976172) lt!976524)))

(declare-fun b!2754482 () Bool)

(declare-fun res!1154387 () Bool)

(assert (=> b!2754482 (=> (not res!1154387) (not e!1736753))))

(assert (=> b!2754482 (= res!1154387 (= (head!6130 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889))) (head!6130 lt!976172)))))

(declare-fun b!2754484 () Bool)

(assert (=> b!2754484 (= e!1736752 (>= (size!24655 lt!976172) (size!24655 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)))))))

(declare-fun b!2754483 () Bool)

(assert (=> b!2754483 (= e!1736753 (isPrefix!2534 (tail!4368 (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889))) (tail!4368 lt!976172)))))

(assert (= (and d!797114 (not res!1154386)) b!2754481))

(assert (= (and b!2754481 res!1154388) b!2754482))

(assert (= (and b!2754482 res!1154387) b!2754483))

(assert (= (and d!797114 (not res!1154389)) b!2754484))

(assert (=> b!2754482 m!3169771))

(declare-fun m!3170219 () Bool)

(assert (=> b!2754482 m!3170219))

(assert (=> b!2754482 m!3169899))

(assert (=> b!2754484 m!3169781))

(assert (=> b!2754484 m!3169771))

(declare-fun m!3170221 () Bool)

(assert (=> b!2754484 m!3170221))

(assert (=> b!2754483 m!3169771))

(declare-fun m!3170223 () Bool)

(assert (=> b!2754483 m!3170223))

(assert (=> b!2754483 m!3169803))

(assert (=> b!2754483 m!3170223))

(assert (=> b!2754483 m!3169803))

(declare-fun m!3170225 () Bool)

(assert (=> b!2754483 m!3170225))

(assert (=> b!2754297 d!797114))

(declare-fun b!2754503 () Bool)

(declare-fun e!1736767 () Int)

(declare-fun e!1736765 () Int)

(assert (=> b!2754503 (= e!1736767 e!1736765)))

(declare-fun c!445864 () Bool)

(declare-fun call!178428 () Int)

(assert (=> b!2754503 (= c!445864 (>= 0 call!178428))))

(declare-fun b!2754504 () Bool)

(declare-fun e!1736766 () List!31989)

(assert (=> b!2754504 (= e!1736766 Nil!31889)))

(declare-fun b!2754506 () Bool)

(assert (=> b!2754506 (= e!1736765 (- call!178428 0))))

(declare-fun b!2754507 () Bool)

(assert (=> b!2754507 (= e!1736765 0)))

(declare-fun bm!178423 () Bool)

(assert (=> bm!178423 (= call!178428 (size!24655 lt!976172))))

(declare-fun b!2754508 () Bool)

(declare-fun e!1736764 () List!31989)

(assert (=> b!2754508 (= e!1736764 (drop!1689 (t!228093 lt!976172) (- 0 1)))))

(declare-fun b!2754509 () Bool)

(assert (=> b!2754509 (= e!1736767 call!178428)))

(declare-fun b!2754505 () Bool)

(declare-fun e!1736768 () Bool)

(declare-fun lt!976527 () List!31989)

(assert (=> b!2754505 (= e!1736768 (= (size!24655 lt!976527) e!1736767))))

(declare-fun c!445867 () Bool)

(assert (=> b!2754505 (= c!445867 (<= 0 0))))

(declare-fun d!797116 () Bool)

(assert (=> d!797116 e!1736768))

(declare-fun res!1154392 () Bool)

(assert (=> d!797116 (=> (not res!1154392) (not e!1736768))))

(assert (=> d!797116 (= res!1154392 (= ((_ map implies) (content!4490 lt!976527) (content!4490 lt!976172)) ((as const (InoxSet C!16276)) true)))))

(assert (=> d!797116 (= lt!976527 e!1736766)))

(declare-fun c!445866 () Bool)

(assert (=> d!797116 (= c!445866 ((_ is Nil!31889) lt!976172))))

(assert (=> d!797116 (= (drop!1689 lt!976172 0) lt!976527)))

(declare-fun b!2754510 () Bool)

(assert (=> b!2754510 (= e!1736766 e!1736764)))

(declare-fun c!445865 () Bool)

(assert (=> b!2754510 (= c!445865 (<= 0 0))))

(declare-fun b!2754511 () Bool)

(assert (=> b!2754511 (= e!1736764 lt!976172)))

(assert (= (and d!797116 c!445866) b!2754504))

(assert (= (and d!797116 (not c!445866)) b!2754510))

(assert (= (and b!2754510 c!445865) b!2754511))

(assert (= (and b!2754510 (not c!445865)) b!2754508))

(assert (= (and d!797116 res!1154392) b!2754505))

(assert (= (and b!2754505 c!445867) b!2754509))

(assert (= (and b!2754505 (not c!445867)) b!2754503))

(assert (= (and b!2754503 c!445864) b!2754507))

(assert (= (and b!2754503 (not c!445864)) b!2754506))

(assert (= (or b!2754509 b!2754503 b!2754506) bm!178423))

(assert (=> bm!178423 m!3169781))

(declare-fun m!3170227 () Bool)

(assert (=> b!2754508 m!3170227))

(declare-fun m!3170229 () Bool)

(assert (=> b!2754505 m!3170229))

(declare-fun m!3170231 () Bool)

(assert (=> d!797116 m!3170231))

(assert (=> d!797116 m!3170167))

(assert (=> b!2754297 d!797116))

(declare-fun d!797118 () Bool)

(assert (=> d!797118 (and (= lt!976174 Nil!31889) (= lt!976154 lt!976172))))

(declare-fun lt!976530 () Unit!45692)

(declare-fun choose!16144 (List!31989 List!31989 List!31989 List!31989) Unit!45692)

(assert (=> d!797118 (= lt!976530 (choose!16144 lt!976174 lt!976154 Nil!31889 lt!976172))))

(assert (=> d!797118 (= (++!7894 lt!976174 lt!976154) (++!7894 Nil!31889 lt!976172))))

(assert (=> d!797118 (= (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976174 lt!976154 Nil!31889 lt!976172) lt!976530)))

(declare-fun bs!490577 () Bool)

(assert (= bs!490577 d!797118))

(declare-fun m!3170233 () Bool)

(assert (=> bs!490577 m!3170233))

(declare-fun m!3170235 () Bool)

(assert (=> bs!490577 m!3170235))

(assert (=> bs!490577 m!3169813))

(assert (=> b!2754297 d!797118))

(declare-fun d!797120 () Bool)

(declare-fun lt!976533 () Int)

(assert (=> d!797120 (>= lt!976533 0)))

(declare-fun e!1736771 () Int)

(assert (=> d!797120 (= lt!976533 e!1736771)))

(declare-fun c!445870 () Bool)

(assert (=> d!797120 (= c!445870 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797120 (= (size!24655 Nil!31889) lt!976533)))

(declare-fun b!2754516 () Bool)

(assert (=> b!2754516 (= e!1736771 0)))

(declare-fun b!2754517 () Bool)

(assert (=> b!2754517 (= e!1736771 (+ 1 (size!24655 (t!228093 Nil!31889))))))

(assert (= (and d!797120 c!445870) b!2754516))

(assert (= (and d!797120 (not c!445870)) b!2754517))

(declare-fun m!3170237 () Bool)

(assert (=> b!2754517 m!3170237))

(assert (=> b!2754297 d!797120))

(declare-fun d!797122 () Bool)

(assert (=> d!797122 (isPrefix!2534 (++!7894 Nil!31889 (Cons!31889 (head!6130 (getSuffix!1220 lt!976172 Nil!31889)) Nil!31889)) lt!976172)))

(declare-fun lt!976536 () Unit!45692)

(declare-fun choose!16145 (List!31989 List!31989) Unit!45692)

(assert (=> d!797122 (= lt!976536 (choose!16145 Nil!31889 lt!976172))))

(assert (=> d!797122 (isPrefix!2534 Nil!31889 lt!976172)))

(assert (=> d!797122 (= (lemmaAddHeadSuffixToPrefixStillPrefix!439 Nil!31889 lt!976172) lt!976536)))

(declare-fun bs!490578 () Bool)

(assert (= bs!490578 d!797122))

(assert (=> bs!490578 m!3170133))

(assert (=> bs!490578 m!3170135))

(assert (=> bs!490578 m!3169819))

(assert (=> bs!490578 m!3170131))

(declare-fun m!3170239 () Bool)

(assert (=> bs!490578 m!3170239))

(assert (=> bs!490578 m!3169819))

(assert (=> bs!490578 m!3170115))

(assert (=> bs!490578 m!3170133))

(assert (=> b!2754297 d!797122))

(declare-fun b!2754518 () Bool)

(declare-fun e!1736772 () List!31989)

(assert (=> b!2754518 (= e!1736772 (Cons!31889 (head!6130 lt!976162) Nil!31889))))

(declare-fun b!2754519 () Bool)

(assert (=> b!2754519 (= e!1736772 (Cons!31889 (h!37309 Nil!31889) (++!7894 (t!228093 Nil!31889) (Cons!31889 (head!6130 lt!976162) Nil!31889))))))

(declare-fun b!2754521 () Bool)

(declare-fun e!1736773 () Bool)

(declare-fun lt!976537 () List!31989)

(assert (=> b!2754521 (= e!1736773 (or (not (= (Cons!31889 (head!6130 lt!976162) Nil!31889) Nil!31889)) (= lt!976537 Nil!31889)))))

(declare-fun d!797124 () Bool)

(assert (=> d!797124 e!1736773))

(declare-fun res!1154393 () Bool)

(assert (=> d!797124 (=> (not res!1154393) (not e!1736773))))

(assert (=> d!797124 (= res!1154393 (= (content!4490 lt!976537) ((_ map or) (content!4490 Nil!31889) (content!4490 (Cons!31889 (head!6130 lt!976162) Nil!31889)))))))

(assert (=> d!797124 (= lt!976537 e!1736772)))

(declare-fun c!445871 () Bool)

(assert (=> d!797124 (= c!445871 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797124 (= (++!7894 Nil!31889 (Cons!31889 (head!6130 lt!976162) Nil!31889)) lt!976537)))

(declare-fun b!2754520 () Bool)

(declare-fun res!1154394 () Bool)

(assert (=> b!2754520 (=> (not res!1154394) (not e!1736773))))

(assert (=> b!2754520 (= res!1154394 (= (size!24655 lt!976537) (+ (size!24655 Nil!31889) (size!24655 (Cons!31889 (head!6130 lt!976162) Nil!31889)))))))

(assert (= (and d!797124 c!445871) b!2754518))

(assert (= (and d!797124 (not c!445871)) b!2754519))

(assert (= (and d!797124 res!1154393) b!2754520))

(assert (= (and b!2754520 res!1154394) b!2754521))

(declare-fun m!3170241 () Bool)

(assert (=> b!2754519 m!3170241))

(declare-fun m!3170243 () Bool)

(assert (=> d!797124 m!3170243))

(assert (=> d!797124 m!3170165))

(declare-fun m!3170245 () Bool)

(assert (=> d!797124 m!3170245))

(declare-fun m!3170247 () Bool)

(assert (=> b!2754520 m!3170247))

(assert (=> b!2754520 m!3169785))

(declare-fun m!3170249 () Bool)

(assert (=> b!2754520 m!3170249))

(assert (=> b!2754297 d!797124))

(declare-fun d!797126 () Bool)

(assert (=> d!797126 (= (tail!4368 lt!976172) (t!228093 lt!976172))))

(assert (=> b!2754297 d!797126))

(declare-fun d!797128 () Bool)

(assert (=> d!797128 (= (++!7894 (++!7894 Nil!31889 (Cons!31889 lt!976176 Nil!31889)) lt!976151) lt!976172)))

(declare-fun lt!976540 () Unit!45692)

(declare-fun choose!16146 (List!31989 C!16276 List!31989 List!31989) Unit!45692)

(assert (=> d!797128 (= lt!976540 (choose!16146 Nil!31889 lt!976176 lt!976151 lt!976172))))

(assert (=> d!797128 (= (++!7894 Nil!31889 (Cons!31889 lt!976176 lt!976151)) lt!976172)))

(assert (=> d!797128 (= (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976176 lt!976151 lt!976172) lt!976540)))

(declare-fun bs!490579 () Bool)

(assert (= bs!490579 d!797128))

(assert (=> bs!490579 m!3169809))

(assert (=> bs!490579 m!3169809))

(declare-fun m!3170251 () Bool)

(assert (=> bs!490579 m!3170251))

(declare-fun m!3170253 () Bool)

(assert (=> bs!490579 m!3170253))

(declare-fun m!3170255 () Bool)

(assert (=> bs!490579 m!3170255))

(assert (=> b!2754297 d!797128))

(declare-fun d!797130 () Bool)

(declare-fun lt!976543 () C!16276)

(assert (=> d!797130 (= lt!976543 (apply!7459 (list!12044 input!5495) 0))))

(declare-fun apply!7460 (Conc!9941 Int) C!16276)

(assert (=> d!797130 (= lt!976543 (apply!7460 (c!445787 input!5495) 0))))

(declare-fun e!1736776 () Bool)

(assert (=> d!797130 e!1736776))

(declare-fun res!1154397 () Bool)

(assert (=> d!797130 (=> (not res!1154397) (not e!1736776))))

(assert (=> d!797130 (= res!1154397 (<= 0 0))))

(assert (=> d!797130 (= (apply!7458 input!5495 0) lt!976543)))

(declare-fun b!2754524 () Bool)

(assert (=> b!2754524 (= e!1736776 (< 0 (size!24656 input!5495)))))

(assert (= (and d!797130 res!1154397) b!2754524))

(assert (=> d!797130 m!3169817))

(assert (=> d!797130 m!3169817))

(declare-fun m!3170257 () Bool)

(assert (=> d!797130 m!3170257))

(declare-fun m!3170259 () Bool)

(assert (=> d!797130 m!3170259))

(assert (=> b!2754524 m!3169835))

(assert (=> b!2754297 d!797130))

(declare-fun d!797132 () Bool)

(declare-fun lt!976544 () Int)

(assert (=> d!797132 (>= lt!976544 0)))

(declare-fun e!1736777 () Int)

(assert (=> d!797132 (= lt!976544 e!1736777)))

(declare-fun c!445872 () Bool)

(assert (=> d!797132 (= c!445872 ((_ is Nil!31889) lt!976172))))

(assert (=> d!797132 (= (size!24655 lt!976172) lt!976544)))

(declare-fun b!2754525 () Bool)

(assert (=> b!2754525 (= e!1736777 0)))

(declare-fun b!2754526 () Bool)

(assert (=> b!2754526 (= e!1736777 (+ 1 (size!24655 (t!228093 lt!976172))))))

(assert (= (and d!797132 c!445872) b!2754525))

(assert (= (and d!797132 (not c!445872)) b!2754526))

(declare-fun m!3170261 () Bool)

(assert (=> b!2754526 m!3170261))

(assert (=> b!2754297 d!797132))

(declare-fun d!797134 () Bool)

(assert (=> d!797134 (<= (size!24655 Nil!31889) (size!24655 lt!976172))))

(declare-fun lt!976547 () Unit!45692)

(declare-fun choose!16147 (List!31989 List!31989) Unit!45692)

(assert (=> d!797134 (= lt!976547 (choose!16147 Nil!31889 lt!976172))))

(assert (=> d!797134 (isPrefix!2534 Nil!31889 lt!976172)))

(assert (=> d!797134 (= (lemmaIsPrefixThenSmallerEqSize!242 Nil!31889 lt!976172) lt!976547)))

(declare-fun bs!490580 () Bool)

(assert (= bs!490580 d!797134))

(assert (=> bs!490580 m!3169785))

(assert (=> bs!490580 m!3169781))

(declare-fun m!3170263 () Bool)

(assert (=> bs!490580 m!3170263))

(assert (=> bs!490580 m!3170115))

(assert (=> b!2754297 d!797134))

(declare-fun d!797136 () Bool)

(declare-fun lt!976550 () C!16276)

(declare-fun contains!5984 (List!31989 C!16276) Bool)

(assert (=> d!797136 (contains!5984 lt!976172 lt!976550)))

(declare-fun e!1736783 () C!16276)

(assert (=> d!797136 (= lt!976550 e!1736783)))

(declare-fun c!445875 () Bool)

(assert (=> d!797136 (= c!445875 (= 0 0))))

(declare-fun e!1736782 () Bool)

(assert (=> d!797136 e!1736782))

(declare-fun res!1154400 () Bool)

(assert (=> d!797136 (=> (not res!1154400) (not e!1736782))))

(assert (=> d!797136 (= res!1154400 (<= 0 0))))

(assert (=> d!797136 (= (apply!7459 lt!976172 0) lt!976550)))

(declare-fun b!2754533 () Bool)

(assert (=> b!2754533 (= e!1736782 (< 0 (size!24655 lt!976172)))))

(declare-fun b!2754534 () Bool)

(assert (=> b!2754534 (= e!1736783 (head!6130 lt!976172))))

(declare-fun b!2754535 () Bool)

(assert (=> b!2754535 (= e!1736783 (apply!7459 (tail!4368 lt!976172) (- 0 1)))))

(assert (= (and d!797136 res!1154400) b!2754533))

(assert (= (and d!797136 c!445875) b!2754534))

(assert (= (and d!797136 (not c!445875)) b!2754535))

(declare-fun m!3170265 () Bool)

(assert (=> d!797136 m!3170265))

(assert (=> b!2754533 m!3169781))

(assert (=> b!2754534 m!3169899))

(assert (=> b!2754535 m!3169803))

(assert (=> b!2754535 m!3169803))

(declare-fun m!3170267 () Bool)

(assert (=> b!2754535 m!3170267))

(assert (=> b!2754297 d!797136))

(declare-fun d!797138 () Bool)

(assert (=> d!797138 (= (head!6130 lt!976162) (h!37309 lt!976162))))

(assert (=> b!2754297 d!797138))

(declare-fun d!797140 () Bool)

(assert (=> d!797140 (= (head!6130 (drop!1689 lt!976172 0)) (h!37309 (drop!1689 lt!976172 0)))))

(assert (=> b!2754297 d!797140))

(declare-fun b!2754536 () Bool)

(declare-fun e!1736784 () List!31989)

(assert (=> b!2754536 (= e!1736784 (Cons!31889 lt!976176 Nil!31889))))

(declare-fun b!2754537 () Bool)

(assert (=> b!2754537 (= e!1736784 (Cons!31889 (h!37309 Nil!31889) (++!7894 (t!228093 Nil!31889) (Cons!31889 lt!976176 Nil!31889))))))

(declare-fun b!2754539 () Bool)

(declare-fun e!1736785 () Bool)

(declare-fun lt!976551 () List!31989)

(assert (=> b!2754539 (= e!1736785 (or (not (= (Cons!31889 lt!976176 Nil!31889) Nil!31889)) (= lt!976551 Nil!31889)))))

(declare-fun d!797142 () Bool)

(assert (=> d!797142 e!1736785))

(declare-fun res!1154401 () Bool)

(assert (=> d!797142 (=> (not res!1154401) (not e!1736785))))

(assert (=> d!797142 (= res!1154401 (= (content!4490 lt!976551) ((_ map or) (content!4490 Nil!31889) (content!4490 (Cons!31889 lt!976176 Nil!31889)))))))

(assert (=> d!797142 (= lt!976551 e!1736784)))

(declare-fun c!445876 () Bool)

(assert (=> d!797142 (= c!445876 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797142 (= (++!7894 Nil!31889 (Cons!31889 lt!976176 Nil!31889)) lt!976551)))

(declare-fun b!2754538 () Bool)

(declare-fun res!1154402 () Bool)

(assert (=> b!2754538 (=> (not res!1154402) (not e!1736785))))

(assert (=> b!2754538 (= res!1154402 (= (size!24655 lt!976551) (+ (size!24655 Nil!31889) (size!24655 (Cons!31889 lt!976176 Nil!31889)))))))

(assert (= (and d!797142 c!445876) b!2754536))

(assert (= (and d!797142 (not c!445876)) b!2754537))

(assert (= (and d!797142 res!1154401) b!2754538))

(assert (= (and b!2754538 res!1154402) b!2754539))

(declare-fun m!3170269 () Bool)

(assert (=> b!2754537 m!3170269))

(declare-fun m!3170271 () Bool)

(assert (=> d!797142 m!3170271))

(assert (=> d!797142 m!3170165))

(declare-fun m!3170273 () Bool)

(assert (=> d!797142 m!3170273))

(declare-fun m!3170275 () Bool)

(assert (=> b!2754538 m!3170275))

(assert (=> b!2754538 m!3169785))

(declare-fun m!3170277 () Bool)

(assert (=> b!2754538 m!3170277))

(assert (=> b!2754297 d!797142))

(declare-fun d!797144 () Bool)

(declare-fun e!1736788 () Bool)

(assert (=> d!797144 e!1736788))

(declare-fun res!1154407 () Bool)

(assert (=> d!797144 (=> (not res!1154407) (not e!1736788))))

(declare-fun lt!976556 () tuple2!31916)

(assert (=> d!797144 (= res!1154407 (isBalanced!3027 (c!445787 (_1!18764 lt!976556))))))

(declare-datatypes ((tuple2!31918 0))(
  ( (tuple2!31919 (_1!18765 Conc!9941) (_2!18765 Conc!9941)) )
))
(declare-fun lt!976557 () tuple2!31918)

(assert (=> d!797144 (= lt!976556 (tuple2!31917 (BalanceConc!19497 (_1!18765 lt!976557)) (BalanceConc!19497 (_2!18765 lt!976557))))))

(declare-fun splitAt!90 (Conc!9941 Int) tuple2!31918)

(assert (=> d!797144 (= lt!976557 (splitAt!90 (c!445787 input!5495) 0))))

(assert (=> d!797144 (isBalanced!3027 (c!445787 input!5495))))

(assert (=> d!797144 (= (splitAt!89 input!5495 0) lt!976556)))

(declare-fun b!2754544 () Bool)

(declare-fun res!1154408 () Bool)

(assert (=> b!2754544 (=> (not res!1154408) (not e!1736788))))

(assert (=> b!2754544 (= res!1154408 (isBalanced!3027 (c!445787 (_2!18764 lt!976556))))))

(declare-fun b!2754545 () Bool)

(declare-fun splitAtIndex!43 (List!31989 Int) tuple2!31914)

(assert (=> b!2754545 (= e!1736788 (= (tuple2!31915 (list!12044 (_1!18764 lt!976556)) (list!12044 (_2!18764 lt!976556))) (splitAtIndex!43 (list!12044 input!5495) 0)))))

(assert (= (and d!797144 res!1154407) b!2754544))

(assert (= (and b!2754544 res!1154408) b!2754545))

(declare-fun m!3170279 () Bool)

(assert (=> d!797144 m!3170279))

(declare-fun m!3170281 () Bool)

(assert (=> d!797144 m!3170281))

(assert (=> d!797144 m!3169841))

(declare-fun m!3170283 () Bool)

(assert (=> b!2754544 m!3170283))

(declare-fun m!3170285 () Bool)

(assert (=> b!2754545 m!3170285))

(declare-fun m!3170287 () Bool)

(assert (=> b!2754545 m!3170287))

(assert (=> b!2754545 m!3169817))

(assert (=> b!2754545 m!3169817))

(declare-fun m!3170289 () Bool)

(assert (=> b!2754545 m!3170289))

(assert (=> b!2754297 d!797144))

(assert (=> bm!178322 d!797064))

(assert (=> bm!178329 d!797064))

(declare-fun d!797146 () Bool)

(assert (=> d!797146 (= (valid!2894 (ite c!445774 (_2!18761 lt!976192) (_2!18761 lt!976163))) (validCacheMapUp!354 (cache!3775 (ite c!445774 (_2!18761 lt!976192) (_2!18761 lt!976163)))))))

(declare-fun bs!490581 () Bool)

(assert (= bs!490581 d!797146))

(declare-fun m!3170291 () Bool)

(assert (=> bs!490581 m!3170291))

(assert (=> bm!178334 d!797146))

(declare-fun d!797148 () Bool)

(assert (=> d!797148 (= (isEmpty!18068 (_1!18763 lt!976181)) ((_ is Nil!31889) (_1!18763 lt!976181)))))

(assert (=> b!2754267 d!797148))

(assert (=> bm!178330 d!797074))

(declare-fun d!797150 () Bool)

(assert (=> d!797150 (= (valid!2893 (_3!2804 lt!976129)) (validCacheMapDown!385 (cache!3776 (_3!2804 lt!976129))))))

(declare-fun bs!490582 () Bool)

(assert (= bs!490582 d!797150))

(declare-fun m!3170293 () Bool)

(assert (=> bs!490582 m!3170293))

(assert (=> b!2754284 d!797150))

(declare-fun d!797152 () Bool)

(assert (=> d!797152 true))

(declare-fun lambda!101013 () Int)

(declare-fun flatMap!177 ((InoxSet Context!4554) Int) (InoxSet Context!4554))

(assert (=> d!797152 (= (derivationStepZipper!350 z!3597 lt!976150) (flatMap!177 z!3597 lambda!101013))))

(declare-fun bs!490583 () Bool)

(assert (= bs!490583 d!797152))

(declare-fun m!3170295 () Bool)

(assert (=> bs!490583 m!3170295))

(assert (=> bm!178324 d!797152))

(declare-fun b!2754548 () Bool)

(declare-fun e!1736789 () Bool)

(declare-fun e!1736791 () Bool)

(assert (=> b!2754548 (= e!1736789 e!1736791)))

(declare-fun res!1154411 () Bool)

(assert (=> b!2754548 (=> (not res!1154411) (not e!1736791))))

(assert (=> b!2754548 (= res!1154411 (not ((_ is Nil!31889) lt!976172)))))

(declare-fun d!797154 () Bool)

(declare-fun e!1736790 () Bool)

(assert (=> d!797154 e!1736790))

(declare-fun res!1154412 () Bool)

(assert (=> d!797154 (=> res!1154412 e!1736790)))

(declare-fun lt!976558 () Bool)

(assert (=> d!797154 (= res!1154412 (not lt!976558))))

(assert (=> d!797154 (= lt!976558 e!1736789)))

(declare-fun res!1154409 () Bool)

(assert (=> d!797154 (=> res!1154409 e!1736789)))

(assert (=> d!797154 (= res!1154409 ((_ is Nil!31889) lt!976172))))

(assert (=> d!797154 (= (isPrefix!2534 lt!976172 lt!976172) lt!976558)))

(declare-fun b!2754549 () Bool)

(declare-fun res!1154410 () Bool)

(assert (=> b!2754549 (=> (not res!1154410) (not e!1736791))))

(assert (=> b!2754549 (= res!1154410 (= (head!6130 lt!976172) (head!6130 lt!976172)))))

(declare-fun b!2754551 () Bool)

(assert (=> b!2754551 (= e!1736790 (>= (size!24655 lt!976172) (size!24655 lt!976172)))))

(declare-fun b!2754550 () Bool)

(assert (=> b!2754550 (= e!1736791 (isPrefix!2534 (tail!4368 lt!976172) (tail!4368 lt!976172)))))

(assert (= (and d!797154 (not res!1154409)) b!2754548))

(assert (= (and b!2754548 res!1154411) b!2754549))

(assert (= (and b!2754549 res!1154410) b!2754550))

(assert (= (and d!797154 (not res!1154412)) b!2754551))

(assert (=> b!2754549 m!3169899))

(assert (=> b!2754549 m!3169899))

(assert (=> b!2754551 m!3169781))

(assert (=> b!2754551 m!3169781))

(assert (=> b!2754550 m!3169803))

(assert (=> b!2754550 m!3169803))

(assert (=> b!2754550 m!3169803))

(assert (=> b!2754550 m!3169803))

(declare-fun m!3170297 () Bool)

(assert (=> b!2754550 m!3170297))

(assert (=> bm!178323 d!797154))

(declare-fun d!797156 () Bool)

(assert (=> d!797156 (= (++!7894 (++!7894 Nil!31889 (Cons!31889 lt!976168 Nil!31889)) lt!976185) lt!976172)))

(declare-fun lt!976559 () Unit!45692)

(assert (=> d!797156 (= lt!976559 (choose!16146 Nil!31889 lt!976168 lt!976185 lt!976172))))

(assert (=> d!797156 (= (++!7894 Nil!31889 (Cons!31889 lt!976168 lt!976185)) lt!976172)))

(assert (=> d!797156 (= (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976168 lt!976185 lt!976172) lt!976559)))

(declare-fun bs!490584 () Bool)

(assert (= bs!490584 d!797156))

(assert (=> bs!490584 m!3169869))

(assert (=> bs!490584 m!3169869))

(declare-fun m!3170299 () Bool)

(assert (=> bs!490584 m!3170299))

(declare-fun m!3170301 () Bool)

(assert (=> bs!490584 m!3170301))

(declare-fun m!3170303 () Bool)

(assert (=> bs!490584 m!3170303))

(assert (=> b!2754264 d!797156))

(assert (=> b!2754264 d!797126))

(declare-fun b!2754552 () Bool)

(declare-fun e!1736792 () List!31989)

(assert (=> b!2754552 (= e!1736792 (Cons!31889 lt!976168 Nil!31889))))

(declare-fun b!2754553 () Bool)

(assert (=> b!2754553 (= e!1736792 (Cons!31889 (h!37309 Nil!31889) (++!7894 (t!228093 Nil!31889) (Cons!31889 lt!976168 Nil!31889))))))

(declare-fun b!2754555 () Bool)

(declare-fun e!1736793 () Bool)

(declare-fun lt!976560 () List!31989)

(assert (=> b!2754555 (= e!1736793 (or (not (= (Cons!31889 lt!976168 Nil!31889) Nil!31889)) (= lt!976560 Nil!31889)))))

(declare-fun d!797158 () Bool)

(assert (=> d!797158 e!1736793))

(declare-fun res!1154413 () Bool)

(assert (=> d!797158 (=> (not res!1154413) (not e!1736793))))

(assert (=> d!797158 (= res!1154413 (= (content!4490 lt!976560) ((_ map or) (content!4490 Nil!31889) (content!4490 (Cons!31889 lt!976168 Nil!31889)))))))

(assert (=> d!797158 (= lt!976560 e!1736792)))

(declare-fun c!445879 () Bool)

(assert (=> d!797158 (= c!445879 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797158 (= (++!7894 Nil!31889 (Cons!31889 lt!976168 Nil!31889)) lt!976560)))

(declare-fun b!2754554 () Bool)

(declare-fun res!1154414 () Bool)

(assert (=> b!2754554 (=> (not res!1154414) (not e!1736793))))

(assert (=> b!2754554 (= res!1154414 (= (size!24655 lt!976560) (+ (size!24655 Nil!31889) (size!24655 (Cons!31889 lt!976168 Nil!31889)))))))

(assert (= (and d!797158 c!445879) b!2754552))

(assert (= (and d!797158 (not c!445879)) b!2754553))

(assert (= (and d!797158 res!1154413) b!2754554))

(assert (= (and b!2754554 res!1154414) b!2754555))

(declare-fun m!3170305 () Bool)

(assert (=> b!2754553 m!3170305))

(declare-fun m!3170307 () Bool)

(assert (=> d!797158 m!3170307))

(assert (=> d!797158 m!3170165))

(declare-fun m!3170309 () Bool)

(assert (=> d!797158 m!3170309))

(declare-fun m!3170311 () Bool)

(assert (=> b!2754554 m!3170311))

(assert (=> b!2754554 m!3169785))

(declare-fun m!3170313 () Bool)

(assert (=> b!2754554 m!3170313))

(assert (=> b!2754264 d!797158))

(assert (=> b!2754264 d!797114))

(assert (=> b!2754264 d!797116))

(assert (=> b!2754264 d!797144))

(assert (=> b!2754264 d!797120))

(assert (=> b!2754264 d!797122))

(declare-fun d!797160 () Bool)

(assert (=> d!797160 (= (list!12044 (_1!18764 lt!976144)) (list!12045 (c!445787 (_1!18764 lt!976144))))))

(declare-fun bs!490585 () Bool)

(assert (= bs!490585 d!797160))

(declare-fun m!3170315 () Bool)

(assert (=> bs!490585 m!3170315))

(assert (=> b!2754264 d!797160))

(assert (=> b!2754264 d!797124))

(assert (=> b!2754264 d!797110))

(declare-fun d!797162 () Bool)

(assert (=> d!797162 (and (= lt!976157 Nil!31889) (= lt!976184 lt!976172))))

(declare-fun lt!976561 () Unit!45692)

(assert (=> d!797162 (= lt!976561 (choose!16144 lt!976157 lt!976184 Nil!31889 lt!976172))))

(assert (=> d!797162 (= (++!7894 lt!976157 lt!976184) (++!7894 Nil!31889 lt!976172))))

(assert (=> d!797162 (= (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976157 lt!976184 Nil!31889 lt!976172) lt!976561)))

(declare-fun bs!490586 () Bool)

(assert (= bs!490586 d!797162))

(declare-fun m!3170317 () Bool)

(assert (=> bs!490586 m!3170317))

(declare-fun m!3170319 () Bool)

(assert (=> bs!490586 m!3170319))

(assert (=> bs!490586 m!3169813))

(assert (=> b!2754264 d!797162))

(declare-fun b!2754556 () Bool)

(declare-fun e!1736794 () List!31989)

(assert (=> b!2754556 (= e!1736794 lt!976185)))

(declare-fun b!2754557 () Bool)

(assert (=> b!2754557 (= e!1736794 (Cons!31889 (h!37309 lt!976186) (++!7894 (t!228093 lt!976186) lt!976185)))))

(declare-fun e!1736795 () Bool)

(declare-fun b!2754559 () Bool)

(declare-fun lt!976562 () List!31989)

(assert (=> b!2754559 (= e!1736795 (or (not (= lt!976185 Nil!31889)) (= lt!976562 lt!976186)))))

(declare-fun d!797164 () Bool)

(assert (=> d!797164 e!1736795))

(declare-fun res!1154415 () Bool)

(assert (=> d!797164 (=> (not res!1154415) (not e!1736795))))

(assert (=> d!797164 (= res!1154415 (= (content!4490 lt!976562) ((_ map or) (content!4490 lt!976186) (content!4490 lt!976185))))))

(assert (=> d!797164 (= lt!976562 e!1736794)))

(declare-fun c!445880 () Bool)

(assert (=> d!797164 (= c!445880 ((_ is Nil!31889) lt!976186))))

(assert (=> d!797164 (= (++!7894 lt!976186 lt!976185) lt!976562)))

(declare-fun b!2754558 () Bool)

(declare-fun res!1154416 () Bool)

(assert (=> b!2754558 (=> (not res!1154416) (not e!1736795))))

(assert (=> b!2754558 (= res!1154416 (= (size!24655 lt!976562) (+ (size!24655 lt!976186) (size!24655 lt!976185))))))

(assert (= (and d!797164 c!445880) b!2754556))

(assert (= (and d!797164 (not c!445880)) b!2754557))

(assert (= (and d!797164 res!1154415) b!2754558))

(assert (= (and b!2754558 res!1154416) b!2754559))

(declare-fun m!3170321 () Bool)

(assert (=> b!2754557 m!3170321))

(declare-fun m!3170323 () Bool)

(assert (=> d!797164 m!3170323))

(declare-fun m!3170325 () Bool)

(assert (=> d!797164 m!3170325))

(declare-fun m!3170327 () Bool)

(assert (=> d!797164 m!3170327))

(declare-fun m!3170329 () Bool)

(assert (=> b!2754558 m!3170329))

(assert (=> b!2754558 m!3170015))

(declare-fun m!3170331 () Bool)

(assert (=> b!2754558 m!3170331))

(assert (=> b!2754264 d!797164))

(declare-fun d!797166 () Bool)

(assert (=> d!797166 (= (list!12044 (_2!18764 lt!976144)) (list!12045 (c!445787 (_2!18764 lt!976144))))))

(declare-fun bs!490587 () Bool)

(assert (= bs!490587 d!797166))

(declare-fun m!3170333 () Bool)

(assert (=> bs!490587 m!3170333))

(assert (=> b!2754264 d!797166))

(assert (=> b!2754264 d!797130))

(assert (=> b!2754264 d!797132))

(assert (=> b!2754264 d!797134))

(assert (=> b!2754264 d!797136))

(assert (=> b!2754264 d!797138))

(assert (=> b!2754264 d!797140))

(declare-fun d!797168 () Bool)

(declare-fun c!445883 () Bool)

(assert (=> d!797168 (= c!445883 ((_ is Node!9941) (c!445787 input!5495)))))

(declare-fun e!1736800 () Bool)

(assert (=> d!797168 (= (inv!43301 (c!445787 input!5495)) e!1736800)))

(declare-fun b!2754566 () Bool)

(declare-fun inv!43306 (Conc!9941) Bool)

(assert (=> b!2754566 (= e!1736800 (inv!43306 (c!445787 input!5495)))))

(declare-fun b!2754567 () Bool)

(declare-fun e!1736801 () Bool)

(assert (=> b!2754567 (= e!1736800 e!1736801)))

(declare-fun res!1154419 () Bool)

(assert (=> b!2754567 (= res!1154419 (not ((_ is Leaf!15139) (c!445787 input!5495))))))

(assert (=> b!2754567 (=> res!1154419 e!1736801)))

(declare-fun b!2754568 () Bool)

(declare-fun inv!43307 (Conc!9941) Bool)

(assert (=> b!2754568 (= e!1736801 (inv!43307 (c!445787 input!5495)))))

(assert (= (and d!797168 c!445883) b!2754566))

(assert (= (and d!797168 (not c!445883)) b!2754567))

(assert (= (and b!2754567 (not res!1154419)) b!2754568))

(declare-fun m!3170335 () Bool)

(assert (=> b!2754566 m!3170335))

(declare-fun m!3170337 () Bool)

(assert (=> b!2754568 m!3170337))

(assert (=> b!2754279 d!797168))

(assert (=> bm!178338 d!797154))

(declare-fun d!797170 () Bool)

(declare-fun lambda!101016 () Int)

(declare-fun forall!6595 (List!31986 Int) Bool)

(assert (=> d!797170 (= (inv!43302 setElem!22107) (forall!6595 (exprs!2777 setElem!22107) lambda!101016))))

(declare-fun bs!490588 () Bool)

(assert (= bs!490588 d!797170))

(declare-fun m!3170339 () Bool)

(assert (=> bs!490588 m!3170339))

(assert (=> setNonEmpty!22107 d!797170))

(declare-fun d!797172 () Bool)

(assert (=> d!797172 (= (valid!2893 (_3!2804 lt!976130)) (validCacheMapDown!385 (cache!3776 (_3!2804 lt!976130))))))

(declare-fun bs!490589 () Bool)

(assert (= bs!490589 d!797172))

(declare-fun m!3170341 () Bool)

(assert (=> bs!490589 m!3170341))

(assert (=> b!2754266 d!797172))

(declare-fun d!797174 () Bool)

(assert (=> d!797174 (= (array_inv!4231 (_keys!4026 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) (bvsge (size!24653 (_keys!4026 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2754280 d!797174))

(declare-fun d!797176 () Bool)

(assert (=> d!797176 (= (array_inv!4233 (_values!4007 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) (bvsge (size!24652 (_values!4007 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2754280 d!797176))

(assert (=> bm!178333 d!797074))

(declare-fun d!797178 () Bool)

(declare-fun e!1736804 () Bool)

(assert (=> d!797178 e!1736804))

(declare-fun res!1154424 () Bool)

(assert (=> d!797178 (=> (not res!1154424) (not e!1736804))))

(declare-fun lt!976565 () tuple3!4670)

(assert (=> d!797178 (= res!1154424 (= (_1!18762 lt!976565) (derivationStepZipper!350 z!3597 lt!976176)))))

(declare-fun choose!16148 ((InoxSet Context!4554) C!16276 CacheUp!2338 CacheDown!2458) tuple3!4670)

(assert (=> d!797178 (= lt!976565 (choose!16148 z!3597 lt!976176 (_2!18761 lt!976130) (_3!2804 lt!976130)))))

(assert (=> d!797178 (= (derivationStepZipperMem!81 z!3597 lt!976176 (_2!18761 lt!976130) (_3!2804 lt!976130)) lt!976565)))

(declare-fun b!2754573 () Bool)

(declare-fun res!1154425 () Bool)

(assert (=> b!2754573 (=> (not res!1154425) (not e!1736804))))

(assert (=> b!2754573 (= res!1154425 (valid!2894 (_2!18762 lt!976565)))))

(declare-fun b!2754574 () Bool)

(assert (=> b!2754574 (= e!1736804 (valid!2893 (_3!2805 lt!976565)))))

(assert (= (and d!797178 res!1154424) b!2754573))

(assert (= (and b!2754573 res!1154425) b!2754574))

(declare-fun m!3170343 () Bool)

(assert (=> d!797178 m!3170343))

(declare-fun m!3170345 () Bool)

(assert (=> d!797178 m!3170345))

(declare-fun m!3170347 () Bool)

(assert (=> b!2754573 m!3170347))

(declare-fun m!3170349 () Bool)

(assert (=> b!2754574 m!3170349))

(assert (=> bm!178339 d!797178))

(assert (=> bm!178332 d!797062))

(declare-fun d!797180 () Bool)

(assert (=> d!797180 (= (valid!2894 cacheUp!820) (validCacheMapUp!354 (cache!3775 cacheUp!820)))))

(declare-fun bs!490590 () Bool)

(assert (= bs!490590 d!797180))

(declare-fun m!3170351 () Bool)

(assert (=> bs!490590 m!3170351))

(assert (=> start!267034 d!797180))

(declare-fun d!797182 () Bool)

(declare-fun res!1154428 () Bool)

(declare-fun e!1736807 () Bool)

(assert (=> d!797182 (=> (not res!1154428) (not e!1736807))))

(assert (=> d!797182 (= res!1154428 ((_ is HashMap!3632) (cache!3775 cacheUp!820)))))

(assert (=> d!797182 (= (inv!43303 cacheUp!820) e!1736807)))

(declare-fun b!2754577 () Bool)

(assert (=> b!2754577 (= e!1736807 (validCacheMapUp!354 (cache!3775 cacheUp!820)))))

(assert (= (and d!797182 res!1154428) b!2754577))

(assert (=> b!2754577 m!3170351))

(assert (=> start!267034 d!797182))

(declare-fun d!797184 () Bool)

(declare-fun res!1154431 () Bool)

(declare-fun e!1736810 () Bool)

(assert (=> d!797184 (=> (not res!1154431) (not e!1736810))))

(assert (=> d!797184 (= res!1154431 ((_ is HashMap!3633) (cache!3776 cacheDown!939)))))

(assert (=> d!797184 (= (inv!43304 cacheDown!939) e!1736810)))

(declare-fun b!2754580 () Bool)

(assert (=> b!2754580 (= e!1736810 (validCacheMapDown!385 (cache!3776 cacheDown!939)))))

(assert (= (and d!797184 res!1154431) b!2754580))

(assert (=> b!2754580 m!3170085))

(assert (=> start!267034 d!797184))

(declare-fun d!797186 () Bool)

(assert (=> d!797186 (= (inv!43305 input!5495) (isBalanced!3027 (c!445787 input!5495)))))

(declare-fun bs!490591 () Bool)

(assert (= bs!490591 d!797186))

(assert (=> bs!490591 m!3169841))

(assert (=> start!267034 d!797186))

(declare-fun call!178438 () List!31989)

(declare-fun call!178432 () Int)

(declare-fun call!178434 () (InoxSet Context!4554))

(declare-fun call!178435 () List!31989)

(declare-fun bm!178424 () Bool)

(assert (=> bm!178424 (= call!178432 (findLongestMatchInnerZipperFast!17 call!178434 call!178438 (+ 1 1) call!178435 input!5495 lt!976149))))

(declare-fun b!2754581 () Bool)

(declare-fun e!1736812 () Int)

(assert (=> b!2754581 (= e!1736812 call!178432)))

(declare-fun b!2754582 () Bool)

(declare-fun lt!976577 () Int)

(assert (=> b!2754582 (= e!1736812 (ite (= lt!976577 0) 1 lt!976577))))

(assert (=> b!2754582 (= lt!976577 call!178432)))

(declare-fun b!2754583 () Bool)

(declare-fun e!1736816 () Int)

(declare-fun e!1736815 () Int)

(assert (=> b!2754583 (= e!1736816 e!1736815)))

(declare-fun c!445884 () Bool)

(assert (=> b!2754583 (= c!445884 (= 1 lt!976149))))

(declare-fun b!2754584 () Bool)

(declare-fun e!1736813 () Int)

(assert (=> b!2754584 (= e!1736813 0)))

(declare-fun b!2754585 () Bool)

(declare-fun e!1736811 () Unit!45692)

(declare-fun Unit!45714 () Unit!45692)

(assert (=> b!2754585 (= e!1736811 Unit!45714)))

(declare-fun bm!178425 () Bool)

(declare-fun c!445888 () Bool)

(assert (=> bm!178425 (= c!445888 c!445884)))

(declare-fun e!1736814 () List!31989)

(declare-fun lt!976604 () List!31989)

(declare-fun call!178429 () Unit!45692)

(declare-fun lt!976571 () List!31989)

(assert (=> bm!178425 (= call!178429 (lemmaIsPrefixSameLengthThenSameList!442 (ite c!445884 lt!976571 lt!976604) lt!976170 e!1736814))))

(declare-fun b!2754586 () Bool)

(declare-fun call!178431 () List!31989)

(assert (=> b!2754586 (= e!1736814 call!178431)))

(declare-fun lt!976568 () List!31989)

(declare-fun lt!976601 () List!31989)

(declare-fun call!178436 () Bool)

(declare-fun bm!178426 () Bool)

(declare-fun lt!976582 () List!31989)

(declare-fun lt!976575 () List!31989)

(assert (=> bm!178426 (= call!178436 (isPrefix!2534 (ite c!445884 lt!976582 lt!976601) (ite c!445884 lt!976568 lt!976575)))))

(declare-fun call!178430 () Unit!45692)

(declare-fun bm!178427 () Bool)

(assert (=> bm!178427 (= call!178430 (lemmaIsPrefixRefl!1660 (ite c!445884 lt!976582 lt!976601) (ite c!445884 lt!976568 lt!976575)))))

(declare-fun d!797188 () Bool)

(declare-fun lt!976578 () Int)

(assert (=> d!797188 (= (size!24655 (_1!18763 (findLongestMatchInnerZipper!6 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 (list!12044 input!5495) lt!976149))) lt!976578)))

(assert (=> d!797188 (= lt!976578 e!1736816)))

(declare-fun c!445887 () Bool)

(assert (=> d!797188 (= c!445887 (lostCauseZipper!424 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173))))))

(declare-fun lt!976586 () Unit!45692)

(declare-fun Unit!45715 () Unit!45692)

(assert (=> d!797188 (= lt!976586 Unit!45715)))

(assert (=> d!797188 (= (getSuffix!1220 (list!12044 input!5495) lt!976170) lt!976151)))

(declare-fun lt!976606 () Unit!45692)

(declare-fun lt!976600 () Unit!45692)

(assert (=> d!797188 (= lt!976606 lt!976600)))

(declare-fun lt!976569 () List!31989)

(assert (=> d!797188 (= lt!976151 lt!976569)))

(assert (=> d!797188 (= lt!976600 (lemmaSamePrefixThenSameSuffix!1122 lt!976170 lt!976151 lt!976170 lt!976569 (list!12044 input!5495)))))

(assert (=> d!797188 (= lt!976569 (getSuffix!1220 (list!12044 input!5495) lt!976170))))

(declare-fun lt!976605 () Unit!45692)

(declare-fun lt!976596 () Unit!45692)

(assert (=> d!797188 (= lt!976605 lt!976596)))

(assert (=> d!797188 (isPrefix!2534 lt!976170 (++!7894 lt!976170 lt!976151))))

(assert (=> d!797188 (= lt!976596 (lemmaConcatTwoListThenFirstIsPrefix!1648 lt!976170 lt!976151))))

(assert (=> d!797188 (= (++!7894 lt!976170 lt!976151) (list!12044 input!5495))))

(assert (=> d!797188 (= (findLongestMatchInnerZipperFast!17 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149) lt!976578)))

(declare-fun b!2754587 () Bool)

(assert (=> b!2754587 (= e!1736814 (list!12044 input!5495))))

(declare-fun b!2754588 () Bool)

(declare-fun c!445886 () Bool)

(declare-fun call!178437 () Bool)

(assert (=> b!2754588 (= c!445886 call!178437)))

(declare-fun lt!976593 () Unit!45692)

(declare-fun lt!976579 () Unit!45692)

(assert (=> b!2754588 (= lt!976593 lt!976579)))

(declare-fun lt!976572 () List!31989)

(declare-fun lt!976570 () C!16276)

(declare-fun lt!976597 () List!31989)

(assert (=> b!2754588 (= (++!7894 (++!7894 lt!976170 (Cons!31889 lt!976570 Nil!31889)) lt!976597) lt!976572)))

(assert (=> b!2754588 (= lt!976579 (lemmaMoveElementToOtherListKeepsConcatEq!851 lt!976170 lt!976570 lt!976597 lt!976572))))

(assert (=> b!2754588 (= lt!976572 (list!12044 input!5495))))

(assert (=> b!2754588 (= lt!976597 (tail!4368 lt!976151))))

(assert (=> b!2754588 (= lt!976570 (apply!7458 input!5495 1))))

(declare-fun lt!976574 () Unit!45692)

(declare-fun lt!976583 () Unit!45692)

(assert (=> b!2754588 (= lt!976574 lt!976583)))

(declare-fun lt!976573 () List!31989)

(assert (=> b!2754588 (isPrefix!2534 (++!7894 lt!976170 (Cons!31889 (head!6130 (getSuffix!1220 lt!976573 lt!976170)) Nil!31889)) lt!976573)))

(assert (=> b!2754588 (= lt!976583 (lemmaAddHeadSuffixToPrefixStillPrefix!439 lt!976170 lt!976573))))

(assert (=> b!2754588 (= lt!976573 (list!12044 input!5495))))

(declare-fun lt!976576 () Unit!45692)

(assert (=> b!2754588 (= lt!976576 e!1736811)))

(declare-fun c!445889 () Bool)

(assert (=> b!2754588 (= c!445889 (= (size!24655 lt!976170) (size!24656 input!5495)))))

(declare-fun lt!976590 () Unit!45692)

(declare-fun lt!976566 () Unit!45692)

(assert (=> b!2754588 (= lt!976590 lt!976566)))

(declare-fun lt!976567 () List!31989)

(assert (=> b!2754588 (<= (size!24655 lt!976170) (size!24655 lt!976567))))

(assert (=> b!2754588 (= lt!976566 (lemmaIsPrefixThenSmallerEqSize!242 lt!976170 lt!976567))))

(assert (=> b!2754588 (= lt!976567 (list!12044 input!5495))))

(declare-fun lt!976592 () Unit!45692)

(declare-fun lt!976598 () Unit!45692)

(assert (=> b!2754588 (= lt!976592 lt!976598)))

(declare-fun lt!976603 () List!31989)

(assert (=> b!2754588 (= (head!6130 (drop!1689 lt!976603 1)) (apply!7459 lt!976603 1))))

(assert (=> b!2754588 (= lt!976598 (lemmaDropApply!895 lt!976603 1))))

(assert (=> b!2754588 (= lt!976603 (list!12044 input!5495))))

(declare-fun lt!976580 () Unit!45692)

(declare-fun lt!976585 () Unit!45692)

(assert (=> b!2754588 (= lt!976580 lt!976585)))

(declare-fun lt!976589 () List!31989)

(declare-fun lt!976602 () List!31989)

(assert (=> b!2754588 (and (= lt!976589 lt!976170) (= lt!976602 lt!976151))))

(assert (=> b!2754588 (= lt!976585 (lemmaConcatSameAndSameSizesThenSameLists!321 lt!976589 lt!976602 lt!976170 lt!976151))))

(assert (=> b!2754588 (= lt!976602 call!178431)))

(declare-fun lt!976584 () tuple2!31916)

(assert (=> b!2754588 (= lt!976589 (list!12044 (_1!18764 lt!976584)))))

(assert (=> b!2754588 (= lt!976584 (splitAt!89 input!5495 1))))

(assert (=> b!2754588 (= e!1736815 e!1736812)))

(declare-fun bm!178428 () Bool)

(declare-fun call!178433 () C!16276)

(assert (=> bm!178428 (= call!178438 (++!7894 lt!976170 (Cons!31889 call!178433 Nil!31889)))))

(declare-fun b!2754589 () Bool)

(assert (=> b!2754589 (= e!1736816 0)))

(declare-fun b!2754590 () Bool)

(assert (=> b!2754590 (= e!1736813 1)))

(declare-fun b!2754591 () Bool)

(declare-fun c!445885 () Bool)

(assert (=> b!2754591 (= c!445885 call!178437)))

(declare-fun lt!976607 () Unit!45692)

(declare-fun lt!976599 () Unit!45692)

(assert (=> b!2754591 (= lt!976607 lt!976599)))

(assert (=> b!2754591 (= lt!976571 lt!976170)))

(assert (=> b!2754591 (= lt!976599 call!178429)))

(assert (=> b!2754591 (= lt!976571 call!178431)))

(declare-fun lt!976594 () Unit!45692)

(declare-fun lt!976591 () Unit!45692)

(assert (=> b!2754591 (= lt!976594 lt!976591)))

(assert (=> b!2754591 call!178436))

(assert (=> b!2754591 (= lt!976591 call!178430)))

(assert (=> b!2754591 (= lt!976568 call!178431)))

(assert (=> b!2754591 (= lt!976582 call!178431)))

(assert (=> b!2754591 (= e!1736815 e!1736813)))

(declare-fun bm!178429 () Bool)

(assert (=> bm!178429 (= call!178431 (list!12044 (ite c!445884 input!5495 (_2!18764 lt!976584))))))

(declare-fun bm!178430 () Bool)

(assert (=> bm!178430 (= call!178437 (nullableZipper!613 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173))))))

(declare-fun bm!178431 () Bool)

(assert (=> bm!178431 (= call!178433 (apply!7458 input!5495 1))))

(declare-fun bm!178432 () Bool)

(assert (=> bm!178432 (= call!178434 (derivationStepZipper!350 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) call!178433))))

(declare-fun b!2754592 () Bool)

(declare-fun Unit!45716 () Unit!45692)

(assert (=> b!2754592 (= e!1736811 Unit!45716)))

(assert (=> b!2754592 (= lt!976601 (list!12044 input!5495))))

(assert (=> b!2754592 (= lt!976575 (list!12044 input!5495))))

(declare-fun lt!976587 () Unit!45692)

(assert (=> b!2754592 (= lt!976587 call!178430)))

(assert (=> b!2754592 call!178436))

(declare-fun lt!976581 () Unit!45692)

(assert (=> b!2754592 (= lt!976581 lt!976587)))

(assert (=> b!2754592 (= lt!976604 (list!12044 input!5495))))

(declare-fun lt!976595 () Unit!45692)

(assert (=> b!2754592 (= lt!976595 call!178429)))

(assert (=> b!2754592 (= lt!976604 lt!976170)))

(declare-fun lt!976588 () Unit!45692)

(assert (=> b!2754592 (= lt!976588 lt!976595)))

(assert (=> b!2754592 false))

(declare-fun bm!178433 () Bool)

(assert (=> bm!178433 (= call!178435 (tail!4368 lt!976151))))

(assert (= (and d!797188 c!445887) b!2754589))

(assert (= (and d!797188 (not c!445887)) b!2754583))

(assert (= (and b!2754583 c!445884) b!2754591))

(assert (= (and b!2754583 (not c!445884)) b!2754588))

(assert (= (and b!2754591 c!445885) b!2754590))

(assert (= (and b!2754591 (not c!445885)) b!2754584))

(assert (= (and b!2754588 c!445889) b!2754592))

(assert (= (and b!2754588 (not c!445889)) b!2754585))

(assert (= (and b!2754588 c!445886) b!2754582))

(assert (= (and b!2754588 (not c!445886)) b!2754581))

(assert (= (or b!2754582 b!2754581) bm!178431))

(assert (= (or b!2754582 b!2754581) bm!178433))

(assert (= (or b!2754582 b!2754581) bm!178428))

(assert (= (or b!2754582 b!2754581) bm!178432))

(assert (= (or b!2754582 b!2754581) bm!178424))

(assert (= (or b!2754591 b!2754588) bm!178429))

(assert (= (or b!2754591 b!2754592) bm!178427))

(assert (= (or b!2754591 b!2754588) bm!178430))

(assert (= (or b!2754591 b!2754592) bm!178426))

(assert (= (or b!2754591 b!2754592) bm!178425))

(assert (= (and bm!178425 c!445888) b!2754586))

(assert (= (and bm!178425 (not c!445888)) b!2754587))

(declare-fun m!3170353 () Bool)

(assert (=> bm!178433 m!3170353))

(declare-fun m!3170355 () Bool)

(assert (=> bm!178428 m!3170355))

(assert (=> d!797188 m!3169795))

(assert (=> d!797188 m!3169817))

(declare-fun m!3170357 () Bool)

(assert (=> d!797188 m!3170357))

(assert (=> d!797188 m!3169817))

(declare-fun m!3170359 () Bool)

(assert (=> d!797188 m!3170359))

(declare-fun m!3170361 () Bool)

(assert (=> d!797188 m!3170361))

(assert (=> d!797188 m!3169817))

(assert (=> d!797188 m!3169817))

(declare-fun m!3170363 () Bool)

(assert (=> d!797188 m!3170363))

(declare-fun m!3170365 () Bool)

(assert (=> d!797188 m!3170365))

(assert (=> d!797188 m!3169795))

(declare-fun m!3170367 () Bool)

(assert (=> d!797188 m!3170367))

(declare-fun m!3170369 () Bool)

(assert (=> d!797188 m!3170369))

(assert (=> b!2754587 m!3169817))

(declare-fun m!3170371 () Bool)

(assert (=> bm!178430 m!3170371))

(declare-fun m!3170373 () Bool)

(assert (=> bm!178427 m!3170373))

(declare-fun m!3170375 () Bool)

(assert (=> bm!178429 m!3170375))

(declare-fun m!3170377 () Bool)

(assert (=> b!2754588 m!3170377))

(declare-fun m!3170379 () Bool)

(assert (=> b!2754588 m!3170379))

(declare-fun m!3170381 () Bool)

(assert (=> b!2754588 m!3170381))

(declare-fun m!3170383 () Bool)

(assert (=> b!2754588 m!3170383))

(assert (=> b!2754588 m!3169993))

(assert (=> b!2754588 m!3169995))

(declare-fun m!3170385 () Bool)

(assert (=> b!2754588 m!3170385))

(declare-fun m!3170387 () Bool)

(assert (=> b!2754588 m!3170387))

(declare-fun m!3170389 () Bool)

(assert (=> b!2754588 m!3170389))

(declare-fun m!3170391 () Bool)

(assert (=> b!2754588 m!3170391))

(declare-fun m!3170393 () Bool)

(assert (=> b!2754588 m!3170393))

(declare-fun m!3170395 () Bool)

(assert (=> b!2754588 m!3170395))

(assert (=> b!2754588 m!3169817))

(assert (=> b!2754588 m!3170389))

(declare-fun m!3170397 () Bool)

(assert (=> b!2754588 m!3170397))

(declare-fun m!3170399 () Bool)

(assert (=> b!2754588 m!3170399))

(declare-fun m!3170401 () Bool)

(assert (=> b!2754588 m!3170401))

(assert (=> b!2754588 m!3170353))

(assert (=> b!2754588 m!3170211))

(assert (=> b!2754588 m!3170393))

(declare-fun m!3170403 () Bool)

(assert (=> b!2754588 m!3170403))

(assert (=> b!2754588 m!3170397))

(declare-fun m!3170405 () Bool)

(assert (=> b!2754588 m!3170405))

(assert (=> b!2754588 m!3169835))

(assert (=> b!2754588 m!3170377))

(declare-fun m!3170407 () Bool)

(assert (=> b!2754588 m!3170407))

(assert (=> bm!178431 m!3169995))

(assert (=> b!2754592 m!3169817))

(declare-fun m!3170409 () Bool)

(assert (=> bm!178426 m!3170409))

(declare-fun m!3170411 () Bool)

(assert (=> bm!178432 m!3170411))

(declare-fun m!3170413 () Bool)

(assert (=> bm!178425 m!3170413))

(declare-fun m!3170415 () Bool)

(assert (=> bm!178424 m!3170415))

(assert (=> bm!178331 d!797188))

(declare-fun b!2754593 () Bool)

(declare-fun e!1736817 () List!31989)

(assert (=> b!2754593 (= e!1736817 lt!976159)))

(declare-fun b!2754594 () Bool)

(assert (=> b!2754594 (= e!1736817 (Cons!31889 (h!37309 lt!976180) (++!7894 (t!228093 lt!976180) lt!976159)))))

(declare-fun lt!976608 () List!31989)

(declare-fun e!1736818 () Bool)

(declare-fun b!2754596 () Bool)

(assert (=> b!2754596 (= e!1736818 (or (not (= lt!976159 Nil!31889)) (= lt!976608 lt!976180)))))

(declare-fun d!797190 () Bool)

(assert (=> d!797190 e!1736818))

(declare-fun res!1154432 () Bool)

(assert (=> d!797190 (=> (not res!1154432) (not e!1736818))))

(assert (=> d!797190 (= res!1154432 (= (content!4490 lt!976608) ((_ map or) (content!4490 lt!976180) (content!4490 lt!976159))))))

(assert (=> d!797190 (= lt!976608 e!1736817)))

(declare-fun c!445890 () Bool)

(assert (=> d!797190 (= c!445890 ((_ is Nil!31889) lt!976180))))

(assert (=> d!797190 (= (++!7894 lt!976180 lt!976159) lt!976608)))

(declare-fun b!2754595 () Bool)

(declare-fun res!1154433 () Bool)

(assert (=> b!2754595 (=> (not res!1154433) (not e!1736818))))

(assert (=> b!2754595 (= res!1154433 (= (size!24655 lt!976608) (+ (size!24655 lt!976180) (size!24655 lt!976159))))))

(assert (= (and d!797190 c!445890) b!2754593))

(assert (= (and d!797190 (not c!445890)) b!2754594))

(assert (= (and d!797190 res!1154432) b!2754595))

(assert (= (and b!2754595 res!1154433) b!2754596))

(declare-fun m!3170417 () Bool)

(assert (=> b!2754594 m!3170417))

(declare-fun m!3170419 () Bool)

(assert (=> d!797190 m!3170419))

(declare-fun m!3170421 () Bool)

(assert (=> d!797190 m!3170421))

(declare-fun m!3170423 () Bool)

(assert (=> d!797190 m!3170423))

(declare-fun m!3170425 () Bool)

(assert (=> b!2754595 m!3170425))

(assert (=> b!2754595 m!3169919))

(declare-fun m!3170427 () Bool)

(assert (=> b!2754595 m!3170427))

(assert (=> b!2754288 d!797190))

(assert (=> b!2754288 d!797126))

(declare-fun b!2754597 () Bool)

(declare-fun e!1736819 () List!31989)

(assert (=> b!2754597 (= e!1736819 (Cons!31889 lt!976150 Nil!31889))))

(declare-fun b!2754598 () Bool)

(assert (=> b!2754598 (= e!1736819 (Cons!31889 (h!37309 Nil!31889) (++!7894 (t!228093 Nil!31889) (Cons!31889 lt!976150 Nil!31889))))))

(declare-fun b!2754600 () Bool)

(declare-fun e!1736820 () Bool)

(declare-fun lt!976609 () List!31989)

(assert (=> b!2754600 (= e!1736820 (or (not (= (Cons!31889 lt!976150 Nil!31889) Nil!31889)) (= lt!976609 Nil!31889)))))

(declare-fun d!797192 () Bool)

(assert (=> d!797192 e!1736820))

(declare-fun res!1154434 () Bool)

(assert (=> d!797192 (=> (not res!1154434) (not e!1736820))))

(assert (=> d!797192 (= res!1154434 (= (content!4490 lt!976609) ((_ map or) (content!4490 Nil!31889) (content!4490 (Cons!31889 lt!976150 Nil!31889)))))))

(assert (=> d!797192 (= lt!976609 e!1736819)))

(declare-fun c!445891 () Bool)

(assert (=> d!797192 (= c!445891 ((_ is Nil!31889) Nil!31889))))

(assert (=> d!797192 (= (++!7894 Nil!31889 (Cons!31889 lt!976150 Nil!31889)) lt!976609)))

(declare-fun b!2754599 () Bool)

(declare-fun res!1154435 () Bool)

(assert (=> b!2754599 (=> (not res!1154435) (not e!1736820))))

(assert (=> b!2754599 (= res!1154435 (= (size!24655 lt!976609) (+ (size!24655 Nil!31889) (size!24655 (Cons!31889 lt!976150 Nil!31889)))))))

(assert (= (and d!797192 c!445891) b!2754597))

(assert (= (and d!797192 (not c!445891)) b!2754598))

(assert (= (and d!797192 res!1154434) b!2754599))

(assert (= (and b!2754599 res!1154435) b!2754600))

(declare-fun m!3170429 () Bool)

(assert (=> b!2754598 m!3170429))

(declare-fun m!3170431 () Bool)

(assert (=> d!797192 m!3170431))

(assert (=> d!797192 m!3170165))

(declare-fun m!3170433 () Bool)

(assert (=> d!797192 m!3170433))

(declare-fun m!3170435 () Bool)

(assert (=> b!2754599 m!3170435))

(assert (=> b!2754599 m!3169785))

(declare-fun m!3170437 () Bool)

(assert (=> b!2754599 m!3170437))

(assert (=> b!2754288 d!797192))

(assert (=> b!2754288 d!797114))

(declare-fun d!797194 () Bool)

(assert (=> d!797194 (= (++!7894 (++!7894 Nil!31889 (Cons!31889 lt!976150 Nil!31889)) lt!976159) lt!976172)))

(declare-fun lt!976610 () Unit!45692)

(assert (=> d!797194 (= lt!976610 (choose!16146 Nil!31889 lt!976150 lt!976159 lt!976172))))

(assert (=> d!797194 (= (++!7894 Nil!31889 (Cons!31889 lt!976150 lt!976159)) lt!976172)))

(assert (=> d!797194 (= (lemmaMoveElementToOtherListKeepsConcatEq!851 Nil!31889 lt!976150 lt!976159 lt!976172) lt!976610)))

(declare-fun bs!490592 () Bool)

(assert (= bs!490592 d!797194))

(assert (=> bs!490592 m!3169903))

(assert (=> bs!490592 m!3169903))

(declare-fun m!3170439 () Bool)

(assert (=> bs!490592 m!3170439))

(declare-fun m!3170441 () Bool)

(assert (=> bs!490592 m!3170441))

(declare-fun m!3170443 () Bool)

(assert (=> bs!490592 m!3170443))

(assert (=> b!2754288 d!797194))

(assert (=> b!2754288 d!797132))

(assert (=> b!2754288 d!797138))

(assert (=> b!2754288 d!797120))

(assert (=> b!2754288 d!797122))

(assert (=> b!2754288 d!797124))

(assert (=> b!2754288 d!797134))

(declare-fun d!797196 () Bool)

(assert (=> d!797196 (= (head!6130 lt!976172) (h!37309 lt!976172))))

(assert (=> b!2754288 d!797196))

(assert (=> bm!178336 d!797154))

(declare-fun d!797198 () Bool)

(declare-fun e!1736821 () Bool)

(assert (=> d!797198 e!1736821))

(declare-fun res!1154436 () Bool)

(assert (=> d!797198 (=> (not res!1154436) (not e!1736821))))

(declare-fun lt!976611 () tuple3!4668)

(assert (=> d!797198 (= res!1154436 (valid!2894 (_2!18761 lt!976611)))))

(assert (=> d!797198 (= lt!976611 (choose!16140 (ite c!445774 (_2!18762 lt!976189) (_2!18762 lt!976173)) (ite c!445774 (_3!2805 lt!976189) (_3!2805 lt!976173)) (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149))))

(assert (=> d!797198 (= (++!7894 lt!976170 lt!976151) (list!12044 input!5495))))

(assert (=> d!797198 (= (findLongestMatchInnerZipperFastMem!14 (ite c!445774 (_2!18762 lt!976189) (_2!18762 lt!976173)) (ite c!445774 (_3!2805 lt!976189) (_3!2805 lt!976173)) (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149) lt!976611)))

(declare-fun b!2754601 () Bool)

(declare-fun res!1154437 () Bool)

(assert (=> b!2754601 (=> (not res!1154437) (not e!1736821))))

(assert (=> b!2754601 (= res!1154437 (valid!2893 (_3!2804 lt!976611)))))

(declare-fun b!2754602 () Bool)

(assert (=> b!2754602 (= e!1736821 (= (_1!18761 lt!976611) (findLongestMatchInnerZipperFast!17 (ite c!445774 (_1!18762 lt!976189) (_1!18762 lt!976173)) lt!976170 1 lt!976151 input!5495 lt!976149)))))

(assert (= (and d!797198 res!1154436) b!2754601))

(assert (= (and b!2754601 res!1154437) b!2754602))

(declare-fun m!3170445 () Bool)

(assert (=> d!797198 m!3170445))

(declare-fun m!3170447 () Bool)

(assert (=> d!797198 m!3170447))

(assert (=> d!797198 m!3169795))

(assert (=> d!797198 m!3169817))

(declare-fun m!3170449 () Bool)

(assert (=> b!2754601 m!3170449))

(assert (=> b!2754602 m!3169889))

(assert (=> bm!178342 d!797198))

(assert (=> bm!178328 d!797062))

(declare-fun d!797200 () Bool)

(assert (=> d!797200 (= (array_inv!4231 (_keys!4027 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) (bvsge (size!24653 (_keys!4027 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2754277 d!797200))

(declare-fun d!797202 () Bool)

(assert (=> d!797202 (= (array_inv!4232 (_values!4008 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) (bvsge (size!24654 (_values!4008 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2754277 d!797202))

(declare-fun bs!490593 () Bool)

(declare-fun d!797204 () Bool)

(assert (= bs!490593 (and d!797204 d!797152)))

(declare-fun lambda!101017 () Int)

(assert (=> bs!490593 (= (= lt!976168 lt!976150) (= lambda!101017 lambda!101013))))

(assert (=> d!797204 true))

(assert (=> d!797204 (= (derivationStepZipper!350 z!3597 lt!976168) (flatMap!177 z!3597 lambda!101017))))

(declare-fun bs!490594 () Bool)

(assert (= bs!490594 d!797204))

(declare-fun m!3170451 () Bool)

(assert (=> bs!490594 m!3170451))

(assert (=> bm!178337 d!797204))

(declare-fun e!1736826 () Bool)

(declare-fun tp!870394 () Bool)

(declare-fun tp!870395 () Bool)

(declare-fun b!2754611 () Bool)

(assert (=> b!2754611 (= e!1736826 (and (inv!43301 (left!24338 (c!445787 input!5495))) tp!870394 (inv!43301 (right!24668 (c!445787 input!5495))) tp!870395))))

(declare-fun b!2754613 () Bool)

(declare-fun e!1736827 () Bool)

(declare-fun tp!870396 () Bool)

(assert (=> b!2754613 (= e!1736827 tp!870396)))

(declare-fun b!2754612 () Bool)

(declare-fun inv!43308 (IArray!19887) Bool)

(assert (=> b!2754612 (= e!1736826 (and (inv!43308 (xs!13048 (c!445787 input!5495))) e!1736827))))

(assert (=> b!2754279 (= tp!870387 (and (inv!43301 (c!445787 input!5495)) e!1736826))))

(assert (= (and b!2754279 ((_ is Node!9941) (c!445787 input!5495))) b!2754611))

(assert (= b!2754612 b!2754613))

(assert (= (and b!2754279 ((_ is Leaf!15139) (c!445787 input!5495))) b!2754612))

(declare-fun m!3170453 () Bool)

(assert (=> b!2754611 m!3170453))

(declare-fun m!3170455 () Bool)

(assert (=> b!2754611 m!3170455))

(declare-fun m!3170457 () Bool)

(assert (=> b!2754612 m!3170457))

(assert (=> b!2754279 m!3169763))

(declare-fun setIsEmpty!22110 () Bool)

(declare-fun setRes!22110 () Bool)

(assert (=> setIsEmpty!22110 setRes!22110))

(declare-fun b!2754622 () Bool)

(declare-fun e!1736836 () Bool)

(declare-fun tp!870408 () Bool)

(assert (=> b!2754622 (= e!1736836 tp!870408)))

(declare-fun b!2754623 () Bool)

(declare-fun e!1736835 () Bool)

(declare-fun tp!870410 () Bool)

(assert (=> b!2754623 (= e!1736835 tp!870410)))

(declare-fun setElem!22110 () Context!4554)

(declare-fun setNonEmpty!22110 () Bool)

(declare-fun tp!870411 () Bool)

(assert (=> setNonEmpty!22110 (= setRes!22110 (and tp!870411 (inv!43302 setElem!22110) e!1736835))))

(declare-fun setRest!22110 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22110 (= (_2!18759 (h!37308 mapDefault!16939)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22110 true) setRest!22110))))

(declare-fun tp!870409 () Bool)

(declare-fun b!2754624 () Bool)

(declare-fun e!1736834 () Bool)

(declare-fun tp_is_empty!13993 () Bool)

(declare-fun tp!870407 () Bool)

(assert (=> b!2754624 (= e!1736834 (and tp!870407 (inv!43302 (_2!18758 (_1!18759 (h!37308 mapDefault!16939)))) e!1736836 tp_is_empty!13993 setRes!22110 tp!870409))))

(declare-fun condSetEmpty!22110 () Bool)

(assert (=> b!2754624 (= condSetEmpty!22110 (= (_2!18759 (h!37308 mapDefault!16939)) ((as const (Array Context!4554 Bool)) false)))))

(assert (=> b!2754271 (= tp!870383 e!1736834)))

(assert (= b!2754624 b!2754622))

(assert (= (and b!2754624 condSetEmpty!22110) setIsEmpty!22110))

(assert (= (and b!2754624 (not condSetEmpty!22110)) setNonEmpty!22110))

(assert (= setNonEmpty!22110 b!2754623))

(assert (= (and b!2754271 ((_ is Cons!31888) mapDefault!16939)) b!2754624))

(declare-fun m!3170459 () Bool)

(assert (=> setNonEmpty!22110 m!3170459))

(declare-fun m!3170461 () Bool)

(assert (=> b!2754624 m!3170461))

(declare-fun b!2754629 () Bool)

(declare-fun e!1736839 () Bool)

(declare-fun tp!870416 () Bool)

(declare-fun tp!870417 () Bool)

(assert (=> b!2754629 (= e!1736839 (and tp!870416 tp!870417))))

(assert (=> b!2754285 (= tp!870382 e!1736839)))

(assert (= (and b!2754285 ((_ is Cons!31886) (exprs!2777 setElem!22107))) b!2754629))

(declare-fun setNonEmpty!22115 () Bool)

(declare-fun setRes!22116 () Bool)

(declare-fun setElem!22115 () Context!4554)

(declare-fun e!1736857 () Bool)

(declare-fun tp!870438 () Bool)

(assert (=> setNonEmpty!22115 (= setRes!22116 (and tp!870438 (inv!43302 setElem!22115) e!1736857))))

(declare-fun mapValue!16943 () List!31987)

(declare-fun setRest!22115 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22115 (= (_2!18757 (h!37307 mapValue!16943)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22115 true) setRest!22115))))

(declare-fun setIsEmpty!22115 () Bool)

(declare-fun setRes!22115 () Bool)

(assert (=> setIsEmpty!22115 setRes!22115))

(declare-fun mapIsEmpty!16943 () Bool)

(declare-fun mapRes!16943 () Bool)

(assert (=> mapIsEmpty!16943 mapRes!16943))

(declare-fun e!1736854 () Bool)

(declare-fun tp!870436 () Bool)

(declare-fun b!2754645 () Bool)

(declare-fun e!1736856 () Bool)

(assert (=> b!2754645 (= e!1736856 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 mapValue!16943)))) e!1736854 tp_is_empty!13993 setRes!22116 tp!870436))))

(declare-fun condSetEmpty!22116 () Bool)

(assert (=> b!2754645 (= condSetEmpty!22116 (= (_2!18757 (h!37307 mapValue!16943)) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun e!1736855 () Bool)

(declare-fun setElem!22116 () Context!4554)

(declare-fun tp!870440 () Bool)

(declare-fun setNonEmpty!22116 () Bool)

(assert (=> setNonEmpty!22116 (= setRes!22115 (and tp!870440 (inv!43302 setElem!22116) e!1736855))))

(declare-fun mapDefault!16943 () List!31987)

(declare-fun setRest!22116 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22116 (= (_2!18757 (h!37307 mapDefault!16943)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22116 true) setRest!22116))))

(declare-fun setIsEmpty!22116 () Bool)

(assert (=> setIsEmpty!22116 setRes!22116))

(declare-fun b!2754646 () Bool)

(declare-fun tp!870437 () Bool)

(assert (=> b!2754646 (= e!1736857 tp!870437)))

(declare-fun mapNonEmpty!16943 () Bool)

(declare-fun tp!870443 () Bool)

(assert (=> mapNonEmpty!16943 (= mapRes!16943 (and tp!870443 e!1736856))))

(declare-fun mapRest!16943 () (Array (_ BitVec 32) List!31987))

(declare-fun mapKey!16943 () (_ BitVec 32))

(assert (=> mapNonEmpty!16943 (= mapRest!16940 (store mapRest!16943 mapKey!16943 mapValue!16943))))

(declare-fun e!1736852 () Bool)

(declare-fun tp!870439 () Bool)

(declare-fun b!2754647 () Bool)

(declare-fun e!1736853 () Bool)

(assert (=> b!2754647 (= e!1736852 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 mapDefault!16943)))) e!1736853 tp_is_empty!13993 setRes!22115 tp!870439))))

(declare-fun condSetEmpty!22115 () Bool)

(assert (=> b!2754647 (= condSetEmpty!22115 (= (_2!18757 (h!37307 mapDefault!16943)) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun b!2754648 () Bool)

(declare-fun tp!870444 () Bool)

(assert (=> b!2754648 (= e!1736855 tp!870444)))

(declare-fun b!2754649 () Bool)

(declare-fun tp!870442 () Bool)

(assert (=> b!2754649 (= e!1736854 tp!870442)))

(declare-fun b!2754644 () Bool)

(declare-fun tp!870441 () Bool)

(assert (=> b!2754644 (= e!1736853 tp!870441)))

(declare-fun condMapEmpty!16943 () Bool)

(assert (=> mapNonEmpty!16940 (= condMapEmpty!16943 (= mapRest!16940 ((as const (Array (_ BitVec 32) List!31987)) mapDefault!16943)))))

(assert (=> mapNonEmpty!16940 (= tp!870377 (and e!1736852 mapRes!16943))))

(assert (= (and mapNonEmpty!16940 condMapEmpty!16943) mapIsEmpty!16943))

(assert (= (and mapNonEmpty!16940 (not condMapEmpty!16943)) mapNonEmpty!16943))

(assert (= b!2754645 b!2754649))

(assert (= (and b!2754645 condSetEmpty!22116) setIsEmpty!22116))

(assert (= (and b!2754645 (not condSetEmpty!22116)) setNonEmpty!22115))

(assert (= setNonEmpty!22115 b!2754646))

(assert (= (and mapNonEmpty!16943 ((_ is Cons!31887) mapValue!16943)) b!2754645))

(assert (= b!2754647 b!2754644))

(assert (= (and b!2754647 condSetEmpty!22115) setIsEmpty!22115))

(assert (= (and b!2754647 (not condSetEmpty!22115)) setNonEmpty!22116))

(assert (= setNonEmpty!22116 b!2754648))

(assert (= (and mapNonEmpty!16940 ((_ is Cons!31887) mapDefault!16943)) b!2754647))

(declare-fun m!3170463 () Bool)

(assert (=> setNonEmpty!22115 m!3170463))

(declare-fun m!3170465 () Bool)

(assert (=> mapNonEmpty!16943 m!3170465))

(declare-fun m!3170467 () Bool)

(assert (=> b!2754647 m!3170467))

(declare-fun m!3170469 () Bool)

(assert (=> b!2754645 m!3170469))

(declare-fun m!3170471 () Bool)

(assert (=> setNonEmpty!22116 m!3170471))

(declare-fun e!1736866 () Bool)

(assert (=> mapNonEmpty!16940 (= tp!870374 e!1736866)))

(declare-fun setNonEmpty!22119 () Bool)

(declare-fun setRes!22119 () Bool)

(declare-fun tp!870456 () Bool)

(declare-fun setElem!22119 () Context!4554)

(declare-fun e!1736865 () Bool)

(assert (=> setNonEmpty!22119 (= setRes!22119 (and tp!870456 (inv!43302 setElem!22119) e!1736865))))

(declare-fun setRest!22119 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22119 (= (_2!18757 (h!37307 mapValue!16939)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22119 true) setRest!22119))))

(declare-fun b!2754658 () Bool)

(declare-fun tp!870454 () Bool)

(assert (=> b!2754658 (= e!1736865 tp!870454)))

(declare-fun b!2754659 () Bool)

(declare-fun e!1736864 () Bool)

(declare-fun tp!870455 () Bool)

(assert (=> b!2754659 (= e!1736864 tp!870455)))

(declare-fun tp!870453 () Bool)

(declare-fun b!2754660 () Bool)

(assert (=> b!2754660 (= e!1736866 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 mapValue!16939)))) e!1736864 tp_is_empty!13993 setRes!22119 tp!870453))))

(declare-fun condSetEmpty!22119 () Bool)

(assert (=> b!2754660 (= condSetEmpty!22119 (= (_2!18757 (h!37307 mapValue!16939)) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setIsEmpty!22119 () Bool)

(assert (=> setIsEmpty!22119 setRes!22119))

(assert (= b!2754660 b!2754659))

(assert (= (and b!2754660 condSetEmpty!22119) setIsEmpty!22119))

(assert (= (and b!2754660 (not condSetEmpty!22119)) setNonEmpty!22119))

(assert (= setNonEmpty!22119 b!2754658))

(assert (= (and mapNonEmpty!16940 ((_ is Cons!31887) mapValue!16939)) b!2754660))

(declare-fun m!3170473 () Bool)

(assert (=> setNonEmpty!22119 m!3170473))

(declare-fun m!3170475 () Bool)

(assert (=> b!2754660 m!3170475))

(declare-fun b!2754675 () Bool)

(declare-fun e!1736882 () Bool)

(declare-fun tp!870486 () Bool)

(assert (=> b!2754675 (= e!1736882 tp!870486)))

(declare-fun mapNonEmpty!16946 () Bool)

(declare-fun mapRes!16946 () Bool)

(declare-fun tp!870488 () Bool)

(declare-fun e!1736879 () Bool)

(assert (=> mapNonEmpty!16946 (= mapRes!16946 (and tp!870488 e!1736879))))

(declare-fun mapRest!16946 () (Array (_ BitVec 32) List!31988))

(declare-fun mapKey!16946 () (_ BitVec 32))

(declare-fun mapValue!16946 () List!31988)

(assert (=> mapNonEmpty!16946 (= mapRest!16939 (store mapRest!16946 mapKey!16946 mapValue!16946))))

(declare-fun setNonEmpty!22124 () Bool)

(declare-fun tp!870485 () Bool)

(declare-fun setRes!22124 () Bool)

(declare-fun setElem!22125 () Context!4554)

(assert (=> setNonEmpty!22124 (= setRes!22124 (and tp!870485 (inv!43302 setElem!22125) e!1736882))))

(declare-fun setRest!22124 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22124 (= (_2!18759 (h!37308 mapValue!16946)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22125 true) setRest!22124))))

(declare-fun condMapEmpty!16946 () Bool)

(declare-fun mapDefault!16946 () List!31988)

(assert (=> mapNonEmpty!16939 (= condMapEmpty!16946 (= mapRest!16939 ((as const (Array (_ BitVec 32) List!31988)) mapDefault!16946)))))

(declare-fun e!1736883 () Bool)

(assert (=> mapNonEmpty!16939 (= tp!870386 (and e!1736883 mapRes!16946))))

(declare-fun b!2754676 () Bool)

(declare-fun e!1736880 () Bool)

(declare-fun tp!870479 () Bool)

(assert (=> b!2754676 (= e!1736880 tp!870479)))

(declare-fun mapIsEmpty!16946 () Bool)

(assert (=> mapIsEmpty!16946 mapRes!16946))

(declare-fun setIsEmpty!22124 () Bool)

(assert (=> setIsEmpty!22124 setRes!22124))

(declare-fun b!2754677 () Bool)

(declare-fun e!1736881 () Bool)

(declare-fun tp!870484 () Bool)

(assert (=> b!2754677 (= e!1736881 tp!870484)))

(declare-fun tp!870489 () Bool)

(declare-fun b!2754678 () Bool)

(declare-fun tp!870480 () Bool)

(assert (=> b!2754678 (= e!1736879 (and tp!870480 (inv!43302 (_2!18758 (_1!18759 (h!37308 mapValue!16946)))) e!1736880 tp_is_empty!13993 setRes!22124 tp!870489))))

(declare-fun condSetEmpty!22124 () Bool)

(assert (=> b!2754678 (= condSetEmpty!22124 (= (_2!18759 (h!37308 mapValue!16946)) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setNonEmpty!22125 () Bool)

(declare-fun setElem!22124 () Context!4554)

(declare-fun tp!870481 () Bool)

(declare-fun setRes!22125 () Bool)

(assert (=> setNonEmpty!22125 (= setRes!22125 (and tp!870481 (inv!43302 setElem!22124) e!1736881))))

(declare-fun setRest!22125 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22125 (= (_2!18759 (h!37308 mapDefault!16946)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22124 true) setRest!22125))))

(declare-fun b!2754679 () Bool)

(declare-fun e!1736884 () Bool)

(declare-fun tp!870483 () Bool)

(assert (=> b!2754679 (= e!1736884 tp!870483)))

(declare-fun setIsEmpty!22125 () Bool)

(assert (=> setIsEmpty!22125 setRes!22125))

(declare-fun tp!870482 () Bool)

(declare-fun tp!870487 () Bool)

(declare-fun b!2754680 () Bool)

(assert (=> b!2754680 (= e!1736883 (and tp!870482 (inv!43302 (_2!18758 (_1!18759 (h!37308 mapDefault!16946)))) e!1736884 tp_is_empty!13993 setRes!22125 tp!870487))))

(declare-fun condSetEmpty!22125 () Bool)

(assert (=> b!2754680 (= condSetEmpty!22125 (= (_2!18759 (h!37308 mapDefault!16946)) ((as const (Array Context!4554 Bool)) false)))))

(assert (= (and mapNonEmpty!16939 condMapEmpty!16946) mapIsEmpty!16946))

(assert (= (and mapNonEmpty!16939 (not condMapEmpty!16946)) mapNonEmpty!16946))

(assert (= b!2754678 b!2754676))

(assert (= (and b!2754678 condSetEmpty!22124) setIsEmpty!22124))

(assert (= (and b!2754678 (not condSetEmpty!22124)) setNonEmpty!22124))

(assert (= setNonEmpty!22124 b!2754675))

(assert (= (and mapNonEmpty!16946 ((_ is Cons!31888) mapValue!16946)) b!2754678))

(assert (= b!2754680 b!2754679))

(assert (= (and b!2754680 condSetEmpty!22125) setIsEmpty!22125))

(assert (= (and b!2754680 (not condSetEmpty!22125)) setNonEmpty!22125))

(assert (= setNonEmpty!22125 b!2754677))

(assert (= (and mapNonEmpty!16939 ((_ is Cons!31888) mapDefault!16946)) b!2754680))

(declare-fun m!3170477 () Bool)

(assert (=> b!2754680 m!3170477))

(declare-fun m!3170479 () Bool)

(assert (=> setNonEmpty!22125 m!3170479))

(declare-fun m!3170481 () Bool)

(assert (=> mapNonEmpty!16946 m!3170481))

(declare-fun m!3170483 () Bool)

(assert (=> b!2754678 m!3170483))

(declare-fun m!3170485 () Bool)

(assert (=> setNonEmpty!22124 m!3170485))

(declare-fun setIsEmpty!22126 () Bool)

(declare-fun setRes!22126 () Bool)

(assert (=> setIsEmpty!22126 setRes!22126))

(declare-fun b!2754681 () Bool)

(declare-fun e!1736887 () Bool)

(declare-fun tp!870491 () Bool)

(assert (=> b!2754681 (= e!1736887 tp!870491)))

(declare-fun b!2754682 () Bool)

(declare-fun e!1736886 () Bool)

(declare-fun tp!870493 () Bool)

(assert (=> b!2754682 (= e!1736886 tp!870493)))

(declare-fun setElem!22126 () Context!4554)

(declare-fun setNonEmpty!22126 () Bool)

(declare-fun tp!870494 () Bool)

(assert (=> setNonEmpty!22126 (= setRes!22126 (and tp!870494 (inv!43302 setElem!22126) e!1736886))))

(declare-fun setRest!22126 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22126 (= (_2!18759 (h!37308 mapValue!16940)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22126 true) setRest!22126))))

(declare-fun e!1736885 () Bool)

(declare-fun tp!870490 () Bool)

(declare-fun tp!870492 () Bool)

(declare-fun b!2754683 () Bool)

(assert (=> b!2754683 (= e!1736885 (and tp!870490 (inv!43302 (_2!18758 (_1!18759 (h!37308 mapValue!16940)))) e!1736887 tp_is_empty!13993 setRes!22126 tp!870492))))

(declare-fun condSetEmpty!22126 () Bool)

(assert (=> b!2754683 (= condSetEmpty!22126 (= (_2!18759 (h!37308 mapValue!16940)) ((as const (Array Context!4554 Bool)) false)))))

(assert (=> mapNonEmpty!16939 (= tp!870378 e!1736885)))

(assert (= b!2754683 b!2754681))

(assert (= (and b!2754683 condSetEmpty!22126) setIsEmpty!22126))

(assert (= (and b!2754683 (not condSetEmpty!22126)) setNonEmpty!22126))

(assert (= setNonEmpty!22126 b!2754682))

(assert (= (and mapNonEmpty!16939 ((_ is Cons!31888) mapValue!16940)) b!2754683))

(declare-fun m!3170487 () Bool)

(assert (=> setNonEmpty!22126 m!3170487))

(declare-fun m!3170489 () Bool)

(assert (=> b!2754683 m!3170489))

(declare-fun condSetEmpty!22129 () Bool)

(assert (=> setNonEmpty!22107 (= condSetEmpty!22129 (= setRest!22107 ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setRes!22129 () Bool)

(assert (=> setNonEmpty!22107 (= tp!870385 setRes!22129)))

(declare-fun setIsEmpty!22129 () Bool)

(assert (=> setIsEmpty!22129 setRes!22129))

(declare-fun tp!870500 () Bool)

(declare-fun setElem!22129 () Context!4554)

(declare-fun e!1736890 () Bool)

(declare-fun setNonEmpty!22129 () Bool)

(assert (=> setNonEmpty!22129 (= setRes!22129 (and tp!870500 (inv!43302 setElem!22129) e!1736890))))

(declare-fun setRest!22129 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22129 (= setRest!22107 ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22129 true) setRest!22129))))

(declare-fun b!2754688 () Bool)

(declare-fun tp!870499 () Bool)

(assert (=> b!2754688 (= e!1736890 tp!870499)))

(assert (= (and setNonEmpty!22107 condSetEmpty!22129) setIsEmpty!22129))

(assert (= (and setNonEmpty!22107 (not condSetEmpty!22129)) setNonEmpty!22129))

(assert (= setNonEmpty!22129 b!2754688))

(declare-fun m!3170491 () Bool)

(assert (=> setNonEmpty!22129 m!3170491))

(declare-fun e!1736893 () Bool)

(assert (=> b!2754280 (= tp!870373 e!1736893)))

(declare-fun setNonEmpty!22130 () Bool)

(declare-fun e!1736892 () Bool)

(declare-fun setElem!22130 () Context!4554)

(declare-fun tp!870504 () Bool)

(declare-fun setRes!22130 () Bool)

(assert (=> setNonEmpty!22130 (= setRes!22130 (and tp!870504 (inv!43302 setElem!22130) e!1736892))))

(declare-fun setRest!22130 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22130 (= (_2!18757 (h!37307 (zeroValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22130 true) setRest!22130))))

(declare-fun b!2754689 () Bool)

(declare-fun tp!870502 () Bool)

(assert (=> b!2754689 (= e!1736892 tp!870502)))

(declare-fun b!2754690 () Bool)

(declare-fun e!1736891 () Bool)

(declare-fun tp!870503 () Bool)

(assert (=> b!2754690 (= e!1736891 tp!870503)))

(declare-fun tp!870501 () Bool)

(declare-fun b!2754691 () Bool)

(assert (=> b!2754691 (= e!1736893 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 (zeroValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))))) e!1736891 tp_is_empty!13993 setRes!22130 tp!870501))))

(declare-fun condSetEmpty!22130 () Bool)

(assert (=> b!2754691 (= condSetEmpty!22130 (= (_2!18757 (h!37307 (zeroValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setIsEmpty!22130 () Bool)

(assert (=> setIsEmpty!22130 setRes!22130))

(assert (= b!2754691 b!2754690))

(assert (= (and b!2754691 condSetEmpty!22130) setIsEmpty!22130))

(assert (= (and b!2754691 (not condSetEmpty!22130)) setNonEmpty!22130))

(assert (= setNonEmpty!22130 b!2754689))

(assert (= (and b!2754280 ((_ is Cons!31887) (zeroValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) b!2754691))

(declare-fun m!3170493 () Bool)

(assert (=> setNonEmpty!22130 m!3170493))

(declare-fun m!3170495 () Bool)

(assert (=> b!2754691 m!3170495))

(declare-fun e!1736896 () Bool)

(assert (=> b!2754280 (= tp!870371 e!1736896)))

(declare-fun setNonEmpty!22131 () Bool)

(declare-fun tp!870508 () Bool)

(declare-fun setElem!22131 () Context!4554)

(declare-fun e!1736895 () Bool)

(declare-fun setRes!22131 () Bool)

(assert (=> setNonEmpty!22131 (= setRes!22131 (and tp!870508 (inv!43302 setElem!22131) e!1736895))))

(declare-fun setRest!22131 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22131 (= (_2!18757 (h!37307 (minValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22131 true) setRest!22131))))

(declare-fun b!2754692 () Bool)

(declare-fun tp!870506 () Bool)

(assert (=> b!2754692 (= e!1736895 tp!870506)))

(declare-fun b!2754693 () Bool)

(declare-fun e!1736894 () Bool)

(declare-fun tp!870507 () Bool)

(assert (=> b!2754693 (= e!1736894 tp!870507)))

(declare-fun tp!870505 () Bool)

(declare-fun b!2754694 () Bool)

(assert (=> b!2754694 (= e!1736896 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 (minValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))))) e!1736894 tp_is_empty!13993 setRes!22131 tp!870505))))

(declare-fun condSetEmpty!22131 () Bool)

(assert (=> b!2754694 (= condSetEmpty!22131 (= (_2!18757 (h!37307 (minValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setIsEmpty!22131 () Bool)

(assert (=> setIsEmpty!22131 setRes!22131))

(assert (= b!2754694 b!2754693))

(assert (= (and b!2754694 condSetEmpty!22131) setIsEmpty!22131))

(assert (= (and b!2754694 (not condSetEmpty!22131)) setNonEmpty!22131))

(assert (= setNonEmpty!22131 b!2754692))

(assert (= (and b!2754280 ((_ is Cons!31887) (minValue!3985 (v!33496 (underlying!7655 (v!33497 (underlying!7656 (cache!3775 cacheUp!820)))))))) b!2754694))

(declare-fun m!3170497 () Bool)

(assert (=> setNonEmpty!22131 m!3170497))

(declare-fun m!3170499 () Bool)

(assert (=> b!2754694 m!3170499))

(declare-fun setIsEmpty!22132 () Bool)

(declare-fun setRes!22132 () Bool)

(assert (=> setIsEmpty!22132 setRes!22132))

(declare-fun b!2754695 () Bool)

(declare-fun e!1736899 () Bool)

(declare-fun tp!870510 () Bool)

(assert (=> b!2754695 (= e!1736899 tp!870510)))

(declare-fun b!2754696 () Bool)

(declare-fun e!1736898 () Bool)

(declare-fun tp!870512 () Bool)

(assert (=> b!2754696 (= e!1736898 tp!870512)))

(declare-fun tp!870513 () Bool)

(declare-fun setElem!22132 () Context!4554)

(declare-fun setNonEmpty!22132 () Bool)

(assert (=> setNonEmpty!22132 (= setRes!22132 (and tp!870513 (inv!43302 setElem!22132) e!1736898))))

(declare-fun setRest!22132 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22132 (= (_2!18759 (h!37308 (zeroValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22132 true) setRest!22132))))

(declare-fun b!2754697 () Bool)

(declare-fun e!1736897 () Bool)

(declare-fun tp!870511 () Bool)

(declare-fun tp!870509 () Bool)

(assert (=> b!2754697 (= e!1736897 (and tp!870509 (inv!43302 (_2!18758 (_1!18759 (h!37308 (zeroValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))))) e!1736899 tp_is_empty!13993 setRes!22132 tp!870511))))

(declare-fun condSetEmpty!22132 () Bool)

(assert (=> b!2754697 (= condSetEmpty!22132 (= (_2!18759 (h!37308 (zeroValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) ((as const (Array Context!4554 Bool)) false)))))

(assert (=> b!2754277 (= tp!870375 e!1736897)))

(assert (= b!2754697 b!2754695))

(assert (= (and b!2754697 condSetEmpty!22132) setIsEmpty!22132))

(assert (= (and b!2754697 (not condSetEmpty!22132)) setNonEmpty!22132))

(assert (= setNonEmpty!22132 b!2754696))

(assert (= (and b!2754277 ((_ is Cons!31888) (zeroValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) b!2754697))

(declare-fun m!3170501 () Bool)

(assert (=> setNonEmpty!22132 m!3170501))

(declare-fun m!3170503 () Bool)

(assert (=> b!2754697 m!3170503))

(declare-fun setIsEmpty!22133 () Bool)

(declare-fun setRes!22133 () Bool)

(assert (=> setIsEmpty!22133 setRes!22133))

(declare-fun b!2754698 () Bool)

(declare-fun e!1736902 () Bool)

(declare-fun tp!870515 () Bool)

(assert (=> b!2754698 (= e!1736902 tp!870515)))

(declare-fun b!2754699 () Bool)

(declare-fun e!1736901 () Bool)

(declare-fun tp!870517 () Bool)

(assert (=> b!2754699 (= e!1736901 tp!870517)))

(declare-fun setNonEmpty!22133 () Bool)

(declare-fun setElem!22133 () Context!4554)

(declare-fun tp!870518 () Bool)

(assert (=> setNonEmpty!22133 (= setRes!22133 (and tp!870518 (inv!43302 setElem!22133) e!1736901))))

(declare-fun setRest!22133 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22133 (= (_2!18759 (h!37308 (minValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22133 true) setRest!22133))))

(declare-fun e!1736900 () Bool)

(declare-fun tp!870516 () Bool)

(declare-fun b!2754700 () Bool)

(declare-fun tp!870514 () Bool)

(assert (=> b!2754700 (= e!1736900 (and tp!870514 (inv!43302 (_2!18758 (_1!18759 (h!37308 (minValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))))) e!1736902 tp_is_empty!13993 setRes!22133 tp!870516))))

(declare-fun condSetEmpty!22133 () Bool)

(assert (=> b!2754700 (= condSetEmpty!22133 (= (_2!18759 (h!37308 (minValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) ((as const (Array Context!4554 Bool)) false)))))

(assert (=> b!2754277 (= tp!870376 e!1736900)))

(assert (= b!2754700 b!2754698))

(assert (= (and b!2754700 condSetEmpty!22133) setIsEmpty!22133))

(assert (= (and b!2754700 (not condSetEmpty!22133)) setNonEmpty!22133))

(assert (= setNonEmpty!22133 b!2754699))

(assert (= (and b!2754277 ((_ is Cons!31888) (minValue!3986 (v!33498 (underlying!7657 (v!33499 (underlying!7658 (cache!3776 cacheDown!939)))))))) b!2754700))

(declare-fun m!3170505 () Bool)

(assert (=> setNonEmpty!22133 m!3170505))

(declare-fun m!3170507 () Bool)

(assert (=> b!2754700 m!3170507))

(declare-fun e!1736905 () Bool)

(assert (=> b!2754290 (= tp!870384 e!1736905)))

(declare-fun e!1736904 () Bool)

(declare-fun setNonEmpty!22134 () Bool)

(declare-fun tp!870522 () Bool)

(declare-fun setElem!22134 () Context!4554)

(declare-fun setRes!22134 () Bool)

(assert (=> setNonEmpty!22134 (= setRes!22134 (and tp!870522 (inv!43302 setElem!22134) e!1736904))))

(declare-fun setRest!22134 () (InoxSet Context!4554))

(assert (=> setNonEmpty!22134 (= (_2!18757 (h!37307 mapDefault!16940)) ((_ map or) (store ((as const (Array Context!4554 Bool)) false) setElem!22134 true) setRest!22134))))

(declare-fun b!2754701 () Bool)

(declare-fun tp!870520 () Bool)

(assert (=> b!2754701 (= e!1736904 tp!870520)))

(declare-fun b!2754702 () Bool)

(declare-fun e!1736903 () Bool)

(declare-fun tp!870521 () Bool)

(assert (=> b!2754702 (= e!1736903 tp!870521)))

(declare-fun b!2754703 () Bool)

(declare-fun tp!870519 () Bool)

(assert (=> b!2754703 (= e!1736905 (and (inv!43302 (_1!18756 (_1!18757 (h!37307 mapDefault!16940)))) e!1736903 tp_is_empty!13993 setRes!22134 tp!870519))))

(declare-fun condSetEmpty!22134 () Bool)

(assert (=> b!2754703 (= condSetEmpty!22134 (= (_2!18757 (h!37307 mapDefault!16940)) ((as const (Array Context!4554 Bool)) false)))))

(declare-fun setIsEmpty!22134 () Bool)

(assert (=> setIsEmpty!22134 setRes!22134))

(assert (= b!2754703 b!2754702))

(assert (= (and b!2754703 condSetEmpty!22134) setIsEmpty!22134))

(assert (= (and b!2754703 (not condSetEmpty!22134)) setNonEmpty!22134))

(assert (= setNonEmpty!22134 b!2754701))

(assert (= (and b!2754290 ((_ is Cons!31887) mapDefault!16940)) b!2754703))

(declare-fun m!3170509 () Bool)

(assert (=> setNonEmpty!22134 m!3170509))

(declare-fun m!3170511 () Bool)

(assert (=> b!2754703 m!3170511))

(check-sat (not bm!178362) (not bm!178396) (not bm!178407) (not b!2754624) (not b!2754629) (not bm!178393) (not b!2754675) (not bm!178363) (not bm!178414) (not d!797118) (not d!797116) (not setNonEmpty!22132) (not b!2754602) (not d!797112) (not bm!178365) (not b!2754519) (not b!2754411) (not b!2754454) (not d!797130) (not b!2754676) (not b!2754568) (not b!2754690) (not b!2754660) (not b!2754402) (not b!2754566) (not d!797090) (not b!2754537) (not d!797068) (not bm!178388) (not b!2754550) (not setNonEmpty!22126) (not d!797082) (not b!2754622) (not b!2754697) (not b!2754453) (not setNonEmpty!22125) (not b!2754691) (not setNonEmpty!22124) (not bm!178391) (not bm!178428) (not b!2754658) (not b!2754533) (not b!2754613) (not d!797162) (not b!2754649) (not b!2754410) (not b!2754592) tp_is_empty!13993 (not setNonEmpty!22131) (not b!2754683) (not b!2754469) (not d!797166) (not bm!178427) (not b!2754612) (not b!2754424) (not b!2754558) (not bm!178359) (not bm!178398) (not b!2754580) b_and!202685 (not b!2754659) (not b!2754397) (not d!797156) (not bm!178397) (not bm!178364) (not bm!178429) (not d!797122) (not b!2754693) (not bm!178423) (not bm!178420) (not bm!178408) (not d!797076) (not b!2754574) (not b!2754599) (not b!2754480) (not b!2754385) (not d!797186) (not b!2754553) (not b!2754520) (not setNonEmpty!22129) (not b!2754534) (not d!797136) (not bm!178433) (not b!2754587) (not b!2754484) (not setNonEmpty!22116) (not b!2754688) (not d!797160) (not d!797098) (not b!2754645) (not d!797078) (not b_next!78645) (not d!797096) (not b!2754557) (not b!2754425) (not b!2754680) (not d!797092) (not bm!178361) (not b_next!78649) (not bm!178405) (not b!2754420) (not b!2754538) (not b!2754472) (not d!797124) (not b!2754348) (not b!2754700) (not d!797178) (not b!2754431) (not d!797170) (not d!797064) (not b!2754623) (not bm!178409) (not b!2754703) (not b!2754442) (not b!2754455) (not b!2754588) (not b!2754535) (not b!2754702) (not b!2754682) (not d!797086) (not b!2754414) (not d!797080) (not b!2754696) (not b!2754381) (not b!2754505) (not setNonEmpty!22110) (not b!2754698) (not setNonEmpty!22130) (not b!2754476) (not b!2754594) (not b!2754508) (not bm!178402) (not bm!178390) (not b!2754473) (not b!2754526) (not d!797204) (not d!797192) (not d!797164) (not b!2754554) (not d!797134) (not b!2754677) (not b!2754392) (not bm!178426) (not bm!178403) (not b!2754430) b_and!202681 (not bm!178400) (not bm!178419) (not b!2754689) (not bm!178410) (not b!2754475) (not b!2754573) (not b!2754482) (not d!797070) (not b!2754701) (not d!797198) (not b!2754681) (not d!797106) (not b!2754279) (not b!2754468) (not setNonEmpty!22119) (not b!2754408) (not bm!178392) (not b!2754648) (not bm!178424) (not b!2754544) (not d!797074) (not bm!178432) (not b!2754646) (not d!797152) (not b!2754549) (not bm!178411) (not bm!178412) (not d!797146) (not b!2754344) (not b!2754349) (not bm!178360) (not d!797072) (not bm!178425) (not b!2754380) (not bm!178366) (not d!797100) (not d!797194) (not bm!178394) (not d!797180) (not b!2754699) (not b!2754695) (not bm!178389) (not d!797144) (not bm!178399) (not b!2754545) (not b!2754470) (not d!797088) (not b!2754647) (not mapNonEmpty!16946) b_and!202679 (not setNonEmpty!22115) (not b!2754471) (not bm!178431) (not d!797084) (not b!2754441) (not b!2754595) (not b!2754524) (not setNonEmpty!22133) (not b!2754403) (not b!2754393) (not bm!178401) (not b!2754598) (not bm!178406) (not b!2754678) (not bm!178404) (not bm!178395) (not d!797188) (not b!2754644) (not bm!178430) (not bm!178387) (not mapNonEmpty!16943) (not d!797128) (not d!797172) (not bm!178413) (not b!2754692) (not b!2754611) (not d!797062) (not b!2754551) (not d!797190) (not b!2754679) (not b!2754694) (not b_next!78651) (not d!797150) b_and!202683 (not d!797142) (not b_next!78647) (not d!797094) (not b!2754483) (not b!2754577) (not d!797066) (not d!797108) (not b!2754338) (not d!797110) (not setNonEmpty!22134) (not b!2754601) (not b!2754517) (not d!797158))
(check-sat b_and!202685 (not b_next!78645) (not b_next!78649) b_and!202681 b_and!202679 (not b_next!78651) b_and!202683 (not b_next!78647))
