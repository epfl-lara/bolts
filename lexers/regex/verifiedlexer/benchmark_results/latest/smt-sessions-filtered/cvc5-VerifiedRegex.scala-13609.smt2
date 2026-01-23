; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731166 () Bool)

(assert start!731166)

(declare-fun b!7571524 () Bool)

(declare-fun res!3033056 () Bool)

(declare-fun e!4507509 () Bool)

(assert (=> b!7571524 (=> (not res!3033056) (not e!4507509))))

(declare-datatypes ((C!40350 0))(
  ( (C!40351 (val!30615 Int)) )
))
(declare-datatypes ((List!72895 0))(
  ( (Nil!72771) (Cons!72771 (h!79219 C!40350) (t!387630 List!72895)) )
))
(declare-fun testedP!418 () List!72895)

(declare-fun input!7855 () List!72895)

(declare-fun isPrefix!6218 (List!72895 List!72895) Bool)

(assert (=> b!7571524 (= res!3033056 (isPrefix!6218 testedP!418 input!7855))))

(declare-fun res!3033055 () Bool)

(assert (=> start!731166 (=> (not res!3033055) (not e!4507509))))

(declare-datatypes ((Regex!20012 0))(
  ( (ElementMatch!20012 (c!1396923 C!40350)) (Concat!28857 (regOne!40536 Regex!20012) (regTwo!40536 Regex!20012)) (EmptyExpr!20012) (Star!20012 (reg!20341 Regex!20012)) (EmptyLang!20012) (Union!20012 (regOne!40537 Regex!20012) (regTwo!40537 Regex!20012)) )
))
(declare-fun baseR!100 () Regex!20012)

(declare-fun validRegex!10440 (Regex!20012) Bool)

(assert (=> start!731166 (= res!3033055 (validRegex!10440 baseR!100))))

(assert (=> start!731166 e!4507509))

(declare-fun e!4507506 () Bool)

(assert (=> start!731166 e!4507506))

(declare-fun e!4507508 () Bool)

(assert (=> start!731166 e!4507508))

(declare-fun e!4507504 () Bool)

(assert (=> start!731166 e!4507504))

(declare-fun e!4507510 () Bool)

(assert (=> start!731166 e!4507510))

(declare-fun b!7571525 () Bool)

(declare-fun tp_is_empty!50379 () Bool)

(assert (=> b!7571525 (= e!4507506 tp_is_empty!50379)))

(declare-fun b!7571526 () Bool)

(declare-fun tp!2206184 () Bool)

(assert (=> b!7571526 (= e!4507508 tp!2206184)))

(declare-fun b!7571527 () Bool)

(declare-fun res!3033052 () Bool)

(declare-fun e!4507505 () Bool)

(assert (=> b!7571527 (=> res!3033052 e!4507505)))

(declare-fun r!24129 () Regex!20012)

(declare-fun lostCause!1788 (Regex!20012) Bool)

(assert (=> b!7571527 (= res!3033052 (lostCause!1788 r!24129))))

(declare-fun b!7571528 () Bool)

(declare-fun res!3033058 () Bool)

(assert (=> b!7571528 (=> res!3033058 e!4507505)))

(declare-fun nullable!8736 (Regex!20012) Bool)

(assert (=> b!7571528 (= res!3033058 (not (nullable!8736 r!24129)))))

(declare-fun b!7571529 () Bool)

(declare-fun tp!2206185 () Bool)

(declare-fun tp!2206178 () Bool)

(assert (=> b!7571529 (= e!4507506 (and tp!2206185 tp!2206178))))

(declare-fun b!7571530 () Bool)

(declare-fun tp!2206181 () Bool)

(declare-fun tp!2206183 () Bool)

(assert (=> b!7571530 (= e!4507506 (and tp!2206181 tp!2206183))))

(declare-fun b!7571531 () Bool)

(declare-fun res!3033057 () Bool)

(assert (=> b!7571531 (=> (not res!3033057) (not e!4507509))))

(declare-fun matchR!9612 (Regex!20012 List!72895) Bool)

(assert (=> b!7571531 (= res!3033057 (matchR!9612 baseR!100 testedP!418))))

(declare-fun b!7571532 () Bool)

(declare-fun res!3033054 () Bool)

(assert (=> b!7571532 (=> (not res!3033054) (not e!4507509))))

(assert (=> b!7571532 (= res!3033054 (validRegex!10440 r!24129))))

(declare-fun b!7571533 () Bool)

(declare-fun e!4507507 () Bool)

(assert (=> b!7571533 (= e!4507507 (not e!4507505))))

(declare-fun res!3033053 () Bool)

(assert (=> b!7571533 (=> res!3033053 e!4507505)))

(assert (=> b!7571533 (= res!3033053 (not (matchR!9612 r!24129 Nil!72771)))))

(declare-fun lt!2651227 () Regex!20012)

(assert (=> b!7571533 (matchR!9612 lt!2651227 Nil!72771)))

(declare-datatypes ((Unit!166976 0))(
  ( (Unit!166977) )
))
(declare-fun lt!2651226 () Unit!166976)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!281 (Regex!20012 List!72895) Unit!166976)

(assert (=> b!7571533 (= lt!2651226 (lemmaMatchRIsSameAsWholeDerivativeAndNil!281 baseR!100 testedP!418))))

(declare-fun b!7571534 () Bool)

(assert (=> b!7571534 (= e!4507508 tp_is_empty!50379)))

(declare-fun b!7571535 () Bool)

(declare-fun tp!2206179 () Bool)

(assert (=> b!7571535 (= e!4507504 (and tp_is_empty!50379 tp!2206179))))

(declare-fun b!7571536 () Bool)

(assert (=> b!7571536 (= e!4507509 e!4507507)))

(declare-fun res!3033051 () Bool)

(assert (=> b!7571536 (=> (not res!3033051) (not e!4507507))))

(assert (=> b!7571536 (= res!3033051 (= lt!2651227 r!24129))))

(declare-fun derivative!538 (Regex!20012 List!72895) Regex!20012)

(assert (=> b!7571536 (= lt!2651227 (derivative!538 baseR!100 testedP!418))))

(declare-fun b!7571537 () Bool)

(declare-fun tp!2206176 () Bool)

(assert (=> b!7571537 (= e!4507506 tp!2206176)))

(declare-fun b!7571538 () Bool)

(declare-fun tp!2206177 () Bool)

(declare-fun tp!2206175 () Bool)

(assert (=> b!7571538 (= e!4507508 (and tp!2206177 tp!2206175))))

(declare-fun b!7571539 () Bool)

(declare-fun tp!2206180 () Bool)

(assert (=> b!7571539 (= e!4507510 (and tp_is_empty!50379 tp!2206180))))

(declare-fun b!7571540 () Bool)

(declare-fun tp!2206174 () Bool)

(declare-fun tp!2206182 () Bool)

(assert (=> b!7571540 (= e!4507508 (and tp!2206174 tp!2206182))))

(declare-fun b!7571541 () Bool)

(declare-fun lt!2651225 () Int)

(declare-fun size!42494 (List!72895) Int)

(declare-datatypes ((tuple2!68866 0))(
  ( (tuple2!68867 (_1!37736 List!72895) (_2!37736 List!72895)) )
))
(declare-fun findLongestMatchInner!2141 (Regex!20012 List!72895 Int List!72895 List!72895 Int) tuple2!68866)

(declare-fun getSuffix!3676 (List!72895 List!72895) List!72895)

(assert (=> b!7571541 (= e!4507505 (>= (size!42494 (_1!37736 (findLongestMatchInner!2141 r!24129 testedP!418 lt!2651225 (getSuffix!3676 input!7855 testedP!418) input!7855 (size!42494 input!7855)))) lt!2651225))))

(assert (=> b!7571541 (= lt!2651225 (size!42494 testedP!418))))

(assert (= (and start!731166 res!3033055) b!7571532))

(assert (= (and b!7571532 res!3033054) b!7571524))

(assert (= (and b!7571524 res!3033056) b!7571531))

(assert (= (and b!7571531 res!3033057) b!7571536))

(assert (= (and b!7571536 res!3033051) b!7571533))

(assert (= (and b!7571533 (not res!3033053)) b!7571528))

(assert (= (and b!7571528 (not res!3033058)) b!7571527))

(assert (= (and b!7571527 (not res!3033052)) b!7571541))

(assert (= (and start!731166 (is-ElementMatch!20012 baseR!100)) b!7571525))

(assert (= (and start!731166 (is-Concat!28857 baseR!100)) b!7571530))

(assert (= (and start!731166 (is-Star!20012 baseR!100)) b!7571537))

(assert (= (and start!731166 (is-Union!20012 baseR!100)) b!7571529))

(assert (= (and start!731166 (is-ElementMatch!20012 r!24129)) b!7571534))

(assert (= (and start!731166 (is-Concat!28857 r!24129)) b!7571540))

(assert (= (and start!731166 (is-Star!20012 r!24129)) b!7571526))

(assert (= (and start!731166 (is-Union!20012 r!24129)) b!7571538))

(assert (= (and start!731166 (is-Cons!72771 testedP!418)) b!7571535))

(assert (= (and start!731166 (is-Cons!72771 input!7855)) b!7571539))

(declare-fun m!8132042 () Bool)

(assert (=> b!7571531 m!8132042))

(declare-fun m!8132044 () Bool)

(assert (=> b!7571528 m!8132044))

(declare-fun m!8132046 () Bool)

(assert (=> b!7571533 m!8132046))

(declare-fun m!8132048 () Bool)

(assert (=> b!7571533 m!8132048))

(declare-fun m!8132050 () Bool)

(assert (=> b!7571533 m!8132050))

(declare-fun m!8132052 () Bool)

(assert (=> start!731166 m!8132052))

(declare-fun m!8132054 () Bool)

(assert (=> b!7571527 m!8132054))

(declare-fun m!8132056 () Bool)

(assert (=> b!7571536 m!8132056))

(declare-fun m!8132058 () Bool)

(assert (=> b!7571524 m!8132058))

(declare-fun m!8132060 () Bool)

(assert (=> b!7571541 m!8132060))

(declare-fun m!8132062 () Bool)

(assert (=> b!7571541 m!8132062))

(declare-fun m!8132064 () Bool)

(assert (=> b!7571541 m!8132064))

(assert (=> b!7571541 m!8132062))

(declare-fun m!8132066 () Bool)

(assert (=> b!7571541 m!8132066))

(assert (=> b!7571541 m!8132060))

(declare-fun m!8132068 () Bool)

(assert (=> b!7571541 m!8132068))

(declare-fun m!8132070 () Bool)

(assert (=> b!7571532 m!8132070))

(push 1)

(assert (not b!7571536))

(assert (not b!7571526))

