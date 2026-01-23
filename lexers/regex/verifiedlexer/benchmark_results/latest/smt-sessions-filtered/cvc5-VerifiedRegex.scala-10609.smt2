; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545308 () Bool)

(assert start!545308)

(declare-fun b!5152522 () Bool)

(declare-fun res!2192292 () Bool)

(declare-fun e!3212027 () Bool)

(assert (=> b!5152522 (=> (not res!2192292) (not e!3212027))))

(declare-fun e!3212031 () Bool)

(assert (=> b!5152522 (= res!2192292 e!3212031)))

(declare-fun res!2192294 () Bool)

(assert (=> b!5152522 (=> res!2192294 e!3212031)))

(declare-datatypes ((C!29282 0))(
  ( (C!29283 (val!24293 Int)) )
))
(declare-datatypes ((Regex!14508 0))(
  ( (ElementMatch!14508 (c!887097 C!29282)) (Concat!23353 (regOne!29528 Regex!14508) (regTwo!29528 Regex!14508)) (EmptyExpr!14508) (Star!14508 (reg!14837 Regex!14508)) (EmptyLang!14508) (Union!14508 (regOne!29529 Regex!14508) (regTwo!29529 Regex!14508)) )
))
(declare-fun expr!117 () Regex!14508)

(declare-fun lostCause!1568 (Regex!14508) Bool)

(assert (=> b!5152522 (= res!2192294 (lostCause!1568 expr!117))))

(declare-fun b!5152523 () Bool)

(declare-fun res!2192295 () Bool)

(assert (=> b!5152523 (=> (not res!2192295) (not e!3212027))))

(assert (=> b!5152523 (= res!2192295 (is-Concat!23353 expr!117))))

(declare-fun b!5152524 () Bool)

(declare-datatypes ((List!59939 0))(
  ( (Nil!59815) (Cons!59815 (h!66263 Regex!14508) (t!372994 List!59939)) )
))
(declare-datatypes ((Context!7784 0))(
  ( (Context!7785 (exprs!4392 List!59939)) )
))
(declare-fun ctx!100 () Context!7784)

(declare-fun lostCause!1569 (Context!7784) Bool)

(assert (=> b!5152524 (= e!3212031 (lostCause!1569 ctx!100))))

(declare-fun res!2192296 () Bool)

(assert (=> start!545308 (=> (not res!2192296) (not e!3212027))))

(declare-fun validRegex!6363 (Regex!14508) Bool)

(assert (=> start!545308 (= res!2192296 (validRegex!6363 expr!117))))

(assert (=> start!545308 e!3212027))

(declare-fun e!3212030 () Bool)

(assert (=> start!545308 e!3212030))

(declare-fun e!3212029 () Bool)

(declare-fun inv!79452 (Context!7784) Bool)

(assert (=> start!545308 (and (inv!79452 ctx!100) e!3212029)))

(declare-fun tp_is_empty!38165 () Bool)

(assert (=> start!545308 tp_is_empty!38165))

(declare-fun b!5152525 () Bool)

(assert (=> b!5152525 (= e!3212030 tp_is_empty!38165)))

(declare-fun b!5152526 () Bool)

(declare-fun tp!1441009 () Bool)

(assert (=> b!5152526 (= e!3212029 tp!1441009)))

(declare-fun b!5152527 () Bool)

(declare-fun res!2192293 () Bool)

(assert (=> b!5152527 (=> (not res!2192293) (not e!3212027))))

(declare-fun e!3212028 () Bool)

(assert (=> b!5152527 (= res!2192293 e!3212028)))

(declare-fun res!2192297 () Bool)

(assert (=> b!5152527 (=> res!2192297 e!3212028)))

(assert (=> b!5152527 (= res!2192297 (not (is-Concat!23353 expr!117)))))

(declare-fun b!5152528 () Bool)

(declare-fun tp!1441013 () Bool)

(declare-fun tp!1441008 () Bool)

(assert (=> b!5152528 (= e!3212030 (and tp!1441013 tp!1441008))))

(declare-fun b!5152529 () Bool)

(declare-fun res!2192291 () Bool)

(assert (=> b!5152529 (=> (not res!2192291) (not e!3212027))))

(declare-fun a!1296 () C!29282)

(assert (=> b!5152529 (= res!2192291 (and (or (not (is-ElementMatch!14508 expr!117)) (not (= (c!887097 expr!117) a!1296))) (not (is-Union!14508 expr!117))))))

