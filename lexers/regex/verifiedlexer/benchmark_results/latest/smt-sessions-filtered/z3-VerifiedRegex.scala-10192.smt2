; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532168 () Bool)

(assert start!532168)

(declare-fun b!5031379 () Bool)

(declare-fun e!3143100 () Bool)

(declare-datatypes ((C!28128 0))(
  ( (C!28129 (val!23460 Int)) )
))
(declare-datatypes ((List!58364 0))(
  ( (Nil!58240) (Cons!58240 (h!64688 C!28128) (t!370780 List!58364)) )
))
(declare-datatypes ((IArray!30977 0))(
  ( (IArray!30978 (innerList!15546 List!58364)) )
))
(declare-datatypes ((Conc!15458 0))(
  ( (Node!15458 (left!42612 Conc!15458) (right!42942 Conc!15458) (csize!31146 Int) (cheight!15669 Int)) (Leaf!25651 (xs!18784 IArray!30977) (csize!31147 Int)) (Empty!15458) )
))
(declare-datatypes ((BalanceConc!30346 0))(
  ( (BalanceConc!30347 (c!861455 Conc!15458)) )
))
(declare-fun totalInput!786 () BalanceConc!30346)

(declare-fun tp!1409550 () Bool)

(declare-fun inv!76865 (Conc!15458) Bool)

(assert (=> b!5031379 (= e!3143100 (and (inv!76865 (c!861455 totalInput!786)) tp!1409550))))

(declare-fun res!2144203 () Bool)

(declare-fun e!3143101 () Bool)

(assert (=> start!532168 (=> (not res!2144203) (not e!3143101))))

(declare-fun input!5499 () BalanceConc!30346)

(declare-fun isSuffix!1387 (List!58364 List!58364) Bool)

(declare-fun list!18815 (BalanceConc!30346) List!58364)

(assert (=> start!532168 (= res!2144203 (isSuffix!1387 (list!18815 input!5499) (list!18815 totalInput!786)))))

(assert (=> start!532168 e!3143101))

(declare-fun e!3143103 () Bool)

(declare-fun inv!76866 (BalanceConc!30346) Bool)

(assert (=> start!532168 (and (inv!76866 input!5499) e!3143103)))

(assert (=> start!532168 (and (inv!76866 totalInput!786) e!3143100)))

(declare-fun condSetEmpty!29012 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13939 0))(
  ( (ElementMatch!13939 (c!861456 C!28128)) (Concat!22732 (regOne!28390 Regex!13939) (regTwo!28390 Regex!13939)) (EmptyExpr!13939) (Star!13939 (reg!14268 Regex!13939)) (EmptyLang!13939) (Union!13939 (regOne!28391 Regex!13939) (regTwo!28391 Regex!13939)) )
))
(declare-datatypes ((List!58365 0))(
  ( (Nil!58241) (Cons!58241 (h!64689 Regex!13939) (t!370781 List!58365)) )
))
(declare-datatypes ((Context!6728 0))(
  ( (Context!6729 (exprs!3864 List!58365)) )
))
(declare-fun z!3733 () (InoxSet Context!6728))

(assert (=> start!532168 (= condSetEmpty!29012 (= z!3733 ((as const (Array Context!6728 Bool)) false)))))

(declare-fun setRes!29012 () Bool)

(assert (=> start!532168 setRes!29012))

(declare-fun b!5031380 () Bool)

(declare-fun isBalanced!4320 (Conc!15458) Bool)

(assert (=> b!5031380 (= e!3143101 (not (isBalanced!4320 (c!861455 input!5499))))))

(declare-fun lt!2082138 () Int)

(declare-fun lt!2082139 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!253 ((InoxSet Context!6728) Int BalanceConc!30346 Int) Int)

(declare-fun size!38778 (BalanceConc!30346) Int)

(assert (=> b!5031380 (= lt!2082139 (findLongestMatchInnerZipperFastV2!253 z!3733 (- lt!2082138 (size!38778 input!5499)) totalInput!786 lt!2082138))))

(assert (=> b!5031380 (= lt!2082138 (size!38778 totalInput!786))))

(declare-fun b!5031381 () Bool)

(declare-fun e!3143102 () Bool)

(declare-fun tp!1409548 () Bool)

(assert (=> b!5031381 (= e!3143102 tp!1409548)))

