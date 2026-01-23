; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548862 () Bool)

(assert start!548862)

(declare-fun setNonEmpty!32527 () Bool)

(declare-fun e!3228887 () Bool)

(declare-fun setRes!32527 () Bool)

(declare-datatypes ((C!29618 0))(
  ( (C!29619 (val!24511 Int)) )
))
(declare-datatypes ((Regex!14674 0))(
  ( (ElementMatch!14674 (c!893259 C!29618)) (Concat!23519 (regOne!29860 Regex!14674) (regTwo!29860 Regex!14674)) (EmptyExpr!14674) (Star!14674 (reg!15003 Regex!14674)) (EmptyLang!14674) (Union!14674 (regOne!29861 Regex!14674) (regTwo!29861 Regex!14674)) )
))
(declare-datatypes ((List!60327 0))(
  ( (Nil!60203) (Cons!60203 (h!66651 Regex!14674) (t!373480 List!60327)) )
))
(declare-datatypes ((Context!8116 0))(
  ( (Context!8117 (exprs!4558 List!60327)) )
))
(declare-fun setElem!32527 () Context!8116)

(declare-fun tp!1453548 () Bool)

(declare-fun inv!79933 (Context!8116) Bool)

(assert (=> setNonEmpty!32527 (= setRes!32527 (and tp!1453548 (inv!79933 setElem!32527) e!3228887))))

(declare-fun baseZ!87 () (Set Context!8116))

(declare-fun setRest!32527 () (Set Context!8116))

(assert (=> setNonEmpty!32527 (= baseZ!87 (set.union (set.insert setElem!32527 (as set.empty (Set Context!8116))) setRest!32527))))

(declare-fun b!5182460 () Bool)

(declare-fun e!3228889 () Bool)

(declare-fun tp_is_empty!38601 () Bool)

(declare-fun tp!1453546 () Bool)

(assert (=> b!5182460 (= e!3228889 (and tp_is_empty!38601 tp!1453546))))

(declare-fun b!5182461 () Bool)

(declare-fun e!3228888 () Bool)

(declare-fun e!3228885 () Bool)

(assert (=> b!5182461 (= e!3228888 e!3228885)))

(declare-fun res!2201477 () Bool)

(assert (=> b!5182461 (=> (not res!2201477) (not e!3228885))))

(declare-fun lt!2136052 () (Set Context!8116))

(declare-datatypes ((List!60328 0))(
  ( (Nil!60204) (Cons!60204 (h!66652 C!29618) (t!373481 List!60328)) )
))
(declare-fun input!5952 () List!60328)

(declare-fun z!4835 () (Set Context!8116))

(declare-fun derivationZipper!297 ((Set Context!8116) List!60328) (Set Context!8116))

(assert (=> b!5182461 (= res!2201477 (= (derivationZipper!297 lt!2136052 (t!373481 input!5952)) z!4835))))

(declare-fun derivationStepZipper!1020 ((Set Context!8116) C!29618) (Set Context!8116))

(assert (=> b!5182461 (= lt!2136052 (derivationStepZipper!1020 baseZ!87 (h!66652 input!5952)))))

(declare-fun lt!2136051 () (Set Context!8116))

(declare-fun b!5182462 () Bool)

(declare-fun lt!2136053 () List!60328)

(declare-fun ++!13178 (List!60328 List!60328) List!60328)

(assert (=> b!5182462 (= e!3228885 (not (= (derivationZipper!297 baseZ!87 (++!13178 input!5952 lt!2136053)) lt!2136051)))))

(assert (=> b!5182462 (= (derivationZipper!297 lt!2136052 (++!13178 (t!373481 input!5952) lt!2136053)) lt!2136051)))

(declare-fun c!11077 () C!29618)

(assert (=> b!5182462 (= lt!2136051 (derivationStepZipper!1020 z!4835 c!11077))))

(assert (=> b!5182462 (= lt!2136053 (Cons!60204 c!11077 Nil!60204))))

