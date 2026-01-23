; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749562 () Bool)

(assert start!749562)

(declare-fun b!7941437 () Bool)

(declare-fun e!4685756 () Bool)

(declare-fun tp!2361241 () Bool)

(declare-fun tp!2361239 () Bool)

(assert (=> b!7941437 (= e!4685756 (and tp!2361241 tp!2361239))))

(declare-fun b!7941438 () Bool)

(declare-fun tp_is_empty!53351 () Bool)

(assert (=> b!7941438 (= e!4685756 tp_is_empty!53351)))

(declare-fun b!7941439 () Bool)

(declare-fun tp!2361242 () Bool)

(declare-fun tp!2361243 () Bool)

(assert (=> b!7941439 (= e!4685756 (and tp!2361242 tp!2361243))))

(declare-fun b!7941440 () Bool)

(declare-fun e!4685754 () Bool)

(declare-fun tp!2361244 () Bool)

(assert (=> b!7941440 (= e!4685754 (and tp_is_empty!53351 tp!2361244))))

(declare-fun res!3150327 () Bool)

(declare-fun e!4685755 () Bool)

(assert (=> start!749562 (=> (not res!3150327) (not e!4685755))))

(declare-datatypes ((C!43146 0))(
  ( (C!43147 (val!32121 Int)) )
))
(declare-datatypes ((Regex!21404 0))(
  ( (ElementMatch!21404 (c!1459035 C!43146)) (Concat!30403 (regOne!43320 Regex!21404) (regTwo!43320 Regex!21404)) (EmptyExpr!21404) (Star!21404 (reg!21733 Regex!21404)) (EmptyLang!21404) (Union!21404 (regOne!43321 Regex!21404) (regTwo!43321 Regex!21404)) )
))
(declare-fun r!15654 () Regex!21404)

(declare-fun validRegex!11708 (Regex!21404) Bool)

(assert (=> start!749562 (= res!3150327 (validRegex!11708 r!15654))))

(assert (=> start!749562 e!4685755))

(assert (=> start!749562 e!4685756))

(assert (=> start!749562 e!4685754))

(declare-fun b!7941441 () Bool)

(declare-fun e!4685753 () Bool)

(declare-datatypes ((List!74633 0))(
  ( (Nil!74509) (Cons!74509 (h!80957 C!43146) (t!390376 List!74633)) )
))
(declare-datatypes ((tuple2!70498 0))(
  ( (tuple2!70499 (_1!38552 List!74633) (_2!38552 List!74633)) )
))
(declare-fun lt!2696698 () tuple2!70498)

(declare-fun matchR!10711 (Regex!21404 List!74633) Bool)

(assert (=> b!7941441 (= e!4685753 (matchR!10711 r!15654 (_1!38552 lt!2696698)))))

(declare-fun b!7941442 () Bool)

(declare-fun res!3150328 () Bool)

(assert (=> b!7941442 (=> (not res!3150328) (not e!4685755))))

(declare-fun derivative!592 (Regex!21404 List!74633) Regex!21404)

(assert (=> b!7941442 (= res!3150328 (= (derivative!592 r!15654 Nil!74509) r!15654))))

(declare-fun b!7941443 () Bool)

(declare-fun e!4685752 () Bool)

(assert (=> b!7941443 (= e!4685752 true)))

(declare-fun lt!2696694 () List!74633)

(declare-fun input!6711 () List!74633)

(declare-fun ++!18300 (List!74633 List!74633) List!74633)

(assert (=> b!7941443 (= lt!2696694 (++!18300 Nil!74509 input!6711))))

(declare-fun b!7941444 () Bool)

(assert (=> b!7941444 (= e!4685755 (not e!4685752))))

(declare-fun res!3150326 () Bool)

(assert (=> b!7941444 (=> res!3150326 e!4685752)))

(declare-fun lt!2696696 () Int)

(declare-fun lt!2696695 () Int)

(declare-fun isEmpty!42824 (List!74633) Bool)

(declare-fun findLongestMatchInner!2199 (Regex!21404 List!74633 Int List!74633 List!74633 Int) tuple2!70498)

(assert (=> b!7941444 (= res!3150326 (isEmpty!42824 (_1!38552 (findLongestMatchInner!2199 r!15654 Nil!74509 lt!2696696 input!6711 input!6711 lt!2696695))))))

