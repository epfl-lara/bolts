; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662226 () Bool)

(assert start!662226)

(declare-fun b!6859028 () Bool)

(assert (=> b!6859028 true))

(declare-fun b!6859016 () Bool)

(declare-fun e!4135427 () Bool)

(declare-fun tp!1880895 () Bool)

(declare-fun tp!1880894 () Bool)

(assert (=> b!6859016 (= e!4135427 (and tp!1880895 tp!1880894))))

(declare-datatypes ((C!33642 0))(
  ( (C!33643 (val!26523 Int)) )
))
(declare-datatypes ((Regex!16686 0))(
  ( (ElementMatch!16686 (c!1276768 C!33642)) (Concat!25531 (regOne!33884 Regex!16686) (regTwo!33884 Regex!16686)) (EmptyExpr!16686) (Star!16686 (reg!17015 Regex!16686)) (EmptyLang!16686) (Union!16686 (regOne!33885 Regex!16686) (regTwo!33885 Regex!16686)) )
))
(declare-datatypes ((List!66357 0))(
  ( (Nil!66233) (Cons!66233 (h!72681 Regex!16686) (t!380100 List!66357)) )
))
(declare-datatypes ((Context!12140 0))(
  ( (Context!12141 (exprs!6570 List!66357)) )
))
(declare-fun setElem!47154 () Context!12140)

(declare-fun setRes!47154 () Bool)

(declare-fun tp!1880892 () Bool)

(declare-fun e!4135428 () Bool)

(declare-fun setNonEmpty!47154 () Bool)

(declare-fun inv!84963 (Context!12140) Bool)

(assert (=> setNonEmpty!47154 (= setRes!47154 (and tp!1880892 (inv!84963 setElem!47154) e!4135428))))

(declare-fun z!1189 () (Set Context!12140))

(declare-fun setRest!47154 () (Set Context!12140))

(assert (=> setNonEmpty!47154 (= z!1189 (set.union (set.insert setElem!47154 (as set.empty (Set Context!12140))) setRest!47154))))

(declare-fun b!6859017 () Bool)

(declare-fun e!4135425 () Bool)

(declare-fun tp_is_empty!42625 () Bool)

(declare-fun tp!1880901 () Bool)

(assert (=> b!6859017 (= e!4135425 (and tp_is_empty!42625 tp!1880901))))

(declare-fun b!6859018 () Bool)

(declare-fun res!2798810 () Bool)

(declare-fun e!4135430 () Bool)

(assert (=> b!6859018 (=> (not res!2798810) (not e!4135430))))

(declare-fun r!7292 () Regex!16686)

(declare-datatypes ((List!66358 0))(
  ( (Nil!66234) (Cons!66234 (h!72682 Context!12140) (t!380101 List!66358)) )
))
(declare-fun zl!343 () List!66358)

(declare-fun unfocusZipper!2428 (List!66358) Regex!16686)

(assert (=> b!6859018 (= res!2798810 (= r!7292 (unfocusZipper!2428 zl!343)))))

(declare-fun b!6859019 () Bool)

(declare-fun e!4135429 () Bool)

(declare-datatypes ((List!66359 0))(
  ( (Nil!66235) (Cons!66235 (h!72683 C!33642) (t!380102 List!66359)) )
))
(declare-fun s!2326 () List!66359)

(declare-fun matchZipper!2652 ((Set Context!12140) List!66359) Bool)

(declare-fun content!12999 (List!66358) (Set Context!12140))

(assert (=> b!6859019 (= e!4135429 (matchZipper!2652 (content!12999 zl!343) s!2326))))

(declare-fun setIsEmpty!47154 () Bool)

(assert (=> setIsEmpty!47154 setRes!47154))

(declare-fun b!6859020 () Bool)

(declare-fun tp!1880899 () Bool)

(assert (=> b!6859020 (= e!4135427 tp!1880899)))

(declare-fun res!2798811 () Bool)

(assert (=> start!662226 (=> (not res!2798811) (not e!4135430))))

(declare-fun validRegex!8422 (Regex!16686) Bool)

(assert (=> start!662226 (= res!2798811 (validRegex!8422 r!7292))))

(assert (=> start!662226 e!4135430))

(assert (=> start!662226 e!4135427))

(declare-fun condSetEmpty!47154 () Bool)

(assert (=> start!662226 (= condSetEmpty!47154 (= z!1189 (as set.empty (Set Context!12140))))))

(assert (=> start!662226 setRes!47154))

(declare-fun e!4135423 () Bool)

(assert (=> start!662226 e!4135423))

(assert (=> start!662226 e!4135425))

(declare-fun b!6859021 () Bool)

(declare-fun tp!1880897 () Bool)

(declare-fun tp!1880893 () Bool)

(assert (=> b!6859021 (= e!4135427 (and tp!1880897 tp!1880893))))

(declare-fun b!6859022 () Bool)

(declare-fun tp!1880896 () Bool)

(assert (=> b!6859022 (= e!4135428 tp!1880896)))

(declare-fun b!6859023 () Bool)

(declare-fun e!4135431 () Bool)

(assert (=> b!6859023 (= e!4135430 (not e!4135431))))

(declare-fun res!2798813 () Bool)

(assert (=> b!6859023 (=> res!2798813 e!4135431)))

(declare-fun e!4135426 () Bool)

(assert (=> b!6859023 (= res!2798813 e!4135426)))

(declare-fun res!2798817 () Bool)

(assert (=> b!6859023 (=> (not res!2798817) (not e!4135426))))

(assert (=> b!6859023 (= res!2798817 (is-Cons!66234 zl!343))))

(declare-fun lt!2457217 () Bool)

(declare-fun matchRSpec!3787 (Regex!16686 List!66359) Bool)

(assert (=> b!6859023 (= lt!2457217 (matchRSpec!3787 r!7292 s!2326))))

(declare-fun matchR!8869 (Regex!16686 List!66359) Bool)

(assert (=> b!6859023 (= lt!2457217 (matchR!8869 r!7292 s!2326))))

(declare-datatypes ((Unit!160127 0))(
  ( (Unit!160128) )
))
(declare-fun lt!2457220 () Unit!160127)

(declare-fun mainMatchTheorem!3787 (Regex!16686 List!66359) Unit!160127)

(assert (=> b!6859023 (= lt!2457220 (mainMatchTheorem!3787 r!7292 s!2326))))

(declare-fun b!6859024 () Bool)

(declare-fun res!2798814 () Bool)

(assert (=> b!6859024 (=> res!2798814 e!4135429)))

(assert (=> b!6859024 (= res!2798814 (not (matchZipper!2652 z!1189 s!2326)))))

(declare-fun b!6859025 () Bool)

(declare-fun e!4135424 () Bool)

(declare-fun tp!1880900 () Bool)

(assert (=> b!6859025 (= e!4135424 tp!1880900)))

(declare-fun b!6859026 () Bool)

(declare-fun res!2798812 () Bool)

(assert (=> b!6859026 (=> res!2798812 e!4135431)))

(declare-fun isEmpty!38598 (List!66358) Bool)

(assert (=> b!6859026 (= res!2798812 (isEmpty!38598 (t!380101 zl!343)))))

(declare-fun b!6859027 () Bool)

(declare-fun res!2798818 () Bool)

