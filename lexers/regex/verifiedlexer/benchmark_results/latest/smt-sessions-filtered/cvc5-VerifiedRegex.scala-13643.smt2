; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731938 () Bool)

(assert start!731938)

(declare-fun b!7580836 () Bool)

(declare-fun e!4512109 () Bool)

(declare-fun tp!2209271 () Bool)

(declare-fun tp!2209275 () Bool)

(assert (=> b!7580836 (= e!4512109 (and tp!2209271 tp!2209275))))

(declare-fun b!7580837 () Bool)

(declare-fun tp_is_empty!50515 () Bool)

(assert (=> b!7580837 (= e!4512109 tp_is_empty!50515)))

(declare-datatypes ((C!40486 0))(
  ( (C!40487 (val!30683 Int)) )
))
(declare-datatypes ((Regex!20080 0))(
  ( (ElementMatch!20080 (c!1398279 C!40486)) (Concat!28925 (regOne!40672 Regex!20080) (regTwo!40672 Regex!20080)) (EmptyExpr!20080) (Star!20080 (reg!20409 Regex!20080)) (EmptyLang!20080) (Union!20080 (regOne!40673 Regex!20080) (regTwo!40673 Regex!20080)) )
))
(declare-fun r!22341 () Regex!20080)

(declare-fun b!7580838 () Bool)

(declare-fun lt!2652579 () Int)

(declare-fun lt!2652581 () Int)

(declare-fun e!4512107 () Bool)

(declare-fun regexDepth!460 (Regex!20080) Int)

(assert (=> b!7580838 (= e!4512107 (< (+ lt!2652581 lt!2652579) (+ (regexDepth!460 r!22341) lt!2652579)))))

(declare-datatypes ((List!72963 0))(
  ( (Nil!72839) (Cons!72839 (h!79287 C!40486) (t!387698 List!72963)) )
))
(declare-fun s!13436 () List!72963)

(declare-fun size!42499 (List!72963) Int)

(assert (=> b!7580838 (= lt!2652579 (size!42499 s!13436))))

(assert (=> b!7580838 (= lt!2652581 (regexDepth!460 (regOne!40673 r!22341)))))

(declare-fun b!7580839 () Bool)

(declare-fun res!3036961 () Bool)

(assert (=> b!7580839 (=> res!3036961 e!4512107)))

(declare-fun lostCause!1856 (Regex!20080) Bool)

(assert (=> b!7580839 (= res!3036961 (not (lostCause!1856 (regOne!40673 r!22341))))))

(declare-fun b!7580840 () Bool)

(declare-fun e!4512106 () Bool)

(assert (=> b!7580840 (= e!4512106 (not e!4512107))))

(declare-fun res!3036959 () Bool)

(assert (=> b!7580840 (=> res!3036959 e!4512107)))

(assert (=> b!7580840 (= res!3036959 (or (is-EmptyLang!20080 r!22341) (is-EmptyExpr!20080 r!22341) (is-ElementMatch!20080 r!22341) (not (is-Union!20080 r!22341))))))

(declare-fun matchR!9672 (Regex!20080 List!72963) Bool)

(declare-fun matchRSpec!4393 (Regex!20080 List!72963) Bool)

(assert (=> b!7580840 (= (matchR!9672 r!22341 s!13436) (matchRSpec!4393 r!22341 s!13436))))

(declare-datatypes ((Unit!167116 0))(
  ( (Unit!167117) )
))
(declare-fun lt!2652580 () Unit!167116)

(declare-fun mainMatchTheorem!4387 (Regex!20080 List!72963) Unit!167116)

(assert (=> b!7580840 (= lt!2652580 (mainMatchTheorem!4387 r!22341 s!13436))))

(declare-fun b!7580841 () Bool)

(declare-fun e!4512108 () Bool)

(declare-fun tp!2209272 () Bool)

(assert (=> b!7580841 (= e!4512108 (and tp_is_empty!50515 tp!2209272))))

(declare-fun res!3036963 () Bool)

(assert (=> start!731938 (=> (not res!3036963) (not e!4512106))))

(declare-fun validRegex!10508 (Regex!20080) Bool)

(assert (=> start!731938 (= res!3036963 (validRegex!10508 r!22341))))

(assert (=> start!731938 e!4512106))

(assert (=> start!731938 e!4512109))

(assert (=> start!731938 e!4512108))

(declare-fun b!7580842 () Bool)

(declare-fun res!3036964 () Bool)

(assert (=> b!7580842 (=> res!3036964 e!4512107)))

(assert (=> b!7580842 (= res!3036964 (not (validRegex!10508 (regOne!40673 r!22341))))))

(declare-fun b!7580843 () Bool)

(declare-fun res!3036960 () Bool)

(assert (=> b!7580843 (=> (not res!3036960) (not e!4512106))))

(declare-fun isEmpty!41512 (List!72963) Bool)

(assert (=> b!7580843 (= res!3036960 (not (isEmpty!41512 s!13436)))))

(declare-fun b!7580844 () Bool)

(declare-fun tp!2209270 () Bool)

(assert (=> b!7580844 (= e!4512109 tp!2209270)))

(declare-fun b!7580845 () Bool)

(declare-fun res!3036962 () Bool)

(assert (=> b!7580845 (=> (not res!3036962) (not e!4512106))))

(assert (=> b!7580845 (= res!3036962 (lostCause!1856 r!22341))))

(declare-fun b!7580846 () Bool)

(declare-fun tp!2209273 () Bool)

(declare-fun tp!2209274 () Bool)

(assert (=> b!7580846 (= e!4512109 (and tp!2209273 tp!2209274))))

(assert (= (and start!731938 res!3036963) b!7580845))

(assert (= (and b!7580845 res!3036962) b!7580843))

(assert (= (and b!7580843 res!3036960) b!7580840))

(assert (= (and b!7580840 (not res!3036959)) b!7580842))

(assert (= (and b!7580842 (not res!3036964)) b!7580839))

(assert (= (and b!7580839 (not res!3036961)) b!7580838))

(assert (= (and start!731938 (is-ElementMatch!20080 r!22341)) b!7580837))

(assert (= (and start!731938 (is-Concat!28925 r!22341)) b!7580846))

(assert (= (and start!731938 (is-Star!20080 r!22341)) b!7580844))

(assert (= (and start!731938 (is-Union!20080 r!22341)) b!7580836))

(assert (= (and start!731938 (is-Cons!72839 s!13436)) b!7580841))

(declare-fun m!8135758 () Bool)

(assert (=> b!7580840 m!8135758))

(declare-fun m!8135760 () Bool)

(assert (=> b!7580840 m!8135760))

(declare-fun m!8135762 () Bool)

(assert (=> b!7580840 m!8135762))

(declare-fun m!8135764 () Bool)

(assert (=> b!7580842 m!8135764))

(declare-fun m!8135766 () Bool)

(assert (=> b!7580838 m!8135766))

(declare-fun m!8135768 () Bool)

(assert (=> b!7580838 m!8135768))

(declare-fun m!8135770 () Bool)

(assert (=> b!7580838 m!8135770))

(declare-fun m!8135772 () Bool)

(assert (=> b!7580843 m!8135772))

(declare-fun m!8135774 () Bool)

(assert (=> start!731938 m!8135774))

