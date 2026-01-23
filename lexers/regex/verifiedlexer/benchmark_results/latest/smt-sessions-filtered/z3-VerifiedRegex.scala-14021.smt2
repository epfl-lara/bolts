; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740606 () Bool)

(assert start!740606)

(declare-fun b!7782248 () Bool)

(declare-fun e!4609781 () Bool)

(declare-fun tp!2287617 () Bool)

(assert (=> b!7782248 (= e!4609781 tp!2287617)))

(declare-fun b!7782249 () Bool)

(declare-fun e!4609778 () Bool)

(declare-fun tp!2287610 () Bool)

(assert (=> b!7782249 (= e!4609778 tp!2287610)))

(declare-fun b!7782250 () Bool)

(declare-fun res!3102071 () Bool)

(declare-fun e!4609779 () Bool)

(assert (=> b!7782250 (=> (not res!3102071) (not e!4609779))))

(declare-datatypes ((C!42000 0))(
  ( (C!42001 (val!31440 Int)) )
))
(declare-datatypes ((List!73676 0))(
  ( (Nil!73552) (Cons!73552 (h!80000 C!42000) (t!388411 List!73676)) )
))
(declare-fun s!14292 () List!73676)

(get-info :version)

(assert (=> b!7782250 (= res!3102071 (not ((_ is Cons!73552) s!14292)))))

(declare-fun b!7782251 () Bool)

(declare-fun tp_is_empty!52029 () Bool)

(assert (=> b!7782251 (= e!4609781 tp_is_empty!52029)))

(declare-fun b!7782252 () Bool)

(declare-fun tp!2287611 () Bool)

(declare-fun tp!2287615 () Bool)

(assert (=> b!7782252 (= e!4609781 (and tp!2287611 tp!2287615))))

(declare-fun b!7782253 () Bool)

(declare-fun e!4609780 () Bool)

(declare-fun tp!2287609 () Bool)

(assert (=> b!7782253 (= e!4609780 (and tp_is_empty!52029 tp!2287609))))

(declare-fun b!7782254 () Bool)

(declare-fun res!3102069 () Bool)

(assert (=> b!7782254 (=> (not res!3102069) (not e!4609779))))

(declare-datatypes ((Regex!20837 0))(
  ( (ElementMatch!20837 (c!1433858 C!42000)) (Concat!29682 (regOne!42186 Regex!20837) (regTwo!42186 Regex!20837)) (EmptyExpr!20837) (Star!20837 (reg!21166 Regex!20837)) (EmptyLang!20837) (Union!20837 (regOne!42187 Regex!20837) (regTwo!42187 Regex!20837)) )
))
(declare-fun r2!6217 () Regex!20837)

(declare-fun nullable!9223 (Regex!20837) Bool)

(assert (=> b!7782254 (= res!3102069 (nullable!9223 r2!6217))))

(declare-fun b!7782255 () Bool)

(declare-fun tp!2287619 () Bool)

(declare-fun tp!2287616 () Bool)

(assert (=> b!7782255 (= e!4609781 (and tp!2287619 tp!2287616))))

(declare-fun res!3102072 () Bool)

(assert (=> start!740606 (=> (not res!3102072) (not e!4609779))))

(declare-fun r1!6279 () Regex!20837)

(declare-fun validRegex!11251 (Regex!20837) Bool)

(assert (=> start!740606 (= res!3102072 (validRegex!11251 r1!6279))))

(assert (=> start!740606 e!4609779))

(assert (=> start!740606 e!4609778))

(assert (=> start!740606 e!4609781))

(assert (=> start!740606 e!4609780))

(declare-fun b!7782256 () Bool)

(declare-fun tp!2287612 () Bool)

(declare-fun tp!2287613 () Bool)

(assert (=> b!7782256 (= e!4609778 (and tp!2287612 tp!2287613))))

(declare-fun b!7782257 () Bool)

(assert (=> b!7782257 (= e!4609778 tp_is_empty!52029)))

(declare-fun b!7782258 () Bool)

(declare-fun res!3102070 () Bool)

(assert (=> b!7782258 (=> (not res!3102070) (not e!4609779))))

(declare-datatypes ((tuple2!69920 0))(
  ( (tuple2!69921 (_1!38263 List!73676) (_2!38263 List!73676)) )
))
(declare-datatypes ((Option!17754 0))(
  ( (None!17753) (Some!17753 (v!54888 tuple2!69920)) )
))
(declare-fun findConcatSeparation!3784 (Regex!20837 Regex!20837 List!73676 List!73676 List!73676) Option!17754)

(assert (=> b!7782258 (= res!3102070 (= (findConcatSeparation!3784 r1!6279 r2!6217 Nil!73552 Nil!73552 Nil!73552) (Some!17753 (tuple2!69921 Nil!73552 Nil!73552))))))

(declare-fun b!7782259 () Bool)

(declare-fun res!3102068 () Bool)

(assert (=> b!7782259 (=> (not res!3102068) (not e!4609779))))

(assert (=> b!7782259 (= res!3102068 (nullable!9223 r1!6279))))

(declare-fun b!7782260 () Bool)

(declare-fun res!3102074 () Bool)

(assert (=> b!7782260 (=> (not res!3102074) (not e!4609779))))

(assert (=> b!7782260 (= res!3102074 (validRegex!11251 r2!6217))))

(declare-fun b!7782261 () Bool)

(declare-fun tp!2287614 () Bool)

(declare-fun tp!2287618 () Bool)

(assert (=> b!7782261 (= e!4609778 (and tp!2287614 tp!2287618))))

(declare-fun b!7782262 () Bool)

(declare-fun res!3102073 () Bool)

(assert (=> b!7782262 (=> (not res!3102073) (not e!4609779))))

(declare-fun matchR!10297 (Regex!20837 List!73676) Bool)

(assert (=> b!7782262 (= res!3102073 (matchR!10297 (Concat!29682 r1!6279 r2!6217) s!14292))))

(declare-fun b!7782263 () Bool)

(declare-fun ++!17927 (List!73676 List!73676) List!73676)

(assert (=> b!7782263 (= e!4609779 (not (= (++!17927 Nil!73552 s!14292) s!14292)))))

(assert (= (and start!740606 res!3102072) b!7782260))

(assert (= (and b!7782260 res!3102074) b!7782262))

