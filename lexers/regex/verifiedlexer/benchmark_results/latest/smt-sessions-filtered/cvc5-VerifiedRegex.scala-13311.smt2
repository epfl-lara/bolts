; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723344 () Bool)

(assert start!723344)

(declare-fun b!7449956 () Bool)

(assert (=> b!7449956 true))

(assert (=> b!7449956 true))

(assert (=> b!7449956 true))

(declare-fun lambda!460781 () Int)

(declare-fun lambda!460780 () Int)

(assert (=> b!7449956 (not (= lambda!460781 lambda!460780))))

(assert (=> b!7449956 true))

(assert (=> b!7449956 true))

(assert (=> b!7449956 true))

(declare-fun b!7449950 () Bool)

(declare-fun e!4447287 () Bool)

(declare-fun tp!2158366 () Bool)

(declare-fun tp!2158377 () Bool)

(assert (=> b!7449950 (= e!4447287 (and tp!2158366 tp!2158377))))

(declare-fun b!7449951 () Bool)

(declare-fun e!4447292 () Bool)

(declare-fun tp!2158376 () Bool)

(assert (=> b!7449951 (= e!4447292 tp!2158376)))

(declare-fun b!7449952 () Bool)

(declare-fun tp_is_empty!49257 () Bool)

(assert (=> b!7449952 (= e!4447287 tp_is_empty!49257)))

(declare-fun b!7449953 () Bool)

(declare-fun e!4447288 () Bool)

(declare-fun tp!2158367 () Bool)

(assert (=> b!7449953 (= e!4447288 (and tp_is_empty!49257 tp!2158367))))

(declare-fun b!7449955 () Bool)

(declare-fun e!4447289 () Bool)

(declare-fun e!4447290 () Bool)

(assert (=> b!7449955 (= e!4447289 (not e!4447290))))

(declare-fun res!2988253 () Bool)

(assert (=> b!7449955 (=> res!2988253 e!4447290)))

(declare-fun lt!2619942 () Bool)

(assert (=> b!7449955 (= res!2988253 (not lt!2619942))))

(declare-datatypes ((C!39242 0))(
  ( (C!39243 (val!30019 Int)) )
))
(declare-datatypes ((Regex!19484 0))(
  ( (ElementMatch!19484 (c!1377733 C!39242)) (Concat!28329 (regOne!39480 Regex!19484) (regTwo!39480 Regex!19484)) (EmptyExpr!19484) (Star!19484 (reg!19813 Regex!19484)) (EmptyLang!19484) (Union!19484 (regOne!39481 Regex!19484) (regTwo!39481 Regex!19484)) )
))
(declare-fun lt!2619937 () Regex!19484)

(declare-datatypes ((List!72200 0))(
  ( (Nil!72076) (Cons!72076 (h!78524 C!39242) (t!386769 List!72200)) )
))
(declare-fun s!13591 () List!72200)

(declare-fun matchR!9248 (Regex!19484 List!72200) Bool)

(declare-fun matchRSpec!4163 (Regex!19484 List!72200) Bool)

(assert (=> b!7449955 (= (matchR!9248 lt!2619937 s!13591) (matchRSpec!4163 lt!2619937 s!13591))))

(declare-datatypes ((Unit!165803 0))(
  ( (Unit!165804) )
))
(declare-fun lt!2619940 () Unit!165803)

(declare-fun mainMatchTheorem!4157 (Regex!19484 List!72200) Unit!165803)

(assert (=> b!7449955 (= lt!2619940 (mainMatchTheorem!4157 lt!2619937 s!13591))))

(declare-fun lt!2619936 () Regex!19484)

(assert (=> b!7449955 (= lt!2619942 (matchRSpec!4163 lt!2619936 s!13591))))

(assert (=> b!7449955 (= lt!2619942 (matchR!9248 lt!2619936 s!13591))))

(declare-fun lt!2619939 () Unit!165803)

(assert (=> b!7449955 (= lt!2619939 (mainMatchTheorem!4157 lt!2619936 s!13591))))

(declare-fun r2!5783 () Regex!19484)

(declare-fun r1!5845 () Regex!19484)