(declare-datatypes ((Unit!152190 0))(
  ( (Unit!152191) )
))
(declare-fun lt!2136054 () Unit!152190)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!118 ((Set Context!8116) (Set Context!8116) List!60328 C!29618) Unit!152190)

(assert (=> b!5182462 (= lt!2136054 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!118 lt!2136052 z!4835 (t!373481 input!5952) c!11077))))

(declare-fun b!5182463 () Bool)

(declare-fun res!2201478 () Bool)

(assert (=> b!5182463 (=> (not res!2201478) (not e!3228888))))

(assert (=> b!5182463 (= res!2201478 (is-Cons!60204 input!5952))))

(declare-fun res!2201479 () Bool)

(assert (=> start!548862 (=> (not res!2201479) (not e!3228888))))

(assert (=> start!548862 (= res!2201479 (= (derivationZipper!297 baseZ!87 input!5952) z!4835))))

(assert (=> start!548862 e!3228888))

(declare-fun condSetEmpty!32527 () Bool)

(assert (=> start!548862 (= condSetEmpty!32527 (= baseZ!87 (as set.empty (Set Context!8116))))))

(assert (=> start!548862 setRes!32527))

(assert (=> start!548862 e!3228889))

(declare-fun condSetEmpty!32528 () Bool)

(assert (=> start!548862 (= condSetEmpty!32528 (= z!4835 (as set.empty (Set Context!8116))))))

(declare-fun setRes!32528 () Bool)

(assert (=> start!548862 setRes!32528))

(assert (=> start!548862 tp_is_empty!38601))

(declare-fun setIsEmpty!32527 () Bool)

(assert (=> setIsEmpty!32527 setRes!32527))

(declare-fun tp!1453545 () Bool)

(declare-fun setNonEmpty!32528 () Bool)

(declare-fun setElem!32528 () Context!8116)

(declare-fun e!3228886 () Bool)

(assert (=> setNonEmpty!32528 (= setRes!32528 (and tp!1453545 (inv!79933 setElem!32528) e!3228886))))

(declare-fun setRest!32528 () (Set Context!8116))

(assert (=> setNonEmpty!32528 (= z!4835 (set.union (set.insert setElem!32528 (as set.empty (Set Context!8116))) setRest!32528))))

(declare-fun setIsEmpty!32528 () Bool)

(assert (=> setIsEmpty!32528 setRes!32528))

(declare-fun b!5182464 () Bool)

(declare-fun tp!1453547 () Bool)

(assert (=> b!5182464 (= e!3228886 tp!1453547)))

(declare-fun b!5182465 () Bool)

(declare-fun tp!1453544 () Bool)

(assert (=> b!5182465 (= e!3228887 tp!1453544)))

(assert (= (and start!548862 res!2201479) b!5182463))

(assert (= (and b!5182463 res!2201478) b!5182461))

(assert (= (and b!5182461 res!2201477) b!5182462))

(assert (= (and start!548862 condSetEmpty!32527) setIsEmpty!32527))

(assert (= (and start!548862 (not condSetEmpty!32527)) setNonEmpty!32527))

(assert (= setNonEmpty!32527 b!5182465))

(assert (= (and start!548862 (is-Cons!60204 input!5952)) b!5182460))

(assert (= (and start!548862 condSetEmpty!32528) setIsEmpty!32528))

(assert (= (and start!548862 (not condSetEmpty!32528)) setNonEmpty!32528))

(assert (= setNonEmpty!32528 b!5182464))

(declare-fun m!6242612 () Bool)

(assert (=> start!548862 m!6242612))

(declare-fun m!6242614 () Bool)

(assert (=> b!5182461 m!6242614))

(declare-fun m!6242616 () Bool)

(assert (=> b!5182461 m!6242616))

(declare-fun m!6242618 () Bool)

(assert (=> setNonEmpty!32527 m!6242618))

(declare-fun m!6242620 () Bool)

(assert (=> b!5182462 m!6242620))

(declare-fun m!6242622 () Bool)

(assert (=> b!5182462 m!6242622))

(assert (=> b!5182462 m!6242620))

(declare-fun m!6242624 () Bool)

(assert (=> b!5182462 m!6242624))