(declare-fun m!8135776 () Bool)

(assert (=> b!7580839 m!8135776))

(declare-fun m!8135778 () Bool)

(assert (=> b!7580845 m!8135778))

(push 1)

(assert (not b!7580839))

(assert (not b!7580842))

(assert (not b!7580843))

(assert (not b!7580844))

(assert (not b!7580836))

(assert (not b!7580846))

(assert (not start!731938))

(assert (not b!7580838))

(assert (not b!7580841))

(assert tp_is_empty!50515)

(assert (not b!7580845))

(assert (not b!7580840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2318420 () Bool)

(declare-fun lostCauseFct!509 (Regex!20080) Bool)

(assert (=> d!2318420 (= (lostCause!1856 r!22341) (lostCauseFct!509 r!22341))))

(declare-fun bs!1941045 () Bool)

(assert (= bs!1941045 d!2318420))

(declare-fun m!8135802 () Bool)

(assert (=> bs!1941045 m!8135802))

(assert (=> b!7580845 d!2318420))

(declare-fun b!7580926 () Bool)

(declare-fun e!4512154 () Bool)

(declare-fun nullable!8773 (Regex!20080) Bool)

(assert (=> b!7580926 (= e!4512154 (nullable!8773 r!22341))))

(declare-fun b!7580927 () Bool)

(declare-fun e!4512153 () Bool)

(declare-fun lt!2652593 () Bool)

(declare-fun call!695007 () Bool)

(assert (=> b!7580927 (= e!4512153 (= lt!2652593 call!695007))))

(declare-fun d!2318422 () Bool)

(assert (=> d!2318422 e!4512153))

(declare-fun c!1398291 () Bool)

(assert (=> d!2318422 (= c!1398291 (is-EmptyExpr!20080 r!22341))))

(assert (=> d!2318422 (= lt!2652593 e!4512154)))

(declare-fun c!1398292 () Bool)

(assert (=> d!2318422 (= c!1398292 (isEmpty!41512 s!13436))))

(assert (=> d!2318422 (validRegex!10508 r!22341)))

(assert (=> d!2318422 (= (matchR!9672 r!22341 s!13436) lt!2652593)))

(declare-fun b!7580928 () Bool)

(declare-fun res!3037009 () Bool)

(declare-fun e!4512155 () Bool)

(assert (=> b!7580928 (=> res!3037009 e!4512155)))

(declare-fun e!4512150 () Bool)

(assert (=> b!7580928 (= res!3037009 e!4512150)))

(declare-fun res!3037016 () Bool)

(assert (=> b!7580928 (=> (not res!3037016) (not e!4512150))))

(assert (=> b!7580928 (= res!3037016 lt!2652593)))

(declare-fun b!7580929 () Bool)

(declare-fun res!3037015 () Bool)

(assert (=> b!7580929 (=> (not res!3037015) (not e!4512150))))

(declare-fun tail!15140 (List!72963) List!72963)

(assert (=> b!7580929 (= res!3037015 (isEmpty!41512 (tail!15140 s!13436)))))

(declare-fun b!7580930 () Bool)

(declare-fun res!3037012 () Bool)

(assert (=> b!7580930 (=> res!3037012 e!4512155)))

(assert (=> b!7580930 (= res!3037012 (not (is-ElementMatch!20080 r!22341)))))

(declare-fun e!4512151 () Bool)

(assert (=> b!7580930 (= e!4512151 e!4512155)))

(declare-fun b!7580931 () Bool)

(declare-fun head!15600 (List!72963) C!40486)

(assert (=> b!7580931 (= e!4512150 (= (head!15600 s!13436) (c!1398279 r!22341)))))

(declare-fun b!7580932 () Bool)

(declare-fun res!3037014 () Bool)

(assert (=> b!7580932 (=> (not res!3037014) (not e!4512150))))

(assert (=> b!7580932 (= res!3037014 (not call!695007))))

(declare-fun b!7580933 () Bool)

(assert (=> b!7580933 (= e!4512151 (not lt!2652593))))

(declare-fun b!7580934 () Bool)

(declare-fun e!4512152 () Bool)

(assert (=> b!7580934 (= e!4512155 e!4512152)))

(declare-fun res!3037011 () Bool)

(assert (=> b!7580934 (=> (not res!3037011) (not e!4512152))))

(assert (=> b!7580934 (= res!3037011 (not lt!2652593))))

(declare-fun b!7580935 () Bool)

(declare-fun e!4512156 () Bool)

(assert (=> b!7580935 (= e!4512156 (not (= (head!15600 s!13436) (c!1398279 r!22341))))))

(declare-fun b!7580936 () Bool)

(declare-fun derivativeStep!5800 (Regex!20080 C!40486) Regex!20080)

(assert (=> b!7580936 (= e!4512154 (matchR!9672 (derivativeStep!5800 r!22341 (head!15600 s!13436)) (tail!15140 s!13436)))))

(declare-fun bm!695002 () Bool)

(assert (=> bm!695002 (= call!695007 (isEmpty!41512 s!13436))))

(declare-fun b!7580937 () Bool)

(assert (=> b!7580937 (= e!4512153 e!4512151)))

(declare-fun c!1398293 () Bool)

(assert (=> b!7580937 (= c!1398293 (is-EmptyLang!20080 r!22341))))

(declare-fun b!7580938 () Bool)

(declare-fun res!3037010 () Bool)

(assert (=> b!7580938 (=> res!3037010 e!4512156)))

(assert (=> b!7580938 (= res!3037010 (not (isEmpty!41512 (tail!15140 s!13436))))))

(declare-fun b!7580939 () Bool)

(assert (=> b!7580939 (= e!4512152 e!4512156)))

(declare-fun res!3037013 () Bool)

(assert (=> b!7580939 (=> res!3037013 e!4512156)))

(assert (=> b!7580939 (= res!3037013 call!695007)))

(assert (= (and d!2318422 c!1398292) b!7580926))

(assert (= (and d!2318422 (not c!1398292)) b!7580936))

(assert (= (and d!2318422 c!1398291) b!7580927))

(assert (= (and d!2318422 (not c!1398291)) b!7580937))

(assert (= (and b!7580937 c!1398293) b!7580933))

(assert (= (and b!7580937 (not c!1398293)) b!7580930))

(assert (= (and b!7580930 (not res!3037012)) b!7580928))

(assert (= (and b!7580928 res!3037016) b!7580932))

(assert (= (and b!7580932 res!3037014) b!7580929))

(assert (= (and b!7580929 res!3037015) b!7580931))

(assert (= (and b!7580928 (not res!3037009)) b!7580934))

(assert (= (and b!7580934 res!3037011) b!7580939))

(assert (= (and b!7580939 (not res!3037013)) b!7580938))

(assert (= (and b!7580938 (not res!3037010)) b!7580935))

(assert (= (or b!7580927 b!7580932 b!7580939) bm!695002))

(declare-fun m!8135808 () Bool)

(assert (=> b!7580936 m!8135808))

(assert (=> b!7580936 m!8135808))

(declare-fun m!8135810 () Bool)

(assert (=> b!7580936 m!8135810))

(declare-fun m!8135812 () Bool)

(assert (=> b!7580936 m!8135812))

(assert (=> b!7580936 m!8135810))

(assert (=> b!7580936 m!8135812))

(declare-fun m!8135814 () Bool)

(assert (=> b!7580936 m!8135814))

(assert (=> b!7580935 m!8135808))

(assert (=> b!7580931 m!8135808))

(declare-fun m!8135816 () Bool)

(assert (=> b!7580926 m!8135816))

(assert (=> bm!695002 m!8135772))

(assert (=> d!2318422 m!8135772))

(assert (=> d!2318422 m!8135774))

(assert (=> b!7580929 m!8135812))

(assert (=> b!7580929 m!8135812))

(declare-fun m!8135818 () Bool)

(assert (=> b!7580929 m!8135818))

(assert (=> b!7580938 m!8135812))

(assert (=> b!7580938 m!8135812))

(assert (=> b!7580938 m!8135818))

(assert (=> b!7580840 d!2318422))

(declare-fun b!7581052 () Bool)

(assert (=> b!7581052 true))

(assert (=> b!7581052 true))

(declare-fun bs!1941048 () Bool)

(declare-fun b!7581049 () Bool)

(assert (= bs!1941048 (and b!7581049 b!7581052)))

(declare-fun lambda!466947 () Int)

(declare-fun lambda!466946 () Int)

(assert (=> bs!1941048 (not (= lambda!466947 lambda!466946))))

(assert (=> b!7581049 true))

(assert (=> b!7581049 true))

(declare-fun b!7581045 () Bool)

(declare-fun e!4512223 () Bool)

(assert (=> b!7581045 (= e!4512223 (matchRSpec!4393 (regTwo!40673 r!22341) s!13436))))

(declare-fun b!7581046 () Bool)

(declare-fun c!1398321 () Bool)

(assert (=> b!7581046 (= c!1398321 (is-ElementMatch!20080 r!22341))))

(declare-fun e!4512217 () Bool)

(declare-fun e!4512222 () Bool)

(assert (=> b!7581046 (= e!4512217 e!4512222)))

(declare-fun call!695018 () Bool)

(declare-fun c!1398324 () Bool)

(declare-fun bm!695013 () Bool)

(declare-fun Exists!4314 (Int) Bool)

(assert (=> bm!695013 (= call!695018 (Exists!4314 (ite c!1398324 lambda!466946 lambda!466947)))))

(declare-fun b!7581047 () Bool)

(declare-fun e!4512218 () Bool)

(assert (=> b!7581047 (= e!4512218 e!4512217)))

(declare-fun res!3037069 () Bool)

(assert (=> b!7581047 (= res!3037069 (not (is-EmptyLang!20080 r!22341)))))

(assert (=> b!7581047 (=> (not res!3037069) (not e!4512217))))

(declare-fun b!7581048 () Bool)

(declare-fun call!695019 () Bool)

(assert (=> b!7581048 (= e!4512218 call!695019)))

(declare-fun e!4512220 () Bool)

(assert (=> b!7581049 (= e!4512220 call!695018)))

(declare-fun b!7581050 () Bool)

(declare-fun c!1398323 () Bool)

(assert (=> b!7581050 (= c!1398323 (is-Union!20080 r!22341))))

(declare-fun e!4512219 () Bool)

(assert (=> b!7581050 (= e!4512222 e!4512219)))

(declare-fun bm!695014 () Bool)

(assert (=> bm!695014 (= call!695019 (isEmpty!41512 s!13436))))

(declare-fun b!7581051 () Bool)

(assert (=> b!7581051 (= e!4512222 (= s!13436 (Cons!72839 (c!1398279 r!22341) Nil!72839)))))

(declare-fun d!2318432 () Bool)

(declare-fun c!1398322 () Bool)

(assert (=> d!2318432 (= c!1398322 (is-EmptyExpr!20080 r!22341))))

(assert (=> d!2318432 (= (matchRSpec!4393 r!22341 s!13436) e!4512218)))

(declare-fun e!4512221 () Bool)

(assert (=> b!7581052 (= e!4512221 call!695018)))

(declare-fun b!7581053 () Bool)

(declare-fun res!3037070 () Bool)

(assert (=> b!7581053 (=> res!3037070 e!4512221)))

(assert (=> b!7581053 (= res!3037070 call!695019)))

(assert (=> b!7581053 (= e!4512220 e!4512221)))

(declare-fun b!7581054 () Bool)

(assert (=> b!7581054 (= e!4512219 e!4512223)))

(declare-fun res!3037068 () Bool)

(assert (=> b!7581054 (= res!3037068 (matchRSpec!4393 (regOne!40673 r!22341) s!13436))))

(assert (=> b!7581054 (=> res!3037068 e!4512223)))

(declare-fun b!7581055 () Bool)

(assert (=> b!7581055 (= e!4512219 e!4512220)))

(assert (=> b!7581055 (= c!1398324 (is-Star!20080 r!22341))))

(assert (= (and d!2318432 c!1398322) b!7581048))

(assert (= (and d!2318432 (not c!1398322)) b!7581047))

(assert (= (and b!7581047 res!3037069) b!7581046))

(assert (= (and b!7581046 c!1398321) b!7581051))

(assert (= (and b!7581046 (not c!1398321)) b!7581050))

(assert (= (and b!7581050 c!1398323) b!7581054))

(assert (= (and b!7581050 (not c!1398323)) b!7581055))

(assert (= (and b!7581054 (not res!3037068)) b!7581045))

(assert (= (and b!7581055 c!1398324) b!7581053))

(assert (= (and b!7581055 (not c!1398324)) b!7581049))

(assert (= (and b!7581053 (not res!3037070)) b!7581052))

(assert (= (or b!7581052 b!7581049) bm!695013))

(assert (= (or b!7581048 b!7581053) bm!695014))

(declare-fun m!8135838 () Bool)

(assert (=> b!7581045 m!8135838))

(declare-fun m!8135840 () Bool)

(assert (=> bm!695013 m!8135840))

(assert (=> bm!695014 m!8135772))

(declare-fun m!8135842 () Bool)

(assert (=> b!7581054 m!8135842))

(assert (=> b!7580840 d!2318432))

(declare-fun d!2318438 () Bool)

(assert (=> d!2318438 (= (matchR!9672 r!22341 s!13436) (matchRSpec!4393 r!22341 s!13436))))

(declare-fun lt!2652599 () Unit!167116)

(declare-fun choose!58610 (Regex!20080 List!72963) Unit!167116)

(assert (=> d!2318438 (= lt!2652599 (choose!58610 r!22341 s!13436))))

(assert (=> d!2318438 (validRegex!10508 r!22341)))

(assert (=> d!2318438 (= (mainMatchTheorem!4387 r!22341 s!13436) lt!2652599)))

(declare-fun bs!1941049 () Bool)

(assert (= bs!1941049 d!2318438))

(assert (=> bs!1941049 m!8135758))

(assert (=> bs!1941049 m!8135760))

(declare-fun m!8135844 () Bool)

(assert (=> bs!1941049 m!8135844))

(assert (=> bs!1941049 m!8135774))

(assert (=> b!7580840 d!2318438))

(declare-fun d!2318440 () Bool)

(assert (=> d!2318440 (= (lostCause!1856 (regOne!40673 r!22341)) (lostCauseFct!509 (regOne!40673 r!22341)))))

(declare-fun bs!1941050 () Bool)

(assert (= bs!1941050 d!2318440))

(declare-fun m!8135846 () Bool)

(assert (=> bs!1941050 m!8135846))

(assert (=> b!7580839 d!2318440))

(declare-fun bm!695021 () Bool)

(declare-fun c!1398330 () Bool)

(declare-fun call!695027 () Bool)

(declare-fun c!1398329 () Bool)

(assert (=> bm!695021 (= call!695027 (validRegex!10508 (ite c!1398330 (reg!20409 r!22341) (ite c!1398329 (regOne!40673 r!22341) (regTwo!40672 r!22341)))))))

(declare-fun b!7581079 () Bool)

(declare-fun e!4512244 () Bool)

(declare-fun e!4512240 () Bool)

(assert (=> b!7581079 (= e!4512244 e!4512240)))

(declare-fun res!3037085 () Bool)

(assert (=> b!7581079 (= res!3037085 (not (nullable!8773 (reg!20409 r!22341))))))

(assert (=> b!7581079 (=> (not res!3037085) (not e!4512240))))

(declare-fun b!7581080 () Bool)

(declare-fun e!4512238 () Bool)

(declare-fun call!695026 () Bool)

(assert (=> b!7581080 (= e!4512238 call!695026)))

(declare-fun b!7581081 () Bool)

(assert (=> b!7581081 (= e!4512240 call!695027)))

(declare-fun b!7581082 () Bool)

(declare-fun e!4512239 () Bool)

(assert (=> b!7581082 (= e!4512239 e!4512238)))

(declare-fun res!3037082 () Bool)

(assert (=> b!7581082 (=> (not res!3037082) (not e!4512238))))

(declare-fun call!695028 () Bool)

(assert (=> b!7581082 (= res!3037082 call!695028)))

(declare-fun b!7581083 () Bool)

(declare-fun e!4512242 () Bool)

(assert (=> b!7581083 (= e!4512242 e!4512244)))

(assert (=> b!7581083 (= c!1398330 (is-Star!20080 r!22341))))

(declare-fun b!7581084 () Bool)

(declare-fun res!3037083 () Bool)

(assert (=> b!7581084 (=> res!3037083 e!4512239)))

(assert (=> b!7581084 (= res!3037083 (not (is-Concat!28925 r!22341)))))

(declare-fun e!4512243 () Bool)

(assert (=> b!7581084 (= e!4512243 e!4512239)))

(declare-fun b!7581085 () Bool)

(declare-fun e!4512241 () Bool)

(assert (=> b!7581085 (= e!4512241 call!695028)))

(declare-fun b!7581086 () Bool)

(declare-fun res!3037084 () Bool)

(assert (=> b!7581086 (=> (not res!3037084) (not e!4512241))))

(assert (=> b!7581086 (= res!3037084 call!695026)))

(assert (=> b!7581086 (= e!4512243 e!4512241)))

(declare-fun d!2318442 () Bool)

(declare-fun res!3037081 () Bool)

(assert (=> d!2318442 (=> res!3037081 e!4512242)))

(assert (=> d!2318442 (= res!3037081 (is-ElementMatch!20080 r!22341))))

(assert (=> d!2318442 (= (validRegex!10508 r!22341) e!4512242)))

(declare-fun b!7581078 () Bool)

(assert (=> b!7581078 (= e!4512244 e!4512243)))

(assert (=> b!7581078 (= c!1398329 (is-Union!20080 r!22341))))

(declare-fun bm!695022 () Bool)

(assert (=> bm!695022 (= call!695026 call!695027)))

(declare-fun bm!695023 () Bool)

(assert (=> bm!695023 (= call!695028 (validRegex!10508 (ite c!1398329 (regTwo!40673 r!22341) (regOne!40672 r!22341))))))

(assert (= (and d!2318442 (not res!3037081)) b!7581083))

(assert (= (and b!7581083 c!1398330) b!7581079))

(assert (= (and b!7581083 (not c!1398330)) b!7581078))

(assert (= (and b!7581079 res!3037085) b!7581081))

(assert (= (and b!7581078 c!1398329) b!7581086))

(assert (= (and b!7581078 (not c!1398329)) b!7581084))

(assert (= (and b!7581086 res!3037084) b!7581085))

(assert (= (and b!7581084 (not res!3037083)) b!7581082))

(assert (= (and b!7581082 res!3037082) b!7581080))

(assert (= (or b!7581085 b!7581082) bm!695023))

(assert (= (or b!7581086 b!7581080) bm!695022))

(assert (= (or b!7581081 bm!695022) bm!695021))

(declare-fun m!8135848 () Bool)

(assert (=> bm!695021 m!8135848))

(declare-fun m!8135850 () Bool)

(assert (=> b!7581079 m!8135850))

(declare-fun m!8135852 () Bool)

(assert (=> bm!695023 m!8135852))

(assert (=> start!731938 d!2318442))

(declare-fun d!2318444 () Bool)

(assert (=> d!2318444 (= (isEmpty!41512 s!13436) (is-Nil!72839 s!13436))))

(assert (=> b!7580843 d!2318444))

(declare-fun b!7581121 () Bool)

(declare-fun e!4512269 () Bool)

(declare-fun lt!2652602 () Int)

(declare-fun call!695047 () Int)

(assert (=> b!7581121 (= e!4512269 (> lt!2652602 call!695047))))

(declare-fun bm!695038 () Bool)

(declare-fun call!695049 () Int)

(declare-fun call!695044 () Int)

(assert (=> bm!695038 (= call!695049 call!695044)))

(declare-fun b!7581122 () Bool)

(declare-fun e!4512265 () Int)

(assert (=> b!7581122 (= e!4512265 (+ 1 call!695044))))

(declare-fun b!7581123 () Bool)

(declare-fun e!4512271 () Bool)

(declare-fun e!4512270 () Bool)

(assert (=> b!7581123 (= e!4512271 e!4512270)))

(declare-fun c!1398346 () Bool)

(assert (=> b!7581123 (= c!1398346 (is-Concat!28925 r!22341))))

(declare-fun b!7581124 () Bool)

(declare-fun e!4512274 () Int)

(assert (=> b!7581124 (= e!4512274 e!4512265)))

(declare-fun c!1398348 () Bool)

(assert (=> b!7581124 (= c!1398348 (is-Star!20080 r!22341))))

(declare-fun call!695048 () Int)

(declare-fun c!1398350 () Bool)

(declare-fun bm!695039 () Bool)

(assert (=> bm!695039 (= call!695048 (regexDepth!460 (ite c!1398350 (regTwo!40673 r!22341) (ite c!1398346 (regOne!40672 r!22341) (reg!20409 r!22341)))))))

(declare-fun d!2318446 () Bool)

(declare-fun e!4512273 () Bool)

(assert (=> d!2318446 e!4512273))

(declare-fun res!3037093 () Bool)

(assert (=> d!2318446 (=> (not res!3037093) (not e!4512273))))

(assert (=> d!2318446 (= res!3037093 (> lt!2652602 0))))

(assert (=> d!2318446 (= lt!2652602 e!4512274)))

(declare-fun c!1398349 () Bool)

(assert (=> d!2318446 (= c!1398349 (is-ElementMatch!20080 r!22341))))

(assert (=> d!2318446 (= (regexDepth!460 r!22341) lt!2652602)))

(declare-fun b!7581125 () Bool)

(declare-fun e!4512267 () Int)

(declare-fun call!695043 () Int)

(assert (=> b!7581125 (= e!4512267 (+ 1 call!695043))))

(declare-fun b!7581126 () Bool)

(declare-fun c!1398345 () Bool)

(assert (=> b!7581126 (= c!1398345 (is-Star!20080 r!22341))))

(declare-fun e!4512272 () Bool)

(assert (=> b!7581126 (= e!4512270 e!4512272)))

(declare-fun bm!695040 () Bool)

(declare-fun call!695045 () Int)

(assert (=> bm!695040 (= call!695045 call!695048)))

(declare-fun b!7581127 () Bool)

(assert (=> b!7581127 (= e!4512273 e!4512271)))

(assert (=> b!7581127 (= c!1398350 (is-Union!20080 r!22341))))

(declare-fun b!7581128 () Bool)

(assert (=> b!7581128 (= e!4512274 1)))

(declare-fun b!7581129 () Bool)

(declare-fun res!3037092 () Bool)

(assert (=> b!7581129 (=> (not res!3037092) (not e!4512269))))

(assert (=> b!7581129 (= res!3037092 (> lt!2652602 call!695045))))

(assert (=> b!7581129 (= e!4512270 e!4512269)))

(declare-fun b!7581130 () Bool)

(declare-fun e!4512266 () Bool)

(assert (=> b!7581130 (= e!4512271 e!4512266)))

(declare-fun res!3037094 () Bool)

(assert (=> b!7581130 (= res!3037094 (> lt!2652602 call!695047))))

(assert (=> b!7581130 (=> (not res!3037094) (not e!4512266))))

(declare-fun b!7581131 () Bool)

(assert (=> b!7581131 (= e!4512272 (> lt!2652602 call!695045))))

(declare-fun b!7581132 () Bool)

(assert (=> b!7581132 (= e!4512267 1)))

(declare-fun b!7581133 () Bool)

(declare-fun e!4512268 () Int)

(assert (=> b!7581133 (= e!4512268 (+ 1 call!695043))))

(declare-fun call!695046 () Int)

(declare-fun bm!695041 () Bool)

(declare-fun c!1398347 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!695041 (= call!695043 (maxBigInt!0 (ite c!1398347 call!695049 call!695046) (ite c!1398347 call!695046 call!695049)))))

