; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733024 () Bool)

(assert start!733024)

(declare-fun b!7604096 () Bool)

(assert (=> b!7604096 true))

(assert (=> b!7604096 true))

(assert (=> b!7604096 true))

(declare-fun bs!1942528 () Bool)

(declare-fun b!7604084 () Bool)

(assert (= bs!1942528 (and b!7604084 b!7604096)))

(declare-fun lambda!467919 () Int)

(declare-fun lambda!467918 () Int)

(assert (=> bs!1942528 (not (= lambda!467919 lambda!467918))))

(assert (=> b!7604084 true))

(assert (=> b!7604084 true))

(assert (=> b!7604084 true))

(declare-fun res!3044750 () Bool)

(declare-fun e!4523381 () Bool)

(assert (=> b!7604084 (=> (not res!3044750) (not e!4523381))))

(declare-fun Exists!4409 (Int) Bool)

(assert (=> b!7604084 (= res!3044750 (Exists!4409 lambda!467919))))

(declare-fun b!7604085 () Bool)

(declare-fun e!4523382 () Bool)

(declare-fun tp!2217653 () Bool)

(assert (=> b!7604085 (= e!4523382 tp!2217653)))

(declare-fun b!7604086 () Bool)

(declare-fun res!3044748 () Bool)

(assert (=> b!7604086 (=> (not res!3044748) (not e!4523381))))

(assert (=> b!7604086 (= res!3044748 (not (Exists!4409 lambda!467918)))))

(declare-fun b!7604087 () Bool)

(declare-fun tp!2217649 () Bool)

(declare-fun tp!2217654 () Bool)

(assert (=> b!7604087 (= e!4523382 (and tp!2217649 tp!2217654))))

(declare-fun b!7604088 () Bool)

(declare-fun e!4523380 () Bool)

(declare-fun tp!2217651 () Bool)

(assert (=> b!7604088 (= e!4523380 tp!2217651)))

(declare-fun b!7604089 () Bool)

(declare-fun tp!2217652 () Bool)

(declare-fun tp!2217657 () Bool)

(assert (=> b!7604089 (= e!4523380 (and tp!2217652 tp!2217657))))

(declare-fun b!7604090 () Bool)

(declare-fun e!4523383 () Bool)

(declare-fun tp_is_empty!50717 () Bool)

(declare-fun tp!2217650 () Bool)

(assert (=> b!7604090 (= e!4523383 (and tp_is_empty!50717 tp!2217650))))

(declare-fun b!7604091 () Bool)

(declare-datatypes ((C!40688 0))(
  ( (C!40689 (val!30784 Int)) )
))
(declare-datatypes ((List!73064 0))(
  ( (Nil!72940) (Cons!72940 (h!79388 C!40688) (t!387799 List!73064)) )
))
(declare-datatypes ((tuple2!69072 0))(
  ( (tuple2!69073 (_1!37839 List!73064) (_2!37839 List!73064)) )
))
(declare-fun lt!2654642 () tuple2!69072)

(declare-fun s!10235 () List!73064)

(declare-fun ++!17579 (List!73064 List!73064) List!73064)

(assert (=> b!7604091 (= e!4523381 (not (= (++!17579 (_1!37839 lt!2654642) (_2!37839 lt!2654642)) s!10235)))))

(declare-datatypes ((Regex!20181 0))(
  ( (ElementMatch!20181 (c!1402448 C!40688)) (Concat!29026 (regOne!40874 Regex!20181) (regTwo!40874 Regex!20181)) (EmptyExpr!20181) (Star!20181 (reg!20510 Regex!20181)) (EmptyLang!20181) (Union!20181 (regOne!40875 Regex!20181) (regTwo!40875 Regex!20181)) )
))
(declare-fun r2!3249 () Regex!20181)

(declare-fun matchR!9744 (Regex!20181 List!73064) Bool)

(declare-fun matchRSpec!4456 (Regex!20181 List!73064) Bool)

(assert (=> b!7604091 (= (matchR!9744 r2!3249 (_2!37839 lt!2654642)) (matchRSpec!4456 r2!3249 (_2!37839 lt!2654642)))))

(declare-datatypes ((Unit!167242 0))(
  ( (Unit!167243) )
))
(declare-fun lt!2654643 () Unit!167242)

(declare-fun mainMatchTheorem!4450 (Regex!20181 List!73064) Unit!167242)

(assert (=> b!7604091 (= lt!2654643 (mainMatchTheorem!4450 r2!3249 (_2!37839 lt!2654642)))))

(declare-fun r1!3349 () Regex!20181)

(assert (=> b!7604091 (= (matchR!9744 r1!3349 (_1!37839 lt!2654642)) (matchRSpec!4456 r1!3349 (_1!37839 lt!2654642)))))

(declare-fun lt!2654644 () Unit!167242)

(assert (=> b!7604091 (= lt!2654644 (mainMatchTheorem!4450 r1!3349 (_1!37839 lt!2654642)))))

(declare-fun pickWitness!424 (Int) tuple2!69072)

(assert (=> b!7604091 (= lt!2654642 (pickWitness!424 lambda!467919))))

(declare-fun b!7604092 () Bool)

(assert (=> b!7604092 (= e!4523382 tp_is_empty!50717)))

(declare-fun b!7604093 () Bool)

(declare-fun res!3044749 () Bool)

(assert (=> b!7604093 (=> (not res!3044749) (not e!4523381))))

(declare-fun validRegex!10609 (Regex!20181) Bool)

(assert (=> b!7604093 (= res!3044749 (validRegex!10609 r2!3249))))

(declare-fun b!7604094 () Bool)

(declare-fun tp!2217659 () Bool)

(declare-fun tp!2217656 () Bool)

(assert (=> b!7604094 (= e!4523380 (and tp!2217659 tp!2217656))))

(declare-fun b!7604095 () Bool)

(declare-fun tp!2217658 () Bool)

(declare-fun tp!2217655 () Bool)

(assert (=> b!7604095 (= e!4523382 (and tp!2217658 tp!2217655))))

(declare-fun res!3044752 () Bool)

(assert (=> b!7604096 (=> (not res!3044752) (not e!4523381))))

(assert (=> b!7604096 (= res!3044752 (not (Exists!4409 lambda!467918)))))

(declare-fun res!3044751 () Bool)

(assert (=> start!733024 (=> (not res!3044751) (not e!4523381))))

(assert (=> start!733024 (= res!3044751 (validRegex!10609 r1!3349))))

(assert (=> start!733024 e!4523381))

(assert (=> start!733024 e!4523382))

(assert (=> start!733024 e!4523380))

(assert (=> start!733024 e!4523383))

(declare-fun b!7604097 () Bool)

(assert (=> b!7604097 (= e!4523380 tp_is_empty!50717)))

(assert (= (and start!733024 res!3044751) b!7604093))

(assert (= (and b!7604093 res!3044749) b!7604096))

(assert (= (and b!7604096 res!3044752) b!7604086))

(assert (= (and b!7604086 res!3044748) b!7604084))

(assert (= (and b!7604084 res!3044750) b!7604091))

(get-info :version)

(assert (= (and start!733024 ((_ is ElementMatch!20181) r1!3349)) b!7604092))

(assert (= (and start!733024 ((_ is Concat!29026) r1!3349)) b!7604095))

(assert (= (and start!733024 ((_ is Star!20181) r1!3349)) b!7604085))

(assert (= (and start!733024 ((_ is Union!20181) r1!3349)) b!7604087))

(assert (= (and start!733024 ((_ is ElementMatch!20181) r2!3249)) b!7604097))

(assert (= (and start!733024 ((_ is Concat!29026) r2!3249)) b!7604089))

(assert (= (and start!733024 ((_ is Star!20181) r2!3249)) b!7604088))

(assert (= (and start!733024 ((_ is Union!20181) r2!3249)) b!7604094))

(assert (= (and start!733024 ((_ is Cons!72940) s!10235)) b!7604090))

(declare-fun m!8146002 () Bool)

(assert (=> b!7604096 m!8146002))

(assert (=> b!7604086 m!8146002))

(declare-fun m!8146004 () Bool)

(assert (=> b!7604084 m!8146004))

(declare-fun m!8146006 () Bool)

(assert (=> start!733024 m!8146006))

(declare-fun m!8146008 () Bool)

(assert (=> b!7604093 m!8146008))

(declare-fun m!8146010 () Bool)

(assert (=> b!7604091 m!8146010))

(declare-fun m!8146012 () Bool)

(assert (=> b!7604091 m!8146012))

(declare-fun m!8146014 () Bool)

(assert (=> b!7604091 m!8146014))

(declare-fun m!8146016 () Bool)

(assert (=> b!7604091 m!8146016))

(declare-fun m!8146018 () Bool)

(assert (=> b!7604091 m!8146018))

(declare-fun m!8146020 () Bool)

(assert (=> b!7604091 m!8146020))

(declare-fun m!8146022 () Bool)

