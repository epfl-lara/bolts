; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531110 () Bool)

(assert start!531110)

(declare-fun b!5024675 () Bool)

(declare-fun res!2142413 () Bool)

(declare-fun e!3138954 () Bool)

(assert (=> b!5024675 (=> (not res!2142413) (not e!3138954))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28076 0))(
  ( (C!28077 (val!23414 Int)) )
))
(declare-datatypes ((Regex!13913 0))(
  ( (ElementMatch!13913 (c!859157 C!28076)) (Concat!22706 (regOne!28338 Regex!13913) (regTwo!28338 Regex!13913)) (EmptyExpr!13913) (Star!13913 (reg!14242 Regex!13913)) (EmptyLang!13913) (Union!13913 (regOne!28339 Regex!13913) (regTwo!28339 Regex!13913)) )
))
(declare-datatypes ((List!58274 0))(
  ( (Nil!58150) (Cons!58150 (h!64598 Regex!13913) (t!370666 List!58274)) )
))
(declare-datatypes ((Context!6676 0))(
  ( (Context!6677 (exprs!3838 List!58274)) )
))
(declare-fun z!4747 () (InoxSet Context!6676))

(declare-fun lostCauseZipper!927 ((InoxSet Context!6676)) Bool)

(assert (=> b!5024675 (= res!2142413 (not (lostCauseZipper!927 z!4747)))))

(declare-fun tp!1408605 () Bool)

(declare-fun setNonEmpty!28868 () Bool)

(declare-fun e!3138949 () Bool)

(declare-fun setRes!28868 () Bool)

(declare-fun setElem!28868 () Context!6676)

(declare-fun inv!76662 (Context!6676) Bool)

(assert (=> setNonEmpty!28868 (= setRes!28868 (and tp!1408605 (inv!76662 setElem!28868) e!3138949))))

(declare-fun setRest!28868 () (InoxSet Context!6676))

(assert (=> setNonEmpty!28868 (= z!4747 ((_ map or) (store ((as const (Array Context!6676 Bool)) false) setElem!28868 true) setRest!28868))))

(declare-fun b!5024676 () Bool)

(declare-fun e!3138955 () Bool)

(declare-datatypes ((List!58275 0))(
  ( (Nil!58151) (Cons!58151 (h!64599 C!28076) (t!370667 List!58275)) )
))
(declare-fun lt!2079778 () List!58275)

(declare-fun matchZipper!667 ((InoxSet Context!6676) List!58275) Bool)

(assert (=> b!5024676 (= e!3138955 (matchZipper!667 z!4747 lt!2079778))))

(declare-fun setIsEmpty!28868 () Bool)

(assert (=> setIsEmpty!28868 setRes!28868))

(declare-fun b!5024677 () Bool)

(declare-fun e!3138950 () Bool)

(assert (=> b!5024677 (= e!3138950 e!3138955)))

(declare-fun res!2142412 () Bool)

(assert (=> b!5024677 (=> res!2142412 e!3138955)))

(declare-fun lt!2079774 () List!58275)

(assert (=> b!5024677 (= res!2142412 (not (= lt!2079774 lt!2079778)))))

(declare-fun lt!2079775 () C!28076)

(declare-fun lt!2079780 () List!58275)

(assert (=> b!5024677 (= lt!2079778 (Cons!58151 lt!2079775 lt!2079780))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079779 () List!58275)

(declare-fun apply!14144 (List!58275 Int) C!28076)

(assert (=> b!5024677 (= (Cons!58151 (apply!14144 lt!2079779 from!1228) lt!2079780) lt!2079774)))

(declare-fun lt!2079782 () Int)

(declare-datatypes ((Unit!149335 0))(
  ( (Unit!149336) )
))
(declare-fun lt!2079773 () Unit!149335)

(declare-fun lemmaDropTakeAddOneLeft!92 (List!58275 Int Int) Unit!149335)

(assert (=> b!5024677 (= lt!2079773 (lemmaDropTakeAddOneLeft!92 lt!2079779 from!1228 lt!2079782))))

(declare-fun take!764 (List!58275 Int) List!58275)

(declare-fun drop!2564 (List!58275 Int) List!58275)

(assert (=> b!5024677 (= lt!2079774 (take!764 (drop!2564 lt!2079779 from!1228) (+ 1 lt!2079782)))))

(declare-fun b!5024678 () Bool)

(assert (=> b!5024678 (= e!3138954 (not e!3138950))))

(declare-fun res!2142414 () Bool)

(assert (=> b!5024678 (=> res!2142414 e!3138950)))

(assert (=> b!5024678 (= res!2142414 (<= lt!2079782 0))))

(assert (=> b!5024678 (= lt!2079780 (take!764 (drop!2564 lt!2079779 (+ 1 from!1228)) lt!2079782))))

(declare-datatypes ((IArray!30925 0))(
  ( (IArray!30926 (innerList!15520 List!58275)) )
))
(declare-datatypes ((Conc!15432 0))(
  ( (Node!15432 (left!42527 Conc!15432) (right!42857 Conc!15432) (csize!31094 Int) (cheight!15643 Int)) (Leaf!25602 (xs!18758 IArray!30925) (csize!31095 Int)) (Empty!15432) )
))
(declare-datatypes ((BalanceConc!30294 0))(
  ( (BalanceConc!30295 (c!859158 Conc!15432)) )
))
(declare-fun totalInput!1141 () BalanceConc!30294)

(declare-fun list!18768 (BalanceConc!30294) List!58275)

(assert (=> b!5024678 (= lt!2079779 (list!18768 totalInput!1141))))

(declare-fun e!3138953 () Bool)

(assert (=> b!5024678 e!3138953))

(declare-fun res!2142411 () Bool)

(assert (=> b!5024678 (=> res!2142411 e!3138953)))

(assert (=> b!5024678 (= res!2142411 (= lt!2079782 0))))

(declare-fun lt!2079776 () Unit!149335)

(declare-fun lt!2079777 () (InoxSet Context!6676))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!110 ((InoxSet Context!6676) Int BalanceConc!30294) Unit!149335)

(assert (=> b!5024678 (= lt!2079776 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!110 lt!2079777 (+ 1 from!1228) totalInput!1141))))

(declare-fun lt!2079781 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!227 ((InoxSet Context!6676) Int BalanceConc!30294 Int) Int)

(assert (=> b!5024678 (= lt!2079782 (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 lt!2079781))))

(declare-fun derivationStepZipper!709 ((InoxSet Context!6676) C!28076) (InoxSet Context!6676))

(assert (=> b!5024678 (= lt!2079777 (derivationStepZipper!709 z!4747 lt!2079775))))

(declare-fun apply!14145 (BalanceConc!30294 Int) C!28076)

(assert (=> b!5024678 (= lt!2079775 (apply!14145 totalInput!1141 from!1228))))

(declare-fun b!5024679 () Bool)

(declare-fun res!2142410 () Bool)

(assert (=> b!5024679 (=> res!2142410 e!3138955)))

(assert (=> b!5024679 (= res!2142410 (not (matchZipper!667 lt!2079777 lt!2079780)))))

(declare-fun res!2142415 () Bool)

(declare-fun e!3138951 () Bool)

(assert (=> start!531110 (=> (not res!2142415) (not e!3138951))))

(assert (=> start!531110 (= res!2142415 (>= from!1228 0))))

(assert (=> start!531110 e!3138951))

(assert (=> start!531110 true))

(declare-fun e!3138952 () Bool)

(declare-fun inv!76663 (BalanceConc!30294) Bool)

(assert (=> start!531110 (and (inv!76663 totalInput!1141) e!3138952)))

(declare-fun condSetEmpty!28868 () Bool)

(assert (=> start!531110 (= condSetEmpty!28868 (= z!4747 ((as const (Array Context!6676 Bool)) false)))))

(assert (=> start!531110 setRes!28868))

(declare-fun b!5024680 () Bool)

(assert (=> b!5024680 (= e!3138951 e!3138954)))

(declare-fun res!2142408 () Bool)

(assert (=> b!5024680 (=> (not res!2142408) (not e!3138954))))

(assert (=> b!5024680 (= res!2142408 (<= from!1228 lt!2079781))))

(declare-fun size!38692 (BalanceConc!30294) Int)

(assert (=> b!5024680 (= lt!2079781 (size!38692 totalInput!1141))))

(declare-fun b!5024681 () Bool)

(declare-fun res!2142409 () Bool)

(assert (=> b!5024681 (=> (not res!2142409) (not e!3138954))))

(assert (=> b!5024681 (= res!2142409 (not (= from!1228 lt!2079781)))))

(declare-fun b!5024682 () Bool)

(declare-fun tp!1408606 () Bool)

(declare-fun inv!76664 (Conc!15432) Bool)

(assert (=> b!5024682 (= e!3138952 (and (inv!76664 (c!859158 totalInput!1141)) tp!1408606))))

(declare-fun b!5024683 () Bool)

(declare-fun tp!1408604 () Bool)

(assert (=> b!5024683 (= e!3138949 tp!1408604)))

(declare-fun b!5024684 () Bool)

