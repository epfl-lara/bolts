; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91528 () Bool)

(assert start!91528)

(declare-fun b!1066054 () Bool)

(assert (=> b!1066054 true))

(assert (=> b!1066054 true))

(assert (=> b!1066054 true))

(declare-fun lambda!38634 () Int)

(declare-fun lambda!38633 () Int)

(assert (=> b!1066054 (not (= lambda!38634 lambda!38633))))

(assert (=> b!1066054 true))

(assert (=> b!1066054 true))

(assert (=> b!1066054 true))

(declare-fun bs!252164 () Bool)

(declare-fun b!1066055 () Bool)

(assert (= bs!252164 (and b!1066055 b!1066054)))

(declare-datatypes ((C!6450 0))(
  ( (C!6451 (val!3473 Int)) )
))
(declare-datatypes ((Regex!2940 0))(
  ( (ElementMatch!2940 (c!178779 C!6450)) (Concat!4773 (regOne!6392 Regex!2940) (regTwo!6392 Regex!2940)) (EmptyExpr!2940) (Star!2940 (reg!3269 Regex!2940)) (EmptyLang!2940) (Union!2940 (regOne!6393 Regex!2940) (regTwo!6393 Regex!2940)) )
))
(declare-fun lt!360577 () Regex!2940)

(declare-fun lt!360572 () Regex!2940)

(declare-fun r!15766 () Regex!2940)

(declare-fun lambda!38635 () Int)

(declare-fun lt!360575 () Regex!2940)

(assert (=> bs!252164 (= (and (= lt!360577 (reg!3269 r!15766)) (= lt!360572 lt!360575)) (= lambda!38635 lambda!38633))))

(assert (=> bs!252164 (not (= lambda!38635 lambda!38634))))

(assert (=> b!1066055 true))

(assert (=> b!1066055 true))

(assert (=> b!1066055 true))

(declare-fun b!1066053 () Bool)

(declare-fun e!676030 () Bool)

(declare-fun tp!319849 () Bool)

(assert (=> b!1066053 (= e!676030 tp!319849)))

(declare-fun e!676029 () Bool)

(declare-fun e!676031 () Bool)

(assert (=> b!1066054 (= e!676029 e!676031)))

(declare-fun res!476262 () Bool)

(assert (=> b!1066054 (=> res!476262 e!676031)))

(declare-datatypes ((List!10170 0))(
  ( (Nil!10154) (Cons!10154 (h!15555 C!6450) (t!101216 List!10170)) )
))
(declare-fun s!10566 () List!10170)

(declare-fun matchR!1476 (Regex!2940 List!10170) Bool)

(assert (=> b!1066054 (= res!476262 (not (matchR!1476 lt!360572 s!10566)))))

(assert (=> b!1066054 (= lt!360572 (Star!2940 lt!360577))))

(declare-fun removeUselessConcat!481 (Regex!2940) Regex!2940)

(assert (=> b!1066054 (= lt!360577 (removeUselessConcat!481 (reg!3269 r!15766)))))

(declare-fun Exists!663 (Int) Bool)

(assert (=> b!1066054 (= (Exists!663 lambda!38633) (Exists!663 lambda!38634))))

(declare-datatypes ((Unit!15555 0))(
  ( (Unit!15556) )
))
(declare-fun lt!360573 () Unit!15555)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!181 (Regex!2940 List!10170) Unit!15555)

(assert (=> b!1066054 (= lt!360573 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!181 (reg!3269 r!15766) s!10566))))

(declare-datatypes ((tuple2!11594 0))(
  ( (tuple2!11595 (_1!6623 List!10170) (_2!6623 List!10170)) )
))
(declare-datatypes ((Option!2439 0))(
  ( (None!2438) (Some!2438 (v!19855 tuple2!11594)) )
))
(declare-fun isDefined!2081 (Option!2439) Bool)

(declare-fun findConcatSeparation!545 (Regex!2940 Regex!2940 List!10170 List!10170 List!10170) Option!2439)

(assert (=> b!1066054 (= (isDefined!2081 (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 Nil!10154 s!10566 s!10566)) (Exists!663 lambda!38633))))

(declare-fun lt!360578 () Unit!15555)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!545 (Regex!2940 Regex!2940 List!10170) Unit!15555)

(assert (=> b!1066054 (= lt!360578 (lemmaFindConcatSeparationEquivalentToExists!545 (reg!3269 r!15766) lt!360575 s!10566))))

(assert (=> b!1066054 (= lt!360575 (Star!2940 (reg!3269 r!15766)))))

(declare-fun e!676032 () Bool)

(assert (=> b!1066055 (= e!676031 e!676032)))

(declare-fun res!476264 () Bool)

(assert (=> b!1066055 (=> res!476264 e!676032)))

(declare-fun validRegex!1409 (Regex!2940) Bool)

(assert (=> b!1066055 (= res!476264 (not (validRegex!1409 lt!360577)))))

(assert (=> b!1066055 (= (isDefined!2081 (findConcatSeparation!545 lt!360577 lt!360572 Nil!10154 s!10566 s!10566)) (Exists!663 lambda!38635))))

(declare-fun lt!360570 () Unit!15555)

(assert (=> b!1066055 (= lt!360570 (lemmaFindConcatSeparationEquivalentToExists!545 lt!360577 lt!360572 s!10566))))

(declare-fun matchRSpec!739 (Regex!2940 List!10170) Bool)

(assert (=> b!1066055 (matchRSpec!739 lt!360572 s!10566)))

(declare-fun lt!360574 () Unit!15555)

(declare-fun mainMatchTheorem!739 (Regex!2940 List!10170) Unit!15555)

(assert (=> b!1066055 (= lt!360574 (mainMatchTheorem!739 lt!360572 s!10566))))

(declare-fun b!1066056 () Bool)

(declare-fun tp_is_empty!5523 () Bool)

(assert (=> b!1066056 (= e!676030 tp_is_empty!5523)))

(declare-fun b!1066057 () Bool)

(declare-fun tp!319845 () Bool)

(declare-fun tp!319846 () Bool)

(assert (=> b!1066057 (= e!676030 (and tp!319845 tp!319846))))

(declare-fun b!1066058 () Bool)

(declare-fun e!676033 () Bool)

(assert (=> b!1066058 (= e!676033 (not e!676029))))

(declare-fun res!476263 () Bool)

(assert (=> b!1066058 (=> res!476263 e!676029)))

(declare-fun lt!360576 () Bool)

(assert (=> b!1066058 (= res!476263 (or lt!360576 (and (is-Concat!4773 r!15766) (is-EmptyExpr!2940 (regOne!6392 r!15766))) (and (is-Concat!4773 r!15766) (is-EmptyExpr!2940 (regTwo!6392 r!15766))) (is-Concat!4773 r!15766) (is-Union!2940 r!15766) (not (is-Star!2940 r!15766))))))

(assert (=> b!1066058 (= lt!360576 (matchRSpec!739 r!15766 s!10566))))

(assert (=> b!1066058 (= lt!360576 (matchR!1476 r!15766 s!10566))))

(declare-fun lt!360571 () Unit!15555)

(assert (=> b!1066058 (= lt!360571 (mainMatchTheorem!739 r!15766 s!10566))))

(declare-fun b!1066059 () Bool)

(declare-fun tp!319848 () Bool)

(declare-fun tp!319850 () Bool)

(assert (=> b!1066059 (= e!676030 (and tp!319848 tp!319850))))

(declare-fun res!476265 () Bool)

(assert (=> start!91528 (=> (not res!476265) (not e!676033))))

(assert (=> start!91528 (= res!476265 (validRegex!1409 r!15766))))

(assert (=> start!91528 e!676033))

(assert (=> start!91528 e!676030))

(declare-fun e!676034 () Bool)

(assert (=> start!91528 e!676034))

(declare-fun b!1066060 () Bool)

(declare-fun tp!319847 () Bool)

(assert (=> b!1066060 (= e!676034 (and tp_is_empty!5523 tp!319847))))

(declare-fun b!1066061 () Bool)

(declare-fun nullable!1027 (Regex!2940) Bool)

(assert (=> b!1066061 (= e!676032 (not (nullable!1027 lt!360577)))))

(assert (= (and start!91528 res!476265) b!1066058))

(assert (= (and b!1066058 (not res!476263)) b!1066054))

(assert (= (and b!1066054 (not res!476262)) b!1066055))

(assert (= (and b!1066055 (not res!476264)) b!1066061))

(assert (= (and start!91528 (is-ElementMatch!2940 r!15766)) b!1066056))

(assert (= (and start!91528 (is-Concat!4773 r!15766)) b!1066057))

(assert (= (and start!91528 (is-Star!2940 r!15766)) b!1066053))

(assert (= (and start!91528 (is-Union!2940 r!15766)) b!1066059))

(assert (= (and start!91528 (is-Cons!10154 s!10566)) b!1066060))

(declare-fun m!1223109 () Bool)

(assert (=> b!1066054 m!1223109))

(declare-fun m!1223111 () Bool)

(assert (=> b!1066054 m!1223111))

(declare-fun m!1223113 () Bool)

(assert (=> b!1066054 m!1223113))

(declare-fun m!1223115 () Bool)

(assert (=> b!1066054 m!1223115))

(declare-fun m!1223117 () Bool)

(assert (=> b!1066054 m!1223117))

(declare-fun m!1223119 () Bool)

(assert (=> b!1066054 m!1223119))

(declare-fun m!1223121 () Bool)

(assert (=> b!1066054 m!1223121))

(assert (=> b!1066054 m!1223121))

(assert (=> b!1066054 m!1223111))

(declare-fun m!1223123 () Bool)

(assert (=> b!1066054 m!1223123))

(declare-fun m!1223125 () Bool)

(assert (=> b!1066055 m!1223125))

(declare-fun m!1223127 () Bool)

(assert (=> b!1066055 m!1223127))

(declare-fun m!1223129 () Bool)

(assert (=> b!1066055 m!1223129))

(declare-fun m!1223131 () Bool)

(assert (=> b!1066055 m!1223131))

(declare-fun m!1223133 () Bool)

(assert (=> b!1066055 m!1223133))

(assert (=> b!1066055 m!1223129))

(declare-fun m!1223135 () Bool)

(assert (=> b!1066055 m!1223135))

(declare-fun m!1223137 () Bool)

(assert (=> b!1066055 m!1223137))

(declare-fun m!1223139 () Bool)

(assert (=> b!1066061 m!1223139))

(declare-fun m!1223141 () Bool)

(assert (=> start!91528 m!1223141))

(declare-fun m!1223143 () Bool)

(assert (=> b!1066058 m!1223143))

(declare-fun m!1223145 () Bool)

(assert (=> b!1066058 m!1223145))

(declare-fun m!1223147 () Bool)

(assert (=> b!1066058 m!1223147))

(push 1)

(assert (not b!1066058))

(assert (not b!1066057))