(assert (=> b!7604091 m!8146022))

(declare-fun m!8146024 () Bool)

(assert (=> b!7604091 m!8146024))

(check-sat (not b!7604096) (not start!733024) (not b!7604087) (not b!7604091) (not b!7604084) tp_is_empty!50717 (not b!7604095) (not b!7604085) (not b!7604088) (not b!7604094) (not b!7604093) (not b!7604089) (not b!7604090) (not b!7604086))
(check-sat)
(get-model)

(declare-fun d!2321634 () Bool)

(declare-fun choose!58704 (Int) Bool)

(assert (=> d!2321634 (= (Exists!4409 lambda!467918) (choose!58704 lambda!467918))))

(declare-fun bs!1942529 () Bool)

(assert (= bs!1942529 d!2321634))

(declare-fun m!8146026 () Bool)

(assert (=> bs!1942529 m!8146026))

(assert (=> b!7604096 d!2321634))

(declare-fun d!2321636 () Bool)

(assert (=> d!2321636 (= (Exists!4409 lambda!467919) (choose!58704 lambda!467919))))

(declare-fun bs!1942530 () Bool)

(assert (= bs!1942530 d!2321636))

(declare-fun m!8146028 () Bool)

(assert (=> bs!1942530 m!8146028))

(assert (=> b!7604084 d!2321636))

(declare-fun b!7604120 () Bool)

(declare-fun e!4523399 () Bool)

(declare-fun e!4523403 () Bool)

(assert (=> b!7604120 (= e!4523399 e!4523403)))

(declare-fun c!1402453 () Bool)

(assert (=> b!7604120 (= c!1402453 ((_ is Star!20181) r1!3349))))

(declare-fun b!7604121 () Bool)

(declare-fun e!4523402 () Bool)

(declare-fun call!698172 () Bool)

(assert (=> b!7604121 (= e!4523402 call!698172)))

(declare-fun b!7604122 () Bool)

(declare-fun e!4523398 () Bool)

(assert (=> b!7604122 (= e!4523403 e!4523398)))

(declare-fun c!1402454 () Bool)

(assert (=> b!7604122 (= c!1402454 ((_ is Union!20181) r1!3349))))

(declare-fun b!7604123 () Bool)

(declare-fun e!4523401 () Bool)

(assert (=> b!7604123 (= e!4523401 e!4523402)))

(declare-fun res!3044764 () Bool)

(assert (=> b!7604123 (=> (not res!3044764) (not e!4523402))))

(declare-fun call!698171 () Bool)

(assert (=> b!7604123 (= res!3044764 call!698171)))

(declare-fun b!7604124 () Bool)

(declare-fun e!4523400 () Bool)

(assert (=> b!7604124 (= e!4523403 e!4523400)))

(declare-fun res!3044765 () Bool)

(declare-fun nullable!8809 (Regex!20181) Bool)

(assert (=> b!7604124 (= res!3044765 (not (nullable!8809 (reg!20510 r1!3349))))))

(assert (=> b!7604124 (=> (not res!3044765) (not e!4523400))))

(declare-fun call!698173 () Bool)

(declare-fun bm!698166 () Bool)

(assert (=> bm!698166 (= call!698173 (validRegex!10609 (ite c!1402453 (reg!20510 r1!3349) (ite c!1402454 (regOne!40875 r1!3349) (regTwo!40874 r1!3349)))))))

(declare-fun bm!698167 () Bool)

(assert (=> bm!698167 (= call!698171 (validRegex!10609 (ite c!1402454 (regTwo!40875 r1!3349) (regOne!40874 r1!3349))))))

(declare-fun b!7604125 () Bool)

(declare-fun res!3044767 () Bool)

(declare-fun e!4523404 () Bool)

(assert (=> b!7604125 (=> (not res!3044767) (not e!4523404))))

(assert (=> b!7604125 (= res!3044767 call!698172)))

(assert (=> b!7604125 (= e!4523398 e!4523404)))

(declare-fun bm!698168 () Bool)

(assert (=> bm!698168 (= call!698172 call!698173)))

(declare-fun b!7604126 () Bool)

(assert (=> b!7604126 (= e!4523400 call!698173)))

(declare-fun b!7604127 () Bool)

(assert (=> b!7604127 (= e!4523404 call!698171)))

(declare-fun d!2321638 () Bool)

(declare-fun res!3044763 () Bool)

(assert (=> d!2321638 (=> res!3044763 e!4523399)))

(assert (=> d!2321638 (= res!3044763 ((_ is ElementMatch!20181) r1!3349))))

(assert (=> d!2321638 (= (validRegex!10609 r1!3349) e!4523399)))

(declare-fun b!7604128 () Bool)

(declare-fun res!3044766 () Bool)

(assert (=> b!7604128 (=> res!3044766 e!4523401)))

(assert (=> b!7604128 (= res!3044766 (not ((_ is Concat!29026) r1!3349)))))

(assert (=> b!7604128 (= e!4523398 e!4523401)))

(assert (= (and d!2321638 (not res!3044763)) b!7604120))

(assert (= (and b!7604120 c!1402453) b!7604124))

(assert (= (and b!7604120 (not c!1402453)) b!7604122))

(assert (= (and b!7604124 res!3044765) b!7604126))

(assert (= (and b!7604122 c!1402454) b!7604125))

(assert (= (and b!7604122 (not c!1402454)) b!7604128))

(assert (= (and b!7604125 res!3044767) b!7604127))

(assert (= (and b!7604128 (not res!3044766)) b!7604123))

(assert (= (and b!7604123 res!3044764) b!7604121))

(assert (= (or b!7604127 b!7604123) bm!698167))

(assert (= (or b!7604125 b!7604121) bm!698168))

(assert (= (or b!7604126 bm!698168) bm!698166))

(declare-fun m!8146036 () Bool)

(assert (=> b!7604124 m!8146036))

(declare-fun m!8146038 () Bool)

(assert (=> bm!698166 m!8146038))

(declare-fun m!8146040 () Bool)

(assert (=> bm!698167 m!8146040))

(assert (=> start!733024 d!2321638))

(declare-fun b!7604129 () Bool)

(declare-fun e!4523406 () Bool)

(declare-fun e!4523410 () Bool)

(assert (=> b!7604129 (= e!4523406 e!4523410)))

(declare-fun c!1402455 () Bool)

(assert (=> b!7604129 (= c!1402455 ((_ is Star!20181) r2!3249))))

(declare-fun b!7604130 () Bool)

(declare-fun e!4523409 () Bool)

(declare-fun call!698175 () Bool)

(assert (=> b!7604130 (= e!4523409 call!698175)))

(declare-fun b!7604131 () Bool)

(declare-fun e!4523405 () Bool)

(assert (=> b!7604131 (= e!4523410 e!4523405)))

(declare-fun c!1402456 () Bool)

(assert (=> b!7604131 (= c!1402456 ((_ is Union!20181) r2!3249))))

(declare-fun b!7604132 () Bool)

(declare-fun e!4523408 () Bool)

(assert (=> b!7604132 (= e!4523408 e!4523409)))

(declare-fun res!3044769 () Bool)

(assert (=> b!7604132 (=> (not res!3044769) (not e!4523409))))

(declare-fun call!698174 () Bool)

(assert (=> b!7604132 (= res!3044769 call!698174)))

(declare-fun b!7604133 () Bool)

(declare-fun e!4523407 () Bool)

(assert (=> b!7604133 (= e!4523410 e!4523407)))

(declare-fun res!3044770 () Bool)

(assert (=> b!7604133 (= res!3044770 (not (nullable!8809 (reg!20510 r2!3249))))))

(assert (=> b!7604133 (=> (not res!3044770) (not e!4523407))))

(declare-fun call!698176 () Bool)

(declare-fun bm!698169 () Bool)

(assert (=> bm!698169 (= call!698176 (validRegex!10609 (ite c!1402455 (reg!20510 r2!3249) (ite c!1402456 (regOne!40875 r2!3249) (regTwo!40874 r2!3249)))))))

(declare-fun bm!698170 () Bool)

(assert (=> bm!698170 (= call!698174 (validRegex!10609 (ite c!1402456 (regTwo!40875 r2!3249) (regOne!40874 r2!3249))))))

(declare-fun b!7604134 () Bool)

(declare-fun res!3044772 () Bool)

(declare-fun e!4523411 () Bool)

(assert (=> b!7604134 (=> (not res!3044772) (not e!4523411))))

(assert (=> b!7604134 (= res!3044772 call!698175)))

(assert (=> b!7604134 (= e!4523405 e!4523411)))

(declare-fun bm!698171 () Bool)

(assert (=> bm!698171 (= call!698175 call!698176)))

(declare-fun b!7604135 () Bool)

(assert (=> b!7604135 (= e!4523407 call!698176)))

(declare-fun b!7604136 () Bool)

(assert (=> b!7604136 (= e!4523411 call!698174)))

