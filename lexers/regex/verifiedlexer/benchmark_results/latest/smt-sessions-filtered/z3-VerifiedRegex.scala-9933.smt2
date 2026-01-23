; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520704 () Bool)

(assert start!520704)

(declare-fun e!3090398 () Bool)

(declare-datatypes ((C!27216 0))(
  ( (C!27217 (val!22942 Int)) )
))
(declare-datatypes ((Regex!13483 0))(
  ( (ElementMatch!13483 (c!843978 C!27216)) (Concat!22056 (regOne!27478 Regex!13483) (regTwo!27478 Regex!13483)) (EmptyExpr!13483) (Star!13483 (reg!13812 Regex!13483)) (EmptyLang!13483) (Union!13483 (regOne!27479 Regex!13483) (regTwo!27479 Regex!13483)) )
))
(declare-datatypes ((List!57103 0))(
  ( (Nil!56979) (Cons!56979 (h!63427 Regex!13483) (t!367639 List!57103)) )
))
(declare-datatypes ((Context!6250 0))(
  ( (Context!6251 (exprs!3625 List!57103)) )
))
(declare-fun setElem!28052 () Context!6250)

(declare-fun tp!1387464 () Bool)

(declare-fun setNonEmpty!28052 () Bool)

(declare-fun setRes!28052 () Bool)

(declare-fun inv!74220 (Context!6250) Bool)

(assert (=> setNonEmpty!28052 (= setRes!28052 (and tp!1387464 (inv!74220 setElem!28052) e!3090398))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6250))

(declare-fun setRest!28052 () (InoxSet Context!6250))

(assert (=> setNonEmpty!28052 (= z!3568 ((_ map or) (store ((as const (Array Context!6250 Bool)) false) setElem!28052 true) setRest!28052))))

(declare-fun b!4946167 () Bool)

(declare-datatypes ((Unit!147770 0))(
  ( (Unit!147771) )
))
(declare-fun e!3090401 () Unit!147770)

(declare-fun Unit!147772 () Unit!147770)

(assert (=> b!4946167 (= e!3090401 Unit!147772)))

(declare-fun b!4946168 () Bool)

(declare-fun res!2110607 () Bool)

(declare-fun e!3090397 () Bool)

(assert (=> b!4946168 (=> res!2110607 e!3090397)))

(declare-datatypes ((List!57104 0))(
  ( (Nil!56980) (Cons!56980 (h!63428 C!27216) (t!367640 List!57104)) )
))
(declare-datatypes ((IArray!30065 0))(
  ( (IArray!30066 (innerList!15090 List!57104)) )
))
(declare-datatypes ((Conc!15002 0))(
  ( (Node!15002 (left!41569 Conc!15002) (right!41899 Conc!15002) (csize!30234 Int) (cheight!15213 Int)) (Leaf!24936 (xs!18328 IArray!30065) (csize!30235 Int)) (Empty!15002) )
))
(declare-datatypes ((BalanceConc!29434 0))(
  ( (BalanceConc!29435 (c!843979 Conc!15002)) )
))
(declare-datatypes ((tuple2!61524 0))(
  ( (tuple2!61525 (_1!34065 BalanceConc!29434) (_2!34065 BalanceConc!29434)) )
))
(declare-fun lt!2039680 () tuple2!61524)

(declare-fun testedPSize!70 () Int)

(declare-fun size!37807 (BalanceConc!29434) Int)

(assert (=> b!4946168 (= res!2110607 (not (= (size!37807 (_1!34065 lt!2039680)) testedPSize!70)))))

(declare-fun b!4946169 () Bool)

(declare-fun e!3090392 () Bool)

(declare-fun e!3090396 () Bool)

(assert (=> b!4946169 (= e!3090392 e!3090396)))

(declare-fun res!2110603 () Bool)

(assert (=> b!4946169 (=> res!2110603 e!3090396)))

(declare-fun lostCauseZipper!801 ((InoxSet Context!6250)) Bool)

(assert (=> b!4946169 (= res!2110603 (lostCauseZipper!801 z!3568))))

(declare-fun testedSuffix!70 () List!57104)

(declare-fun lt!2039681 () List!57104)

(assert (=> b!4946169 (and (= testedSuffix!70 lt!2039681) (= lt!2039681 testedSuffix!70))))

(declare-fun testedP!110 () List!57104)

(declare-fun lt!2039683 () List!57104)

(declare-fun lt!2039674 () Unit!147770)

(declare-fun lemmaSamePrefixThenSameSuffix!2481 (List!57104 List!57104 List!57104 List!57104 List!57104) Unit!147770)

(assert (=> b!4946169 (= lt!2039674 (lemmaSamePrefixThenSameSuffix!2481 testedP!110 testedSuffix!70 testedP!110 lt!2039681 lt!2039683))))

(declare-fun getSuffix!3071 (List!57104 List!57104) List!57104)

(assert (=> b!4946169 (= lt!2039681 (getSuffix!3071 lt!2039683 testedP!110))))

(declare-fun setIsEmpty!28052 () Bool)

(assert (=> setIsEmpty!28052 setRes!28052))

(declare-fun b!4946170 () Bool)

(assert (=> b!4946170 (= e!3090396 e!3090397)))

(declare-fun res!2110605 () Bool)

(assert (=> b!4946170 (=> res!2110605 e!3090397)))

(declare-fun lt!2039673 () List!57104)

(declare-fun lt!2039687 () List!57104)

(declare-fun ++!12468 (List!57104 List!57104) List!57104)

(assert (=> b!4946170 (= res!2110605 (not (= (++!12468 lt!2039673 lt!2039687) lt!2039683)))))

(declare-fun list!18161 (BalanceConc!29434) List!57104)

(assert (=> b!4946170 (= lt!2039687 (list!18161 (_2!34065 lt!2039680)))))

(assert (=> b!4946170 (= lt!2039673 (list!18161 (_1!34065 lt!2039680)))))

(declare-fun totalInput!685 () BalanceConc!29434)

(declare-fun splitAt!396 (BalanceConc!29434 Int) tuple2!61524)

(assert (=> b!4946170 (= lt!2039680 (splitAt!396 totalInput!685 testedPSize!70))))

(declare-fun b!4946171 () Bool)

(declare-fun e!3090391 () Bool)

(assert (=> b!4946171 (= e!3090397 e!3090391)))

(declare-fun res!2110604 () Bool)

(assert (=> b!4946171 (=> res!2110604 e!3090391)))

(declare-fun apply!13815 (BalanceConc!29434 Int) C!27216)

(declare-fun head!10609 (List!57104) C!27216)

(assert (=> b!4946171 (= res!2110604 (not (= (apply!13815 totalInput!685 testedPSize!70) (head!10609 testedSuffix!70))))))

(declare-fun drop!2290 (List!57104 Int) List!57104)

(declare-fun apply!13816 (List!57104 Int) C!27216)

(assert (=> b!4946171 (= (head!10609 (drop!2290 lt!2039683 testedPSize!70)) (apply!13816 lt!2039683 testedPSize!70))))

(declare-fun lt!2039685 () Unit!147770)

(declare-fun lemmaDropApply!1344 (List!57104 Int) Unit!147770)

(assert (=> b!4946171 (= lt!2039685 (lemmaDropApply!1344 lt!2039683 testedPSize!70))))

(assert (=> b!4946171 (not (or (not (= lt!2039673 testedP!110)) (not (= lt!2039687 testedSuffix!70))))))

(declare-fun lt!2039672 () Unit!147770)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!727 (List!57104 List!57104 List!57104 List!57104) Unit!147770)

(assert (=> b!4946171 (= lt!2039672 (lemmaConcatSameAndSameSizesThenSameLists!727 lt!2039673 lt!2039687 testedP!110 testedSuffix!70))))

(declare-fun b!4946172 () Bool)

(declare-fun res!2110610 () Bool)

(assert (=> b!4946172 (=> res!2110610 e!3090396)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4946172 (= res!2110610 (= testedPSize!70 totalInputSize!132))))

(declare-fun res!2110608 () Bool)

(declare-fun e!3090395 () Bool)

(assert (=> start!520704 (=> (not res!2110608) (not e!3090395))))

(declare-fun lt!2039686 () List!57104)

(assert (=> start!520704 (= res!2110608 (= lt!2039686 lt!2039683))))

(assert (=> start!520704 (= lt!2039683 (list!18161 totalInput!685))))

(assert (=> start!520704 (= lt!2039686 (++!12468 testedP!110 testedSuffix!70))))

(assert (=> start!520704 e!3090395))

(declare-fun e!3090399 () Bool)

(assert (=> start!520704 e!3090399))

(declare-fun condSetEmpty!28052 () Bool)

(assert (=> start!520704 (= condSetEmpty!28052 (= z!3568 ((as const (Array Context!6250 Bool)) false)))))

