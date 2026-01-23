; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573778 () Bool)

(assert start!573778)

(declare-fun b!5488501 () Bool)

(assert (=> b!5488501 true))

(declare-fun b!5488519 () Bool)

(assert (=> b!5488519 true))

(declare-fun bs!1267146 () Bool)

(declare-fun b!5488522 () Bool)

(assert (= bs!1267146 (and b!5488522 b!5488519)))

(declare-fun lambda!293673 () Int)

(declare-fun lambda!293672 () Int)

(assert (=> bs!1267146 (not (= lambda!293673 lambda!293672))))

(assert (=> b!5488522 true))

(declare-fun e!3396189 () Bool)

(declare-fun e!3396196 () Bool)

(assert (=> b!5488501 (= e!3396189 e!3396196)))

(declare-fun res!2340759 () Bool)

(assert (=> b!5488501 (=> res!2340759 e!3396196)))

(declare-fun lt!2241644 () Bool)

(assert (=> b!5488501 (= res!2340759 (not lt!2241644))))

(declare-datatypes ((C!31124 0))(
  ( (C!31125 (val!25264 Int)) )
))
(declare-datatypes ((Regex!15427 0))(
  ( (ElementMatch!15427 (c!958595 C!31124)) (Concat!24272 (regOne!31366 Regex!15427) (regTwo!31366 Regex!15427)) (EmptyExpr!15427) (Star!15427 (reg!15756 Regex!15427)) (EmptyLang!15427) (Union!15427 (regOne!31367 Regex!15427) (regTwo!31367 Regex!15427)) )
))
(declare-datatypes ((List!62580 0))(
  ( (Nil!62456) (Cons!62456 (h!68904 Regex!15427) (t!375811 List!62580)) )
))
(declare-fun lt!2241638 () List!62580)

(declare-fun lambda!293671 () Int)

(declare-fun exists!2081 (List!62580 Int) Bool)

(assert (=> b!5488501 (= lt!2241644 (exists!2081 lt!2241638 lambda!293671))))

(declare-fun r!7292 () Regex!15427)

(declare-datatypes ((List!62581 0))(
  ( (Nil!62457) (Cons!62457 (h!68905 C!31124) (t!375812 List!62581)) )
))
(declare-fun s!2326 () List!62581)

(declare-datatypes ((Unit!155310 0))(
  ( (Unit!155311) )
))
(declare-fun lt!2241633 () Unit!155310)

(declare-fun matchRGenUnionSpec!260 (Regex!15427 List!62580 List!62581) Unit!155310)

(assert (=> b!5488501 (= lt!2241633 (matchRGenUnionSpec!260 r!7292 lt!2241638 s!2326))))

(declare-datatypes ((Context!9622 0))(
  ( (Context!9623 (exprs!5311 List!62580)) )
))
(declare-datatypes ((List!62582 0))(
  ( (Nil!62458) (Cons!62458 (h!68906 Context!9622) (t!375813 List!62582)) )
))
(declare-fun zl!343 () List!62582)

(declare-fun unfocusZipperList!859 (List!62582) List!62580)

(assert (=> b!5488501 (= lt!2241638 (unfocusZipperList!859 zl!343))))

(declare-fun b!5488502 () Bool)

(declare-fun res!2340755 () Bool)

(declare-fun e!3396192 () Bool)

(assert (=> b!5488502 (=> (not res!2340755) (not e!3396192))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9622))

(declare-fun toList!9211 ((InoxSet Context!9622)) List!62582)

(assert (=> b!5488502 (= res!2340755 (= (toList!9211 z!1189) zl!343))))

(declare-fun b!5488504 () Bool)

(declare-fun res!2340753 () Bool)

(assert (=> b!5488504 (=> (not res!2340753) (not e!3396192))))

(declare-fun unfocusZipper!1169 (List!62582) Regex!15427)

(assert (=> b!5488504 (= res!2340753 (= r!7292 (unfocusZipper!1169 zl!343)))))

(declare-fun b!5488505 () Bool)

(declare-fun e!3396194 () Bool)

(declare-fun tp!1508611 () Bool)

(assert (=> b!5488505 (= e!3396194 tp!1508611)))

