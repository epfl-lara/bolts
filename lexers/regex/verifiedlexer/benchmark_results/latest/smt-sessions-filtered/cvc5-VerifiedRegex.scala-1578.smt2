; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81664 () Bool)

(assert start!81664)

(declare-fun b!908152 () Bool)

(assert (=> b!908152 true))

(assert (=> b!908152 true))

(declare-fun lambda!28776 () Int)

(declare-fun lambda!28775 () Int)

(assert (=> b!908152 (not (= lambda!28776 lambda!28775))))

(assert (=> b!908152 true))

(assert (=> b!908152 true))

(declare-fun res!412956 () Bool)

(declare-fun e!592794 () Bool)

(assert (=> start!81664 (=> (not res!412956) (not e!592794))))

(declare-datatypes ((C!5398 0))(
  ( (C!5399 (val!2947 Int)) )
))
(declare-datatypes ((Regex!2414 0))(
  ( (ElementMatch!2414 (c!147105 C!5398)) (Concat!4247 (regOne!5340 Regex!2414) (regTwo!5340 Regex!2414)) (EmptyExpr!2414) (Star!2414 (reg!2743 Regex!2414)) (EmptyLang!2414) (Union!2414 (regOne!5341 Regex!2414) (regTwo!5341 Regex!2414)) )
))
(declare-fun r!15766 () Regex!2414)

(declare-fun validRegex!883 (Regex!2414) Bool)

(assert (=> start!81664 (= res!412956 (validRegex!883 r!15766))))

(assert (=> start!81664 e!592794))

(declare-fun e!592796 () Bool)

(assert (=> start!81664 e!592796))

(declare-fun e!592795 () Bool)

(assert (=> start!81664 e!592795))

(declare-fun e!592797 () Bool)

(declare-fun e!592798 () Bool)

(assert (=> b!908152 (= e!592797 e!592798)))

(declare-fun res!412955 () Bool)

(assert (=> b!908152 (=> res!412955 e!592798)))

(declare-datatypes ((List!9644 0))(
  ( (Nil!9628) (Cons!9628 (h!15029 C!5398) (t!100690 List!9644)) )
))
(declare-fun s!10566 () List!9644)

(declare-fun isEmpty!5838 (List!9644) Bool)

(assert (=> b!908152 (= res!412955 (not (isEmpty!5838 s!10566)))))

(declare-fun Exists!187 (Int) Bool)

(assert (=> b!908152 (= (Exists!187 lambda!28775) (Exists!187 lambda!28776))))

(declare-datatypes ((Unit!14447 0))(
  ( (Unit!14448) )
))
(declare-fun lt!336153 () Unit!14447)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!101 (Regex!2414 Regex!2414 List!9644) Unit!14447)

(assert (=> b!908152 (= lt!336153 (lemmaExistCutMatchRandMatchRSpecEquivalent!101 (regOne!5340 r!15766) EmptyExpr!2414 s!10566))))

(declare-datatypes ((tuple2!10818 0))(
  ( (tuple2!10819 (_1!6235 List!9644) (_2!6235 List!9644)) )
))
(declare-datatypes ((Option!2051 0))(
  ( (None!2050) (Some!2050 (v!19467 tuple2!10818)) )
))
(declare-fun isDefined!1693 (Option!2051) Bool)

(declare-fun findConcatSeparation!157 (Regex!2414 Regex!2414 List!9644 List!9644 List!9644) Option!2051)

(assert (=> b!908152 (= (isDefined!1693 (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 Nil!9628 s!10566 s!10566)) (Exists!187 lambda!28775))))

(declare-fun lt!336155 () Unit!14447)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!157 (Regex!2414 Regex!2414 List!9644) Unit!14447)

(assert (=> b!908152 (= lt!336155 (lemmaFindConcatSeparationEquivalentToExists!157 (regOne!5340 r!15766) EmptyExpr!2414 s!10566))))

(declare-fun b!908153 () Bool)

(declare-fun tp_is_empty!4471 () Bool)

(declare-fun tp!284245 () Bool)

(assert (=> b!908153 (= e!592795 (and tp_is_empty!4471 tp!284245))))

(declare-fun b!908154 () Bool)

(declare-fun tp!284244 () Bool)

(declare-fun tp!284246 () Bool)

(assert (=> b!908154 (= e!592796 (and tp!284244 tp!284246))))

(declare-fun b!908155 () Bool)

(declare-fun tp!284243 () Bool)

(declare-fun tp!284241 () Bool)

(assert (=> b!908155 (= e!592796 (and tp!284243 tp!284241))))

(declare-fun b!908156 () Bool)

(declare-fun removeUselessConcat!107 (Regex!2414) Regex!2414)

(assert (=> b!908156 (= e!592798 (validRegex!883 (removeUselessConcat!107 r!15766)))))

(declare-fun b!908157 () Bool)

(assert (=> b!908157 (= e!592796 tp_is_empty!4471)))

(declare-fun b!908158 () Bool)

(assert (=> b!908158 (= e!592794 (not e!592797))))

(declare-fun res!412957 () Bool)

(assert (=> b!908158 (=> res!412957 e!592797)))

(declare-fun lt!336152 () Bool)

(assert (=> b!908158 (= res!412957 (or lt!336152 (and (is-Concat!4247 r!15766) (is-EmptyExpr!2414 (regOne!5340 r!15766))) (not (is-Concat!4247 r!15766)) (not (is-EmptyExpr!2414 (regTwo!5340 r!15766)))))))

(declare-fun matchRSpec!215 (Regex!2414 List!9644) Bool)

(assert (=> b!908158 (= lt!336152 (matchRSpec!215 r!15766 s!10566))))

(declare-fun matchR!952 (Regex!2414 List!9644) Bool)

(assert (=> b!908158 (= lt!336152 (matchR!952 r!15766 s!10566))))

(declare-fun lt!336154 () Unit!14447)

(declare-fun mainMatchTheorem!215 (Regex!2414 List!9644) Unit!14447)

(assert (=> b!908158 (= lt!336154 (mainMatchTheorem!215 r!15766 s!10566))))

(declare-fun b!908159 () Bool)

(declare-fun tp!284242 () Bool)

(assert (=> b!908159 (= e!592796 tp!284242)))

(assert (= (and start!81664 res!412956) b!908158))

(assert (= (and b!908158 (not res!412957)) b!908152))

(assert (= (and b!908152 (not res!412955)) b!908156))

(assert (= (and start!81664 (is-ElementMatch!2414 r!15766)) b!908157))

(assert (= (and start!81664 (is-Concat!4247 r!15766)) b!908154))

(assert (= (and start!81664 (is-Star!2414 r!15766)) b!908159))

(assert (= (and start!81664 (is-Union!2414 r!15766)) b!908155))

(assert (= (and start!81664 (is-Cons!9628 s!10566)) b!908153))

(declare-fun m!1142037 () Bool)

(assert (=> start!81664 m!1142037))

(declare-fun m!1142039 () Bool)

(assert (=> b!908152 m!1142039))

