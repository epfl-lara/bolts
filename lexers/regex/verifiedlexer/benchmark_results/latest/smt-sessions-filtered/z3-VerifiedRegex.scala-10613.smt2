; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545454 () Bool)

(assert start!545454)

(declare-fun b!5155784 () Bool)

(declare-fun res!2193148 () Bool)

(declare-fun e!3213489 () Bool)

(assert (=> b!5155784 (=> (not res!2193148) (not e!3213489))))

(declare-datatypes ((C!29300 0))(
  ( (C!29301 (val!24302 Int)) )
))
(declare-datatypes ((Regex!14517 0))(
  ( (ElementMatch!14517 (c!887366 C!29300)) (Concat!23362 (regOne!29546 Regex!14517) (regTwo!29546 Regex!14517)) (EmptyExpr!14517) (Star!14517 (reg!14846 Regex!14517)) (EmptyLang!14517) (Union!14517 (regOne!29547 Regex!14517) (regTwo!29547 Regex!14517)) )
))
(declare-fun expr!117 () Regex!14517)

(declare-fun a!1296 () C!29300)

(get-info :version)

(assert (=> b!5155784 (= res!2193148 (and (or (not ((_ is ElementMatch!14517) expr!117)) (not (= (c!887366 expr!117) a!1296))) (not ((_ is Union!14517) expr!117))))))

(declare-fun b!5155785 () Bool)

(declare-fun res!2193144 () Bool)

(assert (=> b!5155785 (=> (not res!2193144) (not e!3213489))))

(declare-fun validRegex!6372 (Regex!14517) Bool)

(assert (=> b!5155785 (= res!2193144 (validRegex!6372 (regTwo!29546 expr!117)))))

(declare-fun b!5155786 () Bool)

(declare-fun e!3213493 () Bool)

(declare-fun tp!1443344 () Bool)

(declare-fun tp!1443343 () Bool)

(assert (=> b!5155786 (= e!3213493 (and tp!1443344 tp!1443343))))

(declare-fun res!2193150 () Bool)

(assert (=> start!545454 (=> (not res!2193150) (not e!3213489))))

(assert (=> start!545454 (= res!2193150 (validRegex!6372 expr!117))))

(assert (=> start!545454 e!3213489))

(assert (=> start!545454 e!3213493))

(declare-datatypes ((List!59952 0))(
  ( (Nil!59828) (Cons!59828 (h!66276 Regex!14517) (t!373011 List!59952)) )
))
(declare-datatypes ((Context!7802 0))(
  ( (Context!7803 (exprs!4401 List!59952)) )
))
(declare-fun ctx!100 () Context!7802)

(declare-fun e!3213494 () Bool)

(declare-fun inv!79473 (Context!7802) Bool)

(assert (=> start!545454 (and (inv!79473 ctx!100) e!3213494)))

(declare-fun tp_is_empty!38183 () Bool)

(assert (=> start!545454 tp_is_empty!38183))

(declare-fun b!5155787 () Bool)

(declare-fun res!2193147 () Bool)

(assert (=> b!5155787 (=> (not res!2193147) (not e!3213489))))

(declare-fun e!3213492 () Bool)

(assert (=> b!5155787 (= res!2193147 e!3213492)))

(declare-fun res!2193141 () Bool)

(assert (=> b!5155787 (=> res!2193141 e!3213492)))

(declare-fun lostCause!1586 (Regex!14517) Bool)

(assert (=> b!5155787 (= res!2193141 (lostCause!1586 (regOne!29546 expr!117)))))

(declare-fun b!5155788 () Bool)

(declare-fun tp!1443341 () Bool)

(declare-fun tp!1443345 () Bool)

(assert (=> b!5155788 (= e!3213493 (and tp!1443341 tp!1443345))))

(declare-fun b!5155789 () Bool)

(declare-fun e!3213490 () Bool)

(declare-fun lostCause!1587 (Context!7802) Bool)

(assert (=> b!5155789 (= e!3213490 (lostCause!1587 ctx!100))))

(declare-fun b!5155790 () Bool)

(declare-fun res!2193140 () Bool)

(assert (=> b!5155790 (=> (not res!2193140) (not e!3213489))))

(assert (=> b!5155790 (= res!2193140 (validRegex!6372 (regOne!29546 expr!117)))))

(declare-fun b!5155791 () Bool)

(declare-fun res!2193142 () Bool)

(assert (=> b!5155791 (=> (not res!2193142) (not e!3213489))))

(assert (=> b!5155791 (= res!2193142 e!3213490)))

(declare-fun res!2193145 () Bool)

(assert (=> b!5155791 (=> res!2193145 e!3213490)))

(assert (=> b!5155791 (= res!2193145 (lostCause!1586 expr!117))))

(declare-fun b!5155792 () Bool)

(declare-fun res!2193146 () Bool)

(assert (=> b!5155792 (=> (not res!2193146) (not e!3213489))))

(declare-fun e!3213491 () Bool)

(assert (=> b!5155792 (= res!2193146 e!3213491)))

(declare-fun res!2193143 () Bool)

(assert (=> b!5155792 (=> res!2193143 e!3213491)))

(assert (=> b!5155792 (= res!2193143 (not ((_ is Concat!23362) expr!117)))))

(declare-fun b!5155793 () Bool)

(declare-fun regexDepth!143 (Regex!14517) Int)

(assert (=> b!5155793 (= e!3213489 (>= (regexDepth!143 (regOne!29546 expr!117)) (regexDepth!143 expr!117)))))

(declare-fun b!5155794 () Bool)

(declare-fun nullable!4873 (Regex!14517) Bool)

(assert (=> b!5155794 (= e!3213491 (not (nullable!4873 (regOne!29546 expr!117))))))

(declare-fun b!5155795 () Bool)

(declare-fun tp!1443340 () Bool)

(assert (=> b!5155795 (= e!3213494 tp!1443340)))

(declare-fun b!5155796 () Bool)

(declare-fun $colon$colon!1235 (List!59952 Regex!14517) List!59952)

(assert (=> b!5155796 (= e!3213492 (lostCause!1587 (Context!7803 ($colon$colon!1235 (exprs!4401 ctx!100) (regTwo!29546 expr!117)))))))

(declare-fun b!5155797 () Bool)

(declare-fun tp!1443342 () Bool)

(assert (=> b!5155797 (= e!3213493 tp!1443342)))

(declare-fun b!5155798 () Bool)

(declare-fun res!2193149 () Bool)

(assert (=> b!5155798 (=> (not res!2193149) (not e!3213489))))