(assert (=> start!520704 setRes!28052))

(assert (=> start!520704 true))

(declare-fun e!3090394 () Bool)

(declare-fun inv!74221 (BalanceConc!29434) Bool)

(assert (=> start!520704 (and (inv!74221 totalInput!685) e!3090394)))

(declare-fun e!3090390 () Bool)

(assert (=> start!520704 e!3090390))

(declare-fun b!4946173 () Bool)

(declare-fun Unit!147773 () Unit!147770)

(assert (=> b!4946173 (= e!3090401 Unit!147773)))

(declare-fun lt!2039678 () Unit!147770)

(declare-fun lemmaIsPrefixRefl!3429 (List!57104 List!57104) Unit!147770)

(assert (=> b!4946173 (= lt!2039678 (lemmaIsPrefixRefl!3429 lt!2039683 lt!2039683))))

(declare-fun isPrefix!5089 (List!57104 List!57104) Bool)

(assert (=> b!4946173 (isPrefix!5089 lt!2039683 lt!2039683)))

(declare-fun lt!2039677 () Unit!147770)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1181 (List!57104 List!57104 List!57104) Unit!147770)

(assert (=> b!4946173 (= lt!2039677 (lemmaIsPrefixSameLengthThenSameList!1181 lt!2039683 testedP!110 lt!2039683))))

(assert (=> b!4946173 false))

(declare-fun b!4946174 () Bool)

(declare-fun tp_is_empty!36163 () Bool)

(declare-fun tp!1387462 () Bool)

(assert (=> b!4946174 (= e!3090390 (and tp_is_empty!36163 tp!1387462))))

(declare-fun lt!2039675 () Int)

(declare-fun lt!2039684 () Int)

(declare-fun lt!2039682 () Int)

(declare-fun b!4946175 () Bool)

(assert (=> b!4946175 (= e!3090391 (or (>= lt!2039682 lt!2039684) (< lt!2039682 lt!2039675)))))

(declare-fun lt!2039671 () Unit!147770)

(assert (=> b!4946175 (= lt!2039671 e!3090401)))

(declare-fun c!843977 () Bool)

(assert (=> b!4946175 (= c!843977 (= lt!2039682 lt!2039684))))

(assert (=> b!4946175 (<= lt!2039682 lt!2039675)))

(declare-fun size!37808 (List!57104) Int)

(assert (=> b!4946175 (= lt!2039675 (size!37808 lt!2039683))))

(declare-fun lt!2039679 () Unit!147770)

(declare-fun lemmaIsPrefixThenSmallerEqSize!744 (List!57104 List!57104) Unit!147770)

(assert (=> b!4946175 (= lt!2039679 (lemmaIsPrefixThenSmallerEqSize!744 testedP!110 lt!2039683))))

(declare-fun b!4946176 () Bool)

(declare-fun tp!1387463 () Bool)

(declare-fun inv!74222 (Conc!15002) Bool)

(assert (=> b!4946176 (= e!3090394 (and (inv!74222 (c!843979 totalInput!685)) tp!1387463))))

(declare-fun b!4946177 () Bool)

(declare-fun e!3090393 () Bool)

(assert (=> b!4946177 (= e!3090393 (not e!3090392))))

(declare-fun res!2110606 () Bool)

(assert (=> b!4946177 (=> res!2110606 e!3090392)))

(assert (=> b!4946177 (= res!2110606 (not (isPrefix!5089 testedP!110 lt!2039683)))))

(assert (=> b!4946177 (isPrefix!5089 testedP!110 lt!2039686)))

(declare-fun lt!2039676 () Unit!147770)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3313 (List!57104 List!57104) Unit!147770)

(assert (=> b!4946177 (= lt!2039676 (lemmaConcatTwoListThenFirstIsPrefix!3313 testedP!110 testedSuffix!70))))

(declare-fun b!4946178 () Bool)

(declare-fun e!3090400 () Bool)

(assert (=> b!4946178 (= e!3090400 e!3090393)))

(declare-fun res!2110602 () Bool)

(assert (=> b!4946178 (=> (not res!2110602) (not e!3090393))))

(assert (=> b!4946178 (= res!2110602 (= totalInputSize!132 lt!2039684))))

(assert (=> b!4946178 (= lt!2039684 (size!37807 totalInput!685))))

(declare-fun b!4946179 () Bool)

(declare-fun tp!1387465 () Bool)

(assert (=> b!4946179 (= e!3090399 (and tp_is_empty!36163 tp!1387465))))

(declare-fun b!4946180 () Bool)

(declare-fun tp!1387461 () Bool)

(assert (=> b!4946180 (= e!3090398 tp!1387461)))

(declare-fun b!4946181 () Bool)

(assert (=> b!4946181 (= e!3090395 e!3090400)))

(declare-fun res!2110609 () Bool)

(assert (=> b!4946181 (=> (not res!2110609) (not e!3090400))))

(assert (=> b!4946181 (= res!2110609 (= testedPSize!70 lt!2039682))))

(assert (=> b!4946181 (= lt!2039682 (size!37808 testedP!110))))

(assert (= (and start!520704 res!2110608) b!4946181))

(assert (= (and b!4946181 res!2110609) b!4946178))

(assert (= (and b!4946178 res!2110602) b!4946177))

(assert (= (and b!4946177 (not res!2110606)) b!4946169))

(assert (= (and b!4946169 (not res!2110603)) b!4946172))

(assert (= (and b!4946172 (not res!2110610)) b!4946170))

(assert (= (and b!4946170 (not res!2110605)) b!4946168))

(assert (= (and b!4946168 (not res!2110607)) b!4946171))

(assert (= (and b!4946171 (not res!2110604)) b!4946175))

(assert (= (and b!4946175 c!843977) b!4946173))

(assert (= (and b!4946175 (not c!843977)) b!4946167))

(get-info :version)

(assert (= (and start!520704 ((_ is Cons!56980) testedP!110)) b!4946179))

(assert (= (and start!520704 condSetEmpty!28052) setIsEmpty!28052))

(assert (= (and start!520704 (not condSetEmpty!28052)) setNonEmpty!28052))

(assert (= setNonEmpty!28052 b!4946180))

(assert (= start!520704 b!4946176))

(assert (= (and start!520704 ((_ is Cons!56980) testedSuffix!70)) b!4946174))

(declare-fun m!5969340 () Bool)

(assert (=> b!4946168 m!5969340))

(declare-fun m!5969342 () Bool)

(assert (=> b!4946178 m!5969342))

(declare-fun m!5969344 () Bool)

(assert (=> b!4946169 m!5969344))

(declare-fun m!5969346 () Bool)

(assert (=> b!4946169 m!5969346))

(declare-fun m!5969348 () Bool)

(assert (=> b!4946169 m!5969348))

(declare-fun m!5969350 () Bool)

(assert (=> setNonEmpty!28052 m!5969350))

(declare-fun m!5969352 () Bool)

(assert (=> b!4946175 m!5969352))

(declare-fun m!5969354 () Bool)

(assert (=> b!4946175 m!5969354))

(declare-fun m!5969356 () Bool)

(assert (=> b!4946181 m!5969356))

(declare-fun m!5969358 () Bool)

(assert (=> b!4946176 m!5969358))

(declare-fun m!5969360 () Bool)

(assert (=> b!4946177 m!5969360))

(declare-fun m!5969362 () Bool)

(assert (=> b!4946177 m!5969362))

(declare-fun m!5969364 () Bool)

(assert (=> b!4946177 m!5969364))

(declare-fun m!5969366 () Bool)

(assert (=> b!4946170 m!5969366))

(declare-fun m!5969368 () Bool)

(assert (=> b!4946170 m!5969368))

(declare-fun m!5969370 () Bool)

(assert (=> b!4946170 m!5969370))

(declare-fun m!5969372 () Bool)

(assert (=> b!4946170 m!5969372))

(declare-fun m!5969374 () Bool)

(assert (=> b!4946173 m!5969374))

(declare-fun m!5969376 () Bool)

(assert (=> b!4946173 m!5969376))

(declare-fun m!5969378 () Bool)

(assert (=> b!4946173 m!5969378))

(declare-fun m!5969380 () Bool)

(assert (=> b!4946171 m!5969380))

(declare-fun m!5969382 () Bool)

(assert (=> b!4946171 m!5969382))

(declare-fun m!5969384 () Bool)

(assert (=> b!4946171 m!5969384))

(declare-fun m!5969386 () Bool)

(assert (=> b!4946171 m!5969386))

(declare-fun m!5969388 () Bool)

(assert (=> b!4946171 m!5969388))

(assert (=> b!4946171 m!5969382))

(declare-fun m!5969390 () Bool)

(assert (=> b!4946171 m!5969390))

(declare-fun m!5969392 () Bool)

(assert (=> b!4946171 m!5969392))

