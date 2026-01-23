; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737546 () Bool)

(assert start!737546)

(declare-fun b!7719806 () Bool)

(assert (=> b!7719806 true))

(assert (=> b!7719806 true))

(declare-fun b!7719804 () Bool)

(declare-fun e!4579159 () Bool)

(declare-fun tp_is_empty!51451 () Bool)

(assert (=> b!7719804 (= e!4579159 tp_is_empty!51451)))

(declare-fun b!7719805 () Bool)

(declare-fun tp!2264815 () Bool)

(assert (=> b!7719805 (= e!4579159 tp!2264815)))

(declare-fun e!4579158 () Bool)

(declare-fun e!4579156 () Bool)

(assert (=> b!7719806 (= e!4579158 (not e!4579156))))

(declare-fun res!3080428 () Bool)

(assert (=> b!7719806 (=> res!3080428 e!4579156)))

(declare-datatypes ((C!41422 0))(
  ( (C!41423 (val!31151 Int)) )
))
(declare-datatypes ((Regex!20548 0))(
  ( (ElementMatch!20548 (c!1422935 C!41422)) (Concat!29393 (regOne!41608 Regex!20548) (regTwo!41608 Regex!20548)) (EmptyExpr!20548) (Star!20548 (reg!20877 Regex!20548)) (EmptyLang!20548) (Union!20548 (regOne!41609 Regex!20548) (regTwo!41609 Regex!20548)) )
))
(declare-fun r!14126 () Regex!20548)

(declare-datatypes ((List!73395 0))(
  ( (Nil!73271) (Cons!73271 (h!79719 C!41422) (t!388130 List!73395)) )
))
(declare-fun s!9605 () List!73395)

(declare-fun matchR!10040 (Regex!20548 List!73395) Bool)

(assert (=> b!7719806 (= res!3080428 (not (matchR!10040 r!14126 s!9605)))))

(declare-fun lambda!471078 () Int)

(declare-datatypes ((tuple2!69550 0))(
  ( (tuple2!69551 (_1!38078 List!73395) (_2!38078 List!73395)) )
))
(declare-datatypes ((Option!17569 0))(
  ( (None!17568) (Some!17568 (v!54703 tuple2!69550)) )
))
(declare-fun isDefined!14185 (Option!17569) Bool)

(declare-fun findConcatSeparation!3599 (Regex!20548 Regex!20548 List!73395 List!73395 List!73395) Option!17569)

(declare-fun Exists!4669 (Int) Bool)

(assert (=> b!7719806 (= (isDefined!14185 (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) Nil!73271 s!9605 s!9605)) (Exists!4669 lambda!471078))))

(declare-datatypes ((Unit!168168 0))(
  ( (Unit!168169) )
))
(declare-fun lt!2666203 () Unit!168168)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3357 (Regex!20548 Regex!20548 List!73395) Unit!168168)

(assert (=> b!7719806 (= lt!2666203 (lemmaFindConcatSeparationEquivalentToExists!3357 (regOne!41608 r!14126) (regTwo!41608 r!14126) s!9605))))

(declare-fun b!7719807 () Bool)

(declare-fun tp!2264811 () Bool)

(declare-fun tp!2264812 () Bool)

(assert (=> b!7719807 (= e!4579159 (and tp!2264811 tp!2264812))))

(declare-fun res!3080429 () Bool)

(assert (=> start!737546 (=> (not res!3080429) (not e!4579158))))

(declare-fun validRegex!10966 (Regex!20548) Bool)

(assert (=> start!737546 (= res!3080429 (validRegex!10966 r!14126))))

(assert (=> start!737546 e!4579158))

(assert (=> start!737546 e!4579159))

(declare-fun e!4579157 () Bool)

(assert (=> start!737546 e!4579157))

(declare-fun b!7719808 () Bool)

(declare-fun tp!2264814 () Bool)

(declare-fun tp!2264813 () Bool)

(assert (=> b!7719808 (= e!4579159 (and tp!2264814 tp!2264813))))

(declare-fun b!7719809 () Bool)

(assert (=> b!7719809 (= e!4579156 (validRegex!10966 (regOne!41608 r!14126)))))

(declare-fun b!7719810 () Bool)

(declare-fun tp!2264810 () Bool)

(assert (=> b!7719810 (= e!4579157 (and tp_is_empty!51451 tp!2264810))))

(declare-fun b!7719811 () Bool)

(declare-fun res!3080427 () Bool)

(assert (=> b!7719811 (=> (not res!3080427) (not e!4579158))))

(assert (=> b!7719811 (= res!3080427 (and (not (is-EmptyExpr!20548 r!14126)) (not (is-EmptyLang!20548 r!14126)) (not (is-ElementMatch!20548 r!14126)) (not (is-Union!20548 r!14126)) (not (is-Star!20548 r!14126))))))

(assert (= (and start!737546 res!3080429) b!7719811))

(assert (= (and b!7719811 res!3080427) b!7719806))

(assert (= (and b!7719806 (not res!3080428)) b!7719809))

(assert (= (and start!737546 (is-ElementMatch!20548 r!14126)) b!7719804))