(assert (=> b!5155798 (= res!2193149 ((_ is Concat!23362) expr!117))))

(declare-fun b!5155799 () Bool)

(assert (=> b!5155799 (= e!3213493 tp_is_empty!38183)))

(assert (= (and start!545454 res!2193150) b!5155791))

(assert (= (and b!5155791 (not res!2193145)) b!5155789))

(assert (= (and b!5155791 res!2193142) b!5155784))

(assert (= (and b!5155784 res!2193148) b!5155792))

(assert (= (and b!5155792 (not res!2193143)) b!5155794))

(assert (= (and b!5155792 res!2193146) b!5155798))

(assert (= (and b!5155798 res!2193149) b!5155785))

(assert (= (and b!5155785 res!2193144) b!5155790))

(assert (= (and b!5155790 res!2193140) b!5155787))

(assert (= (and b!5155787 (not res!2193141)) b!5155796))

(assert (= (and b!5155787 res!2193147) b!5155793))

(assert (= (and start!545454 ((_ is ElementMatch!14517) expr!117)) b!5155799))

(assert (= (and start!545454 ((_ is Concat!23362) expr!117)) b!5155786))

(assert (= (and start!545454 ((_ is Star!14517) expr!117)) b!5155797))

(assert (= (and start!545454 ((_ is Union!14517) expr!117)) b!5155788))

(assert (= start!545454 b!5155795))

(declare-fun m!6210608 () Bool)

(assert (=> b!5155785 m!6210608))

(declare-fun m!6210610 () Bool)

(assert (=> b!5155787 m!6210610))

(declare-fun m!6210612 () Bool)

(assert (=> b!5155794 m!6210612))

(declare-fun m!6210614 () Bool)

(assert (=> start!545454 m!6210614))

(declare-fun m!6210616 () Bool)

(assert (=> start!545454 m!6210616))

(declare-fun m!6210618 () Bool)

(assert (=> b!5155793 m!6210618))

(declare-fun m!6210620 () Bool)

(assert (=> b!5155793 m!6210620))

(declare-fun m!6210622 () Bool)

(assert (=> b!5155790 m!6210622))

(declare-fun m!6210624 () Bool)

(assert (=> b!5155791 m!6210624))

(declare-fun m!6210626 () Bool)

(assert (=> b!5155796 m!6210626))

(declare-fun m!6210628 () Bool)

(assert (=> b!5155796 m!6210628))

(declare-fun m!6210630 () Bool)

(assert (=> b!5155789 m!6210630))

(check-sat (not b!5155790) (not b!5155785) (not b!5155787) (not b!5155791) (not b!5155786) (not start!545454) (not b!5155797) (not b!5155794) (not b!5155795) (not b!5155793) (not b!5155789) (not b!5155796) tp_is_empty!38183 (not b!5155788))
(check-sat)
(get-model)

(declare-fun d!1664968 () Bool)

(declare-fun nullableFct!1351 (Regex!14517) Bool)

(assert (=> d!1664968 (= (nullable!4873 (regOne!29546 expr!117)) (nullableFct!1351 (regOne!29546 expr!117)))))

(declare-fun bs!1202167 () Bool)

(assert (= bs!1202167 d!1664968))

(declare-fun m!6210632 () Bool)

(assert (=> bs!1202167 m!6210632))

(assert (=> b!5155794 d!1664968))

(declare-fun b!5155861 () Bool)

(declare-fun e!3213540 () Bool)

(declare-fun lt!2121972 () Int)

(declare-fun call!361241 () Int)

(assert (=> b!5155861 (= e!3213540 (> lt!2121972 call!361241))))

(declare-fun b!5155862 () Bool)

(declare-fun e!3213537 () Int)

(declare-fun call!361237 () Int)

(assert (=> b!5155862 (= e!3213537 (+ 1 call!361237))))

(declare-fun b!5155863 () Bool)

(assert (=> b!5155863 (= e!3213540 (= lt!2121972 1))))

(declare-fun bm!361230 () Bool)

(declare-fun call!361239 () Int)

(declare-fun c!887387 () Bool)

(assert (=> bm!361230 (= call!361239 (regexDepth!143 (ite c!887387 (regOne!29547 (regOne!29546 expr!117)) (regTwo!29546 (regOne!29546 expr!117)))))))

(declare-fun b!5155864 () Bool)

(declare-fun e!3213541 () Bool)

(declare-fun call!361235 () Int)

(assert (=> b!5155864 (= e!3213541 (> lt!2121972 call!361235))))

(declare-fun b!5155865 () Bool)

(declare-fun e!3213536 () Int)

(declare-fun e!3213544 () Int)

(assert (=> b!5155865 (= e!3213536 e!3213544)))

(declare-fun c!887388 () Bool)

(assert (=> b!5155865 (= c!887388 ((_ is Concat!23362) (regOne!29546 expr!117)))))

(declare-fun b!5155866 () Bool)

(declare-fun c!887389 () Bool)

(assert (=> b!5155866 (= c!887389 ((_ is Star!14517) (regOne!29546 expr!117)))))

(declare-fun e!3213538 () Bool)

(assert (=> b!5155866 (= e!3213538 e!3213540)))

(declare-fun b!5155867 () Bool)

(declare-fun c!887390 () Bool)

(assert (=> b!5155867 (= c!887390 ((_ is Union!14517) (regOne!29546 expr!117)))))

(assert (=> b!5155867 (= e!3213537 e!3213536)))

(declare-fun bm!361231 () Bool)

(assert (=> bm!361231 (= call!361241 call!361235)))

(declare-fun b!5155868 () Bool)

(assert (=> b!5155868 (= e!3213544 1)))

(declare-fun c!887392 () Bool)

(declare-fun bm!361232 () Bool)

(assert (=> bm!361232 (= call!361237 (regexDepth!143 (ite c!887392 (reg!14846 (regOne!29546 expr!117)) (ite c!887390 (regOne!29547 (regOne!29546 expr!117)) (regTwo!29546 (regOne!29546 expr!117))))))))

(declare-fun b!5155869 () Bool)

(declare-fun e!3213542 () Bool)

(assert (=> b!5155869 (= e!3213542 e!3213541)))

(declare-fun res!2193172 () Bool)

(assert (=> b!5155869 (= res!2193172 (> lt!2121972 call!361239))))

(assert (=> b!5155869 (=> (not res!2193172) (not e!3213541))))

(declare-fun b!5155870 () Bool)

(declare-fun e!3213539 () Int)

(assert (=> b!5155870 (= e!3213539 1)))

(declare-fun call!361236 () Int)

(declare-fun bm!361233 () Bool)

