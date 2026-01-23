; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286444 () Bool)

(assert start!286444)

(declare-fun b!2954294 () Bool)

(assert (=> b!2954294 true))

(assert (=> b!2954294 true))

(assert (=> b!2954294 true))

(declare-fun lambda!109974 () Int)

(declare-fun lambda!109973 () Int)

(assert (=> b!2954294 (not (= lambda!109974 lambda!109973))))

(assert (=> b!2954294 true))

(assert (=> b!2954294 true))

(assert (=> b!2954294 true))

(declare-fun b!2954283 () Bool)

(declare-fun res!1218933 () Bool)

(declare-fun e!1860329 () Bool)

(assert (=> b!2954283 (=> res!1218933 e!1860329)))

(declare-datatypes ((C!18512 0))(
  ( (C!18513 (val!11292 Int)) )
))
(declare-datatypes ((Regex!9163 0))(
  ( (ElementMatch!9163 (c!483831 C!18512)) (Concat!14484 (regOne!18838 Regex!9163) (regTwo!18838 Regex!9163)) (EmptyExpr!9163) (Star!9163 (reg!9492 Regex!9163)) (EmptyLang!9163) (Union!9163 (regOne!18839 Regex!9163) (regTwo!18839 Regex!9163)) )
))
(declare-fun lt!1032688 () Regex!9163)

(declare-fun isEmptyLang!285 (Regex!9163) Bool)

(assert (=> b!2954283 (= res!1218933 (isEmptyLang!285 lt!1032688))))

(declare-fun b!2954284 () Bool)

(declare-fun res!1218929 () Bool)

(declare-fun e!1860328 () Bool)

(assert (=> b!2954284 (=> res!1218929 e!1860328)))

(declare-datatypes ((List!35028 0))(
  ( (Nil!34904) (Cons!34904 (h!40324 C!18512) (t!234093 List!35028)) )
))
(declare-fun s!11993 () List!35028)

(declare-fun isEmpty!19176 (List!35028) Bool)

(assert (=> b!2954284 (= res!1218929 (isEmpty!19176 s!11993))))

(declare-fun b!2954285 () Bool)

(assert (=> b!2954285 (= e!1860328 e!1860329)))

(declare-fun res!1218930 () Bool)

(assert (=> b!2954285 (=> res!1218930 e!1860329)))

(declare-fun lt!1032685 () Regex!9163)

(assert (=> b!2954285 (= res!1218930 (isEmptyLang!285 lt!1032685))))

(declare-fun r!17423 () Regex!9163)

(declare-fun simplify!168 (Regex!9163) Regex!9163)

(assert (=> b!2954285 (= lt!1032688 (simplify!168 (regTwo!18838 r!17423)))))

(assert (=> b!2954285 (= lt!1032685 (simplify!168 (regOne!18838 r!17423)))))

(declare-fun b!2954286 () Bool)

(declare-fun e!1860332 () Bool)

(declare-fun tp!943753 () Bool)

(assert (=> b!2954286 (= e!1860332 tp!943753)))

(declare-fun b!2954287 () Bool)

(declare-fun tp!943750 () Bool)

(declare-fun tp!943751 () Bool)

(assert (=> b!2954287 (= e!1860332 (and tp!943750 tp!943751))))

(declare-fun b!2954288 () Bool)

(declare-fun res!1218931 () Bool)

(declare-fun e!1860333 () Bool)

(assert (=> b!2954288 (=> res!1218931 e!1860333)))

(declare-fun validRegex!3896 (Regex!9163) Bool)

(assert (=> b!2954288 (= res!1218931 (not (validRegex!3896 lt!1032688)))))

(declare-fun b!2954289 () Bool)

(declare-fun res!1218934 () Bool)

(assert (=> b!2954289 (=> res!1218934 e!1860329)))

(declare-fun isEmptyExpr!366 (Regex!9163) Bool)

(assert (=> b!2954289 (= res!1218934 (isEmptyExpr!366 lt!1032688))))

(declare-fun b!2954290 () Bool)

(declare-fun e!1860331 () Bool)

(assert (=> b!2954290 (= e!1860329 e!1860331)))

(declare-fun res!1218937 () Bool)

(assert (=> b!2954290 (=> res!1218937 e!1860331)))

(declare-fun lt!1032683 () Regex!9163)

(declare-fun matchR!4045 (Regex!9163 List!35028) Bool)

(assert (=> b!2954290 (= res!1218937 (not (matchR!4045 lt!1032683 s!11993)))))

(assert (=> b!2954290 (= lt!1032683 (Concat!14484 lt!1032685 lt!1032688))))

(declare-fun res!1218932 () Bool)

(declare-fun e!1860330 () Bool)

(assert (=> start!286444 (=> (not res!1218932) (not e!1860330))))

(assert (=> start!286444 (= res!1218932 (validRegex!3896 r!17423))))

(assert (=> start!286444 e!1860330))

(assert (=> start!286444 e!1860332))

(declare-fun e!1860327 () Bool)

(assert (=> start!286444 e!1860327))

(declare-fun b!2954291 () Bool)

(declare-fun ++!8330 (List!35028 List!35028) List!35028)

(assert (=> b!2954291 (= e!1860333 (= (++!8330 Nil!34904 s!11993) s!11993))))

(declare-fun b!2954292 () Bool)

(declare-fun tp_is_empty!15889 () Bool)

(declare-fun tp!943752 () Bool)

(assert (=> b!2954292 (= e!1860327 (and tp_is_empty!15889 tp!943752))))

(declare-fun b!2954293 () Bool)

(declare-fun tp!943749 () Bool)

(declare-fun tp!943748 () Bool)

(assert (=> b!2954293 (= e!1860332 (and tp!943749 tp!943748))))

(assert (=> b!2954294 (= e!1860331 e!1860333)))

(declare-fun res!1218935 () Bool)

(assert (=> b!2954294 (=> res!1218935 e!1860333)))

(assert (=> b!2954294 (= res!1218935 (not (validRegex!3896 lt!1032685)))))

(declare-fun Exists!1495 (Int) Bool)

(assert (=> b!2954294 (= (Exists!1495 lambda!109973) (Exists!1495 lambda!109974))))

(declare-datatypes ((Unit!48705 0))(
  ( (Unit!48706) )
))
(declare-fun lt!1032689 () Unit!48705)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!516 (Regex!9163 Regex!9163 List!35028) Unit!48705)

(assert (=> b!2954294 (= lt!1032689 (lemmaExistCutMatchRandMatchRSpecEquivalent!516 lt!1032685 lt!1032688 s!11993))))

(declare-datatypes ((tuple2!33844 0))(
  ( (tuple2!33845 (_1!20054 List!35028) (_2!20054 List!35028)) )
))
(declare-datatypes ((Option!6654 0))(
  ( (None!6653) (Some!6653 (v!34787 tuple2!33844)) )
))
(declare-fun isDefined!5205 (Option!6654) Bool)

(declare-fun findConcatSeparation!1048 (Regex!9163 Regex!9163 List!35028 List!35028 List!35028) Option!6654)

(assert (=> b!2954294 (= (isDefined!5205 (findConcatSeparation!1048 lt!1032685 lt!1032688 Nil!34904 s!11993 s!11993)) (Exists!1495 lambda!109973))))

(declare-fun lt!1032682 () Unit!48705)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!826 (Regex!9163 Regex!9163 List!35028) Unit!48705)

(assert (=> b!2954294 (= lt!1032682 (lemmaFindConcatSeparationEquivalentToExists!826 lt!1032685 lt!1032688 s!11993))))

(declare-fun matchRSpec!1300 (Regex!9163 List!35028) Bool)

(assert (=> b!2954294 (matchRSpec!1300 lt!1032683 s!11993)))

(declare-fun lt!1032686 () Unit!48705)

(declare-fun mainMatchTheorem!1300 (Regex!9163 List!35028) Unit!48705)

(assert (=> b!2954294 (= lt!1032686 (mainMatchTheorem!1300 lt!1032683 s!11993))))

(declare-fun b!2954295 () Bool)

(assert (=> b!2954295 (= e!1860332 tp_is_empty!15889)))

(declare-fun b!2954296 () Bool)

(declare-fun res!1218936 () Bool)

(assert (=> b!2954296 (=> res!1218936 e!1860329)))

(assert (=> b!2954296 (= res!1218936 (isEmptyExpr!366 lt!1032685))))

(declare-fun b!2954297 () Bool)

(assert (=> b!2954297 (= e!1860330 (not e!1860328))))

(declare-fun res!1218938 () Bool)

(assert (=> b!2954297 (=> res!1218938 e!1860328)))

(declare-fun lt!1032687 () Bool)

(get-info :version)

(assert (=> b!2954297 (= res!1218938 (or lt!1032687 (not ((_ is Concat!14484) r!17423))))))

(assert (=> b!2954297 (= lt!1032687 (matchRSpec!1300 r!17423 s!11993))))

(assert (=> b!2954297 (= lt!1032687 (matchR!4045 r!17423 s!11993))))

(declare-fun lt!1032684 () Unit!48705)

(assert (=> b!2954297 (= lt!1032684 (mainMatchTheorem!1300 r!17423 s!11993))))

(assert (= (and start!286444 res!1218932) b!2954297))

(assert (= (and b!2954297 (not res!1218938)) b!2954284))

(assert (= (and b!2954284 (not res!1218929)) b!2954285))

(assert (= (and b!2954285 (not res!1218930)) b!2954283))

(assert (= (and b!2954283 (not res!1218933)) b!2954296))

(assert (= (and b!2954296 (not res!1218936)) b!2954289))

(assert (= (and b!2954289 (not res!1218934)) b!2954290))

(assert (= (and b!2954290 (not res!1218937)) b!2954294))

(assert (= (and b!2954294 (not res!1218935)) b!2954288))

(assert (= (and b!2954288 (not res!1218931)) b!2954291))

(assert (= (and start!286444 ((_ is ElementMatch!9163) r!17423)) b!2954295))

(assert (= (and start!286444 ((_ is Concat!14484) r!17423)) b!2954287))

(assert (= (and start!286444 ((_ is Star!9163) r!17423)) b!2954286))

(assert (= (and start!286444 ((_ is Union!9163) r!17423)) b!2954293))

(assert (= (and start!286444 ((_ is Cons!34904) s!11993)) b!2954292))

(declare-fun m!3331191 () Bool)

(assert (=> b!2954289 m!3331191))

(declare-fun m!3331193 () Bool)

(assert (=> b!2954296 m!3331193))

(declare-fun m!3331195 () Bool)

(assert (=> b!2954284 m!3331195))

(declare-fun m!3331197 () Bool)

(assert (=> b!2954288 m!3331197))

(declare-fun m!3331199 () Bool)

(assert (=> b!2954290 m!3331199))

(declare-fun m!3331201 () Bool)

(assert (=> b!2954291 m!3331201))

(declare-fun m!3331203 () Bool)

(assert (=> b!2954297 m!3331203))

(declare-fun m!3331205 () Bool)

(assert (=> b!2954297 m!3331205))

(declare-fun m!3331207 () Bool)

(assert (=> b!2954297 m!3331207))

(declare-fun m!3331209 () Bool)

(assert (=> start!286444 m!3331209))

(declare-fun m!3331211 () Bool)

(assert (=> b!2954283 m!3331211))

(declare-fun m!3331213 () Bool)

(assert (=> b!2954294 m!3331213))

(declare-fun m!3331215 () Bool)

(assert (=> b!2954294 m!3331215))

(declare-fun m!3331217 () Bool)

(assert (=> b!2954294 m!3331217))

(assert (=> b!2954294 m!3331215))

(declare-fun m!3331219 () Bool)

(assert (=> b!2954294 m!3331219))

(declare-fun m!3331221 () Bool)

(assert (=> b!2954294 m!3331221))

(declare-fun m!3331223 () Bool)

(assert (=> b!2954294 m!3331223))

(declare-fun m!3331225 () Bool)

(assert (=> b!2954294 m!3331225))

(declare-fun m!3331227 () Bool)

(assert (=> b!2954294 m!3331227))

(declare-fun m!3331229 () Bool)

(assert (=> b!2954294 m!3331229))

(assert (=> b!2954294 m!3331229))

(declare-fun m!3331231 () Bool)

(assert (=> b!2954285 m!3331231))

(declare-fun m!3331233 () Bool)

(assert (=> b!2954285 m!3331233))

(declare-fun m!3331235 () Bool)

(assert (=> b!2954285 m!3331235))

(check-sat (not b!2954290) (not start!286444) (not b!2954287) (not b!2954294) (not b!2954283) (not b!2954285) (not b!2954297) (not b!2954292) (not b!2954288) (not b!2954291) (not b!2954286) (not b!2954293) (not b!2954296) (not b!2954289) (not b!2954284) tp_is_empty!15889)
(check-sat)
(get-model)

(declare-fun d!841383 () Bool)

(declare-fun e!1860360 () Bool)