(declare-fun m!6242626 () Bool)

(assert (=> b!5182462 m!6242626))

(declare-fun m!6242628 () Bool)

(assert (=> b!5182462 m!6242628))

(assert (=> b!5182462 m!6242626))

(declare-fun m!6242630 () Bool)

(assert (=> b!5182462 m!6242630))

(declare-fun m!6242632 () Bool)

(assert (=> setNonEmpty!32528 m!6242632))

(push 1)

(assert (not start!548862))

(assert (not setNonEmpty!32528))

(assert (not b!5182464))

(assert (not b!5182461))

(assert tp_is_empty!38601)

(assert (not b!5182465))

(assert (not b!5182460))

(assert (not setNonEmpty!32527))

(assert (not b!5182462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675849 () Bool)

(declare-fun c!893263 () Bool)

(assert (=> d!1675849 (= c!893263 (is-Cons!60204 (t!373481 input!5952)))))

(declare-fun e!3228907 () (Set Context!8116))

(assert (=> d!1675849 (= (derivationZipper!297 lt!2136052 (t!373481 input!5952)) e!3228907)))

(declare-fun b!5182488 () Bool)

(assert (=> b!5182488 (= e!3228907 (derivationZipper!297 (derivationStepZipper!1020 lt!2136052 (h!66652 (t!373481 input!5952))) (t!373481 (t!373481 input!5952))))))

(declare-fun b!5182489 () Bool)

(assert (=> b!5182489 (= e!3228907 lt!2136052)))

(assert (= (and d!1675849 c!893263) b!5182488))

(assert (= (and d!1675849 (not c!893263)) b!5182489))

(declare-fun m!6242656 () Bool)

(assert (=> b!5182488 m!6242656))

(assert (=> b!5182488 m!6242656))

(declare-fun m!6242658 () Bool)

(assert (=> b!5182488 m!6242658))

(assert (=> b!5182461 d!1675849))

(declare-fun d!1675853 () Bool)

(assert (=> d!1675853 true))

(declare-fun lambda!259100 () Int)

(declare-fun flatMap!471 ((Set Context!8116) Int) (Set Context!8116))

(assert (=> d!1675853 (= (derivationStepZipper!1020 baseZ!87 (h!66652 input!5952)) (flatMap!471 baseZ!87 lambda!259100))))

(declare-fun bs!1208034 () Bool)

(assert (= bs!1208034 d!1675853))

(declare-fun m!6242664 () Bool)

(assert (=> bs!1208034 m!6242664))

(assert (=> b!5182461 d!1675853))

(declare-fun b!5182507 () Bool)

(declare-fun e!3228916 () List!60328)

(assert (=> b!5182507 (= e!3228916 (Cons!60204 (h!66652 input!5952) (++!13178 (t!373481 input!5952) lt!2136053)))))

(declare-fun d!1675857 () Bool)

(declare-fun e!3228915 () Bool)

(assert (=> d!1675857 e!3228915))

(declare-fun res!2201493 () Bool)

(assert (=> d!1675857 (=> (not res!2201493) (not e!3228915))))

(declare-fun lt!2136069 () List!60328)

(declare-fun content!10673 (List!60328) (Set C!29618))

(assert (=> d!1675857 (= res!2201493 (= (content!10673 lt!2136069) (set.union (content!10673 input!5952) (content!10673 lt!2136053))))))

(assert (=> d!1675857 (= lt!2136069 e!3228916)))

(declare-fun c!893273 () Bool)

(assert (=> d!1675857 (= c!893273 (is-Nil!60204 input!5952))))

(assert (=> d!1675857 (= (++!13178 input!5952 lt!2136053) lt!2136069)))

(declare-fun b!5182509 () Bool)

(assert (=> b!5182509 (= e!3228915 (or (not (= lt!2136053 Nil!60204)) (= lt!2136069 input!5952)))))

(declare-fun b!5182508 () Bool)

(declare-fun res!2201494 () Bool)

(assert (=> b!5182508 (=> (not res!2201494) (not e!3228915))))

(declare-fun size!39702 (List!60328) Int)

(assert (=> b!5182508 (= res!2201494 (= (size!39702 lt!2136069) (+ (size!39702 input!5952) (size!39702 lt!2136053))))))

(declare-fun b!5182506 () Bool)

(assert (=> b!5182506 (= e!3228916 lt!2136053)))

(assert (= (and d!1675857 c!893273) b!5182506))

(assert (= (and d!1675857 (not c!893273)) b!5182507))

(assert (= (and d!1675857 res!2201493) b!5182508))

(assert (= (and b!5182508 res!2201494) b!5182509))

(assert (=> b!5182507 m!6242620))

(declare-fun m!6242666 () Bool)

(assert (=> d!1675857 m!6242666))

(declare-fun m!6242668 () Bool)

(assert (=> d!1675857 m!6242668))

(declare-fun m!6242670 () Bool)

(assert (=> d!1675857 m!6242670))

(declare-fun m!6242672 () Bool)

(assert (=> b!5182508 m!6242672))

(declare-fun m!6242674 () Bool)

(assert (=> b!5182508 m!6242674))

(declare-fun m!6242676 () Bool)

(assert (=> b!5182508 m!6242676))

(assert (=> b!5182462 d!1675857))

(declare-fun bs!1208035 () Bool)

(declare-fun d!1675859 () Bool)

(assert (= bs!1208035 (and d!1675859 d!1675853)))

(declare-fun lambda!259101 () Int)

(assert (=> bs!1208035 (= (= c!11077 (h!66652 input!5952)) (= lambda!259101 lambda!259100))))

(assert (=> d!1675859 true))

(assert (=> d!1675859 (= (derivationStepZipper!1020 z!4835 c!11077) (flatMap!471 z!4835 lambda!259101))))

(declare-fun bs!1208036 () Bool)

(assert (= bs!1208036 d!1675859))

(declare-fun m!6242678 () Bool)

(assert (=> bs!1208036 m!6242678))

(assert (=> b!5182462 d!1675859))

(declare-fun b!5182511 () Bool)

(declare-fun e!3228918 () List!60328)

(assert (=> b!5182511 (= e!3228918 (Cons!60204 (h!66652 (t!373481 input!5952)) (++!13178 (t!373481 (t!373481 input!5952)) lt!2136053)))))

(declare-fun d!1675861 () Bool)

(declare-fun e!3228917 () Bool)

(assert (=> d!1675861 e!3228917))

(declare-fun res!2201495 () Bool)

(assert (=> d!1675861 (=> (not res!2201495) (not e!3228917))))

(declare-fun lt!2136070 () List!60328)

(assert (=> d!1675861 (= res!2201495 (= (content!10673 lt!2136070) (set.union (content!10673 (t!373481 input!5952)) (content!10673 lt!2136053))))))

(assert (=> d!1675861 (= lt!2136070 e!3228918)))

(declare-fun c!893274 () Bool)

(assert (=> d!1675861 (= c!893274 (is-Nil!60204 (t!373481 input!5952)))))

(assert (=> d!1675861 (= (++!13178 (t!373481 input!5952) lt!2136053) lt!2136070)))

(declare-fun b!5182513 () Bool)

(assert (=> b!5182513 (= e!3228917 (or (not (= lt!2136053 Nil!60204)) (= lt!2136070 (t!373481 input!5952))))))

(declare-fun b!5182512 () Bool)

(declare-fun res!2201496 () Bool)

(assert (=> b!5182512 (=> (not res!2201496) (not e!3228917))))

(assert (=> b!5182512 (= res!2201496 (= (size!39702 lt!2136070) (+ (size!39702 (t!373481 input!5952)) (size!39702 lt!2136053))))))

(declare-fun b!5182510 () Bool)

(assert (=> b!5182510 (= e!3228918 lt!2136053)))

(assert (= (and d!1675861 c!893274) b!5182510))

(assert (= (and d!1675861 (not c!893274)) b!5182511))

(assert (= (and d!1675861 res!2201495) b!5182512))

(assert (= (and b!5182512 res!2201496) b!5182513))

(declare-fun m!6242680 () Bool)

(assert (=> b!5182511 m!6242680))

(declare-fun m!6242682 () Bool)

(assert (=> d!1675861 m!6242682))

(declare-fun m!6242684 () Bool)

(assert (=> d!1675861 m!6242684))

(assert (=> d!1675861 m!6242670))

(declare-fun m!6242686 () Bool)

(assert (=> b!5182512 m!6242686))

(declare-fun m!6242688 () Bool)

(assert (=> b!5182512 m!6242688))

(assert (=> b!5182512 m!6242676))

(assert (=> b!5182462 d!1675861))

(declare-fun d!1675863 () Bool)

(declare-fun c!893275 () Bool)

(assert (=> d!1675863 (= c!893275 (is-Cons!60204 (++!13178 (t!373481 input!5952) lt!2136053)))))

(declare-fun e!3228919 () (Set Context!8116))

(assert (=> d!1675863 (= (derivationZipper!297 lt!2136052 (++!13178 (t!373481 input!5952) lt!2136053)) e!3228919)))

(declare-fun b!5182514 () Bool)

(assert (=> b!5182514 (= e!3228919 (derivationZipper!297 (derivationStepZipper!1020 lt!2136052 (h!66652 (++!13178 (t!373481 input!5952) lt!2136053))) (t!373481 (++!13178 (t!373481 input!5952) lt!2136053))))))

(declare-fun b!5182515 () Bool)

(assert (=> b!5182515 (= e!3228919 lt!2136052)))

(assert (= (and d!1675863 c!893275) b!5182514))

(assert (= (and d!1675863 (not c!893275)) b!5182515))

(declare-fun m!6242690 () Bool)

(assert (=> b!5182514 m!6242690))

(assert (=> b!5182514 m!6242690))

(declare-fun m!6242692 () Bool)

(assert (=> b!5182514 m!6242692))

(assert (=> b!5182462 d!1675863))

(declare-fun d!1675865 () Bool)

(declare-fun c!893276 () Bool)

(assert (=> d!1675865 (= c!893276 (is-Cons!60204 (++!13178 input!5952 lt!2136053)))))

(declare-fun e!3228920 () (Set Context!8116))

(assert (=> d!1675865 (= (derivationZipper!297 baseZ!87 (++!13178 input!5952 lt!2136053)) e!3228920)))

(declare-fun b!5182516 () Bool)

(assert (=> b!5182516 (= e!3228920 (derivationZipper!297 (derivationStepZipper!1020 baseZ!87 (h!66652 (++!13178 input!5952 lt!2136053))) (t!373481 (++!13178 input!5952 lt!2136053))))))

(declare-fun b!5182517 () Bool)

(assert (=> b!5182517 (= e!3228920 baseZ!87)))

(assert (= (and d!1675865 c!893276) b!5182516))

(assert (= (and d!1675865 (not c!893276)) b!5182517))

(declare-fun m!6242694 () Bool)

(assert (=> b!5182516 m!6242694))

(assert (=> b!5182516 m!6242694))

(declare-fun m!6242696 () Bool)

(assert (=> b!5182516 m!6242696))

(assert (=> b!5182462 d!1675865))

(declare-fun d!1675867 () Bool)

(assert (=> d!1675867 (= (derivationZipper!297 lt!2136052 (++!13178 (t!373481 input!5952) (Cons!60204 c!11077 Nil!60204))) (derivationStepZipper!1020 z!4835 c!11077))))

(declare-fun lt!2136073 () Unit!152190)

(declare-fun choose!38519 ((Set Context!8116) (Set Context!8116) List!60328 C!29618) Unit!152190)

(assert (=> d!1675867 (= lt!2136073 (choose!38519 lt!2136052 z!4835 (t!373481 input!5952) c!11077))))

(assert (=> d!1675867 (= (derivationZipper!297 lt!2136052 (t!373481 input!5952)) z!4835)))

(assert (=> d!1675867 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!118 lt!2136052 z!4835 (t!373481 input!5952) c!11077) lt!2136073)))