(declare-fun d!2321648 () Bool)

(declare-fun res!3044768 () Bool)

(assert (=> d!2321648 (=> res!3044768 e!4523406)))

(assert (=> d!2321648 (= res!3044768 ((_ is ElementMatch!20181) r2!3249))))

(assert (=> d!2321648 (= (validRegex!10609 r2!3249) e!4523406)))

(declare-fun b!7604137 () Bool)

(declare-fun res!3044771 () Bool)

(assert (=> b!7604137 (=> res!3044771 e!4523408)))

(assert (=> b!7604137 (= res!3044771 (not ((_ is Concat!29026) r2!3249)))))

(assert (=> b!7604137 (= e!4523405 e!4523408)))

(assert (= (and d!2321648 (not res!3044768)) b!7604129))

(assert (= (and b!7604129 c!1402455) b!7604133))

(assert (= (and b!7604129 (not c!1402455)) b!7604131))

(assert (= (and b!7604133 res!3044770) b!7604135))

(assert (= (and b!7604131 c!1402456) b!7604134))

(assert (= (and b!7604131 (not c!1402456)) b!7604137))

(assert (= (and b!7604134 res!3044772) b!7604136))

(assert (= (and b!7604137 (not res!3044771)) b!7604132))

(assert (= (and b!7604132 res!3044769) b!7604130))

(assert (= (or b!7604136 b!7604132) bm!698170))

(assert (= (or b!7604134 b!7604130) bm!698171))

(assert (= (or b!7604135 bm!698171) bm!698169))

(declare-fun m!8146042 () Bool)

(assert (=> b!7604133 m!8146042))

(declare-fun m!8146044 () Bool)

(assert (=> bm!698169 m!8146044))

(declare-fun m!8146046 () Bool)

(assert (=> bm!698170 m!8146046))

(assert (=> b!7604093 d!2321648))

(assert (=> b!7604086 d!2321634))

(declare-fun b!7604161 () Bool)

(declare-fun e!4523422 () Bool)

(declare-fun lt!2654653 () List!73064)

(assert (=> b!7604161 (= e!4523422 (or (not (= (_2!37839 lt!2654642) Nil!72940)) (= lt!2654653 (_1!37839 lt!2654642))))))

(declare-fun b!7604159 () Bool)

(declare-fun e!4523423 () List!73064)

(assert (=> b!7604159 (= e!4523423 (Cons!72940 (h!79388 (_1!37839 lt!2654642)) (++!17579 (t!387799 (_1!37839 lt!2654642)) (_2!37839 lt!2654642))))))

(declare-fun b!7604160 () Bool)

(declare-fun res!3044783 () Bool)

(assert (=> b!7604160 (=> (not res!3044783) (not e!4523422))))

(declare-fun size!42516 (List!73064) Int)

(assert (=> b!7604160 (= res!3044783 (= (size!42516 lt!2654653) (+ (size!42516 (_1!37839 lt!2654642)) (size!42516 (_2!37839 lt!2654642)))))))

(declare-fun b!7604158 () Bool)

(assert (=> b!7604158 (= e!4523423 (_2!37839 lt!2654642))))

(declare-fun d!2321650 () Bool)

(assert (=> d!2321650 e!4523422))

(declare-fun res!3044784 () Bool)