(assert (=> d!841383 e!1860360))

(declare-fun res!1218958 () Bool)

(assert (=> d!841383 (=> (not res!1218958) (not e!1860360))))

(declare-fun lt!1032692 () List!35028)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4755 (List!35028) (InoxSet C!18512))

(assert (=> d!841383 (= res!1218958 (= (content!4755 lt!1032692) ((_ map or) (content!4755 Nil!34904) (content!4755 s!11993))))))

(declare-fun e!1860359 () List!35028)

(assert (=> d!841383 (= lt!1032692 e!1860359)))

(declare-fun c!483840 () Bool)

(assert (=> d!841383 (= c!483840 ((_ is Nil!34904) Nil!34904))))

(assert (=> d!841383 (= (++!8330 Nil!34904 s!11993) lt!1032692)))

(declare-fun b!2954340 () Bool)

(assert (=> b!2954340 (= e!1860360 (or (not (= s!11993 Nil!34904)) (= lt!1032692 Nil!34904)))))

(declare-fun b!2954337 () Bool)

(assert (=> b!2954337 (= e!1860359 s!11993)))

(declare-fun b!2954338 () Bool)

(assert (=> b!2954338 (= e!1860359 (Cons!34904 (h!40324 Nil!34904) (++!8330 (t!234093 Nil!34904) s!11993)))))

(declare-fun b!2954339 () Bool)

(declare-fun res!1218959 () Bool)

(assert (=> b!2954339 (=> (not res!1218959) (not e!1860360))))

(declare-fun size!26466 (List!35028) Int)

(assert (=> b!2954339 (= res!1218959 (= (size!26466 lt!1032692) (+ (size!26466 Nil!34904) (size!26466 s!11993))))))

(assert (= (and d!841383 c!483840) b!2954337))

(assert (= (and d!841383 (not c!483840)) b!2954338))

(assert (= (and d!841383 res!1218958) b!2954339))

(assert (= (and b!2954339 res!1218959) b!2954340))

(declare-fun m!3331243 () Bool)

(assert (=> d!841383 m!3331243))

(declare-fun m!3331245 () Bool)

(assert (=> d!841383 m!3331245))

(declare-fun m!3331247 () Bool)

(assert (=> d!841383 m!3331247))

(declare-fun m!3331249 () Bool)

(assert (=> b!2954338 m!3331249))

(declare-fun m!3331251 () Bool)

(assert (=> b!2954339 m!3331251))

(declare-fun m!3331253 () Bool)

(assert (=> b!2954339 m!3331253))

(declare-fun m!3331255 () Bool)

(assert (=> b!2954339 m!3331255))

(assert (=> b!2954291 d!841383))

(declare-fun bs!525965 () Bool)

(declare-fun b!2954462 () Bool)

(assert (= bs!525965 (and b!2954462 b!2954294)))

(declare-fun lambda!109985 () Int)

(assert (=> bs!525965 (not (= lambda!109985 lambda!109973))))

(assert (=> bs!525965 (not (= lambda!109985 lambda!109974))))

(assert (=> b!2954462 true))

(assert (=> b!2954462 true))

(declare-fun bs!525966 () Bool)

(declare-fun b!2954464 () Bool)

(assert (= bs!525966 (and b!2954464 b!2954294)))

(declare-fun lambda!109986 () Int)

(assert (=> bs!525966 (not (= lambda!109986 lambda!109973))))

(assert (=> bs!525966 (= (and (= (regOne!18838 r!17423) lt!1032685) (= (regTwo!18838 r!17423) lt!1032688)) (= lambda!109986 lambda!109974))))

(declare-fun bs!525967 () Bool)

(assert (= bs!525967 (and b!2954464 b!2954462)))

(assert (=> bs!525967 (not (= lambda!109986 lambda!109985))))

(assert (=> b!2954464 true))

(assert (=> b!2954464 true))

(declare-fun bm!195524 () Bool)

(declare-fun call!195530 () Bool)

(assert (=> bm!195524 (= call!195530 (isEmpty!19176 s!11993))))

(declare-fun b!2954458 () Bool)

(declare-fun e!1860429 () Bool)

(assert (=> b!2954458 (= e!1860429 (matchRSpec!1300 (regTwo!18839 r!17423) s!11993))))

(declare-fun b!2954459 () Bool)

(declare-fun c!483871 () Bool)

(assert (=> b!2954459 (= c!483871 ((_ is ElementMatch!9163) r!17423))))

(declare-fun e!1860425 () Bool)

(declare-fun e!1860428 () Bool)

(assert (=> b!2954459 (= e!1860425 e!1860428)))

(declare-fun b!2954460 () Bool)

(declare-fun e!1860427 () Bool)

(assert (=> b!2954460 (= e!1860427 call!195530)))

(declare-fun b!2954461 () Bool)

(declare-fun res!1219021 () Bool)

(declare-fun e!1860426 () Bool)

(assert (=> b!2954461 (=> res!1219021 e!1860426)))

(assert (=> b!2954461 (= res!1219021 call!195530)))

(declare-fun e!1860430 () Bool)

(assert (=> b!2954461 (= e!1860430 e!1860426)))

(declare-fun call!195529 () Bool)

(assert (=> b!2954462 (= e!1860426 call!195529)))

(declare-fun d!841391 () Bool)

(declare-fun c!483873 () Bool)

(assert (=> d!841391 (= c!483873 ((_ is EmptyExpr!9163) r!17423))))

(assert (=> d!841391 (= (matchRSpec!1300 r!17423 s!11993) e!1860427)))

(declare-fun b!2954463 () Bool)

(declare-fun c!483870 () Bool)

(assert (=> b!2954463 (= c!483870 ((_ is Union!9163) r!17423))))

(declare-fun e!1860431 () Bool)

(assert (=> b!2954463 (= e!1860428 e!1860431)))

(assert (=> b!2954464 (= e!1860430 call!195529)))

(declare-fun b!2954465 () Bool)

(assert (=> b!2954465 (= e!1860428 (= s!11993 (Cons!34904 (c!483831 r!17423) Nil!34904)))))

(declare-fun b!2954466 () Bool)

(assert (=> b!2954466 (= e!1860431 e!1860430)))

(declare-fun c!483872 () Bool)

(assert (=> b!2954466 (= c!483872 ((_ is Star!9163) r!17423))))

(declare-fun b!2954467 () Bool)

(assert (=> b!2954467 (= e!1860427 e!1860425)))

(declare-fun res!1219020 () Bool)

(assert (=> b!2954467 (= res!1219020 (not ((_ is EmptyLang!9163) r!17423)))))

(assert (=> b!2954467 (=> (not res!1219020) (not e!1860425))))

(declare-fun bm!195525 () Bool)

(assert (=> bm!195525 (= call!195529 (Exists!1495 (ite c!483872 lambda!109985 lambda!109986)))))

(declare-fun b!2954468 () Bool)

(assert (=> b!2954468 (= e!1860431 e!1860429)))

(declare-fun res!1219019 () Bool)

(assert (=> b!2954468 (= res!1219019 (matchRSpec!1300 (regOne!18839 r!17423) s!11993))))

(assert (=> b!2954468 (=> res!1219019 e!1860429)))

(assert (= (and d!841391 c!483873) b!2954460))

(assert (= (and d!841391 (not c!483873)) b!2954467))

(assert (= (and b!2954467 res!1219020) b!2954459))

(assert (= (and b!2954459 c!483871) b!2954465))

(assert (= (and b!2954459 (not c!483871)) b!2954463))

(assert (= (and b!2954463 c!483870) b!2954468))

(assert (= (and b!2954463 (not c!483870)) b!2954466))

(assert (= (and b!2954468 (not res!1219019)) b!2954458))

(assert (= (and b!2954466 c!483872) b!2954461))

(assert (= (and b!2954466 (not c!483872)) b!2954464))

(assert (= (and b!2954461 (not res!1219021)) b!2954462))

(assert (= (or b!2954462 b!2954464) bm!195525))

(assert (= (or b!2954460 b!2954461) bm!195524))

(assert (=> bm!195524 m!3331195))

(declare-fun m!3331277 () Bool)

(assert (=> b!2954458 m!3331277))

(declare-fun m!3331279 () Bool)

(assert (=> bm!195525 m!3331279))

(declare-fun m!3331281 () Bool)

(assert (=> b!2954468 m!3331281))

(assert (=> b!2954297 d!841391))

(declare-fun b!2954632 () Bool)

(declare-fun e!1860523 () Bool)

(declare-fun head!6580 (List!35028) C!18512)

(assert (=> b!2954632 (= e!1860523 (= (head!6580 s!11993) (c!483831 r!17423)))))

(declare-fun b!2954633 () Bool)

(declare-fun e!1860526 () Bool)

(declare-fun e!1860524 () Bool)

(assert (=> b!2954633 (= e!1860526 e!1860524)))

(declare-fun c!483934 () Bool)

(assert (=> b!2954633 (= c!483934 ((_ is EmptyLang!9163) r!17423))))

(declare-fun b!2954634 () Bool)

(declare-fun res!1219072 () Bool)

(assert (=> b!2954634 (=> (not res!1219072) (not e!1860523))))

(declare-fun tail!4806 (List!35028) List!35028)

(assert (=> b!2954634 (= res!1219072 (isEmpty!19176 (tail!4806 s!11993)))))

(declare-fun b!2954635 () Bool)

(declare-fun e!1860528 () Bool)

(declare-fun derivativeStep!2521 (Regex!9163 C!18512) Regex!9163)

(assert (=> b!2954635 (= e!1860528 (matchR!4045 (derivativeStep!2521 r!17423 (head!6580 s!11993)) (tail!4806 s!11993)))))

(declare-fun b!2954636 () Bool)

(declare-fun e!1860525 () Bool)

(declare-fun e!1860522 () Bool)

(assert (=> b!2954636 (= e!1860525 e!1860522)))

(declare-fun res!1219076 () Bool)

(assert (=> b!2954636 (=> (not res!1219076) (not e!1860522))))

(declare-fun lt!1032730 () Bool)

(assert (=> b!2954636 (= res!1219076 (not lt!1032730))))

(declare-fun b!2954637 () Bool)

(declare-fun call!195565 () Bool)

(assert (=> b!2954637 (= e!1860526 (= lt!1032730 call!195565))))

(declare-fun b!2954638 () Bool)

(assert (=> b!2954638 (= e!1860524 (not lt!1032730))))

(declare-fun b!2954639 () Bool)

(declare-fun res!1219074 () Bool)

(assert (=> b!2954639 (=> res!1219074 e!1860525)))

(assert (=> b!2954639 (= res!1219074 e!1860523)))

(declare-fun res!1219069 () Bool)

(assert (=> b!2954639 (=> (not res!1219069) (not e!1860523))))

(assert (=> b!2954639 (= res!1219069 lt!1032730)))

(declare-fun b!2954640 () Bool)

(declare-fun e!1860527 () Bool)

(assert (=> b!2954640 (= e!1860522 e!1860527)))

(declare-fun res!1219070 () Bool)

(assert (=> b!2954640 (=> res!1219070 e!1860527)))

(assert (=> b!2954640 (= res!1219070 call!195565)))

(declare-fun bm!195560 () Bool)

(assert (=> bm!195560 (= call!195565 (isEmpty!19176 s!11993))))

(declare-fun b!2954641 () Bool)

(assert (=> b!2954641 (= e!1860527 (not (= (head!6580 s!11993) (c!483831 r!17423))))))

(declare-fun b!2954642 () Bool)

(declare-fun res!1219073 () Bool)

(assert (=> b!2954642 (=> res!1219073 e!1860525)))

(assert (=> b!2954642 (= res!1219073 (not ((_ is ElementMatch!9163) r!17423)))))

(assert (=> b!2954642 (= e!1860524 e!1860525)))

(declare-fun b!2954643 () Bool)

(declare-fun nullable!2919 (Regex!9163) Bool)

(assert (=> b!2954643 (= e!1860528 (nullable!2919 r!17423))))

(declare-fun b!2954644 () Bool)

(declare-fun res!1219071 () Bool)

(assert (=> b!2954644 (=> res!1219071 e!1860527)))

(assert (=> b!2954644 (= res!1219071 (not (isEmpty!19176 (tail!4806 s!11993))))))

(declare-fun d!841401 () Bool)

(assert (=> d!841401 e!1860526))

(declare-fun c!483932 () Bool)

(assert (=> d!841401 (= c!483932 ((_ is EmptyExpr!9163) r!17423))))

(assert (=> d!841401 (= lt!1032730 e!1860528)))

(declare-fun c!483933 () Bool)

(assert (=> d!841401 (= c!483933 (isEmpty!19176 s!11993))))

(assert (=> d!841401 (validRegex!3896 r!17423)))

(assert (=> d!841401 (= (matchR!4045 r!17423 s!11993) lt!1032730)))

(declare-fun b!2954645 () Bool)

(declare-fun res!1219075 () Bool)

