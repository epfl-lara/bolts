; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549556 () Bool)

(assert start!549556)

(declare-fun b!5192646 () Bool)

(declare-fun res!2205565 () Bool)

(declare-fun e!3234349 () Bool)

(assert (=> b!5192646 (=> res!2205565 e!3234349)))

(declare-datatypes ((C!29742 0))(
  ( (C!29743 (val!24573 Int)) )
))
(declare-datatypes ((Regex!14736 0))(
  ( (ElementMatch!14736 (c!895115 C!29742)) (Concat!23581 (regOne!29984 Regex!14736) (regTwo!29984 Regex!14736)) (EmptyExpr!14736) (Star!14736 (reg!15065 Regex!14736)) (EmptyLang!14736) (Union!14736 (regOne!29985 Regex!14736) (regTwo!29985 Regex!14736)) )
))
(declare-datatypes ((List!60507 0))(
  ( (Nil!60383) (Cons!60383 (h!66831 Regex!14736) (t!373660 List!60507)) )
))
(declare-datatypes ((Context!8240 0))(
  ( (Context!8241 (exprs!4620 List!60507)) )
))
(declare-datatypes ((List!60508 0))(
  ( (Nil!60384) (Cons!60384 (h!66832 Context!8240) (t!373661 List!60508)) )
))
(declare-fun zl!343 () List!60508)

(declare-fun isEmpty!32325 (List!60508) Bool)

(assert (=> b!5192646 (= res!2205565 (not (isEmpty!32325 (t!373661 zl!343))))))

(declare-fun res!2205562 () Bool)

(declare-fun e!3234346 () Bool)

(assert (=> start!549556 (=> (not res!2205562) (not e!3234346))))

(declare-fun r!7292 () Regex!14736)

(declare-fun validRegex!6472 (Regex!14736) Bool)

(assert (=> start!549556 (= res!2205562 (validRegex!6472 r!7292))))

(assert (=> start!549556 e!3234346))

(declare-fun e!3234345 () Bool)

(assert (=> start!549556 e!3234345))

(declare-fun condSetEmpty!32803 () Bool)

(declare-fun z!1189 () (Set Context!8240))

(assert (=> start!549556 (= condSetEmpty!32803 (= z!1189 (as set.empty (Set Context!8240))))))

(declare-fun setRes!32803 () Bool)

(assert (=> start!549556 setRes!32803))

(declare-fun e!3234344 () Bool)

(assert (=> start!549556 e!3234344))

(declare-fun e!3234348 () Bool)

(assert (=> start!549556 e!3234348))

(declare-fun b!5192647 () Bool)

(declare-fun tp!1456623 () Bool)

(declare-fun tp!1456619 () Bool)

(assert (=> b!5192647 (= e!3234345 (and tp!1456623 tp!1456619))))

(declare-fun b!5192648 () Bool)

(declare-fun tp_is_empty!38725 () Bool)

(declare-fun tp!1456616 () Bool)

(assert (=> b!5192648 (= e!3234348 (and tp_is_empty!38725 tp!1456616))))

(declare-fun b!5192649 () Bool)

(declare-fun res!2205566 () Bool)

(assert (=> b!5192649 (=> res!2205566 e!3234349)))

(declare-fun generalisedConcat!405 (List!60507) Regex!14736)

(assert (=> b!5192649 (= res!2205566 (not (= r!7292 (generalisedConcat!405 (exprs!4620 (h!66832 zl!343))))))))

(declare-fun b!5192650 () Bool)

(assert (=> b!5192650 (= e!3234349 true)))

(declare-fun b!5192651 () Bool)

(declare-fun res!2205564 () Bool)

(assert (=> b!5192651 (=> (not res!2205564) (not e!3234346))))

(declare-fun toList!8520 ((Set Context!8240)) List!60508)

(assert (=> b!5192651 (= res!2205564 (= (toList!8520 z!1189) zl!343))))

(declare-fun b!5192652 () Bool)

(declare-fun e!3234347 () Bool)

(declare-fun tp!1456620 () Bool)

(assert (=> b!5192652 (= e!3234347 tp!1456620)))

(declare-fun e!3234350 () Bool)

(declare-fun tp!1456615 () Bool)

(declare-fun setElem!32803 () Context!8240)

(declare-fun setNonEmpty!32803 () Bool)

(declare-fun inv!80088 (Context!8240) Bool)

(assert (=> setNonEmpty!32803 (= setRes!32803 (and tp!1456615 (inv!80088 setElem!32803) e!3234350))))

(declare-fun setRest!32803 () (Set Context!8240))

(assert (=> setNonEmpty!32803 (= z!1189 (set.union (set.insert setElem!32803 (as set.empty (Set Context!8240))) setRest!32803))))

(declare-fun b!5192653 () Bool)

(declare-fun tp!1456617 () Bool)

(assert (=> b!5192653 (= e!3234345 tp!1456617)))

(declare-fun b!5192654 () Bool)

(assert (=> b!5192654 (= e!3234345 tp_is_empty!38725)))

(declare-fun b!5192655 () Bool)

(declare-fun res!2205559 () Bool)

(assert (=> b!5192655 (=> res!2205559 e!3234349)))

(declare-fun generalisedUnion!665 (List!60507) Regex!14736)

(declare-fun unfocusZipperList!178 (List!60508) List!60507)

(assert (=> b!5192655 (= res!2205559 (not (= r!7292 (generalisedUnion!665 (unfocusZipperList!178 zl!343)))))))

(declare-fun tp!1456614 () Bool)

(declare-fun b!5192656 () Bool)

