; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531042 () Bool)

(assert start!531042)

(declare-fun b!5024225 () Bool)

(declare-fun res!2142255 () Bool)

(declare-fun e!3138655 () Bool)

(assert (=> b!5024225 (=> (not res!2142255) (not e!3138655))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079544 () Int)

(assert (=> b!5024225 (= res!2142255 (not (= from!1228 lt!2079544)))))

(declare-fun b!5024226 () Bool)

(declare-fun e!3138656 () Bool)

(declare-fun lt!2079548 () Int)

(declare-datatypes ((C!28068 0))(
  ( (C!28069 (val!23410 Int)) )
))
(declare-datatypes ((List!58264 0))(
  ( (Nil!58140) (Cons!58140 (h!64588 C!28068) (t!370656 List!58264)) )
))
(declare-datatypes ((IArray!30917 0))(
  ( (IArray!30918 (innerList!15516 List!58264)) )
))
(declare-datatypes ((Conc!15428 0))(
  ( (Node!15428 (left!42517 Conc!15428) (right!42847 Conc!15428) (csize!31086 Int) (cheight!15639 Int)) (Leaf!25596 (xs!18754 IArray!30917) (csize!31087 Int)) (Empty!15428) )
))
(declare-datatypes ((BalanceConc!30286 0))(
  ( (BalanceConc!30287 (c!859017 Conc!15428)) )
))
(declare-fun totalInput!1141 () BalanceConc!30286)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13909 0))(
  ( (ElementMatch!13909 (c!859018 C!28068)) (Concat!22702 (regOne!28330 Regex!13909) (regTwo!28330 Regex!13909)) (EmptyExpr!13909) (Star!13909 (reg!14238 Regex!13909)) (EmptyLang!13909) (Union!13909 (regOne!28331 Regex!13909) (regTwo!28331 Regex!13909)) )
))
(declare-datatypes ((List!58265 0))(
  ( (Nil!58141) (Cons!58141 (h!64589 Regex!13909) (t!370657 List!58265)) )
))
(declare-datatypes ((Context!6668 0))(
  ( (Context!6669 (exprs!3834 List!58265)) )
))
(declare-fun lt!2079545 () (InoxSet Context!6668))

(declare-fun matchZipper!663 ((InoxSet Context!6668) List!58264) Bool)

(declare-fun take!760 (List!58264 Int) List!58264)

(declare-fun drop!2560 (List!58264 Int) List!58264)

(declare-fun list!18762 (BalanceConc!30286) List!58264)

(assert (=> b!5024226 (= e!3138656 (matchZipper!663 lt!2079545 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548)))))

(declare-fun setElem!28850 () Context!6668)

(declare-fun setRes!28850 () Bool)

(declare-fun e!3138658 () Bool)

(declare-fun setNonEmpty!28850 () Bool)

(declare-fun tp!1408526 () Bool)

(declare-fun inv!76638 (Context!6668) Bool)

(assert (=> setNonEmpty!28850 (= setRes!28850 (and tp!1408526 (inv!76638 setElem!28850) e!3138658))))

(declare-fun z!4747 () (InoxSet Context!6668))

(declare-fun setRest!28850 () (InoxSet Context!6668))

(assert (=> setNonEmpty!28850 (= z!4747 ((_ map or) (store ((as const (Array Context!6668 Bool)) false) setElem!28850 true) setRest!28850))))

(declare-fun res!2142257 () Bool)

(declare-fun e!3138659 () Bool)

(assert (=> start!531042 (=> (not res!2142257) (not e!3138659))))

(assert (=> start!531042 (= res!2142257 (>= from!1228 0))))

(assert (=> start!531042 e!3138659))

(assert (=> start!531042 true))

(declare-fun e!3138657 () Bool)

(declare-fun inv!76639 (BalanceConc!30286) Bool)

(assert (=> start!531042 (and (inv!76639 totalInput!1141) e!3138657)))

(declare-fun condSetEmpty!28850 () Bool)

(assert (=> start!531042 (= condSetEmpty!28850 (= z!4747 ((as const (Array Context!6668 Bool)) false)))))

(assert (=> start!531042 setRes!28850))

(declare-fun b!5024227 () Bool)

(declare-fun tp!1408528 () Bool)

(assert (=> b!5024227 (= e!3138658 tp!1408528)))

(declare-fun b!5024228 () Bool)

(declare-fun tp!1408527 () Bool)

(declare-fun inv!76640 (Conc!15428) Bool)

(assert (=> b!5024228 (= e!3138657 (and (inv!76640 (c!859017 totalInput!1141)) tp!1408527))))

(declare-fun b!5024229 () Bool)

(declare-fun res!2142252 () Bool)

(assert (=> b!5024229 (=> (not res!2142252) (not e!3138655))))

(declare-fun lostCauseZipper!923 ((InoxSet Context!6668)) Bool)

(assert (=> b!5024229 (= res!2142252 (not (lostCauseZipper!923 z!4747)))))

(declare-fun lt!2079550 () List!58264)

(declare-fun b!5024230 () Bool)

(declare-fun e!3138654 () Bool)

(declare-fun lt!2079546 () List!58264)

(declare-fun lt!2079549 () C!28068)

(assert (=> b!5024230 (= e!3138654 (= lt!2079550 (Cons!58140 lt!2079549 lt!2079546)))))

(declare-fun lt!2079551 () List!58264)

(declare-fun apply!14134 (List!58264 Int) C!28068)

(assert (=> b!5024230 (= (Cons!58140 (apply!14134 lt!2079551 from!1228) lt!2079546) lt!2079550)))

(declare-datatypes ((Unit!149323 0))(
  ( (Unit!149324) )
))
(declare-fun lt!2079552 () Unit!149323)

(declare-fun lemmaDropTakeAddOneLeft!88 (List!58264 Int Int) Unit!149323)

(assert (=> b!5024230 (= lt!2079552 (lemmaDropTakeAddOneLeft!88 lt!2079551 from!1228 lt!2079548))))

(assert (=> b!5024230 (= lt!2079550 (take!760 (drop!2560 lt!2079551 from!1228) (+ 1 lt!2079548)))))

(declare-fun b!5024231 () Bool)

(assert (=> b!5024231 (= e!3138655 (not e!3138654))))

(declare-fun res!2142253 () Bool)

(assert (=> b!5024231 (=> res!2142253 e!3138654)))

(assert (=> b!5024231 (= res!2142253 (<= lt!2079548 0))))

(assert (=> b!5024231 (= lt!2079546 (take!760 (drop!2560 lt!2079551 (+ 1 from!1228)) lt!2079548))))

(assert (=> b!5024231 (= lt!2079551 (list!18762 totalInput!1141))))

(assert (=> b!5024231 e!3138656))

(declare-fun res!2142256 () Bool)

(assert (=> b!5024231 (=> res!2142256 e!3138656)))

(assert (=> b!5024231 (= res!2142256 (= lt!2079548 0))))

(declare-fun lt!2079547 () Unit!149323)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!106 ((InoxSet Context!6668) Int BalanceConc!30286) Unit!149323)

