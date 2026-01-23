; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79216 () Bool)

(assert start!79216)

(declare-fun b!876330 () Bool)

(assert (=> b!876330 true))

(assert (=> b!876330 true))

(declare-fun lambda!26528 () Int)

(declare-fun lambda!26527 () Int)

(assert (=> b!876330 (not (= lambda!26528 lambda!26527))))

(assert (=> b!876330 true))

(assert (=> b!876330 true))

(declare-fun b!876320 () Bool)

(declare-fun e!575910 () Bool)

(declare-fun e!575907 () Bool)

(assert (=> b!876320 (= e!575910 (not e!575907))))

(declare-fun res!398522 () Bool)

(assert (=> b!876320 (=> res!398522 e!575907)))

(declare-fun lt!329888 () Bool)

(declare-datatypes ((C!5022 0))(
  ( (C!5023 (val!2759 Int)) )
))
(declare-datatypes ((Regex!2226 0))(
  ( (ElementMatch!2226 (c!141669 C!5022)) (Concat!4059 (regOne!4964 Regex!2226) (regTwo!4964 Regex!2226)) (EmptyExpr!2226) (Star!2226 (reg!2555 Regex!2226)) (EmptyLang!2226) (Union!2226 (regOne!4965 Regex!2226) (regTwo!4965 Regex!2226)) )
))
(declare-fun r!15766 () Regex!2226)

(assert (=> b!876320 (= res!398522 (or (not lt!329888) (not (is-Concat!4059 r!15766)) (not (is-EmptyExpr!2226 (regOne!4964 r!15766)))))))

(declare-datatypes ((List!9456 0))(
  ( (Nil!9440) (Cons!9440 (h!14841 C!5022) (t!100502 List!9456)) )
))
(declare-fun s!10566 () List!9456)

(declare-fun matchRSpec!27 (Regex!2226 List!9456) Bool)

(assert (=> b!876320 (= lt!329888 (matchRSpec!27 r!15766 s!10566))))

(declare-fun matchR!764 (Regex!2226 List!9456) Bool)

(assert (=> b!876320 (= lt!329888 (matchR!764 r!15766 s!10566))))

(declare-datatypes ((Unit!14031 0))(
  ( (Unit!14032) )
))
(declare-fun lt!329889 () Unit!14031)

(declare-fun mainMatchTheorem!27 (Regex!2226 List!9456) Unit!14031)

(assert (=> b!876320 (= lt!329889 (mainMatchTheorem!27 r!15766 s!10566))))

(declare-fun b!876321 () Bool)

(declare-fun e!575911 () Bool)

(declare-fun e!575909 () Bool)

(assert (=> b!876321 (= e!575911 e!575909)))

(declare-fun res!398519 () Bool)

(assert (=> b!876321 (=> res!398519 e!575909)))

(declare-fun validRegex!695 (Regex!2226) Bool)

(assert (=> b!876321 (= res!398519 (not (validRegex!695 (regTwo!4964 r!15766))))))

(declare-datatypes ((tuple2!10550 0))(
  ( (tuple2!10551 (_1!6101 List!9456) (_2!6101 List!9456)) )
))
(declare-fun lt!329886 () tuple2!10550)

(assert (=> b!876321 (matchRSpec!27 (regTwo!4964 r!15766) (_2!6101 lt!329886))))

(declare-fun lt!329884 () Unit!14031)

(assert (=> b!876321 (= lt!329884 (mainMatchTheorem!27 (regTwo!4964 r!15766) (_2!6101 lt!329886)))))

(declare-fun b!876322 () Bool)

(declare-fun res!398521 () Bool)

(assert (=> b!876322 (=> res!398521 e!575911)))

(assert (=> b!876322 (= res!398521 (not (matchR!764 (regTwo!4964 r!15766) (_2!6101 lt!329886))))))

(declare-fun b!876324 () Bool)

(declare-fun e!575906 () Bool)

(declare-fun tp!277134 () Bool)

(assert (=> b!876324 (= e!575906 tp!277134)))

(declare-fun b!876325 () Bool)

(declare-fun e!575908 () Bool)

(declare-fun tp_is_empty!4095 () Bool)

(declare-fun tp!277135 () Bool)

(assert (=> b!876325 (= e!575908 (and tp_is_empty!4095 tp!277135))))

(declare-fun b!876326 () Bool)

(declare-fun removeUselessConcat!5 (Regex!2226) Regex!2226)

(assert (=> b!876326 (= e!575909 (validRegex!695 (removeUselessConcat!5 r!15766)))))

(assert (=> b!876326 (matchR!764 (removeUselessConcat!5 (regTwo!4964 r!15766)) (_2!6101 lt!329886))))

(declare-fun lt!329883 () Unit!14031)

(declare-fun lemmaRemoveUselessConcatSound!3 (Regex!2226 List!9456) Unit!14031)

(assert (=> b!876326 (= lt!329883 (lemmaRemoveUselessConcatSound!3 (regTwo!4964 r!15766) (_2!6101 lt!329886)))))

(declare-fun b!876327 () Bool)

(declare-fun tp!277137 () Bool)

(declare-fun tp!277136 () Bool)

(assert (=> b!876327 (= e!575906 (and tp!277137 tp!277136))))

(declare-fun b!876328 () Bool)

(assert (=> b!876328 (= e!575906 tp_is_empty!4095)))

(declare-fun b!876329 () Bool)

(declare-fun e!575912 () Bool)

(assert (=> b!876329 (= e!575912 e!575911)))

(declare-fun res!398518 () Bool)

(assert (=> b!876329 (=> res!398518 e!575911)))

(declare-fun isEmpty!5629 (List!9456) Bool)

(assert (=> b!876329 (= res!398518 (not (isEmpty!5629 (_1!6101 lt!329886))))))

(declare-datatypes ((Option!1917 0))(
  ( (None!1916) (Some!1916 (v!19333 tuple2!10550)) )
))
(declare-fun lt!329882 () Option!1917)

(declare-fun get!2906 (Option!1917) tuple2!10550)

(assert (=> b!876329 (= lt!329886 (get!2906 lt!329882))))

(assert (=> b!876330 (= e!575907 e!575912)))

(declare-fun res!398520 () Bool)

(assert (=> b!876330 (=> res!398520 e!575912)))

(assert (=> b!876330 (= res!398520 (isEmpty!5629 s!10566))))

(declare-fun Exists!25 (Int) Bool)

(assert (=> b!876330 (= (Exists!25 lambda!26527) (Exists!25 lambda!26528))))

(declare-fun lt!329887 () Unit!14031)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!21 (Regex!2226 Regex!2226 List!9456) Unit!14031)

(assert (=> b!876330 (= lt!329887 (lemmaExistCutMatchRandMatchRSpecEquivalent!21 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566))))

(declare-fun isDefined!1559 (Option!1917) Bool)

(assert (=> b!876330 (= (isDefined!1559 lt!329882) (Exists!25 lambda!26527))))

(declare-fun findConcatSeparation!23 (Regex!2226 Regex!2226 List!9456 List!9456 List!9456) Option!1917)

(assert (=> b!876330 (= lt!329882 (findConcatSeparation!23 EmptyExpr!2226 (regTwo!4964 r!15766) Nil!9440 s!10566 s!10566))))

(declare-fun lt!329885 () Unit!14031)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!23 (Regex!2226 Regex!2226 List!9456) Unit!14031)

(assert (=> b!876330 (= lt!329885 (lemmaFindConcatSeparationEquivalentToExists!23 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566))))

(declare-fun res!398517 () Bool)

(assert (=> start!79216 (=> (not res!398517) (not e!575910))))

(assert (=> start!79216 (= res!398517 (validRegex!695 r!15766))))

(assert (=> start!79216 e!575910))

(assert (=> start!79216 e!575906))

(assert (=> start!79216 e!575908))

(declare-fun b!876323 () Bool)

(declare-fun tp!277138 () Bool)

(declare-fun tp!277133 () Bool)

(assert (=> b!876323 (= e!575906 (and tp!277138 tp!277133))))

(assert (= (and start!79216 res!398517) b!876320))

(assert (= (and b!876320 (not res!398522)) b!876330))

(assert (= (and b!876330 (not res!398520)) b!876329))

(assert (= (and b!876329 (not res!398518)) b!876322))

(assert (= (and b!876322 (not res!398521)) b!876321))

(assert (= (and b!876321 (not res!398519)) b!876326))

(assert (= (and start!79216 (is-ElementMatch!2226 r!15766)) b!876328))

(assert (= (and start!79216 (is-Concat!4059 r!15766)) b!876327))

(assert (= (and start!79216 (is-Star!2226 r!15766)) b!876324))

(assert (= (and start!79216 (is-Union!2226 r!15766)) b!876323))

(assert (= (and start!79216 (is-Cons!9440 s!10566)) b!876325))

(declare-fun m!1127217 () Bool)

(assert (=> b!876326 m!1127217))

(declare-fun m!1127219 () Bool)

(assert (=> b!876326 m!1127219))

(declare-fun m!1127221 () Bool)

(assert (=> b!876326 m!1127221))

(assert (=> b!876326 m!1127217))

(declare-fun m!1127223 () Bool)

(assert (=> b!876326 m!1127223))

(assert (=> b!876326 m!1127219))

(declare-fun m!1127225 () Bool)

(assert (=> b!876326 m!1127225))

(declare-fun m!1127227 () Bool)

(assert (=> b!876321 m!1127227))

(declare-fun m!1127229 () Bool)

(assert (=> b!876321 m!1127229))

(declare-fun m!1127231 () Bool)

(assert (=> b!876321 m!1127231))

(declare-fun m!1127233 () Bool)

(assert (=> b!876320 m!1127233))

(declare-fun m!1127235 () Bool)

(assert (=> b!876320 m!1127235))

(declare-fun m!1127237 () Bool)

(assert (=> b!876320 m!1127237))

(declare-fun m!1127239 () Bool)

(assert (=> b!876322 m!1127239))

(declare-fun m!1127241 () Bool)

(assert (=> start!79216 m!1127241))

(declare-fun m!1127243 () Bool)

(assert (=> b!876330 m!1127243))

(declare-fun m!1127245 () Bool)

(assert (=> b!876330 m!1127245))

(declare-fun m!1127247 () Bool)

(assert (=> b!876330 m!1127247))

(declare-fun m!1127249 () Bool)

(assert (=> b!876330 m!1127249))

(declare-fun m!1127251 () Bool)

(assert (=> b!876330 m!1127251))

(assert (=> b!876330 m!1127243))

(declare-fun m!1127253 () Bool)

(assert (=> b!876330 m!1127253))

(declare-fun m!1127255 () Bool)

(assert (=> b!876330 m!1127255))

(declare-fun m!1127257 () Bool)

(assert (=> b!876329 m!1127257))

(declare-fun m!1127259 () Bool)

(assert (=> b!876329 m!1127259))

(push 1)

(assert tp_is_empty!4095)

(assert (not b!876326))

(assert (not b!876324))

(assert (not b!876327))

(assert (not start!79216))

(assert (not b!876322))

(assert (not b!876320))

(assert (not b!876321))

(assert (not b!876329))

(assert (not b!876325))

(assert (not b!876330))