(declare-fun m!1142041 () Bool)

(assert (=> b!908152 m!1142041))

(declare-fun m!1142043 () Bool)

(assert (=> b!908152 m!1142043))

(declare-fun m!1142045 () Bool)

(assert (=> b!908152 m!1142045))

(assert (=> b!908152 m!1142041))

(declare-fun m!1142047 () Bool)

(assert (=> b!908152 m!1142047))

(assert (=> b!908152 m!1142045))

(declare-fun m!1142049 () Bool)

(assert (=> b!908152 m!1142049))

(declare-fun m!1142051 () Bool)

(assert (=> b!908152 m!1142051))

(declare-fun m!1142053 () Bool)

(assert (=> b!908156 m!1142053))

(assert (=> b!908156 m!1142053))

(declare-fun m!1142055 () Bool)

(assert (=> b!908156 m!1142055))

(declare-fun m!1142057 () Bool)

(assert (=> b!908158 m!1142057))

(declare-fun m!1142059 () Bool)

(assert (=> b!908158 m!1142059))

(declare-fun m!1142061 () Bool)

(assert (=> b!908158 m!1142061))

(push 1)

(assert (not b!908158))

(assert (not b!908156))

(assert (not b!908152))

(assert tp_is_empty!4471)

(assert (not b!908153))

(assert (not start!81664))

(assert (not b!908159))

(assert (not b!908155))

