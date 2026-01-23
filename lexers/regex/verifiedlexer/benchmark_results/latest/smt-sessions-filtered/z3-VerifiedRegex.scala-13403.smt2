; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725746 () Bool)

(assert start!725746)

(declare-fun b!7501431 () Bool)

(declare-fun e!4472267 () Bool)

(declare-fun e!4472263 () Bool)

(assert (=> b!7501431 (= e!4472267 (not e!4472263))))

(declare-fun res!3009233 () Bool)

(assert (=> b!7501431 (=> res!3009233 e!4472263)))

(declare-datatypes ((C!39612 0))(
  ( (C!39613 (val!30204 Int)) )
))
(declare-datatypes ((List!72385 0))(
  ( (Nil!72261) (Cons!72261 (h!78709 C!39612) (t!386954 List!72385)) )
))
(declare-fun testedP!204 () List!72385)

(declare-fun totalInput!779 () List!72385)

(declare-fun isPrefix!5939 (List!72385 List!72385) Bool)

(assert (=> b!7501431 (= res!3009233 (not (isPrefix!5939 testedP!204 totalInput!779)))))

(declare-fun lt!2631879 () List!72385)

(assert (=> b!7501431 (isPrefix!5939 testedP!204 lt!2631879)))

(declare-datatypes ((Unit!166172 0))(
  ( (Unit!166173) )
))
(declare-fun lt!2631882 () Unit!166172)

(declare-fun testedSuffix!164 () List!72385)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3652 (List!72385 List!72385) Unit!166172)

(assert (=> b!7501431 (= lt!2631882 (lemmaConcatTwoListThenFirstIsPrefix!3652 testedP!204 testedSuffix!164))))

(declare-fun b!7501432 () Bool)

(declare-fun e!4472264 () Bool)

(declare-fun e!4472268 () Bool)

(assert (=> b!7501432 (= e!4472264 e!4472268)))

(declare-fun res!3009232 () Bool)

