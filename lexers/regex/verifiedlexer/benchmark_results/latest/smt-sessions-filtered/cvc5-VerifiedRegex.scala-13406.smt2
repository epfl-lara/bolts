; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725772 () Bool)

(assert start!725772)

(declare-fun b!7501616 () Bool)

(declare-fun e!4472393 () Bool)

(declare-fun e!4472394 () Bool)

(assert (=> b!7501616 (= e!4472393 (not e!4472394))))

(declare-fun res!3009332 () Bool)

(assert (=> b!7501616 (=> res!3009332 e!4472394)))

(declare-datatypes ((C!39622 0))(
  ( (C!39623 (val!30209 Int)) )
))
(declare-datatypes ((List!72390 0))(
  ( (Nil!72266) (Cons!72266 (h!78714 C!39622) (t!386959 List!72390)) )
))
(declare-fun testedP!204 () List!72390)

(declare-fun totalInput!779 () List!72390)

(declare-fun isPrefix!5944 (List!72390 List!72390) Bool)

(assert (=> b!7501616 (= res!3009332 (not (isPrefix!5944 testedP!204 totalInput!779)))))

(declare-fun lt!2631959 () List!72390)

(assert (=> b!7501616 (isPrefix!5944 testedP!204 lt!2631959)))

(declare-datatypes ((Unit!166182 0))(
  ( (Unit!166183) )
))
(declare-fun lt!2631962 () Unit!166182)

(declare-fun testedSuffix!164 () List!72390)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3657 (List!72390 List!72390) Unit!166182)

(assert (=> b!7501616 (= lt!2631962 (lemmaConcatTwoListThenFirstIsPrefix!3657 testedP!204 testedSuffix!164))))

(declare-fun b!7501617 () Bool)

(declare-fun e!4472396 () Bool)

(declare-fun tp_is_empty!49637 () Bool)

(declare-fun tp!2177571 () Bool)

(assert (=> b!7501617 (= e!4472396 (and tp_is_empty!49637 tp!2177571))))

(declare-fun b!7501618 () Bool)

(declare-fun e!4472392 () Bool)

(declare-fun e!4472391 () Bool)

(assert (=> b!7501618 (= e!4472392 e!4472391)))

(declare-fun res!3009329 () Bool)