(declare-fun b!7581134 () Bool)

(assert (=> b!7581134 (= e!4512266 (> lt!2652602 call!695048))))

(declare-fun b!7581135 () Bool)

(assert (=> b!7581135 (= c!1398347 (is-Union!20080 r!22341))))

(assert (=> b!7581135 (= e!4512265 e!4512268)))

(declare-fun b!7581136 () Bool)

(assert (=> b!7581136 (= e!4512268 e!4512267)))

(declare-fun c!1398351 () Bool)

(assert (=> b!7581136 (= c!1398351 (is-Concat!28925 r!22341))))

(declare-fun bm!695042 () Bool)

(assert (=> bm!695042 (= call!695046 (regexDepth!460 (ite c!1398347 (regTwo!40673 r!22341) (regOne!40672 r!22341))))))

(declare-fun bm!695043 () Bool)

(assert (=> bm!695043 (= call!695047 (regexDepth!460 (ite c!1398350 (regOne!40673 r!22341) (regTwo!40672 r!22341))))))

(declare-fun bm!695044 () Bool)

(assert (=> bm!695044 (= call!695044 (regexDepth!460 (ite c!1398348 (reg!20409 r!22341) (ite c!1398347 (regOne!40673 r!22341) (regTwo!40672 r!22341)))))))