(declare-fun b!5031382 () Bool)

(declare-fun tp!1409549 () Bool)

(assert (=> b!5031382 (= e!3143103 (and (inv!76865 (c!861455 input!5499)) tp!1409549))))

(declare-fun setNonEmpty!29012 () Bool)

(declare-fun tp!1409547 () Bool)

(declare-fun setElem!29012 () Context!6728)

(declare-fun inv!76867 (Context!6728) Bool)

(assert (=> setNonEmpty!29012 (= setRes!29012 (and tp!1409547 (inv!76867 setElem!29012) e!3143102))))

(declare-fun setRest!29012 () (InoxSet Context!6728))

(assert (=> setNonEmpty!29012 (= z!3733 ((_ map or) (store ((as const (Array Context!6728 Bool)) false) setElem!29012 true) setRest!29012))))

(declare-fun setIsEmpty!29012 () Bool)

(assert (=> setIsEmpty!29012 setRes!29012))

(assert (= (and start!532168 res!2144203) b!5031380))

(assert (= start!532168 b!5031382))

(assert (= start!532168 b!5031379))

(assert (= (and start!532168 condSetEmpty!29012) setIsEmpty!29012))

(assert (= (and start!532168 (not condSetEmpty!29012)) setNonEmpty!29012))

(assert (= setNonEmpty!29012 b!5031381))

(declare-fun m!6066478 () Bool)

(assert (=> b!5031380 m!6066478))

(declare-fun m!6066480 () Bool)

(assert (=> b!5031380 m!6066480))

(declare-fun m!6066482 () Bool)

(assert (=> b!5031380 m!6066482))

(declare-fun m!6066484 () Bool)

(assert (=> b!5031380 m!6066484))

(declare-fun m!6066486 () Bool)

(assert (=> start!532168 m!6066486))

(declare-fun m!6066488 () Bool)

(assert (=> start!532168 m!6066488))

(declare-fun m!6066490 () Bool)

(assert (=> start!532168 m!6066490))

(assert (=> start!532168 m!6066486))

(assert (=> start!532168 m!6066490))

(declare-fun m!6066492 () Bool)

(assert (=> start!532168 m!6066492))

(declare-fun m!6066494 () Bool)

(assert (=> start!532168 m!6066494))

(declare-fun m!6066496 () Bool)

(assert (=> b!5031382 m!6066496))

(declare-fun m!6066498 () Bool)

(assert (=> b!5031379 m!6066498))

(declare-fun m!6066500 () Bool)

(assert (=> setNonEmpty!29012 m!6066500))

(check-sat (not setNonEmpty!29012) (not start!532168) (not b!5031382) (not b!5031381) (not b!5031379) (not b!5031380))
(check-sat)
(get-model)

(declare-fun b!5031395 () Bool)

(declare-fun res!2144221 () Bool)

(declare-fun e!3143109 () Bool)

(assert (=> b!5031395 (=> (not res!2144221) (not e!3143109))))

(assert (=> b!5031395 (= res!2144221 (isBalanced!4320 (left!42612 (c!861455 input!5499))))))

(declare-fun b!5031396 () Bool)

(declare-fun res!2144218 () Bool)

(assert (=> b!5031396 (=> (not res!2144218) (not e!3143109))))

(declare-fun isEmpty!31484 (Conc!15458) Bool)

(assert (=> b!5031396 (= res!2144218 (not (isEmpty!31484 (left!42612 (c!861455 input!5499)))))))

(declare-fun b!5031397 () Bool)

(assert (=> b!5031397 (= e!3143109 (not (isEmpty!31484 (right!42942 (c!861455 input!5499)))))))

(declare-fun b!5031398 () Bool)

(declare-fun e!3143108 () Bool)

(assert (=> b!5031398 (= e!3143108 e!3143109)))

(declare-fun res!2144216 () Bool)

(assert (=> b!5031398 (=> (not res!2144216) (not e!3143109))))

(declare-fun height!2049 (Conc!15458) Int)

(assert (=> b!5031398 (= res!2144216 (<= (- 1) (- (height!2049 (left!42612 (c!861455 input!5499))) (height!2049 (right!42942 (c!861455 input!5499))))))))

(declare-fun d!1619131 () Bool)

(declare-fun res!2144220 () Bool)

(assert (=> d!1619131 (=> res!2144220 e!3143108)))