(assert (not b!7571533))

(assert (not b!7571524))

(assert tp_is_empty!50379)

(assert (not b!7571540))

(assert (not b!7571535))

(assert (not b!7571531))

(assert (not b!7571532))

(assert (not b!7571529))

(assert (not start!731166))

(assert (not b!7571530))

(assert (not b!7571527))

(assert (not b!7571528))

(assert (not b!7571537))

(assert (not b!7571539))

(assert (not b!7571541))

(assert (not b!7571538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7571666 () Bool)

(declare-fun e!4507572 () Bool)

(declare-fun e!4507571 () Bool)

(assert (=> b!7571666 (= e!4507572 e!4507571)))

(declare-fun res!3033127 () Bool)

(assert (=> b!7571666 (=> (not res!3033127) (not e!4507571))))

(declare-fun lt!2651242 () Bool)

(assert (=> b!7571666 (= res!3033127 (not lt!2651242))))

(declare-fun b!7571667 () Bool)

(declare-fun e!4507568 () Bool)

(declare-fun head!15570 (List!72895) C!40350)

(assert (=> b!7571667 (= e!4507568 (= (head!15570 Nil!72771) (c!1396923 r!24129)))))

(declare-fun b!7571668 () Bool)

(declare-fun e!4507570 () Bool)

(assert (=> b!7571668 (= e!4507570 (not lt!2651242))))

(declare-fun b!7571669 () Bool)

(declare-fun res!3033128 () Bool)

(assert (=> b!7571669 (=> (not res!3033128) (not e!4507568))))

(declare-fun call!694126 () Bool)

(assert (=> b!7571669 (= res!3033128 (not call!694126))))

(declare-fun b!7571670 () Bool)

(declare-fun e!4507569 () Bool)

(assert (=> b!7571670 (= e!4507569 (nullable!8736 r!24129))))

(declare-fun b!7571671 () Bool)

(declare-fun derivativeStep!5770 (Regex!20012 C!40350) Regex!20012)

(declare-fun tail!15110 (List!72895) List!72895)

(assert (=> b!7571671 (= e!4507569 (matchR!9612 (derivativeStep!5770 r!24129 (head!15570 Nil!72771)) (tail!15110 Nil!72771)))))

(declare-fun b!7571672 () Bool)

(declare-fun res!3033130 () Bool)

(declare-fun e!4507567 () Bool)

(assert (=> b!7571672 (=> res!3033130 e!4507567)))

(declare-fun isEmpty!41432 (List!72895) Bool)

(assert (=> b!7571672 (= res!3033130 (not (isEmpty!41432 (tail!15110 Nil!72771))))))

(declare-fun b!7571673 () Bool)

(declare-fun res!3033126 () Bool)

(assert (=> b!7571673 (=> res!3033126 e!4507572)))

(assert (=> b!7571673 (= res!3033126 e!4507568)))

(declare-fun res!3033124 () Bool)

(assert (=> b!7571673 (=> (not res!3033124) (not e!4507568))))

(assert (=> b!7571673 (= res!3033124 lt!2651242)))

(declare-fun d!2317548 () Bool)

(declare-fun e!4507573 () Bool)

(assert (=> d!2317548 e!4507573))

(declare-fun c!1396941 () Bool)

(assert (=> d!2317548 (= c!1396941 (is-EmptyExpr!20012 r!24129))))

(assert (=> d!2317548 (= lt!2651242 e!4507569)))

(declare-fun c!1396940 () Bool)

(assert (=> d!2317548 (= c!1396940 (isEmpty!41432 Nil!72771))))

(assert (=> d!2317548 (validRegex!10440 r!24129)))

(assert (=> d!2317548 (= (matchR!9612 r!24129 Nil!72771) lt!2651242)))

(declare-fun bm!694121 () Bool)

(assert (=> bm!694121 (= call!694126 (isEmpty!41432 Nil!72771))))

(declare-fun b!7571674 () Bool)

(declare-fun res!3033129 () Bool)

(assert (=> b!7571674 (=> res!3033129 e!4507572)))

(assert (=> b!7571674 (= res!3033129 (not (is-ElementMatch!20012 r!24129)))))

(assert (=> b!7571674 (= e!4507570 e!4507572)))

(declare-fun b!7571675 () Bool)

(assert (=> b!7571675 (= e!4507573 (= lt!2651242 call!694126))))

(declare-fun b!7571676 () Bool)

(assert (=> b!7571676 (= e!4507571 e!4507567)))

(declare-fun res!3033123 () Bool)

(assert (=> b!7571676 (=> res!3033123 e!4507567)))

(assert (=> b!7571676 (= res!3033123 call!694126)))

(declare-fun b!7571677 () Bool)

(assert (=> b!7571677 (= e!4507567 (not (= (head!15570 Nil!72771) (c!1396923 r!24129))))))

(declare-fun b!7571678 () Bool)

(declare-fun res!3033125 () Bool)

(assert (=> b!7571678 (=> (not res!3033125) (not e!4507568))))

(assert (=> b!7571678 (= res!3033125 (isEmpty!41432 (tail!15110 Nil!72771)))))

(declare-fun b!7571679 () Bool)

(assert (=> b!7571679 (= e!4507573 e!4507570)))

(declare-fun c!1396942 () Bool)

(assert (=> b!7571679 (= c!1396942 (is-EmptyLang!20012 r!24129))))

(assert (= (and d!2317548 c!1396940) b!7571670))

(assert (= (and d!2317548 (not c!1396940)) b!7571671))

(assert (= (and d!2317548 c!1396941) b!7571675))

(assert (= (and d!2317548 (not c!1396941)) b!7571679))

(assert (= (and b!7571679 c!1396942) b!7571668))

(assert (= (and b!7571679 (not c!1396942)) b!7571674))

(assert (= (and b!7571674 (not res!3033129)) b!7571673))

(assert (= (and b!7571673 res!3033124) b!7571669))

(assert (= (and b!7571669 res!3033128) b!7571678))

(assert (= (and b!7571678 res!3033125) b!7571667))

(assert (= (and b!7571673 (not res!3033126)) b!7571666))

(assert (= (and b!7571666 res!3033127) b!7571676))

(assert (= (and b!7571676 (not res!3033123)) b!7571672))

(assert (= (and b!7571672 (not res!3033130)) b!7571677))

(assert (= (or b!7571675 b!7571669 b!7571676) bm!694121))

(declare-fun m!8132116 () Bool)

(assert (=> b!7571678 m!8132116))

(assert (=> b!7571678 m!8132116))

(declare-fun m!8132118 () Bool)

(assert (=> b!7571678 m!8132118))

(declare-fun m!8132120 () Bool)

(assert (=> d!2317548 m!8132120))

(assert (=> d!2317548 m!8132070))

(declare-fun m!8132122 () Bool)

(assert (=> b!7571667 m!8132122))

(assert (=> b!7571670 m!8132044))

(assert (=> b!7571677 m!8132122))

(assert (=> b!7571672 m!8132116))

(assert (=> b!7571672 m!8132116))

(assert (=> b!7571672 m!8132118))

(assert (=> bm!694121 m!8132120))

(assert (=> b!7571671 m!8132122))

(assert (=> b!7571671 m!8132122))

(declare-fun m!8132124 () Bool)

(assert (=> b!7571671 m!8132124))

(assert (=> b!7571671 m!8132116))

(assert (=> b!7571671 m!8132124))

(assert (=> b!7571671 m!8132116))

(declare-fun m!8132126 () Bool)

(assert (=> b!7571671 m!8132126))

(assert (=> b!7571533 d!2317548))

(declare-fun b!7571684 () Bool)

(declare-fun e!4507581 () Bool)

(declare-fun e!4507580 () Bool)

(assert (=> b!7571684 (= e!4507581 e!4507580)))

(declare-fun res!3033135 () Bool)

(assert (=> b!7571684 (=> (not res!3033135) (not e!4507580))))

(declare-fun lt!2651245 () Bool)

(assert (=> b!7571684 (= res!3033135 (not lt!2651245))))

(declare-fun b!7571685 () Bool)

(declare-fun e!4507577 () Bool)

(assert (=> b!7571685 (= e!4507577 (= (head!15570 Nil!72771) (c!1396923 lt!2651227)))))

(declare-fun b!7571686 () Bool)

(declare-fun e!4507579 () Bool)

(assert (=> b!7571686 (= e!4507579 (not lt!2651245))))

(declare-fun b!7571687 () Bool)

(declare-fun res!3033136 () Bool)

(assert (=> b!7571687 (=> (not res!3033136) (not e!4507577))))

(declare-fun call!694127 () Bool)

(assert (=> b!7571687 (= res!3033136 (not call!694127))))

(declare-fun b!7571688 () Bool)

(declare-fun e!4507578 () Bool)

(assert (=> b!7571688 (= e!4507578 (nullable!8736 lt!2651227))))

(declare-fun b!7571689 () Bool)

(assert (=> b!7571689 (= e!4507578 (matchR!9612 (derivativeStep!5770 lt!2651227 (head!15570 Nil!72771)) (tail!15110 Nil!72771)))))

(declare-fun b!7571690 () Bool)

(declare-fun res!3033138 () Bool)

(declare-fun e!4507576 () Bool)

(assert (=> b!7571690 (=> res!3033138 e!4507576)))

(assert (=> b!7571690 (= res!3033138 (not (isEmpty!41432 (tail!15110 Nil!72771))))))

(declare-fun b!7571691 () Bool)

(declare-fun res!3033134 () Bool)

(assert (=> b!7571691 (=> res!3033134 e!4507581)))

(assert (=> b!7571691 (= res!3033134 e!4507577)))

(declare-fun res!3033132 () Bool)

(assert (=> b!7571691 (=> (not res!3033132) (not e!4507577))))

(assert (=> b!7571691 (= res!3033132 lt!2651245)))

(declare-fun d!2317552 () Bool)

(declare-fun e!4507582 () Bool)

(assert (=> d!2317552 e!4507582))

(declare-fun c!1396946 () Bool)

(assert (=> d!2317552 (= c!1396946 (is-EmptyExpr!20012 lt!2651227))))

(assert (=> d!2317552 (= lt!2651245 e!4507578)))

(declare-fun c!1396945 () Bool)

(assert (=> d!2317552 (= c!1396945 (isEmpty!41432 Nil!72771))))

(assert (=> d!2317552 (validRegex!10440 lt!2651227)))

(assert (=> d!2317552 (= (matchR!9612 lt!2651227 Nil!72771) lt!2651245)))

(declare-fun bm!694122 () Bool)

(assert (=> bm!694122 (= call!694127 (isEmpty!41432 Nil!72771))))

(declare-fun b!7571692 () Bool)

(declare-fun res!3033137 () Bool)

(assert (=> b!7571692 (=> res!3033137 e!4507581)))

(assert (=> b!7571692 (= res!3033137 (not (is-ElementMatch!20012 lt!2651227)))))

(assert (=> b!7571692 (= e!4507579 e!4507581)))

(declare-fun b!7571693 () Bool)

(assert (=> b!7571693 (= e!4507582 (= lt!2651245 call!694127))))

(declare-fun b!7571694 () Bool)

(assert (=> b!7571694 (= e!4507580 e!4507576)))

(declare-fun res!3033131 () Bool)

(assert (=> b!7571694 (=> res!3033131 e!4507576)))

(assert (=> b!7571694 (= res!3033131 call!694127)))

(declare-fun b!7571695 () Bool)

(assert (=> b!7571695 (= e!4507576 (not (= (head!15570 Nil!72771) (c!1396923 lt!2651227))))))

(declare-fun b!7571696 () Bool)

(declare-fun res!3033133 () Bool)

(assert (=> b!7571696 (=> (not res!3033133) (not e!4507577))))

(assert (=> b!7571696 (= res!3033133 (isEmpty!41432 (tail!15110 Nil!72771)))))

(declare-fun b!7571697 () Bool)

(assert (=> b!7571697 (= e!4507582 e!4507579)))

(declare-fun c!1396947 () Bool)

(assert (=> b!7571697 (= c!1396947 (is-EmptyLang!20012 lt!2651227))))

(assert (= (and d!2317552 c!1396945) b!7571688))

(assert (= (and d!2317552 (not c!1396945)) b!7571689))

(assert (= (and d!2317552 c!1396946) b!7571693))

(assert (= (and d!2317552 (not c!1396946)) b!7571697))

(assert (= (and b!7571697 c!1396947) b!7571686))

(assert (= (and b!7571697 (not c!1396947)) b!7571692))

(assert (= (and b!7571692 (not res!3033137)) b!7571691))

(assert (= (and b!7571691 res!3033132) b!7571687))

(assert (= (and b!7571687 res!3033136) b!7571696))

(assert (= (and b!7571696 res!3033133) b!7571685))

(assert (= (and b!7571691 (not res!3033134)) b!7571684))

(assert (= (and b!7571684 res!3033135) b!7571694))

(assert (= (and b!7571694 (not res!3033131)) b!7571690))

(assert (= (and b!7571690 (not res!3033138)) b!7571695))

(assert (= (or b!7571693 b!7571687 b!7571694) bm!694122))

(assert (=> b!7571696 m!8132116))

(assert (=> b!7571696 m!8132116))

(assert (=> b!7571696 m!8132118))

(assert (=> d!2317552 m!8132120))

(declare-fun m!8132134 () Bool)

(assert (=> d!2317552 m!8132134))

(assert (=> b!7571685 m!8132122))

(declare-fun m!8132136 () Bool)

(assert (=> b!7571688 m!8132136))

(assert (=> b!7571695 m!8132122))

(assert (=> b!7571690 m!8132116))

(assert (=> b!7571690 m!8132116))

(assert (=> b!7571690 m!8132118))

(assert (=> bm!694122 m!8132120))

(assert (=> b!7571689 m!8132122))

(assert (=> b!7571689 m!8132122))

(declare-fun m!8132138 () Bool)

(assert (=> b!7571689 m!8132138))

(assert (=> b!7571689 m!8132116))

(assert (=> b!7571689 m!8132138))

(assert (=> b!7571689 m!8132116))

(declare-fun m!8132140 () Bool)

(assert (=> b!7571689 m!8132140))

(assert (=> b!7571533 d!2317552))

(declare-fun d!2317556 () Bool)

(assert (=> d!2317556 (= (matchR!9612 baseR!100 testedP!418) (matchR!9612 (derivative!538 baseR!100 testedP!418) Nil!72771))))

(declare-fun lt!2651249 () Unit!166976)

(declare-fun choose!58540 (Regex!20012 List!72895) Unit!166976)

(assert (=> d!2317556 (= lt!2651249 (choose!58540 baseR!100 testedP!418))))

(assert (=> d!2317556 (validRegex!10440 baseR!100)))

(assert (=> d!2317556 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!281 baseR!100 testedP!418) lt!2651249)))