(assert (=> b!2954645 (=> (not res!1219075) (not e!1860523))))

(assert (=> b!2954645 (= res!1219075 (not call!195565))))

(assert (= (and d!841401 c!483933) b!2954643))

(assert (= (and d!841401 (not c!483933)) b!2954635))

(assert (= (and d!841401 c!483932) b!2954637))

(assert (= (and d!841401 (not c!483932)) b!2954633))

(assert (= (and b!2954633 c!483934) b!2954638))

(assert (= (and b!2954633 (not c!483934)) b!2954642))

(assert (= (and b!2954642 (not res!1219073)) b!2954639))

(assert (= (and b!2954639 res!1219069) b!2954645))

(assert (= (and b!2954645 res!1219075) b!2954634))

(assert (= (and b!2954634 res!1219072) b!2954632))

(assert (= (and b!2954639 (not res!1219074)) b!2954636))

(assert (= (and b!2954636 res!1219076) b!2954640))

(assert (= (and b!2954640 (not res!1219070)) b!2954644))

(assert (= (and b!2954644 (not res!1219071)) b!2954641))

(assert (= (or b!2954637 b!2954640 b!2954645) bm!195560))

(declare-fun m!3331355 () Bool)

(assert (=> b!2954632 m!3331355))

(declare-fun m!3331357 () Bool)

(assert (=> b!2954634 m!3331357))

(assert (=> b!2954634 m!3331357))

(declare-fun m!3331359 () Bool)

(assert (=> b!2954634 m!3331359))

(declare-fun m!3331361 () Bool)

(assert (=> b!2954643 m!3331361))

(assert (=> bm!195560 m!3331195))

(assert (=> b!2954641 m!3331355))

(assert (=> d!841401 m!3331195))

(assert (=> d!841401 m!3331209))

(assert (=> b!2954644 m!3331357))

(assert (=> b!2954644 m!3331357))

(assert (=> b!2954644 m!3331359))

(assert (=> b!2954635 m!3331355))

(assert (=> b!2954635 m!3331355))

(declare-fun m!3331363 () Bool)

(assert (=> b!2954635 m!3331363))

(assert (=> b!2954635 m!3331357))

(assert (=> b!2954635 m!3331363))

(assert (=> b!2954635 m!3331357))

(declare-fun m!3331365 () Bool)

(assert (=> b!2954635 m!3331365))

(assert (=> b!2954297 d!841401))

(declare-fun d!841421 () Bool)

(assert (=> d!841421 (= (matchR!4045 r!17423 s!11993) (matchRSpec!1300 r!17423 s!11993))))

(declare-fun lt!1032736 () Unit!48705)

(declare-fun choose!17466 (Regex!9163 List!35028) Unit!48705)

(assert (=> d!841421 (= lt!1032736 (choose!17466 r!17423 s!11993))))

(assert (=> d!841421 (validRegex!3896 r!17423)))

(assert (=> d!841421 (= (mainMatchTheorem!1300 r!17423 s!11993) lt!1032736)))

(declare-fun bs!525974 () Bool)

(assert (= bs!525974 d!841421))

(assert (=> bs!525974 m!3331205))

(assert (=> bs!525974 m!3331203))

(declare-fun m!3331371 () Bool)

(assert (=> bs!525974 m!3331371))

(assert (=> bs!525974 m!3331209))

(assert (=> b!2954297 d!841421))

(declare-fun bm!195567 () Bool)

(declare-fun call!195574 () Bool)

(declare-fun call!195573 () Bool)

(assert (=> bm!195567 (= call!195574 call!195573)))

(declare-fun b!2954676 () Bool)

(declare-fun e!1860551 () Bool)

(declare-fun e!1860552 () Bool)

(assert (=> b!2954676 (= e!1860551 e!1860552)))

(declare-fun c!483940 () Bool)

(assert (=> b!2954676 (= c!483940 ((_ is Union!9163) lt!1032688))))

(declare-fun b!2954677 () Bool)

(declare-fun e!1860549 () Bool)

(declare-fun call!195572 () Bool)

(assert (=> b!2954677 (= e!1860549 call!195572)))

(declare-fun b!2954678 () Bool)

(declare-fun res!1219100 () Bool)

(declare-fun e!1860550 () Bool)

(assert (=> b!2954678 (=> res!1219100 e!1860550)))

(assert (=> b!2954678 (= res!1219100 (not ((_ is Concat!14484) lt!1032688)))))

(assert (=> b!2954678 (= e!1860552 e!1860550)))

(declare-fun d!841425 () Bool)

(declare-fun res!1219101 () Bool)

(declare-fun e!1860553 () Bool)

(assert (=> d!841425 (=> res!1219101 e!1860553)))

(assert (=> d!841425 (= res!1219101 ((_ is ElementMatch!9163) lt!1032688))))

(assert (=> d!841425 (= (validRegex!3896 lt!1032688) e!1860553)))

(declare-fun c!483939 () Bool)

(declare-fun bm!195568 () Bool)

(assert (=> bm!195568 (= call!195573 (validRegex!3896 (ite c!483939 (reg!9492 lt!1032688) (ite c!483940 (regOne!18839 lt!1032688) (regTwo!18838 lt!1032688)))))))

(declare-fun b!2954679 () Bool)

(assert (=> b!2954679 (= e!1860553 e!1860551)))

(assert (=> b!2954679 (= c!483939 ((_ is Star!9163) lt!1032688))))

(declare-fun b!2954680 () Bool)

(declare-fun res!1219102 () Bool)

(assert (=> b!2954680 (=> (not res!1219102) (not e!1860549))))

(assert (=> b!2954680 (= res!1219102 call!195574)))

(assert (=> b!2954680 (= e!1860552 e!1860549)))

(declare-fun b!2954681 () Bool)

(declare-fun e!1860554 () Bool)

(assert (=> b!2954681 (= e!1860550 e!1860554)))

(declare-fun res!1219103 () Bool)

(assert (=> b!2954681 (=> (not res!1219103) (not e!1860554))))

(assert (=> b!2954681 (= res!1219103 call!195572)))

(declare-fun b!2954682 () Bool)

(declare-fun e!1860555 () Bool)

(assert (=> b!2954682 (= e!1860555 call!195573)))

(declare-fun b!2954683 () Bool)

(assert (=> b!2954683 (= e!1860554 call!195574)))

(declare-fun bm!195569 () Bool)

(assert (=> bm!195569 (= call!195572 (validRegex!3896 (ite c!483940 (regTwo!18839 lt!1032688) (regOne!18838 lt!1032688))))))

(declare-fun b!2954684 () Bool)

(assert (=> b!2954684 (= e!1860551 e!1860555)))

(declare-fun res!1219099 () Bool)

(assert (=> b!2954684 (= res!1219099 (not (nullable!2919 (reg!9492 lt!1032688))))))

(assert (=> b!2954684 (=> (not res!1219099) (not e!1860555))))

(assert (= (and d!841425 (not res!1219101)) b!2954679))

(assert (= (and b!2954679 c!483939) b!2954684))

(assert (= (and b!2954679 (not c!483939)) b!2954676))

(assert (= (and b!2954684 res!1219099) b!2954682))

(assert (= (and b!2954676 c!483940) b!2954680))

(assert (= (and b!2954676 (not c!483940)) b!2954678))

(assert (= (and b!2954680 res!1219102) b!2954677))

(assert (= (and b!2954678 (not res!1219100)) b!2954681))

(assert (= (and b!2954681 res!1219103) b!2954683))

(assert (= (or b!2954680 b!2954683) bm!195567))

(assert (= (or b!2954677 b!2954681) bm!195569))

(assert (= (or b!2954682 bm!195567) bm!195568))

(declare-fun m!3331381 () Bool)

(assert (=> bm!195568 m!3331381))

(declare-fun m!3331383 () Bool)

(assert (=> bm!195569 m!3331383))

(declare-fun m!3331385 () Bool)

(assert (=> b!2954684 m!3331385))

(assert (=> b!2954288 d!841425))

(declare-fun bm!195570 () Bool)

(declare-fun call!195577 () Bool)

(declare-fun call!195576 () Bool)

(assert (=> bm!195570 (= call!195577 call!195576)))

(declare-fun b!2954685 () Bool)

(declare-fun e!1860558 () Bool)

(declare-fun e!1860559 () Bool)

(assert (=> b!2954685 (= e!1860558 e!1860559)))

(declare-fun c!483942 () Bool)

(assert (=> b!2954685 (= c!483942 ((_ is Union!9163) r!17423))))

(declare-fun b!2954686 () Bool)

(declare-fun e!1860556 () Bool)

(declare-fun call!195575 () Bool)

(assert (=> b!2954686 (= e!1860556 call!195575)))

(declare-fun b!2954687 () Bool)

(declare-fun res!1219105 () Bool)

(declare-fun e!1860557 () Bool)

(assert (=> b!2954687 (=> res!1219105 e!1860557)))

(assert (=> b!2954687 (= res!1219105 (not ((_ is Concat!14484) r!17423)))))

(assert (=> b!2954687 (= e!1860559 e!1860557)))

(declare-fun d!841431 () Bool)

(declare-fun res!1219106 () Bool)

(declare-fun e!1860560 () Bool)

(assert (=> d!841431 (=> res!1219106 e!1860560)))

(assert (=> d!841431 (= res!1219106 ((_ is ElementMatch!9163) r!17423))))

(assert (=> d!841431 (= (validRegex!3896 r!17423) e!1860560)))

(declare-fun c!483941 () Bool)

(declare-fun bm!195571 () Bool)

(assert (=> bm!195571 (= call!195576 (validRegex!3896 (ite c!483941 (reg!9492 r!17423) (ite c!483942 (regOne!18839 r!17423) (regTwo!18838 r!17423)))))))

(declare-fun b!2954688 () Bool)

(assert (=> b!2954688 (= e!1860560 e!1860558)))

(assert (=> b!2954688 (= c!483941 ((_ is Star!9163) r!17423))))

(declare-fun b!2954689 () Bool)

(declare-fun res!1219107 () Bool)

(assert (=> b!2954689 (=> (not res!1219107) (not e!1860556))))

(assert (=> b!2954689 (= res!1219107 call!195577)))

(assert (=> b!2954689 (= e!1860559 e!1860556)))

(declare-fun b!2954690 () Bool)

(declare-fun e!1860561 () Bool)

(assert (=> b!2954690 (= e!1860557 e!1860561)))

(declare-fun res!1219108 () Bool)

(assert (=> b!2954690 (=> (not res!1219108) (not e!1860561))))

(assert (=> b!2954690 (= res!1219108 call!195575)))

(declare-fun b!2954691 () Bool)

(declare-fun e!1860562 () Bool)

(assert (=> b!2954691 (= e!1860562 call!195576)))

(declare-fun b!2954692 () Bool)

(assert (=> b!2954692 (= e!1860561 call!195577)))

(declare-fun bm!195572 () Bool)

(assert (=> bm!195572 (= call!195575 (validRegex!3896 (ite c!483942 (regTwo!18839 r!17423) (regOne!18838 r!17423))))))

(declare-fun b!2954693 () Bool)

(assert (=> b!2954693 (= e!1860558 e!1860562)))

(declare-fun res!1219104 () Bool)

(assert (=> b!2954693 (= res!1219104 (not (nullable!2919 (reg!9492 r!17423))))))

(assert (=> b!2954693 (=> (not res!1219104) (not e!1860562))))

(assert (= (and d!841431 (not res!1219106)) b!2954688))

(assert (= (and b!2954688 c!483941) b!2954693))

(assert (= (and b!2954688 (not c!483941)) b!2954685))

(assert (= (and b!2954693 res!1219104) b!2954691))

(assert (= (and b!2954685 c!483942) b!2954689))

(assert (= (and b!2954685 (not c!483942)) b!2954687))

(assert (= (and b!2954689 res!1219107) b!2954686))

(assert (= (and b!2954687 (not res!1219105)) b!2954690))

(assert (= (and b!2954690 res!1219108) b!2954692))

(assert (= (or b!2954689 b!2954692) bm!195570))

(assert (= (or b!2954686 b!2954690) bm!195572))

(assert (= (or b!2954691 bm!195570) bm!195571))

(declare-fun m!3331387 () Bool)

(assert (=> bm!195571 m!3331387))

(declare-fun m!3331389 () Bool)

(assert (=> bm!195572 m!3331389))

(declare-fun m!3331391 () Bool)

(assert (=> b!2954693 m!3331391))

(assert (=> start!286444 d!841431))

(declare-fun bs!525993 () Bool)

(declare-fun d!841433 () Bool)

(assert (= bs!525993 (and d!841433 b!2954294)))

(declare-fun lambda!110002 () Int)

(assert (=> bs!525993 (= lambda!110002 lambda!109973)))

(assert (=> bs!525993 (not (= lambda!110002 lambda!109974))))

(declare-fun bs!525994 () Bool)

(assert (= bs!525994 (and d!841433 b!2954462)))

