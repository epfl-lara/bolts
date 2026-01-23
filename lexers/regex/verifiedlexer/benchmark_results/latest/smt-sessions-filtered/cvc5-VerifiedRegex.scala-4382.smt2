; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233010 () Bool)

(assert start!233010)

(declare-fun b!2374390 () Bool)

(assert (=> b!2374390 true))

(assert (=> b!2374390 true))

(declare-fun lambda!88066 () Int)

(declare-fun lambda!88065 () Int)

(assert (=> b!2374390 (not (= lambda!88066 lambda!88065))))

(assert (=> b!2374390 true))

(assert (=> b!2374390 true))

(declare-fun b!2374383 () Bool)

(declare-fun e!1515119 () Bool)

(declare-fun tp_is_empty!11325 () Bool)

(assert (=> b!2374383 (= e!1515119 tp_is_empty!11325)))

(declare-fun b!2374384 () Bool)

(declare-fun res!1008048 () Bool)

(declare-fun e!1515124 () Bool)

(assert (=> b!2374384 (=> res!1008048 e!1515124)))

(declare-datatypes ((C!14070 0))(
  ( (C!14071 (val!8277 Int)) )
))
(declare-datatypes ((Regex!6956 0))(
  ( (ElementMatch!6956 (c!377434 C!14070)) (Concat!11592 (regOne!14424 Regex!6956) (regTwo!14424 Regex!6956)) (EmptyExpr!6956) (Star!6956 (reg!7285 Regex!6956)) (EmptyLang!6956) (Union!6956 (regOne!14425 Regex!6956) (regTwo!14425 Regex!6956)) )
))
(declare-datatypes ((List!28150 0))(
  ( (Nil!28052) (Cons!28052 (h!33453 Regex!6956) (t!208127 List!28150)) )
))
(declare-fun l!9164 () List!28150)

(declare-fun isEmpty!15991 (List!28150) Bool)

(assert (=> b!2374384 (= res!1008048 (isEmpty!15991 l!9164))))

(declare-fun b!2374385 () Bool)

(declare-fun res!1008041 () Bool)

(declare-fun e!1515122 () Bool)

(assert (=> b!2374385 (=> res!1008041 e!1515122)))

(declare-fun lt!866781 () List!28150)

(declare-fun generalisedConcat!57 (List!28150) Regex!6956)

(assert (=> b!2374385 (= res!1008041 (not (= (generalisedConcat!57 lt!866781) EmptyExpr!6956)))))

(declare-fun b!2374386 () Bool)

(declare-fun e!1515123 () Bool)

(declare-fun tp!758564 () Bool)

(declare-fun tp!758566 () Bool)

(assert (=> b!2374386 (= e!1515123 (and tp!758564 tp!758566))))

(declare-fun b!2374387 () Bool)

(declare-fun tp!758568 () Bool)

(declare-fun tp!758563 () Bool)

(assert (=> b!2374387 (= e!1515119 (and tp!758568 tp!758563))))

(declare-fun res!1008046 () Bool)

(declare-fun e!1515125 () Bool)

(assert (=> start!233010 (=> (not res!1008046) (not e!1515125))))

(declare-fun lambda!88064 () Int)

(declare-fun forall!5590 (List!28150 Int) Bool)

(assert (=> start!233010 (= res!1008046 (forall!5590 l!9164 lambda!88064))))

(assert (=> start!233010 e!1515125))

(assert (=> start!233010 e!1515123))

(assert (=> start!233010 e!1515119))

(declare-fun e!1515121 () Bool)

(assert (=> start!233010 e!1515121))

(declare-fun b!2374388 () Bool)

(declare-fun tp!758567 () Bool)

(assert (=> b!2374388 (= e!1515121 (and tp_is_empty!11325 tp!758567))))

(declare-fun b!2374389 () Bool)

(declare-fun tp!758569 () Bool)

(declare-fun tp!758562 () Bool)

(assert (=> b!2374389 (= e!1515119 (and tp!758569 tp!758562))))

(declare-fun e!1515120 () Bool)

(assert (=> b!2374390 (= e!1515120 e!1515124)))

(declare-fun res!1008043 () Bool)

(assert (=> b!2374390 (=> res!1008043 e!1515124)))

(declare-fun lt!866785 () Bool)

(declare-fun lt!866783 () Bool)

(assert (=> b!2374390 (= res!1008043 (not (= lt!866785 lt!866783)))))

(declare-fun Exists!1018 (Int) Bool)

(assert (=> b!2374390 (= (Exists!1018 lambda!88065) (Exists!1018 lambda!88066))))

(declare-datatypes ((Unit!40947 0))(
  ( (Unit!40948) )
))
(declare-fun lt!866782 () Unit!40947)

(declare-fun r!13927 () Regex!6956)

(declare-datatypes ((List!28151 0))(
  ( (Nil!28053) (Cons!28053 (h!33454 C!14070) (t!208128 List!28151)) )
))
(declare-fun s!9460 () List!28151)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!357 (Regex!6956 Regex!6956 List!28151) Unit!40947)

(assert (=> b!2374390 (= lt!866782 (lemmaExistCutMatchRandMatchRSpecEquivalent!357 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460))))

(assert (=> b!2374390 (= lt!866783 (Exists!1018 lambda!88065))))

(declare-datatypes ((tuple2!27776 0))(
  ( (tuple2!27777 (_1!16429 List!28151) (_2!16429 List!28151)) )
))
(declare-datatypes ((Option!5499 0))(
  ( (None!5498) (Some!5498 (v!30906 tuple2!27776)) )
))
(declare-fun isDefined!4327 (Option!5499) Bool)

(declare-fun findConcatSeparation!607 (Regex!6956 Regex!6956 List!28151 List!28151 List!28151) Option!5499)

(assert (=> b!2374390 (= lt!866783 (isDefined!4327 (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) Nil!28053 s!9460 s!9460)))))

(declare-fun lt!866784 () Unit!40947)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!607 (Regex!6956 Regex!6956 List!28151) Unit!40947)

(assert (=> b!2374390 (= lt!866784 (lemmaFindConcatSeparationEquivalentToExists!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460))))

(declare-fun b!2374391 () Bool)

(assert (=> b!2374391 (= e!1515124 e!1515122)))

(declare-fun res!1008042 () Bool)

(assert (=> b!2374391 (=> res!1008042 e!1515122)))

(assert (=> b!2374391 (= res!1008042 (not (isEmpty!15991 lt!866781)))))

(declare-fun tail!3421 (List!28150) List!28150)

(assert (=> b!2374391 (= lt!866781 (tail!3421 l!9164))))

(declare-fun b!2374392 () Bool)

(assert (=> b!2374392 (= e!1515125 (not e!1515120))))

(declare-fun res!1008045 () Bool)

(assert (=> b!2374392 (=> res!1008045 e!1515120)))

(assert (=> b!2374392 (= res!1008045 (not (is-Concat!11592 r!13927)))))

(declare-fun lt!866779 () Bool)

(assert (=> b!2374392 (= lt!866779 lt!866785)))

(declare-fun matchRSpec!805 (Regex!6956 List!28151) Bool)

(assert (=> b!2374392 (= lt!866785 (matchRSpec!805 r!13927 s!9460))))

(declare-fun matchR!3073 (Regex!6956 List!28151) Bool)

(assert (=> b!2374392 (= lt!866779 (matchR!3073 r!13927 s!9460))))

(declare-fun lt!866780 () Unit!40947)

(declare-fun mainMatchTheorem!805 (Regex!6956 List!28151) Unit!40947)

(assert (=> b!2374392 (= lt!866780 (mainMatchTheorem!805 r!13927 s!9460))))

(declare-fun b!2374393 () Bool)

(declare-fun tp!758565 () Bool)

(assert (=> b!2374393 (= e!1515119 tp!758565)))

(declare-fun b!2374394 () Bool)

(declare-fun res!1008047 () Bool)

(assert (=> b!2374394 (=> (not res!1008047) (not e!1515125))))

(assert (=> b!2374394 (= res!1008047 (= r!13927 (generalisedConcat!57 l!9164)))))

(declare-fun b!2374395 () Bool)

(assert (=> b!2374395 (= e!1515122 (not (= l!9164 Nil!28052)))))

(declare-fun b!2374396 () Bool)

(declare-fun res!1008044 () Bool)

(assert (=> b!2374396 (=> res!1008044 e!1515122)))

(declare-fun head!5151 (List!28150) Regex!6956)

