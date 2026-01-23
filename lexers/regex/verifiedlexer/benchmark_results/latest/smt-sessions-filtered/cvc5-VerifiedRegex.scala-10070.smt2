; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527372 () Bool)

(assert start!527372)

(declare-fun b!4988987 () Bool)

(declare-fun e!3117983 () Bool)

(declare-fun tp!1398156 () Bool)

(declare-fun tp!1398157 () Bool)

(assert (=> b!4988987 (= e!3117983 (and tp!1398156 tp!1398157))))

(declare-fun b!4988988 () Bool)

(declare-fun tp!1398155 () Bool)

(declare-fun tp!1398159 () Bool)

(assert (=> b!4988988 (= e!3117983 (and tp!1398155 tp!1398159))))

(declare-fun b!4988989 () Bool)

(declare-fun tp_is_empty!36445 () Bool)

(assert (=> b!4988989 (= e!3117983 tp_is_empty!36445)))

(declare-fun res!2129760 () Bool)

(declare-fun e!3117982 () Bool)

(assert (=> start!527372 (=> (not res!2129760) (not e!3117982))))

(declare-datatypes ((C!27698 0))(
  ( (C!27699 (val!23215 Int)) )
))
(declare-datatypes ((Regex!13724 0))(
  ( (ElementMatch!13724 (c!851293 C!27698)) (Concat!22517 (regOne!27960 Regex!13724) (regTwo!27960 Regex!13724)) (EmptyExpr!13724) (Star!13724 (reg!14053 Regex!13724)) (EmptyLang!13724) (Union!13724 (regOne!27961 Regex!13724) (regTwo!27961 Regex!13724)) )
))
(declare-fun r!15264 () Regex!13724)

(declare-fun validRegex!6021 (Regex!13724) Bool)

(assert (=> start!527372 (= res!2129760 (validRegex!6021 r!15264))))

(assert (=> start!527372 e!3117982))

(assert (=> start!527372 e!3117983))

(declare-datatypes ((List!57778 0))(
  ( (Nil!57654) (Cons!57654 (h!64102 C!27698) (t!370104 List!57778)) )
))
(declare-datatypes ((IArray!30547 0))(
  ( (IArray!30548 (innerList!15331 List!57778)) )
))
(declare-datatypes ((Conc!15243 0))(
  ( (Node!15243 (left!42195 Conc!15243) (right!42525 Conc!15243) (csize!30716 Int) (cheight!15454 Int)) (Leaf!25314 (xs!18569 IArray!30547) (csize!30717 Int)) (Empty!15243) )
))
(declare-datatypes ((BalanceConc!29916 0))(
  ( (BalanceConc!29917 (c!851294 Conc!15243)) )
))
(declare-fun input!6528 () BalanceConc!29916)

(declare-fun e!3117985 () Bool)

(declare-fun inv!75645 (BalanceConc!29916) Bool)

(assert (=> start!527372 (and (inv!75645 input!6528) e!3117985)))

(declare-fun totalInput!1177 () BalanceConc!29916)

(declare-fun e!3117984 () Bool)

(assert (=> start!527372 (and (inv!75645 totalInput!1177) e!3117984)))

(declare-fun b!4988990 () Bool)

(declare-fun tp!1398158 () Bool)

(declare-fun inv!75646 (Conc!15243) Bool)

(assert (=> b!4988990 (= e!3117984 (and (inv!75646 (c!851294 totalInput!1177)) tp!1398158))))

(declare-fun b!4988991 () Bool)

(declare-fun res!2129761 () Bool)

(assert (=> b!4988991 (=> (not res!2129761) (not e!3117982))))

(declare-fun isSuffix!1290 (List!57778 List!57778) Bool)

(declare-fun list!18525 (BalanceConc!29916) List!57778)

(assert (=> b!4988991 (= res!2129761 (isSuffix!1290 (list!18525 input!6528) (list!18525 totalInput!1177)))))

(declare-fun b!4988992 () Bool)

(declare-fun tp!1398161 () Bool)

(assert (=> b!4988992 (= e!3117983 tp!1398161)))

(declare-fun b!4988993 () Bool)

(declare-fun tp!1398160 () Bool)