(declare-fun call!361238 () Int)

(declare-fun call!361240 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!361233 (= call!361238 (maxBigInt!0 (ite c!887390 call!361240 call!361236) (ite c!887390 call!361236 call!361240)))))

(declare-fun b!5155871 () Bool)

(assert (=> b!5155871 (= e!3213542 e!3213538)))

(declare-fun c!887391 () Bool)

(assert (=> b!5155871 (= c!887391 ((_ is Concat!23362) (regOne!29546 expr!117)))))

(declare-fun b!5155872 () Bool)

(declare-fun res!2193174 () Bool)

(declare-fun e!3213543 () Bool)

(assert (=> b!5155872 (=> (not res!2193174) (not e!3213543))))

(assert (=> b!5155872 (= res!2193174 (> lt!2121972 call!361241))))

(assert (=> b!5155872 (= e!3213538 e!3213543)))

(declare-fun b!5155873 () Bool)

(assert (=> b!5155873 (= e!3213536 (+ 1 call!361238))))

(declare-fun bm!361234 () Bool)

(assert (=> bm!361234 (= call!361236 (regexDepth!143 (ite c!887390 (regTwo!29547 (regOne!29546 expr!117)) (regOne!29546 (regOne!29546 expr!117)))))))

(declare-fun b!5155874 () Bool)

(declare-fun e!3213545 () Bool)

(assert (=> b!5155874 (= e!3213545 e!3213542)))

(assert (=> b!5155874 (= c!887387 ((_ is Union!14517) (regOne!29546 expr!117)))))

(declare-fun d!1664970 () Bool)

(assert (=> d!1664970 e!3213545))

(declare-fun res!2193173 () Bool)

(assert (=> d!1664970 (=> (not res!2193173) (not e!3213545))))

(assert (=> d!1664970 (= res!2193173 (> lt!2121972 0))))

(assert (=> d!1664970 (= lt!2121972 e!3213539)))

(declare-fun c!887393 () Bool)

(assert (=> d!1664970 (= c!887393 ((_ is ElementMatch!14517) (regOne!29546 expr!117)))))

(assert (=> d!1664970 (= (regexDepth!143 (regOne!29546 expr!117)) lt!2121972)))

(declare-fun bm!361235 () Bool)

(assert (=> bm!361235 (= call!361235 (regexDepth!143 (ite c!887387 (regTwo!29547 (regOne!29546 expr!117)) (ite c!887391 (regOne!29546 (regOne!29546 expr!117)) (reg!14846 (regOne!29546 expr!117))))))))

(declare-fun b!5155875 () Bool)

(assert (=> b!5155875 (= e!3213544 (+ 1 call!361238))))

(declare-fun b!5155876 () Bool)

(assert (=> b!5155876 (= e!3213543 (> lt!2121972 call!361239))))

(declare-fun b!5155877 () Bool)

(assert (=> b!5155877 (= e!3213539 e!3213537)))

(assert (=> b!5155877 (= c!887392 ((_ is Star!14517) (regOne!29546 expr!117)))))

(declare-fun bm!361236 () Bool)

(assert (=> bm!361236 (= call!361240 call!361237)))

(assert (= (and d!1664970 c!887393) b!5155870))

(assert (= (and d!1664970 (not c!887393)) b!5155877))

(assert (= (and b!5155877 c!887392) b!5155862))

(assert (= (and b!5155877 (not c!887392)) b!5155867))

(assert (= (and b!5155867 c!887390) b!5155873))

(assert (= (and b!5155867 (not c!887390)) b!5155865))

(assert (= (and b!5155865 c!887388) b!5155875))

(assert (= (and b!5155865 (not c!887388)) b!5155868))

(assert (= (or b!5155873 b!5155875) bm!361234))

(assert (= (or b!5155873 b!5155875) bm!361236))

(assert (= (or b!5155873 b!5155875) bm!361233))

(assert (= (or b!5155862 bm!361236) bm!361232))

(assert (= (and d!1664970 res!2193173) b!5155874))

(assert (= (and b!5155874 c!887387) b!5155869))

(assert (= (and b!5155874 (not c!887387)) b!5155871))

(assert (= (and b!5155869 res!2193172) b!5155864))

(assert (= (and b!5155871 c!887391) b!5155872))

(assert (= (and b!5155871 (not c!887391)) b!5155866))

(assert (= (and b!5155872 res!2193174) b!5155876))

(assert (= (and b!5155866 c!887389) b!5155861))

(assert (= (and b!5155866 (not c!887389)) b!5155863))

(assert (= (or b!5155872 b!5155861) bm!361231))

(assert (= (or b!5155864 bm!361231) bm!361235))

(assert (= (or b!5155869 b!5155876) bm!361230))

(declare-fun m!6210644 () Bool)

(assert (=> bm!361235 m!6210644))

(declare-fun m!6210646 () Bool)

(assert (=> bm!361234 m!6210646))

(declare-fun m!6210648 () Bool)

(assert (=> bm!361233 m!6210648))

(declare-fun m!6210650 () Bool)

(assert (=> bm!361232 m!6210650))

(declare-fun m!6210652 () Bool)

(assert (=> bm!361230 m!6210652))

(assert (=> b!5155793 d!1664970))

(declare-fun b!5155878 () Bool)

(declare-fun e!3213550 () Bool)

(declare-fun lt!2121973 () Int)

(declare-fun call!361248 () Int)

(assert (=> b!5155878 (= e!3213550 (> lt!2121973 call!361248))))

(declare-fun b!5155879 () Bool)

(declare-fun e!3213547 () Int)

(declare-fun call!361244 () Int)

(assert (=> b!5155879 (= e!3213547 (+ 1 call!361244))))

(declare-fun b!5155880 () Bool)

(assert (=> b!5155880 (= e!3213550 (= lt!2121973 1))))

(declare-fun bm!361237 () Bool)

(declare-fun call!361246 () Int)

(declare-fun c!887394 () Bool)

(assert (=> bm!361237 (= call!361246 (regexDepth!143 (ite c!887394 (regOne!29547 expr!117) (regTwo!29546 expr!117))))))

(declare-fun b!5155881 () Bool)

(declare-fun e!3213551 () Bool)

(declare-fun call!361242 () Int)

(assert (=> b!5155881 (= e!3213551 (> lt!2121973 call!361242))))

(declare-fun b!5155882 () Bool)

(declare-fun e!3213546 () Int)

(declare-fun e!3213554 () Int)

(assert (=> b!5155882 (= e!3213546 e!3213554)))

(declare-fun c!887395 () Bool)

