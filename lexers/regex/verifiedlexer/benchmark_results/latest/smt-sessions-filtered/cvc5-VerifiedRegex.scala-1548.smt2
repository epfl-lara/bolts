; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80908 () Bool)

(assert start!80908)

(declare-fun b!898610 () Bool)

(assert (=> b!898610 true))

(assert (=> b!898610 true))

(assert (=> b!898610 true))

(declare-fun lambda!27992 () Int)

(declare-fun lambda!27991 () Int)

(assert (=> b!898610 (not (= lambda!27992 lambda!27991))))

(assert (=> b!898610 true))

(assert (=> b!898610 true))

(assert (=> b!898610 true))

(declare-fun e!587849 () Bool)

(declare-fun e!587848 () Bool)

(assert (=> b!898610 (= e!587849 e!587848)))

(declare-fun res!408583 () Bool)

(assert (=> b!898610 (=> res!408583 e!587848)))

(declare-datatypes ((C!5278 0))(
  ( (C!5279 (val!2887 Int)) )
))
(declare-datatypes ((List!9584 0))(
  ( (Nil!9568) (Cons!9568 (h!14969 C!5278) (t!100630 List!9584)) )
))
(declare-fun s!10566 () List!9584)

(declare-fun isEmpty!5765 (List!9584) Bool)

(assert (=> b!898610 (= res!408583 (isEmpty!5765 s!10566))))

(declare-fun Exists!131 (Int) Bool)

(assert (=> b!898610 (= (Exists!131 lambda!27991) (Exists!131 lambda!27992))))

(declare-datatypes ((Unit!14287 0))(
  ( (Unit!14288) )
))
(declare-fun lt!333923 () Unit!14287)

(declare-datatypes ((Regex!2354 0))(
  ( (ElementMatch!2354 (c!145477 C!5278)) (Concat!4187 (regOne!5220 Regex!2354) (regTwo!5220 Regex!2354)) (EmptyExpr!2354) (Star!2354 (reg!2683 Regex!2354)) (EmptyLang!2354) (Union!2354 (regOne!5221 Regex!2354) (regTwo!5221 Regex!2354)) )
))
(declare-fun r!15766 () Regex!2354)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!23 (Regex!2354 List!9584) Unit!14287)

(assert (=> b!898610 (= lt!333923 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!23 (reg!2683 r!15766) s!10566))))

(declare-fun lt!333927 () Bool)

(assert (=> b!898610 (= lt!333927 (Exists!131 lambda!27991))))

(declare-datatypes ((tuple2!10710 0))(
  ( (tuple2!10711 (_1!6181 List!9584) (_2!6181 List!9584)) )
))
(declare-datatypes ((Option!1997 0))(
  ( (None!1996) (Some!1996 (v!19413 tuple2!10710)) )
))
(declare-fun lt!333929 () Option!1997)

(declare-fun isDefined!1639 (Option!1997) Bool)

(assert (=> b!898610 (= lt!333927 (isDefined!1639 lt!333929))))

(declare-fun lt!333931 () Regex!2354)

(declare-fun findConcatSeparation!103 (Regex!2354 Regex!2354 List!9584 List!9584 List!9584) Option!1997)

(assert (=> b!898610 (= lt!333929 (findConcatSeparation!103 (reg!2683 r!15766) lt!333931 Nil!9568 s!10566 s!10566))))

(declare-fun lt!333922 () Unit!14287)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!103 (Regex!2354 Regex!2354 List!9584) Unit!14287)

(assert (=> b!898610 (= lt!333922 (lemmaFindConcatSeparationEquivalentToExists!103 (reg!2683 r!15766) lt!333931 s!10566))))

(assert (=> b!898610 (= lt!333931 (Star!2354 (reg!2683 r!15766)))))

(declare-fun b!898611 () Bool)

(declare-fun e!587847 () Bool)

(declare-fun tp!282174 () Bool)

(assert (=> b!898611 (= e!587847 tp!282174)))

(declare-fun b!898612 () Bool)

(declare-fun tp_is_empty!4351 () Bool)

(assert (=> b!898612 (= e!587847 tp_is_empty!4351)))

(declare-fun b!898613 () Bool)

(declare-fun e!587846 () Bool)