(assert (=> b!2374396 (= res!1008044 (matchR!3073 (head!5151 l!9164) s!9460))))

(assert (= (and start!233010 res!1008046) b!2374394))

(assert (= (and b!2374394 res!1008047) b!2374392))

(assert (= (and b!2374392 (not res!1008045)) b!2374390))

(assert (= (and b!2374390 (not res!1008043)) b!2374384))

(assert (= (and b!2374384 (not res!1008048)) b!2374391))

(assert (= (and b!2374391 (not res!1008042)) b!2374385))

(assert (= (and b!2374385 (not res!1008041)) b!2374396))

(assert (= (and b!2374396 (not res!1008044)) b!2374395))

(assert (= (and start!233010 (is-Cons!28052 l!9164)) b!2374386))

(assert (= (and start!233010 (is-ElementMatch!6956 r!13927)) b!2374383))

(assert (= (and start!233010 (is-Concat!11592 r!13927)) b!2374389))

(assert (= (and start!233010 (is-Star!6956 r!13927)) b!2374393))

(assert (= (and start!233010 (is-Union!6956 r!13927)) b!2374387))

(assert (= (and start!233010 (is-Cons!28053 s!9460)) b!2374388))

(declare-fun m!2780891 () Bool)

(assert (=> b!2374396 m!2780891))

(assert (=> b!2374396 m!2780891))

(declare-fun m!2780893 () Bool)

(assert (=> b!2374396 m!2780893))

(declare-fun m!2780895 () Bool)

(assert (=> b!2374384 m!2780895))

(declare-fun m!2780897 () Bool)

(assert (=> b!2374394 m!2780897))

(declare-fun m!2780899 () Bool)

(assert (=> b!2374391 m!2780899))

(declare-fun m!2780901 () Bool)

(assert (=> b!2374391 m!2780901))

(declare-fun m!2780903 () Bool)

(assert (=> b!2374385 m!2780903))

(declare-fun m!2780905 () Bool)

(assert (=> b!2374390 m!2780905))

(declare-fun m!2780907 () Bool)

(assert (=> b!2374390 m!2780907))

(declare-fun m!2780909 () Bool)

(assert (=> b!2374390 m!2780909))

(declare-fun m!2780911 () Bool)

(assert (=> b!2374390 m!2780911))

(assert (=> b!2374390 m!2780905))

(declare-fun m!2780913 () Bool)

(assert (=> b!2374390 m!2780913))

(declare-fun m!2780915 () Bool)

(assert (=> b!2374390 m!2780915))

(assert (=> b!2374390 m!2780913))

(declare-fun m!2780917 () Bool)

(assert (=> start!233010 m!2780917))

(declare-fun m!2780919 () Bool)

(assert (=> b!2374392 m!2780919))

(declare-fun m!2780921 () Bool)

(assert (=> b!2374392 m!2780921))

(declare-fun m!2780923 () Bool)

(assert (=> b!2374392 m!2780923))

(push 1)

(assert (not b!2374388))

(assert (not b!2374390))

(assert (not b!2374389))

(assert (not b!2374392))

(assert (not b!2374386))

(assert (not b!2374391))

(assert (not b!2374387))

(assert tp_is_empty!11325)

(assert (not b!2374396))

(assert (not b!2374384))

(assert (not start!233010))

(assert (not b!2374385))

(assert (not b!2374394))

