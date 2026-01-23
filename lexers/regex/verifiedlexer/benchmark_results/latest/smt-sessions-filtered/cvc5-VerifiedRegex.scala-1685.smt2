; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84956 () Bool)

(assert start!84956)

(declare-fun b!953437 () Bool)

(assert (=> b!953437 true))

(assert (=> b!953437 true))

(declare-fun lambda!32868 () Int)

(declare-fun lambda!32867 () Int)

(assert (=> b!953437 (not (= lambda!32868 lambda!32867))))

(assert (=> b!953437 true))

(assert (=> b!953437 true))

(declare-fun b!953430 () Bool)

(declare-fun e!616852 () Bool)

(declare-fun e!616850 () Bool)

(assert (=> b!953430 (= e!616852 e!616850)))

(declare-fun res!433257 () Bool)

(assert (=> b!953430 (=> res!433257 e!616850)))

(declare-datatypes ((C!5826 0))(
  ( (C!5827 (val!3161 Int)) )
))
(declare-datatypes ((Regex!2628 0))(
  ( (ElementMatch!2628 (c!155245 C!5826)) (Concat!4461 (regOne!5768 Regex!2628) (regTwo!5768 Regex!2628)) (EmptyExpr!2628) (Star!2628 (reg!2957 Regex!2628)) (EmptyLang!2628) (Union!2628 (regOne!5769 Regex!2628) (regTwo!5769 Regex!2628)) )
))
(declare-fun r!15766 () Regex!2628)

(declare-datatypes ((List!9858 0))(
  ( (Nil!9842) (Cons!9842 (h!15243 C!5826) (t!100904 List!9858)) )
))
(declare-datatypes ((tuple2!11150 0))(
  ( (tuple2!11151 (_1!6401 List!9858) (_2!6401 List!9858)) )
))
(declare-fun lt!344937 () tuple2!11150)

(declare-fun matchR!1166 (Regex!2628 List!9858) Bool)

(assert (=> b!953430 (= res!433257 (not (matchR!1166 (regOne!5768 r!15766) (_1!6401 lt!344937))))))

(declare-datatypes ((Option!2217 0))(
  ( (None!2216) (Some!2216 (v!19633 tuple2!11150)) )
))
(declare-fun lt!344935 () Option!2217)

(declare-fun get!3320 (Option!2217) tuple2!11150)

(assert (=> b!953430 (= lt!344937 (get!3320 lt!344935))))

(declare-fun b!953431 () Bool)

(declare-fun e!616853 () Bool)

(declare-fun tp_is_empty!4899 () Bool)

(declare-fun tp!293768 () Bool)

(assert (=> b!953431 (= e!616853 (and tp_is_empty!4899 tp!293768))))

(declare-fun b!953432 () Bool)

(declare-fun e!616848 () Bool)

(assert (=> b!953432 (= e!616848 tp_is_empty!4899)))

(declare-fun b!953433 () Bool)

(declare-fun res!433259 () Bool)

(assert (=> b!953433 (=> res!433259 e!616850)))

(assert (=> b!953433 (= res!433259 (not (matchR!1166 (regTwo!5768 r!15766) (_2!6401 lt!344937))))))

(declare-fun b!953434 () Bool)

(declare-fun tp!293765 () Bool)

(declare-fun tp!293767 () Bool)

(assert (=> b!953434 (= e!616848 (and tp!293765 tp!293767))))

(declare-fun b!953435 () Bool)

(assert (=> b!953435 (= e!616850 true)))

(declare-fun removeUselessConcat!285 (Regex!2628) Regex!2628)

(assert (=> b!953435 (matchR!1166 (removeUselessConcat!285 (regTwo!5768 r!15766)) (_2!6401 lt!344937))))

(declare-datatypes ((Unit!14899 0))(
  ( (Unit!14900) )
))
(declare-fun lt!344934 () Unit!14899)

(declare-fun lemmaRemoveUselessConcatSound!145 (Regex!2628 List!9858) Unit!14899)

(assert (=> b!953435 (= lt!344934 (lemmaRemoveUselessConcatSound!145 (regTwo!5768 r!15766) (_2!6401 lt!344937)))))

(assert (=> b!953435 (matchR!1166 (removeUselessConcat!285 (regOne!5768 r!15766)) (_1!6401 lt!344937))))

(declare-fun lt!344938 () Unit!14899)

(assert (=> b!953435 (= lt!344938 (lemmaRemoveUselessConcatSound!145 (regOne!5768 r!15766) (_1!6401 lt!344937)))))

(declare-fun b!953436 () Bool)

(declare-fun tp!293769 () Bool)

(declare-fun tp!293770 () Bool)

(assert (=> b!953436 (= e!616848 (and tp!293769 tp!293770))))

(declare-fun res!433255 () Bool)

(declare-fun e!616851 () Bool)

(assert (=> start!84956 (=> (not res!433255) (not e!616851))))

(declare-fun validRegex!1097 (Regex!2628) Bool)

(assert (=> start!84956 (= res!433255 (validRegex!1097 r!15766))))

(assert (=> start!84956 e!616851))

(assert (=> start!84956 e!616848))

(assert (=> start!84956 e!616853))

(declare-fun e!616849 () Bool)

(assert (=> b!953437 (= e!616849 e!616852)))

(declare-fun res!433258 () Bool)

(assert (=> b!953437 (=> res!433258 e!616852)))

(declare-fun s!10566 () List!9858)

(declare-fun isEmpty!6119 (List!9858) Bool)

(assert (=> b!953437 (= res!433258 (isEmpty!6119 s!10566))))

(declare-fun Exists!379 (Int) Bool)