(assert (= (and start!737546 (is-Concat!29393 r!14126)) b!7719807))

(assert (= (and start!737546 (is-Star!20548 r!14126)) b!7719805))

(assert (= (and start!737546 (is-Union!20548 r!14126)) b!7719808))

(assert (= (and start!737546 (is-Cons!73271 s!9605)) b!7719810))

(declare-fun m!8199570 () Bool)

(assert (=> b!7719806 m!8199570))

(declare-fun m!8199572 () Bool)

(assert (=> b!7719806 m!8199572))

(declare-fun m!8199574 () Bool)

(assert (=> b!7719806 m!8199574))

(assert (=> b!7719806 m!8199572))

(declare-fun m!8199576 () Bool)

(assert (=> b!7719806 m!8199576))

(declare-fun m!8199578 () Bool)

(assert (=> b!7719806 m!8199578))

(declare-fun m!8199580 () Bool)

(assert (=> start!737546 m!8199580))

(declare-fun m!8199582 () Bool)

(assert (=> b!7719809 m!8199582))

(push 1)

(assert (not b!7719808))

(assert tp_is_empty!51451)

(assert (not start!737546))

(assert (not b!7719805))

(assert (not b!7719807))

(assert (not b!7719806))

(assert (not b!7719810))

(assert (not b!7719809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!713501 () Bool)

(declare-fun c!1422942 () Bool)

(declare-fun bm!713494 () Bool)

(declare-fun c!1422941 () Bool)

(assert (=> bm!713494 (= call!713501 (validRegex!10966 (ite c!1422941 (reg!20877 r!14126) (ite c!1422942 (regTwo!41609 r!14126) (regTwo!41608 r!14126)))))))

(declare-fun d!2337510 () Bool)

(declare-fun res!3080456 () Bool)

(declare-fun e!4579191 () Bool)

(assert (=> d!2337510 (=> res!3080456 e!4579191)))

(assert (=> d!2337510 (= res!3080456 (is-ElementMatch!20548 r!14126))))

(assert (=> d!2337510 (= (validRegex!10966 r!14126) e!4579191)))

(declare-fun b!7719866 () Bool)

(declare-fun e!4579193 () Bool)

(declare-fun call!713499 () Bool)

(assert (=> b!7719866 (= e!4579193 call!713499)))

(declare-fun b!7719867 () Bool)

(declare-fun e!4579190 () Bool)

(declare-fun e!4579194 () Bool)

(assert (=> b!7719867 (= e!4579190 e!4579194)))

(declare-fun res!3080457 () Bool)

(declare-fun nullable!9025 (Regex!20548) Bool)

(assert (=> b!7719867 (= res!3080457 (not (nullable!9025 (reg!20877 r!14126))))))

(assert (=> b!7719867 (=> (not res!3080457) (not e!4579194))))

(declare-fun b!7719868 () Bool)

(assert (=> b!7719868 (= e!4579194 call!713501)))

(declare-fun b!7719869 () Bool)

(assert (=> b!7719869 (= e!4579191 e!4579190)))

(assert (=> b!7719869 (= c!1422941 (is-Star!20548 r!14126))))

(declare-fun bm!713495 () Bool)

(declare-fun call!713500 () Bool)

(assert (=> bm!713495 (= call!713500 (validRegex!10966 (ite c!1422942 (regOne!41609 r!14126) (regOne!41608 r!14126))))))

(declare-fun b!7719870 () Bool)

(declare-fun res!3080453 () Bool)

(declare-fun e!4579188 () Bool)

(assert (=> b!7719870 (=> res!3080453 e!4579188)))

(assert (=> b!7719870 (= res!3080453 (not (is-Concat!29393 r!14126)))))

(declare-fun e!4579189 () Bool)

(assert (=> b!7719870 (= e!4579189 e!4579188)))

(declare-fun bm!713496 () Bool)

(assert (=> bm!713496 (= call!713499 call!713501)))

(declare-fun b!7719871 () Bool)

(declare-fun res!3080454 () Bool)

(declare-fun e!4579192 () Bool)

(assert (=> b!7719871 (=> (not res!3080454) (not e!4579192))))

(assert (=> b!7719871 (= res!3080454 call!713500)))

(assert (=> b!7719871 (= e!4579189 e!4579192)))

(declare-fun b!7719872 () Bool)

(assert (=> b!7719872 (= e!4579188 e!4579193)))

(declare-fun res!3080455 () Bool)

(assert (=> b!7719872 (=> (not res!3080455) (not e!4579193))))

(assert (=> b!7719872 (= res!3080455 call!713500)))

(declare-fun b!7719873 () Bool)

(assert (=> b!7719873 (= e!4579190 e!4579189)))

(assert (=> b!7719873 (= c!1422942 (is-Union!20548 r!14126))))

(declare-fun b!7719874 () Bool)

(assert (=> b!7719874 (= e!4579192 call!713499)))

(assert (= (and d!2337510 (not res!3080456)) b!7719869))

(assert (= (and b!7719869 c!1422941) b!7719867))

(assert (= (and b!7719869 (not c!1422941)) b!7719873))

(assert (= (and b!7719867 res!3080457) b!7719868))

(assert (= (and b!7719873 c!1422942) b!7719871))

(assert (= (and b!7719873 (not c!1422942)) b!7719870))

(assert (= (and b!7719871 res!3080454) b!7719874))

(assert (= (and b!7719870 (not res!3080453)) b!7719872))

(assert (= (and b!7719872 res!3080455) b!7719866))

(assert (= (or b!7719871 b!7719872) bm!713495))

(assert (= (or b!7719874 b!7719866) bm!713496))

(assert (= (or b!7719868 bm!713496) bm!713494))

(declare-fun m!8199598 () Bool)

(assert (=> bm!713494 m!8199598))

(declare-fun m!8199600 () Bool)

(assert (=> b!7719867 m!8199600))

(declare-fun m!8199602 () Bool)

(assert (=> bm!713495 m!8199602))

(assert (=> start!737546 d!2337510))

(declare-fun c!1422944 () Bool)

(declare-fun call!713504 () Bool)

(declare-fun bm!713497 () Bool)

(declare-fun c!1422943 () Bool)

(assert (=> bm!713497 (= call!713504 (validRegex!10966 (ite c!1422943 (reg!20877 (regOne!41608 r!14126)) (ite c!1422944 (regTwo!41609 (regOne!41608 r!14126)) (regTwo!41608 (regOne!41608 r!14126))))))))

(declare-fun d!2337512 () Bool)

(declare-fun res!3080461 () Bool)

(declare-fun e!4579198 () Bool)

(assert (=> d!2337512 (=> res!3080461 e!4579198)))

(assert (=> d!2337512 (= res!3080461 (is-ElementMatch!20548 (regOne!41608 r!14126)))))

(assert (=> d!2337512 (= (validRegex!10966 (regOne!41608 r!14126)) e!4579198)))

(declare-fun b!7719875 () Bool)

(declare-fun e!4579200 () Bool)

(declare-fun call!713502 () Bool)

(assert (=> b!7719875 (= e!4579200 call!713502)))

(declare-fun b!7719876 () Bool)

(declare-fun e!4579197 () Bool)

(declare-fun e!4579201 () Bool)

(assert (=> b!7719876 (= e!4579197 e!4579201)))

(declare-fun res!3080462 () Bool)

(assert (=> b!7719876 (= res!3080462 (not (nullable!9025 (reg!20877 (regOne!41608 r!14126)))))))

(assert (=> b!7719876 (=> (not res!3080462) (not e!4579201))))

(declare-fun b!7719877 () Bool)

(assert (=> b!7719877 (= e!4579201 call!713504)))

(declare-fun b!7719878 () Bool)

(assert (=> b!7719878 (= e!4579198 e!4579197)))

(assert (=> b!7719878 (= c!1422943 (is-Star!20548 (regOne!41608 r!14126)))))

(declare-fun bm!713498 () Bool)

(declare-fun call!713503 () Bool)

(assert (=> bm!713498 (= call!713503 (validRegex!10966 (ite c!1422944 (regOne!41609 (regOne!41608 r!14126)) (regOne!41608 (regOne!41608 r!14126)))))))

(declare-fun b!7719879 () Bool)

(declare-fun res!3080458 () Bool)

(declare-fun e!4579195 () Bool)

(assert (=> b!7719879 (=> res!3080458 e!4579195)))

(assert (=> b!7719879 (= res!3080458 (not (is-Concat!29393 (regOne!41608 r!14126))))))

(declare-fun e!4579196 () Bool)

(assert (=> b!7719879 (= e!4579196 e!4579195)))

(declare-fun bm!713499 () Bool)

(assert (=> bm!713499 (= call!713502 call!713504)))

(declare-fun b!7719880 () Bool)

(declare-fun res!3080459 () Bool)

(declare-fun e!4579199 () Bool)

(assert (=> b!7719880 (=> (not res!3080459) (not e!4579199))))

(assert (=> b!7719880 (= res!3080459 call!713503)))

(assert (=> b!7719880 (= e!4579196 e!4579199)))

(declare-fun b!7719881 () Bool)

(assert (=> b!7719881 (= e!4579195 e!4579200)))

(declare-fun res!3080460 () Bool)

(assert (=> b!7719881 (=> (not res!3080460) (not e!4579200))))

(assert (=> b!7719881 (= res!3080460 call!713503)))

(declare-fun b!7719882 () Bool)

(assert (=> b!7719882 (= e!4579197 e!4579196)))

(assert (=> b!7719882 (= c!1422944 (is-Union!20548 (regOne!41608 r!14126)))))

(declare-fun b!7719883 () Bool)

(assert (=> b!7719883 (= e!4579199 call!713502)))

(assert (= (and d!2337512 (not res!3080461)) b!7719878))

(assert (= (and b!7719878 c!1422943) b!7719876))

(assert (= (and b!7719878 (not c!1422943)) b!7719882))

(assert (= (and b!7719876 res!3080462) b!7719877))

(assert (= (and b!7719882 c!1422944) b!7719880))

(assert (= (and b!7719882 (not c!1422944)) b!7719879))

(assert (= (and b!7719880 res!3080459) b!7719883))

(assert (= (and b!7719879 (not res!3080458)) b!7719881))

(assert (= (and b!7719881 res!3080460) b!7719875))

(assert (= (or b!7719880 b!7719881) bm!713498))

(assert (= (or b!7719883 b!7719875) bm!713499))

(assert (= (or b!7719877 bm!713499) bm!713497))

(declare-fun m!8199604 () Bool)

(assert (=> bm!713497 m!8199604))

(declare-fun m!8199606 () Bool)

(assert (=> b!7719876 m!8199606))

(declare-fun m!8199608 () Bool)

(assert (=> bm!713498 m!8199608))

(assert (=> b!7719809 d!2337512))

(declare-fun b!7719930 () Bool)

(declare-fun e!4579235 () Bool)

(declare-fun head!15786 (List!73395) C!41422)

(assert (=> b!7719930 (= e!4579235 (= (head!15786 s!9605) (c!1422935 r!14126)))))

(declare-fun b!7719931 () Bool)

(declare-fun res!3080494 () Bool)

(assert (=> b!7719931 (=> (not res!3080494) (not e!4579235))))

(declare-fun isEmpty!41936 (List!73395) Bool)

(declare-fun tail!15326 (List!73395) List!73395)

(assert (=> b!7719931 (= res!3080494 (isEmpty!41936 (tail!15326 s!9605)))))

(declare-fun b!7719932 () Bool)

(declare-fun res!3080496 () Bool)

(declare-fun e!4579231 () Bool)

(assert (=> b!7719932 (=> res!3080496 e!4579231)))

(assert (=> b!7719932 (= res!3080496 (not (is-ElementMatch!20548 r!14126)))))

(declare-fun e!4579230 () Bool)

(assert (=> b!7719932 (= e!4579230 e!4579231)))

(declare-fun b!7719933 () Bool)

(declare-fun e!4579233 () Bool)

(assert (=> b!7719933 (= e!4579233 e!4579230)))

(declare-fun c!1422955 () Bool)

(assert (=> b!7719933 (= c!1422955 (is-EmptyLang!20548 r!14126))))

(declare-fun b!7719934 () Bool)

(declare-fun e!4579236 () Bool)

(assert (=> b!7719934 (= e!4579236 (nullable!9025 r!14126))))

(declare-fun d!2337514 () Bool)

(assert (=> d!2337514 e!4579233))

(declare-fun c!1422957 () Bool)

(assert (=> d!2337514 (= c!1422957 (is-EmptyExpr!20548 r!14126))))

(declare-fun lt!2666209 () Bool)

(assert (=> d!2337514 (= lt!2666209 e!4579236)))

(declare-fun c!1422956 () Bool)

(assert (=> d!2337514 (= c!1422956 (isEmpty!41936 s!9605))))

(assert (=> d!2337514 (validRegex!10966 r!14126)))

(assert (=> d!2337514 (= (matchR!10040 r!14126 s!9605) lt!2666209)))

(declare-fun b!7719935 () Bool)

(declare-fun res!3080493 () Bool)

(assert (=> b!7719935 (=> (not res!3080493) (not e!4579235))))

(declare-fun call!713513 () Bool)

(assert (=> b!7719935 (= res!3080493 (not call!713513))))

(declare-fun b!7719936 () Bool)

(declare-fun e!4579234 () Bool)

(assert (=> b!7719936 (= e!4579234 (not (= (head!15786 s!9605) (c!1422935 r!14126))))))

(declare-fun bm!713508 () Bool)

(assert (=> bm!713508 (= call!713513 (isEmpty!41936 s!9605))))

(declare-fun b!7719937 () Bool)

(declare-fun e!4579232 () Bool)

(assert (=> b!7719937 (= e!4579231 e!4579232)))

(declare-fun res!3080491 () Bool)

(assert (=> b!7719937 (=> (not res!3080491) (not e!4579232))))

(assert (=> b!7719937 (= res!3080491 (not lt!2666209))))

(declare-fun b!7719938 () Bool)

(assert (=> b!7719938 (= e!4579233 (= lt!2666209 call!713513))))

(declare-fun b!7719939 () Bool)

(assert (=> b!7719939 (= e!4579232 e!4579234)))

(declare-fun res!3080489 () Bool)

(assert (=> b!7719939 (=> res!3080489 e!4579234)))

(assert (=> b!7719939 (= res!3080489 call!713513)))

(declare-fun b!7719940 () Bool)

(declare-fun res!3080495 () Bool)

(assert (=> b!7719940 (=> res!3080495 e!4579234)))

(assert (=> b!7719940 (= res!3080495 (not (isEmpty!41936 (tail!15326 s!9605))))))

(declare-fun b!7719941 () Bool)

(declare-fun derivativeStep!5986 (Regex!20548 C!41422) Regex!20548)

(assert (=> b!7719941 (= e!4579236 (matchR!10040 (derivativeStep!5986 r!14126 (head!15786 s!9605)) (tail!15326 s!9605)))))

(declare-fun b!7719942 () Bool)

(assert (=> b!7719942 (= e!4579230 (not lt!2666209))))

(declare-fun b!7719943 () Bool)

(declare-fun res!3080490 () Bool)

(assert (=> b!7719943 (=> res!3080490 e!4579231)))

(assert (=> b!7719943 (= res!3080490 e!4579235)))

(declare-fun res!3080492 () Bool)

(assert (=> b!7719943 (=> (not res!3080492) (not e!4579235))))

(assert (=> b!7719943 (= res!3080492 lt!2666209)))

(assert (= (and d!2337514 c!1422956) b!7719934))

(assert (= (and d!2337514 (not c!1422956)) b!7719941))

(assert (= (and d!2337514 c!1422957) b!7719938))

(assert (= (and d!2337514 (not c!1422957)) b!7719933))

(assert (= (and b!7719933 c!1422955) b!7719942))

(assert (= (and b!7719933 (not c!1422955)) b!7719932))

(assert (= (and b!7719932 (not res!3080496)) b!7719943))

(assert (= (and b!7719943 res!3080492) b!7719935))

(assert (= (and b!7719935 res!3080493) b!7719931))

(assert (= (and b!7719931 res!3080494) b!7719930))

(assert (= (and b!7719943 (not res!3080490)) b!7719937))

(assert (= (and b!7719937 res!3080491) b!7719939))

(assert (= (and b!7719939 (not res!3080489)) b!7719940))

(assert (= (and b!7719940 (not res!3080495)) b!7719936))

(assert (= (or b!7719938 b!7719935 b!7719939) bm!713508))

(declare-fun m!8199610 () Bool)

(assert (=> b!7719931 m!8199610))

(assert (=> b!7719931 m!8199610))

(declare-fun m!8199612 () Bool)

(assert (=> b!7719931 m!8199612))

(declare-fun m!8199614 () Bool)

(assert (=> b!7719934 m!8199614))

(declare-fun m!8199616 () Bool)

(assert (=> bm!713508 m!8199616))

(assert (=> d!2337514 m!8199616))

(assert (=> d!2337514 m!8199580))

(declare-fun m!8199618 () Bool)

(assert (=> b!7719930 m!8199618))

(assert (=> b!7719941 m!8199618))

(assert (=> b!7719941 m!8199618))

(declare-fun m!8199620 () Bool)

(assert (=> b!7719941 m!8199620))

(assert (=> b!7719941 m!8199610))

(assert (=> b!7719941 m!8199620))

(assert (=> b!7719941 m!8199610))

(declare-fun m!8199622 () Bool)

(assert (=> b!7719941 m!8199622))

(assert (=> b!7719940 m!8199610))

(assert (=> b!7719940 m!8199610))

(assert (=> b!7719940 m!8199612))

(assert (=> b!7719936 m!8199618))

(assert (=> b!7719806 d!2337514))

(declare-fun bs!1963013 () Bool)

(declare-fun d!2337518 () Bool)

(assert (= bs!1963013 (and d!2337518 b!7719806)))

(declare-fun lambda!471084 () Int)

(assert (=> bs!1963013 (= lambda!471084 lambda!471078)))

(assert (=> d!2337518 true))

(assert (=> d!2337518 true))

(assert (=> d!2337518 true))

(assert (=> d!2337518 (= (isDefined!14185 (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) Nil!73271 s!9605 s!9605)) (Exists!4669 lambda!471084))))