(assert (not b!2374393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461455 () Bool)

(declare-fun b!2374501 () Bool)

(assert (= bs!461455 (and b!2374501 b!2374390)))

(declare-fun lambda!88082 () Int)

(assert (=> bs!461455 (not (= lambda!88082 lambda!88065))))

(assert (=> bs!461455 (not (= lambda!88082 lambda!88066))))

(assert (=> b!2374501 true))

(assert (=> b!2374501 true))

(declare-fun bs!461456 () Bool)

(declare-fun b!2374504 () Bool)

(assert (= bs!461456 (and b!2374504 b!2374390)))

(declare-fun lambda!88083 () Int)

(assert (=> bs!461456 (not (= lambda!88083 lambda!88065))))

(assert (=> bs!461456 (= lambda!88083 lambda!88066)))

(declare-fun bs!461457 () Bool)

(assert (= bs!461457 (and b!2374504 b!2374501)))

(assert (=> bs!461457 (not (= lambda!88083 lambda!88082))))

(assert (=> b!2374504 true))

(assert (=> b!2374504 true))

(declare-fun b!2374495 () Bool)

(declare-fun e!1515178 () Bool)

(assert (=> b!2374495 (= e!1515178 (matchRSpec!805 (regTwo!14425 r!13927) s!9460))))

(declare-fun b!2374496 () Bool)

(declare-fun c!377446 () Bool)

(assert (=> b!2374496 (= c!377446 (is-Union!6956 r!13927))))

(declare-fun e!1515181 () Bool)

(declare-fun e!1515179 () Bool)

(assert (=> b!2374496 (= e!1515181 e!1515179)))

(declare-fun bm!144322 () Bool)

(declare-fun c!377445 () Bool)

(declare-fun call!144327 () Bool)

(assert (=> bm!144322 (= call!144327 (Exists!1018 (ite c!377445 lambda!88082 lambda!88083)))))

(declare-fun b!2374497 () Bool)

(declare-fun e!1515175 () Bool)

(declare-fun e!1515177 () Bool)

(assert (=> b!2374497 (= e!1515175 e!1515177)))

(declare-fun res!1008105 () Bool)

(assert (=> b!2374497 (= res!1008105 (not (is-EmptyLang!6956 r!13927)))))

(assert (=> b!2374497 (=> (not res!1008105) (not e!1515177))))

(declare-fun b!2374498 () Bool)

(assert (=> b!2374498 (= e!1515181 (= s!9460 (Cons!28053 (c!377434 r!13927) Nil!28053)))))

(declare-fun b!2374499 () Bool)

(declare-fun c!377447 () Bool)

(assert (=> b!2374499 (= c!377447 (is-ElementMatch!6956 r!13927))))

(assert (=> b!2374499 (= e!1515177 e!1515181)))

(declare-fun d!695839 () Bool)

(declare-fun c!377444 () Bool)

(assert (=> d!695839 (= c!377444 (is-EmptyExpr!6956 r!13927))))

(assert (=> d!695839 (= (matchRSpec!805 r!13927 s!9460) e!1515175)))

(declare-fun b!2374500 () Bool)

(assert (=> b!2374500 (= e!1515179 e!1515178)))

(declare-fun res!1008106 () Bool)

(assert (=> b!2374500 (= res!1008106 (matchRSpec!805 (regOne!14425 r!13927) s!9460))))

(assert (=> b!2374500 (=> res!1008106 e!1515178)))

(declare-fun e!1515176 () Bool)

(assert (=> b!2374501 (= e!1515176 call!144327)))

(declare-fun b!2374502 () Bool)

(declare-fun e!1515180 () Bool)

(assert (=> b!2374502 (= e!1515179 e!1515180)))

(assert (=> b!2374502 (= c!377445 (is-Star!6956 r!13927))))

(declare-fun bm!144323 () Bool)

(declare-fun call!144328 () Bool)

(declare-fun isEmpty!15993 (List!28151) Bool)

(assert (=> bm!144323 (= call!144328 (isEmpty!15993 s!9460))))

(declare-fun b!2374503 () Bool)

(assert (=> b!2374503 (= e!1515175 call!144328)))

(assert (=> b!2374504 (= e!1515180 call!144327)))

(declare-fun b!2374505 () Bool)

(declare-fun res!1008107 () Bool)

(assert (=> b!2374505 (=> res!1008107 e!1515176)))

(assert (=> b!2374505 (= res!1008107 call!144328)))

(assert (=> b!2374505 (= e!1515180 e!1515176)))

(assert (= (and d!695839 c!377444) b!2374503))

(assert (= (and d!695839 (not c!377444)) b!2374497))

(assert (= (and b!2374497 res!1008105) b!2374499))

(assert (= (and b!2374499 c!377447) b!2374498))

(assert (= (and b!2374499 (not c!377447)) b!2374496))

(assert (= (and b!2374496 c!377446) b!2374500))

(assert (= (and b!2374496 (not c!377446)) b!2374502))

(assert (= (and b!2374500 (not res!1008106)) b!2374495))

(assert (= (and b!2374502 c!377445) b!2374505))

(assert (= (and b!2374502 (not c!377445)) b!2374504))

(assert (= (and b!2374505 (not res!1008107)) b!2374501))

(assert (= (or b!2374501 b!2374504) bm!144322))

(assert (= (or b!2374503 b!2374505) bm!144323))

(declare-fun m!2780959 () Bool)

(assert (=> b!2374495 m!2780959))

(declare-fun m!2780961 () Bool)

(assert (=> bm!144322 m!2780961))

(declare-fun m!2780963 () Bool)

(assert (=> b!2374500 m!2780963))

(declare-fun m!2780965 () Bool)

(assert (=> bm!144323 m!2780965))

(assert (=> b!2374392 d!695839))

(declare-fun bm!144326 () Bool)

(declare-fun call!144331 () Bool)

(assert (=> bm!144326 (= call!144331 (isEmpty!15993 s!9460))))

(declare-fun b!2374536 () Bool)

(declare-fun e!1515201 () Bool)

(declare-fun e!1515203 () Bool)

(assert (=> b!2374536 (= e!1515201 e!1515203)))

(declare-fun res!1008133 () Bool)

(assert (=> b!2374536 (=> (not res!1008133) (not e!1515203))))

(declare-fun lt!866809 () Bool)

(assert (=> b!2374536 (= res!1008133 (not lt!866809))))

(declare-fun b!2374537 () Bool)

(declare-fun e!1515202 () Bool)

(assert (=> b!2374537 (= e!1515203 e!1515202)))

(declare-fun res!1008132 () Bool)

(assert (=> b!2374537 (=> res!1008132 e!1515202)))

(assert (=> b!2374537 (= res!1008132 call!144331)))

(declare-fun b!2374538 () Bool)

(declare-fun res!1008129 () Bool)

(assert (=> b!2374538 (=> res!1008129 e!1515201)))

(declare-fun e!1515204 () Bool)

(assert (=> b!2374538 (= res!1008129 e!1515204)))

(declare-fun res!1008131 () Bool)

(assert (=> b!2374538 (=> (not res!1008131) (not e!1515204))))

(assert (=> b!2374538 (= res!1008131 lt!866809)))

(declare-fun b!2374539 () Bool)

(declare-fun head!5153 (List!28151) C!14070)

(assert (=> b!2374539 (= e!1515204 (= (head!5153 s!9460) (c!377434 r!13927)))))

(declare-fun b!2374540 () Bool)

(assert (=> b!2374540 (= e!1515202 (not (= (head!5153 s!9460) (c!377434 r!13927))))))

(declare-fun b!2374541 () Bool)

(declare-fun res!1008130 () Bool)

(assert (=> b!2374541 (=> (not res!1008130) (not e!1515204))))

(declare-fun tail!3423 (List!28151) List!28151)

(assert (=> b!2374541 (= res!1008130 (isEmpty!15993 (tail!3423 s!9460)))))

(declare-fun b!2374543 () Bool)

(declare-fun e!1515200 () Bool)

(declare-fun e!1515198 () Bool)

(assert (=> b!2374543 (= e!1515200 e!1515198)))

(declare-fun c!377455 () Bool)

(assert (=> b!2374543 (= c!377455 (is-EmptyLang!6956 r!13927))))

(declare-fun b!2374544 () Bool)

(assert (=> b!2374544 (= e!1515200 (= lt!866809 call!144331))))

(declare-fun b!2374545 () Bool)

(declare-fun e!1515199 () Bool)

(declare-fun nullable!2012 (Regex!6956) Bool)

(assert (=> b!2374545 (= e!1515199 (nullable!2012 r!13927))))

(declare-fun b!2374546 () Bool)

(declare-fun res!1008128 () Bool)

(assert (=> b!2374546 (=> (not res!1008128) (not e!1515204))))

(assert (=> b!2374546 (= res!1008128 (not call!144331))))

(declare-fun b!2374547 () Bool)

(declare-fun res!1008127 () Bool)

(assert (=> b!2374547 (=> res!1008127 e!1515201)))

(assert (=> b!2374547 (= res!1008127 (not (is-ElementMatch!6956 r!13927)))))

(assert (=> b!2374547 (= e!1515198 e!1515201)))

(declare-fun b!2374542 () Bool)

(assert (=> b!2374542 (= e!1515198 (not lt!866809))))

(declare-fun d!695843 () Bool)

(assert (=> d!695843 e!1515200))

(declare-fun c!377454 () Bool)

(assert (=> d!695843 (= c!377454 (is-EmptyExpr!6956 r!13927))))

(assert (=> d!695843 (= lt!866809 e!1515199)))

(declare-fun c!377456 () Bool)

(assert (=> d!695843 (= c!377456 (isEmpty!15993 s!9460))))

(declare-fun validRegex!2683 (Regex!6956) Bool)

(assert (=> d!695843 (validRegex!2683 r!13927)))

(assert (=> d!695843 (= (matchR!3073 r!13927 s!9460) lt!866809)))

(declare-fun b!2374548 () Bool)

(declare-fun res!1008126 () Bool)

(assert (=> b!2374548 (=> res!1008126 e!1515202)))

(assert (=> b!2374548 (= res!1008126 (not (isEmpty!15993 (tail!3423 s!9460))))))

(declare-fun b!2374549 () Bool)

(declare-fun derivativeStep!1670 (Regex!6956 C!14070) Regex!6956)

(assert (=> b!2374549 (= e!1515199 (matchR!3073 (derivativeStep!1670 r!13927 (head!5153 s!9460)) (tail!3423 s!9460)))))

(assert (= (and d!695843 c!377456) b!2374545))

(assert (= (and d!695843 (not c!377456)) b!2374549))

(assert (= (and d!695843 c!377454) b!2374544))

(assert (= (and d!695843 (not c!377454)) b!2374543))

(assert (= (and b!2374543 c!377455) b!2374542))

(assert (= (and b!2374543 (not c!377455)) b!2374547))

(assert (= (and b!2374547 (not res!1008127)) b!2374538))

(assert (= (and b!2374538 res!1008131) b!2374546))

(assert (= (and b!2374546 res!1008128) b!2374541))

(assert (= (and b!2374541 res!1008130) b!2374539))

(assert (= (and b!2374538 (not res!1008129)) b!2374536))

(assert (= (and b!2374536 res!1008133) b!2374537))

(assert (= (and b!2374537 (not res!1008132)) b!2374548))

(assert (= (and b!2374548 (not res!1008126)) b!2374540))

(assert (= (or b!2374544 b!2374537 b!2374546) bm!144326))

(assert (=> d!695843 m!2780965))

(declare-fun m!2780971 () Bool)

(assert (=> d!695843 m!2780971))

(declare-fun m!2780973 () Bool)

(assert (=> b!2374545 m!2780973))

(declare-fun m!2780975 () Bool)

(assert (=> b!2374540 m!2780975))

(declare-fun m!2780977 () Bool)

(assert (=> b!2374541 m!2780977))

(assert (=> b!2374541 m!2780977))

(declare-fun m!2780979 () Bool)

(assert (=> b!2374541 m!2780979))

(assert (=> bm!144326 m!2780965))

(assert (=> b!2374549 m!2780975))

(assert (=> b!2374549 m!2780975))

(declare-fun m!2780981 () Bool)

(assert (=> b!2374549 m!2780981))

(assert (=> b!2374549 m!2780977))

(assert (=> b!2374549 m!2780981))

(assert (=> b!2374549 m!2780977))

(declare-fun m!2780983 () Bool)

(assert (=> b!2374549 m!2780983))

(assert (=> b!2374548 m!2780977))

(assert (=> b!2374548 m!2780977))

(assert (=> b!2374548 m!2780979))

(assert (=> b!2374539 m!2780975))

(assert (=> b!2374392 d!695843))

(declare-fun d!695847 () Bool)

(assert (=> d!695847 (= (matchR!3073 r!13927 s!9460) (matchRSpec!805 r!13927 s!9460))))

(declare-fun lt!866814 () Unit!40947)

(declare-fun choose!13844 (Regex!6956 List!28151) Unit!40947)

(assert (=> d!695847 (= lt!866814 (choose!13844 r!13927 s!9460))))

(assert (=> d!695847 (validRegex!2683 r!13927)))

(assert (=> d!695847 (= (mainMatchTheorem!805 r!13927 s!9460) lt!866814)))

(declare-fun bs!461458 () Bool)

(assert (= bs!461458 d!695847))

(assert (=> bs!461458 m!2780921))

(assert (=> bs!461458 m!2780919))

(declare-fun m!2780985 () Bool)

(assert (=> bs!461458 m!2780985))

(assert (=> bs!461458 m!2780971))

(assert (=> b!2374392 d!695847))

(declare-fun d!695849 () Bool)

(declare-fun res!1008154 () Bool)

(declare-fun e!1515223 () Bool)

(assert (=> d!695849 (=> res!1008154 e!1515223)))

(assert (=> d!695849 (= res!1008154 (is-Nil!28052 l!9164))))

(assert (=> d!695849 (= (forall!5590 l!9164 lambda!88064) e!1515223)))

(declare-fun b!2374582 () Bool)

(declare-fun e!1515224 () Bool)

(assert (=> b!2374582 (= e!1515223 e!1515224)))

(declare-fun res!1008155 () Bool)

(assert (=> b!2374582 (=> (not res!1008155) (not e!1515224))))

(declare-fun dynLambda!12079 (Int Regex!6956) Bool)

(assert (=> b!2374582 (= res!1008155 (dynLambda!12079 lambda!88064 (h!33453 l!9164)))))

(declare-fun b!2374583 () Bool)

(assert (=> b!2374583 (= e!1515224 (forall!5590 (t!208127 l!9164) lambda!88064))))

(assert (= (and d!695849 (not res!1008154)) b!2374582))

(assert (= (and b!2374582 res!1008155) b!2374583))

(declare-fun b_lambda!73981 () Bool)

(assert (=> (not b_lambda!73981) (not b!2374582)))

(declare-fun m!2780987 () Bool)

(assert (=> b!2374582 m!2780987))

(declare-fun m!2780989 () Bool)

(assert (=> b!2374583 m!2780989))

(assert (=> start!233010 d!695849))

(declare-fun d!695851 () Bool)

(assert (=> d!695851 (= (isEmpty!15991 lt!866781) (is-Nil!28052 lt!866781))))

(assert (=> b!2374391 d!695851))

(declare-fun d!695853 () Bool)

(assert (=> d!695853 (= (tail!3421 l!9164) (t!208127 l!9164))))

(assert (=> b!2374391 d!695853))

(declare-fun bm!144329 () Bool)

(declare-fun call!144334 () Bool)

(assert (=> bm!144329 (= call!144334 (isEmpty!15993 s!9460))))

(declare-fun b!2374584 () Bool)

(declare-fun e!1515228 () Bool)

(declare-fun e!1515230 () Bool)

(assert (=> b!2374584 (= e!1515228 e!1515230)))

(declare-fun res!1008163 () Bool)

(assert (=> b!2374584 (=> (not res!1008163) (not e!1515230))))

(declare-fun lt!866815 () Bool)

(assert (=> b!2374584 (= res!1008163 (not lt!866815))))

(declare-fun b!2374585 () Bool)

(declare-fun e!1515229 () Bool)

(assert (=> b!2374585 (= e!1515230 e!1515229)))

(declare-fun res!1008162 () Bool)

(assert (=> b!2374585 (=> res!1008162 e!1515229)))

(assert (=> b!2374585 (= res!1008162 call!144334)))

(declare-fun b!2374586 () Bool)

(declare-fun res!1008159 () Bool)

(assert (=> b!2374586 (=> res!1008159 e!1515228)))

(declare-fun e!1515231 () Bool)

(assert (=> b!2374586 (= res!1008159 e!1515231)))

(declare-fun res!1008161 () Bool)

(assert (=> b!2374586 (=> (not res!1008161) (not e!1515231))))

(assert (=> b!2374586 (= res!1008161 lt!866815)))

(declare-fun b!2374587 () Bool)

(assert (=> b!2374587 (= e!1515231 (= (head!5153 s!9460) (c!377434 (head!5151 l!9164))))))

(declare-fun b!2374588 () Bool)

(assert (=> b!2374588 (= e!1515229 (not (= (head!5153 s!9460) (c!377434 (head!5151 l!9164)))))))

(declare-fun b!2374589 () Bool)

(declare-fun res!1008160 () Bool)

(assert (=> b!2374589 (=> (not res!1008160) (not e!1515231))))

(assert (=> b!2374589 (= res!1008160 (isEmpty!15993 (tail!3423 s!9460)))))

(declare-fun b!2374591 () Bool)

(declare-fun e!1515227 () Bool)

(declare-fun e!1515225 () Bool)

(assert (=> b!2374591 (= e!1515227 e!1515225)))

(declare-fun c!377464 () Bool)

(assert (=> b!2374591 (= c!377464 (is-EmptyLang!6956 (head!5151 l!9164)))))

(declare-fun b!2374592 () Bool)

(assert (=> b!2374592 (= e!1515227 (= lt!866815 call!144334))))

(declare-fun b!2374593 () Bool)

(declare-fun e!1515226 () Bool)

(assert (=> b!2374593 (= e!1515226 (nullable!2012 (head!5151 l!9164)))))

(declare-fun b!2374594 () Bool)

(declare-fun res!1008158 () Bool)

(assert (=> b!2374594 (=> (not res!1008158) (not e!1515231))))

(assert (=> b!2374594 (= res!1008158 (not call!144334))))

(declare-fun b!2374595 () Bool)

(declare-fun res!1008157 () Bool)

(assert (=> b!2374595 (=> res!1008157 e!1515228)))

(assert (=> b!2374595 (= res!1008157 (not (is-ElementMatch!6956 (head!5151 l!9164))))))

(assert (=> b!2374595 (= e!1515225 e!1515228)))

(declare-fun b!2374590 () Bool)

(assert (=> b!2374590 (= e!1515225 (not lt!866815))))

(declare-fun d!695855 () Bool)

(assert (=> d!695855 e!1515227))

(declare-fun c!377463 () Bool)

(assert (=> d!695855 (= c!377463 (is-EmptyExpr!6956 (head!5151 l!9164)))))

(assert (=> d!695855 (= lt!866815 e!1515226)))

(declare-fun c!377465 () Bool)

(assert (=> d!695855 (= c!377465 (isEmpty!15993 s!9460))))

(assert (=> d!695855 (validRegex!2683 (head!5151 l!9164))))

(assert (=> d!695855 (= (matchR!3073 (head!5151 l!9164) s!9460) lt!866815)))

(declare-fun b!2374596 () Bool)

(declare-fun res!1008156 () Bool)

(assert (=> b!2374596 (=> res!1008156 e!1515229)))

(assert (=> b!2374596 (= res!1008156 (not (isEmpty!15993 (tail!3423 s!9460))))))

(declare-fun b!2374597 () Bool)

(assert (=> b!2374597 (= e!1515226 (matchR!3073 (derivativeStep!1670 (head!5151 l!9164) (head!5153 s!9460)) (tail!3423 s!9460)))))

(assert (= (and d!695855 c!377465) b!2374593))

(assert (= (and d!695855 (not c!377465)) b!2374597))

(assert (= (and d!695855 c!377463) b!2374592))

(assert (= (and d!695855 (not c!377463)) b!2374591))

(assert (= (and b!2374591 c!377464) b!2374590))

(assert (= (and b!2374591 (not c!377464)) b!2374595))

(assert (= (and b!2374595 (not res!1008157)) b!2374586))

(assert (= (and b!2374586 res!1008161) b!2374594))

(assert (= (and b!2374594 res!1008158) b!2374589))

(assert (= (and b!2374589 res!1008160) b!2374587))

(assert (= (and b!2374586 (not res!1008159)) b!2374584))

(assert (= (and b!2374584 res!1008163) b!2374585))

(assert (= (and b!2374585 (not res!1008162)) b!2374596))

(assert (= (and b!2374596 (not res!1008156)) b!2374588))

(assert (= (or b!2374592 b!2374585 b!2374594) bm!144329))

(assert (=> d!695855 m!2780965))

(assert (=> d!695855 m!2780891))

(declare-fun m!2780991 () Bool)

(assert (=> d!695855 m!2780991))

(assert (=> b!2374593 m!2780891))

(declare-fun m!2780993 () Bool)

(assert (=> b!2374593 m!2780993))

(assert (=> b!2374588 m!2780975))

(assert (=> b!2374589 m!2780977))

(assert (=> b!2374589 m!2780977))

(assert (=> b!2374589 m!2780979))

(assert (=> bm!144329 m!2780965))

(assert (=> b!2374597 m!2780975))

(assert (=> b!2374597 m!2780891))

(assert (=> b!2374597 m!2780975))

(declare-fun m!2780995 () Bool)

(assert (=> b!2374597 m!2780995))

(assert (=> b!2374597 m!2780977))

(assert (=> b!2374597 m!2780995))

(assert (=> b!2374597 m!2780977))

(declare-fun m!2780997 () Bool)

(assert (=> b!2374597 m!2780997))

(assert (=> b!2374596 m!2780977))

(assert (=> b!2374596 m!2780977))

(assert (=> b!2374596 m!2780979))

(assert (=> b!2374587 m!2780975))

(assert (=> b!2374396 d!695855))

(declare-fun d!695857 () Bool)

(assert (=> d!695857 (= (head!5151 l!9164) (h!33453 l!9164))))

(assert (=> b!2374396 d!695857))

(declare-fun bs!461459 () Bool)

(declare-fun d!695859 () Bool)

(assert (= bs!461459 (and d!695859 start!233010)))

(declare-fun lambda!88086 () Int)

(assert (=> bs!461459 (= lambda!88086 lambda!88064)))

(declare-fun b!2374632 () Bool)

(declare-fun e!1515251 () Bool)

(declare-fun e!1515252 () Bool)

(assert (=> b!2374632 (= e!1515251 e!1515252)))

(declare-fun c!377478 () Bool)

(assert (=> b!2374632 (= c!377478 (isEmpty!15991 (tail!3421 lt!866781)))))

(declare-fun b!2374633 () Bool)

(declare-fun e!1515255 () Bool)

(assert (=> b!2374633 (= e!1515255 (isEmpty!15991 (t!208127 lt!866781)))))

(declare-fun b!2374634 () Bool)

(declare-fun e!1515254 () Regex!6956)

(assert (=> b!2374634 (= e!1515254 EmptyExpr!6956)))

(declare-fun b!2374635 () Bool)

(declare-fun lt!866819 () Regex!6956)

(assert (=> b!2374635 (= e!1515252 (= lt!866819 (head!5151 lt!866781)))))

(declare-fun b!2374636 () Bool)

(declare-fun e!1515253 () Regex!6956)

(assert (=> b!2374636 (= e!1515253 e!1515254)))

(declare-fun c!377480 () Bool)

(assert (=> b!2374636 (= c!377480 (is-Cons!28052 lt!866781))))

(declare-fun b!2374637 () Bool)

(assert (=> b!2374637 (= e!1515254 (Concat!11592 (h!33453 lt!866781) (generalisedConcat!57 (t!208127 lt!866781))))))

(declare-fun b!2374638 () Bool)

(declare-fun isEmptyExpr!33 (Regex!6956) Bool)

(assert (=> b!2374638 (= e!1515251 (isEmptyExpr!33 lt!866819))))

(declare-fun e!1515256 () Bool)

(assert (=> d!695859 e!1515256))

(declare-fun res!1008176 () Bool)

(assert (=> d!695859 (=> (not res!1008176) (not e!1515256))))

(assert (=> d!695859 (= res!1008176 (validRegex!2683 lt!866819))))

(assert (=> d!695859 (= lt!866819 e!1515253)))

(declare-fun c!377477 () Bool)

(assert (=> d!695859 (= c!377477 e!1515255)))

(declare-fun res!1008177 () Bool)

(assert (=> d!695859 (=> (not res!1008177) (not e!1515255))))

(assert (=> d!695859 (= res!1008177 (is-Cons!28052 lt!866781))))

(assert (=> d!695859 (forall!5590 lt!866781 lambda!88086)))

(assert (=> d!695859 (= (generalisedConcat!57 lt!866781) lt!866819)))

(declare-fun b!2374639 () Bool)

(declare-fun isConcat!33 (Regex!6956) Bool)

(assert (=> b!2374639 (= e!1515252 (isConcat!33 lt!866819))))

(declare-fun b!2374640 () Bool)

(assert (=> b!2374640 (= e!1515253 (h!33453 lt!866781))))

(declare-fun b!2374641 () Bool)

(assert (=> b!2374641 (= e!1515256 e!1515251)))

(declare-fun c!377479 () Bool)

(assert (=> b!2374641 (= c!377479 (isEmpty!15991 lt!866781))))

(assert (= (and d!695859 res!1008177) b!2374633))

(assert (= (and d!695859 c!377477) b!2374640))

(assert (= (and d!695859 (not c!377477)) b!2374636))

(assert (= (and b!2374636 c!377480) b!2374637))

(assert (= (and b!2374636 (not c!377480)) b!2374634))

(assert (= (and d!695859 res!1008176) b!2374641))

(assert (= (and b!2374641 c!377479) b!2374638))

(assert (= (and b!2374641 (not c!377479)) b!2374632))

(assert (= (and b!2374632 c!377478) b!2374635))

(assert (= (and b!2374632 (not c!377478)) b!2374639))

(declare-fun m!2780999 () Bool)

(assert (=> b!2374638 m!2780999))

(declare-fun m!2781001 () Bool)

(assert (=> b!2374633 m!2781001))

(declare-fun m!2781003 () Bool)

(assert (=> d!695859 m!2781003))

(declare-fun m!2781005 () Bool)

(assert (=> d!695859 m!2781005))

(declare-fun m!2781007 () Bool)

(assert (=> b!2374639 m!2781007))

(declare-fun m!2781009 () Bool)

(assert (=> b!2374635 m!2781009))

(assert (=> b!2374641 m!2780899))

(declare-fun m!2781011 () Bool)

(assert (=> b!2374632 m!2781011))

(assert (=> b!2374632 m!2781011))

(declare-fun m!2781013 () Bool)

(assert (=> b!2374632 m!2781013))

(declare-fun m!2781015 () Bool)

(assert (=> b!2374637 m!2781015))

(assert (=> b!2374385 d!695859))

(declare-fun bs!461460 () Bool)

(declare-fun d!695861 () Bool)

(assert (= bs!461460 (and d!695861 b!2374390)))

(declare-fun lambda!88089 () Int)

(assert (=> bs!461460 (= lambda!88089 lambda!88065)))

(assert (=> bs!461460 (not (= lambda!88089 lambda!88066))))

(declare-fun bs!461461 () Bool)

(assert (= bs!461461 (and d!695861 b!2374501)))

(assert (=> bs!461461 (not (= lambda!88089 lambda!88082))))

(declare-fun bs!461462 () Bool)

(assert (= bs!461462 (and d!695861 b!2374504)))

(assert (=> bs!461462 (not (= lambda!88089 lambda!88083))))

(assert (=> d!695861 true))

(assert (=> d!695861 true))

(assert (=> d!695861 true))

(assert (=> d!695861 (= (isDefined!4327 (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) Nil!28053 s!9460 s!9460)) (Exists!1018 lambda!88089))))

