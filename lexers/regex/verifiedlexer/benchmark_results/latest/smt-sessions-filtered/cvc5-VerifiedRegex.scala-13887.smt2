; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738026 () Bool)

(assert start!738026)

(declare-fun b!7732232 () Bool)

(assert (=> b!7732232 true))

(assert (=> b!7732232 true))

(declare-fun b!7732228 () Bool)

(declare-fun e!4585369 () Bool)

(declare-fun tp!2268899 () Bool)

(declare-fun tp!2268894 () Bool)

(assert (=> b!7732228 (= e!4585369 (and tp!2268899 tp!2268894))))

(declare-fun res!3084094 () Bool)

(declare-fun e!4585366 () Bool)

(assert (=> start!738026 (=> (not res!3084094) (not e!4585366))))

(declare-datatypes ((C!41462 0))(
  ( (C!41463 (val!31171 Int)) )
))
(declare-datatypes ((Regex!20568 0))(
  ( (ElementMatch!20568 (c!1425623 C!41462)) (Concat!29413 (regOne!41648 Regex!20568) (regTwo!41648 Regex!20568)) (EmptyExpr!20568) (Star!20568 (reg!20897 Regex!20568)) (EmptyLang!20568) (Union!20568 (regOne!41649 Regex!20568) (regTwo!41649 Regex!20568)) )
))
(declare-fun r!14126 () Regex!20568)

(declare-fun validRegex!10986 (Regex!20568) Bool)

(assert (=> start!738026 (= res!3084094 (validRegex!10986 r!14126))))

(assert (=> start!738026 e!4585366))

(assert (=> start!738026 e!4585369))

(declare-fun e!4585368 () Bool)

(assert (=> start!738026 e!4585368))

(declare-fun b!7732229 () Bool)

(declare-fun res!3084095 () Bool)

(assert (=> b!7732229 (=> (not res!3084095) (not e!4585366))))

(assert (=> b!7732229 (= res!3084095 (and (not (is-EmptyExpr!20568 r!14126)) (not (is-EmptyLang!20568 r!14126)) (not (is-ElementMatch!20568 r!14126)) (not (is-Union!20568 r!14126)) (not (is-Star!20568 r!14126))))))

(declare-fun b!7732230 () Bool)

(declare-fun e!4585367 () Bool)

(declare-fun e!4585370 () Bool)

(assert (=> b!7732230 (= e!4585367 e!4585370)))

(declare-fun res!3084093 () Bool)

(assert (=> b!7732230 (=> res!3084093 e!4585370)))

(assert (=> b!7732230 (= res!3084093 (not (validRegex!10986 (regOne!41648 r!14126))))))

(declare-datatypes ((List!73415 0))(
  ( (Nil!73291) (Cons!73291 (h!79739 C!41462) (t!388150 List!73415)) )
))
(declare-datatypes ((tuple2!69590 0))(
  ( (tuple2!69591 (_1!38098 List!73415) (_2!38098 List!73415)) )
))
(declare-fun lt!2667246 () tuple2!69590)

(declare-datatypes ((Option!17589 0))(
  ( (None!17588) (Some!17588 (v!54723 tuple2!69590)) )
))
(declare-fun lt!2667247 () Option!17589)

(declare-fun get!26043 (Option!17589) tuple2!69590)

(assert (=> b!7732230 (= lt!2667246 (get!26043 lt!2667247))))

(declare-fun b!7732231 () Bool)

(declare-fun tp_is_empty!51491 () Bool)

(declare-fun tp!2268895 () Bool)

(assert (=> b!7732231 (= e!4585368 (and tp_is_empty!51491 tp!2268895))))

(assert (=> b!7732232 (= e!4585366 (not e!4585367))))

(declare-fun res!3084092 () Bool)

(assert (=> b!7732232 (=> res!3084092 e!4585367)))

(declare-fun s!9605 () List!73415)

(declare-fun matchR!10060 (Regex!20568 List!73415) Bool)

(assert (=> b!7732232 (= res!3084092 (matchR!10060 r!14126 s!9605))))

(declare-fun lt!2667248 () Bool)

(declare-fun lambda!471322 () Int)

(declare-fun Exists!4689 (Int) Bool)

(assert (=> b!7732232 (= lt!2667248 (Exists!4689 lambda!471322))))

(declare-fun isDefined!14205 (Option!17589) Bool)

(assert (=> b!7732232 (= lt!2667248 (isDefined!14205 lt!2667247))))

(declare-fun findConcatSeparation!3619 (Regex!20568 Regex!20568 List!73415 List!73415 List!73415) Option!17589)

(assert (=> b!7732232 (= lt!2667247 (findConcatSeparation!3619 (regOne!41648 r!14126) (regTwo!41648 r!14126) Nil!73291 s!9605 s!9605))))

(declare-datatypes ((Unit!168208 0))(
  ( (Unit!168209) )
))
(declare-fun lt!2667245 () Unit!168208)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3377 (Regex!20568 Regex!20568 List!73415) Unit!168208)

(assert (=> b!7732232 (= lt!2667245 (lemmaFindConcatSeparationEquivalentToExists!3377 (regOne!41648 r!14126) (regTwo!41648 r!14126) s!9605))))

(declare-fun b!7732233 () Bool)

(declare-fun ++!17767 (List!73415 List!73415) List!73415)

(assert (=> b!7732233 (= e!4585370 (= s!9605 (++!17767 (_1!38098 lt!2667246) (_2!38098 lt!2667246))))))

(declare-fun b!7732234 () Bool)

(declare-fun tp!2268898 () Bool)

(assert (=> b!7732234 (= e!4585369 tp!2268898)))

(declare-fun b!7732235 () Bool)

(assert (=> b!7732235 (= e!4585369 tp_is_empty!51491)))

(declare-fun b!7732236 () Bool)

(declare-fun res!3084096 () Bool)

(assert (=> b!7732236 (=> res!3084096 e!4585370)))

(assert (=> b!7732236 (= res!3084096 (not (validRegex!10986 (regTwo!41648 r!14126))))))

(declare-fun b!7732237 () Bool)

(declare-fun tp!2268897 () Bool)

(declare-fun tp!2268896 () Bool)

(assert (=> b!7732237 (= e!4585369 (and tp!2268897 tp!2268896))))

(declare-fun b!7732238 () Bool)

(declare-fun res!3084091 () Bool)