(assert (= (and b!7782262 res!3102073) b!7782250))

(assert (= (and b!7782250 res!3102071) b!7782259))

(assert (= (and b!7782259 res!3102068) b!7782254))

(assert (= (and b!7782254 res!3102069) b!7782258))

(assert (= (and b!7782258 res!3102070) b!7782263))

(assert (= (and start!740606 ((_ is ElementMatch!20837) r1!6279)) b!7782257))

(assert (= (and start!740606 ((_ is Concat!29682) r1!6279)) b!7782261))

(assert (= (and start!740606 ((_ is Star!20837) r1!6279)) b!7782249))

(assert (= (and start!740606 ((_ is Union!20837) r1!6279)) b!7782256))

(assert (= (and start!740606 ((_ is ElementMatch!20837) r2!6217)) b!7782251))

(assert (= (and start!740606 ((_ is Concat!29682) r2!6217)) b!7782255))

(assert (= (and start!740606 ((_ is Star!20837) r2!6217)) b!7782248))

(assert (= (and start!740606 ((_ is Union!20837) r2!6217)) b!7782252))

(assert (= (and start!740606 ((_ is Cons!73552) s!14292)) b!7782253))

(declare-fun m!8229628 () Bool)

(assert (=> b!7782259 m!8229628))

(declare-fun m!8229630 () Bool)

(assert (=> b!7782260 m!8229630))

(declare-fun m!8229632 () Bool)

(assert (=> b!7782258 m!8229632))

(declare-fun m!8229634 () Bool)

(assert (=> b!7782263 m!8229634))

(declare-fun m!8229636 () Bool)

(assert (=> b!7782262 m!8229636))

(declare-fun m!8229638 () Bool)

(assert (=> start!740606 m!8229638))

(declare-fun m!8229640 () Bool)

(assert (=> b!7782254 m!8229640))

(check-sat (not b!7782259) (not b!7782249) (not b!7782248) (not b!7782256) (not b!7782261) (not start!740606) (not b!7782254) (not b!7782252) (not b!7782260) (not b!7782258) (not b!7782255) (not b!7782262) (not b!7782263) tp_is_empty!52029 (not b!7782253))
(check-sat)
(get-model)

(declare-fun b!7782304 () Bool)

(declare-fun e!4609803 () Bool)

(assert (=> b!7782304 (= e!4609803 (nullable!9223 (Concat!29682 r1!6279 r2!6217)))))

(declare-fun b!7782305 () Bool)

(declare-fun e!4609805 () Bool)

(declare-fun head!15917 (List!73676) C!42000)

(assert (=> b!7782305 (= e!4609805 (not (= (head!15917 s!14292) (c!1433858 (Concat!29682 r1!6279 r2!6217)))))))

(declare-fun b!7782306 () Bool)

(declare-fun res!3102104 () Bool)

(assert (=> b!7782306 (=> res!3102104 e!4609805)))

(declare-fun isEmpty!42190 (List!73676) Bool)

(declare-fun tail!15458 (List!73676) List!73676)

(assert (=> b!7782306 (= res!3102104 (not (isEmpty!42190 (tail!15458 s!14292))))))

(declare-fun b!7782307 () Bool)

(declare-fun res!3102100 () Bool)

(declare-fun e!4609804 () Bool)

(assert (=> b!7782307 (=> (not res!3102100) (not e!4609804))))

(assert (=> b!7782307 (= res!3102100 (isEmpty!42190 (tail!15458 s!14292)))))

(declare-fun b!7782308 () Bool)

(declare-fun e!4609802 () Bool)

(declare-fun e!4609808 () Bool)

(assert (=> b!7782308 (= e!4609802 e!4609808)))

(declare-fun res!3102103 () Bool)

(assert (=> b!7782308 (=> (not res!3102103) (not e!4609808))))

(declare-fun lt!2673214 () Bool)

(assert (=> b!7782308 (= res!3102103 (not lt!2673214))))

(declare-fun b!7782309 () Bool)

(declare-fun res!3102101 () Bool)

(assert (=> b!7782309 (=> res!3102101 e!4609802)))

(assert (=> b!7782309 (= res!3102101 (not ((_ is ElementMatch!20837) (Concat!29682 r1!6279 r2!6217))))))

(declare-fun e!4609806 () Bool)

(assert (=> b!7782309 (= e!4609806 e!4609802)))

(declare-fun b!7782310 () Bool)

(declare-fun e!4609807 () Bool)

(declare-fun call!721291 () Bool)

(assert (=> b!7782310 (= e!4609807 (= lt!2673214 call!721291))))

(declare-fun b!7782311 () Bool)

(assert (=> b!7782311 (= e!4609804 (= (head!15917 s!14292) (c!1433858 (Concat!29682 r1!6279 r2!6217))))))

(declare-fun b!7782312 () Bool)

(assert (=> b!7782312 (= e!4609806 (not lt!2673214))))

(declare-fun b!7782313 () Bool)

(assert (=> b!7782313 (= e!4609808 e!4609805)))

(declare-fun res!3102102 () Bool)

(assert (=> b!7782313 (=> res!3102102 e!4609805)))

(assert (=> b!7782313 (= res!3102102 call!721291)))

(declare-fun bm!721286 () Bool)

(assert (=> bm!721286 (= call!721291 (isEmpty!42190 s!14292))))

(declare-fun b!7782314 () Bool)

(declare-fun res!3102099 () Bool)

(assert (=> b!7782314 (=> (not res!3102099) (not e!4609804))))

(assert (=> b!7782314 (= res!3102099 (not call!721291))))

(declare-fun b!7782315 () Bool)

(declare-fun derivativeStep!6175 (Regex!20837 C!42000) Regex!20837)

(assert (=> b!7782315 (= e!4609803 (matchR!10297 (derivativeStep!6175 (Concat!29682 r1!6279 r2!6217) (head!15917 s!14292)) (tail!15458 s!14292)))))

(declare-fun d!2345246 () Bool)

(assert (=> d!2345246 e!4609807))

(declare-fun c!1433869 () Bool)

(assert (=> d!2345246 (= c!1433869 ((_ is EmptyExpr!20837) (Concat!29682 r1!6279 r2!6217)))))

(assert (=> d!2345246 (= lt!2673214 e!4609803)))

(declare-fun c!1433868 () Bool)

(assert (=> d!2345246 (= c!1433868 (isEmpty!42190 s!14292))))

