; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235570 () Bool)

(assert start!235570)

(declare-fun b!2401877 () Bool)

(declare-fun e!1530111 () Bool)

(declare-fun tp!764405 () Bool)

(declare-fun tp!764403 () Bool)

(assert (=> b!2401877 (= e!1530111 (and tp!764405 tp!764403))))

(declare-fun b!2401878 () Bool)

(declare-fun tp_is_empty!11493 () Bool)

(assert (=> b!2401878 (= e!1530111 tp_is_empty!11493)))

(declare-fun b!2401879 () Bool)

(declare-fun tp!764402 () Bool)

(declare-fun tp!764406 () Bool)

(assert (=> b!2401879 (= e!1530111 (and tp!764402 tp!764406))))

(declare-fun b!2401881 () Bool)

(declare-fun res!1020397 () Bool)

(declare-fun e!1530107 () Bool)

(assert (=> b!2401881 (=> res!1020397 e!1530107)))

(declare-fun e!1530112 () Bool)

(assert (=> b!2401881 (= res!1020397 e!1530112)))

(declare-fun c!382448 () Bool)

(declare-datatypes ((C!14238 0))(
  ( (C!14239 (val!8361 Int)) )
))
(declare-datatypes ((Regex!7040 0))(
  ( (ElementMatch!7040 (c!382449 C!14238)) (Concat!11676 (regOne!14592 Regex!7040) (regTwo!14592 Regex!7040)) (EmptyExpr!7040) (Star!7040 (reg!7369 Regex!7040)) (EmptyLang!7040) (Union!7040 (regOne!14593 Regex!7040) (regTwo!14593 Regex!7040)) )
))
(declare-datatypes ((List!28318 0))(
  ( (Nil!28220) (Cons!28220 (h!33621 Regex!7040) (t!208295 List!28318)) )
))
(declare-fun l!9164 () List!28318)

(assert (=> b!2401881 (= c!382448 (is-Cons!28220 l!9164))))

(declare-fun b!2401882 () Bool)

(declare-fun e!1530110 () Bool)

(declare-fun tp!764407 () Bool)

(declare-fun tp!764404 () Bool)

(assert (=> b!2401882 (= e!1530110 (and tp!764407 tp!764404))))

(declare-fun b!2401883 () Bool)

(declare-fun r!13927 () Regex!7040)

(declare-fun validRegex!2765 (Regex!7040) Bool)

(assert (=> b!2401883 (= e!1530107 (validRegex!2765 r!13927))))

(declare-fun b!2401884 () Bool)

(declare-fun res!1020396 () Bool)

(declare-fun e!1530108 () Bool)

(assert (=> b!2401884 (=> (not res!1020396) (not e!1530108))))

(declare-fun generalisedConcat!141 (List!28318) Regex!7040)

(assert (=> b!2401884 (= res!1020396 (= r!13927 (generalisedConcat!141 l!9164)))))

(declare-datatypes ((List!28319 0))(
  ( (Nil!28221) (Cons!28221 (h!33622 C!14238) (t!208296 List!28319)) )
))
(declare-fun s!9460 () List!28319)

(declare-fun b!2401885 () Bool)

(declare-fun lt!872608 () Bool)

(declare-datatypes ((tuple2!27920 0))(
  ( (tuple2!27921 (_1!16501 List!28319) (_2!16501 List!28319)) )
))
(declare-datatypes ((Option!5571 0))(
  ( (None!5570) (Some!5570 (v!30978 tuple2!27920)) )
))
(declare-fun isDefined!4399 (Option!5571) Bool)

(declare-fun findConcatSeparation!679 (Regex!7040 Regex!7040 List!28319 List!28319 List!28319) Option!5571)

(assert (=> b!2401885 (= e!1530112 (not (= lt!872608 (isDefined!4399 (findConcatSeparation!679 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164)) Nil!28221 s!9460 s!9460)))))))

(declare-fun b!2401886 () Bool)

(declare-fun e!1530109 () Bool)

(declare-fun tp!764401 () Bool)

(assert (=> b!2401886 (= e!1530109 (and tp_is_empty!11493 tp!764401))))

(declare-fun b!2401887 () Bool)

(declare-fun isEmpty!16215 (List!28319) Bool)

(assert (=> b!2401887 (= e!1530112 (not (= lt!872608 (isEmpty!16215 s!9460))))))

(declare-fun b!2401888 () Bool)

(declare-fun res!1020395 () Bool)

(assert (=> b!2401888 (=> res!1020395 e!1530107)))

(assert (=> b!2401888 (= res!1020395 (not (is-Cons!28220 l!9164)))))

(declare-fun b!2401889 () Bool)

(assert (=> b!2401889 (= e!1530108 (not e!1530107))))

(declare-fun res!1020399 () Bool)

(assert (=> b!2401889 (=> res!1020399 e!1530107)))

(assert (=> b!2401889 (= res!1020399 (or (is-Concat!11676 r!13927) (not (is-EmptyExpr!7040 r!13927))))))

(declare-fun matchRSpec!889 (Regex!7040 List!28319) Bool)

(assert (=> b!2401889 (= lt!872608 (matchRSpec!889 r!13927 s!9460))))

(declare-fun matchR!3157 (Regex!7040 List!28319) Bool)

(assert (=> b!2401889 (= lt!872608 (matchR!3157 r!13927 s!9460))))

(declare-datatypes ((Unit!41351 0))(
  ( (Unit!41352) )
))
(declare-fun lt!872607 () Unit!41351)

(declare-fun mainMatchTheorem!889 (Regex!7040 List!28319) Unit!41351)

(assert (=> b!2401889 (= lt!872607 (mainMatchTheorem!889 r!13927 s!9460))))

(declare-fun res!1020398 () Bool)

(assert (=> start!235570 (=> (not res!1020398) (not e!1530108))))

(declare-fun lambda!90290 () Int)

(declare-fun forall!5674 (List!28318 Int) Bool)

(assert (=> start!235570 (= res!1020398 (forall!5674 l!9164 lambda!90290))))

(assert (=> start!235570 e!1530108))

(assert (=> start!235570 e!1530110))

(assert (=> start!235570 e!1530111))

(assert (=> start!235570 e!1530109))

(declare-fun b!2401880 () Bool)

(declare-fun tp!764400 () Bool)

(assert (=> b!2401880 (= e!1530111 tp!764400)))

(assert (= (and start!235570 res!1020398) b!2401884))

(assert (= (and b!2401884 res!1020396) b!2401889))

(assert (= (and b!2401889 (not res!1020399)) b!2401881))

(assert (= (and b!2401881 c!382448) b!2401885))

(assert (= (and b!2401881 (not c!382448)) b!2401887))

(assert (= (and b!2401881 (not res!1020397)) b!2401888))

(assert (= (and b!2401888 (not res!1020395)) b!2401883))

(assert (= (and start!235570 (is-Cons!28220 l!9164)) b!2401882))

(assert (= (and start!235570 (is-ElementMatch!7040 r!13927)) b!2401878))

(assert (= (and start!235570 (is-Concat!11676 r!13927)) b!2401879))