(assert (=> b!6859027 (=> (not res!2798818) (not e!4135430))))

(declare-fun toList!10470 ((Set Context!12140)) List!66358)

(assert (=> b!6859027 (= res!2798818 (= (toList!10470 z!1189) zl!343))))

(assert (=> b!6859028 (= e!4135431 e!4135429)))

(declare-fun res!2798809 () Bool)

(assert (=> b!6859028 (=> res!2798809 e!4135429)))

(assert (=> b!6859028 (= res!2798809 lt!2457217)))

(declare-fun lt!2457219 () List!66357)

(declare-fun lambda!387868 () Int)

(declare-fun exists!2804 (List!66357 Int) Bool)

(assert (=> b!6859028 (= lt!2457217 (exists!2804 lt!2457219 lambda!387868))))

(declare-fun lt!2457218 () Unit!160127)

(declare-fun matchRGenUnionSpec!325 (Regex!16686 List!66357 List!66359) Unit!160127)

(assert (=> b!6859028 (= lt!2457218 (matchRGenUnionSpec!325 r!7292 lt!2457219 s!2326))))

(declare-fun unfocusZipperList!2103 (List!66358) List!66357)

(assert (=> b!6859028 (= lt!2457219 (unfocusZipperList!2103 zl!343))))

(declare-fun b!6859029 () Bool)

(declare-fun res!2798815 () Bool)

(assert (=> b!6859029 (=> res!2798815 e!4135429)))

(assert (=> b!6859029 (= res!2798815 (exists!2804 lt!2457219 lambda!387868))))

(declare-fun b!6859030 () Bool)

(assert (=> b!6859030 (= e!4135426 (isEmpty!38598 (t!380101 zl!343)))))

(declare-fun tp!1880898 () Bool)

(declare-fun b!6859031 () Bool)

(assert (=> b!6859031 (= e!4135423 (and (inv!84963 (h!72682 zl!343)) e!4135424 tp!1880898))))

(declare-fun b!6859032 () Bool)

(assert (=> b!6859032 (= e!4135427 tp_is_empty!42625)))

(declare-fun b!6859033 () Bool)

(declare-fun res!2798816 () Bool)

(assert (=> b!6859033 (=> res!2798816 e!4135431)))

(assert (=> b!6859033 (= res!2798816 (or (not (is-Cons!66234 zl!343)) (is-Nil!66235 s!2326) (not (= zl!343 (Cons!66234 (h!72682 zl!343) (t!380101 zl!343))))))))

(assert (= (and start!662226 res!2798811) b!6859027))

(assert (= (and b!6859027 res!2798818) b!6859018))

(assert (= (and b!6859018 res!2798810) b!6859023))

(assert (= (and b!6859023 res!2798817) b!6859030))

(assert (= (and b!6859023 (not res!2798813)) b!6859033))

(assert (= (and b!6859033 (not res!2798816)) b!6859026))

(assert (= (and b!6859026 (not res!2798812)) b!6859028))

(assert (= (and b!6859028 (not res!2798809)) b!6859029))

(assert (= (and b!6859029 (not res!2798815)) b!6859024))

(assert (= (and b!6859024 (not res!2798814)) b!6859019))

(assert (= (and start!662226 (is-ElementMatch!16686 r!7292)) b!6859032))

(assert (= (and start!662226 (is-Concat!25531 r!7292)) b!6859021))

(assert (= (and start!662226 (is-Star!16686 r!7292)) b!6859020))

(assert (= (and start!662226 (is-Union!16686 r!7292)) b!6859016))

(assert (= (and start!662226 condSetEmpty!47154) setIsEmpty!47154))

(assert (= (and start!662226 (not condSetEmpty!47154)) setNonEmpty!47154))

(assert (= setNonEmpty!47154 b!6859022))

(assert (= b!6859031 b!6859025))

(assert (= (and start!662226 (is-Cons!66234 zl!343)) b!6859031))

(assert (= (and start!662226 (is-Cons!66235 s!2326)) b!6859017))

(declare-fun m!7594384 () Bool)

(assert (=> b!6859024 m!7594384))

(declare-fun m!7594386 () Bool)

(assert (=> b!6859019 m!7594386))

(assert (=> b!6859019 m!7594386))

(declare-fun m!7594388 () Bool)

(assert (=> b!6859019 m!7594388))

(declare-fun m!7594390 () Bool)

(assert (=> b!6859029 m!7594390))

(declare-fun m!7594392 () Bool)

(assert (=> b!6859026 m!7594392))

(declare-fun m!7594394 () Bool)

(assert (=> b!6859023 m!7594394))

(declare-fun m!7594396 () Bool)

(assert (=> b!6859023 m!7594396))

(declare-fun m!7594398 () Bool)

(assert (=> b!6859023 m!7594398))

(assert (=> b!6859030 m!7594392))

(declare-fun m!7594400 () Bool)

(assert (=> b!6859027 m!7594400))

(declare-fun m!7594402 () Bool)

(assert (=> start!662226 m!7594402))

(declare-fun m!7594404 () Bool)

(assert (=> b!6859031 m!7594404))

(declare-fun m!7594406 () Bool)

(assert (=> b!6859018 m!7594406))

(declare-fun m!7594408 () Bool)

(assert (=> setNonEmpty!47154 m!7594408))

(assert (=> b!6859028 m!7594390))

(declare-fun m!7594410 () Bool)

(assert (=> b!6859028 m!7594410))

(declare-fun m!7594412 () Bool)

(assert (=> b!6859028 m!7594412))

(push 1)

(assert (not b!6859016))

(assert tp_is_empty!42625)

(assert (not b!6859029))

(assert (not b!6859031))

(assert (not b!6859021))

(assert (not start!662226))

(assert (not b!6859023))

(assert (not setNonEmpty!47154))

(assert (not b!6859028))

(assert (not b!6859027))

(assert (not b!6859020))

(assert (not b!6859024))

(assert (not b!6859018))

(assert (not b!6859030))

(assert (not b!6859025))

(assert (not b!6859022))

(assert (not b!6859019))

(assert (not b!6859026))