(assert (=> b!5155882 (= c!887395 ((_ is Concat!23362) expr!117))))

(declare-fun b!5155883 () Bool)

(declare-fun c!887396 () Bool)

(assert (=> b!5155883 (= c!887396 ((_ is Star!14517) expr!117))))

(declare-fun e!3213548 () Bool)

(assert (=> b!5155883 (= e!3213548 e!3213550)))

(declare-fun b!5155884 () Bool)

(declare-fun c!887397 () Bool)

(assert (=> b!5155884 (= c!887397 ((_ is Union!14517) expr!117))))

(assert (=> b!5155884 (= e!3213547 e!3213546)))

(declare-fun bm!361238 () Bool)

(assert (=> bm!361238 (= call!361248 call!361242)))

(declare-fun b!5155885 () Bool)

(assert (=> b!5155885 (= e!3213554 1)))

(declare-fun bm!361239 () Bool)

(declare-fun c!887399 () Bool)

(assert (=> bm!361239 (= call!361244 (regexDepth!143 (ite c!887399 (reg!14846 expr!117) (ite c!887397 (regOne!29547 expr!117) (regTwo!29546 expr!117)))))))

(declare-fun b!5155886 () Bool)

(declare-fun e!3213552 () Bool)

(assert (=> b!5155886 (= e!3213552 e!3213551)))

(declare-fun res!2193175 () Bool)

(assert (=> b!5155886 (= res!2193175 (> lt!2121973 call!361246))))

(assert (=> b!5155886 (=> (not res!2193175) (not e!3213551))))

(declare-fun b!5155887 () Bool)

(declare-fun e!3213549 () Int)

(assert (=> b!5155887 (= e!3213549 1)))

(declare-fun bm!361240 () Bool)

(declare-fun call!361245 () Int)

(declare-fun call!361243 () Int)

(declare-fun call!361247 () Int)

(assert (=> bm!361240 (= call!361245 (maxBigInt!0 (ite c!887397 call!361247 call!361243) (ite c!887397 call!361243 call!361247)))))

(declare-fun b!5155888 () Bool)

(assert (=> b!5155888 (= e!3213552 e!3213548)))

(declare-fun c!887398 () Bool)

(assert (=> b!5155888 (= c!887398 ((_ is Concat!23362) expr!117))))

(declare-fun b!5155889 () Bool)

(declare-fun res!2193177 () Bool)

(declare-fun e!3213553 () Bool)

(assert (=> b!5155889 (=> (not res!2193177) (not e!3213553))))

(assert (=> b!5155889 (= res!2193177 (> lt!2121973 call!361248))))

(assert (=> b!5155889 (= e!3213548 e!3213553)))

(declare-fun b!5155890 () Bool)

(assert (=> b!5155890 (= e!3213546 (+ 1 call!361245))))

(declare-fun bm!361241 () Bool)

(assert (=> bm!361241 (= call!361243 (regexDepth!143 (ite c!887397 (regTwo!29547 expr!117) (regOne!29546 expr!117))))))

(declare-fun b!5155891 () Bool)

(declare-fun e!3213555 () Bool)

(assert (=> b!5155891 (= e!3213555 e!3213552)))

(assert (=> b!5155891 (= c!887394 ((_ is Union!14517) expr!117))))

(declare-fun d!1664978 () Bool)

(assert (=> d!1664978 e!3213555))

(declare-fun res!2193176 () Bool)

(assert (=> d!1664978 (=> (not res!2193176) (not e!3213555))))

(assert (=> d!1664978 (= res!2193176 (> lt!2121973 0))))

(assert (=> d!1664978 (= lt!2121973 e!3213549)))

(declare-fun c!887400 () Bool)

(assert (=> d!1664978 (= c!887400 ((_ is ElementMatch!14517) expr!117))))

(assert (=> d!1664978 (= (regexDepth!143 expr!117) lt!2121973)))

(declare-fun bm!361242 () Bool)

(assert (=> bm!361242 (= call!361242 (regexDepth!143 (ite c!887394 (regTwo!29547 expr!117) (ite c!887398 (regOne!29546 expr!117) (reg!14846 expr!117)))))))

(declare-fun b!5155892 () Bool)

(assert (=> b!5155892 (= e!3213554 (+ 1 call!361245))))

(declare-fun b!5155893 () Bool)

(assert (=> b!5155893 (= e!3213553 (> lt!2121973 call!361246))))

(declare-fun b!5155894 () Bool)

(assert (=> b!5155894 (= e!3213549 e!3213547)))

(assert (=> b!5155894 (= c!887399 ((_ is Star!14517) expr!117))))

(declare-fun bm!361243 () Bool)

(assert (=> bm!361243 (= call!361247 call!361244)))

(assert (= (and d!1664978 c!887400) b!5155887))

(assert (= (and d!1664978 (not c!887400)) b!5155894))

(assert (= (and b!5155894 c!887399) b!5155879))

(assert (= (and b!5155894 (not c!887399)) b!5155884))

(assert (= (and b!5155884 c!887397) b!5155890))

(assert (= (and b!5155884 (not c!887397)) b!5155882))

(assert (= (and b!5155882 c!887395) b!5155892))

(assert (= (and b!5155882 (not c!887395)) b!5155885))

(assert (= (or b!5155890 b!5155892) bm!361241))

(assert (= (or b!5155890 b!5155892) bm!361243))

(assert (= (or b!5155890 b!5155892) bm!361240))

(assert (= (or b!5155879 bm!361243) bm!361239))

(assert (= (and d!1664978 res!2193176) b!5155891))

(assert (= (and b!5155891 c!887394) b!5155886))

(assert (= (and b!5155891 (not c!887394)) b!5155888))

(assert (= (and b!5155886 res!2193175) b!5155881))

(assert (= (and b!5155888 c!887398) b!5155889))

(assert (= (and b!5155888 (not c!887398)) b!5155883))

(assert (= (and b!5155889 res!2193177) b!5155893))

(assert (= (and b!5155883 c!887396) b!5155878))

(assert (= (and b!5155883 (not c!887396)) b!5155880))

(assert (= (or b!5155889 b!5155878) bm!361238))

(assert (= (or b!5155881 bm!361238) bm!361242))

(assert (= (or b!5155886 b!5155893) bm!361237))

(declare-fun m!6210654 () Bool)

(assert (=> bm!361242 m!6210654))

(declare-fun m!6210656 () Bool)

(assert (=> bm!361241 m!6210656))

(declare-fun m!6210658 () Bool)

(assert (=> bm!361240 m!6210658))

(declare-fun m!6210660 () Bool)