(declare-fun b!7581137 () Bool)

(assert (=> b!7581137 (= e!4512272 (= lt!2652602 1))))

(assert (= (and d!2318446 c!1398349) b!7581128))

(assert (= (and d!2318446 (not c!1398349)) b!7581124))

(assert (= (and b!7581124 c!1398348) b!7581122))

(assert (= (and b!7581124 (not c!1398348)) b!7581135))

(assert (= (and b!7581135 c!1398347) b!7581133))

(assert (= (and b!7581135 (not c!1398347)) b!7581136))

(assert (= (and b!7581136 c!1398351) b!7581125))

(assert (= (and b!7581136 (not c!1398351)) b!7581132))

(assert (= (or b!7581133 b!7581125) bm!695038))

(assert (= (or b!7581133 b!7581125) bm!695042))

(assert (= (or b!7581133 b!7581125) bm!695041))

(assert (= (or b!7581122 bm!695038) bm!695044))

(assert (= (and d!2318446 res!3037093) b!7581127))

(assert (= (and b!7581127 c!1398350) b!7581130))

(assert (= (and b!7581127 (not c!1398350)) b!7581123))

(assert (= (and b!7581130 res!3037094) b!7581134))

(assert (= (and b!7581123 c!1398346) b!7581129))

(assert (= (and b!7581123 (not c!1398346)) b!7581126))

