; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743574 () Bool)

(assert start!743574)

(declare-fun b!7860118 () Bool)

(declare-fun e!4645057 () Bool)

(declare-fun tp!2329434 () Bool)

(declare-fun tp!2329425 () Bool)

(assert (=> b!7860118 (= e!4645057 (and tp!2329434 tp!2329425))))

(declare-fun b!7860119 () Bool)

(declare-fun e!4645061 () Bool)

(declare-datatypes ((C!42568 0))(
  ( (C!42569 (val!31746 Int)) )
))
(declare-datatypes ((Regex!21121 0))(
  ( (ElementMatch!21121 (c!1444393 C!42568)) (Concat!29966 (regOne!42754 Regex!21121) (regTwo!42754 Regex!21121)) (EmptyExpr!21121) (Star!21121 (reg!21450 Regex!21121)) (EmptyLang!21121) (Union!21121 (regOne!42755 Regex!21121) (regTwo!42755 Regex!21121)) )
))
(declare-fun r1!6218 () Regex!21121)

(declare-fun nullable!9391 (Regex!21121) Bool)

(assert (=> b!7860119 (= e!4645061 (nullable!9391 r1!6218))))

(declare-fun b!7860120 () Bool)

(declare-fun res!3124750 () Bool)

(declare-fun e!4645056 () Bool)

(assert (=> b!7860120 (=> (not res!3124750) (not e!4645056))))

(declare-datatypes ((List!73980 0))(
  ( (Nil!73856) (Cons!73856 (h!80304 C!42568) (t!388715 List!73980)) )
))
(declare-fun s!14237 () List!73980)

(get-info :version)

(assert (=> b!7860120 (= res!3124750 ((_ is Cons!73856) s!14237))))

(declare-fun b!7860121 () Bool)

(declare-fun e!4645060 () Bool)

(assert (=> b!7860121 (= e!4645056 e!4645060)))

(declare-fun res!3124745 () Bool)

(assert (=> b!7860121 (=> (not res!3124745) (not e!4645060))))

(declare-fun lt!2680310 () Regex!21121)

(declare-fun r2!6156 () Regex!21121)

(declare-fun lt!2680313 () Regex!21121)

(declare-fun derivativeStep!6354 (Regex!21121 C!42568) Regex!21121)

(assert (=> b!7860121 (= res!3124745 (= (derivativeStep!6354 (Concat!29966 r2!6156 r1!6218) (h!80304 s!14237)) (Union!21121 lt!2680310 lt!2680313)))))

(assert (=> b!7860121 (= lt!2680313 (derivativeStep!6354 r1!6218 (h!80304 s!14237)))))

(assert (=> b!7860121 (= lt!2680310 (Concat!29966 (derivativeStep!6354 r2!6156 (h!80304 s!14237)) r1!6218))))

(declare-fun b!7860122 () Bool)

(declare-fun matchR!10557 (Regex!21121 List!73980) Bool)

(declare-fun head!16070 (List!73980) C!42568)

(declare-fun tail!15613 (List!73980) List!73980)

(assert (=> b!7860122 (= e!4645061 (matchR!10557 (derivativeStep!6354 r1!6218 (head!16070 s!14237)) (tail!15613 s!14237)))))

(declare-fun res!3124746 () Bool)

(assert (=> start!743574 (=> (not res!3124746) (not e!4645056))))

(declare-fun validRegex!11531 (Regex!21121) Bool)

(assert (=> start!743574 (= res!3124746 (validRegex!11531 r1!6218))))

(assert (=> start!743574 e!4645056))

(declare-fun e!4645059 () Bool)

(assert (=> start!743574 e!4645059))

(assert (=> start!743574 e!4645057))

(declare-fun e!4645058 () Bool)

(assert (=> start!743574 e!4645058))

(declare-fun b!7860123 () Bool)

(declare-fun tp!2329426 () Bool)

(declare-fun tp!2329430 () Bool)

(assert (=> b!7860123 (= e!4645059 (and tp!2329426 tp!2329430))))

(declare-fun b!7860124 () Bool)

(declare-fun tp_is_empty!52641 () Bool)

(assert (=> b!7860124 (= e!4645057 tp_is_empty!52641)))

(declare-fun b!7860125 () Bool)

(declare-fun res!3124749 () Bool)

(assert (=> b!7860125 (=> (not res!3124749) (not e!4645056))))

(assert (=> b!7860125 (= res!3124749 (nullable!9391 r2!6156))))

(declare-fun b!7860126 () Bool)

(declare-fun tp!2329428 () Bool)

(assert (=> b!7860126 (= e!4645058 (and tp_is_empty!52641 tp!2329428))))

(declare-fun b!7860127 () Bool)

(declare-fun res!3124748 () Bool)

(assert (=> b!7860127 (=> (not res!3124748) (not e!4645056))))

(assert (=> b!7860127 (= res!3124748 (matchR!10557 r1!6218 s!14237))))

(declare-fun b!7860128 () Bool)

(declare-fun res!3124747 () Bool)

(assert (=> b!7860128 (=> (not res!3124747) (not e!4645056))))

(assert (=> b!7860128 (= res!3124747 (validRegex!11531 r2!6156))))

(declare-fun b!7860129 () Bool)

(assert (=> b!7860129 (= e!4645059 tp_is_empty!52641)))