(assert (=> d!2345246 (validRegex!11251 (Concat!29682 r1!6279 r2!6217))))

(assert (=> d!2345246 (= (matchR!10297 (Concat!29682 r1!6279 r2!6217) s!14292) lt!2673214)))

(declare-fun b!7782316 () Bool)

(assert (=> b!7782316 (= e!4609807 e!4609806)))

(declare-fun c!1433870 () Bool)

(assert (=> b!7782316 (= c!1433870 ((_ is EmptyLang!20837) (Concat!29682 r1!6279 r2!6217)))))

(declare-fun b!7782317 () Bool)

(declare-fun res!3102097 () Bool)

(assert (=> b!7782317 (=> res!3102097 e!4609802)))

(assert (=> b!7782317 (= res!3102097 e!4609804)))

(declare-fun res!3102098 () Bool)

(assert (=> b!7782317 (=> (not res!3102098) (not e!4609804))))

(assert (=> b!7782317 (= res!3102098 lt!2673214)))

(assert (= (and d!2345246 c!1433868) b!7782304))

(assert (= (and d!2345246 (not c!1433868)) b!7782315))

(assert (= (and d!2345246 c!1433869) b!7782310))

(assert (= (and d!2345246 (not c!1433869)) b!7782316))

(assert (= (and b!7782316 c!1433870) b!7782312))

(assert (= (and b!7782316 (not c!1433870)) b!7782309))

(assert (= (and b!7782309 (not res!3102101)) b!7782317))

(assert (= (and b!7782317 res!3102098) b!7782314))

(assert (= (and b!7782314 res!3102099) b!7782307))

(assert (= (and b!7782307 res!3102100) b!7782311))

(assert (= (and b!7782317 (not res!3102097)) b!7782308))

(assert (= (and b!7782308 res!3102103) b!7782313))

(assert (= (and b!7782313 (not res!3102102)) b!7782306))

(assert (= (and b!7782306 (not res!3102104)) b!7782305))

(assert (= (or b!7782310 b!7782313 b!7782314) bm!721286))

(declare-fun m!8229656 () Bool)

(assert (=> b!7782311 m!8229656))

(declare-fun m!8229658 () Bool)

(assert (=> bm!721286 m!8229658))

(declare-fun m!8229660 () Bool)

(assert (=> b!7782306 m!8229660))

(assert (=> b!7782306 m!8229660))

(declare-fun m!8229662 () Bool)

(assert (=> b!7782306 m!8229662))

(declare-fun m!8229664 () Bool)

(assert (=> b!7782304 m!8229664))

(assert (=> b!7782305 m!8229656))

(assert (=> d!2345246 m!8229658))

(declare-fun m!8229666 () Bool)

(assert (=> d!2345246 m!8229666))

(assert (=> b!7782307 m!8229660))

(assert (=> b!7782307 m!8229660))

(assert (=> b!7782307 m!8229662))

(assert (=> b!7782315 m!8229656))

(assert (=> b!7782315 m!8229656))

(declare-fun m!8229668 () Bool)

(assert (=> b!7782315 m!8229668))

(assert (=> b!7782315 m!8229660))

(assert (=> b!7782315 m!8229668))

(assert (=> b!7782315 m!8229660))

(declare-fun m!8229670 () Bool)

(assert (=> b!7782315 m!8229670))

(assert (=> b!7782262 d!2345246))

(declare-fun d!2345252 () Bool)

(declare-fun nullableFct!3607 (Regex!20837) Bool)

(assert (=> d!2345252 (= (nullable!9223 r2!6217) (nullableFct!3607 r2!6217))))

(declare-fun bs!1966250 () Bool)

(assert (= bs!1966250 d!2345252))

(declare-fun m!8229672 () Bool)

(assert (=> bs!1966250 m!8229672))

(assert (=> b!7782254 d!2345252))

(declare-fun b!7782363 () Bool)

(declare-fun e!4609842 () Bool)

(declare-fun e!4609841 () Bool)

(assert (=> b!7782363 (= e!4609842 e!4609841)))

(declare-fun c!1433882 () Bool)

(assert (=> b!7782363 (= c!1433882 ((_ is Union!20837) r1!6279))))

(declare-fun b!7782364 () Bool)

(declare-fun e!4609838 () Bool)

(assert (=> b!7782364 (= e!4609842 e!4609838)))

(declare-fun res!3102134 () Bool)

(assert (=> b!7782364 (= res!3102134 (not (nullable!9223 (reg!21166 r1!6279))))))

(assert (=> b!7782364 (=> (not res!3102134) (not e!4609838))))

(declare-fun b!7782365 () Bool)

(declare-fun res!3102130 () Bool)

(declare-fun e!4609839 () Bool)

(assert (=> b!7782365 (=> res!3102130 e!4609839)))

(assert (=> b!7782365 (= res!3102130 (not ((_ is Concat!29682) r1!6279)))))

(assert (=> b!7782365 (= e!4609841 e!4609839)))

(declare-fun bm!721293 () Bool)

(declare-fun call!721298 () Bool)

(declare-fun call!721300 () Bool)

(assert (=> bm!721293 (= call!721298 call!721300)))

(declare-fun b!7782366 () Bool)

(declare-fun e!4609844 () Bool)

(assert (=> b!7782366 (= e!4609844 e!4609842)))

(declare-fun c!1433881 () Bool)

(assert (=> b!7782366 (= c!1433881 ((_ is Star!20837) r1!6279))))

(declare-fun b!7782367 () Bool)

(declare-fun e!4609840 () Bool)

(declare-fun call!721299 () Bool)

(assert (=> b!7782367 (= e!4609840 call!721299)))

(declare-fun bm!721294 () Bool)

(assert (=> bm!721294 (= call!721300 (validRegex!11251 (ite c!1433881 (reg!21166 r1!6279) (ite c!1433882 (regOne!42187 r1!6279) (regOne!42186 r1!6279)))))))

(declare-fun bm!721295 () Bool)

(assert (=> bm!721295 (= call!721299 (validRegex!11251 (ite c!1433882 (regTwo!42187 r1!6279) (regTwo!42186 r1!6279))))))

(declare-fun b!7782369 () Bool)

(assert (=> b!7782369 (= e!4609838 call!721300)))

(declare-fun b!7782370 () Bool)