(assert (=> b!5024684 (= e!3138953 (matchZipper!667 lt!2079777 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))

(assert (= (and start!531110 res!2142415) b!5024680))

(assert (= (and b!5024680 res!2142408) b!5024675))

(assert (= (and b!5024675 res!2142413) b!5024681))

(assert (= (and b!5024681 res!2142409) b!5024678))

(assert (= (and b!5024678 (not res!2142411)) b!5024684))

(assert (= (and b!5024678 (not res!2142414)) b!5024677))

(assert (= (and b!5024677 (not res!2142412)) b!5024679))

(assert (= (and b!5024679 (not res!2142410)) b!5024676))

(assert (= start!531110 b!5024682))

(assert (= (and start!531110 condSetEmpty!28868) setIsEmpty!28868))

(assert (= (and start!531110 (not condSetEmpty!28868)) setNonEmpty!28868))

(assert (= setNonEmpty!28868 b!5024683))

(declare-fun m!6059968 () Bool)

(assert (=> b!5024677 m!6059968))

(declare-fun m!6059970 () Bool)

(assert (=> b!5024677 m!6059970))

(declare-fun m!6059972 () Bool)

(assert (=> b!5024677 m!6059972))

(assert (=> b!5024677 m!6059972))

(declare-fun m!6059974 () Bool)

(assert (=> b!5024677 m!6059974))

(declare-fun m!6059976 () Bool)

(assert (=> b!5024680 m!6059976))

(declare-fun m!6059978 () Bool)

(assert (=> setNonEmpty!28868 m!6059978))

(declare-fun m!6059980 () Bool)

(assert (=> b!5024678 m!6059980))

(declare-fun m!6059982 () Bool)

(assert (=> b!5024678 m!6059982))

(declare-fun m!6059984 () Bool)

(assert (=> b!5024678 m!6059984))

(assert (=> b!5024678 m!6059984))

(declare-fun m!6059986 () Bool)

(assert (=> b!5024678 m!6059986))

(declare-fun m!6059988 () Bool)

(assert (=> b!5024678 m!6059988))

(declare-fun m!6059990 () Bool)

(assert (=> b!5024678 m!6059990))

(declare-fun m!6059992 () Bool)

(assert (=> b!5024678 m!6059992))

(declare-fun m!6059994 () Bool)

(assert (=> b!5024682 m!6059994))

(declare-fun m!6059996 () Bool)

(assert (=> b!5024679 m!6059996))

(declare-fun m!6059998 () Bool)

(assert (=> b!5024676 m!6059998))

(declare-fun m!6060000 () Bool)

(assert (=> b!5024675 m!6060000))

(assert (=> b!5024684 m!6059990))

(assert (=> b!5024684 m!6059990))

(declare-fun m!6060002 () Bool)

(assert (=> b!5024684 m!6060002))

(assert (=> b!5024684 m!6060002))

(declare-fun m!6060004 () Bool)

(assert (=> b!5024684 m!6060004))

(assert (=> b!5024684 m!6060004))

(declare-fun m!6060006 () Bool)

(assert (=> b!5024684 m!6060006))

(declare-fun m!6060008 () Bool)

(assert (=> start!531110 m!6060008))

(check-sat (not b!5024683) (not b!5024684) (not setNonEmpty!28868) (not b!5024682) (not b!5024680) (not b!5024678) (not b!5024676) (not b!5024675) (not start!531110) (not b!5024679) (not b!5024677))
(check-sat)
(get-model)

(declare-fun d!1617082 () Bool)

(declare-fun c!859161 () Bool)

(declare-fun isEmpty!31442 (List!58275) Bool)

(assert (=> d!1617082 (= c!859161 (isEmpty!31442 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))

(declare-fun e!3138958 () Bool)

(assert (=> d!1617082 (= (matchZipper!667 lt!2079777 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)) e!3138958)))

(declare-fun b!5024689 () Bool)

(declare-fun nullableZipper!926 ((InoxSet Context!6676)) Bool)

(assert (=> b!5024689 (= e!3138958 (nullableZipper!926 lt!2079777))))

(declare-fun b!5024690 () Bool)

(declare-fun head!10774 (List!58275) C!28076)

(declare-fun tail!9907 (List!58275) List!58275)

(assert (=> b!5024690 (= e!3138958 (matchZipper!667 (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))))))

(assert (= (and d!1617082 c!859161) b!5024689))

(assert (= (and d!1617082 (not c!859161)) b!5024690))

(assert (=> d!1617082 m!6060004))

(declare-fun m!6060010 () Bool)

(assert (=> d!1617082 m!6060010))

(declare-fun m!6060012 () Bool)

(assert (=> b!5024689 m!6060012))

(assert (=> b!5024690 m!6060004))

(declare-fun m!6060014 () Bool)

(assert (=> b!5024690 m!6060014))

(assert (=> b!5024690 m!6060014))

(declare-fun m!6060016 () Bool)

(assert (=> b!5024690 m!6060016))

(assert (=> b!5024690 m!6060004))

(declare-fun m!6060018 () Bool)

(assert (=> b!5024690 m!6060018))

(assert (=> b!5024690 m!6060016))

(assert (=> b!5024690 m!6060018))

(declare-fun m!6060020 () Bool)

(assert (=> b!5024690 m!6060020))

(assert (=> b!5024684 d!1617082))

(declare-fun d!1617084 () Bool)

(declare-fun e!3138976 () Bool)

(assert (=> d!1617084 e!3138976))

(declare-fun res!2142421 () Bool)

(assert (=> d!1617084 (=> (not res!2142421) (not e!3138976))))

(declare-fun lt!2079788 () List!58275)

(declare-fun content!10301 (List!58275) (InoxSet C!28076))

(assert (=> d!1617084 (= res!2142421 (= ((_ map implies) (content!10301 lt!2079788) (content!10301 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3138975 () List!58275)

(assert (=> d!1617084 (= lt!2079788 e!3138975)))

(declare-fun c!859172 () Bool)

(get-info :version)

(assert (=> d!1617084 (= c!859172 (or ((_ is Nil!58151) (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (<= lt!2079782 0)))))

(assert (=> d!1617084 (= (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782) lt!2079788)))

(declare-fun b!5024714 () Bool)

(assert (=> b!5024714 (= e!3138975 Nil!58151)))

(declare-fun b!5024715 () Bool)

(declare-fun e!3138974 () Int)

(declare-fun e!3138973 () Int)

(assert (=> b!5024715 (= e!3138974 e!3138973)))

(declare-fun c!859171 () Bool)

(declare-fun size!38694 (List!58275) Int)

(assert (=> b!5024715 (= c!859171 (>= lt!2079782 (size!38694 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5024716 () Bool)

(assert (=> b!5024716 (= e!3138973 lt!2079782)))

(declare-fun b!5024717 () Bool)

(assert (=> b!5024717 (= e!3138973 (size!38694 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5024718 () Bool)

(assert (=> b!5024718 (= e!3138975 (Cons!58151 (h!64599 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (take!764 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (- lt!2079782 1))))))

(declare-fun b!5024719 () Bool)

(assert (=> b!5024719 (= e!3138974 0)))

(declare-fun b!5024720 () Bool)

(assert (=> b!5024720 (= e!3138976 (= (size!38694 lt!2079788) e!3138974))))

(declare-fun c!859173 () Bool)

(assert (=> b!5024720 (= c!859173 (<= lt!2079782 0))))

(assert (= (and d!1617084 c!859172) b!5024714))

(assert (= (and d!1617084 (not c!859172)) b!5024718))

(assert (= (and d!1617084 res!2142421) b!5024720))

(assert (= (and b!5024720 c!859173) b!5024719))

(assert (= (and b!5024720 (not c!859173)) b!5024715))

(assert (= (and b!5024715 c!859171) b!5024717))

(assert (= (and b!5024715 (not c!859171)) b!5024716))

(declare-fun m!6060032 () Bool)

(assert (=> b!5024718 m!6060032))

(declare-fun m!6060034 () Bool)

(assert (=> d!1617084 m!6060034))

(assert (=> d!1617084 m!6060002))

(declare-fun m!6060036 () Bool)

(assert (=> d!1617084 m!6060036))

(assert (=> b!5024715 m!6060002))

(declare-fun m!6060038 () Bool)

(assert (=> b!5024715 m!6060038))

(assert (=> b!5024717 m!6060002))

(assert (=> b!5024717 m!6060038))

(declare-fun m!6060040 () Bool)

(assert (=> b!5024720 m!6060040))

(assert (=> b!5024684 d!1617084))

(declare-fun b!5024763 () Bool)

(declare-fun e!3139005 () List!58275)

(assert (=> b!5024763 (= e!3139005 (list!18768 totalInput!1141))))

(declare-fun b!5024764 () Bool)

(assert (=> b!5024764 (= e!3139005 (drop!2564 (t!370667 (list!18768 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5024765 () Bool)

(declare-fun e!3139006 () List!58275)

(assert (=> b!5024765 (= e!3139006 e!3139005)))

(declare-fun c!859193 () Bool)

(assert (=> b!5024765 (= c!859193 (<= (+ 1 from!1228) 0))))

(declare-fun bm!350687 () Bool)

(declare-fun call!350692 () Int)

(assert (=> bm!350687 (= call!350692 (size!38694 (list!18768 totalInput!1141)))))

(declare-fun b!5024766 () Bool)

(declare-fun e!3139004 () Int)

(assert (=> b!5024766 (= e!3139004 (- call!350692 (+ 1 from!1228)))))

(declare-fun b!5024767 () Bool)

(assert (=> b!5024767 (= e!3139004 0)))

(declare-fun b!5024768 () Bool)

(declare-fun e!3139003 () Bool)

(declare-fun lt!2079797 () List!58275)

(declare-fun e!3139002 () Int)

(assert (=> b!5024768 (= e!3139003 (= (size!38694 lt!2079797) e!3139002))))

(declare-fun c!859194 () Bool)

(assert (=> b!5024768 (= c!859194 (<= (+ 1 from!1228) 0))))

(declare-fun b!5024769 () Bool)

(assert (=> b!5024769 (= e!3139002 call!350692)))

(declare-fun d!1617090 () Bool)

(assert (=> d!1617090 e!3139003))

(declare-fun res!2142430 () Bool)

(assert (=> d!1617090 (=> (not res!2142430) (not e!3139003))))

(assert (=> d!1617090 (= res!2142430 (= ((_ map implies) (content!10301 lt!2079797) (content!10301 (list!18768 totalInput!1141))) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617090 (= lt!2079797 e!3139006)))

(declare-fun c!859192 () Bool)

(assert (=> d!1617090 (= c!859192 ((_ is Nil!58151) (list!18768 totalInput!1141)))))

(assert (=> d!1617090 (= (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079797)))

(declare-fun b!5024770 () Bool)

(assert (=> b!5024770 (= e!3139002 e!3139004)))

(declare-fun c!859191 () Bool)

(assert (=> b!5024770 (= c!859191 (>= (+ 1 from!1228) call!350692))))

(declare-fun b!5024771 () Bool)

(assert (=> b!5024771 (= e!3139006 Nil!58151)))

(assert (= (and d!1617090 c!859192) b!5024771))

(assert (= (and d!1617090 (not c!859192)) b!5024765))

(assert (= (and b!5024765 c!859193) b!5024763))

(assert (= (and b!5024765 (not c!859193)) b!5024764))

(assert (= (and d!1617090 res!2142430) b!5024768))

(assert (= (and b!5024768 c!859194) b!5024769))

(assert (= (and b!5024768 (not c!859194)) b!5024770))

(assert (= (and b!5024770 c!859191) b!5024767))

(assert (= (and b!5024770 (not c!859191)) b!5024766))

(assert (= (or b!5024769 b!5024770 b!5024766) bm!350687))

(declare-fun m!6060060 () Bool)

(assert (=> b!5024764 m!6060060))

(assert (=> bm!350687 m!6059990))

(declare-fun m!6060062 () Bool)

(assert (=> bm!350687 m!6060062))

(declare-fun m!6060064 () Bool)

(assert (=> b!5024768 m!6060064))

(declare-fun m!6060066 () Bool)

(assert (=> d!1617090 m!6060066))

(assert (=> d!1617090 m!6059990))

(declare-fun m!6060068 () Bool)

(assert (=> d!1617090 m!6060068))

(assert (=> b!5024684 d!1617090))

(declare-fun d!1617096 () Bool)

(declare-fun list!18770 (Conc!15432) List!58275)

(assert (=> d!1617096 (= (list!18768 totalInput!1141) (list!18770 (c!859158 totalInput!1141)))))

(declare-fun bs!1187735 () Bool)

(assert (= bs!1187735 d!1617096))

(declare-fun m!6060070 () Bool)

(assert (=> bs!1187735 m!6060070))

(assert (=> b!5024684 d!1617096))

(declare-fun bs!1187744 () Bool)

(declare-fun b!5024916 () Bool)

(declare-fun d!1617098 () Bool)

(assert (= bs!1187744 (and b!5024916 d!1617098)))

(declare-fun lambda!249127 () Int)

(declare-fun lambda!249126 () Int)

(assert (=> bs!1187744 (not (= lambda!249127 lambda!249126))))

(declare-fun bs!1187745 () Bool)

(declare-fun b!5024917 () Bool)

(assert (= bs!1187745 (and b!5024917 d!1617098)))

(declare-fun lambda!249128 () Int)

(assert (=> bs!1187745 (not (= lambda!249128 lambda!249126))))

(declare-fun bs!1187746 () Bool)

(assert (= bs!1187746 (and b!5024917 b!5024916)))

(assert (=> bs!1187746 (= lambda!249128 lambda!249127)))

(declare-fun call!350708 () Bool)

(declare-datatypes ((List!58276 0))(
  ( (Nil!58152) (Cons!58152 (h!64600 Context!6676) (t!370668 List!58276)) )
))
(declare-fun lt!2079867 () List!58276)

(declare-fun bm!350704 () Bool)

(declare-fun c!859261 () Bool)

(declare-fun lt!2079870 () List!58276)

(declare-fun exists!1388 (List!58276 Int) Bool)

(assert (=> bm!350704 (= call!350708 (exists!1388 (ite c!859261 lt!2079870 lt!2079867) (ite c!859261 lambda!249127 lambda!249128)))))

(declare-fun e!3139100 () Unit!149335)

(declare-fun Unit!149337 () Unit!149335)

(assert (=> b!5024917 (= e!3139100 Unit!149337)))

(declare-fun call!350709 () List!58276)

(assert (=> b!5024917 (= lt!2079867 call!350709)))

(declare-fun lt!2079863 () Unit!149335)

(declare-fun lemmaForallThenNotExists!251 (List!58276 Int) Unit!149335)

(assert (=> b!5024917 (= lt!2079863 (lemmaForallThenNotExists!251 lt!2079867 lambda!249126))))

(assert (=> b!5024917 (not call!350708)))

(declare-fun lt!2079868 () Unit!149335)

(assert (=> b!5024917 (= lt!2079868 lt!2079863)))

(declare-fun bm!350703 () Bool)

(declare-fun toList!8119 ((InoxSet Context!6676)) List!58276)

(assert (=> bm!350703 (= call!350709 (toList!8119 z!4747))))

(declare-fun Unit!149338 () Unit!149335)

(assert (=> b!5024916 (= e!3139100 Unit!149338)))

(assert (=> b!5024916 (= lt!2079870 call!350709)))

(declare-fun lt!2079866 () Unit!149335)

(declare-fun lemmaNotForallThenExists!268 (List!58276 Int) Unit!149335)

(assert (=> b!5024916 (= lt!2079866 (lemmaNotForallThenExists!268 lt!2079870 lambda!249126))))

(assert (=> b!5024916 call!350708))

(declare-fun lt!2079869 () Unit!149335)

(assert (=> b!5024916 (= lt!2079869 lt!2079866)))

(declare-fun lt!2079865 () Bool)

(declare-datatypes ((Option!14598 0))(
  ( (None!14597) (Some!14597 (v!50602 List!58275)) )
))
(declare-fun isEmpty!31443 (Option!14598) Bool)

(declare-fun getLanguageWitness!735 ((InoxSet Context!6676)) Option!14598)

(assert (=> d!1617098 (= lt!2079865 (isEmpty!31443 (getLanguageWitness!735 z!4747)))))

(declare-fun forall!13419 ((InoxSet Context!6676) Int) Bool)

(assert (=> d!1617098 (= lt!2079865 (forall!13419 z!4747 lambda!249126))))

(declare-fun lt!2079864 () Unit!149335)

(assert (=> d!1617098 (= lt!2079864 e!3139100)))

(assert (=> d!1617098 (= c!859261 (not (forall!13419 z!4747 lambda!249126)))))

(assert (=> d!1617098 (= (lostCauseZipper!927 z!4747) lt!2079865)))

(assert (= (and d!1617098 c!859261) b!5024916))

(assert (= (and d!1617098 (not c!859261)) b!5024917))

(assert (= (or b!5024916 b!5024917) bm!350703))

(assert (= (or b!5024916 b!5024917) bm!350704))

(declare-fun m!6060208 () Bool)

(assert (=> d!1617098 m!6060208))

(assert (=> d!1617098 m!6060208))

(declare-fun m!6060210 () Bool)

(assert (=> d!1617098 m!6060210))

(declare-fun m!6060212 () Bool)

(assert (=> d!1617098 m!6060212))

(assert (=> d!1617098 m!6060212))

(declare-fun m!6060214 () Bool)

(assert (=> bm!350703 m!6060214))

(declare-fun m!6060216 () Bool)

(assert (=> b!5024917 m!6060216))

(declare-fun m!6060218 () Bool)

(assert (=> b!5024916 m!6060218))

(declare-fun m!6060220 () Bool)

(assert (=> bm!350704 m!6060220))

(assert (=> b!5024675 d!1617098))

(declare-fun d!1617134 () Bool)

(declare-fun lambda!249131 () Int)

(declare-fun forall!13420 (List!58274 Int) Bool)

(assert (=> d!1617134 (= (inv!76662 setElem!28868) (forall!13420 (exprs!3838 setElem!28868) lambda!249131))))

(declare-fun bs!1187747 () Bool)

(assert (= bs!1187747 d!1617134))

(declare-fun m!6060222 () Bool)

(assert (=> bs!1187747 m!6060222))

(assert (=> setNonEmpty!28868 d!1617134))

(declare-fun d!1617136 () Bool)

(declare-fun c!859262 () Bool)

(assert (=> d!1617136 (= c!859262 (isEmpty!31442 lt!2079780))))

(declare-fun e!3139101 () Bool)

(assert (=> d!1617136 (= (matchZipper!667 lt!2079777 lt!2079780) e!3139101)))

(declare-fun b!5024918 () Bool)

(assert (=> b!5024918 (= e!3139101 (nullableZipper!926 lt!2079777))))

(declare-fun b!5024919 () Bool)

(assert (=> b!5024919 (= e!3139101 (matchZipper!667 (derivationStepZipper!709 lt!2079777 (head!10774 lt!2079780)) (tail!9907 lt!2079780)))))

(assert (= (and d!1617136 c!859262) b!5024918))

(assert (= (and d!1617136 (not c!859262)) b!5024919))

(declare-fun m!6060224 () Bool)

(assert (=> d!1617136 m!6060224))

(assert (=> b!5024918 m!6060012))

(declare-fun m!6060226 () Bool)

(assert (=> b!5024919 m!6060226))

(assert (=> b!5024919 m!6060226))

(declare-fun m!6060228 () Bool)

(assert (=> b!5024919 m!6060228))

(declare-fun m!6060230 () Bool)

(assert (=> b!5024919 m!6060230))

(assert (=> b!5024919 m!6060228))

(assert (=> b!5024919 m!6060230))

(declare-fun m!6060232 () Bool)

(assert (=> b!5024919 m!6060232))

(assert (=> b!5024679 d!1617136))

(declare-fun d!1617138 () Bool)

(declare-fun lt!2079873 () C!28076)

(declare-fun contains!19572 (List!58275 C!28076) Bool)

(assert (=> d!1617138 (contains!19572 lt!2079779 lt!2079873)))

(declare-fun e!3139106 () C!28076)

(assert (=> d!1617138 (= lt!2079873 e!3139106)))

(declare-fun c!859265 () Bool)

(assert (=> d!1617138 (= c!859265 (= from!1228 0))))

(declare-fun e!3139107 () Bool)

(assert (=> d!1617138 e!3139107))

(declare-fun res!2142458 () Bool)

(assert (=> d!1617138 (=> (not res!2142458) (not e!3139107))))

(assert (=> d!1617138 (= res!2142458 (<= 0 from!1228))))

(assert (=> d!1617138 (= (apply!14144 lt!2079779 from!1228) lt!2079873)))

(declare-fun b!5024926 () Bool)

(assert (=> b!5024926 (= e!3139107 (< from!1228 (size!38694 lt!2079779)))))

(declare-fun b!5024927 () Bool)

(assert (=> b!5024927 (= e!3139106 (head!10774 lt!2079779))))

(declare-fun b!5024928 () Bool)

(assert (=> b!5024928 (= e!3139106 (apply!14144 (tail!9907 lt!2079779) (- from!1228 1)))))

(assert (= (and d!1617138 res!2142458) b!5024926))

(assert (= (and d!1617138 c!859265) b!5024927))

(assert (= (and d!1617138 (not c!859265)) b!5024928))

(declare-fun m!6060234 () Bool)

(assert (=> d!1617138 m!6060234))

(declare-fun m!6060236 () Bool)

(assert (=> b!5024926 m!6060236))

(declare-fun m!6060238 () Bool)

(assert (=> b!5024927 m!6060238))

(declare-fun m!6060240 () Bool)

(assert (=> b!5024928 m!6060240))

(assert (=> b!5024928 m!6060240))

(declare-fun m!6060242 () Bool)

(assert (=> b!5024928 m!6060242))

(assert (=> b!5024677 d!1617138))

(declare-fun d!1617140 () Bool)

(assert (=> d!1617140 (= (Cons!58151 (apply!14144 lt!2079779 from!1228) (take!764 (drop!2564 lt!2079779 (+ from!1228 1)) lt!2079782)) (take!764 (drop!2564 lt!2079779 from!1228) (+ lt!2079782 1)))))

(declare-fun lt!2079876 () Unit!149335)

(declare-fun choose!37170 (List!58275 Int Int) Unit!149335)

(assert (=> d!1617140 (= lt!2079876 (choose!37170 lt!2079779 from!1228 lt!2079782))))

(declare-fun e!3139110 () Bool)

(assert (=> d!1617140 e!3139110))

(declare-fun res!2142461 () Bool)

(assert (=> d!1617140 (=> (not res!2142461) (not e!3139110))))

(assert (=> d!1617140 (= res!2142461 (>= from!1228 0))))

(assert (=> d!1617140 (= (lemmaDropTakeAddOneLeft!92 lt!2079779 from!1228 lt!2079782) lt!2079876)))

(declare-fun b!5024931 () Bool)

(assert (=> b!5024931 (= e!3139110 (< from!1228 (size!38694 lt!2079779)))))

(assert (= (and d!1617140 res!2142461) b!5024931))

(declare-fun m!6060244 () Bool)

(assert (=> d!1617140 m!6060244))

(declare-fun m!6060246 () Bool)

(assert (=> d!1617140 m!6060246))

(declare-fun m!6060248 () Bool)

(assert (=> d!1617140 m!6060248))

(assert (=> d!1617140 m!6059972))

(assert (=> d!1617140 m!6059968))

(assert (=> d!1617140 m!6059972))

(declare-fun m!6060250 () Bool)

(assert (=> d!1617140 m!6060250))

(assert (=> d!1617140 m!6060246))

(assert (=> b!5024931 m!6060236))

(assert (=> b!5024677 d!1617140))

(declare-fun d!1617142 () Bool)

(declare-fun e!3139114 () Bool)

(assert (=> d!1617142 e!3139114))

(declare-fun res!2142462 () Bool)

(assert (=> d!1617142 (=> (not res!2142462) (not e!3139114))))

(declare-fun lt!2079877 () List!58275)

(assert (=> d!1617142 (= res!2142462 (= ((_ map implies) (content!10301 lt!2079877) (content!10301 (drop!2564 lt!2079779 from!1228))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139113 () List!58275)

(assert (=> d!1617142 (= lt!2079877 e!3139113)))

(declare-fun c!859267 () Bool)

(assert (=> d!1617142 (= c!859267 (or ((_ is Nil!58151) (drop!2564 lt!2079779 from!1228)) (<= (+ 1 lt!2079782) 0)))))

(assert (=> d!1617142 (= (take!764 (drop!2564 lt!2079779 from!1228) (+ 1 lt!2079782)) lt!2079877)))

(declare-fun b!5024932 () Bool)

(assert (=> b!5024932 (= e!3139113 Nil!58151)))

(declare-fun b!5024933 () Bool)

(declare-fun e!3139112 () Int)

(declare-fun e!3139111 () Int)

(assert (=> b!5024933 (= e!3139112 e!3139111)))

(declare-fun c!859266 () Bool)

(assert (=> b!5024933 (= c!859266 (>= (+ 1 lt!2079782) (size!38694 (drop!2564 lt!2079779 from!1228))))))

(declare-fun b!5024934 () Bool)

(assert (=> b!5024934 (= e!3139111 (+ 1 lt!2079782))))

(declare-fun b!5024935 () Bool)

(assert (=> b!5024935 (= e!3139111 (size!38694 (drop!2564 lt!2079779 from!1228)))))

(declare-fun b!5024936 () Bool)

(assert (=> b!5024936 (= e!3139113 (Cons!58151 (h!64599 (drop!2564 lt!2079779 from!1228)) (take!764 (t!370667 (drop!2564 lt!2079779 from!1228)) (- (+ 1 lt!2079782) 1))))))

(declare-fun b!5024937 () Bool)

(assert (=> b!5024937 (= e!3139112 0)))

(declare-fun b!5024938 () Bool)

(assert (=> b!5024938 (= e!3139114 (= (size!38694 lt!2079877) e!3139112))))

(declare-fun c!859268 () Bool)

(assert (=> b!5024938 (= c!859268 (<= (+ 1 lt!2079782) 0))))

(assert (= (and d!1617142 c!859267) b!5024932))

(assert (= (and d!1617142 (not c!859267)) b!5024936))

(assert (= (and d!1617142 res!2142462) b!5024938))

(assert (= (and b!5024938 c!859268) b!5024937))

(assert (= (and b!5024938 (not c!859268)) b!5024933))

(assert (= (and b!5024933 c!859266) b!5024935))

(assert (= (and b!5024933 (not c!859266)) b!5024934))

(declare-fun m!6060252 () Bool)

(assert (=> b!5024936 m!6060252))

(declare-fun m!6060254 () Bool)

(assert (=> d!1617142 m!6060254))

(assert (=> d!1617142 m!6059972))

(declare-fun m!6060256 () Bool)

(assert (=> d!1617142 m!6060256))

(assert (=> b!5024933 m!6059972))

(declare-fun m!6060258 () Bool)

(assert (=> b!5024933 m!6060258))

(assert (=> b!5024935 m!6059972))

(assert (=> b!5024935 m!6060258))

(declare-fun m!6060260 () Bool)

(assert (=> b!5024938 m!6060260))

(assert (=> b!5024677 d!1617142))

(declare-fun b!5024939 () Bool)

(declare-fun e!3139118 () List!58275)

(assert (=> b!5024939 (= e!3139118 lt!2079779)))

(declare-fun b!5024940 () Bool)

(assert (=> b!5024940 (= e!3139118 (drop!2564 (t!370667 lt!2079779) (- from!1228 1)))))

(declare-fun b!5024941 () Bool)

(declare-fun e!3139119 () List!58275)

(assert (=> b!5024941 (= e!3139119 e!3139118)))

(declare-fun c!859271 () Bool)

(assert (=> b!5024941 (= c!859271 (<= from!1228 0))))

(declare-fun bm!350705 () Bool)

(declare-fun call!350710 () Int)

(assert (=> bm!350705 (= call!350710 (size!38694 lt!2079779))))

(declare-fun b!5024942 () Bool)

(declare-fun e!3139117 () Int)

(assert (=> b!5024942 (= e!3139117 (- call!350710 from!1228))))

(declare-fun b!5024943 () Bool)

(assert (=> b!5024943 (= e!3139117 0)))

(declare-fun b!5024944 () Bool)

(declare-fun e!3139116 () Bool)

(declare-fun lt!2079878 () List!58275)

(declare-fun e!3139115 () Int)

(assert (=> b!5024944 (= e!3139116 (= (size!38694 lt!2079878) e!3139115))))

(declare-fun c!859272 () Bool)

(assert (=> b!5024944 (= c!859272 (<= from!1228 0))))

(declare-fun b!5024945 () Bool)

(assert (=> b!5024945 (= e!3139115 call!350710)))

(declare-fun d!1617144 () Bool)

(assert (=> d!1617144 e!3139116))

(declare-fun res!2142463 () Bool)

(assert (=> d!1617144 (=> (not res!2142463) (not e!3139116))))

(assert (=> d!1617144 (= res!2142463 (= ((_ map implies) (content!10301 lt!2079878) (content!10301 lt!2079779)) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617144 (= lt!2079878 e!3139119)))

(declare-fun c!859270 () Bool)

(assert (=> d!1617144 (= c!859270 ((_ is Nil!58151) lt!2079779))))

(assert (=> d!1617144 (= (drop!2564 lt!2079779 from!1228) lt!2079878)))

(declare-fun b!5024946 () Bool)

(assert (=> b!5024946 (= e!3139115 e!3139117)))

(declare-fun c!859269 () Bool)

(assert (=> b!5024946 (= c!859269 (>= from!1228 call!350710))))

(declare-fun b!5024947 () Bool)

(assert (=> b!5024947 (= e!3139119 Nil!58151)))

(assert (= (and d!1617144 c!859270) b!5024947))

(assert (= (and d!1617144 (not c!859270)) b!5024941))

(assert (= (and b!5024941 c!859271) b!5024939))

(assert (= (and b!5024941 (not c!859271)) b!5024940))

(assert (= (and d!1617144 res!2142463) b!5024944))

(assert (= (and b!5024944 c!859272) b!5024945))

(assert (= (and b!5024944 (not c!859272)) b!5024946))

(assert (= (and b!5024946 c!859269) b!5024943))

(assert (= (and b!5024946 (not c!859269)) b!5024942))

(assert (= (or b!5024945 b!5024946 b!5024942) bm!350705))

(declare-fun m!6060262 () Bool)

(assert (=> b!5024940 m!6060262))

(assert (=> bm!350705 m!6060236))

(declare-fun m!6060264 () Bool)

(assert (=> b!5024944 m!6060264))

(declare-fun m!6060266 () Bool)

(assert (=> d!1617144 m!6060266))

(declare-fun m!6060268 () Bool)

(assert (=> d!1617144 m!6060268))

(assert (=> b!5024677 d!1617144))

(declare-fun b!5024948 () Bool)

(declare-fun e!3139123 () List!58275)

(assert (=> b!5024948 (= e!3139123 lt!2079779)))

(declare-fun b!5024949 () Bool)

(assert (=> b!5024949 (= e!3139123 (drop!2564 (t!370667 lt!2079779) (- (+ 1 from!1228) 1)))))

(declare-fun b!5024950 () Bool)

(declare-fun e!3139124 () List!58275)

(assert (=> b!5024950 (= e!3139124 e!3139123)))

(declare-fun c!859275 () Bool)

(assert (=> b!5024950 (= c!859275 (<= (+ 1 from!1228) 0))))

(declare-fun bm!350706 () Bool)

(declare-fun call!350711 () Int)

(assert (=> bm!350706 (= call!350711 (size!38694 lt!2079779))))

(declare-fun b!5024951 () Bool)

(declare-fun e!3139122 () Int)

(assert (=> b!5024951 (= e!3139122 (- call!350711 (+ 1 from!1228)))))

(declare-fun b!5024952 () Bool)

(assert (=> b!5024952 (= e!3139122 0)))

(declare-fun b!5024953 () Bool)

(declare-fun e!3139121 () Bool)

(declare-fun lt!2079879 () List!58275)

(declare-fun e!3139120 () Int)

(assert (=> b!5024953 (= e!3139121 (= (size!38694 lt!2079879) e!3139120))))

(declare-fun c!859276 () Bool)

(assert (=> b!5024953 (= c!859276 (<= (+ 1 from!1228) 0))))

(declare-fun b!5024954 () Bool)

(assert (=> b!5024954 (= e!3139120 call!350711)))

(declare-fun d!1617146 () Bool)

(assert (=> d!1617146 e!3139121))

(declare-fun res!2142464 () Bool)

(assert (=> d!1617146 (=> (not res!2142464) (not e!3139121))))

(assert (=> d!1617146 (= res!2142464 (= ((_ map implies) (content!10301 lt!2079879) (content!10301 lt!2079779)) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617146 (= lt!2079879 e!3139124)))

(declare-fun c!859274 () Bool)

(assert (=> d!1617146 (= c!859274 ((_ is Nil!58151) lt!2079779))))

(assert (=> d!1617146 (= (drop!2564 lt!2079779 (+ 1 from!1228)) lt!2079879)))

(declare-fun b!5024955 () Bool)

(assert (=> b!5024955 (= e!3139120 e!3139122)))

(declare-fun c!859273 () Bool)

(assert (=> b!5024955 (= c!859273 (>= (+ 1 from!1228) call!350711))))

(declare-fun b!5024956 () Bool)

(assert (=> b!5024956 (= e!3139124 Nil!58151)))

(assert (= (and d!1617146 c!859274) b!5024956))

(assert (= (and d!1617146 (not c!859274)) b!5024950))

(assert (= (and b!5024950 c!859275) b!5024948))

(assert (= (and b!5024950 (not c!859275)) b!5024949))

(assert (= (and d!1617146 res!2142464) b!5024953))

(assert (= (and b!5024953 c!859276) b!5024954))

(assert (= (and b!5024953 (not c!859276)) b!5024955))

(assert (= (and b!5024955 c!859273) b!5024952))

(assert (= (and b!5024955 (not c!859273)) b!5024951))

(assert (= (or b!5024954 b!5024955 b!5024951) bm!350706))

(declare-fun m!6060270 () Bool)

(assert (=> b!5024949 m!6060270))

(assert (=> bm!350706 m!6060236))

(declare-fun m!6060272 () Bool)

(assert (=> b!5024953 m!6060272))

(declare-fun m!6060274 () Bool)

(assert (=> d!1617146 m!6060274))

(assert (=> d!1617146 m!6060268))

(assert (=> b!5024678 d!1617146))

(declare-fun d!1617148 () Bool)

(declare-fun e!3139128 () Bool)

(assert (=> d!1617148 e!3139128))

(declare-fun res!2142465 () Bool)

(assert (=> d!1617148 (=> (not res!2142465) (not e!3139128))))

(declare-fun lt!2079880 () List!58275)

(assert (=> d!1617148 (= res!2142465 (= ((_ map implies) (content!10301 lt!2079880) (content!10301 (drop!2564 lt!2079779 (+ 1 from!1228)))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139127 () List!58275)

(assert (=> d!1617148 (= lt!2079880 e!3139127)))

(declare-fun c!859278 () Bool)

(assert (=> d!1617148 (= c!859278 (or ((_ is Nil!58151) (drop!2564 lt!2079779 (+ 1 from!1228))) (<= lt!2079782 0)))))

(assert (=> d!1617148 (= (take!764 (drop!2564 lt!2079779 (+ 1 from!1228)) lt!2079782) lt!2079880)))

(declare-fun b!5024957 () Bool)

(assert (=> b!5024957 (= e!3139127 Nil!58151)))

(declare-fun b!5024958 () Bool)

(declare-fun e!3139126 () Int)

(declare-fun e!3139125 () Int)

(assert (=> b!5024958 (= e!3139126 e!3139125)))

(declare-fun c!859277 () Bool)

(assert (=> b!5024958 (= c!859277 (>= lt!2079782 (size!38694 (drop!2564 lt!2079779 (+ 1 from!1228)))))))

(declare-fun b!5024959 () Bool)

(assert (=> b!5024959 (= e!3139125 lt!2079782)))

(declare-fun b!5024960 () Bool)

(assert (=> b!5024960 (= e!3139125 (size!38694 (drop!2564 lt!2079779 (+ 1 from!1228))))))

(declare-fun b!5024961 () Bool)

(assert (=> b!5024961 (= e!3139127 (Cons!58151 (h!64599 (drop!2564 lt!2079779 (+ 1 from!1228))) (take!764 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))) (- lt!2079782 1))))))

(declare-fun b!5024962 () Bool)

(assert (=> b!5024962 (= e!3139126 0)))

(declare-fun b!5024963 () Bool)

(assert (=> b!5024963 (= e!3139128 (= (size!38694 lt!2079880) e!3139126))))

(declare-fun c!859279 () Bool)

(assert (=> b!5024963 (= c!859279 (<= lt!2079782 0))))

(assert (= (and d!1617148 c!859278) b!5024957))

(assert (= (and d!1617148 (not c!859278)) b!5024961))

(assert (= (and d!1617148 res!2142465) b!5024963))

(assert (= (and b!5024963 c!859279) b!5024962))

(assert (= (and b!5024963 (not c!859279)) b!5024958))

(assert (= (and b!5024958 c!859277) b!5024960))

(assert (= (and b!5024958 (not c!859277)) b!5024959))

(declare-fun m!6060276 () Bool)

(assert (=> b!5024961 m!6060276))

(declare-fun m!6060278 () Bool)

(assert (=> d!1617148 m!6060278))

(assert (=> d!1617148 m!6059984))

(declare-fun m!6060280 () Bool)

(assert (=> d!1617148 m!6060280))

(assert (=> b!5024958 m!6059984))

(declare-fun m!6060282 () Bool)

(assert (=> b!5024958 m!6060282))

(assert (=> b!5024960 m!6059984))

(assert (=> b!5024960 m!6060282))

(declare-fun m!6060284 () Bool)

(assert (=> b!5024963 m!6060284))

(assert (=> b!5024678 d!1617148))

(declare-fun d!1617150 () Bool)

(assert (=> d!1617150 true))

(declare-fun lambda!249134 () Int)

(declare-fun flatMap!300 ((InoxSet Context!6676) Int) (InoxSet Context!6676))

(assert (=> d!1617150 (= (derivationStepZipper!709 z!4747 lt!2079775) (flatMap!300 z!4747 lambda!249134))))

(declare-fun bs!1187748 () Bool)

(assert (= bs!1187748 d!1617150))

(declare-fun m!6060286 () Bool)

(assert (=> bs!1187748 m!6060286))

(assert (=> b!5024678 d!1617150))

(declare-fun d!1617152 () Bool)

(declare-fun lt!2079887 () Int)

(assert (=> d!1617152 (and (>= lt!2079887 0) (<= lt!2079887 (- lt!2079781 (+ 1 from!1228))))))

(declare-fun e!3139139 () Int)

(assert (=> d!1617152 (= lt!2079887 e!3139139)))

(declare-fun c!859290 () Bool)

(declare-fun e!3139140 () Bool)

(assert (=> d!1617152 (= c!859290 e!3139140)))

(declare-fun res!2142470 () Bool)

(assert (=> d!1617152 (=> res!2142470 e!3139140)))

(assert (=> d!1617152 (= res!2142470 (= (+ 1 from!1228) lt!2079781))))

(declare-fun e!3139143 () Bool)

(assert (=> d!1617152 e!3139143))

(declare-fun res!2142471 () Bool)

(assert (=> d!1617152 (=> (not res!2142471) (not e!3139143))))

(assert (=> d!1617152 (= res!2142471 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617152 (= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 lt!2079781) lt!2079887)))

(declare-fun b!5024982 () Bool)

(declare-fun e!3139142 () Int)

(declare-fun lt!2079889 () Int)

(assert (=> b!5024982 (= e!3139142 (+ 1 lt!2079889))))

(declare-fun b!5024983 () Bool)

(assert (=> b!5024983 (= e!3139139 e!3139142)))

(declare-fun lt!2079888 () (InoxSet Context!6676))

(assert (=> b!5024983 (= lt!2079888 (derivationStepZipper!709 lt!2079777 (apply!14145 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5024983 (= lt!2079889 (findLongestMatchInnerZipperFastV2!227 lt!2079888 (+ 1 from!1228 1) totalInput!1141 lt!2079781))))

(declare-fun c!859288 () Bool)

(assert (=> b!5024983 (= c!859288 (> lt!2079889 0))))

(declare-fun b!5024984 () Bool)

(declare-fun e!3139141 () Int)

(assert (=> b!5024984 (= e!3139141 0)))

(declare-fun b!5024985 () Bool)

(assert (=> b!5024985 (= e!3139143 (<= (+ 1 from!1228) (size!38692 totalInput!1141)))))

(declare-fun b!5024986 () Bool)

(assert (=> b!5024986 (= e!3139139 0)))

(declare-fun b!5024987 () Bool)

(declare-fun c!859289 () Bool)

(assert (=> b!5024987 (= c!859289 (nullableZipper!926 lt!2079888))))

(assert (=> b!5024987 (= e!3139142 e!3139141)))

(declare-fun b!5024988 () Bool)

(assert (=> b!5024988 (= e!3139141 1)))

(declare-fun b!5024989 () Bool)

(assert (=> b!5024989 (= e!3139140 (lostCauseZipper!927 lt!2079777))))

(assert (= (and d!1617152 res!2142471) b!5024985))

(assert (= (and d!1617152 (not res!2142470)) b!5024989))

(assert (= (and d!1617152 c!859290) b!5024986))

(assert (= (and d!1617152 (not c!859290)) b!5024983))

(assert (= (and b!5024983 c!859288) b!5024982))

(assert (= (and b!5024983 (not c!859288)) b!5024987))

(assert (= (and b!5024987 c!859289) b!5024988))

(assert (= (and b!5024987 (not c!859289)) b!5024984))

(declare-fun m!6060288 () Bool)

(assert (=> b!5024983 m!6060288))

(assert (=> b!5024983 m!6060288))

(declare-fun m!6060290 () Bool)

(assert (=> b!5024983 m!6060290))

(declare-fun m!6060292 () Bool)

(assert (=> b!5024983 m!6060292))

(assert (=> b!5024985 m!6059976))

(declare-fun m!6060294 () Bool)

(assert (=> b!5024987 m!6060294))

(declare-fun m!6060296 () Bool)

(assert (=> b!5024989 m!6060296))

(assert (=> b!5024678 d!1617152))

(assert (=> b!5024678 d!1617096))

(declare-fun d!1617154 () Bool)

(declare-fun lt!2079892 () C!28076)

(assert (=> d!1617154 (= lt!2079892 (apply!14144 (list!18768 totalInput!1141) from!1228))))

(declare-fun apply!14147 (Conc!15432 Int) C!28076)

(assert (=> d!1617154 (= lt!2079892 (apply!14147 (c!859158 totalInput!1141) from!1228))))

(declare-fun e!3139146 () Bool)

(assert (=> d!1617154 e!3139146))

(declare-fun res!2142474 () Bool)

(assert (=> d!1617154 (=> (not res!2142474) (not e!3139146))))

(assert (=> d!1617154 (= res!2142474 (<= 0 from!1228))))

(assert (=> d!1617154 (= (apply!14145 totalInput!1141 from!1228) lt!2079892)))

(declare-fun b!5024992 () Bool)

(assert (=> b!5024992 (= e!3139146 (< from!1228 (size!38692 totalInput!1141)))))

(assert (= (and d!1617154 res!2142474) b!5024992))

(assert (=> d!1617154 m!6059990))

(assert (=> d!1617154 m!6059990))

(declare-fun m!6060298 () Bool)

(assert (=> d!1617154 m!6060298))

(declare-fun m!6060300 () Bool)

(assert (=> d!1617154 m!6060300))

(assert (=> b!5024992 m!6059976))

(assert (=> b!5024678 d!1617154))

(declare-fun d!1617156 () Bool)

(declare-fun e!3139152 () Bool)

(assert (=> d!1617156 e!3139152))

(declare-fun res!2142479 () Bool)

(assert (=> d!1617156 (=> res!2142479 e!3139152)))

(assert (=> d!1617156 (= res!2142479 (= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) 0))))

(declare-fun lt!2079895 () Unit!149335)

(declare-fun choose!37171 ((InoxSet Context!6676) Int BalanceConc!30294) Unit!149335)

(assert (=> d!1617156 (= lt!2079895 (choose!37171 lt!2079777 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3139151 () Bool)

(assert (=> d!1617156 e!3139151))

(declare-fun res!2142480 () Bool)

(assert (=> d!1617156 (=> (not res!2142480) (not e!3139151))))

(assert (=> d!1617156 (= res!2142480 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617156 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!110 lt!2079777 (+ 1 from!1228) totalInput!1141) lt!2079895)))

(declare-fun b!5024997 () Bool)

(assert (=> b!5024997 (= e!3139151 (<= (+ 1 from!1228) (size!38692 totalInput!1141)))))

(declare-fun b!5024998 () Bool)

(assert (=> b!5024998 (= e!3139152 (matchZipper!667 lt!2079777 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)))))))

(assert (= (and d!1617156 res!2142480) b!5024997))

(assert (= (and d!1617156 (not res!2142479)) b!5024998))

(assert (=> d!1617156 m!6059976))

(assert (=> d!1617156 m!6059976))

(declare-fun m!6060302 () Bool)

(assert (=> d!1617156 m!6060302))

(declare-fun m!6060304 () Bool)

(assert (=> d!1617156 m!6060304))

(assert (=> b!5024997 m!6059976))

(declare-fun m!6060306 () Bool)

(assert (=> b!5024998 m!6060306))

(declare-fun m!6060308 () Bool)

(assert (=> b!5024998 m!6060308))

(assert (=> b!5024998 m!6059990))

(assert (=> b!5024998 m!6059976))

(assert (=> b!5024998 m!6060302))

(assert (=> b!5024998 m!6060002))

(assert (=> b!5024998 m!6060302))

(assert (=> b!5024998 m!6060306))

(assert (=> b!5024998 m!6059976))

(assert (=> b!5024998 m!6059990))

(assert (=> b!5024998 m!6060002))

(assert (=> b!5024678 d!1617156))

(declare-fun d!1617158 () Bool)

(declare-fun c!859293 () Bool)

(assert (=> d!1617158 (= c!859293 ((_ is Node!15432) (c!859158 totalInput!1141)))))

(declare-fun e!3139157 () Bool)

(assert (=> d!1617158 (= (inv!76664 (c!859158 totalInput!1141)) e!3139157)))

(declare-fun b!5025005 () Bool)

(declare-fun inv!76668 (Conc!15432) Bool)

(assert (=> b!5025005 (= e!3139157 (inv!76668 (c!859158 totalInput!1141)))))

(declare-fun b!5025006 () Bool)

(declare-fun e!3139158 () Bool)

(assert (=> b!5025006 (= e!3139157 e!3139158)))

(declare-fun res!2142483 () Bool)

(assert (=> b!5025006 (= res!2142483 (not ((_ is Leaf!25602) (c!859158 totalInput!1141))))))

(assert (=> b!5025006 (=> res!2142483 e!3139158)))

(declare-fun b!5025007 () Bool)

(declare-fun inv!76669 (Conc!15432) Bool)

(assert (=> b!5025007 (= e!3139158 (inv!76669 (c!859158 totalInput!1141)))))

(assert (= (and d!1617158 c!859293) b!5025005))

(assert (= (and d!1617158 (not c!859293)) b!5025006))

(assert (= (and b!5025006 (not res!2142483)) b!5025007))

(declare-fun m!6060310 () Bool)

(assert (=> b!5025005 m!6060310))

(declare-fun m!6060312 () Bool)

(assert (=> b!5025007 m!6060312))

(assert (=> b!5024682 d!1617158))

(declare-fun d!1617160 () Bool)

(declare-fun lt!2079898 () Int)

(assert (=> d!1617160 (= lt!2079898 (size!38694 (list!18768 totalInput!1141)))))

(declare-fun size!38696 (Conc!15432) Int)

(assert (=> d!1617160 (= lt!2079898 (size!38696 (c!859158 totalInput!1141)))))

(assert (=> d!1617160 (= (size!38692 totalInput!1141) lt!2079898)))

(declare-fun bs!1187749 () Bool)

(assert (= bs!1187749 d!1617160))

(assert (=> bs!1187749 m!6059990))

(assert (=> bs!1187749 m!6059990))

(assert (=> bs!1187749 m!6060062))

(declare-fun m!6060314 () Bool)

(assert (=> bs!1187749 m!6060314))

(assert (=> b!5024680 d!1617160))

(declare-fun d!1617162 () Bool)

(declare-fun isBalanced!4302 (Conc!15432) Bool)

(assert (=> d!1617162 (= (inv!76663 totalInput!1141) (isBalanced!4302 (c!859158 totalInput!1141)))))

(declare-fun bs!1187750 () Bool)

(assert (= bs!1187750 d!1617162))

(declare-fun m!6060316 () Bool)

(assert (=> bs!1187750 m!6060316))

(assert (=> start!531110 d!1617162))

(declare-fun d!1617164 () Bool)

(declare-fun c!859294 () Bool)

(assert (=> d!1617164 (= c!859294 (isEmpty!31442 lt!2079778))))

(declare-fun e!3139159 () Bool)

(assert (=> d!1617164 (= (matchZipper!667 z!4747 lt!2079778) e!3139159)))

(declare-fun b!5025008 () Bool)

(assert (=> b!5025008 (= e!3139159 (nullableZipper!926 z!4747))))

(declare-fun b!5025009 () Bool)

(assert (=> b!5025009 (= e!3139159 (matchZipper!667 (derivationStepZipper!709 z!4747 (head!10774 lt!2079778)) (tail!9907 lt!2079778)))))

(assert (= (and d!1617164 c!859294) b!5025008))

(assert (= (and d!1617164 (not c!859294)) b!5025009))

(declare-fun m!6060318 () Bool)

(assert (=> d!1617164 m!6060318))

(declare-fun m!6060320 () Bool)

(assert (=> b!5025008 m!6060320))

(declare-fun m!6060322 () Bool)

(assert (=> b!5025009 m!6060322))

(assert (=> b!5025009 m!6060322))

(declare-fun m!6060324 () Bool)

(assert (=> b!5025009 m!6060324))

(declare-fun m!6060326 () Bool)

(assert (=> b!5025009 m!6060326))

(assert (=> b!5025009 m!6060324))

(assert (=> b!5025009 m!6060326))

(declare-fun m!6060328 () Bool)

(assert (=> b!5025009 m!6060328))

(assert (=> b!5024676 d!1617164))

(declare-fun condSetEmpty!28874 () Bool)

(assert (=> setNonEmpty!28868 (= condSetEmpty!28874 (= setRest!28868 ((as const (Array Context!6676 Bool)) false)))))

(declare-fun setRes!28874 () Bool)

(assert (=> setNonEmpty!28868 (= tp!1408605 setRes!28874)))

(declare-fun setIsEmpty!28874 () Bool)

(assert (=> setIsEmpty!28874 setRes!28874))

(declare-fun e!3139162 () Bool)

(declare-fun setNonEmpty!28874 () Bool)

(declare-fun tp!1408633 () Bool)

(declare-fun setElem!28874 () Context!6676)

(assert (=> setNonEmpty!28874 (= setRes!28874 (and tp!1408633 (inv!76662 setElem!28874) e!3139162))))

(declare-fun setRest!28874 () (InoxSet Context!6676))

(assert (=> setNonEmpty!28874 (= setRest!28868 ((_ map or) (store ((as const (Array Context!6676 Bool)) false) setElem!28874 true) setRest!28874))))

(declare-fun b!5025014 () Bool)

(declare-fun tp!1408632 () Bool)

(assert (=> b!5025014 (= e!3139162 tp!1408632)))

(assert (= (and setNonEmpty!28868 condSetEmpty!28874) setIsEmpty!28874))

(assert (= (and setNonEmpty!28868 (not condSetEmpty!28874)) setNonEmpty!28874))

(assert (= setNonEmpty!28874 b!5025014))

(declare-fun m!6060330 () Bool)

(assert (=> setNonEmpty!28874 m!6060330))

(declare-fun b!5025019 () Bool)

(declare-fun e!3139165 () Bool)

(declare-fun tp!1408638 () Bool)

(declare-fun tp!1408639 () Bool)

(assert (=> b!5025019 (= e!3139165 (and tp!1408638 tp!1408639))))

(assert (=> b!5024683 (= tp!1408604 e!3139165)))

(assert (= (and b!5024683 ((_ is Cons!58150) (exprs!3838 setElem!28868))) b!5025019))

(declare-fun b!5025028 () Bool)

(declare-fun tp!1408647 () Bool)

(declare-fun e!3139170 () Bool)

(declare-fun tp!1408646 () Bool)

(assert (=> b!5025028 (= e!3139170 (and (inv!76664 (left!42527 (c!859158 totalInput!1141))) tp!1408646 (inv!76664 (right!42857 (c!859158 totalInput!1141))) tp!1408647))))

(declare-fun b!5025030 () Bool)

(declare-fun e!3139171 () Bool)

(declare-fun tp!1408648 () Bool)

(assert (=> b!5025030 (= e!3139171 tp!1408648)))

(declare-fun b!5025029 () Bool)

(declare-fun inv!76670 (IArray!30925) Bool)

(assert (=> b!5025029 (= e!3139170 (and (inv!76670 (xs!18758 (c!859158 totalInput!1141))) e!3139171))))

(assert (=> b!5024682 (= tp!1408606 (and (inv!76664 (c!859158 totalInput!1141)) e!3139170))))

(assert (= (and b!5024682 ((_ is Node!15432) (c!859158 totalInput!1141))) b!5025028))

(assert (= b!5025029 b!5025030))

(assert (= (and b!5024682 ((_ is Leaf!25602) (c!859158 totalInput!1141))) b!5025029))

(declare-fun m!6060332 () Bool)

(assert (=> b!5025028 m!6060332))

(declare-fun m!6060334 () Bool)

(assert (=> b!5025028 m!6060334))

(declare-fun m!6060336 () Bool)

(assert (=> b!5025029 m!6060336))

(assert (=> b!5024682 m!6059994))

(check-sat (not b!5024927) (not b!5025007) (not d!1617164) (not b!5024958) (not b!5024717) (not b!5025019) (not d!1617090) (not b!5025028) (not b!5024989) (not d!1617150) (not bm!350703) (not bm!350704) (not b!5024936) (not b!5024935) (not b!5024953) (not bm!350705) (not b!5024940) (not b!5025014) (not d!1617162) (not b!5024720) (not d!1617084) (not d!1617142) (not b!5024764) (not d!1617138) (not d!1617134) (not b!5024997) (not b!5024961) (not b!5024919) (not b!5024682) (not b!5025008) (not b!5024938) (not b!5024689) (not b!5024987) (not d!1617144) (not d!1617082) (not d!1617140) (not b!5025009) (not setNonEmpty!28874) (not b!5024718) (not b!5024998) (not b!5025005) (not b!5024715) (not d!1617160) (not b!5024963) (not b!5024983) (not b!5024992) (not b!5025030) (not b!5024916) (not d!1617154) (not b!5024985) (not b!5024949) (not d!1617148) (not bm!350687) (not b!5024768) (not b!5024944) (not b!5024933) (not b!5024931) (not d!1617136) (not d!1617146) (not b!5024928) (not b!5024917) (not b!5024918) (not d!1617156) (not d!1617096) (not b!5024960) (not bm!350706) (not b!5025029) (not b!5024926) (not b!5024690) (not d!1617098))
(check-sat)
(get-model)

(declare-fun c!859295 () Bool)

(declare-fun d!1617166 () Bool)

(assert (=> d!1617166 (= c!859295 (isEmpty!31442 (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))))))

(declare-fun e!3139172 () Bool)

(assert (=> d!1617166 (= (matchZipper!667 (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) e!3139172)))

(declare-fun b!5025031 () Bool)

(assert (=> b!5025031 (= e!3139172 (nullableZipper!926 (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))))

(declare-fun b!5025032 () Bool)

(assert (=> b!5025032 (= e!3139172 (matchZipper!667 (derivationStepZipper!709 (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (head!10774 (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))) (tail!9907 (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))))

(assert (= (and d!1617166 c!859295) b!5025031))

(assert (= (and d!1617166 (not c!859295)) b!5025032))

(assert (=> d!1617166 m!6060018))

(declare-fun m!6060338 () Bool)

(assert (=> d!1617166 m!6060338))

(assert (=> b!5025031 m!6060016))

(declare-fun m!6060340 () Bool)

(assert (=> b!5025031 m!6060340))

(assert (=> b!5025032 m!6060018))

(declare-fun m!6060342 () Bool)

(assert (=> b!5025032 m!6060342))

(assert (=> b!5025032 m!6060016))

(assert (=> b!5025032 m!6060342))

(declare-fun m!6060344 () Bool)

(assert (=> b!5025032 m!6060344))

(assert (=> b!5025032 m!6060018))

(declare-fun m!6060346 () Bool)

(assert (=> b!5025032 m!6060346))

(assert (=> b!5025032 m!6060344))

(assert (=> b!5025032 m!6060346))

(declare-fun m!6060348 () Bool)

(assert (=> b!5025032 m!6060348))

(assert (=> b!5024690 d!1617166))

(declare-fun bs!1187751 () Bool)

(declare-fun d!1617168 () Bool)

(assert (= bs!1187751 (and d!1617168 d!1617150)))

(declare-fun lambda!249135 () Int)

(assert (=> bs!1187751 (= (= (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)) lt!2079775) (= lambda!249135 lambda!249134))))

(assert (=> d!1617168 true))

(assert (=> d!1617168 (= (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (flatMap!300 lt!2079777 lambda!249135))))

(declare-fun bs!1187752 () Bool)

(assert (= bs!1187752 d!1617168))

(declare-fun m!6060350 () Bool)

(assert (=> bs!1187752 m!6060350))

(assert (=> b!5024690 d!1617168))

(declare-fun d!1617170 () Bool)

(assert (=> d!1617170 (= (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)) (h!64599 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))

(assert (=> b!5024690 d!1617170))

(declare-fun d!1617172 () Bool)

(assert (=> d!1617172 (= (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)) (t!370667 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))

(assert (=> b!5024690 d!1617172))

(declare-fun d!1617174 () Bool)

(declare-fun lt!2079901 () Int)

(assert (=> d!1617174 (>= lt!2079901 0)))

(declare-fun e!3139175 () Int)

(assert (=> d!1617174 (= lt!2079901 e!3139175)))

(declare-fun c!859298 () Bool)

(assert (=> d!1617174 (= c!859298 ((_ is Nil!58151) (list!18768 totalInput!1141)))))

(assert (=> d!1617174 (= (size!38694 (list!18768 totalInput!1141)) lt!2079901)))

(declare-fun b!5025037 () Bool)

(assert (=> b!5025037 (= e!3139175 0)))

(declare-fun b!5025038 () Bool)

(assert (=> b!5025038 (= e!3139175 (+ 1 (size!38694 (t!370667 (list!18768 totalInput!1141)))))))

(assert (= (and d!1617174 c!859298) b!5025037))

(assert (= (and d!1617174 (not c!859298)) b!5025038))

(declare-fun m!6060352 () Bool)

(assert (=> b!5025038 m!6060352))

(assert (=> bm!350687 d!1617174))

(declare-fun d!1617176 () Bool)

(declare-fun lt!2079902 () Int)

(assert (=> d!1617176 (>= lt!2079902 0)))

(declare-fun e!3139176 () Int)

(assert (=> d!1617176 (= lt!2079902 e!3139176)))

(declare-fun c!859299 () Bool)

(assert (=> d!1617176 (= c!859299 ((_ is Nil!58151) (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))

(assert (=> d!1617176 (= (size!38694 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) lt!2079902)))

(declare-fun b!5025039 () Bool)

(assert (=> b!5025039 (= e!3139176 0)))

(declare-fun b!5025040 () Bool)

(assert (=> b!5025040 (= e!3139176 (+ 1 (size!38694 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1617176 c!859299) b!5025039))

(assert (= (and d!1617176 (not c!859299)) b!5025040))

(declare-fun m!6060354 () Bool)

(assert (=> b!5025040 m!6060354))

(assert (=> b!5024717 d!1617176))

(assert (=> b!5024715 d!1617176))

(declare-fun bs!1187753 () Bool)

(declare-fun d!1617178 () Bool)

(assert (= bs!1187753 (and d!1617178 d!1617134)))

(declare-fun lambda!249136 () Int)

(assert (=> bs!1187753 (= lambda!249136 lambda!249131)))

(assert (=> d!1617178 (= (inv!76662 setElem!28874) (forall!13420 (exprs!3838 setElem!28874) lambda!249136))))

(declare-fun bs!1187754 () Bool)

(assert (= bs!1187754 d!1617178))

(declare-fun m!6060356 () Bool)

(assert (=> bs!1187754 m!6060356))

(assert (=> setNonEmpty!28874 d!1617178))

(declare-fun b!5025041 () Bool)

(declare-fun e!3139180 () List!58275)

(assert (=> b!5025041 (= e!3139180 (t!370667 (list!18768 totalInput!1141)))))

(declare-fun b!5025042 () Bool)

(assert (=> b!5025042 (= e!3139180 (drop!2564 (t!370667 (t!370667 (list!18768 totalInput!1141))) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5025043 () Bool)

(declare-fun e!3139181 () List!58275)

(assert (=> b!5025043 (= e!3139181 e!3139180)))

(declare-fun c!859302 () Bool)

(assert (=> b!5025043 (= c!859302 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun bm!350707 () Bool)

(declare-fun call!350712 () Int)

(assert (=> bm!350707 (= call!350712 (size!38694 (t!370667 (list!18768 totalInput!1141))))))

(declare-fun b!5025044 () Bool)

(declare-fun e!3139179 () Int)

(assert (=> b!5025044 (= e!3139179 (- call!350712 (- (+ 1 from!1228) 1)))))

(declare-fun b!5025045 () Bool)

(assert (=> b!5025045 (= e!3139179 0)))

(declare-fun b!5025046 () Bool)

(declare-fun e!3139178 () Bool)

(declare-fun lt!2079903 () List!58275)

(declare-fun e!3139177 () Int)

(assert (=> b!5025046 (= e!3139178 (= (size!38694 lt!2079903) e!3139177))))

(declare-fun c!859303 () Bool)

(assert (=> b!5025046 (= c!859303 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5025047 () Bool)

(assert (=> b!5025047 (= e!3139177 call!350712)))

(declare-fun d!1617180 () Bool)

(assert (=> d!1617180 e!3139178))

(declare-fun res!2142484 () Bool)

(assert (=> d!1617180 (=> (not res!2142484) (not e!3139178))))

(assert (=> d!1617180 (= res!2142484 (= ((_ map implies) (content!10301 lt!2079903) (content!10301 (t!370667 (list!18768 totalInput!1141)))) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617180 (= lt!2079903 e!3139181)))

(declare-fun c!859301 () Bool)

(assert (=> d!1617180 (= c!859301 ((_ is Nil!58151) (t!370667 (list!18768 totalInput!1141))))))

(assert (=> d!1617180 (= (drop!2564 (t!370667 (list!18768 totalInput!1141)) (- (+ 1 from!1228) 1)) lt!2079903)))

(declare-fun b!5025048 () Bool)

(assert (=> b!5025048 (= e!3139177 e!3139179)))

(declare-fun c!859300 () Bool)

(assert (=> b!5025048 (= c!859300 (>= (- (+ 1 from!1228) 1) call!350712))))

(declare-fun b!5025049 () Bool)

(assert (=> b!5025049 (= e!3139181 Nil!58151)))

(assert (= (and d!1617180 c!859301) b!5025049))

(assert (= (and d!1617180 (not c!859301)) b!5025043))

(assert (= (and b!5025043 c!859302) b!5025041))

(assert (= (and b!5025043 (not c!859302)) b!5025042))

(assert (= (and d!1617180 res!2142484) b!5025046))

(assert (= (and b!5025046 c!859303) b!5025047))

(assert (= (and b!5025046 (not c!859303)) b!5025048))

(assert (= (and b!5025048 c!859300) b!5025045))

(assert (= (and b!5025048 (not c!859300)) b!5025044))

(assert (= (or b!5025047 b!5025048 b!5025044) bm!350707))

(declare-fun m!6060358 () Bool)

(assert (=> b!5025042 m!6060358))

(assert (=> bm!350707 m!6060352))

(declare-fun m!6060360 () Bool)

(assert (=> b!5025046 m!6060360))

(declare-fun m!6060362 () Bool)

(assert (=> d!1617180 m!6060362))

(declare-fun m!6060364 () Bool)

(assert (=> d!1617180 m!6060364))

(assert (=> b!5024764 d!1617180))

(declare-fun d!1617182 () Bool)

(declare-fun c!859306 () Bool)

(assert (=> d!1617182 (= c!859306 ((_ is Nil!58151) lt!2079880))))

(declare-fun e!3139184 () (InoxSet C!28076))

(assert (=> d!1617182 (= (content!10301 lt!2079880) e!3139184)))

(declare-fun b!5025054 () Bool)

(assert (=> b!5025054 (= e!3139184 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025055 () Bool)

(assert (=> b!5025055 (= e!3139184 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079880) true) (content!10301 (t!370667 lt!2079880))))))

(assert (= (and d!1617182 c!859306) b!5025054))

(assert (= (and d!1617182 (not c!859306)) b!5025055))

(declare-fun m!6060366 () Bool)

(assert (=> b!5025055 m!6060366))

(declare-fun m!6060368 () Bool)

(assert (=> b!5025055 m!6060368))

(assert (=> d!1617148 d!1617182))

(declare-fun d!1617184 () Bool)

(declare-fun c!859307 () Bool)

(assert (=> d!1617184 (= c!859307 ((_ is Nil!58151) (drop!2564 lt!2079779 (+ 1 from!1228))))))

(declare-fun e!3139185 () (InoxSet C!28076))

(assert (=> d!1617184 (= (content!10301 (drop!2564 lt!2079779 (+ 1 from!1228))) e!3139185)))

(declare-fun b!5025056 () Bool)

(assert (=> b!5025056 (= e!3139185 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025057 () Bool)

(assert (=> b!5025057 (= e!3139185 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 (drop!2564 lt!2079779 (+ 1 from!1228))) true) (content!10301 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))))))))

(assert (= (and d!1617184 c!859307) b!5025056))

(assert (= (and d!1617184 (not c!859307)) b!5025057))

(declare-fun m!6060370 () Bool)

(assert (=> b!5025057 m!6060370))

(declare-fun m!6060372 () Bool)

(assert (=> b!5025057 m!6060372))

(assert (=> d!1617148 d!1617184))

(declare-fun bs!1187755 () Bool)

(declare-fun d!1617186 () Bool)

(assert (= bs!1187755 (and d!1617186 d!1617098)))

(declare-fun lambda!249139 () Int)

(assert (=> bs!1187755 (not (= lambda!249139 lambda!249126))))

(declare-fun bs!1187756 () Bool)

(assert (= bs!1187756 (and d!1617186 b!5024916)))

(assert (=> bs!1187756 (not (= lambda!249139 lambda!249127))))

(declare-fun bs!1187757 () Bool)

(assert (= bs!1187757 (and d!1617186 b!5024917)))

(assert (=> bs!1187757 (not (= lambda!249139 lambda!249128))))

(declare-fun exists!1390 ((InoxSet Context!6676) Int) Bool)

(assert (=> d!1617186 (= (nullableZipper!926 lt!2079777) (exists!1390 lt!2079777 lambda!249139))))

(declare-fun bs!1187758 () Bool)

(assert (= bs!1187758 d!1617186))

(declare-fun m!6060374 () Bool)

(assert (=> bs!1187758 m!6060374))

(assert (=> b!5024918 d!1617186))

(assert (=> b!5024998 d!1617090))

(declare-fun d!1617188 () Bool)

(declare-fun e!3139189 () Bool)

(assert (=> d!1617188 e!3139189))

(declare-fun res!2142485 () Bool)

(assert (=> d!1617188 (=> (not res!2142485) (not e!3139189))))

(declare-fun lt!2079904 () List!58275)

(assert (=> d!1617188 (= res!2142485 (= ((_ map implies) (content!10301 lt!2079904) (content!10301 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139188 () List!58275)

(assert (=> d!1617188 (= lt!2079904 e!3139188)))

(declare-fun c!859311 () Bool)

(assert (=> d!1617188 (= c!859311 (or ((_ is Nil!58151) (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (<= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) 0)))))

(assert (=> d!1617188 (= (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141))) lt!2079904)))

(declare-fun b!5025058 () Bool)

(assert (=> b!5025058 (= e!3139188 Nil!58151)))

(declare-fun b!5025059 () Bool)

(declare-fun e!3139187 () Int)

(declare-fun e!3139186 () Int)

(assert (=> b!5025059 (= e!3139187 e!3139186)))

(declare-fun c!859310 () Bool)

(assert (=> b!5025059 (= c!859310 (>= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) (size!38694 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5025060 () Bool)

(assert (=> b!5025060 (= e!3139186 (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)))))

(declare-fun b!5025061 () Bool)

(assert (=> b!5025061 (= e!3139186 (size!38694 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5025062 () Bool)

(assert (=> b!5025062 (= e!3139188 (Cons!58151 (h!64599 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (take!764 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (- (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) 1))))))

(declare-fun b!5025063 () Bool)

(assert (=> b!5025063 (= e!3139187 0)))

(declare-fun b!5025064 () Bool)

(assert (=> b!5025064 (= e!3139189 (= (size!38694 lt!2079904) e!3139187))))

(declare-fun c!859312 () Bool)

(assert (=> b!5025064 (= c!859312 (<= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) 0))))

(assert (= (and d!1617188 c!859311) b!5025058))

(assert (= (and d!1617188 (not c!859311)) b!5025062))

(assert (= (and d!1617188 res!2142485) b!5025064))

(assert (= (and b!5025064 c!859312) b!5025063))

(assert (= (and b!5025064 (not c!859312)) b!5025059))

(assert (= (and b!5025059 c!859310) b!5025061))

(assert (= (and b!5025059 (not c!859310)) b!5025060))

(declare-fun m!6060376 () Bool)

(assert (=> b!5025062 m!6060376))

(declare-fun m!6060378 () Bool)

(assert (=> d!1617188 m!6060378))

(assert (=> d!1617188 m!6060002))

(assert (=> d!1617188 m!6060036))

(assert (=> b!5025059 m!6060002))

(assert (=> b!5025059 m!6060038))

(assert (=> b!5025061 m!6060002))

(assert (=> b!5025061 m!6060038))

(declare-fun m!6060380 () Bool)

(assert (=> b!5025064 m!6060380))

(assert (=> b!5024998 d!1617188))

(declare-fun d!1617190 () Bool)

(declare-fun lt!2079905 () Int)

(assert (=> d!1617190 (and (>= lt!2079905 0) (<= lt!2079905 (- (size!38692 totalInput!1141) (+ 1 from!1228))))))

(declare-fun e!3139190 () Int)

(assert (=> d!1617190 (= lt!2079905 e!3139190)))

(declare-fun c!859315 () Bool)

(declare-fun e!3139191 () Bool)

(assert (=> d!1617190 (= c!859315 e!3139191)))

(declare-fun res!2142486 () Bool)

(assert (=> d!1617190 (=> res!2142486 e!3139191)))

(assert (=> d!1617190 (= res!2142486 (= (+ 1 from!1228) (size!38692 totalInput!1141)))))

(declare-fun e!3139194 () Bool)

(assert (=> d!1617190 e!3139194))

(declare-fun res!2142487 () Bool)

(assert (=> d!1617190 (=> (not res!2142487) (not e!3139194))))

(assert (=> d!1617190 (= res!2142487 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617190 (= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) lt!2079905)))

(declare-fun b!5025065 () Bool)

(declare-fun e!3139193 () Int)

(declare-fun lt!2079907 () Int)

(assert (=> b!5025065 (= e!3139193 (+ 1 lt!2079907))))

(declare-fun b!5025066 () Bool)

(assert (=> b!5025066 (= e!3139190 e!3139193)))

(declare-fun lt!2079906 () (InoxSet Context!6676))

(assert (=> b!5025066 (= lt!2079906 (derivationStepZipper!709 lt!2079777 (apply!14145 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5025066 (= lt!2079907 (findLongestMatchInnerZipperFastV2!227 lt!2079906 (+ 1 from!1228 1) totalInput!1141 (size!38692 totalInput!1141)))))

(declare-fun c!859313 () Bool)

(assert (=> b!5025066 (= c!859313 (> lt!2079907 0))))

(declare-fun b!5025067 () Bool)

(declare-fun e!3139192 () Int)

(assert (=> b!5025067 (= e!3139192 0)))

(declare-fun b!5025068 () Bool)

(assert (=> b!5025068 (= e!3139194 (<= (+ 1 from!1228) (size!38692 totalInput!1141)))))

(declare-fun b!5025069 () Bool)

(assert (=> b!5025069 (= e!3139190 0)))

(declare-fun b!5025070 () Bool)

(declare-fun c!859314 () Bool)

(assert (=> b!5025070 (= c!859314 (nullableZipper!926 lt!2079906))))

(assert (=> b!5025070 (= e!3139193 e!3139192)))

(declare-fun b!5025071 () Bool)

(assert (=> b!5025071 (= e!3139192 1)))

(declare-fun b!5025072 () Bool)

(assert (=> b!5025072 (= e!3139191 (lostCauseZipper!927 lt!2079777))))

(assert (= (and d!1617190 res!2142487) b!5025068))

(assert (= (and d!1617190 (not res!2142486)) b!5025072))

(assert (= (and d!1617190 c!859315) b!5025069))

(assert (= (and d!1617190 (not c!859315)) b!5025066))

(assert (= (and b!5025066 c!859313) b!5025065))

(assert (= (and b!5025066 (not c!859313)) b!5025070))

(assert (= (and b!5025070 c!859314) b!5025071))

(assert (= (and b!5025070 (not c!859314)) b!5025067))

(assert (=> b!5025066 m!6060288))

(assert (=> b!5025066 m!6060288))

(assert (=> b!5025066 m!6060290))

(assert (=> b!5025066 m!6059976))

(declare-fun m!6060382 () Bool)

(assert (=> b!5025066 m!6060382))

(assert (=> b!5025068 m!6059976))

(declare-fun m!6060384 () Bool)

(assert (=> b!5025070 m!6060384))

(assert (=> b!5025072 m!6060296))

(assert (=> b!5024998 d!1617190))

(assert (=> b!5024998 d!1617096))

(declare-fun c!859316 () Bool)

(declare-fun d!1617192 () Bool)

(assert (=> d!1617192 (= c!859316 (isEmpty!31442 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)))))))

(declare-fun e!3139195 () Bool)

(assert (=> d!1617192 (= (matchZipper!667 lt!2079777 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)))) e!3139195)))

(declare-fun b!5025073 () Bool)

(assert (=> b!5025073 (= e!3139195 (nullableZipper!926 lt!2079777))))

(declare-fun b!5025074 () Bool)

(assert (=> b!5025074 (= e!3139195 (matchZipper!667 (derivationStepZipper!709 lt!2079777 (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141))))) (tail!9907 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141))))))))

(assert (= (and d!1617192 c!859316) b!5025073))

(assert (= (and d!1617192 (not c!859316)) b!5025074))

(assert (=> d!1617192 m!6060306))

(declare-fun m!6060386 () Bool)

(assert (=> d!1617192 m!6060386))

(assert (=> b!5025073 m!6060012))

(assert (=> b!5025074 m!6060306))

(declare-fun m!6060388 () Bool)

(assert (=> b!5025074 m!6060388))

(assert (=> b!5025074 m!6060388))

(declare-fun m!6060390 () Bool)

(assert (=> b!5025074 m!6060390))

(assert (=> b!5025074 m!6060306))

(declare-fun m!6060392 () Bool)

(assert (=> b!5025074 m!6060392))

(assert (=> b!5025074 m!6060390))

(assert (=> b!5025074 m!6060392))

(declare-fun m!6060394 () Bool)

(assert (=> b!5025074 m!6060394))

(assert (=> b!5024998 d!1617192))

(assert (=> b!5024998 d!1617160))

(declare-fun d!1617194 () Bool)

(declare-fun lt!2079908 () C!28076)

(assert (=> d!1617194 (contains!19572 (tail!9907 lt!2079779) lt!2079908)))

(declare-fun e!3139196 () C!28076)

(assert (=> d!1617194 (= lt!2079908 e!3139196)))

(declare-fun c!859317 () Bool)

(assert (=> d!1617194 (= c!859317 (= (- from!1228 1) 0))))

(declare-fun e!3139197 () Bool)

(assert (=> d!1617194 e!3139197))

(declare-fun res!2142488 () Bool)

(assert (=> d!1617194 (=> (not res!2142488) (not e!3139197))))

(assert (=> d!1617194 (= res!2142488 (<= 0 (- from!1228 1)))))

(assert (=> d!1617194 (= (apply!14144 (tail!9907 lt!2079779) (- from!1228 1)) lt!2079908)))

(declare-fun b!5025075 () Bool)

(assert (=> b!5025075 (= e!3139197 (< (- from!1228 1) (size!38694 (tail!9907 lt!2079779))))))

(declare-fun b!5025076 () Bool)

(assert (=> b!5025076 (= e!3139196 (head!10774 (tail!9907 lt!2079779)))))

(declare-fun b!5025077 () Bool)

(assert (=> b!5025077 (= e!3139196 (apply!14144 (tail!9907 (tail!9907 lt!2079779)) (- (- from!1228 1) 1)))))

(assert (= (and d!1617194 res!2142488) b!5025075))

(assert (= (and d!1617194 c!859317) b!5025076))

(assert (= (and d!1617194 (not c!859317)) b!5025077))

(assert (=> d!1617194 m!6060240))

(declare-fun m!6060396 () Bool)

(assert (=> d!1617194 m!6060396))

(assert (=> b!5025075 m!6060240))

(declare-fun m!6060398 () Bool)

(assert (=> b!5025075 m!6060398))

(assert (=> b!5025076 m!6060240))

(declare-fun m!6060400 () Bool)

(assert (=> b!5025076 m!6060400))

(assert (=> b!5025077 m!6060240))

(declare-fun m!6060402 () Bool)

(assert (=> b!5025077 m!6060402))

(assert (=> b!5025077 m!6060402))

(declare-fun m!6060404 () Bool)

(assert (=> b!5025077 m!6060404))

(assert (=> b!5024928 d!1617194))

(declare-fun d!1617196 () Bool)

(assert (=> d!1617196 (= (tail!9907 lt!2079779) (t!370667 lt!2079779))))

(assert (=> b!5024928 d!1617196))

(declare-fun d!1617198 () Bool)

(declare-fun c!859318 () Bool)

(assert (=> d!1617198 (= c!859318 (isEmpty!31442 (tail!9907 lt!2079778)))))

(declare-fun e!3139198 () Bool)

(assert (=> d!1617198 (= (matchZipper!667 (derivationStepZipper!709 z!4747 (head!10774 lt!2079778)) (tail!9907 lt!2079778)) e!3139198)))

(declare-fun b!5025078 () Bool)

(assert (=> b!5025078 (= e!3139198 (nullableZipper!926 (derivationStepZipper!709 z!4747 (head!10774 lt!2079778))))))

(declare-fun b!5025079 () Bool)

(assert (=> b!5025079 (= e!3139198 (matchZipper!667 (derivationStepZipper!709 (derivationStepZipper!709 z!4747 (head!10774 lt!2079778)) (head!10774 (tail!9907 lt!2079778))) (tail!9907 (tail!9907 lt!2079778))))))

(assert (= (and d!1617198 c!859318) b!5025078))

(assert (= (and d!1617198 (not c!859318)) b!5025079))

(assert (=> d!1617198 m!6060326))

(declare-fun m!6060406 () Bool)

(assert (=> d!1617198 m!6060406))

(assert (=> b!5025078 m!6060324))

(declare-fun m!6060408 () Bool)

(assert (=> b!5025078 m!6060408))

(assert (=> b!5025079 m!6060326))

(declare-fun m!6060410 () Bool)

(assert (=> b!5025079 m!6060410))

(assert (=> b!5025079 m!6060324))

(assert (=> b!5025079 m!6060410))

(declare-fun m!6060412 () Bool)

(assert (=> b!5025079 m!6060412))

(assert (=> b!5025079 m!6060326))

(declare-fun m!6060414 () Bool)

(assert (=> b!5025079 m!6060414))

(assert (=> b!5025079 m!6060412))

(assert (=> b!5025079 m!6060414))

(declare-fun m!6060416 () Bool)

(assert (=> b!5025079 m!6060416))

(assert (=> b!5025009 d!1617198))

(declare-fun bs!1187759 () Bool)

(declare-fun d!1617200 () Bool)

(assert (= bs!1187759 (and d!1617200 d!1617150)))

(declare-fun lambda!249140 () Int)

(assert (=> bs!1187759 (= (= (head!10774 lt!2079778) lt!2079775) (= lambda!249140 lambda!249134))))

(declare-fun bs!1187760 () Bool)

(assert (= bs!1187760 (and d!1617200 d!1617168)))

(assert (=> bs!1187760 (= (= (head!10774 lt!2079778) (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (= lambda!249140 lambda!249135))))

(assert (=> d!1617200 true))

(assert (=> d!1617200 (= (derivationStepZipper!709 z!4747 (head!10774 lt!2079778)) (flatMap!300 z!4747 lambda!249140))))

(declare-fun bs!1187761 () Bool)

(assert (= bs!1187761 d!1617200))

(declare-fun m!6060418 () Bool)

(assert (=> bs!1187761 m!6060418))

(assert (=> b!5025009 d!1617200))

(declare-fun d!1617202 () Bool)

(assert (=> d!1617202 (= (head!10774 lt!2079778) (h!64599 lt!2079778))))

(assert (=> b!5025009 d!1617202))

(declare-fun d!1617204 () Bool)

(assert (=> d!1617204 (= (tail!9907 lt!2079778) (t!370667 lt!2079778))))

(assert (=> b!5025009 d!1617204))

(declare-fun d!1617206 () Bool)

(declare-fun lt!2079909 () Int)

(assert (=> d!1617206 (>= lt!2079909 0)))

(declare-fun e!3139199 () Int)

(assert (=> d!1617206 (= lt!2079909 e!3139199)))

(declare-fun c!859319 () Bool)

(assert (=> d!1617206 (= c!859319 ((_ is Nil!58151) lt!2079779))))

(assert (=> d!1617206 (= (size!38694 lt!2079779) lt!2079909)))

(declare-fun b!5025080 () Bool)

(assert (=> b!5025080 (= e!3139199 0)))

(declare-fun b!5025081 () Bool)

(assert (=> b!5025081 (= e!3139199 (+ 1 (size!38694 (t!370667 lt!2079779))))))

(assert (= (and d!1617206 c!859319) b!5025080))

(assert (= (and d!1617206 (not c!859319)) b!5025081))

(declare-fun m!6060420 () Bool)

(assert (=> b!5025081 m!6060420))

(assert (=> b!5024926 d!1617206))

(assert (=> d!1617160 d!1617174))

(assert (=> d!1617160 d!1617096))

(declare-fun d!1617208 () Bool)

(declare-fun lt!2079912 () Int)

(assert (=> d!1617208 (= lt!2079912 (size!38694 (list!18770 (c!859158 totalInput!1141))))))

(assert (=> d!1617208 (= lt!2079912 (ite ((_ is Empty!15432) (c!859158 totalInput!1141)) 0 (ite ((_ is Leaf!25602) (c!859158 totalInput!1141)) (csize!31095 (c!859158 totalInput!1141)) (csize!31094 (c!859158 totalInput!1141)))))))

(assert (=> d!1617208 (= (size!38696 (c!859158 totalInput!1141)) lt!2079912)))

(declare-fun bs!1187762 () Bool)

(assert (= bs!1187762 d!1617208))

(assert (=> bs!1187762 m!6060070))

(assert (=> bs!1187762 m!6060070))

(declare-fun m!6060422 () Bool)

(assert (=> bs!1187762 m!6060422))

(assert (=> d!1617160 d!1617208))

(assert (=> bm!350705 d!1617206))

(declare-fun d!1617210 () Bool)

(declare-fun res!2142493 () Bool)

(declare-fun e!3139204 () Bool)

(assert (=> d!1617210 (=> res!2142493 e!3139204)))

(assert (=> d!1617210 (= res!2142493 ((_ is Nil!58150) (exprs!3838 setElem!28868)))))

(assert (=> d!1617210 (= (forall!13420 (exprs!3838 setElem!28868) lambda!249131) e!3139204)))

(declare-fun b!5025086 () Bool)

(declare-fun e!3139205 () Bool)

(assert (=> b!5025086 (= e!3139204 e!3139205)))

(declare-fun res!2142494 () Bool)

(assert (=> b!5025086 (=> (not res!2142494) (not e!3139205))))

(declare-fun dynLambda!23531 (Int Regex!13913) Bool)

(assert (=> b!5025086 (= res!2142494 (dynLambda!23531 lambda!249131 (h!64598 (exprs!3838 setElem!28868))))))

(declare-fun b!5025087 () Bool)

(assert (=> b!5025087 (= e!3139205 (forall!13420 (t!370666 (exprs!3838 setElem!28868)) lambda!249131))))

(assert (= (and d!1617210 (not res!2142493)) b!5025086))

(assert (= (and b!5025086 res!2142494) b!5025087))

(declare-fun b_lambda!198689 () Bool)

(assert (=> (not b_lambda!198689) (not b!5025086)))

(declare-fun m!6060424 () Bool)

(assert (=> b!5025086 m!6060424))

(declare-fun m!6060426 () Bool)

(assert (=> b!5025087 m!6060426))

(assert (=> d!1617134 d!1617210))

(declare-fun b!5025088 () Bool)

(declare-fun e!3139209 () List!58275)

(assert (=> b!5025088 (= e!3139209 (t!370667 lt!2079779))))

(declare-fun b!5025089 () Bool)

(assert (=> b!5025089 (= e!3139209 (drop!2564 (t!370667 (t!370667 lt!2079779)) (- (- from!1228 1) 1)))))

(declare-fun b!5025090 () Bool)

(declare-fun e!3139210 () List!58275)

(assert (=> b!5025090 (= e!3139210 e!3139209)))

(declare-fun c!859322 () Bool)

(assert (=> b!5025090 (= c!859322 (<= (- from!1228 1) 0))))

(declare-fun bm!350708 () Bool)

(declare-fun call!350713 () Int)

(assert (=> bm!350708 (= call!350713 (size!38694 (t!370667 lt!2079779)))))

(declare-fun b!5025091 () Bool)

(declare-fun e!3139208 () Int)

(assert (=> b!5025091 (= e!3139208 (- call!350713 (- from!1228 1)))))

(declare-fun b!5025092 () Bool)

(assert (=> b!5025092 (= e!3139208 0)))

(declare-fun b!5025093 () Bool)

(declare-fun e!3139207 () Bool)

(declare-fun lt!2079913 () List!58275)

(declare-fun e!3139206 () Int)

(assert (=> b!5025093 (= e!3139207 (= (size!38694 lt!2079913) e!3139206))))

(declare-fun c!859323 () Bool)

(assert (=> b!5025093 (= c!859323 (<= (- from!1228 1) 0))))

(declare-fun b!5025094 () Bool)

(assert (=> b!5025094 (= e!3139206 call!350713)))

(declare-fun d!1617212 () Bool)

(assert (=> d!1617212 e!3139207))

(declare-fun res!2142495 () Bool)

(assert (=> d!1617212 (=> (not res!2142495) (not e!3139207))))

(assert (=> d!1617212 (= res!2142495 (= ((_ map implies) (content!10301 lt!2079913) (content!10301 (t!370667 lt!2079779))) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617212 (= lt!2079913 e!3139210)))

(declare-fun c!859321 () Bool)

(assert (=> d!1617212 (= c!859321 ((_ is Nil!58151) (t!370667 lt!2079779)))))

(assert (=> d!1617212 (= (drop!2564 (t!370667 lt!2079779) (- from!1228 1)) lt!2079913)))

(declare-fun b!5025095 () Bool)

(assert (=> b!5025095 (= e!3139206 e!3139208)))

(declare-fun c!859320 () Bool)

(assert (=> b!5025095 (= c!859320 (>= (- from!1228 1) call!350713))))

(declare-fun b!5025096 () Bool)

(assert (=> b!5025096 (= e!3139210 Nil!58151)))

(assert (= (and d!1617212 c!859321) b!5025096))

(assert (= (and d!1617212 (not c!859321)) b!5025090))

(assert (= (and b!5025090 c!859322) b!5025088))

(assert (= (and b!5025090 (not c!859322)) b!5025089))

(assert (= (and d!1617212 res!2142495) b!5025093))

(assert (= (and b!5025093 c!859323) b!5025094))

(assert (= (and b!5025093 (not c!859323)) b!5025095))

(assert (= (and b!5025095 c!859320) b!5025092))

(assert (= (and b!5025095 (not c!859320)) b!5025091))

(assert (= (or b!5025094 b!5025095 b!5025091) bm!350708))

(declare-fun m!6060428 () Bool)

(assert (=> b!5025089 m!6060428))

(assert (=> bm!350708 m!6060420))

(declare-fun m!6060430 () Bool)

(assert (=> b!5025093 m!6060430))

(declare-fun m!6060432 () Bool)

(assert (=> d!1617212 m!6060432))

(declare-fun m!6060434 () Bool)

(assert (=> d!1617212 m!6060434))

(assert (=> b!5024940 d!1617212))

(declare-fun d!1617214 () Bool)

(declare-fun c!859324 () Bool)

(assert (=> d!1617214 (= c!859324 ((_ is Nil!58151) lt!2079877))))

(declare-fun e!3139211 () (InoxSet C!28076))

(assert (=> d!1617214 (= (content!10301 lt!2079877) e!3139211)))

(declare-fun b!5025097 () Bool)

(assert (=> b!5025097 (= e!3139211 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025098 () Bool)

(assert (=> b!5025098 (= e!3139211 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079877) true) (content!10301 (t!370667 lt!2079877))))))

(assert (= (and d!1617214 c!859324) b!5025097))

(assert (= (and d!1617214 (not c!859324)) b!5025098))

(declare-fun m!6060436 () Bool)

(assert (=> b!5025098 m!6060436))

(declare-fun m!6060438 () Bool)

(assert (=> b!5025098 m!6060438))

(assert (=> d!1617142 d!1617214))

(declare-fun d!1617216 () Bool)

(declare-fun c!859325 () Bool)

(assert (=> d!1617216 (= c!859325 ((_ is Nil!58151) (drop!2564 lt!2079779 from!1228)))))

(declare-fun e!3139212 () (InoxSet C!28076))

(assert (=> d!1617216 (= (content!10301 (drop!2564 lt!2079779 from!1228)) e!3139212)))

(declare-fun b!5025099 () Bool)

(assert (=> b!5025099 (= e!3139212 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025100 () Bool)

(assert (=> b!5025100 (= e!3139212 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 (drop!2564 lt!2079779 from!1228)) true) (content!10301 (t!370667 (drop!2564 lt!2079779 from!1228)))))))

(assert (= (and d!1617216 c!859325) b!5025099))

(assert (= (and d!1617216 (not c!859325)) b!5025100))

(declare-fun m!6060440 () Bool)

(assert (=> b!5025100 m!6060440))

(declare-fun m!6060442 () Bool)

(assert (=> b!5025100 m!6060442))

(assert (=> d!1617142 d!1617216))

(declare-fun bs!1187763 () Bool)

(declare-fun d!1617218 () Bool)

(assert (= bs!1187763 (and d!1617218 d!1617098)))

(declare-fun lambda!249143 () Int)

(assert (=> bs!1187763 (not (= lambda!249143 lambda!249126))))

(declare-fun bs!1187764 () Bool)

(assert (= bs!1187764 (and d!1617218 b!5024916)))

(assert (=> bs!1187764 (not (= lambda!249143 lambda!249127))))

(declare-fun bs!1187765 () Bool)

(assert (= bs!1187765 (and d!1617218 b!5024917)))

(assert (=> bs!1187765 (not (= lambda!249143 lambda!249128))))

(declare-fun bs!1187766 () Bool)

(assert (= bs!1187766 (and d!1617218 d!1617186)))

(assert (=> bs!1187766 (not (= lambda!249143 lambda!249139))))

(assert (=> d!1617218 true))

(declare-fun order!26707 () Int)

(declare-fun dynLambda!23533 (Int Int) Int)

(assert (=> d!1617218 (< (dynLambda!23533 order!26707 (ite c!859261 lambda!249127 lambda!249128)) (dynLambda!23533 order!26707 lambda!249143))))

(declare-fun forall!13423 (List!58276 Int) Bool)

(assert (=> d!1617218 (= (exists!1388 (ite c!859261 lt!2079870 lt!2079867) (ite c!859261 lambda!249127 lambda!249128)) (not (forall!13423 (ite c!859261 lt!2079870 lt!2079867) lambda!249143)))))

(declare-fun bs!1187767 () Bool)

(assert (= bs!1187767 d!1617218))

(declare-fun m!6060444 () Bool)

(assert (=> bs!1187767 m!6060444))

(assert (=> bm!350704 d!1617218))

(declare-fun bs!1187768 () Bool)

(declare-fun d!1617220 () Bool)

(assert (= bs!1187768 (and d!1617220 b!5024916)))

(declare-fun lambda!249146 () Int)

(assert (=> bs!1187768 (not (= lambda!249146 lambda!249127))))

(declare-fun bs!1187769 () Bool)

(assert (= bs!1187769 (and d!1617220 d!1617218)))

(assert (=> bs!1187769 (= (= lambda!249126 (ite c!859261 lambda!249127 lambda!249128)) (= lambda!249146 lambda!249143))))

(declare-fun bs!1187770 () Bool)

(assert (= bs!1187770 (and d!1617220 d!1617098)))

(assert (=> bs!1187770 (not (= lambda!249146 lambda!249126))))

(declare-fun bs!1187771 () Bool)

(assert (= bs!1187771 (and d!1617220 d!1617186)))

(assert (=> bs!1187771 (not (= lambda!249146 lambda!249139))))

(declare-fun bs!1187772 () Bool)

(assert (= bs!1187772 (and d!1617220 b!5024917)))

(assert (=> bs!1187772 (not (= lambda!249146 lambda!249128))))

(assert (=> d!1617220 true))

(assert (=> d!1617220 (< (dynLambda!23533 order!26707 lambda!249126) (dynLambda!23533 order!26707 lambda!249146))))

(assert (=> d!1617220 (not (exists!1388 lt!2079867 lambda!249146))))

(declare-fun lt!2079916 () Unit!149335)

(declare-fun choose!37175 (List!58276 Int) Unit!149335)

(assert (=> d!1617220 (= lt!2079916 (choose!37175 lt!2079867 lambda!249126))))

(assert (=> d!1617220 (forall!13423 lt!2079867 lambda!249126)))

(assert (=> d!1617220 (= (lemmaForallThenNotExists!251 lt!2079867 lambda!249126) lt!2079916)))

(declare-fun bs!1187773 () Bool)

(assert (= bs!1187773 d!1617220))

(declare-fun m!6060446 () Bool)

(assert (=> bs!1187773 m!6060446))

(declare-fun m!6060448 () Bool)

(assert (=> bs!1187773 m!6060448))

(declare-fun m!6060450 () Bool)

(assert (=> bs!1187773 m!6060450))

(assert (=> b!5024917 d!1617220))

(declare-fun d!1617222 () Bool)

(assert (=> d!1617222 (= (isEmpty!31442 lt!2079778) ((_ is Nil!58151) lt!2079778))))

(assert (=> d!1617164 d!1617222))

(declare-fun d!1617224 () Bool)

(declare-fun lt!2079917 () Int)

(assert (=> d!1617224 (>= lt!2079917 0)))

(declare-fun e!3139215 () Int)

(assert (=> d!1617224 (= lt!2079917 e!3139215)))

(declare-fun c!859326 () Bool)

(assert (=> d!1617224 (= c!859326 ((_ is Nil!58151) (drop!2564 lt!2079779 (+ 1 from!1228))))))

(assert (=> d!1617224 (= (size!38694 (drop!2564 lt!2079779 (+ 1 from!1228))) lt!2079917)))

(declare-fun b!5025103 () Bool)

(assert (=> b!5025103 (= e!3139215 0)))

(declare-fun b!5025104 () Bool)

(assert (=> b!5025104 (= e!3139215 (+ 1 (size!38694 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))))))))

(assert (= (and d!1617224 c!859326) b!5025103))

(assert (= (and d!1617224 (not c!859326)) b!5025104))

(declare-fun m!6060452 () Bool)

(assert (=> b!5025104 m!6060452))

(assert (=> b!5024960 d!1617224))

(assert (=> b!5024958 d!1617224))

(declare-fun d!1617226 () Bool)

(assert (=> d!1617226 (= (isEmpty!31442 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)) ((_ is Nil!58151) (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782)))))

(assert (=> d!1617082 d!1617226))

(declare-fun d!1617229 () Bool)

(declare-fun c!859327 () Bool)

(assert (=> d!1617229 (= c!859327 ((_ is Nil!58151) lt!2079797))))

(declare-fun e!3139216 () (InoxSet C!28076))

(assert (=> d!1617229 (= (content!10301 lt!2079797) e!3139216)))

(declare-fun b!5025105 () Bool)

(assert (=> b!5025105 (= e!3139216 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025106 () Bool)

(assert (=> b!5025106 (= e!3139216 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079797) true) (content!10301 (t!370667 lt!2079797))))))

(assert (= (and d!1617229 c!859327) b!5025105))

(assert (= (and d!1617229 (not c!859327)) b!5025106))

(declare-fun m!6060454 () Bool)

(assert (=> b!5025106 m!6060454))

(declare-fun m!6060456 () Bool)

(assert (=> b!5025106 m!6060456))

(assert (=> d!1617090 d!1617229))

(declare-fun d!1617232 () Bool)

(declare-fun c!859328 () Bool)

(assert (=> d!1617232 (= c!859328 ((_ is Nil!58151) (list!18768 totalInput!1141)))))

(declare-fun e!3139217 () (InoxSet C!28076))

(assert (=> d!1617232 (= (content!10301 (list!18768 totalInput!1141)) e!3139217)))

(declare-fun b!5025107 () Bool)

(assert (=> b!5025107 (= e!3139217 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025108 () Bool)

(assert (=> b!5025108 (= e!3139217 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 (list!18768 totalInput!1141)) true) (content!10301 (t!370667 (list!18768 totalInput!1141)))))))

(assert (= (and d!1617232 c!859328) b!5025107))

(assert (= (and d!1617232 (not c!859328)) b!5025108))

(declare-fun m!6060458 () Bool)

(assert (=> b!5025108 m!6060458))

(assert (=> b!5025108 m!6060364))

(assert (=> d!1617090 d!1617232))

(declare-fun d!1617234 () Bool)

(declare-fun lt!2079920 () Bool)

(assert (=> d!1617234 (= lt!2079920 (select (content!10301 lt!2079779) lt!2079873))))

(declare-fun e!3139226 () Bool)

(assert (=> d!1617234 (= lt!2079920 e!3139226)))

(declare-fun res!2142501 () Bool)

(assert (=> d!1617234 (=> (not res!2142501) (not e!3139226))))

(assert (=> d!1617234 (= res!2142501 ((_ is Cons!58151) lt!2079779))))

(assert (=> d!1617234 (= (contains!19572 lt!2079779 lt!2079873) lt!2079920)))

(declare-fun b!5025121 () Bool)

(declare-fun e!3139227 () Bool)

(assert (=> b!5025121 (= e!3139226 e!3139227)))

(declare-fun res!2142500 () Bool)

(assert (=> b!5025121 (=> res!2142500 e!3139227)))

(assert (=> b!5025121 (= res!2142500 (= (h!64599 lt!2079779) lt!2079873))))

(declare-fun b!5025122 () Bool)

(assert (=> b!5025122 (= e!3139227 (contains!19572 (t!370667 lt!2079779) lt!2079873))))

(assert (= (and d!1617234 res!2142501) b!5025121))

(assert (= (and b!5025121 (not res!2142500)) b!5025122))

(assert (=> d!1617234 m!6060268))

(declare-fun m!6060468 () Bool)

(assert (=> d!1617234 m!6060468))

(declare-fun m!6060470 () Bool)

(assert (=> b!5025122 m!6060470))

(assert (=> d!1617138 d!1617234))

(declare-fun d!1617242 () Bool)

(assert (=> d!1617242 (= (inv!76670 (xs!18758 (c!859158 totalInput!1141))) (<= (size!38694 (innerList!15520 (xs!18758 (c!859158 totalInput!1141)))) 2147483647))))

(declare-fun bs!1187774 () Bool)

(assert (= bs!1187774 d!1617242))

(declare-fun m!6060472 () Bool)

(assert (=> bs!1187774 m!6060472))

(assert (=> b!5025029 d!1617242))

(declare-fun d!1617244 () Bool)

(declare-fun res!2142506 () Bool)

(declare-fun e!3139232 () Bool)

(assert (=> d!1617244 (=> (not res!2142506) (not e!3139232))))

(declare-fun list!18771 (IArray!30925) List!58275)

(assert (=> d!1617244 (= res!2142506 (<= (size!38694 (list!18771 (xs!18758 (c!859158 totalInput!1141)))) 512))))

(assert (=> d!1617244 (= (inv!76669 (c!859158 totalInput!1141)) e!3139232)))

(declare-fun b!5025131 () Bool)

(declare-fun res!2142507 () Bool)

(assert (=> b!5025131 (=> (not res!2142507) (not e!3139232))))

(assert (=> b!5025131 (= res!2142507 (= (csize!31095 (c!859158 totalInput!1141)) (size!38694 (list!18771 (xs!18758 (c!859158 totalInput!1141))))))))

(declare-fun b!5025132 () Bool)

(assert (=> b!5025132 (= e!3139232 (and (> (csize!31095 (c!859158 totalInput!1141)) 0) (<= (csize!31095 (c!859158 totalInput!1141)) 512)))))

(assert (= (and d!1617244 res!2142506) b!5025131))

(assert (= (and b!5025131 res!2142507) b!5025132))

(declare-fun m!6060474 () Bool)

(assert (=> d!1617244 m!6060474))

(assert (=> d!1617244 m!6060474))

(declare-fun m!6060476 () Bool)

(assert (=> d!1617244 m!6060476))

(assert (=> b!5025131 m!6060474))

(assert (=> b!5025131 m!6060474))

(assert (=> b!5025131 m!6060476))

(assert (=> b!5025007 d!1617244))

(declare-fun d!1617246 () Bool)

(declare-fun res!2142514 () Bool)

(declare-fun e!3139236 () Bool)

(assert (=> d!1617246 (=> (not res!2142514) (not e!3139236))))

(assert (=> d!1617246 (= res!2142514 (= (csize!31094 (c!859158 totalInput!1141)) (+ (size!38696 (left!42527 (c!859158 totalInput!1141))) (size!38696 (right!42857 (c!859158 totalInput!1141))))))))

(assert (=> d!1617246 (= (inv!76668 (c!859158 totalInput!1141)) e!3139236)))

(declare-fun b!5025141 () Bool)

(declare-fun res!2142515 () Bool)

(assert (=> b!5025141 (=> (not res!2142515) (not e!3139236))))

(assert (=> b!5025141 (= res!2142515 (and (not (= (left!42527 (c!859158 totalInput!1141)) Empty!15432)) (not (= (right!42857 (c!859158 totalInput!1141)) Empty!15432))))))

(declare-fun b!5025142 () Bool)

(declare-fun res!2142516 () Bool)

(assert (=> b!5025142 (=> (not res!2142516) (not e!3139236))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2043 (Conc!15432) Int)

(assert (=> b!5025142 (= res!2142516 (= (cheight!15643 (c!859158 totalInput!1141)) (+ (max!0 (height!2043 (left!42527 (c!859158 totalInput!1141))) (height!2043 (right!42857 (c!859158 totalInput!1141)))) 1)))))

(declare-fun b!5025143 () Bool)

(assert (=> b!5025143 (= e!3139236 (<= 0 (cheight!15643 (c!859158 totalInput!1141))))))

(assert (= (and d!1617246 res!2142514) b!5025141))

(assert (= (and b!5025141 res!2142515) b!5025142))

(assert (= (and b!5025142 res!2142516) b!5025143))

(declare-fun m!6060482 () Bool)

(assert (=> d!1617246 m!6060482))

(declare-fun m!6060484 () Bool)

(assert (=> d!1617246 m!6060484))

(declare-fun m!6060488 () Bool)

(assert (=> b!5025142 m!6060488))

(declare-fun m!6060490 () Bool)

(assert (=> b!5025142 m!6060490))

(assert (=> b!5025142 m!6060488))

(assert (=> b!5025142 m!6060490))

(declare-fun m!6060494 () Bool)

(assert (=> b!5025142 m!6060494))

(assert (=> b!5025005 d!1617246))

(declare-fun d!1617254 () Bool)

(declare-fun lt!2079927 () Int)

(assert (=> d!1617254 (>= lt!2079927 0)))

(declare-fun e!3139239 () Int)

(assert (=> d!1617254 (= lt!2079927 e!3139239)))

(declare-fun c!859338 () Bool)

(assert (=> d!1617254 (= c!859338 ((_ is Nil!58151) (drop!2564 lt!2079779 from!1228)))))

(assert (=> d!1617254 (= (size!38694 (drop!2564 lt!2079779 from!1228)) lt!2079927)))

(declare-fun b!5025148 () Bool)

(assert (=> b!5025148 (= e!3139239 0)))

(declare-fun b!5025149 () Bool)

(assert (=> b!5025149 (= e!3139239 (+ 1 (size!38694 (t!370667 (drop!2564 lt!2079779 from!1228)))))))

(assert (= (and d!1617254 c!859338) b!5025148))

(assert (= (and d!1617254 (not c!859338)) b!5025149))

(declare-fun m!6060496 () Bool)

(assert (=> b!5025149 m!6060496))

(assert (=> b!5024935 d!1617254))

(declare-fun d!1617256 () Bool)

(assert (=> d!1617256 (= (isEmpty!31443 (getLanguageWitness!735 z!4747)) (not ((_ is Some!14597) (getLanguageWitness!735 z!4747))))))

(assert (=> d!1617098 d!1617256))

(declare-fun bs!1187777 () Bool)

(declare-fun d!1617260 () Bool)

(assert (= bs!1187777 (and d!1617260 b!5024916)))

(declare-fun lambda!249153 () Int)

(assert (=> bs!1187777 (= lambda!249153 lambda!249127)))

(declare-fun bs!1187778 () Bool)

(assert (= bs!1187778 (and d!1617260 d!1617220)))

(assert (=> bs!1187778 (not (= lambda!249153 lambda!249146))))

(declare-fun bs!1187779 () Bool)

(assert (= bs!1187779 (and d!1617260 d!1617218)))

(assert (=> bs!1187779 (not (= lambda!249153 lambda!249143))))

(declare-fun bs!1187780 () Bool)

(assert (= bs!1187780 (and d!1617260 d!1617098)))

(assert (=> bs!1187780 (not (= lambda!249153 lambda!249126))))

(declare-fun bs!1187781 () Bool)

(assert (= bs!1187781 (and d!1617260 d!1617186)))

(assert (=> bs!1187781 (not (= lambda!249153 lambda!249139))))

(declare-fun bs!1187782 () Bool)

(assert (= bs!1187782 (and d!1617260 b!5024917)))

(assert (=> bs!1187782 (= lambda!249153 lambda!249128)))

(declare-fun lt!2079933 () Option!14598)

(declare-fun isDefined!11492 (Option!14598) Bool)

(assert (=> d!1617260 (= (isDefined!11492 lt!2079933) (exists!1390 z!4747 lambda!249153))))

(declare-fun e!3139245 () Option!14598)

(assert (=> d!1617260 (= lt!2079933 e!3139245)))

(declare-fun c!859347 () Bool)

(assert (=> d!1617260 (= c!859347 (exists!1390 z!4747 lambda!249153))))

(assert (=> d!1617260 (= (getLanguageWitness!735 z!4747) lt!2079933)))

(declare-fun b!5025157 () Bool)

(declare-fun getLanguageWitness!737 (Context!6676) Option!14598)

(declare-fun getWitness!660 ((InoxSet Context!6676) Int) Context!6676)

(assert (=> b!5025157 (= e!3139245 (getLanguageWitness!737 (getWitness!660 z!4747 lambda!249153)))))

(declare-fun b!5025158 () Bool)

(assert (=> b!5025158 (= e!3139245 None!14597)))

(assert (= (and d!1617260 c!859347) b!5025157))

(assert (= (and d!1617260 (not c!859347)) b!5025158))

(declare-fun m!6060510 () Bool)

(assert (=> d!1617260 m!6060510))

(declare-fun m!6060512 () Bool)

(assert (=> d!1617260 m!6060512))

(assert (=> d!1617260 m!6060512))

(declare-fun m!6060514 () Bool)

(assert (=> b!5025157 m!6060514))

(assert (=> b!5025157 m!6060514))

(declare-fun m!6060516 () Bool)

(assert (=> b!5025157 m!6060516))

(assert (=> d!1617098 d!1617260))

(declare-fun d!1617266 () Bool)

(declare-fun lt!2079938 () Bool)

(assert (=> d!1617266 (= lt!2079938 (forall!13423 (toList!8119 z!4747) lambda!249126))))

(declare-fun choose!37176 ((InoxSet Context!6676) Int) Bool)

(assert (=> d!1617266 (= lt!2079938 (choose!37176 z!4747 lambda!249126))))

(assert (=> d!1617266 (= (forall!13419 z!4747 lambda!249126) lt!2079938)))

(declare-fun bs!1187783 () Bool)

(assert (= bs!1187783 d!1617266))

(assert (=> bs!1187783 m!6060214))

(assert (=> bs!1187783 m!6060214))

(declare-fun m!6060518 () Bool)

(assert (=> bs!1187783 m!6060518))

(declare-fun m!6060520 () Bool)

(assert (=> bs!1187783 m!6060520))

(assert (=> d!1617098 d!1617266))

(declare-fun d!1617268 () Bool)

(declare-fun lt!2079939 () Int)

(assert (=> d!1617268 (>= lt!2079939 0)))

(declare-fun e!3139248 () Int)

(assert (=> d!1617268 (= lt!2079939 e!3139248)))

(declare-fun c!859348 () Bool)

(assert (=> d!1617268 (= c!859348 ((_ is Nil!58151) lt!2079797))))

(assert (=> d!1617268 (= (size!38694 lt!2079797) lt!2079939)))

(declare-fun b!5025159 () Bool)

(assert (=> b!5025159 (= e!3139248 0)))

(declare-fun b!5025160 () Bool)

(assert (=> b!5025160 (= e!3139248 (+ 1 (size!38694 (t!370667 lt!2079797))))))

(assert (= (and d!1617268 c!859348) b!5025159))

(assert (= (and d!1617268 (not c!859348)) b!5025160))

(declare-fun m!6060522 () Bool)

(assert (=> b!5025160 m!6060522))

(assert (=> b!5024768 d!1617268))

(assert (=> b!5024931 d!1617206))

(declare-fun d!1617270 () Bool)

(declare-fun choose!37177 ((InoxSet Context!6676) Int) (InoxSet Context!6676))

(assert (=> d!1617270 (= (flatMap!300 z!4747 lambda!249134) (choose!37177 z!4747 lambda!249134))))

(declare-fun bs!1187784 () Bool)

(assert (= bs!1187784 d!1617270))

(declare-fun m!6060524 () Bool)

(assert (=> bs!1187784 m!6060524))

(assert (=> d!1617150 d!1617270))

(declare-fun d!1617272 () Bool)

(declare-fun lt!2079941 () Int)

(assert (=> d!1617272 (>= lt!2079941 0)))

(declare-fun e!3139249 () Int)

(assert (=> d!1617272 (= lt!2079941 e!3139249)))

(declare-fun c!859349 () Bool)

(assert (=> d!1617272 (= c!859349 ((_ is Nil!58151) lt!2079788))))

(assert (=> d!1617272 (= (size!38694 lt!2079788) lt!2079941)))

(declare-fun b!5025163 () Bool)

(assert (=> b!5025163 (= e!3139249 0)))

(declare-fun b!5025164 () Bool)

(assert (=> b!5025164 (= e!3139249 (+ 1 (size!38694 (t!370667 lt!2079788))))))

(assert (= (and d!1617272 c!859349) b!5025163))

(assert (= (and d!1617272 (not c!859349)) b!5025164))

(declare-fun m!6060526 () Bool)

(assert (=> b!5025164 m!6060526))

(assert (=> b!5024720 d!1617272))

(assert (=> bm!350706 d!1617206))

(declare-fun d!1617274 () Bool)

(declare-fun res!2142536 () Bool)

(declare-fun e!3139256 () Bool)

(assert (=> d!1617274 (=> res!2142536 e!3139256)))

(assert (=> d!1617274 (= res!2142536 (not ((_ is Node!15432) (c!859158 totalInput!1141))))))

(assert (=> d!1617274 (= (isBalanced!4302 (c!859158 totalInput!1141)) e!3139256)))

(declare-fun b!5025179 () Bool)

(declare-fun res!2142537 () Bool)

(declare-fun e!3139255 () Bool)

(assert (=> b!5025179 (=> (not res!2142537) (not e!3139255))))

(assert (=> b!5025179 (= res!2142537 (isBalanced!4302 (left!42527 (c!859158 totalInput!1141))))))

(declare-fun b!5025180 () Bool)

(declare-fun res!2142533 () Bool)

(assert (=> b!5025180 (=> (not res!2142533) (not e!3139255))))

(assert (=> b!5025180 (= res!2142533 (<= (- (height!2043 (left!42527 (c!859158 totalInput!1141))) (height!2043 (right!42857 (c!859158 totalInput!1141)))) 1))))

(declare-fun b!5025181 () Bool)

(declare-fun isEmpty!31445 (Conc!15432) Bool)

(assert (=> b!5025181 (= e!3139255 (not (isEmpty!31445 (right!42857 (c!859158 totalInput!1141)))))))

(declare-fun b!5025182 () Bool)

(declare-fun res!2142534 () Bool)

(assert (=> b!5025182 (=> (not res!2142534) (not e!3139255))))

(assert (=> b!5025182 (= res!2142534 (not (isEmpty!31445 (left!42527 (c!859158 totalInput!1141)))))))

(declare-fun b!5025183 () Bool)

(declare-fun res!2142535 () Bool)

(assert (=> b!5025183 (=> (not res!2142535) (not e!3139255))))

(assert (=> b!5025183 (= res!2142535 (isBalanced!4302 (right!42857 (c!859158 totalInput!1141))))))

(declare-fun b!5025184 () Bool)

(assert (=> b!5025184 (= e!3139256 e!3139255)))

(declare-fun res!2142532 () Bool)

(assert (=> b!5025184 (=> (not res!2142532) (not e!3139255))))

(assert (=> b!5025184 (= res!2142532 (<= (- 1) (- (height!2043 (left!42527 (c!859158 totalInput!1141))) (height!2043 (right!42857 (c!859158 totalInput!1141))))))))

(assert (= (and d!1617274 (not res!2142536)) b!5025184))

(assert (= (and b!5025184 res!2142532) b!5025180))

(assert (= (and b!5025180 res!2142533) b!5025179))

(assert (= (and b!5025179 res!2142537) b!5025183))

(assert (= (and b!5025183 res!2142535) b!5025182))

(assert (= (and b!5025182 res!2142534) b!5025181))

(declare-fun m!6060536 () Bool)

(assert (=> b!5025182 m!6060536))

(declare-fun m!6060538 () Bool)

(assert (=> b!5025181 m!6060538))

(assert (=> b!5025180 m!6060488))

(assert (=> b!5025180 m!6060490))

(assert (=> b!5025184 m!6060488))

(assert (=> b!5025184 m!6060490))

(declare-fun m!6060540 () Bool)

(assert (=> b!5025183 m!6060540))

(declare-fun m!6060542 () Bool)

(assert (=> b!5025179 m!6060542))

(assert (=> d!1617162 d!1617274))

(declare-fun d!1617282 () Bool)

(declare-fun e!3139260 () Bool)

(assert (=> d!1617282 e!3139260))

(declare-fun res!2142538 () Bool)

(assert (=> d!1617282 (=> (not res!2142538) (not e!3139260))))

(declare-fun lt!2079943 () List!58275)

(assert (=> d!1617282 (= res!2142538 (= ((_ map implies) (content!10301 lt!2079943) (content!10301 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139259 () List!58275)

(assert (=> d!1617282 (= lt!2079943 e!3139259)))

(declare-fun c!859354 () Bool)

(assert (=> d!1617282 (= c!859354 (or ((_ is Nil!58151) (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))) (<= (- lt!2079782 1) 0)))))

(assert (=> d!1617282 (= (take!764 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) (- lt!2079782 1)) lt!2079943)))

(declare-fun b!5025185 () Bool)

(assert (=> b!5025185 (= e!3139259 Nil!58151)))

(declare-fun b!5025186 () Bool)

(declare-fun e!3139258 () Int)

(declare-fun e!3139257 () Int)

(assert (=> b!5025186 (= e!3139258 e!3139257)))

(declare-fun c!859353 () Bool)

(assert (=> b!5025186 (= c!859353 (>= (- lt!2079782 1) (size!38694 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))))

(declare-fun b!5025187 () Bool)

(assert (=> b!5025187 (= e!3139257 (- lt!2079782 1))))

(declare-fun b!5025188 () Bool)

(assert (=> b!5025188 (= e!3139257 (size!38694 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5025189 () Bool)

(assert (=> b!5025189 (= e!3139259 (Cons!58151 (h!64599 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))) (take!764 (t!370667 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)))) (- (- lt!2079782 1) 1))))))

(declare-fun b!5025190 () Bool)

(assert (=> b!5025190 (= e!3139258 0)))

(declare-fun b!5025191 () Bool)

(assert (=> b!5025191 (= e!3139260 (= (size!38694 lt!2079943) e!3139258))))

(declare-fun c!859355 () Bool)

(assert (=> b!5025191 (= c!859355 (<= (- lt!2079782 1) 0))))

(assert (= (and d!1617282 c!859354) b!5025185))

(assert (= (and d!1617282 (not c!859354)) b!5025189))

(assert (= (and d!1617282 res!2142538) b!5025191))

(assert (= (and b!5025191 c!859355) b!5025190))

(assert (= (and b!5025191 (not c!859355)) b!5025186))

(assert (= (and b!5025186 c!859353) b!5025188))

(assert (= (and b!5025186 (not c!859353)) b!5025187))

(declare-fun m!6060544 () Bool)

(assert (=> b!5025189 m!6060544))

(declare-fun m!6060546 () Bool)

(assert (=> d!1617282 m!6060546))

(declare-fun m!6060548 () Bool)

(assert (=> d!1617282 m!6060548))

(assert (=> b!5025186 m!6060354))

(assert (=> b!5025188 m!6060354))

(declare-fun m!6060550 () Bool)

(assert (=> b!5025191 m!6060550))

(assert (=> b!5024718 d!1617282))

(declare-fun b!5025192 () Bool)

(declare-fun e!3139264 () List!58275)

(assert (=> b!5025192 (= e!3139264 (t!370667 lt!2079779))))

(declare-fun b!5025193 () Bool)

(assert (=> b!5025193 (= e!3139264 (drop!2564 (t!370667 (t!370667 lt!2079779)) (- (- (+ 1 from!1228) 1) 1)))))

(declare-fun b!5025194 () Bool)

(declare-fun e!3139265 () List!58275)

(assert (=> b!5025194 (= e!3139265 e!3139264)))

(declare-fun c!859358 () Bool)

(assert (=> b!5025194 (= c!859358 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun bm!350709 () Bool)

(declare-fun call!350714 () Int)

(assert (=> bm!350709 (= call!350714 (size!38694 (t!370667 lt!2079779)))))

(declare-fun b!5025195 () Bool)

(declare-fun e!3139263 () Int)

(assert (=> b!5025195 (= e!3139263 (- call!350714 (- (+ 1 from!1228) 1)))))

(declare-fun b!5025196 () Bool)

(assert (=> b!5025196 (= e!3139263 0)))

(declare-fun b!5025197 () Bool)

(declare-fun e!3139262 () Bool)

(declare-fun lt!2079944 () List!58275)

(declare-fun e!3139261 () Int)

(assert (=> b!5025197 (= e!3139262 (= (size!38694 lt!2079944) e!3139261))))

(declare-fun c!859359 () Bool)

(assert (=> b!5025197 (= c!859359 (<= (- (+ 1 from!1228) 1) 0))))

(declare-fun b!5025198 () Bool)

(assert (=> b!5025198 (= e!3139261 call!350714)))

(declare-fun d!1617284 () Bool)

(assert (=> d!1617284 e!3139262))

(declare-fun res!2142539 () Bool)

(assert (=> d!1617284 (=> (not res!2142539) (not e!3139262))))

(assert (=> d!1617284 (= res!2142539 (= ((_ map implies) (content!10301 lt!2079944) (content!10301 (t!370667 lt!2079779))) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617284 (= lt!2079944 e!3139265)))

(declare-fun c!859357 () Bool)

(assert (=> d!1617284 (= c!859357 ((_ is Nil!58151) (t!370667 lt!2079779)))))

(assert (=> d!1617284 (= (drop!2564 (t!370667 lt!2079779) (- (+ 1 from!1228) 1)) lt!2079944)))

(declare-fun b!5025199 () Bool)

(assert (=> b!5025199 (= e!3139261 e!3139263)))

(declare-fun c!859356 () Bool)

(assert (=> b!5025199 (= c!859356 (>= (- (+ 1 from!1228) 1) call!350714))))

(declare-fun b!5025200 () Bool)

(assert (=> b!5025200 (= e!3139265 Nil!58151)))

(assert (= (and d!1617284 c!859357) b!5025200))

(assert (= (and d!1617284 (not c!859357)) b!5025194))

(assert (= (and b!5025194 c!859358) b!5025192))

(assert (= (and b!5025194 (not c!859358)) b!5025193))

(assert (= (and d!1617284 res!2142539) b!5025197))

(assert (= (and b!5025197 c!859359) b!5025198))

(assert (= (and b!5025197 (not c!859359)) b!5025199))

(assert (= (and b!5025199 c!859356) b!5025196))

(assert (= (and b!5025199 (not c!859356)) b!5025195))

(assert (= (or b!5025198 b!5025199 b!5025195) bm!350709))

(declare-fun m!6060554 () Bool)

(assert (=> b!5025193 m!6060554))

(assert (=> bm!350709 m!6060420))

(declare-fun m!6060556 () Bool)

(assert (=> b!5025197 m!6060556))

(declare-fun m!6060558 () Bool)

(assert (=> d!1617284 m!6060558))

(assert (=> d!1617284 m!6060434))

(assert (=> b!5024949 d!1617284))

(assert (=> b!5024689 d!1617186))

(assert (=> b!5024933 d!1617254))

(declare-fun d!1617288 () Bool)

(declare-fun c!859360 () Bool)

(assert (=> d!1617288 (= c!859360 ((_ is Nil!58151) lt!2079878))))

(declare-fun e!3139266 () (InoxSet C!28076))

(assert (=> d!1617288 (= (content!10301 lt!2079878) e!3139266)))

(declare-fun b!5025201 () Bool)

(assert (=> b!5025201 (= e!3139266 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025202 () Bool)

(assert (=> b!5025202 (= e!3139266 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079878) true) (content!10301 (t!370667 lt!2079878))))))

(assert (= (and d!1617288 c!859360) b!5025201))

(assert (= (and d!1617288 (not c!859360)) b!5025202))

(declare-fun m!6060560 () Bool)

(assert (=> b!5025202 m!6060560))

(declare-fun m!6060562 () Bool)

(assert (=> b!5025202 m!6060562))

(assert (=> d!1617144 d!1617288))

(declare-fun d!1617290 () Bool)

(declare-fun c!859365 () Bool)

(assert (=> d!1617290 (= c!859365 ((_ is Nil!58151) lt!2079779))))

(declare-fun e!3139272 () (InoxSet C!28076))

(assert (=> d!1617290 (= (content!10301 lt!2079779) e!3139272)))

(declare-fun b!5025212 () Bool)

(assert (=> b!5025212 (= e!3139272 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025213 () Bool)

(assert (=> b!5025213 (= e!3139272 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079779) true) (content!10301 (t!370667 lt!2079779))))))

(assert (= (and d!1617290 c!859365) b!5025212))

(assert (= (and d!1617290 (not c!859365)) b!5025213))

(declare-fun m!6060564 () Bool)

(assert (=> b!5025213 m!6060564))

(assert (=> b!5025213 m!6060434))

(assert (=> d!1617144 d!1617290))

(declare-fun d!1617292 () Bool)

(declare-fun c!859375 () Bool)

(assert (=> d!1617292 (= c!859375 ((_ is Empty!15432) (c!859158 totalInput!1141)))))

(declare-fun e!3139283 () List!58275)

(assert (=> d!1617292 (= (list!18770 (c!859158 totalInput!1141)) e!3139283)))

(declare-fun b!5025233 () Bool)

(assert (=> b!5025233 (= e!3139283 Nil!58151)))

(declare-fun b!5025236 () Bool)

(declare-fun e!3139284 () List!58275)

(declare-fun ++!12671 (List!58275 List!58275) List!58275)

(assert (=> b!5025236 (= e!3139284 (++!12671 (list!18770 (left!42527 (c!859158 totalInput!1141))) (list!18770 (right!42857 (c!859158 totalInput!1141)))))))

(declare-fun b!5025235 () Bool)

(assert (=> b!5025235 (= e!3139284 (list!18771 (xs!18758 (c!859158 totalInput!1141))))))

(declare-fun b!5025234 () Bool)

(assert (=> b!5025234 (= e!3139283 e!3139284)))

(declare-fun c!859376 () Bool)

(assert (=> b!5025234 (= c!859376 ((_ is Leaf!25602) (c!859158 totalInput!1141)))))

(assert (= (and d!1617292 c!859375) b!5025233))

(assert (= (and d!1617292 (not c!859375)) b!5025234))

(assert (= (and b!5025234 c!859376) b!5025235))

(assert (= (and b!5025234 (not c!859376)) b!5025236))

(declare-fun m!6060590 () Bool)

(assert (=> b!5025236 m!6060590))

(declare-fun m!6060592 () Bool)

(assert (=> b!5025236 m!6060592))

(assert (=> b!5025236 m!6060590))

(assert (=> b!5025236 m!6060592))

(declare-fun m!6060594 () Bool)

(assert (=> b!5025236 m!6060594))

(assert (=> b!5025235 m!6060474))

(assert (=> d!1617096 d!1617292))

(declare-fun bs!1187794 () Bool)

(declare-fun d!1617302 () Bool)

(assert (= bs!1187794 (and d!1617302 b!5024916)))

(declare-fun lambda!249160 () Int)

(assert (=> bs!1187794 (not (= lambda!249160 lambda!249127))))

(declare-fun bs!1187795 () Bool)

(assert (= bs!1187795 (and d!1617302 d!1617220)))

(assert (=> bs!1187795 (not (= lambda!249160 lambda!249146))))

(declare-fun bs!1187796 () Bool)

(assert (= bs!1187796 (and d!1617302 d!1617218)))

(assert (=> bs!1187796 (not (= lambda!249160 lambda!249143))))

(declare-fun bs!1187797 () Bool)

(assert (= bs!1187797 (and d!1617302 d!1617260)))

(assert (=> bs!1187797 (not (= lambda!249160 lambda!249153))))

(declare-fun bs!1187798 () Bool)

(assert (= bs!1187798 (and d!1617302 d!1617098)))

(assert (=> bs!1187798 (= lambda!249160 lambda!249126)))

(declare-fun bs!1187799 () Bool)

(assert (= bs!1187799 (and d!1617302 d!1617186)))

(assert (=> bs!1187799 (not (= lambda!249160 lambda!249139))))

(declare-fun bs!1187800 () Bool)

(assert (= bs!1187800 (and d!1617302 b!5024917)))

(assert (=> bs!1187800 (not (= lambda!249160 lambda!249128))))

(declare-fun bs!1187801 () Bool)

(declare-fun b!5025237 () Bool)

(assert (= bs!1187801 (and b!5025237 b!5024916)))

(declare-fun lambda!249161 () Int)

(assert (=> bs!1187801 (= lambda!249161 lambda!249127)))

(declare-fun bs!1187802 () Bool)

(assert (= bs!1187802 (and b!5025237 d!1617220)))

(assert (=> bs!1187802 (not (= lambda!249161 lambda!249146))))

(declare-fun bs!1187803 () Bool)

(assert (= bs!1187803 (and b!5025237 d!1617260)))

(assert (=> bs!1187803 (= lambda!249161 lambda!249153)))

(declare-fun bs!1187804 () Bool)

(assert (= bs!1187804 (and b!5025237 d!1617098)))

(assert (=> bs!1187804 (not (= lambda!249161 lambda!249126))))

(declare-fun bs!1187805 () Bool)

(assert (= bs!1187805 (and b!5025237 d!1617186)))

(assert (=> bs!1187805 (not (= lambda!249161 lambda!249139))))

(declare-fun bs!1187806 () Bool)

(assert (= bs!1187806 (and b!5025237 b!5024917)))

(assert (=> bs!1187806 (= lambda!249161 lambda!249128)))

(declare-fun bs!1187807 () Bool)

(assert (= bs!1187807 (and b!5025237 d!1617218)))

(assert (=> bs!1187807 (not (= lambda!249161 lambda!249143))))

(declare-fun bs!1187808 () Bool)

(assert (= bs!1187808 (and b!5025237 d!1617302)))

(assert (=> bs!1187808 (not (= lambda!249161 lambda!249160))))

(declare-fun bs!1187809 () Bool)

(declare-fun b!5025238 () Bool)

(assert (= bs!1187809 (and b!5025238 b!5024916)))

(declare-fun lambda!249162 () Int)

(assert (=> bs!1187809 (= lambda!249162 lambda!249127)))

(declare-fun bs!1187810 () Bool)

(assert (= bs!1187810 (and b!5025238 d!1617220)))

(assert (=> bs!1187810 (not (= lambda!249162 lambda!249146))))

(declare-fun bs!1187811 () Bool)

(assert (= bs!1187811 (and b!5025238 b!5025237)))

(assert (=> bs!1187811 (= lambda!249162 lambda!249161)))

(declare-fun bs!1187812 () Bool)

(assert (= bs!1187812 (and b!5025238 d!1617260)))

(assert (=> bs!1187812 (= lambda!249162 lambda!249153)))

(declare-fun bs!1187813 () Bool)

(assert (= bs!1187813 (and b!5025238 d!1617098)))

(assert (=> bs!1187813 (not (= lambda!249162 lambda!249126))))

(declare-fun bs!1187814 () Bool)

(assert (= bs!1187814 (and b!5025238 d!1617186)))

(assert (=> bs!1187814 (not (= lambda!249162 lambda!249139))))

(declare-fun bs!1187815 () Bool)

(assert (= bs!1187815 (and b!5025238 b!5024917)))

(assert (=> bs!1187815 (= lambda!249162 lambda!249128)))

(declare-fun bs!1187816 () Bool)

(assert (= bs!1187816 (and b!5025238 d!1617218)))

(assert (=> bs!1187816 (not (= lambda!249162 lambda!249143))))

(declare-fun bs!1187817 () Bool)

(assert (= bs!1187817 (and b!5025238 d!1617302)))

(assert (=> bs!1187817 (not (= lambda!249162 lambda!249160))))

(declare-fun lt!2079954 () List!58276)

(declare-fun bm!350712 () Bool)

(declare-fun c!859377 () Bool)

(declare-fun call!350716 () Bool)

(declare-fun lt!2079951 () List!58276)

(assert (=> bm!350712 (= call!350716 (exists!1388 (ite c!859377 lt!2079954 lt!2079951) (ite c!859377 lambda!249161 lambda!249162)))))

(declare-fun e!3139285 () Unit!149335)

(declare-fun Unit!149341 () Unit!149335)

(assert (=> b!5025238 (= e!3139285 Unit!149341)))

(declare-fun call!350717 () List!58276)

(assert (=> b!5025238 (= lt!2079951 call!350717)))

(declare-fun lt!2079947 () Unit!149335)

(assert (=> b!5025238 (= lt!2079947 (lemmaForallThenNotExists!251 lt!2079951 lambda!249160))))

(assert (=> b!5025238 (not call!350716)))

(declare-fun lt!2079952 () Unit!149335)

(assert (=> b!5025238 (= lt!2079952 lt!2079947)))

(declare-fun bm!350711 () Bool)

(assert (=> bm!350711 (= call!350717 (toList!8119 lt!2079777))))

(declare-fun Unit!149342 () Unit!149335)

(assert (=> b!5025237 (= e!3139285 Unit!149342)))

(assert (=> b!5025237 (= lt!2079954 call!350717)))

(declare-fun lt!2079950 () Unit!149335)

(assert (=> b!5025237 (= lt!2079950 (lemmaNotForallThenExists!268 lt!2079954 lambda!249160))))

(assert (=> b!5025237 call!350716))

(declare-fun lt!2079953 () Unit!149335)

(assert (=> b!5025237 (= lt!2079953 lt!2079950)))

(declare-fun lt!2079949 () Bool)

(assert (=> d!1617302 (= lt!2079949 (isEmpty!31443 (getLanguageWitness!735 lt!2079777)))))

(assert (=> d!1617302 (= lt!2079949 (forall!13419 lt!2079777 lambda!249160))))

(declare-fun lt!2079948 () Unit!149335)

(assert (=> d!1617302 (= lt!2079948 e!3139285)))

(assert (=> d!1617302 (= c!859377 (not (forall!13419 lt!2079777 lambda!249160)))))

(assert (=> d!1617302 (= (lostCauseZipper!927 lt!2079777) lt!2079949)))

(assert (= (and d!1617302 c!859377) b!5025237))

(assert (= (and d!1617302 (not c!859377)) b!5025238))

(assert (= (or b!5025237 b!5025238) bm!350711))

(assert (= (or b!5025237 b!5025238) bm!350712))

(declare-fun m!6060596 () Bool)

(assert (=> d!1617302 m!6060596))

(assert (=> d!1617302 m!6060596))

(declare-fun m!6060598 () Bool)

(assert (=> d!1617302 m!6060598))

(declare-fun m!6060600 () Bool)

(assert (=> d!1617302 m!6060600))

(assert (=> d!1617302 m!6060600))

(declare-fun m!6060602 () Bool)

(assert (=> bm!350711 m!6060602))

(declare-fun m!6060604 () Bool)

(assert (=> b!5025238 m!6060604))

(declare-fun m!6060606 () Bool)

(assert (=> b!5025237 m!6060606))

(declare-fun m!6060608 () Bool)

(assert (=> bm!350712 m!6060608))

(assert (=> b!5024989 d!1617302))

(declare-fun d!1617304 () Bool)

(declare-fun c!859378 () Bool)

(assert (=> d!1617304 (= c!859378 ((_ is Nil!58151) lt!2079788))))

(declare-fun e!3139289 () (InoxSet C!28076))

(assert (=> d!1617304 (= (content!10301 lt!2079788) e!3139289)))

(declare-fun b!5025245 () Bool)

(assert (=> b!5025245 (= e!3139289 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025246 () Bool)

(assert (=> b!5025246 (= e!3139289 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079788) true) (content!10301 (t!370667 lt!2079788))))))

(assert (= (and d!1617304 c!859378) b!5025245))

(assert (= (and d!1617304 (not c!859378)) b!5025246))

(declare-fun m!6060610 () Bool)

(assert (=> b!5025246 m!6060610))

(declare-fun m!6060612 () Bool)

(assert (=> b!5025246 m!6060612))

(assert (=> d!1617084 d!1617304))

(declare-fun d!1617306 () Bool)

(declare-fun c!859379 () Bool)

(assert (=> d!1617306 (= c!859379 ((_ is Nil!58151) (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))

(declare-fun e!3139290 () (InoxSet C!28076))

(assert (=> d!1617306 (= (content!10301 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) e!3139290)))

(declare-fun b!5025247 () Bool)

(assert (=> b!5025247 (= e!3139290 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025248 () Bool)

(assert (=> b!5025248 (= e!3139290 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))) true) (content!10301 (t!370667 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228))))))))

(assert (= (and d!1617306 c!859379) b!5025247))

(assert (= (and d!1617306 (not c!859379)) b!5025248))

(declare-fun m!6060618 () Bool)

(assert (=> b!5025248 m!6060618))

(assert (=> b!5025248 m!6060548))

(assert (=> d!1617084 d!1617306))

(declare-fun bs!1187818 () Bool)

(declare-fun d!1617308 () Bool)

(assert (= bs!1187818 (and d!1617308 b!5024916)))

(declare-fun lambda!249163 () Int)

(assert (=> bs!1187818 (not (= lambda!249163 lambda!249127))))

(declare-fun bs!1187819 () Bool)

(assert (= bs!1187819 (and d!1617308 d!1617220)))

(assert (=> bs!1187819 (not (= lambda!249163 lambda!249146))))

(declare-fun bs!1187820 () Bool)

(assert (= bs!1187820 (and d!1617308 b!5025237)))

(assert (=> bs!1187820 (not (= lambda!249163 lambda!249161))))

(declare-fun bs!1187821 () Bool)

(assert (= bs!1187821 (and d!1617308 d!1617260)))

(assert (=> bs!1187821 (not (= lambda!249163 lambda!249153))))

(declare-fun bs!1187822 () Bool)

(assert (= bs!1187822 (and d!1617308 d!1617098)))

(assert (=> bs!1187822 (not (= lambda!249163 lambda!249126))))

(declare-fun bs!1187823 () Bool)

(assert (= bs!1187823 (and d!1617308 d!1617186)))

(assert (=> bs!1187823 (= lambda!249163 lambda!249139)))

(declare-fun bs!1187824 () Bool)

(assert (= bs!1187824 (and d!1617308 b!5024917)))

(assert (=> bs!1187824 (not (= lambda!249163 lambda!249128))))

(declare-fun bs!1187825 () Bool)

(assert (= bs!1187825 (and d!1617308 d!1617218)))

(assert (=> bs!1187825 (not (= lambda!249163 lambda!249143))))

(declare-fun bs!1187826 () Bool)

(assert (= bs!1187826 (and d!1617308 d!1617302)))

(assert (=> bs!1187826 (not (= lambda!249163 lambda!249160))))

(declare-fun bs!1187827 () Bool)

(assert (= bs!1187827 (and d!1617308 b!5025238)))

(assert (=> bs!1187827 (not (= lambda!249163 lambda!249162))))

(assert (=> d!1617308 (= (nullableZipper!926 lt!2079888) (exists!1390 lt!2079888 lambda!249163))))

(declare-fun bs!1187828 () Bool)

(assert (= bs!1187828 d!1617308))

(declare-fun m!6060620 () Bool)

(assert (=> bs!1187828 m!6060620))

(assert (=> b!5024987 d!1617308))

(declare-fun d!1617312 () Bool)

(declare-fun lt!2079958 () Int)

(assert (=> d!1617312 (>= lt!2079958 0)))

(declare-fun e!3139296 () Int)

(assert (=> d!1617312 (= lt!2079958 e!3139296)))

(declare-fun c!859383 () Bool)

(assert (=> d!1617312 (= c!859383 ((_ is Nil!58151) lt!2079878))))

(assert (=> d!1617312 (= (size!38694 lt!2079878) lt!2079958)))

(declare-fun b!5025257 () Bool)

(assert (=> b!5025257 (= e!3139296 0)))

(declare-fun b!5025258 () Bool)

(assert (=> b!5025258 (= e!3139296 (+ 1 (size!38694 (t!370667 lt!2079878))))))

(assert (= (and d!1617312 c!859383) b!5025257))

(assert (= (and d!1617312 (not c!859383)) b!5025258))

(declare-fun m!6060622 () Bool)

(assert (=> b!5025258 m!6060622))

(assert (=> b!5024944 d!1617312))

(declare-fun d!1617314 () Bool)

(declare-fun c!859384 () Bool)

(assert (=> d!1617314 (= c!859384 (isEmpty!31442 (tail!9907 lt!2079780)))))

(declare-fun e!3139297 () Bool)

(assert (=> d!1617314 (= (matchZipper!667 (derivationStepZipper!709 lt!2079777 (head!10774 lt!2079780)) (tail!9907 lt!2079780)) e!3139297)))

(declare-fun b!5025259 () Bool)

(assert (=> b!5025259 (= e!3139297 (nullableZipper!926 (derivationStepZipper!709 lt!2079777 (head!10774 lt!2079780))))))

(declare-fun b!5025260 () Bool)

(assert (=> b!5025260 (= e!3139297 (matchZipper!667 (derivationStepZipper!709 (derivationStepZipper!709 lt!2079777 (head!10774 lt!2079780)) (head!10774 (tail!9907 lt!2079780))) (tail!9907 (tail!9907 lt!2079780))))))

(assert (= (and d!1617314 c!859384) b!5025259))

(assert (= (and d!1617314 (not c!859384)) b!5025260))

(assert (=> d!1617314 m!6060230))

(declare-fun m!6060626 () Bool)

(assert (=> d!1617314 m!6060626))

(assert (=> b!5025259 m!6060228))

(declare-fun m!6060629 () Bool)

(assert (=> b!5025259 m!6060629))

(assert (=> b!5025260 m!6060230))

(declare-fun m!6060632 () Bool)

(assert (=> b!5025260 m!6060632))

(assert (=> b!5025260 m!6060228))

(assert (=> b!5025260 m!6060632))

(declare-fun m!6060634 () Bool)

(assert (=> b!5025260 m!6060634))

(assert (=> b!5025260 m!6060230))

(declare-fun m!6060636 () Bool)

(assert (=> b!5025260 m!6060636))

(assert (=> b!5025260 m!6060634))

(assert (=> b!5025260 m!6060636))

(declare-fun m!6060638 () Bool)

(assert (=> b!5025260 m!6060638))

(assert (=> b!5024919 d!1617314))

(declare-fun bs!1187829 () Bool)

(declare-fun d!1617318 () Bool)

(assert (= bs!1187829 (and d!1617318 d!1617150)))

(declare-fun lambda!249164 () Int)

(assert (=> bs!1187829 (= (= (head!10774 lt!2079780) lt!2079775) (= lambda!249164 lambda!249134))))

(declare-fun bs!1187830 () Bool)

(assert (= bs!1187830 (and d!1617318 d!1617168)))

(assert (=> bs!1187830 (= (= (head!10774 lt!2079780) (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (= lambda!249164 lambda!249135))))

(declare-fun bs!1187831 () Bool)

(assert (= bs!1187831 (and d!1617318 d!1617200)))

(assert (=> bs!1187831 (= (= (head!10774 lt!2079780) (head!10774 lt!2079778)) (= lambda!249164 lambda!249140))))

(assert (=> d!1617318 true))

(assert (=> d!1617318 (= (derivationStepZipper!709 lt!2079777 (head!10774 lt!2079780)) (flatMap!300 lt!2079777 lambda!249164))))

(declare-fun bs!1187832 () Bool)

(assert (= bs!1187832 d!1617318))

(declare-fun m!6060640 () Bool)

(assert (=> bs!1187832 m!6060640))

(assert (=> b!5024919 d!1617318))

(declare-fun d!1617320 () Bool)

(assert (=> d!1617320 (= (head!10774 lt!2079780) (h!64599 lt!2079780))))

(assert (=> b!5024919 d!1617320))

(declare-fun d!1617322 () Bool)

(assert (=> d!1617322 (= (tail!9907 lt!2079780) (t!370667 lt!2079780))))

(assert (=> b!5024919 d!1617322))

(assert (=> b!5024997 d!1617160))

(declare-fun d!1617324 () Bool)

(assert (=> d!1617324 (= (head!10774 lt!2079779) (h!64599 lt!2079779))))

(assert (=> b!5024927 d!1617324))

(declare-fun bs!1187833 () Bool)

(declare-fun d!1617326 () Bool)

(assert (= bs!1187833 (and d!1617326 b!5024916)))

(declare-fun lambda!249165 () Int)

(assert (=> bs!1187833 (not (= lambda!249165 lambda!249127))))

(declare-fun bs!1187834 () Bool)

(assert (= bs!1187834 (and d!1617326 d!1617220)))

(assert (=> bs!1187834 (not (= lambda!249165 lambda!249146))))

(declare-fun bs!1187835 () Bool)

(assert (= bs!1187835 (and d!1617326 d!1617308)))

(assert (=> bs!1187835 (= lambda!249165 lambda!249163)))

(declare-fun bs!1187836 () Bool)

(assert (= bs!1187836 (and d!1617326 b!5025237)))

(assert (=> bs!1187836 (not (= lambda!249165 lambda!249161))))

(declare-fun bs!1187837 () Bool)

(assert (= bs!1187837 (and d!1617326 d!1617260)))

(assert (=> bs!1187837 (not (= lambda!249165 lambda!249153))))

(declare-fun bs!1187838 () Bool)

(assert (= bs!1187838 (and d!1617326 d!1617098)))

(assert (=> bs!1187838 (not (= lambda!249165 lambda!249126))))

(declare-fun bs!1187839 () Bool)

(assert (= bs!1187839 (and d!1617326 d!1617186)))

(assert (=> bs!1187839 (= lambda!249165 lambda!249139)))

(declare-fun bs!1187840 () Bool)

(assert (= bs!1187840 (and d!1617326 b!5024917)))

(assert (=> bs!1187840 (not (= lambda!249165 lambda!249128))))

(declare-fun bs!1187841 () Bool)

(assert (= bs!1187841 (and d!1617326 d!1617218)))

(assert (=> bs!1187841 (not (= lambda!249165 lambda!249143))))

(declare-fun bs!1187842 () Bool)

(assert (= bs!1187842 (and d!1617326 d!1617302)))

(assert (=> bs!1187842 (not (= lambda!249165 lambda!249160))))

(declare-fun bs!1187843 () Bool)

(assert (= bs!1187843 (and d!1617326 b!5025238)))

(assert (=> bs!1187843 (not (= lambda!249165 lambda!249162))))

(assert (=> d!1617326 (= (nullableZipper!926 z!4747) (exists!1390 z!4747 lambda!249165))))

(declare-fun bs!1187844 () Bool)

(assert (= bs!1187844 d!1617326))

(declare-fun m!6060652 () Bool)

(assert (=> bs!1187844 m!6060652))

(assert (=> b!5025008 d!1617326))

(assert (=> b!5024985 d!1617160))

(declare-fun d!1617330 () Bool)

(declare-fun lt!2079959 () Int)

(assert (=> d!1617330 (>= lt!2079959 0)))

(declare-fun e!3139299 () Int)

(assert (=> d!1617330 (= lt!2079959 e!3139299)))

(declare-fun c!859386 () Bool)

(assert (=> d!1617330 (= c!859386 ((_ is Nil!58151) lt!2079880))))

(assert (=> d!1617330 (= (size!38694 lt!2079880) lt!2079959)))

(declare-fun b!5025263 () Bool)

(assert (=> b!5025263 (= e!3139299 0)))

(declare-fun b!5025264 () Bool)

(assert (=> b!5025264 (= e!3139299 (+ 1 (size!38694 (t!370667 lt!2079880))))))

(assert (= (and d!1617330 c!859386) b!5025263))

(assert (= (and d!1617330 (not c!859386)) b!5025264))

(declare-fun m!6060654 () Bool)

(assert (=> b!5025264 m!6060654))

(assert (=> b!5024963 d!1617330))

(declare-fun bs!1187845 () Bool)

(declare-fun d!1617332 () Bool)

(assert (= bs!1187845 (and d!1617332 d!1617150)))

(declare-fun lambda!249166 () Int)

(assert (=> bs!1187845 (= (= (apply!14145 totalInput!1141 (+ 1 from!1228)) lt!2079775) (= lambda!249166 lambda!249134))))

(declare-fun bs!1187846 () Bool)

(assert (= bs!1187846 (and d!1617332 d!1617168)))

(assert (=> bs!1187846 (= (= (apply!14145 totalInput!1141 (+ 1 from!1228)) (head!10774 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) lt!2079782))) (= lambda!249166 lambda!249135))))

(declare-fun bs!1187847 () Bool)

(assert (= bs!1187847 (and d!1617332 d!1617200)))

(assert (=> bs!1187847 (= (= (apply!14145 totalInput!1141 (+ 1 from!1228)) (head!10774 lt!2079778)) (= lambda!249166 lambda!249140))))

(declare-fun bs!1187848 () Bool)

(assert (= bs!1187848 (and d!1617332 d!1617318)))

(assert (=> bs!1187848 (= (= (apply!14145 totalInput!1141 (+ 1 from!1228)) (head!10774 lt!2079780)) (= lambda!249166 lambda!249164))))

(assert (=> d!1617332 true))

(assert (=> d!1617332 (= (derivationStepZipper!709 lt!2079777 (apply!14145 totalInput!1141 (+ 1 from!1228))) (flatMap!300 lt!2079777 lambda!249166))))

(declare-fun bs!1187849 () Bool)

(assert (= bs!1187849 d!1617332))

(declare-fun m!6060656 () Bool)

(assert (=> bs!1187849 m!6060656))

(assert (=> b!5024983 d!1617332))

(declare-fun d!1617334 () Bool)

(declare-fun lt!2079961 () C!28076)

(assert (=> d!1617334 (= lt!2079961 (apply!14144 (list!18768 totalInput!1141) (+ 1 from!1228)))))

(assert (=> d!1617334 (= lt!2079961 (apply!14147 (c!859158 totalInput!1141) (+ 1 from!1228)))))

(declare-fun e!3139304 () Bool)

(assert (=> d!1617334 e!3139304))

(declare-fun res!2142551 () Bool)

(assert (=> d!1617334 (=> (not res!2142551) (not e!3139304))))

(assert (=> d!1617334 (= res!2142551 (<= 0 (+ 1 from!1228)))))

(assert (=> d!1617334 (= (apply!14145 totalInput!1141 (+ 1 from!1228)) lt!2079961)))

(declare-fun b!5025272 () Bool)

(assert (=> b!5025272 (= e!3139304 (< (+ 1 from!1228) (size!38692 totalInput!1141)))))

(assert (= (and d!1617334 res!2142551) b!5025272))

(assert (=> d!1617334 m!6059990))

(assert (=> d!1617334 m!6059990))

(declare-fun m!6060660 () Bool)

(assert (=> d!1617334 m!6060660))

(declare-fun m!6060662 () Bool)

(assert (=> d!1617334 m!6060662))

(assert (=> b!5025272 m!6059976))

(assert (=> b!5024983 d!1617334))

(declare-fun d!1617336 () Bool)

(declare-fun lt!2079962 () Int)

(assert (=> d!1617336 (and (>= lt!2079962 0) (<= lt!2079962 (- lt!2079781 (+ 1 from!1228 1))))))

(declare-fun e!3139305 () Int)

(assert (=> d!1617336 (= lt!2079962 e!3139305)))

(declare-fun c!859392 () Bool)

(declare-fun e!3139306 () Bool)

(assert (=> d!1617336 (= c!859392 e!3139306)))

(declare-fun res!2142552 () Bool)

(assert (=> d!1617336 (=> res!2142552 e!3139306)))

(assert (=> d!1617336 (= res!2142552 (= (+ 1 from!1228 1) lt!2079781))))

(declare-fun e!3139309 () Bool)

(assert (=> d!1617336 e!3139309))

(declare-fun res!2142553 () Bool)

(assert (=> d!1617336 (=> (not res!2142553) (not e!3139309))))

(assert (=> d!1617336 (= res!2142553 (>= (+ 1 from!1228 1) 0))))

(assert (=> d!1617336 (= (findLongestMatchInnerZipperFastV2!227 lt!2079888 (+ 1 from!1228 1) totalInput!1141 lt!2079781) lt!2079962)))

(declare-fun b!5025273 () Bool)

(declare-fun e!3139308 () Int)

(declare-fun lt!2079964 () Int)

(assert (=> b!5025273 (= e!3139308 (+ 1 lt!2079964))))

(declare-fun b!5025274 () Bool)

(assert (=> b!5025274 (= e!3139305 e!3139308)))

(declare-fun lt!2079963 () (InoxSet Context!6676))

(assert (=> b!5025274 (= lt!2079963 (derivationStepZipper!709 lt!2079888 (apply!14145 totalInput!1141 (+ 1 from!1228 1))))))

(assert (=> b!5025274 (= lt!2079964 (findLongestMatchInnerZipperFastV2!227 lt!2079963 (+ 1 from!1228 1 1) totalInput!1141 lt!2079781))))

(declare-fun c!859390 () Bool)

(assert (=> b!5025274 (= c!859390 (> lt!2079964 0))))

(declare-fun b!5025275 () Bool)

(declare-fun e!3139307 () Int)

(assert (=> b!5025275 (= e!3139307 0)))

(declare-fun b!5025276 () Bool)

(assert (=> b!5025276 (= e!3139309 (<= (+ 1 from!1228 1) (size!38692 totalInput!1141)))))

(declare-fun b!5025277 () Bool)

(assert (=> b!5025277 (= e!3139305 0)))

(declare-fun b!5025278 () Bool)

(declare-fun c!859391 () Bool)

(assert (=> b!5025278 (= c!859391 (nullableZipper!926 lt!2079963))))

(assert (=> b!5025278 (= e!3139308 e!3139307)))

(declare-fun b!5025279 () Bool)

(assert (=> b!5025279 (= e!3139307 1)))

(declare-fun b!5025280 () Bool)

(assert (=> b!5025280 (= e!3139306 (lostCauseZipper!927 lt!2079888))))

(assert (= (and d!1617336 res!2142553) b!5025276))

(assert (= (and d!1617336 (not res!2142552)) b!5025280))

(assert (= (and d!1617336 c!859392) b!5025277))

(assert (= (and d!1617336 (not c!859392)) b!5025274))

(assert (= (and b!5025274 c!859390) b!5025273))

(assert (= (and b!5025274 (not c!859390)) b!5025278))

(assert (= (and b!5025278 c!859391) b!5025279))

(assert (= (and b!5025278 (not c!859391)) b!5025275))

(declare-fun m!6060670 () Bool)

(assert (=> b!5025274 m!6060670))

(assert (=> b!5025274 m!6060670))

(declare-fun m!6060672 () Bool)

(assert (=> b!5025274 m!6060672))

(declare-fun m!6060674 () Bool)

(assert (=> b!5025274 m!6060674))

(assert (=> b!5025276 m!6059976))

(declare-fun m!6060676 () Bool)

(assert (=> b!5025278 m!6060676))

(declare-fun m!6060678 () Bool)

(assert (=> b!5025280 m!6060678))

(assert (=> b!5024983 d!1617336))

(declare-fun d!1617342 () Bool)

(assert (=> d!1617342 (= (isEmpty!31442 lt!2079780) ((_ is Nil!58151) lt!2079780))))

(assert (=> d!1617136 d!1617342))

(declare-fun d!1617344 () Bool)

(declare-fun e!3139318 () Bool)

(assert (=> d!1617344 e!3139318))

(declare-fun res!2142558 () Bool)

(assert (=> d!1617344 (=> (not res!2142558) (not e!3139318))))

(declare-fun lt!2079969 () List!58276)

(declare-fun noDuplicate!1047 (List!58276) Bool)

(assert (=> d!1617344 (= res!2142558 (noDuplicate!1047 lt!2079969))))

(declare-fun choose!37178 ((InoxSet Context!6676)) List!58276)

(assert (=> d!1617344 (= lt!2079969 (choose!37178 z!4747))))

(assert (=> d!1617344 (= (toList!8119 z!4747) lt!2079969)))

(declare-fun b!5025293 () Bool)

(declare-fun content!10303 (List!58276) (InoxSet Context!6676))

(assert (=> b!5025293 (= e!3139318 (= (content!10303 lt!2079969) z!4747))))

(assert (= (and d!1617344 res!2142558) b!5025293))

(declare-fun m!6060692 () Bool)

(assert (=> d!1617344 m!6060692))

(declare-fun m!6060694 () Bool)

(assert (=> d!1617344 m!6060694))

(declare-fun m!6060696 () Bool)

(assert (=> b!5025293 m!6060696))

(assert (=> bm!350703 d!1617344))

(assert (=> d!1617156 d!1617190))

(assert (=> d!1617156 d!1617160))

(declare-fun d!1617352 () Bool)

(declare-fun e!3139324 () Bool)

(assert (=> d!1617352 e!3139324))

(declare-fun res!2142567 () Bool)

(assert (=> d!1617352 (=> res!2142567 e!3139324)))

(assert (=> d!1617352 (= res!2142567 (= (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)) 0))))

(assert (=> d!1617352 true))

(declare-fun _$81!114 () Unit!149335)

(assert (=> d!1617352 (= (choose!37171 lt!2079777 (+ 1 from!1228) totalInput!1141) _$81!114)))

(declare-fun b!5025304 () Bool)

(assert (=> b!5025304 (= e!3139324 (matchZipper!667 lt!2079777 (take!764 (drop!2564 (list!18768 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!227 lt!2079777 (+ 1 from!1228) totalInput!1141 (size!38692 totalInput!1141)))))))

(assert (= (and d!1617352 (not res!2142567)) b!5025304))

(assert (=> d!1617352 m!6059976))

(assert (=> d!1617352 m!6059976))

(assert (=> d!1617352 m!6060302))

(assert (=> b!5025304 m!6059990))

(assert (=> b!5025304 m!6059990))

(assert (=> b!5025304 m!6060002))

(assert (=> b!5025304 m!6059976))

(assert (=> b!5025304 m!6060306))

(assert (=> b!5025304 m!6060308))

(assert (=> b!5025304 m!6059976))

(assert (=> b!5025304 m!6060302))

(assert (=> b!5025304 m!6060002))

(assert (=> b!5025304 m!6060302))

(assert (=> b!5025304 m!6060306))

(assert (=> d!1617156 d!1617352))

(declare-fun bs!1187858 () Bool)

(declare-fun d!1617364 () Bool)

(assert (= bs!1187858 (and d!1617364 b!5024916)))

(declare-fun lambda!249171 () Int)

(assert (=> bs!1187858 (not (= lambda!249171 lambda!249127))))

(declare-fun bs!1187859 () Bool)

(assert (= bs!1187859 (and d!1617364 d!1617220)))

(assert (=> bs!1187859 (= lambda!249171 lambda!249146)))

(declare-fun bs!1187860 () Bool)

(assert (= bs!1187860 (and d!1617364 d!1617308)))

(assert (=> bs!1187860 (not (= lambda!249171 lambda!249163))))

(declare-fun bs!1187861 () Bool)

(assert (= bs!1187861 (and d!1617364 b!5025237)))

(assert (=> bs!1187861 (not (= lambda!249171 lambda!249161))))

(declare-fun bs!1187862 () Bool)

(assert (= bs!1187862 (and d!1617364 d!1617260)))

(assert (=> bs!1187862 (not (= lambda!249171 lambda!249153))))

(declare-fun bs!1187863 () Bool)

(assert (= bs!1187863 (and d!1617364 d!1617326)))

(assert (=> bs!1187863 (not (= lambda!249171 lambda!249165))))

(declare-fun bs!1187864 () Bool)

(assert (= bs!1187864 (and d!1617364 d!1617098)))

(assert (=> bs!1187864 (not (= lambda!249171 lambda!249126))))

(declare-fun bs!1187865 () Bool)

(assert (= bs!1187865 (and d!1617364 d!1617186)))

(assert (=> bs!1187865 (not (= lambda!249171 lambda!249139))))

(declare-fun bs!1187866 () Bool)

(assert (= bs!1187866 (and d!1617364 b!5024917)))

(assert (=> bs!1187866 (not (= lambda!249171 lambda!249128))))

(declare-fun bs!1187867 () Bool)

(assert (= bs!1187867 (and d!1617364 d!1617218)))

(assert (=> bs!1187867 (= (= lambda!249126 (ite c!859261 lambda!249127 lambda!249128)) (= lambda!249171 lambda!249143))))

(declare-fun bs!1187868 () Bool)

(assert (= bs!1187868 (and d!1617364 d!1617302)))

(assert (=> bs!1187868 (not (= lambda!249171 lambda!249160))))

(declare-fun bs!1187869 () Bool)

(assert (= bs!1187869 (and d!1617364 b!5025238)))

(assert (=> bs!1187869 (not (= lambda!249171 lambda!249162))))

(assert (=> d!1617364 true))

(assert (=> d!1617364 (< (dynLambda!23533 order!26707 lambda!249126) (dynLambda!23533 order!26707 lambda!249171))))

(assert (=> d!1617364 (exists!1388 lt!2079870 lambda!249171)))

(declare-fun lt!2079974 () Unit!149335)

(declare-fun choose!37179 (List!58276 Int) Unit!149335)

(assert (=> d!1617364 (= lt!2079974 (choose!37179 lt!2079870 lambda!249126))))

(assert (=> d!1617364 (not (forall!13423 lt!2079870 lambda!249126))))

(assert (=> d!1617364 (= (lemmaNotForallThenExists!268 lt!2079870 lambda!249126) lt!2079974)))

(declare-fun bs!1187873 () Bool)

(assert (= bs!1187873 d!1617364))

(declare-fun m!6060738 () Bool)

(assert (=> bs!1187873 m!6060738))

(declare-fun m!6060740 () Bool)

(assert (=> bs!1187873 m!6060740))

(declare-fun m!6060742 () Bool)

(assert (=> bs!1187873 m!6060742))

(assert (=> b!5024916 d!1617364))

(declare-fun d!1617378 () Bool)

(declare-fun lt!2079984 () C!28076)

(assert (=> d!1617378 (contains!19572 (list!18768 totalInput!1141) lt!2079984)))

(declare-fun e!3139338 () C!28076)

(assert (=> d!1617378 (= lt!2079984 e!3139338)))

(declare-fun c!859407 () Bool)

(assert (=> d!1617378 (= c!859407 (= from!1228 0))))

(declare-fun e!3139339 () Bool)

(assert (=> d!1617378 e!3139339))

(declare-fun res!2142572 () Bool)

(assert (=> d!1617378 (=> (not res!2142572) (not e!3139339))))

(assert (=> d!1617378 (= res!2142572 (<= 0 from!1228))))

(assert (=> d!1617378 (= (apply!14144 (list!18768 totalInput!1141) from!1228) lt!2079984)))

(declare-fun b!5025327 () Bool)

(assert (=> b!5025327 (= e!3139339 (< from!1228 (size!38694 (list!18768 totalInput!1141))))))

(declare-fun b!5025328 () Bool)

(assert (=> b!5025328 (= e!3139338 (head!10774 (list!18768 totalInput!1141)))))

(declare-fun b!5025329 () Bool)

(assert (=> b!5025329 (= e!3139338 (apply!14144 (tail!9907 (list!18768 totalInput!1141)) (- from!1228 1)))))

(assert (= (and d!1617378 res!2142572) b!5025327))

(assert (= (and d!1617378 c!859407) b!5025328))

(assert (= (and d!1617378 (not c!859407)) b!5025329))

(assert (=> d!1617378 m!6059990))

(declare-fun m!6060744 () Bool)

(assert (=> d!1617378 m!6060744))

(assert (=> b!5025327 m!6059990))

(assert (=> b!5025327 m!6060062))

(assert (=> b!5025328 m!6059990))

(declare-fun m!6060746 () Bool)

(assert (=> b!5025328 m!6060746))

(assert (=> b!5025329 m!6059990))

(declare-fun m!6060748 () Bool)

(assert (=> b!5025329 m!6060748))

(assert (=> b!5025329 m!6060748))

(declare-fun m!6060750 () Bool)

(assert (=> b!5025329 m!6060750))

(assert (=> d!1617154 d!1617378))

(assert (=> d!1617154 d!1617096))

(declare-fun b!5025377 () Bool)

(declare-fun e!3139365 () C!28076)

(declare-fun call!350724 () C!28076)

(assert (=> b!5025377 (= e!3139365 call!350724)))

(declare-fun b!5025378 () Bool)

(declare-fun e!3139362 () C!28076)

(declare-fun apply!14148 (IArray!30925 Int) C!28076)

(assert (=> b!5025378 (= e!3139362 (apply!14148 (xs!18758 (c!859158 totalInput!1141)) from!1228))))

(declare-fun b!5025379 () Bool)

(assert (=> b!5025379 (= e!3139365 call!350724)))

(declare-fun d!1617380 () Bool)

(declare-fun lt!2079993 () C!28076)

(assert (=> d!1617380 (= lt!2079993 (apply!14144 (list!18770 (c!859158 totalInput!1141)) from!1228))))

(assert (=> d!1617380 (= lt!2079993 e!3139362)))

(declare-fun c!859422 () Bool)

(assert (=> d!1617380 (= c!859422 ((_ is Leaf!25602) (c!859158 totalInput!1141)))))

(declare-fun e!3139363 () Bool)

(assert (=> d!1617380 e!3139363))

(declare-fun res!2142594 () Bool)

(assert (=> d!1617380 (=> (not res!2142594) (not e!3139363))))

(assert (=> d!1617380 (= res!2142594 (<= 0 from!1228))))

(assert (=> d!1617380 (= (apply!14147 (c!859158 totalInput!1141) from!1228) lt!2079993)))

(declare-fun bm!350719 () Bool)

(declare-fun c!859421 () Bool)

(declare-fun c!859423 () Bool)

(assert (=> bm!350719 (= c!859421 c!859423)))

(declare-fun e!3139364 () Int)

(assert (=> bm!350719 (= call!350724 (apply!14147 (ite c!859423 (left!42527 (c!859158 totalInput!1141)) (right!42857 (c!859158 totalInput!1141))) e!3139364))))

(declare-fun b!5025380 () Bool)

(assert (=> b!5025380 (= e!3139364 from!1228)))

(declare-fun b!5025381 () Bool)

(assert (=> b!5025381 (= e!3139364 (- from!1228 (size!38696 (left!42527 (c!859158 totalInput!1141)))))))

(declare-fun b!5025382 () Bool)

(assert (=> b!5025382 (= e!3139362 e!3139365)))

(declare-fun lt!2079992 () Bool)

(declare-fun appendIndex!400 (List!58275 List!58275 Int) Bool)

(assert (=> b!5025382 (= lt!2079992 (appendIndex!400 (list!18770 (left!42527 (c!859158 totalInput!1141))) (list!18770 (right!42857 (c!859158 totalInput!1141))) from!1228))))

(assert (=> b!5025382 (= c!859423 (< from!1228 (size!38696 (left!42527 (c!859158 totalInput!1141)))))))

(declare-fun b!5025383 () Bool)

(assert (=> b!5025383 (= e!3139363 (< from!1228 (size!38696 (c!859158 totalInput!1141))))))

(assert (= (and d!1617380 res!2142594) b!5025383))

(assert (= (and d!1617380 c!859422) b!5025378))

(assert (= (and d!1617380 (not c!859422)) b!5025382))

(assert (= (and b!5025382 c!859423) b!5025377))

(assert (= (and b!5025382 (not c!859423)) b!5025379))

(assert (= (or b!5025377 b!5025379) bm!350719))

(assert (= (and bm!350719 c!859421) b!5025380))

(assert (= (and bm!350719 (not c!859421)) b!5025381))

(assert (=> b!5025381 m!6060482))

(assert (=> d!1617380 m!6060070))

(assert (=> d!1617380 m!6060070))

(declare-fun m!6060796 () Bool)

(assert (=> d!1617380 m!6060796))

(declare-fun m!6060798 () Bool)

(assert (=> bm!350719 m!6060798))

(declare-fun m!6060800 () Bool)

(assert (=> b!5025378 m!6060800))

(assert (=> b!5025382 m!6060590))

(assert (=> b!5025382 m!6060592))

(assert (=> b!5025382 m!6060590))

(assert (=> b!5025382 m!6060592))

(declare-fun m!6060802 () Bool)

(assert (=> b!5025382 m!6060802))

(assert (=> b!5025382 m!6060482))

(assert (=> b!5025383 m!6060314))

(assert (=> d!1617154 d!1617380))

(declare-fun d!1617402 () Bool)

(declare-fun e!3139371 () Bool)

(assert (=> d!1617402 e!3139371))

(declare-fun res!2142595 () Bool)

(assert (=> d!1617402 (=> (not res!2142595) (not e!3139371))))

(declare-fun lt!2079994 () List!58275)

(assert (=> d!1617402 (= res!2142595 (= ((_ map implies) (content!10301 lt!2079994) (content!10301 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139370 () List!58275)

(assert (=> d!1617402 (= lt!2079994 e!3139370)))

(declare-fun c!859427 () Bool)

(assert (=> d!1617402 (= c!859427 (or ((_ is Nil!58151) (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228)))) (<= (- lt!2079782 1) 0)))))

(assert (=> d!1617402 (= (take!764 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))) (- lt!2079782 1)) lt!2079994)))

(declare-fun b!5025388 () Bool)

(assert (=> b!5025388 (= e!3139370 Nil!58151)))

(declare-fun b!5025389 () Bool)

(declare-fun e!3139369 () Int)

(declare-fun e!3139368 () Int)

(assert (=> b!5025389 (= e!3139369 e!3139368)))

(declare-fun c!859426 () Bool)

(assert (=> b!5025389 (= c!859426 (>= (- lt!2079782 1) (size!38694 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228))))))))

(declare-fun b!5025390 () Bool)

(assert (=> b!5025390 (= e!3139368 (- lt!2079782 1))))

(declare-fun b!5025391 () Bool)

(assert (=> b!5025391 (= e!3139368 (size!38694 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228)))))))

(declare-fun b!5025392 () Bool)

(assert (=> b!5025392 (= e!3139370 (Cons!58151 (h!64599 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228)))) (take!764 (t!370667 (t!370667 (drop!2564 lt!2079779 (+ 1 from!1228)))) (- (- lt!2079782 1) 1))))))

(declare-fun b!5025393 () Bool)

(assert (=> b!5025393 (= e!3139369 0)))

(declare-fun b!5025394 () Bool)

(assert (=> b!5025394 (= e!3139371 (= (size!38694 lt!2079994) e!3139369))))

(declare-fun c!859428 () Bool)

(assert (=> b!5025394 (= c!859428 (<= (- lt!2079782 1) 0))))

(assert (= (and d!1617402 c!859427) b!5025388))

(assert (= (and d!1617402 (not c!859427)) b!5025392))

(assert (= (and d!1617402 res!2142595) b!5025394))

(assert (= (and b!5025394 c!859428) b!5025393))

(assert (= (and b!5025394 (not c!859428)) b!5025389))

(assert (= (and b!5025389 c!859426) b!5025391))

(assert (= (and b!5025389 (not c!859426)) b!5025390))

(declare-fun m!6060804 () Bool)

(assert (=> b!5025392 m!6060804))

(declare-fun m!6060806 () Bool)

(assert (=> d!1617402 m!6060806))

(assert (=> d!1617402 m!6060372))

(assert (=> b!5025389 m!6060452))

(assert (=> b!5025391 m!6060452))

(declare-fun m!6060808 () Bool)

(assert (=> b!5025394 m!6060808))

(assert (=> b!5024961 d!1617402))

(declare-fun d!1617404 () Bool)

(declare-fun c!859429 () Bool)

(assert (=> d!1617404 (= c!859429 ((_ is Nil!58151) lt!2079879))))

(declare-fun e!3139372 () (InoxSet C!28076))

(assert (=> d!1617404 (= (content!10301 lt!2079879) e!3139372)))

(declare-fun b!5025395 () Bool)

(assert (=> b!5025395 (= e!3139372 ((as const (Array C!28076 Bool)) false))))

(declare-fun b!5025396 () Bool)

(assert (=> b!5025396 (= e!3139372 ((_ map or) (store ((as const (Array C!28076 Bool)) false) (h!64599 lt!2079879) true) (content!10301 (t!370667 lt!2079879))))))

(assert (= (and d!1617404 c!859429) b!5025395))

(assert (= (and d!1617404 (not c!859429)) b!5025396))

(declare-fun m!6060810 () Bool)

(assert (=> b!5025396 m!6060810))

(declare-fun m!6060812 () Bool)

(assert (=> b!5025396 m!6060812))

(assert (=> d!1617146 d!1617404))

(assert (=> d!1617146 d!1617290))

(declare-fun d!1617406 () Bool)

(declare-fun c!859430 () Bool)

(assert (=> d!1617406 (= c!859430 ((_ is Node!15432) (left!42527 (c!859158 totalInput!1141))))))

(declare-fun e!3139373 () Bool)

(assert (=> d!1617406 (= (inv!76664 (left!42527 (c!859158 totalInput!1141))) e!3139373)))

(declare-fun b!5025397 () Bool)

(assert (=> b!5025397 (= e!3139373 (inv!76668 (left!42527 (c!859158 totalInput!1141))))))

(declare-fun b!5025398 () Bool)

(declare-fun e!3139374 () Bool)

(assert (=> b!5025398 (= e!3139373 e!3139374)))

(declare-fun res!2142596 () Bool)

(assert (=> b!5025398 (= res!2142596 (not ((_ is Leaf!25602) (left!42527 (c!859158 totalInput!1141)))))))

(assert (=> b!5025398 (=> res!2142596 e!3139374)))

(declare-fun b!5025399 () Bool)

(assert (=> b!5025399 (= e!3139374 (inv!76669 (left!42527 (c!859158 totalInput!1141))))))

(assert (= (and d!1617406 c!859430) b!5025397))

(assert (= (and d!1617406 (not c!859430)) b!5025398))

(assert (= (and b!5025398 (not res!2142596)) b!5025399))

(declare-fun m!6060814 () Bool)

(assert (=> b!5025397 m!6060814))

(declare-fun m!6060816 () Bool)

(assert (=> b!5025399 m!6060816))

(assert (=> b!5025028 d!1617406))

(declare-fun d!1617408 () Bool)

(declare-fun c!859431 () Bool)

(assert (=> d!1617408 (= c!859431 ((_ is Node!15432) (right!42857 (c!859158 totalInput!1141))))))

(declare-fun e!3139375 () Bool)

(assert (=> d!1617408 (= (inv!76664 (right!42857 (c!859158 totalInput!1141))) e!3139375)))

(declare-fun b!5025400 () Bool)

(assert (=> b!5025400 (= e!3139375 (inv!76668 (right!42857 (c!859158 totalInput!1141))))))

(declare-fun b!5025401 () Bool)

(declare-fun e!3139376 () Bool)

(assert (=> b!5025401 (= e!3139375 e!3139376)))

(declare-fun res!2142597 () Bool)

(assert (=> b!5025401 (= res!2142597 (not ((_ is Leaf!25602) (right!42857 (c!859158 totalInput!1141)))))))

(assert (=> b!5025401 (=> res!2142597 e!3139376)))

(declare-fun b!5025402 () Bool)

(assert (=> b!5025402 (= e!3139376 (inv!76669 (right!42857 (c!859158 totalInput!1141))))))

(assert (= (and d!1617408 c!859431) b!5025400))

(assert (= (and d!1617408 (not c!859431)) b!5025401))

(assert (= (and b!5025401 (not res!2142597)) b!5025402))

(declare-fun m!6060818 () Bool)

(assert (=> b!5025400 m!6060818))

(declare-fun m!6060820 () Bool)

(assert (=> b!5025402 m!6060820))

(assert (=> b!5025028 d!1617408))

(declare-fun d!1617410 () Bool)

(declare-fun lt!2079995 () Int)

(assert (=> d!1617410 (>= lt!2079995 0)))

(declare-fun e!3139377 () Int)

(assert (=> d!1617410 (= lt!2079995 e!3139377)))

(declare-fun c!859432 () Bool)

(assert (=> d!1617410 (= c!859432 ((_ is Nil!58151) lt!2079877))))

(assert (=> d!1617410 (= (size!38694 lt!2079877) lt!2079995)))

(declare-fun b!5025403 () Bool)

(assert (=> b!5025403 (= e!3139377 0)))

(declare-fun b!5025404 () Bool)

(assert (=> b!5025404 (= e!3139377 (+ 1 (size!38694 (t!370667 lt!2079877))))))

(assert (= (and d!1617410 c!859432) b!5025403))

(assert (= (and d!1617410 (not c!859432)) b!5025404))

(declare-fun m!6060822 () Bool)

(assert (=> b!5025404 m!6060822))

(assert (=> b!5024938 d!1617410))

(declare-fun d!1617412 () Bool)

(declare-fun e!3139381 () Bool)

(assert (=> d!1617412 e!3139381))

(declare-fun res!2142598 () Bool)

(assert (=> d!1617412 (=> (not res!2142598) (not e!3139381))))

(declare-fun lt!2079996 () List!58275)

(assert (=> d!1617412 (= res!2142598 (= ((_ map implies) (content!10301 lt!2079996) (content!10301 (t!370667 (drop!2564 lt!2079779 from!1228)))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139380 () List!58275)

(assert (=> d!1617412 (= lt!2079996 e!3139380)))

(declare-fun c!859434 () Bool)

(assert (=> d!1617412 (= c!859434 (or ((_ is Nil!58151) (t!370667 (drop!2564 lt!2079779 from!1228))) (<= (- (+ 1 lt!2079782) 1) 0)))))

(assert (=> d!1617412 (= (take!764 (t!370667 (drop!2564 lt!2079779 from!1228)) (- (+ 1 lt!2079782) 1)) lt!2079996)))

(declare-fun b!5025405 () Bool)

(assert (=> b!5025405 (= e!3139380 Nil!58151)))

(declare-fun b!5025406 () Bool)

(declare-fun e!3139379 () Int)

(declare-fun e!3139378 () Int)

(assert (=> b!5025406 (= e!3139379 e!3139378)))

(declare-fun c!859433 () Bool)

(assert (=> b!5025406 (= c!859433 (>= (- (+ 1 lt!2079782) 1) (size!38694 (t!370667 (drop!2564 lt!2079779 from!1228)))))))

(declare-fun b!5025407 () Bool)

(assert (=> b!5025407 (= e!3139378 (- (+ 1 lt!2079782) 1))))

(declare-fun b!5025408 () Bool)

(assert (=> b!5025408 (= e!3139378 (size!38694 (t!370667 (drop!2564 lt!2079779 from!1228))))))

(declare-fun b!5025409 () Bool)

(assert (=> b!5025409 (= e!3139380 (Cons!58151 (h!64599 (t!370667 (drop!2564 lt!2079779 from!1228))) (take!764 (t!370667 (t!370667 (drop!2564 lt!2079779 from!1228))) (- (- (+ 1 lt!2079782) 1) 1))))))

(declare-fun b!5025410 () Bool)

(assert (=> b!5025410 (= e!3139379 0)))

(declare-fun b!5025411 () Bool)

(assert (=> b!5025411 (= e!3139381 (= (size!38694 lt!2079996) e!3139379))))

(declare-fun c!859435 () Bool)

(assert (=> b!5025411 (= c!859435 (<= (- (+ 1 lt!2079782) 1) 0))))

(assert (= (and d!1617412 c!859434) b!5025405))

(assert (= (and d!1617412 (not c!859434)) b!5025409))

(assert (= (and d!1617412 res!2142598) b!5025411))

(assert (= (and b!5025411 c!859435) b!5025410))

(assert (= (and b!5025411 (not c!859435)) b!5025406))

(assert (= (and b!5025406 c!859433) b!5025408))

(assert (= (and b!5025406 (not c!859433)) b!5025407))

(declare-fun m!6060824 () Bool)

(assert (=> b!5025409 m!6060824))

(declare-fun m!6060826 () Bool)

(assert (=> d!1617412 m!6060826))

(assert (=> d!1617412 m!6060442))

(assert (=> b!5025406 m!6060496))

(assert (=> b!5025408 m!6060496))

(declare-fun m!6060830 () Bool)

(assert (=> b!5025411 m!6060830))

(assert (=> b!5024936 d!1617412))

(assert (=> b!5024992 d!1617160))

(assert (=> b!5024682 d!1617158))

(declare-fun d!1617416 () Bool)

(declare-fun e!3139386 () Bool)

(assert (=> d!1617416 e!3139386))

(declare-fun res!2142599 () Bool)

(assert (=> d!1617416 (=> (not res!2142599) (not e!3139386))))

(declare-fun lt!2079997 () List!58275)

(assert (=> d!1617416 (= res!2142599 (= ((_ map implies) (content!10301 lt!2079997) (content!10301 (drop!2564 lt!2079779 from!1228))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139384 () List!58275)

(assert (=> d!1617416 (= lt!2079997 e!3139384)))

(declare-fun c!859437 () Bool)

(assert (=> d!1617416 (= c!859437 (or ((_ is Nil!58151) (drop!2564 lt!2079779 from!1228)) (<= (+ lt!2079782 1) 0)))))

(assert (=> d!1617416 (= (take!764 (drop!2564 lt!2079779 from!1228) (+ lt!2079782 1)) lt!2079997)))

(declare-fun b!5025412 () Bool)

(assert (=> b!5025412 (= e!3139384 Nil!58151)))

(declare-fun b!5025413 () Bool)

(declare-fun e!3139383 () Int)

(declare-fun e!3139382 () Int)

(assert (=> b!5025413 (= e!3139383 e!3139382)))

(declare-fun c!859436 () Bool)

(assert (=> b!5025413 (= c!859436 (>= (+ lt!2079782 1) (size!38694 (drop!2564 lt!2079779 from!1228))))))

(declare-fun b!5025414 () Bool)

(assert (=> b!5025414 (= e!3139382 (+ lt!2079782 1))))

(declare-fun b!5025416 () Bool)

(assert (=> b!5025416 (= e!3139382 (size!38694 (drop!2564 lt!2079779 from!1228)))))

(declare-fun b!5025418 () Bool)

(assert (=> b!5025418 (= e!3139384 (Cons!58151 (h!64599 (drop!2564 lt!2079779 from!1228)) (take!764 (t!370667 (drop!2564 lt!2079779 from!1228)) (- (+ lt!2079782 1) 1))))))

(declare-fun b!5025420 () Bool)

(assert (=> b!5025420 (= e!3139383 0)))

(declare-fun b!5025421 () Bool)

(assert (=> b!5025421 (= e!3139386 (= (size!38694 lt!2079997) e!3139383))))

(declare-fun c!859439 () Bool)

(assert (=> b!5025421 (= c!859439 (<= (+ lt!2079782 1) 0))))

(assert (= (and d!1617416 c!859437) b!5025412))

(assert (= (and d!1617416 (not c!859437)) b!5025418))

(assert (= (and d!1617416 res!2142599) b!5025421))

(assert (= (and b!5025421 c!859439) b!5025420))

(assert (= (and b!5025421 (not c!859439)) b!5025413))

(assert (= (and b!5025413 c!859436) b!5025416))

(assert (= (and b!5025413 (not c!859436)) b!5025414))

(declare-fun m!6060838 () Bool)

(assert (=> b!5025418 m!6060838))

(declare-fun m!6060842 () Bool)

(assert (=> d!1617416 m!6060842))

(assert (=> d!1617416 m!6059972))

(assert (=> d!1617416 m!6060256))

(assert (=> b!5025413 m!6059972))

(assert (=> b!5025413 m!6060258))

(assert (=> b!5025416 m!6059972))

(assert (=> b!5025416 m!6060258))

(declare-fun m!6060846 () Bool)

(assert (=> b!5025421 m!6060846))

(assert (=> d!1617140 d!1617416))

(assert (=> d!1617140 d!1617138))

(declare-fun b!5025422 () Bool)

(declare-fun e!3139391 () List!58275)

(assert (=> b!5025422 (= e!3139391 lt!2079779)))

(declare-fun b!5025423 () Bool)

(assert (=> b!5025423 (= e!3139391 (drop!2564 (t!370667 lt!2079779) (- (+ from!1228 1) 1)))))

(declare-fun b!5025424 () Bool)

(declare-fun e!3139392 () List!58275)

(assert (=> b!5025424 (= e!3139392 e!3139391)))

(declare-fun c!859442 () Bool)

(assert (=> b!5025424 (= c!859442 (<= (+ from!1228 1) 0))))

(declare-fun bm!350720 () Bool)

(declare-fun call!350725 () Int)

(assert (=> bm!350720 (= call!350725 (size!38694 lt!2079779))))

(declare-fun b!5025425 () Bool)

(declare-fun e!3139390 () Int)

(assert (=> b!5025425 (= e!3139390 (- call!350725 (+ from!1228 1)))))

(declare-fun b!5025426 () Bool)

(assert (=> b!5025426 (= e!3139390 0)))

(declare-fun b!5025427 () Bool)

(declare-fun e!3139389 () Bool)

(declare-fun lt!2079999 () List!58275)

(declare-fun e!3139388 () Int)

(assert (=> b!5025427 (= e!3139389 (= (size!38694 lt!2079999) e!3139388))))

(declare-fun c!859443 () Bool)

(assert (=> b!5025427 (= c!859443 (<= (+ from!1228 1) 0))))

(declare-fun b!5025428 () Bool)

(assert (=> b!5025428 (= e!3139388 call!350725)))

(declare-fun d!1617420 () Bool)

(assert (=> d!1617420 e!3139389))

(declare-fun res!2142601 () Bool)

(assert (=> d!1617420 (=> (not res!2142601) (not e!3139389))))

(assert (=> d!1617420 (= res!2142601 (= ((_ map implies) (content!10301 lt!2079999) (content!10301 lt!2079779)) ((as const (InoxSet C!28076)) true)))))

(assert (=> d!1617420 (= lt!2079999 e!3139392)))

(declare-fun c!859441 () Bool)

(assert (=> d!1617420 (= c!859441 ((_ is Nil!58151) lt!2079779))))

(assert (=> d!1617420 (= (drop!2564 lt!2079779 (+ from!1228 1)) lt!2079999)))

(declare-fun b!5025429 () Bool)

(assert (=> b!5025429 (= e!3139388 e!3139390)))

(declare-fun c!859440 () Bool)

(assert (=> b!5025429 (= c!859440 (>= (+ from!1228 1) call!350725))))

(declare-fun b!5025430 () Bool)

(assert (=> b!5025430 (= e!3139392 Nil!58151)))

(assert (= (and d!1617420 c!859441) b!5025430))

(assert (= (and d!1617420 (not c!859441)) b!5025424))

(assert (= (and b!5025424 c!859442) b!5025422))

(assert (= (and b!5025424 (not c!859442)) b!5025423))

(assert (= (and d!1617420 res!2142601) b!5025427))

(assert (= (and b!5025427 c!859443) b!5025428))

(assert (= (and b!5025427 (not c!859443)) b!5025429))

(assert (= (and b!5025429 c!859440) b!5025426))

(assert (= (and b!5025429 (not c!859440)) b!5025425))

(assert (= (or b!5025428 b!5025429 b!5025425) bm!350720))

(declare-fun m!6060848 () Bool)

(assert (=> b!5025423 m!6060848))

(assert (=> bm!350720 m!6060236))

(declare-fun m!6060850 () Bool)

(assert (=> b!5025427 m!6060850))

(declare-fun m!6060852 () Bool)

(assert (=> d!1617420 m!6060852))

(assert (=> d!1617420 m!6060268))

(assert (=> d!1617140 d!1617420))

(declare-fun d!1617424 () Bool)

(assert (=> d!1617424 (= (Cons!58151 (apply!14144 lt!2079779 from!1228) (take!764 (drop!2564 lt!2079779 (+ from!1228 1)) lt!2079782)) (take!764 (drop!2564 lt!2079779 from!1228) (+ lt!2079782 1)))))

(assert (=> d!1617424 true))

(declare-fun _$30!246 () Unit!149335)

(assert (=> d!1617424 (= (choose!37170 lt!2079779 from!1228 lt!2079782) _$30!246)))

(declare-fun bs!1187913 () Bool)

(assert (= bs!1187913 d!1617424))

(assert (=> bs!1187913 m!6060246))

(assert (=> bs!1187913 m!6060248))

(assert (=> bs!1187913 m!6059972))

(assert (=> bs!1187913 m!6059972))

(assert (=> bs!1187913 m!6060250))

(assert (=> bs!1187913 m!6059968))

(assert (=> bs!1187913 m!6060246))

(assert (=> d!1617140 d!1617424))

(declare-fun d!1617426 () Bool)

(declare-fun e!3139401 () Bool)

(assert (=> d!1617426 e!3139401))

(declare-fun res!2142602 () Bool)

(assert (=> d!1617426 (=> (not res!2142602) (not e!3139401))))

(declare-fun lt!2080000 () List!58275)

(assert (=> d!1617426 (= res!2142602 (= ((_ map implies) (content!10301 lt!2080000) (content!10301 (drop!2564 lt!2079779 (+ from!1228 1)))) ((as const (InoxSet C!28076)) true)))))

(declare-fun e!3139399 () List!58275)

(assert (=> d!1617426 (= lt!2080000 e!3139399)))

(declare-fun c!859449 () Bool)

(assert (=> d!1617426 (= c!859449 (or ((_ is Nil!58151) (drop!2564 lt!2079779 (+ from!1228 1))) (<= lt!2079782 0)))))

(assert (=> d!1617426 (= (take!764 (drop!2564 lt!2079779 (+ from!1228 1)) lt!2079782) lt!2080000)))

(declare-fun b!5025439 () Bool)

(assert (=> b!5025439 (= e!3139399 Nil!58151)))

(declare-fun b!5025440 () Bool)

(declare-fun e!3139398 () Int)

(declare-fun e!3139397 () Int)

(assert (=> b!5025440 (= e!3139398 e!3139397)))

(declare-fun c!859448 () Bool)

(assert (=> b!5025440 (= c!859448 (>= lt!2079782 (size!38694 (drop!2564 lt!2079779 (+ from!1228 1)))))))

(declare-fun b!5025441 () Bool)

(assert (=> b!5025441 (= e!3139397 lt!2079782)))

(declare-fun b!5025443 () Bool)

(assert (=> b!5025443 (= e!3139397 (size!38694 (drop!2564 lt!2079779 (+ from!1228 1))))))

(declare-fun b!5025445 () Bool)

(assert (=> b!5025445 (= e!3139399 (Cons!58151 (h!64599 (drop!2564 lt!2079779 (+ from!1228 1))) (take!764 (t!370667 (drop!2564 lt!2079779 (+ from!1228 1))) (- lt!2079782 1))))))

(declare-fun b!5025447 () Bool)

(assert (=> b!5025447 (= e!3139398 0)))

(declare-fun b!5025449 () Bool)

(assert (=> b!5025449 (= e!3139401 (= (size!38694 lt!2080000) e!3139398))))

(declare-fun c!859450 () Bool)

(assert (=> b!5025449 (= c!859450 (<= lt!2079782 0))))

(assert (= (and d!1617426 c!859449) b!5025439))

(assert (= (and d!1617426 (not c!859449)) b!5025445))

(assert (= (and d!1617426 res!2142602) b!5025449))

(assert (= (and b!5025449 c!859450) b!5025447))

(assert (= (and b!5025449 (not c!859450)) b!5025440))

(assert (= (and b!5025440 c!859448) b!5025443))

(assert (= (and b!5025440 (not c!859448)) b!5025441))

(declare-fun m!6060860 () Bool)

(assert (=> b!5025445 m!6060860))

(declare-fun m!6060862 () Bool)

(assert (=> d!1617426 m!6060862))

(assert (=> d!1617426 m!6060246))

(declare-fun m!6060864 () Bool)

(assert (=> d!1617426 m!6060864))

(assert (=> b!5025440 m!6060246))

(declare-fun m!6060866 () Bool)

(assert (=> b!5025440 m!6060866))

(assert (=> b!5025443 m!6060246))

(assert (=> b!5025443 m!6060866))

(declare-fun m!6060868 () Bool)

(assert (=> b!5025449 m!6060868))

(assert (=> d!1617140 d!1617426))

(assert (=> d!1617140 d!1617144))

(declare-fun d!1617430 () Bool)

(declare-fun lt!2080001 () Int)

(assert (=> d!1617430 (>= lt!2080001 0)))

(declare-fun e!3139404 () Int)

(assert (=> d!1617430 (= lt!2080001 e!3139404)))

(declare-fun c!859454 () Bool)

(assert (=> d!1617430 (= c!859454 ((_ is Nil!58151) lt!2079879))))

(assert (=> d!1617430 (= (size!38694 lt!2079879) lt!2080001)))

(declare-fun b!5025452 () Bool)

(assert (=> b!5025452 (= e!3139404 0)))

(declare-fun b!5025453 () Bool)

(assert (=> b!5025453 (= e!3139404 (+ 1 (size!38694 (t!370667 lt!2079879))))))

(assert (= (and d!1617430 c!859454) b!5025452))

(assert (= (and d!1617430 (not c!859454)) b!5025453))

(declare-fun m!6060874 () Bool)

(assert (=> b!5025453 m!6060874))

(assert (=> b!5024953 d!1617430))

(declare-fun b!5025458 () Bool)

(declare-fun e!3139407 () Bool)

(declare-fun tp_is_empty!36665 () Bool)

(declare-fun tp!1408651 () Bool)

(assert (=> b!5025458 (= e!3139407 (and tp_is_empty!36665 tp!1408651))))

(assert (=> b!5025030 (= tp!1408648 e!3139407)))

(assert (= (and b!5025030 ((_ is Cons!58151) (innerList!15520 (xs!18758 (c!859158 totalInput!1141))))) b!5025458))

(declare-fun tp!1408652 () Bool)

(declare-fun b!5025459 () Bool)

(declare-fun tp!1408653 () Bool)

(declare-fun e!3139408 () Bool)

(assert (=> b!5025459 (= e!3139408 (and (inv!76664 (left!42527 (left!42527 (c!859158 totalInput!1141)))) tp!1408652 (inv!76664 (right!42857 (left!42527 (c!859158 totalInput!1141)))) tp!1408653))))

(declare-fun b!5025461 () Bool)

(declare-fun e!3139409 () Bool)

(declare-fun tp!1408654 () Bool)

(assert (=> b!5025461 (= e!3139409 tp!1408654)))

(declare-fun b!5025460 () Bool)

(assert (=> b!5025460 (= e!3139408 (and (inv!76670 (xs!18758 (left!42527 (c!859158 totalInput!1141)))) e!3139409))))

(assert (=> b!5025028 (= tp!1408646 (and (inv!76664 (left!42527 (c!859158 totalInput!1141))) e!3139408))))

(assert (= (and b!5025028 ((_ is Node!15432) (left!42527 (c!859158 totalInput!1141)))) b!5025459))

(assert (= b!5025460 b!5025461))

(assert (= (and b!5025028 ((_ is Leaf!25602) (left!42527 (c!859158 totalInput!1141)))) b!5025460))

(declare-fun m!6060886 () Bool)

(assert (=> b!5025459 m!6060886))

(declare-fun m!6060888 () Bool)

(assert (=> b!5025459 m!6060888))

(declare-fun m!6060890 () Bool)

(assert (=> b!5025460 m!6060890))

(assert (=> b!5025028 m!6060332))

(declare-fun b!5025465 () Bool)

(declare-fun tp!1408656 () Bool)

(declare-fun e!3139412 () Bool)

(declare-fun tp!1408655 () Bool)

(assert (=> b!5025465 (= e!3139412 (and (inv!76664 (left!42527 (right!42857 (c!859158 totalInput!1141)))) tp!1408655 (inv!76664 (right!42857 (right!42857 (c!859158 totalInput!1141)))) tp!1408656))))

(declare-fun b!5025467 () Bool)

(declare-fun e!3139413 () Bool)

(declare-fun tp!1408657 () Bool)

(assert (=> b!5025467 (= e!3139413 tp!1408657)))

(declare-fun b!5025466 () Bool)

(assert (=> b!5025466 (= e!3139412 (and (inv!76670 (xs!18758 (right!42857 (c!859158 totalInput!1141)))) e!3139413))))

(assert (=> b!5025028 (= tp!1408647 (and (inv!76664 (right!42857 (c!859158 totalInput!1141))) e!3139412))))

(assert (= (and b!5025028 ((_ is Node!15432) (right!42857 (c!859158 totalInput!1141)))) b!5025465))

(assert (= b!5025466 b!5025467))

(assert (= (and b!5025028 ((_ is Leaf!25602) (right!42857 (c!859158 totalInput!1141)))) b!5025466))

(declare-fun m!6060900 () Bool)

(assert (=> b!5025465 m!6060900))

(declare-fun m!6060902 () Bool)

(assert (=> b!5025465 m!6060902))

(declare-fun m!6060904 () Bool)

(assert (=> b!5025466 m!6060904))

(assert (=> b!5025028 m!6060334))

(declare-fun b!5025468 () Bool)

(declare-fun e!3139414 () Bool)

(declare-fun tp!1408658 () Bool)

(declare-fun tp!1408659 () Bool)

(assert (=> b!5025468 (= e!3139414 (and tp!1408658 tp!1408659))))

(assert (=> b!5025014 (= tp!1408632 e!3139414)))

(assert (= (and b!5025014 ((_ is Cons!58150) (exprs!3838 setElem!28874))) b!5025468))

(declare-fun e!3139417 () Bool)

(assert (=> b!5025019 (= tp!1408638 e!3139417)))

(declare-fun b!5025480 () Bool)

(declare-fun tp!1408673 () Bool)

(declare-fun tp!1408674 () Bool)

(assert (=> b!5025480 (= e!3139417 (and tp!1408673 tp!1408674))))

(declare-fun b!5025482 () Bool)

(declare-fun tp!1408672 () Bool)

(declare-fun tp!1408670 () Bool)

(assert (=> b!5025482 (= e!3139417 (and tp!1408672 tp!1408670))))

(declare-fun b!5025479 () Bool)

(assert (=> b!5025479 (= e!3139417 tp_is_empty!36665)))

(declare-fun b!5025481 () Bool)

(declare-fun tp!1408671 () Bool)

(assert (=> b!5025481 (= e!3139417 tp!1408671)))

(assert (= (and b!5025019 ((_ is ElementMatch!13913) (h!64598 (exprs!3838 setElem!28868)))) b!5025479))

(assert (= (and b!5025019 ((_ is Concat!22706) (h!64598 (exprs!3838 setElem!28868)))) b!5025480))

(assert (= (and b!5025019 ((_ is Star!13913) (h!64598 (exprs!3838 setElem!28868)))) b!5025481))

(assert (= (and b!5025019 ((_ is Union!13913) (h!64598 (exprs!3838 setElem!28868)))) b!5025482))

(declare-fun b!5025483 () Bool)

(declare-fun e!3139418 () Bool)

(declare-fun tp!1408675 () Bool)

(declare-fun tp!1408676 () Bool)

(assert (=> b!5025483 (= e!3139418 (and tp!1408675 tp!1408676))))

(assert (=> b!5025019 (= tp!1408639 e!3139418)))

(assert (= (and b!5025019 ((_ is Cons!58150) (t!370666 (exprs!3838 setElem!28868)))) b!5025483))

(declare-fun condSetEmpty!28875 () Bool)

(assert (=> setNonEmpty!28874 (= condSetEmpty!28875 (= setRest!28874 ((as const (Array Context!6676 Bool)) false)))))

(declare-fun setRes!28875 () Bool)

(assert (=> setNonEmpty!28874 (= tp!1408633 setRes!28875)))

(declare-fun setIsEmpty!28875 () Bool)

(assert (=> setIsEmpty!28875 setRes!28875))

(declare-fun setElem!28875 () Context!6676)

(declare-fun e!3139419 () Bool)

(declare-fun setNonEmpty!28875 () Bool)

(declare-fun tp!1408678 () Bool)

(assert (=> setNonEmpty!28875 (= setRes!28875 (and tp!1408678 (inv!76662 setElem!28875) e!3139419))))

(declare-fun setRest!28875 () (InoxSet Context!6676))

(assert (=> setNonEmpty!28875 (= setRest!28874 ((_ map or) (store ((as const (Array Context!6676 Bool)) false) setElem!28875 true) setRest!28875))))

(declare-fun b!5025484 () Bool)

(declare-fun tp!1408677 () Bool)

(assert (=> b!5025484 (= e!3139419 tp!1408677)))

(assert (= (and setNonEmpty!28874 condSetEmpty!28875) setIsEmpty!28875))

(assert (= (and setNonEmpty!28874 (not condSetEmpty!28875)) setNonEmpty!28875))

(assert (= setNonEmpty!28875 b!5025484))

(declare-fun m!6060906 () Bool)

(assert (=> setNonEmpty!28875 m!6060906))

(declare-fun b_lambda!198691 () Bool)

(assert (= b_lambda!198689 (or d!1617134 b_lambda!198691)))

(declare-fun bs!1187917 () Bool)

(declare-fun d!1617442 () Bool)

(assert (= bs!1187917 (and d!1617442 d!1617134)))

(declare-fun validRegex!6119 (Regex!13913) Bool)

(assert (=> bs!1187917 (= (dynLambda!23531 lambda!249131 (h!64598 (exprs!3838 setElem!28868))) (validRegex!6119 (h!64598 (exprs!3838 setElem!28868))))))

(declare-fun m!6060908 () Bool)

(assert (=> bs!1187917 m!6060908))

(assert (=> b!5025086 d!1617442))

(check-sat (not b!5025064) (not d!1617282) (not d!1617332) (not b!5025073) (not b!5025122) (not b!5025055) (not b!5025238) (not b!5025028) (not d!1617302) (not b!5025468) (not b!5025108) (not b!5025416) (not d!1617420) (not b!5025248) (not b!5025418) (not b!5025413) (not d!1617380) (not d!1617260) (not b!5025383) (not bs!1187917) (not b!5025480) (not d!1617378) (not b!5025389) (not b!5025184) (not d!1617318) (not d!1617194) (not b!5025182) (not b!5025075) (not b!5025381) (not b!5025411) (not d!1617242) (not b!5025449) (not b!5025274) (not b!5025258) (not b!5025213) (not d!1617220) (not b!5025400) (not d!1617212) (not b!5025077) (not b!5025460) (not d!1617364) (not d!1617402) (not b!5025164) (not b!5025098) (not b!5025408) (not bm!350712) (not b!5025466) (not b!5025042) (not b!5025483) (not b!5025183) (not b!5025046) (not d!1617326) (not d!1617186) (not b!5025402) (not b!5025396) (not bm!350708) (not bm!350709) (not b!5025197) (not b!5025465) (not setNonEmpty!28875) (not b!5025397) (not b!5025131) (not b!5025409) (not b!5025260) (not d!1617218) (not b!5025304) (not b!5025461) (not b!5025031) (not d!1617234) (not d!1617314) (not b!5025062) (not b!5025453) (not b!5025181) (not d!1617344) (not b!5025443) (not d!1617192) (not b!5025246) (not b!5025061) (not b!5025142) (not b!5025382) (not b!5025188) (not b!5025421) (not d!1617168) (not b!5025076) (not d!1617198) (not b!5025327) (not b!5025259) (not bm!350707) (not b!5025293) (not b!5025427) (not b!5025467) (not b!5025278) (not b!5025394) (not b!5025074) (not b!5025066) (not bm!350719) (not b!5025482) (not d!1617424) (not b!5025068) (not b!5025186) (not b!5025070) (not b!5025032) (not b!5025106) (not b!5025264) (not b!5025149) (not b!5025100) (not b!5025179) (not b!5025280) (not b!5025391) (not d!1617334) (not b!5025072) (not d!1617270) (not b!5025157) (not b!5025078) (not b!5025329) (not b!5025378) (not b_lambda!198691) (not b!5025079) (not b!5025445) (not b!5025193) (not d!1617208) (not b!5025104) (not b!5025235) (not d!1617166) (not b!5025481) (not d!1617246) (not b!5025040) (not b!5025458) (not b!5025038) (not b!5025328) (not b!5025484) (not b!5025406) (not b!5025404) (not b!5025399) (not b!5025272) (not b!5025459) (not d!1617308) (not b!5025423) (not bm!350720) (not b!5025059) (not d!1617178) (not b!5025440) (not b!5025180) (not b!5025087) (not b!5025276) (not b!5025089) (not d!1617188) (not d!1617200) (not d!1617416) (not b!5025202) (not d!1617352) (not d!1617412) (not b!5025236) (not b!5025057) (not d!1617244) (not b!5025189) (not b!5025081) (not b!5025392) (not d!1617266) tp_is_empty!36665 (not d!1617284) (not d!1617426) (not b!5025191) (not b!5025160) (not b!5025237) (not d!1617180) (not b!5025093) (not bm!350711))
(check-sat)
