; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743470 () Bool)

(assert start!743470)

(declare-fun b!7857578 () Bool)

(declare-fun e!4644021 () Bool)

(declare-fun tp!2327870 () Bool)

(declare-fun tp!2327873 () Bool)

(assert (=> b!7857578 (= e!4644021 (and tp!2327870 tp!2327873))))

(declare-fun b!7857579 () Bool)

(declare-fun res!3123968 () Bool)

(declare-fun e!4644023 () Bool)

(assert (=> b!7857579 (=> (not res!3123968) (not e!4644023))))

(declare-datatypes ((C!42528 0))(
  ( (C!42529 (val!31726 Int)) )
))
(declare-datatypes ((Regex!21101 0))(
  ( (ElementMatch!21101 (c!1444139 C!42528)) (Concat!29946 (regOne!42714 Regex!21101) (regTwo!42714 Regex!21101)) (EmptyExpr!21101) (Star!21101 (reg!21430 Regex!21101)) (EmptyLang!21101) (Union!21101 (regOne!42715 Regex!21101) (regTwo!42715 Regex!21101)) )
))
(declare-fun r2!6165 () Regex!21101)

(declare-datatypes ((List!73960 0))(
  ( (Nil!73836) (Cons!73836 (h!80284 C!42528) (t!388695 List!73960)) )
))
(declare-fun s2!3706 () List!73960)

(declare-fun matchR!10537 (Regex!21101 List!73960) Bool)

(assert (=> b!7857579 (= res!3123968 (matchR!10537 r2!6165 s2!3706))))

(declare-fun b!7857580 () Bool)

(declare-fun tp!2327868 () Bool)

(assert (=> b!7857580 (= e!4644021 tp!2327868)))

(declare-fun b!7857581 () Bool)

(declare-fun tp_is_empty!52601 () Bool)

(assert (=> b!7857581 (= e!4644021 tp_is_empty!52601)))

(declare-fun b!7857582 () Bool)

(declare-fun res!3123962 () Bool)

(assert (=> b!7857582 (=> (not res!3123962) (not e!4644023))))

(declare-fun r1!6227 () Regex!21101)

(declare-fun s1!4084 () List!73960)

(assert (=> b!7857582 (= res!3123962 (matchR!10537 r1!6227 s1!4084))))

(declare-fun b!7857583 () Bool)

(declare-fun e!4644024 () Bool)

(declare-fun tp!2327869 () Bool)

(assert (=> b!7857583 (= e!4644024 (and tp_is_empty!52601 tp!2327869))))

(declare-fun b!7857584 () Bool)

(declare-fun res!3123966 () Bool)

(assert (=> b!7857584 (=> (not res!3123966) (not e!4644023))))

(declare-fun validRegex!11511 (Regex!21101) Bool)

(assert (=> b!7857584 (= res!3123966 (validRegex!11511 r2!6165))))

(declare-fun b!7857585 () Bool)

(declare-fun e!4644027 () Bool)

(declare-fun tp!2327875 () Bool)

(assert (=> b!7857585 (= e!4644027 (and tp_is_empty!52601 tp!2327875))))

(declare-fun b!7857587 () Bool)

(declare-fun e!4644025 () Bool)

(assert (=> b!7857587 (= e!4644025 tp_is_empty!52601)))

(declare-fun b!7857588 () Bool)

(declare-fun e!4644026 () Bool)

(assert (=> b!7857588 (= e!4644023 (not e!4644026))))

(declare-fun res!3123964 () Bool)

(assert (=> b!7857588 (=> res!3123964 e!4644026)))

(declare-fun nullable!9373 (Regex!21101) Bool)

(assert (=> b!7857588 (= res!3123964 (nullable!9373 r1!6227))))

(declare-fun lt!2680149 () Regex!21101)

(declare-fun lt!2680145 () List!73960)

(assert (=> b!7857588 (matchR!10537 lt!2680149 lt!2680145)))

(declare-fun ++!18101 (List!73960 List!73960) List!73960)

(assert (=> b!7857588 (= lt!2680145 (++!18101 (t!388695 s1!4084) s2!3706))))

(declare-fun lt!2680142 () Regex!21101)

(assert (=> b!7857588 (= lt!2680149 (Concat!29946 lt!2680142 r2!6165))))

(declare-datatypes ((Unit!168928 0))(
  ( (Unit!168929) )
))
(declare-fun lt!2680146 () Unit!168928)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!460 (Regex!21101 Regex!21101 List!73960 List!73960) Unit!168928)

(assert (=> b!7857588 (= lt!2680146 (lemmaTwoRegexMatchThenConcatMatchesConcatString!460 lt!2680142 r2!6165 (t!388695 s1!4084) s2!3706))))

(declare-fun derivativeStep!6336 (Regex!21101 C!42528) Regex!21101)

(assert (=> b!7857588 (= lt!2680142 (derivativeStep!6336 r1!6227 (h!80284 s1!4084)))))

(declare-fun b!7857589 () Bool)

(declare-fun e!4644022 () Bool)

(assert (=> b!7857589 (= e!4644026 e!4644022)))

(declare-fun res!3123963 () Bool)

(assert (=> b!7857589 (=> res!3123963 e!4644022)))

(declare-fun lt!2680144 () Regex!21101)

(declare-fun lt!2680148 () Regex!21101)

(assert (=> b!7857589 (= res!3123963 (not (= (derivativeStep!6336 lt!2680148 (h!80284 s1!4084)) lt!2680144)))))

(assert (=> b!7857589 (= lt!2680144 (Union!21101 lt!2680149 EmptyLang!21101))))