(assert (=> bs!525994 (not (= lambda!110002 lambda!109985))))

(declare-fun bs!525995 () Bool)

(assert (= bs!525995 (and d!841433 b!2954464)))

(assert (=> bs!525995 (not (= lambda!110002 lambda!109986))))

(assert (=> d!841433 true))

(assert (=> d!841433 true))

(assert (=> d!841433 true))

(declare-fun lambda!110003 () Int)

(assert (=> bs!525995 (= (and (= lt!1032685 (regOne!18838 r!17423)) (= lt!1032688 (regTwo!18838 r!17423))) (= lambda!110003 lambda!109986))))

(assert (=> bs!525994 (not (= lambda!110003 lambda!109985))))

(assert (=> bs!525993 (= lambda!110003 lambda!109974)))

(assert (=> bs!525993 (not (= lambda!110003 lambda!109973))))

(declare-fun bs!525996 () Bool)

(assert (= bs!525996 d!841433))

(assert (=> bs!525996 (not (= lambda!110003 lambda!110002))))

(assert (=> d!841433 true))

(assert (=> d!841433 true))

(assert (=> d!841433 true))

(assert (=> d!841433 (= (Exists!1495 lambda!110002) (Exists!1495 lambda!110003))))

(declare-fun lt!1032751 () Unit!48705)

(declare-fun choose!17470 (Regex!9163 Regex!9163 List!35028) Unit!48705)

(assert (=> d!841433 (= lt!1032751 (choose!17470 lt!1032685 lt!1032688 s!11993))))

(assert (=> d!841433 (validRegex!3896 lt!1032685)))

(assert (=> d!841433 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!516 lt!1032685 lt!1032688 s!11993) lt!1032751)))

(declare-fun m!3331429 () Bool)

(assert (=> bs!525996 m!3331429))

(declare-fun m!3331431 () Bool)

(assert (=> bs!525996 m!3331431))

(declare-fun m!3331433 () Bool)

(assert (=> bs!525996 m!3331433))

(assert (=> bs!525996 m!3331217))

(assert (=> b!2954294 d!841433))

(declare-fun bm!195578 () Bool)

(declare-fun call!195585 () Bool)

(declare-fun call!195584 () Bool)

(assert (=> bm!195578 (= call!195585 call!195584)))

(declare-fun b!2954784 () Bool)

(declare-fun e!1860608 () Bool)

(declare-fun e!1860609 () Bool)

(assert (=> b!2954784 (= e!1860608 e!1860609)))

(declare-fun c!483956 () Bool)

(assert (=> b!2954784 (= c!483956 ((_ is Union!9163) lt!1032685))))

(declare-fun b!2954785 () Bool)

(declare-fun e!1860606 () Bool)

(declare-fun call!195583 () Bool)

(assert (=> b!2954785 (= e!1860606 call!195583)))

(declare-fun b!2954786 () Bool)

(declare-fun res!1219141 () Bool)

(declare-fun e!1860607 () Bool)

(assert (=> b!2954786 (=> res!1219141 e!1860607)))

(assert (=> b!2954786 (= res!1219141 (not ((_ is Concat!14484) lt!1032685)))))

(assert (=> b!2954786 (= e!1860609 e!1860607)))

(declare-fun d!841443 () Bool)

(declare-fun res!1219142 () Bool)

(declare-fun e!1860610 () Bool)

(assert (=> d!841443 (=> res!1219142 e!1860610)))

(assert (=> d!841443 (= res!1219142 ((_ is ElementMatch!9163) lt!1032685))))

(assert (=> d!841443 (= (validRegex!3896 lt!1032685) e!1860610)))

(declare-fun c!483955 () Bool)

(declare-fun bm!195579 () Bool)

(assert (=> bm!195579 (= call!195584 (validRegex!3896 (ite c!483955 (reg!9492 lt!1032685) (ite c!483956 (regOne!18839 lt!1032685) (regTwo!18838 lt!1032685)))))))

(declare-fun b!2954787 () Bool)

(assert (=> b!2954787 (= e!1860610 e!1860608)))

(assert (=> b!2954787 (= c!483955 ((_ is Star!9163) lt!1032685))))

(declare-fun b!2954788 () Bool)

(declare-fun res!1219143 () Bool)

(assert (=> b!2954788 (=> (not res!1219143) (not e!1860606))))

(assert (=> b!2954788 (= res!1219143 call!195585)))

(assert (=> b!2954788 (= e!1860609 e!1860606)))

(declare-fun b!2954789 () Bool)

(declare-fun e!1860611 () Bool)

(assert (=> b!2954789 (= e!1860607 e!1860611)))

(declare-fun res!1219144 () Bool)

(assert (=> b!2954789 (=> (not res!1219144) (not e!1860611))))

(assert (=> b!2954789 (= res!1219144 call!195583)))

(declare-fun b!2954790 () Bool)

(declare-fun e!1860612 () Bool)

(assert (=> b!2954790 (= e!1860612 call!195584)))

(declare-fun b!2954791 () Bool)

(assert (=> b!2954791 (= e!1860611 call!195585)))

(declare-fun bm!195580 () Bool)

(assert (=> bm!195580 (= call!195583 (validRegex!3896 (ite c!483956 (regTwo!18839 lt!1032685) (regOne!18838 lt!1032685))))))

(declare-fun b!2954792 () Bool)

(assert (=> b!2954792 (= e!1860608 e!1860612)))

(declare-fun res!1219140 () Bool)

(assert (=> b!2954792 (= res!1219140 (not (nullable!2919 (reg!9492 lt!1032685))))))

(assert (=> b!2954792 (=> (not res!1219140) (not e!1860612))))

(assert (= (and d!841443 (not res!1219142)) b!2954787))

(assert (= (and b!2954787 c!483955) b!2954792))

(assert (= (and b!2954787 (not c!483955)) b!2954784))

(assert (= (and b!2954792 res!1219140) b!2954790))

(assert (= (and b!2954784 c!483956) b!2954788))

(assert (= (and b!2954784 (not c!483956)) b!2954786))

(assert (= (and b!2954788 res!1219143) b!2954785))

(assert (= (and b!2954786 (not res!1219141)) b!2954789))

(assert (= (and b!2954789 res!1219144) b!2954791))

(assert (= (or b!2954788 b!2954791) bm!195578))

(assert (= (or b!2954785 b!2954789) bm!195580))

(assert (= (or b!2954790 bm!195578) bm!195579))

(declare-fun m!3331435 () Bool)

(assert (=> bm!195579 m!3331435))

(declare-fun m!3331437 () Bool)

(assert (=> bm!195580 m!3331437))

(declare-fun m!3331439 () Bool)

(assert (=> b!2954792 m!3331439))

(assert (=> b!2954294 d!841443))

(declare-fun d!841445 () Bool)

(declare-fun choose!17471 (Int) Bool)

(assert (=> d!841445 (= (Exists!1495 lambda!109973) (choose!17471 lambda!109973))))

(declare-fun bs!525997 () Bool)

(assert (= bs!525997 d!841445))

(declare-fun m!3331441 () Bool)

(assert (=> bs!525997 m!3331441))

(assert (=> b!2954294 d!841445))

(declare-fun b!2954811 () Bool)

(declare-fun res!1219159 () Bool)

(declare-fun e!1860627 () Bool)

(assert (=> b!2954811 (=> (not res!1219159) (not e!1860627))))

(declare-fun lt!1032758 () Option!6654)

(declare-fun get!10712 (Option!6654) tuple2!33844)

(assert (=> b!2954811 (= res!1219159 (matchR!4045 lt!1032685 (_1!20054 (get!10712 lt!1032758))))))

(declare-fun b!2954812 () Bool)

(declare-fun e!1860626 () Bool)

(assert (=> b!2954812 (= e!1860626 (matchR!4045 lt!1032688 s!11993))))

(declare-fun d!841447 () Bool)

(declare-fun e!1860625 () Bool)

(assert (=> d!841447 e!1860625))

(declare-fun res!1219156 () Bool)

(assert (=> d!841447 (=> res!1219156 e!1860625)))

(assert (=> d!841447 (= res!1219156 e!1860627)))

(declare-fun res!1219157 () Bool)

(assert (=> d!841447 (=> (not res!1219157) (not e!1860627))))

(assert (=> d!841447 (= res!1219157 (isDefined!5205 lt!1032758))))

(declare-fun e!1860623 () Option!6654)

(assert (=> d!841447 (= lt!1032758 e!1860623)))

(declare-fun c!483961 () Bool)

(assert (=> d!841447 (= c!483961 e!1860626)))

(declare-fun res!1219155 () Bool)

(assert (=> d!841447 (=> (not res!1219155) (not e!1860626))))

(assert (=> d!841447 (= res!1219155 (matchR!4045 lt!1032685 Nil!34904))))

(assert (=> d!841447 (validRegex!3896 lt!1032685)))

(assert (=> d!841447 (= (findConcatSeparation!1048 lt!1032685 lt!1032688 Nil!34904 s!11993 s!11993) lt!1032758)))

(declare-fun b!2954813 () Bool)

(assert (=> b!2954813 (= e!1860625 (not (isDefined!5205 lt!1032758)))))

(declare-fun b!2954814 () Bool)

(declare-fun lt!1032760 () Unit!48705)

(declare-fun lt!1032759 () Unit!48705)

(assert (=> b!2954814 (= lt!1032760 lt!1032759)))