(declare-fun bs!1208037 () Bool)

(assert (= bs!1208037 d!1675867))

(assert (=> bs!1208037 m!6242630))

(declare-fun m!6242698 () Bool)

(assert (=> bs!1208037 m!6242698))

(declare-fun m!6242700 () Bool)

(assert (=> bs!1208037 m!6242700))

(assert (=> bs!1208037 m!6242700))

(declare-fun m!6242702 () Bool)

(assert (=> bs!1208037 m!6242702))

(assert (=> bs!1208037 m!6242614))

(assert (=> b!5182462 d!1675867))

(declare-fun d!1675869 () Bool)

(declare-fun c!893278 () Bool)

(assert (=> d!1675869 (= c!893278 (is-Cons!60204 input!5952))))

(declare-fun e!3228921 () (Set Context!8116))

(assert (=> d!1675869 (= (derivationZipper!297 baseZ!87 input!5952) e!3228921)))

(declare-fun b!5182518 () Bool)

(assert (=> b!5182518 (= e!3228921 (derivationZipper!297 (derivationStepZipper!1020 baseZ!87 (h!66652 input!5952)) (t!373481 input!5952)))))

(declare-fun b!5182519 () Bool)

(assert (=> b!5182519 (= e!3228921 baseZ!87)))

(assert (= (and d!1675869 c!893278) b!5182518))

