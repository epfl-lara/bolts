; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88112 () Bool)

(assert start!88112)

(declare-fun b!1004016 () Bool)

(assert (=> b!1004016 true))

(assert (=> b!1004016 true))

(assert (=> b!1004016 true))

(declare-fun lambda!35664 () Int)

(declare-fun lambda!35663 () Int)

(assert (=> b!1004016 (not (= lambda!35664 lambda!35663))))

(assert (=> b!1004016 true))

(assert (=> b!1004016 true))

(assert (=> b!1004016 true))

(declare-fun e!643303 () Bool)

(declare-fun e!643305 () Bool)

(assert (=> b!1004016 (= e!643303 e!643305)))

(declare-fun res!453224 () Bool)

(assert (=> b!1004016 (=> res!453224 e!643305)))

(declare-datatypes ((C!6146 0))(
  ( (C!6147 (val!3321 Int)) )
))
(declare-datatypes ((List!10018 0))(
  ( (Nil!10002) (Cons!10002 (h!15403 C!6146) (t!101064 List!10018)) )
))
(declare-fun s!10566 () List!10018)

(declare-fun isEmpty!6342 (List!10018) Bool)

(assert (=> b!1004016 (= res!453224 (isEmpty!6342 s!10566))))

(declare-fun Exists!521 (Int) Bool)

(assert (=> b!1004016 (= (Exists!521 lambda!35663) (Exists!521 lambda!35664))))

(declare-datatypes ((Unit!15235 0))(
  ( (Unit!15236) )
))
(declare-fun lt!352432 () Unit!15235)

(declare-datatypes ((Regex!2788 0))(
  ( (ElementMatch!2788 (c!165393 C!6146)) (Concat!4621 (regOne!6088 Regex!2788) (regTwo!6088 Regex!2788)) (EmptyExpr!2788) (Star!2788 (reg!3117 Regex!2788)) (EmptyLang!2788) (Union!2788 (regOne!6089 Regex!2788) (regTwo!6089 Regex!2788)) )
))
(declare-fun r!15766 () Regex!2788)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!159 (Regex!2788 List!10018) Unit!15235)

(assert (=> b!1004016 (= lt!352432 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!159 (reg!3117 r!15766) s!10566))))

(declare-fun lt!352438 () Bool)

(assert (=> b!1004016 (= lt!352438 (Exists!521 lambda!35663))))

(declare-datatypes ((tuple2!11370 0))(
  ( (tuple2!11371 (_1!6511 List!10018) (_2!6511 List!10018)) )
))
(declare-datatypes ((Option!2327 0))(
  ( (None!2326) (Some!2326 (v!19743 tuple2!11370)) )
))
(declare-fun lt!352434 () Option!2327)

(declare-fun isDefined!1969 (Option!2327) Bool)

(assert (=> b!1004016 (= lt!352438 (isDefined!1969 lt!352434))))

(declare-fun lt!352437 () Regex!2788)

(declare-fun findConcatSeparation!433 (Regex!2788 Regex!2788 List!10018 List!10018 List!10018) Option!2327)

(assert (=> b!1004016 (= lt!352434 (findConcatSeparation!433 (reg!3117 r!15766) lt!352437 Nil!10002 s!10566 s!10566))))

(declare-fun lt!352433 () Unit!15235)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!433 (Regex!2788 Regex!2788 List!10018) Unit!15235)

(assert (=> b!1004016 (= lt!352433 (lemmaFindConcatSeparationEquivalentToExists!433 (reg!3117 r!15766) lt!352437 s!10566))))

(assert (=> b!1004016 (= lt!352437 (Star!2788 (reg!3117 r!15766)))))

(declare-fun b!1004017 () Bool)

(declare-fun e!643304 () Bool)

(assert (=> b!1004017 (= e!643304 (not e!643303))))

(declare-fun res!453223 () Bool)

(assert (=> b!1004017 (=> res!453223 e!643303)))

(declare-fun lt!352439 () Bool)

(assert (=> b!1004017 (= res!453223 (or (not lt!352439) (and (is-Concat!4621 r!15766) (is-EmptyExpr!2788 (regOne!6088 r!15766))) (and (is-Concat!4621 r!15766) (is-EmptyExpr!2788 (regTwo!6088 r!15766))) (is-Concat!4621 r!15766) (is-Union!2788 r!15766) (not (is-Star!2788 r!15766))))))

(declare-fun matchRSpec!587 (Regex!2788 List!10018) Bool)

(assert (=> b!1004017 (= lt!352439 (matchRSpec!587 r!15766 s!10566))))

(declare-fun matchR!1324 (Regex!2788 List!10018) Bool)

(assert (=> b!1004017 (= lt!352439 (matchR!1324 r!15766 s!10566))))

(declare-fun lt!352436 () Unit!15235)

(declare-fun mainMatchTheorem!587 (Regex!2788 List!10018) Unit!15235)

(assert (=> b!1004017 (= lt!352436 (mainMatchTheorem!587 r!15766 s!10566))))

(declare-fun b!1004018 () Bool)

(declare-fun e!643307 () Bool)

(declare-fun validRegex!1257 (Regex!2788) Bool)

(assert (=> b!1004018 (= e!643307 (validRegex!1257 (reg!3117 r!15766)))))

(declare-fun b!1004019 () Bool)

(declare-fun res!453225 () Bool)

(assert (=> b!1004019 (=> res!453225 e!643307)))

(declare-fun lt!352435 () tuple2!11370)

(assert (=> b!1004019 (= res!453225 (not (matchR!1324 lt!352437 (_2!6511 lt!352435))))))

(declare-fun b!1004020 () Bool)

(declare-fun e!643302 () Bool)

(declare-fun tp!305650 () Bool)

(declare-fun tp!305654 () Bool)

(assert (=> b!1004020 (= e!643302 (and tp!305650 tp!305654))))

(declare-fun b!1004021 () Bool)

(declare-fun res!453226 () Bool)

(assert (=> b!1004021 (=> res!453226 e!643305)))

(assert (=> b!1004021 (= res!453226 (not lt!352438))))

(declare-fun b!1004022 () Bool)

(assert (=> b!1004022 (= e!643305 e!643307)))

(declare-fun res!453227 () Bool)

(assert (=> b!1004022 (=> res!453227 e!643307)))

(assert (=> b!1004022 (= res!453227 (not (matchR!1324 (reg!3117 r!15766) (_1!6511 lt!352435))))))

(declare-fun get!3497 (Option!2327) tuple2!11370)

(assert (=> b!1004022 (= lt!352435 (get!3497 lt!352434))))

(declare-fun b!1004023 () Bool)

(declare-fun tp_is_empty!5219 () Bool)

(assert (=> b!1004023 (= e!643302 tp_is_empty!5219)))

(declare-fun b!1004024 () Bool)

(declare-fun tp!305651 () Bool)

(assert (=> b!1004024 (= e!643302 tp!305651)))

(declare-fun res!453228 () Bool)

(assert (=> start!88112 (=> (not res!453228) (not e!643304))))

(assert (=> start!88112 (= res!453228 (validRegex!1257 r!15766))))

(assert (=> start!88112 e!643304))

(assert (=> start!88112 e!643302))

(declare-fun e!643306 () Bool)

(assert (=> start!88112 e!643306))

(declare-fun b!1004025 () Bool)

(declare-fun tp!305649 () Bool)

(assert (=> b!1004025 (= e!643306 (and tp_is_empty!5219 tp!305649))))

(declare-fun b!1004026 () Bool)

(declare-fun tp!305652 () Bool)

(declare-fun tp!305653 () Bool)

(assert (=> b!1004026 (= e!643302 (and tp!305652 tp!305653))))

(assert (= (and start!88112 res!453228) b!1004017))

(assert (= (and b!1004017 (not res!453223)) b!1004016))

(assert (= (and b!1004016 (not res!453224)) b!1004021))

(assert (= (and b!1004021 (not res!453226)) b!1004022))

(assert (= (and b!1004022 (not res!453227)) b!1004019))

(assert (= (and b!1004019 (not res!453225)) b!1004018))

(assert (= (and start!88112 (is-ElementMatch!2788 r!15766)) b!1004023))

(assert (= (and start!88112 (is-Concat!4621 r!15766)) b!1004026))

(assert (= (and start!88112 (is-Star!2788 r!15766)) b!1004024))

(assert (= (and start!88112 (is-Union!2788 r!15766)) b!1004020))