(declare-fun b!5488506 () Bool)

(declare-fun e!3396191 () Bool)

(declare-fun tp_is_empty!40107 () Bool)

(declare-fun tp!1508610 () Bool)

(assert (=> b!5488506 (= e!3396191 (and tp_is_empty!40107 tp!1508610))))

(declare-fun b!5488507 () Bool)

(declare-fun e!3396186 () Bool)

(assert (=> b!5488507 (= e!3396196 e!3396186)))

(declare-fun res!2340763 () Bool)

(assert (=> b!5488507 (=> res!2340763 e!3396186)))

(declare-fun lt!2241634 () Regex!15427)

(declare-fun contains!19751 (List!62580 Regex!15427) Bool)

(assert (=> b!5488507 (= res!2340763 (not (contains!19751 lt!2241638 lt!2241634)))))

(declare-fun getWitness!893 (List!62580 Int) Regex!15427)

(assert (=> b!5488507 (= lt!2241634 (getWitness!893 lt!2241638 lambda!293671))))

(declare-fun setIsEmpty!36249 () Bool)

(declare-fun setRes!36249 () Bool)

(assert (=> setIsEmpty!36249 setRes!36249))

(declare-fun b!5488508 () Bool)

(declare-fun res!2340754 () Bool)

(assert (=> b!5488508 (=> res!2340754 e!3396186)))

(declare-fun matchR!7612 (Regex!15427 List!62581) Bool)

(assert (=> b!5488508 (= res!2340754 (not (matchR!7612 lt!2241634 s!2326)))))

(declare-fun b!5488509 () Bool)

(declare-fun e!3396195 () Bool)

(declare-fun e!3396188 () Bool)

(declare-fun tp!1508619 () Bool)

(declare-fun inv!81814 (Context!9622) Bool)

(assert (=> b!5488509 (= e!3396195 (and (inv!81814 (h!68906 zl!343)) e!3396188 tp!1508619))))

(declare-fun b!5488510 () Bool)

(declare-fun e!3396193 () Bool)

(declare-fun tp!1508613 () Bool)

(assert (=> b!5488510 (= e!3396193 tp!1508613)))

(declare-fun b!5488511 () Bool)

(assert (=> b!5488511 (= e!3396193 tp_is_empty!40107)))

(declare-fun b!5488512 () Bool)

(declare-fun res!2340757 () Bool)

(assert (=> b!5488512 (=> res!2340757 e!3396196)))

(assert (=> b!5488512 (= res!2340757 (not (exists!2081 lt!2241638 lambda!293671)))))

(declare-fun b!5488513 () Bool)

(declare-fun tp!1508616 () Bool)

(declare-fun tp!1508615 () Bool)

(assert (=> b!5488513 (= e!3396193 (and tp!1508616 tp!1508615))))

(declare-fun b!5488514 () Bool)

(declare-fun res!2340765 () Bool)

(assert (=> b!5488514 (=> res!2340765 e!3396189)))

(get-info :version)

(assert (=> b!5488514 (= res!2340765 (or (not ((_ is Cons!62458) zl!343)) ((_ is Nil!62457) s!2326) (not (= zl!343 (Cons!62458 (h!68906 zl!343) (t!375813 zl!343))))))))

(declare-fun b!5488515 () Bool)

(declare-fun res!2340758 () Bool)

(assert (=> b!5488515 (=> res!2340758 e!3396186)))

(declare-fun validRegex!7163 (Regex!15427) Bool)

(assert (=> b!5488515 (= res!2340758 (not (validRegex!7163 lt!2241634)))))

(declare-fun b!5488516 () Bool)

(declare-fun res!2340756 () Bool)

(assert (=> b!5488516 (=> res!2340756 e!3396189)))

(declare-fun isEmpty!34317 (List!62582) Bool)

(assert (=> b!5488516 (= res!2340756 (isEmpty!34317 (t!375813 zl!343)))))

(declare-fun b!5488517 () Bool)

(assert (=> b!5488517 (= e!3396192 (not e!3396189))))

(declare-fun res!2340760 () Bool)

(assert (=> b!5488517 (=> res!2340760 e!3396189)))