(assert (=> b!7782370 (= e!4609839 e!4609840)))

(declare-fun res!3102131 () Bool)

(assert (=> b!7782370 (=> (not res!3102131) (not e!4609840))))

(assert (=> b!7782370 (= res!3102131 call!721298)))

(declare-fun b!7782371 () Bool)

(declare-fun res!3102133 () Bool)

(declare-fun e!4609843 () Bool)

(assert (=> b!7782371 (=> (not res!3102133) (not e!4609843))))

(assert (=> b!7782371 (= res!3102133 call!721298)))

(assert (=> b!7782371 (= e!4609841 e!4609843)))

(declare-fun b!7782368 () Bool)

(assert (=> b!7782368 (= e!4609843 call!721299)))

(declare-fun d!2345254 () Bool)

(declare-fun res!3102132 () Bool)

(assert (=> d!2345254 (=> res!3102132 e!4609844)))

(assert (=> d!2345254 (= res!3102132 ((_ is ElementMatch!20837) r1!6279))))

(assert (=> d!2345254 (= (validRegex!11251 r1!6279) e!4609844)))

(assert (= (and d!2345254 (not res!3102132)) b!7782366))

(assert (= (and b!7782366 c!1433881) b!7782364))

(assert (= (and b!7782366 (not c!1433881)) b!7782363))

(assert (= (and b!7782364 res!3102134) b!7782369))

(assert (= (and b!7782363 c!1433882) b!7782371))

(assert (= (and b!7782363 (not c!1433882)) b!7782365))

(assert (= (and b!7782371 res!3102133) b!7782368))

(assert (= (and b!7782365 (not res!3102130)) b!7782370))

(assert (= (and b!7782370 res!3102131) b!7782367))

(assert (= (or b!7782371 b!7782370) bm!721293))

(assert (= (or b!7782368 b!7782367) bm!721295))

(assert (= (or b!7782369 bm!721293) bm!721294))

(declare-fun m!8229696 () Bool)

(assert (=> b!7782364 m!8229696))

(declare-fun m!8229698 () Bool)

(assert (=> bm!721294 m!8229698))

(declare-fun m!8229700 () Bool)

(assert (=> bm!721295 m!8229700))

(assert (=> start!740606 d!2345254))

(declare-fun d!2345258 () Bool)

(assert (=> d!2345258 (= (nullable!9223 r1!6279) (nullableFct!3607 r1!6279))))

(declare-fun bs!1966251 () Bool)

(assert (= bs!1966251 d!2345258))

(declare-fun m!8229702 () Bool)

(assert (=> bs!1966251 m!8229702))

(assert (=> b!7782259 d!2345258))

(declare-fun b!7782372 () Bool)

(declare-fun e!4609849 () Bool)

(declare-fun e!4609848 () Bool)

(assert (=> b!7782372 (= e!4609849 e!4609848)))

(declare-fun c!1433884 () Bool)

(assert (=> b!7782372 (= c!1433884 ((_ is Union!20837) r2!6217))))

(declare-fun b!7782373 () Bool)

(declare-fun e!4609845 () Bool)

(assert (=> b!7782373 (= e!4609849 e!4609845)))

(declare-fun res!3102139 () Bool)

(assert (=> b!7782373 (= res!3102139 (not (nullable!9223 (reg!21166 r2!6217))))))

(assert (=> b!7782373 (=> (not res!3102139) (not e!4609845))))

(declare-fun b!7782374 () Bool)

(declare-fun res!3102135 () Bool)

(declare-fun e!4609846 () Bool)

(assert (=> b!7782374 (=> res!3102135 e!4609846)))

(assert (=> b!7782374 (= res!3102135 (not ((_ is Concat!29682) r2!6217)))))

(assert (=> b!7782374 (= e!4609848 e!4609846)))

(declare-fun bm!721296 () Bool)

(declare-fun call!721301 () Bool)

(declare-fun call!721303 () Bool)

(assert (=> bm!721296 (= call!721301 call!721303)))

(declare-fun b!7782375 () Bool)

(declare-fun e!4609851 () Bool)

(assert (=> b!7782375 (= e!4609851 e!4609849)))

(declare-fun c!1433883 () Bool)

(assert (=> b!7782375 (= c!1433883 ((_ is Star!20837) r2!6217))))

(declare-fun b!7782376 () Bool)

(declare-fun e!4609847 () Bool)

(declare-fun call!721302 () Bool)

(assert (=> b!7782376 (= e!4609847 call!721302)))

(declare-fun bm!721297 () Bool)

(assert (=> bm!721297 (= call!721303 (validRegex!11251 (ite c!1433883 (reg!21166 r2!6217) (ite c!1433884 (regOne!42187 r2!6217) (regOne!42186 r2!6217)))))))

(declare-fun bm!721298 () Bool)

(assert (=> bm!721298 (= call!721302 (validRegex!11251 (ite c!1433884 (regTwo!42187 r2!6217) (regTwo!42186 r2!6217))))))

(declare-fun b!7782378 () Bool)

(assert (=> b!7782378 (= e!4609845 call!721303)))

(declare-fun b!7782379 () Bool)

(assert (=> b!7782379 (= e!4609846 e!4609847)))

(declare-fun res!3102136 () Bool)

(assert (=> b!7782379 (=> (not res!3102136) (not e!4609847))))

(assert (=> b!7782379 (= res!3102136 call!721301)))

(declare-fun b!7782380 () Bool)

(declare-fun res!3102138 () Bool)

(declare-fun e!4609850 () Bool)

(assert (=> b!7782380 (=> (not res!3102138) (not e!4609850))))

(assert (=> b!7782380 (= res!3102138 call!721301)))

(assert (=> b!7782380 (= e!4609848 e!4609850)))

(declare-fun b!7782377 () Bool)

(assert (=> b!7782377 (= e!4609850 call!721302)))

(declare-fun d!2345260 () Bool)

(declare-fun res!3102137 () Bool)

(assert (=> d!2345260 (=> res!3102137 e!4609851)))

(assert (=> d!2345260 (= res!3102137 ((_ is ElementMatch!20837) r2!6217))))

(assert (=> d!2345260 (= (validRegex!11251 r2!6217) e!4609851)))

(assert (= (and d!2345260 (not res!3102137)) b!7782375))

(assert (= (and b!7782375 c!1433883) b!7782373))

