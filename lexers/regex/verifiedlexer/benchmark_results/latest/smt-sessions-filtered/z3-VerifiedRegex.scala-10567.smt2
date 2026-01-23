; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544048 () Bool)

(assert start!544048)

(declare-fun b!5137937 () Bool)

(declare-fun e!3204773 () Bool)

(declare-fun tp!1432897 () Bool)

(declare-fun tp!1432898 () Bool)

(assert (=> b!5137937 (= e!3204773 (and tp!1432897 tp!1432898))))

(declare-fun b!5137938 () Bool)

(declare-fun e!3204772 () Bool)

(declare-datatypes ((C!29116 0))(
  ( (C!29117 (val!24210 Int)) )
))
(declare-datatypes ((Regex!14425 0))(
  ( (ElementMatch!14425 (c!884695 C!29116)) (Concat!23270 (regOne!29362 Regex!14425) (regTwo!29362 Regex!14425)) (EmptyExpr!14425) (Star!14425 (reg!14754 Regex!14425)) (EmptyLang!14425) (Union!14425 (regOne!29363 Regex!14425) (regTwo!29363 Regex!14425)) )
))
(declare-datatypes ((List!59787 0))(
  ( (Nil!59663) (Cons!59663 (h!66111 Regex!14425) (t!372818 List!59787)) )
))
(declare-datatypes ((Context!7618 0))(
  ( (Context!7619 (exprs!4309 List!59787)) )
))
(declare-fun ctx!100 () Context!7618)

(declare-fun lostCause!1402 (Context!7618) Bool)

(assert (=> b!5137938 (= e!3204772 (lostCause!1402 ctx!100))))

(declare-fun res!2188333 () Bool)

(declare-fun e!3204770 () Bool)

(assert (=> start!544048 (=> (not res!2188333) (not e!3204770))))

(declare-fun expr!117 () Regex!14425)

(declare-fun validRegex!6280 (Regex!14425) Bool)

(assert (=> start!544048 (= res!2188333 (validRegex!6280 expr!117))))

(assert (=> start!544048 e!3204770))

(assert (=> start!544048 e!3204773))

(declare-fun e!3204769 () Bool)

(declare-fun inv!79243 (Context!7618) Bool)

(assert (=> start!544048 (and (inv!79243 ctx!100) e!3204769)))

(declare-fun tp_is_empty!37999 () Bool)

(assert (=> start!544048 tp_is_empty!37999))

(declare-fun b!5137939 () Bool)

(declare-fun e!3204771 () Bool)

(assert (=> b!5137939 (= e!3204771 (lostCause!1402 ctx!100))))

(declare-fun b!5137940 () Bool)

(declare-fun res!2188335 () Bool)

(assert (=> b!5137940 (=> (not res!2188335) (not e!3204770))))

(assert (=> b!5137940 (= res!2188335 e!3204772)))

(declare-fun res!2188334 () Bool)

(assert (=> b!5137940 (=> res!2188334 e!3204772)))

(declare-fun lostCause!1403 (Regex!14425) Bool)

(assert (=> b!5137940 (= res!2188334 (lostCause!1403 expr!117))))

(declare-fun b!5137941 () Bool)

(declare-fun tp!1432896 () Bool)

(assert (=> b!5137941 (= e!3204769 tp!1432896)))

(declare-fun b!5137942 () Bool)

(declare-fun tp!1432899 () Bool)

(assert (=> b!5137942 (= e!3204773 tp!1432899)))

(declare-fun b!5137943 () Bool)

(assert (=> b!5137943 (= e!3204770 false)))

(declare-fun lt!2119834 () Bool)

(assert (=> b!5137943 (= lt!2119834 e!3204771)))

(declare-fun res!2188331 () Bool)

(assert (=> b!5137943 (=> res!2188331 e!3204771)))

(assert (=> b!5137943 (= res!2188331 (lostCause!1403 (regOne!29363 expr!117)))))

(declare-fun b!5137944 () Bool)

(assert (=> b!5137944 (= e!3204773 tp_is_empty!37999)))

(declare-fun b!5137945 () Bool)

(declare-fun tp!1432895 () Bool)

(declare-fun tp!1432894 () Bool)

(assert (=> b!5137945 (= e!3204773 (and tp!1432895 tp!1432894))))

(declare-fun b!5137946 () Bool)

(declare-fun res!2188332 () Bool)

(assert (=> b!5137946 (=> (not res!2188332) (not e!3204770))))

(declare-fun a!1296 () C!29116)

(get-info :version)

(assert (=> b!5137946 (= res!2188332 (and (or (not ((_ is ElementMatch!14425) expr!117)) (not (= (c!884695 expr!117) a!1296))) ((_ is Union!14425) expr!117)))))

(declare-fun b!5137947 () Bool)

(declare-fun res!2188336 () Bool)

(assert (=> b!5137947 (=> (not res!2188336) (not e!3204770))))

(assert (=> b!5137947 (= res!2188336 (validRegex!6280 (regOne!29363 expr!117)))))

(assert (= (and start!544048 res!2188333) b!5137940))

(assert (= (and b!5137940 (not res!2188334)) b!5137938))

(assert (= (and b!5137940 res!2188335) b!5137946))

(assert (= (and b!5137946 res!2188332) b!5137947))

(assert (= (and b!5137947 res!2188336) b!5137943))

(assert (= (and b!5137943 (not res!2188331)) b!5137939))

(assert (= (and start!544048 ((_ is ElementMatch!14425) expr!117)) b!5137944))

(assert (= (and start!544048 ((_ is Concat!23270) expr!117)) b!5137937))

(assert (= (and start!544048 ((_ is Star!14425) expr!117)) b!5137942))

(assert (= (and start!544048 ((_ is Union!14425) expr!117)) b!5137945))

(assert (= start!544048 b!5137941))

(declare-fun m!6202980 () Bool)

(assert (=> b!5137947 m!6202980))

(declare-fun m!6202982 () Bool)

(assert (=> b!5137938 m!6202982))

(declare-fun m!6202984 () Bool)

(assert (=> start!544048 m!6202984))

(declare-fun m!6202986 () Bool)

(assert (=> start!544048 m!6202986))

(declare-fun m!6202988 () Bool)

(assert (=> b!5137943 m!6202988))

(declare-fun m!6202990 () Bool)

(assert (=> b!5137940 m!6202990))

(assert (=> b!5137939 m!6202982))

(check-sat (not start!544048) (not b!5137943) (not b!5137947) (not b!5137945) (not b!5137938) (not b!5137941) (not b!5137939) tp_is_empty!37999 (not b!5137937) (not b!5137942) (not b!5137940))
(check-sat)
