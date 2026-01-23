; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531736 () Bool)

(assert start!531736)

(declare-fun b!5028556 () Bool)

(declare-fun e!3141328 () Bool)

(declare-fun e!3141333 () Bool)

(assert (=> b!5028556 (= e!3141328 e!3141333)))

(declare-fun res!2143469 () Bool)

(assert (=> b!5028556 (=> (not res!2143469) (not e!3141333))))

(declare-fun from!1228 () Int)

(declare-fun lt!2081186 () Int)

(assert (=> b!5028556 (= res!2143469 (<= from!1228 lt!2081186))))

(declare-datatypes ((C!28112 0))(
  ( (C!28113 (val!23432 Int)) )
))
(declare-datatypes ((List!58322 0))(
  ( (Nil!58198) (Cons!58198 (h!64646 C!28112) (t!370730 List!58322)) )
))
(declare-datatypes ((IArray!30961 0))(
  ( (IArray!30962 (innerList!15538 List!58322)) )
))
(declare-datatypes ((Conc!15450 0))(
  ( (Node!15450 (left!42578 Conc!15450) (right!42908 Conc!15450) (csize!31130 Int) (cheight!15661 Int)) (Leaf!25629 (xs!18776 IArray!30961) (csize!31131 Int)) (Empty!15450) )
))
(declare-datatypes ((BalanceConc!30330 0))(
  ( (BalanceConc!30331 (c!860505 Conc!15450)) )
))
(declare-fun totalInput!1141 () BalanceConc!30330)

(declare-fun size!38737 (BalanceConc!30330) Int)

(assert (=> b!5028556 (= lt!2081186 (size!38737 totalInput!1141))))

(declare-fun b!5028557 () Bool)

(declare-fun res!2143466 () Bool)

(declare-fun e!3141331 () Bool)

(assert (=> b!5028557 (=> res!2143466 e!3141331)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13931 0))(
  ( (ElementMatch!13931 (c!860506 C!28112)) (Concat!22724 (regOne!28374 Regex!13931) (regTwo!28374 Regex!13931)) (EmptyExpr!13931) (Star!13931 (reg!14260 Regex!13931)) (EmptyLang!13931) (Union!13931 (regOne!28375 Regex!13931) (regTwo!28375 Regex!13931)) )
))
(declare-datatypes ((List!58323 0))(
  ( (Nil!58199) (Cons!58199 (h!64647 Regex!13931) (t!370731 List!58323)) )
))
(declare-datatypes ((Context!6712 0))(
  ( (Context!6713 (exprs!3856 List!58323)) )
))
(declare-fun lt!2081191 () (InoxSet Context!6712))

(declare-fun nullableZipper!939 ((InoxSet Context!6712)) Bool)

(assert (=> b!5028557 (= res!2143466 (not (nullableZipper!939 lt!2081191)))))

(declare-fun setElem!28968 () Context!6712)

(declare-fun e!3141329 () Bool)

(declare-fun tp!1409181 () Bool)

(declare-fun setNonEmpty!28968 () Bool)

(declare-fun setRes!28968 () Bool)

(declare-fun inv!76781 (Context!6712) Bool)

(assert (=> setNonEmpty!28968 (= setRes!28968 (and tp!1409181 (inv!76781 setElem!28968) e!3141329))))

(declare-fun z!4747 () (InoxSet Context!6712))

(declare-fun setRest!28968 () (InoxSet Context!6712))

(assert (=> setNonEmpty!28968 (= z!4747 ((_ map or) (store ((as const (Array Context!6712 Bool)) false) setElem!28968 true) setRest!28968))))

(declare-fun res!2143465 () Bool)

(assert (=> start!531736 (=> (not res!2143465) (not e!3141328))))

(assert (=> start!531736 (= res!2143465 (>= from!1228 0))))

(assert (=> start!531736 e!3141328))

(assert (=> start!531736 true))

(declare-fun e!3141332 () Bool)

(declare-fun inv!76782 (BalanceConc!30330) Bool)

(assert (=> start!531736 (and (inv!76782 totalInput!1141) e!3141332)))

(declare-fun condSetEmpty!28968 () Bool)

(assert (=> start!531736 (= condSetEmpty!28968 (= z!4747 ((as const (Array Context!6712 Bool)) false)))))

(assert (=> start!531736 setRes!28968))

(declare-fun b!5028558 () Bool)

(declare-fun tp!1409180 () Bool)

(assert (=> b!5028558 (= e!3141329 tp!1409180)))

(declare-fun b!5028559 () Bool)

(declare-fun tp!1409182 () Bool)

(declare-fun inv!76783 (Conc!15450) Bool)

(assert (=> b!5028559 (= e!3141332 (and (inv!76783 (c!860505 totalInput!1141)) tp!1409182))))

(declare-fun b!5028560 () Bool)

(assert (=> b!5028560 (= e!3141333 (not e!3141331))))

(declare-fun res!2143463 () Bool)

(assert (=> b!5028560 (=> res!2143463 e!3141331)))

(declare-fun lt!2081190 () Int)

(assert (=> b!5028560 (= res!2143463 (> lt!2081190 0))))

(declare-fun lt!2081188 () List!58322)

(declare-fun lt!2081187 () List!58322)

(declare-fun take!778 (List!58322 Int) List!58322)

(declare-fun drop!2578 (List!58322 Int) List!58322)

(assert (=> b!5028560 (= lt!2081188 (take!778 (drop!2578 lt!2081187 (+ 1 from!1228)) lt!2081190))))

(declare-fun list!18799 (BalanceConc!30330) List!58322)

(assert (=> b!5028560 (= lt!2081187 (list!18799 totalInput!1141))))

(declare-fun e!3141330 () Bool)

(assert (=> b!5028560 e!3141330))

(declare-fun res!2143464 () Bool)

(assert (=> b!5028560 (=> res!2143464 e!3141330)))

(assert (=> b!5028560 (= res!2143464 (= lt!2081190 0))))

(declare-datatypes ((Unit!149393 0))(
  ( (Unit!149394) )
))
(declare-fun lt!2081185 () Unit!149393)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!122 ((InoxSet Context!6712) Int BalanceConc!30330) Unit!149393)

