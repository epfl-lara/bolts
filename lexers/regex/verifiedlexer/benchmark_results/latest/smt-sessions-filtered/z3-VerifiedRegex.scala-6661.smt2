; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350434 () Bool)

(assert start!350434)

(declare-fun b!3720976 () Bool)

(declare-fun e!2303577 () Bool)

(declare-fun tp!1131590 () Bool)

(declare-fun tp!1131592 () Bool)

(assert (=> b!3720976 (= e!2303577 (and tp!1131590 tp!1131592))))

(declare-fun b!3720977 () Bool)

(declare-fun tp!1131594 () Bool)

(assert (=> b!3720977 (= e!2303577 tp!1131594)))

(declare-fun res!1512320 () Bool)

(declare-fun e!2303578 () Bool)

(assert (=> start!350434 (=> (not res!1512320) (not e!2303578))))

(declare-datatypes ((C!21908 0))(
  ( (C!21909 (val!13002 Int)) )
))
(declare-datatypes ((Regex!10861 0))(
  ( (ElementMatch!10861 (c!643541 C!21908)) (Concat!17132 (regOne!22234 Regex!10861) (regTwo!22234 Regex!10861)) (EmptyExpr!10861) (Star!10861 (reg!11190 Regex!10861)) (EmptyLang!10861) (Union!10861 (regOne!22235 Regex!10861) (regTwo!22235 Regex!10861)) )
))
(declare-fun r!26968 () Regex!10861)

(declare-fun validRegex!4968 (Regex!10861) Bool)

(assert (=> start!350434 (= res!1512320 (validRegex!4968 r!26968))))

(assert (=> start!350434 e!2303578))

(assert (=> start!350434 e!2303577))

(declare-fun tp_is_empty!18737 () Bool)

(assert (=> start!350434 tp_is_empty!18737))

(declare-fun b!3720978 () Bool)

(assert (=> b!3720978 (= e!2303577 tp_is_empty!18737)))

(declare-fun b!3720979 () Bool)

(declare-fun tp!1131593 () Bool)

(declare-fun tp!1131591 () Bool)

(assert (=> b!3720979 (= e!2303577 (and tp!1131593 tp!1131591))))

(declare-fun b!3720980 () Bool)

(assert (=> b!3720980 (= e!2303578 false)))

(declare-fun lt!1297942 () Bool)

(declare-fun cNot!42 () C!21908)

(declare-datatypes ((List!39742 0))(
  ( (Nil!39618) (Cons!39618 (h!45038 C!21908) (t!302425 List!39742)) )
))
(declare-fun contains!7954 (List!39742 C!21908) Bool)

(declare-fun usedCharacters!1124 (Regex!10861) List!39742)

(assert (=> b!3720980 (= lt!1297942 (contains!7954 (usedCharacters!1124 r!26968) cNot!42))))

(assert (= (and start!350434 res!1512320) b!3720980))

(get-info :version)

(assert (= (and start!350434 ((_ is ElementMatch!10861) r!26968)) b!3720978))

(assert (= (and start!350434 ((_ is Concat!17132) r!26968)) b!3720979))

(assert (= (and start!350434 ((_ is Star!10861) r!26968)) b!3720977))

(assert (= (and start!350434 ((_ is Union!10861) r!26968)) b!3720976))

(declare-fun m!4225371 () Bool)

(assert (=> start!350434 m!4225371))

(declare-fun m!4225373 () Bool)

(assert (=> b!3720980 m!4225373))

(assert (=> b!3720980 m!4225373))

(declare-fun m!4225375 () Bool)

(assert (=> b!3720980 m!4225375))

(check-sat (not b!3720976) (not b!3720980) (not b!3720977) (not start!350434) tp_is_empty!18737 (not b!3720979))
(check-sat)