(assert (= (and d!1675869 (not c!893278)) b!5182519))

(assert (=> b!5182518 m!6242616))

(assert (=> b!5182518 m!6242616))

(declare-fun m!6242704 () Bool)

(assert (=> b!5182518 m!6242704))

(assert (=> start!548862 d!1675869))

(declare-fun d!1675871 () Bool)

(declare-fun lambda!259104 () Int)

(declare-fun forall!14187 (List!60327 Int) Bool)

(assert (=> d!1675871 (= (inv!79933 setElem!32527) (forall!14187 (exprs!4558 setElem!32527) lambda!259104))))

(declare-fun bs!1208038 () Bool)

(assert (= bs!1208038 d!1675871))

(declare-fun m!6242706 () Bool)

(assert (=> bs!1208038 m!6242706))

(assert (=> setNonEmpty!32527 d!1675871))

(declare-fun bs!1208039 () Bool)

(declare-fun d!1675873 () Bool)

(assert (= bs!1208039 (and d!1675873 d!1675871)))

(declare-fun lambda!259105 () Int)

(assert (=> bs!1208039 (= lambda!259105 lambda!259104)))

(assert (=> d!1675873 (= (inv!79933 setElem!32528) (forall!14187 (exprs!4558 setElem!32528) lambda!259105))))

