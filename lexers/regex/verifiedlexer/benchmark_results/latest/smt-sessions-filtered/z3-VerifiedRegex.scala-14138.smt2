; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742910 () Bool)

(assert start!742910)

(declare-fun b!7844444 () Bool)

(declare-fun e!4637819 () Bool)

(declare-fun tp_is_empty!52497 () Bool)

(declare-fun tp!2322311 () Bool)

(assert (=> b!7844444 (= e!4637819 (and tp_is_empty!52497 tp!2322311))))

(declare-fun b!7844445 () Bool)

(declare-fun e!4637822 () Bool)

(declare-fun tp!2322315 () Bool)

(declare-fun tp!2322310 () Bool)

(assert (=> b!7844445 (= e!4637822 (and tp!2322315 tp!2322310))))

(declare-fun b!7844446 () Bool)

(declare-fun tp!2322306 () Bool)

(assert (=> b!7844446 (= e!4637822 tp!2322306)))

(declare-fun b!7844447 () Bool)

(declare-fun res!3119736 () Bool)

(declare-fun e!4637823 () Bool)

(assert (=> b!7844447 (=> (not res!3119736) (not e!4637823))))

(declare-datatypes ((C!42424 0))(
  ( (C!42425 (val!31674 Int)) )
))
(declare-datatypes ((Regex!21049 0))(
  ( (ElementMatch!21049 (c!1441971 C!42424)) (Concat!29894 (regOne!42610 Regex!21049) (regTwo!42610 Regex!21049)) (EmptyExpr!21049) (Star!21049 (reg!21378 Regex!21049)) (EmptyLang!21049) (Union!21049 (regOne!42611 Regex!21049) (regTwo!42611 Regex!21049)) )
))
(declare-fun r2!6165 () Regex!21049)

(declare-fun validRegex!11459 (Regex!21049) Bool)

(assert (=> b!7844447 (= res!3119736 (validRegex!11459 r2!6165))))

(declare-fun b!7844448 () Bool)

(assert (=> b!7844448 (= e!4637822 tp_is_empty!52497)))

(declare-fun res!3119737 () Bool)

(assert (=> start!742910 (=> (not res!3119737) (not e!4637823))))

(declare-fun r1!6227 () Regex!21049)

(assert (=> start!742910 (= res!3119737 (validRegex!11459 r1!6227))))

(assert (=> start!742910 e!4637823))

(declare-fun e!4637820 () Bool)

(assert (=> start!742910 e!4637820))

(assert (=> start!742910 e!4637822))

(declare-fun e!4637821 () Bool)

(assert (=> start!742910 e!4637821))

(assert (=> start!742910 e!4637819))

(declare-fun b!7844449 () Bool)

(declare-fun res!3119738 () Bool)

(assert (=> b!7844449 (=> (not res!3119738) (not e!4637823))))

(declare-datatypes ((List!73908 0))(
  ( (Nil!73784) (Cons!73784 (h!80232 C!42424) (t!388643 List!73908)) )
))
(declare-fun s1!4084 () List!73908)

(declare-fun matchR!10485 (Regex!21049 List!73908) Bool)

(assert (=> b!7844449 (= res!3119738 (matchR!10485 r1!6227 s1!4084))))

(declare-fun b!7844450 () Bool)

(declare-fun tp!2322309 () Bool)

(declare-fun tp!2322305 () Bool)

(assert (=> b!7844450 (= e!4637820 (and tp!2322309 tp!2322305))))

(declare-fun b!7844451 () Bool)

(declare-fun tp!2322312 () Bool)

(assert (=> b!7844451 (= e!4637820 tp!2322312)))

(declare-fun b!7844452 () Bool)

(assert (=> b!7844452 (= e!4637823 false)))

(declare-fun lt!2678979 () Bool)

(declare-fun s2!3706 () List!73908)

(assert (=> b!7844452 (= lt!2678979 (matchR!10485 r2!6165 s2!3706))))

(declare-fun b!7844453 () Bool)

(declare-fun tp!2322316 () Bool)

(declare-fun tp!2322308 () Bool)

(assert (=> b!7844453 (= e!4637820 (and tp!2322316 tp!2322308))))

(declare-fun b!7844454 () Bool)

(declare-fun tp!2322307 () Bool)

(declare-fun tp!2322313 () Bool)

(assert (=> b!7844454 (= e!4637822 (and tp!2322307 tp!2322313))))

(declare-fun b!7844455 () Bool)

(declare-fun tp!2322314 () Bool)

(assert (=> b!7844455 (= e!4637821 (and tp_is_empty!52497 tp!2322314))))

(declare-fun b!7844456 () Bool)

(assert (=> b!7844456 (= e!4637820 tp_is_empty!52497)))

(assert (= (and start!742910 res!3119737) b!7844447))

(assert (= (and b!7844447 res!3119736) b!7844449))

(assert (= (and b!7844449 res!3119738) b!7844452))

(get-info :version)

(assert (= (and start!742910 ((_ is ElementMatch!21049) r1!6227)) b!7844456))

(assert (= (and start!742910 ((_ is Concat!29894) r1!6227)) b!7844453))

(assert (= (and start!742910 ((_ is Star!21049) r1!6227)) b!7844451))

(assert (= (and start!742910 ((_ is Union!21049) r1!6227)) b!7844450))

(assert (= (and start!742910 ((_ is ElementMatch!21049) r2!6165)) b!7844448))

(assert (= (and start!742910 ((_ is Concat!29894) r2!6165)) b!7844445))

(assert (= (and start!742910 ((_ is Star!21049) r2!6165)) b!7844446))

(assert (= (and start!742910 ((_ is Union!21049) r2!6165)) b!7844454))

(assert (= (and start!742910 ((_ is Cons!73784) s1!4084)) b!7844455))

(assert (= (and start!742910 ((_ is Cons!73784) s2!3706)) b!7844444))

(declare-fun m!8255312 () Bool)

(assert (=> b!7844447 m!8255312))

(declare-fun m!8255314 () Bool)

(assert (=> start!742910 m!8255314))

(declare-fun m!8255316 () Bool)

(assert (=> b!7844449 m!8255316))

(declare-fun m!8255318 () Bool)

(assert (=> b!7844452 m!8255318))

(check-sat (not b!7844449) (not b!7844447) (not b!7844451) (not b!7844444) (not b!7844455) tp_is_empty!52497 (not b!7844450) (not start!742910) (not b!7844445) (not b!7844454) (not b!7844453) (not b!7844446) (not b!7844452))
(check-sat)