(declare-fun bs!1940599 () Bool)

(assert (= bs!1940599 d!2317556))

(assert (=> bs!1940599 m!8132056))

(declare-fun m!8132142 () Bool)

(assert (=> bs!1940599 m!8132142))

(assert (=> bs!1940599 m!8132042))

(assert (=> bs!1940599 m!8132052))

(declare-fun m!8132144 () Bool)

(assert (=> bs!1940599 m!8132144))

(assert (=> bs!1940599 m!8132056))

(assert (=> b!7571533 d!2317556))

(declare-fun c!1396960 () Bool)

(declare-fun call!694144 () Bool)

(declare-fun c!1396959 () Bool)

(declare-fun bm!694138 () Bool)

(assert (=> bm!694138 (= call!694144 (validRegex!10440 (ite c!1396960 (reg!20341 r!24129) (ite c!1396959 (regTwo!40537 r!24129) (regOne!40536 r!24129)))))))

(declare-fun b!7571753 () Bool)

(declare-fun res!3033175 () Bool)

(declare-fun e!4507627 () Bool)

(assert (=> b!7571753 (=> res!3033175 e!4507627)))

(assert (=> b!7571753 (= res!3033175 (not (is-Concat!28857 r!24129)))))

(declare-fun e!4507625 () Bool)

(assert (=> b!7571753 (= e!4507625 e!4507627)))

(declare-fun b!7571754 () Bool)

(declare-fun e!4507630 () Bool)

(declare-fun e!4507626 () Bool)

(assert (=> b!7571754 (= e!4507630 e!4507626)))

(assert (=> b!7571754 (= c!1396960 (is-Star!20012 r!24129))))

(declare-fun b!7571755 () Bool)

(declare-fun e!4507629 () Bool)

(declare-fun call!694143 () Bool)

(assert (=> b!7571755 (= e!4507629 call!694143)))

(declare-fun bm!694139 () Bool)

(declare-fun call!694145 () Bool)

(assert (=> bm!694139 (= call!694145 call!694144)))

(declare-fun b!7571757 () Bool)

(declare-fun res!3033176 () Bool)

(declare-fun e!4507631 () Bool)

(assert (=> b!7571757 (=> (not res!3033176) (not e!4507631))))

(assert (=> b!7571757 (= res!3033176 call!694143)))

(assert (=> b!7571757 (= e!4507625 e!4507631)))

(declare-fun b!7571758 () Bool)

(declare-fun e!4507628 () Bool)

(assert (=> b!7571758 (= e!4507628 call!694144)))

(declare-fun d!2317558 () Bool)

(declare-fun res!3033172 () Bool)

(assert (=> d!2317558 (=> res!3033172 e!4507630)))

(assert (=> d!2317558 (= res!3033172 (is-ElementMatch!20012 r!24129))))

(assert (=> d!2317558 (= (validRegex!10440 r!24129) e!4507630)))

(declare-fun b!7571756 () Bool)

(assert (=> b!7571756 (= e!4507626 e!4507625)))

(assert (=> b!7571756 (= c!1396959 (is-Union!20012 r!24129))))

(declare-fun b!7571759 () Bool)

(assert (=> b!7571759 (= e!4507627 e!4507629)))

(declare-fun res!3033174 () Bool)

(assert (=> b!7571759 (=> (not res!3033174) (not e!4507629))))

(assert (=> b!7571759 (= res!3033174 call!694145)))

(declare-fun b!7571760 () Bool)

(assert (=> b!7571760 (= e!4507631 call!694145)))

(declare-fun b!7571761 () Bool)

(assert (=> b!7571761 (= e!4507626 e!4507628)))

(declare-fun res!3033173 () Bool)

(assert (=> b!7571761 (= res!3033173 (not (nullable!8736 (reg!20341 r!24129))))))

(assert (=> b!7571761 (=> (not res!3033173) (not e!4507628))))

(declare-fun bm!694140 () Bool)

(assert (=> bm!694140 (= call!694143 (validRegex!10440 (ite c!1396959 (regOne!40537 r!24129) (regTwo!40536 r!24129))))))

(assert (= (and d!2317558 (not res!3033172)) b!7571754))

(assert (= (and b!7571754 c!1396960) b!7571761))

(assert (= (and b!7571754 (not c!1396960)) b!7571756))

(assert (= (and b!7571761 res!3033173) b!7571758))

(assert (= (and b!7571756 c!1396959) b!7571757))

(assert (= (and b!7571756 (not c!1396959)) b!7571753))

(assert (= (and b!7571757 res!3033176) b!7571760))

(assert (= (and b!7571753 (not res!3033175)) b!7571759))

(assert (= (and b!7571759 res!3033174) b!7571755))

(assert (= (or b!7571760 b!7571759) bm!694139))

(assert (= (or b!7571757 b!7571755) bm!694140))

(assert (= (or b!7571758 bm!694139) bm!694138))

(declare-fun m!8132152 () Bool)

(assert (=> bm!694138 m!8132152))

(declare-fun m!8132154 () Bool)

(assert (=> b!7571761 m!8132154))

(declare-fun m!8132156 () Bool)

(assert (=> bm!694140 m!8132156))

(assert (=> b!7571532 d!2317558))

(declare-fun d!2317562 () Bool)

(declare-fun lostCauseFct!477 (Regex!20012) Bool)

(assert (=> d!2317562 (= (lostCause!1788 r!24129) (lostCauseFct!477 r!24129))))

(declare-fun bs!1940601 () Bool)

(assert (= bs!1940601 d!2317562))

(declare-fun m!8132166 () Bool)

(assert (=> bs!1940601 m!8132166))

(assert (=> b!7571527 d!2317562))

(declare-fun d!2317568 () Bool)

(declare-fun nullableFct!3487 (Regex!20012) Bool)

(assert (=> d!2317568 (= (nullable!8736 r!24129) (nullableFct!3487 r!24129))))

(declare-fun bs!1940602 () Bool)

(assert (= bs!1940602 d!2317568))

(declare-fun m!8132168 () Bool)

(assert (=> bs!1940602 m!8132168))

(assert (=> b!7571528 d!2317568))

(declare-fun c!1396963 () Bool)

(declare-fun c!1396964 () Bool)

(declare-fun bm!694141 () Bool)

(declare-fun call!694147 () Bool)

(assert (=> bm!694141 (= call!694147 (validRegex!10440 (ite c!1396964 (reg!20341 baseR!100) (ite c!1396963 (regTwo!40537 baseR!100) (regOne!40536 baseR!100)))))))

(declare-fun b!7571770 () Bool)

(declare-fun res!3033184 () Bool)

(declare-fun e!4507639 () Bool)