(declare-fun lt!866822 () Unit!40947)

(declare-fun choose!13845 (Regex!6956 Regex!6956 List!28151) Unit!40947)

(assert (=> d!695861 (= lt!866822 (choose!13845 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460))))

(assert (=> d!695861 (validRegex!2683 (regOne!14424 r!13927))))

(assert (=> d!695861 (= (lemmaFindConcatSeparationEquivalentToExists!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460) lt!866822)))

(declare-fun bs!461463 () Bool)

(assert (= bs!461463 d!695861))

(assert (=> bs!461463 m!2780905))

(assert (=> bs!461463 m!2780907))

(declare-fun m!2781033 () Bool)

(assert (=> bs!461463 m!2781033))

(assert (=> bs!461463 m!2780905))

(declare-fun m!2781035 () Bool)

(assert (=> bs!461463 m!2781035))

(declare-fun m!2781037 () Bool)

(assert (=> bs!461463 m!2781037))

(assert (=> b!2374390 d!695861))

(declare-fun bs!461464 () Bool)

(declare-fun d!695869 () Bool)

(assert (= bs!461464 (and d!695869 b!2374501)))

(declare-fun lambda!88096 () Int)

(assert (=> bs!461464 (not (= lambda!88096 lambda!88082))))

(declare-fun bs!461465 () Bool)

