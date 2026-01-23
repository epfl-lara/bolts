; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543170 () Bool)

(assert start!543170)

(declare-fun res!2186645 () Bool)

(declare-fun e!3201990 () Bool)

(assert (=> start!543170 (=> (not res!2186645) (not e!3201990))))

(declare-datatypes ((C!29034 0))(
  ( (C!29035 (val!24169 Int)) )
))
(declare-datatypes ((Regex!14384 0))(
  ( (ElementMatch!14384 (c!883581 C!29034)) (Concat!23229 (regOne!29280 Regex!14384) (regTwo!29280 Regex!14384)) (EmptyExpr!14384) (Star!14384 (reg!14713 Regex!14384)) (EmptyLang!14384) (Union!14384 (regOne!29281 Regex!14384) (regTwo!29281 Regex!14384)) )
))
(declare-datatypes ((List!59707 0))(
  ( (Nil!59583) (Cons!59583 (h!66031 Regex!14384) (t!372734 List!59707)) )
))
(declare-datatypes ((Context!7536 0))(
  ( (Context!7537 (exprs!4268 List!59707)) )
))
(declare-fun ctx!74 () Context!7536)

(declare-fun lostCause!1332 (Context!7536) Bool)

(assert (=> start!543170 (= res!2186645 (lostCause!1332 ctx!74))))

(assert (=> start!543170 e!3201990))

(declare-fun e!3201992 () Bool)

(declare-fun inv!79142 (Context!7536) Bool)

(assert (=> start!543170 (and (inv!79142 ctx!74) e!3201992)))

(declare-fun b!5133684 () Bool)

(declare-fun e!3201989 () Bool)

(assert (=> b!5133684 (= e!3201989 (lostCause!1332 (Context!7537 (t!372734 (exprs!4268 ctx!74)))))))

(declare-fun b!5133685 () Bool)

(declare-fun res!2186644 () Bool)

(assert (=> b!5133685 (=> (not res!2186644) (not e!3201990))))

(declare-fun validRegex!6246 (Regex!14384) Bool)

(assert (=> b!5133685 (= res!2186644 (validRegex!6246 (h!66031 (exprs!4268 ctx!74))))))

(declare-fun b!5133686 () Bool)

(declare-fun tp!1432002 () Bool)

(assert (=> b!5133686 (= e!3201992 tp!1432002)))

(declare-fun b!5133687 () Bool)

(declare-fun e!3201991 () Bool)

(declare-fun nullable!4759 (Regex!14384) Bool)

(assert (=> b!5133687 (= e!3201991 (not (nullable!4759 (h!66031 (exprs!4268 ctx!74)))))))

(declare-fun b!5133688 () Bool)

(assert (=> b!5133688 (= e!3201990 false)))

(declare-fun lt!2118722 () Bool)

(assert (=> b!5133688 (= lt!2118722 e!3201989)))

(declare-fun res!2186643 () Bool)

(assert (=> b!5133688 (=> res!2186643 e!3201989)))

(declare-fun lostCause!1333 (Regex!14384) Bool)

(assert (=> b!5133688 (= res!2186643 (lostCause!1333 (h!66031 (exprs!4268 ctx!74))))))

(declare-fun b!5133689 () Bool)

(declare-fun res!2186642 () Bool)

(assert (=> b!5133689 (=> (not res!2186642) (not e!3201990))))

(assert (=> b!5133689 (= res!2186642 (is-Cons!59583 (exprs!4268 ctx!74)))))

(declare-fun b!5133690 () Bool)

(declare-fun res!2186646 () Bool)

(assert (=> b!5133690 (=> (not res!2186646) (not e!3201990))))

(assert (=> b!5133690 (= res!2186646 e!3201991)))

(declare-fun res!2186641 () Bool)

(assert (=> b!5133690 (=> res!2186641 e!3201991)))

(assert (=> b!5133690 (= res!2186641 (not (is-Cons!59583 (exprs!4268 ctx!74))))))

(assert (= (and start!543170 res!2186645) b!5133690))

(assert (= (and b!5133690 (not res!2186641)) b!5133687))

(assert (= (and b!5133690 res!2186646) b!5133689))

(assert (= (and b!5133689 res!2186642) b!5133685))

(assert (= (and b!5133685 res!2186644) b!5133688))

(assert (= (and b!5133688 (not res!2186643)) b!5133684))

(assert (= start!543170 b!5133686))

(declare-fun m!6199850 () Bool)

(assert (=> b!5133685 m!6199850))

(declare-fun m!6199852 () Bool)

(assert (=> b!5133688 m!6199852))

(declare-fun m!6199854 () Bool)

(assert (=> b!5133687 m!6199854))

(declare-fun m!6199856 () Bool)

(assert (=> start!543170 m!6199856))

(declare-fun m!6199858 () Bool)

(assert (=> start!543170 m!6199858))

(declare-fun m!6199860 () Bool)

(assert (=> b!5133684 m!6199860))

(push 1)

(assert (not b!5133688))

(assert (not b!5133684))

(assert (not b!5133687))

(assert (not start!543170))

(assert (not b!5133685))

(assert (not b!5133686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