(assert (=> b!7571770 (=> res!3033184 e!4507639)))

(assert (=> b!7571770 (= res!3033184 (not (is-Concat!28857 baseR!100)))))

(declare-fun e!4507637 () Bool)

(assert (=> b!7571770 (= e!4507637 e!4507639)))

(declare-fun b!7571771 () Bool)

(declare-fun e!4507642 () Bool)

(declare-fun e!4507638 () Bool)

(assert (=> b!7571771 (= e!4507642 e!4507638)))

(assert (=> b!7571771 (= c!1396964 (is-Star!20012 baseR!100))))

(declare-fun b!7571772 () Bool)

(declare-fun e!4507641 () Bool)

(declare-fun call!694146 () Bool)

(assert (=> b!7571772 (= e!4507641 call!694146)))

(declare-fun bm!694142 () Bool)

(declare-fun call!694148 () Bool)

(assert (=> bm!694142 (= call!694148 call!694147)))

(declare-fun b!7571774 () Bool)

(declare-fun res!3033185 () Bool)

(declare-fun e!4507643 () Bool)

(assert (=> b!7571774 (=> (not res!3033185) (not e!4507643))))

(assert (=> b!7571774 (= res!3033185 call!694146)))

(assert (=> b!7571774 (= e!4507637 e!4507643)))

(declare-fun b!7571775 () Bool)

(declare-fun e!4507640 () Bool)

(assert (=> b!7571775 (= e!4507640 call!694147)))

(declare-fun d!2317570 () Bool)

(declare-fun res!3033181 () Bool)

(assert (=> d!2317570 (=> res!3033181 e!4507642)))

(assert (=> d!2317570 (= res!3033181 (is-ElementMatch!20012 baseR!100))))

(assert (=> d!2317570 (= (validRegex!10440 baseR!100) e!4507642)))

(declare-fun b!7571773 () Bool)

(assert (=> b!7571773 (= e!4507638 e!4507637)))

(assert (=> b!7571773 (= c!1396963 (is-Union!20012 baseR!100))))

(declare-fun b!7571776 () Bool)

(assert (=> b!7571776 (= e!4507639 e!4507641)))

(declare-fun res!3033183 () Bool)

(assert (=> b!7571776 (=> (not res!3033183) (not e!4507641))))

(assert (=> b!7571776 (= res!3033183 call!694148)))

(declare-fun b!7571777 () Bool)

(assert (=> b!7571777 (= e!4507643 call!694148)))

(declare-fun b!7571778 () Bool)

(assert (=> b!7571778 (= e!4507638 e!4507640)))

(declare-fun res!3033182 () Bool)

(assert (=> b!7571778 (= res!3033182 (not (nullable!8736 (reg!20341 baseR!100))))))

(assert (=> b!7571778 (=> (not res!3033182) (not e!4507640))))

(declare-fun bm!694143 () Bool)

(assert (=> bm!694143 (= call!694146 (validRegex!10440 (ite c!1396963 (regOne!40537 baseR!100) (regTwo!40536 baseR!100))))))

(assert (= (and d!2317570 (not res!3033181)) b!7571771))

(assert (= (and b!7571771 c!1396964) b!7571778))

(assert (= (and b!7571771 (not c!1396964)) b!7571773))

(assert (= (and b!7571778 res!3033182) b!7571775))

(assert (= (and b!7571773 c!1396963) b!7571774))

(assert (= (and b!7571773 (not c!1396963)) b!7571770))

(assert (= (and b!7571774 res!3033185) b!7571777))

(assert (= (and b!7571770 (not res!3033184)) b!7571776))

(assert (= (and b!7571776 res!3033183) b!7571772))

(assert (= (or b!7571777 b!7571776) bm!694142))

(assert (= (or b!7571774 b!7571772) bm!694143))

(assert (= (or b!7571775 bm!694142) bm!694141))

(declare-fun m!8132170 () Bool)

(assert (=> bm!694141 m!8132170))

(declare-fun m!8132172 () Bool)

(assert (=> b!7571778 m!8132172))

(declare-fun m!8132174 () Bool)

(assert (=> bm!694143 m!8132174))

(assert (=> start!731166 d!2317570))

(declare-fun d!2317572 () Bool)

(declare-fun lt!2651258 () Int)

(assert (=> d!2317572 (>= lt!2651258 0)))

(declare-fun e!4507647 () Int)

(assert (=> d!2317572 (= lt!2651258 e!4507647)))

(declare-fun c!1396968 () Bool)

(assert (=> d!2317572 (= c!1396968 (is-Nil!72771 (_1!37736 (findLongestMatchInner!2141 r!24129 testedP!418 lt!2651225 (getSuffix!3676 input!7855 testedP!418) input!7855 (size!42494 input!7855)))))))

(assert (=> d!2317572 (= (size!42494 (_1!37736 (findLongestMatchInner!2141 r!24129 testedP!418 lt!2651225 (getSuffix!3676 input!7855 testedP!418) input!7855 (size!42494 input!7855)))) lt!2651258)))

(declare-fun b!7571785 () Bool)

(assert (=> b!7571785 (= e!4507647 0)))

(declare-fun b!7571786 () Bool)

(assert (=> b!7571786 (= e!4507647 (+ 1 (size!42494 (t!387630 (_1!37736 (findLongestMatchInner!2141 r!24129 testedP!418 lt!2651225 (getSuffix!3676 input!7855 testedP!418) input!7855 (size!42494 input!7855)))))))))

(assert (= (and d!2317572 c!1396968) b!7571785))

(assert (= (and d!2317572 (not c!1396968)) b!7571786))

(declare-fun m!8132178 () Bool)

(assert (=> b!7571786 m!8132178))

(assert (=> b!7571541 d!2317572))

(declare-fun b!7571821 () Bool)

(declare-fun c!1396989 () Bool)

(declare-fun call!694169 () Bool)

(assert (=> b!7571821 (= c!1396989 call!694169)))

(declare-fun lt!2651345 () Unit!166976)

(declare-fun lt!2651329 () Unit!166976)

(assert (=> b!7571821 (= lt!2651345 lt!2651329)))

(declare-fun lt!2651325 () C!40350)

(declare-fun lt!2651330 () List!72895)

(declare-fun ++!17494 (List!72895 List!72895) List!72895)