(assert (not start!91528))

(assert (not b!1066060))

(assert (not b!1066054))

(assert (not b!1066059))

(assert (not b!1066061))

(assert (not b!1066053))

(assert (not b!1066055))

(assert tp_is_empty!5523)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!301136 () Bool)

(declare-fun choose!6807 (Int) Bool)

(assert (=> d!301136 (= (Exists!663 lambda!38634) (choose!6807 lambda!38634))))

(declare-fun bs!252166 () Bool)

(assert (= bs!252166 d!301136))

(declare-fun m!1223189 () Bool)

(assert (=> bs!252166 m!1223189))

(assert (=> b!1066054 d!301136))

(declare-fun b!1066134 () Bool)

(declare-fun e!676075 () Option!2439)

(declare-fun e!676072 () Option!2439)

(assert (=> b!1066134 (= e!676075 e!676072)))

(declare-fun c!178786 () Bool)

(assert (=> b!1066134 (= c!178786 (is-Nil!10154 s!10566))))

(declare-fun b!1066135 () Bool)

(assert (=> b!1066135 (= e!676072 None!2438)))

(declare-fun b!1066136 () Bool)

(declare-fun res!476307 () Bool)

(declare-fun e!676071 () Bool)

(assert (=> b!1066136 (=> (not res!476307) (not e!676071))))

(declare-fun lt!360613 () Option!2439)

(declare-fun get!3659 (Option!2439) tuple2!11594)

(assert (=> b!1066136 (= res!476307 (matchR!1476 lt!360575 (_2!6623 (get!3659 lt!360613))))))

(declare-fun b!1066137 () Bool)

(declare-fun e!676073 () Bool)

(assert (=> b!1066137 (= e!676073 (matchR!1476 lt!360575 s!10566))))

(declare-fun b!1066138 () Bool)

(declare-fun lt!360612 () Unit!15555)

(declare-fun lt!360614 () Unit!15555)

(assert (=> b!1066138 (= lt!360612 lt!360614)))

(declare-fun ++!2810 (List!10170 List!10170) List!10170)

