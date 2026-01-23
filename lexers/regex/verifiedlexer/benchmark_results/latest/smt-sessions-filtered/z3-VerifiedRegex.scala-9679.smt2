; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507478 () Bool)

(assert start!507478)

(declare-fun b!4857294 () Bool)

(declare-fun e!3036730 () Bool)

(declare-datatypes ((T!98644 0))(
  ( (T!98645 (val!22406 Int)) )
))
(declare-datatypes ((List!55874 0))(
  ( (Nil!55750) (Cons!55750 (h!62198 T!98644) (t!363452 List!55874)) )
))
(declare-datatypes ((IArray!29121 0))(
  ( (IArray!29122 (innerList!14618 List!55874)) )
))
(declare-datatypes ((Conc!14530 0))(
  ( (Node!14530 (left!40515 Conc!14530) (right!40845 Conc!14530) (csize!29290 Int) (cheight!14741 Int)) (Leaf!24210 (xs!17836 IArray!29121) (csize!29291 Int)) (Empty!14530) )
))
(declare-fun t!4677 () Conc!14530)

(declare-fun isEmpty!29832 (List!55874) Bool)

(declare-fun ++!12135 (List!55874 List!55874) List!55874)

(declare-fun list!17420 (Conc!14530) List!55874)

(assert (=> b!4857294 (= e!3036730 (isEmpty!29832 (++!12135 (list!17420 (left!40515 t!4677)) (list!17420 (right!40845 t!4677)))))))

(declare-fun e!3036731 () Bool)

(declare-fun tp!1366534 () Bool)

(declare-fun tp!1366533 () Bool)

(declare-fun b!4857295 () Bool)

(declare-fun inv!71585 (Conc!14530) Bool)

(assert (=> b!4857295 (= e!3036731 (and (inv!71585 (left!40515 t!4677)) tp!1366534 (inv!71585 (right!40845 t!4677)) tp!1366533))))

(declare-fun b!4857297 () Bool)

(declare-fun e!3036732 () Bool)

(declare-fun tp!1366535 () Bool)

(assert (=> b!4857297 (= e!3036732 tp!1366535)))

(declare-fun b!4857298 () Bool)

(declare-fun res!2073560 () Bool)

(assert (=> b!4857298 (=> (not res!2073560) (not e!3036730))))

(declare-fun isEmpty!29833 (Conc!14530) Bool)

(assert (=> b!4857298 (= res!2073560 (not (isEmpty!29833 t!4677)))))

(declare-fun b!4857299 () Bool)

(declare-fun inv!71586 (IArray!29121) Bool)

(assert (=> b!4857299 (= e!3036731 (and (inv!71586 (xs!17836 t!4677)) e!3036732))))

(declare-fun res!2073561 () Bool)

(assert (=> start!507478 (=> (not res!2073561) (not e!3036730))))

(declare-fun isBalanced!3936 (Conc!14530) Bool)

(assert (=> start!507478 (= res!2073561 (isBalanced!3936 t!4677))))

(assert (=> start!507478 e!3036730))

(assert (=> start!507478 (and (inv!71585 t!4677) e!3036731)))

(declare-fun b!4857296 () Bool)

(declare-fun res!2073559 () Bool)

(assert (=> b!4857296 (=> (not res!2073559) (not e!3036730))))

(get-info :version)

(assert (=> b!4857296 (= res!2073559 (and (not ((_ is Leaf!24210) t!4677)) ((_ is Node!14530) t!4677)))))

(assert (= (and start!507478 res!2073561) b!4857298))

(assert (= (and b!4857298 res!2073560) b!4857296))

(assert (= (and b!4857296 res!2073559) b!4857294))

(assert (= (and start!507478 ((_ is Node!14530) t!4677)) b!4857295))

(assert (= b!4857299 b!4857297))

(assert (= (and start!507478 ((_ is Leaf!24210) t!4677)) b!4857299))

(declare-fun m!5855022 () Bool)

(assert (=> b!4857298 m!5855022))

(declare-fun m!5855024 () Bool)

(assert (=> start!507478 m!5855024))

(declare-fun m!5855026 () Bool)

(assert (=> start!507478 m!5855026))

(declare-fun m!5855028 () Bool)

(assert (=> b!4857299 m!5855028))

(declare-fun m!5855030 () Bool)

(assert (=> b!4857295 m!5855030))

(declare-fun m!5855032 () Bool)

(assert (=> b!4857295 m!5855032))

(declare-fun m!5855034 () Bool)

(assert (=> b!4857294 m!5855034))

(declare-fun m!5855036 () Bool)

(assert (=> b!4857294 m!5855036))

(assert (=> b!4857294 m!5855034))

(assert (=> b!4857294 m!5855036))

(declare-fun m!5855038 () Bool)

(assert (=> b!4857294 m!5855038))

(assert (=> b!4857294 m!5855038))

(declare-fun m!5855040 () Bool)

(assert (=> b!4857294 m!5855040))

(check-sat (not start!507478) (not b!4857295) (not b!4857294) (not b!4857297) (not b!4857298) (not b!4857299))
(check-sat)
(get-model)

(declare-fun b!4857320 () Bool)

(declare-fun res!2073583 () Bool)

(declare-fun e!3036741 () Bool)

(assert (=> b!4857320 (=> (not res!2073583) (not e!3036741))))

(assert (=> b!4857320 (= res!2073583 (isBalanced!3936 (left!40515 t!4677)))))

(declare-fun b!4857321 () Bool)

(assert (=> b!4857321 (= e!3036741 (not (isEmpty!29833 (right!40845 t!4677))))))

(declare-fun b!4857322 () Bool)

(declare-fun res!2073578 () Bool)

(assert (=> b!4857322 (=> (not res!2073578) (not e!3036741))))

(assert (=> b!4857322 (= res!2073578 (not (isEmpty!29833 (left!40515 t!4677))))))

(declare-fun b!4857323 () Bool)

(declare-fun res!2073581 () Bool)

(assert (=> b!4857323 (=> (not res!2073581) (not e!3036741))))

(assert (=> b!4857323 (= res!2073581 (isBalanced!3936 (right!40845 t!4677)))))

(declare-fun d!1558988 () Bool)

(declare-fun res!2073579 () Bool)

(declare-fun e!3036742 () Bool)

(assert (=> d!1558988 (=> res!2073579 e!3036742)))

(assert (=> d!1558988 (= res!2073579 (not ((_ is Node!14530) t!4677)))))

(assert (=> d!1558988 (= (isBalanced!3936 t!4677) e!3036742)))

(declare-fun b!4857324 () Bool)

(declare-fun res!2073582 () Bool)

(assert (=> b!4857324 (=> (not res!2073582) (not e!3036741))))

(declare-fun height!1908 (Conc!14530) Int)

(assert (=> b!4857324 (= res!2073582 (<= (- (height!1908 (left!40515 t!4677)) (height!1908 (right!40845 t!4677))) 1))))

(declare-fun b!4857325 () Bool)

(assert (=> b!4857325 (= e!3036742 e!3036741)))

(declare-fun res!2073580 () Bool)

(assert (=> b!4857325 (=> (not res!2073580) (not e!3036741))))

(assert (=> b!4857325 (= res!2073580 (<= (- 1) (- (height!1908 (left!40515 t!4677)) (height!1908 (right!40845 t!4677)))))))

(assert (= (and d!1558988 (not res!2073579)) b!4857325))

(assert (= (and b!4857325 res!2073580) b!4857324))

(assert (= (and b!4857324 res!2073582) b!4857320))

(assert (= (and b!4857320 res!2073583) b!4857323))

(assert (= (and b!4857323 res!2073581) b!4857322))

(assert (= (and b!4857322 res!2073578) b!4857321))

(declare-fun m!5855042 () Bool)

(assert (=> b!4857320 m!5855042))

(declare-fun m!5855044 () Bool)

(assert (=> b!4857321 m!5855044))

(declare-fun m!5855046 () Bool)

(assert (=> b!4857324 m!5855046))

(declare-fun m!5855048 () Bool)

(assert (=> b!4857324 m!5855048))

(assert (=> b!4857325 m!5855046))

(assert (=> b!4857325 m!5855048))

(declare-fun m!5855050 () Bool)

(assert (=> b!4857323 m!5855050))

(declare-fun m!5855052 () Bool)

(assert (=> b!4857322 m!5855052))

(assert (=> start!507478 d!1558988))

(declare-fun d!1558994 () Bool)

(declare-fun c!826283 () Bool)

(assert (=> d!1558994 (= c!826283 ((_ is Node!14530) t!4677))))

(declare-fun e!3036753 () Bool)

(assert (=> d!1558994 (= (inv!71585 t!4677) e!3036753)))

(declare-fun b!4857344 () Bool)

(declare-fun inv!71587 (Conc!14530) Bool)

(assert (=> b!4857344 (= e!3036753 (inv!71587 t!4677))))

(declare-fun b!4857345 () Bool)

(declare-fun e!3036754 () Bool)

(assert (=> b!4857345 (= e!3036753 e!3036754)))

(declare-fun res!2073588 () Bool)

(assert (=> b!4857345 (= res!2073588 (not ((_ is Leaf!24210) t!4677)))))

(assert (=> b!4857345 (=> res!2073588 e!3036754)))

(declare-fun b!4857346 () Bool)

(declare-fun inv!71588 (Conc!14530) Bool)

(assert (=> b!4857346 (= e!3036754 (inv!71588 t!4677))))

(assert (= (and d!1558994 c!826283) b!4857344))

(assert (= (and d!1558994 (not c!826283)) b!4857345))

(assert (= (and b!4857345 (not res!2073588)) b!4857346))

(declare-fun m!5855068 () Bool)

(assert (=> b!4857344 m!5855068))

(declare-fun m!5855070 () Bool)

(assert (=> b!4857346 m!5855070))

(assert (=> start!507478 d!1558994))

(declare-fun d!1558998 () Bool)

(declare-fun size!36729 (List!55874) Int)

(assert (=> d!1558998 (= (inv!71586 (xs!17836 t!4677)) (<= (size!36729 (innerList!14618 (xs!17836 t!4677))) 2147483647))))

(declare-fun bs!1173776 () Bool)

(assert (= bs!1173776 d!1558998))

(declare-fun m!5855088 () Bool)

(assert (=> bs!1173776 m!5855088))

(assert (=> b!4857299 d!1558998))

(declare-fun d!1559004 () Bool)

(declare-fun lt!1991605 () Bool)

(assert (=> d!1559004 (= lt!1991605 (isEmpty!29832 (list!17420 t!4677)))))

(declare-fun size!36730 (Conc!14530) Int)

(assert (=> d!1559004 (= lt!1991605 (= (size!36730 t!4677) 0))))

(assert (=> d!1559004 (= (isEmpty!29833 t!4677) lt!1991605)))

(declare-fun bs!1173777 () Bool)

(assert (= bs!1173777 d!1559004))

(declare-fun m!5855090 () Bool)

(assert (=> bs!1173777 m!5855090))

(assert (=> bs!1173777 m!5855090))

(declare-fun m!5855092 () Bool)

(assert (=> bs!1173777 m!5855092))

(declare-fun m!5855094 () Bool)

(assert (=> bs!1173777 m!5855094))

(assert (=> b!4857298 d!1559004))

(declare-fun d!1559006 () Bool)

(declare-fun c!826288 () Bool)

(assert (=> d!1559006 (= c!826288 ((_ is Node!14530) (left!40515 t!4677)))))

(declare-fun e!3036759 () Bool)