(get-info :version)

(assert (=> d!1619131 (= res!2144220 (not ((_ is Node!15458) (c!861455 input!5499))))))

(assert (=> d!1619131 (= (isBalanced!4320 (c!861455 input!5499)) e!3143108)))

(declare-fun b!5031399 () Bool)

(declare-fun res!2144219 () Bool)

(assert (=> b!5031399 (=> (not res!2144219) (not e!3143109))))

(assert (=> b!5031399 (= res!2144219 (isBalanced!4320 (right!42942 (c!861455 input!5499))))))

(declare-fun b!5031400 () Bool)

(declare-fun res!2144217 () Bool)

(assert (=> b!5031400 (=> (not res!2144217) (not e!3143109))))

(assert (=> b!5031400 (= res!2144217 (<= (- (height!2049 (left!42612 (c!861455 input!5499))) (height!2049 (right!42942 (c!861455 input!5499)))) 1))))

(assert (= (and d!1619131 (not res!2144220)) b!5031398))

(assert (= (and b!5031398 res!2144216) b!5031400))

(assert (= (and b!5031400 res!2144217) b!5031395))

(assert (= (and b!5031395 res!2144221) b!5031399))

(assert (= (and b!5031399 res!2144219) b!5031396))

(assert (= (and b!5031396 res!2144218) b!5031397))

(declare-fun m!6066502 () Bool)

(assert (=> b!5031397 m!6066502))

(declare-fun m!6066504 () Bool)

(assert (=> b!5031398 m!6066504))

(declare-fun m!6066506 () Bool)

(assert (=> b!5031398 m!6066506))

(declare-fun m!6066508 () Bool)

(assert (=> b!5031396 m!6066508))

(declare-fun m!6066510 () Bool)

(assert (=> b!5031395 m!6066510))

(declare-fun m!6066512 () Bool)

(assert (=> b!5031399 m!6066512))

(assert (=> b!5031400 m!6066504))

(assert (=> b!5031400 m!6066506))

(assert (=> b!5031380 d!1619131))

(declare-fun b!5031429 () Bool)

(declare-fun e!3143125 () Int)

(declare-fun e!3143128 () Int)

(assert (=> b!5031429 (= e!3143125 e!3143128)))

(declare-fun lt!2082146 () (InoxSet Context!6728))

(declare-fun derivationStepZipper!733 ((InoxSet Context!6728) C!28128) (InoxSet Context!6728))

(declare-fun apply!14215 (BalanceConc!30346 Int) C!28128)

(assert (=> b!5031429 (= lt!2082146 (derivationStepZipper!733 z!3733 (apply!14215 totalInput!786 (- lt!2082138 (size!38778 input!5499)))))))

(declare-fun lt!2082147 () Int)

(assert (=> b!5031429 (= lt!2082147 (findLongestMatchInnerZipperFastV2!253 lt!2082146 (+ (- lt!2082138 (size!38778 input!5499)) 1) totalInput!786 lt!2082138))))

(declare-fun c!861465 () Bool)

(assert (=> b!5031429 (= c!861465 (> lt!2082147 0))))

(declare-fun b!5031430 () Bool)

(assert (=> b!5031430 (= e!3143125 0)))

(declare-fun b!5031431 () Bool)

(declare-fun e!3143127 () Bool)

(assert (=> b!5031431 (= e!3143127 (<= (- lt!2082138 (size!38778 input!5499)) (size!38778 totalInput!786)))))

(declare-fun b!5031432 () Bool)

(declare-fun e!3143126 () Int)

(assert (=> b!5031432 (= e!3143126 0)))

(declare-fun b!5031433 () Bool)

(declare-fun e!3143124 () Bool)

(declare-fun lostCauseZipper!952 ((InoxSet Context!6728)) Bool)

(assert (=> b!5031433 (= e!3143124 (lostCauseZipper!952 z!3733))))

(declare-fun b!5031435 () Bool)

(assert (=> b!5031435 (= e!3143126 1)))

(declare-fun b!5031436 () Bool)

(assert (=> b!5031436 (= e!3143128 (+ 1 lt!2082147))))

(declare-fun b!5031434 () Bool)

(declare-fun c!861463 () Bool)

(declare-fun nullableZipper!946 ((InoxSet Context!6728)) Bool)