(assert (=> bm!361239 m!6210660))

(declare-fun m!6210662 () Bool)

(assert (=> bm!361237 m!6210662))

(assert (=> b!5155793 d!1664978))

(declare-fun b!5155913 () Bool)

(declare-fun e!3213576 () Bool)

(declare-fun e!3213575 () Bool)

(assert (=> b!5155913 (= e!3213576 e!3213575)))

(declare-fun c!887405 () Bool)

(assert (=> b!5155913 (= c!887405 ((_ is Star!14517) (regOne!29546 expr!117)))))

(declare-fun bm!361250 () Bool)

(declare-fun call!361257 () Bool)

(declare-fun call!361255 () Bool)

(assert (=> bm!361250 (= call!361257 call!361255)))

(declare-fun b!5155914 () Bool)

(declare-fun e!3213571 () Bool)

(assert (=> b!5155914 (= e!3213575 e!3213571)))

(declare-fun c!887406 () Bool)

(assert (=> b!5155914 (= c!887406 ((_ is Union!14517) (regOne!29546 expr!117)))))

(declare-fun bm!361251 () Bool)

(declare-fun call!361256 () Bool)

(assert (=> bm!361251 (= call!361256 (validRegex!6372 (ite c!887406 (regOne!29547 (regOne!29546 expr!117)) (regOne!29546 (regOne!29546 expr!117)))))))

(declare-fun b!5155915 () Bool)

(declare-fun e!3213570 () Bool)

(assert (=> b!5155915 (= e!3213570 call!361257)))

(declare-fun d!1664980 () Bool)

(declare-fun res!2193191 () Bool)

(assert (=> d!1664980 (=> res!2193191 e!3213576)))

(assert (=> d!1664980 (= res!2193191 ((_ is ElementMatch!14517) (regOne!29546 expr!117)))))

(assert (=> d!1664980 (= (validRegex!6372 (regOne!29546 expr!117)) e!3213576)))

(declare-fun b!5155916 () Bool)

(declare-fun res!2193188 () Bool)

(assert (=> b!5155916 (=> (not res!2193188) (not e!3213570))))

(assert (=> b!5155916 (= res!2193188 call!361256)))

(assert (=> b!5155916 (= e!3213571 e!3213570)))

(declare-fun bm!361252 () Bool)

(assert (=> bm!361252 (= call!361255 (validRegex!6372 (ite c!887405 (reg!14846 (regOne!29546 expr!117)) (ite c!887406 (regTwo!29547 (regOne!29546 expr!117)) (regTwo!29546 (regOne!29546 expr!117))))))))

(declare-fun b!5155917 () Bool)

(declare-fun res!2193190 () Bool)

(declare-fun e!3213574 () Bool)

(assert (=> b!5155917 (=> res!2193190 e!3213574)))

(assert (=> b!5155917 (= res!2193190 (not ((_ is Concat!23362) (regOne!29546 expr!117))))))

(assert (=> b!5155917 (= e!3213571 e!3213574)))

(declare-fun b!5155918 () Bool)

(declare-fun e!3213573 () Bool)

(assert (=> b!5155918 (= e!3213575 e!3213573)))

(declare-fun res!2193192 () Bool)

(assert (=> b!5155918 (= res!2193192 (not (nullable!4873 (reg!14846 (regOne!29546 expr!117)))))))

(assert (=> b!5155918 (=> (not res!2193192) (not e!3213573))))

(declare-fun b!5155919 () Bool)

(assert (=> b!5155919 (= e!3213573 call!361255)))

(declare-fun b!5155920 () Bool)

(declare-fun e!3213572 () Bool)

(assert (=> b!5155920 (= e!3213572 call!361257)))

(declare-fun b!5155921 () Bool)

(assert (=> b!5155921 (= e!3213574 e!3213572)))

(declare-fun res!2193189 () Bool)

(assert (=> b!5155921 (=> (not res!2193189) (not e!3213572))))

(assert (=> b!5155921 (= res!2193189 call!361256)))

(assert (= (and d!1664980 (not res!2193191)) b!5155913))

(assert (= (and b!5155913 c!887405) b!5155918))

(assert (= (and b!5155913 (not c!887405)) b!5155914))

(assert (= (and b!5155918 res!2193192) b!5155919))

(assert (= (and b!5155914 c!887406) b!5155916))

(assert (= (and b!5155914 (not c!887406)) b!5155917))

(assert (= (and b!5155916 res!2193188) b!5155915))

(assert (= (and b!5155917 (not res!2193190)) b!5155921))

(assert (= (and b!5155921 res!2193189) b!5155920))

(assert (= (or b!5155915 b!5155920) bm!361250))

(assert (= (or b!5155916 b!5155921) bm!361251))

(assert (= (or b!5155919 bm!361250) bm!361252))

(declare-fun m!6210664 () Bool)

(assert (=> bm!361251 m!6210664))

(declare-fun m!6210666 () Bool)

(assert (=> bm!361252 m!6210666))

(declare-fun m!6210668 () Bool)

(assert (=> b!5155918 m!6210668))

(assert (=> b!5155790 d!1664980))

(declare-fun d!1664982 () Bool)

(declare-fun lambda!257405 () Int)

(declare-fun exists!1858 (List!59952 Int) Bool)

(assert (=> d!1664982 (= (lostCause!1587 ctx!100) (exists!1858 (exprs!4401 ctx!100) lambda!257405))))

(declare-fun bs!1202177 () Bool)

(assert (= bs!1202177 d!1664982))

(declare-fun m!6210710 () Bool)

(assert (=> bs!1202177 m!6210710))

(assert (=> b!5155789 d!1664982))

(declare-fun b!5156043 () Bool)

(declare-fun e!3213647 () Bool)

(declare-fun e!3213646 () Bool)

(assert (=> b!5156043 (= e!3213647 e!3213646)))

(declare-fun c!887439 () Bool)

(assert (=> b!5156043 (= c!887439 ((_ is Star!14517) expr!117))))

(declare-fun bm!361287 () Bool)

(declare-fun call!361294 () Bool)

(declare-fun call!361292 () Bool)

(assert (=> bm!361287 (= call!361294 call!361292)))

(declare-fun b!5156044 () Bool)

(declare-fun e!3213642 () Bool)

(assert (=> b!5156044 (= e!3213646 e!3213642)))

(declare-fun c!887440 () Bool)

(assert (=> b!5156044 (= c!887440 ((_ is Union!14517) expr!117))))

(declare-fun bm!361288 () Bool)

(declare-fun call!361293 () Bool)