(assert (= (and b!7581129 res!3037092) b!7581121))

(assert (= (and b!7581126 c!1398345) b!7581131))

(assert (= (and b!7581126 (not c!1398345)) b!7581137))

(assert (= (or b!7581129 b!7581131) bm!695040))

(assert (= (or b!7581134 bm!695040) bm!695039))

(assert (= (or b!7581130 b!7581121) bm!695043))

(declare-fun m!8135854 () Bool)

(assert (=> bm!695041 m!8135854))

(declare-fun m!8135856 () Bool)

(assert (=> bm!695043 m!8135856))

(declare-fun m!8135858 () Bool)

(assert (=> bm!695044 m!8135858))

(declare-fun m!8135860 () Bool)

(assert (=> bm!695042 m!8135860))

(declare-fun m!8135862 () Bool)

(assert (=> bm!695039 m!8135862))

(assert (=> b!7580838 d!2318446))

(declare-fun d!2318448 () Bool)

(declare-fun lt!2652605 () Int)

(assert (=> d!2318448 (>= lt!2652605 0)))

(declare-fun e!4512277 () Int)

(assert (=> d!2318448 (= lt!2652605 e!4512277)))

(declare-fun c!1398354 () Bool)

(assert (=> d!2318448 (= c!1398354 (is-Nil!72839 s!13436))))

(assert (=> d!2318448 (= (size!42499 s!13436) lt!2652605)))

(declare-fun b!7581142 () Bool)

(assert (=> b!7581142 (= e!4512277 0)))

(declare-fun b!7581143 () Bool)

(assert (=> b!7581143 (= e!4512277 (+ 1 (size!42499 (t!387698 s!13436))))))

(assert (= (and d!2318448 c!1398354) b!7581142))

(assert (= (and d!2318448 (not c!1398354)) b!7581143))

(declare-fun m!8135864 () Bool)

(assert (=> b!7581143 m!8135864))

(assert (=> b!7580838 d!2318448))

(declare-fun b!7581144 () Bool)

(declare-fun e!4512282 () Bool)

(declare-fun lt!2652606 () Int)

(declare-fun call!695054 () Int)