(assert (= (and start!235570 (is-Star!7040 r!13927)) b!2401880))

(assert (= (and start!235570 (is-Union!7040 r!13927)) b!2401877))

(assert (= (and start!235570 (is-Cons!28221 s!9460)) b!2401886))

(declare-fun m!2798239 () Bool)

(assert (=> start!235570 m!2798239))

(declare-fun m!2798241 () Bool)

(assert (=> b!2401885 m!2798241))

(assert (=> b!2401885 m!2798241))

(declare-fun m!2798243 () Bool)

(assert (=> b!2401885 m!2798243))

(assert (=> b!2401885 m!2798243))

(declare-fun m!2798245 () Bool)

(assert (=> b!2401885 m!2798245))

(declare-fun m!2798247 () Bool)

(assert (=> b!2401887 m!2798247))

(declare-fun m!2798249 () Bool)

(assert (=> b!2401889 m!2798249))

(declare-fun m!2798251 () Bool)

(assert (=> b!2401889 m!2798251))

(declare-fun m!2798253 () Bool)

(assert (=> b!2401889 m!2798253))

(declare-fun m!2798255 () Bool)

(assert (=> b!2401884 m!2798255))

(declare-fun m!2798257 () Bool)

(assert (=> b!2401883 m!2798257))

(push 1)

(assert (not b!2401885))

(assert (not b!2401887))

(assert (not b!2401886))

(assert (not b!2401877))

(assert (not b!2401883))

(assert tp_is_empty!11493)

(assert (not b!2401880))

(assert (not start!235570))

(assert (not b!2401882))

(assert (not b!2401879))

(assert (not b!2401889))