(assert (not b!876323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!275889 () Bool)

(assert (=> d!275889 (= (isEmpty!5629 (_1!6101 lt!329886)) (is-Nil!9440 (_1!6101 lt!329886)))))

(assert (=> b!876329 d!275889))

(declare-fun d!275891 () Bool)

(assert (=> d!275891 (= (get!2906 lt!329882) (v!19333 lt!329882))))

(assert (=> b!876329 d!275891))

(declare-fun b!876412 () Bool)

(declare-fun e!575960 () Bool)

(declare-fun lt!329916 () Bool)

(declare-fun call!50946 () Bool)

(assert (=> b!876412 (= e!575960 (= lt!329916 call!50946))))

(declare-fun b!876414 () Bool)

(declare-fun res!398575 () Bool)

(declare-fun e!575959 () Bool)

(assert (=> b!876414 (=> res!398575 e!575959)))

(declare-fun tail!1086 (List!9456) List!9456)

(assert (=> b!876414 (= res!398575 (not (isEmpty!5629 (tail!1086 (_2!6101 lt!329886)))))))

(declare-fun b!876415 () Bool)

(declare-fun e!575955 () Bool)

(assert (=> b!876415 (= e!575955 (not lt!329916))))

(declare-fun b!876416 () Bool)

(declare-fun res!398570 () Bool)

(declare-fun e!575956 () Bool)

(assert (=> b!876416 (=> (not res!398570) (not e!575956))))

(assert (=> b!876416 (= res!398570 (not call!50946))))

(declare-fun b!876417 () Bool)

(declare-fun e!575958 () Bool)

(declare-fun e!575957 () Bool)

(assert (=> b!876417 (= e!575958 e!575957)))

(declare-fun res!398571 () Bool)

(assert (=> b!876417 (=> (not res!398571) (not e!575957))))

(assert (=> b!876417 (= res!398571 (not lt!329916))))

(declare-fun bm!50941 () Bool)

(assert (=> bm!50941 (= call!50946 (isEmpty!5629 (_2!6101 lt!329886)))))

(declare-fun b!876418 () Bool)

(declare-fun res!398573 () Bool)

(assert (=> b!876418 (=> res!398573 e!575958)))

(assert (=> b!876418 (= res!398573 (not (is-ElementMatch!2226 (regTwo!4964 r!15766))))))

(assert (=> b!876418 (= e!575955 e!575958)))

(declare-fun b!876419 () Bool)

(declare-fun e!575954 () Bool)

(declare-fun derivativeStep!371 (Regex!2226 C!5022) Regex!2226)

(declare-fun head!1524 (List!9456) C!5022)

(assert (=> b!876419 (= e!575954 (matchR!764 (derivativeStep!371 (regTwo!4964 r!15766) (head!1524 (_2!6101 lt!329886))) (tail!1086 (_2!6101 lt!329886))))))

(declare-fun b!876413 () Bool)

(assert (=> b!876413 (= e!575956 (= (head!1524 (_2!6101 lt!329886)) (c!141669 (regTwo!4964 r!15766))))))

(declare-fun d!275893 () Bool)

(assert (=> d!275893 e!575960))

(declare-fun c!141679 () Bool)

(assert (=> d!275893 (= c!141679 (is-EmptyExpr!2226 (regTwo!4964 r!15766)))))

(assert (=> d!275893 (= lt!329916 e!575954)))

(declare-fun c!141677 () Bool)

(assert (=> d!275893 (= c!141677 (isEmpty!5629 (_2!6101 lt!329886)))))

(assert (=> d!275893 (validRegex!695 (regTwo!4964 r!15766))))

(assert (=> d!275893 (= (matchR!764 (regTwo!4964 r!15766) (_2!6101 lt!329886)) lt!329916)))

(declare-fun b!876420 () Bool)

(declare-fun res!398569 () Bool)

(assert (=> b!876420 (=> res!398569 e!575958)))

(assert (=> b!876420 (= res!398569 e!575956)))

(declare-fun res!398576 () Bool)

(assert (=> b!876420 (=> (not res!398576) (not e!575956))))

(assert (=> b!876420 (= res!398576 lt!329916)))

(declare-fun b!876421 () Bool)

(declare-fun nullable!557 (Regex!2226) Bool)

(assert (=> b!876421 (= e!575954 (nullable!557 (regTwo!4964 r!15766)))))

(declare-fun b!876422 () Bool)

(assert (=> b!876422 (= e!575960 e!575955)))

(declare-fun c!141678 () Bool)

(assert (=> b!876422 (= c!141678 (is-EmptyLang!2226 (regTwo!4964 r!15766)))))

(declare-fun b!876423 () Bool)

(assert (=> b!876423 (= e!575959 (not (= (head!1524 (_2!6101 lt!329886)) (c!141669 (regTwo!4964 r!15766)))))))

(declare-fun b!876424 () Bool)

(declare-fun res!398574 () Bool)

(assert (=> b!876424 (=> (not res!398574) (not e!575956))))

(assert (=> b!876424 (= res!398574 (isEmpty!5629 (tail!1086 (_2!6101 lt!329886))))))

(declare-fun b!876425 () Bool)

(assert (=> b!876425 (= e!575957 e!575959)))

(declare-fun res!398572 () Bool)

(assert (=> b!876425 (=> res!398572 e!575959)))

(assert (=> b!876425 (= res!398572 call!50946)))

(assert (= (and d!275893 c!141677) b!876421))

(assert (= (and d!275893 (not c!141677)) b!876419))

(assert (= (and d!275893 c!141679) b!876412))

(assert (= (and d!275893 (not c!141679)) b!876422))

(assert (= (and b!876422 c!141678) b!876415))

(assert (= (and b!876422 (not c!141678)) b!876418))

(assert (= (and b!876418 (not res!398573)) b!876420))

(assert (= (and b!876420 res!398576) b!876416))

(assert (= (and b!876416 res!398570) b!876424))

(assert (= (and b!876424 res!398574) b!876413))

(assert (= (and b!876420 (not res!398569)) b!876417))

(assert (= (and b!876417 res!398571) b!876425))

(assert (= (and b!876425 (not res!398572)) b!876414))

(assert (= (and b!876414 (not res!398575)) b!876423))

(assert (= (or b!876412 b!876416 b!876425) bm!50941))

(declare-fun m!1127305 () Bool)

(assert (=> d!275893 m!1127305))

(assert (=> d!275893 m!1127227))

(declare-fun m!1127307 () Bool)

(assert (=> b!876414 m!1127307))

(assert (=> b!876414 m!1127307))

(declare-fun m!1127309 () Bool)

(assert (=> b!876414 m!1127309))

(declare-fun m!1127311 () Bool)

(assert (=> b!876419 m!1127311))

(assert (=> b!876419 m!1127311))

(declare-fun m!1127313 () Bool)

(assert (=> b!876419 m!1127313))

(assert (=> b!876419 m!1127307))

(assert (=> b!876419 m!1127313))

(assert (=> b!876419 m!1127307))

(declare-fun m!1127315 () Bool)

(assert (=> b!876419 m!1127315))

(assert (=> b!876413 m!1127311))

(declare-fun m!1127317 () Bool)

(assert (=> b!876421 m!1127317))

(assert (=> bm!50941 m!1127305))

(assert (=> b!876424 m!1127307))

(assert (=> b!876424 m!1127307))

(assert (=> b!876424 m!1127309))

(assert (=> b!876423 m!1127311))

(assert (=> b!876322 d!275893))

(declare-fun d!275897 () Bool)

(assert (=> d!275897 (= (matchR!764 (regTwo!4964 r!15766) (_2!6101 lt!329886)) (matchR!764 (removeUselessConcat!5 (regTwo!4964 r!15766)) (_2!6101 lt!329886)))))

(declare-fun lt!329919 () Unit!14031)

(declare-fun choose!5163 (Regex!2226 List!9456) Unit!14031)

(assert (=> d!275897 (= lt!329919 (choose!5163 (regTwo!4964 r!15766) (_2!6101 lt!329886)))))

(assert (=> d!275897 (validRegex!695 (regTwo!4964 r!15766))))

(assert (=> d!275897 (= (lemmaRemoveUselessConcatSound!3 (regTwo!4964 r!15766) (_2!6101 lt!329886)) lt!329919)))

(declare-fun bs!234098 () Bool)

(assert (= bs!234098 d!275897))

(assert (=> bs!234098 m!1127219))

(assert (=> bs!234098 m!1127225))

(assert (=> bs!234098 m!1127239))

(assert (=> bs!234098 m!1127227))

(assert (=> bs!234098 m!1127219))

(declare-fun m!1127319 () Bool)

(assert (=> bs!234098 m!1127319))

(assert (=> b!876326 d!275897))

(declare-fun b!876426 () Bool)

(declare-fun e!575967 () Bool)

(declare-fun lt!329920 () Bool)

(declare-fun call!50947 () Bool)

(assert (=> b!876426 (= e!575967 (= lt!329920 call!50947))))

(declare-fun b!876428 () Bool)

(declare-fun res!398583 () Bool)

(declare-fun e!575966 () Bool)

(assert (=> b!876428 (=> res!398583 e!575966)))

(assert (=> b!876428 (= res!398583 (not (isEmpty!5629 (tail!1086 (_2!6101 lt!329886)))))))

(declare-fun b!876429 () Bool)

(declare-fun e!575962 () Bool)

(assert (=> b!876429 (= e!575962 (not lt!329920))))

(declare-fun b!876430 () Bool)

(declare-fun res!398578 () Bool)

(declare-fun e!575963 () Bool)

(assert (=> b!876430 (=> (not res!398578) (not e!575963))))

(assert (=> b!876430 (= res!398578 (not call!50947))))

(declare-fun b!876431 () Bool)

(declare-fun e!575965 () Bool)

(declare-fun e!575964 () Bool)

(assert (=> b!876431 (= e!575965 e!575964)))

(declare-fun res!398579 () Bool)

(assert (=> b!876431 (=> (not res!398579) (not e!575964))))

(assert (=> b!876431 (= res!398579 (not lt!329920))))

(declare-fun bm!50942 () Bool)

(assert (=> bm!50942 (= call!50947 (isEmpty!5629 (_2!6101 lt!329886)))))

(declare-fun b!876432 () Bool)

(declare-fun res!398581 () Bool)

(assert (=> b!876432 (=> res!398581 e!575965)))

(assert (=> b!876432 (= res!398581 (not (is-ElementMatch!2226 (removeUselessConcat!5 (regTwo!4964 r!15766)))))))

(assert (=> b!876432 (= e!575962 e!575965)))

(declare-fun b!876433 () Bool)

(declare-fun e!575961 () Bool)

(assert (=> b!876433 (= e!575961 (matchR!764 (derivativeStep!371 (removeUselessConcat!5 (regTwo!4964 r!15766)) (head!1524 (_2!6101 lt!329886))) (tail!1086 (_2!6101 lt!329886))))))

(declare-fun b!876427 () Bool)

(assert (=> b!876427 (= e!575963 (= (head!1524 (_2!6101 lt!329886)) (c!141669 (removeUselessConcat!5 (regTwo!4964 r!15766)))))))

(declare-fun d!275899 () Bool)

(assert (=> d!275899 e!575967))

(declare-fun c!141682 () Bool)

(assert (=> d!275899 (= c!141682 (is-EmptyExpr!2226 (removeUselessConcat!5 (regTwo!4964 r!15766))))))

(assert (=> d!275899 (= lt!329920 e!575961)))

(declare-fun c!141680 () Bool)

(assert (=> d!275899 (= c!141680 (isEmpty!5629 (_2!6101 lt!329886)))))

(assert (=> d!275899 (validRegex!695 (removeUselessConcat!5 (regTwo!4964 r!15766)))))

(assert (=> d!275899 (= (matchR!764 (removeUselessConcat!5 (regTwo!4964 r!15766)) (_2!6101 lt!329886)) lt!329920)))

(declare-fun b!876434 () Bool)

(declare-fun res!398577 () Bool)

(assert (=> b!876434 (=> res!398577 e!575965)))

(assert (=> b!876434 (= res!398577 e!575963)))

(declare-fun res!398584 () Bool)

(assert (=> b!876434 (=> (not res!398584) (not e!575963))))

(assert (=> b!876434 (= res!398584 lt!329920)))

(declare-fun b!876435 () Bool)

(assert (=> b!876435 (= e!575961 (nullable!557 (removeUselessConcat!5 (regTwo!4964 r!15766))))))

(declare-fun b!876436 () Bool)

(assert (=> b!876436 (= e!575967 e!575962)))

(declare-fun c!141681 () Bool)

(assert (=> b!876436 (= c!141681 (is-EmptyLang!2226 (removeUselessConcat!5 (regTwo!4964 r!15766))))))

(declare-fun b!876437 () Bool)

(assert (=> b!876437 (= e!575966 (not (= (head!1524 (_2!6101 lt!329886)) (c!141669 (removeUselessConcat!5 (regTwo!4964 r!15766))))))))

(declare-fun b!876438 () Bool)

(declare-fun res!398582 () Bool)

(assert (=> b!876438 (=> (not res!398582) (not e!575963))))

(assert (=> b!876438 (= res!398582 (isEmpty!5629 (tail!1086 (_2!6101 lt!329886))))))

(declare-fun b!876439 () Bool)

(assert (=> b!876439 (= e!575964 e!575966)))

(declare-fun res!398580 () Bool)

(assert (=> b!876439 (=> res!398580 e!575966)))

(assert (=> b!876439 (= res!398580 call!50947)))

(assert (= (and d!275899 c!141680) b!876435))

(assert (= (and d!275899 (not c!141680)) b!876433))

(assert (= (and d!275899 c!141682) b!876426))

(assert (= (and d!275899 (not c!141682)) b!876436))

(assert (= (and b!876436 c!141681) b!876429))

(assert (= (and b!876436 (not c!141681)) b!876432))

(assert (= (and b!876432 (not res!398581)) b!876434))

(assert (= (and b!876434 res!398584) b!876430))

(assert (= (and b!876430 res!398578) b!876438))

(assert (= (and b!876438 res!398582) b!876427))

(assert (= (and b!876434 (not res!398577)) b!876431))

(assert (= (and b!876431 res!398579) b!876439))

(assert (= (and b!876439 (not res!398580)) b!876428))

(assert (= (and b!876428 (not res!398583)) b!876437))

(assert (= (or b!876426 b!876430 b!876439) bm!50942))

(assert (=> d!275899 m!1127305))

(assert (=> d!275899 m!1127219))

(declare-fun m!1127321 () Bool)

(assert (=> d!275899 m!1127321))

(assert (=> b!876428 m!1127307))

(assert (=> b!876428 m!1127307))

(assert (=> b!876428 m!1127309))

(assert (=> b!876433 m!1127311))

(assert (=> b!876433 m!1127219))

(assert (=> b!876433 m!1127311))

(declare-fun m!1127323 () Bool)

(assert (=> b!876433 m!1127323))

(assert (=> b!876433 m!1127307))

(assert (=> b!876433 m!1127323))

(assert (=> b!876433 m!1127307))

(declare-fun m!1127325 () Bool)

(assert (=> b!876433 m!1127325))

(assert (=> b!876427 m!1127311))

(assert (=> b!876435 m!1127219))

(declare-fun m!1127327 () Bool)

(assert (=> b!876435 m!1127327))

(assert (=> bm!50942 m!1127305))

(assert (=> b!876438 m!1127307))

(assert (=> b!876438 m!1127307))

(assert (=> b!876438 m!1127309))

(assert (=> b!876437 m!1127311))

(assert (=> b!876326 d!275899))

(declare-fun d!275901 () Bool)

(declare-fun e!575997 () Bool)

(assert (=> d!275901 e!575997))

(declare-fun res!398597 () Bool)

(assert (=> d!275901 (=> (not res!398597) (not e!575997))))

(declare-fun lt!329923 () Regex!2226)

(assert (=> d!275901 (= res!398597 (validRegex!695 lt!329923))))

(declare-fun e!575999 () Regex!2226)

(assert (=> d!275901 (= lt!329923 e!575999)))

(declare-fun c!141699 () Bool)

(assert (=> d!275901 (= c!141699 (and (is-Concat!4059 (regTwo!4964 r!15766)) (is-EmptyExpr!2226 (regOne!4964 (regTwo!4964 r!15766)))))))

(assert (=> d!275901 (validRegex!695 (regTwo!4964 r!15766))))

(assert (=> d!275901 (= (removeUselessConcat!5 (regTwo!4964 r!15766)) lt!329923)))

(declare-fun c!141697 () Bool)

(declare-fun bm!50959 () Bool)

(declare-fun c!141698 () Bool)

(declare-fun call!50966 () Regex!2226)

(declare-fun c!141700 () Bool)

(assert (=> bm!50959 (= call!50966 (removeUselessConcat!5 (ite c!141699 (regTwo!4964 (regTwo!4964 r!15766)) (ite (or c!141700 c!141697) (regOne!4964 (regTwo!4964 r!15766)) (ite c!141698 (regTwo!4965 (regTwo!4964 r!15766)) (reg!2555 (regTwo!4964 r!15766)))))))))

(declare-fun b!876480 () Bool)

(declare-fun e!575998 () Regex!2226)

(declare-fun call!50968 () Regex!2226)

(assert (=> b!876480 (= e!575998 call!50968)))

(declare-fun b!876481 () Bool)

(declare-fun e!575995 () Regex!2226)

(assert (=> b!876481 (= e!575995 (regTwo!4964 r!15766))))

(declare-fun bm!50960 () Bool)

(declare-fun call!50965 () Regex!2226)

(declare-fun call!50964 () Regex!2226)

(assert (=> bm!50960 (= call!50965 call!50964)))

(declare-fun b!876482 () Bool)

(assert (=> b!876482 (= e!575997 (= (nullable!557 lt!329923) (nullable!557 (regTwo!4964 r!15766))))))

(declare-fun b!876483 () Bool)

(assert (=> b!876483 (= e!575995 (Star!2226 call!50965))))

(declare-fun b!876484 () Bool)

(declare-fun c!141701 () Bool)

(assert (=> b!876484 (= c!141701 (is-Star!2226 (regTwo!4964 r!15766)))))

(declare-fun e!575994 () Regex!2226)

(assert (=> b!876484 (= e!575994 e!575995)))

(declare-fun b!876485 () Bool)

(declare-fun call!50967 () Regex!2226)

(assert (=> b!876485 (= e!575994 (Union!2226 call!50967 call!50965))))

(declare-fun b!876486 () Bool)

(assert (=> b!876486 (= e!575999 call!50966)))

(declare-fun bm!50961 () Bool)

(assert (=> bm!50961 (= call!50967 (removeUselessConcat!5 (ite c!141697 (regTwo!4964 (regTwo!4964 r!15766)) (regOne!4965 (regTwo!4964 r!15766)))))))

(declare-fun b!876487 () Bool)

(declare-fun e!575996 () Regex!2226)

(assert (=> b!876487 (= e!575996 e!575994)))

(assert (=> b!876487 (= c!141698 (is-Union!2226 (regTwo!4964 r!15766)))))

(declare-fun b!876488 () Bool)

(assert (=> b!876488 (= e!575996 (Concat!4059 call!50964 call!50967))))

(declare-fun b!876489 () Bool)

(assert (=> b!876489 (= e!575999 e!575998)))

(assert (=> b!876489 (= c!141700 (and (is-Concat!4059 (regTwo!4964 r!15766)) (is-EmptyExpr!2226 (regTwo!4964 (regTwo!4964 r!15766)))))))

(declare-fun bm!50962 () Bool)

(assert (=> bm!50962 (= call!50964 call!50968)))

(declare-fun b!876490 () Bool)

(assert (=> b!876490 (= c!141697 (is-Concat!4059 (regTwo!4964 r!15766)))))

(assert (=> b!876490 (= e!575998 e!575996)))

(declare-fun bm!50963 () Bool)

(assert (=> bm!50963 (= call!50968 call!50966)))

(assert (= (and d!275901 c!141699) b!876486))

(assert (= (and d!275901 (not c!141699)) b!876489))

(assert (= (and b!876489 c!141700) b!876480))

(assert (= (and b!876489 (not c!141700)) b!876490))

(assert (= (and b!876490 c!141697) b!876488))

(assert (= (and b!876490 (not c!141697)) b!876487))

(assert (= (and b!876487 c!141698) b!876485))

(assert (= (and b!876487 (not c!141698)) b!876484))

(assert (= (and b!876484 c!141701) b!876483))

(assert (= (and b!876484 (not c!141701)) b!876481))

(assert (= (or b!876485 b!876483) bm!50960))

(assert (= (or b!876488 b!876485) bm!50961))

(assert (= (or b!876488 bm!50960) bm!50962))

(assert (= (or b!876480 bm!50962) bm!50963))

(assert (= (or b!876486 bm!50963) bm!50959))

(assert (= (and d!275901 res!398597) b!876482))

(declare-fun m!1127329 () Bool)

(assert (=> d!275901 m!1127329))

(assert (=> d!275901 m!1127227))

(declare-fun m!1127331 () Bool)

(assert (=> bm!50959 m!1127331))

(declare-fun m!1127333 () Bool)

(assert (=> b!876482 m!1127333))

(assert (=> b!876482 m!1127317))

(declare-fun m!1127335 () Bool)

(assert (=> bm!50961 m!1127335))

(assert (=> b!876326 d!275901))

(declare-fun b!876518 () Bool)

(declare-fun e!576025 () Bool)

(declare-fun call!50980 () Bool)

(assert (=> b!876518 (= e!576025 call!50980)))

(declare-fun b!876519 () Bool)

(declare-fun res!398617 () Bool)

(declare-fun e!576024 () Bool)

(assert (=> b!876519 (=> (not res!398617) (not e!576024))))

(declare-fun call!50978 () Bool)

(assert (=> b!876519 (= res!398617 call!50978)))

(declare-fun e!576022 () Bool)

(assert (=> b!876519 (= e!576022 e!576024)))

(declare-fun b!876520 () Bool)

(declare-fun res!398615 () Bool)

(declare-fun e!576023 () Bool)

(assert (=> b!876520 (=> res!398615 e!576023)))

(assert (=> b!876520 (= res!398615 (not (is-Concat!4059 (removeUselessConcat!5 r!15766))))))

(assert (=> b!876520 (= e!576022 e!576023)))

(declare-fun b!876522 () Bool)

(declare-fun e!576026 () Bool)

(assert (=> b!876522 (= e!576026 e!576022)))

(declare-fun c!141709 () Bool)

(assert (=> b!876522 (= c!141709 (is-Union!2226 (removeUselessConcat!5 r!15766)))))

(declare-fun b!876523 () Bool)

(declare-fun e!576027 () Bool)

(declare-fun call!50979 () Bool)

(assert (=> b!876523 (= e!576027 call!50979)))

(declare-fun bm!50973 () Bool)

(declare-fun c!141708 () Bool)

(assert (=> bm!50973 (= call!50979 (validRegex!695 (ite c!141708 (reg!2555 (removeUselessConcat!5 r!15766)) (ite c!141709 (regOne!4965 (removeUselessConcat!5 r!15766)) (regOne!4964 (removeUselessConcat!5 r!15766))))))))

(declare-fun b!876524 () Bool)

(assert (=> b!876524 (= e!576023 e!576025)))

(declare-fun res!398613 () Bool)

(assert (=> b!876524 (=> (not res!398613) (not e!576025))))

(assert (=> b!876524 (= res!398613 call!50978)))

(declare-fun b!876525 () Bool)

(declare-fun e!576021 () Bool)

(assert (=> b!876525 (= e!576021 e!576026)))

(assert (=> b!876525 (= c!141708 (is-Star!2226 (removeUselessConcat!5 r!15766)))))

(declare-fun bm!50974 () Bool)

(assert (=> bm!50974 (= call!50978 call!50979)))

(declare-fun b!876521 () Bool)

(assert (=> b!876521 (= e!576024 call!50980)))

(declare-fun d!275903 () Bool)

(declare-fun res!398616 () Bool)

(assert (=> d!275903 (=> res!398616 e!576021)))

(assert (=> d!275903 (= res!398616 (is-ElementMatch!2226 (removeUselessConcat!5 r!15766)))))

(assert (=> d!275903 (= (validRegex!695 (removeUselessConcat!5 r!15766)) e!576021)))

(declare-fun bm!50975 () Bool)

(assert (=> bm!50975 (= call!50980 (validRegex!695 (ite c!141709 (regTwo!4965 (removeUselessConcat!5 r!15766)) (regTwo!4964 (removeUselessConcat!5 r!15766)))))))

(declare-fun b!876526 () Bool)

(assert (=> b!876526 (= e!576026 e!576027)))

(declare-fun res!398614 () Bool)

(assert (=> b!876526 (= res!398614 (not (nullable!557 (reg!2555 (removeUselessConcat!5 r!15766)))))))

(assert (=> b!876526 (=> (not res!398614) (not e!576027))))

(assert (= (and d!275903 (not res!398616)) b!876525))

(assert (= (and b!876525 c!141708) b!876526))

(assert (= (and b!876525 (not c!141708)) b!876522))

(assert (= (and b!876526 res!398614) b!876523))

(assert (= (and b!876522 c!141709) b!876519))

(assert (= (and b!876522 (not c!141709)) b!876520))

(assert (= (and b!876519 res!398617) b!876521))

(assert (= (and b!876520 (not res!398615)) b!876524))

(assert (= (and b!876524 res!398613) b!876518))

(assert (= (or b!876521 b!876518) bm!50975))

(assert (= (or b!876519 b!876524) bm!50974))

(assert (= (or b!876523 bm!50974) bm!50973))

(declare-fun m!1127343 () Bool)

(assert (=> bm!50973 m!1127343))

(declare-fun m!1127345 () Bool)

(assert (=> bm!50975 m!1127345))

(declare-fun m!1127347 () Bool)

(assert (=> b!876526 m!1127347))

(assert (=> b!876326 d!275903))

(declare-fun d!275907 () Bool)

(declare-fun e!576031 () Bool)

(assert (=> d!275907 e!576031))

(declare-fun res!398618 () Bool)

(assert (=> d!275907 (=> (not res!398618) (not e!576031))))

(declare-fun lt!329924 () Regex!2226)

(assert (=> d!275907 (= res!398618 (validRegex!695 lt!329924))))

(declare-fun e!576033 () Regex!2226)

(assert (=> d!275907 (= lt!329924 e!576033)))

(declare-fun c!141712 () Bool)

(assert (=> d!275907 (= c!141712 (and (is-Concat!4059 r!15766) (is-EmptyExpr!2226 (regOne!4964 r!15766))))))

(assert (=> d!275907 (validRegex!695 r!15766)))

(assert (=> d!275907 (= (removeUselessConcat!5 r!15766) lt!329924)))

(declare-fun c!141710 () Bool)

(declare-fun bm!50976 () Bool)

(declare-fun c!141711 () Bool)

(declare-fun c!141713 () Bool)

(declare-fun call!50983 () Regex!2226)

(assert (=> bm!50976 (= call!50983 (removeUselessConcat!5 (ite c!141712 (regTwo!4964 r!15766) (ite (or c!141713 c!141710) (regOne!4964 r!15766) (ite c!141711 (regTwo!4965 r!15766) (reg!2555 r!15766))))))))

(declare-fun b!876527 () Bool)

(declare-fun e!576032 () Regex!2226)

(declare-fun call!50985 () Regex!2226)

(assert (=> b!876527 (= e!576032 call!50985)))

(declare-fun b!876528 () Bool)

(declare-fun e!576029 () Regex!2226)

(assert (=> b!876528 (= e!576029 r!15766)))

(declare-fun bm!50977 () Bool)

(declare-fun call!50982 () Regex!2226)

(declare-fun call!50981 () Regex!2226)

(assert (=> bm!50977 (= call!50982 call!50981)))

(declare-fun b!876529 () Bool)

(assert (=> b!876529 (= e!576031 (= (nullable!557 lt!329924) (nullable!557 r!15766)))))

(declare-fun b!876530 () Bool)

(assert (=> b!876530 (= e!576029 (Star!2226 call!50982))))

(declare-fun b!876531 () Bool)

(declare-fun c!141714 () Bool)

(assert (=> b!876531 (= c!141714 (is-Star!2226 r!15766))))

(declare-fun e!576028 () Regex!2226)

(assert (=> b!876531 (= e!576028 e!576029)))

(declare-fun b!876532 () Bool)

(declare-fun call!50984 () Regex!2226)

(assert (=> b!876532 (= e!576028 (Union!2226 call!50984 call!50982))))

(declare-fun b!876533 () Bool)

(assert (=> b!876533 (= e!576033 call!50983)))

(declare-fun bm!50978 () Bool)

(assert (=> bm!50978 (= call!50984 (removeUselessConcat!5 (ite c!141710 (regTwo!4964 r!15766) (regOne!4965 r!15766))))))

(declare-fun b!876534 () Bool)

(declare-fun e!576030 () Regex!2226)

(assert (=> b!876534 (= e!576030 e!576028)))

(assert (=> b!876534 (= c!141711 (is-Union!2226 r!15766))))

(declare-fun b!876535 () Bool)

(assert (=> b!876535 (= e!576030 (Concat!4059 call!50981 call!50984))))

(declare-fun b!876536 () Bool)

(assert (=> b!876536 (= e!576033 e!576032)))

(assert (=> b!876536 (= c!141713 (and (is-Concat!4059 r!15766) (is-EmptyExpr!2226 (regTwo!4964 r!15766))))))

(declare-fun bm!50979 () Bool)

(assert (=> bm!50979 (= call!50981 call!50985)))

(declare-fun b!876537 () Bool)

(assert (=> b!876537 (= c!141710 (is-Concat!4059 r!15766))))

(assert (=> b!876537 (= e!576032 e!576030)))

(declare-fun bm!50980 () Bool)

(assert (=> bm!50980 (= call!50985 call!50983)))

(assert (= (and d!275907 c!141712) b!876533))

(assert (= (and d!275907 (not c!141712)) b!876536))

(assert (= (and b!876536 c!141713) b!876527))

(assert (= (and b!876536 (not c!141713)) b!876537))

(assert (= (and b!876537 c!141710) b!876535))

(assert (= (and b!876537 (not c!141710)) b!876534))

(assert (= (and b!876534 c!141711) b!876532))

(assert (= (and b!876534 (not c!141711)) b!876531))

(assert (= (and b!876531 c!141714) b!876530))

(assert (= (and b!876531 (not c!141714)) b!876528))

(assert (= (or b!876532 b!876530) bm!50977))

(assert (= (or b!876535 b!876532) bm!50978))

(assert (= (or b!876535 bm!50977) bm!50979))

(assert (= (or b!876527 bm!50979) bm!50980))

(assert (= (or b!876533 bm!50980) bm!50976))

(assert (= (and d!275907 res!398618) b!876529))

(declare-fun m!1127349 () Bool)

(assert (=> d!275907 m!1127349))

(assert (=> d!275907 m!1127241))

(declare-fun m!1127351 () Bool)

(assert (=> bm!50976 m!1127351))

(declare-fun m!1127353 () Bool)

(assert (=> b!876529 m!1127353))

(declare-fun m!1127355 () Bool)

(assert (=> b!876529 m!1127355))

(declare-fun m!1127357 () Bool)

(assert (=> bm!50978 m!1127357))

(assert (=> b!876326 d!275907))

(declare-fun b!876538 () Bool)

(declare-fun e!576038 () Bool)

(declare-fun call!50988 () Bool)

(assert (=> b!876538 (= e!576038 call!50988)))

(declare-fun b!876539 () Bool)

(declare-fun res!398623 () Bool)

(declare-fun e!576037 () Bool)

(assert (=> b!876539 (=> (not res!398623) (not e!576037))))

(declare-fun call!50986 () Bool)

(assert (=> b!876539 (= res!398623 call!50986)))

(declare-fun e!576035 () Bool)

(assert (=> b!876539 (= e!576035 e!576037)))

(declare-fun b!876540 () Bool)

(declare-fun res!398621 () Bool)

(declare-fun e!576036 () Bool)

(assert (=> b!876540 (=> res!398621 e!576036)))

(assert (=> b!876540 (= res!398621 (not (is-Concat!4059 (regTwo!4964 r!15766))))))

(assert (=> b!876540 (= e!576035 e!576036)))

(declare-fun b!876542 () Bool)

(declare-fun e!576039 () Bool)

(assert (=> b!876542 (= e!576039 e!576035)))

(declare-fun c!141716 () Bool)

(assert (=> b!876542 (= c!141716 (is-Union!2226 (regTwo!4964 r!15766)))))

(declare-fun b!876543 () Bool)

(declare-fun e!576040 () Bool)

(declare-fun call!50987 () Bool)

(assert (=> b!876543 (= e!576040 call!50987)))

(declare-fun c!141715 () Bool)

(declare-fun bm!50981 () Bool)

(assert (=> bm!50981 (= call!50987 (validRegex!695 (ite c!141715 (reg!2555 (regTwo!4964 r!15766)) (ite c!141716 (regOne!4965 (regTwo!4964 r!15766)) (regOne!4964 (regTwo!4964 r!15766))))))))

(declare-fun b!876544 () Bool)

(assert (=> b!876544 (= e!576036 e!576038)))

(declare-fun res!398619 () Bool)

(assert (=> b!876544 (=> (not res!398619) (not e!576038))))

(assert (=> b!876544 (= res!398619 call!50986)))

(declare-fun b!876545 () Bool)

(declare-fun e!576034 () Bool)

(assert (=> b!876545 (= e!576034 e!576039)))

(assert (=> b!876545 (= c!141715 (is-Star!2226 (regTwo!4964 r!15766)))))

(declare-fun bm!50982 () Bool)

(assert (=> bm!50982 (= call!50986 call!50987)))

(declare-fun b!876541 () Bool)

(assert (=> b!876541 (= e!576037 call!50988)))

(declare-fun d!275909 () Bool)

(declare-fun res!398622 () Bool)

(assert (=> d!275909 (=> res!398622 e!576034)))

(assert (=> d!275909 (= res!398622 (is-ElementMatch!2226 (regTwo!4964 r!15766)))))

(assert (=> d!275909 (= (validRegex!695 (regTwo!4964 r!15766)) e!576034)))

(declare-fun bm!50983 () Bool)

(assert (=> bm!50983 (= call!50988 (validRegex!695 (ite c!141716 (regTwo!4965 (regTwo!4964 r!15766)) (regTwo!4964 (regTwo!4964 r!15766)))))))

(declare-fun b!876546 () Bool)

(assert (=> b!876546 (= e!576039 e!576040)))

(declare-fun res!398620 () Bool)

(assert (=> b!876546 (= res!398620 (not (nullable!557 (reg!2555 (regTwo!4964 r!15766)))))))

(assert (=> b!876546 (=> (not res!398620) (not e!576040))))

(assert (= (and d!275909 (not res!398622)) b!876545))

(assert (= (and b!876545 c!141715) b!876546))

(assert (= (and b!876545 (not c!141715)) b!876542))

(assert (= (and b!876546 res!398620) b!876543))

(assert (= (and b!876542 c!141716) b!876539))

(assert (= (and b!876542 (not c!141716)) b!876540))

(assert (= (and b!876539 res!398623) b!876541))

(assert (= (and b!876540 (not res!398621)) b!876544))

(assert (= (and b!876544 res!398619) b!876538))

(assert (= (or b!876541 b!876538) bm!50983))

(assert (= (or b!876539 b!876544) bm!50982))

(assert (= (or b!876543 bm!50982) bm!50981))

(declare-fun m!1127359 () Bool)

(assert (=> bm!50981 m!1127359))

(declare-fun m!1127361 () Bool)

(assert (=> bm!50983 m!1127361))

(declare-fun m!1127363 () Bool)

(assert (=> b!876546 m!1127363))

(assert (=> b!876321 d!275909))

(declare-fun bs!234099 () Bool)

(declare-fun b!876609 () Bool)

(assert (= bs!234099 (and b!876609 b!876330)))

(declare-fun lambda!26545 () Int)

(assert (=> bs!234099 (not (= lambda!26545 lambda!26527))))

(assert (=> bs!234099 (not (= lambda!26545 lambda!26528))))

(assert (=> b!876609 true))

(assert (=> b!876609 true))

(declare-fun bs!234100 () Bool)

(declare-fun b!876617 () Bool)

(assert (= bs!234100 (and b!876617 b!876330)))

(declare-fun lambda!26546 () Int)

(assert (=> bs!234100 (not (= lambda!26546 lambda!26527))))

(assert (=> bs!234100 (= (and (= (_2!6101 lt!329886) s!10566) (= (regOne!4964 (regTwo!4964 r!15766)) EmptyExpr!2226) (= (regTwo!4964 (regTwo!4964 r!15766)) (regTwo!4964 r!15766))) (= lambda!26546 lambda!26528))))

(declare-fun bs!234101 () Bool)

(assert (= bs!234101 (and b!876617 b!876609)))

(assert (=> bs!234101 (not (= lambda!26546 lambda!26545))))

(assert (=> b!876617 true))

(assert (=> b!876617 true))

(declare-fun b!876607 () Bool)

(declare-fun c!141734 () Bool)

(assert (=> b!876607 (= c!141734 (is-Union!2226 (regTwo!4964 r!15766)))))

(declare-fun e!576079 () Bool)

(declare-fun e!576078 () Bool)

(assert (=> b!876607 (= e!576079 e!576078)))

(declare-fun b!876608 () Bool)

(declare-fun e!576076 () Bool)

(assert (=> b!876608 (= e!576078 e!576076)))

(declare-fun c!141733 () Bool)

(assert (=> b!876608 (= c!141733 (is-Star!2226 (regTwo!4964 r!15766)))))

(declare-fun e!576081 () Bool)

(declare-fun call!50993 () Bool)

(assert (=> b!876609 (= e!576081 call!50993)))

(declare-fun b!876610 () Bool)

(assert (=> b!876610 (= e!576079 (= (_2!6101 lt!329886) (Cons!9440 (c!141669 (regTwo!4964 r!15766)) Nil!9440)))))

(declare-fun b!876611 () Bool)

(declare-fun e!576080 () Bool)

(assert (=> b!876611 (= e!576078 e!576080)))

(declare-fun res!398653 () Bool)

(assert (=> b!876611 (= res!398653 (matchRSpec!27 (regOne!4965 (regTwo!4964 r!15766)) (_2!6101 lt!329886)))))

(assert (=> b!876611 (=> res!398653 e!576080)))

(declare-fun b!876612 () Bool)

(assert (=> b!876612 (= e!576080 (matchRSpec!27 (regTwo!4965 (regTwo!4964 r!15766)) (_2!6101 lt!329886)))))

(declare-fun b!876613 () Bool)

(declare-fun e!576077 () Bool)

(declare-fun call!50994 () Bool)

(assert (=> b!876613 (= e!576077 call!50994)))

(declare-fun b!876614 () Bool)

(declare-fun res!398652 () Bool)

(assert (=> b!876614 (=> res!398652 e!576081)))

(assert (=> b!876614 (= res!398652 call!50994)))

(assert (=> b!876614 (= e!576076 e!576081)))

(declare-fun d!275911 () Bool)

(declare-fun c!141735 () Bool)

(assert (=> d!275911 (= c!141735 (is-EmptyExpr!2226 (regTwo!4964 r!15766)))))

(assert (=> d!275911 (= (matchRSpec!27 (regTwo!4964 r!15766) (_2!6101 lt!329886)) e!576077)))

(declare-fun bm!50988 () Bool)

(assert (=> bm!50988 (= call!50993 (Exists!25 (ite c!141733 lambda!26545 lambda!26546)))))

(declare-fun b!876615 () Bool)

(declare-fun c!141736 () Bool)

(assert (=> b!876615 (= c!141736 (is-ElementMatch!2226 (regTwo!4964 r!15766)))))

(declare-fun e!576075 () Bool)

(assert (=> b!876615 (= e!576075 e!576079)))

(declare-fun b!876616 () Bool)

(assert (=> b!876616 (= e!576077 e!576075)))

(declare-fun res!398654 () Bool)

(assert (=> b!876616 (= res!398654 (not (is-EmptyLang!2226 (regTwo!4964 r!15766))))))

(assert (=> b!876616 (=> (not res!398654) (not e!576075))))

(assert (=> b!876617 (= e!576076 call!50993)))

(declare-fun bm!50989 () Bool)

(assert (=> bm!50989 (= call!50994 (isEmpty!5629 (_2!6101 lt!329886)))))

(assert (= (and d!275911 c!141735) b!876613))

(assert (= (and d!275911 (not c!141735)) b!876616))

(assert (= (and b!876616 res!398654) b!876615))

(assert (= (and b!876615 c!141736) b!876610))

(assert (= (and b!876615 (not c!141736)) b!876607))

(assert (= (and b!876607 c!141734) b!876611))

(assert (= (and b!876607 (not c!141734)) b!876608))

(assert (= (and b!876611 (not res!398653)) b!876612))

(assert (= (and b!876608 c!141733) b!876614))

(assert (= (and b!876608 (not c!141733)) b!876617))

(assert (= (and b!876614 (not res!398652)) b!876609))

(assert (= (or b!876609 b!876617) bm!50988))

(assert (= (or b!876613 b!876614) bm!50989))

(declare-fun m!1127365 () Bool)

(assert (=> b!876611 m!1127365))

(declare-fun m!1127367 () Bool)

(assert (=> b!876612 m!1127367))

(declare-fun m!1127369 () Bool)

(assert (=> bm!50988 m!1127369))

(assert (=> bm!50989 m!1127305))

(assert (=> b!876321 d!275911))

(declare-fun d!275913 () Bool)

(assert (=> d!275913 (= (matchR!764 (regTwo!4964 r!15766) (_2!6101 lt!329886)) (matchRSpec!27 (regTwo!4964 r!15766) (_2!6101 lt!329886)))))

(declare-fun lt!329927 () Unit!14031)

(declare-fun choose!5164 (Regex!2226 List!9456) Unit!14031)

(assert (=> d!275913 (= lt!329927 (choose!5164 (regTwo!4964 r!15766) (_2!6101 lt!329886)))))

(assert (=> d!275913 (validRegex!695 (regTwo!4964 r!15766))))

(assert (=> d!275913 (= (mainMatchTheorem!27 (regTwo!4964 r!15766) (_2!6101 lt!329886)) lt!329927)))

(declare-fun bs!234102 () Bool)

(assert (= bs!234102 d!275913))

(assert (=> bs!234102 m!1127239))

(assert (=> bs!234102 m!1127229))

(declare-fun m!1127371 () Bool)

(assert (=> bs!234102 m!1127371))

(assert (=> bs!234102 m!1127227))

(assert (=> b!876321 d!275913))

(declare-fun bs!234103 () Bool)

(declare-fun b!876624 () Bool)

(assert (= bs!234103 (and b!876624 b!876330)))

(declare-fun lambda!26547 () Int)

(assert (=> bs!234103 (not (= lambda!26547 lambda!26527))))

(assert (=> bs!234103 (not (= lambda!26547 lambda!26528))))

(declare-fun bs!234104 () Bool)

(assert (= bs!234104 (and b!876624 b!876609)))

(assert (=> bs!234104 (= (and (= s!10566 (_2!6101 lt!329886)) (= (reg!2555 r!15766) (reg!2555 (regTwo!4964 r!15766))) (= r!15766 (regTwo!4964 r!15766))) (= lambda!26547 lambda!26545))))

(declare-fun bs!234105 () Bool)

(assert (= bs!234105 (and b!876624 b!876617)))

(assert (=> bs!234105 (not (= lambda!26547 lambda!26546))))

(assert (=> b!876624 true))

(assert (=> b!876624 true))

(declare-fun bs!234106 () Bool)

(declare-fun b!876632 () Bool)

(assert (= bs!234106 (and b!876632 b!876624)))

(declare-fun lambda!26548 () Int)

(assert (=> bs!234106 (not (= lambda!26548 lambda!26547))))

(declare-fun bs!234107 () Bool)

(assert (= bs!234107 (and b!876632 b!876617)))

(assert (=> bs!234107 (= (and (= s!10566 (_2!6101 lt!329886)) (= (regOne!4964 r!15766) (regOne!4964 (regTwo!4964 r!15766))) (= (regTwo!4964 r!15766) (regTwo!4964 (regTwo!4964 r!15766)))) (= lambda!26548 lambda!26546))))

(declare-fun bs!234108 () Bool)

(assert (= bs!234108 (and b!876632 b!876609)))

(assert (=> bs!234108 (not (= lambda!26548 lambda!26545))))

(declare-fun bs!234109 () Bool)

(assert (= bs!234109 (and b!876632 b!876330)))

(assert (=> bs!234109 (not (= lambda!26548 lambda!26527))))

(assert (=> bs!234109 (= (= (regOne!4964 r!15766) EmptyExpr!2226) (= lambda!26548 lambda!26528))))

(assert (=> b!876632 true))

(assert (=> b!876632 true))

(declare-fun b!876622 () Bool)

(declare-fun c!141738 () Bool)

(assert (=> b!876622 (= c!141738 (is-Union!2226 r!15766))))

(declare-fun e!576088 () Bool)

(declare-fun e!576087 () Bool)

(assert (=> b!876622 (= e!576088 e!576087)))

(declare-fun b!876623 () Bool)

(declare-fun e!576085 () Bool)

(assert (=> b!876623 (= e!576087 e!576085)))

(declare-fun c!141737 () Bool)

(assert (=> b!876623 (= c!141737 (is-Star!2226 r!15766))))

(declare-fun e!576090 () Bool)

(declare-fun call!50999 () Bool)

(assert (=> b!876624 (= e!576090 call!50999)))

(declare-fun b!876625 () Bool)

(assert (=> b!876625 (= e!576088 (= s!10566 (Cons!9440 (c!141669 r!15766) Nil!9440)))))

(declare-fun b!876626 () Bool)

(declare-fun e!576089 () Bool)

(assert (=> b!876626 (= e!576087 e!576089)))

(declare-fun res!398660 () Bool)

(assert (=> b!876626 (= res!398660 (matchRSpec!27 (regOne!4965 r!15766) s!10566))))

(assert (=> b!876626 (=> res!398660 e!576089)))

(declare-fun b!876627 () Bool)

(assert (=> b!876627 (= e!576089 (matchRSpec!27 (regTwo!4965 r!15766) s!10566))))

(declare-fun b!876628 () Bool)

(declare-fun e!576086 () Bool)

(declare-fun call!51000 () Bool)

(assert (=> b!876628 (= e!576086 call!51000)))

(declare-fun b!876629 () Bool)

(declare-fun res!398659 () Bool)

(assert (=> b!876629 (=> res!398659 e!576090)))

(assert (=> b!876629 (= res!398659 call!51000)))

(assert (=> b!876629 (= e!576085 e!576090)))

(declare-fun d!275915 () Bool)

(declare-fun c!141739 () Bool)

(assert (=> d!275915 (= c!141739 (is-EmptyExpr!2226 r!15766))))

(assert (=> d!275915 (= (matchRSpec!27 r!15766 s!10566) e!576086)))

(declare-fun bm!50994 () Bool)

(assert (=> bm!50994 (= call!50999 (Exists!25 (ite c!141737 lambda!26547 lambda!26548)))))

(declare-fun b!876630 () Bool)

(declare-fun c!141740 () Bool)

(assert (=> b!876630 (= c!141740 (is-ElementMatch!2226 r!15766))))

(declare-fun e!576084 () Bool)

(assert (=> b!876630 (= e!576084 e!576088)))

(declare-fun b!876631 () Bool)

(assert (=> b!876631 (= e!576086 e!576084)))

(declare-fun res!398661 () Bool)

(assert (=> b!876631 (= res!398661 (not (is-EmptyLang!2226 r!15766)))))

(assert (=> b!876631 (=> (not res!398661) (not e!576084))))

(assert (=> b!876632 (= e!576085 call!50999)))

(declare-fun bm!50995 () Bool)

(assert (=> bm!50995 (= call!51000 (isEmpty!5629 s!10566))))

(assert (= (and d!275915 c!141739) b!876628))

(assert (= (and d!275915 (not c!141739)) b!876631))

(assert (= (and b!876631 res!398661) b!876630))

(assert (= (and b!876630 c!141740) b!876625))

(assert (= (and b!876630 (not c!141740)) b!876622))

(assert (= (and b!876622 c!141738) b!876626))

(assert (= (and b!876622 (not c!141738)) b!876623))

(assert (= (and b!876626 (not res!398660)) b!876627))

(assert (= (and b!876623 c!141737) b!876629))

(assert (= (and b!876623 (not c!141737)) b!876632))

(assert (= (and b!876629 (not res!398659)) b!876624))

(assert (= (or b!876624 b!876632) bm!50994))

(assert (= (or b!876628 b!876629) bm!50995))

(declare-fun m!1127373 () Bool)

(assert (=> b!876626 m!1127373))

(declare-fun m!1127375 () Bool)

(assert (=> b!876627 m!1127375))

(declare-fun m!1127377 () Bool)

(assert (=> bm!50994 m!1127377))

(assert (=> bm!50995 m!1127249))

(assert (=> b!876320 d!275915))

(declare-fun b!876633 () Bool)

(declare-fun e!576097 () Bool)

(declare-fun lt!329928 () Bool)

(declare-fun call!51001 () Bool)

(assert (=> b!876633 (= e!576097 (= lt!329928 call!51001))))

(declare-fun b!876635 () Bool)

(declare-fun res!398668 () Bool)

(declare-fun e!576096 () Bool)

(assert (=> b!876635 (=> res!398668 e!576096)))

(assert (=> b!876635 (= res!398668 (not (isEmpty!5629 (tail!1086 s!10566))))))

(declare-fun b!876636 () Bool)

(declare-fun e!576092 () Bool)

(assert (=> b!876636 (= e!576092 (not lt!329928))))

(declare-fun b!876637 () Bool)

(declare-fun res!398663 () Bool)

(declare-fun e!576093 () Bool)

(assert (=> b!876637 (=> (not res!398663) (not e!576093))))

(assert (=> b!876637 (= res!398663 (not call!51001))))

(declare-fun b!876638 () Bool)

(declare-fun e!576095 () Bool)

(declare-fun e!576094 () Bool)

(assert (=> b!876638 (= e!576095 e!576094)))

(declare-fun res!398664 () Bool)

(assert (=> b!876638 (=> (not res!398664) (not e!576094))))

(assert (=> b!876638 (= res!398664 (not lt!329928))))

(declare-fun bm!50996 () Bool)

(assert (=> bm!50996 (= call!51001 (isEmpty!5629 s!10566))))

(declare-fun b!876639 () Bool)

(declare-fun res!398666 () Bool)

(assert (=> b!876639 (=> res!398666 e!576095)))

(assert (=> b!876639 (= res!398666 (not (is-ElementMatch!2226 r!15766)))))

(assert (=> b!876639 (= e!576092 e!576095)))

(declare-fun b!876640 () Bool)

(declare-fun e!576091 () Bool)

(assert (=> b!876640 (= e!576091 (matchR!764 (derivativeStep!371 r!15766 (head!1524 s!10566)) (tail!1086 s!10566)))))

(declare-fun b!876634 () Bool)

(assert (=> b!876634 (= e!576093 (= (head!1524 s!10566) (c!141669 r!15766)))))

(declare-fun d!275917 () Bool)

(assert (=> d!275917 e!576097))

(declare-fun c!141743 () Bool)

(assert (=> d!275917 (= c!141743 (is-EmptyExpr!2226 r!15766))))

(assert (=> d!275917 (= lt!329928 e!576091)))

(declare-fun c!141741 () Bool)

(assert (=> d!275917 (= c!141741 (isEmpty!5629 s!10566))))

(assert (=> d!275917 (validRegex!695 r!15766)))

(assert (=> d!275917 (= (matchR!764 r!15766 s!10566) lt!329928)))

(declare-fun b!876641 () Bool)

(declare-fun res!398662 () Bool)

(assert (=> b!876641 (=> res!398662 e!576095)))

(assert (=> b!876641 (= res!398662 e!576093)))

(declare-fun res!398669 () Bool)

(assert (=> b!876641 (=> (not res!398669) (not e!576093))))

(assert (=> b!876641 (= res!398669 lt!329928)))

(declare-fun b!876642 () Bool)

(assert (=> b!876642 (= e!576091 (nullable!557 r!15766))))

(declare-fun b!876643 () Bool)

(assert (=> b!876643 (= e!576097 e!576092)))

(declare-fun c!141742 () Bool)

(assert (=> b!876643 (= c!141742 (is-EmptyLang!2226 r!15766))))

(declare-fun b!876644 () Bool)

(assert (=> b!876644 (= e!576096 (not (= (head!1524 s!10566) (c!141669 r!15766))))))

(declare-fun b!876645 () Bool)

(declare-fun res!398667 () Bool)

(assert (=> b!876645 (=> (not res!398667) (not e!576093))))

(assert (=> b!876645 (= res!398667 (isEmpty!5629 (tail!1086 s!10566)))))

(declare-fun b!876646 () Bool)

(assert (=> b!876646 (= e!576094 e!576096)))

(declare-fun res!398665 () Bool)

(assert (=> b!876646 (=> res!398665 e!576096)))

(assert (=> b!876646 (= res!398665 call!51001)))

(assert (= (and d!275917 c!141741) b!876642))

(assert (= (and d!275917 (not c!141741)) b!876640))

(assert (= (and d!275917 c!141743) b!876633))

(assert (= (and d!275917 (not c!141743)) b!876643))

(assert (= (and b!876643 c!141742) b!876636))

(assert (= (and b!876643 (not c!141742)) b!876639))

(assert (= (and b!876639 (not res!398666)) b!876641))

(assert (= (and b!876641 res!398669) b!876637))

(assert (= (and b!876637 res!398663) b!876645))

(assert (= (and b!876645 res!398667) b!876634))

(assert (= (and b!876641 (not res!398662)) b!876638))

(assert (= (and b!876638 res!398664) b!876646))

(assert (= (and b!876646 (not res!398665)) b!876635))

(assert (= (and b!876635 (not res!398668)) b!876644))

(assert (= (or b!876633 b!876637 b!876646) bm!50996))

(assert (=> d!275917 m!1127249))

(assert (=> d!275917 m!1127241))

(declare-fun m!1127379 () Bool)

(assert (=> b!876635 m!1127379))

(assert (=> b!876635 m!1127379))

(declare-fun m!1127381 () Bool)

(assert (=> b!876635 m!1127381))

(declare-fun m!1127383 () Bool)

(assert (=> b!876640 m!1127383))

(assert (=> b!876640 m!1127383))

(declare-fun m!1127385 () Bool)

(assert (=> b!876640 m!1127385))

(assert (=> b!876640 m!1127379))

(assert (=> b!876640 m!1127385))

(assert (=> b!876640 m!1127379))

(declare-fun m!1127387 () Bool)

(assert (=> b!876640 m!1127387))

(assert (=> b!876634 m!1127383))

(assert (=> b!876642 m!1127355))

(assert (=> bm!50996 m!1127249))

(assert (=> b!876645 m!1127379))

(assert (=> b!876645 m!1127379))

(assert (=> b!876645 m!1127381))

(assert (=> b!876644 m!1127383))

(assert (=> b!876320 d!275917))

(declare-fun d!275919 () Bool)

(assert (=> d!275919 (= (matchR!764 r!15766 s!10566) (matchRSpec!27 r!15766 s!10566))))

(declare-fun lt!329929 () Unit!14031)

(assert (=> d!275919 (= lt!329929 (choose!5164 r!15766 s!10566))))

(assert (=> d!275919 (validRegex!695 r!15766)))

(assert (=> d!275919 (= (mainMatchTheorem!27 r!15766 s!10566) lt!329929)))

(declare-fun bs!234110 () Bool)

(assert (= bs!234110 d!275919))

(assert (=> bs!234110 m!1127235))

(assert (=> bs!234110 m!1127233))

(declare-fun m!1127389 () Bool)

(assert (=> bs!234110 m!1127389))

(assert (=> bs!234110 m!1127241))

(assert (=> b!876320 d!275919))

(declare-fun d!275921 () Bool)

(assert (=> d!275921 (= (isEmpty!5629 s!10566) (is-Nil!9440 s!10566))))

(assert (=> b!876330 d!275921))

(declare-fun b!876676 () Bool)

(declare-fun e!576116 () Bool)

(declare-fun lt!329940 () Option!1917)

(assert (=> b!876676 (= e!576116 (not (isDefined!1559 lt!329940)))))

(declare-fun b!876677 () Bool)

(declare-fun e!576117 () Option!1917)

(assert (=> b!876677 (= e!576117 (Some!1916 (tuple2!10551 Nil!9440 s!10566)))))

(declare-fun b!876678 () Bool)

(declare-fun e!576119 () Bool)

(assert (=> b!876678 (= e!576119 (matchR!764 (regTwo!4964 r!15766) s!10566))))

(declare-fun b!876679 () Bool)

(declare-fun e!576118 () Option!1917)

(assert (=> b!876679 (= e!576118 None!1916)))

(declare-fun b!876680 () Bool)

(declare-fun e!576115 () Bool)

(declare-fun ++!2453 (List!9456 List!9456) List!9456)

(assert (=> b!876680 (= e!576115 (= (++!2453 (_1!6101 (get!2906 lt!329940)) (_2!6101 (get!2906 lt!329940))) s!10566))))

(declare-fun b!876681 () Bool)

(assert (=> b!876681 (= e!576117 e!576118)))

(declare-fun c!141753 () Bool)

(assert (=> b!876681 (= c!141753 (is-Nil!9440 s!10566))))

(declare-fun b!876682 () Bool)

(declare-fun res!398683 () Bool)

(assert (=> b!876682 (=> (not res!398683) (not e!576115))))

(assert (=> b!876682 (= res!398683 (matchR!764 EmptyExpr!2226 (_1!6101 (get!2906 lt!329940))))))

(declare-fun b!876683 () Bool)

(declare-fun res!398687 () Bool)

(assert (=> b!876683 (=> (not res!398687) (not e!576115))))

(assert (=> b!876683 (= res!398687 (matchR!764 (regTwo!4964 r!15766) (_2!6101 (get!2906 lt!329940))))))

(declare-fun d!275923 () Bool)

(assert (=> d!275923 e!576116))

(declare-fun res!398685 () Bool)

(assert (=> d!275923 (=> res!398685 e!576116)))

(assert (=> d!275923 (= res!398685 e!576115)))

(declare-fun res!398684 () Bool)

(assert (=> d!275923 (=> (not res!398684) (not e!576115))))

(assert (=> d!275923 (= res!398684 (isDefined!1559 lt!329940))))

(assert (=> d!275923 (= lt!329940 e!576117)))

(declare-fun c!141752 () Bool)

(assert (=> d!275923 (= c!141752 e!576119)))

(declare-fun res!398686 () Bool)

(assert (=> d!275923 (=> (not res!398686) (not e!576119))))

(assert (=> d!275923 (= res!398686 (matchR!764 EmptyExpr!2226 Nil!9440))))

(assert (=> d!275923 (validRegex!695 EmptyExpr!2226)))

(assert (=> d!275923 (= (findConcatSeparation!23 EmptyExpr!2226 (regTwo!4964 r!15766) Nil!9440 s!10566 s!10566) lt!329940)))

(declare-fun b!876684 () Bool)

(declare-fun lt!329938 () Unit!14031)

(declare-fun lt!329939 () Unit!14031)

(assert (=> b!876684 (= lt!329938 lt!329939)))

(assert (=> b!876684 (= (++!2453 (++!2453 Nil!9440 (Cons!9440 (h!14841 s!10566) Nil!9440)) (t!100502 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!84 (List!9456 C!5022 List!9456 List!9456) Unit!14031)

(assert (=> b!876684 (= lt!329939 (lemmaMoveElementToOtherListKeepsConcatEq!84 Nil!9440 (h!14841 s!10566) (t!100502 s!10566) s!10566))))

(assert (=> b!876684 (= e!576118 (findConcatSeparation!23 EmptyExpr!2226 (regTwo!4964 r!15766) (++!2453 Nil!9440 (Cons!9440 (h!14841 s!10566) Nil!9440)) (t!100502 s!10566) s!10566))))

(assert (= (and d!275923 res!398686) b!876678))

(assert (= (and d!275923 c!141752) b!876677))

(assert (= (and d!275923 (not c!141752)) b!876681))

(assert (= (and b!876681 c!141753) b!876679))

(assert (= (and b!876681 (not c!141753)) b!876684))

(assert (= (and d!275923 res!398684) b!876682))

(assert (= (and b!876682 res!398683) b!876683))

(assert (= (and b!876683 res!398687) b!876680))

(assert (= (and d!275923 (not res!398685)) b!876676))

(declare-fun m!1127399 () Bool)

(assert (=> b!876678 m!1127399))

(declare-fun m!1127401 () Bool)

(assert (=> b!876683 m!1127401))

(declare-fun m!1127403 () Bool)

(assert (=> b!876683 m!1127403))

(declare-fun m!1127405 () Bool)

(assert (=> b!876684 m!1127405))

(assert (=> b!876684 m!1127405))

(declare-fun m!1127407 () Bool)

(assert (=> b!876684 m!1127407))

(declare-fun m!1127409 () Bool)

(assert (=> b!876684 m!1127409))

(assert (=> b!876684 m!1127405))

(declare-fun m!1127411 () Bool)

(assert (=> b!876684 m!1127411))

(assert (=> b!876682 m!1127401))

(declare-fun m!1127415 () Bool)

(assert (=> b!876682 m!1127415))

(declare-fun m!1127417 () Bool)

(assert (=> d!275923 m!1127417))

(declare-fun m!1127419 () Bool)

(assert (=> d!275923 m!1127419))

(declare-fun m!1127421 () Bool)

(assert (=> d!275923 m!1127421))

(assert (=> b!876676 m!1127417))

(assert (=> b!876680 m!1127401))

(declare-fun m!1127423 () Bool)

(assert (=> b!876680 m!1127423))

(assert (=> b!876330 d!275923))

(declare-fun d!275929 () Bool)

(declare-fun choose!5165 (Int) Bool)

(assert (=> d!275929 (= (Exists!25 lambda!26527) (choose!5165 lambda!26527))))

(declare-fun bs!234115 () Bool)

(assert (= bs!234115 d!275929))

(declare-fun m!1127425 () Bool)

(assert (=> bs!234115 m!1127425))

(assert (=> b!876330 d!275929))

(declare-fun bs!234116 () Bool)

(declare-fun d!275931 () Bool)

(assert (= bs!234116 (and d!275931 b!876624)))

(declare-fun lambda!26555 () Int)

(assert (=> bs!234116 (not (= lambda!26555 lambda!26547))))

(declare-fun bs!234117 () Bool)

(assert (= bs!234117 (and d!275931 b!876617)))

(assert (=> bs!234117 (not (= lambda!26555 lambda!26546))))

(declare-fun bs!234118 () Bool)

(assert (= bs!234118 (and d!275931 b!876609)))

(assert (=> bs!234118 (not (= lambda!26555 lambda!26545))))

(declare-fun bs!234119 () Bool)

(assert (= bs!234119 (and d!275931 b!876330)))

(assert (=> bs!234119 (not (= lambda!26555 lambda!26528))))

(assert (=> bs!234119 (= lambda!26555 lambda!26527)))

(declare-fun bs!234120 () Bool)

(assert (= bs!234120 (and d!275931 b!876632)))

(assert (=> bs!234120 (not (= lambda!26555 lambda!26548))))

(assert (=> d!275931 true))

(assert (=> d!275931 true))

(assert (=> d!275931 true))

(declare-fun lambda!26556 () Int)

(assert (=> bs!234116 (not (= lambda!26556 lambda!26547))))

(assert (=> bs!234117 (= (and (= s!10566 (_2!6101 lt!329886)) (= EmptyExpr!2226 (regOne!4964 (regTwo!4964 r!15766))) (= (regTwo!4964 r!15766) (regTwo!4964 (regTwo!4964 r!15766)))) (= lambda!26556 lambda!26546))))

(declare-fun bs!234121 () Bool)

(assert (= bs!234121 d!275931))

(assert (=> bs!234121 (not (= lambda!26556 lambda!26555))))

(assert (=> bs!234118 (not (= lambda!26556 lambda!26545))))

(assert (=> bs!234119 (= lambda!26556 lambda!26528)))

(assert (=> bs!234119 (not (= lambda!26556 lambda!26527))))

(assert (=> bs!234120 (= (= EmptyExpr!2226 (regOne!4964 r!15766)) (= lambda!26556 lambda!26548))))

(assert (=> d!275931 true))

(assert (=> d!275931 true))

(assert (=> d!275931 true))

(assert (=> d!275931 (= (Exists!25 lambda!26555) (Exists!25 lambda!26556))))

(declare-fun lt!329944 () Unit!14031)

(declare-fun choose!5167 (Regex!2226 Regex!2226 List!9456) Unit!14031)

(assert (=> d!275931 (= lt!329944 (choose!5167 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566))))

(assert (=> d!275931 (validRegex!695 EmptyExpr!2226)))

(assert (=> d!275931 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!21 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566) lt!329944)))

(declare-fun m!1127427 () Bool)

(assert (=> bs!234121 m!1127427))

(declare-fun m!1127429 () Bool)

(assert (=> bs!234121 m!1127429))

(declare-fun m!1127431 () Bool)

(assert (=> bs!234121 m!1127431))

(assert (=> bs!234121 m!1127421))

(assert (=> b!876330 d!275931))

(declare-fun d!275933 () Bool)

(declare-fun isEmpty!5631 (Option!1917) Bool)

(assert (=> d!275933 (= (isDefined!1559 lt!329882) (not (isEmpty!5631 lt!329882)))))

(declare-fun bs!234122 () Bool)

(assert (= bs!234122 d!275933))

(declare-fun m!1127433 () Bool)

(assert (=> bs!234122 m!1127433))

(assert (=> b!876330 d!275933))

(declare-fun bs!234123 () Bool)

(declare-fun d!275935 () Bool)

(assert (= bs!234123 (and d!275935 b!876624)))

(declare-fun lambda!26559 () Int)

(assert (=> bs!234123 (not (= lambda!26559 lambda!26547))))

(declare-fun bs!234124 () Bool)

(assert (= bs!234124 (and d!275935 b!876617)))

(assert (=> bs!234124 (not (= lambda!26559 lambda!26546))))

(declare-fun bs!234125 () Bool)

(assert (= bs!234125 (and d!275935 d!275931)))

(assert (=> bs!234125 (= lambda!26559 lambda!26555)))

(declare-fun bs!234126 () Bool)

(assert (= bs!234126 (and d!275935 b!876609)))

(assert (=> bs!234126 (not (= lambda!26559 lambda!26545))))

(assert (=> bs!234125 (not (= lambda!26559 lambda!26556))))

(declare-fun bs!234127 () Bool)

(assert (= bs!234127 (and d!275935 b!876330)))

(assert (=> bs!234127 (not (= lambda!26559 lambda!26528))))

(assert (=> bs!234127 (= lambda!26559 lambda!26527)))

(declare-fun bs!234128 () Bool)

(assert (= bs!234128 (and d!275935 b!876632)))

(assert (=> bs!234128 (not (= lambda!26559 lambda!26548))))

(assert (=> d!275935 true))

(assert (=> d!275935 true))

(assert (=> d!275935 true))

(assert (=> d!275935 (= (isDefined!1559 (findConcatSeparation!23 EmptyExpr!2226 (regTwo!4964 r!15766) Nil!9440 s!10566 s!10566)) (Exists!25 lambda!26559))))

(declare-fun lt!329949 () Unit!14031)

(declare-fun choose!5168 (Regex!2226 Regex!2226 List!9456) Unit!14031)

(assert (=> d!275935 (= lt!329949 (choose!5168 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566))))

(assert (=> d!275935 (validRegex!695 EmptyExpr!2226)))

(assert (=> d!275935 (= (lemmaFindConcatSeparationEquivalentToExists!23 EmptyExpr!2226 (regTwo!4964 r!15766) s!10566) lt!329949)))

(declare-fun bs!234129 () Bool)

(assert (= bs!234129 d!275935))

(assert (=> bs!234129 m!1127253))

(declare-fun m!1127435 () Bool)

(assert (=> bs!234129 m!1127435))

(declare-fun m!1127437 () Bool)

(assert (=> bs!234129 m!1127437))

(declare-fun m!1127439 () Bool)

(assert (=> bs!234129 m!1127439))

(assert (=> bs!234129 m!1127253))

(assert (=> bs!234129 m!1127421))

(assert (=> b!876330 d!275935))

(declare-fun d!275937 () Bool)

(assert (=> d!275937 (= (Exists!25 lambda!26528) (choose!5165 lambda!26528))))

(declare-fun bs!234130 () Bool)

(assert (= bs!234130 d!275937))

(declare-fun m!1127441 () Bool)

(assert (=> bs!234130 m!1127441))

(assert (=> b!876330 d!275937))

(declare-fun b!876725 () Bool)

(declare-fun e!576144 () Bool)

(declare-fun call!51008 () Bool)

(assert (=> b!876725 (= e!576144 call!51008)))

(declare-fun b!876726 () Bool)

(declare-fun res!398720 () Bool)

(declare-fun e!576143 () Bool)

(assert (=> b!876726 (=> (not res!398720) (not e!576143))))

(declare-fun call!51006 () Bool)

(assert (=> b!876726 (= res!398720 call!51006)))

(declare-fun e!576141 () Bool)

(assert (=> b!876726 (= e!576141 e!576143)))

(declare-fun b!876727 () Bool)

(declare-fun res!398718 () Bool)

(declare-fun e!576142 () Bool)

(assert (=> b!876727 (=> res!398718 e!576142)))

(assert (=> b!876727 (= res!398718 (not (is-Concat!4059 r!15766)))))

(assert (=> b!876727 (= e!576141 e!576142)))

(declare-fun b!876729 () Bool)

(declare-fun e!576145 () Bool)

(assert (=> b!876729 (= e!576145 e!576141)))

(declare-fun c!141761 () Bool)

(assert (=> b!876729 (= c!141761 (is-Union!2226 r!15766))))

(declare-fun b!876730 () Bool)

(declare-fun e!576146 () Bool)

(declare-fun call!51007 () Bool)

(assert (=> b!876730 (= e!576146 call!51007)))

(declare-fun bm!51001 () Bool)

(declare-fun c!141760 () Bool)

(assert (=> bm!51001 (= call!51007 (validRegex!695 (ite c!141760 (reg!2555 r!15766) (ite c!141761 (regOne!4965 r!15766) (regOne!4964 r!15766)))))))

(declare-fun b!876731 () Bool)

(assert (=> b!876731 (= e!576142 e!576144)))

(declare-fun res!398716 () Bool)

(assert (=> b!876731 (=> (not res!398716) (not e!576144))))

(assert (=> b!876731 (= res!398716 call!51006)))

(declare-fun b!876732 () Bool)

(declare-fun e!576140 () Bool)

(assert (=> b!876732 (= e!576140 e!576145)))

(assert (=> b!876732 (= c!141760 (is-Star!2226 r!15766))))

(declare-fun bm!51002 () Bool)

(assert (=> bm!51002 (= call!51006 call!51007)))

(declare-fun b!876728 () Bool)

(assert (=> b!876728 (= e!576143 call!51008)))

(declare-fun d!275939 () Bool)

(declare-fun res!398719 () Bool)

(assert (=> d!275939 (=> res!398719 e!576140)))

(assert (=> d!275939 (= res!398719 (is-ElementMatch!2226 r!15766))))

(assert (=> d!275939 (= (validRegex!695 r!15766) e!576140)))

(declare-fun bm!51003 () Bool)

(assert (=> bm!51003 (= call!51008 (validRegex!695 (ite c!141761 (regTwo!4965 r!15766) (regTwo!4964 r!15766))))))

(declare-fun b!876733 () Bool)

(assert (=> b!876733 (= e!576145 e!576146)))

(declare-fun res!398717 () Bool)

(assert (=> b!876733 (= res!398717 (not (nullable!557 (reg!2555 r!15766))))))

(assert (=> b!876733 (=> (not res!398717) (not e!576146))))

(assert (= (and d!275939 (not res!398719)) b!876732))

(assert (= (and b!876732 c!141760) b!876733))

(assert (= (and b!876732 (not c!141760)) b!876729))

(assert (= (and b!876733 res!398717) b!876730))

(assert (= (and b!876729 c!141761) b!876726))

(assert (= (and b!876729 (not c!141761)) b!876727))

(assert (= (and b!876726 res!398720) b!876728))

(assert (= (and b!876727 (not res!398718)) b!876731))

(assert (= (and b!876731 res!398716) b!876725))

(assert (= (or b!876728 b!876725) bm!51003))

(assert (= (or b!876726 b!876731) bm!51002))

(assert (= (or b!876730 bm!51002) bm!51001))

(declare-fun m!1127443 () Bool)

(assert (=> bm!51001 m!1127443))

(declare-fun m!1127445 () Bool)

(assert (=> bm!51003 m!1127445))

(declare-fun m!1127447 () Bool)

(assert (=> b!876733 m!1127447))

(assert (=> start!79216 d!275939))

(declare-fun b!876761 () Bool)

(declare-fun e!576156 () Bool)

(declare-fun tp!277169 () Bool)

(declare-fun tp!277167 () Bool)

(assert (=> b!876761 (= e!576156 (and tp!277169 tp!277167))))

(declare-fun b!876760 () Bool)

(declare-fun tp!277171 () Bool)

(assert (=> b!876760 (= e!576156 tp!277171)))

(declare-fun b!876758 () Bool)

(assert (=> b!876758 (= e!576156 tp_is_empty!4095)))

(assert (=> b!876323 (= tp!277138 e!576156)))

(declare-fun b!876759 () Bool)

(declare-fun tp!277170 () Bool)

(declare-fun tp!277168 () Bool)

(assert (=> b!876759 (= e!576156 (and tp!277170 tp!277168))))

(assert (= (and b!876323 (is-ElementMatch!2226 (regOne!4965 r!15766))) b!876758))

(assert (= (and b!876323 (is-Concat!4059 (regOne!4965 r!15766))) b!876759))

(assert (= (and b!876323 (is-Star!2226 (regOne!4965 r!15766))) b!876760))

(assert (= (and b!876323 (is-Union!2226 (regOne!4965 r!15766))) b!876761))

(declare-fun b!876765 () Bool)

(declare-fun e!576157 () Bool)

(declare-fun tp!277174 () Bool)

(declare-fun tp!277172 () Bool)

(assert (=> b!876765 (= e!576157 (and tp!277174 tp!277172))))

(declare-fun b!876764 () Bool)

(declare-fun tp!277176 () Bool)

(assert (=> b!876764 (= e!576157 tp!277176)))

(declare-fun b!876762 () Bool)

(assert (=> b!876762 (= e!576157 tp_is_empty!4095)))

(assert (=> b!876323 (= tp!277133 e!576157)))

(declare-fun b!876763 () Bool)

(declare-fun tp!277175 () Bool)

(declare-fun tp!277173 () Bool)

(assert (=> b!876763 (= e!576157 (and tp!277175 tp!277173))))

(assert (= (and b!876323 (is-ElementMatch!2226 (regTwo!4965 r!15766))) b!876762))

(assert (= (and b!876323 (is-Concat!4059 (regTwo!4965 r!15766))) b!876763))

(assert (= (and b!876323 (is-Star!2226 (regTwo!4965 r!15766))) b!876764))

(assert (= (and b!876323 (is-Union!2226 (regTwo!4965 r!15766))) b!876765))

(declare-fun b!876769 () Bool)

(declare-fun e!576158 () Bool)

(declare-fun tp!277179 () Bool)

(declare-fun tp!277177 () Bool)

(assert (=> b!876769 (= e!576158 (and tp!277179 tp!277177))))

(declare-fun b!876768 () Bool)

(declare-fun tp!277181 () Bool)

(assert (=> b!876768 (= e!576158 tp!277181)))

(declare-fun b!876766 () Bool)

(assert (=> b!876766 (= e!576158 tp_is_empty!4095)))

(assert (=> b!876327 (= tp!277137 e!576158)))

(declare-fun b!876767 () Bool)

(declare-fun tp!277180 () Bool)

(declare-fun tp!277178 () Bool)

(assert (=> b!876767 (= e!576158 (and tp!277180 tp!277178))))

(assert (= (and b!876327 (is-ElementMatch!2226 (regOne!4964 r!15766))) b!876766))

(assert (= (and b!876327 (is-Concat!4059 (regOne!4964 r!15766))) b!876767))

(assert (= (and b!876327 (is-Star!2226 (regOne!4964 r!15766))) b!876768))

(assert (= (and b!876327 (is-Union!2226 (regOne!4964 r!15766))) b!876769))

(declare-fun b!876773 () Bool)

(declare-fun e!576159 () Bool)

(declare-fun tp!277184 () Bool)

(declare-fun tp!277182 () Bool)

(assert (=> b!876773 (= e!576159 (and tp!277184 tp!277182))))

(declare-fun b!876772 () Bool)

(declare-fun tp!277186 () Bool)

(assert (=> b!876772 (= e!576159 tp!277186)))

(declare-fun b!876770 () Bool)

(assert (=> b!876770 (= e!576159 tp_is_empty!4095)))

(assert (=> b!876327 (= tp!277136 e!576159)))

(declare-fun b!876771 () Bool)

(declare-fun tp!277185 () Bool)

(declare-fun tp!277183 () Bool)

(assert (=> b!876771 (= e!576159 (and tp!277185 tp!277183))))

(assert (= (and b!876327 (is-ElementMatch!2226 (regTwo!4964 r!15766))) b!876770))

(assert (= (and b!876327 (is-Concat!4059 (regTwo!4964 r!15766))) b!876771))

(assert (= (and b!876327 (is-Star!2226 (regTwo!4964 r!15766))) b!876772))

(assert (= (and b!876327 (is-Union!2226 (regTwo!4964 r!15766))) b!876773))

(declare-fun b!876778 () Bool)

(declare-fun e!576162 () Bool)

(declare-fun tp!277189 () Bool)

(assert (=> b!876778 (= e!576162 (and tp_is_empty!4095 tp!277189))))

(assert (=> b!876325 (= tp!277135 e!576162)))

(assert (= (and b!876325 (is-Cons!9440 (t!100502 s!10566))) b!876778))

(declare-fun b!876782 () Bool)

(declare-fun e!576163 () Bool)

(declare-fun tp!277192 () Bool)

(declare-fun tp!277190 () Bool)

(assert (=> b!876782 (= e!576163 (and tp!277192 tp!277190))))

(declare-fun b!876781 () Bool)

(declare-fun tp!277194 () Bool)

(assert (=> b!876781 (= e!576163 tp!277194)))

(declare-fun b!876779 () Bool)

(assert (=> b!876779 (= e!576163 tp_is_empty!4095)))

(assert (=> b!876324 (= tp!277134 e!576163)))

(declare-fun b!876780 () Bool)

(declare-fun tp!277193 () Bool)

(declare-fun tp!277191 () Bool)

(assert (=> b!876780 (= e!576163 (and tp!277193 tp!277191))))

(assert (= (and b!876324 (is-ElementMatch!2226 (reg!2555 r!15766))) b!876779))

(assert (= (and b!876324 (is-Concat!4059 (reg!2555 r!15766))) b!876780))

(assert (= (and b!876324 (is-Star!2226 (reg!2555 r!15766))) b!876781))

(assert (= (and b!876324 (is-Union!2226 (reg!2555 r!15766))) b!876782))

(push 1)

(assert (not bm!51003))

(assert (not bm!50983))

(assert (not b!876782))

(assert (not bm!51001))

(assert (not bm!50988))

(assert (not b!876760))

(assert (not b!876781))

(assert (not bm!50976))

(assert (not b!876767))

(assert tp_is_empty!4095)

(assert (not b!876626))

(assert (not d!275917))

(assert (not b!876773))

(assert (not d!275933))

(assert (not b!876627))

(assert (not b!876680))

(assert (not b!876644))

(assert (not b!876764))

(assert (not b!876761))

(assert (not d!275901))

(assert (not b!876529))

(assert (not b!876683))

(assert (not b!876419))

(assert (not d!275923))

(assert (not b!876435))

(assert (not b!876423))

(assert (not d!275935))

(assert (not b!876421))

(assert (not b!876424))

(assert (not b!876634))

(assert (not b!876759))

(assert (not b!876678))

(assert (not b!876546))

(assert (not b!876611))

(assert (not bm!50995))

(assert (not b!876682))

(assert (not bm!50973))

(assert (not d!275893))

(assert (not d!275937))

(assert (not b!876684))

(assert (not bm!50941))

(assert (not d!275897))

(assert (not d!275907))

(assert (not b!876433))

(assert (not b!876526))

(assert (not bm!50942))

(assert (not b!876635))

(assert (not b!876645))

(assert (not b!876428))

(assert (not b!876771))

(assert (not d!275913))

(assert (not b!876427))

(assert (not bm!50975))

(assert (not bm!50981))

(assert (not b!876763))

(assert (not bm!50994))

(assert (not b!876778))

(assert (not d!275931))

(assert (not d!275929))

(assert (not d!275899))

(assert (not b!876438))

(assert (not b!876413))

(assert (not b!876733))

(assert (not b!876676))

(assert (not b!876765))

(assert (not b!876769))

(assert (not b!876768))

(assert (not b!876414))

(assert (not b!876612))

(assert (not bm!50961))

(assert (not b!876482))

(assert (not b!876642))

(assert (not b!876640))

(assert (not b!876772))

(assert (not bm!50996))

(assert (not bm!50959))

(assert (not b!876780))

(assert (not bm!50978))

(assert (not d!275919))

(assert (not bm!50989))

(assert (not b!876437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