(declare-fun b!5152530 () Bool)

(assert (=> b!5152530 (= e!3212027 (not (validRegex!6363 (regTwo!29528 expr!117))))))

(declare-fun b!5152531 () Bool)

(declare-fun tp!1441011 () Bool)

(declare-fun tp!1441010 () Bool)

(assert (=> b!5152531 (= e!3212030 (and tp!1441011 tp!1441010))))

(declare-fun b!5152532 () Bool)

(declare-fun nullable!4864 (Regex!14508) Bool)

(assert (=> b!5152532 (= e!3212028 (not (nullable!4864 (regOne!29528 expr!117))))))

(declare-fun b!5152533 () Bool)

(declare-fun tp!1441012 () Bool)

(assert (=> b!5152533 (= e!3212030 tp!1441012)))

(assert (= (and start!545308 res!2192296) b!5152522))

(assert (= (and b!5152522 (not res!2192294)) b!5152524))

(assert (= (and b!5152522 res!2192292) b!5152529))

(assert (= (and b!5152529 res!2192291) b!5152527))

(assert (= (and b!5152527 (not res!2192297)) b!5152532))

(assert (= (and b!5152527 res!2192293) b!5152523))

(assert (= (and b!5152523 res!2192295) b!5152530))

(assert (= (and start!545308 (is-ElementMatch!14508 expr!117)) b!5152525))

(assert (= (and start!545308 (is-Concat!23353 expr!117)) b!5152531))

(assert (= (and start!545308 (is-Star!14508 expr!117)) b!5152533))

(assert (= (and start!545308 (is-Union!14508 expr!117)) b!5152528))

(assert (= start!545308 b!5152526))

(declare-fun m!6209720 () Bool)

(assert (=> b!5152530 m!6209720))

(declare-fun m!6209722 () Bool)

(assert (=> start!545308 m!6209722))

(declare-fun m!6209724 () Bool)

(assert (=> start!545308 m!6209724))

(declare-fun m!6209726 () Bool)

(assert (=> b!5152522 m!6209726))

(declare-fun m!6209728 () Bool)

(assert (=> b!5152532 m!6209728))

(declare-fun m!6209730 () Bool)

(assert (=> b!5152524 m!6209730))

(push 1)

(assert (not b!5152526))

(assert (not b!5152528))

(assert (not b!5152533))

(assert tp_is_empty!38165)

(assert (not b!5152532))

(assert (not b!5152530))

(assert (not b!5152531))

(assert (not b!5152524))

(assert (not b!5152522))