(assert (not b!2401884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2401947 () Bool)

(declare-fun e!1530146 () Bool)

(declare-fun call!146751 () Bool)

(assert (=> b!2401947 (= e!1530146 call!146751)))

(declare-fun b!2401948 () Bool)

(declare-fun e!1530149 () Bool)

(declare-fun call!146752 () Bool)

(assert (=> b!2401948 (= e!1530149 call!146752)))

(declare-fun call!146753 () Bool)

(declare-fun c!382458 () Bool)

(declare-fun bm!146746 () Bool)

(declare-fun c!382459 () Bool)

(assert (=> bm!146746 (= call!146753 (validRegex!2765 (ite c!382459 (reg!7369 r!13927) (ite c!382458 (regOne!14593 r!13927) (regTwo!14592 r!13927)))))))

(declare-fun b!2401949 () Bool)

(declare-fun e!1530151 () Bool)

(declare-fun e!1530147 () Bool)

(assert (=> b!2401949 (= e!1530151 e!1530147)))

(assert (=> b!2401949 (= c!382459 (is-Star!7040 r!13927))))

(declare-fun bm!146747 () Bool)

(assert (=> bm!146747 (= call!146751 call!146753)))

(declare-fun b!2401950 () Bool)

(declare-fun e!1530145 () Bool)

(assert (=> b!2401950 (= e!1530145 call!146753)))

(declare-fun b!2401952 () Bool)

(declare-fun res!1020428 () Bool)

(declare-fun e!1530150 () Bool)

(assert (=> b!2401952 (=> res!1020428 e!1530150)))

(assert (=> b!2401952 (= res!1020428 (not (is-Concat!11676 r!13927)))))

(declare-fun e!1530148 () Bool)

(assert (=> b!2401952 (= e!1530148 e!1530150)))

(declare-fun bm!146748 () Bool)

(assert (=> bm!146748 (= call!146752 (validRegex!2765 (ite c!382458 (regTwo!14593 r!13927) (regOne!14592 r!13927))))))

(declare-fun b!2401953 () Bool)

(assert (=> b!2401953 (= e!1530150 e!1530146)))

(declare-fun res!1020426 () Bool)

(assert (=> b!2401953 (=> (not res!1020426) (not e!1530146))))

(assert (=> b!2401953 (= res!1020426 call!146752)))

(declare-fun b!2401954 () Bool)

(assert (=> b!2401954 (= e!1530147 e!1530148)))

(assert (=> b!2401954 (= c!382458 (is-Union!7040 r!13927))))

(declare-fun b!2401955 () Bool)

(declare-fun res!1020425 () Bool)

(assert (=> b!2401955 (=> (not res!1020425) (not e!1530149))))

(assert (=> b!2401955 (= res!1020425 call!146751)))

(assert (=> b!2401955 (= e!1530148 e!1530149)))

(declare-fun d!699725 () Bool)

(declare-fun res!1020429 () Bool)

(assert (=> d!699725 (=> res!1020429 e!1530151)))

(assert (=> d!699725 (= res!1020429 (is-ElementMatch!7040 r!13927))))

(assert (=> d!699725 (= (validRegex!2765 r!13927) e!1530151)))

(declare-fun b!2401951 () Bool)

(assert (=> b!2401951 (= e!1530147 e!1530145)))

(declare-fun res!1020427 () Bool)

(declare-fun nullable!2089 (Regex!7040) Bool)

(assert (=> b!2401951 (= res!1020427 (not (nullable!2089 (reg!7369 r!13927))))))

(assert (=> b!2401951 (=> (not res!1020427) (not e!1530145))))

(assert (= (and d!699725 (not res!1020429)) b!2401949))

(assert (= (and b!2401949 c!382459) b!2401951))

(assert (= (and b!2401949 (not c!382459)) b!2401954))

(assert (= (and b!2401951 res!1020427) b!2401950))

(assert (= (and b!2401954 c!382458) b!2401955))

(assert (= (and b!2401954 (not c!382458)) b!2401952))

(assert (= (and b!2401955 res!1020425) b!2401948))

(assert (= (and b!2401952 (not res!1020428)) b!2401953))

(assert (= (and b!2401953 res!1020426) b!2401947))

(assert (= (or b!2401955 b!2401947) bm!146747))

(assert (= (or b!2401948 b!2401953) bm!146748))

(assert (= (or b!2401950 bm!146747) bm!146746))

(declare-fun m!2798281 () Bool)

(assert (=> bm!146746 m!2798281))

(declare-fun m!2798283 () Bool)

(assert (=> bm!146748 m!2798283))

(declare-fun m!2798285 () Bool)

(assert (=> b!2401951 m!2798285))

(assert (=> b!2401883 d!699725))

(declare-fun b!2402005 () Bool)

(assert (=> b!2402005 true))

(assert (=> b!2402005 true))

(declare-fun bs!463176 () Bool)

(declare-fun b!2402001 () Bool)

(assert (= bs!463176 (and b!2402001 b!2402005)))

(declare-fun lambda!90299 () Int)

(declare-fun lambda!90298 () Int)

(assert (=> bs!463176 (not (= lambda!90299 lambda!90298))))

(assert (=> b!2402001 true))

(assert (=> b!2402001 true))

(declare-fun b!2401998 () Bool)

(declare-fun res!1020449 () Bool)

(declare-fun e!1530181 () Bool)

(assert (=> b!2401998 (=> res!1020449 e!1530181)))

(declare-fun call!146759 () Bool)

(assert (=> b!2401998 (= res!1020449 call!146759)))

(declare-fun e!1530176 () Bool)

(assert (=> b!2401998 (= e!1530176 e!1530181)))

(declare-fun b!2401999 () Bool)

(declare-fun e!1530179 () Bool)

(assert (=> b!2401999 (= e!1530179 (= s!9460 (Cons!28221 (c!382449 r!13927) Nil!28221)))))

(declare-fun b!2402000 () Bool)

(declare-fun c!382472 () Bool)

(assert (=> b!2402000 (= c!382472 (is-Union!7040 r!13927))))

(declare-fun e!1530180 () Bool)

(assert (=> b!2402000 (= e!1530179 e!1530180)))

(declare-fun call!146758 () Bool)

(assert (=> b!2402001 (= e!1530176 call!146758)))

(declare-fun b!2402002 () Bool)

(declare-fun e!1530178 () Bool)

(assert (=> b!2402002 (= e!1530178 call!146759)))

(declare-fun b!2402003 () Bool)

(declare-fun e!1530182 () Bool)

(assert (=> b!2402003 (= e!1530182 (matchRSpec!889 (regTwo!14593 r!13927) s!9460))))

(declare-fun b!2402004 () Bool)

(declare-fun e!1530177 () Bool)

(assert (=> b!2402004 (= e!1530178 e!1530177)))

(declare-fun res!1020448 () Bool)

(assert (=> b!2402004 (= res!1020448 (not (is-EmptyLang!7040 r!13927)))))

(assert (=> b!2402004 (=> (not res!1020448) (not e!1530177))))

(declare-fun bm!146753 () Bool)

(assert (=> bm!146753 (= call!146759 (isEmpty!16215 s!9460))))

(declare-fun d!699731 () Bool)

(declare-fun c!382473 () Bool)

(assert (=> d!699731 (= c!382473 (is-EmptyExpr!7040 r!13927))))

(assert (=> d!699731 (= (matchRSpec!889 r!13927 s!9460) e!1530178)))

(assert (=> b!2402005 (= e!1530181 call!146758)))

(declare-fun b!2402006 () Bool)

(assert (=> b!2402006 (= e!1530180 e!1530176)))

(declare-fun c!382475 () Bool)

(assert (=> b!2402006 (= c!382475 (is-Star!7040 r!13927))))

(declare-fun b!2402007 () Bool)

(assert (=> b!2402007 (= e!1530180 e!1530182)))

(declare-fun res!1020450 () Bool)

(assert (=> b!2402007 (= res!1020450 (matchRSpec!889 (regOne!14593 r!13927) s!9460))))

(assert (=> b!2402007 (=> res!1020450 e!1530182)))

(declare-fun b!2402008 () Bool)

(declare-fun c!382474 () Bool)

(assert (=> b!2402008 (= c!382474 (is-ElementMatch!7040 r!13927))))

(assert (=> b!2402008 (= e!1530177 e!1530179)))

(declare-fun bm!146754 () Bool)

(declare-fun Exists!1099 (Int) Bool)

(assert (=> bm!146754 (= call!146758 (Exists!1099 (ite c!382475 lambda!90298 lambda!90299)))))

(assert (= (and d!699731 c!382473) b!2402002))

(assert (= (and d!699731 (not c!382473)) b!2402004))

(assert (= (and b!2402004 res!1020448) b!2402008))

(assert (= (and b!2402008 c!382474) b!2401999))

(assert (= (and b!2402008 (not c!382474)) b!2402000))

(assert (= (and b!2402000 c!382472) b!2402007))

(assert (= (and b!2402000 (not c!382472)) b!2402006))

(assert (= (and b!2402007 (not res!1020450)) b!2402003))

(assert (= (and b!2402006 c!382475) b!2401998))

(assert (= (and b!2402006 (not c!382475)) b!2402001))

(assert (= (and b!2401998 (not res!1020449)) b!2402005))

(assert (= (or b!2402005 b!2402001) bm!146754))

(assert (= (or b!2402002 b!2401998) bm!146753))

(declare-fun m!2798287 () Bool)

(assert (=> b!2402003 m!2798287))

(assert (=> bm!146753 m!2798247))

(declare-fun m!2798289 () Bool)

(assert (=> b!2402007 m!2798289))

(declare-fun m!2798291 () Bool)

(assert (=> bm!146754 m!2798291))

(assert (=> b!2401889 d!699731))

(declare-fun b!2402059 () Bool)

(declare-fun e!1530209 () Bool)

(declare-fun e!1530208 () Bool)

(assert (=> b!2402059 (= e!1530209 e!1530208)))

(declare-fun res!1020480 () Bool)

(assert (=> b!2402059 (=> (not res!1020480) (not e!1530208))))

(declare-fun lt!872626 () Bool)

(assert (=> b!2402059 (= res!1020480 (not lt!872626))))

(declare-fun b!2402060 () Bool)

(declare-fun e!1530212 () Bool)

(declare-fun head!5310 (List!28319) C!14238)

(assert (=> b!2402060 (= e!1530212 (not (= (head!5310 s!9460) (c!382449 r!13927))))))

(declare-fun bm!146757 () Bool)

(declare-fun call!146762 () Bool)

(assert (=> bm!146757 (= call!146762 (isEmpty!16215 s!9460))))

(declare-fun b!2402061 () Bool)

(declare-fun e!1530207 () Bool)

(assert (=> b!2402061 (= e!1530207 (= lt!872626 call!146762))))

(declare-fun b!2402062 () Bool)

(declare-fun e!1530206 () Bool)

(declare-fun derivativeStep!1747 (Regex!7040 C!14238) Regex!7040)

(declare-fun tail!3580 (List!28319) List!28319)

(assert (=> b!2402062 (= e!1530206 (matchR!3157 (derivativeStep!1747 r!13927 (head!5310 s!9460)) (tail!3580 s!9460)))))

(declare-fun b!2402063 () Bool)

(declare-fun res!1020483 () Bool)

(assert (=> b!2402063 (=> res!1020483 e!1530209)))

(assert (=> b!2402063 (= res!1020483 (not (is-ElementMatch!7040 r!13927)))))

(declare-fun e!1530211 () Bool)

(assert (=> b!2402063 (= e!1530211 e!1530209)))

(declare-fun b!2402064 () Bool)

(declare-fun res!1020482 () Bool)

(assert (=> b!2402064 (=> res!1020482 e!1530212)))

(assert (=> b!2402064 (= res!1020482 (not (isEmpty!16215 (tail!3580 s!9460))))))

(declare-fun b!2402065 () Bool)

(declare-fun e!1530210 () Bool)

(assert (=> b!2402065 (= e!1530210 (= (head!5310 s!9460) (c!382449 r!13927)))))

(declare-fun b!2402066 () Bool)

(assert (=> b!2402066 (= e!1530206 (nullable!2089 r!13927))))

(declare-fun b!2402067 () Bool)

(assert (=> b!2402067 (= e!1530207 e!1530211)))

(declare-fun c!382485 () Bool)

(assert (=> b!2402067 (= c!382485 (is-EmptyLang!7040 r!13927))))

(declare-fun b!2402058 () Bool)

(declare-fun res!1020487 () Bool)

(assert (=> b!2402058 (=> (not res!1020487) (not e!1530210))))

(assert (=> b!2402058 (= res!1020487 (not call!146762))))

(declare-fun d!699733 () Bool)

(assert (=> d!699733 e!1530207))

(declare-fun c!382486 () Bool)

(assert (=> d!699733 (= c!382486 (is-EmptyExpr!7040 r!13927))))

(assert (=> d!699733 (= lt!872626 e!1530206)))

(declare-fun c!382484 () Bool)

(assert (=> d!699733 (= c!382484 (isEmpty!16215 s!9460))))

(assert (=> d!699733 (validRegex!2765 r!13927)))

(assert (=> d!699733 (= (matchR!3157 r!13927 s!9460) lt!872626)))

(declare-fun b!2402068 () Bool)

(declare-fun res!1020481 () Bool)

(assert (=> b!2402068 (=> res!1020481 e!1530209)))

(assert (=> b!2402068 (= res!1020481 e!1530210)))

(declare-fun res!1020486 () Bool)

(assert (=> b!2402068 (=> (not res!1020486) (not e!1530210))))

(assert (=> b!2402068 (= res!1020486 lt!872626)))

(declare-fun b!2402069 () Bool)

(declare-fun res!1020485 () Bool)

(assert (=> b!2402069 (=> (not res!1020485) (not e!1530210))))

(assert (=> b!2402069 (= res!1020485 (isEmpty!16215 (tail!3580 s!9460)))))

(declare-fun b!2402070 () Bool)

(assert (=> b!2402070 (= e!1530208 e!1530212)))

(declare-fun res!1020484 () Bool)

(assert (=> b!2402070 (=> res!1020484 e!1530212)))

(assert (=> b!2402070 (= res!1020484 call!146762)))

(declare-fun b!2402071 () Bool)

(assert (=> b!2402071 (= e!1530211 (not lt!872626))))

(assert (= (and d!699733 c!382484) b!2402066))

(assert (= (and d!699733 (not c!382484)) b!2402062))

(assert (= (and d!699733 c!382486) b!2402061))

(assert (= (and d!699733 (not c!382486)) b!2402067))

(assert (= (and b!2402067 c!382485) b!2402071))

(assert (= (and b!2402067 (not c!382485)) b!2402063))

(assert (= (and b!2402063 (not res!1020483)) b!2402068))

(assert (= (and b!2402068 res!1020486) b!2402058))

(assert (= (and b!2402058 res!1020487) b!2402069))

(assert (= (and b!2402069 res!1020485) b!2402065))

(assert (= (and b!2402068 (not res!1020481)) b!2402059))

(assert (= (and b!2402059 res!1020480) b!2402070))

(assert (= (and b!2402070 (not res!1020484)) b!2402064))

(assert (= (and b!2402064 (not res!1020482)) b!2402060))

(assert (= (or b!2402061 b!2402058 b!2402070) bm!146757))

(declare-fun m!2798317 () Bool)

(assert (=> b!2402066 m!2798317))

(declare-fun m!2798319 () Bool)

(assert (=> b!2402065 m!2798319))

(assert (=> bm!146757 m!2798247))

(declare-fun m!2798321 () Bool)

(assert (=> b!2402064 m!2798321))

(assert (=> b!2402064 m!2798321))

(declare-fun m!2798323 () Bool)

(assert (=> b!2402064 m!2798323))

(assert (=> d!699733 m!2798247))

(assert (=> d!699733 m!2798257))

(assert (=> b!2402060 m!2798319))

(assert (=> b!2402062 m!2798319))

(assert (=> b!2402062 m!2798319))

(declare-fun m!2798325 () Bool)

(assert (=> b!2402062 m!2798325))

(assert (=> b!2402062 m!2798321))

(assert (=> b!2402062 m!2798325))

(assert (=> b!2402062 m!2798321))

(declare-fun m!2798327 () Bool)

(assert (=> b!2402062 m!2798327))

(assert (=> b!2402069 m!2798321))

(assert (=> b!2402069 m!2798321))

(assert (=> b!2402069 m!2798323))

(assert (=> b!2401889 d!699733))

(declare-fun d!699737 () Bool)

(assert (=> d!699737 (= (matchR!3157 r!13927 s!9460) (matchRSpec!889 r!13927 s!9460))))

(declare-fun lt!872629 () Unit!41351)

(declare-fun choose!14217 (Regex!7040 List!28319) Unit!41351)

(assert (=> d!699737 (= lt!872629 (choose!14217 r!13927 s!9460))))

(assert (=> d!699737 (validRegex!2765 r!13927)))

(assert (=> d!699737 (= (mainMatchTheorem!889 r!13927 s!9460) lt!872629)))

(declare-fun bs!463177 () Bool)

(assert (= bs!463177 d!699737))

(assert (=> bs!463177 m!2798251))

(assert (=> bs!463177 m!2798249))

(declare-fun m!2798329 () Bool)

(assert (=> bs!463177 m!2798329))

(assert (=> bs!463177 m!2798257))

(assert (=> b!2401889 d!699737))

(declare-fun d!699739 () Bool)

(assert (=> d!699739 (= (isEmpty!16215 s!9460) (is-Nil!28221 s!9460))))

(assert (=> b!2401887 d!699739))

(declare-fun d!699741 () Bool)

(declare-fun res!1020492 () Bool)

(declare-fun e!1530217 () Bool)

(assert (=> d!699741 (=> res!1020492 e!1530217)))

(assert (=> d!699741 (= res!1020492 (is-Nil!28220 l!9164))))

(assert (=> d!699741 (= (forall!5674 l!9164 lambda!90290) e!1530217)))

(declare-fun b!2402076 () Bool)

(declare-fun e!1530218 () Bool)

(assert (=> b!2402076 (= e!1530217 e!1530218)))

(declare-fun res!1020493 () Bool)

(assert (=> b!2402076 (=> (not res!1020493) (not e!1530218))))

(declare-fun dynLambda!12154 (Int Regex!7040) Bool)

(assert (=> b!2402076 (= res!1020493 (dynLambda!12154 lambda!90290 (h!33621 l!9164)))))

(declare-fun b!2402077 () Bool)

(assert (=> b!2402077 (= e!1530218 (forall!5674 (t!208295 l!9164) lambda!90290))))

(assert (= (and d!699741 (not res!1020492)) b!2402076))

(assert (= (and b!2402076 res!1020493) b!2402077))

(declare-fun b_lambda!74339 () Bool)

(assert (=> (not b_lambda!74339) (not b!2402076)))

(declare-fun m!2798331 () Bool)

(assert (=> b!2402076 m!2798331))

(declare-fun m!2798333 () Bool)

(assert (=> b!2402077 m!2798333))

(assert (=> start!235570 d!699741))

(declare-fun bs!463179 () Bool)

(declare-fun d!699743 () Bool)

(assert (= bs!463179 (and d!699743 start!235570)))

(declare-fun lambda!90305 () Int)

(assert (=> bs!463179 (= lambda!90305 lambda!90290)))

(declare-fun b!2402128 () Bool)

(declare-fun e!1530254 () Bool)

(declare-fun e!1530250 () Bool)

(assert (=> b!2402128 (= e!1530254 e!1530250)))

(declare-fun c!382507 () Bool)

(declare-fun isEmpty!16217 (List!28318) Bool)

(declare-fun tail!3581 (List!28318) List!28318)

(assert (=> b!2402128 (= c!382507 (isEmpty!16217 (tail!3581 l!9164)))))

(declare-fun b!2402129 () Bool)

(declare-fun e!1530249 () Bool)

(assert (=> b!2402129 (= e!1530249 (isEmpty!16217 (t!208295 l!9164)))))

(declare-fun b!2402130 () Bool)

(declare-fun e!1530251 () Regex!7040)

(assert (=> b!2402130 (= e!1530251 (h!33621 l!9164))))

(declare-fun b!2402131 () Bool)

(declare-fun lt!872635 () Regex!7040)

(declare-fun isConcat!108 (Regex!7040) Bool)

(assert (=> b!2402131 (= e!1530250 (isConcat!108 lt!872635))))

(declare-fun b!2402132 () Bool)

(declare-fun isEmptyExpr!108 (Regex!7040) Bool)

(assert (=> b!2402132 (= e!1530254 (isEmptyExpr!108 lt!872635))))

(declare-fun b!2402133 () Bool)

(declare-fun e!1530252 () Regex!7040)

(assert (=> b!2402133 (= e!1530251 e!1530252)))

(declare-fun c!382509 () Bool)

(assert (=> b!2402133 (= c!382509 (is-Cons!28220 l!9164))))

(declare-fun e!1530253 () Bool)

(assert (=> d!699743 e!1530253))

(declare-fun res!1020504 () Bool)

(assert (=> d!699743 (=> (not res!1020504) (not e!1530253))))

(assert (=> d!699743 (= res!1020504 (validRegex!2765 lt!872635))))

(assert (=> d!699743 (= lt!872635 e!1530251)))

(declare-fun c!382510 () Bool)

(assert (=> d!699743 (= c!382510 e!1530249)))

(declare-fun res!1020505 () Bool)

(assert (=> d!699743 (=> (not res!1020505) (not e!1530249))))

(assert (=> d!699743 (= res!1020505 (is-Cons!28220 l!9164))))

(assert (=> d!699743 (forall!5674 l!9164 lambda!90305)))

(assert (=> d!699743 (= (generalisedConcat!141 l!9164) lt!872635)))

(declare-fun b!2402134 () Bool)

(assert (=> b!2402134 (= e!1530252 (Concat!11676 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164))))))