(declare-fun m!5969394 () Bool)

(assert (=> start!520704 m!5969394))

(declare-fun m!5969396 () Bool)

(assert (=> start!520704 m!5969396))

(declare-fun m!5969398 () Bool)

(assert (=> start!520704 m!5969398))

(check-sat (not setNonEmpty!28052) (not b!4946171) (not b!4946181) (not b!4946176) (not b!4946177) (not b!4946168) (not b!4946174) (not b!4946170) (not b!4946179) (not start!520704) tp_is_empty!36163 (not b!4946180) (not b!4946169) (not b!4946178) (not b!4946173) (not b!4946175))
(check-sat)
(get-model)

(declare-fun d!1592428 () Bool)

(assert (=> d!1592428 (isPrefix!5089 lt!2039683 lt!2039683)))

(declare-fun lt!2039693 () Unit!147770)

(declare-fun choose!36456 (List!57104 List!57104) Unit!147770)

(assert (=> d!1592428 (= lt!2039693 (choose!36456 lt!2039683 lt!2039683))))

(assert (=> d!1592428 (= (lemmaIsPrefixRefl!3429 lt!2039683 lt!2039683) lt!2039693)))

(declare-fun bs!1181696 () Bool)

(assert (= bs!1181696 d!1592428))

(assert (=> bs!1181696 m!5969376))

(declare-fun m!5969404 () Bool)

(assert (=> bs!1181696 m!5969404))

(assert (=> b!4946173 d!1592428))

(declare-fun b!4946190 () Bool)

(declare-fun e!3090408 () Bool)

(declare-fun e!3090410 () Bool)

(assert (=> b!4946190 (= e!3090408 e!3090410)))

(declare-fun res!2110621 () Bool)

(assert (=> b!4946190 (=> (not res!2110621) (not e!3090410))))

(assert (=> b!4946190 (= res!2110621 (not ((_ is Nil!56980) lt!2039683)))))

(declare-fun b!4946192 () Bool)

(declare-fun tail!9743 (List!57104) List!57104)

(assert (=> b!4946192 (= e!3090410 (isPrefix!5089 (tail!9743 lt!2039683) (tail!9743 lt!2039683)))))

(declare-fun b!4946193 () Bool)

(declare-fun e!3090409 () Bool)

(assert (=> b!4946193 (= e!3090409 (>= (size!37808 lt!2039683) (size!37808 lt!2039683)))))

(declare-fun b!4946191 () Bool)

(declare-fun res!2110622 () Bool)

(assert (=> b!4946191 (=> (not res!2110622) (not e!3090410))))

(assert (=> b!4946191 (= res!2110622 (= (head!10609 lt!2039683) (head!10609 lt!2039683)))))

(declare-fun d!1592432 () Bool)

(assert (=> d!1592432 e!3090409))

(declare-fun res!2110619 () Bool)

(assert (=> d!1592432 (=> res!2110619 e!3090409)))

(declare-fun lt!2039696 () Bool)

(assert (=> d!1592432 (= res!2110619 (not lt!2039696))))

(assert (=> d!1592432 (= lt!2039696 e!3090408)))

(declare-fun res!2110620 () Bool)

(assert (=> d!1592432 (=> res!2110620 e!3090408)))

(assert (=> d!1592432 (= res!2110620 ((_ is Nil!56980) lt!2039683))))

(assert (=> d!1592432 (= (isPrefix!5089 lt!2039683 lt!2039683) lt!2039696)))

(assert (= (and d!1592432 (not res!2110620)) b!4946190))

(assert (= (and b!4946190 res!2110621) b!4946191))

(assert (= (and b!4946191 res!2110622) b!4946192))

(assert (= (and d!1592432 (not res!2110619)) b!4946193))

(declare-fun m!5969406 () Bool)

(assert (=> b!4946192 m!5969406))

(assert (=> b!4946192 m!5969406))

(assert (=> b!4946192 m!5969406))

(assert (=> b!4946192 m!5969406))

(declare-fun m!5969408 () Bool)

(assert (=> b!4946192 m!5969408))

(assert (=> b!4946193 m!5969352))

(assert (=> b!4946193 m!5969352))

(declare-fun m!5969410 () Bool)

(assert (=> b!4946191 m!5969410))

(assert (=> b!4946191 m!5969410))

(assert (=> b!4946173 d!1592432))

(declare-fun d!1592434 () Bool)

(assert (=> d!1592434 (= lt!2039683 testedP!110)))

(declare-fun lt!2039699 () Unit!147770)

(declare-fun choose!36457 (List!57104 List!57104 List!57104) Unit!147770)

(assert (=> d!1592434 (= lt!2039699 (choose!36457 lt!2039683 testedP!110 lt!2039683))))

(assert (=> d!1592434 (isPrefix!5089 lt!2039683 lt!2039683)))

(assert (=> d!1592434 (= (lemmaIsPrefixSameLengthThenSameList!1181 lt!2039683 testedP!110 lt!2039683) lt!2039699)))

(declare-fun bs!1181697 () Bool)

(assert (= bs!1181697 d!1592434))

(declare-fun m!5969412 () Bool)

(assert (=> bs!1181697 m!5969412))

(assert (=> bs!1181697 m!5969376))

(assert (=> b!4946173 d!1592434))

(declare-fun b!4946216 () Bool)

(declare-fun e!3090424 () List!57104)

(assert (=> b!4946216 (= e!3090424 Nil!56980)))

(declare-fun b!4946217 () Bool)

(declare-fun e!3090423 () Int)

(declare-fun call!345191 () Int)

(assert (=> b!4946217 (= e!3090423 call!345191)))

(declare-fun b!4946218 () Bool)

(declare-fun e!3090425 () List!57104)

(assert (=> b!4946218 (= e!3090424 e!3090425)))

(declare-fun c!843993 () Bool)

(assert (=> b!4946218 (= c!843993 (<= testedPSize!70 0))))

(declare-fun d!1592436 () Bool)

(declare-fun e!3090426 () Bool)

(assert (=> d!1592436 e!3090426))

(declare-fun res!2110625 () Bool)

(assert (=> d!1592436 (=> (not res!2110625) (not e!3090426))))

(declare-fun lt!2039706 () List!57104)

(declare-fun content!10146 (List!57104) (InoxSet C!27216))

(assert (=> d!1592436 (= res!2110625 (= ((_ map implies) (content!10146 lt!2039706) (content!10146 lt!2039683)) ((as const (InoxSet C!27216)) true)))))

(assert (=> d!1592436 (= lt!2039706 e!3090424)))

(declare-fun c!843992 () Bool)

(assert (=> d!1592436 (= c!843992 ((_ is Nil!56980) lt!2039683))))

(assert (=> d!1592436 (= (drop!2290 lt!2039683 testedPSize!70) lt!2039706)))

(declare-fun b!4946219 () Bool)

(assert (=> b!4946219 (= e!3090426 (= (size!37808 lt!2039706) e!3090423))))

(declare-fun c!843995 () Bool)

(assert (=> b!4946219 (= c!843995 (<= testedPSize!70 0))))

(declare-fun b!4946220 () Bool)

(declare-fun e!3090427 () Int)

(assert (=> b!4946220 (= e!3090427 (- call!345191 testedPSize!70))))

(declare-fun bm!345186 () Bool)

(assert (=> bm!345186 (= call!345191 (size!37808 lt!2039683))))

(declare-fun b!4946221 () Bool)

(assert (=> b!4946221 (= e!3090425 lt!2039683)))

(declare-fun b!4946222 () Bool)

(assert (=> b!4946222 (= e!3090425 (drop!2290 (t!367640 lt!2039683) (- testedPSize!70 1)))))

(declare-fun b!4946223 () Bool)

(assert (=> b!4946223 (= e!3090427 0)))

(declare-fun b!4946224 () Bool)

(assert (=> b!4946224 (= e!3090423 e!3090427)))

(declare-fun c!843994 () Bool)

(assert (=> b!4946224 (= c!843994 (>= testedPSize!70 call!345191))))

(assert (= (and d!1592436 c!843992) b!4946216))

(assert (= (and d!1592436 (not c!843992)) b!4946218))

(assert (= (and b!4946218 c!843993) b!4946221))

(assert (= (and b!4946218 (not c!843993)) b!4946222))

(assert (= (and d!1592436 res!2110625) b!4946219))

(assert (= (and b!4946219 c!843995) b!4946217))

(assert (= (and b!4946219 (not c!843995)) b!4946224))

(assert (= (and b!4946224 c!843994) b!4946223))

(assert (= (and b!4946224 (not c!843994)) b!4946220))

(assert (= (or b!4946217 b!4946224 b!4946220) bm!345186))

(declare-fun m!5969414 () Bool)

(assert (=> d!1592436 m!5969414))

(declare-fun m!5969416 () Bool)

(assert (=> d!1592436 m!5969416))

