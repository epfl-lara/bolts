; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290056 () Bool)

(assert start!290056)

(declare-fun b!3012416 () Bool)

(assert (=> b!3012416 true))

(assert (=> b!3012416 true))

(declare-fun e!1891261 () Bool)

(declare-datatypes ((C!18988 0))(
  ( (C!18989 (val!11530 Int)) )
))
(declare-datatypes ((Regex!9401 0))(
  ( (ElementMatch!9401 (c!496329 C!18988)) (Concat!14722 (regOne!19314 Regex!9401) (regTwo!19314 Regex!9401)) (EmptyExpr!9401) (Star!9401 (reg!9730 Regex!9401)) (EmptyLang!9401) (Union!9401 (regOne!19315 Regex!9401) (regTwo!19315 Regex!9401)) )
))
(declare-fun r!17423 () Regex!9401)

(declare-fun validRegex!4134 (Regex!9401) Bool)

(assert (=> b!3012416 (= e!1891261 (validRegex!4134 (regOne!19314 r!17423)))))

(declare-datatypes ((List!35266 0))(
  ( (Nil!35142) (Cons!35142 (h!40562 C!18988) (t!234331 List!35266)) )
))
(declare-fun s!11993 () List!35266)

(declare-fun lambda!112702 () Int)

(declare-datatypes ((tuple2!34084 0))(
  ( (tuple2!34085 (_1!20174 List!35266) (_2!20174 List!35266)) )
))
(declare-datatypes ((Option!6774 0))(
  ( (None!6773) (Some!6773 (v!34907 tuple2!34084)) )
))
(declare-fun isDefined!5325 (Option!6774) Bool)

(declare-fun findConcatSeparation!1168 (Regex!9401 Regex!9401 List!35266 List!35266 List!35266) Option!6774)

(declare-fun Exists!1669 (Int) Bool)

(assert (=> b!3012416 (= (isDefined!5325 (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) Nil!35142 s!11993 s!11993)) (Exists!1669 lambda!112702))))

(declare-datatypes ((Unit!49225 0))(
  ( (Unit!49226) )
))
(declare-fun lt!1044062 () Unit!49225)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!946 (Regex!9401 Regex!9401 List!35266) Unit!49225)

(assert (=> b!3012416 (= lt!1044062 (lemmaFindConcatSeparationEquivalentToExists!946 (regOne!19314 r!17423) (regTwo!19314 r!17423) s!11993))))

(declare-fun b!3012417 () Bool)

(declare-fun e!1891259 () Bool)

(assert (=> b!3012417 (= e!1891259 (not e!1891261))))

(declare-fun res!1241326 () Bool)

(assert (=> b!3012417 (=> res!1241326 e!1891261)))

(declare-fun lt!1044061 () Bool)

(get-info :version)

(assert (=> b!3012417 (= res!1241326 (or (not lt!1044061) (not ((_ is Concat!14722) r!17423))))))

(declare-fun matchRSpec!1538 (Regex!9401 List!35266) Bool)

(assert (=> b!3012417 (= lt!1044061 (matchRSpec!1538 r!17423 s!11993))))

(declare-fun matchR!4283 (Regex!9401 List!35266) Bool)

(assert (=> b!3012417 (= lt!1044061 (matchR!4283 r!17423 s!11993))))

(declare-fun lt!1044060 () Unit!49225)

(declare-fun mainMatchTheorem!1538 (Regex!9401 List!35266) Unit!49225)

(assert (=> b!3012417 (= lt!1044060 (mainMatchTheorem!1538 r!17423 s!11993))))

(declare-fun b!3012418 () Bool)

(declare-fun e!1891260 () Bool)

(declare-fun tp_is_empty!16365 () Bool)

(assert (=> b!3012418 (= e!1891260 tp_is_empty!16365)))

(declare-fun b!3012420 () Bool)

(declare-fun tp!955964 () Bool)

(assert (=> b!3012420 (= e!1891260 tp!955964)))

(declare-fun b!3012421 () Bool)

(declare-fun tp!955965 () Bool)

(declare-fun tp!955966 () Bool)

(assert (=> b!3012421 (= e!1891260 (and tp!955965 tp!955966))))

(declare-fun res!1241324 () Bool)

(assert (=> start!290056 (=> (not res!1241324) (not e!1891259))))

(assert (=> start!290056 (= res!1241324 (validRegex!4134 r!17423))))

(assert (=> start!290056 e!1891259))

(assert (=> start!290056 e!1891260))

(declare-fun e!1891258 () Bool)

(assert (=> start!290056 e!1891258))

(declare-fun b!3012419 () Bool)

(declare-fun res!1241325 () Bool)

(assert (=> b!3012419 (=> res!1241325 e!1891261)))

(declare-fun isEmpty!19429 (List!35266) Bool)

(assert (=> b!3012419 (= res!1241325 (isEmpty!19429 s!11993))))

(declare-fun b!3012422 () Bool)

(declare-fun tp!955968 () Bool)

(assert (=> b!3012422 (= e!1891258 (and tp_is_empty!16365 tp!955968))))

(declare-fun b!3012423 () Bool)

(declare-fun tp!955969 () Bool)

(declare-fun tp!955967 () Bool)

(assert (=> b!3012423 (= e!1891260 (and tp!955969 tp!955967))))

(assert (= (and start!290056 res!1241324) b!3012417))

(assert (= (and b!3012417 (not res!1241326)) b!3012419))

(assert (= (and b!3012419 (not res!1241325)) b!3012416))

(assert (= (and start!290056 ((_ is ElementMatch!9401) r!17423)) b!3012418))

(assert (= (and start!290056 ((_ is Concat!14722) r!17423)) b!3012423))

(assert (= (and start!290056 ((_ is Star!9401) r!17423)) b!3012420))

(assert (= (and start!290056 ((_ is Union!9401) r!17423)) b!3012421))

(assert (= (and start!290056 ((_ is Cons!35142) s!11993)) b!3012422))