(assert (=> b!7581144 (= e!4512282 (> lt!2652606 call!695054))))

(declare-fun bm!695045 () Bool)

(declare-fun call!695056 () Int)

(declare-fun call!695051 () Int)

(assert (=> bm!695045 (= call!695056 call!695051)))

(declare-fun b!7581145 () Bool)

(declare-fun e!4512278 () Int)

(assert (=> b!7581145 (= e!4512278 (+ 1 call!695051))))

(declare-fun b!7581146 () Bool)

(declare-fun e!4512284 () Bool)

(declare-fun e!4512283 () Bool)

(assert (=> b!7581146 (= e!4512284 e!4512283)))

(declare-fun c!1398356 () Bool)

(assert (=> b!7581146 (= c!1398356 (is-Concat!28925 (regOne!40673 r!22341)))))

(declare-fun b!7581147 () Bool)

(declare-fun e!4512287 () Int)

(assert (=> b!7581147 (= e!4512287 e!4512278)))

(declare-fun c!1398358 () Bool)

(assert (=> b!7581147 (= c!1398358 (is-Star!20080 (regOne!40673 r!22341)))))

(declare-fun bm!695046 () Bool)

(declare-fun call!695055 () Int)

(declare-fun c!1398360 () Bool)

(assert (=> bm!695046 (= call!695055 (regexDepth!460 (ite c!1398360 (regTwo!40673 (regOne!40673 r!22341)) (ite c!1398356 (regOne!40672 (regOne!40673 r!22341)) (reg!20409 (regOne!40673 r!22341))))))))

(declare-fun d!2318450 () Bool)

(declare-fun e!4512286 () Bool)

(assert (=> d!2318450 e!4512286))

(declare-fun res!3037096 () Bool)

(assert (=> d!2318450 (=> (not res!3037096) (not e!4512286))))

(assert (=> d!2318450 (= res!3037096 (> lt!2652606 0))))

(assert (=> d!2318450 (= lt!2652606 e!4512287)))

(declare-fun c!1398359 () Bool)

(assert (=> d!2318450 (= c!1398359 (is-ElementMatch!20080 (regOne!40673 r!22341)))))

(assert (=> d!2318450 (= (regexDepth!460 (regOne!40673 r!22341)) lt!2652606)))

(declare-fun b!7581148 () Bool)

(declare-fun e!4512280 () Int)

(declare-fun call!695050 () Int)

(assert (=> b!7581148 (= e!4512280 (+ 1 call!695050))))

(declare-fun b!7581149 () Bool)

(declare-fun c!1398355 () Bool)

(assert (=> b!7581149 (= c!1398355 (is-Star!20080 (regOne!40673 r!22341)))))

(declare-fun e!4512285 () Bool)

(assert (=> b!7581149 (= e!4512283 e!4512285)))

(declare-fun bm!695047 () Bool)

(declare-fun call!695052 () Int)

(assert (=> bm!695047 (= call!695052 call!695055)))

(declare-fun b!7581150 () Bool)

(assert (=> b!7581150 (= e!4512286 e!4512284)))

(assert (=> b!7581150 (= c!1398360 (is-Union!20080 (regOne!40673 r!22341)))))

(declare-fun b!7581151 () Bool)

(assert (=> b!7581151 (= e!4512287 1)))

(declare-fun b!7581152 () Bool)

(declare-fun res!3037095 () Bool)

(assert (=> b!7581152 (=> (not res!3037095) (not e!4512282))))

(assert (=> b!7581152 (= res!3037095 (> lt!2652606 call!695052))))

(assert (=> b!7581152 (= e!4512283 e!4512282)))

(declare-fun b!7581153 () Bool)

(declare-fun e!4512279 () Bool)

(assert (=> b!7581153 (= e!4512284 e!4512279)))

(declare-fun res!3037097 () Bool)

(assert (=> b!7581153 (= res!3037097 (> lt!2652606 call!695054))))

(assert (=> b!7581153 (=> (not res!3037097) (not e!4512279))))

(declare-fun b!7581154 () Bool)

(assert (=> b!7581154 (= e!4512285 (> lt!2652606 call!695052))))

(declare-fun b!7581155 () Bool)

(assert (=> b!7581155 (= e!4512280 1)))

(declare-fun b!7581156 () Bool)

(declare-fun e!4512281 () Int)

(assert (=> b!7581156 (= e!4512281 (+ 1 call!695050))))

(declare-fun bm!695048 () Bool)

(declare-fun call!695053 () Int)

(declare-fun c!1398357 () Bool)

(assert (=> bm!695048 (= call!695050 (maxBigInt!0 (ite c!1398357 call!695056 call!695053) (ite c!1398357 call!695053 call!695056)))))

(declare-fun b!7581157 () Bool)

(assert (=> b!7581157 (= e!4512279 (> lt!2652606 call!695055))))

(declare-fun b!7581158 () Bool)

(assert (=> b!7581158 (= c!1398357 (is-Union!20080 (regOne!40673 r!22341)))))

(assert (=> b!7581158 (= e!4512278 e!4512281)))

(declare-fun b!7581159 () Bool)

(assert (=> b!7581159 (= e!4512281 e!4512280)))

(declare-fun c!1398361 () Bool)

(assert (=> b!7581159 (= c!1398361 (is-Concat!28925 (regOne!40673 r!22341)))))

(declare-fun bm!695049 () Bool)

(assert (=> bm!695049 (= call!695053 (regexDepth!460 (ite c!1398357 (regTwo!40673 (regOne!40673 r!22341)) (regOne!40672 (regOne!40673 r!22341)))))))

(declare-fun bm!695050 () Bool)

(assert (=> bm!695050 (= call!695054 (regexDepth!460 (ite c!1398360 (regOne!40673 (regOne!40673 r!22341)) (regTwo!40672 (regOne!40673 r!22341)))))))

(declare-fun bm!695051 () Bool)

(assert (=> bm!695051 (= call!695051 (regexDepth!460 (ite c!1398358 (reg!20409 (regOne!40673 r!22341)) (ite c!1398357 (regOne!40673 (regOne!40673 r!22341)) (regTwo!40672 (regOne!40673 r!22341))))))))

(declare-fun b!7581160 () Bool)

(assert (=> b!7581160 (= e!4512285 (= lt!2652606 1))))

(assert (= (and d!2318450 c!1398359) b!7581151))

(assert (= (and d!2318450 (not c!1398359)) b!7581147))

(assert (= (and b!7581147 c!1398358) b!7581145))

(assert (= (and b!7581147 (not c!1398358)) b!7581158))

(assert (= (and b!7581158 c!1398357) b!7581156))

(assert (= (and b!7581158 (not c!1398357)) b!7581159))

(assert (= (and b!7581159 c!1398361) b!7581148))

(assert (= (and b!7581159 (not c!1398361)) b!7581155))

(assert (= (or b!7581156 b!7581148) bm!695045))

(assert (= (or b!7581156 b!7581148) bm!695049))

(assert (= (or b!7581156 b!7581148) bm!695048))

(assert (= (or b!7581145 bm!695045) bm!695051))

(assert (= (and d!2318450 res!3037096) b!7581150))

(assert (= (and b!7581150 c!1398360) b!7581153))

(assert (= (and b!7581150 (not c!1398360)) b!7581146))