(assert (=> d!1559006 (= (inv!71585 (left!40515 t!4677)) e!3036759)))

(declare-fun b!4857355 () Bool)

(assert (=> b!4857355 (= e!3036759 (inv!71587 (left!40515 t!4677)))))

(declare-fun b!4857356 () Bool)

(declare-fun e!3036760 () Bool)

(assert (=> b!4857356 (= e!3036759 e!3036760)))

(declare-fun res!2073589 () Bool)

(assert (=> b!4857356 (= res!2073589 (not ((_ is Leaf!24210) (left!40515 t!4677))))))

(assert (=> b!4857356 (=> res!2073589 e!3036760)))

(declare-fun b!4857357 () Bool)

(assert (=> b!4857357 (= e!3036760 (inv!71588 (left!40515 t!4677)))))

(assert (= (and d!1559006 c!826288) b!4857355))

(assert (= (and d!1559006 (not c!826288)) b!4857356))

(assert (= (and b!4857356 (not res!2073589)) b!4857357))

(declare-fun m!5855096 () Bool)

(assert (=> b!4857355 m!5855096))

(declare-fun m!5855098 () Bool)

(assert (=> b!4857357 m!5855098))

(assert (=> b!4857295 d!1559006))

(declare-fun d!1559008 () Bool)

(declare-fun c!826289 () Bool)

(assert (=> d!1559008 (= c!826289 ((_ is Node!14530) (right!40845 t!4677)))))

(declare-fun e!3036761 () Bool)

(assert (=> d!1559008 (= (inv!71585 (right!40845 t!4677)) e!3036761)))

(declare-fun b!4857358 () Bool)

(assert (=> b!4857358 (= e!3036761 (inv!71587 (right!40845 t!4677)))))

(declare-fun b!4857359 () Bool)

(declare-fun e!3036762 () Bool)

(assert (=> b!4857359 (= e!3036761 e!3036762)))

(declare-fun res!2073590 () Bool)

(assert (=> b!4857359 (= res!2073590 (not ((_ is Leaf!24210) (right!40845 t!4677))))))

(assert (=> b!4857359 (=> res!2073590 e!3036762)))

(declare-fun b!4857360 () Bool)

(assert (=> b!4857360 (= e!3036762 (inv!71588 (right!40845 t!4677)))))

(assert (= (and d!1559008 c!826289) b!4857358))

(assert (= (and d!1559008 (not c!826289)) b!4857359))

(assert (= (and b!4857359 (not res!2073590)) b!4857360))

(declare-fun m!5855100 () Bool)

(assert (=> b!4857358 m!5855100))

(declare-fun m!5855102 () Bool)

(assert (=> b!4857360 m!5855102))

(assert (=> b!4857295 d!1559008))

(declare-fun d!1559010 () Bool)

(assert (=> d!1559010 (= (isEmpty!29832 (++!12135 (list!17420 (left!40515 t!4677)) (list!17420 (right!40845 t!4677)))) ((_ is Nil!55750) (++!12135 (list!17420 (left!40515 t!4677)) (list!17420 (right!40845 t!4677)))))))

(assert (=> b!4857294 d!1559010))

(declare-fun d!1559012 () Bool)

(declare-fun e!3036773 () Bool)

(assert (=> d!1559012 e!3036773))

(declare-fun res!2073614 () Bool)

(assert (=> d!1559012 (=> (not res!2073614) (not e!3036773))))

(declare-fun lt!1991608 () List!55874)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9935 (List!55874) (InoxSet T!98644))

(assert (=> d!1559012 (= res!2073614 (= (content!9935 lt!1991608) ((_ map or) (content!9935 (list!17420 (left!40515 t!4677))) (content!9935 (list!17420 (right!40845 t!4677))))))))

(declare-fun e!3036774 () List!55874)

(assert (=> d!1559012 (= lt!1991608 e!3036774)))

(declare-fun c!826292 () Bool)

(assert (=> d!1559012 (= c!826292 ((_ is Nil!55750) (list!17420 (left!40515 t!4677))))))

(assert (=> d!1559012 (= (++!12135 (list!17420 (left!40515 t!4677)) (list!17420 (right!40845 t!4677))) lt!1991608)))

(declare-fun b!4857388 () Bool)

(assert (=> b!4857388 (= e!3036774 (Cons!55750 (h!62198 (list!17420 (left!40515 t!4677))) (++!12135 (t!363452 (list!17420 (left!40515 t!4677))) (list!17420 (right!40845 t!4677)))))))

(declare-fun b!4857390 () Bool)

(assert (=> b!4857390 (= e!3036773 (or (not (= (list!17420 (right!40845 t!4677)) Nil!55750)) (= lt!1991608 (list!17420 (left!40515 t!4677)))))))

(declare-fun b!4857387 () Bool)

(assert (=> b!4857387 (= e!3036774 (list!17420 (right!40845 t!4677)))))

(declare-fun b!4857389 () Bool)

(declare-fun res!2073613 () Bool)

(assert (=> b!4857389 (=> (not res!2073613) (not e!3036773))))

(assert (=> b!4857389 (= res!2073613 (= (size!36729 lt!1991608) (+ (size!36729 (list!17420 (left!40515 t!4677))) (size!36729 (list!17420 (right!40845 t!4677))))))))

(assert (= (and d!1559012 c!826292) b!4857387))

(assert (= (and d!1559012 (not c!826292)) b!4857388))

(assert (= (and d!1559012 res!2073614) b!4857389))

(assert (= (and b!4857389 res!2073613) b!4857390))

(declare-fun m!5855116 () Bool)

(assert (=> d!1559012 m!5855116))

(assert (=> d!1559012 m!5855034))

(declare-fun m!5855118 () Bool)

(assert (=> d!1559012 m!5855118))

(assert (=> d!1559012 m!5855036))

(declare-fun m!5855120 () Bool)

(assert (=> d!1559012 m!5855120))

(assert (=> b!4857388 m!5855036))

(declare-fun m!5855122 () Bool)

(assert (=> b!4857388 m!5855122))

(declare-fun m!5855124 () Bool)

(assert (=> b!4857389 m!5855124))

(assert (=> b!4857389 m!5855034))

(declare-fun m!5855126 () Bool)

(assert (=> b!4857389 m!5855126))

(assert (=> b!4857389 m!5855036))

(declare-fun m!5855128 () Bool)

(assert (=> b!4857389 m!5855128))

(assert (=> b!4857294 d!1559012))

(declare-fun b!4857409 () Bool)

(declare-fun e!3036785 () List!55874)

(declare-fun e!3036786 () List!55874)

(assert (=> b!4857409 (= e!3036785 e!3036786)))

(declare-fun c!826301 () Bool)

(assert (=> b!4857409 (= c!826301 ((_ is Leaf!24210) (left!40515 t!4677)))))

(declare-fun b!4857411 () Bool)

(assert (=> b!4857411 (= e!3036786 (++!12135 (list!17420 (left!40515 (left!40515 t!4677))) (list!17420 (right!40845 (left!40515 t!4677)))))))

(declare-fun b!4857408 () Bool)

(assert (=> b!4857408 (= e!3036785 Nil!55750)))

(declare-fun b!4857410 () Bool)

(declare-fun list!17422 (IArray!29121) List!55874)

(assert (=> b!4857410 (= e!3036786 (list!17422 (xs!17836 (left!40515 t!4677))))))

(declare-fun d!1559016 () Bool)

(declare-fun c!826300 () Bool)

(assert (=> d!1559016 (= c!826300 ((_ is Empty!14530) (left!40515 t!4677)))))

(assert (=> d!1559016 (= (list!17420 (left!40515 t!4677)) e!3036785)))

(assert (= (and d!1559016 c!826300) b!4857408))

(assert (= (and d!1559016 (not c!826300)) b!4857409))

(assert (= (and b!4857409 c!826301) b!4857410))

(assert (= (and b!4857409 (not c!826301)) b!4857411))

(declare-fun m!5855136 () Bool)

(assert (=> b!4857411 m!5855136))

(declare-fun m!5855138 () Bool)

(assert (=> b!4857411 m!5855138))

(assert (=> b!4857411 m!5855136))

(assert (=> b!4857411 m!5855138))

(declare-fun m!5855140 () Bool)

(assert (=> b!4857411 m!5855140))

(declare-fun m!5855142 () Bool)

(assert (=> b!4857410 m!5855142))

(assert (=> b!4857294 d!1559016))

(declare-fun b!4857413 () Bool)

(declare-fun e!3036787 () List!55874)

(declare-fun e!3036788 () List!55874)

(assert (=> b!4857413 (= e!3036787 e!3036788)))

(declare-fun c!826303 () Bool)

(assert (=> b!4857413 (= c!826303 ((_ is Leaf!24210) (right!40845 t!4677)))))

(declare-fun b!4857415 () Bool)

(assert (=> b!4857415 (= e!3036788 (++!12135 (list!17420 (left!40515 (right!40845 t!4677))) (list!17420 (right!40845 (right!40845 t!4677)))))))

(declare-fun b!4857412 () Bool)

(assert (=> b!4857412 (= e!3036787 Nil!55750)))

(declare-fun b!4857414 () Bool)

(assert (=> b!4857414 (= e!3036788 (list!17422 (xs!17836 (right!40845 t!4677))))))

(declare-fun d!1559022 () Bool)

(declare-fun c!826302 () Bool)

(assert (=> d!1559022 (= c!826302 ((_ is Empty!14530) (right!40845 t!4677)))))

(assert (=> d!1559022 (= (list!17420 (right!40845 t!4677)) e!3036787)))

(assert (= (and d!1559022 c!826302) b!4857412))

(assert (= (and d!1559022 (not c!826302)) b!4857413))

(assert (= (and b!4857413 c!826303) b!4857414))

(assert (= (and b!4857413 (not c!826303)) b!4857415))

(declare-fun m!5855144 () Bool)

(assert (=> b!4857415 m!5855144))

(declare-fun m!5855146 () Bool)

(assert (=> b!4857415 m!5855146))

(assert (=> b!4857415 m!5855144))

(assert (=> b!4857415 m!5855146))

(declare-fun m!5855148 () Bool)

(assert (=> b!4857415 m!5855148))

(declare-fun m!5855150 () Bool)

(assert (=> b!4857414 m!5855150))

(assert (=> b!4857294 d!1559022))

(declare-fun b!4857420 () Bool)

(declare-fun e!3036791 () Bool)

(declare-fun tp_is_empty!35517 () Bool)

(declare-fun tp!1366538 () Bool)

(assert (=> b!4857420 (= e!3036791 (and tp_is_empty!35517 tp!1366538))))

(assert (=> b!4857297 (= tp!1366535 e!3036791)))

(assert (= (and b!4857297 ((_ is Cons!55750) (innerList!14618 (xs!17836 t!4677)))) b!4857420))

(declare-fun tp!1366551 () Bool)

(declare-fun tp!1366552 () Bool)

(declare-fun e!3036805 () Bool)

(declare-fun b!4857443 () Bool)

(assert (=> b!4857443 (= e!3036805 (and (inv!71585 (left!40515 (left!40515 t!4677))) tp!1366551 (inv!71585 (right!40845 (left!40515 t!4677))) tp!1366552))))

(declare-fun b!4857445 () Bool)

(declare-fun e!3036804 () Bool)

(declare-fun tp!1366553 () Bool)

(assert (=> b!4857445 (= e!3036804 tp!1366553)))

(declare-fun b!4857444 () Bool)

(assert (=> b!4857444 (= e!3036805 (and (inv!71586 (xs!17836 (left!40515 t!4677))) e!3036804))))