(assert (= bs!461465 (and d!695869 d!695861)))

(assert (=> bs!461465 (= lambda!88096 lambda!88089)))

(declare-fun bs!461466 () Bool)

(assert (= bs!461466 (and d!695869 b!2374504)))

(assert (=> bs!461466 (not (= lambda!88096 lambda!88083))))

(declare-fun bs!461467 () Bool)

(assert (= bs!461467 (and d!695869 b!2374390)))

(assert (=> bs!461467 (not (= lambda!88096 lambda!88066))))

(assert (=> bs!461467 (= lambda!88096 lambda!88065)))

(assert (=> d!695869 true))

(assert (=> d!695869 true))

(assert (=> d!695869 true))

(declare-fun lambda!88097 () Int)

(assert (=> bs!461464 (not (= lambda!88097 lambda!88082))))

(assert (=> bs!461465 (not (= lambda!88097 lambda!88089))))

(declare-fun bs!461468 () Bool)

(assert (= bs!461468 d!695869))

(assert (=> bs!461468 (not (= lambda!88097 lambda!88096))))

(assert (=> bs!461466 (= lambda!88097 lambda!88083)))

(assert (=> bs!461467 (= lambda!88097 lambda!88066)))

(assert (=> bs!461467 (not (= lambda!88097 lambda!88065))))

