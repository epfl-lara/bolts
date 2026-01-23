; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740366 () Bool)

(assert start!740366)

(declare-fun b!7777684 () Bool)

(declare-fun res!3100255 () Bool)

(declare-fun e!4607621 () Bool)

(assert (=> b!7777684 (=> (not res!3100255) (not e!4607621))))

(declare-datatypes ((C!41928 0))(
  ( (C!41929 (val!31404 Int)) )
))
(declare-datatypes ((Regex!20801 0))(
  ( (ElementMatch!20801 (c!1433264 C!41928)) (Concat!29646 (regOne!42114 Regex!20801) (regTwo!42114 Regex!20801)) (EmptyExpr!20801) (Star!20801 (reg!21130 Regex!20801)) (EmptyLang!20801) (Union!20801 (regOne!42115 Regex!20801) (regTwo!42115 Regex!20801)) )
))
(declare-fun r2!6217 () Regex!20801)

(declare-fun validRegex!11215 (Regex!20801) Bool)

(assert (=> b!7777684 (= res!3100255 (validRegex!11215 r2!6217))))

(declare-fun b!7777685 () Bool)

(declare-fun e!4607626 () Bool)

(declare-fun tp!2285674 () Bool)

(declare-fun tp!2285666 () Bool)

(assert (=> b!7777685 (= e!4607626 (and tp!2285674 tp!2285666))))

(declare-fun b!7777686 () Bool)

(declare-fun res!3100254 () Bool)

(declare-fun e!4607619 () Bool)

(assert (=> b!7777686 (=> (not res!3100254) (not e!4607619))))

(declare-fun r1!6279 () Regex!20801)

(declare-fun nullable!9189 (Regex!20801) Bool)

(assert (=> b!7777686 (= res!3100254 (nullable!9189 r1!6279))))

(declare-fun b!7777688 () Bool)

(declare-fun e!4607620 () Bool)

(assert (=> b!7777688 (= e!4607620 true)))

(declare-fun lt!2672439 () Bool)

(declare-fun lt!2672436 () Regex!20801)

(declare-datatypes ((List!73640 0))(
  ( (Nil!73516) (Cons!73516 (h!79964 C!41928) (t!388375 List!73640)) )
))
(declare-fun s!14292 () List!73640)

(declare-fun matchR!10261 (Regex!20801 List!73640) Bool)

(assert (=> b!7777688 (= lt!2672439 (matchR!10261 lt!2672436 (t!388375 s!14292)))))

(declare-fun b!7777689 () Bool)

(declare-fun tp_is_empty!51957 () Bool)

(assert (=> b!7777689 (= e!4607626 tp_is_empty!51957)))

(declare-fun b!7777690 () Bool)

(declare-fun e!4607622 () Bool)

(assert (=> b!7777690 (= e!4607622 tp_is_empty!51957)))

(declare-fun b!7777691 () Bool)

(declare-fun res!3100259 () Bool)

(declare-fun e!4607623 () Bool)

(assert (=> b!7777691 (=> (not res!3100259) (not e!4607623))))

(get-info :version)

(assert (=> b!7777691 (= res!3100259 ((_ is Cons!73516) s!14292))))

(declare-fun b!7777692 () Bool)

(declare-fun tp!2285675 () Bool)

(assert (=> b!7777692 (= e!4607622 tp!2285675)))

(declare-fun b!7777693 () Bool)

(declare-fun e!4607624 () Bool)

(declare-fun tp!2285672 () Bool)

(assert (=> b!7777693 (= e!4607624 (and tp_is_empty!51957 tp!2285672))))

(declare-fun b!7777694 () Bool)

(declare-fun tp!2285665 () Bool)

(declare-fun tp!2285671 () Bool)

(assert (=> b!7777694 (= e!4607626 (and tp!2285665 tp!2285671))))

(declare-fun b!7777695 () Bool)

(declare-fun e!4607625 () Bool)

(assert (=> b!7777695 (= e!4607625 (not e!4607620))))

(declare-fun res!3100252 () Bool)

(assert (=> b!7777695 (=> res!3100252 e!4607620)))

(declare-fun lt!2672434 () Bool)

(assert (=> b!7777695 (= res!3100252 lt!2672434)))

(declare-fun e!4607627 () Bool)

(assert (=> b!7777695 e!4607627))

(declare-fun res!3100260 () Bool)

(assert (=> b!7777695 (=> res!3100260 e!4607627)))

(assert (=> b!7777695 (= res!3100260 lt!2672434)))

(declare-fun lt!2672437 () Regex!20801)

(assert (=> b!7777695 (= lt!2672434 (matchR!10261 lt!2672437 (t!388375 s!14292)))))

(declare-datatypes ((Unit!168504 0))(
  ( (Unit!168505) )
))
(declare-fun lt!2672440 () Unit!168504)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!376 (Regex!20801 Regex!20801 List!73640) Unit!168504)

(assert (=> b!7777695 (= lt!2672440 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!376 lt!2672437 lt!2672436 (t!388375 s!14292)))))

(declare-fun b!7777696 () Bool)

(declare-fun tp!2285667 () Bool)

(assert (=> b!7777696 (= e!4607626 tp!2285667)))

(declare-fun b!7777697 () Bool)

(assert (=> b!7777697 (= e!4607623 e!4607619)))

(declare-fun res!3100258 () Bool)

(assert (=> b!7777697 (=> (not res!3100258) (not e!4607619))))

(declare-fun lt!2672435 () Regex!20801)

