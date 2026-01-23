; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739074 () Bool)

(assert start!739074)

(declare-fun b!7754774 () Bool)

(declare-fun e!4596782 () Bool)

(declare-fun tp!2275520 () Bool)

(declare-fun tp!2275531 () Bool)

(assert (=> b!7754774 (= e!4596782 (and tp!2275520 tp!2275531))))

(declare-fun b!7754775 () Bool)

(declare-fun tp_is_empty!51615 () Bool)

(assert (=> b!7754775 (= e!4596782 tp_is_empty!51615)))

(declare-fun b!7754776 () Bool)

(declare-fun e!4596783 () Bool)

(assert (=> b!7754776 (= e!4596783 false)))

(declare-datatypes ((C!41586 0))(
  ( (C!41587 (val!31233 Int)) )
))
(declare-datatypes ((List!73475 0))(
  ( (Nil!73351) (Cons!73351 (h!79799 C!41586) (t!388210 List!73475)) )
))
(declare-fun s!14266 () List!73475)

(declare-datatypes ((Regex!20630 0))(
  ( (ElementMatch!20630 (c!1430255 C!41586)) (Concat!29475 (regOne!41772 Regex!20630) (regTwo!41772 Regex!20630)) (EmptyExpr!20630) (Star!20630 (reg!20959 Regex!20630)) (EmptyLang!20630) (Union!20630 (regOne!41773 Regex!20630) (regTwo!41773 Regex!20630)) )
))
(declare-fun r1!6249 () Regex!20630)

(declare-datatypes ((tuple2!69654 0))(
  ( (tuple2!69655 (_1!38130 List!73475) (_2!38130 List!73475)) )
))
(declare-datatypes ((Option!17621 0))(
  ( (None!17620) (Some!17620 (v!54755 tuple2!69654)) )
))
(declare-fun lt!2669671 () Option!17621)

(declare-fun r2!6187 () Regex!20630)

(declare-fun findConcatSeparation!3651 (Regex!20630 Regex!20630 List!73475 List!73475 List!73475) Option!17621)

(assert (=> b!7754776 (= lt!2669671 (findConcatSeparation!3651 r1!6249 r2!6187 Nil!73351 s!14266 s!14266))))

(declare-fun b!7754777 () Bool)

(declare-fun res!3091827 () Bool)

(assert (=> b!7754777 (=> (not res!3091827) (not e!4596783))))

(declare-fun validRegex!11048 (Regex!20630) Bool)

(assert (=> b!7754777 (= res!3091827 (validRegex!11048 r2!6187))))

(declare-fun b!7754778 () Bool)

(declare-fun e!4596784 () Bool)

(declare-fun tp!2275523 () Bool)

(assert (=> b!7754778 (= e!4596784 (and tp_is_empty!51615 tp!2275523))))

(declare-fun b!7754779 () Bool)

(declare-fun res!3091825 () Bool)

(assert (=> b!7754779 (=> (not res!3091825) (not e!4596783))))

(declare-fun s2!3712 () List!73475)

(declare-fun s1!4090 () List!73475)

(declare-fun ++!17811 (List!73475 List!73475) List!73475)

(assert (=> b!7754779 (= res!3091825 (= s!14266 (++!17811 s1!4090 s2!3712)))))

(declare-fun b!7754780 () Bool)

(declare-fun tp!2275522 () Bool)

(assert (=> b!7754780 (= e!4596782 tp!2275522)))

(declare-fun b!7754781 () Bool)

(declare-fun e!4596785 () Bool)

(declare-fun tp!2275527 () Bool)

(assert (=> b!7754781 (= e!4596785 (and tp_is_empty!51615 tp!2275527))))

(declare-fun b!7754782 () Bool)

(declare-fun e!4596781 () Bool)

(declare-fun tp!2275524 () Bool)

(declare-fun tp!2275532 () Bool)

(assert (=> b!7754782 (= e!4596781 (and tp!2275524 tp!2275532))))

(declare-fun b!7754784 () Bool)

(declare-fun e!4596780 () Bool)

(declare-fun tp!2275526 () Bool)

(assert (=> b!7754784 (= e!4596780 (and tp_is_empty!51615 tp!2275526))))

(declare-fun b!7754785 () Bool)

(assert (=> b!7754785 (= e!4596781 tp_is_empty!51615)))

(declare-fun b!7754786 () Bool)

(declare-fun tp!2275521 () Bool)

(assert (=> b!7754786 (= e!4596781 tp!2275521)))

(declare-fun b!7754787 () Bool)

(declare-fun tp!2275530 () Bool)

(declare-fun tp!2275529 () Bool)

(assert (=> b!7754787 (= e!4596781 (and tp!2275530 tp!2275529))))

(declare-fun res!3091826 () Bool)

(assert (=> start!739074 (=> (not res!3091826) (not e!4596783))))

(assert (=> start!739074 (= res!3091826 (validRegex!11048 r1!6249))))

(assert (=> start!739074 e!4596783))

(assert (=> start!739074 e!4596785))

(assert (=> start!739074 e!4596784))

(assert (=> start!739074 e!4596780))

(assert (=> start!739074 e!4596781))

(assert (=> start!739074 e!4596782))

(declare-fun b!7754783 () Bool)

(declare-fun tp!2275528 () Bool)

(declare-fun tp!2275525 () Bool)

(assert (=> b!7754783 (= e!4596782 (and tp!2275528 tp!2275525))))

(assert (= (and start!739074 res!3091826) b!7754777))

(assert (= (and b!7754777 res!3091827) b!7754779))

(assert (= (and b!7754779 res!3091825) b!7754776))

(assert (= (and start!739074 (is-Cons!73351 s!14266)) b!7754781))

(assert (= (and start!739074 (is-Cons!73351 s2!3712)) b!7754778))

(assert (= (and start!739074 (is-Cons!73351 s1!4090)) b!7754784))

(assert (= (and start!739074 (is-ElementMatch!20630 r1!6249)) b!7754785))

(assert (= (and start!739074 (is-Concat!29475 r1!6249)) b!7754787))

(assert (= (and start!739074 (is-Star!20630 r1!6249)) b!7754786))

(assert (= (and start!739074 (is-Union!20630 r1!6249)) b!7754782))

(assert (= (and start!739074 (is-ElementMatch!20630 r2!6187)) b!7754775))

(assert (= (and start!739074 (is-Concat!29475 r2!6187)) b!7754774))

(assert (= (and start!739074 (is-Star!20630 r2!6187)) b!7754780))

(assert (= (and start!739074 (is-Union!20630 r2!6187)) b!7754783))

(declare-fun m!8218462 () Bool)

(assert (=> b!7754776 m!8218462))

(declare-fun m!8218464 () Bool)

(assert (=> b!7754777 m!8218464))

(declare-fun m!8218466 () Bool)

(assert (=> b!7754779 m!8218466))

(declare-fun m!8218468 () Bool)

(assert (=> start!739074 m!8218468))

(push 1)

(assert (not b!7754776))

(assert (not start!739074))

(assert (not b!7754774))

(assert (not b!7754777))

(assert (not b!7754786))

(assert (not b!7754780))

(assert tp_is_empty!51615)

(assert (not b!7754782))

(assert (not b!7754778))

(assert (not b!7754787))

(assert (not b!7754781))

(assert (not b!7754784))

(assert (not b!7754779))

(assert (not b!7754783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