(assert (=> b!7571821 (= (++!17494 (++!17494 testedP!418 (Cons!72771 lt!2651325 Nil!72771)) lt!2651330) input!7855)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3182 (List!72895 C!40350 List!72895 List!72895) Unit!166976)

(assert (=> b!7571821 (= lt!2651329 (lemmaMoveElementToOtherListKeepsConcatEq!3182 testedP!418 lt!2651325 lt!2651330 input!7855))))

(assert (=> b!7571821 (= lt!2651330 (tail!15110 (getSuffix!3676 input!7855 testedP!418)))))

(assert (=> b!7571821 (= lt!2651325 (head!15570 (getSuffix!3676 input!7855 testedP!418)))))

(declare-fun lt!2651340 () Unit!166976)

(declare-fun lt!2651341 () Unit!166976)

(assert (=> b!7571821 (= lt!2651340 lt!2651341)))

(assert (=> b!7571821 (isPrefix!6218 (++!17494 testedP!418 (Cons!72771 (head!15570 (getSuffix!3676 input!7855 testedP!418)) Nil!72771)) input!7855)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1241 (List!72895 List!72895) Unit!166976)

(assert (=> b!7571821 (= lt!2651341 (lemmaAddHeadSuffixToPrefixStillPrefix!1241 testedP!418 input!7855))))

(declare-fun lt!2651331 () Unit!166976)

(declare-fun lt!2651327 () Unit!166976)

(assert (=> b!7571821 (= lt!2651331 lt!2651327)))

(assert (=> b!7571821 (= lt!2651327 (lemmaAddHeadSuffixToPrefixStillPrefix!1241 testedP!418 input!7855))))

(declare-fun lt!2651332 () List!72895)

(assert (=> b!7571821 (= lt!2651332 (++!17494 testedP!418 (Cons!72771 (head!15570 (getSuffix!3676 input!7855 testedP!418)) Nil!72771)))))

(declare-fun lt!2651342 () Unit!166976)

(declare-fun e!4507668 () Unit!166976)

(assert (=> b!7571821 (= lt!2651342 e!4507668)))

(declare-fun c!1396986 () Bool)

(assert (=> b!7571821 (= c!1396986 (= (size!42494 testedP!418) (size!42494 input!7855)))))

(declare-fun lt!2651322 () Unit!166976)

(declare-fun lt!2651336 () Unit!166976)

(assert (=> b!7571821 (= lt!2651322 lt!2651336)))

(assert (=> b!7571821 (<= (size!42494 testedP!418) (size!42494 input!7855))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1021 (List!72895 List!72895) Unit!166976)

(assert (=> b!7571821 (= lt!2651336 (lemmaIsPrefixThenSmallerEqSize!1021 testedP!418 input!7855))))

(declare-fun e!4507667 () tuple2!68866)

(declare-fun e!4507673 () tuple2!68866)

(assert (=> b!7571821 (= e!4507667 e!4507673)))

(declare-fun bm!694160 () Bool)

(declare-fun call!694168 () C!40350)

(assert (=> bm!694160 (= call!694168 (head!15570 (getSuffix!3676 input!7855 testedP!418)))))

(declare-fun b!7571823 () Bool)

(declare-fun e!4507672 () tuple2!68866)

(assert (=> b!7571823 (= e!4507672 (tuple2!68867 Nil!72771 input!7855))))

(declare-fun bm!694161 () Bool)

(declare-fun call!694170 () Unit!166976)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1538 (List!72895 List!72895 List!72895) Unit!166976)

(assert (=> bm!694161 (= call!694170 (lemmaIsPrefixSameLengthThenSameList!1538 input!7855 testedP!418 input!7855))))

(declare-fun bm!694162 () Bool)

(declare-fun call!694171 () Bool)

(assert (=> bm!694162 (= call!694171 (isPrefix!6218 input!7855 input!7855))))

(declare-fun b!7571824 () Bool)

(declare-fun e!4507674 () tuple2!68866)

(assert (=> b!7571824 (= e!4507674 (tuple2!68867 testedP!418 Nil!72771))))

(declare-fun bm!694163 () Bool)

(declare-fun call!694166 () Unit!166976)

(declare-fun lemmaIsPrefixRefl!3873 (List!72895 List!72895) Unit!166976)

(assert (=> bm!694163 (= call!694166 (lemmaIsPrefixRefl!3873 input!7855 input!7855))))

(declare-fun b!7571825 () Bool)

(declare-fun e!4507670 () Bool)

(declare-fun e!4507669 () Bool)

(assert (=> b!7571825 (= e!4507670 e!4507669)))

(declare-fun res!3033191 () Bool)

(assert (=> b!7571825 (=> res!3033191 e!4507669)))

(declare-fun lt!2651323 () tuple2!68866)

(assert (=> b!7571825 (= res!3033191 (isEmpty!41432 (_1!37736 lt!2651323)))))

(declare-fun bm!694164 () Bool)

(declare-fun call!694172 () List!72895)

(assert (=> bm!694164 (= call!694172 (tail!15110 (getSuffix!3676 input!7855 testedP!418)))))

(declare-fun b!7571826 () Bool)

(declare-fun e!4507671 () tuple2!68866)

(assert (=> b!7571826 (= e!4507671 (tuple2!68867 testedP!418 (getSuffix!3676 input!7855 testedP!418)))))

(declare-fun bm!694165 () Bool)

(declare-fun call!694167 () Regex!20012)

(assert (=> bm!694165 (= call!694167 (derivativeStep!5770 r!24129 call!694168))))

(declare-fun b!7571822 () Bool)

(assert (=> b!7571822 (= e!4507669 (>= (size!42494 (_1!37736 lt!2651323)) (size!42494 testedP!418)))))

(declare-fun d!2317576 () Bool)

(assert (=> d!2317576 e!4507670))

(declare-fun res!3033190 () Bool)

(assert (=> d!2317576 (=> (not res!3033190) (not e!4507670))))

(assert (=> d!2317576 (= res!3033190 (= (++!17494 (_1!37736 lt!2651323) (_2!37736 lt!2651323)) input!7855))))

(assert (=> d!2317576 (= lt!2651323 e!4507672)))

(declare-fun c!1396987 () Bool)

(assert (=> d!2317576 (= c!1396987 (lostCause!1788 r!24129))))

(declare-fun lt!2651338 () Unit!166976)

(declare-fun Unit!166980 () Unit!166976)

(assert (=> d!2317576 (= lt!2651338 Unit!166980)))

(assert (=> d!2317576 (= (getSuffix!3676 input!7855 testedP!418) (getSuffix!3676 input!7855 testedP!418))))

(declare-fun lt!2651321 () Unit!166976)

(declare-fun lt!2651343 () Unit!166976)

(assert (=> d!2317576 (= lt!2651321 lt!2651343)))

(declare-fun lt!2651328 () List!72895)

(assert (=> d!2317576 (= (getSuffix!3676 input!7855 testedP!418) lt!2651328)))

(declare-fun lemmaSamePrefixThenSameSuffix!2892 (List!72895 List!72895 List!72895 List!72895 List!72895) Unit!166976)

(assert (=> d!2317576 (= lt!2651343 (lemmaSamePrefixThenSameSuffix!2892 testedP!418 (getSuffix!3676 input!7855 testedP!418) testedP!418 lt!2651328 input!7855))))

(assert (=> d!2317576 (= lt!2651328 (getSuffix!3676 input!7855 testedP!418))))

(declare-fun lt!2651344 () Unit!166976)

(declare-fun lt!2651320 () Unit!166976)

(assert (=> d!2317576 (= lt!2651344 lt!2651320)))

(assert (=> d!2317576 (isPrefix!6218 testedP!418 (++!17494 testedP!418 (getSuffix!3676 input!7855 testedP!418)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3746 (List!72895 List!72895) Unit!166976)

(assert (=> d!2317576 (= lt!2651320 (lemmaConcatTwoListThenFirstIsPrefix!3746 testedP!418 (getSuffix!3676 input!7855 testedP!418)))))

(assert (=> d!2317576 (validRegex!10440 r!24129)))

(assert (=> d!2317576 (= (findLongestMatchInner!2141 r!24129 testedP!418 lt!2651225 (getSuffix!3676 input!7855 testedP!418) input!7855 (size!42494 input!7855)) lt!2651323)))

(declare-fun b!7571827 () Bool)

(declare-fun Unit!166981 () Unit!166976)

(assert (=> b!7571827 (= e!4507668 Unit!166981)))

(declare-fun call!694165 () tuple2!68866)

(declare-fun bm!694166 () Bool)

(assert (=> bm!694166 (= call!694165 (findLongestMatchInner!2141 call!694167 lt!2651332 (+ lt!2651225 1) call!694172 input!7855 (size!42494 input!7855)))))

(declare-fun b!7571828 () Bool)

(declare-fun lt!2651335 () tuple2!68866)

(assert (=> b!7571828 (= e!4507671 lt!2651335)))

(declare-fun b!7571829 () Bool)

(declare-fun Unit!166982 () Unit!166976)

(assert (=> b!7571829 (= e!4507668 Unit!166982)))

(declare-fun lt!2651326 () Unit!166976)

(assert (=> b!7571829 (= lt!2651326 call!694166)))

(assert (=> b!7571829 call!694171))

(declare-fun lt!2651324 () Unit!166976)

(assert (=> b!7571829 (= lt!2651324 lt!2651326)))

(declare-fun lt!2651318 () Unit!166976)

(assert (=> b!7571829 (= lt!2651318 call!694170)))

(assert (=> b!7571829 (= input!7855 testedP!418)))

(declare-fun lt!2651339 () Unit!166976)

(assert (=> b!7571829 (= lt!2651339 lt!2651318)))

(assert (=> b!7571829 false))

(declare-fun bm!694167 () Bool)

(assert (=> bm!694167 (= call!694169 (nullable!8736 r!24129))))

(declare-fun b!7571830 () Bool)

(assert (=> b!7571830 (= e!4507674 (tuple2!68867 Nil!72771 input!7855))))

(declare-fun b!7571831 () Bool)

(assert (=> b!7571831 (= e!4507673 e!4507671)))

(assert (=> b!7571831 (= lt!2651335 call!694165)))

(declare-fun c!1396988 () Bool)

(assert (=> b!7571831 (= c!1396988 (isEmpty!41432 (_1!37736 lt!2651335)))))

(declare-fun b!7571832 () Bool)

(declare-fun c!1396985 () Bool)

(assert (=> b!7571832 (= c!1396985 call!694169)))

(declare-fun lt!2651337 () Unit!166976)

(declare-fun lt!2651333 () Unit!166976)

(assert (=> b!7571832 (= lt!2651337 lt!2651333)))

(assert (=> b!7571832 (= input!7855 testedP!418)))

(assert (=> b!7571832 (= lt!2651333 call!694170)))

(declare-fun lt!2651319 () Unit!166976)

(declare-fun lt!2651334 () Unit!166976)

(assert (=> b!7571832 (= lt!2651319 lt!2651334)))

(assert (=> b!7571832 call!694171))

(assert (=> b!7571832 (= lt!2651334 call!694166)))

(assert (=> b!7571832 (= e!4507667 e!4507674)))

(declare-fun b!7571833 () Bool)

(assert (=> b!7571833 (= e!4507672 e!4507667)))

(declare-fun c!1396984 () Bool)

(assert (=> b!7571833 (= c!1396984 (= lt!2651225 (size!42494 input!7855)))))

(declare-fun b!7571834 () Bool)

(assert (=> b!7571834 (= e!4507673 call!694165)))

(assert (= (and d!2317576 c!1396987) b!7571823))

(assert (= (and d!2317576 (not c!1396987)) b!7571833))

(assert (= (and b!7571833 c!1396984) b!7571832))

(assert (= (and b!7571833 (not c!1396984)) b!7571821))

(assert (= (and b!7571832 c!1396985) b!7571824))

(assert (= (and b!7571832 (not c!1396985)) b!7571830))

(assert (= (and b!7571821 c!1396986) b!7571829))

(assert (= (and b!7571821 (not c!1396986)) b!7571827))

(assert (= (and b!7571821 c!1396989) b!7571831))

(assert (= (and b!7571821 (not c!1396989)) b!7571834))

(assert (= (and b!7571831 c!1396988) b!7571826))

(assert (= (and b!7571831 (not c!1396988)) b!7571828))

(assert (= (or b!7571831 b!7571834) bm!694160))

(assert (= (or b!7571831 b!7571834) bm!694164))

(assert (= (or b!7571831 b!7571834) bm!694165))

(assert (= (or b!7571831 b!7571834) bm!694166))

(assert (= (or b!7571832 b!7571821) bm!694167))

(assert (= (or b!7571832 b!7571829) bm!694162))

(assert (= (or b!7571832 b!7571829) bm!694161))

(assert (= (or b!7571832 b!7571829) bm!694163))

(assert (= (and d!2317576 res!3033190) b!7571825))

(assert (= (and b!7571825 (not res!3033191)) b!7571822))

(declare-fun m!8132184 () Bool)

(assert (=> bm!694161 m!8132184))

(assert (=> bm!694167 m!8132044))

(declare-fun m!8132186 () Bool)

(assert (=> bm!694163 m!8132186))

(assert (=> bm!694166 m!8132062))

(declare-fun m!8132188 () Bool)

(assert (=> bm!694166 m!8132188))

(declare-fun m!8132190 () Bool)

(assert (=> b!7571831 m!8132190))

(assert (=> bm!694164 m!8132060))

(declare-fun m!8132192 () Bool)

(assert (=> bm!694164 m!8132192))

(declare-fun m!8132194 () Bool)

(assert (=> bm!694162 m!8132194))

(declare-fun m!8132196 () Bool)

(assert (=> b!7571825 m!8132196))

(assert (=> b!7571821 m!8132060))

(declare-fun m!8132198 () Bool)

(assert (=> b!7571821 m!8132198))

(declare-fun m!8132200 () Bool)

(assert (=> b!7571821 m!8132200))

(declare-fun m!8132202 () Bool)

(assert (=> b!7571821 m!8132202))

(declare-fun m!8132204 () Bool)

(assert (=> b!7571821 m!8132204))

(assert (=> b!7571821 m!8132062))

(assert (=> b!7571821 m!8132060))

(declare-fun m!8132206 () Bool)

(assert (=> b!7571821 m!8132206))

(assert (=> b!7571821 m!8132066))

(assert (=> b!7571821 m!8132202))

(assert (=> b!7571821 m!8132200))

(declare-fun m!8132208 () Bool)

(assert (=> b!7571821 m!8132208))

(assert (=> b!7571821 m!8132060))

(assert (=> b!7571821 m!8132206))

(declare-fun m!8132210 () Bool)

(assert (=> b!7571821 m!8132210))

(declare-fun m!8132212 () Bool)

(assert (=> b!7571821 m!8132212))

(assert (=> b!7571821 m!8132200))

(assert (=> b!7571821 m!8132060))

(assert (=> b!7571821 m!8132192))

(declare-fun m!8132214 () Bool)

(assert (=> bm!694165 m!8132214))

(assert (=> d!2317576 m!8132054))

(declare-fun m!8132216 () Bool)

(assert (=> d!2317576 m!8132216))

(declare-fun m!8132218 () Bool)

(assert (=> d!2317576 m!8132218))

(assert (=> d!2317576 m!8132060))

(assert (=> d!2317576 m!8132216))

(declare-fun m!8132220 () Bool)

(assert (=> d!2317576 m!8132220))

(assert (=> d!2317576 m!8132060))

(declare-fun m!8132222 () Bool)

(assert (=> d!2317576 m!8132222))

(assert (=> d!2317576 m!8132060))

(declare-fun m!8132224 () Bool)

(assert (=> d!2317576 m!8132224))

(assert (=> d!2317576 m!8132060))

(assert (=> d!2317576 m!8132070))

(declare-fun m!8132226 () Bool)

(assert (=> b!7571822 m!8132226))

(assert (=> b!7571822 m!8132066))

(assert (=> bm!694160 m!8132060))

(assert (=> bm!694160 m!8132206))

(assert (=> b!7571541 d!2317576))

(declare-fun d!2317580 () Bool)

(declare-fun lt!2651346 () Int)

(assert (=> d!2317580 (>= lt!2651346 0)))

(declare-fun e!4507675 () Int)

(assert (=> d!2317580 (= lt!2651346 e!4507675)))

(declare-fun c!1396990 () Bool)

(assert (=> d!2317580 (= c!1396990 (is-Nil!72771 testedP!418))))

(assert (=> d!2317580 (= (size!42494 testedP!418) lt!2651346)))

(declare-fun b!7571835 () Bool)

(assert (=> b!7571835 (= e!4507675 0)))

(declare-fun b!7571836 () Bool)

(assert (=> b!7571836 (= e!4507675 (+ 1 (size!42494 (t!387630 testedP!418))))))

(assert (= (and d!2317580 c!1396990) b!7571835))

(assert (= (and d!2317580 (not c!1396990)) b!7571836))

(declare-fun m!8132228 () Bool)

(assert (=> b!7571836 m!8132228))

(assert (=> b!7571541 d!2317580))

(declare-fun d!2317582 () Bool)

(declare-fun lt!2651347 () Int)

(assert (=> d!2317582 (>= lt!2651347 0)))

(declare-fun e!4507676 () Int)

(assert (=> d!2317582 (= lt!2651347 e!4507676)))

(declare-fun c!1396991 () Bool)

(assert (=> d!2317582 (= c!1396991 (is-Nil!72771 input!7855))))

(assert (=> d!2317582 (= (size!42494 input!7855) lt!2651347)))

(declare-fun b!7571837 () Bool)

(assert (=> b!7571837 (= e!4507676 0)))

(declare-fun b!7571838 () Bool)

(assert (=> b!7571838 (= e!4507676 (+ 1 (size!42494 (t!387630 input!7855))))))

(assert (= (and d!2317582 c!1396991) b!7571837))

(assert (= (and d!2317582 (not c!1396991)) b!7571838))

(declare-fun m!8132230 () Bool)

(assert (=> b!7571838 m!8132230))

(assert (=> b!7571541 d!2317582))

(declare-fun d!2317584 () Bool)

(declare-fun lt!2651350 () List!72895)

(assert (=> d!2317584 (= (++!17494 testedP!418 lt!2651350) input!7855)))

(declare-fun e!4507679 () List!72895)

(assert (=> d!2317584 (= lt!2651350 e!4507679)))

(declare-fun c!1396994 () Bool)

(assert (=> d!2317584 (= c!1396994 (is-Cons!72771 testedP!418))))

(assert (=> d!2317584 (>= (size!42494 input!7855) (size!42494 testedP!418))))

(assert (=> d!2317584 (= (getSuffix!3676 input!7855 testedP!418) lt!2651350)))

(declare-fun b!7571843 () Bool)

(assert (=> b!7571843 (= e!4507679 (getSuffix!3676 (tail!15110 input!7855) (t!387630 testedP!418)))))

(declare-fun b!7571844 () Bool)

(assert (=> b!7571844 (= e!4507679 input!7855)))

(assert (= (and d!2317584 c!1396994) b!7571843))

(assert (= (and d!2317584 (not c!1396994)) b!7571844))

(declare-fun m!8132232 () Bool)

(assert (=> d!2317584 m!8132232))

(assert (=> d!2317584 m!8132062))

(assert (=> d!2317584 m!8132066))

(declare-fun m!8132234 () Bool)

(assert (=> b!7571843 m!8132234))

(assert (=> b!7571843 m!8132234))

(declare-fun m!8132236 () Bool)

(assert (=> b!7571843 m!8132236))

(assert (=> b!7571541 d!2317584))

(declare-fun d!2317586 () Bool)

(declare-fun e!4507687 () Bool)

(assert (=> d!2317586 e!4507687))

(declare-fun res!3033200 () Bool)

(assert (=> d!2317586 (=> res!3033200 e!4507687)))

(declare-fun lt!2651353 () Bool)

(assert (=> d!2317586 (= res!3033200 (not lt!2651353))))

(declare-fun e!4507688 () Bool)

(assert (=> d!2317586 (= lt!2651353 e!4507688)))

(declare-fun res!3033203 () Bool)

(assert (=> d!2317586 (=> res!3033203 e!4507688)))

(assert (=> d!2317586 (= res!3033203 (is-Nil!72771 testedP!418))))

(assert (=> d!2317586 (= (isPrefix!6218 testedP!418 input!7855) lt!2651353)))

(declare-fun b!7571853 () Bool)

(declare-fun e!4507686 () Bool)

(assert (=> b!7571853 (= e!4507688 e!4507686)))

(declare-fun res!3033201 () Bool)

(assert (=> b!7571853 (=> (not res!3033201) (not e!4507686))))

(assert (=> b!7571853 (= res!3033201 (not (is-Nil!72771 input!7855)))))

(declare-fun b!7571854 () Bool)

(declare-fun res!3033202 () Bool)

(assert (=> b!7571854 (=> (not res!3033202) (not e!4507686))))

(assert (=> b!7571854 (= res!3033202 (= (head!15570 testedP!418) (head!15570 input!7855)))))

(declare-fun b!7571855 () Bool)

(assert (=> b!7571855 (= e!4507686 (isPrefix!6218 (tail!15110 testedP!418) (tail!15110 input!7855)))))

(declare-fun b!7571856 () Bool)

(assert (=> b!7571856 (= e!4507687 (>= (size!42494 input!7855) (size!42494 testedP!418)))))

(assert (= (and d!2317586 (not res!3033203)) b!7571853))

(assert (= (and b!7571853 res!3033201) b!7571854))

(assert (= (and b!7571854 res!3033202) b!7571855))

(assert (= (and d!2317586 (not res!3033200)) b!7571856))

(declare-fun m!8132238 () Bool)

(assert (=> b!7571854 m!8132238))

(declare-fun m!8132240 () Bool)

(assert (=> b!7571854 m!8132240))

(declare-fun m!8132242 () Bool)

(assert (=> b!7571855 m!8132242))

(assert (=> b!7571855 m!8132234))

(assert (=> b!7571855 m!8132242))

(assert (=> b!7571855 m!8132234))

(declare-fun m!8132244 () Bool)

(assert (=> b!7571855 m!8132244))

(assert (=> b!7571856 m!8132062))

(assert (=> b!7571856 m!8132066))

(assert (=> b!7571524 d!2317586))

(declare-fun d!2317588 () Bool)

(declare-fun lt!2651356 () Regex!20012)

(assert (=> d!2317588 (validRegex!10440 lt!2651356)))

(declare-fun e!4507691 () Regex!20012)

(assert (=> d!2317588 (= lt!2651356 e!4507691)))

(declare-fun c!1396997 () Bool)

(assert (=> d!2317588 (= c!1396997 (is-Cons!72771 testedP!418))))

(assert (=> d!2317588 (validRegex!10440 baseR!100)))

(assert (=> d!2317588 (= (derivative!538 baseR!100 testedP!418) lt!2651356)))

(declare-fun b!7571861 () Bool)

(assert (=> b!7571861 (= e!4507691 (derivative!538 (derivativeStep!5770 baseR!100 (h!79219 testedP!418)) (t!387630 testedP!418)))))

(declare-fun b!7571862 () Bool)

(assert (=> b!7571862 (= e!4507691 baseR!100)))

(assert (= (and d!2317588 c!1396997) b!7571861))

(assert (= (and d!2317588 (not c!1396997)) b!7571862))

(declare-fun m!8132246 () Bool)

(assert (=> d!2317588 m!8132246))

(assert (=> d!2317588 m!8132052))

(declare-fun m!8132248 () Bool)

(assert (=> b!7571861 m!8132248))

(assert (=> b!7571861 m!8132248))

(declare-fun m!8132250 () Bool)

(assert (=> b!7571861 m!8132250))

(assert (=> b!7571536 d!2317588))

(declare-fun b!7571863 () Bool)

(declare-fun e!4507697 () Bool)

(declare-fun e!4507696 () Bool)

(assert (=> b!7571863 (= e!4507697 e!4507696)))

(declare-fun res!3033208 () Bool)

(assert (=> b!7571863 (=> (not res!3033208) (not e!4507696))))

(declare-fun lt!2651357 () Bool)

(assert (=> b!7571863 (= res!3033208 (not lt!2651357))))

(declare-fun b!7571864 () Bool)

(declare-fun e!4507693 () Bool)

(assert (=> b!7571864 (= e!4507693 (= (head!15570 testedP!418) (c!1396923 baseR!100)))))

(declare-fun b!7571865 () Bool)

(declare-fun e!4507695 () Bool)

(assert (=> b!7571865 (= e!4507695 (not lt!2651357))))

(declare-fun b!7571866 () Bool)

(declare-fun res!3033209 () Bool)

(assert (=> b!7571866 (=> (not res!3033209) (not e!4507693))))

(declare-fun call!694173 () Bool)

(assert (=> b!7571866 (= res!3033209 (not call!694173))))

(declare-fun b!7571867 () Bool)

(declare-fun e!4507694 () Bool)

(assert (=> b!7571867 (= e!4507694 (nullable!8736 baseR!100))))

(declare-fun b!7571868 () Bool)

(assert (=> b!7571868 (= e!4507694 (matchR!9612 (derivativeStep!5770 baseR!100 (head!15570 testedP!418)) (tail!15110 testedP!418)))))

(declare-fun b!7571869 () Bool)

(declare-fun res!3033211 () Bool)

(declare-fun e!4507692 () Bool)

(assert (=> b!7571869 (=> res!3033211 e!4507692)))

(assert (=> b!7571869 (= res!3033211 (not (isEmpty!41432 (tail!15110 testedP!418))))))

(declare-fun b!7571870 () Bool)

(declare-fun res!3033207 () Bool)

(assert (=> b!7571870 (=> res!3033207 e!4507697)))

(assert (=> b!7571870 (= res!3033207 e!4507693)))

(declare-fun res!3033205 () Bool)

(assert (=> b!7571870 (=> (not res!3033205) (not e!4507693))))

(assert (=> b!7571870 (= res!3033205 lt!2651357)))

(declare-fun d!2317590 () Bool)

(declare-fun e!4507698 () Bool)

(assert (=> d!2317590 e!4507698))

(declare-fun c!1396999 () Bool)

(assert (=> d!2317590 (= c!1396999 (is-EmptyExpr!20012 baseR!100))))

(assert (=> d!2317590 (= lt!2651357 e!4507694)))

(declare-fun c!1396998 () Bool)

(assert (=> d!2317590 (= c!1396998 (isEmpty!41432 testedP!418))))

(assert (=> d!2317590 (validRegex!10440 baseR!100)))

(assert (=> d!2317590 (= (matchR!9612 baseR!100 testedP!418) lt!2651357)))

(declare-fun bm!694168 () Bool)

(assert (=> bm!694168 (= call!694173 (isEmpty!41432 testedP!418))))

(declare-fun b!7571871 () Bool)

(declare-fun res!3033210 () Bool)

(assert (=> b!7571871 (=> res!3033210 e!4507697)))

(assert (=> b!7571871 (= res!3033210 (not (is-ElementMatch!20012 baseR!100)))))

(assert (=> b!7571871 (= e!4507695 e!4507697)))

(declare-fun b!7571872 () Bool)

(assert (=> b!7571872 (= e!4507698 (= lt!2651357 call!694173))))

(declare-fun b!7571873 () Bool)

(assert (=> b!7571873 (= e!4507696 e!4507692)))

(declare-fun res!3033204 () Bool)

(assert (=> b!7571873 (=> res!3033204 e!4507692)))

(assert (=> b!7571873 (= res!3033204 call!694173)))

(declare-fun b!7571874 () Bool)

(assert (=> b!7571874 (= e!4507692 (not (= (head!15570 testedP!418) (c!1396923 baseR!100))))))

(declare-fun b!7571875 () Bool)

(declare-fun res!3033206 () Bool)

(assert (=> b!7571875 (=> (not res!3033206) (not e!4507693))))

(assert (=> b!7571875 (= res!3033206 (isEmpty!41432 (tail!15110 testedP!418)))))

(declare-fun b!7571876 () Bool)

(assert (=> b!7571876 (= e!4507698 e!4507695)))

(declare-fun c!1397000 () Bool)

(assert (=> b!7571876 (= c!1397000 (is-EmptyLang!20012 baseR!100))))

(assert (= (and d!2317590 c!1396998) b!7571867))

(assert (= (and d!2317590 (not c!1396998)) b!7571868))

(assert (= (and d!2317590 c!1396999) b!7571872))

(assert (= (and d!2317590 (not c!1396999)) b!7571876))

(assert (= (and b!7571876 c!1397000) b!7571865))

(assert (= (and b!7571876 (not c!1397000)) b!7571871))

(assert (= (and b!7571871 (not res!3033210)) b!7571870))

(assert (= (and b!7571870 res!3033205) b!7571866))

(assert (= (and b!7571866 res!3033209) b!7571875))

(assert (= (and b!7571875 res!3033206) b!7571864))

(assert (= (and b!7571870 (not res!3033207)) b!7571863))

(assert (= (and b!7571863 res!3033208) b!7571873))

(assert (= (and b!7571873 (not res!3033204)) b!7571869))

(assert (= (and b!7571869 (not res!3033211)) b!7571874))

(assert (= (or b!7571872 b!7571866 b!7571873) bm!694168))

(assert (=> b!7571875 m!8132242))

(assert (=> b!7571875 m!8132242))

(declare-fun m!8132252 () Bool)

(assert (=> b!7571875 m!8132252))

(declare-fun m!8132254 () Bool)

(assert (=> d!2317590 m!8132254))

(assert (=> d!2317590 m!8132052))

(assert (=> b!7571864 m!8132238))

(declare-fun m!8132256 () Bool)

(assert (=> b!7571867 m!8132256))

(assert (=> b!7571874 m!8132238))

(assert (=> b!7571869 m!8132242))

(assert (=> b!7571869 m!8132242))

(assert (=> b!7571869 m!8132252))

(assert (=> bm!694168 m!8132254))

(assert (=> b!7571868 m!8132238))

(assert (=> b!7571868 m!8132238))

(declare-fun m!8132258 () Bool)

(assert (=> b!7571868 m!8132258))

(assert (=> b!7571868 m!8132242))

(assert (=> b!7571868 m!8132258))

(assert (=> b!7571868 m!8132242))

(declare-fun m!8132260 () Bool)

(assert (=> b!7571868 m!8132260))

(assert (=> b!7571531 d!2317590))

(declare-fun b!7571887 () Bool)

(declare-fun e!4507701 () Bool)

(assert (=> b!7571887 (= e!4507701 tp_is_empty!50379)))

(declare-fun b!7571890 () Bool)

(declare-fun tp!2206234 () Bool)

(declare-fun tp!2206236 () Bool)

(assert (=> b!7571890 (= e!4507701 (and tp!2206234 tp!2206236))))

(assert (=> b!7571538 (= tp!2206177 e!4507701)))

(declare-fun b!7571889 () Bool)

(declare-fun tp!2206235 () Bool)

(assert (=> b!7571889 (= e!4507701 tp!2206235)))

(declare-fun b!7571888 () Bool)

(declare-fun tp!2206232 () Bool)

(declare-fun tp!2206233 () Bool)

(assert (=> b!7571888 (= e!4507701 (and tp!2206232 tp!2206233))))

(assert (= (and b!7571538 (is-ElementMatch!20012 (regOne!40537 r!24129))) b!7571887))

(assert (= (and b!7571538 (is-Concat!28857 (regOne!40537 r!24129))) b!7571888))

(assert (= (and b!7571538 (is-Star!20012 (regOne!40537 r!24129))) b!7571889))

(assert (= (and b!7571538 (is-Union!20012 (regOne!40537 r!24129))) b!7571890))

(declare-fun b!7571891 () Bool)

(declare-fun e!4507702 () Bool)

(assert (=> b!7571891 (= e!4507702 tp_is_empty!50379)))

(declare-fun b!7571894 () Bool)

(declare-fun tp!2206239 () Bool)

(declare-fun tp!2206241 () Bool)

(assert (=> b!7571894 (= e!4507702 (and tp!2206239 tp!2206241))))

(assert (=> b!7571538 (= tp!2206175 e!4507702)))

(declare-fun b!7571893 () Bool)

(declare-fun tp!2206240 () Bool)

(assert (=> b!7571893 (= e!4507702 tp!2206240)))

(declare-fun b!7571892 () Bool)

(declare-fun tp!2206237 () Bool)

(declare-fun tp!2206238 () Bool)

(assert (=> b!7571892 (= e!4507702 (and tp!2206237 tp!2206238))))

(assert (= (and b!7571538 (is-ElementMatch!20012 (regTwo!40537 r!24129))) b!7571891))

(assert (= (and b!7571538 (is-Concat!28857 (regTwo!40537 r!24129))) b!7571892))

(assert (= (and b!7571538 (is-Star!20012 (regTwo!40537 r!24129))) b!7571893))

(assert (= (and b!7571538 (is-Union!20012 (regTwo!40537 r!24129))) b!7571894))

(declare-fun b!7571895 () Bool)

(declare-fun e!4507703 () Bool)

(assert (=> b!7571895 (= e!4507703 tp_is_empty!50379)))

(declare-fun b!7571898 () Bool)

(declare-fun tp!2206244 () Bool)

(declare-fun tp!2206246 () Bool)

(assert (=> b!7571898 (= e!4507703 (and tp!2206244 tp!2206246))))

(assert (=> b!7571529 (= tp!2206185 e!4507703)))

(declare-fun b!7571897 () Bool)

(declare-fun tp!2206245 () Bool)

(assert (=> b!7571897 (= e!4507703 tp!2206245)))

(declare-fun b!7571896 () Bool)

(declare-fun tp!2206242 () Bool)

(declare-fun tp!2206243 () Bool)

(assert (=> b!7571896 (= e!4507703 (and tp!2206242 tp!2206243))))

(assert (= (and b!7571529 (is-ElementMatch!20012 (regOne!40537 baseR!100))) b!7571895))

(assert (= (and b!7571529 (is-Concat!28857 (regOne!40537 baseR!100))) b!7571896))

(assert (= (and b!7571529 (is-Star!20012 (regOne!40537 baseR!100))) b!7571897))

(assert (= (and b!7571529 (is-Union!20012 (regOne!40537 baseR!100))) b!7571898))

(declare-fun b!7571899 () Bool)

(declare-fun e!4507704 () Bool)

(assert (=> b!7571899 (= e!4507704 tp_is_empty!50379)))

(declare-fun b!7571902 () Bool)

(declare-fun tp!2206249 () Bool)

(declare-fun tp!2206251 () Bool)

(assert (=> b!7571902 (= e!4507704 (and tp!2206249 tp!2206251))))

(assert (=> b!7571529 (= tp!2206178 e!4507704)))

(declare-fun b!7571901 () Bool)

(declare-fun tp!2206250 () Bool)

(assert (=> b!7571901 (= e!4507704 tp!2206250)))

(declare-fun b!7571900 () Bool)

(declare-fun tp!2206247 () Bool)

(declare-fun tp!2206248 () Bool)

(assert (=> b!7571900 (= e!4507704 (and tp!2206247 tp!2206248))))

(assert (= (and b!7571529 (is-ElementMatch!20012 (regTwo!40537 baseR!100))) b!7571899))

(assert (= (and b!7571529 (is-Concat!28857 (regTwo!40537 baseR!100))) b!7571900))

(assert (= (and b!7571529 (is-Star!20012 (regTwo!40537 baseR!100))) b!7571901))

(assert (= (and b!7571529 (is-Union!20012 (regTwo!40537 baseR!100))) b!7571902))

(declare-fun b!7571907 () Bool)

(declare-fun e!4507707 () Bool)

(declare-fun tp!2206254 () Bool)

(assert (=> b!7571907 (= e!4507707 (and tp_is_empty!50379 tp!2206254))))

(assert (=> b!7571539 (= tp!2206180 e!4507707)))

(assert (= (and b!7571539 (is-Cons!72771 (t!387630 input!7855))) b!7571907))

(declare-fun b!7571908 () Bool)

(declare-fun e!4507708 () Bool)

(assert (=> b!7571908 (= e!4507708 tp_is_empty!50379)))

(declare-fun b!7571911 () Bool)

(declare-fun tp!2206257 () Bool)

(declare-fun tp!2206259 () Bool)

(assert (=> b!7571911 (= e!4507708 (and tp!2206257 tp!2206259))))

(assert (=> b!7571530 (= tp!2206181 e!4507708)))

(declare-fun b!7571910 () Bool)

(declare-fun tp!2206258 () Bool)

(assert (=> b!7571910 (= e!4507708 tp!2206258)))

(declare-fun b!7571909 () Bool)

(declare-fun tp!2206255 () Bool)

(declare-fun tp!2206256 () Bool)

(assert (=> b!7571909 (= e!4507708 (and tp!2206255 tp!2206256))))

(assert (= (and b!7571530 (is-ElementMatch!20012 (regOne!40536 baseR!100))) b!7571908))

(assert (= (and b!7571530 (is-Concat!28857 (regOne!40536 baseR!100))) b!7571909))

(assert (= (and b!7571530 (is-Star!20012 (regOne!40536 baseR!100))) b!7571910))

(assert (= (and b!7571530 (is-Union!20012 (regOne!40536 baseR!100))) b!7571911))

(declare-fun b!7571912 () Bool)

(declare-fun e!4507709 () Bool)

(assert (=> b!7571912 (= e!4507709 tp_is_empty!50379)))

(declare-fun b!7571915 () Bool)

(declare-fun tp!2206262 () Bool)

(declare-fun tp!2206264 () Bool)

(assert (=> b!7571915 (= e!4507709 (and tp!2206262 tp!2206264))))

(assert (=> b!7571530 (= tp!2206183 e!4507709)))

(declare-fun b!7571914 () Bool)

(declare-fun tp!2206263 () Bool)

(assert (=> b!7571914 (= e!4507709 tp!2206263)))

(declare-fun b!7571913 () Bool)

(declare-fun tp!2206260 () Bool)

(declare-fun tp!2206261 () Bool)

(assert (=> b!7571913 (= e!4507709 (and tp!2206260 tp!2206261))))

(assert (= (and b!7571530 (is-ElementMatch!20012 (regTwo!40536 baseR!100))) b!7571912))

(assert (= (and b!7571530 (is-Concat!28857 (regTwo!40536 baseR!100))) b!7571913))

(assert (= (and b!7571530 (is-Star!20012 (regTwo!40536 baseR!100))) b!7571914))

(assert (= (and b!7571530 (is-Union!20012 (regTwo!40536 baseR!100))) b!7571915))

(declare-fun b!7571916 () Bool)

(declare-fun e!4507710 () Bool)

(assert (=> b!7571916 (= e!4507710 tp_is_empty!50379)))

(declare-fun b!7571919 () Bool)

(declare-fun tp!2206267 () Bool)

(declare-fun tp!2206269 () Bool)

(assert (=> b!7571919 (= e!4507710 (and tp!2206267 tp!2206269))))

(assert (=> b!7571540 (= tp!2206174 e!4507710)))

(declare-fun b!7571918 () Bool)

(declare-fun tp!2206268 () Bool)

(assert (=> b!7571918 (= e!4507710 tp!2206268)))

(declare-fun b!7571917 () Bool)

(declare-fun tp!2206265 () Bool)

(declare-fun tp!2206266 () Bool)

(assert (=> b!7571917 (= e!4507710 (and tp!2206265 tp!2206266))))

(assert (= (and b!7571540 (is-ElementMatch!20012 (regOne!40536 r!24129))) b!7571916))

(assert (= (and b!7571540 (is-Concat!28857 (regOne!40536 r!24129))) b!7571917))

(assert (= (and b!7571540 (is-Star!20012 (regOne!40536 r!24129))) b!7571918))

(assert (= (and b!7571540 (is-Union!20012 (regOne!40536 r!24129))) b!7571919))

(declare-fun b!7571920 () Bool)

(declare-fun e!4507711 () Bool)

(assert (=> b!7571920 (= e!4507711 tp_is_empty!50379)))

(declare-fun b!7571923 () Bool)

(declare-fun tp!2206272 () Bool)

(declare-fun tp!2206274 () Bool)

(assert (=> b!7571923 (= e!4507711 (and tp!2206272 tp!2206274))))

(assert (=> b!7571540 (= tp!2206182 e!4507711)))

(declare-fun b!7571922 () Bool)

(declare-fun tp!2206273 () Bool)

(assert (=> b!7571922 (= e!4507711 tp!2206273)))

(declare-fun b!7571921 () Bool)

(declare-fun tp!2206270 () Bool)

(declare-fun tp!2206271 () Bool)

(assert (=> b!7571921 (= e!4507711 (and tp!2206270 tp!2206271))))

(assert (= (and b!7571540 (is-ElementMatch!20012 (regTwo!40536 r!24129))) b!7571920))

(assert (= (and b!7571540 (is-Concat!28857 (regTwo!40536 r!24129))) b!7571921))

(assert (= (and b!7571540 (is-Star!20012 (regTwo!40536 r!24129))) b!7571922))

(assert (= (and b!7571540 (is-Union!20012 (regTwo!40536 r!24129))) b!7571923))

(declare-fun b!7571924 () Bool)

(declare-fun e!4507712 () Bool)

(declare-fun tp!2206275 () Bool)

(assert (=> b!7571924 (= e!4507712 (and tp_is_empty!50379 tp!2206275))))

(assert (=> b!7571535 (= tp!2206179 e!4507712)))

(assert (= (and b!7571535 (is-Cons!72771 (t!387630 testedP!418))) b!7571924))

(declare-fun b!7571925 () Bool)

(declare-fun e!4507713 () Bool)

(assert (=> b!7571925 (= e!4507713 tp_is_empty!50379)))

(declare-fun b!7571928 () Bool)

(declare-fun tp!2206278 () Bool)

(declare-fun tp!2206280 () Bool)

(assert (=> b!7571928 (= e!4507713 (and tp!2206278 tp!2206280))))

(assert (=> b!7571526 (= tp!2206184 e!4507713)))

(declare-fun b!7571927 () Bool)

(declare-fun tp!2206279 () Bool)

(assert (=> b!7571927 (= e!4507713 tp!2206279)))

(declare-fun b!7571926 () Bool)

(declare-fun tp!2206276 () Bool)

(declare-fun tp!2206277 () Bool)

(assert (=> b!7571926 (= e!4507713 (and tp!2206276 tp!2206277))))

(assert (= (and b!7571526 (is-ElementMatch!20012 (reg!20341 r!24129))) b!7571925))

(assert (= (and b!7571526 (is-Concat!28857 (reg!20341 r!24129))) b!7571926))

(assert (= (and b!7571526 (is-Star!20012 (reg!20341 r!24129))) b!7571927))

(assert (= (and b!7571526 (is-Union!20012 (reg!20341 r!24129))) b!7571928))

(declare-fun b!7571929 () Bool)

(declare-fun e!4507714 () Bool)

(assert (=> b!7571929 (= e!4507714 tp_is_empty!50379)))

(declare-fun b!7571932 () Bool)

(declare-fun tp!2206283 () Bool)

(declare-fun tp!2206285 () Bool)

(assert (=> b!7571932 (= e!4507714 (and tp!2206283 tp!2206285))))

(assert (=> b!7571537 (= tp!2206176 e!4507714)))

(declare-fun b!7571931 () Bool)

(declare-fun tp!2206284 () Bool)

(assert (=> b!7571931 (= e!4507714 tp!2206284)))

(declare-fun b!7571930 () Bool)

(declare-fun tp!2206281 () Bool)

(declare-fun tp!2206282 () Bool)

(assert (=> b!7571930 (= e!4507714 (and tp!2206281 tp!2206282))))

(assert (= (and b!7571537 (is-ElementMatch!20012 (reg!20341 baseR!100))) b!7571929))

(assert (= (and b!7571537 (is-Concat!28857 (reg!20341 baseR!100))) b!7571930))

(assert (= (and b!7571537 (is-Star!20012 (reg!20341 baseR!100))) b!7571931))

(assert (= (and b!7571537 (is-Union!20012 (reg!20341 baseR!100))) b!7571932))

(push 1)

(assert (not b!7571894))

(assert (not b!7571892))

(assert (not bm!694165))

(assert (not b!7571915))

(assert (not b!7571786))

(assert (not b!7571695))

(assert (not b!7571678))

(assert (not b!7571909))

(assert (not b!7571901))

(assert (not b!7571914))

(assert (not b!7571685))

(assert (not b!7571761))

(assert (not b!7571778))

(assert (not bm!694121))

(assert (not b!7571918))

(assert (not b!7571690))

(assert (not bm!694160))

(assert (not b!7571893))

(assert (not b!7571677))

(assert (not b!7571874))

(assert (not b!7571927))

(assert (not b!7571890))

(assert (not b!7571896))

(assert (not b!7571856))

(assert (not b!7571821))

(assert (not b!7571867))

(assert (not b!7571923))

(assert (not bm!694143))

(assert (not b!7571843))

(assert (not b!7571913))

(assert (not b!7571822))

(assert (not b!7571861))

(assert (not b!7571831))

(assert tp_is_empty!50379)

(assert (not bm!694167))

(assert (not bm!694163))

(assert (not b!7571688))

(assert (not b!7571930))

(assert (not b!7571931))

(assert (not b!7571672))

(assert (not d!2317590))

(assert (not b!7571902))

(assert (not d!2317556))

(assert (not b!7571889))

(assert (not bm!694161))

(assert (not d!2317552))

(assert (not b!7571864))

(assert (not bm!694122))

(assert (not b!7571854))

(assert (not b!7571689))

(assert (not b!7571926))

(assert (not b!7571869))

(assert (not b!7571888))

(assert (not b!7571907))

(assert (not bm!694162))

(assert (not b!7571825))

(assert (not b!7571855))

(assert (not bm!694168))

(assert (not b!7571919))

(assert (not b!7571696))

(assert (not b!7571917))

(assert (not b!7571921))

(assert (not b!7571868))

(assert (not b!7571670))

(assert (not bm!694164))

(assert (not b!7571836))

(assert (not b!7571922))

(assert (not b!7571911))

(assert (not b!7571932))

(assert (not d!2317588))

(assert (not b!7571898))

(assert (not bm!694141))

(assert (not bm!694166))

(assert (not d!2317562))

(assert (not d!2317584))

(assert (not d!2317548))

(assert (not b!7571671))

(assert (not bm!694138))

(assert (not b!7571838))

(assert (not b!7571875))

(assert (not b!7571924))

(assert (not d!2317576))

(assert (not b!7571910))

(assert (not bm!694140))

(assert (not d!2317568))

(assert (not b!7571897))

(assert (not b!7571667))

(assert (not b!7571928))

(assert (not b!7571900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

