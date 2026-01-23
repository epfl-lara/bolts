; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544122 () Bool)

(assert start!544122)

(declare-fun b!5138696 () Bool)

(declare-fun e!3205181 () Bool)

(assert (=> b!5138696 (= e!3205181 true)))

(declare-datatypes ((C!29134 0))(
  ( (C!29135 (val!24219 Int)) )
))
(declare-datatypes ((Regex!14434 0))(
  ( (ElementMatch!14434 (c!884870 C!29134)) (Concat!23279 (regOne!29380 Regex!14434) (regTwo!29380 Regex!14434)) (EmptyExpr!14434) (Star!14434 (reg!14763 Regex!14434)) (EmptyLang!14434) (Union!14434 (regOne!29381 Regex!14434) (regTwo!29381 Regex!14434)) )
))
(declare-datatypes ((List!59804 0))(
  ( (Nil!59680) (Cons!59680 (h!66128 Regex!14434) (t!372835 List!59804)) )
))
(declare-datatypes ((Context!7636 0))(
  ( (Context!7637 (exprs!4318 List!59804)) )
))
(declare-fun lt!2120055 () (Set Context!7636))

(declare-fun lt!2120059 () (Set Context!7636))

(declare-fun lambda!256309 () Int)

(declare-fun forall!13904 ((Set Context!7636) Int) Bool)

(assert (=> b!5138696 (forall!13904 (set.union lt!2120055 lt!2120059) lambda!256309)))

(declare-datatypes ((Unit!151055 0))(
  ( (Unit!151056) )
))
(declare-fun lt!2120057 () Unit!151055)

(declare-fun lemmaConcatPreservesForall!133 ((Set Context!7636) (Set Context!7636) Int) Unit!151055)

(assert (=> b!5138696 (= lt!2120057 (lemmaConcatPreservesForall!133 lt!2120055 lt!2120059 lambda!256309))))

(declare-fun b!5138697 () Bool)

(declare-fun res!2188564 () Bool)

(assert (=> b!5138697 (=> res!2188564 e!3205181)))

(assert (=> b!5138697 (= res!2188564 (not (forall!13904 lt!2120059 lambda!256309)))))

(declare-fun res!2188559 () Bool)

(declare-fun e!3205178 () Bool)

(assert (=> start!544122 (=> (not res!2188559) (not e!3205178))))

(declare-fun expr!117 () Regex!14434)

(declare-fun validRegex!6289 (Regex!14434) Bool)

(assert (=> start!544122 (= res!2188559 (validRegex!6289 expr!117))))

(assert (=> start!544122 e!3205178))

(declare-fun e!3205179 () Bool)

(assert (=> start!544122 e!3205179))

(declare-fun ctx!100 () Context!7636)

(declare-fun e!3205182 () Bool)

(declare-fun inv!79267 (Context!7636) Bool)

(assert (=> start!544122 (and (inv!79267 ctx!100) e!3205182)))

(declare-fun tp_is_empty!38017 () Bool)

(assert (=> start!544122 tp_is_empty!38017))

(declare-fun b!5138698 () Bool)

(declare-fun tp!1433222 () Bool)

(assert (=> b!5138698 (= e!3205182 tp!1433222)))

(declare-fun b!5138699 () Bool)

(declare-fun tp!1433221 () Bool)

(assert (=> b!5138699 (= e!3205179 tp!1433221)))

(declare-fun b!5138700 () Bool)

(declare-fun res!2188562 () Bool)

(assert (=> b!5138700 (=> (not res!2188562) (not e!3205178))))

(declare-fun e!3205180 () Bool)

(assert (=> b!5138700 (= res!2188562 e!3205180)))

(declare-fun res!2188560 () Bool)

(assert (=> b!5138700 (=> res!2188560 e!3205180)))

(declare-fun lostCause!1420 (Regex!14434) Bool)

(assert (=> b!5138700 (= res!2188560 (lostCause!1420 expr!117))))

(declare-fun b!5138701 () Bool)

(assert (=> b!5138701 (= e!3205178 (not e!3205181))))

(declare-fun res!2188563 () Bool)

(assert (=> b!5138701 (=> res!2188563 e!3205181)))

(assert (=> b!5138701 (= res!2188563 (not (forall!13904 lt!2120055 lambda!256309)))))

(declare-fun lostCauseZipper!1250 ((Set Context!7636)) Bool)

(assert (=> b!5138701 (lostCauseZipper!1250 lt!2120059)))

(declare-fun a!1296 () C!29134)

(declare-fun derivationStepZipperDown!131 (Regex!14434 Context!7636 C!29134) (Set Context!7636))