(assert (=> b!5031434 (= c!861463 (nullableZipper!946 lt!2082146))))

(assert (=> b!5031434 (= e!3143128 e!3143126)))

(declare-fun d!1619133 () Bool)

(declare-fun lt!2082148 () Int)

(assert (=> d!1619133 (and (>= lt!2082148 0) (<= lt!2082148 (- lt!2082138 (- lt!2082138 (size!38778 input!5499)))))))

(assert (=> d!1619133 (= lt!2082148 e!3143125)))

(declare-fun c!861464 () Bool)

(assert (=> d!1619133 (= c!861464 e!3143124)))

(declare-fun res!2144239 () Bool)

(assert (=> d!1619133 (=> res!2144239 e!3143124)))

(assert (=> d!1619133 (= res!2144239 (= (- lt!2082138 (size!38778 input!5499)) lt!2082138))))

(assert (=> d!1619133 e!3143127))

(declare-fun res!2144238 () Bool)

(assert (=> d!1619133 (=> (not res!2144238) (not e!3143127))))

(assert (=> d!1619133 (= res!2144238 (>= (- lt!2082138 (size!38778 input!5499)) 0))))

(assert (=> d!1619133 (= (findLongestMatchInnerZipperFastV2!253 z!3733 (- lt!2082138 (size!38778 input!5499)) totalInput!786 lt!2082138) lt!2082148)))

(assert (= (and d!1619133 res!2144238) b!5031431))

(assert (= (and d!1619133 (not res!2144239)) b!5031433))

(assert (= (and d!1619133 c!861464) b!5031430))

(assert (= (and d!1619133 (not c!861464)) b!5031429))

(assert (= (and b!5031429 c!861465) b!5031436))

(assert (= (and b!5031429 (not c!861465)) b!5031434))

(assert (= (and b!5031434 c!861463) b!5031435))

(assert (= (and b!5031434 (not c!861463)) b!5031432))

(declare-fun m!6066514 () Bool)

(assert (=> b!5031429 m!6066514))

(assert (=> b!5031429 m!6066514))

(declare-fun m!6066516 () Bool)

(assert (=> b!5031429 m!6066516))

(declare-fun m!6066518 () Bool)

(assert (=> b!5031429 m!6066518))

(assert (=> b!5031431 m!6066484))

(declare-fun m!6066520 () Bool)

(assert (=> b!5031433 m!6066520))

(declare-fun m!6066522 () Bool)

(assert (=> b!5031434 m!6066522))

(assert (=> b!5031380 d!1619133))

(declare-fun d!1619137 () Bool)

(declare-fun lt!2082151 () Int)

(declare-fun size!38779 (List!58364) Int)

(assert (=> d!1619137 (= lt!2082151 (size!38779 (list!18815 input!5499)))))

(declare-fun size!38780 (Conc!15458) Int)

(assert (=> d!1619137 (= lt!2082151 (size!38780 (c!861455 input!5499)))))

(assert (=> d!1619137 (= (size!38778 input!5499) lt!2082151)))

(declare-fun bs!1188567 () Bool)

(assert (= bs!1188567 d!1619137))

(assert (=> bs!1188567 m!6066486))

(assert (=> bs!1188567 m!6066486))

(declare-fun m!6066536 () Bool)

(assert (=> bs!1188567 m!6066536))

(declare-fun m!6066538 () Bool)

(assert (=> bs!1188567 m!6066538))

(assert (=> b!5031380 d!1619137))

(declare-fun d!1619141 () Bool)

(declare-fun lt!2082152 () Int)

(assert (=> d!1619141 (= lt!2082152 (size!38779 (list!18815 totalInput!786)))))

(assert (=> d!1619141 (= lt!2082152 (size!38780 (c!861455 totalInput!786)))))

(assert (=> d!1619141 (= (size!38778 totalInput!786) lt!2082152)))

(declare-fun bs!1188568 () Bool)

(assert (= bs!1188568 d!1619141))

(assert (=> bs!1188568 m!6066490))

(assert (=> bs!1188568 m!6066490))

(declare-fun m!6066540 () Bool)

(assert (=> bs!1188568 m!6066540))

(declare-fun m!6066542 () Bool)

(assert (=> bs!1188568 m!6066542))

(assert (=> b!5031380 d!1619141))

(declare-fun d!1619143 () Bool)