(declare-fun lt!2666212 () Unit!168168)

(declare-fun choose!59258 (Regex!20548 Regex!20548 List!73395) Unit!168168)

(assert (=> d!2337518 (= lt!2666212 (choose!59258 (regOne!41608 r!14126) (regTwo!41608 r!14126) s!9605))))

(assert (=> d!2337518 (validRegex!10966 (regOne!41608 r!14126))))

(assert (=> d!2337518 (= (lemmaFindConcatSeparationEquivalentToExists!3357 (regOne!41608 r!14126) (regTwo!41608 r!14126) s!9605) lt!2666212)))

(declare-fun bs!1963014 () Bool)

(assert (= bs!1963014 d!2337518))

(assert (=> bs!1963014 m!8199572))

(assert (=> bs!1963014 m!8199576))

(assert (=> bs!1963014 m!8199582))

(declare-fun m!8199636 () Bool)

(assert (=> bs!1963014 m!8199636))

(assert (=> bs!1963014 m!8199572))

(declare-fun m!8199638 () Bool)

(assert (=> bs!1963014 m!8199638))

(assert (=> b!7719806 d!2337518))

(declare-fun d!2337524 () Bool)

(declare-fun isEmpty!41937 (Option!17569) Bool)

(assert (=> d!2337524 (= (isDefined!14185 (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) Nil!73271 s!9605 s!9605)) (not (isEmpty!41937 (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) Nil!73271 s!9605 s!9605))))))

