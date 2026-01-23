; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350498 () Bool)

(assert start!350498)

(declare-fun b!3721862 () Bool)

(declare-fun e!2303995 () Bool)

(declare-fun tp!1131913 () Bool)

(declare-fun tp!1131912 () Bool)

(assert (=> b!3721862 (= e!2303995 (and tp!1131913 tp!1131912))))

(declare-fun b!3721863 () Bool)

(declare-fun e!2303996 () Bool)

(assert (=> b!3721863 (= e!2303996 (not true))))

(declare-datatypes ((C!21932 0))(
  ( (C!21933 (val!13014 Int)) )
))
(declare-datatypes ((List!39754 0))(
  ( (Nil!39630) (Cons!39630 (h!45050 C!21932) (t!302437 List!39754)) )
))
(declare-fun lt!1298077 () List!39754)

(declare-fun lt!1298075 () List!39754)

(declare-fun cNot!42 () C!21932)

(declare-fun contains!7966 (List!39754 C!21932) Bool)

(declare-fun ++!9811 (List!39754 List!39754) List!39754)

(assert (=> b!3721863 (not (contains!7966 (++!9811 lt!1298077 lt!1298075) cNot!42))))

(declare-datatypes ((Unit!57536 0))(
  ( (Unit!57537) )
))
(declare-fun lt!1298074 () Unit!57536)

(declare-fun lemmaConcatTwoListsWhichNotContainThenTotNotContain!2 (List!39754 List!39754 C!21932) Unit!57536)

(assert (=> b!3721863 (= lt!1298074 (lemmaConcatTwoListsWhichNotContainThenTotNotContain!2 lt!1298077 lt!1298075 cNot!42))))

(assert (=> b!3721863 (not (contains!7966 lt!1298075 cNot!42))))

(declare-datatypes ((Regex!10873 0))(
  ( (ElementMatch!10873 (c!643749 C!21932)) (Concat!17144 (regOne!22258 Regex!10873) (regTwo!22258 Regex!10873)) (EmptyExpr!10873) (Star!10873 (reg!11202 Regex!10873)) (EmptyLang!10873) (Union!10873 (regOne!22259 Regex!10873) (regTwo!22259 Regex!10873)) )
))
(declare-fun r!26968 () Regex!10873)

(declare-fun c!13797 () C!21932)

(declare-fun usedCharacters!1136 (Regex!10873) List!39754)

(declare-fun derivativeStep!3334 (Regex!10873 C!21932) Regex!10873)

(assert (=> b!3721863 (= lt!1298075 (usedCharacters!1136 (derivativeStep!3334 (regTwo!22259 r!26968) c!13797)))))

(declare-fun lt!1298078 () Unit!57536)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!24 (Regex!10873 C!21932 C!21932) Unit!57536)

(assert (=> b!3721863 (= lt!1298078 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!24 (regTwo!22259 r!26968) c!13797 cNot!42))))

(assert (=> b!3721863 (not (contains!7966 lt!1298077 cNot!42))))

(assert (=> b!3721863 (= lt!1298077 (usedCharacters!1136 (derivativeStep!3334 (regOne!22259 r!26968) c!13797)))))

(declare-fun lt!1298076 () Unit!57536)

(assert (=> b!3721863 (= lt!1298076 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!24 (regOne!22259 r!26968) c!13797 cNot!42))))

(declare-fun b!3721864 () Bool)

(declare-fun tp_is_empty!18761 () Bool)

(assert (=> b!3721864 (= e!2303995 tp_is_empty!18761)))

(declare-fun b!3721865 () Bool)

(declare-fun res!1512559 () Bool)

(assert (=> b!3721865 (=> (not res!1512559) (not e!2303996))))

(assert (=> b!3721865 (= res!1512559 (not (contains!7966 (usedCharacters!1136 r!26968) cNot!42)))))

(declare-fun res!1512560 () Bool)

(assert (=> start!350498 (=> (not res!1512560) (not e!2303996))))

(declare-fun validRegex!4980 (Regex!10873) Bool)

(assert (=> start!350498 (= res!1512560 (validRegex!4980 r!26968))))

(assert (=> start!350498 e!2303996))

(assert (=> start!350498 e!2303995))

(assert (=> start!350498 tp_is_empty!18761))

(declare-fun b!3721866 () Bool)

(declare-fun tp!1131914 () Bool)

(assert (=> b!3721866 (= e!2303995 tp!1131914)))

(declare-fun b!3721867 () Bool)

(declare-fun res!1512558 () Bool)

(assert (=> b!3721867 (=> (not res!1512558) (not e!2303996))))

(get-info :version)

(assert (=> b!3721867 (= res!1512558 (and (not ((_ is EmptyExpr!10873) r!26968)) (not ((_ is EmptyLang!10873) r!26968)) (not ((_ is ElementMatch!10873) r!26968)) ((_ is Union!10873) r!26968)))))

(declare-fun b!3721868 () Bool)

(declare-fun tp!1131910 () Bool)

(declare-fun tp!1131911 () Bool)

(assert (=> b!3721868 (= e!2303995 (and tp!1131910 tp!1131911))))

(assert (= (and start!350498 res!1512560) b!3721865))

(assert (= (and b!3721865 res!1512559) b!3721867))

(assert (= (and b!3721867 res!1512558) b!3721863))

(assert (= (and start!350498 ((_ is ElementMatch!10873) r!26968)) b!3721864))

(assert (= (and start!350498 ((_ is Concat!17144) r!26968)) b!3721862))

(assert (= (and start!350498 ((_ is Star!10873) r!26968)) b!3721866))

(assert (= (and start!350498 ((_ is Union!10873) r!26968)) b!3721868))

(declare-fun m!4225889 () Bool)

(assert (=> b!3721863 m!4225889))

(declare-fun m!4225891 () Bool)

(assert (=> b!3721863 m!4225891))

(declare-fun m!4225893 () Bool)

(assert (=> b!3721863 m!4225893))

(declare-fun m!4225895 () Bool)

(assert (=> b!3721863 m!4225895))

(declare-fun m!4225897 () Bool)

(assert (=> b!3721863 m!4225897))

(declare-fun m!4225899 () Bool)

(assert (=> b!3721863 m!4225899))

(declare-fun m!4225901 () Bool)

(assert (=> b!3721863 m!4225901))

(declare-fun m!4225903 () Bool)

(assert (=> b!3721863 m!4225903))

(assert (=> b!3721863 m!4225903))

(declare-fun m!4225905 () Bool)

(assert (=> b!3721863 m!4225905))

(assert (=> b!3721863 m!4225891))

(declare-fun m!4225907 () Bool)

(assert (=> b!3721863 m!4225907))

(declare-fun m!4225909 () Bool)

(assert (=> b!3721863 m!4225909))

(assert (=> b!3721863 m!4225895))

(declare-fun m!4225911 () Bool)

(assert (=> b!3721865 m!4225911))

(assert (=> b!3721865 m!4225911))

(declare-fun m!4225913 () Bool)

(assert (=> b!3721865 m!4225913))

(declare-fun m!4225915 () Bool)

(assert (=> start!350498 m!4225915))

(check-sat (not start!350498) (not b!3721862) tp_is_empty!18761 (not b!3721866) (not b!3721863) (not b!3721865) (not b!3721868))
(check-sat)