(declare-fun b!2402135 () Bool)

(assert (=> b!2402135 (= e!1530253 e!1530254)))

(declare-fun c!382508 () Bool)

(assert (=> b!2402135 (= c!382508 (isEmpty!16217 l!9164))))

(declare-fun b!2402136 () Bool)

(declare-fun head!5311 (List!28318) Regex!7040)

(assert (=> b!2402136 (= e!1530250 (= lt!872635 (head!5311 l!9164)))))

(declare-fun b!2402137 () Bool)

(assert (=> b!2402137 (= e!1530252 EmptyExpr!7040)))

(assert (= (and d!699743 res!1020505) b!2402129))

(assert (= (and d!699743 c!382510) b!2402130))

(assert (= (and d!699743 (not c!382510)) b!2402133))

(assert (= (and b!2402133 c!382509) b!2402134))

(assert (= (and b!2402133 (not c!382509)) b!2402137))

(assert (= (and d!699743 res!1020504) b!2402135))

(assert (= (and b!2402135 c!382508) b!2402132))

(assert (= (and b!2402135 (not c!382508)) b!2402128))

(assert (= (and b!2402128 c!382507) b!2402136))

(assert (= (and b!2402128 (not c!382507)) b!2402131))

(declare-fun m!2798355 () Bool)