(assert (=> b!4988993 (= e!3117985 (and (inv!75646 (c!851294 input!6528)) tp!1398160))))

(declare-fun b!4988994 () Bool)

(declare-datatypes ((List!57779 0))(
  ( (Nil!57655) (Cons!57655 (h!64103 Regex!13724) (t!370105 List!57779)) )
))
(declare-datatypes ((Context!6298 0))(
  ( (Context!6299 (exprs!3649 List!57779)) )
))
(declare-datatypes ((List!57780 0))(
  ( (Nil!57656) (Cons!57656 (h!64104 Context!6298) (t!370106 List!57780)) )
))
(declare-fun unfocusZipper!253 (List!57780) Regex!13724)

(declare-fun toList!8011 ((Set Context!6298)) List!57780)

(declare-fun focus!357 (Regex!13724) (Set Context!6298))

(assert (=> b!4988994 (= e!3117982 (not (= (unfocusZipper!253 (toList!8011 (focus!357 r!15264))) r!15264)))))

(assert (= (and start!527372 res!2129760) b!4988991))

(assert (= (and b!4988991 res!2129761) b!4988994))

(assert (= (and start!527372 (is-ElementMatch!13724 r!15264)) b!4988989))

(assert (= (and start!527372 (is-Concat!22517 r!15264)) b!4988987))

(assert (= (and start!527372 (is-Star!13724 r!15264)) b!4988992))

(assert (= (and start!527372 (is-Union!13724 r!15264)) b!4988988))

(assert (= start!527372 b!4988993))

(assert (= start!527372 b!4988990))

(declare-fun m!6020950 () Bool)

(assert (=> b!4988990 m!6020950))

(declare-fun m!6020952 () Bool)

(assert (=> b!4988993 m!6020952))

(declare-fun m!6020954 () Bool)

(assert (=> start!527372 m!6020954))

(declare-fun m!6020956 () Bool)

(assert (=> start!527372 m!6020956))

(declare-fun m!6020958 () Bool)

(assert (=> start!527372 m!6020958))

(declare-fun m!6020960 () Bool)

(assert (=> b!4988991 m!6020960))

(declare-fun m!6020962 () Bool)

(assert (=> b!4988991 m!6020962))

(assert (=> b!4988991 m!6020960))

(assert (=> b!4988991 m!6020962))

(declare-fun m!6020964 () Bool)

(assert (=> b!4988991 m!6020964))

(declare-fun m!6020966 () Bool)

(assert (=> b!4988994 m!6020966))

(assert (=> b!4988994 m!6020966))

(declare-fun m!6020968 () Bool)

(assert (=> b!4988994 m!6020968))

(assert (=> b!4988994 m!6020968))

(declare-fun m!6020970 () Bool)

(assert (=> b!4988994 m!6020970))

(push 1)

(assert (not b!4988994))

(assert (not start!527372))

(assert tp_is_empty!36445)

(assert (not b!4988987))

(assert (not b!4988990))

(assert (not b!4988988))

(assert (not b!4988992))

(assert (not b!4988991))