(assert (=> b!7941444 e!4685753))

(declare-fun res!3150329 () Bool)

(assert (=> b!7941444 (=> res!3150329 e!4685753)))

(assert (=> b!7941444 (= res!3150329 (isEmpty!42824 (_1!38552 lt!2696698)))))

(declare-fun lt!2696697 () List!74633)

(assert (=> b!7941444 (= lt!2696698 (findLongestMatchInner!2199 r!15654 Nil!74509 lt!2696696 lt!2696697 input!6711 lt!2696695))))

(declare-fun size!43341 (List!74633) Int)

(assert (=> b!7941444 (= lt!2696695 (size!43341 input!6711))))

(declare-fun getSuffix!3715 (List!74633 List!74633) List!74633)

(assert (=> b!7941444 (= lt!2696697 (getSuffix!3715 input!6711 Nil!74509))))

(assert (=> b!7941444 (= lt!2696696 (size!43341 Nil!74509))))

(declare-datatypes ((Unit!169648 0))(
  ( (Unit!169649) )
))
(declare-fun lt!2696699 () Unit!169648)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!42 (Regex!21404 Regex!21404 List!74633 List!74633) Unit!169648)

(assert (=> b!7941444 (= lt!2696699 (longestMatchIsAcceptedByMatchOrIsEmptyRec!42 r!15654 r!15654 Nil!74509 input!6711))))

(declare-fun b!7941445 () Bool)

(declare-fun tp!2361240 () Bool)

(assert (=> b!7941445 (= e!4685756 tp!2361240)))

(declare-fun b!7941446 () Bool)

(declare-fun res!3150325 () Bool)

(assert (=> b!7941446 (=> (not res!3150325) (not e!4685755))))

(declare-fun isPrefix!6504 (List!74633 List!74633) Bool)

(assert (=> b!7941446 (= res!3150325 (isPrefix!6504 Nil!74509 input!6711))))

(assert (= (and start!749562 res!3150327) b!7941446))

(assert (= (and b!7941446 res!3150325) b!7941442))

(assert (= (and b!7941442 res!3150328) b!7941444))

(assert (= (and b!7941444 (not res!3150329)) b!7941441))

(assert (= (and b!7941444 (not res!3150326)) b!7941443))

(assert (= (and start!749562 (is-ElementMatch!21404 r!15654)) b!7941438))

(assert (= (and start!749562 (is-Concat!30403 r!15654)) b!7941437))

(assert (= (and start!749562 (is-Star!21404 r!15654)) b!7941445))

(assert (= (and start!749562 (is-Union!21404 r!15654)) b!7941439))

(assert (= (and start!749562 (is-Cons!74509 input!6711)) b!7941440))

(declare-fun m!8330270 () Bool)

(assert (=> b!7941444 m!8330270))

(declare-fun m!8330272 () Bool)

(assert (=> b!7941444 m!8330272))

(declare-fun m!8330274 () Bool)

(assert (=> b!7941444 m!8330274))

(declare-fun m!8330276 () Bool)

(assert (=> b!7941444 m!8330276))

(declare-fun m!8330278 () Bool)

(assert (=> b!7941444 m!8330278))

(declare-fun m!8330280 () Bool)

(assert (=> b!7941444 m!8330280))

(declare-fun m!8330282 () Bool)

(assert (=> b!7941444 m!8330282))

(declare-fun m!8330284 () Bool)

(assert (=> b!7941444 m!8330284))

(declare-fun m!8330286 () Bool)

(assert (=> b!7941442 m!8330286))

(declare-fun m!8330288 () Bool)

(assert (=> start!749562 m!8330288))

(declare-fun m!8330290 () Bool)

(assert (=> b!7941443 m!8330290))

(declare-fun m!8330292 () Bool)

(assert (=> b!7941446 m!8330292))

(declare-fun m!8330294 () Bool)

(assert (=> b!7941441 m!8330294))

(push 1)

(assert (not b!7941446))

(assert (not b!7941445))

(assert (not b!7941439))

(assert (not b!7941444))

(assert (not b!7941443))

(assert (not b!7941440))

(assert (not b!7941437))

(assert tp_is_empty!53351)

(assert (not b!7941441))

(assert (not start!749562))

(assert (not b!7941442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