(declare-fun m!5969418 () Bool)

(assert (=> b!4946219 m!5969418))

(assert (=> bm!345186 m!5969352))

(declare-fun m!5969420 () Bool)

(assert (=> b!4946222 m!5969420))

(assert (=> b!4946171 d!1592436))

(declare-fun d!1592438 () Bool)

(assert (=> d!1592438 (and (= lt!2039673 testedP!110) (= lt!2039687 testedSuffix!70))))

(declare-fun lt!2039709 () Unit!147770)

(declare-fun choose!36458 (List!57104 List!57104 List!57104 List!57104) Unit!147770)

(assert (=> d!1592438 (= lt!2039709 (choose!36458 lt!2039673 lt!2039687 testedP!110 testedSuffix!70))))

(assert (=> d!1592438 (= (++!12468 lt!2039673 lt!2039687) (++!12468 testedP!110 testedSuffix!70))))

(assert (=> d!1592438 (= (lemmaConcatSameAndSameSizesThenSameLists!727 lt!2039673 lt!2039687 testedP!110 testedSuffix!70) lt!2039709)))

(declare-fun bs!1181698 () Bool)

(assert (= bs!1181698 d!1592438))

(declare-fun m!5969422 () Bool)

(assert (=> bs!1181698 m!5969422))

(assert (=> bs!1181698 m!5969366))

(assert (=> bs!1181698 m!5969396))

(assert (=> b!4946171 d!1592438))

(declare-fun d!1592440 () Bool)

(assert (=> d!1592440 (= (head!10609 testedSuffix!70) (h!63428 testedSuffix!70))))

(assert (=> b!4946171 d!1592440))

(declare-fun d!1592442 () Bool)

(assert (=> d!1592442 (= (head!10609 (drop!2290 lt!2039683 testedPSize!70)) (h!63428 (drop!2290 lt!2039683 testedPSize!70)))))

(assert (=> b!4946171 d!1592442))

(declare-fun d!1592444 () Bool)

(assert (=> d!1592444 (= (head!10609 (drop!2290 lt!2039683 testedPSize!70)) (apply!13816 lt!2039683 testedPSize!70))))

(declare-fun lt!2039712 () Unit!147770)

(declare-fun choose!36460 (List!57104 Int) Unit!147770)

(assert (=> d!1592444 (= lt!2039712 (choose!36460 lt!2039683 testedPSize!70))))

(declare-fun e!3090430 () Bool)

(assert (=> d!1592444 e!3090430))

(declare-fun res!2110628 () Bool)

(assert (=> d!1592444 (=> (not res!2110628) (not e!3090430))))

(assert (=> d!1592444 (= res!2110628 (>= testedPSize!70 0))))

(assert (=> d!1592444 (= (lemmaDropApply!1344 lt!2039683 testedPSize!70) lt!2039712)))

(declare-fun b!4946227 () Bool)

(assert (=> b!4946227 (= e!3090430 (< testedPSize!70 (size!37808 lt!2039683)))))

(assert (= (and d!1592444 res!2110628) b!4946227))

(assert (=> d!1592444 m!5969382))

(assert (=> d!1592444 m!5969382))

(assert (=> d!1592444 m!5969384))

(assert (=> d!1592444 m!5969390))

(declare-fun m!5969424 () Bool)

(assert (=> d!1592444 m!5969424))

(assert (=> b!4946227 m!5969352))

(assert (=> b!4946171 d!1592444))

(declare-fun d!1592446 () Bool)

(declare-fun lt!2039715 () C!27216)

(assert (=> d!1592446 (= lt!2039715 (apply!13816 (list!18161 totalInput!685) testedPSize!70))))

(declare-fun apply!13817 (Conc!15002 Int) C!27216)

(assert (=> d!1592446 (= lt!2039715 (apply!13817 (c!843979 totalInput!685) testedPSize!70))))

(declare-fun e!3090433 () Bool)

(assert (=> d!1592446 e!3090433))

(declare-fun res!2110631 () Bool)

(assert (=> d!1592446 (=> (not res!2110631) (not e!3090433))))

(assert (=> d!1592446 (= res!2110631 (<= 0 testedPSize!70))))

(assert (=> d!1592446 (= (apply!13815 totalInput!685 testedPSize!70) lt!2039715)))

(declare-fun b!4946230 () Bool)

(assert (=> b!4946230 (= e!3090433 (< testedPSize!70 (size!37807 totalInput!685)))))

(assert (= (and d!1592446 res!2110631) b!4946230))

(assert (=> d!1592446 m!5969394))

(assert (=> d!1592446 m!5969394))

(declare-fun m!5969426 () Bool)

(assert (=> d!1592446 m!5969426))

(declare-fun m!5969428 () Bool)

(assert (=> d!1592446 m!5969428))

(assert (=> b!4946230 m!5969342))

(assert (=> b!4946171 d!1592446))

(declare-fun d!1592448 () Bool)

(declare-fun lt!2039718 () C!27216)

(declare-fun contains!19489 (List!57104 C!27216) Bool)

(assert (=> d!1592448 (contains!19489 lt!2039683 lt!2039718)))

(declare-fun e!3090439 () C!27216)

(assert (=> d!1592448 (= lt!2039718 e!3090439)))

(declare-fun c!843998 () Bool)

(assert (=> d!1592448 (= c!843998 (= testedPSize!70 0))))

(declare-fun e!3090438 () Bool)

(assert (=> d!1592448 e!3090438))

(declare-fun res!2110634 () Bool)

(assert (=> d!1592448 (=> (not res!2110634) (not e!3090438))))

(assert (=> d!1592448 (= res!2110634 (<= 0 testedPSize!70))))

(assert (=> d!1592448 (= (apply!13816 lt!2039683 testedPSize!70) lt!2039718)))

(declare-fun b!4946237 () Bool)

(assert (=> b!4946237 (= e!3090438 (< testedPSize!70 (size!37808 lt!2039683)))))

(declare-fun b!4946238 () Bool)

(assert (=> b!4946238 (= e!3090439 (head!10609 lt!2039683))))

(declare-fun b!4946239 () Bool)

(assert (=> b!4946239 (= e!3090439 (apply!13816 (tail!9743 lt!2039683) (- testedPSize!70 1)))))

(assert (= (and d!1592448 res!2110634) b!4946237))

(assert (= (and d!1592448 c!843998) b!4946238))

(assert (= (and d!1592448 (not c!843998)) b!4946239))

(declare-fun m!5969430 () Bool)

(assert (=> d!1592448 m!5969430))

(assert (=> b!4946237 m!5969352))

(assert (=> b!4946238 m!5969410))

(assert (=> b!4946239 m!5969406))

(assert (=> b!4946239 m!5969406))

(declare-fun m!5969432 () Bool)

(assert (=> b!4946239 m!5969432))

(assert (=> b!4946171 d!1592448))

(declare-fun d!1592450 () Bool)

(declare-fun lt!2039721 () Int)

(assert (=> d!1592450 (>= lt!2039721 0)))

(declare-fun e!3090442 () Int)

(assert (=> d!1592450 (= lt!2039721 e!3090442)))

(declare-fun c!844001 () Bool)

(assert (=> d!1592450 (= c!844001 ((_ is Nil!56980) testedP!110))))

(assert (=> d!1592450 (= (size!37808 testedP!110) lt!2039721)))

(declare-fun b!4946244 () Bool)

(assert (=> b!4946244 (= e!3090442 0)))

(declare-fun b!4946245 () Bool)

(assert (=> b!4946245 (= e!3090442 (+ 1 (size!37808 (t!367640 testedP!110))))))

(assert (= (and d!1592450 c!844001) b!4946244))

(assert (= (and d!1592450 (not c!844001)) b!4946245))

(declare-fun m!5969434 () Bool)

(assert (=> b!4946245 m!5969434))

(assert (=> b!4946181 d!1592450))

(declare-fun b!4946255 () Bool)

(declare-fun e!3090448 () List!57104)

(assert (=> b!4946255 (= e!3090448 (Cons!56980 (h!63428 lt!2039673) (++!12468 (t!367640 lt!2039673) lt!2039687)))))

(declare-fun e!3090447 () Bool)

(declare-fun b!4946257 () Bool)

(declare-fun lt!2039724 () List!57104)

(assert (=> b!4946257 (= e!3090447 (or (not (= lt!2039687 Nil!56980)) (= lt!2039724 lt!2039673)))))

(declare-fun b!4946254 () Bool)

(assert (=> b!4946254 (= e!3090448 lt!2039687)))

(declare-fun d!1592452 () Bool)

(assert (=> d!1592452 e!3090447))

(declare-fun res!2110640 () Bool)

(assert (=> d!1592452 (=> (not res!2110640) (not e!3090447))))