(assert (=> b!7501618 (=> (not res!3009329) (not e!4472391))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2631961 () Int)

(assert (=> b!7501618 (= res!3009329 (= testedPSize!164 lt!2631961))))

(declare-fun size!42219 (List!72390) Int)

(assert (=> b!7501618 (= lt!2631961 (size!42219 testedP!204))))

(declare-fun b!7501619 () Bool)

(assert (=> b!7501619 (= e!4472391 e!4472393)))

(declare-fun res!3009331 () Bool)

(assert (=> b!7501619 (=> (not res!3009331) (not e!4472393))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2631960 () Int)

(assert (=> b!7501619 (= res!3009331 (= totalInputSize!226 lt!2631960))))

(assert (=> b!7501619 (= lt!2631960 (size!42219 totalInput!779))))

(declare-fun b!7501620 () Bool)

(declare-fun e!4472395 () Bool)

(declare-fun tp!2177570 () Bool)

(assert (=> b!7501620 (= e!4472395 (and tp_is_empty!49637 tp!2177570))))

(declare-fun b!7501621 () Bool)

(assert (=> b!7501621 (= e!4472394 (>= lt!2631960 lt!2631961))))

(declare-fun lt!2631963 () List!72390)

(assert (=> b!7501621 (= testedSuffix!164 lt!2631963)))

(declare-fun lt!2631964 () Unit!166182)

(declare-fun lemmaSamePrefixThenSameSuffix!2749 (List!72390 List!72390 List!72390 List!72390 List!72390) Unit!166182)

(assert (=> b!7501621 (= lt!2631964 (lemmaSamePrefixThenSameSuffix!2749 testedP!204 testedSuffix!164 testedP!204 lt!2631963 totalInput!779))))

(declare-fun getSuffix!3446 (List!72390 List!72390) List!72390)

(assert (=> b!7501621 (= lt!2631963 (getSuffix!3446 totalInput!779 testedP!204))))

(declare-fun res!3009330 () Bool)

(assert (=> start!725772 (=> (not res!3009330) (not e!4472392))))

(assert (=> start!725772 (= res!3009330 (= lt!2631959 totalInput!779))))

(declare-fun ++!17277 (List!72390 List!72390) List!72390)

(assert (=> start!725772 (= lt!2631959 (++!17277 testedP!204 testedSuffix!164))))

(assert (=> start!725772 e!4472392))

(assert (=> start!725772 e!4472396))

(assert (=> start!725772 true))

(assert (=> start!725772 e!4472395))

(declare-fun e!4472397 () Bool)

(assert (=> start!725772 e!4472397))

(declare-fun b!7501622 () Bool)

(declare-fun tp!2177572 () Bool)

(assert (=> b!7501622 (= e!4472397 (and tp_is_empty!49637 tp!2177572))))

(assert (= (and start!725772 res!3009330) b!7501618))

(assert (= (and b!7501618 res!3009329) b!7501619))

(assert (= (and b!7501619 res!3009331) b!7501616))

(assert (= (and b!7501616 (not res!3009332)) b!7501621))

(assert (= (and start!725772 (is-Cons!72266 testedSuffix!164)) b!7501617))

(assert (= (and start!725772 (is-Cons!72266 totalInput!779)) b!7501620))

(assert (= (and start!725772 (is-Cons!72266 testedP!204)) b!7501622))

(declare-fun m!8083258 () Bool)

(assert (=> b!7501616 m!8083258))

(declare-fun m!8083260 () Bool)

(assert (=> b!7501616 m!8083260))

(declare-fun m!8083262 () Bool)

(assert (=> b!7501616 m!8083262))

(declare-fun m!8083264 () Bool)

(assert (=> b!7501619 m!8083264))

(declare-fun m!8083266 () Bool)

(assert (=> start!725772 m!8083266))

(declare-fun m!8083268 () Bool)

(assert (=> b!7501621 m!8083268))

(declare-fun m!8083270 () Bool)

(assert (=> b!7501621 m!8083270))

(declare-fun m!8083272 () Bool)

(assert (=> b!7501618 m!8083272))

(push 1)

(assert (not b!7501619))

(assert (not start!725772))

(assert (not b!7501621))

(assert tp_is_empty!49637)

(assert (not b!7501617))

(assert (not b!7501618))

(assert (not b!7501622))

(assert (not b!7501616))

(assert (not b!7501620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7501661 () Bool)

(declare-fun e!4472427 () Bool)

(declare-fun lt!2631988 () List!72390)

(assert (=> b!7501661 (= e!4472427 (or (not (= testedSuffix!164 Nil!72266)) (= lt!2631988 testedP!204)))))

(declare-fun b!7501658 () Bool)

(declare-fun e!4472426 () List!72390)

(assert (=> b!7501658 (= e!4472426 testedSuffix!164)))

(declare-fun b!7501660 () Bool)

(declare-fun res!3009349 () Bool)

(assert (=> b!7501660 (=> (not res!3009349) (not e!4472427))))

(assert (=> b!7501660 (= res!3009349 (= (size!42219 lt!2631988) (+ (size!42219 testedP!204) (size!42219 testedSuffix!164))))))

(declare-fun b!7501659 () Bool)

(assert (=> b!7501659 (= e!4472426 (Cons!72266 (h!78714 testedP!204) (++!17277 (t!386959 testedP!204) testedSuffix!164)))))

(declare-fun d!2302627 () Bool)

(assert (=> d!2302627 e!4472427))

(declare-fun res!3009350 () Bool)

(assert (=> d!2302627 (=> (not res!3009350) (not e!4472427))))

(declare-fun content!15275 (List!72390) (Set C!39622))

(assert (=> d!2302627 (= res!3009350 (= (content!15275 lt!2631988) (set.union (content!15275 testedP!204) (content!15275 testedSuffix!164))))))

(assert (=> d!2302627 (= lt!2631988 e!4472426)))

(declare-fun c!1384878 () Bool)

(assert (=> d!2302627 (= c!1384878 (is-Nil!72266 testedP!204))))

(assert (=> d!2302627 (= (++!17277 testedP!204 testedSuffix!164) lt!2631988)))

(assert (= (and d!2302627 c!1384878) b!7501658))

(assert (= (and d!2302627 (not c!1384878)) b!7501659))

(assert (= (and d!2302627 res!3009350) b!7501660))

(assert (= (and b!7501660 res!3009349) b!7501661))

(declare-fun m!8083292 () Bool)

(assert (=> b!7501660 m!8083292))

(assert (=> b!7501660 m!8083272))

(declare-fun m!8083294 () Bool)

(assert (=> b!7501660 m!8083294))

(declare-fun m!8083296 () Bool)

(assert (=> b!7501659 m!8083296))

(declare-fun m!8083298 () Bool)

(assert (=> d!2302627 m!8083298))

(declare-fun m!8083300 () Bool)

(assert (=> d!2302627 m!8083300))

(declare-fun m!8083302 () Bool)

(assert (=> d!2302627 m!8083302))

(assert (=> start!725772 d!2302627))

(declare-fun d!2302633 () Bool)

(declare-fun lt!2631993 () Int)

(assert (=> d!2302633 (>= lt!2631993 0)))

(declare-fun e!4472436 () Int)

(assert (=> d!2302633 (= lt!2631993 e!4472436)))

(declare-fun c!1384881 () Bool)

(assert (=> d!2302633 (= c!1384881 (is-Nil!72266 totalInput!779))))

(assert (=> d!2302633 (= (size!42219 totalInput!779) lt!2631993)))

(declare-fun b!7501674 () Bool)

(assert (=> b!7501674 (= e!4472436 0)))

(declare-fun b!7501675 () Bool)

(assert (=> b!7501675 (= e!4472436 (+ 1 (size!42219 (t!386959 totalInput!779))))))

(assert (= (and d!2302633 c!1384881) b!7501674))

(assert (= (and d!2302633 (not c!1384881)) b!7501675))

(declare-fun m!8083304 () Bool)

(assert (=> b!7501675 m!8083304))

(assert (=> b!7501619 d!2302633))

(declare-fun d!2302635 () Bool)

(declare-fun lt!2631994 () Int)

(assert (=> d!2302635 (>= lt!2631994 0)))

(declare-fun e!4472437 () Int)

(assert (=> d!2302635 (= lt!2631994 e!4472437)))

(declare-fun c!1384882 () Bool)

(assert (=> d!2302635 (= c!1384882 (is-Nil!72266 testedP!204))))

(assert (=> d!2302635 (= (size!42219 testedP!204) lt!2631994)))

(declare-fun b!7501676 () Bool)

(assert (=> b!7501676 (= e!4472437 0)))

(declare-fun b!7501677 () Bool)

(assert (=> b!7501677 (= e!4472437 (+ 1 (size!42219 (t!386959 testedP!204))))))

(assert (= (and d!2302635 c!1384882) b!7501676))

(assert (= (and d!2302635 (not c!1384882)) b!7501677))

(declare-fun m!8083306 () Bool)

(assert (=> b!7501677 m!8083306))

(assert (=> b!7501618 d!2302635))

(declare-fun d!2302637 () Bool)

(declare-fun e!4472450 () Bool)

(assert (=> d!2302637 e!4472450))

(declare-fun res!3009375 () Bool)

(assert (=> d!2302637 (=> res!3009375 e!4472450)))

(declare-fun lt!2632002 () Bool)

(assert (=> d!2302637 (= res!3009375 (not lt!2632002))))

(declare-fun e!4472452 () Bool)

(assert (=> d!2302637 (= lt!2632002 e!4472452)))

(declare-fun res!3009377 () Bool)

(assert (=> d!2302637 (=> res!3009377 e!4472452)))

(assert (=> d!2302637 (= res!3009377 (is-Nil!72266 testedP!204))))

(assert (=> d!2302637 (= (isPrefix!5944 testedP!204 totalInput!779) lt!2632002)))

(declare-fun b!7501697 () Bool)

(assert (=> b!7501697 (= e!4472450 (>= (size!42219 totalInput!779) (size!42219 testedP!204)))))

(declare-fun b!7501695 () Bool)

(declare-fun res!3009376 () Bool)

(declare-fun e!4472451 () Bool)

(assert (=> b!7501695 (=> (not res!3009376) (not e!4472451))))

(declare-fun head!15395 (List!72390) C!39622)

(assert (=> b!7501695 (= res!3009376 (= (head!15395 testedP!204) (head!15395 totalInput!779)))))

(declare-fun b!7501696 () Bool)

(declare-fun tail!14964 (List!72390) List!72390)

(assert (=> b!7501696 (= e!4472451 (isPrefix!5944 (tail!14964 testedP!204) (tail!14964 totalInput!779)))))

(declare-fun b!7501694 () Bool)

(assert (=> b!7501694 (= e!4472452 e!4472451)))

(declare-fun res!3009378 () Bool)

(assert (=> b!7501694 (=> (not res!3009378) (not e!4472451))))

(assert (=> b!7501694 (= res!3009378 (not (is-Nil!72266 totalInput!779)))))

(assert (= (and d!2302637 (not res!3009377)) b!7501694))

(assert (= (and b!7501694 res!3009378) b!7501695))

(assert (= (and b!7501695 res!3009376) b!7501696))

(assert (= (and d!2302637 (not res!3009375)) b!7501697))

(assert (=> b!7501697 m!8083264))

(assert (=> b!7501697 m!8083272))

(declare-fun m!8083330 () Bool)

(assert (=> b!7501695 m!8083330))

(declare-fun m!8083332 () Bool)

(assert (=> b!7501695 m!8083332))

(declare-fun m!8083334 () Bool)

(assert (=> b!7501696 m!8083334))

(declare-fun m!8083336 () Bool)

(assert (=> b!7501696 m!8083336))

(assert (=> b!7501696 m!8083334))

(assert (=> b!7501696 m!8083336))

(declare-fun m!8083338 () Bool)

(assert (=> b!7501696 m!8083338))

(assert (=> b!7501616 d!2302637))

(declare-fun d!2302645 () Bool)

(declare-fun e!4472453 () Bool)

(assert (=> d!2302645 e!4472453))

(declare-fun res!3009379 () Bool)

(assert (=> d!2302645 (=> res!3009379 e!4472453)))

(declare-fun lt!2632003 () Bool)

(assert (=> d!2302645 (= res!3009379 (not lt!2632003))))

(declare-fun e!4472455 () Bool)

(assert (=> d!2302645 (= lt!2632003 e!4472455)))

(declare-fun res!3009381 () Bool)

(assert (=> d!2302645 (=> res!3009381 e!4472455)))

(assert (=> d!2302645 (= res!3009381 (is-Nil!72266 testedP!204))))

(assert (=> d!2302645 (= (isPrefix!5944 testedP!204 lt!2631959) lt!2632003)))

(declare-fun b!7501701 () Bool)

(assert (=> b!7501701 (= e!4472453 (>= (size!42219 lt!2631959) (size!42219 testedP!204)))))

(declare-fun b!7501699 () Bool)

(declare-fun res!3009380 () Bool)

(declare-fun e!4472454 () Bool)

(assert (=> b!7501699 (=> (not res!3009380) (not e!4472454))))

(assert (=> b!7501699 (= res!3009380 (= (head!15395 testedP!204) (head!15395 lt!2631959)))))

(declare-fun b!7501700 () Bool)

(assert (=> b!7501700 (= e!4472454 (isPrefix!5944 (tail!14964 testedP!204) (tail!14964 lt!2631959)))))

(declare-fun b!7501698 () Bool)

(assert (=> b!7501698 (= e!4472455 e!4472454)))

(declare-fun res!3009382 () Bool)

(assert (=> b!7501698 (=> (not res!3009382) (not e!4472454))))

(assert (=> b!7501698 (= res!3009382 (not (is-Nil!72266 lt!2631959)))))

(assert (= (and d!2302645 (not res!3009381)) b!7501698))

(assert (= (and b!7501698 res!3009382) b!7501699))

(assert (= (and b!7501699 res!3009380) b!7501700))

(assert (= (and d!2302645 (not res!3009379)) b!7501701))

(declare-fun m!8083340 () Bool)

(assert (=> b!7501701 m!8083340))

(assert (=> b!7501701 m!8083272))

(assert (=> b!7501699 m!8083330))

(declare-fun m!8083342 () Bool)

(assert (=> b!7501699 m!8083342))

(assert (=> b!7501700 m!8083334))

(declare-fun m!8083344 () Bool)

(assert (=> b!7501700 m!8083344))

(assert (=> b!7501700 m!8083334))

(assert (=> b!7501700 m!8083344))

(declare-fun m!8083346 () Bool)

(assert (=> b!7501700 m!8083346))

(assert (=> b!7501616 d!2302645))

(declare-fun d!2302647 () Bool)

(assert (=> d!2302647 (isPrefix!5944 testedP!204 (++!17277 testedP!204 testedSuffix!164))))

(declare-fun lt!2632008 () Unit!166182)

(declare-fun choose!57992 (List!72390 List!72390) Unit!166182)

(assert (=> d!2302647 (= lt!2632008 (choose!57992 testedP!204 testedSuffix!164))))

(assert (=> d!2302647 (= (lemmaConcatTwoListThenFirstIsPrefix!3657 testedP!204 testedSuffix!164) lt!2632008)))

(declare-fun bs!1937715 () Bool)

(assert (= bs!1937715 d!2302647))

(assert (=> bs!1937715 m!8083266))

(assert (=> bs!1937715 m!8083266))

(declare-fun m!8083348 () Bool)

(assert (=> bs!1937715 m!8083348))

(declare-fun m!8083350 () Bool)

(assert (=> bs!1937715 m!8083350))

(assert (=> b!7501616 d!2302647))

(declare-fun d!2302649 () Bool)

(assert (=> d!2302649 (= testedSuffix!164 lt!2631963)))

(declare-fun lt!2632013 () Unit!166182)

(declare-fun choose!57993 (List!72390 List!72390 List!72390 List!72390 List!72390) Unit!166182)

(assert (=> d!2302649 (= lt!2632013 (choose!57993 testedP!204 testedSuffix!164 testedP!204 lt!2631963 totalInput!779))))

(assert (=> d!2302649 (isPrefix!5944 testedP!204 totalInput!779)))

(assert (=> d!2302649 (= (lemmaSamePrefixThenSameSuffix!2749 testedP!204 testedSuffix!164 testedP!204 lt!2631963 totalInput!779) lt!2632013)))

(declare-fun bs!1937716 () Bool)

(assert (= bs!1937716 d!2302649))

(declare-fun m!8083366 () Bool)

(assert (=> bs!1937716 m!8083366))

(assert (=> bs!1937716 m!8083258))

(assert (=> b!7501621 d!2302649))

(declare-fun d!2302655 () Bool)

(declare-fun lt!2632019 () List!72390)

(assert (=> d!2302655 (= (++!17277 testedP!204 lt!2632019) totalInput!779)))

(declare-fun e!4472465 () List!72390)

(assert (=> d!2302655 (= lt!2632019 e!4472465)))

(declare-fun c!1384889 () Bool)

(assert (=> d!2302655 (= c!1384889 (is-Cons!72266 testedP!204))))

(assert (=> d!2302655 (>= (size!42219 totalInput!779) (size!42219 testedP!204))))

(assert (=> d!2302655 (= (getSuffix!3446 totalInput!779 testedP!204) lt!2632019)))

(declare-fun b!7501720 () Bool)

(assert (=> b!7501720 (= e!4472465 (getSuffix!3446 (tail!14964 totalInput!779) (t!386959 testedP!204)))))

(declare-fun b!7501721 () Bool)

(assert (=> b!7501721 (= e!4472465 totalInput!779)))

(assert (= (and d!2302655 c!1384889) b!7501720))

(assert (= (and d!2302655 (not c!1384889)) b!7501721))

(declare-fun m!8083370 () Bool)

(assert (=> d!2302655 m!8083370))

(assert (=> d!2302655 m!8083264))

(assert (=> d!2302655 m!8083272))

(assert (=> b!7501720 m!8083336))

(assert (=> b!7501720 m!8083336))

(declare-fun m!8083372 () Bool)

(assert (=> b!7501720 m!8083372))

(assert (=> b!7501621 d!2302655))

(declare-fun b!7501730 () Bool)

(declare-fun e!4472470 () Bool)

(declare-fun tp!2177584 () Bool)

(assert (=> b!7501730 (= e!4472470 (and tp_is_empty!49637 tp!2177584))))

(assert (=> b!7501620 (= tp!2177570 e!4472470)))

(assert (= (and b!7501620 (is-Cons!72266 (t!386959 totalInput!779))) b!7501730))

(declare-fun b!7501731 () Bool)

(declare-fun e!4472471 () Bool)

(declare-fun tp!2177585 () Bool)

(assert (=> b!7501731 (= e!4472471 (and tp_is_empty!49637 tp!2177585))))

(assert (=> b!7501622 (= tp!2177572 e!4472471)))

(assert (= (and b!7501622 (is-Cons!72266 (t!386959 testedP!204))) b!7501731))

(declare-fun b!7501732 () Bool)

(declare-fun e!4472472 () Bool)

(declare-fun tp!2177586 () Bool)

(assert (=> b!7501732 (= e!4472472 (and tp_is_empty!49637 tp!2177586))))

(assert (=> b!7501617 (= tp!2177571 e!4472472)))

(assert (= (and b!7501617 (is-Cons!72266 (t!386959 testedSuffix!164))) b!7501732))

(push 1)

(assert (not b!7501732))

(assert (not d!2302627))

(assert (not b!7501697))

(assert (not b!7501677))

(assert (not b!7501701))

(assert (not b!7501731))

(assert (not d!2302649))

(assert (not b!7501660))

(assert (not b!7501730))

(assert (not b!7501675))

(assert (not b!7501695))

(assert (not d!2302647))

(assert tp_is_empty!49637)

(assert (not b!7501696))

(assert (not b!7501659))

(assert (not b!7501699))

(assert (not b!7501720))

(assert (not d!2302655))

(assert (not b!7501700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