(assert (=> b!4857295 (= tp!1366534 (and (inv!71585 (left!40515 t!4677)) e!3036805))))

(assert (= (and b!4857295 ((_ is Node!14530) (left!40515 t!4677))) b!4857443))

(assert (= b!4857444 b!4857445))

(assert (= (and b!4857295 ((_ is Leaf!24210) (left!40515 t!4677))) b!4857444))

(declare-fun m!5855166 () Bool)

(assert (=> b!4857443 m!5855166))

(declare-fun m!5855168 () Bool)

(assert (=> b!4857443 m!5855168))

(declare-fun m!5855170 () Bool)

(assert (=> b!4857444 m!5855170))

(assert (=> b!4857295 m!5855030))

(declare-fun tp!1366555 () Bool)

(declare-fun e!3036807 () Bool)

(declare-fun tp!1366554 () Bool)

(declare-fun b!4857446 () Bool)

(assert (=> b!4857446 (= e!3036807 (and (inv!71585 (left!40515 (right!40845 t!4677))) tp!1366554 (inv!71585 (right!40845 (right!40845 t!4677))) tp!1366555))))

(declare-fun b!4857448 () Bool)

(declare-fun e!3036806 () Bool)

(declare-fun tp!1366556 () Bool)

(assert (=> b!4857448 (= e!3036806 tp!1366556)))

(declare-fun b!4857447 () Bool)

(assert (=> b!4857447 (= e!3036807 (and (inv!71586 (xs!17836 (right!40845 t!4677))) e!3036806))))

(assert (=> b!4857295 (= tp!1366533 (and (inv!71585 (right!40845 t!4677)) e!3036807))))

(assert (= (and b!4857295 ((_ is Node!14530) (right!40845 t!4677))) b!4857446))

(assert (= b!4857447 b!4857448))

(assert (= (and b!4857295 ((_ is Leaf!24210) (right!40845 t!4677))) b!4857447))

(declare-fun m!5855172 () Bool)

(assert (=> b!4857446 m!5855172))

(declare-fun m!5855174 () Bool)

(assert (=> b!4857446 m!5855174))

(declare-fun m!5855176 () Bool)

(assert (=> b!4857447 m!5855176))

(assert (=> b!4857295 m!5855032))

(check-sat (not b!4857444) (not b!4857325) (not d!1558998) (not b!4857447) (not b!4857448) (not b!4857445) (not b!4857443) (not b!4857320) (not b!4857360) tp_is_empty!35517 (not b!4857410) (not b!4857411) (not b!4857324) (not b!4857446) (not b!4857389) (not b!4857295) (not b!4857357) (not b!4857415) (not b!4857321) (not b!4857355) (not b!4857344) (not d!1559012) (not b!4857414) (not b!4857420) (not b!4857346) (not b!4857358) (not b!4857322) (not b!4857323) (not d!1559004) (not b!4857388))
(check-sat)
(get-model)

(declare-fun d!1559028 () Bool)

(assert (=> d!1559028 (= (height!1908 (left!40515 t!4677)) (ite ((_ is Empty!14530) (left!40515 t!4677)) 0 (ite ((_ is Leaf!24210) (left!40515 t!4677)) 1 (cheight!14741 (left!40515 t!4677)))))))

(assert (=> b!4857324 d!1559028))

(declare-fun d!1559030 () Bool)

(assert (=> d!1559030 (= (height!1908 (right!40845 t!4677)) (ite ((_ is Empty!14530) (right!40845 t!4677)) 0 (ite ((_ is Leaf!24210) (right!40845 t!4677)) 1 (cheight!14741 (right!40845 t!4677)))))))

(assert (=> b!4857324 d!1559030))

(assert (=> b!4857325 d!1559028))

(assert (=> b!4857325 d!1559030))

(declare-fun d!1559032 () Bool)

(declare-fun c!826308 () Bool)

(assert (=> d!1559032 (= c!826308 ((_ is Nil!55750) lt!1991608))))

(declare-fun e!3036817 () (InoxSet T!98644))

(assert (=> d!1559032 (= (content!9935 lt!1991608) e!3036817)))

(declare-fun b!4857464 () Bool)

(assert (=> b!4857464 (= e!3036817 ((as const (Array T!98644 Bool)) false))))

(declare-fun b!4857465 () Bool)

(assert (=> b!4857465 (= e!3036817 ((_ map or) (store ((as const (Array T!98644 Bool)) false) (h!62198 lt!1991608) true) (content!9935 (t!363452 lt!1991608))))))

(assert (= (and d!1559032 c!826308) b!4857464))

(assert (= (and d!1559032 (not c!826308)) b!4857465))

(declare-fun m!5855190 () Bool)

(assert (=> b!4857465 m!5855190))

(declare-fun m!5855192 () Bool)

(assert (=> b!4857465 m!5855192))

(assert (=> d!1559012 d!1559032))

(declare-fun d!1559034 () Bool)

(declare-fun c!826309 () Bool)

(assert (=> d!1559034 (= c!826309 ((_ is Nil!55750) (list!17420 (left!40515 t!4677))))))

(declare-fun e!3036818 () (InoxSet T!98644))

(assert (=> d!1559034 (= (content!9935 (list!17420 (left!40515 t!4677))) e!3036818)))

(declare-fun b!4857466 () Bool)

(assert (=> b!4857466 (= e!3036818 ((as const (Array T!98644 Bool)) false))))

(declare-fun b!4857467 () Bool)

(assert (=> b!4857467 (= e!3036818 ((_ map or) (store ((as const (Array T!98644 Bool)) false) (h!62198 (list!17420 (left!40515 t!4677))) true) (content!9935 (t!363452 (list!17420 (left!40515 t!4677))))))))

(assert (= (and d!1559034 c!826309) b!4857466))

(assert (= (and d!1559034 (not c!826309)) b!4857467))

(declare-fun m!5855194 () Bool)

(assert (=> b!4857467 m!5855194))

(declare-fun m!5855196 () Bool)

(assert (=> b!4857467 m!5855196))

(assert (=> d!1559012 d!1559034))

(declare-fun d!1559036 () Bool)

(declare-fun c!826310 () Bool)

(assert (=> d!1559036 (= c!826310 ((_ is Nil!55750) (list!17420 (right!40845 t!4677))))))

(declare-fun e!3036819 () (InoxSet T!98644))

(assert (=> d!1559036 (= (content!9935 (list!17420 (right!40845 t!4677))) e!3036819)))

(declare-fun b!4857468 () Bool)

(assert (=> b!4857468 (= e!3036819 ((as const (Array T!98644 Bool)) false))))

(declare-fun b!4857469 () Bool)

(assert (=> b!4857469 (= e!3036819 ((_ map or) (store ((as const (Array T!98644 Bool)) false) (h!62198 (list!17420 (right!40845 t!4677))) true) (content!9935 (t!363452 (list!17420 (right!40845 t!4677))))))))

(assert (= (and d!1559036 c!826310) b!4857468))

(assert (= (and d!1559036 (not c!826310)) b!4857469))

(declare-fun m!5855198 () Bool)

(assert (=> b!4857469 m!5855198))

(declare-fun m!5855200 () Bool)

(assert (=> b!4857469 m!5855200))

(assert (=> d!1559012 d!1559036))

(declare-fun d!1559038 () Bool)

(declare-fun lt!1991612 () Bool)

(assert (=> d!1559038 (= lt!1991612 (isEmpty!29832 (list!17420 (right!40845 t!4677))))))

(assert (=> d!1559038 (= lt!1991612 (= (size!36730 (right!40845 t!4677)) 0))))

(assert (=> d!1559038 (= (isEmpty!29833 (right!40845 t!4677)) lt!1991612)))

(declare-fun bs!1173780 () Bool)

(assert (= bs!1173780 d!1559038))

(assert (=> bs!1173780 m!5855036))

(assert (=> bs!1173780 m!5855036))

(declare-fun m!5855202 () Bool)

(assert (=> bs!1173780 m!5855202))

(declare-fun m!5855204 () Bool)

(assert (=> bs!1173780 m!5855204))

(assert (=> b!4857321 d!1559038))

(declare-fun d!1559040 () Bool)

(declare-fun res!2073626 () Bool)

(declare-fun e!3036822 () Bool)

(assert (=> d!1559040 (=> (not res!2073626) (not e!3036822))))

(assert (=> d!1559040 (= res!2073626 (= (csize!29290 t!4677) (+ (size!36730 (left!40515 t!4677)) (size!36730 (right!40845 t!4677)))))))

(assert (=> d!1559040 (= (inv!71587 t!4677) e!3036822)))

(declare-fun b!4857476 () Bool)

(declare-fun res!2073627 () Bool)

(assert (=> b!4857476 (=> (not res!2073627) (not e!3036822))))

(assert (=> b!4857476 (= res!2073627 (and (not (= (left!40515 t!4677) Empty!14530)) (not (= (right!40845 t!4677) Empty!14530))))))

(declare-fun b!4857477 () Bool)

(declare-fun res!2073628 () Bool)

(assert (=> b!4857477 (=> (not res!2073628) (not e!3036822))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4857477 (= res!2073628 (= (cheight!14741 t!4677) (+ (max!0 (height!1908 (left!40515 t!4677)) (height!1908 (right!40845 t!4677))) 1)))))

(declare-fun b!4857478 () Bool)

(assert (=> b!4857478 (= e!3036822 (<= 0 (cheight!14741 t!4677)))))

(assert (= (and d!1559040 res!2073626) b!4857476))

(assert (= (and b!4857476 res!2073627) b!4857477))

(assert (= (and b!4857477 res!2073628) b!4857478))

(declare-fun m!5855206 () Bool)

(assert (=> d!1559040 m!5855206))

(assert (=> d!1559040 m!5855204))

(assert (=> b!4857477 m!5855046))

(assert (=> b!4857477 m!5855048))

(assert (=> b!4857477 m!5855046))

(assert (=> b!4857477 m!5855048))

(declare-fun m!5855208 () Bool)

(assert (=> b!4857477 m!5855208))

(assert (=> b!4857344 d!1559040))

(assert (=> b!4857295 d!1559006))

(assert (=> b!4857295 d!1559008))

(declare-fun b!4857479 () Bool)

(declare-fun res!2073634 () Bool)

(declare-fun e!3036823 () Bool)

(assert (=> b!4857479 (=> (not res!2073634) (not e!3036823))))

(assert (=> b!4857479 (= res!2073634 (isBalanced!3936 (left!40515 (right!40845 t!4677))))))

(declare-fun b!4857480 () Bool)

(assert (=> b!4857480 (= e!3036823 (not (isEmpty!29833 (right!40845 (right!40845 t!4677)))))))

(declare-fun b!4857481 () Bool)

(declare-fun res!2073629 () Bool)

(assert (=> b!4857481 (=> (not res!2073629) (not e!3036823))))

(assert (=> b!4857481 (= res!2073629 (not (isEmpty!29833 (left!40515 (right!40845 t!4677)))))))

(declare-fun b!4857482 () Bool)

(declare-fun res!2073632 () Bool)

(assert (=> b!4857482 (=> (not res!2073632) (not e!3036823))))

(assert (=> b!4857482 (= res!2073632 (isBalanced!3936 (right!40845 (right!40845 t!4677))))))

(declare-fun d!1559042 () Bool)

(declare-fun res!2073630 () Bool)

(declare-fun e!3036824 () Bool)

(assert (=> d!1559042 (=> res!2073630 e!3036824)))