(declare-fun m!3358005 () Bool)

(assert (=> b!3012416 m!3358005))

(declare-fun m!3358007 () Bool)

(assert (=> b!3012416 m!3358007))

(declare-fun m!3358009 () Bool)

(assert (=> b!3012416 m!3358009))

(declare-fun m!3358011 () Bool)

(assert (=> b!3012416 m!3358011))

(assert (=> b!3012416 m!3358009))

(declare-fun m!3358013 () Bool)

(assert (=> b!3012416 m!3358013))

(declare-fun m!3358015 () Bool)

(assert (=> b!3012417 m!3358015))

(declare-fun m!3358017 () Bool)

(assert (=> b!3012417 m!3358017))

(declare-fun m!3358019 () Bool)

(assert (=> b!3012417 m!3358019))

(declare-fun m!3358021 () Bool)

(assert (=> start!290056 m!3358021))

(declare-fun m!3358023 () Bool)

(assert (=> b!3012419 m!3358023))

(check-sat tp_is_empty!16365 (not b!3012416) (not start!290056) (not b!3012420) (not b!3012422) (not b!3012423) (not b!3012421) (not b!3012419) (not b!3012417))
(check-sat)
(get-model)

(declare-fun d!847880 () Bool)

(assert (=> d!847880 (= (isEmpty!19429 s!11993) ((_ is Nil!35142) s!11993))))

(assert (=> b!3012419 d!847880))

(declare-fun b!3012446 () Bool)

(declare-fun e!1891281 () Bool)

(declare-fun call!203072 () Bool)

(assert (=> b!3012446 (= e!1891281 call!203072)))

(declare-fun d!847882 () Bool)

(declare-fun res!1241340 () Bool)

(declare-fun e!1891278 () Bool)

(assert (=> d!847882 (=> res!1241340 e!1891278)))

(assert (=> d!847882 (= res!1241340 ((_ is ElementMatch!9401) (regOne!19314 r!17423)))))

(assert (=> d!847882 (= (validRegex!4134 (regOne!19314 r!17423)) e!1891278)))

(declare-fun b!3012447 () Bool)

(declare-fun e!1891277 () Bool)

(declare-fun call!203071 () Bool)

(assert (=> b!3012447 (= e!1891277 call!203071)))

(declare-fun b!3012448 () Bool)

(declare-fun e!1891280 () Bool)

(declare-fun e!1891282 () Bool)

(assert (=> b!3012448 (= e!1891280 e!1891282)))

(declare-fun res!1241337 () Bool)

(assert (=> b!3012448 (=> (not res!1241337) (not e!1891282))))

(assert (=> b!3012448 (= res!1241337 call!203072)))

(declare-fun b!3012449 () Bool)

(declare-fun res!1241341 () Bool)

(assert (=> b!3012449 (=> res!1241341 e!1891280)))

(assert (=> b!3012449 (= res!1241341 (not ((_ is Concat!14722) (regOne!19314 r!17423))))))

(declare-fun e!1891276 () Bool)

(assert (=> b!3012449 (= e!1891276 e!1891280)))

(declare-fun bm!203066 () Bool)

(declare-fun c!496334 () Bool)

(assert (=> bm!203066 (= call!203072 (validRegex!4134 (ite c!496334 (regTwo!19315 (regOne!19314 r!17423)) (regOne!19314 (regOne!19314 r!17423)))))))

(declare-fun b!3012450 () Bool)

(declare-fun e!1891279 () Bool)

(assert (=> b!3012450 (= e!1891279 e!1891277)))

(declare-fun res!1241339 () Bool)

(declare-fun nullable!3052 (Regex!9401) Bool)

(assert (=> b!3012450 (= res!1241339 (not (nullable!3052 (reg!9730 (regOne!19314 r!17423)))))))

(assert (=> b!3012450 (=> (not res!1241339) (not e!1891277))))

(declare-fun b!3012451 () Bool)

(assert (=> b!3012451 (= e!1891279 e!1891276)))

(assert (=> b!3012451 (= c!496334 ((_ is Union!9401) (regOne!19314 r!17423)))))

(declare-fun bm!203067 () Bool)

(declare-fun call!203073 () Bool)

(assert (=> bm!203067 (= call!203073 call!203071)))

(declare-fun b!3012452 () Bool)

(assert (=> b!3012452 (= e!1891278 e!1891279)))

(declare-fun c!496335 () Bool)

(assert (=> b!3012452 (= c!496335 ((_ is Star!9401) (regOne!19314 r!17423)))))

(declare-fun b!3012453 () Bool)

(assert (=> b!3012453 (= e!1891282 call!203073)))

(declare-fun bm!203068 () Bool)

(assert (=> bm!203068 (= call!203071 (validRegex!4134 (ite c!496335 (reg!9730 (regOne!19314 r!17423)) (ite c!496334 (regOne!19315 (regOne!19314 r!17423)) (regTwo!19314 (regOne!19314 r!17423))))))))

(declare-fun b!3012454 () Bool)

(declare-fun res!1241338 () Bool)

(assert (=> b!3012454 (=> (not res!1241338) (not e!1891281))))

(assert (=> b!3012454 (= res!1241338 call!203073)))

(assert (=> b!3012454 (= e!1891276 e!1891281)))

(assert (= (and d!847882 (not res!1241340)) b!3012452))

(assert (= (and b!3012452 c!496335) b!3012450))

(assert (= (and b!3012452 (not c!496335)) b!3012451))

(assert (= (and b!3012450 res!1241339) b!3012447))

(assert (= (and b!3012451 c!496334) b!3012454))

(assert (= (and b!3012451 (not c!496334)) b!3012449))

(assert (= (and b!3012454 res!1241338) b!3012446))

(assert (= (and b!3012449 (not res!1241341)) b!3012448))

(assert (= (and b!3012448 res!1241337) b!3012453))

(assert (= (or b!3012454 b!3012453) bm!203067))

(assert (= (or b!3012446 b!3012448) bm!203066))