(assert (=> d!1592452 (= res!2110640 (= (content!10146 lt!2039724) ((_ map or) (content!10146 lt!2039673) (content!10146 lt!2039687))))))

(assert (=> d!1592452 (= lt!2039724 e!3090448)))

(declare-fun c!844004 () Bool)

(assert (=> d!1592452 (= c!844004 ((_ is Nil!56980) lt!2039673))))

(assert (=> d!1592452 (= (++!12468 lt!2039673 lt!2039687) lt!2039724)))

(declare-fun b!4946256 () Bool)

(declare-fun res!2110639 () Bool)

(assert (=> b!4946256 (=> (not res!2110639) (not e!3090447))))

(assert (=> b!4946256 (= res!2110639 (= (size!37808 lt!2039724) (+ (size!37808 lt!2039673) (size!37808 lt!2039687))))))

(assert (= (and d!1592452 c!844004) b!4946254))

(assert (= (and d!1592452 (not c!844004)) b!4946255))

(assert (= (and d!1592452 res!2110640) b!4946256))

(assert (= (and b!4946256 res!2110639) b!4946257))

(declare-fun m!5969436 () Bool)

(assert (=> b!4946255 m!5969436))

(declare-fun m!5969438 () Bool)

(assert (=> d!1592452 m!5969438))

(declare-fun m!5969440 () Bool)

(assert (=> d!1592452 m!5969440))

(declare-fun m!5969442 () Bool)

(assert (=> d!1592452 m!5969442))

(declare-fun m!5969444 () Bool)

(assert (=> b!4946256 m!5969444))

(declare-fun m!5969446 () Bool)

(assert (=> b!4946256 m!5969446))

(declare-fun m!5969448 () Bool)

(assert (=> b!4946256 m!5969448))

(assert (=> b!4946170 d!1592452))

(declare-fun d!1592454 () Bool)

(declare-fun list!18162 (Conc!15002) List!57104)

(assert (=> d!1592454 (= (list!18161 (_2!34065 lt!2039680)) (list!18162 (c!843979 (_2!34065 lt!2039680))))))

(declare-fun bs!1181699 () Bool)

(assert (= bs!1181699 d!1592454))

(declare-fun m!5969450 () Bool)

(assert (=> bs!1181699 m!5969450))

(assert (=> b!4946170 d!1592454))

(declare-fun d!1592456 () Bool)

(assert (=> d!1592456 (= (list!18161 (_1!34065 lt!2039680)) (list!18162 (c!843979 (_1!34065 lt!2039680))))))

(declare-fun bs!1181700 () Bool)

(assert (= bs!1181700 d!1592456))

(declare-fun m!5969452 () Bool)

(assert (=> bs!1181700 m!5969452))

(assert (=> b!4946170 d!1592456))

(declare-fun d!1592458 () Bool)

(declare-fun e!3090451 () Bool)

(assert (=> d!1592458 e!3090451))

(declare-fun res!2110645 () Bool)

(assert (=> d!1592458 (=> (not res!2110645) (not e!3090451))))

(declare-fun lt!2039730 () tuple2!61524)

(declare-fun isBalanced!4151 (Conc!15002) Bool)

(assert (=> d!1592458 (= res!2110645 (isBalanced!4151 (c!843979 (_1!34065 lt!2039730))))))

(declare-datatypes ((tuple2!61526 0))(
  ( (tuple2!61527 (_1!34066 Conc!15002) (_2!34066 Conc!15002)) )
))
(declare-fun lt!2039729 () tuple2!61526)

(assert (=> d!1592458 (= lt!2039730 (tuple2!61525 (BalanceConc!29435 (_1!34066 lt!2039729)) (BalanceConc!29435 (_2!34066 lt!2039729))))))

(declare-fun splitAt!397 (Conc!15002 Int) tuple2!61526)

(assert (=> d!1592458 (= lt!2039729 (splitAt!397 (c!843979 totalInput!685) testedPSize!70))))

(assert (=> d!1592458 (isBalanced!4151 (c!843979 totalInput!685))))

(assert (=> d!1592458 (= (splitAt!396 totalInput!685 testedPSize!70) lt!2039730)))

(declare-fun b!4946262 () Bool)

(declare-fun res!2110646 () Bool)

(assert (=> b!4946262 (=> (not res!2110646) (not e!3090451))))

(assert (=> b!4946262 (= res!2110646 (isBalanced!4151 (c!843979 (_2!34065 lt!2039730))))))

(declare-fun b!4946263 () Bool)

(declare-datatypes ((tuple2!61528 0))(
  ( (tuple2!61529 (_1!34067 List!57104) (_2!34067 List!57104)) )
))
(declare-fun splitAtIndex!145 (List!57104 Int) tuple2!61528)

(assert (=> b!4946263 (= e!3090451 (= (tuple2!61529 (list!18161 (_1!34065 lt!2039730)) (list!18161 (_2!34065 lt!2039730))) (splitAtIndex!145 (list!18161 totalInput!685) testedPSize!70)))))

(assert (= (and d!1592458 res!2110645) b!4946262))

(assert (= (and b!4946262 res!2110646) b!4946263))

(declare-fun m!5969454 () Bool)

(assert (=> d!1592458 m!5969454))

(declare-fun m!5969456 () Bool)

(assert (=> d!1592458 m!5969456))

(declare-fun m!5969458 () Bool)

(assert (=> d!1592458 m!5969458))

(declare-fun m!5969460 () Bool)

(assert (=> b!4946262 m!5969460))

(declare-fun m!5969462 () Bool)

(assert (=> b!4946263 m!5969462))

(declare-fun m!5969464 () Bool)

(assert (=> b!4946263 m!5969464))

(assert (=> b!4946263 m!5969394))

(assert (=> b!4946263 m!5969394))

(declare-fun m!5969466 () Bool)

(assert (=> b!4946263 m!5969466))

(assert (=> b!4946170 d!1592458))

(declare-fun bs!1181709 () Bool)

(declare-fun b!4946336 () Bool)

(declare-fun d!1592460 () Bool)

(assert (= bs!1181709 (and b!4946336 d!1592460)))

(declare-fun lambda!246638 () Int)

(declare-fun lambda!246637 () Int)

(assert (=> bs!1181709 (not (= lambda!246638 lambda!246637))))

(declare-fun bs!1181710 () Bool)

(declare-fun b!4946337 () Bool)

(assert (= bs!1181710 (and b!4946337 d!1592460)))

(declare-fun lambda!246639 () Int)

(assert (=> bs!1181710 (not (= lambda!246639 lambda!246637))))

(declare-fun bs!1181711 () Bool)

(assert (= bs!1181711 (and b!4946337 b!4946336)))

(assert (=> bs!1181711 (= lambda!246639 lambda!246638)))

(declare-fun e!3090502 () Unit!147770)

(declare-fun Unit!147776 () Unit!147770)

(assert (=> b!4946336 (= e!3090502 Unit!147776)))

(declare-datatypes ((List!57106 0))(
  ( (Nil!56982) (Cons!56982 (h!63430 Context!6250) (t!367642 List!57106)) )
))
(declare-fun lt!2039796 () List!57106)

(declare-fun call!345205 () List!57106)

(assert (=> b!4946336 (= lt!2039796 call!345205)))

(declare-fun lt!2039799 () Unit!147770)

(declare-fun lemmaNotForallThenExists!234 (List!57106 Int) Unit!147770)

(assert (=> b!4946336 (= lt!2039799 (lemmaNotForallThenExists!234 lt!2039796 lambda!246637))))

(declare-fun call!345206 () Bool)

(assert (=> b!4946336 call!345206))

(declare-fun lt!2039798 () Unit!147770)

(assert (=> b!4946336 (= lt!2039798 lt!2039799)))

(declare-fun lt!2039797 () Bool)

(declare-datatypes ((Option!14214 0))(
  ( (None!14213) (Some!14213 (v!50189 List!57104)) )
))
(declare-fun isEmpty!30658 (Option!14214) Bool)

(declare-fun getLanguageWitness!683 ((InoxSet Context!6250)) Option!14214)

(assert (=> d!1592460 (= lt!2039797 (isEmpty!30658 (getLanguageWitness!683 z!3568)))))

(declare-fun forall!13258 ((InoxSet Context!6250) Int) Bool)

(assert (=> d!1592460 (= lt!2039797 (forall!13258 z!3568 lambda!246637))))

(declare-fun lt!2039794 () Unit!147770)

(assert (=> d!1592460 (= lt!2039794 e!3090502)))

(declare-fun c!844046 () Bool)

(assert (=> d!1592460 (= c!844046 (not (forall!13258 z!3568 lambda!246637)))))

(assert (=> d!1592460 (= (lostCauseZipper!801 z!3568) lt!2039797)))

(declare-fun bm!345200 () Bool)

(declare-fun lt!2039800 () List!57106)

(declare-fun exists!1332 (List!57106 Int) Bool)