(declare-fun bs!1963015 () Bool)

(assert (= bs!1963015 d!2337524))

(assert (=> bs!1963015 m!8199572))

(declare-fun m!8199640 () Bool)

(assert (=> bs!1963015 m!8199640))

(assert (=> b!7719806 d!2337524))

(declare-fun b!7720012 () Bool)

(declare-fun e!4579281 () Bool)

(assert (=> b!7720012 (= e!4579281 (matchR!10040 (regTwo!41608 r!14126) s!9605))))

(declare-fun b!7720013 () Bool)

(declare-fun e!4579280 () Option!17569)

(assert (=> b!7720013 (= e!4579280 None!17568)))

(declare-fun d!2337526 () Bool)

(declare-fun e!4579279 () Bool)

(assert (=> d!2337526 e!4579279))

(declare-fun res!3080540 () Bool)

(assert (=> d!2337526 (=> res!3080540 e!4579279)))

(declare-fun e!4579278 () Bool)

(assert (=> d!2337526 (= res!3080540 e!4579278)))

(declare-fun res!3080538 () Bool)

(assert (=> d!2337526 (=> (not res!3080538) (not e!4579278))))

(declare-fun lt!2666222 () Option!17569)

(assert (=> d!2337526 (= res!3080538 (isDefined!14185 lt!2666222))))