(assert (=> b!953437 (= (Exists!379 lambda!32867) (Exists!379 lambda!32868))))

(declare-fun lt!344939 () Unit!14899)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!199 (Regex!2628 Regex!2628 List!9858) Unit!14899)

(assert (=> b!953437 (= lt!344939 (lemmaExistCutMatchRandMatchRSpecEquivalent!199 (regOne!5768 r!15766) (regTwo!5768 r!15766) s!10566))))

(declare-fun isDefined!1859 (Option!2217) Bool)

(assert (=> b!953437 (= (isDefined!1859 lt!344935) (Exists!379 lambda!32867))))

(declare-fun findConcatSeparation!323 (Regex!2628 Regex!2628 List!9858 List!9858 List!9858) Option!2217)

(assert (=> b!953437 (= lt!344935 (findConcatSeparation!323 (regOne!5768 r!15766) (regTwo!5768 r!15766) Nil!9842 s!10566 s!10566))))

(declare-fun lt!344941 () Unit!14899)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!323 (Regex!2628 Regex!2628 List!9858) Unit!14899)

(assert (=> b!953437 (= lt!344941 (lemmaFindConcatSeparationEquivalentToExists!323 (regOne!5768 r!15766) (regTwo!5768 r!15766) s!10566))))

(declare-fun b!953438 () Bool)

(declare-fun tp!293766 () Bool)

(assert (=> b!953438 (= e!616848 tp!293766)))

(declare-fun b!953439 () Bool)

(assert (=> b!953439 (= e!616851 (not e!616849))))

(declare-fun res!433256 () Bool)

(assert (=> b!953439 (=> res!433256 e!616849)))

(declare-fun lt!344936 () Bool)

(assert (=> b!953439 (= res!433256 (or (not lt!344936) (and (is-Concat!4461 r!15766) (is-EmptyExpr!2628 (regOne!5768 r!15766))) (and (is-Concat!4461 r!15766) (is-EmptyExpr!2628 (regTwo!5768 r!15766))) (not (is-Concat!4461 r!15766))))))

(declare-fun matchRSpec!429 (Regex!2628 List!9858) Bool)

(assert (=> b!953439 (= lt!344936 (matchRSpec!429 r!15766 s!10566))))

(assert (=> b!953439 (= lt!344936 (matchR!1166 r!15766 s!10566))))

(declare-fun lt!344940 () Unit!14899)

(declare-fun mainMatchTheorem!429 (Regex!2628 List!9858) Unit!14899)

(assert (=> b!953439 (= lt!344940 (mainMatchTheorem!429 r!15766 s!10566))))

(assert (= (and start!84956 res!433255) b!953439))

(assert (= (and b!953439 (not res!433256)) b!953437))

(assert (= (and b!953437 (not res!433258)) b!953430))

(assert (= (and b!953430 (not res!433257)) b!953433))

(assert (= (and b!953433 (not res!433259)) b!953435))

(assert (= (and start!84956 (is-ElementMatch!2628 r!15766)) b!953432))

(assert (= (and start!84956 (is-Concat!4461 r!15766)) b!953436))

(assert (= (and start!84956 (is-Star!2628 r!15766)) b!953438))

(assert (= (and start!84956 (is-Union!2628 r!15766)) b!953434))

(assert (= (and start!84956 (is-Cons!9842 s!10566)) b!953431))

(declare-fun m!1165057 () Bool)

(assert (=> b!953435 m!1165057))

(declare-fun m!1165059 () Bool)

(assert (=> b!953435 m!1165059))

(declare-fun m!1165061 () Bool)

(assert (=> b!953435 m!1165061))

(declare-fun m!1165063 () Bool)

(assert (=> b!953435 m!1165063))

(declare-fun m!1165065 () Bool)

(assert (=> b!953435 m!1165065))

(assert (=> b!953435 m!1165063))

(declare-fun m!1165067 () Bool)

(assert (=> b!953435 m!1165067))

(assert (=> b!953435 m!1165057))

(declare-fun m!1165069 () Bool)

(assert (=> b!953439 m!1165069))

(declare-fun m!1165071 () Bool)

(assert (=> b!953439 m!1165071))

(declare-fun m!1165073 () Bool)

(assert (=> b!953439 m!1165073))

(declare-fun m!1165075 () Bool)

(assert (=> b!953430 m!1165075))

(declare-fun m!1165077 () Bool)

(assert (=> b!953430 m!1165077))

(declare-fun m!1165079 () Bool)

(assert (=> b!953437 m!1165079))

(declare-fun m!1165081 () Bool)

(assert (=> b!953437 m!1165081))

(declare-fun m!1165083 () Bool)

(assert (=> b!953437 m!1165083))

(declare-fun m!1165085 () Bool)

(assert (=> b!953437 m!1165085))

(declare-fun m!1165087 () Bool)

(assert (=> b!953437 m!1165087))

(declare-fun m!1165089 () Bool)

(assert (=> b!953437 m!1165089))

(assert (=> b!953437 m!1165079))

(declare-fun m!1165091 () Bool)

(assert (=> b!953437 m!1165091))

(declare-fun m!1165093 () Bool)

(assert (=> start!84956 m!1165093))

(declare-fun m!1165095 () Bool)

(assert (=> b!953433 m!1165095))

(push 1)

(assert (not start!84956))

(assert tp_is_empty!4899)

(assert (not b!953431))

(assert (not b!953430))

(assert (not b!953439))

(assert (not b!953438))

(assert (not b!953434))

(assert (not b!953437))

(assert (not b!953435))

(assert (not b!953433))

(assert (not b!953436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