(assert (not b!908154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!908222 () Bool)

(declare-fun res!412989 () Bool)

(declare-fun e!592837 () Bool)

(assert (=> b!908222 (=> res!412989 e!592837)))

(assert (=> b!908222 (= res!412989 (not (is-Concat!4247 r!15766)))))

(declare-fun e!592834 () Bool)

(assert (=> b!908222 (= e!592834 e!592837)))

(declare-fun b!908223 () Bool)

(declare-fun e!592839 () Bool)

(assert (=> b!908223 (= e!592839 e!592834)))

(declare-fun c!147112 () Bool)

(assert (=> b!908223 (= c!147112 (is-Union!2414 r!15766))))

(declare-fun b!908224 () Bool)

(declare-fun e!592838 () Bool)

(assert (=> b!908224 (= e!592837 e!592838)))

(declare-fun res!412993 () Bool)

(assert (=> b!908224 (=> (not res!412993) (not e!592838))))

(declare-fun call!54463 () Bool)

(assert (=> b!908224 (= res!412993 call!54463)))

(declare-fun b!908225 () Bool)

(declare-fun e!592836 () Bool)

(assert (=> b!908225 (= e!592839 e!592836)))

(declare-fun res!412990 () Bool)

(declare-fun nullable!650 (Regex!2414) Bool)

(assert (=> b!908225 (= res!412990 (not (nullable!650 (reg!2743 r!15766))))))

(assert (=> b!908225 (=> (not res!412990) (not e!592836))))

(declare-fun d!279023 () Bool)

(declare-fun res!412991 () Bool)

(declare-fun e!592840 () Bool)

(assert (=> d!279023 (=> res!412991 e!592840)))

(assert (=> d!279023 (= res!412991 (is-ElementMatch!2414 r!15766))))

(assert (=> d!279023 (= (validRegex!883 r!15766) e!592840)))

(declare-fun b!908226 () Bool)

(declare-fun res!412992 () Bool)

(declare-fun e!592835 () Bool)

(assert (=> b!908226 (=> (not res!412992) (not e!592835))))

(assert (=> b!908226 (= res!412992 call!54463)))

(assert (=> b!908226 (= e!592834 e!592835)))

(declare-fun bm!54457 () Bool)

(declare-fun call!54462 () Bool)

(assert (=> bm!54457 (= call!54462 (validRegex!883 (ite c!147112 (regTwo!5341 r!15766) (regTwo!5340 r!15766))))))

(declare-fun call!54464 () Bool)

(declare-fun bm!54458 () Bool)

(declare-fun c!147111 () Bool)

(assert (=> bm!54458 (= call!54464 (validRegex!883 (ite c!147111 (reg!2743 r!15766) (ite c!147112 (regOne!5341 r!15766) (regOne!5340 r!15766)))))))

(declare-fun b!908227 () Bool)

(assert (=> b!908227 (= e!592835 call!54462)))

(declare-fun bm!54459 () Bool)

(assert (=> bm!54459 (= call!54463 call!54464)))

(declare-fun b!908228 () Bool)

(assert (=> b!908228 (= e!592840 e!592839)))

(assert (=> b!908228 (= c!147111 (is-Star!2414 r!15766))))

(declare-fun b!908229 () Bool)

(assert (=> b!908229 (= e!592836 call!54464)))

(declare-fun b!908230 () Bool)

(assert (=> b!908230 (= e!592838 call!54462)))

(assert (= (and d!279023 (not res!412991)) b!908228))

(assert (= (and b!908228 c!147111) b!908225))

(assert (= (and b!908228 (not c!147111)) b!908223))

(assert (= (and b!908225 res!412990) b!908229))

(assert (= (and b!908223 c!147112) b!908226))

(assert (= (and b!908223 (not c!147112)) b!908222))

(assert (= (and b!908226 res!412992) b!908227))

(assert (= (and b!908222 (not res!412989)) b!908224))

(assert (= (and b!908224 res!412993) b!908230))

(assert (= (or b!908227 b!908230) bm!54457))

(assert (= (or b!908226 b!908224) bm!54459))

(assert (= (or b!908229 bm!54459) bm!54458))

(declare-fun m!1142089 () Bool)

(assert (=> b!908225 m!1142089))

(declare-fun m!1142091 () Bool)

(assert (=> bm!54457 m!1142091))

(declare-fun m!1142093 () Bool)

(assert (=> bm!54458 m!1142093))

(assert (=> start!81664 d!279023))

(declare-fun d!279025 () Bool)

(declare-fun isEmpty!5840 (Option!2051) Bool)

(assert (=> d!279025 (= (isDefined!1693 (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 Nil!9628 s!10566 s!10566)) (not (isEmpty!5840 (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 Nil!9628 s!10566 s!10566))))))

(declare-fun bs!235594 () Bool)

(assert (= bs!235594 d!279025))

(assert (=> bs!235594 m!1142041))

(declare-fun m!1142095 () Bool)

(assert (=> bs!235594 m!1142095))

(assert (=> b!908152 d!279025))

(declare-fun b!908249 () Bool)

(declare-fun e!592852 () Option!2051)

(declare-fun e!592855 () Option!2051)

(assert (=> b!908249 (= e!592852 e!592855)))

(declare-fun c!147118 () Bool)

(assert (=> b!908249 (= c!147118 (is-Nil!9628 s!10566))))

(declare-fun b!908250 () Bool)

(declare-fun e!592853 () Bool)

(declare-fun lt!336174 () Option!2051)

(declare-fun ++!2529 (List!9644 List!9644) List!9644)

(declare-fun get!3094 (Option!2051) tuple2!10818)

(assert (=> b!908250 (= e!592853 (= (++!2529 (_1!6235 (get!3094 lt!336174)) (_2!6235 (get!3094 lt!336174))) s!10566))))

(declare-fun b!908251 () Bool)

(declare-fun lt!336176 () Unit!14447)

(declare-fun lt!336175 () Unit!14447)

(assert (=> b!908251 (= lt!336176 lt!336175)))

(assert (=> b!908251 (= (++!2529 (++!2529 Nil!9628 (Cons!9628 (h!15029 s!10566) Nil!9628)) (t!100690 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!146 (List!9644 C!5398 List!9644 List!9644) Unit!14447)

(assert (=> b!908251 (= lt!336175 (lemmaMoveElementToOtherListKeepsConcatEq!146 Nil!9628 (h!15029 s!10566) (t!100690 s!10566) s!10566))))

(assert (=> b!908251 (= e!592855 (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 (++!2529 Nil!9628 (Cons!9628 (h!15029 s!10566) Nil!9628)) (t!100690 s!10566) s!10566))))

(declare-fun b!908252 () Bool)

(assert (=> b!908252 (= e!592852 (Some!2050 (tuple2!10819 Nil!9628 s!10566)))))

(declare-fun d!279027 () Bool)

(declare-fun e!592854 () Bool)

(assert (=> d!279027 e!592854))

(declare-fun res!413008 () Bool)

(assert (=> d!279027 (=> res!413008 e!592854)))

(assert (=> d!279027 (= res!413008 e!592853)))

(declare-fun res!413006 () Bool)

(assert (=> d!279027 (=> (not res!413006) (not e!592853))))

(assert (=> d!279027 (= res!413006 (isDefined!1693 lt!336174))))

(assert (=> d!279027 (= lt!336174 e!592852)))

(declare-fun c!147117 () Bool)

(declare-fun e!592851 () Bool)

(assert (=> d!279027 (= c!147117 e!592851)))

(declare-fun res!413007 () Bool)

(assert (=> d!279027 (=> (not res!413007) (not e!592851))))

(assert (=> d!279027 (= res!413007 (matchR!952 (regOne!5340 r!15766) Nil!9628))))

(assert (=> d!279027 (validRegex!883 (regOne!5340 r!15766))))

(assert (=> d!279027 (= (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 Nil!9628 s!10566 s!10566) lt!336174)))

(declare-fun b!908253 () Bool)

(declare-fun res!413005 () Bool)

(assert (=> b!908253 (=> (not res!413005) (not e!592853))))

(assert (=> b!908253 (= res!413005 (matchR!952 (regOne!5340 r!15766) (_1!6235 (get!3094 lt!336174))))))

(declare-fun b!908254 () Bool)

(assert (=> b!908254 (= e!592854 (not (isDefined!1693 lt!336174)))))

(declare-fun b!908255 () Bool)

(assert (=> b!908255 (= e!592851 (matchR!952 EmptyExpr!2414 s!10566))))

(declare-fun b!908256 () Bool)

(assert (=> b!908256 (= e!592855 None!2050)))

(declare-fun b!908257 () Bool)

(declare-fun res!413004 () Bool)

(assert (=> b!908257 (=> (not res!413004) (not e!592853))))

(assert (=> b!908257 (= res!413004 (matchR!952 EmptyExpr!2414 (_2!6235 (get!3094 lt!336174))))))

(assert (= (and d!279027 res!413007) b!908255))

(assert (= (and d!279027 c!147117) b!908252))

(assert (= (and d!279027 (not c!147117)) b!908249))

(assert (= (and b!908249 c!147118) b!908256))

(assert (= (and b!908249 (not c!147118)) b!908251))

(assert (= (and d!279027 res!413006) b!908253))

(assert (= (and b!908253 res!413005) b!908257))

(assert (= (and b!908257 res!413004) b!908250))

(assert (= (and d!279027 (not res!413008)) b!908254))

(declare-fun m!1142097 () Bool)

(assert (=> b!908251 m!1142097))

(assert (=> b!908251 m!1142097))

(declare-fun m!1142099 () Bool)

(assert (=> b!908251 m!1142099))

(declare-fun m!1142101 () Bool)

(assert (=> b!908251 m!1142101))

(assert (=> b!908251 m!1142097))

(declare-fun m!1142103 () Bool)

(assert (=> b!908251 m!1142103))

(declare-fun m!1142105 () Bool)

(assert (=> b!908255 m!1142105))

(declare-fun m!1142107 () Bool)

(assert (=> b!908257 m!1142107))

(declare-fun m!1142109 () Bool)

(assert (=> b!908257 m!1142109))

(declare-fun m!1142111 () Bool)

(assert (=> b!908254 m!1142111))

(assert (=> b!908250 m!1142107))

(declare-fun m!1142113 () Bool)

(assert (=> b!908250 m!1142113))

(assert (=> d!279027 m!1142111))

(declare-fun m!1142115 () Bool)

(assert (=> d!279027 m!1142115))

(declare-fun m!1142117 () Bool)

(assert (=> d!279027 m!1142117))

(assert (=> b!908253 m!1142107))

(declare-fun m!1142119 () Bool)

(assert (=> b!908253 m!1142119))

(assert (=> b!908152 d!279027))

(declare-fun d!279031 () Bool)

(assert (=> d!279031 (= (isEmpty!5838 s!10566) (is-Nil!9628 s!10566))))

(assert (=> b!908152 d!279031))

(declare-fun bs!235595 () Bool)

(declare-fun d!279033 () Bool)

(assert (= bs!235595 (and d!279033 b!908152)))

(declare-fun lambda!28789 () Int)

(assert (=> bs!235595 (= lambda!28789 lambda!28775)))

(assert (=> bs!235595 (not (= lambda!28789 lambda!28776))))

(assert (=> d!279033 true))

(assert (=> d!279033 true))

(assert (=> d!279033 true))

(assert (=> d!279033 (= (isDefined!1693 (findConcatSeparation!157 (regOne!5340 r!15766) EmptyExpr!2414 Nil!9628 s!10566 s!10566)) (Exists!187 lambda!28789))))

(declare-fun lt!336179 () Unit!14447)

(declare-fun choose!5507 (Regex!2414 Regex!2414 List!9644) Unit!14447)

(assert (=> d!279033 (= lt!336179 (choose!5507 (regOne!5340 r!15766) EmptyExpr!2414 s!10566))))

(assert (=> d!279033 (validRegex!883 (regOne!5340 r!15766))))

(assert (=> d!279033 (= (lemmaFindConcatSeparationEquivalentToExists!157 (regOne!5340 r!15766) EmptyExpr!2414 s!10566) lt!336179)))

(declare-fun bs!235596 () Bool)

(assert (= bs!235596 d!279033))

(assert (=> bs!235596 m!1142117))

(assert (=> bs!235596 m!1142041))

(assert (=> bs!235596 m!1142047))

(declare-fun m!1142121 () Bool)

(assert (=> bs!235596 m!1142121))

(declare-fun m!1142123 () Bool)

(assert (=> bs!235596 m!1142123))

(assert (=> bs!235596 m!1142041))

(assert (=> b!908152 d!279033))

(declare-fun bs!235597 () Bool)

(declare-fun d!279035 () Bool)

(assert (= bs!235597 (and d!279035 b!908152)))

(declare-fun lambda!28796 () Int)

(assert (=> bs!235597 (= lambda!28796 lambda!28775)))

(assert (=> bs!235597 (not (= lambda!28796 lambda!28776))))

(declare-fun bs!235598 () Bool)

(assert (= bs!235598 (and d!279035 d!279033)))

(assert (=> bs!235598 (= lambda!28796 lambda!28789)))

(assert (=> d!279035 true))

(assert (=> d!279035 true))

(assert (=> d!279035 true))

(declare-fun lambda!28797 () Int)

(assert (=> bs!235597 (not (= lambda!28797 lambda!28775))))

(assert (=> bs!235597 (= lambda!28797 lambda!28776)))

(assert (=> bs!235598 (not (= lambda!28797 lambda!28789))))

(declare-fun bs!235599 () Bool)

(assert (= bs!235599 d!279035))

(assert (=> bs!235599 (not (= lambda!28797 lambda!28796))))

(assert (=> d!279035 true))

(assert (=> d!279035 true))

(assert (=> d!279035 true))

(assert (=> d!279035 (= (Exists!187 lambda!28796) (Exists!187 lambda!28797))))

(declare-fun lt!336182 () Unit!14447)

(declare-fun choose!5508 (Regex!2414 Regex!2414 List!9644) Unit!14447)

(assert (=> d!279035 (= lt!336182 (choose!5508 (regOne!5340 r!15766) EmptyExpr!2414 s!10566))))

(assert (=> d!279035 (validRegex!883 (regOne!5340 r!15766))))

(assert (=> d!279035 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!101 (regOne!5340 r!15766) EmptyExpr!2414 s!10566) lt!336182)))

(declare-fun m!1142125 () Bool)

(assert (=> bs!235599 m!1142125))

(declare-fun m!1142127 () Bool)

(assert (=> bs!235599 m!1142127))

(declare-fun m!1142129 () Bool)

(assert (=> bs!235599 m!1142129))

(assert (=> bs!235599 m!1142117))

(assert (=> b!908152 d!279035))

(declare-fun d!279037 () Bool)

(declare-fun choose!5509 (Int) Bool)

(assert (=> d!279037 (= (Exists!187 lambda!28776) (choose!5509 lambda!28776))))

(declare-fun bs!235600 () Bool)

(assert (= bs!235600 d!279037))

(declare-fun m!1142131 () Bool)

(assert (=> bs!235600 m!1142131))

(assert (=> b!908152 d!279037))

(declare-fun d!279039 () Bool)

(assert (=> d!279039 (= (Exists!187 lambda!28775) (choose!5509 lambda!28775))))

(declare-fun bs!235601 () Bool)

(assert (= bs!235601 d!279039))

(declare-fun m!1142133 () Bool)

(assert (=> bs!235601 m!1142133))

(assert (=> b!908152 d!279039))

(declare-fun bs!235605 () Bool)

(declare-fun b!908350 () Bool)

(assert (= bs!235605 (and b!908350 b!908152)))

(declare-fun lambda!28804 () Int)

(assert (=> bs!235605 (not (= lambda!28804 lambda!28775))))

(declare-fun bs!235606 () Bool)

(assert (= bs!235606 (and b!908350 d!279033)))

(assert (=> bs!235606 (not (= lambda!28804 lambda!28789))))

(declare-fun bs!235607 () Bool)

(assert (= bs!235607 (and b!908350 d!279035)))

(assert (=> bs!235607 (not (= lambda!28804 lambda!28796))))

(assert (=> bs!235607 (not (= lambda!28804 lambda!28797))))

(assert (=> bs!235605 (not (= lambda!28804 lambda!28776))))

(assert (=> b!908350 true))

(assert (=> b!908350 true))

(declare-fun bs!235608 () Bool)

(declare-fun b!908354 () Bool)

(assert (= bs!235608 (and b!908354 b!908152)))

(declare-fun lambda!28805 () Int)

(assert (=> bs!235608 (not (= lambda!28805 lambda!28775))))

(declare-fun bs!235609 () Bool)

(assert (= bs!235609 (and b!908354 d!279033)))

(assert (=> bs!235609 (not (= lambda!28805 lambda!28789))))

(declare-fun bs!235610 () Bool)

(assert (= bs!235610 (and b!908354 b!908350)))

(assert (=> bs!235610 (not (= lambda!28805 lambda!28804))))

(declare-fun bs!235611 () Bool)

(assert (= bs!235611 (and b!908354 d!279035)))

(assert (=> bs!235611 (not (= lambda!28805 lambda!28796))))

(assert (=> bs!235611 (= (= (regTwo!5340 r!15766) EmptyExpr!2414) (= lambda!28805 lambda!28797))))

(assert (=> bs!235608 (= (= (regTwo!5340 r!15766) EmptyExpr!2414) (= lambda!28805 lambda!28776))))

(assert (=> b!908354 true))

(assert (=> b!908354 true))

(declare-fun b!908345 () Bool)

(declare-fun e!592905 () Bool)

(declare-fun e!592910 () Bool)

(assert (=> b!908345 (= e!592905 e!592910)))

(declare-fun c!147140 () Bool)

(assert (=> b!908345 (= c!147140 (is-Star!2414 r!15766))))

(declare-fun b!908346 () Bool)

(declare-fun e!592908 () Bool)

(assert (=> b!908346 (= e!592908 (matchRSpec!215 (regTwo!5341 r!15766) s!10566))))

(declare-fun bm!54470 () Bool)

(declare-fun call!54475 () Bool)

(assert (=> bm!54470 (= call!54475 (isEmpty!5838 s!10566))))

(declare-fun b!908347 () Bool)

(declare-fun c!147139 () Bool)

(assert (=> b!908347 (= c!147139 (is-ElementMatch!2414 r!15766))))

(declare-fun e!592911 () Bool)

(declare-fun e!592906 () Bool)

(assert (=> b!908347 (= e!592911 e!592906)))

(declare-fun d!279041 () Bool)

(declare-fun c!147142 () Bool)

(assert (=> d!279041 (= c!147142 (is-EmptyExpr!2414 r!15766))))

(declare-fun e!592907 () Bool)

(assert (=> d!279041 (= (matchRSpec!215 r!15766 s!10566) e!592907)))

(declare-fun b!908348 () Bool)

(assert (=> b!908348 (= e!592907 e!592911)))

(declare-fun res!413057 () Bool)

(assert (=> b!908348 (= res!413057 (not (is-EmptyLang!2414 r!15766)))))

(assert (=> b!908348 (=> (not res!413057) (not e!592911))))

(declare-fun b!908349 () Bool)

(assert (=> b!908349 (= e!592907 call!54475)))

(declare-fun bm!54471 () Bool)

(declare-fun call!54476 () Bool)

(assert (=> bm!54471 (= call!54476 (Exists!187 (ite c!147140 lambda!28804 lambda!28805)))))

(declare-fun e!592909 () Bool)

(assert (=> b!908350 (= e!592909 call!54476)))

(declare-fun b!908351 () Bool)

(assert (=> b!908351 (= e!592905 e!592908)))

(declare-fun res!413058 () Bool)

(assert (=> b!908351 (= res!413058 (matchRSpec!215 (regOne!5341 r!15766) s!10566))))

(assert (=> b!908351 (=> res!413058 e!592908)))

(declare-fun b!908352 () Bool)

(declare-fun c!147141 () Bool)

(assert (=> b!908352 (= c!147141 (is-Union!2414 r!15766))))

(assert (=> b!908352 (= e!592906 e!592905)))

(declare-fun b!908353 () Bool)

(declare-fun res!413056 () Bool)

(assert (=> b!908353 (=> res!413056 e!592909)))

(assert (=> b!908353 (= res!413056 call!54475)))

(assert (=> b!908353 (= e!592910 e!592909)))

(assert (=> b!908354 (= e!592910 call!54476)))

(declare-fun b!908355 () Bool)

(assert (=> b!908355 (= e!592906 (= s!10566 (Cons!9628 (c!147105 r!15766) Nil!9628)))))

(assert (= (and d!279041 c!147142) b!908349))

(assert (= (and d!279041 (not c!147142)) b!908348))

(assert (= (and b!908348 res!413057) b!908347))

(assert (= (and b!908347 c!147139) b!908355))

(assert (= (and b!908347 (not c!147139)) b!908352))

(assert (= (and b!908352 c!147141) b!908351))

(assert (= (and b!908352 (not c!147141)) b!908345))

(assert (= (and b!908351 (not res!413058)) b!908346))

(assert (= (and b!908345 c!147140) b!908353))

(assert (= (and b!908345 (not c!147140)) b!908354))

(assert (= (and b!908353 (not res!413056)) b!908350))

(assert (= (or b!908350 b!908354) bm!54471))

(assert (= (or b!908349 b!908353) bm!54470))

(declare-fun m!1142141 () Bool)

(assert (=> b!908346 m!1142141))

(assert (=> bm!54470 m!1142049))

(declare-fun m!1142143 () Bool)

(assert (=> bm!54471 m!1142143))

(declare-fun m!1142145 () Bool)

(assert (=> b!908351 m!1142145))

(assert (=> b!908158 d!279041))

(declare-fun b!908412 () Bool)

(declare-fun e!592940 () Bool)

(declare-fun head!1614 (List!9644) C!5398)

(assert (=> b!908412 (= e!592940 (not (= (head!1614 s!10566) (c!147105 r!15766))))))

(declare-fun b!908413 () Bool)

(declare-fun e!592945 () Bool)

(declare-fun derivativeStep!461 (Regex!2414 C!5398) Regex!2414)

(declare-fun tail!1176 (List!9644) List!9644)

(assert (=> b!908413 (= e!592945 (matchR!952 (derivativeStep!461 r!15766 (head!1614 s!10566)) (tail!1176 s!10566)))))

(declare-fun b!908414 () Bool)

(declare-fun e!592943 () Bool)

(declare-fun lt!336187 () Bool)

(assert (=> b!908414 (= e!592943 (not lt!336187))))

(declare-fun b!908415 () Bool)

(declare-fun res!413091 () Bool)

(declare-fun e!592944 () Bool)

(assert (=> b!908415 (=> (not res!413091) (not e!592944))))

(assert (=> b!908415 (= res!413091 (isEmpty!5838 (tail!1176 s!10566)))))

(declare-fun d!279045 () Bool)

(declare-fun e!592942 () Bool)

(assert (=> d!279045 e!592942))

(declare-fun c!147157 () Bool)

(assert (=> d!279045 (= c!147157 (is-EmptyExpr!2414 r!15766))))

(assert (=> d!279045 (= lt!336187 e!592945)))

(declare-fun c!147155 () Bool)

(assert (=> d!279045 (= c!147155 (isEmpty!5838 s!10566))))

(assert (=> d!279045 (validRegex!883 r!15766)))

(assert (=> d!279045 (= (matchR!952 r!15766 s!10566) lt!336187)))

(declare-fun bm!54476 () Bool)

(declare-fun call!54481 () Bool)

(assert (=> bm!54476 (= call!54481 (isEmpty!5838 s!10566))))

(declare-fun b!908416 () Bool)

(assert (=> b!908416 (= e!592945 (nullable!650 r!15766))))

(declare-fun b!908417 () Bool)

(assert (=> b!908417 (= e!592942 e!592943)))

(declare-fun c!147156 () Bool)

(assert (=> b!908417 (= c!147156 (is-EmptyLang!2414 r!15766))))

(declare-fun b!908418 () Bool)

(declare-fun res!413094 () Bool)

(declare-fun e!592946 () Bool)

(assert (=> b!908418 (=> res!413094 e!592946)))

(assert (=> b!908418 (= res!413094 (not (is-ElementMatch!2414 r!15766)))))

(assert (=> b!908418 (= e!592943 e!592946)))

(declare-fun b!908419 () Bool)

(assert (=> b!908419 (= e!592942 (= lt!336187 call!54481))))

(declare-fun b!908420 () Bool)

(declare-fun e!592941 () Bool)

(assert (=> b!908420 (= e!592946 e!592941)))

(declare-fun res!413095 () Bool)

(assert (=> b!908420 (=> (not res!413095) (not e!592941))))

(assert (=> b!908420 (= res!413095 (not lt!336187))))

(declare-fun b!908421 () Bool)

(declare-fun res!413093 () Bool)

(assert (=> b!908421 (=> res!413093 e!592946)))

(assert (=> b!908421 (= res!413093 e!592944)))

(declare-fun res!413096 () Bool)

(assert (=> b!908421 (=> (not res!413096) (not e!592944))))

(assert (=> b!908421 (= res!413096 lt!336187)))

(declare-fun b!908422 () Bool)

(declare-fun res!413098 () Bool)

(assert (=> b!908422 (=> res!413098 e!592940)))

(assert (=> b!908422 (= res!413098 (not (isEmpty!5838 (tail!1176 s!10566))))))

(declare-fun b!908423 () Bool)

(assert (=> b!908423 (= e!592941 e!592940)))

(declare-fun res!413092 () Bool)

(assert (=> b!908423 (=> res!413092 e!592940)))

(assert (=> b!908423 (= res!413092 call!54481)))

(declare-fun b!908424 () Bool)

(assert (=> b!908424 (= e!592944 (= (head!1614 s!10566) (c!147105 r!15766)))))

(declare-fun b!908425 () Bool)

(declare-fun res!413097 () Bool)

(assert (=> b!908425 (=> (not res!413097) (not e!592944))))

(assert (=> b!908425 (= res!413097 (not call!54481))))

(assert (= (and d!279045 c!147155) b!908416))

(assert (= (and d!279045 (not c!147155)) b!908413))

(assert (= (and d!279045 c!147157) b!908419))

(assert (= (and d!279045 (not c!147157)) b!908417))

(assert (= (and b!908417 c!147156) b!908414))

(assert (= (and b!908417 (not c!147156)) b!908418))

(assert (= (and b!908418 (not res!413094)) b!908421))

(assert (= (and b!908421 res!413096) b!908425))

(assert (= (and b!908425 res!413097) b!908415))

(assert (= (and b!908415 res!413091) b!908424))

(assert (= (and b!908421 (not res!413093)) b!908420))

(assert (= (and b!908420 res!413095) b!908423))

(assert (= (and b!908423 (not res!413092)) b!908422))

(assert (= (and b!908422 (not res!413098)) b!908412))

(assert (= (or b!908419 b!908423 b!908425) bm!54476))

(declare-fun m!1142147 () Bool)

(assert (=> b!908412 m!1142147))

(declare-fun m!1142149 () Bool)

(assert (=> b!908416 m!1142149))

(declare-fun m!1142151 () Bool)

(assert (=> b!908415 m!1142151))

(assert (=> b!908415 m!1142151))

(declare-fun m!1142153 () Bool)

(assert (=> b!908415 m!1142153))

(assert (=> bm!54476 m!1142049))

(assert (=> b!908422 m!1142151))

(assert (=> b!908422 m!1142151))

(assert (=> b!908422 m!1142153))

(assert (=> b!908424 m!1142147))

(assert (=> b!908413 m!1142147))

(assert (=> b!908413 m!1142147))

(declare-fun m!1142155 () Bool)

(assert (=> b!908413 m!1142155))

(assert (=> b!908413 m!1142151))

(assert (=> b!908413 m!1142155))

(assert (=> b!908413 m!1142151))

(declare-fun m!1142157 () Bool)

(assert (=> b!908413 m!1142157))

(assert (=> d!279045 m!1142049))

(assert (=> d!279045 m!1142037))

(assert (=> b!908158 d!279045))

(declare-fun d!279047 () Bool)

(assert (=> d!279047 (= (matchR!952 r!15766 s!10566) (matchRSpec!215 r!15766 s!10566))))

(declare-fun lt!336190 () Unit!14447)

(declare-fun choose!5510 (Regex!2414 List!9644) Unit!14447)

(assert (=> d!279047 (= lt!336190 (choose!5510 r!15766 s!10566))))

(assert (=> d!279047 (validRegex!883 r!15766)))

(assert (=> d!279047 (= (mainMatchTheorem!215 r!15766 s!10566) lt!336190)))

(declare-fun bs!235612 () Bool)

(assert (= bs!235612 d!279047))

(assert (=> bs!235612 m!1142059))

(assert (=> bs!235612 m!1142057))

(declare-fun m!1142159 () Bool)

(assert (=> bs!235612 m!1142159))

(assert (=> bs!235612 m!1142037))

(assert (=> b!908158 d!279047))

(declare-fun b!908426 () Bool)

(declare-fun res!413099 () Bool)

(declare-fun e!592950 () Bool)

(assert (=> b!908426 (=> res!413099 e!592950)))

(assert (=> b!908426 (= res!413099 (not (is-Concat!4247 (removeUselessConcat!107 r!15766))))))

(declare-fun e!592947 () Bool)

(assert (=> b!908426 (= e!592947 e!592950)))

(declare-fun b!908427 () Bool)

(declare-fun e!592952 () Bool)

(assert (=> b!908427 (= e!592952 e!592947)))

(declare-fun c!147159 () Bool)

(assert (=> b!908427 (= c!147159 (is-Union!2414 (removeUselessConcat!107 r!15766)))))

(declare-fun b!908428 () Bool)

(declare-fun e!592951 () Bool)

(assert (=> b!908428 (= e!592950 e!592951)))

(declare-fun res!413103 () Bool)

(assert (=> b!908428 (=> (not res!413103) (not e!592951))))

(declare-fun call!54483 () Bool)

(assert (=> b!908428 (= res!413103 call!54483)))

(declare-fun b!908429 () Bool)

(declare-fun e!592949 () Bool)

(assert (=> b!908429 (= e!592952 e!592949)))

(declare-fun res!413100 () Bool)

(assert (=> b!908429 (= res!413100 (not (nullable!650 (reg!2743 (removeUselessConcat!107 r!15766)))))))

(assert (=> b!908429 (=> (not res!413100) (not e!592949))))

(declare-fun d!279049 () Bool)

(declare-fun res!413101 () Bool)

(declare-fun e!592953 () Bool)

(assert (=> d!279049 (=> res!413101 e!592953)))

(assert (=> d!279049 (= res!413101 (is-ElementMatch!2414 (removeUselessConcat!107 r!15766)))))

(assert (=> d!279049 (= (validRegex!883 (removeUselessConcat!107 r!15766)) e!592953)))

(declare-fun b!908430 () Bool)

(declare-fun res!413102 () Bool)

(declare-fun e!592948 () Bool)

(assert (=> b!908430 (=> (not res!413102) (not e!592948))))

(assert (=> b!908430 (= res!413102 call!54483)))

(assert (=> b!908430 (= e!592947 e!592948)))

(declare-fun bm!54477 () Bool)

(declare-fun call!54482 () Bool)

(assert (=> bm!54477 (= call!54482 (validRegex!883 (ite c!147159 (regTwo!5341 (removeUselessConcat!107 r!15766)) (regTwo!5340 (removeUselessConcat!107 r!15766)))))))

(declare-fun call!54484 () Bool)

(declare-fun bm!54478 () Bool)

(declare-fun c!147158 () Bool)

(assert (=> bm!54478 (= call!54484 (validRegex!883 (ite c!147158 (reg!2743 (removeUselessConcat!107 r!15766)) (ite c!147159 (regOne!5341 (removeUselessConcat!107 r!15766)) (regOne!5340 (removeUselessConcat!107 r!15766))))))))

(declare-fun b!908431 () Bool)

(assert (=> b!908431 (= e!592948 call!54482)))

(declare-fun bm!54479 () Bool)

(assert (=> bm!54479 (= call!54483 call!54484)))

(declare-fun b!908432 () Bool)

(assert (=> b!908432 (= e!592953 e!592952)))

(assert (=> b!908432 (= c!147158 (is-Star!2414 (removeUselessConcat!107 r!15766)))))

(declare-fun b!908433 () Bool)

(assert (=> b!908433 (= e!592949 call!54484)))

(declare-fun b!908434 () Bool)

(assert (=> b!908434 (= e!592951 call!54482)))

(assert (= (and d!279049 (not res!413101)) b!908432))

(assert (= (and b!908432 c!147158) b!908429))

(assert (= (and b!908432 (not c!147158)) b!908427))

(assert (= (and b!908429 res!413100) b!908433))

(assert (= (and b!908427 c!147159) b!908430))

(assert (= (and b!908427 (not c!147159)) b!908426))

(assert (= (and b!908430 res!413102) b!908431))

(assert (= (and b!908426 (not res!413099)) b!908428))

(assert (= (and b!908428 res!413103) b!908434))

(assert (= (or b!908431 b!908434) bm!54477))

(assert (= (or b!908430 b!908428) bm!54479))

(assert (= (or b!908433 bm!54479) bm!54478))

(declare-fun m!1142161 () Bool)

(assert (=> b!908429 m!1142161))

(declare-fun m!1142163 () Bool)

(assert (=> bm!54477 m!1142163))

(declare-fun m!1142165 () Bool)

(assert (=> bm!54478 m!1142165))

(assert (=> b!908156 d!279049))

(declare-fun bm!54491 () Bool)

(declare-fun call!54497 () Regex!2414)

(declare-fun c!147174 () Bool)

(declare-fun c!147173 () Bool)

(assert (=> bm!54491 (= call!54497 (removeUselessConcat!107 (ite (or c!147174 c!147173) (regTwo!5340 r!15766) (regOne!5341 r!15766))))))

(declare-fun b!908471 () Bool)

(declare-fun e!592976 () Regex!2414)

(declare-fun e!592975 () Regex!2414)

(assert (=> b!908471 (= e!592976 e!592975)))

(declare-fun c!147176 () Bool)

(assert (=> b!908471 (= c!147176 (and (is-Concat!4247 r!15766) (is-EmptyExpr!2414 (regTwo!5340 r!15766))))))

(declare-fun b!908472 () Bool)

(assert (=> b!908472 (= e!592976 call!54497)))

(declare-fun b!908473 () Bool)

(declare-fun c!147175 () Bool)

(assert (=> b!908473 (= c!147175 (is-Star!2414 r!15766))))

(declare-fun e!592973 () Regex!2414)

(declare-fun e!592974 () Regex!2414)

(assert (=> b!908473 (= e!592973 e!592974)))

(declare-fun bm!54492 () Bool)

(declare-fun call!54498 () Regex!2414)

(declare-fun call!54496 () Regex!2414)

(assert (=> bm!54492 (= call!54498 call!54496)))

(declare-fun bm!54493 () Bool)

(declare-fun call!54499 () Regex!2414)

(assert (=> bm!54493 (= call!54499 call!54497)))

(declare-fun b!908474 () Bool)

(assert (=> b!908474 (= e!592975 call!54496)))

(declare-fun b!908475 () Bool)

(declare-fun call!54500 () Regex!2414)

(assert (=> b!908475 (= e!592974 (Star!2414 call!54500))))

(declare-fun bm!54494 () Bool)

(declare-fun c!147177 () Bool)

(assert (=> bm!54494 (= call!54496 (removeUselessConcat!107 (ite (or c!147176 c!147173) (regOne!5340 r!15766) (ite c!147177 (regTwo!5341 r!15766) (reg!2743 r!15766)))))))

(declare-fun b!908476 () Bool)

(declare-fun e!592978 () Regex!2414)

(assert (=> b!908476 (= e!592978 e!592973)))

(assert (=> b!908476 (= c!147177 (is-Union!2414 r!15766))))

(declare-fun b!908478 () Bool)

(assert (=> b!908478 (= e!592973 (Union!2414 call!54499 call!54500))))

(declare-fun b!908479 () Bool)

(assert (=> b!908479 (= e!592974 r!15766)))

(declare-fun b!908480 () Bool)

(assert (=> b!908480 (= e!592978 (Concat!4247 call!54498 call!54499))))

(declare-fun bm!54495 () Bool)

(assert (=> bm!54495 (= call!54500 call!54498)))

(declare-fun b!908481 () Bool)

(assert (=> b!908481 (= c!147173 (is-Concat!4247 r!15766))))

(assert (=> b!908481 (= e!592975 e!592978)))

(declare-fun d!279051 () Bool)

(declare-fun e!592977 () Bool)

(assert (=> d!279051 e!592977))

(declare-fun res!413114 () Bool)

(assert (=> d!279051 (=> (not res!413114) (not e!592977))))

(declare-fun lt!336194 () Regex!2414)

(assert (=> d!279051 (= res!413114 (validRegex!883 lt!336194))))

(assert (=> d!279051 (= lt!336194 e!592976)))

(assert (=> d!279051 (= c!147174 (and (is-Concat!4247 r!15766) (is-EmptyExpr!2414 (regOne!5340 r!15766))))))

(assert (=> d!279051 (validRegex!883 r!15766)))

(assert (=> d!279051 (= (removeUselessConcat!107 r!15766) lt!336194)))

(declare-fun b!908477 () Bool)

(assert (=> b!908477 (= e!592977 (= (nullable!650 lt!336194) (nullable!650 r!15766)))))

(assert (= (and d!279051 c!147174) b!908472))

(assert (= (and d!279051 (not c!147174)) b!908471))

(assert (= (and b!908471 c!147176) b!908474))

(assert (= (and b!908471 (not c!147176)) b!908481))

(assert (= (and b!908481 c!147173) b!908480))

(assert (= (and b!908481 (not c!147173)) b!908476))

(assert (= (and b!908476 c!147177) b!908478))

(assert (= (and b!908476 (not c!147177)) b!908473))

(assert (= (and b!908473 c!147175) b!908475))

(assert (= (and b!908473 (not c!147175)) b!908479))

(assert (= (or b!908478 b!908475) bm!54495))

(assert (= (or b!908480 b!908478) bm!54493))

(assert (= (or b!908480 bm!54495) bm!54492))

(assert (= (or b!908474 bm!54492) bm!54494))

(assert (= (or b!908472 bm!54493) bm!54491))

(assert (= (and d!279051 res!413114) b!908477))

(declare-fun m!1142179 () Bool)

(assert (=> bm!54491 m!1142179))

(declare-fun m!1142181 () Bool)

(assert (=> bm!54494 m!1142181))

(declare-fun m!1142183 () Bool)

(assert (=> d!279051 m!1142183))

(assert (=> d!279051 m!1142037))

(declare-fun m!1142185 () Bool)

(assert (=> b!908477 m!1142185))

(assert (=> b!908477 m!1142149))

(assert (=> b!908156 d!279051))

(declare-fun b!908486 () Bool)

(declare-fun e!592981 () Bool)

(declare-fun tp!284267 () Bool)

(assert (=> b!908486 (= e!592981 (and tp_is_empty!4471 tp!284267))))

(assert (=> b!908153 (= tp!284245 e!592981)))

(assert (= (and b!908153 (is-Cons!9628 (t!100690 s!10566))) b!908486))

(declare-fun e!592984 () Bool)

(assert (=> b!908155 (= tp!284243 e!592984)))

(declare-fun b!908498 () Bool)

(declare-fun tp!284279 () Bool)

(declare-fun tp!284282 () Bool)

(assert (=> b!908498 (= e!592984 (and tp!284279 tp!284282))))

(declare-fun b!908499 () Bool)

(declare-fun tp!284280 () Bool)

(assert (=> b!908499 (= e!592984 tp!284280)))

(declare-fun b!908500 () Bool)

(declare-fun tp!284278 () Bool)

(declare-fun tp!284281 () Bool)

(assert (=> b!908500 (= e!592984 (and tp!284278 tp!284281))))

(declare-fun b!908497 () Bool)

(assert (=> b!908497 (= e!592984 tp_is_empty!4471)))

(assert (= (and b!908155 (is-ElementMatch!2414 (regOne!5341 r!15766))) b!908497))

(assert (= (and b!908155 (is-Concat!4247 (regOne!5341 r!15766))) b!908498))

(assert (= (and b!908155 (is-Star!2414 (regOne!5341 r!15766))) b!908499))

(assert (= (and b!908155 (is-Union!2414 (regOne!5341 r!15766))) b!908500))

(declare-fun e!592985 () Bool)

(assert (=> b!908155 (= tp!284241 e!592985)))

(declare-fun b!908502 () Bool)

(declare-fun tp!284284 () Bool)

(declare-fun tp!284287 () Bool)

(assert (=> b!908502 (= e!592985 (and tp!284284 tp!284287))))

(declare-fun b!908503 () Bool)

(declare-fun tp!284285 () Bool)

(assert (=> b!908503 (= e!592985 tp!284285)))

(declare-fun b!908504 () Bool)

(declare-fun tp!284283 () Bool)

(declare-fun tp!284286 () Bool)

(assert (=> b!908504 (= e!592985 (and tp!284283 tp!284286))))

(declare-fun b!908501 () Bool)

(assert (=> b!908501 (= e!592985 tp_is_empty!4471)))

(assert (= (and b!908155 (is-ElementMatch!2414 (regTwo!5341 r!15766))) b!908501))

(assert (= (and b!908155 (is-Concat!4247 (regTwo!5341 r!15766))) b!908502))

(assert (= (and b!908155 (is-Star!2414 (regTwo!5341 r!15766))) b!908503))

(assert (= (and b!908155 (is-Union!2414 (regTwo!5341 r!15766))) b!908504))

(declare-fun e!592986 () Bool)

(assert (=> b!908159 (= tp!284242 e!592986)))

(declare-fun b!908506 () Bool)

(declare-fun tp!284289 () Bool)

(declare-fun tp!284292 () Bool)

(assert (=> b!908506 (= e!592986 (and tp!284289 tp!284292))))

(declare-fun b!908507 () Bool)

(declare-fun tp!284290 () Bool)

(assert (=> b!908507 (= e!592986 tp!284290)))

(declare-fun b!908508 () Bool)

(declare-fun tp!284288 () Bool)

(declare-fun tp!284291 () Bool)

(assert (=> b!908508 (= e!592986 (and tp!284288 tp!284291))))

(declare-fun b!908505 () Bool)

(assert (=> b!908505 (= e!592986 tp_is_empty!4471)))

(assert (= (and b!908159 (is-ElementMatch!2414 (reg!2743 r!15766))) b!908505))

(assert (= (and b!908159 (is-Concat!4247 (reg!2743 r!15766))) b!908506))

(assert (= (and b!908159 (is-Star!2414 (reg!2743 r!15766))) b!908507))

(assert (= (and b!908159 (is-Union!2414 (reg!2743 r!15766))) b!908508))

(declare-fun e!592987 () Bool)

(assert (=> b!908154 (= tp!284244 e!592987)))

(declare-fun b!908510 () Bool)

(declare-fun tp!284294 () Bool)

(declare-fun tp!284297 () Bool)

(assert (=> b!908510 (= e!592987 (and tp!284294 tp!284297))))

(declare-fun b!908511 () Bool)

(declare-fun tp!284295 () Bool)

(assert (=> b!908511 (= e!592987 tp!284295)))

(declare-fun b!908512 () Bool)

(declare-fun tp!284293 () Bool)

(declare-fun tp!284296 () Bool)

(assert (=> b!908512 (= e!592987 (and tp!284293 tp!284296))))

(declare-fun b!908509 () Bool)

(assert (=> b!908509 (= e!592987 tp_is_empty!4471)))

(assert (= (and b!908154 (is-ElementMatch!2414 (regOne!5340 r!15766))) b!908509))

(assert (= (and b!908154 (is-Concat!4247 (regOne!5340 r!15766))) b!908510))

(assert (= (and b!908154 (is-Star!2414 (regOne!5340 r!15766))) b!908511))

(assert (= (and b!908154 (is-Union!2414 (regOne!5340 r!15766))) b!908512))

(declare-fun e!592988 () Bool)

(assert (=> b!908154 (= tp!284246 e!592988)))

(declare-fun b!908514 () Bool)

(declare-fun tp!284299 () Bool)

(declare-fun tp!284302 () Bool)

(assert (=> b!908514 (= e!592988 (and tp!284299 tp!284302))))

(declare-fun b!908515 () Bool)

(declare-fun tp!284300 () Bool)

(assert (=> b!908515 (= e!592988 tp!284300)))

(declare-fun b!908516 () Bool)

(declare-fun tp!284298 () Bool)

(declare-fun tp!284301 () Bool)

(assert (=> b!908516 (= e!592988 (and tp!284298 tp!284301))))

(declare-fun b!908513 () Bool)

(assert (=> b!908513 (= e!592988 tp_is_empty!4471)))

(assert (= (and b!908154 (is-ElementMatch!2414 (regTwo!5340 r!15766))) b!908513))

(assert (= (and b!908154 (is-Concat!4247 (regTwo!5340 r!15766))) b!908514))

(assert (= (and b!908154 (is-Star!2414 (regTwo!5340 r!15766))) b!908515))

(assert (= (and b!908154 (is-Union!2414 (regTwo!5340 r!15766))) b!908516))

(push 1)

(assert (not b!908504))

(assert (not b!908507))

(assert (not bm!54457))

(assert (not d!279025))

(assert (not d!279027))

(assert (not b!908250))

(assert (not b!908477))

(assert (not b!908251))

(assert (not d!279047))

(assert (not b!908254))

(assert (not bm!54471))

(assert (not b!908506))

(assert (not b!908422))

(assert (not b!908429))

(assert (not b!908508))

(assert (not b!908511))

(assert (not d!279039))

(assert (not b!908498))

(assert (not d!279045))

(assert (not b!908412))

(assert (not d!279051))

(assert (not b!908257))

(assert (not b!908502))

(assert (not b!908415))

(assert (not b!908253))

(assert (not b!908225))

(assert (not b!908512))

(assert (not bm!54478))

(assert (not b!908499))

(assert (not d!279033))

(assert (not b!908515))

(assert tp_is_empty!4471)

(assert (not b!908486))

(assert (not b!908516))

(assert (not d!279037))

(assert (not b!908255))

(assert (not b!908424))

(assert (not b!908351))

(assert (not b!908503))

(assert (not bm!54470))

(assert (not d!279035))

(assert (not bm!54477))

(assert (not b!908510))

(assert (not bm!54476))

(assert (not b!908514))

(assert (not bm!54458))

(assert (not b!908413))

(assert (not b!908346))

(assert (not bm!54491))

(assert (not bm!54494))

(assert (not b!908500))

(assert (not b!908416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