(assert (=> b!7732238 (=> res!3084091 e!4585367)))

(assert (=> b!7732238 (= res!3084091 (not lt!2667248))))

(assert (= (and start!738026 res!3084094) b!7732229))

(assert (= (and b!7732229 res!3084095) b!7732232))

(assert (= (and b!7732232 (not res!3084092)) b!7732238))

(assert (= (and b!7732238 (not res!3084091)) b!7732230))

(assert (= (and b!7732230 (not res!3084093)) b!7732236))

(assert (= (and b!7732236 (not res!3084096)) b!7732233))

(assert (= (and start!738026 (is-ElementMatch!20568 r!14126)) b!7732235))

(assert (= (and start!738026 (is-Concat!29413 r!14126)) b!7732237))

(assert (= (and start!738026 (is-Star!20568 r!14126)) b!7732234))

(assert (= (and start!738026 (is-Union!20568 r!14126)) b!7732228))

(assert (= (and start!738026 (is-Cons!73291 s!9605)) b!7732231))

(declare-fun m!8206106 () Bool)

(assert (=> b!7732232 m!8206106))

(declare-fun m!8206108 () Bool)

(assert (=> b!7732232 m!8206108))

(declare-fun m!8206110 () Bool)

(assert (=> b!7732232 m!8206110))

(declare-fun m!8206112 () Bool)

(assert (=> b!7732232 m!8206112))

(declare-fun m!8206114 () Bool)

(assert (=> b!7732232 m!8206114))

(declare-fun m!8206116 () Bool)

(assert (=> b!7732230 m!8206116))

(declare-fun m!8206118 () Bool)

(assert (=> b!7732230 m!8206118))

(declare-fun m!8206120 () Bool)

(assert (=> start!738026 m!8206120))

(declare-fun m!8206122 () Bool)

(assert (=> b!7732236 m!8206122))

(declare-fun m!8206124 () Bool)

(assert (=> b!7732233 m!8206124))

(push 1)

(assert (not b!7732232))

(assert (not b!7732233))

(assert tp_is_empty!51491)

(assert (not b!7732231))

(assert (not b!7732228))

(assert (not b!7732236))

(assert (not start!738026))

(assert (not b!7732230))

(assert (not b!7732234))