(assert (=> bm!345200 (= call!345206 (exists!1332 (ite c!844046 lt!2039796 lt!2039800) (ite c!844046 lambda!246638 lambda!246639)))))

(declare-fun bm!345201 () Bool)

(declare-fun toList!7996 ((InoxSet Context!6250)) List!57106)

(assert (=> bm!345201 (= call!345205 (toList!7996 z!3568))))

(declare-fun Unit!147777 () Unit!147770)

(assert (=> b!4946337 (= e!3090502 Unit!147777)))

(assert (=> b!4946337 (= lt!2039800 call!345205)))

(declare-fun lt!2039801 () Unit!147770)

(declare-fun lemmaForallThenNotExists!217 (List!57106 Int) Unit!147770)

(assert (=> b!4946337 (= lt!2039801 (lemmaForallThenNotExists!217 lt!2039800 lambda!246637))))

(assert (=> b!4946337 (not call!345206)))

(declare-fun lt!2039795 () Unit!147770)

(assert (=> b!4946337 (= lt!2039795 lt!2039801)))

(assert (= (and d!1592460 c!844046) b!4946336))

(assert (= (and d!1592460 (not c!844046)) b!4946337))

(assert (= (or b!4946336 b!4946337) bm!345200))

(assert (= (or b!4946336 b!4946337) bm!345201))

(declare-fun m!5969534 () Bool)

(assert (=> bm!345200 m!5969534))

(declare-fun m!5969536 () Bool)

(assert (=> b!4946337 m!5969536))

(declare-fun m!5969538 () Bool)

(assert (=> d!1592460 m!5969538))

(assert (=> d!1592460 m!5969538))

(declare-fun m!5969540 () Bool)

(assert (=> d!1592460 m!5969540))

(declare-fun m!5969542 () Bool)

(assert (=> d!1592460 m!5969542))

(assert (=> d!1592460 m!5969542))

(declare-fun m!5969544 () Bool)

(assert (=> b!4946336 m!5969544))

(declare-fun m!5969546 () Bool)

(assert (=> bm!345201 m!5969546))

(assert (=> b!4946169 d!1592460))

(declare-fun d!1592494 () Bool)

(assert (=> d!1592494 (= testedSuffix!70 lt!2039681)))

(declare-fun lt!2039809 () Unit!147770)

(declare-fun choose!36463 (List!57104 List!57104 List!57104 List!57104 List!57104) Unit!147770)

(assert (=> d!1592494 (= lt!2039809 (choose!36463 testedP!110 testedSuffix!70 testedP!110 lt!2039681 lt!2039683))))

(assert (=> d!1592494 (isPrefix!5089 testedP!110 lt!2039683)))

(assert (=> d!1592494 (= (lemmaSamePrefixThenSameSuffix!2481 testedP!110 testedSuffix!70 testedP!110 lt!2039681 lt!2039683) lt!2039809)))

(declare-fun bs!1181713 () Bool)

(assert (= bs!1181713 d!1592494))

(declare-fun m!5969548 () Bool)

(assert (=> bs!1181713 m!5969548))

(assert (=> bs!1181713 m!5969360))

(assert (=> b!4946169 d!1592494))

(declare-fun d!1592496 () Bool)

(declare-fun lt!2039816 () List!57104)

(assert (=> d!1592496 (= (++!12468 testedP!110 lt!2039816) lt!2039683)))

(declare-fun e!3090514 () List!57104)

(assert (=> d!1592496 (= lt!2039816 e!3090514)))

(declare-fun c!844049 () Bool)

(assert (=> d!1592496 (= c!844049 ((_ is Cons!56980) testedP!110))))

(assert (=> d!1592496 (>= (size!37808 lt!2039683) (size!37808 testedP!110))))

(assert (=> d!1592496 (= (getSuffix!3071 lt!2039683 testedP!110) lt!2039816)))

(declare-fun b!4946354 () Bool)

(assert (=> b!4946354 (= e!3090514 (getSuffix!3071 (tail!9743 lt!2039683) (t!367640 testedP!110)))))

(declare-fun b!4946355 () Bool)

(assert (=> b!4946355 (= e!3090514 lt!2039683)))

(assert (= (and d!1592496 c!844049) b!4946354))

(assert (= (and d!1592496 (not c!844049)) b!4946355))

(declare-fun m!5969554 () Bool)

(assert (=> d!1592496 m!5969554))

(assert (=> d!1592496 m!5969352))

(assert (=> d!1592496 m!5969356))

(assert (=> b!4946354 m!5969406))

(assert (=> b!4946354 m!5969406))

(declare-fun m!5969556 () Bool)

(assert (=> b!4946354 m!5969556))

(assert (=> b!4946169 d!1592496))

(declare-fun d!1592502 () Bool)

(declare-fun lt!2039819 () Int)

(assert (=> d!1592502 (= lt!2039819 (size!37808 (list!18161 totalInput!685)))))

(declare-fun size!37810 (Conc!15002) Int)

(assert (=> d!1592502 (= lt!2039819 (size!37810 (c!843979 totalInput!685)))))

(assert (=> d!1592502 (= (size!37807 totalInput!685) lt!2039819)))

(declare-fun bs!1181715 () Bool)

(assert (= bs!1181715 d!1592502))

(assert (=> bs!1181715 m!5969394))

(assert (=> bs!1181715 m!5969394))

(declare-fun m!5969558 () Bool)

(assert (=> bs!1181715 m!5969558))

(declare-fun m!5969560 () Bool)

(assert (=> bs!1181715 m!5969560))

(assert (=> b!4946178 d!1592502))

(declare-fun d!1592504 () Bool)

(declare-fun lt!2039820 () Int)

(assert (=> d!1592504 (= lt!2039820 (size!37808 (list!18161 (_1!34065 lt!2039680))))))

(assert (=> d!1592504 (= lt!2039820 (size!37810 (c!843979 (_1!34065 lt!2039680))))))

(assert (=> d!1592504 (= (size!37807 (_1!34065 lt!2039680)) lt!2039820)))

(declare-fun bs!1181716 () Bool)

(assert (= bs!1181716 d!1592504))

(assert (=> bs!1181716 m!5969370))

(assert (=> bs!1181716 m!5969370))

(declare-fun m!5969562 () Bool)

(assert (=> bs!1181716 m!5969562))

(declare-fun m!5969564 () Bool)

(assert (=> bs!1181716 m!5969564))

(assert (=> b!4946168 d!1592504))

(declare-fun b!4946362 () Bool)

(declare-fun e!3090519 () Bool)

(declare-fun e!3090521 () Bool)

(assert (=> b!4946362 (= e!3090519 e!3090521)))

(declare-fun res!2110681 () Bool)

(assert (=> b!4946362 (=> (not res!2110681) (not e!3090521))))

(assert (=> b!4946362 (= res!2110681 (not ((_ is Nil!56980) lt!2039683)))))

(declare-fun b!4946364 () Bool)

(assert (=> b!4946364 (= e!3090521 (isPrefix!5089 (tail!9743 testedP!110) (tail!9743 lt!2039683)))))

(declare-fun b!4946365 () Bool)

(declare-fun e!3090520 () Bool)

(assert (=> b!4946365 (= e!3090520 (>= (size!37808 lt!2039683) (size!37808 testedP!110)))))

(declare-fun b!4946363 () Bool)

(declare-fun res!2110682 () Bool)

(assert (=> b!4946363 (=> (not res!2110682) (not e!3090521))))

(assert (=> b!4946363 (= res!2110682 (= (head!10609 testedP!110) (head!10609 lt!2039683)))))

(declare-fun d!1592506 () Bool)

(assert (=> d!1592506 e!3090520))

(declare-fun res!2110679 () Bool)

(assert (=> d!1592506 (=> res!2110679 e!3090520)))

(declare-fun lt!2039821 () Bool)

(assert (=> d!1592506 (= res!2110679 (not lt!2039821))))

(assert (=> d!1592506 (= lt!2039821 e!3090519)))

(declare-fun res!2110680 () Bool)

(assert (=> d!1592506 (=> res!2110680 e!3090519)))

(assert (=> d!1592506 (= res!2110680 ((_ is Nil!56980) testedP!110))))

(assert (=> d!1592506 (= (isPrefix!5089 testedP!110 lt!2039683) lt!2039821)))

(assert (= (and d!1592506 (not res!2110680)) b!4946362))

(assert (= (and b!4946362 res!2110681) b!4946363))

(assert (= (and b!4946363 res!2110682) b!4946364))

(assert (= (and d!1592506 (not res!2110679)) b!4946365))

(declare-fun m!5969566 () Bool)

(assert (=> b!4946364 m!5969566))

(assert (=> b!4946364 m!5969406))

(assert (=> b!4946364 m!5969566))

(assert (=> b!4946364 m!5969406))