(declare-fun bs!1208040 () Bool)

(assert (= bs!1208040 d!1675873))

(declare-fun m!6242708 () Bool)

(assert (=> bs!1208040 m!6242708))

(assert (=> setNonEmpty!32528 d!1675873))

(declare-fun b!5182524 () Bool)

(declare-fun e!3228924 () Bool)

(declare-fun tp!1453568 () Bool)

(declare-fun tp!1453569 () Bool)

(assert (=> b!5182524 (= e!3228924 (and tp!1453568 tp!1453569))))

(assert (=> b!5182464 (= tp!1453547 e!3228924)))

(assert (= (and b!5182464 (is-Cons!60203 (exprs!4558 setElem!32528))) b!5182524))

(declare-fun b!5182525 () Bool)

(declare-fun e!3228925 () Bool)

(declare-fun tp!1453570 () Bool)

(declare-fun tp!1453571 () Bool)

(assert (=> b!5182525 (= e!3228925 (and tp!1453570 tp!1453571))))

(assert (=> b!5182465 (= tp!1453544 e!3228925)))

(assert (= (and b!5182465 (is-Cons!60203 (exprs!4558 setElem!32527))) b!5182525))

(declare-fun condSetEmpty!32537 () Bool)

(assert (=> setNonEmpty!32527 (= condSetEmpty!32537 (= setRest!32527 (as set.empty (Set Context!8116))))))

(declare-fun setRes!32537 () Bool)