(declare-fun list!18816 (Conc!15458) List!58364)

(assert (=> d!1619143 (= (list!18815 totalInput!786) (list!18816 (c!861455 totalInput!786)))))

(declare-fun bs!1188569 () Bool)

(assert (= bs!1188569 d!1619143))

(declare-fun m!6066544 () Bool)

(assert (=> bs!1188569 m!6066544))

(assert (=> start!532168 d!1619143))

(declare-fun d!1619145 () Bool)

(assert (=> d!1619145 (= (inv!76866 input!5499) (isBalanced!4320 (c!861455 input!5499)))))

(declare-fun bs!1188570 () Bool)

(assert (= bs!1188570 d!1619145))

(assert (=> bs!1188570 m!6066478))

(assert (=> start!532168 d!1619145))

(declare-fun d!1619147 () Bool)

(declare-fun e!3143133 () Bool)

(assert (=> d!1619147 e!3143133))

(declare-fun res!2144248 () Bool)

(assert (=> d!1619147 (=> res!2144248 e!3143133)))

(declare-fun lt!2082155 () Bool)

(assert (=> d!1619147 (= res!2144248 (not lt!2082155))))

(declare-fun drop!2591 (List!58364 Int) List!58364)

(assert (=> d!1619147 (= lt!2082155 (= (list!18815 input!5499) (drop!2591 (list!18815 totalInput!786) (- (size!38779 (list!18815 totalInput!786)) (size!38779 (list!18815 input!5499))))))))

(assert (=> d!1619147 (= (isSuffix!1387 (list!18815 input!5499) (list!18815 totalInput!786)) lt!2082155)))

(declare-fun b!5031445 () Bool)

(assert (=> b!5031445 (= e!3143133 (>= (size!38779 (list!18815 totalInput!786)) (size!38779 (list!18815 input!5499))))))

(assert (= (and d!1619147 (not res!2144248)) b!5031445))

(assert (=> d!1619147 m!6066490))

(assert (=> d!1619147 m!6066540))

(assert (=> d!1619147 m!6066486))

(assert (=> d!1619147 m!6066536))

(assert (=> d!1619147 m!6066490))

(declare-fun m!6066546 () Bool)

(assert (=> d!1619147 m!6066546))

(assert (=> b!5031445 m!6066490))

(assert (=> b!5031445 m!6066540))

(assert (=> b!5031445 m!6066486))

(assert (=> b!5031445 m!6066536))

(assert (=> start!532168 d!1619147))

(declare-fun d!1619149 () Bool)

(assert (=> d!1619149 (= (inv!76866 totalInput!786) (isBalanced!4320 (c!861455 totalInput!786)))))

(declare-fun bs!1188571 () Bool)

(assert (= bs!1188571 d!1619149))

(declare-fun m!6066548 () Bool)

(assert (=> bs!1188571 m!6066548))

(assert (=> start!532168 d!1619149))

(declare-fun d!1619151 () Bool)

(assert (=> d!1619151 (= (list!18815 input!5499) (list!18816 (c!861455 input!5499)))))

(declare-fun bs!1188572 () Bool)

(assert (= bs!1188572 d!1619151))

(declare-fun m!6066550 () Bool)

(assert (=> bs!1188572 m!6066550))

(assert (=> start!532168 d!1619151))

(declare-fun d!1619153 () Bool)

(declare-fun c!861468 () Bool)

(assert (=> d!1619153 (= c!861468 ((_ is Node!15458) (c!861455 input!5499)))))

(declare-fun e!3143138 () Bool)

(assert (=> d!1619153 (= (inv!76865 (c!861455 input!5499)) e!3143138)))

(declare-fun b!5031452 () Bool)

(declare-fun inv!76868 (Conc!15458) Bool)

(assert (=> b!5031452 (= e!3143138 (inv!76868 (c!861455 input!5499)))))

(declare-fun b!5031453 () Bool)

(declare-fun e!3143139 () Bool)

(assert (=> b!5031453 (= e!3143138 e!3143139)))

(declare-fun res!2144251 () Bool)

(assert (=> b!5031453 (= res!2144251 (not ((_ is Leaf!25651) (c!861455 input!5499))))))

(assert (=> b!5031453 (=> res!2144251 e!3143139)))

(declare-fun b!5031454 () Bool)

