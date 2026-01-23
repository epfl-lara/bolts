; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517616 () Bool)

(assert start!517616)

(declare-fun b!4929403 () Bool)

(declare-fun e!3079734 () Bool)

(declare-datatypes ((C!26968 0))(
  ( (C!26969 (val!22818 Int)) )
))
(declare-datatypes ((List!56827 0))(
  ( (Nil!56703) (Cons!56703 (h!63151 C!26968) (t!367303 List!56827)) )
))
(declare-datatypes ((IArray!29817 0))(
  ( (IArray!29818 (innerList!14966 List!56827)) )
))
(declare-datatypes ((Conc!14878 0))(
  ( (Node!14878 (left!41351 Conc!14878) (right!41681 Conc!14878) (csize!29986 Int) (cheight!15089 Int)) (Leaf!24750 (xs!18202 IArray!29817) (csize!29987 Int)) (Empty!14878) )
))
(declare-datatypes ((BalanceConc!29186 0))(
  ( (BalanceConc!29187 (c!840039 Conc!14878)) )
))
(declare-fun input!5492 () BalanceConc!29186)

(declare-fun tp!1383827 () Bool)

(declare-fun inv!73507 (Conc!14878) Bool)

(assert (=> b!4929403 (= e!3079734 (and (inv!73507 (c!840039 input!5492)) tp!1383827))))

(declare-datatypes ((Regex!13379 0))(
  ( (ElementMatch!13379 (c!840040 C!26968)) (Concat!21952 (regOne!27270 Regex!13379) (regTwo!27270 Regex!13379)) (EmptyExpr!13379) (Star!13379 (reg!13708 Regex!13379)) (EmptyLang!13379) (Union!13379 (regOne!27271 Regex!13379) (regTwo!27271 Regex!13379)) )
))
(declare-datatypes ((List!56828 0))(
  ( (Nil!56704) (Cons!56704 (h!63152 Regex!13379) (t!367304 List!56828)) )
))
(declare-datatypes ((Context!6042 0))(
  ( (Context!6043 (exprs!3521 List!56828)) )
))
(declare-fun setElem!27566 () Context!6042)

(declare-fun e!3079735 () Bool)

(declare-fun setNonEmpty!27566 () Bool)

(declare-fun setRes!27566 () Bool)

(declare-fun tp!1383829 () Bool)

(declare-fun inv!73508 (Context!6042) Bool)

(assert (=> setNonEmpty!27566 (= setRes!27566 (and tp!1383829 (inv!73508 setElem!27566) e!3079735))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3559 () (InoxSet Context!6042))

(declare-fun setRest!27566 () (InoxSet Context!6042))

(assert (=> setNonEmpty!27566 (= z!3559 ((_ map or) (store ((as const (Array Context!6042 Bool)) false) setElem!27566 true) setRest!27566))))

(declare-fun setIsEmpty!27566 () Bool)

(assert (=> setIsEmpty!27566 setRes!27566))

(declare-fun res!2103606 () Bool)

(declare-fun e!3079736 () Bool)

(assert (=> start!517616 (=> (not res!2103606) (not e!3079736))))

(declare-fun lt!2028720 () List!56827)

(declare-fun lt!2028722 () List!56827)

(declare-fun lt!2028718 () List!56827)

(declare-datatypes ((tuple2!61204 0))(
  ( (tuple2!61205 (_1!33905 List!56827) (_2!33905 List!56827)) )
))
(declare-fun findLongestMatchZipper!19 ((InoxSet Context!6042) List!56827) tuple2!61204)

(assert (=> start!517616 (= res!2103606 (= (tuple2!61205 lt!2028722 lt!2028718) (findLongestMatchZipper!19 z!3559 lt!2028720)))))

(declare-fun lt!2028721 () tuple2!61204)

(assert (=> start!517616 (and (= lt!2028722 (_1!33905 lt!2028721)) (= lt!2028718 (_2!33905 lt!2028721)))))

(declare-datatypes ((Unit!147309 0))(
  ( (Unit!147310) )
))
(declare-fun lt!2028719 () Unit!147309)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!663 (List!56827 List!56827 List!56827 List!56827) Unit!147309)

(assert (=> start!517616 (= lt!2028719 (lemmaConcatSameAndSameSizesThenSameLists!663 lt!2028722 lt!2028718 (_1!33905 lt!2028721) (_2!33905 lt!2028721)))))

(declare-fun lt!2028723 () Int)

(declare-fun findLongestMatchInnerZipper!64 ((InoxSet Context!6042) List!56827 Int List!56827 List!56827 Int) tuple2!61204)

(assert (=> start!517616 (= lt!2028721 (findLongestMatchInnerZipper!64 z!3559 Nil!56703 0 lt!2028720 lt!2028720 lt!2028723))))

(declare-datatypes ((tuple2!61206 0))(
  ( (tuple2!61207 (_1!33906 BalanceConc!29186) (_2!33906 BalanceConc!29186)) )
))
(declare-fun lt!2028717 () tuple2!61206)

(declare-fun list!17965 (BalanceConc!29186) List!56827)

(assert (=> start!517616 (= lt!2028718 (list!17965 (_2!33906 lt!2028717)))))

(assert (=> start!517616 (= lt!2028722 (list!17965 (_1!33906 lt!2028717)))))

(declare-fun splitAt!281 (BalanceConc!29186 Int) tuple2!61206)

(declare-fun findLongestMatchInnerZipperFast!91 ((InoxSet Context!6042) List!56827 Int List!56827 BalanceConc!29186 Int) Int)

(assert (=> start!517616 (= lt!2028717 (splitAt!281 input!5492 (findLongestMatchInnerZipperFast!91 z!3559 Nil!56703 0 lt!2028720 input!5492 lt!2028723)))))

(declare-fun size!37496 (BalanceConc!29186) Int)

(assert (=> start!517616 (= lt!2028723 (size!37496 input!5492))))

(assert (=> start!517616 (= lt!2028720 (list!17965 input!5492))))

(assert (=> start!517616 (not e!3079736)))

(declare-fun inv!73509 (BalanceConc!29186) Bool)

(assert (=> start!517616 (and (inv!73509 input!5492) e!3079734)))

(declare-fun condSetEmpty!27566 () Bool)

(assert (=> start!517616 (= condSetEmpty!27566 (= z!3559 ((as const (Array Context!6042 Bool)) false)))))

(assert (=> start!517616 setRes!27566))

(declare-fun b!4929404 () Bool)

(declare-fun ++!12334 (List!56827 List!56827) List!56827)

(assert (=> b!4929404 (= e!3079736 (= (++!12334 lt!2028722 lt!2028718) lt!2028720))))

(declare-fun b!4929405 () Bool)

(declare-fun tp!1383828 () Bool)

(assert (=> b!4929405 (= e!3079735 tp!1383828)))

(assert (= (and start!517616 res!2103606) b!4929404))

(assert (= start!517616 b!4929403))

(assert (= (and start!517616 condSetEmpty!27566) setIsEmpty!27566))

(assert (= (and start!517616 (not condSetEmpty!27566)) setNonEmpty!27566))

(assert (= setNonEmpty!27566 b!4929405))

(declare-fun m!5949414 () Bool)

(assert (=> b!4929403 m!5949414))

(declare-fun m!5949416 () Bool)

(assert (=> setNonEmpty!27566 m!5949416))

(declare-fun m!5949418 () Bool)

(assert (=> start!517616 m!5949418))

(declare-fun m!5949420 () Bool)

(assert (=> start!517616 m!5949420))

(declare-fun m!5949422 () Bool)

(assert (=> start!517616 m!5949422))

(assert (=> start!517616 m!5949422))

(declare-fun m!5949424 () Bool)

(assert (=> start!517616 m!5949424))

(declare-fun m!5949426 () Bool)

(assert (=> start!517616 m!5949426))