(assert (= (and start!88112 (is-Cons!10002 s!10566)) b!1004025))

(declare-fun m!1191141 () Bool)

(assert (=> b!1004016 m!1191141))

(declare-fun m!1191143 () Bool)

(assert (=> b!1004016 m!1191143))

(declare-fun m!1191145 () Bool)

(assert (=> b!1004016 m!1191145))

(declare-fun m!1191147 () Bool)

(assert (=> b!1004016 m!1191147))

(declare-fun m!1191149 () Bool)

(assert (=> b!1004016 m!1191149))

(declare-fun m!1191151 () Bool)

(assert (=> b!1004016 m!1191151))

(assert (=> b!1004016 m!1191141))

(declare-fun m!1191153 () Bool)

(assert (=> b!1004016 m!1191153))

(declare-fun m!1191155 () Bool)

(assert (=> b!1004017 m!1191155))

(declare-fun m!1191157 () Bool)

(assert (=> b!1004017 m!1191157))

(declare-fun m!1191159 () Bool)

(assert (=> b!1004017 m!1191159))

(declare-fun m!1191161 () Bool)

(assert (=> b!1004019 m!1191161))

(declare-fun m!1191163 () Bool)

(assert (=> b!1004022 m!1191163))

(declare-fun m!1191165 () Bool)

(assert (=> b!1004022 m!1191165))

(declare-fun m!1191167 () Bool)

(assert (=> start!88112 m!1191167))

(declare-fun m!1191169 () Bool)

(assert (=> b!1004018 m!1191169))

(push 1)

(assert (not b!1004019))

(assert (not b!1004025))

(assert (not b!1004020))

(assert (not b!1004018))

(assert (not b!1004016))

(assert tp_is_empty!5219)

(assert (not b!1004017))

(assert (not b!1004022))

(assert (not start!88112))

(assert (not b!1004026))