(assert (=> b!898613 (= e!587848 e!587846)))

(declare-fun res!408590 () Bool)

(assert (=> b!898613 (=> res!408590 e!587846)))

(declare-fun lt!333925 () tuple2!10710)

(declare-fun matchR!892 (Regex!2354 List!9584) Bool)

(assert (=> b!898613 (= res!408590 (not (matchR!892 (reg!2683 r!15766) (_1!6181 lt!333925))))))

(declare-fun get!3030 (Option!1997) tuple2!10710)

(assert (=> b!898613 (= lt!333925 (get!3030 lt!333929))))

(declare-fun b!898614 () Bool)

(declare-fun res!408586 () Bool)

(assert (=> b!898614 (=> res!408586 e!587846)))

(assert (=> b!898614 (= res!408586 (not (matchR!892 lt!333931 (_2!6181 lt!333925))))))

(declare-fun b!898616 () Bool)

(declare-fun res!408585 () Bool)

(declare-fun e!587850 () Bool)

(assert (=> b!898616 (=> res!408585 e!587850)))

(declare-fun ++!2498 (List!9584 List!9584) List!9584)

(assert (=> b!898616 (= res!408585 (not (= (++!2498 (_1!6181 lt!333925) (_2!6181 lt!333925)) s!10566)))))

(declare-fun b!898617 () Bool)

(declare-fun e!587845 () Bool)

(declare-fun tp!282175 () Bool)

(assert (=> b!898617 (= e!587845 (and tp_is_empty!4351 tp!282175))))

(declare-fun b!898618 () Bool)

(declare-fun res!408584 () Bool)

(assert (=> b!898618 (=> res!408584 e!587848)))

(assert (=> b!898618 (= res!408584 (not lt!333927))))

(declare-fun b!898619 () Bool)

(declare-fun tp!282177 () Bool)

(declare-fun tp!282176 () Bool)

(assert (=> b!898619 (= e!587847 (and tp!282177 tp!282176))))

(declare-fun b!898620 () Bool)

(assert (=> b!898620 (= e!587850 true)))

(declare-fun lt!333928 () Int)

(declare-fun size!7859 (List!9584) Int)

(assert (=> b!898620 (= lt!333928 (size!7859 (_1!6181 lt!333925)))))

(declare-fun res!408589 () Bool)

(declare-fun e!587844 () Bool)

(assert (=> start!80908 (=> (not res!408589) (not e!587844))))

(declare-fun validRegex!823 (Regex!2354) Bool)

(assert (=> start!80908 (= res!408589 (validRegex!823 r!15766))))

(assert (=> start!80908 e!587844))

(assert (=> start!80908 e!587847))

(assert (=> start!80908 e!587845))

(declare-fun b!898615 () Bool)

(declare-fun tp!282178 () Bool)

(declare-fun tp!282173 () Bool)

(assert (=> b!898615 (= e!587847 (and tp!282178 tp!282173))))

(declare-fun b!898621 () Bool)

(assert (=> b!898621 (= e!587846 e!587850)))

(declare-fun res!408588 () Bool)

(assert (=> b!898621 (=> res!408588 e!587850)))

(assert (=> b!898621 (= res!408588 (not (= (size!7859 (_2!6181 lt!333925)) (size!7859 s!10566))))))

(declare-fun removeUselessConcat!67 (Regex!2354) Regex!2354)

(assert (=> b!898621 (matchR!892 (removeUselessConcat!67 (reg!2683 r!15766)) (_1!6181 lt!333925))))

(declare-fun lt!333930 () Unit!14287)

(declare-fun lemmaRemoveUselessConcatSound!59 (Regex!2354 List!9584) Unit!14287)

(assert (=> b!898621 (= lt!333930 (lemmaRemoveUselessConcatSound!59 (reg!2683 r!15766) (_1!6181 lt!333925)))))

(declare-fun b!898622 () Bool)

(assert (=> b!898622 (= e!587844 (not e!587849))))

(declare-fun res!408587 () Bool)

(assert (=> b!898622 (=> res!408587 e!587849)))

(declare-fun lt!333924 () Bool)