(assert (= (and b!7581153 res!3037097) b!7581157))

(assert (= (and b!7581146 c!1398356) b!7581152))

(assert (= (and b!7581146 (not c!1398356)) b!7581149))

(assert (= (and b!7581152 res!3037095) b!7581144))

(assert (= (and b!7581149 c!1398355) b!7581154))

(assert (= (and b!7581149 (not c!1398355)) b!7581160))

(assert (= (or b!7581152 b!7581154) bm!695047))

(assert (= (or b!7581157 bm!695047) bm!695046))

(assert (= (or b!7581153 b!7581144) bm!695050))

(declare-fun m!8135866 () Bool)

(assert (=> bm!695048 m!8135866))

(declare-fun m!8135868 () Bool)

(assert (=> bm!695050 m!8135868))

(declare-fun m!8135870 () Bool)

(assert (=> bm!695051 m!8135870))

(declare-fun m!8135872 () Bool)

(assert (=> bm!695049 m!8135872))

(declare-fun m!8135874 () Bool)

(assert (=> bm!695046 m!8135874))

(assert (=> b!7580838 d!2318450))

(declare-fun bm!695052 () Bool)

(declare-fun call!695058 () Bool)

(declare-fun c!1398363 () Bool)

(declare-fun c!1398362 () Bool)

(assert (=> bm!695052 (= call!695058 (validRegex!10508 (ite c!1398363 (reg!20409 (regOne!40673 r!22341)) (ite c!1398362 (regOne!40673 (regOne!40673 r!22341)) (regTwo!40672 (regOne!40673 r!22341))))))))

(declare-fun b!7581162 () Bool)

(declare-fun e!4512294 () Bool)

(declare-fun e!4512290 () Bool)

(assert (=> b!7581162 (= e!4512294 e!4512290)))

(declare-fun res!3037102 () Bool)

(assert (=> b!7581162 (= res!3037102 (not (nullable!8773 (reg!20409 (regOne!40673 r!22341)))))))

(assert (=> b!7581162 (=> (not res!3037102) (not e!4512290))))

(declare-fun b!7581163 () Bool)

(declare-fun e!4512288 () Bool)

(declare-fun call!695057 () Bool)

(assert (=> b!7581163 (= e!4512288 call!695057)))

(declare-fun b!7581164 () Bool)

(assert (=> b!7581164 (= e!4512290 call!695058)))

(declare-fun b!7581165 () Bool)

(declare-fun e!4512289 () Bool)

(assert (=> b!7581165 (= e!4512289 e!4512288)))

(declare-fun res!3037099 () Bool)

(assert (=> b!7581165 (=> (not res!3037099) (not e!4512288))))

(declare-fun call!695059 () Bool)

(assert (=> b!7581165 (= res!3037099 call!695059)))

(declare-fun b!7581166 () Bool)

(declare-fun e!4512292 () Bool)

(assert (=> b!7581166 (= e!4512292 e!4512294)))

(assert (=> b!7581166 (= c!1398363 (is-Star!20080 (regOne!40673 r!22341)))))

(declare-fun b!7581167 () Bool)

(declare-fun res!3037100 () Bool)

(assert (=> b!7581167 (=> res!3037100 e!4512289)))

(assert (=> b!7581167 (= res!3037100 (not (is-Concat!28925 (regOne!40673 r!22341))))))

(declare-fun e!4512293 () Bool)

(assert (=> b!7581167 (= e!4512293 e!4512289)))

(declare-fun b!7581168 () Bool)

(declare-fun e!4512291 () Bool)

(assert (=> b!7581168 (= e!4512291 call!695059)))

(declare-fun b!7581169 () Bool)

(declare-fun res!3037101 () Bool)

(assert (=> b!7581169 (=> (not res!3037101) (not e!4512291))))

(assert (=> b!7581169 (= res!3037101 call!695057)))

(assert (=> b!7581169 (= e!4512293 e!4512291)))

(declare-fun d!2318452 () Bool)

(declare-fun res!3037098 () Bool)

(assert (=> d!2318452 (=> res!3037098 e!4512292)))

(assert (=> d!2318452 (= res!3037098 (is-ElementMatch!20080 (regOne!40673 r!22341)))))

(assert (=> d!2318452 (= (validRegex!10508 (regOne!40673 r!22341)) e!4512292)))

(declare-fun b!7581161 () Bool)

(assert (=> b!7581161 (= e!4512294 e!4512293)))

(assert (=> b!7581161 (= c!1398362 (is-Union!20080 (regOne!40673 r!22341)))))

(declare-fun bm!695053 () Bool)

(assert (=> bm!695053 (= call!695057 call!695058)))

(declare-fun bm!695054 () Bool)

(assert (=> bm!695054 (= call!695059 (validRegex!10508 (ite c!1398362 (regTwo!40673 (regOne!40673 r!22341)) (regOne!40672 (regOne!40673 r!22341)))))))

(assert (= (and d!2318452 (not res!3037098)) b!7581166))

(assert (= (and b!7581166 c!1398363) b!7581162))

(assert (= (and b!7581166 (not c!1398363)) b!7581161))

(assert (= (and b!7581162 res!3037102) b!7581164))

(assert (= (and b!7581161 c!1398362) b!7581169))

(assert (= (and b!7581161 (not c!1398362)) b!7581167))

(assert (= (and b!7581169 res!3037101) b!7581168))

(assert (= (and b!7581167 (not res!3037100)) b!7581165))

(assert (= (and b!7581165 res!3037099) b!7581163))

(assert (= (or b!7581168 b!7581165) bm!695054))

(assert (= (or b!7581169 b!7581163) bm!695053))

(assert (= (or b!7581164 bm!695053) bm!695052))

(declare-fun m!8135876 () Bool)

(assert (=> bm!695052 m!8135876))

(declare-fun m!8135878 () Bool)

(assert (=> b!7581162 m!8135878))

(declare-fun m!8135880 () Bool)

(assert (=> bm!695054 m!8135880))

(assert (=> b!7580842 d!2318452))

(declare-fun b!7581174 () Bool)

(declare-fun e!4512297 () Bool)

(declare-fun tp!2209296 () Bool)

(assert (=> b!7581174 (= e!4512297 (and tp_is_empty!50515 tp!2209296))))

(assert (=> b!7580841 (= tp!2209272 e!4512297)))

(assert (= (and b!7580841 (is-Cons!72839 (t!387698 s!13436))) b!7581174))

(declare-fun b!7581187 () Bool)

(declare-fun e!4512300 () Bool)

(declare-fun tp!2209307 () Bool)

(assert (=> b!7581187 (= e!4512300 tp!2209307)))

(declare-fun b!7581185 () Bool)

(assert (=> b!7581185 (= e!4512300 tp_is_empty!50515)))

(declare-fun b!7581188 () Bool)

(declare-fun tp!2209311 () Bool)

(declare-fun tp!2209309 () Bool)

(assert (=> b!7581188 (= e!4512300 (and tp!2209311 tp!2209309))))

(declare-fun b!7581186 () Bool)

(declare-fun tp!2209308 () Bool)

(declare-fun tp!2209310 () Bool)

(assert (=> b!7581186 (= e!4512300 (and tp!2209308 tp!2209310))))