(assert (= (and b!7782375 (not c!1433883)) b!7782372))

(assert (= (and b!7782373 res!3102139) b!7782378))

(assert (= (and b!7782372 c!1433884) b!7782380))

(assert (= (and b!7782372 (not c!1433884)) b!7782374))

(assert (= (and b!7782380 res!3102138) b!7782377))

(assert (= (and b!7782374 (not res!3102135)) b!7782379))

(assert (= (and b!7782379 res!3102136) b!7782376))

(assert (= (or b!7782380 b!7782379) bm!721296))

(assert (= (or b!7782377 b!7782376) bm!721298))

(assert (= (or b!7782378 bm!721296) bm!721297))

(declare-fun m!8229704 () Bool)

(assert (=> b!7782373 m!8229704))

(declare-fun m!8229706 () Bool)

(assert (=> bm!721297 m!8229706))

(declare-fun m!8229708 () Bool)

(assert (=> bm!721298 m!8229708))

(assert (=> b!7782260 d!2345260))

(declare-fun b!7782477 () Bool)

(declare-fun res!3102198 () Bool)

(declare-fun e!4609914 () Bool)

(assert (=> b!7782477 (=> (not res!3102198) (not e!4609914))))

(declare-fun lt!2673234 () Option!17754)

(declare-fun get!26297 (Option!17754) tuple2!69920)

(assert (=> b!7782477 (= res!3102198 (matchR!10297 r2!6217 (_2!38263 (get!26297 lt!2673234))))))

(declare-fun b!7782478 () Bool)

(declare-fun e!4609912 () Bool)

(declare-fun isDefined!14364 (Option!17754) Bool)

(assert (=> b!7782478 (= e!4609912 (not (isDefined!14364 lt!2673234)))))

(declare-fun b!7782479 () Bool)

(declare-fun e!4609915 () Option!17754)

(assert (=> b!7782479 (= e!4609915 (Some!17753 (tuple2!69921 Nil!73552 Nil!73552)))))

(declare-fun b!7782480 () Bool)

(declare-fun e!4609911 () Option!17754)

(assert (=> b!7782480 (= e!4609915 e!4609911)))

(declare-fun c!1433906 () Bool)

(assert (=> b!7782480 (= c!1433906 ((_ is Nil!73552) Nil!73552))))

(declare-fun b!7782481 () Bool)

(declare-datatypes ((Unit!168552 0))(
  ( (Unit!168553) )
))
(declare-fun lt!2673233 () Unit!168552)

(declare-fun lt!2673235 () Unit!168552)

(assert (=> b!7782481 (= lt!2673233 lt!2673235)))

(assert (=> b!7782481 (= (++!17927 (++!17927 Nil!73552 (Cons!73552 (h!80000 Nil!73552) Nil!73552)) (t!388411 Nil!73552)) Nil!73552)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3398 (List!73676 C!42000 List!73676 List!73676) Unit!168552)

(assert (=> b!7782481 (= lt!2673235 (lemmaMoveElementToOtherListKeepsConcatEq!3398 Nil!73552 (h!80000 Nil!73552) (t!388411 Nil!73552) Nil!73552))))

(assert (=> b!7782481 (= e!4609911 (findConcatSeparation!3784 r1!6279 r2!6217 (++!17927 Nil!73552 (Cons!73552 (h!80000 Nil!73552) Nil!73552)) (t!388411 Nil!73552) Nil!73552))))

(declare-fun d!2345262 () Bool)

(assert (=> d!2345262 e!4609912))

(declare-fun res!3102196 () Bool)

(assert (=> d!2345262 (=> res!3102196 e!4609912)))

(assert (=> d!2345262 (= res!3102196 e!4609914)))

(declare-fun res!3102197 () Bool)

(assert (=> d!2345262 (=> (not res!3102197) (not e!4609914))))

(assert (=> d!2345262 (= res!3102197 (isDefined!14364 lt!2673234))))

(assert (=> d!2345262 (= lt!2673234 e!4609915)))

(declare-fun c!1433907 () Bool)

(declare-fun e!4609913 () Bool)

(assert (=> d!2345262 (= c!1433907 e!4609913)))

(declare-fun res!3102194 () Bool)

(assert (=> d!2345262 (=> (not res!3102194) (not e!4609913))))

(assert (=> d!2345262 (= res!3102194 (matchR!10297 r1!6279 Nil!73552))))

(assert (=> d!2345262 (validRegex!11251 r1!6279)))

(assert (=> d!2345262 (= (findConcatSeparation!3784 r1!6279 r2!6217 Nil!73552 Nil!73552 Nil!73552) lt!2673234)))

(declare-fun b!7782482 () Bool)

(assert (=> b!7782482 (= e!4609911 None!17753)))

(declare-fun b!7782483 () Bool)

(assert (=> b!7782483 (= e!4609914 (= (++!17927 (_1!38263 (get!26297 lt!2673234)) (_2!38263 (get!26297 lt!2673234))) Nil!73552))))

(declare-fun b!7782484 () Bool)

(declare-fun res!3102195 () Bool)

(assert (=> b!7782484 (=> (not res!3102195) (not e!4609914))))

(assert (=> b!7782484 (= res!3102195 (matchR!10297 r1!6279 (_1!38263 (get!26297 lt!2673234))))))

(declare-fun b!7782485 () Bool)

(assert (=> b!7782485 (= e!4609913 (matchR!10297 r2!6217 Nil!73552))))

(assert (= (and d!2345262 res!3102194) b!7782485))

(assert (= (and d!2345262 c!1433907) b!7782479))

(assert (= (and d!2345262 (not c!1433907)) b!7782480))

(assert (= (and b!7782480 c!1433906) b!7782482))

(assert (= (and b!7782480 (not c!1433906)) b!7782481))

(assert (= (and d!2345262 res!3102197) b!7782484))

(assert (= (and b!7782484 res!3102195) b!7782477))

(assert (= (and b!7782477 res!3102198) b!7782483))

(assert (= (and d!2345262 (not res!3102196)) b!7782478))

(declare-fun m!8229742 () Bool)

(assert (=> b!7782477 m!8229742))

(declare-fun m!8229744 () Bool)

(assert (=> b!7782477 m!8229744))

(declare-fun m!8229746 () Bool)

(assert (=> b!7782485 m!8229746))

(assert (=> b!7782483 m!8229742))

(declare-fun m!8229748 () Bool)

(assert (=> b!7782483 m!8229748))

(declare-fun m!8229750 () Bool)

(assert (=> b!7782481 m!8229750))

(assert (=> b!7782481 m!8229750))

(declare-fun m!8229752 () Bool)

(assert (=> b!7782481 m!8229752))

(declare-fun m!8229754 () Bool)

(assert (=> b!7782481 m!8229754))

(assert (=> b!7782481 m!8229750))

(declare-fun m!8229756 () Bool)

(assert (=> b!7782481 m!8229756))

(assert (=> b!7782484 m!8229742))

(declare-fun m!8229758 () Bool)

(assert (=> b!7782484 m!8229758))

(declare-fun m!8229760 () Bool)

(assert (=> d!2345262 m!8229760))

(declare-fun m!8229762 () Bool)

(assert (=> d!2345262 m!8229762))

(assert (=> d!2345262 m!8229638))

(assert (=> b!7782478 m!8229760))

(assert (=> b!7782258 d!2345262))

(declare-fun b!7782550 () Bool)

(declare-fun e!4609935 () List!73676)

(assert (=> b!7782550 (= e!4609935 (Cons!73552 (h!80000 Nil!73552) (++!17927 (t!388411 Nil!73552) s!14292)))))

(declare-fun d!2345272 () Bool)

(declare-fun e!4609936 () Bool)

(assert (=> d!2345272 e!4609936))

(declare-fun res!3102203 () Bool)

(assert (=> d!2345272 (=> (not res!3102203) (not e!4609936))))

(declare-fun lt!2673238 () List!73676)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15606 (List!73676) (InoxSet C!42000))