(assert (=> d!1559042 (= res!2073630 (not ((_ is Node!14530) (right!40845 t!4677))))))

(assert (=> d!1559042 (= (isBalanced!3936 (right!40845 t!4677)) e!3036824)))

(declare-fun b!4857483 () Bool)

(declare-fun res!2073633 () Bool)

(assert (=> b!4857483 (=> (not res!2073633) (not e!3036823))))

(assert (=> b!4857483 (= res!2073633 (<= (- (height!1908 (left!40515 (right!40845 t!4677))) (height!1908 (right!40845 (right!40845 t!4677)))) 1))))

(declare-fun b!4857484 () Bool)

(assert (=> b!4857484 (= e!3036824 e!3036823)))

(declare-fun res!2073631 () Bool)

(assert (=> b!4857484 (=> (not res!2073631) (not e!3036823))))

(assert (=> b!4857484 (= res!2073631 (<= (- 1) (- (height!1908 (left!40515 (right!40845 t!4677))) (height!1908 (right!40845 (right!40845 t!4677))))))))

(assert (= (and d!1559042 (not res!2073630)) b!4857484))

(assert (= (and b!4857484 res!2073631) b!4857483))

(assert (= (and b!4857483 res!2073633) b!4857479))

(assert (= (and b!4857479 res!2073634) b!4857482))

(assert (= (and b!4857482 res!2073632) b!4857481))

(assert (= (and b!4857481 res!2073629) b!4857480))

(declare-fun m!5855210 () Bool)

(assert (=> b!4857479 m!5855210))

(declare-fun m!5855212 () Bool)

(assert (=> b!4857480 m!5855212))

(declare-fun m!5855214 () Bool)

(assert (=> b!4857483 m!5855214))

(declare-fun m!5855216 () Bool)

(assert (=> b!4857483 m!5855216))

(assert (=> b!4857484 m!5855214))

(assert (=> b!4857484 m!5855216))

(declare-fun m!5855218 () Bool)

(assert (=> b!4857482 m!5855218))

(declare-fun m!5855220 () Bool)

(assert (=> b!4857481 m!5855220))

(assert (=> b!4857323 d!1559042))

(declare-fun d!1559044 () Bool)

(declare-fun res!2073639 () Bool)

(declare-fun e!3036827 () Bool)

(assert (=> d!1559044 (=> (not res!2073639) (not e!3036827))))

(assert (=> d!1559044 (= res!2073639 (<= (size!36729 (list!17422 (xs!17836 t!4677))) 512))))

(assert (=> d!1559044 (= (inv!71588 t!4677) e!3036827)))

(declare-fun b!4857489 () Bool)

(declare-fun res!2073640 () Bool)

(assert (=> b!4857489 (=> (not res!2073640) (not e!3036827))))

(assert (=> b!4857489 (= res!2073640 (= (csize!29291 t!4677) (size!36729 (list!17422 (xs!17836 t!4677)))))))

(declare-fun b!4857490 () Bool)

(assert (=> b!4857490 (= e!3036827 (and (> (csize!29291 t!4677) 0) (<= (csize!29291 t!4677) 512)))))

(assert (= (and d!1559044 res!2073639) b!4857489))

(assert (= (and b!4857489 res!2073640) b!4857490))

(declare-fun m!5855222 () Bool)

(assert (=> d!1559044 m!5855222))

(assert (=> d!1559044 m!5855222))

(declare-fun m!5855224 () Bool)

(assert (=> d!1559044 m!5855224))

(assert (=> b!4857489 m!5855222))

(assert (=> b!4857489 m!5855222))

(assert (=> b!4857489 m!5855224))

(assert (=> b!4857346 d!1559044))

(declare-fun d!1559046 () Bool)

(declare-fun lt!1991613 () Bool)

(assert (=> d!1559046 (= lt!1991613 (isEmpty!29832 (list!17420 (left!40515 t!4677))))))

(assert (=> d!1559046 (= lt!1991613 (= (size!36730 (left!40515 t!4677)) 0))))

(assert (=> d!1559046 (= (isEmpty!29833 (left!40515 t!4677)) lt!1991613)))

(declare-fun bs!1173781 () Bool)

(assert (= bs!1173781 d!1559046))

(assert (=> bs!1173781 m!5855034))

(assert (=> bs!1173781 m!5855034))

(declare-fun m!5855226 () Bool)

(assert (=> bs!1173781 m!5855226))

(assert (=> bs!1173781 m!5855206))

(assert (=> b!4857322 d!1559046))

(declare-fun d!1559048 () Bool)

(declare-fun res!2073641 () Bool)

(declare-fun e!3036828 () Bool)

(assert (=> d!1559048 (=> (not res!2073641) (not e!3036828))))

(assert (=> d!1559048 (= res!2073641 (<= (size!36729 (list!17422 (xs!17836 (right!40845 t!4677)))) 512))))

(assert (=> d!1559048 (= (inv!71588 (right!40845 t!4677)) e!3036828)))

(declare-fun b!4857491 () Bool)

(declare-fun res!2073642 () Bool)

(assert (=> b!4857491 (=> (not res!2073642) (not e!3036828))))

(assert (=> b!4857491 (= res!2073642 (= (csize!29291 (right!40845 t!4677)) (size!36729 (list!17422 (xs!17836 (right!40845 t!4677))))))))

(declare-fun b!4857492 () Bool)

(assert (=> b!4857492 (= e!3036828 (and (> (csize!29291 (right!40845 t!4677)) 0) (<= (csize!29291 (right!40845 t!4677)) 512)))))

(assert (= (and d!1559048 res!2073641) b!4857491))

(assert (= (and b!4857491 res!2073642) b!4857492))

(assert (=> d!1559048 m!5855150))

(assert (=> d!1559048 m!5855150))

(declare-fun m!5855228 () Bool)

(assert (=> d!1559048 m!5855228))

(assert (=> b!4857491 m!5855150))

(assert (=> b!4857491 m!5855150))

(assert (=> b!4857491 m!5855228))

(assert (=> b!4857360 d!1559048))

(declare-fun d!1559050 () Bool)

(declare-fun lt!1991616 () Int)

(assert (=> d!1559050 (>= lt!1991616 0)))

(declare-fun e!3036831 () Int)

(assert (=> d!1559050 (= lt!1991616 e!3036831)))

(declare-fun c!826313 () Bool)

(assert (=> d!1559050 (= c!826313 ((_ is Nil!55750) lt!1991608))))

(assert (=> d!1559050 (= (size!36729 lt!1991608) lt!1991616)))

(declare-fun b!4857497 () Bool)

(assert (=> b!4857497 (= e!3036831 0)))

(declare-fun b!4857498 () Bool)

(assert (=> b!4857498 (= e!3036831 (+ 1 (size!36729 (t!363452 lt!1991608))))))

(assert (= (and d!1559050 c!826313) b!4857497))

(assert (= (and d!1559050 (not c!826313)) b!4857498))

(declare-fun m!5855230 () Bool)

(assert (=> b!4857498 m!5855230))

(assert (=> b!4857389 d!1559050))

(declare-fun d!1559052 () Bool)

(declare-fun lt!1991617 () Int)

(assert (=> d!1559052 (>= lt!1991617 0)))

(declare-fun e!3036832 () Int)

(assert (=> d!1559052 (= lt!1991617 e!3036832)))

(declare-fun c!826314 () Bool)

(assert (=> d!1559052 (= c!826314 ((_ is Nil!55750) (list!17420 (left!40515 t!4677))))))

(assert (=> d!1559052 (= (size!36729 (list!17420 (left!40515 t!4677))) lt!1991617)))

(declare-fun b!4857499 () Bool)

(assert (=> b!4857499 (= e!3036832 0)))

(declare-fun b!4857500 () Bool)

(assert (=> b!4857500 (= e!3036832 (+ 1 (size!36729 (t!363452 (list!17420 (left!40515 t!4677))))))))

(assert (= (and d!1559052 c!826314) b!4857499))

(assert (= (and d!1559052 (not c!826314)) b!4857500))

(declare-fun m!5855232 () Bool)

(assert (=> b!4857500 m!5855232))

(assert (=> b!4857389 d!1559052))

(declare-fun d!1559054 () Bool)

(declare-fun lt!1991618 () Int)

(assert (=> d!1559054 (>= lt!1991618 0)))

(declare-fun e!3036833 () Int)

(assert (=> d!1559054 (= lt!1991618 e!3036833)))

(declare-fun c!826315 () Bool)

(assert (=> d!1559054 (= c!826315 ((_ is Nil!55750) (list!17420 (right!40845 t!4677))))))

(assert (=> d!1559054 (= (size!36729 (list!17420 (right!40845 t!4677))) lt!1991618)))

(declare-fun b!4857501 () Bool)

(assert (=> b!4857501 (= e!3036833 0)))

(declare-fun b!4857502 () Bool)

(assert (=> b!4857502 (= e!3036833 (+ 1 (size!36729 (t!363452 (list!17420 (right!40845 t!4677))))))))

(assert (= (and d!1559054 c!826315) b!4857501))

(assert (= (and d!1559054 (not c!826315)) b!4857502))

(declare-fun m!5855234 () Bool)

(assert (=> b!4857502 m!5855234))

(assert (=> b!4857389 d!1559054))

(declare-fun b!4857503 () Bool)

(declare-fun res!2073648 () Bool)

(declare-fun e!3036834 () Bool)

(assert (=> b!4857503 (=> (not res!2073648) (not e!3036834))))

(assert (=> b!4857503 (= res!2073648 (isBalanced!3936 (left!40515 (left!40515 t!4677))))))

(declare-fun b!4857504 () Bool)

(assert (=> b!4857504 (= e!3036834 (not (isEmpty!29833 (right!40845 (left!40515 t!4677)))))))

(declare-fun b!4857505 () Bool)

(declare-fun res!2073643 () Bool)

(assert (=> b!4857505 (=> (not res!2073643) (not e!3036834))))

(assert (=> b!4857505 (= res!2073643 (not (isEmpty!29833 (left!40515 (left!40515 t!4677)))))))

(declare-fun b!4857506 () Bool)

(declare-fun res!2073646 () Bool)

(assert (=> b!4857506 (=> (not res!2073646) (not e!3036834))))

(assert (=> b!4857506 (= res!2073646 (isBalanced!3936 (right!40845 (left!40515 t!4677))))))

(declare-fun d!1559056 () Bool)

(declare-fun res!2073644 () Bool)

(declare-fun e!3036835 () Bool)

(assert (=> d!1559056 (=> res!2073644 e!3036835)))

(assert (=> d!1559056 (= res!2073644 (not ((_ is Node!14530) (left!40515 t!4677))))))

(assert (=> d!1559056 (= (isBalanced!3936 (left!40515 t!4677)) e!3036835)))

(declare-fun b!4857507 () Bool)

(declare-fun res!2073647 () Bool)

(assert (=> b!4857507 (=> (not res!2073647) (not e!3036834))))

(assert (=> b!4857507 (= res!2073647 (<= (- (height!1908 (left!40515 (left!40515 t!4677))) (height!1908 (right!40845 (left!40515 t!4677)))) 1))))

(declare-fun b!4857508 () Bool)

(assert (=> b!4857508 (= e!3036835 e!3036834)))

(declare-fun res!2073645 () Bool)

(assert (=> b!4857508 (=> (not res!2073645) (not e!3036834))))

(assert (=> b!4857508 (= res!2073645 (<= (- 1) (- (height!1908 (left!40515 (left!40515 t!4677))) (height!1908 (right!40845 (left!40515 t!4677))))))))