(assert (not b!7732237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7732318 () Bool)

(declare-fun e!4585410 () Bool)

(declare-fun e!4585409 () Bool)

(assert (=> b!7732318 (= e!4585410 e!4585409)))

(declare-fun res!3084142 () Bool)

(assert (=> b!7732318 (=> res!3084142 e!4585409)))

(declare-fun call!715615 () Bool)

(assert (=> b!7732318 (= res!3084142 call!715615)))

(declare-fun b!7732319 () Bool)

(declare-fun e!4585408 () Bool)

(declare-fun nullable!9043 (Regex!20568) Bool)

(assert (=> b!7732319 (= e!4585408 (nullable!9043 r!14126))))

(declare-fun b!7732320 () Bool)

(declare-fun e!4585407 () Bool)

(declare-fun lt!2667263 () Bool)

(assert (=> b!7732320 (= e!4585407 (= lt!2667263 call!715615))))

(declare-fun b!7732321 () Bool)

(declare-fun res!3084138 () Bool)

(declare-fun e!4585406 () Bool)

(assert (=> b!7732321 (=> (not res!3084138) (not e!4585406))))

(assert (=> b!7732321 (= res!3084138 (not call!715615))))

(declare-fun b!7732322 () Bool)

(declare-fun e!4585412 () Bool)

(assert (=> b!7732322 (= e!4585412 (not lt!2667263))))

(declare-fun b!7732323 () Bool)

(declare-fun res!3084143 () Bool)

(assert (=> b!7732323 (=> (not res!3084143) (not e!4585406))))

(declare-fun isEmpty!41970 (List!73415) Bool)

(declare-fun tail!15343 (List!73415) List!73415)

(assert (=> b!7732323 (= res!3084143 (isEmpty!41970 (tail!15343 s!9605)))))

(declare-fun b!7732324 () Bool)

(declare-fun res!3084137 () Bool)

(assert (=> b!7732324 (=> res!3084137 e!4585409)))

(assert (=> b!7732324 (= res!3084137 (not (isEmpty!41970 (tail!15343 s!9605))))))

(declare-fun b!7732325 () Bool)

(declare-fun head!15803 (List!73415) C!41462)

(assert (=> b!7732325 (= e!4585406 (= (head!15803 s!9605) (c!1425623 r!14126)))))

(declare-fun b!7732326 () Bool)

(declare-fun derivativeStep!6003 (Regex!20568 C!41462) Regex!20568)

(assert (=> b!7732326 (= e!4585408 (matchR!10060 (derivativeStep!6003 r!14126 (head!15803 s!9605)) (tail!15343 s!9605)))))

(declare-fun bm!715610 () Bool)

(assert (=> bm!715610 (= call!715615 (isEmpty!41970 s!9605))))

(declare-fun b!7732327 () Bool)

(assert (=> b!7732327 (= e!4585409 (not (= (head!15803 s!9605) (c!1425623 r!14126))))))

(declare-fun b!7732328 () Bool)

(declare-fun res!3084140 () Bool)

(declare-fun e!4585411 () Bool)

(assert (=> b!7732328 (=> res!3084140 e!4585411)))

(assert (=> b!7732328 (= res!3084140 (not (is-ElementMatch!20568 r!14126)))))

(assert (=> b!7732328 (= e!4585412 e!4585411)))

(declare-fun b!7732329 () Bool)

(declare-fun res!3084139 () Bool)

(assert (=> b!7732329 (=> res!3084139 e!4585411)))

(assert (=> b!7732329 (= res!3084139 e!4585406)))

(declare-fun res!3084141 () Bool)

(assert (=> b!7732329 (=> (not res!3084141) (not e!4585406))))

(assert (=> b!7732329 (= res!3084141 lt!2667263)))

(declare-fun b!7732330 () Bool)

(assert (=> b!7732330 (= e!4585411 e!4585410)))

(declare-fun res!3084144 () Bool)

(assert (=> b!7732330 (=> (not res!3084144) (not e!4585410))))

(assert (=> b!7732330 (= res!3084144 (not lt!2667263))))

(declare-fun d!2339612 () Bool)

(assert (=> d!2339612 e!4585407))

(declare-fun c!1425635 () Bool)

(assert (=> d!2339612 (= c!1425635 (is-EmptyExpr!20568 r!14126))))

(assert (=> d!2339612 (= lt!2667263 e!4585408)))

(declare-fun c!1425633 () Bool)

(assert (=> d!2339612 (= c!1425633 (isEmpty!41970 s!9605))))

(assert (=> d!2339612 (validRegex!10986 r!14126)))

(assert (=> d!2339612 (= (matchR!10060 r!14126 s!9605) lt!2667263)))

(declare-fun b!7732331 () Bool)

(assert (=> b!7732331 (= e!4585407 e!4585412)))

(declare-fun c!1425634 () Bool)

(assert (=> b!7732331 (= c!1425634 (is-EmptyLang!20568 r!14126))))

(assert (= (and d!2339612 c!1425633) b!7732319))

(assert (= (and d!2339612 (not c!1425633)) b!7732326))

(assert (= (and d!2339612 c!1425635) b!7732320))

(assert (= (and d!2339612 (not c!1425635)) b!7732331))

(assert (= (and b!7732331 c!1425634) b!7732322))

(assert (= (and b!7732331 (not c!1425634)) b!7732328))

(assert (= (and b!7732328 (not res!3084140)) b!7732329))

(assert (= (and b!7732329 res!3084141) b!7732321))

(assert (= (and b!7732321 res!3084138) b!7732323))

(assert (= (and b!7732323 res!3084143) b!7732325))

(assert (= (and b!7732329 (not res!3084139)) b!7732330))

(assert (= (and b!7732330 res!3084144) b!7732318))

(assert (= (and b!7732318 (not res!3084142)) b!7732324))

(assert (= (and b!7732324 (not res!3084137)) b!7732327))

(assert (= (or b!7732320 b!7732318 b!7732321) bm!715610))

(declare-fun m!8206146 () Bool)

(assert (=> bm!715610 m!8206146))

(declare-fun m!8206148 () Bool)

(assert (=> b!7732325 m!8206148))

(assert (=> d!2339612 m!8206146))

(assert (=> d!2339612 m!8206120))

(declare-fun m!8206150 () Bool)

(assert (=> b!7732319 m!8206150))

(declare-fun m!8206152 () Bool)

(assert (=> b!7732324 m!8206152))

(assert (=> b!7732324 m!8206152))

(declare-fun m!8206154 () Bool)

(assert (=> b!7732324 m!8206154))

(assert (=> b!7732323 m!8206152))

(assert (=> b!7732323 m!8206152))

(assert (=> b!7732323 m!8206154))

(assert (=> b!7732326 m!8206148))

(assert (=> b!7732326 m!8206148))

(declare-fun m!8206156 () Bool)

(assert (=> b!7732326 m!8206156))

(assert (=> b!7732326 m!8206152))

(assert (=> b!7732326 m!8206156))

(assert (=> b!7732326 m!8206152))

(declare-fun m!8206158 () Bool)

(assert (=> b!7732326 m!8206158))

(assert (=> b!7732327 m!8206148))

(assert (=> b!7732232 d!2339612))

(declare-fun bs!1963597 () Bool)

(declare-fun d!2339616 () Bool)

(assert (= bs!1963597 (and d!2339616 b!7732232)))

(declare-fun lambda!471328 () Int)

(assert (=> bs!1963597 (= lambda!471328 lambda!471322)))

(assert (=> d!2339616 true))

(assert (=> d!2339616 true))

(assert (=> d!2339616 true))

(assert (=> d!2339616 (= (isDefined!14205 (findConcatSeparation!3619 (regOne!41648 r!14126) (regTwo!41648 r!14126) Nil!73291 s!9605 s!9605)) (Exists!4689 lambda!471328))))

(declare-fun lt!2667266 () Unit!168208)

(declare-fun choose!59320 (Regex!20568 Regex!20568 List!73415) Unit!168208)

(assert (=> d!2339616 (= lt!2667266 (choose!59320 (regOne!41648 r!14126) (regTwo!41648 r!14126) s!9605))))

(assert (=> d!2339616 (validRegex!10986 (regOne!41648 r!14126))))

(assert (=> d!2339616 (= (lemmaFindConcatSeparationEquivalentToExists!3377 (regOne!41648 r!14126) (regTwo!41648 r!14126) s!9605) lt!2667266)))

(declare-fun bs!1963598 () Bool)

(assert (= bs!1963598 d!2339616))

(declare-fun m!8206160 () Bool)

(assert (=> bs!1963598 m!8206160))

(assert (=> bs!1963598 m!8206110))

(assert (=> bs!1963598 m!8206110))

(declare-fun m!8206162 () Bool)

(assert (=> bs!1963598 m!8206162))

(declare-fun m!8206164 () Bool)

(assert (=> bs!1963598 m!8206164))

(assert (=> bs!1963598 m!8206116))

(assert (=> b!7732232 d!2339616))

(declare-fun d!2339618 () Bool)

(declare-fun isEmpty!41971 (Option!17589) Bool)

(assert (=> d!2339618 (= (isDefined!14205 lt!2667247) (not (isEmpty!41971 lt!2667247)))))

(declare-fun bs!1963599 () Bool)

(assert (= bs!1963599 d!2339618))

(declare-fun m!8206166 () Bool)

(assert (=> bs!1963599 m!8206166))

(assert (=> b!7732232 d!2339618))

(declare-fun b!7732393 () Bool)

(declare-fun lt!2667274 () Unit!168208)

(declare-fun lt!2667275 () Unit!168208)

(assert (=> b!7732393 (= lt!2667274 lt!2667275)))

(assert (=> b!7732393 (= (++!17767 (++!17767 Nil!73291 (Cons!73291 (h!79739 s!9605) Nil!73291)) (t!388150 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3318 (List!73415 C!41462 List!73415 List!73415) Unit!168208)

(assert (=> b!7732393 (= lt!2667275 (lemmaMoveElementToOtherListKeepsConcatEq!3318 Nil!73291 (h!79739 s!9605) (t!388150 s!9605) s!9605))))

(declare-fun e!4585456 () Option!17589)

(assert (=> b!7732393 (= e!4585456 (findConcatSeparation!3619 (regOne!41648 r!14126) (regTwo!41648 r!14126) (++!17767 Nil!73291 (Cons!73291 (h!79739 s!9605) Nil!73291)) (t!388150 s!9605) s!9605))))

(declare-fun d!2339620 () Bool)

(declare-fun e!4585459 () Bool)

(assert (=> d!2339620 e!4585459))

(declare-fun res!3084185 () Bool)

(assert (=> d!2339620 (=> res!3084185 e!4585459)))

(declare-fun e!4585460 () Bool)

(assert (=> d!2339620 (= res!3084185 e!4585460)))

(declare-fun res!3084182 () Bool)

(assert (=> d!2339620 (=> (not res!3084182) (not e!4585460))))

(declare-fun lt!2667273 () Option!17589)

(assert (=> d!2339620 (= res!3084182 (isDefined!14205 lt!2667273))))

(declare-fun e!4585457 () Option!17589)

(assert (=> d!2339620 (= lt!2667273 e!4585457)))

(declare-fun c!1425648 () Bool)

(declare-fun e!4585458 () Bool)

(assert (=> d!2339620 (= c!1425648 e!4585458)))

(declare-fun res!3084186 () Bool)

(assert (=> d!2339620 (=> (not res!3084186) (not e!4585458))))

(assert (=> d!2339620 (= res!3084186 (matchR!10060 (regOne!41648 r!14126) Nil!73291))))

(assert (=> d!2339620 (validRegex!10986 (regOne!41648 r!14126))))

(assert (=> d!2339620 (= (findConcatSeparation!3619 (regOne!41648 r!14126) (regTwo!41648 r!14126) Nil!73291 s!9605 s!9605) lt!2667273)))

(declare-fun b!7732394 () Bool)

(assert (=> b!7732394 (= e!4585456 None!17588)))

(declare-fun b!7732395 () Bool)

(assert (=> b!7732395 (= e!4585457 (Some!17588 (tuple2!69591 Nil!73291 s!9605)))))

(declare-fun b!7732396 () Bool)

(assert (=> b!7732396 (= e!4585457 e!4585456)))

(declare-fun c!1425649 () Bool)

(assert (=> b!7732396 (= c!1425649 (is-Nil!73291 s!9605))))

(declare-fun b!7732397 () Bool)

(assert (=> b!7732397 (= e!4585458 (matchR!10060 (regTwo!41648 r!14126) s!9605))))

(declare-fun b!7732398 () Bool)

(declare-fun res!3084183 () Bool)

(assert (=> b!7732398 (=> (not res!3084183) (not e!4585460))))

(assert (=> b!7732398 (= res!3084183 (matchR!10060 (regTwo!41648 r!14126) (_2!38098 (get!26043 lt!2667273))))))

(declare-fun b!7732399 () Bool)

(assert (=> b!7732399 (= e!4585460 (= (++!17767 (_1!38098 (get!26043 lt!2667273)) (_2!38098 (get!26043 lt!2667273))) s!9605))))

(declare-fun b!7732400 () Bool)

(declare-fun res!3084184 () Bool)

(assert (=> b!7732400 (=> (not res!3084184) (not e!4585460))))

(assert (=> b!7732400 (= res!3084184 (matchR!10060 (regOne!41648 r!14126) (_1!38098 (get!26043 lt!2667273))))))

(declare-fun b!7732401 () Bool)

(assert (=> b!7732401 (= e!4585459 (not (isDefined!14205 lt!2667273)))))

(assert (= (and d!2339620 res!3084186) b!7732397))

(assert (= (and d!2339620 c!1425648) b!7732395))

(assert (= (and d!2339620 (not c!1425648)) b!7732396))

(assert (= (and b!7732396 c!1425649) b!7732394))

(assert (= (and b!7732396 (not c!1425649)) b!7732393))

(assert (= (and d!2339620 res!3084182) b!7732400))

(assert (= (and b!7732400 res!3084184) b!7732398))

(assert (= (and b!7732398 res!3084183) b!7732399))

(assert (= (and d!2339620 (not res!3084185)) b!7732401))

(declare-fun m!8206186 () Bool)

(assert (=> d!2339620 m!8206186))

(declare-fun m!8206188 () Bool)

(assert (=> d!2339620 m!8206188))

(assert (=> d!2339620 m!8206116))

(assert (=> b!7732401 m!8206186))

(declare-fun m!8206190 () Bool)

(assert (=> b!7732399 m!8206190))

(declare-fun m!8206192 () Bool)

(assert (=> b!7732399 m!8206192))

(assert (=> b!7732398 m!8206190))

(declare-fun m!8206194 () Bool)

(assert (=> b!7732398 m!8206194))

(declare-fun m!8206196 () Bool)

(assert (=> b!7732397 m!8206196))

(assert (=> b!7732400 m!8206190))

(declare-fun m!8206198 () Bool)

(assert (=> b!7732400 m!8206198))

(declare-fun m!8206200 () Bool)

(assert (=> b!7732393 m!8206200))

(assert (=> b!7732393 m!8206200))

(declare-fun m!8206202 () Bool)

(assert (=> b!7732393 m!8206202))

(declare-fun m!8206204 () Bool)

(assert (=> b!7732393 m!8206204))

(assert (=> b!7732393 m!8206200))

(declare-fun m!8206206 () Bool)

(assert (=> b!7732393 m!8206206))

(assert (=> b!7732232 d!2339620))

(declare-fun d!2339630 () Bool)

(declare-fun choose!59321 (Int) Bool)

(assert (=> d!2339630 (= (Exists!4689 lambda!471322) (choose!59321 lambda!471322))))

(declare-fun bs!1963600 () Bool)

(assert (= bs!1963600 d!2339630))

(declare-fun m!8206208 () Bool)

(assert (=> bs!1963600 m!8206208))

(assert (=> b!7732232 d!2339630))

(declare-fun bm!715634 () Bool)

(declare-fun call!715640 () Bool)

(declare-fun c!1425661 () Bool)

(assert (=> bm!715634 (= call!715640 (validRegex!10986 (ite c!1425661 (regOne!41649 r!14126) (regOne!41648 r!14126))))))

(declare-fun b!7732448 () Bool)

(declare-fun e!4585489 () Bool)

(declare-fun e!4585491 () Bool)

(assert (=> b!7732448 (= e!4585489 e!4585491)))

(declare-fun res!3084217 () Bool)

(assert (=> b!7732448 (=> (not res!3084217) (not e!4585491))))

(assert (=> b!7732448 (= res!3084217 call!715640)))

(declare-fun b!7732449 () Bool)

(declare-fun e!4585495 () Bool)

(declare-fun e!4585492 () Bool)

(assert (=> b!7732449 (= e!4585495 e!4585492)))

(declare-fun c!1425660 () Bool)

(assert (=> b!7732449 (= c!1425660 (is-Star!20568 r!14126))))

(declare-fun b!7732450 () Bool)

(declare-fun call!715639 () Bool)

(assert (=> b!7732450 (= e!4585491 call!715639)))

(declare-fun b!7732451 () Bool)

(declare-fun e!4585494 () Bool)

(assert (=> b!7732451 (= e!4585492 e!4585494)))

(assert (=> b!7732451 (= c!1425661 (is-Union!20568 r!14126))))

(declare-fun bm!715635 () Bool)

(declare-fun call!715641 () Bool)

(assert (=> bm!715635 (= call!715639 call!715641)))

(declare-fun d!2339632 () Bool)

(declare-fun res!3084213 () Bool)

(assert (=> d!2339632 (=> res!3084213 e!4585495)))

(assert (=> d!2339632 (= res!3084213 (is-ElementMatch!20568 r!14126))))

(assert (=> d!2339632 (= (validRegex!10986 r!14126) e!4585495)))

(declare-fun b!7732452 () Bool)

(declare-fun e!4585493 () Bool)

(assert (=> b!7732452 (= e!4585492 e!4585493)))

(declare-fun res!3084214 () Bool)

(assert (=> b!7732452 (= res!3084214 (not (nullable!9043 (reg!20897 r!14126))))))

(assert (=> b!7732452 (=> (not res!3084214) (not e!4585493))))

(declare-fun bm!715636 () Bool)

(assert (=> bm!715636 (= call!715641 (validRegex!10986 (ite c!1425660 (reg!20897 r!14126) (ite c!1425661 (regTwo!41649 r!14126) (regTwo!41648 r!14126)))))))

(declare-fun b!7732453 () Bool)

(declare-fun e!4585490 () Bool)

(assert (=> b!7732453 (= e!4585490 call!715639)))

(declare-fun b!7732454 () Bool)

(assert (=> b!7732454 (= e!4585493 call!715641)))

(declare-fun b!7732455 () Bool)

(declare-fun res!3084216 () Bool)

(assert (=> b!7732455 (=> (not res!3084216) (not e!4585490))))

(assert (=> b!7732455 (= res!3084216 call!715640)))

(assert (=> b!7732455 (= e!4585494 e!4585490)))

(declare-fun b!7732456 () Bool)

(declare-fun res!3084215 () Bool)

(assert (=> b!7732456 (=> res!3084215 e!4585489)))

(assert (=> b!7732456 (= res!3084215 (not (is-Concat!29413 r!14126)))))

(assert (=> b!7732456 (= e!4585494 e!4585489)))

(assert (= (and d!2339632 (not res!3084213)) b!7732449))

(assert (= (and b!7732449 c!1425660) b!7732452))

(assert (= (and b!7732449 (not c!1425660)) b!7732451))

(assert (= (and b!7732452 res!3084214) b!7732454))

(assert (= (and b!7732451 c!1425661) b!7732455))

(assert (= (and b!7732451 (not c!1425661)) b!7732456))

(assert (= (and b!7732455 res!3084216) b!7732453))

(assert (= (and b!7732456 (not res!3084215)) b!7732448))

(assert (= (and b!7732448 res!3084217) b!7732450))

(assert (= (or b!7732455 b!7732448) bm!715634))

(assert (= (or b!7732453 b!7732450) bm!715635))

(assert (= (or b!7732454 bm!715635) bm!715636))

(declare-fun m!8206210 () Bool)

(assert (=> bm!715634 m!8206210))

(declare-fun m!8206212 () Bool)

(assert (=> b!7732452 m!8206212))

(declare-fun m!8206214 () Bool)

(assert (=> bm!715636 m!8206214))

(assert (=> start!738026 d!2339632))

(declare-fun bm!715637 () Bool)

(declare-fun call!715643 () Bool)

(declare-fun c!1425663 () Bool)

(assert (=> bm!715637 (= call!715643 (validRegex!10986 (ite c!1425663 (regOne!41649 (regTwo!41648 r!14126)) (regOne!41648 (regTwo!41648 r!14126)))))))

(declare-fun b!7732457 () Bool)

(declare-fun e!4585496 () Bool)

(declare-fun e!4585498 () Bool)

(assert (=> b!7732457 (= e!4585496 e!4585498)))

(declare-fun res!3084222 () Bool)

(assert (=> b!7732457 (=> (not res!3084222) (not e!4585498))))

(assert (=> b!7732457 (= res!3084222 call!715643)))

(declare-fun b!7732458 () Bool)

(declare-fun e!4585502 () Bool)

(declare-fun e!4585499 () Bool)

(assert (=> b!7732458 (= e!4585502 e!4585499)))

(declare-fun c!1425662 () Bool)

(assert (=> b!7732458 (= c!1425662 (is-Star!20568 (regTwo!41648 r!14126)))))

(declare-fun b!7732459 () Bool)

(declare-fun call!715642 () Bool)

(assert (=> b!7732459 (= e!4585498 call!715642)))

(declare-fun b!7732460 () Bool)

(declare-fun e!4585501 () Bool)

(assert (=> b!7732460 (= e!4585499 e!4585501)))

(assert (=> b!7732460 (= c!1425663 (is-Union!20568 (regTwo!41648 r!14126)))))

(declare-fun bm!715638 () Bool)

(declare-fun call!715644 () Bool)

(assert (=> bm!715638 (= call!715642 call!715644)))

(declare-fun d!2339634 () Bool)

(declare-fun res!3084218 () Bool)

(assert (=> d!2339634 (=> res!3084218 e!4585502)))

(assert (=> d!2339634 (= res!3084218 (is-ElementMatch!20568 (regTwo!41648 r!14126)))))

(assert (=> d!2339634 (= (validRegex!10986 (regTwo!41648 r!14126)) e!4585502)))

(declare-fun b!7732461 () Bool)

(declare-fun e!4585500 () Bool)

(assert (=> b!7732461 (= e!4585499 e!4585500)))

(declare-fun res!3084219 () Bool)

(assert (=> b!7732461 (= res!3084219 (not (nullable!9043 (reg!20897 (regTwo!41648 r!14126)))))))

(assert (=> b!7732461 (=> (not res!3084219) (not e!4585500))))

(declare-fun bm!715639 () Bool)

(assert (=> bm!715639 (= call!715644 (validRegex!10986 (ite c!1425662 (reg!20897 (regTwo!41648 r!14126)) (ite c!1425663 (regTwo!41649 (regTwo!41648 r!14126)) (regTwo!41648 (regTwo!41648 r!14126))))))))

(declare-fun b!7732462 () Bool)

(declare-fun e!4585497 () Bool)

(assert (=> b!7732462 (= e!4585497 call!715642)))

(declare-fun b!7732463 () Bool)

(assert (=> b!7732463 (= e!4585500 call!715644)))

(declare-fun b!7732464 () Bool)

(declare-fun res!3084221 () Bool)

(assert (=> b!7732464 (=> (not res!3084221) (not e!4585497))))

(assert (=> b!7732464 (= res!3084221 call!715643)))

(assert (=> b!7732464 (= e!4585501 e!4585497)))

(declare-fun b!7732465 () Bool)

(declare-fun res!3084220 () Bool)

(assert (=> b!7732465 (=> res!3084220 e!4585496)))

(assert (=> b!7732465 (= res!3084220 (not (is-Concat!29413 (regTwo!41648 r!14126))))))

(assert (=> b!7732465 (= e!4585501 e!4585496)))

(assert (= (and d!2339634 (not res!3084218)) b!7732458))

(assert (= (and b!7732458 c!1425662) b!7732461))

(assert (= (and b!7732458 (not c!1425662)) b!7732460))

(assert (= (and b!7732461 res!3084219) b!7732463))

(assert (= (and b!7732460 c!1425663) b!7732464))

(assert (= (and b!7732460 (not c!1425663)) b!7732465))

(assert (= (and b!7732464 res!3084221) b!7732462))

(assert (= (and b!7732465 (not res!3084220)) b!7732457))

(assert (= (and b!7732457 res!3084222) b!7732459))

(assert (= (or b!7732464 b!7732457) bm!715637))

(assert (= (or b!7732462 b!7732459) bm!715638))

(assert (= (or b!7732463 bm!715638) bm!715639))

(declare-fun m!8206216 () Bool)

(assert (=> bm!715637 m!8206216))

(declare-fun m!8206218 () Bool)

(assert (=> b!7732461 m!8206218))

(declare-fun m!8206220 () Bool)

(assert (=> bm!715639 m!8206220))

(assert (=> b!7732236 d!2339634))

(declare-fun bm!715640 () Bool)

(declare-fun call!715646 () Bool)

(declare-fun c!1425665 () Bool)

(assert (=> bm!715640 (= call!715646 (validRegex!10986 (ite c!1425665 (regOne!41649 (regOne!41648 r!14126)) (regOne!41648 (regOne!41648 r!14126)))))))

(declare-fun b!7732466 () Bool)

(declare-fun e!4585503 () Bool)

(declare-fun e!4585505 () Bool)

(assert (=> b!7732466 (= e!4585503 e!4585505)))

(declare-fun res!3084227 () Bool)

(assert (=> b!7732466 (=> (not res!3084227) (not e!4585505))))

(assert (=> b!7732466 (= res!3084227 call!715646)))

(declare-fun b!7732467 () Bool)

(declare-fun e!4585509 () Bool)

(declare-fun e!4585506 () Bool)

(assert (=> b!7732467 (= e!4585509 e!4585506)))

(declare-fun c!1425664 () Bool)

(assert (=> b!7732467 (= c!1425664 (is-Star!20568 (regOne!41648 r!14126)))))

(declare-fun b!7732468 () Bool)

(declare-fun call!715645 () Bool)

(assert (=> b!7732468 (= e!4585505 call!715645)))

(declare-fun b!7732469 () Bool)

(declare-fun e!4585508 () Bool)

(assert (=> b!7732469 (= e!4585506 e!4585508)))

(assert (=> b!7732469 (= c!1425665 (is-Union!20568 (regOne!41648 r!14126)))))

(declare-fun bm!715641 () Bool)

(declare-fun call!715647 () Bool)

(assert (=> bm!715641 (= call!715645 call!715647)))

(declare-fun d!2339636 () Bool)

(declare-fun res!3084223 () Bool)

(assert (=> d!2339636 (=> res!3084223 e!4585509)))

(assert (=> d!2339636 (= res!3084223 (is-ElementMatch!20568 (regOne!41648 r!14126)))))

(assert (=> d!2339636 (= (validRegex!10986 (regOne!41648 r!14126)) e!4585509)))

(declare-fun b!7732470 () Bool)

(declare-fun e!4585507 () Bool)

(assert (=> b!7732470 (= e!4585506 e!4585507)))

(declare-fun res!3084224 () Bool)

(assert (=> b!7732470 (= res!3084224 (not (nullable!9043 (reg!20897 (regOne!41648 r!14126)))))))

(assert (=> b!7732470 (=> (not res!3084224) (not e!4585507))))

(declare-fun bm!715642 () Bool)

(assert (=> bm!715642 (= call!715647 (validRegex!10986 (ite c!1425664 (reg!20897 (regOne!41648 r!14126)) (ite c!1425665 (regTwo!41649 (regOne!41648 r!14126)) (regTwo!41648 (regOne!41648 r!14126))))))))

(declare-fun b!7732471 () Bool)

(declare-fun e!4585504 () Bool)

(assert (=> b!7732471 (= e!4585504 call!715645)))

(declare-fun b!7732472 () Bool)

(assert (=> b!7732472 (= e!4585507 call!715647)))

(declare-fun b!7732473 () Bool)

(declare-fun res!3084226 () Bool)

(assert (=> b!7732473 (=> (not res!3084226) (not e!4585504))))

(assert (=> b!7732473 (= res!3084226 call!715646)))

(assert (=> b!7732473 (= e!4585508 e!4585504)))

(declare-fun b!7732474 () Bool)

(declare-fun res!3084225 () Bool)

(assert (=> b!7732474 (=> res!3084225 e!4585503)))

(assert (=> b!7732474 (= res!3084225 (not (is-Concat!29413 (regOne!41648 r!14126))))))

(assert (=> b!7732474 (= e!4585508 e!4585503)))

(assert (= (and d!2339636 (not res!3084223)) b!7732467))

(assert (= (and b!7732467 c!1425664) b!7732470))

(assert (= (and b!7732467 (not c!1425664)) b!7732469))

(assert (= (and b!7732470 res!3084224) b!7732472))

(assert (= (and b!7732469 c!1425665) b!7732473))

(assert (= (and b!7732469 (not c!1425665)) b!7732474))

(assert (= (and b!7732473 res!3084226) b!7732471))

(assert (= (and b!7732474 (not res!3084225)) b!7732466))

(assert (= (and b!7732466 res!3084227) b!7732468))

(assert (= (or b!7732473 b!7732466) bm!715640))

(assert (= (or b!7732471 b!7732468) bm!715641))

(assert (= (or b!7732472 bm!715641) bm!715642))

(declare-fun m!8206222 () Bool)

(assert (=> bm!715640 m!8206222))

(declare-fun m!8206224 () Bool)

(assert (=> b!7732470 m!8206224))

(declare-fun m!8206226 () Bool)

(assert (=> bm!715642 m!8206226))

(assert (=> b!7732230 d!2339636))

(declare-fun d!2339638 () Bool)

(assert (=> d!2339638 (= (get!26043 lt!2667247) (v!54723 lt!2667247))))

(assert (=> b!7732230 d!2339638))

(declare-fun b!7732484 () Bool)

(declare-fun e!4585514 () List!73415)

(assert (=> b!7732484 (= e!4585514 (Cons!73291 (h!79739 (_1!38098 lt!2667246)) (++!17767 (t!388150 (_1!38098 lt!2667246)) (_2!38098 lt!2667246))))))

(declare-fun b!7732483 () Bool)

(assert (=> b!7732483 (= e!4585514 (_2!38098 lt!2667246))))

(declare-fun b!7732485 () Bool)

(declare-fun res!3084233 () Bool)

(declare-fun e!4585515 () Bool)

(assert (=> b!7732485 (=> (not res!3084233) (not e!4585515))))

(declare-fun lt!2667280 () List!73415)

(declare-fun size!42630 (List!73415) Int)

(assert (=> b!7732485 (= res!3084233 (= (size!42630 lt!2667280) (+ (size!42630 (_1!38098 lt!2667246)) (size!42630 (_2!38098 lt!2667246)))))))

(declare-fun d!2339640 () Bool)

(assert (=> d!2339640 e!4585515))

(declare-fun res!3084232 () Bool)

(assert (=> d!2339640 (=> (not res!3084232) (not e!4585515))))

(declare-fun content!15527 (List!73415) (Set C!41462))

(assert (=> d!2339640 (= res!3084232 (= (content!15527 lt!2667280) (set.union (content!15527 (_1!38098 lt!2667246)) (content!15527 (_2!38098 lt!2667246)))))))

(assert (=> d!2339640 (= lt!2667280 e!4585514)))

(declare-fun c!1425668 () Bool)

(assert (=> d!2339640 (= c!1425668 (is-Nil!73291 (_1!38098 lt!2667246)))))

(assert (=> d!2339640 (= (++!17767 (_1!38098 lt!2667246) (_2!38098 lt!2667246)) lt!2667280)))

(declare-fun b!7732486 () Bool)

(assert (=> b!7732486 (= e!4585515 (or (not (= (_2!38098 lt!2667246) Nil!73291)) (= lt!2667280 (_1!38098 lt!2667246))))))

(assert (= (and d!2339640 c!1425668) b!7732483))

(assert (= (and d!2339640 (not c!1425668)) b!7732484))

(assert (= (and d!2339640 res!3084232) b!7732485))

(assert (= (and b!7732485 res!3084233) b!7732486))

(declare-fun m!8206228 () Bool)

(assert (=> b!7732484 m!8206228))

(declare-fun m!8206230 () Bool)

(assert (=> b!7732485 m!8206230))

(declare-fun m!8206232 () Bool)

(assert (=> b!7732485 m!8206232))

(declare-fun m!8206234 () Bool)

(assert (=> b!7732485 m!8206234))

(declare-fun m!8206236 () Bool)

(assert (=> d!2339640 m!8206236))

(declare-fun m!8206238 () Bool)

(assert (=> d!2339640 m!8206238))

(declare-fun m!8206240 () Bool)

(assert (=> d!2339640 m!8206240))

(assert (=> b!7732233 d!2339640))

(declare-fun b!7732513 () Bool)

(declare-fun e!4585525 () Bool)

(declare-fun tp!2268928 () Bool)

(assert (=> b!7732513 (= e!4585525 tp!2268928)))

(declare-fun b!7732511 () Bool)

(assert (=> b!7732511 (= e!4585525 tp_is_empty!51491)))

(declare-fun b!7732512 () Bool)

(declare-fun tp!2268931 () Bool)

(declare-fun tp!2268932 () Bool)

(assert (=> b!7732512 (= e!4585525 (and tp!2268931 tp!2268932))))

(declare-fun b!7732514 () Bool)

(declare-fun tp!2268929 () Bool)

(declare-fun tp!2268930 () Bool)

(assert (=> b!7732514 (= e!4585525 (and tp!2268929 tp!2268930))))

(assert (=> b!7732237 (= tp!2268897 e!4585525)))

(assert (= (and b!7732237 (is-ElementMatch!20568 (regOne!41648 r!14126))) b!7732511))

(assert (= (and b!7732237 (is-Concat!29413 (regOne!41648 r!14126))) b!7732512))

(assert (= (and b!7732237 (is-Star!20568 (regOne!41648 r!14126))) b!7732513))

(assert (= (and b!7732237 (is-Union!20568 (regOne!41648 r!14126))) b!7732514))

(declare-fun b!7732517 () Bool)

(declare-fun e!4585526 () Bool)

(declare-fun tp!2268933 () Bool)

(assert (=> b!7732517 (= e!4585526 tp!2268933)))

(declare-fun b!7732515 () Bool)

(assert (=> b!7732515 (= e!4585526 tp_is_empty!51491)))

(declare-fun b!7732516 () Bool)

(declare-fun tp!2268936 () Bool)

(declare-fun tp!2268937 () Bool)

(assert (=> b!7732516 (= e!4585526 (and tp!2268936 tp!2268937))))

(declare-fun b!7732518 () Bool)

(declare-fun tp!2268934 () Bool)

(declare-fun tp!2268935 () Bool)

(assert (=> b!7732518 (= e!4585526 (and tp!2268934 tp!2268935))))

(assert (=> b!7732237 (= tp!2268896 e!4585526)))

(assert (= (and b!7732237 (is-ElementMatch!20568 (regTwo!41648 r!14126))) b!7732515))

(assert (= (and b!7732237 (is-Concat!29413 (regTwo!41648 r!14126))) b!7732516))

(assert (= (and b!7732237 (is-Star!20568 (regTwo!41648 r!14126))) b!7732517))

(assert (= (and b!7732237 (is-Union!20568 (regTwo!41648 r!14126))) b!7732518))

(declare-fun b!7732523 () Bool)

(declare-fun e!4585529 () Bool)

(declare-fun tp!2268940 () Bool)

(assert (=> b!7732523 (= e!4585529 (and tp_is_empty!51491 tp!2268940))))

(assert (=> b!7732231 (= tp!2268895 e!4585529)))

(assert (= (and b!7732231 (is-Cons!73291 (t!388150 s!9605))) b!7732523))

(declare-fun b!7732526 () Bool)

(declare-fun e!4585530 () Bool)

(declare-fun tp!2268941 () Bool)

(assert (=> b!7732526 (= e!4585530 tp!2268941)))

(declare-fun b!7732524 () Bool)

(assert (=> b!7732524 (= e!4585530 tp_is_empty!51491)))

(declare-fun b!7732525 () Bool)

(declare-fun tp!2268944 () Bool)

(declare-fun tp!2268945 () Bool)

(assert (=> b!7732525 (= e!4585530 (and tp!2268944 tp!2268945))))

(declare-fun b!7732527 () Bool)

(declare-fun tp!2268942 () Bool)

(declare-fun tp!2268943 () Bool)

(assert (=> b!7732527 (= e!4585530 (and tp!2268942 tp!2268943))))

(assert (=> b!7732234 (= tp!2268898 e!4585530)))

(assert (= (and b!7732234 (is-ElementMatch!20568 (reg!20897 r!14126))) b!7732524))

(assert (= (and b!7732234 (is-Concat!29413 (reg!20897 r!14126))) b!7732525))

(assert (= (and b!7732234 (is-Star!20568 (reg!20897 r!14126))) b!7732526))

(assert (= (and b!7732234 (is-Union!20568 (reg!20897 r!14126))) b!7732527))

(declare-fun b!7732530 () Bool)

(declare-fun e!4585531 () Bool)

(declare-fun tp!2268946 () Bool)

(assert (=> b!7732530 (= e!4585531 tp!2268946)))

(declare-fun b!7732528 () Bool)

(assert (=> b!7732528 (= e!4585531 tp_is_empty!51491)))

(declare-fun b!7732529 () Bool)

(declare-fun tp!2268949 () Bool)

(declare-fun tp!2268950 () Bool)

(assert (=> b!7732529 (= e!4585531 (and tp!2268949 tp!2268950))))

(declare-fun b!7732531 () Bool)

(declare-fun tp!2268947 () Bool)

(declare-fun tp!2268948 () Bool)

(assert (=> b!7732531 (= e!4585531 (and tp!2268947 tp!2268948))))

(assert (=> b!7732228 (= tp!2268899 e!4585531)))

(assert (= (and b!7732228 (is-ElementMatch!20568 (regOne!41649 r!14126))) b!7732528))

(assert (= (and b!7732228 (is-Concat!29413 (regOne!41649 r!14126))) b!7732529))

(assert (= (and b!7732228 (is-Star!20568 (regOne!41649 r!14126))) b!7732530))

(assert (= (and b!7732228 (is-Union!20568 (regOne!41649 r!14126))) b!7732531))

(declare-fun b!7732534 () Bool)

(declare-fun e!4585532 () Bool)

(declare-fun tp!2268951 () Bool)

(assert (=> b!7732534 (= e!4585532 tp!2268951)))

(declare-fun b!7732532 () Bool)

(assert (=> b!7732532 (= e!4585532 tp_is_empty!51491)))

(declare-fun b!7732533 () Bool)

(declare-fun tp!2268954 () Bool)

(declare-fun tp!2268955 () Bool)

(assert (=> b!7732533 (= e!4585532 (and tp!2268954 tp!2268955))))

(declare-fun b!7732535 () Bool)

(declare-fun tp!2268952 () Bool)

(declare-fun tp!2268953 () Bool)

(assert (=> b!7732535 (= e!4585532 (and tp!2268952 tp!2268953))))

(assert (=> b!7732228 (= tp!2268894 e!4585532)))

(assert (= (and b!7732228 (is-ElementMatch!20568 (regTwo!41649 r!14126))) b!7732532))

(assert (= (and b!7732228 (is-Concat!29413 (regTwo!41649 r!14126))) b!7732533))

(assert (= (and b!7732228 (is-Star!20568 (regTwo!41649 r!14126))) b!7732534))

(assert (= (and b!7732228 (is-Union!20568 (regTwo!41649 r!14126))) b!7732535))

(push 1)

(assert (not b!7732526))

(assert (not bm!715639))

(assert (not b!7732399))

(assert (not b!7732326))

(assert (not b!7732527))

(assert (not b!7732523))

(assert (not b!7732401))

(assert (not b!7732514))

(assert (not d!2339630))

(assert (not b!7732452))

(assert (not d!2339620))

(assert (not b!7732327))

(assert (not b!7732319))

(assert (not b!7732484))

(assert (not b!7732518))

(assert (not b!7732525))

(assert (not b!7732485))

(assert (not b!7732517))

(assert (not b!7732529))

(assert (not b!7732393))

(assert (not b!7732325))

(assert (not b!7732516))

(assert (not b!7732397))

(assert (not bm!715640))

(assert (not d!2339612))

(assert (not b!7732324))

(assert (not b!7732323))

(assert (not d!2339618))

(assert (not b!7732513))

(assert (not bm!715634))

(assert (not bm!715642))

(assert (not bm!715637))

(assert (not bm!715610))

(assert (not b!7732398))

(assert (not b!7732512))

(assert (not bm!715636))

(assert tp_is_empty!51491)

(assert (not b!7732470))

(assert (not b!7732400))

(assert (not b!7732531))

(assert (not b!7732535))

(assert (not b!7732530))

(assert (not b!7732533))

(assert (not d!2339616))

(assert (not b!7732461))

(assert (not b!7732534))

(assert (not d!2339640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