(assert (=> b!7777697 (= res!3100258 (matchR!10261 lt!2672435 (t!388375 s!14292)))))

(declare-fun lt!2672438 () Regex!20801)

(declare-fun derivativeStep!6144 (Regex!20801 C!41928) Regex!20801)

(assert (=> b!7777697 (= lt!2672435 (derivativeStep!6144 lt!2672438 (h!79964 s!14292)))))

(declare-fun b!7777687 () Bool)

(assert (=> b!7777687 (= e!4607621 e!4607623)))

(declare-fun res!3100253 () Bool)

(assert (=> b!7777687 (=> (not res!3100253) (not e!4607623))))

(assert (=> b!7777687 (= res!3100253 (matchR!10261 lt!2672438 s!14292))))

(assert (=> b!7777687 (= lt!2672438 (Concat!29646 r1!6279 r2!6217))))

(declare-fun res!3100257 () Bool)

(assert (=> start!740366 (=> (not res!3100257) (not e!4607621))))

(assert (=> start!740366 (= res!3100257 (validRegex!11215 r1!6279))))

(assert (=> start!740366 e!4607621))

(assert (=> start!740366 e!4607626))

(assert (=> start!740366 e!4607622))

(assert (=> start!740366 e!4607624))

(declare-fun b!7777698 () Bool)

(assert (=> b!7777698 (= e!4607627 (matchR!10261 lt!2672436 (t!388375 s!14292)))))

(declare-fun b!7777699 () Bool)

(declare-fun tp!2285669 () Bool)

(declare-fun tp!2285673 () Bool)

(assert (=> b!7777699 (= e!4607622 (and tp!2285669 tp!2285673))))

(declare-fun b!7777700 () Bool)

(declare-fun tp!2285670 () Bool)

(declare-fun tp!2285668 () Bool)

(assert (=> b!7777700 (= e!4607622 (and tp!2285670 tp!2285668))))

(declare-fun b!7777701 () Bool)

(assert (=> b!7777701 (= e!4607619 e!4607625)))

(declare-fun res!3100256 () Bool)

(assert (=> b!7777701 (=> (not res!3100256) (not e!4607625))))

(assert (=> b!7777701 (= res!3100256 (= lt!2672435 (Union!20801 lt!2672437 lt!2672436)))))

(assert (=> b!7777701 (= lt!2672436 (derivativeStep!6144 r2!6217 (h!79964 s!14292)))))

(assert (=> b!7777701 (= lt!2672437 (Concat!29646 (derivativeStep!6144 r1!6279 (h!79964 s!14292)) r2!6217))))

(assert (= (and start!740366 res!3100257) b!7777684))

(assert (= (and b!7777684 res!3100255) b!7777687))

(assert (= (and b!7777687 res!3100253) b!7777691))

(assert (= (and b!7777691 res!3100259) b!7777697))

(assert (= (and b!7777697 res!3100258) b!7777686))

(assert (= (and b!7777686 res!3100254) b!7777701))

(assert (= (and b!7777701 res!3100256) b!7777695))

(assert (= (and b!7777695 (not res!3100260)) b!7777698))

(assert (= (and b!7777695 (not res!3100252)) b!7777688))

(assert (= (and start!740366 ((_ is ElementMatch!20801) r1!6279)) b!7777689))

(assert (= (and start!740366 ((_ is Concat!29646) r1!6279)) b!7777685))

(assert (= (and start!740366 ((_ is Star!20801) r1!6279)) b!7777696))

(assert (= (and start!740366 ((_ is Union!20801) r1!6279)) b!7777694))

(assert (= (and start!740366 ((_ is ElementMatch!20801) r2!6217)) b!7777690))

(assert (= (and start!740366 ((_ is Concat!29646) r2!6217)) b!7777700))

(assert (= (and start!740366 ((_ is Star!20801) r2!6217)) b!7777692))

(assert (= (and start!740366 ((_ is Union!20801) r2!6217)) b!7777699))

(assert (= (and start!740366 ((_ is Cons!73516) s!14292)) b!7777693))

(declare-fun m!8227676 () Bool)

(assert (=> b!7777701 m!8227676))

(declare-fun m!8227678 () Bool)

(assert (=> b!7777701 m!8227678))

(declare-fun m!8227680 () Bool)

(assert (=> b!7777686 m!8227680))

(declare-fun m!8227682 () Bool)

(assert (=> b!7777695 m!8227682))

(declare-fun m!8227684 () Bool)

(assert (=> b!7777695 m!8227684))

(declare-fun m!8227686 () Bool)

(assert (=> b!7777684 m!8227686))

(declare-fun m!8227688 () Bool)

(assert (=> start!740366 m!8227688))

(declare-fun m!8227690 () Bool)

(assert (=> b!7777697 m!8227690))

(declare-fun m!8227692 () Bool)

(assert (=> b!7777697 m!8227692))

(declare-fun m!8227694 () Bool)

(assert (=> b!7777688 m!8227694))

(declare-fun m!8227696 () Bool)

(assert (=> b!7777687 m!8227696))

(assert (=> b!7777698 m!8227694))

(check-sat (not b!7777684) (not b!7777699) (not b!7777692) (not b!7777695) (not b!7777687) (not b!7777697) (not b!7777694) (not b!7777700) (not b!7777701) (not b!7777696) (not b!7777698) (not start!740366) (not b!7777686) tp_is_empty!51957 (not b!7777688) (not b!7777693) (not b!7777685))
(check-sat)