(assert (= (and d!1559056 (not res!2073644)) b!4857508))

(assert (= (and b!4857508 res!2073645) b!4857507))

(assert (= (and b!4857507 res!2073647) b!4857503))

(assert (= (and b!4857503 res!2073648) b!4857506))

(assert (= (and b!4857506 res!2073646) b!4857505))

(assert (= (and b!4857505 res!2073643) b!4857504))

(declare-fun m!5855236 () Bool)

(assert (=> b!4857503 m!5855236))

(declare-fun m!5855238 () Bool)

(assert (=> b!4857504 m!5855238))

(declare-fun m!5855240 () Bool)

(assert (=> b!4857507 m!5855240))

(declare-fun m!5855242 () Bool)

(assert (=> b!4857507 m!5855242))

(assert (=> b!4857508 m!5855240))

(assert (=> b!4857508 m!5855242))

(declare-fun m!5855244 () Bool)

(assert (=> b!4857506 m!5855244))

(declare-fun m!5855246 () Bool)

(assert (=> b!4857505 m!5855246))

(assert (=> b!4857320 d!1559056))

(declare-fun d!1559058 () Bool)

(assert (=> d!1559058 (= (inv!71586 (xs!17836 (left!40515 t!4677))) (<= (size!36729 (innerList!14618 (xs!17836 (left!40515 t!4677)))) 2147483647))))

(declare-fun bs!1173782 () Bool)

(assert (= bs!1173782 d!1559058))

(declare-fun m!5855248 () Bool)

(assert (=> bs!1173782 m!5855248))

(assert (=> b!4857444 d!1559058))

(declare-fun d!1559060 () Bool)

(declare-fun res!2073649 () Bool)

(declare-fun e!3036836 () Bool)

(assert (=> d!1559060 (=> (not res!2073649) (not e!3036836))))

(assert (=> d!1559060 (= res!2073649 (= (csize!29290 (right!40845 t!4677)) (+ (size!36730 (left!40515 (right!40845 t!4677))) (size!36730 (right!40845 (right!40845 t!4677))))))))

(assert (=> d!1559060 (= (inv!71587 (right!40845 t!4677)) e!3036836)))

(declare-fun b!4857509 () Bool)

(declare-fun res!2073650 () Bool)

(assert (=> b!4857509 (=> (not res!2073650) (not e!3036836))))

(assert (=> b!4857509 (= res!2073650 (and (not (= (left!40515 (right!40845 t!4677)) Empty!14530)) (not (= (right!40845 (right!40845 t!4677)) Empty!14530))))))

(declare-fun b!4857510 () Bool)

(declare-fun res!2073651 () Bool)

(assert (=> b!4857510 (=> (not res!2073651) (not e!3036836))))

(assert (=> b!4857510 (= res!2073651 (= (cheight!14741 (right!40845 t!4677)) (+ (max!0 (height!1908 (left!40515 (right!40845 t!4677))) (height!1908 (right!40845 (right!40845 t!4677)))) 1)))))

(declare-fun b!4857511 () Bool)

(assert (=> b!4857511 (= e!3036836 (<= 0 (cheight!14741 (right!40845 t!4677))))))

(assert (= (and d!1559060 res!2073649) b!4857509))

(assert (= (and b!4857509 res!2073650) b!4857510))

(assert (= (and b!4857510 res!2073651) b!4857511))

(declare-fun m!5855250 () Bool)

(assert (=> d!1559060 m!5855250))

(declare-fun m!5855252 () Bool)

(assert (=> d!1559060 m!5855252))

(assert (=> b!4857510 m!5855214))

(assert (=> b!4857510 m!5855216))

(assert (=> b!4857510 m!5855214))

(assert (=> b!4857510 m!5855216))

(declare-fun m!5855254 () Bool)

(assert (=> b!4857510 m!5855254))

(assert (=> b!4857358 d!1559060))

(declare-fun d!1559062 () Bool)

(declare-fun c!826316 () Bool)

(assert (=> d!1559062 (= c!826316 ((_ is Node!14530) (left!40515 (left!40515 t!4677))))))

(declare-fun e!3036837 () Bool)

(assert (=> d!1559062 (= (inv!71585 (left!40515 (left!40515 t!4677))) e!3036837)))

(declare-fun b!4857512 () Bool)

(assert (=> b!4857512 (= e!3036837 (inv!71587 (left!40515 (left!40515 t!4677))))))

(declare-fun b!4857513 () Bool)

(declare-fun e!3036838 () Bool)

(assert (=> b!4857513 (= e!3036837 e!3036838)))

(declare-fun res!2073652 () Bool)

(assert (=> b!4857513 (= res!2073652 (not ((_ is Leaf!24210) (left!40515 (left!40515 t!4677)))))))

(assert (=> b!4857513 (=> res!2073652 e!3036838)))

(declare-fun b!4857514 () Bool)

(assert (=> b!4857514 (= e!3036838 (inv!71588 (left!40515 (left!40515 t!4677))))))

(assert (= (and d!1559062 c!826316) b!4857512))

(assert (= (and d!1559062 (not c!826316)) b!4857513))

(assert (= (and b!4857513 (not res!2073652)) b!4857514))

(declare-fun m!5855256 () Bool)

(assert (=> b!4857512 m!5855256))

(declare-fun m!5855258 () Bool)

(assert (=> b!4857514 m!5855258))

(assert (=> b!4857443 d!1559062))

(declare-fun d!1559064 () Bool)

(declare-fun c!826317 () Bool)

(assert (=> d!1559064 (= c!826317 ((_ is Node!14530) (right!40845 (left!40515 t!4677))))))

(declare-fun e!3036839 () Bool)

(assert (=> d!1559064 (= (inv!71585 (right!40845 (left!40515 t!4677))) e!3036839)))

(declare-fun b!4857515 () Bool)

(assert (=> b!4857515 (= e!3036839 (inv!71587 (right!40845 (left!40515 t!4677))))))

(declare-fun b!4857516 () Bool)

(declare-fun e!3036840 () Bool)

(assert (=> b!4857516 (= e!3036839 e!3036840)))

(declare-fun res!2073653 () Bool)

(assert (=> b!4857516 (= res!2073653 (not ((_ is Leaf!24210) (right!40845 (left!40515 t!4677)))))))

(assert (=> b!4857516 (=> res!2073653 e!3036840)))

(declare-fun b!4857517 () Bool)

(assert (=> b!4857517 (= e!3036840 (inv!71588 (right!40845 (left!40515 t!4677))))))

(assert (= (and d!1559064 c!826317) b!4857515))

(assert (= (and d!1559064 (not c!826317)) b!4857516))

(assert (= (and b!4857516 (not res!2073653)) b!4857517))

(declare-fun m!5855260 () Bool)

(assert (=> b!4857515 m!5855260))

(declare-fun m!5855262 () Bool)

(assert (=> b!4857517 m!5855262))

(assert (=> b!4857443 d!1559064))

(declare-fun d!1559066 () Bool)

(declare-fun e!3036841 () Bool)

(assert (=> d!1559066 e!3036841))

(declare-fun res!2073655 () Bool)

(assert (=> d!1559066 (=> (not res!2073655) (not e!3036841))))

(declare-fun lt!1991619 () List!55874)

(assert (=> d!1559066 (= res!2073655 (= (content!9935 lt!1991619) ((_ map or) (content!9935 (list!17420 (left!40515 (left!40515 t!4677)))) (content!9935 (list!17420 (right!40845 (left!40515 t!4677)))))))))

(declare-fun e!3036842 () List!55874)

(assert (=> d!1559066 (= lt!1991619 e!3036842)))

(declare-fun c!826318 () Bool)

(assert (=> d!1559066 (= c!826318 ((_ is Nil!55750) (list!17420 (left!40515 (left!40515 t!4677)))))))

(assert (=> d!1559066 (= (++!12135 (list!17420 (left!40515 (left!40515 t!4677))) (list!17420 (right!40845 (left!40515 t!4677)))) lt!1991619)))

(declare-fun b!4857519 () Bool)

(assert (=> b!4857519 (= e!3036842 (Cons!55750 (h!62198 (list!17420 (left!40515 (left!40515 t!4677)))) (++!12135 (t!363452 (list!17420 (left!40515 (left!40515 t!4677)))) (list!17420 (right!40845 (left!40515 t!4677))))))))

(declare-fun b!4857521 () Bool)

(assert (=> b!4857521 (= e!3036841 (or (not (= (list!17420 (right!40845 (left!40515 t!4677))) Nil!55750)) (= lt!1991619 (list!17420 (left!40515 (left!40515 t!4677))))))))

(declare-fun b!4857518 () Bool)

(assert (=> b!4857518 (= e!3036842 (list!17420 (right!40845 (left!40515 t!4677))))))

(declare-fun b!4857520 () Bool)

(declare-fun res!2073654 () Bool)

(assert (=> b!4857520 (=> (not res!2073654) (not e!3036841))))

(assert (=> b!4857520 (= res!2073654 (= (size!36729 lt!1991619) (+ (size!36729 (list!17420 (left!40515 (left!40515 t!4677)))) (size!36729 (list!17420 (right!40845 (left!40515 t!4677)))))))))

(assert (= (and d!1559066 c!826318) b!4857518))

(assert (= (and d!1559066 (not c!826318)) b!4857519))

(assert (= (and d!1559066 res!2073655) b!4857520))

(assert (= (and b!4857520 res!2073654) b!4857521))

(declare-fun m!5855264 () Bool)

(assert (=> d!1559066 m!5855264))

(assert (=> d!1559066 m!5855136))

(declare-fun m!5855266 () Bool)

(assert (=> d!1559066 m!5855266))

(assert (=> d!1559066 m!5855138))

(declare-fun m!5855268 () Bool)

(assert (=> d!1559066 m!5855268))

(assert (=> b!4857519 m!5855138))

(declare-fun m!5855270 () Bool)

(assert (=> b!4857519 m!5855270))

(declare-fun m!5855272 () Bool)

(assert (=> b!4857520 m!5855272))

(assert (=> b!4857520 m!5855136))

(declare-fun m!5855274 () Bool)

(assert (=> b!4857520 m!5855274))

(assert (=> b!4857520 m!5855138))

(declare-fun m!5855276 () Bool)

(assert (=> b!4857520 m!5855276))

(assert (=> b!4857411 d!1559066))

(declare-fun b!4857523 () Bool)

(declare-fun e!3036843 () List!55874)

(declare-fun e!3036844 () List!55874)

(assert (=> b!4857523 (= e!3036843 e!3036844)))

(declare-fun c!826320 () Bool)

(assert (=> b!4857523 (= c!826320 ((_ is Leaf!24210) (left!40515 (left!40515 t!4677))))))

(declare-fun b!4857525 () Bool)

(assert (=> b!4857525 (= e!3036844 (++!12135 (list!17420 (left!40515 (left!40515 (left!40515 t!4677)))) (list!17420 (right!40845 (left!40515 (left!40515 t!4677))))))))

(declare-fun b!4857522 () Bool)

(assert (=> b!4857522 (= e!3036843 Nil!55750)))

(declare-fun b!4857524 () Bool)

(assert (=> b!4857524 (= e!3036844 (list!17422 (xs!17836 (left!40515 (left!40515 t!4677)))))))

(declare-fun d!1559068 () Bool)

(declare-fun c!826319 () Bool)

(assert (=> d!1559068 (= c!826319 ((_ is Empty!14530) (left!40515 (left!40515 t!4677))))))