(assert (not b!4988993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4989037 () Bool)

(declare-fun e!3118014 () Bool)

(declare-fun call!348234 () Bool)

(assert (=> b!4989037 (= e!3118014 call!348234)))

(declare-fun b!4989038 () Bool)

(declare-fun res!2129779 () Bool)

(declare-fun e!3118018 () Bool)

(assert (=> b!4989038 (=> res!2129779 e!3118018)))

(assert (=> b!4989038 (= res!2129779 (not (is-Concat!22517 r!15264)))))

(declare-fun e!3118013 () Bool)

(assert (=> b!4989038 (= e!3118013 e!3118018)))

(declare-fun b!4989039 () Bool)

(declare-fun e!3118015 () Bool)

(assert (=> b!4989039 (= e!3118015 e!3118013)))

(declare-fun c!851301 () Bool)

(assert (=> b!4989039 (= c!851301 (is-Union!13724 r!15264))))

(declare-fun d!1606423 () Bool)

(declare-fun res!2129782 () Bool)

(declare-fun e!3118012 () Bool)

(assert (=> d!1606423 (=> res!2129782 e!3118012)))

(assert (=> d!1606423 (= res!2129782 (is-ElementMatch!13724 r!15264))))

(assert (=> d!1606423 (= (validRegex!6021 r!15264) e!3118012)))

(declare-fun b!4989040 () Bool)

(declare-fun e!3118016 () Bool)

(assert (=> b!4989040 (= e!3118018 e!3118016)))

(declare-fun res!2129781 () Bool)

(assert (=> b!4989040 (=> (not res!2129781) (not e!3118016))))

(declare-fun call!348232 () Bool)

(assert (=> b!4989040 (= res!2129781 call!348232)))

(declare-fun b!4989041 () Bool)

(declare-fun e!3118017 () Bool)

(assert (=> b!4989041 (= e!3118015 e!3118017)))

(declare-fun res!2129778 () Bool)

(declare-fun nullable!4664 (Regex!13724) Bool)

(assert (=> b!4989041 (= res!2129778 (not (nullable!4664 (reg!14053 r!15264))))))

(assert (=> b!4989041 (=> (not res!2129778) (not e!3118017))))

(declare-fun b!4989042 () Bool)

(declare-fun res!2129780 () Bool)

(assert (=> b!4989042 (=> (not res!2129780) (not e!3118014))))

(assert (=> b!4989042 (= res!2129780 call!348232)))

(assert (=> b!4989042 (= e!3118013 e!3118014)))

(declare-fun b!4989043 () Bool)

(declare-fun call!348233 () Bool)

(assert (=> b!4989043 (= e!3118017 call!348233)))

(declare-fun c!851302 () Bool)

(declare-fun bm!348227 () Bool)

(assert (=> bm!348227 (= call!348233 (validRegex!6021 (ite c!851302 (reg!14053 r!15264) (ite c!851301 (regTwo!27961 r!15264) (regTwo!27960 r!15264)))))))

(declare-fun b!4989044 () Bool)

(assert (=> b!4989044 (= e!3118016 call!348234)))

(declare-fun bm!348228 () Bool)

(assert (=> bm!348228 (= call!348232 (validRegex!6021 (ite c!851301 (regOne!27961 r!15264) (regOne!27960 r!15264))))))

(declare-fun b!4989045 () Bool)

(assert (=> b!4989045 (= e!3118012 e!3118015)))

(assert (=> b!4989045 (= c!851302 (is-Star!13724 r!15264))))

(declare-fun bm!348229 () Bool)

(assert (=> bm!348229 (= call!348234 call!348233)))

(assert (= (and d!1606423 (not res!2129782)) b!4989045))

(assert (= (and b!4989045 c!851302) b!4989041))

(assert (= (and b!4989045 (not c!851302)) b!4989039))

(assert (= (and b!4989041 res!2129778) b!4989043))

(assert (= (and b!4989039 c!851301) b!4989042))

(assert (= (and b!4989039 (not c!851301)) b!4989038))

(assert (= (and b!4989042 res!2129780) b!4989037))

(assert (= (and b!4989038 (not res!2129779)) b!4989040))

(assert (= (and b!4989040 res!2129781) b!4989044))

(assert (= (or b!4989042 b!4989040) bm!348228))

(assert (= (or b!4989037 b!4989044) bm!348229))

(assert (= (or b!4989043 bm!348229) bm!348227))

(declare-fun m!6020994 () Bool)

(assert (=> b!4989041 m!6020994))

(declare-fun m!6020996 () Bool)

(assert (=> bm!348227 m!6020996))

(declare-fun m!6020998 () Bool)

(assert (=> bm!348228 m!6020998))

(assert (=> start!527372 d!1606423))

(declare-fun d!1606427 () Bool)

(declare-fun isBalanced!4247 (Conc!15243) Bool)

(assert (=> d!1606427 (= (inv!75645 input!6528) (isBalanced!4247 (c!851294 input!6528)))))

(declare-fun bs!1184839 () Bool)

(assert (= bs!1184839 d!1606427))

(declare-fun m!6021000 () Bool)

(assert (=> bs!1184839 m!6021000))

(assert (=> start!527372 d!1606427))

(declare-fun d!1606429 () Bool)

(assert (=> d!1606429 (= (inv!75645 totalInput!1177) (isBalanced!4247 (c!851294 totalInput!1177)))))

(declare-fun bs!1184840 () Bool)

(assert (= bs!1184840 d!1606429))

(declare-fun m!6021002 () Bool)

(assert (=> bs!1184840 m!6021002))

(assert (=> start!527372 d!1606429))

(declare-fun d!1606431 () Bool)

(declare-fun c!851305 () Bool)

(assert (=> d!1606431 (= c!851305 (is-Node!15243 (c!851294 input!6528)))))

(declare-fun e!3118023 () Bool)

(assert (=> d!1606431 (= (inv!75646 (c!851294 input!6528)) e!3118023)))

(declare-fun b!4989052 () Bool)

(declare-fun inv!75649 (Conc!15243) Bool)

(assert (=> b!4989052 (= e!3118023 (inv!75649 (c!851294 input!6528)))))

(declare-fun b!4989053 () Bool)

(declare-fun e!3118024 () Bool)

(assert (=> b!4989053 (= e!3118023 e!3118024)))

(declare-fun res!2129785 () Bool)

(assert (=> b!4989053 (= res!2129785 (not (is-Leaf!25314 (c!851294 input!6528))))))

(assert (=> b!4989053 (=> res!2129785 e!3118024)))

(declare-fun b!4989054 () Bool)

(declare-fun inv!75650 (Conc!15243) Bool)

(assert (=> b!4989054 (= e!3118024 (inv!75650 (c!851294 input!6528)))))

(assert (= (and d!1606431 c!851305) b!4989052))

(assert (= (and d!1606431 (not c!851305)) b!4989053))

(assert (= (and b!4989053 (not res!2129785)) b!4989054))

(declare-fun m!6021010 () Bool)

(assert (=> b!4989052 m!6021010))

(declare-fun m!6021012 () Bool)

(assert (=> b!4989054 m!6021012))

(assert (=> b!4988993 d!1606431))

(declare-fun d!1606435 () Bool)

(declare-fun lt!2062498 () Regex!13724)

(assert (=> d!1606435 (validRegex!6021 lt!2062498)))

(declare-fun generalisedUnion!558 (List!57779) Regex!13724)

(declare-fun unfocusZipperList!71 (List!57780) List!57779)

(assert (=> d!1606435 (= lt!2062498 (generalisedUnion!558 (unfocusZipperList!71 (toList!8011 (focus!357 r!15264)))))))

(assert (=> d!1606435 (= (unfocusZipper!253 (toList!8011 (focus!357 r!15264))) lt!2062498)))

(declare-fun bs!1184842 () Bool)

(assert (= bs!1184842 d!1606435))

(declare-fun m!6021014 () Bool)

(assert (=> bs!1184842 m!6021014))

(assert (=> bs!1184842 m!6020968))

(declare-fun m!6021016 () Bool)

(assert (=> bs!1184842 m!6021016))

(assert (=> bs!1184842 m!6021016))

(declare-fun m!6021018 () Bool)

(assert (=> bs!1184842 m!6021018))

(assert (=> b!4988994 d!1606435))

(declare-fun d!1606437 () Bool)

(declare-fun e!3118030 () Bool)

(assert (=> d!1606437 e!3118030))

(declare-fun res!2129792 () Bool)

(assert (=> d!1606437 (=> (not res!2129792) (not e!3118030))))

(declare-fun lt!2062502 () List!57780)

(declare-fun noDuplicate!1007 (List!57780) Bool)

(assert (=> d!1606437 (= res!2129792 (noDuplicate!1007 lt!2062502))))

(declare-fun choose!36887 ((Set Context!6298)) List!57780)

(assert (=> d!1606437 (= lt!2062502 (choose!36887 (focus!357 r!15264)))))

(assert (=> d!1606437 (= (toList!8011 (focus!357 r!15264)) lt!2062502)))

(declare-fun b!4989060 () Bool)

(declare-fun content!10205 (List!57780) (Set Context!6298))

(assert (=> b!4989060 (= e!3118030 (= (content!10205 lt!2062502) (focus!357 r!15264)))))

(assert (= (and d!1606437 res!2129792) b!4989060))

(declare-fun m!6021026 () Bool)

(assert (=> d!1606437 m!6021026))

(assert (=> d!1606437 m!6020966))

(declare-fun m!6021028 () Bool)

(assert (=> d!1606437 m!6021028))

(declare-fun m!6021030 () Bool)

(assert (=> b!4989060 m!6021030))

(assert (=> b!4988994 d!1606437))

(declare-fun d!1606441 () Bool)

(declare-fun e!3118033 () Bool)

(assert (=> d!1606441 e!3118033))

(declare-fun res!2129796 () Bool)

(assert (=> d!1606441 (=> (not res!2129796) (not e!3118033))))

(assert (=> d!1606441 (= res!2129796 (validRegex!6021 r!15264))))

(assert (=> d!1606441 (= (focus!357 r!15264) (set.insert (Context!6299 (Cons!57655 r!15264 Nil!57655)) (as set.empty (Set Context!6298))))))

(declare-fun b!4989063 () Bool)

(assert (=> b!4989063 (= e!3118033 (= (unfocusZipper!253 (toList!8011 (set.insert (Context!6299 (Cons!57655 r!15264 Nil!57655)) (as set.empty (Set Context!6298))))) r!15264))))

(assert (= (and d!1606441 res!2129796) b!4989063))

(assert (=> d!1606441 m!6020954))

(declare-fun m!6021032 () Bool)

(assert (=> d!1606441 m!6021032))

(assert (=> b!4989063 m!6021032))

(assert (=> b!4989063 m!6021032))

(declare-fun m!6021034 () Bool)

(assert (=> b!4989063 m!6021034))

(assert (=> b!4989063 m!6021034))

(declare-fun m!6021036 () Bool)

(assert (=> b!4989063 m!6021036))

(assert (=> b!4988994 d!1606441))

(declare-fun d!1606443 () Bool)

(declare-fun c!851306 () Bool)

(assert (=> d!1606443 (= c!851306 (is-Node!15243 (c!851294 totalInput!1177)))))

(declare-fun e!3118034 () Bool)

(assert (=> d!1606443 (= (inv!75646 (c!851294 totalInput!1177)) e!3118034)))

(declare-fun b!4989064 () Bool)

(assert (=> b!4989064 (= e!3118034 (inv!75649 (c!851294 totalInput!1177)))))

(declare-fun b!4989065 () Bool)

(declare-fun e!3118035 () Bool)

(assert (=> b!4989065 (= e!3118034 e!3118035)))

(declare-fun res!2129797 () Bool)

(assert (=> b!4989065 (= res!2129797 (not (is-Leaf!25314 (c!851294 totalInput!1177))))))

(assert (=> b!4989065 (=> res!2129797 e!3118035)))

(declare-fun b!4989066 () Bool)

(assert (=> b!4989066 (= e!3118035 (inv!75650 (c!851294 totalInput!1177)))))

(assert (= (and d!1606443 c!851306) b!4989064))

(assert (= (and d!1606443 (not c!851306)) b!4989065))

(assert (= (and b!4989065 (not res!2129797)) b!4989066))

(declare-fun m!6021038 () Bool)

(assert (=> b!4989064 m!6021038))

(declare-fun m!6021040 () Bool)

(assert (=> b!4989066 m!6021040))

(assert (=> b!4988990 d!1606443))

(declare-fun d!1606445 () Bool)

(declare-fun e!3118040 () Bool)

(assert (=> d!1606445 e!3118040))

(declare-fun res!2129802 () Bool)

(assert (=> d!1606445 (=> res!2129802 e!3118040)))

(declare-fun lt!2062505 () Bool)

(assert (=> d!1606445 (= res!2129802 (not lt!2062505))))

(declare-fun drop!2395 (List!57778 Int) List!57778)

(declare-fun size!38312 (List!57778) Int)

(assert (=> d!1606445 (= lt!2062505 (= (list!18525 input!6528) (drop!2395 (list!18525 totalInput!1177) (- (size!38312 (list!18525 totalInput!1177)) (size!38312 (list!18525 input!6528))))))))

(assert (=> d!1606445 (= (isSuffix!1290 (list!18525 input!6528) (list!18525 totalInput!1177)) lt!2062505)))

(declare-fun b!4989071 () Bool)

(assert (=> b!4989071 (= e!3118040 (>= (size!38312 (list!18525 totalInput!1177)) (size!38312 (list!18525 input!6528))))))

(assert (= (and d!1606445 (not res!2129802)) b!4989071))

(assert (=> d!1606445 m!6020962))

(declare-fun m!6021042 () Bool)

(assert (=> d!1606445 m!6021042))

(assert (=> d!1606445 m!6020960))

(declare-fun m!6021044 () Bool)

(assert (=> d!1606445 m!6021044))

(assert (=> d!1606445 m!6020962))

(declare-fun m!6021046 () Bool)

(assert (=> d!1606445 m!6021046))

(assert (=> b!4989071 m!6020962))

(assert (=> b!4989071 m!6021042))

(assert (=> b!4989071 m!6020960))

(assert (=> b!4989071 m!6021044))

(assert (=> b!4988991 d!1606445))

(declare-fun d!1606447 () Bool)

(declare-fun list!18527 (Conc!15243) List!57778)

(assert (=> d!1606447 (= (list!18525 input!6528) (list!18527 (c!851294 input!6528)))))

(declare-fun bs!1184843 () Bool)

(assert (= bs!1184843 d!1606447))

(declare-fun m!6021048 () Bool)

(assert (=> bs!1184843 m!6021048))

(assert (=> b!4988991 d!1606447))

(declare-fun d!1606449 () Bool)

(assert (=> d!1606449 (= (list!18525 totalInput!1177) (list!18527 (c!851294 totalInput!1177)))))

(declare-fun bs!1184844 () Bool)

(assert (= bs!1184844 d!1606449))

(declare-fun m!6021052 () Bool)

(assert (=> bs!1184844 m!6021052))

(assert (=> b!4988991 d!1606449))

(declare-fun tp!1398189 () Bool)

(declare-fun b!4989081 () Bool)

(declare-fun tp!1398191 () Bool)

(declare-fun e!3118047 () Bool)

(assert (=> b!4989081 (= e!3118047 (and (inv!75646 (left!42195 (c!851294 input!6528))) tp!1398189 (inv!75646 (right!42525 (c!851294 input!6528))) tp!1398191))))

(declare-fun b!4989083 () Bool)

(declare-fun e!3118046 () Bool)

(declare-fun tp!1398190 () Bool)

(assert (=> b!4989083 (= e!3118046 tp!1398190)))

(declare-fun b!4989082 () Bool)

(declare-fun inv!75651 (IArray!30547) Bool)

(assert (=> b!4989082 (= e!3118047 (and (inv!75651 (xs!18569 (c!851294 input!6528))) e!3118046))))

(assert (=> b!4988993 (= tp!1398160 (and (inv!75646 (c!851294 input!6528)) e!3118047))))

(assert (= (and b!4988993 (is-Node!15243 (c!851294 input!6528))) b!4989081))

(assert (= b!4989082 b!4989083))

(assert (= (and b!4988993 (is-Leaf!25314 (c!851294 input!6528))) b!4989082))

(declare-fun m!6021058 () Bool)

(assert (=> b!4989081 m!6021058))

(declare-fun m!6021060 () Bool)

(assert (=> b!4989081 m!6021060))

(declare-fun m!6021062 () Bool)

(assert (=> b!4989082 m!6021062))

(assert (=> b!4988993 m!6020952))

(declare-fun b!4989097 () Bool)

(declare-fun e!3118050 () Bool)

(declare-fun tp!1398206 () Bool)

(declare-fun tp!1398205 () Bool)

(assert (=> b!4989097 (= e!3118050 (and tp!1398206 tp!1398205))))

(declare-fun b!4989095 () Bool)

(declare-fun tp!1398202 () Bool)

(declare-fun tp!1398204 () Bool)

(assert (=> b!4989095 (= e!3118050 (and tp!1398202 tp!1398204))))

(assert (=> b!4988988 (= tp!1398155 e!3118050)))

(declare-fun b!4989094 () Bool)

(assert (=> b!4989094 (= e!3118050 tp_is_empty!36445)))

(declare-fun b!4989096 () Bool)

(declare-fun tp!1398203 () Bool)

(assert (=> b!4989096 (= e!3118050 tp!1398203)))

(assert (= (and b!4988988 (is-ElementMatch!13724 (regOne!27961 r!15264))) b!4989094))

(assert (= (and b!4988988 (is-Concat!22517 (regOne!27961 r!15264))) b!4989095))

(assert (= (and b!4988988 (is-Star!13724 (regOne!27961 r!15264))) b!4989096))

(assert (= (and b!4988988 (is-Union!13724 (regOne!27961 r!15264))) b!4989097))

(declare-fun b!4989101 () Bool)

(declare-fun e!3118051 () Bool)

(declare-fun tp!1398211 () Bool)

(declare-fun tp!1398210 () Bool)

(assert (=> b!4989101 (= e!3118051 (and tp!1398211 tp!1398210))))

(declare-fun b!4989099 () Bool)

(declare-fun tp!1398207 () Bool)

(declare-fun tp!1398209 () Bool)

(assert (=> b!4989099 (= e!3118051 (and tp!1398207 tp!1398209))))

(assert (=> b!4988988 (= tp!1398159 e!3118051)))

(declare-fun b!4989098 () Bool)

(assert (=> b!4989098 (= e!3118051 tp_is_empty!36445)))

(declare-fun b!4989100 () Bool)

(declare-fun tp!1398208 () Bool)

(assert (=> b!4989100 (= e!3118051 tp!1398208)))

(assert (= (and b!4988988 (is-ElementMatch!13724 (regTwo!27961 r!15264))) b!4989098))

(assert (= (and b!4988988 (is-Concat!22517 (regTwo!27961 r!15264))) b!4989099))

(assert (= (and b!4988988 (is-Star!13724 (regTwo!27961 r!15264))) b!4989100))

(assert (= (and b!4988988 (is-Union!13724 (regTwo!27961 r!15264))) b!4989101))

(declare-fun b!4989105 () Bool)

(declare-fun e!3118052 () Bool)

(declare-fun tp!1398216 () Bool)

(declare-fun tp!1398215 () Bool)

(assert (=> b!4989105 (= e!3118052 (and tp!1398216 tp!1398215))))

(declare-fun b!4989103 () Bool)

(declare-fun tp!1398212 () Bool)

(declare-fun tp!1398214 () Bool)

(assert (=> b!4989103 (= e!3118052 (and tp!1398212 tp!1398214))))

(assert (=> b!4988987 (= tp!1398156 e!3118052)))

(declare-fun b!4989102 () Bool)

(assert (=> b!4989102 (= e!3118052 tp_is_empty!36445)))

(declare-fun b!4989104 () Bool)

(declare-fun tp!1398213 () Bool)

(assert (=> b!4989104 (= e!3118052 tp!1398213)))

(assert (= (and b!4988987 (is-ElementMatch!13724 (regOne!27960 r!15264))) b!4989102))

(assert (= (and b!4988987 (is-Concat!22517 (regOne!27960 r!15264))) b!4989103))

(assert (= (and b!4988987 (is-Star!13724 (regOne!27960 r!15264))) b!4989104))

(assert (= (and b!4988987 (is-Union!13724 (regOne!27960 r!15264))) b!4989105))

(declare-fun b!4989109 () Bool)

(declare-fun e!3118053 () Bool)

(declare-fun tp!1398221 () Bool)

(declare-fun tp!1398220 () Bool)

(assert (=> b!4989109 (= e!3118053 (and tp!1398221 tp!1398220))))

(declare-fun b!4989107 () Bool)

(declare-fun tp!1398217 () Bool)

(declare-fun tp!1398219 () Bool)

(assert (=> b!4989107 (= e!3118053 (and tp!1398217 tp!1398219))))

(assert (=> b!4988987 (= tp!1398157 e!3118053)))

(declare-fun b!4989106 () Bool)

(assert (=> b!4989106 (= e!3118053 tp_is_empty!36445)))

(declare-fun b!4989108 () Bool)

(declare-fun tp!1398218 () Bool)

(assert (=> b!4989108 (= e!3118053 tp!1398218)))

(assert (= (and b!4988987 (is-ElementMatch!13724 (regTwo!27960 r!15264))) b!4989106))

(assert (= (and b!4988987 (is-Concat!22517 (regTwo!27960 r!15264))) b!4989107))

(assert (= (and b!4988987 (is-Star!13724 (regTwo!27960 r!15264))) b!4989108))

(assert (= (and b!4988987 (is-Union!13724 (regTwo!27960 r!15264))) b!4989109))

(declare-fun e!3118055 () Bool)

(declare-fun tp!1398222 () Bool)

(declare-fun tp!1398224 () Bool)

(declare-fun b!4989110 () Bool)

(assert (=> b!4989110 (= e!3118055 (and (inv!75646 (left!42195 (c!851294 totalInput!1177))) tp!1398222 (inv!75646 (right!42525 (c!851294 totalInput!1177))) tp!1398224))))

(declare-fun b!4989112 () Bool)

(declare-fun e!3118054 () Bool)

(declare-fun tp!1398223 () Bool)

(assert (=> b!4989112 (= e!3118054 tp!1398223)))

(declare-fun b!4989111 () Bool)

(assert (=> b!4989111 (= e!3118055 (and (inv!75651 (xs!18569 (c!851294 totalInput!1177))) e!3118054))))

(assert (=> b!4988990 (= tp!1398158 (and (inv!75646 (c!851294 totalInput!1177)) e!3118055))))

(assert (= (and b!4988990 (is-Node!15243 (c!851294 totalInput!1177))) b!4989110))

(assert (= b!4989111 b!4989112))

(assert (= (and b!4988990 (is-Leaf!25314 (c!851294 totalInput!1177))) b!4989111))

(declare-fun m!6021064 () Bool)

(assert (=> b!4989110 m!6021064))

(declare-fun m!6021066 () Bool)

(assert (=> b!4989110 m!6021066))

(declare-fun m!6021068 () Bool)

(assert (=> b!4989111 m!6021068))

(assert (=> b!4988990 m!6020950))

(declare-fun b!4989116 () Bool)

(declare-fun e!3118056 () Bool)

(declare-fun tp!1398229 () Bool)

(declare-fun tp!1398228 () Bool)

(assert (=> b!4989116 (= e!3118056 (and tp!1398229 tp!1398228))))

(declare-fun b!4989114 () Bool)

(declare-fun tp!1398225 () Bool)

(declare-fun tp!1398227 () Bool)

(assert (=> b!4989114 (= e!3118056 (and tp!1398225 tp!1398227))))

(assert (=> b!4988992 (= tp!1398161 e!3118056)))

(declare-fun b!4989113 () Bool)

(assert (=> b!4989113 (= e!3118056 tp_is_empty!36445)))

(declare-fun b!4989115 () Bool)

(declare-fun tp!1398226 () Bool)

(assert (=> b!4989115 (= e!3118056 tp!1398226)))

(assert (= (and b!4988992 (is-ElementMatch!13724 (reg!14053 r!15264))) b!4989113))

(assert (= (and b!4988992 (is-Concat!22517 (reg!14053 r!15264))) b!4989114))

(assert (= (and b!4988992 (is-Star!13724 (reg!14053 r!15264))) b!4989115))

(assert (= (and b!4988992 (is-Union!13724 (reg!14053 r!15264))) b!4989116))

(push 1)

(assert (not b!4989116))

(assert (not b!4989101))

(assert tp_is_empty!36445)

(assert (not b!4989115))

(assert (not b!4989083))

(assert (not b!4988993))

(assert (not b!4989114))

(assert (not b!4989082))

(assert (not b!4989060))

(assert (not b!4989099))

(assert (not b!4989110))

(assert (not b!4989103))

(assert (not b!4989104))

(assert (not b!4989054))

(assert (not d!1606435))

(assert (not d!1606437))

(assert (not d!1606429))

(assert (not d!1606445))

(assert (not b!4989096))

(assert (not b!4989041))

(assert (not d!1606441))

(assert (not b!4989081))

(assert (not d!1606427))

(assert (not b!4988990))

(assert (not b!4989111))

(assert (not b!4989100))

(assert (not b!4989066))

(assert (not b!4989109))

(assert (not b!4989071))

(assert (not b!4989052))

(assert (not b!4989064))

(assert (not bm!348228))

(assert (not d!1606449))

(assert (not b!4989097))

(assert (not b!4989063))

(assert (not b!4989095))

(assert (not b!4989108))

(assert (not bm!348227))

(assert (not d!1606447))

(assert (not b!4989105))

(assert (not b!4989112))

(assert (not b!4989107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