(assert (=> d!2321650 (=> (not res!3044784) (not e!4523422))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15423 (List!73064) (InoxSet C!40688))

(assert (=> d!2321650 (= res!3044784 (= (content!15423 lt!2654653) ((_ map or) (content!15423 (_1!37839 lt!2654642)) (content!15423 (_2!37839 lt!2654642)))))))

(assert (=> d!2321650 (= lt!2654653 e!4523423)))

(declare-fun c!1402462 () Bool)

(assert (=> d!2321650 (= c!1402462 ((_ is Nil!72940) (_1!37839 lt!2654642)))))

(assert (=> d!2321650 (= (++!17579 (_1!37839 lt!2654642) (_2!37839 lt!2654642)) lt!2654653)))

(assert (= (and d!2321650 c!1402462) b!7604158))

(assert (= (and d!2321650 (not c!1402462)) b!7604159))

(assert (= (and d!2321650 res!3044784) b!7604160))

(assert (= (and b!7604160 res!3044783) b!7604161))

(declare-fun m!8146062 () Bool)

(assert (=> b!7604159 m!8146062))

(declare-fun m!8146064 () Bool)

(assert (=> b!7604160 m!8146064))

(declare-fun m!8146066 () Bool)

(assert (=> b!7604160 m!8146066))

(declare-fun m!8146068 () Bool)

(assert (=> b!7604160 m!8146068))

(declare-fun m!8146070 () Bool)

(assert (=> d!2321650 m!8146070))

(declare-fun m!8146072 () Bool)

(assert (=> d!2321650 m!8146072))

(declare-fun m!8146074 () Bool)

(assert (=> d!2321650 m!8146074))

(assert (=> b!7604091 d!2321650))

(declare-fun bs!1942539 () Bool)

(declare-fun b!7604237 () Bool)

(assert (= bs!1942539 (and b!7604237 b!7604096)))

(declare-fun lambda!467930 () Int)

(assert (=> bs!1942539 (not (= lambda!467930 lambda!467918))))

(declare-fun bs!1942540 () Bool)

(assert (= bs!1942540 (and b!7604237 b!7604084)))

(assert (=> bs!1942540 (not (= lambda!467930 lambda!467919))))

(assert (=> b!7604237 true))

(assert (=> b!7604237 true))

(declare-fun bs!1942541 () Bool)

(declare-fun b!7604245 () Bool)

(assert (= bs!1942541 (and b!7604245 b!7604096)))

(declare-fun lambda!467931 () Int)

(assert (=> bs!1942541 (not (= lambda!467931 lambda!467918))))

(declare-fun bs!1942542 () Bool)

(assert (= bs!1942542 (and b!7604245 b!7604084)))

(assert (=> bs!1942542 (= (and (= (_1!37839 lt!2654642) s!10235) (= (regOne!40874 r1!3349) r1!3349) (= (regTwo!40874 r1!3349) r2!3249)) (= lambda!467931 lambda!467919))))

(declare-fun bs!1942543 () Bool)

(assert (= bs!1942543 (and b!7604245 b!7604237)))

(assert (=> bs!1942543 (not (= lambda!467931 lambda!467930))))

(assert (=> b!7604245 true))

(assert (=> b!7604245 true))

(declare-fun call!698187 () Bool)

(declare-fun c!1402483 () Bool)

(declare-fun bm!698182 () Bool)

(assert (=> bm!698182 (= call!698187 (Exists!4409 (ite c!1402483 lambda!467930 lambda!467931)))))

(declare-fun e!4523468 () Bool)

(assert (=> b!7604237 (= e!4523468 call!698187)))

(declare-fun b!7604238 () Bool)

(declare-fun e!4523470 () Bool)

(assert (=> b!7604238 (= e!4523470 (matchRSpec!4456 (regTwo!40875 r1!3349) (_1!37839 lt!2654642)))))

(declare-fun bm!698183 () Bool)

(declare-fun call!698188 () Bool)

(declare-fun isEmpty!41571 (List!73064) Bool)

(assert (=> bm!698183 (= call!698188 (isEmpty!41571 (_1!37839 lt!2654642)))))

(declare-fun b!7604239 () Bool)

(declare-fun e!4523472 () Bool)

(declare-fun e!4523471 () Bool)

(assert (=> b!7604239 (= e!4523472 e!4523471)))

(declare-fun res!3044822 () Bool)

(assert (=> b!7604239 (= res!3044822 (not ((_ is EmptyLang!20181) r1!3349)))))

(assert (=> b!7604239 (=> (not res!3044822) (not e!4523471))))

(declare-fun b!7604240 () Bool)

(declare-fun res!3044820 () Bool)

(assert (=> b!7604240 (=> res!3044820 e!4523468)))

(assert (=> b!7604240 (= res!3044820 call!698188)))

(declare-fun e!4523473 () Bool)

(assert (=> b!7604240 (= e!4523473 e!4523468)))

(declare-fun d!2321654 () Bool)

(declare-fun c!1402484 () Bool)

(assert (=> d!2321654 (= c!1402484 ((_ is EmptyExpr!20181) r1!3349))))

(assert (=> d!2321654 (= (matchRSpec!4456 r1!3349 (_1!37839 lt!2654642)) e!4523472)))

(declare-fun b!7604241 () Bool)

(declare-fun e!4523467 () Bool)

(assert (=> b!7604241 (= e!4523467 e!4523473)))

(assert (=> b!7604241 (= c!1402483 ((_ is Star!20181) r1!3349))))

(declare-fun b!7604242 () Bool)

(declare-fun e!4523469 () Bool)

(assert (=> b!7604242 (= e!4523469 (= (_1!37839 lt!2654642) (Cons!72940 (c!1402448 r1!3349) Nil!72940)))))

(declare-fun b!7604243 () Bool)

(declare-fun c!1402486 () Bool)

(assert (=> b!7604243 (= c!1402486 ((_ is Union!20181) r1!3349))))

(assert (=> b!7604243 (= e!4523469 e!4523467)))

(declare-fun b!7604244 () Bool)

(assert (=> b!7604244 (= e!4523472 call!698188)))

(assert (=> b!7604245 (= e!4523473 call!698187)))

(declare-fun b!7604246 () Bool)

(declare-fun c!1402485 () Bool)

(assert (=> b!7604246 (= c!1402485 ((_ is ElementMatch!20181) r1!3349))))

(assert (=> b!7604246 (= e!4523471 e!4523469)))

(declare-fun b!7604247 () Bool)

(assert (=> b!7604247 (= e!4523467 e!4523470)))

(declare-fun res!3044821 () Bool)

(assert (=> b!7604247 (= res!3044821 (matchRSpec!4456 (regOne!40875 r1!3349) (_1!37839 lt!2654642)))))

(assert (=> b!7604247 (=> res!3044821 e!4523470)))

(assert (= (and d!2321654 c!1402484) b!7604244))

(assert (= (and d!2321654 (not c!1402484)) b!7604239))

(assert (= (and b!7604239 res!3044822) b!7604246))

(assert (= (and b!7604246 c!1402485) b!7604242))

(assert (= (and b!7604246 (not c!1402485)) b!7604243))

(assert (= (and b!7604243 c!1402486) b!7604247))

(assert (= (and b!7604243 (not c!1402486)) b!7604241))

(assert (= (and b!7604247 (not res!3044821)) b!7604238))

(assert (= (and b!7604241 c!1402483) b!7604240))

(assert (= (and b!7604241 (not c!1402483)) b!7604245))

(assert (= (and b!7604240 (not res!3044820)) b!7604237))

(assert (= (or b!7604237 b!7604245) bm!698182))

(assert (= (or b!7604244 b!7604240) bm!698183))

(declare-fun m!8146084 () Bool)

(assert (=> bm!698182 m!8146084))

(declare-fun m!8146086 () Bool)

(assert (=> b!7604238 m!8146086))

(declare-fun m!8146088 () Bool)

(assert (=> bm!698183 m!8146088))

(declare-fun m!8146090 () Bool)

(assert (=> b!7604247 m!8146090))

(assert (=> b!7604091 d!2321654))

(declare-fun d!2321658 () Bool)

(assert (=> d!2321658 (= (matchR!9744 r2!3249 (_2!37839 lt!2654642)) (matchRSpec!4456 r2!3249 (_2!37839 lt!2654642)))))

(declare-fun lt!2654658 () Unit!167242)

(declare-fun choose!58707 (Regex!20181 List!73064) Unit!167242)

(assert (=> d!2321658 (= lt!2654658 (choose!58707 r2!3249 (_2!37839 lt!2654642)))))

(assert (=> d!2321658 (validRegex!10609 r2!3249)))

(assert (=> d!2321658 (= (mainMatchTheorem!4450 r2!3249 (_2!37839 lt!2654642)) lt!2654658)))

(declare-fun bs!1942544 () Bool)

(assert (= bs!1942544 d!2321658))

(assert (=> bs!1942544 m!8146010))

(assert (=> bs!1942544 m!8146014))

(declare-fun m!8146092 () Bool)

(assert (=> bs!1942544 m!8146092))

(assert (=> bs!1942544 m!8146008))

(assert (=> b!7604091 d!2321658))

(declare-fun d!2321660 () Bool)

(declare-fun lt!2654661 () tuple2!69072)

(declare-fun dynLambda!29903 (Int tuple2!69072) Bool)

(assert (=> d!2321660 (dynLambda!29903 lambda!467919 lt!2654661)))

(declare-fun choose!58708 (Int) tuple2!69072)

(assert (=> d!2321660 (= lt!2654661 (choose!58708 lambda!467919))))

(assert (=> d!2321660 (Exists!4409 lambda!467919)))

(assert (=> d!2321660 (= (pickWitness!424 lambda!467919) lt!2654661)))

(declare-fun b_lambda!288931 () Bool)

(assert (=> (not b_lambda!288931) (not d!2321660)))

(declare-fun bs!1942545 () Bool)

(assert (= bs!1942545 d!2321660))

(declare-fun m!8146094 () Bool)

(assert (=> bs!1942545 m!8146094))

(declare-fun m!8146096 () Bool)

(assert (=> bs!1942545 m!8146096))

(assert (=> bs!1942545 m!8146004))

(assert (=> b!7604091 d!2321660))

(declare-fun b!7604343 () Bool)

(declare-fun e!4523524 () Bool)

(declare-fun e!4523529 () Bool)

(assert (=> b!7604343 (= e!4523524 e!4523529)))

(declare-fun res!3044875 () Bool)

(assert (=> b!7604343 (=> (not res!3044875) (not e!4523529))))

(declare-fun lt!2654670 () Bool)

(assert (=> b!7604343 (= res!3044875 (not lt!2654670))))

(declare-fun b!7604344 () Bool)

(declare-fun e!4523526 () Bool)

(assert (=> b!7604344 (= e!4523526 (not lt!2654670))))

(declare-fun bm!698192 () Bool)

(declare-fun call!698197 () Bool)

(assert (=> bm!698192 (= call!698197 (isEmpty!41571 (_1!37839 lt!2654642)))))

(declare-fun b!7604345 () Bool)

(declare-fun res!3044878 () Bool)

(declare-fun e!4523528 () Bool)

(assert (=> b!7604345 (=> (not res!3044878) (not e!4523528))))

(declare-fun tail!15174 (List!73064) List!73064)

(assert (=> b!7604345 (= res!3044878 (isEmpty!41571 (tail!15174 (_1!37839 lt!2654642))))))

(declare-fun b!7604346 () Bool)

(declare-fun res!3044880 () Bool)

(declare-fun e!4523527 () Bool)

(assert (=> b!7604346 (=> res!3044880 e!4523527)))

(assert (=> b!7604346 (= res!3044880 (not (isEmpty!41571 (tail!15174 (_1!37839 lt!2654642)))))))

(declare-fun b!7604347 () Bool)

(declare-fun res!3044874 () Bool)

(assert (=> b!7604347 (=> res!3044874 e!4523524)))

(assert (=> b!7604347 (= res!3044874 (not ((_ is ElementMatch!20181) r1!3349)))))

(assert (=> b!7604347 (= e!4523526 e!4523524)))

(declare-fun b!7604348 () Bool)

(declare-fun res!3044877 () Bool)

(assert (=> b!7604348 (=> (not res!3044877) (not e!4523528))))

(assert (=> b!7604348 (= res!3044877 (not call!698197))))

(declare-fun b!7604349 () Bool)

(assert (=> b!7604349 (= e!4523529 e!4523527)))

(declare-fun res!3044881 () Bool)

(assert (=> b!7604349 (=> res!3044881 e!4523527)))

(assert (=> b!7604349 (= res!3044881 call!698197)))

(declare-fun b!7604350 () Bool)

(declare-fun e!4523525 () Bool)

(declare-fun derivativeStep!5834 (Regex!20181 C!40688) Regex!20181)

(declare-fun head!15634 (List!73064) C!40688)

(assert (=> b!7604350 (= e!4523525 (matchR!9744 (derivativeStep!5834 r1!3349 (head!15634 (_1!37839 lt!2654642))) (tail!15174 (_1!37839 lt!2654642))))))

(declare-fun d!2321662 () Bool)

(declare-fun e!4523523 () Bool)

(assert (=> d!2321662 e!4523523))

(declare-fun c!1402509 () Bool)

(assert (=> d!2321662 (= c!1402509 ((_ is EmptyExpr!20181) r1!3349))))

(assert (=> d!2321662 (= lt!2654670 e!4523525)))

(declare-fun c!1402510 () Bool)

(assert (=> d!2321662 (= c!1402510 (isEmpty!41571 (_1!37839 lt!2654642)))))

(assert (=> d!2321662 (validRegex!10609 r1!3349)))

(assert (=> d!2321662 (= (matchR!9744 r1!3349 (_1!37839 lt!2654642)) lt!2654670)))

(declare-fun b!7604351 () Bool)

(declare-fun res!3044876 () Bool)

(assert (=> b!7604351 (=> res!3044876 e!4523524)))

(assert (=> b!7604351 (= res!3044876 e!4523528)))

(declare-fun res!3044879 () Bool)

(assert (=> b!7604351 (=> (not res!3044879) (not e!4523528))))

(assert (=> b!7604351 (= res!3044879 lt!2654670)))

(declare-fun b!7604352 () Bool)

(assert (=> b!7604352 (= e!4523523 e!4523526)))

(declare-fun c!1402511 () Bool)

(assert (=> b!7604352 (= c!1402511 ((_ is EmptyLang!20181) r1!3349))))

(declare-fun b!7604353 () Bool)

(assert (=> b!7604353 (= e!4523528 (= (head!15634 (_1!37839 lt!2654642)) (c!1402448 r1!3349)))))

(declare-fun b!7604354 () Bool)

(assert (=> b!7604354 (= e!4523523 (= lt!2654670 call!698197))))

(declare-fun b!7604355 () Bool)

(assert (=> b!7604355 (= e!4523525 (nullable!8809 r1!3349))))

(declare-fun b!7604356 () Bool)

(assert (=> b!7604356 (= e!4523527 (not (= (head!15634 (_1!37839 lt!2654642)) (c!1402448 r1!3349))))))

(assert (= (and d!2321662 c!1402510) b!7604355))

(assert (= (and d!2321662 (not c!1402510)) b!7604350))

(assert (= (and d!2321662 c!1402509) b!7604354))

(assert (= (and d!2321662 (not c!1402509)) b!7604352))

(assert (= (and b!7604352 c!1402511) b!7604344))

(assert (= (and b!7604352 (not c!1402511)) b!7604347))

(assert (= (and b!7604347 (not res!3044874)) b!7604351))

(assert (= (and b!7604351 res!3044879) b!7604348))

(assert (= (and b!7604348 res!3044877) b!7604345))

(assert (= (and b!7604345 res!3044878) b!7604353))

(assert (= (and b!7604351 (not res!3044876)) b!7604343))

(assert (= (and b!7604343 res!3044875) b!7604349))

(assert (= (and b!7604349 (not res!3044881)) b!7604346))

(assert (= (and b!7604346 (not res!3044880)) b!7604356))

(assert (= (or b!7604354 b!7604348 b!7604349) bm!698192))

(assert (=> bm!698192 m!8146088))

(assert (=> d!2321662 m!8146088))

(assert (=> d!2321662 m!8146006))

(declare-fun m!8146136 () Bool)

(assert (=> b!7604350 m!8146136))

(assert (=> b!7604350 m!8146136))

(declare-fun m!8146138 () Bool)

(assert (=> b!7604350 m!8146138))

(declare-fun m!8146140 () Bool)

(assert (=> b!7604350 m!8146140))

(assert (=> b!7604350 m!8146138))

(assert (=> b!7604350 m!8146140))

(declare-fun m!8146142 () Bool)

(assert (=> b!7604350 m!8146142))

(declare-fun m!8146144 () Bool)

(assert (=> b!7604355 m!8146144))

(assert (=> b!7604346 m!8146140))

(assert (=> b!7604346 m!8146140))

(declare-fun m!8146146 () Bool)

(assert (=> b!7604346 m!8146146))

(assert (=> b!7604353 m!8146136))

(assert (=> b!7604345 m!8146140))

(assert (=> b!7604345 m!8146140))

(assert (=> b!7604345 m!8146146))

(assert (=> b!7604356 m!8146136))

(assert (=> b!7604091 d!2321662))

(declare-fun d!2321674 () Bool)

(assert (=> d!2321674 (= (matchR!9744 r1!3349 (_1!37839 lt!2654642)) (matchRSpec!4456 r1!3349 (_1!37839 lt!2654642)))))

(declare-fun lt!2654671 () Unit!167242)

(assert (=> d!2321674 (= lt!2654671 (choose!58707 r1!3349 (_1!37839 lt!2654642)))))

(assert (=> d!2321674 (validRegex!10609 r1!3349)))

(assert (=> d!2321674 (= (mainMatchTheorem!4450 r1!3349 (_1!37839 lt!2654642)) lt!2654671)))

(declare-fun bs!1942557 () Bool)

(assert (= bs!1942557 d!2321674))

(assert (=> bs!1942557 m!8146016))

(assert (=> bs!1942557 m!8146020))

(declare-fun m!8146148 () Bool)

(assert (=> bs!1942557 m!8146148))

(assert (=> bs!1942557 m!8146006))

(assert (=> b!7604091 d!2321674))

(declare-fun bs!1942558 () Bool)

(declare-fun b!7604375 () Bool)

(assert (= bs!1942558 (and b!7604375 b!7604096)))

(declare-fun lambda!467934 () Int)

(assert (=> bs!1942558 (not (= lambda!467934 lambda!467918))))

(declare-fun bs!1942559 () Bool)

(assert (= bs!1942559 (and b!7604375 b!7604084)))

(assert (=> bs!1942559 (not (= lambda!467934 lambda!467919))))

(declare-fun bs!1942560 () Bool)

(assert (= bs!1942560 (and b!7604375 b!7604237)))

(assert (=> bs!1942560 (= (and (= (_2!37839 lt!2654642) (_1!37839 lt!2654642)) (= (reg!20510 r2!3249) (reg!20510 r1!3349)) (= r2!3249 r1!3349)) (= lambda!467934 lambda!467930))))

(declare-fun bs!1942561 () Bool)

(assert (= bs!1942561 (and b!7604375 b!7604245)))

(assert (=> bs!1942561 (not (= lambda!467934 lambda!467931))))

(assert (=> b!7604375 true))

(assert (=> b!7604375 true))

(declare-fun bs!1942562 () Bool)

(declare-fun b!7604383 () Bool)

(assert (= bs!1942562 (and b!7604383 b!7604084)))

(declare-fun lambda!467935 () Int)

(assert (=> bs!1942562 (= (and (= (_2!37839 lt!2654642) s!10235) (= (regOne!40874 r2!3249) r1!3349) (= (regTwo!40874 r2!3249) r2!3249)) (= lambda!467935 lambda!467919))))

(declare-fun bs!1942563 () Bool)

(assert (= bs!1942563 (and b!7604383 b!7604237)))

(assert (=> bs!1942563 (not (= lambda!467935 lambda!467930))))

(declare-fun bs!1942564 () Bool)

(assert (= bs!1942564 (and b!7604383 b!7604245)))

(assert (=> bs!1942564 (= (and (= (_2!37839 lt!2654642) (_1!37839 lt!2654642)) (= (regOne!40874 r2!3249) (regOne!40874 r1!3349)) (= (regTwo!40874 r2!3249) (regTwo!40874 r1!3349))) (= lambda!467935 lambda!467931))))

(declare-fun bs!1942565 () Bool)

(assert (= bs!1942565 (and b!7604383 b!7604375)))

(assert (=> bs!1942565 (not (= lambda!467935 lambda!467934))))

(declare-fun bs!1942566 () Bool)

(assert (= bs!1942566 (and b!7604383 b!7604096)))

(assert (=> bs!1942566 (not (= lambda!467935 lambda!467918))))

(assert (=> b!7604383 true))

(assert (=> b!7604383 true))

(declare-fun bm!698193 () Bool)

(declare-fun c!1402516 () Bool)

(declare-fun call!698198 () Bool)

(assert (=> bm!698193 (= call!698198 (Exists!4409 (ite c!1402516 lambda!467934 lambda!467935)))))

(declare-fun e!4523545 () Bool)

(assert (=> b!7604375 (= e!4523545 call!698198)))

(declare-fun b!7604376 () Bool)

(declare-fun e!4523547 () Bool)

(assert (=> b!7604376 (= e!4523547 (matchRSpec!4456 (regTwo!40875 r2!3249) (_2!37839 lt!2654642)))))

(declare-fun bm!698194 () Bool)

(declare-fun call!698201 () Bool)

(assert (=> bm!698194 (= call!698201 (isEmpty!41571 (_2!37839 lt!2654642)))))

(declare-fun b!7604377 () Bool)

(declare-fun e!4523549 () Bool)

(declare-fun e!4523548 () Bool)

(assert (=> b!7604377 (= e!4523549 e!4523548)))

(declare-fun res!3044894 () Bool)

(assert (=> b!7604377 (= res!3044894 (not ((_ is EmptyLang!20181) r2!3249)))))

(assert (=> b!7604377 (=> (not res!3044894) (not e!4523548))))

(declare-fun b!7604378 () Bool)

(declare-fun res!3044892 () Bool)

(assert (=> b!7604378 (=> res!3044892 e!4523545)))

(assert (=> b!7604378 (= res!3044892 call!698201)))

(declare-fun e!4523550 () Bool)

(assert (=> b!7604378 (= e!4523550 e!4523545)))

(declare-fun d!2321676 () Bool)

(declare-fun c!1402517 () Bool)

(assert (=> d!2321676 (= c!1402517 ((_ is EmptyExpr!20181) r2!3249))))

(assert (=> d!2321676 (= (matchRSpec!4456 r2!3249 (_2!37839 lt!2654642)) e!4523549)))

(declare-fun b!7604379 () Bool)

(declare-fun e!4523544 () Bool)

(assert (=> b!7604379 (= e!4523544 e!4523550)))

(assert (=> b!7604379 (= c!1402516 ((_ is Star!20181) r2!3249))))

(declare-fun b!7604380 () Bool)

(declare-fun e!4523546 () Bool)

(assert (=> b!7604380 (= e!4523546 (= (_2!37839 lt!2654642) (Cons!72940 (c!1402448 r2!3249) Nil!72940)))))

(declare-fun b!7604381 () Bool)

(declare-fun c!1402519 () Bool)

(assert (=> b!7604381 (= c!1402519 ((_ is Union!20181) r2!3249))))

(assert (=> b!7604381 (= e!4523546 e!4523544)))

(declare-fun b!7604382 () Bool)

(assert (=> b!7604382 (= e!4523549 call!698201)))

(assert (=> b!7604383 (= e!4523550 call!698198)))

(declare-fun b!7604384 () Bool)

(declare-fun c!1402518 () Bool)

(assert (=> b!7604384 (= c!1402518 ((_ is ElementMatch!20181) r2!3249))))

(assert (=> b!7604384 (= e!4523548 e!4523546)))

(declare-fun b!7604385 () Bool)

(assert (=> b!7604385 (= e!4523544 e!4523547)))

(declare-fun res!3044893 () Bool)

(assert (=> b!7604385 (= res!3044893 (matchRSpec!4456 (regOne!40875 r2!3249) (_2!37839 lt!2654642)))))

(assert (=> b!7604385 (=> res!3044893 e!4523547)))

(assert (= (and d!2321676 c!1402517) b!7604382))

(assert (= (and d!2321676 (not c!1402517)) b!7604377))

(assert (= (and b!7604377 res!3044894) b!7604384))

(assert (= (and b!7604384 c!1402518) b!7604380))

(assert (= (and b!7604384 (not c!1402518)) b!7604381))

(assert (= (and b!7604381 c!1402519) b!7604385))

(assert (= (and b!7604381 (not c!1402519)) b!7604379))

(assert (= (and b!7604385 (not res!3044893)) b!7604376))

(assert (= (and b!7604379 c!1402516) b!7604378))

(assert (= (and b!7604379 (not c!1402516)) b!7604383))

(assert (= (and b!7604378 (not res!3044892)) b!7604375))

(assert (= (or b!7604375 b!7604383) bm!698193))

(assert (= (or b!7604382 b!7604378) bm!698194))

(declare-fun m!8146150 () Bool)

(assert (=> bm!698193 m!8146150))

(declare-fun m!8146152 () Bool)

(assert (=> b!7604376 m!8146152))

(declare-fun m!8146154 () Bool)

(assert (=> bm!698194 m!8146154))

(declare-fun m!8146156 () Bool)

(assert (=> b!7604385 m!8146156))

(assert (=> b!7604091 d!2321676))

(declare-fun b!7604395 () Bool)

(declare-fun e!4523559 () Bool)

(declare-fun e!4523564 () Bool)

(assert (=> b!7604395 (= e!4523559 e!4523564)))

(declare-fun res!3044901 () Bool)

(assert (=> b!7604395 (=> (not res!3044901) (not e!4523564))))

(declare-fun lt!2654672 () Bool)

(assert (=> b!7604395 (= res!3044901 (not lt!2654672))))

(declare-fun b!7604396 () Bool)

(declare-fun e!4523561 () Bool)

(assert (=> b!7604396 (= e!4523561 (not lt!2654672))))

(declare-fun bm!698204 () Bool)

(declare-fun call!698209 () Bool)

(assert (=> bm!698204 (= call!698209 (isEmpty!41571 (_2!37839 lt!2654642)))))

(declare-fun b!7604397 () Bool)

(declare-fun res!3044904 () Bool)

(declare-fun e!4523563 () Bool)

(assert (=> b!7604397 (=> (not res!3044904) (not e!4523563))))

(assert (=> b!7604397 (= res!3044904 (isEmpty!41571 (tail!15174 (_2!37839 lt!2654642))))))

(declare-fun b!7604398 () Bool)

(declare-fun res!3044906 () Bool)

(declare-fun e!4523562 () Bool)

(assert (=> b!7604398 (=> res!3044906 e!4523562)))

(assert (=> b!7604398 (= res!3044906 (not (isEmpty!41571 (tail!15174 (_2!37839 lt!2654642)))))))

(declare-fun b!7604399 () Bool)

(declare-fun res!3044900 () Bool)

(assert (=> b!7604399 (=> res!3044900 e!4523559)))

(assert (=> b!7604399 (= res!3044900 (not ((_ is ElementMatch!20181) r2!3249)))))

(assert (=> b!7604399 (= e!4523561 e!4523559)))

(declare-fun b!7604400 () Bool)

(declare-fun res!3044903 () Bool)

(assert (=> b!7604400 (=> (not res!3044903) (not e!4523563))))

(assert (=> b!7604400 (= res!3044903 (not call!698209))))

(declare-fun b!7604401 () Bool)

(assert (=> b!7604401 (= e!4523564 e!4523562)))

(declare-fun res!3044907 () Bool)

(assert (=> b!7604401 (=> res!3044907 e!4523562)))

(assert (=> b!7604401 (= res!3044907 call!698209)))

(declare-fun b!7604402 () Bool)

(declare-fun e!4523560 () Bool)

(assert (=> b!7604402 (= e!4523560 (matchR!9744 (derivativeStep!5834 r2!3249 (head!15634 (_2!37839 lt!2654642))) (tail!15174 (_2!37839 lt!2654642))))))

(declare-fun d!2321678 () Bool)

(declare-fun e!4523558 () Bool)

(assert (=> d!2321678 e!4523558))

(declare-fun c!1402522 () Bool)

(assert (=> d!2321678 (= c!1402522 ((_ is EmptyExpr!20181) r2!3249))))

(assert (=> d!2321678 (= lt!2654672 e!4523560)))

(declare-fun c!1402523 () Bool)

(assert (=> d!2321678 (= c!1402523 (isEmpty!41571 (_2!37839 lt!2654642)))))

(assert (=> d!2321678 (validRegex!10609 r2!3249)))

(assert (=> d!2321678 (= (matchR!9744 r2!3249 (_2!37839 lt!2654642)) lt!2654672)))

(declare-fun b!7604403 () Bool)

(declare-fun res!3044902 () Bool)

(assert (=> b!7604403 (=> res!3044902 e!4523559)))

(assert (=> b!7604403 (= res!3044902 e!4523563)))

(declare-fun res!3044905 () Bool)

(assert (=> b!7604403 (=> (not res!3044905) (not e!4523563))))

(assert (=> b!7604403 (= res!3044905 lt!2654672)))

(declare-fun b!7604404 () Bool)

(assert (=> b!7604404 (= e!4523558 e!4523561)))

(declare-fun c!1402524 () Bool)

(assert (=> b!7604404 (= c!1402524 ((_ is EmptyLang!20181) r2!3249))))

(declare-fun b!7604405 () Bool)

(assert (=> b!7604405 (= e!4523563 (= (head!15634 (_2!37839 lt!2654642)) (c!1402448 r2!3249)))))

(declare-fun b!7604406 () Bool)

(assert (=> b!7604406 (= e!4523558 (= lt!2654672 call!698209))))

(declare-fun b!7604407 () Bool)

(assert (=> b!7604407 (= e!4523560 (nullable!8809 r2!3249))))

(declare-fun b!7604408 () Bool)

(assert (=> b!7604408 (= e!4523562 (not (= (head!15634 (_2!37839 lt!2654642)) (c!1402448 r2!3249))))))

(assert (= (and d!2321678 c!1402523) b!7604407))

(assert (= (and d!2321678 (not c!1402523)) b!7604402))

(assert (= (and d!2321678 c!1402522) b!7604406))

(assert (= (and d!2321678 (not c!1402522)) b!7604404))

(assert (= (and b!7604404 c!1402524) b!7604396))

(assert (= (and b!7604404 (not c!1402524)) b!7604399))

(assert (= (and b!7604399 (not res!3044900)) b!7604403))

(assert (= (and b!7604403 res!3044905) b!7604400))

(assert (= (and b!7604400 res!3044903) b!7604397))

(assert (= (and b!7604397 res!3044904) b!7604405))

(assert (= (and b!7604403 (not res!3044902)) b!7604395))

(assert (= (and b!7604395 res!3044901) b!7604401))

(assert (= (and b!7604401 (not res!3044907)) b!7604398))

(assert (= (and b!7604398 (not res!3044906)) b!7604408))

(assert (= (or b!7604406 b!7604400 b!7604401) bm!698204))

(assert (=> bm!698204 m!8146154))

(assert (=> d!2321678 m!8146154))

(assert (=> d!2321678 m!8146008))

(declare-fun m!8146164 () Bool)

(assert (=> b!7604402 m!8146164))

(assert (=> b!7604402 m!8146164))

(declare-fun m!8146166 () Bool)

(assert (=> b!7604402 m!8146166))

(declare-fun m!8146168 () Bool)

(assert (=> b!7604402 m!8146168))

(assert (=> b!7604402 m!8146166))

(assert (=> b!7604402 m!8146168))

(declare-fun m!8146174 () Bool)

(assert (=> b!7604402 m!8146174))

(declare-fun m!8146178 () Bool)

(assert (=> b!7604407 m!8146178))

(assert (=> b!7604398 m!8146168))

(assert (=> b!7604398 m!8146168))

(declare-fun m!8146180 () Bool)

(assert (=> b!7604398 m!8146180))

(assert (=> b!7604405 m!8146164))

(assert (=> b!7604397 m!8146168))

(assert (=> b!7604397 m!8146168))

(assert (=> b!7604397 m!8146180))

(assert (=> b!7604408 m!8146164))

(assert (=> b!7604091 d!2321678))

(declare-fun b!7604446 () Bool)

(declare-fun e!4523579 () Bool)

(declare-fun tp!2217683 () Bool)

(declare-fun tp!2217684 () Bool)

(assert (=> b!7604446 (= e!4523579 (and tp!2217683 tp!2217684))))

(declare-fun b!7604445 () Bool)

(declare-fun tp!2217686 () Bool)

(assert (=> b!7604445 (= e!4523579 tp!2217686)))

(declare-fun b!7604444 () Bool)

(declare-fun tp!2217685 () Bool)

(declare-fun tp!2217687 () Bool)

(assert (=> b!7604444 (= e!4523579 (and tp!2217685 tp!2217687))))

(declare-fun b!7604443 () Bool)

(assert (=> b!7604443 (= e!4523579 tp_is_empty!50717)))

(assert (=> b!7604085 (= tp!2217653 e!4523579)))

(assert (= (and b!7604085 ((_ is ElementMatch!20181) (reg!20510 r1!3349))) b!7604443))

(assert (= (and b!7604085 ((_ is Concat!29026) (reg!20510 r1!3349))) b!7604444))

(assert (= (and b!7604085 ((_ is Star!20181) (reg!20510 r1!3349))) b!7604445))

(assert (= (and b!7604085 ((_ is Union!20181) (reg!20510 r1!3349))) b!7604446))

(declare-fun b!7604455 () Bool)

(declare-fun e!4523583 () Bool)

(declare-fun tp!2217695 () Bool)

(assert (=> b!7604455 (= e!4523583 (and tp_is_empty!50717 tp!2217695))))

(assert (=> b!7604090 (= tp!2217650 e!4523583)))

(assert (= (and b!7604090 ((_ is Cons!72940) (t!387799 s!10235))) b!7604455))

(declare-fun b!7604463 () Bool)

(declare-fun e!4523585 () Bool)

(declare-fun tp!2217701 () Bool)

(declare-fun tp!2217702 () Bool)

(assert (=> b!7604463 (= e!4523585 (and tp!2217701 tp!2217702))))

(declare-fun b!7604462 () Bool)

(declare-fun tp!2217704 () Bool)

(assert (=> b!7604462 (= e!4523585 tp!2217704)))

(declare-fun b!7604461 () Bool)

(declare-fun tp!2217703 () Bool)

(declare-fun tp!2217705 () Bool)

(assert (=> b!7604461 (= e!4523585 (and tp!2217703 tp!2217705))))

(declare-fun b!7604460 () Bool)

(assert (=> b!7604460 (= e!4523585 tp_is_empty!50717)))

(assert (=> b!7604095 (= tp!2217658 e!4523585)))

(assert (= (and b!7604095 ((_ is ElementMatch!20181) (regOne!40874 r1!3349))) b!7604460))

(assert (= (and b!7604095 ((_ is Concat!29026) (regOne!40874 r1!3349))) b!7604461))

(assert (= (and b!7604095 ((_ is Star!20181) (regOne!40874 r1!3349))) b!7604462))

(assert (= (and b!7604095 ((_ is Union!20181) (regOne!40874 r1!3349))) b!7604463))

(declare-fun b!7604471 () Bool)

(declare-fun e!4523587 () Bool)

(declare-fun tp!2217711 () Bool)

(declare-fun tp!2217712 () Bool)

(assert (=> b!7604471 (= e!4523587 (and tp!2217711 tp!2217712))))

(declare-fun b!7604470 () Bool)

(declare-fun tp!2217714 () Bool)

(assert (=> b!7604470 (= e!4523587 tp!2217714)))

(declare-fun b!7604469 () Bool)

(declare-fun tp!2217713 () Bool)

(declare-fun tp!2217715 () Bool)

(assert (=> b!7604469 (= e!4523587 (and tp!2217713 tp!2217715))))

(declare-fun b!7604468 () Bool)

(assert (=> b!7604468 (= e!4523587 tp_is_empty!50717)))

(assert (=> b!7604095 (= tp!2217655 e!4523587)))

(assert (= (and b!7604095 ((_ is ElementMatch!20181) (regTwo!40874 r1!3349))) b!7604468))

(assert (= (and b!7604095 ((_ is Concat!29026) (regTwo!40874 r1!3349))) b!7604469))

(assert (= (and b!7604095 ((_ is Star!20181) (regTwo!40874 r1!3349))) b!7604470))

(assert (= (and b!7604095 ((_ is Union!20181) (regTwo!40874 r1!3349))) b!7604471))

(declare-fun b!7604479 () Bool)

(declare-fun e!4523589 () Bool)

(declare-fun tp!2217721 () Bool)

(declare-fun tp!2217722 () Bool)

(assert (=> b!7604479 (= e!4523589 (and tp!2217721 tp!2217722))))

(declare-fun b!7604478 () Bool)

(declare-fun tp!2217724 () Bool)

(assert (=> b!7604478 (= e!4523589 tp!2217724)))

(declare-fun b!7604477 () Bool)

(declare-fun tp!2217723 () Bool)

(declare-fun tp!2217725 () Bool)

(assert (=> b!7604477 (= e!4523589 (and tp!2217723 tp!2217725))))

(declare-fun b!7604476 () Bool)

(assert (=> b!7604476 (= e!4523589 tp_is_empty!50717)))

(assert (=> b!7604089 (= tp!2217652 e!4523589)))

(assert (= (and b!7604089 ((_ is ElementMatch!20181) (regOne!40874 r2!3249))) b!7604476))

(assert (= (and b!7604089 ((_ is Concat!29026) (regOne!40874 r2!3249))) b!7604477))

(assert (= (and b!7604089 ((_ is Star!20181) (regOne!40874 r2!3249))) b!7604478))

(assert (= (and b!7604089 ((_ is Union!20181) (regOne!40874 r2!3249))) b!7604479))

(declare-fun b!7604487 () Bool)

(declare-fun e!4523591 () Bool)

(declare-fun tp!2217731 () Bool)

(declare-fun tp!2217732 () Bool)

(assert (=> b!7604487 (= e!4523591 (and tp!2217731 tp!2217732))))

(declare-fun b!7604486 () Bool)

(declare-fun tp!2217734 () Bool)

(assert (=> b!7604486 (= e!4523591 tp!2217734)))

(declare-fun b!7604485 () Bool)

(declare-fun tp!2217733 () Bool)

(declare-fun tp!2217735 () Bool)

(assert (=> b!7604485 (= e!4523591 (and tp!2217733 tp!2217735))))

(declare-fun b!7604484 () Bool)

(assert (=> b!7604484 (= e!4523591 tp_is_empty!50717)))

(assert (=> b!7604089 (= tp!2217657 e!4523591)))

(assert (= (and b!7604089 ((_ is ElementMatch!20181) (regTwo!40874 r2!3249))) b!7604484))

(assert (= (and b!7604089 ((_ is Concat!29026) (regTwo!40874 r2!3249))) b!7604485))

(assert (= (and b!7604089 ((_ is Star!20181) (regTwo!40874 r2!3249))) b!7604486))

(assert (= (and b!7604089 ((_ is Union!20181) (regTwo!40874 r2!3249))) b!7604487))

(declare-fun b!7604495 () Bool)

(declare-fun e!4523593 () Bool)

(declare-fun tp!2217741 () Bool)

(declare-fun tp!2217742 () Bool)

(assert (=> b!7604495 (= e!4523593 (and tp!2217741 tp!2217742))))

(declare-fun b!7604494 () Bool)

(declare-fun tp!2217744 () Bool)

(assert (=> b!7604494 (= e!4523593 tp!2217744)))

(declare-fun b!7604493 () Bool)

(declare-fun tp!2217743 () Bool)

(declare-fun tp!2217745 () Bool)

(assert (=> b!7604493 (= e!4523593 (and tp!2217743 tp!2217745))))

(declare-fun b!7604492 () Bool)

(assert (=> b!7604492 (= e!4523593 tp_is_empty!50717)))

(assert (=> b!7604094 (= tp!2217659 e!4523593)))

(assert (= (and b!7604094 ((_ is ElementMatch!20181) (regOne!40875 r2!3249))) b!7604492))

(assert (= (and b!7604094 ((_ is Concat!29026) (regOne!40875 r2!3249))) b!7604493))

(assert (= (and b!7604094 ((_ is Star!20181) (regOne!40875 r2!3249))) b!7604494))

(assert (= (and b!7604094 ((_ is Union!20181) (regOne!40875 r2!3249))) b!7604495))

(declare-fun b!7604503 () Bool)

(declare-fun e!4523595 () Bool)

(declare-fun tp!2217751 () Bool)

(declare-fun tp!2217752 () Bool)

(assert (=> b!7604503 (= e!4523595 (and tp!2217751 tp!2217752))))

(declare-fun b!7604502 () Bool)

(declare-fun tp!2217754 () Bool)

(assert (=> b!7604502 (= e!4523595 tp!2217754)))

(declare-fun b!7604501 () Bool)

(declare-fun tp!2217753 () Bool)

(declare-fun tp!2217755 () Bool)

(assert (=> b!7604501 (= e!4523595 (and tp!2217753 tp!2217755))))

(declare-fun b!7604500 () Bool)

(assert (=> b!7604500 (= e!4523595 tp_is_empty!50717)))

(assert (=> b!7604094 (= tp!2217656 e!4523595)))

(assert (= (and b!7604094 ((_ is ElementMatch!20181) (regTwo!40875 r2!3249))) b!7604500))

(assert (= (and b!7604094 ((_ is Concat!29026) (regTwo!40875 r2!3249))) b!7604501))

(assert (= (and b!7604094 ((_ is Star!20181) (regTwo!40875 r2!3249))) b!7604502))

(assert (= (and b!7604094 ((_ is Union!20181) (regTwo!40875 r2!3249))) b!7604503))

(declare-fun b!7604511 () Bool)

(declare-fun e!4523597 () Bool)

(declare-fun tp!2217761 () Bool)

(declare-fun tp!2217762 () Bool)

(assert (=> b!7604511 (= e!4523597 (and tp!2217761 tp!2217762))))

(declare-fun b!7604510 () Bool)

(declare-fun tp!2217764 () Bool)

(assert (=> b!7604510 (= e!4523597 tp!2217764)))

(declare-fun b!7604509 () Bool)

(declare-fun tp!2217763 () Bool)

(declare-fun tp!2217765 () Bool)

(assert (=> b!7604509 (= e!4523597 (and tp!2217763 tp!2217765))))

(declare-fun b!7604508 () Bool)

(assert (=> b!7604508 (= e!4523597 tp_is_empty!50717)))

(assert (=> b!7604088 (= tp!2217651 e!4523597)))

(assert (= (and b!7604088 ((_ is ElementMatch!20181) (reg!20510 r2!3249))) b!7604508))

(assert (= (and b!7604088 ((_ is Concat!29026) (reg!20510 r2!3249))) b!7604509))

(assert (= (and b!7604088 ((_ is Star!20181) (reg!20510 r2!3249))) b!7604510))

(assert (= (and b!7604088 ((_ is Union!20181) (reg!20510 r2!3249))) b!7604511))

(declare-fun b!7604519 () Bool)

(declare-fun e!4523599 () Bool)

(declare-fun tp!2217771 () Bool)

(declare-fun tp!2217772 () Bool)

(assert (=> b!7604519 (= e!4523599 (and tp!2217771 tp!2217772))))

(declare-fun b!7604518 () Bool)

(declare-fun tp!2217774 () Bool)

(assert (=> b!7604518 (= e!4523599 tp!2217774)))

(declare-fun b!7604517 () Bool)

(declare-fun tp!2217773 () Bool)

(declare-fun tp!2217775 () Bool)

(assert (=> b!7604517 (= e!4523599 (and tp!2217773 tp!2217775))))

(declare-fun b!7604516 () Bool)

(assert (=> b!7604516 (= e!4523599 tp_is_empty!50717)))

(assert (=> b!7604087 (= tp!2217649 e!4523599)))

(assert (= (and b!7604087 ((_ is ElementMatch!20181) (regOne!40875 r1!3349))) b!7604516))

(assert (= (and b!7604087 ((_ is Concat!29026) (regOne!40875 r1!3349))) b!7604517))

(assert (= (and b!7604087 ((_ is Star!20181) (regOne!40875 r1!3349))) b!7604518))

(assert (= (and b!7604087 ((_ is Union!20181) (regOne!40875 r1!3349))) b!7604519))

(declare-fun b!7604527 () Bool)

(declare-fun e!4523601 () Bool)

(declare-fun tp!2217781 () Bool)

(declare-fun tp!2217782 () Bool)

(assert (=> b!7604527 (= e!4523601 (and tp!2217781 tp!2217782))))

(declare-fun b!7604526 () Bool)

(declare-fun tp!2217784 () Bool)

(assert (=> b!7604526 (= e!4523601 tp!2217784)))

(declare-fun b!7604525 () Bool)

(declare-fun tp!2217783 () Bool)

(declare-fun tp!2217785 () Bool)

(assert (=> b!7604525 (= e!4523601 (and tp!2217783 tp!2217785))))

(declare-fun b!7604524 () Bool)

(assert (=> b!7604524 (= e!4523601 tp_is_empty!50717)))

(assert (=> b!7604087 (= tp!2217654 e!4523601)))

(assert (= (and b!7604087 ((_ is ElementMatch!20181) (regTwo!40875 r1!3349))) b!7604524))

(assert (= (and b!7604087 ((_ is Concat!29026) (regTwo!40875 r1!3349))) b!7604525))

(assert (= (and b!7604087 ((_ is Star!20181) (regTwo!40875 r1!3349))) b!7604526))

(assert (= (and b!7604087 ((_ is Union!20181) (regTwo!40875 r1!3349))) b!7604527))

(declare-fun b_lambda!288937 () Bool)

(assert (= b_lambda!288931 (or b!7604084 b_lambda!288937)))

(declare-fun bs!1942567 () Bool)

(declare-fun d!2321684 () Bool)

(assert (= bs!1942567 (and d!2321684 b!7604084)))

(declare-fun res!3044913 () Bool)

(declare-fun e!4523602 () Bool)

(assert (=> bs!1942567 (=> (not res!3044913) (not e!4523602))))

(assert (=> bs!1942567 (= res!3044913 (= (++!17579 (_1!37839 lt!2654661) (_2!37839 lt!2654661)) s!10235))))

(assert (=> bs!1942567 (= (dynLambda!29903 lambda!467919 lt!2654661) e!4523602)))

(declare-fun b!7604528 () Bool)

(declare-fun res!3044914 () Bool)

(assert (=> b!7604528 (=> (not res!3044914) (not e!4523602))))

(assert (=> b!7604528 (= res!3044914 (matchRSpec!4456 r1!3349 (_1!37839 lt!2654661)))))

(declare-fun b!7604529 () Bool)

(assert (=> b!7604529 (= e!4523602 (matchRSpec!4456 r2!3249 (_2!37839 lt!2654661)))))

(assert (= (and bs!1942567 res!3044913) b!7604528))

(assert (= (and b!7604528 res!3044914) b!7604529))

(declare-fun m!8146182 () Bool)

(assert (=> bs!1942567 m!8146182))

(declare-fun m!8146185 () Bool)

(assert (=> b!7604528 m!8146185))

(declare-fun m!8146188 () Bool)

(assert (=> b!7604529 m!8146188))

(assert (=> d!2321660 d!2321684))

(check-sat (not b!7604527) (not b!7604398) (not b!7604485) (not b!7604160) (not b!7604445) (not d!2321636) (not b!7604487) (not bm!698194) (not bm!698183) (not b!7604470) (not b!7604238) (not d!2321634) (not b!7604353) (not d!2321658) (not b!7604124) (not b!7604528) (not b!7604478) (not b!7604247) (not b!7604408) (not b!7604350) (not b!7604462) (not bm!698167) (not b!7604469) (not b!7604494) (not bs!1942567) (not b_lambda!288937) (not b!7604495) (not b!7604511) (not bm!698204) (not b!7604517) (not bm!698169) (not b!7604402) (not b!7604519) (not b!7604477) (not b!7604486) (not bm!698193) (not b!7604345) (not b!7604510) (not bm!698192) (not d!2321650) (not b!7604346) (not bm!698166) (not b!7604525) (not b!7604509) (not b!7604159) (not b!7604397) (not b!7604444) (not b!7604355) (not b!7604455) (not b!7604133) (not d!2321660) (not b!7604405) (not b!7604479) (not d!2321678) (not bm!698170) (not d!2321662) (not b!7604502) (not b!7604503) (not b!7604376) tp_is_empty!50717 (not b!7604471) (not b!7604385) (not b!7604463) (not b!7604407) (not b!7604356) (not b!7604446) (not d!2321674) (not b!7604526) (not b!7604518) (not b!7604529) (not bm!698182) (not b!7604461) (not b!7604493) (not b!7604501))
(check-sat)
