; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741862 () Bool)

(assert start!741862)

(declare-fun b!7813654 () Bool)

(declare-fun res!3111279 () Bool)

(declare-fun e!4624255 () Bool)

(assert (=> b!7813654 (=> (not res!3111279) (not e!4624255))))

(declare-datatypes ((C!42160 0))(
  ( (C!42161 (val!31520 Int)) )
))
(declare-datatypes ((List!73754 0))(
  ( (Nil!73630) (Cons!73630 (h!80078 C!42160) (t!388489 List!73754)) )
))
(declare-fun s!14225 () List!73754)

(declare-datatypes ((Regex!20917 0))(
  ( (ElementMatch!20917 (c!1438650 C!42160)) (Concat!29762 (regOne!42346 Regex!20917) (regTwo!42346 Regex!20917)) (EmptyExpr!20917) (Star!20917 (reg!21246 Regex!20917)) (EmptyLang!20917) (Union!20917 (regOne!42347 Regex!20917) (regTwo!42347 Regex!20917)) )
))
(declare-fun lt!2675984 () Regex!20917)

(declare-fun lt!2675983 () Regex!20917)

(declare-fun matchR!10375 (Regex!20917 List!73754) Bool)

(assert (=> b!7813654 (= res!3111279 (matchR!10375 (Union!20917 lt!2675983 lt!2675984) (t!388489 s!14225)))))

(declare-fun b!7813655 () Bool)

(declare-fun e!4624258 () Bool)

(declare-fun tp!2303165 () Bool)

(declare-fun tp!2303169 () Bool)

(assert (=> b!7813655 (= e!4624258 (and tp!2303165 tp!2303169))))

(declare-fun b!7813656 () Bool)

(declare-fun tp_is_empty!52189 () Bool)

(assert (=> b!7813656 (= e!4624258 tp_is_empty!52189)))

(declare-fun b!7813657 () Bool)

(declare-fun e!4624261 () Bool)

(declare-fun r2!6144 () Regex!20917)

(assert (=> b!7813657 (= e!4624261 (matchR!10375 r2!6144 s!14225))))

(declare-fun b!7813658 () Bool)

(declare-fun tp!2303163 () Bool)

(declare-fun tp!2303164 () Bool)

(assert (=> b!7813658 (= e!4624258 (and tp!2303163 tp!2303164))))

(declare-fun b!7813660 () Bool)

(declare-fun res!3111281 () Bool)

(assert (=> b!7813660 (=> (not res!3111281) (not e!4624255))))

(declare-fun validRegex!11331 (Regex!20917) Bool)

(assert (=> b!7813660 (= res!3111281 (validRegex!11331 lt!2675984))))

(declare-fun b!7813661 () Bool)

(declare-fun e!4624260 () Bool)

(assert (=> b!7813661 (= e!4624260 tp_is_empty!52189)))

(declare-fun b!7813662 () Bool)

(assert (=> b!7813662 (= e!4624255 (not e!4624261))))

(declare-fun res!3111284 () Bool)

(assert (=> b!7813662 (=> res!3111284 e!4624261)))

(declare-fun r1!6206 () Regex!20917)

(assert (=> b!7813662 (= res!3111284 (matchR!10375 r1!6206 s!14225))))

(declare-fun e!4624259 () Bool)

(assert (=> b!7813662 e!4624259))

(declare-fun res!3111283 () Bool)

(assert (=> b!7813662 (=> res!3111283 e!4624259)))

(assert (=> b!7813662 (= res!3111283 (matchR!10375 lt!2675983 (t!388489 s!14225)))))

(declare-datatypes ((Unit!168636 0))(
  ( (Unit!168637) )
))
(declare-fun lt!2675982 () Unit!168636)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!436 (Regex!20917 Regex!20917 List!73754) Unit!168636)

(assert (=> b!7813662 (= lt!2675982 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!436 lt!2675983 lt!2675984 (t!388489 s!14225)))))

(declare-fun b!7813663 () Bool)

(declare-fun res!3111277 () Bool)

(declare-fun e!4624257 () Bool)

(assert (=> b!7813663 (=> (not res!3111277) (not e!4624257))))

(assert (=> b!7813663 (= res!3111277 (matchR!10375 (Union!20917 r1!6206 r2!6144) s!14225))))

(declare-fun b!7813664 () Bool)

(declare-fun e!4624256 () Bool)

(declare-fun tp!2303171 () Bool)

(assert (=> b!7813664 (= e!4624256 (and tp_is_empty!52189 tp!2303171))))

(declare-fun b!7813665 () Bool)

(declare-fun tp!2303173 () Bool)

(assert (=> b!7813665 (= e!4624260 tp!2303173)))

(declare-fun b!7813666 () Bool)

(declare-fun tp!2303172 () Bool)

(declare-fun tp!2303167 () Bool)

(assert (=> b!7813666 (= e!4624260 (and tp!2303172 tp!2303167))))

(declare-fun b!7813667 () Bool)

(declare-fun res!3111276 () Bool)

(assert (=> b!7813667 (=> (not res!3111276) (not e!4624257))))

(get-info :version)

(assert (=> b!7813667 (= res!3111276 ((_ is Cons!73630) s!14225))))

(declare-fun res!3111278 () Bool)

(assert (=> start!741862 (=> (not res!3111278) (not e!4624257))))

(assert (=> start!741862 (= res!3111278 (validRegex!11331 r1!6206))))

(assert (=> start!741862 e!4624257))

(assert (=> start!741862 e!4624260))

(assert (=> start!741862 e!4624258))

(assert (=> start!741862 e!4624256))

(declare-fun b!7813659 () Bool)

(assert (=> b!7813659 (= e!4624259 (matchR!10375 lt!2675984 (t!388489 s!14225)))))

(declare-fun b!7813668 () Bool)

(assert (=> b!7813668 (= e!4624257 e!4624255)))

(declare-fun res!3111280 () Bool)

(assert (=> b!7813668 (=> (not res!3111280) (not e!4624255))))

(assert (=> b!7813668 (= res!3111280 (validRegex!11331 lt!2675983))))

(declare-fun derivativeStep!6248 (Regex!20917 C!42160) Regex!20917)

(assert (=> b!7813668 (= lt!2675984 (derivativeStep!6248 r2!6144 (h!80078 s!14225)))))

(assert (=> b!7813668 (= lt!2675983 (derivativeStep!6248 r1!6206 (h!80078 s!14225)))))

(declare-fun b!7813669 () Bool)

(declare-fun tp!2303168 () Bool)

(assert (=> b!7813669 (= e!4624258 tp!2303168)))

(declare-fun b!7813670 () Bool)

(declare-fun tp!2303166 () Bool)

(declare-fun tp!2303170 () Bool)

(assert (=> b!7813670 (= e!4624260 (and tp!2303166 tp!2303170))))

(declare-fun b!7813671 () Bool)

(declare-fun res!3111282 () Bool)

(assert (=> b!7813671 (=> (not res!3111282) (not e!4624257))))

(assert (=> b!7813671 (= res!3111282 (validRegex!11331 r2!6144))))

(assert (= (and start!741862 res!3111278) b!7813671))

(assert (= (and b!7813671 res!3111282) b!7813663))

(assert (= (and b!7813663 res!3111277) b!7813667))

(assert (= (and b!7813667 res!3111276) b!7813668))

(assert (= (and b!7813668 res!3111280) b!7813660))

(assert (= (and b!7813660 res!3111281) b!7813654))

(assert (= (and b!7813654 res!3111279) b!7813662))

(assert (= (and b!7813662 (not res!3111283)) b!7813659))

(assert (= (and b!7813662 (not res!3111284)) b!7813657))

(assert (= (and start!741862 ((_ is ElementMatch!20917) r1!6206)) b!7813661))

(assert (= (and start!741862 ((_ is Concat!29762) r1!6206)) b!7813666))

(assert (= (and start!741862 ((_ is Star!20917) r1!6206)) b!7813665))

(assert (= (and start!741862 ((_ is Union!20917) r1!6206)) b!7813670))

(assert (= (and start!741862 ((_ is ElementMatch!20917) r2!6144)) b!7813656))

(assert (= (and start!741862 ((_ is Concat!29762) r2!6144)) b!7813655))

(assert (= (and start!741862 ((_ is Star!20917) r2!6144)) b!7813669))

(assert (= (and start!741862 ((_ is Union!20917) r2!6144)) b!7813658))

(assert (= (and start!741862 ((_ is Cons!73630) s!14225)) b!7813664))

(declare-fun m!8242888 () Bool)

(assert (=> b!7813671 m!8242888))

(declare-fun m!8242890 () Bool)

(assert (=> start!741862 m!8242890))

(declare-fun m!8242892 () Bool)

(assert (=> b!7813659 m!8242892))

(declare-fun m!8242894 () Bool)

(assert (=> b!7813660 m!8242894))

(declare-fun m!8242896 () Bool)

(assert (=> b!7813662 m!8242896))

(declare-fun m!8242898 () Bool)

(assert (=> b!7813662 m!8242898))

(declare-fun m!8242900 () Bool)

(assert (=> b!7813662 m!8242900))

(declare-fun m!8242902 () Bool)

(assert (=> b!7813663 m!8242902))

(declare-fun m!8242904 () Bool)

(assert (=> b!7813668 m!8242904))

(declare-fun m!8242906 () Bool)

(assert (=> b!7813668 m!8242906))

(declare-fun m!8242908 () Bool)

(assert (=> b!7813668 m!8242908))

(declare-fun m!8242910 () Bool)

(assert (=> b!7813654 m!8242910))

(declare-fun m!8242912 () Bool)

(assert (=> b!7813657 m!8242912))

(check-sat (not b!7813666) tp_is_empty!52189 (not b!7813655) (not b!7813660) (not b!7813663) (not b!7813662) (not b!7813664) (not b!7813665) (not b!7813657) (not b!7813671) (not b!7813658) (not start!741862) (not b!7813654) (not b!7813659) (not b!7813669) (not b!7813670) (not b!7813668))
(check-sat)
(get-model)

(declare-fun b!7813770 () Bool)

(declare-fun e!4624314 () Bool)

(declare-fun lt!2675992 () Bool)

(declare-fun call!724882 () Bool)

(assert (=> b!7813770 (= e!4624314 (= lt!2675992 call!724882))))

(declare-fun b!7813771 () Bool)

(declare-fun e!4624316 () Bool)

(assert (=> b!7813771 (= e!4624314 e!4624316)))

(declare-fun c!1438672 () Bool)

(assert (=> b!7813771 (= c!1438672 ((_ is EmptyLang!20917) (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun e!4624317 () Bool)

(declare-fun b!7813772 () Bool)

(declare-fun head!15978 (List!73754) C!42160)

(assert (=> b!7813772 (= e!4624317 (= (head!15978 (t!388489 s!14225)) (c!1438650 (Union!20917 lt!2675983 lt!2675984))))))

(declare-fun b!7813773 () Bool)

(declare-fun e!4624311 () Bool)

(declare-fun e!4624313 () Bool)

(assert (=> b!7813773 (= e!4624311 e!4624313)))

(declare-fun res!3111345 () Bool)

(assert (=> b!7813773 (=> (not res!3111345) (not e!4624313))))

(assert (=> b!7813773 (= res!3111345 (not lt!2675992))))

(declare-fun bm!724877 () Bool)

(declare-fun isEmpty!42277 (List!73754) Bool)

(assert (=> bm!724877 (= call!724882 (isEmpty!42277 (t!388489 s!14225)))))

(declare-fun b!7813774 () Bool)

(declare-fun res!3111341 () Bool)

(assert (=> b!7813774 (=> res!3111341 e!4624311)))

(assert (=> b!7813774 (= res!3111341 (not ((_ is ElementMatch!20917) (Union!20917 lt!2675983 lt!2675984))))))

(assert (=> b!7813774 (= e!4624316 e!4624311)))

(declare-fun b!7813775 () Bool)

(declare-fun e!4624315 () Bool)

(declare-fun nullable!9289 (Regex!20917) Bool)

(assert (=> b!7813775 (= e!4624315 (nullable!9289 (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun b!7813777 () Bool)

(declare-fun res!3111348 () Bool)

(assert (=> b!7813777 (=> res!3111348 e!4624311)))

(assert (=> b!7813777 (= res!3111348 e!4624317)))

(declare-fun res!3111343 () Bool)

(assert (=> b!7813777 (=> (not res!3111343) (not e!4624317))))

(assert (=> b!7813777 (= res!3111343 lt!2675992)))

(declare-fun b!7813778 () Bool)

(declare-fun res!3111346 () Bool)

(assert (=> b!7813778 (=> (not res!3111346) (not e!4624317))))

(declare-fun tail!15519 (List!73754) List!73754)

(assert (=> b!7813778 (= res!3111346 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7813779 () Bool)

(declare-fun res!3111347 () Bool)

(declare-fun e!4624312 () Bool)

(assert (=> b!7813779 (=> res!3111347 e!4624312)))

(assert (=> b!7813779 (= res!3111347 (not (isEmpty!42277 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7813780 () Bool)

(assert (=> b!7813780 (= e!4624316 (not lt!2675992))))

(declare-fun b!7813781 () Bool)

(assert (=> b!7813781 (= e!4624315 (matchR!10375 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7813782 () Bool)

(assert (=> b!7813782 (= e!4624313 e!4624312)))

(declare-fun res!3111344 () Bool)

(assert (=> b!7813782 (=> res!3111344 e!4624312)))

(assert (=> b!7813782 (= res!3111344 call!724882)))

(declare-fun b!7813783 () Bool)

(assert (=> b!7813783 (= e!4624312 (not (= (head!15978 (t!388489 s!14225)) (c!1438650 (Union!20917 lt!2675983 lt!2675984)))))))

(declare-fun d!2348994 () Bool)

(assert (=> d!2348994 e!4624314))

(declare-fun c!1438673 () Bool)

(assert (=> d!2348994 (= c!1438673 ((_ is EmptyExpr!20917) (Union!20917 lt!2675983 lt!2675984)))))

(assert (=> d!2348994 (= lt!2675992 e!4624315)))

(declare-fun c!1438674 () Bool)

(assert (=> d!2348994 (= c!1438674 (isEmpty!42277 (t!388489 s!14225)))))

(assert (=> d!2348994 (validRegex!11331 (Union!20917 lt!2675983 lt!2675984))))

(assert (=> d!2348994 (= (matchR!10375 (Union!20917 lt!2675983 lt!2675984) (t!388489 s!14225)) lt!2675992)))

(declare-fun b!7813776 () Bool)

(declare-fun res!3111342 () Bool)

(assert (=> b!7813776 (=> (not res!3111342) (not e!4624317))))

(assert (=> b!7813776 (= res!3111342 (not call!724882))))

(assert (= (and d!2348994 c!1438674) b!7813775))

(assert (= (and d!2348994 (not c!1438674)) b!7813781))

(assert (= (and d!2348994 c!1438673) b!7813770))

(assert (= (and d!2348994 (not c!1438673)) b!7813771))

(assert (= (and b!7813771 c!1438672) b!7813780))

(assert (= (and b!7813771 (not c!1438672)) b!7813774))

(assert (= (and b!7813774 (not res!3111341)) b!7813777))

(assert (= (and b!7813777 res!3111343) b!7813776))

(assert (= (and b!7813776 res!3111342) b!7813778))

(assert (= (and b!7813778 res!3111346) b!7813772))

(assert (= (and b!7813777 (not res!3111348)) b!7813773))

(assert (= (and b!7813773 res!3111345) b!7813782))

(assert (= (and b!7813782 (not res!3111344)) b!7813779))

(assert (= (and b!7813779 (not res!3111347)) b!7813783))

(assert (= (or b!7813770 b!7813776 b!7813782) bm!724877))

(declare-fun m!8242950 () Bool)

(assert (=> bm!724877 m!8242950))

(declare-fun m!8242952 () Bool)

(assert (=> b!7813783 m!8242952))

(assert (=> b!7813781 m!8242952))

(assert (=> b!7813781 m!8242952))

(declare-fun m!8242954 () Bool)

(assert (=> b!7813781 m!8242954))

(declare-fun m!8242956 () Bool)

(assert (=> b!7813781 m!8242956))

(assert (=> b!7813781 m!8242954))

(assert (=> b!7813781 m!8242956))

(declare-fun m!8242958 () Bool)

(assert (=> b!7813781 m!8242958))

(assert (=> d!2348994 m!8242950))

(declare-fun m!8242960 () Bool)

(assert (=> d!2348994 m!8242960))

(assert (=> b!7813779 m!8242956))

(assert (=> b!7813779 m!8242956))

(declare-fun m!8242962 () Bool)

(assert (=> b!7813779 m!8242962))

(declare-fun m!8242964 () Bool)

(assert (=> b!7813775 m!8242964))

(assert (=> b!7813778 m!8242956))

(assert (=> b!7813778 m!8242956))

(assert (=> b!7813778 m!8242962))

(assert (=> b!7813772 m!8242952))

(assert (=> b!7813654 d!2348994))

(declare-fun b!7813890 () Bool)

(declare-fun e!4624394 () Bool)

(declare-fun e!4624395 () Bool)

(assert (=> b!7813890 (= e!4624394 e!4624395)))

(declare-fun c!1438698 () Bool)

(assert (=> b!7813890 (= c!1438698 ((_ is Union!20917) r2!6144))))

(declare-fun d!2349006 () Bool)

(declare-fun res!3111414 () Bool)

(declare-fun e!4624400 () Bool)

(assert (=> d!2349006 (=> res!3111414 e!4624400)))

(assert (=> d!2349006 (= res!3111414 ((_ is ElementMatch!20917) r2!6144))))

(assert (=> d!2349006 (= (validRegex!11331 r2!6144) e!4624400)))

(declare-fun bm!724904 () Bool)

(declare-fun call!724909 () Bool)

(declare-fun c!1438697 () Bool)

(assert (=> bm!724904 (= call!724909 (validRegex!11331 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))

(declare-fun b!7813891 () Bool)

(declare-fun res!3111411 () Bool)

(declare-fun e!4624399 () Bool)

(assert (=> b!7813891 (=> res!3111411 e!4624399)))

(assert (=> b!7813891 (= res!3111411 (not ((_ is Concat!29762) r2!6144)))))

(assert (=> b!7813891 (= e!4624395 e!4624399)))

(declare-fun b!7813892 () Bool)

(declare-fun e!4624396 () Bool)

(assert (=> b!7813892 (= e!4624396 call!724909)))

(declare-fun b!7813893 () Bool)

(assert (=> b!7813893 (= e!4624394 e!4624396)))

(declare-fun res!3111412 () Bool)

(assert (=> b!7813893 (= res!3111412 (not (nullable!9289 (reg!21246 r2!6144))))))

(assert (=> b!7813893 (=> (not res!3111412) (not e!4624396))))

(declare-fun b!7813894 () Bool)

(declare-fun e!4624397 () Bool)

(declare-fun call!724911 () Bool)

(assert (=> b!7813894 (= e!4624397 call!724911)))

(declare-fun b!7813895 () Bool)

(assert (=> b!7813895 (= e!4624400 e!4624394)))

(assert (=> b!7813895 (= c!1438697 ((_ is Star!20917) r2!6144))))

(declare-fun b!7813896 () Bool)

(declare-fun e!4624398 () Bool)

(assert (=> b!7813896 (= e!4624398 call!724911)))

(declare-fun b!7813897 () Bool)

(declare-fun res!3111413 () Bool)

(assert (=> b!7813897 (=> (not res!3111413) (not e!4624397))))

(declare-fun call!724910 () Bool)

(assert (=> b!7813897 (= res!3111413 call!724910)))

(assert (=> b!7813897 (= e!4624395 e!4624397)))

(declare-fun bm!724905 () Bool)

(assert (=> bm!724905 (= call!724911 call!724909)))

(declare-fun bm!724906 () Bool)

(assert (=> bm!724906 (= call!724910 (validRegex!11331 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun b!7813898 () Bool)

(assert (=> b!7813898 (= e!4624399 e!4624398)))

(declare-fun res!3111415 () Bool)

(assert (=> b!7813898 (=> (not res!3111415) (not e!4624398))))

(assert (=> b!7813898 (= res!3111415 call!724910)))

(assert (= (and d!2349006 (not res!3111414)) b!7813895))

(assert (= (and b!7813895 c!1438697) b!7813893))

(assert (= (and b!7813895 (not c!1438697)) b!7813890))

(assert (= (and b!7813893 res!3111412) b!7813892))

(assert (= (and b!7813890 c!1438698) b!7813897))

(assert (= (and b!7813890 (not c!1438698)) b!7813891))

(assert (= (and b!7813897 res!3111413) b!7813894))

(assert (= (and b!7813891 (not res!3111411)) b!7813898))

(assert (= (and b!7813898 res!3111415) b!7813896))

(assert (= (or b!7813897 b!7813898) bm!724906))

(assert (= (or b!7813894 b!7813896) bm!724905))

(assert (= (or b!7813892 bm!724905) bm!724904))

(declare-fun m!8243004 () Bool)

(assert (=> bm!724904 m!8243004))

(declare-fun m!8243006 () Bool)

(assert (=> b!7813893 m!8243006))

(declare-fun m!8243008 () Bool)

(assert (=> bm!724906 m!8243008))

(assert (=> b!7813671 d!2349006))

(declare-fun b!7813899 () Bool)

(declare-fun e!4624401 () Bool)

(declare-fun e!4624402 () Bool)

(assert (=> b!7813899 (= e!4624401 e!4624402)))

(declare-fun c!1438700 () Bool)

(assert (=> b!7813899 (= c!1438700 ((_ is Union!20917) lt!2675984))))

(declare-fun d!2349020 () Bool)

(declare-fun res!3111419 () Bool)

(declare-fun e!4624407 () Bool)

(assert (=> d!2349020 (=> res!3111419 e!4624407)))

(assert (=> d!2349020 (= res!3111419 ((_ is ElementMatch!20917) lt!2675984))))

(assert (=> d!2349020 (= (validRegex!11331 lt!2675984) e!4624407)))

(declare-fun bm!724907 () Bool)

(declare-fun c!1438699 () Bool)

(declare-fun call!724912 () Bool)

(assert (=> bm!724907 (= call!724912 (validRegex!11331 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))

(declare-fun b!7813900 () Bool)

(declare-fun res!3111416 () Bool)

(declare-fun e!4624406 () Bool)

(assert (=> b!7813900 (=> res!3111416 e!4624406)))

(assert (=> b!7813900 (= res!3111416 (not ((_ is Concat!29762) lt!2675984)))))

(assert (=> b!7813900 (= e!4624402 e!4624406)))

(declare-fun b!7813901 () Bool)

(declare-fun e!4624403 () Bool)

(assert (=> b!7813901 (= e!4624403 call!724912)))

(declare-fun b!7813902 () Bool)

(assert (=> b!7813902 (= e!4624401 e!4624403)))

(declare-fun res!3111417 () Bool)

(assert (=> b!7813902 (= res!3111417 (not (nullable!9289 (reg!21246 lt!2675984))))))

(assert (=> b!7813902 (=> (not res!3111417) (not e!4624403))))

(declare-fun b!7813903 () Bool)

(declare-fun e!4624404 () Bool)

(declare-fun call!724914 () Bool)

(assert (=> b!7813903 (= e!4624404 call!724914)))

(declare-fun b!7813904 () Bool)

(assert (=> b!7813904 (= e!4624407 e!4624401)))

(assert (=> b!7813904 (= c!1438699 ((_ is Star!20917) lt!2675984))))

(declare-fun b!7813905 () Bool)

(declare-fun e!4624405 () Bool)

(assert (=> b!7813905 (= e!4624405 call!724914)))

(declare-fun b!7813906 () Bool)

(declare-fun res!3111418 () Bool)

(assert (=> b!7813906 (=> (not res!3111418) (not e!4624404))))

(declare-fun call!724913 () Bool)

(assert (=> b!7813906 (= res!3111418 call!724913)))

(assert (=> b!7813906 (= e!4624402 e!4624404)))

(declare-fun bm!724908 () Bool)

(assert (=> bm!724908 (= call!724914 call!724912)))

(declare-fun bm!724909 () Bool)

(assert (=> bm!724909 (= call!724913 (validRegex!11331 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))

(declare-fun b!7813907 () Bool)

(assert (=> b!7813907 (= e!4624406 e!4624405)))

(declare-fun res!3111420 () Bool)

(assert (=> b!7813907 (=> (not res!3111420) (not e!4624405))))

(assert (=> b!7813907 (= res!3111420 call!724913)))

(assert (= (and d!2349020 (not res!3111419)) b!7813904))

(assert (= (and b!7813904 c!1438699) b!7813902))

(assert (= (and b!7813904 (not c!1438699)) b!7813899))

(assert (= (and b!7813902 res!3111417) b!7813901))

(assert (= (and b!7813899 c!1438700) b!7813906))

(assert (= (and b!7813899 (not c!1438700)) b!7813900))

(assert (= (and b!7813906 res!3111418) b!7813903))

(assert (= (and b!7813900 (not res!3111416)) b!7813907))

(assert (= (and b!7813907 res!3111420) b!7813905))

(assert (= (or b!7813906 b!7813907) bm!724909))

(assert (= (or b!7813903 b!7813905) bm!724908))

(assert (= (or b!7813901 bm!724908) bm!724907))

(declare-fun m!8243010 () Bool)

(assert (=> bm!724907 m!8243010))

(declare-fun m!8243012 () Bool)

(assert (=> b!7813902 m!8243012))

(declare-fun m!8243014 () Bool)

(assert (=> bm!724909 m!8243014))

(assert (=> b!7813660 d!2349020))

(declare-fun b!7813908 () Bool)

(declare-fun e!4624408 () Bool)

(declare-fun e!4624409 () Bool)

(assert (=> b!7813908 (= e!4624408 e!4624409)))

(declare-fun c!1438702 () Bool)

(assert (=> b!7813908 (= c!1438702 ((_ is Union!20917) r1!6206))))

(declare-fun d!2349022 () Bool)

(declare-fun res!3111424 () Bool)

(declare-fun e!4624414 () Bool)

(assert (=> d!2349022 (=> res!3111424 e!4624414)))

(assert (=> d!2349022 (= res!3111424 ((_ is ElementMatch!20917) r1!6206))))

(assert (=> d!2349022 (= (validRegex!11331 r1!6206) e!4624414)))

(declare-fun call!724915 () Bool)

(declare-fun c!1438701 () Bool)

(declare-fun bm!724910 () Bool)

(assert (=> bm!724910 (= call!724915 (validRegex!11331 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))

(declare-fun b!7813909 () Bool)

(declare-fun res!3111421 () Bool)

(declare-fun e!4624413 () Bool)

(assert (=> b!7813909 (=> res!3111421 e!4624413)))

(assert (=> b!7813909 (= res!3111421 (not ((_ is Concat!29762) r1!6206)))))

(assert (=> b!7813909 (= e!4624409 e!4624413)))

(declare-fun b!7813910 () Bool)

(declare-fun e!4624410 () Bool)

(assert (=> b!7813910 (= e!4624410 call!724915)))

(declare-fun b!7813911 () Bool)

(assert (=> b!7813911 (= e!4624408 e!4624410)))

(declare-fun res!3111422 () Bool)

(assert (=> b!7813911 (= res!3111422 (not (nullable!9289 (reg!21246 r1!6206))))))

(assert (=> b!7813911 (=> (not res!3111422) (not e!4624410))))

(declare-fun b!7813914 () Bool)

(declare-fun e!4624411 () Bool)

(declare-fun call!724917 () Bool)

(assert (=> b!7813914 (= e!4624411 call!724917)))

(declare-fun b!7813915 () Bool)

(assert (=> b!7813915 (= e!4624414 e!4624408)))

(assert (=> b!7813915 (= c!1438701 ((_ is Star!20917) r1!6206))))

(declare-fun b!7813916 () Bool)

(declare-fun e!4624412 () Bool)

(assert (=> b!7813916 (= e!4624412 call!724917)))

(declare-fun b!7813917 () Bool)

(declare-fun res!3111423 () Bool)

(assert (=> b!7813917 (=> (not res!3111423) (not e!4624411))))

(declare-fun call!724916 () Bool)

(assert (=> b!7813917 (= res!3111423 call!724916)))

(assert (=> b!7813917 (= e!4624409 e!4624411)))

(declare-fun bm!724911 () Bool)

(assert (=> bm!724911 (= call!724917 call!724915)))

(declare-fun bm!724912 () Bool)

(assert (=> bm!724912 (= call!724916 (validRegex!11331 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun b!7813918 () Bool)

(assert (=> b!7813918 (= e!4624413 e!4624412)))

(declare-fun res!3111425 () Bool)

(assert (=> b!7813918 (=> (not res!3111425) (not e!4624412))))

(assert (=> b!7813918 (= res!3111425 call!724916)))

(assert (= (and d!2349022 (not res!3111424)) b!7813915))

(assert (= (and b!7813915 c!1438701) b!7813911))

(assert (= (and b!7813915 (not c!1438701)) b!7813908))

(assert (= (and b!7813911 res!3111422) b!7813910))

(assert (= (and b!7813908 c!1438702) b!7813917))

(assert (= (and b!7813908 (not c!1438702)) b!7813909))

(assert (= (and b!7813917 res!3111423) b!7813914))

(assert (= (and b!7813909 (not res!3111421)) b!7813918))

(assert (= (and b!7813918 res!3111425) b!7813916))

(assert (= (or b!7813917 b!7813918) bm!724912))

(assert (= (or b!7813914 b!7813916) bm!724911))

(assert (= (or b!7813910 bm!724911) bm!724910))

(declare-fun m!8243016 () Bool)

(assert (=> bm!724910 m!8243016))

(declare-fun m!8243018 () Bool)

(assert (=> b!7813911 m!8243018))

(declare-fun m!8243020 () Bool)

(assert (=> bm!724912 m!8243020))

(assert (=> start!741862 d!2349022))

(declare-fun b!7813937 () Bool)

(declare-fun e!4624428 () Bool)

(declare-fun lt!2676000 () Bool)

(declare-fun call!724922 () Bool)

(assert (=> b!7813937 (= e!4624428 (= lt!2676000 call!724922))))

(declare-fun b!7813938 () Bool)

(declare-fun e!4624430 () Bool)

(assert (=> b!7813938 (= e!4624428 e!4624430)))

(declare-fun c!1438713 () Bool)

(assert (=> b!7813938 (= c!1438713 ((_ is EmptyLang!20917) lt!2675984))))

(declare-fun b!7813939 () Bool)

(declare-fun e!4624431 () Bool)

(assert (=> b!7813939 (= e!4624431 (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675984)))))

(declare-fun b!7813940 () Bool)

(declare-fun e!4624425 () Bool)

(declare-fun e!4624427 () Bool)

(assert (=> b!7813940 (= e!4624425 e!4624427)))

(declare-fun res!3111430 () Bool)

(assert (=> b!7813940 (=> (not res!3111430) (not e!4624427))))

(assert (=> b!7813940 (= res!3111430 (not lt!2676000))))

(declare-fun bm!724917 () Bool)

(assert (=> bm!724917 (= call!724922 (isEmpty!42277 (t!388489 s!14225)))))

(declare-fun b!7813941 () Bool)

(declare-fun res!3111426 () Bool)

(assert (=> b!7813941 (=> res!3111426 e!4624425)))

(assert (=> b!7813941 (= res!3111426 (not ((_ is ElementMatch!20917) lt!2675984)))))

(assert (=> b!7813941 (= e!4624430 e!4624425)))

(declare-fun b!7813942 () Bool)

(declare-fun e!4624429 () Bool)

(assert (=> b!7813942 (= e!4624429 (nullable!9289 lt!2675984))))

(declare-fun b!7813944 () Bool)

(declare-fun res!3111433 () Bool)

(assert (=> b!7813944 (=> res!3111433 e!4624425)))

(assert (=> b!7813944 (= res!3111433 e!4624431)))

(declare-fun res!3111428 () Bool)

(assert (=> b!7813944 (=> (not res!3111428) (not e!4624431))))

(assert (=> b!7813944 (= res!3111428 lt!2676000)))

(declare-fun b!7813945 () Bool)

(declare-fun res!3111431 () Bool)

(assert (=> b!7813945 (=> (not res!3111431) (not e!4624431))))

(assert (=> b!7813945 (= res!3111431 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7813946 () Bool)

(declare-fun res!3111432 () Bool)

(declare-fun e!4624426 () Bool)

(assert (=> b!7813946 (=> res!3111432 e!4624426)))

(assert (=> b!7813946 (= res!3111432 (not (isEmpty!42277 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7813947 () Bool)

(assert (=> b!7813947 (= e!4624430 (not lt!2676000))))

(declare-fun b!7813948 () Bool)

(assert (=> b!7813948 (= e!4624429 (matchR!10375 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7813949 () Bool)

(assert (=> b!7813949 (= e!4624427 e!4624426)))

(declare-fun res!3111429 () Bool)

(assert (=> b!7813949 (=> res!3111429 e!4624426)))

(assert (=> b!7813949 (= res!3111429 call!724922)))

(declare-fun b!7813950 () Bool)

(assert (=> b!7813950 (= e!4624426 (not (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675984))))))

(declare-fun d!2349024 () Bool)

(assert (=> d!2349024 e!4624428))

(declare-fun c!1438714 () Bool)

(assert (=> d!2349024 (= c!1438714 ((_ is EmptyExpr!20917) lt!2675984))))

(assert (=> d!2349024 (= lt!2676000 e!4624429)))

(declare-fun c!1438715 () Bool)

(assert (=> d!2349024 (= c!1438715 (isEmpty!42277 (t!388489 s!14225)))))

(assert (=> d!2349024 (validRegex!11331 lt!2675984)))

(assert (=> d!2349024 (= (matchR!10375 lt!2675984 (t!388489 s!14225)) lt!2676000)))

(declare-fun b!7813943 () Bool)

(declare-fun res!3111427 () Bool)

(assert (=> b!7813943 (=> (not res!3111427) (not e!4624431))))

(assert (=> b!7813943 (= res!3111427 (not call!724922))))

(assert (= (and d!2349024 c!1438715) b!7813942))

(assert (= (and d!2349024 (not c!1438715)) b!7813948))

(assert (= (and d!2349024 c!1438714) b!7813937))

(assert (= (and d!2349024 (not c!1438714)) b!7813938))

(assert (= (and b!7813938 c!1438713) b!7813947))

(assert (= (and b!7813938 (not c!1438713)) b!7813941))

(assert (= (and b!7813941 (not res!3111426)) b!7813944))

(assert (= (and b!7813944 res!3111428) b!7813943))

(assert (= (and b!7813943 res!3111427) b!7813945))

(assert (= (and b!7813945 res!3111431) b!7813939))

(assert (= (and b!7813944 (not res!3111433)) b!7813940))

(assert (= (and b!7813940 res!3111430) b!7813949))

(assert (= (and b!7813949 (not res!3111429)) b!7813946))

(assert (= (and b!7813946 (not res!3111432)) b!7813950))

(assert (= (or b!7813937 b!7813943 b!7813949) bm!724917))

(assert (=> bm!724917 m!8242950))

(assert (=> b!7813950 m!8242952))

(assert (=> b!7813948 m!8242952))

(assert (=> b!7813948 m!8242952))

(declare-fun m!8243022 () Bool)

(assert (=> b!7813948 m!8243022))

(assert (=> b!7813948 m!8242956))

(assert (=> b!7813948 m!8243022))

(assert (=> b!7813948 m!8242956))

(declare-fun m!8243024 () Bool)

(assert (=> b!7813948 m!8243024))

(assert (=> d!2349024 m!8242950))

(assert (=> d!2349024 m!8242894))

(assert (=> b!7813946 m!8242956))

(assert (=> b!7813946 m!8242956))

(assert (=> b!7813946 m!8242962))

(declare-fun m!8243026 () Bool)

(assert (=> b!7813942 m!8243026))

(assert (=> b!7813945 m!8242956))

(assert (=> b!7813945 m!8242956))

(assert (=> b!7813945 m!8242962))

(assert (=> b!7813939 m!8242952))

(assert (=> b!7813659 d!2349024))

(declare-fun b!7813951 () Bool)

(declare-fun e!4624435 () Bool)

(declare-fun lt!2676001 () Bool)

(declare-fun call!724927 () Bool)

(assert (=> b!7813951 (= e!4624435 (= lt!2676001 call!724927))))

(declare-fun b!7813952 () Bool)

(declare-fun e!4624437 () Bool)

(assert (=> b!7813952 (= e!4624435 e!4624437)))

(declare-fun c!1438716 () Bool)

(assert (=> b!7813952 (= c!1438716 ((_ is EmptyLang!20917) r2!6144))))

(declare-fun b!7813953 () Bool)

(declare-fun e!4624438 () Bool)

(assert (=> b!7813953 (= e!4624438 (= (head!15978 s!14225) (c!1438650 r2!6144)))))

(declare-fun b!7813954 () Bool)

(declare-fun e!4624432 () Bool)

(declare-fun e!4624434 () Bool)

(assert (=> b!7813954 (= e!4624432 e!4624434)))

(declare-fun res!3111438 () Bool)

(assert (=> b!7813954 (=> (not res!3111438) (not e!4624434))))

(assert (=> b!7813954 (= res!3111438 (not lt!2676001))))

(declare-fun bm!724922 () Bool)

(assert (=> bm!724922 (= call!724927 (isEmpty!42277 s!14225))))

(declare-fun b!7813955 () Bool)

(declare-fun res!3111434 () Bool)

(assert (=> b!7813955 (=> res!3111434 e!4624432)))

(assert (=> b!7813955 (= res!3111434 (not ((_ is ElementMatch!20917) r2!6144)))))

(assert (=> b!7813955 (= e!4624437 e!4624432)))

(declare-fun b!7813956 () Bool)

(declare-fun e!4624436 () Bool)

(assert (=> b!7813956 (= e!4624436 (nullable!9289 r2!6144))))

(declare-fun b!7813958 () Bool)

(declare-fun res!3111441 () Bool)

(assert (=> b!7813958 (=> res!3111441 e!4624432)))

(assert (=> b!7813958 (= res!3111441 e!4624438)))

(declare-fun res!3111436 () Bool)

(assert (=> b!7813958 (=> (not res!3111436) (not e!4624438))))

(assert (=> b!7813958 (= res!3111436 lt!2676001)))

(declare-fun b!7813959 () Bool)

(declare-fun res!3111439 () Bool)

(assert (=> b!7813959 (=> (not res!3111439) (not e!4624438))))

(assert (=> b!7813959 (= res!3111439 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7813960 () Bool)

(declare-fun res!3111440 () Bool)

(declare-fun e!4624433 () Bool)

(assert (=> b!7813960 (=> res!3111440 e!4624433)))

(assert (=> b!7813960 (= res!3111440 (not (isEmpty!42277 (tail!15519 s!14225))))))

(declare-fun b!7813961 () Bool)

(assert (=> b!7813961 (= e!4624437 (not lt!2676001))))

(declare-fun b!7813962 () Bool)

(assert (=> b!7813962 (= e!4624436 (matchR!10375 (derivativeStep!6248 r2!6144 (head!15978 s!14225)) (tail!15519 s!14225)))))

(declare-fun b!7813963 () Bool)

(assert (=> b!7813963 (= e!4624434 e!4624433)))

(declare-fun res!3111437 () Bool)

(assert (=> b!7813963 (=> res!3111437 e!4624433)))

(assert (=> b!7813963 (= res!3111437 call!724927)))

(declare-fun b!7813964 () Bool)

(assert (=> b!7813964 (= e!4624433 (not (= (head!15978 s!14225) (c!1438650 r2!6144))))))

(declare-fun d!2349026 () Bool)

(assert (=> d!2349026 e!4624435))

(declare-fun c!1438717 () Bool)

(assert (=> d!2349026 (= c!1438717 ((_ is EmptyExpr!20917) r2!6144))))

(assert (=> d!2349026 (= lt!2676001 e!4624436)))

(declare-fun c!1438718 () Bool)

(assert (=> d!2349026 (= c!1438718 (isEmpty!42277 s!14225))))

(assert (=> d!2349026 (validRegex!11331 r2!6144)))

(assert (=> d!2349026 (= (matchR!10375 r2!6144 s!14225) lt!2676001)))

(declare-fun b!7813957 () Bool)

(declare-fun res!3111435 () Bool)

(assert (=> b!7813957 (=> (not res!3111435) (not e!4624438))))

(assert (=> b!7813957 (= res!3111435 (not call!724927))))

(assert (= (and d!2349026 c!1438718) b!7813956))

(assert (= (and d!2349026 (not c!1438718)) b!7813962))

(assert (= (and d!2349026 c!1438717) b!7813951))

(assert (= (and d!2349026 (not c!1438717)) b!7813952))

(assert (= (and b!7813952 c!1438716) b!7813961))

(assert (= (and b!7813952 (not c!1438716)) b!7813955))

(assert (= (and b!7813955 (not res!3111434)) b!7813958))

(assert (= (and b!7813958 res!3111436) b!7813957))

(assert (= (and b!7813957 res!3111435) b!7813959))

(assert (= (and b!7813959 res!3111439) b!7813953))

(assert (= (and b!7813958 (not res!3111441)) b!7813954))

(assert (= (and b!7813954 res!3111438) b!7813963))

(assert (= (and b!7813963 (not res!3111437)) b!7813960))

(assert (= (and b!7813960 (not res!3111440)) b!7813964))

(assert (= (or b!7813951 b!7813957 b!7813963) bm!724922))

(declare-fun m!8243028 () Bool)

(assert (=> bm!724922 m!8243028))

(declare-fun m!8243030 () Bool)

(assert (=> b!7813964 m!8243030))

(assert (=> b!7813962 m!8243030))

(assert (=> b!7813962 m!8243030))

(declare-fun m!8243032 () Bool)

(assert (=> b!7813962 m!8243032))

(declare-fun m!8243034 () Bool)

(assert (=> b!7813962 m!8243034))

(assert (=> b!7813962 m!8243032))

(assert (=> b!7813962 m!8243034))

(declare-fun m!8243036 () Bool)

(assert (=> b!7813962 m!8243036))

(assert (=> d!2349026 m!8243028))

(assert (=> d!2349026 m!8242888))

(assert (=> b!7813960 m!8243034))

(assert (=> b!7813960 m!8243034))

(declare-fun m!8243038 () Bool)

(assert (=> b!7813960 m!8243038))

(declare-fun m!8243040 () Bool)

(assert (=> b!7813956 m!8243040))

(assert (=> b!7813959 m!8243034))

(assert (=> b!7813959 m!8243034))

(assert (=> b!7813959 m!8243038))

(assert (=> b!7813953 m!8243030))

(assert (=> b!7813657 d!2349026))

(declare-fun b!7813975 () Bool)

(declare-fun e!4624447 () Bool)

(declare-fun lt!2676003 () Bool)

(declare-fun call!724932 () Bool)

(assert (=> b!7813975 (= e!4624447 (= lt!2676003 call!724932))))

(declare-fun b!7813976 () Bool)

(declare-fun e!4624449 () Bool)

(assert (=> b!7813976 (= e!4624447 e!4624449)))

(declare-fun c!1438724 () Bool)

(assert (=> b!7813976 (= c!1438724 ((_ is EmptyLang!20917) r1!6206))))

(declare-fun b!7813977 () Bool)

(declare-fun e!4624450 () Bool)

(assert (=> b!7813977 (= e!4624450 (= (head!15978 s!14225) (c!1438650 r1!6206)))))

(declare-fun b!7813978 () Bool)

(declare-fun e!4624444 () Bool)

(declare-fun e!4624446 () Bool)

(assert (=> b!7813978 (= e!4624444 e!4624446)))

(declare-fun res!3111446 () Bool)

(assert (=> b!7813978 (=> (not res!3111446) (not e!4624446))))

(assert (=> b!7813978 (= res!3111446 (not lt!2676003))))

(declare-fun bm!724927 () Bool)

(assert (=> bm!724927 (= call!724932 (isEmpty!42277 s!14225))))

(declare-fun b!7813979 () Bool)

(declare-fun res!3111442 () Bool)

(assert (=> b!7813979 (=> res!3111442 e!4624444)))

(assert (=> b!7813979 (= res!3111442 (not ((_ is ElementMatch!20917) r1!6206)))))

(assert (=> b!7813979 (= e!4624449 e!4624444)))

(declare-fun b!7813980 () Bool)

(declare-fun e!4624448 () Bool)

(assert (=> b!7813980 (= e!4624448 (nullable!9289 r1!6206))))

(declare-fun b!7813982 () Bool)

(declare-fun res!3111449 () Bool)

(assert (=> b!7813982 (=> res!3111449 e!4624444)))

(assert (=> b!7813982 (= res!3111449 e!4624450)))

(declare-fun res!3111444 () Bool)

(assert (=> b!7813982 (=> (not res!3111444) (not e!4624450))))

(assert (=> b!7813982 (= res!3111444 lt!2676003)))

(declare-fun b!7813983 () Bool)

(declare-fun res!3111447 () Bool)

(assert (=> b!7813983 (=> (not res!3111447) (not e!4624450))))

(assert (=> b!7813983 (= res!3111447 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7813984 () Bool)

(declare-fun res!3111448 () Bool)

(declare-fun e!4624445 () Bool)

(assert (=> b!7813984 (=> res!3111448 e!4624445)))

(assert (=> b!7813984 (= res!3111448 (not (isEmpty!42277 (tail!15519 s!14225))))))

(declare-fun b!7813985 () Bool)

(assert (=> b!7813985 (= e!4624449 (not lt!2676003))))

(declare-fun b!7813986 () Bool)

(assert (=> b!7813986 (= e!4624448 (matchR!10375 (derivativeStep!6248 r1!6206 (head!15978 s!14225)) (tail!15519 s!14225)))))

(declare-fun b!7813987 () Bool)

(assert (=> b!7813987 (= e!4624446 e!4624445)))

(declare-fun res!3111445 () Bool)

(assert (=> b!7813987 (=> res!3111445 e!4624445)))

(assert (=> b!7813987 (= res!3111445 call!724932)))

(declare-fun b!7813988 () Bool)

(assert (=> b!7813988 (= e!4624445 (not (= (head!15978 s!14225) (c!1438650 r1!6206))))))

(declare-fun d!2349028 () Bool)

(assert (=> d!2349028 e!4624447))

(declare-fun c!1438725 () Bool)

(assert (=> d!2349028 (= c!1438725 ((_ is EmptyExpr!20917) r1!6206))))

(assert (=> d!2349028 (= lt!2676003 e!4624448)))

(declare-fun c!1438726 () Bool)

(assert (=> d!2349028 (= c!1438726 (isEmpty!42277 s!14225))))

(assert (=> d!2349028 (validRegex!11331 r1!6206)))

(assert (=> d!2349028 (= (matchR!10375 r1!6206 s!14225) lt!2676003)))

(declare-fun b!7813981 () Bool)

(declare-fun res!3111443 () Bool)

(assert (=> b!7813981 (=> (not res!3111443) (not e!4624450))))

(assert (=> b!7813981 (= res!3111443 (not call!724932))))

(assert (= (and d!2349028 c!1438726) b!7813980))

(assert (= (and d!2349028 (not c!1438726)) b!7813986))

(assert (= (and d!2349028 c!1438725) b!7813975))

(assert (= (and d!2349028 (not c!1438725)) b!7813976))

(assert (= (and b!7813976 c!1438724) b!7813985))

(assert (= (and b!7813976 (not c!1438724)) b!7813979))

(assert (= (and b!7813979 (not res!3111442)) b!7813982))

(assert (= (and b!7813982 res!3111444) b!7813981))

(assert (= (and b!7813981 res!3111443) b!7813983))

(assert (= (and b!7813983 res!3111447) b!7813977))

(assert (= (and b!7813982 (not res!3111449)) b!7813978))

(assert (= (and b!7813978 res!3111446) b!7813987))

(assert (= (and b!7813987 (not res!3111445)) b!7813984))

(assert (= (and b!7813984 (not res!3111448)) b!7813988))

(assert (= (or b!7813975 b!7813981 b!7813987) bm!724927))

(assert (=> bm!724927 m!8243028))

(assert (=> b!7813988 m!8243030))

(assert (=> b!7813986 m!8243030))

(assert (=> b!7813986 m!8243030))

(declare-fun m!8243058 () Bool)

(assert (=> b!7813986 m!8243058))

(assert (=> b!7813986 m!8243034))

(assert (=> b!7813986 m!8243058))

(assert (=> b!7813986 m!8243034))

(declare-fun m!8243060 () Bool)

(assert (=> b!7813986 m!8243060))

(assert (=> d!2349028 m!8243028))

(assert (=> d!2349028 m!8242890))

(assert (=> b!7813984 m!8243034))

(assert (=> b!7813984 m!8243034))

(assert (=> b!7813984 m!8243038))

(declare-fun m!8243062 () Bool)

(assert (=> b!7813980 m!8243062))

(assert (=> b!7813983 m!8243034))

(assert (=> b!7813983 m!8243034))

(assert (=> b!7813983 m!8243038))

(assert (=> b!7813977 m!8243030))

(assert (=> b!7813662 d!2349028))

(declare-fun b!7814013 () Bool)

(declare-fun e!4624466 () Bool)

(declare-fun lt!2676006 () Bool)

(declare-fun call!724938 () Bool)

(assert (=> b!7814013 (= e!4624466 (= lt!2676006 call!724938))))

(declare-fun b!7814014 () Bool)

(declare-fun e!4624468 () Bool)

(assert (=> b!7814014 (= e!4624466 e!4624468)))

(declare-fun c!1438735 () Bool)

(assert (=> b!7814014 (= c!1438735 ((_ is EmptyLang!20917) lt!2675983))))

(declare-fun b!7814015 () Bool)

(declare-fun e!4624469 () Bool)

(assert (=> b!7814015 (= e!4624469 (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675983)))))

(declare-fun b!7814016 () Bool)

(declare-fun e!4624463 () Bool)

(declare-fun e!4624465 () Bool)

(assert (=> b!7814016 (= e!4624463 e!4624465)))

(declare-fun res!3111462 () Bool)

(assert (=> b!7814016 (=> (not res!3111462) (not e!4624465))))

(assert (=> b!7814016 (= res!3111462 (not lt!2676006))))

(declare-fun bm!724933 () Bool)

(assert (=> bm!724933 (= call!724938 (isEmpty!42277 (t!388489 s!14225)))))

(declare-fun b!7814017 () Bool)

(declare-fun res!3111458 () Bool)

(assert (=> b!7814017 (=> res!3111458 e!4624463)))

(assert (=> b!7814017 (= res!3111458 (not ((_ is ElementMatch!20917) lt!2675983)))))

(assert (=> b!7814017 (= e!4624468 e!4624463)))

(declare-fun b!7814018 () Bool)

(declare-fun e!4624467 () Bool)

(assert (=> b!7814018 (= e!4624467 (nullable!9289 lt!2675983))))

(declare-fun b!7814020 () Bool)

(declare-fun res!3111465 () Bool)

(assert (=> b!7814020 (=> res!3111465 e!4624463)))

(assert (=> b!7814020 (= res!3111465 e!4624469)))

(declare-fun res!3111460 () Bool)

(assert (=> b!7814020 (=> (not res!3111460) (not e!4624469))))

(assert (=> b!7814020 (= res!3111460 lt!2676006)))

(declare-fun b!7814021 () Bool)

(declare-fun res!3111463 () Bool)

(assert (=> b!7814021 (=> (not res!3111463) (not e!4624469))))

(assert (=> b!7814021 (= res!3111463 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7814022 () Bool)

(declare-fun res!3111464 () Bool)

(declare-fun e!4624464 () Bool)

(assert (=> b!7814022 (=> res!3111464 e!4624464)))

(assert (=> b!7814022 (= res!3111464 (not (isEmpty!42277 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814023 () Bool)

(assert (=> b!7814023 (= e!4624468 (not lt!2676006))))

(declare-fun b!7814024 () Bool)

(assert (=> b!7814024 (= e!4624467 (matchR!10375 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7814025 () Bool)

(assert (=> b!7814025 (= e!4624465 e!4624464)))

(declare-fun res!3111461 () Bool)

(assert (=> b!7814025 (=> res!3111461 e!4624464)))

(assert (=> b!7814025 (= res!3111461 call!724938)))

(declare-fun b!7814026 () Bool)

(assert (=> b!7814026 (= e!4624464 (not (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675983))))))

(declare-fun d!2349034 () Bool)

(assert (=> d!2349034 e!4624466))

(declare-fun c!1438736 () Bool)

(assert (=> d!2349034 (= c!1438736 ((_ is EmptyExpr!20917) lt!2675983))))

(assert (=> d!2349034 (= lt!2676006 e!4624467)))

(declare-fun c!1438737 () Bool)

(assert (=> d!2349034 (= c!1438737 (isEmpty!42277 (t!388489 s!14225)))))

(assert (=> d!2349034 (validRegex!11331 lt!2675983)))

(assert (=> d!2349034 (= (matchR!10375 lt!2675983 (t!388489 s!14225)) lt!2676006)))

(declare-fun b!7814019 () Bool)

(declare-fun res!3111459 () Bool)

(assert (=> b!7814019 (=> (not res!3111459) (not e!4624469))))

(assert (=> b!7814019 (= res!3111459 (not call!724938))))

(assert (= (and d!2349034 c!1438737) b!7814018))

(assert (= (and d!2349034 (not c!1438737)) b!7814024))

(assert (= (and d!2349034 c!1438736) b!7814013))

(assert (= (and d!2349034 (not c!1438736)) b!7814014))

(assert (= (and b!7814014 c!1438735) b!7814023))

(assert (= (and b!7814014 (not c!1438735)) b!7814017))

(assert (= (and b!7814017 (not res!3111458)) b!7814020))

(assert (= (and b!7814020 res!3111460) b!7814019))

(assert (= (and b!7814019 res!3111459) b!7814021))

(assert (= (and b!7814021 res!3111463) b!7814015))

(assert (= (and b!7814020 (not res!3111465)) b!7814016))

(assert (= (and b!7814016 res!3111462) b!7814025))

(assert (= (and b!7814025 (not res!3111461)) b!7814022))

(assert (= (and b!7814022 (not res!3111464)) b!7814026))

(assert (= (or b!7814013 b!7814019 b!7814025) bm!724933))

(assert (=> bm!724933 m!8242950))

(assert (=> b!7814026 m!8242952))

(assert (=> b!7814024 m!8242952))

(assert (=> b!7814024 m!8242952))

(declare-fun m!8243072 () Bool)

(assert (=> b!7814024 m!8243072))

(assert (=> b!7814024 m!8242956))

(assert (=> b!7814024 m!8243072))

(assert (=> b!7814024 m!8242956))

(declare-fun m!8243074 () Bool)

(assert (=> b!7814024 m!8243074))

(assert (=> d!2349034 m!8242950))

(assert (=> d!2349034 m!8242904))

(assert (=> b!7814022 m!8242956))

(assert (=> b!7814022 m!8242956))

(assert (=> b!7814022 m!8242962))

(declare-fun m!8243076 () Bool)

(assert (=> b!7814018 m!8243076))

(assert (=> b!7814021 m!8242956))

(assert (=> b!7814021 m!8242956))

(assert (=> b!7814021 m!8242962))

(assert (=> b!7814015 m!8242952))

(assert (=> b!7813662 d!2349034))

(declare-fun d!2349036 () Bool)

(declare-fun e!4624489 () Bool)

(assert (=> d!2349036 e!4624489))

(declare-fun res!3111470 () Bool)

(assert (=> d!2349036 (=> res!3111470 e!4624489)))

(assert (=> d!2349036 (= res!3111470 (matchR!10375 lt!2675983 (t!388489 s!14225)))))

(declare-fun lt!2676009 () Unit!168636)

(declare-fun choose!59585 (Regex!20917 Regex!20917 List!73754) Unit!168636)

(assert (=> d!2349036 (= lt!2676009 (choose!59585 lt!2675983 lt!2675984 (t!388489 s!14225)))))

(declare-fun e!4624490 () Bool)

(assert (=> d!2349036 e!4624490))

(declare-fun res!3111471 () Bool)

(assert (=> d!2349036 (=> (not res!3111471) (not e!4624490))))

(assert (=> d!2349036 (= res!3111471 (validRegex!11331 lt!2675983))))

(assert (=> d!2349036 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!436 lt!2675983 lt!2675984 (t!388489 s!14225)) lt!2676009)))

(declare-fun b!7814086 () Bool)

(assert (=> b!7814086 (= e!4624490 (validRegex!11331 lt!2675984))))

(declare-fun b!7814087 () Bool)

(assert (=> b!7814087 (= e!4624489 (matchR!10375 lt!2675984 (t!388489 s!14225)))))

(assert (= (and d!2349036 res!3111471) b!7814086))

(assert (= (and d!2349036 (not res!3111470)) b!7814087))

(assert (=> d!2349036 m!8242898))

(declare-fun m!8243078 () Bool)

(assert (=> d!2349036 m!8243078))

(assert (=> d!2349036 m!8242904))

(assert (=> b!7814086 m!8242894))

(assert (=> b!7814087 m!8242892))

(assert (=> b!7813662 d!2349036))

(declare-fun b!7814088 () Bool)

(declare-fun e!4624494 () Bool)

(declare-fun lt!2676010 () Bool)

(declare-fun call!724939 () Bool)

(assert (=> b!7814088 (= e!4624494 (= lt!2676010 call!724939))))

(declare-fun b!7814089 () Bool)

(declare-fun e!4624496 () Bool)

(assert (=> b!7814089 (= e!4624494 e!4624496)))

(declare-fun c!1438738 () Bool)

(assert (=> b!7814089 (= c!1438738 ((_ is EmptyLang!20917) (Union!20917 r1!6206 r2!6144)))))

(declare-fun e!4624497 () Bool)

(declare-fun b!7814090 () Bool)

(assert (=> b!7814090 (= e!4624497 (= (head!15978 s!14225) (c!1438650 (Union!20917 r1!6206 r2!6144))))))

(declare-fun b!7814091 () Bool)

(declare-fun e!4624491 () Bool)

(declare-fun e!4624493 () Bool)

(assert (=> b!7814091 (= e!4624491 e!4624493)))

(declare-fun res!3111476 () Bool)

(assert (=> b!7814091 (=> (not res!3111476) (not e!4624493))))

(assert (=> b!7814091 (= res!3111476 (not lt!2676010))))

(declare-fun bm!724934 () Bool)

(assert (=> bm!724934 (= call!724939 (isEmpty!42277 s!14225))))

(declare-fun b!7814092 () Bool)

(declare-fun res!3111472 () Bool)

(assert (=> b!7814092 (=> res!3111472 e!4624491)))

(assert (=> b!7814092 (= res!3111472 (not ((_ is ElementMatch!20917) (Union!20917 r1!6206 r2!6144))))))

(assert (=> b!7814092 (= e!4624496 e!4624491)))

(declare-fun b!7814093 () Bool)

(declare-fun e!4624495 () Bool)

(assert (=> b!7814093 (= e!4624495 (nullable!9289 (Union!20917 r1!6206 r2!6144)))))

(declare-fun b!7814095 () Bool)

(declare-fun res!3111479 () Bool)

(assert (=> b!7814095 (=> res!3111479 e!4624491)))

(assert (=> b!7814095 (= res!3111479 e!4624497)))

(declare-fun res!3111474 () Bool)

(assert (=> b!7814095 (=> (not res!3111474) (not e!4624497))))

(assert (=> b!7814095 (= res!3111474 lt!2676010)))

(declare-fun b!7814096 () Bool)

(declare-fun res!3111477 () Bool)

(assert (=> b!7814096 (=> (not res!3111477) (not e!4624497))))

(assert (=> b!7814096 (= res!3111477 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7814097 () Bool)

(declare-fun res!3111478 () Bool)

(declare-fun e!4624492 () Bool)

(assert (=> b!7814097 (=> res!3111478 e!4624492)))

(assert (=> b!7814097 (= res!3111478 (not (isEmpty!42277 (tail!15519 s!14225))))))

(declare-fun b!7814098 () Bool)

(assert (=> b!7814098 (= e!4624496 (not lt!2676010))))

(declare-fun b!7814099 () Bool)

(assert (=> b!7814099 (= e!4624495 (matchR!10375 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)) (tail!15519 s!14225)))))

(declare-fun b!7814100 () Bool)

(assert (=> b!7814100 (= e!4624493 e!4624492)))

(declare-fun res!3111475 () Bool)

(assert (=> b!7814100 (=> res!3111475 e!4624492)))

(assert (=> b!7814100 (= res!3111475 call!724939)))

(declare-fun b!7814101 () Bool)

(assert (=> b!7814101 (= e!4624492 (not (= (head!15978 s!14225) (c!1438650 (Union!20917 r1!6206 r2!6144)))))))

(declare-fun d!2349038 () Bool)

(assert (=> d!2349038 e!4624494))

(declare-fun c!1438739 () Bool)

(assert (=> d!2349038 (= c!1438739 ((_ is EmptyExpr!20917) (Union!20917 r1!6206 r2!6144)))))

(assert (=> d!2349038 (= lt!2676010 e!4624495)))

(declare-fun c!1438740 () Bool)

(assert (=> d!2349038 (= c!1438740 (isEmpty!42277 s!14225))))

(assert (=> d!2349038 (validRegex!11331 (Union!20917 r1!6206 r2!6144))))

(assert (=> d!2349038 (= (matchR!10375 (Union!20917 r1!6206 r2!6144) s!14225) lt!2676010)))

(declare-fun b!7814094 () Bool)

(declare-fun res!3111473 () Bool)

(assert (=> b!7814094 (=> (not res!3111473) (not e!4624497))))

(assert (=> b!7814094 (= res!3111473 (not call!724939))))

(assert (= (and d!2349038 c!1438740) b!7814093))

(assert (= (and d!2349038 (not c!1438740)) b!7814099))

(assert (= (and d!2349038 c!1438739) b!7814088))

(assert (= (and d!2349038 (not c!1438739)) b!7814089))

(assert (= (and b!7814089 c!1438738) b!7814098))

(assert (= (and b!7814089 (not c!1438738)) b!7814092))

(assert (= (and b!7814092 (not res!3111472)) b!7814095))

(assert (= (and b!7814095 res!3111474) b!7814094))

(assert (= (and b!7814094 res!3111473) b!7814096))

(assert (= (and b!7814096 res!3111477) b!7814090))

(assert (= (and b!7814095 (not res!3111479)) b!7814091))

(assert (= (and b!7814091 res!3111476) b!7814100))

(assert (= (and b!7814100 (not res!3111475)) b!7814097))

(assert (= (and b!7814097 (not res!3111478)) b!7814101))

(assert (= (or b!7814088 b!7814094 b!7814100) bm!724934))

(assert (=> bm!724934 m!8243028))

(assert (=> b!7814101 m!8243030))

(assert (=> b!7814099 m!8243030))

(assert (=> b!7814099 m!8243030))

(declare-fun m!8243080 () Bool)

(assert (=> b!7814099 m!8243080))

(assert (=> b!7814099 m!8243034))

(assert (=> b!7814099 m!8243080))

(assert (=> b!7814099 m!8243034))

(declare-fun m!8243082 () Bool)

(assert (=> b!7814099 m!8243082))

(assert (=> d!2349038 m!8243028))

(declare-fun m!8243084 () Bool)

(assert (=> d!2349038 m!8243084))

(assert (=> b!7814097 m!8243034))

(assert (=> b!7814097 m!8243034))

(assert (=> b!7814097 m!8243038))

(declare-fun m!8243086 () Bool)

(assert (=> b!7814093 m!8243086))

(assert (=> b!7814096 m!8243034))

(assert (=> b!7814096 m!8243034))

(assert (=> b!7814096 m!8243038))

(assert (=> b!7814090 m!8243030))

(assert (=> b!7813663 d!2349038))

(declare-fun b!7814102 () Bool)

(declare-fun e!4624498 () Bool)

(declare-fun e!4624499 () Bool)

(assert (=> b!7814102 (= e!4624498 e!4624499)))

(declare-fun c!1438742 () Bool)

(assert (=> b!7814102 (= c!1438742 ((_ is Union!20917) lt!2675983))))

(declare-fun d!2349040 () Bool)

(declare-fun res!3111483 () Bool)

(declare-fun e!4624504 () Bool)

(assert (=> d!2349040 (=> res!3111483 e!4624504)))

(assert (=> d!2349040 (= res!3111483 ((_ is ElementMatch!20917) lt!2675983))))

(assert (=> d!2349040 (= (validRegex!11331 lt!2675983) e!4624504)))

(declare-fun bm!724935 () Bool)

(declare-fun c!1438741 () Bool)

(declare-fun call!724940 () Bool)

(assert (=> bm!724935 (= call!724940 (validRegex!11331 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))

(declare-fun b!7814103 () Bool)

(declare-fun res!3111480 () Bool)

(declare-fun e!4624503 () Bool)

(assert (=> b!7814103 (=> res!3111480 e!4624503)))

(assert (=> b!7814103 (= res!3111480 (not ((_ is Concat!29762) lt!2675983)))))

(assert (=> b!7814103 (= e!4624499 e!4624503)))

(declare-fun b!7814104 () Bool)

(declare-fun e!4624500 () Bool)

(assert (=> b!7814104 (= e!4624500 call!724940)))

(declare-fun b!7814105 () Bool)

(assert (=> b!7814105 (= e!4624498 e!4624500)))

(declare-fun res!3111481 () Bool)

(assert (=> b!7814105 (= res!3111481 (not (nullable!9289 (reg!21246 lt!2675983))))))

(assert (=> b!7814105 (=> (not res!3111481) (not e!4624500))))

(declare-fun b!7814106 () Bool)

(declare-fun e!4624501 () Bool)

(declare-fun call!724942 () Bool)

(assert (=> b!7814106 (= e!4624501 call!724942)))

(declare-fun b!7814107 () Bool)

(assert (=> b!7814107 (= e!4624504 e!4624498)))

(assert (=> b!7814107 (= c!1438741 ((_ is Star!20917) lt!2675983))))

(declare-fun b!7814108 () Bool)

(declare-fun e!4624502 () Bool)

(assert (=> b!7814108 (= e!4624502 call!724942)))

(declare-fun b!7814109 () Bool)

(declare-fun res!3111482 () Bool)

(assert (=> b!7814109 (=> (not res!3111482) (not e!4624501))))

(declare-fun call!724941 () Bool)

(assert (=> b!7814109 (= res!3111482 call!724941)))

(assert (=> b!7814109 (= e!4624499 e!4624501)))

(declare-fun bm!724936 () Bool)

(assert (=> bm!724936 (= call!724942 call!724940)))

(declare-fun bm!724937 () Bool)

(assert (=> bm!724937 (= call!724941 (validRegex!11331 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))

(declare-fun b!7814110 () Bool)

(assert (=> b!7814110 (= e!4624503 e!4624502)))

(declare-fun res!3111484 () Bool)

(assert (=> b!7814110 (=> (not res!3111484) (not e!4624502))))

(assert (=> b!7814110 (= res!3111484 call!724941)))

(assert (= (and d!2349040 (not res!3111483)) b!7814107))

(assert (= (and b!7814107 c!1438741) b!7814105))

(assert (= (and b!7814107 (not c!1438741)) b!7814102))

(assert (= (and b!7814105 res!3111481) b!7814104))

(assert (= (and b!7814102 c!1438742) b!7814109))

(assert (= (and b!7814102 (not c!1438742)) b!7814103))

(assert (= (and b!7814109 res!3111482) b!7814106))

(assert (= (and b!7814103 (not res!3111480)) b!7814110))

(assert (= (and b!7814110 res!3111484) b!7814108))

(assert (= (or b!7814109 b!7814110) bm!724937))

(assert (= (or b!7814106 b!7814108) bm!724936))

(assert (= (or b!7814104 bm!724936) bm!724935))

(declare-fun m!8243088 () Bool)

(assert (=> bm!724935 m!8243088))

(declare-fun m!8243090 () Bool)

(assert (=> b!7814105 m!8243090))

(declare-fun m!8243092 () Bool)

(assert (=> bm!724937 m!8243092))

(assert (=> b!7813668 d!2349040))

(declare-fun b!7814131 () Bool)

(declare-fun c!1438756 () Bool)

(assert (=> b!7814131 (= c!1438756 (nullable!9289 (regOne!42346 r2!6144)))))

(declare-fun e!4624516 () Regex!20917)

(declare-fun e!4624517 () Regex!20917)

(assert (=> b!7814131 (= e!4624516 e!4624517)))

(declare-fun b!7814132 () Bool)

(declare-fun e!4624515 () Regex!20917)

(assert (=> b!7814132 (= e!4624515 (ite (= (h!80078 s!14225) (c!1438650 r2!6144)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814133 () Bool)

(declare-fun call!724954 () Regex!20917)

(assert (=> b!7814133 (= e!4624517 (Union!20917 (Concat!29762 call!724954 (regTwo!42346 r2!6144)) EmptyLang!20917))))

(declare-fun b!7814134 () Bool)

(declare-fun e!4624518 () Regex!20917)

(declare-fun call!724951 () Regex!20917)

(declare-fun call!724953 () Regex!20917)

(assert (=> b!7814134 (= e!4624518 (Union!20917 call!724951 call!724953))))

(declare-fun b!7814135 () Bool)

(declare-fun e!4624519 () Regex!20917)

(assert (=> b!7814135 (= e!4624519 e!4624515)))

(declare-fun c!1438755 () Bool)

(assert (=> b!7814135 (= c!1438755 ((_ is ElementMatch!20917) r2!6144))))

(declare-fun bm!724946 () Bool)

(declare-fun call!724952 () Regex!20917)

(assert (=> bm!724946 (= call!724954 call!724952)))

(declare-fun c!1438757 () Bool)

(declare-fun bm!724947 () Bool)

(assert (=> bm!724947 (= call!724953 (derivativeStep!6248 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)) (h!80078 s!14225)))))

(declare-fun b!7814137 () Bool)

(assert (=> b!7814137 (= e!4624519 EmptyLang!20917)))

(declare-fun b!7814138 () Bool)

(assert (=> b!7814138 (= e!4624518 e!4624516)))

(declare-fun c!1438754 () Bool)

(assert (=> b!7814138 (= c!1438754 ((_ is Star!20917) r2!6144))))

(declare-fun bm!724948 () Bool)

(assert (=> bm!724948 (= call!724951 (derivativeStep!6248 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))) (h!80078 s!14225)))))

(declare-fun b!7814139 () Bool)

(assert (=> b!7814139 (= e!4624516 (Concat!29762 call!724952 r2!6144))))

(declare-fun d!2349042 () Bool)

(declare-fun lt!2676013 () Regex!20917)

(assert (=> d!2349042 (validRegex!11331 lt!2676013)))

(assert (=> d!2349042 (= lt!2676013 e!4624519)))

(declare-fun c!1438753 () Bool)

(assert (=> d!2349042 (= c!1438753 (or ((_ is EmptyExpr!20917) r2!6144) ((_ is EmptyLang!20917) r2!6144)))))

(assert (=> d!2349042 (validRegex!11331 r2!6144)))

(assert (=> d!2349042 (= (derivativeStep!6248 r2!6144 (h!80078 s!14225)) lt!2676013)))

(declare-fun b!7814136 () Bool)

(assert (=> b!7814136 (= e!4624517 (Union!20917 (Concat!29762 call!724953 (regTwo!42346 r2!6144)) call!724954))))

(declare-fun bm!724949 () Bool)

(assert (=> bm!724949 (= call!724952 call!724951)))

(declare-fun b!7814140 () Bool)

(assert (=> b!7814140 (= c!1438757 ((_ is Union!20917) r2!6144))))

(assert (=> b!7814140 (= e!4624515 e!4624518)))

(assert (= (and d!2349042 c!1438753) b!7814137))

(assert (= (and d!2349042 (not c!1438753)) b!7814135))

(assert (= (and b!7814135 c!1438755) b!7814132))

(assert (= (and b!7814135 (not c!1438755)) b!7814140))

(assert (= (and b!7814140 c!1438757) b!7814134))

(assert (= (and b!7814140 (not c!1438757)) b!7814138))

(assert (= (and b!7814138 c!1438754) b!7814139))

(assert (= (and b!7814138 (not c!1438754)) b!7814131))

(assert (= (and b!7814131 c!1438756) b!7814136))

(assert (= (and b!7814131 (not c!1438756)) b!7814133))

(assert (= (or b!7814136 b!7814133) bm!724946))

(assert (= (or b!7814139 bm!724946) bm!724949))

(assert (= (or b!7814134 b!7814136) bm!724947))

(assert (= (or b!7814134 bm!724949) bm!724948))

(declare-fun m!8243094 () Bool)

(assert (=> b!7814131 m!8243094))

(declare-fun m!8243096 () Bool)

(assert (=> bm!724947 m!8243096))

(declare-fun m!8243098 () Bool)

(assert (=> bm!724948 m!8243098))

(declare-fun m!8243100 () Bool)

(assert (=> d!2349042 m!8243100))

(assert (=> d!2349042 m!8242888))

(assert (=> b!7813668 d!2349042))

(declare-fun b!7814141 () Bool)

(declare-fun c!1438761 () Bool)

(assert (=> b!7814141 (= c!1438761 (nullable!9289 (regOne!42346 r1!6206)))))

(declare-fun e!4624521 () Regex!20917)

(declare-fun e!4624522 () Regex!20917)

(assert (=> b!7814141 (= e!4624521 e!4624522)))

(declare-fun b!7814142 () Bool)

(declare-fun e!4624520 () Regex!20917)

(assert (=> b!7814142 (= e!4624520 (ite (= (h!80078 s!14225) (c!1438650 r1!6206)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814143 () Bool)

(declare-fun call!724958 () Regex!20917)

(assert (=> b!7814143 (= e!4624522 (Union!20917 (Concat!29762 call!724958 (regTwo!42346 r1!6206)) EmptyLang!20917))))

(declare-fun b!7814144 () Bool)

(declare-fun e!4624523 () Regex!20917)

(declare-fun call!724955 () Regex!20917)

(declare-fun call!724957 () Regex!20917)

(assert (=> b!7814144 (= e!4624523 (Union!20917 call!724955 call!724957))))

(declare-fun b!7814145 () Bool)

(declare-fun e!4624524 () Regex!20917)

(assert (=> b!7814145 (= e!4624524 e!4624520)))

(declare-fun c!1438760 () Bool)

(assert (=> b!7814145 (= c!1438760 ((_ is ElementMatch!20917) r1!6206))))

(declare-fun bm!724950 () Bool)

(declare-fun call!724956 () Regex!20917)

(assert (=> bm!724950 (= call!724958 call!724956)))

(declare-fun bm!724951 () Bool)

(declare-fun c!1438762 () Bool)

(assert (=> bm!724951 (= call!724957 (derivativeStep!6248 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)) (h!80078 s!14225)))))

(declare-fun b!7814147 () Bool)

(assert (=> b!7814147 (= e!4624524 EmptyLang!20917)))

(declare-fun b!7814148 () Bool)

(assert (=> b!7814148 (= e!4624523 e!4624521)))

(declare-fun c!1438759 () Bool)

(assert (=> b!7814148 (= c!1438759 ((_ is Star!20917) r1!6206))))

(declare-fun bm!724952 () Bool)

(assert (=> bm!724952 (= call!724955 (derivativeStep!6248 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))) (h!80078 s!14225)))))

(declare-fun b!7814149 () Bool)

(assert (=> b!7814149 (= e!4624521 (Concat!29762 call!724956 r1!6206))))

(declare-fun d!2349044 () Bool)

(declare-fun lt!2676014 () Regex!20917)

(assert (=> d!2349044 (validRegex!11331 lt!2676014)))

(assert (=> d!2349044 (= lt!2676014 e!4624524)))

(declare-fun c!1438758 () Bool)

(assert (=> d!2349044 (= c!1438758 (or ((_ is EmptyExpr!20917) r1!6206) ((_ is EmptyLang!20917) r1!6206)))))

(assert (=> d!2349044 (validRegex!11331 r1!6206)))

(assert (=> d!2349044 (= (derivativeStep!6248 r1!6206 (h!80078 s!14225)) lt!2676014)))

(declare-fun b!7814146 () Bool)

(assert (=> b!7814146 (= e!4624522 (Union!20917 (Concat!29762 call!724957 (regTwo!42346 r1!6206)) call!724958))))

(declare-fun bm!724953 () Bool)

(assert (=> bm!724953 (= call!724956 call!724955)))

(declare-fun b!7814150 () Bool)

(assert (=> b!7814150 (= c!1438762 ((_ is Union!20917) r1!6206))))

(assert (=> b!7814150 (= e!4624520 e!4624523)))

(assert (= (and d!2349044 c!1438758) b!7814147))

(assert (= (and d!2349044 (not c!1438758)) b!7814145))

(assert (= (and b!7814145 c!1438760) b!7814142))

(assert (= (and b!7814145 (not c!1438760)) b!7814150))

(assert (= (and b!7814150 c!1438762) b!7814144))

(assert (= (and b!7814150 (not c!1438762)) b!7814148))

(assert (= (and b!7814148 c!1438759) b!7814149))

(assert (= (and b!7814148 (not c!1438759)) b!7814141))

(assert (= (and b!7814141 c!1438761) b!7814146))

(assert (= (and b!7814141 (not c!1438761)) b!7814143))

(assert (= (or b!7814146 b!7814143) bm!724950))

(assert (= (or b!7814149 bm!724950) bm!724953))

(assert (= (or b!7814144 b!7814146) bm!724951))

(assert (= (or b!7814144 bm!724953) bm!724952))

(declare-fun m!8243102 () Bool)

(assert (=> b!7814141 m!8243102))

(declare-fun m!8243104 () Bool)

(assert (=> bm!724951 m!8243104))

(declare-fun m!8243106 () Bool)

(assert (=> bm!724952 m!8243106))

(declare-fun m!8243108 () Bool)

(assert (=> d!2349044 m!8243108))

(assert (=> d!2349044 m!8242890))

(assert (=> b!7813668 d!2349044))

(declare-fun b!7814164 () Bool)

(declare-fun e!4624527 () Bool)

(declare-fun tp!2303251 () Bool)

(declare-fun tp!2303248 () Bool)

(assert (=> b!7814164 (= e!4624527 (and tp!2303251 tp!2303248))))

(assert (=> b!7813666 (= tp!2303172 e!4624527)))

(declare-fun b!7814161 () Bool)

(assert (=> b!7814161 (= e!4624527 tp_is_empty!52189)))

(declare-fun b!7814163 () Bool)

(declare-fun tp!2303249 () Bool)

(assert (=> b!7814163 (= e!4624527 tp!2303249)))

(declare-fun b!7814162 () Bool)

(declare-fun tp!2303247 () Bool)

(declare-fun tp!2303250 () Bool)

(assert (=> b!7814162 (= e!4624527 (and tp!2303247 tp!2303250))))

(assert (= (and b!7813666 ((_ is ElementMatch!20917) (regOne!42346 r1!6206))) b!7814161))

(assert (= (and b!7813666 ((_ is Concat!29762) (regOne!42346 r1!6206))) b!7814162))

(assert (= (and b!7813666 ((_ is Star!20917) (regOne!42346 r1!6206))) b!7814163))

(assert (= (and b!7813666 ((_ is Union!20917) (regOne!42346 r1!6206))) b!7814164))

(declare-fun b!7814168 () Bool)

(declare-fun e!4624528 () Bool)

(declare-fun tp!2303256 () Bool)

(declare-fun tp!2303253 () Bool)

(assert (=> b!7814168 (= e!4624528 (and tp!2303256 tp!2303253))))

(assert (=> b!7813666 (= tp!2303167 e!4624528)))

(declare-fun b!7814165 () Bool)

(assert (=> b!7814165 (= e!4624528 tp_is_empty!52189)))

(declare-fun b!7814167 () Bool)

(declare-fun tp!2303254 () Bool)

(assert (=> b!7814167 (= e!4624528 tp!2303254)))

(declare-fun b!7814166 () Bool)

(declare-fun tp!2303252 () Bool)

(declare-fun tp!2303255 () Bool)

(assert (=> b!7814166 (= e!4624528 (and tp!2303252 tp!2303255))))

(assert (= (and b!7813666 ((_ is ElementMatch!20917) (regTwo!42346 r1!6206))) b!7814165))

(assert (= (and b!7813666 ((_ is Concat!29762) (regTwo!42346 r1!6206))) b!7814166))

(assert (= (and b!7813666 ((_ is Star!20917) (regTwo!42346 r1!6206))) b!7814167))

(assert (= (and b!7813666 ((_ is Union!20917) (regTwo!42346 r1!6206))) b!7814168))

(declare-fun b!7814172 () Bool)

(declare-fun e!4624529 () Bool)

(declare-fun tp!2303261 () Bool)

(declare-fun tp!2303258 () Bool)

(assert (=> b!7814172 (= e!4624529 (and tp!2303261 tp!2303258))))

(assert (=> b!7813665 (= tp!2303173 e!4624529)))

(declare-fun b!7814169 () Bool)

(assert (=> b!7814169 (= e!4624529 tp_is_empty!52189)))

(declare-fun b!7814171 () Bool)

(declare-fun tp!2303259 () Bool)

(assert (=> b!7814171 (= e!4624529 tp!2303259)))

(declare-fun b!7814170 () Bool)

(declare-fun tp!2303257 () Bool)

(declare-fun tp!2303260 () Bool)

(assert (=> b!7814170 (= e!4624529 (and tp!2303257 tp!2303260))))

(assert (= (and b!7813665 ((_ is ElementMatch!20917) (reg!21246 r1!6206))) b!7814169))

(assert (= (and b!7813665 ((_ is Concat!29762) (reg!21246 r1!6206))) b!7814170))

(assert (= (and b!7813665 ((_ is Star!20917) (reg!21246 r1!6206))) b!7814171))

(assert (= (and b!7813665 ((_ is Union!20917) (reg!21246 r1!6206))) b!7814172))

(declare-fun b!7814176 () Bool)

(declare-fun e!4624530 () Bool)

(declare-fun tp!2303266 () Bool)

(declare-fun tp!2303263 () Bool)

(assert (=> b!7814176 (= e!4624530 (and tp!2303266 tp!2303263))))

(assert (=> b!7813670 (= tp!2303166 e!4624530)))

(declare-fun b!7814173 () Bool)

(assert (=> b!7814173 (= e!4624530 tp_is_empty!52189)))

(declare-fun b!7814175 () Bool)

(declare-fun tp!2303264 () Bool)

(assert (=> b!7814175 (= e!4624530 tp!2303264)))

(declare-fun b!7814174 () Bool)

(declare-fun tp!2303262 () Bool)

(declare-fun tp!2303265 () Bool)

(assert (=> b!7814174 (= e!4624530 (and tp!2303262 tp!2303265))))

(assert (= (and b!7813670 ((_ is ElementMatch!20917) (regOne!42347 r1!6206))) b!7814173))

(assert (= (and b!7813670 ((_ is Concat!29762) (regOne!42347 r1!6206))) b!7814174))

(assert (= (and b!7813670 ((_ is Star!20917) (regOne!42347 r1!6206))) b!7814175))

(assert (= (and b!7813670 ((_ is Union!20917) (regOne!42347 r1!6206))) b!7814176))

(declare-fun b!7814180 () Bool)

(declare-fun e!4624531 () Bool)

(declare-fun tp!2303271 () Bool)

(declare-fun tp!2303268 () Bool)

(assert (=> b!7814180 (= e!4624531 (and tp!2303271 tp!2303268))))

(assert (=> b!7813670 (= tp!2303170 e!4624531)))

(declare-fun b!7814177 () Bool)

(assert (=> b!7814177 (= e!4624531 tp_is_empty!52189)))

(declare-fun b!7814179 () Bool)

(declare-fun tp!2303269 () Bool)

(assert (=> b!7814179 (= e!4624531 tp!2303269)))

(declare-fun b!7814178 () Bool)

(declare-fun tp!2303267 () Bool)

(declare-fun tp!2303270 () Bool)

(assert (=> b!7814178 (= e!4624531 (and tp!2303267 tp!2303270))))

(assert (= (and b!7813670 ((_ is ElementMatch!20917) (regTwo!42347 r1!6206))) b!7814177))

(assert (= (and b!7813670 ((_ is Concat!29762) (regTwo!42347 r1!6206))) b!7814178))

(assert (= (and b!7813670 ((_ is Star!20917) (regTwo!42347 r1!6206))) b!7814179))

(assert (= (and b!7813670 ((_ is Union!20917) (regTwo!42347 r1!6206))) b!7814180))

(declare-fun b!7814184 () Bool)

(declare-fun e!4624532 () Bool)

(declare-fun tp!2303276 () Bool)

(declare-fun tp!2303273 () Bool)

(assert (=> b!7814184 (= e!4624532 (and tp!2303276 tp!2303273))))

(assert (=> b!7813655 (= tp!2303165 e!4624532)))

(declare-fun b!7814181 () Bool)

(assert (=> b!7814181 (= e!4624532 tp_is_empty!52189)))

(declare-fun b!7814183 () Bool)

(declare-fun tp!2303274 () Bool)

(assert (=> b!7814183 (= e!4624532 tp!2303274)))

(declare-fun b!7814182 () Bool)

(declare-fun tp!2303272 () Bool)

(declare-fun tp!2303275 () Bool)

(assert (=> b!7814182 (= e!4624532 (and tp!2303272 tp!2303275))))

(assert (= (and b!7813655 ((_ is ElementMatch!20917) (regOne!42346 r2!6144))) b!7814181))

(assert (= (and b!7813655 ((_ is Concat!29762) (regOne!42346 r2!6144))) b!7814182))

(assert (= (and b!7813655 ((_ is Star!20917) (regOne!42346 r2!6144))) b!7814183))

(assert (= (and b!7813655 ((_ is Union!20917) (regOne!42346 r2!6144))) b!7814184))

(declare-fun b!7814188 () Bool)

(declare-fun e!4624533 () Bool)

(declare-fun tp!2303281 () Bool)

(declare-fun tp!2303278 () Bool)

(assert (=> b!7814188 (= e!4624533 (and tp!2303281 tp!2303278))))

(assert (=> b!7813655 (= tp!2303169 e!4624533)))

(declare-fun b!7814185 () Bool)

(assert (=> b!7814185 (= e!4624533 tp_is_empty!52189)))

(declare-fun b!7814187 () Bool)

(declare-fun tp!2303279 () Bool)

(assert (=> b!7814187 (= e!4624533 tp!2303279)))

(declare-fun b!7814186 () Bool)

(declare-fun tp!2303277 () Bool)

(declare-fun tp!2303280 () Bool)

(assert (=> b!7814186 (= e!4624533 (and tp!2303277 tp!2303280))))

(assert (= (and b!7813655 ((_ is ElementMatch!20917) (regTwo!42346 r2!6144))) b!7814185))

(assert (= (and b!7813655 ((_ is Concat!29762) (regTwo!42346 r2!6144))) b!7814186))

(assert (= (and b!7813655 ((_ is Star!20917) (regTwo!42346 r2!6144))) b!7814187))

(assert (= (and b!7813655 ((_ is Union!20917) (regTwo!42346 r2!6144))) b!7814188))

(declare-fun b!7814192 () Bool)

(declare-fun e!4624534 () Bool)

(declare-fun tp!2303286 () Bool)

(declare-fun tp!2303283 () Bool)

(assert (=> b!7814192 (= e!4624534 (and tp!2303286 tp!2303283))))

(assert (=> b!7813669 (= tp!2303168 e!4624534)))

(declare-fun b!7814189 () Bool)

(assert (=> b!7814189 (= e!4624534 tp_is_empty!52189)))

(declare-fun b!7814191 () Bool)

(declare-fun tp!2303284 () Bool)

(assert (=> b!7814191 (= e!4624534 tp!2303284)))

(declare-fun b!7814190 () Bool)

(declare-fun tp!2303282 () Bool)

(declare-fun tp!2303285 () Bool)

(assert (=> b!7814190 (= e!4624534 (and tp!2303282 tp!2303285))))

(assert (= (and b!7813669 ((_ is ElementMatch!20917) (reg!21246 r2!6144))) b!7814189))

(assert (= (and b!7813669 ((_ is Concat!29762) (reg!21246 r2!6144))) b!7814190))

(assert (= (and b!7813669 ((_ is Star!20917) (reg!21246 r2!6144))) b!7814191))

(assert (= (and b!7813669 ((_ is Union!20917) (reg!21246 r2!6144))) b!7814192))

(declare-fun b!7814196 () Bool)

(declare-fun e!4624535 () Bool)

(declare-fun tp!2303291 () Bool)

(declare-fun tp!2303288 () Bool)

(assert (=> b!7814196 (= e!4624535 (and tp!2303291 tp!2303288))))

(assert (=> b!7813658 (= tp!2303163 e!4624535)))

(declare-fun b!7814193 () Bool)

(assert (=> b!7814193 (= e!4624535 tp_is_empty!52189)))

(declare-fun b!7814195 () Bool)

(declare-fun tp!2303289 () Bool)

(assert (=> b!7814195 (= e!4624535 tp!2303289)))

(declare-fun b!7814194 () Bool)

(declare-fun tp!2303287 () Bool)

(declare-fun tp!2303290 () Bool)

(assert (=> b!7814194 (= e!4624535 (and tp!2303287 tp!2303290))))

(assert (= (and b!7813658 ((_ is ElementMatch!20917) (regOne!42347 r2!6144))) b!7814193))

(assert (= (and b!7813658 ((_ is Concat!29762) (regOne!42347 r2!6144))) b!7814194))

(assert (= (and b!7813658 ((_ is Star!20917) (regOne!42347 r2!6144))) b!7814195))

(assert (= (and b!7813658 ((_ is Union!20917) (regOne!42347 r2!6144))) b!7814196))

(declare-fun b!7814200 () Bool)

(declare-fun e!4624536 () Bool)

(declare-fun tp!2303296 () Bool)

(declare-fun tp!2303293 () Bool)

(assert (=> b!7814200 (= e!4624536 (and tp!2303296 tp!2303293))))

(assert (=> b!7813658 (= tp!2303164 e!4624536)))

(declare-fun b!7814197 () Bool)

(assert (=> b!7814197 (= e!4624536 tp_is_empty!52189)))

(declare-fun b!7814199 () Bool)

(declare-fun tp!2303294 () Bool)

(assert (=> b!7814199 (= e!4624536 tp!2303294)))

(declare-fun b!7814198 () Bool)

(declare-fun tp!2303292 () Bool)

(declare-fun tp!2303295 () Bool)

(assert (=> b!7814198 (= e!4624536 (and tp!2303292 tp!2303295))))

(assert (= (and b!7813658 ((_ is ElementMatch!20917) (regTwo!42347 r2!6144))) b!7814197))

(assert (= (and b!7813658 ((_ is Concat!29762) (regTwo!42347 r2!6144))) b!7814198))

(assert (= (and b!7813658 ((_ is Star!20917) (regTwo!42347 r2!6144))) b!7814199))

(assert (= (and b!7813658 ((_ is Union!20917) (regTwo!42347 r2!6144))) b!7814200))

(declare-fun b!7814205 () Bool)

(declare-fun e!4624539 () Bool)

(declare-fun tp!2303299 () Bool)

(assert (=> b!7814205 (= e!4624539 (and tp_is_empty!52189 tp!2303299))))

(assert (=> b!7813664 (= tp!2303171 e!4624539)))

(assert (= (and b!7813664 ((_ is Cons!73630) (t!388489 s!14225))) b!7814205))

(check-sat (not d!2349024) (not b!7814195) (not bm!724909) (not b!7813911) (not d!2349028) (not b!7814024) (not b!7814205) (not b!7813939) (not bm!724948) (not b!7813983) (not bm!724951) (not b!7813778) (not b!7814172) (not bm!724947) (not b!7814174) (not b!7814097) (not b!7814200) (not b!7813988) (not b!7814086) (not b!7814194) (not bm!724927) (not bm!724877) (not b!7814196) (not bm!724937) tp_is_empty!52189 (not b!7814167) (not b!7814182) (not b!7813962) (not bm!724952) (not bm!724917) (not b!7813986) (not bm!724922) (not d!2348994) (not bm!724906) (not d!2349044) (not b!7814162) (not b!7814087) (not b!7814183) (not b!7814096) (not b!7814015) (not b!7814166) (not b!7814198) (not b!7814105) (not b!7814171) (not b!7813984) (not b!7813959) (not b!7814190) (not b!7814141) (not bm!724912) (not b!7814179) (not b!7813945) (not b!7814090) (not b!7813964) (not b!7814199) (not b!7814180) (not b!7813893) (not b!7813779) (not d!2349034) (not b!7814093) (not b!7813977) (not d!2349026) (not b!7814018) (not b!7814170) (not b!7814188) (not b!7813781) (not b!7814175) (not b!7813956) (not b!7814131) (not b!7813902) (not b!7814101) (not b!7814026) (not b!7814191) (not b!7814164) (not b!7814192) (not b!7813775) (not bm!724935) (not b!7814178) (not d!2349038) (not b!7814187) (not b!7814163) (not bm!724904) (not b!7814168) (not b!7813942) (not bm!724907) (not b!7813980) (not b!7814099) (not b!7814176) (not b!7814021) (not b!7814022) (not b!7813783) (not bm!724910) (not b!7813960) (not b!7813953) (not bm!724934) (not b!7814186) (not b!7813946) (not b!7813772) (not b!7814184) (not bm!724933) (not b!7813950) (not b!7813948) (not d!2349042) (not d!2349036))
(check-sat)
(get-model)

(declare-fun d!2349046 () Bool)

(assert (=> d!2349046 (= (isEmpty!42277 (tail!15519 (t!388489 s!14225))) ((_ is Nil!73630) (tail!15519 (t!388489 s!14225))))))

(assert (=> b!7814021 d!2349046))

(declare-fun d!2349048 () Bool)

(assert (=> d!2349048 (= (tail!15519 (t!388489 s!14225)) (t!388489 (t!388489 s!14225)))))

(assert (=> b!7814021 d!2349048))

(declare-fun b!7814206 () Bool)

(declare-fun e!4624540 () Bool)

(declare-fun e!4624541 () Bool)

(assert (=> b!7814206 (= e!4624540 e!4624541)))

(declare-fun c!1438764 () Bool)

(assert (=> b!7814206 (= c!1438764 ((_ is Union!20917) (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))

(declare-fun d!2349050 () Bool)

(declare-fun res!3111488 () Bool)

(declare-fun e!4624546 () Bool)

(assert (=> d!2349050 (=> res!3111488 e!4624546)))

(assert (=> d!2349050 (= res!3111488 ((_ is ElementMatch!20917) (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))

(assert (=> d!2349050 (= (validRegex!11331 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))) e!4624546)))

(declare-fun c!1438763 () Bool)

(declare-fun call!724959 () Bool)

(declare-fun bm!724954 () Bool)

(assert (=> bm!724954 (= call!724959 (validRegex!11331 (ite c!1438763 (reg!21246 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))) (ite c!1438764 (regTwo!42347 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))) (regTwo!42346 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983))))))))))

(declare-fun b!7814207 () Bool)

(declare-fun res!3111485 () Bool)

(declare-fun e!4624545 () Bool)

(assert (=> b!7814207 (=> res!3111485 e!4624545)))

(assert (=> b!7814207 (= res!3111485 (not ((_ is Concat!29762) (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983))))))))

(assert (=> b!7814207 (= e!4624541 e!4624545)))

(declare-fun b!7814208 () Bool)

(declare-fun e!4624542 () Bool)

(assert (=> b!7814208 (= e!4624542 call!724959)))

(declare-fun b!7814209 () Bool)

(assert (=> b!7814209 (= e!4624540 e!4624542)))

(declare-fun res!3111486 () Bool)

(assert (=> b!7814209 (= res!3111486 (not (nullable!9289 (reg!21246 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))))

(assert (=> b!7814209 (=> (not res!3111486) (not e!4624542))))

(declare-fun b!7814210 () Bool)

(declare-fun e!4624543 () Bool)

(declare-fun call!724961 () Bool)

(assert (=> b!7814210 (= e!4624543 call!724961)))

(declare-fun b!7814211 () Bool)

(assert (=> b!7814211 (= e!4624546 e!4624540)))

(assert (=> b!7814211 (= c!1438763 ((_ is Star!20917) (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))

(declare-fun b!7814212 () Bool)

(declare-fun e!4624544 () Bool)

(assert (=> b!7814212 (= e!4624544 call!724961)))

(declare-fun b!7814213 () Bool)

(declare-fun res!3111487 () Bool)

(assert (=> b!7814213 (=> (not res!3111487) (not e!4624543))))

(declare-fun call!724960 () Bool)

(assert (=> b!7814213 (= res!3111487 call!724960)))

(assert (=> b!7814213 (= e!4624541 e!4624543)))

(declare-fun bm!724955 () Bool)

(assert (=> bm!724955 (= call!724961 call!724959)))

(declare-fun bm!724956 () Bool)

(assert (=> bm!724956 (= call!724960 (validRegex!11331 (ite c!1438764 (regOne!42347 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))) (regOne!42346 (ite c!1438741 (reg!21246 lt!2675983) (ite c!1438742 (regTwo!42347 lt!2675983) (regTwo!42346 lt!2675983)))))))))

(declare-fun b!7814214 () Bool)

(assert (=> b!7814214 (= e!4624545 e!4624544)))

(declare-fun res!3111489 () Bool)

(assert (=> b!7814214 (=> (not res!3111489) (not e!4624544))))

(assert (=> b!7814214 (= res!3111489 call!724960)))

(assert (= (and d!2349050 (not res!3111488)) b!7814211))

(assert (= (and b!7814211 c!1438763) b!7814209))

(assert (= (and b!7814211 (not c!1438763)) b!7814206))

(assert (= (and b!7814209 res!3111486) b!7814208))

(assert (= (and b!7814206 c!1438764) b!7814213))

(assert (= (and b!7814206 (not c!1438764)) b!7814207))

(assert (= (and b!7814213 res!3111487) b!7814210))

(assert (= (and b!7814207 (not res!3111485)) b!7814214))

(assert (= (and b!7814214 res!3111489) b!7814212))

(assert (= (or b!7814213 b!7814214) bm!724956))

(assert (= (or b!7814210 b!7814212) bm!724955))

(assert (= (or b!7814208 bm!724955) bm!724954))

(declare-fun m!8243110 () Bool)

(assert (=> bm!724954 m!8243110))

(declare-fun m!8243112 () Bool)

(assert (=> b!7814209 m!8243112))

(declare-fun m!8243114 () Bool)

(assert (=> bm!724956 m!8243114))

(assert (=> bm!724935 d!2349050))

(declare-fun d!2349052 () Bool)

(declare-fun nullableFct!3659 (Regex!20917) Bool)

(assert (=> d!2349052 (= (nullable!9289 r2!6144) (nullableFct!3659 r2!6144))))

(declare-fun bs!1966652 () Bool)

(assert (= bs!1966652 d!2349052))

(declare-fun m!8243116 () Bool)

(assert (=> bs!1966652 m!8243116))

(assert (=> b!7813956 d!2349052))

(declare-fun d!2349054 () Bool)

(assert (=> d!2349054 (= (head!15978 (t!388489 s!14225)) (h!80078 (t!388489 s!14225)))))

(assert (=> b!7813772 d!2349054))

(declare-fun b!7814215 () Bool)

(declare-fun e!4624550 () Bool)

(declare-fun lt!2676015 () Bool)

(declare-fun call!724962 () Bool)

(assert (=> b!7814215 (= e!4624550 (= lt!2676015 call!724962))))

(declare-fun b!7814216 () Bool)

(declare-fun e!4624552 () Bool)

(assert (=> b!7814216 (= e!4624550 e!4624552)))

(declare-fun c!1438765 () Bool)

(assert (=> b!7814216 (= c!1438765 ((_ is EmptyLang!20917) (derivativeStep!6248 r1!6206 (head!15978 s!14225))))))

(declare-fun b!7814217 () Bool)

(declare-fun e!4624553 () Bool)

(assert (=> b!7814217 (= e!4624553 (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 r1!6206 (head!15978 s!14225)))))))

(declare-fun b!7814218 () Bool)

(declare-fun e!4624547 () Bool)

(declare-fun e!4624549 () Bool)

(assert (=> b!7814218 (= e!4624547 e!4624549)))

(declare-fun res!3111494 () Bool)

(assert (=> b!7814218 (=> (not res!3111494) (not e!4624549))))

(assert (=> b!7814218 (= res!3111494 (not lt!2676015))))

(declare-fun bm!724957 () Bool)

(assert (=> bm!724957 (= call!724962 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7814219 () Bool)

(declare-fun res!3111490 () Bool)

(assert (=> b!7814219 (=> res!3111490 e!4624547)))

(assert (=> b!7814219 (= res!3111490 (not ((_ is ElementMatch!20917) (derivativeStep!6248 r1!6206 (head!15978 s!14225)))))))

(assert (=> b!7814219 (= e!4624552 e!4624547)))

(declare-fun b!7814220 () Bool)

(declare-fun e!4624551 () Bool)

(assert (=> b!7814220 (= e!4624551 (nullable!9289 (derivativeStep!6248 r1!6206 (head!15978 s!14225))))))

(declare-fun b!7814222 () Bool)

(declare-fun res!3111497 () Bool)

(assert (=> b!7814222 (=> res!3111497 e!4624547)))

(assert (=> b!7814222 (= res!3111497 e!4624553)))

(declare-fun res!3111492 () Bool)

(assert (=> b!7814222 (=> (not res!3111492) (not e!4624553))))

(assert (=> b!7814222 (= res!3111492 lt!2676015)))

(declare-fun b!7814223 () Bool)

(declare-fun res!3111495 () Bool)

(assert (=> b!7814223 (=> (not res!3111495) (not e!4624553))))

(assert (=> b!7814223 (= res!3111495 (isEmpty!42277 (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814224 () Bool)

(declare-fun res!3111496 () Bool)

(declare-fun e!4624548 () Bool)

(assert (=> b!7814224 (=> res!3111496 e!4624548)))

(assert (=> b!7814224 (= res!3111496 (not (isEmpty!42277 (tail!15519 (tail!15519 s!14225)))))))

(declare-fun b!7814225 () Bool)

(assert (=> b!7814225 (= e!4624552 (not lt!2676015))))

(declare-fun b!7814226 () Bool)

(assert (=> b!7814226 (= e!4624551 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 r1!6206 (head!15978 s!14225)) (head!15978 (tail!15519 s!14225))) (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814227 () Bool)

(assert (=> b!7814227 (= e!4624549 e!4624548)))

(declare-fun res!3111493 () Bool)

(assert (=> b!7814227 (=> res!3111493 e!4624548)))

(assert (=> b!7814227 (= res!3111493 call!724962)))

(declare-fun b!7814228 () Bool)

(assert (=> b!7814228 (= e!4624548 (not (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 r1!6206 (head!15978 s!14225))))))))

(declare-fun d!2349056 () Bool)

(assert (=> d!2349056 e!4624550))

(declare-fun c!1438766 () Bool)

(assert (=> d!2349056 (= c!1438766 ((_ is EmptyExpr!20917) (derivativeStep!6248 r1!6206 (head!15978 s!14225))))))

(assert (=> d!2349056 (= lt!2676015 e!4624551)))

(declare-fun c!1438767 () Bool)

(assert (=> d!2349056 (= c!1438767 (isEmpty!42277 (tail!15519 s!14225)))))

(assert (=> d!2349056 (validRegex!11331 (derivativeStep!6248 r1!6206 (head!15978 s!14225)))))

(assert (=> d!2349056 (= (matchR!10375 (derivativeStep!6248 r1!6206 (head!15978 s!14225)) (tail!15519 s!14225)) lt!2676015)))

(declare-fun b!7814221 () Bool)

(declare-fun res!3111491 () Bool)

(assert (=> b!7814221 (=> (not res!3111491) (not e!4624553))))

(assert (=> b!7814221 (= res!3111491 (not call!724962))))

(assert (= (and d!2349056 c!1438767) b!7814220))

(assert (= (and d!2349056 (not c!1438767)) b!7814226))

(assert (= (and d!2349056 c!1438766) b!7814215))

(assert (= (and d!2349056 (not c!1438766)) b!7814216))

(assert (= (and b!7814216 c!1438765) b!7814225))

(assert (= (and b!7814216 (not c!1438765)) b!7814219))

(assert (= (and b!7814219 (not res!3111490)) b!7814222))

(assert (= (and b!7814222 res!3111492) b!7814221))

(assert (= (and b!7814221 res!3111491) b!7814223))

(assert (= (and b!7814223 res!3111495) b!7814217))

(assert (= (and b!7814222 (not res!3111497)) b!7814218))

(assert (= (and b!7814218 res!3111494) b!7814227))

(assert (= (and b!7814227 (not res!3111493)) b!7814224))

(assert (= (and b!7814224 (not res!3111496)) b!7814228))

(assert (= (or b!7814215 b!7814221 b!7814227) bm!724957))

(assert (=> bm!724957 m!8243034))

(assert (=> bm!724957 m!8243038))

(assert (=> b!7814228 m!8243034))

(declare-fun m!8243118 () Bool)

(assert (=> b!7814228 m!8243118))

(assert (=> b!7814226 m!8243034))

(assert (=> b!7814226 m!8243118))

(assert (=> b!7814226 m!8243058))

(assert (=> b!7814226 m!8243118))

(declare-fun m!8243120 () Bool)

(assert (=> b!7814226 m!8243120))

(assert (=> b!7814226 m!8243034))

(declare-fun m!8243122 () Bool)

(assert (=> b!7814226 m!8243122))

(assert (=> b!7814226 m!8243120))

(assert (=> b!7814226 m!8243122))

(declare-fun m!8243124 () Bool)

(assert (=> b!7814226 m!8243124))

(assert (=> d!2349056 m!8243034))

(assert (=> d!2349056 m!8243038))

(assert (=> d!2349056 m!8243058))

(declare-fun m!8243126 () Bool)

(assert (=> d!2349056 m!8243126))

(assert (=> b!7814224 m!8243034))

(assert (=> b!7814224 m!8243122))

(assert (=> b!7814224 m!8243122))

(declare-fun m!8243128 () Bool)

(assert (=> b!7814224 m!8243128))

(assert (=> b!7814220 m!8243058))

(declare-fun m!8243130 () Bool)

(assert (=> b!7814220 m!8243130))

(assert (=> b!7814223 m!8243034))

(assert (=> b!7814223 m!8243122))

(assert (=> b!7814223 m!8243122))

(assert (=> b!7814223 m!8243128))

(assert (=> b!7814217 m!8243034))

(assert (=> b!7814217 m!8243118))

(assert (=> b!7813986 d!2349056))

(declare-fun b!7814229 () Bool)

(declare-fun c!1438771 () Bool)

(assert (=> b!7814229 (= c!1438771 (nullable!9289 (regOne!42346 r1!6206)))))

(declare-fun e!4624555 () Regex!20917)

(declare-fun e!4624556 () Regex!20917)

(assert (=> b!7814229 (= e!4624555 e!4624556)))

(declare-fun b!7814230 () Bool)

(declare-fun e!4624554 () Regex!20917)

(assert (=> b!7814230 (= e!4624554 (ite (= (head!15978 s!14225) (c!1438650 r1!6206)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814231 () Bool)

(declare-fun call!724966 () Regex!20917)

(assert (=> b!7814231 (= e!4624556 (Union!20917 (Concat!29762 call!724966 (regTwo!42346 r1!6206)) EmptyLang!20917))))

(declare-fun b!7814232 () Bool)

(declare-fun e!4624557 () Regex!20917)

(declare-fun call!724963 () Regex!20917)

(declare-fun call!724965 () Regex!20917)

(assert (=> b!7814232 (= e!4624557 (Union!20917 call!724963 call!724965))))

(declare-fun b!7814233 () Bool)

(declare-fun e!4624558 () Regex!20917)

(assert (=> b!7814233 (= e!4624558 e!4624554)))

(declare-fun c!1438770 () Bool)

(assert (=> b!7814233 (= c!1438770 ((_ is ElementMatch!20917) r1!6206))))

(declare-fun bm!724958 () Bool)

(declare-fun call!724964 () Regex!20917)

(assert (=> bm!724958 (= call!724966 call!724964)))

(declare-fun bm!724959 () Bool)

(declare-fun c!1438772 () Bool)

(assert (=> bm!724959 (= call!724965 (derivativeStep!6248 (ite c!1438772 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)) (head!15978 s!14225)))))

(declare-fun b!7814235 () Bool)

(assert (=> b!7814235 (= e!4624558 EmptyLang!20917)))

(declare-fun b!7814236 () Bool)

(assert (=> b!7814236 (= e!4624557 e!4624555)))

(declare-fun c!1438769 () Bool)

(assert (=> b!7814236 (= c!1438769 ((_ is Star!20917) r1!6206))))

(declare-fun bm!724960 () Bool)

(assert (=> bm!724960 (= call!724963 (derivativeStep!6248 (ite c!1438772 (regOne!42347 r1!6206) (ite c!1438769 (reg!21246 r1!6206) (ite c!1438771 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))) (head!15978 s!14225)))))

(declare-fun b!7814237 () Bool)

(assert (=> b!7814237 (= e!4624555 (Concat!29762 call!724964 r1!6206))))

(declare-fun d!2349058 () Bool)

(declare-fun lt!2676016 () Regex!20917)

(assert (=> d!2349058 (validRegex!11331 lt!2676016)))

(assert (=> d!2349058 (= lt!2676016 e!4624558)))

(declare-fun c!1438768 () Bool)

(assert (=> d!2349058 (= c!1438768 (or ((_ is EmptyExpr!20917) r1!6206) ((_ is EmptyLang!20917) r1!6206)))))

(assert (=> d!2349058 (validRegex!11331 r1!6206)))

(assert (=> d!2349058 (= (derivativeStep!6248 r1!6206 (head!15978 s!14225)) lt!2676016)))

(declare-fun b!7814234 () Bool)

(assert (=> b!7814234 (= e!4624556 (Union!20917 (Concat!29762 call!724965 (regTwo!42346 r1!6206)) call!724966))))

(declare-fun bm!724961 () Bool)

(assert (=> bm!724961 (= call!724964 call!724963)))

(declare-fun b!7814238 () Bool)

(assert (=> b!7814238 (= c!1438772 ((_ is Union!20917) r1!6206))))

(assert (=> b!7814238 (= e!4624554 e!4624557)))

(assert (= (and d!2349058 c!1438768) b!7814235))

(assert (= (and d!2349058 (not c!1438768)) b!7814233))

(assert (= (and b!7814233 c!1438770) b!7814230))

(assert (= (and b!7814233 (not c!1438770)) b!7814238))

(assert (= (and b!7814238 c!1438772) b!7814232))

(assert (= (and b!7814238 (not c!1438772)) b!7814236))

(assert (= (and b!7814236 c!1438769) b!7814237))

(assert (= (and b!7814236 (not c!1438769)) b!7814229))

(assert (= (and b!7814229 c!1438771) b!7814234))

(assert (= (and b!7814229 (not c!1438771)) b!7814231))

(assert (= (or b!7814234 b!7814231) bm!724958))

(assert (= (or b!7814237 bm!724958) bm!724961))

(assert (= (or b!7814232 b!7814234) bm!724959))

(assert (= (or b!7814232 bm!724961) bm!724960))

(assert (=> b!7814229 m!8243102))

(assert (=> bm!724959 m!8243030))

(declare-fun m!8243132 () Bool)

(assert (=> bm!724959 m!8243132))

(assert (=> bm!724960 m!8243030))

(declare-fun m!8243134 () Bool)

(assert (=> bm!724960 m!8243134))

(declare-fun m!8243136 () Bool)

(assert (=> d!2349058 m!8243136))

(assert (=> d!2349058 m!8242890))

(assert (=> b!7813986 d!2349058))

(declare-fun d!2349060 () Bool)

(assert (=> d!2349060 (= (head!15978 s!14225) (h!80078 s!14225))))

(assert (=> b!7813986 d!2349060))

(declare-fun d!2349062 () Bool)

(assert (=> d!2349062 (= (tail!15519 s!14225) (t!388489 s!14225))))

(assert (=> b!7813986 d!2349062))

(declare-fun d!2349064 () Bool)

(assert (=> d!2349064 (= (isEmpty!42277 (tail!15519 s!14225)) ((_ is Nil!73630) (tail!15519 s!14225)))))

(assert (=> b!7813960 d!2349064))

(assert (=> b!7813960 d!2349062))

(declare-fun d!2349066 () Bool)

(assert (=> d!2349066 (= (nullable!9289 (Union!20917 lt!2675983 lt!2675984)) (nullableFct!3659 (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun bs!1966653 () Bool)

(assert (= bs!1966653 d!2349066))

(declare-fun m!8243138 () Bool)

(assert (=> bs!1966653 m!8243138))

(assert (=> b!7813775 d!2349066))

(declare-fun d!2349068 () Bool)

(assert (=> d!2349068 (= (isEmpty!42277 (t!388489 s!14225)) ((_ is Nil!73630) (t!388489 s!14225)))))

(assert (=> bm!724877 d!2349068))

(assert (=> b!7813988 d!2349060))

(assert (=> d!2349024 d!2349068))

(assert (=> d!2349024 d!2349020))

(declare-fun b!7814239 () Bool)

(declare-fun e!4624559 () Bool)

(declare-fun e!4624560 () Bool)

(assert (=> b!7814239 (= e!4624559 e!4624560)))

(declare-fun c!1438774 () Bool)

(assert (=> b!7814239 (= c!1438774 ((_ is Union!20917) (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))

(declare-fun d!2349070 () Bool)

(declare-fun res!3111501 () Bool)

(declare-fun e!4624565 () Bool)

(assert (=> d!2349070 (=> res!3111501 e!4624565)))

(assert (=> d!2349070 (= res!3111501 ((_ is ElementMatch!20917) (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))

(assert (=> d!2349070 (= (validRegex!11331 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))) e!4624565)))

(declare-fun c!1438773 () Bool)

(declare-fun bm!724962 () Bool)

(declare-fun call!724967 () Bool)

(assert (=> bm!724962 (= call!724967 (validRegex!11331 (ite c!1438773 (reg!21246 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))) (ite c!1438774 (regTwo!42347 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))) (regTwo!42346 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984))))))))))

(declare-fun b!7814240 () Bool)

(declare-fun res!3111498 () Bool)

(declare-fun e!4624564 () Bool)

(assert (=> b!7814240 (=> res!3111498 e!4624564)))

(assert (=> b!7814240 (= res!3111498 (not ((_ is Concat!29762) (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984))))))))

(assert (=> b!7814240 (= e!4624560 e!4624564)))

(declare-fun b!7814241 () Bool)

(declare-fun e!4624561 () Bool)

(assert (=> b!7814241 (= e!4624561 call!724967)))

(declare-fun b!7814242 () Bool)

(assert (=> b!7814242 (= e!4624559 e!4624561)))

(declare-fun res!3111499 () Bool)

(assert (=> b!7814242 (= res!3111499 (not (nullable!9289 (reg!21246 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))))

(assert (=> b!7814242 (=> (not res!3111499) (not e!4624561))))

(declare-fun b!7814243 () Bool)

(declare-fun e!4624562 () Bool)

(declare-fun call!724969 () Bool)

(assert (=> b!7814243 (= e!4624562 call!724969)))

(declare-fun b!7814244 () Bool)

(assert (=> b!7814244 (= e!4624565 e!4624559)))

(assert (=> b!7814244 (= c!1438773 ((_ is Star!20917) (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))

(declare-fun b!7814245 () Bool)

(declare-fun e!4624563 () Bool)

(assert (=> b!7814245 (= e!4624563 call!724969)))

(declare-fun b!7814246 () Bool)

(declare-fun res!3111500 () Bool)

(assert (=> b!7814246 (=> (not res!3111500) (not e!4624562))))

(declare-fun call!724968 () Bool)

(assert (=> b!7814246 (= res!3111500 call!724968)))

(assert (=> b!7814246 (= e!4624560 e!4624562)))

(declare-fun bm!724963 () Bool)

(assert (=> bm!724963 (= call!724969 call!724967)))

(declare-fun bm!724964 () Bool)

(assert (=> bm!724964 (= call!724968 (validRegex!11331 (ite c!1438774 (regOne!42347 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))) (regOne!42346 (ite c!1438699 (reg!21246 lt!2675984) (ite c!1438700 (regTwo!42347 lt!2675984) (regTwo!42346 lt!2675984)))))))))

(declare-fun b!7814247 () Bool)

(assert (=> b!7814247 (= e!4624564 e!4624563)))

(declare-fun res!3111502 () Bool)

(assert (=> b!7814247 (=> (not res!3111502) (not e!4624563))))

(assert (=> b!7814247 (= res!3111502 call!724968)))

(assert (= (and d!2349070 (not res!3111501)) b!7814244))

(assert (= (and b!7814244 c!1438773) b!7814242))

(assert (= (and b!7814244 (not c!1438773)) b!7814239))

(assert (= (and b!7814242 res!3111499) b!7814241))

(assert (= (and b!7814239 c!1438774) b!7814246))

(assert (= (and b!7814239 (not c!1438774)) b!7814240))

(assert (= (and b!7814246 res!3111500) b!7814243))

(assert (= (and b!7814240 (not res!3111498)) b!7814247))

(assert (= (and b!7814247 res!3111502) b!7814245))

(assert (= (or b!7814246 b!7814247) bm!724964))

(assert (= (or b!7814243 b!7814245) bm!724963))

(assert (= (or b!7814241 bm!724963) bm!724962))

(declare-fun m!8243140 () Bool)

(assert (=> bm!724962 m!8243140))

(declare-fun m!8243142 () Bool)

(assert (=> b!7814242 m!8243142))

(declare-fun m!8243144 () Bool)

(assert (=> bm!724964 m!8243144))

(assert (=> bm!724907 d!2349070))

(declare-fun b!7814248 () Bool)

(declare-fun e!4624569 () Bool)

(declare-fun lt!2676017 () Bool)

(declare-fun call!724970 () Bool)

(assert (=> b!7814248 (= e!4624569 (= lt!2676017 call!724970))))

(declare-fun b!7814249 () Bool)

(declare-fun e!4624571 () Bool)

(assert (=> b!7814249 (= e!4624569 e!4624571)))

(declare-fun c!1438775 () Bool)

(assert (=> b!7814249 (= c!1438775 ((_ is EmptyLang!20917) (derivativeStep!6248 r2!6144 (head!15978 s!14225))))))

(declare-fun b!7814250 () Bool)

(declare-fun e!4624572 () Bool)

(assert (=> b!7814250 (= e!4624572 (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 r2!6144 (head!15978 s!14225)))))))

(declare-fun b!7814251 () Bool)

(declare-fun e!4624566 () Bool)

(declare-fun e!4624568 () Bool)

(assert (=> b!7814251 (= e!4624566 e!4624568)))

(declare-fun res!3111507 () Bool)

(assert (=> b!7814251 (=> (not res!3111507) (not e!4624568))))

(assert (=> b!7814251 (= res!3111507 (not lt!2676017))))

(declare-fun bm!724965 () Bool)

(assert (=> bm!724965 (= call!724970 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7814252 () Bool)

(declare-fun res!3111503 () Bool)

(assert (=> b!7814252 (=> res!3111503 e!4624566)))

(assert (=> b!7814252 (= res!3111503 (not ((_ is ElementMatch!20917) (derivativeStep!6248 r2!6144 (head!15978 s!14225)))))))

(assert (=> b!7814252 (= e!4624571 e!4624566)))

(declare-fun b!7814253 () Bool)

(declare-fun e!4624570 () Bool)

(assert (=> b!7814253 (= e!4624570 (nullable!9289 (derivativeStep!6248 r2!6144 (head!15978 s!14225))))))

(declare-fun b!7814255 () Bool)

(declare-fun res!3111510 () Bool)

(assert (=> b!7814255 (=> res!3111510 e!4624566)))

(assert (=> b!7814255 (= res!3111510 e!4624572)))

(declare-fun res!3111505 () Bool)

(assert (=> b!7814255 (=> (not res!3111505) (not e!4624572))))

(assert (=> b!7814255 (= res!3111505 lt!2676017)))

(declare-fun b!7814256 () Bool)

(declare-fun res!3111508 () Bool)

(assert (=> b!7814256 (=> (not res!3111508) (not e!4624572))))

(assert (=> b!7814256 (= res!3111508 (isEmpty!42277 (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814257 () Bool)

(declare-fun res!3111509 () Bool)

(declare-fun e!4624567 () Bool)

(assert (=> b!7814257 (=> res!3111509 e!4624567)))

(assert (=> b!7814257 (= res!3111509 (not (isEmpty!42277 (tail!15519 (tail!15519 s!14225)))))))

(declare-fun b!7814258 () Bool)

(assert (=> b!7814258 (= e!4624571 (not lt!2676017))))

(declare-fun b!7814259 () Bool)

(assert (=> b!7814259 (= e!4624570 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 r2!6144 (head!15978 s!14225)) (head!15978 (tail!15519 s!14225))) (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814260 () Bool)

(assert (=> b!7814260 (= e!4624568 e!4624567)))

(declare-fun res!3111506 () Bool)

(assert (=> b!7814260 (=> res!3111506 e!4624567)))

(assert (=> b!7814260 (= res!3111506 call!724970)))

(declare-fun b!7814261 () Bool)

(assert (=> b!7814261 (= e!4624567 (not (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 r2!6144 (head!15978 s!14225))))))))

(declare-fun d!2349072 () Bool)

(assert (=> d!2349072 e!4624569))

(declare-fun c!1438776 () Bool)

(assert (=> d!2349072 (= c!1438776 ((_ is EmptyExpr!20917) (derivativeStep!6248 r2!6144 (head!15978 s!14225))))))

(assert (=> d!2349072 (= lt!2676017 e!4624570)))

(declare-fun c!1438777 () Bool)

(assert (=> d!2349072 (= c!1438777 (isEmpty!42277 (tail!15519 s!14225)))))

(assert (=> d!2349072 (validRegex!11331 (derivativeStep!6248 r2!6144 (head!15978 s!14225)))))

(assert (=> d!2349072 (= (matchR!10375 (derivativeStep!6248 r2!6144 (head!15978 s!14225)) (tail!15519 s!14225)) lt!2676017)))

(declare-fun b!7814254 () Bool)

(declare-fun res!3111504 () Bool)

(assert (=> b!7814254 (=> (not res!3111504) (not e!4624572))))

(assert (=> b!7814254 (= res!3111504 (not call!724970))))

(assert (= (and d!2349072 c!1438777) b!7814253))

(assert (= (and d!2349072 (not c!1438777)) b!7814259))

(assert (= (and d!2349072 c!1438776) b!7814248))

(assert (= (and d!2349072 (not c!1438776)) b!7814249))

(assert (= (and b!7814249 c!1438775) b!7814258))

(assert (= (and b!7814249 (not c!1438775)) b!7814252))

(assert (= (and b!7814252 (not res!3111503)) b!7814255))

(assert (= (and b!7814255 res!3111505) b!7814254))

(assert (= (and b!7814254 res!3111504) b!7814256))

(assert (= (and b!7814256 res!3111508) b!7814250))

(assert (= (and b!7814255 (not res!3111510)) b!7814251))

(assert (= (and b!7814251 res!3111507) b!7814260))

(assert (= (and b!7814260 (not res!3111506)) b!7814257))

(assert (= (and b!7814257 (not res!3111509)) b!7814261))

(assert (= (or b!7814248 b!7814254 b!7814260) bm!724965))

(assert (=> bm!724965 m!8243034))

(assert (=> bm!724965 m!8243038))

(assert (=> b!7814261 m!8243034))

(assert (=> b!7814261 m!8243118))

(assert (=> b!7814259 m!8243034))

(assert (=> b!7814259 m!8243118))

(assert (=> b!7814259 m!8243032))

(assert (=> b!7814259 m!8243118))

(declare-fun m!8243146 () Bool)

(assert (=> b!7814259 m!8243146))

(assert (=> b!7814259 m!8243034))

(assert (=> b!7814259 m!8243122))

(assert (=> b!7814259 m!8243146))

(assert (=> b!7814259 m!8243122))

(declare-fun m!8243148 () Bool)

(assert (=> b!7814259 m!8243148))

(assert (=> d!2349072 m!8243034))

(assert (=> d!2349072 m!8243038))

(assert (=> d!2349072 m!8243032))

(declare-fun m!8243150 () Bool)

(assert (=> d!2349072 m!8243150))

(assert (=> b!7814257 m!8243034))

(assert (=> b!7814257 m!8243122))

(assert (=> b!7814257 m!8243122))

(assert (=> b!7814257 m!8243128))

(assert (=> b!7814253 m!8243032))

(declare-fun m!8243152 () Bool)

(assert (=> b!7814253 m!8243152))

(assert (=> b!7814256 m!8243034))

(assert (=> b!7814256 m!8243122))

(assert (=> b!7814256 m!8243122))

(assert (=> b!7814256 m!8243128))

(assert (=> b!7814250 m!8243034))

(assert (=> b!7814250 m!8243118))

(assert (=> b!7813962 d!2349072))

(declare-fun b!7814262 () Bool)

(declare-fun c!1438781 () Bool)

(assert (=> b!7814262 (= c!1438781 (nullable!9289 (regOne!42346 r2!6144)))))

(declare-fun e!4624574 () Regex!20917)

(declare-fun e!4624575 () Regex!20917)

(assert (=> b!7814262 (= e!4624574 e!4624575)))

(declare-fun b!7814263 () Bool)

(declare-fun e!4624573 () Regex!20917)

(assert (=> b!7814263 (= e!4624573 (ite (= (head!15978 s!14225) (c!1438650 r2!6144)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814264 () Bool)

(declare-fun call!724974 () Regex!20917)

(assert (=> b!7814264 (= e!4624575 (Union!20917 (Concat!29762 call!724974 (regTwo!42346 r2!6144)) EmptyLang!20917))))

(declare-fun b!7814265 () Bool)

(declare-fun e!4624576 () Regex!20917)

(declare-fun call!724971 () Regex!20917)

(declare-fun call!724973 () Regex!20917)

(assert (=> b!7814265 (= e!4624576 (Union!20917 call!724971 call!724973))))

(declare-fun b!7814266 () Bool)

(declare-fun e!4624577 () Regex!20917)

(assert (=> b!7814266 (= e!4624577 e!4624573)))

(declare-fun c!1438780 () Bool)

(assert (=> b!7814266 (= c!1438780 ((_ is ElementMatch!20917) r2!6144))))

(declare-fun bm!724966 () Bool)

(declare-fun call!724972 () Regex!20917)

(assert (=> bm!724966 (= call!724974 call!724972)))

(declare-fun bm!724967 () Bool)

(declare-fun c!1438782 () Bool)

(assert (=> bm!724967 (= call!724973 (derivativeStep!6248 (ite c!1438782 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)) (head!15978 s!14225)))))

(declare-fun b!7814268 () Bool)

(assert (=> b!7814268 (= e!4624577 EmptyLang!20917)))

(declare-fun b!7814269 () Bool)

(assert (=> b!7814269 (= e!4624576 e!4624574)))

(declare-fun c!1438779 () Bool)

(assert (=> b!7814269 (= c!1438779 ((_ is Star!20917) r2!6144))))

(declare-fun bm!724968 () Bool)

(assert (=> bm!724968 (= call!724971 (derivativeStep!6248 (ite c!1438782 (regOne!42347 r2!6144) (ite c!1438779 (reg!21246 r2!6144) (ite c!1438781 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))) (head!15978 s!14225)))))

(declare-fun b!7814270 () Bool)

(assert (=> b!7814270 (= e!4624574 (Concat!29762 call!724972 r2!6144))))

(declare-fun d!2349074 () Bool)

(declare-fun lt!2676018 () Regex!20917)

(assert (=> d!2349074 (validRegex!11331 lt!2676018)))

(assert (=> d!2349074 (= lt!2676018 e!4624577)))

(declare-fun c!1438778 () Bool)

(assert (=> d!2349074 (= c!1438778 (or ((_ is EmptyExpr!20917) r2!6144) ((_ is EmptyLang!20917) r2!6144)))))

(assert (=> d!2349074 (validRegex!11331 r2!6144)))

(assert (=> d!2349074 (= (derivativeStep!6248 r2!6144 (head!15978 s!14225)) lt!2676018)))

(declare-fun b!7814267 () Bool)

(assert (=> b!7814267 (= e!4624575 (Union!20917 (Concat!29762 call!724973 (regTwo!42346 r2!6144)) call!724974))))

(declare-fun bm!724969 () Bool)

(assert (=> bm!724969 (= call!724972 call!724971)))

(declare-fun b!7814271 () Bool)

(assert (=> b!7814271 (= c!1438782 ((_ is Union!20917) r2!6144))))

(assert (=> b!7814271 (= e!4624573 e!4624576)))

(assert (= (and d!2349074 c!1438778) b!7814268))

(assert (= (and d!2349074 (not c!1438778)) b!7814266))

(assert (= (and b!7814266 c!1438780) b!7814263))

(assert (= (and b!7814266 (not c!1438780)) b!7814271))

(assert (= (and b!7814271 c!1438782) b!7814265))

(assert (= (and b!7814271 (not c!1438782)) b!7814269))

(assert (= (and b!7814269 c!1438779) b!7814270))

(assert (= (and b!7814269 (not c!1438779)) b!7814262))

(assert (= (and b!7814262 c!1438781) b!7814267))

(assert (= (and b!7814262 (not c!1438781)) b!7814264))

(assert (= (or b!7814267 b!7814264) bm!724966))

(assert (= (or b!7814270 bm!724966) bm!724969))

(assert (= (or b!7814265 b!7814267) bm!724967))

(assert (= (or b!7814265 bm!724969) bm!724968))

(assert (=> b!7814262 m!8243094))

(assert (=> bm!724967 m!8243030))

(declare-fun m!8243154 () Bool)

(assert (=> bm!724967 m!8243154))

(assert (=> bm!724968 m!8243030))

(declare-fun m!8243156 () Bool)

(assert (=> bm!724968 m!8243156))

(declare-fun m!8243158 () Bool)

(assert (=> d!2349074 m!8243158))

(assert (=> d!2349074 m!8242888))

(assert (=> b!7813962 d!2349074))

(assert (=> b!7813962 d!2349060))

(assert (=> b!7813962 d!2349062))

(assert (=> b!7813939 d!2349054))

(assert (=> b!7813964 d!2349060))

(declare-fun d!2349076 () Bool)

(assert (=> d!2349076 (= (nullable!9289 (reg!21246 r1!6206)) (nullableFct!3659 (reg!21246 r1!6206)))))

(declare-fun bs!1966654 () Bool)

(assert (= bs!1966654 d!2349076))

(declare-fun m!8243160 () Bool)

(assert (=> bs!1966654 m!8243160))

(assert (=> b!7813911 d!2349076))

(assert (=> b!7813779 d!2349046))

(assert (=> b!7813779 d!2349048))

(assert (=> b!7814096 d!2349064))

(assert (=> b!7814096 d!2349062))

(assert (=> b!7813977 d!2349060))

(assert (=> b!7814097 d!2349064))

(assert (=> b!7814097 d!2349062))

(declare-fun d!2349078 () Bool)

(assert (=> d!2349078 (= (isEmpty!42277 s!14225) ((_ is Nil!73630) s!14225))))

(assert (=> d!2349028 d!2349078))

(assert (=> d!2349028 d!2349022))

(declare-fun b!7814272 () Bool)

(declare-fun e!4624578 () Bool)

(declare-fun e!4624579 () Bool)

(assert (=> b!7814272 (= e!4624578 e!4624579)))

(declare-fun c!1438784 () Bool)

(assert (=> b!7814272 (= c!1438784 ((_ is Union!20917) (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))

(declare-fun d!2349080 () Bool)

(declare-fun res!3111514 () Bool)

(declare-fun e!4624584 () Bool)

(assert (=> d!2349080 (=> res!3111514 e!4624584)))

(assert (=> d!2349080 (= res!3111514 ((_ is ElementMatch!20917) (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))

(assert (=> d!2349080 (= (validRegex!11331 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))) e!4624584)))

(declare-fun bm!724970 () Bool)

(declare-fun call!724975 () Bool)

(declare-fun c!1438783 () Bool)

(assert (=> bm!724970 (= call!724975 (validRegex!11331 (ite c!1438783 (reg!21246 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))) (ite c!1438784 (regTwo!42347 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))) (regTwo!42346 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144))))))))))

(declare-fun b!7814273 () Bool)

(declare-fun res!3111511 () Bool)

(declare-fun e!4624583 () Bool)

(assert (=> b!7814273 (=> res!3111511 e!4624583)))

(assert (=> b!7814273 (= res!3111511 (not ((_ is Concat!29762) (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144))))))))

(assert (=> b!7814273 (= e!4624579 e!4624583)))

(declare-fun b!7814274 () Bool)

(declare-fun e!4624580 () Bool)

(assert (=> b!7814274 (= e!4624580 call!724975)))

(declare-fun b!7814275 () Bool)

(assert (=> b!7814275 (= e!4624578 e!4624580)))

(declare-fun res!3111512 () Bool)

(assert (=> b!7814275 (= res!3111512 (not (nullable!9289 (reg!21246 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))))

(assert (=> b!7814275 (=> (not res!3111512) (not e!4624580))))

(declare-fun b!7814276 () Bool)

(declare-fun e!4624581 () Bool)

(declare-fun call!724977 () Bool)

(assert (=> b!7814276 (= e!4624581 call!724977)))

(declare-fun b!7814277 () Bool)

(assert (=> b!7814277 (= e!4624584 e!4624578)))

(assert (=> b!7814277 (= c!1438783 ((_ is Star!20917) (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))

(declare-fun b!7814278 () Bool)

(declare-fun e!4624582 () Bool)

(assert (=> b!7814278 (= e!4624582 call!724977)))

(declare-fun b!7814279 () Bool)

(declare-fun res!3111513 () Bool)

(assert (=> b!7814279 (=> (not res!3111513) (not e!4624581))))

(declare-fun call!724976 () Bool)

(assert (=> b!7814279 (= res!3111513 call!724976)))

(assert (=> b!7814279 (= e!4624579 e!4624581)))

(declare-fun bm!724971 () Bool)

(assert (=> bm!724971 (= call!724977 call!724975)))

(declare-fun bm!724972 () Bool)

(assert (=> bm!724972 (= call!724976 (validRegex!11331 (ite c!1438784 (regOne!42347 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))) (regOne!42346 (ite c!1438697 (reg!21246 r2!6144) (ite c!1438698 (regTwo!42347 r2!6144) (regTwo!42346 r2!6144)))))))))

(declare-fun b!7814280 () Bool)

(assert (=> b!7814280 (= e!4624583 e!4624582)))

(declare-fun res!3111515 () Bool)

(assert (=> b!7814280 (=> (not res!3111515) (not e!4624582))))

(assert (=> b!7814280 (= res!3111515 call!724976)))

(assert (= (and d!2349080 (not res!3111514)) b!7814277))

(assert (= (and b!7814277 c!1438783) b!7814275))

(assert (= (and b!7814277 (not c!1438783)) b!7814272))

(assert (= (and b!7814275 res!3111512) b!7814274))

(assert (= (and b!7814272 c!1438784) b!7814279))

(assert (= (and b!7814272 (not c!1438784)) b!7814273))

(assert (= (and b!7814279 res!3111513) b!7814276))

(assert (= (and b!7814273 (not res!3111511)) b!7814280))

(assert (= (and b!7814280 res!3111515) b!7814278))

(assert (= (or b!7814279 b!7814280) bm!724972))

(assert (= (or b!7814276 b!7814278) bm!724971))

(assert (= (or b!7814274 bm!724971) bm!724970))

(declare-fun m!8243162 () Bool)

(assert (=> bm!724970 m!8243162))

(declare-fun m!8243164 () Bool)

(assert (=> b!7814275 m!8243164))

(declare-fun m!8243166 () Bool)

(assert (=> bm!724972 m!8243166))

(assert (=> bm!724904 d!2349080))

(declare-fun b!7814281 () Bool)

(declare-fun e!4624588 () Bool)

(declare-fun lt!2676019 () Bool)

(declare-fun call!724978 () Bool)

(assert (=> b!7814281 (= e!4624588 (= lt!2676019 call!724978))))

(declare-fun b!7814282 () Bool)

(declare-fun e!4624590 () Bool)

(assert (=> b!7814282 (= e!4624588 e!4624590)))

(declare-fun c!1438785 () Bool)

(assert (=> b!7814282 (= c!1438785 ((_ is EmptyLang!20917) (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225))))))

(declare-fun b!7814283 () Bool)

(declare-fun e!4624591 () Bool)

(assert (=> b!7814283 (= e!4624591 (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)))))))

(declare-fun b!7814284 () Bool)

(declare-fun e!4624585 () Bool)

(declare-fun e!4624587 () Bool)

(assert (=> b!7814284 (= e!4624585 e!4624587)))

(declare-fun res!3111520 () Bool)

(assert (=> b!7814284 (=> (not res!3111520) (not e!4624587))))

(assert (=> b!7814284 (= res!3111520 (not lt!2676019))))

(declare-fun bm!724973 () Bool)

(assert (=> bm!724973 (= call!724978 (isEmpty!42277 (tail!15519 s!14225)))))

(declare-fun b!7814285 () Bool)

(declare-fun res!3111516 () Bool)

(assert (=> b!7814285 (=> res!3111516 e!4624585)))

(assert (=> b!7814285 (= res!3111516 (not ((_ is ElementMatch!20917) (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)))))))

(assert (=> b!7814285 (= e!4624590 e!4624585)))

(declare-fun e!4624589 () Bool)

(declare-fun b!7814286 () Bool)

(assert (=> b!7814286 (= e!4624589 (nullable!9289 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225))))))

(declare-fun b!7814288 () Bool)

(declare-fun res!3111523 () Bool)

(assert (=> b!7814288 (=> res!3111523 e!4624585)))

(assert (=> b!7814288 (= res!3111523 e!4624591)))

(declare-fun res!3111518 () Bool)

(assert (=> b!7814288 (=> (not res!3111518) (not e!4624591))))

(assert (=> b!7814288 (= res!3111518 lt!2676019)))

(declare-fun b!7814289 () Bool)

(declare-fun res!3111521 () Bool)

(assert (=> b!7814289 (=> (not res!3111521) (not e!4624591))))

(assert (=> b!7814289 (= res!3111521 (isEmpty!42277 (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814290 () Bool)

(declare-fun res!3111522 () Bool)

(declare-fun e!4624586 () Bool)

(assert (=> b!7814290 (=> res!3111522 e!4624586)))

(assert (=> b!7814290 (= res!3111522 (not (isEmpty!42277 (tail!15519 (tail!15519 s!14225)))))))

(declare-fun b!7814291 () Bool)

(assert (=> b!7814291 (= e!4624590 (not lt!2676019))))

(declare-fun b!7814292 () Bool)

(assert (=> b!7814292 (= e!4624589 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)) (head!15978 (tail!15519 s!14225))) (tail!15519 (tail!15519 s!14225))))))

(declare-fun b!7814293 () Bool)

(assert (=> b!7814293 (= e!4624587 e!4624586)))

(declare-fun res!3111519 () Bool)

(assert (=> b!7814293 (=> res!3111519 e!4624586)))

(assert (=> b!7814293 (= res!3111519 call!724978)))

(declare-fun b!7814294 () Bool)

(assert (=> b!7814294 (= e!4624586 (not (= (head!15978 (tail!15519 s!14225)) (c!1438650 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225))))))))

(declare-fun d!2349082 () Bool)

(assert (=> d!2349082 e!4624588))

(declare-fun c!1438786 () Bool)

(assert (=> d!2349082 (= c!1438786 ((_ is EmptyExpr!20917) (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225))))))

(assert (=> d!2349082 (= lt!2676019 e!4624589)))

(declare-fun c!1438787 () Bool)

(assert (=> d!2349082 (= c!1438787 (isEmpty!42277 (tail!15519 s!14225)))))

(assert (=> d!2349082 (validRegex!11331 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)))))

(assert (=> d!2349082 (= (matchR!10375 (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)) (tail!15519 s!14225)) lt!2676019)))

(declare-fun b!7814287 () Bool)

(declare-fun res!3111517 () Bool)

(assert (=> b!7814287 (=> (not res!3111517) (not e!4624591))))

(assert (=> b!7814287 (= res!3111517 (not call!724978))))

(assert (= (and d!2349082 c!1438787) b!7814286))

(assert (= (and d!2349082 (not c!1438787)) b!7814292))

(assert (= (and d!2349082 c!1438786) b!7814281))

(assert (= (and d!2349082 (not c!1438786)) b!7814282))

(assert (= (and b!7814282 c!1438785) b!7814291))

(assert (= (and b!7814282 (not c!1438785)) b!7814285))

(assert (= (and b!7814285 (not res!3111516)) b!7814288))

(assert (= (and b!7814288 res!3111518) b!7814287))

(assert (= (and b!7814287 res!3111517) b!7814289))

(assert (= (and b!7814289 res!3111521) b!7814283))

(assert (= (and b!7814288 (not res!3111523)) b!7814284))

(assert (= (and b!7814284 res!3111520) b!7814293))

(assert (= (and b!7814293 (not res!3111519)) b!7814290))

(assert (= (and b!7814290 (not res!3111522)) b!7814294))

(assert (= (or b!7814281 b!7814287 b!7814293) bm!724973))

(assert (=> bm!724973 m!8243034))

(assert (=> bm!724973 m!8243038))

(assert (=> b!7814294 m!8243034))

(assert (=> b!7814294 m!8243118))

(assert (=> b!7814292 m!8243034))

(assert (=> b!7814292 m!8243118))

(assert (=> b!7814292 m!8243080))

(assert (=> b!7814292 m!8243118))

(declare-fun m!8243168 () Bool)

(assert (=> b!7814292 m!8243168))

(assert (=> b!7814292 m!8243034))

(assert (=> b!7814292 m!8243122))

(assert (=> b!7814292 m!8243168))

(assert (=> b!7814292 m!8243122))

(declare-fun m!8243170 () Bool)

(assert (=> b!7814292 m!8243170))

(assert (=> d!2349082 m!8243034))

(assert (=> d!2349082 m!8243038))

(assert (=> d!2349082 m!8243080))

(declare-fun m!8243172 () Bool)

(assert (=> d!2349082 m!8243172))

(assert (=> b!7814290 m!8243034))

(assert (=> b!7814290 m!8243122))

(assert (=> b!7814290 m!8243122))

(assert (=> b!7814290 m!8243128))

(assert (=> b!7814286 m!8243080))

(declare-fun m!8243174 () Bool)

(assert (=> b!7814286 m!8243174))

(assert (=> b!7814289 m!8243034))

(assert (=> b!7814289 m!8243122))

(assert (=> b!7814289 m!8243122))

(assert (=> b!7814289 m!8243128))

(assert (=> b!7814283 m!8243034))

(assert (=> b!7814283 m!8243118))

(assert (=> b!7814099 d!2349082))

(declare-fun b!7814295 () Bool)

(declare-fun c!1438791 () Bool)

(assert (=> b!7814295 (= c!1438791 (nullable!9289 (regOne!42346 (Union!20917 r1!6206 r2!6144))))))

(declare-fun e!4624593 () Regex!20917)

(declare-fun e!4624594 () Regex!20917)

(assert (=> b!7814295 (= e!4624593 e!4624594)))

(declare-fun b!7814296 () Bool)

(declare-fun e!4624592 () Regex!20917)

(assert (=> b!7814296 (= e!4624592 (ite (= (head!15978 s!14225) (c!1438650 (Union!20917 r1!6206 r2!6144))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun call!724982 () Regex!20917)

(declare-fun b!7814297 () Bool)

(assert (=> b!7814297 (= e!4624594 (Union!20917 (Concat!29762 call!724982 (regTwo!42346 (Union!20917 r1!6206 r2!6144))) EmptyLang!20917))))

(declare-fun b!7814298 () Bool)

(declare-fun e!4624595 () Regex!20917)

(declare-fun call!724979 () Regex!20917)

(declare-fun call!724981 () Regex!20917)

(assert (=> b!7814298 (= e!4624595 (Union!20917 call!724979 call!724981))))

(declare-fun b!7814299 () Bool)

(declare-fun e!4624596 () Regex!20917)

(assert (=> b!7814299 (= e!4624596 e!4624592)))

(declare-fun c!1438790 () Bool)

(assert (=> b!7814299 (= c!1438790 ((_ is ElementMatch!20917) (Union!20917 r1!6206 r2!6144)))))

(declare-fun bm!724974 () Bool)

(declare-fun call!724980 () Regex!20917)

(assert (=> bm!724974 (= call!724982 call!724980)))

(declare-fun bm!724975 () Bool)

(declare-fun c!1438792 () Bool)

(assert (=> bm!724975 (= call!724981 (derivativeStep!6248 (ite c!1438792 (regTwo!42347 (Union!20917 r1!6206 r2!6144)) (regOne!42346 (Union!20917 r1!6206 r2!6144))) (head!15978 s!14225)))))

(declare-fun b!7814301 () Bool)

(assert (=> b!7814301 (= e!4624596 EmptyLang!20917)))

(declare-fun b!7814302 () Bool)

(assert (=> b!7814302 (= e!4624595 e!4624593)))

(declare-fun c!1438789 () Bool)

(assert (=> b!7814302 (= c!1438789 ((_ is Star!20917) (Union!20917 r1!6206 r2!6144)))))

(declare-fun bm!724976 () Bool)

(assert (=> bm!724976 (= call!724979 (derivativeStep!6248 (ite c!1438792 (regOne!42347 (Union!20917 r1!6206 r2!6144)) (ite c!1438789 (reg!21246 (Union!20917 r1!6206 r2!6144)) (ite c!1438791 (regTwo!42346 (Union!20917 r1!6206 r2!6144)) (regOne!42346 (Union!20917 r1!6206 r2!6144))))) (head!15978 s!14225)))))

(declare-fun b!7814303 () Bool)

(assert (=> b!7814303 (= e!4624593 (Concat!29762 call!724980 (Union!20917 r1!6206 r2!6144)))))

(declare-fun d!2349084 () Bool)

(declare-fun lt!2676020 () Regex!20917)

(assert (=> d!2349084 (validRegex!11331 lt!2676020)))

(assert (=> d!2349084 (= lt!2676020 e!4624596)))

(declare-fun c!1438788 () Bool)

(assert (=> d!2349084 (= c!1438788 (or ((_ is EmptyExpr!20917) (Union!20917 r1!6206 r2!6144)) ((_ is EmptyLang!20917) (Union!20917 r1!6206 r2!6144))))))

(assert (=> d!2349084 (validRegex!11331 (Union!20917 r1!6206 r2!6144))))

(assert (=> d!2349084 (= (derivativeStep!6248 (Union!20917 r1!6206 r2!6144) (head!15978 s!14225)) lt!2676020)))

(declare-fun b!7814300 () Bool)

(assert (=> b!7814300 (= e!4624594 (Union!20917 (Concat!29762 call!724981 (regTwo!42346 (Union!20917 r1!6206 r2!6144))) call!724982))))

(declare-fun bm!724977 () Bool)

(assert (=> bm!724977 (= call!724980 call!724979)))

(declare-fun b!7814304 () Bool)

(assert (=> b!7814304 (= c!1438792 ((_ is Union!20917) (Union!20917 r1!6206 r2!6144)))))

(assert (=> b!7814304 (= e!4624592 e!4624595)))

(assert (= (and d!2349084 c!1438788) b!7814301))

(assert (= (and d!2349084 (not c!1438788)) b!7814299))

(assert (= (and b!7814299 c!1438790) b!7814296))

(assert (= (and b!7814299 (not c!1438790)) b!7814304))

(assert (= (and b!7814304 c!1438792) b!7814298))

(assert (= (and b!7814304 (not c!1438792)) b!7814302))

(assert (= (and b!7814302 c!1438789) b!7814303))

(assert (= (and b!7814302 (not c!1438789)) b!7814295))

(assert (= (and b!7814295 c!1438791) b!7814300))

(assert (= (and b!7814295 (not c!1438791)) b!7814297))

(assert (= (or b!7814300 b!7814297) bm!724974))

(assert (= (or b!7814303 bm!724974) bm!724977))

(assert (= (or b!7814298 b!7814300) bm!724975))

(assert (= (or b!7814298 bm!724977) bm!724976))

(declare-fun m!8243176 () Bool)

(assert (=> b!7814295 m!8243176))

(assert (=> bm!724975 m!8243030))

(declare-fun m!8243178 () Bool)

(assert (=> bm!724975 m!8243178))

(assert (=> bm!724976 m!8243030))

(declare-fun m!8243180 () Bool)

(assert (=> bm!724976 m!8243180))

(declare-fun m!8243182 () Bool)

(assert (=> d!2349084 m!8243182))

(assert (=> d!2349084 m!8243084))

(assert (=> b!7814099 d!2349084))

(assert (=> b!7814099 d!2349060))

(assert (=> b!7814099 d!2349062))

(declare-fun b!7814305 () Bool)

(declare-fun c!1438796 () Bool)

(assert (=> b!7814305 (= c!1438796 (nullable!9289 (regOne!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))))))

(declare-fun e!4624598 () Regex!20917)

(declare-fun e!4624599 () Regex!20917)

(assert (=> b!7814305 (= e!4624598 e!4624599)))

(declare-fun b!7814306 () Bool)

(declare-fun e!4624597 () Regex!20917)

(assert (=> b!7814306 (= e!4624597 (ite (= (h!80078 s!14225) (c!1438650 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun call!724986 () Regex!20917)

(declare-fun b!7814307 () Bool)

(assert (=> b!7814307 (= e!4624599 (Union!20917 (Concat!29762 call!724986 (regTwo!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))) EmptyLang!20917))))

(declare-fun b!7814308 () Bool)

(declare-fun e!4624600 () Regex!20917)

(declare-fun call!724983 () Regex!20917)

(declare-fun call!724985 () Regex!20917)

(assert (=> b!7814308 (= e!4624600 (Union!20917 call!724983 call!724985))))

(declare-fun b!7814309 () Bool)

(declare-fun e!4624601 () Regex!20917)

(assert (=> b!7814309 (= e!4624601 e!4624597)))

(declare-fun c!1438795 () Bool)

(assert (=> b!7814309 (= c!1438795 ((_ is ElementMatch!20917) (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun bm!724978 () Bool)

(declare-fun call!724984 () Regex!20917)

(assert (=> bm!724978 (= call!724986 call!724984)))

(declare-fun c!1438797 () Bool)

(declare-fun bm!724979 () Bool)

(assert (=> bm!724979 (= call!724985 (derivativeStep!6248 (ite c!1438797 (regTwo!42347 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))) (regOne!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))) (h!80078 s!14225)))))

(declare-fun b!7814311 () Bool)

(assert (=> b!7814311 (= e!4624601 EmptyLang!20917)))

(declare-fun b!7814312 () Bool)

(assert (=> b!7814312 (= e!4624600 e!4624598)))

(declare-fun c!1438794 () Bool)

(assert (=> b!7814312 (= c!1438794 ((_ is Star!20917) (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun bm!724980 () Bool)

(assert (=> bm!724980 (= call!724983 (derivativeStep!6248 (ite c!1438797 (regOne!42347 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))) (ite c!1438794 (reg!21246 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))) (ite c!1438796 (regTwo!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))) (regOne!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))))) (h!80078 s!14225)))))

(declare-fun b!7814313 () Bool)

(assert (=> b!7814313 (= e!4624598 (Concat!29762 call!724984 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun d!2349086 () Bool)

(declare-fun lt!2676021 () Regex!20917)

(assert (=> d!2349086 (validRegex!11331 lt!2676021)))

(assert (=> d!2349086 (= lt!2676021 e!4624601)))

(declare-fun c!1438793 () Bool)

(assert (=> d!2349086 (= c!1438793 (or ((_ is EmptyExpr!20917) (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))) ((_ is EmptyLang!20917) (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))))))

(assert (=> d!2349086 (validRegex!11331 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))))

(assert (=> d!2349086 (= (derivativeStep!6248 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)) (h!80078 s!14225)) lt!2676021)))

(declare-fun b!7814310 () Bool)

(assert (=> b!7814310 (= e!4624599 (Union!20917 (Concat!29762 call!724985 (regTwo!42346 (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206)))) call!724986))))

(declare-fun bm!724981 () Bool)

(assert (=> bm!724981 (= call!724984 call!724983)))

(declare-fun b!7814314 () Bool)

(assert (=> b!7814314 (= c!1438797 ((_ is Union!20917) (ite c!1438762 (regTwo!42347 r1!6206) (regOne!42346 r1!6206))))))

(assert (=> b!7814314 (= e!4624597 e!4624600)))

(assert (= (and d!2349086 c!1438793) b!7814311))

(assert (= (and d!2349086 (not c!1438793)) b!7814309))

(assert (= (and b!7814309 c!1438795) b!7814306))

(assert (= (and b!7814309 (not c!1438795)) b!7814314))

(assert (= (and b!7814314 c!1438797) b!7814308))

(assert (= (and b!7814314 (not c!1438797)) b!7814312))

(assert (= (and b!7814312 c!1438794) b!7814313))

(assert (= (and b!7814312 (not c!1438794)) b!7814305))

(assert (= (and b!7814305 c!1438796) b!7814310))

(assert (= (and b!7814305 (not c!1438796)) b!7814307))

(assert (= (or b!7814310 b!7814307) bm!724978))

(assert (= (or b!7814313 bm!724978) bm!724981))

(assert (= (or b!7814308 b!7814310) bm!724979))

(assert (= (or b!7814308 bm!724981) bm!724980))

(declare-fun m!8243184 () Bool)

(assert (=> b!7814305 m!8243184))

(declare-fun m!8243186 () Bool)

(assert (=> bm!724979 m!8243186))

(declare-fun m!8243188 () Bool)

(assert (=> bm!724980 m!8243188))

(declare-fun m!8243190 () Bool)

(assert (=> d!2349086 m!8243190))

(declare-fun m!8243192 () Bool)

(assert (=> d!2349086 m!8243192))

(assert (=> bm!724951 d!2349086))

(declare-fun b!7814315 () Bool)

(declare-fun e!4624602 () Bool)

(declare-fun e!4624603 () Bool)

(assert (=> b!7814315 (= e!4624602 e!4624603)))

(declare-fun c!1438799 () Bool)

(assert (=> b!7814315 (= c!1438799 ((_ is Union!20917) (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))

(declare-fun d!2349088 () Bool)

(declare-fun res!3111527 () Bool)

(declare-fun e!4624608 () Bool)

(assert (=> d!2349088 (=> res!3111527 e!4624608)))

(assert (=> d!2349088 (= res!3111527 ((_ is ElementMatch!20917) (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))

(assert (=> d!2349088 (= (validRegex!11331 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))) e!4624608)))

(declare-fun c!1438798 () Bool)

(declare-fun call!724987 () Bool)

(declare-fun bm!724982 () Bool)

(assert (=> bm!724982 (= call!724987 (validRegex!11331 (ite c!1438798 (reg!21246 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))) (ite c!1438799 (regTwo!42347 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))) (regTwo!42346 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984)))))))))

(declare-fun b!7814316 () Bool)

(declare-fun res!3111524 () Bool)

(declare-fun e!4624607 () Bool)

(assert (=> b!7814316 (=> res!3111524 e!4624607)))

(assert (=> b!7814316 (= res!3111524 (not ((_ is Concat!29762) (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984)))))))

(assert (=> b!7814316 (= e!4624603 e!4624607)))

(declare-fun b!7814317 () Bool)

(declare-fun e!4624604 () Bool)

(assert (=> b!7814317 (= e!4624604 call!724987)))

(declare-fun b!7814318 () Bool)

(assert (=> b!7814318 (= e!4624602 e!4624604)))

(declare-fun res!3111525 () Bool)

(assert (=> b!7814318 (= res!3111525 (not (nullable!9289 (reg!21246 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))))

(assert (=> b!7814318 (=> (not res!3111525) (not e!4624604))))

(declare-fun b!7814319 () Bool)

(declare-fun e!4624605 () Bool)

(declare-fun call!724989 () Bool)

(assert (=> b!7814319 (= e!4624605 call!724989)))

(declare-fun b!7814320 () Bool)

(assert (=> b!7814320 (= e!4624608 e!4624602)))

(assert (=> b!7814320 (= c!1438798 ((_ is Star!20917) (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))

(declare-fun b!7814321 () Bool)

(declare-fun e!4624606 () Bool)

(assert (=> b!7814321 (= e!4624606 call!724989)))

(declare-fun b!7814322 () Bool)

(declare-fun res!3111526 () Bool)

(assert (=> b!7814322 (=> (not res!3111526) (not e!4624605))))

(declare-fun call!724988 () Bool)

(assert (=> b!7814322 (= res!3111526 call!724988)))

(assert (=> b!7814322 (= e!4624603 e!4624605)))

(declare-fun bm!724983 () Bool)

(assert (=> bm!724983 (= call!724989 call!724987)))

(declare-fun bm!724984 () Bool)

(assert (=> bm!724984 (= call!724988 (validRegex!11331 (ite c!1438799 (regOne!42347 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))) (regOne!42346 (ite c!1438700 (regOne!42347 lt!2675984) (regOne!42346 lt!2675984))))))))

(declare-fun b!7814323 () Bool)

(assert (=> b!7814323 (= e!4624607 e!4624606)))

(declare-fun res!3111528 () Bool)

(assert (=> b!7814323 (=> (not res!3111528) (not e!4624606))))

(assert (=> b!7814323 (= res!3111528 call!724988)))

(assert (= (and d!2349088 (not res!3111527)) b!7814320))

(assert (= (and b!7814320 c!1438798) b!7814318))

(assert (= (and b!7814320 (not c!1438798)) b!7814315))

(assert (= (and b!7814318 res!3111525) b!7814317))

(assert (= (and b!7814315 c!1438799) b!7814322))

(assert (= (and b!7814315 (not c!1438799)) b!7814316))

(assert (= (and b!7814322 res!3111526) b!7814319))

(assert (= (and b!7814316 (not res!3111524)) b!7814323))

(assert (= (and b!7814323 res!3111528) b!7814321))

(assert (= (or b!7814322 b!7814323) bm!724984))

(assert (= (or b!7814319 b!7814321) bm!724983))

(assert (= (or b!7814317 bm!724983) bm!724982))

(declare-fun m!8243194 () Bool)

(assert (=> bm!724982 m!8243194))

(declare-fun m!8243196 () Bool)

(assert (=> b!7814318 m!8243196))

(declare-fun m!8243198 () Bool)

(assert (=> bm!724984 m!8243198))

(assert (=> bm!724909 d!2349088))

(assert (=> bm!724927 d!2349078))

(assert (=> b!7814101 d!2349060))

(assert (=> b!7813953 d!2349060))

(assert (=> d!2349026 d!2349078))

(assert (=> d!2349026 d!2349006))

(assert (=> b!7813945 d!2349046))

(assert (=> b!7813945 d!2349048))

(declare-fun d!2349092 () Bool)

(assert (=> d!2349092 (= (nullable!9289 r1!6206) (nullableFct!3659 r1!6206))))

(declare-fun bs!1966655 () Bool)

(assert (= bs!1966655 d!2349092))

(declare-fun m!8243200 () Bool)

(assert (=> bs!1966655 m!8243200))

(assert (=> b!7813980 d!2349092))

(declare-fun c!1438806 () Bool)

(declare-fun b!7814338 () Bool)

(assert (=> b!7814338 (= c!1438806 (nullable!9289 (regOne!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))))))

(declare-fun e!4624617 () Regex!20917)

(declare-fun e!4624618 () Regex!20917)

(assert (=> b!7814338 (= e!4624617 e!4624618)))

(declare-fun b!7814339 () Bool)

(declare-fun e!4624616 () Regex!20917)

(assert (=> b!7814339 (= e!4624616 (ite (= (h!80078 s!14225) (c!1438650 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814340 () Bool)

(declare-fun call!724994 () Regex!20917)

(assert (=> b!7814340 (= e!4624618 (Union!20917 (Concat!29762 call!724994 (regTwo!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))) EmptyLang!20917))))

(declare-fun b!7814341 () Bool)

(declare-fun e!4624619 () Regex!20917)

(declare-fun call!724991 () Regex!20917)

(declare-fun call!724993 () Regex!20917)

(assert (=> b!7814341 (= e!4624619 (Union!20917 call!724991 call!724993))))

(declare-fun b!7814342 () Bool)

(declare-fun e!4624620 () Regex!20917)

(assert (=> b!7814342 (= e!4624620 e!4624616)))

(declare-fun c!1438805 () Bool)

(assert (=> b!7814342 (= c!1438805 ((_ is ElementMatch!20917) (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))))))

(declare-fun bm!724986 () Bool)

(declare-fun call!724992 () Regex!20917)

(assert (=> bm!724986 (= call!724994 call!724992)))

(declare-fun bm!724987 () Bool)

(declare-fun c!1438807 () Bool)

(assert (=> bm!724987 (= call!724993 (derivativeStep!6248 (ite c!1438807 (regTwo!42347 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))) (regOne!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))) (h!80078 s!14225)))))

(declare-fun b!7814344 () Bool)

(assert (=> b!7814344 (= e!4624620 EmptyLang!20917)))

(declare-fun b!7814345 () Bool)

(assert (=> b!7814345 (= e!4624619 e!4624617)))

(declare-fun c!1438804 () Bool)

(assert (=> b!7814345 (= c!1438804 ((_ is Star!20917) (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))))))

(declare-fun bm!724988 () Bool)

(assert (=> bm!724988 (= call!724991 (derivativeStep!6248 (ite c!1438807 (regOne!42347 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))) (ite c!1438804 (reg!21246 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))) (ite c!1438806 (regTwo!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))) (regOne!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))))) (h!80078 s!14225)))))

(declare-fun b!7814346 () Bool)

(assert (=> b!7814346 (= e!4624617 (Concat!29762 call!724992 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))))))

(declare-fun d!2349094 () Bool)

(declare-fun lt!2676023 () Regex!20917)

(assert (=> d!2349094 (validRegex!11331 lt!2676023)))

(assert (=> d!2349094 (= lt!2676023 e!4624620)))

(declare-fun c!1438803 () Bool)

(assert (=> d!2349094 (= c!1438803 (or ((_ is EmptyExpr!20917) (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))) ((_ is EmptyLang!20917) (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))))))

(assert (=> d!2349094 (validRegex!11331 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))))

(assert (=> d!2349094 (= (derivativeStep!6248 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))) (h!80078 s!14225)) lt!2676023)))

(declare-fun b!7814343 () Bool)

(assert (=> b!7814343 (= e!4624618 (Union!20917 (Concat!29762 call!724993 (regTwo!42346 (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206)))))) call!724994))))

(declare-fun bm!724989 () Bool)

(assert (=> bm!724989 (= call!724992 call!724991)))

(declare-fun b!7814347 () Bool)

(assert (=> b!7814347 (= c!1438807 ((_ is Union!20917) (ite c!1438762 (regOne!42347 r1!6206) (ite c!1438759 (reg!21246 r1!6206) (ite c!1438761 (regTwo!42346 r1!6206) (regOne!42346 r1!6206))))))))

(assert (=> b!7814347 (= e!4624616 e!4624619)))

(assert (= (and d!2349094 c!1438803) b!7814344))

(assert (= (and d!2349094 (not c!1438803)) b!7814342))

(assert (= (and b!7814342 c!1438805) b!7814339))

(assert (= (and b!7814342 (not c!1438805)) b!7814347))

(assert (= (and b!7814347 c!1438807) b!7814341))

(assert (= (and b!7814347 (not c!1438807)) b!7814345))

(assert (= (and b!7814345 c!1438804) b!7814346))

(assert (= (and b!7814345 (not c!1438804)) b!7814338))

(assert (= (and b!7814338 c!1438806) b!7814343))

(assert (= (and b!7814338 (not c!1438806)) b!7814340))

(assert (= (or b!7814343 b!7814340) bm!724986))

(assert (= (or b!7814346 bm!724986) bm!724989))

(assert (= (or b!7814341 b!7814343) bm!724987))

(assert (= (or b!7814341 bm!724989) bm!724988))

(declare-fun m!8243216 () Bool)

(assert (=> b!7814338 m!8243216))

(declare-fun m!8243218 () Bool)

(assert (=> bm!724987 m!8243218))

(declare-fun m!8243226 () Bool)

(assert (=> bm!724988 m!8243226))

(declare-fun m!8243228 () Bool)

(assert (=> d!2349094 m!8243228))

(declare-fun m!8243230 () Bool)

(assert (=> d!2349094 m!8243230))

(assert (=> bm!724952 d!2349094))

(assert (=> b!7814087 d!2349024))

(assert (=> b!7813984 d!2349064))

(assert (=> b!7813984 d!2349062))

(assert (=> d!2349036 d!2349034))

(declare-fun d!2349100 () Bool)

(declare-fun e!4624642 () Bool)

(assert (=> d!2349100 e!4624642))

(declare-fun res!3111549 () Bool)

(assert (=> d!2349100 (=> res!3111549 e!4624642)))

(assert (=> d!2349100 (= res!3111549 (matchR!10375 lt!2675983 (t!388489 s!14225)))))

(assert (=> d!2349100 true))

(declare-fun _$116!424 () Unit!168636)

(assert (=> d!2349100 (= (choose!59585 lt!2675983 lt!2675984 (t!388489 s!14225)) _$116!424)))

(declare-fun b!7814378 () Bool)

(assert (=> b!7814378 (= e!4624642 (matchR!10375 lt!2675984 (t!388489 s!14225)))))

(assert (= (and d!2349100 (not res!3111549)) b!7814378))

(assert (=> d!2349100 m!8242898))

(assert (=> b!7814378 m!8242892))

(assert (=> d!2349036 d!2349100))

(assert (=> d!2349036 d!2349040))

(assert (=> bm!724922 d!2349078))

(assert (=> d!2349038 d!2349078))

(declare-fun b!7814379 () Bool)

(declare-fun e!4624643 () Bool)

(declare-fun e!4624644 () Bool)

(assert (=> b!7814379 (= e!4624643 e!4624644)))

(declare-fun c!1438818 () Bool)

(assert (=> b!7814379 (= c!1438818 ((_ is Union!20917) (Union!20917 r1!6206 r2!6144)))))

(declare-fun d!2349112 () Bool)

(declare-fun res!3111553 () Bool)

(declare-fun e!4624649 () Bool)

(assert (=> d!2349112 (=> res!3111553 e!4624649)))

(assert (=> d!2349112 (= res!3111553 ((_ is ElementMatch!20917) (Union!20917 r1!6206 r2!6144)))))

(assert (=> d!2349112 (= (validRegex!11331 (Union!20917 r1!6206 r2!6144)) e!4624649)))

(declare-fun call!725005 () Bool)

(declare-fun bm!725000 () Bool)

(declare-fun c!1438817 () Bool)

(assert (=> bm!725000 (= call!725005 (validRegex!11331 (ite c!1438817 (reg!21246 (Union!20917 r1!6206 r2!6144)) (ite c!1438818 (regTwo!42347 (Union!20917 r1!6206 r2!6144)) (regTwo!42346 (Union!20917 r1!6206 r2!6144))))))))

(declare-fun b!7814380 () Bool)

(declare-fun res!3111550 () Bool)

(declare-fun e!4624648 () Bool)

(assert (=> b!7814380 (=> res!3111550 e!4624648)))

(assert (=> b!7814380 (= res!3111550 (not ((_ is Concat!29762) (Union!20917 r1!6206 r2!6144))))))

(assert (=> b!7814380 (= e!4624644 e!4624648)))

(declare-fun b!7814381 () Bool)

(declare-fun e!4624645 () Bool)

(assert (=> b!7814381 (= e!4624645 call!725005)))

(declare-fun b!7814382 () Bool)

(assert (=> b!7814382 (= e!4624643 e!4624645)))

(declare-fun res!3111551 () Bool)

(assert (=> b!7814382 (= res!3111551 (not (nullable!9289 (reg!21246 (Union!20917 r1!6206 r2!6144)))))))

(assert (=> b!7814382 (=> (not res!3111551) (not e!4624645))))

(declare-fun b!7814383 () Bool)

(declare-fun e!4624646 () Bool)

(declare-fun call!725007 () Bool)

(assert (=> b!7814383 (= e!4624646 call!725007)))

(declare-fun b!7814384 () Bool)

(assert (=> b!7814384 (= e!4624649 e!4624643)))

(assert (=> b!7814384 (= c!1438817 ((_ is Star!20917) (Union!20917 r1!6206 r2!6144)))))

(declare-fun b!7814385 () Bool)

(declare-fun e!4624647 () Bool)

(assert (=> b!7814385 (= e!4624647 call!725007)))

(declare-fun b!7814386 () Bool)

(declare-fun res!3111552 () Bool)

(assert (=> b!7814386 (=> (not res!3111552) (not e!4624646))))

(declare-fun call!725006 () Bool)

(assert (=> b!7814386 (= res!3111552 call!725006)))

(assert (=> b!7814386 (= e!4624644 e!4624646)))

(declare-fun bm!725001 () Bool)

(assert (=> bm!725001 (= call!725007 call!725005)))

(declare-fun bm!725002 () Bool)

(assert (=> bm!725002 (= call!725006 (validRegex!11331 (ite c!1438818 (regOne!42347 (Union!20917 r1!6206 r2!6144)) (regOne!42346 (Union!20917 r1!6206 r2!6144)))))))

(declare-fun b!7814387 () Bool)

(assert (=> b!7814387 (= e!4624648 e!4624647)))

(declare-fun res!3111554 () Bool)

(assert (=> b!7814387 (=> (not res!3111554) (not e!4624647))))

(assert (=> b!7814387 (= res!3111554 call!725006)))

(assert (= (and d!2349112 (not res!3111553)) b!7814384))

(assert (= (and b!7814384 c!1438817) b!7814382))

(assert (= (and b!7814384 (not c!1438817)) b!7814379))

(assert (= (and b!7814382 res!3111551) b!7814381))

(assert (= (and b!7814379 c!1438818) b!7814386))

(assert (= (and b!7814379 (not c!1438818)) b!7814380))

(assert (= (and b!7814386 res!3111552) b!7814383))

(assert (= (and b!7814380 (not res!3111550)) b!7814387))

(assert (= (and b!7814387 res!3111554) b!7814385))

(assert (= (or b!7814386 b!7814387) bm!725002))

(assert (= (or b!7814383 b!7814385) bm!725001))

(assert (= (or b!7814381 bm!725001) bm!725000))

(declare-fun m!8243246 () Bool)

(assert (=> bm!725000 m!8243246))

(declare-fun m!8243248 () Bool)

(assert (=> b!7814382 m!8243248))

(declare-fun m!8243250 () Bool)

(assert (=> bm!725002 m!8243250))

(assert (=> d!2349038 d!2349112))

(declare-fun b!7814397 () Bool)

(declare-fun c!1438824 () Bool)

(assert (=> b!7814397 (= c!1438824 (nullable!9289 (regOne!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))))))

(declare-fun e!4624658 () Regex!20917)

(declare-fun e!4624659 () Regex!20917)

(assert (=> b!7814397 (= e!4624658 e!4624659)))

(declare-fun e!4624657 () Regex!20917)

(declare-fun b!7814398 () Bool)

(assert (=> b!7814398 (= e!4624657 (ite (= (h!80078 s!14225) (c!1438650 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814399 () Bool)

(declare-fun call!725014 () Regex!20917)

(assert (=> b!7814399 (= e!4624659 (Union!20917 (Concat!29762 call!725014 (regTwo!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))) EmptyLang!20917))))

(declare-fun b!7814400 () Bool)

(declare-fun e!4624660 () Regex!20917)

(declare-fun call!725011 () Regex!20917)

(declare-fun call!725013 () Regex!20917)

(assert (=> b!7814400 (= e!4624660 (Union!20917 call!725011 call!725013))))

(declare-fun b!7814401 () Bool)

(declare-fun e!4624661 () Regex!20917)

(assert (=> b!7814401 (= e!4624661 e!4624657)))

(declare-fun c!1438823 () Bool)

(assert (=> b!7814401 (= c!1438823 ((_ is ElementMatch!20917) (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))))))

(declare-fun bm!725006 () Bool)

(declare-fun call!725012 () Regex!20917)

(assert (=> bm!725006 (= call!725014 call!725012)))

(declare-fun bm!725007 () Bool)

(declare-fun c!1438825 () Bool)

(assert (=> bm!725007 (= call!725013 (derivativeStep!6248 (ite c!1438825 (regTwo!42347 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))) (regOne!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))) (h!80078 s!14225)))))

(declare-fun b!7814403 () Bool)

(assert (=> b!7814403 (= e!4624661 EmptyLang!20917)))

(declare-fun b!7814404 () Bool)

(assert (=> b!7814404 (= e!4624660 e!4624658)))

(declare-fun c!1438822 () Bool)

(assert (=> b!7814404 (= c!1438822 ((_ is Star!20917) (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))))))

(declare-fun bm!725008 () Bool)

(assert (=> bm!725008 (= call!725011 (derivativeStep!6248 (ite c!1438825 (regOne!42347 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))) (ite c!1438822 (reg!21246 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))) (ite c!1438824 (regTwo!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))) (regOne!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))))) (h!80078 s!14225)))))

(declare-fun b!7814405 () Bool)

(assert (=> b!7814405 (= e!4624658 (Concat!29762 call!725012 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))))))

(declare-fun d!2349120 () Bool)

(declare-fun lt!2676025 () Regex!20917)

(assert (=> d!2349120 (validRegex!11331 lt!2676025)))

(assert (=> d!2349120 (= lt!2676025 e!4624661)))

(declare-fun c!1438821 () Bool)

(assert (=> d!2349120 (= c!1438821 (or ((_ is EmptyExpr!20917) (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))) ((_ is EmptyLang!20917) (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))))))

(assert (=> d!2349120 (validRegex!11331 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))))

(assert (=> d!2349120 (= (derivativeStep!6248 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))) (h!80078 s!14225)) lt!2676025)))

(declare-fun b!7814402 () Bool)

(assert (=> b!7814402 (= e!4624659 (Union!20917 (Concat!29762 call!725013 (regTwo!42346 (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144)))))) call!725014))))

(declare-fun bm!725009 () Bool)

(assert (=> bm!725009 (= call!725012 call!725011)))

(declare-fun b!7814406 () Bool)

(assert (=> b!7814406 (= c!1438825 ((_ is Union!20917) (ite c!1438757 (regOne!42347 r2!6144) (ite c!1438754 (reg!21246 r2!6144) (ite c!1438756 (regTwo!42346 r2!6144) (regOne!42346 r2!6144))))))))

(assert (=> b!7814406 (= e!4624657 e!4624660)))

(assert (= (and d!2349120 c!1438821) b!7814403))

(assert (= (and d!2349120 (not c!1438821)) b!7814401))

(assert (= (and b!7814401 c!1438823) b!7814398))

(assert (= (and b!7814401 (not c!1438823)) b!7814406))

(assert (= (and b!7814406 c!1438825) b!7814400))

(assert (= (and b!7814406 (not c!1438825)) b!7814404))

(assert (= (and b!7814404 c!1438822) b!7814405))

(assert (= (and b!7814404 (not c!1438822)) b!7814397))

(assert (= (and b!7814397 c!1438824) b!7814402))

(assert (= (and b!7814397 (not c!1438824)) b!7814399))

(assert (= (or b!7814402 b!7814399) bm!725006))

(assert (= (or b!7814405 bm!725006) bm!725009))

(assert (= (or b!7814400 b!7814402) bm!725007))

(assert (= (or b!7814400 bm!725009) bm!725008))

(declare-fun m!8243258 () Bool)

(assert (=> b!7814397 m!8243258))

(declare-fun m!8243260 () Bool)

(assert (=> bm!725007 m!8243260))

(declare-fun m!8243262 () Bool)

(assert (=> bm!725008 m!8243262))

(declare-fun m!8243264 () Bool)

(assert (=> d!2349120 m!8243264))

(declare-fun m!8243266 () Bool)

(assert (=> d!2349120 m!8243266))

(assert (=> bm!724948 d!2349120))

(assert (=> b!7813950 d!2349054))

(assert (=> b!7814022 d!2349046))

(assert (=> b!7814022 d!2349048))

(assert (=> b!7814090 d!2349060))

(assert (=> d!2348994 d!2349068))

(declare-fun b!7814421 () Bool)

(declare-fun e!4624669 () Bool)

(declare-fun e!4624670 () Bool)

(assert (=> b!7814421 (= e!4624669 e!4624670)))

(declare-fun c!1438830 () Bool)

(assert (=> b!7814421 (= c!1438830 ((_ is Union!20917) (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun d!2349124 () Bool)

(declare-fun res!3111571 () Bool)

(declare-fun e!4624675 () Bool)

(assert (=> d!2349124 (=> res!3111571 e!4624675)))

(assert (=> d!2349124 (= res!3111571 ((_ is ElementMatch!20917) (Union!20917 lt!2675983 lt!2675984)))))

(assert (=> d!2349124 (= (validRegex!11331 (Union!20917 lt!2675983 lt!2675984)) e!4624675)))

(declare-fun call!725016 () Bool)

(declare-fun c!1438829 () Bool)

(declare-fun bm!725011 () Bool)

(assert (=> bm!725011 (= call!725016 (validRegex!11331 (ite c!1438829 (reg!21246 (Union!20917 lt!2675983 lt!2675984)) (ite c!1438830 (regTwo!42347 (Union!20917 lt!2675983 lt!2675984)) (regTwo!42346 (Union!20917 lt!2675983 lt!2675984))))))))

(declare-fun b!7814422 () Bool)

(declare-fun res!3111568 () Bool)

(declare-fun e!4624674 () Bool)

(assert (=> b!7814422 (=> res!3111568 e!4624674)))

(assert (=> b!7814422 (= res!3111568 (not ((_ is Concat!29762) (Union!20917 lt!2675983 lt!2675984))))))

(assert (=> b!7814422 (= e!4624670 e!4624674)))

(declare-fun b!7814423 () Bool)

(declare-fun e!4624671 () Bool)

(assert (=> b!7814423 (= e!4624671 call!725016)))

(declare-fun b!7814424 () Bool)

(assert (=> b!7814424 (= e!4624669 e!4624671)))

(declare-fun res!3111569 () Bool)

(assert (=> b!7814424 (= res!3111569 (not (nullable!9289 (reg!21246 (Union!20917 lt!2675983 lt!2675984)))))))

(assert (=> b!7814424 (=> (not res!3111569) (not e!4624671))))

(declare-fun b!7814425 () Bool)

(declare-fun e!4624672 () Bool)

(declare-fun call!725018 () Bool)

(assert (=> b!7814425 (= e!4624672 call!725018)))

(declare-fun b!7814426 () Bool)

(assert (=> b!7814426 (= e!4624675 e!4624669)))

(assert (=> b!7814426 (= c!1438829 ((_ is Star!20917) (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun b!7814427 () Bool)

(declare-fun e!4624673 () Bool)

(assert (=> b!7814427 (= e!4624673 call!725018)))

(declare-fun b!7814428 () Bool)

(declare-fun res!3111570 () Bool)

(assert (=> b!7814428 (=> (not res!3111570) (not e!4624672))))

(declare-fun call!725017 () Bool)

(assert (=> b!7814428 (= res!3111570 call!725017)))

(assert (=> b!7814428 (= e!4624670 e!4624672)))

(declare-fun bm!725012 () Bool)

(assert (=> bm!725012 (= call!725018 call!725016)))

(declare-fun bm!725013 () Bool)

(assert (=> bm!725013 (= call!725017 (validRegex!11331 (ite c!1438830 (regOne!42347 (Union!20917 lt!2675983 lt!2675984)) (regOne!42346 (Union!20917 lt!2675983 lt!2675984)))))))

(declare-fun b!7814429 () Bool)

(assert (=> b!7814429 (= e!4624674 e!4624673)))

(declare-fun res!3111572 () Bool)

(assert (=> b!7814429 (=> (not res!3111572) (not e!4624673))))

(assert (=> b!7814429 (= res!3111572 call!725017)))

(assert (= (and d!2349124 (not res!3111571)) b!7814426))

(assert (= (and b!7814426 c!1438829) b!7814424))

(assert (= (and b!7814426 (not c!1438829)) b!7814421))

(assert (= (and b!7814424 res!3111569) b!7814423))

(assert (= (and b!7814421 c!1438830) b!7814428))

(assert (= (and b!7814421 (not c!1438830)) b!7814422))

(assert (= (and b!7814428 res!3111570) b!7814425))

(assert (= (and b!7814422 (not res!3111568)) b!7814429))

(assert (= (and b!7814429 res!3111572) b!7814427))

(assert (= (or b!7814428 b!7814429) bm!725013))

(assert (= (or b!7814425 b!7814427) bm!725012))

(assert (= (or b!7814423 bm!725012) bm!725011))

(declare-fun m!8243280 () Bool)

(assert (=> bm!725011 m!8243280))

(declare-fun m!8243284 () Bool)

(assert (=> b!7814424 m!8243284))

(declare-fun m!8243286 () Bool)

(assert (=> bm!725013 m!8243286))

(assert (=> d!2348994 d!2349124))

(assert (=> bm!724934 d!2349078))

(assert (=> b!7813959 d!2349064))

(assert (=> b!7813959 d!2349062))

(declare-fun b!7814440 () Bool)

(declare-fun e!4624684 () Bool)

(declare-fun lt!2676028 () Bool)

(declare-fun call!725023 () Bool)

(assert (=> b!7814440 (= e!4624684 (= lt!2676028 call!725023))))

(declare-fun b!7814441 () Bool)

(declare-fun e!4624686 () Bool)

(assert (=> b!7814441 (= e!4624684 e!4624686)))

(declare-fun c!1438836 () Bool)

(assert (=> b!7814441 (= c!1438836 ((_ is EmptyLang!20917) (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814442 () Bool)

(declare-fun e!4624687 () Bool)

(assert (=> b!7814442 (= e!4624687 (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))))))))

(declare-fun b!7814443 () Bool)

(declare-fun e!4624681 () Bool)

(declare-fun e!4624683 () Bool)

(assert (=> b!7814443 (= e!4624681 e!4624683)))

(declare-fun res!3111577 () Bool)

(assert (=> b!7814443 (=> (not res!3111577) (not e!4624683))))

(assert (=> b!7814443 (= res!3111577 (not lt!2676028))))

(declare-fun bm!725018 () Bool)

(assert (=> bm!725018 (= call!725023 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7814444 () Bool)

(declare-fun res!3111573 () Bool)

(assert (=> b!7814444 (=> res!3111573 e!4624681)))

(assert (=> b!7814444 (= res!3111573 (not ((_ is ElementMatch!20917) (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))))))))

(assert (=> b!7814444 (= e!4624686 e!4624681)))

(declare-fun b!7814445 () Bool)

(declare-fun e!4624685 () Bool)

(assert (=> b!7814445 (= e!4624685 (nullable!9289 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814447 () Bool)

(declare-fun res!3111580 () Bool)

(assert (=> b!7814447 (=> res!3111580 e!4624681)))

(assert (=> b!7814447 (= res!3111580 e!4624687)))

(declare-fun res!3111575 () Bool)

(assert (=> b!7814447 (=> (not res!3111575) (not e!4624687))))

(assert (=> b!7814447 (= res!3111575 lt!2676028)))

(declare-fun b!7814448 () Bool)

(declare-fun res!3111578 () Bool)

(assert (=> b!7814448 (=> (not res!3111578) (not e!4624687))))

(assert (=> b!7814448 (= res!3111578 (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814449 () Bool)

(declare-fun res!3111579 () Bool)

(declare-fun e!4624682 () Bool)

(assert (=> b!7814449 (=> res!3111579 e!4624682)))

(assert (=> b!7814449 (= res!3111579 (not (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225))))))))

(declare-fun b!7814450 () Bool)

(assert (=> b!7814450 (= e!4624686 (not lt!2676028))))

(declare-fun b!7814451 () Bool)

(assert (=> b!7814451 (= e!4624685 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))) (head!15978 (tail!15519 (t!388489 s!14225)))) (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814452 () Bool)

(assert (=> b!7814452 (= e!4624683 e!4624682)))

(declare-fun res!3111576 () Bool)

(assert (=> b!7814452 (=> res!3111576 e!4624682)))

(assert (=> b!7814452 (= res!3111576 call!725023)))

(declare-fun b!7814453 () Bool)

(assert (=> b!7814453 (= e!4624682 (not (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225)))))))))

(declare-fun d!2349128 () Bool)

(assert (=> d!2349128 e!4624684))

(declare-fun c!1438837 () Bool)

(assert (=> d!2349128 (= c!1438837 ((_ is EmptyExpr!20917) (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225)))))))

(assert (=> d!2349128 (= lt!2676028 e!4624685)))

(declare-fun c!1438838 () Bool)

(assert (=> d!2349128 (= c!1438838 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(assert (=> d!2349128 (validRegex!11331 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))))))

(assert (=> d!2349128 (= (matchR!10375 (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))) lt!2676028)))

(declare-fun b!7814446 () Bool)

(declare-fun res!3111574 () Bool)

(assert (=> b!7814446 (=> (not res!3111574) (not e!4624687))))

(assert (=> b!7814446 (= res!3111574 (not call!725023))))

(assert (= (and d!2349128 c!1438838) b!7814445))

(assert (= (and d!2349128 (not c!1438838)) b!7814451))

(assert (= (and d!2349128 c!1438837) b!7814440))

(assert (= (and d!2349128 (not c!1438837)) b!7814441))

(assert (= (and b!7814441 c!1438836) b!7814450))

(assert (= (and b!7814441 (not c!1438836)) b!7814444))

(assert (= (and b!7814444 (not res!3111573)) b!7814447))

(assert (= (and b!7814447 res!3111575) b!7814446))

(assert (= (and b!7814446 res!3111574) b!7814448))

(assert (= (and b!7814448 res!3111578) b!7814442))

(assert (= (and b!7814447 (not res!3111580)) b!7814443))

(assert (= (and b!7814443 res!3111577) b!7814452))

(assert (= (and b!7814452 (not res!3111576)) b!7814449))

(assert (= (and b!7814449 (not res!3111579)) b!7814453))

(assert (= (or b!7814440 b!7814446 b!7814452) bm!725018))

(assert (=> bm!725018 m!8242956))

(assert (=> bm!725018 m!8242962))

(assert (=> b!7814453 m!8242956))

(declare-fun m!8243292 () Bool)

(assert (=> b!7814453 m!8243292))

(assert (=> b!7814451 m!8242956))

(assert (=> b!7814451 m!8243292))

(assert (=> b!7814451 m!8243072))

(assert (=> b!7814451 m!8243292))

(declare-fun m!8243298 () Bool)

(assert (=> b!7814451 m!8243298))

(assert (=> b!7814451 m!8242956))

(declare-fun m!8243300 () Bool)

(assert (=> b!7814451 m!8243300))

(assert (=> b!7814451 m!8243298))

(assert (=> b!7814451 m!8243300))

(declare-fun m!8243302 () Bool)

(assert (=> b!7814451 m!8243302))

(assert (=> d!2349128 m!8242956))

(assert (=> d!2349128 m!8242962))

(assert (=> d!2349128 m!8243072))

(declare-fun m!8243304 () Bool)

(assert (=> d!2349128 m!8243304))

(assert (=> b!7814449 m!8242956))

(assert (=> b!7814449 m!8243300))

(assert (=> b!7814449 m!8243300))

(declare-fun m!8243306 () Bool)

(assert (=> b!7814449 m!8243306))

(assert (=> b!7814445 m!8243072))

(declare-fun m!8243308 () Bool)

(assert (=> b!7814445 m!8243308))

(assert (=> b!7814448 m!8242956))

(assert (=> b!7814448 m!8243300))

(assert (=> b!7814448 m!8243300))

(assert (=> b!7814448 m!8243306))

(assert (=> b!7814442 m!8242956))

(assert (=> b!7814442 m!8243292))

(assert (=> b!7814024 d!2349128))

(declare-fun b!7814464 () Bool)

(declare-fun c!1438847 () Bool)

(assert (=> b!7814464 (= c!1438847 (nullable!9289 (regOne!42346 lt!2675983)))))

(declare-fun e!4624694 () Regex!20917)

(declare-fun e!4624695 () Regex!20917)

(assert (=> b!7814464 (= e!4624694 e!4624695)))

(declare-fun b!7814465 () Bool)

(declare-fun e!4624693 () Regex!20917)

(assert (=> b!7814465 (= e!4624693 (ite (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675983)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814466 () Bool)

(declare-fun call!725031 () Regex!20917)

(assert (=> b!7814466 (= e!4624695 (Union!20917 (Concat!29762 call!725031 (regTwo!42346 lt!2675983)) EmptyLang!20917))))

(declare-fun b!7814467 () Bool)

(declare-fun e!4624696 () Regex!20917)

(declare-fun call!725028 () Regex!20917)

(declare-fun call!725030 () Regex!20917)

(assert (=> b!7814467 (= e!4624696 (Union!20917 call!725028 call!725030))))

(declare-fun b!7814468 () Bool)

(declare-fun e!4624697 () Regex!20917)

(assert (=> b!7814468 (= e!4624697 e!4624693)))

(declare-fun c!1438846 () Bool)

(assert (=> b!7814468 (= c!1438846 ((_ is ElementMatch!20917) lt!2675983))))

(declare-fun bm!725023 () Bool)

(declare-fun call!725029 () Regex!20917)

(assert (=> bm!725023 (= call!725031 call!725029)))

(declare-fun bm!725024 () Bool)

(declare-fun c!1438848 () Bool)

(assert (=> bm!725024 (= call!725030 (derivativeStep!6248 (ite c!1438848 (regTwo!42347 lt!2675983) (regOne!42346 lt!2675983)) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814470 () Bool)

(assert (=> b!7814470 (= e!4624697 EmptyLang!20917)))

(declare-fun b!7814471 () Bool)

(assert (=> b!7814471 (= e!4624696 e!4624694)))

(declare-fun c!1438845 () Bool)

(assert (=> b!7814471 (= c!1438845 ((_ is Star!20917) lt!2675983))))

(declare-fun bm!725025 () Bool)

(assert (=> bm!725025 (= call!725028 (derivativeStep!6248 (ite c!1438848 (regOne!42347 lt!2675983) (ite c!1438845 (reg!21246 lt!2675983) (ite c!1438847 (regTwo!42346 lt!2675983) (regOne!42346 lt!2675983)))) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814472 () Bool)

(assert (=> b!7814472 (= e!4624694 (Concat!29762 call!725029 lt!2675983))))

(declare-fun d!2349134 () Bool)

(declare-fun lt!2676030 () Regex!20917)

(assert (=> d!2349134 (validRegex!11331 lt!2676030)))

(assert (=> d!2349134 (= lt!2676030 e!4624697)))

(declare-fun c!1438844 () Bool)

(assert (=> d!2349134 (= c!1438844 (or ((_ is EmptyExpr!20917) lt!2675983) ((_ is EmptyLang!20917) lt!2675983)))))

(assert (=> d!2349134 (validRegex!11331 lt!2675983)))

(assert (=> d!2349134 (= (derivativeStep!6248 lt!2675983 (head!15978 (t!388489 s!14225))) lt!2676030)))

(declare-fun b!7814469 () Bool)

(assert (=> b!7814469 (= e!4624695 (Union!20917 (Concat!29762 call!725030 (regTwo!42346 lt!2675983)) call!725031))))

(declare-fun bm!725026 () Bool)

(assert (=> bm!725026 (= call!725029 call!725028)))

(declare-fun b!7814473 () Bool)

(assert (=> b!7814473 (= c!1438848 ((_ is Union!20917) lt!2675983))))

(assert (=> b!7814473 (= e!4624693 e!4624696)))

(assert (= (and d!2349134 c!1438844) b!7814470))

(assert (= (and d!2349134 (not c!1438844)) b!7814468))

(assert (= (and b!7814468 c!1438846) b!7814465))

(assert (= (and b!7814468 (not c!1438846)) b!7814473))

(assert (= (and b!7814473 c!1438848) b!7814467))

(assert (= (and b!7814473 (not c!1438848)) b!7814471))

(assert (= (and b!7814471 c!1438845) b!7814472))

(assert (= (and b!7814471 (not c!1438845)) b!7814464))

(assert (= (and b!7814464 c!1438847) b!7814469))

(assert (= (and b!7814464 (not c!1438847)) b!7814466))

(assert (= (or b!7814469 b!7814466) bm!725023))

(assert (= (or b!7814472 bm!725023) bm!725026))

(assert (= (or b!7814467 b!7814469) bm!725024))

(assert (= (or b!7814467 bm!725026) bm!725025))

(declare-fun m!8243312 () Bool)

(assert (=> b!7814464 m!8243312))

(assert (=> bm!725024 m!8242952))

(declare-fun m!8243316 () Bool)

(assert (=> bm!725024 m!8243316))

(assert (=> bm!725025 m!8242952))

(declare-fun m!8243324 () Bool)

(assert (=> bm!725025 m!8243324))

(declare-fun m!8243326 () Bool)

(assert (=> d!2349134 m!8243326))

(assert (=> d!2349134 m!8242904))

(assert (=> b!7814024 d!2349134))

(assert (=> b!7814024 d!2349054))

(assert (=> b!7814024 d!2349048))

(declare-fun d!2349138 () Bool)

(assert (=> d!2349138 (= (nullable!9289 (reg!21246 lt!2675983)) (nullableFct!3659 (reg!21246 lt!2675983)))))

(declare-fun bs!1966658 () Bool)

(assert (= bs!1966658 d!2349138))

(declare-fun m!8243330 () Bool)

(assert (=> bs!1966658 m!8243330))

(assert (=> b!7814105 d!2349138))

(assert (=> b!7814026 d!2349054))

(assert (=> b!7813778 d!2349046))

(assert (=> b!7813778 d!2349048))

(declare-fun b!7814484 () Bool)

(declare-fun e!4624703 () Bool)

(declare-fun e!4624704 () Bool)

(assert (=> b!7814484 (= e!4624703 e!4624704)))

(declare-fun c!1438855 () Bool)

(assert (=> b!7814484 (= c!1438855 ((_ is Union!20917) (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))

(declare-fun d!2349142 () Bool)

(declare-fun res!3111584 () Bool)

(declare-fun e!4624709 () Bool)

(assert (=> d!2349142 (=> res!3111584 e!4624709)))

(assert (=> d!2349142 (= res!3111584 ((_ is ElementMatch!20917) (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))

(assert (=> d!2349142 (= (validRegex!11331 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))) e!4624709)))

(declare-fun bm!725031 () Bool)

(declare-fun call!725036 () Bool)

(declare-fun c!1438854 () Bool)

(assert (=> bm!725031 (= call!725036 (validRegex!11331 (ite c!1438854 (reg!21246 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))) (ite c!1438855 (regTwo!42347 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))) (regTwo!42346 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206))))))))))

(declare-fun b!7814485 () Bool)

(declare-fun res!3111581 () Bool)

(declare-fun e!4624708 () Bool)

(assert (=> b!7814485 (=> res!3111581 e!4624708)))

(assert (=> b!7814485 (= res!3111581 (not ((_ is Concat!29762) (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206))))))))

(assert (=> b!7814485 (= e!4624704 e!4624708)))

(declare-fun b!7814486 () Bool)

(declare-fun e!4624705 () Bool)

(assert (=> b!7814486 (= e!4624705 call!725036)))

(declare-fun b!7814487 () Bool)

(assert (=> b!7814487 (= e!4624703 e!4624705)))

(declare-fun res!3111582 () Bool)

(assert (=> b!7814487 (= res!3111582 (not (nullable!9289 (reg!21246 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))))

(assert (=> b!7814487 (=> (not res!3111582) (not e!4624705))))

(declare-fun b!7814488 () Bool)

(declare-fun e!4624706 () Bool)

(declare-fun call!725038 () Bool)

(assert (=> b!7814488 (= e!4624706 call!725038)))

(declare-fun b!7814489 () Bool)

(assert (=> b!7814489 (= e!4624709 e!4624703)))

(assert (=> b!7814489 (= c!1438854 ((_ is Star!20917) (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))

(declare-fun b!7814490 () Bool)

(declare-fun e!4624707 () Bool)

(assert (=> b!7814490 (= e!4624707 call!725038)))

(declare-fun b!7814491 () Bool)

(declare-fun res!3111583 () Bool)

(assert (=> b!7814491 (=> (not res!3111583) (not e!4624706))))

(declare-fun call!725037 () Bool)

(assert (=> b!7814491 (= res!3111583 call!725037)))

(assert (=> b!7814491 (= e!4624704 e!4624706)))

(declare-fun bm!725032 () Bool)

(assert (=> bm!725032 (= call!725038 call!725036)))

(declare-fun bm!725033 () Bool)

(assert (=> bm!725033 (= call!725037 (validRegex!11331 (ite c!1438855 (regOne!42347 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))) (regOne!42346 (ite c!1438701 (reg!21246 r1!6206) (ite c!1438702 (regTwo!42347 r1!6206) (regTwo!42346 r1!6206)))))))))

(declare-fun b!7814492 () Bool)

(assert (=> b!7814492 (= e!4624708 e!4624707)))

(declare-fun res!3111585 () Bool)

(assert (=> b!7814492 (=> (not res!3111585) (not e!4624707))))

(assert (=> b!7814492 (= res!3111585 call!725037)))

(assert (= (and d!2349142 (not res!3111584)) b!7814489))

(assert (= (and b!7814489 c!1438854) b!7814487))

(assert (= (and b!7814489 (not c!1438854)) b!7814484))

(assert (= (and b!7814487 res!3111582) b!7814486))

(assert (= (and b!7814484 c!1438855) b!7814491))

(assert (= (and b!7814484 (not c!1438855)) b!7814485))

(assert (= (and b!7814491 res!3111583) b!7814488))

(assert (= (and b!7814485 (not res!3111581)) b!7814492))

(assert (= (and b!7814492 res!3111585) b!7814490))

(assert (= (or b!7814491 b!7814492) bm!725033))

(assert (= (or b!7814488 b!7814490) bm!725032))

(assert (= (or b!7814486 bm!725032) bm!725031))

(declare-fun m!8243334 () Bool)

(assert (=> bm!725031 m!8243334))

(declare-fun m!8243338 () Bool)

(assert (=> b!7814487 m!8243338))

(declare-fun m!8243344 () Bool)

(assert (=> bm!725033 m!8243344))

(assert (=> bm!724910 d!2349142))

(declare-fun d!2349144 () Bool)

(assert (=> d!2349144 (= (nullable!9289 (Union!20917 r1!6206 r2!6144)) (nullableFct!3659 (Union!20917 r1!6206 r2!6144)))))

(declare-fun bs!1966659 () Bool)

(assert (= bs!1966659 d!2349144))

(declare-fun m!8243348 () Bool)

(assert (=> bs!1966659 m!8243348))

(assert (=> b!7814093 d!2349144))

(declare-fun d!2349150 () Bool)

(assert (=> d!2349150 (= (nullable!9289 (regOne!42346 r1!6206)) (nullableFct!3659 (regOne!42346 r1!6206)))))

(declare-fun bs!1966661 () Bool)

(assert (= bs!1966661 d!2349150))

(declare-fun m!8243352 () Bool)

(assert (=> bs!1966661 m!8243352))

(assert (=> b!7814141 d!2349150))

(declare-fun d!2349152 () Bool)

(assert (=> d!2349152 (= (nullable!9289 (reg!21246 lt!2675984)) (nullableFct!3659 (reg!21246 lt!2675984)))))

(declare-fun bs!1966662 () Bool)

(assert (= bs!1966662 d!2349152))

(declare-fun m!8243354 () Bool)

(assert (=> bs!1966662 m!8243354))

(assert (=> b!7813902 d!2349152))

(declare-fun b!7814503 () Bool)

(declare-fun e!4624715 () Bool)

(declare-fun e!4624716 () Bool)

(assert (=> b!7814503 (= e!4624715 e!4624716)))

(declare-fun c!1438862 () Bool)

(assert (=> b!7814503 (= c!1438862 ((_ is Union!20917) (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))

(declare-fun d!2349156 () Bool)

(declare-fun res!3111589 () Bool)

(declare-fun e!4624721 () Bool)

(assert (=> d!2349156 (=> res!3111589 e!4624721)))

(assert (=> d!2349156 (= res!3111589 ((_ is ElementMatch!20917) (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))

(assert (=> d!2349156 (= (validRegex!11331 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))) e!4624721)))

(declare-fun call!725043 () Bool)

(declare-fun bm!725038 () Bool)

(declare-fun c!1438861 () Bool)

(assert (=> bm!725038 (= call!725043 (validRegex!11331 (ite c!1438861 (reg!21246 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))) (ite c!1438862 (regTwo!42347 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))) (regTwo!42346 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983)))))))))

(declare-fun b!7814504 () Bool)

(declare-fun res!3111586 () Bool)

(declare-fun e!4624720 () Bool)

(assert (=> b!7814504 (=> res!3111586 e!4624720)))

(assert (=> b!7814504 (= res!3111586 (not ((_ is Concat!29762) (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983)))))))

(assert (=> b!7814504 (= e!4624716 e!4624720)))

(declare-fun b!7814505 () Bool)

(declare-fun e!4624717 () Bool)

(assert (=> b!7814505 (= e!4624717 call!725043)))

(declare-fun b!7814506 () Bool)

(assert (=> b!7814506 (= e!4624715 e!4624717)))

(declare-fun res!3111587 () Bool)

(assert (=> b!7814506 (= res!3111587 (not (nullable!9289 (reg!21246 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))))

(assert (=> b!7814506 (=> (not res!3111587) (not e!4624717))))

(declare-fun b!7814507 () Bool)

(declare-fun e!4624718 () Bool)

(declare-fun call!725045 () Bool)

(assert (=> b!7814507 (= e!4624718 call!725045)))

(declare-fun b!7814508 () Bool)

(assert (=> b!7814508 (= e!4624721 e!4624715)))

(assert (=> b!7814508 (= c!1438861 ((_ is Star!20917) (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))

(declare-fun b!7814509 () Bool)

(declare-fun e!4624719 () Bool)

(assert (=> b!7814509 (= e!4624719 call!725045)))

(declare-fun b!7814510 () Bool)

(declare-fun res!3111588 () Bool)

(assert (=> b!7814510 (=> (not res!3111588) (not e!4624718))))

(declare-fun call!725044 () Bool)

(assert (=> b!7814510 (= res!3111588 call!725044)))

(assert (=> b!7814510 (= e!4624716 e!4624718)))

(declare-fun bm!725039 () Bool)

(assert (=> bm!725039 (= call!725045 call!725043)))

(declare-fun bm!725040 () Bool)

(assert (=> bm!725040 (= call!725044 (validRegex!11331 (ite c!1438862 (regOne!42347 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))) (regOne!42346 (ite c!1438742 (regOne!42347 lt!2675983) (regOne!42346 lt!2675983))))))))

(declare-fun b!7814511 () Bool)

(assert (=> b!7814511 (= e!4624720 e!4624719)))

(declare-fun res!3111590 () Bool)

(assert (=> b!7814511 (=> (not res!3111590) (not e!4624719))))

(assert (=> b!7814511 (= res!3111590 call!725044)))

(assert (= (and d!2349156 (not res!3111589)) b!7814508))

(assert (= (and b!7814508 c!1438861) b!7814506))

(assert (= (and b!7814508 (not c!1438861)) b!7814503))

(assert (= (and b!7814506 res!3111587) b!7814505))

(assert (= (and b!7814503 c!1438862) b!7814510))

(assert (= (and b!7814503 (not c!1438862)) b!7814504))

(assert (= (and b!7814510 res!3111588) b!7814507))

(assert (= (and b!7814504 (not res!3111586)) b!7814511))

(assert (= (and b!7814511 res!3111590) b!7814509))

(assert (= (or b!7814510 b!7814511) bm!725040))

(assert (= (or b!7814507 b!7814509) bm!725039))

(assert (= (or b!7814505 bm!725039) bm!725038))

(declare-fun m!8243356 () Bool)

(assert (=> bm!725038 m!8243356))

(declare-fun m!8243358 () Bool)

(assert (=> b!7814506 m!8243358))

(declare-fun m!8243360 () Bool)

(assert (=> bm!725040 m!8243360))

(assert (=> bm!724937 d!2349156))

(assert (=> d!2349034 d!2349068))

(assert (=> d!2349034 d!2349040))

(declare-fun d!2349158 () Bool)

(assert (=> d!2349158 (= (nullable!9289 (regOne!42346 r2!6144)) (nullableFct!3659 (regOne!42346 r2!6144)))))

(declare-fun bs!1966663 () Bool)

(assert (= bs!1966663 d!2349158))

(declare-fun m!8243362 () Bool)

(assert (=> bs!1966663 m!8243362))

(assert (=> b!7814131 d!2349158))

(assert (=> b!7813783 d!2349054))

(declare-fun b!7814512 () Bool)

(declare-fun e!4624725 () Bool)

(declare-fun lt!2676033 () Bool)

(declare-fun call!725046 () Bool)

(assert (=> b!7814512 (= e!4624725 (= lt!2676033 call!725046))))

(declare-fun b!7814513 () Bool)

(declare-fun e!4624727 () Bool)

(assert (=> b!7814513 (= e!4624725 e!4624727)))

(declare-fun c!1438863 () Bool)

(assert (=> b!7814513 (= c!1438863 ((_ is EmptyLang!20917) (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814514 () Bool)

(declare-fun e!4624728 () Bool)

(assert (=> b!7814514 (= e!4624728 (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))))))))

(declare-fun b!7814515 () Bool)

(declare-fun e!4624722 () Bool)

(declare-fun e!4624724 () Bool)

(assert (=> b!7814515 (= e!4624722 e!4624724)))

(declare-fun res!3111595 () Bool)

(assert (=> b!7814515 (=> (not res!3111595) (not e!4624724))))

(assert (=> b!7814515 (= res!3111595 (not lt!2676033))))

(declare-fun bm!725041 () Bool)

(assert (=> bm!725041 (= call!725046 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7814516 () Bool)

(declare-fun res!3111591 () Bool)

(assert (=> b!7814516 (=> res!3111591 e!4624722)))

(assert (=> b!7814516 (= res!3111591 (not ((_ is ElementMatch!20917) (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))))))))

(assert (=> b!7814516 (= e!4624727 e!4624722)))

(declare-fun e!4624726 () Bool)

(declare-fun b!7814517 () Bool)

(assert (=> b!7814517 (= e!4624726 (nullable!9289 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814519 () Bool)

(declare-fun res!3111598 () Bool)

(assert (=> b!7814519 (=> res!3111598 e!4624722)))

(assert (=> b!7814519 (= res!3111598 e!4624728)))

(declare-fun res!3111593 () Bool)

(assert (=> b!7814519 (=> (not res!3111593) (not e!4624728))))

(assert (=> b!7814519 (= res!3111593 lt!2676033)))

(declare-fun b!7814520 () Bool)

(declare-fun res!3111596 () Bool)

(assert (=> b!7814520 (=> (not res!3111596) (not e!4624728))))

(assert (=> b!7814520 (= res!3111596 (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814521 () Bool)

(declare-fun res!3111597 () Bool)

(declare-fun e!4624723 () Bool)

(assert (=> b!7814521 (=> res!3111597 e!4624723)))

(assert (=> b!7814521 (= res!3111597 (not (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225))))))))

(declare-fun b!7814522 () Bool)

(assert (=> b!7814522 (= e!4624727 (not lt!2676033))))

(declare-fun b!7814523 () Bool)

(assert (=> b!7814523 (= e!4624726 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))) (head!15978 (tail!15519 (t!388489 s!14225)))) (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814524 () Bool)

(assert (=> b!7814524 (= e!4624724 e!4624723)))

(declare-fun res!3111594 () Bool)

(assert (=> b!7814524 (=> res!3111594 e!4624723)))

(assert (=> b!7814524 (= res!3111594 call!725046)))

(declare-fun b!7814525 () Bool)

(assert (=> b!7814525 (= e!4624723 (not (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225)))))))))

(declare-fun d!2349160 () Bool)

(assert (=> d!2349160 e!4624725))

(declare-fun c!1438864 () Bool)

(assert (=> d!2349160 (= c!1438864 ((_ is EmptyExpr!20917) (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225)))))))

(assert (=> d!2349160 (= lt!2676033 e!4624726)))

(declare-fun c!1438865 () Bool)

(assert (=> d!2349160 (= c!1438865 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(assert (=> d!2349160 (validRegex!11331 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))))))

(assert (=> d!2349160 (= (matchR!10375 (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))) lt!2676033)))

(declare-fun b!7814518 () Bool)

(declare-fun res!3111592 () Bool)

(assert (=> b!7814518 (=> (not res!3111592) (not e!4624728))))

(assert (=> b!7814518 (= res!3111592 (not call!725046))))

(assert (= (and d!2349160 c!1438865) b!7814517))

(assert (= (and d!2349160 (not c!1438865)) b!7814523))

(assert (= (and d!2349160 c!1438864) b!7814512))

(assert (= (and d!2349160 (not c!1438864)) b!7814513))

(assert (= (and b!7814513 c!1438863) b!7814522))

(assert (= (and b!7814513 (not c!1438863)) b!7814516))

(assert (= (and b!7814516 (not res!3111591)) b!7814519))

(assert (= (and b!7814519 res!3111593) b!7814518))

(assert (= (and b!7814518 res!3111592) b!7814520))

(assert (= (and b!7814520 res!3111596) b!7814514))

(assert (= (and b!7814519 (not res!3111598)) b!7814515))

(assert (= (and b!7814515 res!3111595) b!7814524))

(assert (= (and b!7814524 (not res!3111594)) b!7814521))

(assert (= (and b!7814521 (not res!3111597)) b!7814525))

(assert (= (or b!7814512 b!7814518 b!7814524) bm!725041))

(assert (=> bm!725041 m!8242956))

(assert (=> bm!725041 m!8242962))

(assert (=> b!7814525 m!8242956))

(assert (=> b!7814525 m!8243292))

(assert (=> b!7814523 m!8242956))

(assert (=> b!7814523 m!8243292))

(assert (=> b!7814523 m!8242954))

(assert (=> b!7814523 m!8243292))

(declare-fun m!8243382 () Bool)

(assert (=> b!7814523 m!8243382))

(assert (=> b!7814523 m!8242956))

(assert (=> b!7814523 m!8243300))

(assert (=> b!7814523 m!8243382))

(assert (=> b!7814523 m!8243300))

(declare-fun m!8243384 () Bool)

(assert (=> b!7814523 m!8243384))

(assert (=> d!2349160 m!8242956))

(assert (=> d!2349160 m!8242962))

(assert (=> d!2349160 m!8242954))

(declare-fun m!8243386 () Bool)

(assert (=> d!2349160 m!8243386))

(assert (=> b!7814521 m!8242956))

(assert (=> b!7814521 m!8243300))

(assert (=> b!7814521 m!8243300))

(assert (=> b!7814521 m!8243306))

(assert (=> b!7814517 m!8242954))

(declare-fun m!8243388 () Bool)

(assert (=> b!7814517 m!8243388))

(assert (=> b!7814520 m!8242956))

(assert (=> b!7814520 m!8243300))

(assert (=> b!7814520 m!8243300))

(assert (=> b!7814520 m!8243306))

(assert (=> b!7814514 m!8242956))

(assert (=> b!7814514 m!8243292))

(assert (=> b!7813781 d!2349160))

(declare-fun b!7814544 () Bool)

(declare-fun c!1438873 () Bool)

(assert (=> b!7814544 (= c!1438873 (nullable!9289 (regOne!42346 (Union!20917 lt!2675983 lt!2675984))))))

(declare-fun e!4624744 () Regex!20917)

(declare-fun e!4624745 () Regex!20917)

(assert (=> b!7814544 (= e!4624744 e!4624745)))

(declare-fun b!7814545 () Bool)

(declare-fun e!4624743 () Regex!20917)

(assert (=> b!7814545 (= e!4624743 (ite (= (head!15978 (t!388489 s!14225)) (c!1438650 (Union!20917 lt!2675983 lt!2675984))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun call!725056 () Regex!20917)

(declare-fun b!7814546 () Bool)

(assert (=> b!7814546 (= e!4624745 (Union!20917 (Concat!29762 call!725056 (regTwo!42346 (Union!20917 lt!2675983 lt!2675984))) EmptyLang!20917))))

(declare-fun b!7814547 () Bool)

(declare-fun e!4624746 () Regex!20917)

(declare-fun call!725053 () Regex!20917)

(declare-fun call!725055 () Regex!20917)

(assert (=> b!7814547 (= e!4624746 (Union!20917 call!725053 call!725055))))

(declare-fun b!7814548 () Bool)

(declare-fun e!4624747 () Regex!20917)

(assert (=> b!7814548 (= e!4624747 e!4624743)))

(declare-fun c!1438872 () Bool)

(assert (=> b!7814548 (= c!1438872 ((_ is ElementMatch!20917) (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun bm!725048 () Bool)

(declare-fun call!725054 () Regex!20917)

(assert (=> bm!725048 (= call!725056 call!725054)))

(declare-fun bm!725049 () Bool)

(declare-fun c!1438874 () Bool)

(assert (=> bm!725049 (= call!725055 (derivativeStep!6248 (ite c!1438874 (regTwo!42347 (Union!20917 lt!2675983 lt!2675984)) (regOne!42346 (Union!20917 lt!2675983 lt!2675984))) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814550 () Bool)

(assert (=> b!7814550 (= e!4624747 EmptyLang!20917)))

(declare-fun b!7814551 () Bool)

(assert (=> b!7814551 (= e!4624746 e!4624744)))

(declare-fun c!1438871 () Bool)

(assert (=> b!7814551 (= c!1438871 ((_ is Star!20917) (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun bm!725050 () Bool)

(assert (=> bm!725050 (= call!725053 (derivativeStep!6248 (ite c!1438874 (regOne!42347 (Union!20917 lt!2675983 lt!2675984)) (ite c!1438871 (reg!21246 (Union!20917 lt!2675983 lt!2675984)) (ite c!1438873 (regTwo!42346 (Union!20917 lt!2675983 lt!2675984)) (regOne!42346 (Union!20917 lt!2675983 lt!2675984))))) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814552 () Bool)

(assert (=> b!7814552 (= e!4624744 (Concat!29762 call!725054 (Union!20917 lt!2675983 lt!2675984)))))

(declare-fun d!2349170 () Bool)

(declare-fun lt!2676034 () Regex!20917)

(assert (=> d!2349170 (validRegex!11331 lt!2676034)))

(assert (=> d!2349170 (= lt!2676034 e!4624747)))

(declare-fun c!1438870 () Bool)

(assert (=> d!2349170 (= c!1438870 (or ((_ is EmptyExpr!20917) (Union!20917 lt!2675983 lt!2675984)) ((_ is EmptyLang!20917) (Union!20917 lt!2675983 lt!2675984))))))

(assert (=> d!2349170 (validRegex!11331 (Union!20917 lt!2675983 lt!2675984))))

(assert (=> d!2349170 (= (derivativeStep!6248 (Union!20917 lt!2675983 lt!2675984) (head!15978 (t!388489 s!14225))) lt!2676034)))

(declare-fun b!7814549 () Bool)

(assert (=> b!7814549 (= e!4624745 (Union!20917 (Concat!29762 call!725055 (regTwo!42346 (Union!20917 lt!2675983 lt!2675984))) call!725056))))

(declare-fun bm!725051 () Bool)

(assert (=> bm!725051 (= call!725054 call!725053)))

(declare-fun b!7814553 () Bool)

(assert (=> b!7814553 (= c!1438874 ((_ is Union!20917) (Union!20917 lt!2675983 lt!2675984)))))

(assert (=> b!7814553 (= e!4624743 e!4624746)))

(assert (= (and d!2349170 c!1438870) b!7814550))

(assert (= (and d!2349170 (not c!1438870)) b!7814548))

(assert (= (and b!7814548 c!1438872) b!7814545))

(assert (= (and b!7814548 (not c!1438872)) b!7814553))

(assert (= (and b!7814553 c!1438874) b!7814547))

(assert (= (and b!7814553 (not c!1438874)) b!7814551))

(assert (= (and b!7814551 c!1438871) b!7814552))

(assert (= (and b!7814551 (not c!1438871)) b!7814544))

(assert (= (and b!7814544 c!1438873) b!7814549))

(assert (= (and b!7814544 (not c!1438873)) b!7814546))

(assert (= (or b!7814549 b!7814546) bm!725048))

(assert (= (or b!7814552 bm!725048) bm!725051))

(assert (= (or b!7814547 b!7814549) bm!725049))

(assert (= (or b!7814547 bm!725051) bm!725050))

(declare-fun m!8243396 () Bool)

(assert (=> b!7814544 m!8243396))

(assert (=> bm!725049 m!8242952))

(declare-fun m!8243398 () Bool)

(assert (=> bm!725049 m!8243398))

(assert (=> bm!725050 m!8242952))

(declare-fun m!8243400 () Bool)

(assert (=> bm!725050 m!8243400))

(declare-fun m!8243404 () Bool)

(assert (=> d!2349170 m!8243404))

(assert (=> d!2349170 m!8242960))

(assert (=> b!7813781 d!2349170))

(assert (=> b!7813781 d!2349054))

(assert (=> b!7813781 d!2349048))

(assert (=> bm!724917 d!2349068))

(declare-fun b!7814563 () Bool)

(declare-fun e!4624755 () Bool)

(declare-fun e!4624756 () Bool)

(assert (=> b!7814563 (= e!4624755 e!4624756)))

(declare-fun c!1438878 () Bool)

(assert (=> b!7814563 (= c!1438878 ((_ is Union!20917) lt!2676014))))

(declare-fun d!2349174 () Bool)

(declare-fun res!3111617 () Bool)

(declare-fun e!4624761 () Bool)

(assert (=> d!2349174 (=> res!3111617 e!4624761)))

(assert (=> d!2349174 (= res!3111617 ((_ is ElementMatch!20917) lt!2676014))))

(assert (=> d!2349174 (= (validRegex!11331 lt!2676014) e!4624761)))

(declare-fun bm!725055 () Bool)

(declare-fun c!1438877 () Bool)

(declare-fun call!725060 () Bool)

(assert (=> bm!725055 (= call!725060 (validRegex!11331 (ite c!1438877 (reg!21246 lt!2676014) (ite c!1438878 (regTwo!42347 lt!2676014) (regTwo!42346 lt!2676014)))))))

(declare-fun b!7814564 () Bool)

(declare-fun res!3111614 () Bool)

(declare-fun e!4624760 () Bool)

(assert (=> b!7814564 (=> res!3111614 e!4624760)))

(assert (=> b!7814564 (= res!3111614 (not ((_ is Concat!29762) lt!2676014)))))

(assert (=> b!7814564 (= e!4624756 e!4624760)))

(declare-fun b!7814565 () Bool)

(declare-fun e!4624757 () Bool)

(assert (=> b!7814565 (= e!4624757 call!725060)))

(declare-fun b!7814566 () Bool)

(assert (=> b!7814566 (= e!4624755 e!4624757)))

(declare-fun res!3111615 () Bool)

(assert (=> b!7814566 (= res!3111615 (not (nullable!9289 (reg!21246 lt!2676014))))))

(assert (=> b!7814566 (=> (not res!3111615) (not e!4624757))))

(declare-fun b!7814567 () Bool)

(declare-fun e!4624758 () Bool)

(declare-fun call!725062 () Bool)

(assert (=> b!7814567 (= e!4624758 call!725062)))

(declare-fun b!7814568 () Bool)

(assert (=> b!7814568 (= e!4624761 e!4624755)))

(assert (=> b!7814568 (= c!1438877 ((_ is Star!20917) lt!2676014))))

(declare-fun b!7814569 () Bool)

(declare-fun e!4624759 () Bool)

(assert (=> b!7814569 (= e!4624759 call!725062)))

(declare-fun b!7814570 () Bool)

(declare-fun res!3111616 () Bool)

(assert (=> b!7814570 (=> (not res!3111616) (not e!4624758))))

(declare-fun call!725061 () Bool)

(assert (=> b!7814570 (= res!3111616 call!725061)))

(assert (=> b!7814570 (= e!4624756 e!4624758)))

(declare-fun bm!725056 () Bool)

(assert (=> bm!725056 (= call!725062 call!725060)))

(declare-fun bm!725057 () Bool)

(assert (=> bm!725057 (= call!725061 (validRegex!11331 (ite c!1438878 (regOne!42347 lt!2676014) (regOne!42346 lt!2676014))))))

(declare-fun b!7814571 () Bool)

(assert (=> b!7814571 (= e!4624760 e!4624759)))

(declare-fun res!3111618 () Bool)

(assert (=> b!7814571 (=> (not res!3111618) (not e!4624759))))

(assert (=> b!7814571 (= res!3111618 call!725061)))

(assert (= (and d!2349174 (not res!3111617)) b!7814568))

(assert (= (and b!7814568 c!1438877) b!7814566))

(assert (= (and b!7814568 (not c!1438877)) b!7814563))

(assert (= (and b!7814566 res!3111615) b!7814565))

(assert (= (and b!7814563 c!1438878) b!7814570))

(assert (= (and b!7814563 (not c!1438878)) b!7814564))

(assert (= (and b!7814570 res!3111616) b!7814567))

(assert (= (and b!7814564 (not res!3111614)) b!7814571))

(assert (= (and b!7814571 res!3111618) b!7814569))

(assert (= (or b!7814570 b!7814571) bm!725057))

(assert (= (or b!7814567 b!7814569) bm!725056))

(assert (= (or b!7814565 bm!725056) bm!725055))

(declare-fun m!8243412 () Bool)

(assert (=> bm!725055 m!8243412))

(declare-fun m!8243414 () Bool)

(assert (=> b!7814566 m!8243414))

(declare-fun m!8243416 () Bool)

(assert (=> bm!725057 m!8243416))

(assert (=> d!2349044 d!2349174))

(assert (=> d!2349044 d!2349022))

(declare-fun d!2349180 () Bool)

(assert (=> d!2349180 (= (nullable!9289 lt!2675984) (nullableFct!3659 lt!2675984))))

(declare-fun bs!1966666 () Bool)

(assert (= bs!1966666 d!2349180))

(declare-fun m!8243418 () Bool)

(assert (=> bs!1966666 m!8243418))

(assert (=> b!7813942 d!2349180))

(assert (=> b!7814015 d!2349054))

(declare-fun d!2349182 () Bool)

(assert (=> d!2349182 (= (nullable!9289 (reg!21246 r2!6144)) (nullableFct!3659 (reg!21246 r2!6144)))))

(declare-fun bs!1966667 () Bool)

(assert (= bs!1966667 d!2349182))

(declare-fun m!8243420 () Bool)

(assert (=> bs!1966667 m!8243420))

(assert (=> b!7813893 d!2349182))

(assert (=> b!7813946 d!2349046))

(assert (=> b!7813946 d!2349048))

(assert (=> b!7814086 d!2349020))

(declare-fun b!7814572 () Bool)

(declare-fun e!4624762 () Bool)

(declare-fun e!4624763 () Bool)

(assert (=> b!7814572 (= e!4624762 e!4624763)))

(declare-fun c!1438880 () Bool)

(assert (=> b!7814572 (= c!1438880 ((_ is Union!20917) (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun d!2349184 () Bool)

(declare-fun res!3111622 () Bool)

(declare-fun e!4624768 () Bool)

(assert (=> d!2349184 (=> res!3111622 e!4624768)))

(assert (=> d!2349184 (= res!3111622 ((_ is ElementMatch!20917) (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))

(assert (=> d!2349184 (= (validRegex!11331 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))) e!4624768)))

(declare-fun call!725063 () Bool)

(declare-fun c!1438879 () Bool)

(declare-fun bm!725058 () Bool)

(assert (=> bm!725058 (= call!725063 (validRegex!11331 (ite c!1438879 (reg!21246 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))) (ite c!1438880 (regTwo!42347 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))) (regTwo!42346 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206)))))))))

(declare-fun b!7814573 () Bool)

(declare-fun res!3111619 () Bool)

(declare-fun e!4624767 () Bool)

(assert (=> b!7814573 (=> res!3111619 e!4624767)))

(assert (=> b!7814573 (= res!3111619 (not ((_ is Concat!29762) (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206)))))))

(assert (=> b!7814573 (= e!4624763 e!4624767)))

(declare-fun b!7814574 () Bool)

(declare-fun e!4624764 () Bool)

(assert (=> b!7814574 (= e!4624764 call!725063)))

(declare-fun b!7814575 () Bool)

(assert (=> b!7814575 (= e!4624762 e!4624764)))

(declare-fun res!3111620 () Bool)

(assert (=> b!7814575 (= res!3111620 (not (nullable!9289 (reg!21246 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))))

(assert (=> b!7814575 (=> (not res!3111620) (not e!4624764))))

(declare-fun b!7814576 () Bool)

(declare-fun e!4624765 () Bool)

(declare-fun call!725065 () Bool)

(assert (=> b!7814576 (= e!4624765 call!725065)))

(declare-fun b!7814577 () Bool)

(assert (=> b!7814577 (= e!4624768 e!4624762)))

(assert (=> b!7814577 (= c!1438879 ((_ is Star!20917) (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))

(declare-fun b!7814578 () Bool)

(declare-fun e!4624766 () Bool)

(assert (=> b!7814578 (= e!4624766 call!725065)))

(declare-fun b!7814579 () Bool)

(declare-fun res!3111621 () Bool)

(assert (=> b!7814579 (=> (not res!3111621) (not e!4624765))))

(declare-fun call!725064 () Bool)

(assert (=> b!7814579 (= res!3111621 call!725064)))

(assert (=> b!7814579 (= e!4624763 e!4624765)))

(declare-fun bm!725059 () Bool)

(assert (=> bm!725059 (= call!725065 call!725063)))

(declare-fun bm!725060 () Bool)

(assert (=> bm!725060 (= call!725064 (validRegex!11331 (ite c!1438880 (regOne!42347 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))) (regOne!42346 (ite c!1438702 (regOne!42347 r1!6206) (regOne!42346 r1!6206))))))))

(declare-fun b!7814580 () Bool)

(assert (=> b!7814580 (= e!4624767 e!4624766)))

(declare-fun res!3111623 () Bool)

(assert (=> b!7814580 (=> (not res!3111623) (not e!4624766))))

(assert (=> b!7814580 (= res!3111623 call!725064)))

(assert (= (and d!2349184 (not res!3111622)) b!7814577))

(assert (= (and b!7814577 c!1438879) b!7814575))

(assert (= (and b!7814577 (not c!1438879)) b!7814572))

(assert (= (and b!7814575 res!3111620) b!7814574))

(assert (= (and b!7814572 c!1438880) b!7814579))

(assert (= (and b!7814572 (not c!1438880)) b!7814573))

(assert (= (and b!7814579 res!3111621) b!7814576))

(assert (= (and b!7814573 (not res!3111619)) b!7814580))

(assert (= (and b!7814580 res!3111623) b!7814578))

(assert (= (or b!7814579 b!7814580) bm!725060))

(assert (= (or b!7814576 b!7814578) bm!725059))

(assert (= (or b!7814574 bm!725059) bm!725058))

(declare-fun m!8243422 () Bool)

(assert (=> bm!725058 m!8243422))

(declare-fun m!8243424 () Bool)

(assert (=> b!7814575 m!8243424))

(declare-fun m!8243426 () Bool)

(assert (=> bm!725060 m!8243426))

(assert (=> bm!724912 d!2349184))

(declare-fun b!7814583 () Bool)

(declare-fun c!1438884 () Bool)

(assert (=> b!7814583 (= c!1438884 (nullable!9289 (regOne!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))))))

(declare-fun e!4624772 () Regex!20917)

(declare-fun e!4624773 () Regex!20917)

(assert (=> b!7814583 (= e!4624772 e!4624773)))

(declare-fun b!7814584 () Bool)

(declare-fun e!4624771 () Regex!20917)

(assert (=> b!7814584 (= e!4624771 (ite (= (h!80078 s!14225) (c!1438650 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun call!725069 () Regex!20917)

(declare-fun b!7814585 () Bool)

(assert (=> b!7814585 (= e!4624773 (Union!20917 (Concat!29762 call!725069 (regTwo!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))) EmptyLang!20917))))

(declare-fun b!7814586 () Bool)

(declare-fun e!4624774 () Regex!20917)

(declare-fun call!725066 () Regex!20917)

(declare-fun call!725068 () Regex!20917)

(assert (=> b!7814586 (= e!4624774 (Union!20917 call!725066 call!725068))))

(declare-fun b!7814587 () Bool)

(declare-fun e!4624775 () Regex!20917)

(assert (=> b!7814587 (= e!4624775 e!4624771)))

(declare-fun c!1438883 () Bool)

(assert (=> b!7814587 (= c!1438883 ((_ is ElementMatch!20917) (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun bm!725061 () Bool)

(declare-fun call!725067 () Regex!20917)

(assert (=> bm!725061 (= call!725069 call!725067)))

(declare-fun c!1438885 () Bool)

(declare-fun bm!725062 () Bool)

(assert (=> bm!725062 (= call!725068 (derivativeStep!6248 (ite c!1438885 (regTwo!42347 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))) (regOne!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))) (h!80078 s!14225)))))

(declare-fun b!7814589 () Bool)

(assert (=> b!7814589 (= e!4624775 EmptyLang!20917)))

(declare-fun b!7814590 () Bool)

(assert (=> b!7814590 (= e!4624774 e!4624772)))

(declare-fun c!1438882 () Bool)

(assert (=> b!7814590 (= c!1438882 ((_ is Star!20917) (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun bm!725063 () Bool)

(assert (=> bm!725063 (= call!725066 (derivativeStep!6248 (ite c!1438885 (regOne!42347 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))) (ite c!1438882 (reg!21246 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))) (ite c!1438884 (regTwo!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))) (regOne!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))))) (h!80078 s!14225)))))

(declare-fun b!7814591 () Bool)

(assert (=> b!7814591 (= e!4624772 (Concat!29762 call!725067 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun d!2349186 () Bool)

(declare-fun lt!2676035 () Regex!20917)

(assert (=> d!2349186 (validRegex!11331 lt!2676035)))

(assert (=> d!2349186 (= lt!2676035 e!4624775)))

(declare-fun c!1438881 () Bool)

(assert (=> d!2349186 (= c!1438881 (or ((_ is EmptyExpr!20917) (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))) ((_ is EmptyLang!20917) (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))))))

(assert (=> d!2349186 (validRegex!11331 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))))

(assert (=> d!2349186 (= (derivativeStep!6248 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)) (h!80078 s!14225)) lt!2676035)))

(declare-fun b!7814588 () Bool)

(assert (=> b!7814588 (= e!4624773 (Union!20917 (Concat!29762 call!725068 (regTwo!42346 (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144)))) call!725069))))

(declare-fun bm!725064 () Bool)

(assert (=> bm!725064 (= call!725067 call!725066)))

(declare-fun b!7814592 () Bool)

(assert (=> b!7814592 (= c!1438885 ((_ is Union!20917) (ite c!1438757 (regTwo!42347 r2!6144) (regOne!42346 r2!6144))))))

(assert (=> b!7814592 (= e!4624771 e!4624774)))

(assert (= (and d!2349186 c!1438881) b!7814589))

(assert (= (and d!2349186 (not c!1438881)) b!7814587))

(assert (= (and b!7814587 c!1438883) b!7814584))

(assert (= (and b!7814587 (not c!1438883)) b!7814592))

(assert (= (and b!7814592 c!1438885) b!7814586))

(assert (= (and b!7814592 (not c!1438885)) b!7814590))

(assert (= (and b!7814590 c!1438882) b!7814591))

(assert (= (and b!7814590 (not c!1438882)) b!7814583))

(assert (= (and b!7814583 c!1438884) b!7814588))

(assert (= (and b!7814583 (not c!1438884)) b!7814585))

(assert (= (or b!7814588 b!7814585) bm!725061))

(assert (= (or b!7814591 bm!725061) bm!725064))

(assert (= (or b!7814586 b!7814588) bm!725062))

(assert (= (or b!7814586 bm!725064) bm!725063))

(declare-fun m!8243428 () Bool)

(assert (=> b!7814583 m!8243428))

(declare-fun m!8243430 () Bool)

(assert (=> bm!725062 m!8243430))

(declare-fun m!8243432 () Bool)

(assert (=> bm!725063 m!8243432))

(declare-fun m!8243434 () Bool)

(assert (=> d!2349186 m!8243434))

(declare-fun m!8243436 () Bool)

(assert (=> d!2349186 m!8243436))

(assert (=> bm!724947 d!2349186))

(assert (=> bm!724933 d!2349068))

(declare-fun b!7814608 () Bool)

(declare-fun e!4624784 () Bool)

(declare-fun e!4624785 () Bool)

(assert (=> b!7814608 (= e!4624784 e!4624785)))

(declare-fun c!1438890 () Bool)

(assert (=> b!7814608 (= c!1438890 ((_ is Union!20917) (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun d!2349190 () Bool)

(declare-fun res!3111638 () Bool)

(declare-fun e!4624790 () Bool)

(assert (=> d!2349190 (=> res!3111638 e!4624790)))

(assert (=> d!2349190 (= res!3111638 ((_ is ElementMatch!20917) (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))

(assert (=> d!2349190 (= (validRegex!11331 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))) e!4624790)))

(declare-fun c!1438889 () Bool)

(declare-fun bm!725066 () Bool)

(declare-fun call!725071 () Bool)

(assert (=> bm!725066 (= call!725071 (validRegex!11331 (ite c!1438889 (reg!21246 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))) (ite c!1438890 (regTwo!42347 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))) (regTwo!42346 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144)))))))))

(declare-fun b!7814609 () Bool)

(declare-fun res!3111635 () Bool)

(declare-fun e!4624789 () Bool)

(assert (=> b!7814609 (=> res!3111635 e!4624789)))

(assert (=> b!7814609 (= res!3111635 (not ((_ is Concat!29762) (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144)))))))

(assert (=> b!7814609 (= e!4624785 e!4624789)))

(declare-fun b!7814610 () Bool)

(declare-fun e!4624786 () Bool)

(assert (=> b!7814610 (= e!4624786 call!725071)))

(declare-fun b!7814611 () Bool)

(assert (=> b!7814611 (= e!4624784 e!4624786)))

(declare-fun res!3111636 () Bool)

(assert (=> b!7814611 (= res!3111636 (not (nullable!9289 (reg!21246 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))))

(assert (=> b!7814611 (=> (not res!3111636) (not e!4624786))))

(declare-fun b!7814612 () Bool)

(declare-fun e!4624787 () Bool)

(declare-fun call!725073 () Bool)

(assert (=> b!7814612 (= e!4624787 call!725073)))

(declare-fun b!7814613 () Bool)

(assert (=> b!7814613 (= e!4624790 e!4624784)))

(assert (=> b!7814613 (= c!1438889 ((_ is Star!20917) (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))

(declare-fun b!7814614 () Bool)

(declare-fun e!4624788 () Bool)

(assert (=> b!7814614 (= e!4624788 call!725073)))

(declare-fun b!7814615 () Bool)

(declare-fun res!3111637 () Bool)

(assert (=> b!7814615 (=> (not res!3111637) (not e!4624787))))

(declare-fun call!725072 () Bool)

(assert (=> b!7814615 (= res!3111637 call!725072)))

(assert (=> b!7814615 (= e!4624785 e!4624787)))

(declare-fun bm!725067 () Bool)

(assert (=> bm!725067 (= call!725073 call!725071)))

(declare-fun bm!725068 () Bool)

(assert (=> bm!725068 (= call!725072 (validRegex!11331 (ite c!1438890 (regOne!42347 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))) (regOne!42346 (ite c!1438698 (regOne!42347 r2!6144) (regOne!42346 r2!6144))))))))

(declare-fun b!7814616 () Bool)

(assert (=> b!7814616 (= e!4624789 e!4624788)))

(declare-fun res!3111639 () Bool)

(assert (=> b!7814616 (=> (not res!3111639) (not e!4624788))))

(assert (=> b!7814616 (= res!3111639 call!725072)))

(assert (= (and d!2349190 (not res!3111638)) b!7814613))

(assert (= (and b!7814613 c!1438889) b!7814611))

(assert (= (and b!7814613 (not c!1438889)) b!7814608))

(assert (= (and b!7814611 res!3111636) b!7814610))

(assert (= (and b!7814608 c!1438890) b!7814615))

(assert (= (and b!7814608 (not c!1438890)) b!7814609))

(assert (= (and b!7814615 res!3111637) b!7814612))

(assert (= (and b!7814609 (not res!3111635)) b!7814616))

(assert (= (and b!7814616 res!3111639) b!7814614))

(assert (= (or b!7814615 b!7814616) bm!725068))

(assert (= (or b!7814612 b!7814614) bm!725067))

(assert (= (or b!7814610 bm!725067) bm!725066))

(declare-fun m!8243438 () Bool)

(assert (=> bm!725066 m!8243438))

(declare-fun m!8243440 () Bool)

(assert (=> b!7814611 m!8243440))

(declare-fun m!8243442 () Bool)

(assert (=> bm!725068 m!8243442))

(assert (=> bm!724906 d!2349190))

(declare-fun d!2349192 () Bool)

(assert (=> d!2349192 (= (nullable!9289 lt!2675983) (nullableFct!3659 lt!2675983))))

(declare-fun bs!1966668 () Bool)

(assert (= bs!1966668 d!2349192))

(declare-fun m!8243446 () Bool)

(assert (=> bs!1966668 m!8243446))

(assert (=> b!7814018 d!2349192))

(declare-fun b!7814617 () Bool)

(declare-fun e!4624791 () Bool)

(declare-fun e!4624792 () Bool)

(assert (=> b!7814617 (= e!4624791 e!4624792)))

(declare-fun c!1438892 () Bool)

(assert (=> b!7814617 (= c!1438892 ((_ is Union!20917) lt!2676013))))

(declare-fun d!2349194 () Bool)

(declare-fun res!3111643 () Bool)

(declare-fun e!4624797 () Bool)

(assert (=> d!2349194 (=> res!3111643 e!4624797)))

(assert (=> d!2349194 (= res!3111643 ((_ is ElementMatch!20917) lt!2676013))))

(assert (=> d!2349194 (= (validRegex!11331 lt!2676013) e!4624797)))

(declare-fun call!725074 () Bool)

(declare-fun c!1438891 () Bool)

(declare-fun bm!725069 () Bool)

(assert (=> bm!725069 (= call!725074 (validRegex!11331 (ite c!1438891 (reg!21246 lt!2676013) (ite c!1438892 (regTwo!42347 lt!2676013) (regTwo!42346 lt!2676013)))))))

(declare-fun b!7814618 () Bool)

(declare-fun res!3111640 () Bool)

(declare-fun e!4624796 () Bool)

(assert (=> b!7814618 (=> res!3111640 e!4624796)))

(assert (=> b!7814618 (= res!3111640 (not ((_ is Concat!29762) lt!2676013)))))

(assert (=> b!7814618 (= e!4624792 e!4624796)))

(declare-fun b!7814619 () Bool)

(declare-fun e!4624793 () Bool)

(assert (=> b!7814619 (= e!4624793 call!725074)))

(declare-fun b!7814620 () Bool)

(assert (=> b!7814620 (= e!4624791 e!4624793)))

(declare-fun res!3111641 () Bool)

(assert (=> b!7814620 (= res!3111641 (not (nullable!9289 (reg!21246 lt!2676013))))))

(assert (=> b!7814620 (=> (not res!3111641) (not e!4624793))))

(declare-fun b!7814621 () Bool)

(declare-fun e!4624794 () Bool)

(declare-fun call!725076 () Bool)

(assert (=> b!7814621 (= e!4624794 call!725076)))

(declare-fun b!7814622 () Bool)

(assert (=> b!7814622 (= e!4624797 e!4624791)))

(assert (=> b!7814622 (= c!1438891 ((_ is Star!20917) lt!2676013))))

(declare-fun b!7814623 () Bool)

(declare-fun e!4624795 () Bool)

(assert (=> b!7814623 (= e!4624795 call!725076)))

(declare-fun b!7814624 () Bool)

(declare-fun res!3111642 () Bool)

(assert (=> b!7814624 (=> (not res!3111642) (not e!4624794))))

(declare-fun call!725075 () Bool)

(assert (=> b!7814624 (= res!3111642 call!725075)))

(assert (=> b!7814624 (= e!4624792 e!4624794)))

(declare-fun bm!725070 () Bool)

(assert (=> bm!725070 (= call!725076 call!725074)))

(declare-fun bm!725071 () Bool)

(assert (=> bm!725071 (= call!725075 (validRegex!11331 (ite c!1438892 (regOne!42347 lt!2676013) (regOne!42346 lt!2676013))))))

(declare-fun b!7814625 () Bool)

(assert (=> b!7814625 (= e!4624796 e!4624795)))

(declare-fun res!3111644 () Bool)

(assert (=> b!7814625 (=> (not res!3111644) (not e!4624795))))

(assert (=> b!7814625 (= res!3111644 call!725075)))

(assert (= (and d!2349194 (not res!3111643)) b!7814622))

(assert (= (and b!7814622 c!1438891) b!7814620))

(assert (= (and b!7814622 (not c!1438891)) b!7814617))

(assert (= (and b!7814620 res!3111641) b!7814619))

(assert (= (and b!7814617 c!1438892) b!7814624))

(assert (= (and b!7814617 (not c!1438892)) b!7814618))

(assert (= (and b!7814624 res!3111642) b!7814621))

(assert (= (and b!7814618 (not res!3111640)) b!7814625))

(assert (= (and b!7814625 res!3111644) b!7814623))

(assert (= (or b!7814624 b!7814625) bm!725071))

(assert (= (or b!7814621 b!7814623) bm!725070))

(assert (= (or b!7814619 bm!725070) bm!725069))

(declare-fun m!8243454 () Bool)

(assert (=> bm!725069 m!8243454))

(declare-fun m!8243456 () Bool)

(assert (=> b!7814620 m!8243456))

(declare-fun m!8243458 () Bool)

(assert (=> bm!725071 m!8243458))

(assert (=> d!2349042 d!2349194))

(assert (=> d!2349042 d!2349006))

(declare-fun b!7814636 () Bool)

(declare-fun e!4624806 () Bool)

(declare-fun lt!2676038 () Bool)

(declare-fun call!725081 () Bool)

(assert (=> b!7814636 (= e!4624806 (= lt!2676038 call!725081))))

(declare-fun b!7814637 () Bool)

(declare-fun e!4624808 () Bool)

(assert (=> b!7814637 (= e!4624806 e!4624808)))

(declare-fun c!1438898 () Bool)

(assert (=> b!7814637 (= c!1438898 ((_ is EmptyLang!20917) (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814638 () Bool)

(declare-fun e!4624809 () Bool)

(assert (=> b!7814638 (= e!4624809 (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))))))))

(declare-fun b!7814639 () Bool)

(declare-fun e!4624803 () Bool)

(declare-fun e!4624805 () Bool)

(assert (=> b!7814639 (= e!4624803 e!4624805)))

(declare-fun res!3111649 () Bool)

(assert (=> b!7814639 (=> (not res!3111649) (not e!4624805))))

(assert (=> b!7814639 (= res!3111649 (not lt!2676038))))

(declare-fun bm!725076 () Bool)

(assert (=> bm!725076 (= call!725081 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(declare-fun b!7814640 () Bool)

(declare-fun res!3111645 () Bool)

(assert (=> b!7814640 (=> res!3111645 e!4624803)))

(assert (=> b!7814640 (= res!3111645 (not ((_ is ElementMatch!20917) (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))))))))

(assert (=> b!7814640 (= e!4624808 e!4624803)))

(declare-fun b!7814641 () Bool)

(declare-fun e!4624807 () Bool)

(assert (=> b!7814641 (= e!4624807 (nullable!9289 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225)))))))

(declare-fun b!7814643 () Bool)

(declare-fun res!3111652 () Bool)

(assert (=> b!7814643 (=> res!3111652 e!4624803)))

(assert (=> b!7814643 (= res!3111652 e!4624809)))

(declare-fun res!3111647 () Bool)

(assert (=> b!7814643 (=> (not res!3111647) (not e!4624809))))

(assert (=> b!7814643 (= res!3111647 lt!2676038)))

(declare-fun b!7814644 () Bool)

(declare-fun res!3111650 () Bool)

(assert (=> b!7814644 (=> (not res!3111650) (not e!4624809))))

(assert (=> b!7814644 (= res!3111650 (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814645 () Bool)

(declare-fun res!3111651 () Bool)

(declare-fun e!4624804 () Bool)

(assert (=> b!7814645 (=> res!3111651 e!4624804)))

(assert (=> b!7814645 (= res!3111651 (not (isEmpty!42277 (tail!15519 (tail!15519 (t!388489 s!14225))))))))

(declare-fun b!7814646 () Bool)

(assert (=> b!7814646 (= e!4624808 (not lt!2676038))))

(declare-fun b!7814647 () Bool)

(assert (=> b!7814647 (= e!4624807 (matchR!10375 (derivativeStep!6248 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))) (head!15978 (tail!15519 (t!388489 s!14225)))) (tail!15519 (tail!15519 (t!388489 s!14225)))))))

(declare-fun b!7814648 () Bool)

(assert (=> b!7814648 (= e!4624805 e!4624804)))

(declare-fun res!3111648 () Bool)

(assert (=> b!7814648 (=> res!3111648 e!4624804)))

(assert (=> b!7814648 (= res!3111648 call!725081)))

(declare-fun b!7814649 () Bool)

(assert (=> b!7814649 (= e!4624804 (not (= (head!15978 (tail!15519 (t!388489 s!14225))) (c!1438650 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225)))))))))

(declare-fun d!2349198 () Bool)

(assert (=> d!2349198 e!4624806))

(declare-fun c!1438899 () Bool)

(assert (=> d!2349198 (= c!1438899 ((_ is EmptyExpr!20917) (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225)))))))

(assert (=> d!2349198 (= lt!2676038 e!4624807)))

(declare-fun c!1438900 () Bool)

(assert (=> d!2349198 (= c!1438900 (isEmpty!42277 (tail!15519 (t!388489 s!14225))))))

(assert (=> d!2349198 (validRegex!11331 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))))))

(assert (=> d!2349198 (= (matchR!10375 (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))) (tail!15519 (t!388489 s!14225))) lt!2676038)))

(declare-fun b!7814642 () Bool)

(declare-fun res!3111646 () Bool)

(assert (=> b!7814642 (=> (not res!3111646) (not e!4624809))))

(assert (=> b!7814642 (= res!3111646 (not call!725081))))

(assert (= (and d!2349198 c!1438900) b!7814641))

(assert (= (and d!2349198 (not c!1438900)) b!7814647))

(assert (= (and d!2349198 c!1438899) b!7814636))

(assert (= (and d!2349198 (not c!1438899)) b!7814637))

(assert (= (and b!7814637 c!1438898) b!7814646))

(assert (= (and b!7814637 (not c!1438898)) b!7814640))

(assert (= (and b!7814640 (not res!3111645)) b!7814643))

(assert (= (and b!7814643 res!3111647) b!7814642))

(assert (= (and b!7814642 res!3111646) b!7814644))

(assert (= (and b!7814644 res!3111650) b!7814638))

(assert (= (and b!7814643 (not res!3111652)) b!7814639))

(assert (= (and b!7814639 res!3111649) b!7814648))

(assert (= (and b!7814648 (not res!3111648)) b!7814645))

(assert (= (and b!7814645 (not res!3111651)) b!7814649))

(assert (= (or b!7814636 b!7814642 b!7814648) bm!725076))

(assert (=> bm!725076 m!8242956))

(assert (=> bm!725076 m!8242962))

(assert (=> b!7814649 m!8242956))

(assert (=> b!7814649 m!8243292))

(assert (=> b!7814647 m!8242956))

(assert (=> b!7814647 m!8243292))

(assert (=> b!7814647 m!8243022))

(assert (=> b!7814647 m!8243292))

(declare-fun m!8243470 () Bool)

(assert (=> b!7814647 m!8243470))

(assert (=> b!7814647 m!8242956))

(assert (=> b!7814647 m!8243300))

(assert (=> b!7814647 m!8243470))

(assert (=> b!7814647 m!8243300))

(declare-fun m!8243472 () Bool)

(assert (=> b!7814647 m!8243472))

(assert (=> d!2349198 m!8242956))

(assert (=> d!2349198 m!8242962))

(assert (=> d!2349198 m!8243022))

(declare-fun m!8243474 () Bool)

(assert (=> d!2349198 m!8243474))

(assert (=> b!7814645 m!8242956))

(assert (=> b!7814645 m!8243300))

(assert (=> b!7814645 m!8243300))

(assert (=> b!7814645 m!8243306))

(assert (=> b!7814641 m!8243022))

(declare-fun m!8243476 () Bool)

(assert (=> b!7814641 m!8243476))

(assert (=> b!7814644 m!8242956))

(assert (=> b!7814644 m!8243300))

(assert (=> b!7814644 m!8243300))

(assert (=> b!7814644 m!8243306))

(assert (=> b!7814638 m!8242956))

(assert (=> b!7814638 m!8243292))

(assert (=> b!7813948 d!2349198))

(declare-fun b!7814664 () Bool)

(declare-fun c!1438907 () Bool)

(assert (=> b!7814664 (= c!1438907 (nullable!9289 (regOne!42346 lt!2675984)))))

(declare-fun e!4624818 () Regex!20917)

(declare-fun e!4624819 () Regex!20917)

(assert (=> b!7814664 (= e!4624818 e!4624819)))

(declare-fun b!7814665 () Bool)

(declare-fun e!4624817 () Regex!20917)

(assert (=> b!7814665 (= e!4624817 (ite (= (head!15978 (t!388489 s!14225)) (c!1438650 lt!2675984)) EmptyExpr!20917 EmptyLang!20917))))

(declare-fun b!7814666 () Bool)

(declare-fun call!725086 () Regex!20917)

(assert (=> b!7814666 (= e!4624819 (Union!20917 (Concat!29762 call!725086 (regTwo!42346 lt!2675984)) EmptyLang!20917))))

(declare-fun b!7814667 () Bool)

(declare-fun e!4624820 () Regex!20917)

(declare-fun call!725083 () Regex!20917)

(declare-fun call!725085 () Regex!20917)

(assert (=> b!7814667 (= e!4624820 (Union!20917 call!725083 call!725085))))

(declare-fun b!7814668 () Bool)

(declare-fun e!4624821 () Regex!20917)

(assert (=> b!7814668 (= e!4624821 e!4624817)))

(declare-fun c!1438906 () Bool)

(assert (=> b!7814668 (= c!1438906 ((_ is ElementMatch!20917) lt!2675984))))

(declare-fun bm!725078 () Bool)

(declare-fun call!725084 () Regex!20917)

(assert (=> bm!725078 (= call!725086 call!725084)))

(declare-fun bm!725079 () Bool)

(declare-fun c!1438908 () Bool)

(assert (=> bm!725079 (= call!725085 (derivativeStep!6248 (ite c!1438908 (regTwo!42347 lt!2675984) (regOne!42346 lt!2675984)) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814670 () Bool)

(assert (=> b!7814670 (= e!4624821 EmptyLang!20917)))

(declare-fun b!7814671 () Bool)

(assert (=> b!7814671 (= e!4624820 e!4624818)))

(declare-fun c!1438905 () Bool)

(assert (=> b!7814671 (= c!1438905 ((_ is Star!20917) lt!2675984))))

(declare-fun bm!725080 () Bool)

(assert (=> bm!725080 (= call!725083 (derivativeStep!6248 (ite c!1438908 (regOne!42347 lt!2675984) (ite c!1438905 (reg!21246 lt!2675984) (ite c!1438907 (regTwo!42346 lt!2675984) (regOne!42346 lt!2675984)))) (head!15978 (t!388489 s!14225))))))

(declare-fun b!7814672 () Bool)

(assert (=> b!7814672 (= e!4624818 (Concat!29762 call!725084 lt!2675984))))

(declare-fun d!2349204 () Bool)

(declare-fun lt!2676040 () Regex!20917)

(assert (=> d!2349204 (validRegex!11331 lt!2676040)))

(assert (=> d!2349204 (= lt!2676040 e!4624821)))

(declare-fun c!1438904 () Bool)

(assert (=> d!2349204 (= c!1438904 (or ((_ is EmptyExpr!20917) lt!2675984) ((_ is EmptyLang!20917) lt!2675984)))))

(assert (=> d!2349204 (validRegex!11331 lt!2675984)))

(assert (=> d!2349204 (= (derivativeStep!6248 lt!2675984 (head!15978 (t!388489 s!14225))) lt!2676040)))

(declare-fun b!7814669 () Bool)

(assert (=> b!7814669 (= e!4624819 (Union!20917 (Concat!29762 call!725085 (regTwo!42346 lt!2675984)) call!725086))))

(declare-fun bm!725081 () Bool)

(assert (=> bm!725081 (= call!725084 call!725083)))

(declare-fun b!7814673 () Bool)

(assert (=> b!7814673 (= c!1438908 ((_ is Union!20917) lt!2675984))))

(assert (=> b!7814673 (= e!4624817 e!4624820)))

(assert (= (and d!2349204 c!1438904) b!7814670))

(assert (= (and d!2349204 (not c!1438904)) b!7814668))

(assert (= (and b!7814668 c!1438906) b!7814665))

(assert (= (and b!7814668 (not c!1438906)) b!7814673))

(assert (= (and b!7814673 c!1438908) b!7814667))

(assert (= (and b!7814673 (not c!1438908)) b!7814671))

(assert (= (and b!7814671 c!1438905) b!7814672))

(assert (= (and b!7814671 (not c!1438905)) b!7814664))

(assert (= (and b!7814664 c!1438907) b!7814669))

(assert (= (and b!7814664 (not c!1438907)) b!7814666))

(assert (= (or b!7814669 b!7814666) bm!725078))

(assert (= (or b!7814672 bm!725078) bm!725081))

(assert (= (or b!7814667 b!7814669) bm!725079))

(assert (= (or b!7814667 bm!725081) bm!725080))

(declare-fun m!8243480 () Bool)

(assert (=> b!7814664 m!8243480))

(assert (=> bm!725079 m!8242952))

(declare-fun m!8243484 () Bool)

(assert (=> bm!725079 m!8243484))

(assert (=> bm!725080 m!8242952))

(declare-fun m!8243486 () Bool)

(assert (=> bm!725080 m!8243486))

(declare-fun m!8243488 () Bool)

(assert (=> d!2349204 m!8243488))

(assert (=> d!2349204 m!8242894))

(assert (=> b!7813948 d!2349204))

(assert (=> b!7813948 d!2349054))

(assert (=> b!7813948 d!2349048))

(assert (=> b!7813983 d!2349064))

(assert (=> b!7813983 d!2349062))

(declare-fun b!7814677 () Bool)

(declare-fun e!4624823 () Bool)

(declare-fun tp!2303304 () Bool)

(declare-fun tp!2303301 () Bool)

(assert (=> b!7814677 (= e!4624823 (and tp!2303304 tp!2303301))))

(assert (=> b!7814164 (= tp!2303251 e!4624823)))

(declare-fun b!7814674 () Bool)

(assert (=> b!7814674 (= e!4624823 tp_is_empty!52189)))

(declare-fun b!7814676 () Bool)

(declare-fun tp!2303302 () Bool)

(assert (=> b!7814676 (= e!4624823 tp!2303302)))

(declare-fun b!7814675 () Bool)

(declare-fun tp!2303300 () Bool)

(declare-fun tp!2303303 () Bool)

(assert (=> b!7814675 (= e!4624823 (and tp!2303300 tp!2303303))))

(assert (= (and b!7814164 ((_ is ElementMatch!20917) (regOne!42347 (regOne!42346 r1!6206)))) b!7814674))

(assert (= (and b!7814164 ((_ is Concat!29762) (regOne!42347 (regOne!42346 r1!6206)))) b!7814675))

(assert (= (and b!7814164 ((_ is Star!20917) (regOne!42347 (regOne!42346 r1!6206)))) b!7814676))

(assert (= (and b!7814164 ((_ is Union!20917) (regOne!42347 (regOne!42346 r1!6206)))) b!7814677))

(declare-fun b!7814691 () Bool)

(declare-fun e!4624828 () Bool)

(declare-fun tp!2303309 () Bool)

(declare-fun tp!2303306 () Bool)

(assert (=> b!7814691 (= e!4624828 (and tp!2303309 tp!2303306))))

(assert (=> b!7814164 (= tp!2303248 e!4624828)))

(declare-fun b!7814688 () Bool)

(assert (=> b!7814688 (= e!4624828 tp_is_empty!52189)))

(declare-fun b!7814690 () Bool)

(declare-fun tp!2303307 () Bool)

(assert (=> b!7814690 (= e!4624828 tp!2303307)))

(declare-fun b!7814689 () Bool)

(declare-fun tp!2303305 () Bool)

(declare-fun tp!2303308 () Bool)

(assert (=> b!7814689 (= e!4624828 (and tp!2303305 tp!2303308))))

(assert (= (and b!7814164 ((_ is ElementMatch!20917) (regTwo!42347 (regOne!42346 r1!6206)))) b!7814688))

(assert (= (and b!7814164 ((_ is Concat!29762) (regTwo!42347 (regOne!42346 r1!6206)))) b!7814689))

(assert (= (and b!7814164 ((_ is Star!20917) (regTwo!42347 (regOne!42346 r1!6206)))) b!7814690))

(assert (= (and b!7814164 ((_ is Union!20917) (regTwo!42347 (regOne!42346 r1!6206)))) b!7814691))

(declare-fun b!7814695 () Bool)

(declare-fun e!4624829 () Bool)

(declare-fun tp!2303314 () Bool)

(declare-fun tp!2303311 () Bool)

(assert (=> b!7814695 (= e!4624829 (and tp!2303314 tp!2303311))))

(assert (=> b!7814172 (= tp!2303261 e!4624829)))

(declare-fun b!7814692 () Bool)

(assert (=> b!7814692 (= e!4624829 tp_is_empty!52189)))

(declare-fun b!7814694 () Bool)

(declare-fun tp!2303312 () Bool)

(assert (=> b!7814694 (= e!4624829 tp!2303312)))

(declare-fun b!7814693 () Bool)

(declare-fun tp!2303310 () Bool)

(declare-fun tp!2303313 () Bool)

(assert (=> b!7814693 (= e!4624829 (and tp!2303310 tp!2303313))))

(assert (= (and b!7814172 ((_ is ElementMatch!20917) (regOne!42347 (reg!21246 r1!6206)))) b!7814692))

(assert (= (and b!7814172 ((_ is Concat!29762) (regOne!42347 (reg!21246 r1!6206)))) b!7814693))

(assert (= (and b!7814172 ((_ is Star!20917) (regOne!42347 (reg!21246 r1!6206)))) b!7814694))

(assert (= (and b!7814172 ((_ is Union!20917) (regOne!42347 (reg!21246 r1!6206)))) b!7814695))

(declare-fun b!7814699 () Bool)

(declare-fun e!4624830 () Bool)

(declare-fun tp!2303319 () Bool)

(declare-fun tp!2303316 () Bool)

(assert (=> b!7814699 (= e!4624830 (and tp!2303319 tp!2303316))))

(assert (=> b!7814172 (= tp!2303258 e!4624830)))

(declare-fun b!7814696 () Bool)

(assert (=> b!7814696 (= e!4624830 tp_is_empty!52189)))

(declare-fun b!7814698 () Bool)

(declare-fun tp!2303317 () Bool)

(assert (=> b!7814698 (= e!4624830 tp!2303317)))

(declare-fun b!7814697 () Bool)

(declare-fun tp!2303315 () Bool)

(declare-fun tp!2303318 () Bool)

(assert (=> b!7814697 (= e!4624830 (and tp!2303315 tp!2303318))))

(assert (= (and b!7814172 ((_ is ElementMatch!20917) (regTwo!42347 (reg!21246 r1!6206)))) b!7814696))

(assert (= (and b!7814172 ((_ is Concat!29762) (regTwo!42347 (reg!21246 r1!6206)))) b!7814697))

(assert (= (and b!7814172 ((_ is Star!20917) (regTwo!42347 (reg!21246 r1!6206)))) b!7814698))

(assert (= (and b!7814172 ((_ is Union!20917) (regTwo!42347 (reg!21246 r1!6206)))) b!7814699))

(declare-fun b!7814700 () Bool)

(declare-fun e!4624831 () Bool)

(declare-fun tp!2303320 () Bool)

(assert (=> b!7814700 (= e!4624831 (and tp_is_empty!52189 tp!2303320))))

(assert (=> b!7814205 (= tp!2303299 e!4624831)))

(assert (= (and b!7814205 ((_ is Cons!73630) (t!388489 (t!388489 s!14225)))) b!7814700))

(declare-fun b!7814704 () Bool)

(declare-fun e!4624832 () Bool)

(declare-fun tp!2303325 () Bool)

(declare-fun tp!2303322 () Bool)

(assert (=> b!7814704 (= e!4624832 (and tp!2303325 tp!2303322))))

(assert (=> b!7814163 (= tp!2303249 e!4624832)))

(declare-fun b!7814701 () Bool)

(assert (=> b!7814701 (= e!4624832 tp_is_empty!52189)))

(declare-fun b!7814703 () Bool)

(declare-fun tp!2303323 () Bool)

(assert (=> b!7814703 (= e!4624832 tp!2303323)))

(declare-fun b!7814702 () Bool)

(declare-fun tp!2303321 () Bool)

(declare-fun tp!2303324 () Bool)

(assert (=> b!7814702 (= e!4624832 (and tp!2303321 tp!2303324))))

(assert (= (and b!7814163 ((_ is ElementMatch!20917) (reg!21246 (regOne!42346 r1!6206)))) b!7814701))

(assert (= (and b!7814163 ((_ is Concat!29762) (reg!21246 (regOne!42346 r1!6206)))) b!7814702))

(assert (= (and b!7814163 ((_ is Star!20917) (reg!21246 (regOne!42346 r1!6206)))) b!7814703))

(assert (= (and b!7814163 ((_ is Union!20917) (reg!21246 (regOne!42346 r1!6206)))) b!7814704))

(declare-fun b!7814708 () Bool)

(declare-fun e!4624833 () Bool)

(declare-fun tp!2303330 () Bool)

(declare-fun tp!2303327 () Bool)

(assert (=> b!7814708 (= e!4624833 (and tp!2303330 tp!2303327))))

(assert (=> b!7814198 (= tp!2303292 e!4624833)))

(declare-fun b!7814705 () Bool)

(assert (=> b!7814705 (= e!4624833 tp_is_empty!52189)))

(declare-fun b!7814707 () Bool)

(declare-fun tp!2303328 () Bool)

(assert (=> b!7814707 (= e!4624833 tp!2303328)))

(declare-fun b!7814706 () Bool)

(declare-fun tp!2303326 () Bool)

(declare-fun tp!2303329 () Bool)

(assert (=> b!7814706 (= e!4624833 (and tp!2303326 tp!2303329))))

(assert (= (and b!7814198 ((_ is ElementMatch!20917) (regOne!42346 (regTwo!42347 r2!6144)))) b!7814705))

(assert (= (and b!7814198 ((_ is Concat!29762) (regOne!42346 (regTwo!42347 r2!6144)))) b!7814706))

(assert (= (and b!7814198 ((_ is Star!20917) (regOne!42346 (regTwo!42347 r2!6144)))) b!7814707))

(assert (= (and b!7814198 ((_ is Union!20917) (regOne!42346 (regTwo!42347 r2!6144)))) b!7814708))

(declare-fun b!7814721 () Bool)

(declare-fun e!4624841 () Bool)

(declare-fun tp!2303335 () Bool)

(declare-fun tp!2303332 () Bool)

(assert (=> b!7814721 (= e!4624841 (and tp!2303335 tp!2303332))))

(assert (=> b!7814198 (= tp!2303295 e!4624841)))

(declare-fun b!7814718 () Bool)

(assert (=> b!7814718 (= e!4624841 tp_is_empty!52189)))

(declare-fun b!7814720 () Bool)

(declare-fun tp!2303333 () Bool)

(assert (=> b!7814720 (= e!4624841 tp!2303333)))

(declare-fun b!7814719 () Bool)

(declare-fun tp!2303331 () Bool)

(declare-fun tp!2303334 () Bool)

(assert (=> b!7814719 (= e!4624841 (and tp!2303331 tp!2303334))))

(assert (= (and b!7814198 ((_ is ElementMatch!20917) (regTwo!42346 (regTwo!42347 r2!6144)))) b!7814718))

(assert (= (and b!7814198 ((_ is Concat!29762) (regTwo!42346 (regTwo!42347 r2!6144)))) b!7814719))

(assert (= (and b!7814198 ((_ is Star!20917) (regTwo!42346 (regTwo!42347 r2!6144)))) b!7814720))

(assert (= (and b!7814198 ((_ is Union!20917) (regTwo!42346 (regTwo!42347 r2!6144)))) b!7814721))

(declare-fun b!7814725 () Bool)

(declare-fun e!4624842 () Bool)

(declare-fun tp!2303340 () Bool)

(declare-fun tp!2303337 () Bool)

(assert (=> b!7814725 (= e!4624842 (and tp!2303340 tp!2303337))))

(assert (=> b!7814190 (= tp!2303282 e!4624842)))

(declare-fun b!7814722 () Bool)

(assert (=> b!7814722 (= e!4624842 tp_is_empty!52189)))

(declare-fun b!7814724 () Bool)

(declare-fun tp!2303338 () Bool)

(assert (=> b!7814724 (= e!4624842 tp!2303338)))

(declare-fun b!7814723 () Bool)

(declare-fun tp!2303336 () Bool)

(declare-fun tp!2303339 () Bool)

(assert (=> b!7814723 (= e!4624842 (and tp!2303336 tp!2303339))))

(assert (= (and b!7814190 ((_ is ElementMatch!20917) (regOne!42346 (reg!21246 r2!6144)))) b!7814722))

(assert (= (and b!7814190 ((_ is Concat!29762) (regOne!42346 (reg!21246 r2!6144)))) b!7814723))

(assert (= (and b!7814190 ((_ is Star!20917) (regOne!42346 (reg!21246 r2!6144)))) b!7814724))

(assert (= (and b!7814190 ((_ is Union!20917) (regOne!42346 (reg!21246 r2!6144)))) b!7814725))

(declare-fun b!7814729 () Bool)

(declare-fun e!4624843 () Bool)

(declare-fun tp!2303345 () Bool)

(declare-fun tp!2303342 () Bool)

(assert (=> b!7814729 (= e!4624843 (and tp!2303345 tp!2303342))))

(assert (=> b!7814190 (= tp!2303285 e!4624843)))

(declare-fun b!7814726 () Bool)

(assert (=> b!7814726 (= e!4624843 tp_is_empty!52189)))

(declare-fun b!7814728 () Bool)

(declare-fun tp!2303343 () Bool)

(assert (=> b!7814728 (= e!4624843 tp!2303343)))

(declare-fun b!7814727 () Bool)

(declare-fun tp!2303341 () Bool)

(declare-fun tp!2303344 () Bool)

(assert (=> b!7814727 (= e!4624843 (and tp!2303341 tp!2303344))))

(assert (= (and b!7814190 ((_ is ElementMatch!20917) (regTwo!42346 (reg!21246 r2!6144)))) b!7814726))

(assert (= (and b!7814190 ((_ is Concat!29762) (regTwo!42346 (reg!21246 r2!6144)))) b!7814727))

(assert (= (and b!7814190 ((_ is Star!20917) (regTwo!42346 (reg!21246 r2!6144)))) b!7814728))

(assert (= (and b!7814190 ((_ is Union!20917) (regTwo!42346 (reg!21246 r2!6144)))) b!7814729))

(declare-fun b!7814733 () Bool)

(declare-fun e!4624844 () Bool)

(declare-fun tp!2303350 () Bool)

(declare-fun tp!2303347 () Bool)

(assert (=> b!7814733 (= e!4624844 (and tp!2303350 tp!2303347))))

(assert (=> b!7814199 (= tp!2303294 e!4624844)))

(declare-fun b!7814730 () Bool)

(assert (=> b!7814730 (= e!4624844 tp_is_empty!52189)))

(declare-fun b!7814732 () Bool)

(declare-fun tp!2303348 () Bool)

(assert (=> b!7814732 (= e!4624844 tp!2303348)))

(declare-fun b!7814731 () Bool)

(declare-fun tp!2303346 () Bool)

(declare-fun tp!2303349 () Bool)

(assert (=> b!7814731 (= e!4624844 (and tp!2303346 tp!2303349))))

(assert (= (and b!7814199 ((_ is ElementMatch!20917) (reg!21246 (regTwo!42347 r2!6144)))) b!7814730))

(assert (= (and b!7814199 ((_ is Concat!29762) (reg!21246 (regTwo!42347 r2!6144)))) b!7814731))

(assert (= (and b!7814199 ((_ is Star!20917) (reg!21246 (regTwo!42347 r2!6144)))) b!7814732))

(assert (= (and b!7814199 ((_ is Union!20917) (reg!21246 (regTwo!42347 r2!6144)))) b!7814733))

(declare-fun b!7814746 () Bool)

(declare-fun e!4624852 () Bool)

(declare-fun tp!2303355 () Bool)

(declare-fun tp!2303352 () Bool)

(assert (=> b!7814746 (= e!4624852 (and tp!2303355 tp!2303352))))

(assert (=> b!7814182 (= tp!2303272 e!4624852)))

(declare-fun b!7814743 () Bool)

(assert (=> b!7814743 (= e!4624852 tp_is_empty!52189)))

(declare-fun b!7814745 () Bool)

(declare-fun tp!2303353 () Bool)

(assert (=> b!7814745 (= e!4624852 tp!2303353)))

(declare-fun b!7814744 () Bool)

(declare-fun tp!2303351 () Bool)

(declare-fun tp!2303354 () Bool)

(assert (=> b!7814744 (= e!4624852 (and tp!2303351 tp!2303354))))

(assert (= (and b!7814182 ((_ is ElementMatch!20917) (regOne!42346 (regOne!42346 r2!6144)))) b!7814743))

(assert (= (and b!7814182 ((_ is Concat!29762) (regOne!42346 (regOne!42346 r2!6144)))) b!7814744))

(assert (= (and b!7814182 ((_ is Star!20917) (regOne!42346 (regOne!42346 r2!6144)))) b!7814745))

(assert (= (and b!7814182 ((_ is Union!20917) (regOne!42346 (regOne!42346 r2!6144)))) b!7814746))

(declare-fun b!7814750 () Bool)

(declare-fun e!4624853 () Bool)

(declare-fun tp!2303360 () Bool)

(declare-fun tp!2303357 () Bool)

(assert (=> b!7814750 (= e!4624853 (and tp!2303360 tp!2303357))))

(assert (=> b!7814182 (= tp!2303275 e!4624853)))

(declare-fun b!7814747 () Bool)

(assert (=> b!7814747 (= e!4624853 tp_is_empty!52189)))

(declare-fun b!7814749 () Bool)

(declare-fun tp!2303358 () Bool)

(assert (=> b!7814749 (= e!4624853 tp!2303358)))

(declare-fun b!7814748 () Bool)

(declare-fun tp!2303356 () Bool)

(declare-fun tp!2303359 () Bool)

(assert (=> b!7814748 (= e!4624853 (and tp!2303356 tp!2303359))))

(assert (= (and b!7814182 ((_ is ElementMatch!20917) (regTwo!42346 (regOne!42346 r2!6144)))) b!7814747))

(assert (= (and b!7814182 ((_ is Concat!29762) (regTwo!42346 (regOne!42346 r2!6144)))) b!7814748))

(assert (= (and b!7814182 ((_ is Star!20917) (regTwo!42346 (regOne!42346 r2!6144)))) b!7814749))

(assert (= (and b!7814182 ((_ is Union!20917) (regTwo!42346 (regOne!42346 r2!6144)))) b!7814750))

(declare-fun b!7814754 () Bool)

(declare-fun e!4624854 () Bool)

(declare-fun tp!2303365 () Bool)

(declare-fun tp!2303362 () Bool)

(assert (=> b!7814754 (= e!4624854 (and tp!2303365 tp!2303362))))

(assert (=> b!7814191 (= tp!2303284 e!4624854)))

(declare-fun b!7814751 () Bool)

(assert (=> b!7814751 (= e!4624854 tp_is_empty!52189)))

(declare-fun b!7814753 () Bool)

(declare-fun tp!2303363 () Bool)

(assert (=> b!7814753 (= e!4624854 tp!2303363)))

(declare-fun b!7814752 () Bool)

(declare-fun tp!2303361 () Bool)

(declare-fun tp!2303364 () Bool)

(assert (=> b!7814752 (= e!4624854 (and tp!2303361 tp!2303364))))

(assert (= (and b!7814191 ((_ is ElementMatch!20917) (reg!21246 (reg!21246 r2!6144)))) b!7814751))

(assert (= (and b!7814191 ((_ is Concat!29762) (reg!21246 (reg!21246 r2!6144)))) b!7814752))

(assert (= (and b!7814191 ((_ is Star!20917) (reg!21246 (reg!21246 r2!6144)))) b!7814753))

(assert (= (and b!7814191 ((_ is Union!20917) (reg!21246 (reg!21246 r2!6144)))) b!7814754))

(declare-fun b!7814758 () Bool)

(declare-fun e!4624855 () Bool)

(declare-fun tp!2303370 () Bool)

(declare-fun tp!2303367 () Bool)

(assert (=> b!7814758 (= e!4624855 (and tp!2303370 tp!2303367))))

(assert (=> b!7814200 (= tp!2303296 e!4624855)))

(declare-fun b!7814755 () Bool)

(assert (=> b!7814755 (= e!4624855 tp_is_empty!52189)))

(declare-fun b!7814757 () Bool)

(declare-fun tp!2303368 () Bool)

(assert (=> b!7814757 (= e!4624855 tp!2303368)))

(declare-fun b!7814756 () Bool)

(declare-fun tp!2303366 () Bool)

(declare-fun tp!2303369 () Bool)

(assert (=> b!7814756 (= e!4624855 (and tp!2303366 tp!2303369))))

(assert (= (and b!7814200 ((_ is ElementMatch!20917) (regOne!42347 (regTwo!42347 r2!6144)))) b!7814755))

(assert (= (and b!7814200 ((_ is Concat!29762) (regOne!42347 (regTwo!42347 r2!6144)))) b!7814756))

(assert (= (and b!7814200 ((_ is Star!20917) (regOne!42347 (regTwo!42347 r2!6144)))) b!7814757))

(assert (= (and b!7814200 ((_ is Union!20917) (regOne!42347 (regTwo!42347 r2!6144)))) b!7814758))

(declare-fun b!7814771 () Bool)

(declare-fun e!4624863 () Bool)

(declare-fun tp!2303375 () Bool)

(declare-fun tp!2303372 () Bool)

(assert (=> b!7814771 (= e!4624863 (and tp!2303375 tp!2303372))))

(assert (=> b!7814200 (= tp!2303293 e!4624863)))

(declare-fun b!7814768 () Bool)

(assert (=> b!7814768 (= e!4624863 tp_is_empty!52189)))

(declare-fun b!7814770 () Bool)

(declare-fun tp!2303373 () Bool)

(assert (=> b!7814770 (= e!4624863 tp!2303373)))

(declare-fun b!7814769 () Bool)

(declare-fun tp!2303371 () Bool)

(declare-fun tp!2303374 () Bool)

(assert (=> b!7814769 (= e!4624863 (and tp!2303371 tp!2303374))))

(assert (= (and b!7814200 ((_ is ElementMatch!20917) (regTwo!42347 (regTwo!42347 r2!6144)))) b!7814768))

(assert (= (and b!7814200 ((_ is Concat!29762) (regTwo!42347 (regTwo!42347 r2!6144)))) b!7814769))

(assert (= (and b!7814200 ((_ is Star!20917) (regTwo!42347 (regTwo!42347 r2!6144)))) b!7814770))

(assert (= (and b!7814200 ((_ is Union!20917) (regTwo!42347 (regTwo!42347 r2!6144)))) b!7814771))

(declare-fun b!7814775 () Bool)

(declare-fun e!4624864 () Bool)

(declare-fun tp!2303380 () Bool)

(declare-fun tp!2303377 () Bool)

(assert (=> b!7814775 (= e!4624864 (and tp!2303380 tp!2303377))))

(assert (=> b!7814166 (= tp!2303252 e!4624864)))

(declare-fun b!7814772 () Bool)

(assert (=> b!7814772 (= e!4624864 tp_is_empty!52189)))

(declare-fun b!7814774 () Bool)

(declare-fun tp!2303378 () Bool)

(assert (=> b!7814774 (= e!4624864 tp!2303378)))

(declare-fun b!7814773 () Bool)

(declare-fun tp!2303376 () Bool)

(declare-fun tp!2303379 () Bool)

(assert (=> b!7814773 (= e!4624864 (and tp!2303376 tp!2303379))))

(assert (= (and b!7814166 ((_ is ElementMatch!20917) (regOne!42346 (regTwo!42346 r1!6206)))) b!7814772))

(assert (= (and b!7814166 ((_ is Concat!29762) (regOne!42346 (regTwo!42346 r1!6206)))) b!7814773))

(assert (= (and b!7814166 ((_ is Star!20917) (regOne!42346 (regTwo!42346 r1!6206)))) b!7814774))

(assert (= (and b!7814166 ((_ is Union!20917) (regOne!42346 (regTwo!42346 r1!6206)))) b!7814775))

(declare-fun b!7814779 () Bool)

(declare-fun e!4624865 () Bool)

(declare-fun tp!2303385 () Bool)

(declare-fun tp!2303382 () Bool)

(assert (=> b!7814779 (= e!4624865 (and tp!2303385 tp!2303382))))

(assert (=> b!7814166 (= tp!2303255 e!4624865)))

(declare-fun b!7814776 () Bool)

(assert (=> b!7814776 (= e!4624865 tp_is_empty!52189)))

(declare-fun b!7814778 () Bool)

(declare-fun tp!2303383 () Bool)

(assert (=> b!7814778 (= e!4624865 tp!2303383)))

(declare-fun b!7814777 () Bool)

(declare-fun tp!2303381 () Bool)

(declare-fun tp!2303384 () Bool)

(assert (=> b!7814777 (= e!4624865 (and tp!2303381 tp!2303384))))

(assert (= (and b!7814166 ((_ is ElementMatch!20917) (regTwo!42346 (regTwo!42346 r1!6206)))) b!7814776))

(assert (= (and b!7814166 ((_ is Concat!29762) (regTwo!42346 (regTwo!42346 r1!6206)))) b!7814777))

(assert (= (and b!7814166 ((_ is Star!20917) (regTwo!42346 (regTwo!42346 r1!6206)))) b!7814778))

(assert (= (and b!7814166 ((_ is Union!20917) (regTwo!42346 (regTwo!42346 r1!6206)))) b!7814779))

(declare-fun b!7814783 () Bool)

(declare-fun e!4624866 () Bool)

(declare-fun tp!2303390 () Bool)

(declare-fun tp!2303387 () Bool)

(assert (=> b!7814783 (= e!4624866 (and tp!2303390 tp!2303387))))

(assert (=> b!7814174 (= tp!2303262 e!4624866)))

(declare-fun b!7814780 () Bool)

(assert (=> b!7814780 (= e!4624866 tp_is_empty!52189)))

(declare-fun b!7814782 () Bool)

(declare-fun tp!2303388 () Bool)

(assert (=> b!7814782 (= e!4624866 tp!2303388)))

(declare-fun b!7814781 () Bool)

(declare-fun tp!2303386 () Bool)

(declare-fun tp!2303389 () Bool)

(assert (=> b!7814781 (= e!4624866 (and tp!2303386 tp!2303389))))

(assert (= (and b!7814174 ((_ is ElementMatch!20917) (regOne!42346 (regOne!42347 r1!6206)))) b!7814780))

(assert (= (and b!7814174 ((_ is Concat!29762) (regOne!42346 (regOne!42347 r1!6206)))) b!7814781))

(assert (= (and b!7814174 ((_ is Star!20917) (regOne!42346 (regOne!42347 r1!6206)))) b!7814782))

(assert (= (and b!7814174 ((_ is Union!20917) (regOne!42346 (regOne!42347 r1!6206)))) b!7814783))

(declare-fun b!7814787 () Bool)

(declare-fun e!4624867 () Bool)

(declare-fun tp!2303395 () Bool)

(declare-fun tp!2303392 () Bool)

(assert (=> b!7814787 (= e!4624867 (and tp!2303395 tp!2303392))))

(assert (=> b!7814174 (= tp!2303265 e!4624867)))

(declare-fun b!7814784 () Bool)

(assert (=> b!7814784 (= e!4624867 tp_is_empty!52189)))

(declare-fun b!7814786 () Bool)

(declare-fun tp!2303393 () Bool)

(assert (=> b!7814786 (= e!4624867 tp!2303393)))

(declare-fun b!7814785 () Bool)

(declare-fun tp!2303391 () Bool)

(declare-fun tp!2303394 () Bool)

(assert (=> b!7814785 (= e!4624867 (and tp!2303391 tp!2303394))))

(assert (= (and b!7814174 ((_ is ElementMatch!20917) (regTwo!42346 (regOne!42347 r1!6206)))) b!7814784))

(assert (= (and b!7814174 ((_ is Concat!29762) (regTwo!42346 (regOne!42347 r1!6206)))) b!7814785))

(assert (= (and b!7814174 ((_ is Star!20917) (regTwo!42346 (regOne!42347 r1!6206)))) b!7814786))

(assert (= (and b!7814174 ((_ is Union!20917) (regTwo!42346 (regOne!42347 r1!6206)))) b!7814787))

(declare-fun b!7814805 () Bool)

(declare-fun e!4624875 () Bool)

(declare-fun tp!2303400 () Bool)

(declare-fun tp!2303397 () Bool)

(assert (=> b!7814805 (= e!4624875 (and tp!2303400 tp!2303397))))

(assert (=> b!7814183 (= tp!2303274 e!4624875)))

(declare-fun b!7814802 () Bool)

(assert (=> b!7814802 (= e!4624875 tp_is_empty!52189)))

(declare-fun b!7814804 () Bool)

(declare-fun tp!2303398 () Bool)

(assert (=> b!7814804 (= e!4624875 tp!2303398)))

(declare-fun b!7814803 () Bool)

(declare-fun tp!2303396 () Bool)

(declare-fun tp!2303399 () Bool)

(assert (=> b!7814803 (= e!4624875 (and tp!2303396 tp!2303399))))

(assert (= (and b!7814183 ((_ is ElementMatch!20917) (reg!21246 (regOne!42346 r2!6144)))) b!7814802))

(assert (= (and b!7814183 ((_ is Concat!29762) (reg!21246 (regOne!42346 r2!6144)))) b!7814803))

(assert (= (and b!7814183 ((_ is Star!20917) (reg!21246 (regOne!42346 r2!6144)))) b!7814804))

(assert (= (and b!7814183 ((_ is Union!20917) (reg!21246 (regOne!42346 r2!6144)))) b!7814805))

(declare-fun b!7814809 () Bool)

(declare-fun e!4624876 () Bool)

(declare-fun tp!2303405 () Bool)

(declare-fun tp!2303402 () Bool)

(assert (=> b!7814809 (= e!4624876 (and tp!2303405 tp!2303402))))

(assert (=> b!7814192 (= tp!2303286 e!4624876)))

(declare-fun b!7814806 () Bool)

(assert (=> b!7814806 (= e!4624876 tp_is_empty!52189)))

(declare-fun b!7814808 () Bool)

(declare-fun tp!2303403 () Bool)

(assert (=> b!7814808 (= e!4624876 tp!2303403)))

(declare-fun b!7814807 () Bool)

(declare-fun tp!2303401 () Bool)

(declare-fun tp!2303404 () Bool)

(assert (=> b!7814807 (= e!4624876 (and tp!2303401 tp!2303404))))

(assert (= (and b!7814192 ((_ is ElementMatch!20917) (regOne!42347 (reg!21246 r2!6144)))) b!7814806))

(assert (= (and b!7814192 ((_ is Concat!29762) (regOne!42347 (reg!21246 r2!6144)))) b!7814807))

(assert (= (and b!7814192 ((_ is Star!20917) (regOne!42347 (reg!21246 r2!6144)))) b!7814808))

(assert (= (and b!7814192 ((_ is Union!20917) (regOne!42347 (reg!21246 r2!6144)))) b!7814809))

(declare-fun b!7814813 () Bool)

(declare-fun e!4624877 () Bool)

(declare-fun tp!2303410 () Bool)

(declare-fun tp!2303407 () Bool)

(assert (=> b!7814813 (= e!4624877 (and tp!2303410 tp!2303407))))

(assert (=> b!7814192 (= tp!2303283 e!4624877)))

(declare-fun b!7814810 () Bool)

(assert (=> b!7814810 (= e!4624877 tp_is_empty!52189)))

(declare-fun b!7814812 () Bool)

(declare-fun tp!2303408 () Bool)

(assert (=> b!7814812 (= e!4624877 tp!2303408)))

(declare-fun b!7814811 () Bool)

(declare-fun tp!2303406 () Bool)

(declare-fun tp!2303409 () Bool)

(assert (=> b!7814811 (= e!4624877 (and tp!2303406 tp!2303409))))

(assert (= (and b!7814192 ((_ is ElementMatch!20917) (regTwo!42347 (reg!21246 r2!6144)))) b!7814810))

(assert (= (and b!7814192 ((_ is Concat!29762) (regTwo!42347 (reg!21246 r2!6144)))) b!7814811))

(assert (= (and b!7814192 ((_ is Star!20917) (regTwo!42347 (reg!21246 r2!6144)))) b!7814812))

(assert (= (and b!7814192 ((_ is Union!20917) (regTwo!42347 (reg!21246 r2!6144)))) b!7814813))

(declare-fun b!7814817 () Bool)

(declare-fun e!4624878 () Bool)

(declare-fun tp!2303415 () Bool)

(declare-fun tp!2303412 () Bool)

(assert (=> b!7814817 (= e!4624878 (and tp!2303415 tp!2303412))))

(assert (=> b!7814167 (= tp!2303254 e!4624878)))

(declare-fun b!7814814 () Bool)

(assert (=> b!7814814 (= e!4624878 tp_is_empty!52189)))

(declare-fun b!7814816 () Bool)

(declare-fun tp!2303413 () Bool)

(assert (=> b!7814816 (= e!4624878 tp!2303413)))

(declare-fun b!7814815 () Bool)

(declare-fun tp!2303411 () Bool)

(declare-fun tp!2303414 () Bool)

(assert (=> b!7814815 (= e!4624878 (and tp!2303411 tp!2303414))))

(assert (= (and b!7814167 ((_ is ElementMatch!20917) (reg!21246 (regTwo!42346 r1!6206)))) b!7814814))

(assert (= (and b!7814167 ((_ is Concat!29762) (reg!21246 (regTwo!42346 r1!6206)))) b!7814815))

(assert (= (and b!7814167 ((_ is Star!20917) (reg!21246 (regTwo!42346 r1!6206)))) b!7814816))

(assert (= (and b!7814167 ((_ is Union!20917) (reg!21246 (regTwo!42346 r1!6206)))) b!7814817))

(declare-fun b!7814821 () Bool)

(declare-fun e!4624879 () Bool)

(declare-fun tp!2303420 () Bool)

(declare-fun tp!2303417 () Bool)

(assert (=> b!7814821 (= e!4624879 (and tp!2303420 tp!2303417))))

(assert (=> b!7814175 (= tp!2303264 e!4624879)))

(declare-fun b!7814818 () Bool)

(assert (=> b!7814818 (= e!4624879 tp_is_empty!52189)))

(declare-fun b!7814820 () Bool)

(declare-fun tp!2303418 () Bool)

(assert (=> b!7814820 (= e!4624879 tp!2303418)))

(declare-fun b!7814819 () Bool)

(declare-fun tp!2303416 () Bool)

(declare-fun tp!2303419 () Bool)

(assert (=> b!7814819 (= e!4624879 (and tp!2303416 tp!2303419))))

(assert (= (and b!7814175 ((_ is ElementMatch!20917) (reg!21246 (regOne!42347 r1!6206)))) b!7814818))

(assert (= (and b!7814175 ((_ is Concat!29762) (reg!21246 (regOne!42347 r1!6206)))) b!7814819))

(assert (= (and b!7814175 ((_ is Star!20917) (reg!21246 (regOne!42347 r1!6206)))) b!7814820))

(assert (= (and b!7814175 ((_ is Union!20917) (reg!21246 (regOne!42347 r1!6206)))) b!7814821))

(declare-fun b!7814825 () Bool)

(declare-fun e!4624880 () Bool)

(declare-fun tp!2303425 () Bool)

(declare-fun tp!2303422 () Bool)

(assert (=> b!7814825 (= e!4624880 (and tp!2303425 tp!2303422))))

(assert (=> b!7814184 (= tp!2303276 e!4624880)))

(declare-fun b!7814822 () Bool)

(assert (=> b!7814822 (= e!4624880 tp_is_empty!52189)))

(declare-fun b!7814824 () Bool)

(declare-fun tp!2303423 () Bool)

(assert (=> b!7814824 (= e!4624880 tp!2303423)))

(declare-fun b!7814823 () Bool)

(declare-fun tp!2303421 () Bool)

(declare-fun tp!2303424 () Bool)

(assert (=> b!7814823 (= e!4624880 (and tp!2303421 tp!2303424))))

(assert (= (and b!7814184 ((_ is ElementMatch!20917) (regOne!42347 (regOne!42346 r2!6144)))) b!7814822))

(assert (= (and b!7814184 ((_ is Concat!29762) (regOne!42347 (regOne!42346 r2!6144)))) b!7814823))

(assert (= (and b!7814184 ((_ is Star!20917) (regOne!42347 (regOne!42346 r2!6144)))) b!7814824))

(assert (= (and b!7814184 ((_ is Union!20917) (regOne!42347 (regOne!42346 r2!6144)))) b!7814825))

(declare-fun b!7814829 () Bool)

(declare-fun e!4624881 () Bool)

(declare-fun tp!2303430 () Bool)

(declare-fun tp!2303427 () Bool)

(assert (=> b!7814829 (= e!4624881 (and tp!2303430 tp!2303427))))

(assert (=> b!7814184 (= tp!2303273 e!4624881)))

(declare-fun b!7814826 () Bool)

(assert (=> b!7814826 (= e!4624881 tp_is_empty!52189)))

(declare-fun b!7814828 () Bool)

(declare-fun tp!2303428 () Bool)

(assert (=> b!7814828 (= e!4624881 tp!2303428)))

(declare-fun b!7814827 () Bool)

(declare-fun tp!2303426 () Bool)

(declare-fun tp!2303429 () Bool)

(assert (=> b!7814827 (= e!4624881 (and tp!2303426 tp!2303429))))

(assert (= (and b!7814184 ((_ is ElementMatch!20917) (regTwo!42347 (regOne!42346 r2!6144)))) b!7814826))

(assert (= (and b!7814184 ((_ is Concat!29762) (regTwo!42347 (regOne!42346 r2!6144)))) b!7814827))

(assert (= (and b!7814184 ((_ is Star!20917) (regTwo!42347 (regOne!42346 r2!6144)))) b!7814828))

(assert (= (and b!7814184 ((_ is Union!20917) (regTwo!42347 (regOne!42346 r2!6144)))) b!7814829))

(declare-fun b!7814833 () Bool)

(declare-fun e!4624882 () Bool)

(declare-fun tp!2303435 () Bool)

(declare-fun tp!2303432 () Bool)

(assert (=> b!7814833 (= e!4624882 (and tp!2303435 tp!2303432))))

(assert (=> b!7814168 (= tp!2303256 e!4624882)))

(declare-fun b!7814830 () Bool)

(assert (=> b!7814830 (= e!4624882 tp_is_empty!52189)))

(declare-fun b!7814832 () Bool)

(declare-fun tp!2303433 () Bool)

(assert (=> b!7814832 (= e!4624882 tp!2303433)))

(declare-fun b!7814831 () Bool)

(declare-fun tp!2303431 () Bool)

(declare-fun tp!2303434 () Bool)

(assert (=> b!7814831 (= e!4624882 (and tp!2303431 tp!2303434))))

(assert (= (and b!7814168 ((_ is ElementMatch!20917) (regOne!42347 (regTwo!42346 r1!6206)))) b!7814830))

(assert (= (and b!7814168 ((_ is Concat!29762) (regOne!42347 (regTwo!42346 r1!6206)))) b!7814831))

(assert (= (and b!7814168 ((_ is Star!20917) (regOne!42347 (regTwo!42346 r1!6206)))) b!7814832))

(assert (= (and b!7814168 ((_ is Union!20917) (regOne!42347 (regTwo!42346 r1!6206)))) b!7814833))

(declare-fun b!7814847 () Bool)

(declare-fun e!4624888 () Bool)

(declare-fun tp!2303440 () Bool)

(declare-fun tp!2303437 () Bool)

(assert (=> b!7814847 (= e!4624888 (and tp!2303440 tp!2303437))))

(assert (=> b!7814168 (= tp!2303253 e!4624888)))

(declare-fun b!7814844 () Bool)

(assert (=> b!7814844 (= e!4624888 tp_is_empty!52189)))

(declare-fun b!7814846 () Bool)

(declare-fun tp!2303438 () Bool)

(assert (=> b!7814846 (= e!4624888 tp!2303438)))

(declare-fun b!7814845 () Bool)

(declare-fun tp!2303436 () Bool)

(declare-fun tp!2303439 () Bool)

(assert (=> b!7814845 (= e!4624888 (and tp!2303436 tp!2303439))))

(assert (= (and b!7814168 ((_ is ElementMatch!20917) (regTwo!42347 (regTwo!42346 r1!6206)))) b!7814844))

(assert (= (and b!7814168 ((_ is Concat!29762) (regTwo!42347 (regTwo!42346 r1!6206)))) b!7814845))

(assert (= (and b!7814168 ((_ is Star!20917) (regTwo!42347 (regTwo!42346 r1!6206)))) b!7814846))

(assert (= (and b!7814168 ((_ is Union!20917) (regTwo!42347 (regTwo!42346 r1!6206)))) b!7814847))

(declare-fun b!7814851 () Bool)

(declare-fun e!4624889 () Bool)

(declare-fun tp!2303445 () Bool)

(declare-fun tp!2303442 () Bool)

(assert (=> b!7814851 (= e!4624889 (and tp!2303445 tp!2303442))))

(assert (=> b!7814176 (= tp!2303266 e!4624889)))

(declare-fun b!7814848 () Bool)

(assert (=> b!7814848 (= e!4624889 tp_is_empty!52189)))

(declare-fun b!7814850 () Bool)

(declare-fun tp!2303443 () Bool)

(assert (=> b!7814850 (= e!4624889 tp!2303443)))

(declare-fun b!7814849 () Bool)

(declare-fun tp!2303441 () Bool)

(declare-fun tp!2303444 () Bool)

(assert (=> b!7814849 (= e!4624889 (and tp!2303441 tp!2303444))))

(assert (= (and b!7814176 ((_ is ElementMatch!20917) (regOne!42347 (regOne!42347 r1!6206)))) b!7814848))

(assert (= (and b!7814176 ((_ is Concat!29762) (regOne!42347 (regOne!42347 r1!6206)))) b!7814849))

(assert (= (and b!7814176 ((_ is Star!20917) (regOne!42347 (regOne!42347 r1!6206)))) b!7814850))

(assert (= (and b!7814176 ((_ is Union!20917) (regOne!42347 (regOne!42347 r1!6206)))) b!7814851))

(declare-fun b!7814855 () Bool)

(declare-fun e!4624890 () Bool)

(declare-fun tp!2303450 () Bool)

(declare-fun tp!2303447 () Bool)

(assert (=> b!7814855 (= e!4624890 (and tp!2303450 tp!2303447))))

(assert (=> b!7814176 (= tp!2303263 e!4624890)))

(declare-fun b!7814852 () Bool)

(assert (=> b!7814852 (= e!4624890 tp_is_empty!52189)))

(declare-fun b!7814854 () Bool)

(declare-fun tp!2303448 () Bool)

(assert (=> b!7814854 (= e!4624890 tp!2303448)))

(declare-fun b!7814853 () Bool)

(declare-fun tp!2303446 () Bool)

(declare-fun tp!2303449 () Bool)

(assert (=> b!7814853 (= e!4624890 (and tp!2303446 tp!2303449))))

(assert (= (and b!7814176 ((_ is ElementMatch!20917) (regTwo!42347 (regOne!42347 r1!6206)))) b!7814852))

(assert (= (and b!7814176 ((_ is Concat!29762) (regTwo!42347 (regOne!42347 r1!6206)))) b!7814853))

(assert (= (and b!7814176 ((_ is Star!20917) (regTwo!42347 (regOne!42347 r1!6206)))) b!7814854))

(assert (= (and b!7814176 ((_ is Union!20917) (regTwo!42347 (regOne!42347 r1!6206)))) b!7814855))

(declare-fun b!7814859 () Bool)

(declare-fun e!4624891 () Bool)

(declare-fun tp!2303455 () Bool)

(declare-fun tp!2303452 () Bool)

(assert (=> b!7814859 (= e!4624891 (and tp!2303455 tp!2303452))))

(assert (=> b!7814195 (= tp!2303289 e!4624891)))

(declare-fun b!7814856 () Bool)

(assert (=> b!7814856 (= e!4624891 tp_is_empty!52189)))

(declare-fun b!7814858 () Bool)

(declare-fun tp!2303453 () Bool)

(assert (=> b!7814858 (= e!4624891 tp!2303453)))

(declare-fun b!7814857 () Bool)

(declare-fun tp!2303451 () Bool)

(declare-fun tp!2303454 () Bool)

(assert (=> b!7814857 (= e!4624891 (and tp!2303451 tp!2303454))))

(assert (= (and b!7814195 ((_ is ElementMatch!20917) (reg!21246 (regOne!42347 r2!6144)))) b!7814856))

(assert (= (and b!7814195 ((_ is Concat!29762) (reg!21246 (regOne!42347 r2!6144)))) b!7814857))

(assert (= (and b!7814195 ((_ is Star!20917) (reg!21246 (regOne!42347 r2!6144)))) b!7814858))

(assert (= (and b!7814195 ((_ is Union!20917) (reg!21246 (regOne!42347 r2!6144)))) b!7814859))

(declare-fun b!7814863 () Bool)

(declare-fun e!4624892 () Bool)

(declare-fun tp!2303460 () Bool)

(declare-fun tp!2303457 () Bool)

(assert (=> b!7814863 (= e!4624892 (and tp!2303460 tp!2303457))))

(assert (=> b!7814194 (= tp!2303287 e!4624892)))

(declare-fun b!7814860 () Bool)

(assert (=> b!7814860 (= e!4624892 tp_is_empty!52189)))

(declare-fun b!7814862 () Bool)

(declare-fun tp!2303458 () Bool)

(assert (=> b!7814862 (= e!4624892 tp!2303458)))

(declare-fun b!7814861 () Bool)

(declare-fun tp!2303456 () Bool)

(declare-fun tp!2303459 () Bool)

(assert (=> b!7814861 (= e!4624892 (and tp!2303456 tp!2303459))))

(assert (= (and b!7814194 ((_ is ElementMatch!20917) (regOne!42346 (regOne!42347 r2!6144)))) b!7814860))

(assert (= (and b!7814194 ((_ is Concat!29762) (regOne!42346 (regOne!42347 r2!6144)))) b!7814861))

(assert (= (and b!7814194 ((_ is Star!20917) (regOne!42346 (regOne!42347 r2!6144)))) b!7814862))

(assert (= (and b!7814194 ((_ is Union!20917) (regOne!42346 (regOne!42347 r2!6144)))) b!7814863))

(declare-fun b!7814876 () Bool)

(declare-fun e!4624900 () Bool)

(declare-fun tp!2303465 () Bool)

(declare-fun tp!2303462 () Bool)

(assert (=> b!7814876 (= e!4624900 (and tp!2303465 tp!2303462))))

(assert (=> b!7814194 (= tp!2303290 e!4624900)))

(declare-fun b!7814873 () Bool)

(assert (=> b!7814873 (= e!4624900 tp_is_empty!52189)))

(declare-fun b!7814875 () Bool)

(declare-fun tp!2303463 () Bool)

(assert (=> b!7814875 (= e!4624900 tp!2303463)))

(declare-fun b!7814874 () Bool)

(declare-fun tp!2303461 () Bool)

(declare-fun tp!2303464 () Bool)

(assert (=> b!7814874 (= e!4624900 (and tp!2303461 tp!2303464))))

(assert (= (and b!7814194 ((_ is ElementMatch!20917) (regTwo!42346 (regOne!42347 r2!6144)))) b!7814873))

(assert (= (and b!7814194 ((_ is Concat!29762) (regTwo!42346 (regOne!42347 r2!6144)))) b!7814874))

(assert (= (and b!7814194 ((_ is Star!20917) (regTwo!42346 (regOne!42347 r2!6144)))) b!7814875))

(assert (= (and b!7814194 ((_ is Union!20917) (regTwo!42346 (regOne!42347 r2!6144)))) b!7814876))

(declare-fun b!7814880 () Bool)

(declare-fun e!4624901 () Bool)

(declare-fun tp!2303470 () Bool)

(declare-fun tp!2303467 () Bool)

(assert (=> b!7814880 (= e!4624901 (and tp!2303470 tp!2303467))))

(assert (=> b!7814187 (= tp!2303279 e!4624901)))

(declare-fun b!7814877 () Bool)

(assert (=> b!7814877 (= e!4624901 tp_is_empty!52189)))

(declare-fun b!7814879 () Bool)

(declare-fun tp!2303468 () Bool)

(assert (=> b!7814879 (= e!4624901 tp!2303468)))

(declare-fun b!7814878 () Bool)

(declare-fun tp!2303466 () Bool)

(declare-fun tp!2303469 () Bool)

(assert (=> b!7814878 (= e!4624901 (and tp!2303466 tp!2303469))))

(assert (= (and b!7814187 ((_ is ElementMatch!20917) (reg!21246 (regTwo!42346 r2!6144)))) b!7814877))

(assert (= (and b!7814187 ((_ is Concat!29762) (reg!21246 (regTwo!42346 r2!6144)))) b!7814878))

(assert (= (and b!7814187 ((_ is Star!20917) (reg!21246 (regTwo!42346 r2!6144)))) b!7814879))

(assert (= (and b!7814187 ((_ is Union!20917) (reg!21246 (regTwo!42346 r2!6144)))) b!7814880))

(declare-fun b!7814884 () Bool)

(declare-fun e!4624902 () Bool)

(declare-fun tp!2303475 () Bool)

(declare-fun tp!2303472 () Bool)

(assert (=> b!7814884 (= e!4624902 (and tp!2303475 tp!2303472))))

(assert (=> b!7814196 (= tp!2303291 e!4624902)))

(declare-fun b!7814881 () Bool)

(assert (=> b!7814881 (= e!4624902 tp_is_empty!52189)))

(declare-fun b!7814883 () Bool)

(declare-fun tp!2303473 () Bool)

(assert (=> b!7814883 (= e!4624902 tp!2303473)))

(declare-fun b!7814882 () Bool)

(declare-fun tp!2303471 () Bool)

(declare-fun tp!2303474 () Bool)

(assert (=> b!7814882 (= e!4624902 (and tp!2303471 tp!2303474))))

(assert (= (and b!7814196 ((_ is ElementMatch!20917) (regOne!42347 (regOne!42347 r2!6144)))) b!7814881))

(assert (= (and b!7814196 ((_ is Concat!29762) (regOne!42347 (regOne!42347 r2!6144)))) b!7814882))

(assert (= (and b!7814196 ((_ is Star!20917) (regOne!42347 (regOne!42347 r2!6144)))) b!7814883))

(assert (= (and b!7814196 ((_ is Union!20917) (regOne!42347 (regOne!42347 r2!6144)))) b!7814884))

(declare-fun b!7814888 () Bool)

(declare-fun e!4624903 () Bool)

(declare-fun tp!2303480 () Bool)

(declare-fun tp!2303477 () Bool)

(assert (=> b!7814888 (= e!4624903 (and tp!2303480 tp!2303477))))

(assert (=> b!7814196 (= tp!2303288 e!4624903)))

(declare-fun b!7814885 () Bool)

(assert (=> b!7814885 (= e!4624903 tp_is_empty!52189)))

(declare-fun b!7814887 () Bool)

(declare-fun tp!2303478 () Bool)

(assert (=> b!7814887 (= e!4624903 tp!2303478)))

(declare-fun b!7814886 () Bool)

(declare-fun tp!2303476 () Bool)

(declare-fun tp!2303479 () Bool)

(assert (=> b!7814886 (= e!4624903 (and tp!2303476 tp!2303479))))

(assert (= (and b!7814196 ((_ is ElementMatch!20917) (regTwo!42347 (regOne!42347 r2!6144)))) b!7814885))

(assert (= (and b!7814196 ((_ is Concat!29762) (regTwo!42347 (regOne!42347 r2!6144)))) b!7814886))

(assert (= (and b!7814196 ((_ is Star!20917) (regTwo!42347 (regOne!42347 r2!6144)))) b!7814887))

(assert (= (and b!7814196 ((_ is Union!20917) (regTwo!42347 (regOne!42347 r2!6144)))) b!7814888))

(declare-fun b!7814892 () Bool)

(declare-fun e!4624904 () Bool)

(declare-fun tp!2303485 () Bool)

(declare-fun tp!2303482 () Bool)

(assert (=> b!7814892 (= e!4624904 (and tp!2303485 tp!2303482))))

(assert (=> b!7814186 (= tp!2303277 e!4624904)))

(declare-fun b!7814889 () Bool)

(assert (=> b!7814889 (= e!4624904 tp_is_empty!52189)))

(declare-fun b!7814891 () Bool)

(declare-fun tp!2303483 () Bool)

(assert (=> b!7814891 (= e!4624904 tp!2303483)))

(declare-fun b!7814890 () Bool)

(declare-fun tp!2303481 () Bool)

(declare-fun tp!2303484 () Bool)

(assert (=> b!7814890 (= e!4624904 (and tp!2303481 tp!2303484))))

(assert (= (and b!7814186 ((_ is ElementMatch!20917) (regOne!42346 (regTwo!42346 r2!6144)))) b!7814889))

(assert (= (and b!7814186 ((_ is Concat!29762) (regOne!42346 (regTwo!42346 r2!6144)))) b!7814890))

(assert (= (and b!7814186 ((_ is Star!20917) (regOne!42346 (regTwo!42346 r2!6144)))) b!7814891))

(assert (= (and b!7814186 ((_ is Union!20917) (regOne!42346 (regTwo!42346 r2!6144)))) b!7814892))

(declare-fun b!7814906 () Bool)

(declare-fun e!4624910 () Bool)

(declare-fun tp!2303490 () Bool)

(declare-fun tp!2303487 () Bool)

(assert (=> b!7814906 (= e!4624910 (and tp!2303490 tp!2303487))))

(assert (=> b!7814186 (= tp!2303280 e!4624910)))

(declare-fun b!7814903 () Bool)

(assert (=> b!7814903 (= e!4624910 tp_is_empty!52189)))

(declare-fun b!7814905 () Bool)

(declare-fun tp!2303488 () Bool)

(assert (=> b!7814905 (= e!4624910 tp!2303488)))

(declare-fun b!7814904 () Bool)

(declare-fun tp!2303486 () Bool)

(declare-fun tp!2303489 () Bool)

(assert (=> b!7814904 (= e!4624910 (and tp!2303486 tp!2303489))))

(assert (= (and b!7814186 ((_ is ElementMatch!20917) (regTwo!42346 (regTwo!42346 r2!6144)))) b!7814903))

(assert (= (and b!7814186 ((_ is Concat!29762) (regTwo!42346 (regTwo!42346 r2!6144)))) b!7814904))

(assert (= (and b!7814186 ((_ is Star!20917) (regTwo!42346 (regTwo!42346 r2!6144)))) b!7814905))

(assert (= (and b!7814186 ((_ is Union!20917) (regTwo!42346 (regTwo!42346 r2!6144)))) b!7814906))

(declare-fun b!7814910 () Bool)

(declare-fun e!4624911 () Bool)

(declare-fun tp!2303495 () Bool)

(declare-fun tp!2303492 () Bool)

(assert (=> b!7814910 (= e!4624911 (and tp!2303495 tp!2303492))))

(assert (=> b!7814179 (= tp!2303269 e!4624911)))

(declare-fun b!7814907 () Bool)

(assert (=> b!7814907 (= e!4624911 tp_is_empty!52189)))

(declare-fun b!7814909 () Bool)

(declare-fun tp!2303493 () Bool)

(assert (=> b!7814909 (= e!4624911 tp!2303493)))

(declare-fun b!7814908 () Bool)

(declare-fun tp!2303491 () Bool)

(declare-fun tp!2303494 () Bool)

(assert (=> b!7814908 (= e!4624911 (and tp!2303491 tp!2303494))))

(assert (= (and b!7814179 ((_ is ElementMatch!20917) (reg!21246 (regTwo!42347 r1!6206)))) b!7814907))

(assert (= (and b!7814179 ((_ is Concat!29762) (reg!21246 (regTwo!42347 r1!6206)))) b!7814908))

(assert (= (and b!7814179 ((_ is Star!20917) (reg!21246 (regTwo!42347 r1!6206)))) b!7814909))

(assert (= (and b!7814179 ((_ is Union!20917) (reg!21246 (regTwo!42347 r1!6206)))) b!7814910))

(declare-fun b!7814914 () Bool)

(declare-fun e!4624912 () Bool)

(declare-fun tp!2303500 () Bool)

(declare-fun tp!2303497 () Bool)

(assert (=> b!7814914 (= e!4624912 (and tp!2303500 tp!2303497))))

(assert (=> b!7814188 (= tp!2303281 e!4624912)))

(declare-fun b!7814911 () Bool)

(assert (=> b!7814911 (= e!4624912 tp_is_empty!52189)))

(declare-fun b!7814913 () Bool)

(declare-fun tp!2303498 () Bool)

(assert (=> b!7814913 (= e!4624912 tp!2303498)))

(declare-fun b!7814912 () Bool)

(declare-fun tp!2303496 () Bool)

(declare-fun tp!2303499 () Bool)

(assert (=> b!7814912 (= e!4624912 (and tp!2303496 tp!2303499))))

(assert (= (and b!7814188 ((_ is ElementMatch!20917) (regOne!42347 (regTwo!42346 r2!6144)))) b!7814911))

(assert (= (and b!7814188 ((_ is Concat!29762) (regOne!42347 (regTwo!42346 r2!6144)))) b!7814912))

(assert (= (and b!7814188 ((_ is Star!20917) (regOne!42347 (regTwo!42346 r2!6144)))) b!7814913))

(assert (= (and b!7814188 ((_ is Union!20917) (regOne!42347 (regTwo!42346 r2!6144)))) b!7814914))

(declare-fun b!7814918 () Bool)

(declare-fun e!4624913 () Bool)

(declare-fun tp!2303505 () Bool)

(declare-fun tp!2303502 () Bool)

(assert (=> b!7814918 (= e!4624913 (and tp!2303505 tp!2303502))))

(assert (=> b!7814188 (= tp!2303278 e!4624913)))

(declare-fun b!7814915 () Bool)

(assert (=> b!7814915 (= e!4624913 tp_is_empty!52189)))

(declare-fun b!7814917 () Bool)

(declare-fun tp!2303503 () Bool)

(assert (=> b!7814917 (= e!4624913 tp!2303503)))

(declare-fun b!7814916 () Bool)

(declare-fun tp!2303501 () Bool)

(declare-fun tp!2303504 () Bool)

(assert (=> b!7814916 (= e!4624913 (and tp!2303501 tp!2303504))))

(assert (= (and b!7814188 ((_ is ElementMatch!20917) (regTwo!42347 (regTwo!42346 r2!6144)))) b!7814915))

(assert (= (and b!7814188 ((_ is Concat!29762) (regTwo!42347 (regTwo!42346 r2!6144)))) b!7814916))

(assert (= (and b!7814188 ((_ is Star!20917) (regTwo!42347 (regTwo!42346 r2!6144)))) b!7814917))

(assert (= (and b!7814188 ((_ is Union!20917) (regTwo!42347 (regTwo!42346 r2!6144)))) b!7814918))

(declare-fun b!7814922 () Bool)

(declare-fun e!4624914 () Bool)

(declare-fun tp!2303510 () Bool)

(declare-fun tp!2303507 () Bool)

(assert (=> b!7814922 (= e!4624914 (and tp!2303510 tp!2303507))))

(assert (=> b!7814178 (= tp!2303267 e!4624914)))

(declare-fun b!7814919 () Bool)

(assert (=> b!7814919 (= e!4624914 tp_is_empty!52189)))

(declare-fun b!7814921 () Bool)

(declare-fun tp!2303508 () Bool)

(assert (=> b!7814921 (= e!4624914 tp!2303508)))

(declare-fun b!7814920 () Bool)

(declare-fun tp!2303506 () Bool)

(declare-fun tp!2303509 () Bool)

(assert (=> b!7814920 (= e!4624914 (and tp!2303506 tp!2303509))))

(assert (= (and b!7814178 ((_ is ElementMatch!20917) (regOne!42346 (regTwo!42347 r1!6206)))) b!7814919))

(assert (= (and b!7814178 ((_ is Concat!29762) (regOne!42346 (regTwo!42347 r1!6206)))) b!7814920))

(assert (= (and b!7814178 ((_ is Star!20917) (regOne!42346 (regTwo!42347 r1!6206)))) b!7814921))

(assert (= (and b!7814178 ((_ is Union!20917) (regOne!42346 (regTwo!42347 r1!6206)))) b!7814922))

(declare-fun b!7814935 () Bool)

(declare-fun e!4624922 () Bool)

(declare-fun tp!2303515 () Bool)

(declare-fun tp!2303512 () Bool)

(assert (=> b!7814935 (= e!4624922 (and tp!2303515 tp!2303512))))

(assert (=> b!7814178 (= tp!2303270 e!4624922)))

(declare-fun b!7814932 () Bool)

(assert (=> b!7814932 (= e!4624922 tp_is_empty!52189)))

(declare-fun b!7814934 () Bool)

(declare-fun tp!2303513 () Bool)

(assert (=> b!7814934 (= e!4624922 tp!2303513)))

(declare-fun b!7814933 () Bool)

(declare-fun tp!2303511 () Bool)

(declare-fun tp!2303514 () Bool)

(assert (=> b!7814933 (= e!4624922 (and tp!2303511 tp!2303514))))

(assert (= (and b!7814178 ((_ is ElementMatch!20917) (regTwo!42346 (regTwo!42347 r1!6206)))) b!7814932))

(assert (= (and b!7814178 ((_ is Concat!29762) (regTwo!42346 (regTwo!42347 r1!6206)))) b!7814933))

(assert (= (and b!7814178 ((_ is Star!20917) (regTwo!42346 (regTwo!42347 r1!6206)))) b!7814934))

(assert (= (and b!7814178 ((_ is Union!20917) (regTwo!42346 (regTwo!42347 r1!6206)))) b!7814935))

(declare-fun b!7814939 () Bool)

(declare-fun e!4624923 () Bool)

(declare-fun tp!2303520 () Bool)

(declare-fun tp!2303517 () Bool)

(assert (=> b!7814939 (= e!4624923 (and tp!2303520 tp!2303517))))

(assert (=> b!7814171 (= tp!2303259 e!4624923)))

(declare-fun b!7814936 () Bool)

(assert (=> b!7814936 (= e!4624923 tp_is_empty!52189)))

(declare-fun b!7814938 () Bool)

(declare-fun tp!2303518 () Bool)

(assert (=> b!7814938 (= e!4624923 tp!2303518)))

(declare-fun b!7814937 () Bool)

(declare-fun tp!2303516 () Bool)

(declare-fun tp!2303519 () Bool)

(assert (=> b!7814937 (= e!4624923 (and tp!2303516 tp!2303519))))

(assert (= (and b!7814171 ((_ is ElementMatch!20917) (reg!21246 (reg!21246 r1!6206)))) b!7814936))

(assert (= (and b!7814171 ((_ is Concat!29762) (reg!21246 (reg!21246 r1!6206)))) b!7814937))

(assert (= (and b!7814171 ((_ is Star!20917) (reg!21246 (reg!21246 r1!6206)))) b!7814938))

(assert (= (and b!7814171 ((_ is Union!20917) (reg!21246 (reg!21246 r1!6206)))) b!7814939))

(declare-fun b!7814943 () Bool)

(declare-fun e!4624924 () Bool)

(declare-fun tp!2303525 () Bool)

(declare-fun tp!2303522 () Bool)

(assert (=> b!7814943 (= e!4624924 (and tp!2303525 tp!2303522))))

(assert (=> b!7814180 (= tp!2303271 e!4624924)))

(declare-fun b!7814940 () Bool)

(assert (=> b!7814940 (= e!4624924 tp_is_empty!52189)))

(declare-fun b!7814942 () Bool)

(declare-fun tp!2303523 () Bool)

(assert (=> b!7814942 (= e!4624924 tp!2303523)))

(declare-fun b!7814941 () Bool)

(declare-fun tp!2303521 () Bool)

(declare-fun tp!2303524 () Bool)

(assert (=> b!7814941 (= e!4624924 (and tp!2303521 tp!2303524))))

(assert (= (and b!7814180 ((_ is ElementMatch!20917) (regOne!42347 (regTwo!42347 r1!6206)))) b!7814940))

(assert (= (and b!7814180 ((_ is Concat!29762) (regOne!42347 (regTwo!42347 r1!6206)))) b!7814941))

(assert (= (and b!7814180 ((_ is Star!20917) (regOne!42347 (regTwo!42347 r1!6206)))) b!7814942))

(assert (= (and b!7814180 ((_ is Union!20917) (regOne!42347 (regTwo!42347 r1!6206)))) b!7814943))

(declare-fun b!7814947 () Bool)

(declare-fun e!4624925 () Bool)

(declare-fun tp!2303530 () Bool)

(declare-fun tp!2303527 () Bool)

(assert (=> b!7814947 (= e!4624925 (and tp!2303530 tp!2303527))))

(assert (=> b!7814180 (= tp!2303268 e!4624925)))

(declare-fun b!7814944 () Bool)

(assert (=> b!7814944 (= e!4624925 tp_is_empty!52189)))

(declare-fun b!7814946 () Bool)

(declare-fun tp!2303528 () Bool)

(assert (=> b!7814946 (= e!4624925 tp!2303528)))

(declare-fun b!7814945 () Bool)

(declare-fun tp!2303526 () Bool)

(declare-fun tp!2303529 () Bool)

(assert (=> b!7814945 (= e!4624925 (and tp!2303526 tp!2303529))))

(assert (= (and b!7814180 ((_ is ElementMatch!20917) (regTwo!42347 (regTwo!42347 r1!6206)))) b!7814944))

(assert (= (and b!7814180 ((_ is Concat!29762) (regTwo!42347 (regTwo!42347 r1!6206)))) b!7814945))

(assert (= (and b!7814180 ((_ is Star!20917) (regTwo!42347 (regTwo!42347 r1!6206)))) b!7814946))

(assert (= (and b!7814180 ((_ is Union!20917) (regTwo!42347 (regTwo!42347 r1!6206)))) b!7814947))

(declare-fun b!7814965 () Bool)

(declare-fun e!4624933 () Bool)

(declare-fun tp!2303535 () Bool)

(declare-fun tp!2303532 () Bool)

(assert (=> b!7814965 (= e!4624933 (and tp!2303535 tp!2303532))))

(assert (=> b!7814162 (= tp!2303247 e!4624933)))

(declare-fun b!7814962 () Bool)

(assert (=> b!7814962 (= e!4624933 tp_is_empty!52189)))

(declare-fun b!7814964 () Bool)

(declare-fun tp!2303533 () Bool)

(assert (=> b!7814964 (= e!4624933 tp!2303533)))

(declare-fun b!7814963 () Bool)

(declare-fun tp!2303531 () Bool)

(declare-fun tp!2303534 () Bool)

(assert (=> b!7814963 (= e!4624933 (and tp!2303531 tp!2303534))))

(assert (= (and b!7814162 ((_ is ElementMatch!20917) (regOne!42346 (regOne!42346 r1!6206)))) b!7814962))

(assert (= (and b!7814162 ((_ is Concat!29762) (regOne!42346 (regOne!42346 r1!6206)))) b!7814963))

(assert (= (and b!7814162 ((_ is Star!20917) (regOne!42346 (regOne!42346 r1!6206)))) b!7814964))

(assert (= (and b!7814162 ((_ is Union!20917) (regOne!42346 (regOne!42346 r1!6206)))) b!7814965))

(declare-fun b!7814969 () Bool)

(declare-fun e!4624934 () Bool)

(declare-fun tp!2303540 () Bool)

(declare-fun tp!2303537 () Bool)

(assert (=> b!7814969 (= e!4624934 (and tp!2303540 tp!2303537))))

(assert (=> b!7814162 (= tp!2303250 e!4624934)))

(declare-fun b!7814966 () Bool)

(assert (=> b!7814966 (= e!4624934 tp_is_empty!52189)))

(declare-fun b!7814968 () Bool)

(declare-fun tp!2303538 () Bool)

(assert (=> b!7814968 (= e!4624934 tp!2303538)))

(declare-fun b!7814967 () Bool)

(declare-fun tp!2303536 () Bool)

(declare-fun tp!2303539 () Bool)

(assert (=> b!7814967 (= e!4624934 (and tp!2303536 tp!2303539))))

(assert (= (and b!7814162 ((_ is ElementMatch!20917) (regTwo!42346 (regOne!42346 r1!6206)))) b!7814966))

(assert (= (and b!7814162 ((_ is Concat!29762) (regTwo!42346 (regOne!42346 r1!6206)))) b!7814967))

(assert (= (and b!7814162 ((_ is Star!20917) (regTwo!42346 (regOne!42346 r1!6206)))) b!7814968))

(assert (= (and b!7814162 ((_ is Union!20917) (regTwo!42346 (regOne!42346 r1!6206)))) b!7814969))

(declare-fun b!7814973 () Bool)

(declare-fun e!4624935 () Bool)

(declare-fun tp!2303545 () Bool)

(declare-fun tp!2303542 () Bool)

(assert (=> b!7814973 (= e!4624935 (and tp!2303545 tp!2303542))))

(assert (=> b!7814170 (= tp!2303257 e!4624935)))

(declare-fun b!7814970 () Bool)

(assert (=> b!7814970 (= e!4624935 tp_is_empty!52189)))

(declare-fun b!7814972 () Bool)

(declare-fun tp!2303543 () Bool)

(assert (=> b!7814972 (= e!4624935 tp!2303543)))

(declare-fun b!7814971 () Bool)

(declare-fun tp!2303541 () Bool)

(declare-fun tp!2303544 () Bool)

(assert (=> b!7814971 (= e!4624935 (and tp!2303541 tp!2303544))))

(assert (= (and b!7814170 ((_ is ElementMatch!20917) (regOne!42346 (reg!21246 r1!6206)))) b!7814970))

(assert (= (and b!7814170 ((_ is Concat!29762) (regOne!42346 (reg!21246 r1!6206)))) b!7814971))

(assert (= (and b!7814170 ((_ is Star!20917) (regOne!42346 (reg!21246 r1!6206)))) b!7814972))

(assert (= (and b!7814170 ((_ is Union!20917) (regOne!42346 (reg!21246 r1!6206)))) b!7814973))

(declare-fun b!7814977 () Bool)

(declare-fun e!4624936 () Bool)

(declare-fun tp!2303550 () Bool)

(declare-fun tp!2303547 () Bool)

(assert (=> b!7814977 (= e!4624936 (and tp!2303550 tp!2303547))))

(assert (=> b!7814170 (= tp!2303260 e!4624936)))

(declare-fun b!7814974 () Bool)

(assert (=> b!7814974 (= e!4624936 tp_is_empty!52189)))

(declare-fun b!7814976 () Bool)

(declare-fun tp!2303548 () Bool)

(assert (=> b!7814976 (= e!4624936 tp!2303548)))

(declare-fun b!7814975 () Bool)

(declare-fun tp!2303546 () Bool)

(declare-fun tp!2303549 () Bool)

(assert (=> b!7814975 (= e!4624936 (and tp!2303546 tp!2303549))))

(assert (= (and b!7814170 ((_ is ElementMatch!20917) (regTwo!42346 (reg!21246 r1!6206)))) b!7814974))

(assert (= (and b!7814170 ((_ is Concat!29762) (regTwo!42346 (reg!21246 r1!6206)))) b!7814975))

(assert (= (and b!7814170 ((_ is Star!20917) (regTwo!42346 (reg!21246 r1!6206)))) b!7814976))

(assert (= (and b!7814170 ((_ is Union!20917) (regTwo!42346 (reg!21246 r1!6206)))) b!7814977))

(check-sat (not b!7814451) (not bm!725080) (not b!7814523) (not b!7814525) (not d!2349056) (not b!7814720) (not b!7814863) (not b!7814943) (not d!2349180) (not b!7814892) (not b!7814397) (not b!7814723) (not bm!725002) (not b!7814745) (not b!7814854) (not b!7814566) (not b!7814910) (not b!7814816) (not d!2349082) (not b!7814861) (not b!7814833) (not bm!725058) (not b!7814209) (not b!7814748) (not b!7814977) (not bm!725024) (not bm!724975) (not d!2349100) (not b!7814803) (not d!2349150) (not b!7814821) (not b!7814874) (not b!7814850) (not b!7814921) (not b!7814647) (not d!2349186) (not b!7814698) (not b!7814728) (not b!7814812) (not b!7814514) (not b!7814976) (not bm!725063) (not b!7814517) (not b!7814729) (not b!7814845) (not b!7814226) (not d!2349092) (not bm!725038) (not b!7814882) (not b!7814733) (not d!2349204) (not bm!725069) (not b!7814855) (not b!7814777) (not b!7814964) (not d!2349160) (not b!7814754) (not b!7814699) (not b!7814645) (not b!7814905) (not b!7814913) (not b!7814750) (not bm!725031) (not b!7814724) (not b!7814756) (not b!7814787) (not bm!724973) (not b!7814916) (not d!2349170) (not b!7814707) (not bm!725066) (not b!7814753) (not b!7814695) (not bm!725057) (not b!7814749) (not b!7814694) (not b!7814690) (not b!7814785) (not b!7814908) (not b!7814275) (not b!7814786) (not b!7814886) (not b!7814719) (not b!7814675) (not b!7814967) (not b!7814649) (not b!7814702) (not b!7814223) (not b!7814442) (not b!7814935) (not b!7814773) (not b!7814746) (not b!7814820) (not b!7814703) (not b!7814846) (not b!7814862) (not bm!725011) tp_is_empty!52189 (not d!2349086) (not b!7814804) (not b!7814972) (not b!7814811) (not bm!725071) (not bm!724979) (not bm!724959) (not b!7814295) (not b!7814808) (not d!2349120) (not b!7814906) (not b!7814721) (not bm!725018) (not b!7814880) (not b!7814487) (not b!7814664) (not b!7814917) (not b!7814849) (not b!7814973) (not b!7814382) (not b!7814727) (not d!2349182) (not b!7814827) (not b!7814294) (not b!7814731) (not b!7814937) (not d!2349066) (not bm!724987) (not b!7814290) (not b!7814933) (not b!7814851) (not b!7814890) (not b!7814228) (not b!7814338) (not b!7814706) (not b!7814969) (not bm!724964) (not b!7814859) (not bm!724954) (not b!7814583) (not b!7814941) (not b!7814449) (not d!2349144) (not b!7814704) (not bm!725013) (not b!7814544) (not b!7814283) (not b!7814700) (not bm!724967) (not b!7814257) (not b!7814879) (not bm!725055) (not b!7814689) (not b!7814289) (not bm!725007) (not bm!725068) (not b!7814887) (not b!7814947) (not b!7814262) (not b!7814809) (not b!7814888) (not b!7814644) (not b!7814939) (not d!2349074) (not b!7814884) (not bm!724957) (not b!7814778) (not b!7814217) (not b!7814641) (not b!7814853) (not d!2349138) (not bm!724984) (not d!2349134) (not b!7814253) (not b!7814677) (not bm!724960) (not b!7814744) (not bm!725079) (not b!7814261) (not bm!724988) (not b!7814904) (not b!7814693) (not b!7814805) (not b!7814520) (not b!7814783) (not d!2349076) (not b!7814697) (not b!7814691) (not b!7814819) (not b!7814378) (not bm!725000) (not b!7814942) (not bm!724968) (not b!7814259) (not bm!725033) (not bm!724972) (not b!7814775) (not b!7814774) (not b!7814934) (not b!7814829) (not b!7814832) (not b!7814620) (not b!7814824) (not bm!725008) (not d!2349198) (not bm!725062) (not b!7814909) (not b!7814676) (not b!7814725) (not b!7814770) (not b!7814708) (not bm!724965) (not b!7814771) (not b!7814242) (not bm!725025) (not bm!725040) (not d!2349128) (not b!7814883) (not b!7814815) (not bm!724962) (not b!7814963) (not b!7814445) (not b!7814575) (not b!7814922) (not b!7814968) (not b!7814769) (not b!7814448) (not d!2349058) (not b!7814914) (not b!7814292) (not bm!725050) (not b!7814918) (not b!7814828) (not bm!725076) (not b!7814638) (not bm!724976) (not d!2349158) (not b!7814224) (not b!7814857) (not d!2349192) (not b!7814823) (not bm!725049) (not d!2349084) (not d!2349094) (not b!7814779) (not b!7814891) (not b!7814831) (not b!7814946) (not b!7814858) (not bm!724980) (not b!7814305) (not b!7814878) (not b!7814945) (not b!7814875) (not b!7814758) (not d!2349152) (not bm!725060) (not b!7814817) (not b!7814752) (not b!7814782) (not b!7814781) (not b!7814229) (not b!7814256) (not b!7814825) (not b!7814912) (not bm!724982) (not b!7814732) (not b!7814424) (not b!7814757) (not b!7814318) (not b!7814975) (not b!7814876) (not b!7814521) (not bm!724956) (not b!7814807) (not b!7814920) (not b!7814847) (not d!2349052) (not b!7814813) (not b!7814453) (not b!7814965) (not b!7814286) (not b!7814611) (not b!7814938) (not b!7814464) (not b!7814506) (not bm!725041) (not bm!724970) (not b!7814220) (not d!2349072) (not b!7814250) (not b!7814971))
(check-sat)
