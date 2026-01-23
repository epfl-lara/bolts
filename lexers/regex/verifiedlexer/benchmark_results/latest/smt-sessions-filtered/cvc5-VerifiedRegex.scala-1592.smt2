; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82056 () Bool)

(assert start!82056)

(declare-fun b!912643 () Bool)

(assert (=> b!912643 true))

(assert (=> b!912643 true))

(declare-fun lambda!29184 () Int)

(declare-fun lambda!29183 () Int)

(assert (=> b!912643 (not (= lambda!29184 lambda!29183))))

(assert (=> b!912643 true))

(assert (=> b!912643 true))

(declare-fun b!912642 () Bool)

(declare-fun e!595149 () Bool)

(declare-fun tp!285278 () Bool)

(declare-fun tp!285277 () Bool)

(assert (=> b!912642 (= e!595149 (and tp!285278 tp!285277))))

(declare-fun e!595146 () Bool)

(assert (=> b!912643 (= e!595146 true)))

(declare-fun Exists!213 (Int) Bool)

(assert (=> b!912643 (= (Exists!213 lambda!29183) (Exists!213 lambda!29184))))

(declare-datatypes ((Unit!14503 0))(
  ( (Unit!14504) )
))
(declare-fun lt!337019 () Unit!14503)

(declare-datatypes ((C!5454 0))(
  ( (C!5455 (val!2975 Int)) )
))
(declare-datatypes ((Regex!2442 0))(
  ( (ElementMatch!2442 (c!147837 C!5454)) (Concat!4275 (regOne!5396 Regex!2442) (regTwo!5396 Regex!2442)) (EmptyExpr!2442) (Star!2442 (reg!2771 Regex!2442)) (EmptyLang!2442) (Union!2442 (regOne!5397 Regex!2442) (regTwo!5397 Regex!2442)) )
))
(declare-fun r!15766 () Regex!2442)

(declare-datatypes ((List!9672 0))(
  ( (Nil!9656) (Cons!9656 (h!15057 C!5454) (t!100718 List!9672)) )
))
(declare-fun s!10566 () List!9672)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!125 (Regex!2442 Regex!2442 List!9672) Unit!14503)

(assert (=> b!912643 (= lt!337019 (lemmaExistCutMatchRandMatchRSpecEquivalent!125 (regOne!5396 r!15766) (regTwo!5396 r!15766) s!10566))))

(declare-datatypes ((tuple2!10870 0))(
  ( (tuple2!10871 (_1!6261 List!9672) (_2!6261 List!9672)) )
))
(declare-datatypes ((Option!2077 0))(
  ( (None!2076) (Some!2076 (v!19493 tuple2!10870)) )
))
(declare-fun isDefined!1719 (Option!2077) Bool)

(declare-fun findConcatSeparation!183 (Regex!2442 Regex!2442 List!9672 List!9672 List!9672) Option!2077)

(assert (=> b!912643 (= (isDefined!1719 (findConcatSeparation!183 (regOne!5396 r!15766) (regTwo!5396 r!15766) Nil!9656 s!10566 s!10566)) (Exists!213 lambda!29183))))

(declare-fun lt!337018 () Unit!14503)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!183 (Regex!2442 Regex!2442 List!9672) Unit!14503)

(assert (=> b!912643 (= lt!337018 (lemmaFindConcatSeparationEquivalentToExists!183 (regOne!5396 r!15766) (regTwo!5396 r!15766) s!10566))))

(declare-fun b!912644 () Bool)

(declare-fun tp!285281 () Bool)

(declare-fun tp!285282 () Bool)

(assert (=> b!912644 (= e!595149 (and tp!285281 tp!285282))))

(declare-fun b!912645 () Bool)

(declare-fun e!595147 () Bool)

(assert (=> b!912645 (= e!595147 (not e!595146))))

(declare-fun res!415024 () Bool)

(assert (=> b!912645 (=> res!415024 e!595146)))

(declare-fun lt!337016 () Bool)

(assert (=> b!912645 (= res!415024 (or lt!337016 (and (is-Concat!4275 r!15766) (is-EmptyExpr!2442 (regOne!5396 r!15766))) (and (is-Concat!4275 r!15766) (is-EmptyExpr!2442 (regTwo!5396 r!15766))) (not (is-Concat!4275 r!15766))))))

(declare-fun matchRSpec!243 (Regex!2442 List!9672) Bool)

(assert (=> b!912645 (= lt!337016 (matchRSpec!243 r!15766 s!10566))))

(declare-fun matchR!980 (Regex!2442 List!9672) Bool)

(assert (=> b!912645 (= lt!337016 (matchR!980 r!15766 s!10566))))

(declare-fun lt!337017 () Unit!14503)

(declare-fun mainMatchTheorem!243 (Regex!2442 List!9672) Unit!14503)

(assert (=> b!912645 (= lt!337017 (mainMatchTheorem!243 r!15766 s!10566))))

(declare-fun res!415023 () Bool)

(assert (=> start!82056 (=> (not res!415023) (not e!595147))))

(declare-fun validRegex!911 (Regex!2442) Bool)

(assert (=> start!82056 (= res!415023 (validRegex!911 r!15766))))

(assert (=> start!82056 e!595147))

(assert (=> start!82056 e!595149))

(declare-fun e!595148 () Bool)

(assert (=> start!82056 e!595148))

(declare-fun b!912646 () Bool)

(declare-fun tp!285280 () Bool)

(assert (=> b!912646 (= e!595149 tp!285280)))

(declare-fun b!912647 () Bool)

(declare-fun tp_is_empty!4527 () Bool)

(assert (=> b!912647 (= e!595149 tp_is_empty!4527)))

(declare-fun b!912648 () Bool)

(declare-fun tp!285279 () Bool)

(assert (=> b!912648 (= e!595148 (and tp_is_empty!4527 tp!285279))))

(assert (= (and start!82056 res!415023) b!912645))

(assert (= (and b!912645 (not res!415024)) b!912643))

(assert (= (and start!82056 (is-ElementMatch!2442 r!15766)) b!912647))

(assert (= (and start!82056 (is-Concat!4275 r!15766)) b!912644))

(assert (= (and start!82056 (is-Star!2442 r!15766)) b!912646))

(assert (= (and start!82056 (is-Union!2442 r!15766)) b!912642))

(assert (= (and start!82056 (is-Cons!9656 s!10566)) b!912648))

(declare-fun m!1144061 () Bool)

(assert (=> b!912643 m!1144061))

(declare-fun m!1144063 () Bool)

(assert (=> b!912643 m!1144063))

(declare-fun m!1144065 () Bool)

(assert (=> b!912643 m!1144065))

(assert (=> b!912643 m!1144061))

(declare-fun m!1144067 () Bool)

(assert (=> b!912643 m!1144067))

(declare-fun m!1144069 () Bool)

(assert (=> b!912643 m!1144069))

(assert (=> b!912643 m!1144065))

(declare-fun m!1144071 () Bool)

(assert (=> b!912643 m!1144071))

(declare-fun m!1144073 () Bool)

(assert (=> b!912645 m!1144073))

(declare-fun m!1144075 () Bool)

(assert (=> b!912645 m!1144075))

(declare-fun m!1144077 () Bool)

(assert (=> b!912645 m!1144077))

(declare-fun m!1144079 () Bool)

(assert (=> start!82056 m!1144079))

(push 1)

(assert (not b!912646))

(assert (not b!912644))

(assert (not b!912643))

(assert tp_is_empty!4527)

(assert (not start!82056))

(assert (not b!912642))

(assert (not b!912648))

(assert (not b!912645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

