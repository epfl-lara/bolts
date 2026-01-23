; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83050 () Bool)

(assert start!83050)

(declare-fun b!925938 () Bool)

(assert (=> b!925938 true))

(assert (=> b!925938 true))

(declare-fun lambda!30584 () Int)

(declare-fun lambda!30583 () Int)

(assert (=> b!925938 (not (= lambda!30584 lambda!30583))))

(assert (=> b!925938 true))

(assert (=> b!925938 true))

(declare-fun bs!237545 () Bool)

(declare-fun b!925932 () Bool)

(assert (= bs!237545 (and b!925932 b!925938)))

(declare-fun lambda!30585 () Int)

(declare-datatypes ((C!5564 0))(
  ( (C!5565 (val!3030 Int)) )
))
(declare-datatypes ((Regex!2497 0))(
  ( (ElementMatch!2497 (c!150316 C!5564)) (Concat!4330 (regOne!5506 Regex!2497) (regTwo!5506 Regex!2497)) (EmptyExpr!2497) (Star!2497 (reg!2826 Regex!2497)) (EmptyLang!2497) (Union!2497 (regOne!5507 Regex!2497) (regTwo!5507 Regex!2497)) )
))
(declare-fun r!15766 () Regex!2497)

(declare-fun lt!339562 () Regex!2497)

(declare-fun lt!339570 () Regex!2497)

(assert (=> bs!237545 (= (and (= lt!339570 (regOne!5506 r!15766)) (= lt!339562 (regTwo!5506 r!15766))) (= lambda!30585 lambda!30583))))

(assert (=> bs!237545 (not (= lambda!30585 lambda!30584))))

(assert (=> b!925932 true))

(assert (=> b!925932 true))

(assert (=> b!925932 true))

(declare-fun lambda!30586 () Int)

(assert (=> bs!237545 (not (= lambda!30586 lambda!30583))))

(assert (=> bs!237545 (= (and (= lt!339570 (regOne!5506 r!15766)) (= lt!339562 (regTwo!5506 r!15766))) (= lambda!30586 lambda!30584))))

(assert (=> b!925932 (not (= lambda!30586 lambda!30585))))

(assert (=> b!925932 true))

(assert (=> b!925932 true))

(assert (=> b!925932 true))

(declare-fun e!602359 () Bool)

(declare-fun e!602357 () Bool)

(assert (=> b!925932 (= e!602359 e!602357)))

(declare-fun res!421024 () Bool)

(assert (=> b!925932 (=> res!421024 e!602357)))

(declare-fun lt!339563 () Bool)

(assert (=> b!925932 (= res!421024 (not lt!339563))))

(declare-fun Exists!268 (Int) Bool)

(assert (=> b!925932 (= (Exists!268 lambda!30585) (Exists!268 lambda!30586))))

(declare-datatypes ((Unit!14613 0))(
  ( (Unit!14614) )
))
(declare-fun lt!339564 () Unit!14613)

(declare-datatypes ((List!9727 0))(
  ( (Nil!9711) (Cons!9711 (h!15112 C!5564) (t!100773 List!9727)) )
))
(declare-fun s!10566 () List!9727)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!180 (Regex!2497 Regex!2497 List!9727) Unit!14613)

(assert (=> b!925932 (= lt!339564 (lemmaExistCutMatchRandMatchRSpecEquivalent!180 lt!339570 lt!339562 s!10566))))

(assert (=> b!925932 (= lt!339563 (Exists!268 lambda!30585))))

(declare-datatypes ((tuple2!10980 0))(
  ( (tuple2!10981 (_1!6316 List!9727) (_2!6316 List!9727)) )
))
(declare-datatypes ((Option!2132 0))(
  ( (None!2131) (Some!2131 (v!19548 tuple2!10980)) )
))
(declare-fun lt!339572 () Option!2132)

(declare-fun isDefined!1774 (Option!2132) Bool)

(assert (=> b!925932 (= lt!339563 (isDefined!1774 lt!339572))))

(declare-fun findConcatSeparation!238 (Regex!2497 Regex!2497 List!9727 List!9727 List!9727) Option!2132)

(assert (=> b!925932 (= lt!339572 (findConcatSeparation!238 lt!339570 lt!339562 Nil!9711 s!10566 s!10566))))

(declare-fun lt!339569 () Unit!14613)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!238 (Regex!2497 Regex!2497 List!9727) Unit!14613)

(assert (=> b!925932 (= lt!339569 (lemmaFindConcatSeparationEquivalentToExists!238 lt!339570 lt!339562 s!10566))))

(declare-fun lt!339565 () Regex!2497)

(declare-fun matchRSpec!298 (Regex!2497 List!9727) Bool)

(assert (=> b!925932 (matchRSpec!298 lt!339565 s!10566)))

(declare-fun lt!339575 () Unit!14613)

(declare-fun mainMatchTheorem!298 (Regex!2497 List!9727) Unit!14613)

