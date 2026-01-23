; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544042 () Bool)

(assert start!544042)

(declare-fun b!5137854 () Bool)

(declare-fun e!3204729 () Bool)

(declare-fun tp!1432840 () Bool)

(assert (=> b!5137854 (= e!3204729 tp!1432840)))

(declare-fun b!5137855 () Bool)

(declare-fun tp!1432845 () Bool)

(declare-fun tp!1432842 () Bool)

(assert (=> b!5137855 (= e!3204729 (and tp!1432845 tp!1432842))))

(declare-fun res!2188294 () Bool)

(declare-fun e!3204731 () Bool)

(assert (=> start!544042 (=> (not res!2188294) (not e!3204731))))

(declare-datatypes ((C!29110 0))(
  ( (C!29111 (val!24207 Int)) )
))
(declare-datatypes ((Regex!14422 0))(
  ( (ElementMatch!14422 (c!884692 C!29110)) (Concat!23267 (regOne!29356 Regex!14422) (regTwo!29356 Regex!14422)) (EmptyExpr!14422) (Star!14422 (reg!14751 Regex!14422)) (EmptyLang!14422) (Union!14422 (regOne!29357 Regex!14422) (regTwo!29357 Regex!14422)) )
))
(declare-fun expr!117 () Regex!14422)

(declare-fun validRegex!6277 (Regex!14422) Bool)

(assert (=> start!544042 (= res!2188294 (validRegex!6277 expr!117))))

(assert (=> start!544042 e!3204731))

(assert (=> start!544042 e!3204729))

(declare-datatypes ((List!59784 0))(
  ( (Nil!59660) (Cons!59660 (h!66108 Regex!14422) (t!372815 List!59784)) )
))
(declare-datatypes ((Context!7612 0))(
  ( (Context!7613 (exprs!4306 List!59784)) )
))
(declare-fun ctx!100 () Context!7612)

(declare-fun e!3204730 () Bool)

(declare-fun inv!79237 (Context!7612) Bool)

(assert (=> start!544042 (and (inv!79237 ctx!100) e!3204730)))

(declare-fun b!5137856 () Bool)

(declare-fun e!3204728 () Bool)

(declare-fun lostCause!1396 (Context!7612) Bool)

(assert (=> b!5137856 (= e!3204728 (lostCause!1396 ctx!100))))

(declare-fun b!5137857 () Bool)

(declare-fun tp!1432841 () Bool)

(declare-fun tp!1432843 () Bool)

(assert (=> b!5137857 (= e!3204729 (and tp!1432841 tp!1432843))))

(declare-fun b!5137858 () Bool)

(assert (=> b!5137858 (= e!3204731 false)))

(declare-fun lt!2119825 () Bool)

(assert (=> b!5137858 (= lt!2119825 e!3204728)))

(declare-fun res!2188293 () Bool)

(assert (=> b!5137858 (=> res!2188293 e!3204728)))

(declare-fun lostCause!1397 (Regex!14422) Bool)

(assert (=> b!5137858 (= res!2188293 (lostCause!1397 expr!117))))

(declare-fun b!5137859 () Bool)

(declare-fun tp!1432844 () Bool)

(assert (=> b!5137859 (= e!3204730 tp!1432844)))

(declare-fun b!5137860 () Bool)

(declare-fun tp_is_empty!37993 () Bool)

(assert (=> b!5137860 (= e!3204729 tp_is_empty!37993)))

(assert (= (and start!544042 res!2188294) b!5137858))

(assert (= (and b!5137858 (not res!2188293)) b!5137856))

(assert (= (and start!544042 (is-ElementMatch!14422 expr!117)) b!5137860))

(assert (= (and start!544042 (is-Concat!23267 expr!117)) b!5137855))

(assert (= (and start!544042 (is-Star!14422 expr!117)) b!5137854))

(assert (= (and start!544042 (is-Union!14422 expr!117)) b!5137857))

(assert (= start!544042 b!5137859))

(declare-fun m!6202952 () Bool)

(assert (=> start!544042 m!6202952))

(declare-fun m!6202954 () Bool)

(assert (=> start!544042 m!6202954))

(declare-fun m!6202956 () Bool)

(assert (=> b!5137856 m!6202956))

(declare-fun m!6202958 () Bool)

(assert (=> b!5137858 m!6202958))

(push 1)

(assert (not b!5137855))

(assert (not b!5137857))

(assert (not b!5137859))

(assert (not b!5137856))

(assert (not b!5137854))

(assert tp_is_empty!37993)

(assert (not start!544042))

(assert (not b!5137858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