(declare-fun e!4579277 () Option!17569)

(assert (=> d!2337526 (= lt!2666222 e!4579277)))

(declare-fun c!1422972 () Bool)

(assert (=> d!2337526 (= c!1422972 e!4579281)))

(declare-fun res!3080541 () Bool)

(assert (=> d!2337526 (=> (not res!3080541) (not e!4579281))))

(assert (=> d!2337526 (= res!3080541 (matchR!10040 (regOne!41608 r!14126) Nil!73271))))

(assert (=> d!2337526 (validRegex!10966 (regOne!41608 r!14126))))

(assert (=> d!2337526 (= (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) Nil!73271 s!9605 s!9605) lt!2666222)))

(declare-fun b!7720014 () Bool)

(declare-fun ++!17752 (List!73395 List!73395) List!73395)

(declare-fun get!26016 (Option!17569) tuple2!69550)

(assert (=> b!7720014 (= e!4579278 (= (++!17752 (_1!38078 (get!26016 lt!2666222)) (_2!38078 (get!26016 lt!2666222))) s!9605))))

(declare-fun b!7720015 () Bool)

(declare-fun res!3080539 () Bool)

(assert (=> b!7720015 (=> (not res!3080539) (not e!4579278))))

(assert (=> b!7720015 (= res!3080539 (matchR!10040 (regOne!41608 r!14126) (_1!38078 (get!26016 lt!2666222))))))