(assert (=> b!925932 (= lt!339575 (mainMatchTheorem!298 lt!339565 s!10566))))

(declare-fun b!925933 () Bool)

(declare-fun e!602360 () Bool)

(declare-fun tp_is_empty!4637 () Bool)

(declare-fun tp!287790 () Bool)

(assert (=> b!925933 (= e!602360 (and tp_is_empty!4637 tp!287790))))

(declare-fun b!925934 () Bool)

(declare-fun e!602363 () Bool)

(declare-fun e!602362 () Bool)

(assert (=> b!925934 (= e!602363 (not e!602362))))

(declare-fun res!421022 () Bool)

(assert (=> b!925934 (=> res!421022 e!602362)))

(declare-fun lt!339561 () Bool)

(get-info :version)

(assert (=> b!925934 (= res!421022 (or lt!339561 (and ((_ is Concat!4330) r!15766) ((_ is EmptyExpr!2497) (regOne!5506 r!15766))) (and ((_ is Concat!4330) r!15766) ((_ is EmptyExpr!2497) (regTwo!5506 r!15766))) (not ((_ is Concat!4330) r!15766))))))

(assert (=> b!925934 (= lt!339561 (matchRSpec!298 r!15766 s!10566))))

(declare-fun matchR!1035 (Regex!2497 List!9727) Bool)

(assert (=> b!925934 (= lt!339561 (matchR!1035 r!15766 s!10566))))

(declare-fun lt!339567 () Unit!14613)

(assert (=> b!925934 (= lt!339567 (mainMatchTheorem!298 r!15766 s!10566))))

(declare-fun b!925935 () Bool)

(assert (=> b!925935 (= e!602357 true)))

(declare-fun lt!339568 () tuple2!10980)

(assert (=> b!925935 (= (matchR!1035 (regTwo!5506 r!15766) (_2!6316 lt!339568)) (matchR!1035 lt!339562 (_2!6316 lt!339568)))))

(declare-fun lt!339574 () Unit!14613)

(declare-fun lemmaRemoveUselessConcatSound!112 (Regex!2497 List!9727) Unit!14613)

(assert (=> b!925935 (= lt!339574 (lemmaRemoveUselessConcatSound!112 (regTwo!5506 r!15766) (_2!6316 lt!339568)))))

(assert (=> b!925935 (= (matchR!1035 (regOne!5506 r!15766) (_1!6316 lt!339568)) (matchR!1035 lt!339570 (_1!6316 lt!339568)))))

(declare-fun lt!339566 () Unit!14613)

(assert (=> b!925935 (= lt!339566 (lemmaRemoveUselessConcatSound!112 (regOne!5506 r!15766) (_1!6316 lt!339568)))))

(declare-fun get!3185 (Option!2132) tuple2!10980)

(assert (=> b!925935 (= lt!339568 (get!3185 lt!339572))))

(declare-fun b!925936 () Bool)

(declare-fun e!602361 () Bool)

(assert (=> b!925936 (= e!602361 tp_is_empty!4637)))

(declare-fun b!925937 () Bool)

(declare-fun e!602358 () Bool)

(assert (=> b!925937 (= e!602358 e!602359)))

(declare-fun res!421021 () Bool)

(assert (=> b!925937 (=> res!421021 e!602359)))

(assert (=> b!925937 (= res!421021 (not (matchR!1035 lt!339565 s!10566)))))

(assert (=> b!925937 (= lt!339565 (Concat!4330 lt!339570 lt!339562))))

(declare-fun removeUselessConcat!174 (Regex!2497) Regex!2497)

(assert (=> b!925937 (= lt!339562 (removeUselessConcat!174 (regTwo!5506 r!15766)))))

(assert (=> b!925937 (= lt!339570 (removeUselessConcat!174 (regOne!5506 r!15766)))))

(declare-fun res!421020 () Bool)

(assert (=> start!83050 (=> (not res!421020) (not e!602363))))

(declare-fun validRegex!966 (Regex!2497) Bool)

(assert (=> start!83050 (= res!421020 (validRegex!966 r!15766))))

(assert (=> start!83050 e!602363))

(assert (=> start!83050 e!602361))

(assert (=> start!83050 e!602360))

(assert (=> b!925938 (= e!602362 e!602358)))

(declare-fun res!421023 () Bool)

(assert (=> b!925938 (=> res!421023 e!602358)))

(declare-fun isEmpty!5968 (List!9727) Bool)

(assert (=> b!925938 (= res!421023 (isEmpty!5968 s!10566))))

(assert (=> b!925938 (= (Exists!268 lambda!30583) (Exists!268 lambda!30584))))

(declare-fun lt!339573 () Unit!14613)

(assert (=> b!925938 (= lt!339573 (lemmaExistCutMatchRandMatchRSpecEquivalent!180 (regOne!5506 r!15766) (regTwo!5506 r!15766) s!10566))))