(declare-fun m!5969568 () Bool)

(assert (=> b!4946364 m!5969568))

(assert (=> b!4946365 m!5969352))

(assert (=> b!4946365 m!5969356))

(declare-fun m!5969570 () Bool)

(assert (=> b!4946363 m!5969570))

(assert (=> b!4946363 m!5969410))

(assert (=> b!4946177 d!1592506))

(declare-fun b!4946366 () Bool)

(declare-fun e!3090522 () Bool)

(declare-fun e!3090524 () Bool)

(assert (=> b!4946366 (= e!3090522 e!3090524)))

(declare-fun res!2110685 () Bool)

(assert (=> b!4946366 (=> (not res!2110685) (not e!3090524))))

(assert (=> b!4946366 (= res!2110685 (not ((_ is Nil!56980) lt!2039686)))))

(declare-fun b!4946368 () Bool)

(assert (=> b!4946368 (= e!3090524 (isPrefix!5089 (tail!9743 testedP!110) (tail!9743 lt!2039686)))))

(declare-fun b!4946369 () Bool)

(declare-fun e!3090523 () Bool)

(assert (=> b!4946369 (= e!3090523 (>= (size!37808 lt!2039686) (size!37808 testedP!110)))))

(declare-fun b!4946367 () Bool)

(declare-fun res!2110686 () Bool)

(assert (=> b!4946367 (=> (not res!2110686) (not e!3090524))))

(assert (=> b!4946367 (= res!2110686 (= (head!10609 testedP!110) (head!10609 lt!2039686)))))

(declare-fun d!1592508 () Bool)

(assert (=> d!1592508 e!3090523))

(declare-fun res!2110683 () Bool)

(assert (=> d!1592508 (=> res!2110683 e!3090523)))

(declare-fun lt!2039822 () Bool)

(assert (=> d!1592508 (= res!2110683 (not lt!2039822))))

(assert (=> d!1592508 (= lt!2039822 e!3090522)))

(declare-fun res!2110684 () Bool)

(assert (=> d!1592508 (=> res!2110684 e!3090522)))

(assert (=> d!1592508 (= res!2110684 ((_ is Nil!56980) testedP!110))))

(assert (=> d!1592508 (= (isPrefix!5089 testedP!110 lt!2039686) lt!2039822)))

(assert (= (and d!1592508 (not res!2110684)) b!4946366))

(assert (= (and b!4946366 res!2110685) b!4946367))

(assert (= (and b!4946367 res!2110686) b!4946368))

(assert (= (and d!1592508 (not res!2110683)) b!4946369))

(assert (=> b!4946368 m!5969566))

(declare-fun m!5969572 () Bool)

(assert (=> b!4946368 m!5969572))

(assert (=> b!4946368 m!5969566))

(assert (=> b!4946368 m!5969572))

(declare-fun m!5969574 () Bool)

(assert (=> b!4946368 m!5969574))

(declare-fun m!5969576 () Bool)

(assert (=> b!4946369 m!5969576))

(assert (=> b!4946369 m!5969356))

(assert (=> b!4946367 m!5969570))

(declare-fun m!5969580 () Bool)

(assert (=> b!4946367 m!5969580))

(assert (=> b!4946177 d!1592508))

(declare-fun d!1592510 () Bool)

(assert (=> d!1592510 (isPrefix!5089 testedP!110 (++!12468 testedP!110 testedSuffix!70))))

(declare-fun lt!2039828 () Unit!147770)

(declare-fun choose!36466 (List!57104 List!57104) Unit!147770)

(assert (=> d!1592510 (= lt!2039828 (choose!36466 testedP!110 testedSuffix!70))))

(assert (=> d!1592510 (= (lemmaConcatTwoListThenFirstIsPrefix!3313 testedP!110 testedSuffix!70) lt!2039828)))

(declare-fun bs!1181718 () Bool)

(assert (= bs!1181718 d!1592510))

(assert (=> bs!1181718 m!5969396))

(assert (=> bs!1181718 m!5969396))

(declare-fun m!5969602 () Bool)

(assert (=> bs!1181718 m!5969602))

(declare-fun m!5969604 () Bool)

(assert (=> bs!1181718 m!5969604))

(assert (=> b!4946177 d!1592510))

(declare-fun d!1592520 () Bool)

(assert (=> d!1592520 (= (list!18161 totalInput!685) (list!18162 (c!843979 totalInput!685)))))

(declare-fun bs!1181719 () Bool)

(assert (= bs!1181719 d!1592520))

(declare-fun m!5969606 () Bool)

(assert (=> bs!1181719 m!5969606))

(assert (=> start!520704 d!1592520))

(declare-fun b!4946382 () Bool)

(declare-fun e!3090534 () List!57104)

(assert (=> b!4946382 (= e!3090534 (Cons!56980 (h!63428 testedP!110) (++!12468 (t!367640 testedP!110) testedSuffix!70)))))

(declare-fun e!3090533 () Bool)

(declare-fun b!4946384 () Bool)

(declare-fun lt!2039829 () List!57104)

(assert (=> b!4946384 (= e!3090533 (or (not (= testedSuffix!70 Nil!56980)) (= lt!2039829 testedP!110)))))

(declare-fun b!4946381 () Bool)

(assert (=> b!4946381 (= e!3090534 testedSuffix!70)))

(declare-fun d!1592522 () Bool)

(assert (=> d!1592522 e!3090533))

(declare-fun res!2110697 () Bool)

(assert (=> d!1592522 (=> (not res!2110697) (not e!3090533))))

(assert (=> d!1592522 (= res!2110697 (= (content!10146 lt!2039829) ((_ map or) (content!10146 testedP!110) (content!10146 testedSuffix!70))))))

(assert (=> d!1592522 (= lt!2039829 e!3090534)))

(declare-fun c!844053 () Bool)

(assert (=> d!1592522 (= c!844053 ((_ is Nil!56980) testedP!110))))

(assert (=> d!1592522 (= (++!12468 testedP!110 testedSuffix!70) lt!2039829)))

(declare-fun b!4946383 () Bool)

(declare-fun res!2110696 () Bool)

(assert (=> b!4946383 (=> (not res!2110696) (not e!3090533))))

(assert (=> b!4946383 (= res!2110696 (= (size!37808 lt!2039829) (+ (size!37808 testedP!110) (size!37808 testedSuffix!70))))))

(assert (= (and d!1592522 c!844053) b!4946381))

(assert (= (and d!1592522 (not c!844053)) b!4946382))

(assert (= (and d!1592522 res!2110697) b!4946383))

(assert (= (and b!4946383 res!2110696) b!4946384))

(declare-fun m!5969608 () Bool)

(assert (=> b!4946382 m!5969608))

(declare-fun m!5969610 () Bool)

(assert (=> d!1592522 m!5969610))

(declare-fun m!5969612 () Bool)

(assert (=> d!1592522 m!5969612))

(declare-fun m!5969614 () Bool)

(assert (=> d!1592522 m!5969614))

(declare-fun m!5969616 () Bool)

(assert (=> b!4946383 m!5969616))

(assert (=> b!4946383 m!5969356))

(declare-fun m!5969618 () Bool)

(assert (=> b!4946383 m!5969618))

(assert (=> start!520704 d!1592522))

(declare-fun d!1592524 () Bool)

(assert (=> d!1592524 (= (inv!74221 totalInput!685) (isBalanced!4151 (c!843979 totalInput!685)))))

(declare-fun bs!1181723 () Bool)

(assert (= bs!1181723 d!1592524))

(assert (=> bs!1181723 m!5969458))

(assert (=> start!520704 d!1592524))

(declare-fun d!1592534 () Bool)

(declare-fun c!844057 () Bool)

(assert (=> d!1592534 (= c!844057 ((_ is Node!15002) (c!843979 totalInput!685)))))

(declare-fun e!3090541 () Bool)

(assert (=> d!1592534 (= (inv!74222 (c!843979 totalInput!685)) e!3090541)))

(declare-fun b!4946395 () Bool)

(declare-fun inv!74225 (Conc!15002) Bool)

(assert (=> b!4946395 (= e!3090541 (inv!74225 (c!843979 totalInput!685)))))

(declare-fun b!4946396 () Bool)

(declare-fun e!3090542 () Bool)

(assert (=> b!4946396 (= e!3090541 e!3090542)))

(declare-fun res!2110702 () Bool)

(assert (=> b!4946396 (= res!2110702 (not ((_ is Leaf!24936) (c!843979 totalInput!685))))))

(assert (=> b!4946396 (=> res!2110702 e!3090542)))

(declare-fun b!4946397 () Bool)

(declare-fun inv!74226 (Conc!15002) Bool)

(assert (=> b!4946397 (= e!3090542 (inv!74226 (c!843979 totalInput!685)))))

(assert (= (and d!1592534 c!844057) b!4946395))