(assert (=> b!5192656 (= e!3234344 (and (inv!80088 (h!66832 zl!343)) e!3234347 tp!1456614))))

(declare-fun b!5192657 () Bool)

(declare-fun res!2205560 () Bool)

(assert (=> b!5192657 (=> (not res!2205560) (not e!3234346))))

(declare-fun unfocusZipper!478 (List!60508) Regex!14736)

(assert (=> b!5192657 (= res!2205560 (= r!7292 (unfocusZipper!478 zl!343)))))

(declare-fun b!5192658 () Bool)

(declare-fun res!2205561 () Bool)

(assert (=> b!5192658 (=> res!2205561 e!3234349)))

(assert (=> b!5192658 (= res!2205561 (not (is-Cons!60383 (exprs!4620 (h!66832 zl!343)))))))

(declare-fun b!5192659 () Bool)

(declare-fun tp!1456622 () Bool)

(assert (=> b!5192659 (= e!3234350 tp!1456622)))

(declare-fun setIsEmpty!32803 () Bool)

(assert (=> setIsEmpty!32803 setRes!32803))

(declare-fun b!5192660 () Bool)

(declare-fun tp!1456621 () Bool)

(declare-fun tp!1456618 () Bool)

(assert (=> b!5192660 (= e!3234345 (and tp!1456621 tp!1456618))))

(declare-fun b!5192661 () Bool)

(assert (=> b!5192661 (= e!3234346 (not e!3234349))))

(declare-fun res!2205563 () Bool)

(assert (=> b!5192661 (=> res!2205563 e!3234349)))

(assert (=> b!5192661 (= res!2205563 (not (is-Cons!60384 zl!343)))))

(declare-datatypes ((List!60509 0))(
  ( (Nil!60385) (Cons!60385 (h!66833 C!29742) (t!373662 List!60509)) )
))
(declare-fun s!2326 () List!60509)

(declare-fun matchR!6921 (Regex!14736 List!60509) Bool)

(declare-fun matchRSpec!1839 (Regex!14736 List!60509) Bool)

(assert (=> b!5192661 (= (matchR!6921 r!7292 s!2326) (matchRSpec!1839 r!7292 s!2326))))

(declare-datatypes ((Unit!152306 0))(
  ( (Unit!152307) )
))
(declare-fun lt!2138314 () Unit!152306)

(declare-fun mainMatchTheorem!1839 (Regex!14736 List!60509) Unit!152306)

(assert (=> b!5192661 (= lt!2138314 (mainMatchTheorem!1839 r!7292 s!2326))))

(assert (= (and start!549556 res!2205562) b!5192651))

(assert (= (and b!5192651 res!2205564) b!5192657))

(assert (= (and b!5192657 res!2205560) b!5192661))

(assert (= (and b!5192661 (not res!2205563)) b!5192646))

(assert (= (and b!5192646 (not res!2205565)) b!5192649))

(assert (= (and b!5192649 (not res!2205566)) b!5192658))

(assert (= (and b!5192658 (not res!2205561)) b!5192655))

(assert (= (and b!5192655 (not res!2205559)) b!5192650))

(assert (= (and start!549556 (is-ElementMatch!14736 r!7292)) b!5192654))

(assert (= (and start!549556 (is-Concat!23581 r!7292)) b!5192647))

(assert (= (and start!549556 (is-Star!14736 r!7292)) b!5192653))

(assert (= (and start!549556 (is-Union!14736 r!7292)) b!5192660))

(assert (= (and start!549556 condSetEmpty!32803) setIsEmpty!32803))

(assert (= (and start!549556 (not condSetEmpty!32803)) setNonEmpty!32803))

(assert (= setNonEmpty!32803 b!5192659))

(assert (= b!5192656 b!5192652))

(assert (= (and start!549556 (is-Cons!60384 zl!343)) b!5192656))

(assert (= (and start!549556 (is-Cons!60385 s!2326)) b!5192648))

(declare-fun m!6248354 () Bool)

(assert (=> b!5192649 m!6248354))

(declare-fun m!6248356 () Bool)

(assert (=> b!5192655 m!6248356))

(assert (=> b!5192655 m!6248356))

(declare-fun m!6248358 () Bool)

(assert (=> b!5192655 m!6248358))

(declare-fun m!6248360 () Bool)

(assert (=> start!549556 m!6248360))

(declare-fun m!6248362 () Bool)

(assert (=> setNonEmpty!32803 m!6248362))

(declare-fun m!6248364 () Bool)

(assert (=> b!5192657 m!6248364))

(declare-fun m!6248366 () Bool)

(assert (=> b!5192656 m!6248366))

(declare-fun m!6248368 () Bool)

(assert (=> b!5192651 m!6248368))

(declare-fun m!6248370 () Bool)

(assert (=> b!5192646 m!6248370))

(declare-fun m!6248372 () Bool)

(assert (=> b!5192661 m!6248372))

(declare-fun m!6248374 () Bool)

(assert (=> b!5192661 m!6248374))

(declare-fun m!6248376 () Bool)

(assert (=> b!5192661 m!6248376))

(push 1)

(assert tp_is_empty!38725)

(assert (not b!5192661))

(assert (not b!5192649))

(assert (not b!5192653))

(assert (not b!5192651))

(assert (not b!5192656))

(assert (not setNonEmpty!32803))

(assert (not b!5192660))

(assert (not start!549556))

(assert (not b!5192655))

(assert (not b!5192647))

(assert (not b!5192648))

(assert (not b!5192652))

(assert (not b!5192646))

(assert (not b!5192657))

(assert (not b!5192659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