(assert (=> b!925938 (= (isDefined!1774 (findConcatSeparation!238 (regOne!5506 r!15766) (regTwo!5506 r!15766) Nil!9711 s!10566 s!10566)) (Exists!268 lambda!30583))))

(declare-fun lt!339571 () Unit!14613)

(assert (=> b!925938 (= lt!339571 (lemmaFindConcatSeparationEquivalentToExists!238 (regOne!5506 r!15766) (regTwo!5506 r!15766) s!10566))))

(declare-fun b!925939 () Bool)

(declare-fun tp!287791 () Bool)

(assert (=> b!925939 (= e!602361 tp!287791)))

(declare-fun b!925940 () Bool)

(declare-fun tp!287792 () Bool)

(declare-fun tp!287788 () Bool)

(assert (=> b!925940 (= e!602361 (and tp!287792 tp!287788))))

(declare-fun b!925941 () Bool)

(declare-fun tp!287787 () Bool)

(declare-fun tp!287789 () Bool)

(assert (=> b!925941 (= e!602361 (and tp!287787 tp!287789))))

(assert (= (and start!83050 res!421020) b!925934))

(assert (= (and b!925934 (not res!421022)) b!925938))

(assert (= (and b!925938 (not res!421023)) b!925937))

(assert (= (and b!925937 (not res!421021)) b!925932))

(assert (= (and b!925932 (not res!421024)) b!925935))

(assert (= (and start!83050 ((_ is ElementMatch!2497) r!15766)) b!925936))

(assert (= (and start!83050 ((_ is Concat!4330) r!15766)) b!925940))

(assert (= (and start!83050 ((_ is Star!2497) r!15766)) b!925939))

(assert (= (and start!83050 ((_ is Union!2497) r!15766)) b!925941))

(assert (= (and start!83050 ((_ is Cons!9711) s!10566)) b!925933))

(declare-fun m!1151179 () Bool)

(assert (=> start!83050 m!1151179))

(declare-fun m!1151181 () Bool)

(assert (=> b!925937 m!1151181))

(declare-fun m!1151183 () Bool)

(assert (=> b!925937 m!1151183))

(declare-fun m!1151185 () Bool)

(assert (=> b!925937 m!1151185))

(declare-fun m!1151187 () Bool)

(assert (=> b!925934 m!1151187))

(declare-fun m!1151189 () Bool)

(assert (=> b!925934 m!1151189))

(declare-fun m!1151191 () Bool)

(assert (=> b!925934 m!1151191))

(declare-fun m!1151193 () Bool)

(assert (=> b!925935 m!1151193))

(declare-fun m!1151195 () Bool)

(assert (=> b!925935 m!1151195))

(declare-fun m!1151197 () Bool)

(assert (=> b!925935 m!1151197))

(declare-fun m!1151199 () Bool)

(assert (=> b!925935 m!1151199))

(declare-fun m!1151201 () Bool)

(assert (=> b!925935 m!1151201))

(declare-fun m!1151203 () Bool)

(assert (=> b!925935 m!1151203))

(declare-fun m!1151205 () Bool)

(assert (=> b!925935 m!1151205))

(declare-fun m!1151207 () Bool)

(assert (=> b!925932 m!1151207))

(declare-fun m!1151209 () Bool)

(assert (=> b!925932 m!1151209))

(declare-fun m!1151211 () Bool)

(assert (=> b!925932 m!1151211))

(declare-fun m!1151213 () Bool)

(assert (=> b!925932 m!1151213))

(declare-fun m!1151215 () Bool)

(assert (=> b!925932 m!1151215))

(declare-fun m!1151217 () Bool)

(assert (=> b!925932 m!1151217))

(declare-fun m!1151219 () Bool)

(assert (=> b!925932 m!1151219))

(declare-fun m!1151221 () Bool)

(assert (=> b!925932 m!1151221))

(assert (=> b!925932 m!1151219))

(declare-fun m!1151223 () Bool)

(assert (=> b!925938 m!1151223))

(declare-fun m!1151225 () Bool)

(assert (=> b!925938 m!1151225))

(declare-fun m!1151227 () Bool)

(assert (=> b!925938 m!1151227))

(assert (=> b!925938 m!1151223))

(declare-fun m!1151229 () Bool)

(assert (=> b!925938 m!1151229))

(declare-fun m!1151231 () Bool)

(assert (=> b!925938 m!1151231))

(declare-fun m!1151233 () Bool)

(assert (=> b!925938 m!1151233))

(declare-fun m!1151235 () Bool)

(assert (=> b!925938 m!1151235))

(assert (=> b!925938 m!1151225))

(check-sat (not b!925939) (not b!925937) (not b!925941) (not b!925932) (not b!925935) (not b!925934) (not b!925940) (not b!925938) (not b!925933) (not start!83050) tp_is_empty!4637)
(check-sat)