(assert (=> b!5138701 (= lt!2120059 (derivationStepZipperDown!131 (regTwo!29381 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120058 () Unit!151055)

(declare-fun lemmaLostCauseFixPointDerivDown!23 (Regex!14434 Context!7636 C!29134) Unit!151055)

(assert (=> b!5138701 (= lt!2120058 (lemmaLostCauseFixPointDerivDown!23 (regTwo!29381 expr!117) ctx!100 a!1296))))

(assert (=> b!5138701 (lostCauseZipper!1250 lt!2120055)))

(assert (=> b!5138701 (= lt!2120055 (derivationStepZipperDown!131 (regOne!29381 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120056 () Unit!151055)

(assert (=> b!5138701 (= lt!2120056 (lemmaLostCauseFixPointDerivDown!23 (regOne!29381 expr!117) ctx!100 a!1296))))

(declare-fun b!5138702 () Bool)

(declare-fun lostCause!1421 (Context!7636) Bool)

(assert (=> b!5138702 (= e!3205180 (lostCause!1421 ctx!100))))

(declare-fun b!5138703 () Bool)

(declare-fun tp!1433223 () Bool)

(declare-fun tp!1433225 () Bool)

(assert (=> b!5138703 (= e!3205179 (and tp!1433223 tp!1433225))))

(declare-fun b!5138704 () Bool)

(assert (=> b!5138704 (= e!3205179 tp_is_empty!38017)))

(declare-fun b!5138705 () Bool)

(declare-fun tp!1433220 () Bool)

(declare-fun tp!1433224 () Bool)

(assert (=> b!5138705 (= e!3205179 (and tp!1433220 tp!1433224))))

(declare-fun b!5138706 () Bool)

(declare-fun res!2188561 () Bool)

(assert (=> b!5138706 (=> (not res!2188561) (not e!3205178))))

(assert (=> b!5138706 (= res!2188561 (and (or (not (is-ElementMatch!14434 expr!117)) (not (= (c!884870 expr!117) a!1296))) (is-Union!14434 expr!117)))))

(assert (= (and start!544122 res!2188559) b!5138700))

(assert (= (and b!5138700 (not res!2188560)) b!5138702))

(assert (= (and b!5138700 res!2188562) b!5138706))

(assert (= (and b!5138706 res!2188561) b!5138701))

(assert (= (and b!5138701 (not res!2188563)) b!5138697))

(assert (= (and b!5138697 (not res!2188564)) b!5138696))

(assert (= (and start!544122 (is-ElementMatch!14434 expr!117)) b!5138704))

(assert (= (and start!544122 (is-Concat!23279 expr!117)) b!5138705))

(assert (= (and start!544122 (is-Star!14434 expr!117)) b!5138699))

(assert (= (and start!544122 (is-Union!14434 expr!117)) b!5138703))

(assert (= start!544122 b!5138698))

(declare-fun m!6203444 () Bool)

(assert (=> b!5138700 m!6203444))

(declare-fun m!6203446 () Bool)

(assert (=> start!544122 m!6203446))

(declare-fun m!6203448 () Bool)

(assert (=> start!544122 m!6203448))

(declare-fun m!6203450 () Bool)

(assert (=> b!5138702 m!6203450))

(declare-fun m!6203452 () Bool)

(assert (=> b!5138697 m!6203452))

(declare-fun m!6203454 () Bool)

(assert (=> b!5138696 m!6203454))

(declare-fun m!6203456 () Bool)

(assert (=> b!5138696 m!6203456))

(declare-fun m!6203458 () Bool)

(assert (=> b!5138701 m!6203458))

(declare-fun m!6203460 () Bool)

(assert (=> b!5138701 m!6203460))

(declare-fun m!6203462 () Bool)

(assert (=> b!5138701 m!6203462))

(declare-fun m!6203464 () Bool)

(assert (=> b!5138701 m!6203464))

(declare-fun m!6203466 () Bool)

(assert (=> b!5138701 m!6203466))

(declare-fun m!6203468 () Bool)

(assert (=> b!5138701 m!6203468))

(declare-fun m!6203470 () Bool)

(assert (=> b!5138701 m!6203470))

(push 1)

(assert (not b!5138699))

(assert (not start!544122))

(assert (not b!5138701))

(assert (not b!5138696))

(assert (not b!5138703))

(assert (not b!5138702))

(assert tp_is_empty!38017)

(assert (not b!5138705))

(assert (not b!5138700))

(assert (not b!5138698))

(assert (not b!5138697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