(declare-fun rTail!78 () Regex!19484)

(assert (=> b!7449955 (= lt!2619937 (Union!19484 (Concat!28329 r1!5845 rTail!78) (Concat!28329 r2!5783 rTail!78)))))

(declare-fun lt!2619941 () Regex!19484)

(assert (=> b!7449955 (= lt!2619936 (Concat!28329 lt!2619941 rTail!78))))

(assert (=> b!7449955 (= lt!2619941 (Union!19484 r1!5845 r2!5783))))

(assert (=> b!7449956 (= e!4447290 true)))

(declare-fun Exists!4105 (Int) Bool)

(assert (=> b!7449956 (= (Exists!4105 lambda!460780) (Exists!4105 lambda!460781))))

(declare-fun lt!2619943 () Unit!165803)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2441 (Regex!19484 Regex!19484 List!72200) Unit!165803)

(assert (=> b!7449956 (= lt!2619943 (lemmaExistCutMatchRandMatchRSpecEquivalent!2441 lt!2619941 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68422 0))(
  ( (tuple2!68423 (_1!37514 List!72200) (_2!37514 List!72200)) )
))
(declare-datatypes ((Option!17043 0))(
  ( (None!17042) (Some!17042 (v!54171 tuple2!68422)) )
))
(declare-fun isDefined!13732 (Option!17043) Bool)

(declare-fun findConcatSeparation!3165 (Regex!19484 Regex!19484 List!72200 List!72200 List!72200) Option!17043)

(assert (=> b!7449956 (= (isDefined!13732 (findConcatSeparation!3165 lt!2619941 rTail!78 Nil!72076 s!13591 s!13591)) (Exists!4105 lambda!460780))))

(declare-fun lt!2619938 () Unit!165803)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2923 (Regex!19484 Regex!19484 List!72200) Unit!165803)

(assert (=> b!7449956 (= lt!2619938 (lemmaFindConcatSeparationEquivalentToExists!2923 lt!2619941 rTail!78 s!13591))))

(declare-fun b!7449957 () Bool)

(declare-fun tp!2158379 () Bool)

(declare-fun tp!2158364 () Bool)

(assert (=> b!7449957 (= e!4447287 (and tp!2158379 tp!2158364))))

(declare-fun b!7449958 () Bool)

(declare-fun e!4447291 () Bool)

(declare-fun tp!2158374 () Bool)

(declare-fun tp!2158369 () Bool)

(assert (=> b!7449958 (= e!4447291 (and tp!2158374 tp!2158369))))

(declare-fun b!7449959 () Bool)

(declare-fun tp!2158365 () Bool)

(assert (=> b!7449959 (= e!4447287 tp!2158365)))

(declare-fun b!7449960 () Bool)

(declare-fun res!2988254 () Bool)

(assert (=> b!7449960 (=> (not res!2988254) (not e!4447289))))

(declare-fun validRegex!9998 (Regex!19484) Bool)

(assert (=> b!7449960 (= res!2988254 (validRegex!9998 rTail!78))))

(declare-fun b!7449961 () Bool)

(declare-fun tp!2158373 () Bool)

(declare-fun tp!2158368 () Bool)

(assert (=> b!7449961 (= e!4447291 (and tp!2158373 tp!2158368))))

(declare-fun b!7449962 () Bool)

(declare-fun res!2988255 () Bool)

(assert (=> b!7449962 (=> (not res!2988255) (not e!4447289))))

(assert (=> b!7449962 (= res!2988255 (validRegex!9998 r2!5783))))

(declare-fun b!7449954 () Bool)

(assert (=> b!7449954 (= e!4447292 tp_is_empty!49257)))

(declare-fun res!2988256 () Bool)

(assert (=> start!723344 (=> (not res!2988256) (not e!4447289))))

(assert (=> start!723344 (= res!2988256 (validRegex!9998 r1!5845))))

(assert (=> start!723344 e!4447289))

(assert (=> start!723344 e!4447291))

(assert (=> start!723344 e!4447292))

(assert (=> start!723344 e!4447287))

(assert (=> start!723344 e!4447288))

(declare-fun b!7449963 () Bool)