(assert (=> b!2954814 (= (++!8330 (++!8330 Nil!34904 (Cons!34904 (h!40324 s!11993) Nil!34904)) (t!234093 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!953 (List!35028 C!18512 List!35028 List!35028) Unit!48705)

(assert (=> b!2954814 (= lt!1032759 (lemmaMoveElementToOtherListKeepsConcatEq!953 Nil!34904 (h!40324 s!11993) (t!234093 s!11993) s!11993))))

(declare-fun e!1860624 () Option!6654)

(assert (=> b!2954814 (= e!1860624 (findConcatSeparation!1048 lt!1032685 lt!1032688 (++!8330 Nil!34904 (Cons!34904 (h!40324 s!11993) Nil!34904)) (t!234093 s!11993) s!11993))))

(declare-fun b!2954815 () Bool)

(assert (=> b!2954815 (= e!1860624 None!6653)))

(declare-fun b!2954816 () Bool)

(assert (=> b!2954816 (= e!1860623 e!1860624)))

(declare-fun c!483962 () Bool)

(assert (=> b!2954816 (= c!483962 ((_ is Nil!34904) s!11993))))

(declare-fun b!2954817 () Bool)

(declare-fun res!1219158 () Bool)

(assert (=> b!2954817 (=> (not res!1219158) (not e!1860627))))

(assert (=> b!2954817 (= res!1219158 (matchR!4045 lt!1032688 (_2!20054 (get!10712 lt!1032758))))))

(declare-fun b!2954818 () Bool)

(assert (=> b!2954818 (= e!1860627 (= (++!8330 (_1!20054 (get!10712 lt!1032758)) (_2!20054 (get!10712 lt!1032758))) s!11993))))

(declare-fun b!2954819 () Bool)

(assert (=> b!2954819 (= e!1860623 (Some!6653 (tuple2!33845 Nil!34904 s!11993)))))

(assert (= (and d!841447 res!1219155) b!2954812))

(assert (= (and d!841447 c!483961) b!2954819))

(assert (= (and d!841447 (not c!483961)) b!2954816))

(assert (= (and b!2954816 c!483962) b!2954815))

(assert (= (and b!2954816 (not c!483962)) b!2954814))

(assert (= (and d!841447 res!1219157) b!2954811))

(assert (= (and b!2954811 res!1219159) b!2954817))

(assert (= (and b!2954817 res!1219158) b!2954818))

(assert (= (and d!841447 (not res!1219156)) b!2954813))

(declare-fun m!3331443 () Bool)

(assert (=> b!2954813 m!3331443))

(declare-fun m!3331445 () Bool)

(assert (=> b!2954812 m!3331445))

(declare-fun m!3331447 () Bool)

(assert (=> b!2954811 m!3331447))

(declare-fun m!3331449 () Bool)

(assert (=> b!2954811 m!3331449))

(assert (=> d!841447 m!3331443))

(declare-fun m!3331451 () Bool)

(assert (=> d!841447 m!3331451))

(assert (=> d!841447 m!3331217))

(assert (=> b!2954817 m!3331447))

(declare-fun m!3331453 () Bool)

(assert (=> b!2954817 m!3331453))

(assert (=> b!2954818 m!3331447))

(declare-fun m!3331455 () Bool)

(assert (=> b!2954818 m!3331455))

(declare-fun m!3331457 () Bool)

(assert (=> b!2954814 m!3331457))

(assert (=> b!2954814 m!3331457))

(declare-fun m!3331459 () Bool)

(assert (=> b!2954814 m!3331459))

(declare-fun m!3331461 () Bool)

(assert (=> b!2954814 m!3331461))

(assert (=> b!2954814 m!3331457))

(declare-fun m!3331463 () Bool)

(assert (=> b!2954814 m!3331463))

(assert (=> b!2954294 d!841447))

(declare-fun bs!525998 () Bool)

(declare-fun b!2954824 () Bool)

(assert (= bs!525998 (and b!2954824 b!2954464)))

(declare-fun lambda!110004 () Int)

(assert (=> bs!525998 (not (= lambda!110004 lambda!109986))))

(declare-fun bs!525999 () Bool)

(assert (= bs!525999 (and b!2954824 b!2954294)))

(assert (=> bs!525999 (not (= lambda!110004 lambda!109974))))

(assert (=> bs!525999 (not (= lambda!110004 lambda!109973))))

(declare-fun bs!526000 () Bool)

(assert (= bs!526000 (and b!2954824 d!841433)))

(assert (=> bs!526000 (not (= lambda!110004 lambda!110002))))

(assert (=> bs!526000 (not (= lambda!110004 lambda!110003))))

(declare-fun bs!526001 () Bool)

(assert (= bs!526001 (and b!2954824 b!2954462)))

(assert (=> bs!526001 (= (and (= (reg!9492 lt!1032683) (reg!9492 r!17423)) (= lt!1032683 r!17423)) (= lambda!110004 lambda!109985))))

(assert (=> b!2954824 true))

(assert (=> b!2954824 true))

(declare-fun bs!526002 () Bool)

(declare-fun b!2954826 () Bool)

(assert (= bs!526002 (and b!2954826 b!2954824)))

(declare-fun lambda!110005 () Int)

(assert (=> bs!526002 (not (= lambda!110005 lambda!110004))))

(declare-fun bs!526003 () Bool)

(assert (= bs!526003 (and b!2954826 b!2954464)))

(assert (=> bs!526003 (= (and (= (regOne!18838 lt!1032683) (regOne!18838 r!17423)) (= (regTwo!18838 lt!1032683) (regTwo!18838 r!17423))) (= lambda!110005 lambda!109986))))

(declare-fun bs!526004 () Bool)

(assert (= bs!526004 (and b!2954826 b!2954294)))

(assert (=> bs!526004 (= (and (= (regOne!18838 lt!1032683) lt!1032685) (= (regTwo!18838 lt!1032683) lt!1032688)) (= lambda!110005 lambda!109974))))

(assert (=> bs!526004 (not (= lambda!110005 lambda!109973))))

(declare-fun bs!526005 () Bool)

(assert (= bs!526005 (and b!2954826 d!841433)))

(assert (=> bs!526005 (not (= lambda!110005 lambda!110002))))

(assert (=> bs!526005 (= (and (= (regOne!18838 lt!1032683) lt!1032685) (= (regTwo!18838 lt!1032683) lt!1032688)) (= lambda!110005 lambda!110003))))

(declare-fun bs!526006 () Bool)

(assert (= bs!526006 (and b!2954826 b!2954462)))

(assert (=> bs!526006 (not (= lambda!110005 lambda!109985))))

(assert (=> b!2954826 true))

(assert (=> b!2954826 true))

(declare-fun bm!195581 () Bool)

(declare-fun call!195587 () Bool)

(assert (=> bm!195581 (= call!195587 (isEmpty!19176 s!11993))))

(declare-fun b!2954820 () Bool)

(declare-fun e!1860632 () Bool)

(assert (=> b!2954820 (= e!1860632 (matchRSpec!1300 (regTwo!18839 lt!1032683) s!11993))))

(declare-fun b!2954821 () Bool)

(declare-fun c!483964 () Bool)

(assert (=> b!2954821 (= c!483964 ((_ is ElementMatch!9163) lt!1032683))))

(declare-fun e!1860628 () Bool)

(declare-fun e!1860631 () Bool)

(assert (=> b!2954821 (= e!1860628 e!1860631)))

(declare-fun b!2954822 () Bool)

(declare-fun e!1860630 () Bool)

(assert (=> b!2954822 (= e!1860630 call!195587)))

(declare-fun b!2954823 () Bool)

(declare-fun res!1219162 () Bool)

(declare-fun e!1860629 () Bool)

(assert (=> b!2954823 (=> res!1219162 e!1860629)))

(assert (=> b!2954823 (= res!1219162 call!195587)))

(declare-fun e!1860633 () Bool)

(assert (=> b!2954823 (= e!1860633 e!1860629)))

(declare-fun call!195586 () Bool)

(assert (=> b!2954824 (= e!1860629 call!195586)))

(declare-fun d!841449 () Bool)

(declare-fun c!483966 () Bool)

(assert (=> d!841449 (= c!483966 ((_ is EmptyExpr!9163) lt!1032683))))

(assert (=> d!841449 (= (matchRSpec!1300 lt!1032683 s!11993) e!1860630)))

(declare-fun b!2954825 () Bool)

(declare-fun c!483963 () Bool)

(assert (=> b!2954825 (= c!483963 ((_ is Union!9163) lt!1032683))))

(declare-fun e!1860634 () Bool)

(assert (=> b!2954825 (= e!1860631 e!1860634)))

(assert (=> b!2954826 (= e!1860633 call!195586)))

(declare-fun b!2954827 () Bool)

(assert (=> b!2954827 (= e!1860631 (= s!11993 (Cons!34904 (c!483831 lt!1032683) Nil!34904)))))

(declare-fun b!2954828 () Bool)

(assert (=> b!2954828 (= e!1860634 e!1860633)))

(declare-fun c!483965 () Bool)

(assert (=> b!2954828 (= c!483965 ((_ is Star!9163) lt!1032683))))

(declare-fun b!2954829 () Bool)

(assert (=> b!2954829 (= e!1860630 e!1860628)))

(declare-fun res!1219161 () Bool)

(assert (=> b!2954829 (= res!1219161 (not ((_ is EmptyLang!9163) lt!1032683)))))

(assert (=> b!2954829 (=> (not res!1219161) (not e!1860628))))

(declare-fun bm!195582 () Bool)

(assert (=> bm!195582 (= call!195586 (Exists!1495 (ite c!483965 lambda!110004 lambda!110005)))))

(declare-fun b!2954830 () Bool)

(assert (=> b!2954830 (= e!1860634 e!1860632)))

(declare-fun res!1219160 () Bool)

(assert (=> b!2954830 (= res!1219160 (matchRSpec!1300 (regOne!18839 lt!1032683) s!11993))))

(assert (=> b!2954830 (=> res!1219160 e!1860632)))

(assert (= (and d!841449 c!483966) b!2954822))

(assert (= (and d!841449 (not c!483966)) b!2954829))

(assert (= (and b!2954829 res!1219161) b!2954821))

(assert (= (and b!2954821 c!483964) b!2954827))

(assert (= (and b!2954821 (not c!483964)) b!2954825))

(assert (= (and b!2954825 c!483963) b!2954830))

(assert (= (and b!2954825 (not c!483963)) b!2954828))

(assert (= (and b!2954830 (not res!1219160)) b!2954820))

(assert (= (and b!2954828 c!483965) b!2954823))

(assert (= (and b!2954828 (not c!483965)) b!2954826))

(assert (= (and b!2954823 (not res!1219162)) b!2954824))

(assert (= (or b!2954824 b!2954826) bm!195582))

(assert (= (or b!2954822 b!2954823) bm!195581))

(assert (=> bm!195581 m!3331195))

(declare-fun m!3331465 () Bool)

(assert (=> b!2954820 m!3331465))

(declare-fun m!3331467 () Bool)

(assert (=> bm!195582 m!3331467))

(declare-fun m!3331469 () Bool)

(assert (=> b!2954830 m!3331469))

(assert (=> b!2954294 d!841449))

(declare-fun d!841451 () Bool)

(assert (=> d!841451 (= (Exists!1495 lambda!109974) (choose!17471 lambda!109974))))

(declare-fun bs!526007 () Bool)

(assert (= bs!526007 d!841451))

(declare-fun m!3331471 () Bool)

(assert (=> bs!526007 m!3331471))

(assert (=> b!2954294 d!841451))

(declare-fun d!841453 () Bool)

(declare-fun isEmpty!19178 (Option!6654) Bool)

(assert (=> d!841453 (= (isDefined!5205 (findConcatSeparation!1048 lt!1032685 lt!1032688 Nil!34904 s!11993 s!11993)) (not (isEmpty!19178 (findConcatSeparation!1048 lt!1032685 lt!1032688 Nil!34904 s!11993 s!11993))))))

(declare-fun bs!526008 () Bool)

(assert (= bs!526008 d!841453))

(assert (=> bs!526008 m!3331215))

(declare-fun m!3331473 () Bool)

(assert (=> bs!526008 m!3331473))

(assert (=> b!2954294 d!841453))

(declare-fun d!841455 () Bool)

(assert (=> d!841455 (= (matchR!4045 lt!1032683 s!11993) (matchRSpec!1300 lt!1032683 s!11993))))

(declare-fun lt!1032761 () Unit!48705)

(assert (=> d!841455 (= lt!1032761 (choose!17466 lt!1032683 s!11993))))

(assert (=> d!841455 (validRegex!3896 lt!1032683)))

(assert (=> d!841455 (= (mainMatchTheorem!1300 lt!1032683 s!11993) lt!1032761)))

(declare-fun bs!526009 () Bool)

(assert (= bs!526009 d!841455))

(assert (=> bs!526009 m!3331199))

(assert (=> bs!526009 m!3331223))

(declare-fun m!3331475 () Bool)

(assert (=> bs!526009 m!3331475))

(declare-fun m!3331477 () Bool)

(assert (=> bs!526009 m!3331477))

(assert (=> b!2954294 d!841455))

(declare-fun bs!526010 () Bool)

(declare-fun d!841457 () Bool)

(assert (= bs!526010 (and d!841457 b!2954826)))

(declare-fun lambda!110008 () Int)

(assert (=> bs!526010 (not (= lambda!110008 lambda!110005))))

(declare-fun bs!526011 () Bool)

(assert (= bs!526011 (and d!841457 b!2954824)))

(assert (=> bs!526011 (not (= lambda!110008 lambda!110004))))

(declare-fun bs!526012 () Bool)

(assert (= bs!526012 (and d!841457 b!2954464)))

(assert (=> bs!526012 (not (= lambda!110008 lambda!109986))))

(declare-fun bs!526013 () Bool)

(assert (= bs!526013 (and d!841457 b!2954294)))

(assert (=> bs!526013 (not (= lambda!110008 lambda!109974))))

(assert (=> bs!526013 (= lambda!110008 lambda!109973)))

(declare-fun bs!526014 () Bool)

(assert (= bs!526014 (and d!841457 d!841433)))

(assert (=> bs!526014 (= lambda!110008 lambda!110002)))

(assert (=> bs!526014 (not (= lambda!110008 lambda!110003))))

(declare-fun bs!526015 () Bool)

(assert (= bs!526015 (and d!841457 b!2954462)))

(assert (=> bs!526015 (not (= lambda!110008 lambda!109985))))

(assert (=> d!841457 true))

(assert (=> d!841457 true))

(assert (=> d!841457 true))

(assert (=> d!841457 (= (isDefined!5205 (findConcatSeparation!1048 lt!1032685 lt!1032688 Nil!34904 s!11993 s!11993)) (Exists!1495 lambda!110008))))

(declare-fun lt!1032764 () Unit!48705)

(declare-fun choose!17472 (Regex!9163 Regex!9163 List!35028) Unit!48705)

(assert (=> d!841457 (= lt!1032764 (choose!17472 lt!1032685 lt!1032688 s!11993))))

(assert (=> d!841457 (validRegex!3896 lt!1032685)))

(assert (=> d!841457 (= (lemmaFindConcatSeparationEquivalentToExists!826 lt!1032685 lt!1032688 s!11993) lt!1032764)))

(declare-fun bs!526016 () Bool)

(assert (= bs!526016 d!841457))

(declare-fun m!3331479 () Bool)

(assert (=> bs!526016 m!3331479))

(assert (=> bs!526016 m!3331217))

(declare-fun m!3331481 () Bool)

(assert (=> bs!526016 m!3331481))

(assert (=> bs!526016 m!3331215))

(assert (=> bs!526016 m!3331219))

(assert (=> bs!526016 m!3331215))

(assert (=> b!2954294 d!841457))

(declare-fun d!841459 () Bool)

(assert (=> d!841459 (= (isEmptyLang!285 lt!1032688) ((_ is EmptyLang!9163) lt!1032688))))

(assert (=> b!2954283 d!841459))

(declare-fun d!841461 () Bool)

(assert (=> d!841461 (= (isEmpty!19176 s!11993) ((_ is Nil!34904) s!11993))))

(assert (=> b!2954284 d!841461))

(declare-fun d!841463 () Bool)

(assert (=> d!841463 (= (isEmptyExpr!366 lt!1032688) ((_ is EmptyExpr!9163) lt!1032688))))

(assert (=> b!2954289 d!841463))

(declare-fun b!2954835 () Bool)

(declare-fun e!1860638 () Bool)

(assert (=> b!2954835 (= e!1860638 (= (head!6580 s!11993) (c!483831 lt!1032683)))))

(declare-fun b!2954836 () Bool)

(declare-fun e!1860641 () Bool)

(declare-fun e!1860639 () Bool)

(assert (=> b!2954836 (= e!1860641 e!1860639)))

(declare-fun c!483969 () Bool)

(assert (=> b!2954836 (= c!483969 ((_ is EmptyLang!9163) lt!1032683))))

(declare-fun b!2954837 () Bool)

(declare-fun res!1219170 () Bool)

(assert (=> b!2954837 (=> (not res!1219170) (not e!1860638))))

(assert (=> b!2954837 (= res!1219170 (isEmpty!19176 (tail!4806 s!11993)))))

(declare-fun b!2954838 () Bool)

(declare-fun e!1860643 () Bool)

(assert (=> b!2954838 (= e!1860643 (matchR!4045 (derivativeStep!2521 lt!1032683 (head!6580 s!11993)) (tail!4806 s!11993)))))

(declare-fun b!2954839 () Bool)

(declare-fun e!1860640 () Bool)

(declare-fun e!1860637 () Bool)

(assert (=> b!2954839 (= e!1860640 e!1860637)))

(declare-fun res!1219174 () Bool)

(assert (=> b!2954839 (=> (not res!1219174) (not e!1860637))))

(declare-fun lt!1032765 () Bool)

(assert (=> b!2954839 (= res!1219174 (not lt!1032765))))

(declare-fun b!2954840 () Bool)

(declare-fun call!195588 () Bool)

(assert (=> b!2954840 (= e!1860641 (= lt!1032765 call!195588))))

(declare-fun b!2954841 () Bool)

(assert (=> b!2954841 (= e!1860639 (not lt!1032765))))

(declare-fun b!2954842 () Bool)

(declare-fun res!1219172 () Bool)

(assert (=> b!2954842 (=> res!1219172 e!1860640)))

(assert (=> b!2954842 (= res!1219172 e!1860638)))

(declare-fun res!1219167 () Bool)

(assert (=> b!2954842 (=> (not res!1219167) (not e!1860638))))

(assert (=> b!2954842 (= res!1219167 lt!1032765)))

(declare-fun b!2954843 () Bool)

(declare-fun e!1860642 () Bool)

(assert (=> b!2954843 (= e!1860637 e!1860642)))

(declare-fun res!1219168 () Bool)

(assert (=> b!2954843 (=> res!1219168 e!1860642)))

(assert (=> b!2954843 (= res!1219168 call!195588)))

(declare-fun bm!195583 () Bool)

(assert (=> bm!195583 (= call!195588 (isEmpty!19176 s!11993))))

(declare-fun b!2954844 () Bool)

(assert (=> b!2954844 (= e!1860642 (not (= (head!6580 s!11993) (c!483831 lt!1032683))))))

(declare-fun b!2954845 () Bool)

(declare-fun res!1219171 () Bool)

(assert (=> b!2954845 (=> res!1219171 e!1860640)))

(assert (=> b!2954845 (= res!1219171 (not ((_ is ElementMatch!9163) lt!1032683)))))

(assert (=> b!2954845 (= e!1860639 e!1860640)))

(declare-fun b!2954846 () Bool)

(assert (=> b!2954846 (= e!1860643 (nullable!2919 lt!1032683))))

(declare-fun b!2954847 () Bool)

(declare-fun res!1219169 () Bool)

(assert (=> b!2954847 (=> res!1219169 e!1860642)))

(assert (=> b!2954847 (= res!1219169 (not (isEmpty!19176 (tail!4806 s!11993))))))

(declare-fun d!841465 () Bool)

(assert (=> d!841465 e!1860641))

(declare-fun c!483967 () Bool)

(assert (=> d!841465 (= c!483967 ((_ is EmptyExpr!9163) lt!1032683))))

(assert (=> d!841465 (= lt!1032765 e!1860643)))

(declare-fun c!483968 () Bool)

(assert (=> d!841465 (= c!483968 (isEmpty!19176 s!11993))))

(assert (=> d!841465 (validRegex!3896 lt!1032683)))

(assert (=> d!841465 (= (matchR!4045 lt!1032683 s!11993) lt!1032765)))

(declare-fun b!2954848 () Bool)

(declare-fun res!1219173 () Bool)

(assert (=> b!2954848 (=> (not res!1219173) (not e!1860638))))

(assert (=> b!2954848 (= res!1219173 (not call!195588))))

(assert (= (and d!841465 c!483968) b!2954846))

(assert (= (and d!841465 (not c!483968)) b!2954838))

(assert (= (and d!841465 c!483967) b!2954840))

(assert (= (and d!841465 (not c!483967)) b!2954836))

(assert (= (and b!2954836 c!483969) b!2954841))

(assert (= (and b!2954836 (not c!483969)) b!2954845))

(assert (= (and b!2954845 (not res!1219171)) b!2954842))

(assert (= (and b!2954842 res!1219167) b!2954848))

(assert (= (and b!2954848 res!1219173) b!2954837))

(assert (= (and b!2954837 res!1219170) b!2954835))

(assert (= (and b!2954842 (not res!1219172)) b!2954839))

(assert (= (and b!2954839 res!1219174) b!2954843))

(assert (= (and b!2954843 (not res!1219168)) b!2954847))

(assert (= (and b!2954847 (not res!1219169)) b!2954844))

(assert (= (or b!2954840 b!2954843 b!2954848) bm!195583))

(assert (=> b!2954835 m!3331355))

(assert (=> b!2954837 m!3331357))

(assert (=> b!2954837 m!3331357))

(assert (=> b!2954837 m!3331359))

(declare-fun m!3331483 () Bool)

(assert (=> b!2954846 m!3331483))

(assert (=> bm!195583 m!3331195))

(assert (=> b!2954844 m!3331355))

(assert (=> d!841465 m!3331195))

(assert (=> d!841465 m!3331477))

(assert (=> b!2954847 m!3331357))

(assert (=> b!2954847 m!3331357))

(assert (=> b!2954847 m!3331359))

(assert (=> b!2954838 m!3331355))

(assert (=> b!2954838 m!3331355))

(declare-fun m!3331485 () Bool)

(assert (=> b!2954838 m!3331485))

(assert (=> b!2954838 m!3331357))

(assert (=> b!2954838 m!3331485))

(assert (=> b!2954838 m!3331357))

(declare-fun m!3331487 () Bool)

(assert (=> b!2954838 m!3331487))

(assert (=> b!2954290 d!841465))

(declare-fun d!841467 () Bool)

(assert (=> d!841467 (= (isEmptyExpr!366 lt!1032685) ((_ is EmptyExpr!9163) lt!1032685))))

(assert (=> b!2954296 d!841467))

(declare-fun d!841469 () Bool)

(assert (=> d!841469 (= (isEmptyLang!285 lt!1032685) ((_ is EmptyLang!9163) lt!1032685))))

(assert (=> b!2954285 d!841469))

(declare-fun b!2954899 () Bool)

(declare-fun e!1860680 () Regex!9163)

(declare-fun lt!1032779 () Regex!9163)

(declare-fun lt!1032780 () Regex!9163)

(assert (=> b!2954899 (= e!1860680 (Concat!14484 lt!1032779 lt!1032780))))

(declare-fun b!2954900 () Bool)

(declare-fun c!483992 () Bool)

(assert (=> b!2954900 (= c!483992 ((_ is Union!9163) (regTwo!18838 r!17423)))))

(declare-fun e!1860684 () Regex!9163)

(declare-fun e!1860675 () Regex!9163)

(assert (=> b!2954900 (= e!1860684 e!1860675)))

(declare-fun b!2954901 () Bool)

(declare-fun e!1860683 () Regex!9163)

(assert (=> b!2954901 (= e!1860683 lt!1032780)))

(declare-fun b!2954902 () Bool)

(declare-fun e!1860676 () Bool)

(declare-fun call!195603 () Bool)

(assert (=> b!2954902 (= e!1860676 call!195603)))

(declare-fun d!841471 () Bool)

(declare-fun e!1860681 () Bool)

(assert (=> d!841471 e!1860681))

(declare-fun res!1219181 () Bool)

(assert (=> d!841471 (=> (not res!1219181) (not e!1860681))))

(declare-fun lt!1032783 () Regex!9163)

(assert (=> d!841471 (= res!1219181 (validRegex!3896 lt!1032783))))

(declare-fun e!1860672 () Regex!9163)

(assert (=> d!841471 (= lt!1032783 e!1860672)))

(declare-fun c!483998 () Bool)

(assert (=> d!841471 (= c!483998 ((_ is EmptyLang!9163) (regTwo!18838 r!17423)))))

(assert (=> d!841471 (validRegex!3896 (regTwo!18838 r!17423))))

(assert (=> d!841471 (= (simplify!168 (regTwo!18838 r!17423)) lt!1032783)))

(declare-fun lt!1032778 () Regex!9163)

(declare-fun call!195604 () Bool)

(declare-fun lt!1032782 () Regex!9163)

(declare-fun bm!195598 () Bool)

(declare-fun c!483996 () Bool)

(assert (=> bm!195598 (= call!195604 (isEmptyLang!285 (ite c!483996 lt!1032782 (ite c!483992 lt!1032778 lt!1032779))))))

(declare-fun b!2954903 () Bool)

(declare-fun e!1860673 () Regex!9163)

(assert (=> b!2954903 (= e!1860673 lt!1032778)))

(declare-fun b!2954904 () Bool)

(declare-fun e!1860678 () Regex!9163)

(declare-fun lt!1032781 () Regex!9163)

(assert (=> b!2954904 (= e!1860678 (Union!9163 lt!1032781 lt!1032778))))

(declare-fun b!2954905 () Bool)

(assert (=> b!2954905 (= e!1860672 EmptyLang!9163)))

(declare-fun b!2954906 () Bool)

(declare-fun e!1860674 () Regex!9163)

(assert (=> b!2954906 (= e!1860675 e!1860674)))

(declare-fun call!195607 () Regex!9163)

(assert (=> b!2954906 (= lt!1032779 call!195607)))

(declare-fun call!195608 () Regex!9163)

(assert (=> b!2954906 (= lt!1032780 call!195608)))

(declare-fun res!1219182 () Bool)

(declare-fun call!195605 () Bool)

(assert (=> b!2954906 (= res!1219182 call!195605)))

(assert (=> b!2954906 (=> res!1219182 e!1860676)))

(declare-fun c!483999 () Bool)

(assert (=> b!2954906 (= c!483999 e!1860676)))

(declare-fun bm!195599 () Bool)

(assert (=> bm!195599 (= call!195607 (simplify!168 (ite c!483992 (regTwo!18839 (regTwo!18838 r!17423)) (regOne!18838 (regTwo!18838 r!17423)))))))

(declare-fun b!2954907 () Bool)

(assert (=> b!2954907 (= e!1860674 EmptyLang!9163)))

(declare-fun b!2954908 () Bool)

(declare-fun e!1860682 () Regex!9163)

(assert (=> b!2954908 (= e!1860672 e!1860682)))

(declare-fun c!483997 () Bool)

(assert (=> b!2954908 (= c!483997 ((_ is ElementMatch!9163) (regTwo!18838 r!17423)))))

(declare-fun bm!195600 () Bool)

(declare-fun call!195606 () Regex!9163)

(assert (=> bm!195600 (= call!195608 call!195606)))

(declare-fun b!2954909 () Bool)

(assert (=> b!2954909 (= e!1860680 lt!1032779)))

(declare-fun b!2954910 () Bool)

(assert (=> b!2954910 (= e!1860678 lt!1032781)))

(declare-fun b!2954911 () Bool)

(declare-fun e!1860677 () Regex!9163)

(assert (=> b!2954911 (= e!1860677 e!1860684)))

(assert (=> b!2954911 (= c!483996 ((_ is Star!9163) (regTwo!18838 r!17423)))))

(declare-fun bm!195601 () Bool)

(assert (=> bm!195601 (= call!195605 call!195604)))

(declare-fun b!2954912 () Bool)

(declare-fun e!1860685 () Bool)

(declare-fun call!195609 () Bool)

(assert (=> b!2954912 (= e!1860685 call!195609)))

(declare-fun b!2954913 () Bool)

(declare-fun e!1860679 () Regex!9163)

(assert (=> b!2954913 (= e!1860679 EmptyExpr!9163)))

(declare-fun b!2954914 () Bool)

(declare-fun c!483995 () Bool)

(assert (=> b!2954914 (= c!483995 ((_ is EmptyExpr!9163) (regTwo!18838 r!17423)))))

(assert (=> b!2954914 (= e!1860682 e!1860677)))

(declare-fun bm!195602 () Bool)

(assert (=> bm!195602 (= call!195606 (simplify!168 (ite c!483996 (reg!9492 (regTwo!18838 r!17423)) (ite c!483992 (regOne!18839 (regTwo!18838 r!17423)) (regTwo!18838 (regTwo!18838 r!17423))))))))

(declare-fun b!2954915 () Bool)

(declare-fun c!483993 () Bool)

(assert (=> b!2954915 (= c!483993 call!195609)))

(assert (=> b!2954915 (= e!1860674 e!1860683)))

(declare-fun b!2954916 () Bool)

(assert (=> b!2954916 (= e!1860675 e!1860673)))

(assert (=> b!2954916 (= lt!1032781 call!195608)))

(assert (=> b!2954916 (= lt!1032778 call!195607)))

(declare-fun c!484001 () Bool)

(assert (=> b!2954916 (= c!484001 call!195603)))

(declare-fun b!2954917 () Bool)

(declare-fun c!484000 () Bool)

(assert (=> b!2954917 (= c!484000 e!1860685)))

(declare-fun res!1219183 () Bool)

(assert (=> b!2954917 (=> res!1219183 e!1860685)))

(assert (=> b!2954917 (= res!1219183 call!195604)))

(assert (=> b!2954917 (= lt!1032782 call!195606)))

(assert (=> b!2954917 (= e!1860684 e!1860679)))

(declare-fun b!2954918 () Bool)

(assert (=> b!2954918 (= e!1860677 EmptyExpr!9163)))

(declare-fun bm!195603 () Bool)

(assert (=> bm!195603 (= call!195603 (isEmptyLang!285 (ite c!483992 lt!1032781 lt!1032780)))))

(declare-fun b!2954919 () Bool)

(assert (=> b!2954919 (= e!1860679 (Star!9163 lt!1032782))))

(declare-fun b!2954920 () Bool)

(assert (=> b!2954920 (= e!1860683 e!1860680)))

(declare-fun c!483994 () Bool)

(assert (=> b!2954920 (= c!483994 (isEmptyExpr!366 lt!1032780))))

(declare-fun bm!195604 () Bool)

(assert (=> bm!195604 (= call!195609 (isEmptyExpr!366 (ite c!483996 lt!1032782 lt!1032779)))))

(declare-fun b!2954921 () Bool)

(assert (=> b!2954921 (= e!1860681 (= (nullable!2919 lt!1032783) (nullable!2919 (regTwo!18838 r!17423))))))

(declare-fun b!2954922 () Bool)

(declare-fun c!484002 () Bool)

(assert (=> b!2954922 (= c!484002 call!195605)))

(assert (=> b!2954922 (= e!1860673 e!1860678)))

(declare-fun b!2954923 () Bool)

(assert (=> b!2954923 (= e!1860682 (regTwo!18838 r!17423))))

(assert (= (and d!841471 c!483998) b!2954905))

(assert (= (and d!841471 (not c!483998)) b!2954908))

(assert (= (and b!2954908 c!483997) b!2954923))

(assert (= (and b!2954908 (not c!483997)) b!2954914))

(assert (= (and b!2954914 c!483995) b!2954918))

(assert (= (and b!2954914 (not c!483995)) b!2954911))

(assert (= (and b!2954911 c!483996) b!2954917))

(assert (= (and b!2954911 (not c!483996)) b!2954900))

(assert (= (and b!2954917 (not res!1219183)) b!2954912))

(assert (= (and b!2954917 c!484000) b!2954913))

(assert (= (and b!2954917 (not c!484000)) b!2954919))

(assert (= (and b!2954900 c!483992) b!2954916))

(assert (= (and b!2954900 (not c!483992)) b!2954906))

(assert (= (and b!2954916 c!484001) b!2954903))

(assert (= (and b!2954916 (not c!484001)) b!2954922))

(assert (= (and b!2954922 c!484002) b!2954910))

(assert (= (and b!2954922 (not c!484002)) b!2954904))

(assert (= (and b!2954906 (not res!1219182)) b!2954902))

(assert (= (and b!2954906 c!483999) b!2954907))

(assert (= (and b!2954906 (not c!483999)) b!2954915))

(assert (= (and b!2954915 c!483993) b!2954901))

(assert (= (and b!2954915 (not c!483993)) b!2954920))

(assert (= (and b!2954920 c!483994) b!2954909))

(assert (= (and b!2954920 (not c!483994)) b!2954899))

(assert (= (or b!2954916 b!2954906) bm!195600))

(assert (= (or b!2954916 b!2954906) bm!195599))

(assert (= (or b!2954922 b!2954906) bm!195601))

(assert (= (or b!2954916 b!2954902) bm!195603))

(assert (= (or b!2954912 b!2954915) bm!195604))

(assert (= (or b!2954917 bm!195600) bm!195602))

(assert (= (or b!2954917 bm!195601) bm!195598))

(assert (= (and d!841471 res!1219181) b!2954921))

(declare-fun m!3331489 () Bool)

(assert (=> d!841471 m!3331489))

(declare-fun m!3331491 () Bool)

(assert (=> d!841471 m!3331491))

(declare-fun m!3331493 () Bool)

(assert (=> bm!195602 m!3331493))

(declare-fun m!3331495 () Bool)

(assert (=> bm!195598 m!3331495))

(declare-fun m!3331497 () Bool)

(assert (=> bm!195604 m!3331497))

(declare-fun m!3331499 () Bool)

(assert (=> b!2954921 m!3331499))

(declare-fun m!3331501 () Bool)

(assert (=> b!2954921 m!3331501))

(declare-fun m!3331503 () Bool)

(assert (=> bm!195599 m!3331503))

(declare-fun m!3331505 () Bool)

(assert (=> bm!195603 m!3331505))

(declare-fun m!3331507 () Bool)

(assert (=> b!2954920 m!3331507))

(assert (=> b!2954285 d!841471))

(declare-fun b!2954924 () Bool)

(declare-fun e!1860694 () Regex!9163)

(declare-fun lt!1032785 () Regex!9163)

(declare-fun lt!1032786 () Regex!9163)

(assert (=> b!2954924 (= e!1860694 (Concat!14484 lt!1032785 lt!1032786))))

(declare-fun b!2954925 () Bool)

(declare-fun c!484003 () Bool)

(assert (=> b!2954925 (= c!484003 ((_ is Union!9163) (regOne!18838 r!17423)))))

(declare-fun e!1860698 () Regex!9163)

(declare-fun e!1860689 () Regex!9163)

(assert (=> b!2954925 (= e!1860698 e!1860689)))

(declare-fun b!2954926 () Bool)

(declare-fun e!1860697 () Regex!9163)

(assert (=> b!2954926 (= e!1860697 lt!1032786)))

(declare-fun b!2954927 () Bool)

(declare-fun e!1860690 () Bool)

(declare-fun call!195610 () Bool)

(assert (=> b!2954927 (= e!1860690 call!195610)))

(declare-fun d!841473 () Bool)

(declare-fun e!1860695 () Bool)

(assert (=> d!841473 e!1860695))

(declare-fun res!1219184 () Bool)

(assert (=> d!841473 (=> (not res!1219184) (not e!1860695))))

(declare-fun lt!1032789 () Regex!9163)

(assert (=> d!841473 (= res!1219184 (validRegex!3896 lt!1032789))))

(declare-fun e!1860686 () Regex!9163)

(assert (=> d!841473 (= lt!1032789 e!1860686)))

(declare-fun c!484009 () Bool)

(assert (=> d!841473 (= c!484009 ((_ is EmptyLang!9163) (regOne!18838 r!17423)))))

(assert (=> d!841473 (validRegex!3896 (regOne!18838 r!17423))))

(assert (=> d!841473 (= (simplify!168 (regOne!18838 r!17423)) lt!1032789)))

(declare-fun c!484007 () Bool)

(declare-fun bm!195605 () Bool)

(declare-fun lt!1032788 () Regex!9163)

(declare-fun lt!1032784 () Regex!9163)

(declare-fun call!195611 () Bool)

(assert (=> bm!195605 (= call!195611 (isEmptyLang!285 (ite c!484007 lt!1032788 (ite c!484003 lt!1032784 lt!1032785))))))

(declare-fun b!2954928 () Bool)

(declare-fun e!1860687 () Regex!9163)

(assert (=> b!2954928 (= e!1860687 lt!1032784)))

(declare-fun b!2954929 () Bool)

(declare-fun e!1860692 () Regex!9163)

(declare-fun lt!1032787 () Regex!9163)

(assert (=> b!2954929 (= e!1860692 (Union!9163 lt!1032787 lt!1032784))))

(declare-fun b!2954930 () Bool)

(assert (=> b!2954930 (= e!1860686 EmptyLang!9163)))

(declare-fun b!2954931 () Bool)

(declare-fun e!1860688 () Regex!9163)

(assert (=> b!2954931 (= e!1860689 e!1860688)))

(declare-fun call!195614 () Regex!9163)

(assert (=> b!2954931 (= lt!1032785 call!195614)))

(declare-fun call!195615 () Regex!9163)

(assert (=> b!2954931 (= lt!1032786 call!195615)))

(declare-fun res!1219185 () Bool)

(declare-fun call!195612 () Bool)

(assert (=> b!2954931 (= res!1219185 call!195612)))

(assert (=> b!2954931 (=> res!1219185 e!1860690)))

(declare-fun c!484010 () Bool)

(assert (=> b!2954931 (= c!484010 e!1860690)))

(declare-fun bm!195606 () Bool)

(assert (=> bm!195606 (= call!195614 (simplify!168 (ite c!484003 (regTwo!18839 (regOne!18838 r!17423)) (regOne!18838 (regOne!18838 r!17423)))))))

(declare-fun b!2954932 () Bool)

(assert (=> b!2954932 (= e!1860688 EmptyLang!9163)))

(declare-fun b!2954933 () Bool)

(declare-fun e!1860696 () Regex!9163)

(assert (=> b!2954933 (= e!1860686 e!1860696)))

(declare-fun c!484008 () Bool)

(assert (=> b!2954933 (= c!484008 ((_ is ElementMatch!9163) (regOne!18838 r!17423)))))

(declare-fun bm!195607 () Bool)

(declare-fun call!195613 () Regex!9163)

(assert (=> bm!195607 (= call!195615 call!195613)))

(declare-fun b!2954934 () Bool)

(assert (=> b!2954934 (= e!1860694 lt!1032785)))

(declare-fun b!2954935 () Bool)

(assert (=> b!2954935 (= e!1860692 lt!1032787)))

(declare-fun b!2954936 () Bool)

(declare-fun e!1860691 () Regex!9163)

(assert (=> b!2954936 (= e!1860691 e!1860698)))

(assert (=> b!2954936 (= c!484007 ((_ is Star!9163) (regOne!18838 r!17423)))))

(declare-fun bm!195608 () Bool)

(assert (=> bm!195608 (= call!195612 call!195611)))

(declare-fun b!2954937 () Bool)

(declare-fun e!1860699 () Bool)

(declare-fun call!195616 () Bool)

(assert (=> b!2954937 (= e!1860699 call!195616)))

(declare-fun b!2954938 () Bool)

(declare-fun e!1860693 () Regex!9163)

(assert (=> b!2954938 (= e!1860693 EmptyExpr!9163)))

(declare-fun b!2954939 () Bool)

(declare-fun c!484006 () Bool)

(assert (=> b!2954939 (= c!484006 ((_ is EmptyExpr!9163) (regOne!18838 r!17423)))))

(assert (=> b!2954939 (= e!1860696 e!1860691)))

(declare-fun bm!195609 () Bool)

(assert (=> bm!195609 (= call!195613 (simplify!168 (ite c!484007 (reg!9492 (regOne!18838 r!17423)) (ite c!484003 (regOne!18839 (regOne!18838 r!17423)) (regTwo!18838 (regOne!18838 r!17423))))))))

(declare-fun b!2954940 () Bool)

(declare-fun c!484004 () Bool)

(assert (=> b!2954940 (= c!484004 call!195616)))

(assert (=> b!2954940 (= e!1860688 e!1860697)))

(declare-fun b!2954941 () Bool)

(assert (=> b!2954941 (= e!1860689 e!1860687)))

(assert (=> b!2954941 (= lt!1032787 call!195615)))

(assert (=> b!2954941 (= lt!1032784 call!195614)))

(declare-fun c!484012 () Bool)

(assert (=> b!2954941 (= c!484012 call!195610)))

(declare-fun b!2954942 () Bool)

(declare-fun c!484011 () Bool)

(assert (=> b!2954942 (= c!484011 e!1860699)))

(declare-fun res!1219186 () Bool)

(assert (=> b!2954942 (=> res!1219186 e!1860699)))

(assert (=> b!2954942 (= res!1219186 call!195611)))

(assert (=> b!2954942 (= lt!1032788 call!195613)))

(assert (=> b!2954942 (= e!1860698 e!1860693)))

(declare-fun b!2954943 () Bool)

(assert (=> b!2954943 (= e!1860691 EmptyExpr!9163)))

(declare-fun bm!195610 () Bool)

(assert (=> bm!195610 (= call!195610 (isEmptyLang!285 (ite c!484003 lt!1032787 lt!1032786)))))

(declare-fun b!2954944 () Bool)

(assert (=> b!2954944 (= e!1860693 (Star!9163 lt!1032788))))

(declare-fun b!2954945 () Bool)

(assert (=> b!2954945 (= e!1860697 e!1860694)))

(declare-fun c!484005 () Bool)

(assert (=> b!2954945 (= c!484005 (isEmptyExpr!366 lt!1032786))))

(declare-fun bm!195611 () Bool)

(assert (=> bm!195611 (= call!195616 (isEmptyExpr!366 (ite c!484007 lt!1032788 lt!1032785)))))

(declare-fun b!2954946 () Bool)

(assert (=> b!2954946 (= e!1860695 (= (nullable!2919 lt!1032789) (nullable!2919 (regOne!18838 r!17423))))))

(declare-fun b!2954947 () Bool)

(declare-fun c!484013 () Bool)

(assert (=> b!2954947 (= c!484013 call!195612)))

(assert (=> b!2954947 (= e!1860687 e!1860692)))

(declare-fun b!2954948 () Bool)

(assert (=> b!2954948 (= e!1860696 (regOne!18838 r!17423))))

(assert (= (and d!841473 c!484009) b!2954930))

(assert (= (and d!841473 (not c!484009)) b!2954933))

(assert (= (and b!2954933 c!484008) b!2954948))

(assert (= (and b!2954933 (not c!484008)) b!2954939))

(assert (= (and b!2954939 c!484006) b!2954943))

(assert (= (and b!2954939 (not c!484006)) b!2954936))

(assert (= (and b!2954936 c!484007) b!2954942))

(assert (= (and b!2954936 (not c!484007)) b!2954925))

(assert (= (and b!2954942 (not res!1219186)) b!2954937))

(assert (= (and b!2954942 c!484011) b!2954938))

(assert (= (and b!2954942 (not c!484011)) b!2954944))

(assert (= (and b!2954925 c!484003) b!2954941))

(assert (= (and b!2954925 (not c!484003)) b!2954931))

(assert (= (and b!2954941 c!484012) b!2954928))

(assert (= (and b!2954941 (not c!484012)) b!2954947))

(assert (= (and b!2954947 c!484013) b!2954935))

(assert (= (and b!2954947 (not c!484013)) b!2954929))

(assert (= (and b!2954931 (not res!1219185)) b!2954927))

(assert (= (and b!2954931 c!484010) b!2954932))

(assert (= (and b!2954931 (not c!484010)) b!2954940))

(assert (= (and b!2954940 c!484004) b!2954926))

(assert (= (and b!2954940 (not c!484004)) b!2954945))

(assert (= (and b!2954945 c!484005) b!2954934))

(assert (= (and b!2954945 (not c!484005)) b!2954924))

(assert (= (or b!2954941 b!2954931) bm!195607))

(assert (= (or b!2954941 b!2954931) bm!195606))

(assert (= (or b!2954947 b!2954931) bm!195608))

(assert (= (or b!2954941 b!2954927) bm!195610))

(assert (= (or b!2954937 b!2954940) bm!195611))

(assert (= (or b!2954942 bm!195607) bm!195609))

(assert (= (or b!2954942 bm!195608) bm!195605))

(assert (= (and d!841473 res!1219184) b!2954946))

(declare-fun m!3331509 () Bool)

(assert (=> d!841473 m!3331509))

(declare-fun m!3331511 () Bool)

(assert (=> d!841473 m!3331511))

(declare-fun m!3331513 () Bool)

(assert (=> bm!195609 m!3331513))

(declare-fun m!3331515 () Bool)

(assert (=> bm!195605 m!3331515))

(declare-fun m!3331517 () Bool)

(assert (=> bm!195611 m!3331517))

(declare-fun m!3331519 () Bool)

(assert (=> b!2954946 m!3331519))

(declare-fun m!3331521 () Bool)

(assert (=> b!2954946 m!3331521))

(declare-fun m!3331523 () Bool)

(assert (=> bm!195606 m!3331523))

(declare-fun m!3331525 () Bool)

(assert (=> bm!195610 m!3331525))

(declare-fun m!3331527 () Bool)

(assert (=> b!2954945 m!3331527))

(assert (=> b!2954285 d!841473))

(declare-fun e!1860702 () Bool)

(assert (=> b!2954286 (= tp!943753 e!1860702)))

(declare-fun b!2954959 () Bool)

(assert (=> b!2954959 (= e!1860702 tp_is_empty!15889)))

(declare-fun b!2954960 () Bool)

(declare-fun tp!943804 () Bool)

(declare-fun tp!943802 () Bool)

(assert (=> b!2954960 (= e!1860702 (and tp!943804 tp!943802))))

(declare-fun b!2954962 () Bool)

(declare-fun tp!943803 () Bool)

(declare-fun tp!943806 () Bool)

(assert (=> b!2954962 (= e!1860702 (and tp!943803 tp!943806))))

(declare-fun b!2954961 () Bool)

(declare-fun tp!943805 () Bool)

(assert (=> b!2954961 (= e!1860702 tp!943805)))

(assert (= (and b!2954286 ((_ is ElementMatch!9163) (reg!9492 r!17423))) b!2954959))

(assert (= (and b!2954286 ((_ is Concat!14484) (reg!9492 r!17423))) b!2954960))

(assert (= (and b!2954286 ((_ is Star!9163) (reg!9492 r!17423))) b!2954961))

(assert (= (and b!2954286 ((_ is Union!9163) (reg!9492 r!17423))) b!2954962))

(declare-fun b!2954967 () Bool)

(declare-fun e!1860705 () Bool)

(declare-fun tp!943809 () Bool)

(assert (=> b!2954967 (= e!1860705 (and tp_is_empty!15889 tp!943809))))

(assert (=> b!2954292 (= tp!943752 e!1860705)))

(assert (= (and b!2954292 ((_ is Cons!34904) (t!234093 s!11993))) b!2954967))

(declare-fun e!1860706 () Bool)

(assert (=> b!2954287 (= tp!943750 e!1860706)))

(declare-fun b!2954968 () Bool)

(assert (=> b!2954968 (= e!1860706 tp_is_empty!15889)))

(declare-fun b!2954969 () Bool)

(declare-fun tp!943812 () Bool)

(declare-fun tp!943810 () Bool)

(assert (=> b!2954969 (= e!1860706 (and tp!943812 tp!943810))))

(declare-fun b!2954971 () Bool)

(declare-fun tp!943811 () Bool)

(declare-fun tp!943814 () Bool)

(assert (=> b!2954971 (= e!1860706 (and tp!943811 tp!943814))))

(declare-fun b!2954970 () Bool)

(declare-fun tp!943813 () Bool)

(assert (=> b!2954970 (= e!1860706 tp!943813)))

(assert (= (and b!2954287 ((_ is ElementMatch!9163) (regOne!18838 r!17423))) b!2954968))

(assert (= (and b!2954287 ((_ is Concat!14484) (regOne!18838 r!17423))) b!2954969))

(assert (= (and b!2954287 ((_ is Star!9163) (regOne!18838 r!17423))) b!2954970))

(assert (= (and b!2954287 ((_ is Union!9163) (regOne!18838 r!17423))) b!2954971))

(declare-fun e!1860707 () Bool)

(assert (=> b!2954287 (= tp!943751 e!1860707)))

(declare-fun b!2954972 () Bool)

(assert (=> b!2954972 (= e!1860707 tp_is_empty!15889)))

(declare-fun b!2954973 () Bool)

(declare-fun tp!943817 () Bool)

(declare-fun tp!943815 () Bool)

(assert (=> b!2954973 (= e!1860707 (and tp!943817 tp!943815))))

(declare-fun b!2954975 () Bool)

(declare-fun tp!943816 () Bool)

(declare-fun tp!943819 () Bool)

(assert (=> b!2954975 (= e!1860707 (and tp!943816 tp!943819))))

(declare-fun b!2954974 () Bool)

(declare-fun tp!943818 () Bool)

(assert (=> b!2954974 (= e!1860707 tp!943818)))

(assert (= (and b!2954287 ((_ is ElementMatch!9163) (regTwo!18838 r!17423))) b!2954972))

(assert (= (and b!2954287 ((_ is Concat!14484) (regTwo!18838 r!17423))) b!2954973))

(assert (= (and b!2954287 ((_ is Star!9163) (regTwo!18838 r!17423))) b!2954974))

(assert (= (and b!2954287 ((_ is Union!9163) (regTwo!18838 r!17423))) b!2954975))

(declare-fun e!1860708 () Bool)

(assert (=> b!2954293 (= tp!943749 e!1860708)))

(declare-fun b!2954976 () Bool)

(assert (=> b!2954976 (= e!1860708 tp_is_empty!15889)))

(declare-fun b!2954977 () Bool)

(declare-fun tp!943822 () Bool)

(declare-fun tp!943820 () Bool)

(assert (=> b!2954977 (= e!1860708 (and tp!943822 tp!943820))))

(declare-fun b!2954979 () Bool)

(declare-fun tp!943821 () Bool)

(declare-fun tp!943824 () Bool)

(assert (=> b!2954979 (= e!1860708 (and tp!943821 tp!943824))))

(declare-fun b!2954978 () Bool)

(declare-fun tp!943823 () Bool)

(assert (=> b!2954978 (= e!1860708 tp!943823)))

(assert (= (and b!2954293 ((_ is ElementMatch!9163) (regOne!18839 r!17423))) b!2954976))

(assert (= (and b!2954293 ((_ is Concat!14484) (regOne!18839 r!17423))) b!2954977))

(assert (= (and b!2954293 ((_ is Star!9163) (regOne!18839 r!17423))) b!2954978))

(assert (= (and b!2954293 ((_ is Union!9163) (regOne!18839 r!17423))) b!2954979))

(declare-fun e!1860709 () Bool)

(assert (=> b!2954293 (= tp!943748 e!1860709)))

(declare-fun b!2954980 () Bool)

(assert (=> b!2954980 (= e!1860709 tp_is_empty!15889)))

(declare-fun b!2954981 () Bool)

(declare-fun tp!943827 () Bool)

(declare-fun tp!943825 () Bool)

(assert (=> b!2954981 (= e!1860709 (and tp!943827 tp!943825))))

(declare-fun b!2954983 () Bool)

(declare-fun tp!943826 () Bool)

(declare-fun tp!943829 () Bool)

(assert (=> b!2954983 (= e!1860709 (and tp!943826 tp!943829))))

(declare-fun b!2954982 () Bool)

(declare-fun tp!943828 () Bool)

(assert (=> b!2954982 (= e!1860709 tp!943828)))

(assert (= (and b!2954293 ((_ is ElementMatch!9163) (regTwo!18839 r!17423))) b!2954980))

(assert (= (and b!2954293 ((_ is Concat!14484) (regTwo!18839 r!17423))) b!2954981))

(assert (= (and b!2954293 ((_ is Star!9163) (regTwo!18839 r!17423))) b!2954982))

(assert (= (and b!2954293 ((_ is Union!9163) (regTwo!18839 r!17423))) b!2954983))

(check-sat (not d!841465) (not b!2954961) (not b!2954644) (not b!2954817) (not b!2954969) (not b!2954838) (not d!841421) (not b!2954811) (not b!2954693) (not bm!195598) (not b!2954684) (not b!2954982) (not bm!195602) (not b!2954635) (not bm!195560) (not b!2954983) (not bm!195581) (not b!2954970) (not b!2954960) (not b!2954978) (not b!2954979) (not b!2954971) (not b!2954946) (not bm!195579) (not d!841383) (not b!2954967) (not b!2954945) (not bm!195568) (not b!2954813) (not d!841433) (not bm!195599) (not b!2954835) (not bm!195604) (not bm!195611) (not b!2954814) (not bm!195571) (not b!2954820) (not bm!195524) (not b!2954792) (not bm!195605) (not b!2954962) (not b!2954973) (not b!2954977) (not bm!195525) (not bm!195606) (not d!841453) (not b!2954812) (not b!2954339) (not d!841471) (not b!2954830) (not b!2954458) (not bm!195609) (not bm!195582) (not b!2954338) (not b!2954975) (not b!2954844) (not b!2954974) (not d!841457) (not b!2954920) (not bm!195603) tp_is_empty!15889 (not bm!195569) (not d!841445) (not bm!195583) (not b!2954468) (not d!841473) (not d!841455) (not d!841447) (not b!2954981) (not d!841401) (not b!2954641) (not bm!195580) (not b!2954846) (not d!841451) (not bm!195610) (not b!2954847) (not b!2954634) (not b!2954818) (not b!2954632) (not b!2954643) (not b!2954837) (not bm!195572) (not b!2954921))
(check-sat)