(assert (=> b!1066138 (= (++!2810 (++!2810 Nil!10154 (Cons!10154 (h!15555 s!10566) Nil!10154)) (t!101216 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!403 (List!10170 C!6450 List!10170 List!10170) Unit!15555)

(assert (=> b!1066138 (= lt!360614 (lemmaMoveElementToOtherListKeepsConcatEq!403 Nil!10154 (h!15555 s!10566) (t!101216 s!10566) s!10566))))

(assert (=> b!1066138 (= e!676072 (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 (++!2810 Nil!10154 (Cons!10154 (h!15555 s!10566) Nil!10154)) (t!101216 s!10566) s!10566))))

(declare-fun b!1066139 () Bool)

(declare-fun res!476308 () Bool)

(assert (=> b!1066139 (=> (not res!476308) (not e!676071))))

(assert (=> b!1066139 (= res!476308 (matchR!1476 (reg!3269 r!15766) (_1!6623 (get!3659 lt!360613))))))

(declare-fun b!1066133 () Bool)

(assert (=> b!1066133 (= e!676075 (Some!2438 (tuple2!11595 Nil!10154 s!10566)))))

(declare-fun d!301138 () Bool)

(declare-fun e!676074 () Bool)

(assert (=> d!301138 e!676074))

(declare-fun res!476310 () Bool)

(assert (=> d!301138 (=> res!476310 e!676074)))

(assert (=> d!301138 (= res!476310 e!676071)))

(declare-fun res!476306 () Bool)

(assert (=> d!301138 (=> (not res!476306) (not e!676071))))

(assert (=> d!301138 (= res!476306 (isDefined!2081 lt!360613))))

(assert (=> d!301138 (= lt!360613 e!676075)))

(declare-fun c!178785 () Bool)

(assert (=> d!301138 (= c!178785 e!676073)))

(declare-fun res!476309 () Bool)

(assert (=> d!301138 (=> (not res!476309) (not e!676073))))

(assert (=> d!301138 (= res!476309 (matchR!1476 (reg!3269 r!15766) Nil!10154))))

(assert (=> d!301138 (validRegex!1409 (reg!3269 r!15766))))

(assert (=> d!301138 (= (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 Nil!10154 s!10566 s!10566) lt!360613)))

(declare-fun b!1066140 () Bool)

(assert (=> b!1066140 (= e!676071 (= (++!2810 (_1!6623 (get!3659 lt!360613)) (_2!6623 (get!3659 lt!360613))) s!10566))))

(declare-fun b!1066141 () Bool)

(assert (=> b!1066141 (= e!676074 (not (isDefined!2081 lt!360613)))))

(assert (= (and d!301138 res!476309) b!1066137))

(assert (= (and d!301138 c!178785) b!1066133))

(assert (= (and d!301138 (not c!178785)) b!1066134))

(assert (= (and b!1066134 c!178786) b!1066135))

(assert (= (and b!1066134 (not c!178786)) b!1066138))

(assert (= (and d!301138 res!476306) b!1066139))

(assert (= (and b!1066139 res!476308) b!1066136))

(assert (= (and b!1066136 res!476307) b!1066140))

(assert (= (and d!301138 (not res!476310)) b!1066141))

(declare-fun m!1223191 () Bool)

(assert (=> b!1066138 m!1223191))

(assert (=> b!1066138 m!1223191))

(declare-fun m!1223193 () Bool)

(assert (=> b!1066138 m!1223193))

(declare-fun m!1223195 () Bool)

(assert (=> b!1066138 m!1223195))

(assert (=> b!1066138 m!1223191))

(declare-fun m!1223197 () Bool)

(assert (=> b!1066138 m!1223197))

(declare-fun m!1223199 () Bool)

(assert (=> b!1066140 m!1223199))

(declare-fun m!1223201 () Bool)

(assert (=> b!1066140 m!1223201))

(declare-fun m!1223203 () Bool)

(assert (=> b!1066137 m!1223203))

(declare-fun m!1223205 () Bool)

(assert (=> d!301138 m!1223205))

(declare-fun m!1223207 () Bool)

(assert (=> d!301138 m!1223207))

(declare-fun m!1223209 () Bool)

(assert (=> d!301138 m!1223209))

(assert (=> b!1066139 m!1223199))

(declare-fun m!1223211 () Bool)

(assert (=> b!1066139 m!1223211))

(assert (=> b!1066141 m!1223205))

(assert (=> b!1066136 m!1223199))

(declare-fun m!1223213 () Bool)

(assert (=> b!1066136 m!1223213))

(assert (=> b!1066054 d!301138))

(declare-fun bs!252167 () Bool)

(declare-fun d!301142 () Bool)

(assert (= bs!252167 (and d!301142 b!1066054)))

(declare-fun lambda!38651 () Int)

(assert (=> bs!252167 (= (= (Star!2940 (reg!3269 r!15766)) lt!360575) (= lambda!38651 lambda!38633))))

(assert (=> bs!252167 (not (= lambda!38651 lambda!38634))))

(declare-fun bs!252168 () Bool)

(assert (= bs!252168 (and d!301142 b!1066055)))

(assert (=> bs!252168 (= (and (= (reg!3269 r!15766) lt!360577) (= (Star!2940 (reg!3269 r!15766)) lt!360572)) (= lambda!38651 lambda!38635))))

(assert (=> d!301142 true))

(assert (=> d!301142 true))

(declare-fun lambda!38652 () Int)

(assert (=> bs!252167 (not (= lambda!38652 lambda!38633))))

(assert (=> bs!252167 (= (= (Star!2940 (reg!3269 r!15766)) lt!360575) (= lambda!38652 lambda!38634))))

(assert (=> bs!252168 (not (= lambda!38652 lambda!38635))))

(declare-fun bs!252169 () Bool)

(assert (= bs!252169 d!301142))

(assert (=> bs!252169 (not (= lambda!38652 lambda!38651))))

(assert (=> d!301142 true))

(assert (=> d!301142 true))

(assert (=> d!301142 (= (Exists!663 lambda!38651) (Exists!663 lambda!38652))))

(declare-fun lt!360617 () Unit!15555)

(declare-fun choose!6808 (Regex!2940 List!10170) Unit!15555)

(assert (=> d!301142 (= lt!360617 (choose!6808 (reg!3269 r!15766) s!10566))))

(assert (=> d!301142 (validRegex!1409 (reg!3269 r!15766))))

(assert (=> d!301142 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!181 (reg!3269 r!15766) s!10566) lt!360617)))

(declare-fun m!1223221 () Bool)

(assert (=> bs!252169 m!1223221))

(declare-fun m!1223223 () Bool)

(assert (=> bs!252169 m!1223223))

(declare-fun m!1223225 () Bool)

(assert (=> bs!252169 m!1223225))

(assert (=> bs!252169 m!1223209))

(assert (=> b!1066054 d!301142))

(declare-fun b!1066201 () Bool)

(declare-fun e!676118 () Bool)

(declare-fun lt!360622 () Regex!2940)

(assert (=> b!1066201 (= e!676118 (= (nullable!1027 lt!360622) (nullable!1027 (reg!3269 r!15766))))))

(declare-fun c!178804 () Bool)

(declare-fun c!178803 () Bool)

(declare-fun call!76957 () Regex!2940)

(declare-fun bm!76949 () Bool)

(declare-fun c!178805 () Bool)

(assert (=> bm!76949 (= call!76957 (removeUselessConcat!481 (ite c!178803 (regTwo!6392 (reg!3269 r!15766)) (ite (or c!178804 c!178805) (regOne!6392 (reg!3269 r!15766)) (regOne!6393 (reg!3269 r!15766))))))))

(declare-fun b!1066202 () Bool)

(assert (=> b!1066202 (= c!178805 (is-Concat!4773 (reg!3269 r!15766)))))

(declare-fun e!676117 () Regex!2940)

(declare-fun e!676116 () Regex!2940)

(assert (=> b!1066202 (= e!676117 e!676116)))

(declare-fun bm!76950 () Bool)

(declare-fun call!76958 () Regex!2940)

(declare-fun call!76955 () Regex!2940)

(assert (=> bm!76950 (= call!76958 call!76955)))

(declare-fun b!1066203 () Bool)

(assert (=> b!1066203 (= e!676117 call!76955)))

(declare-fun bm!76951 () Bool)

(assert (=> bm!76951 (= call!76955 call!76957)))

(declare-fun b!1066204 () Bool)

(declare-fun c!178806 () Bool)

(assert (=> b!1066204 (= c!178806 (is-Star!2940 (reg!3269 r!15766)))))

(declare-fun e!676114 () Regex!2940)

(declare-fun e!676115 () Regex!2940)

(assert (=> b!1066204 (= e!676114 e!676115)))

(declare-fun b!1066205 () Bool)

(declare-fun e!676113 () Regex!2940)

(assert (=> b!1066205 (= e!676113 call!76957)))

(declare-fun b!1066206 () Bool)

(declare-fun call!76954 () Regex!2940)

(assert (=> b!1066206 (= e!676115 (Star!2940 call!76954))))

(declare-fun d!301146 () Bool)

(assert (=> d!301146 e!676118))

(declare-fun res!476338 () Bool)

(assert (=> d!301146 (=> (not res!476338) (not e!676118))))

(assert (=> d!301146 (= res!476338 (validRegex!1409 lt!360622))))

(assert (=> d!301146 (= lt!360622 e!676113)))

(assert (=> d!301146 (= c!178803 (and (is-Concat!4773 (reg!3269 r!15766)) (is-EmptyExpr!2940 (regOne!6392 (reg!3269 r!15766)))))))

(assert (=> d!301146 (validRegex!1409 (reg!3269 r!15766))))

(assert (=> d!301146 (= (removeUselessConcat!481 (reg!3269 r!15766)) lt!360622)))

(declare-fun call!76956 () Regex!2940)

(declare-fun bm!76952 () Bool)

(declare-fun c!178807 () Bool)

(assert (=> bm!76952 (= call!76956 (removeUselessConcat!481 (ite c!178805 (regTwo!6392 (reg!3269 r!15766)) (ite c!178807 (regTwo!6393 (reg!3269 r!15766)) (reg!3269 (reg!3269 r!15766))))))))

(declare-fun b!1066207 () Bool)

(assert (=> b!1066207 (= e!676115 (reg!3269 r!15766))))

(declare-fun b!1066208 () Bool)

(assert (=> b!1066208 (= e!676114 (Union!2940 call!76958 call!76954))))

(declare-fun b!1066209 () Bool)

(assert (=> b!1066209 (= e!676116 e!676114)))

(assert (=> b!1066209 (= c!178807 (is-Union!2940 (reg!3269 r!15766)))))

(declare-fun b!1066210 () Bool)

(assert (=> b!1066210 (= e!676116 (Concat!4773 call!76958 call!76956))))

(declare-fun b!1066211 () Bool)

(assert (=> b!1066211 (= e!676113 e!676117)))

(assert (=> b!1066211 (= c!178804 (and (is-Concat!4773 (reg!3269 r!15766)) (is-EmptyExpr!2940 (regTwo!6392 (reg!3269 r!15766)))))))

(declare-fun bm!76953 () Bool)

(assert (=> bm!76953 (= call!76954 call!76956)))

(assert (= (and d!301146 c!178803) b!1066205))

(assert (= (and d!301146 (not c!178803)) b!1066211))

(assert (= (and b!1066211 c!178804) b!1066203))

(assert (= (and b!1066211 (not c!178804)) b!1066202))

(assert (= (and b!1066202 c!178805) b!1066210))

(assert (= (and b!1066202 (not c!178805)) b!1066209))

(assert (= (and b!1066209 c!178807) b!1066208))

(assert (= (and b!1066209 (not c!178807)) b!1066204))

(assert (= (and b!1066204 c!178806) b!1066206))

(assert (= (and b!1066204 (not c!178806)) b!1066207))

(assert (= (or b!1066208 b!1066206) bm!76953))

(assert (= (or b!1066210 bm!76953) bm!76952))

(assert (= (or b!1066210 b!1066208) bm!76950))

(assert (= (or b!1066203 bm!76950) bm!76951))

(assert (= (or b!1066205 bm!76951) bm!76949))

(assert (= (and d!301146 res!476338) b!1066201))

(declare-fun m!1223227 () Bool)

(assert (=> b!1066201 m!1223227))

(declare-fun m!1223229 () Bool)

(assert (=> b!1066201 m!1223229))

(declare-fun m!1223231 () Bool)

(assert (=> bm!76949 m!1223231))

(declare-fun m!1223233 () Bool)

(assert (=> d!301146 m!1223233))

(assert (=> d!301146 m!1223209))

(declare-fun m!1223235 () Bool)

(assert (=> bm!76952 m!1223235))

(assert (=> b!1066054 d!301146))

(declare-fun bs!252173 () Bool)

(declare-fun d!301148 () Bool)

(assert (= bs!252173 (and d!301148 b!1066055)))

(declare-fun lambda!38658 () Int)

(assert (=> bs!252173 (= (and (= (reg!3269 r!15766) lt!360577) (= lt!360575 lt!360572)) (= lambda!38658 lambda!38635))))

(declare-fun bs!252174 () Bool)

(assert (= bs!252174 (and d!301148 b!1066054)))

(assert (=> bs!252174 (= lambda!38658 lambda!38633)))

(declare-fun bs!252175 () Bool)

(assert (= bs!252175 (and d!301148 d!301142)))

(assert (=> bs!252175 (= (= lt!360575 (Star!2940 (reg!3269 r!15766))) (= lambda!38658 lambda!38651))))

(assert (=> bs!252175 (not (= lambda!38658 lambda!38652))))

(assert (=> bs!252174 (not (= lambda!38658 lambda!38634))))

(assert (=> d!301148 true))

(assert (=> d!301148 true))

(assert (=> d!301148 true))

(assert (=> d!301148 (= (isDefined!2081 (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 Nil!10154 s!10566 s!10566)) (Exists!663 lambda!38658))))

(declare-fun lt!360626 () Unit!15555)

(declare-fun choose!6809 (Regex!2940 Regex!2940 List!10170) Unit!15555)

(assert (=> d!301148 (= lt!360626 (choose!6809 (reg!3269 r!15766) lt!360575 s!10566))))

(assert (=> d!301148 (validRegex!1409 (reg!3269 r!15766))))

(assert (=> d!301148 (= (lemmaFindConcatSeparationEquivalentToExists!545 (reg!3269 r!15766) lt!360575 s!10566) lt!360626)))

(declare-fun bs!252176 () Bool)

(assert (= bs!252176 d!301148))

(assert (=> bs!252176 m!1223111))

(assert (=> bs!252176 m!1223209))

(assert (=> bs!252176 m!1223111))

(assert (=> bs!252176 m!1223123))

(declare-fun m!1223241 () Bool)

(assert (=> bs!252176 m!1223241))

(declare-fun m!1223243 () Bool)

(assert (=> bs!252176 m!1223243))

(assert (=> b!1066054 d!301148))

(declare-fun d!301152 () Bool)

(assert (=> d!301152 (= (Exists!663 lambda!38633) (choose!6807 lambda!38633))))

(declare-fun bs!252177 () Bool)

(assert (= bs!252177 d!301152))

(declare-fun m!1223245 () Bool)

(assert (=> bs!252177 m!1223245))

(assert (=> b!1066054 d!301152))

(declare-fun d!301154 () Bool)

(declare-fun isEmpty!6575 (Option!2439) Bool)

(assert (=> d!301154 (= (isDefined!2081 (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 Nil!10154 s!10566 s!10566)) (not (isEmpty!6575 (findConcatSeparation!545 (reg!3269 r!15766) lt!360575 Nil!10154 s!10566 s!10566))))))

(declare-fun bs!252179 () Bool)

(assert (= bs!252179 d!301154))

(assert (=> bs!252179 m!1223111))

(declare-fun m!1223249 () Bool)

(assert (=> bs!252179 m!1223249))

(assert (=> b!1066054 d!301154))

(declare-fun b!1066257 () Bool)

(declare-fun e!676146 () Bool)

(declare-fun e!676150 () Bool)

(assert (=> b!1066257 (= e!676146 e!676150)))

(declare-fun c!178818 () Bool)

(assert (=> b!1066257 (= c!178818 (is-EmptyLang!2940 lt!360572))))

(declare-fun bm!76959 () Bool)

(declare-fun call!76964 () Bool)

(declare-fun isEmpty!6576 (List!10170) Bool)

(assert (=> bm!76959 (= call!76964 (isEmpty!6576 s!10566))))

(declare-fun b!1066258 () Bool)

(declare-fun e!676144 () Bool)

(declare-fun head!1980 (List!10170) C!6450)

(assert (=> b!1066258 (= e!676144 (= (head!1980 s!10566) (c!178779 lt!360572)))))

(declare-fun b!1066259 () Bool)

(declare-fun res!476375 () Bool)

(declare-fun e!676147 () Bool)

(assert (=> b!1066259 (=> res!476375 e!676147)))

(assert (=> b!1066259 (= res!476375 e!676144)))

(declare-fun res!476368 () Bool)

(assert (=> b!1066259 (=> (not res!476368) (not e!676144))))

(declare-fun lt!360629 () Bool)

(assert (=> b!1066259 (= res!476368 lt!360629)))

(declare-fun d!301158 () Bool)

(assert (=> d!301158 e!676146))

(declare-fun c!178816 () Bool)

(assert (=> d!301158 (= c!178816 (is-EmptyExpr!2940 lt!360572))))

(declare-fun e!676149 () Bool)

(assert (=> d!301158 (= lt!360629 e!676149)))

(declare-fun c!178817 () Bool)

(assert (=> d!301158 (= c!178817 (isEmpty!6576 s!10566))))

(assert (=> d!301158 (validRegex!1409 lt!360572)))

(assert (=> d!301158 (= (matchR!1476 lt!360572 s!10566) lt!360629)))

(declare-fun b!1066260 () Bool)

(declare-fun e!676145 () Bool)

(assert (=> b!1066260 (= e!676147 e!676145)))

(declare-fun res!476374 () Bool)

(assert (=> b!1066260 (=> (not res!476374) (not e!676145))))

(assert (=> b!1066260 (= res!476374 (not lt!360629))))

(declare-fun b!1066261 () Bool)

(declare-fun res!476373 () Bool)

(assert (=> b!1066261 (=> (not res!476373) (not e!676144))))

(declare-fun tail!1542 (List!10170) List!10170)

(assert (=> b!1066261 (= res!476373 (isEmpty!6576 (tail!1542 s!10566)))))

(declare-fun b!1066262 () Bool)

(declare-fun res!476369 () Bool)

(assert (=> b!1066262 (=> res!476369 e!676147)))

(assert (=> b!1066262 (= res!476369 (not (is-ElementMatch!2940 lt!360572)))))

(assert (=> b!1066262 (= e!676150 e!676147)))

(declare-fun b!1066263 () Bool)

(assert (=> b!1066263 (= e!676146 (= lt!360629 call!76964))))

(declare-fun b!1066264 () Bool)

(declare-fun e!676148 () Bool)

(assert (=> b!1066264 (= e!676145 e!676148)))

(declare-fun res!476371 () Bool)

(assert (=> b!1066264 (=> res!476371 e!676148)))

(assert (=> b!1066264 (= res!476371 call!76964)))

(declare-fun b!1066265 () Bool)

(declare-fun derivativeStep!825 (Regex!2940 C!6450) Regex!2940)

(assert (=> b!1066265 (= e!676149 (matchR!1476 (derivativeStep!825 lt!360572 (head!1980 s!10566)) (tail!1542 s!10566)))))

(declare-fun b!1066266 () Bool)

(assert (=> b!1066266 (= e!676148 (not (= (head!1980 s!10566) (c!178779 lt!360572))))))

(declare-fun b!1066267 () Bool)

(declare-fun res!476372 () Bool)

(assert (=> b!1066267 (=> res!476372 e!676148)))

(assert (=> b!1066267 (= res!476372 (not (isEmpty!6576 (tail!1542 s!10566))))))

(declare-fun b!1066268 () Bool)

(assert (=> b!1066268 (= e!676150 (not lt!360629))))

(declare-fun b!1066269 () Bool)

(assert (=> b!1066269 (= e!676149 (nullable!1027 lt!360572))))

(declare-fun b!1066270 () Bool)

(declare-fun res!476370 () Bool)

(assert (=> b!1066270 (=> (not res!476370) (not e!676144))))

(assert (=> b!1066270 (= res!476370 (not call!76964))))

(assert (= (and d!301158 c!178817) b!1066269))

(assert (= (and d!301158 (not c!178817)) b!1066265))

(assert (= (and d!301158 c!178816) b!1066263))

(assert (= (and d!301158 (not c!178816)) b!1066257))

(assert (= (and b!1066257 c!178818) b!1066268))

(assert (= (and b!1066257 (not c!178818)) b!1066262))

(assert (= (and b!1066262 (not res!476369)) b!1066259))

(assert (= (and b!1066259 res!476368) b!1066270))

(assert (= (and b!1066270 res!476370) b!1066261))

(assert (= (and b!1066261 res!476373) b!1066258))

(assert (= (and b!1066259 (not res!476375)) b!1066260))

(assert (= (and b!1066260 res!476374) b!1066264))

(assert (= (and b!1066264 (not res!476371)) b!1066267))

(assert (= (and b!1066267 (not res!476372)) b!1066266))

(assert (= (or b!1066263 b!1066264 b!1066270) bm!76959))

(declare-fun m!1223257 () Bool)

(assert (=> b!1066258 m!1223257))

(declare-fun m!1223259 () Bool)

(assert (=> b!1066267 m!1223259))

(assert (=> b!1066267 m!1223259))

(declare-fun m!1223261 () Bool)

(assert (=> b!1066267 m!1223261))

(assert (=> b!1066265 m!1223257))

(assert (=> b!1066265 m!1223257))

(declare-fun m!1223263 () Bool)

(assert (=> b!1066265 m!1223263))

(assert (=> b!1066265 m!1223259))

(assert (=> b!1066265 m!1223263))

(assert (=> b!1066265 m!1223259))

(declare-fun m!1223265 () Bool)

(assert (=> b!1066265 m!1223265))

(declare-fun m!1223267 () Bool)

(assert (=> b!1066269 m!1223267))

(declare-fun m!1223269 () Bool)

(assert (=> bm!76959 m!1223269))

(assert (=> d!301158 m!1223269))

(declare-fun m!1223271 () Bool)

(assert (=> d!301158 m!1223271))

(assert (=> b!1066266 m!1223257))

(assert (=> b!1066261 m!1223259))

(assert (=> b!1066261 m!1223259))

(assert (=> b!1066261 m!1223261))

(assert (=> b!1066054 d!301158))

(declare-fun bs!252180 () Bool)

(declare-fun b!1066321 () Bool)

(assert (= bs!252180 (and b!1066321 b!1066055)))

(declare-fun lambda!38663 () Int)

(assert (=> bs!252180 (not (= lambda!38663 lambda!38635))))

(declare-fun bs!252181 () Bool)

(assert (= bs!252181 (and b!1066321 b!1066054)))

(assert (=> bs!252181 (not (= lambda!38663 lambda!38633))))

(declare-fun bs!252182 () Bool)

(assert (= bs!252182 (and b!1066321 d!301142)))

(assert (=> bs!252182 (not (= lambda!38663 lambda!38651))))

(declare-fun bs!252183 () Bool)

(assert (= bs!252183 (and b!1066321 d!301148)))

(assert (=> bs!252183 (not (= lambda!38663 lambda!38658))))

(assert (=> bs!252182 (= (= r!15766 (Star!2940 (reg!3269 r!15766))) (= lambda!38663 lambda!38652))))

(assert (=> bs!252181 (= (= r!15766 lt!360575) (= lambda!38663 lambda!38634))))

(assert (=> b!1066321 true))

(assert (=> b!1066321 true))

(declare-fun bs!252184 () Bool)

(declare-fun b!1066320 () Bool)

(assert (= bs!252184 (and b!1066320 b!1066055)))

(declare-fun lambda!38664 () Int)

(assert (=> bs!252184 (not (= lambda!38664 lambda!38635))))

(declare-fun bs!252185 () Bool)

(assert (= bs!252185 (and b!1066320 b!1066054)))

(assert (=> bs!252185 (not (= lambda!38664 lambda!38633))))

(declare-fun bs!252186 () Bool)

(assert (= bs!252186 (and b!1066320 b!1066321)))

(assert (=> bs!252186 (not (= lambda!38664 lambda!38663))))

(declare-fun bs!252187 () Bool)

(assert (= bs!252187 (and b!1066320 d!301142)))

(assert (=> bs!252187 (not (= lambda!38664 lambda!38651))))

(declare-fun bs!252188 () Bool)

(assert (= bs!252188 (and b!1066320 d!301148)))

(assert (=> bs!252188 (not (= lambda!38664 lambda!38658))))

(assert (=> bs!252187 (not (= lambda!38664 lambda!38652))))

(assert (=> bs!252185 (not (= lambda!38664 lambda!38634))))

(assert (=> b!1066320 true))

(assert (=> b!1066320 true))

(declare-fun b!1066313 () Bool)

(declare-fun c!178833 () Bool)

(assert (=> b!1066313 (= c!178833 (is-Union!2940 r!15766))))

(declare-fun e!676183 () Bool)

(declare-fun e!676175 () Bool)

(assert (=> b!1066313 (= e!676183 e!676175)))

(declare-fun b!1066314 () Bool)

(declare-fun e!676177 () Bool)

(declare-fun e!676178 () Bool)

(assert (=> b!1066314 (= e!676177 e!676178)))

(declare-fun res!476395 () Bool)

(assert (=> b!1066314 (= res!476395 (not (is-EmptyLang!2940 r!15766)))))

(assert (=> b!1066314 (=> (not res!476395) (not e!676178))))

(declare-fun d!301162 () Bool)

(declare-fun c!178834 () Bool)

(assert (=> d!301162 (= c!178834 (is-EmptyExpr!2940 r!15766))))

(assert (=> d!301162 (= (matchRSpec!739 r!15766 s!10566) e!676177)))

(declare-fun b!1066315 () Bool)

(assert (=> b!1066315 (= e!676183 (= s!10566 (Cons!10154 (c!178779 r!15766) Nil!10154)))))

(declare-fun b!1066316 () Bool)

(declare-fun e!676180 () Bool)

(assert (=> b!1066316 (= e!676175 e!676180)))

(declare-fun c!178831 () Bool)

(assert (=> b!1066316 (= c!178831 (is-Star!2940 r!15766))))

(declare-fun b!1066317 () Bool)

(declare-fun res!476396 () Bool)

(declare-fun e!676176 () Bool)

(assert (=> b!1066317 (=> res!476396 e!676176)))

(declare-fun call!76969 () Bool)

(assert (=> b!1066317 (= res!476396 call!76969)))

(assert (=> b!1066317 (= e!676180 e!676176)))

(declare-fun b!1066318 () Bool)

(declare-fun e!676179 () Bool)

(assert (=> b!1066318 (= e!676179 (matchRSpec!739 (regTwo!6393 r!15766) s!10566))))

(declare-fun b!1066319 () Bool)

(declare-fun c!178832 () Bool)

(assert (=> b!1066319 (= c!178832 (is-ElementMatch!2940 r!15766))))

(assert (=> b!1066319 (= e!676178 e!676183)))

(declare-fun call!76970 () Bool)

(assert (=> b!1066320 (= e!676180 call!76970)))

(declare-fun bm!76964 () Bool)

(assert (=> bm!76964 (= call!76970 (Exists!663 (ite c!178831 lambda!38663 lambda!38664)))))

(assert (=> b!1066321 (= e!676176 call!76970)))

(declare-fun bm!76965 () Bool)

(assert (=> bm!76965 (= call!76969 (isEmpty!6576 s!10566))))

(declare-fun b!1066322 () Bool)

(assert (=> b!1066322 (= e!676177 call!76969)))

(declare-fun b!1066323 () Bool)

(assert (=> b!1066323 (= e!676175 e!676179)))

(declare-fun res!476394 () Bool)

(assert (=> b!1066323 (= res!476394 (matchRSpec!739 (regOne!6393 r!15766) s!10566))))

(assert (=> b!1066323 (=> res!476394 e!676179)))

(assert (= (and d!301162 c!178834) b!1066322))

(assert (= (and d!301162 (not c!178834)) b!1066314))

(assert (= (and b!1066314 res!476395) b!1066319))

(assert (= (and b!1066319 c!178832) b!1066315))

(assert (= (and b!1066319 (not c!178832)) b!1066313))

(assert (= (and b!1066313 c!178833) b!1066323))

(assert (= (and b!1066313 (not c!178833)) b!1066316))

(assert (= (and b!1066323 (not res!476394)) b!1066318))

(assert (= (and b!1066316 c!178831) b!1066317))

(assert (= (and b!1066316 (not c!178831)) b!1066320))

(assert (= (and b!1066317 (not res!476396)) b!1066321))

(assert (= (or b!1066321 b!1066320) bm!76964))

(assert (= (or b!1066322 b!1066317) bm!76965))

(declare-fun m!1223273 () Bool)

(assert (=> b!1066318 m!1223273))

(declare-fun m!1223275 () Bool)

(assert (=> bm!76964 m!1223275))

(assert (=> bm!76965 m!1223269))

(declare-fun m!1223277 () Bool)

(assert (=> b!1066323 m!1223277))

(assert (=> b!1066058 d!301162))

(declare-fun b!1066332 () Bool)

(declare-fun e!676188 () Bool)

(declare-fun e!676192 () Bool)

(assert (=> b!1066332 (= e!676188 e!676192)))

(declare-fun c!178837 () Bool)

(assert (=> b!1066332 (= c!178837 (is-EmptyLang!2940 r!15766))))

(declare-fun bm!76966 () Bool)

(declare-fun call!76971 () Bool)

(assert (=> bm!76966 (= call!76971 (isEmpty!6576 s!10566))))

(declare-fun b!1066333 () Bool)

(declare-fun e!676186 () Bool)

(assert (=> b!1066333 (= e!676186 (= (head!1980 s!10566) (c!178779 r!15766)))))

(declare-fun b!1066334 () Bool)

(declare-fun res!476412 () Bool)

(declare-fun e!676189 () Bool)

(assert (=> b!1066334 (=> res!476412 e!676189)))

(assert (=> b!1066334 (= res!476412 e!676186)))

(declare-fun res!476405 () Bool)

(assert (=> b!1066334 (=> (not res!476405) (not e!676186))))

(declare-fun lt!360636 () Bool)

(assert (=> b!1066334 (= res!476405 lt!360636)))

(declare-fun d!301164 () Bool)

(assert (=> d!301164 e!676188))

(declare-fun c!178835 () Bool)

(assert (=> d!301164 (= c!178835 (is-EmptyExpr!2940 r!15766))))

(declare-fun e!676191 () Bool)

(assert (=> d!301164 (= lt!360636 e!676191)))

(declare-fun c!178836 () Bool)

(assert (=> d!301164 (= c!178836 (isEmpty!6576 s!10566))))

(assert (=> d!301164 (validRegex!1409 r!15766)))

(assert (=> d!301164 (= (matchR!1476 r!15766 s!10566) lt!360636)))

(declare-fun b!1066335 () Bool)

(declare-fun e!676187 () Bool)

(assert (=> b!1066335 (= e!676189 e!676187)))

(declare-fun res!476411 () Bool)

(assert (=> b!1066335 (=> (not res!476411) (not e!676187))))

(assert (=> b!1066335 (= res!476411 (not lt!360636))))

(declare-fun b!1066336 () Bool)

(declare-fun res!476410 () Bool)

(assert (=> b!1066336 (=> (not res!476410) (not e!676186))))

(assert (=> b!1066336 (= res!476410 (isEmpty!6576 (tail!1542 s!10566)))))

(declare-fun b!1066337 () Bool)

(declare-fun res!476406 () Bool)

(assert (=> b!1066337 (=> res!476406 e!676189)))

(assert (=> b!1066337 (= res!476406 (not (is-ElementMatch!2940 r!15766)))))

(assert (=> b!1066337 (= e!676192 e!676189)))

(declare-fun b!1066338 () Bool)

(assert (=> b!1066338 (= e!676188 (= lt!360636 call!76971))))

(declare-fun b!1066339 () Bool)

(declare-fun e!676190 () Bool)

(assert (=> b!1066339 (= e!676187 e!676190)))

(declare-fun res!476408 () Bool)

(assert (=> b!1066339 (=> res!476408 e!676190)))

(assert (=> b!1066339 (= res!476408 call!76971)))

(declare-fun b!1066340 () Bool)

(assert (=> b!1066340 (= e!676191 (matchR!1476 (derivativeStep!825 r!15766 (head!1980 s!10566)) (tail!1542 s!10566)))))

(declare-fun b!1066341 () Bool)

(assert (=> b!1066341 (= e!676190 (not (= (head!1980 s!10566) (c!178779 r!15766))))))

(declare-fun b!1066342 () Bool)

(declare-fun res!476409 () Bool)

(assert (=> b!1066342 (=> res!476409 e!676190)))

(assert (=> b!1066342 (= res!476409 (not (isEmpty!6576 (tail!1542 s!10566))))))

(declare-fun b!1066343 () Bool)

(assert (=> b!1066343 (= e!676192 (not lt!360636))))

(declare-fun b!1066344 () Bool)

(assert (=> b!1066344 (= e!676191 (nullable!1027 r!15766))))

(declare-fun b!1066345 () Bool)

(declare-fun res!476407 () Bool)

(assert (=> b!1066345 (=> (not res!476407) (not e!676186))))

(assert (=> b!1066345 (= res!476407 (not call!76971))))

(assert (= (and d!301164 c!178836) b!1066344))

(assert (= (and d!301164 (not c!178836)) b!1066340))

(assert (= (and d!301164 c!178835) b!1066338))

(assert (= (and d!301164 (not c!178835)) b!1066332))

(assert (= (and b!1066332 c!178837) b!1066343))

(assert (= (and b!1066332 (not c!178837)) b!1066337))

(assert (= (and b!1066337 (not res!476406)) b!1066334))

(assert (= (and b!1066334 res!476405) b!1066345))

(assert (= (and b!1066345 res!476407) b!1066336))

(assert (= (and b!1066336 res!476410) b!1066333))

(assert (= (and b!1066334 (not res!476412)) b!1066335))

(assert (= (and b!1066335 res!476411) b!1066339))

(assert (= (and b!1066339 (not res!476408)) b!1066342))

(assert (= (and b!1066342 (not res!476409)) b!1066341))

(assert (= (or b!1066338 b!1066339 b!1066345) bm!76966))

(assert (=> b!1066333 m!1223257))

(assert (=> b!1066342 m!1223259))

(assert (=> b!1066342 m!1223259))

(assert (=> b!1066342 m!1223261))

(assert (=> b!1066340 m!1223257))

(assert (=> b!1066340 m!1223257))

(declare-fun m!1223279 () Bool)

(assert (=> b!1066340 m!1223279))

(assert (=> b!1066340 m!1223259))

(assert (=> b!1066340 m!1223279))

(assert (=> b!1066340 m!1223259))

(declare-fun m!1223281 () Bool)

(assert (=> b!1066340 m!1223281))

(declare-fun m!1223283 () Bool)

(assert (=> b!1066344 m!1223283))

(assert (=> bm!76966 m!1223269))

(assert (=> d!301164 m!1223269))

(assert (=> d!301164 m!1223141))

(assert (=> b!1066341 m!1223257))

(assert (=> b!1066336 m!1223259))

(assert (=> b!1066336 m!1223259))

(assert (=> b!1066336 m!1223261))

(assert (=> b!1066058 d!301164))

(declare-fun d!301166 () Bool)

(assert (=> d!301166 (= (matchR!1476 r!15766 s!10566) (matchRSpec!739 r!15766 s!10566))))

(declare-fun lt!360639 () Unit!15555)

(declare-fun choose!6810 (Regex!2940 List!10170) Unit!15555)

(assert (=> d!301166 (= lt!360639 (choose!6810 r!15766 s!10566))))

(assert (=> d!301166 (validRegex!1409 r!15766)))

(assert (=> d!301166 (= (mainMatchTheorem!739 r!15766 s!10566) lt!360639)))

(declare-fun bs!252189 () Bool)

(assert (= bs!252189 d!301166))

(assert (=> bs!252189 m!1223145))

(assert (=> bs!252189 m!1223143))

(declare-fun m!1223285 () Bool)

(assert (=> bs!252189 m!1223285))

(assert (=> bs!252189 m!1223141))

(assert (=> b!1066058 d!301166))

(declare-fun b!1066373 () Bool)

(declare-fun e!676218 () Bool)

(declare-fun e!676212 () Bool)

(assert (=> b!1066373 (= e!676218 e!676212)))

(declare-fun c!178844 () Bool)

(assert (=> b!1066373 (= c!178844 (is-Star!2940 r!15766))))

(declare-fun d!301168 () Bool)

(declare-fun res!476428 () Bool)

(assert (=> d!301168 (=> res!476428 e!676218)))

(assert (=> d!301168 (= res!476428 (is-ElementMatch!2940 r!15766))))

(assert (=> d!301168 (= (validRegex!1409 r!15766) e!676218)))

(declare-fun b!1066374 () Bool)

(declare-fun e!676213 () Bool)

(declare-fun call!76980 () Bool)

(assert (=> b!1066374 (= e!676213 call!76980)))

(declare-fun c!178845 () Bool)

(declare-fun bm!76973 () Bool)

(assert (=> bm!76973 (= call!76980 (validRegex!1409 (ite c!178844 (reg!3269 r!15766) (ite c!178845 (regOne!6393 r!15766) (regOne!6392 r!15766)))))))

(declare-fun b!1066375 () Bool)

(assert (=> b!1066375 (= e!676212 e!676213)))

(declare-fun res!476429 () Bool)

(assert (=> b!1066375 (= res!476429 (not (nullable!1027 (reg!3269 r!15766))))))

(assert (=> b!1066375 (=> (not res!476429) (not e!676213))))

(declare-fun b!1066376 () Bool)

(declare-fun e!676214 () Bool)

(declare-fun call!76978 () Bool)

(assert (=> b!1066376 (= e!676214 call!76978)))

(declare-fun b!1066377 () Bool)

(declare-fun res!476430 () Bool)

(assert (=> b!1066377 (=> (not res!476430) (not e!676214))))

(declare-fun call!76979 () Bool)

(assert (=> b!1066377 (= res!476430 call!76979)))

(declare-fun e!676216 () Bool)

(assert (=> b!1066377 (= e!676216 e!676214)))

(declare-fun b!1066378 () Bool)

(declare-fun e!676215 () Bool)

(declare-fun e!676217 () Bool)

(assert (=> b!1066378 (= e!676215 e!676217)))

(declare-fun res!476431 () Bool)

(assert (=> b!1066378 (=> (not res!476431) (not e!676217))))

(assert (=> b!1066378 (= res!476431 call!76979)))

(declare-fun b!1066379 () Bool)

(assert (=> b!1066379 (= e!676212 e!676216)))

(assert (=> b!1066379 (= c!178845 (is-Union!2940 r!15766))))

(declare-fun b!1066380 () Bool)

(assert (=> b!1066380 (= e!676217 call!76978)))

(declare-fun b!1066381 () Bool)

(declare-fun res!476432 () Bool)

(assert (=> b!1066381 (=> res!476432 e!676215)))

(assert (=> b!1066381 (= res!476432 (not (is-Concat!4773 r!15766)))))

(assert (=> b!1066381 (= e!676216 e!676215)))

(declare-fun bm!76974 () Bool)

(assert (=> bm!76974 (= call!76979 call!76980)))

(declare-fun bm!76975 () Bool)

(assert (=> bm!76975 (= call!76978 (validRegex!1409 (ite c!178845 (regTwo!6393 r!15766) (regTwo!6392 r!15766))))))

(assert (= (and d!301168 (not res!476428)) b!1066373))

(assert (= (and b!1066373 c!178844) b!1066375))

(assert (= (and b!1066373 (not c!178844)) b!1066379))

(assert (= (and b!1066375 res!476429) b!1066374))

(assert (= (and b!1066379 c!178845) b!1066377))

(assert (= (and b!1066379 (not c!178845)) b!1066381))

(assert (= (and b!1066377 res!476430) b!1066376))

(assert (= (and b!1066381 (not res!476432)) b!1066378))

(assert (= (and b!1066378 res!476431) b!1066380))

(assert (= (or b!1066376 b!1066380) bm!76975))

(assert (= (or b!1066377 b!1066378) bm!76974))

(assert (= (or b!1066374 bm!76974) bm!76973))

(declare-fun m!1223309 () Bool)

(assert (=> bm!76973 m!1223309))

(assert (=> b!1066375 m!1223229))

(declare-fun m!1223311 () Bool)

(assert (=> bm!76975 m!1223311))

(assert (=> start!91528 d!301168))

(declare-fun d!301174 () Bool)

(declare-fun nullableFct!225 (Regex!2940) Bool)

(assert (=> d!301174 (= (nullable!1027 lt!360577) (nullableFct!225 lt!360577))))

(declare-fun bs!252191 () Bool)

(assert (= bs!252191 d!301174))

(declare-fun m!1223313 () Bool)

(assert (=> bs!252191 m!1223313))

(assert (=> b!1066061 d!301174))

(declare-fun bs!252192 () Bool)

(declare-fun d!301176 () Bool)

(assert (= bs!252192 (and d!301176 b!1066055)))

(declare-fun lambda!38665 () Int)

(assert (=> bs!252192 (= lambda!38665 lambda!38635)))

(declare-fun bs!252193 () Bool)

(assert (= bs!252193 (and d!301176 b!1066320)))

(assert (=> bs!252193 (not (= lambda!38665 lambda!38664))))

(declare-fun bs!252194 () Bool)

(assert (= bs!252194 (and d!301176 b!1066054)))

(assert (=> bs!252194 (= (and (= lt!360577 (reg!3269 r!15766)) (= lt!360572 lt!360575)) (= lambda!38665 lambda!38633))))

(declare-fun bs!252195 () Bool)

(assert (= bs!252195 (and d!301176 b!1066321)))

(assert (=> bs!252195 (not (= lambda!38665 lambda!38663))))

(declare-fun bs!252196 () Bool)

(assert (= bs!252196 (and d!301176 d!301142)))

(assert (=> bs!252196 (= (and (= lt!360577 (reg!3269 r!15766)) (= lt!360572 (Star!2940 (reg!3269 r!15766)))) (= lambda!38665 lambda!38651))))

(declare-fun bs!252197 () Bool)

(assert (= bs!252197 (and d!301176 d!301148)))

(assert (=> bs!252197 (= (and (= lt!360577 (reg!3269 r!15766)) (= lt!360572 lt!360575)) (= lambda!38665 lambda!38658))))

(assert (=> bs!252196 (not (= lambda!38665 lambda!38652))))

(assert (=> bs!252194 (not (= lambda!38665 lambda!38634))))

(assert (=> d!301176 true))

(assert (=> d!301176 true))

(assert (=> d!301176 true))

(assert (=> d!301176 (= (isDefined!2081 (findConcatSeparation!545 lt!360577 lt!360572 Nil!10154 s!10566 s!10566)) (Exists!663 lambda!38665))))

(declare-fun lt!360643 () Unit!15555)

(assert (=> d!301176 (= lt!360643 (choose!6809 lt!360577 lt!360572 s!10566))))

(assert (=> d!301176 (validRegex!1409 lt!360577)))

(assert (=> d!301176 (= (lemmaFindConcatSeparationEquivalentToExists!545 lt!360577 lt!360572 s!10566) lt!360643)))

(declare-fun bs!252198 () Bool)

(assert (= bs!252198 d!301176))

(assert (=> bs!252198 m!1223129))

(assert (=> bs!252198 m!1223133))

(assert (=> bs!252198 m!1223129))

(assert (=> bs!252198 m!1223135))

(declare-fun m!1223315 () Bool)

(assert (=> bs!252198 m!1223315))

(declare-fun m!1223317 () Bool)

(assert (=> bs!252198 m!1223317))

(assert (=> b!1066055 d!301176))

(declare-fun d!301178 () Bool)

(assert (=> d!301178 (= (matchR!1476 lt!360572 s!10566) (matchRSpec!739 lt!360572 s!10566))))

(declare-fun lt!360644 () Unit!15555)

(assert (=> d!301178 (= lt!360644 (choose!6810 lt!360572 s!10566))))

(assert (=> d!301178 (validRegex!1409 lt!360572)))

(assert (=> d!301178 (= (mainMatchTheorem!739 lt!360572 s!10566) lt!360644)))

(declare-fun bs!252199 () Bool)

(assert (= bs!252199 d!301178))

(assert (=> bs!252199 m!1223109))

(assert (=> bs!252199 m!1223131))

(declare-fun m!1223319 () Bool)

(assert (=> bs!252199 m!1223319))

(assert (=> bs!252199 m!1223271))

(assert (=> b!1066055 d!301178))

(declare-fun bs!252200 () Bool)

(declare-fun b!1066390 () Bool)

(assert (= bs!252200 (and b!1066390 d!301176)))

(declare-fun lambda!38666 () Int)

(assert (=> bs!252200 (not (= lambda!38666 lambda!38665))))

(declare-fun bs!252201 () Bool)

(assert (= bs!252201 (and b!1066390 b!1066055)))

(assert (=> bs!252201 (not (= lambda!38666 lambda!38635))))

(declare-fun bs!252202 () Bool)

(assert (= bs!252202 (and b!1066390 b!1066320)))

(assert (=> bs!252202 (not (= lambda!38666 lambda!38664))))

(declare-fun bs!252203 () Bool)

(assert (= bs!252203 (and b!1066390 b!1066054)))

(assert (=> bs!252203 (not (= lambda!38666 lambda!38633))))

(declare-fun bs!252204 () Bool)

(assert (= bs!252204 (and b!1066390 b!1066321)))

(assert (=> bs!252204 (= (and (= (reg!3269 lt!360572) (reg!3269 r!15766)) (= lt!360572 r!15766)) (= lambda!38666 lambda!38663))))

(declare-fun bs!252205 () Bool)

(assert (= bs!252205 (and b!1066390 d!301142)))

(assert (=> bs!252205 (not (= lambda!38666 lambda!38651))))

(declare-fun bs!252206 () Bool)

(assert (= bs!252206 (and b!1066390 d!301148)))

(assert (=> bs!252206 (not (= lambda!38666 lambda!38658))))

(assert (=> bs!252205 (= (and (= (reg!3269 lt!360572) (reg!3269 r!15766)) (= lt!360572 (Star!2940 (reg!3269 r!15766)))) (= lambda!38666 lambda!38652))))

(assert (=> bs!252203 (= (and (= (reg!3269 lt!360572) (reg!3269 r!15766)) (= lt!360572 lt!360575)) (= lambda!38666 lambda!38634))))

(assert (=> b!1066390 true))

(assert (=> b!1066390 true))

(declare-fun bs!252207 () Bool)

(declare-fun b!1066389 () Bool)

(assert (= bs!252207 (and b!1066389 d!301176)))

(declare-fun lambda!38667 () Int)

(assert (=> bs!252207 (not (= lambda!38667 lambda!38665))))

(declare-fun bs!252208 () Bool)

(assert (= bs!252208 (and b!1066389 b!1066055)))

(assert (=> bs!252208 (not (= lambda!38667 lambda!38635))))

(declare-fun bs!252209 () Bool)

(assert (= bs!252209 (and b!1066389 b!1066320)))

(assert (=> bs!252209 (= (and (= (regOne!6392 lt!360572) (regOne!6392 r!15766)) (= (regTwo!6392 lt!360572) (regTwo!6392 r!15766))) (= lambda!38667 lambda!38664))))

(declare-fun bs!252210 () Bool)

(assert (= bs!252210 (and b!1066389 b!1066054)))

(assert (=> bs!252210 (not (= lambda!38667 lambda!38633))))

(declare-fun bs!252211 () Bool)

(assert (= bs!252211 (and b!1066389 b!1066321)))

(assert (=> bs!252211 (not (= lambda!38667 lambda!38663))))

(declare-fun bs!252212 () Bool)

(assert (= bs!252212 (and b!1066389 d!301148)))

(assert (=> bs!252212 (not (= lambda!38667 lambda!38658))))

(declare-fun bs!252213 () Bool)

(assert (= bs!252213 (and b!1066389 d!301142)))

(assert (=> bs!252213 (not (= lambda!38667 lambda!38652))))

(assert (=> bs!252210 (not (= lambda!38667 lambda!38634))))

(declare-fun bs!252214 () Bool)

(assert (= bs!252214 (and b!1066389 b!1066390)))

(assert (=> bs!252214 (not (= lambda!38667 lambda!38666))))

(assert (=> bs!252213 (not (= lambda!38667 lambda!38651))))

(assert (=> b!1066389 true))

(assert (=> b!1066389 true))

(declare-fun b!1066382 () Bool)

(declare-fun c!178848 () Bool)

(assert (=> b!1066382 (= c!178848 (is-Union!2940 lt!360572))))

(declare-fun e!676225 () Bool)

(declare-fun e!676219 () Bool)

(assert (=> b!1066382 (= e!676225 e!676219)))

(declare-fun b!1066383 () Bool)

(declare-fun e!676221 () Bool)

(declare-fun e!676222 () Bool)

(assert (=> b!1066383 (= e!676221 e!676222)))

(declare-fun res!476434 () Bool)

(assert (=> b!1066383 (= res!476434 (not (is-EmptyLang!2940 lt!360572)))))

(assert (=> b!1066383 (=> (not res!476434) (not e!676222))))

(declare-fun d!301180 () Bool)

(declare-fun c!178849 () Bool)

(assert (=> d!301180 (= c!178849 (is-EmptyExpr!2940 lt!360572))))

(assert (=> d!301180 (= (matchRSpec!739 lt!360572 s!10566) e!676221)))

(declare-fun b!1066384 () Bool)

(assert (=> b!1066384 (= e!676225 (= s!10566 (Cons!10154 (c!178779 lt!360572) Nil!10154)))))

(declare-fun b!1066385 () Bool)

(declare-fun e!676224 () Bool)

(assert (=> b!1066385 (= e!676219 e!676224)))

(declare-fun c!178846 () Bool)

(assert (=> b!1066385 (= c!178846 (is-Star!2940 lt!360572))))

(declare-fun b!1066386 () Bool)

(declare-fun res!476435 () Bool)

(declare-fun e!676220 () Bool)

(assert (=> b!1066386 (=> res!476435 e!676220)))

(declare-fun call!76981 () Bool)

(assert (=> b!1066386 (= res!476435 call!76981)))

(assert (=> b!1066386 (= e!676224 e!676220)))

(declare-fun b!1066387 () Bool)

(declare-fun e!676223 () Bool)

(assert (=> b!1066387 (= e!676223 (matchRSpec!739 (regTwo!6393 lt!360572) s!10566))))

(declare-fun b!1066388 () Bool)

(declare-fun c!178847 () Bool)

(assert (=> b!1066388 (= c!178847 (is-ElementMatch!2940 lt!360572))))

(assert (=> b!1066388 (= e!676222 e!676225)))

(declare-fun call!76982 () Bool)

(assert (=> b!1066389 (= e!676224 call!76982)))

(declare-fun bm!76976 () Bool)

(assert (=> bm!76976 (= call!76982 (Exists!663 (ite c!178846 lambda!38666 lambda!38667)))))

(assert (=> b!1066390 (= e!676220 call!76982)))

(declare-fun bm!76977 () Bool)

(assert (=> bm!76977 (= call!76981 (isEmpty!6576 s!10566))))

(declare-fun b!1066391 () Bool)

(assert (=> b!1066391 (= e!676221 call!76981)))

(declare-fun b!1066392 () Bool)

(assert (=> b!1066392 (= e!676219 e!676223)))

(declare-fun res!476433 () Bool)

(assert (=> b!1066392 (= res!476433 (matchRSpec!739 (regOne!6393 lt!360572) s!10566))))

(assert (=> b!1066392 (=> res!476433 e!676223)))

(assert (= (and d!301180 c!178849) b!1066391))

(assert (= (and d!301180 (not c!178849)) b!1066383))

(assert (= (and b!1066383 res!476434) b!1066388))

(assert (= (and b!1066388 c!178847) b!1066384))

(assert (= (and b!1066388 (not c!178847)) b!1066382))

(assert (= (and b!1066382 c!178848) b!1066392))

(assert (= (and b!1066382 (not c!178848)) b!1066385))

(assert (= (and b!1066392 (not res!476433)) b!1066387))

(assert (= (and b!1066385 c!178846) b!1066386))

(assert (= (and b!1066385 (not c!178846)) b!1066389))

(assert (= (and b!1066386 (not res!476435)) b!1066390))

(assert (= (or b!1066390 b!1066389) bm!76976))

(assert (= (or b!1066391 b!1066386) bm!76977))

(declare-fun m!1223321 () Bool)

(assert (=> b!1066387 m!1223321))

(declare-fun m!1223325 () Bool)

(assert (=> bm!76976 m!1223325))

(assert (=> bm!76977 m!1223269))

(declare-fun m!1223329 () Bool)

(assert (=> b!1066392 m!1223329))

(assert (=> b!1066055 d!301180))

(declare-fun d!301182 () Bool)

(assert (=> d!301182 (= (Exists!663 lambda!38635) (choose!6807 lambda!38635))))

(declare-fun bs!252216 () Bool)

(assert (= bs!252216 d!301182))

(declare-fun m!1223331 () Bool)

(assert (=> bs!252216 m!1223331))

(assert (=> b!1066055 d!301182))

(declare-fun b!1066393 () Bool)

(declare-fun e!676232 () Bool)

(declare-fun e!676226 () Bool)

(assert (=> b!1066393 (= e!676232 e!676226)))

(declare-fun c!178850 () Bool)

(assert (=> b!1066393 (= c!178850 (is-Star!2940 lt!360577))))

(declare-fun d!301186 () Bool)

(declare-fun res!476436 () Bool)

(assert (=> d!301186 (=> res!476436 e!676232)))

(assert (=> d!301186 (= res!476436 (is-ElementMatch!2940 lt!360577))))

(assert (=> d!301186 (= (validRegex!1409 lt!360577) e!676232)))

(declare-fun b!1066394 () Bool)

(declare-fun e!676227 () Bool)

(declare-fun call!76985 () Bool)

(assert (=> b!1066394 (= e!676227 call!76985)))

(declare-fun bm!76978 () Bool)

(declare-fun c!178851 () Bool)

(assert (=> bm!76978 (= call!76985 (validRegex!1409 (ite c!178850 (reg!3269 lt!360577) (ite c!178851 (regOne!6393 lt!360577) (regOne!6392 lt!360577)))))))

(declare-fun b!1066395 () Bool)

(assert (=> b!1066395 (= e!676226 e!676227)))

(declare-fun res!476437 () Bool)

(assert (=> b!1066395 (= res!476437 (not (nullable!1027 (reg!3269 lt!360577))))))

(assert (=> b!1066395 (=> (not res!476437) (not e!676227))))

(declare-fun b!1066396 () Bool)

(declare-fun e!676228 () Bool)

(declare-fun call!76983 () Bool)

(assert (=> b!1066396 (= e!676228 call!76983)))

(declare-fun b!1066397 () Bool)

(declare-fun res!476438 () Bool)

(assert (=> b!1066397 (=> (not res!476438) (not e!676228))))

(declare-fun call!76984 () Bool)

(assert (=> b!1066397 (= res!476438 call!76984)))

(declare-fun e!676230 () Bool)

(assert (=> b!1066397 (= e!676230 e!676228)))

(declare-fun b!1066398 () Bool)

(declare-fun e!676229 () Bool)

(declare-fun e!676231 () Bool)

(assert (=> b!1066398 (= e!676229 e!676231)))

(declare-fun res!476439 () Bool)

(assert (=> b!1066398 (=> (not res!476439) (not e!676231))))

(assert (=> b!1066398 (= res!476439 call!76984)))

(declare-fun b!1066399 () Bool)

(assert (=> b!1066399 (= e!676226 e!676230)))

(assert (=> b!1066399 (= c!178851 (is-Union!2940 lt!360577))))

(declare-fun b!1066400 () Bool)

(assert (=> b!1066400 (= e!676231 call!76983)))

(declare-fun b!1066401 () Bool)

(declare-fun res!476440 () Bool)

(assert (=> b!1066401 (=> res!476440 e!676229)))

(assert (=> b!1066401 (= res!476440 (not (is-Concat!4773 lt!360577)))))

(assert (=> b!1066401 (= e!676230 e!676229)))

(declare-fun bm!76979 () Bool)

(assert (=> bm!76979 (= call!76984 call!76985)))

(declare-fun bm!76980 () Bool)

(assert (=> bm!76980 (= call!76983 (validRegex!1409 (ite c!178851 (regTwo!6393 lt!360577) (regTwo!6392 lt!360577))))))

(assert (= (and d!301186 (not res!476436)) b!1066393))

(assert (= (and b!1066393 c!178850) b!1066395))

(assert (= (and b!1066393 (not c!178850)) b!1066399))

(assert (= (and b!1066395 res!476437) b!1066394))

(assert (= (and b!1066399 c!178851) b!1066397))

(assert (= (and b!1066399 (not c!178851)) b!1066401))

(assert (= (and b!1066397 res!476438) b!1066396))

(assert (= (and b!1066401 (not res!476440)) b!1066398))

(assert (= (and b!1066398 res!476439) b!1066400))

(assert (= (or b!1066396 b!1066400) bm!76980))

(assert (= (or b!1066397 b!1066398) bm!76979))

(assert (= (or b!1066394 bm!76979) bm!76978))

(declare-fun m!1223333 () Bool)

(assert (=> bm!76978 m!1223333))

(declare-fun m!1223335 () Bool)

(assert (=> b!1066395 m!1223335))

(declare-fun m!1223337 () Bool)

(assert (=> bm!76980 m!1223337))

(assert (=> b!1066055 d!301186))

(declare-fun d!301188 () Bool)

(assert (=> d!301188 (= (isDefined!2081 (findConcatSeparation!545 lt!360577 lt!360572 Nil!10154 s!10566 s!10566)) (not (isEmpty!6575 (findConcatSeparation!545 lt!360577 lt!360572 Nil!10154 s!10566 s!10566))))))

(declare-fun bs!252217 () Bool)

(assert (= bs!252217 d!301188))

(assert (=> bs!252217 m!1223129))

(declare-fun m!1223339 () Bool)

(assert (=> bs!252217 m!1223339))

(assert (=> b!1066055 d!301188))

(declare-fun b!1066403 () Bool)

(declare-fun e!676237 () Option!2439)

(declare-fun e!676234 () Option!2439)

(assert (=> b!1066403 (= e!676237 e!676234)))

(declare-fun c!178853 () Bool)

(assert (=> b!1066403 (= c!178853 (is-Nil!10154 s!10566))))

(declare-fun b!1066404 () Bool)

(assert (=> b!1066404 (= e!676234 None!2438)))

(declare-fun b!1066405 () Bool)

(declare-fun res!476442 () Bool)

(declare-fun e!676233 () Bool)

(assert (=> b!1066405 (=> (not res!476442) (not e!676233))))

(declare-fun lt!360649 () Option!2439)

(assert (=> b!1066405 (= res!476442 (matchR!1476 lt!360572 (_2!6623 (get!3659 lt!360649))))))

(declare-fun b!1066406 () Bool)

(declare-fun e!676235 () Bool)

(assert (=> b!1066406 (= e!676235 (matchR!1476 lt!360572 s!10566))))

(declare-fun b!1066407 () Bool)

(declare-fun lt!360648 () Unit!15555)

(declare-fun lt!360650 () Unit!15555)

(assert (=> b!1066407 (= lt!360648 lt!360650)))

(assert (=> b!1066407 (= (++!2810 (++!2810 Nil!10154 (Cons!10154 (h!15555 s!10566) Nil!10154)) (t!101216 s!10566)) s!10566)))

(assert (=> b!1066407 (= lt!360650 (lemmaMoveElementToOtherListKeepsConcatEq!403 Nil!10154 (h!15555 s!10566) (t!101216 s!10566) s!10566))))

(assert (=> b!1066407 (= e!676234 (findConcatSeparation!545 lt!360577 lt!360572 (++!2810 Nil!10154 (Cons!10154 (h!15555 s!10566) Nil!10154)) (t!101216 s!10566) s!10566))))

(declare-fun b!1066408 () Bool)

(declare-fun res!476443 () Bool)

(assert (=> b!1066408 (=> (not res!476443) (not e!676233))))

(assert (=> b!1066408 (= res!476443 (matchR!1476 lt!360577 (_1!6623 (get!3659 lt!360649))))))

(declare-fun b!1066402 () Bool)

(assert (=> b!1066402 (= e!676237 (Some!2438 (tuple2!11595 Nil!10154 s!10566)))))

(declare-fun d!301190 () Bool)

(declare-fun e!676236 () Bool)

(assert (=> d!301190 e!676236))

(declare-fun res!476445 () Bool)

(assert (=> d!301190 (=> res!476445 e!676236)))

(assert (=> d!301190 (= res!476445 e!676233)))

(declare-fun res!476441 () Bool)

(assert (=> d!301190 (=> (not res!476441) (not e!676233))))

(assert (=> d!301190 (= res!476441 (isDefined!2081 lt!360649))))

(assert (=> d!301190 (= lt!360649 e!676237)))

(declare-fun c!178852 () Bool)

(assert (=> d!301190 (= c!178852 e!676235)))

(declare-fun res!476444 () Bool)

(assert (=> d!301190 (=> (not res!476444) (not e!676235))))

(assert (=> d!301190 (= res!476444 (matchR!1476 lt!360577 Nil!10154))))

(assert (=> d!301190 (validRegex!1409 lt!360577)))

(assert (=> d!301190 (= (findConcatSeparation!545 lt!360577 lt!360572 Nil!10154 s!10566 s!10566) lt!360649)))

(declare-fun b!1066409 () Bool)

(assert (=> b!1066409 (= e!676233 (= (++!2810 (_1!6623 (get!3659 lt!360649)) (_2!6623 (get!3659 lt!360649))) s!10566))))

(declare-fun b!1066410 () Bool)

(assert (=> b!1066410 (= e!676236 (not (isDefined!2081 lt!360649)))))

(assert (= (and d!301190 res!476444) b!1066406))

(assert (= (and d!301190 c!178852) b!1066402))

(assert (= (and d!301190 (not c!178852)) b!1066403))

(assert (= (and b!1066403 c!178853) b!1066404))

(assert (= (and b!1066403 (not c!178853)) b!1066407))

(assert (= (and d!301190 res!476441) b!1066408))

(assert (= (and b!1066408 res!476443) b!1066405))

(assert (= (and b!1066405 res!476442) b!1066409))

(assert (= (and d!301190 (not res!476445)) b!1066410))

(assert (=> b!1066407 m!1223191))

(assert (=> b!1066407 m!1223191))

(assert (=> b!1066407 m!1223193))

(assert (=> b!1066407 m!1223195))

(assert (=> b!1066407 m!1223191))

(declare-fun m!1223341 () Bool)

(assert (=> b!1066407 m!1223341))

(declare-fun m!1223343 () Bool)

(assert (=> b!1066409 m!1223343))

(declare-fun m!1223345 () Bool)

(assert (=> b!1066409 m!1223345))

(assert (=> b!1066406 m!1223109))

(declare-fun m!1223347 () Bool)

(assert (=> d!301190 m!1223347))

(declare-fun m!1223349 () Bool)

(assert (=> d!301190 m!1223349))

(assert (=> d!301190 m!1223133))

(assert (=> b!1066408 m!1223343))

(declare-fun m!1223351 () Bool)

(assert (=> b!1066408 m!1223351))

(assert (=> b!1066410 m!1223347))

(assert (=> b!1066405 m!1223343))

(declare-fun m!1223353 () Bool)

(assert (=> b!1066405 m!1223353))

(assert (=> b!1066055 d!301190))

(declare-fun e!676240 () Bool)

(assert (=> b!1066059 (= tp!319848 e!676240)))

(declare-fun b!1066423 () Bool)

(declare-fun tp!319881 () Bool)

(assert (=> b!1066423 (= e!676240 tp!319881)))

(declare-fun b!1066421 () Bool)

(assert (=> b!1066421 (= e!676240 tp_is_empty!5523)))

(declare-fun b!1066422 () Bool)

(declare-fun tp!319883 () Bool)

(declare-fun tp!319879 () Bool)

(assert (=> b!1066422 (= e!676240 (and tp!319883 tp!319879))))

(declare-fun b!1066424 () Bool)

(declare-fun tp!319882 () Bool)

(declare-fun tp!319880 () Bool)

(assert (=> b!1066424 (= e!676240 (and tp!319882 tp!319880))))

(assert (= (and b!1066059 (is-ElementMatch!2940 (regOne!6393 r!15766))) b!1066421))

(assert (= (and b!1066059 (is-Concat!4773 (regOne!6393 r!15766))) b!1066422))

(assert (= (and b!1066059 (is-Star!2940 (regOne!6393 r!15766))) b!1066423))

(assert (= (and b!1066059 (is-Union!2940 (regOne!6393 r!15766))) b!1066424))

(declare-fun e!676241 () Bool)

(assert (=> b!1066059 (= tp!319850 e!676241)))

(declare-fun b!1066427 () Bool)

(declare-fun tp!319886 () Bool)

(assert (=> b!1066427 (= e!676241 tp!319886)))

(declare-fun b!1066425 () Bool)

(assert (=> b!1066425 (= e!676241 tp_is_empty!5523)))

(declare-fun b!1066426 () Bool)

(declare-fun tp!319888 () Bool)

(declare-fun tp!319884 () Bool)

(assert (=> b!1066426 (= e!676241 (and tp!319888 tp!319884))))

(declare-fun b!1066428 () Bool)

(declare-fun tp!319887 () Bool)

(declare-fun tp!319885 () Bool)

(assert (=> b!1066428 (= e!676241 (and tp!319887 tp!319885))))

(assert (= (and b!1066059 (is-ElementMatch!2940 (regTwo!6393 r!15766))) b!1066425))

(assert (= (and b!1066059 (is-Concat!4773 (regTwo!6393 r!15766))) b!1066426))

(assert (= (and b!1066059 (is-Star!2940 (regTwo!6393 r!15766))) b!1066427))

(assert (= (and b!1066059 (is-Union!2940 (regTwo!6393 r!15766))) b!1066428))

(declare-fun e!676242 () Bool)

(assert (=> b!1066053 (= tp!319849 e!676242)))

(declare-fun b!1066431 () Bool)

(declare-fun tp!319891 () Bool)

(assert (=> b!1066431 (= e!676242 tp!319891)))

(declare-fun b!1066429 () Bool)

(assert (=> b!1066429 (= e!676242 tp_is_empty!5523)))

(declare-fun b!1066430 () Bool)

(declare-fun tp!319893 () Bool)

(declare-fun tp!319889 () Bool)

(assert (=> b!1066430 (= e!676242 (and tp!319893 tp!319889))))

(declare-fun b!1066432 () Bool)

(declare-fun tp!319892 () Bool)

(declare-fun tp!319890 () Bool)

(assert (=> b!1066432 (= e!676242 (and tp!319892 tp!319890))))

(assert (= (and b!1066053 (is-ElementMatch!2940 (reg!3269 r!15766))) b!1066429))

(assert (= (and b!1066053 (is-Concat!4773 (reg!3269 r!15766))) b!1066430))

(assert (= (and b!1066053 (is-Star!2940 (reg!3269 r!15766))) b!1066431))

(assert (= (and b!1066053 (is-Union!2940 (reg!3269 r!15766))) b!1066432))

(declare-fun e!676243 () Bool)

(assert (=> b!1066057 (= tp!319845 e!676243)))

(declare-fun b!1066435 () Bool)

(declare-fun tp!319896 () Bool)

(assert (=> b!1066435 (= e!676243 tp!319896)))

(declare-fun b!1066433 () Bool)

(assert (=> b!1066433 (= e!676243 tp_is_empty!5523)))

(declare-fun b!1066434 () Bool)

(declare-fun tp!319898 () Bool)

(declare-fun tp!319894 () Bool)

(assert (=> b!1066434 (= e!676243 (and tp!319898 tp!319894))))

(declare-fun b!1066436 () Bool)

(declare-fun tp!319897 () Bool)

(declare-fun tp!319895 () Bool)

(assert (=> b!1066436 (= e!676243 (and tp!319897 tp!319895))))

(assert (= (and b!1066057 (is-ElementMatch!2940 (regOne!6392 r!15766))) b!1066433))

(assert (= (and b!1066057 (is-Concat!4773 (regOne!6392 r!15766))) b!1066434))

(assert (= (and b!1066057 (is-Star!2940 (regOne!6392 r!15766))) b!1066435))

(assert (= (and b!1066057 (is-Union!2940 (regOne!6392 r!15766))) b!1066436))

(declare-fun e!676244 () Bool)

(assert (=> b!1066057 (= tp!319846 e!676244)))

(declare-fun b!1066439 () Bool)

(declare-fun tp!319901 () Bool)

(assert (=> b!1066439 (= e!676244 tp!319901)))

(declare-fun b!1066437 () Bool)

(assert (=> b!1066437 (= e!676244 tp_is_empty!5523)))

(declare-fun b!1066438 () Bool)

(declare-fun tp!319903 () Bool)

(declare-fun tp!319899 () Bool)

(assert (=> b!1066438 (= e!676244 (and tp!319903 tp!319899))))

(declare-fun b!1066440 () Bool)

(declare-fun tp!319902 () Bool)

(declare-fun tp!319900 () Bool)

(assert (=> b!1066440 (= e!676244 (and tp!319902 tp!319900))))

(assert (= (and b!1066057 (is-ElementMatch!2940 (regTwo!6392 r!15766))) b!1066437))

(assert (= (and b!1066057 (is-Concat!4773 (regTwo!6392 r!15766))) b!1066438))

(assert (= (and b!1066057 (is-Star!2940 (regTwo!6392 r!15766))) b!1066439))

(assert (= (and b!1066057 (is-Union!2940 (regTwo!6392 r!15766))) b!1066440))

(declare-fun b!1066445 () Bool)

(declare-fun e!676247 () Bool)

(declare-fun tp!319906 () Bool)

(assert (=> b!1066445 (= e!676247 (and tp_is_empty!5523 tp!319906))))

(assert (=> b!1066060 (= tp!319847 e!676247)))

(assert (= (and b!1066060 (is-Cons!10154 (t!101216 s!10566))) b!1066445))

(push 1)

(assert (not b!1066432))

(assert (not b!1066430))

(assert (not bm!76964))

(assert (not b!1066375))

(assert (not b!1066431))

(assert (not b!1066344))

(assert (not b!1066318))

(assert (not b!1066266))

(assert (not bm!76975))

(assert (not d!301182))

(assert (not b!1066426))

(assert (not b!1066387))

(assert (not b!1066436))

(assert (not b!1066435))

(assert (not d!301190))

(assert (not bm!76952))

(assert (not bm!76959))

(assert (not bm!76977))

(assert (not b!1066427))

(assert (not b!1066323))

(assert (not d!301152))

(assert (not b!1066341))

(assert (not d!301188))

(assert (not b!1066395))

(assert (not d!301154))

(assert (not b!1066428))

(assert (not d!301142))

(assert (not d!301158))

(assert (not b!1066336))

(assert (not b!1066405))

(assert (not d!301164))

(assert (not b!1066408))

(assert (not d!301136))

(assert (not d!301146))

(assert (not d!301174))

(assert (not d!301138))

(assert (not b!1066438))

(assert (not b!1066140))

(assert (not bm!76949))

(assert (not b!1066407))

(assert (not b!1066136))

(assert (not b!1066265))

(assert (not b!1066406))

(assert (not b!1066422))

(assert (not bm!76965))

(assert (not bm!76976))

(assert (not bm!76966))

(assert (not b!1066258))

(assert (not d!301148))

(assert (not b!1066423))

(assert (not b!1066141))

(assert (not b!1066392))

(assert (not b!1066261))

(assert (not bm!76980))

(assert (not b!1066269))

(assert tp_is_empty!5523)

(assert (not b!1066137))

(assert (not b!1066409))

(assert (not d!301166))

(assert (not b!1066333))

(assert (not b!1066267))

(assert (not bm!76973))

(assert (not b!1066201))

(assert (not b!1066342))

(assert (not d!301178))

(assert (not d!301176))

(assert (not b!1066434))

(assert (not bm!76978))

(assert (not b!1066439))

(assert (not b!1066424))

(assert (not b!1066445))

(assert (not b!1066138))

(assert (not b!1066139))

(assert (not b!1066440))

(assert (not b!1066340))

(assert (not b!1066410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

