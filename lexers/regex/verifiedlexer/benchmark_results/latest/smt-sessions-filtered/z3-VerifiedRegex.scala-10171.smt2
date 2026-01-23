; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531342 () Bool)

(assert start!531342)

(declare-fun b!5026065 () Bool)

(declare-fun res!2142789 () Bool)

(declare-fun e!3139789 () Bool)

(assert (=> b!5026065 (=> res!2142789 e!3139789)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28084 0))(
  ( (C!28085 (val!23418 Int)) )
))
(declare-datatypes ((Regex!13917 0))(
  ( (ElementMatch!13917 (c!859645 C!28084)) (Concat!22710 (regOne!28346 Regex!13917) (regTwo!28346 Regex!13917)) (EmptyExpr!13917) (Star!13917 (reg!14246 Regex!13917)) (EmptyLang!13917) (Union!13917 (regOne!28347 Regex!13917) (regTwo!28347 Regex!13917)) )
))
(declare-datatypes ((List!58286 0))(
  ( (Nil!58162) (Cons!58162 (h!64610 Regex!13917) (t!370686 List!58286)) )
))
(declare-datatypes ((Context!6684 0))(
  ( (Context!6685 (exprs!3842 List!58286)) )
))
(declare-fun lt!2080262 () (InoxSet Context!6684))

(declare-fun nullableZipper!930 ((InoxSet Context!6684)) Bool)

(assert (=> b!5026065 (= res!2142789 (not (nullableZipper!930 lt!2080262)))))

(declare-fun b!5026066 () Bool)

(declare-fun e!3139791 () Bool)

(declare-fun tp!1408785 () Bool)

(assert (=> b!5026066 (= e!3139791 tp!1408785)))

(declare-fun tp!1408786 () Bool)

(declare-fun setNonEmpty!28894 () Bool)

(declare-fun setRes!28894 () Bool)

(declare-fun setElem!28894 () Context!6684)

(declare-fun inv!76692 (Context!6684) Bool)

(assert (=> setNonEmpty!28894 (= setRes!28894 (and tp!1408786 (inv!76692 setElem!28894) e!3139791))))

(declare-fun z!4747 () (InoxSet Context!6684))

(declare-fun setRest!28894 () (InoxSet Context!6684))

(assert (=> setNonEmpty!28894 (= z!4747 ((_ map or) (store ((as const (Array Context!6684 Bool)) false) setElem!28894 true) setRest!28894))))

(declare-fun b!5026067 () Bool)

(declare-fun res!2142783 () Bool)

(declare-fun e!3139788 () Bool)

(assert (=> b!5026067 (=> (not res!2142783) (not e!3139788))))

(declare-fun from!1228 () Int)

(declare-fun lt!2080261 () Int)

(assert (=> b!5026067 (= res!2142783 (not (= from!1228 lt!2080261)))))

(declare-fun setIsEmpty!28894 () Bool)

(assert (=> setIsEmpty!28894 setRes!28894))

(declare-fun b!5026068 () Bool)

(declare-fun e!3139787 () Bool)

(assert (=> b!5026068 (= e!3139789 e!3139787)))

(declare-fun res!2142785 () Bool)

(assert (=> b!5026068 (=> res!2142785 e!3139787)))

(declare-datatypes ((List!58287 0))(
  ( (Nil!58163) (Cons!58163 (h!64611 C!28084) (t!370687 List!58287)) )
))
(declare-fun lt!2080263 () List!58287)

(declare-fun lt!2080266 () C!28084)

(assert (=> b!5026068 (= res!2142785 (not (= lt!2080263 (Cons!58163 lt!2080266 Nil!58163))))))

(declare-fun lt!2080265 () List!58287)

(declare-fun lt!2080264 () List!58287)

(declare-fun apply!14158 (List!58287 Int) C!28084)

(declare-fun take!768 (List!58287 Int) List!58287)

(assert (=> b!5026068 (= (Cons!58163 (apply!14158 lt!2080264 from!1228) (take!768 lt!2080265 0)) lt!2080263)))

(declare-datatypes ((Unit!149355 0))(
  ( (Unit!149356) )
))
(declare-fun lt!2080269 () Unit!149355)

(declare-fun lemmaDropTakeAddOneLeft!96 (List!58287 Int Int) Unit!149355)

(assert (=> b!5026068 (= lt!2080269 (lemmaDropTakeAddOneLeft!96 lt!2080264 from!1228 0))))

(declare-fun drop!2568 (List!58287 Int) List!58287)

(assert (=> b!5026068 (= lt!2080263 (take!768 (drop!2568 lt!2080264 from!1228) 1))))

(declare-fun b!5026069 () Bool)

(assert (=> b!5026069 (= e!3139788 (not e!3139789))))

(declare-fun res!2142787 () Bool)

(assert (=> b!5026069 (=> res!2142787 e!3139789)))

(declare-fun lt!2080267 () Int)

(assert (=> b!5026069 (= res!2142787 (> lt!2080267 0))))

(declare-fun lt!2080270 () List!58287)

(assert (=> b!5026069 (= lt!2080270 (take!768 lt!2080265 lt!2080267))))

(assert (=> b!5026069 (= lt!2080265 (drop!2568 lt!2080264 (+ 1 from!1228)))))

(declare-datatypes ((IArray!30933 0))(
  ( (IArray!30934 (innerList!15524 List!58287)) )
))
(declare-datatypes ((Conc!15436 0))(
  ( (Node!15436 (left!42541 Conc!15436) (right!42871 Conc!15436) (csize!31102 Int) (cheight!15647 Int)) (Leaf!25608 (xs!18762 IArray!30933) (csize!31103 Int)) (Empty!15436) )
))
(declare-datatypes ((BalanceConc!30302 0))(
  ( (BalanceConc!30303 (c!859646 Conc!15436)) )
))
(declare-fun totalInput!1141 () BalanceConc!30302)

(declare-fun list!18778 (BalanceConc!30302) List!58287)

(assert (=> b!5026069 (= lt!2080264 (list!18778 totalInput!1141))))

(declare-fun e!3139793 () Bool)

(assert (=> b!5026069 e!3139793))

(declare-fun res!2142786 () Bool)

(assert (=> b!5026069 (=> res!2142786 e!3139793)))

(assert (=> b!5026069 (= res!2142786 (= lt!2080267 0))))

(declare-fun lt!2080268 () Unit!149355)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!114 ((InoxSet Context!6684) Int BalanceConc!30302) Unit!149355)