(assert (=> d!695869 true))

(assert (=> d!695869 true))

(assert (=> d!695869 true))

(assert (=> d!695869 (= (Exists!1018 lambda!88096) (Exists!1018 lambda!88097))))

(declare-fun lt!866827 () Unit!40947)

(declare-fun choose!13846 (Regex!6956 Regex!6956 List!28151) Unit!40947)

(assert (=> d!695869 (= lt!866827 (choose!13846 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460))))

(assert (=> d!695869 (validRegex!2683 (regOne!14424 r!13927))))

(assert (=> d!695869 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!357 (regOne!14424 r!13927) (regTwo!14424 r!13927) s!9460) lt!866827)))

(declare-fun m!2781039 () Bool)

(assert (=> bs!461468 m!2781039))

(declare-fun m!2781041 () Bool)

(assert (=> bs!461468 m!2781041))

(declare-fun m!2781043 () Bool)

(assert (=> bs!461468 m!2781043))

(assert (=> bs!461468 m!2781037))

(assert (=> b!2374390 d!695869))

(declare-fun d!695871 () Bool)

(declare-fun choose!13847 (Int) Bool)

(assert (=> d!695871 (= (Exists!1018 lambda!88065) (choose!13847 lambda!88065))))

(declare-fun bs!461469 () Bool)

(assert (= bs!461469 d!695871))

(declare-fun m!2781045 () Bool)

(assert (=> bs!461469 m!2781045))

(assert (=> b!2374390 d!695871))

(declare-fun b!2374702 () Bool)

(declare-fun res!1008207 () Bool)

(declare-fun e!1515292 () Bool)

(assert (=> b!2374702 (=> (not res!1008207) (not e!1515292))))

(declare-fun lt!866836 () Option!5499)

(declare-fun get!8538 (Option!5499) tuple2!27776)

(assert (=> b!2374702 (= res!1008207 (matchR!3073 (regOne!14424 r!13927) (_1!16429 (get!8538 lt!866836))))))

(declare-fun b!2374703 () Bool)

(declare-fun e!1515293 () Bool)

(assert (=> b!2374703 (= e!1515293 (matchR!3073 (regTwo!14424 r!13927) s!9460))))

(declare-fun d!695873 () Bool)

(declare-fun e!1515295 () Bool)

(assert (=> d!695873 e!1515295))

(declare-fun res!1008210 () Bool)

(assert (=> d!695873 (=> res!1008210 e!1515295)))

(assert (=> d!695873 (= res!1008210 e!1515292)))

(declare-fun res!1008208 () Bool)

(assert (=> d!695873 (=> (not res!1008208) (not e!1515292))))

(assert (=> d!695873 (= res!1008208 (isDefined!4327 lt!866836))))

(declare-fun e!1515294 () Option!5499)

(assert (=> d!695873 (= lt!866836 e!1515294)))

(declare-fun c!377497 () Bool)

(assert (=> d!695873 (= c!377497 e!1515293)))

(declare-fun res!1008209 () Bool)

(assert (=> d!695873 (=> (not res!1008209) (not e!1515293))))

(assert (=> d!695873 (= res!1008209 (matchR!3073 (regOne!14424 r!13927) Nil!28053))))

(assert (=> d!695873 (validRegex!2683 (regOne!14424 r!13927))))

(assert (=> d!695873 (= (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) Nil!28053 s!9460 s!9460) lt!866836)))

(declare-fun b!2374704 () Bool)

(declare-fun lt!866837 () Unit!40947)

(declare-fun lt!866835 () Unit!40947)

(assert (=> b!2374704 (= lt!866837 lt!866835)))

(declare-fun ++!6916 (List!28151 List!28151) List!28151)