(assert (=> b!898622 (= res!408587 (or (not lt!333924) (and (is-Concat!4187 r!15766) (is-EmptyExpr!2354 (regOne!5220 r!15766))) (and (is-Concat!4187 r!15766) (is-EmptyExpr!2354 (regTwo!5220 r!15766))) (is-Concat!4187 r!15766) (is-Union!2354 r!15766) (not (is-Star!2354 r!15766))))))

(declare-fun matchRSpec!155 (Regex!2354 List!9584) Bool)

(assert (=> b!898622 (= lt!333924 (matchRSpec!155 r!15766 s!10566))))

(assert (=> b!898622 (= lt!333924 (matchR!892 r!15766 s!10566))))

(declare-fun lt!333926 () Unit!14287)

(declare-fun mainMatchTheorem!155 (Regex!2354 List!9584) Unit!14287)

(assert (=> b!898622 (= lt!333926 (mainMatchTheorem!155 r!15766 s!10566))))

(assert (= (and start!80908 res!408589) b!898622))

(assert (= (and b!898622 (not res!408587)) b!898610))

(assert (= (and b!898610 (not res!408583)) b!898618))

(assert (= (and b!898618 (not res!408584)) b!898613))

(assert (= (and b!898613 (not res!408590)) b!898614))

(assert (= (and b!898614 (not res!408586)) b!898621))

(assert (= (and b!898621 (not res!408588)) b!898616))

(assert (= (and b!898616 (not res!408585)) b!898620))

(assert (= (and start!80908 (is-ElementMatch!2354 r!15766)) b!898612))

(assert (= (and start!80908 (is-Concat!4187 r!15766)) b!898615))

(assert (= (and start!80908 (is-Star!2354 r!15766)) b!898611))

(assert (= (and start!80908 (is-Union!2354 r!15766)) b!898619))

(assert (= (and start!80908 (is-Cons!9568 s!10566)) b!898617))

(declare-fun m!1137209 () Bool)

(assert (=> b!898616 m!1137209))

(declare-fun m!1137211 () Bool)

(assert (=> b!898621 m!1137211))

(declare-fun m!1137213 () Bool)

(assert (=> b!898621 m!1137213))

(declare-fun m!1137215 () Bool)

(assert (=> b!898621 m!1137215))

(assert (=> b!898621 m!1137213))

(declare-fun m!1137217 () Bool)

(assert (=> b!898621 m!1137217))

(declare-fun m!1137219 () Bool)

(assert (=> b!898621 m!1137219))

(declare-fun m!1137221 () Bool)

(assert (=> b!898620 m!1137221))

(declare-fun m!1137223 () Bool)

(assert (=> b!898613 m!1137223))

(declare-fun m!1137225 () Bool)

(assert (=> b!898613 m!1137225))

(declare-fun m!1137227 () Bool)

(assert (=> b!898614 m!1137227))

(declare-fun m!1137229 () Bool)

(assert (=> b!898622 m!1137229))

(declare-fun m!1137231 () Bool)

(assert (=> b!898622 m!1137231))

(declare-fun m!1137233 () Bool)

(assert (=> b!898622 m!1137233))

(declare-fun m!1137235 () Bool)

(assert (=> start!80908 m!1137235))

(declare-fun m!1137237 () Bool)

(assert (=> b!898610 m!1137237))

(declare-fun m!1137239 () Bool)

(assert (=> b!898610 m!1137239))

(declare-fun m!1137241 () Bool)

(assert (=> b!898610 m!1137241))

(declare-fun m!1137243 () Bool)

(assert (=> b!898610 m!1137243))

(declare-fun m!1137245 () Bool)

(assert (=> b!898610 m!1137245))

(declare-fun m!1137247 () Bool)

(assert (=> b!898610 m!1137247))

(assert (=> b!898610 m!1137241))

(declare-fun m!1137249 () Bool)

(assert (=> b!898610 m!1137249))

(push 1)

(assert (not b!898610))

(assert (not b!898621))

(assert (not b!898616))

(assert (not b!898613))

(assert (not b!898617))

(assert (not start!80908))

(assert (not b!898611))

(assert tp_is_empty!4351)

(assert (not b!898619))

(assert (not b!898614))

(assert (not b!898615))

(assert (not b!898620))

(assert (not b!898622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