(assert (=> b!7501432 (=> (not res!3009232) (not e!4472268))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2631881 () Int)

(assert (=> b!7501432 (= res!3009232 (= testedPSize!164 lt!2631881))))

(declare-fun size!42214 (List!72385) Int)

(assert (=> b!7501432 (= lt!2631881 (size!42214 testedP!204))))

(declare-fun b!7501433 () Bool)

(assert (=> b!7501433 (= e!4472268 e!4472267)))

(declare-fun res!3009234 () Bool)

(assert (=> b!7501433 (=> (not res!3009234) (not e!4472267))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2631880 () Int)

(assert (=> b!7501433 (= res!3009234 (= totalInputSize!226 lt!2631880))))

(assert (=> b!7501433 (= lt!2631880 (size!42214 totalInput!779))))

(declare-fun b!7501434 () Bool)

(declare-fun e!4472265 () Bool)

(declare-fun tp_is_empty!49627 () Bool)

(declare-fun tp!2177515 () Bool)

(assert (=> b!7501434 (= e!4472265 (and tp_is_empty!49627 tp!2177515))))

(declare-fun b!7501435 () Bool)

(assert (=> b!7501435 (= e!4472263 (>= lt!2631880 lt!2631881))))

(declare-fun res!3009231 () Bool)

(assert (=> start!725746 (=> (not res!3009231) (not e!4472264))))

(assert (=> start!725746 (= res!3009231 (= lt!2631879 totalInput!779))))

(declare-fun ++!17272 (List!72385 List!72385) List!72385)

(assert (=> start!725746 (= lt!2631879 (++!17272 testedP!204 testedSuffix!164))))

(assert (=> start!725746 e!4472264))

(declare-fun e!4472262 () Bool)

(assert (=> start!725746 e!4472262))

(assert (=> start!725746 true))

(declare-fun e!4472266 () Bool)

(assert (=> start!725746 e!4472266))

(assert (=> start!725746 e!4472265))

(declare-fun b!7501436 () Bool)

(declare-fun tp!2177516 () Bool)

(assert (=> b!7501436 (= e!4472262 (and tp_is_empty!49627 tp!2177516))))

(declare-fun b!7501437 () Bool)

(declare-fun tp!2177517 () Bool)

(assert (=> b!7501437 (= e!4472266 (and tp_is_empty!49627 tp!2177517))))

(assert (= (and start!725746 res!3009231) b!7501432))

(assert (= (and b!7501432 res!3009232) b!7501433))

(assert (= (and b!7501433 res!3009234) b!7501431))

(assert (= (and b!7501431 (not res!3009233)) b!7501435))

(get-info :version)

(assert (= (and start!725746 ((_ is Cons!72261) testedSuffix!164)) b!7501436))

(assert (= (and start!725746 ((_ is Cons!72261) totalInput!779)) b!7501437))

(assert (= (and start!725746 ((_ is Cons!72261) testedP!204)) b!7501434))

(declare-fun m!8083114 () Bool)

(assert (=> b!7501431 m!8083114))

(declare-fun m!8083116 () Bool)

(assert (=> b!7501431 m!8083116))

(declare-fun m!8083118 () Bool)

(assert (=> b!7501431 m!8083118))

(declare-fun m!8083120 () Bool)

(assert (=> b!7501432 m!8083120))

(declare-fun m!8083122 () Bool)

(assert (=> b!7501433 m!8083122))

(declare-fun m!8083124 () Bool)

(assert (=> start!725746 m!8083124))

(check-sat (not b!7501432) tp_is_empty!49627 (not b!7501431) (not b!7501437) (not b!7501436) (not start!725746) (not b!7501433) (not b!7501434))
(check-sat)
(get-model)

(declare-fun b!7501455 () Bool)

(declare-fun res!3009248 () Bool)

(declare-fun e!4472280 () Bool)

(assert (=> b!7501455 (=> (not res!3009248) (not e!4472280))))

(declare-fun head!15392 (List!72385) C!39612)

(assert (=> b!7501455 (= res!3009248 (= (head!15392 testedP!204) (head!15392 totalInput!779)))))

(declare-fun b!7501454 () Bool)

(declare-fun e!4472281 () Bool)

(assert (=> b!7501454 (= e!4472281 e!4472280)))

(declare-fun res!3009247 () Bool)

(assert (=> b!7501454 (=> (not res!3009247) (not e!4472280))))

(assert (=> b!7501454 (= res!3009247 (not ((_ is Nil!72261) totalInput!779)))))

(declare-fun b!7501456 () Bool)

(declare-fun tail!14961 (List!72385) List!72385)

(assert (=> b!7501456 (= e!4472280 (isPrefix!5939 (tail!14961 testedP!204) (tail!14961 totalInput!779)))))

(declare-fun b!7501457 () Bool)

(declare-fun e!4472279 () Bool)

(assert (=> b!7501457 (= e!4472279 (>= (size!42214 totalInput!779) (size!42214 testedP!204)))))

(declare-fun d!2302600 () Bool)

(assert (=> d!2302600 e!4472279))

(declare-fun res!3009250 () Bool)

(assert (=> d!2302600 (=> res!3009250 e!4472279)))

(declare-fun lt!2631887 () Bool)

(assert (=> d!2302600 (= res!3009250 (not lt!2631887))))

(assert (=> d!2302600 (= lt!2631887 e!4472281)))

(declare-fun res!3009249 () Bool)

(assert (=> d!2302600 (=> res!3009249 e!4472281)))

(assert (=> d!2302600 (= res!3009249 ((_ is Nil!72261) testedP!204))))

(assert (=> d!2302600 (= (isPrefix!5939 testedP!204 totalInput!779) lt!2631887)))

(assert (= (and d!2302600 (not res!3009249)) b!7501454))

(assert (= (and b!7501454 res!3009247) b!7501455))

(assert (= (and b!7501455 res!3009248) b!7501456))

(assert (= (and d!2302600 (not res!3009250)) b!7501457))

(declare-fun m!8083126 () Bool)

(assert (=> b!7501455 m!8083126))

(declare-fun m!8083128 () Bool)

(assert (=> b!7501455 m!8083128))

(declare-fun m!8083130 () Bool)

(assert (=> b!7501456 m!8083130))

(declare-fun m!8083132 () Bool)

(assert (=> b!7501456 m!8083132))

(assert (=> b!7501456 m!8083130))

(assert (=> b!7501456 m!8083132))

(declare-fun m!8083134 () Bool)

(assert (=> b!7501456 m!8083134))

(assert (=> b!7501457 m!8083122))

(assert (=> b!7501457 m!8083120))

(assert (=> b!7501431 d!2302600))

(declare-fun b!7501459 () Bool)

(declare-fun res!3009252 () Bool)

(declare-fun e!4472283 () Bool)

(assert (=> b!7501459 (=> (not res!3009252) (not e!4472283))))

(assert (=> b!7501459 (= res!3009252 (= (head!15392 testedP!204) (head!15392 lt!2631879)))))

(declare-fun b!7501458 () Bool)

(declare-fun e!4472284 () Bool)

(assert (=> b!7501458 (= e!4472284 e!4472283)))

(declare-fun res!3009251 () Bool)

(assert (=> b!7501458 (=> (not res!3009251) (not e!4472283))))

(assert (=> b!7501458 (= res!3009251 (not ((_ is Nil!72261) lt!2631879)))))

(declare-fun b!7501460 () Bool)

(assert (=> b!7501460 (= e!4472283 (isPrefix!5939 (tail!14961 testedP!204) (tail!14961 lt!2631879)))))

(declare-fun b!7501461 () Bool)

(declare-fun e!4472282 () Bool)

(assert (=> b!7501461 (= e!4472282 (>= (size!42214 lt!2631879) (size!42214 testedP!204)))))

(declare-fun d!2302604 () Bool)

(assert (=> d!2302604 e!4472282))

(declare-fun res!3009254 () Bool)

(assert (=> d!2302604 (=> res!3009254 e!4472282)))

(declare-fun lt!2631888 () Bool)

(assert (=> d!2302604 (= res!3009254 (not lt!2631888))))

(assert (=> d!2302604 (= lt!2631888 e!4472284)))

(declare-fun res!3009253 () Bool)

(assert (=> d!2302604 (=> res!3009253 e!4472284)))

(assert (=> d!2302604 (= res!3009253 ((_ is Nil!72261) testedP!204))))

(assert (=> d!2302604 (= (isPrefix!5939 testedP!204 lt!2631879) lt!2631888)))

(assert (= (and d!2302604 (not res!3009253)) b!7501458))

(assert (= (and b!7501458 res!3009251) b!7501459))

(assert (= (and b!7501459 res!3009252) b!7501460))

(assert (= (and d!2302604 (not res!3009254)) b!7501461))

(assert (=> b!7501459 m!8083126))

(declare-fun m!8083136 () Bool)

(assert (=> b!7501459 m!8083136))

(assert (=> b!7501460 m!8083130))

(declare-fun m!8083138 () Bool)

(assert (=> b!7501460 m!8083138))

(assert (=> b!7501460 m!8083130))

(assert (=> b!7501460 m!8083138))

(declare-fun m!8083140 () Bool)

(assert (=> b!7501460 m!8083140))

(declare-fun m!8083142 () Bool)

(assert (=> b!7501461 m!8083142))

(assert (=> b!7501461 m!8083120))

(assert (=> b!7501431 d!2302604))

(declare-fun d!2302606 () Bool)

(assert (=> d!2302606 (isPrefix!5939 testedP!204 (++!17272 testedP!204 testedSuffix!164))))

(declare-fun lt!2631894 () Unit!166172)

(declare-fun choose!57989 (List!72385 List!72385) Unit!166172)

(assert (=> d!2302606 (= lt!2631894 (choose!57989 testedP!204 testedSuffix!164))))

(assert (=> d!2302606 (= (lemmaConcatTwoListThenFirstIsPrefix!3652 testedP!204 testedSuffix!164) lt!2631894)))

(declare-fun bs!1937706 () Bool)

(assert (= bs!1937706 d!2302606))

(assert (=> bs!1937706 m!8083124))

(assert (=> bs!1937706 m!8083124))

(declare-fun m!8083156 () Bool)

(assert (=> bs!1937706 m!8083156))

(declare-fun m!8083158 () Bool)

(assert (=> bs!1937706 m!8083158))

(assert (=> b!7501431 d!2302606))

(declare-fun b!7501491 () Bool)

(declare-fun e!4472302 () List!72385)

(assert (=> b!7501491 (= e!4472302 (Cons!72261 (h!78709 testedP!204) (++!17272 (t!386954 testedP!204) testedSuffix!164)))))

(declare-fun b!7501492 () Bool)

(declare-fun res!3009270 () Bool)

(declare-fun e!4472301 () Bool)

(assert (=> b!7501492 (=> (not res!3009270) (not e!4472301))))

(declare-fun lt!2631901 () List!72385)

(assert (=> b!7501492 (= res!3009270 (= (size!42214 lt!2631901) (+ (size!42214 testedP!204) (size!42214 testedSuffix!164))))))

(declare-fun b!7501490 () Bool)

(assert (=> b!7501490 (= e!4472302 testedSuffix!164)))

(declare-fun b!7501493 () Bool)

(assert (=> b!7501493 (= e!4472301 (or (not (= testedSuffix!164 Nil!72261)) (= lt!2631901 testedP!204)))))

(declare-fun d!2302610 () Bool)

(assert (=> d!2302610 e!4472301))

(declare-fun res!3009269 () Bool)

(assert (=> d!2302610 (=> (not res!3009269) (not e!4472301))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15274 (List!72385) (InoxSet C!39612))

(assert (=> d!2302610 (= res!3009269 (= (content!15274 lt!2631901) ((_ map or) (content!15274 testedP!204) (content!15274 testedSuffix!164))))))

(assert (=> d!2302610 (= lt!2631901 e!4472302)))

(declare-fun c!1384868 () Bool)

(assert (=> d!2302610 (= c!1384868 ((_ is Nil!72261) testedP!204))))

(assert (=> d!2302610 (= (++!17272 testedP!204 testedSuffix!164) lt!2631901)))

(assert (= (and d!2302610 c!1384868) b!7501490))

(assert (= (and d!2302610 (not c!1384868)) b!7501491))

(assert (= (and d!2302610 res!3009269) b!7501492))

(assert (= (and b!7501492 res!3009270) b!7501493))

(declare-fun m!8083164 () Bool)

(assert (=> b!7501491 m!8083164))

(declare-fun m!8083166 () Bool)

(assert (=> b!7501492 m!8083166))

(assert (=> b!7501492 m!8083120))

(declare-fun m!8083168 () Bool)

(assert (=> b!7501492 m!8083168))

(declare-fun m!8083170 () Bool)

(assert (=> d!2302610 m!8083170))

(declare-fun m!8083172 () Bool)

(assert (=> d!2302610 m!8083172))

(declare-fun m!8083174 () Bool)

(assert (=> d!2302610 m!8083174))

(assert (=> start!725746 d!2302610))

(declare-fun d!2302616 () Bool)

(declare-fun lt!2631906 () Int)

(assert (=> d!2302616 (>= lt!2631906 0)))

(declare-fun e!4472311 () Int)

(assert (=> d!2302616 (= lt!2631906 e!4472311)))

(declare-fun c!1384871 () Bool)

(assert (=> d!2302616 (= c!1384871 ((_ is Nil!72261) totalInput!779))))

(assert (=> d!2302616 (= (size!42214 totalInput!779) lt!2631906)))

(declare-fun b!7501506 () Bool)

(assert (=> b!7501506 (= e!4472311 0)))

(declare-fun b!7501507 () Bool)

(assert (=> b!7501507 (= e!4472311 (+ 1 (size!42214 (t!386954 totalInput!779))))))

(assert (= (and d!2302616 c!1384871) b!7501506))

(assert (= (and d!2302616 (not c!1384871)) b!7501507))

(declare-fun m!8083194 () Bool)

(assert (=> b!7501507 m!8083194))

(assert (=> b!7501433 d!2302616))

(declare-fun d!2302622 () Bool)

(declare-fun lt!2631909 () Int)

(assert (=> d!2302622 (>= lt!2631909 0)))

(declare-fun e!4472312 () Int)

(assert (=> d!2302622 (= lt!2631909 e!4472312)))

(declare-fun c!1384872 () Bool)

(assert (=> d!2302622 (= c!1384872 ((_ is Nil!72261) testedP!204))))

(assert (=> d!2302622 (= (size!42214 testedP!204) lt!2631909)))

(declare-fun b!7501508 () Bool)

(assert (=> b!7501508 (= e!4472312 0)))

(declare-fun b!7501509 () Bool)

(assert (=> b!7501509 (= e!4472312 (+ 1 (size!42214 (t!386954 testedP!204))))))

(assert (= (and d!2302622 c!1384872) b!7501508))

(assert (= (and d!2302622 (not c!1384872)) b!7501509))

(declare-fun m!8083196 () Bool)

(assert (=> b!7501509 m!8083196))

(assert (=> b!7501432 d!2302622))

(declare-fun b!7501518 () Bool)

(declare-fun e!4472317 () Bool)

(declare-fun tp!2177520 () Bool)

(assert (=> b!7501518 (= e!4472317 (and tp_is_empty!49627 tp!2177520))))

(assert (=> b!7501437 (= tp!2177517 e!4472317)))

(assert (= (and b!7501437 ((_ is Cons!72261) (t!386954 totalInput!779))) b!7501518))

(declare-fun b!7501519 () Bool)

(declare-fun e!4472318 () Bool)

(declare-fun tp!2177523 () Bool)

(assert (=> b!7501519 (= e!4472318 (and tp_is_empty!49627 tp!2177523))))

(assert (=> b!7501436 (= tp!2177516 e!4472318)))

(assert (= (and b!7501436 ((_ is Cons!72261) (t!386954 testedSuffix!164))) b!7501519))

(declare-fun b!7501520 () Bool)

(declare-fun e!4472319 () Bool)

(declare-fun tp!2177524 () Bool)

(assert (=> b!7501520 (= e!4472319 (and tp_is_empty!49627 tp!2177524))))

(assert (=> b!7501434 (= tp!2177515 e!4472319)))

(assert (= (and b!7501434 ((_ is Cons!72261) (t!386954 testedP!204))) b!7501520))

(check-sat (not b!7501459) (not d!2302610) tp_is_empty!49627 (not b!7501520) (not b!7501460) (not b!7501507) (not b!7501519) (not b!7501455) (not d!2302606) (not b!7501518) (not b!7501457) (not b!7501491) (not b!7501456) (not b!7501461) (not b!7501509) (not b!7501492))
(check-sat)
