; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531804 () Bool)

(assert start!531804)

(declare-fun b!5029005 () Bool)

(declare-fun e!3141617 () Bool)

(declare-fun e!3141613 () Bool)

(assert (=> b!5029005 (= e!3141617 e!3141613)))

(declare-fun res!2143619 () Bool)

(assert (=> b!5029005 (=> res!2143619 e!3141613)))

(declare-fun lt!2081420 () Int)

(assert (=> b!5029005 (= res!2143619 (= lt!2081420 0))))

(declare-datatypes ((C!28120 0))(
  ( (C!28121 (val!23436 Int)) )
))
(declare-datatypes ((List!58332 0))(
  ( (Nil!58208) (Cons!58208 (h!64656 C!28120) (t!370740 List!58332)) )
))
(declare-datatypes ((IArray!30969 0))(
  ( (IArray!30970 (innerList!15542 List!58332)) )
))
(declare-datatypes ((Conc!15454 0))(
  ( (Node!15454 (left!42588 Conc!15454) (right!42918 Conc!15454) (csize!31138 Int) (cheight!15665 Int)) (Leaf!25635 (xs!18780 IArray!30969) (csize!31139 Int)) (Empty!15454) )
))
(declare-datatypes ((BalanceConc!30338 0))(
  ( (BalanceConc!30339 (c!860649 Conc!15454)) )
))
(declare-fun totalInput!1141 () BalanceConc!30338)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13935 0))(
  ( (ElementMatch!13935 (c!860650 C!28120)) (Concat!22728 (regOne!28382 Regex!13935) (regTwo!28382 Regex!13935)) (EmptyExpr!13935) (Star!13935 (reg!14264 Regex!13935)) (EmptyLang!13935) (Union!13935 (regOne!28383 Regex!13935) (regTwo!28383 Regex!13935)) )
))
(declare-datatypes ((List!58333 0))(
  ( (Nil!58209) (Cons!58209 (h!64657 Regex!13935) (t!370741 List!58333)) )
))
(declare-datatypes ((Context!6720 0))(
  ( (Context!6721 (exprs!3860 List!58333)) )
))
(declare-fun z!4747 () (InoxSet Context!6720))

(declare-fun lt!2081416 () Int)

(declare-fun from!1228 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!249 ((InoxSet Context!6720) Int BalanceConc!30338 Int) Int)

(assert (=> b!5029005 (= lt!2081420 (findLongestMatchInnerZipperFastV2!249 z!4747 from!1228 totalInput!1141 lt!2081416))))

(declare-fun b!5029006 () Bool)

(declare-fun res!2143618 () Bool)

(declare-fun e!3141616 () Bool)

(assert (=> b!5029006 (=> (not res!2143618) (not e!3141616))))

(assert (=> b!5029006 (= res!2143618 (not (= from!1228 lt!2081416)))))

(declare-fun b!5029007 () Bool)

(declare-fun e!3141611 () Bool)

(assert (=> b!5029007 (= e!3141616 (not e!3141611))))

(declare-fun res!2143625 () Bool)

(assert (=> b!5029007 (=> res!2143625 e!3141611)))

(declare-fun lt!2081410 () Int)

(assert (=> b!5029007 (= res!2143625 (> lt!2081410 0))))

(declare-fun lt!2081414 () List!58332)

(declare-fun lt!2081413 () List!58332)

(declare-fun take!782 (List!58332 Int) List!58332)

(assert (=> b!5029007 (= lt!2081414 (take!782 lt!2081413 lt!2081410))))

(declare-fun lt!2081418 () List!58332)

(declare-fun drop!2582 (List!58332 Int) List!58332)

(assert (=> b!5029007 (= lt!2081413 (drop!2582 lt!2081418 (+ 1 from!1228)))))

(declare-fun list!18805 (BalanceConc!30338) List!58332)

(assert (=> b!5029007 (= lt!2081418 (list!18805 totalInput!1141))))

(declare-fun e!3141610 () Bool)

(assert (=> b!5029007 e!3141610))

(declare-fun res!2143621 () Bool)

(assert (=> b!5029007 (=> res!2143621 e!3141610)))

(assert (=> b!5029007 (= res!2143621 (= lt!2081410 0))))

(declare-fun lt!2081411 () (InoxSet Context!6720))

(declare-datatypes ((Unit!149405 0))(
  ( (Unit!149406) )
))
(declare-fun lt!2081412 () Unit!149405)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!126 ((InoxSet Context!6720) Int BalanceConc!30338) Unit!149405)

(assert (=> b!5029007 (= lt!2081412 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!126 lt!2081411 (+ 1 from!1228) totalInput!1141))))

(assert (=> b!5029007 (= lt!2081410 (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 lt!2081416))))

(declare-fun lt!2081417 () C!28120)

(declare-fun derivationStepZipper!730 ((InoxSet Context!6720) C!28120) (InoxSet Context!6720))

(assert (=> b!5029007 (= lt!2081411 (derivationStepZipper!730 z!4747 lt!2081417))))

(declare-fun apply!14197 (BalanceConc!30338 Int) C!28120)