(declare-fun b!7860130 () Bool)

(declare-fun tp!2329427 () Bool)

(declare-fun tp!2329433 () Bool)

(assert (=> b!7860130 (= e!4645057 (and tp!2329427 tp!2329433))))

(declare-fun b!7860131 () Bool)

(declare-fun tp!2329429 () Bool)

(assert (=> b!7860131 (= e!4645057 tp!2329429)))

(declare-fun b!7860132 () Bool)

(assert (=> b!7860132 (= e!4645060 (not true))))

(assert (=> b!7860132 (matchR!10557 (Union!21121 lt!2680313 lt!2680310) (t!388715 s!14237))))

(declare-datatypes ((Unit!168948 0))(
  ( (Unit!168949) )
))
(declare-fun lt!2680312 () Unit!168948)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!134 (Regex!21121 Regex!21121 List!73980) Unit!168948)

(assert (=> b!7860132 (= lt!2680312 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!134 lt!2680313 lt!2680310 (t!388715 s!14237)))))

(assert (=> b!7860132 e!4645061))

(declare-fun c!1444392 () Bool)

(declare-fun isEmpty!42359 (List!73980) Bool)

(assert (=> b!7860132 (= c!1444392 (isEmpty!42359 s!14237))))

(declare-fun lt!2680311 () Unit!168948)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!8 (Regex!21121 List!73980) Unit!168948)

(assert (=> b!7860132 (= lt!2680311 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!8 r1!6218 s!14237))))

(declare-fun b!7860133 () Bool)

(declare-fun tp!2329431 () Bool)

(declare-fun tp!2329424 () Bool)

(assert (=> b!7860133 (= e!4645059 (and tp!2329431 tp!2329424))))

(declare-fun b!7860134 () Bool)

(declare-fun tp!2329432 () Bool)

(assert (=> b!7860134 (= e!4645059 tp!2329432)))

(assert (= (and start!743574 res!3124746) b!7860128))

(assert (= (and b!7860128 res!3124747) b!7860127))

(assert (= (and b!7860127 res!3124748) b!7860125))

(assert (= (and b!7860125 res!3124749) b!7860120))

(assert (= (and b!7860120 res!3124750) b!7860121))

(assert (= (and b!7860121 res!3124745) b!7860132))

(assert (= (and b!7860132 c!1444392) b!7860119))

(assert (= (and b!7860132 (not c!1444392)) b!7860122))

(assert (= (and start!743574 ((_ is ElementMatch!21121) r1!6218)) b!7860129))

(assert (= (and start!743574 ((_ is Concat!29966) r1!6218)) b!7860133))

(assert (= (and start!743574 ((_ is Star!21121) r1!6218)) b!7860134))

(assert (= (and start!743574 ((_ is Union!21121) r1!6218)) b!7860123))

(assert (= (and start!743574 ((_ is ElementMatch!21121) r2!6156)) b!7860124))

(assert (= (and start!743574 ((_ is Concat!29966) r2!6156)) b!7860130))

(assert (= (and start!743574 ((_ is Star!21121) r2!6156)) b!7860131))

(assert (= (and start!743574 ((_ is Union!21121) r2!6156)) b!7860118))

(assert (= (and start!743574 ((_ is Cons!73856) s!14237)) b!7860126))

(declare-fun m!8261976 () Bool)

(assert (=> b!7860127 m!8261976))

(declare-fun m!8261978 () Bool)

(assert (=> b!7860121 m!8261978))

(declare-fun m!8261980 () Bool)

(assert (=> b!7860121 m!8261980))

(declare-fun m!8261982 () Bool)

(assert (=> b!7860121 m!8261982))

(declare-fun m!8261984 () Bool)

(assert (=> start!743574 m!8261984))

(declare-fun m!8261986 () Bool)

(assert (=> b!7860132 m!8261986))

(declare-fun m!8261988 () Bool)

(assert (=> b!7860132 m!8261988))

(declare-fun m!8261990 () Bool)

(assert (=> b!7860132 m!8261990))

(declare-fun m!8261992 () Bool)

(assert (=> b!7860132 m!8261992))

(declare-fun m!8261994 () Bool)

(assert (=> b!7860125 m!8261994))

(declare-fun m!8261996 () Bool)

(assert (=> b!7860122 m!8261996))

(assert (=> b!7860122 m!8261996))

(declare-fun m!8261998 () Bool)

(assert (=> b!7860122 m!8261998))

(declare-fun m!8262000 () Bool)

(assert (=> b!7860122 m!8262000))

(assert (=> b!7860122 m!8261998))

(assert (=> b!7860122 m!8262000))

(declare-fun m!8262002 () Bool)

(assert (=> b!7860122 m!8262002))

(declare-fun m!8262004 () Bool)

(assert (=> b!7860128 m!8262004))

(declare-fun m!8262006 () Bool)

(assert (=> b!7860119 m!8262006))

(check-sat (not b!7860122) (not b!7860133) (not b!7860134) (not b!7860118) (not b!7860123) (not b!7860126) (not b!7860127) (not b!7860132) (not b!7860128) (not b!7860125) (not b!7860130) (not b!7860121) (not start!743574) (not b!7860131) (not b!7860119) tp_is_empty!52641)
(check-sat)