(declare-fun e!3396190 () Bool)

(assert (=> b!5488517 (= res!2340760 e!3396190)))

(declare-fun res!2340766 () Bool)

(assert (=> b!5488517 (=> (not res!2340766) (not e!3396190))))

(assert (=> b!5488517 (= res!2340766 ((_ is Cons!62458) zl!343))))

(declare-fun matchRSpec!2530 (Regex!15427 List!62581) Bool)

(assert (=> b!5488517 (= lt!2241644 (matchRSpec!2530 r!7292 s!2326))))

(assert (=> b!5488517 (= lt!2241644 (matchR!7612 r!7292 s!2326))))

(declare-fun lt!2241632 () Unit!155310)

(declare-fun mainMatchTheorem!2530 (Regex!15427 List!62581) Unit!155310)

(assert (=> b!5488517 (= lt!2241632 (mainMatchTheorem!2530 r!7292 s!2326))))

(declare-fun b!5488503 () Bool)

(declare-fun tp!1508618 () Bool)

(declare-fun tp!1508614 () Bool)

(assert (=> b!5488503 (= e!3396193 (and tp!1508618 tp!1508614))))

(declare-fun res!2340761 () Bool)

(assert (=> start!573778 (=> (not res!2340761) (not e!3396192))))

(assert (=> start!573778 (= res!2340761 (validRegex!7163 r!7292))))

(assert (=> start!573778 e!3396192))

(assert (=> start!573778 e!3396193))

(declare-fun condSetEmpty!36249 () Bool)

(assert (=> start!573778 (= condSetEmpty!36249 (= z!1189 ((as const (Array Context!9622 Bool)) false)))))

(assert (=> start!573778 setRes!36249))

(assert (=> start!573778 e!3396195))

(assert (=> start!573778 e!3396191))

(declare-fun b!5488518 () Bool)

(declare-fun e!3396185 () Bool)

(declare-fun e!3396187 () Bool)

(assert (=> b!5488518 (= e!3396185 e!3396187)))

(declare-fun res!2340764 () Bool)

(assert (=> b!5488518 (=> res!2340764 e!3396187)))

(declare-fun lt!2241635 () Int)

(declare-fun lt!2241631 () List!62582)

(declare-fun zipperDepthTotal!202 (List!62582) Int)

(assert (=> b!5488518 (= res!2340764 (<= lt!2241635 (zipperDepthTotal!202 lt!2241631)))))

(declare-fun lt!2241645 () Context!9622)

(assert (=> b!5488518 (= lt!2241631 (Cons!62458 lt!2241645 Nil!62458))))

(declare-fun lt!2241643 () Int)

(assert (=> b!5488518 (< lt!2241643 lt!2241635)))

(assert (=> b!5488518 (= lt!2241635 (zipperDepthTotal!202 zl!343))))

(declare-fun contextDepthTotal!182 (Context!9622) Int)

(assert (=> b!5488518 (= lt!2241643 (contextDepthTotal!182 lt!2241645))))

(declare-fun lt!2241636 () Unit!155310)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!10 (List!62582 Context!9622) Unit!155310)

(assert (=> b!5488518 (= lt!2241636 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!10 zl!343 lt!2241645))))

(declare-fun getWitness!894 (List!62582 Int) Context!9622)

(assert (=> b!5488518 (= lt!2241645 (getWitness!894 zl!343 lambda!293672))))

(assert (=> b!5488519 (= e!3396186 e!3396185)))

(declare-fun res!2340762 () Bool)

(assert (=> b!5488519 (=> res!2340762 e!3396185)))

(declare-fun exists!2082 (List!62582 Int) Bool)

(assert (=> b!5488519 (= res!2340762 (not (exists!2082 zl!343 lambda!293672)))))

(assert (=> b!5488519 (exists!2082 zl!343 lambda!293672)))

(declare-fun lt!2241630 () Unit!155310)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!18 (List!62582 Regex!15427) Unit!155310)

(assert (=> b!5488519 (= lt!2241630 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!18 zl!343 lt!2241634))))

(declare-fun setElem!36249 () Context!9622)

(declare-fun setNonEmpty!36249 () Bool)