(assert (=> b!2402135 m!2798355))

(declare-fun m!2798357 () Bool)

(assert (=> b!2402136 m!2798357))

(declare-fun m!2798359 () Bool)

(assert (=> b!2402131 m!2798359))

(declare-fun m!2798361 () Bool)

(assert (=> b!2402128 m!2798361))

(assert (=> b!2402128 m!2798361))

(declare-fun m!2798363 () Bool)

(assert (=> b!2402128 m!2798363))

(assert (=> b!2402134 m!2798241))

(declare-fun m!2798365 () Bool)

(assert (=> b!2402129 m!2798365))

(declare-fun m!2798367 () Bool)

(assert (=> d!699743 m!2798367))

(declare-fun m!2798369 () Bool)

(assert (=> d!699743 m!2798369))

(declare-fun m!2798371 () Bool)

(assert (=> b!2402132 m!2798371))

(assert (=> b!2401884 d!699743))

(declare-fun d!699747 () Bool)

(declare-fun isEmpty!16218 (Option!5571) Bool)

(assert (=> d!699747 (= (isDefined!4399 (findConcatSeparation!679 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164)) Nil!28221 s!9460 s!9460)) (not (isEmpty!16218 (findConcatSeparation!679 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164)) Nil!28221 s!9460 s!9460))))))

(declare-fun bs!463180 () Bool)

(assert (= bs!463180 d!699747))

(assert (=> bs!463180 m!2798243))

(declare-fun m!2798373 () Bool)

(assert (=> bs!463180 m!2798373))

(assert (=> b!2401885 d!699747))

(declare-fun b!2402187 () Bool)

(declare-fun e!1530294 () Bool)

(assert (=> b!2402187 (= e!1530294 (matchR!3157 (generalisedConcat!141 (t!208295 l!9164)) s!9460))))

(declare-fun b!2402188 () Bool)

(declare-fun res!1020536 () Bool)

(declare-fun e!1530293 () Bool)

(assert (=> b!2402188 (=> (not res!1020536) (not e!1530293))))

(declare-fun lt!872643 () Option!5571)

(declare-fun get!8646 (Option!5571) tuple2!27920)

(assert (=> b!2402188 (= res!1020536 (matchR!3157 (h!33621 l!9164) (_1!16501 (get!8646 lt!872643))))))

(declare-fun b!2402189 () Bool)

(declare-fun e!1530291 () Bool)

(assert (=> b!2402189 (= e!1530291 (not (isDefined!4399 lt!872643)))))

(declare-fun b!2402190 () Bool)

(declare-fun e!1530292 () Option!5571)

(assert (=> b!2402190 (= e!1530292 (Some!5570 (tuple2!27921 Nil!28221 s!9460)))))

(declare-fun b!2402191 () Bool)

(declare-fun e!1530290 () Option!5571)

(assert (=> b!2402191 (= e!1530290 None!5570)))

(declare-fun d!699749 () Bool)

(assert (=> d!699749 e!1530291))

(declare-fun res!1020538 () Bool)

(assert (=> d!699749 (=> res!1020538 e!1530291)))