(declare-fun inv!76869 (Conc!15458) Bool)

(assert (=> b!5031454 (= e!3143139 (inv!76869 (c!861455 input!5499)))))

(assert (= (and d!1619153 c!861468) b!5031452))

(assert (= (and d!1619153 (not c!861468)) b!5031453))

(assert (= (and b!5031453 (not res!2144251)) b!5031454))

(declare-fun m!6066552 () Bool)

(assert (=> b!5031452 m!6066552))

(declare-fun m!6066554 () Bool)

(assert (=> b!5031454 m!6066554))

(assert (=> b!5031382 d!1619153))

(declare-fun d!1619155 () Bool)

(declare-fun lambda!249697 () Int)

(declare-fun forall!13460 (List!58365 Int) Bool)

(assert (=> d!1619155 (= (inv!76867 setElem!29012) (forall!13460 (exprs!3864 setElem!29012) lambda!249697))))

(declare-fun bs!1188579 () Bool)

(assert (= bs!1188579 d!1619155))

(declare-fun m!6066586 () Bool)

(assert (=> bs!1188579 m!6066586))

(assert (=> setNonEmpty!29012 d!1619155))

(declare-fun d!1619175 () Bool)

(declare-fun c!861481 () Bool)

(assert (=> d!1619175 (= c!861481 ((_ is Node!15458) (c!861455 totalInput!786)))))

(declare-fun e!3143164 () Bool)

(assert (=> d!1619175 (= (inv!76865 (c!861455 totalInput!786)) e!3143164)))

(declare-fun b!5031491 () Bool)

(assert (=> b!5031491 (= e!3143164 (inv!76868 (c!861455 totalInput!786)))))

(declare-fun b!5031492 () Bool)

(declare-fun e!3143165 () Bool)

(assert (=> b!5031492 (= e!3143164 e!3143165)))

(declare-fun res!2144264 () Bool)

(assert (=> b!5031492 (= res!2144264 (not ((_ is Leaf!25651) (c!861455 totalInput!786))))))

(assert (=> b!5031492 (=> res!2144264 e!3143165)))

(declare-fun b!5031493 () Bool)

(assert (=> b!5031493 (= e!3143165 (inv!76869 (c!861455 totalInput!786)))))

(assert (= (and d!1619175 c!861481) b!5031491))

(assert (= (and d!1619175 (not c!861481)) b!5031492))

(assert (= (and b!5031492 (not res!2144264)) b!5031493))

(declare-fun m!6066588 () Bool)

(assert (=> b!5031491 m!6066588))

(declare-fun m!6066590 () Bool)

(assert (=> b!5031493 m!6066590))

(assert (=> b!5031379 d!1619175))

(declare-fun e!3143171 () Bool)

(declare-fun b!5031502 () Bool)

(declare-fun tp!1409559 () Bool)

(declare-fun tp!1409558 () Bool)

(assert (=> b!5031502 (= e!3143171 (and (inv!76865 (left!42612 (c!861455 input!5499))) tp!1409559 (inv!76865 (right!42942 (c!861455 input!5499))) tp!1409558))))

(declare-fun b!5031504 () Bool)

(declare-fun e!3143170 () Bool)

(declare-fun tp!1409557 () Bool)

(assert (=> b!5031504 (= e!3143170 tp!1409557)))

(declare-fun b!5031503 () Bool)

(declare-fun inv!76870 (IArray!30977) Bool)

(assert (=> b!5031503 (= e!3143171 (and (inv!76870 (xs!18784 (c!861455 input!5499))) e!3143170))))

(assert (=> b!5031382 (= tp!1409549 (and (inv!76865 (c!861455 input!5499)) e!3143171))))

(assert (= (and b!5031382 ((_ is Node!15458) (c!861455 input!5499))) b!5031502))

(assert (= b!5031503 b!5031504))

(assert (= (and b!5031382 ((_ is Leaf!25651) (c!861455 input!5499))) b!5031503))

(declare-fun m!6066592 () Bool)

(assert (=> b!5031502 m!6066592))

(declare-fun m!6066594 () Bool)

(assert (=> b!5031502 m!6066594))

(declare-fun m!6066596 () Bool)

(assert (=> b!5031503 m!6066596))

(assert (=> b!5031382 m!6066496))

(declare-fun b!5031509 () Bool)