(assert (=> d!1559068 (= (list!17420 (left!40515 (left!40515 t!4677))) e!3036843)))

(assert (= (and d!1559068 c!826319) b!4857522))

(assert (= (and d!1559068 (not c!826319)) b!4857523))

(assert (= (and b!4857523 c!826320) b!4857524))

(assert (= (and b!4857523 (not c!826320)) b!4857525))

(declare-fun m!5855278 () Bool)

(assert (=> b!4857525 m!5855278))

(declare-fun m!5855280 () Bool)

(assert (=> b!4857525 m!5855280))

(assert (=> b!4857525 m!5855278))

(assert (=> b!4857525 m!5855280))

(declare-fun m!5855282 () Bool)

(assert (=> b!4857525 m!5855282))

(declare-fun m!5855284 () Bool)

(assert (=> b!4857524 m!5855284))

(assert (=> b!4857411 d!1559068))

(declare-fun b!4857527 () Bool)

(declare-fun e!3036845 () List!55874)

(declare-fun e!3036846 () List!55874)

(assert (=> b!4857527 (= e!3036845 e!3036846)))

(declare-fun c!826322 () Bool)

(assert (=> b!4857527 (= c!826322 ((_ is Leaf!24210) (right!40845 (left!40515 t!4677))))))

(declare-fun b!4857529 () Bool)

(assert (=> b!4857529 (= e!3036846 (++!12135 (list!17420 (left!40515 (right!40845 (left!40515 t!4677)))) (list!17420 (right!40845 (right!40845 (left!40515 t!4677))))))))

(declare-fun b!4857526 () Bool)

(assert (=> b!4857526 (= e!3036845 Nil!55750)))

(declare-fun b!4857528 () Bool)

(assert (=> b!4857528 (= e!3036846 (list!17422 (xs!17836 (right!40845 (left!40515 t!4677)))))))

(declare-fun d!1559070 () Bool)

(declare-fun c!826321 () Bool)

(assert (=> d!1559070 (= c!826321 ((_ is Empty!14530) (right!40845 (left!40515 t!4677))))))

(assert (=> d!1559070 (= (list!17420 (right!40845 (left!40515 t!4677))) e!3036845)))

(assert (= (and d!1559070 c!826321) b!4857526))

(assert (= (and d!1559070 (not c!826321)) b!4857527))

(assert (= (and b!4857527 c!826322) b!4857528))

(assert (= (and b!4857527 (not c!826322)) b!4857529))

(declare-fun m!5855286 () Bool)

(assert (=> b!4857529 m!5855286))

(declare-fun m!5855288 () Bool)

(assert (=> b!4857529 m!5855288))

(assert (=> b!4857529 m!5855286))

(assert (=> b!4857529 m!5855288))

(declare-fun m!5855290 () Bool)

(assert (=> b!4857529 m!5855290))

(declare-fun m!5855292 () Bool)

(assert (=> b!4857528 m!5855292))

(assert (=> b!4857411 d!1559070))

(declare-fun d!1559072 () Bool)

(declare-fun lt!1991620 () Int)

(assert (=> d!1559072 (>= lt!1991620 0)))

(declare-fun e!3036847 () Int)

(assert (=> d!1559072 (= lt!1991620 e!3036847)))

(declare-fun c!826323 () Bool)

(assert (=> d!1559072 (= c!826323 ((_ is Nil!55750) (innerList!14618 (xs!17836 t!4677))))))

(assert (=> d!1559072 (= (size!36729 (innerList!14618 (xs!17836 t!4677))) lt!1991620)))

(declare-fun b!4857530 () Bool)

(assert (=> b!4857530 (= e!3036847 0)))

(declare-fun b!4857531 () Bool)

(assert (=> b!4857531 (= e!3036847 (+ 1 (size!36729 (t!363452 (innerList!14618 (xs!17836 t!4677))))))))

(assert (= (and d!1559072 c!826323) b!4857530))

(assert (= (and d!1559072 (not c!826323)) b!4857531))

(declare-fun m!5855294 () Bool)

(assert (=> b!4857531 m!5855294))

(assert (=> d!1558998 d!1559072))

(declare-fun d!1559074 () Bool)

(declare-fun e!3036848 () Bool)

(assert (=> d!1559074 e!3036848))

(declare-fun res!2073657 () Bool)

(assert (=> d!1559074 (=> (not res!2073657) (not e!3036848))))

(declare-fun lt!1991621 () List!55874)

(assert (=> d!1559074 (= res!2073657 (= (content!9935 lt!1991621) ((_ map or) (content!9935 (t!363452 (list!17420 (left!40515 t!4677)))) (content!9935 (list!17420 (right!40845 t!4677))))))))

(declare-fun e!3036849 () List!55874)

(assert (=> d!1559074 (= lt!1991621 e!3036849)))

(declare-fun c!826324 () Bool)

(assert (=> d!1559074 (= c!826324 ((_ is Nil!55750) (t!363452 (list!17420 (left!40515 t!4677)))))))

(assert (=> d!1559074 (= (++!12135 (t!363452 (list!17420 (left!40515 t!4677))) (list!17420 (right!40845 t!4677))) lt!1991621)))

(declare-fun b!4857533 () Bool)

(assert (=> b!4857533 (= e!3036849 (Cons!55750 (h!62198 (t!363452 (list!17420 (left!40515 t!4677)))) (++!12135 (t!363452 (t!363452 (list!17420 (left!40515 t!4677)))) (list!17420 (right!40845 t!4677)))))))

(declare-fun b!4857535 () Bool)

(assert (=> b!4857535 (= e!3036848 (or (not (= (list!17420 (right!40845 t!4677)) Nil!55750)) (= lt!1991621 (t!363452 (list!17420 (left!40515 t!4677))))))))

(declare-fun b!4857532 () Bool)

(assert (=> b!4857532 (= e!3036849 (list!17420 (right!40845 t!4677)))))

(declare-fun b!4857534 () Bool)

(declare-fun res!2073656 () Bool)

(assert (=> b!4857534 (=> (not res!2073656) (not e!3036848))))

(assert (=> b!4857534 (= res!2073656 (= (size!36729 lt!1991621) (+ (size!36729 (t!363452 (list!17420 (left!40515 t!4677)))) (size!36729 (list!17420 (right!40845 t!4677))))))))

(assert (= (and d!1559074 c!826324) b!4857532))

(assert (= (and d!1559074 (not c!826324)) b!4857533))

(assert (= (and d!1559074 res!2073657) b!4857534))

(assert (= (and b!4857534 res!2073656) b!4857535))

(declare-fun m!5855296 () Bool)

(assert (=> d!1559074 m!5855296))

(assert (=> d!1559074 m!5855196))

(assert (=> d!1559074 m!5855036))

(assert (=> d!1559074 m!5855120))

(assert (=> b!4857533 m!5855036))

(declare-fun m!5855298 () Bool)

(assert (=> b!4857533 m!5855298))

(declare-fun m!5855300 () Bool)

(assert (=> b!4857534 m!5855300))

(assert (=> b!4857534 m!5855232))

(assert (=> b!4857534 m!5855036))

(assert (=> b!4857534 m!5855128))

(assert (=> b!4857388 d!1559074))

(declare-fun d!1559076 () Bool)

(assert (=> d!1559076 (= (inv!71586 (xs!17836 (right!40845 t!4677))) (<= (size!36729 (innerList!14618 (xs!17836 (right!40845 t!4677)))) 2147483647))))

(declare-fun bs!1173783 () Bool)

(assert (= bs!1173783 d!1559076))

(declare-fun m!5855302 () Bool)

(assert (=> bs!1173783 m!5855302))

(assert (=> b!4857447 d!1559076))

(declare-fun d!1559078 () Bool)

(assert (=> d!1559078 (= (list!17422 (xs!17836 (left!40515 t!4677))) (innerList!14618 (xs!17836 (left!40515 t!4677))))))

(assert (=> b!4857410 d!1559078))

(declare-fun d!1559080 () Bool)

(assert (=> d!1559080 (= (list!17422 (xs!17836 (right!40845 t!4677))) (innerList!14618 (xs!17836 (right!40845 t!4677))))))

(assert (=> b!4857414 d!1559080))

(declare-fun d!1559082 () Bool)

(declare-fun c!826325 () Bool)

(assert (=> d!1559082 (= c!826325 ((_ is Node!14530) (left!40515 (right!40845 t!4677))))))

(declare-fun e!3036850 () Bool)

(assert (=> d!1559082 (= (inv!71585 (left!40515 (right!40845 t!4677))) e!3036850)))

(declare-fun b!4857536 () Bool)

(assert (=> b!4857536 (= e!3036850 (inv!71587 (left!40515 (right!40845 t!4677))))))

(declare-fun b!4857537 () Bool)

(declare-fun e!3036851 () Bool)

(assert (=> b!4857537 (= e!3036850 e!3036851)))

(declare-fun res!2073658 () Bool)

(assert (=> b!4857537 (= res!2073658 (not ((_ is Leaf!24210) (left!40515 (right!40845 t!4677)))))))

(assert (=> b!4857537 (=> res!2073658 e!3036851)))

(declare-fun b!4857538 () Bool)

(assert (=> b!4857538 (= e!3036851 (inv!71588 (left!40515 (right!40845 t!4677))))))

(assert (= (and d!1559082 c!826325) b!4857536))

(assert (= (and d!1559082 (not c!826325)) b!4857537))

(assert (= (and b!4857537 (not res!2073658)) b!4857538))

(declare-fun m!5855304 () Bool)

(assert (=> b!4857536 m!5855304))

(declare-fun m!5855306 () Bool)

(assert (=> b!4857538 m!5855306))

(assert (=> b!4857446 d!1559082))

(declare-fun d!1559084 () Bool)

(declare-fun c!826326 () Bool)

(assert (=> d!1559084 (= c!826326 ((_ is Node!14530) (right!40845 (right!40845 t!4677))))))

(declare-fun e!3036852 () Bool)

(assert (=> d!1559084 (= (inv!71585 (right!40845 (right!40845 t!4677))) e!3036852)))

(declare-fun b!4857539 () Bool)

(assert (=> b!4857539 (= e!3036852 (inv!71587 (right!40845 (right!40845 t!4677))))))

(declare-fun b!4857540 () Bool)

(declare-fun e!3036853 () Bool)

(assert (=> b!4857540 (= e!3036852 e!3036853)))

(declare-fun res!2073659 () Bool)

(assert (=> b!4857540 (= res!2073659 (not ((_ is Leaf!24210) (right!40845 (right!40845 t!4677)))))))

(assert (=> b!4857540 (=> res!2073659 e!3036853)))

(declare-fun b!4857541 () Bool)

(assert (=> b!4857541 (= e!3036853 (inv!71588 (right!40845 (right!40845 t!4677))))))

(assert (= (and d!1559084 c!826326) b!4857539))

(assert (= (and d!1559084 (not c!826326)) b!4857540))

(assert (= (and b!4857540 (not res!2073659)) b!4857541))

(declare-fun m!5855308 () Bool)

(assert (=> b!4857539 m!5855308))

(declare-fun m!5855310 () Bool)

(assert (=> b!4857541 m!5855310))

(assert (=> b!4857446 d!1559084))

(declare-fun d!1559086 () Bool)

(declare-fun e!3036854 () Bool)

(assert (=> d!1559086 e!3036854))

(declare-fun res!2073661 () Bool)

(assert (=> d!1559086 (=> (not res!2073661) (not e!3036854))))

(declare-fun lt!1991622 () List!55874)