(assert (not start!545308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5152588 () Bool)

(declare-fun res!2192332 () Bool)

(declare-fun e!3212063 () Bool)

(assert (=> b!5152588 (=> (not res!2192332) (not e!3212063))))

(declare-fun call!360894 () Bool)

(assert (=> b!5152588 (= res!2192332 call!360894)))

(declare-fun e!3212066 () Bool)

(assert (=> b!5152588 (= e!3212066 e!3212063)))

(declare-fun b!5152589 () Bool)

(declare-fun e!3212062 () Bool)

(declare-fun call!360892 () Bool)

(assert (=> b!5152589 (= e!3212062 call!360892)))

(declare-fun d!1664566 () Bool)

(declare-fun res!2192333 () Bool)

(declare-fun e!3212065 () Bool)

(assert (=> d!1664566 (=> res!2192333 e!3212065)))

(assert (=> d!1664566 (= res!2192333 (is-ElementMatch!14508 (regTwo!29528 expr!117)))))

(assert (=> d!1664566 (= (validRegex!6363 (regTwo!29528 expr!117)) e!3212065)))

(declare-fun b!5152590 () Bool)

(declare-fun res!2192329 () Bool)

(declare-fun e!3212067 () Bool)

(assert (=> b!5152590 (=> res!2192329 e!3212067)))

(assert (=> b!5152590 (= res!2192329 (not (is-Concat!23353 (regTwo!29528 expr!117))))))

(assert (=> b!5152590 (= e!3212066 e!3212067)))

(declare-fun bm!360887 () Bool)

(declare-fun c!887104 () Bool)

(assert (=> bm!360887 (= call!360892 (validRegex!6363 (ite c!887104 (regTwo!29529 (regTwo!29528 expr!117)) (regTwo!29528 (regTwo!29528 expr!117)))))))

(declare-fun b!5152591 () Bool)

(declare-fun e!3212061 () Bool)

(assert (=> b!5152591 (= e!3212065 e!3212061)))

(declare-fun c!887103 () Bool)

(assert (=> b!5152591 (= c!887103 (is-Star!14508 (regTwo!29528 expr!117)))))

(declare-fun b!5152592 () Bool)

(assert (=> b!5152592 (= e!3212061 e!3212066)))

(assert (=> b!5152592 (= c!887104 (is-Union!14508 (regTwo!29528 expr!117)))))

(declare-fun b!5152593 () Bool)

(declare-fun e!3212064 () Bool)

(declare-fun call!360893 () Bool)

(assert (=> b!5152593 (= e!3212064 call!360893)))

(declare-fun b!5152594 () Bool)

(assert (=> b!5152594 (= e!3212061 e!3212064)))

(declare-fun res!2192330 () Bool)

(assert (=> b!5152594 (= res!2192330 (not (nullable!4864 (reg!14837 (regTwo!29528 expr!117)))))))

(assert (=> b!5152594 (=> (not res!2192330) (not e!3212064))))

(declare-fun b!5152595 () Bool)

(assert (=> b!5152595 (= e!3212067 e!3212062)))

(declare-fun res!2192331 () Bool)

(assert (=> b!5152595 (=> (not res!2192331) (not e!3212062))))

(assert (=> b!5152595 (= res!2192331 call!360894)))

(declare-fun bm!360888 () Bool)

(assert (=> bm!360888 (= call!360894 call!360893)))

(declare-fun bm!360889 () Bool)

(assert (=> bm!360889 (= call!360893 (validRegex!6363 (ite c!887103 (reg!14837 (regTwo!29528 expr!117)) (ite c!887104 (regOne!29529 (regTwo!29528 expr!117)) (regOne!29528 (regTwo!29528 expr!117))))))))

(declare-fun b!5152596 () Bool)

(assert (=> b!5152596 (= e!3212063 call!360892)))

(assert (= (and d!1664566 (not res!2192333)) b!5152591))

(assert (= (and b!5152591 c!887103) b!5152594))

(assert (= (and b!5152591 (not c!887103)) b!5152592))

(assert (= (and b!5152594 res!2192330) b!5152593))

(assert (= (and b!5152592 c!887104) b!5152588))

(assert (= (and b!5152592 (not c!887104)) b!5152590))

(assert (= (and b!5152588 res!2192332) b!5152596))

(assert (= (and b!5152590 (not res!2192329)) b!5152595))

(assert (= (and b!5152595 res!2192331) b!5152589))

(assert (= (or b!5152596 b!5152589) bm!360887))

(assert (= (or b!5152588 b!5152595) bm!360888))

(assert (= (or b!5152593 bm!360888) bm!360889))

(declare-fun m!6209744 () Bool)

(assert (=> bm!360887 m!6209744))

(declare-fun m!6209746 () Bool)

(assert (=> b!5152594 m!6209746))

(declare-fun m!6209748 () Bool)

(assert (=> bm!360889 m!6209748))

(assert (=> b!5152530 d!1664566))

(declare-fun d!1664570 () Bool)

(declare-fun lambda!257332 () Int)

(declare-fun exists!1849 (List!59939 Int) Bool)

(assert (=> d!1664570 (= (lostCause!1569 ctx!100) (exists!1849 (exprs!4392 ctx!100) lambda!257332))))

(declare-fun bs!1202031 () Bool)

(assert (= bs!1202031 d!1664570))

(declare-fun m!6209750 () Bool)

(assert (=> bs!1202031 m!6209750))

(assert (=> b!5152524 d!1664570))

(declare-fun d!1664572 () Bool)

(declare-fun lostCauseFct!383 (Regex!14508) Bool)

(assert (=> d!1664572 (= (lostCause!1568 expr!117) (lostCauseFct!383 expr!117))))

(declare-fun bs!1202032 () Bool)

(assert (= bs!1202032 d!1664572))

(declare-fun m!6209752 () Bool)

(assert (=> bs!1202032 m!6209752))

(assert (=> b!5152522 d!1664572))

(declare-fun d!1664574 () Bool)

(declare-fun nullableFct!1342 (Regex!14508) Bool)

(assert (=> d!1664574 (= (nullable!4864 (regOne!29528 expr!117)) (nullableFct!1342 (regOne!29528 expr!117)))))

(declare-fun bs!1202033 () Bool)

(assert (= bs!1202033 d!1664574))

(declare-fun m!6209754 () Bool)

(assert (=> bs!1202033 m!6209754))

(assert (=> b!5152532 d!1664574))

(declare-fun b!5152597 () Bool)

(declare-fun res!2192337 () Bool)

(declare-fun e!3212070 () Bool)

(assert (=> b!5152597 (=> (not res!2192337) (not e!3212070))))

(declare-fun call!360897 () Bool)

(assert (=> b!5152597 (= res!2192337 call!360897)))

(declare-fun e!3212073 () Bool)

(assert (=> b!5152597 (= e!3212073 e!3212070)))

(declare-fun b!5152598 () Bool)

(declare-fun e!3212069 () Bool)

(declare-fun call!360895 () Bool)

(assert (=> b!5152598 (= e!3212069 call!360895)))

(declare-fun d!1664576 () Bool)

(declare-fun res!2192338 () Bool)

(declare-fun e!3212072 () Bool)

(assert (=> d!1664576 (=> res!2192338 e!3212072)))

(assert (=> d!1664576 (= res!2192338 (is-ElementMatch!14508 expr!117))))

(assert (=> d!1664576 (= (validRegex!6363 expr!117) e!3212072)))

(declare-fun b!5152599 () Bool)

(declare-fun res!2192334 () Bool)

(declare-fun e!3212074 () Bool)

(assert (=> b!5152599 (=> res!2192334 e!3212074)))

(assert (=> b!5152599 (= res!2192334 (not (is-Concat!23353 expr!117)))))

(assert (=> b!5152599 (= e!3212073 e!3212074)))

(declare-fun bm!360890 () Bool)

(declare-fun c!887106 () Bool)

(assert (=> bm!360890 (= call!360895 (validRegex!6363 (ite c!887106 (regTwo!29529 expr!117) (regTwo!29528 expr!117))))))

(declare-fun b!5152600 () Bool)

(declare-fun e!3212068 () Bool)

(assert (=> b!5152600 (= e!3212072 e!3212068)))

(declare-fun c!887105 () Bool)

(assert (=> b!5152600 (= c!887105 (is-Star!14508 expr!117))))

(declare-fun b!5152601 () Bool)

(assert (=> b!5152601 (= e!3212068 e!3212073)))

(assert (=> b!5152601 (= c!887106 (is-Union!14508 expr!117))))

(declare-fun b!5152602 () Bool)

(declare-fun e!3212071 () Bool)

(declare-fun call!360896 () Bool)

(assert (=> b!5152602 (= e!3212071 call!360896)))

(declare-fun b!5152603 () Bool)

(assert (=> b!5152603 (= e!3212068 e!3212071)))

(declare-fun res!2192335 () Bool)

(assert (=> b!5152603 (= res!2192335 (not (nullable!4864 (reg!14837 expr!117))))))

(assert (=> b!5152603 (=> (not res!2192335) (not e!3212071))))

(declare-fun b!5152604 () Bool)

(assert (=> b!5152604 (= e!3212074 e!3212069)))

(declare-fun res!2192336 () Bool)

(assert (=> b!5152604 (=> (not res!2192336) (not e!3212069))))

(assert (=> b!5152604 (= res!2192336 call!360897)))

(declare-fun bm!360891 () Bool)

(assert (=> bm!360891 (= call!360897 call!360896)))

(declare-fun bm!360892 () Bool)

(assert (=> bm!360892 (= call!360896 (validRegex!6363 (ite c!887105 (reg!14837 expr!117) (ite c!887106 (regOne!29529 expr!117) (regOne!29528 expr!117)))))))

(declare-fun b!5152605 () Bool)

(assert (=> b!5152605 (= e!3212070 call!360895)))

(assert (= (and d!1664576 (not res!2192338)) b!5152600))

(assert (= (and b!5152600 c!887105) b!5152603))

(assert (= (and b!5152600 (not c!887105)) b!5152601))

(assert (= (and b!5152603 res!2192335) b!5152602))

(assert (= (and b!5152601 c!887106) b!5152597))

(assert (= (and b!5152601 (not c!887106)) b!5152599))

(assert (= (and b!5152597 res!2192337) b!5152605))

(assert (= (and b!5152599 (not res!2192334)) b!5152604))

(assert (= (and b!5152604 res!2192336) b!5152598))

(assert (= (or b!5152605 b!5152598) bm!360890))

(assert (= (or b!5152597 b!5152604) bm!360891))

(assert (= (or b!5152602 bm!360891) bm!360892))

(declare-fun m!6209756 () Bool)

(assert (=> bm!360890 m!6209756))

(declare-fun m!6209758 () Bool)

(assert (=> b!5152603 m!6209758))

(declare-fun m!6209760 () Bool)

(assert (=> bm!360892 m!6209760))

(assert (=> start!545308 d!1664576))

(declare-fun bs!1202034 () Bool)

(declare-fun d!1664578 () Bool)

(assert (= bs!1202034 (and d!1664578 d!1664570)))

(declare-fun lambda!257335 () Int)

(assert (=> bs!1202034 (not (= lambda!257335 lambda!257332))))

(declare-fun forall!14000 (List!59939 Int) Bool)

(assert (=> d!1664578 (= (inv!79452 ctx!100) (forall!14000 (exprs!4392 ctx!100) lambda!257335))))

(declare-fun bs!1202035 () Bool)

(assert (= bs!1202035 d!1664578))

(declare-fun m!6209762 () Bool)

(assert (=> bs!1202035 m!6209762))

(assert (=> start!545308 d!1664578))

(declare-fun b!5152616 () Bool)

(declare-fun e!3212077 () Bool)

(assert (=> b!5152616 (= e!3212077 tp_is_empty!38165)))

(assert (=> b!5152531 (= tp!1441011 e!3212077)))

(declare-fun b!5152618 () Bool)

(declare-fun tp!1441045 () Bool)

(assert (=> b!5152618 (= e!3212077 tp!1441045)))

(declare-fun b!5152619 () Bool)

(declare-fun tp!1441044 () Bool)

(declare-fun tp!1441043 () Bool)

(assert (=> b!5152619 (= e!3212077 (and tp!1441044 tp!1441043))))

(declare-fun b!5152617 () Bool)

(declare-fun tp!1441042 () Bool)

(declare-fun tp!1441046 () Bool)

(assert (=> b!5152617 (= e!3212077 (and tp!1441042 tp!1441046))))

(assert (= (and b!5152531 (is-ElementMatch!14508 (regOne!29528 expr!117))) b!5152616))

(assert (= (and b!5152531 (is-Concat!23353 (regOne!29528 expr!117))) b!5152617))

(assert (= (and b!5152531 (is-Star!14508 (regOne!29528 expr!117))) b!5152618))

(assert (= (and b!5152531 (is-Union!14508 (regOne!29528 expr!117))) b!5152619))

(declare-fun b!5152620 () Bool)

(declare-fun e!3212078 () Bool)

(assert (=> b!5152620 (= e!3212078 tp_is_empty!38165)))

(assert (=> b!5152531 (= tp!1441010 e!3212078)))

(declare-fun b!5152622 () Bool)

(declare-fun tp!1441050 () Bool)

(assert (=> b!5152622 (= e!3212078 tp!1441050)))

(declare-fun b!5152623 () Bool)

(declare-fun tp!1441049 () Bool)

(declare-fun tp!1441048 () Bool)

(assert (=> b!5152623 (= e!3212078 (and tp!1441049 tp!1441048))))

(declare-fun b!5152621 () Bool)

(declare-fun tp!1441047 () Bool)

(declare-fun tp!1441051 () Bool)

(assert (=> b!5152621 (= e!3212078 (and tp!1441047 tp!1441051))))

(assert (= (and b!5152531 (is-ElementMatch!14508 (regTwo!29528 expr!117))) b!5152620))

(assert (= (and b!5152531 (is-Concat!23353 (regTwo!29528 expr!117))) b!5152621))

(assert (= (and b!5152531 (is-Star!14508 (regTwo!29528 expr!117))) b!5152622))

(assert (= (and b!5152531 (is-Union!14508 (regTwo!29528 expr!117))) b!5152623))

(declare-fun b!5152624 () Bool)

(declare-fun e!3212079 () Bool)

(assert (=> b!5152624 (= e!3212079 tp_is_empty!38165)))

(assert (=> b!5152528 (= tp!1441013 e!3212079)))

(declare-fun b!5152626 () Bool)

(declare-fun tp!1441055 () Bool)

(assert (=> b!5152626 (= e!3212079 tp!1441055)))

(declare-fun b!5152627 () Bool)

(declare-fun tp!1441054 () Bool)

(declare-fun tp!1441053 () Bool)

(assert (=> b!5152627 (= e!3212079 (and tp!1441054 tp!1441053))))

(declare-fun b!5152625 () Bool)

(declare-fun tp!1441052 () Bool)

(declare-fun tp!1441056 () Bool)

(assert (=> b!5152625 (= e!3212079 (and tp!1441052 tp!1441056))))

(assert (= (and b!5152528 (is-ElementMatch!14508 (regOne!29529 expr!117))) b!5152624))

(assert (= (and b!5152528 (is-Concat!23353 (regOne!29529 expr!117))) b!5152625))

(assert (= (and b!5152528 (is-Star!14508 (regOne!29529 expr!117))) b!5152626))

(assert (= (and b!5152528 (is-Union!14508 (regOne!29529 expr!117))) b!5152627))

(declare-fun b!5152628 () Bool)

(declare-fun e!3212080 () Bool)

(assert (=> b!5152628 (= e!3212080 tp_is_empty!38165)))

(assert (=> b!5152528 (= tp!1441008 e!3212080)))

(declare-fun b!5152630 () Bool)

(declare-fun tp!1441060 () Bool)

(assert (=> b!5152630 (= e!3212080 tp!1441060)))

(declare-fun b!5152631 () Bool)

(declare-fun tp!1441059 () Bool)

(declare-fun tp!1441058 () Bool)

(assert (=> b!5152631 (= e!3212080 (and tp!1441059 tp!1441058))))

(declare-fun b!5152629 () Bool)

(declare-fun tp!1441057 () Bool)

(declare-fun tp!1441061 () Bool)

(assert (=> b!5152629 (= e!3212080 (and tp!1441057 tp!1441061))))

(assert (= (and b!5152528 (is-ElementMatch!14508 (regTwo!29529 expr!117))) b!5152628))

(assert (= (and b!5152528 (is-Concat!23353 (regTwo!29529 expr!117))) b!5152629))

(assert (= (and b!5152528 (is-Star!14508 (regTwo!29529 expr!117))) b!5152630))

(assert (= (and b!5152528 (is-Union!14508 (regTwo!29529 expr!117))) b!5152631))

(declare-fun b!5152632 () Bool)

(declare-fun e!3212081 () Bool)

(assert (=> b!5152632 (= e!3212081 tp_is_empty!38165)))

(assert (=> b!5152533 (= tp!1441012 e!3212081)))

(declare-fun b!5152634 () Bool)

(declare-fun tp!1441065 () Bool)

(assert (=> b!5152634 (= e!3212081 tp!1441065)))

(declare-fun b!5152635 () Bool)

(declare-fun tp!1441064 () Bool)

(declare-fun tp!1441063 () Bool)

(assert (=> b!5152635 (= e!3212081 (and tp!1441064 tp!1441063))))

(declare-fun b!5152633 () Bool)

(declare-fun tp!1441062 () Bool)

(declare-fun tp!1441066 () Bool)

(assert (=> b!5152633 (= e!3212081 (and tp!1441062 tp!1441066))))

(assert (= (and b!5152533 (is-ElementMatch!14508 (reg!14837 expr!117))) b!5152632))

(assert (= (and b!5152533 (is-Concat!23353 (reg!14837 expr!117))) b!5152633))

(assert (= (and b!5152533 (is-Star!14508 (reg!14837 expr!117))) b!5152634))

(assert (= (and b!5152533 (is-Union!14508 (reg!14837 expr!117))) b!5152635))

(declare-fun b!5152640 () Bool)

(declare-fun e!3212084 () Bool)

(declare-fun tp!1441071 () Bool)

(declare-fun tp!1441072 () Bool)

(assert (=> b!5152640 (= e!3212084 (and tp!1441071 tp!1441072))))

(assert (=> b!5152526 (= tp!1441009 e!3212084)))

(assert (= (and b!5152526 (is-Cons!59815 (exprs!4392 ctx!100))) b!5152640))

(push 1)

(assert (not b!5152640))

(assert (not b!5152621))

(assert (not bm!360892))

(assert (not b!5152626))

(assert (not b!5152618))

(assert (not b!5152634))

(assert (not b!5152629))

(assert tp_is_empty!38165)

(assert (not b!5152627))

(assert (not b!5152623))

(assert (not d!1664570))

(assert (not b!5152631))

(assert (not b!5152633))

(assert (not d!1664574))

(assert (not bm!360889))

(assert (not b!5152625))

(assert (not b!5152635))

(assert (not b!5152594))

(assert (not d!1664572))

(assert (not d!1664578))

(assert (not bm!360890))

(assert (not bm!360887))

(assert (not b!5152619))

(assert (not b!5152617))

(assert (not b!5152630))

(assert (not b!5152603))

(assert (not b!5152622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

