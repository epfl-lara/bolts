; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544210 () Bool)

(assert start!544210)

(declare-fun b!5139854 () Bool)

(declare-fun e!3205740 () Bool)

(declare-fun tp_is_empty!38065 () Bool)

(assert (=> b!5139854 (= e!3205740 tp_is_empty!38065)))

(declare-fun b!5139855 () Bool)

(declare-fun e!3205739 () Bool)

(assert (=> b!5139855 (= e!3205739 false)))

(declare-fun b!5139856 () Bool)

(declare-fun tp!1433739 () Bool)

(declare-fun tp!1433737 () Bool)

(assert (=> b!5139856 (= e!3205740 (and tp!1433739 tp!1433737))))

(declare-fun b!5139857 () Bool)

(declare-fun e!3205741 () Bool)

(declare-datatypes ((C!29182 0))(
  ( (C!29183 (val!24243 Int)) )
))
(declare-datatypes ((Regex!14458 0))(
  ( (ElementMatch!14458 (c!884988 C!29182)) (Concat!23303 (regOne!29428 Regex!14458) (regTwo!29428 Regex!14458)) (EmptyExpr!14458) (Star!14458 (reg!14787 Regex!14458)) (EmptyLang!14458) (Union!14458 (regOne!29429 Regex!14458) (regTwo!29429 Regex!14458)) )
))
(declare-datatypes ((List!59832 0))(
  ( (Nil!59708) (Cons!59708 (h!66156 Regex!14458) (t!372865 List!59832)) )
))
(declare-datatypes ((Context!7684 0))(
  ( (Context!7685 (exprs!4342 List!59832)) )
))
(declare-fun ctx!100 () Context!7684)

(declare-fun lostCause!1468 (Context!7684) Bool)

(assert (=> b!5139857 (= e!3205741 (lostCause!1468 ctx!100))))

(declare-fun b!5139858 () Bool)

(declare-fun res!2189151 () Bool)

(assert (=> b!5139858 (=> (not res!2189151) (not e!3205739))))

(assert (=> b!5139858 (= res!2189151 e!3205741)))

(declare-fun res!2189153 () Bool)

(assert (=> b!5139858 (=> res!2189153 e!3205741)))

(declare-fun expr!117 () Regex!14458)

(declare-fun lostCause!1469 (Regex!14458) Bool)

(assert (=> b!5139858 (= res!2189153 (lostCause!1469 expr!117))))

(declare-fun b!5139859 () Bool)

(declare-fun e!3205738 () Bool)

(declare-fun tp!1433734 () Bool)

(assert (=> b!5139859 (= e!3205738 tp!1433734)))

(declare-fun b!5139860 () Bool)

(declare-fun tp!1433735 () Bool)

(declare-fun tp!1433738 () Bool)

(assert (=> b!5139860 (= e!3205740 (and tp!1433735 tp!1433738))))

(declare-fun res!2189152 () Bool)

(assert (=> start!544210 (=> (not res!2189152) (not e!3205739))))

(declare-fun validRegex!6313 (Regex!14458) Bool)

(assert (=> start!544210 (= res!2189152 (validRegex!6313 expr!117))))

(assert (=> start!544210 e!3205739))

(assert (=> start!544210 e!3205740))

(declare-fun inv!79327 (Context!7684) Bool)

(assert (=> start!544210 (and (inv!79327 ctx!100) e!3205738)))

(assert (=> start!544210 tp_is_empty!38065))

(declare-fun b!5139861 () Bool)

(declare-fun tp!1433736 () Bool)

(assert (=> b!5139861 (= e!3205740 tp!1433736)))

(assert (= (and start!544210 res!2189152) b!5139858))

(assert (= (and b!5139858 (not res!2189153)) b!5139857))

(assert (= (and b!5139858 res!2189151) b!5139855))

(assert (= (and start!544210 (is-ElementMatch!14458 expr!117)) b!5139854))

(assert (= (and start!544210 (is-Concat!23303 expr!117)) b!5139856))

(assert (= (and start!544210 (is-Star!14458 expr!117)) b!5139861))

(assert (= (and start!544210 (is-Union!14458 expr!117)) b!5139860))

(assert (= start!544210 b!5139859))

(declare-fun m!6204220 () Bool)

(assert (=> b!5139857 m!6204220))

(declare-fun m!6204222 () Bool)

(assert (=> b!5139858 m!6204222))

(declare-fun m!6204224 () Bool)

(assert (=> start!544210 m!6204224))

(declare-fun m!6204226 () Bool)

(assert (=> start!544210 m!6204226))

(push 1)

(assert (not b!5139859))

(assert (not start!544210))

(assert (not b!5139861))

(assert tp_is_empty!38065)

(assert (not b!5139856))

(assert (not b!5139857))

(assert (not b!5139860))

(assert (not b!5139858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