(assert (=> setNonEmpty!32527 (= tp!1453548 setRes!32537)))

(declare-fun setIsEmpty!32537 () Bool)

(assert (=> setIsEmpty!32537 setRes!32537))

(declare-fun setNonEmpty!32537 () Bool)

(declare-fun tp!1453577 () Bool)

(declare-fun setElem!32537 () Context!8116)

(declare-fun e!3228928 () Bool)

(assert (=> setNonEmpty!32537 (= setRes!32537 (and tp!1453577 (inv!79933 setElem!32537) e!3228928))))

(declare-fun setRest!32537 () (Set Context!8116))

(assert (=> setNonEmpty!32537 (= setRest!32527 (set.union (set.insert setElem!32537 (as set.empty (Set Context!8116))) setRest!32537))))

(declare-fun b!5182530 () Bool)

(declare-fun tp!1453576 () Bool)

(assert (=> b!5182530 (= e!3228928 tp!1453576)))

(assert (= (and setNonEmpty!32527 condSetEmpty!32537) setIsEmpty!32537))

(assert (= (and setNonEmpty!32527 (not condSetEmpty!32537)) setNonEmpty!32537))

(assert (= setNonEmpty!32537 b!5182530))

(declare-fun m!6242710 () Bool)

(assert (=> setNonEmpty!32537 m!6242710))

(declare-fun condSetEmpty!32538 () Bool)

(assert (=> setNonEmpty!32528 (= condSetEmpty!32538 (= setRest!32528 (as set.empty (Set Context!8116))))))

(declare-fun setRes!32538 () Bool)

(assert (=> setNonEmpty!32528 (= tp!1453545 setRes!32538)))

(declare-fun setIsEmpty!32538 () Bool)

(assert (=> setIsEmpty!32538 setRes!32538))

(declare-fun e!3228929 () Bool)

(declare-fun setElem!32538 () Context!8116)

(declare-fun setNonEmpty!32538 () Bool)

(declare-fun tp!1453579 () Bool)

(assert (=> setNonEmpty!32538 (= setRes!32538 (and tp!1453579 (inv!79933 setElem!32538) e!3228929))))

(declare-fun setRest!32538 () (Set Context!8116))

(assert (=> setNonEmpty!32538 (= setRest!32528 (set.union (set.insert setElem!32538 (as set.empty (Set Context!8116))) setRest!32538))))

(declare-fun b!5182531 () Bool)

(declare-fun tp!1453578 () Bool)

(assert (=> b!5182531 (= e!3228929 tp!1453578)))

(assert (= (and setNonEmpty!32528 condSetEmpty!32538) setIsEmpty!32538))

(assert (= (and setNonEmpty!32528 (not condSetEmpty!32538)) setNonEmpty!32538))

(assert (= setNonEmpty!32538 b!5182531))

(declare-fun m!6242712 () Bool)

(assert (=> setNonEmpty!32538 m!6242712))

(declare-fun b!5182536 () Bool)

(declare-fun e!3228932 () Bool)

(declare-fun tp!1453582 () Bool)

(assert (=> b!5182536 (= e!3228932 (and tp_is_empty!38601 tp!1453582))))

(assert (=> b!5182460 (= tp!1453546 e!3228932)))

(assert (= (and b!5182460 (is-Cons!60204 (t!373481 input!5952))) b!5182536))

(push 1)

(assert (not d!1675853))

(assert tp_is_empty!38601)

(assert (not b!5182525))

(assert (not setNonEmpty!32537))

(assert (not b!5182531))

(assert (not b!5182530))

(assert (not b!5182507))

(assert (not b!5182488))

(assert (not b!5182508))

(assert (not d!1675867))

(assert (not b!5182511))

(assert (not b!5182518))

(assert (not b!5182524))

(assert (not d!1675857))

(assert (not b!5182514))

(assert (not d!1675859))

(assert (not b!5182512))

(assert (not b!5182536))

(assert (not setNonEmpty!32538))

(assert (not d!1675873))

(assert (not d!1675871))

(assert (not d!1675861))

(assert (not b!5182516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