(declare-fun b!7720016 () Bool)

(declare-fun lt!2666221 () Unit!168168)

(declare-fun lt!2666223 () Unit!168168)

(assert (=> b!7720016 (= lt!2666221 lt!2666223)))

(assert (=> b!7720016 (= (++!17752 (++!17752 Nil!73271 (Cons!73271 (h!79719 s!9605) Nil!73271)) (t!388130 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3303 (List!73395 C!41422 List!73395 List!73395) Unit!168168)

(assert (=> b!7720016 (= lt!2666223 (lemmaMoveElementToOtherListKeepsConcatEq!3303 Nil!73271 (h!79719 s!9605) (t!388130 s!9605) s!9605))))

(assert (=> b!7720016 (= e!4579280 (findConcatSeparation!3599 (regOne!41608 r!14126) (regTwo!41608 r!14126) (++!17752 Nil!73271 (Cons!73271 (h!79719 s!9605) Nil!73271)) (t!388130 s!9605) s!9605))))

(declare-fun b!7720017 () Bool)

(assert (=> b!7720017 (= e!4579277 (Some!17568 (tuple2!69551 Nil!73271 s!9605)))))

(declare-fun b!7720018 () Bool)

(assert (=> b!7720018 (= e!4579277 e!4579280)))

(declare-fun c!1422973 () Bool)

(assert (=> b!7720018 (= c!1422973 (is-Nil!73271 s!9605))))

(declare-fun b!7720019 () Bool)

(assert (=> b!7720019 (= e!4579279 (not (isDefined!14185 lt!2666222)))))

(declare-fun b!7720020 () Bool)

(declare-fun res!3080537 () Bool)

(assert (=> b!7720020 (=> (not res!3080537) (not e!4579278))))

(assert (=> b!7720020 (= res!3080537 (matchR!10040 (regTwo!41608 r!14126) (_2!38078 (get!26016 lt!2666222))))))

(assert (= (and d!2337526 res!3080541) b!7720012))

(assert (= (and d!2337526 c!1422972) b!7720017))

(assert (= (and d!2337526 (not c!1422972)) b!7720018))

(assert (= (and b!7720018 c!1422973) b!7720013))

(assert (= (and b!7720018 (not c!1422973)) b!7720016))

(assert (= (and d!2337526 res!3080538) b!7720015))

(assert (= (and b!7720015 res!3080539) b!7720020))

(assert (= (and b!7720020 res!3080537) b!7720014))

(assert (= (and d!2337526 (not res!3080540)) b!7720019))

(declare-fun m!8199642 () Bool)

(assert (=> b!7720015 m!8199642))

(declare-fun m!8199644 () Bool)

(assert (=> b!7720015 m!8199644))

(declare-fun m!8199646 () Bool)

(assert (=> d!2337526 m!8199646))

(declare-fun m!8199648 () Bool)

(assert (=> d!2337526 m!8199648))

(assert (=> d!2337526 m!8199582))

(declare-fun m!8199650 () Bool)

(assert (=> b!7720012 m!8199650))

(assert (=> b!7720019 m!8199646))

(assert (=> b!7720020 m!8199642))

(declare-fun m!8199652 () Bool)

(assert (=> b!7720020 m!8199652))

(declare-fun m!8199654 () Bool)

(assert (=> b!7720016 m!8199654))

(assert (=> b!7720016 m!8199654))

(declare-fun m!8199656 () Bool)

(assert (=> b!7720016 m!8199656))

(declare-fun m!8199658 () Bool)

(assert (=> b!7720016 m!8199658))

(assert (=> b!7720016 m!8199654))

(declare-fun m!8199660 () Bool)

(assert (=> b!7720016 m!8199660))

(assert (=> b!7720014 m!8199642))

(declare-fun m!8199662 () Bool)

(assert (=> b!7720014 m!8199662))

(assert (=> b!7719806 d!2337526))

(declare-fun d!2337528 () Bool)

(declare-fun choose!59259 (Int) Bool)

(assert (=> d!2337528 (= (Exists!4669 lambda!471078) (choose!59259 lambda!471078))))

(declare-fun bs!1963016 () Bool)

(assert (= bs!1963016 d!2337528))

(declare-fun m!8199664 () Bool)

(assert (=> bs!1963016 m!8199664))

(assert (=> b!7719806 d!2337528))

(declare-fun b!7720047 () Bool)

(declare-fun e!4579291 () Bool)

(declare-fun tp!2264846 () Bool)

(assert (=> b!7720047 (= e!4579291 tp!2264846)))

(declare-fun b!7720046 () Bool)

(declare-fun tp!2264848 () Bool)

(declare-fun tp!2264845 () Bool)

(assert (=> b!7720046 (= e!4579291 (and tp!2264848 tp!2264845))))

(assert (=> b!7719807 (= tp!2264811 e!4579291)))

(declare-fun b!7720045 () Bool)

(assert (=> b!7720045 (= e!4579291 tp_is_empty!51451)))

(declare-fun b!7720048 () Bool)

(declare-fun tp!2264844 () Bool)

(declare-fun tp!2264847 () Bool)

(assert (=> b!7720048 (= e!4579291 (and tp!2264844 tp!2264847))))

(assert (= (and b!7719807 (is-ElementMatch!20548 (regOne!41608 r!14126))) b!7720045))

(assert (= (and b!7719807 (is-Concat!29393 (regOne!41608 r!14126))) b!7720046))

(assert (= (and b!7719807 (is-Star!20548 (regOne!41608 r!14126))) b!7720047))

(assert (= (and b!7719807 (is-Union!20548 (regOne!41608 r!14126))) b!7720048))

(declare-fun b!7720051 () Bool)

(declare-fun e!4579292 () Bool)

(declare-fun tp!2264851 () Bool)

(assert (=> b!7720051 (= e!4579292 tp!2264851)))

(declare-fun b!7720050 () Bool)

(declare-fun tp!2264853 () Bool)

(declare-fun tp!2264850 () Bool)

(assert (=> b!7720050 (= e!4579292 (and tp!2264853 tp!2264850))))

(assert (=> b!7719807 (= tp!2264812 e!4579292)))

(declare-fun b!7720049 () Bool)

(assert (=> b!7720049 (= e!4579292 tp_is_empty!51451)))

(declare-fun b!7720052 () Bool)

(declare-fun tp!2264849 () Bool)

(declare-fun tp!2264852 () Bool)

(assert (=> b!7720052 (= e!4579292 (and tp!2264849 tp!2264852))))

(assert (= (and b!7719807 (is-ElementMatch!20548 (regTwo!41608 r!14126))) b!7720049))

(assert (= (and b!7719807 (is-Concat!29393 (regTwo!41608 r!14126))) b!7720050))

(assert (= (and b!7719807 (is-Star!20548 (regTwo!41608 r!14126))) b!7720051))

(assert (= (and b!7719807 (is-Union!20548 (regTwo!41608 r!14126))) b!7720052))

(declare-fun b!7720055 () Bool)

(declare-fun e!4579293 () Bool)

(declare-fun tp!2264856 () Bool)

(assert (=> b!7720055 (= e!4579293 tp!2264856)))

(declare-fun b!7720054 () Bool)

(declare-fun tp!2264858 () Bool)

(declare-fun tp!2264855 () Bool)

(assert (=> b!7720054 (= e!4579293 (and tp!2264858 tp!2264855))))

(assert (=> b!7719808 (= tp!2264814 e!4579293)))

(declare-fun b!7720053 () Bool)

(assert (=> b!7720053 (= e!4579293 tp_is_empty!51451)))

(declare-fun b!7720056 () Bool)

(declare-fun tp!2264854 () Bool)

(declare-fun tp!2264857 () Bool)

(assert (=> b!7720056 (= e!4579293 (and tp!2264854 tp!2264857))))

(assert (= (and b!7719808 (is-ElementMatch!20548 (regOne!41609 r!14126))) b!7720053))

(assert (= (and b!7719808 (is-Concat!29393 (regOne!41609 r!14126))) b!7720054))

(assert (= (and b!7719808 (is-Star!20548 (regOne!41609 r!14126))) b!7720055))

(assert (= (and b!7719808 (is-Union!20548 (regOne!41609 r!14126))) b!7720056))

(declare-fun b!7720059 () Bool)

(declare-fun e!4579294 () Bool)

(declare-fun tp!2264861 () Bool)

(assert (=> b!7720059 (= e!4579294 tp!2264861)))

(declare-fun b!7720058 () Bool)

(declare-fun tp!2264863 () Bool)

(declare-fun tp!2264860 () Bool)

(assert (=> b!7720058 (= e!4579294 (and tp!2264863 tp!2264860))))

(assert (=> b!7719808 (= tp!2264813 e!4579294)))

(declare-fun b!7720057 () Bool)

(assert (=> b!7720057 (= e!4579294 tp_is_empty!51451)))

(declare-fun b!7720060 () Bool)

(declare-fun tp!2264859 () Bool)

(declare-fun tp!2264862 () Bool)

(assert (=> b!7720060 (= e!4579294 (and tp!2264859 tp!2264862))))

(assert (= (and b!7719808 (is-ElementMatch!20548 (regTwo!41609 r!14126))) b!7720057))

(assert (= (and b!7719808 (is-Concat!29393 (regTwo!41609 r!14126))) b!7720058))

(assert (= (and b!7719808 (is-Star!20548 (regTwo!41609 r!14126))) b!7720059))

(assert (= (and b!7719808 (is-Union!20548 (regTwo!41609 r!14126))) b!7720060))

(declare-fun b!7720065 () Bool)

(declare-fun e!4579297 () Bool)

(declare-fun tp!2264866 () Bool)

(assert (=> b!7720065 (= e!4579297 (and tp_is_empty!51451 tp!2264866))))

(assert (=> b!7719810 (= tp!2264810 e!4579297)))

(assert (= (and b!7719810 (is-Cons!73271 (t!388130 s!9605))) b!7720065))

(declare-fun b!7720068 () Bool)

(declare-fun e!4579298 () Bool)

(declare-fun tp!2264869 () Bool)

(assert (=> b!7720068 (= e!4579298 tp!2264869)))

(declare-fun b!7720067 () Bool)

(declare-fun tp!2264871 () Bool)

(declare-fun tp!2264868 () Bool)

(assert (=> b!7720067 (= e!4579298 (and tp!2264871 tp!2264868))))

(assert (=> b!7719805 (= tp!2264815 e!4579298)))

(declare-fun b!7720066 () Bool)

(assert (=> b!7720066 (= e!4579298 tp_is_empty!51451)))

(declare-fun b!7720069 () Bool)

(declare-fun tp!2264867 () Bool)

(declare-fun tp!2264870 () Bool)

(assert (=> b!7720069 (= e!4579298 (and tp!2264867 tp!2264870))))

(assert (= (and b!7719805 (is-ElementMatch!20548 (reg!20877 r!14126))) b!7720066))

(assert (= (and b!7719805 (is-Concat!29393 (reg!20877 r!14126))) b!7720067))

(assert (= (and b!7719805 (is-Star!20548 (reg!20877 r!14126))) b!7720068))

(assert (= (and b!7719805 (is-Union!20548 (reg!20877 r!14126))) b!7720069))

(push 1)

(assert (not b!7720046))

(assert (not b!7720050))

(assert (not b!7720020))

(assert (not b!7720060))

(assert (not b!7719934))

(assert (not b!7720059))

(assert (not bm!713497))

(assert (not b!7720047))

(assert (not bm!713494))

(assert (not b!7720016))

(assert (not b!7720065))

(assert (not d!2337528))

(assert (not b!7720012))

(assert (not b!7719941))

(assert (not bm!713495))

(assert (not d!2337514))

(assert (not b!7720069))

(assert (not b!7720015))

(assert (not b!7720067))

(assert (not b!7720058))

(assert (not b!7720054))

(assert tp_is_empty!51451)

(assert (not d!2337526))

(assert (not b!7719936))

(assert (not b!7720019))

(assert (not b!7720048))

(assert (not b!7719876))

(assert (not b!7720052))

(assert (not d!2337518))

(assert (not bm!713498))

(assert (not b!7720014))

(assert (not b!7720055))

(assert (not b!7719930))

(assert (not bm!713508))

(assert (not b!7720051))

(assert (not b!7719940))

(assert (not b!7720068))

(assert (not b!7720056))

(assert (not d!2337524))

(assert (not b!7719867))

(assert (not b!7719931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