(assert (=> b!2374704 (= (++!6916 (++!6916 Nil!28053 (Cons!28053 (h!33454 s!9460) Nil!28053)) (t!208128 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!560 (List!28151 C!14070 List!28151 List!28151) Unit!40947)

(assert (=> b!2374704 (= lt!866835 (lemmaMoveElementToOtherListKeepsConcatEq!560 Nil!28053 (h!33454 s!9460) (t!208128 s!9460) s!9460))))

(declare-fun e!1515291 () Option!5499)

(assert (=> b!2374704 (= e!1515291 (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) (++!6916 Nil!28053 (Cons!28053 (h!33454 s!9460) Nil!28053)) (t!208128 s!9460) s!9460))))

(declare-fun b!2374705 () Bool)

(assert (=> b!2374705 (= e!1515294 (Some!5498 (tuple2!27777 Nil!28053 s!9460)))))

(declare-fun b!2374706 () Bool)

(assert (=> b!2374706 (= e!1515295 (not (isDefined!4327 lt!866836)))))

(declare-fun b!2374707 () Bool)

(assert (=> b!2374707 (= e!1515292 (= (++!6916 (_1!16429 (get!8538 lt!866836)) (_2!16429 (get!8538 lt!866836))) s!9460))))

(declare-fun b!2374708 () Bool)

(assert (=> b!2374708 (= e!1515291 None!5498)))

(declare-fun b!2374709 () Bool)

(declare-fun res!1008206 () Bool)

(assert (=> b!2374709 (=> (not res!1008206) (not e!1515292))))

(assert (=> b!2374709 (= res!1008206 (matchR!3073 (regTwo!14424 r!13927) (_2!16429 (get!8538 lt!866836))))))

(declare-fun b!2374710 () Bool)

(assert (=> b!2374710 (= e!1515294 e!1515291)))

(declare-fun c!377498 () Bool)

(assert (=> b!2374710 (= c!377498 (is-Nil!28053 s!9460))))

(assert (= (and d!695873 res!1008209) b!2374703))

(assert (= (and d!695873 c!377497) b!2374705))

(assert (= (and d!695873 (not c!377497)) b!2374710))

(assert (= (and b!2374710 c!377498) b!2374708))

(assert (= (and b!2374710 (not c!377498)) b!2374704))

(assert (= (and d!695873 res!1008208) b!2374702))

(assert (= (and b!2374702 res!1008207) b!2374709))

(assert (= (and b!2374709 res!1008206) b!2374707))

(assert (= (and d!695873 (not res!1008210)) b!2374706))

(declare-fun m!2781065 () Bool)

(assert (=> b!2374706 m!2781065))

(declare-fun m!2781067 () Bool)

(assert (=> b!2374709 m!2781067))

(declare-fun m!2781069 () Bool)

(assert (=> b!2374709 m!2781069))

(declare-fun m!2781071 () Bool)

(assert (=> b!2374703 m!2781071))

(assert (=> b!2374707 m!2781067))

(declare-fun m!2781073 () Bool)

(assert (=> b!2374707 m!2781073))

(assert (=> b!2374702 m!2781067))

(declare-fun m!2781075 () Bool)

(assert (=> b!2374702 m!2781075))

(assert (=> d!695873 m!2781065))

(declare-fun m!2781077 () Bool)

(assert (=> d!695873 m!2781077))

(assert (=> d!695873 m!2781037))

(declare-fun m!2781079 () Bool)

(assert (=> b!2374704 m!2781079))

(assert (=> b!2374704 m!2781079))

(declare-fun m!2781081 () Bool)

(assert (=> b!2374704 m!2781081))

(declare-fun m!2781083 () Bool)

(assert (=> b!2374704 m!2781083))

(assert (=> b!2374704 m!2781079))

(declare-fun m!2781085 () Bool)

(assert (=> b!2374704 m!2781085))

(assert (=> b!2374390 d!695873))

(declare-fun d!695881 () Bool)

(assert (=> d!695881 (= (Exists!1018 lambda!88066) (choose!13847 lambda!88066))))

(declare-fun bs!461471 () Bool)

(assert (= bs!461471 d!695881))

(declare-fun m!2781087 () Bool)

(assert (=> bs!461471 m!2781087))

(assert (=> b!2374390 d!695881))

(declare-fun d!695883 () Bool)

(declare-fun isEmpty!15994 (Option!5499) Bool)

(assert (=> d!695883 (= (isDefined!4327 (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) Nil!28053 s!9460 s!9460)) (not (isEmpty!15994 (findConcatSeparation!607 (regOne!14424 r!13927) (regTwo!14424 r!13927) Nil!28053 s!9460 s!9460))))))

(declare-fun bs!461472 () Bool)

(assert (= bs!461472 d!695883))

(assert (=> bs!461472 m!2780905))

(declare-fun m!2781089 () Bool)

(assert (=> bs!461472 m!2781089))

(assert (=> b!2374390 d!695883))

(declare-fun d!695885 () Bool)

(assert (=> d!695885 (= (isEmpty!15991 l!9164) (is-Nil!28052 l!9164))))

(assert (=> b!2374384 d!695885))

(declare-fun bs!461473 () Bool)

(declare-fun d!695887 () Bool)

(assert (= bs!461473 (and d!695887 start!233010)))

(declare-fun lambda!88099 () Int)

(assert (=> bs!461473 (= lambda!88099 lambda!88064)))

(declare-fun bs!461474 () Bool)

(assert (= bs!461474 (and d!695887 d!695859)))

(assert (=> bs!461474 (= lambda!88099 lambda!88086)))

(declare-fun b!2374711 () Bool)

(declare-fun e!1515296 () Bool)

(declare-fun e!1515297 () Bool)

(assert (=> b!2374711 (= e!1515296 e!1515297)))

(declare-fun c!377500 () Bool)

(assert (=> b!2374711 (= c!377500 (isEmpty!15991 (tail!3421 l!9164)))))

(declare-fun b!2374712 () Bool)

(declare-fun e!1515300 () Bool)

(assert (=> b!2374712 (= e!1515300 (isEmpty!15991 (t!208127 l!9164)))))

(declare-fun b!2374713 () Bool)

(declare-fun e!1515299 () Regex!6956)

(assert (=> b!2374713 (= e!1515299 EmptyExpr!6956)))

(declare-fun b!2374714 () Bool)

(declare-fun lt!866838 () Regex!6956)

(assert (=> b!2374714 (= e!1515297 (= lt!866838 (head!5151 l!9164)))))

(declare-fun b!2374715 () Bool)

(declare-fun e!1515298 () Regex!6956)

(assert (=> b!2374715 (= e!1515298 e!1515299)))

(declare-fun c!377502 () Bool)

(assert (=> b!2374715 (= c!377502 (is-Cons!28052 l!9164))))

(declare-fun b!2374716 () Bool)

(assert (=> b!2374716 (= e!1515299 (Concat!11592 (h!33453 l!9164) (generalisedConcat!57 (t!208127 l!9164))))))

(declare-fun b!2374717 () Bool)

(assert (=> b!2374717 (= e!1515296 (isEmptyExpr!33 lt!866838))))

(declare-fun e!1515301 () Bool)

(assert (=> d!695887 e!1515301))

(declare-fun res!1008211 () Bool)

(assert (=> d!695887 (=> (not res!1008211) (not e!1515301))))

(assert (=> d!695887 (= res!1008211 (validRegex!2683 lt!866838))))

(assert (=> d!695887 (= lt!866838 e!1515298)))

(declare-fun c!377499 () Bool)

(assert (=> d!695887 (= c!377499 e!1515300)))

(declare-fun res!1008212 () Bool)

(assert (=> d!695887 (=> (not res!1008212) (not e!1515300))))

(assert (=> d!695887 (= res!1008212 (is-Cons!28052 l!9164))))

(assert (=> d!695887 (forall!5590 l!9164 lambda!88099)))

(assert (=> d!695887 (= (generalisedConcat!57 l!9164) lt!866838)))

(declare-fun b!2374718 () Bool)

(assert (=> b!2374718 (= e!1515297 (isConcat!33 lt!866838))))

(declare-fun b!2374719 () Bool)

(assert (=> b!2374719 (= e!1515298 (h!33453 l!9164))))

(declare-fun b!2374720 () Bool)

(assert (=> b!2374720 (= e!1515301 e!1515296)))

(declare-fun c!377501 () Bool)

(assert (=> b!2374720 (= c!377501 (isEmpty!15991 l!9164))))

(assert (= (and d!695887 res!1008212) b!2374712))

(assert (= (and d!695887 c!377499) b!2374719))

(assert (= (and d!695887 (not c!377499)) b!2374715))

(assert (= (and b!2374715 c!377502) b!2374716))

(assert (= (and b!2374715 (not c!377502)) b!2374713))

(assert (= (and d!695887 res!1008211) b!2374720))

(assert (= (and b!2374720 c!377501) b!2374717))

(assert (= (and b!2374720 (not c!377501)) b!2374711))

(assert (= (and b!2374711 c!377500) b!2374714))

(assert (= (and b!2374711 (not c!377500)) b!2374718))

(declare-fun m!2781091 () Bool)

(assert (=> b!2374717 m!2781091))

(declare-fun m!2781093 () Bool)

(assert (=> b!2374712 m!2781093))

(declare-fun m!2781095 () Bool)

(assert (=> d!695887 m!2781095))

(declare-fun m!2781097 () Bool)

(assert (=> d!695887 m!2781097))

(declare-fun m!2781099 () Bool)

(assert (=> b!2374718 m!2781099))

(assert (=> b!2374714 m!2780891))

(assert (=> b!2374720 m!2780895))

(assert (=> b!2374711 m!2780901))

(assert (=> b!2374711 m!2780901))

(declare-fun m!2781101 () Bool)

(assert (=> b!2374711 m!2781101))

(declare-fun m!2781103 () Bool)

(assert (=> b!2374716 m!2781103))

(assert (=> b!2374394 d!695887))

(declare-fun b!2374725 () Bool)

(declare-fun e!1515304 () Bool)

(declare-fun tp!758596 () Bool)

(assert (=> b!2374725 (= e!1515304 (and tp_is_empty!11325 tp!758596))))

(assert (=> b!2374388 (= tp!758567 e!1515304)))

(assert (= (and b!2374388 (is-Cons!28053 (t!208128 s!9460))) b!2374725))

(declare-fun e!1515307 () Bool)

(assert (=> b!2374393 (= tp!758565 e!1515307)))

(declare-fun b!2374739 () Bool)

(declare-fun tp!758608 () Bool)

(declare-fun tp!758610 () Bool)

(assert (=> b!2374739 (= e!1515307 (and tp!758608 tp!758610))))

(declare-fun b!2374740 () Bool)

(declare-fun tp!758609 () Bool)

(assert (=> b!2374740 (= e!1515307 tp!758609)))

(declare-fun b!2374738 () Bool)

(assert (=> b!2374738 (= e!1515307 tp_is_empty!11325)))

(declare-fun b!2374741 () Bool)

(declare-fun tp!758607 () Bool)

(declare-fun tp!758611 () Bool)

(assert (=> b!2374741 (= e!1515307 (and tp!758607 tp!758611))))

(assert (= (and b!2374393 (is-ElementMatch!6956 (reg!7285 r!13927))) b!2374738))

(assert (= (and b!2374393 (is-Concat!11592 (reg!7285 r!13927))) b!2374739))

(assert (= (and b!2374393 (is-Star!6956 (reg!7285 r!13927))) b!2374740))

(assert (= (and b!2374393 (is-Union!6956 (reg!7285 r!13927))) b!2374741))

(declare-fun e!1515308 () Bool)

(assert (=> b!2374387 (= tp!758568 e!1515308)))

(declare-fun b!2374743 () Bool)

(declare-fun tp!758613 () Bool)

(declare-fun tp!758615 () Bool)

(assert (=> b!2374743 (= e!1515308 (and tp!758613 tp!758615))))

(declare-fun b!2374744 () Bool)

(declare-fun tp!758614 () Bool)

(assert (=> b!2374744 (= e!1515308 tp!758614)))

(declare-fun b!2374742 () Bool)

(assert (=> b!2374742 (= e!1515308 tp_is_empty!11325)))

(declare-fun b!2374745 () Bool)

(declare-fun tp!758612 () Bool)

(declare-fun tp!758616 () Bool)

(assert (=> b!2374745 (= e!1515308 (and tp!758612 tp!758616))))

(assert (= (and b!2374387 (is-ElementMatch!6956 (regOne!14425 r!13927))) b!2374742))

(assert (= (and b!2374387 (is-Concat!11592 (regOne!14425 r!13927))) b!2374743))

(assert (= (and b!2374387 (is-Star!6956 (regOne!14425 r!13927))) b!2374744))

(assert (= (and b!2374387 (is-Union!6956 (regOne!14425 r!13927))) b!2374745))

(declare-fun e!1515311 () Bool)

(assert (=> b!2374387 (= tp!758563 e!1515311)))

(declare-fun b!2374749 () Bool)

(declare-fun tp!758618 () Bool)

(declare-fun tp!758620 () Bool)

(assert (=> b!2374749 (= e!1515311 (and tp!758618 tp!758620))))

(declare-fun b!2374750 () Bool)

(declare-fun tp!758619 () Bool)

(assert (=> b!2374750 (= e!1515311 tp!758619)))

(declare-fun b!2374748 () Bool)

(assert (=> b!2374748 (= e!1515311 tp_is_empty!11325)))

(declare-fun b!2374751 () Bool)

(declare-fun tp!758617 () Bool)

(declare-fun tp!758621 () Bool)

(assert (=> b!2374751 (= e!1515311 (and tp!758617 tp!758621))))

(assert (= (and b!2374387 (is-ElementMatch!6956 (regTwo!14425 r!13927))) b!2374748))

(assert (= (and b!2374387 (is-Concat!11592 (regTwo!14425 r!13927))) b!2374749))

(assert (= (and b!2374387 (is-Star!6956 (regTwo!14425 r!13927))) b!2374750))

(assert (= (and b!2374387 (is-Union!6956 (regTwo!14425 r!13927))) b!2374751))

(declare-fun e!1515312 () Bool)

(assert (=> b!2374386 (= tp!758564 e!1515312)))

(declare-fun b!2374753 () Bool)

(declare-fun tp!758623 () Bool)

(declare-fun tp!758625 () Bool)

(assert (=> b!2374753 (= e!1515312 (and tp!758623 tp!758625))))

(declare-fun b!2374754 () Bool)

(declare-fun tp!758624 () Bool)

(assert (=> b!2374754 (= e!1515312 tp!758624)))

(declare-fun b!2374752 () Bool)

(assert (=> b!2374752 (= e!1515312 tp_is_empty!11325)))

(declare-fun b!2374755 () Bool)

(declare-fun tp!758622 () Bool)

(declare-fun tp!758626 () Bool)

(assert (=> b!2374755 (= e!1515312 (and tp!758622 tp!758626))))

(assert (= (and b!2374386 (is-ElementMatch!6956 (h!33453 l!9164))) b!2374752))

(assert (= (and b!2374386 (is-Concat!11592 (h!33453 l!9164))) b!2374753))

(assert (= (and b!2374386 (is-Star!6956 (h!33453 l!9164))) b!2374754))

(assert (= (and b!2374386 (is-Union!6956 (h!33453 l!9164))) b!2374755))

(declare-fun b!2374766 () Bool)

(declare-fun e!1515319 () Bool)

(declare-fun tp!758631 () Bool)

(declare-fun tp!758632 () Bool)

(assert (=> b!2374766 (= e!1515319 (and tp!758631 tp!758632))))

(assert (=> b!2374386 (= tp!758566 e!1515319)))

(assert (= (and b!2374386 (is-Cons!28052 (t!208127 l!9164))) b!2374766))

(declare-fun e!1515322 () Bool)

(assert (=> b!2374389 (= tp!758569 e!1515322)))

(declare-fun b!2374772 () Bool)

(declare-fun tp!758634 () Bool)

(declare-fun tp!758636 () Bool)

(assert (=> b!2374772 (= e!1515322 (and tp!758634 tp!758636))))

(declare-fun b!2374773 () Bool)

(declare-fun tp!758635 () Bool)

(assert (=> b!2374773 (= e!1515322 tp!758635)))

(declare-fun b!2374771 () Bool)

(assert (=> b!2374771 (= e!1515322 tp_is_empty!11325)))

(declare-fun b!2374774 () Bool)

(declare-fun tp!758633 () Bool)

(declare-fun tp!758637 () Bool)

(assert (=> b!2374774 (= e!1515322 (and tp!758633 tp!758637))))

(assert (= (and b!2374389 (is-ElementMatch!6956 (regOne!14424 r!13927))) b!2374771))

(assert (= (and b!2374389 (is-Concat!11592 (regOne!14424 r!13927))) b!2374772))

(assert (= (and b!2374389 (is-Star!6956 (regOne!14424 r!13927))) b!2374773))

(assert (= (and b!2374389 (is-Union!6956 (regOne!14424 r!13927))) b!2374774))

(declare-fun e!1515325 () Bool)

(assert (=> b!2374389 (= tp!758562 e!1515325)))

(declare-fun b!2374778 () Bool)

(declare-fun tp!758639 () Bool)

(declare-fun tp!758641 () Bool)

(assert (=> b!2374778 (= e!1515325 (and tp!758639 tp!758641))))

(declare-fun b!2374779 () Bool)

(declare-fun tp!758640 () Bool)

(assert (=> b!2374779 (= e!1515325 tp!758640)))

(declare-fun b!2374777 () Bool)

(assert (=> b!2374777 (= e!1515325 tp_is_empty!11325)))

(declare-fun b!2374780 () Bool)

(declare-fun tp!758638 () Bool)

(declare-fun tp!758642 () Bool)

(assert (=> b!2374780 (= e!1515325 (and tp!758638 tp!758642))))

(assert (= (and b!2374389 (is-ElementMatch!6956 (regTwo!14424 r!13927))) b!2374777))

(assert (= (and b!2374389 (is-Concat!11592 (regTwo!14424 r!13927))) b!2374778))

(assert (= (and b!2374389 (is-Star!6956 (regTwo!14424 r!13927))) b!2374779))

(assert (= (and b!2374389 (is-Union!6956 (regTwo!14424 r!13927))) b!2374780))

(declare-fun b_lambda!73983 () Bool)

(assert (= b_lambda!73981 (or start!233010 b_lambda!73983)))

(declare-fun bs!461475 () Bool)

(declare-fun d!695889 () Bool)

(assert (= bs!461475 (and d!695889 start!233010)))

(assert (=> bs!461475 (= (dynLambda!12079 lambda!88064 (h!33453 l!9164)) (validRegex!2683 (h!33453 l!9164)))))

(declare-fun m!2781105 () Bool)

(assert (=> bs!461475 m!2781105))

(assert (=> b!2374582 d!695889))

(push 1)

(assert (not b!2374749))

(assert (not d!695855))

(assert (not bm!144329))

(assert (not b!2374638))

(assert (not b!2374716))

(assert (not b!2374588))

(assert (not d!695847))

(assert (not b!2374712))

(assert (not b!2374774))

(assert (not b!2374632))

(assert (not b!2374596))

(assert (not b!2374541))

(assert (not bm!144326))

(assert (not bm!144323))

(assert (not b!2374597))

(assert (not b!2374637))

(assert (not b!2374754))

(assert (not b!2374639))

(assert (not b!2374495))

(assert (not b!2374714))

(assert (not b!2374540))

(assert (not b!2374587))

(assert (not d!695843))

(assert (not d!695873))

(assert (not b!2374780))

(assert (not b!2374548))

(assert (not b!2374725))

(assert (not b!2374635))

(assert (not b!2374718))

(assert (not b!2374500))

(assert (not b!2374709))

(assert (not b!2374766))

(assert (not b!2374739))

(assert (not b!2374593))

(assert (not b!2374755))

(assert (not b!2374740))

(assert (not b!2374741))

(assert (not b_lambda!73983))

(assert (not b!2374720))

(assert (not d!695859))

(assert (not d!695881))

(assert (not b!2374706))

(assert (not b!2374539))

(assert (not d!695887))

(assert (not d!695861))

(assert (not bs!461475))

(assert (not b!2374717))

(assert (not b!2374583))

(assert (not b!2374589))

(assert (not b!2374633))

(assert (not b!2374743))

(assert (not b!2374704))

(assert (not b!2374702))

(assert (not b!2374751))

(assert (not b!2374753))

(assert (not b!2374779))

(assert (not b!2374778))

(assert (not b!2374750))

(assert (not b!2374703))

(assert (not b!2374549))

(assert (not d!695883))

(assert (not b!2374711))

(assert (not b!2374545))

(assert (not b!2374641))

(assert (not b!2374772))

(assert (not b!2374773))

(assert (not b!2374707))

(assert (not b!2374744))

(assert (not d!695871))

(assert (not b!2374745))

(assert (not d!695869))

(assert (not bm!144322))

(assert tp_is_empty!11325)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