(declare-fun tp!1508617 () Bool)

(assert (=> setNonEmpty!36249 (= setRes!36249 (and tp!1508617 (inv!81814 setElem!36249) e!3396194))))

(declare-fun setRest!36249 () (InoxSet Context!9622))

(assert (=> setNonEmpty!36249 (= z!1189 ((_ map or) (store ((as const (Array Context!9622 Bool)) false) setElem!36249 true) setRest!36249))))

(declare-fun b!5488520 () Bool)

(assert (=> b!5488520 (= e!3396190 (isEmpty!34317 (t!375813 zl!343)))))

(declare-fun b!5488521 () Bool)

(declare-fun tp!1508612 () Bool)

(assert (=> b!5488521 (= e!3396188 tp!1508612)))

(assert (=> b!5488522 (= e!3396187 true)))

(declare-fun lt!2241641 () Bool)

(declare-fun matchZipper!1613 ((InoxSet Context!9622) List!62581) Bool)

(assert (=> b!5488522 (= lt!2241641 (matchZipper!1613 z!1189 s!2326))))

(declare-fun content!11226 (List!62582) (InoxSet Context!9622))

(assert (=> b!5488522 (matchZipper!1613 (content!11226 zl!343) s!2326)))

(declare-fun lt!2241639 () Unit!155310)

(declare-fun lemmaExistsMatchingContextThenMatchingString!20 (List!62582 List!62581) Unit!155310)

(assert (=> b!5488522 (= lt!2241639 (lemmaExistsMatchingContextThenMatchingString!20 zl!343 s!2326))))

(declare-fun exists!2083 ((InoxSet Context!9622) Int) Bool)

(assert (=> b!5488522 (exists!2083 z!1189 lambda!293673)))

(declare-fun lt!2241637 () Unit!155310)

(declare-fun lemmaContainsThenExists!69 ((InoxSet Context!9622) Context!9622 Int) Unit!155310)

(assert (=> b!5488522 (= lt!2241637 (lemmaContainsThenExists!69 z!1189 lt!2241645 lambda!293673))))

(declare-fun lt!2241640 () (InoxSet Context!9622))

(assert (=> b!5488522 (matchZipper!1613 lt!2241640 s!2326)))

(declare-fun lt!2241642 () Unit!155310)

(declare-fun theoremZipperRegexEquiv!599 ((InoxSet Context!9622) List!62582 Regex!15427 List!62581) Unit!155310)

(assert (=> b!5488522 (= lt!2241642 (theoremZipperRegexEquiv!599 lt!2241640 lt!2241631 lt!2241634 s!2326))))

(assert (=> b!5488522 (= lt!2241640 (store ((as const (Array Context!9622 Bool)) false) lt!2241645 true))))

(assert (= (and start!573778 res!2340761) b!5488502))

(assert (= (and b!5488502 res!2340755) b!5488504))

(assert (= (and b!5488504 res!2340753) b!5488517))

(assert (= (and b!5488517 res!2340766) b!5488520))

(assert (= (and b!5488517 (not res!2340760)) b!5488514))

(assert (= (and b!5488514 (not res!2340765)) b!5488516))

(assert (= (and b!5488516 (not res!2340756)) b!5488501))

(assert (= (and b!5488501 (not res!2340759)) b!5488512))

(assert (= (and b!5488512 (not res!2340757)) b!5488507))

(assert (= (and b!5488507 (not res!2340763)) b!5488515))

(assert (= (and b!5488515 (not res!2340758)) b!5488508))

(assert (= (and b!5488508 (not res!2340754)) b!5488519))

(assert (= (and b!5488519 (not res!2340762)) b!5488518))

(assert (= (and b!5488518 (not res!2340764)) b!5488522))

(assert (= (and start!573778 ((_ is ElementMatch!15427) r!7292)) b!5488511))

(assert (= (and start!573778 ((_ is Concat!24272) r!7292)) b!5488503))

(assert (= (and start!573778 ((_ is Star!15427) r!7292)) b!5488510))

(assert (= (and start!573778 ((_ is Union!15427) r!7292)) b!5488513))