(assert (not b!6859017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2155273 () Bool)

(declare-fun c!1276772 () Bool)

(declare-fun isEmpty!38600 (List!66359) Bool)

(assert (=> d!2155273 (= c!1276772 (isEmpty!38600 s!2326))))

(declare-fun e!4135465 () Bool)

(assert (=> d!2155273 (= (matchZipper!2652 (content!12999 zl!343) s!2326) e!4135465)))

(declare-fun b!6859100 () Bool)

(declare-fun nullableZipper!2361 ((Set Context!12140)) Bool)

(assert (=> b!6859100 (= e!4135465 (nullableZipper!2361 (content!12999 zl!343)))))

(declare-fun b!6859101 () Bool)

(declare-fun derivationStepZipper!2608 ((Set Context!12140) C!33642) (Set Context!12140))

(declare-fun head!13754 (List!66359) C!33642)

(declare-fun tail!12819 (List!66359) List!66359)

(assert (=> b!6859101 (= e!4135465 (matchZipper!2652 (derivationStepZipper!2608 (content!12999 zl!343) (head!13754 s!2326)) (tail!12819 s!2326)))))

(assert (= (and d!2155273 c!1276772) b!6859100))

(assert (= (and d!2155273 (not c!1276772)) b!6859101))

(declare-fun m!7594444 () Bool)

(assert (=> d!2155273 m!7594444))

(assert (=> b!6859100 m!7594386))

(declare-fun m!7594446 () Bool)

(assert (=> b!6859100 m!7594446))

(declare-fun m!7594448 () Bool)

(assert (=> b!6859101 m!7594448))

(assert (=> b!6859101 m!7594386))

(assert (=> b!6859101 m!7594448))

(declare-fun m!7594450 () Bool)

(assert (=> b!6859101 m!7594450))

(declare-fun m!7594452 () Bool)

(assert (=> b!6859101 m!7594452))

(assert (=> b!6859101 m!7594450))

(assert (=> b!6859101 m!7594452))

(declare-fun m!7594454 () Bool)

(assert (=> b!6859101 m!7594454))

(assert (=> b!6859019 d!2155273))

(declare-fun d!2155277 () Bool)

(declare-fun c!1276779 () Bool)

(assert (=> d!2155277 (= c!1276779 (is-Nil!66234 zl!343))))

(declare-fun e!4135482 () (Set Context!12140))

(assert (=> d!2155277 (= (content!12999 zl!343) e!4135482)))

(declare-fun b!6859124 () Bool)

(assert (=> b!6859124 (= e!4135482 (as set.empty (Set Context!12140)))))

(declare-fun b!6859125 () Bool)

(assert (=> b!6859125 (= e!4135482 (set.union (set.insert (h!72682 zl!343) (as set.empty (Set Context!12140))) (content!12999 (t!380101 zl!343))))))

(assert (= (and d!2155277 c!1276779) b!6859124))

(assert (= (and d!2155277 (not c!1276779)) b!6859125))

(declare-fun m!7594456 () Bool)

(assert (=> b!6859125 m!7594456))

(declare-fun m!7594458 () Bool)

(assert (=> b!6859125 m!7594458))

(assert (=> b!6859019 d!2155277))

(declare-fun bs!1833158 () Bool)

(declare-fun d!2155279 () Bool)

(assert (= bs!1833158 (and d!2155279 b!6859028)))

(declare-fun lambda!387876 () Int)

(assert (=> bs!1833158 (not (= lambda!387876 lambda!387868))))

(assert (=> d!2155279 true))

(declare-fun order!27689 () Int)

(declare-fun dynLambda!26491 (Int Int) Int)

(assert (=> d!2155279 (< (dynLambda!26491 order!27689 lambda!387868) (dynLambda!26491 order!27689 lambda!387876))))

(declare-fun forall!15871 (List!66357 Int) Bool)

(assert (=> d!2155279 (= (exists!2804 lt!2457219 lambda!387868) (not (forall!15871 lt!2457219 lambda!387876)))))

(declare-fun bs!1833159 () Bool)

(assert (= bs!1833159 d!2155279))

(declare-fun m!7594460 () Bool)

(assert (=> bs!1833159 m!7594460))

(assert (=> b!6859029 d!2155279))

(assert (=> b!6859028 d!2155279))

(declare-fun bs!1833160 () Bool)

(declare-fun d!2155281 () Bool)

(assert (= bs!1833160 (and d!2155281 b!6859028)))

(declare-fun lambda!387881 () Int)

(assert (=> bs!1833160 (not (= lambda!387881 lambda!387868))))

(declare-fun bs!1833161 () Bool)

(assert (= bs!1833161 (and d!2155281 d!2155279)))

(assert (=> bs!1833161 (not (= lambda!387881 lambda!387876))))

(declare-fun lambda!387882 () Int)

(assert (=> bs!1833160 (= lambda!387882 lambda!387868)))

(assert (=> bs!1833161 (not (= lambda!387882 lambda!387876))))

(declare-fun bs!1833162 () Bool)

(assert (= bs!1833162 d!2155281))

(assert (=> bs!1833162 (not (= lambda!387882 lambda!387881))))

(assert (=> d!2155281 true))

(assert (=> d!2155281 (= (matchR!8869 r!7292 s!2326) (exists!2804 lt!2457219 lambda!387882))))

(declare-fun lt!2457235 () Unit!160127)

(declare-fun choose!51114 (Regex!16686 List!66357 List!66359) Unit!160127)

(assert (=> d!2155281 (= lt!2457235 (choose!51114 r!7292 lt!2457219 s!2326))))

(assert (=> d!2155281 (forall!15871 lt!2457219 lambda!387881)))

(assert (=> d!2155281 (= (matchRGenUnionSpec!325 r!7292 lt!2457219 s!2326) lt!2457235)))

(assert (=> bs!1833162 m!7594396))

(declare-fun m!7594468 () Bool)

(assert (=> bs!1833162 m!7594468))

(declare-fun m!7594470 () Bool)

(assert (=> bs!1833162 m!7594470))

(declare-fun m!7594472 () Bool)

(assert (=> bs!1833162 m!7594472))

(assert (=> b!6859028 d!2155281))

(declare-fun bs!1833165 () Bool)

(declare-fun d!2155285 () Bool)

(assert (= bs!1833165 (and d!2155285 b!6859028)))

(declare-fun lambda!387888 () Int)

(assert (=> bs!1833165 (not (= lambda!387888 lambda!387868))))

(declare-fun bs!1833166 () Bool)

(assert (= bs!1833166 (and d!2155285 d!2155279)))

(assert (=> bs!1833166 (not (= lambda!387888 lambda!387876))))

(declare-fun bs!1833167 () Bool)

(assert (= bs!1833167 (and d!2155285 d!2155281)))

(assert (=> bs!1833167 (= lambda!387888 lambda!387881)))

(assert (=> bs!1833167 (not (= lambda!387888 lambda!387882))))

(declare-fun lt!2457238 () List!66357)

(assert (=> d!2155285 (forall!15871 lt!2457238 lambda!387888)))

(declare-fun e!4135494 () List!66357)

(assert (=> d!2155285 (= lt!2457238 e!4135494)))

(declare-fun c!1276784 () Bool)

(assert (=> d!2155285 (= c!1276784 (is-Cons!66234 zl!343))))

(assert (=> d!2155285 (= (unfocusZipperList!2103 zl!343) lt!2457238)))

(declare-fun b!6859143 () Bool)

(declare-fun generalisedConcat!2275 (List!66357) Regex!16686)

(assert (=> b!6859143 (= e!4135494 (Cons!66233 (generalisedConcat!2275 (exprs!6570 (h!72682 zl!343))) (unfocusZipperList!2103 (t!380101 zl!343))))))

(declare-fun b!6859144 () Bool)

(assert (=> b!6859144 (= e!4135494 Nil!66233)))

(assert (= (and d!2155285 c!1276784) b!6859143))

(assert (= (and d!2155285 (not c!1276784)) b!6859144))

(declare-fun m!7594476 () Bool)

(assert (=> d!2155285 m!7594476))

(declare-fun m!7594478 () Bool)

(assert (=> b!6859143 m!7594478))

(declare-fun m!7594480 () Bool)

(assert (=> b!6859143 m!7594480))

(assert (=> b!6859028 d!2155285))

(declare-fun d!2155289 () Bool)

(declare-fun lt!2457241 () Regex!16686)

(assert (=> d!2155289 (validRegex!8422 lt!2457241)))

(declare-fun generalisedUnion!2522 (List!66357) Regex!16686)

(assert (=> d!2155289 (= lt!2457241 (generalisedUnion!2522 (unfocusZipperList!2103 zl!343)))))

(assert (=> d!2155289 (= (unfocusZipper!2428 zl!343) lt!2457241)))

(declare-fun bs!1833168 () Bool)

(assert (= bs!1833168 d!2155289))

(declare-fun m!7594482 () Bool)

(assert (=> bs!1833168 m!7594482))

(assert (=> bs!1833168 m!7594412))

(assert (=> bs!1833168 m!7594412))

(declare-fun m!7594484 () Bool)

(assert (=> bs!1833168 m!7594484))

(assert (=> b!6859018 d!2155289))

(declare-fun d!2155291 () Bool)

(declare-fun e!4135497 () Bool)

(assert (=> d!2155291 e!4135497))

(declare-fun res!2798872 () Bool)

(assert (=> d!2155291 (=> (not res!2798872) (not e!4135497))))

(declare-fun lt!2457247 () List!66358)

(declare-fun noDuplicate!2450 (List!66358) Bool)

(assert (=> d!2155291 (= res!2798872 (noDuplicate!2450 lt!2457247))))

(declare-fun choose!51115 ((Set Context!12140)) List!66358)

(assert (=> d!2155291 (= lt!2457247 (choose!51115 z!1189))))

(assert (=> d!2155291 (= (toList!10470 z!1189) lt!2457247)))

(declare-fun b!6859147 () Bool)

(assert (=> b!6859147 (= e!4135497 (= (content!12999 lt!2457247) z!1189))))

(assert (= (and d!2155291 res!2798872) b!6859147))

(declare-fun m!7594490 () Bool)

(assert (=> d!2155291 m!7594490))

(declare-fun m!7594492 () Bool)

(assert (=> d!2155291 m!7594492))

(declare-fun m!7594494 () Bool)

(assert (=> b!6859147 m!7594494))

(assert (=> b!6859027 d!2155291))

(declare-fun d!2155295 () Bool)

(assert (=> d!2155295 (= (isEmpty!38598 (t!380101 zl!343)) (is-Nil!66234 (t!380101 zl!343)))))

(assert (=> b!6859026 d!2155295))

(declare-fun b!6859169 () Bool)

(declare-fun e!4135518 () Bool)

(declare-fun e!4135520 () Bool)

(assert (=> b!6859169 (= e!4135518 e!4135520)))

(declare-fun res!2798887 () Bool)

(assert (=> b!6859169 (=> (not res!2798887) (not e!4135520))))

(declare-fun call!624785 () Bool)

(assert (=> b!6859169 (= res!2798887 call!624785)))

(declare-fun b!6859170 () Bool)

(declare-fun e!4135516 () Bool)

(declare-fun e!4135515 () Bool)

(assert (=> b!6859170 (= e!4135516 e!4135515)))

(declare-fun c!1276789 () Bool)

(assert (=> b!6859170 (= c!1276789 (is-Star!16686 r!7292))))

(declare-fun b!6859171 () Bool)

(declare-fun e!4135519 () Bool)

(declare-fun call!624784 () Bool)

(assert (=> b!6859171 (= e!4135519 call!624784)))

(declare-fun b!6859172 () Bool)

(declare-fun res!2798890 () Bool)

(assert (=> b!6859172 (=> (not res!2798890) (not e!4135519))))

(assert (=> b!6859172 (= res!2798890 call!624785)))

(declare-fun e!4135521 () Bool)

(assert (=> b!6859172 (= e!4135521 e!4135519)))

(declare-fun b!6859173 () Bool)

(declare-fun e!4135517 () Bool)

(assert (=> b!6859173 (= e!4135515 e!4135517)))

(declare-fun res!2798886 () Bool)

(declare-fun nullable!6647 (Regex!16686) Bool)

(assert (=> b!6859173 (= res!2798886 (not (nullable!6647 (reg!17015 r!7292))))))

(assert (=> b!6859173 (=> (not res!2798886) (not e!4135517))))

(declare-fun b!6859174 () Bool)

(assert (=> b!6859174 (= e!4135515 e!4135521)))

(declare-fun c!1276790 () Bool)

(assert (=> b!6859174 (= c!1276790 (is-Union!16686 r!7292))))

(declare-fun b!6859175 () Bool)

(assert (=> b!6859175 (= e!4135520 call!624784)))

(declare-fun bm!624778 () Bool)

(assert (=> bm!624778 (= call!624784 (validRegex!8422 (ite c!1276790 (regTwo!33885 r!7292) (regTwo!33884 r!7292))))))

(declare-fun d!2155297 () Bool)

(declare-fun res!2798888 () Bool)

(assert (=> d!2155297 (=> res!2798888 e!4135516)))

(assert (=> d!2155297 (= res!2798888 (is-ElementMatch!16686 r!7292))))

(assert (=> d!2155297 (= (validRegex!8422 r!7292) e!4135516)))

(declare-fun call!624783 () Bool)

(declare-fun bm!624779 () Bool)

(assert (=> bm!624779 (= call!624783 (validRegex!8422 (ite c!1276789 (reg!17015 r!7292) (ite c!1276790 (regOne!33885 r!7292) (regOne!33884 r!7292)))))))

(declare-fun bm!624780 () Bool)

(assert (=> bm!624780 (= call!624785 call!624783)))

(declare-fun b!6859176 () Bool)

(declare-fun res!2798889 () Bool)

(assert (=> b!6859176 (=> res!2798889 e!4135518)))

(assert (=> b!6859176 (= res!2798889 (not (is-Concat!25531 r!7292)))))

(assert (=> b!6859176 (= e!4135521 e!4135518)))

(declare-fun b!6859177 () Bool)

(assert (=> b!6859177 (= e!4135517 call!624783)))

(assert (= (and d!2155297 (not res!2798888)) b!6859170))

(assert (= (and b!6859170 c!1276789) b!6859173))

(assert (= (and b!6859170 (not c!1276789)) b!6859174))

(assert (= (and b!6859173 res!2798886) b!6859177))

(assert (= (and b!6859174 c!1276790) b!6859172))

(assert (= (and b!6859174 (not c!1276790)) b!6859176))

(assert (= (and b!6859172 res!2798890) b!6859171))

(assert (= (and b!6859176 (not res!2798889)) b!6859169))

(assert (= (and b!6859169 res!2798887) b!6859175))

(assert (= (or b!6859171 b!6859175) bm!624778))

(assert (= (or b!6859172 b!6859169) bm!624780))

(assert (= (or b!6859177 bm!624780) bm!624779))

(declare-fun m!7594502 () Bool)

(assert (=> b!6859173 m!7594502))

(declare-fun m!7594504 () Bool)

(assert (=> bm!624778 m!7594504))

(declare-fun m!7594506 () Bool)

(assert (=> bm!624779 m!7594506))

(assert (=> start!662226 d!2155297))

(declare-fun bs!1833173 () Bool)

(declare-fun d!2155301 () Bool)

(assert (= bs!1833173 (and d!2155301 d!2155281)))

(declare-fun lambda!387894 () Int)

(assert (=> bs!1833173 (not (= lambda!387894 lambda!387882))))

(assert (=> bs!1833173 (= lambda!387894 lambda!387881)))

(declare-fun bs!1833174 () Bool)

(assert (= bs!1833174 (and d!2155301 b!6859028)))

(assert (=> bs!1833174 (not (= lambda!387894 lambda!387868))))

(declare-fun bs!1833175 () Bool)

(assert (= bs!1833175 (and d!2155301 d!2155279)))

(assert (=> bs!1833175 (not (= lambda!387894 lambda!387876))))

(declare-fun bs!1833176 () Bool)

(assert (= bs!1833176 (and d!2155301 d!2155285)))

(assert (=> bs!1833176 (= lambda!387894 lambda!387888)))

(assert (=> d!2155301 (= (inv!84963 setElem!47154) (forall!15871 (exprs!6570 setElem!47154) lambda!387894))))

(declare-fun bs!1833177 () Bool)

(assert (= bs!1833177 d!2155301))

(declare-fun m!7594510 () Bool)

(assert (=> bs!1833177 m!7594510))

(assert (=> setNonEmpty!47154 d!2155301))

(declare-fun d!2155305 () Bool)

(declare-fun c!1276791 () Bool)

(assert (=> d!2155305 (= c!1276791 (isEmpty!38600 s!2326))))

(declare-fun e!4135522 () Bool)

(assert (=> d!2155305 (= (matchZipper!2652 z!1189 s!2326) e!4135522)))

(declare-fun b!6859180 () Bool)

(assert (=> b!6859180 (= e!4135522 (nullableZipper!2361 z!1189))))

(declare-fun b!6859181 () Bool)

(assert (=> b!6859181 (= e!4135522 (matchZipper!2652 (derivationStepZipper!2608 z!1189 (head!13754 s!2326)) (tail!12819 s!2326)))))

(assert (= (and d!2155305 c!1276791) b!6859180))

(assert (= (and d!2155305 (not c!1276791)) b!6859181))

(assert (=> d!2155305 m!7594444))

(declare-fun m!7594512 () Bool)

(assert (=> b!6859180 m!7594512))

(assert (=> b!6859181 m!7594448))

(assert (=> b!6859181 m!7594448))

(declare-fun m!7594514 () Bool)

(assert (=> b!6859181 m!7594514))

(assert (=> b!6859181 m!7594452))

(assert (=> b!6859181 m!7594514))

(assert (=> b!6859181 m!7594452))

(declare-fun m!7594516 () Bool)

(assert (=> b!6859181 m!7594516))

(assert (=> b!6859024 d!2155305))

(declare-fun b!6859216 () Bool)

(assert (=> b!6859216 true))

(assert (=> b!6859216 true))

(declare-fun bs!1833182 () Bool)

(declare-fun b!6859217 () Bool)

(assert (= bs!1833182 (and b!6859217 b!6859216)))

(declare-fun lambda!387908 () Int)

(declare-fun lambda!387905 () Int)

(assert (=> bs!1833182 (not (= lambda!387908 lambda!387905))))

(assert (=> b!6859217 true))

(assert (=> b!6859217 true))

(declare-fun e!4135543 () Bool)

(declare-fun call!624791 () Bool)

(assert (=> b!6859216 (= e!4135543 call!624791)))

(declare-fun e!4135549 () Bool)

(assert (=> b!6859217 (= e!4135549 call!624791)))

(declare-fun bm!624785 () Bool)

(declare-fun c!1276800 () Bool)

(declare-fun Exists!3746 (Int) Bool)

(assert (=> bm!624785 (= call!624791 (Exists!3746 (ite c!1276800 lambda!387905 lambda!387908)))))

(declare-fun b!6859218 () Bool)

(declare-fun e!4135546 () Bool)

(assert (=> b!6859218 (= e!4135546 e!4135549)))

(assert (=> b!6859218 (= c!1276800 (is-Star!16686 r!7292))))

(declare-fun b!6859219 () Bool)

(declare-fun res!2798909 () Bool)

(assert (=> b!6859219 (=> res!2798909 e!4135543)))

(declare-fun call!624790 () Bool)

(assert (=> b!6859219 (= res!2798909 call!624790)))

(assert (=> b!6859219 (= e!4135549 e!4135543)))

(declare-fun d!2155307 () Bool)

(declare-fun c!1276802 () Bool)

(assert (=> d!2155307 (= c!1276802 (is-EmptyExpr!16686 r!7292))))

(declare-fun e!4135544 () Bool)

(assert (=> d!2155307 (= (matchRSpec!3787 r!7292 s!2326) e!4135544)))

(declare-fun b!6859220 () Bool)

(declare-fun c!1276803 () Bool)

(assert (=> b!6859220 (= c!1276803 (is-ElementMatch!16686 r!7292))))

(declare-fun e!4135545 () Bool)

(declare-fun e!4135547 () Bool)

(assert (=> b!6859220 (= e!4135545 e!4135547)))

(declare-fun b!6859221 () Bool)

(assert (=> b!6859221 (= e!4135544 call!624790)))

(declare-fun b!6859222 () Bool)

(declare-fun c!1276801 () Bool)

(assert (=> b!6859222 (= c!1276801 (is-Union!16686 r!7292))))

(assert (=> b!6859222 (= e!4135547 e!4135546)))

(declare-fun b!6859223 () Bool)

(declare-fun e!4135548 () Bool)

(assert (=> b!6859223 (= e!4135546 e!4135548)))

(declare-fun res!2798911 () Bool)

(assert (=> b!6859223 (= res!2798911 (matchRSpec!3787 (regOne!33885 r!7292) s!2326))))

(assert (=> b!6859223 (=> res!2798911 e!4135548)))

(declare-fun b!6859224 () Bool)

(assert (=> b!6859224 (= e!4135548 (matchRSpec!3787 (regTwo!33885 r!7292) s!2326))))

(declare-fun b!6859225 () Bool)

(assert (=> b!6859225 (= e!4135547 (= s!2326 (Cons!66235 (c!1276768 r!7292) Nil!66235)))))

(declare-fun b!6859226 () Bool)

(assert (=> b!6859226 (= e!4135544 e!4135545)))

(declare-fun res!2798910 () Bool)

(assert (=> b!6859226 (= res!2798910 (not (is-EmptyLang!16686 r!7292)))))

(assert (=> b!6859226 (=> (not res!2798910) (not e!4135545))))

(declare-fun bm!624786 () Bool)

(assert (=> bm!624786 (= call!624790 (isEmpty!38600 s!2326))))

(assert (= (and d!2155307 c!1276802) b!6859221))

(assert (= (and d!2155307 (not c!1276802)) b!6859226))

(assert (= (and b!6859226 res!2798910) b!6859220))

(assert (= (and b!6859220 c!1276803) b!6859225))

(assert (= (and b!6859220 (not c!1276803)) b!6859222))

(assert (= (and b!6859222 c!1276801) b!6859223))

(assert (= (and b!6859222 (not c!1276801)) b!6859218))

(assert (= (and b!6859223 (not res!2798911)) b!6859224))

(assert (= (and b!6859218 c!1276800) b!6859219))

(assert (= (and b!6859218 (not c!1276800)) b!6859217))

(assert (= (and b!6859219 (not res!2798909)) b!6859216))

(assert (= (or b!6859216 b!6859217) bm!624785))

(assert (= (or b!6859221 b!6859219) bm!624786))

(declare-fun m!7594524 () Bool)

(assert (=> bm!624785 m!7594524))

(declare-fun m!7594526 () Bool)

(assert (=> b!6859223 m!7594526))

(declare-fun m!7594528 () Bool)

(assert (=> b!6859224 m!7594528))

(assert (=> bm!624786 m!7594444))

(assert (=> b!6859023 d!2155307))

(declare-fun b!6859265 () Bool)

(declare-fun res!2798935 () Bool)

(declare-fun e!4135567 () Bool)

(assert (=> b!6859265 (=> res!2798935 e!4135567)))

(declare-fun e!4135568 () Bool)

(assert (=> b!6859265 (= res!2798935 e!4135568)))

(declare-fun res!2798928 () Bool)

(assert (=> b!6859265 (=> (not res!2798928) (not e!4135568))))

(declare-fun lt!2457259 () Bool)

(assert (=> b!6859265 (= res!2798928 lt!2457259)))

(declare-fun b!6859266 () Bool)

(declare-fun res!2798932 () Bool)

(assert (=> b!6859266 (=> res!2798932 e!4135567)))

(assert (=> b!6859266 (= res!2798932 (not (is-ElementMatch!16686 r!7292)))))

(declare-fun e!4135570 () Bool)

(assert (=> b!6859266 (= e!4135570 e!4135567)))

(declare-fun b!6859267 () Bool)

(assert (=> b!6859267 (= e!4135570 (not lt!2457259))))

(declare-fun d!2155311 () Bool)

(declare-fun e!4135569 () Bool)

(assert (=> d!2155311 e!4135569))

(declare-fun c!1276813 () Bool)

(assert (=> d!2155311 (= c!1276813 (is-EmptyExpr!16686 r!7292))))

(declare-fun e!4135573 () Bool)

(assert (=> d!2155311 (= lt!2457259 e!4135573)))

(declare-fun c!1276815 () Bool)

(assert (=> d!2155311 (= c!1276815 (isEmpty!38600 s!2326))))

(assert (=> d!2155311 (validRegex!8422 r!7292)))

(assert (=> d!2155311 (= (matchR!8869 r!7292 s!2326) lt!2457259)))

(declare-fun b!6859268 () Bool)

(assert (=> b!6859268 (= e!4135569 e!4135570)))

(declare-fun c!1276814 () Bool)

(assert (=> b!6859268 (= c!1276814 (is-EmptyLang!16686 r!7292))))

(declare-fun b!6859269 () Bool)

(declare-fun e!4135572 () Bool)

(declare-fun e!4135571 () Bool)

(assert (=> b!6859269 (= e!4135572 e!4135571)))

(declare-fun res!2798933 () Bool)

(assert (=> b!6859269 (=> res!2798933 e!4135571)))

(declare-fun call!624794 () Bool)

(assert (=> b!6859269 (= res!2798933 call!624794)))

(declare-fun b!6859270 () Bool)

(assert (=> b!6859270 (= e!4135568 (= (head!13754 s!2326) (c!1276768 r!7292)))))

(declare-fun b!6859271 () Bool)

(declare-fun res!2798931 () Bool)

(assert (=> b!6859271 (=> res!2798931 e!4135571)))

(assert (=> b!6859271 (= res!2798931 (not (isEmpty!38600 (tail!12819 s!2326))))))

(declare-fun b!6859272 () Bool)

(assert (=> b!6859272 (= e!4135573 (nullable!6647 r!7292))))

(declare-fun bm!624789 () Bool)

(assert (=> bm!624789 (= call!624794 (isEmpty!38600 s!2326))))

(declare-fun b!6859273 () Bool)

(assert (=> b!6859273 (= e!4135567 e!4135572)))

(declare-fun res!2798934 () Bool)

(assert (=> b!6859273 (=> (not res!2798934) (not e!4135572))))

(assert (=> b!6859273 (= res!2798934 (not lt!2457259))))

(declare-fun b!6859274 () Bool)

(assert (=> b!6859274 (= e!4135569 (= lt!2457259 call!624794))))

(declare-fun b!6859275 () Bool)

(declare-fun res!2798930 () Bool)

(assert (=> b!6859275 (=> (not res!2798930) (not e!4135568))))

(assert (=> b!6859275 (= res!2798930 (isEmpty!38600 (tail!12819 s!2326)))))

(declare-fun b!6859276 () Bool)

(declare-fun res!2798929 () Bool)

(assert (=> b!6859276 (=> (not res!2798929) (not e!4135568))))

(assert (=> b!6859276 (= res!2798929 (not call!624794))))

(declare-fun b!6859277 () Bool)

(declare-fun derivativeStep!5330 (Regex!16686 C!33642) Regex!16686)

(assert (=> b!6859277 (= e!4135573 (matchR!8869 (derivativeStep!5330 r!7292 (head!13754 s!2326)) (tail!12819 s!2326)))))

(declare-fun b!6859278 () Bool)

(assert (=> b!6859278 (= e!4135571 (not (= (head!13754 s!2326) (c!1276768 r!7292))))))

(assert (= (and d!2155311 c!1276815) b!6859272))

(assert (= (and d!2155311 (not c!1276815)) b!6859277))

(assert (= (and d!2155311 c!1276813) b!6859274))

(assert (= (and d!2155311 (not c!1276813)) b!6859268))

(assert (= (and b!6859268 c!1276814) b!6859267))

(assert (= (and b!6859268 (not c!1276814)) b!6859266))

(assert (= (and b!6859266 (not res!2798932)) b!6859265))

(assert (= (and b!6859265 res!2798928) b!6859276))

(assert (= (and b!6859276 res!2798929) b!6859275))

(assert (= (and b!6859275 res!2798930) b!6859270))

(assert (= (and b!6859265 (not res!2798935)) b!6859273))

(assert (= (and b!6859273 res!2798934) b!6859269))

(assert (= (and b!6859269 (not res!2798933)) b!6859271))

(assert (= (and b!6859271 (not res!2798931)) b!6859278))

(assert (= (or b!6859274 b!6859269 b!6859276) bm!624789))

(assert (=> bm!624789 m!7594444))

(assert (=> b!6859275 m!7594452))

(assert (=> b!6859275 m!7594452))

(declare-fun m!7594536 () Bool)

(assert (=> b!6859275 m!7594536))

(assert (=> b!6859277 m!7594448))

(assert (=> b!6859277 m!7594448))

(declare-fun m!7594538 () Bool)

(assert (=> b!6859277 m!7594538))

(assert (=> b!6859277 m!7594452))

(assert (=> b!6859277 m!7594538))

(assert (=> b!6859277 m!7594452))

(declare-fun m!7594540 () Bool)

(assert (=> b!6859277 m!7594540))

(declare-fun m!7594542 () Bool)

(assert (=> b!6859272 m!7594542))

(assert (=> b!6859271 m!7594452))

(assert (=> b!6859271 m!7594452))

(assert (=> b!6859271 m!7594536))

(assert (=> b!6859278 m!7594448))

(assert (=> d!2155311 m!7594444))

(assert (=> d!2155311 m!7594402))

(assert (=> b!6859270 m!7594448))

(assert (=> b!6859023 d!2155311))

(declare-fun d!2155317 () Bool)

(assert (=> d!2155317 (= (matchR!8869 r!7292 s!2326) (matchRSpec!3787 r!7292 s!2326))))

(declare-fun lt!2457262 () Unit!160127)

(declare-fun choose!51116 (Regex!16686 List!66359) Unit!160127)

(assert (=> d!2155317 (= lt!2457262 (choose!51116 r!7292 s!2326))))

(assert (=> d!2155317 (validRegex!8422 r!7292)))

(assert (=> d!2155317 (= (mainMatchTheorem!3787 r!7292 s!2326) lt!2457262)))

(declare-fun bs!1833187 () Bool)

(assert (= bs!1833187 d!2155317))

(assert (=> bs!1833187 m!7594396))

(assert (=> bs!1833187 m!7594394))

(declare-fun m!7594544 () Bool)

(assert (=> bs!1833187 m!7594544))

(assert (=> bs!1833187 m!7594402))

(assert (=> b!6859023 d!2155317))

(declare-fun bs!1833188 () Bool)

(declare-fun d!2155319 () Bool)

(assert (= bs!1833188 (and d!2155319 d!2155281)))

(declare-fun lambda!387910 () Int)

(assert (=> bs!1833188 (not (= lambda!387910 lambda!387882))))

(assert (=> bs!1833188 (= lambda!387910 lambda!387881)))

(declare-fun bs!1833189 () Bool)

(assert (= bs!1833189 (and d!2155319 b!6859028)))

(assert (=> bs!1833189 (not (= lambda!387910 lambda!387868))))

(declare-fun bs!1833190 () Bool)

(assert (= bs!1833190 (and d!2155319 d!2155279)))

(assert (=> bs!1833190 (not (= lambda!387910 lambda!387876))))

(declare-fun bs!1833191 () Bool)

(assert (= bs!1833191 (and d!2155319 d!2155285)))

(assert (=> bs!1833191 (= lambda!387910 lambda!387888)))

(declare-fun bs!1833192 () Bool)

(assert (= bs!1833192 (and d!2155319 d!2155301)))

(assert (=> bs!1833192 (= lambda!387910 lambda!387894)))

(assert (=> d!2155319 (= (inv!84963 (h!72682 zl!343)) (forall!15871 (exprs!6570 (h!72682 zl!343)) lambda!387910))))

(declare-fun bs!1833193 () Bool)

(assert (= bs!1833193 d!2155319))

(declare-fun m!7594546 () Bool)

(assert (=> bs!1833193 m!7594546))

(assert (=> b!6859031 d!2155319))

(assert (=> b!6859030 d!2155295))

(declare-fun b!6859305 () Bool)

(declare-fun e!4135590 () Bool)

(declare-fun tp!1880936 () Bool)

(declare-fun tp!1880937 () Bool)

(assert (=> b!6859305 (= e!4135590 (and tp!1880936 tp!1880937))))

(assert (=> b!6859022 (= tp!1880896 e!4135590)))

(assert (= (and b!6859022 (is-Cons!66233 (exprs!6570 setElem!47154))) b!6859305))

(declare-fun b!6859310 () Bool)

(declare-fun e!4135593 () Bool)

(declare-fun tp!1880940 () Bool)

(assert (=> b!6859310 (= e!4135593 (and tp_is_empty!42625 tp!1880940))))

(assert (=> b!6859017 (= tp!1880901 e!4135593)))

(assert (= (and b!6859017 (is-Cons!66235 (t!380102 s!2326))) b!6859310))

(declare-fun b!6859329 () Bool)

(declare-fun e!4135598 () Bool)

(declare-fun tp!1880953 () Bool)

(assert (=> b!6859329 (= e!4135598 tp!1880953)))

(declare-fun b!6859327 () Bool)

(assert (=> b!6859327 (= e!4135598 tp_is_empty!42625)))

(assert (=> b!6859021 (= tp!1880897 e!4135598)))

(declare-fun b!6859330 () Bool)

(declare-fun tp!1880952 () Bool)

(declare-fun tp!1880951 () Bool)

(assert (=> b!6859330 (= e!4135598 (and tp!1880952 tp!1880951))))

(declare-fun b!6859328 () Bool)

(declare-fun tp!1880955 () Bool)

(declare-fun tp!1880954 () Bool)

(assert (=> b!6859328 (= e!4135598 (and tp!1880955 tp!1880954))))

(assert (= (and b!6859021 (is-ElementMatch!16686 (regOne!33884 r!7292))) b!6859327))

(assert (= (and b!6859021 (is-Concat!25531 (regOne!33884 r!7292))) b!6859328))

(assert (= (and b!6859021 (is-Star!16686 (regOne!33884 r!7292))) b!6859329))

(assert (= (and b!6859021 (is-Union!16686 (regOne!33884 r!7292))) b!6859330))

(declare-fun b!6859333 () Bool)

(declare-fun e!4135599 () Bool)

(declare-fun tp!1880958 () Bool)

(assert (=> b!6859333 (= e!4135599 tp!1880958)))

(declare-fun b!6859331 () Bool)

(assert (=> b!6859331 (= e!4135599 tp_is_empty!42625)))

(assert (=> b!6859021 (= tp!1880893 e!4135599)))

(declare-fun b!6859334 () Bool)

(declare-fun tp!1880957 () Bool)

(declare-fun tp!1880956 () Bool)

(assert (=> b!6859334 (= e!4135599 (and tp!1880957 tp!1880956))))

(declare-fun b!6859332 () Bool)

(declare-fun tp!1880960 () Bool)

(declare-fun tp!1880959 () Bool)

(assert (=> b!6859332 (= e!4135599 (and tp!1880960 tp!1880959))))

(assert (= (and b!6859021 (is-ElementMatch!16686 (regTwo!33884 r!7292))) b!6859331))

(assert (= (and b!6859021 (is-Concat!25531 (regTwo!33884 r!7292))) b!6859332))

(assert (= (and b!6859021 (is-Star!16686 (regTwo!33884 r!7292))) b!6859333))

(assert (= (and b!6859021 (is-Union!16686 (regTwo!33884 r!7292))) b!6859334))

(declare-fun b!6859337 () Bool)

(declare-fun e!4135600 () Bool)

(declare-fun tp!1880963 () Bool)

(assert (=> b!6859337 (= e!4135600 tp!1880963)))

(declare-fun b!6859335 () Bool)

(assert (=> b!6859335 (= e!4135600 tp_is_empty!42625)))

(assert (=> b!6859020 (= tp!1880899 e!4135600)))

(declare-fun b!6859338 () Bool)

(declare-fun tp!1880962 () Bool)

(declare-fun tp!1880961 () Bool)

(assert (=> b!6859338 (= e!4135600 (and tp!1880962 tp!1880961))))

(declare-fun b!6859336 () Bool)

(declare-fun tp!1880965 () Bool)

(declare-fun tp!1880964 () Bool)

(assert (=> b!6859336 (= e!4135600 (and tp!1880965 tp!1880964))))

(assert (= (and b!6859020 (is-ElementMatch!16686 (reg!17015 r!7292))) b!6859335))

(assert (= (and b!6859020 (is-Concat!25531 (reg!17015 r!7292))) b!6859336))

(assert (= (and b!6859020 (is-Star!16686 (reg!17015 r!7292))) b!6859337))

(assert (= (and b!6859020 (is-Union!16686 (reg!17015 r!7292))) b!6859338))

(declare-fun condSetEmpty!47160 () Bool)

(assert (=> setNonEmpty!47154 (= condSetEmpty!47160 (= setRest!47154 (as set.empty (Set Context!12140))))))

(declare-fun setRes!47160 () Bool)

(assert (=> setNonEmpty!47154 (= tp!1880892 setRes!47160)))

(declare-fun setIsEmpty!47160 () Bool)

(assert (=> setIsEmpty!47160 setRes!47160))

(declare-fun setElem!47160 () Context!12140)

(declare-fun tp!1880971 () Bool)

(declare-fun e!4135603 () Bool)

(declare-fun setNonEmpty!47160 () Bool)

(assert (=> setNonEmpty!47160 (= setRes!47160 (and tp!1880971 (inv!84963 setElem!47160) e!4135603))))

(declare-fun setRest!47160 () (Set Context!12140))

(assert (=> setNonEmpty!47160 (= setRest!47154 (set.union (set.insert setElem!47160 (as set.empty (Set Context!12140))) setRest!47160))))

(declare-fun b!6859343 () Bool)

(declare-fun tp!1880970 () Bool)

(assert (=> b!6859343 (= e!4135603 tp!1880970)))

(assert (= (and setNonEmpty!47154 condSetEmpty!47160) setIsEmpty!47160))

(assert (= (and setNonEmpty!47154 (not condSetEmpty!47160)) setNonEmpty!47160))

(assert (= setNonEmpty!47160 b!6859343))

(declare-fun m!7594548 () Bool)

(assert (=> setNonEmpty!47160 m!7594548))

(declare-fun b!6859351 () Bool)

(declare-fun e!4135609 () Bool)

(declare-fun tp!1880976 () Bool)

(assert (=> b!6859351 (= e!4135609 tp!1880976)))

(declare-fun e!4135608 () Bool)

(declare-fun b!6859350 () Bool)

(declare-fun tp!1880977 () Bool)

(assert (=> b!6859350 (= e!4135608 (and (inv!84963 (h!72682 (t!380101 zl!343))) e!4135609 tp!1880977))))

(assert (=> b!6859031 (= tp!1880898 e!4135608)))

(assert (= b!6859350 b!6859351))

(assert (= (and b!6859031 (is-Cons!66234 (t!380101 zl!343))) b!6859350))

(declare-fun m!7594550 () Bool)

(assert (=> b!6859350 m!7594550))

(declare-fun b!6859354 () Bool)

(declare-fun e!4135610 () Bool)

(declare-fun tp!1880980 () Bool)

(assert (=> b!6859354 (= e!4135610 tp!1880980)))

(declare-fun b!6859352 () Bool)

(assert (=> b!6859352 (= e!4135610 tp_is_empty!42625)))

(assert (=> b!6859016 (= tp!1880895 e!4135610)))

(declare-fun b!6859355 () Bool)

(declare-fun tp!1880979 () Bool)

(declare-fun tp!1880978 () Bool)

(assert (=> b!6859355 (= e!4135610 (and tp!1880979 tp!1880978))))

(declare-fun b!6859353 () Bool)

(declare-fun tp!1880982 () Bool)

(declare-fun tp!1880981 () Bool)

(assert (=> b!6859353 (= e!4135610 (and tp!1880982 tp!1880981))))

(assert (= (and b!6859016 (is-ElementMatch!16686 (regOne!33885 r!7292))) b!6859352))

(assert (= (and b!6859016 (is-Concat!25531 (regOne!33885 r!7292))) b!6859353))

(assert (= (and b!6859016 (is-Star!16686 (regOne!33885 r!7292))) b!6859354))

(assert (= (and b!6859016 (is-Union!16686 (regOne!33885 r!7292))) b!6859355))

(declare-fun b!6859358 () Bool)

(declare-fun e!4135611 () Bool)

(declare-fun tp!1880985 () Bool)

(assert (=> b!6859358 (= e!4135611 tp!1880985)))

(declare-fun b!6859356 () Bool)

(assert (=> b!6859356 (= e!4135611 tp_is_empty!42625)))

(assert (=> b!6859016 (= tp!1880894 e!4135611)))

(declare-fun b!6859359 () Bool)

(declare-fun tp!1880984 () Bool)

(declare-fun tp!1880983 () Bool)

(assert (=> b!6859359 (= e!4135611 (and tp!1880984 tp!1880983))))

(declare-fun b!6859357 () Bool)

(declare-fun tp!1880987 () Bool)

(declare-fun tp!1880986 () Bool)

(assert (=> b!6859357 (= e!4135611 (and tp!1880987 tp!1880986))))

(assert (= (and b!6859016 (is-ElementMatch!16686 (regTwo!33885 r!7292))) b!6859356))

(assert (= (and b!6859016 (is-Concat!25531 (regTwo!33885 r!7292))) b!6859357))

(assert (= (and b!6859016 (is-Star!16686 (regTwo!33885 r!7292))) b!6859358))

(assert (= (and b!6859016 (is-Union!16686 (regTwo!33885 r!7292))) b!6859359))

(declare-fun b!6859360 () Bool)

(declare-fun e!4135612 () Bool)

(declare-fun tp!1880988 () Bool)

(declare-fun tp!1880989 () Bool)

(assert (=> b!6859360 (= e!4135612 (and tp!1880988 tp!1880989))))

(assert (=> b!6859025 (= tp!1880900 e!4135612)))

(assert (= (and b!6859025 (is-Cons!66233 (exprs!6570 (h!72682 zl!343)))) b!6859360))

(push 1)

(assert (not b!6859180))

(assert (not b!6859334))

(assert (not b!6859328))

(assert (not b!6859355))

(assert (not b!6859305))

(assert (not d!2155279))

(assert (not b!6859329))

(assert (not b!6859360))

(assert (not b!6859354))

(assert (not b!6859147))

(assert (not d!2155273))

(assert (not bm!624778))

(assert (not bm!624786))

(assert (not d!2155317))

(assert (not b!6859337))

(assert (not b!6859333))

(assert (not b!6859351))

(assert (not b!6859143))

(assert (not b!6859336))

(assert (not b!6859332))

(assert (not b!6859343))

(assert (not d!2155319))

(assert (not b!6859338))

(assert (not d!2155301))

(assert (not b!6859359))

(assert (not b!6859310))

(assert (not b!6859173))

(assert (not b!6859270))

(assert (not b!6859272))

(assert (not d!2155311))

(assert (not b!6859125))

(assert tp_is_empty!42625)

(assert (not b!6859278))

(assert (not b!6859353))

(assert (not d!2155289))

(assert (not b!6859277))

(assert (not b!6859271))

(assert (not setNonEmpty!47160))

(assert (not bm!624785))

(assert (not d!2155285))

(assert (not b!6859330))

(assert (not b!6859223))

(assert (not b!6859181))

(assert (not d!2155281))

(assert (not b!6859275))

(assert (not b!6859100))

(assert (not bm!624789))

(assert (not b!6859101))

(assert (not b!6859358))

(assert (not b!6859357))

(assert (not d!2155305))

(assert (not d!2155291))

(assert (not b!6859350))

(assert (not bm!624779))

(assert (not b!6859224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