(assert (=> d!1559086 (= res!2073661 (= (content!9935 lt!1991622) ((_ map or) (content!9935 (list!17420 (left!40515 (right!40845 t!4677)))) (content!9935 (list!17420 (right!40845 (right!40845 t!4677)))))))))

(declare-fun e!3036855 () List!55874)

(assert (=> d!1559086 (= lt!1991622 e!3036855)))

(declare-fun c!826327 () Bool)

(assert (=> d!1559086 (= c!826327 ((_ is Nil!55750) (list!17420 (left!40515 (right!40845 t!4677)))))))

(assert (=> d!1559086 (= (++!12135 (list!17420 (left!40515 (right!40845 t!4677))) (list!17420 (right!40845 (right!40845 t!4677)))) lt!1991622)))

(declare-fun b!4857543 () Bool)

(assert (=> b!4857543 (= e!3036855 (Cons!55750 (h!62198 (list!17420 (left!40515 (right!40845 t!4677)))) (++!12135 (t!363452 (list!17420 (left!40515 (right!40845 t!4677)))) (list!17420 (right!40845 (right!40845 t!4677))))))))

(declare-fun b!4857545 () Bool)

(assert (=> b!4857545 (= e!3036854 (or (not (= (list!17420 (right!40845 (right!40845 t!4677))) Nil!55750)) (= lt!1991622 (list!17420 (left!40515 (right!40845 t!4677))))))))

(declare-fun b!4857542 () Bool)

(assert (=> b!4857542 (= e!3036855 (list!17420 (right!40845 (right!40845 t!4677))))))

(declare-fun b!4857544 () Bool)

(declare-fun res!2073660 () Bool)

(assert (=> b!4857544 (=> (not res!2073660) (not e!3036854))))

(assert (=> b!4857544 (= res!2073660 (= (size!36729 lt!1991622) (+ (size!36729 (list!17420 (left!40515 (right!40845 t!4677)))) (size!36729 (list!17420 (right!40845 (right!40845 t!4677)))))))))

(assert (= (and d!1559086 c!826327) b!4857542))

(assert (= (and d!1559086 (not c!826327)) b!4857543))

(assert (= (and d!1559086 res!2073661) b!4857544))

(assert (= (and b!4857544 res!2073660) b!4857545))

(declare-fun m!5855312 () Bool)

(assert (=> d!1559086 m!5855312))

(assert (=> d!1559086 m!5855144))

(declare-fun m!5855314 () Bool)

(assert (=> d!1559086 m!5855314))

(assert (=> d!1559086 m!5855146))

(declare-fun m!5855316 () Bool)

(assert (=> d!1559086 m!5855316))

(assert (=> b!4857543 m!5855146))

(declare-fun m!5855318 () Bool)

(assert (=> b!4857543 m!5855318))

(declare-fun m!5855320 () Bool)

(assert (=> b!4857544 m!5855320))

(assert (=> b!4857544 m!5855144))

(declare-fun m!5855322 () Bool)

(assert (=> b!4857544 m!5855322))

(assert (=> b!4857544 m!5855146))

(declare-fun m!5855324 () Bool)

(assert (=> b!4857544 m!5855324))

(assert (=> b!4857415 d!1559086))

(declare-fun b!4857547 () Bool)

(declare-fun e!3036856 () List!55874)

(declare-fun e!3036857 () List!55874)

(assert (=> b!4857547 (= e!3036856 e!3036857)))

(declare-fun c!826329 () Bool)

(assert (=> b!4857547 (= c!826329 ((_ is Leaf!24210) (left!40515 (right!40845 t!4677))))))

(declare-fun b!4857549 () Bool)

(assert (=> b!4857549 (= e!3036857 (++!12135 (list!17420 (left!40515 (left!40515 (right!40845 t!4677)))) (list!17420 (right!40845 (left!40515 (right!40845 t!4677))))))))

(declare-fun b!4857546 () Bool)

(assert (=> b!4857546 (= e!3036856 Nil!55750)))

(declare-fun b!4857548 () Bool)

(assert (=> b!4857548 (= e!3036857 (list!17422 (xs!17836 (left!40515 (right!40845 t!4677)))))))

(declare-fun d!1559088 () Bool)

(declare-fun c!826328 () Bool)

(assert (=> d!1559088 (= c!826328 ((_ is Empty!14530) (left!40515 (right!40845 t!4677))))))

(assert (=> d!1559088 (= (list!17420 (left!40515 (right!40845 t!4677))) e!3036856)))

(assert (= (and d!1559088 c!826328) b!4857546))

(assert (= (and d!1559088 (not c!826328)) b!4857547))

(assert (= (and b!4857547 c!826329) b!4857548))

(assert (= (and b!4857547 (not c!826329)) b!4857549))

(declare-fun m!5855326 () Bool)

(assert (=> b!4857549 m!5855326))

(declare-fun m!5855328 () Bool)

(assert (=> b!4857549 m!5855328))

(assert (=> b!4857549 m!5855326))

(assert (=> b!4857549 m!5855328))

(declare-fun m!5855330 () Bool)

(assert (=> b!4857549 m!5855330))

(declare-fun m!5855332 () Bool)

(assert (=> b!4857548 m!5855332))

(assert (=> b!4857415 d!1559088))

(declare-fun b!4857551 () Bool)

(declare-fun e!3036858 () List!55874)

(declare-fun e!3036859 () List!55874)

(assert (=> b!4857551 (= e!3036858 e!3036859)))

(declare-fun c!826331 () Bool)

(assert (=> b!4857551 (= c!826331 ((_ is Leaf!24210) (right!40845 (right!40845 t!4677))))))

(declare-fun b!4857553 () Bool)

(assert (=> b!4857553 (= e!3036859 (++!12135 (list!17420 (left!40515 (right!40845 (right!40845 t!4677)))) (list!17420 (right!40845 (right!40845 (right!40845 t!4677))))))))

(declare-fun b!4857550 () Bool)

(assert (=> b!4857550 (= e!3036858 Nil!55750)))

(declare-fun b!4857552 () Bool)

(assert (=> b!4857552 (= e!3036859 (list!17422 (xs!17836 (right!40845 (right!40845 t!4677)))))))

(declare-fun d!1559090 () Bool)

(declare-fun c!826330 () Bool)

(assert (=> d!1559090 (= c!826330 ((_ is Empty!14530) (right!40845 (right!40845 t!4677))))))

(assert (=> d!1559090 (= (list!17420 (right!40845 (right!40845 t!4677))) e!3036858)))

(assert (= (and d!1559090 c!826330) b!4857550))

(assert (= (and d!1559090 (not c!826330)) b!4857551))

(assert (= (and b!4857551 c!826331) b!4857552))

(assert (= (and b!4857551 (not c!826331)) b!4857553))

(declare-fun m!5855334 () Bool)

(assert (=> b!4857553 m!5855334))

(declare-fun m!5855336 () Bool)

(assert (=> b!4857553 m!5855336))

(assert (=> b!4857553 m!5855334))

(assert (=> b!4857553 m!5855336))

(declare-fun m!5855338 () Bool)

(assert (=> b!4857553 m!5855338))

(declare-fun m!5855340 () Bool)

(assert (=> b!4857552 m!5855340))

(assert (=> b!4857415 d!1559090))

(declare-fun d!1559092 () Bool)

(declare-fun res!2073662 () Bool)

(declare-fun e!3036860 () Bool)

(assert (=> d!1559092 (=> (not res!2073662) (not e!3036860))))

(assert (=> d!1559092 (= res!2073662 (= (csize!29290 (left!40515 t!4677)) (+ (size!36730 (left!40515 (left!40515 t!4677))) (size!36730 (right!40845 (left!40515 t!4677))))))))

(assert (=> d!1559092 (= (inv!71587 (left!40515 t!4677)) e!3036860)))

(declare-fun b!4857554 () Bool)

(declare-fun res!2073663 () Bool)

(assert (=> b!4857554 (=> (not res!2073663) (not e!3036860))))

(assert (=> b!4857554 (= res!2073663 (and (not (= (left!40515 (left!40515 t!4677)) Empty!14530)) (not (= (right!40845 (left!40515 t!4677)) Empty!14530))))))

(declare-fun b!4857555 () Bool)

(declare-fun res!2073664 () Bool)

(assert (=> b!4857555 (=> (not res!2073664) (not e!3036860))))

(assert (=> b!4857555 (= res!2073664 (= (cheight!14741 (left!40515 t!4677)) (+ (max!0 (height!1908 (left!40515 (left!40515 t!4677))) (height!1908 (right!40845 (left!40515 t!4677)))) 1)))))

(declare-fun b!4857556 () Bool)

(assert (=> b!4857556 (= e!3036860 (<= 0 (cheight!14741 (left!40515 t!4677))))))

(assert (= (and d!1559092 res!2073662) b!4857554))

(assert (= (and b!4857554 res!2073663) b!4857555))

(assert (= (and b!4857555 res!2073664) b!4857556))

(declare-fun m!5855342 () Bool)

(assert (=> d!1559092 m!5855342))

(declare-fun m!5855344 () Bool)

(assert (=> d!1559092 m!5855344))

(assert (=> b!4857555 m!5855240))

(assert (=> b!4857555 m!5855242))

(assert (=> b!4857555 m!5855240))

(assert (=> b!4857555 m!5855242))

(declare-fun m!5855346 () Bool)

(assert (=> b!4857555 m!5855346))

(assert (=> b!4857355 d!1559092))

(declare-fun d!1559094 () Bool)

(declare-fun res!2073665 () Bool)

(declare-fun e!3036861 () Bool)

(assert (=> d!1559094 (=> (not res!2073665) (not e!3036861))))

(assert (=> d!1559094 (= res!2073665 (<= (size!36729 (list!17422 (xs!17836 (left!40515 t!4677)))) 512))))

(assert (=> d!1559094 (= (inv!71588 (left!40515 t!4677)) e!3036861)))

(declare-fun b!4857557 () Bool)

(declare-fun res!2073666 () Bool)

(assert (=> b!4857557 (=> (not res!2073666) (not e!3036861))))

(assert (=> b!4857557 (= res!2073666 (= (csize!29291 (left!40515 t!4677)) (size!36729 (list!17422 (xs!17836 (left!40515 t!4677))))))))

(declare-fun b!4857558 () Bool)

(assert (=> b!4857558 (= e!3036861 (and (> (csize!29291 (left!40515 t!4677)) 0) (<= (csize!29291 (left!40515 t!4677)) 512)))))

(assert (= (and d!1559094 res!2073665) b!4857557))

(assert (= (and b!4857557 res!2073666) b!4857558))

(assert (=> d!1559094 m!5855142))

(assert (=> d!1559094 m!5855142))

(declare-fun m!5855348 () Bool)

(assert (=> d!1559094 m!5855348))

(assert (=> b!4857557 m!5855142))

(assert (=> b!4857557 m!5855142))

(assert (=> b!4857557 m!5855348))

(assert (=> b!4857357 d!1559094))

(declare-fun d!1559096 () Bool)

(assert (=> d!1559096 (= (isEmpty!29832 (list!17420 t!4677)) ((_ is Nil!55750) (list!17420 t!4677)))))

(assert (=> d!1559004 d!1559096))

(declare-fun b!4857560 () Bool)

(declare-fun e!3036862 () List!55874)

(declare-fun e!3036863 () List!55874)

(assert (=> b!4857560 (= e!3036862 e!3036863)))

(declare-fun c!826333 () Bool)

(assert (=> b!4857560 (= c!826333 ((_ is Leaf!24210) t!4677))))