(assert (=> b!7449963 (= e!4447291 tp_is_empty!49257)))

(declare-fun b!7449964 () Bool)

(declare-fun tp!2158372 () Bool)

(declare-fun tp!2158378 () Bool)

(assert (=> b!7449964 (= e!4447292 (and tp!2158372 tp!2158378))))

(declare-fun b!7449965 () Bool)

(declare-fun tp!2158370 () Bool)

(assert (=> b!7449965 (= e!4447291 tp!2158370)))

(declare-fun b!7449966 () Bool)

(declare-fun tp!2158371 () Bool)

(declare-fun tp!2158375 () Bool)

(assert (=> b!7449966 (= e!4447292 (and tp!2158371 tp!2158375))))

(assert (= (and start!723344 res!2988256) b!7449962))

(assert (= (and b!7449962 res!2988255) b!7449960))

(assert (= (and b!7449960 res!2988254) b!7449955))

(assert (= (and b!7449955 (not res!2988253)) b!7449956))

(assert (= (and start!723344 (is-ElementMatch!19484 r1!5845)) b!7449963))

(assert (= (and start!723344 (is-Concat!28329 r1!5845)) b!7449961))

(assert (= (and start!723344 (is-Star!19484 r1!5845)) b!7449965))

(assert (= (and start!723344 (is-Union!19484 r1!5845)) b!7449958))

(assert (= (and start!723344 (is-ElementMatch!19484 r2!5783)) b!7449954))

(assert (= (and start!723344 (is-Concat!28329 r2!5783)) b!7449966))

(assert (= (and start!723344 (is-Star!19484 r2!5783)) b!7449951))

(assert (= (and start!723344 (is-Union!19484 r2!5783)) b!7449964))

(assert (= (and start!723344 (is-ElementMatch!19484 rTail!78)) b!7449952))

(assert (= (and start!723344 (is-Concat!28329 rTail!78)) b!7449950))

(assert (= (and start!723344 (is-Star!19484 rTail!78)) b!7449959))

(assert (= (and start!723344 (is-Union!19484 rTail!78)) b!7449957))

(assert (= (and start!723344 (is-Cons!72076 s!13591)) b!7449953))

(declare-fun m!8056532 () Bool)

(assert (=> b!7449955 m!8056532))

(declare-fun m!8056534 () Bool)

(assert (=> b!7449955 m!8056534))

(declare-fun m!8056536 () Bool)

(assert (=> b!7449955 m!8056536))

(declare-fun m!8056538 () Bool)

(assert (=> b!7449955 m!8056538))

(declare-fun m!8056540 () Bool)

(assert (=> b!7449955 m!8056540))

(declare-fun m!8056542 () Bool)

(assert (=> b!7449955 m!8056542))

(declare-fun m!8056544 () Bool)

(assert (=> start!723344 m!8056544))

(declare-fun m!8056546 () Bool)

(assert (=> b!7449962 m!8056546))

(declare-fun m!8056548 () Bool)

(assert (=> b!7449956 m!8056548))

(declare-fun m!8056550 () Bool)

(assert (=> b!7449956 m!8056550))

(declare-fun m!8056552 () Bool)

(assert (=> b!7449956 m!8056552))

(declare-fun m!8056554 () Bool)

(assert (=> b!7449956 m!8056554))

(assert (=> b!7449956 m!8056552))

(declare-fun m!8056556 () Bool)

(assert (=> b!7449956 m!8056556))

(declare-fun m!8056558 () Bool)

(assert (=> b!7449956 m!8056558))

(assert (=> b!7449956 m!8056558))

(declare-fun m!8056560 () Bool)

(assert (=> b!7449960 m!8056560))

(push 1)

(assert (not b!7449960))

(assert (not b!7449953))

(assert (not b!7449955))

(assert (not b!7449957))

(assert (not b!7449964))

(assert (not b!7449965))

(assert (not b!7449958))

(assert (not b!7449962))

(assert (not b!7449966))

(assert (not b!7449956))

(assert (not start!723344))

(assert tp_is_empty!49257)

(assert (not b!7449951))

(assert (not b!7449961))

(assert (not b!7449959))

(assert (not b!7449950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