(assert (=> b!5028560 (= lt!2081185 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!122 lt!2081191 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!245 ((InoxSet Context!6712) Int BalanceConc!30330 Int) Int)

(assert (=> b!5028560 (= lt!2081190 (findLongestMatchInnerZipperFastV2!245 lt!2081191 (+ 1 from!1228) totalInput!1141 lt!2081186))))

(declare-fun derivationStepZipper!726 ((InoxSet Context!6712) C!28112) (InoxSet Context!6712))

(declare-fun apply!14188 (BalanceConc!30330 Int) C!28112)

(assert (=> b!5028560 (= lt!2081191 (derivationStepZipper!726 z!4747 (apply!14188 totalInput!1141 from!1228)))))

(declare-fun b!5028561 () Bool)

(declare-fun matchZipper!681 ((InoxSet Context!6712) List!58322) Bool)

(assert (=> b!5028561 (= e!3141330 (matchZipper!681 lt!2081191 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190)))))

(declare-fun b!5028562 () Bool)

(declare-fun res!2143468 () Bool)

(assert (=> b!5028562 (=> (not res!2143468) (not e!3141333))))

(declare-fun lostCauseZipper!945 ((InoxSet Context!6712)) Bool)

(assert (=> b!5028562 (= res!2143468 (not (lostCauseZipper!945 z!4747)))))

(declare-fun b!5028563 () Bool)

(declare-fun res!2143467 () Bool)

(assert (=> b!5028563 (=> (not res!2143467) (not e!3141333))))

(assert (=> b!5028563 (= res!2143467 (not (= from!1228 lt!2081186)))))

(declare-fun setIsEmpty!28968 () Bool)

(assert (=> setIsEmpty!28968 setRes!28968))

(declare-fun b!5028564 () Bool)

(declare-fun size!38738 (List!58322) Int)

(assert (=> b!5028564 (= e!3141331 (< from!1228 (size!38738 lt!2081187)))))

(declare-fun lt!2081189 () List!58322)

(assert (=> b!5028564 (= lt!2081189 (take!778 (drop!2578 lt!2081187 from!1228) 1))))

(assert (= (and start!531736 res!2143465) b!5028556))

(assert (= (and b!5028556 res!2143469) b!5028562))

(assert (= (and b!5028562 res!2143468) b!5028563))

(assert (= (and b!5028563 res!2143467) b!5028560))

(assert (= (and b!5028560 (not res!2143464)) b!5028561))

(assert (= (and b!5028560 (not res!2143463)) b!5028557))

(assert (= (and b!5028557 (not res!2143466)) b!5028564))

(assert (= start!531736 b!5028559))

(assert (= (and start!531736 condSetEmpty!28968) setIsEmpty!28968))

(assert (= (and start!531736 (not condSetEmpty!28968)) setNonEmpty!28968))

(assert (= setNonEmpty!28968 b!5028558))

(declare-fun m!6063836 () Bool)

(assert (=> b!5028564 m!6063836))

(declare-fun m!6063838 () Bool)

(assert (=> b!5028564 m!6063838))

(assert (=> b!5028564 m!6063838))

(declare-fun m!6063840 () Bool)

(assert (=> b!5028564 m!6063840))

(declare-fun m!6063842 () Bool)

(assert (=> b!5028557 m!6063842))

(declare-fun m!6063844 () Bool)

(assert (=> b!5028559 m!6063844))

(declare-fun m!6063846 () Bool)

(assert (=> b!5028556 m!6063846))

(declare-fun m!6063848 () Bool)

(assert (=> setNonEmpty!28968 m!6063848))

(declare-fun m!6063850 () Bool)

(assert (=> b!5028561 m!6063850))

(assert (=> b!5028561 m!6063850))

(declare-fun m!6063852 () Bool)

(assert (=> b!5028561 m!6063852))

(assert (=> b!5028561 m!6063852))

(declare-fun m!6063854 () Bool)

(assert (=> b!5028561 m!6063854))

(assert (=> b!5028561 m!6063854))

(declare-fun m!6063856 () Bool)

(assert (=> b!5028561 m!6063856))

(declare-fun m!6063858 () Bool)

(assert (=> b!5028560 m!6063858))

(declare-fun m!6063860 () Bool)

(assert (=> b!5028560 m!6063860))

(declare-fun m!6063862 () Bool)

(assert (=> b!5028560 m!6063862))

(assert (=> b!5028560 m!6063850))

(assert (=> b!5028560 m!6063862))

(declare-fun m!6063864 () Bool)

(assert (=> b!5028560 m!6063864))

(assert (=> b!5028560 m!6063860))

(declare-fun m!6063866 () Bool)

(assert (=> b!5028560 m!6063866))

(declare-fun m!6063868 () Bool)

(assert (=> b!5028560 m!6063868))

(declare-fun m!6063870 () Bool)

(assert (=> b!5028562 m!6063870))

(declare-fun m!6063872 () Bool)

(assert (=> start!531736 m!6063872))

(check-sat (not b!5028557) (not b!5028561) (not b!5028564) (not start!531736) (not setNonEmpty!28968) (not b!5028556) (not b!5028562) (not b!5028560) (not b!5028558) (not b!5028559))
(check-sat)
(get-model)

(declare-fun d!1618269 () Bool)

(declare-fun lambda!249508 () Int)

(declare-fun exists!1406 ((InoxSet Context!6712) Int) Bool)

(assert (=> d!1618269 (= (nullableZipper!939 lt!2081191) (exists!1406 lt!2081191 lambda!249508))))

(declare-fun bs!1188244 () Bool)

(assert (= bs!1188244 d!1618269))

(declare-fun m!6063976 () Bool)

(assert (=> bs!1188244 m!6063976))

(assert (=> b!5028557 d!1618269))

(declare-fun d!1618307 () Bool)

(declare-fun c!860568 () Bool)

(declare-fun isEmpty!31471 (List!58322) Bool)

(assert (=> d!1618307 (= c!860568 (isEmpty!31471 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190)))))

(declare-fun e!3141417 () Bool)

(assert (=> d!1618307 (= (matchZipper!681 lt!2081191 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190)) e!3141417)))

(declare-fun b!5028705 () Bool)

(assert (=> b!5028705 (= e!3141417 (nullableZipper!939 lt!2081191))))

(declare-fun b!5028706 () Bool)

(declare-fun head!10787 (List!58322) C!28112)

(declare-fun tail!9920 (List!58322) List!58322)

(assert (=> b!5028706 (= e!3141417 (matchZipper!681 (derivationStepZipper!726 lt!2081191 (head!10787 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190))) (tail!9920 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190))))))

(assert (= (and d!1618307 c!860568) b!5028705))

(assert (= (and d!1618307 (not c!860568)) b!5028706))

(assert (=> d!1618307 m!6063854))

(declare-fun m!6063978 () Bool)

(assert (=> d!1618307 m!6063978))

(assert (=> b!5028705 m!6063842))

(assert (=> b!5028706 m!6063854))

(declare-fun m!6063980 () Bool)

(assert (=> b!5028706 m!6063980))

(assert (=> b!5028706 m!6063980))

(declare-fun m!6063982 () Bool)

(assert (=> b!5028706 m!6063982))

(assert (=> b!5028706 m!6063854))

(declare-fun m!6063984 () Bool)

(assert (=> b!5028706 m!6063984))

(assert (=> b!5028706 m!6063982))

(assert (=> b!5028706 m!6063984))

(declare-fun m!6063986 () Bool)

(assert (=> b!5028706 m!6063986))

(assert (=> b!5028561 d!1618307))

(declare-fun b!5028725 () Bool)

(declare-fun e!3141433 () Bool)

(declare-fun lt!2081241 () List!58322)

(declare-fun e!3141432 () Int)

(assert (=> b!5028725 (= e!3141433 (= (size!38738 lt!2081241) e!3141432))))

(declare-fun c!860585 () Bool)

(assert (=> b!5028725 (= c!860585 (<= lt!2081190 0))))

(declare-fun d!1618309 () Bool)

(assert (=> d!1618309 e!3141433))

(declare-fun res!2143500 () Bool)

(assert (=> d!1618309 (=> (not res!2143500) (not e!3141433))))

(declare-fun content!10318 (List!58322) (InoxSet C!28112))

(assert (=> d!1618309 (= res!2143500 (= ((_ map implies) (content!10318 lt!2081241) (content!10318 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28112)) true)))))

(declare-fun e!3141434 () List!58322)

(assert (=> d!1618309 (= lt!2081241 e!3141434)))

(declare-fun c!860587 () Bool)

(get-info :version)

(assert (=> d!1618309 (= c!860587 (or ((_ is Nil!58198) (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228))) (<= lt!2081190 0)))))

(assert (=> d!1618309 (= (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081190) lt!2081241)))

(declare-fun b!5028726 () Bool)

(assert (=> b!5028726 (= e!3141434 Nil!58198)))

(declare-fun b!5028727 () Bool)