(assert (=> d!2345272 (= res!3102203 (= (content!15606 lt!2673238) ((_ map or) (content!15606 Nil!73552) (content!15606 s!14292))))))

(assert (=> d!2345272 (= lt!2673238 e!4609935)))

(declare-fun c!1433910 () Bool)

(assert (=> d!2345272 (= c!1433910 ((_ is Nil!73552) Nil!73552))))

(assert (=> d!2345272 (= (++!17927 Nil!73552 s!14292) lt!2673238)))

(declare-fun b!7782549 () Bool)

(assert (=> b!7782549 (= e!4609935 s!14292)))

(declare-fun b!7782552 () Bool)

(assert (=> b!7782552 (= e!4609936 (or (not (= s!14292 Nil!73552)) (= lt!2673238 Nil!73552)))))

(declare-fun b!7782551 () Bool)

(declare-fun res!3102204 () Bool)

(assert (=> b!7782551 (=> (not res!3102204) (not e!4609936))))

(declare-fun size!42709 (List!73676) Int)

(assert (=> b!7782551 (= res!3102204 (= (size!42709 lt!2673238) (+ (size!42709 Nil!73552) (size!42709 s!14292))))))

(assert (= (and d!2345272 c!1433910) b!7782549))

(assert (= (and d!2345272 (not c!1433910)) b!7782550))

(assert (= (and d!2345272 res!3102203) b!7782551))

(assert (= (and b!7782551 res!3102204) b!7782552))

(declare-fun m!8229764 () Bool)

(assert (=> b!7782550 m!8229764))

(declare-fun m!8229766 () Bool)

(assert (=> d!2345272 m!8229766))

(declare-fun m!8229768 () Bool)

(assert (=> d!2345272 m!8229768))

(declare-fun m!8229770 () Bool)

(assert (=> d!2345272 m!8229770))

(declare-fun m!8229772 () Bool)

(assert (=> b!7782551 m!8229772))

(declare-fun m!8229774 () Bool)

(assert (=> b!7782551 m!8229774))

(declare-fun m!8229776 () Bool)

(assert (=> b!7782551 m!8229776))

(assert (=> b!7782263 d!2345272))

(declare-fun b!7782563 () Bool)

(declare-fun e!4609939 () Bool)

(assert (=> b!7782563 (= e!4609939 tp_is_empty!52029)))

(declare-fun b!7782564 () Bool)

(declare-fun tp!2287694 () Bool)

(declare-fun tp!2287695 () Bool)

(assert (=> b!7782564 (= e!4609939 (and tp!2287694 tp!2287695))))

(declare-fun b!7782565 () Bool)

(declare-fun tp!2287693 () Bool)

(assert (=> b!7782565 (= e!4609939 tp!2287693)))

(assert (=> b!7782252 (= tp!2287611 e!4609939)))

(declare-fun b!7782566 () Bool)

(declare-fun tp!2287696 () Bool)

(declare-fun tp!2287697 () Bool)

(assert (=> b!7782566 (= e!4609939 (and tp!2287696 tp!2287697))))

(assert (= (and b!7782252 ((_ is ElementMatch!20837) (regOne!42187 r2!6217))) b!7782563))

(assert (= (and b!7782252 ((_ is Concat!29682) (regOne!42187 r2!6217))) b!7782564))

(assert (= (and b!7782252 ((_ is Star!20837) (regOne!42187 r2!6217))) b!7782565))

(assert (= (and b!7782252 ((_ is Union!20837) (regOne!42187 r2!6217))) b!7782566))

(declare-fun b!7782567 () Bool)

(declare-fun e!4609940 () Bool)

(assert (=> b!7782567 (= e!4609940 tp_is_empty!52029)))

(declare-fun b!7782568 () Bool)

(declare-fun tp!2287699 () Bool)

(declare-fun tp!2287700 () Bool)

(assert (=> b!7782568 (= e!4609940 (and tp!2287699 tp!2287700))))

(declare-fun b!7782569 () Bool)

(declare-fun tp!2287698 () Bool)

(assert (=> b!7782569 (= e!4609940 tp!2287698)))

(assert (=> b!7782252 (= tp!2287615 e!4609940)))

(declare-fun b!7782570 () Bool)

(declare-fun tp!2287701 () Bool)

(declare-fun tp!2287702 () Bool)

(assert (=> b!7782570 (= e!4609940 (and tp!2287701 tp!2287702))))

(assert (= (and b!7782252 ((_ is ElementMatch!20837) (regTwo!42187 r2!6217))) b!7782567))

(assert (= (and b!7782252 ((_ is Concat!29682) (regTwo!42187 r2!6217))) b!7782568))