(declare-fun b!4857562 () Bool)

(assert (=> b!4857562 (= e!3036863 (++!12135 (list!17420 (left!40515 t!4677)) (list!17420 (right!40845 t!4677))))))

(declare-fun b!4857559 () Bool)

(assert (=> b!4857559 (= e!3036862 Nil!55750)))

(declare-fun b!4857561 () Bool)

(assert (=> b!4857561 (= e!3036863 (list!17422 (xs!17836 t!4677)))))

(declare-fun d!1559098 () Bool)

(declare-fun c!826332 () Bool)

(assert (=> d!1559098 (= c!826332 ((_ is Empty!14530) t!4677))))

(assert (=> d!1559098 (= (list!17420 t!4677) e!3036862)))

(assert (= (and d!1559098 c!826332) b!4857559))

(assert (= (and d!1559098 (not c!826332)) b!4857560))

(assert (= (and b!4857560 c!826333) b!4857561))

(assert (= (and b!4857560 (not c!826333)) b!4857562))

(assert (=> b!4857562 m!5855034))

(assert (=> b!4857562 m!5855036))

(assert (=> b!4857562 m!5855034))

(assert (=> b!4857562 m!5855036))

(assert (=> b!4857562 m!5855038))

(assert (=> b!4857561 m!5855222))

(assert (=> d!1559004 d!1559098))

(declare-fun d!1559100 () Bool)

(declare-fun lt!1991625 () Int)

(assert (=> d!1559100 (= lt!1991625 (size!36729 (list!17420 t!4677)))))

(assert (=> d!1559100 (= lt!1991625 (ite ((_ is Empty!14530) t!4677) 0 (ite ((_ is Leaf!24210) t!4677) (csize!29291 t!4677) (csize!29290 t!4677))))))

(assert (=> d!1559100 (= (size!36730 t!4677) lt!1991625)))

(declare-fun bs!1173784 () Bool)

(assert (= bs!1173784 d!1559100))

(assert (=> bs!1173784 m!5855090))

(assert (=> bs!1173784 m!5855090))

(declare-fun m!5855350 () Bool)

(assert (=> bs!1173784 m!5855350))

(assert (=> d!1559004 d!1559100))

(declare-fun b!4857563 () Bool)

(declare-fun e!3036864 () Bool)

(declare-fun tp!1366566 () Bool)

(assert (=> b!4857563 (= e!3036864 (and tp_is_empty!35517 tp!1366566))))

(assert (=> b!4857448 (= tp!1366556 e!3036864)))

(assert (= (and b!4857448 ((_ is Cons!55750) (innerList!14618 (xs!17836 (right!40845 t!4677))))) b!4857563))

(declare-fun e!3036866 () Bool)

(declare-fun b!4857564 () Bool)

(declare-fun tp!1366568 () Bool)

(declare-fun tp!1366567 () Bool)

(assert (=> b!4857564 (= e!3036866 (and (inv!71585 (left!40515 (left!40515 (left!40515 t!4677)))) tp!1366567 (inv!71585 (right!40845 (left!40515 (left!40515 t!4677)))) tp!1366568))))

(declare-fun b!4857566 () Bool)

(declare-fun e!3036865 () Bool)

(declare-fun tp!1366569 () Bool)

(assert (=> b!4857566 (= e!3036865 tp!1366569)))

(declare-fun b!4857565 () Bool)

(assert (=> b!4857565 (= e!3036866 (and (inv!71586 (xs!17836 (left!40515 (left!40515 t!4677)))) e!3036865))))

(assert (=> b!4857443 (= tp!1366551 (and (inv!71585 (left!40515 (left!40515 t!4677))) e!3036866))))

(assert (= (and b!4857443 ((_ is Node!14530) (left!40515 (left!40515 t!4677)))) b!4857564))

(assert (= b!4857565 b!4857566))

(assert (= (and b!4857443 ((_ is Leaf!24210) (left!40515 (left!40515 t!4677)))) b!4857565))

(declare-fun m!5855352 () Bool)

(assert (=> b!4857564 m!5855352))

(declare-fun m!5855354 () Bool)

(assert (=> b!4857564 m!5855354))

(declare-fun m!5855356 () Bool)

(assert (=> b!4857565 m!5855356))

(assert (=> b!4857443 m!5855166))

(declare-fun tp!1366571 () Bool)

(declare-fun tp!1366570 () Bool)

(declare-fun b!4857567 () Bool)

(declare-fun e!3036868 () Bool)

(assert (=> b!4857567 (= e!3036868 (and (inv!71585 (left!40515 (right!40845 (left!40515 t!4677)))) tp!1366570 (inv!71585 (right!40845 (right!40845 (left!40515 t!4677)))) tp!1366571))))

(declare-fun b!4857569 () Bool)

(declare-fun e!3036867 () Bool)

(declare-fun tp!1366572 () Bool)

(assert (=> b!4857569 (= e!3036867 tp!1366572)))

(declare-fun b!4857568 () Bool)

(assert (=> b!4857568 (= e!3036868 (and (inv!71586 (xs!17836 (right!40845 (left!40515 t!4677)))) e!3036867))))

(assert (=> b!4857443 (= tp!1366552 (and (inv!71585 (right!40845 (left!40515 t!4677))) e!3036868))))

(assert (= (and b!4857443 ((_ is Node!14530) (right!40845 (left!40515 t!4677)))) b!4857567))

(assert (= b!4857568 b!4857569))

(assert (= (and b!4857443 ((_ is Leaf!24210) (right!40845 (left!40515 t!4677)))) b!4857568))

(declare-fun m!5855358 () Bool)

(assert (=> b!4857567 m!5855358))

(declare-fun m!5855360 () Bool)

(assert (=> b!4857567 m!5855360))

(declare-fun m!5855362 () Bool)

(assert (=> b!4857568 m!5855362))

(assert (=> b!4857443 m!5855168))

(declare-fun b!4857570 () Bool)

(declare-fun e!3036869 () Bool)

(declare-fun tp!1366573 () Bool)

(assert (=> b!4857570 (= e!3036869 (and tp_is_empty!35517 tp!1366573))))

(assert (=> b!4857445 (= tp!1366553 e!3036869)))

(assert (= (and b!4857445 ((_ is Cons!55750) (innerList!14618 (xs!17836 (left!40515 t!4677))))) b!4857570))

(declare-fun b!4857571 () Bool)

(declare-fun e!3036870 () Bool)

(declare-fun tp!1366574 () Bool)

(assert (=> b!4857571 (= e!3036870 (and tp_is_empty!35517 tp!1366574))))

(assert (=> b!4857420 (= tp!1366538 e!3036870)))

(assert (= (and b!4857420 ((_ is Cons!55750) (t!363452 (innerList!14618 (xs!17836 t!4677))))) b!4857571))

(declare-fun tp!1366575 () Bool)

(declare-fun tp!1366576 () Bool)

(declare-fun b!4857572 () Bool)

(declare-fun e!3036872 () Bool)

(assert (=> b!4857572 (= e!3036872 (and (inv!71585 (left!40515 (left!40515 (right!40845 t!4677)))) tp!1366575 (inv!71585 (right!40845 (left!40515 (right!40845 t!4677)))) tp!1366576))))

(declare-fun b!4857574 () Bool)

(declare-fun e!3036871 () Bool)

(declare-fun tp!1366577 () Bool)

(assert (=> b!4857574 (= e!3036871 tp!1366577)))

(declare-fun b!4857573 () Bool)

(assert (=> b!4857573 (= e!3036872 (and (inv!71586 (xs!17836 (left!40515 (right!40845 t!4677)))) e!3036871))))

(assert (=> b!4857446 (= tp!1366554 (and (inv!71585 (left!40515 (right!40845 t!4677))) e!3036872))))

(assert (= (and b!4857446 ((_ is Node!14530) (left!40515 (right!40845 t!4677)))) b!4857572))

(assert (= b!4857573 b!4857574))

(assert (= (and b!4857446 ((_ is Leaf!24210) (left!40515 (right!40845 t!4677)))) b!4857573))

(declare-fun m!5855364 () Bool)

(assert (=> b!4857572 m!5855364))

(declare-fun m!5855366 () Bool)

(assert (=> b!4857572 m!5855366))

(declare-fun m!5855368 () Bool)

(assert (=> b!4857573 m!5855368))

(assert (=> b!4857446 m!5855172))

(declare-fun tp!1366579 () Bool)

(declare-fun tp!1366578 () Bool)

(declare-fun e!3036874 () Bool)

(declare-fun b!4857575 () Bool)

(assert (=> b!4857575 (= e!3036874 (and (inv!71585 (left!40515 (right!40845 (right!40845 t!4677)))) tp!1366578 (inv!71585 (right!40845 (right!40845 (right!40845 t!4677)))) tp!1366579))))

(declare-fun b!4857577 () Bool)

(declare-fun e!3036873 () Bool)

(declare-fun tp!1366580 () Bool)

(assert (=> b!4857577 (= e!3036873 tp!1366580)))

(declare-fun b!4857576 () Bool)

(assert (=> b!4857576 (= e!3036874 (and (inv!71586 (xs!17836 (right!40845 (right!40845 t!4677)))) e!3036873))))

(assert (=> b!4857446 (= tp!1366555 (and (inv!71585 (right!40845 (right!40845 t!4677))) e!3036874))))

(assert (= (and b!4857446 ((_ is Node!14530) (right!40845 (right!40845 t!4677)))) b!4857575))

(assert (= b!4857576 b!4857577))

(assert (= (and b!4857446 ((_ is Leaf!24210) (right!40845 (right!40845 t!4677)))) b!4857576))

(declare-fun m!5855370 () Bool)

(assert (=> b!4857575 m!5855370))

(declare-fun m!5855372 () Bool)

(assert (=> b!4857575 m!5855372))

(declare-fun m!5855374 () Bool)

(assert (=> b!4857576 m!5855374))

(assert (=> b!4857446 m!5855174))

(check-sat (not d!1559074) (not b!4857483) (not b!4857491) (not b!4857544) (not b!4857477) tp_is_empty!35517 (not b!4857538) (not b!4857446) (not d!1559048) (not b!4857565) (not b!4857543) (not b!4857520) (not b!4857502) (not b!4857570) (not b!4857505) (not b!4857484) (not b!4857562) (not d!1559044) (not b!4857512) (not b!4857525) (not b!4857533) (not b!4857481) (not b!4857541) (not b!4857510) (not b!4857553) (not d!1559094) (not b!4857519) (not d!1559046) (not b!4857531) (not b!4857557) (not b!4857524) (not b!4857575) (not d!1559086) (not b!4857465) (not b!4857528) (not d!1559038) (not b!4857534) (not b!4857539) (not d!1559092) (not b!4857443) (not b!4857498) (not b!4857564) (not b!4857561) (not b!4857489) (not b!4857569) (not b!4857555) (not b!4857567) (not d!1559076) (not b!4857573) (not b!4857572) (not d!1559100) (not b!4857500) (not b!4857548) (not b!4857517) (not b!4857571) (not b!4857549) (not b!4857566) (not d!1559040) (not b!4857568) (not b!4857507) (not b!4857536) (not d!1559058) (not b!4857480) (not d!1559060) (not b!4857515) (not d!1559066) (not b!4857506) (not b!4857552) (not b!4857563) (not b!4857467) (not b!4857576) (not b!4857469) (not b!4857529) (not b!4857574) (not b!4857503) (not b!4857508) (not b!4857504) (not b!4857514) (not b!4857482) (not b!4857479) (not b!4857577))
(check-sat)
