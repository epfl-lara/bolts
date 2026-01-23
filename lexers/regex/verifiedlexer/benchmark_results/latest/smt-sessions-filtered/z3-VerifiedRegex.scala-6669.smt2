; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350506 () Bool)

(assert start!350506)

(declare-fun b!3721962 () Bool)

(declare-fun res!1512610 () Bool)

(declare-fun e!2304020 () Bool)

(assert (=> b!3721962 (=> (not res!1512610) (not e!2304020))))

(declare-datatypes ((C!21940 0))(
  ( (C!21941 (val!13018 Int)) )
))
(declare-datatypes ((Regex!10877 0))(
  ( (ElementMatch!10877 (c!643753 C!21940)) (Concat!17148 (regOne!22266 Regex!10877) (regTwo!22266 Regex!10877)) (EmptyExpr!10877) (Star!10877 (reg!11206 Regex!10877)) (EmptyLang!10877) (Union!10877 (regOne!22267 Regex!10877) (regTwo!22267 Regex!10877)) )
))
(declare-fun r!26968 () Regex!10877)

(declare-fun validRegex!4984 (Regex!10877) Bool)

(assert (=> b!3721962 (= res!1512610 (validRegex!4984 (reg!11206 r!26968)))))

(declare-fun b!3721963 () Bool)

(declare-fun res!1512614 () Bool)

(assert (=> b!3721963 (=> (not res!1512614) (not e!2304020))))

(get-info :version)

(assert (=> b!3721963 (= res!1512614 (and (not ((_ is EmptyExpr!10877) r!26968)) (not ((_ is EmptyLang!10877) r!26968)) (not ((_ is ElementMatch!10877) r!26968)) (not ((_ is Union!10877) r!26968)) ((_ is Star!10877) r!26968)))))

(declare-fun b!3721964 () Bool)

(assert (=> b!3721964 (= e!2304020 (not true))))

(declare-fun c!13797 () C!21940)

(declare-fun cNot!42 () C!21940)

(declare-datatypes ((List!39758 0))(
  ( (Nil!39634) (Cons!39634 (h!45054 C!21940) (t!302441 List!39758)) )
))
(declare-fun contains!7970 (List!39758 C!21940) Bool)

(declare-fun usedCharacters!1140 (Regex!10877) List!39758)

(declare-fun derivativeStep!3336 (Regex!10877 C!21940) Regex!10877)

(assert (=> b!3721964 (not (contains!7970 (usedCharacters!1140 (derivativeStep!3336 (reg!11206 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57540 0))(
  ( (Unit!57541) )
))
(declare-fun lt!1298090 () Unit!57540)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!26 (Regex!10877 C!21940 C!21940) Unit!57540)

(assert (=> b!3721964 (= lt!1298090 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!26 (reg!11206 r!26968) c!13797 cNot!42))))

(declare-fun b!3721965 () Bool)

(declare-fun res!1512612 () Bool)

(assert (=> b!3721965 (=> (not res!1512612) (not e!2304020))))

(assert (=> b!3721965 (= res!1512612 (not (contains!7970 (usedCharacters!1140 (reg!11206 r!26968)) cNot!42)))))

(declare-fun b!3721966 () Bool)

(declare-fun res!1512611 () Bool)

(assert (=> b!3721966 (=> (not res!1512611) (not e!2304020))))

(assert (=> b!3721966 (= res!1512611 (not (contains!7970 (usedCharacters!1140 r!26968) cNot!42)))))

(declare-fun b!3721967 () Bool)

(declare-fun e!2304019 () Bool)

(declare-fun tp_is_empty!18769 () Bool)

(assert (=> b!3721967 (= e!2304019 tp_is_empty!18769)))

(declare-fun b!3721968 () Bool)

(declare-fun tp!1131973 () Bool)

(assert (=> b!3721968 (= e!2304019 tp!1131973)))

(declare-fun res!1512613 () Bool)

(assert (=> start!350506 (=> (not res!1512613) (not e!2304020))))

(assert (=> start!350506 (= res!1512613 (validRegex!4984 r!26968))))

(assert (=> start!350506 e!2304020))

(assert (=> start!350506 e!2304019))

(assert (=> start!350506 tp_is_empty!18769))

(declare-fun b!3721969 () Bool)

(declare-fun tp!1131974 () Bool)

(declare-fun tp!1131970 () Bool)

(assert (=> b!3721969 (= e!2304019 (and tp!1131974 tp!1131970))))

(declare-fun b!3721970 () Bool)

(declare-fun tp!1131972 () Bool)

(declare-fun tp!1131971 () Bool)

(assert (=> b!3721970 (= e!2304019 (and tp!1131972 tp!1131971))))

(assert (= (and start!350506 res!1512613) b!3721966))

(assert (= (and b!3721966 res!1512611) b!3721963))

(assert (= (and b!3721963 res!1512614) b!3721962))

(assert (= (and b!3721962 res!1512610) b!3721965))

(assert (= (and b!3721965 res!1512612) b!3721964))

(assert (= (and start!350506 ((_ is ElementMatch!10877) r!26968)) b!3721967))

(assert (= (and start!350506 ((_ is Concat!17148) r!26968)) b!3721969))

(assert (= (and start!350506 ((_ is Star!10877) r!26968)) b!3721968))

(assert (= (and start!350506 ((_ is Union!10877) r!26968)) b!3721970))

(declare-fun m!4225961 () Bool)

(assert (=> b!3721966 m!4225961))

(assert (=> b!3721966 m!4225961))

(declare-fun m!4225963 () Bool)

(assert (=> b!3721966 m!4225963))

(declare-fun m!4225965 () Bool)

(assert (=> b!3721962 m!4225965))

(declare-fun m!4225967 () Bool)

(assert (=> start!350506 m!4225967))

(declare-fun m!4225969 () Bool)

(assert (=> b!3721964 m!4225969))

(assert (=> b!3721964 m!4225969))

(declare-fun m!4225971 () Bool)

(assert (=> b!3721964 m!4225971))

(assert (=> b!3721964 m!4225971))

(declare-fun m!4225973 () Bool)

(assert (=> b!3721964 m!4225973))

(declare-fun m!4225975 () Bool)

(assert (=> b!3721964 m!4225975))

(declare-fun m!4225977 () Bool)

(assert (=> b!3721965 m!4225977))

(assert (=> b!3721965 m!4225977))

(declare-fun m!4225979 () Bool)

(assert (=> b!3721965 m!4225979))

(check-sat (not b!3721970) (not b!3721962) (not b!3721964) (not start!350506) (not b!3721965) tp_is_empty!18769 (not b!3721969) (not b!3721968) (not b!3721966))
(check-sat)