(assert (= (and b!7782252 ((_ is Star!20837) (regTwo!42187 r2!6217))) b!7782569))

(assert (= (and b!7782252 ((_ is Union!20837) (regTwo!42187 r2!6217))) b!7782570))

(declare-fun b!7782571 () Bool)

(declare-fun e!4609941 () Bool)

(assert (=> b!7782571 (= e!4609941 tp_is_empty!52029)))

(declare-fun b!7782572 () Bool)

(declare-fun tp!2287704 () Bool)

(declare-fun tp!2287705 () Bool)

(assert (=> b!7782572 (= e!4609941 (and tp!2287704 tp!2287705))))

(declare-fun b!7782573 () Bool)

(declare-fun tp!2287703 () Bool)

(assert (=> b!7782573 (= e!4609941 tp!2287703)))

(assert (=> b!7782255 (= tp!2287619 e!4609941)))

(declare-fun b!7782574 () Bool)

(declare-fun tp!2287706 () Bool)

(declare-fun tp!2287707 () Bool)

(assert (=> b!7782574 (= e!4609941 (and tp!2287706 tp!2287707))))

(assert (= (and b!7782255 ((_ is ElementMatch!20837) (regOne!42186 r2!6217))) b!7782571))

(assert (= (and b!7782255 ((_ is Concat!29682) (regOne!42186 r2!6217))) b!7782572))

(assert (= (and b!7782255 ((_ is Star!20837) (regOne!42186 r2!6217))) b!7782573))

(assert (= (and b!7782255 ((_ is Union!20837) (regOne!42186 r2!6217))) b!7782574))

(declare-fun b!7782575 () Bool)

(declare-fun e!4609942 () Bool)

(assert (=> b!7782575 (= e!4609942 tp_is_empty!52029)))

(declare-fun b!7782576 () Bool)

(declare-fun tp!2287709 () Bool)

(declare-fun tp!2287710 () Bool)

(assert (=> b!7782576 (= e!4609942 (and tp!2287709 tp!2287710))))

(declare-fun b!7782577 () Bool)

(declare-fun tp!2287708 () Bool)

(assert (=> b!7782577 (= e!4609942 tp!2287708)))

(assert (=> b!7782255 (= tp!2287616 e!4609942)))

(declare-fun b!7782578 () Bool)

(declare-fun tp!2287711 () Bool)

(declare-fun tp!2287712 () Bool)

(assert (=> b!7782578 (= e!4609942 (and tp!2287711 tp!2287712))))

(assert (= (and b!7782255 ((_ is ElementMatch!20837) (regTwo!42186 r2!6217))) b!7782575))

(assert (= (and b!7782255 ((_ is Concat!29682) (regTwo!42186 r2!6217))) b!7782576))

(assert (= (and b!7782255 ((_ is Star!20837) (regTwo!42186 r2!6217))) b!7782577))

(assert (= (and b!7782255 ((_ is Union!20837) (regTwo!42186 r2!6217))) b!7782578))

(declare-fun b!7782579 () Bool)

(declare-fun e!4609943 () Bool)

(assert (=> b!7782579 (= e!4609943 tp_is_empty!52029)))

(declare-fun b!7782580 () Bool)

(declare-fun tp!2287714 () Bool)

(declare-fun tp!2287715 () Bool)

(assert (=> b!7782580 (= e!4609943 (and tp!2287714 tp!2287715))))

(declare-fun b!7782581 () Bool)

(declare-fun tp!2287713 () Bool)

(assert (=> b!7782581 (= e!4609943 tp!2287713)))

(assert (=> b!7782256 (= tp!2287612 e!4609943)))

(declare-fun b!7782582 () Bool)

(declare-fun tp!2287716 () Bool)

(declare-fun tp!2287717 () Bool)

(assert (=> b!7782582 (= e!4609943 (and tp!2287716 tp!2287717))))

(assert (= (and b!7782256 ((_ is ElementMatch!20837) (regOne!42187 r1!6279))) b!7782579))

(assert (= (and b!7782256 ((_ is Concat!29682) (regOne!42187 r1!6279))) b!7782580))

(assert (= (and b!7782256 ((_ is Star!20837) (regOne!42187 r1!6279))) b!7782581))

(assert (= (and b!7782256 ((_ is Union!20837) (regOne!42187 r1!6279))) b!7782582))

(declare-fun b!7782583 () Bool)

(declare-fun e!4609944 () Bool)

(assert (=> b!7782583 (= e!4609944 tp_is_empty!52029)))

(declare-fun b!7782584 () Bool)

(declare-fun tp!2287719 () Bool)

(declare-fun tp!2287720 () Bool)

(assert (=> b!7782584 (= e!4609944 (and tp!2287719 tp!2287720))))

(declare-fun b!7782585 () Bool)

(declare-fun tp!2287718 () Bool)

(assert (=> b!7782585 (= e!4609944 tp!2287718)))

(assert (=> b!7782256 (= tp!2287613 e!4609944)))

(declare-fun b!7782586 () Bool)

(declare-fun tp!2287721 () Bool)

(declare-fun tp!2287722 () Bool)

(assert (=> b!7782586 (= e!4609944 (and tp!2287721 tp!2287722))))

(assert (= (and b!7782256 ((_ is ElementMatch!20837) (regTwo!42187 r1!6279))) b!7782583))

(assert (= (and b!7782256 ((_ is Concat!29682) (regTwo!42187 r1!6279))) b!7782584))

(assert (= (and b!7782256 ((_ is Star!20837) (regTwo!42187 r1!6279))) b!7782585))

(assert (= (and b!7782256 ((_ is Union!20837) (regTwo!42187 r1!6279))) b!7782586))

(declare-fun b!7782587 () Bool)

(declare-fun e!4609945 () Bool)

(assert (=> b!7782587 (= e!4609945 tp_is_empty!52029)))

(declare-fun b!7782588 () Bool)

(declare-fun tp!2287724 () Bool)

(declare-fun tp!2287725 () Bool)

(assert (=> b!7782588 (= e!4609945 (and tp!2287724 tp!2287725))))

(declare-fun b!7782589 () Bool)

(declare-fun tp!2287723 () Bool)

(assert (=> b!7782589 (= e!4609945 tp!2287723)))

(assert (=> b!7782261 (= tp!2287614 e!4609945)))

(declare-fun b!7782590 () Bool)

