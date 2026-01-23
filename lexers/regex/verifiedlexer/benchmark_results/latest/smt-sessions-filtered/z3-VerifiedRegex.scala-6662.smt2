; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350438 () Bool)

(assert start!350438)

(declare-fun b!3721021 () Bool)

(declare-fun res!1512342 () Bool)

(declare-fun e!2303589 () Bool)

(assert (=> b!3721021 (=> (not res!1512342) (not e!2303589))))

(declare-datatypes ((C!21912 0))(
  ( (C!21913 (val!13004 Int)) )
))
(declare-datatypes ((Regex!10863 0))(
  ( (ElementMatch!10863 (c!643543 C!21912)) (Concat!17134 (regOne!22238 Regex!10863) (regTwo!22238 Regex!10863)) (EmptyExpr!10863) (Star!10863 (reg!11192 Regex!10863)) (EmptyLang!10863) (Union!10863 (regOne!22239 Regex!10863) (regTwo!22239 Regex!10863)) )
))
(declare-fun r!26968 () Regex!10863)

(get-info :version)

(assert (=> b!3721021 (= res!1512342 (and (not ((_ is EmptyExpr!10863) r!26968)) (not ((_ is EmptyLang!10863) r!26968)) (not ((_ is ElementMatch!10863) r!26968)) ((_ is Union!10863) r!26968)))))

(declare-fun res!1512344 () Bool)

(assert (=> start!350438 (=> (not res!1512344) (not e!2303589))))

(declare-fun validRegex!4970 (Regex!10863) Bool)

(assert (=> start!350438 (= res!1512344 (validRegex!4970 r!26968))))

(assert (=> start!350438 e!2303589))

(declare-fun e!2303590 () Bool)

(assert (=> start!350438 e!2303590))

(declare-fun tp_is_empty!18741 () Bool)

(assert (=> start!350438 tp_is_empty!18741))

(declare-fun b!3721022 () Bool)

(declare-fun tp!1131624 () Bool)

(assert (=> b!3721022 (= e!2303590 tp!1131624)))

(declare-fun b!3721023 () Bool)

(declare-fun tp!1131622 () Bool)

(declare-fun tp!1131620 () Bool)

(assert (=> b!3721023 (= e!2303590 (and tp!1131622 tp!1131620))))

(declare-fun b!3721024 () Bool)

(assert (=> b!3721024 (= e!2303590 tp_is_empty!18741)))

(declare-fun b!3721025 () Bool)

(declare-fun tp!1131623 () Bool)

(declare-fun tp!1131621 () Bool)

(assert (=> b!3721025 (= e!2303590 (and tp!1131623 tp!1131621))))

(declare-fun b!3721026 () Bool)

(declare-fun res!1512341 () Bool)

(assert (=> b!3721026 (=> (not res!1512341) (not e!2303589))))

(assert (=> b!3721026 (= res!1512341 (validRegex!4970 (regOne!22239 r!26968)))))

(declare-fun b!3721027 () Bool)

(declare-fun res!1512343 () Bool)

(assert (=> b!3721027 (=> (not res!1512343) (not e!2303589))))

(declare-fun cNot!42 () C!21912)

(declare-datatypes ((List!39744 0))(
  ( (Nil!39620) (Cons!39620 (h!45040 C!21912) (t!302427 List!39744)) )
))
(declare-fun contains!7956 (List!39744 C!21912) Bool)

(declare-fun usedCharacters!1126 (Regex!10863) List!39744)

(assert (=> b!3721027 (= res!1512343 (not (contains!7956 (usedCharacters!1126 r!26968) cNot!42)))))

(declare-fun b!3721028 () Bool)

(assert (=> b!3721028 (= e!2303589 false)))

(declare-fun lt!1297948 () Bool)

(assert (=> b!3721028 (= lt!1297948 (contains!7956 (usedCharacters!1126 (regOne!22239 r!26968)) cNot!42))))

(assert (= (and start!350438 res!1512344) b!3721027))

(assert (= (and b!3721027 res!1512343) b!3721021))

(assert (= (and b!3721021 res!1512342) b!3721026))

(assert (= (and b!3721026 res!1512341) b!3721028))

(assert (= (and start!350438 ((_ is ElementMatch!10863) r!26968)) b!3721024))

(assert (= (and start!350438 ((_ is Concat!17134) r!26968)) b!3721025))

(assert (= (and start!350438 ((_ is Star!10863) r!26968)) b!3721022))

(assert (= (and start!350438 ((_ is Union!10863) r!26968)) b!3721023))

(declare-fun m!4225389 () Bool)

(assert (=> start!350438 m!4225389))

(declare-fun m!4225391 () Bool)

(assert (=> b!3721026 m!4225391))

(declare-fun m!4225393 () Bool)

(assert (=> b!3721027 m!4225393))

(assert (=> b!3721027 m!4225393))

(declare-fun m!4225395 () Bool)

(assert (=> b!3721027 m!4225395))

(declare-fun m!4225397 () Bool)

(assert (=> b!3721028 m!4225397))

(assert (=> b!3721028 m!4225397))

(declare-fun m!4225399 () Bool)

(assert (=> b!3721028 m!4225399))

(check-sat (not b!3721026) (not b!3721025) (not b!3721022) (not b!3721027) (not b!3721023) (not start!350438) tp_is_empty!18741 (not b!3721028))
(check-sat)