(assert (=> b!7580836 (= tp!2209271 e!4512300)))

(assert (= (and b!7580836 (is-ElementMatch!20080 (regOne!40673 r!22341))) b!7581185))

(assert (= (and b!7580836 (is-Concat!28925 (regOne!40673 r!22341))) b!7581186))

(assert (= (and b!7580836 (is-Star!20080 (regOne!40673 r!22341))) b!7581187))

(assert (= (and b!7580836 (is-Union!20080 (regOne!40673 r!22341))) b!7581188))

(declare-fun b!7581191 () Bool)

(declare-fun e!4512301 () Bool)

(declare-fun tp!2209312 () Bool)

(assert (=> b!7581191 (= e!4512301 tp!2209312)))

(declare-fun b!7581189 () Bool)

(assert (=> b!7581189 (= e!4512301 tp_is_empty!50515)))

(declare-fun b!7581192 () Bool)

(declare-fun tp!2209316 () Bool)

(declare-fun tp!2209314 () Bool)

(assert (=> b!7581192 (= e!4512301 (and tp!2209316 tp!2209314))))

(declare-fun b!7581190 () Bool)

(declare-fun tp!2209313 () Bool)

(declare-fun tp!2209315 () Bool)

(assert (=> b!7581190 (= e!4512301 (and tp!2209313 tp!2209315))))

(assert (=> b!7580836 (= tp!2209275 e!4512301)))

(assert (= (and b!7580836 (is-ElementMatch!20080 (regTwo!40673 r!22341))) b!7581189))

(assert (= (and b!7580836 (is-Concat!28925 (regTwo!40673 r!22341))) b!7581190))

(assert (= (and b!7580836 (is-Star!20080 (regTwo!40673 r!22341))) b!7581191))

(assert (= (and b!7580836 (is-Union!20080 (regTwo!40673 r!22341))) b!7581192))

(declare-fun b!7581195 () Bool)

(declare-fun e!4512302 () Bool)

(declare-fun tp!2209317 () Bool)

(assert (=> b!7581195 (= e!4512302 tp!2209317)))

(declare-fun b!7581193 () Bool)

(assert (=> b!7581193 (= e!4512302 tp_is_empty!50515)))

(declare-fun b!7581196 () Bool)

(declare-fun tp!2209321 () Bool)

(declare-fun tp!2209319 () Bool)

(assert (=> b!7581196 (= e!4512302 (and tp!2209321 tp!2209319))))

(declare-fun b!7581194 () Bool)

(declare-fun tp!2209318 () Bool)

(declare-fun tp!2209320 () Bool)

(assert (=> b!7581194 (= e!4512302 (and tp!2209318 tp!2209320))))

(assert (=> b!7580846 (= tp!2209273 e!4512302)))

(assert (= (and b!7580846 (is-ElementMatch!20080 (regOne!40672 r!22341))) b!7581193))

(assert (= (and b!7580846 (is-Concat!28925 (regOne!40672 r!22341))) b!7581194))

(assert (= (and b!7580846 (is-Star!20080 (regOne!40672 r!22341))) b!7581195))

(assert (= (and b!7580846 (is-Union!20080 (regOne!40672 r!22341))) b!7581196))

(declare-fun b!7581199 () Bool)

(declare-fun e!4512303 () Bool)

(declare-fun tp!2209322 () Bool)

(assert (=> b!7581199 (= e!4512303 tp!2209322)))

(declare-fun b!7581197 () Bool)

(assert (=> b!7581197 (= e!4512303 tp_is_empty!50515)))

(declare-fun b!7581200 () Bool)

(declare-fun tp!2209326 () Bool)

(declare-fun tp!2209324 () Bool)

(assert (=> b!7581200 (= e!4512303 (and tp!2209326 tp!2209324))))

(declare-fun b!7581198 () Bool)

(declare-fun tp!2209323 () Bool)

(declare-fun tp!2209325 () Bool)

(assert (=> b!7581198 (= e!4512303 (and tp!2209323 tp!2209325))))

(assert (=> b!7580846 (= tp!2209274 e!4512303)))

(assert (= (and b!7580846 (is-ElementMatch!20080 (regTwo!40672 r!22341))) b!7581197))

(assert (= (and b!7580846 (is-Concat!28925 (regTwo!40672 r!22341))) b!7581198))

(assert (= (and b!7580846 (is-Star!20080 (regTwo!40672 r!22341))) b!7581199))

(assert (= (and b!7580846 (is-Union!20080 (regTwo!40672 r!22341))) b!7581200))

(declare-fun b!7581203 () Bool)

(declare-fun e!4512304 () Bool)

(declare-fun tp!2209327 () Bool)

(assert (=> b!7581203 (= e!4512304 tp!2209327)))

(declare-fun b!7581201 () Bool)

(assert (=> b!7581201 (= e!4512304 tp_is_empty!50515)))

(declare-fun b!7581204 () Bool)

(declare-fun tp!2209331 () Bool)

(declare-fun tp!2209329 () Bool)

(assert (=> b!7581204 (= e!4512304 (and tp!2209331 tp!2209329))))

(declare-fun b!7581202 () Bool)

(declare-fun tp!2209328 () Bool)

(declare-fun tp!2209330 () Bool)

(assert (=> b!7581202 (= e!4512304 (and tp!2209328 tp!2209330))))

(assert (=> b!7580844 (= tp!2209270 e!4512304)))

(assert (= (and b!7580844 (is-ElementMatch!20080 (reg!20409 r!22341))) b!7581201))

(assert (= (and b!7580844 (is-Concat!28925 (reg!20409 r!22341))) b!7581202))

(assert (= (and b!7580844 (is-Star!20080 (reg!20409 r!22341))) b!7581203))

(assert (= (and b!7580844 (is-Union!20080 (reg!20409 r!22341))) b!7581204))

(push 1)

(assert (not b!7581204))

(assert (not b!7580935))

(assert (not d!2318422))

(assert (not d!2318420))

(assert (not b!7580931))

(assert (not b!7581200))

(assert (not bm!695013))

(assert (not bm!695051))

(assert (not b!7581191))

(assert tp_is_empty!50515)

(assert (not bm!695023))

(assert (not b!7581203))

(assert (not b!7581195))

(assert (not bm!695014))

(assert (not b!7581186))

(assert (not bm!695002))

(assert (not b!7581196))

(assert (not bm!695043))

(assert (not d!2318440))

(assert (not bm!695046))

(assert (not bm!695044))

(assert (not bm!695042))

(assert (not b!7580929))

(assert (not b!7581187))

(assert (not b!7581174))

(assert (not bm!695049))

(assert (not b!7581079))

(assert (not b!7581143))

(assert (not b!7581194))

(assert (not b!7581199))

(assert (not b!7581198))

(assert (not b!7581045))

(assert (not bm!695039))

(assert (not bm!695052))

(assert (not b!7581190))

(assert (not b!7580938))

(assert (not b!7580936))

(assert (not b!7581188))

(assert (not bm!695054))

(assert (not bm!695041))

(assert (not b!7581202))

(assert (not b!7581192))

(assert (not b!7581162))

(assert (not b!7581054))

(assert (not bm!695050))

(assert (not bm!695048))

(assert (not b!7580926))

(assert (not d!2318438))

(assert (not bm!695021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