(assert (=> bm!361288 (= call!361293 (validRegex!6372 (ite c!887440 (regOne!29547 expr!117) (regOne!29546 expr!117))))))

(declare-fun b!5156045 () Bool)

(declare-fun e!3213641 () Bool)

(assert (=> b!5156045 (= e!3213641 call!361294)))

(declare-fun d!1665000 () Bool)

(declare-fun res!2193218 () Bool)

(assert (=> d!1665000 (=> res!2193218 e!3213647)))

(assert (=> d!1665000 (= res!2193218 ((_ is ElementMatch!14517) expr!117))))

(assert (=> d!1665000 (= (validRegex!6372 expr!117) e!3213647)))

(declare-fun b!5156046 () Bool)

(declare-fun res!2193215 () Bool)

(assert (=> b!5156046 (=> (not res!2193215) (not e!3213641))))

(assert (=> b!5156046 (= res!2193215 call!361293)))

(assert (=> b!5156046 (= e!3213642 e!3213641)))

(declare-fun bm!361289 () Bool)

(assert (=> bm!361289 (= call!361292 (validRegex!6372 (ite c!887439 (reg!14846 expr!117) (ite c!887440 (regTwo!29547 expr!117) (regTwo!29546 expr!117)))))))

(declare-fun b!5156047 () Bool)

(declare-fun res!2193217 () Bool)

(declare-fun e!3213645 () Bool)

(assert (=> b!5156047 (=> res!2193217 e!3213645)))

(assert (=> b!5156047 (= res!2193217 (not ((_ is Concat!23362) expr!117)))))

(assert (=> b!5156047 (= e!3213642 e!3213645)))

(declare-fun b!5156048 () Bool)

(declare-fun e!3213644 () Bool)

(assert (=> b!5156048 (= e!3213646 e!3213644)))

(declare-fun res!2193219 () Bool)

(assert (=> b!5156048 (= res!2193219 (not (nullable!4873 (reg!14846 expr!117))))))

(assert (=> b!5156048 (=> (not res!2193219) (not e!3213644))))

(declare-fun b!5156049 () Bool)

(assert (=> b!5156049 (= e!3213644 call!361292)))

(declare-fun b!5156050 () Bool)

(declare-fun e!3213643 () Bool)

(assert (=> b!5156050 (= e!3213643 call!361294)))

(declare-fun b!5156051 () Bool)

(assert (=> b!5156051 (= e!3213645 e!3213643)))

(declare-fun res!2193216 () Bool)

(assert (=> b!5156051 (=> (not res!2193216) (not e!3213643))))

(assert (=> b!5156051 (= res!2193216 call!361293)))

(assert (= (and d!1665000 (not res!2193218)) b!5156043))

(assert (= (and b!5156043 c!887439) b!5156048))

(assert (= (and b!5156043 (not c!887439)) b!5156044))

(assert (= (and b!5156048 res!2193219) b!5156049))

(assert (= (and b!5156044 c!887440) b!5156046))

(assert (= (and b!5156044 (not c!887440)) b!5156047))

(assert (= (and b!5156046 res!2193215) b!5156045))

(assert (= (and b!5156047 (not res!2193217)) b!5156051))

(assert (= (and b!5156051 res!2193216) b!5156050))

(assert (= (or b!5156045 b!5156050) bm!361287))

(assert (= (or b!5156046 b!5156051) bm!361288))

(assert (= (or b!5156049 bm!361287) bm!361289))

(declare-fun m!6210712 () Bool)

(assert (=> bm!361288 m!6210712))

(declare-fun m!6210714 () Bool)

(assert (=> bm!361289 m!6210714))

(declare-fun m!6210716 () Bool)

(assert (=> b!5156048 m!6210716))

(assert (=> start!545454 d!1665000))

(declare-fun bs!1202178 () Bool)

(declare-fun d!1665002 () Bool)

(assert (= bs!1202178 (and d!1665002 d!1664982)))

(declare-fun lambda!257408 () Int)

(assert (=> bs!1202178 (not (= lambda!257408 lambda!257405))))

(declare-fun forall!14009 (List!59952 Int) Bool)

(assert (=> d!1665002 (= (inv!79473 ctx!100) (forall!14009 (exprs!4401 ctx!100) lambda!257408))))

(declare-fun bs!1202179 () Bool)

(assert (= bs!1202179 d!1665002))

(declare-fun m!6210718 () Bool)

(assert (=> bs!1202179 m!6210718))

(assert (=> start!545454 d!1665002))

(declare-fun d!1665004 () Bool)

(declare-fun lostCauseFct!392 (Regex!14517) Bool)

(assert (=> d!1665004 (= (lostCause!1586 expr!117) (lostCauseFct!392 expr!117))))

(declare-fun bs!1202180 () Bool)

(assert (= bs!1202180 d!1665004))

(declare-fun m!6210720 () Bool)

(assert (=> bs!1202180 m!6210720))

(assert (=> b!5155791 d!1665004))

(declare-fun bs!1202181 () Bool)

(declare-fun d!1665006 () Bool)

(assert (= bs!1202181 (and d!1665006 d!1664982)))

(declare-fun lambda!257409 () Int)

(assert (=> bs!1202181 (= lambda!257409 lambda!257405)))

(declare-fun bs!1202182 () Bool)

(assert (= bs!1202182 (and d!1665006 d!1665002)))

(assert (=> bs!1202182 (not (= lambda!257409 lambda!257408))))

(assert (=> d!1665006 (= (lostCause!1587 (Context!7803 ($colon$colon!1235 (exprs!4401 ctx!100) (regTwo!29546 expr!117)))) (exists!1858 (exprs!4401 (Context!7803 ($colon$colon!1235 (exprs!4401 ctx!100) (regTwo!29546 expr!117)))) lambda!257409))))

(declare-fun bs!1202183 () Bool)

(assert (= bs!1202183 d!1665006))

(declare-fun m!6210722 () Bool)

(assert (=> bs!1202183 m!6210722))

(assert (=> b!5155796 d!1665006))

(declare-fun d!1665008 () Bool)

(assert (=> d!1665008 (= ($colon$colon!1235 (exprs!4401 ctx!100) (regTwo!29546 expr!117)) (Cons!59828 (regTwo!29546 expr!117) (exprs!4401 ctx!100)))))

(assert (=> b!5155796 d!1665008))

(declare-fun b!5156052 () Bool)

(declare-fun e!3213654 () Bool)

(declare-fun e!3213653 () Bool)

(assert (=> b!5156052 (= e!3213654 e!3213653)))

(declare-fun c!887441 () Bool)