(assert (=> b!5029007 (= lt!2081417 (apply!14197 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28986 () Bool)

(declare-fun setRes!28986 () Bool)

(assert (=> setIsEmpty!28986 setRes!28986))

(declare-fun tp!1409259 () Bool)

(declare-fun setElem!28986 () Context!6720)

(declare-fun e!3141612 () Bool)

(declare-fun setNonEmpty!28986 () Bool)

(declare-fun inv!76805 (Context!6720) Bool)

(assert (=> setNonEmpty!28986 (= setRes!28986 (and tp!1409259 (inv!76805 setElem!28986) e!3141612))))

(declare-fun setRest!28986 () (InoxSet Context!6720))

(assert (=> setNonEmpty!28986 (= z!4747 ((_ map or) (store ((as const (Array Context!6720 Bool)) false) setElem!28986 true) setRest!28986))))

(declare-fun b!5029008 () Bool)

(declare-fun res!2143627 () Bool)

(assert (=> b!5029008 (=> res!2143627 e!3141617)))

(declare-fun matchZipper!685 ((InoxSet Context!6720) List!58332) Bool)

(assert (=> b!5029008 (= res!2143627 (not (matchZipper!685 lt!2081411 Nil!58208)))))

(declare-fun b!5029009 () Bool)

(assert (=> b!5029009 (= e!3141611 e!3141617)))

(declare-fun res!2143620 () Bool)

(assert (=> b!5029009 (=> res!2143620 e!3141617)))

(declare-fun lt!2081415 () List!58332)

(assert (=> b!5029009 (= res!2143620 (not (= lt!2081415 (Cons!58208 lt!2081417 Nil!58208))))))

(declare-fun apply!14198 (List!58332 Int) C!28120)

(assert (=> b!5029009 (= (Cons!58208 (apply!14198 lt!2081418 from!1228) (take!782 lt!2081413 0)) lt!2081415)))

(declare-fun lt!2081421 () Unit!149405)

(declare-fun lemmaDropTakeAddOneLeft!100 (List!58332 Int Int) Unit!149405)

(assert (=> b!5029009 (= lt!2081421 (lemmaDropTakeAddOneLeft!100 lt!2081418 from!1228 0))))

(declare-fun lt!2081419 () List!58332)

(assert (=> b!5029009 (= lt!2081415 (take!782 lt!2081419 1))))

(assert (=> b!5029009 (= lt!2081419 (drop!2582 lt!2081418 from!1228))))

(declare-fun b!5029010 () Bool)

(declare-fun tp!1409258 () Bool)

(assert (=> b!5029010 (= e!3141612 tp!1409258)))

(declare-fun b!5029011 () Bool)

(declare-fun res!2143624 () Bool)

(assert (=> b!5029011 (=> (not res!2143624) (not e!3141616))))

(declare-fun lostCauseZipper!949 ((InoxSet Context!6720)) Bool)

(assert (=> b!5029011 (= res!2143624 (not (lostCauseZipper!949 z!4747)))))

(declare-fun b!5029012 () Bool)

(assert (=> b!5029012 (= e!3141610 (matchZipper!685 lt!2081411 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))

(declare-fun b!5029013 () Bool)

(assert (=> b!5029013 (= e!3141613 (matchZipper!685 z!4747 (take!782 lt!2081419 lt!2081420)))))

(declare-fun res!2143622 () Bool)

(declare-fun e!3141615 () Bool)

(assert (=> start!531804 (=> (not res!2143622) (not e!3141615))))

(assert (=> start!531804 (= res!2143622 (>= from!1228 0))))

(assert (=> start!531804 e!3141615))

(assert (=> start!531804 true))

(declare-fun e!3141614 () Bool)

(declare-fun inv!76806 (BalanceConc!30338) Bool)

(assert (=> start!531804 (and (inv!76806 totalInput!1141) e!3141614)))

(declare-fun condSetEmpty!28986 () Bool)

(assert (=> start!531804 (= condSetEmpty!28986 (= z!4747 ((as const (Array Context!6720 Bool)) false)))))

(assert (=> start!531804 setRes!28986))

(declare-fun b!5029014 () Bool)

(declare-fun res!2143626 () Bool)

(assert (=> b!5029014 (=> res!2143626 e!3141611)))

(declare-fun nullableZipper!943 ((InoxSet Context!6720)) Bool)

(assert (=> b!5029014 (= res!2143626 (not (nullableZipper!943 lt!2081411)))))

(declare-fun b!5029015 () Bool)

(declare-fun tp!1409260 () Bool)

(declare-fun inv!76807 (Conc!15454) Bool)

(assert (=> b!5029015 (= e!3141614 (and (inv!76807 (c!860649 totalInput!1141)) tp!1409260))))

(declare-fun b!5029016 () Bool)

(assert (=> b!5029016 (= e!3141615 e!3141616)))

(declare-fun res!2143623 () Bool)

(assert (=> b!5029016 (=> (not res!2143623) (not e!3141616))))

(assert (=> b!5029016 (= res!2143623 (<= from!1228 lt!2081416))))

(declare-fun size!38746 (BalanceConc!30338) Int)

(assert (=> b!5029016 (= lt!2081416 (size!38746 totalInput!1141))))

(assert (= (and start!531804 res!2143622) b!5029016))

(assert (= (and b!5029016 res!2143623) b!5029011))

(assert (= (and b!5029011 res!2143624) b!5029006))

(assert (= (and b!5029006 res!2143618) b!5029007))

(assert (= (and b!5029007 (not res!2143621)) b!5029012))

(assert (= (and b!5029007 (not res!2143625)) b!5029014))

(assert (= (and b!5029014 (not res!2143626)) b!5029009))

(assert (= (and b!5029009 (not res!2143620)) b!5029008))

(assert (= (and b!5029008 (not res!2143627)) b!5029005))

(assert (= (and b!5029005 (not res!2143619)) b!5029013))

(assert (= start!531804 b!5029015))

(assert (= (and start!531804 condSetEmpty!28986) setIsEmpty!28986))

(assert (= (and start!531804 (not condSetEmpty!28986)) setNonEmpty!28986))

(assert (= setNonEmpty!28986 b!5029010))

(declare-fun m!6064252 () Bool)

(assert (=> b!5029016 m!6064252))

(declare-fun m!6064254 () Bool)

(assert (=> b!5029013 m!6064254))

(assert (=> b!5029013 m!6064254))

(declare-fun m!6064256 () Bool)

(assert (=> b!5029013 m!6064256))

(declare-fun m!6064258 () Bool)

(assert (=> b!5029011 m!6064258))

(declare-fun m!6064260 () Bool)

(assert (=> b!5029007 m!6064260))

(declare-fun m!6064262 () Bool)

(assert (=> b!5029007 m!6064262))

(declare-fun m!6064264 () Bool)

(assert (=> b!5029007 m!6064264))

(declare-fun m!6064266 () Bool)

(assert (=> b!5029007 m!6064266))

(declare-fun m!6064268 () Bool)

(assert (=> b!5029007 m!6064268))

(declare-fun m!6064270 () Bool)

(assert (=> b!5029007 m!6064270))

(declare-fun m!6064272 () Bool)

(assert (=> b!5029007 m!6064272))

(declare-fun m!6064274 () Bool)

(assert (=> b!5029014 m!6064274))

(declare-fun m!6064276 () Bool)

(assert (=> start!531804 m!6064276))

(declare-fun m!6064278 () Bool)

(assert (=> b!5029015 m!6064278))

(declare-fun m!6064280 () Bool)

(assert (=> b!5029008 m!6064280))

(assert (=> b!5029012 m!6064266))

(assert (=> b!5029012 m!6064266))

(declare-fun m!6064282 () Bool)

(assert (=> b!5029012 m!6064282))

(assert (=> b!5029012 m!6064282))

(declare-fun m!6064284 () Bool)

(assert (=> b!5029012 m!6064284))

(assert (=> b!5029012 m!6064284))

(declare-fun m!6064286 () Bool)

(assert (=> b!5029012 m!6064286))

(declare-fun m!6064288 () Bool)

(assert (=> b!5029005 m!6064288))

(declare-fun m!6064290 () Bool)

(assert (=> setNonEmpty!28986 m!6064290))

(declare-fun m!6064292 () Bool)

(assert (=> b!5029009 m!6064292))

(declare-fun m!6064294 () Bool)

(assert (=> b!5029009 m!6064294))

(declare-fun m!6064296 () Bool)

(assert (=> b!5029009 m!6064296))

(declare-fun m!6064298 () Bool)

(assert (=> b!5029009 m!6064298))

(declare-fun m!6064300 () Bool)

(assert (=> b!5029009 m!6064300))

(check-sat (not b!5029014) (not b!5029015) (not start!531804) (not b!5029009) (not b!5029010) (not b!5029016) (not b!5029012) (not b!5029005) (not b!5029011) (not b!5029008) (not b!5029007) (not setNonEmpty!28986) (not b!5029013))
(check-sat)
(get-model)

(declare-fun d!1618347 () Bool)

(declare-fun lambda!249547 () Int)

(declare-fun exists!1410 ((InoxSet Context!6720) Int) Bool)

(assert (=> d!1618347 (= (nullableZipper!943 lt!2081411) (exists!1410 lt!2081411 lambda!249547))))

(declare-fun bs!1188267 () Bool)

(assert (= bs!1188267 d!1618347))

(declare-fun m!6064302 () Bool)

(assert (=> bs!1188267 m!6064302))

(assert (=> b!5029014 d!1618347))

(declare-fun d!1618351 () Bool)

(declare-fun lt!2081430 () Int)

(assert (=> d!1618351 (and (>= lt!2081430 0) (<= lt!2081430 (- lt!2081416 from!1228)))))

(declare-fun e!3141631 () Int)

(assert (=> d!1618351 (= lt!2081430 e!3141631)))

(declare-fun c!860663 () Bool)

(declare-fun e!3141628 () Bool)

(assert (=> d!1618351 (= c!860663 e!3141628)))

(declare-fun res!2143633 () Bool)

(assert (=> d!1618351 (=> res!2143633 e!3141628)))

(assert (=> d!1618351 (= res!2143633 (= from!1228 lt!2081416))))

(declare-fun e!3141630 () Bool)

(assert (=> d!1618351 e!3141630))

(declare-fun res!2143632 () Bool)

(assert (=> d!1618351 (=> (not res!2143632) (not e!3141630))))

(assert (=> d!1618351 (= res!2143632 (>= from!1228 0))))

(assert (=> d!1618351 (= (findLongestMatchInnerZipperFastV2!249 z!4747 from!1228 totalInput!1141 lt!2081416) lt!2081430)))

(declare-fun b!5029033 () Bool)

(assert (=> b!5029033 (= e!3141628 (lostCauseZipper!949 z!4747))))

(declare-fun b!5029034 () Bool)

(declare-fun e!3141629 () Int)

(assert (=> b!5029034 (= e!3141631 e!3141629)))

(declare-fun lt!2081428 () (InoxSet Context!6720))

(assert (=> b!5029034 (= lt!2081428 (derivationStepZipper!730 z!4747 (apply!14197 totalInput!1141 from!1228)))))

(declare-fun lt!2081429 () Int)

(assert (=> b!5029034 (= lt!2081429 (findLongestMatchInnerZipperFastV2!249 lt!2081428 (+ from!1228 1) totalInput!1141 lt!2081416))))

(declare-fun c!860662 () Bool)

(assert (=> b!5029034 (= c!860662 (> lt!2081429 0))))

(declare-fun b!5029035 () Bool)

(assert (=> b!5029035 (= e!3141630 (<= from!1228 (size!38746 totalInput!1141)))))

(declare-fun b!5029036 () Bool)

(declare-fun e!3141632 () Int)

(assert (=> b!5029036 (= e!3141632 1)))

(declare-fun b!5029037 () Bool)

(assert (=> b!5029037 (= e!3141631 0)))

(declare-fun b!5029038 () Bool)

(assert (=> b!5029038 (= e!3141629 (+ 1 lt!2081429))))

(declare-fun b!5029039 () Bool)

(declare-fun c!860661 () Bool)

(assert (=> b!5029039 (= c!860661 (nullableZipper!943 lt!2081428))))

(assert (=> b!5029039 (= e!3141629 e!3141632)))

(declare-fun b!5029040 () Bool)

(assert (=> b!5029040 (= e!3141632 0)))

(assert (= (and d!1618351 res!2143632) b!5029035))

(assert (= (and d!1618351 (not res!2143633)) b!5029033))

(assert (= (and d!1618351 c!860663) b!5029037))

(assert (= (and d!1618351 (not c!860663)) b!5029034))

(assert (= (and b!5029034 c!860662) b!5029038))

(assert (= (and b!5029034 (not c!860662)) b!5029039))

(assert (= (and b!5029039 c!860661) b!5029036))

(assert (= (and b!5029039 (not c!860661)) b!5029040))

(assert (=> b!5029033 m!6064258))

(assert (=> b!5029034 m!6064262))

(assert (=> b!5029034 m!6064262))

(declare-fun m!6064304 () Bool)

(assert (=> b!5029034 m!6064304))

(declare-fun m!6064306 () Bool)

(assert (=> b!5029034 m!6064306))

(assert (=> b!5029035 m!6064252))

(declare-fun m!6064308 () Bool)

(assert (=> b!5029039 m!6064308))

(assert (=> b!5029005 d!1618351))

(declare-fun d!1618353 () Bool)

(declare-fun c!860666 () Bool)

(declare-fun isEmpty!31474 (List!58332) Bool)

(assert (=> d!1618353 (= c!860666 (isEmpty!31474 (take!782 lt!2081419 lt!2081420)))))

(declare-fun e!3141635 () Bool)

(assert (=> d!1618353 (= (matchZipper!685 z!4747 (take!782 lt!2081419 lt!2081420)) e!3141635)))

(declare-fun b!5029045 () Bool)

(assert (=> b!5029045 (= e!3141635 (nullableZipper!943 z!4747))))

(declare-fun b!5029046 () Bool)

(declare-fun head!10788 (List!58332) C!28120)

(declare-fun tail!9921 (List!58332) List!58332)

(assert (=> b!5029046 (= e!3141635 (matchZipper!685 (derivationStepZipper!730 z!4747 (head!10788 (take!782 lt!2081419 lt!2081420))) (tail!9921 (take!782 lt!2081419 lt!2081420))))))

(assert (= (and d!1618353 c!860666) b!5029045))

(assert (= (and d!1618353 (not c!860666)) b!5029046))

(assert (=> d!1618353 m!6064254))

(declare-fun m!6064310 () Bool)

(assert (=> d!1618353 m!6064310))

(declare-fun m!6064312 () Bool)

(assert (=> b!5029045 m!6064312))

(assert (=> b!5029046 m!6064254))

(declare-fun m!6064314 () Bool)

(assert (=> b!5029046 m!6064314))

(assert (=> b!5029046 m!6064314))

(declare-fun m!6064316 () Bool)

(assert (=> b!5029046 m!6064316))

(assert (=> b!5029046 m!6064254))

(declare-fun m!6064318 () Bool)

(assert (=> b!5029046 m!6064318))

(assert (=> b!5029046 m!6064316))

(assert (=> b!5029046 m!6064318))

(declare-fun m!6064320 () Bool)

(assert (=> b!5029046 m!6064320))

(assert (=> b!5029013 d!1618353))

(declare-fun b!5029061 () Bool)

(declare-fun e!3141646 () Int)

(assert (=> b!5029061 (= e!3141646 lt!2081420)))

(declare-fun b!5029062 () Bool)

(declare-fun e!3141647 () Bool)

(declare-fun lt!2081433 () List!58332)

(declare-fun e!3141645 () Int)

(declare-fun size!38747 (List!58332) Int)

(assert (=> b!5029062 (= e!3141647 (= (size!38747 lt!2081433) e!3141645))))

(declare-fun c!860673 () Bool)

(assert (=> b!5029062 (= c!860673 (<= lt!2081420 0))))

(declare-fun b!5029063 () Bool)

(declare-fun e!3141644 () List!58332)

(assert (=> b!5029063 (= e!3141644 Nil!58208)))

(declare-fun b!5029064 () Bool)

(assert (=> b!5029064 (= e!3141644 (Cons!58208 (h!64656 lt!2081419) (take!782 (t!370740 lt!2081419) (- lt!2081420 1))))))

(declare-fun d!1618355 () Bool)

(assert (=> d!1618355 e!3141647))

(declare-fun res!2143636 () Bool)

(assert (=> d!1618355 (=> (not res!2143636) (not e!3141647))))

(declare-fun content!10319 (List!58332) (InoxSet C!28120))

(assert (=> d!1618355 (= res!2143636 (= ((_ map implies) (content!10319 lt!2081433) (content!10319 lt!2081419)) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618355 (= lt!2081433 e!3141644)))

(declare-fun c!860675 () Bool)

(get-info :version)

(assert (=> d!1618355 (= c!860675 (or ((_ is Nil!58208) lt!2081419) (<= lt!2081420 0)))))

(assert (=> d!1618355 (= (take!782 lt!2081419 lt!2081420) lt!2081433)))

(declare-fun b!5029065 () Bool)

(assert (=> b!5029065 (= e!3141646 (size!38747 lt!2081419))))

(declare-fun b!5029066 () Bool)

(assert (=> b!5029066 (= e!3141645 0)))

(declare-fun b!5029067 () Bool)

(assert (=> b!5029067 (= e!3141645 e!3141646)))

(declare-fun c!860674 () Bool)

(assert (=> b!5029067 (= c!860674 (>= lt!2081420 (size!38747 lt!2081419)))))

(assert (= (and d!1618355 c!860675) b!5029063))

(assert (= (and d!1618355 (not c!860675)) b!5029064))

(assert (= (and d!1618355 res!2143636) b!5029062))

(assert (= (and b!5029062 c!860673) b!5029066))

(assert (= (and b!5029062 (not c!860673)) b!5029067))

(assert (= (and b!5029067 c!860674) b!5029065))

(assert (= (and b!5029067 (not c!860674)) b!5029061))

(declare-fun m!6064322 () Bool)

(assert (=> b!5029065 m!6064322))

(declare-fun m!6064324 () Bool)

(assert (=> d!1618355 m!6064324))

(declare-fun m!6064326 () Bool)

(assert (=> d!1618355 m!6064326))

(declare-fun m!6064328 () Bool)

(assert (=> b!5029062 m!6064328))

(assert (=> b!5029067 m!6064322))

(declare-fun m!6064330 () Bool)

(assert (=> b!5029064 m!6064330))

(assert (=> b!5029013 d!1618355))

(declare-fun d!1618357 () Bool)

(declare-fun isBalanced!4315 (Conc!15454) Bool)

(assert (=> d!1618357 (= (inv!76806 totalInput!1141) (isBalanced!4315 (c!860649 totalInput!1141)))))

(declare-fun bs!1188268 () Bool)

(assert (= bs!1188268 d!1618357))

(declare-fun m!6064332 () Bool)

(assert (=> bs!1188268 m!6064332))

(assert (=> start!531804 d!1618357))

(declare-fun d!1618359 () Bool)

(declare-fun c!860676 () Bool)

(assert (=> d!1618359 (= c!860676 (isEmpty!31474 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))

(declare-fun e!3141648 () Bool)

(assert (=> d!1618359 (= (matchZipper!685 lt!2081411 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) e!3141648)))

(declare-fun b!5029068 () Bool)

(assert (=> b!5029068 (= e!3141648 (nullableZipper!943 lt!2081411))))

(declare-fun b!5029069 () Bool)

(assert (=> b!5029069 (= e!3141648 (matchZipper!685 (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))) (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))))))

(assert (= (and d!1618359 c!860676) b!5029068))

(assert (= (and d!1618359 (not c!860676)) b!5029069))

(assert (=> d!1618359 m!6064284))

(declare-fun m!6064334 () Bool)

(assert (=> d!1618359 m!6064334))

(assert (=> b!5029068 m!6064274))

(assert (=> b!5029069 m!6064284))

(declare-fun m!6064336 () Bool)

(assert (=> b!5029069 m!6064336))

(assert (=> b!5029069 m!6064336))

(declare-fun m!6064338 () Bool)

(assert (=> b!5029069 m!6064338))

(assert (=> b!5029069 m!6064284))

(declare-fun m!6064340 () Bool)

(assert (=> b!5029069 m!6064340))

(assert (=> b!5029069 m!6064338))

(assert (=> b!5029069 m!6064340))

(declare-fun m!6064342 () Bool)

(assert (=> b!5029069 m!6064342))

(assert (=> b!5029012 d!1618359))

(declare-fun b!5029070 () Bool)

(declare-fun e!3141651 () Int)

(assert (=> b!5029070 (= e!3141651 lt!2081410)))

(declare-fun b!5029071 () Bool)

(declare-fun e!3141652 () Bool)

(declare-fun lt!2081434 () List!58332)

(declare-fun e!3141650 () Int)

(assert (=> b!5029071 (= e!3141652 (= (size!38747 lt!2081434) e!3141650))))

(declare-fun c!860677 () Bool)

(assert (=> b!5029071 (= c!860677 (<= lt!2081410 0))))

(declare-fun b!5029072 () Bool)

(declare-fun e!3141649 () List!58332)

(assert (=> b!5029072 (= e!3141649 Nil!58208)))

(declare-fun b!5029073 () Bool)

(assert (=> b!5029073 (= e!3141649 (Cons!58208 (h!64656 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (take!782 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (- lt!2081410 1))))))

(declare-fun d!1618361 () Bool)

(assert (=> d!1618361 e!3141652))

(declare-fun res!2143637 () Bool)

(assert (=> d!1618361 (=> (not res!2143637) (not e!3141652))))

(assert (=> d!1618361 (= res!2143637 (= ((_ map implies) (content!10319 lt!2081434) (content!10319 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618361 (= lt!2081434 e!3141649)))

(declare-fun c!860679 () Bool)

(assert (=> d!1618361 (= c!860679 (or ((_ is Nil!58208) (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (<= lt!2081410 0)))))

(assert (=> d!1618361 (= (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410) lt!2081434)))

(declare-fun b!5029074 () Bool)

(assert (=> b!5029074 (= e!3141651 (size!38747 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5029075 () Bool)

(assert (=> b!5029075 (= e!3141650 0)))

(declare-fun b!5029076 () Bool)

(assert (=> b!5029076 (= e!3141650 e!3141651)))

(declare-fun c!860678 () Bool)

(assert (=> b!5029076 (= c!860678 (>= lt!2081410 (size!38747 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))))))

(assert (= (and d!1618361 c!860679) b!5029072))

(assert (= (and d!1618361 (not c!860679)) b!5029073))

(assert (= (and d!1618361 res!2143637) b!5029071))

(assert (= (and b!5029071 c!860677) b!5029075))

(assert (= (and b!5029071 (not c!860677)) b!5029076))

(assert (= (and b!5029076 c!860678) b!5029074))

(assert (= (and b!5029076 (not c!860678)) b!5029070))

(assert (=> b!5029074 m!6064282))

(declare-fun m!6064344 () Bool)

(assert (=> b!5029074 m!6064344))

(declare-fun m!6064346 () Bool)

(assert (=> d!1618361 m!6064346))

(assert (=> d!1618361 m!6064282))

(declare-fun m!6064348 () Bool)

(assert (=> d!1618361 m!6064348))

(declare-fun m!6064350 () Bool)

(assert (=> b!5029071 m!6064350))

(assert (=> b!5029076 m!6064282))

(assert (=> b!5029076 m!6064344))

(declare-fun m!6064352 () Bool)

(assert (=> b!5029073 m!6064352))

(assert (=> b!5029012 d!1618361))

(declare-fun d!1618363 () Bool)

(declare-fun e!3141672 () Bool)

(assert (=> d!1618363 e!3141672))

(declare-fun res!2143643 () Bool)

(assert (=> d!1618363 (=> (not res!2143643) (not e!3141672))))

(declare-fun lt!2081437 () List!58332)

(assert (=> d!1618363 (= res!2143643 (= ((_ map implies) (content!10319 lt!2081437) (content!10319 (list!18805 totalInput!1141))) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141670 () List!58332)

(assert (=> d!1618363 (= lt!2081437 e!3141670)))

(declare-fun c!860694 () Bool)

(assert (=> d!1618363 (= c!860694 ((_ is Nil!58208) (list!18805 totalInput!1141)))))

(assert (=> d!1618363 (= (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081437)))

(declare-fun b!5029104 () Bool)

(declare-fun e!3141671 () Int)

(declare-fun call!350897 () Int)

(assert (=> b!5029104 (= e!3141671 call!350897)))

(declare-fun b!5029105 () Bool)

(declare-fun e!3141669 () Int)

(assert (=> b!5029105 (= e!3141669 0)))

(declare-fun b!5029106 () Bool)

(declare-fun e!3141673 () List!58332)

(assert (=> b!5029106 (= e!3141670 e!3141673)))

(declare-fun c!860692 () Bool)

(assert (=> b!5029106 (= c!860692 (<= (+ 1 from!1228) 0))))

(declare-fun b!5029107 () Bool)

(assert (=> b!5029107 (= e!3141673 (drop!2582 (t!370740 (list!18805 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5029108 () Bool)

(assert (=> b!5029108 (= e!3141670 Nil!58208)))

(declare-fun bm!350892 () Bool)

(assert (=> bm!350892 (= call!350897 (size!38747 (list!18805 totalInput!1141)))))

(declare-fun b!5029109 () Bool)

(assert (=> b!5029109 (= e!3141673 (list!18805 totalInput!1141))))

(declare-fun b!5029110 () Bool)

(assert (=> b!5029110 (= e!3141672 (= (size!38747 lt!2081437) e!3141671))))

(declare-fun c!860693 () Bool)

(assert (=> b!5029110 (= c!860693 (<= (+ 1 from!1228) 0))))

(declare-fun b!5029111 () Bool)

(assert (=> b!5029111 (= e!3141671 e!3141669)))

(declare-fun c!860691 () Bool)

(assert (=> b!5029111 (= c!860691 (>= (+ 1 from!1228) call!350897))))

(declare-fun b!5029112 () Bool)

(assert (=> b!5029112 (= e!3141669 (- call!350897 (+ 1 from!1228)))))

(assert (= (and d!1618363 c!860694) b!5029108))

(assert (= (and d!1618363 (not c!860694)) b!5029106))

(assert (= (and b!5029106 c!860692) b!5029109))

(assert (= (and b!5029106 (not c!860692)) b!5029107))

(assert (= (and d!1618363 res!2143643) b!5029110))

(assert (= (and b!5029110 c!860693) b!5029104))

(assert (= (and b!5029110 (not c!860693)) b!5029111))

(assert (= (and b!5029111 c!860691) b!5029105))

(assert (= (and b!5029111 (not c!860691)) b!5029112))

(assert (= (or b!5029104 b!5029111 b!5029112) bm!350892))

(declare-fun m!6064360 () Bool)

(assert (=> d!1618363 m!6064360))

(assert (=> d!1618363 m!6064266))

(declare-fun m!6064362 () Bool)

(assert (=> d!1618363 m!6064362))

(declare-fun m!6064364 () Bool)

(assert (=> b!5029107 m!6064364))

(assert (=> bm!350892 m!6064266))

(declare-fun m!6064366 () Bool)

(assert (=> bm!350892 m!6064366))

(declare-fun m!6064368 () Bool)

(assert (=> b!5029110 m!6064368))

(assert (=> b!5029012 d!1618363))

(declare-fun d!1618369 () Bool)

(declare-fun list!18806 (Conc!15454) List!58332)

(assert (=> d!1618369 (= (list!18805 totalInput!1141) (list!18806 (c!860649 totalInput!1141)))))

(declare-fun bs!1188270 () Bool)

(assert (= bs!1188270 d!1618369))

(declare-fun m!6064370 () Bool)

(assert (=> bs!1188270 m!6064370))

(assert (=> b!5029012 d!1618369))

(declare-fun d!1618371 () Bool)

(declare-fun lt!2081443 () Int)

(assert (=> d!1618371 (= lt!2081443 (size!38747 (list!18805 totalInput!1141)))))

(declare-fun size!38750 (Conc!15454) Int)

(assert (=> d!1618371 (= lt!2081443 (size!38750 (c!860649 totalInput!1141)))))

(assert (=> d!1618371 (= (size!38746 totalInput!1141) lt!2081443)))

(declare-fun bs!1188272 () Bool)

(assert (= bs!1188272 d!1618371))

(assert (=> bs!1188272 m!6064266))

(assert (=> bs!1188272 m!6064266))

(assert (=> bs!1188272 m!6064366))

(declare-fun m!6064376 () Bool)

(assert (=> bs!1188272 m!6064376))

(assert (=> b!5029016 d!1618371))

(declare-fun b!5029113 () Bool)

(declare-fun e!3141676 () Int)

(assert (=> b!5029113 (= e!3141676 lt!2081410)))

(declare-fun b!5029114 () Bool)

(declare-fun e!3141677 () Bool)

(declare-fun lt!2081444 () List!58332)

(declare-fun e!3141675 () Int)

(assert (=> b!5029114 (= e!3141677 (= (size!38747 lt!2081444) e!3141675))))

(declare-fun c!860695 () Bool)

(assert (=> b!5029114 (= c!860695 (<= lt!2081410 0))))

(declare-fun b!5029115 () Bool)

(declare-fun e!3141674 () List!58332)

(assert (=> b!5029115 (= e!3141674 Nil!58208)))

(declare-fun b!5029116 () Bool)

(assert (=> b!5029116 (= e!3141674 (Cons!58208 (h!64656 lt!2081413) (take!782 (t!370740 lt!2081413) (- lt!2081410 1))))))

(declare-fun d!1618375 () Bool)

(assert (=> d!1618375 e!3141677))

(declare-fun res!2143644 () Bool)

(assert (=> d!1618375 (=> (not res!2143644) (not e!3141677))))

(assert (=> d!1618375 (= res!2143644 (= ((_ map implies) (content!10319 lt!2081444) (content!10319 lt!2081413)) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618375 (= lt!2081444 e!3141674)))

(declare-fun c!860697 () Bool)

(assert (=> d!1618375 (= c!860697 (or ((_ is Nil!58208) lt!2081413) (<= lt!2081410 0)))))

(assert (=> d!1618375 (= (take!782 lt!2081413 lt!2081410) lt!2081444)))

(declare-fun b!5029117 () Bool)

(assert (=> b!5029117 (= e!3141676 (size!38747 lt!2081413))))

(declare-fun b!5029118 () Bool)

(assert (=> b!5029118 (= e!3141675 0)))

(declare-fun b!5029119 () Bool)

(assert (=> b!5029119 (= e!3141675 e!3141676)))

(declare-fun c!860696 () Bool)

(assert (=> b!5029119 (= c!860696 (>= lt!2081410 (size!38747 lt!2081413)))))

(assert (= (and d!1618375 c!860697) b!5029115))

(assert (= (and d!1618375 (not c!860697)) b!5029116))

(assert (= (and d!1618375 res!2143644) b!5029114))

(assert (= (and b!5029114 c!860695) b!5029118))

(assert (= (and b!5029114 (not c!860695)) b!5029119))

(assert (= (and b!5029119 c!860696) b!5029117))

(assert (= (and b!5029119 (not c!860696)) b!5029113))

(declare-fun m!6064378 () Bool)

(assert (=> b!5029117 m!6064378))

(declare-fun m!6064380 () Bool)

(assert (=> d!1618375 m!6064380))

(declare-fun m!6064382 () Bool)

(assert (=> d!1618375 m!6064382))

(declare-fun m!6064384 () Bool)

(assert (=> b!5029114 m!6064384))

(assert (=> b!5029119 m!6064378))

(declare-fun m!6064386 () Bool)

(assert (=> b!5029116 m!6064386))

(assert (=> b!5029007 d!1618375))

(declare-fun d!1618377 () Bool)

(declare-fun e!3141702 () Bool)

(assert (=> d!1618377 e!3141702))

(declare-fun res!2143657 () Bool)

(assert (=> d!1618377 (=> res!2143657 e!3141702)))

(assert (=> d!1618377 (= res!2143657 (= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) 0))))

(declare-fun lt!2081455 () Unit!149405)

(declare-fun choose!37213 ((InoxSet Context!6720) Int BalanceConc!30338) Unit!149405)

(assert (=> d!1618377 (= lt!2081455 (choose!37213 lt!2081411 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3141701 () Bool)

(assert (=> d!1618377 e!3141701))

(declare-fun res!2143658 () Bool)

(assert (=> d!1618377 (=> (not res!2143658) (not e!3141701))))

(assert (=> d!1618377 (= res!2143658 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618377 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!126 lt!2081411 (+ 1 from!1228) totalInput!1141) lt!2081455)))

(declare-fun b!5029154 () Bool)

(assert (=> b!5029154 (= e!3141701 (<= (+ 1 from!1228) (size!38746 totalInput!1141)))))

(declare-fun b!5029155 () Bool)

(assert (=> b!5029155 (= e!3141702 (matchZipper!685 lt!2081411 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)))))))

(assert (= (and d!1618377 res!2143658) b!5029154))

(assert (= (and d!1618377 (not res!2143657)) b!5029155))

(assert (=> d!1618377 m!6064252))

(assert (=> d!1618377 m!6064252))

(declare-fun m!6064408 () Bool)

(assert (=> d!1618377 m!6064408))

(declare-fun m!6064410 () Bool)

(assert (=> d!1618377 m!6064410))

(assert (=> b!5029154 m!6064252))

(assert (=> b!5029155 m!6064282))

(assert (=> b!5029155 m!6064408))

(declare-fun m!6064412 () Bool)

(assert (=> b!5029155 m!6064412))

(assert (=> b!5029155 m!6064252))

(assert (=> b!5029155 m!6064252))

(assert (=> b!5029155 m!6064408))

(assert (=> b!5029155 m!6064266))

(assert (=> b!5029155 m!6064282))

(assert (=> b!5029155 m!6064266))

(assert (=> b!5029155 m!6064412))

(declare-fun m!6064414 () Bool)

(assert (=> b!5029155 m!6064414))

(assert (=> b!5029007 d!1618377))

(declare-fun d!1618383 () Bool)

(declare-fun lt!2081459 () Int)

(assert (=> d!1618383 (and (>= lt!2081459 0) (<= lt!2081459 (- lt!2081416 (+ 1 from!1228))))))

(declare-fun e!3141708 () Int)

(assert (=> d!1618383 (= lt!2081459 e!3141708)))

(declare-fun c!860712 () Bool)

(declare-fun e!3141705 () Bool)

(assert (=> d!1618383 (= c!860712 e!3141705)))

(declare-fun res!2143661 () Bool)

(assert (=> d!1618383 (=> res!2143661 e!3141705)))

(assert (=> d!1618383 (= res!2143661 (= (+ 1 from!1228) lt!2081416))))

(declare-fun e!3141707 () Bool)

(assert (=> d!1618383 e!3141707))

(declare-fun res!2143660 () Bool)

(assert (=> d!1618383 (=> (not res!2143660) (not e!3141707))))

(assert (=> d!1618383 (= res!2143660 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618383 (= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 lt!2081416) lt!2081459)))

(declare-fun b!5029159 () Bool)

(assert (=> b!5029159 (= e!3141705 (lostCauseZipper!949 lt!2081411))))

(declare-fun b!5029160 () Bool)

(declare-fun e!3141706 () Int)

(assert (=> b!5029160 (= e!3141708 e!3141706)))

(declare-fun lt!2081457 () (InoxSet Context!6720))

(assert (=> b!5029160 (= lt!2081457 (derivationStepZipper!730 lt!2081411 (apply!14197 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2081458 () Int)

(assert (=> b!5029160 (= lt!2081458 (findLongestMatchInnerZipperFastV2!249 lt!2081457 (+ 1 from!1228 1) totalInput!1141 lt!2081416))))

(declare-fun c!860711 () Bool)

(assert (=> b!5029160 (= c!860711 (> lt!2081458 0))))

(declare-fun b!5029161 () Bool)

(assert (=> b!5029161 (= e!3141707 (<= (+ 1 from!1228) (size!38746 totalInput!1141)))))

(declare-fun b!5029162 () Bool)

(declare-fun e!3141709 () Int)

(assert (=> b!5029162 (= e!3141709 1)))

(declare-fun b!5029163 () Bool)

(assert (=> b!5029163 (= e!3141708 0)))

(declare-fun b!5029164 () Bool)

(assert (=> b!5029164 (= e!3141706 (+ 1 lt!2081458))))

(declare-fun b!5029165 () Bool)

(declare-fun c!860710 () Bool)

(assert (=> b!5029165 (= c!860710 (nullableZipper!943 lt!2081457))))

(assert (=> b!5029165 (= e!3141706 e!3141709)))

(declare-fun b!5029166 () Bool)

(assert (=> b!5029166 (= e!3141709 0)))

(assert (= (and d!1618383 res!2143660) b!5029161))

(assert (= (and d!1618383 (not res!2143661)) b!5029159))

(assert (= (and d!1618383 c!860712) b!5029163))

(assert (= (and d!1618383 (not c!860712)) b!5029160))

(assert (= (and b!5029160 c!860711) b!5029164))

(assert (= (and b!5029160 (not c!860711)) b!5029165))

(assert (= (and b!5029165 c!860710) b!5029162))

(assert (= (and b!5029165 (not c!860710)) b!5029166))

(declare-fun m!6064424 () Bool)

(assert (=> b!5029159 m!6064424))

(declare-fun m!6064426 () Bool)

(assert (=> b!5029160 m!6064426))

(assert (=> b!5029160 m!6064426))

(declare-fun m!6064428 () Bool)

(assert (=> b!5029160 m!6064428))

(declare-fun m!6064430 () Bool)

(assert (=> b!5029160 m!6064430))

(assert (=> b!5029161 m!6064252))

(declare-fun m!6064432 () Bool)

(assert (=> b!5029165 m!6064432))

(assert (=> b!5029007 d!1618383))

(assert (=> b!5029007 d!1618369))

(declare-fun d!1618387 () Bool)

(declare-fun lt!2081464 () C!28120)

(assert (=> d!1618387 (= lt!2081464 (apply!14198 (list!18805 totalInput!1141) from!1228))))

(declare-fun apply!14199 (Conc!15454 Int) C!28120)

(assert (=> d!1618387 (= lt!2081464 (apply!14199 (c!860649 totalInput!1141) from!1228))))

(declare-fun e!3141722 () Bool)

(assert (=> d!1618387 e!3141722))

(declare-fun res!2143666 () Bool)

(assert (=> d!1618387 (=> (not res!2143666) (not e!3141722))))

(assert (=> d!1618387 (= res!2143666 (<= 0 from!1228))))

(assert (=> d!1618387 (= (apply!14197 totalInput!1141 from!1228) lt!2081464)))

(declare-fun b!5029187 () Bool)

(assert (=> b!5029187 (= e!3141722 (< from!1228 (size!38746 totalInput!1141)))))

(assert (= (and d!1618387 res!2143666) b!5029187))

(assert (=> d!1618387 m!6064266))

(assert (=> d!1618387 m!6064266))

(declare-fun m!6064434 () Bool)

(assert (=> d!1618387 m!6064434))

(declare-fun m!6064436 () Bool)

(assert (=> d!1618387 m!6064436))

(assert (=> b!5029187 m!6064252))

(assert (=> b!5029007 d!1618387))

(declare-fun d!1618389 () Bool)

(declare-fun e!3141726 () Bool)

(assert (=> d!1618389 e!3141726))

(declare-fun res!2143667 () Bool)

(assert (=> d!1618389 (=> (not res!2143667) (not e!3141726))))

(declare-fun lt!2081465 () List!58332)

(assert (=> d!1618389 (= res!2143667 (= ((_ map implies) (content!10319 lt!2081465) (content!10319 lt!2081418)) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141724 () List!58332)

(assert (=> d!1618389 (= lt!2081465 e!3141724)))

(declare-fun c!860724 () Bool)

(assert (=> d!1618389 (= c!860724 ((_ is Nil!58208) lt!2081418))))

(assert (=> d!1618389 (= (drop!2582 lt!2081418 (+ 1 from!1228)) lt!2081465)))

(declare-fun b!5029188 () Bool)

(declare-fun e!3141725 () Int)

(declare-fun call!350900 () Int)

(assert (=> b!5029188 (= e!3141725 call!350900)))

(declare-fun b!5029189 () Bool)

(declare-fun e!3141723 () Int)

(assert (=> b!5029189 (= e!3141723 0)))

(declare-fun b!5029190 () Bool)

(declare-fun e!3141727 () List!58332)

(assert (=> b!5029190 (= e!3141724 e!3141727)))

(declare-fun c!860722 () Bool)

(assert (=> b!5029190 (= c!860722 (<= (+ 1 from!1228) 0))))

(declare-fun b!5029191 () Bool)

(assert (=> b!5029191 (= e!3141727 (drop!2582 (t!370740 lt!2081418) (- (+ 1 from!1228) 1)))))

(declare-fun b!5029192 () Bool)

(assert (=> b!5029192 (= e!3141724 Nil!58208)))

(declare-fun bm!350895 () Bool)

(assert (=> bm!350895 (= call!350900 (size!38747 lt!2081418))))

(declare-fun b!5029193 () Bool)

(assert (=> b!5029193 (= e!3141727 lt!2081418)))

(declare-fun b!5029194 () Bool)

(assert (=> b!5029194 (= e!3141726 (= (size!38747 lt!2081465) e!3141725))))

(declare-fun c!860723 () Bool)

(assert (=> b!5029194 (= c!860723 (<= (+ 1 from!1228) 0))))

(declare-fun b!5029195 () Bool)

(assert (=> b!5029195 (= e!3141725 e!3141723)))

(declare-fun c!860721 () Bool)

(assert (=> b!5029195 (= c!860721 (>= (+ 1 from!1228) call!350900))))

(declare-fun b!5029196 () Bool)

(assert (=> b!5029196 (= e!3141723 (- call!350900 (+ 1 from!1228)))))

(assert (= (and d!1618389 c!860724) b!5029192))

(assert (= (and d!1618389 (not c!860724)) b!5029190))

(assert (= (and b!5029190 c!860722) b!5029193))

(assert (= (and b!5029190 (not c!860722)) b!5029191))

(assert (= (and d!1618389 res!2143667) b!5029194))

(assert (= (and b!5029194 c!860723) b!5029188))

(assert (= (and b!5029194 (not c!860723)) b!5029195))

(assert (= (and b!5029195 c!860721) b!5029189))

(assert (= (and b!5029195 (not c!860721)) b!5029196))

(assert (= (or b!5029188 b!5029195 b!5029196) bm!350895))

(declare-fun m!6064438 () Bool)

(assert (=> d!1618389 m!6064438))

(declare-fun m!6064440 () Bool)

(assert (=> d!1618389 m!6064440))

(declare-fun m!6064442 () Bool)

(assert (=> b!5029191 m!6064442))

(declare-fun m!6064444 () Bool)

(assert (=> bm!350895 m!6064444))

(declare-fun m!6064446 () Bool)

(assert (=> b!5029194 m!6064446))

(assert (=> b!5029007 d!1618389))

(declare-fun d!1618391 () Bool)

(assert (=> d!1618391 true))

(declare-fun lambda!249553 () Int)

(declare-fun flatMap!314 ((InoxSet Context!6720) Int) (InoxSet Context!6720))

(assert (=> d!1618391 (= (derivationStepZipper!730 z!4747 lt!2081417) (flatMap!314 z!4747 lambda!249553))))

(declare-fun bs!1188273 () Bool)

(assert (= bs!1188273 d!1618391))

(declare-fun m!6064466 () Bool)

(assert (=> bs!1188273 m!6064466))

(assert (=> b!5029007 d!1618391))

(declare-fun d!1618397 () Bool)

(declare-fun c!860741 () Bool)

(assert (=> d!1618397 (= c!860741 ((_ is Node!15454) (c!860649 totalInput!1141)))))

(declare-fun e!3141745 () Bool)

(assert (=> d!1618397 (= (inv!76807 (c!860649 totalInput!1141)) e!3141745)))

(declare-fun b!5029230 () Bool)

(declare-fun inv!76810 (Conc!15454) Bool)

(assert (=> b!5029230 (= e!3141745 (inv!76810 (c!860649 totalInput!1141)))))

(declare-fun b!5029231 () Bool)

(declare-fun e!3141746 () Bool)

(assert (=> b!5029231 (= e!3141745 e!3141746)))

(declare-fun res!2143673 () Bool)

(assert (=> b!5029231 (= res!2143673 (not ((_ is Leaf!25635) (c!860649 totalInput!1141))))))

(assert (=> b!5029231 (=> res!2143673 e!3141746)))

(declare-fun b!5029232 () Bool)

(declare-fun inv!76811 (Conc!15454) Bool)

(assert (=> b!5029232 (= e!3141746 (inv!76811 (c!860649 totalInput!1141)))))

(assert (= (and d!1618397 c!860741) b!5029230))

(assert (= (and d!1618397 (not c!860741)) b!5029231))

(assert (= (and b!5029231 (not res!2143673)) b!5029232))

(declare-fun m!6064476 () Bool)

(assert (=> b!5029230 m!6064476))

(declare-fun m!6064478 () Bool)

(assert (=> b!5029232 m!6064478))

(assert (=> b!5029015 d!1618397))

(declare-fun d!1618403 () Bool)

(declare-fun c!860742 () Bool)

(assert (=> d!1618403 (= c!860742 (isEmpty!31474 Nil!58208))))

(declare-fun e!3141747 () Bool)

(assert (=> d!1618403 (= (matchZipper!685 lt!2081411 Nil!58208) e!3141747)))

(declare-fun b!5029233 () Bool)

(assert (=> b!5029233 (= e!3141747 (nullableZipper!943 lt!2081411))))

(declare-fun b!5029234 () Bool)

(assert (=> b!5029234 (= e!3141747 (matchZipper!685 (derivationStepZipper!730 lt!2081411 (head!10788 Nil!58208)) (tail!9921 Nil!58208)))))

(assert (= (and d!1618403 c!860742) b!5029233))

(assert (= (and d!1618403 (not c!860742)) b!5029234))

(declare-fun m!6064480 () Bool)

(assert (=> d!1618403 m!6064480))

(assert (=> b!5029233 m!6064274))

(declare-fun m!6064482 () Bool)

(assert (=> b!5029234 m!6064482))

(assert (=> b!5029234 m!6064482))

(declare-fun m!6064484 () Bool)

(assert (=> b!5029234 m!6064484))

(declare-fun m!6064486 () Bool)

(assert (=> b!5029234 m!6064486))

(assert (=> b!5029234 m!6064484))

(assert (=> b!5029234 m!6064486))

(declare-fun m!6064488 () Bool)

(assert (=> b!5029234 m!6064488))

(assert (=> b!5029008 d!1618403))

(declare-fun d!1618405 () Bool)

(declare-fun lambda!249559 () Int)

(declare-fun forall!13450 (List!58333 Int) Bool)

(assert (=> d!1618405 (= (inv!76805 setElem!28986) (forall!13450 (exprs!3860 setElem!28986) lambda!249559))))

(declare-fun bs!1188275 () Bool)

(assert (= bs!1188275 d!1618405))

(declare-fun m!6064490 () Bool)

(assert (=> bs!1188275 m!6064490))

(assert (=> setNonEmpty!28986 d!1618405))

(declare-fun bs!1188276 () Bool)

(declare-fun d!1618407 () Bool)

(assert (= bs!1188276 (and d!1618407 d!1618347)))

(declare-fun lambda!249572 () Int)

(assert (=> bs!1188276 (not (= lambda!249572 lambda!249547))))

(declare-fun bs!1188277 () Bool)

(declare-fun b!5029245 () Bool)

(assert (= bs!1188277 (and b!5029245 d!1618347)))

(declare-fun lambda!249573 () Int)

(assert (=> bs!1188277 (not (= lambda!249573 lambda!249547))))

(declare-fun bs!1188278 () Bool)

(assert (= bs!1188278 (and b!5029245 d!1618407)))

(assert (=> bs!1188278 (not (= lambda!249573 lambda!249572))))

(declare-fun bs!1188279 () Bool)

(declare-fun b!5029246 () Bool)

(assert (= bs!1188279 (and b!5029246 d!1618347)))

(declare-fun lambda!249574 () Int)

(assert (=> bs!1188279 (not (= lambda!249574 lambda!249547))))

(declare-fun bs!1188280 () Bool)

(assert (= bs!1188280 (and b!5029246 d!1618407)))

(assert (=> bs!1188280 (not (= lambda!249574 lambda!249572))))

(declare-fun bs!1188281 () Bool)

(assert (= bs!1188281 (and b!5029246 b!5029245)))

(assert (=> bs!1188281 (= lambda!249574 lambda!249573)))

(declare-fun bm!350901 () Bool)

(declare-datatypes ((List!58334 0))(
  ( (Nil!58210) (Cons!58210 (h!64658 Context!6720) (t!370742 List!58334)) )
))
(declare-fun call!350907 () List!58334)

(declare-fun toList!8133 ((InoxSet Context!6720)) List!58334)

(assert (=> bm!350901 (= call!350907 (toList!8133 z!4747))))

(declare-fun lt!2081490 () Bool)

(declare-datatypes ((Option!14612 0))(
  ( (None!14611) (Some!14611 (v!50620 List!58332)) )
))
(declare-fun isEmpty!31475 (Option!14612) Bool)

(declare-fun getLanguageWitness!753 ((InoxSet Context!6720)) Option!14612)

(assert (=> d!1618407 (= lt!2081490 (isEmpty!31475 (getLanguageWitness!753 z!4747)))))

(declare-fun forall!13451 ((InoxSet Context!6720) Int) Bool)

(assert (=> d!1618407 (= lt!2081490 (forall!13451 z!4747 lambda!249572))))

(declare-fun lt!2081492 () Unit!149405)

(declare-fun e!3141760 () Unit!149405)

(assert (=> d!1618407 (= lt!2081492 e!3141760)))

(declare-fun c!860753 () Bool)

(assert (=> d!1618407 (= c!860753 (not (forall!13451 z!4747 lambda!249572)))))

(assert (=> d!1618407 (= (lostCauseZipper!949 z!4747) lt!2081490)))

(declare-fun Unit!149407 () Unit!149405)

(assert (=> b!5029246 (= e!3141760 Unit!149407)))

(declare-fun lt!2081493 () List!58334)

(assert (=> b!5029246 (= lt!2081493 call!350907)))

(declare-fun lt!2081489 () Unit!149405)

(declare-fun lemmaForallThenNotExists!265 (List!58334 Int) Unit!149405)

(assert (=> b!5029246 (= lt!2081489 (lemmaForallThenNotExists!265 lt!2081493 lambda!249572))))

(declare-fun call!350906 () Bool)

(assert (=> b!5029246 (not call!350906)))

(declare-fun lt!2081488 () Unit!149405)

(assert (=> b!5029246 (= lt!2081488 lt!2081489)))

(declare-fun Unit!149408 () Unit!149405)

(assert (=> b!5029245 (= e!3141760 Unit!149408)))

(declare-fun lt!2081494 () List!58334)

(assert (=> b!5029245 (= lt!2081494 call!350907)))

(declare-fun lt!2081495 () Unit!149405)

(declare-fun lemmaNotForallThenExists!282 (List!58334 Int) Unit!149405)

(assert (=> b!5029245 (= lt!2081495 (lemmaNotForallThenExists!282 lt!2081494 lambda!249572))))

(assert (=> b!5029245 call!350906))

(declare-fun lt!2081491 () Unit!149405)

(assert (=> b!5029245 (= lt!2081491 lt!2081495)))

(declare-fun bm!350902 () Bool)

(declare-fun exists!1412 (List!58334 Int) Bool)

(assert (=> bm!350902 (= call!350906 (exists!1412 (ite c!860753 lt!2081494 lt!2081493) (ite c!860753 lambda!249573 lambda!249574)))))

(assert (= (and d!1618407 c!860753) b!5029245))

(assert (= (and d!1618407 (not c!860753)) b!5029246))

(assert (= (or b!5029245 b!5029246) bm!350901))

(assert (= (or b!5029245 b!5029246) bm!350902))

(declare-fun m!6064500 () Bool)

(assert (=> b!5029245 m!6064500))

(declare-fun m!6064502 () Bool)

(assert (=> d!1618407 m!6064502))

(assert (=> d!1618407 m!6064502))

(declare-fun m!6064504 () Bool)

(assert (=> d!1618407 m!6064504))

(declare-fun m!6064506 () Bool)

(assert (=> d!1618407 m!6064506))

(assert (=> d!1618407 m!6064506))

(declare-fun m!6064508 () Bool)

(assert (=> b!5029246 m!6064508))

(declare-fun m!6064510 () Bool)

(assert (=> bm!350901 m!6064510))

(declare-fun m!6064512 () Bool)

(assert (=> bm!350902 m!6064512))

(assert (=> b!5029011 d!1618407))

(declare-fun d!1618411 () Bool)

(declare-fun lt!2081504 () C!28120)

(declare-fun contains!19580 (List!58332 C!28120) Bool)

(assert (=> d!1618411 (contains!19580 lt!2081418 lt!2081504)))

(declare-fun e!3141776 () C!28120)

(assert (=> d!1618411 (= lt!2081504 e!3141776)))

(declare-fun c!860762 () Bool)

(assert (=> d!1618411 (= c!860762 (= from!1228 0))))

(declare-fun e!3141775 () Bool)

(assert (=> d!1618411 e!3141775))

(declare-fun res!2143686 () Bool)

(assert (=> d!1618411 (=> (not res!2143686) (not e!3141775))))

(assert (=> d!1618411 (= res!2143686 (<= 0 from!1228))))

(assert (=> d!1618411 (= (apply!14198 lt!2081418 from!1228) lt!2081504)))

(declare-fun b!5029269 () Bool)

(assert (=> b!5029269 (= e!3141775 (< from!1228 (size!38747 lt!2081418)))))

(declare-fun b!5029270 () Bool)

(assert (=> b!5029270 (= e!3141776 (head!10788 lt!2081418))))

(declare-fun b!5029271 () Bool)

(assert (=> b!5029271 (= e!3141776 (apply!14198 (tail!9921 lt!2081418) (- from!1228 1)))))

(assert (= (and d!1618411 res!2143686) b!5029269))

(assert (= (and d!1618411 c!860762) b!5029270))

(assert (= (and d!1618411 (not c!860762)) b!5029271))

(declare-fun m!6064514 () Bool)

(assert (=> d!1618411 m!6064514))

(assert (=> b!5029269 m!6064444))

(declare-fun m!6064516 () Bool)

(assert (=> b!5029270 m!6064516))

(declare-fun m!6064518 () Bool)

(assert (=> b!5029271 m!6064518))

(assert (=> b!5029271 m!6064518))

(declare-fun m!6064520 () Bool)

(assert (=> b!5029271 m!6064520))

(assert (=> b!5029009 d!1618411))

(declare-fun d!1618413 () Bool)

(declare-fun e!3141780 () Bool)

(assert (=> d!1618413 e!3141780))

(declare-fun res!2143687 () Bool)

(assert (=> d!1618413 (=> (not res!2143687) (not e!3141780))))

(declare-fun lt!2081505 () List!58332)

(assert (=> d!1618413 (= res!2143687 (= ((_ map implies) (content!10319 lt!2081505) (content!10319 lt!2081418)) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141778 () List!58332)

(assert (=> d!1618413 (= lt!2081505 e!3141778)))

(declare-fun c!860766 () Bool)

(assert (=> d!1618413 (= c!860766 ((_ is Nil!58208) lt!2081418))))

(assert (=> d!1618413 (= (drop!2582 lt!2081418 from!1228) lt!2081505)))

(declare-fun b!5029272 () Bool)

(declare-fun e!3141779 () Int)

(declare-fun call!350908 () Int)

(assert (=> b!5029272 (= e!3141779 call!350908)))

(declare-fun b!5029273 () Bool)

(declare-fun e!3141777 () Int)

(assert (=> b!5029273 (= e!3141777 0)))

(declare-fun b!5029274 () Bool)

(declare-fun e!3141781 () List!58332)

(assert (=> b!5029274 (= e!3141778 e!3141781)))

(declare-fun c!860764 () Bool)

(assert (=> b!5029274 (= c!860764 (<= from!1228 0))))

(declare-fun b!5029275 () Bool)

(assert (=> b!5029275 (= e!3141781 (drop!2582 (t!370740 lt!2081418) (- from!1228 1)))))

(declare-fun b!5029276 () Bool)

(assert (=> b!5029276 (= e!3141778 Nil!58208)))

(declare-fun bm!350903 () Bool)

(assert (=> bm!350903 (= call!350908 (size!38747 lt!2081418))))

(declare-fun b!5029277 () Bool)

(assert (=> b!5029277 (= e!3141781 lt!2081418)))

(declare-fun b!5029278 () Bool)

(assert (=> b!5029278 (= e!3141780 (= (size!38747 lt!2081505) e!3141779))))

(declare-fun c!860765 () Bool)

(assert (=> b!5029278 (= c!860765 (<= from!1228 0))))

(declare-fun b!5029279 () Bool)

(assert (=> b!5029279 (= e!3141779 e!3141777)))

(declare-fun c!860763 () Bool)

(assert (=> b!5029279 (= c!860763 (>= from!1228 call!350908))))

(declare-fun b!5029280 () Bool)

(assert (=> b!5029280 (= e!3141777 (- call!350908 from!1228))))

(assert (= (and d!1618413 c!860766) b!5029276))

(assert (= (and d!1618413 (not c!860766)) b!5029274))

(assert (= (and b!5029274 c!860764) b!5029277))

(assert (= (and b!5029274 (not c!860764)) b!5029275))

(assert (= (and d!1618413 res!2143687) b!5029278))

(assert (= (and b!5029278 c!860765) b!5029272))

(assert (= (and b!5029278 (not c!860765)) b!5029279))

(assert (= (and b!5029279 c!860763) b!5029273))

(assert (= (and b!5029279 (not c!860763)) b!5029280))

(assert (= (or b!5029272 b!5029279 b!5029280) bm!350903))

(declare-fun m!6064522 () Bool)

(assert (=> d!1618413 m!6064522))

(assert (=> d!1618413 m!6064440))

(declare-fun m!6064524 () Bool)

(assert (=> b!5029275 m!6064524))

(assert (=> bm!350903 m!6064444))

(declare-fun m!6064526 () Bool)

(assert (=> b!5029278 m!6064526))

(assert (=> b!5029009 d!1618413))

(declare-fun b!5029281 () Bool)

(declare-fun e!3141784 () Int)

(assert (=> b!5029281 (= e!3141784 0)))

(declare-fun b!5029282 () Bool)

(declare-fun e!3141785 () Bool)

(declare-fun lt!2081506 () List!58332)

(declare-fun e!3141783 () Int)

(assert (=> b!5029282 (= e!3141785 (= (size!38747 lt!2081506) e!3141783))))

(declare-fun c!860767 () Bool)

(assert (=> b!5029282 (= c!860767 (<= 0 0))))

(declare-fun b!5029283 () Bool)

(declare-fun e!3141782 () List!58332)

(assert (=> b!5029283 (= e!3141782 Nil!58208)))

(declare-fun b!5029284 () Bool)

(assert (=> b!5029284 (= e!3141782 (Cons!58208 (h!64656 lt!2081413) (take!782 (t!370740 lt!2081413) (- 0 1))))))

(declare-fun d!1618415 () Bool)

(assert (=> d!1618415 e!3141785))

(declare-fun res!2143688 () Bool)

(assert (=> d!1618415 (=> (not res!2143688) (not e!3141785))))

(assert (=> d!1618415 (= res!2143688 (= ((_ map implies) (content!10319 lt!2081506) (content!10319 lt!2081413)) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618415 (= lt!2081506 e!3141782)))

(declare-fun c!860769 () Bool)

(assert (=> d!1618415 (= c!860769 (or ((_ is Nil!58208) lt!2081413) (<= 0 0)))))

(assert (=> d!1618415 (= (take!782 lt!2081413 0) lt!2081506)))

(declare-fun b!5029285 () Bool)

(assert (=> b!5029285 (= e!3141784 (size!38747 lt!2081413))))

(declare-fun b!5029286 () Bool)

(assert (=> b!5029286 (= e!3141783 0)))

(declare-fun b!5029287 () Bool)

(assert (=> b!5029287 (= e!3141783 e!3141784)))

(declare-fun c!860768 () Bool)

(assert (=> b!5029287 (= c!860768 (>= 0 (size!38747 lt!2081413)))))

(assert (= (and d!1618415 c!860769) b!5029283))

(assert (= (and d!1618415 (not c!860769)) b!5029284))

(assert (= (and d!1618415 res!2143688) b!5029282))

(assert (= (and b!5029282 c!860767) b!5029286))

(assert (= (and b!5029282 (not c!860767)) b!5029287))

(assert (= (and b!5029287 c!860768) b!5029285))

(assert (= (and b!5029287 (not c!860768)) b!5029281))

(assert (=> b!5029285 m!6064378))

(declare-fun m!6064528 () Bool)

(assert (=> d!1618415 m!6064528))

(assert (=> d!1618415 m!6064382))

(declare-fun m!6064530 () Bool)

(assert (=> b!5029282 m!6064530))

(assert (=> b!5029287 m!6064378))

(declare-fun m!6064532 () Bool)

(assert (=> b!5029284 m!6064532))

(assert (=> b!5029009 d!1618415))

(declare-fun d!1618417 () Bool)

(assert (=> d!1618417 (= (Cons!58208 (apply!14198 lt!2081418 from!1228) (take!782 (drop!2582 lt!2081418 (+ from!1228 1)) 0)) (take!782 (drop!2582 lt!2081418 from!1228) (+ 0 1)))))

(declare-fun lt!2081513 () Unit!149405)

(declare-fun choose!37215 (List!58332 Int Int) Unit!149405)

(assert (=> d!1618417 (= lt!2081513 (choose!37215 lt!2081418 from!1228 0))))

(declare-fun e!3141798 () Bool)

(assert (=> d!1618417 e!3141798))

(declare-fun res!2143694 () Bool)

(assert (=> d!1618417 (=> (not res!2143694) (not e!3141798))))

(assert (=> d!1618417 (= res!2143694 (>= from!1228 0))))

(assert (=> d!1618417 (= (lemmaDropTakeAddOneLeft!100 lt!2081418 from!1228 0) lt!2081513)))

(declare-fun b!5029307 () Bool)

(assert (=> b!5029307 (= e!3141798 (< from!1228 (size!38747 lt!2081418)))))

(assert (= (and d!1618417 res!2143694) b!5029307))

(declare-fun m!6064552 () Bool)

(assert (=> d!1618417 m!6064552))

(assert (=> d!1618417 m!6064300))

(declare-fun m!6064554 () Bool)

(assert (=> d!1618417 m!6064554))

(declare-fun m!6064556 () Bool)

(assert (=> d!1618417 m!6064556))

(assert (=> d!1618417 m!6064294))

(assert (=> d!1618417 m!6064552))

(declare-fun m!6064558 () Bool)

(assert (=> d!1618417 m!6064558))

(assert (=> d!1618417 m!6064300))

(assert (=> b!5029307 m!6064444))

(assert (=> b!5029009 d!1618417))

(declare-fun b!5029308 () Bool)

(declare-fun e!3141801 () Int)

(assert (=> b!5029308 (= e!3141801 1)))

(declare-fun b!5029309 () Bool)

(declare-fun e!3141802 () Bool)

(declare-fun lt!2081514 () List!58332)

(declare-fun e!3141800 () Int)

(assert (=> b!5029309 (= e!3141802 (= (size!38747 lt!2081514) e!3141800))))

(declare-fun c!860777 () Bool)

(assert (=> b!5029309 (= c!860777 (<= 1 0))))

(declare-fun b!5029310 () Bool)

(declare-fun e!3141799 () List!58332)

(assert (=> b!5029310 (= e!3141799 Nil!58208)))

(declare-fun b!5029311 () Bool)

(assert (=> b!5029311 (= e!3141799 (Cons!58208 (h!64656 lt!2081419) (take!782 (t!370740 lt!2081419) (- 1 1))))))

(declare-fun d!1618425 () Bool)

(assert (=> d!1618425 e!3141802))

(declare-fun res!2143695 () Bool)

(assert (=> d!1618425 (=> (not res!2143695) (not e!3141802))))

(assert (=> d!1618425 (= res!2143695 (= ((_ map implies) (content!10319 lt!2081514) (content!10319 lt!2081419)) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618425 (= lt!2081514 e!3141799)))

(declare-fun c!860779 () Bool)

(assert (=> d!1618425 (= c!860779 (or ((_ is Nil!58208) lt!2081419) (<= 1 0)))))

(assert (=> d!1618425 (= (take!782 lt!2081419 1) lt!2081514)))

(declare-fun b!5029312 () Bool)

(assert (=> b!5029312 (= e!3141801 (size!38747 lt!2081419))))

(declare-fun b!5029313 () Bool)

(assert (=> b!5029313 (= e!3141800 0)))

(declare-fun b!5029314 () Bool)

(assert (=> b!5029314 (= e!3141800 e!3141801)))

(declare-fun c!860778 () Bool)

(assert (=> b!5029314 (= c!860778 (>= 1 (size!38747 lt!2081419)))))

(assert (= (and d!1618425 c!860779) b!5029310))

(assert (= (and d!1618425 (not c!860779)) b!5029311))

(assert (= (and d!1618425 res!2143695) b!5029309))

(assert (= (and b!5029309 c!860777) b!5029313))

(assert (= (and b!5029309 (not c!860777)) b!5029314))

(assert (= (and b!5029314 c!860778) b!5029312))

(assert (= (and b!5029314 (not c!860778)) b!5029308))

(assert (=> b!5029312 m!6064322))

(declare-fun m!6064560 () Bool)

(assert (=> d!1618425 m!6064560))

(assert (=> d!1618425 m!6064326))

(declare-fun m!6064562 () Bool)

(assert (=> b!5029309 m!6064562))

(assert (=> b!5029314 m!6064322))

(declare-fun m!6064564 () Bool)

(assert (=> b!5029311 m!6064564))

(assert (=> b!5029009 d!1618425))

(declare-fun condSetEmpty!28989 () Bool)

(assert (=> setNonEmpty!28986 (= condSetEmpty!28989 (= setRest!28986 ((as const (Array Context!6720 Bool)) false)))))

(declare-fun setRes!28989 () Bool)

(assert (=> setNonEmpty!28986 (= tp!1409259 setRes!28989)))

(declare-fun setIsEmpty!28989 () Bool)

(assert (=> setIsEmpty!28989 setRes!28989))

(declare-fun e!3141807 () Bool)

(declare-fun setElem!28989 () Context!6720)

(declare-fun tp!1409265 () Bool)

(declare-fun setNonEmpty!28989 () Bool)

(assert (=> setNonEmpty!28989 (= setRes!28989 (and tp!1409265 (inv!76805 setElem!28989) e!3141807))))

(declare-fun setRest!28989 () (InoxSet Context!6720))

(assert (=> setNonEmpty!28989 (= setRest!28986 ((_ map or) (store ((as const (Array Context!6720 Bool)) false) setElem!28989 true) setRest!28989))))

(declare-fun b!5029321 () Bool)

(declare-fun tp!1409266 () Bool)

(assert (=> b!5029321 (= e!3141807 tp!1409266)))

(assert (= (and setNonEmpty!28986 condSetEmpty!28989) setIsEmpty!28989))

(assert (= (and setNonEmpty!28986 (not condSetEmpty!28989)) setNonEmpty!28989))

(assert (= setNonEmpty!28989 b!5029321))

(declare-fun m!6064566 () Bool)

(assert (=> setNonEmpty!28989 m!6064566))

(declare-fun b!5029327 () Bool)

(declare-fun e!3141811 () Bool)

(declare-fun tp!1409271 () Bool)

(declare-fun tp!1409272 () Bool)

(assert (=> b!5029327 (= e!3141811 (and tp!1409271 tp!1409272))))

(assert (=> b!5029010 (= tp!1409258 e!3141811)))

(assert (= (and b!5029010 ((_ is Cons!58209) (exprs!3860 setElem!28986))) b!5029327))

(declare-fun b!5029336 () Bool)

(declare-fun tp!1409279 () Bool)

(declare-fun e!3141817 () Bool)

(declare-fun tp!1409281 () Bool)

(assert (=> b!5029336 (= e!3141817 (and (inv!76807 (left!42588 (c!860649 totalInput!1141))) tp!1409281 (inv!76807 (right!42918 (c!860649 totalInput!1141))) tp!1409279))))

(declare-fun b!5029338 () Bool)

(declare-fun e!3141816 () Bool)

(declare-fun tp!1409280 () Bool)

(assert (=> b!5029338 (= e!3141816 tp!1409280)))

(declare-fun b!5029337 () Bool)

(declare-fun inv!76812 (IArray!30969) Bool)

(assert (=> b!5029337 (= e!3141817 (and (inv!76812 (xs!18780 (c!860649 totalInput!1141))) e!3141816))))

(assert (=> b!5029015 (= tp!1409260 (and (inv!76807 (c!860649 totalInput!1141)) e!3141817))))

(assert (= (and b!5029015 ((_ is Node!15454) (c!860649 totalInput!1141))) b!5029336))

(assert (= b!5029337 b!5029338))

(assert (= (and b!5029015 ((_ is Leaf!25635) (c!860649 totalInput!1141))) b!5029337))

(declare-fun m!6064572 () Bool)

(assert (=> b!5029336 m!6064572))

(declare-fun m!6064574 () Bool)

(assert (=> b!5029336 m!6064574))

(declare-fun m!6064576 () Bool)

(assert (=> b!5029337 m!6064576))

(assert (=> b!5029015 m!6064278))

(check-sat (not b!5029074) (not b!5029159) (not b!5029110) (not b!5029045) (not d!1618355) (not d!1618377) (not b!5029312) (not b!5029278) (not d!1618425) (not setNonEmpty!28989) (not b!5029165) (not b!5029154) (not d!1618391) (not b!5029287) (not b!5029194) (not b!5029035) (not bm!350903) (not d!1618387) (not b!5029161) (not d!1618405) (not b!5029064) (not bm!350902) (not b!5029285) (not b!5029307) (not b!5029033) (not b!5029073) (not b!5029232) (not b!5029155) (not b!5029116) (not d!1618389) (not b!5029270) (not b!5029311) (not d!1618363) (not d!1618375) (not b!5029067) (not b!5029015) (not b!5029284) (not d!1618371) (not d!1618407) (not b!5029234) (not d!1618359) (not d!1618403) (not b!5029309) (not b!5029069) (not bm!350895) (not d!1618369) (not b!5029160) (not d!1618413) (not b!5029314) (not b!5029117) (not d!1618353) (not d!1618411) (not b!5029321) (not b!5029337) (not d!1618415) (not b!5029269) (not d!1618417) (not b!5029187) (not b!5029114) (not b!5029271) (not b!5029230) (not b!5029282) (not b!5029233) (not b!5029071) (not b!5029046) (not b!5029062) (not b!5029107) (not b!5029039) (not b!5029275) (not b!5029327) (not b!5029246) (not d!1618361) (not b!5029119) (not bm!350901) (not bm!350892) (not b!5029034) (not b!5029076) (not d!1618347) (not b!5029336) (not b!5029068) (not b!5029245) (not b!5029191) (not d!1618357) (not b!5029065) (not b!5029338))
(check-sat)
(get-model)

(declare-fun d!1618447 () Bool)

(declare-fun lt!2081550 () Int)

(assert (=> d!1618447 (>= lt!2081550 0)))

(declare-fun e!3141862 () Int)

(assert (=> d!1618447 (= lt!2081550 e!3141862)))

(declare-fun c!860811 () Bool)

(assert (=> d!1618447 (= c!860811 ((_ is Nil!58208) (list!18805 totalInput!1141)))))

(assert (=> d!1618447 (= (size!38747 (list!18805 totalInput!1141)) lt!2081550)))

(declare-fun b!5029411 () Bool)

(assert (=> b!5029411 (= e!3141862 0)))

(declare-fun b!5029412 () Bool)

(assert (=> b!5029412 (= e!3141862 (+ 1 (size!38747 (t!370740 (list!18805 totalInput!1141)))))))

(assert (= (and d!1618447 c!860811) b!5029411))

(assert (= (and d!1618447 (not c!860811)) b!5029412))

(declare-fun m!6064666 () Bool)

(assert (=> b!5029412 m!6064666))

(assert (=> d!1618371 d!1618447))

(assert (=> d!1618371 d!1618369))

(declare-fun d!1618449 () Bool)

(declare-fun lt!2081553 () Int)

(assert (=> d!1618449 (= lt!2081553 (size!38747 (list!18806 (c!860649 totalInput!1141))))))

(assert (=> d!1618449 (= lt!2081553 (ite ((_ is Empty!15454) (c!860649 totalInput!1141)) 0 (ite ((_ is Leaf!25635) (c!860649 totalInput!1141)) (csize!31139 (c!860649 totalInput!1141)) (csize!31138 (c!860649 totalInput!1141)))))))

(assert (=> d!1618449 (= (size!38750 (c!860649 totalInput!1141)) lt!2081553)))

(declare-fun bs!1188291 () Bool)

(assert (= bs!1188291 d!1618449))

(assert (=> bs!1188291 m!6064370))

(assert (=> bs!1188291 m!6064370))

(declare-fun m!6064668 () Bool)

(assert (=> bs!1188291 m!6064668))

(assert (=> d!1618371 d!1618449))

(declare-fun d!1618451 () Bool)

(declare-fun lt!2081556 () Bool)

(assert (=> d!1618451 (= lt!2081556 (exists!1412 (toList!8133 lt!2081411) lambda!249547))))

(declare-fun choose!37216 ((InoxSet Context!6720) Int) Bool)

(assert (=> d!1618451 (= lt!2081556 (choose!37216 lt!2081411 lambda!249547))))

(assert (=> d!1618451 (= (exists!1410 lt!2081411 lambda!249547) lt!2081556)))

(declare-fun bs!1188292 () Bool)

(assert (= bs!1188292 d!1618451))

(declare-fun m!6064670 () Bool)

(assert (=> bs!1188292 m!6064670))

(assert (=> bs!1188292 m!6064670))

(declare-fun m!6064672 () Bool)

(assert (=> bs!1188292 m!6064672))

(declare-fun m!6064674 () Bool)

(assert (=> bs!1188292 m!6064674))

(assert (=> d!1618347 d!1618451))

(declare-fun d!1618453 () Bool)

(declare-fun lt!2081557 () Int)

(assert (=> d!1618453 (>= lt!2081557 0)))

(declare-fun e!3141863 () Int)

(assert (=> d!1618453 (= lt!2081557 e!3141863)))

(declare-fun c!860812 () Bool)

(assert (=> d!1618453 (= c!860812 ((_ is Nil!58208) (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))

(assert (=> d!1618453 (= (size!38747 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) lt!2081557)))

(declare-fun b!5029413 () Bool)

(assert (=> b!5029413 (= e!3141863 0)))

(declare-fun b!5029414 () Bool)

(assert (=> b!5029414 (= e!3141863 (+ 1 (size!38747 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1618453 c!860812) b!5029413))

(assert (= (and d!1618453 (not c!860812)) b!5029414))

(declare-fun m!6064676 () Bool)

(assert (=> b!5029414 m!6064676))

(assert (=> b!5029076 d!1618453))

(declare-fun d!1618455 () Bool)

(declare-fun lt!2081558 () C!28120)

(assert (=> d!1618455 (contains!19580 (tail!9921 lt!2081418) lt!2081558)))

(declare-fun e!3141865 () C!28120)

(assert (=> d!1618455 (= lt!2081558 e!3141865)))

(declare-fun c!860813 () Bool)

(assert (=> d!1618455 (= c!860813 (= (- from!1228 1) 0))))

(declare-fun e!3141864 () Bool)

(assert (=> d!1618455 e!3141864))

(declare-fun res!2143704 () Bool)

(assert (=> d!1618455 (=> (not res!2143704) (not e!3141864))))

(assert (=> d!1618455 (= res!2143704 (<= 0 (- from!1228 1)))))

(assert (=> d!1618455 (= (apply!14198 (tail!9921 lt!2081418) (- from!1228 1)) lt!2081558)))

(declare-fun b!5029415 () Bool)

(assert (=> b!5029415 (= e!3141864 (< (- from!1228 1) (size!38747 (tail!9921 lt!2081418))))))

(declare-fun b!5029416 () Bool)

(assert (=> b!5029416 (= e!3141865 (head!10788 (tail!9921 lt!2081418)))))

(declare-fun b!5029417 () Bool)

(assert (=> b!5029417 (= e!3141865 (apply!14198 (tail!9921 (tail!9921 lt!2081418)) (- (- from!1228 1) 1)))))

(assert (= (and d!1618455 res!2143704) b!5029415))

(assert (= (and d!1618455 c!860813) b!5029416))

(assert (= (and d!1618455 (not c!860813)) b!5029417))

(assert (=> d!1618455 m!6064518))

(declare-fun m!6064678 () Bool)

(assert (=> d!1618455 m!6064678))

(assert (=> b!5029415 m!6064518))

(declare-fun m!6064680 () Bool)

(assert (=> b!5029415 m!6064680))

(assert (=> b!5029416 m!6064518))

(declare-fun m!6064682 () Bool)

(assert (=> b!5029416 m!6064682))

(assert (=> b!5029417 m!6064518))

(declare-fun m!6064684 () Bool)

(assert (=> b!5029417 m!6064684))

(assert (=> b!5029417 m!6064684))

(declare-fun m!6064686 () Bool)

(assert (=> b!5029417 m!6064686))

(assert (=> b!5029271 d!1618455))

(declare-fun d!1618457 () Bool)

(assert (=> d!1618457 (= (tail!9921 lt!2081418) (t!370740 lt!2081418))))

(assert (=> b!5029271 d!1618457))

(declare-fun d!1618459 () Bool)

(declare-fun lt!2081559 () Int)

(assert (=> d!1618459 (>= lt!2081559 0)))

(declare-fun e!3141866 () Int)

(assert (=> d!1618459 (= lt!2081559 e!3141866)))

(declare-fun c!860814 () Bool)

(assert (=> d!1618459 (= c!860814 ((_ is Nil!58208) lt!2081418))))

(assert (=> d!1618459 (= (size!38747 lt!2081418) lt!2081559)))

(declare-fun b!5029418 () Bool)

(assert (=> b!5029418 (= e!3141866 0)))

(declare-fun b!5029419 () Bool)

(assert (=> b!5029419 (= e!3141866 (+ 1 (size!38747 (t!370740 lt!2081418))))))

(assert (= (and d!1618459 c!860814) b!5029418))

(assert (= (and d!1618459 (not c!860814)) b!5029419))

(declare-fun m!6064688 () Bool)

(assert (=> b!5029419 m!6064688))

(assert (=> b!5029269 d!1618459))

(assert (=> b!5029074 d!1618453))

(assert (=> b!5029035 d!1618371))

(declare-fun b!5029432 () Bool)

(declare-fun e!3141872 () Bool)

(declare-fun e!3141871 () Bool)

(assert (=> b!5029432 (= e!3141872 e!3141871)))

(declare-fun res!2143717 () Bool)

(assert (=> b!5029432 (=> (not res!2143717) (not e!3141871))))

(declare-fun height!2047 (Conc!15454) Int)

(assert (=> b!5029432 (= res!2143717 (<= (- 1) (- (height!2047 (left!42588 (c!860649 totalInput!1141))) (height!2047 (right!42918 (c!860649 totalInput!1141))))))))

(declare-fun b!5029433 () Bool)

(declare-fun res!2143722 () Bool)

(assert (=> b!5029433 (=> (not res!2143722) (not e!3141871))))

(assert (=> b!5029433 (= res!2143722 (isBalanced!4315 (right!42918 (c!860649 totalInput!1141))))))

(declare-fun b!5029435 () Bool)

(declare-fun res!2143719 () Bool)

(assert (=> b!5029435 (=> (not res!2143719) (not e!3141871))))

(assert (=> b!5029435 (= res!2143719 (isBalanced!4315 (left!42588 (c!860649 totalInput!1141))))))

(declare-fun b!5029434 () Bool)

(declare-fun res!2143721 () Bool)

(assert (=> b!5029434 (=> (not res!2143721) (not e!3141871))))

(declare-fun isEmpty!31478 (Conc!15454) Bool)

(assert (=> b!5029434 (= res!2143721 (not (isEmpty!31478 (left!42588 (c!860649 totalInput!1141)))))))

(declare-fun d!1618461 () Bool)

(declare-fun res!2143718 () Bool)

(assert (=> d!1618461 (=> res!2143718 e!3141872)))

(assert (=> d!1618461 (= res!2143718 (not ((_ is Node!15454) (c!860649 totalInput!1141))))))

(assert (=> d!1618461 (= (isBalanced!4315 (c!860649 totalInput!1141)) e!3141872)))

(declare-fun b!5029436 () Bool)

(declare-fun res!2143720 () Bool)

(assert (=> b!5029436 (=> (not res!2143720) (not e!3141871))))

(assert (=> b!5029436 (= res!2143720 (<= (- (height!2047 (left!42588 (c!860649 totalInput!1141))) (height!2047 (right!42918 (c!860649 totalInput!1141)))) 1))))

(declare-fun b!5029437 () Bool)

(assert (=> b!5029437 (= e!3141871 (not (isEmpty!31478 (right!42918 (c!860649 totalInput!1141)))))))

(assert (= (and d!1618461 (not res!2143718)) b!5029432))

(assert (= (and b!5029432 res!2143717) b!5029436))

(assert (= (and b!5029436 res!2143720) b!5029435))

(assert (= (and b!5029435 res!2143719) b!5029433))

(assert (= (and b!5029433 res!2143722) b!5029434))

(assert (= (and b!5029434 res!2143721) b!5029437))

(declare-fun m!6064690 () Bool)

(assert (=> b!5029437 m!6064690))

(declare-fun m!6064692 () Bool)

(assert (=> b!5029434 m!6064692))

(declare-fun m!6064694 () Bool)

(assert (=> b!5029435 m!6064694))

(declare-fun m!6064696 () Bool)

(assert (=> b!5029436 m!6064696))

(declare-fun m!6064698 () Bool)

(assert (=> b!5029436 m!6064698))

(assert (=> b!5029432 m!6064696))

(assert (=> b!5029432 m!6064698))

(declare-fun m!6064700 () Bool)

(assert (=> b!5029433 m!6064700))

(assert (=> d!1618357 d!1618461))

(declare-fun d!1618463 () Bool)

(assert (=> d!1618463 (= (isEmpty!31475 (getLanguageWitness!753 z!4747)) (not ((_ is Some!14611) (getLanguageWitness!753 z!4747))))))

(assert (=> d!1618407 d!1618463))

(declare-fun bs!1188293 () Bool)

(declare-fun d!1618465 () Bool)

(assert (= bs!1188293 (and d!1618465 d!1618347)))

(declare-fun lambda!249599 () Int)

(assert (=> bs!1188293 (not (= lambda!249599 lambda!249547))))

(declare-fun bs!1188294 () Bool)

(assert (= bs!1188294 (and d!1618465 d!1618407)))

(assert (=> bs!1188294 (not (= lambda!249599 lambda!249572))))

(declare-fun bs!1188295 () Bool)

(assert (= bs!1188295 (and d!1618465 b!5029245)))

(assert (=> bs!1188295 (= lambda!249599 lambda!249573)))

(declare-fun bs!1188296 () Bool)

(assert (= bs!1188296 (and d!1618465 b!5029246)))

(assert (=> bs!1188296 (= lambda!249599 lambda!249574)))

(declare-fun lt!2081562 () Option!14612)

(declare-fun isDefined!11496 (Option!14612) Bool)

(assert (=> d!1618465 (= (isDefined!11496 lt!2081562) (exists!1410 z!4747 lambda!249599))))

(declare-fun e!3141875 () Option!14612)

(assert (=> d!1618465 (= lt!2081562 e!3141875)))

(declare-fun c!860823 () Bool)

(assert (=> d!1618465 (= c!860823 (exists!1410 z!4747 lambda!249599))))

(assert (=> d!1618465 (= (getLanguageWitness!753 z!4747) lt!2081562)))

(declare-fun b!5029442 () Bool)

(declare-fun getLanguageWitness!755 (Context!6720) Option!14612)

(declare-fun getWitness!664 ((InoxSet Context!6720) Int) Context!6720)

(assert (=> b!5029442 (= e!3141875 (getLanguageWitness!755 (getWitness!664 z!4747 lambda!249599)))))

(declare-fun b!5029443 () Bool)

(assert (=> b!5029443 (= e!3141875 None!14611)))

(assert (= (and d!1618465 c!860823) b!5029442))

(assert (= (and d!1618465 (not c!860823)) b!5029443))

(declare-fun m!6064702 () Bool)

(assert (=> d!1618465 m!6064702))

(declare-fun m!6064704 () Bool)

(assert (=> d!1618465 m!6064704))

(assert (=> d!1618465 m!6064704))

(declare-fun m!6064706 () Bool)

(assert (=> b!5029442 m!6064706))

(assert (=> b!5029442 m!6064706))

(declare-fun m!6064708 () Bool)

(assert (=> b!5029442 m!6064708))

(assert (=> d!1618407 d!1618465))

(declare-fun d!1618467 () Bool)

(declare-fun lt!2081565 () Bool)

(declare-fun forall!13454 (List!58334 Int) Bool)

(assert (=> d!1618467 (= lt!2081565 (forall!13454 (toList!8133 z!4747) lambda!249572))))

(declare-fun choose!37217 ((InoxSet Context!6720) Int) Bool)

(assert (=> d!1618467 (= lt!2081565 (choose!37217 z!4747 lambda!249572))))

(assert (=> d!1618467 (= (forall!13451 z!4747 lambda!249572) lt!2081565)))

(declare-fun bs!1188297 () Bool)

(assert (= bs!1188297 d!1618467))

(assert (=> bs!1188297 m!6064510))

(assert (=> bs!1188297 m!6064510))

(declare-fun m!6064710 () Bool)

(assert (=> bs!1188297 m!6064710))

(declare-fun m!6064712 () Bool)

(assert (=> bs!1188297 m!6064712))

(assert (=> d!1618407 d!1618467))

(assert (=> b!5029033 d!1618407))

(declare-fun bs!1188298 () Bool)

(declare-fun d!1618469 () Bool)

(assert (= bs!1188298 (and d!1618469 d!1618465)))

(declare-fun lambda!249602 () Int)

(assert (=> bs!1188298 (not (= lambda!249602 lambda!249599))))

(declare-fun bs!1188299 () Bool)

(assert (= bs!1188299 (and d!1618469 b!5029245)))

(assert (=> bs!1188299 (not (= lambda!249602 lambda!249573))))

(declare-fun bs!1188300 () Bool)

(assert (= bs!1188300 (and d!1618469 d!1618407)))

(assert (=> bs!1188300 (not (= lambda!249602 lambda!249572))))

(declare-fun bs!1188301 () Bool)

(assert (= bs!1188301 (and d!1618469 d!1618347)))

(assert (=> bs!1188301 (not (= lambda!249602 lambda!249547))))

(declare-fun bs!1188302 () Bool)

(assert (= bs!1188302 (and d!1618469 b!5029246)))

(assert (=> bs!1188302 (not (= lambda!249602 lambda!249574))))

(assert (=> d!1618469 true))

(declare-fun order!26715 () Int)

(declare-fun dynLambda!23539 (Int Int) Int)

(assert (=> d!1618469 (< (dynLambda!23539 order!26715 (ite c!860753 lambda!249573 lambda!249574)) (dynLambda!23539 order!26715 lambda!249602))))

(assert (=> d!1618469 (= (exists!1412 (ite c!860753 lt!2081494 lt!2081493) (ite c!860753 lambda!249573 lambda!249574)) (not (forall!13454 (ite c!860753 lt!2081494 lt!2081493) lambda!249602)))))

(declare-fun bs!1188303 () Bool)

(assert (= bs!1188303 d!1618469))

(declare-fun m!6064714 () Bool)

(assert (=> bs!1188303 m!6064714))

(assert (=> bm!350902 d!1618469))

(declare-fun d!1618471 () Bool)

(declare-fun res!2143727 () Bool)

(declare-fun e!3141880 () Bool)

(assert (=> d!1618471 (=> res!2143727 e!3141880)))

(assert (=> d!1618471 (= res!2143727 ((_ is Nil!58209) (exprs!3860 setElem!28986)))))

(assert (=> d!1618471 (= (forall!13450 (exprs!3860 setElem!28986) lambda!249559) e!3141880)))

(declare-fun b!5029450 () Bool)

(declare-fun e!3141881 () Bool)

(assert (=> b!5029450 (= e!3141880 e!3141881)))

(declare-fun res!2143728 () Bool)

(assert (=> b!5029450 (=> (not res!2143728) (not e!3141881))))

(declare-fun dynLambda!23540 (Int Regex!13935) Bool)

(assert (=> b!5029450 (= res!2143728 (dynLambda!23540 lambda!249559 (h!64657 (exprs!3860 setElem!28986))))))

(declare-fun b!5029451 () Bool)

(assert (=> b!5029451 (= e!3141881 (forall!13450 (t!370741 (exprs!3860 setElem!28986)) lambda!249559))))

(assert (= (and d!1618471 (not res!2143727)) b!5029450))

(assert (= (and b!5029450 res!2143728) b!5029451))

(declare-fun b_lambda!198705 () Bool)

(assert (=> (not b_lambda!198705) (not b!5029450)))

(declare-fun m!6064716 () Bool)

(assert (=> b!5029450 m!6064716))

(declare-fun m!6064718 () Bool)

(assert (=> b!5029451 m!6064718))

(assert (=> d!1618405 d!1618471))

(declare-fun d!1618473 () Bool)

(declare-fun lt!2081566 () Int)

(assert (=> d!1618473 (>= lt!2081566 0)))

(declare-fun e!3141882 () Int)

(assert (=> d!1618473 (= lt!2081566 e!3141882)))

(declare-fun c!860824 () Bool)

(assert (=> d!1618473 (= c!860824 ((_ is Nil!58208) lt!2081419))))

(assert (=> d!1618473 (= (size!38747 lt!2081419) lt!2081566)))

(declare-fun b!5029452 () Bool)

(assert (=> b!5029452 (= e!3141882 0)))

(declare-fun b!5029453 () Bool)

(assert (=> b!5029453 (= e!3141882 (+ 1 (size!38747 (t!370740 lt!2081419))))))

(assert (= (and d!1618473 c!860824) b!5029452))

(assert (= (and d!1618473 (not c!860824)) b!5029453))

(declare-fun m!6064720 () Bool)

(assert (=> b!5029453 m!6064720))

(assert (=> b!5029312 d!1618473))

(declare-fun bs!1188304 () Bool)

(declare-fun d!1618475 () Bool)

(assert (= bs!1188304 (and d!1618475 d!1618465)))

(declare-fun lambda!249605 () Int)

(assert (=> bs!1188304 (not (= lambda!249605 lambda!249599))))

(declare-fun bs!1188305 () Bool)

(assert (= bs!1188305 (and d!1618475 d!1618469)))

(assert (=> bs!1188305 (= (= lambda!249572 (ite c!860753 lambda!249573 lambda!249574)) (= lambda!249605 lambda!249602))))

(declare-fun bs!1188306 () Bool)

(assert (= bs!1188306 (and d!1618475 b!5029245)))

(assert (=> bs!1188306 (not (= lambda!249605 lambda!249573))))

(declare-fun bs!1188307 () Bool)

(assert (= bs!1188307 (and d!1618475 d!1618407)))

(assert (=> bs!1188307 (not (= lambda!249605 lambda!249572))))

(declare-fun bs!1188308 () Bool)

(assert (= bs!1188308 (and d!1618475 d!1618347)))

(assert (=> bs!1188308 (not (= lambda!249605 lambda!249547))))

(declare-fun bs!1188309 () Bool)

(assert (= bs!1188309 (and d!1618475 b!5029246)))

(assert (=> bs!1188309 (not (= lambda!249605 lambda!249574))))

(assert (=> d!1618475 true))

(assert (=> d!1618475 (< (dynLambda!23539 order!26715 lambda!249572) (dynLambda!23539 order!26715 lambda!249605))))

(assert (=> d!1618475 (not (exists!1412 lt!2081493 lambda!249605))))

(declare-fun lt!2081569 () Unit!149405)

(declare-fun choose!37218 (List!58334 Int) Unit!149405)

(assert (=> d!1618475 (= lt!2081569 (choose!37218 lt!2081493 lambda!249572))))

(assert (=> d!1618475 (forall!13454 lt!2081493 lambda!249572)))

(assert (=> d!1618475 (= (lemmaForallThenNotExists!265 lt!2081493 lambda!249572) lt!2081569)))

(declare-fun bs!1188310 () Bool)

(assert (= bs!1188310 d!1618475))

(declare-fun m!6064722 () Bool)

(assert (=> bs!1188310 m!6064722))

(declare-fun m!6064724 () Bool)

(assert (=> bs!1188310 m!6064724))

(declare-fun m!6064726 () Bool)

(assert (=> bs!1188310 m!6064726))

(assert (=> b!5029246 d!1618475))

(declare-fun d!1618477 () Bool)

(declare-fun c!860829 () Bool)

(assert (=> d!1618477 (= c!860829 ((_ is Empty!15454) (c!860649 totalInput!1141)))))

(declare-fun e!3141889 () List!58332)

(assert (=> d!1618477 (= (list!18806 (c!860649 totalInput!1141)) e!3141889)))

(declare-fun b!5029465 () Bool)

(declare-fun e!3141890 () List!58332)

(declare-fun ++!12675 (List!58332 List!58332) List!58332)

(assert (=> b!5029465 (= e!3141890 (++!12675 (list!18806 (left!42588 (c!860649 totalInput!1141))) (list!18806 (right!42918 (c!860649 totalInput!1141)))))))

(declare-fun b!5029462 () Bool)

(assert (=> b!5029462 (= e!3141889 Nil!58208)))

(declare-fun b!5029463 () Bool)

(assert (=> b!5029463 (= e!3141889 e!3141890)))

(declare-fun c!860830 () Bool)

(assert (=> b!5029463 (= c!860830 ((_ is Leaf!25635) (c!860649 totalInput!1141)))))

(declare-fun b!5029464 () Bool)

(declare-fun list!18808 (IArray!30969) List!58332)

(assert (=> b!5029464 (= e!3141890 (list!18808 (xs!18780 (c!860649 totalInput!1141))))))

(assert (= (and d!1618477 c!860829) b!5029462))

(assert (= (and d!1618477 (not c!860829)) b!5029463))

(assert (= (and b!5029463 c!860830) b!5029464))

(assert (= (and b!5029463 (not c!860830)) b!5029465))

(declare-fun m!6064728 () Bool)

(assert (=> b!5029465 m!6064728))

(declare-fun m!6064730 () Bool)

(assert (=> b!5029465 m!6064730))

(assert (=> b!5029465 m!6064728))

(assert (=> b!5029465 m!6064730))

(declare-fun m!6064732 () Bool)

(assert (=> b!5029465 m!6064732))

(declare-fun m!6064734 () Bool)

(assert (=> b!5029464 m!6064734))

(assert (=> d!1618369 d!1618477))

(assert (=> b!5029314 d!1618473))

(declare-fun d!1618479 () Bool)

(declare-fun lt!2081570 () Int)

(assert (=> d!1618479 (>= lt!2081570 0)))

(declare-fun e!3141891 () Int)

(assert (=> d!1618479 (= lt!2081570 e!3141891)))

(declare-fun c!860831 () Bool)

(assert (=> d!1618479 (= c!860831 ((_ is Nil!58208) lt!2081433))))

(assert (=> d!1618479 (= (size!38747 lt!2081433) lt!2081570)))

(declare-fun b!5029466 () Bool)

(assert (=> b!5029466 (= e!3141891 0)))

(declare-fun b!5029467 () Bool)

(assert (=> b!5029467 (= e!3141891 (+ 1 (size!38747 (t!370740 lt!2081433))))))

(assert (= (and d!1618479 c!860831) b!5029466))

(assert (= (and d!1618479 (not c!860831)) b!5029467))

(declare-fun m!6064736 () Bool)

(assert (=> b!5029467 m!6064736))

(assert (=> b!5029062 d!1618479))

(declare-fun bs!1188311 () Bool)

(declare-fun d!1618481 () Bool)

(assert (= bs!1188311 (and d!1618481 d!1618465)))

(declare-fun lambda!249606 () Int)

(assert (=> bs!1188311 (not (= lambda!249606 lambda!249599))))

(declare-fun bs!1188312 () Bool)

(assert (= bs!1188312 (and d!1618481 d!1618469)))

(assert (=> bs!1188312 (not (= lambda!249606 lambda!249602))))

(declare-fun bs!1188313 () Bool)

(assert (= bs!1188313 (and d!1618481 d!1618475)))

(assert (=> bs!1188313 (not (= lambda!249606 lambda!249605))))

(declare-fun bs!1188314 () Bool)

(assert (= bs!1188314 (and d!1618481 b!5029245)))

(assert (=> bs!1188314 (not (= lambda!249606 lambda!249573))))

(declare-fun bs!1188315 () Bool)

(assert (= bs!1188315 (and d!1618481 d!1618407)))

(assert (=> bs!1188315 (not (= lambda!249606 lambda!249572))))

(declare-fun bs!1188316 () Bool)

(assert (= bs!1188316 (and d!1618481 d!1618347)))

(assert (=> bs!1188316 (= lambda!249606 lambda!249547)))

(declare-fun bs!1188317 () Bool)

(assert (= bs!1188317 (and d!1618481 b!5029246)))

(assert (=> bs!1188317 (not (= lambda!249606 lambda!249574))))

(assert (=> d!1618481 (= (nullableZipper!943 lt!2081428) (exists!1410 lt!2081428 lambda!249606))))

(declare-fun bs!1188318 () Bool)

(assert (= bs!1188318 d!1618481))

(declare-fun m!6064738 () Bool)

(assert (=> bs!1188318 m!6064738))

(assert (=> b!5029039 d!1618481))

(declare-fun b!5029468 () Bool)

(declare-fun e!3141894 () Int)

(assert (=> b!5029468 (= e!3141894 (- lt!2081410 1))))

(declare-fun b!5029469 () Bool)

(declare-fun e!3141895 () Bool)

(declare-fun lt!2081571 () List!58332)

(declare-fun e!3141893 () Int)

(assert (=> b!5029469 (= e!3141895 (= (size!38747 lt!2081571) e!3141893))))

(declare-fun c!860832 () Bool)

(assert (=> b!5029469 (= c!860832 (<= (- lt!2081410 1) 0))))

(declare-fun b!5029470 () Bool)

(declare-fun e!3141892 () List!58332)

(assert (=> b!5029470 (= e!3141892 Nil!58208)))

(declare-fun b!5029471 () Bool)

(assert (=> b!5029471 (= e!3141892 (Cons!58208 (h!64656 (t!370740 lt!2081413)) (take!782 (t!370740 (t!370740 lt!2081413)) (- (- lt!2081410 1) 1))))))

(declare-fun d!1618483 () Bool)

(assert (=> d!1618483 e!3141895))

(declare-fun res!2143729 () Bool)

(assert (=> d!1618483 (=> (not res!2143729) (not e!3141895))))

(assert (=> d!1618483 (= res!2143729 (= ((_ map implies) (content!10319 lt!2081571) (content!10319 (t!370740 lt!2081413))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618483 (= lt!2081571 e!3141892)))

(declare-fun c!860834 () Bool)

(assert (=> d!1618483 (= c!860834 (or ((_ is Nil!58208) (t!370740 lt!2081413)) (<= (- lt!2081410 1) 0)))))

(assert (=> d!1618483 (= (take!782 (t!370740 lt!2081413) (- lt!2081410 1)) lt!2081571)))

(declare-fun b!5029472 () Bool)

(assert (=> b!5029472 (= e!3141894 (size!38747 (t!370740 lt!2081413)))))

(declare-fun b!5029473 () Bool)

(assert (=> b!5029473 (= e!3141893 0)))

(declare-fun b!5029474 () Bool)

(assert (=> b!5029474 (= e!3141893 e!3141894)))

(declare-fun c!860833 () Bool)

(assert (=> b!5029474 (= c!860833 (>= (- lt!2081410 1) (size!38747 (t!370740 lt!2081413))))))

(assert (= (and d!1618483 c!860834) b!5029470))

(assert (= (and d!1618483 (not c!860834)) b!5029471))

(assert (= (and d!1618483 res!2143729) b!5029469))

(assert (= (and b!5029469 c!860832) b!5029473))

(assert (= (and b!5029469 (not c!860832)) b!5029474))

(assert (= (and b!5029474 c!860833) b!5029472))

(assert (= (and b!5029474 (not c!860833)) b!5029468))

(declare-fun m!6064740 () Bool)

(assert (=> b!5029472 m!6064740))

(declare-fun m!6064742 () Bool)

(assert (=> d!1618483 m!6064742))

(declare-fun m!6064744 () Bool)

(assert (=> d!1618483 m!6064744))

(declare-fun m!6064746 () Bool)

(assert (=> b!5029469 m!6064746))

(assert (=> b!5029474 m!6064740))

(declare-fun m!6064748 () Bool)

(assert (=> b!5029471 m!6064748))

(assert (=> b!5029116 d!1618483))

(declare-fun b!5029475 () Bool)

(declare-fun e!3141898 () Int)

(assert (=> b!5029475 (= e!3141898 (- 0 1))))

(declare-fun b!5029476 () Bool)

(declare-fun e!3141899 () Bool)

(declare-fun lt!2081572 () List!58332)

(declare-fun e!3141897 () Int)

(assert (=> b!5029476 (= e!3141899 (= (size!38747 lt!2081572) e!3141897))))

(declare-fun c!860835 () Bool)

(assert (=> b!5029476 (= c!860835 (<= (- 0 1) 0))))

(declare-fun b!5029477 () Bool)

(declare-fun e!3141896 () List!58332)

(assert (=> b!5029477 (= e!3141896 Nil!58208)))

(declare-fun b!5029478 () Bool)

(assert (=> b!5029478 (= e!3141896 (Cons!58208 (h!64656 (t!370740 lt!2081413)) (take!782 (t!370740 (t!370740 lt!2081413)) (- (- 0 1) 1))))))

(declare-fun d!1618485 () Bool)

(assert (=> d!1618485 e!3141899))

(declare-fun res!2143730 () Bool)

(assert (=> d!1618485 (=> (not res!2143730) (not e!3141899))))

(assert (=> d!1618485 (= res!2143730 (= ((_ map implies) (content!10319 lt!2081572) (content!10319 (t!370740 lt!2081413))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618485 (= lt!2081572 e!3141896)))

(declare-fun c!860837 () Bool)

(assert (=> d!1618485 (= c!860837 (or ((_ is Nil!58208) (t!370740 lt!2081413)) (<= (- 0 1) 0)))))

(assert (=> d!1618485 (= (take!782 (t!370740 lt!2081413) (- 0 1)) lt!2081572)))

(declare-fun b!5029479 () Bool)

(assert (=> b!5029479 (= e!3141898 (size!38747 (t!370740 lt!2081413)))))

(declare-fun b!5029480 () Bool)

(assert (=> b!5029480 (= e!3141897 0)))

(declare-fun b!5029481 () Bool)

(assert (=> b!5029481 (= e!3141897 e!3141898)))

(declare-fun c!860836 () Bool)

(assert (=> b!5029481 (= c!860836 (>= (- 0 1) (size!38747 (t!370740 lt!2081413))))))

(assert (= (and d!1618485 c!860837) b!5029477))

(assert (= (and d!1618485 (not c!860837)) b!5029478))

(assert (= (and d!1618485 res!2143730) b!5029476))

(assert (= (and b!5029476 c!860835) b!5029480))

(assert (= (and b!5029476 (not c!860835)) b!5029481))

(assert (= (and b!5029481 c!860836) b!5029479))

(assert (= (and b!5029481 (not c!860836)) b!5029475))

(assert (=> b!5029479 m!6064740))

(declare-fun m!6064750 () Bool)

(assert (=> d!1618485 m!6064750))

(assert (=> d!1618485 m!6064744))

(declare-fun m!6064752 () Bool)

(assert (=> b!5029476 m!6064752))

(assert (=> b!5029481 m!6064740))

(declare-fun m!6064754 () Bool)

(assert (=> b!5029478 m!6064754))

(assert (=> b!5029284 d!1618485))

(declare-fun d!1618487 () Bool)

(assert (=> d!1618487 (= (isEmpty!31474 Nil!58208) true)))

(assert (=> d!1618403 d!1618487))

(assert (=> b!5029065 d!1618473))

(declare-fun bs!1188319 () Bool)

(declare-fun d!1618489 () Bool)

(assert (= bs!1188319 (and d!1618489 d!1618465)))

(declare-fun lambda!249607 () Int)

(assert (=> bs!1188319 (not (= lambda!249607 lambda!249599))))

(declare-fun bs!1188320 () Bool)

(assert (= bs!1188320 (and d!1618489 d!1618481)))

(assert (=> bs!1188320 (= lambda!249607 lambda!249606)))

(declare-fun bs!1188321 () Bool)

(assert (= bs!1188321 (and d!1618489 d!1618469)))

(assert (=> bs!1188321 (not (= lambda!249607 lambda!249602))))

(declare-fun bs!1188322 () Bool)

(assert (= bs!1188322 (and d!1618489 d!1618475)))

(assert (=> bs!1188322 (not (= lambda!249607 lambda!249605))))

(declare-fun bs!1188323 () Bool)

(assert (= bs!1188323 (and d!1618489 b!5029245)))

(assert (=> bs!1188323 (not (= lambda!249607 lambda!249573))))

(declare-fun bs!1188324 () Bool)

(assert (= bs!1188324 (and d!1618489 d!1618407)))

(assert (=> bs!1188324 (not (= lambda!249607 lambda!249572))))

(declare-fun bs!1188325 () Bool)

(assert (= bs!1188325 (and d!1618489 d!1618347)))

(assert (=> bs!1188325 (= lambda!249607 lambda!249547)))

(declare-fun bs!1188326 () Bool)

(assert (= bs!1188326 (and d!1618489 b!5029246)))

(assert (=> bs!1188326 (not (= lambda!249607 lambda!249574))))

(assert (=> d!1618489 (= (nullableZipper!943 z!4747) (exists!1410 z!4747 lambda!249607))))

(declare-fun bs!1188327 () Bool)

(assert (= bs!1188327 d!1618489))

(declare-fun m!6064756 () Bool)

(assert (=> bs!1188327 m!6064756))

(assert (=> b!5029045 d!1618489))

(declare-fun d!1618491 () Bool)

(declare-fun lt!2081573 () Int)

(assert (=> d!1618491 (>= lt!2081573 0)))

(declare-fun e!3141900 () Int)

(assert (=> d!1618491 (= lt!2081573 e!3141900)))

(declare-fun c!860838 () Bool)

(assert (=> d!1618491 (= c!860838 ((_ is Nil!58208) lt!2081437))))

(assert (=> d!1618491 (= (size!38747 lt!2081437) lt!2081573)))

(declare-fun b!5029482 () Bool)

(assert (=> b!5029482 (= e!3141900 0)))

(declare-fun b!5029483 () Bool)

(assert (=> b!5029483 (= e!3141900 (+ 1 (size!38747 (t!370740 lt!2081437))))))

(assert (= (and d!1618491 c!860838) b!5029482))

(assert (= (and d!1618491 (not c!860838)) b!5029483))

(declare-fun m!6064758 () Bool)

(assert (=> b!5029483 m!6064758))

(assert (=> b!5029110 d!1618491))

(declare-fun d!1618493 () Bool)

(declare-fun choose!37219 ((InoxSet Context!6720) Int) (InoxSet Context!6720))

(assert (=> d!1618493 (= (flatMap!314 z!4747 lambda!249553) (choose!37219 z!4747 lambda!249553))))

(declare-fun bs!1188328 () Bool)

(assert (= bs!1188328 d!1618493))

(declare-fun m!6064760 () Bool)

(assert (=> bs!1188328 m!6064760))

(assert (=> d!1618391 d!1618493))

(declare-fun d!1618495 () Bool)

(declare-fun lt!2081574 () Int)

(assert (=> d!1618495 (>= lt!2081574 0)))

(declare-fun e!3141901 () Int)

(assert (=> d!1618495 (= lt!2081574 e!3141901)))

(declare-fun c!860839 () Bool)

(assert (=> d!1618495 (= c!860839 ((_ is Nil!58208) lt!2081505))))

(assert (=> d!1618495 (= (size!38747 lt!2081505) lt!2081574)))

(declare-fun b!5029484 () Bool)

(assert (=> b!5029484 (= e!3141901 0)))

(declare-fun b!5029485 () Bool)

(assert (=> b!5029485 (= e!3141901 (+ 1 (size!38747 (t!370740 lt!2081505))))))

(assert (= (and d!1618495 c!860839) b!5029484))

(assert (= (and d!1618495 (not c!860839)) b!5029485))

(declare-fun m!6064762 () Bool)

(assert (=> b!5029485 m!6064762))

(assert (=> b!5029278 d!1618495))

(declare-fun d!1618497 () Bool)

(declare-fun lt!2081575 () Int)

(assert (=> d!1618497 (>= lt!2081575 0)))

(declare-fun e!3141902 () Int)

(assert (=> d!1618497 (= lt!2081575 e!3141902)))

(declare-fun c!860840 () Bool)

(assert (=> d!1618497 (= c!860840 ((_ is Nil!58208) lt!2081444))))

(assert (=> d!1618497 (= (size!38747 lt!2081444) lt!2081575)))

(declare-fun b!5029486 () Bool)

(assert (=> b!5029486 (= e!3141902 0)))

(declare-fun b!5029487 () Bool)

(assert (=> b!5029487 (= e!3141902 (+ 1 (size!38747 (t!370740 lt!2081444))))))

(assert (= (and d!1618497 c!860840) b!5029486))

(assert (= (and d!1618497 (not c!860840)) b!5029487))

(declare-fun m!6064764 () Bool)

(assert (=> b!5029487 m!6064764))

(assert (=> b!5029114 d!1618497))

(declare-fun bs!1188329 () Bool)

(declare-fun d!1618499 () Bool)

(assert (= bs!1188329 (and d!1618499 d!1618391)))

(declare-fun lambda!249608 () Int)

(assert (=> bs!1188329 (= (= (apply!14197 totalInput!1141 (+ 1 from!1228)) lt!2081417) (= lambda!249608 lambda!249553))))

(assert (=> d!1618499 true))

(assert (=> d!1618499 (= (derivationStepZipper!730 lt!2081411 (apply!14197 totalInput!1141 (+ 1 from!1228))) (flatMap!314 lt!2081411 lambda!249608))))

(declare-fun bs!1188330 () Bool)

(assert (= bs!1188330 d!1618499))

(declare-fun m!6064766 () Bool)

(assert (=> bs!1188330 m!6064766))

(assert (=> b!5029160 d!1618499))

(declare-fun d!1618501 () Bool)

(declare-fun lt!2081576 () C!28120)

(assert (=> d!1618501 (= lt!2081576 (apply!14198 (list!18805 totalInput!1141) (+ 1 from!1228)))))

(assert (=> d!1618501 (= lt!2081576 (apply!14199 (c!860649 totalInput!1141) (+ 1 from!1228)))))

(declare-fun e!3141903 () Bool)

(assert (=> d!1618501 e!3141903))

(declare-fun res!2143731 () Bool)

(assert (=> d!1618501 (=> (not res!2143731) (not e!3141903))))

(assert (=> d!1618501 (= res!2143731 (<= 0 (+ 1 from!1228)))))

(assert (=> d!1618501 (= (apply!14197 totalInput!1141 (+ 1 from!1228)) lt!2081576)))

(declare-fun b!5029488 () Bool)

(assert (=> b!5029488 (= e!3141903 (< (+ 1 from!1228) (size!38746 totalInput!1141)))))

(assert (= (and d!1618501 res!2143731) b!5029488))

(assert (=> d!1618501 m!6064266))

(assert (=> d!1618501 m!6064266))

(declare-fun m!6064768 () Bool)

(assert (=> d!1618501 m!6064768))

(declare-fun m!6064770 () Bool)

(assert (=> d!1618501 m!6064770))

(assert (=> b!5029488 m!6064252))

(assert (=> b!5029160 d!1618501))

(declare-fun d!1618503 () Bool)

(declare-fun lt!2081579 () Int)

(assert (=> d!1618503 (and (>= lt!2081579 0) (<= lt!2081579 (- lt!2081416 (+ 1 from!1228 1))))))

(declare-fun e!3141907 () Int)

(assert (=> d!1618503 (= lt!2081579 e!3141907)))

(declare-fun c!860843 () Bool)

(declare-fun e!3141904 () Bool)

(assert (=> d!1618503 (= c!860843 e!3141904)))

(declare-fun res!2143733 () Bool)

(assert (=> d!1618503 (=> res!2143733 e!3141904)))

(assert (=> d!1618503 (= res!2143733 (= (+ 1 from!1228 1) lt!2081416))))

(declare-fun e!3141906 () Bool)

(assert (=> d!1618503 e!3141906))

(declare-fun res!2143732 () Bool)

(assert (=> d!1618503 (=> (not res!2143732) (not e!3141906))))

(assert (=> d!1618503 (= res!2143732 (>= (+ 1 from!1228 1) 0))))

(assert (=> d!1618503 (= (findLongestMatchInnerZipperFastV2!249 lt!2081457 (+ 1 from!1228 1) totalInput!1141 lt!2081416) lt!2081579)))

(declare-fun b!5029489 () Bool)

(assert (=> b!5029489 (= e!3141904 (lostCauseZipper!949 lt!2081457))))

(declare-fun b!5029490 () Bool)

(declare-fun e!3141905 () Int)

(assert (=> b!5029490 (= e!3141907 e!3141905)))

(declare-fun lt!2081577 () (InoxSet Context!6720))

(assert (=> b!5029490 (= lt!2081577 (derivationStepZipper!730 lt!2081457 (apply!14197 totalInput!1141 (+ 1 from!1228 1))))))

(declare-fun lt!2081578 () Int)

(assert (=> b!5029490 (= lt!2081578 (findLongestMatchInnerZipperFastV2!249 lt!2081577 (+ 1 from!1228 1 1) totalInput!1141 lt!2081416))))

(declare-fun c!860842 () Bool)

(assert (=> b!5029490 (= c!860842 (> lt!2081578 0))))

(declare-fun b!5029491 () Bool)

(assert (=> b!5029491 (= e!3141906 (<= (+ 1 from!1228 1) (size!38746 totalInput!1141)))))

(declare-fun b!5029492 () Bool)

(declare-fun e!3141908 () Int)

(assert (=> b!5029492 (= e!3141908 1)))

(declare-fun b!5029493 () Bool)

(assert (=> b!5029493 (= e!3141907 0)))

(declare-fun b!5029494 () Bool)

(assert (=> b!5029494 (= e!3141905 (+ 1 lt!2081578))))

(declare-fun b!5029495 () Bool)

(declare-fun c!860841 () Bool)

(assert (=> b!5029495 (= c!860841 (nullableZipper!943 lt!2081577))))

(assert (=> b!5029495 (= e!3141905 e!3141908)))

(declare-fun b!5029496 () Bool)

(assert (=> b!5029496 (= e!3141908 0)))

(assert (= (and d!1618503 res!2143732) b!5029491))

(assert (= (and d!1618503 (not res!2143733)) b!5029489))

(assert (= (and d!1618503 c!860843) b!5029493))

(assert (= (and d!1618503 (not c!860843)) b!5029490))

(assert (= (and b!5029490 c!860842) b!5029494))

(assert (= (and b!5029490 (not c!860842)) b!5029495))

(assert (= (and b!5029495 c!860841) b!5029492))

(assert (= (and b!5029495 (not c!860841)) b!5029496))

(declare-fun m!6064772 () Bool)

(assert (=> b!5029489 m!6064772))

(declare-fun m!6064774 () Bool)

(assert (=> b!5029490 m!6064774))

(assert (=> b!5029490 m!6064774))

(declare-fun m!6064776 () Bool)

(assert (=> b!5029490 m!6064776))

(declare-fun m!6064778 () Bool)

(assert (=> b!5029490 m!6064778))

(assert (=> b!5029491 m!6064252))

(declare-fun m!6064780 () Bool)

(assert (=> b!5029495 m!6064780))

(assert (=> b!5029160 d!1618503))

(declare-fun d!1618505 () Bool)

(declare-fun c!860844 () Bool)

(assert (=> d!1618505 (= c!860844 ((_ is Node!15454) (left!42588 (c!860649 totalInput!1141))))))

(declare-fun e!3141909 () Bool)

(assert (=> d!1618505 (= (inv!76807 (left!42588 (c!860649 totalInput!1141))) e!3141909)))

(declare-fun b!5029497 () Bool)

(assert (=> b!5029497 (= e!3141909 (inv!76810 (left!42588 (c!860649 totalInput!1141))))))

(declare-fun b!5029498 () Bool)

(declare-fun e!3141910 () Bool)

(assert (=> b!5029498 (= e!3141909 e!3141910)))

(declare-fun res!2143734 () Bool)

(assert (=> b!5029498 (= res!2143734 (not ((_ is Leaf!25635) (left!42588 (c!860649 totalInput!1141)))))))

(assert (=> b!5029498 (=> res!2143734 e!3141910)))

(declare-fun b!5029499 () Bool)

(assert (=> b!5029499 (= e!3141910 (inv!76811 (left!42588 (c!860649 totalInput!1141))))))

(assert (= (and d!1618505 c!860844) b!5029497))

(assert (= (and d!1618505 (not c!860844)) b!5029498))

(assert (= (and b!5029498 (not res!2143734)) b!5029499))

(declare-fun m!6064782 () Bool)

(assert (=> b!5029497 m!6064782))

(declare-fun m!6064784 () Bool)

(assert (=> b!5029499 m!6064784))

(assert (=> b!5029336 d!1618505))

(declare-fun d!1618507 () Bool)

(declare-fun c!860845 () Bool)

(assert (=> d!1618507 (= c!860845 ((_ is Node!15454) (right!42918 (c!860649 totalInput!1141))))))

(declare-fun e!3141911 () Bool)

(assert (=> d!1618507 (= (inv!76807 (right!42918 (c!860649 totalInput!1141))) e!3141911)))

(declare-fun b!5029500 () Bool)

(assert (=> b!5029500 (= e!3141911 (inv!76810 (right!42918 (c!860649 totalInput!1141))))))

(declare-fun b!5029501 () Bool)

(declare-fun e!3141912 () Bool)

(assert (=> b!5029501 (= e!3141911 e!3141912)))

(declare-fun res!2143735 () Bool)

(assert (=> b!5029501 (= res!2143735 (not ((_ is Leaf!25635) (right!42918 (c!860649 totalInput!1141)))))))

(assert (=> b!5029501 (=> res!2143735 e!3141912)))

(declare-fun b!5029502 () Bool)

(assert (=> b!5029502 (= e!3141912 (inv!76811 (right!42918 (c!860649 totalInput!1141))))))

(assert (= (and d!1618507 c!860845) b!5029500))

(assert (= (and d!1618507 (not c!860845)) b!5029501))

(assert (= (and b!5029501 (not res!2143735)) b!5029502))

(declare-fun m!6064786 () Bool)

(assert (=> b!5029500 m!6064786))

(declare-fun m!6064788 () Bool)

(assert (=> b!5029502 m!6064788))

(assert (=> b!5029336 d!1618507))

(declare-fun d!1618509 () Bool)

(declare-fun c!860848 () Bool)

(assert (=> d!1618509 (= c!860848 ((_ is Nil!58208) lt!2081514))))

(declare-fun e!3141915 () (InoxSet C!28120))

(assert (=> d!1618509 (= (content!10319 lt!2081514) e!3141915)))

(declare-fun b!5029507 () Bool)

(assert (=> b!5029507 (= e!3141915 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029508 () Bool)

(assert (=> b!5029508 (= e!3141915 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081514) true) (content!10319 (t!370740 lt!2081514))))))

(assert (= (and d!1618509 c!860848) b!5029507))

(assert (= (and d!1618509 (not c!860848)) b!5029508))

(declare-fun m!6064790 () Bool)

(assert (=> b!5029508 m!6064790))

(declare-fun m!6064792 () Bool)

(assert (=> b!5029508 m!6064792))

(assert (=> d!1618425 d!1618509))

(declare-fun d!1618511 () Bool)

(declare-fun c!860849 () Bool)

(assert (=> d!1618511 (= c!860849 ((_ is Nil!58208) lt!2081419))))

(declare-fun e!3141916 () (InoxSet C!28120))

(assert (=> d!1618511 (= (content!10319 lt!2081419) e!3141916)))

(declare-fun b!5029509 () Bool)

(assert (=> b!5029509 (= e!3141916 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029510 () Bool)

(assert (=> b!5029510 (= e!3141916 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081419) true) (content!10319 (t!370740 lt!2081419))))))

(assert (= (and d!1618511 c!860849) b!5029509))

(assert (= (and d!1618511 (not c!860849)) b!5029510))

(declare-fun m!6064794 () Bool)

(assert (=> b!5029510 m!6064794))

(declare-fun m!6064796 () Bool)

(assert (=> b!5029510 m!6064796))

(assert (=> d!1618425 d!1618511))

(assert (=> b!5029067 d!1618473))

(assert (=> b!5029187 d!1618371))

(declare-fun d!1618513 () Bool)

(assert (=> d!1618513 (= (isEmpty!31474 (take!782 lt!2081419 lt!2081420)) ((_ is Nil!58208) (take!782 lt!2081419 lt!2081420)))))

(assert (=> d!1618353 d!1618513))

(declare-fun d!1618515 () Bool)

(assert (not d!1618515))

(assert (=> b!5029234 d!1618515))

(declare-fun d!1618517 () Bool)

(assert (not d!1618517))

(assert (=> b!5029234 d!1618517))

(declare-fun d!1618519 () Bool)

(assert (not d!1618519))

(assert (=> b!5029234 d!1618519))

(declare-fun d!1618521 () Bool)

(assert (not d!1618521))

(assert (=> b!5029234 d!1618521))

(assert (=> b!5029068 d!1618347))

(assert (=> b!5029154 d!1618371))

(declare-fun d!1618523 () Bool)

(declare-fun c!860850 () Bool)

(assert (=> d!1618523 (= c!860850 ((_ is Nil!58208) lt!2081444))))

(declare-fun e!3141917 () (InoxSet C!28120))

(assert (=> d!1618523 (= (content!10319 lt!2081444) e!3141917)))

(declare-fun b!5029511 () Bool)

(assert (=> b!5029511 (= e!3141917 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029512 () Bool)

(assert (=> b!5029512 (= e!3141917 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081444) true) (content!10319 (t!370740 lt!2081444))))))

(assert (= (and d!1618523 c!860850) b!5029511))

(assert (= (and d!1618523 (not c!860850)) b!5029512))

(declare-fun m!6064798 () Bool)

(assert (=> b!5029512 m!6064798))

(declare-fun m!6064800 () Bool)

(assert (=> b!5029512 m!6064800))

(assert (=> d!1618375 d!1618523))

(declare-fun d!1618525 () Bool)

(declare-fun c!860851 () Bool)

(assert (=> d!1618525 (= c!860851 ((_ is Nil!58208) lt!2081413))))

(declare-fun e!3141918 () (InoxSet C!28120))

(assert (=> d!1618525 (= (content!10319 lt!2081413) e!3141918)))

(declare-fun b!5029513 () Bool)

(assert (=> b!5029513 (= e!3141918 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029514 () Bool)

(assert (=> b!5029514 (= e!3141918 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081413) true) (content!10319 (t!370740 lt!2081413))))))

(assert (= (and d!1618525 c!860851) b!5029513))

(assert (= (and d!1618525 (not c!860851)) b!5029514))

(declare-fun m!6064802 () Bool)

(assert (=> b!5029514 m!6064802))

(assert (=> b!5029514 m!6064744))

(assert (=> d!1618375 d!1618525))

(declare-fun d!1618527 () Bool)

(declare-fun c!860852 () Bool)

(assert (=> d!1618527 (= c!860852 ((_ is Nil!58208) lt!2081465))))

(declare-fun e!3141919 () (InoxSet C!28120))

(assert (=> d!1618527 (= (content!10319 lt!2081465) e!3141919)))

(declare-fun b!5029515 () Bool)

(assert (=> b!5029515 (= e!3141919 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029516 () Bool)

(assert (=> b!5029516 (= e!3141919 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081465) true) (content!10319 (t!370740 lt!2081465))))))

(assert (= (and d!1618527 c!860852) b!5029515))

(assert (= (and d!1618527 (not c!860852)) b!5029516))

(declare-fun m!6064804 () Bool)

(assert (=> b!5029516 m!6064804))

(declare-fun m!6064806 () Bool)

(assert (=> b!5029516 m!6064806))

(assert (=> d!1618389 d!1618527))

(declare-fun d!1618529 () Bool)

(declare-fun c!860853 () Bool)

(assert (=> d!1618529 (= c!860853 ((_ is Nil!58208) lt!2081418))))

(declare-fun e!3141920 () (InoxSet C!28120))

(assert (=> d!1618529 (= (content!10319 lt!2081418) e!3141920)))

(declare-fun b!5029517 () Bool)

(assert (=> b!5029517 (= e!3141920 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029518 () Bool)

(assert (=> b!5029518 (= e!3141920 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081418) true) (content!10319 (t!370740 lt!2081418))))))

(assert (= (and d!1618529 c!860853) b!5029517))

(assert (= (and d!1618529 (not c!860853)) b!5029518))

(declare-fun m!6064808 () Bool)

(assert (=> b!5029518 m!6064808))

(declare-fun m!6064810 () Bool)

(assert (=> b!5029518 m!6064810))

(assert (=> d!1618389 d!1618529))

(declare-fun d!1618531 () Bool)

(declare-fun c!860854 () Bool)

(assert (=> d!1618531 (= c!860854 ((_ is Nil!58208) lt!2081506))))

(declare-fun e!3141921 () (InoxSet C!28120))

(assert (=> d!1618531 (= (content!10319 lt!2081506) e!3141921)))

(declare-fun b!5029519 () Bool)

(assert (=> b!5029519 (= e!3141921 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029520 () Bool)

(assert (=> b!5029520 (= e!3141921 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081506) true) (content!10319 (t!370740 lt!2081506))))))

(assert (= (and d!1618531 c!860854) b!5029519))

(assert (= (and d!1618531 (not c!860854)) b!5029520))

(declare-fun m!6064812 () Bool)

(assert (=> b!5029520 m!6064812))

(declare-fun m!6064814 () Bool)

(assert (=> b!5029520 m!6064814))

(assert (=> d!1618415 d!1618531))

(assert (=> d!1618415 d!1618525))

(declare-fun bs!1188331 () Bool)

(declare-fun d!1618533 () Bool)

(assert (= bs!1188331 (and d!1618533 d!1618405)))

(declare-fun lambda!249609 () Int)

(assert (=> bs!1188331 (= lambda!249609 lambda!249559)))

(assert (=> d!1618533 (= (inv!76805 setElem!28989) (forall!13450 (exprs!3860 setElem!28989) lambda!249609))))

(declare-fun bs!1188332 () Bool)

(assert (= bs!1188332 d!1618533))

(declare-fun m!6064816 () Bool)

(assert (=> bs!1188332 m!6064816))

(assert (=> setNonEmpty!28989 d!1618533))

(assert (=> d!1618417 d!1618411))

(declare-fun b!5029521 () Bool)

(declare-fun e!3141924 () Int)

(assert (=> b!5029521 (= e!3141924 (+ 0 1))))

(declare-fun b!5029522 () Bool)

(declare-fun e!3141925 () Bool)

(declare-fun lt!2081580 () List!58332)

(declare-fun e!3141923 () Int)

(assert (=> b!5029522 (= e!3141925 (= (size!38747 lt!2081580) e!3141923))))

(declare-fun c!860855 () Bool)

(assert (=> b!5029522 (= c!860855 (<= (+ 0 1) 0))))

(declare-fun b!5029523 () Bool)

(declare-fun e!3141922 () List!58332)

(assert (=> b!5029523 (= e!3141922 Nil!58208)))

(declare-fun b!5029524 () Bool)

(assert (=> b!5029524 (= e!3141922 (Cons!58208 (h!64656 (drop!2582 lt!2081418 from!1228)) (take!782 (t!370740 (drop!2582 lt!2081418 from!1228)) (- (+ 0 1) 1))))))

(declare-fun d!1618535 () Bool)

(assert (=> d!1618535 e!3141925))

(declare-fun res!2143736 () Bool)

(assert (=> d!1618535 (=> (not res!2143736) (not e!3141925))))

(assert (=> d!1618535 (= res!2143736 (= ((_ map implies) (content!10319 lt!2081580) (content!10319 (drop!2582 lt!2081418 from!1228))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618535 (= lt!2081580 e!3141922)))

(declare-fun c!860857 () Bool)

(assert (=> d!1618535 (= c!860857 (or ((_ is Nil!58208) (drop!2582 lt!2081418 from!1228)) (<= (+ 0 1) 0)))))

(assert (=> d!1618535 (= (take!782 (drop!2582 lt!2081418 from!1228) (+ 0 1)) lt!2081580)))

(declare-fun b!5029525 () Bool)

(assert (=> b!5029525 (= e!3141924 (size!38747 (drop!2582 lt!2081418 from!1228)))))

(declare-fun b!5029526 () Bool)

(assert (=> b!5029526 (= e!3141923 0)))

(declare-fun b!5029527 () Bool)

(assert (=> b!5029527 (= e!3141923 e!3141924)))

(declare-fun c!860856 () Bool)

(assert (=> b!5029527 (= c!860856 (>= (+ 0 1) (size!38747 (drop!2582 lt!2081418 from!1228))))))

(assert (= (and d!1618535 c!860857) b!5029523))

(assert (= (and d!1618535 (not c!860857)) b!5029524))

(assert (= (and d!1618535 res!2143736) b!5029522))

(assert (= (and b!5029522 c!860855) b!5029526))

(assert (= (and b!5029522 (not c!860855)) b!5029527))

(assert (= (and b!5029527 c!860856) b!5029525))

(assert (= (and b!5029527 (not c!860856)) b!5029521))

(assert (=> b!5029525 m!6064300))

(declare-fun m!6064818 () Bool)

(assert (=> b!5029525 m!6064818))

(declare-fun m!6064820 () Bool)

(assert (=> d!1618535 m!6064820))

(assert (=> d!1618535 m!6064300))

(declare-fun m!6064822 () Bool)

(assert (=> d!1618535 m!6064822))

(declare-fun m!6064824 () Bool)

(assert (=> b!5029522 m!6064824))

(assert (=> b!5029527 m!6064300))

(assert (=> b!5029527 m!6064818))

(declare-fun m!6064826 () Bool)

(assert (=> b!5029524 m!6064826))

(assert (=> d!1618417 d!1618535))

(assert (=> d!1618417 d!1618413))

(declare-fun b!5029528 () Bool)

(declare-fun e!3141928 () Int)

(assert (=> b!5029528 (= e!3141928 0)))

(declare-fun b!5029529 () Bool)

(declare-fun e!3141929 () Bool)

(declare-fun lt!2081581 () List!58332)

(declare-fun e!3141927 () Int)

(assert (=> b!5029529 (= e!3141929 (= (size!38747 lt!2081581) e!3141927))))

(declare-fun c!860858 () Bool)

(assert (=> b!5029529 (= c!860858 (<= 0 0))))

(declare-fun b!5029530 () Bool)

(declare-fun e!3141926 () List!58332)

(assert (=> b!5029530 (= e!3141926 Nil!58208)))

(declare-fun b!5029531 () Bool)

(assert (=> b!5029531 (= e!3141926 (Cons!58208 (h!64656 (drop!2582 lt!2081418 (+ from!1228 1))) (take!782 (t!370740 (drop!2582 lt!2081418 (+ from!1228 1))) (- 0 1))))))

(declare-fun d!1618537 () Bool)

(assert (=> d!1618537 e!3141929))

(declare-fun res!2143737 () Bool)

(assert (=> d!1618537 (=> (not res!2143737) (not e!3141929))))

(assert (=> d!1618537 (= res!2143737 (= ((_ map implies) (content!10319 lt!2081581) (content!10319 (drop!2582 lt!2081418 (+ from!1228 1)))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618537 (= lt!2081581 e!3141926)))

(declare-fun c!860860 () Bool)

(assert (=> d!1618537 (= c!860860 (or ((_ is Nil!58208) (drop!2582 lt!2081418 (+ from!1228 1))) (<= 0 0)))))

(assert (=> d!1618537 (= (take!782 (drop!2582 lt!2081418 (+ from!1228 1)) 0) lt!2081581)))

(declare-fun b!5029532 () Bool)

(assert (=> b!5029532 (= e!3141928 (size!38747 (drop!2582 lt!2081418 (+ from!1228 1))))))

(declare-fun b!5029533 () Bool)

(assert (=> b!5029533 (= e!3141927 0)))

(declare-fun b!5029534 () Bool)

(assert (=> b!5029534 (= e!3141927 e!3141928)))

(declare-fun c!860859 () Bool)

(assert (=> b!5029534 (= c!860859 (>= 0 (size!38747 (drop!2582 lt!2081418 (+ from!1228 1)))))))

(assert (= (and d!1618537 c!860860) b!5029530))

(assert (= (and d!1618537 (not c!860860)) b!5029531))

(assert (= (and d!1618537 res!2143737) b!5029529))

(assert (= (and b!5029529 c!860858) b!5029533))

(assert (= (and b!5029529 (not c!860858)) b!5029534))

(assert (= (and b!5029534 c!860859) b!5029532))

(assert (= (and b!5029534 (not c!860859)) b!5029528))

(assert (=> b!5029532 m!6064552))

(declare-fun m!6064828 () Bool)

(assert (=> b!5029532 m!6064828))

(declare-fun m!6064830 () Bool)

(assert (=> d!1618537 m!6064830))

(assert (=> d!1618537 m!6064552))

(declare-fun m!6064832 () Bool)

(assert (=> d!1618537 m!6064832))

(declare-fun m!6064834 () Bool)

(assert (=> b!5029529 m!6064834))

(assert (=> b!5029534 m!6064552))

(assert (=> b!5029534 m!6064828))

(declare-fun m!6064836 () Bool)

(assert (=> b!5029531 m!6064836))

(assert (=> d!1618417 d!1618537))

(declare-fun d!1618539 () Bool)

(assert (=> d!1618539 (= (Cons!58208 (apply!14198 lt!2081418 from!1228) (take!782 (drop!2582 lt!2081418 (+ from!1228 1)) 0)) (take!782 (drop!2582 lt!2081418 from!1228) (+ 0 1)))))

(assert (=> d!1618539 true))

(declare-fun _$30!258 () Unit!149405)

(assert (=> d!1618539 (= (choose!37215 lt!2081418 from!1228 0) _$30!258)))

(declare-fun bs!1188333 () Bool)

(assert (= bs!1188333 d!1618539))

(assert (=> bs!1188333 m!6064552))

(assert (=> bs!1188333 m!6064558))

(assert (=> bs!1188333 m!6064294))

(assert (=> bs!1188333 m!6064300))

(assert (=> bs!1188333 m!6064554))

(assert (=> bs!1188333 m!6064300))

(assert (=> bs!1188333 m!6064552))

(assert (=> d!1618417 d!1618539))

(declare-fun d!1618541 () Bool)

(declare-fun e!3141933 () Bool)

(assert (=> d!1618541 e!3141933))

(declare-fun res!2143738 () Bool)

(assert (=> d!1618541 (=> (not res!2143738) (not e!3141933))))

(declare-fun lt!2081582 () List!58332)

(assert (=> d!1618541 (= res!2143738 (= ((_ map implies) (content!10319 lt!2081582) (content!10319 lt!2081418)) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141931 () List!58332)

(assert (=> d!1618541 (= lt!2081582 e!3141931)))

(declare-fun c!860864 () Bool)

(assert (=> d!1618541 (= c!860864 ((_ is Nil!58208) lt!2081418))))

(assert (=> d!1618541 (= (drop!2582 lt!2081418 (+ from!1228 1)) lt!2081582)))

(declare-fun b!5029535 () Bool)

(declare-fun e!3141932 () Int)

(declare-fun call!350917 () Int)

(assert (=> b!5029535 (= e!3141932 call!350917)))

(declare-fun b!5029536 () Bool)

(declare-fun e!3141930 () Int)

(assert (=> b!5029536 (= e!3141930 0)))

(declare-fun b!5029537 () Bool)

(declare-fun e!3141934 () List!58332)

(assert (=> b!5029537 (= e!3141931 e!3141934)))

(declare-fun c!860862 () Bool)

(assert (=> b!5029537 (= c!860862 (<= (+ from!1228 1) 0))))

(declare-fun b!5029538 () Bool)

(assert (=> b!5029538 (= e!3141934 (drop!2582 (t!370740 lt!2081418) (- (+ from!1228 1) 1)))))

(declare-fun b!5029539 () Bool)

(assert (=> b!5029539 (= e!3141931 Nil!58208)))

(declare-fun bm!350912 () Bool)

(assert (=> bm!350912 (= call!350917 (size!38747 lt!2081418))))

(declare-fun b!5029540 () Bool)

(assert (=> b!5029540 (= e!3141934 lt!2081418)))

(declare-fun b!5029541 () Bool)

(assert (=> b!5029541 (= e!3141933 (= (size!38747 lt!2081582) e!3141932))))

(declare-fun c!860863 () Bool)

(assert (=> b!5029541 (= c!860863 (<= (+ from!1228 1) 0))))

(declare-fun b!5029542 () Bool)

(assert (=> b!5029542 (= e!3141932 e!3141930)))

(declare-fun c!860861 () Bool)

(assert (=> b!5029542 (= c!860861 (>= (+ from!1228 1) call!350917))))

(declare-fun b!5029543 () Bool)

(assert (=> b!5029543 (= e!3141930 (- call!350917 (+ from!1228 1)))))

(assert (= (and d!1618541 c!860864) b!5029539))

(assert (= (and d!1618541 (not c!860864)) b!5029537))

(assert (= (and b!5029537 c!860862) b!5029540))

(assert (= (and b!5029537 (not c!860862)) b!5029538))

(assert (= (and d!1618541 res!2143738) b!5029541))

(assert (= (and b!5029541 c!860863) b!5029535))

(assert (= (and b!5029541 (not c!860863)) b!5029542))

(assert (= (and b!5029542 c!860861) b!5029536))

(assert (= (and b!5029542 (not c!860861)) b!5029543))

(assert (= (or b!5029535 b!5029542 b!5029543) bm!350912))

(declare-fun m!6064838 () Bool)

(assert (=> d!1618541 m!6064838))

(assert (=> d!1618541 m!6064440))

(declare-fun m!6064840 () Bool)

(assert (=> b!5029538 m!6064840))

(assert (=> bm!350912 m!6064444))

(declare-fun m!6064842 () Bool)

(assert (=> b!5029541 m!6064842))

(assert (=> d!1618417 d!1618541))

(declare-fun d!1618543 () Bool)

(assert (=> d!1618543 (= (head!10788 lt!2081418) (h!64656 lt!2081418))))

(assert (=> b!5029270 d!1618543))

(declare-fun bs!1188334 () Bool)

(declare-fun d!1618545 () Bool)

(assert (= bs!1188334 (and d!1618545 d!1618465)))

(declare-fun lambda!249612 () Int)

(assert (=> bs!1188334 (not (= lambda!249612 lambda!249599))))

(declare-fun bs!1188335 () Bool)

(assert (= bs!1188335 (and d!1618545 d!1618489)))

(assert (=> bs!1188335 (not (= lambda!249612 lambda!249607))))

(declare-fun bs!1188336 () Bool)

(assert (= bs!1188336 (and d!1618545 d!1618481)))

(assert (=> bs!1188336 (not (= lambda!249612 lambda!249606))))

(declare-fun bs!1188337 () Bool)

(assert (= bs!1188337 (and d!1618545 d!1618469)))

(assert (=> bs!1188337 (= (= lambda!249572 (ite c!860753 lambda!249573 lambda!249574)) (= lambda!249612 lambda!249602))))

(declare-fun bs!1188338 () Bool)

(assert (= bs!1188338 (and d!1618545 d!1618475)))

(assert (=> bs!1188338 (= lambda!249612 lambda!249605)))

(declare-fun bs!1188339 () Bool)

(assert (= bs!1188339 (and d!1618545 b!5029245)))

(assert (=> bs!1188339 (not (= lambda!249612 lambda!249573))))

(declare-fun bs!1188340 () Bool)

(assert (= bs!1188340 (and d!1618545 d!1618407)))

(assert (=> bs!1188340 (not (= lambda!249612 lambda!249572))))

(declare-fun bs!1188341 () Bool)

(assert (= bs!1188341 (and d!1618545 d!1618347)))

(assert (=> bs!1188341 (not (= lambda!249612 lambda!249547))))

(declare-fun bs!1188342 () Bool)

(assert (= bs!1188342 (and d!1618545 b!5029246)))

(assert (=> bs!1188342 (not (= lambda!249612 lambda!249574))))

(assert (=> d!1618545 true))

(assert (=> d!1618545 (< (dynLambda!23539 order!26715 lambda!249572) (dynLambda!23539 order!26715 lambda!249612))))

(assert (=> d!1618545 (exists!1412 lt!2081494 lambda!249612)))

(declare-fun lt!2081585 () Unit!149405)

(declare-fun choose!37220 (List!58334 Int) Unit!149405)

(assert (=> d!1618545 (= lt!2081585 (choose!37220 lt!2081494 lambda!249572))))

(assert (=> d!1618545 (not (forall!13454 lt!2081494 lambda!249572))))

(assert (=> d!1618545 (= (lemmaNotForallThenExists!282 lt!2081494 lambda!249572) lt!2081585)))

(declare-fun bs!1188343 () Bool)

(assert (= bs!1188343 d!1618545))

(declare-fun m!6064844 () Bool)

(assert (=> bs!1188343 m!6064844))

(declare-fun m!6064846 () Bool)

(assert (=> bs!1188343 m!6064846))

(declare-fun m!6064848 () Bool)

(assert (=> bs!1188343 m!6064848))

(assert (=> b!5029245 d!1618545))

(declare-fun d!1618547 () Bool)

(declare-fun lt!2081586 () Int)

(assert (=> d!1618547 (>= lt!2081586 0)))

(declare-fun e!3141937 () Int)

(assert (=> d!1618547 (= lt!2081586 e!3141937)))

(declare-fun c!860865 () Bool)

(assert (=> d!1618547 (= c!860865 ((_ is Nil!58208) lt!2081514))))

(assert (=> d!1618547 (= (size!38747 lt!2081514) lt!2081586)))

(declare-fun b!5029544 () Bool)

(assert (=> b!5029544 (= e!3141937 0)))

(declare-fun b!5029545 () Bool)

(assert (=> b!5029545 (= e!3141937 (+ 1 (size!38747 (t!370740 lt!2081514))))))

(assert (= (and d!1618547 c!860865) b!5029544))

(assert (= (and d!1618547 (not c!860865)) b!5029545))

(declare-fun m!6064850 () Bool)

(assert (=> b!5029545 m!6064850))

(assert (=> b!5029309 d!1618547))

(declare-fun d!1618549 () Bool)

(declare-fun c!860866 () Bool)

(assert (=> d!1618549 (= c!860866 ((_ is Nil!58208) lt!2081433))))

(declare-fun e!3141938 () (InoxSet C!28120))

(assert (=> d!1618549 (= (content!10319 lt!2081433) e!3141938)))

(declare-fun b!5029546 () Bool)

(assert (=> b!5029546 (= e!3141938 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029547 () Bool)

(assert (=> b!5029547 (= e!3141938 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081433) true) (content!10319 (t!370740 lt!2081433))))))

(assert (= (and d!1618549 c!860866) b!5029546))

(assert (= (and d!1618549 (not c!860866)) b!5029547))

(declare-fun m!6064852 () Bool)

(assert (=> b!5029547 m!6064852))

(declare-fun m!6064854 () Bool)

(assert (=> b!5029547 m!6064854))

(assert (=> d!1618355 d!1618549))

(assert (=> d!1618355 d!1618511))

(declare-fun d!1618551 () Bool)

(declare-fun res!2143745 () Bool)

(declare-fun e!3141941 () Bool)

(assert (=> d!1618551 (=> (not res!2143745) (not e!3141941))))

(assert (=> d!1618551 (= res!2143745 (= (csize!31138 (c!860649 totalInput!1141)) (+ (size!38750 (left!42588 (c!860649 totalInput!1141))) (size!38750 (right!42918 (c!860649 totalInput!1141))))))))

(assert (=> d!1618551 (= (inv!76810 (c!860649 totalInput!1141)) e!3141941)))

(declare-fun b!5029554 () Bool)

(declare-fun res!2143746 () Bool)

(assert (=> b!5029554 (=> (not res!2143746) (not e!3141941))))

(assert (=> b!5029554 (= res!2143746 (and (not (= (left!42588 (c!860649 totalInput!1141)) Empty!15454)) (not (= (right!42918 (c!860649 totalInput!1141)) Empty!15454))))))

(declare-fun b!5029555 () Bool)

(declare-fun res!2143747 () Bool)

(assert (=> b!5029555 (=> (not res!2143747) (not e!3141941))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5029555 (= res!2143747 (= (cheight!15665 (c!860649 totalInput!1141)) (+ (max!0 (height!2047 (left!42588 (c!860649 totalInput!1141))) (height!2047 (right!42918 (c!860649 totalInput!1141)))) 1)))))

(declare-fun b!5029556 () Bool)

(assert (=> b!5029556 (= e!3141941 (<= 0 (cheight!15665 (c!860649 totalInput!1141))))))

(assert (= (and d!1618551 res!2143745) b!5029554))

(assert (= (and b!5029554 res!2143746) b!5029555))

(assert (= (and b!5029555 res!2143747) b!5029556))

(declare-fun m!6064856 () Bool)

(assert (=> d!1618551 m!6064856))

(declare-fun m!6064858 () Bool)

(assert (=> d!1618551 m!6064858))

(assert (=> b!5029555 m!6064696))

(assert (=> b!5029555 m!6064698))

(assert (=> b!5029555 m!6064696))

(assert (=> b!5029555 m!6064698))

(declare-fun m!6064860 () Bool)

(assert (=> b!5029555 m!6064860))

(assert (=> b!5029230 d!1618551))

(assert (=> b!5029307 d!1618459))

(declare-fun bs!1188344 () Bool)

(declare-fun d!1618553 () Bool)

(assert (= bs!1188344 (and d!1618553 d!1618391)))

(declare-fun lambda!249613 () Int)

(assert (=> bs!1188344 (= (= (apply!14197 totalInput!1141 from!1228) lt!2081417) (= lambda!249613 lambda!249553))))

(declare-fun bs!1188345 () Bool)

(assert (= bs!1188345 (and d!1618553 d!1618499)))

(assert (=> bs!1188345 (= (= (apply!14197 totalInput!1141 from!1228) (apply!14197 totalInput!1141 (+ 1 from!1228))) (= lambda!249613 lambda!249608))))

(assert (=> d!1618553 true))

(assert (=> d!1618553 (= (derivationStepZipper!730 z!4747 (apply!14197 totalInput!1141 from!1228)) (flatMap!314 z!4747 lambda!249613))))

(declare-fun bs!1188346 () Bool)

(assert (= bs!1188346 d!1618553))

(declare-fun m!6064862 () Bool)

(assert (=> bs!1188346 m!6064862))

(assert (=> b!5029034 d!1618553))

(assert (=> b!5029034 d!1618387))

(declare-fun d!1618555 () Bool)

(declare-fun lt!2081589 () Int)

(assert (=> d!1618555 (and (>= lt!2081589 0) (<= lt!2081589 (- lt!2081416 (+ from!1228 1))))))

(declare-fun e!3141945 () Int)

(assert (=> d!1618555 (= lt!2081589 e!3141945)))

(declare-fun c!860869 () Bool)

(declare-fun e!3141942 () Bool)

(assert (=> d!1618555 (= c!860869 e!3141942)))

(declare-fun res!2143749 () Bool)

(assert (=> d!1618555 (=> res!2143749 e!3141942)))

(assert (=> d!1618555 (= res!2143749 (= (+ from!1228 1) lt!2081416))))

(declare-fun e!3141944 () Bool)

(assert (=> d!1618555 e!3141944))

(declare-fun res!2143748 () Bool)

(assert (=> d!1618555 (=> (not res!2143748) (not e!3141944))))

(assert (=> d!1618555 (= res!2143748 (>= (+ from!1228 1) 0))))

(assert (=> d!1618555 (= (findLongestMatchInnerZipperFastV2!249 lt!2081428 (+ from!1228 1) totalInput!1141 lt!2081416) lt!2081589)))

(declare-fun b!5029557 () Bool)

(assert (=> b!5029557 (= e!3141942 (lostCauseZipper!949 lt!2081428))))

(declare-fun b!5029558 () Bool)

(declare-fun e!3141943 () Int)

(assert (=> b!5029558 (= e!3141945 e!3141943)))

(declare-fun lt!2081587 () (InoxSet Context!6720))

(assert (=> b!5029558 (= lt!2081587 (derivationStepZipper!730 lt!2081428 (apply!14197 totalInput!1141 (+ from!1228 1))))))

(declare-fun lt!2081588 () Int)

(assert (=> b!5029558 (= lt!2081588 (findLongestMatchInnerZipperFastV2!249 lt!2081587 (+ from!1228 1 1) totalInput!1141 lt!2081416))))

(declare-fun c!860868 () Bool)

(assert (=> b!5029558 (= c!860868 (> lt!2081588 0))))

(declare-fun b!5029559 () Bool)

(assert (=> b!5029559 (= e!3141944 (<= (+ from!1228 1) (size!38746 totalInput!1141)))))

(declare-fun b!5029560 () Bool)

(declare-fun e!3141946 () Int)

(assert (=> b!5029560 (= e!3141946 1)))

(declare-fun b!5029561 () Bool)

(assert (=> b!5029561 (= e!3141945 0)))

(declare-fun b!5029562 () Bool)

(assert (=> b!5029562 (= e!3141943 (+ 1 lt!2081588))))

(declare-fun b!5029563 () Bool)

(declare-fun c!860867 () Bool)

(assert (=> b!5029563 (= c!860867 (nullableZipper!943 lt!2081587))))

(assert (=> b!5029563 (= e!3141943 e!3141946)))

(declare-fun b!5029564 () Bool)

(assert (=> b!5029564 (= e!3141946 0)))

(assert (= (and d!1618555 res!2143748) b!5029559))

(assert (= (and d!1618555 (not res!2143749)) b!5029557))

(assert (= (and d!1618555 c!860869) b!5029561))

(assert (= (and d!1618555 (not c!860869)) b!5029558))

(assert (= (and b!5029558 c!860868) b!5029562))

(assert (= (and b!5029558 (not c!860868)) b!5029563))

(assert (= (and b!5029563 c!860867) b!5029560))

(assert (= (and b!5029563 (not c!860867)) b!5029564))

(declare-fun m!6064864 () Bool)

(assert (=> b!5029557 m!6064864))

(declare-fun m!6064866 () Bool)

(assert (=> b!5029558 m!6064866))

(assert (=> b!5029558 m!6064866))

(declare-fun m!6064868 () Bool)

(assert (=> b!5029558 m!6064868))

(declare-fun m!6064870 () Bool)

(assert (=> b!5029558 m!6064870))

(assert (=> b!5029559 m!6064252))

(declare-fun m!6064872 () Bool)

(assert (=> b!5029563 m!6064872))

(assert (=> b!5029034 d!1618555))

(declare-fun d!1618557 () Bool)

(declare-fun e!3141950 () Bool)

(assert (=> d!1618557 e!3141950))

(declare-fun res!2143750 () Bool)

(assert (=> d!1618557 (=> (not res!2143750) (not e!3141950))))

(declare-fun lt!2081590 () List!58332)

(assert (=> d!1618557 (= res!2143750 (= ((_ map implies) (content!10319 lt!2081590) (content!10319 (t!370740 (list!18805 totalInput!1141)))) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141948 () List!58332)

(assert (=> d!1618557 (= lt!2081590 e!3141948)))

(declare-fun c!860873 () Bool)

(assert (=> d!1618557 (= c!860873 ((_ is Nil!58208) (t!370740 (list!18805 totalInput!1141))))))

(assert (=> d!1618557 (= (drop!2582 (t!370740 (list!18805 totalInput!1141)) (- (+ 1 from!1228) 1)) lt!2081590)))

(declare-fun b!5029565 () Bool)

(declare-fun e!3141949 () Int)

(declare-fun call!350918 () Int)

(assert (=> b!5029565 (= e!3141949 call!350918)))

(declare-fun b!5029566 () Bool)

(declare-fun e!3141947 () Int)

(assert (=> b!5029566 (= e!3141947 0)))

(declare-fun b!5029567 () Bool)

(declare-fun e!3141951 () List!58332)

(assert (=> b!5029567 (= e!3141948 e!3141951)))

(declare-fun c!860871 () Bool)

(assert (=> b!5029567 (= c!860871 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5029568 () Bool)

(assert (=> b!5029568 (= e!3141951 (drop!2582 (t!370740 (t!370740 (list!18805 totalInput!1141))) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5029569 () Bool)

(assert (=> b!5029569 (= e!3141948 Nil!58208)))

(declare-fun bm!350913 () Bool)

(assert (=> bm!350913 (= call!350918 (size!38747 (t!370740 (list!18805 totalInput!1141))))))

(declare-fun b!5029570 () Bool)

(assert (=> b!5029570 (= e!3141951 (t!370740 (list!18805 totalInput!1141)))))

(declare-fun b!5029571 () Bool)

(assert (=> b!5029571 (= e!3141950 (= (size!38747 lt!2081590) e!3141949))))

(declare-fun c!860872 () Bool)

(assert (=> b!5029571 (= c!860872 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5029572 () Bool)

(assert (=> b!5029572 (= e!3141949 e!3141947)))

(declare-fun c!860870 () Bool)

(assert (=> b!5029572 (= c!860870 (>= (- (+ 1 from!1228) 1) call!350918))))

(declare-fun b!5029573 () Bool)

(assert (=> b!5029573 (= e!3141947 (- call!350918 (- (+ 1 from!1228) 1)))))

(assert (= (and d!1618557 c!860873) b!5029569))

(assert (= (and d!1618557 (not c!860873)) b!5029567))

(assert (= (and b!5029567 c!860871) b!5029570))

(assert (= (and b!5029567 (not c!860871)) b!5029568))

(assert (= (and d!1618557 res!2143750) b!5029571))

(assert (= (and b!5029571 c!860872) b!5029565))

(assert (= (and b!5029571 (not c!860872)) b!5029572))

(assert (= (and b!5029572 c!860870) b!5029566))

(assert (= (and b!5029572 (not c!860870)) b!5029573))

(assert (= (or b!5029565 b!5029572 b!5029573) bm!350913))

(declare-fun m!6064874 () Bool)

(assert (=> d!1618557 m!6064874))

(declare-fun m!6064876 () Bool)

(assert (=> d!1618557 m!6064876))

(declare-fun m!6064878 () Bool)

(assert (=> b!5029568 m!6064878))

(assert (=> bm!350913 m!6064666))

(declare-fun m!6064880 () Bool)

(assert (=> b!5029571 m!6064880))

(assert (=> b!5029107 d!1618557))

(declare-fun d!1618559 () Bool)

(declare-fun c!860874 () Bool)

(assert (=> d!1618559 (= c!860874 ((_ is Nil!58208) lt!2081434))))

(declare-fun e!3141952 () (InoxSet C!28120))

(assert (=> d!1618559 (= (content!10319 lt!2081434) e!3141952)))

(declare-fun b!5029574 () Bool)

(assert (=> b!5029574 (= e!3141952 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029575 () Bool)

(assert (=> b!5029575 (= e!3141952 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081434) true) (content!10319 (t!370740 lt!2081434))))))

(assert (= (and d!1618559 c!860874) b!5029574))

(assert (= (and d!1618559 (not c!860874)) b!5029575))

(declare-fun m!6064882 () Bool)

(assert (=> b!5029575 m!6064882))

(declare-fun m!6064884 () Bool)

(assert (=> b!5029575 m!6064884))

(assert (=> d!1618361 d!1618559))

(declare-fun d!1618561 () Bool)

(declare-fun c!860875 () Bool)

(assert (=> d!1618561 (= c!860875 ((_ is Nil!58208) (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))

(declare-fun e!3141953 () (InoxSet C!28120))

(assert (=> d!1618561 (= (content!10319 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) e!3141953)))

(declare-fun b!5029576 () Bool)

(assert (=> b!5029576 (= e!3141953 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029577 () Bool)

(assert (=> b!5029577 (= e!3141953 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) true) (content!10319 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1618561 c!860875) b!5029576))

(assert (= (and d!1618561 (not c!860875)) b!5029577))

(declare-fun m!6064886 () Bool)

(assert (=> b!5029577 m!6064886))

(declare-fun m!6064888 () Bool)

(assert (=> b!5029577 m!6064888))

(assert (=> d!1618361 d!1618561))

(declare-fun d!1618563 () Bool)

(declare-fun e!3141957 () Bool)

(assert (=> d!1618563 e!3141957))

(declare-fun res!2143751 () Bool)

(assert (=> d!1618563 (=> (not res!2143751) (not e!3141957))))

(declare-fun lt!2081591 () List!58332)

(assert (=> d!1618563 (= res!2143751 (= ((_ map implies) (content!10319 lt!2081591) (content!10319 (t!370740 lt!2081418))) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141955 () List!58332)

(assert (=> d!1618563 (= lt!2081591 e!3141955)))

(declare-fun c!860879 () Bool)

(assert (=> d!1618563 (= c!860879 ((_ is Nil!58208) (t!370740 lt!2081418)))))

(assert (=> d!1618563 (= (drop!2582 (t!370740 lt!2081418) (- from!1228 1)) lt!2081591)))

(declare-fun b!5029578 () Bool)

(declare-fun e!3141956 () Int)

(declare-fun call!350919 () Int)

(assert (=> b!5029578 (= e!3141956 call!350919)))

(declare-fun b!5029579 () Bool)

(declare-fun e!3141954 () Int)

(assert (=> b!5029579 (= e!3141954 0)))

(declare-fun b!5029580 () Bool)

(declare-fun e!3141958 () List!58332)

(assert (=> b!5029580 (= e!3141955 e!3141958)))

(declare-fun c!860877 () Bool)

(assert (=> b!5029580 (= c!860877 (<= (- from!1228 1) 0))))

(declare-fun b!5029581 () Bool)

(assert (=> b!5029581 (= e!3141958 (drop!2582 (t!370740 (t!370740 lt!2081418)) (- (- from!1228 1) 1)))))

(declare-fun b!5029582 () Bool)

(assert (=> b!5029582 (= e!3141955 Nil!58208)))

(declare-fun bm!350914 () Bool)

(assert (=> bm!350914 (= call!350919 (size!38747 (t!370740 lt!2081418)))))

(declare-fun b!5029583 () Bool)

(assert (=> b!5029583 (= e!3141958 (t!370740 lt!2081418))))

(declare-fun b!5029584 () Bool)

(assert (=> b!5029584 (= e!3141957 (= (size!38747 lt!2081591) e!3141956))))

(declare-fun c!860878 () Bool)

(assert (=> b!5029584 (= c!860878 (<= (- from!1228 1) 0))))

(declare-fun b!5029585 () Bool)

(assert (=> b!5029585 (= e!3141956 e!3141954)))

(declare-fun c!860876 () Bool)

(assert (=> b!5029585 (= c!860876 (>= (- from!1228 1) call!350919))))

(declare-fun b!5029586 () Bool)

(assert (=> b!5029586 (= e!3141954 (- call!350919 (- from!1228 1)))))

(assert (= (and d!1618563 c!860879) b!5029582))

(assert (= (and d!1618563 (not c!860879)) b!5029580))

(assert (= (and b!5029580 c!860877) b!5029583))

(assert (= (and b!5029580 (not c!860877)) b!5029581))

(assert (= (and d!1618563 res!2143751) b!5029584))

(assert (= (and b!5029584 c!860878) b!5029578))

(assert (= (and b!5029584 (not c!860878)) b!5029585))

(assert (= (and b!5029585 c!860876) b!5029579))

(assert (= (and b!5029585 (not c!860876)) b!5029586))

(assert (= (or b!5029578 b!5029585 b!5029586) bm!350914))

(declare-fun m!6064890 () Bool)

(assert (=> d!1618563 m!6064890))

(assert (=> d!1618563 m!6064810))

(declare-fun m!6064892 () Bool)

(assert (=> b!5029581 m!6064892))

(assert (=> bm!350914 m!6064688))

(declare-fun m!6064894 () Bool)

(assert (=> b!5029584 m!6064894))

(assert (=> b!5029275 d!1618563))

(declare-fun d!1618565 () Bool)

(declare-fun e!3141961 () Bool)

(assert (=> d!1618565 e!3141961))

(declare-fun res!2143754 () Bool)

(assert (=> d!1618565 (=> (not res!2143754) (not e!3141961))))

(declare-fun lt!2081594 () List!58334)

(declare-fun noDuplicate!1050 (List!58334) Bool)

(assert (=> d!1618565 (= res!2143754 (noDuplicate!1050 lt!2081594))))

(declare-fun choose!37221 ((InoxSet Context!6720)) List!58334)

(assert (=> d!1618565 (= lt!2081594 (choose!37221 z!4747))))

(assert (=> d!1618565 (= (toList!8133 z!4747) lt!2081594)))

(declare-fun b!5029589 () Bool)

(declare-fun content!10321 (List!58334) (InoxSet Context!6720))

(assert (=> b!5029589 (= e!3141961 (= (content!10321 lt!2081594) z!4747))))

(assert (= (and d!1618565 res!2143754) b!5029589))

(declare-fun m!6064896 () Bool)

(assert (=> d!1618565 m!6064896))

(declare-fun m!6064898 () Bool)

(assert (=> d!1618565 m!6064898))

(declare-fun m!6064900 () Bool)

(assert (=> b!5029589 m!6064900))

(assert (=> bm!350901 d!1618565))

(declare-fun d!1618567 () Bool)

(declare-fun res!2143759 () Bool)

(declare-fun e!3141964 () Bool)

(assert (=> d!1618567 (=> (not res!2143759) (not e!3141964))))

(assert (=> d!1618567 (= res!2143759 (<= (size!38747 (list!18808 (xs!18780 (c!860649 totalInput!1141)))) 512))))

(assert (=> d!1618567 (= (inv!76811 (c!860649 totalInput!1141)) e!3141964)))

(declare-fun b!5029594 () Bool)

(declare-fun res!2143760 () Bool)

(assert (=> b!5029594 (=> (not res!2143760) (not e!3141964))))

(assert (=> b!5029594 (= res!2143760 (= (csize!31139 (c!860649 totalInput!1141)) (size!38747 (list!18808 (xs!18780 (c!860649 totalInput!1141))))))))

(declare-fun b!5029595 () Bool)

(assert (=> b!5029595 (= e!3141964 (and (> (csize!31139 (c!860649 totalInput!1141)) 0) (<= (csize!31139 (c!860649 totalInput!1141)) 512)))))

(assert (= (and d!1618567 res!2143759) b!5029594))

(assert (= (and b!5029594 res!2143760) b!5029595))

(assert (=> d!1618567 m!6064734))

(assert (=> d!1618567 m!6064734))

(declare-fun m!6064902 () Bool)

(assert (=> d!1618567 m!6064902))

(assert (=> b!5029594 m!6064734))

(assert (=> b!5029594 m!6064734))

(assert (=> b!5029594 m!6064902))

(assert (=> b!5029232 d!1618567))

(declare-fun d!1618569 () Bool)

(declare-fun lt!2081597 () Int)

(assert (=> d!1618569 (and (>= lt!2081597 0) (<= lt!2081597 (- (size!38746 totalInput!1141) (+ 1 from!1228))))))

(declare-fun e!3141968 () Int)

(assert (=> d!1618569 (= lt!2081597 e!3141968)))

(declare-fun c!860882 () Bool)

(declare-fun e!3141965 () Bool)

(assert (=> d!1618569 (= c!860882 e!3141965)))

(declare-fun res!2143762 () Bool)

(assert (=> d!1618569 (=> res!2143762 e!3141965)))

(assert (=> d!1618569 (= res!2143762 (= (+ 1 from!1228) (size!38746 totalInput!1141)))))

(declare-fun e!3141967 () Bool)

(assert (=> d!1618569 e!3141967))

(declare-fun res!2143761 () Bool)

(assert (=> d!1618569 (=> (not res!2143761) (not e!3141967))))

(assert (=> d!1618569 (= res!2143761 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618569 (= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) lt!2081597)))

(declare-fun b!5029596 () Bool)

(assert (=> b!5029596 (= e!3141965 (lostCauseZipper!949 lt!2081411))))

(declare-fun b!5029597 () Bool)

(declare-fun e!3141966 () Int)

(assert (=> b!5029597 (= e!3141968 e!3141966)))

(declare-fun lt!2081595 () (InoxSet Context!6720))

(assert (=> b!5029597 (= lt!2081595 (derivationStepZipper!730 lt!2081411 (apply!14197 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2081596 () Int)

(assert (=> b!5029597 (= lt!2081596 (findLongestMatchInnerZipperFastV2!249 lt!2081595 (+ 1 from!1228 1) totalInput!1141 (size!38746 totalInput!1141)))))

(declare-fun c!860881 () Bool)

(assert (=> b!5029597 (= c!860881 (> lt!2081596 0))))

(declare-fun b!5029598 () Bool)

(assert (=> b!5029598 (= e!3141967 (<= (+ 1 from!1228) (size!38746 totalInput!1141)))))

(declare-fun b!5029599 () Bool)

(declare-fun e!3141969 () Int)

(assert (=> b!5029599 (= e!3141969 1)))

(declare-fun b!5029600 () Bool)

(assert (=> b!5029600 (= e!3141968 0)))

(declare-fun b!5029601 () Bool)

(assert (=> b!5029601 (= e!3141966 (+ 1 lt!2081596))))

(declare-fun b!5029602 () Bool)

(declare-fun c!860880 () Bool)

(assert (=> b!5029602 (= c!860880 (nullableZipper!943 lt!2081595))))

(assert (=> b!5029602 (= e!3141966 e!3141969)))

(declare-fun b!5029603 () Bool)

(assert (=> b!5029603 (= e!3141969 0)))

(assert (= (and d!1618569 res!2143761) b!5029598))

(assert (= (and d!1618569 (not res!2143762)) b!5029596))

(assert (= (and d!1618569 c!860882) b!5029600))

(assert (= (and d!1618569 (not c!860882)) b!5029597))

(assert (= (and b!5029597 c!860881) b!5029601))

(assert (= (and b!5029597 (not c!860881)) b!5029602))

(assert (= (and b!5029602 c!860880) b!5029599))

(assert (= (and b!5029602 (not c!860880)) b!5029603))

(assert (=> b!5029596 m!6064424))

(assert (=> b!5029597 m!6064426))

(assert (=> b!5029597 m!6064426))

(assert (=> b!5029597 m!6064428))

(assert (=> b!5029597 m!6064252))

(declare-fun m!6064904 () Bool)

(assert (=> b!5029597 m!6064904))

(assert (=> b!5029598 m!6064252))

(declare-fun m!6064906 () Bool)

(assert (=> b!5029602 m!6064906))

(assert (=> d!1618377 d!1618569))

(assert (=> d!1618377 d!1618371))

(declare-fun d!1618571 () Bool)

(declare-fun e!3141972 () Bool)

(assert (=> d!1618571 e!3141972))

(declare-fun res!2143765 () Bool)

(assert (=> d!1618571 (=> res!2143765 e!3141972)))

(assert (=> d!1618571 (= res!2143765 (= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) 0))))

(assert (=> d!1618571 true))

(declare-fun _$81!126 () Unit!149405)

(assert (=> d!1618571 (= (choose!37213 lt!2081411 (+ 1 from!1228) totalInput!1141) _$81!126)))

(declare-fun b!5029606 () Bool)

(assert (=> b!5029606 (= e!3141972 (matchZipper!685 lt!2081411 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)))))))

(assert (= (and d!1618571 (not res!2143765)) b!5029606))

(assert (=> d!1618571 m!6064252))

(assert (=> d!1618571 m!6064252))

(assert (=> d!1618571 m!6064408))

(assert (=> b!5029606 m!6064412))

(assert (=> b!5029606 m!6064414))

(assert (=> b!5029606 m!6064252))

(assert (=> b!5029606 m!6064408))

(assert (=> b!5029606 m!6064252))

(assert (=> b!5029606 m!6064266))

(assert (=> b!5029606 m!6064282))

(assert (=> b!5029606 m!6064282))

(assert (=> b!5029606 m!6064408))

(assert (=> b!5029606 m!6064412))

(assert (=> b!5029606 m!6064266))

(assert (=> d!1618377 d!1618571))

(declare-fun b!5029607 () Bool)

(declare-fun e!3141975 () Int)

(assert (=> b!5029607 (= e!3141975 (- 1 1))))

(declare-fun b!5029608 () Bool)

(declare-fun e!3141976 () Bool)

(declare-fun lt!2081598 () List!58332)

(declare-fun e!3141974 () Int)

(assert (=> b!5029608 (= e!3141976 (= (size!38747 lt!2081598) e!3141974))))

(declare-fun c!860883 () Bool)

(assert (=> b!5029608 (= c!860883 (<= (- 1 1) 0))))

(declare-fun b!5029609 () Bool)

(declare-fun e!3141973 () List!58332)

(assert (=> b!5029609 (= e!3141973 Nil!58208)))

(declare-fun b!5029610 () Bool)

(assert (=> b!5029610 (= e!3141973 (Cons!58208 (h!64656 (t!370740 lt!2081419)) (take!782 (t!370740 (t!370740 lt!2081419)) (- (- 1 1) 1))))))

(declare-fun d!1618573 () Bool)

(assert (=> d!1618573 e!3141976))

(declare-fun res!2143766 () Bool)

(assert (=> d!1618573 (=> (not res!2143766) (not e!3141976))))

(assert (=> d!1618573 (= res!2143766 (= ((_ map implies) (content!10319 lt!2081598) (content!10319 (t!370740 lt!2081419))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618573 (= lt!2081598 e!3141973)))

(declare-fun c!860885 () Bool)

(assert (=> d!1618573 (= c!860885 (or ((_ is Nil!58208) (t!370740 lt!2081419)) (<= (- 1 1) 0)))))

(assert (=> d!1618573 (= (take!782 (t!370740 lt!2081419) (- 1 1)) lt!2081598)))

(declare-fun b!5029611 () Bool)

(assert (=> b!5029611 (= e!3141975 (size!38747 (t!370740 lt!2081419)))))

(declare-fun b!5029612 () Bool)

(assert (=> b!5029612 (= e!3141974 0)))

(declare-fun b!5029613 () Bool)

(assert (=> b!5029613 (= e!3141974 e!3141975)))

(declare-fun c!860884 () Bool)

(assert (=> b!5029613 (= c!860884 (>= (- 1 1) (size!38747 (t!370740 lt!2081419))))))

(assert (= (and d!1618573 c!860885) b!5029609))

(assert (= (and d!1618573 (not c!860885)) b!5029610))

(assert (= (and d!1618573 res!2143766) b!5029608))

(assert (= (and b!5029608 c!860883) b!5029612))

(assert (= (and b!5029608 (not c!860883)) b!5029613))

(assert (= (and b!5029613 c!860884) b!5029611))

(assert (= (and b!5029613 (not c!860884)) b!5029607))

(assert (=> b!5029611 m!6064720))

(declare-fun m!6064908 () Bool)

(assert (=> d!1618573 m!6064908))

(assert (=> d!1618573 m!6064796))

(declare-fun m!6064910 () Bool)

(assert (=> b!5029608 m!6064910))

(assert (=> b!5029613 m!6064720))

(declare-fun m!6064912 () Bool)

(assert (=> b!5029610 m!6064912))

(assert (=> b!5029311 d!1618573))

(declare-fun d!1618575 () Bool)

(declare-fun lt!2081599 () Int)

(assert (=> d!1618575 (>= lt!2081599 0)))

(declare-fun e!3141977 () Int)

(assert (=> d!1618575 (= lt!2081599 e!3141977)))

(declare-fun c!860886 () Bool)

(assert (=> d!1618575 (= c!860886 ((_ is Nil!58208) lt!2081506))))

(assert (=> d!1618575 (= (size!38747 lt!2081506) lt!2081599)))

(declare-fun b!5029614 () Bool)

(assert (=> b!5029614 (= e!3141977 0)))

(declare-fun b!5029615 () Bool)

(assert (=> b!5029615 (= e!3141977 (+ 1 (size!38747 (t!370740 lt!2081506))))))

(assert (= (and d!1618575 c!860886) b!5029614))

(assert (= (and d!1618575 (not c!860886)) b!5029615))

(declare-fun m!6064914 () Bool)

(assert (=> b!5029615 m!6064914))

(assert (=> b!5029282 d!1618575))

(assert (=> bm!350892 d!1618447))

(assert (=> bm!350903 d!1618459))

(declare-fun d!1618577 () Bool)

(assert (=> d!1618577 (= (isEmpty!31474 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) ((_ is Nil!58208) (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))

(assert (=> d!1618359 d!1618577))

(declare-fun d!1618579 () Bool)

(declare-fun c!860887 () Bool)

(assert (=> d!1618579 (= c!860887 ((_ is Nil!58208) lt!2081505))))

(declare-fun e!3141978 () (InoxSet C!28120))

(assert (=> d!1618579 (= (content!10319 lt!2081505) e!3141978)))

(declare-fun b!5029616 () Bool)

(assert (=> b!5029616 (= e!3141978 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029617 () Bool)

(assert (=> b!5029617 (= e!3141978 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081505) true) (content!10319 (t!370740 lt!2081505))))))

(assert (= (and d!1618579 c!860887) b!5029616))

(assert (= (and d!1618579 (not c!860887)) b!5029617))

(declare-fun m!6064916 () Bool)

(assert (=> b!5029617 m!6064916))

(declare-fun m!6064918 () Bool)

(assert (=> b!5029617 m!6064918))

(assert (=> d!1618413 d!1618579))

(assert (=> d!1618413 d!1618529))

(declare-fun d!1618581 () Bool)

(declare-fun c!860888 () Bool)

(assert (=> d!1618581 (= c!860888 (isEmpty!31474 (tail!9921 (take!782 lt!2081419 lt!2081420))))))

(declare-fun e!3141979 () Bool)

(assert (=> d!1618581 (= (matchZipper!685 (derivationStepZipper!730 z!4747 (head!10788 (take!782 lt!2081419 lt!2081420))) (tail!9921 (take!782 lt!2081419 lt!2081420))) e!3141979)))

(declare-fun b!5029618 () Bool)

(assert (=> b!5029618 (= e!3141979 (nullableZipper!943 (derivationStepZipper!730 z!4747 (head!10788 (take!782 lt!2081419 lt!2081420)))))))

(declare-fun b!5029619 () Bool)

(assert (=> b!5029619 (= e!3141979 (matchZipper!685 (derivationStepZipper!730 (derivationStepZipper!730 z!4747 (head!10788 (take!782 lt!2081419 lt!2081420))) (head!10788 (tail!9921 (take!782 lt!2081419 lt!2081420)))) (tail!9921 (tail!9921 (take!782 lt!2081419 lt!2081420)))))))

(assert (= (and d!1618581 c!860888) b!5029618))

(assert (= (and d!1618581 (not c!860888)) b!5029619))

(assert (=> d!1618581 m!6064318))

(declare-fun m!6064920 () Bool)

(assert (=> d!1618581 m!6064920))

(assert (=> b!5029618 m!6064316))

(declare-fun m!6064922 () Bool)

(assert (=> b!5029618 m!6064922))

(assert (=> b!5029619 m!6064318))

(declare-fun m!6064924 () Bool)

(assert (=> b!5029619 m!6064924))

(assert (=> b!5029619 m!6064316))

(assert (=> b!5029619 m!6064924))

(declare-fun m!6064926 () Bool)

(assert (=> b!5029619 m!6064926))

(assert (=> b!5029619 m!6064318))

(declare-fun m!6064928 () Bool)

(assert (=> b!5029619 m!6064928))

(assert (=> b!5029619 m!6064926))

(assert (=> b!5029619 m!6064928))

(declare-fun m!6064930 () Bool)

(assert (=> b!5029619 m!6064930))

(assert (=> b!5029046 d!1618581))

(declare-fun bs!1188347 () Bool)

(declare-fun d!1618583 () Bool)

(assert (= bs!1188347 (and d!1618583 d!1618391)))

(declare-fun lambda!249614 () Int)

(assert (=> bs!1188347 (= (= (head!10788 (take!782 lt!2081419 lt!2081420)) lt!2081417) (= lambda!249614 lambda!249553))))

(declare-fun bs!1188348 () Bool)

(assert (= bs!1188348 (and d!1618583 d!1618499)))

(assert (=> bs!1188348 (= (= (head!10788 (take!782 lt!2081419 lt!2081420)) (apply!14197 totalInput!1141 (+ 1 from!1228))) (= lambda!249614 lambda!249608))))

(declare-fun bs!1188349 () Bool)

(assert (= bs!1188349 (and d!1618583 d!1618553)))

(assert (=> bs!1188349 (= (= (head!10788 (take!782 lt!2081419 lt!2081420)) (apply!14197 totalInput!1141 from!1228)) (= lambda!249614 lambda!249613))))

(assert (=> d!1618583 true))

(assert (=> d!1618583 (= (derivationStepZipper!730 z!4747 (head!10788 (take!782 lt!2081419 lt!2081420))) (flatMap!314 z!4747 lambda!249614))))

(declare-fun bs!1188350 () Bool)

(assert (= bs!1188350 d!1618583))

(declare-fun m!6064932 () Bool)

(assert (=> bs!1188350 m!6064932))

(assert (=> b!5029046 d!1618583))

(declare-fun d!1618585 () Bool)

(assert (=> d!1618585 (= (head!10788 (take!782 lt!2081419 lt!2081420)) (h!64656 (take!782 lt!2081419 lt!2081420)))))

(assert (=> b!5029046 d!1618585))

(declare-fun d!1618587 () Bool)

(assert (=> d!1618587 (= (tail!9921 (take!782 lt!2081419 lt!2081420)) (t!370740 (take!782 lt!2081419 lt!2081420)))))

(assert (=> b!5029046 d!1618587))

(declare-fun b!5029620 () Bool)

(declare-fun e!3141982 () Int)

(assert (=> b!5029620 (= e!3141982 (- lt!2081420 1))))

(declare-fun b!5029621 () Bool)

(declare-fun e!3141983 () Bool)

(declare-fun lt!2081600 () List!58332)

(declare-fun e!3141981 () Int)

(assert (=> b!5029621 (= e!3141983 (= (size!38747 lt!2081600) e!3141981))))

(declare-fun c!860889 () Bool)

(assert (=> b!5029621 (= c!860889 (<= (- lt!2081420 1) 0))))

(declare-fun b!5029622 () Bool)

(declare-fun e!3141980 () List!58332)

(assert (=> b!5029622 (= e!3141980 Nil!58208)))

(declare-fun b!5029623 () Bool)

(assert (=> b!5029623 (= e!3141980 (Cons!58208 (h!64656 (t!370740 lt!2081419)) (take!782 (t!370740 (t!370740 lt!2081419)) (- (- lt!2081420 1) 1))))))

(declare-fun d!1618589 () Bool)

(assert (=> d!1618589 e!3141983))

(declare-fun res!2143767 () Bool)

(assert (=> d!1618589 (=> (not res!2143767) (not e!3141983))))

(assert (=> d!1618589 (= res!2143767 (= ((_ map implies) (content!10319 lt!2081600) (content!10319 (t!370740 lt!2081419))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618589 (= lt!2081600 e!3141980)))

(declare-fun c!860891 () Bool)

(assert (=> d!1618589 (= c!860891 (or ((_ is Nil!58208) (t!370740 lt!2081419)) (<= (- lt!2081420 1) 0)))))

(assert (=> d!1618589 (= (take!782 (t!370740 lt!2081419) (- lt!2081420 1)) lt!2081600)))

(declare-fun b!5029624 () Bool)

(assert (=> b!5029624 (= e!3141982 (size!38747 (t!370740 lt!2081419)))))

(declare-fun b!5029625 () Bool)

(assert (=> b!5029625 (= e!3141981 0)))

(declare-fun b!5029626 () Bool)

(assert (=> b!5029626 (= e!3141981 e!3141982)))

(declare-fun c!860890 () Bool)

(assert (=> b!5029626 (= c!860890 (>= (- lt!2081420 1) (size!38747 (t!370740 lt!2081419))))))

(assert (= (and d!1618589 c!860891) b!5029622))

(assert (= (and d!1618589 (not c!860891)) b!5029623))

(assert (= (and d!1618589 res!2143767) b!5029621))

(assert (= (and b!5029621 c!860889) b!5029625))

(assert (= (and b!5029621 (not c!860889)) b!5029626))

(assert (= (and b!5029626 c!860890) b!5029624))

(assert (= (and b!5029626 (not c!860890)) b!5029620))

(assert (=> b!5029624 m!6064720))

(declare-fun m!6064934 () Bool)

(assert (=> d!1618589 m!6064934))

(assert (=> d!1618589 m!6064796))

(declare-fun m!6064936 () Bool)

(assert (=> b!5029621 m!6064936))

(assert (=> b!5029626 m!6064720))

(declare-fun m!6064938 () Bool)

(assert (=> b!5029623 m!6064938))

(assert (=> b!5029064 d!1618589))

(declare-fun d!1618591 () Bool)

(declare-fun lt!2081603 () Bool)

(assert (=> d!1618591 (= lt!2081603 (select (content!10319 lt!2081418) lt!2081504))))

(declare-fun e!3141988 () Bool)

(assert (=> d!1618591 (= lt!2081603 e!3141988)))

(declare-fun res!2143772 () Bool)

(assert (=> d!1618591 (=> (not res!2143772) (not e!3141988))))

(assert (=> d!1618591 (= res!2143772 ((_ is Cons!58208) lt!2081418))))

(assert (=> d!1618591 (= (contains!19580 lt!2081418 lt!2081504) lt!2081603)))

(declare-fun b!5029631 () Bool)

(declare-fun e!3141989 () Bool)

(assert (=> b!5029631 (= e!3141988 e!3141989)))

(declare-fun res!2143773 () Bool)

(assert (=> b!5029631 (=> res!2143773 e!3141989)))

(assert (=> b!5029631 (= res!2143773 (= (h!64656 lt!2081418) lt!2081504))))

(declare-fun b!5029632 () Bool)

(assert (=> b!5029632 (= e!3141989 (contains!19580 (t!370740 lt!2081418) lt!2081504))))

(assert (= (and d!1618591 res!2143772) b!5029631))

(assert (= (and b!5029631 (not res!2143773)) b!5029632))

(assert (=> d!1618591 m!6064440))

(declare-fun m!6064940 () Bool)

(assert (=> d!1618591 m!6064940))

(declare-fun m!6064942 () Bool)

(assert (=> b!5029632 m!6064942))

(assert (=> d!1618411 d!1618591))

(declare-fun d!1618593 () Bool)

(declare-fun lt!2081604 () Int)

(assert (=> d!1618593 (>= lt!2081604 0)))

(declare-fun e!3141990 () Int)

(assert (=> d!1618593 (= lt!2081604 e!3141990)))

(declare-fun c!860892 () Bool)

(assert (=> d!1618593 (= c!860892 ((_ is Nil!58208) lt!2081413))))

(assert (=> d!1618593 (= (size!38747 lt!2081413) lt!2081604)))

(declare-fun b!5029633 () Bool)

(assert (=> b!5029633 (= e!3141990 0)))

(declare-fun b!5029634 () Bool)

(assert (=> b!5029634 (= e!3141990 (+ 1 (size!38747 (t!370740 lt!2081413))))))

(assert (= (and d!1618593 c!860892) b!5029633))

(assert (= (and d!1618593 (not c!860892)) b!5029634))

(assert (=> b!5029634 m!6064740))

(assert (=> b!5029119 d!1618593))

(declare-fun bs!1188351 () Bool)

(declare-fun d!1618595 () Bool)

(assert (= bs!1188351 (and d!1618595 d!1618465)))

(declare-fun lambda!249615 () Int)

(assert (=> bs!1188351 (not (= lambda!249615 lambda!249599))))

(declare-fun bs!1188352 () Bool)

(assert (= bs!1188352 (and d!1618595 d!1618489)))

(assert (=> bs!1188352 (not (= lambda!249615 lambda!249607))))

(declare-fun bs!1188353 () Bool)

(assert (= bs!1188353 (and d!1618595 d!1618481)))

(assert (=> bs!1188353 (not (= lambda!249615 lambda!249606))))

(declare-fun bs!1188354 () Bool)

(assert (= bs!1188354 (and d!1618595 d!1618469)))

(assert (=> bs!1188354 (not (= lambda!249615 lambda!249602))))

(declare-fun bs!1188355 () Bool)

(assert (= bs!1188355 (and d!1618595 d!1618475)))

(assert (=> bs!1188355 (not (= lambda!249615 lambda!249605))))

(declare-fun bs!1188356 () Bool)

(assert (= bs!1188356 (and d!1618595 d!1618545)))

(assert (=> bs!1188356 (not (= lambda!249615 lambda!249612))))

(declare-fun bs!1188357 () Bool)

(assert (= bs!1188357 (and d!1618595 b!5029245)))

(assert (=> bs!1188357 (not (= lambda!249615 lambda!249573))))

(declare-fun bs!1188358 () Bool)

(assert (= bs!1188358 (and d!1618595 d!1618407)))

(assert (=> bs!1188358 (= lambda!249615 lambda!249572)))

(declare-fun bs!1188359 () Bool)

(assert (= bs!1188359 (and d!1618595 d!1618347)))

(assert (=> bs!1188359 (not (= lambda!249615 lambda!249547))))

(declare-fun bs!1188360 () Bool)

(assert (= bs!1188360 (and d!1618595 b!5029246)))

(assert (=> bs!1188360 (not (= lambda!249615 lambda!249574))))

(declare-fun bs!1188361 () Bool)

(declare-fun b!5029635 () Bool)

(assert (= bs!1188361 (and b!5029635 d!1618465)))

(declare-fun lambda!249616 () Int)

(assert (=> bs!1188361 (= lambda!249616 lambda!249599)))

(declare-fun bs!1188362 () Bool)

(assert (= bs!1188362 (and b!5029635 d!1618489)))

(assert (=> bs!1188362 (not (= lambda!249616 lambda!249607))))

(declare-fun bs!1188363 () Bool)

(assert (= bs!1188363 (and b!5029635 d!1618595)))

(assert (=> bs!1188363 (not (= lambda!249616 lambda!249615))))

(declare-fun bs!1188364 () Bool)

(assert (= bs!1188364 (and b!5029635 d!1618481)))

(assert (=> bs!1188364 (not (= lambda!249616 lambda!249606))))

(declare-fun bs!1188365 () Bool)

(assert (= bs!1188365 (and b!5029635 d!1618469)))

(assert (=> bs!1188365 (not (= lambda!249616 lambda!249602))))

(declare-fun bs!1188366 () Bool)

(assert (= bs!1188366 (and b!5029635 d!1618475)))

(assert (=> bs!1188366 (not (= lambda!249616 lambda!249605))))

(declare-fun bs!1188367 () Bool)

(assert (= bs!1188367 (and b!5029635 d!1618545)))

(assert (=> bs!1188367 (not (= lambda!249616 lambda!249612))))

(declare-fun bs!1188368 () Bool)

(assert (= bs!1188368 (and b!5029635 b!5029245)))

(assert (=> bs!1188368 (= lambda!249616 lambda!249573)))

(declare-fun bs!1188369 () Bool)

(assert (= bs!1188369 (and b!5029635 d!1618407)))

(assert (=> bs!1188369 (not (= lambda!249616 lambda!249572))))

(declare-fun bs!1188370 () Bool)

(assert (= bs!1188370 (and b!5029635 d!1618347)))

(assert (=> bs!1188370 (not (= lambda!249616 lambda!249547))))

(declare-fun bs!1188371 () Bool)

(assert (= bs!1188371 (and b!5029635 b!5029246)))

(assert (=> bs!1188371 (= lambda!249616 lambda!249574)))

(declare-fun bs!1188372 () Bool)

(declare-fun b!5029636 () Bool)

(assert (= bs!1188372 (and b!5029636 d!1618465)))

(declare-fun lambda!249617 () Int)

(assert (=> bs!1188372 (= lambda!249617 lambda!249599)))

(declare-fun bs!1188373 () Bool)

(assert (= bs!1188373 (and b!5029636 d!1618489)))

(assert (=> bs!1188373 (not (= lambda!249617 lambda!249607))))

(declare-fun bs!1188374 () Bool)

(assert (= bs!1188374 (and b!5029636 d!1618595)))

(assert (=> bs!1188374 (not (= lambda!249617 lambda!249615))))

(declare-fun bs!1188375 () Bool)

(assert (= bs!1188375 (and b!5029636 d!1618481)))

(assert (=> bs!1188375 (not (= lambda!249617 lambda!249606))))

(declare-fun bs!1188376 () Bool)

(assert (= bs!1188376 (and b!5029636 d!1618469)))

(assert (=> bs!1188376 (not (= lambda!249617 lambda!249602))))

(declare-fun bs!1188377 () Bool)

(assert (= bs!1188377 (and b!5029636 d!1618475)))

(assert (=> bs!1188377 (not (= lambda!249617 lambda!249605))))

(declare-fun bs!1188378 () Bool)

(assert (= bs!1188378 (and b!5029636 d!1618545)))

(assert (=> bs!1188378 (not (= lambda!249617 lambda!249612))))

(declare-fun bs!1188379 () Bool)

(assert (= bs!1188379 (and b!5029636 b!5029635)))

(assert (=> bs!1188379 (= lambda!249617 lambda!249616)))

(declare-fun bs!1188380 () Bool)

(assert (= bs!1188380 (and b!5029636 b!5029245)))

(assert (=> bs!1188380 (= lambda!249617 lambda!249573)))

(declare-fun bs!1188381 () Bool)

(assert (= bs!1188381 (and b!5029636 d!1618407)))

(assert (=> bs!1188381 (not (= lambda!249617 lambda!249572))))

(declare-fun bs!1188382 () Bool)

(assert (= bs!1188382 (and b!5029636 d!1618347)))

(assert (=> bs!1188382 (not (= lambda!249617 lambda!249547))))

(declare-fun bs!1188383 () Bool)

(assert (= bs!1188383 (and b!5029636 b!5029246)))

(assert (=> bs!1188383 (= lambda!249617 lambda!249574)))

(declare-fun bm!350915 () Bool)

(declare-fun call!350921 () List!58334)

(assert (=> bm!350915 (= call!350921 (toList!8133 lt!2081411))))

(declare-fun lt!2081607 () Bool)

(assert (=> d!1618595 (= lt!2081607 (isEmpty!31475 (getLanguageWitness!753 lt!2081411)))))

(assert (=> d!1618595 (= lt!2081607 (forall!13451 lt!2081411 lambda!249615))))

(declare-fun lt!2081609 () Unit!149405)

(declare-fun e!3141991 () Unit!149405)

(assert (=> d!1618595 (= lt!2081609 e!3141991)))

(declare-fun c!860893 () Bool)

(assert (=> d!1618595 (= c!860893 (not (forall!13451 lt!2081411 lambda!249615)))))

(assert (=> d!1618595 (= (lostCauseZipper!949 lt!2081411) lt!2081607)))

(declare-fun Unit!149411 () Unit!149405)

(assert (=> b!5029636 (= e!3141991 Unit!149411)))

(declare-fun lt!2081610 () List!58334)

(assert (=> b!5029636 (= lt!2081610 call!350921)))

(declare-fun lt!2081606 () Unit!149405)

(assert (=> b!5029636 (= lt!2081606 (lemmaForallThenNotExists!265 lt!2081610 lambda!249615))))

(declare-fun call!350920 () Bool)

(assert (=> b!5029636 (not call!350920)))

(declare-fun lt!2081605 () Unit!149405)

(assert (=> b!5029636 (= lt!2081605 lt!2081606)))

(declare-fun Unit!149412 () Unit!149405)

(assert (=> b!5029635 (= e!3141991 Unit!149412)))

(declare-fun lt!2081611 () List!58334)

(assert (=> b!5029635 (= lt!2081611 call!350921)))

(declare-fun lt!2081612 () Unit!149405)

(assert (=> b!5029635 (= lt!2081612 (lemmaNotForallThenExists!282 lt!2081611 lambda!249615))))

(assert (=> b!5029635 call!350920))

(declare-fun lt!2081608 () Unit!149405)

(assert (=> b!5029635 (= lt!2081608 lt!2081612)))

(declare-fun bm!350916 () Bool)

(assert (=> bm!350916 (= call!350920 (exists!1412 (ite c!860893 lt!2081611 lt!2081610) (ite c!860893 lambda!249616 lambda!249617)))))

(assert (= (and d!1618595 c!860893) b!5029635))

(assert (= (and d!1618595 (not c!860893)) b!5029636))

(assert (= (or b!5029635 b!5029636) bm!350915))

(assert (= (or b!5029635 b!5029636) bm!350916))

(declare-fun m!6064944 () Bool)

(assert (=> b!5029635 m!6064944))

(declare-fun m!6064946 () Bool)

(assert (=> d!1618595 m!6064946))

(assert (=> d!1618595 m!6064946))

(declare-fun m!6064948 () Bool)

(assert (=> d!1618595 m!6064948))

(declare-fun m!6064950 () Bool)

(assert (=> d!1618595 m!6064950))

(assert (=> d!1618595 m!6064950))

(declare-fun m!6064952 () Bool)

(assert (=> b!5029636 m!6064952))

(assert (=> bm!350915 m!6064670))

(declare-fun m!6064954 () Bool)

(assert (=> bm!350916 m!6064954))

(assert (=> b!5029159 d!1618595))

(declare-fun d!1618597 () Bool)

(assert (=> d!1618597 (= (inv!76812 (xs!18780 (c!860649 totalInput!1141))) (<= (size!38747 (innerList!15542 (xs!18780 (c!860649 totalInput!1141)))) 2147483647))))

(declare-fun bs!1188384 () Bool)

(assert (= bs!1188384 d!1618597))

(declare-fun m!6064956 () Bool)

(assert (=> bs!1188384 m!6064956))

(assert (=> b!5029337 d!1618597))

(declare-fun d!1618599 () Bool)

(declare-fun e!3141995 () Bool)

(assert (=> d!1618599 e!3141995))

(declare-fun res!2143774 () Bool)

(assert (=> d!1618599 (=> (not res!2143774) (not e!3141995))))

(declare-fun lt!2081613 () List!58332)

(assert (=> d!1618599 (= res!2143774 (= ((_ map implies) (content!10319 lt!2081613) (content!10319 (t!370740 lt!2081418))) ((as const (InoxSet C!28120)) true)))))

(declare-fun e!3141993 () List!58332)

(assert (=> d!1618599 (= lt!2081613 e!3141993)))

(declare-fun c!860897 () Bool)

(assert (=> d!1618599 (= c!860897 ((_ is Nil!58208) (t!370740 lt!2081418)))))

(assert (=> d!1618599 (= (drop!2582 (t!370740 lt!2081418) (- (+ 1 from!1228) 1)) lt!2081613)))

(declare-fun b!5029637 () Bool)

(declare-fun e!3141994 () Int)

(declare-fun call!350922 () Int)

(assert (=> b!5029637 (= e!3141994 call!350922)))

(declare-fun b!5029638 () Bool)

(declare-fun e!3141992 () Int)

(assert (=> b!5029638 (= e!3141992 0)))

(declare-fun b!5029639 () Bool)

(declare-fun e!3141996 () List!58332)

(assert (=> b!5029639 (= e!3141993 e!3141996)))

(declare-fun c!860895 () Bool)

(assert (=> b!5029639 (= c!860895 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5029640 () Bool)

(assert (=> b!5029640 (= e!3141996 (drop!2582 (t!370740 (t!370740 lt!2081418)) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5029641 () Bool)

(assert (=> b!5029641 (= e!3141993 Nil!58208)))

(declare-fun bm!350917 () Bool)

(assert (=> bm!350917 (= call!350922 (size!38747 (t!370740 lt!2081418)))))

(declare-fun b!5029642 () Bool)

(assert (=> b!5029642 (= e!3141996 (t!370740 lt!2081418))))

(declare-fun b!5029643 () Bool)

(assert (=> b!5029643 (= e!3141995 (= (size!38747 lt!2081613) e!3141994))))

(declare-fun c!860896 () Bool)

(assert (=> b!5029643 (= c!860896 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5029644 () Bool)

(assert (=> b!5029644 (= e!3141994 e!3141992)))

(declare-fun c!860894 () Bool)

(assert (=> b!5029644 (= c!860894 (>= (- (+ 1 from!1228) 1) call!350922))))

(declare-fun b!5029645 () Bool)

(assert (=> b!5029645 (= e!3141992 (- call!350922 (- (+ 1 from!1228) 1)))))

(assert (= (and d!1618599 c!860897) b!5029641))

(assert (= (and d!1618599 (not c!860897)) b!5029639))

(assert (= (and b!5029639 c!860895) b!5029642))

(assert (= (and b!5029639 (not c!860895)) b!5029640))

(assert (= (and d!1618599 res!2143774) b!5029643))

(assert (= (and b!5029643 c!860896) b!5029637))

(assert (= (and b!5029643 (not c!860896)) b!5029644))

(assert (= (and b!5029644 c!860894) b!5029638))

(assert (= (and b!5029644 (not c!860894)) b!5029645))

(assert (= (or b!5029637 b!5029644 b!5029645) bm!350917))

(declare-fun m!6064958 () Bool)

(assert (=> d!1618599 m!6064958))

(assert (=> d!1618599 m!6064810))

(declare-fun m!6064960 () Bool)

(assert (=> b!5029640 m!6064960))

(assert (=> bm!350917 m!6064688))

(declare-fun m!6064962 () Bool)

(assert (=> b!5029643 m!6064962))

(assert (=> b!5029191 d!1618599))

(assert (=> b!5029287 d!1618593))

(assert (=> b!5029015 d!1618397))

(declare-fun d!1618601 () Bool)

(declare-fun c!860898 () Bool)

(assert (=> d!1618601 (= c!860898 ((_ is Nil!58208) lt!2081437))))

(declare-fun e!3141997 () (InoxSet C!28120))

(assert (=> d!1618601 (= (content!10319 lt!2081437) e!3141997)))

(declare-fun b!5029646 () Bool)

(assert (=> b!5029646 (= e!3141997 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029647 () Bool)

(assert (=> b!5029647 (= e!3141997 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 lt!2081437) true) (content!10319 (t!370740 lt!2081437))))))

(assert (= (and d!1618601 c!860898) b!5029646))

(assert (= (and d!1618601 (not c!860898)) b!5029647))

(declare-fun m!6064964 () Bool)

(assert (=> b!5029647 m!6064964))

(declare-fun m!6064966 () Bool)

(assert (=> b!5029647 m!6064966))

(assert (=> d!1618363 d!1618601))

(declare-fun d!1618603 () Bool)

(declare-fun c!860899 () Bool)

(assert (=> d!1618603 (= c!860899 ((_ is Nil!58208) (list!18805 totalInput!1141)))))

(declare-fun e!3141998 () (InoxSet C!28120))

(assert (=> d!1618603 (= (content!10319 (list!18805 totalInput!1141)) e!3141998)))

(declare-fun b!5029648 () Bool)

(assert (=> b!5029648 (= e!3141998 ((as const (Array C!28120 Bool)) false))))

(declare-fun b!5029649 () Bool)

(assert (=> b!5029649 (= e!3141998 ((_ map or) (store ((as const (Array C!28120 Bool)) false) (h!64656 (list!18805 totalInput!1141)) true) (content!10319 (t!370740 (list!18805 totalInput!1141)))))))

(assert (= (and d!1618603 c!860899) b!5029648))

(assert (= (and d!1618603 (not c!860899)) b!5029649))

(declare-fun m!6064968 () Bool)

(assert (=> b!5029649 m!6064968))

(assert (=> b!5029649 m!6064876))

(assert (=> d!1618363 d!1618603))

(declare-fun d!1618605 () Bool)

(declare-fun lt!2081614 () C!28120)

(assert (=> d!1618605 (contains!19580 (list!18805 totalInput!1141) lt!2081614)))

(declare-fun e!3142000 () C!28120)

(assert (=> d!1618605 (= lt!2081614 e!3142000)))

(declare-fun c!860900 () Bool)

(assert (=> d!1618605 (= c!860900 (= from!1228 0))))

(declare-fun e!3141999 () Bool)

(assert (=> d!1618605 e!3141999))

(declare-fun res!2143775 () Bool)

(assert (=> d!1618605 (=> (not res!2143775) (not e!3141999))))

(assert (=> d!1618605 (= res!2143775 (<= 0 from!1228))))

(assert (=> d!1618605 (= (apply!14198 (list!18805 totalInput!1141) from!1228) lt!2081614)))

(declare-fun b!5029650 () Bool)

(assert (=> b!5029650 (= e!3141999 (< from!1228 (size!38747 (list!18805 totalInput!1141))))))

(declare-fun b!5029651 () Bool)

(assert (=> b!5029651 (= e!3142000 (head!10788 (list!18805 totalInput!1141)))))

(declare-fun b!5029652 () Bool)

(assert (=> b!5029652 (= e!3142000 (apply!14198 (tail!9921 (list!18805 totalInput!1141)) (- from!1228 1)))))

(assert (= (and d!1618605 res!2143775) b!5029650))

(assert (= (and d!1618605 c!860900) b!5029651))

(assert (= (and d!1618605 (not c!860900)) b!5029652))

(assert (=> d!1618605 m!6064266))

(declare-fun m!6064970 () Bool)

(assert (=> d!1618605 m!6064970))

(assert (=> b!5029650 m!6064266))

(assert (=> b!5029650 m!6064366))

(assert (=> b!5029651 m!6064266))

(declare-fun m!6064972 () Bool)

(assert (=> b!5029651 m!6064972))

(assert (=> b!5029652 m!6064266))

(declare-fun m!6064974 () Bool)

(assert (=> b!5029652 m!6064974))

(assert (=> b!5029652 m!6064974))

(declare-fun m!6064976 () Bool)

(assert (=> b!5029652 m!6064976))

(assert (=> d!1618387 d!1618605))

(assert (=> d!1618387 d!1618369))

(declare-fun b!5029667 () Bool)

(declare-fun e!3142011 () Int)

(assert (=> b!5029667 (= e!3142011 from!1228)))

(declare-fun bm!350920 () Bool)

(declare-fun c!860909 () Bool)

(declare-fun c!860907 () Bool)

(assert (=> bm!350920 (= c!860909 c!860907)))

(declare-fun call!350925 () C!28120)

(assert (=> bm!350920 (= call!350925 (apply!14199 (ite c!860907 (left!42588 (c!860649 totalInput!1141)) (right!42918 (c!860649 totalInput!1141))) e!3142011))))

(declare-fun b!5029668 () Bool)

(declare-fun e!3142012 () C!28120)

(declare-fun apply!14201 (IArray!30969 Int) C!28120)

(assert (=> b!5029668 (= e!3142012 (apply!14201 (xs!18780 (c!860649 totalInput!1141)) from!1228))))

(declare-fun b!5029669 () Bool)

(declare-fun e!3142010 () C!28120)

(assert (=> b!5029669 (= e!3142010 call!350925)))

(declare-fun b!5029670 () Bool)

(assert (=> b!5029670 (= e!3142010 call!350925)))

(declare-fun b!5029671 () Bool)

(declare-fun e!3142009 () Bool)

(assert (=> b!5029671 (= e!3142009 (< from!1228 (size!38750 (c!860649 totalInput!1141))))))

(declare-fun b!5029672 () Bool)

(assert (=> b!5029672 (= e!3142011 (- from!1228 (size!38750 (left!42588 (c!860649 totalInput!1141)))))))

(declare-fun d!1618607 () Bool)

(declare-fun lt!2081620 () C!28120)

(assert (=> d!1618607 (= lt!2081620 (apply!14198 (list!18806 (c!860649 totalInput!1141)) from!1228))))

(assert (=> d!1618607 (= lt!2081620 e!3142012)))

(declare-fun c!860908 () Bool)

(assert (=> d!1618607 (= c!860908 ((_ is Leaf!25635) (c!860649 totalInput!1141)))))

(assert (=> d!1618607 e!3142009))

(declare-fun res!2143778 () Bool)

(assert (=> d!1618607 (=> (not res!2143778) (not e!3142009))))

(assert (=> d!1618607 (= res!2143778 (<= 0 from!1228))))

(assert (=> d!1618607 (= (apply!14199 (c!860649 totalInput!1141) from!1228) lt!2081620)))

(declare-fun b!5029673 () Bool)

(assert (=> b!5029673 (= e!3142012 e!3142010)))

(declare-fun lt!2081619 () Bool)

(declare-fun appendIndex!404 (List!58332 List!58332 Int) Bool)

(assert (=> b!5029673 (= lt!2081619 (appendIndex!404 (list!18806 (left!42588 (c!860649 totalInput!1141))) (list!18806 (right!42918 (c!860649 totalInput!1141))) from!1228))))

(assert (=> b!5029673 (= c!860907 (< from!1228 (size!38750 (left!42588 (c!860649 totalInput!1141)))))))

(assert (= (and d!1618607 res!2143778) b!5029671))

(assert (= (and d!1618607 c!860908) b!5029668))

(assert (= (and d!1618607 (not c!860908)) b!5029673))

(assert (= (and b!5029673 c!860907) b!5029670))

(assert (= (and b!5029673 (not c!860907)) b!5029669))

(assert (= (or b!5029670 b!5029669) bm!350920))

(assert (= (and bm!350920 c!860909) b!5029667))

(assert (= (and bm!350920 (not c!860909)) b!5029672))

(assert (=> b!5029671 m!6064376))

(declare-fun m!6064978 () Bool)

(assert (=> b!5029668 m!6064978))

(assert (=> b!5029673 m!6064728))

(assert (=> b!5029673 m!6064730))

(assert (=> b!5029673 m!6064728))

(assert (=> b!5029673 m!6064730))

(declare-fun m!6064980 () Bool)

(assert (=> b!5029673 m!6064980))

(assert (=> b!5029673 m!6064856))

(declare-fun m!6064982 () Bool)

(assert (=> bm!350920 m!6064982))

(assert (=> d!1618607 m!6064370))

(assert (=> d!1618607 m!6064370))

(declare-fun m!6064984 () Bool)

(assert (=> d!1618607 m!6064984))

(assert (=> b!5029672 m!6064856))

(assert (=> d!1618387 d!1618607))

(assert (=> b!5029285 d!1618593))

(assert (=> b!5029117 d!1618593))

(assert (=> b!5029155 d!1618363))

(assert (=> b!5029155 d!1618569))

(declare-fun e!3142015 () Int)

(declare-fun b!5029674 () Bool)

(assert (=> b!5029674 (= e!3142015 (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)))))

(declare-fun b!5029675 () Bool)

(declare-fun e!3142016 () Bool)

(declare-fun lt!2081621 () List!58332)

(declare-fun e!3142014 () Int)

(assert (=> b!5029675 (= e!3142016 (= (size!38747 lt!2081621) e!3142014))))

(declare-fun c!860910 () Bool)

(assert (=> b!5029675 (= c!860910 (<= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) 0))))

(declare-fun b!5029676 () Bool)

(declare-fun e!3142013 () List!58332)

(assert (=> b!5029676 (= e!3142013 Nil!58208)))

(declare-fun b!5029677 () Bool)

(assert (=> b!5029677 (= e!3142013 (Cons!58208 (h!64656 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (take!782 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (- (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) 1))))))

(declare-fun d!1618609 () Bool)

(assert (=> d!1618609 e!3142016))

(declare-fun res!2143779 () Bool)

(assert (=> d!1618609 (=> (not res!2143779) (not e!3142016))))

(assert (=> d!1618609 (= res!2143779 (= ((_ map implies) (content!10319 lt!2081621) (content!10319 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618609 (= lt!2081621 e!3142013)))

(declare-fun c!860912 () Bool)

(assert (=> d!1618609 (= c!860912 (or ((_ is Nil!58208) (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (<= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) 0)))))

(assert (=> d!1618609 (= (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141))) lt!2081621)))

(declare-fun b!5029678 () Bool)

(assert (=> b!5029678 (= e!3142015 (size!38747 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5029679 () Bool)

(assert (=> b!5029679 (= e!3142014 0)))

(declare-fun b!5029680 () Bool)

(assert (=> b!5029680 (= e!3142014 e!3142015)))

(declare-fun c!860911 () Bool)

(assert (=> b!5029680 (= c!860911 (>= (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)) (size!38747 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))))))

(assert (= (and d!1618609 c!860912) b!5029676))

(assert (= (and d!1618609 (not c!860912)) b!5029677))

(assert (= (and d!1618609 res!2143779) b!5029675))

(assert (= (and b!5029675 c!860910) b!5029679))

(assert (= (and b!5029675 (not c!860910)) b!5029680))

(assert (= (and b!5029680 c!860911) b!5029678))

(assert (= (and b!5029680 (not c!860911)) b!5029674))

(assert (=> b!5029678 m!6064282))

(assert (=> b!5029678 m!6064344))

(declare-fun m!6064986 () Bool)

(assert (=> d!1618609 m!6064986))

(assert (=> d!1618609 m!6064282))

(assert (=> d!1618609 m!6064348))

(declare-fun m!6064988 () Bool)

(assert (=> b!5029675 m!6064988))

(assert (=> b!5029680 m!6064282))

(assert (=> b!5029680 m!6064344))

(declare-fun m!6064990 () Bool)

(assert (=> b!5029677 m!6064990))

(assert (=> b!5029155 d!1618609))

(assert (=> b!5029155 d!1618369))

(declare-fun c!860913 () Bool)

(declare-fun d!1618611 () Bool)

(assert (=> d!1618611 (= c!860913 (isEmpty!31474 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)))))))

(declare-fun e!3142017 () Bool)

(assert (=> d!1618611 (= (matchZipper!685 lt!2081411 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141)))) e!3142017)))

(declare-fun b!5029681 () Bool)

(assert (=> b!5029681 (= e!3142017 (nullableZipper!943 lt!2081411))))

(declare-fun b!5029682 () Bool)

(assert (=> b!5029682 (= e!3142017 (matchZipper!685 (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141))))) (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!249 lt!2081411 (+ 1 from!1228) totalInput!1141 (size!38746 totalInput!1141))))))))

(assert (= (and d!1618611 c!860913) b!5029681))

(assert (= (and d!1618611 (not c!860913)) b!5029682))

(assert (=> d!1618611 m!6064412))

(declare-fun m!6064992 () Bool)

(assert (=> d!1618611 m!6064992))

(assert (=> b!5029681 m!6064274))

(assert (=> b!5029682 m!6064412))

(declare-fun m!6064994 () Bool)

(assert (=> b!5029682 m!6064994))

(assert (=> b!5029682 m!6064994))

(declare-fun m!6064996 () Bool)

(assert (=> b!5029682 m!6064996))

(assert (=> b!5029682 m!6064412))

(declare-fun m!6064998 () Bool)

(assert (=> b!5029682 m!6064998))

(assert (=> b!5029682 m!6064996))

(assert (=> b!5029682 m!6064998))

(declare-fun m!6065000 () Bool)

(assert (=> b!5029682 m!6065000))

(assert (=> b!5029155 d!1618611))

(assert (=> b!5029155 d!1618371))

(assert (=> b!5029161 d!1618371))

(declare-fun d!1618613 () Bool)

(declare-fun c!860914 () Bool)

(assert (=> d!1618613 (= c!860914 (isEmpty!31474 (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))))))

(declare-fun e!3142018 () Bool)

(assert (=> d!1618613 (= (matchZipper!685 (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))) (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))) e!3142018)))

(declare-fun b!5029683 () Bool)

(assert (=> b!5029683 (= e!3142018 (nullableZipper!943 (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))))

(declare-fun b!5029684 () Bool)

(assert (=> b!5029684 (= e!3142018 (matchZipper!685 (derivationStepZipper!730 (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))) (head!10788 (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))) (tail!9921 (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))))

(assert (= (and d!1618613 c!860914) b!5029683))

(assert (= (and d!1618613 (not c!860914)) b!5029684))

(assert (=> d!1618613 m!6064340))

(declare-fun m!6065002 () Bool)

(assert (=> d!1618613 m!6065002))

(assert (=> b!5029683 m!6064338))

(declare-fun m!6065004 () Bool)

(assert (=> b!5029683 m!6065004))

(assert (=> b!5029684 m!6064340))

(declare-fun m!6065006 () Bool)

(assert (=> b!5029684 m!6065006))

(assert (=> b!5029684 m!6064338))

(assert (=> b!5029684 m!6065006))

(declare-fun m!6065008 () Bool)

(assert (=> b!5029684 m!6065008))

(assert (=> b!5029684 m!6064340))

(declare-fun m!6065010 () Bool)

(assert (=> b!5029684 m!6065010))

(assert (=> b!5029684 m!6065008))

(assert (=> b!5029684 m!6065010))

(declare-fun m!6065012 () Bool)

(assert (=> b!5029684 m!6065012))

(assert (=> b!5029069 d!1618613))

(declare-fun bs!1188385 () Bool)

(declare-fun d!1618615 () Bool)

(assert (= bs!1188385 (and d!1618615 d!1618391)))

(declare-fun lambda!249618 () Int)

(assert (=> bs!1188385 (= (= (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) lt!2081417) (= lambda!249618 lambda!249553))))

(declare-fun bs!1188386 () Bool)

(assert (= bs!1188386 (and d!1618615 d!1618499)))

(assert (=> bs!1188386 (= (= (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) (apply!14197 totalInput!1141 (+ 1 from!1228))) (= lambda!249618 lambda!249608))))

(declare-fun bs!1188387 () Bool)

(assert (= bs!1188387 (and d!1618615 d!1618553)))

(assert (=> bs!1188387 (= (= (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) (apply!14197 totalInput!1141 from!1228)) (= lambda!249618 lambda!249613))))

(declare-fun bs!1188388 () Bool)

(assert (= bs!1188388 (and d!1618615 d!1618583)))

(assert (=> bs!1188388 (= (= (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) (head!10788 (take!782 lt!2081419 lt!2081420))) (= lambda!249618 lambda!249614))))

(assert (=> d!1618615 true))

(assert (=> d!1618615 (= (derivationStepZipper!730 lt!2081411 (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410))) (flatMap!314 lt!2081411 lambda!249618))))

(declare-fun bs!1188389 () Bool)

(assert (= bs!1188389 d!1618615))

(declare-fun m!6065014 () Bool)

(assert (=> bs!1188389 m!6065014))

(assert (=> b!5029069 d!1618615))

(declare-fun d!1618617 () Bool)

(assert (=> d!1618617 (= (head!10788 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) (h!64656 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))

(assert (=> b!5029069 d!1618617))

(declare-fun d!1618619 () Bool)

(assert (=> d!1618619 (= (tail!9921 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)) (t!370740 (take!782 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)) lt!2081410)))))

(assert (=> b!5029069 d!1618619))

(assert (=> bm!350895 d!1618459))

(assert (=> b!5029233 d!1618347))

(declare-fun b!5029685 () Bool)

(declare-fun e!3142021 () Int)

(assert (=> b!5029685 (= e!3142021 (- lt!2081410 1))))

(declare-fun b!5029686 () Bool)

(declare-fun e!3142022 () Bool)

(declare-fun lt!2081622 () List!58332)

(declare-fun e!3142020 () Int)

(assert (=> b!5029686 (= e!3142022 (= (size!38747 lt!2081622) e!3142020))))

(declare-fun c!860915 () Bool)

(assert (=> b!5029686 (= c!860915 (<= (- lt!2081410 1) 0))))

(declare-fun b!5029687 () Bool)

(declare-fun e!3142019 () List!58332)

(assert (=> b!5029687 (= e!3142019 Nil!58208)))

(declare-fun b!5029688 () Bool)

(assert (=> b!5029688 (= e!3142019 (Cons!58208 (h!64656 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))) (take!782 (t!370740 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))) (- (- lt!2081410 1) 1))))))

(declare-fun d!1618621 () Bool)

(assert (=> d!1618621 e!3142022))

(declare-fun res!2143780 () Bool)

(assert (=> d!1618621 (=> (not res!2143780) (not e!3142022))))

(assert (=> d!1618621 (= res!2143780 (= ((_ map implies) (content!10319 lt!2081622) (content!10319 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))) ((as const (InoxSet C!28120)) true)))))

(assert (=> d!1618621 (= lt!2081622 e!3142019)))

(declare-fun c!860917 () Bool)

(assert (=> d!1618621 (= c!860917 (or ((_ is Nil!58208) (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))) (<= (- lt!2081410 1) 0)))))

(assert (=> d!1618621 (= (take!782 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))) (- lt!2081410 1)) lt!2081622)))

(declare-fun b!5029689 () Bool)

(assert (=> b!5029689 (= e!3142021 (size!38747 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5029690 () Bool)

(assert (=> b!5029690 (= e!3142020 0)))

(declare-fun b!5029691 () Bool)

(assert (=> b!5029691 (= e!3142020 e!3142021)))

(declare-fun c!860916 () Bool)

(assert (=> b!5029691 (= c!860916 (>= (- lt!2081410 1) (size!38747 (t!370740 (drop!2582 (list!18805 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1618621 c!860917) b!5029687))

(assert (= (and d!1618621 (not c!860917)) b!5029688))

(assert (= (and d!1618621 res!2143780) b!5029686))

(assert (= (and b!5029686 c!860915) b!5029690))

(assert (= (and b!5029686 (not c!860915)) b!5029691))

(assert (= (and b!5029691 c!860916) b!5029689))

(assert (= (and b!5029691 (not c!860916)) b!5029685))

(assert (=> b!5029689 m!6064676))

(declare-fun m!6065016 () Bool)

(assert (=> d!1618621 m!6065016))

(assert (=> d!1618621 m!6064888))

(declare-fun m!6065018 () Bool)

(assert (=> b!5029686 m!6065018))

(assert (=> b!5029691 m!6064676))

(declare-fun m!6065020 () Bool)

(assert (=> b!5029688 m!6065020))

(assert (=> b!5029073 d!1618621))

(declare-fun bs!1188390 () Bool)

(declare-fun d!1618623 () Bool)

(assert (= bs!1188390 (and d!1618623 b!5029636)))

(declare-fun lambda!249619 () Int)

(assert (=> bs!1188390 (not (= lambda!249619 lambda!249617))))

(declare-fun bs!1188391 () Bool)

(assert (= bs!1188391 (and d!1618623 d!1618465)))

(assert (=> bs!1188391 (not (= lambda!249619 lambda!249599))))

(declare-fun bs!1188392 () Bool)

(assert (= bs!1188392 (and d!1618623 d!1618489)))

(assert (=> bs!1188392 (= lambda!249619 lambda!249607)))

(declare-fun bs!1188393 () Bool)

(assert (= bs!1188393 (and d!1618623 d!1618595)))

(assert (=> bs!1188393 (not (= lambda!249619 lambda!249615))))

(declare-fun bs!1188394 () Bool)

(assert (= bs!1188394 (and d!1618623 d!1618481)))

(assert (=> bs!1188394 (= lambda!249619 lambda!249606)))

(declare-fun bs!1188395 () Bool)

(assert (= bs!1188395 (and d!1618623 d!1618469)))

(assert (=> bs!1188395 (not (= lambda!249619 lambda!249602))))

(declare-fun bs!1188396 () Bool)

(assert (= bs!1188396 (and d!1618623 d!1618475)))

(assert (=> bs!1188396 (not (= lambda!249619 lambda!249605))))

(declare-fun bs!1188397 () Bool)

(assert (= bs!1188397 (and d!1618623 d!1618545)))

(assert (=> bs!1188397 (not (= lambda!249619 lambda!249612))))

(declare-fun bs!1188398 () Bool)

(assert (= bs!1188398 (and d!1618623 b!5029635)))

(assert (=> bs!1188398 (not (= lambda!249619 lambda!249616))))

(declare-fun bs!1188399 () Bool)

(assert (= bs!1188399 (and d!1618623 b!5029245)))

(assert (=> bs!1188399 (not (= lambda!249619 lambda!249573))))

(declare-fun bs!1188400 () Bool)

(assert (= bs!1188400 (and d!1618623 d!1618407)))

(assert (=> bs!1188400 (not (= lambda!249619 lambda!249572))))

(declare-fun bs!1188401 () Bool)

(assert (= bs!1188401 (and d!1618623 d!1618347)))

(assert (=> bs!1188401 (= lambda!249619 lambda!249547)))

(declare-fun bs!1188402 () Bool)

(assert (= bs!1188402 (and d!1618623 b!5029246)))

(assert (=> bs!1188402 (not (= lambda!249619 lambda!249574))))

(assert (=> d!1618623 (= (nullableZipper!943 lt!2081457) (exists!1410 lt!2081457 lambda!249619))))

(declare-fun bs!1188403 () Bool)

(assert (= bs!1188403 d!1618623))

(declare-fun m!6065022 () Bool)

(assert (=> bs!1188403 m!6065022))

(assert (=> b!5029165 d!1618623))

(declare-fun d!1618625 () Bool)

(declare-fun lt!2081623 () Int)

(assert (=> d!1618625 (>= lt!2081623 0)))

(declare-fun e!3142023 () Int)

(assert (=> d!1618625 (= lt!2081623 e!3142023)))

(declare-fun c!860918 () Bool)

(assert (=> d!1618625 (= c!860918 ((_ is Nil!58208) lt!2081434))))

(assert (=> d!1618625 (= (size!38747 lt!2081434) lt!2081623)))

(declare-fun b!5029692 () Bool)

(assert (=> b!5029692 (= e!3142023 0)))

(declare-fun b!5029693 () Bool)

(assert (=> b!5029693 (= e!3142023 (+ 1 (size!38747 (t!370740 lt!2081434))))))

(assert (= (and d!1618625 c!860918) b!5029692))

(assert (= (and d!1618625 (not c!860918)) b!5029693))

(declare-fun m!6065024 () Bool)

(assert (=> b!5029693 m!6065024))

(assert (=> b!5029071 d!1618625))

(declare-fun d!1618627 () Bool)

(declare-fun lt!2081624 () Int)

(assert (=> d!1618627 (>= lt!2081624 0)))

(declare-fun e!3142024 () Int)

(assert (=> d!1618627 (= lt!2081624 e!3142024)))

(declare-fun c!860919 () Bool)

(assert (=> d!1618627 (= c!860919 ((_ is Nil!58208) lt!2081465))))

(assert (=> d!1618627 (= (size!38747 lt!2081465) lt!2081624)))

(declare-fun b!5029694 () Bool)

(assert (=> b!5029694 (= e!3142024 0)))

(declare-fun b!5029695 () Bool)

(assert (=> b!5029695 (= e!3142024 (+ 1 (size!38747 (t!370740 lt!2081465))))))

(assert (= (and d!1618627 c!860919) b!5029694))

(assert (= (and d!1618627 (not c!860919)) b!5029695))

(declare-fun m!6065026 () Bool)

(assert (=> b!5029695 m!6065026))

(assert (=> b!5029194 d!1618627))

(declare-fun b!5029700 () Bool)

(declare-fun e!3142027 () Bool)

(declare-fun tp_is_empty!36673 () Bool)

(declare-fun tp!1409305 () Bool)

(assert (=> b!5029700 (= e!3142027 (and tp_is_empty!36673 tp!1409305))))

(assert (=> b!5029338 (= tp!1409280 e!3142027)))

(assert (= (and b!5029338 ((_ is Cons!58208) (innerList!15542 (xs!18780 (c!860649 totalInput!1141))))) b!5029700))

(declare-fun tp!1409306 () Bool)

(declare-fun e!3142029 () Bool)

(declare-fun b!5029701 () Bool)

(declare-fun tp!1409308 () Bool)

(assert (=> b!5029701 (= e!3142029 (and (inv!76807 (left!42588 (left!42588 (c!860649 totalInput!1141)))) tp!1409308 (inv!76807 (right!42918 (left!42588 (c!860649 totalInput!1141)))) tp!1409306))))

(declare-fun b!5029703 () Bool)

(declare-fun e!3142028 () Bool)

(declare-fun tp!1409307 () Bool)

(assert (=> b!5029703 (= e!3142028 tp!1409307)))

(declare-fun b!5029702 () Bool)

(assert (=> b!5029702 (= e!3142029 (and (inv!76812 (xs!18780 (left!42588 (c!860649 totalInput!1141)))) e!3142028))))

(assert (=> b!5029336 (= tp!1409281 (and (inv!76807 (left!42588 (c!860649 totalInput!1141))) e!3142029))))

(assert (= (and b!5029336 ((_ is Node!15454) (left!42588 (c!860649 totalInput!1141)))) b!5029701))

(assert (= b!5029702 b!5029703))

(assert (= (and b!5029336 ((_ is Leaf!25635) (left!42588 (c!860649 totalInput!1141)))) b!5029702))

(declare-fun m!6065028 () Bool)

(assert (=> b!5029701 m!6065028))

(declare-fun m!6065030 () Bool)

(assert (=> b!5029701 m!6065030))

(declare-fun m!6065032 () Bool)

(assert (=> b!5029702 m!6065032))

(assert (=> b!5029336 m!6064572))

(declare-fun e!3142031 () Bool)

(declare-fun b!5029704 () Bool)

(declare-fun tp!1409311 () Bool)

(declare-fun tp!1409309 () Bool)

(assert (=> b!5029704 (= e!3142031 (and (inv!76807 (left!42588 (right!42918 (c!860649 totalInput!1141)))) tp!1409311 (inv!76807 (right!42918 (right!42918 (c!860649 totalInput!1141)))) tp!1409309))))

(declare-fun b!5029706 () Bool)

(declare-fun e!3142030 () Bool)

(declare-fun tp!1409310 () Bool)

(assert (=> b!5029706 (= e!3142030 tp!1409310)))

(declare-fun b!5029705 () Bool)

(assert (=> b!5029705 (= e!3142031 (and (inv!76812 (xs!18780 (right!42918 (c!860649 totalInput!1141)))) e!3142030))))

(assert (=> b!5029336 (= tp!1409279 (and (inv!76807 (right!42918 (c!860649 totalInput!1141))) e!3142031))))

(assert (= (and b!5029336 ((_ is Node!15454) (right!42918 (c!860649 totalInput!1141)))) b!5029704))

(assert (= b!5029705 b!5029706))

(assert (= (and b!5029336 ((_ is Leaf!25635) (right!42918 (c!860649 totalInput!1141)))) b!5029705))

(declare-fun m!6065034 () Bool)

(assert (=> b!5029704 m!6065034))

(declare-fun m!6065036 () Bool)

(assert (=> b!5029704 m!6065036))

(declare-fun m!6065038 () Bool)

(assert (=> b!5029705 m!6065038))

(assert (=> b!5029336 m!6064574))

(declare-fun b!5029707 () Bool)

(declare-fun e!3142032 () Bool)

(declare-fun tp!1409312 () Bool)

(declare-fun tp!1409313 () Bool)

(assert (=> b!5029707 (= e!3142032 (and tp!1409312 tp!1409313))))

(assert (=> b!5029321 (= tp!1409266 e!3142032)))

(assert (= (and b!5029321 ((_ is Cons!58209) (exprs!3860 setElem!28989))) b!5029707))

(declare-fun b!5029720 () Bool)

(declare-fun e!3142035 () Bool)

(declare-fun tp!1409327 () Bool)

(assert (=> b!5029720 (= e!3142035 tp!1409327)))

(declare-fun b!5029718 () Bool)

(assert (=> b!5029718 (= e!3142035 tp_is_empty!36673)))

(assert (=> b!5029327 (= tp!1409271 e!3142035)))

(declare-fun b!5029721 () Bool)

(declare-fun tp!1409324 () Bool)

(declare-fun tp!1409326 () Bool)

(assert (=> b!5029721 (= e!3142035 (and tp!1409324 tp!1409326))))

(declare-fun b!5029719 () Bool)

(declare-fun tp!1409328 () Bool)

(declare-fun tp!1409325 () Bool)

(assert (=> b!5029719 (= e!3142035 (and tp!1409328 tp!1409325))))

(assert (= (and b!5029327 ((_ is ElementMatch!13935) (h!64657 (exprs!3860 setElem!28986)))) b!5029718))

(assert (= (and b!5029327 ((_ is Concat!22728) (h!64657 (exprs!3860 setElem!28986)))) b!5029719))

(assert (= (and b!5029327 ((_ is Star!13935) (h!64657 (exprs!3860 setElem!28986)))) b!5029720))

(assert (= (and b!5029327 ((_ is Union!13935) (h!64657 (exprs!3860 setElem!28986)))) b!5029721))

(declare-fun b!5029722 () Bool)

(declare-fun e!3142036 () Bool)

(declare-fun tp!1409329 () Bool)

(declare-fun tp!1409330 () Bool)

(assert (=> b!5029722 (= e!3142036 (and tp!1409329 tp!1409330))))

(assert (=> b!5029327 (= tp!1409272 e!3142036)))

(assert (= (and b!5029327 ((_ is Cons!58209) (t!370741 (exprs!3860 setElem!28986)))) b!5029722))

(declare-fun condSetEmpty!28993 () Bool)

(assert (=> setNonEmpty!28989 (= condSetEmpty!28993 (= setRest!28989 ((as const (Array Context!6720 Bool)) false)))))

(declare-fun setRes!28993 () Bool)

(assert (=> setNonEmpty!28989 (= tp!1409265 setRes!28993)))

(declare-fun setIsEmpty!28993 () Bool)

(assert (=> setIsEmpty!28993 setRes!28993))

(declare-fun tp!1409331 () Bool)

(declare-fun setNonEmpty!28993 () Bool)

(declare-fun setElem!28993 () Context!6720)

(declare-fun e!3142037 () Bool)

(assert (=> setNonEmpty!28993 (= setRes!28993 (and tp!1409331 (inv!76805 setElem!28993) e!3142037))))

(declare-fun setRest!28993 () (InoxSet Context!6720))

(assert (=> setNonEmpty!28993 (= setRest!28989 ((_ map or) (store ((as const (Array Context!6720 Bool)) false) setElem!28993 true) setRest!28993))))

(declare-fun b!5029723 () Bool)

(declare-fun tp!1409332 () Bool)

(assert (=> b!5029723 (= e!3142037 tp!1409332)))

(assert (= (and setNonEmpty!28989 condSetEmpty!28993) setIsEmpty!28993))

(assert (= (and setNonEmpty!28989 (not condSetEmpty!28993)) setNonEmpty!28993))

(assert (= setNonEmpty!28993 b!5029723))

(declare-fun m!6065040 () Bool)

(assert (=> setNonEmpty!28993 m!6065040))

(declare-fun b_lambda!198707 () Bool)

(assert (= b_lambda!198705 (or d!1618405 b_lambda!198707)))

(declare-fun bs!1188404 () Bool)

(declare-fun d!1618629 () Bool)

(assert (= bs!1188404 (and d!1618629 d!1618405)))

(declare-fun validRegex!6122 (Regex!13935) Bool)

(assert (=> bs!1188404 (= (dynLambda!23540 lambda!249559 (h!64657 (exprs!3860 setElem!28986))) (validRegex!6122 (h!64657 (exprs!3860 setElem!28986))))))

(declare-fun m!6065042 () Bool)

(assert (=> bs!1188404 m!6065042))

(assert (=> b!5029450 d!1618629))

(check-sat (not b!5029602) (not b!5029497) (not b!5029520) (not b!5029691) (not b!5029558) (not b!5029532) (not b!5029719) (not b!5029722) (not b!5029534) (not b!5029471) (not b!5029568) (not d!1618607) (not b!5029417) (not b!5029527) (not b!5029721) (not b!5029545) (not b!5029613) (not b!5029626) (not b!5029668) (not b!5029636) (not b!5029524) (not b!5029577) (not bm!350914) (not d!1618469) (not b!5029476) (not b!5029538) (not b!5029623) (not d!1618475) (not b!5029510) (not d!1618483) (not b!5029632) (not b!5029672) (not b!5029514) (not bm!350917) (not b!5029483) (not b!5029531) (not b!5029677) (not b!5029723) (not b!5029619) (not b!5029686) (not b!5029701) (not b!5029693) (not d!1618557) (not d!1618501) (not b!5029640) (not b!5029499) (not b!5029584) (not b!5029617) (not b!5029516) (not d!1618455) (not d!1618591) (not b!5029647) (not b!5029500) (not b!5029453) (not b!5029610) (not b!5029481) (not d!1618573) (not b!5029490) (not b!5029502) (not d!1618571) (not d!1618539) (not d!1618533) (not b!5029518) (not b!5029611) (not bm!350920) (not b!5029437) (not b!5029488) (not b!5029571) (not b!5029652) (not b!5029598) (not d!1618615) (not b!5029469) (not d!1618545) (not d!1618613) (not d!1618481) (not b!5029702) (not d!1618597) (not b!5029643) (not b!5029597) (not b!5029491) (not b!5029541) (not b!5029512) (not b!5029635) (not b!5029508) (not d!1618621) (not b!5029451) (not b!5029704) (not bm!350916) (not b!5029529) (not d!1618599) (not b!5029489) (not b!5029434) (not b!5029680) (not d!1618605) (not d!1618465) (not d!1618553) (not b!5029465) (not bm!350912) (not b!5029700) (not d!1618467) (not b!5029673) (not b!5029464) (not b!5029681) (not d!1618595) (not b!5029478) (not b!5029419) (not b!5029472) tp_is_empty!36673 (not b!5029624) (not b!5029608) (not d!1618485) (not b!5029522) (not b!5029433) (not d!1618541) (not b!5029495) (not b!5029414) (not d!1618623) (not b!5029606) (not d!1618563) (not b!5029563) (not b!5029474) (not d!1618609) (not b!5029412) (not b!5029689) (not b!5029621) (not b!5029706) (not b!5029589) (not d!1618537) (not b!5029525) (not b!5029618) (not d!1618565) (not b!5029467) (not d!1618493) (not b!5029596) (not b!5029575) (not bs!1188404) (not d!1618535) (not d!1618551) (not b!5029695) (not b!5029634) (not b!5029557) (not b!5029432) (not b!5029594) (not b!5029649) (not b!5029720) (not b!5029707) (not d!1618589) (not b!5029683) (not d!1618451) (not b!5029688) (not b!5029615) (not b!5029416) (not b!5029705) (not d!1618499) (not b!5029559) (not b!5029485) (not b!5029671) (not b!5029479) (not b!5029678) (not d!1618489) (not b!5029487) (not d!1618583) (not b!5029336) (not b_lambda!198707) (not bm!350915) (not setNonEmpty!28993) (not b!5029684) (not b!5029415) (not b!5029435) (not d!1618449) (not b!5029547) (not b!5029650) (not b!5029436) (not bm!350913) (not b!5029581) (not b!5029675) (not b!5029703) (not d!1618581) (not d!1618567) (not b!5029682) (not b!5029442) (not b!5029555) (not b!5029651) (not d!1618611))
(check-sat)