(assert (=> d!699749 (= res!1020538 e!1530293)))

(declare-fun res!1020539 () Bool)

(assert (=> d!699749 (=> (not res!1020539) (not e!1530293))))

(assert (=> d!699749 (= res!1020539 (isDefined!4399 lt!872643))))

(assert (=> d!699749 (= lt!872643 e!1530292)))

(declare-fun c!382521 () Bool)

(assert (=> d!699749 (= c!382521 e!1530294)))

(declare-fun res!1020537 () Bool)

(assert (=> d!699749 (=> (not res!1020537) (not e!1530294))))

(assert (=> d!699749 (= res!1020537 (matchR!3157 (h!33621 l!9164) Nil!28221))))

(assert (=> d!699749 (validRegex!2765 (h!33621 l!9164))))

(assert (=> d!699749 (= (findConcatSeparation!679 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164)) Nil!28221 s!9460 s!9460) lt!872643)))

(declare-fun b!2402192 () Bool)

(declare-fun lt!872644 () Unit!41351)

(declare-fun lt!872642 () Unit!41351)

(assert (=> b!2402192 (= lt!872644 lt!872642)))

(declare-fun ++!6984 (List!28319 List!28319) List!28319)

(assert (=> b!2402192 (= (++!6984 (++!6984 Nil!28221 (Cons!28221 (h!33622 s!9460) Nil!28221)) (t!208296 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!624 (List!28319 C!14238 List!28319 List!28319) Unit!41351)

(assert (=> b!2402192 (= lt!872642 (lemmaMoveElementToOtherListKeepsConcatEq!624 Nil!28221 (h!33622 s!9460) (t!208296 s!9460) s!9460))))

(assert (=> b!2402192 (= e!1530290 (findConcatSeparation!679 (h!33621 l!9164) (generalisedConcat!141 (t!208295 l!9164)) (++!6984 Nil!28221 (Cons!28221 (h!33622 s!9460) Nil!28221)) (t!208296 s!9460) s!9460))))

(declare-fun b!2402193 () Bool)

(assert (=> b!2402193 (= e!1530293 (= (++!6984 (_1!16501 (get!8646 lt!872643)) (_2!16501 (get!8646 lt!872643))) s!9460))))

(declare-fun b!2402194 () Bool)

(assert (=> b!2402194 (= e!1530292 e!1530290)))

(declare-fun c!382522 () Bool)

(assert (=> b!2402194 (= c!382522 (is-Nil!28221 s!9460))))

(declare-fun b!2402195 () Bool)

(declare-fun res!1020535 () Bool)

(assert (=> b!2402195 (=> (not res!1020535) (not e!1530293))))

(assert (=> b!2402195 (= res!1020535 (matchR!3157 (generalisedConcat!141 (t!208295 l!9164)) (_2!16501 (get!8646 lt!872643))))))

(assert (= (and d!699749 res!1020537) b!2402187))

(assert (= (and d!699749 c!382521) b!2402190))

(assert (= (and d!699749 (not c!382521)) b!2402194))

(assert (= (and b!2402194 c!382522) b!2402191))

(assert (= (and b!2402194 (not c!382522)) b!2402192))

(assert (= (and d!699749 res!1020539) b!2402188))

(assert (= (and b!2402188 res!1020536) b!2402195))

(assert (= (and b!2402195 res!1020535) b!2402193))

(assert (= (and d!699749 (not res!1020538)) b!2402189))

(declare-fun m!2798385 () Bool)

(assert (=> b!2402188 m!2798385))

(declare-fun m!2798387 () Bool)

(assert (=> b!2402188 m!2798387))

(declare-fun m!2798389 () Bool)

(assert (=> b!2402189 m!2798389))

(assert (=> b!2402193 m!2798385))

(declare-fun m!2798391 () Bool)

(assert (=> b!2402193 m!2798391))

(assert (=> b!2402187 m!2798241))

(declare-fun m!2798393 () Bool)

(assert (=> b!2402187 m!2798393))

(declare-fun m!2798395 () Bool)

(assert (=> b!2402192 m!2798395))

(assert (=> b!2402192 m!2798395))

(declare-fun m!2798397 () Bool)

(assert (=> b!2402192 m!2798397))

(declare-fun m!2798399 () Bool)

(assert (=> b!2402192 m!2798399))

(assert (=> b!2402192 m!2798241))

(assert (=> b!2402192 m!2798395))

(declare-fun m!2798401 () Bool)

(assert (=> b!2402192 m!2798401))

(assert (=> b!2402195 m!2798385))

(assert (=> b!2402195 m!2798241))

(declare-fun m!2798403 () Bool)

(assert (=> b!2402195 m!2798403))

(assert (=> d!699749 m!2798389))

(declare-fun m!2798405 () Bool)

(assert (=> d!699749 m!2798405))

(declare-fun m!2798407 () Bool)

(assert (=> d!699749 m!2798407))

(assert (=> b!2401885 d!699749))

(declare-fun bs!463181 () Bool)

(declare-fun d!699755 () Bool)

(assert (= bs!463181 (and d!699755 start!235570)))

(declare-fun lambda!90306 () Int)

(assert (=> bs!463181 (= lambda!90306 lambda!90290)))

(declare-fun bs!463182 () Bool)

(assert (= bs!463182 (and d!699755 d!699743)))

(assert (=> bs!463182 (= lambda!90306 lambda!90305)))

(declare-fun b!2402198 () Bool)

(declare-fun e!1530302 () Bool)

(declare-fun e!1530298 () Bool)

(assert (=> b!2402198 (= e!1530302 e!1530298)))

(declare-fun c!382523 () Bool)

(assert (=> b!2402198 (= c!382523 (isEmpty!16217 (tail!3581 (t!208295 l!9164))))))

(declare-fun b!2402199 () Bool)

(declare-fun e!1530297 () Bool)

(assert (=> b!2402199 (= e!1530297 (isEmpty!16217 (t!208295 (t!208295 l!9164))))))

(declare-fun b!2402200 () Bool)

(declare-fun e!1530299 () Regex!7040)

(assert (=> b!2402200 (= e!1530299 (h!33621 (t!208295 l!9164)))))

(declare-fun b!2402201 () Bool)

(declare-fun lt!872645 () Regex!7040)

(assert (=> b!2402201 (= e!1530298 (isConcat!108 lt!872645))))

(declare-fun b!2402202 () Bool)

(assert (=> b!2402202 (= e!1530302 (isEmptyExpr!108 lt!872645))))

(declare-fun b!2402203 () Bool)

(declare-fun e!1530300 () Regex!7040)

(assert (=> b!2402203 (= e!1530299 e!1530300)))

(declare-fun c!382525 () Bool)

(assert (=> b!2402203 (= c!382525 (is-Cons!28220 (t!208295 l!9164)))))

(declare-fun e!1530301 () Bool)

(assert (=> d!699755 e!1530301))

(declare-fun res!1020542 () Bool)

(assert (=> d!699755 (=> (not res!1020542) (not e!1530301))))

(assert (=> d!699755 (= res!1020542 (validRegex!2765 lt!872645))))

(assert (=> d!699755 (= lt!872645 e!1530299)))

(declare-fun c!382526 () Bool)

(assert (=> d!699755 (= c!382526 e!1530297)))

(declare-fun res!1020543 () Bool)

(assert (=> d!699755 (=> (not res!1020543) (not e!1530297))))

(assert (=> d!699755 (= res!1020543 (is-Cons!28220 (t!208295 l!9164)))))

(assert (=> d!699755 (forall!5674 (t!208295 l!9164) lambda!90306)))

(assert (=> d!699755 (= (generalisedConcat!141 (t!208295 l!9164)) lt!872645)))

(declare-fun b!2402204 () Bool)

(assert (=> b!2402204 (= e!1530300 (Concat!11676 (h!33621 (t!208295 l!9164)) (generalisedConcat!141 (t!208295 (t!208295 l!9164)))))))

(declare-fun b!2402205 () Bool)

(assert (=> b!2402205 (= e!1530301 e!1530302)))

(declare-fun c!382524 () Bool)

(assert (=> b!2402205 (= c!382524 (isEmpty!16217 (t!208295 l!9164)))))

(declare-fun b!2402206 () Bool)

(assert (=> b!2402206 (= e!1530298 (= lt!872645 (head!5311 (t!208295 l!9164))))))

(declare-fun b!2402207 () Bool)

(assert (=> b!2402207 (= e!1530300 EmptyExpr!7040)))

(assert (= (and d!699755 res!1020543) b!2402199))

(assert (= (and d!699755 c!382526) b!2402200))

(assert (= (and d!699755 (not c!382526)) b!2402203))

(assert (= (and b!2402203 c!382525) b!2402204))

(assert (= (and b!2402203 (not c!382525)) b!2402207))

(assert (= (and d!699755 res!1020542) b!2402205))

(assert (= (and b!2402205 c!382524) b!2402202))

(assert (= (and b!2402205 (not c!382524)) b!2402198))

(assert (= (and b!2402198 c!382523) b!2402206))

(assert (= (and b!2402198 (not c!382523)) b!2402201))

(assert (=> b!2402205 m!2798365))

(declare-fun m!2798409 () Bool)

(assert (=> b!2402206 m!2798409))

(declare-fun m!2798411 () Bool)

(assert (=> b!2402201 m!2798411))

(declare-fun m!2798413 () Bool)

(assert (=> b!2402198 m!2798413))

(assert (=> b!2402198 m!2798413))

(declare-fun m!2798415 () Bool)

(assert (=> b!2402198 m!2798415))

(declare-fun m!2798417 () Bool)

(assert (=> b!2402204 m!2798417))

(declare-fun m!2798419 () Bool)

(assert (=> b!2402199 m!2798419))

(declare-fun m!2798421 () Bool)

(assert (=> d!699755 m!2798421))

(declare-fun m!2798423 () Bool)

(assert (=> d!699755 m!2798423))

(declare-fun m!2798425 () Bool)

(assert (=> b!2402202 m!2798425))

(assert (=> b!2401885 d!699755))

(declare-fun b!2402229 () Bool)

(declare-fun e!1530311 () Bool)

(declare-fun tp!764443 () Bool)

(declare-fun tp!764444 () Bool)

(assert (=> b!2402229 (= e!1530311 (and tp!764443 tp!764444))))

(declare-fun b!2402231 () Bool)

(declare-fun tp!764442 () Bool)

(declare-fun tp!764446 () Bool)

(assert (=> b!2402231 (= e!1530311 (and tp!764442 tp!764446))))

(declare-fun b!2402228 () Bool)

(assert (=> b!2402228 (= e!1530311 tp_is_empty!11493)))

(assert (=> b!2401877 (= tp!764405 e!1530311)))

(declare-fun b!2402230 () Bool)

(declare-fun tp!764445 () Bool)

(assert (=> b!2402230 (= e!1530311 tp!764445)))

(assert (= (and b!2401877 (is-ElementMatch!7040 (regOne!14593 r!13927))) b!2402228))

(assert (= (and b!2401877 (is-Concat!11676 (regOne!14593 r!13927))) b!2402229))

(assert (= (and b!2401877 (is-Star!7040 (regOne!14593 r!13927))) b!2402230))

(assert (= (and b!2401877 (is-Union!7040 (regOne!14593 r!13927))) b!2402231))

(declare-fun b!2402233 () Bool)

(declare-fun e!1530312 () Bool)

(declare-fun tp!764448 () Bool)

(declare-fun tp!764449 () Bool)

(assert (=> b!2402233 (= e!1530312 (and tp!764448 tp!764449))))

(declare-fun b!2402235 () Bool)

(declare-fun tp!764447 () Bool)

(declare-fun tp!764451 () Bool)

(assert (=> b!2402235 (= e!1530312 (and tp!764447 tp!764451))))

(declare-fun b!2402232 () Bool)

(assert (=> b!2402232 (= e!1530312 tp_is_empty!11493)))

(assert (=> b!2401877 (= tp!764403 e!1530312)))

(declare-fun b!2402234 () Bool)

(declare-fun tp!764450 () Bool)

(assert (=> b!2402234 (= e!1530312 tp!764450)))

(assert (= (and b!2401877 (is-ElementMatch!7040 (regTwo!14593 r!13927))) b!2402232))

(assert (= (and b!2401877 (is-Concat!11676 (regTwo!14593 r!13927))) b!2402233))

(assert (= (and b!2401877 (is-Star!7040 (regTwo!14593 r!13927))) b!2402234))

(assert (= (and b!2401877 (is-Union!7040 (regTwo!14593 r!13927))) b!2402235))

(declare-fun b!2402237 () Bool)

(declare-fun e!1530313 () Bool)

(declare-fun tp!764453 () Bool)

(declare-fun tp!764454 () Bool)

(assert (=> b!2402237 (= e!1530313 (and tp!764453 tp!764454))))

(declare-fun b!2402239 () Bool)

(declare-fun tp!764452 () Bool)

(declare-fun tp!764456 () Bool)

(assert (=> b!2402239 (= e!1530313 (and tp!764452 tp!764456))))

(declare-fun b!2402236 () Bool)

(assert (=> b!2402236 (= e!1530313 tp_is_empty!11493)))

(assert (=> b!2401882 (= tp!764407 e!1530313)))

(declare-fun b!2402238 () Bool)

(declare-fun tp!764455 () Bool)

(assert (=> b!2402238 (= e!1530313 tp!764455)))

(assert (= (and b!2401882 (is-ElementMatch!7040 (h!33621 l!9164))) b!2402236))

(assert (= (and b!2401882 (is-Concat!11676 (h!33621 l!9164))) b!2402237))

(assert (= (and b!2401882 (is-Star!7040 (h!33621 l!9164))) b!2402238))

(assert (= (and b!2401882 (is-Union!7040 (h!33621 l!9164))) b!2402239))

(declare-fun b!2402244 () Bool)

(declare-fun e!1530316 () Bool)

(declare-fun tp!764461 () Bool)

(declare-fun tp!764462 () Bool)

(assert (=> b!2402244 (= e!1530316 (and tp!764461 tp!764462))))

(assert (=> b!2401882 (= tp!764404 e!1530316)))

(assert (= (and b!2401882 (is-Cons!28220 (t!208295 l!9164))) b!2402244))

(declare-fun b!2402246 () Bool)

(declare-fun e!1530317 () Bool)

(declare-fun tp!764464 () Bool)

(declare-fun tp!764465 () Bool)

(assert (=> b!2402246 (= e!1530317 (and tp!764464 tp!764465))))

(declare-fun b!2402248 () Bool)

(declare-fun tp!764463 () Bool)

(declare-fun tp!764467 () Bool)

(assert (=> b!2402248 (= e!1530317 (and tp!764463 tp!764467))))

(declare-fun b!2402245 () Bool)

(assert (=> b!2402245 (= e!1530317 tp_is_empty!11493)))

(assert (=> b!2401880 (= tp!764400 e!1530317)))

(declare-fun b!2402247 () Bool)

(declare-fun tp!764466 () Bool)

(assert (=> b!2402247 (= e!1530317 tp!764466)))

(assert (= (and b!2401880 (is-ElementMatch!7040 (reg!7369 r!13927))) b!2402245))

(assert (= (and b!2401880 (is-Concat!11676 (reg!7369 r!13927))) b!2402246))

(assert (= (and b!2401880 (is-Star!7040 (reg!7369 r!13927))) b!2402247))

(assert (= (and b!2401880 (is-Union!7040 (reg!7369 r!13927))) b!2402248))

(declare-fun b!2402253 () Bool)

(declare-fun e!1530320 () Bool)

(declare-fun tp!764470 () Bool)

(assert (=> b!2402253 (= e!1530320 (and tp_is_empty!11493 tp!764470))))

(assert (=> b!2401886 (= tp!764401 e!1530320)))

(assert (= (and b!2401886 (is-Cons!28221 (t!208296 s!9460))) b!2402253))

(declare-fun b!2402255 () Bool)

(declare-fun e!1530321 () Bool)

(declare-fun tp!764472 () Bool)

(declare-fun tp!764473 () Bool)

(assert (=> b!2402255 (= e!1530321 (and tp!764472 tp!764473))))

(declare-fun b!2402257 () Bool)

(declare-fun tp!764471 () Bool)

(declare-fun tp!764475 () Bool)

(assert (=> b!2402257 (= e!1530321 (and tp!764471 tp!764475))))

(declare-fun b!2402254 () Bool)

(assert (=> b!2402254 (= e!1530321 tp_is_empty!11493)))

(assert (=> b!2401879 (= tp!764402 e!1530321)))

(declare-fun b!2402256 () Bool)

(declare-fun tp!764474 () Bool)

(assert (=> b!2402256 (= e!1530321 tp!764474)))

(assert (= (and b!2401879 (is-ElementMatch!7040 (regOne!14592 r!13927))) b!2402254))

(assert (= (and b!2401879 (is-Concat!11676 (regOne!14592 r!13927))) b!2402255))

(assert (= (and b!2401879 (is-Star!7040 (regOne!14592 r!13927))) b!2402256))

(assert (= (and b!2401879 (is-Union!7040 (regOne!14592 r!13927))) b!2402257))

(declare-fun b!2402259 () Bool)

(declare-fun e!1530322 () Bool)

(declare-fun tp!764477 () Bool)

(declare-fun tp!764478 () Bool)

(assert (=> b!2402259 (= e!1530322 (and tp!764477 tp!764478))))

(declare-fun b!2402261 () Bool)

(declare-fun tp!764476 () Bool)

(declare-fun tp!764480 () Bool)

(assert (=> b!2402261 (= e!1530322 (and tp!764476 tp!764480))))

(declare-fun b!2402258 () Bool)

(assert (=> b!2402258 (= e!1530322 tp_is_empty!11493)))

(assert (=> b!2401879 (= tp!764406 e!1530322)))

(declare-fun b!2402260 () Bool)

(declare-fun tp!764479 () Bool)

(assert (=> b!2402260 (= e!1530322 tp!764479)))

(assert (= (and b!2401879 (is-ElementMatch!7040 (regTwo!14592 r!13927))) b!2402258))

(assert (= (and b!2401879 (is-Concat!11676 (regTwo!14592 r!13927))) b!2402259))

(assert (= (and b!2401879 (is-Star!7040 (regTwo!14592 r!13927))) b!2402260))

(assert (= (and b!2401879 (is-Union!7040 (regTwo!14592 r!13927))) b!2402261))

(declare-fun b_lambda!74343 () Bool)

(assert (= b_lambda!74339 (or start!235570 b_lambda!74343)))

(declare-fun bs!463185 () Bool)

(declare-fun d!699761 () Bool)

(assert (= bs!463185 (and d!699761 start!235570)))

(assert (=> bs!463185 (= (dynLambda!12154 lambda!90290 (h!33621 l!9164)) (validRegex!2765 (h!33621 l!9164)))))

(assert (=> bs!463185 m!2798407))

(assert (=> b!2402076 d!699761))

(push 1)

(assert (not b!2402064))

(assert (not b!2402235))

(assert tp_is_empty!11493)

(assert (not b!2402131))

(assert (not b!2402198))

(assert (not b!2402129))

(assert (not b!2402199))

(assert (not b!2402193))

(assert (not d!699749))

(assert (not b!2402062))

(assert (not b!2402132))

(assert (not b!2402248))

(assert (not b!2402134))

(assert (not bm!146748))

(assert (not b!2402136))

(assert (not b!2402206))

(assert (not b!2402229))

(assert (not b!2402239))

(assert (not b!2402244))

(assert (not b!2402202))

(assert (not b!2402003))

(assert (not b!2402238))

(assert (not b!2402259))

(assert (not bm!146757))

(assert (not b!2402007))

(assert (not b!2402260))

(assert (not bm!146753))

(assert (not b!2402234))

(assert (not bm!146746))

(assert (not d!699747))

(assert (not b!2402230))

(assert (not b!2402233))

(assert (not b!2401951))

(assert (not b!2402247))

(assert (not b!2402205))

(assert (not d!699743))

(assert (not b!2402069))

(assert (not b!2402066))

(assert (not b!2402077))

(assert (not b!2402189))

(assert (not b!2402253))

(assert (not b!2402135))

(assert (not b_lambda!74343))

(assert (not b!2402231))

(assert (not b!2402255))

(assert (not b!2402261))

(assert (not b!2402060))

(assert (not b!2402246))

(assert (not b!2402204))

(assert (not b!2402201))

(assert (not b!2402188))

(assert (not b!2402187))

(assert (not b!2402195))

(assert (not d!699733))

(assert (not b!2402257))

(assert (not b!2402237))

(assert (not b!2402256))

(assert (not d!699755))

(assert (not d!699737))

(assert (not bs!463185))

(assert (not bm!146754))

(assert (not b!2402128))

(assert (not b!2402065))

(assert (not b!2402192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