(assert (=> b!5028727 (= e!3141434 (Cons!58198 (h!64646 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228))) (take!778 (t!370730 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228))) (- lt!2081190 1))))))

(declare-fun b!5028728 () Bool)

(declare-fun e!3141435 () Int)

(assert (=> b!5028728 (= e!3141435 (size!38738 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5028729 () Bool)

(assert (=> b!5028729 (= e!3141432 e!3141435)))

(declare-fun c!860586 () Bool)

(assert (=> b!5028729 (= c!860586 (>= lt!2081190 (size!38738 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5028730 () Bool)

(assert (=> b!5028730 (= e!3141432 0)))

(declare-fun b!5028731 () Bool)

(assert (=> b!5028731 (= e!3141435 lt!2081190)))

(assert (= (and d!1618309 c!860587) b!5028726))

(assert (= (and d!1618309 (not c!860587)) b!5028727))

(assert (= (and d!1618309 res!2143500) b!5028725))

(assert (= (and b!5028725 c!860585) b!5028730))

(assert (= (and b!5028725 (not c!860585)) b!5028729))

(assert (= (and b!5028729 c!860586) b!5028728))

(assert (= (and b!5028729 (not c!860586)) b!5028731))

(declare-fun m!6063988 () Bool)

(assert (=> b!5028727 m!6063988))

(declare-fun m!6063990 () Bool)

(assert (=> b!5028725 m!6063990))

(declare-fun m!6063992 () Bool)

(assert (=> d!1618309 m!6063992))

(assert (=> d!1618309 m!6063852))

(declare-fun m!6063994 () Bool)

(assert (=> d!1618309 m!6063994))

(assert (=> b!5028729 m!6063852))

(declare-fun m!6063996 () Bool)

(assert (=> b!5028729 m!6063996))

(assert (=> b!5028728 m!6063852))

(assert (=> b!5028728 m!6063996))

(assert (=> b!5028561 d!1618309))

(declare-fun b!5028772 () Bool)

(declare-fun e!3141462 () Int)

(declare-fun call!350886 () Int)

(assert (=> b!5028772 (= e!3141462 (- call!350886 (+ 1 from!1228)))))

(declare-fun bm!350881 () Bool)

(assert (=> bm!350881 (= call!350886 (size!38738 (list!18799 totalInput!1141)))))

(declare-fun b!5028773 () Bool)

(declare-fun e!3141460 () List!58322)

(assert (=> b!5028773 (= e!3141460 (drop!2578 (t!370730 (list!18799 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5028774 () Bool)

(declare-fun e!3141459 () List!58322)

(assert (=> b!5028774 (= e!3141459 Nil!58198)))

(declare-fun b!5028775 () Bool)

(declare-fun e!3141461 () Bool)

(declare-fun lt!2081252 () List!58322)

(declare-fun e!3141458 () Int)

(assert (=> b!5028775 (= e!3141461 (= (size!38738 lt!2081252) e!3141458))))

(declare-fun c!860599 () Bool)

(assert (=> b!5028775 (= c!860599 (<= (+ 1 from!1228) 0))))

(declare-fun d!1618311 () Bool)

(assert (=> d!1618311 e!3141461))

(declare-fun res!2143503 () Bool)

(assert (=> d!1618311 (=> (not res!2143503) (not e!3141461))))

(assert (=> d!1618311 (= res!2143503 (= ((_ map implies) (content!10318 lt!2081252) (content!10318 (list!18799 totalInput!1141))) ((as const (InoxSet C!28112)) true)))))

(assert (=> d!1618311 (= lt!2081252 e!3141459)))

(declare-fun c!860598 () Bool)

(assert (=> d!1618311 (= c!860598 ((_ is Nil!58198) (list!18799 totalInput!1141)))))

(assert (=> d!1618311 (= (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) lt!2081252)))

(declare-fun b!5028776 () Bool)

(assert (=> b!5028776 (= e!3141459 e!3141460)))

(declare-fun c!860600 () Bool)

(assert (=> b!5028776 (= c!860600 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028777 () Bool)

(assert (=> b!5028777 (= e!3141462 0)))

(declare-fun b!5028778 () Bool)

(assert (=> b!5028778 (= e!3141458 e!3141462)))

(declare-fun c!860597 () Bool)

(assert (=> b!5028778 (= c!860597 (>= (+ 1 from!1228) call!350886))))

(declare-fun b!5028779 () Bool)

(assert (=> b!5028779 (= e!3141458 call!350886)))

(declare-fun b!5028780 () Bool)

(assert (=> b!5028780 (= e!3141460 (list!18799 totalInput!1141))))

(assert (= (and d!1618311 c!860598) b!5028774))

(assert (= (and d!1618311 (not c!860598)) b!5028776))

(assert (= (and b!5028776 c!860600) b!5028780))

(assert (= (and b!5028776 (not c!860600)) b!5028773))

(assert (= (and d!1618311 res!2143503) b!5028775))

(assert (= (and b!5028775 c!860599) b!5028779))

(assert (= (and b!5028775 (not c!860599)) b!5028778))

(assert (= (and b!5028778 c!860597) b!5028777))

(assert (= (and b!5028778 (not c!860597)) b!5028772))

(assert (= (or b!5028779 b!5028778 b!5028772) bm!350881))

(assert (=> bm!350881 m!6063850))

(declare-fun m!6064022 () Bool)

(assert (=> bm!350881 m!6064022))

(declare-fun m!6064024 () Bool)

(assert (=> b!5028773 m!6064024))

(declare-fun m!6064026 () Bool)

(assert (=> b!5028775 m!6064026))

(declare-fun m!6064028 () Bool)

(assert (=> d!1618311 m!6064028))

(assert (=> d!1618311 m!6063850))

(declare-fun m!6064030 () Bool)

(assert (=> d!1618311 m!6064030))

(assert (=> b!5028561 d!1618311))

(declare-fun d!1618315 () Bool)

(declare-fun list!18801 (Conc!15450) List!58322)

(assert (=> d!1618315 (= (list!18799 totalInput!1141) (list!18801 (c!860505 totalInput!1141)))))

(declare-fun bs!1188252 () Bool)

(assert (= bs!1188252 d!1618315))

(declare-fun m!6064032 () Bool)

(assert (=> bs!1188252 m!6064032))

(assert (=> b!5028561 d!1618315))

(declare-fun bs!1188253 () Bool)

(declare-fun d!1618317 () Bool)

(assert (= bs!1188253 (and d!1618317 d!1618269)))

(declare-fun lambda!249536 () Int)

(assert (=> bs!1188253 (not (= lambda!249536 lambda!249508))))

(declare-fun bs!1188254 () Bool)

(declare-fun b!5028786 () Bool)

(assert (= bs!1188254 (and b!5028786 d!1618269)))

(declare-fun lambda!249537 () Int)

(assert (=> bs!1188254 (not (= lambda!249537 lambda!249508))))

(declare-fun bs!1188255 () Bool)

(assert (= bs!1188255 (and b!5028786 d!1618317)))

(assert (=> bs!1188255 (not (= lambda!249537 lambda!249536))))

(declare-fun bs!1188256 () Bool)

(declare-fun b!5028787 () Bool)

(assert (= bs!1188256 (and b!5028787 d!1618269)))

(declare-fun lambda!249538 () Int)

(assert (=> bs!1188256 (not (= lambda!249538 lambda!249508))))

(declare-fun bs!1188257 () Bool)

(assert (= bs!1188257 (and b!5028787 d!1618317)))

(assert (=> bs!1188257 (not (= lambda!249538 lambda!249536))))

(declare-fun bs!1188258 () Bool)

(assert (= bs!1188258 (and b!5028787 b!5028786)))

(assert (=> bs!1188258 (= lambda!249538 lambda!249537)))

(declare-fun lt!2081271 () Bool)

(declare-datatypes ((Option!14611 0))(
  ( (None!14610) (Some!14610 (v!50619 List!58322)) )
))
(declare-fun isEmpty!31473 (Option!14611) Bool)

(declare-fun getLanguageWitness!752 ((InoxSet Context!6712)) Option!14611)

(assert (=> d!1618317 (= lt!2081271 (isEmpty!31473 (getLanguageWitness!752 z!4747)))))

(declare-fun forall!13448 ((InoxSet Context!6712) Int) Bool)

(assert (=> d!1618317 (= lt!2081271 (forall!13448 z!4747 lambda!249536))))

(declare-fun lt!2081269 () Unit!149393)

(declare-fun e!3141470 () Unit!149393)

(assert (=> d!1618317 (= lt!2081269 e!3141470)))

(declare-fun c!860611 () Bool)

(assert (=> d!1618317 (= c!860611 (not (forall!13448 z!4747 lambda!249536)))))

(assert (=> d!1618317 (= (lostCauseZipper!945 z!4747) lt!2081271)))

(declare-fun Unit!149397 () Unit!149393)

(assert (=> b!5028787 (= e!3141470 Unit!149397)))

(declare-datatypes ((List!58325 0))(
  ( (Nil!58201) (Cons!58201 (h!64649 Context!6712) (t!370733 List!58325)) )
))
(declare-fun lt!2081270 () List!58325)

(declare-fun call!350892 () List!58325)

(assert (=> b!5028787 (= lt!2081270 call!350892)))

(declare-fun lt!2081275 () Unit!149393)

(declare-fun lemmaForallThenNotExists!264 (List!58325 Int) Unit!149393)

(assert (=> b!5028787 (= lt!2081275 (lemmaForallThenNotExists!264 lt!2081270 lambda!249536))))

(declare-fun call!350891 () Bool)

(assert (=> b!5028787 (not call!350891)))

(declare-fun lt!2081273 () Unit!149393)

(assert (=> b!5028787 (= lt!2081273 lt!2081275)))

(declare-fun Unit!149398 () Unit!149393)

(assert (=> b!5028786 (= e!3141470 Unit!149398)))

(declare-fun lt!2081276 () List!58325)

(assert (=> b!5028786 (= lt!2081276 call!350892)))

(declare-fun lt!2081274 () Unit!149393)

(declare-fun lemmaNotForallThenExists!281 (List!58325 Int) Unit!149393)

(assert (=> b!5028786 (= lt!2081274 (lemmaNotForallThenExists!281 lt!2081276 lambda!249536))))

(assert (=> b!5028786 call!350891))

(declare-fun lt!2081272 () Unit!149393)

(assert (=> b!5028786 (= lt!2081272 lt!2081274)))

(declare-fun bm!350886 () Bool)

(declare-fun toList!8132 ((InoxSet Context!6712)) List!58325)

(assert (=> bm!350886 (= call!350892 (toList!8132 z!4747))))

(declare-fun bm!350887 () Bool)

(declare-fun exists!1409 (List!58325 Int) Bool)

(assert (=> bm!350887 (= call!350891 (exists!1409 (ite c!860611 lt!2081276 lt!2081270) (ite c!860611 lambda!249537 lambda!249538)))))

(assert (= (and d!1618317 c!860611) b!5028786))

(assert (= (and d!1618317 (not c!860611)) b!5028787))

(assert (= (or b!5028786 b!5028787) bm!350886))

(assert (= (or b!5028786 b!5028787) bm!350887))

(declare-fun m!6064034 () Bool)

(assert (=> b!5028786 m!6064034))

(declare-fun m!6064036 () Bool)

(assert (=> d!1618317 m!6064036))

(assert (=> d!1618317 m!6064036))

(declare-fun m!6064038 () Bool)

(assert (=> d!1618317 m!6064038))

(declare-fun m!6064040 () Bool)

(assert (=> d!1618317 m!6064040))

(assert (=> d!1618317 m!6064040))

(declare-fun m!6064042 () Bool)

(assert (=> bm!350886 m!6064042))

(declare-fun m!6064044 () Bool)

(assert (=> b!5028787 m!6064044))

(declare-fun m!6064046 () Bool)

(assert (=> bm!350887 m!6064046))

(assert (=> b!5028562 d!1618317))

(declare-fun d!1618319 () Bool)

(declare-fun lambda!249541 () Int)

(declare-fun forall!13449 (List!58323 Int) Bool)

(assert (=> d!1618319 (= (inv!76781 setElem!28968) (forall!13449 (exprs!3856 setElem!28968) lambda!249541))))

(declare-fun bs!1188259 () Bool)

(assert (= bs!1188259 d!1618319))

(declare-fun m!6064048 () Bool)

(assert (=> bs!1188259 m!6064048))

(assert (=> setNonEmpty!28968 d!1618319))

(declare-fun d!1618321 () Bool)

(declare-fun isBalanced!4314 (Conc!15450) Bool)

(assert (=> d!1618321 (= (inv!76782 totalInput!1141) (isBalanced!4314 (c!860505 totalInput!1141)))))

(declare-fun bs!1188260 () Bool)

(assert (= bs!1188260 d!1618321))

(declare-fun m!6064050 () Bool)

(assert (=> bs!1188260 m!6064050))

(assert (=> start!531736 d!1618321))

(declare-fun d!1618323 () Bool)

(declare-fun c!860614 () Bool)

(assert (=> d!1618323 (= c!860614 ((_ is Node!15450) (c!860505 totalInput!1141)))))

(declare-fun e!3141475 () Bool)

(assert (=> d!1618323 (= (inv!76783 (c!860505 totalInput!1141)) e!3141475)))

(declare-fun b!5028794 () Bool)

(declare-fun inv!76787 (Conc!15450) Bool)

(assert (=> b!5028794 (= e!3141475 (inv!76787 (c!860505 totalInput!1141)))))

(declare-fun b!5028795 () Bool)

(declare-fun e!3141476 () Bool)

(assert (=> b!5028795 (= e!3141475 e!3141476)))

(declare-fun res!2143506 () Bool)

(assert (=> b!5028795 (= res!2143506 (not ((_ is Leaf!25629) (c!860505 totalInput!1141))))))

(assert (=> b!5028795 (=> res!2143506 e!3141476)))

(declare-fun b!5028796 () Bool)

(declare-fun inv!76788 (Conc!15450) Bool)

(assert (=> b!5028796 (= e!3141476 (inv!76788 (c!860505 totalInput!1141)))))

(assert (= (and d!1618323 c!860614) b!5028794))

(assert (= (and d!1618323 (not c!860614)) b!5028795))

(assert (= (and b!5028795 (not res!2143506)) b!5028796))

(declare-fun m!6064052 () Bool)

(assert (=> b!5028794 m!6064052))

(declare-fun m!6064054 () Bool)

(assert (=> b!5028796 m!6064054))

(assert (=> b!5028559 d!1618323))

(declare-fun b!5028797 () Bool)

(declare-fun e!3141478 () Bool)

(declare-fun lt!2081277 () List!58322)

(declare-fun e!3141477 () Int)

(assert (=> b!5028797 (= e!3141478 (= (size!38738 lt!2081277) e!3141477))))

(declare-fun c!860615 () Bool)

(assert (=> b!5028797 (= c!860615 (<= lt!2081190 0))))

(declare-fun d!1618325 () Bool)

(assert (=> d!1618325 e!3141478))

(declare-fun res!2143507 () Bool)

(assert (=> d!1618325 (=> (not res!2143507) (not e!3141478))))

(assert (=> d!1618325 (= res!2143507 (= ((_ map implies) (content!10318 lt!2081277) (content!10318 (drop!2578 lt!2081187 (+ 1 from!1228)))) ((as const (InoxSet C!28112)) true)))))

(declare-fun e!3141479 () List!58322)

(assert (=> d!1618325 (= lt!2081277 e!3141479)))

(declare-fun c!860617 () Bool)

(assert (=> d!1618325 (= c!860617 (or ((_ is Nil!58198) (drop!2578 lt!2081187 (+ 1 from!1228))) (<= lt!2081190 0)))))

(assert (=> d!1618325 (= (take!778 (drop!2578 lt!2081187 (+ 1 from!1228)) lt!2081190) lt!2081277)))

(declare-fun b!5028798 () Bool)

(assert (=> b!5028798 (= e!3141479 Nil!58198)))

(declare-fun b!5028799 () Bool)

(assert (=> b!5028799 (= e!3141479 (Cons!58198 (h!64646 (drop!2578 lt!2081187 (+ 1 from!1228))) (take!778 (t!370730 (drop!2578 lt!2081187 (+ 1 from!1228))) (- lt!2081190 1))))))

(declare-fun b!5028800 () Bool)

(declare-fun e!3141480 () Int)

(assert (=> b!5028800 (= e!3141480 (size!38738 (drop!2578 lt!2081187 (+ 1 from!1228))))))

(declare-fun b!5028801 () Bool)

(assert (=> b!5028801 (= e!3141477 e!3141480)))

(declare-fun c!860616 () Bool)

(assert (=> b!5028801 (= c!860616 (>= lt!2081190 (size!38738 (drop!2578 lt!2081187 (+ 1 from!1228)))))))

(declare-fun b!5028802 () Bool)

(assert (=> b!5028802 (= e!3141477 0)))

(declare-fun b!5028803 () Bool)

(assert (=> b!5028803 (= e!3141480 lt!2081190)))

(assert (= (and d!1618325 c!860617) b!5028798))

(assert (= (and d!1618325 (not c!860617)) b!5028799))

(assert (= (and d!1618325 res!2143507) b!5028797))

(assert (= (and b!5028797 c!860615) b!5028802))

(assert (= (and b!5028797 (not c!860615)) b!5028801))

(assert (= (and b!5028801 c!860616) b!5028800))

(assert (= (and b!5028801 (not c!860616)) b!5028803))

(declare-fun m!6064056 () Bool)

(assert (=> b!5028799 m!6064056))

(declare-fun m!6064058 () Bool)

(assert (=> b!5028797 m!6064058))

(declare-fun m!6064060 () Bool)

(assert (=> d!1618325 m!6064060))

(assert (=> d!1618325 m!6063862))

(declare-fun m!6064062 () Bool)

(assert (=> d!1618325 m!6064062))

(assert (=> b!5028801 m!6063862))

(declare-fun m!6064064 () Bool)

(assert (=> b!5028801 m!6064064))

(assert (=> b!5028800 m!6063862))

(assert (=> b!5028800 m!6064064))

(assert (=> b!5028560 d!1618325))

(declare-fun b!5028804 () Bool)

(declare-fun e!3141485 () Int)

(declare-fun call!350893 () Int)

(assert (=> b!5028804 (= e!3141485 (- call!350893 (+ 1 from!1228)))))

(declare-fun bm!350888 () Bool)

(assert (=> bm!350888 (= call!350893 (size!38738 lt!2081187))))

(declare-fun b!5028805 () Bool)

(declare-fun e!3141483 () List!58322)

(assert (=> b!5028805 (= e!3141483 (drop!2578 (t!370730 lt!2081187) (- (+ 1 from!1228) 1)))))

(declare-fun b!5028806 () Bool)

(declare-fun e!3141482 () List!58322)

(assert (=> b!5028806 (= e!3141482 Nil!58198)))

(declare-fun b!5028807 () Bool)

(declare-fun e!3141484 () Bool)

(declare-fun lt!2081278 () List!58322)

(declare-fun e!3141481 () Int)

(assert (=> b!5028807 (= e!3141484 (= (size!38738 lt!2081278) e!3141481))))

(declare-fun c!860620 () Bool)

(assert (=> b!5028807 (= c!860620 (<= (+ 1 from!1228) 0))))

(declare-fun d!1618327 () Bool)

(assert (=> d!1618327 e!3141484))

(declare-fun res!2143508 () Bool)

(assert (=> d!1618327 (=> (not res!2143508) (not e!3141484))))

(assert (=> d!1618327 (= res!2143508 (= ((_ map implies) (content!10318 lt!2081278) (content!10318 lt!2081187)) ((as const (InoxSet C!28112)) true)))))

(assert (=> d!1618327 (= lt!2081278 e!3141482)))

(declare-fun c!860619 () Bool)

(assert (=> d!1618327 (= c!860619 ((_ is Nil!58198) lt!2081187))))

(assert (=> d!1618327 (= (drop!2578 lt!2081187 (+ 1 from!1228)) lt!2081278)))

(declare-fun b!5028808 () Bool)

(assert (=> b!5028808 (= e!3141482 e!3141483)))

(declare-fun c!860621 () Bool)

(assert (=> b!5028808 (= c!860621 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028809 () Bool)

(assert (=> b!5028809 (= e!3141485 0)))

(declare-fun b!5028810 () Bool)

(assert (=> b!5028810 (= e!3141481 e!3141485)))

(declare-fun c!860618 () Bool)

(assert (=> b!5028810 (= c!860618 (>= (+ 1 from!1228) call!350893))))

(declare-fun b!5028811 () Bool)

(assert (=> b!5028811 (= e!3141481 call!350893)))

(declare-fun b!5028812 () Bool)

(assert (=> b!5028812 (= e!3141483 lt!2081187)))

(assert (= (and d!1618327 c!860619) b!5028806))

(assert (= (and d!1618327 (not c!860619)) b!5028808))

(assert (= (and b!5028808 c!860621) b!5028812))

(assert (= (and b!5028808 (not c!860621)) b!5028805))

(assert (= (and d!1618327 res!2143508) b!5028807))

(assert (= (and b!5028807 c!860620) b!5028811))

(assert (= (and b!5028807 (not c!860620)) b!5028810))

(assert (= (and b!5028810 c!860618) b!5028809))

(assert (= (and b!5028810 (not c!860618)) b!5028804))

(assert (= (or b!5028811 b!5028810 b!5028804) bm!350888))

(assert (=> bm!350888 m!6063836))

(declare-fun m!6064066 () Bool)

(assert (=> b!5028805 m!6064066))

(declare-fun m!6064068 () Bool)

(assert (=> b!5028807 m!6064068))

(declare-fun m!6064070 () Bool)

(assert (=> d!1618327 m!6064070))

(declare-fun m!6064072 () Bool)

(assert (=> d!1618327 m!6064072))

(assert (=> b!5028560 d!1618327))

(assert (=> b!5028560 d!1618315))

(declare-fun d!1618329 () Bool)

(assert (=> d!1618329 true))

(declare-fun lambda!249544 () Int)

(declare-fun flatMap!312 ((InoxSet Context!6712) Int) (InoxSet Context!6712))

(assert (=> d!1618329 (= (derivationStepZipper!726 z!4747 (apply!14188 totalInput!1141 from!1228)) (flatMap!312 z!4747 lambda!249544))))

(declare-fun bs!1188261 () Bool)

(assert (= bs!1188261 d!1618329))

(declare-fun m!6064074 () Bool)

(assert (=> bs!1188261 m!6064074))

(assert (=> b!5028560 d!1618329))

(declare-fun d!1618331 () Bool)

(declare-fun lt!2081281 () C!28112)

(declare-fun apply!14191 (List!58322 Int) C!28112)

(assert (=> d!1618331 (= lt!2081281 (apply!14191 (list!18799 totalInput!1141) from!1228))))

(declare-fun apply!14192 (Conc!15450 Int) C!28112)

(assert (=> d!1618331 (= lt!2081281 (apply!14192 (c!860505 totalInput!1141) from!1228))))

(declare-fun e!3141488 () Bool)

(assert (=> d!1618331 e!3141488))

(declare-fun res!2143511 () Bool)

(assert (=> d!1618331 (=> (not res!2143511) (not e!3141488))))

(assert (=> d!1618331 (= res!2143511 (<= 0 from!1228))))

(assert (=> d!1618331 (= (apply!14188 totalInput!1141 from!1228) lt!2081281)))

(declare-fun b!5028817 () Bool)

(assert (=> b!5028817 (= e!3141488 (< from!1228 (size!38737 totalInput!1141)))))

(assert (= (and d!1618331 res!2143511) b!5028817))

(assert (=> d!1618331 m!6063850))

(assert (=> d!1618331 m!6063850))

(declare-fun m!6064076 () Bool)

(assert (=> d!1618331 m!6064076))

(declare-fun m!6064078 () Bool)

(assert (=> d!1618331 m!6064078))

(assert (=> b!5028817 m!6063846))

(assert (=> b!5028560 d!1618331))

(declare-fun d!1618333 () Bool)

(declare-fun e!3141494 () Bool)

(assert (=> d!1618333 e!3141494))

(declare-fun res!2143517 () Bool)

(assert (=> d!1618333 (=> res!2143517 e!3141494)))

(assert (=> d!1618333 (= res!2143517 (= (findLongestMatchInnerZipperFastV2!245 lt!2081191 (+ 1 from!1228) totalInput!1141 (size!38737 totalInput!1141)) 0))))

(declare-fun lt!2081284 () Unit!149393)

(declare-fun choose!37211 ((InoxSet Context!6712) Int BalanceConc!30330) Unit!149393)

(assert (=> d!1618333 (= lt!2081284 (choose!37211 lt!2081191 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3141493 () Bool)

(assert (=> d!1618333 e!3141493))

(declare-fun res!2143516 () Bool)

(assert (=> d!1618333 (=> (not res!2143516) (not e!3141493))))

(assert (=> d!1618333 (= res!2143516 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618333 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!122 lt!2081191 (+ 1 from!1228) totalInput!1141) lt!2081284)))

(declare-fun b!5028822 () Bool)

(assert (=> b!5028822 (= e!3141493 (<= (+ 1 from!1228) (size!38737 totalInput!1141)))))

(declare-fun b!5028823 () Bool)

(assert (=> b!5028823 (= e!3141494 (matchZipper!681 lt!2081191 (take!778 (drop!2578 (list!18799 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!245 lt!2081191 (+ 1 from!1228) totalInput!1141 (size!38737 totalInput!1141)))))))

(assert (= (and d!1618333 res!2143516) b!5028822))

(assert (= (and d!1618333 (not res!2143517)) b!5028823))

(assert (=> d!1618333 m!6063846))

(assert (=> d!1618333 m!6063846))

(declare-fun m!6064080 () Bool)

(assert (=> d!1618333 m!6064080))

(declare-fun m!6064082 () Bool)

(assert (=> d!1618333 m!6064082))

(assert (=> b!5028822 m!6063846))

(assert (=> b!5028823 m!6063852))

(assert (=> b!5028823 m!6064080))

(declare-fun m!6064084 () Bool)

(assert (=> b!5028823 m!6064084))

(assert (=> b!5028823 m!6063850))

(assert (=> b!5028823 m!6063852))

(assert (=> b!5028823 m!6063846))

(assert (=> b!5028823 m!6063850))

(assert (=> b!5028823 m!6063846))

(assert (=> b!5028823 m!6064080))

(assert (=> b!5028823 m!6064084))

(declare-fun m!6064086 () Bool)

(assert (=> b!5028823 m!6064086))

(assert (=> b!5028560 d!1618333))

(declare-fun b!5028840 () Bool)

(declare-fun e!3141505 () Int)

(declare-fun lt!2081291 () Int)

(assert (=> b!5028840 (= e!3141505 (+ 1 lt!2081291))))

(declare-fun b!5028841 () Bool)

(declare-fun e!3141508 () Bool)

(assert (=> b!5028841 (= e!3141508 (<= (+ 1 from!1228) (size!38737 totalInput!1141)))))

(declare-fun b!5028842 () Bool)

(declare-fun e!3141506 () Int)

(assert (=> b!5028842 (= e!3141506 e!3141505)))

(declare-fun lt!2081293 () (InoxSet Context!6712))

(assert (=> b!5028842 (= lt!2081293 (derivationStepZipper!726 lt!2081191 (apply!14188 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5028842 (= lt!2081291 (findLongestMatchInnerZipperFastV2!245 lt!2081293 (+ 1 from!1228 1) totalInput!1141 lt!2081186))))

(declare-fun c!860632 () Bool)

(assert (=> b!5028842 (= c!860632 (> lt!2081291 0))))

(declare-fun b!5028843 () Bool)

(declare-fun c!860630 () Bool)

(assert (=> b!5028843 (= c!860630 (nullableZipper!939 lt!2081293))))

(declare-fun e!3141509 () Int)

(assert (=> b!5028843 (= e!3141505 e!3141509)))

(declare-fun b!5028844 () Bool)

(assert (=> b!5028844 (= e!3141509 1)))

(declare-fun d!1618335 () Bool)

(declare-fun lt!2081292 () Int)

(assert (=> d!1618335 (and (>= lt!2081292 0) (<= lt!2081292 (- lt!2081186 (+ 1 from!1228))))))

(assert (=> d!1618335 (= lt!2081292 e!3141506)))

(declare-fun c!860631 () Bool)

(declare-fun e!3141507 () Bool)

(assert (=> d!1618335 (= c!860631 e!3141507)))

(declare-fun res!2143523 () Bool)

(assert (=> d!1618335 (=> res!2143523 e!3141507)))

(assert (=> d!1618335 (= res!2143523 (= (+ 1 from!1228) lt!2081186))))

(assert (=> d!1618335 e!3141508))

(declare-fun res!2143522 () Bool)

(assert (=> d!1618335 (=> (not res!2143522) (not e!3141508))))

(assert (=> d!1618335 (= res!2143522 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618335 (= (findLongestMatchInnerZipperFastV2!245 lt!2081191 (+ 1 from!1228) totalInput!1141 lt!2081186) lt!2081292)))

(declare-fun b!5028845 () Bool)

(assert (=> b!5028845 (= e!3141506 0)))

(declare-fun b!5028846 () Bool)

(assert (=> b!5028846 (= e!3141509 0)))

(declare-fun b!5028847 () Bool)

(assert (=> b!5028847 (= e!3141507 (lostCauseZipper!945 lt!2081191))))

(assert (= (and d!1618335 res!2143522) b!5028841))

(assert (= (and d!1618335 (not res!2143523)) b!5028847))

(assert (= (and d!1618335 c!860631) b!5028845))

(assert (= (and d!1618335 (not c!860631)) b!5028842))

(assert (= (and b!5028842 c!860632) b!5028840))

(assert (= (and b!5028842 (not c!860632)) b!5028843))

(assert (= (and b!5028843 c!860630) b!5028844))

(assert (= (and b!5028843 (not c!860630)) b!5028846))

(assert (=> b!5028841 m!6063846))

(declare-fun m!6064088 () Bool)

(assert (=> b!5028842 m!6064088))

(assert (=> b!5028842 m!6064088))

(declare-fun m!6064090 () Bool)

(assert (=> b!5028842 m!6064090))

(declare-fun m!6064092 () Bool)

(assert (=> b!5028842 m!6064092))

(declare-fun m!6064094 () Bool)

(assert (=> b!5028843 m!6064094))

(declare-fun m!6064096 () Bool)

(assert (=> b!5028847 m!6064096))

(assert (=> b!5028560 d!1618335))

(declare-fun d!1618337 () Bool)

(declare-fun lt!2081296 () Int)

(assert (=> d!1618337 (>= lt!2081296 0)))

(declare-fun e!3141512 () Int)

(assert (=> d!1618337 (= lt!2081296 e!3141512)))

(declare-fun c!860635 () Bool)

(assert (=> d!1618337 (= c!860635 ((_ is Nil!58198) lt!2081187))))

(assert (=> d!1618337 (= (size!38738 lt!2081187) lt!2081296)))

(declare-fun b!5028852 () Bool)

(assert (=> b!5028852 (= e!3141512 0)))

(declare-fun b!5028853 () Bool)

(assert (=> b!5028853 (= e!3141512 (+ 1 (size!38738 (t!370730 lt!2081187))))))

(assert (= (and d!1618337 c!860635) b!5028852))

(assert (= (and d!1618337 (not c!860635)) b!5028853))

(declare-fun m!6064098 () Bool)

(assert (=> b!5028853 m!6064098))

(assert (=> b!5028564 d!1618337))

(declare-fun b!5028854 () Bool)

(declare-fun e!3141514 () Bool)

(declare-fun lt!2081297 () List!58322)

(declare-fun e!3141513 () Int)

(assert (=> b!5028854 (= e!3141514 (= (size!38738 lt!2081297) e!3141513))))

(declare-fun c!860636 () Bool)

(assert (=> b!5028854 (= c!860636 (<= 1 0))))

(declare-fun d!1618339 () Bool)

(assert (=> d!1618339 e!3141514))

(declare-fun res!2143524 () Bool)

(assert (=> d!1618339 (=> (not res!2143524) (not e!3141514))))

(assert (=> d!1618339 (= res!2143524 (= ((_ map implies) (content!10318 lt!2081297) (content!10318 (drop!2578 lt!2081187 from!1228))) ((as const (InoxSet C!28112)) true)))))

(declare-fun e!3141515 () List!58322)

(assert (=> d!1618339 (= lt!2081297 e!3141515)))

(declare-fun c!860638 () Bool)

(assert (=> d!1618339 (= c!860638 (or ((_ is Nil!58198) (drop!2578 lt!2081187 from!1228)) (<= 1 0)))))

(assert (=> d!1618339 (= (take!778 (drop!2578 lt!2081187 from!1228) 1) lt!2081297)))

(declare-fun b!5028855 () Bool)

(assert (=> b!5028855 (= e!3141515 Nil!58198)))

(declare-fun b!5028856 () Bool)

(assert (=> b!5028856 (= e!3141515 (Cons!58198 (h!64646 (drop!2578 lt!2081187 from!1228)) (take!778 (t!370730 (drop!2578 lt!2081187 from!1228)) (- 1 1))))))

(declare-fun b!5028857 () Bool)

(declare-fun e!3141516 () Int)

(assert (=> b!5028857 (= e!3141516 (size!38738 (drop!2578 lt!2081187 from!1228)))))

(declare-fun b!5028858 () Bool)

(assert (=> b!5028858 (= e!3141513 e!3141516)))

(declare-fun c!860637 () Bool)

(assert (=> b!5028858 (= c!860637 (>= 1 (size!38738 (drop!2578 lt!2081187 from!1228))))))

(declare-fun b!5028859 () Bool)

(assert (=> b!5028859 (= e!3141513 0)))

(declare-fun b!5028860 () Bool)

(assert (=> b!5028860 (= e!3141516 1)))

(assert (= (and d!1618339 c!860638) b!5028855))

(assert (= (and d!1618339 (not c!860638)) b!5028856))

(assert (= (and d!1618339 res!2143524) b!5028854))

(assert (= (and b!5028854 c!860636) b!5028859))

(assert (= (and b!5028854 (not c!860636)) b!5028858))

(assert (= (and b!5028858 c!860637) b!5028857))

(assert (= (and b!5028858 (not c!860637)) b!5028860))

(declare-fun m!6064100 () Bool)

(assert (=> b!5028856 m!6064100))

(declare-fun m!6064102 () Bool)

(assert (=> b!5028854 m!6064102))

(declare-fun m!6064104 () Bool)

(assert (=> d!1618339 m!6064104))

(assert (=> d!1618339 m!6063838))

(declare-fun m!6064106 () Bool)

(assert (=> d!1618339 m!6064106))

(assert (=> b!5028858 m!6063838))

(declare-fun m!6064108 () Bool)

(assert (=> b!5028858 m!6064108))

(assert (=> b!5028857 m!6063838))

(assert (=> b!5028857 m!6064108))

(assert (=> b!5028564 d!1618339))

(declare-fun b!5028861 () Bool)

(declare-fun e!3141521 () Int)

(declare-fun call!350894 () Int)

(assert (=> b!5028861 (= e!3141521 (- call!350894 from!1228))))

(declare-fun bm!350889 () Bool)

(assert (=> bm!350889 (= call!350894 (size!38738 lt!2081187))))

(declare-fun b!5028862 () Bool)

(declare-fun e!3141519 () List!58322)

(assert (=> b!5028862 (= e!3141519 (drop!2578 (t!370730 lt!2081187) (- from!1228 1)))))

(declare-fun b!5028863 () Bool)

(declare-fun e!3141518 () List!58322)

(assert (=> b!5028863 (= e!3141518 Nil!58198)))

(declare-fun b!5028864 () Bool)

(declare-fun e!3141520 () Bool)

(declare-fun lt!2081298 () List!58322)

(declare-fun e!3141517 () Int)

(assert (=> b!5028864 (= e!3141520 (= (size!38738 lt!2081298) e!3141517))))

(declare-fun c!860641 () Bool)

(assert (=> b!5028864 (= c!860641 (<= from!1228 0))))

(declare-fun d!1618341 () Bool)

(assert (=> d!1618341 e!3141520))

(declare-fun res!2143525 () Bool)

(assert (=> d!1618341 (=> (not res!2143525) (not e!3141520))))

(assert (=> d!1618341 (= res!2143525 (= ((_ map implies) (content!10318 lt!2081298) (content!10318 lt!2081187)) ((as const (InoxSet C!28112)) true)))))

(assert (=> d!1618341 (= lt!2081298 e!3141518)))

(declare-fun c!860640 () Bool)

(assert (=> d!1618341 (= c!860640 ((_ is Nil!58198) lt!2081187))))

(assert (=> d!1618341 (= (drop!2578 lt!2081187 from!1228) lt!2081298)))

(declare-fun b!5028865 () Bool)

(assert (=> b!5028865 (= e!3141518 e!3141519)))

(declare-fun c!860642 () Bool)

(assert (=> b!5028865 (= c!860642 (<= from!1228 0))))

(declare-fun b!5028866 () Bool)

(assert (=> b!5028866 (= e!3141521 0)))

(declare-fun b!5028867 () Bool)

(assert (=> b!5028867 (= e!3141517 e!3141521)))

(declare-fun c!860639 () Bool)

(assert (=> b!5028867 (= c!860639 (>= from!1228 call!350894))))

(declare-fun b!5028868 () Bool)

(assert (=> b!5028868 (= e!3141517 call!350894)))

(declare-fun b!5028869 () Bool)

(assert (=> b!5028869 (= e!3141519 lt!2081187)))

(assert (= (and d!1618341 c!860640) b!5028863))

(assert (= (and d!1618341 (not c!860640)) b!5028865))

(assert (= (and b!5028865 c!860642) b!5028869))

(assert (= (and b!5028865 (not c!860642)) b!5028862))

(assert (= (and d!1618341 res!2143525) b!5028864))

(assert (= (and b!5028864 c!860641) b!5028868))

(assert (= (and b!5028864 (not c!860641)) b!5028867))

(assert (= (and b!5028867 c!860639) b!5028866))

(assert (= (and b!5028867 (not c!860639)) b!5028861))

(assert (= (or b!5028868 b!5028867 b!5028861) bm!350889))

(assert (=> bm!350889 m!6063836))

(declare-fun m!6064110 () Bool)

(assert (=> b!5028862 m!6064110))

(declare-fun m!6064112 () Bool)

(assert (=> b!5028864 m!6064112))

(declare-fun m!6064114 () Bool)

(assert (=> d!1618341 m!6064114))

(assert (=> d!1618341 m!6064072))

(assert (=> b!5028564 d!1618341))

(declare-fun d!1618343 () Bool)

(declare-fun lt!2081301 () Int)

(assert (=> d!1618343 (= lt!2081301 (size!38738 (list!18799 totalInput!1141)))))

(declare-fun size!38740 (Conc!15450) Int)

(assert (=> d!1618343 (= lt!2081301 (size!38740 (c!860505 totalInput!1141)))))

(assert (=> d!1618343 (= (size!38737 totalInput!1141) lt!2081301)))

(declare-fun bs!1188262 () Bool)

(assert (= bs!1188262 d!1618343))

(assert (=> bs!1188262 m!6063850))

(assert (=> bs!1188262 m!6063850))

(assert (=> bs!1188262 m!6064022))

(declare-fun m!6064116 () Bool)

(assert (=> bs!1188262 m!6064116))

(assert (=> b!5028556 d!1618343))

(declare-fun condSetEmpty!28974 () Bool)

(assert (=> setNonEmpty!28968 (= condSetEmpty!28974 (= setRest!28968 ((as const (Array Context!6712 Bool)) false)))))

(declare-fun setRes!28974 () Bool)

(assert (=> setNonEmpty!28968 (= tp!1409181 setRes!28974)))

(declare-fun setIsEmpty!28974 () Bool)

(assert (=> setIsEmpty!28974 setRes!28974))

(declare-fun tp!1409208 () Bool)

(declare-fun e!3141524 () Bool)

(declare-fun setNonEmpty!28974 () Bool)

(declare-fun setElem!28974 () Context!6712)

(assert (=> setNonEmpty!28974 (= setRes!28974 (and tp!1409208 (inv!76781 setElem!28974) e!3141524))))

(declare-fun setRest!28974 () (InoxSet Context!6712))

(assert (=> setNonEmpty!28974 (= setRest!28968 ((_ map or) (store ((as const (Array Context!6712 Bool)) false) setElem!28974 true) setRest!28974))))

(declare-fun b!5028874 () Bool)

(declare-fun tp!1409209 () Bool)

(assert (=> b!5028874 (= e!3141524 tp!1409209)))

(assert (= (and setNonEmpty!28968 condSetEmpty!28974) setIsEmpty!28974))

(assert (= (and setNonEmpty!28968 (not condSetEmpty!28974)) setNonEmpty!28974))

(assert (= setNonEmpty!28974 b!5028874))

(declare-fun m!6064118 () Bool)

(assert (=> setNonEmpty!28974 m!6064118))

(declare-fun b!5028879 () Bool)

(declare-fun e!3141527 () Bool)

(declare-fun tp!1409214 () Bool)

(declare-fun tp!1409215 () Bool)

(assert (=> b!5028879 (= e!3141527 (and tp!1409214 tp!1409215))))

(assert (=> b!5028558 (= tp!1409180 e!3141527)))

(assert (= (and b!5028558 ((_ is Cons!58199) (exprs!3856 setElem!28968))) b!5028879))

(declare-fun b!5028888 () Bool)

(declare-fun tp!1409224 () Bool)

(declare-fun tp!1409223 () Bool)

(declare-fun e!3141532 () Bool)

(assert (=> b!5028888 (= e!3141532 (and (inv!76783 (left!42578 (c!860505 totalInput!1141))) tp!1409223 (inv!76783 (right!42908 (c!860505 totalInput!1141))) tp!1409224))))

(declare-fun b!5028890 () Bool)

(declare-fun e!3141533 () Bool)

(declare-fun tp!1409222 () Bool)

(assert (=> b!5028890 (= e!3141533 tp!1409222)))

(declare-fun b!5028889 () Bool)

(declare-fun inv!76789 (IArray!30961) Bool)

(assert (=> b!5028889 (= e!3141532 (and (inv!76789 (xs!18776 (c!860505 totalInput!1141))) e!3141533))))

(assert (=> b!5028559 (= tp!1409182 (and (inv!76783 (c!860505 totalInput!1141)) e!3141532))))

(assert (= (and b!5028559 ((_ is Node!15450) (c!860505 totalInput!1141))) b!5028888))

(assert (= b!5028889 b!5028890))

(assert (= (and b!5028559 ((_ is Leaf!25629) (c!860505 totalInput!1141))) b!5028889))

(declare-fun m!6064120 () Bool)

(assert (=> b!5028888 m!6064120))

(declare-fun m!6064122 () Bool)

(assert (=> b!5028888 m!6064122))

(declare-fun m!6064124 () Bool)

(assert (=> b!5028889 m!6064124))

(assert (=> b!5028559 m!6063844))

(check-sat (not b!5028862) (not b!5028705) (not b!5028559) (not b!5028879) (not b!5028801) (not d!1618331) (not b!5028890) (not b!5028706) (not bm!350886) (not b!5028786) (not d!1618307) (not d!1618333) (not b!5028805) (not b!5028841) (not d!1618329) (not b!5028727) (not b!5028858) (not b!5028794) (not b!5028823) (not b!5028847) (not b!5028817) (not b!5028796) (not b!5028843) (not d!1618319) (not bm!350881) (not b!5028864) (not bm!350889) (not b!5028888) (not b!5028842) (not d!1618269) (not b!5028773) (not b!5028728) (not b!5028857) (not b!5028854) (not d!1618343) (not d!1618327) (not setNonEmpty!28974) (not d!1618321) (not b!5028797) (not d!1618315) (not b!5028729) (not b!5028889) (not b!5028787) (not d!1618339) (not b!5028856) (not d!1618341) (not b!5028775) (not d!1618311) (not d!1618309) (not b!5028853) (not b!5028807) (not b!5028822) (not b!5028874) (not bm!350888) (not b!5028799) (not d!1618325) (not bm!350887) (not b!5028725) (not d!1618317) (not b!5028800))
(check-sat)