(assert (= (and d!1592534 (not c!844057)) b!4946396))

(assert (= (and b!4946396 (not res!2110702)) b!4946397))

(declare-fun m!5969642 () Bool)

(assert (=> b!4946395 m!5969642))

(declare-fun m!5969644 () Bool)

(assert (=> b!4946397 m!5969644))

(assert (=> b!4946176 d!1592534))

(declare-fun d!1592536 () Bool)

(declare-fun lambda!246642 () Int)

(declare-fun forall!13260 (List!57103 Int) Bool)

(assert (=> d!1592536 (= (inv!74220 setElem!28052) (forall!13260 (exprs!3625 setElem!28052) lambda!246642))))

(declare-fun bs!1181724 () Bool)

(assert (= bs!1181724 d!1592536))

(declare-fun m!5969646 () Bool)

(assert (=> bs!1181724 m!5969646))

(assert (=> setNonEmpty!28052 d!1592536))

(declare-fun d!1592538 () Bool)

(declare-fun lt!2039834 () Int)

(assert (=> d!1592538 (>= lt!2039834 0)))

(declare-fun e!3090543 () Int)

(assert (=> d!1592538 (= lt!2039834 e!3090543)))

(declare-fun c!844058 () Bool)

(assert (=> d!1592538 (= c!844058 ((_ is Nil!56980) lt!2039683))))

(assert (=> d!1592538 (= (size!37808 lt!2039683) lt!2039834)))

(declare-fun b!4946398 () Bool)

(assert (=> b!4946398 (= e!3090543 0)))

(declare-fun b!4946399 () Bool)

(assert (=> b!4946399 (= e!3090543 (+ 1 (size!37808 (t!367640 lt!2039683))))))

(assert (= (and d!1592538 c!844058) b!4946398))

(assert (= (and d!1592538 (not c!844058)) b!4946399))

(declare-fun m!5969648 () Bool)

(assert (=> b!4946399 m!5969648))

(assert (=> b!4946175 d!1592538))

(declare-fun d!1592540 () Bool)

(assert (=> d!1592540 (<= (size!37808 testedP!110) (size!37808 lt!2039683))))

(declare-fun lt!2039837 () Unit!147770)

(declare-fun choose!36468 (List!57104 List!57104) Unit!147770)

(assert (=> d!1592540 (= lt!2039837 (choose!36468 testedP!110 lt!2039683))))

(assert (=> d!1592540 (isPrefix!5089 testedP!110 lt!2039683)))

(assert (=> d!1592540 (= (lemmaIsPrefixThenSmallerEqSize!744 testedP!110 lt!2039683) lt!2039837)))

(declare-fun bs!1181725 () Bool)

(assert (= bs!1181725 d!1592540))

(assert (=> bs!1181725 m!5969356))

(assert (=> bs!1181725 m!5969352))

(declare-fun m!5969650 () Bool)

(assert (=> bs!1181725 m!5969650))

(assert (=> bs!1181725 m!5969360))

(assert (=> b!4946175 d!1592540))

(declare-fun b!4946404 () Bool)

(declare-fun e!3090546 () Bool)

(declare-fun tp!1387470 () Bool)

(declare-fun tp!1387471 () Bool)

(assert (=> b!4946404 (= e!3090546 (and tp!1387470 tp!1387471))))

(assert (=> b!4946180 (= tp!1387461 e!3090546)))

(assert (= (and b!4946180 ((_ is Cons!56979) (exprs!3625 setElem!28052))) b!4946404))

(declare-fun b!4946409 () Bool)

(declare-fun e!3090549 () Bool)

(declare-fun tp!1387474 () Bool)

(assert (=> b!4946409 (= e!3090549 (and tp_is_empty!36163 tp!1387474))))

(assert (=> b!4946174 (= tp!1387462 e!3090549)))

(assert (= (and b!4946174 ((_ is Cons!56980) (t!367640 testedSuffix!70))) b!4946409))

(declare-fun b!4946410 () Bool)

(declare-fun e!3090550 () Bool)

(declare-fun tp!1387475 () Bool)

(assert (=> b!4946410 (= e!3090550 (and tp_is_empty!36163 tp!1387475))))

(assert (=> b!4946179 (= tp!1387465 e!3090550)))

(assert (= (and b!4946179 ((_ is Cons!56980) (t!367640 testedP!110))) b!4946410))

(declare-fun b!4946423 () Bool)

(declare-fun e!3090557 () Bool)

(declare-fun tp!1387482 () Bool)

(declare-fun tp!1387483 () Bool)

(assert (=> b!4946423 (= e!3090557 (and (inv!74222 (left!41569 (c!843979 totalInput!685))) tp!1387483 (inv!74222 (right!41899 (c!843979 totalInput!685))) tp!1387482))))

(declare-fun b!4946425 () Bool)

(declare-fun e!3090558 () Bool)

(declare-fun tp!1387484 () Bool)

(assert (=> b!4946425 (= e!3090558 tp!1387484)))

(declare-fun b!4946424 () Bool)

(declare-fun inv!74227 (IArray!30065) Bool)

(assert (=> b!4946424 (= e!3090557 (and (inv!74227 (xs!18328 (c!843979 totalInput!685))) e!3090558))))

(assert (=> b!4946176 (= tp!1387463 (and (inv!74222 (c!843979 totalInput!685)) e!3090557))))

(assert (= (and b!4946176 ((_ is Node!15002) (c!843979 totalInput!685))) b!4946423))

(assert (= b!4946424 b!4946425))

(assert (= (and b!4946176 ((_ is Leaf!24936) (c!843979 totalInput!685))) b!4946424))

(declare-fun m!5969652 () Bool)

(assert (=> b!4946423 m!5969652))

(declare-fun m!5969654 () Bool)

(assert (=> b!4946423 m!5969654))

(declare-fun m!5969656 () Bool)

(assert (=> b!4946424 m!5969656))

(assert (=> b!4946176 m!5969358))

(declare-fun condSetEmpty!28055 () Bool)

(assert (=> setNonEmpty!28052 (= condSetEmpty!28055 (= setRest!28052 ((as const (Array Context!6250 Bool)) false)))))

(declare-fun setRes!28055 () Bool)

(assert (=> setNonEmpty!28052 (= tp!1387464 setRes!28055)))

(declare-fun setIsEmpty!28055 () Bool)

(assert (=> setIsEmpty!28055 setRes!28055))

(declare-fun setNonEmpty!28055 () Bool)

(declare-fun e!3090562 () Bool)

(declare-fun setElem!28055 () Context!6250)

(declare-fun tp!1387490 () Bool)

(assert (=> setNonEmpty!28055 (= setRes!28055 (and tp!1387490 (inv!74220 setElem!28055) e!3090562))))

(declare-fun setRest!28055 () (InoxSet Context!6250))

(assert (=> setNonEmpty!28055 (= setRest!28052 ((_ map or) (store ((as const (Array Context!6250 Bool)) false) setElem!28055 true) setRest!28055))))

(declare-fun b!4946432 () Bool)

(declare-fun tp!1387489 () Bool)

(assert (=> b!4946432 (= e!3090562 tp!1387489)))

(assert (= (and setNonEmpty!28052 condSetEmpty!28055) setIsEmpty!28055))

(assert (= (and setNonEmpty!28052 (not condSetEmpty!28055)) setNonEmpty!28055))

(assert (= setNonEmpty!28055 b!4946432))

(declare-fun m!5969662 () Bool)

(assert (=> setNonEmpty!28055 m!5969662))

(check-sat (not b!4946336) (not b!4946191) (not d!1592522) (not b!4946382) (not d!1592540) (not d!1592524) (not d!1592452) (not b!4946383) (not b!4946263) (not b!4946245) (not d!1592510) (not b!4946219) (not b!4946367) (not b!4946237) (not d!1592434) (not b!4946404) (not b!4946193) (not d!1592456) (not b!4946369) (not b!4946337) (not b!4946192) (not b!4946423) (not b!4946227) (not b!4946239) (not bm!345186) (not b!4946432) (not b!4946365) (not b!4946256) (not b!4946255) (not b!4946176) (not b!4946364) (not d!1592428) (not bm!345201) (not b!4946409) (not b!4946410) (not b!4946424) (not d!1592436) (not b!4946222) (not d!1592454) (not bm!345200) (not b!4946262) (not d!1592496) (not d!1592460) (not b!4946368) (not setNonEmpty!28055) (not b!4946395) (not b!4946397) (not d!1592458) (not d!1592448) (not d!1592502) (not b!4946238) (not b!4946399) (not d!1592494) (not d!1592444) (not b!4946425) (not b!4946363) (not d!1592438) (not b!4946230) (not d!1592446) (not d!1592520) (not b!4946354) tp_is_empty!36163 (not d!1592536) (not d!1592504))
(check-sat)