(assert (= (or b!3012447 bm!203067) bm!203068))

(declare-fun m!3358025 () Bool)

(assert (=> bm!203066 m!3358025))

(declare-fun m!3358027 () Bool)

(assert (=> b!3012450 m!3358027))

(declare-fun m!3358029 () Bool)

(assert (=> bm!203068 m!3358029))

(assert (=> b!3012416 d!847882))

(declare-fun d!847886 () Bool)

(declare-fun choose!17883 (Int) Bool)

(assert (=> d!847886 (= (Exists!1669 lambda!112702) (choose!17883 lambda!112702))))

(declare-fun bs!529602 () Bool)

(assert (= bs!529602 d!847886))

(declare-fun m!3358031 () Bool)

(assert (=> bs!529602 m!3358031))

(assert (=> b!3012416 d!847886))

(declare-fun d!847888 () Bool)

(declare-fun isEmpty!19430 (Option!6774) Bool)

(assert (=> d!847888 (= (isDefined!5325 (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) Nil!35142 s!11993 s!11993)) (not (isEmpty!19430 (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) Nil!35142 s!11993 s!11993))))))

(declare-fun bs!529603 () Bool)

(assert (= bs!529603 d!847888))

(assert (=> bs!529603 m!3358009))

(declare-fun m!3358033 () Bool)

(assert (=> bs!529603 m!3358033))

(assert (=> b!3012416 d!847888))

(declare-fun d!847890 () Bool)

(declare-fun e!1891318 () Bool)

(assert (=> d!847890 e!1891318))

(declare-fun res!1241373 () Bool)

(assert (=> d!847890 (=> res!1241373 e!1891318)))

(declare-fun e!1891322 () Bool)

(assert (=> d!847890 (= res!1241373 e!1891322)))

(declare-fun res!1241374 () Bool)

(assert (=> d!847890 (=> (not res!1241374) (not e!1891322))))

(declare-fun lt!1044071 () Option!6774)

(assert (=> d!847890 (= res!1241374 (isDefined!5325 lt!1044071))))

(declare-fun e!1891321 () Option!6774)

(assert (=> d!847890 (= lt!1044071 e!1891321)))

(declare-fun c!496353 () Bool)

(declare-fun e!1891320 () Bool)

(assert (=> d!847890 (= c!496353 e!1891320)))

(declare-fun res!1241372 () Bool)

(assert (=> d!847890 (=> (not res!1241372) (not e!1891320))))

(assert (=> d!847890 (= res!1241372 (matchR!4283 (regOne!19314 r!17423) Nil!35142))))

(assert (=> d!847890 (validRegex!4134 (regOne!19314 r!17423))))

(assert (=> d!847890 (= (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) Nil!35142 s!11993 s!11993) lt!1044071)))

(declare-fun b!3012516 () Bool)

(declare-fun lt!1044069 () Unit!49225)

(declare-fun lt!1044070 () Unit!49225)

(assert (=> b!3012516 (= lt!1044069 lt!1044070)))

(declare-fun ++!8420 (List!35266 List!35266) List!35266)