(assert (not b!1004024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66931 () Bool)

(declare-fun call!66938 () Bool)

(declare-fun c!165399 () Bool)

(assert (=> bm!66931 (= call!66938 (validRegex!1257 (ite c!165399 (regTwo!6089 (reg!3117 r!15766)) (regTwo!6088 (reg!3117 r!15766)))))))

(declare-fun b!1004100 () Bool)

(declare-fun res!453272 () Bool)

(declare-fun e!643349 () Bool)

(assert (=> b!1004100 (=> (not res!453272) (not e!643349))))

(declare-fun call!66937 () Bool)

(assert (=> b!1004100 (= res!453272 call!66937)))

(declare-fun e!643352 () Bool)

(assert (=> b!1004100 (= e!643352 e!643349)))

(declare-fun d!291578 () Bool)

(declare-fun res!453275 () Bool)

(declare-fun e!643351 () Bool)

(assert (=> d!291578 (=> res!453275 e!643351)))

(assert (=> d!291578 (= res!453275 (is-ElementMatch!2788 (reg!3117 r!15766)))))

(assert (=> d!291578 (= (validRegex!1257 (reg!3117 r!15766)) e!643351)))

(declare-fun b!1004101 () Bool)

(declare-fun e!643347 () Bool)

(declare-fun e!643346 () Bool)

(assert (=> b!1004101 (= e!643347 e!643346)))

(declare-fun res!453271 () Bool)

(declare-fun nullable!900 (Regex!2788) Bool)

(assert (=> b!1004101 (= res!453271 (not (nullable!900 (reg!3117 (reg!3117 r!15766)))))))

(assert (=> b!1004101 (=> (not res!453271) (not e!643346))))

(declare-fun b!1004102 () Bool)

(declare-fun e!643350 () Bool)

(declare-fun e!643348 () Bool)

(assert (=> b!1004102 (= e!643350 e!643348)))

(declare-fun res!453273 () Bool)

(assert (=> b!1004102 (=> (not res!453273) (not e!643348))))

(assert (=> b!1004102 (= res!453273 call!66937)))

(declare-fun b!1004103 () Bool)

(assert (=> b!1004103 (= e!643349 call!66938)))

(declare-fun b!1004104 () Bool)

(assert (=> b!1004104 (= e!643347 e!643352)))

(assert (=> b!1004104 (= c!165399 (is-Union!2788 (reg!3117 r!15766)))))

(declare-fun b!1004105 () Bool)

(declare-fun call!66936 () Bool)

(assert (=> b!1004105 (= e!643346 call!66936)))

(declare-fun bm!66932 () Bool)

(assert (=> bm!66932 (= call!66937 call!66936)))

(declare-fun bm!66933 () Bool)

(declare-fun c!165400 () Bool)

(assert (=> bm!66933 (= call!66936 (validRegex!1257 (ite c!165400 (reg!3117 (reg!3117 r!15766)) (ite c!165399 (regOne!6089 (reg!3117 r!15766)) (regOne!6088 (reg!3117 r!15766))))))))

(declare-fun b!1004106 () Bool)

(assert (=> b!1004106 (= e!643348 call!66938)))

(declare-fun b!1004107 () Bool)

(assert (=> b!1004107 (= e!643351 e!643347)))

(assert (=> b!1004107 (= c!165400 (is-Star!2788 (reg!3117 r!15766)))))

(declare-fun b!1004108 () Bool)

(declare-fun res!453274 () Bool)

(assert (=> b!1004108 (=> res!453274 e!643350)))

(assert (=> b!1004108 (= res!453274 (not (is-Concat!4621 (reg!3117 r!15766))))))

(assert (=> b!1004108 (= e!643352 e!643350)))

(assert (= (and d!291578 (not res!453275)) b!1004107))

(assert (= (and b!1004107 c!165400) b!1004101))

(assert (= (and b!1004107 (not c!165400)) b!1004104))

(assert (= (and b!1004101 res!453271) b!1004105))

(assert (= (and b!1004104 c!165399) b!1004100))

(assert (= (and b!1004104 (not c!165399)) b!1004108))

(assert (= (and b!1004100 res!453272) b!1004103))

(assert (= (and b!1004108 (not res!453274)) b!1004102))

(assert (= (and b!1004102 res!453273) b!1004106))

(assert (= (or b!1004103 b!1004106) bm!66931))

(assert (= (or b!1004100 b!1004102) bm!66932))

(assert (= (or b!1004105 bm!66932) bm!66933))

(declare-fun m!1191201 () Bool)

(assert (=> bm!66931 m!1191201))

(declare-fun m!1191203 () Bool)

(assert (=> b!1004101 m!1191203))

(declare-fun m!1191205 () Bool)

(assert (=> bm!66933 m!1191205))

(assert (=> b!1004018 d!291578))

(declare-fun b!1004127 () Bool)

(declare-fun e!643364 () Bool)

(declare-fun lt!352470 () Option!2327)

(assert (=> b!1004127 (= e!643364 (not (isDefined!1969 lt!352470)))))

(declare-fun b!1004128 () Bool)

(declare-fun e!643367 () Option!2327)

(assert (=> b!1004128 (= e!643367 (Some!2326 (tuple2!11371 Nil!10002 s!10566)))))

(declare-fun b!1004129 () Bool)

(declare-fun e!643366 () Bool)

(assert (=> b!1004129 (= e!643366 (matchR!1324 lt!352437 s!10566))))

(declare-fun d!291580 () Bool)

(assert (=> d!291580 e!643364))

(declare-fun res!453287 () Bool)

(assert (=> d!291580 (=> res!453287 e!643364)))

(declare-fun e!643365 () Bool)

(assert (=> d!291580 (= res!453287 e!643365)))

(declare-fun res!453289 () Bool)

(assert (=> d!291580 (=> (not res!453289) (not e!643365))))

(assert (=> d!291580 (= res!453289 (isDefined!1969 lt!352470))))

(assert (=> d!291580 (= lt!352470 e!643367)))

(declare-fun c!165405 () Bool)

(assert (=> d!291580 (= c!165405 e!643366)))

(declare-fun res!453290 () Bool)

(assert (=> d!291580 (=> (not res!453290) (not e!643366))))

(assert (=> d!291580 (= res!453290 (matchR!1324 (reg!3117 r!15766) Nil!10002))))

(assert (=> d!291580 (validRegex!1257 (reg!3117 r!15766))))

(assert (=> d!291580 (= (findConcatSeparation!433 (reg!3117 r!15766) lt!352437 Nil!10002 s!10566 s!10566) lt!352470)))

(declare-fun b!1004130 () Bool)

(declare-fun e!643363 () Option!2327)

(assert (=> b!1004130 (= e!643367 e!643363)))

(declare-fun c!165406 () Bool)

(assert (=> b!1004130 (= c!165406 (is-Nil!10002 s!10566))))

(declare-fun b!1004131 () Bool)

(declare-fun res!453286 () Bool)

(assert (=> b!1004131 (=> (not res!453286) (not e!643365))))

(assert (=> b!1004131 (= res!453286 (matchR!1324 lt!352437 (_2!6511 (get!3497 lt!352470))))))

(declare-fun b!1004132 () Bool)

(assert (=> b!1004132 (= e!643363 None!2326)))

(declare-fun b!1004133 () Bool)

(declare-fun ++!2721 (List!10018 List!10018) List!10018)

(assert (=> b!1004133 (= e!643365 (= (++!2721 (_1!6511 (get!3497 lt!352470)) (_2!6511 (get!3497 lt!352470))) s!10566))))

(declare-fun b!1004134 () Bool)

(declare-fun res!453288 () Bool)

(assert (=> b!1004134 (=> (not res!453288) (not e!643365))))

(assert (=> b!1004134 (= res!453288 (matchR!1324 (reg!3117 r!15766) (_1!6511 (get!3497 lt!352470))))))

(declare-fun b!1004135 () Bool)

(declare-fun lt!352472 () Unit!15235)

(declare-fun lt!352471 () Unit!15235)

(assert (=> b!1004135 (= lt!352472 lt!352471)))

(assert (=> b!1004135 (= (++!2721 (++!2721 Nil!10002 (Cons!10002 (h!15403 s!10566) Nil!10002)) (t!101064 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!321 (List!10018 C!6146 List!10018 List!10018) Unit!15235)

(assert (=> b!1004135 (= lt!352471 (lemmaMoveElementToOtherListKeepsConcatEq!321 Nil!10002 (h!15403 s!10566) (t!101064 s!10566) s!10566))))

(assert (=> b!1004135 (= e!643363 (findConcatSeparation!433 (reg!3117 r!15766) lt!352437 (++!2721 Nil!10002 (Cons!10002 (h!15403 s!10566) Nil!10002)) (t!101064 s!10566) s!10566))))

(assert (= (and d!291580 res!453290) b!1004129))

(assert (= (and d!291580 c!165405) b!1004128))

(assert (= (and d!291580 (not c!165405)) b!1004130))

(assert (= (and b!1004130 c!165406) b!1004132))

(assert (= (and b!1004130 (not c!165406)) b!1004135))

(assert (= (and d!291580 res!453289) b!1004134))

(assert (= (and b!1004134 res!453288) b!1004131))

(assert (= (and b!1004131 res!453286) b!1004133))

(assert (= (and d!291580 (not res!453287)) b!1004127))

(declare-fun m!1191207 () Bool)

(assert (=> b!1004135 m!1191207))

(assert (=> b!1004135 m!1191207))

(declare-fun m!1191209 () Bool)

(assert (=> b!1004135 m!1191209))

(declare-fun m!1191211 () Bool)

(assert (=> b!1004135 m!1191211))

(assert (=> b!1004135 m!1191207))

(declare-fun m!1191213 () Bool)

(assert (=> b!1004135 m!1191213))

(declare-fun m!1191215 () Bool)

(assert (=> b!1004134 m!1191215))

(declare-fun m!1191217 () Bool)

(assert (=> b!1004134 m!1191217))

(assert (=> b!1004133 m!1191215))

(declare-fun m!1191219 () Bool)

(assert (=> b!1004133 m!1191219))

(declare-fun m!1191221 () Bool)

(assert (=> d!291580 m!1191221))

(declare-fun m!1191223 () Bool)

(assert (=> d!291580 m!1191223))

(assert (=> d!291580 m!1191169))

(assert (=> b!1004131 m!1191215))

(declare-fun m!1191225 () Bool)

(assert (=> b!1004131 m!1191225))

(assert (=> b!1004127 m!1191221))

(declare-fun m!1191227 () Bool)

(assert (=> b!1004129 m!1191227))

(assert (=> b!1004016 d!291580))

(declare-fun d!291584 () Bool)

(assert (=> d!291584 (= (isEmpty!6342 s!10566) (is-Nil!10002 s!10566))))

(assert (=> b!1004016 d!291584))

(declare-fun d!291586 () Bool)

(declare-fun choose!6370 (Int) Bool)

(assert (=> d!291586 (= (Exists!521 lambda!35663) (choose!6370 lambda!35663))))

(declare-fun bs!245202 () Bool)

(assert (= bs!245202 d!291586))

(declare-fun m!1191229 () Bool)

(assert (=> bs!245202 m!1191229))

(assert (=> b!1004016 d!291586))

(declare-fun bs!245205 () Bool)

(declare-fun d!291588 () Bool)

(assert (= bs!245205 (and d!291588 b!1004016)))

(declare-fun lambda!35680 () Int)

(assert (=> bs!245205 (= (= (Star!2788 (reg!3117 r!15766)) lt!352437) (= lambda!35680 lambda!35663))))

(assert (=> bs!245205 (not (= lambda!35680 lambda!35664))))

(assert (=> d!291588 true))

(assert (=> d!291588 true))

(declare-fun lambda!35681 () Int)

(assert (=> bs!245205 (not (= lambda!35681 lambda!35663))))

(assert (=> bs!245205 (= (= (Star!2788 (reg!3117 r!15766)) lt!352437) (= lambda!35681 lambda!35664))))

(declare-fun bs!245206 () Bool)

(assert (= bs!245206 d!291588))

(assert (=> bs!245206 (not (= lambda!35681 lambda!35680))))

(assert (=> d!291588 true))

(assert (=> d!291588 true))

(assert (=> d!291588 (= (Exists!521 lambda!35680) (Exists!521 lambda!35681))))

(declare-fun lt!352478 () Unit!15235)

(declare-fun choose!6371 (Regex!2788 List!10018) Unit!15235)

(assert (=> d!291588 (= lt!352478 (choose!6371 (reg!3117 r!15766) s!10566))))

(assert (=> d!291588 (validRegex!1257 (reg!3117 r!15766))))

(assert (=> d!291588 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!159 (reg!3117 r!15766) s!10566) lt!352478)))

(declare-fun m!1191237 () Bool)

(assert (=> bs!245206 m!1191237))

(declare-fun m!1191239 () Bool)

(assert (=> bs!245206 m!1191239))

(declare-fun m!1191241 () Bool)

(assert (=> bs!245206 m!1191241))

(assert (=> bs!245206 m!1191169))

(assert (=> b!1004016 d!291588))

(declare-fun d!291592 () Bool)

(declare-fun isEmpty!6344 (Option!2327) Bool)

(assert (=> d!291592 (= (isDefined!1969 lt!352434) (not (isEmpty!6344 lt!352434)))))

(declare-fun bs!245207 () Bool)

(assert (= bs!245207 d!291592))

(declare-fun m!1191243 () Bool)

(assert (=> bs!245207 m!1191243))

(assert (=> b!1004016 d!291592))

(declare-fun bs!245208 () Bool)

(declare-fun d!291594 () Bool)

(assert (= bs!245208 (and d!291594 b!1004016)))

(declare-fun lambda!35684 () Int)

(assert (=> bs!245208 (= lambda!35684 lambda!35663)))

(assert (=> bs!245208 (not (= lambda!35684 lambda!35664))))

(declare-fun bs!245209 () Bool)

(assert (= bs!245209 (and d!291594 d!291588)))

(assert (=> bs!245209 (= (= lt!352437 (Star!2788 (reg!3117 r!15766))) (= lambda!35684 lambda!35680))))

(assert (=> bs!245209 (not (= lambda!35684 lambda!35681))))

(assert (=> d!291594 true))

(assert (=> d!291594 true))

(assert (=> d!291594 true))

(assert (=> d!291594 (= (isDefined!1969 (findConcatSeparation!433 (reg!3117 r!15766) lt!352437 Nil!10002 s!10566 s!10566)) (Exists!521 lambda!35684))))

(declare-fun lt!352481 () Unit!15235)

(declare-fun choose!6372 (Regex!2788 Regex!2788 List!10018) Unit!15235)

(assert (=> d!291594 (= lt!352481 (choose!6372 (reg!3117 r!15766) lt!352437 s!10566))))

(assert (=> d!291594 (validRegex!1257 (reg!3117 r!15766))))

(assert (=> d!291594 (= (lemmaFindConcatSeparationEquivalentToExists!433 (reg!3117 r!15766) lt!352437 s!10566) lt!352481)))

(declare-fun bs!245210 () Bool)

(assert (= bs!245210 d!291594))

(declare-fun m!1191245 () Bool)

(assert (=> bs!245210 m!1191245))

(assert (=> bs!245210 m!1191169))

(declare-fun m!1191247 () Bool)

(assert (=> bs!245210 m!1191247))

(assert (=> bs!245210 m!1191153))

(assert (=> bs!245210 m!1191153))

(declare-fun m!1191249 () Bool)

(assert (=> bs!245210 m!1191249))

(assert (=> b!1004016 d!291594))

(declare-fun d!291596 () Bool)

(assert (=> d!291596 (= (Exists!521 lambda!35664) (choose!6370 lambda!35664))))

(declare-fun bs!245211 () Bool)

(assert (= bs!245211 d!291596))

(declare-fun m!1191251 () Bool)

(assert (=> bs!245211 m!1191251))

(assert (=> b!1004016 d!291596))

(declare-fun b!1004186 () Bool)

(declare-fun res!453331 () Bool)

(declare-fun e!643398 () Bool)

(assert (=> b!1004186 (=> res!453331 e!643398)))

(declare-fun e!643395 () Bool)

(assert (=> b!1004186 (= res!453331 e!643395)))

(declare-fun res!453330 () Bool)

(assert (=> b!1004186 (=> (not res!453330) (not e!643395))))

(declare-fun lt!352486 () Bool)

(assert (=> b!1004186 (= res!453330 lt!352486)))

(declare-fun b!1004187 () Bool)

(declare-fun e!643397 () Bool)

(assert (=> b!1004187 (= e!643397 (nullable!900 (reg!3117 r!15766)))))

(declare-fun d!291598 () Bool)

(declare-fun e!643394 () Bool)

(assert (=> d!291598 e!643394))

(declare-fun c!165415 () Bool)

(assert (=> d!291598 (= c!165415 (is-EmptyExpr!2788 (reg!3117 r!15766)))))

(assert (=> d!291598 (= lt!352486 e!643397)))

(declare-fun c!165417 () Bool)

(assert (=> d!291598 (= c!165417 (isEmpty!6342 (_1!6511 lt!352435)))))

(assert (=> d!291598 (validRegex!1257 (reg!3117 r!15766))))

(assert (=> d!291598 (= (matchR!1324 (reg!3117 r!15766) (_1!6511 lt!352435)) lt!352486)))

(declare-fun b!1004188 () Bool)

(declare-fun derivativeStep!704 (Regex!2788 C!6146) Regex!2788)

(declare-fun head!1858 (List!10018) C!6146)

(declare-fun tail!1420 (List!10018) List!10018)

(assert (=> b!1004188 (= e!643397 (matchR!1324 (derivativeStep!704 (reg!3117 r!15766) (head!1858 (_1!6511 lt!352435))) (tail!1420 (_1!6511 lt!352435))))))

(declare-fun b!1004189 () Bool)

(declare-fun e!643396 () Bool)

(assert (=> b!1004189 (= e!643394 e!643396)))

(declare-fun c!165416 () Bool)

(assert (=> b!1004189 (= c!165416 (is-EmptyLang!2788 (reg!3117 r!15766)))))

(declare-fun bm!66936 () Bool)

(declare-fun call!66941 () Bool)

(assert (=> bm!66936 (= call!66941 (isEmpty!6342 (_1!6511 lt!352435)))))

(declare-fun b!1004190 () Bool)

(assert (=> b!1004190 (= e!643395 (= (head!1858 (_1!6511 lt!352435)) (c!165393 (reg!3117 r!15766))))))

(declare-fun b!1004191 () Bool)

(declare-fun e!643393 () Bool)

(assert (=> b!1004191 (= e!643393 (not (= (head!1858 (_1!6511 lt!352435)) (c!165393 (reg!3117 r!15766)))))))

(declare-fun b!1004192 () Bool)

(assert (=> b!1004192 (= e!643396 (not lt!352486))))

(declare-fun b!1004193 () Bool)

(declare-fun e!643392 () Bool)

(assert (=> b!1004193 (= e!643392 e!643393)))

(declare-fun res!453328 () Bool)

(assert (=> b!1004193 (=> res!453328 e!643393)))

(assert (=> b!1004193 (= res!453328 call!66941)))

(declare-fun b!1004194 () Bool)

(declare-fun res!453332 () Bool)

(assert (=> b!1004194 (=> res!453332 e!643398)))

(assert (=> b!1004194 (= res!453332 (not (is-ElementMatch!2788 (reg!3117 r!15766))))))

(assert (=> b!1004194 (= e!643396 e!643398)))

(declare-fun b!1004195 () Bool)

(declare-fun res!453327 () Bool)

(assert (=> b!1004195 (=> (not res!453327) (not e!643395))))

(assert (=> b!1004195 (= res!453327 (isEmpty!6342 (tail!1420 (_1!6511 lt!352435))))))

(declare-fun b!1004196 () Bool)

(declare-fun res!453326 () Bool)

(assert (=> b!1004196 (=> (not res!453326) (not e!643395))))

(assert (=> b!1004196 (= res!453326 (not call!66941))))

(declare-fun b!1004197 () Bool)

(declare-fun res!453325 () Bool)

(assert (=> b!1004197 (=> res!453325 e!643393)))

(assert (=> b!1004197 (= res!453325 (not (isEmpty!6342 (tail!1420 (_1!6511 lt!352435)))))))

(declare-fun b!1004198 () Bool)

(assert (=> b!1004198 (= e!643398 e!643392)))

(declare-fun res!453329 () Bool)

(assert (=> b!1004198 (=> (not res!453329) (not e!643392))))

(assert (=> b!1004198 (= res!453329 (not lt!352486))))

(declare-fun b!1004199 () Bool)

(assert (=> b!1004199 (= e!643394 (= lt!352486 call!66941))))

(assert (= (and d!291598 c!165417) b!1004187))

(assert (= (and d!291598 (not c!165417)) b!1004188))

(assert (= (and d!291598 c!165415) b!1004199))

(assert (= (and d!291598 (not c!165415)) b!1004189))

(assert (= (and b!1004189 c!165416) b!1004192))

(assert (= (and b!1004189 (not c!165416)) b!1004194))

(assert (= (and b!1004194 (not res!453332)) b!1004186))

(assert (= (and b!1004186 res!453330) b!1004196))

(assert (= (and b!1004196 res!453326) b!1004195))

(assert (= (and b!1004195 res!453327) b!1004190))

(assert (= (and b!1004186 (not res!453331)) b!1004198))

(assert (= (and b!1004198 res!453329) b!1004193))

(assert (= (and b!1004193 (not res!453328)) b!1004197))

(assert (= (and b!1004197 (not res!453325)) b!1004191))

(assert (= (or b!1004199 b!1004193 b!1004196) bm!66936))

(declare-fun m!1191253 () Bool)

(assert (=> bm!66936 m!1191253))

(declare-fun m!1191255 () Bool)

(assert (=> b!1004187 m!1191255))

(assert (=> d!291598 m!1191253))

(assert (=> d!291598 m!1191169))

(declare-fun m!1191257 () Bool)

(assert (=> b!1004197 m!1191257))

(assert (=> b!1004197 m!1191257))

(declare-fun m!1191259 () Bool)

(assert (=> b!1004197 m!1191259))

(declare-fun m!1191261 () Bool)

(assert (=> b!1004188 m!1191261))

(assert (=> b!1004188 m!1191261))

(declare-fun m!1191263 () Bool)

(assert (=> b!1004188 m!1191263))

(assert (=> b!1004188 m!1191257))

(assert (=> b!1004188 m!1191263))

(assert (=> b!1004188 m!1191257))

(declare-fun m!1191265 () Bool)

(assert (=> b!1004188 m!1191265))

(assert (=> b!1004190 m!1191261))

(assert (=> b!1004191 m!1191261))

(assert (=> b!1004195 m!1191257))

(assert (=> b!1004195 m!1191257))

(assert (=> b!1004195 m!1191259))

(assert (=> b!1004022 d!291598))

(declare-fun d!291600 () Bool)

(assert (=> d!291600 (= (get!3497 lt!352434) (v!19743 lt!352434))))

(assert (=> b!1004022 d!291600))

(declare-fun bs!245212 () Bool)

(declare-fun b!1004263 () Bool)

(assert (= bs!245212 (and b!1004263 b!1004016)))

(declare-fun lambda!35689 () Int)

(assert (=> bs!245212 (not (= lambda!35689 lambda!35663))))

(declare-fun bs!245213 () Bool)

(assert (= bs!245213 (and b!1004263 d!291588)))

(assert (=> bs!245213 (= (= r!15766 (Star!2788 (reg!3117 r!15766))) (= lambda!35689 lambda!35681))))

(assert (=> bs!245213 (not (= lambda!35689 lambda!35680))))

(declare-fun bs!245214 () Bool)

(assert (= bs!245214 (and b!1004263 d!291594)))

(assert (=> bs!245214 (not (= lambda!35689 lambda!35684))))

(assert (=> bs!245212 (= (= r!15766 lt!352437) (= lambda!35689 lambda!35664))))

(assert (=> b!1004263 true))

(assert (=> b!1004263 true))

(declare-fun bs!245215 () Bool)

(declare-fun b!1004265 () Bool)

(assert (= bs!245215 (and b!1004265 b!1004016)))

(declare-fun lambda!35690 () Int)

(assert (=> bs!245215 (not (= lambda!35690 lambda!35663))))

(declare-fun bs!245216 () Bool)

(assert (= bs!245216 (and b!1004265 d!291588)))

(assert (=> bs!245216 (not (= lambda!35690 lambda!35681))))

(declare-fun bs!245217 () Bool)

(assert (= bs!245217 (and b!1004265 b!1004263)))

(assert (=> bs!245217 (not (= lambda!35690 lambda!35689))))

(assert (=> bs!245216 (not (= lambda!35690 lambda!35680))))

(declare-fun bs!245218 () Bool)

(assert (= bs!245218 (and b!1004265 d!291594)))

(assert (=> bs!245218 (not (= lambda!35690 lambda!35684))))

(assert (=> bs!245215 (not (= lambda!35690 lambda!35664))))

(assert (=> b!1004265 true))

(assert (=> b!1004265 true))

(declare-fun b!1004255 () Bool)

(declare-fun e!643433 () Bool)

(declare-fun e!643435 () Bool)

(assert (=> b!1004255 (= e!643433 e!643435)))

(declare-fun res!453366 () Bool)

(assert (=> b!1004255 (= res!453366 (matchRSpec!587 (regOne!6089 r!15766) s!10566))))

(assert (=> b!1004255 (=> res!453366 e!643435)))

(declare-fun call!66947 () Bool)

(declare-fun c!165431 () Bool)

(declare-fun bm!66941 () Bool)

(assert (=> bm!66941 (= call!66947 (Exists!521 (ite c!165431 lambda!35689 lambda!35690)))))

(declare-fun b!1004256 () Bool)

(declare-fun e!643436 () Bool)

(assert (=> b!1004256 (= e!643436 (= s!10566 (Cons!10002 (c!165393 r!15766) Nil!10002)))))

(declare-fun b!1004257 () Bool)

(declare-fun e!643430 () Bool)

(declare-fun e!643431 () Bool)

(assert (=> b!1004257 (= e!643430 e!643431)))

(declare-fun res!453364 () Bool)

(assert (=> b!1004257 (= res!453364 (not (is-EmptyLang!2788 r!15766)))))

(assert (=> b!1004257 (=> (not res!453364) (not e!643431))))

(declare-fun b!1004258 () Bool)

(declare-fun c!165433 () Bool)

(assert (=> b!1004258 (= c!165433 (is-ElementMatch!2788 r!15766))))

(assert (=> b!1004258 (= e!643431 e!643436)))

(declare-fun bm!66942 () Bool)

(declare-fun call!66946 () Bool)

(assert (=> bm!66942 (= call!66946 (isEmpty!6342 s!10566))))

(declare-fun b!1004259 () Bool)

(declare-fun e!643434 () Bool)

(assert (=> b!1004259 (= e!643433 e!643434)))

(assert (=> b!1004259 (= c!165431 (is-Star!2788 r!15766))))

(declare-fun d!291602 () Bool)

(declare-fun c!165432 () Bool)

(assert (=> d!291602 (= c!165432 (is-EmptyExpr!2788 r!15766))))

(assert (=> d!291602 (= (matchRSpec!587 r!15766 s!10566) e!643430)))

(declare-fun b!1004260 () Bool)

(declare-fun c!165430 () Bool)

(assert (=> b!1004260 (= c!165430 (is-Union!2788 r!15766))))

(assert (=> b!1004260 (= e!643436 e!643433)))

(declare-fun b!1004261 () Bool)

(declare-fun res!453365 () Bool)

(declare-fun e!643432 () Bool)

(assert (=> b!1004261 (=> res!453365 e!643432)))

(assert (=> b!1004261 (= res!453365 call!66946)))

(assert (=> b!1004261 (= e!643434 e!643432)))

(declare-fun b!1004262 () Bool)

(assert (=> b!1004262 (= e!643430 call!66946)))

(assert (=> b!1004263 (= e!643432 call!66947)))

(declare-fun b!1004264 () Bool)

(assert (=> b!1004264 (= e!643435 (matchRSpec!587 (regTwo!6089 r!15766) s!10566))))

(assert (=> b!1004265 (= e!643434 call!66947)))

(assert (= (and d!291602 c!165432) b!1004262))

(assert (= (and d!291602 (not c!165432)) b!1004257))

(assert (= (and b!1004257 res!453364) b!1004258))

(assert (= (and b!1004258 c!165433) b!1004256))

(assert (= (and b!1004258 (not c!165433)) b!1004260))

(assert (= (and b!1004260 c!165430) b!1004255))

(assert (= (and b!1004260 (not c!165430)) b!1004259))

(assert (= (and b!1004255 (not res!453366)) b!1004264))

(assert (= (and b!1004259 c!165431) b!1004261))

(assert (= (and b!1004259 (not c!165431)) b!1004265))

(assert (= (and b!1004261 (not res!453365)) b!1004263))

(assert (= (or b!1004263 b!1004265) bm!66941))

(assert (= (or b!1004262 b!1004261) bm!66942))

(declare-fun m!1191289 () Bool)

(assert (=> b!1004255 m!1191289))

(declare-fun m!1191291 () Bool)

(assert (=> bm!66941 m!1191291))

(assert (=> bm!66942 m!1191145))

(declare-fun m!1191293 () Bool)

(assert (=> b!1004264 m!1191293))

(assert (=> b!1004017 d!291602))

(declare-fun b!1004266 () Bool)

(declare-fun res!453373 () Bool)

(declare-fun e!643443 () Bool)

(assert (=> b!1004266 (=> res!453373 e!643443)))

(declare-fun e!643440 () Bool)

(assert (=> b!1004266 (= res!453373 e!643440)))

(declare-fun res!453372 () Bool)

(assert (=> b!1004266 (=> (not res!453372) (not e!643440))))

(declare-fun lt!352494 () Bool)

(assert (=> b!1004266 (= res!453372 lt!352494)))

(declare-fun b!1004267 () Bool)

(declare-fun e!643442 () Bool)

(assert (=> b!1004267 (= e!643442 (nullable!900 r!15766))))

(declare-fun d!291608 () Bool)

(declare-fun e!643439 () Bool)

(assert (=> d!291608 e!643439))

(declare-fun c!165434 () Bool)

(assert (=> d!291608 (= c!165434 (is-EmptyExpr!2788 r!15766))))

(assert (=> d!291608 (= lt!352494 e!643442)))

(declare-fun c!165436 () Bool)

(assert (=> d!291608 (= c!165436 (isEmpty!6342 s!10566))))

(assert (=> d!291608 (validRegex!1257 r!15766)))

(assert (=> d!291608 (= (matchR!1324 r!15766 s!10566) lt!352494)))

(declare-fun b!1004268 () Bool)

(assert (=> b!1004268 (= e!643442 (matchR!1324 (derivativeStep!704 r!15766 (head!1858 s!10566)) (tail!1420 s!10566)))))

(declare-fun b!1004269 () Bool)

(declare-fun e!643441 () Bool)

(assert (=> b!1004269 (= e!643439 e!643441)))

(declare-fun c!165435 () Bool)

(assert (=> b!1004269 (= c!165435 (is-EmptyLang!2788 r!15766))))

(declare-fun bm!66943 () Bool)

(declare-fun call!66948 () Bool)

(assert (=> bm!66943 (= call!66948 (isEmpty!6342 s!10566))))

(declare-fun b!1004270 () Bool)

(assert (=> b!1004270 (= e!643440 (= (head!1858 s!10566) (c!165393 r!15766)))))

(declare-fun b!1004271 () Bool)

(declare-fun e!643438 () Bool)

(assert (=> b!1004271 (= e!643438 (not (= (head!1858 s!10566) (c!165393 r!15766))))))

(declare-fun b!1004272 () Bool)

(assert (=> b!1004272 (= e!643441 (not lt!352494))))

(declare-fun b!1004273 () Bool)

(declare-fun e!643437 () Bool)

(assert (=> b!1004273 (= e!643437 e!643438)))

(declare-fun res!453370 () Bool)

(assert (=> b!1004273 (=> res!453370 e!643438)))

(assert (=> b!1004273 (= res!453370 call!66948)))

(declare-fun b!1004274 () Bool)

(declare-fun res!453374 () Bool)

(assert (=> b!1004274 (=> res!453374 e!643443)))

(assert (=> b!1004274 (= res!453374 (not (is-ElementMatch!2788 r!15766)))))

(assert (=> b!1004274 (= e!643441 e!643443)))

(declare-fun b!1004275 () Bool)

(declare-fun res!453369 () Bool)

(assert (=> b!1004275 (=> (not res!453369) (not e!643440))))

(assert (=> b!1004275 (= res!453369 (isEmpty!6342 (tail!1420 s!10566)))))

(declare-fun b!1004276 () Bool)

(declare-fun res!453368 () Bool)

(assert (=> b!1004276 (=> (not res!453368) (not e!643440))))

(assert (=> b!1004276 (= res!453368 (not call!66948))))

(declare-fun b!1004277 () Bool)

(declare-fun res!453367 () Bool)

(assert (=> b!1004277 (=> res!453367 e!643438)))

(assert (=> b!1004277 (= res!453367 (not (isEmpty!6342 (tail!1420 s!10566))))))

(declare-fun b!1004278 () Bool)

(assert (=> b!1004278 (= e!643443 e!643437)))

(declare-fun res!453371 () Bool)

(assert (=> b!1004278 (=> (not res!453371) (not e!643437))))

(assert (=> b!1004278 (= res!453371 (not lt!352494))))

(declare-fun b!1004279 () Bool)

(assert (=> b!1004279 (= e!643439 (= lt!352494 call!66948))))

(assert (= (and d!291608 c!165436) b!1004267))

(assert (= (and d!291608 (not c!165436)) b!1004268))

(assert (= (and d!291608 c!165434) b!1004279))

(assert (= (and d!291608 (not c!165434)) b!1004269))

(assert (= (and b!1004269 c!165435) b!1004272))

(assert (= (and b!1004269 (not c!165435)) b!1004274))

(assert (= (and b!1004274 (not res!453374)) b!1004266))

(assert (= (and b!1004266 res!453372) b!1004276))

(assert (= (and b!1004276 res!453368) b!1004275))

(assert (= (and b!1004275 res!453369) b!1004270))

(assert (= (and b!1004266 (not res!453373)) b!1004278))

(assert (= (and b!1004278 res!453371) b!1004273))

(assert (= (and b!1004273 (not res!453370)) b!1004277))

(assert (= (and b!1004277 (not res!453367)) b!1004271))

(assert (= (or b!1004279 b!1004273 b!1004276) bm!66943))

(assert (=> bm!66943 m!1191145))

(declare-fun m!1191295 () Bool)

(assert (=> b!1004267 m!1191295))

(assert (=> d!291608 m!1191145))

(assert (=> d!291608 m!1191167))

(declare-fun m!1191297 () Bool)

(assert (=> b!1004277 m!1191297))

(assert (=> b!1004277 m!1191297))

(declare-fun m!1191299 () Bool)

(assert (=> b!1004277 m!1191299))

(declare-fun m!1191301 () Bool)

(assert (=> b!1004268 m!1191301))

(assert (=> b!1004268 m!1191301))

(declare-fun m!1191303 () Bool)

(assert (=> b!1004268 m!1191303))

(assert (=> b!1004268 m!1191297))

(assert (=> b!1004268 m!1191303))

(assert (=> b!1004268 m!1191297))

(declare-fun m!1191305 () Bool)

(assert (=> b!1004268 m!1191305))

(assert (=> b!1004270 m!1191301))

(assert (=> b!1004271 m!1191301))

(assert (=> b!1004275 m!1191297))

(assert (=> b!1004275 m!1191297))

(assert (=> b!1004275 m!1191299))

(assert (=> b!1004017 d!291608))

(declare-fun d!291610 () Bool)

(assert (=> d!291610 (= (matchR!1324 r!15766 s!10566) (matchRSpec!587 r!15766 s!10566))))

(declare-fun lt!352497 () Unit!15235)

(declare-fun choose!6373 (Regex!2788 List!10018) Unit!15235)

(assert (=> d!291610 (= lt!352497 (choose!6373 r!15766 s!10566))))

(assert (=> d!291610 (validRegex!1257 r!15766)))

(assert (=> d!291610 (= (mainMatchTheorem!587 r!15766 s!10566) lt!352497)))

(declare-fun bs!245219 () Bool)

(assert (= bs!245219 d!291610))

(assert (=> bs!245219 m!1191157))

(assert (=> bs!245219 m!1191155))

(declare-fun m!1191307 () Bool)

(assert (=> bs!245219 m!1191307))

(assert (=> bs!245219 m!1191167))

(assert (=> b!1004017 d!291610))

(declare-fun b!1004280 () Bool)

(declare-fun res!453381 () Bool)

(declare-fun e!643450 () Bool)

(assert (=> b!1004280 (=> res!453381 e!643450)))

(declare-fun e!643447 () Bool)

(assert (=> b!1004280 (= res!453381 e!643447)))

(declare-fun res!453380 () Bool)

(assert (=> b!1004280 (=> (not res!453380) (not e!643447))))

(declare-fun lt!352498 () Bool)

(assert (=> b!1004280 (= res!453380 lt!352498)))

(declare-fun b!1004281 () Bool)

(declare-fun e!643449 () Bool)

(assert (=> b!1004281 (= e!643449 (nullable!900 lt!352437))))

(declare-fun d!291612 () Bool)

(declare-fun e!643446 () Bool)

(assert (=> d!291612 e!643446))

(declare-fun c!165437 () Bool)

(assert (=> d!291612 (= c!165437 (is-EmptyExpr!2788 lt!352437))))

(assert (=> d!291612 (= lt!352498 e!643449)))

(declare-fun c!165439 () Bool)

(assert (=> d!291612 (= c!165439 (isEmpty!6342 (_2!6511 lt!352435)))))

(assert (=> d!291612 (validRegex!1257 lt!352437)))

(assert (=> d!291612 (= (matchR!1324 lt!352437 (_2!6511 lt!352435)) lt!352498)))

(declare-fun b!1004282 () Bool)

(assert (=> b!1004282 (= e!643449 (matchR!1324 (derivativeStep!704 lt!352437 (head!1858 (_2!6511 lt!352435))) (tail!1420 (_2!6511 lt!352435))))))

(declare-fun b!1004283 () Bool)

(declare-fun e!643448 () Bool)

(assert (=> b!1004283 (= e!643446 e!643448)))

(declare-fun c!165438 () Bool)

(assert (=> b!1004283 (= c!165438 (is-EmptyLang!2788 lt!352437))))

(declare-fun bm!66944 () Bool)

(declare-fun call!66949 () Bool)

(assert (=> bm!66944 (= call!66949 (isEmpty!6342 (_2!6511 lt!352435)))))

(declare-fun b!1004284 () Bool)

(assert (=> b!1004284 (= e!643447 (= (head!1858 (_2!6511 lt!352435)) (c!165393 lt!352437)))))

(declare-fun b!1004285 () Bool)

(declare-fun e!643445 () Bool)

(assert (=> b!1004285 (= e!643445 (not (= (head!1858 (_2!6511 lt!352435)) (c!165393 lt!352437))))))

(declare-fun b!1004286 () Bool)

(assert (=> b!1004286 (= e!643448 (not lt!352498))))

(declare-fun b!1004287 () Bool)

(declare-fun e!643444 () Bool)

(assert (=> b!1004287 (= e!643444 e!643445)))

(declare-fun res!453378 () Bool)

(assert (=> b!1004287 (=> res!453378 e!643445)))

(assert (=> b!1004287 (= res!453378 call!66949)))

(declare-fun b!1004288 () Bool)

(declare-fun res!453382 () Bool)

(assert (=> b!1004288 (=> res!453382 e!643450)))

(assert (=> b!1004288 (= res!453382 (not (is-ElementMatch!2788 lt!352437)))))

(assert (=> b!1004288 (= e!643448 e!643450)))

(declare-fun b!1004289 () Bool)

(declare-fun res!453377 () Bool)

(assert (=> b!1004289 (=> (not res!453377) (not e!643447))))

(assert (=> b!1004289 (= res!453377 (isEmpty!6342 (tail!1420 (_2!6511 lt!352435))))))

(declare-fun b!1004290 () Bool)

(declare-fun res!453376 () Bool)

(assert (=> b!1004290 (=> (not res!453376) (not e!643447))))

(assert (=> b!1004290 (= res!453376 (not call!66949))))

(declare-fun b!1004291 () Bool)

(declare-fun res!453375 () Bool)

(assert (=> b!1004291 (=> res!453375 e!643445)))

(assert (=> b!1004291 (= res!453375 (not (isEmpty!6342 (tail!1420 (_2!6511 lt!352435)))))))

(declare-fun b!1004292 () Bool)

(assert (=> b!1004292 (= e!643450 e!643444)))

(declare-fun res!453379 () Bool)

(assert (=> b!1004292 (=> (not res!453379) (not e!643444))))

(assert (=> b!1004292 (= res!453379 (not lt!352498))))

(declare-fun b!1004293 () Bool)

(assert (=> b!1004293 (= e!643446 (= lt!352498 call!66949))))

(assert (= (and d!291612 c!165439) b!1004281))

(assert (= (and d!291612 (not c!165439)) b!1004282))

(assert (= (and d!291612 c!165437) b!1004293))

(assert (= (and d!291612 (not c!165437)) b!1004283))

(assert (= (and b!1004283 c!165438) b!1004286))

(assert (= (and b!1004283 (not c!165438)) b!1004288))

(assert (= (and b!1004288 (not res!453382)) b!1004280))

(assert (= (and b!1004280 res!453380) b!1004290))

(assert (= (and b!1004290 res!453376) b!1004289))

(assert (= (and b!1004289 res!453377) b!1004284))

(assert (= (and b!1004280 (not res!453381)) b!1004292))

(assert (= (and b!1004292 res!453379) b!1004287))

(assert (= (and b!1004287 (not res!453378)) b!1004291))

(assert (= (and b!1004291 (not res!453375)) b!1004285))

(assert (= (or b!1004293 b!1004287 b!1004290) bm!66944))

(declare-fun m!1191309 () Bool)

(assert (=> bm!66944 m!1191309))

(declare-fun m!1191311 () Bool)

(assert (=> b!1004281 m!1191311))

(assert (=> d!291612 m!1191309))

(declare-fun m!1191313 () Bool)

(assert (=> d!291612 m!1191313))

(declare-fun m!1191315 () Bool)

(assert (=> b!1004291 m!1191315))

(assert (=> b!1004291 m!1191315))

(declare-fun m!1191317 () Bool)

(assert (=> b!1004291 m!1191317))

(declare-fun m!1191319 () Bool)

(assert (=> b!1004282 m!1191319))

(assert (=> b!1004282 m!1191319))

(declare-fun m!1191321 () Bool)

(assert (=> b!1004282 m!1191321))

(assert (=> b!1004282 m!1191315))

(assert (=> b!1004282 m!1191321))

(assert (=> b!1004282 m!1191315))

(declare-fun m!1191323 () Bool)

(assert (=> b!1004282 m!1191323))

(assert (=> b!1004284 m!1191319))

(assert (=> b!1004285 m!1191319))

(assert (=> b!1004289 m!1191315))

(assert (=> b!1004289 m!1191315))

(assert (=> b!1004289 m!1191317))

(assert (=> b!1004019 d!291612))

(declare-fun bm!66945 () Bool)

(declare-fun call!66952 () Bool)

(declare-fun c!165440 () Bool)

(assert (=> bm!66945 (= call!66952 (validRegex!1257 (ite c!165440 (regTwo!6089 r!15766) (regTwo!6088 r!15766))))))

(declare-fun b!1004294 () Bool)

(declare-fun res!453384 () Bool)

(declare-fun e!643454 () Bool)

(assert (=> b!1004294 (=> (not res!453384) (not e!643454))))

(declare-fun call!66951 () Bool)

(assert (=> b!1004294 (= res!453384 call!66951)))

(declare-fun e!643457 () Bool)

(assert (=> b!1004294 (= e!643457 e!643454)))

(declare-fun d!291614 () Bool)

(declare-fun res!453387 () Bool)

(declare-fun e!643456 () Bool)

(assert (=> d!291614 (=> res!453387 e!643456)))

(assert (=> d!291614 (= res!453387 (is-ElementMatch!2788 r!15766))))

(assert (=> d!291614 (= (validRegex!1257 r!15766) e!643456)))

(declare-fun b!1004295 () Bool)

(declare-fun e!643452 () Bool)

(declare-fun e!643451 () Bool)

(assert (=> b!1004295 (= e!643452 e!643451)))

(declare-fun res!453383 () Bool)

(assert (=> b!1004295 (= res!453383 (not (nullable!900 (reg!3117 r!15766))))))

(assert (=> b!1004295 (=> (not res!453383) (not e!643451))))

(declare-fun b!1004296 () Bool)

(declare-fun e!643455 () Bool)

(declare-fun e!643453 () Bool)

(assert (=> b!1004296 (= e!643455 e!643453)))

(declare-fun res!453385 () Bool)

(assert (=> b!1004296 (=> (not res!453385) (not e!643453))))

(assert (=> b!1004296 (= res!453385 call!66951)))

(declare-fun b!1004297 () Bool)

(assert (=> b!1004297 (= e!643454 call!66952)))

(declare-fun b!1004298 () Bool)

(assert (=> b!1004298 (= e!643452 e!643457)))

(assert (=> b!1004298 (= c!165440 (is-Union!2788 r!15766))))

(declare-fun b!1004299 () Bool)

(declare-fun call!66950 () Bool)

(assert (=> b!1004299 (= e!643451 call!66950)))

(declare-fun bm!66946 () Bool)

(assert (=> bm!66946 (= call!66951 call!66950)))

(declare-fun bm!66947 () Bool)

(declare-fun c!165441 () Bool)

(assert (=> bm!66947 (= call!66950 (validRegex!1257 (ite c!165441 (reg!3117 r!15766) (ite c!165440 (regOne!6089 r!15766) (regOne!6088 r!15766)))))))

(declare-fun b!1004300 () Bool)

(assert (=> b!1004300 (= e!643453 call!66952)))

(declare-fun b!1004301 () Bool)

(assert (=> b!1004301 (= e!643456 e!643452)))

(assert (=> b!1004301 (= c!165441 (is-Star!2788 r!15766))))

(declare-fun b!1004302 () Bool)

(declare-fun res!453386 () Bool)

(assert (=> b!1004302 (=> res!453386 e!643455)))

(assert (=> b!1004302 (= res!453386 (not (is-Concat!4621 r!15766)))))

(assert (=> b!1004302 (= e!643457 e!643455)))

(assert (= (and d!291614 (not res!453387)) b!1004301))

(assert (= (and b!1004301 c!165441) b!1004295))

(assert (= (and b!1004301 (not c!165441)) b!1004298))

(assert (= (and b!1004295 res!453383) b!1004299))

(assert (= (and b!1004298 c!165440) b!1004294))

(assert (= (and b!1004298 (not c!165440)) b!1004302))

(assert (= (and b!1004294 res!453384) b!1004297))

(assert (= (and b!1004302 (not res!453386)) b!1004296))

(assert (= (and b!1004296 res!453385) b!1004300))

(assert (= (or b!1004297 b!1004300) bm!66945))

(assert (= (or b!1004294 b!1004296) bm!66946))

(assert (= (or b!1004299 bm!66946) bm!66947))

(declare-fun m!1191325 () Bool)

(assert (=> bm!66945 m!1191325))

(assert (=> b!1004295 m!1191255))

(declare-fun m!1191327 () Bool)

(assert (=> bm!66947 m!1191327))

(assert (=> start!88112 d!291614))

(declare-fun b!1004316 () Bool)

(declare-fun e!643460 () Bool)

(declare-fun tp!305686 () Bool)

(declare-fun tp!305687 () Bool)

(assert (=> b!1004316 (= e!643460 (and tp!305686 tp!305687))))

(declare-fun b!1004314 () Bool)

(declare-fun tp!305684 () Bool)

(declare-fun tp!305683 () Bool)

(assert (=> b!1004314 (= e!643460 (and tp!305684 tp!305683))))

(declare-fun b!1004315 () Bool)

(declare-fun tp!305685 () Bool)

(assert (=> b!1004315 (= e!643460 tp!305685)))

(declare-fun b!1004313 () Bool)

(assert (=> b!1004313 (= e!643460 tp_is_empty!5219)))

(assert (=> b!1004020 (= tp!305650 e!643460)))

(assert (= (and b!1004020 (is-ElementMatch!2788 (regOne!6089 r!15766))) b!1004313))

(assert (= (and b!1004020 (is-Concat!4621 (regOne!6089 r!15766))) b!1004314))

(assert (= (and b!1004020 (is-Star!2788 (regOne!6089 r!15766))) b!1004315))

(assert (= (and b!1004020 (is-Union!2788 (regOne!6089 r!15766))) b!1004316))

(declare-fun b!1004320 () Bool)

(declare-fun e!643461 () Bool)

(declare-fun tp!305691 () Bool)

(declare-fun tp!305692 () Bool)

(assert (=> b!1004320 (= e!643461 (and tp!305691 tp!305692))))

(declare-fun b!1004318 () Bool)

(declare-fun tp!305689 () Bool)

(declare-fun tp!305688 () Bool)

(assert (=> b!1004318 (= e!643461 (and tp!305689 tp!305688))))

(declare-fun b!1004319 () Bool)

(declare-fun tp!305690 () Bool)

(assert (=> b!1004319 (= e!643461 tp!305690)))

(declare-fun b!1004317 () Bool)

(assert (=> b!1004317 (= e!643461 tp_is_empty!5219)))

(assert (=> b!1004020 (= tp!305654 e!643461)))

(assert (= (and b!1004020 (is-ElementMatch!2788 (regTwo!6089 r!15766))) b!1004317))

(assert (= (and b!1004020 (is-Concat!4621 (regTwo!6089 r!15766))) b!1004318))

(assert (= (and b!1004020 (is-Star!2788 (regTwo!6089 r!15766))) b!1004319))

(assert (= (and b!1004020 (is-Union!2788 (regTwo!6089 r!15766))) b!1004320))

(declare-fun b!1004324 () Bool)

(declare-fun e!643462 () Bool)

(declare-fun tp!305696 () Bool)

(declare-fun tp!305697 () Bool)

(assert (=> b!1004324 (= e!643462 (and tp!305696 tp!305697))))

(declare-fun b!1004322 () Bool)

(declare-fun tp!305694 () Bool)

(declare-fun tp!305693 () Bool)

(assert (=> b!1004322 (= e!643462 (and tp!305694 tp!305693))))

(declare-fun b!1004323 () Bool)

(declare-fun tp!305695 () Bool)

(assert (=> b!1004323 (= e!643462 tp!305695)))

(declare-fun b!1004321 () Bool)

(assert (=> b!1004321 (= e!643462 tp_is_empty!5219)))

(assert (=> b!1004026 (= tp!305652 e!643462)))

(assert (= (and b!1004026 (is-ElementMatch!2788 (regOne!6088 r!15766))) b!1004321))

(assert (= (and b!1004026 (is-Concat!4621 (regOne!6088 r!15766))) b!1004322))

(assert (= (and b!1004026 (is-Star!2788 (regOne!6088 r!15766))) b!1004323))

(assert (= (and b!1004026 (is-Union!2788 (regOne!6088 r!15766))) b!1004324))

(declare-fun b!1004328 () Bool)

(declare-fun e!643463 () Bool)

(declare-fun tp!305701 () Bool)

(declare-fun tp!305702 () Bool)

(assert (=> b!1004328 (= e!643463 (and tp!305701 tp!305702))))

(declare-fun b!1004326 () Bool)

(declare-fun tp!305699 () Bool)

(declare-fun tp!305698 () Bool)

(assert (=> b!1004326 (= e!643463 (and tp!305699 tp!305698))))

(declare-fun b!1004327 () Bool)

(declare-fun tp!305700 () Bool)

(assert (=> b!1004327 (= e!643463 tp!305700)))

(declare-fun b!1004325 () Bool)

(assert (=> b!1004325 (= e!643463 tp_is_empty!5219)))

(assert (=> b!1004026 (= tp!305653 e!643463)))

(assert (= (and b!1004026 (is-ElementMatch!2788 (regTwo!6088 r!15766))) b!1004325))

(assert (= (and b!1004026 (is-Concat!4621 (regTwo!6088 r!15766))) b!1004326))

(assert (= (and b!1004026 (is-Star!2788 (regTwo!6088 r!15766))) b!1004327))

(assert (= (and b!1004026 (is-Union!2788 (regTwo!6088 r!15766))) b!1004328))

(declare-fun b!1004332 () Bool)

(declare-fun e!643464 () Bool)

(declare-fun tp!305706 () Bool)

(declare-fun tp!305707 () Bool)

(assert (=> b!1004332 (= e!643464 (and tp!305706 tp!305707))))

(declare-fun b!1004330 () Bool)

(declare-fun tp!305704 () Bool)

(declare-fun tp!305703 () Bool)

(assert (=> b!1004330 (= e!643464 (and tp!305704 tp!305703))))

(declare-fun b!1004331 () Bool)

(declare-fun tp!305705 () Bool)

(assert (=> b!1004331 (= e!643464 tp!305705)))

(declare-fun b!1004329 () Bool)

(assert (=> b!1004329 (= e!643464 tp_is_empty!5219)))

(assert (=> b!1004024 (= tp!305651 e!643464)))

(assert (= (and b!1004024 (is-ElementMatch!2788 (reg!3117 r!15766))) b!1004329))

(assert (= (and b!1004024 (is-Concat!4621 (reg!3117 r!15766))) b!1004330))

(assert (= (and b!1004024 (is-Star!2788 (reg!3117 r!15766))) b!1004331))

(assert (= (and b!1004024 (is-Union!2788 (reg!3117 r!15766))) b!1004332))

(declare-fun b!1004337 () Bool)

(declare-fun e!643467 () Bool)

(declare-fun tp!305710 () Bool)

(assert (=> b!1004337 (= e!643467 (and tp_is_empty!5219 tp!305710))))

(assert (=> b!1004025 (= tp!305649 e!643467)))

(assert (= (and b!1004025 (is-Cons!10002 (t!101064 s!10566))) b!1004337))

(push 1)

(assert (not d!291580))

(assert (not bm!66933))

(assert (not b!1004320))

(assert (not b!1004332))

(assert (not bm!66942))

(assert (not b!1004289))

(assert (not b!1004134))

(assert (not b!1004337))

(assert (not b!1004275))

(assert (not bm!66944))

(assert (not b!1004277))

(assert (not bm!66941))

(assert (not b!1004195))

(assert (not b!1004295))

(assert (not bm!66931))

(assert (not b!1004314))

(assert (not b!1004328))

(assert (not b!1004190))

(assert (not b!1004271))

(assert (not b!1004281))

(assert (not d!291588))

(assert (not b!1004319))

(assert (not b!1004284))

(assert (not b!1004188))

(assert (not d!291594))

(assert (not d!291596))

(assert (not d!291598))

(assert (not d!291612))

(assert (not b!1004101))

(assert (not b!1004197))

(assert (not bm!66945))

(assert (not d!291610))

(assert (not b!1004324))

(assert tp_is_empty!5219)

(assert (not b!1004191))

(assert (not b!1004268))

(assert (not b!1004331))

(assert (not b!1004285))

(assert (not b!1004133))

(assert (not bm!66936))

(assert (not bm!66947))

(assert (not b!1004316))

(assert (not b!1004291))

(assert (not b!1004326))

(assert (not bm!66943))

(assert (not b!1004264))

(assert (not b!1004282))

(assert (not b!1004135))

(assert (not b!1004270))

(assert (not b!1004255))

(assert (not d!291586))

(assert (not b!1004323))

(assert (not b!1004267))

(assert (not b!1004131))

(assert (not b!1004127))

(assert (not b!1004187))

(assert (not b!1004318))

(assert (not d!291592))

(assert (not b!1004327))

(assert (not b!1004322))

(assert (not b!1004315))

(assert (not b!1004330))

(assert (not d!291608))

(assert (not b!1004129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

