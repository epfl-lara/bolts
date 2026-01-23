; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543166 () Bool)

(assert start!543166)

(declare-fun b!5133650 () Bool)

(declare-fun res!2186613 () Bool)

(declare-fun e!3201971 () Bool)

(assert (=> b!5133650 (=> (not res!2186613) (not e!3201971))))

(declare-datatypes ((C!29030 0))(
  ( (C!29031 (val!24167 Int)) )
))
(declare-datatypes ((Regex!14382 0))(
  ( (ElementMatch!14382 (c!883577 C!29030)) (Concat!23227 (regOne!29276 Regex!14382) (regTwo!29276 Regex!14382)) (EmptyExpr!14382) (Star!14382 (reg!14711 Regex!14382)) (EmptyLang!14382) (Union!14382 (regOne!29277 Regex!14382) (regTwo!29277 Regex!14382)) )
))
(declare-datatypes ((List!59705 0))(
  ( (Nil!59581) (Cons!59581 (h!66029 Regex!14382) (t!372732 List!59705)) )
))
(declare-datatypes ((Context!7532 0))(
  ( (Context!7533 (exprs!4266 List!59705)) )
))
(declare-fun ctx!74 () Context!7532)

(declare-fun nullable!4757 (Regex!14382) Bool)

(assert (=> b!5133650 (= res!2186613 (nullable!4757 (h!66029 (exprs!4266 ctx!74))))))

(declare-fun b!5133651 () Bool)

(declare-fun e!3201969 () Bool)

(assert (=> b!5133651 (= e!3201969 true)))

(declare-fun lt!2118693 () Bool)

(declare-fun lt!2118692 () (Set Context!7532))

(declare-fun lambda!255477 () Int)

(declare-fun forall!13834 ((Set Context!7532) Int) Bool)

(assert (=> b!5133651 (= lt!2118693 (forall!13834 lt!2118692 lambda!255477))))

(declare-fun b!5133652 () Bool)

(declare-fun e!3201970 () Bool)

(declare-fun tp!1431996 () Bool)

(assert (=> b!5133652 (= e!3201970 tp!1431996)))

(declare-fun res!2186616 () Bool)

(assert (=> start!543166 (=> (not res!2186616) (not e!3201971))))

(declare-fun lostCause!1328 (Context!7532) Bool)

(assert (=> start!543166 (= res!2186616 (lostCause!1328 ctx!74))))

(assert (=> start!543166 e!3201971))

(declare-fun inv!79137 (Context!7532) Bool)

(assert (=> start!543166 (and (inv!79137 ctx!74) e!3201970)))

(declare-fun tp_is_empty!37929 () Bool)

(assert (=> start!543166 tp_is_empty!37929))

(declare-fun b!5133653 () Bool)

(assert (=> b!5133653 (= e!3201971 (not e!3201969))))

(declare-fun res!2186615 () Bool)

(assert (=> b!5133653 (=> res!2186615 e!3201969)))

(declare-fun lt!2118694 () (Set Context!7532))

(assert (=> b!5133653 (= res!2186615 (not (forall!13834 lt!2118694 lambda!255477)))))

(declare-fun lostCauseZipper!1222 ((Set Context!7532)) Bool)

(assert (=> b!5133653 (lostCauseZipper!1222 lt!2118694)))

(declare-fun a!1252 () C!29030)

(declare-fun lt!2118695 () Context!7532)

(declare-fun derivationStepZipperDown!103 (Regex!14382 Context!7532 C!29030) (Set Context!7532))

(assert (=> b!5133653 (= lt!2118694 (derivationStepZipperDown!103 (h!66029 (exprs!4266 ctx!74)) lt!2118695 a!1252))))

(declare-datatypes ((Unit!150919 0))(
  ( (Unit!150920) )
))
(declare-fun lt!2118697 () Unit!150919)

(declare-fun lemmaLostCauseFixPointDerivDown!3 (Regex!14382 Context!7532 C!29030) Unit!150919)

(assert (=> b!5133653 (= lt!2118697 (lemmaLostCauseFixPointDerivDown!3 (h!66029 (exprs!4266 ctx!74)) lt!2118695 a!1252))))

(assert (=> b!5133653 (lostCauseZipper!1222 lt!2118692)))

(declare-fun derivationStepZipperUp!80 (Context!7532 C!29030) (Set Context!7532))

(assert (=> b!5133653 (= lt!2118692 (derivationStepZipperUp!80 lt!2118695 a!1252))))

(declare-fun lt!2118698 () Unit!150919)

(declare-fun lemmaLostCauseFixPointDerivUp!13 (Context!7532 C!29030) Unit!150919)

(assert (=> b!5133653 (= lt!2118698 (lemmaLostCauseFixPointDerivUp!13 lt!2118695 a!1252))))

(assert (=> b!5133653 (= lt!2118695 (Context!7533 (t!372732 (exprs!4266 ctx!74))))))

(declare-fun lostCause!1329 (Regex!14382) Bool)

(assert (=> b!5133653 (not (lostCause!1329 (h!66029 (exprs!4266 ctx!74))))))

(declare-fun lt!2118696 () Unit!150919)

(declare-fun lemmaNullableThenNotLostCause!39 (Regex!14382) Unit!150919)

(assert (=> b!5133653 (= lt!2118696 (lemmaNullableThenNotLostCause!39 (h!66029 (exprs!4266 ctx!74))))))

(declare-fun b!5133654 () Bool)

(declare-fun res!2186614 () Bool)

(assert (=> b!5133654 (=> (not res!2186614) (not e!3201971))))

(assert (=> b!5133654 (= res!2186614 (is-Cons!59581 (exprs!4266 ctx!74)))))

(assert (= (and start!543166 res!2186616) b!5133654))

(assert (= (and b!5133654 res!2186614) b!5133650))

(assert (= (and b!5133650 res!2186613) b!5133653))

(assert (= (and b!5133653 (not res!2186615)) b!5133651))

(assert (= start!543166 b!5133652))

(declare-fun m!6199798 () Bool)

(assert (=> b!5133650 m!6199798))

(declare-fun m!6199800 () Bool)

(assert (=> b!5133651 m!6199800))

(declare-fun m!6199802 () Bool)

(assert (=> start!543166 m!6199802))

(declare-fun m!6199804 () Bool)

(assert (=> start!543166 m!6199804))

(declare-fun m!6199806 () Bool)

(assert (=> b!5133653 m!6199806))

(declare-fun m!6199808 () Bool)

(assert (=> b!5133653 m!6199808))

(declare-fun m!6199810 () Bool)

(assert (=> b!5133653 m!6199810))

(declare-fun m!6199812 () Bool)

(assert (=> b!5133653 m!6199812))

(declare-fun m!6199814 () Bool)

(assert (=> b!5133653 m!6199814))

(declare-fun m!6199816 () Bool)

(assert (=> b!5133653 m!6199816))

(declare-fun m!6199818 () Bool)

(assert (=> b!5133653 m!6199818))

(declare-fun m!6199820 () Bool)

(assert (=> b!5133653 m!6199820))

(declare-fun m!6199822 () Bool)

(assert (=> b!5133653 m!6199822))

(push 1)

(assert (not start!543166))

(assert tp_is_empty!37929)

(assert (not b!5133651))

(assert (not b!5133653))

(assert (not b!5133650))

(assert (not b!5133652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