(assert (=> b!3012516 (= (++!8420 (++!8420 Nil!35142 (Cons!35142 (h!40562 s!11993) Nil!35142)) (t!234331 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1027 (List!35266 C!18988 List!35266 List!35266) Unit!49225)

(assert (=> b!3012516 (= lt!1044070 (lemmaMoveElementToOtherListKeepsConcatEq!1027 Nil!35142 (h!40562 s!11993) (t!234331 s!11993) s!11993))))

(declare-fun e!1891319 () Option!6774)

(assert (=> b!3012516 (= e!1891319 (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) (++!8420 Nil!35142 (Cons!35142 (h!40562 s!11993) Nil!35142)) (t!234331 s!11993) s!11993))))

(declare-fun b!3012517 () Bool)

(assert (=> b!3012517 (= e!1891320 (matchR!4283 (regTwo!19314 r!17423) s!11993))))

(declare-fun b!3012518 () Bool)

(declare-fun res!1241375 () Bool)

(assert (=> b!3012518 (=> (not res!1241375) (not e!1891322))))

(declare-fun get!10941 (Option!6774) tuple2!34084)

(assert (=> b!3012518 (= res!1241375 (matchR!4283 (regTwo!19314 r!17423) (_2!20174 (get!10941 lt!1044071))))))

(declare-fun b!3012519 () Bool)

(assert (=> b!3012519 (= e!1891318 (not (isDefined!5325 lt!1044071)))))

(declare-fun b!3012520 () Bool)

(declare-fun res!1241371 () Bool)

(assert (=> b!3012520 (=> (not res!1241371) (not e!1891322))))

(assert (=> b!3012520 (= res!1241371 (matchR!4283 (regOne!19314 r!17423) (_1!20174 (get!10941 lt!1044071))))))

(declare-fun b!3012521 () Bool)

(assert (=> b!3012521 (= e!1891321 e!1891319)))

(declare-fun c!496352 () Bool)

(assert (=> b!3012521 (= c!496352 ((_ is Nil!35142) s!11993))))

(declare-fun b!3012522 () Bool)

(assert (=> b!3012522 (= e!1891321 (Some!6773 (tuple2!34085 Nil!35142 s!11993)))))

(declare-fun b!3012523 () Bool)

(assert (=> b!3012523 (= e!1891322 (= (++!8420 (_1!20174 (get!10941 lt!1044071)) (_2!20174 (get!10941 lt!1044071))) s!11993))))

(declare-fun b!3012524 () Bool)

(assert (=> b!3012524 (= e!1891319 None!6773)))

(assert (= (and d!847890 res!1241372) b!3012517))

(assert (= (and d!847890 c!496353) b!3012522))

(assert (= (and d!847890 (not c!496353)) b!3012521))

(assert (= (and b!3012521 c!496352) b!3012524))

(assert (= (and b!3012521 (not c!496352)) b!3012516))

(assert (= (and d!847890 res!1241374) b!3012520))

(assert (= (and b!3012520 res!1241371) b!3012518))

(assert (= (and b!3012518 res!1241375) b!3012523))

(assert (= (and d!847890 (not res!1241373)) b!3012519))

(declare-fun m!3358041 () Bool)

(assert (=> b!3012518 m!3358041))

(declare-fun m!3358043 () Bool)

(assert (=> b!3012518 m!3358043))

(assert (=> b!3012520 m!3358041))

(declare-fun m!3358045 () Bool)

(assert (=> b!3012520 m!3358045))

(declare-fun m!3358047 () Bool)

(assert (=> b!3012519 m!3358047))

(assert (=> b!3012523 m!3358041))

(declare-fun m!3358049 () Bool)

(assert (=> b!3012523 m!3358049))

(declare-fun m!3358051 () Bool)

(assert (=> b!3012516 m!3358051))

(assert (=> b!3012516 m!3358051))

(declare-fun m!3358053 () Bool)

(assert (=> b!3012516 m!3358053))

(declare-fun m!3358055 () Bool)

(assert (=> b!3012516 m!3358055))

(assert (=> b!3012516 m!3358051))

(declare-fun m!3358057 () Bool)

(assert (=> b!3012516 m!3358057))

(assert (=> d!847890 m!3358047))

(declare-fun m!3358059 () Bool)

(assert (=> d!847890 m!3358059))

(assert (=> d!847890 m!3358007))

(declare-fun m!3358061 () Bool)

(assert (=> b!3012517 m!3358061))

(assert (=> b!3012416 d!847890))

(declare-fun bs!529607 () Bool)

(declare-fun d!847894 () Bool)

(assert (= bs!529607 (and d!847894 b!3012416)))

(declare-fun lambda!112711 () Int)

(assert (=> bs!529607 (= lambda!112711 lambda!112702)))

(assert (=> d!847894 true))

(assert (=> d!847894 true))

(assert (=> d!847894 true))

(assert (=> d!847894 (= (isDefined!5325 (findConcatSeparation!1168 (regOne!19314 r!17423) (regTwo!19314 r!17423) Nil!35142 s!11993 s!11993)) (Exists!1669 lambda!112711))))

(declare-fun lt!1044076 () Unit!49225)

(declare-fun choose!17886 (Regex!9401 Regex!9401 List!35266) Unit!49225)

(assert (=> d!847894 (= lt!1044076 (choose!17886 (regOne!19314 r!17423) (regTwo!19314 r!17423) s!11993))))

(assert (=> d!847894 (validRegex!4134 (regOne!19314 r!17423))))

(assert (=> d!847894 (= (lemmaFindConcatSeparationEquivalentToExists!946 (regOne!19314 r!17423) (regTwo!19314 r!17423) s!11993) lt!1044076)))

(declare-fun bs!529608 () Bool)

(assert (= bs!529608 d!847894))

(assert (=> bs!529608 m!3358009))

(assert (=> bs!529608 m!3358011))

(assert (=> bs!529608 m!3358007))

(assert (=> bs!529608 m!3358009))

(declare-fun m!3358063 () Bool)

(assert (=> bs!529608 m!3358063))

(declare-fun m!3358065 () Bool)

(assert (=> bs!529608 m!3358065))

(assert (=> b!3012416 d!847894))

(declare-fun bs!529612 () Bool)

(declare-fun b!3012636 () Bool)

(assert (= bs!529612 (and b!3012636 b!3012416)))

(declare-fun lambda!112716 () Int)

(assert (=> bs!529612 (not (= lambda!112716 lambda!112702))))

(declare-fun bs!529613 () Bool)

(assert (= bs!529613 (and b!3012636 d!847894)))

(assert (=> bs!529613 (not (= lambda!112716 lambda!112711))))

(assert (=> b!3012636 true))

(assert (=> b!3012636 true))

(declare-fun bs!529614 () Bool)

(declare-fun b!3012639 () Bool)

(assert (= bs!529614 (and b!3012639 b!3012416)))

(declare-fun lambda!112717 () Int)

(assert (=> bs!529614 (not (= lambda!112717 lambda!112702))))

(declare-fun bs!529615 () Bool)

(assert (= bs!529615 (and b!3012639 d!847894)))

(assert (=> bs!529615 (not (= lambda!112717 lambda!112711))))

(declare-fun bs!529616 () Bool)

(assert (= bs!529616 (and b!3012639 b!3012636)))

(assert (=> bs!529616 (not (= lambda!112717 lambda!112716))))

(assert (=> b!3012639 true))

(assert (=> b!3012639 true))

(declare-fun bm!203091 () Bool)

(declare-fun call!203097 () Bool)

(assert (=> bm!203091 (= call!203097 (isEmpty!19429 s!11993))))

(declare-fun b!3012630 () Bool)

(declare-fun c!496380 () Bool)

(assert (=> b!3012630 (= c!496380 ((_ is Union!9401) r!17423))))

(declare-fun e!1891391 () Bool)

(declare-fun e!1891388 () Bool)

(assert (=> b!3012630 (= e!1891391 e!1891388)))

(declare-fun c!496377 () Bool)

(declare-fun bm!203092 () Bool)

(declare-fun call!203096 () Bool)

(assert (=> bm!203092 (= call!203096 (Exists!1669 (ite c!496377 lambda!112716 lambda!112717)))))

(declare-fun b!3012631 () Bool)

(declare-fun e!1891390 () Bool)

(assert (=> b!3012631 (= e!1891388 e!1891390)))

(assert (=> b!3012631 (= c!496377 ((_ is Star!9401) r!17423))))

(declare-fun b!3012632 () Bool)

(declare-fun e!1891386 () Bool)

(declare-fun e!1891389 () Bool)

(assert (=> b!3012632 (= e!1891386 e!1891389)))

(declare-fun res!1241436 () Bool)

(assert (=> b!3012632 (= res!1241436 (not ((_ is EmptyLang!9401) r!17423)))))

(assert (=> b!3012632 (=> (not res!1241436) (not e!1891389))))

(declare-fun b!3012633 () Bool)

(assert (=> b!3012633 (= e!1891391 (= s!11993 (Cons!35142 (c!496329 r!17423) Nil!35142)))))

(declare-fun b!3012634 () Bool)

(declare-fun c!496378 () Bool)

(assert (=> b!3012634 (= c!496378 ((_ is ElementMatch!9401) r!17423))))

(assert (=> b!3012634 (= e!1891389 e!1891391)))

(declare-fun b!3012635 () Bool)

(declare-fun e!1891385 () Bool)

(assert (=> b!3012635 (= e!1891385 (matchRSpec!1538 (regTwo!19315 r!17423) s!11993))))

(declare-fun b!3012637 () Bool)

(declare-fun res!1241435 () Bool)

(declare-fun e!1891387 () Bool)

(assert (=> b!3012637 (=> res!1241435 e!1891387)))

(assert (=> b!3012637 (= res!1241435 call!203097)))

(assert (=> b!3012637 (= e!1891390 e!1891387)))

(declare-fun b!3012638 () Bool)

(assert (=> b!3012638 (= e!1891386 call!203097)))

(assert (=> b!3012639 (= e!1891390 call!203096)))

(declare-fun b!3012640 () Bool)

(assert (=> b!3012640 (= e!1891388 e!1891385)))

(declare-fun res!1241437 () Bool)

(assert (=> b!3012640 (= res!1241437 (matchRSpec!1538 (regOne!19315 r!17423) s!11993))))

(assert (=> b!3012640 (=> res!1241437 e!1891385)))

(assert (=> b!3012636 (= e!1891387 call!203096)))

(declare-fun d!847896 () Bool)

(declare-fun c!496379 () Bool)

(assert (=> d!847896 (= c!496379 ((_ is EmptyExpr!9401) r!17423))))

(assert (=> d!847896 (= (matchRSpec!1538 r!17423 s!11993) e!1891386)))

(assert (= (and d!847896 c!496379) b!3012638))

(assert (= (and d!847896 (not c!496379)) b!3012632))

(assert (= (and b!3012632 res!1241436) b!3012634))

(assert (= (and b!3012634 c!496378) b!3012633))

(assert (= (and b!3012634 (not c!496378)) b!3012630))

(assert (= (and b!3012630 c!496380) b!3012640))

(assert (= (and b!3012630 (not c!496380)) b!3012631))

(assert (= (and b!3012640 (not res!1241437)) b!3012635))

(assert (= (and b!3012631 c!496377) b!3012637))

(assert (= (and b!3012631 (not c!496377)) b!3012639))

(assert (= (and b!3012637 (not res!1241435)) b!3012636))

(assert (= (or b!3012636 b!3012639) bm!203092))

(assert (= (or b!3012638 b!3012637) bm!203091))

(assert (=> bm!203091 m!3358023))

(declare-fun m!3358091 () Bool)

(assert (=> bm!203092 m!3358091))

(declare-fun m!3358093 () Bool)

(assert (=> b!3012635 m!3358093))

(declare-fun m!3358095 () Bool)

(assert (=> b!3012640 m!3358095))

(assert (=> b!3012417 d!847896))

(declare-fun b!3012696 () Bool)

(declare-fun e!1891426 () Bool)

(declare-fun e!1891427 () Bool)

(assert (=> b!3012696 (= e!1891426 e!1891427)))

(declare-fun c!496394 () Bool)

(assert (=> b!3012696 (= c!496394 ((_ is EmptyLang!9401) r!17423))))

(declare-fun b!3012698 () Bool)

(declare-fun e!1891421 () Bool)

(declare-fun head!6710 (List!35266) C!18988)

(assert (=> b!3012698 (= e!1891421 (= (head!6710 s!11993) (c!496329 r!17423)))))

(declare-fun b!3012699 () Bool)

(declare-fun lt!1044092 () Bool)

(declare-fun call!203100 () Bool)

(assert (=> b!3012699 (= e!1891426 (= lt!1044092 call!203100))))

(declare-fun b!3012700 () Bool)

(declare-fun e!1891423 () Bool)

(assert (=> b!3012700 (= e!1891423 (not (= (head!6710 s!11993) (c!496329 r!17423))))))

(declare-fun b!3012701 () Bool)

(declare-fun res!1241476 () Bool)

(assert (=> b!3012701 (=> (not res!1241476) (not e!1891421))))

(declare-fun tail!4936 (List!35266) List!35266)

(assert (=> b!3012701 (= res!1241476 (isEmpty!19429 (tail!4936 s!11993)))))

(declare-fun b!3012702 () Bool)

(declare-fun e!1891422 () Bool)

(assert (=> b!3012702 (= e!1891422 (nullable!3052 r!17423))))

(declare-fun b!3012703 () Bool)

(declare-fun res!1241470 () Bool)

(assert (=> b!3012703 (=> res!1241470 e!1891423)))

(assert (=> b!3012703 (= res!1241470 (not (isEmpty!19429 (tail!4936 s!11993))))))

(declare-fun b!3012704 () Bool)

(assert (=> b!3012704 (= e!1891427 (not lt!1044092))))

(declare-fun b!3012705 () Bool)

(declare-fun derivativeStep!2651 (Regex!9401 C!18988) Regex!9401)

(assert (=> b!3012705 (= e!1891422 (matchR!4283 (derivativeStep!2651 r!17423 (head!6710 s!11993)) (tail!4936 s!11993)))))

(declare-fun d!847908 () Bool)

(assert (=> d!847908 e!1891426))

(declare-fun c!496395 () Bool)

(assert (=> d!847908 (= c!496395 ((_ is EmptyExpr!9401) r!17423))))

(assert (=> d!847908 (= lt!1044092 e!1891422)))

(declare-fun c!496393 () Bool)

(assert (=> d!847908 (= c!496393 (isEmpty!19429 s!11993))))

(assert (=> d!847908 (validRegex!4134 r!17423)))

(assert (=> d!847908 (= (matchR!4283 r!17423 s!11993) lt!1044092)))

(declare-fun b!3012697 () Bool)

(declare-fun e!1891424 () Bool)

(declare-fun e!1891425 () Bool)

(assert (=> b!3012697 (= e!1891424 e!1891425)))

(declare-fun res!1241469 () Bool)

(assert (=> b!3012697 (=> (not res!1241469) (not e!1891425))))

(assert (=> b!3012697 (= res!1241469 (not lt!1044092))))

(declare-fun b!3012706 () Bool)

(assert (=> b!3012706 (= e!1891425 e!1891423)))

(declare-fun res!1241471 () Bool)

(assert (=> b!3012706 (=> res!1241471 e!1891423)))

(assert (=> b!3012706 (= res!1241471 call!203100)))

(declare-fun b!3012707 () Bool)

(declare-fun res!1241473 () Bool)

(assert (=> b!3012707 (=> res!1241473 e!1891424)))

(assert (=> b!3012707 (= res!1241473 e!1891421)))

(declare-fun res!1241475 () Bool)

(assert (=> b!3012707 (=> (not res!1241475) (not e!1891421))))

(assert (=> b!3012707 (= res!1241475 lt!1044092)))

(declare-fun bm!203095 () Bool)

(assert (=> bm!203095 (= call!203100 (isEmpty!19429 s!11993))))

(declare-fun b!3012708 () Bool)

(declare-fun res!1241472 () Bool)

(assert (=> b!3012708 (=> (not res!1241472) (not e!1891421))))

(assert (=> b!3012708 (= res!1241472 (not call!203100))))

(declare-fun b!3012709 () Bool)

(declare-fun res!1241474 () Bool)

(assert (=> b!3012709 (=> res!1241474 e!1891424)))

(assert (=> b!3012709 (= res!1241474 (not ((_ is ElementMatch!9401) r!17423)))))

(assert (=> b!3012709 (= e!1891427 e!1891424)))

(assert (= (and d!847908 c!496393) b!3012702))

(assert (= (and d!847908 (not c!496393)) b!3012705))

(assert (= (and d!847908 c!496395) b!3012699))

(assert (= (and d!847908 (not c!496395)) b!3012696))

(assert (= (and b!3012696 c!496394) b!3012704))

(assert (= (and b!3012696 (not c!496394)) b!3012709))

(assert (= (and b!3012709 (not res!1241474)) b!3012707))

(assert (= (and b!3012707 res!1241475) b!3012708))

(assert (= (and b!3012708 res!1241472) b!3012701))

(assert (= (and b!3012701 res!1241476) b!3012698))

(assert (= (and b!3012707 (not res!1241473)) b!3012697))

(assert (= (and b!3012697 res!1241469) b!3012706))

(assert (= (and b!3012706 (not res!1241471)) b!3012703))

(assert (= (and b!3012703 (not res!1241470)) b!3012700))

(assert (= (or b!3012699 b!3012706 b!3012708) bm!203095))

(declare-fun m!3358119 () Bool)

(assert (=> b!3012703 m!3358119))

(assert (=> b!3012703 m!3358119))

(declare-fun m!3358121 () Bool)

(assert (=> b!3012703 m!3358121))

(assert (=> b!3012701 m!3358119))

(assert (=> b!3012701 m!3358119))

(assert (=> b!3012701 m!3358121))

(declare-fun m!3358123 () Bool)

(assert (=> b!3012705 m!3358123))

(assert (=> b!3012705 m!3358123))

(declare-fun m!3358125 () Bool)

(assert (=> b!3012705 m!3358125))

(assert (=> b!3012705 m!3358119))

(assert (=> b!3012705 m!3358125))

(assert (=> b!3012705 m!3358119))

(declare-fun m!3358127 () Bool)

(assert (=> b!3012705 m!3358127))

(assert (=> d!847908 m!3358023))

(assert (=> d!847908 m!3358021))

(assert (=> b!3012698 m!3358123))

(assert (=> b!3012700 m!3358123))

(assert (=> bm!203095 m!3358023))

(declare-fun m!3358129 () Bool)

(assert (=> b!3012702 m!3358129))

(assert (=> b!3012417 d!847908))

(declare-fun d!847912 () Bool)

(assert (=> d!847912 (= (matchR!4283 r!17423 s!11993) (matchRSpec!1538 r!17423 s!11993))))

(declare-fun lt!1044095 () Unit!49225)

(declare-fun choose!17888 (Regex!9401 List!35266) Unit!49225)

(assert (=> d!847912 (= lt!1044095 (choose!17888 r!17423 s!11993))))

(assert (=> d!847912 (validRegex!4134 r!17423)))

(assert (=> d!847912 (= (mainMatchTheorem!1538 r!17423 s!11993) lt!1044095)))

(declare-fun bs!529617 () Bool)

(assert (= bs!529617 d!847912))

(assert (=> bs!529617 m!3358017))

(assert (=> bs!529617 m!3358015))

(declare-fun m!3358131 () Bool)

(assert (=> bs!529617 m!3358131))

(assert (=> bs!529617 m!3358021))

(assert (=> b!3012417 d!847912))

(declare-fun b!3012710 () Bool)

(declare-fun e!1891433 () Bool)

(declare-fun call!203102 () Bool)

(assert (=> b!3012710 (= e!1891433 call!203102)))

(declare-fun d!847914 () Bool)

(declare-fun res!1241480 () Bool)

(declare-fun e!1891430 () Bool)

(assert (=> d!847914 (=> res!1241480 e!1891430)))

(assert (=> d!847914 (= res!1241480 ((_ is ElementMatch!9401) r!17423))))

(assert (=> d!847914 (= (validRegex!4134 r!17423) e!1891430)))

(declare-fun b!3012711 () Bool)

(declare-fun e!1891429 () Bool)

(declare-fun call!203101 () Bool)

(assert (=> b!3012711 (= e!1891429 call!203101)))

(declare-fun b!3012712 () Bool)

(declare-fun e!1891432 () Bool)

(declare-fun e!1891434 () Bool)

(assert (=> b!3012712 (= e!1891432 e!1891434)))

(declare-fun res!1241477 () Bool)

(assert (=> b!3012712 (=> (not res!1241477) (not e!1891434))))

(assert (=> b!3012712 (= res!1241477 call!203102)))

(declare-fun b!3012713 () Bool)

(declare-fun res!1241481 () Bool)

(assert (=> b!3012713 (=> res!1241481 e!1891432)))

(assert (=> b!3012713 (= res!1241481 (not ((_ is Concat!14722) r!17423)))))

(declare-fun e!1891428 () Bool)

(assert (=> b!3012713 (= e!1891428 e!1891432)))

(declare-fun bm!203096 () Bool)

(declare-fun c!496396 () Bool)

(assert (=> bm!203096 (= call!203102 (validRegex!4134 (ite c!496396 (regTwo!19315 r!17423) (regOne!19314 r!17423))))))

(declare-fun b!3012714 () Bool)

(declare-fun e!1891431 () Bool)

(assert (=> b!3012714 (= e!1891431 e!1891429)))

(declare-fun res!1241479 () Bool)

(assert (=> b!3012714 (= res!1241479 (not (nullable!3052 (reg!9730 r!17423))))))

(assert (=> b!3012714 (=> (not res!1241479) (not e!1891429))))

(declare-fun b!3012715 () Bool)

(assert (=> b!3012715 (= e!1891431 e!1891428)))

(assert (=> b!3012715 (= c!496396 ((_ is Union!9401) r!17423))))

(declare-fun bm!203097 () Bool)

(declare-fun call!203103 () Bool)

(assert (=> bm!203097 (= call!203103 call!203101)))

(declare-fun b!3012716 () Bool)

(assert (=> b!3012716 (= e!1891430 e!1891431)))

(declare-fun c!496397 () Bool)

(assert (=> b!3012716 (= c!496397 ((_ is Star!9401) r!17423))))

(declare-fun b!3012717 () Bool)

(assert (=> b!3012717 (= e!1891434 call!203103)))

(declare-fun bm!203098 () Bool)

(assert (=> bm!203098 (= call!203101 (validRegex!4134 (ite c!496397 (reg!9730 r!17423) (ite c!496396 (regOne!19315 r!17423) (regTwo!19314 r!17423)))))))

(declare-fun b!3012718 () Bool)

(declare-fun res!1241478 () Bool)

(assert (=> b!3012718 (=> (not res!1241478) (not e!1891433))))

(assert (=> b!3012718 (= res!1241478 call!203103)))

(assert (=> b!3012718 (= e!1891428 e!1891433)))

(assert (= (and d!847914 (not res!1241480)) b!3012716))

(assert (= (and b!3012716 c!496397) b!3012714))

(assert (= (and b!3012716 (not c!496397)) b!3012715))

(assert (= (and b!3012714 res!1241479) b!3012711))

(assert (= (and b!3012715 c!496396) b!3012718))

(assert (= (and b!3012715 (not c!496396)) b!3012713))

(assert (= (and b!3012718 res!1241478) b!3012710))

(assert (= (and b!3012713 (not res!1241481)) b!3012712))

(assert (= (and b!3012712 res!1241477) b!3012717))

(assert (= (or b!3012718 b!3012717) bm!203097))

(assert (= (or b!3012710 b!3012712) bm!203096))

(assert (= (or b!3012711 bm!203097) bm!203098))

(declare-fun m!3358133 () Bool)

(assert (=> bm!203096 m!3358133))

(declare-fun m!3358135 () Bool)

(assert (=> b!3012714 m!3358135))

(declare-fun m!3358137 () Bool)

(assert (=> bm!203098 m!3358137))

(assert (=> start!290056 d!847914))

(declare-fun b!3012736 () Bool)

(declare-fun e!1891439 () Bool)

(declare-fun tp!955981 () Bool)

(declare-fun tp!955983 () Bool)

(assert (=> b!3012736 (= e!1891439 (and tp!955981 tp!955983))))

(declare-fun b!3012733 () Bool)

(assert (=> b!3012733 (= e!1891439 tp_is_empty!16365)))

(declare-fun b!3012734 () Bool)

(declare-fun tp!955980 () Bool)

(declare-fun tp!955984 () Bool)

(assert (=> b!3012734 (= e!1891439 (and tp!955980 tp!955984))))

(assert (=> b!3012420 (= tp!955964 e!1891439)))

(declare-fun b!3012735 () Bool)

(declare-fun tp!955982 () Bool)

(assert (=> b!3012735 (= e!1891439 tp!955982)))

(assert (= (and b!3012420 ((_ is ElementMatch!9401) (reg!9730 r!17423))) b!3012733))

(assert (= (and b!3012420 ((_ is Concat!14722) (reg!9730 r!17423))) b!3012734))

(assert (= (and b!3012420 ((_ is Star!9401) (reg!9730 r!17423))) b!3012735))

(assert (= (and b!3012420 ((_ is Union!9401) (reg!9730 r!17423))) b!3012736))

(declare-fun b!3012740 () Bool)

(declare-fun e!1891440 () Bool)

(declare-fun tp!955986 () Bool)

(declare-fun tp!955988 () Bool)

(assert (=> b!3012740 (= e!1891440 (and tp!955986 tp!955988))))

(declare-fun b!3012737 () Bool)

(assert (=> b!3012737 (= e!1891440 tp_is_empty!16365)))

(declare-fun b!3012738 () Bool)

(declare-fun tp!955985 () Bool)

(declare-fun tp!955989 () Bool)

(assert (=> b!3012738 (= e!1891440 (and tp!955985 tp!955989))))

(assert (=> b!3012421 (= tp!955965 e!1891440)))

(declare-fun b!3012739 () Bool)

(declare-fun tp!955987 () Bool)

(assert (=> b!3012739 (= e!1891440 tp!955987)))

(assert (= (and b!3012421 ((_ is ElementMatch!9401) (regOne!19315 r!17423))) b!3012737))

(assert (= (and b!3012421 ((_ is Concat!14722) (regOne!19315 r!17423))) b!3012738))

(assert (= (and b!3012421 ((_ is Star!9401) (regOne!19315 r!17423))) b!3012739))

(assert (= (and b!3012421 ((_ is Union!9401) (regOne!19315 r!17423))) b!3012740))

(declare-fun b!3012744 () Bool)

(declare-fun e!1891441 () Bool)

(declare-fun tp!955991 () Bool)

(declare-fun tp!955993 () Bool)

(assert (=> b!3012744 (= e!1891441 (and tp!955991 tp!955993))))

(declare-fun b!3012741 () Bool)

(assert (=> b!3012741 (= e!1891441 tp_is_empty!16365)))

(declare-fun b!3012742 () Bool)

(declare-fun tp!955990 () Bool)

(declare-fun tp!955994 () Bool)

(assert (=> b!3012742 (= e!1891441 (and tp!955990 tp!955994))))

(assert (=> b!3012421 (= tp!955966 e!1891441)))

(declare-fun b!3012743 () Bool)

(declare-fun tp!955992 () Bool)

(assert (=> b!3012743 (= e!1891441 tp!955992)))

(assert (= (and b!3012421 ((_ is ElementMatch!9401) (regTwo!19315 r!17423))) b!3012741))

(assert (= (and b!3012421 ((_ is Concat!14722) (regTwo!19315 r!17423))) b!3012742))

(assert (= (and b!3012421 ((_ is Star!9401) (regTwo!19315 r!17423))) b!3012743))

(assert (= (and b!3012421 ((_ is Union!9401) (regTwo!19315 r!17423))) b!3012744))

(declare-fun b!3012749 () Bool)

(declare-fun e!1891444 () Bool)

(declare-fun tp!955997 () Bool)

(assert (=> b!3012749 (= e!1891444 (and tp_is_empty!16365 tp!955997))))

(assert (=> b!3012422 (= tp!955968 e!1891444)))

(assert (= (and b!3012422 ((_ is Cons!35142) (t!234331 s!11993))) b!3012749))

(declare-fun b!3012753 () Bool)

(declare-fun e!1891445 () Bool)

(declare-fun tp!955999 () Bool)

(declare-fun tp!956001 () Bool)

(assert (=> b!3012753 (= e!1891445 (and tp!955999 tp!956001))))

(declare-fun b!3012750 () Bool)

(assert (=> b!3012750 (= e!1891445 tp_is_empty!16365)))

(declare-fun b!3012751 () Bool)

(declare-fun tp!955998 () Bool)

(declare-fun tp!956002 () Bool)

(assert (=> b!3012751 (= e!1891445 (and tp!955998 tp!956002))))

(assert (=> b!3012423 (= tp!955969 e!1891445)))

(declare-fun b!3012752 () Bool)

(declare-fun tp!956000 () Bool)

(assert (=> b!3012752 (= e!1891445 tp!956000)))

(assert (= (and b!3012423 ((_ is ElementMatch!9401) (regOne!19314 r!17423))) b!3012750))

(assert (= (and b!3012423 ((_ is Concat!14722) (regOne!19314 r!17423))) b!3012751))

(assert (= (and b!3012423 ((_ is Star!9401) (regOne!19314 r!17423))) b!3012752))

(assert (= (and b!3012423 ((_ is Union!9401) (regOne!19314 r!17423))) b!3012753))

(declare-fun b!3012757 () Bool)

(declare-fun e!1891446 () Bool)

(declare-fun tp!956004 () Bool)

(declare-fun tp!956006 () Bool)

(assert (=> b!3012757 (= e!1891446 (and tp!956004 tp!956006))))

(declare-fun b!3012754 () Bool)

(assert (=> b!3012754 (= e!1891446 tp_is_empty!16365)))

(declare-fun b!3012755 () Bool)

(declare-fun tp!956003 () Bool)

(declare-fun tp!956007 () Bool)

(assert (=> b!3012755 (= e!1891446 (and tp!956003 tp!956007))))

(assert (=> b!3012423 (= tp!955967 e!1891446)))

(declare-fun b!3012756 () Bool)

(declare-fun tp!956005 () Bool)

(assert (=> b!3012756 (= e!1891446 tp!956005)))

(assert (= (and b!3012423 ((_ is ElementMatch!9401) (regTwo!19314 r!17423))) b!3012754))

(assert (= (and b!3012423 ((_ is Concat!14722) (regTwo!19314 r!17423))) b!3012755))

(assert (= (and b!3012423 ((_ is Star!9401) (regTwo!19314 r!17423))) b!3012756))

(assert (= (and b!3012423 ((_ is Union!9401) (regTwo!19314 r!17423))) b!3012757))

(check-sat (not b!3012752) (not b!3012755) (not b!3012740) (not b!3012702) (not bm!203066) (not bm!203096) (not b!3012751) (not b!3012701) (not b!3012450) (not b!3012516) (not b!3012734) (not b!3012743) (not d!847894) (not b!3012739) tp_is_empty!16365 (not d!847912) (not b!3012714) (not d!847888) (not b!3012517) (not b!3012744) (not b!3012738) (not d!847886) (not b!3012705) (not b!3012640) (not b!3012700) (not b!3012519) (not bm!203092) (not b!3012736) (not b!3012520) (not b!3012756) (not b!3012749) (not bm!203068) (not d!847890) (not b!3012735) (not bm!203095) (not b!3012742) (not bm!203091) (not bm!203098) (not b!3012635) (not b!3012757) (not d!847908) (not b!3012698) (not b!3012518) (not b!3012703) (not b!3012523) (not b!3012753))
(check-sat)