(assert (=> b!5024231 (= lt!2079547 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!106 lt!2079545 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!223 ((InoxSet Context!6668) Int BalanceConc!30286 Int) Int)

(assert (=> b!5024231 (= lt!2079548 (findLongestMatchInnerZipperFastV2!223 lt!2079545 (+ 1 from!1228) totalInput!1141 lt!2079544))))

(declare-fun derivationStepZipper!705 ((InoxSet Context!6668) C!28068) (InoxSet Context!6668))

(assert (=> b!5024231 (= lt!2079545 (derivationStepZipper!705 z!4747 lt!2079549))))

(declare-fun apply!14135 (BalanceConc!30286 Int) C!28068)

(assert (=> b!5024231 (= lt!2079549 (apply!14135 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28850 () Bool)

(assert (=> setIsEmpty!28850 setRes!28850))

(declare-fun b!5024232 () Bool)

(assert (=> b!5024232 (= e!3138659 e!3138655)))

(declare-fun res!2142254 () Bool)

(assert (=> b!5024232 (=> (not res!2142254) (not e!3138655))))

(assert (=> b!5024232 (= res!2142254 (<= from!1228 lt!2079544))))

(declare-fun size!38684 (BalanceConc!30286) Int)

(assert (=> b!5024232 (= lt!2079544 (size!38684 totalInput!1141))))

(assert (= (and start!531042 res!2142257) b!5024232))

(assert (= (and b!5024232 res!2142254) b!5024229))

(assert (= (and b!5024229 res!2142252) b!5024225))

(assert (= (and b!5024225 res!2142255) b!5024231))

(assert (= (and b!5024231 (not res!2142256)) b!5024226))

(assert (= (and b!5024231 (not res!2142253)) b!5024230))

(assert (= start!531042 b!5024228))

(assert (= (and start!531042 condSetEmpty!28850) setIsEmpty!28850))

(assert (= (and start!531042 (not condSetEmpty!28850)) setNonEmpty!28850))

(assert (= setNonEmpty!28850 b!5024227))

(declare-fun m!6059524 () Bool)

(assert (=> setNonEmpty!28850 m!6059524))

(declare-fun m!6059526 () Bool)

(assert (=> b!5024229 m!6059526))

(declare-fun m!6059528 () Bool)

(assert (=> b!5024230 m!6059528))

(declare-fun m!6059530 () Bool)

(assert (=> b!5024230 m!6059530))

(declare-fun m!6059532 () Bool)

(assert (=> b!5024230 m!6059532))

(assert (=> b!5024230 m!6059532))

(declare-fun m!6059534 () Bool)

(assert (=> b!5024230 m!6059534))

(declare-fun m!6059536 () Bool)

(assert (=> b!5024232 m!6059536))

(declare-fun m!6059538 () Bool)

(assert (=> start!531042 m!6059538))

(declare-fun m!6059540 () Bool)

(assert (=> b!5024231 m!6059540))

(declare-fun m!6059542 () Bool)

(assert (=> b!5024231 m!6059542))

(declare-fun m!6059544 () Bool)

(assert (=> b!5024231 m!6059544))

(declare-fun m!6059546 () Bool)

(assert (=> b!5024231 m!6059546))

(declare-fun m!6059548 () Bool)

(assert (=> b!5024231 m!6059548))

(declare-fun m!6059550 () Bool)

(assert (=> b!5024231 m!6059550))

(declare-fun m!6059552 () Bool)

(assert (=> b!5024231 m!6059552))

(assert (=> b!5024231 m!6059540))

(assert (=> b!5024226 m!6059552))

(assert (=> b!5024226 m!6059552))

(declare-fun m!6059554 () Bool)

(assert (=> b!5024226 m!6059554))

(assert (=> b!5024226 m!6059554))

(declare-fun m!6059556 () Bool)

(assert (=> b!5024226 m!6059556))

(assert (=> b!5024226 m!6059556))

(declare-fun m!6059558 () Bool)

(assert (=> b!5024226 m!6059558))

(declare-fun m!6059560 () Bool)

(assert (=> b!5024228 m!6059560))

(check-sat (not setNonEmpty!28850) (not b!5024231) (not b!5024226) (not b!5024229) (not b!5024228) (not b!5024230) (not b!5024232) (not start!531042) (not b!5024227))
(check-sat)
(get-model)

(declare-fun d!1617006 () Bool)

(declare-fun lt!2079558 () C!28068)

(declare-fun contains!19570 (List!58264 C!28068) Bool)

(assert (=> d!1617006 (contains!19570 lt!2079551 lt!2079558)))

(declare-fun e!3138667 () C!28068)

(assert (=> d!1617006 (= lt!2079558 e!3138667)))

(declare-fun c!859021 () Bool)

(assert (=> d!1617006 (= c!859021 (= from!1228 0))))

(declare-fun e!3138666 () Bool)

(assert (=> d!1617006 e!3138666))

(declare-fun res!2142262 () Bool)

(assert (=> d!1617006 (=> (not res!2142262) (not e!3138666))))

(assert (=> d!1617006 (= res!2142262 (<= 0 from!1228))))

(assert (=> d!1617006 (= (apply!14134 lt!2079551 from!1228) lt!2079558)))

(declare-fun b!5024241 () Bool)

(declare-fun size!38687 (List!58264) Int)

(assert (=> b!5024241 (= e!3138666 (< from!1228 (size!38687 lt!2079551)))))

(declare-fun b!5024242 () Bool)

(declare-fun head!10772 (List!58264) C!28068)

(assert (=> b!5024242 (= e!3138667 (head!10772 lt!2079551))))

(declare-fun b!5024243 () Bool)

(declare-fun tail!9905 (List!58264) List!58264)

(assert (=> b!5024243 (= e!3138667 (apply!14134 (tail!9905 lt!2079551) (- from!1228 1)))))

(assert (= (and d!1617006 res!2142262) b!5024241))

(assert (= (and d!1617006 c!859021) b!5024242))

(assert (= (and d!1617006 (not c!859021)) b!5024243))

(declare-fun m!6059566 () Bool)

(assert (=> d!1617006 m!6059566))

(declare-fun m!6059568 () Bool)

(assert (=> b!5024241 m!6059568))

(declare-fun m!6059570 () Bool)

(assert (=> b!5024242 m!6059570))

(declare-fun m!6059572 () Bool)

(assert (=> b!5024243 m!6059572))

(assert (=> b!5024243 m!6059572))

(declare-fun m!6059574 () Bool)

(assert (=> b!5024243 m!6059574))

(assert (=> b!5024230 d!1617006))

(declare-fun d!1617010 () Bool)

(assert (=> d!1617010 (= (Cons!58140 (apply!14134 lt!2079551 from!1228) (take!760 (drop!2560 lt!2079551 (+ from!1228 1)) lt!2079548)) (take!760 (drop!2560 lt!2079551 from!1228) (+ lt!2079548 1)))))

(declare-fun lt!2079566 () Unit!149323)

(declare-fun choose!37166 (List!58264 Int Int) Unit!149323)

(assert (=> d!1617010 (= lt!2079566 (choose!37166 lt!2079551 from!1228 lt!2079548))))

(declare-fun e!3138676 () Bool)

(assert (=> d!1617010 e!3138676))

(declare-fun res!2142268 () Bool)

(assert (=> d!1617010 (=> (not res!2142268) (not e!3138676))))

(assert (=> d!1617010 (= res!2142268 (>= from!1228 0))))

(assert (=> d!1617010 (= (lemmaDropTakeAddOneLeft!88 lt!2079551 from!1228 lt!2079548) lt!2079566)))

(declare-fun b!5024255 () Bool)

(assert (=> b!5024255 (= e!3138676 (< from!1228 (size!38687 lt!2079551)))))

(assert (= (and d!1617010 res!2142268) b!5024255))

(assert (=> d!1617010 m!6059532))

(assert (=> d!1617010 m!6059532))

(declare-fun m!6059586 () Bool)

(assert (=> d!1617010 m!6059586))

(declare-fun m!6059588 () Bool)

(assert (=> d!1617010 m!6059588))

(declare-fun m!6059590 () Bool)

(assert (=> d!1617010 m!6059590))

(assert (=> d!1617010 m!6059590))

(declare-fun m!6059592 () Bool)

(assert (=> d!1617010 m!6059592))

(assert (=> d!1617010 m!6059528))

(assert (=> b!5024255 m!6059568))

(assert (=> b!5024230 d!1617010))

(declare-fun b!5024292 () Bool)

(declare-fun e!3138701 () Int)

(assert (=> b!5024292 (= e!3138701 0)))

(declare-fun b!5024293 () Bool)

(declare-fun e!3138698 () Int)

(assert (=> b!5024293 (= e!3138698 (size!38687 (drop!2560 lt!2079551 from!1228)))))

(declare-fun b!5024294 () Bool)

(declare-fun e!3138699 () List!58264)

(assert (=> b!5024294 (= e!3138699 Nil!58140)))

(declare-fun d!1617014 () Bool)

(declare-fun e!3138700 () Bool)

(assert (=> d!1617014 e!3138700))

(declare-fun res!2142275 () Bool)

(assert (=> d!1617014 (=> (not res!2142275) (not e!3138700))))

(declare-fun lt!2079573 () List!58264)

(declare-fun content!10299 (List!58264) (InoxSet C!28068))

(assert (=> d!1617014 (= res!2142275 (= ((_ map implies) (content!10299 lt!2079573) (content!10299 (drop!2560 lt!2079551 from!1228))) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617014 (= lt!2079573 e!3138699)))

(declare-fun c!859040 () Bool)

(get-info :version)

(assert (=> d!1617014 (= c!859040 (or ((_ is Nil!58140) (drop!2560 lt!2079551 from!1228)) (<= (+ 1 lt!2079548) 0)))))

(assert (=> d!1617014 (= (take!760 (drop!2560 lt!2079551 from!1228) (+ 1 lt!2079548)) lt!2079573)))

(declare-fun b!5024295 () Bool)

(assert (=> b!5024295 (= e!3138698 (+ 1 lt!2079548))))

(declare-fun b!5024296 () Bool)

(assert (=> b!5024296 (= e!3138700 (= (size!38687 lt!2079573) e!3138701))))

(declare-fun c!859042 () Bool)

(assert (=> b!5024296 (= c!859042 (<= (+ 1 lt!2079548) 0))))

(declare-fun b!5024297 () Bool)

(assert (=> b!5024297 (= e!3138699 (Cons!58140 (h!64588 (drop!2560 lt!2079551 from!1228)) (take!760 (t!370656 (drop!2560 lt!2079551 from!1228)) (- (+ 1 lt!2079548) 1))))))

(declare-fun b!5024298 () Bool)

(assert (=> b!5024298 (= e!3138701 e!3138698)))

(declare-fun c!859041 () Bool)

(assert (=> b!5024298 (= c!859041 (>= (+ 1 lt!2079548) (size!38687 (drop!2560 lt!2079551 from!1228))))))

(assert (= (and d!1617014 c!859040) b!5024294))

(assert (= (and d!1617014 (not c!859040)) b!5024297))

(assert (= (and d!1617014 res!2142275) b!5024296))

(assert (= (and b!5024296 c!859042) b!5024292))

(assert (= (and b!5024296 (not c!859042)) b!5024298))

(assert (= (and b!5024298 c!859041) b!5024293))

(assert (= (and b!5024298 (not c!859041)) b!5024295))

(declare-fun m!6059612 () Bool)

(assert (=> d!1617014 m!6059612))

(assert (=> d!1617014 m!6059532))

(declare-fun m!6059614 () Bool)

(assert (=> d!1617014 m!6059614))

(assert (=> b!5024293 m!6059532))

(declare-fun m!6059616 () Bool)

(assert (=> b!5024293 m!6059616))

(assert (=> b!5024298 m!6059532))

(assert (=> b!5024298 m!6059616))

(declare-fun m!6059618 () Bool)

(assert (=> b!5024297 m!6059618))

(declare-fun m!6059620 () Bool)

(assert (=> b!5024296 m!6059620))

(assert (=> b!5024230 d!1617014))

(declare-fun b!5024345 () Bool)

(declare-fun e!3138731 () List!58264)

(assert (=> b!5024345 (= e!3138731 (drop!2560 (t!370656 lt!2079551) (- from!1228 1)))))

(declare-fun b!5024346 () Bool)

(assert (=> b!5024346 (= e!3138731 lt!2079551)))

(declare-fun b!5024347 () Bool)

(declare-fun e!3138729 () List!58264)

(assert (=> b!5024347 (= e!3138729 Nil!58140)))

(declare-fun bm!350668 () Bool)

(declare-fun call!350673 () Int)

(assert (=> bm!350668 (= call!350673 (size!38687 lt!2079551))))

(declare-fun b!5024348 () Bool)

(declare-fun e!3138727 () Int)

(declare-fun e!3138728 () Int)

(assert (=> b!5024348 (= e!3138727 e!3138728)))

(declare-fun c!859065 () Bool)

(assert (=> b!5024348 (= c!859065 (>= from!1228 call!350673))))

(declare-fun b!5024349 () Bool)

(assert (=> b!5024349 (= e!3138729 e!3138731)))

(declare-fun c!859066 () Bool)

(assert (=> b!5024349 (= c!859066 (<= from!1228 0))))

(declare-fun b!5024350 () Bool)

(assert (=> b!5024350 (= e!3138728 (- call!350673 from!1228))))

(declare-fun b!5024344 () Bool)

(declare-fun e!3138730 () Bool)

(declare-fun lt!2079579 () List!58264)

(assert (=> b!5024344 (= e!3138730 (= (size!38687 lt!2079579) e!3138727))))

(declare-fun c!859064 () Bool)

(assert (=> b!5024344 (= c!859064 (<= from!1228 0))))

(declare-fun d!1617020 () Bool)

(assert (=> d!1617020 e!3138730))

(declare-fun res!2142281 () Bool)

(assert (=> d!1617020 (=> (not res!2142281) (not e!3138730))))

(assert (=> d!1617020 (= res!2142281 (= ((_ map implies) (content!10299 lt!2079579) (content!10299 lt!2079551)) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617020 (= lt!2079579 e!3138729)))

(declare-fun c!859063 () Bool)

(assert (=> d!1617020 (= c!859063 ((_ is Nil!58140) lt!2079551))))

(assert (=> d!1617020 (= (drop!2560 lt!2079551 from!1228) lt!2079579)))

(declare-fun b!5024351 () Bool)

(assert (=> b!5024351 (= e!3138727 call!350673)))

(declare-fun b!5024352 () Bool)

(assert (=> b!5024352 (= e!3138728 0)))

(assert (= (and d!1617020 c!859063) b!5024347))

(assert (= (and d!1617020 (not c!859063)) b!5024349))

(assert (= (and b!5024349 c!859066) b!5024346))

(assert (= (and b!5024349 (not c!859066)) b!5024345))

(assert (= (and d!1617020 res!2142281) b!5024344))

(assert (= (and b!5024344 c!859064) b!5024351))

(assert (= (and b!5024344 (not c!859064)) b!5024348))

(assert (= (and b!5024348 c!859065) b!5024352))

(assert (= (and b!5024348 (not c!859065)) b!5024350))

(assert (= (or b!5024351 b!5024348 b!5024350) bm!350668))

(declare-fun m!6059630 () Bool)

(assert (=> b!5024345 m!6059630))

(assert (=> bm!350668 m!6059568))

(declare-fun m!6059632 () Bool)

(assert (=> b!5024344 m!6059632))

(declare-fun m!6059634 () Bool)

(assert (=> d!1617020 m!6059634))

(declare-fun m!6059636 () Bool)

(assert (=> d!1617020 m!6059636))

(assert (=> b!5024230 d!1617020))

(declare-fun d!1617024 () Bool)

(declare-fun c!859072 () Bool)

(declare-fun isEmpty!31439 (List!58264) Bool)

(assert (=> d!1617024 (= c!859072 (isEmpty!31439 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548)))))

(declare-fun e!3138740 () Bool)

(assert (=> d!1617024 (= (matchZipper!663 lt!2079545 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548)) e!3138740)))

(declare-fun b!5024366 () Bool)

(declare-fun nullableZipper!924 ((InoxSet Context!6668)) Bool)

(assert (=> b!5024366 (= e!3138740 (nullableZipper!924 lt!2079545))))

(declare-fun b!5024367 () Bool)

(assert (=> b!5024367 (= e!3138740 (matchZipper!663 (derivationStepZipper!705 lt!2079545 (head!10772 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548))) (tail!9905 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548))))))

(assert (= (and d!1617024 c!859072) b!5024366))

(assert (= (and d!1617024 (not c!859072)) b!5024367))

(assert (=> d!1617024 m!6059556))

(declare-fun m!6059642 () Bool)

(assert (=> d!1617024 m!6059642))

(declare-fun m!6059644 () Bool)

(assert (=> b!5024366 m!6059644))

(assert (=> b!5024367 m!6059556))

(declare-fun m!6059646 () Bool)

(assert (=> b!5024367 m!6059646))

(assert (=> b!5024367 m!6059646))

(declare-fun m!6059648 () Bool)

(assert (=> b!5024367 m!6059648))

(assert (=> b!5024367 m!6059556))

(declare-fun m!6059650 () Bool)

(assert (=> b!5024367 m!6059650))

(assert (=> b!5024367 m!6059648))

(assert (=> b!5024367 m!6059650))

(declare-fun m!6059652 () Bool)

(assert (=> b!5024367 m!6059652))

(assert (=> b!5024226 d!1617024))

(declare-fun b!5024368 () Bool)

(declare-fun e!3138744 () Int)

(assert (=> b!5024368 (= e!3138744 0)))

(declare-fun b!5024369 () Bool)

(declare-fun e!3138741 () Int)

(assert (=> b!5024369 (= e!3138741 (size!38687 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5024370 () Bool)

(declare-fun e!3138742 () List!58264)

(assert (=> b!5024370 (= e!3138742 Nil!58140)))

(declare-fun d!1617028 () Bool)

(declare-fun e!3138743 () Bool)

(assert (=> d!1617028 e!3138743))

(declare-fun res!2142285 () Bool)

(assert (=> d!1617028 (=> (not res!2142285) (not e!3138743))))

(declare-fun lt!2079580 () List!58264)

(assert (=> d!1617028 (= res!2142285 (= ((_ map implies) (content!10299 lt!2079580) (content!10299 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617028 (= lt!2079580 e!3138742)))

(declare-fun c!859073 () Bool)

(assert (=> d!1617028 (= c!859073 (or ((_ is Nil!58140) (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228))) (<= lt!2079548 0)))))

(assert (=> d!1617028 (= (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079548) lt!2079580)))

(declare-fun b!5024371 () Bool)

(assert (=> b!5024371 (= e!3138741 lt!2079548)))

(declare-fun b!5024372 () Bool)

(assert (=> b!5024372 (= e!3138743 (= (size!38687 lt!2079580) e!3138744))))

(declare-fun c!859075 () Bool)

(assert (=> b!5024372 (= c!859075 (<= lt!2079548 0))))

(declare-fun b!5024373 () Bool)

(assert (=> b!5024373 (= e!3138742 (Cons!58140 (h!64588 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228))) (take!760 (t!370656 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228))) (- lt!2079548 1))))))

(declare-fun b!5024374 () Bool)

(assert (=> b!5024374 (= e!3138744 e!3138741)))

(declare-fun c!859074 () Bool)

(assert (=> b!5024374 (= c!859074 (>= lt!2079548 (size!38687 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)))))))

(assert (= (and d!1617028 c!859073) b!5024370))

(assert (= (and d!1617028 (not c!859073)) b!5024373))

(assert (= (and d!1617028 res!2142285) b!5024372))

(assert (= (and b!5024372 c!859075) b!5024368))

(assert (= (and b!5024372 (not c!859075)) b!5024374))

(assert (= (and b!5024374 c!859074) b!5024369))

(assert (= (and b!5024374 (not c!859074)) b!5024371))

(declare-fun m!6059654 () Bool)

(assert (=> d!1617028 m!6059654))

(assert (=> d!1617028 m!6059554))

(declare-fun m!6059656 () Bool)

(assert (=> d!1617028 m!6059656))

(assert (=> b!5024369 m!6059554))

(declare-fun m!6059658 () Bool)

(assert (=> b!5024369 m!6059658))

(assert (=> b!5024374 m!6059554))

(assert (=> b!5024374 m!6059658))

(declare-fun m!6059660 () Bool)

(assert (=> b!5024373 m!6059660))

(declare-fun m!6059662 () Bool)

(assert (=> b!5024372 m!6059662))

(assert (=> b!5024226 d!1617028))

(declare-fun b!5024376 () Bool)

(declare-fun e!3138749 () List!58264)

(assert (=> b!5024376 (= e!3138749 (drop!2560 (t!370656 (list!18762 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5024377 () Bool)

(assert (=> b!5024377 (= e!3138749 (list!18762 totalInput!1141))))

(declare-fun b!5024378 () Bool)

(declare-fun e!3138747 () List!58264)

(assert (=> b!5024378 (= e!3138747 Nil!58140)))

(declare-fun bm!350669 () Bool)

(declare-fun call!350674 () Int)

(assert (=> bm!350669 (= call!350674 (size!38687 (list!18762 totalInput!1141)))))

(declare-fun b!5024379 () Bool)

(declare-fun e!3138745 () Int)

(declare-fun e!3138746 () Int)

(assert (=> b!5024379 (= e!3138745 e!3138746)))

(declare-fun c!859078 () Bool)

(assert (=> b!5024379 (= c!859078 (>= (+ 1 from!1228) call!350674))))

(declare-fun b!5024380 () Bool)

(assert (=> b!5024380 (= e!3138747 e!3138749)))

(declare-fun c!859079 () Bool)

(assert (=> b!5024380 (= c!859079 (<= (+ 1 from!1228) 0))))

(declare-fun b!5024381 () Bool)

(assert (=> b!5024381 (= e!3138746 (- call!350674 (+ 1 from!1228)))))

(declare-fun b!5024375 () Bool)

(declare-fun e!3138748 () Bool)

(declare-fun lt!2079581 () List!58264)

(assert (=> b!5024375 (= e!3138748 (= (size!38687 lt!2079581) e!3138745))))

(declare-fun c!859077 () Bool)

(assert (=> b!5024375 (= c!859077 (<= (+ 1 from!1228) 0))))

(declare-fun d!1617030 () Bool)

(assert (=> d!1617030 e!3138748))

(declare-fun res!2142286 () Bool)

(assert (=> d!1617030 (=> (not res!2142286) (not e!3138748))))

(assert (=> d!1617030 (= res!2142286 (= ((_ map implies) (content!10299 lt!2079581) (content!10299 (list!18762 totalInput!1141))) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617030 (= lt!2079581 e!3138747)))

(declare-fun c!859076 () Bool)

(assert (=> d!1617030 (= c!859076 ((_ is Nil!58140) (list!18762 totalInput!1141)))))

(assert (=> d!1617030 (= (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) lt!2079581)))

(declare-fun b!5024382 () Bool)

(assert (=> b!5024382 (= e!3138745 call!350674)))

(declare-fun b!5024383 () Bool)

(assert (=> b!5024383 (= e!3138746 0)))

(assert (= (and d!1617030 c!859076) b!5024378))

(assert (= (and d!1617030 (not c!859076)) b!5024380))

(assert (= (and b!5024380 c!859079) b!5024377))

(assert (= (and b!5024380 (not c!859079)) b!5024376))

(assert (= (and d!1617030 res!2142286) b!5024375))

(assert (= (and b!5024375 c!859077) b!5024382))

(assert (= (and b!5024375 (not c!859077)) b!5024379))

(assert (= (and b!5024379 c!859078) b!5024383))

(assert (= (and b!5024379 (not c!859078)) b!5024381))

(assert (= (or b!5024382 b!5024379 b!5024381) bm!350669))

(declare-fun m!6059664 () Bool)

(assert (=> b!5024376 m!6059664))

(assert (=> bm!350669 m!6059552))

(declare-fun m!6059666 () Bool)

(assert (=> bm!350669 m!6059666))

(declare-fun m!6059668 () Bool)

(assert (=> b!5024375 m!6059668))

(declare-fun m!6059670 () Bool)

(assert (=> d!1617030 m!6059670))

(assert (=> d!1617030 m!6059552))

(declare-fun m!6059672 () Bool)

(assert (=> d!1617030 m!6059672))

(assert (=> b!5024226 d!1617030))

(declare-fun d!1617032 () Bool)

(declare-fun list!18764 (Conc!15428) List!58264)

(assert (=> d!1617032 (= (list!18762 totalInput!1141) (list!18764 (c!859017 totalInput!1141)))))

(declare-fun bs!1187716 () Bool)

(assert (= bs!1187716 d!1617032))

(declare-fun m!6059674 () Bool)

(assert (=> bs!1187716 m!6059674))

(assert (=> b!5024226 d!1617032))

(declare-fun d!1617034 () Bool)

(declare-fun isBalanced!4299 (Conc!15428) Bool)

(assert (=> d!1617034 (= (inv!76639 totalInput!1141) (isBalanced!4299 (c!859017 totalInput!1141)))))

(declare-fun bs!1187717 () Bool)

(assert (= bs!1187717 d!1617034))

(declare-fun m!6059676 () Bool)

(assert (=> bs!1187717 m!6059676))

(assert (=> start!531042 d!1617034))

(declare-fun b!5024404 () Bool)

(declare-fun e!3138766 () Bool)

(assert (=> b!5024404 (= e!3138766 (<= (+ 1 from!1228) (size!38684 totalInput!1141)))))

(declare-fun b!5024405 () Bool)

(declare-fun e!3138762 () Int)

(assert (=> b!5024405 (= e!3138762 1)))

(declare-fun b!5024406 () Bool)

(declare-fun e!3138763 () Bool)

(assert (=> b!5024406 (= e!3138763 (lostCauseZipper!923 lt!2079545))))

(declare-fun b!5024407 () Bool)

(declare-fun e!3138765 () Int)

(declare-fun e!3138764 () Int)

(assert (=> b!5024407 (= e!3138765 e!3138764)))

(declare-fun lt!2079592 () (InoxSet Context!6668))

(assert (=> b!5024407 (= lt!2079592 (derivationStepZipper!705 lt!2079545 (apply!14135 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2079594 () Int)

(assert (=> b!5024407 (= lt!2079594 (findLongestMatchInnerZipperFastV2!223 lt!2079592 (+ 1 from!1228 1) totalInput!1141 lt!2079544))))

(declare-fun c!859090 () Bool)

(assert (=> b!5024407 (= c!859090 (> lt!2079594 0))))

(declare-fun b!5024408 () Bool)

(declare-fun c!859092 () Bool)

(assert (=> b!5024408 (= c!859092 (nullableZipper!924 lt!2079592))))

(assert (=> b!5024408 (= e!3138764 e!3138762)))

(declare-fun b!5024409 () Bool)

(assert (=> b!5024409 (= e!3138765 0)))

(declare-fun d!1617036 () Bool)

(declare-fun lt!2079593 () Int)

(assert (=> d!1617036 (and (>= lt!2079593 0) (<= lt!2079593 (- lt!2079544 (+ 1 from!1228))))))

(assert (=> d!1617036 (= lt!2079593 e!3138765)))

(declare-fun c!859091 () Bool)

(assert (=> d!1617036 (= c!859091 e!3138763)))

(declare-fun res!2142291 () Bool)

(assert (=> d!1617036 (=> res!2142291 e!3138763)))

(assert (=> d!1617036 (= res!2142291 (= (+ 1 from!1228) lt!2079544))))

(assert (=> d!1617036 e!3138766))

(declare-fun res!2142292 () Bool)

(assert (=> d!1617036 (=> (not res!2142292) (not e!3138766))))

(assert (=> d!1617036 (= res!2142292 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617036 (= (findLongestMatchInnerZipperFastV2!223 lt!2079545 (+ 1 from!1228) totalInput!1141 lt!2079544) lt!2079593)))

(declare-fun b!5024410 () Bool)

(assert (=> b!5024410 (= e!3138762 0)))

(declare-fun b!5024411 () Bool)

(assert (=> b!5024411 (= e!3138764 (+ 1 lt!2079594))))

(assert (= (and d!1617036 res!2142292) b!5024404))

(assert (= (and d!1617036 (not res!2142291)) b!5024406))

(assert (= (and d!1617036 c!859091) b!5024409))

(assert (= (and d!1617036 (not c!859091)) b!5024407))

(assert (= (and b!5024407 c!859090) b!5024411))

(assert (= (and b!5024407 (not c!859090)) b!5024408))

(assert (= (and b!5024408 c!859092) b!5024405))

(assert (= (and b!5024408 (not c!859092)) b!5024410))

(assert (=> b!5024404 m!6059536))

(declare-fun m!6059678 () Bool)

(assert (=> b!5024406 m!6059678))

(declare-fun m!6059680 () Bool)

(assert (=> b!5024407 m!6059680))

(assert (=> b!5024407 m!6059680))

(declare-fun m!6059682 () Bool)

(assert (=> b!5024407 m!6059682))

(declare-fun m!6059684 () Bool)

(assert (=> b!5024407 m!6059684))

(declare-fun m!6059686 () Bool)

(assert (=> b!5024408 m!6059686))

(assert (=> b!5024231 d!1617036))

(declare-fun d!1617038 () Bool)

(declare-fun e!3138772 () Bool)

(assert (=> d!1617038 e!3138772))

(declare-fun res!2142298 () Bool)

(assert (=> d!1617038 (=> res!2142298 e!3138772)))

(assert (=> d!1617038 (= res!2142298 (= (findLongestMatchInnerZipperFastV2!223 lt!2079545 (+ 1 from!1228) totalInput!1141 (size!38684 totalInput!1141)) 0))))

(declare-fun lt!2079597 () Unit!149323)

(declare-fun choose!37167 ((InoxSet Context!6668) Int BalanceConc!30286) Unit!149323)

(assert (=> d!1617038 (= lt!2079597 (choose!37167 lt!2079545 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3138771 () Bool)

(assert (=> d!1617038 e!3138771))

(declare-fun res!2142297 () Bool)

(assert (=> d!1617038 (=> (not res!2142297) (not e!3138771))))

(assert (=> d!1617038 (= res!2142297 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617038 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!106 lt!2079545 (+ 1 from!1228) totalInput!1141) lt!2079597)))

(declare-fun b!5024416 () Bool)

(assert (=> b!5024416 (= e!3138771 (<= (+ 1 from!1228) (size!38684 totalInput!1141)))))

(declare-fun b!5024417 () Bool)

(assert (=> b!5024417 (= e!3138772 (matchZipper!663 lt!2079545 (take!760 (drop!2560 (list!18762 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!223 lt!2079545 (+ 1 from!1228) totalInput!1141 (size!38684 totalInput!1141)))))))

(assert (= (and d!1617038 res!2142297) b!5024416))

(assert (= (and d!1617038 (not res!2142298)) b!5024417))

(assert (=> d!1617038 m!6059536))

(assert (=> d!1617038 m!6059536))

(declare-fun m!6059688 () Bool)

(assert (=> d!1617038 m!6059688))

(declare-fun m!6059690 () Bool)

(assert (=> d!1617038 m!6059690))

(assert (=> b!5024416 m!6059536))

(assert (=> b!5024417 m!6059552))

(assert (=> b!5024417 m!6059536))

(declare-fun m!6059692 () Bool)

(assert (=> b!5024417 m!6059692))

(declare-fun m!6059694 () Bool)

(assert (=> b!5024417 m!6059694))

(assert (=> b!5024417 m!6059554))

(assert (=> b!5024417 m!6059688))

(assert (=> b!5024417 m!6059692))

(assert (=> b!5024417 m!6059552))

(assert (=> b!5024417 m!6059554))

(assert (=> b!5024417 m!6059536))

(assert (=> b!5024417 m!6059688))

(assert (=> b!5024231 d!1617038))

(assert (=> b!5024231 d!1617032))

(declare-fun d!1617040 () Bool)

(declare-fun lt!2079600 () C!28068)

(assert (=> d!1617040 (= lt!2079600 (apply!14134 (list!18762 totalInput!1141) from!1228))))

(declare-fun apply!14137 (Conc!15428 Int) C!28068)

(assert (=> d!1617040 (= lt!2079600 (apply!14137 (c!859017 totalInput!1141) from!1228))))

(declare-fun e!3138775 () Bool)

(assert (=> d!1617040 e!3138775))

(declare-fun res!2142301 () Bool)

(assert (=> d!1617040 (=> (not res!2142301) (not e!3138775))))

(assert (=> d!1617040 (= res!2142301 (<= 0 from!1228))))

(assert (=> d!1617040 (= (apply!14135 totalInput!1141 from!1228) lt!2079600)))

(declare-fun b!5024420 () Bool)

(assert (=> b!5024420 (= e!3138775 (< from!1228 (size!38684 totalInput!1141)))))

(assert (= (and d!1617040 res!2142301) b!5024420))

(assert (=> d!1617040 m!6059552))

(assert (=> d!1617040 m!6059552))

(declare-fun m!6059696 () Bool)

(assert (=> d!1617040 m!6059696))

(declare-fun m!6059698 () Bool)

(assert (=> d!1617040 m!6059698))

(assert (=> b!5024420 m!6059536))

(assert (=> b!5024231 d!1617040))

(declare-fun b!5024421 () Bool)

(declare-fun e!3138779 () Int)

(assert (=> b!5024421 (= e!3138779 0)))

(declare-fun b!5024422 () Bool)

(declare-fun e!3138776 () Int)

(assert (=> b!5024422 (= e!3138776 (size!38687 (drop!2560 lt!2079551 (+ 1 from!1228))))))

(declare-fun b!5024423 () Bool)

(declare-fun e!3138777 () List!58264)

(assert (=> b!5024423 (= e!3138777 Nil!58140)))

(declare-fun d!1617042 () Bool)

(declare-fun e!3138778 () Bool)

(assert (=> d!1617042 e!3138778))

(declare-fun res!2142302 () Bool)

(assert (=> d!1617042 (=> (not res!2142302) (not e!3138778))))

(declare-fun lt!2079601 () List!58264)

(assert (=> d!1617042 (= res!2142302 (= ((_ map implies) (content!10299 lt!2079601) (content!10299 (drop!2560 lt!2079551 (+ 1 from!1228)))) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617042 (= lt!2079601 e!3138777)))

(declare-fun c!859093 () Bool)

(assert (=> d!1617042 (= c!859093 (or ((_ is Nil!58140) (drop!2560 lt!2079551 (+ 1 from!1228))) (<= lt!2079548 0)))))

(assert (=> d!1617042 (= (take!760 (drop!2560 lt!2079551 (+ 1 from!1228)) lt!2079548) lt!2079601)))

(declare-fun b!5024424 () Bool)

(assert (=> b!5024424 (= e!3138776 lt!2079548)))

(declare-fun b!5024425 () Bool)

(assert (=> b!5024425 (= e!3138778 (= (size!38687 lt!2079601) e!3138779))))

(declare-fun c!859095 () Bool)

(assert (=> b!5024425 (= c!859095 (<= lt!2079548 0))))

(declare-fun b!5024426 () Bool)

(assert (=> b!5024426 (= e!3138777 (Cons!58140 (h!64588 (drop!2560 lt!2079551 (+ 1 from!1228))) (take!760 (t!370656 (drop!2560 lt!2079551 (+ 1 from!1228))) (- lt!2079548 1))))))

(declare-fun b!5024427 () Bool)

(assert (=> b!5024427 (= e!3138779 e!3138776)))

(declare-fun c!859094 () Bool)

(assert (=> b!5024427 (= c!859094 (>= lt!2079548 (size!38687 (drop!2560 lt!2079551 (+ 1 from!1228)))))))

(assert (= (and d!1617042 c!859093) b!5024423))

(assert (= (and d!1617042 (not c!859093)) b!5024426))

(assert (= (and d!1617042 res!2142302) b!5024425))

(assert (= (and b!5024425 c!859095) b!5024421))

(assert (= (and b!5024425 (not c!859095)) b!5024427))

(assert (= (and b!5024427 c!859094) b!5024422))

(assert (= (and b!5024427 (not c!859094)) b!5024424))

(declare-fun m!6059700 () Bool)

(assert (=> d!1617042 m!6059700))

(assert (=> d!1617042 m!6059540))

(declare-fun m!6059702 () Bool)

(assert (=> d!1617042 m!6059702))

(assert (=> b!5024422 m!6059540))

(declare-fun m!6059704 () Bool)

(assert (=> b!5024422 m!6059704))

(assert (=> b!5024427 m!6059540))

(assert (=> b!5024427 m!6059704))

(declare-fun m!6059706 () Bool)

(assert (=> b!5024426 m!6059706))

(declare-fun m!6059708 () Bool)

(assert (=> b!5024425 m!6059708))

(assert (=> b!5024231 d!1617042))

(declare-fun b!5024429 () Bool)

(declare-fun e!3138784 () List!58264)

(assert (=> b!5024429 (= e!3138784 (drop!2560 (t!370656 lt!2079551) (- (+ 1 from!1228) 1)))))

(declare-fun b!5024430 () Bool)

(assert (=> b!5024430 (= e!3138784 lt!2079551)))

(declare-fun b!5024431 () Bool)

(declare-fun e!3138782 () List!58264)

(assert (=> b!5024431 (= e!3138782 Nil!58140)))

(declare-fun bm!350670 () Bool)

(declare-fun call!350675 () Int)

(assert (=> bm!350670 (= call!350675 (size!38687 lt!2079551))))

(declare-fun b!5024432 () Bool)

(declare-fun e!3138780 () Int)

(declare-fun e!3138781 () Int)

(assert (=> b!5024432 (= e!3138780 e!3138781)))

(declare-fun c!859098 () Bool)

(assert (=> b!5024432 (= c!859098 (>= (+ 1 from!1228) call!350675))))

(declare-fun b!5024433 () Bool)

(assert (=> b!5024433 (= e!3138782 e!3138784)))

(declare-fun c!859099 () Bool)

(assert (=> b!5024433 (= c!859099 (<= (+ 1 from!1228) 0))))

(declare-fun b!5024434 () Bool)

(assert (=> b!5024434 (= e!3138781 (- call!350675 (+ 1 from!1228)))))

(declare-fun b!5024428 () Bool)

(declare-fun e!3138783 () Bool)

(declare-fun lt!2079602 () List!58264)

(assert (=> b!5024428 (= e!3138783 (= (size!38687 lt!2079602) e!3138780))))

(declare-fun c!859097 () Bool)

(assert (=> b!5024428 (= c!859097 (<= (+ 1 from!1228) 0))))

(declare-fun d!1617044 () Bool)

(assert (=> d!1617044 e!3138783))

(declare-fun res!2142303 () Bool)

(assert (=> d!1617044 (=> (not res!2142303) (not e!3138783))))

(assert (=> d!1617044 (= res!2142303 (= ((_ map implies) (content!10299 lt!2079602) (content!10299 lt!2079551)) ((as const (InoxSet C!28068)) true)))))

(assert (=> d!1617044 (= lt!2079602 e!3138782)))

(declare-fun c!859096 () Bool)

(assert (=> d!1617044 (= c!859096 ((_ is Nil!58140) lt!2079551))))

(assert (=> d!1617044 (= (drop!2560 lt!2079551 (+ 1 from!1228)) lt!2079602)))

(declare-fun b!5024435 () Bool)

(assert (=> b!5024435 (= e!3138780 call!350675)))

(declare-fun b!5024436 () Bool)

(assert (=> b!5024436 (= e!3138781 0)))

(assert (= (and d!1617044 c!859096) b!5024431))

(assert (= (and d!1617044 (not c!859096)) b!5024433))

(assert (= (and b!5024433 c!859099) b!5024430))

(assert (= (and b!5024433 (not c!859099)) b!5024429))

(assert (= (and d!1617044 res!2142303) b!5024428))

(assert (= (and b!5024428 c!859097) b!5024435))

(assert (= (and b!5024428 (not c!859097)) b!5024432))

(assert (= (and b!5024432 c!859098) b!5024436))

(assert (= (and b!5024432 (not c!859098)) b!5024434))

(assert (= (or b!5024435 b!5024432 b!5024434) bm!350670))

(declare-fun m!6059710 () Bool)

(assert (=> b!5024429 m!6059710))

(assert (=> bm!350670 m!6059568))

(declare-fun m!6059712 () Bool)

(assert (=> b!5024428 m!6059712))

(declare-fun m!6059714 () Bool)

(assert (=> d!1617044 m!6059714))

(assert (=> d!1617044 m!6059636))

(assert (=> b!5024231 d!1617044))

(declare-fun d!1617046 () Bool)

(assert (=> d!1617046 true))

(declare-fun lambda!249074 () Int)

(declare-fun flatMap!298 ((InoxSet Context!6668) Int) (InoxSet Context!6668))

(assert (=> d!1617046 (= (derivationStepZipper!705 z!4747 lt!2079549) (flatMap!298 z!4747 lambda!249074))))

(declare-fun bs!1187725 () Bool)

(assert (= bs!1187725 d!1617046))

(declare-fun m!6059814 () Bool)

(assert (=> bs!1187725 m!6059814))

(assert (=> b!5024231 d!1617046))

(declare-fun d!1617072 () Bool)

(declare-fun lambda!249077 () Int)

(declare-fun forall!13416 (List!58265 Int) Bool)

(assert (=> d!1617072 (= (inv!76638 setElem!28850) (forall!13416 (exprs!3834 setElem!28850) lambda!249077))))

(declare-fun bs!1187726 () Bool)

(assert (= bs!1187726 d!1617072))

(declare-fun m!6059816 () Bool)

(assert (=> bs!1187726 m!6059816))

(assert (=> setNonEmpty!28850 d!1617072))

(declare-fun d!1617074 () Bool)

(declare-fun lt!2079644 () Int)

(assert (=> d!1617074 (= lt!2079644 (size!38687 (list!18762 totalInput!1141)))))

(declare-fun size!38688 (Conc!15428) Int)

(assert (=> d!1617074 (= lt!2079644 (size!38688 (c!859017 totalInput!1141)))))

(assert (=> d!1617074 (= (size!38684 totalInput!1141) lt!2079644)))

(declare-fun bs!1187727 () Bool)

(assert (= bs!1187727 d!1617074))

(assert (=> bs!1187727 m!6059552))

(assert (=> bs!1187727 m!6059552))

(assert (=> bs!1187727 m!6059666))

(declare-fun m!6059818 () Bool)

(assert (=> bs!1187727 m!6059818))

(assert (=> b!5024232 d!1617074))

(declare-fun d!1617076 () Bool)

(declare-fun c!859139 () Bool)

(assert (=> d!1617076 (= c!859139 ((_ is Node!15428) (c!859017 totalInput!1141)))))

(declare-fun e!3138851 () Bool)

(assert (=> d!1617076 (= (inv!76640 (c!859017 totalInput!1141)) e!3138851)))

(declare-fun b!5024541 () Bool)

(declare-fun inv!76644 (Conc!15428) Bool)

(assert (=> b!5024541 (= e!3138851 (inv!76644 (c!859017 totalInput!1141)))))

(declare-fun b!5024542 () Bool)

(declare-fun e!3138852 () Bool)

(assert (=> b!5024542 (= e!3138851 e!3138852)))

(declare-fun res!2142325 () Bool)

(assert (=> b!5024542 (= res!2142325 (not ((_ is Leaf!25596) (c!859017 totalInput!1141))))))

(assert (=> b!5024542 (=> res!2142325 e!3138852)))

(declare-fun b!5024543 () Bool)

(declare-fun inv!76645 (Conc!15428) Bool)

(assert (=> b!5024543 (= e!3138852 (inv!76645 (c!859017 totalInput!1141)))))

(assert (= (and d!1617076 c!859139) b!5024541))

(assert (= (and d!1617076 (not c!859139)) b!5024542))

(assert (= (and b!5024542 (not res!2142325)) b!5024543))

(declare-fun m!6059820 () Bool)

(assert (=> b!5024541 m!6059820))

(declare-fun m!6059822 () Bool)

(assert (=> b!5024543 m!6059822))

(assert (=> b!5024228 d!1617076))

(declare-fun bs!1187728 () Bool)

(declare-fun b!5024548 () Bool)

(declare-fun d!1617078 () Bool)

(assert (= bs!1187728 (and b!5024548 d!1617078)))

(declare-fun lambda!249091 () Int)

(declare-fun lambda!249090 () Int)

(assert (=> bs!1187728 (not (= lambda!249091 lambda!249090))))

(declare-fun bs!1187729 () Bool)

(declare-fun b!5024549 () Bool)

(assert (= bs!1187729 (and b!5024549 d!1617078)))

(declare-fun lambda!249092 () Int)

(assert (=> bs!1187729 (not (= lambda!249092 lambda!249090))))

(declare-fun bs!1187730 () Bool)

(assert (= bs!1187730 (and b!5024549 b!5024548)))

(assert (=> bs!1187730 (= lambda!249092 lambda!249091)))

(declare-fun lt!2079666 () Bool)

(declare-datatypes ((Option!14597 0))(
  ( (None!14596) (Some!14596 (v!50601 List!58264)) )
))
(declare-fun isEmpty!31440 (Option!14597) Bool)

(declare-fun getLanguageWitness!734 ((InoxSet Context!6668)) Option!14597)

(assert (=> d!1617078 (= lt!2079666 (isEmpty!31440 (getLanguageWitness!734 z!4747)))))

(declare-fun forall!13417 ((InoxSet Context!6668) Int) Bool)

(assert (=> d!1617078 (= lt!2079666 (forall!13417 z!4747 lambda!249090))))

(declare-fun lt!2079668 () Unit!149323)

(declare-fun e!3138859 () Unit!149323)

(assert (=> d!1617078 (= lt!2079668 e!3138859)))

(declare-fun c!859150 () Bool)

(assert (=> d!1617078 (= c!859150 (not (forall!13417 z!4747 lambda!249090)))))

(assert (=> d!1617078 (= (lostCauseZipper!923 z!4747) lt!2079666)))

(declare-datatypes ((List!58267 0))(
  ( (Nil!58143) (Cons!58143 (h!64591 Context!6668) (t!370659 List!58267)) )
))
(declare-fun lt!2079665 () List!58267)

(declare-fun lt!2079661 () List!58267)

(declare-fun bm!350684 () Bool)

(declare-fun call!350689 () Bool)

(declare-fun exists!1387 (List!58267 Int) Bool)

(assert (=> bm!350684 (= call!350689 (exists!1387 (ite c!859150 lt!2079661 lt!2079665) (ite c!859150 lambda!249091 lambda!249092)))))

(declare-fun Unit!149327 () Unit!149323)

(assert (=> b!5024548 (= e!3138859 Unit!149327)))

(declare-fun call!350688 () List!58267)

(assert (=> b!5024548 (= lt!2079661 call!350688)))

(declare-fun lt!2079662 () Unit!149323)

(declare-fun lemmaNotForallThenExists!267 (List!58267 Int) Unit!149323)

(assert (=> b!5024548 (= lt!2079662 (lemmaNotForallThenExists!267 lt!2079661 lambda!249090))))

(assert (=> b!5024548 call!350689))

(declare-fun lt!2079667 () Unit!149323)

(assert (=> b!5024548 (= lt!2079667 lt!2079662)))

(declare-fun bm!350683 () Bool)

(declare-fun toList!8118 ((InoxSet Context!6668)) List!58267)

(assert (=> bm!350683 (= call!350688 (toList!8118 z!4747))))

(declare-fun Unit!149328 () Unit!149323)

(assert (=> b!5024549 (= e!3138859 Unit!149328)))

(assert (=> b!5024549 (= lt!2079665 call!350688)))

(declare-fun lt!2079664 () Unit!149323)

(declare-fun lemmaForallThenNotExists!250 (List!58267 Int) Unit!149323)

(assert (=> b!5024549 (= lt!2079664 (lemmaForallThenNotExists!250 lt!2079665 lambda!249090))))

(assert (=> b!5024549 (not call!350689)))

(declare-fun lt!2079663 () Unit!149323)

(assert (=> b!5024549 (= lt!2079663 lt!2079664)))

(assert (= (and d!1617078 c!859150) b!5024548))

(assert (= (and d!1617078 (not c!859150)) b!5024549))

(assert (= (or b!5024548 b!5024549) bm!350683))

(assert (= (or b!5024548 b!5024549) bm!350684))

(declare-fun m!6059824 () Bool)

(assert (=> bm!350683 m!6059824))

(declare-fun m!6059826 () Bool)

(assert (=> bm!350684 m!6059826))

(declare-fun m!6059828 () Bool)

(assert (=> d!1617078 m!6059828))

(assert (=> d!1617078 m!6059828))

(declare-fun m!6059830 () Bool)

(assert (=> d!1617078 m!6059830))

(declare-fun m!6059832 () Bool)

(assert (=> d!1617078 m!6059832))

(assert (=> d!1617078 m!6059832))

(declare-fun m!6059834 () Bool)

(assert (=> b!5024548 m!6059834))

(declare-fun m!6059836 () Bool)

(assert (=> b!5024549 m!6059836))

(assert (=> b!5024229 d!1617078))

(declare-fun condSetEmpty!28856 () Bool)

(assert (=> setNonEmpty!28850 (= condSetEmpty!28856 (= setRest!28850 ((as const (Array Context!6668 Bool)) false)))))

(declare-fun setRes!28856 () Bool)

(assert (=> setNonEmpty!28850 (= tp!1408526 setRes!28856)))

(declare-fun setIsEmpty!28856 () Bool)

(assert (=> setIsEmpty!28856 setRes!28856))

(declare-fun e!3138862 () Bool)

(declare-fun tp!1408554 () Bool)

(declare-fun setNonEmpty!28856 () Bool)

(declare-fun setElem!28856 () Context!6668)

(assert (=> setNonEmpty!28856 (= setRes!28856 (and tp!1408554 (inv!76638 setElem!28856) e!3138862))))

(declare-fun setRest!28856 () (InoxSet Context!6668))

(assert (=> setNonEmpty!28856 (= setRest!28850 ((_ map or) (store ((as const (Array Context!6668 Bool)) false) setElem!28856 true) setRest!28856))))

(declare-fun b!5024554 () Bool)

(declare-fun tp!1408555 () Bool)

(assert (=> b!5024554 (= e!3138862 tp!1408555)))

(assert (= (and setNonEmpty!28850 condSetEmpty!28856) setIsEmpty!28856))

(assert (= (and setNonEmpty!28850 (not condSetEmpty!28856)) setNonEmpty!28856))

(assert (= setNonEmpty!28856 b!5024554))

(declare-fun m!6059838 () Bool)

(assert (=> setNonEmpty!28856 m!6059838))

(declare-fun b!5024559 () Bool)

(declare-fun e!3138865 () Bool)

(declare-fun tp!1408560 () Bool)

(declare-fun tp!1408561 () Bool)

(assert (=> b!5024559 (= e!3138865 (and tp!1408560 tp!1408561))))

(assert (=> b!5024227 (= tp!1408528 e!3138865)))

(assert (= (and b!5024227 ((_ is Cons!58141) (exprs!3834 setElem!28850))) b!5024559))

(declare-fun e!3138871 () Bool)

(declare-fun tp!1408570 () Bool)

(declare-fun tp!1408568 () Bool)

(declare-fun b!5024568 () Bool)

(assert (=> b!5024568 (= e!3138871 (and (inv!76640 (left!42517 (c!859017 totalInput!1141))) tp!1408570 (inv!76640 (right!42847 (c!859017 totalInput!1141))) tp!1408568))))

(declare-fun b!5024570 () Bool)

(declare-fun e!3138870 () Bool)

(declare-fun tp!1408569 () Bool)

(assert (=> b!5024570 (= e!3138870 tp!1408569)))

(declare-fun b!5024569 () Bool)

(declare-fun inv!76646 (IArray!30917) Bool)

(assert (=> b!5024569 (= e!3138871 (and (inv!76646 (xs!18754 (c!859017 totalInput!1141))) e!3138870))))

(assert (=> b!5024228 (= tp!1408527 (and (inv!76640 (c!859017 totalInput!1141)) e!3138871))))

(assert (= (and b!5024228 ((_ is Node!15428) (c!859017 totalInput!1141))) b!5024568))

(assert (= b!5024569 b!5024570))

(assert (= (and b!5024228 ((_ is Leaf!25596) (c!859017 totalInput!1141))) b!5024569))

(declare-fun m!6059840 () Bool)

(assert (=> b!5024568 m!6059840))

(declare-fun m!6059842 () Bool)

(assert (=> b!5024568 m!6059842))

(declare-fun m!6059844 () Bool)

(assert (=> b!5024569 m!6059844))

(assert (=> b!5024228 m!6059560))

(check-sat (not b!5024543) (not b!5024554) (not d!1617038) (not b!5024298) (not d!1617024) (not b!5024367) (not d!1617046) (not d!1617044) (not b!5024425) (not b!5024296) (not b!5024255) (not b!5024426) (not b!5024297) (not b!5024404) (not b!5024429) (not b!5024366) (not b!5024372) (not b!5024344) (not b!5024376) (not b!5024422) (not b!5024559) (not setNonEmpty!28856) (not b!5024242) (not b!5024373) (not d!1617078) (not b!5024293) (not b!5024406) (not b!5024569) (not bm!350668) (not d!1617014) (not b!5024375) (not b!5024417) (not d!1617074) (not d!1617028) (not bm!350670) (not d!1617010) (not b!5024408) (not d!1617040) (not b!5024243) (not d!1617006) (not d!1617042) (not b!5024241) (not b!5024427) (not b!5024369) (not b!5024345) (not d!1617032) (not bm!350669) (not d!1617030) (not b!5024416) (not b!5024420) (not d!1617072) (not b!5024374) (not b!5024428) (not bm!350684) (not b!5024548) (not bm!350683) (not b!5024541) (not b!5024549) (not b!5024228) (not d!1617034) (not d!1617020) (not b!5024570) (not b!5024568) (not b!5024407))
(check-sat)