(assert (=> b!7857589 (= lt!2680148 (Concat!29946 r1!6227 r2!6165))))

(declare-fun b!7857590 () Bool)

(declare-fun tp!2327876 () Bool)

(declare-fun tp!2327871 () Bool)

(assert (=> b!7857590 (= e!4644025 (and tp!2327876 tp!2327871))))

(declare-fun b!7857591 () Bool)

(declare-fun tp!2327874 () Bool)

(declare-fun tp!2327867 () Bool)

(assert (=> b!7857591 (= e!4644025 (and tp!2327874 tp!2327867))))

(declare-fun b!7857592 () Bool)

(declare-fun res!3123967 () Bool)

(assert (=> b!7857592 (=> (not res!3123967) (not e!4644023))))

(get-info :version)

(assert (=> b!7857592 (= res!3123967 ((_ is Cons!73836) s1!4084))))

(declare-fun b!7857593 () Bool)

(declare-fun tp!2327865 () Bool)

(assert (=> b!7857593 (= e!4644025 tp!2327865)))

(declare-fun b!7857594 () Bool)

(assert (=> b!7857594 (= e!4644022 true)))

(declare-fun lt!2680143 () Bool)

(assert (=> b!7857594 (= lt!2680143 (matchR!10537 lt!2680148 (++!18101 s1!4084 s2!3706)))))

(assert (=> b!7857594 (matchR!10537 lt!2680144 lt!2680145)))

(declare-fun lt!2680147 () Unit!168928)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!130 (Regex!21101 Regex!21101 List!73960) Unit!168928)

(assert (=> b!7857594 (= lt!2680147 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!130 lt!2680149 EmptyLang!21101 lt!2680145))))

(declare-fun res!3123965 () Bool)

(assert (=> start!743470 (=> (not res!3123965) (not e!4644023))))

(assert (=> start!743470 (= res!3123965 (validRegex!11511 r1!6227))))

(assert (=> start!743470 e!4644023))

(assert (=> start!743470 e!4644025))

(assert (=> start!743470 e!4644021))

(assert (=> start!743470 e!4644027))

(assert (=> start!743470 e!4644024))

(declare-fun b!7857586 () Bool)

(declare-fun tp!2327866 () Bool)

(declare-fun tp!2327872 () Bool)

(assert (=> b!7857586 (= e!4644021 (and tp!2327866 tp!2327872))))

(assert (= (and start!743470 res!3123965) b!7857584))

(assert (= (and b!7857584 res!3123966) b!7857582))

(assert (= (and b!7857582 res!3123962) b!7857579))

(assert (= (and b!7857579 res!3123968) b!7857592))

(assert (= (and b!7857592 res!3123967) b!7857588))

(assert (= (and b!7857588 (not res!3123964)) b!7857589))

(assert (= (and b!7857589 (not res!3123963)) b!7857594))

(assert (= (and start!743470 ((_ is ElementMatch!21101) r1!6227)) b!7857587))

(assert (= (and start!743470 ((_ is Concat!29946) r1!6227)) b!7857591))

(assert (= (and start!743470 ((_ is Star!21101) r1!6227)) b!7857593))

(assert (= (and start!743470 ((_ is Union!21101) r1!6227)) b!7857590))

(assert (= (and start!743470 ((_ is ElementMatch!21101) r2!6165)) b!7857581))

(assert (= (and start!743470 ((_ is Concat!29946) r2!6165)) b!7857578))

(assert (= (and start!743470 ((_ is Star!21101) r2!6165)) b!7857580))

(assert (= (and start!743470 ((_ is Union!21101) r2!6165)) b!7857586))

(assert (= (and start!743470 ((_ is Cons!73836) s1!4084)) b!7857585))

(assert (= (and start!743470 ((_ is Cons!73836) s2!3706)) b!7857583))

(declare-fun m!8261132 () Bool)

(assert (=> b!7857584 m!8261132))

(declare-fun m!8261134 () Bool)

(assert (=> b!7857589 m!8261134))

(declare-fun m!8261136 () Bool)

(assert (=> b!7857582 m!8261136))

(declare-fun m!8261138 () Bool)

(assert (=> b!7857594 m!8261138))

(assert (=> b!7857594 m!8261138))

(declare-fun m!8261140 () Bool)

(assert (=> b!7857594 m!8261140))

(declare-fun m!8261142 () Bool)

(assert (=> b!7857594 m!8261142))

(declare-fun m!8261144 () Bool)

(assert (=> b!7857594 m!8261144))

(declare-fun m!8261146 () Bool)

(assert (=> start!743470 m!8261146))

(declare-fun m!8261148 () Bool)

(assert (=> b!7857579 m!8261148))

(declare-fun m!8261150 () Bool)

(assert (=> b!7857588 m!8261150))

(declare-fun m!8261152 () Bool)

(assert (=> b!7857588 m!8261152))

(declare-fun m!8261154 () Bool)

(assert (=> b!7857588 m!8261154))

(declare-fun m!8261156 () Bool)

(assert (=> b!7857588 m!8261156))

(declare-fun m!8261158 () Bool)

(assert (=> b!7857588 m!8261158))

(check-sat (not b!7857579) (not b!7857589) (not b!7857583) (not start!743470) tp_is_empty!52601 (not b!7857590) (not b!7857586) (not b!7857591) (not b!7857580) (not b!7857584) (not b!7857578) (not b!7857593) (not b!7857582) (not b!7857594) (not b!7857588) (not b!7857585))
(check-sat)