(declare-fun m!5949428 () Bool)

(assert (=> start!517616 m!5949428))

(declare-fun m!5949430 () Bool)

(assert (=> start!517616 m!5949430))

(declare-fun m!5949432 () Bool)

(assert (=> start!517616 m!5949432))

(declare-fun m!5949434 () Bool)

(assert (=> start!517616 m!5949434))

(declare-fun m!5949436 () Bool)

(assert (=> start!517616 m!5949436))

(declare-fun m!5949438 () Bool)

(assert (=> b!4929404 m!5949438))

(check-sat (not b!4929405) (not b!4929404) (not start!517616) (not b!4929403) (not setNonEmpty!27566))
(check-sat)
(get-model)

(declare-fun b!4929431 () Bool)

(declare-fun e!3079753 () Int)

(assert (=> b!4929431 (= e!3079753 0)))

(declare-fun bm!344020 () Bool)

(declare-fun call!344026 () Bool)

(declare-fun nullableZipper!816 ((InoxSet Context!6042)) Bool)

(assert (=> bm!344020 (= call!344026 (nullableZipper!816 z!3559))))

(declare-fun bm!344021 () Bool)

(declare-fun c!840053 () Bool)

(declare-fun c!840054 () Bool)

(assert (=> bm!344021 (= c!840053 c!840054)))

(declare-fun e!3079751 () List!56827)

(declare-fun lt!2028842 () List!56827)

(declare-fun call!344030 () Unit!147309)

(declare-fun lt!2028822 () List!56827)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1125 (List!56827 List!56827 List!56827) Unit!147309)

(assert (=> bm!344021 (= call!344030 (lemmaIsPrefixSameLengthThenSameList!1125 (ite c!840054 lt!2028842 lt!2028822) Nil!56703 e!3079751))))

(declare-fun call!344029 () List!56827)

(declare-fun lt!2028844 () tuple2!61206)

(declare-fun bm!344022 () Bool)

(assert (=> bm!344022 (= call!344029 (list!17965 (ite c!840054 input!5492 (_2!33906 lt!2028844))))))

(declare-fun bm!344023 () Bool)

(declare-fun call!344033 () List!56827)

(declare-fun call!344031 () C!26968)

(assert (=> bm!344023 (= call!344033 (++!12334 Nil!56703 (Cons!56703 call!344031 Nil!56703)))))

(declare-fun b!4929432 () Bool)

(declare-fun c!840058 () Bool)

(assert (=> b!4929432 (= c!840058 call!344026)))

(declare-fun lt!2028809 () Unit!147309)

(declare-fun lt!2028827 () Unit!147309)

(assert (=> b!4929432 (= lt!2028809 lt!2028827)))

(assert (=> b!4929432 (= lt!2028842 Nil!56703)))

(assert (=> b!4929432 (= lt!2028827 call!344030)))

(assert (=> b!4929432 (= lt!2028842 call!344029)))

(declare-fun lt!2028846 () Unit!147309)

(declare-fun lt!2028836 () Unit!147309)

(assert (=> b!4929432 (= lt!2028846 lt!2028836)))

(declare-fun call!344027 () Bool)

(assert (=> b!4929432 call!344027))

(declare-fun call!344025 () Unit!147309)

(assert (=> b!4929432 (= lt!2028836 call!344025)))

(declare-fun lt!2028814 () List!56827)

(assert (=> b!4929432 (= lt!2028814 call!344029)))

(declare-fun lt!2028819 () List!56827)

(assert (=> b!4929432 (= lt!2028819 call!344029)))

(declare-fun e!3079752 () Int)

(declare-fun e!3079749 () Int)

(assert (=> b!4929432 (= e!3079752 e!3079749)))

(declare-fun b!4929433 () Bool)

(declare-fun e!3079754 () Unit!147309)

(declare-fun Unit!147317 () Unit!147309)

(assert (=> b!4929433 (= e!3079754 Unit!147317)))

(declare-fun lt!2028812 () List!56827)

(assert (=> b!4929433 (= lt!2028812 (list!17965 input!5492))))

(declare-fun lt!2028840 () List!56827)

(assert (=> b!4929433 (= lt!2028840 (list!17965 input!5492))))

(declare-fun lt!2028817 () Unit!147309)

(assert (=> b!4929433 (= lt!2028817 call!344025)))

(assert (=> b!4929433 call!344027))

(declare-fun lt!2028838 () Unit!147309)

(assert (=> b!4929433 (= lt!2028838 lt!2028817)))

(assert (=> b!4929433 (= lt!2028822 (list!17965 input!5492))))

(declare-fun lt!2028834 () Unit!147309)

(assert (=> b!4929433 (= lt!2028834 call!344030)))

(assert (=> b!4929433 (= lt!2028822 Nil!56703)))

(declare-fun lt!2028808 () Unit!147309)

(assert (=> b!4929433 (= lt!2028808 lt!2028834)))

(assert (=> b!4929433 false))

(declare-fun bm!344024 () Bool)

(declare-fun apply!13677 (BalanceConc!29186 Int) C!26968)

(assert (=> bm!344024 (= call!344031 (apply!13677 input!5492 0))))

(declare-fun bm!344025 () Bool)

(declare-fun call!344032 () List!56827)

(declare-fun tail!9673 (List!56827) List!56827)

(assert (=> bm!344025 (= call!344032 (tail!9673 lt!2028720))))

(declare-fun b!4929434 () Bool)

(assert (=> b!4929434 (= e!3079751 call!344029)))

(declare-fun bm!344026 () Bool)

(declare-fun lemmaIsPrefixRefl!3363 (List!56827 List!56827) Unit!147309)

(assert (=> bm!344026 (= call!344025 (lemmaIsPrefixRefl!3363 (ite c!840054 lt!2028819 lt!2028812) (ite c!840054 lt!2028814 lt!2028840)))))

(declare-fun bm!344027 () Bool)

(declare-fun call!344034 () (InoxSet Context!6042))

(declare-fun derivationStepZipper!594 ((InoxSet Context!6042) C!26968) (InoxSet Context!6042))

(assert (=> bm!344027 (= call!344034 (derivationStepZipper!594 z!3559 call!344031))))

(declare-fun b!4929435 () Bool)

(declare-fun Unit!147318 () Unit!147309)

(assert (=> b!4929435 (= e!3079754 Unit!147318)))

(declare-fun b!4929430 () Bool)

(declare-fun e!3079750 () Int)

(declare-fun lt!2028826 () Int)

(assert (=> b!4929430 (= e!3079750 (ite (= lt!2028826 0) 0 lt!2028826))))

(declare-fun call!344028 () Int)

(assert (=> b!4929430 (= lt!2028826 call!344028)))

(declare-fun lt!2028825 () Int)

(declare-fun d!1587144 () Bool)

(declare-fun size!37499 (List!56827) Int)

(assert (=> d!1587144 (= (size!37499 (_1!33905 (findLongestMatchInnerZipper!64 z!3559 Nil!56703 0 lt!2028720 (list!17965 input!5492) lt!2028723))) lt!2028825)))

(assert (=> d!1587144 (= lt!2028825 e!3079753)))

(declare-fun c!840056 () Bool)

(declare-fun lostCauseZipper!697 ((InoxSet Context!6042)) Bool)

(assert (=> d!1587144 (= c!840056 (lostCauseZipper!697 z!3559))))

(declare-fun lt!2028815 () Unit!147309)

(declare-fun Unit!147319 () Unit!147309)

(assert (=> d!1587144 (= lt!2028815 Unit!147319)))

(declare-fun getSuffix!2955 (List!56827 List!56827) List!56827)

(assert (=> d!1587144 (= (getSuffix!2955 (list!17965 input!5492) Nil!56703) lt!2028720)))

(declare-fun lt!2028829 () Unit!147309)

(declare-fun lt!2028824 () Unit!147309)