(declare-fun tp!2287726 () Bool)

(declare-fun tp!2287727 () Bool)

(assert (=> b!7782590 (= e!4609945 (and tp!2287726 tp!2287727))))

(assert (= (and b!7782261 ((_ is ElementMatch!20837) (regOne!42186 r1!6279))) b!7782587))

(assert (= (and b!7782261 ((_ is Concat!29682) (regOne!42186 r1!6279))) b!7782588))

(assert (= (and b!7782261 ((_ is Star!20837) (regOne!42186 r1!6279))) b!7782589))

(assert (= (and b!7782261 ((_ is Union!20837) (regOne!42186 r1!6279))) b!7782590))

(declare-fun b!7782591 () Bool)

(declare-fun e!4609946 () Bool)

(assert (=> b!7782591 (= e!4609946 tp_is_empty!52029)))

(declare-fun b!7782592 () Bool)

(declare-fun tp!2287729 () Bool)

(declare-fun tp!2287730 () Bool)

(assert (=> b!7782592 (= e!4609946 (and tp!2287729 tp!2287730))))

(declare-fun b!7782593 () Bool)

(declare-fun tp!2287728 () Bool)

(assert (=> b!7782593 (= e!4609946 tp!2287728)))

(assert (=> b!7782261 (= tp!2287618 e!4609946)))

(declare-fun b!7782594 () Bool)

(declare-fun tp!2287731 () Bool)

(declare-fun tp!2287732 () Bool)

(assert (=> b!7782594 (= e!4609946 (and tp!2287731 tp!2287732))))

(assert (= (and b!7782261 ((_ is ElementMatch!20837) (regTwo!42186 r1!6279))) b!7782591))

(assert (= (and b!7782261 ((_ is Concat!29682) (regTwo!42186 r1!6279))) b!7782592))

(assert (= (and b!7782261 ((_ is Star!20837) (regTwo!42186 r1!6279))) b!7782593))

(assert (= (and b!7782261 ((_ is Union!20837) (regTwo!42186 r1!6279))) b!7782594))

(declare-fun b!7782595 () Bool)

(declare-fun e!4609947 () Bool)

(assert (=> b!7782595 (= e!4609947 tp_is_empty!52029)))

(declare-fun b!7782596 () Bool)

(declare-fun tp!2287734 () Bool)

(declare-fun tp!2287735 () Bool)

(assert (=> b!7782596 (= e!4609947 (and tp!2287734 tp!2287735))))

(declare-fun b!7782597 () Bool)

(declare-fun tp!2287733 () Bool)

(assert (=> b!7782597 (= e!4609947 tp!2287733)))

(assert (=> b!7782249 (= tp!2287610 e!4609947)))

(declare-fun b!7782598 () Bool)

(declare-fun tp!2287736 () Bool)

(declare-fun tp!2287737 () Bool)

(assert (=> b!7782598 (= e!4609947 (and tp!2287736 tp!2287737))))

(assert (= (and b!7782249 ((_ is ElementMatch!20837) (reg!21166 r1!6279))) b!7782595))

(assert (= (and b!7782249 ((_ is Concat!29682) (reg!21166 r1!6279))) b!7782596))

(assert (= (and b!7782249 ((_ is Star!20837) (reg!21166 r1!6279))) b!7782597))

(assert (= (and b!7782249 ((_ is Union!20837) (reg!21166 r1!6279))) b!7782598))

(declare-fun b!7782599 () Bool)

(declare-fun e!4609948 () Bool)

(assert (=> b!7782599 (= e!4609948 tp_is_empty!52029)))

(declare-fun b!7782600 () Bool)

(declare-fun tp!2287739 () Bool)

(declare-fun tp!2287740 () Bool)

(assert (=> b!7782600 (= e!4609948 (and tp!2287739 tp!2287740))))

(declare-fun b!7782601 () Bool)

(declare-fun tp!2287738 () Bool)

(assert (=> b!7782601 (= e!4609948 tp!2287738)))

(assert (=> b!7782248 (= tp!2287617 e!4609948)))

(declare-fun b!7782602 () Bool)

(declare-fun tp!2287741 () Bool)

(declare-fun tp!2287742 () Bool)

(assert (=> b!7782602 (= e!4609948 (and tp!2287741 tp!2287742))))

(assert (= (and b!7782248 ((_ is ElementMatch!20837) (reg!21166 r2!6217))) b!7782599))

(assert (= (and b!7782248 ((_ is Concat!29682) (reg!21166 r2!6217))) b!7782600))

(assert (= (and b!7782248 ((_ is Star!20837) (reg!21166 r2!6217))) b!7782601))

(assert (= (and b!7782248 ((_ is Union!20837) (reg!21166 r2!6217))) b!7782602))

(declare-fun b!7782607 () Bool)

(declare-fun e!4609951 () Bool)

(declare-fun tp!2287745 () Bool)

(assert (=> b!7782607 (= e!4609951 (and tp_is_empty!52029 tp!2287745))))

(assert (=> b!7782253 (= tp!2287609 e!4609951)))

(assert (= (and b!7782253 ((_ is Cons!73552) (t!388411 s!14292))) b!7782607))

(check-sat (not b!7782306) (not b!7782588) (not bm!721295) (not b!7782568) (not d!2345246) (not b!7782585) (not b!7782601) (not b!7782577) (not b!7782598) (not b!7782589) (not b!7782593) (not d!2345272) (not b!7782600) (not b!7782573) (not bm!721297) (not b!7782584) (not b!7782590) (not b!7782550) (not bm!721298) (not b!7782596) (not d!2345252) (not b!7782373) (not b!7782572) (not b!7782580) (not b!7782483) (not b!7782311) (not b!7782481) (not b!7782565) (not b!7782315) (not b!7782485) (not b!7782597) (not b!7782574) (not b!7782484) (not b!7782477) (not b!7782592) (not bm!721286) (not b!7782364) (not bm!721294) (not b!7782307) (not b!7782581) (not b!7782594) (not b!7782564) (not b!7782570) (not b!7782582) (not b!7782586) (not b!7782576) (not b!7782569) (not b!7782607) (not b!7782478) (not b!7782578) (not b!7782551) (not b!7782566) tp_is_empty!52029 (not b!7782305) (not b!7782602) (not b!7782304) (not d!2345258) (not d!2345262))
(check-sat)