(assert (=> b!5156052 (= c!887441 ((_ is Star!14517) (regTwo!29546 expr!117)))))

(declare-fun bm!361290 () Bool)

(declare-fun call!361297 () Bool)

(declare-fun call!361295 () Bool)

(assert (=> bm!361290 (= call!361297 call!361295)))

(declare-fun b!5156053 () Bool)

(declare-fun e!3213649 () Bool)

(assert (=> b!5156053 (= e!3213653 e!3213649)))

(declare-fun c!887442 () Bool)

(assert (=> b!5156053 (= c!887442 ((_ is Union!14517) (regTwo!29546 expr!117)))))

(declare-fun bm!361291 () Bool)

(declare-fun call!361296 () Bool)

(assert (=> bm!361291 (= call!361296 (validRegex!6372 (ite c!887442 (regOne!29547 (regTwo!29546 expr!117)) (regOne!29546 (regTwo!29546 expr!117)))))))

(declare-fun b!5156054 () Bool)

(declare-fun e!3213648 () Bool)

(assert (=> b!5156054 (= e!3213648 call!361297)))

(declare-fun d!1665010 () Bool)

(declare-fun res!2193223 () Bool)

(assert (=> d!1665010 (=> res!2193223 e!3213654)))

(assert (=> d!1665010 (= res!2193223 ((_ is ElementMatch!14517) (regTwo!29546 expr!117)))))

(assert (=> d!1665010 (= (validRegex!6372 (regTwo!29546 expr!117)) e!3213654)))

(declare-fun b!5156055 () Bool)

(declare-fun res!2193220 () Bool)

(assert (=> b!5156055 (=> (not res!2193220) (not e!3213648))))

(assert (=> b!5156055 (= res!2193220 call!361296)))

(assert (=> b!5156055 (= e!3213649 e!3213648)))

(declare-fun bm!361292 () Bool)

(assert (=> bm!361292 (= call!361295 (validRegex!6372 (ite c!887441 (reg!14846 (regTwo!29546 expr!117)) (ite c!887442 (regTwo!29547 (regTwo!29546 expr!117)) (regTwo!29546 (regTwo!29546 expr!117))))))))

(declare-fun b!5156056 () Bool)

(declare-fun res!2193222 () Bool)

(declare-fun e!3213652 () Bool)

(assert (=> b!5156056 (=> res!2193222 e!3213652)))

(assert (=> b!5156056 (= res!2193222 (not ((_ is Concat!23362) (regTwo!29546 expr!117))))))

(assert (=> b!5156056 (= e!3213649 e!3213652)))

(declare-fun b!5156057 () Bool)

(declare-fun e!3213651 () Bool)

(assert (=> b!5156057 (= e!3213653 e!3213651)))

(declare-fun res!2193224 () Bool)

(assert (=> b!5156057 (= res!2193224 (not (nullable!4873 (reg!14846 (regTwo!29546 expr!117)))))))

(assert (=> b!5156057 (=> (not res!2193224) (not e!3213651))))

(declare-fun b!5156058 () Bool)

(assert (=> b!5156058 (= e!3213651 call!361295)))

(declare-fun b!5156059 () Bool)

(declare-fun e!3213650 () Bool)

(assert (=> b!5156059 (= e!3213650 call!361297)))

(declare-fun b!5156060 () Bool)

(assert (=> b!5156060 (= e!3213652 e!3213650)))

(declare-fun res!2193221 () Bool)

(assert (=> b!5156060 (=> (not res!2193221) (not e!3213650))))

(assert (=> b!5156060 (= res!2193221 call!361296)))

(assert (= (and d!1665010 (not res!2193223)) b!5156052))

(assert (= (and b!5156052 c!887441) b!5156057))

(assert (= (and b!5156052 (not c!887441)) b!5156053))

(assert (= (and b!5156057 res!2193224) b!5156058))

(assert (= (and b!5156053 c!887442) b!5156055))

(assert (= (and b!5156053 (not c!887442)) b!5156056))

(assert (= (and b!5156055 res!2193220) b!5156054))

(assert (= (and b!5156056 (not res!2193222)) b!5156060))

(assert (= (and b!5156060 res!2193221) b!5156059))

(assert (= (or b!5156054 b!5156059) bm!361290))

(assert (= (or b!5156055 b!5156060) bm!361291))

(assert (= (or b!5156058 bm!361290) bm!361292))

(declare-fun m!6210724 () Bool)

(assert (=> bm!361291 m!6210724))

(declare-fun m!6210726 () Bool)

(assert (=> bm!361292 m!6210726))

(declare-fun m!6210728 () Bool)

(assert (=> b!5156057 m!6210728))

(assert (=> b!5155785 d!1665010))

(declare-fun d!1665012 () Bool)

(assert (=> d!1665012 (= (lostCause!1586 (regOne!29546 expr!117)) (lostCauseFct!392 (regOne!29546 expr!117)))))

(declare-fun bs!1202184 () Bool)

(assert (= bs!1202184 d!1665012))

(declare-fun m!6210730 () Bool)

(assert (=> bs!1202184 m!6210730))

(assert (=> b!5155787 d!1665012))

(declare-fun b!5156072 () Bool)

(declare-fun e!3213657 () Bool)

(declare-fun tp!1443400 () Bool)

(declare-fun tp!1443397 () Bool)

(assert (=> b!5156072 (= e!3213657 (and tp!1443400 tp!1443397))))

(declare-fun b!5156073 () Bool)

(declare-fun tp!1443398 () Bool)

(assert (=> b!5156073 (= e!3213657 tp!1443398)))

(declare-fun b!5156074 () Bool)

(declare-fun tp!1443399 () Bool)

(declare-fun tp!1443401 () Bool)

(assert (=> b!5156074 (= e!3213657 (and tp!1443399 tp!1443401))))

(assert (=> b!5155788 (= tp!1443341 e!3213657)))

(declare-fun b!5156071 () Bool)

(assert (=> b!5156071 (= e!3213657 tp_is_empty!38183)))

(assert (= (and b!5155788 ((_ is ElementMatch!14517) (regOne!29547 expr!117))) b!5156071))

(assert (= (and b!5155788 ((_ is Concat!23362) (regOne!29547 expr!117))) b!5156072))

(assert (= (and b!5155788 ((_ is Star!14517) (regOne!29547 expr!117))) b!5156073))

(assert (= (and b!5155788 ((_ is Union!14517) (regOne!29547 expr!117))) b!5156074))

(declare-fun b!5156076 () Bool)

(declare-fun e!3213658 () Bool)

(declare-fun tp!1443405 () Bool)