(assert (=> d!1587144 (= lt!2028829 lt!2028824)))

(declare-fun lt!2028811 () List!56827)

(assert (=> d!1587144 (= lt!2028720 lt!2028811)))

(declare-fun lemmaSamePrefixThenSameSuffix!2371 (List!56827 List!56827 List!56827 List!56827 List!56827) Unit!147309)

(assert (=> d!1587144 (= lt!2028824 (lemmaSamePrefixThenSameSuffix!2371 Nil!56703 lt!2028720 Nil!56703 lt!2028811 (list!17965 input!5492)))))

(assert (=> d!1587144 (= lt!2028811 (getSuffix!2955 (list!17965 input!5492) Nil!56703))))

(declare-fun lt!2028839 () Unit!147309)

(declare-fun lt!2028816 () Unit!147309)

(assert (=> d!1587144 (= lt!2028839 lt!2028816)))

(declare-fun isPrefix!4967 (List!56827 List!56827) Bool)

(assert (=> d!1587144 (isPrefix!4967 Nil!56703 (++!12334 Nil!56703 lt!2028720))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3191 (List!56827 List!56827) Unit!147309)

(assert (=> d!1587144 (= lt!2028816 (lemmaConcatTwoListThenFirstIsPrefix!3191 Nil!56703 lt!2028720))))

(assert (=> d!1587144 (= (++!12334 Nil!56703 lt!2028720) (list!17965 input!5492))))

(assert (=> d!1587144 (= (findLongestMatchInnerZipperFast!91 z!3559 Nil!56703 0 lt!2028720 input!5492 lt!2028723) lt!2028825)))

(declare-fun b!4929436 () Bool)

(assert (=> b!4929436 (= e!3079750 call!344028)))

(declare-fun b!4929437 () Bool)

(assert (=> b!4929437 (= e!3079749 0)))

(declare-fun b!4929438 () Bool)

(assert (=> b!4929438 (= e!3079753 e!3079752)))

(assert (=> b!4929438 (= c!840054 (= 0 lt!2028723))))

(declare-fun bm!344028 () Bool)

(assert (=> bm!344028 (= call!344028 (findLongestMatchInnerZipperFast!91 call!344034 call!344033 (+ 0 1) call!344032 input!5492 lt!2028723))))

(declare-fun b!4929439 () Bool)

(assert (=> b!4929439 (= e!3079751 (list!17965 input!5492))))

(declare-fun b!4929440 () Bool)

(declare-fun c!840057 () Bool)

(assert (=> b!4929440 (= c!840057 call!344026)))

(declare-fun lt!2028843 () Unit!147309)

(declare-fun lt!2028828 () Unit!147309)

(assert (=> b!4929440 (= lt!2028843 lt!2028828)))

(declare-fun lt!2028832 () C!26968)

(declare-fun lt!2028820 () List!56827)

(declare-fun lt!2028833 () List!56827)

(assert (=> b!4929440 (= (++!12334 (++!12334 Nil!56703 (Cons!56703 lt!2028832 Nil!56703)) lt!2028820) lt!2028833)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1397 (List!56827 C!26968 List!56827 List!56827) Unit!147309)

(assert (=> b!4929440 (= lt!2028828 (lemmaMoveElementToOtherListKeepsConcatEq!1397 Nil!56703 lt!2028832 lt!2028820 lt!2028833))))

(assert (=> b!4929440 (= lt!2028833 (list!17965 input!5492))))

(assert (=> b!4929440 (= lt!2028820 (tail!9673 lt!2028720))))

(assert (=> b!4929440 (= lt!2028832 (apply!13677 input!5492 0))))

(declare-fun lt!2028818 () Unit!147309)

(declare-fun lt!2028837 () Unit!147309)

(assert (=> b!4929440 (= lt!2028818 lt!2028837)))

(declare-fun lt!2028848 () List!56827)

(declare-fun head!10526 (List!56827) C!26968)

(assert (=> b!4929440 (isPrefix!4967 (++!12334 Nil!56703 (Cons!56703 (head!10526 (getSuffix!2955 lt!2028848 Nil!56703)) Nil!56703)) lt!2028848)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!779 (List!56827 List!56827) Unit!147309)

(assert (=> b!4929440 (= lt!2028837 (lemmaAddHeadSuffixToPrefixStillPrefix!779 Nil!56703 lt!2028848))))

(assert (=> b!4929440 (= lt!2028848 (list!17965 input!5492))))

(declare-fun lt!2028823 () Unit!147309)

(assert (=> b!4929440 (= lt!2028823 e!3079754)))

(declare-fun c!840055 () Bool)

(assert (=> b!4929440 (= c!840055 (= (size!37499 Nil!56703) (size!37496 input!5492)))))

(declare-fun lt!2028849 () Unit!147309)

(declare-fun lt!2028810 () Unit!147309)

(assert (=> b!4929440 (= lt!2028849 lt!2028810)))

(declare-fun lt!2028830 () List!56827)

(assert (=> b!4929440 (<= (size!37499 Nil!56703) (size!37499 lt!2028830))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!691 (List!56827 List!56827) Unit!147309)

(assert (=> b!4929440 (= lt!2028810 (lemmaIsPrefixThenSmallerEqSize!691 Nil!56703 lt!2028830))))

(assert (=> b!4929440 (= lt!2028830 (list!17965 input!5492))))

(declare-fun lt!2028831 () Unit!147309)

(declare-fun lt!2028841 () Unit!147309)

(assert (=> b!4929440 (= lt!2028831 lt!2028841)))

(declare-fun lt!2028835 () List!56827)

(declare-fun drop!2230 (List!56827 Int) List!56827)

(declare-fun apply!13678 (List!56827 Int) C!26968)

(assert (=> b!4929440 (= (head!10526 (drop!2230 lt!2028835 0)) (apply!13678 lt!2028835 0))))

(declare-fun lemmaDropApply!1288 (List!56827 Int) Unit!147309)

(assert (=> b!4929440 (= lt!2028841 (lemmaDropApply!1288 lt!2028835 0))))

(assert (=> b!4929440 (= lt!2028835 (list!17965 input!5492))))

(declare-fun lt!2028845 () Unit!147309)

(declare-fun lt!2028813 () Unit!147309)

(assert (=> b!4929440 (= lt!2028845 lt!2028813)))

(declare-fun lt!2028847 () List!56827)

(declare-fun lt!2028821 () List!56827)

(assert (=> b!4929440 (and (= lt!2028847 Nil!56703) (= lt!2028821 lt!2028720))))

(assert (=> b!4929440 (= lt!2028813 (lemmaConcatSameAndSameSizesThenSameLists!663 lt!2028847 lt!2028821 Nil!56703 lt!2028720))))

(assert (=> b!4929440 (= lt!2028821 call!344029)))

(assert (=> b!4929440 (= lt!2028847 (list!17965 (_1!33906 lt!2028844)))))

(assert (=> b!4929440 (= lt!2028844 (splitAt!281 input!5492 0))))

(assert (=> b!4929440 (= e!3079752 e!3079750)))

(declare-fun b!4929441 () Bool)

(assert (=> b!4929441 (= e!3079749 0)))

(declare-fun bm!344029 () Bool)

(assert (=> bm!344029 (= call!344027 (isPrefix!4967 (ite c!840054 lt!2028819 lt!2028812) (ite c!840054 lt!2028814 lt!2028840)))))

(assert (= (and d!1587144 c!840056) b!4929431))

(assert (= (and d!1587144 (not c!840056)) b!4929438))

(assert (= (and b!4929438 c!840054) b!4929432))

(assert (= (and b!4929438 (not c!840054)) b!4929440))

(assert (= (and b!4929432 c!840058) b!4929441))

(assert (= (and b!4929432 (not c!840058)) b!4929437))

(assert (= (and b!4929440 c!840055) b!4929433))

(assert (= (and b!4929440 (not c!840055)) b!4929435))

(assert (= (and b!4929440 c!840057) b!4929430))

(assert (= (and b!4929440 (not c!840057)) b!4929436))

(assert (= (or b!4929430 b!4929436) bm!344025))

(assert (= (or b!4929430 b!4929436) bm!344024))

(assert (= (or b!4929430 b!4929436) bm!344023))

(assert (= (or b!4929430 b!4929436) bm!344027))

(assert (= (or b!4929430 b!4929436) bm!344028))

(assert (= (or b!4929432 b!4929433) bm!344026))

(assert (= (or b!4929432 b!4929440) bm!344020))

(assert (= (or b!4929432 b!4929433) bm!344029))

(assert (= (or b!4929432 b!4929440) bm!344022))

(assert (= (or b!4929432 b!4929433) bm!344021))

(assert (= (and bm!344021 c!840053) b!4929434))

(assert (= (and bm!344021 (not c!840053)) b!4929439))

(declare-fun m!5949446 () Bool)

(assert (=> bm!344026 m!5949446))

(declare-fun m!5949448 () Bool)

(assert (=> bm!344024 m!5949448))

(declare-fun m!5949450 () Bool)

(assert (=> b!4929440 m!5949450))

(assert (=> b!4929440 m!5949432))

(assert (=> b!4929440 m!5949430))

(declare-fun m!5949452 () Bool)

(assert (=> b!4929440 m!5949452))

(declare-fun m!5949454 () Bool)

(assert (=> b!4929440 m!5949454))

(declare-fun m!5949456 () Bool)

(assert (=> b!4929440 m!5949456))

(declare-fun m!5949458 () Bool)

(assert (=> b!4929440 m!5949458))

(declare-fun m!5949460 () Bool)

(assert (=> b!4929440 m!5949460))

(declare-fun m!5949462 () Bool)

(assert (=> b!4929440 m!5949462))

(declare-fun m!5949464 () Bool)

(assert (=> b!4929440 m!5949464))

(assert (=> b!4929440 m!5949448))

(assert (=> b!4929440 m!5949464))

(declare-fun m!5949466 () Bool)

(assert (=> b!4929440 m!5949466))

(declare-fun m!5949468 () Bool)

(assert (=> b!4929440 m!5949468))

(assert (=> b!4929440 m!5949456))

(declare-fun m!5949470 () Bool)

(assert (=> b!4929440 m!5949470))

(declare-fun m!5949472 () Bool)

(assert (=> b!4929440 m!5949472))

(assert (=> b!4929440 m!5949462))

(declare-fun m!5949474 () Bool)

(assert (=> b!4929440 m!5949474))

(declare-fun m!5949476 () Bool)

(assert (=> b!4929440 m!5949476))

(declare-fun m!5949478 () Bool)

(assert (=> b!4929440 m!5949478))

(declare-fun m!5949480 () Bool)

(assert (=> b!4929440 m!5949480))

(declare-fun m!5949482 () Bool)

(assert (=> b!4929440 m!5949482))

(assert (=> b!4929440 m!5949478))

(declare-fun m!5949484 () Bool)

(assert (=> b!4929440 m!5949484))

(declare-fun m!5949486 () Bool)

(assert (=> b!4929440 m!5949486))

(assert (=> b!4929433 m!5949430))

(declare-fun m!5949488 () Bool)

(assert (=> bm!344027 m!5949488))

(declare-fun m!5949490 () Bool)

(assert (=> bm!344028 m!5949490))

(assert (=> d!1587144 m!5949430))

(declare-fun m!5949492 () Bool)

(assert (=> d!1587144 m!5949492))

(declare-fun m!5949494 () Bool)

(assert (=> d!1587144 m!5949494))

(declare-fun m!5949496 () Bool)

(assert (=> d!1587144 m!5949496))

(assert (=> d!1587144 m!5949430))

(assert (=> d!1587144 m!5949494))

(declare-fun m!5949498 () Bool)

(assert (=> d!1587144 m!5949498))

(declare-fun m!5949500 () Bool)

(assert (=> d!1587144 m!5949500))

(assert (=> d!1587144 m!5949430))

(declare-fun m!5949502 () Bool)

(assert (=> d!1587144 m!5949502))

(assert (=> d!1587144 m!5949430))

(declare-fun m!5949504 () Bool)

(assert (=> d!1587144 m!5949504))

(declare-fun m!5949506 () Bool)

(assert (=> d!1587144 m!5949506))

(declare-fun m!5949508 () Bool)

(assert (=> bm!344023 m!5949508))

(assert (=> b!4929439 m!5949430))

(declare-fun m!5949510 () Bool)

(assert (=> bm!344022 m!5949510))

(declare-fun m!5949512 () Bool)

(assert (=> bm!344020 m!5949512))

(assert (=> bm!344025 m!5949472))

(declare-fun m!5949514 () Bool)

(assert (=> bm!344029 m!5949514))

(declare-fun m!5949516 () Bool)

(assert (=> bm!344021 m!5949516))

(assert (=> start!517616 d!1587144))

(declare-fun d!1587154 () Bool)

(declare-fun e!3079760 () Bool)

(assert (=> d!1587154 e!3079760))

(declare-fun res!2103618 () Bool)

(assert (=> d!1587154 (=> (not res!2103618) (not e!3079760))))

(declare-fun lt!2028861 () tuple2!61206)

(declare-fun isBalanced!4091 (Conc!14878) Bool)

(assert (=> d!1587154 (= res!2103618 (isBalanced!4091 (c!840039 (_1!33906 lt!2028861))))))

(declare-datatypes ((tuple2!61210 0))(
  ( (tuple2!61211 (_1!33908 Conc!14878) (_2!33908 Conc!14878)) )
))
(declare-fun lt!2028860 () tuple2!61210)

(assert (=> d!1587154 (= lt!2028861 (tuple2!61207 (BalanceConc!29187 (_1!33908 lt!2028860)) (BalanceConc!29187 (_2!33908 lt!2028860))))))

(declare-fun splitAt!283 (Conc!14878 Int) tuple2!61210)

(assert (=> d!1587154 (= lt!2028860 (splitAt!283 (c!840039 input!5492) (findLongestMatchInnerZipperFast!91 z!3559 Nil!56703 0 lt!2028720 input!5492 lt!2028723)))))

(assert (=> d!1587154 (isBalanced!4091 (c!840039 input!5492))))

(assert (=> d!1587154 (= (splitAt!281 input!5492 (findLongestMatchInnerZipperFast!91 z!3559 Nil!56703 0 lt!2028720 input!5492 lt!2028723)) lt!2028861)))

(declare-fun b!4929452 () Bool)

(declare-fun res!2103617 () Bool)

(assert (=> b!4929452 (=> (not res!2103617) (not e!3079760))))

(assert (=> b!4929452 (= res!2103617 (isBalanced!4091 (c!840039 (_2!33906 lt!2028861))))))

(declare-fun b!4929453 () Bool)

(declare-fun splitAtIndex!107 (List!56827 Int) tuple2!61204)

(assert (=> b!4929453 (= e!3079760 (= (tuple2!61205 (list!17965 (_1!33906 lt!2028861)) (list!17965 (_2!33906 lt!2028861))) (splitAtIndex!107 (list!17965 input!5492) (findLongestMatchInnerZipperFast!91 z!3559 Nil!56703 0 lt!2028720 input!5492 lt!2028723))))))

(assert (= (and d!1587154 res!2103618) b!4929452))

(assert (= (and b!4929452 res!2103617) b!4929453))

(declare-fun m!5949532 () Bool)

(assert (=> d!1587154 m!5949532))

(assert (=> d!1587154 m!5949422))

(declare-fun m!5949534 () Bool)

(assert (=> d!1587154 m!5949534))

(declare-fun m!5949536 () Bool)

(assert (=> d!1587154 m!5949536))

(declare-fun m!5949538 () Bool)

(assert (=> b!4929452 m!5949538))

(declare-fun m!5949540 () Bool)

(assert (=> b!4929453 m!5949540))

(declare-fun m!5949542 () Bool)

(assert (=> b!4929453 m!5949542))

(assert (=> b!4929453 m!5949430))

(assert (=> b!4929453 m!5949430))

(assert (=> b!4929453 m!5949422))

(declare-fun m!5949544 () Bool)

(assert (=> b!4929453 m!5949544))

(assert (=> start!517616 d!1587154))

(declare-fun d!1587158 () Bool)

(declare-fun list!17967 (Conc!14878) List!56827)

(assert (=> d!1587158 (= (list!17965 (_2!33906 lt!2028717)) (list!17967 (c!840039 (_2!33906 lt!2028717))))))

(declare-fun bs!1180214 () Bool)

(assert (= bs!1180214 d!1587158))

(declare-fun m!5949546 () Bool)

(assert (=> bs!1180214 m!5949546))

(assert (=> start!517616 d!1587158))

(declare-fun bm!344070 () Bool)

(declare-fun call!344076 () (InoxSet Context!6042))

(declare-fun call!344082 () C!26968)

(assert (=> bm!344070 (= call!344076 (derivationStepZipper!594 z!3559 call!344082))))

(declare-fun b!4929524 () Bool)

(declare-fun e!3079807 () tuple2!61204)

(declare-fun e!3079806 () tuple2!61204)

(assert (=> b!4929524 (= e!3079807 e!3079806)))

(declare-fun lt!2029006 () tuple2!61204)

(declare-fun call!344077 () tuple2!61204)

(assert (=> b!4929524 (= lt!2029006 call!344077)))

(declare-fun c!840089 () Bool)

(declare-fun isEmpty!30585 (List!56827) Bool)

(assert (=> b!4929524 (= c!840089 (isEmpty!30585 (_1!33905 lt!2029006)))))

(declare-fun bm!344071 () Bool)

(declare-fun lt!2029015 () List!56827)

(declare-fun call!344081 () List!56827)

(assert (=> bm!344071 (= call!344077 (findLongestMatchInnerZipper!64 call!344076 lt!2029015 (+ 0 1) call!344081 lt!2028720 lt!2028723))))

(declare-fun b!4929525 () Bool)

(declare-fun c!840092 () Bool)

(declare-fun call!344075 () Bool)

(assert (=> b!4929525 (= c!840092 call!344075)))

(declare-fun lt!2029009 () Unit!147309)

(declare-fun lt!2029000 () Unit!147309)

(assert (=> b!4929525 (= lt!2029009 lt!2029000)))

(assert (=> b!4929525 (= lt!2028720 Nil!56703)))

(declare-fun call!344080 () Unit!147309)

(assert (=> b!4929525 (= lt!2029000 call!344080)))

(declare-fun lt!2028998 () Unit!147309)

(declare-fun lt!2028994 () Unit!147309)

(assert (=> b!4929525 (= lt!2028998 lt!2028994)))

(declare-fun call!344078 () Bool)

(assert (=> b!4929525 call!344078))

(declare-fun call!344079 () Unit!147309)

(assert (=> b!4929525 (= lt!2028994 call!344079)))

(declare-fun e!3079801 () tuple2!61204)

(declare-fun e!3079804 () tuple2!61204)

(assert (=> b!4929525 (= e!3079801 e!3079804)))

(declare-fun bm!344072 () Bool)

(assert (=> bm!344072 (= call!344079 (lemmaIsPrefixRefl!3363 lt!2028720 lt!2028720))))

(declare-fun b!4929526 () Bool)

(declare-fun e!3079805 () tuple2!61204)

(assert (=> b!4929526 (= e!3079805 e!3079801)))

(declare-fun c!840093 () Bool)

(assert (=> b!4929526 (= c!840093 (= 0 lt!2028723))))

(declare-fun b!4929527 () Bool)

(declare-fun e!3079808 () Bool)

(declare-fun e!3079802 () Bool)

(assert (=> b!4929527 (= e!3079808 e!3079802)))

(declare-fun res!2103630 () Bool)

(assert (=> b!4929527 (=> res!2103630 e!3079802)))

(declare-fun lt!2029001 () tuple2!61204)

(assert (=> b!4929527 (= res!2103630 (isEmpty!30585 (_1!33905 lt!2029001)))))

(declare-fun b!4929528 () Bool)

(assert (=> b!4929528 (= e!3079805 (tuple2!61205 Nil!56703 lt!2028720))))

(declare-fun bm!344073 () Bool)

(assert (=> bm!344073 (= call!344082 (head!10526 lt!2028720))))

(declare-fun bm!344074 () Bool)

(assert (=> bm!344074 (= call!344075 (nullableZipper!816 z!3559))))

(declare-fun b!4929530 () Bool)

(declare-fun e!3079803 () Unit!147309)

(declare-fun Unit!147320 () Unit!147309)

(assert (=> b!4929530 (= e!3079803 Unit!147320)))

(declare-fun lt!2028999 () Unit!147309)

(assert (=> b!4929530 (= lt!2028999 call!344079)))

(assert (=> b!4929530 call!344078))

(declare-fun lt!2029011 () Unit!147309)

(assert (=> b!4929530 (= lt!2029011 lt!2028999)))

(declare-fun lt!2029002 () Unit!147309)

(assert (=> b!4929530 (= lt!2029002 call!344080)))

(assert (=> b!4929530 (= lt!2028720 Nil!56703)))

(declare-fun lt!2029013 () Unit!147309)

(assert (=> b!4929530 (= lt!2029013 lt!2029002)))

(assert (=> b!4929530 false))

(declare-fun b!4929531 () Bool)

(declare-fun Unit!147321 () Unit!147309)

(assert (=> b!4929531 (= e!3079803 Unit!147321)))

(declare-fun bm!344075 () Bool)

(assert (=> bm!344075 (= call!344081 (tail!9673 lt!2028720))))

(declare-fun b!4929532 () Bool)

(assert (=> b!4929532 (= e!3079806 lt!2029006)))

(declare-fun bm!344076 () Bool)

(assert (=> bm!344076 (= call!344078 (isPrefix!4967 lt!2028720 lt!2028720))))

(declare-fun b!4929533 () Bool)

(declare-fun c!840091 () Bool)

(assert (=> b!4929533 (= c!840091 call!344075)))

(declare-fun lt!2029012 () Unit!147309)

(declare-fun lt!2028993 () Unit!147309)

(assert (=> b!4929533 (= lt!2029012 lt!2028993)))

(declare-fun lt!2028997 () C!26968)

(declare-fun lt!2028992 () List!56827)

(assert (=> b!4929533 (= (++!12334 (++!12334 Nil!56703 (Cons!56703 lt!2028997 Nil!56703)) lt!2028992) lt!2028720)))

(assert (=> b!4929533 (= lt!2028993 (lemmaMoveElementToOtherListKeepsConcatEq!1397 Nil!56703 lt!2028997 lt!2028992 lt!2028720))))

(assert (=> b!4929533 (= lt!2028992 (tail!9673 lt!2028720))))

(assert (=> b!4929533 (= lt!2028997 (head!10526 lt!2028720))))

(declare-fun lt!2028995 () Unit!147309)

(declare-fun lt!2029016 () Unit!147309)

(assert (=> b!4929533 (= lt!2028995 lt!2029016)))

(assert (=> b!4929533 (isPrefix!4967 (++!12334 Nil!56703 (Cons!56703 (head!10526 (getSuffix!2955 lt!2028720 Nil!56703)) Nil!56703)) lt!2028720)))

(assert (=> b!4929533 (= lt!2029016 (lemmaAddHeadSuffixToPrefixStillPrefix!779 Nil!56703 lt!2028720))))

(assert (=> b!4929533 (= lt!2029015 (++!12334 Nil!56703 (Cons!56703 (head!10526 lt!2028720) Nil!56703)))))

(declare-fun lt!2028996 () Unit!147309)

(assert (=> b!4929533 (= lt!2028996 e!3079803)))

(declare-fun c!840090 () Bool)

(assert (=> b!4929533 (= c!840090 (= (size!37499 Nil!56703) (size!37499 lt!2028720)))))

(declare-fun lt!2029010 () Unit!147309)

(declare-fun lt!2029005 () Unit!147309)

(assert (=> b!4929533 (= lt!2029010 lt!2029005)))

(assert (=> b!4929533 (<= (size!37499 Nil!56703) (size!37499 lt!2028720))))

(assert (=> b!4929533 (= lt!2029005 (lemmaIsPrefixThenSmallerEqSize!691 Nil!56703 lt!2028720))))

(assert (=> b!4929533 (= e!3079801 e!3079807)))

(declare-fun b!4929534 () Bool)

(assert (=> b!4929534 (= e!3079806 (tuple2!61205 Nil!56703 lt!2028720))))

(declare-fun b!4929535 () Bool)

(assert (=> b!4929535 (= e!3079804 (tuple2!61205 Nil!56703 lt!2028720))))

(declare-fun b!4929536 () Bool)

(assert (=> b!4929536 (= e!3079802 (>= (size!37499 (_1!33905 lt!2029001)) (size!37499 Nil!56703)))))

(declare-fun b!4929529 () Bool)

(assert (=> b!4929529 (= e!3079807 call!344077)))

(declare-fun d!1587160 () Bool)

(assert (=> d!1587160 e!3079808))

(declare-fun res!2103629 () Bool)

(assert (=> d!1587160 (=> (not res!2103629) (not e!3079808))))

(assert (=> d!1587160 (= res!2103629 (= (++!12334 (_1!33905 lt!2029001) (_2!33905 lt!2029001)) lt!2028720))))

(assert (=> d!1587160 (= lt!2029001 e!3079805)))

(declare-fun c!840094 () Bool)

(assert (=> d!1587160 (= c!840094 (lostCauseZipper!697 z!3559))))

(declare-fun lt!2029007 () Unit!147309)

(declare-fun Unit!147322 () Unit!147309)

(assert (=> d!1587160 (= lt!2029007 Unit!147322)))

(assert (=> d!1587160 (= (getSuffix!2955 lt!2028720 Nil!56703) lt!2028720)))

(declare-fun lt!2029003 () Unit!147309)

(declare-fun lt!2029008 () Unit!147309)

(assert (=> d!1587160 (= lt!2029003 lt!2029008)))

(declare-fun lt!2029004 () List!56827)

(assert (=> d!1587160 (= lt!2028720 lt!2029004)))

(assert (=> d!1587160 (= lt!2029008 (lemmaSamePrefixThenSameSuffix!2371 Nil!56703 lt!2028720 Nil!56703 lt!2029004 lt!2028720))))

(assert (=> d!1587160 (= lt!2029004 (getSuffix!2955 lt!2028720 Nil!56703))))

(declare-fun lt!2029017 () Unit!147309)

(declare-fun lt!2029014 () Unit!147309)

(assert (=> d!1587160 (= lt!2029017 lt!2029014)))

(assert (=> d!1587160 (isPrefix!4967 Nil!56703 (++!12334 Nil!56703 lt!2028720))))

(assert (=> d!1587160 (= lt!2029014 (lemmaConcatTwoListThenFirstIsPrefix!3191 Nil!56703 lt!2028720))))

(assert (=> d!1587160 (= (++!12334 Nil!56703 lt!2028720) lt!2028720)))

(assert (=> d!1587160 (= (findLongestMatchInnerZipper!64 z!3559 Nil!56703 0 lt!2028720 lt!2028720 lt!2028723) lt!2029001)))

(declare-fun b!4929537 () Bool)

(assert (=> b!4929537 (= e!3079804 (tuple2!61205 Nil!56703 Nil!56703))))

(declare-fun bm!344077 () Bool)

(assert (=> bm!344077 (= call!344080 (lemmaIsPrefixSameLengthThenSameList!1125 lt!2028720 Nil!56703 lt!2028720))))

(assert (= (and d!1587160 c!840094) b!4929528))

(assert (= (and d!1587160 (not c!840094)) b!4929526))

(assert (= (and b!4929526 c!840093) b!4929525))

(assert (= (and b!4929526 (not c!840093)) b!4929533))

(assert (= (and b!4929525 c!840092) b!4929537))

(assert (= (and b!4929525 (not c!840092)) b!4929535))

(assert (= (and b!4929533 c!840090) b!4929530))

(assert (= (and b!4929533 (not c!840090)) b!4929531))

(assert (= (and b!4929533 c!840091) b!4929524))

(assert (= (and b!4929533 (not c!840091)) b!4929529))

(assert (= (and b!4929524 c!840089) b!4929534))

(assert (= (and b!4929524 (not c!840089)) b!4929532))

(assert (= (or b!4929524 b!4929529) bm!344075))

(assert (= (or b!4929524 b!4929529) bm!344073))

(assert (= (or b!4929524 b!4929529) bm!344070))

(assert (= (or b!4929524 b!4929529) bm!344071))

(assert (= (or b!4929525 b!4929530) bm!344076))

(assert (= (or b!4929525 b!4929530) bm!344072))

(assert (= (or b!4929525 b!4929530) bm!344077))

(assert (= (or b!4929525 b!4929533) bm!344074))

(assert (= (and d!1587160 res!2103629) b!4929527))

(assert (= (and b!4929527 (not res!2103630)) b!4929536))

(declare-fun m!5949606 () Bool)

(assert (=> bm!344073 m!5949606))

(declare-fun m!5949608 () Bool)

(assert (=> bm!344076 m!5949608))

(assert (=> bm!344074 m!5949512))

(declare-fun m!5949610 () Bool)

(assert (=> b!4929536 m!5949610))

(assert (=> b!4929536 m!5949482))

(declare-fun m!5949612 () Bool)

(assert (=> bm!344077 m!5949612))

(declare-fun m!5949614 () Bool)

(assert (=> bm!344071 m!5949614))

(declare-fun m!5949616 () Bool)

(assert (=> bm!344072 m!5949616))

(declare-fun m!5949618 () Bool)

(assert (=> b!4929524 m!5949618))

(declare-fun m!5949620 () Bool)

(assert (=> bm!344070 m!5949620))

(declare-fun m!5949622 () Bool)

(assert (=> b!4929533 m!5949622))

(assert (=> b!4929533 m!5949606))

(declare-fun m!5949624 () Bool)

(assert (=> b!4929533 m!5949624))

(declare-fun m!5949626 () Bool)

(assert (=> b!4929533 m!5949626))

(declare-fun m!5949628 () Bool)

(assert (=> b!4929533 m!5949628))

(declare-fun m!5949630 () Bool)

(assert (=> b!4929533 m!5949630))

(declare-fun m!5949632 () Bool)

(assert (=> b!4929533 m!5949632))

(declare-fun m!5949634 () Bool)

(assert (=> b!4929533 m!5949634))

(declare-fun m!5949636 () Bool)

(assert (=> b!4929533 m!5949636))

(assert (=> b!4929533 m!5949626))

(assert (=> b!4929533 m!5949632))

(declare-fun m!5949638 () Bool)

(assert (=> b!4929533 m!5949638))

(declare-fun m!5949640 () Bool)

(assert (=> b!4929533 m!5949640))

(assert (=> b!4929533 m!5949482))

(assert (=> b!4929533 m!5949472))

(assert (=> b!4929533 m!5949640))

(declare-fun m!5949642 () Bool)

(assert (=> b!4929533 m!5949642))

(declare-fun m!5949644 () Bool)

(assert (=> d!1587160 m!5949644))

(assert (=> d!1587160 m!5949626))

(assert (=> d!1587160 m!5949506))

(assert (=> d!1587160 m!5949494))

(assert (=> d!1587160 m!5949498))

(assert (=> d!1587160 m!5949496))

(assert (=> d!1587160 m!5949494))

(declare-fun m!5949646 () Bool)

(assert (=> d!1587160 m!5949646))

(assert (=> bm!344075 m!5949472))

(declare-fun m!5949648 () Bool)

(assert (=> b!4929527 m!5949648))

(assert (=> start!517616 d!1587160))

(declare-fun d!1587164 () Bool)

(assert (=> d!1587164 (and (= lt!2028722 (_1!33905 lt!2028721)) (= lt!2028718 (_2!33905 lt!2028721)))))

(declare-fun lt!2029020 () Unit!147309)

(declare-fun choose!36121 (List!56827 List!56827 List!56827 List!56827) Unit!147309)

(assert (=> d!1587164 (= lt!2029020 (choose!36121 lt!2028722 lt!2028718 (_1!33905 lt!2028721) (_2!33905 lt!2028721)))))

(assert (=> d!1587164 (= (++!12334 lt!2028722 lt!2028718) (++!12334 (_1!33905 lt!2028721) (_2!33905 lt!2028721)))))

(assert (=> d!1587164 (= (lemmaConcatSameAndSameSizesThenSameLists!663 lt!2028722 lt!2028718 (_1!33905 lt!2028721) (_2!33905 lt!2028721)) lt!2029020)))

(declare-fun bs!1180215 () Bool)

(assert (= bs!1180215 d!1587164))

(declare-fun m!5949650 () Bool)

(assert (=> bs!1180215 m!5949650))

(assert (=> bs!1180215 m!5949438))

(declare-fun m!5949652 () Bool)

(assert (=> bs!1180215 m!5949652))

(assert (=> start!517616 d!1587164))

(declare-fun d!1587166 () Bool)

(declare-fun lt!2029023 () Int)

(assert (=> d!1587166 (= lt!2029023 (size!37499 (list!17965 input!5492)))))

(declare-fun size!37500 (Conc!14878) Int)

(assert (=> d!1587166 (= lt!2029023 (size!37500 (c!840039 input!5492)))))

(assert (=> d!1587166 (= (size!37496 input!5492) lt!2029023)))

(declare-fun bs!1180216 () Bool)

(assert (= bs!1180216 d!1587166))

(assert (=> bs!1180216 m!5949430))

(assert (=> bs!1180216 m!5949430))

(declare-fun m!5949654 () Bool)

(assert (=> bs!1180216 m!5949654))

(declare-fun m!5949656 () Bool)

(assert (=> bs!1180216 m!5949656))

(assert (=> start!517616 d!1587166))

(declare-fun d!1587168 () Bool)

(assert (=> d!1587168 (= (list!17965 (_1!33906 lt!2028717)) (list!17967 (c!840039 (_1!33906 lt!2028717))))))

(declare-fun bs!1180217 () Bool)

(assert (= bs!1180217 d!1587168))

(declare-fun m!5949658 () Bool)

(assert (=> bs!1180217 m!5949658))

(assert (=> start!517616 d!1587168))

(declare-fun d!1587170 () Bool)

(assert (=> d!1587170 (= (list!17965 input!5492) (list!17967 (c!840039 input!5492)))))

(declare-fun bs!1180218 () Bool)

(assert (= bs!1180218 d!1587170))

(declare-fun m!5949660 () Bool)

(assert (=> bs!1180218 m!5949660))

(assert (=> start!517616 d!1587170))

(declare-fun d!1587172 () Bool)

(assert (=> d!1587172 (= (inv!73509 input!5492) (isBalanced!4091 (c!840039 input!5492)))))

(declare-fun bs!1180219 () Bool)

(assert (= bs!1180219 d!1587172))

(assert (=> bs!1180219 m!5949536))

(assert (=> start!517616 d!1587172))

(declare-fun d!1587174 () Bool)

(declare-fun lt!2029032 () tuple2!61204)

(assert (=> d!1587174 (= (++!12334 (_1!33905 lt!2029032) (_2!33905 lt!2029032)) lt!2028720)))

(declare-fun sizeTr!358 (List!56827 Int) Int)

(assert (=> d!1587174 (= lt!2029032 (findLongestMatchInnerZipper!64 z!3559 Nil!56703 0 lt!2028720 lt!2028720 (sizeTr!358 lt!2028720 0)))))

(declare-fun lt!2029033 () Unit!147309)

(declare-fun lt!2029035 () Unit!147309)

(assert (=> d!1587174 (= lt!2029033 lt!2029035)))

(declare-fun lt!2029034 () Int)

(assert (=> d!1587174 (= (sizeTr!358 lt!2028720 lt!2029034) (+ (size!37499 lt!2028720) lt!2029034))))

(declare-fun lemmaSizeTrEqualsSize!357 (List!56827 Int) Unit!147309)

(assert (=> d!1587174 (= lt!2029035 (lemmaSizeTrEqualsSize!357 lt!2028720 lt!2029034))))

(assert (=> d!1587174 (= lt!2029034 0)))

(assert (=> d!1587174 (= (findLongestMatchZipper!19 z!3559 lt!2028720) lt!2029032)))

(declare-fun bs!1180220 () Bool)

(assert (= bs!1180220 d!1587174))

(declare-fun m!5949662 () Bool)

(assert (=> bs!1180220 m!5949662))

(assert (=> bs!1180220 m!5949624))

(assert (=> bs!1180220 m!5949662))

(declare-fun m!5949664 () Bool)

(assert (=> bs!1180220 m!5949664))

(declare-fun m!5949666 () Bool)

(assert (=> bs!1180220 m!5949666))

(declare-fun m!5949668 () Bool)

(assert (=> bs!1180220 m!5949668))

(declare-fun m!5949670 () Bool)

(assert (=> bs!1180220 m!5949670))

(assert (=> start!517616 d!1587174))

(declare-fun b!4929548 () Bool)

(declare-fun res!2103635 () Bool)

(declare-fun e!3079813 () Bool)

(assert (=> b!4929548 (=> (not res!2103635) (not e!3079813))))

(declare-fun lt!2029038 () List!56827)

(assert (=> b!4929548 (= res!2103635 (= (size!37499 lt!2029038) (+ (size!37499 lt!2028722) (size!37499 lt!2028718))))))

(declare-fun b!4929549 () Bool)

(assert (=> b!4929549 (= e!3079813 (or (not (= lt!2028718 Nil!56703)) (= lt!2029038 lt!2028722)))))

(declare-fun d!1587176 () Bool)

(assert (=> d!1587176 e!3079813))

(declare-fun res!2103636 () Bool)

(assert (=> d!1587176 (=> (not res!2103636) (not e!3079813))))

(declare-fun content!10077 (List!56827) (InoxSet C!26968))

(assert (=> d!1587176 (= res!2103636 (= (content!10077 lt!2029038) ((_ map or) (content!10077 lt!2028722) (content!10077 lt!2028718))))))

(declare-fun e!3079814 () List!56827)

(assert (=> d!1587176 (= lt!2029038 e!3079814)))

(declare-fun c!840097 () Bool)

(get-info :version)

(assert (=> d!1587176 (= c!840097 ((_ is Nil!56703) lt!2028722))))

(assert (=> d!1587176 (= (++!12334 lt!2028722 lt!2028718) lt!2029038)))

(declare-fun b!4929546 () Bool)

(assert (=> b!4929546 (= e!3079814 lt!2028718)))

(declare-fun b!4929547 () Bool)

(assert (=> b!4929547 (= e!3079814 (Cons!56703 (h!63151 lt!2028722) (++!12334 (t!367303 lt!2028722) lt!2028718)))))

(assert (= (and d!1587176 c!840097) b!4929546))

(assert (= (and d!1587176 (not c!840097)) b!4929547))

(assert (= (and d!1587176 res!2103636) b!4929548))

(assert (= (and b!4929548 res!2103635) b!4929549))

(declare-fun m!5949672 () Bool)

(assert (=> b!4929548 m!5949672))

(declare-fun m!5949674 () Bool)

(assert (=> b!4929548 m!5949674))

(declare-fun m!5949676 () Bool)

(assert (=> b!4929548 m!5949676))

(declare-fun m!5949678 () Bool)

(assert (=> d!1587176 m!5949678))

(declare-fun m!5949680 () Bool)

(assert (=> d!1587176 m!5949680))

(declare-fun m!5949682 () Bool)

(assert (=> d!1587176 m!5949682))

(declare-fun m!5949684 () Bool)

(assert (=> b!4929547 m!5949684))

(assert (=> b!4929404 d!1587176))

(declare-fun d!1587178 () Bool)

(declare-fun lambda!245392 () Int)

(declare-fun forall!13147 (List!56828 Int) Bool)

(assert (=> d!1587178 (= (inv!73508 setElem!27566) (forall!13147 (exprs!3521 setElem!27566) lambda!245392))))

(declare-fun bs!1180226 () Bool)

(assert (= bs!1180226 d!1587178))

(declare-fun m!5949790 () Bool)

(assert (=> bs!1180226 m!5949790))

(assert (=> setNonEmpty!27566 d!1587178))

(declare-fun d!1587194 () Bool)

(declare-fun c!840124 () Bool)

(assert (=> d!1587194 (= c!840124 ((_ is Node!14878) (c!840039 input!5492)))))

(declare-fun e!3079861 () Bool)

(assert (=> d!1587194 (= (inv!73507 (c!840039 input!5492)) e!3079861)))

(declare-fun b!4929634 () Bool)

(declare-fun inv!73513 (Conc!14878) Bool)

(assert (=> b!4929634 (= e!3079861 (inv!73513 (c!840039 input!5492)))))

(declare-fun b!4929635 () Bool)

(declare-fun e!3079862 () Bool)

(assert (=> b!4929635 (= e!3079861 e!3079862)))

(declare-fun res!2103648 () Bool)

(assert (=> b!4929635 (= res!2103648 (not ((_ is Leaf!24750) (c!840039 input!5492))))))

(assert (=> b!4929635 (=> res!2103648 e!3079862)))

(declare-fun b!4929636 () Bool)

(declare-fun inv!73514 (Conc!14878) Bool)

(assert (=> b!4929636 (= e!3079862 (inv!73514 (c!840039 input!5492)))))

(assert (= (and d!1587194 c!840124) b!4929634))

(assert (= (and d!1587194 (not c!840124)) b!4929635))

(assert (= (and b!4929635 (not res!2103648)) b!4929636))

(declare-fun m!5949792 () Bool)

(assert (=> b!4929634 m!5949792))

(declare-fun m!5949794 () Bool)

(assert (=> b!4929636 m!5949794))

(assert (=> b!4929403 d!1587194))

(declare-fun b!4929641 () Bool)

(declare-fun e!3079865 () Bool)

(declare-fun tp!1383855 () Bool)

(declare-fun tp!1383856 () Bool)

(assert (=> b!4929641 (= e!3079865 (and tp!1383855 tp!1383856))))

(assert (=> b!4929405 (= tp!1383828 e!3079865)))

(assert (= (and b!4929405 ((_ is Cons!56704) (exprs!3521 setElem!27566))) b!4929641))

(declare-fun condSetEmpty!27572 () Bool)

(assert (=> setNonEmpty!27566 (= condSetEmpty!27572 (= setRest!27566 ((as const (Array Context!6042 Bool)) false)))))

(declare-fun setRes!27572 () Bool)

(assert (=> setNonEmpty!27566 (= tp!1383829 setRes!27572)))

(declare-fun setIsEmpty!27572 () Bool)

(assert (=> setIsEmpty!27572 setRes!27572))

(declare-fun setElem!27572 () Context!6042)

(declare-fun e!3079868 () Bool)

(declare-fun tp!1383862 () Bool)

(declare-fun setNonEmpty!27572 () Bool)

(assert (=> setNonEmpty!27572 (= setRes!27572 (and tp!1383862 (inv!73508 setElem!27572) e!3079868))))

(declare-fun setRest!27572 () (InoxSet Context!6042))

(assert (=> setNonEmpty!27572 (= setRest!27566 ((_ map or) (store ((as const (Array Context!6042 Bool)) false) setElem!27572 true) setRest!27572))))

(declare-fun b!4929646 () Bool)

(declare-fun tp!1383861 () Bool)

(assert (=> b!4929646 (= e!3079868 tp!1383861)))

(assert (= (and setNonEmpty!27566 condSetEmpty!27572) setIsEmpty!27572))

(assert (= (and setNonEmpty!27566 (not condSetEmpty!27572)) setNonEmpty!27572))

(assert (= setNonEmpty!27572 b!4929646))

(declare-fun m!5949796 () Bool)

(assert (=> setNonEmpty!27572 m!5949796))

(declare-fun b!4929655 () Bool)

(declare-fun tp!1383871 () Bool)

(declare-fun e!3079874 () Bool)

(declare-fun tp!1383870 () Bool)

(assert (=> b!4929655 (= e!3079874 (and (inv!73507 (left!41351 (c!840039 input!5492))) tp!1383871 (inv!73507 (right!41681 (c!840039 input!5492))) tp!1383870))))

(declare-fun b!4929657 () Bool)

(declare-fun e!3079873 () Bool)

(declare-fun tp!1383869 () Bool)

(assert (=> b!4929657 (= e!3079873 tp!1383869)))

(declare-fun b!4929656 () Bool)

(declare-fun inv!73515 (IArray!29817) Bool)

(assert (=> b!4929656 (= e!3079874 (and (inv!73515 (xs!18202 (c!840039 input!5492))) e!3079873))))

(assert (=> b!4929403 (= tp!1383827 (and (inv!73507 (c!840039 input!5492)) e!3079874))))

(assert (= (and b!4929403 ((_ is Node!14878) (c!840039 input!5492))) b!4929655))

(assert (= b!4929656 b!4929657))

(assert (= (and b!4929403 ((_ is Leaf!24750) (c!840039 input!5492))) b!4929656))

(declare-fun m!5949798 () Bool)

(assert (=> b!4929655 m!5949798))

(declare-fun m!5949800 () Bool)

(assert (=> b!4929655 m!5949800))

(declare-fun m!5949802 () Bool)

(assert (=> b!4929656 m!5949802))

(assert (=> b!4929403 m!5949414))

(check-sat (not bm!344026) (not bm!344021) (not b!4929656) (not b!4929548) (not d!1587144) (not b!4929646) (not b!4929547) (not d!1587170) (not bm!344074) (not b!4929533) (not bm!344071) (not b!4929439) (not d!1587160) (not bm!344022) (not bm!344020) (not d!1587158) (not b!4929636) (not bm!344077) (not setNonEmpty!27572) (not d!1587166) (not b!4929527) (not bm!344029) (not bm!344076) (not d!1587178) (not b!4929453) (not bm!344075) (not d!1587154) (not bm!344024) (not b!4929655) (not b!4929641) (not b!4929657) (not bm!344028) (not d!1587168) (not b!4929440) (not d!1587164) (not d!1587172) (not bm!344070) (not bm!344027) (not b!4929433) (not bm!344023) (not b!4929452) (not d!1587174) (not bm!344072) (not b!4929634) (not d!1587176) (not b!4929403) (not bm!344073) (not b!4929524) (not bm!344025) (not b!4929536))
(check-sat)