(assert (= (and start!573778 condSetEmpty!36249) setIsEmpty!36249))

(assert (= (and start!573778 (not condSetEmpty!36249)) setNonEmpty!36249))

(assert (= setNonEmpty!36249 b!5488505))

(assert (= b!5488509 b!5488521))

(assert (= (and start!573778 ((_ is Cons!62458) zl!343)) b!5488509))

(assert (= (and start!573778 ((_ is Cons!62457) s!2326)) b!5488506))

(declare-fun m!6502364 () Bool)

(assert (=> b!5488512 m!6502364))

(declare-fun m!6502366 () Bool)

(assert (=> b!5488517 m!6502366))

(declare-fun m!6502368 () Bool)

(assert (=> b!5488517 m!6502368))

(declare-fun m!6502370 () Bool)

(assert (=> b!5488517 m!6502370))

(declare-fun m!6502372 () Bool)

(assert (=> b!5488519 m!6502372))

(assert (=> b!5488519 m!6502372))

(declare-fun m!6502374 () Bool)

(assert (=> b!5488519 m!6502374))

(declare-fun m!6502376 () Bool)

(assert (=> b!5488507 m!6502376))

(declare-fun m!6502378 () Bool)

(assert (=> b!5488507 m!6502378))

(assert (=> b!5488501 m!6502364))

(declare-fun m!6502380 () Bool)

(assert (=> b!5488501 m!6502380))

(declare-fun m!6502382 () Bool)

(assert (=> b!5488501 m!6502382))

(declare-fun m!6502384 () Bool)

(assert (=> b!5488502 m!6502384))

(declare-fun m!6502386 () Bool)

(assert (=> b!5488518 m!6502386))

(declare-fun m!6502388 () Bool)

(assert (=> b!5488518 m!6502388))

(declare-fun m!6502390 () Bool)

(assert (=> b!5488518 m!6502390))

(declare-fun m!6502392 () Bool)

(assert (=> b!5488518 m!6502392))

(declare-fun m!6502394 () Bool)

(assert (=> b!5488518 m!6502394))

(declare-fun m!6502396 () Bool)

(assert (=> b!5488508 m!6502396))

(declare-fun m!6502398 () Bool)

(assert (=> b!5488515 m!6502398))

(declare-fun m!6502400 () Bool)

(assert (=> start!573778 m!6502400))

(declare-fun m!6502402 () Bool)

(assert (=> b!5488509 m!6502402))

(declare-fun m!6502404 () Bool)

(assert (=> setNonEmpty!36249 m!6502404))

(declare-fun m!6502406 () Bool)

(assert (=> b!5488504 m!6502406))

(declare-fun m!6502408 () Bool)

(assert (=> b!5488520 m!6502408))

(assert (=> b!5488516 m!6502408))

(declare-fun m!6502410 () Bool)

(assert (=> b!5488522 m!6502410))

(declare-fun m!6502412 () Bool)

(assert (=> b!5488522 m!6502412))

(declare-fun m!6502414 () Bool)

(assert (=> b!5488522 m!6502414))

(declare-fun m!6502416 () Bool)

(assert (=> b!5488522 m!6502416))

(declare-fun m!6502418 () Bool)

(assert (=> b!5488522 m!6502418))

(declare-fun m!6502420 () Bool)

(assert (=> b!5488522 m!6502420))

(declare-fun m!6502422 () Bool)

(assert (=> b!5488522 m!6502422))

(assert (=> b!5488522 m!6502418))

(declare-fun m!6502424 () Bool)

(assert (=> b!5488522 m!6502424))

(declare-fun m!6502426 () Bool)

(assert (=> b!5488522 m!6502426))

(check-sat (not b!5488519) (not b!5488515) (not b!5488505) (not b!5488502) (not b!5488506) (not b!5488510) (not b!5488522) (not b!5488520) (not b!5488507) (not b!5488503) (not b!5488521) (not b!5488516) (not b!5488512) (not setNonEmpty!36249) (not b!5488517) (not b!5488518) (not b!5488508) (not b!5488509) (not start!573778) tp_is_empty!40107 (not b!5488501) (not b!5488513) (not b!5488504))
(check-sat)