(declare-fun tp!1443402 () Bool)

(assert (=> b!5156076 (= e!3213658 (and tp!1443405 tp!1443402))))

(declare-fun b!5156077 () Bool)

(declare-fun tp!1443403 () Bool)

(assert (=> b!5156077 (= e!3213658 tp!1443403)))

(declare-fun b!5156078 () Bool)

(declare-fun tp!1443404 () Bool)

(declare-fun tp!1443406 () Bool)

(assert (=> b!5156078 (= e!3213658 (and tp!1443404 tp!1443406))))

(assert (=> b!5155788 (= tp!1443345 e!3213658)))

(declare-fun b!5156075 () Bool)

(assert (=> b!5156075 (= e!3213658 tp_is_empty!38183)))

(assert (= (and b!5155788 ((_ is ElementMatch!14517) (regTwo!29547 expr!117))) b!5156075))

(assert (= (and b!5155788 ((_ is Concat!23362) (regTwo!29547 expr!117))) b!5156076))

(assert (= (and b!5155788 ((_ is Star!14517) (regTwo!29547 expr!117))) b!5156077))

(assert (= (and b!5155788 ((_ is Union!14517) (regTwo!29547 expr!117))) b!5156078))

(declare-fun b!5156083 () Bool)

(declare-fun e!3213661 () Bool)

(declare-fun tp!1443411 () Bool)

(declare-fun tp!1443412 () Bool)

(assert (=> b!5156083 (= e!3213661 (and tp!1443411 tp!1443412))))

(assert (=> b!5155795 (= tp!1443340 e!3213661)))

(assert (= (and b!5155795 ((_ is Cons!59828) (exprs!4401 ctx!100))) b!5156083))

(declare-fun b!5156085 () Bool)

(declare-fun e!3213662 () Bool)

(declare-fun tp!1443416 () Bool)

(declare-fun tp!1443413 () Bool)

(assert (=> b!5156085 (= e!3213662 (and tp!1443416 tp!1443413))))

(declare-fun b!5156086 () Bool)

(declare-fun tp!1443414 () Bool)

(assert (=> b!5156086 (= e!3213662 tp!1443414)))

(declare-fun b!5156087 () Bool)

(declare-fun tp!1443415 () Bool)

(declare-fun tp!1443417 () Bool)

(assert (=> b!5156087 (= e!3213662 (and tp!1443415 tp!1443417))))

(assert (=> b!5155786 (= tp!1443344 e!3213662)))

(declare-fun b!5156084 () Bool)

(assert (=> b!5156084 (= e!3213662 tp_is_empty!38183)))

(assert (= (and b!5155786 ((_ is ElementMatch!14517) (regOne!29546 expr!117))) b!5156084))

(assert (= (and b!5155786 ((_ is Concat!23362) (regOne!29546 expr!117))) b!5156085))

(assert (= (and b!5155786 ((_ is Star!14517) (regOne!29546 expr!117))) b!5156086))

(assert (= (and b!5155786 ((_ is Union!14517) (regOne!29546 expr!117))) b!5156087))

(declare-fun b!5156089 () Bool)

(declare-fun e!3213663 () Bool)

(declare-fun tp!1443421 () Bool)

(declare-fun tp!1443418 () Bool)

(assert (=> b!5156089 (= e!3213663 (and tp!1443421 tp!1443418))))

(declare-fun b!5156090 () Bool)

(declare-fun tp!1443419 () Bool)

(assert (=> b!5156090 (= e!3213663 tp!1443419)))

(declare-fun b!5156091 () Bool)

(declare-fun tp!1443420 () Bool)

(declare-fun tp!1443422 () Bool)

(assert (=> b!5156091 (= e!3213663 (and tp!1443420 tp!1443422))))

(assert (=> b!5155786 (= tp!1443343 e!3213663)))

(declare-fun b!5156088 () Bool)

(assert (=> b!5156088 (= e!3213663 tp_is_empty!38183)))

(assert (= (and b!5155786 ((_ is ElementMatch!14517) (regTwo!29546 expr!117))) b!5156088))

(assert (= (and b!5155786 ((_ is Concat!23362) (regTwo!29546 expr!117))) b!5156089))

(assert (= (and b!5155786 ((_ is Star!14517) (regTwo!29546 expr!117))) b!5156090))

(assert (= (and b!5155786 ((_ is Union!14517) (regTwo!29546 expr!117))) b!5156091))

(declare-fun b!5156093 () Bool)

(declare-fun e!3213664 () Bool)

(declare-fun tp!1443426 () Bool)

(declare-fun tp!1443423 () Bool)

(assert (=> b!5156093 (= e!3213664 (and tp!1443426 tp!1443423))))

(declare-fun b!5156094 () Bool)

(declare-fun tp!1443424 () Bool)

(assert (=> b!5156094 (= e!3213664 tp!1443424)))

(declare-fun b!5156095 () Bool)

(declare-fun tp!1443425 () Bool)

(declare-fun tp!1443427 () Bool)

(assert (=> b!5156095 (= e!3213664 (and tp!1443425 tp!1443427))))

(assert (=> b!5155797 (= tp!1443342 e!3213664)))

(declare-fun b!5156092 () Bool)

(assert (=> b!5156092 (= e!3213664 tp_is_empty!38183)))

(assert (= (and b!5155797 ((_ is ElementMatch!14517) (reg!14846 expr!117))) b!5156092))

(assert (= (and b!5155797 ((_ is Concat!23362) (reg!14846 expr!117))) b!5156093))

(assert (= (and b!5155797 ((_ is Star!14517) (reg!14846 expr!117))) b!5156094))

(assert (= (and b!5155797 ((_ is Union!14517) (reg!14846 expr!117))) b!5156095))

(check-sat (not bm!361291) (not b!5156085) (not b!5156083) (not b!5156048) (not b!5156090) (not bm!361234) (not b!5156095) (not b!5156078) (not b!5156094) (not b!5156093) (not bm!361232) (not d!1664968) (not d!1665012) (not bm!361289) (not b!5156072) (not b!5156074) (not bm!361252) (not b!5156087) (not bm!361233) (not b!5156057) (not bm!361241) (not b!5156076) (not d!1664982) (not bm!361237) (not bm!361239) (not b!5155918) (not d!1665006) (not b!5156086) (not b!5156091) (not bm!361292) (not bm!361230) (not b!5156077) (not b!5156089) tp_is_empty!38183 (not bm!361251) (not bm!361288) (not bm!361240) (not b!5156073) (not bm!361235) (not bm!361242) (not d!1665004) (not d!1665002))
(check-sat)