(declare-fun e!3143174 () Bool)

(declare-fun tp!1409564 () Bool)

(declare-fun tp!1409565 () Bool)

(assert (=> b!5031509 (= e!3143174 (and tp!1409564 tp!1409565))))

(assert (=> b!5031381 (= tp!1409548 e!3143174)))

(assert (= (and b!5031381 ((_ is Cons!58241) (exprs!3864 setElem!29012))) b!5031509))

(declare-fun condSetEmpty!29015 () Bool)

(assert (=> setNonEmpty!29012 (= condSetEmpty!29015 (= setRest!29012 ((as const (Array Context!6728 Bool)) false)))))

(declare-fun setRes!29015 () Bool)

(assert (=> setNonEmpty!29012 (= tp!1409547 setRes!29015)))

(declare-fun setIsEmpty!29015 () Bool)

(assert (=> setIsEmpty!29015 setRes!29015))

(declare-fun e!3143177 () Bool)

(declare-fun tp!1409570 () Bool)

(declare-fun setNonEmpty!29015 () Bool)

(declare-fun setElem!29015 () Context!6728)

(assert (=> setNonEmpty!29015 (= setRes!29015 (and tp!1409570 (inv!76867 setElem!29015) e!3143177))))

(declare-fun setRest!29015 () (InoxSet Context!6728))

(assert (=> setNonEmpty!29015 (= setRest!29012 ((_ map or) (store ((as const (Array Context!6728 Bool)) false) setElem!29015 true) setRest!29015))))

(declare-fun b!5031514 () Bool)

(declare-fun tp!1409571 () Bool)

(assert (=> b!5031514 (= e!3143177 tp!1409571)))

(assert (= (and setNonEmpty!29012 condSetEmpty!29015) setIsEmpty!29015))

(assert (= (and setNonEmpty!29012 (not condSetEmpty!29015)) setNonEmpty!29015))

(assert (= setNonEmpty!29015 b!5031514))

(declare-fun m!6066598 () Bool)

(assert (=> setNonEmpty!29015 m!6066598))

(declare-fun tp!1409573 () Bool)

(declare-fun b!5031515 () Bool)

(declare-fun e!3143179 () Bool)

(declare-fun tp!1409574 () Bool)

(assert (=> b!5031515 (= e!3143179 (and (inv!76865 (left!42612 (c!861455 totalInput!786))) tp!1409574 (inv!76865 (right!42942 (c!861455 totalInput!786))) tp!1409573))))

(declare-fun b!5031517 () Bool)

(declare-fun e!3143178 () Bool)

(declare-fun tp!1409572 () Bool)

(assert (=> b!5031517 (= e!3143178 tp!1409572)))

(declare-fun b!5031516 () Bool)

(assert (=> b!5031516 (= e!3143179 (and (inv!76870 (xs!18784 (c!861455 totalInput!786))) e!3143178))))

(assert (=> b!5031379 (= tp!1409550 (and (inv!76865 (c!861455 totalInput!786)) e!3143179))))

(assert (= (and b!5031379 ((_ is Node!15458) (c!861455 totalInput!786))) b!5031515))

(assert (= b!5031516 b!5031517))

(assert (= (and b!5031379 ((_ is Leaf!25651) (c!861455 totalInput!786))) b!5031516))

(declare-fun m!6066600 () Bool)

(assert (=> b!5031515 m!6066600))

(declare-fun m!6066602 () Bool)

(assert (=> b!5031515 m!6066602))

(declare-fun m!6066604 () Bool)

(assert (=> b!5031516 m!6066604))

(assert (=> b!5031379 m!6066498))

(check-sat (not d!1619143) (not d!1619155) (not b!5031398) (not b!5031504) (not setNonEmpty!29015) (not b!5031400) (not b!5031397) (not b!5031517) (not b!5031509) (not d!1619147) (not b!5031516) (not b!5031503) (not d!1619145) (not b!5031493) (not b!5031433) (not b!5031396) (not b!5031429) (not d!1619149) (not b!5031515) (not b!5031452) (not b!5031382) (not b!5031514) (not d!1619141) (not b!5031454) (not b!5031434) (not b!5031491) (not b!5031502) (not b!5031399) (not b!5031395) (not d!1619151) (not b!5031379) (not b!5031445) (not b!5031431) (not d!1619137))
(check-sat)