(assert (=> b!5026069 (= lt!2080268 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!114 lt!2080262 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!231 ((InoxSet Context!6684) Int BalanceConc!30302 Int) Int)

(assert (=> b!5026069 (= lt!2080267 (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 lt!2080261))))

(declare-fun derivationStepZipper!713 ((InoxSet Context!6684) C!28084) (InoxSet Context!6684))

(assert (=> b!5026069 (= lt!2080262 (derivationStepZipper!713 z!4747 lt!2080266))))

(declare-fun apply!14159 (BalanceConc!30302 Int) C!28084)

(assert (=> b!5026069 (= lt!2080266 (apply!14159 totalInput!1141 from!1228))))

(declare-fun b!5026070 () Bool)

(declare-fun matchZipper!671 ((InoxSet Context!6684) List!58287) Bool)

(assert (=> b!5026070 (= e!3139793 (matchZipper!671 lt!2080262 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))

(declare-fun res!2142784 () Bool)

(declare-fun e!3139790 () Bool)

(assert (=> start!531342 (=> (not res!2142784) (not e!3139790))))

(assert (=> start!531342 (= res!2142784 (>= from!1228 0))))

(assert (=> start!531342 e!3139790))

(assert (=> start!531342 true))

(declare-fun e!3139792 () Bool)

(declare-fun inv!76693 (BalanceConc!30302) Bool)

(assert (=> start!531342 (and (inv!76693 totalInput!1141) e!3139792)))

(declare-fun condSetEmpty!28894 () Bool)

(assert (=> start!531342 (= condSetEmpty!28894 (= z!4747 ((as const (Array Context!6684 Bool)) false)))))

(assert (=> start!531342 setRes!28894))

(declare-fun b!5026071 () Bool)

(declare-fun tp!1408784 () Bool)

(declare-fun inv!76694 (Conc!15436) Bool)

(assert (=> b!5026071 (= e!3139792 (and (inv!76694 (c!859646 totalInput!1141)) tp!1408784))))

(declare-fun b!5026072 () Bool)

(assert (=> b!5026072 (= e!3139790 e!3139788)))

(declare-fun res!2142782 () Bool)

(assert (=> b!5026072 (=> (not res!2142782) (not e!3139788))))

(assert (=> b!5026072 (= res!2142782 (<= from!1228 lt!2080261))))

(declare-fun size!38704 (BalanceConc!30302) Int)

(assert (=> b!5026072 (= lt!2080261 (size!38704 totalInput!1141))))

(declare-fun b!5026073 () Bool)

(declare-fun res!2142788 () Bool)

(assert (=> b!5026073 (=> (not res!2142788) (not e!3139788))))

(declare-fun lostCauseZipper!931 ((InoxSet Context!6684)) Bool)

(assert (=> b!5026073 (= res!2142788 (not (lostCauseZipper!931 z!4747)))))

(declare-fun b!5026074 () Bool)

(assert (=> b!5026074 (= e!3139787 (matchZipper!671 lt!2080262 Nil!58163))))

(assert (= (and start!531342 res!2142784) b!5026072))

(assert (= (and b!5026072 res!2142782) b!5026073))

(assert (= (and b!5026073 res!2142788) b!5026067))

(assert (= (and b!5026067 res!2142783) b!5026069))

(assert (= (and b!5026069 (not res!2142786)) b!5026070))

(assert (= (and b!5026069 (not res!2142787)) b!5026065))

(assert (= (and b!5026065 (not res!2142789)) b!5026068))

(assert (= (and b!5026068 (not res!2142785)) b!5026074))

(assert (= start!531342 b!5026071))

(assert (= (and start!531342 condSetEmpty!28894) setIsEmpty!28894))

(assert (= (and start!531342 (not condSetEmpty!28894)) setNonEmpty!28894))

(assert (= setNonEmpty!28894 b!5026066))

(declare-fun m!6061458 () Bool)

(assert (=> b!5026074 m!6061458))

(declare-fun m!6061460 () Bool)

(assert (=> b!5026065 m!6061460))

(declare-fun m!6061462 () Bool)

(assert (=> b!5026073 m!6061462))

(declare-fun m!6061464 () Bool)

(assert (=> start!531342 m!6061464))

(declare-fun m!6061466 () Bool)

(assert (=> b!5026070 m!6061466))

(assert (=> b!5026070 m!6061466))

(declare-fun m!6061468 () Bool)

(assert (=> b!5026070 m!6061468))

(assert (=> b!5026070 m!6061468))

(declare-fun m!6061470 () Bool)

(assert (=> b!5026070 m!6061470))

(assert (=> b!5026070 m!6061470))

(declare-fun m!6061472 () Bool)

(assert (=> b!5026070 m!6061472))

(declare-fun m!6061474 () Bool)

(assert (=> b!5026071 m!6061474))

(declare-fun m!6061476 () Bool)

(assert (=> b!5026068 m!6061476))

(assert (=> b!5026068 m!6061476))

(declare-fun m!6061478 () Bool)

(assert (=> b!5026068 m!6061478))

(declare-fun m!6061480 () Bool)

(assert (=> b!5026068 m!6061480))

(declare-fun m!6061482 () Bool)

(assert (=> b!5026068 m!6061482))

(declare-fun m!6061484 () Bool)

(assert (=> b!5026068 m!6061484))

(declare-fun m!6061486 () Bool)

(assert (=> b!5026072 m!6061486))

(declare-fun m!6061488 () Bool)

(assert (=> setNonEmpty!28894 m!6061488))

(declare-fun m!6061490 () Bool)

(assert (=> b!5026069 m!6061490))

(declare-fun m!6061492 () Bool)

(assert (=> b!5026069 m!6061492))

(declare-fun m!6061494 () Bool)

(assert (=> b!5026069 m!6061494))

(assert (=> b!5026069 m!6061466))

(declare-fun m!6061496 () Bool)

(assert (=> b!5026069 m!6061496))

(declare-fun m!6061498 () Bool)

(assert (=> b!5026069 m!6061498))

(declare-fun m!6061500 () Bool)

(assert (=> b!5026069 m!6061500))

(check-sat (not b!5026070) (not b!5026074) (not b!5026072) (not start!531342) (not b!5026068) (not b!5026065) (not b!5026071) (not b!5026069) (not b!5026066) (not setNonEmpty!28894) (not b!5026073))
(check-sat)
(get-model)

(declare-fun bs!1187997 () Bool)

(declare-fun b!5026257 () Bool)

(declare-fun d!1617588 () Bool)

(assert (= bs!1187997 (and b!5026257 d!1617588)))

(declare-fun lambda!249278 () Int)

(declare-fun lambda!249277 () Int)

(assert (=> bs!1187997 (not (= lambda!249278 lambda!249277))))

(declare-fun bs!1187998 () Bool)

(declare-fun b!5026258 () Bool)

(assert (= bs!1187998 (and b!5026258 d!1617588)))

(declare-fun lambda!249279 () Int)

(assert (=> bs!1187998 (not (= lambda!249279 lambda!249277))))

(declare-fun bs!1187999 () Bool)

(assert (= bs!1187999 (and b!5026258 b!5026257)))

(assert (=> bs!1187999 (= lambda!249279 lambda!249278)))

(declare-fun e!3139911 () Unit!149355)

(declare-fun Unit!149359 () Unit!149355)

(assert (=> b!5026257 (= e!3139911 Unit!149359)))

(declare-datatypes ((List!58289 0))(
  ( (Nil!58165) (Cons!58165 (h!64613 Context!6684) (t!370689 List!58289)) )
))
(declare-fun lt!2080351 () List!58289)

(declare-fun call!350767 () List!58289)

(assert (=> b!5026257 (= lt!2080351 call!350767)))

(declare-fun lt!2080348 () Unit!149355)

(declare-fun lemmaNotForallThenExists!273 (List!58289 Int) Unit!149355)

(assert (=> b!5026257 (= lt!2080348 (lemmaNotForallThenExists!273 lt!2080351 lambda!249277))))

(declare-fun call!350768 () Bool)

(assert (=> b!5026257 call!350768))

(declare-fun lt!2080350 () Unit!149355)

(assert (=> b!5026257 (= lt!2080350 lt!2080348)))

(declare-fun bm!350762 () Bool)

(declare-fun toList!8124 ((InoxSet Context!6684)) List!58289)

(assert (=> bm!350762 (= call!350767 (toList!8124 z!4747))))

(declare-fun bm!350763 () Bool)

(declare-fun lt!2080352 () List!58289)

(declare-fun c!859729 () Bool)

(declare-fun exists!1398 (List!58289 Int) Bool)

(assert (=> bm!350763 (= call!350768 (exists!1398 (ite c!859729 lt!2080351 lt!2080352) (ite c!859729 lambda!249278 lambda!249279)))))

(declare-fun Unit!149360 () Unit!149355)

(assert (=> b!5026258 (= e!3139911 Unit!149360)))

(assert (=> b!5026258 (= lt!2080352 call!350767)))

(declare-fun lt!2080349 () Unit!149355)

(declare-fun lemmaForallThenNotExists!256 (List!58289 Int) Unit!149355)

(assert (=> b!5026258 (= lt!2080349 (lemmaForallThenNotExists!256 lt!2080352 lambda!249277))))

(assert (=> b!5026258 (not call!350768)))

(declare-fun lt!2080347 () Unit!149355)

(assert (=> b!5026258 (= lt!2080347 lt!2080349)))

(declare-fun lt!2080346 () Bool)

(declare-datatypes ((Option!14603 0))(
  ( (None!14602) (Some!14602 (v!50609 List!58287)) )
))
(declare-fun isEmpty!31453 (Option!14603) Bool)

(declare-fun getLanguageWitness!742 ((InoxSet Context!6684)) Option!14603)

(assert (=> d!1617588 (= lt!2080346 (isEmpty!31453 (getLanguageWitness!742 z!4747)))))

(declare-fun forall!13430 ((InoxSet Context!6684) Int) Bool)

(assert (=> d!1617588 (= lt!2080346 (forall!13430 z!4747 lambda!249277))))

(declare-fun lt!2080353 () Unit!149355)

(assert (=> d!1617588 (= lt!2080353 e!3139911)))

(assert (=> d!1617588 (= c!859729 (not (forall!13430 z!4747 lambda!249277)))))

(assert (=> d!1617588 (= (lostCauseZipper!931 z!4747) lt!2080346)))

(assert (= (and d!1617588 c!859729) b!5026257))

(assert (= (and d!1617588 (not c!859729)) b!5026258))

(assert (= (or b!5026257 b!5026258) bm!350762))

(assert (= (or b!5026257 b!5026258) bm!350763))

(declare-fun m!6061660 () Bool)

(assert (=> b!5026257 m!6061660))

(declare-fun m!6061662 () Bool)

(assert (=> bm!350762 m!6061662))

(declare-fun m!6061664 () Bool)

(assert (=> bm!350763 m!6061664))

(declare-fun m!6061666 () Bool)

(assert (=> d!1617588 m!6061666))

(assert (=> d!1617588 m!6061666))

(declare-fun m!6061668 () Bool)

(assert (=> d!1617588 m!6061668))

(declare-fun m!6061670 () Bool)

(assert (=> d!1617588 m!6061670))

(assert (=> d!1617588 m!6061670))

(declare-fun m!6061672 () Bool)

(assert (=> b!5026258 m!6061672))

(assert (=> b!5026073 d!1617588))

(declare-fun b!5026277 () Bool)

(declare-fun e!3139922 () Int)

(declare-fun call!350771 () Int)

(assert (=> b!5026277 (= e!3139922 (- call!350771 from!1228))))

(declare-fun b!5026279 () Bool)

(declare-fun e!3139925 () List!58287)

(assert (=> b!5026279 (= e!3139925 (drop!2568 (t!370687 lt!2080264) (- from!1228 1)))))

(declare-fun b!5026280 () Bool)

(declare-fun e!3139924 () Int)

(assert (=> b!5026280 (= e!3139924 e!3139922)))

(declare-fun c!859740 () Bool)

(assert (=> b!5026280 (= c!859740 (>= from!1228 call!350771))))

(declare-fun b!5026281 () Bool)

(assert (=> b!5026281 (= e!3139922 0)))

(declare-fun bm!350766 () Bool)

(declare-fun size!38707 (List!58287) Int)

(assert (=> bm!350766 (= call!350771 (size!38707 lt!2080264))))

(declare-fun b!5026282 () Bool)

(declare-fun e!3139926 () List!58287)

(assert (=> b!5026282 (= e!3139926 e!3139925)))

(declare-fun c!859741 () Bool)

(assert (=> b!5026282 (= c!859741 (<= from!1228 0))))

(declare-fun b!5026283 () Bool)

(declare-fun e!3139923 () Bool)

(declare-fun lt!2080356 () List!58287)

(assert (=> b!5026283 (= e!3139923 (= (size!38707 lt!2080356) e!3139924))))

(declare-fun c!859738 () Bool)

(assert (=> b!5026283 (= c!859738 (<= from!1228 0))))

(declare-fun b!5026278 () Bool)

(assert (=> b!5026278 (= e!3139924 call!350771)))

(declare-fun d!1617630 () Bool)

(assert (=> d!1617630 e!3139923))

(declare-fun res!2142827 () Bool)

(assert (=> d!1617630 (=> (not res!2142827) (not e!3139923))))

(declare-fun content!10307 (List!58287) (InoxSet C!28084))

(assert (=> d!1617630 (= res!2142827 (= ((_ map implies) (content!10307 lt!2080356) (content!10307 lt!2080264)) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617630 (= lt!2080356 e!3139926)))

(declare-fun c!859739 () Bool)

(get-info :version)

(assert (=> d!1617630 (= c!859739 ((_ is Nil!58163) lt!2080264))))

(assert (=> d!1617630 (= (drop!2568 lt!2080264 from!1228) lt!2080356)))

(declare-fun b!5026284 () Bool)

(assert (=> b!5026284 (= e!3139926 Nil!58163)))

(declare-fun b!5026285 () Bool)

(assert (=> b!5026285 (= e!3139925 lt!2080264)))

(assert (= (and d!1617630 c!859739) b!5026284))

(assert (= (and d!1617630 (not c!859739)) b!5026282))

(assert (= (and b!5026282 c!859741) b!5026285))

(assert (= (and b!5026282 (not c!859741)) b!5026279))

(assert (= (and d!1617630 res!2142827) b!5026283))

(assert (= (and b!5026283 c!859738) b!5026278))

(assert (= (and b!5026283 (not c!859738)) b!5026280))

(assert (= (and b!5026280 c!859740) b!5026281))

(assert (= (and b!5026280 (not c!859740)) b!5026277))

(assert (= (or b!5026278 b!5026280 b!5026277) bm!350766))

(declare-fun m!6061674 () Bool)

(assert (=> b!5026279 m!6061674))

(declare-fun m!6061676 () Bool)

(assert (=> bm!350766 m!6061676))

(declare-fun m!6061678 () Bool)

(assert (=> b!5026283 m!6061678))

(declare-fun m!6061680 () Bool)

(assert (=> d!1617630 m!6061680))

(declare-fun m!6061682 () Bool)

(assert (=> d!1617630 m!6061682))

(assert (=> b!5026068 d!1617630))

(declare-fun b!5026300 () Bool)

(declare-fun e!3139936 () List!58287)

(assert (=> b!5026300 (= e!3139936 Nil!58163)))

(declare-fun b!5026301 () Bool)

(declare-fun e!3139938 () Int)

(assert (=> b!5026301 (= e!3139938 (size!38707 (drop!2568 lt!2080264 from!1228)))))

(declare-fun b!5026302 () Bool)

(assert (=> b!5026302 (= e!3139936 (Cons!58163 (h!64611 (drop!2568 lt!2080264 from!1228)) (take!768 (t!370687 (drop!2568 lt!2080264 from!1228)) (- 1 1))))))

(declare-fun b!5026303 () Bool)

(declare-fun e!3139937 () Int)

(assert (=> b!5026303 (= e!3139937 0)))

(declare-fun b!5026304 () Bool)

(assert (=> b!5026304 (= e!3139938 1)))

(declare-fun d!1617632 () Bool)

(declare-fun e!3139935 () Bool)

(assert (=> d!1617632 e!3139935))

(declare-fun res!2142830 () Bool)

(assert (=> d!1617632 (=> (not res!2142830) (not e!3139935))))

(declare-fun lt!2080359 () List!58287)

(assert (=> d!1617632 (= res!2142830 (= ((_ map implies) (content!10307 lt!2080359) (content!10307 (drop!2568 lt!2080264 from!1228))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617632 (= lt!2080359 e!3139936)))

(declare-fun c!859749 () Bool)

(assert (=> d!1617632 (= c!859749 (or ((_ is Nil!58163) (drop!2568 lt!2080264 from!1228)) (<= 1 0)))))

(assert (=> d!1617632 (= (take!768 (drop!2568 lt!2080264 from!1228) 1) lt!2080359)))

(declare-fun b!5026305 () Bool)

(assert (=> b!5026305 (= e!3139937 e!3139938)))

(declare-fun c!859750 () Bool)

(assert (=> b!5026305 (= c!859750 (>= 1 (size!38707 (drop!2568 lt!2080264 from!1228))))))

(declare-fun b!5026306 () Bool)

(assert (=> b!5026306 (= e!3139935 (= (size!38707 lt!2080359) e!3139937))))

(declare-fun c!859748 () Bool)

(assert (=> b!5026306 (= c!859748 (<= 1 0))))

(assert (= (and d!1617632 c!859749) b!5026300))

(assert (= (and d!1617632 (not c!859749)) b!5026302))

(assert (= (and d!1617632 res!2142830) b!5026306))

(assert (= (and b!5026306 c!859748) b!5026303))

(assert (= (and b!5026306 (not c!859748)) b!5026305))

(assert (= (and b!5026305 c!859750) b!5026301))

(assert (= (and b!5026305 (not c!859750)) b!5026304))

(declare-fun m!6061684 () Bool)

(assert (=> b!5026306 m!6061684))

(declare-fun m!6061686 () Bool)

(assert (=> b!5026302 m!6061686))

(assert (=> b!5026305 m!6061476))

(declare-fun m!6061688 () Bool)

(assert (=> b!5026305 m!6061688))

(declare-fun m!6061690 () Bool)

(assert (=> d!1617632 m!6061690))

(assert (=> d!1617632 m!6061476))

(declare-fun m!6061692 () Bool)

(assert (=> d!1617632 m!6061692))

(assert (=> b!5026301 m!6061476))

(assert (=> b!5026301 m!6061688))

(assert (=> b!5026068 d!1617632))

(declare-fun d!1617634 () Bool)

(declare-fun lt!2080362 () C!28084)

(declare-fun contains!19576 (List!58287 C!28084) Bool)

(assert (=> d!1617634 (contains!19576 lt!2080264 lt!2080362)))

(declare-fun e!3139943 () C!28084)

(assert (=> d!1617634 (= lt!2080362 e!3139943)))

(declare-fun c!859753 () Bool)

(assert (=> d!1617634 (= c!859753 (= from!1228 0))))

(declare-fun e!3139944 () Bool)

(assert (=> d!1617634 e!3139944))

(declare-fun res!2142833 () Bool)

(assert (=> d!1617634 (=> (not res!2142833) (not e!3139944))))

(assert (=> d!1617634 (= res!2142833 (<= 0 from!1228))))

(assert (=> d!1617634 (= (apply!14158 lt!2080264 from!1228) lt!2080362)))

(declare-fun b!5026313 () Bool)

(assert (=> b!5026313 (= e!3139944 (< from!1228 (size!38707 lt!2080264)))))

(declare-fun b!5026314 () Bool)

(declare-fun head!10778 (List!58287) C!28084)

(assert (=> b!5026314 (= e!3139943 (head!10778 lt!2080264))))

(declare-fun b!5026315 () Bool)

(declare-fun tail!9911 (List!58287) List!58287)

(assert (=> b!5026315 (= e!3139943 (apply!14158 (tail!9911 lt!2080264) (- from!1228 1)))))

(assert (= (and d!1617634 res!2142833) b!5026313))

(assert (= (and d!1617634 c!859753) b!5026314))

(assert (= (and d!1617634 (not c!859753)) b!5026315))

(declare-fun m!6061694 () Bool)

(assert (=> d!1617634 m!6061694))

(assert (=> b!5026313 m!6061676))

(declare-fun m!6061696 () Bool)

(assert (=> b!5026314 m!6061696))

(declare-fun m!6061698 () Bool)

(assert (=> b!5026315 m!6061698))

(assert (=> b!5026315 m!6061698))

(declare-fun m!6061700 () Bool)

(assert (=> b!5026315 m!6061700))

(assert (=> b!5026068 d!1617634))

(declare-fun d!1617636 () Bool)

(assert (=> d!1617636 (= (Cons!58163 (apply!14158 lt!2080264 from!1228) (take!768 (drop!2568 lt!2080264 (+ from!1228 1)) 0)) (take!768 (drop!2568 lt!2080264 from!1228) (+ 0 1)))))

(declare-fun lt!2080365 () Unit!149355)

(declare-fun choose!37188 (List!58287 Int Int) Unit!149355)

(assert (=> d!1617636 (= lt!2080365 (choose!37188 lt!2080264 from!1228 0))))

(declare-fun e!3139947 () Bool)

(assert (=> d!1617636 e!3139947))

(declare-fun res!2142836 () Bool)

(assert (=> d!1617636 (=> (not res!2142836) (not e!3139947))))

(assert (=> d!1617636 (= res!2142836 (>= from!1228 0))))

(assert (=> d!1617636 (= (lemmaDropTakeAddOneLeft!96 lt!2080264 from!1228 0) lt!2080365)))

(declare-fun b!5026318 () Bool)

(assert (=> b!5026318 (= e!3139947 (< from!1228 (size!38707 lt!2080264)))))

(assert (= (and d!1617636 res!2142836) b!5026318))

(declare-fun m!6061702 () Bool)

(assert (=> d!1617636 m!6061702))

(declare-fun m!6061704 () Bool)

(assert (=> d!1617636 m!6061704))

(assert (=> d!1617636 m!6061476))

(assert (=> d!1617636 m!6061476))

(declare-fun m!6061706 () Bool)

(assert (=> d!1617636 m!6061706))

(assert (=> d!1617636 m!6061702))

(assert (=> d!1617636 m!6061480))

(declare-fun m!6061708 () Bool)

(assert (=> d!1617636 m!6061708))

(assert (=> b!5026318 m!6061676))

(assert (=> b!5026068 d!1617636))

(declare-fun b!5026319 () Bool)

(declare-fun e!3139949 () List!58287)

(assert (=> b!5026319 (= e!3139949 Nil!58163)))

(declare-fun b!5026320 () Bool)

(declare-fun e!3139951 () Int)

(assert (=> b!5026320 (= e!3139951 (size!38707 lt!2080265))))

(declare-fun b!5026321 () Bool)

(assert (=> b!5026321 (= e!3139949 (Cons!58163 (h!64611 lt!2080265) (take!768 (t!370687 lt!2080265) (- 0 1))))))

(declare-fun b!5026322 () Bool)

(declare-fun e!3139950 () Int)

(assert (=> b!5026322 (= e!3139950 0)))

(declare-fun b!5026323 () Bool)

(assert (=> b!5026323 (= e!3139951 0)))

(declare-fun d!1617638 () Bool)

(declare-fun e!3139948 () Bool)

(assert (=> d!1617638 e!3139948))

(declare-fun res!2142837 () Bool)

(assert (=> d!1617638 (=> (not res!2142837) (not e!3139948))))

(declare-fun lt!2080366 () List!58287)

(assert (=> d!1617638 (= res!2142837 (= ((_ map implies) (content!10307 lt!2080366) (content!10307 lt!2080265)) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617638 (= lt!2080366 e!3139949)))

(declare-fun c!859755 () Bool)

(assert (=> d!1617638 (= c!859755 (or ((_ is Nil!58163) lt!2080265) (<= 0 0)))))

(assert (=> d!1617638 (= (take!768 lt!2080265 0) lt!2080366)))

(declare-fun b!5026324 () Bool)

(assert (=> b!5026324 (= e!3139950 e!3139951)))

(declare-fun c!859756 () Bool)

(assert (=> b!5026324 (= c!859756 (>= 0 (size!38707 lt!2080265)))))

(declare-fun b!5026325 () Bool)

(assert (=> b!5026325 (= e!3139948 (= (size!38707 lt!2080366) e!3139950))))

(declare-fun c!859754 () Bool)

(assert (=> b!5026325 (= c!859754 (<= 0 0))))

(assert (= (and d!1617638 c!859755) b!5026319))

(assert (= (and d!1617638 (not c!859755)) b!5026321))

(assert (= (and d!1617638 res!2142837) b!5026325))

(assert (= (and b!5026325 c!859754) b!5026322))

(assert (= (and b!5026325 (not c!859754)) b!5026324))

(assert (= (and b!5026324 c!859756) b!5026320))

(assert (= (and b!5026324 (not c!859756)) b!5026323))

(declare-fun m!6061710 () Bool)

(assert (=> b!5026325 m!6061710))

(declare-fun m!6061712 () Bool)

(assert (=> b!5026321 m!6061712))

(declare-fun m!6061714 () Bool)

(assert (=> b!5026324 m!6061714))

(declare-fun m!6061716 () Bool)

(assert (=> d!1617638 m!6061716))

(declare-fun m!6061718 () Bool)

(assert (=> d!1617638 m!6061718))

(assert (=> b!5026320 m!6061714))

(assert (=> b!5026068 d!1617638))

(declare-fun d!1617640 () Bool)

(declare-fun lt!2080369 () Int)

(assert (=> d!1617640 (= lt!2080369 (size!38707 (list!18778 totalInput!1141)))))

(declare-fun size!38708 (Conc!15436) Int)

(assert (=> d!1617640 (= lt!2080369 (size!38708 (c!859646 totalInput!1141)))))

(assert (=> d!1617640 (= (size!38704 totalInput!1141) lt!2080369)))

(declare-fun bs!1188000 () Bool)

(assert (= bs!1188000 d!1617640))

(assert (=> bs!1188000 m!6061466))

(assert (=> bs!1188000 m!6061466))

(declare-fun m!6061720 () Bool)

(assert (=> bs!1188000 m!6061720))

(declare-fun m!6061722 () Bool)

(assert (=> bs!1188000 m!6061722))

(assert (=> b!5026072 d!1617640))

(declare-fun d!1617642 () Bool)

(declare-fun c!859759 () Bool)

(assert (=> d!1617642 (= c!859759 ((_ is Node!15436) (c!859646 totalInput!1141)))))

(declare-fun e!3139956 () Bool)

(assert (=> d!1617642 (= (inv!76694 (c!859646 totalInput!1141)) e!3139956)))

(declare-fun b!5026332 () Bool)

(declare-fun inv!76698 (Conc!15436) Bool)

(assert (=> b!5026332 (= e!3139956 (inv!76698 (c!859646 totalInput!1141)))))

(declare-fun b!5026333 () Bool)

(declare-fun e!3139957 () Bool)

(assert (=> b!5026333 (= e!3139956 e!3139957)))

(declare-fun res!2142840 () Bool)

(assert (=> b!5026333 (= res!2142840 (not ((_ is Leaf!25608) (c!859646 totalInput!1141))))))

(assert (=> b!5026333 (=> res!2142840 e!3139957)))

(declare-fun b!5026334 () Bool)

(declare-fun inv!76699 (Conc!15436) Bool)

(assert (=> b!5026334 (= e!3139957 (inv!76699 (c!859646 totalInput!1141)))))

(assert (= (and d!1617642 c!859759) b!5026332))

(assert (= (and d!1617642 (not c!859759)) b!5026333))

(assert (= (and b!5026333 (not res!2142840)) b!5026334))

(declare-fun m!6061724 () Bool)

(assert (=> b!5026332 m!6061724))

(declare-fun m!6061726 () Bool)

(assert (=> b!5026334 m!6061726))

(assert (=> b!5026071 d!1617642))

(declare-fun d!1617644 () Bool)

(declare-fun lambda!249282 () Int)

(declare-fun forall!13431 (List!58286 Int) Bool)

(assert (=> d!1617644 (= (inv!76692 setElem!28894) (forall!13431 (exprs!3842 setElem!28894) lambda!249282))))

(declare-fun bs!1188001 () Bool)

(assert (= bs!1188001 d!1617644))

(declare-fun m!6061728 () Bool)

(assert (=> bs!1188001 m!6061728))

(assert (=> setNonEmpty!28894 d!1617644))

(declare-fun c!859762 () Bool)

(declare-fun d!1617646 () Bool)

(declare-fun isEmpty!31454 (List!58287) Bool)

(assert (=> d!1617646 (= c!859762 (isEmpty!31454 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))

(declare-fun e!3139960 () Bool)

(assert (=> d!1617646 (= (matchZipper!671 lt!2080262 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) e!3139960)))

(declare-fun b!5026339 () Bool)

(assert (=> b!5026339 (= e!3139960 (nullableZipper!930 lt!2080262))))

(declare-fun b!5026340 () Bool)

(assert (=> b!5026340 (= e!3139960 (matchZipper!671 (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))) (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))))))

(assert (= (and d!1617646 c!859762) b!5026339))

(assert (= (and d!1617646 (not c!859762)) b!5026340))

(assert (=> d!1617646 m!6061470))

(declare-fun m!6061730 () Bool)

(assert (=> d!1617646 m!6061730))

(assert (=> b!5026339 m!6061460))

(assert (=> b!5026340 m!6061470))

(declare-fun m!6061732 () Bool)

(assert (=> b!5026340 m!6061732))

(assert (=> b!5026340 m!6061732))

(declare-fun m!6061734 () Bool)

(assert (=> b!5026340 m!6061734))

(assert (=> b!5026340 m!6061470))

(declare-fun m!6061736 () Bool)

(assert (=> b!5026340 m!6061736))

(assert (=> b!5026340 m!6061734))

(assert (=> b!5026340 m!6061736))

(declare-fun m!6061738 () Bool)

(assert (=> b!5026340 m!6061738))

(assert (=> b!5026070 d!1617646))

(declare-fun b!5026341 () Bool)

(declare-fun e!3139962 () List!58287)

(assert (=> b!5026341 (= e!3139962 Nil!58163)))

(declare-fun b!5026342 () Bool)

(declare-fun e!3139964 () Int)

(assert (=> b!5026342 (= e!3139964 (size!38707 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5026343 () Bool)

(assert (=> b!5026343 (= e!3139962 (Cons!58163 (h!64611 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (take!768 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (- lt!2080267 1))))))

(declare-fun b!5026344 () Bool)

(declare-fun e!3139963 () Int)

(assert (=> b!5026344 (= e!3139963 0)))

(declare-fun b!5026345 () Bool)

(assert (=> b!5026345 (= e!3139964 lt!2080267)))

(declare-fun d!1617648 () Bool)

(declare-fun e!3139961 () Bool)

(assert (=> d!1617648 e!3139961))

(declare-fun res!2142841 () Bool)

(assert (=> d!1617648 (=> (not res!2142841) (not e!3139961))))

(declare-fun lt!2080370 () List!58287)

(assert (=> d!1617648 (= res!2142841 (= ((_ map implies) (content!10307 lt!2080370) (content!10307 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617648 (= lt!2080370 e!3139962)))

(declare-fun c!859764 () Bool)

(assert (=> d!1617648 (= c!859764 (or ((_ is Nil!58163) (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (<= lt!2080267 0)))))

(assert (=> d!1617648 (= (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267) lt!2080370)))

(declare-fun b!5026346 () Bool)

(assert (=> b!5026346 (= e!3139963 e!3139964)))

(declare-fun c!859765 () Bool)

(assert (=> b!5026346 (= c!859765 (>= lt!2080267 (size!38707 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5026347 () Bool)

(assert (=> b!5026347 (= e!3139961 (= (size!38707 lt!2080370) e!3139963))))

(declare-fun c!859763 () Bool)

(assert (=> b!5026347 (= c!859763 (<= lt!2080267 0))))

(assert (= (and d!1617648 c!859764) b!5026341))

(assert (= (and d!1617648 (not c!859764)) b!5026343))

(assert (= (and d!1617648 res!2142841) b!5026347))

(assert (= (and b!5026347 c!859763) b!5026344))

(assert (= (and b!5026347 (not c!859763)) b!5026346))

(assert (= (and b!5026346 c!859765) b!5026342))

(assert (= (and b!5026346 (not c!859765)) b!5026345))

(declare-fun m!6061740 () Bool)

(assert (=> b!5026347 m!6061740))

(declare-fun m!6061742 () Bool)

(assert (=> b!5026343 m!6061742))

(assert (=> b!5026346 m!6061468))

(declare-fun m!6061744 () Bool)

(assert (=> b!5026346 m!6061744))

(declare-fun m!6061746 () Bool)

(assert (=> d!1617648 m!6061746))

(assert (=> d!1617648 m!6061468))

(declare-fun m!6061748 () Bool)

(assert (=> d!1617648 m!6061748))

(assert (=> b!5026342 m!6061468))

(assert (=> b!5026342 m!6061744))

(assert (=> b!5026070 d!1617648))

(declare-fun b!5026348 () Bool)

(declare-fun e!3139965 () Int)

(declare-fun call!350772 () Int)

(assert (=> b!5026348 (= e!3139965 (- call!350772 (+ 1 from!1228)))))

(declare-fun b!5026350 () Bool)

(declare-fun e!3139968 () List!58287)

(assert (=> b!5026350 (= e!3139968 (drop!2568 (t!370687 (list!18778 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5026351 () Bool)

(declare-fun e!3139967 () Int)

(assert (=> b!5026351 (= e!3139967 e!3139965)))

(declare-fun c!859768 () Bool)

(assert (=> b!5026351 (= c!859768 (>= (+ 1 from!1228) call!350772))))

(declare-fun b!5026352 () Bool)

(assert (=> b!5026352 (= e!3139965 0)))

(declare-fun bm!350767 () Bool)

(assert (=> bm!350767 (= call!350772 (size!38707 (list!18778 totalInput!1141)))))

(declare-fun b!5026353 () Bool)

(declare-fun e!3139969 () List!58287)

(assert (=> b!5026353 (= e!3139969 e!3139968)))

(declare-fun c!859769 () Bool)

(assert (=> b!5026353 (= c!859769 (<= (+ 1 from!1228) 0))))

(declare-fun b!5026354 () Bool)

(declare-fun e!3139966 () Bool)

(declare-fun lt!2080371 () List!58287)

(assert (=> b!5026354 (= e!3139966 (= (size!38707 lt!2080371) e!3139967))))

(declare-fun c!859766 () Bool)

(assert (=> b!5026354 (= c!859766 (<= (+ 1 from!1228) 0))))

(declare-fun b!5026349 () Bool)

(assert (=> b!5026349 (= e!3139967 call!350772)))

(declare-fun d!1617650 () Bool)

(assert (=> d!1617650 e!3139966))

(declare-fun res!2142842 () Bool)

(assert (=> d!1617650 (=> (not res!2142842) (not e!3139966))))

(assert (=> d!1617650 (= res!2142842 (= ((_ map implies) (content!10307 lt!2080371) (content!10307 (list!18778 totalInput!1141))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617650 (= lt!2080371 e!3139969)))

(declare-fun c!859767 () Bool)

(assert (=> d!1617650 (= c!859767 ((_ is Nil!58163) (list!18778 totalInput!1141)))))

(assert (=> d!1617650 (= (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080371)))

(declare-fun b!5026355 () Bool)

(assert (=> b!5026355 (= e!3139969 Nil!58163)))

(declare-fun b!5026356 () Bool)

(assert (=> b!5026356 (= e!3139968 (list!18778 totalInput!1141))))

(assert (= (and d!1617650 c!859767) b!5026355))

(assert (= (and d!1617650 (not c!859767)) b!5026353))

(assert (= (and b!5026353 c!859769) b!5026356))

(assert (= (and b!5026353 (not c!859769)) b!5026350))

(assert (= (and d!1617650 res!2142842) b!5026354))

(assert (= (and b!5026354 c!859766) b!5026349))

(assert (= (and b!5026354 (not c!859766)) b!5026351))

(assert (= (and b!5026351 c!859768) b!5026352))

(assert (= (and b!5026351 (not c!859768)) b!5026348))

(assert (= (or b!5026349 b!5026351 b!5026348) bm!350767))

(declare-fun m!6061750 () Bool)

(assert (=> b!5026350 m!6061750))

(assert (=> bm!350767 m!6061466))

(assert (=> bm!350767 m!6061720))

(declare-fun m!6061752 () Bool)

(assert (=> b!5026354 m!6061752))

(declare-fun m!6061754 () Bool)

(assert (=> d!1617650 m!6061754))

(assert (=> d!1617650 m!6061466))

(declare-fun m!6061756 () Bool)

(assert (=> d!1617650 m!6061756))

(assert (=> b!5026070 d!1617650))

(declare-fun d!1617652 () Bool)

(declare-fun list!18780 (Conc!15436) List!58287)

(assert (=> d!1617652 (= (list!18778 totalInput!1141) (list!18780 (c!859646 totalInput!1141)))))

(declare-fun bs!1188002 () Bool)

(assert (= bs!1188002 d!1617652))

(declare-fun m!6061758 () Bool)

(assert (=> bs!1188002 m!6061758))

(assert (=> b!5026070 d!1617652))

(declare-fun d!1617654 () Bool)

(declare-fun isBalanced!4306 (Conc!15436) Bool)

(assert (=> d!1617654 (= (inv!76693 totalInput!1141) (isBalanced!4306 (c!859646 totalInput!1141)))))

(declare-fun bs!1188003 () Bool)

(assert (= bs!1188003 d!1617654))

(declare-fun m!6061760 () Bool)

(assert (=> bs!1188003 m!6061760))

(assert (=> start!531342 d!1617654))

(declare-fun b!5026373 () Bool)

(declare-fun e!3139982 () Int)

(assert (=> b!5026373 (= e!3139982 1)))

(declare-fun b!5026374 () Bool)

(declare-fun e!3139984 () Int)

(assert (=> b!5026374 (= e!3139984 0)))

(declare-fun b!5026375 () Bool)

(declare-fun e!3139983 () Bool)

(assert (=> b!5026375 (= e!3139983 (lostCauseZipper!931 lt!2080262))))

(declare-fun b!5026376 () Bool)

(declare-fun e!3139981 () Bool)

(assert (=> b!5026376 (= e!3139981 (<= (+ 1 from!1228) (size!38704 totalInput!1141)))))

(declare-fun d!1617656 () Bool)

(declare-fun lt!2080380 () Int)

(assert (=> d!1617656 (and (>= lt!2080380 0) (<= lt!2080380 (- lt!2080261 (+ 1 from!1228))))))

(assert (=> d!1617656 (= lt!2080380 e!3139984)))

(declare-fun c!859776 () Bool)

(assert (=> d!1617656 (= c!859776 e!3139983)))

(declare-fun res!2142848 () Bool)

(assert (=> d!1617656 (=> res!2142848 e!3139983)))

(assert (=> d!1617656 (= res!2142848 (= (+ 1 from!1228) lt!2080261))))

(assert (=> d!1617656 e!3139981))

(declare-fun res!2142847 () Bool)

(assert (=> d!1617656 (=> (not res!2142847) (not e!3139981))))

(assert (=> d!1617656 (= res!2142847 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617656 (= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 lt!2080261) lt!2080380)))

(declare-fun b!5026377 () Bool)

(declare-fun c!859777 () Bool)

(declare-fun lt!2080379 () (InoxSet Context!6684))

(assert (=> b!5026377 (= c!859777 (nullableZipper!930 lt!2080379))))

(declare-fun e!3139980 () Int)

(assert (=> b!5026377 (= e!3139980 e!3139982)))

(declare-fun b!5026378 () Bool)

(assert (=> b!5026378 (= e!3139982 0)))

(declare-fun b!5026379 () Bool)

(declare-fun lt!2080378 () Int)

(assert (=> b!5026379 (= e!3139980 (+ 1 lt!2080378))))

(declare-fun b!5026380 () Bool)

(assert (=> b!5026380 (= e!3139984 e!3139980)))

(assert (=> b!5026380 (= lt!2080379 (derivationStepZipper!713 lt!2080262 (apply!14159 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5026380 (= lt!2080378 (findLongestMatchInnerZipperFastV2!231 lt!2080379 (+ 1 from!1228 1) totalInput!1141 lt!2080261))))

(declare-fun c!859778 () Bool)

(assert (=> b!5026380 (= c!859778 (> lt!2080378 0))))

(assert (= (and d!1617656 res!2142847) b!5026376))

(assert (= (and d!1617656 (not res!2142848)) b!5026375))

(assert (= (and d!1617656 c!859776) b!5026374))

(assert (= (and d!1617656 (not c!859776)) b!5026380))

(assert (= (and b!5026380 c!859778) b!5026379))

(assert (= (and b!5026380 (not c!859778)) b!5026377))

(assert (= (and b!5026377 c!859777) b!5026373))

(assert (= (and b!5026377 (not c!859777)) b!5026378))

(declare-fun m!6061762 () Bool)

(assert (=> b!5026375 m!6061762))

(assert (=> b!5026376 m!6061486))

(declare-fun m!6061764 () Bool)

(assert (=> b!5026377 m!6061764))

(declare-fun m!6061766 () Bool)

(assert (=> b!5026380 m!6061766))

(assert (=> b!5026380 m!6061766))

(declare-fun m!6061768 () Bool)

(assert (=> b!5026380 m!6061768))

(declare-fun m!6061770 () Bool)

(assert (=> b!5026380 m!6061770))

(assert (=> b!5026069 d!1617656))

(declare-fun d!1617658 () Bool)

(declare-fun e!3139990 () Bool)

(assert (=> d!1617658 e!3139990))

(declare-fun res!2142853 () Bool)

(assert (=> d!1617658 (=> res!2142853 e!3139990)))

(assert (=> d!1617658 (= res!2142853 (= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) 0))))

(declare-fun lt!2080383 () Unit!149355)

(declare-fun choose!37189 ((InoxSet Context!6684) Int BalanceConc!30302) Unit!149355)

(assert (=> d!1617658 (= lt!2080383 (choose!37189 lt!2080262 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3139989 () Bool)

(assert (=> d!1617658 e!3139989))

(declare-fun res!2142854 () Bool)

(assert (=> d!1617658 (=> (not res!2142854) (not e!3139989))))

(assert (=> d!1617658 (= res!2142854 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617658 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!114 lt!2080262 (+ 1 from!1228) totalInput!1141) lt!2080383)))

(declare-fun b!5026385 () Bool)

(assert (=> b!5026385 (= e!3139989 (<= (+ 1 from!1228) (size!38704 totalInput!1141)))))

(declare-fun b!5026386 () Bool)

(assert (=> b!5026386 (= e!3139990 (matchZipper!671 lt!2080262 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)))))))

(assert (= (and d!1617658 res!2142854) b!5026385))

(assert (= (and d!1617658 (not res!2142853)) b!5026386))

(assert (=> d!1617658 m!6061486))

(assert (=> d!1617658 m!6061486))

(declare-fun m!6061772 () Bool)

(assert (=> d!1617658 m!6061772))

(declare-fun m!6061774 () Bool)

(assert (=> d!1617658 m!6061774))

(assert (=> b!5026385 m!6061486))

(declare-fun m!6061776 () Bool)

(assert (=> b!5026386 m!6061776))

(declare-fun m!6061778 () Bool)

(assert (=> b!5026386 m!6061778))

(assert (=> b!5026386 m!6061486))

(assert (=> b!5026386 m!6061772))

(assert (=> b!5026386 m!6061466))

(assert (=> b!5026386 m!6061468))

(assert (=> b!5026386 m!6061486))

(assert (=> b!5026386 m!6061466))

(assert (=> b!5026386 m!6061468))

(assert (=> b!5026386 m!6061772))

(assert (=> b!5026386 m!6061776))

(assert (=> b!5026069 d!1617658))

(declare-fun b!5026387 () Bool)

(declare-fun e!3139991 () Int)

(declare-fun call!350773 () Int)

(assert (=> b!5026387 (= e!3139991 (- call!350773 (+ 1 from!1228)))))

(declare-fun b!5026389 () Bool)

(declare-fun e!3139994 () List!58287)

(assert (=> b!5026389 (= e!3139994 (drop!2568 (t!370687 lt!2080264) (- (+ 1 from!1228) 1)))))

(declare-fun b!5026390 () Bool)

(declare-fun e!3139993 () Int)

(assert (=> b!5026390 (= e!3139993 e!3139991)))

(declare-fun c!859781 () Bool)

(assert (=> b!5026390 (= c!859781 (>= (+ 1 from!1228) call!350773))))

(declare-fun b!5026391 () Bool)

(assert (=> b!5026391 (= e!3139991 0)))

(declare-fun bm!350768 () Bool)

(assert (=> bm!350768 (= call!350773 (size!38707 lt!2080264))))

(declare-fun b!5026392 () Bool)

(declare-fun e!3139995 () List!58287)

(assert (=> b!5026392 (= e!3139995 e!3139994)))

(declare-fun c!859782 () Bool)

(assert (=> b!5026392 (= c!859782 (<= (+ 1 from!1228) 0))))

(declare-fun b!5026393 () Bool)

(declare-fun e!3139992 () Bool)

(declare-fun lt!2080384 () List!58287)

(assert (=> b!5026393 (= e!3139992 (= (size!38707 lt!2080384) e!3139993))))

(declare-fun c!859779 () Bool)

(assert (=> b!5026393 (= c!859779 (<= (+ 1 from!1228) 0))))

(declare-fun b!5026388 () Bool)

(assert (=> b!5026388 (= e!3139993 call!350773)))

(declare-fun d!1617660 () Bool)

(assert (=> d!1617660 e!3139992))

(declare-fun res!2142855 () Bool)

(assert (=> d!1617660 (=> (not res!2142855) (not e!3139992))))

(assert (=> d!1617660 (= res!2142855 (= ((_ map implies) (content!10307 lt!2080384) (content!10307 lt!2080264)) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617660 (= lt!2080384 e!3139995)))

(declare-fun c!859780 () Bool)

(assert (=> d!1617660 (= c!859780 ((_ is Nil!58163) lt!2080264))))

(assert (=> d!1617660 (= (drop!2568 lt!2080264 (+ 1 from!1228)) lt!2080384)))

(declare-fun b!5026394 () Bool)

(assert (=> b!5026394 (= e!3139995 Nil!58163)))

(declare-fun b!5026395 () Bool)

(assert (=> b!5026395 (= e!3139994 lt!2080264)))

(assert (= (and d!1617660 c!859780) b!5026394))

(assert (= (and d!1617660 (not c!859780)) b!5026392))

(assert (= (and b!5026392 c!859782) b!5026395))

(assert (= (and b!5026392 (not c!859782)) b!5026389))

(assert (= (and d!1617660 res!2142855) b!5026393))

(assert (= (and b!5026393 c!859779) b!5026388))

(assert (= (and b!5026393 (not c!859779)) b!5026390))

(assert (= (and b!5026390 c!859781) b!5026391))

(assert (= (and b!5026390 (not c!859781)) b!5026387))

(assert (= (or b!5026388 b!5026390 b!5026387) bm!350768))

(declare-fun m!6061780 () Bool)

(assert (=> b!5026389 m!6061780))

(assert (=> bm!350768 m!6061676))

(declare-fun m!6061782 () Bool)

(assert (=> b!5026393 m!6061782))

(declare-fun m!6061784 () Bool)

(assert (=> d!1617660 m!6061784))

(assert (=> d!1617660 m!6061682))

(assert (=> b!5026069 d!1617660))

(assert (=> b!5026069 d!1617652))

(declare-fun d!1617662 () Bool)

(assert (=> d!1617662 true))

(declare-fun lambda!249285 () Int)

(declare-fun flatMap!304 ((InoxSet Context!6684) Int) (InoxSet Context!6684))

(assert (=> d!1617662 (= (derivationStepZipper!713 z!4747 lt!2080266) (flatMap!304 z!4747 lambda!249285))))

(declare-fun bs!1188004 () Bool)

(assert (= bs!1188004 d!1617662))

(declare-fun m!6061786 () Bool)

(assert (=> bs!1188004 m!6061786))

(assert (=> b!5026069 d!1617662))

(declare-fun d!1617664 () Bool)

(declare-fun lt!2080387 () C!28084)

(assert (=> d!1617664 (= lt!2080387 (apply!14158 (list!18778 totalInput!1141) from!1228))))

(declare-fun apply!14161 (Conc!15436 Int) C!28084)

(assert (=> d!1617664 (= lt!2080387 (apply!14161 (c!859646 totalInput!1141) from!1228))))

(declare-fun e!3139998 () Bool)

(assert (=> d!1617664 e!3139998))

(declare-fun res!2142858 () Bool)

(assert (=> d!1617664 (=> (not res!2142858) (not e!3139998))))

(assert (=> d!1617664 (= res!2142858 (<= 0 from!1228))))

(assert (=> d!1617664 (= (apply!14159 totalInput!1141 from!1228) lt!2080387)))

(declare-fun b!5026400 () Bool)

(assert (=> b!5026400 (= e!3139998 (< from!1228 (size!38704 totalInput!1141)))))

(assert (= (and d!1617664 res!2142858) b!5026400))

(assert (=> d!1617664 m!6061466))

(assert (=> d!1617664 m!6061466))

(declare-fun m!6061788 () Bool)

(assert (=> d!1617664 m!6061788))

(declare-fun m!6061790 () Bool)

(assert (=> d!1617664 m!6061790))

(assert (=> b!5026400 m!6061486))

(assert (=> b!5026069 d!1617664))

(declare-fun b!5026401 () Bool)

(declare-fun e!3140000 () List!58287)

(assert (=> b!5026401 (= e!3140000 Nil!58163)))

(declare-fun b!5026402 () Bool)

(declare-fun e!3140002 () Int)

(assert (=> b!5026402 (= e!3140002 (size!38707 lt!2080265))))

(declare-fun b!5026403 () Bool)

(assert (=> b!5026403 (= e!3140000 (Cons!58163 (h!64611 lt!2080265) (take!768 (t!370687 lt!2080265) (- lt!2080267 1))))))

(declare-fun b!5026404 () Bool)

(declare-fun e!3140001 () Int)

(assert (=> b!5026404 (= e!3140001 0)))

(declare-fun b!5026405 () Bool)

(assert (=> b!5026405 (= e!3140002 lt!2080267)))

(declare-fun d!1617666 () Bool)

(declare-fun e!3139999 () Bool)

(assert (=> d!1617666 e!3139999))

(declare-fun res!2142859 () Bool)

(assert (=> d!1617666 (=> (not res!2142859) (not e!3139999))))

(declare-fun lt!2080388 () List!58287)

(assert (=> d!1617666 (= res!2142859 (= ((_ map implies) (content!10307 lt!2080388) (content!10307 lt!2080265)) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617666 (= lt!2080388 e!3140000)))

(declare-fun c!859786 () Bool)

(assert (=> d!1617666 (= c!859786 (or ((_ is Nil!58163) lt!2080265) (<= lt!2080267 0)))))

(assert (=> d!1617666 (= (take!768 lt!2080265 lt!2080267) lt!2080388)))

(declare-fun b!5026406 () Bool)

(assert (=> b!5026406 (= e!3140001 e!3140002)))

(declare-fun c!859787 () Bool)

(assert (=> b!5026406 (= c!859787 (>= lt!2080267 (size!38707 lt!2080265)))))

(declare-fun b!5026407 () Bool)

(assert (=> b!5026407 (= e!3139999 (= (size!38707 lt!2080388) e!3140001))))

(declare-fun c!859785 () Bool)

(assert (=> b!5026407 (= c!859785 (<= lt!2080267 0))))

(assert (= (and d!1617666 c!859786) b!5026401))

(assert (= (and d!1617666 (not c!859786)) b!5026403))

(assert (= (and d!1617666 res!2142859) b!5026407))

(assert (= (and b!5026407 c!859785) b!5026404))

(assert (= (and b!5026407 (not c!859785)) b!5026406))

(assert (= (and b!5026406 c!859787) b!5026402))

(assert (= (and b!5026406 (not c!859787)) b!5026405))

(declare-fun m!6061792 () Bool)

(assert (=> b!5026407 m!6061792))

(declare-fun m!6061794 () Bool)

(assert (=> b!5026403 m!6061794))

(assert (=> b!5026406 m!6061714))

(declare-fun m!6061796 () Bool)

(assert (=> d!1617666 m!6061796))

(assert (=> d!1617666 m!6061718))

(assert (=> b!5026402 m!6061714))

(assert (=> b!5026069 d!1617666))

(declare-fun bs!1188005 () Bool)

(declare-fun d!1617668 () Bool)

(assert (= bs!1188005 (and d!1617668 d!1617588)))

(declare-fun lambda!249288 () Int)

(assert (=> bs!1188005 (not (= lambda!249288 lambda!249277))))

(declare-fun bs!1188006 () Bool)

(assert (= bs!1188006 (and d!1617668 b!5026257)))

(assert (=> bs!1188006 (not (= lambda!249288 lambda!249278))))

(declare-fun bs!1188007 () Bool)

(assert (= bs!1188007 (and d!1617668 b!5026258)))

(assert (=> bs!1188007 (not (= lambda!249288 lambda!249279))))

(declare-fun exists!1399 ((InoxSet Context!6684) Int) Bool)

(assert (=> d!1617668 (= (nullableZipper!930 lt!2080262) (exists!1399 lt!2080262 lambda!249288))))

(declare-fun bs!1188008 () Bool)

(assert (= bs!1188008 d!1617668))

(declare-fun m!6061798 () Bool)

(assert (=> bs!1188008 m!6061798))

(assert (=> b!5026065 d!1617668))

(declare-fun d!1617670 () Bool)

(declare-fun c!859790 () Bool)

(assert (=> d!1617670 (= c!859790 (isEmpty!31454 Nil!58163))))

(declare-fun e!3140003 () Bool)

(assert (=> d!1617670 (= (matchZipper!671 lt!2080262 Nil!58163) e!3140003)))

(declare-fun b!5026408 () Bool)

(assert (=> b!5026408 (= e!3140003 (nullableZipper!930 lt!2080262))))

(declare-fun b!5026409 () Bool)

(assert (=> b!5026409 (= e!3140003 (matchZipper!671 (derivationStepZipper!713 lt!2080262 (head!10778 Nil!58163)) (tail!9911 Nil!58163)))))

(assert (= (and d!1617670 c!859790) b!5026408))

(assert (= (and d!1617670 (not c!859790)) b!5026409))

(declare-fun m!6061800 () Bool)

(assert (=> d!1617670 m!6061800))

(assert (=> b!5026408 m!6061460))

(declare-fun m!6061802 () Bool)

(assert (=> b!5026409 m!6061802))

(assert (=> b!5026409 m!6061802))

(declare-fun m!6061804 () Bool)

(assert (=> b!5026409 m!6061804))

(declare-fun m!6061806 () Bool)

(assert (=> b!5026409 m!6061806))

(assert (=> b!5026409 m!6061804))

(assert (=> b!5026409 m!6061806))

(declare-fun m!6061808 () Bool)

(assert (=> b!5026409 m!6061808))

(assert (=> b!5026074 d!1617670))

(declare-fun tp!1408816 () Bool)

(declare-fun e!3140009 () Bool)

(declare-fun tp!1408815 () Bool)

(declare-fun b!5026418 () Bool)

(assert (=> b!5026418 (= e!3140009 (and (inv!76694 (left!42541 (c!859646 totalInput!1141))) tp!1408815 (inv!76694 (right!42871 (c!859646 totalInput!1141))) tp!1408816))))

(declare-fun b!5026420 () Bool)

(declare-fun e!3140008 () Bool)

(declare-fun tp!1408814 () Bool)

(assert (=> b!5026420 (= e!3140008 tp!1408814)))

(declare-fun b!5026419 () Bool)

(declare-fun inv!76700 (IArray!30933) Bool)

(assert (=> b!5026419 (= e!3140009 (and (inv!76700 (xs!18762 (c!859646 totalInput!1141))) e!3140008))))

(assert (=> b!5026071 (= tp!1408784 (and (inv!76694 (c!859646 totalInput!1141)) e!3140009))))

(assert (= (and b!5026071 ((_ is Node!15436) (c!859646 totalInput!1141))) b!5026418))

(assert (= b!5026419 b!5026420))

(assert (= (and b!5026071 ((_ is Leaf!25608) (c!859646 totalInput!1141))) b!5026419))

(declare-fun m!6061810 () Bool)

(assert (=> b!5026418 m!6061810))

(declare-fun m!6061812 () Bool)

(assert (=> b!5026418 m!6061812))

(declare-fun m!6061814 () Bool)

(assert (=> b!5026419 m!6061814))

(assert (=> b!5026071 m!6061474))

(declare-fun condSetEmpty!28900 () Bool)

(assert (=> setNonEmpty!28894 (= condSetEmpty!28900 (= setRest!28894 ((as const (Array Context!6684 Bool)) false)))))

(declare-fun setRes!28900 () Bool)

(assert (=> setNonEmpty!28894 (= tp!1408786 setRes!28900)))

(declare-fun setIsEmpty!28900 () Bool)

(assert (=> setIsEmpty!28900 setRes!28900))

(declare-fun e!3140012 () Bool)

(declare-fun tp!1408821 () Bool)

(declare-fun setNonEmpty!28900 () Bool)

(declare-fun setElem!28900 () Context!6684)

(assert (=> setNonEmpty!28900 (= setRes!28900 (and tp!1408821 (inv!76692 setElem!28900) e!3140012))))

(declare-fun setRest!28900 () (InoxSet Context!6684))

(assert (=> setNonEmpty!28900 (= setRest!28894 ((_ map or) (store ((as const (Array Context!6684 Bool)) false) setElem!28900 true) setRest!28900))))

(declare-fun b!5026425 () Bool)

(declare-fun tp!1408822 () Bool)

(assert (=> b!5026425 (= e!3140012 tp!1408822)))

(assert (= (and setNonEmpty!28894 condSetEmpty!28900) setIsEmpty!28900))

(assert (= (and setNonEmpty!28894 (not condSetEmpty!28900)) setNonEmpty!28900))

(assert (= setNonEmpty!28900 b!5026425))

(declare-fun m!6061816 () Bool)

(assert (=> setNonEmpty!28900 m!6061816))

(declare-fun b!5026430 () Bool)

(declare-fun e!3140015 () Bool)

(declare-fun tp!1408827 () Bool)

(declare-fun tp!1408828 () Bool)

(assert (=> b!5026430 (= e!3140015 (and tp!1408827 tp!1408828))))

(assert (=> b!5026066 (= tp!1408785 e!3140015)))

(assert (= (and b!5026066 ((_ is Cons!58162) (exprs!3842 setElem!28894))) b!5026430))

(check-sat (not d!1617630) (not b!5026332) (not d!1617644) (not b!5026403) (not b!5026375) (not b!5026279) (not b!5026324) (not b!5026313) (not d!1617652) (not b!5026347) (not b!5026386) (not d!1617666) (not b!5026406) (not b!5026393) (not b!5026301) (not b!5026340) (not d!1617636) (not b!5026407) (not bm!350768) (not b!5026418) (not setNonEmpty!28900) (not b!5026325) (not b!5026258) (not b!5026302) (not bm!350763) (not b!5026409) (not b!5026380) (not b!5026346) (not b!5026334) (not d!1617660) (not b!5026343) (not d!1617664) (not d!1617588) (not d!1617648) (not bm!350762) (not d!1617670) (not b!5026321) (not d!1617654) (not b!5026257) (not b!5026385) (not b!5026350) (not b!5026402) (not b!5026314) (not b!5026320) (not d!1617634) (not b!5026408) (not b!5026342) (not b!5026376) (not b!5026339) (not d!1617650) (not d!1617632) (not b!5026354) (not bm!350767) (not d!1617640) (not b!5026377) (not b!5026389) (not bm!350766) (not d!1617658) (not b!5026315) (not b!5026305) (not b!5026400) (not b!5026430) (not b!5026318) (not d!1617662) (not d!1617638) (not b!5026071) (not b!5026306) (not b!5026420) (not d!1617646) (not b!5026283) (not b!5026425) (not b!5026419) (not d!1617668))
(check-sat)
(get-model)

(declare-fun d!1617792 () Bool)

(declare-fun lt!2080450 () Int)

(assert (=> d!1617792 (>= lt!2080450 0)))

(declare-fun e!3140144 () Int)

(assert (=> d!1617792 (= lt!2080450 e!3140144)))

(declare-fun c!859883 () Bool)

(assert (=> d!1617792 (= c!859883 ((_ is Nil!58163) lt!2080384))))

(assert (=> d!1617792 (= (size!38707 lt!2080384) lt!2080450)))

(declare-fun b!5026657 () Bool)

(assert (=> b!5026657 (= e!3140144 0)))

(declare-fun b!5026658 () Bool)

(assert (=> b!5026658 (= e!3140144 (+ 1 (size!38707 (t!370687 lt!2080384))))))

(assert (= (and d!1617792 c!859883) b!5026657))

(assert (= (and d!1617792 (not c!859883)) b!5026658))

(declare-fun m!6062080 () Bool)

(assert (=> b!5026658 m!6062080))

(assert (=> b!5026393 d!1617792))

(declare-fun b!5026682 () Bool)

(declare-fun res!2142937 () Bool)

(declare-fun e!3140156 () Bool)

(assert (=> b!5026682 (=> (not res!2142937) (not e!3140156))))

(assert (=> b!5026682 (= res!2142937 (isBalanced!4306 (right!42871 (c!859646 totalInput!1141))))))

(declare-fun b!5026683 () Bool)

(declare-fun e!3140155 () Bool)

(assert (=> b!5026683 (= e!3140155 e!3140156)))

(declare-fun res!2142933 () Bool)

(assert (=> b!5026683 (=> (not res!2142933) (not e!3140156))))

(declare-fun height!2045 (Conc!15436) Int)

(assert (=> b!5026683 (= res!2142933 (<= (- 1) (- (height!2045 (left!42541 (c!859646 totalInput!1141))) (height!2045 (right!42871 (c!859646 totalInput!1141))))))))

(declare-fun d!1617796 () Bool)

(declare-fun res!2142938 () Bool)

(assert (=> d!1617796 (=> res!2142938 e!3140155)))

(assert (=> d!1617796 (= res!2142938 (not ((_ is Node!15436) (c!859646 totalInput!1141))))))

(assert (=> d!1617796 (= (isBalanced!4306 (c!859646 totalInput!1141)) e!3140155)))

(declare-fun b!5026684 () Bool)

(declare-fun res!2142935 () Bool)

(assert (=> b!5026684 (=> (not res!2142935) (not e!3140156))))

(declare-fun isEmpty!31455 (Conc!15436) Bool)

(assert (=> b!5026684 (= res!2142935 (not (isEmpty!31455 (left!42541 (c!859646 totalInput!1141)))))))

(declare-fun b!5026685 () Bool)

(assert (=> b!5026685 (= e!3140156 (not (isEmpty!31455 (right!42871 (c!859646 totalInput!1141)))))))

(declare-fun b!5026686 () Bool)

(declare-fun res!2142936 () Bool)

(assert (=> b!5026686 (=> (not res!2142936) (not e!3140156))))

(assert (=> b!5026686 (= res!2142936 (<= (- (height!2045 (left!42541 (c!859646 totalInput!1141))) (height!2045 (right!42871 (c!859646 totalInput!1141)))) 1))))

(declare-fun b!5026687 () Bool)

(declare-fun res!2142934 () Bool)

(assert (=> b!5026687 (=> (not res!2142934) (not e!3140156))))

(assert (=> b!5026687 (= res!2142934 (isBalanced!4306 (left!42541 (c!859646 totalInput!1141))))))

(assert (= (and d!1617796 (not res!2142938)) b!5026683))

(assert (= (and b!5026683 res!2142933) b!5026686))

(assert (= (and b!5026686 res!2142936) b!5026687))

(assert (= (and b!5026687 res!2142934) b!5026682))

(assert (= (and b!5026682 res!2142937) b!5026684))

(assert (= (and b!5026684 res!2142935) b!5026685))

(declare-fun m!6062088 () Bool)

(assert (=> b!5026682 m!6062088))

(declare-fun m!6062090 () Bool)

(assert (=> b!5026687 m!6062090))

(declare-fun m!6062092 () Bool)

(assert (=> b!5026684 m!6062092))

(declare-fun m!6062094 () Bool)

(assert (=> b!5026683 m!6062094))

(declare-fun m!6062096 () Bool)

(assert (=> b!5026683 m!6062096))

(declare-fun m!6062098 () Bool)

(assert (=> b!5026685 m!6062098))

(assert (=> b!5026686 m!6062094))

(assert (=> b!5026686 m!6062096))

(assert (=> d!1617654 d!1617796))

(declare-fun d!1617804 () Bool)

(assert (not d!1617804))

(assert (=> b!5026409 d!1617804))

(declare-fun d!1617806 () Bool)

(assert (not d!1617806))

(assert (=> b!5026409 d!1617806))

(declare-fun d!1617808 () Bool)

(assert (not d!1617808))

(assert (=> b!5026409 d!1617808))

(declare-fun d!1617810 () Bool)

(assert (not d!1617810))

(assert (=> b!5026409 d!1617810))

(declare-fun d!1617812 () Bool)

(declare-fun lt!2080455 () Int)

(assert (=> d!1617812 (>= lt!2080455 0)))

(declare-fun e!3140158 () Int)

(assert (=> d!1617812 (= lt!2080455 e!3140158)))

(declare-fun c!859885 () Bool)

(assert (=> d!1617812 (= c!859885 ((_ is Nil!58163) lt!2080265))))

(assert (=> d!1617812 (= (size!38707 lt!2080265) lt!2080455)))

(declare-fun b!5026691 () Bool)

(assert (=> b!5026691 (= e!3140158 0)))

(declare-fun b!5026692 () Bool)

(assert (=> b!5026692 (= e!3140158 (+ 1 (size!38707 (t!370687 lt!2080265))))))

(assert (= (and d!1617812 c!859885) b!5026691))

(assert (= (and d!1617812 (not c!859885)) b!5026692))

(declare-fun m!6062102 () Bool)

(assert (=> b!5026692 m!6062102))

(assert (=> b!5026324 d!1617812))

(declare-fun d!1617814 () Bool)

(declare-fun c!859894 () Bool)

(assert (=> d!1617814 (= c!859894 ((_ is Nil!58163) lt!2080371))))

(declare-fun e!3140168 () (InoxSet C!28084))

(assert (=> d!1617814 (= (content!10307 lt!2080371) e!3140168)))

(declare-fun b!5026710 () Bool)

(assert (=> b!5026710 (= e!3140168 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026711 () Bool)

(assert (=> b!5026711 (= e!3140168 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080371) true) (content!10307 (t!370687 lt!2080371))))))

(assert (= (and d!1617814 c!859894) b!5026710))

(assert (= (and d!1617814 (not c!859894)) b!5026711))

(declare-fun m!6062118 () Bool)

(assert (=> b!5026711 m!6062118))

(declare-fun m!6062120 () Bool)

(assert (=> b!5026711 m!6062120))

(assert (=> d!1617650 d!1617814))

(declare-fun d!1617826 () Bool)

(declare-fun c!859895 () Bool)

(assert (=> d!1617826 (= c!859895 ((_ is Nil!58163) (list!18778 totalInput!1141)))))

(declare-fun e!3140169 () (InoxSet C!28084))

(assert (=> d!1617826 (= (content!10307 (list!18778 totalInput!1141)) e!3140169)))

(declare-fun b!5026712 () Bool)

(assert (=> b!5026712 (= e!3140169 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026713 () Bool)

(assert (=> b!5026713 (= e!3140169 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 (list!18778 totalInput!1141)) true) (content!10307 (t!370687 (list!18778 totalInput!1141)))))))

(assert (= (and d!1617826 c!859895) b!5026712))

(assert (= (and d!1617826 (not c!859895)) b!5026713))

(declare-fun m!6062122 () Bool)

(assert (=> b!5026713 m!6062122))

(declare-fun m!6062124 () Bool)

(assert (=> b!5026713 m!6062124))

(assert (=> d!1617650 d!1617826))

(declare-fun d!1617832 () Bool)

(assert (=> d!1617832 (= (isEmpty!31454 Nil!58163) true)))

(assert (=> d!1617670 d!1617832))

(declare-fun d!1617836 () Bool)

(declare-fun lt!2080457 () Int)

(assert (=> d!1617836 (>= lt!2080457 0)))

(declare-fun e!3140170 () Int)

(assert (=> d!1617836 (= lt!2080457 e!3140170)))

(declare-fun c!859896 () Bool)

(assert (=> d!1617836 (= c!859896 ((_ is Nil!58163) lt!2080264))))

(assert (=> d!1617836 (= (size!38707 lt!2080264) lt!2080457)))

(declare-fun b!5026714 () Bool)

(assert (=> b!5026714 (= e!3140170 0)))

(declare-fun b!5026715 () Bool)

(assert (=> b!5026715 (= e!3140170 (+ 1 (size!38707 (t!370687 lt!2080264))))))

(assert (= (and d!1617836 c!859896) b!5026714))

(assert (= (and d!1617836 (not c!859896)) b!5026715))

(declare-fun m!6062126 () Bool)

(assert (=> b!5026715 m!6062126))

(assert (=> b!5026318 d!1617836))

(assert (=> b!5026320 d!1617812))

(declare-fun bs!1188060 () Bool)

(declare-fun d!1617838 () Bool)

(assert (= bs!1188060 (and d!1617838 d!1617662)))

(declare-fun lambda!249307 () Int)

(assert (=> bs!1188060 (= (= (apply!14159 totalInput!1141 (+ 1 from!1228)) lt!2080266) (= lambda!249307 lambda!249285))))

(assert (=> d!1617838 true))

(assert (=> d!1617838 (= (derivationStepZipper!713 lt!2080262 (apply!14159 totalInput!1141 (+ 1 from!1228))) (flatMap!304 lt!2080262 lambda!249307))))

(declare-fun bs!1188061 () Bool)

(assert (= bs!1188061 d!1617838))

(declare-fun m!6062128 () Bool)

(assert (=> bs!1188061 m!6062128))

(assert (=> b!5026380 d!1617838))

(declare-fun d!1617840 () Bool)

(declare-fun lt!2080458 () C!28084)

(assert (=> d!1617840 (= lt!2080458 (apply!14158 (list!18778 totalInput!1141) (+ 1 from!1228)))))

(assert (=> d!1617840 (= lt!2080458 (apply!14161 (c!859646 totalInput!1141) (+ 1 from!1228)))))

(declare-fun e!3140173 () Bool)

(assert (=> d!1617840 e!3140173))

(declare-fun res!2142947 () Bool)

(assert (=> d!1617840 (=> (not res!2142947) (not e!3140173))))

(assert (=> d!1617840 (= res!2142947 (<= 0 (+ 1 from!1228)))))

(assert (=> d!1617840 (= (apply!14159 totalInput!1141 (+ 1 from!1228)) lt!2080458)))

(declare-fun b!5026720 () Bool)

(assert (=> b!5026720 (= e!3140173 (< (+ 1 from!1228) (size!38704 totalInput!1141)))))

(assert (= (and d!1617840 res!2142947) b!5026720))

(assert (=> d!1617840 m!6061466))

(assert (=> d!1617840 m!6061466))

(declare-fun m!6062130 () Bool)

(assert (=> d!1617840 m!6062130))

(declare-fun m!6062132 () Bool)

(assert (=> d!1617840 m!6062132))

(assert (=> b!5026720 m!6061486))

(assert (=> b!5026380 d!1617840))

(declare-fun b!5026721 () Bool)

(declare-fun e!3140176 () Int)

(assert (=> b!5026721 (= e!3140176 1)))

(declare-fun b!5026722 () Bool)

(declare-fun e!3140178 () Int)

(assert (=> b!5026722 (= e!3140178 0)))

(declare-fun b!5026723 () Bool)

(declare-fun e!3140177 () Bool)

(assert (=> b!5026723 (= e!3140177 (lostCauseZipper!931 lt!2080379))))

(declare-fun b!5026724 () Bool)

(declare-fun e!3140175 () Bool)

(assert (=> b!5026724 (= e!3140175 (<= (+ 1 from!1228 1) (size!38704 totalInput!1141)))))

(declare-fun d!1617842 () Bool)

(declare-fun lt!2080461 () Int)

(assert (=> d!1617842 (and (>= lt!2080461 0) (<= lt!2080461 (- lt!2080261 (+ 1 from!1228 1))))))

(assert (=> d!1617842 (= lt!2080461 e!3140178)))

(declare-fun c!859897 () Bool)

(assert (=> d!1617842 (= c!859897 e!3140177)))

(declare-fun res!2142949 () Bool)

(assert (=> d!1617842 (=> res!2142949 e!3140177)))

(assert (=> d!1617842 (= res!2142949 (= (+ 1 from!1228 1) lt!2080261))))

(assert (=> d!1617842 e!3140175))

(declare-fun res!2142948 () Bool)

(assert (=> d!1617842 (=> (not res!2142948) (not e!3140175))))

(assert (=> d!1617842 (= res!2142948 (>= (+ 1 from!1228 1) 0))))

(assert (=> d!1617842 (= (findLongestMatchInnerZipperFastV2!231 lt!2080379 (+ 1 from!1228 1) totalInput!1141 lt!2080261) lt!2080461)))

(declare-fun b!5026725 () Bool)

(declare-fun c!859898 () Bool)

(declare-fun lt!2080460 () (InoxSet Context!6684))

(assert (=> b!5026725 (= c!859898 (nullableZipper!930 lt!2080460))))

(declare-fun e!3140174 () Int)

(assert (=> b!5026725 (= e!3140174 e!3140176)))

(declare-fun b!5026726 () Bool)

(assert (=> b!5026726 (= e!3140176 0)))

(declare-fun b!5026727 () Bool)

(declare-fun lt!2080459 () Int)

(assert (=> b!5026727 (= e!3140174 (+ 1 lt!2080459))))

(declare-fun b!5026728 () Bool)

(assert (=> b!5026728 (= e!3140178 e!3140174)))

(assert (=> b!5026728 (= lt!2080460 (derivationStepZipper!713 lt!2080379 (apply!14159 totalInput!1141 (+ 1 from!1228 1))))))

(assert (=> b!5026728 (= lt!2080459 (findLongestMatchInnerZipperFastV2!231 lt!2080460 (+ 1 from!1228 1 1) totalInput!1141 lt!2080261))))

(declare-fun c!859899 () Bool)

(assert (=> b!5026728 (= c!859899 (> lt!2080459 0))))

(assert (= (and d!1617842 res!2142948) b!5026724))

(assert (= (and d!1617842 (not res!2142949)) b!5026723))

(assert (= (and d!1617842 c!859897) b!5026722))

(assert (= (and d!1617842 (not c!859897)) b!5026728))

(assert (= (and b!5026728 c!859899) b!5026727))

(assert (= (and b!5026728 (not c!859899)) b!5026725))

(assert (= (and b!5026725 c!859898) b!5026721))

(assert (= (and b!5026725 (not c!859898)) b!5026726))

(declare-fun m!6062134 () Bool)

(assert (=> b!5026723 m!6062134))

(assert (=> b!5026724 m!6061486))

(declare-fun m!6062136 () Bool)

(assert (=> b!5026725 m!6062136))

(declare-fun m!6062138 () Bool)

(assert (=> b!5026728 m!6062138))

(assert (=> b!5026728 m!6062138))

(declare-fun m!6062140 () Bool)

(assert (=> b!5026728 m!6062140))

(declare-fun m!6062142 () Bool)

(assert (=> b!5026728 m!6062142))

(assert (=> b!5026380 d!1617842))

(declare-fun d!1617844 () Bool)

(declare-fun c!859900 () Bool)

(assert (=> d!1617844 (= c!859900 ((_ is Node!15436) (left!42541 (c!859646 totalInput!1141))))))

(declare-fun e!3140180 () Bool)

(assert (=> d!1617844 (= (inv!76694 (left!42541 (c!859646 totalInput!1141))) e!3140180)))

(declare-fun b!5026731 () Bool)

(assert (=> b!5026731 (= e!3140180 (inv!76698 (left!42541 (c!859646 totalInput!1141))))))

(declare-fun b!5026732 () Bool)

(declare-fun e!3140181 () Bool)

(assert (=> b!5026732 (= e!3140180 e!3140181)))

(declare-fun res!2142952 () Bool)

(assert (=> b!5026732 (= res!2142952 (not ((_ is Leaf!25608) (left!42541 (c!859646 totalInput!1141)))))))

(assert (=> b!5026732 (=> res!2142952 e!3140181)))

(declare-fun b!5026733 () Bool)

(assert (=> b!5026733 (= e!3140181 (inv!76699 (left!42541 (c!859646 totalInput!1141))))))

(assert (= (and d!1617844 c!859900) b!5026731))

(assert (= (and d!1617844 (not c!859900)) b!5026732))

(assert (= (and b!5026732 (not res!2142952)) b!5026733))

(declare-fun m!6062146 () Bool)

(assert (=> b!5026731 m!6062146))

(declare-fun m!6062148 () Bool)

(assert (=> b!5026733 m!6062148))

(assert (=> b!5026418 d!1617844))

(declare-fun d!1617848 () Bool)

(declare-fun c!859902 () Bool)

(assert (=> d!1617848 (= c!859902 ((_ is Node!15436) (right!42871 (c!859646 totalInput!1141))))))

(declare-fun e!3140183 () Bool)

(assert (=> d!1617848 (= (inv!76694 (right!42871 (c!859646 totalInput!1141))) e!3140183)))

(declare-fun b!5026736 () Bool)

(assert (=> b!5026736 (= e!3140183 (inv!76698 (right!42871 (c!859646 totalInput!1141))))))

(declare-fun b!5026737 () Bool)

(declare-fun e!3140184 () Bool)

(assert (=> b!5026737 (= e!3140183 e!3140184)))

(declare-fun res!2142953 () Bool)

(assert (=> b!5026737 (= res!2142953 (not ((_ is Leaf!25608) (right!42871 (c!859646 totalInput!1141)))))))

(assert (=> b!5026737 (=> res!2142953 e!3140184)))

(declare-fun b!5026738 () Bool)

(assert (=> b!5026738 (= e!3140184 (inv!76699 (right!42871 (c!859646 totalInput!1141))))))

(assert (= (and d!1617848 c!859902) b!5026736))

(assert (= (and d!1617848 (not c!859902)) b!5026737))

(assert (= (and b!5026737 (not res!2142953)) b!5026738))

(declare-fun m!6062152 () Bool)

(assert (=> b!5026736 m!6062152))

(declare-fun m!6062154 () Bool)

(assert (=> b!5026738 m!6062154))

(assert (=> b!5026418 d!1617848))

(declare-fun d!1617850 () Bool)

(declare-fun c!859903 () Bool)

(assert (=> d!1617850 (= c!859903 ((_ is Nil!58163) lt!2080388))))

(declare-fun e!3140185 () (InoxSet C!28084))

(assert (=> d!1617850 (= (content!10307 lt!2080388) e!3140185)))

(declare-fun b!5026739 () Bool)

(assert (=> b!5026739 (= e!3140185 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026740 () Bool)

(assert (=> b!5026740 (= e!3140185 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080388) true) (content!10307 (t!370687 lt!2080388))))))

(assert (= (and d!1617850 c!859903) b!5026739))

(assert (= (and d!1617850 (not c!859903)) b!5026740))

(declare-fun m!6062156 () Bool)

(assert (=> b!5026740 m!6062156))

(declare-fun m!6062158 () Bool)

(assert (=> b!5026740 m!6062158))

(assert (=> d!1617666 d!1617850))

(declare-fun d!1617854 () Bool)

(declare-fun c!859904 () Bool)

(assert (=> d!1617854 (= c!859904 ((_ is Nil!58163) lt!2080265))))

(declare-fun e!3140186 () (InoxSet C!28084))

(assert (=> d!1617854 (= (content!10307 lt!2080265) e!3140186)))

(declare-fun b!5026741 () Bool)

(assert (=> b!5026741 (= e!3140186 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026742 () Bool)

(assert (=> b!5026742 (= e!3140186 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080265) true) (content!10307 (t!370687 lt!2080265))))))

(assert (= (and d!1617854 c!859904) b!5026741))

(assert (= (and d!1617854 (not c!859904)) b!5026742))

(declare-fun m!6062160 () Bool)

(assert (=> b!5026742 m!6062160))

(declare-fun m!6062162 () Bool)

(assert (=> b!5026742 m!6062162))

(assert (=> d!1617666 d!1617854))

(assert (=> bm!350768 d!1617836))

(declare-fun b!5026743 () Bool)

(declare-fun e!3140187 () Int)

(declare-fun call!350783 () Int)

(assert (=> b!5026743 (= e!3140187 (- call!350783 (- (+ 1 from!1228) 1)))))

(declare-fun b!5026745 () Bool)

(declare-fun e!3140190 () List!58287)

(assert (=> b!5026745 (= e!3140190 (drop!2568 (t!370687 (t!370687 (list!18778 totalInput!1141))) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5026746 () Bool)

(declare-fun e!3140189 () Int)

(assert (=> b!5026746 (= e!3140189 e!3140187)))

(declare-fun c!859907 () Bool)

(assert (=> b!5026746 (= c!859907 (>= (- (+ 1 from!1228) 1) call!350783))))

(declare-fun b!5026747 () Bool)

(assert (=> b!5026747 (= e!3140187 0)))

(declare-fun bm!350778 () Bool)

(assert (=> bm!350778 (= call!350783 (size!38707 (t!370687 (list!18778 totalInput!1141))))))

(declare-fun b!5026748 () Bool)

(declare-fun e!3140191 () List!58287)

(assert (=> b!5026748 (= e!3140191 e!3140190)))

(declare-fun c!859908 () Bool)

(assert (=> b!5026748 (= c!859908 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5026749 () Bool)

(declare-fun e!3140188 () Bool)

(declare-fun lt!2080463 () List!58287)

(assert (=> b!5026749 (= e!3140188 (= (size!38707 lt!2080463) e!3140189))))

(declare-fun c!859905 () Bool)

(assert (=> b!5026749 (= c!859905 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5026744 () Bool)

(assert (=> b!5026744 (= e!3140189 call!350783)))

(declare-fun d!1617856 () Bool)

(assert (=> d!1617856 e!3140188))

(declare-fun res!2142954 () Bool)

(assert (=> d!1617856 (=> (not res!2142954) (not e!3140188))))

(assert (=> d!1617856 (= res!2142954 (= ((_ map implies) (content!10307 lt!2080463) (content!10307 (t!370687 (list!18778 totalInput!1141)))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617856 (= lt!2080463 e!3140191)))

(declare-fun c!859906 () Bool)

(assert (=> d!1617856 (= c!859906 ((_ is Nil!58163) (t!370687 (list!18778 totalInput!1141))))))

(assert (=> d!1617856 (= (drop!2568 (t!370687 (list!18778 totalInput!1141)) (- (+ 1 from!1228) 1)) lt!2080463)))

(declare-fun b!5026750 () Bool)

(assert (=> b!5026750 (= e!3140191 Nil!58163)))

(declare-fun b!5026751 () Bool)

(assert (=> b!5026751 (= e!3140190 (t!370687 (list!18778 totalInput!1141)))))

(assert (= (and d!1617856 c!859906) b!5026750))

(assert (= (and d!1617856 (not c!859906)) b!5026748))

(assert (= (and b!5026748 c!859908) b!5026751))

(assert (= (and b!5026748 (not c!859908)) b!5026745))

(assert (= (and d!1617856 res!2142954) b!5026749))

(assert (= (and b!5026749 c!859905) b!5026744))

(assert (= (and b!5026749 (not c!859905)) b!5026746))

(assert (= (and b!5026746 c!859907) b!5026747))

(assert (= (and b!5026746 (not c!859907)) b!5026743))

(assert (= (or b!5026744 b!5026746 b!5026743) bm!350778))

(declare-fun m!6062170 () Bool)

(assert (=> b!5026745 m!6062170))

(declare-fun m!6062172 () Bool)

(assert (=> bm!350778 m!6062172))

(declare-fun m!6062174 () Bool)

(assert (=> b!5026749 m!6062174))

(declare-fun m!6062176 () Bool)

(assert (=> d!1617856 m!6062176))

(assert (=> d!1617856 m!6062124))

(assert (=> b!5026350 d!1617856))

(assert (=> b!5026376 d!1617640))

(declare-fun d!1617862 () Bool)

(assert (=> d!1617862 (= (isEmpty!31454 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) ((_ is Nil!58163) (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))

(assert (=> d!1617646 d!1617862))

(declare-fun d!1617864 () Bool)

(assert (=> d!1617864 (= (head!10778 lt!2080264) (h!64611 lt!2080264))))

(assert (=> b!5026314 d!1617864))

(declare-fun d!1617868 () Bool)

(declare-fun res!2142962 () Bool)

(declare-fun e!3140204 () Bool)

(assert (=> d!1617868 (=> res!2142962 e!3140204)))

(assert (=> d!1617868 (= res!2142962 ((_ is Nil!58162) (exprs!3842 setElem!28894)))))

(assert (=> d!1617868 (= (forall!13431 (exprs!3842 setElem!28894) lambda!249282) e!3140204)))

(declare-fun b!5026765 () Bool)

(declare-fun e!3140205 () Bool)

(assert (=> b!5026765 (= e!3140204 e!3140205)))

(declare-fun res!2142963 () Bool)

(assert (=> b!5026765 (=> (not res!2142963) (not e!3140205))))

(declare-fun dynLambda!23537 (Int Regex!13917) Bool)

(assert (=> b!5026765 (= res!2142963 (dynLambda!23537 lambda!249282 (h!64610 (exprs!3842 setElem!28894))))))

(declare-fun b!5026766 () Bool)

(assert (=> b!5026766 (= e!3140205 (forall!13431 (t!370686 (exprs!3842 setElem!28894)) lambda!249282))))

(assert (= (and d!1617868 (not res!2142962)) b!5026765))

(assert (= (and b!5026765 res!2142963) b!5026766))

(declare-fun b_lambda!198699 () Bool)

(assert (=> (not b_lambda!198699) (not b!5026765)))

(declare-fun m!6062188 () Bool)

(assert (=> b!5026765 m!6062188))

(declare-fun m!6062190 () Bool)

(assert (=> b!5026766 m!6062190))

(assert (=> d!1617644 d!1617868))

(declare-fun b!5026787 () Bool)

(declare-fun e!3140217 () List!58287)

(declare-fun ++!12674 (List!58287 List!58287) List!58287)

(assert (=> b!5026787 (= e!3140217 (++!12674 (list!18780 (left!42541 (c!859646 totalInput!1141))) (list!18780 (right!42871 (c!859646 totalInput!1141)))))))

(declare-fun b!5026783 () Bool)

(declare-fun e!3140215 () List!58287)

(assert (=> b!5026783 (= e!3140215 Nil!58163)))

(declare-fun b!5026784 () Bool)

(assert (=> b!5026784 (= e!3140215 e!3140217)))

(declare-fun c!859918 () Bool)

(assert (=> b!5026784 (= c!859918 ((_ is Leaf!25608) (c!859646 totalInput!1141)))))

(declare-fun b!5026785 () Bool)

(declare-fun list!18782 (IArray!30933) List!58287)

(assert (=> b!5026785 (= e!3140217 (list!18782 (xs!18762 (c!859646 totalInput!1141))))))

(declare-fun d!1617870 () Bool)

(declare-fun c!859917 () Bool)

(assert (=> d!1617870 (= c!859917 ((_ is Empty!15436) (c!859646 totalInput!1141)))))

(assert (=> d!1617870 (= (list!18780 (c!859646 totalInput!1141)) e!3140215)))

(assert (= (and d!1617870 c!859917) b!5026783))

(assert (= (and d!1617870 (not c!859917)) b!5026784))

(assert (= (and b!5026784 c!859918) b!5026785))

(assert (= (and b!5026784 (not c!859918)) b!5026787))

(declare-fun m!6062208 () Bool)

(assert (=> b!5026787 m!6062208))

(declare-fun m!6062212 () Bool)

(assert (=> b!5026787 m!6062212))

(assert (=> b!5026787 m!6062208))

(assert (=> b!5026787 m!6062212))

(declare-fun m!6062214 () Bool)

(assert (=> b!5026787 m!6062214))

(declare-fun m!6062216 () Bool)

(assert (=> b!5026785 m!6062216))

(assert (=> d!1617652 d!1617870))

(assert (=> b!5026406 d!1617812))

(declare-fun d!1617876 () Bool)

(declare-fun lt!2080471 () Int)

(assert (=> d!1617876 (>= lt!2080471 0)))

(declare-fun e!3140221 () Int)

(assert (=> d!1617876 (= lt!2080471 e!3140221)))

(declare-fun c!859919 () Bool)

(assert (=> d!1617876 (= c!859919 ((_ is Nil!58163) (drop!2568 lt!2080264 from!1228)))))

(assert (=> d!1617876 (= (size!38707 (drop!2568 lt!2080264 from!1228)) lt!2080471)))

(declare-fun b!5026793 () Bool)

(assert (=> b!5026793 (= e!3140221 0)))

(declare-fun b!5026794 () Bool)

(assert (=> b!5026794 (= e!3140221 (+ 1 (size!38707 (t!370687 (drop!2568 lt!2080264 from!1228)))))))

(assert (= (and d!1617876 c!859919) b!5026793))

(assert (= (and d!1617876 (not c!859919)) b!5026794))

(declare-fun m!6062224 () Bool)

(assert (=> b!5026794 m!6062224))

(assert (=> b!5026305 d!1617876))

(assert (=> b!5026385 d!1617640))

(assert (=> b!5026400 d!1617640))

(declare-fun d!1617878 () Bool)

(declare-fun lt!2080472 () Int)

(assert (=> d!1617878 (>= lt!2080472 0)))

(declare-fun e!3140224 () Int)

(assert (=> d!1617878 (= lt!2080472 e!3140224)))

(declare-fun c!859920 () Bool)

(assert (=> d!1617878 (= c!859920 ((_ is Nil!58163) lt!2080370))))

(assert (=> d!1617878 (= (size!38707 lt!2080370) lt!2080472)))

(declare-fun b!5026801 () Bool)

(assert (=> b!5026801 (= e!3140224 0)))

(declare-fun b!5026802 () Bool)

(assert (=> b!5026802 (= e!3140224 (+ 1 (size!38707 (t!370687 lt!2080370))))))

(assert (= (and d!1617878 c!859920) b!5026801))

(assert (= (and d!1617878 (not c!859920)) b!5026802))

(declare-fun m!6062226 () Bool)

(assert (=> b!5026802 m!6062226))

(assert (=> b!5026347 d!1617878))

(declare-fun d!1617880 () Bool)

(declare-fun res!2142970 () Bool)

(declare-fun e!3140230 () Bool)

(assert (=> d!1617880 (=> (not res!2142970) (not e!3140230))))

(assert (=> d!1617880 (= res!2142970 (= (csize!31102 (c!859646 totalInput!1141)) (+ (size!38708 (left!42541 (c!859646 totalInput!1141))) (size!38708 (right!42871 (c!859646 totalInput!1141))))))))

(assert (=> d!1617880 (= (inv!76698 (c!859646 totalInput!1141)) e!3140230)))

(declare-fun b!5026819 () Bool)

(declare-fun res!2142971 () Bool)

(assert (=> b!5026819 (=> (not res!2142971) (not e!3140230))))

(assert (=> b!5026819 (= res!2142971 (and (not (= (left!42541 (c!859646 totalInput!1141)) Empty!15436)) (not (= (right!42871 (c!859646 totalInput!1141)) Empty!15436))))))

(declare-fun b!5026820 () Bool)

(declare-fun res!2142972 () Bool)

(assert (=> b!5026820 (=> (not res!2142972) (not e!3140230))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5026820 (= res!2142972 (= (cheight!15647 (c!859646 totalInput!1141)) (+ (max!0 (height!2045 (left!42541 (c!859646 totalInput!1141))) (height!2045 (right!42871 (c!859646 totalInput!1141)))) 1)))))

(declare-fun b!5026821 () Bool)

(assert (=> b!5026821 (= e!3140230 (<= 0 (cheight!15647 (c!859646 totalInput!1141))))))

(assert (= (and d!1617880 res!2142970) b!5026819))

(assert (= (and b!5026819 res!2142971) b!5026820))

(assert (= (and b!5026820 res!2142972) b!5026821))

(declare-fun m!6062232 () Bool)

(assert (=> d!1617880 m!6062232))

(declare-fun m!6062234 () Bool)

(assert (=> d!1617880 m!6062234))

(assert (=> b!5026820 m!6062094))

(assert (=> b!5026820 m!6062096))

(assert (=> b!5026820 m!6062094))

(assert (=> b!5026820 m!6062096))

(declare-fun m!6062236 () Bool)

(assert (=> b!5026820 m!6062236))

(assert (=> b!5026332 d!1617880))

(declare-fun b!5026822 () Bool)

(declare-fun e!3140231 () Int)

(declare-fun call!350784 () Int)

(assert (=> b!5026822 (= e!3140231 (- call!350784 (- from!1228 1)))))

(declare-fun b!5026824 () Bool)

(declare-fun e!3140234 () List!58287)

(assert (=> b!5026824 (= e!3140234 (drop!2568 (t!370687 (t!370687 lt!2080264)) (- (- from!1228 1) 1)))))

(declare-fun b!5026825 () Bool)

(declare-fun e!3140233 () Int)

(assert (=> b!5026825 (= e!3140233 e!3140231)))

(declare-fun c!859923 () Bool)

(assert (=> b!5026825 (= c!859923 (>= (- from!1228 1) call!350784))))

(declare-fun b!5026826 () Bool)

(assert (=> b!5026826 (= e!3140231 0)))

(declare-fun bm!350779 () Bool)

(assert (=> bm!350779 (= call!350784 (size!38707 (t!370687 lt!2080264)))))

(declare-fun b!5026827 () Bool)

(declare-fun e!3140235 () List!58287)

(assert (=> b!5026827 (= e!3140235 e!3140234)))

(declare-fun c!859924 () Bool)

(assert (=> b!5026827 (= c!859924 (<= (- from!1228 1) 0))))

(declare-fun b!5026828 () Bool)

(declare-fun e!3140232 () Bool)

(declare-fun lt!2080473 () List!58287)

(assert (=> b!5026828 (= e!3140232 (= (size!38707 lt!2080473) e!3140233))))

(declare-fun c!859921 () Bool)

(assert (=> b!5026828 (= c!859921 (<= (- from!1228 1) 0))))

(declare-fun b!5026823 () Bool)

(assert (=> b!5026823 (= e!3140233 call!350784)))

(declare-fun d!1617884 () Bool)

(assert (=> d!1617884 e!3140232))

(declare-fun res!2142973 () Bool)

(assert (=> d!1617884 (=> (not res!2142973) (not e!3140232))))

(assert (=> d!1617884 (= res!2142973 (= ((_ map implies) (content!10307 lt!2080473) (content!10307 (t!370687 lt!2080264))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617884 (= lt!2080473 e!3140235)))

(declare-fun c!859922 () Bool)

(assert (=> d!1617884 (= c!859922 ((_ is Nil!58163) (t!370687 lt!2080264)))))

(assert (=> d!1617884 (= (drop!2568 (t!370687 lt!2080264) (- from!1228 1)) lt!2080473)))

(declare-fun b!5026829 () Bool)

(assert (=> b!5026829 (= e!3140235 Nil!58163)))

(declare-fun b!5026830 () Bool)

(assert (=> b!5026830 (= e!3140234 (t!370687 lt!2080264))))

(assert (= (and d!1617884 c!859922) b!5026829))

(assert (= (and d!1617884 (not c!859922)) b!5026827))

(assert (= (and b!5026827 c!859924) b!5026830))

(assert (= (and b!5026827 (not c!859924)) b!5026824))

(assert (= (and d!1617884 res!2142973) b!5026828))

(assert (= (and b!5026828 c!859921) b!5026823))

(assert (= (and b!5026828 (not c!859921)) b!5026825))

(assert (= (and b!5026825 c!859923) b!5026826))

(assert (= (and b!5026825 (not c!859923)) b!5026822))

(assert (= (or b!5026823 b!5026825 b!5026822) bm!350779))

(declare-fun m!6062238 () Bool)

(assert (=> b!5026824 m!6062238))

(assert (=> bm!350779 m!6062126))

(declare-fun m!6062240 () Bool)

(assert (=> b!5026828 m!6062240))

(declare-fun m!6062242 () Bool)

(assert (=> d!1617884 m!6062242))

(declare-fun m!6062244 () Bool)

(assert (=> d!1617884 m!6062244))

(assert (=> b!5026279 d!1617884))

(assert (=> b!5026339 d!1617668))

(assert (=> b!5026402 d!1617812))

(assert (=> b!5026301 d!1617876))

(declare-fun bs!1188089 () Bool)

(declare-fun d!1617886 () Bool)

(assert (= bs!1188089 (and d!1617886 d!1617588)))

(declare-fun lambda!249315 () Int)

(assert (=> bs!1188089 (not (= lambda!249315 lambda!249277))))

(declare-fun bs!1188090 () Bool)

(assert (= bs!1188090 (and d!1617886 b!5026257)))

(assert (=> bs!1188090 (not (= lambda!249315 lambda!249278))))

(declare-fun bs!1188091 () Bool)

(assert (= bs!1188091 (and d!1617886 b!5026258)))

(assert (=> bs!1188091 (not (= lambda!249315 lambda!249279))))

(declare-fun bs!1188092 () Bool)

(assert (= bs!1188092 (and d!1617886 d!1617668)))

(assert (=> bs!1188092 (not (= lambda!249315 lambda!249288))))

(assert (=> d!1617886 true))

(declare-fun order!26713 () Int)

(declare-fun dynLambda!23538 (Int Int) Int)

(assert (=> d!1617886 (< (dynLambda!23538 order!26713 (ite c!859729 lambda!249278 lambda!249279)) (dynLambda!23538 order!26713 lambda!249315))))

(declare-fun forall!13433 (List!58289 Int) Bool)

(assert (=> d!1617886 (= (exists!1398 (ite c!859729 lt!2080351 lt!2080352) (ite c!859729 lambda!249278 lambda!249279)) (not (forall!13433 (ite c!859729 lt!2080351 lt!2080352) lambda!249315)))))

(declare-fun bs!1188093 () Bool)

(assert (= bs!1188093 d!1617886))

(declare-fun m!6062246 () Bool)

(assert (=> bs!1188093 m!6062246))

(assert (=> bm!350763 d!1617886))

(declare-fun b!5026833 () Bool)

(declare-fun e!3140237 () List!58287)

(assert (=> b!5026833 (= e!3140237 Nil!58163)))

(declare-fun b!5026834 () Bool)

(declare-fun e!3140239 () Int)

(assert (=> b!5026834 (= e!3140239 (size!38707 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5026835 () Bool)

(assert (=> b!5026835 (= e!3140237 (Cons!58163 (h!64611 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))) (take!768 (t!370687 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))) (- (- lt!2080267 1) 1))))))

(declare-fun b!5026836 () Bool)

(declare-fun e!3140238 () Int)

(assert (=> b!5026836 (= e!3140238 0)))

(declare-fun b!5026837 () Bool)

(assert (=> b!5026837 (= e!3140239 (- lt!2080267 1))))

(declare-fun d!1617888 () Bool)

(declare-fun e!3140236 () Bool)

(assert (=> d!1617888 e!3140236))

(declare-fun res!2142974 () Bool)

(assert (=> d!1617888 (=> (not res!2142974) (not e!3140236))))

(declare-fun lt!2080474 () List!58287)

(assert (=> d!1617888 (= res!2142974 (= ((_ map implies) (content!10307 lt!2080474) (content!10307 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617888 (= lt!2080474 e!3140237)))

(declare-fun c!859926 () Bool)

(assert (=> d!1617888 (= c!859926 (or ((_ is Nil!58163) (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))) (<= (- lt!2080267 1) 0)))))

(assert (=> d!1617888 (= (take!768 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (- lt!2080267 1)) lt!2080474)))

(declare-fun b!5026838 () Bool)

(assert (=> b!5026838 (= e!3140238 e!3140239)))

(declare-fun c!859927 () Bool)

(assert (=> b!5026838 (= c!859927 (>= (- lt!2080267 1) (size!38707 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))))

(declare-fun b!5026839 () Bool)

(assert (=> b!5026839 (= e!3140236 (= (size!38707 lt!2080474) e!3140238))))

(declare-fun c!859925 () Bool)

(assert (=> b!5026839 (= c!859925 (<= (- lt!2080267 1) 0))))

(assert (= (and d!1617888 c!859926) b!5026833))

(assert (= (and d!1617888 (not c!859926)) b!5026835))

(assert (= (and d!1617888 res!2142974) b!5026839))

(assert (= (and b!5026839 c!859925) b!5026836))

(assert (= (and b!5026839 (not c!859925)) b!5026838))

(assert (= (and b!5026838 c!859927) b!5026834))

(assert (= (and b!5026838 (not c!859927)) b!5026837))

(declare-fun m!6062248 () Bool)

(assert (=> b!5026839 m!6062248))

(declare-fun m!6062250 () Bool)

(assert (=> b!5026835 m!6062250))

(declare-fun m!6062252 () Bool)

(assert (=> b!5026838 m!6062252))

(declare-fun m!6062254 () Bool)

(assert (=> d!1617888 m!6062254))

(declare-fun m!6062256 () Bool)

(assert (=> d!1617888 m!6062256))

(assert (=> b!5026834 m!6062252))

(assert (=> b!5026343 d!1617888))

(declare-fun bs!1188094 () Bool)

(declare-fun d!1617890 () Bool)

(assert (= bs!1188094 (and d!1617890 d!1617886)))

(declare-fun lambda!249318 () Int)

(assert (=> bs!1188094 (= (= lambda!249277 (ite c!859729 lambda!249278 lambda!249279)) (= lambda!249318 lambda!249315))))

(declare-fun bs!1188095 () Bool)

(assert (= bs!1188095 (and d!1617890 d!1617588)))

(assert (=> bs!1188095 (not (= lambda!249318 lambda!249277))))

(declare-fun bs!1188096 () Bool)

(assert (= bs!1188096 (and d!1617890 b!5026257)))

(assert (=> bs!1188096 (not (= lambda!249318 lambda!249278))))

(declare-fun bs!1188097 () Bool)

(assert (= bs!1188097 (and d!1617890 d!1617668)))

(assert (=> bs!1188097 (not (= lambda!249318 lambda!249288))))

(declare-fun bs!1188098 () Bool)

(assert (= bs!1188098 (and d!1617890 b!5026258)))

(assert (=> bs!1188098 (not (= lambda!249318 lambda!249279))))

(assert (=> d!1617890 true))

(assert (=> d!1617890 (< (dynLambda!23538 order!26713 lambda!249277) (dynLambda!23538 order!26713 lambda!249318))))

(assert (=> d!1617890 (not (exists!1398 lt!2080352 lambda!249318))))

(declare-fun lt!2080477 () Unit!149355)

(declare-fun choose!37194 (List!58289 Int) Unit!149355)

(assert (=> d!1617890 (= lt!2080477 (choose!37194 lt!2080352 lambda!249277))))

(assert (=> d!1617890 (forall!13433 lt!2080352 lambda!249277)))

(assert (=> d!1617890 (= (lemmaForallThenNotExists!256 lt!2080352 lambda!249277) lt!2080477)))

(declare-fun bs!1188099 () Bool)

(assert (= bs!1188099 d!1617890))

(declare-fun m!6062258 () Bool)

(assert (=> bs!1188099 m!6062258))

(declare-fun m!6062260 () Bool)

(assert (=> bs!1188099 m!6062260))

(declare-fun m!6062262 () Bool)

(assert (=> bs!1188099 m!6062262))

(assert (=> b!5026258 d!1617890))

(declare-fun d!1617892 () Bool)

(declare-fun res!2142979 () Bool)

(declare-fun e!3140244 () Bool)

(assert (=> d!1617892 (=> (not res!2142979) (not e!3140244))))

(assert (=> d!1617892 (= res!2142979 (<= (size!38707 (list!18782 (xs!18762 (c!859646 totalInput!1141)))) 512))))

(assert (=> d!1617892 (= (inv!76699 (c!859646 totalInput!1141)) e!3140244)))

(declare-fun b!5026844 () Bool)

(declare-fun res!2142980 () Bool)

(assert (=> b!5026844 (=> (not res!2142980) (not e!3140244))))

(assert (=> b!5026844 (= res!2142980 (= (csize!31103 (c!859646 totalInput!1141)) (size!38707 (list!18782 (xs!18762 (c!859646 totalInput!1141))))))))

(declare-fun b!5026845 () Bool)

(assert (=> b!5026845 (= e!3140244 (and (> (csize!31103 (c!859646 totalInput!1141)) 0) (<= (csize!31103 (c!859646 totalInput!1141)) 512)))))

(assert (= (and d!1617892 res!2142979) b!5026844))

(assert (= (and b!5026844 res!2142980) b!5026845))

(assert (=> d!1617892 m!6062216))

(assert (=> d!1617892 m!6062216))

(declare-fun m!6062264 () Bool)

(assert (=> d!1617892 m!6062264))

(assert (=> b!5026844 m!6062216))

(assert (=> b!5026844 m!6062216))

(assert (=> b!5026844 m!6062264))

(assert (=> b!5026334 d!1617892))

(declare-fun d!1617894 () Bool)

(declare-fun lt!2080478 () Int)

(assert (=> d!1617894 (>= lt!2080478 0)))

(declare-fun e!3140245 () Int)

(assert (=> d!1617894 (= lt!2080478 e!3140245)))

(declare-fun c!859928 () Bool)

(assert (=> d!1617894 (= c!859928 ((_ is Nil!58163) lt!2080366))))

(assert (=> d!1617894 (= (size!38707 lt!2080366) lt!2080478)))

(declare-fun b!5026846 () Bool)

(assert (=> b!5026846 (= e!3140245 0)))

(declare-fun b!5026847 () Bool)

(assert (=> b!5026847 (= e!3140245 (+ 1 (size!38707 (t!370687 lt!2080366))))))

(assert (= (and d!1617894 c!859928) b!5026846))

(assert (= (and d!1617894 (not c!859928)) b!5026847))

(declare-fun m!6062266 () Bool)

(assert (=> b!5026847 m!6062266))

(assert (=> b!5026325 d!1617894))

(declare-fun d!1617896 () Bool)

(declare-fun lt!2080481 () Bool)

(assert (=> d!1617896 (= lt!2080481 (exists!1398 (toList!8124 lt!2080262) lambda!249288))))

(declare-fun choose!37195 ((InoxSet Context!6684) Int) Bool)

(assert (=> d!1617896 (= lt!2080481 (choose!37195 lt!2080262 lambda!249288))))

(assert (=> d!1617896 (= (exists!1399 lt!2080262 lambda!249288) lt!2080481)))

(declare-fun bs!1188100 () Bool)

(assert (= bs!1188100 d!1617896))

(declare-fun m!6062268 () Bool)

(assert (=> bs!1188100 m!6062268))

(assert (=> bs!1188100 m!6062268))

(declare-fun m!6062270 () Bool)

(assert (=> bs!1188100 m!6062270))

(declare-fun m!6062272 () Bool)

(assert (=> bs!1188100 m!6062272))

(assert (=> d!1617668 d!1617896))

(declare-fun d!1617898 () Bool)

(declare-fun lt!2080482 () Int)

(assert (=> d!1617898 (>= lt!2080482 0)))

(declare-fun e!3140246 () Int)

(assert (=> d!1617898 (= lt!2080482 e!3140246)))

(declare-fun c!859929 () Bool)

(assert (=> d!1617898 (= c!859929 ((_ is Nil!58163) (list!18778 totalInput!1141)))))

(assert (=> d!1617898 (= (size!38707 (list!18778 totalInput!1141)) lt!2080482)))

(declare-fun b!5026848 () Bool)

(assert (=> b!5026848 (= e!3140246 0)))

(declare-fun b!5026849 () Bool)

(assert (=> b!5026849 (= e!3140246 (+ 1 (size!38707 (t!370687 (list!18778 totalInput!1141)))))))

(assert (= (and d!1617898 c!859929) b!5026848))

(assert (= (and d!1617898 (not c!859929)) b!5026849))

(assert (=> b!5026849 m!6062172))

(assert (=> bm!350767 d!1617898))

(assert (=> d!1617636 d!1617630))

(declare-fun b!5026850 () Bool)

(declare-fun e!3140247 () Int)

(declare-fun call!350785 () Int)

(assert (=> b!5026850 (= e!3140247 (- call!350785 (+ from!1228 1)))))

(declare-fun b!5026852 () Bool)

(declare-fun e!3140250 () List!58287)

(assert (=> b!5026852 (= e!3140250 (drop!2568 (t!370687 lt!2080264) (- (+ from!1228 1) 1)))))

(declare-fun b!5026853 () Bool)

(declare-fun e!3140249 () Int)

(assert (=> b!5026853 (= e!3140249 e!3140247)))

(declare-fun c!859932 () Bool)

(assert (=> b!5026853 (= c!859932 (>= (+ from!1228 1) call!350785))))

(declare-fun b!5026854 () Bool)

(assert (=> b!5026854 (= e!3140247 0)))

(declare-fun bm!350780 () Bool)

(assert (=> bm!350780 (= call!350785 (size!38707 lt!2080264))))

(declare-fun b!5026855 () Bool)

(declare-fun e!3140251 () List!58287)

(assert (=> b!5026855 (= e!3140251 e!3140250)))

(declare-fun c!859933 () Bool)

(assert (=> b!5026855 (= c!859933 (<= (+ from!1228 1) 0))))

(declare-fun b!5026856 () Bool)

(declare-fun e!3140248 () Bool)

(declare-fun lt!2080483 () List!58287)

(assert (=> b!5026856 (= e!3140248 (= (size!38707 lt!2080483) e!3140249))))

(declare-fun c!859930 () Bool)

(assert (=> b!5026856 (= c!859930 (<= (+ from!1228 1) 0))))

(declare-fun b!5026851 () Bool)

(assert (=> b!5026851 (= e!3140249 call!350785)))

(declare-fun d!1617900 () Bool)

(assert (=> d!1617900 e!3140248))

(declare-fun res!2142981 () Bool)

(assert (=> d!1617900 (=> (not res!2142981) (not e!3140248))))

(assert (=> d!1617900 (= res!2142981 (= ((_ map implies) (content!10307 lt!2080483) (content!10307 lt!2080264)) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617900 (= lt!2080483 e!3140251)))

(declare-fun c!859931 () Bool)

(assert (=> d!1617900 (= c!859931 ((_ is Nil!58163) lt!2080264))))

(assert (=> d!1617900 (= (drop!2568 lt!2080264 (+ from!1228 1)) lt!2080483)))

(declare-fun b!5026857 () Bool)

(assert (=> b!5026857 (= e!3140251 Nil!58163)))

(declare-fun b!5026858 () Bool)

(assert (=> b!5026858 (= e!3140250 lt!2080264)))

(assert (= (and d!1617900 c!859931) b!5026857))

(assert (= (and d!1617900 (not c!859931)) b!5026855))

(assert (= (and b!5026855 c!859933) b!5026858))

(assert (= (and b!5026855 (not c!859933)) b!5026852))

(assert (= (and d!1617900 res!2142981) b!5026856))

(assert (= (and b!5026856 c!859930) b!5026851))

(assert (= (and b!5026856 (not c!859930)) b!5026853))

(assert (= (and b!5026853 c!859932) b!5026854))

(assert (= (and b!5026853 (not c!859932)) b!5026850))

(assert (= (or b!5026851 b!5026853 b!5026850) bm!350780))

(declare-fun m!6062274 () Bool)

(assert (=> b!5026852 m!6062274))

(assert (=> bm!350780 m!6061676))

(declare-fun m!6062276 () Bool)

(assert (=> b!5026856 m!6062276))

(declare-fun m!6062278 () Bool)

(assert (=> d!1617900 m!6062278))

(assert (=> d!1617900 m!6061682))

(assert (=> d!1617636 d!1617900))

(declare-fun b!5026859 () Bool)

(declare-fun e!3140253 () List!58287)

(assert (=> b!5026859 (= e!3140253 Nil!58163)))

(declare-fun b!5026860 () Bool)

(declare-fun e!3140255 () Int)

(assert (=> b!5026860 (= e!3140255 (size!38707 (drop!2568 lt!2080264 (+ from!1228 1))))))

(declare-fun b!5026861 () Bool)

(assert (=> b!5026861 (= e!3140253 (Cons!58163 (h!64611 (drop!2568 lt!2080264 (+ from!1228 1))) (take!768 (t!370687 (drop!2568 lt!2080264 (+ from!1228 1))) (- 0 1))))))

(declare-fun b!5026862 () Bool)

(declare-fun e!3140254 () Int)

(assert (=> b!5026862 (= e!3140254 0)))

(declare-fun b!5026863 () Bool)

(assert (=> b!5026863 (= e!3140255 0)))

(declare-fun d!1617902 () Bool)

(declare-fun e!3140252 () Bool)

(assert (=> d!1617902 e!3140252))

(declare-fun res!2142982 () Bool)

(assert (=> d!1617902 (=> (not res!2142982) (not e!3140252))))

(declare-fun lt!2080484 () List!58287)

(assert (=> d!1617902 (= res!2142982 (= ((_ map implies) (content!10307 lt!2080484) (content!10307 (drop!2568 lt!2080264 (+ from!1228 1)))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617902 (= lt!2080484 e!3140253)))

(declare-fun c!859935 () Bool)

(assert (=> d!1617902 (= c!859935 (or ((_ is Nil!58163) (drop!2568 lt!2080264 (+ from!1228 1))) (<= 0 0)))))

(assert (=> d!1617902 (= (take!768 (drop!2568 lt!2080264 (+ from!1228 1)) 0) lt!2080484)))

(declare-fun b!5026864 () Bool)

(assert (=> b!5026864 (= e!3140254 e!3140255)))

(declare-fun c!859936 () Bool)

(assert (=> b!5026864 (= c!859936 (>= 0 (size!38707 (drop!2568 lt!2080264 (+ from!1228 1)))))))

(declare-fun b!5026865 () Bool)

(assert (=> b!5026865 (= e!3140252 (= (size!38707 lt!2080484) e!3140254))))

(declare-fun c!859934 () Bool)

(assert (=> b!5026865 (= c!859934 (<= 0 0))))

(assert (= (and d!1617902 c!859935) b!5026859))

(assert (= (and d!1617902 (not c!859935)) b!5026861))

(assert (= (and d!1617902 res!2142982) b!5026865))

(assert (= (and b!5026865 c!859934) b!5026862))

(assert (= (and b!5026865 (not c!859934)) b!5026864))

(assert (= (and b!5026864 c!859936) b!5026860))

(assert (= (and b!5026864 (not c!859936)) b!5026863))

(declare-fun m!6062280 () Bool)

(assert (=> b!5026865 m!6062280))

(declare-fun m!6062282 () Bool)

(assert (=> b!5026861 m!6062282))

(assert (=> b!5026864 m!6061702))

(declare-fun m!6062284 () Bool)

(assert (=> b!5026864 m!6062284))

(declare-fun m!6062286 () Bool)

(assert (=> d!1617902 m!6062286))

(assert (=> d!1617902 m!6061702))

(declare-fun m!6062288 () Bool)

(assert (=> d!1617902 m!6062288))

(assert (=> b!5026860 m!6061702))

(assert (=> b!5026860 m!6062284))

(assert (=> d!1617636 d!1617902))

(declare-fun b!5026866 () Bool)

(declare-fun e!3140257 () List!58287)

(assert (=> b!5026866 (= e!3140257 Nil!58163)))

(declare-fun b!5026867 () Bool)

(declare-fun e!3140259 () Int)

(assert (=> b!5026867 (= e!3140259 (size!38707 (drop!2568 lt!2080264 from!1228)))))

(declare-fun b!5026868 () Bool)

(assert (=> b!5026868 (= e!3140257 (Cons!58163 (h!64611 (drop!2568 lt!2080264 from!1228)) (take!768 (t!370687 (drop!2568 lt!2080264 from!1228)) (- (+ 0 1) 1))))))

(declare-fun b!5026869 () Bool)

(declare-fun e!3140258 () Int)

(assert (=> b!5026869 (= e!3140258 0)))

(declare-fun b!5026870 () Bool)

(assert (=> b!5026870 (= e!3140259 (+ 0 1))))

(declare-fun d!1617904 () Bool)

(declare-fun e!3140256 () Bool)

(assert (=> d!1617904 e!3140256))

(declare-fun res!2142983 () Bool)

(assert (=> d!1617904 (=> (not res!2142983) (not e!3140256))))

(declare-fun lt!2080485 () List!58287)

(assert (=> d!1617904 (= res!2142983 (= ((_ map implies) (content!10307 lt!2080485) (content!10307 (drop!2568 lt!2080264 from!1228))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617904 (= lt!2080485 e!3140257)))

(declare-fun c!859938 () Bool)

(assert (=> d!1617904 (= c!859938 (or ((_ is Nil!58163) (drop!2568 lt!2080264 from!1228)) (<= (+ 0 1) 0)))))

(assert (=> d!1617904 (= (take!768 (drop!2568 lt!2080264 from!1228) (+ 0 1)) lt!2080485)))

(declare-fun b!5026871 () Bool)

(assert (=> b!5026871 (= e!3140258 e!3140259)))

(declare-fun c!859939 () Bool)

(assert (=> b!5026871 (= c!859939 (>= (+ 0 1) (size!38707 (drop!2568 lt!2080264 from!1228))))))

(declare-fun b!5026872 () Bool)

(assert (=> b!5026872 (= e!3140256 (= (size!38707 lt!2080485) e!3140258))))

(declare-fun c!859937 () Bool)

(assert (=> b!5026872 (= c!859937 (<= (+ 0 1) 0))))

(assert (= (and d!1617904 c!859938) b!5026866))

(assert (= (and d!1617904 (not c!859938)) b!5026868))

(assert (= (and d!1617904 res!2142983) b!5026872))

(assert (= (and b!5026872 c!859937) b!5026869))

(assert (= (and b!5026872 (not c!859937)) b!5026871))

(assert (= (and b!5026871 c!859939) b!5026867))

(assert (= (and b!5026871 (not c!859939)) b!5026870))

(declare-fun m!6062290 () Bool)

(assert (=> b!5026872 m!6062290))

(declare-fun m!6062292 () Bool)

(assert (=> b!5026868 m!6062292))

(assert (=> b!5026871 m!6061476))

(assert (=> b!5026871 m!6061688))

(declare-fun m!6062294 () Bool)

(assert (=> d!1617904 m!6062294))

(assert (=> d!1617904 m!6061476))

(assert (=> d!1617904 m!6061692))

(assert (=> b!5026867 m!6061476))

(assert (=> b!5026867 m!6061688))

(assert (=> d!1617636 d!1617904))

(assert (=> d!1617636 d!1617634))

(declare-fun d!1617906 () Bool)

(assert (=> d!1617906 (= (Cons!58163 (apply!14158 lt!2080264 from!1228) (take!768 (drop!2568 lt!2080264 (+ from!1228 1)) 0)) (take!768 (drop!2568 lt!2080264 from!1228) (+ 0 1)))))

(assert (=> d!1617906 true))

(declare-fun _$30!255 () Unit!149355)

(assert (=> d!1617906 (= (choose!37188 lt!2080264 from!1228 0) _$30!255)))

(declare-fun bs!1188101 () Bool)

(assert (= bs!1188101 d!1617906))

(assert (=> bs!1188101 m!6061702))

(assert (=> bs!1188101 m!6061704))

(assert (=> bs!1188101 m!6061476))

(assert (=> bs!1188101 m!6061702))

(assert (=> bs!1188101 m!6061476))

(assert (=> bs!1188101 m!6061706))

(assert (=> bs!1188101 m!6061480))

(assert (=> d!1617636 d!1617906))

(declare-fun d!1617908 () Bool)

(declare-fun c!859940 () Bool)

(assert (=> d!1617908 (= c!859940 ((_ is Nil!58163) lt!2080359))))

(declare-fun e!3140260 () (InoxSet C!28084))

(assert (=> d!1617908 (= (content!10307 lt!2080359) e!3140260)))

(declare-fun b!5026873 () Bool)

(assert (=> b!5026873 (= e!3140260 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026874 () Bool)

(assert (=> b!5026874 (= e!3140260 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080359) true) (content!10307 (t!370687 lt!2080359))))))

(assert (= (and d!1617908 c!859940) b!5026873))

(assert (= (and d!1617908 (not c!859940)) b!5026874))

(declare-fun m!6062296 () Bool)

(assert (=> b!5026874 m!6062296))

(declare-fun m!6062298 () Bool)

(assert (=> b!5026874 m!6062298))

(assert (=> d!1617632 d!1617908))

(declare-fun d!1617910 () Bool)

(declare-fun c!859941 () Bool)

(assert (=> d!1617910 (= c!859941 ((_ is Nil!58163) (drop!2568 lt!2080264 from!1228)))))

(declare-fun e!3140261 () (InoxSet C!28084))

(assert (=> d!1617910 (= (content!10307 (drop!2568 lt!2080264 from!1228)) e!3140261)))

(declare-fun b!5026875 () Bool)

(assert (=> b!5026875 (= e!3140261 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026876 () Bool)

(assert (=> b!5026876 (= e!3140261 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 (drop!2568 lt!2080264 from!1228)) true) (content!10307 (t!370687 (drop!2568 lt!2080264 from!1228)))))))

(assert (= (and d!1617910 c!859941) b!5026875))

(assert (= (and d!1617910 (not c!859941)) b!5026876))

(declare-fun m!6062300 () Bool)

(assert (=> b!5026876 m!6062300))

(declare-fun m!6062302 () Bool)

(assert (=> b!5026876 m!6062302))

(assert (=> d!1617632 d!1617910))

(declare-fun d!1617912 () Bool)

(declare-fun lt!2080488 () Bool)

(assert (=> d!1617912 (= lt!2080488 (select (content!10307 lt!2080264) lt!2080362))))

(declare-fun e!3140266 () Bool)

(assert (=> d!1617912 (= lt!2080488 e!3140266)))

(declare-fun res!2142988 () Bool)

(assert (=> d!1617912 (=> (not res!2142988) (not e!3140266))))

(assert (=> d!1617912 (= res!2142988 ((_ is Cons!58163) lt!2080264))))

(assert (=> d!1617912 (= (contains!19576 lt!2080264 lt!2080362) lt!2080488)))

(declare-fun b!5026881 () Bool)

(declare-fun e!3140267 () Bool)

(assert (=> b!5026881 (= e!3140266 e!3140267)))

(declare-fun res!2142989 () Bool)

(assert (=> b!5026881 (=> res!2142989 e!3140267)))

(assert (=> b!5026881 (= res!2142989 (= (h!64611 lt!2080264) lt!2080362))))

(declare-fun b!5026882 () Bool)

(assert (=> b!5026882 (= e!3140267 (contains!19576 (t!370687 lt!2080264) lt!2080362))))

(assert (= (and d!1617912 res!2142988) b!5026881))

(assert (= (and b!5026881 (not res!2142989)) b!5026882))

(assert (=> d!1617912 m!6061682))

(declare-fun m!6062304 () Bool)

(assert (=> d!1617912 m!6062304))

(declare-fun m!6062306 () Bool)

(assert (=> b!5026882 m!6062306))

(assert (=> d!1617634 d!1617912))

(declare-fun d!1617914 () Bool)

(assert (=> d!1617914 (= (isEmpty!31453 (getLanguageWitness!742 z!4747)) (not ((_ is Some!14602) (getLanguageWitness!742 z!4747))))))

(assert (=> d!1617588 d!1617914))

(declare-fun bs!1188102 () Bool)

(declare-fun d!1617916 () Bool)

(assert (= bs!1188102 (and d!1617916 d!1617886)))

(declare-fun lambda!249325 () Int)

(assert (=> bs!1188102 (not (= lambda!249325 lambda!249315))))

(declare-fun bs!1188103 () Bool)

(assert (= bs!1188103 (and d!1617916 d!1617890)))

(assert (=> bs!1188103 (not (= lambda!249325 lambda!249318))))

(declare-fun bs!1188104 () Bool)

(assert (= bs!1188104 (and d!1617916 d!1617588)))

(assert (=> bs!1188104 (not (= lambda!249325 lambda!249277))))

(declare-fun bs!1188105 () Bool)

(assert (= bs!1188105 (and d!1617916 b!5026257)))

(assert (=> bs!1188105 (= lambda!249325 lambda!249278)))

(declare-fun bs!1188106 () Bool)

(assert (= bs!1188106 (and d!1617916 d!1617668)))

(assert (=> bs!1188106 (not (= lambda!249325 lambda!249288))))

(declare-fun bs!1188107 () Bool)

(assert (= bs!1188107 (and d!1617916 b!5026258)))

(assert (=> bs!1188107 (= lambda!249325 lambda!249279)))

(declare-fun lt!2080491 () Option!14603)

(declare-fun isDefined!11495 (Option!14603) Bool)

(assert (=> d!1617916 (= (isDefined!11495 lt!2080491) (exists!1399 z!4747 lambda!249325))))

(declare-fun e!3140270 () Option!14603)

(assert (=> d!1617916 (= lt!2080491 e!3140270)))

(declare-fun c!859950 () Bool)

(assert (=> d!1617916 (= c!859950 (exists!1399 z!4747 lambda!249325))))

(assert (=> d!1617916 (= (getLanguageWitness!742 z!4747) lt!2080491)))

(declare-fun b!5026887 () Bool)

(declare-fun getLanguageWitness!744 (Context!6684) Option!14603)

(declare-fun getWitness!663 ((InoxSet Context!6684) Int) Context!6684)

(assert (=> b!5026887 (= e!3140270 (getLanguageWitness!744 (getWitness!663 z!4747 lambda!249325)))))

(declare-fun b!5026888 () Bool)

(assert (=> b!5026888 (= e!3140270 None!14602)))

(assert (= (and d!1617916 c!859950) b!5026887))

(assert (= (and d!1617916 (not c!859950)) b!5026888))

(declare-fun m!6062308 () Bool)

(assert (=> d!1617916 m!6062308))

(declare-fun m!6062310 () Bool)

(assert (=> d!1617916 m!6062310))

(assert (=> d!1617916 m!6062310))

(declare-fun m!6062312 () Bool)

(assert (=> b!5026887 m!6062312))

(assert (=> b!5026887 m!6062312))

(declare-fun m!6062314 () Bool)

(assert (=> b!5026887 m!6062314))

(assert (=> d!1617588 d!1617916))

(declare-fun d!1617918 () Bool)

(declare-fun lt!2080494 () Bool)

(assert (=> d!1617918 (= lt!2080494 (forall!13433 (toList!8124 z!4747) lambda!249277))))

(declare-fun choose!37197 ((InoxSet Context!6684) Int) Bool)

(assert (=> d!1617918 (= lt!2080494 (choose!37197 z!4747 lambda!249277))))

(assert (=> d!1617918 (= (forall!13430 z!4747 lambda!249277) lt!2080494)))

(declare-fun bs!1188108 () Bool)

(assert (= bs!1188108 d!1617918))

(assert (=> bs!1188108 m!6061662))

(assert (=> bs!1188108 m!6061662))

(declare-fun m!6062316 () Bool)

(assert (=> bs!1188108 m!6062316))

(declare-fun m!6062318 () Bool)

(assert (=> bs!1188108 m!6062318))

(assert (=> d!1617588 d!1617918))

(declare-fun d!1617920 () Bool)

(declare-fun c!859951 () Bool)

(assert (=> d!1617920 (= c!859951 ((_ is Nil!58163) lt!2080384))))

(declare-fun e!3140271 () (InoxSet C!28084))

(assert (=> d!1617920 (= (content!10307 lt!2080384) e!3140271)))

(declare-fun b!5026889 () Bool)

(assert (=> b!5026889 (= e!3140271 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026890 () Bool)

(assert (=> b!5026890 (= e!3140271 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080384) true) (content!10307 (t!370687 lt!2080384))))))

(assert (= (and d!1617920 c!859951) b!5026889))

(assert (= (and d!1617920 (not c!859951)) b!5026890))

(declare-fun m!6062320 () Bool)

(assert (=> b!5026890 m!6062320))

(declare-fun m!6062322 () Bool)

(assert (=> b!5026890 m!6062322))

(assert (=> d!1617660 d!1617920))

(declare-fun d!1617922 () Bool)

(declare-fun c!859952 () Bool)

(assert (=> d!1617922 (= c!859952 ((_ is Nil!58163) lt!2080264))))

(declare-fun e!3140272 () (InoxSet C!28084))

(assert (=> d!1617922 (= (content!10307 lt!2080264) e!3140272)))

(declare-fun b!5026891 () Bool)

(assert (=> b!5026891 (= e!3140272 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026892 () Bool)

(assert (=> b!5026892 (= e!3140272 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080264) true) (content!10307 (t!370687 lt!2080264))))))

(assert (= (and d!1617922 c!859952) b!5026891))

(assert (= (and d!1617922 (not c!859952)) b!5026892))

(declare-fun m!6062324 () Bool)

(assert (=> b!5026892 m!6062324))

(assert (=> b!5026892 m!6062244))

(assert (=> d!1617660 d!1617922))

(declare-fun d!1617924 () Bool)

(declare-fun lt!2080495 () Int)

(assert (=> d!1617924 (>= lt!2080495 0)))

(declare-fun e!3140273 () Int)

(assert (=> d!1617924 (= lt!2080495 e!3140273)))

(declare-fun c!859953 () Bool)

(assert (=> d!1617924 (= c!859953 ((_ is Nil!58163) lt!2080371))))

(assert (=> d!1617924 (= (size!38707 lt!2080371) lt!2080495)))

(declare-fun b!5026893 () Bool)

(assert (=> b!5026893 (= e!3140273 0)))

(declare-fun b!5026894 () Bool)

(assert (=> b!5026894 (= e!3140273 (+ 1 (size!38707 (t!370687 lt!2080371))))))

(assert (= (and d!1617924 c!859953) b!5026893))

(assert (= (and d!1617924 (not c!859953)) b!5026894))

(declare-fun m!6062326 () Bool)

(assert (=> b!5026894 m!6062326))

(assert (=> b!5026354 d!1617924))

(declare-fun d!1617926 () Bool)

(assert (=> d!1617926 (= (inv!76700 (xs!18762 (c!859646 totalInput!1141))) (<= (size!38707 (innerList!15524 (xs!18762 (c!859646 totalInput!1141)))) 2147483647))))

(declare-fun bs!1188109 () Bool)

(assert (= bs!1188109 d!1617926))

(declare-fun m!6062328 () Bool)

(assert (=> bs!1188109 m!6062328))

(assert (=> b!5026419 d!1617926))

(declare-fun b!5026895 () Bool)

(declare-fun e!3140274 () Int)

(declare-fun call!350786 () Int)

(assert (=> b!5026895 (= e!3140274 (- call!350786 (- (+ 1 from!1228) 1)))))

(declare-fun b!5026897 () Bool)

(declare-fun e!3140277 () List!58287)

(assert (=> b!5026897 (= e!3140277 (drop!2568 (t!370687 (t!370687 lt!2080264)) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5026898 () Bool)

(declare-fun e!3140276 () Int)

(assert (=> b!5026898 (= e!3140276 e!3140274)))

(declare-fun c!859956 () Bool)

(assert (=> b!5026898 (= c!859956 (>= (- (+ 1 from!1228) 1) call!350786))))

(declare-fun b!5026899 () Bool)

(assert (=> b!5026899 (= e!3140274 0)))

(declare-fun bm!350781 () Bool)

(assert (=> bm!350781 (= call!350786 (size!38707 (t!370687 lt!2080264)))))

(declare-fun b!5026900 () Bool)

(declare-fun e!3140278 () List!58287)

(assert (=> b!5026900 (= e!3140278 e!3140277)))

(declare-fun c!859957 () Bool)

(assert (=> b!5026900 (= c!859957 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5026901 () Bool)

(declare-fun e!3140275 () Bool)

(declare-fun lt!2080496 () List!58287)

(assert (=> b!5026901 (= e!3140275 (= (size!38707 lt!2080496) e!3140276))))

(declare-fun c!859954 () Bool)

(assert (=> b!5026901 (= c!859954 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5026896 () Bool)

(assert (=> b!5026896 (= e!3140276 call!350786)))

(declare-fun d!1617928 () Bool)

(assert (=> d!1617928 e!3140275))

(declare-fun res!2142990 () Bool)

(assert (=> d!1617928 (=> (not res!2142990) (not e!3140275))))

(assert (=> d!1617928 (= res!2142990 (= ((_ map implies) (content!10307 lt!2080496) (content!10307 (t!370687 lt!2080264))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617928 (= lt!2080496 e!3140278)))

(declare-fun c!859955 () Bool)

(assert (=> d!1617928 (= c!859955 ((_ is Nil!58163) (t!370687 lt!2080264)))))

(assert (=> d!1617928 (= (drop!2568 (t!370687 lt!2080264) (- (+ 1 from!1228) 1)) lt!2080496)))

(declare-fun b!5026902 () Bool)

(assert (=> b!5026902 (= e!3140278 Nil!58163)))

(declare-fun b!5026903 () Bool)

(assert (=> b!5026903 (= e!3140277 (t!370687 lt!2080264))))

(assert (= (and d!1617928 c!859955) b!5026902))

(assert (= (and d!1617928 (not c!859955)) b!5026900))

(assert (= (and b!5026900 c!859957) b!5026903))

(assert (= (and b!5026900 (not c!859957)) b!5026897))

(assert (= (and d!1617928 res!2142990) b!5026901))

(assert (= (and b!5026901 c!859954) b!5026896))

(assert (= (and b!5026901 (not c!859954)) b!5026898))

(assert (= (and b!5026898 c!859956) b!5026899))

(assert (= (and b!5026898 (not c!859956)) b!5026895))

(assert (= (or b!5026896 b!5026898 b!5026895) bm!350781))

(declare-fun m!6062330 () Bool)

(assert (=> b!5026897 m!6062330))

(assert (=> bm!350781 m!6062126))

(declare-fun m!6062332 () Bool)

(assert (=> b!5026901 m!6062332))

(declare-fun m!6062334 () Bool)

(assert (=> d!1617928 m!6062334))

(assert (=> d!1617928 m!6062244))

(assert (=> b!5026389 d!1617928))

(declare-fun bs!1188110 () Bool)

(declare-fun d!1617930 () Bool)

(assert (= bs!1188110 (and d!1617930 d!1617644)))

(declare-fun lambda!249326 () Int)

(assert (=> bs!1188110 (= lambda!249326 lambda!249282)))

(assert (=> d!1617930 (= (inv!76692 setElem!28900) (forall!13431 (exprs!3842 setElem!28900) lambda!249326))))

(declare-fun bs!1188111 () Bool)

(assert (= bs!1188111 d!1617930))

(declare-fun m!6062336 () Bool)

(assert (=> bs!1188111 m!6062336))

(assert (=> setNonEmpty!28900 d!1617930))

(assert (=> b!5026408 d!1617668))

(declare-fun b!5026904 () Bool)

(declare-fun e!3140280 () List!58287)

(assert (=> b!5026904 (= e!3140280 Nil!58163)))

(declare-fun b!5026905 () Bool)

(declare-fun e!3140282 () Int)

(assert (=> b!5026905 (= e!3140282 (size!38707 (t!370687 lt!2080265)))))

(declare-fun b!5026906 () Bool)

(assert (=> b!5026906 (= e!3140280 (Cons!58163 (h!64611 (t!370687 lt!2080265)) (take!768 (t!370687 (t!370687 lt!2080265)) (- (- 0 1) 1))))))

(declare-fun b!5026907 () Bool)

(declare-fun e!3140281 () Int)

(assert (=> b!5026907 (= e!3140281 0)))

(declare-fun b!5026908 () Bool)

(assert (=> b!5026908 (= e!3140282 (- 0 1))))

(declare-fun d!1617932 () Bool)

(declare-fun e!3140279 () Bool)

(assert (=> d!1617932 e!3140279))

(declare-fun res!2142991 () Bool)

(assert (=> d!1617932 (=> (not res!2142991) (not e!3140279))))

(declare-fun lt!2080497 () List!58287)

(assert (=> d!1617932 (= res!2142991 (= ((_ map implies) (content!10307 lt!2080497) (content!10307 (t!370687 lt!2080265))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617932 (= lt!2080497 e!3140280)))

(declare-fun c!859959 () Bool)

(assert (=> d!1617932 (= c!859959 (or ((_ is Nil!58163) (t!370687 lt!2080265)) (<= (- 0 1) 0)))))

(assert (=> d!1617932 (= (take!768 (t!370687 lt!2080265) (- 0 1)) lt!2080497)))

(declare-fun b!5026909 () Bool)

(assert (=> b!5026909 (= e!3140281 e!3140282)))

(declare-fun c!859960 () Bool)

(assert (=> b!5026909 (= c!859960 (>= (- 0 1) (size!38707 (t!370687 lt!2080265))))))

(declare-fun b!5026910 () Bool)

(assert (=> b!5026910 (= e!3140279 (= (size!38707 lt!2080497) e!3140281))))

(declare-fun c!859958 () Bool)

(assert (=> b!5026910 (= c!859958 (<= (- 0 1) 0))))

(assert (= (and d!1617932 c!859959) b!5026904))

(assert (= (and d!1617932 (not c!859959)) b!5026906))

(assert (= (and d!1617932 res!2142991) b!5026910))

(assert (= (and b!5026910 c!859958) b!5026907))

(assert (= (and b!5026910 (not c!859958)) b!5026909))

(assert (= (and b!5026909 c!859960) b!5026905))

(assert (= (and b!5026909 (not c!859960)) b!5026908))

(declare-fun m!6062338 () Bool)

(assert (=> b!5026910 m!6062338))

(declare-fun m!6062340 () Bool)

(assert (=> b!5026906 m!6062340))

(assert (=> b!5026909 m!6062102))

(declare-fun m!6062342 () Bool)

(assert (=> d!1617932 m!6062342))

(assert (=> d!1617932 m!6062162))

(assert (=> b!5026905 m!6062102))

(assert (=> b!5026321 d!1617932))

(declare-fun d!1617934 () Bool)

(declare-fun lt!2080498 () C!28084)

(assert (=> d!1617934 (contains!19576 (list!18778 totalInput!1141) lt!2080498)))

(declare-fun e!3140283 () C!28084)

(assert (=> d!1617934 (= lt!2080498 e!3140283)))

(declare-fun c!859961 () Bool)

(assert (=> d!1617934 (= c!859961 (= from!1228 0))))

(declare-fun e!3140284 () Bool)

(assert (=> d!1617934 e!3140284))

(declare-fun res!2142992 () Bool)

(assert (=> d!1617934 (=> (not res!2142992) (not e!3140284))))

(assert (=> d!1617934 (= res!2142992 (<= 0 from!1228))))

(assert (=> d!1617934 (= (apply!14158 (list!18778 totalInput!1141) from!1228) lt!2080498)))

(declare-fun b!5026911 () Bool)

(assert (=> b!5026911 (= e!3140284 (< from!1228 (size!38707 (list!18778 totalInput!1141))))))

(declare-fun b!5026912 () Bool)

(assert (=> b!5026912 (= e!3140283 (head!10778 (list!18778 totalInput!1141)))))

(declare-fun b!5026913 () Bool)

(assert (=> b!5026913 (= e!3140283 (apply!14158 (tail!9911 (list!18778 totalInput!1141)) (- from!1228 1)))))

(assert (= (and d!1617934 res!2142992) b!5026911))

(assert (= (and d!1617934 c!859961) b!5026912))

(assert (= (and d!1617934 (not c!859961)) b!5026913))

(assert (=> d!1617934 m!6061466))

(declare-fun m!6062344 () Bool)

(assert (=> d!1617934 m!6062344))

(assert (=> b!5026911 m!6061466))

(assert (=> b!5026911 m!6061720))

(assert (=> b!5026912 m!6061466))

(declare-fun m!6062346 () Bool)

(assert (=> b!5026912 m!6062346))

(assert (=> b!5026913 m!6061466))

(declare-fun m!6062348 () Bool)

(assert (=> b!5026913 m!6062348))

(assert (=> b!5026913 m!6062348))

(declare-fun m!6062350 () Bool)

(assert (=> b!5026913 m!6062350))

(assert (=> d!1617664 d!1617934))

(assert (=> d!1617664 d!1617652))

(declare-fun b!5026928 () Bool)

(declare-fun e!3140295 () C!28084)

(declare-fun apply!14163 (IArray!30933 Int) C!28084)

(assert (=> b!5026928 (= e!3140295 (apply!14163 (xs!18762 (c!859646 totalInput!1141)) from!1228))))

(declare-fun b!5026929 () Bool)

(declare-fun e!3140296 () C!28084)

(declare-fun call!350789 () C!28084)

(assert (=> b!5026929 (= e!3140296 call!350789)))

(declare-fun d!1617936 () Bool)

(declare-fun lt!2080503 () C!28084)

(assert (=> d!1617936 (= lt!2080503 (apply!14158 (list!18780 (c!859646 totalInput!1141)) from!1228))))

(assert (=> d!1617936 (= lt!2080503 e!3140295)))

(declare-fun c!859968 () Bool)

(assert (=> d!1617936 (= c!859968 ((_ is Leaf!25608) (c!859646 totalInput!1141)))))

(declare-fun e!3140294 () Bool)

(assert (=> d!1617936 e!3140294))

(declare-fun res!2142995 () Bool)

(assert (=> d!1617936 (=> (not res!2142995) (not e!3140294))))

(assert (=> d!1617936 (= res!2142995 (<= 0 from!1228))))

(assert (=> d!1617936 (= (apply!14161 (c!859646 totalInput!1141) from!1228) lt!2080503)))

(declare-fun b!5026930 () Bool)

(declare-fun e!3140293 () Int)

(assert (=> b!5026930 (= e!3140293 (- from!1228 (size!38708 (left!42541 (c!859646 totalInput!1141)))))))

(declare-fun b!5026931 () Bool)

(assert (=> b!5026931 (= e!3140294 (< from!1228 (size!38708 (c!859646 totalInput!1141))))))

(declare-fun b!5026932 () Bool)

(assert (=> b!5026932 (= e!3140293 from!1228)))

(declare-fun b!5026933 () Bool)

(assert (=> b!5026933 (= e!3140295 e!3140296)))

(declare-fun lt!2080504 () Bool)

(declare-fun appendIndex!403 (List!58287 List!58287 Int) Bool)

(assert (=> b!5026933 (= lt!2080504 (appendIndex!403 (list!18780 (left!42541 (c!859646 totalInput!1141))) (list!18780 (right!42871 (c!859646 totalInput!1141))) from!1228))))

(declare-fun c!859969 () Bool)

(assert (=> b!5026933 (= c!859969 (< from!1228 (size!38708 (left!42541 (c!859646 totalInput!1141)))))))

(declare-fun b!5026934 () Bool)

(assert (=> b!5026934 (= e!3140296 call!350789)))

(declare-fun bm!350784 () Bool)

(declare-fun c!859970 () Bool)

(assert (=> bm!350784 (= c!859970 c!859969)))

(assert (=> bm!350784 (= call!350789 (apply!14161 (ite c!859969 (left!42541 (c!859646 totalInput!1141)) (right!42871 (c!859646 totalInput!1141))) e!3140293))))

(assert (= (and d!1617936 res!2142995) b!5026931))

(assert (= (and d!1617936 c!859968) b!5026928))

(assert (= (and d!1617936 (not c!859968)) b!5026933))

(assert (= (and b!5026933 c!859969) b!5026929))

(assert (= (and b!5026933 (not c!859969)) b!5026934))

(assert (= (or b!5026929 b!5026934) bm!350784))

(assert (= (and bm!350784 c!859970) b!5026932))

(assert (= (and bm!350784 (not c!859970)) b!5026930))

(declare-fun m!6062352 () Bool)

(assert (=> bm!350784 m!6062352))

(declare-fun m!6062354 () Bool)

(assert (=> b!5026928 m!6062354))

(assert (=> b!5026930 m!6062232))

(assert (=> b!5026933 m!6062208))

(assert (=> b!5026933 m!6062212))

(assert (=> b!5026933 m!6062208))

(assert (=> b!5026933 m!6062212))

(declare-fun m!6062356 () Bool)

(assert (=> b!5026933 m!6062356))

(assert (=> b!5026933 m!6062232))

(assert (=> d!1617936 m!6061758))

(assert (=> d!1617936 m!6061758))

(declare-fun m!6062358 () Bool)

(assert (=> d!1617936 m!6062358))

(assert (=> b!5026931 m!6061722))

(assert (=> d!1617664 d!1617936))

(declare-fun d!1617938 () Bool)

(declare-fun c!859971 () Bool)

(assert (=> d!1617938 (= c!859971 ((_ is Nil!58163) lt!2080370))))

(declare-fun e!3140297 () (InoxSet C!28084))

(assert (=> d!1617938 (= (content!10307 lt!2080370) e!3140297)))

(declare-fun b!5026935 () Bool)

(assert (=> b!5026935 (= e!3140297 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026936 () Bool)

(assert (=> b!5026936 (= e!3140297 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080370) true) (content!10307 (t!370687 lt!2080370))))))

(assert (= (and d!1617938 c!859971) b!5026935))

(assert (= (and d!1617938 (not c!859971)) b!5026936))

(declare-fun m!6062360 () Bool)

(assert (=> b!5026936 m!6062360))

(declare-fun m!6062362 () Bool)

(assert (=> b!5026936 m!6062362))

(assert (=> d!1617648 d!1617938))

(declare-fun d!1617940 () Bool)

(declare-fun c!859972 () Bool)

(assert (=> d!1617940 (= c!859972 ((_ is Nil!58163) (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))

(declare-fun e!3140298 () (InoxSet C!28084))

(assert (=> d!1617940 (= (content!10307 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) e!3140298)))

(declare-fun b!5026937 () Bool)

(assert (=> b!5026937 (= e!3140298 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026938 () Bool)

(assert (=> b!5026938 (= e!3140298 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) true) (content!10307 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1617940 c!859972) b!5026937))

(assert (= (and d!1617940 (not c!859972)) b!5026938))

(declare-fun m!6062364 () Bool)

(assert (=> b!5026938 m!6062364))

(assert (=> b!5026938 m!6062256))

(assert (=> d!1617648 d!1617940))

(declare-fun bs!1188112 () Bool)

(declare-fun d!1617942 () Bool)

(assert (= bs!1188112 (and d!1617942 d!1617886)))

(declare-fun lambda!249327 () Int)

(assert (=> bs!1188112 (not (= lambda!249327 lambda!249315))))

(declare-fun bs!1188113 () Bool)

(assert (= bs!1188113 (and d!1617942 d!1617890)))

(assert (=> bs!1188113 (not (= lambda!249327 lambda!249318))))

(declare-fun bs!1188114 () Bool)

(assert (= bs!1188114 (and d!1617942 d!1617588)))

(assert (=> bs!1188114 (not (= lambda!249327 lambda!249277))))

(declare-fun bs!1188115 () Bool)

(assert (= bs!1188115 (and d!1617942 d!1617916)))

(assert (=> bs!1188115 (not (= lambda!249327 lambda!249325))))

(declare-fun bs!1188116 () Bool)

(assert (= bs!1188116 (and d!1617942 b!5026257)))

(assert (=> bs!1188116 (not (= lambda!249327 lambda!249278))))

(declare-fun bs!1188117 () Bool)

(assert (= bs!1188117 (and d!1617942 d!1617668)))

(assert (=> bs!1188117 (= lambda!249327 lambda!249288)))

(declare-fun bs!1188118 () Bool)

(assert (= bs!1188118 (and d!1617942 b!5026258)))

(assert (=> bs!1188118 (not (= lambda!249327 lambda!249279))))

(assert (=> d!1617942 (= (nullableZipper!930 lt!2080379) (exists!1399 lt!2080379 lambda!249327))))

(declare-fun bs!1188119 () Bool)

(assert (= bs!1188119 d!1617942))

(declare-fun m!6062366 () Bool)

(assert (=> bs!1188119 m!6062366))

(assert (=> b!5026377 d!1617942))

(declare-fun d!1617944 () Bool)

(declare-fun lt!2080505 () Int)

(assert (=> d!1617944 (>= lt!2080505 0)))

(declare-fun e!3140299 () Int)

(assert (=> d!1617944 (= lt!2080505 e!3140299)))

(declare-fun c!859973 () Bool)

(assert (=> d!1617944 (= c!859973 ((_ is Nil!58163) (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))

(assert (=> d!1617944 (= (size!38707 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) lt!2080505)))

(declare-fun b!5026939 () Bool)

(assert (=> b!5026939 (= e!3140299 0)))

(declare-fun b!5026940 () Bool)

(assert (=> b!5026940 (= e!3140299 (+ 1 (size!38707 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1617944 c!859973) b!5026939))

(assert (= (and d!1617944 (not c!859973)) b!5026940))

(assert (=> b!5026940 m!6062252))

(assert (=> b!5026346 d!1617944))

(declare-fun bs!1188120 () Bool)

(declare-fun d!1617946 () Bool)

(assert (= bs!1188120 (and d!1617946 d!1617886)))

(declare-fun lambda!249328 () Int)

(assert (=> bs!1188120 (not (= lambda!249328 lambda!249315))))

(declare-fun bs!1188121 () Bool)

(assert (= bs!1188121 (and d!1617946 d!1617890)))

(assert (=> bs!1188121 (not (= lambda!249328 lambda!249318))))

(declare-fun bs!1188122 () Bool)

(assert (= bs!1188122 (and d!1617946 d!1617588)))

(assert (=> bs!1188122 (= lambda!249328 lambda!249277)))

(declare-fun bs!1188123 () Bool)

(assert (= bs!1188123 (and d!1617946 d!1617942)))

(assert (=> bs!1188123 (not (= lambda!249328 lambda!249327))))

(declare-fun bs!1188124 () Bool)

(assert (= bs!1188124 (and d!1617946 d!1617916)))

(assert (=> bs!1188124 (not (= lambda!249328 lambda!249325))))

(declare-fun bs!1188125 () Bool)

(assert (= bs!1188125 (and d!1617946 b!5026257)))

(assert (=> bs!1188125 (not (= lambda!249328 lambda!249278))))

(declare-fun bs!1188126 () Bool)

(assert (= bs!1188126 (and d!1617946 d!1617668)))

(assert (=> bs!1188126 (not (= lambda!249328 lambda!249288))))

(declare-fun bs!1188127 () Bool)

(assert (= bs!1188127 (and d!1617946 b!5026258)))

(assert (=> bs!1188127 (not (= lambda!249328 lambda!249279))))

(declare-fun bs!1188128 () Bool)

(declare-fun b!5026941 () Bool)

(assert (= bs!1188128 (and b!5026941 d!1617886)))

(declare-fun lambda!249329 () Int)

(assert (=> bs!1188128 (not (= lambda!249329 lambda!249315))))

(declare-fun bs!1188129 () Bool)

(assert (= bs!1188129 (and b!5026941 d!1617890)))

(assert (=> bs!1188129 (not (= lambda!249329 lambda!249318))))

(declare-fun bs!1188130 () Bool)

(assert (= bs!1188130 (and b!5026941 d!1617588)))

(assert (=> bs!1188130 (not (= lambda!249329 lambda!249277))))

(declare-fun bs!1188131 () Bool)

(assert (= bs!1188131 (and b!5026941 d!1617942)))

(assert (=> bs!1188131 (not (= lambda!249329 lambda!249327))))

(declare-fun bs!1188132 () Bool)

(assert (= bs!1188132 (and b!5026941 d!1617916)))

(assert (=> bs!1188132 (= lambda!249329 lambda!249325)))

(declare-fun bs!1188133 () Bool)

(assert (= bs!1188133 (and b!5026941 b!5026257)))

(assert (=> bs!1188133 (= lambda!249329 lambda!249278)))

(declare-fun bs!1188134 () Bool)

(assert (= bs!1188134 (and b!5026941 d!1617946)))

(assert (=> bs!1188134 (not (= lambda!249329 lambda!249328))))

(declare-fun bs!1188135 () Bool)

(assert (= bs!1188135 (and b!5026941 d!1617668)))

(assert (=> bs!1188135 (not (= lambda!249329 lambda!249288))))

(declare-fun bs!1188136 () Bool)

(assert (= bs!1188136 (and b!5026941 b!5026258)))

(assert (=> bs!1188136 (= lambda!249329 lambda!249279)))

(declare-fun bs!1188137 () Bool)

(declare-fun b!5026942 () Bool)

(assert (= bs!1188137 (and b!5026942 b!5026941)))

(declare-fun lambda!249330 () Int)

(assert (=> bs!1188137 (= lambda!249330 lambda!249329)))

(declare-fun bs!1188138 () Bool)

(assert (= bs!1188138 (and b!5026942 d!1617886)))

(assert (=> bs!1188138 (not (= lambda!249330 lambda!249315))))

(declare-fun bs!1188139 () Bool)

(assert (= bs!1188139 (and b!5026942 d!1617890)))

(assert (=> bs!1188139 (not (= lambda!249330 lambda!249318))))

(declare-fun bs!1188140 () Bool)

(assert (= bs!1188140 (and b!5026942 d!1617588)))

(assert (=> bs!1188140 (not (= lambda!249330 lambda!249277))))

(declare-fun bs!1188141 () Bool)

(assert (= bs!1188141 (and b!5026942 d!1617942)))

(assert (=> bs!1188141 (not (= lambda!249330 lambda!249327))))

(declare-fun bs!1188142 () Bool)

(assert (= bs!1188142 (and b!5026942 d!1617916)))

(assert (=> bs!1188142 (= lambda!249330 lambda!249325)))

(declare-fun bs!1188143 () Bool)

(assert (= bs!1188143 (and b!5026942 b!5026257)))

(assert (=> bs!1188143 (= lambda!249330 lambda!249278)))

(declare-fun bs!1188144 () Bool)

(assert (= bs!1188144 (and b!5026942 d!1617946)))

(assert (=> bs!1188144 (not (= lambda!249330 lambda!249328))))

(declare-fun bs!1188145 () Bool)

(assert (= bs!1188145 (and b!5026942 d!1617668)))

(assert (=> bs!1188145 (not (= lambda!249330 lambda!249288))))

(declare-fun bs!1188146 () Bool)

(assert (= bs!1188146 (and b!5026942 b!5026258)))

(assert (=> bs!1188146 (= lambda!249330 lambda!249279)))

(declare-fun e!3140300 () Unit!149355)

(declare-fun Unit!149363 () Unit!149355)

(assert (=> b!5026941 (= e!3140300 Unit!149363)))

(declare-fun lt!2080511 () List!58289)

(declare-fun call!350790 () List!58289)

(assert (=> b!5026941 (= lt!2080511 call!350790)))

(declare-fun lt!2080508 () Unit!149355)

(assert (=> b!5026941 (= lt!2080508 (lemmaNotForallThenExists!273 lt!2080511 lambda!249328))))

(declare-fun call!350791 () Bool)

(assert (=> b!5026941 call!350791))

(declare-fun lt!2080510 () Unit!149355)

(assert (=> b!5026941 (= lt!2080510 lt!2080508)))

(declare-fun bm!350785 () Bool)

(assert (=> bm!350785 (= call!350790 (toList!8124 lt!2080262))))

(declare-fun bm!350786 () Bool)

(declare-fun lt!2080512 () List!58289)

(declare-fun c!859974 () Bool)

(assert (=> bm!350786 (= call!350791 (exists!1398 (ite c!859974 lt!2080511 lt!2080512) (ite c!859974 lambda!249329 lambda!249330)))))

(declare-fun Unit!149364 () Unit!149355)

(assert (=> b!5026942 (= e!3140300 Unit!149364)))

(assert (=> b!5026942 (= lt!2080512 call!350790)))

(declare-fun lt!2080509 () Unit!149355)

(assert (=> b!5026942 (= lt!2080509 (lemmaForallThenNotExists!256 lt!2080512 lambda!249328))))

(assert (=> b!5026942 (not call!350791)))

(declare-fun lt!2080507 () Unit!149355)

(assert (=> b!5026942 (= lt!2080507 lt!2080509)))

(declare-fun lt!2080506 () Bool)

(assert (=> d!1617946 (= lt!2080506 (isEmpty!31453 (getLanguageWitness!742 lt!2080262)))))

(assert (=> d!1617946 (= lt!2080506 (forall!13430 lt!2080262 lambda!249328))))

(declare-fun lt!2080513 () Unit!149355)

(assert (=> d!1617946 (= lt!2080513 e!3140300)))

(assert (=> d!1617946 (= c!859974 (not (forall!13430 lt!2080262 lambda!249328)))))

(assert (=> d!1617946 (= (lostCauseZipper!931 lt!2080262) lt!2080506)))

(assert (= (and d!1617946 c!859974) b!5026941))

(assert (= (and d!1617946 (not c!859974)) b!5026942))

(assert (= (or b!5026941 b!5026942) bm!350785))

(assert (= (or b!5026941 b!5026942) bm!350786))

(declare-fun m!6062368 () Bool)

(assert (=> b!5026941 m!6062368))

(assert (=> bm!350785 m!6062268))

(declare-fun m!6062370 () Bool)

(assert (=> bm!350786 m!6062370))

(declare-fun m!6062372 () Bool)

(assert (=> d!1617946 m!6062372))

(assert (=> d!1617946 m!6062372))

(declare-fun m!6062374 () Bool)

(assert (=> d!1617946 m!6062374))

(declare-fun m!6062376 () Bool)

(assert (=> d!1617946 m!6062376))

(assert (=> d!1617946 m!6062376))

(declare-fun m!6062378 () Bool)

(assert (=> b!5026942 m!6062378))

(assert (=> b!5026375 d!1617946))

(declare-fun d!1617948 () Bool)

(declare-fun c!859975 () Bool)

(assert (=> d!1617948 (= c!859975 ((_ is Nil!58163) lt!2080356))))

(declare-fun e!3140301 () (InoxSet C!28084))

(assert (=> d!1617948 (= (content!10307 lt!2080356) e!3140301)))

(declare-fun b!5026943 () Bool)

(assert (=> b!5026943 (= e!3140301 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026944 () Bool)

(assert (=> b!5026944 (= e!3140301 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080356) true) (content!10307 (t!370687 lt!2080356))))))

(assert (= (and d!1617948 c!859975) b!5026943))

(assert (= (and d!1617948 (not c!859975)) b!5026944))

(declare-fun m!6062380 () Bool)

(assert (=> b!5026944 m!6062380))

(declare-fun m!6062382 () Bool)

(assert (=> b!5026944 m!6062382))

(assert (=> d!1617630 d!1617948))

(assert (=> d!1617630 d!1617922))

(declare-fun b!5026945 () Bool)

(declare-fun e!3140303 () List!58287)

(assert (=> b!5026945 (= e!3140303 Nil!58163)))

(declare-fun b!5026946 () Bool)

(declare-fun e!3140305 () Int)

(assert (=> b!5026946 (= e!3140305 (size!38707 (t!370687 lt!2080265)))))

(declare-fun b!5026947 () Bool)

(assert (=> b!5026947 (= e!3140303 (Cons!58163 (h!64611 (t!370687 lt!2080265)) (take!768 (t!370687 (t!370687 lt!2080265)) (- (- lt!2080267 1) 1))))))

(declare-fun b!5026948 () Bool)

(declare-fun e!3140304 () Int)

(assert (=> b!5026948 (= e!3140304 0)))

(declare-fun b!5026949 () Bool)

(assert (=> b!5026949 (= e!3140305 (- lt!2080267 1))))

(declare-fun d!1617950 () Bool)

(declare-fun e!3140302 () Bool)

(assert (=> d!1617950 e!3140302))

(declare-fun res!2142996 () Bool)

(assert (=> d!1617950 (=> (not res!2142996) (not e!3140302))))

(declare-fun lt!2080514 () List!58287)

(assert (=> d!1617950 (= res!2142996 (= ((_ map implies) (content!10307 lt!2080514) (content!10307 (t!370687 lt!2080265))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617950 (= lt!2080514 e!3140303)))

(declare-fun c!859977 () Bool)

(assert (=> d!1617950 (= c!859977 (or ((_ is Nil!58163) (t!370687 lt!2080265)) (<= (- lt!2080267 1) 0)))))

(assert (=> d!1617950 (= (take!768 (t!370687 lt!2080265) (- lt!2080267 1)) lt!2080514)))

(declare-fun b!5026950 () Bool)

(assert (=> b!5026950 (= e!3140304 e!3140305)))

(declare-fun c!859978 () Bool)

(assert (=> b!5026950 (= c!859978 (>= (- lt!2080267 1) (size!38707 (t!370687 lt!2080265))))))

(declare-fun b!5026951 () Bool)

(assert (=> b!5026951 (= e!3140302 (= (size!38707 lt!2080514) e!3140304))))

(declare-fun c!859976 () Bool)

(assert (=> b!5026951 (= c!859976 (<= (- lt!2080267 1) 0))))

(assert (= (and d!1617950 c!859977) b!5026945))

(assert (= (and d!1617950 (not c!859977)) b!5026947))

(assert (= (and d!1617950 res!2142996) b!5026951))

(assert (= (and b!5026951 c!859976) b!5026948))

(assert (= (and b!5026951 (not c!859976)) b!5026950))

(assert (= (and b!5026950 c!859978) b!5026946))

(assert (= (and b!5026950 (not c!859978)) b!5026949))

(declare-fun m!6062384 () Bool)

(assert (=> b!5026951 m!6062384))

(declare-fun m!6062386 () Bool)

(assert (=> b!5026947 m!6062386))

(assert (=> b!5026950 m!6062102))

(declare-fun m!6062388 () Bool)

(assert (=> d!1617950 m!6062388))

(assert (=> d!1617950 m!6062162))

(assert (=> b!5026946 m!6062102))

(assert (=> b!5026403 d!1617950))

(declare-fun d!1617952 () Bool)

(declare-fun choose!37199 ((InoxSet Context!6684) Int) (InoxSet Context!6684))

(assert (=> d!1617952 (= (flatMap!304 z!4747 lambda!249285) (choose!37199 z!4747 lambda!249285))))

(declare-fun bs!1188147 () Bool)

(assert (= bs!1188147 d!1617952))

(declare-fun m!6062390 () Bool)

(assert (=> bs!1188147 m!6062390))

(assert (=> d!1617662 d!1617952))

(declare-fun d!1617954 () Bool)

(declare-fun lt!2080515 () C!28084)

(assert (=> d!1617954 (contains!19576 (tail!9911 lt!2080264) lt!2080515)))

(declare-fun e!3140306 () C!28084)

(assert (=> d!1617954 (= lt!2080515 e!3140306)))

(declare-fun c!859979 () Bool)

(assert (=> d!1617954 (= c!859979 (= (- from!1228 1) 0))))

(declare-fun e!3140307 () Bool)

(assert (=> d!1617954 e!3140307))

(declare-fun res!2142997 () Bool)

(assert (=> d!1617954 (=> (not res!2142997) (not e!3140307))))

(assert (=> d!1617954 (= res!2142997 (<= 0 (- from!1228 1)))))

(assert (=> d!1617954 (= (apply!14158 (tail!9911 lt!2080264) (- from!1228 1)) lt!2080515)))

(declare-fun b!5026952 () Bool)

(assert (=> b!5026952 (= e!3140307 (< (- from!1228 1) (size!38707 (tail!9911 lt!2080264))))))

(declare-fun b!5026953 () Bool)

(assert (=> b!5026953 (= e!3140306 (head!10778 (tail!9911 lt!2080264)))))

(declare-fun b!5026954 () Bool)

(assert (=> b!5026954 (= e!3140306 (apply!14158 (tail!9911 (tail!9911 lt!2080264)) (- (- from!1228 1) 1)))))

(assert (= (and d!1617954 res!2142997) b!5026952))

(assert (= (and d!1617954 c!859979) b!5026953))

(assert (= (and d!1617954 (not c!859979)) b!5026954))

(assert (=> d!1617954 m!6061698))

(declare-fun m!6062392 () Bool)

(assert (=> d!1617954 m!6062392))

(assert (=> b!5026952 m!6061698))

(declare-fun m!6062394 () Bool)

(assert (=> b!5026952 m!6062394))

(assert (=> b!5026953 m!6061698))

(declare-fun m!6062396 () Bool)

(assert (=> b!5026953 m!6062396))

(assert (=> b!5026954 m!6061698))

(declare-fun m!6062398 () Bool)

(assert (=> b!5026954 m!6062398))

(assert (=> b!5026954 m!6062398))

(declare-fun m!6062400 () Bool)

(assert (=> b!5026954 m!6062400))

(assert (=> b!5026315 d!1617954))

(declare-fun d!1617956 () Bool)

(assert (=> d!1617956 (= (tail!9911 lt!2080264) (t!370687 lt!2080264))))

(assert (=> b!5026315 d!1617956))

(declare-fun d!1617958 () Bool)

(declare-fun lt!2080516 () Int)

(assert (=> d!1617958 (>= lt!2080516 0)))

(declare-fun e!3140308 () Int)

(assert (=> d!1617958 (= lt!2080516 e!3140308)))

(declare-fun c!859980 () Bool)

(assert (=> d!1617958 (= c!859980 ((_ is Nil!58163) lt!2080356))))

(assert (=> d!1617958 (= (size!38707 lt!2080356) lt!2080516)))

(declare-fun b!5026955 () Bool)

(assert (=> b!5026955 (= e!3140308 0)))

(declare-fun b!5026956 () Bool)

(assert (=> b!5026956 (= e!3140308 (+ 1 (size!38707 (t!370687 lt!2080356))))))

(assert (= (and d!1617958 c!859980) b!5026955))

(assert (= (and d!1617958 (not c!859980)) b!5026956))

(declare-fun m!6062402 () Bool)

(assert (=> b!5026956 m!6062402))

(assert (=> b!5026283 d!1617958))

(declare-fun d!1617960 () Bool)

(declare-fun lt!2080517 () Int)

(assert (=> d!1617960 (>= lt!2080517 0)))

(declare-fun e!3140309 () Int)

(assert (=> d!1617960 (= lt!2080517 e!3140309)))

(declare-fun c!859981 () Bool)

(assert (=> d!1617960 (= c!859981 ((_ is Nil!58163) lt!2080388))))

(assert (=> d!1617960 (= (size!38707 lt!2080388) lt!2080517)))

(declare-fun b!5026957 () Bool)

(assert (=> b!5026957 (= e!3140309 0)))

(declare-fun b!5026958 () Bool)

(assert (=> b!5026958 (= e!3140309 (+ 1 (size!38707 (t!370687 lt!2080388))))))

(assert (= (and d!1617960 c!859981) b!5026957))

(assert (= (and d!1617960 (not c!859981)) b!5026958))

(declare-fun m!6062404 () Bool)

(assert (=> b!5026958 m!6062404))

(assert (=> b!5026407 d!1617960))

(assert (=> d!1617640 d!1617898))

(assert (=> d!1617640 d!1617652))

(declare-fun d!1617962 () Bool)

(declare-fun lt!2080520 () Int)

(assert (=> d!1617962 (= lt!2080520 (size!38707 (list!18780 (c!859646 totalInput!1141))))))

(assert (=> d!1617962 (= lt!2080520 (ite ((_ is Empty!15436) (c!859646 totalInput!1141)) 0 (ite ((_ is Leaf!25608) (c!859646 totalInput!1141)) (csize!31103 (c!859646 totalInput!1141)) (csize!31102 (c!859646 totalInput!1141)))))))

(assert (=> d!1617962 (= (size!38708 (c!859646 totalInput!1141)) lt!2080520)))

(declare-fun bs!1188148 () Bool)

(assert (= bs!1188148 d!1617962))

(assert (=> bs!1188148 m!6061758))

(assert (=> bs!1188148 m!6061758))

(declare-fun m!6062406 () Bool)

(assert (=> bs!1188148 m!6062406))

(assert (=> d!1617640 d!1617962))

(declare-fun d!1617964 () Bool)

(declare-fun lt!2080521 () Int)

(assert (=> d!1617964 (>= lt!2080521 0)))

(declare-fun e!3140310 () Int)

(assert (=> d!1617964 (= lt!2080521 e!3140310)))

(declare-fun c!859982 () Bool)

(assert (=> d!1617964 (= c!859982 ((_ is Nil!58163) lt!2080359))))

(assert (=> d!1617964 (= (size!38707 lt!2080359) lt!2080521)))

(declare-fun b!5026959 () Bool)

(assert (=> b!5026959 (= e!3140310 0)))

(declare-fun b!5026960 () Bool)

(assert (=> b!5026960 (= e!3140310 (+ 1 (size!38707 (t!370687 lt!2080359))))))

(assert (= (and d!1617964 c!859982) b!5026959))

(assert (= (and d!1617964 (not c!859982)) b!5026960))

(declare-fun m!6062408 () Bool)

(assert (=> b!5026960 m!6062408))

(assert (=> b!5026306 d!1617964))

(assert (=> b!5026386 d!1617650))

(declare-fun b!5026961 () Bool)

(declare-fun e!3140312 () List!58287)

(assert (=> b!5026961 (= e!3140312 Nil!58163)))

(declare-fun b!5026962 () Bool)

(declare-fun e!3140314 () Int)

(assert (=> b!5026962 (= e!3140314 (size!38707 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5026963 () Bool)

(assert (=> b!5026963 (= e!3140312 (Cons!58163 (h!64611 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (take!768 (t!370687 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (- (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) 1))))))

(declare-fun b!5026964 () Bool)

(declare-fun e!3140313 () Int)

(assert (=> b!5026964 (= e!3140313 0)))

(declare-fun b!5026965 () Bool)

(assert (=> b!5026965 (= e!3140314 (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)))))

(declare-fun d!1617966 () Bool)

(declare-fun e!3140311 () Bool)

(assert (=> d!1617966 e!3140311))

(declare-fun res!2142998 () Bool)

(assert (=> d!1617966 (=> (not res!2142998) (not e!3140311))))

(declare-fun lt!2080522 () List!58287)

(assert (=> d!1617966 (= res!2142998 (= ((_ map implies) (content!10307 lt!2080522) (content!10307 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617966 (= lt!2080522 e!3140312)))

(declare-fun c!859984 () Bool)

(assert (=> d!1617966 (= c!859984 (or ((_ is Nil!58163) (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228))) (<= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) 0)))))

(assert (=> d!1617966 (= (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141))) lt!2080522)))

(declare-fun b!5026966 () Bool)

(assert (=> b!5026966 (= e!3140313 e!3140314)))

(declare-fun c!859985 () Bool)

(assert (=> b!5026966 (= c!859985 (>= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) (size!38707 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5026967 () Bool)

(assert (=> b!5026967 (= e!3140311 (= (size!38707 lt!2080522) e!3140313))))

(declare-fun c!859983 () Bool)

(assert (=> b!5026967 (= c!859983 (<= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) 0))))

(assert (= (and d!1617966 c!859984) b!5026961))

(assert (= (and d!1617966 (not c!859984)) b!5026963))

(assert (= (and d!1617966 res!2142998) b!5026967))

(assert (= (and b!5026967 c!859983) b!5026964))

(assert (= (and b!5026967 (not c!859983)) b!5026966))

(assert (= (and b!5026966 c!859985) b!5026962))

(assert (= (and b!5026966 (not c!859985)) b!5026965))

(declare-fun m!6062410 () Bool)

(assert (=> b!5026967 m!6062410))

(declare-fun m!6062412 () Bool)

(assert (=> b!5026963 m!6062412))

(assert (=> b!5026966 m!6061468))

(assert (=> b!5026966 m!6061744))

(declare-fun m!6062414 () Bool)

(assert (=> d!1617966 m!6062414))

(assert (=> d!1617966 m!6061468))

(assert (=> d!1617966 m!6061748))

(assert (=> b!5026962 m!6061468))

(assert (=> b!5026962 m!6061744))

(assert (=> b!5026386 d!1617966))

(declare-fun b!5026968 () Bool)

(declare-fun e!3140317 () Int)

(assert (=> b!5026968 (= e!3140317 1)))

(declare-fun b!5026969 () Bool)

(declare-fun e!3140319 () Int)

(assert (=> b!5026969 (= e!3140319 0)))

(declare-fun b!5026970 () Bool)

(declare-fun e!3140318 () Bool)

(assert (=> b!5026970 (= e!3140318 (lostCauseZipper!931 lt!2080262))))

(declare-fun b!5026971 () Bool)

(declare-fun e!3140316 () Bool)

(assert (=> b!5026971 (= e!3140316 (<= (+ 1 from!1228) (size!38704 totalInput!1141)))))

(declare-fun d!1617968 () Bool)

(declare-fun lt!2080525 () Int)

(assert (=> d!1617968 (and (>= lt!2080525 0) (<= lt!2080525 (- (size!38704 totalInput!1141) (+ 1 from!1228))))))

(assert (=> d!1617968 (= lt!2080525 e!3140319)))

(declare-fun c!859986 () Bool)

(assert (=> d!1617968 (= c!859986 e!3140318)))

(declare-fun res!2143000 () Bool)

(assert (=> d!1617968 (=> res!2143000 e!3140318)))

(assert (=> d!1617968 (= res!2143000 (= (+ 1 from!1228) (size!38704 totalInput!1141)))))

(assert (=> d!1617968 e!3140316))

(declare-fun res!2142999 () Bool)

(assert (=> d!1617968 (=> (not res!2142999) (not e!3140316))))

(assert (=> d!1617968 (= res!2142999 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617968 (= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) lt!2080525)))

(declare-fun b!5026972 () Bool)

(declare-fun c!859987 () Bool)

(declare-fun lt!2080524 () (InoxSet Context!6684))

(assert (=> b!5026972 (= c!859987 (nullableZipper!930 lt!2080524))))

(declare-fun e!3140315 () Int)

(assert (=> b!5026972 (= e!3140315 e!3140317)))

(declare-fun b!5026973 () Bool)

(assert (=> b!5026973 (= e!3140317 0)))

(declare-fun b!5026974 () Bool)

(declare-fun lt!2080523 () Int)

(assert (=> b!5026974 (= e!3140315 (+ 1 lt!2080523))))

(declare-fun b!5026975 () Bool)

(assert (=> b!5026975 (= e!3140319 e!3140315)))

(assert (=> b!5026975 (= lt!2080524 (derivationStepZipper!713 lt!2080262 (apply!14159 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5026975 (= lt!2080523 (findLongestMatchInnerZipperFastV2!231 lt!2080524 (+ 1 from!1228 1) totalInput!1141 (size!38704 totalInput!1141)))))

(declare-fun c!859988 () Bool)

(assert (=> b!5026975 (= c!859988 (> lt!2080523 0))))

(assert (= (and d!1617968 res!2142999) b!5026971))

(assert (= (and d!1617968 (not res!2143000)) b!5026970))

(assert (= (and d!1617968 c!859986) b!5026969))

(assert (= (and d!1617968 (not c!859986)) b!5026975))

(assert (= (and b!5026975 c!859988) b!5026974))

(assert (= (and b!5026975 (not c!859988)) b!5026972))

(assert (= (and b!5026972 c!859987) b!5026968))

(assert (= (and b!5026972 (not c!859987)) b!5026973))

(assert (=> b!5026970 m!6061762))

(assert (=> b!5026971 m!6061486))

(declare-fun m!6062416 () Bool)

(assert (=> b!5026972 m!6062416))

(assert (=> b!5026975 m!6061766))

(assert (=> b!5026975 m!6061766))

(assert (=> b!5026975 m!6061768))

(assert (=> b!5026975 m!6061486))

(declare-fun m!6062418 () Bool)

(assert (=> b!5026975 m!6062418))

(assert (=> b!5026386 d!1617968))

(assert (=> b!5026386 d!1617652))

(declare-fun d!1617970 () Bool)

(declare-fun c!859989 () Bool)

(assert (=> d!1617970 (= c!859989 (isEmpty!31454 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)))))))

(declare-fun e!3140320 () Bool)

(assert (=> d!1617970 (= (matchZipper!671 lt!2080262 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)))) e!3140320)))

(declare-fun b!5026976 () Bool)

(assert (=> b!5026976 (= e!3140320 (nullableZipper!930 lt!2080262))))

(declare-fun b!5026977 () Bool)

(assert (=> b!5026977 (= e!3140320 (matchZipper!671 (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141))))) (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141))))))))

(assert (= (and d!1617970 c!859989) b!5026976))

(assert (= (and d!1617970 (not c!859989)) b!5026977))

(assert (=> d!1617970 m!6061776))

(declare-fun m!6062420 () Bool)

(assert (=> d!1617970 m!6062420))

(assert (=> b!5026976 m!6061460))

(assert (=> b!5026977 m!6061776))

(declare-fun m!6062422 () Bool)

(assert (=> b!5026977 m!6062422))

(assert (=> b!5026977 m!6062422))

(declare-fun m!6062424 () Bool)

(assert (=> b!5026977 m!6062424))

(assert (=> b!5026977 m!6061776))

(declare-fun m!6062426 () Bool)

(assert (=> b!5026977 m!6062426))

(assert (=> b!5026977 m!6062424))

(assert (=> b!5026977 m!6062426))

(declare-fun m!6062428 () Bool)

(assert (=> b!5026977 m!6062428))

(assert (=> b!5026386 d!1617970))

(assert (=> b!5026386 d!1617640))

(declare-fun bs!1188149 () Bool)

(declare-fun d!1617972 () Bool)

(assert (= bs!1188149 (and d!1617972 b!5026941)))

(declare-fun lambda!249333 () Int)

(assert (=> bs!1188149 (not (= lambda!249333 lambda!249329))))

(declare-fun bs!1188150 () Bool)

(assert (= bs!1188150 (and d!1617972 d!1617886)))

(assert (=> bs!1188150 (= (= lambda!249277 (ite c!859729 lambda!249278 lambda!249279)) (= lambda!249333 lambda!249315))))

(declare-fun bs!1188151 () Bool)

(assert (= bs!1188151 (and d!1617972 d!1617890)))

(assert (=> bs!1188151 (= lambda!249333 lambda!249318)))

(declare-fun bs!1188152 () Bool)

(assert (= bs!1188152 (and d!1617972 d!1617588)))

(assert (=> bs!1188152 (not (= lambda!249333 lambda!249277))))

(declare-fun bs!1188153 () Bool)

(assert (= bs!1188153 (and d!1617972 d!1617942)))

(assert (=> bs!1188153 (not (= lambda!249333 lambda!249327))))

(declare-fun bs!1188154 () Bool)

(assert (= bs!1188154 (and d!1617972 d!1617916)))

(assert (=> bs!1188154 (not (= lambda!249333 lambda!249325))))

(declare-fun bs!1188155 () Bool)

(assert (= bs!1188155 (and d!1617972 b!5026257)))

(assert (=> bs!1188155 (not (= lambda!249333 lambda!249278))))

(declare-fun bs!1188156 () Bool)

(assert (= bs!1188156 (and d!1617972 d!1617946)))

(assert (=> bs!1188156 (not (= lambda!249333 lambda!249328))))

(declare-fun bs!1188157 () Bool)

(assert (= bs!1188157 (and d!1617972 d!1617668)))

(assert (=> bs!1188157 (not (= lambda!249333 lambda!249288))))

(declare-fun bs!1188158 () Bool)

(assert (= bs!1188158 (and d!1617972 b!5026942)))

(assert (=> bs!1188158 (not (= lambda!249333 lambda!249330))))

(declare-fun bs!1188159 () Bool)

(assert (= bs!1188159 (and d!1617972 b!5026258)))

(assert (=> bs!1188159 (not (= lambda!249333 lambda!249279))))

(assert (=> d!1617972 true))

(assert (=> d!1617972 (< (dynLambda!23538 order!26713 lambda!249277) (dynLambda!23538 order!26713 lambda!249333))))

(assert (=> d!1617972 (exists!1398 lt!2080351 lambda!249333)))

(declare-fun lt!2080528 () Unit!149355)

(declare-fun choose!37200 (List!58289 Int) Unit!149355)

(assert (=> d!1617972 (= lt!2080528 (choose!37200 lt!2080351 lambda!249277))))

(assert (=> d!1617972 (not (forall!13433 lt!2080351 lambda!249277))))

(assert (=> d!1617972 (= (lemmaNotForallThenExists!273 lt!2080351 lambda!249277) lt!2080528)))

(declare-fun bs!1188160 () Bool)

(assert (= bs!1188160 d!1617972))

(declare-fun m!6062430 () Bool)

(assert (=> bs!1188160 m!6062430))

(declare-fun m!6062432 () Bool)

(assert (=> bs!1188160 m!6062432))

(declare-fun m!6062434 () Bool)

(assert (=> bs!1188160 m!6062434))

(assert (=> b!5026257 d!1617972))

(declare-fun d!1617974 () Bool)

(declare-fun c!859990 () Bool)

(assert (=> d!1617974 (= c!859990 ((_ is Nil!58163) lt!2080366))))

(declare-fun e!3140323 () (InoxSet C!28084))

(assert (=> d!1617974 (= (content!10307 lt!2080366) e!3140323)))

(declare-fun b!5026978 () Bool)

(assert (=> b!5026978 (= e!3140323 ((as const (Array C!28084 Bool)) false))))

(declare-fun b!5026979 () Bool)

(assert (=> b!5026979 (= e!3140323 ((_ map or) (store ((as const (Array C!28084 Bool)) false) (h!64611 lt!2080366) true) (content!10307 (t!370687 lt!2080366))))))

(assert (= (and d!1617974 c!859990) b!5026978))

(assert (= (and d!1617974 (not c!859990)) b!5026979))

(declare-fun m!6062436 () Bool)

(assert (=> b!5026979 m!6062436))

(declare-fun m!6062438 () Bool)

(assert (=> b!5026979 m!6062438))

(assert (=> d!1617638 d!1617974))

(assert (=> d!1617638 d!1617854))

(assert (=> d!1617658 d!1617968))

(assert (=> d!1617658 d!1617640))

(declare-fun d!1617976 () Bool)

(declare-fun e!3140326 () Bool)

(assert (=> d!1617976 e!3140326))

(declare-fun res!2143003 () Bool)

(assert (=> d!1617976 (=> res!2143003 e!3140326)))

(assert (=> d!1617976 (= res!2143003 (= (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)) 0))))

(assert (=> d!1617976 true))

(declare-fun _$81!123 () Unit!149355)

(assert (=> d!1617976 (= (choose!37189 lt!2080262 (+ 1 from!1228) totalInput!1141) _$81!123)))

(declare-fun b!5026982 () Bool)

(assert (=> b!5026982 (= e!3140326 (matchZipper!671 lt!2080262 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!231 lt!2080262 (+ 1 from!1228) totalInput!1141 (size!38704 totalInput!1141)))))))

(assert (= (and d!1617976 (not res!2143003)) b!5026982))

(assert (=> d!1617976 m!6061486))

(assert (=> d!1617976 m!6061486))

(assert (=> d!1617976 m!6061772))

(assert (=> b!5026982 m!6061486))

(assert (=> b!5026982 m!6061772))

(assert (=> b!5026982 m!6061776))

(assert (=> b!5026982 m!6061778))

(assert (=> b!5026982 m!6061468))

(assert (=> b!5026982 m!6061772))

(assert (=> b!5026982 m!6061776))

(assert (=> b!5026982 m!6061486))

(assert (=> b!5026982 m!6061466))

(assert (=> b!5026982 m!6061466))

(assert (=> b!5026982 m!6061468))

(assert (=> d!1617658 d!1617976))

(declare-fun c!859991 () Bool)

(declare-fun d!1617978 () Bool)

(assert (=> d!1617978 (= c!859991 (isEmpty!31454 (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))))))

(declare-fun e!3140327 () Bool)

(assert (=> d!1617978 (= (matchZipper!671 (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))) (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))) e!3140327)))

(declare-fun b!5026983 () Bool)

(assert (=> b!5026983 (= e!3140327 (nullableZipper!930 (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))))

(declare-fun b!5026984 () Bool)

(assert (=> b!5026984 (= e!3140327 (matchZipper!671 (derivationStepZipper!713 (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))) (head!10778 (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))) (tail!9911 (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))))

(assert (= (and d!1617978 c!859991) b!5026983))

(assert (= (and d!1617978 (not c!859991)) b!5026984))

(assert (=> d!1617978 m!6061736))

(declare-fun m!6062440 () Bool)

(assert (=> d!1617978 m!6062440))

(assert (=> b!5026983 m!6061734))

(declare-fun m!6062442 () Bool)

(assert (=> b!5026983 m!6062442))

(assert (=> b!5026984 m!6061736))

(declare-fun m!6062444 () Bool)

(assert (=> b!5026984 m!6062444))

(assert (=> b!5026984 m!6061734))

(assert (=> b!5026984 m!6062444))

(declare-fun m!6062446 () Bool)

(assert (=> b!5026984 m!6062446))

(assert (=> b!5026984 m!6061736))

(declare-fun m!6062448 () Bool)

(assert (=> b!5026984 m!6062448))

(assert (=> b!5026984 m!6062446))

(assert (=> b!5026984 m!6062448))

(declare-fun m!6062450 () Bool)

(assert (=> b!5026984 m!6062450))

(assert (=> b!5026340 d!1617978))

(declare-fun bs!1188161 () Bool)

(declare-fun d!1617980 () Bool)

(assert (= bs!1188161 (and d!1617980 d!1617662)))

(declare-fun lambda!249334 () Int)

(assert (=> bs!1188161 (= (= (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) lt!2080266) (= lambda!249334 lambda!249285))))

(declare-fun bs!1188162 () Bool)

(assert (= bs!1188162 (and d!1617980 d!1617838)))

(assert (=> bs!1188162 (= (= (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) (apply!14159 totalInput!1141 (+ 1 from!1228))) (= lambda!249334 lambda!249307))))

(assert (=> d!1617980 true))

(assert (=> d!1617980 (= (derivationStepZipper!713 lt!2080262 (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267))) (flatMap!304 lt!2080262 lambda!249334))))

(declare-fun bs!1188163 () Bool)

(assert (= bs!1188163 d!1617980))

(declare-fun m!6062452 () Bool)

(assert (=> bs!1188163 m!6062452))

(assert (=> b!5026340 d!1617980))

(declare-fun d!1617982 () Bool)

(assert (=> d!1617982 (= (head!10778 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) (h!64611 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))

(assert (=> b!5026340 d!1617982))

(declare-fun d!1617984 () Bool)

(assert (=> d!1617984 (= (tail!9911 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)) (t!370687 (take!768 (drop!2568 (list!18778 totalInput!1141) (+ 1 from!1228)) lt!2080267)))))

(assert (=> b!5026340 d!1617984))

(assert (=> b!5026071 d!1617642))

(assert (=> b!5026313 d!1617836))

(assert (=> bm!350766 d!1617836))

(declare-fun b!5026985 () Bool)

(declare-fun e!3140329 () List!58287)

(assert (=> b!5026985 (= e!3140329 Nil!58163)))

(declare-fun b!5026986 () Bool)

(declare-fun e!3140331 () Int)

(assert (=> b!5026986 (= e!3140331 (size!38707 (t!370687 (drop!2568 lt!2080264 from!1228))))))

(declare-fun b!5026987 () Bool)

(assert (=> b!5026987 (= e!3140329 (Cons!58163 (h!64611 (t!370687 (drop!2568 lt!2080264 from!1228))) (take!768 (t!370687 (t!370687 (drop!2568 lt!2080264 from!1228))) (- (- 1 1) 1))))))

(declare-fun b!5026988 () Bool)

(declare-fun e!3140330 () Int)

(assert (=> b!5026988 (= e!3140330 0)))

(declare-fun b!5026989 () Bool)

(assert (=> b!5026989 (= e!3140331 (- 1 1))))

(declare-fun d!1617986 () Bool)

(declare-fun e!3140328 () Bool)

(assert (=> d!1617986 e!3140328))

(declare-fun res!2143004 () Bool)

(assert (=> d!1617986 (=> (not res!2143004) (not e!3140328))))

(declare-fun lt!2080529 () List!58287)

(assert (=> d!1617986 (= res!2143004 (= ((_ map implies) (content!10307 lt!2080529) (content!10307 (t!370687 (drop!2568 lt!2080264 from!1228)))) ((as const (InoxSet C!28084)) true)))))

(assert (=> d!1617986 (= lt!2080529 e!3140329)))

(declare-fun c!859993 () Bool)

(assert (=> d!1617986 (= c!859993 (or ((_ is Nil!58163) (t!370687 (drop!2568 lt!2080264 from!1228))) (<= (- 1 1) 0)))))

(assert (=> d!1617986 (= (take!768 (t!370687 (drop!2568 lt!2080264 from!1228)) (- 1 1)) lt!2080529)))

(declare-fun b!5026990 () Bool)

(assert (=> b!5026990 (= e!3140330 e!3140331)))

(declare-fun c!859994 () Bool)

(assert (=> b!5026990 (= c!859994 (>= (- 1 1) (size!38707 (t!370687 (drop!2568 lt!2080264 from!1228)))))))

(declare-fun b!5026991 () Bool)

(assert (=> b!5026991 (= e!3140328 (= (size!38707 lt!2080529) e!3140330))))

(declare-fun c!859992 () Bool)

(assert (=> b!5026991 (= c!859992 (<= (- 1 1) 0))))

(assert (= (and d!1617986 c!859993) b!5026985))

(assert (= (and d!1617986 (not c!859993)) b!5026987))

(assert (= (and d!1617986 res!2143004) b!5026991))

(assert (= (and b!5026991 c!859992) b!5026988))

(assert (= (and b!5026991 (not c!859992)) b!5026990))

(assert (= (and b!5026990 c!859994) b!5026986))

(assert (= (and b!5026990 (not c!859994)) b!5026989))

(declare-fun m!6062454 () Bool)

(assert (=> b!5026991 m!6062454))

(declare-fun m!6062456 () Bool)

(assert (=> b!5026987 m!6062456))

(assert (=> b!5026990 m!6062224))

(declare-fun m!6062458 () Bool)

(assert (=> d!1617986 m!6062458))

(assert (=> d!1617986 m!6062302))

(assert (=> b!5026986 m!6062224))

(assert (=> b!5026302 d!1617986))

(declare-fun d!1617988 () Bool)

(declare-fun e!3140334 () Bool)

(assert (=> d!1617988 e!3140334))

(declare-fun res!2143007 () Bool)

(assert (=> d!1617988 (=> (not res!2143007) (not e!3140334))))

(declare-fun lt!2080532 () List!58289)

(declare-fun noDuplicate!1049 (List!58289) Bool)

(assert (=> d!1617988 (= res!2143007 (noDuplicate!1049 lt!2080532))))

(declare-fun choose!37201 ((InoxSet Context!6684)) List!58289)

(assert (=> d!1617988 (= lt!2080532 (choose!37201 z!4747))))

(assert (=> d!1617988 (= (toList!8124 z!4747) lt!2080532)))

(declare-fun b!5026994 () Bool)

(declare-fun content!10309 (List!58289) (InoxSet Context!6684))

(assert (=> b!5026994 (= e!3140334 (= (content!10309 lt!2080532) z!4747))))

(assert (= (and d!1617988 res!2143007) b!5026994))

(declare-fun m!6062460 () Bool)

(assert (=> d!1617988 m!6062460))

(declare-fun m!6062462 () Bool)

(assert (=> d!1617988 m!6062462))

(declare-fun m!6062464 () Bool)

(assert (=> b!5026994 m!6062464))

(assert (=> bm!350762 d!1617988))

(assert (=> b!5026342 d!1617944))

(declare-fun b!5026995 () Bool)

(declare-fun e!3140335 () Bool)

(declare-fun tp!1408859 () Bool)

(declare-fun tp!1408860 () Bool)

(assert (=> b!5026995 (= e!3140335 (and tp!1408859 tp!1408860))))

(assert (=> b!5026425 (= tp!1408822 e!3140335)))

(assert (= (and b!5026425 ((_ is Cons!58162) (exprs!3842 setElem!28900))) b!5026995))

(declare-fun b!5027006 () Bool)

(declare-fun e!3140338 () Bool)

(declare-fun tp_is_empty!36671 () Bool)

(assert (=> b!5027006 (= e!3140338 tp_is_empty!36671)))

(declare-fun b!5027009 () Bool)

(declare-fun tp!1408875 () Bool)

(declare-fun tp!1408872 () Bool)

(assert (=> b!5027009 (= e!3140338 (and tp!1408875 tp!1408872))))

(declare-fun b!5027008 () Bool)

(declare-fun tp!1408874 () Bool)

(assert (=> b!5027008 (= e!3140338 tp!1408874)))

(assert (=> b!5026430 (= tp!1408827 e!3140338)))

(declare-fun b!5027007 () Bool)

(declare-fun tp!1408871 () Bool)

(declare-fun tp!1408873 () Bool)

(assert (=> b!5027007 (= e!3140338 (and tp!1408871 tp!1408873))))

(assert (= (and b!5026430 ((_ is ElementMatch!13917) (h!64610 (exprs!3842 setElem!28894)))) b!5027006))

(assert (= (and b!5026430 ((_ is Concat!22710) (h!64610 (exprs!3842 setElem!28894)))) b!5027007))

(assert (= (and b!5026430 ((_ is Star!13917) (h!64610 (exprs!3842 setElem!28894)))) b!5027008))

(assert (= (and b!5026430 ((_ is Union!13917) (h!64610 (exprs!3842 setElem!28894)))) b!5027009))

(declare-fun b!5027010 () Bool)

(declare-fun e!3140339 () Bool)

(declare-fun tp!1408876 () Bool)

(declare-fun tp!1408877 () Bool)

(assert (=> b!5027010 (= e!3140339 (and tp!1408876 tp!1408877))))

(assert (=> b!5026430 (= tp!1408828 e!3140339)))

(assert (= (and b!5026430 ((_ is Cons!58162) (t!370686 (exprs!3842 setElem!28894)))) b!5027010))

(declare-fun e!3140341 () Bool)

(declare-fun tp!1408879 () Bool)

(declare-fun tp!1408880 () Bool)

(declare-fun b!5027011 () Bool)

(assert (=> b!5027011 (= e!3140341 (and (inv!76694 (left!42541 (left!42541 (c!859646 totalInput!1141)))) tp!1408879 (inv!76694 (right!42871 (left!42541 (c!859646 totalInput!1141)))) tp!1408880))))

(declare-fun b!5027013 () Bool)

(declare-fun e!3140340 () Bool)

(declare-fun tp!1408878 () Bool)

(assert (=> b!5027013 (= e!3140340 tp!1408878)))

(declare-fun b!5027012 () Bool)

(assert (=> b!5027012 (= e!3140341 (and (inv!76700 (xs!18762 (left!42541 (c!859646 totalInput!1141)))) e!3140340))))

(assert (=> b!5026418 (= tp!1408815 (and (inv!76694 (left!42541 (c!859646 totalInput!1141))) e!3140341))))

(assert (= (and b!5026418 ((_ is Node!15436) (left!42541 (c!859646 totalInput!1141)))) b!5027011))

(assert (= b!5027012 b!5027013))

(assert (= (and b!5026418 ((_ is Leaf!25608) (left!42541 (c!859646 totalInput!1141)))) b!5027012))

(declare-fun m!6062466 () Bool)

(assert (=> b!5027011 m!6062466))

(declare-fun m!6062468 () Bool)

(assert (=> b!5027011 m!6062468))

(declare-fun m!6062470 () Bool)

(assert (=> b!5027012 m!6062470))

(assert (=> b!5026418 m!6061810))

(declare-fun tp!1408883 () Bool)

(declare-fun tp!1408882 () Bool)

(declare-fun b!5027014 () Bool)

(declare-fun e!3140343 () Bool)

(assert (=> b!5027014 (= e!3140343 (and (inv!76694 (left!42541 (right!42871 (c!859646 totalInput!1141)))) tp!1408882 (inv!76694 (right!42871 (right!42871 (c!859646 totalInput!1141)))) tp!1408883))))

(declare-fun b!5027016 () Bool)

(declare-fun e!3140342 () Bool)

(declare-fun tp!1408881 () Bool)

(assert (=> b!5027016 (= e!3140342 tp!1408881)))

(declare-fun b!5027015 () Bool)

(assert (=> b!5027015 (= e!3140343 (and (inv!76700 (xs!18762 (right!42871 (c!859646 totalInput!1141)))) e!3140342))))

(assert (=> b!5026418 (= tp!1408816 (and (inv!76694 (right!42871 (c!859646 totalInput!1141))) e!3140343))))

(assert (= (and b!5026418 ((_ is Node!15436) (right!42871 (c!859646 totalInput!1141)))) b!5027014))

(assert (= b!5027015 b!5027016))

(assert (= (and b!5026418 ((_ is Leaf!25608) (right!42871 (c!859646 totalInput!1141)))) b!5027015))

(declare-fun m!6062472 () Bool)

(assert (=> b!5027014 m!6062472))

(declare-fun m!6062474 () Bool)

(assert (=> b!5027014 m!6062474))

(declare-fun m!6062476 () Bool)

(assert (=> b!5027015 m!6062476))

(assert (=> b!5026418 m!6061812))

(declare-fun condSetEmpty!28902 () Bool)

(assert (=> setNonEmpty!28900 (= condSetEmpty!28902 (= setRest!28900 ((as const (Array Context!6684 Bool)) false)))))

(declare-fun setRes!28902 () Bool)

(assert (=> setNonEmpty!28900 (= tp!1408821 setRes!28902)))

(declare-fun setIsEmpty!28902 () Bool)

(assert (=> setIsEmpty!28902 setRes!28902))

(declare-fun e!3140344 () Bool)

(declare-fun tp!1408884 () Bool)

(declare-fun setElem!28902 () Context!6684)

(declare-fun setNonEmpty!28902 () Bool)

(assert (=> setNonEmpty!28902 (= setRes!28902 (and tp!1408884 (inv!76692 setElem!28902) e!3140344))))

(declare-fun setRest!28902 () (InoxSet Context!6684))

(assert (=> setNonEmpty!28902 (= setRest!28900 ((_ map or) (store ((as const (Array Context!6684 Bool)) false) setElem!28902 true) setRest!28902))))

(declare-fun b!5027017 () Bool)

(declare-fun tp!1408885 () Bool)

(assert (=> b!5027017 (= e!3140344 tp!1408885)))

(assert (= (and setNonEmpty!28900 condSetEmpty!28902) setIsEmpty!28902))

(assert (= (and setNonEmpty!28900 (not condSetEmpty!28902)) setNonEmpty!28902))

(assert (= setNonEmpty!28902 b!5027017))

(declare-fun m!6062478 () Bool)

(assert (=> setNonEmpty!28902 m!6062478))

(declare-fun b!5027022 () Bool)

(declare-fun e!3140347 () Bool)

(declare-fun tp!1408888 () Bool)

(assert (=> b!5027022 (= e!3140347 (and tp_is_empty!36671 tp!1408888))))

(assert (=> b!5026420 (= tp!1408814 e!3140347)))

(assert (= (and b!5026420 ((_ is Cons!58163) (innerList!15524 (xs!18762 (c!859646 totalInput!1141))))) b!5027022))

(declare-fun b_lambda!198703 () Bool)

(assert (= b_lambda!198699 (or d!1617644 b_lambda!198703)))

(declare-fun bs!1188164 () Bool)

(declare-fun d!1617990 () Bool)

(assert (= bs!1188164 (and d!1617990 d!1617644)))

(declare-fun validRegex!6121 (Regex!13917) Bool)

(assert (=> bs!1188164 (= (dynLambda!23537 lambda!249282 (h!64610 (exprs!3842 setElem!28894))) (validRegex!6121 (h!64610 (exprs!3842 setElem!28894))))))

(declare-fun m!6062480 () Bool)

(assert (=> bs!1188164 m!6062480))

(assert (=> b!5026765 d!1617990))

(check-sat (not bs!1188164) (not d!1617946) (not b!5026766) (not b!5026731) (not d!1617952) (not b!5027009) (not b!5026962) (not b!5026966) (not b!5026990) (not setNonEmpty!28902) (not b!5027016) (not b!5027011) (not d!1617856) (not b!5026987) (not d!1617888) (not d!1617966) (not b!5026977) (not b!5026951) (not b!5026905) (not b!5026785) (not b!5026820) (not d!1617930) (not b!5026860) (not b!5026911) (not b!5026938) (not b!5026864) (not b!5026725) (not b!5026736) (not b!5026986) (not b!5027012) (not d!1617890) (not b!5026867) (not b!5026692) (not b!5026749) (not d!1617916) (not b!5026958) (not b!5026983) (not d!1617900) (not b!5027013) (not b!5026847) (not b!5026835) (not b!5026723) (not b!5026953) (not b!5026928) (not d!1617986) (not b!5026963) (not bm!350785) (not b!5026982) (not b!5026418) (not d!1617896) (not d!1617942) (not b!5026839) (not b!5026940) (not b!5026711) (not d!1617912) (not b!5026979) (not b!5026738) (not b!5026849) (not b!5026909) (not d!1617978) (not d!1617886) (not b!5026910) (not b!5026861) (not d!1617962) (not b!5026724) (not b!5026844) (not d!1617928) (not b!5026931) (not b!5026995) (not b!5026876) (not b!5026972) (not b!5026834) (not d!1617926) (not d!1617980) (not b!5026967) (not b!5026887) (not b!5026713) (not b!5026686) (not b!5026946) (not bm!350781) (not b!5026975) (not b!5026991) (not b!5026658) (not d!1617976) (not d!1617954) (not b!5026892) (not b!5026871) (not d!1617840) (not d!1617950) (not b!5026874) (not b!5026890) (not b!5026976) (not b!5026865) (not b!5026933) (not b!5026872) (not bm!350779) (not d!1617884) (not bm!350778) (not b!5026897) (not b!5027017) (not b!5027022) (not b!5026824) (not b!5026947) (not d!1617932) (not b!5026745) (not b!5026952) (not b!5026944) (not b!5026683) (not b!5026901) (not b!5026984) (not b!5027010) (not b!5026856) (not d!1617988) (not b!5026894) (not d!1617918) (not b!5026794) (not b!5026970) (not b!5026971) (not b!5026787) (not b!5026838) (not b!5026728) (not bm!350786) (not bm!350784) (not b!5026912) (not b!5026828) (not b!5026936) (not d!1617972) (not d!1617902) (not b!5027015) (not b!5026950) (not d!1617934) (not d!1617892) (not d!1617838) (not b!5026882) (not b!5026868) (not b!5026956) (not b!5026720) (not d!1617936) (not b!5026682) (not b!5026742) (not b!5026740) (not b!5026960) (not b!5026802) (not b_lambda!198703) (not b!5027008) tp_is_empty!36671 (not bm!350780) (not b!5026941) (not b!5026687) (not b!5026715) (not b!5026930) (not b!5026733) (not b!5026685) (not d!1617970) (not b!5026852) (not b!5026994) (not b!5026954) (not b!5026684) (not b!5026906) (not b!5027007) (not d!1617904) (not d!1617906) (not b!5026913) (not b!5026942) (not d!1617880) (not b!5027014))
(check-sat)
