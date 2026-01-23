; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684646 () Bool)

(assert start!684646)

(declare-fun b!7057221 () Bool)

(assert (=> b!7057221 true))

(declare-fun b!7057224 () Bool)

(assert (=> b!7057224 true))

(declare-fun b!7057230 () Bool)

(assert (=> b!7057230 true))

(declare-fun b!7057219 () Bool)

(declare-fun res!2881157 () Bool)

(declare-fun e!4242713 () Bool)

(assert (=> b!7057219 (=> res!2881157 e!4242713)))

(declare-datatypes ((C!35434 0))(
  ( (C!35435 (val!27419 Int)) )
))
(declare-datatypes ((Regex!17582 0))(
  ( (ElementMatch!17582 (c!1314943 C!35434)) (Concat!26427 (regOne!35676 Regex!17582) (regTwo!35676 Regex!17582)) (EmptyExpr!17582) (Star!17582 (reg!17911 Regex!17582)) (EmptyLang!17582) (Union!17582 (regOne!35677 Regex!17582) (regTwo!35677 Regex!17582)) )
))
(declare-datatypes ((List!68272 0))(
  ( (Nil!68148) (Cons!68148 (h!74596 Regex!17582) (t!382051 List!68272)) )
))
(declare-datatypes ((Context!13156 0))(
  ( (Context!13157 (exprs!7078 List!68272)) )
))
(declare-fun lt!2533555 () Context!13156)

(declare-fun lt!2533566 () (Set Context!13156))

(assert (=> b!7057219 (= res!2881157 (not (set.member lt!2533555 lt!2533566)))))

(declare-fun b!7057220 () Bool)

(declare-fun e!4242710 () Bool)

(declare-fun tp_is_empty!44389 () Bool)

(declare-fun tp!1940479 () Bool)

(assert (=> b!7057220 (= e!4242710 (and tp_is_empty!44389 tp!1940479))))

(declare-fun e!4242706 () Bool)

(assert (=> b!7057221 (= e!4242706 (not e!4242713))))

(declare-fun res!2881166 () Bool)

(assert (=> b!7057221 (=> res!2881166 e!4242713)))

(declare-fun lt!2533558 () (Set Context!13156))

(declare-datatypes ((List!68273 0))(
  ( (Nil!68149) (Cons!68149 (h!74597 C!35434) (t!382052 List!68273)) )
))
(declare-fun s!7408 () List!68273)

(declare-fun matchZipper!3122 ((Set Context!13156) List!68273) Bool)

(assert (=> b!7057221 (= res!2881166 (not (matchZipper!3122 lt!2533558 s!7408)))))

(assert (=> b!7057221 (= lt!2533558 (set.insert lt!2533555 (as set.empty (Set Context!13156))))))

(declare-fun lambda!421033 () Int)

(declare-fun getWitness!1653 ((Set Context!13156) Int) Context!13156)

(assert (=> b!7057221 (= lt!2533555 (getWitness!1653 lt!2533566 lambda!421033))))

(declare-datatypes ((List!68274 0))(
  ( (Nil!68150) (Cons!68150 (h!74598 Context!13156) (t!382053 List!68274)) )
))
(declare-fun lt!2533560 () List!68274)

(declare-fun exists!3579 (List!68274 Int) Bool)

(assert (=> b!7057221 (exists!3579 lt!2533560 lambda!421033)))

(declare-datatypes ((Unit!161837 0))(
  ( (Unit!161838) )
))
(declare-fun lt!2533554 () Unit!161837)

(declare-fun lemmaZipperMatchesExistsMatchingContext!503 (List!68274 List!68273) Unit!161837)

(assert (=> b!7057221 (= lt!2533554 (lemmaZipperMatchesExistsMatchingContext!503 lt!2533560 s!7408))))

(declare-fun toList!10923 ((Set Context!13156)) List!68274)

(assert (=> b!7057221 (= lt!2533560 (toList!10923 lt!2533566))))

(declare-fun b!7057222 () Bool)

(declare-fun e!4242702 () Bool)

(declare-fun e!4242700 () Bool)

(assert (=> b!7057222 (= e!4242702 e!4242700)))

(declare-fun res!2881161 () Bool)

(assert (=> b!7057222 (=> res!2881161 e!4242700)))

(declare-fun e!4242709 () Bool)

(assert (=> b!7057222 (= res!2881161 e!4242709)))

(declare-fun res!2881155 () Bool)

(assert (=> b!7057222 (=> (not res!2881155) (not e!4242709))))

(declare-fun lt!2533537 () Bool)

(declare-fun lt!2533532 () Bool)

(assert (=> b!7057222 (= res!2881155 (not (= lt!2533537 lt!2533532)))))

(declare-fun lt!2533551 () (Set Context!13156))

(assert (=> b!7057222 (= lt!2533537 (matchZipper!3122 lt!2533551 (t!382052 s!7408)))))

(declare-fun lt!2533549 () List!68272)

(declare-fun lt!2533536 () Unit!161837)

(declare-fun lambda!421035 () Int)

(declare-fun ct2!306 () Context!13156)

(declare-fun lemmaConcatPreservesForall!893 (List!68272 List!68272 Int) Unit!161837)

(assert (=> b!7057222 (= lt!2533536 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533533 () (Set Context!13156))

(declare-fun e!4242708 () Bool)

(assert (=> b!7057222 (= (matchZipper!3122 lt!2533533 (t!382052 s!7408)) e!4242708)))

(declare-fun res!2881172 () Bool)

(assert (=> b!7057222 (=> res!2881172 e!4242708)))

(assert (=> b!7057222 (= res!2881172 lt!2533532)))

(declare-fun lt!2533571 () (Set Context!13156))

(assert (=> b!7057222 (= lt!2533532 (matchZipper!3122 lt!2533571 (t!382052 s!7408)))))

(declare-fun lt!2533562 () Unit!161837)

(declare-fun lt!2533531 () (Set Context!13156))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1595 ((Set Context!13156) (Set Context!13156) List!68273) Unit!161837)

(assert (=> b!7057222 (= lt!2533562 (lemmaZipperConcatMatchesSameAsBothZippers!1595 lt!2533571 lt!2533531 (t!382052 s!7408)))))

(declare-fun lt!2533546 () Unit!161837)

(assert (=> b!7057222 (= lt!2533546 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533561 () Unit!161837)

(assert (=> b!7057222 (= lt!2533561 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun b!7057223 () Bool)

(declare-fun e!4242707 () Bool)

(declare-fun e!4242711 () Bool)

(assert (=> b!7057223 (= e!4242707 e!4242711)))

(declare-fun res!2881153 () Bool)

(assert (=> b!7057223 (=> res!2881153 e!4242711)))

(declare-fun lt!2533538 () (Set Context!13156))

(assert (=> b!7057223 (= res!2881153 (not (= lt!2533538 lt!2533558)))))

(declare-fun lt!2533553 () Context!13156)

(assert (=> b!7057223 (= lt!2533538 (set.insert lt!2533553 (as set.empty (Set Context!13156))))))

(declare-fun lt!2533572 () Context!13156)

(declare-fun lt!2533557 () Unit!161837)

(assert (=> b!7057223 (= lt!2533557 (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533572) (exprs!7078 ct2!306) lambda!421035))))

(assert (=> b!7057224 (= e!4242713 e!4242707)))

(declare-fun res!2881165 () Bool)

(assert (=> b!7057224 (=> res!2881165 e!4242707)))

(declare-fun z1!570 () (Set Context!13156))

(assert (=> b!7057224 (= res!2881165 (or (not (= lt!2533553 lt!2533555)) (not (set.member lt!2533572 z1!570))))))

(declare-fun ++!15665 (List!68272 List!68272) List!68272)

(assert (=> b!7057224 (= lt!2533553 (Context!13157 (++!15665 (exprs!7078 lt!2533572) (exprs!7078 ct2!306))))))

(declare-fun lt!2533547 () Unit!161837)

(assert (=> b!7057224 (= lt!2533547 (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533572) (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lambda!421034 () Int)

(declare-fun mapPost2!411 ((Set Context!13156) Int Context!13156) Context!13156)

(assert (=> b!7057224 (= lt!2533572 (mapPost2!411 z1!570 lambda!421034 lt!2533555))))

(declare-fun res!2881160 () Bool)

(assert (=> start!684646 (=> (not res!2881160) (not e!4242706))))

(assert (=> start!684646 (= res!2881160 (matchZipper!3122 lt!2533566 s!7408))))

(declare-fun appendTo!703 ((Set Context!13156) Context!13156) (Set Context!13156))

(assert (=> start!684646 (= lt!2533566 (appendTo!703 z1!570 ct2!306))))

(assert (=> start!684646 e!4242706))

(declare-fun condSetEmpty!49912 () Bool)

(assert (=> start!684646 (= condSetEmpty!49912 (= z1!570 (as set.empty (Set Context!13156))))))

(declare-fun setRes!49912 () Bool)

(assert (=> start!684646 setRes!49912))

(declare-fun e!4242698 () Bool)

(declare-fun inv!86815 (Context!13156) Bool)

(assert (=> start!684646 (and (inv!86815 ct2!306) e!4242698)))

(assert (=> start!684646 e!4242710))

(declare-fun b!7057225 () Bool)

(declare-fun e!4242705 () Bool)

(declare-fun e!4242701 () Bool)

(assert (=> b!7057225 (= e!4242705 e!4242701)))

(declare-fun res!2881164 () Bool)

(assert (=> b!7057225 (=> res!2881164 e!4242701)))

(declare-fun lt!2533573 () Int)

(declare-fun lt!2533545 () Context!13156)

(declare-fun contextDepthTotal!518 (Context!13156) Int)

(assert (=> b!7057225 (= res!2881164 (<= lt!2533573 (contextDepthTotal!518 lt!2533545)))))

(declare-fun lt!2533541 () Int)

(assert (=> b!7057225 (<= lt!2533573 lt!2533541)))

(declare-fun lt!2533529 () List!68274)

(declare-fun zipperDepthTotal!547 (List!68274) Int)

(assert (=> b!7057225 (= lt!2533541 (zipperDepthTotal!547 lt!2533529))))

(assert (=> b!7057225 (= lt!2533573 (contextDepthTotal!518 lt!2533572))))

(declare-fun lt!2533548 () Unit!161837)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!85 (List!68274 Context!13156) Unit!161837)

(assert (=> b!7057225 (= lt!2533548 (lemmaTotalDepthZipperLargerThanOfAnyContext!85 lt!2533529 lt!2533572))))

(assert (=> b!7057225 (= lt!2533529 (toList!10923 z1!570))))

(declare-fun lt!2533528 () Unit!161837)

(assert (=> b!7057225 (= lt!2533528 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533556 () Unit!161837)

(assert (=> b!7057225 (= lt!2533556 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533570 () Unit!161837)

(assert (=> b!7057225 (= lt!2533570 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533540 () (Set Context!13156))

(declare-fun lambda!421036 () Int)

(declare-fun flatMap!2508 ((Set Context!13156) Int) (Set Context!13156))

(declare-fun derivationStepZipperUp!2166 (Context!13156 C!35434) (Set Context!13156))

(assert (=> b!7057225 (= (flatMap!2508 lt!2533540 lambda!421036) (derivationStepZipperUp!2166 lt!2533545 (h!74597 s!7408)))))

(declare-fun lt!2533565 () Unit!161837)

(declare-fun lemmaFlatMapOnSingletonSet!2017 ((Set Context!13156) Context!13156 Int) Unit!161837)

(assert (=> b!7057225 (= lt!2533565 (lemmaFlatMapOnSingletonSet!2017 lt!2533540 lt!2533545 lambda!421036))))

(declare-fun map!15906 ((Set Context!13156) Int) (Set Context!13156))

(assert (=> b!7057225 (= (map!15906 lt!2533540 lambda!421034) (set.insert (Context!13157 (++!15665 lt!2533549 (exprs!7078 ct2!306))) (as set.empty (Set Context!13156))))))

(declare-fun lt!2533567 () Unit!161837)

(assert (=> b!7057225 (= lt!2533567 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533574 () Unit!161837)

(declare-fun lemmaMapOnSingletonSet!399 ((Set Context!13156) Context!13156 Int) Unit!161837)

(assert (=> b!7057225 (= lt!2533574 (lemmaMapOnSingletonSet!399 lt!2533540 lt!2533545 lambda!421034))))

(assert (=> b!7057225 (= lt!2533540 (set.insert lt!2533545 (as set.empty (Set Context!13156))))))

(declare-fun setElem!49912 () Context!13156)

(declare-fun tp!1940480 () Bool)

(declare-fun setNonEmpty!49912 () Bool)

(declare-fun e!4242704 () Bool)

(assert (=> setNonEmpty!49912 (= setRes!49912 (and tp!1940480 (inv!86815 setElem!49912) e!4242704))))

(declare-fun setRest!49912 () (Set Context!13156))

(assert (=> setNonEmpty!49912 (= z1!570 (set.union (set.insert setElem!49912 (as set.empty (Set Context!13156))) setRest!49912))))

(declare-fun setIsEmpty!49912 () Bool)

(assert (=> setIsEmpty!49912 setRes!49912))

(declare-fun b!7057226 () Bool)

(declare-fun e!4242697 () Bool)

(declare-fun e!4242699 () Bool)

(assert (=> b!7057226 (= e!4242697 e!4242699)))

(declare-fun res!2881162 () Bool)

(assert (=> b!7057226 (=> res!2881162 e!4242699)))

(declare-fun nullable!7265 (Regex!17582) Bool)

(assert (=> b!7057226 (= res!2881162 (not (nullable!7265 (h!74596 (exprs!7078 lt!2533572)))))))

(assert (=> b!7057226 (= lt!2533545 (Context!13157 lt!2533549))))

(declare-fun tail!13721 (List!68272) List!68272)

(assert (=> b!7057226 (= lt!2533549 (tail!13721 (exprs!7078 lt!2533572)))))

(declare-fun b!7057227 () Bool)

(declare-fun tp!1940481 () Bool)

(assert (=> b!7057227 (= e!4242704 tp!1940481)))

(declare-fun b!7057228 () Bool)

(declare-fun res!2881158 () Bool)

(assert (=> b!7057228 (=> res!2881158 e!4242700)))

(assert (=> b!7057228 (= res!2881158 (not lt!2533537))))

(declare-fun b!7057229 () Bool)

(assert (=> b!7057229 (= e!4242709 (not (matchZipper!3122 lt!2533531 (t!382052 s!7408))))))

(declare-fun lt!2533542 () Unit!161837)

(assert (=> b!7057229 (= lt!2533542 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(assert (=> b!7057230 (= e!4242711 e!4242697)))

(declare-fun res!2881167 () Bool)

(assert (=> b!7057230 (=> res!2881167 e!4242697)))

(declare-fun derivationStepZipper!3032 ((Set Context!13156) C!35434) (Set Context!13156))

(assert (=> b!7057230 (= res!2881167 (not (= (derivationStepZipper!3032 lt!2533538 (h!74597 s!7408)) lt!2533551)))))

(assert (=> b!7057230 (= (flatMap!2508 lt!2533538 lambda!421036) (derivationStepZipperUp!2166 lt!2533553 (h!74597 s!7408)))))

(declare-fun lt!2533539 () Unit!161837)

(assert (=> b!7057230 (= lt!2533539 (lemmaFlatMapOnSingletonSet!2017 lt!2533538 lt!2533553 lambda!421036))))

(assert (=> b!7057230 (= lt!2533551 (derivationStepZipperUp!2166 lt!2533553 (h!74597 s!7408)))))

(declare-fun lt!2533563 () Unit!161837)

(assert (=> b!7057230 (= lt!2533563 (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533572) (exprs!7078 ct2!306) lambda!421035))))

(declare-fun b!7057231 () Bool)

(declare-fun e!4242703 () Bool)

(declare-fun e!4242712 () Bool)

(assert (=> b!7057231 (= e!4242703 e!4242712)))

(declare-fun res!2881159 () Bool)

(assert (=> b!7057231 (=> res!2881159 e!4242712)))

(declare-fun lt!2533559 () (Set Context!13156))

(assert (=> b!7057231 (= res!2881159 (not (= (derivationStepZipper!3032 lt!2533559 (h!74597 s!7408)) lt!2533531)))))

(declare-fun lt!2533564 () Unit!161837)

(assert (=> b!7057231 (= lt!2533564 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533535 () Unit!161837)

(assert (=> b!7057231 (= lt!2533535 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533543 () Context!13156)

(assert (=> b!7057231 (= (flatMap!2508 lt!2533559 lambda!421036) (derivationStepZipperUp!2166 lt!2533543 (h!74597 s!7408)))))

(declare-fun lt!2533568 () Unit!161837)

(assert (=> b!7057231 (= lt!2533568 (lemmaFlatMapOnSingletonSet!2017 lt!2533559 lt!2533543 lambda!421036))))

(assert (=> b!7057231 (= lt!2533559 (set.insert lt!2533543 (as set.empty (Set Context!13156))))))

(declare-fun lt!2533569 () Unit!161837)

(assert (=> b!7057231 (= lt!2533569 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533552 () Unit!161837)

(assert (=> b!7057231 (= lt!2533552 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun b!7057232 () Bool)

(declare-fun res!2881154 () Bool)

(assert (=> b!7057232 (=> res!2881154 e!4242697)))

(declare-fun isEmpty!39749 (List!68272) Bool)

(assert (=> b!7057232 (= res!2881154 (isEmpty!39749 (exprs!7078 lt!2533572)))))

(declare-fun b!7057233 () Bool)

(assert (=> b!7057233 (= e!4242708 (matchZipper!3122 lt!2533531 (t!382052 s!7408)))))

(declare-fun b!7057234 () Bool)

(declare-fun tp!1940482 () Bool)

(assert (=> b!7057234 (= e!4242698 tp!1940482)))

(declare-fun b!7057235 () Bool)

(assert (=> b!7057235 (= e!4242700 e!4242703)))

(declare-fun res!2881168 () Bool)

(assert (=> b!7057235 (=> res!2881168 e!4242703)))

(assert (=> b!7057235 (= res!2881168 (not (matchZipper!3122 lt!2533531 (t!382052 s!7408))))))

(declare-fun lt!2533530 () Unit!161837)

(assert (=> b!7057235 (= lt!2533530 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun b!7057236 () Bool)

(declare-fun res!2881169 () Bool)

(assert (=> b!7057236 (=> (not res!2881169) (not e!4242706))))

(assert (=> b!7057236 (= res!2881169 (is-Cons!68149 s!7408))))

(declare-fun b!7057237 () Bool)

(assert (=> b!7057237 (= e!4242701 (matchZipper!3122 (appendTo!703 lt!2533540 ct2!306) s!7408))))

(declare-fun b!7057238 () Bool)

(assert (=> b!7057238 (= e!4242712 e!4242705)))

(declare-fun res!2881170 () Bool)

(assert (=> b!7057238 (=> res!2881170 e!4242705)))

(assert (=> b!7057238 (= res!2881170 (not (matchZipper!3122 lt!2533559 s!7408)))))

(declare-fun lt!2533534 () Unit!161837)

(assert (=> b!7057238 (= lt!2533534 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun b!7057239 () Bool)

(declare-fun res!2881156 () Bool)

(assert (=> b!7057239 (=> res!2881156 e!4242697)))

(assert (=> b!7057239 (= res!2881156 (not (is-Cons!68148 (exprs!7078 lt!2533572))))))

(declare-fun b!7057240 () Bool)

(declare-fun res!2881163 () Bool)

(assert (=> b!7057240 (=> res!2881163 e!4242701)))

(assert (=> b!7057240 (= res!2881163 (>= (zipperDepthTotal!547 (Cons!68150 lt!2533545 Nil!68150)) lt!2533541))))

(declare-fun b!7057241 () Bool)

(assert (=> b!7057241 (= e!4242699 e!4242702)))

(declare-fun res!2881171 () Bool)

(assert (=> b!7057241 (=> res!2881171 e!4242702)))

(assert (=> b!7057241 (= res!2881171 (not (= lt!2533551 lt!2533533)))))

(assert (=> b!7057241 (= lt!2533533 (set.union lt!2533571 lt!2533531))))

(assert (=> b!7057241 (= lt!2533531 (derivationStepZipperUp!2166 lt!2533543 (h!74597 s!7408)))))

(declare-fun derivationStepZipperDown!2216 (Regex!17582 Context!13156 C!35434) (Set Context!13156))

(assert (=> b!7057241 (= lt!2533571 (derivationStepZipperDown!2216 (h!74596 (exprs!7078 lt!2533572)) lt!2533543 (h!74597 s!7408)))))

(assert (=> b!7057241 (= lt!2533543 (Context!13157 (++!15665 lt!2533549 (exprs!7078 ct2!306))))))

(declare-fun lt!2533550 () Unit!161837)

(assert (=> b!7057241 (= lt!2533550 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(declare-fun lt!2533544 () Unit!161837)

(assert (=> b!7057241 (= lt!2533544 (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(assert (= (and start!684646 res!2881160) b!7057236))

(assert (= (and b!7057236 res!2881169) b!7057221))

(assert (= (and b!7057221 (not res!2881166)) b!7057219))

(assert (= (and b!7057219 (not res!2881157)) b!7057224))

(assert (= (and b!7057224 (not res!2881165)) b!7057223))

(assert (= (and b!7057223 (not res!2881153)) b!7057230))

(assert (= (and b!7057230 (not res!2881167)) b!7057239))

(assert (= (and b!7057239 (not res!2881156)) b!7057232))

(assert (= (and b!7057232 (not res!2881154)) b!7057226))

(assert (= (and b!7057226 (not res!2881162)) b!7057241))

(assert (= (and b!7057241 (not res!2881171)) b!7057222))

(assert (= (and b!7057222 (not res!2881172)) b!7057233))

(assert (= (and b!7057222 res!2881155) b!7057229))

(assert (= (and b!7057222 (not res!2881161)) b!7057228))

(assert (= (and b!7057228 (not res!2881158)) b!7057235))

(assert (= (and b!7057235 (not res!2881168)) b!7057231))

(assert (= (and b!7057231 (not res!2881159)) b!7057238))

(assert (= (and b!7057238 (not res!2881170)) b!7057225))

(assert (= (and b!7057225 (not res!2881164)) b!7057240))

(assert (= (and b!7057240 (not res!2881163)) b!7057237))

(assert (= (and start!684646 condSetEmpty!49912) setIsEmpty!49912))

(assert (= (and start!684646 (not condSetEmpty!49912)) setNonEmpty!49912))

(assert (= setNonEmpty!49912 b!7057227))

(assert (= start!684646 b!7057234))

(assert (= (and start!684646 (is-Cons!68149 s!7408)) b!7057220))

(declare-fun m!7775690 () Bool)

(assert (=> b!7057233 m!7775690))

(declare-fun m!7775692 () Bool)

(assert (=> b!7057222 m!7775692))

(declare-fun m!7775694 () Bool)

(assert (=> b!7057222 m!7775694))

(declare-fun m!7775696 () Bool)

(assert (=> b!7057222 m!7775696))

(declare-fun m!7775698 () Bool)

(assert (=> b!7057222 m!7775698))

(assert (=> b!7057222 m!7775692))

(declare-fun m!7775700 () Bool)

(assert (=> b!7057222 m!7775700))

(assert (=> b!7057222 m!7775692))

(declare-fun m!7775702 () Bool)

(assert (=> b!7057231 m!7775702))

(assert (=> b!7057231 m!7775692))

(declare-fun m!7775704 () Bool)

(assert (=> b!7057231 m!7775704))

(declare-fun m!7775706 () Bool)

(assert (=> b!7057231 m!7775706))

(declare-fun m!7775708 () Bool)

(assert (=> b!7057231 m!7775708))

(assert (=> b!7057231 m!7775692))

(assert (=> b!7057231 m!7775692))

(assert (=> b!7057231 m!7775692))

(declare-fun m!7775710 () Bool)

(assert (=> b!7057231 m!7775710))

(assert (=> b!7057235 m!7775690))

(assert (=> b!7057235 m!7775692))

(declare-fun m!7775712 () Bool)

(assert (=> b!7057219 m!7775712))

(declare-fun m!7775714 () Bool)

(assert (=> b!7057225 m!7775714))

(assert (=> b!7057225 m!7775692))

(declare-fun m!7775716 () Bool)

(assert (=> b!7057225 m!7775716))

(declare-fun m!7775718 () Bool)

(assert (=> b!7057225 m!7775718))

(declare-fun m!7775720 () Bool)

(assert (=> b!7057225 m!7775720))

(declare-fun m!7775722 () Bool)

(assert (=> b!7057225 m!7775722))

(declare-fun m!7775724 () Bool)

(assert (=> b!7057225 m!7775724))

(declare-fun m!7775726 () Bool)

(assert (=> b!7057225 m!7775726))

(declare-fun m!7775728 () Bool)

(assert (=> b!7057225 m!7775728))

(declare-fun m!7775730 () Bool)

(assert (=> b!7057225 m!7775730))

(declare-fun m!7775732 () Bool)

(assert (=> b!7057225 m!7775732))

(declare-fun m!7775734 () Bool)

(assert (=> b!7057225 m!7775734))

(declare-fun m!7775736 () Bool)

(assert (=> b!7057225 m!7775736))

(assert (=> b!7057225 m!7775692))

(declare-fun m!7775738 () Bool)

(assert (=> b!7057225 m!7775738))

(assert (=> b!7057225 m!7775692))

(assert (=> b!7057225 m!7775692))

(declare-fun m!7775740 () Bool)

(assert (=> b!7057240 m!7775740))

(assert (=> b!7057229 m!7775690))

(assert (=> b!7057229 m!7775692))

(declare-fun m!7775742 () Bool)

(assert (=> setNonEmpty!49912 m!7775742))

(declare-fun m!7775744 () Bool)

(assert (=> b!7057230 m!7775744))

(declare-fun m!7775746 () Bool)

(assert (=> b!7057230 m!7775746))

(declare-fun m!7775748 () Bool)

(assert (=> b!7057230 m!7775748))

(declare-fun m!7775750 () Bool)

(assert (=> b!7057230 m!7775750))

(declare-fun m!7775752 () Bool)

(assert (=> b!7057230 m!7775752))

(declare-fun m!7775754 () Bool)

(assert (=> b!7057224 m!7775754))

(declare-fun m!7775756 () Bool)

(assert (=> b!7057224 m!7775756))

(assert (=> b!7057224 m!7775744))

(declare-fun m!7775758 () Bool)

(assert (=> b!7057224 m!7775758))

(declare-fun m!7775760 () Bool)

(assert (=> b!7057237 m!7775760))

(assert (=> b!7057237 m!7775760))

(declare-fun m!7775762 () Bool)

(assert (=> b!7057237 m!7775762))

(declare-fun m!7775764 () Bool)

(assert (=> b!7057223 m!7775764))

(assert (=> b!7057223 m!7775744))

(declare-fun m!7775766 () Bool)

(assert (=> b!7057232 m!7775766))

(declare-fun m!7775768 () Bool)

(assert (=> b!7057221 m!7775768))

(declare-fun m!7775770 () Bool)

(assert (=> b!7057221 m!7775770))

(declare-fun m!7775772 () Bool)

(assert (=> b!7057221 m!7775772))

(declare-fun m!7775774 () Bool)

(assert (=> b!7057221 m!7775774))

(declare-fun m!7775776 () Bool)

(assert (=> b!7057221 m!7775776))

(declare-fun m!7775778 () Bool)

(assert (=> b!7057221 m!7775778))

(declare-fun m!7775780 () Bool)

(assert (=> b!7057226 m!7775780))

(declare-fun m!7775782 () Bool)

(assert (=> b!7057226 m!7775782))

(assert (=> b!7057241 m!7775736))

(assert (=> b!7057241 m!7775706))

(declare-fun m!7775784 () Bool)

(assert (=> b!7057241 m!7775784))

(assert (=> b!7057241 m!7775692))

(assert (=> b!7057241 m!7775692))

(declare-fun m!7775786 () Bool)

(assert (=> b!7057238 m!7775786))

(assert (=> b!7057238 m!7775692))

(declare-fun m!7775788 () Bool)

(assert (=> start!684646 m!7775788))

(declare-fun m!7775790 () Bool)

(assert (=> start!684646 m!7775790))

(declare-fun m!7775792 () Bool)

(assert (=> start!684646 m!7775792))

(push 1)

(assert (not b!7057221))

(assert (not setNonEmpty!49912))

(assert (not b!7057237))

(assert (not b!7057240))

(assert tp_is_empty!44389)

(assert (not b!7057220))

(assert (not b!7057238))

(assert (not b!7057229))

(assert (not b!7057241))

(assert (not b!7057234))

(assert (not start!684646))

(assert (not b!7057226))

(assert (not b!7057231))

(assert (not b!7057230))

(assert (not b!7057235))

(assert (not b!7057224))

(assert (not b!7057222))

(assert (not b!7057232))

(assert (not b!7057225))

(assert (not b!7057223))

(assert (not b!7057233))

(assert (not b!7057227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7057332 () Bool)

(declare-fun e!4242770 () List!68272)

(assert (=> b!7057332 (= e!4242770 (Cons!68148 (h!74596 (exprs!7078 lt!2533572)) (++!15665 (t!382051 (exprs!7078 lt!2533572)) (exprs!7078 ct2!306))))))

(declare-fun lt!2533722 () List!68272)

(declare-fun e!4242769 () Bool)

(declare-fun b!7057334 () Bool)

(assert (=> b!7057334 (= e!4242769 (or (not (= (exprs!7078 ct2!306) Nil!68148)) (= lt!2533722 (exprs!7078 lt!2533572))))))

(declare-fun b!7057333 () Bool)

(declare-fun res!2881239 () Bool)

(assert (=> b!7057333 (=> (not res!2881239) (not e!4242769))))

(declare-fun size!41159 (List!68272) Int)

(assert (=> b!7057333 (= res!2881239 (= (size!41159 lt!2533722) (+ (size!41159 (exprs!7078 lt!2533572)) (size!41159 (exprs!7078 ct2!306)))))))

(declare-fun d!2205621 () Bool)

(assert (=> d!2205621 e!4242769))

(declare-fun res!2881238 () Bool)

(assert (=> d!2205621 (=> (not res!2881238) (not e!4242769))))

(declare-fun content!13700 (List!68272) (Set Regex!17582))

(assert (=> d!2205621 (= res!2881238 (= (content!13700 lt!2533722) (set.union (content!13700 (exprs!7078 lt!2533572)) (content!13700 (exprs!7078 ct2!306)))))))

(assert (=> d!2205621 (= lt!2533722 e!4242770)))

(declare-fun c!1314961 () Bool)

(assert (=> d!2205621 (= c!1314961 (is-Nil!68148 (exprs!7078 lt!2533572)))))

(assert (=> d!2205621 (= (++!15665 (exprs!7078 lt!2533572) (exprs!7078 ct2!306)) lt!2533722)))

(declare-fun b!7057331 () Bool)

(assert (=> b!7057331 (= e!4242770 (exprs!7078 ct2!306))))

(assert (= (and d!2205621 c!1314961) b!7057331))

(assert (= (and d!2205621 (not c!1314961)) b!7057332))

(assert (= (and d!2205621 res!2881238) b!7057333))

(assert (= (and b!7057333 res!2881239) b!7057334))

(declare-fun m!7775898 () Bool)

(assert (=> b!7057332 m!7775898))

(declare-fun m!7775900 () Bool)

(assert (=> b!7057333 m!7775900))

(declare-fun m!7775902 () Bool)

(assert (=> b!7057333 m!7775902))

(declare-fun m!7775904 () Bool)

(assert (=> b!7057333 m!7775904))

(declare-fun m!7775906 () Bool)

(assert (=> d!2205621 m!7775906))

(declare-fun m!7775908 () Bool)

(assert (=> d!2205621 m!7775908))

(declare-fun m!7775910 () Bool)

(assert (=> d!2205621 m!7775910))

(assert (=> b!7057224 d!2205621))

(declare-fun d!2205623 () Bool)

(declare-fun forall!16533 (List!68272 Int) Bool)

(assert (=> d!2205623 (forall!16533 (++!15665 (exprs!7078 lt!2533572) (exprs!7078 ct2!306)) lambda!421035)))

(declare-fun lt!2533725 () Unit!161837)

(declare-fun choose!53867 (List!68272 List!68272 Int) Unit!161837)

(assert (=> d!2205623 (= lt!2533725 (choose!53867 (exprs!7078 lt!2533572) (exprs!7078 ct2!306) lambda!421035))))

(assert (=> d!2205623 (forall!16533 (exprs!7078 lt!2533572) lambda!421035)))

(assert (=> d!2205623 (= (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533572) (exprs!7078 ct2!306) lambda!421035) lt!2533725)))

(declare-fun bs!1877326 () Bool)

(assert (= bs!1877326 d!2205623))

(assert (=> bs!1877326 m!7775756))

(assert (=> bs!1877326 m!7775756))

(declare-fun m!7775912 () Bool)

(assert (=> bs!1877326 m!7775912))

(declare-fun m!7775914 () Bool)

(assert (=> bs!1877326 m!7775914))

(declare-fun m!7775916 () Bool)

(assert (=> bs!1877326 m!7775916))

(assert (=> b!7057224 d!2205623))

(declare-fun d!2205625 () Bool)

(declare-fun e!4242773 () Bool)

(assert (=> d!2205625 e!4242773))

(declare-fun res!2881242 () Bool)

(assert (=> d!2205625 (=> (not res!2881242) (not e!4242773))))

(declare-fun lt!2533728 () Context!13156)

(declare-fun dynLambda!27668 (Int Context!13156) Context!13156)

(assert (=> d!2205625 (= res!2881242 (= lt!2533555 (dynLambda!27668 lambda!421034 lt!2533728)))))

(declare-fun choose!53868 ((Set Context!13156) Int Context!13156) Context!13156)

(assert (=> d!2205625 (= lt!2533728 (choose!53868 z1!570 lambda!421034 lt!2533555))))

(assert (=> d!2205625 (set.member lt!2533555 (map!15906 z1!570 lambda!421034))))

(assert (=> d!2205625 (= (mapPost2!411 z1!570 lambda!421034 lt!2533555) lt!2533728)))

(declare-fun b!7057338 () Bool)

(assert (=> b!7057338 (= e!4242773 (set.member lt!2533728 z1!570))))

(assert (= (and d!2205625 res!2881242) b!7057338))

(declare-fun b_lambda!268867 () Bool)

(assert (=> (not b_lambda!268867) (not d!2205625)))

(declare-fun m!7775918 () Bool)

(assert (=> d!2205625 m!7775918))

(declare-fun m!7775920 () Bool)

(assert (=> d!2205625 m!7775920))

(declare-fun m!7775922 () Bool)

(assert (=> d!2205625 m!7775922))

(declare-fun m!7775924 () Bool)

(assert (=> d!2205625 m!7775924))

(declare-fun m!7775926 () Bool)

(assert (=> b!7057338 m!7775926))

(assert (=> b!7057224 d!2205625))

(declare-fun d!2205627 () Bool)

(declare-fun c!1314964 () Bool)

(declare-fun isEmpty!39751 (List!68273) Bool)

(assert (=> d!2205627 (= c!1314964 (isEmpty!39751 (t!382052 s!7408)))))

(declare-fun e!4242776 () Bool)

(assert (=> d!2205627 (= (matchZipper!3122 lt!2533531 (t!382052 s!7408)) e!4242776)))

(declare-fun b!7057343 () Bool)

(declare-fun nullableZipper!2666 ((Set Context!13156)) Bool)

(assert (=> b!7057343 (= e!4242776 (nullableZipper!2666 lt!2533531))))

(declare-fun b!7057344 () Bool)

(declare-fun head!14367 (List!68273) C!35434)

(declare-fun tail!13723 (List!68273) List!68273)

(assert (=> b!7057344 (= e!4242776 (matchZipper!3122 (derivationStepZipper!3032 lt!2533531 (head!14367 (t!382052 s!7408))) (tail!13723 (t!382052 s!7408))))))

(assert (= (and d!2205627 c!1314964) b!7057343))

(assert (= (and d!2205627 (not c!1314964)) b!7057344))

(declare-fun m!7775928 () Bool)

(assert (=> d!2205627 m!7775928))

(declare-fun m!7775930 () Bool)

(assert (=> b!7057343 m!7775930))

(declare-fun m!7775932 () Bool)

(assert (=> b!7057344 m!7775932))

(assert (=> b!7057344 m!7775932))

(declare-fun m!7775934 () Bool)

(assert (=> b!7057344 m!7775934))

(declare-fun m!7775936 () Bool)

(assert (=> b!7057344 m!7775936))

(assert (=> b!7057344 m!7775934))

(assert (=> b!7057344 m!7775936))

(declare-fun m!7775938 () Bool)

(assert (=> b!7057344 m!7775938))

(assert (=> b!7057233 d!2205627))

(declare-fun d!2205629 () Bool)

(assert (=> d!2205629 (= (isEmpty!39749 (exprs!7078 lt!2533572)) (is-Nil!68148 (exprs!7078 lt!2533572)))))

(assert (=> b!7057232 d!2205629))

(declare-fun b!7057355 () Bool)

(declare-fun e!4242785 () (Set Context!13156))

(declare-fun call!641141 () (Set Context!13156))

(assert (=> b!7057355 (= e!4242785 call!641141)))

(declare-fun b!7057356 () Bool)

(assert (=> b!7057356 (= e!4242785 (as set.empty (Set Context!13156)))))

(declare-fun b!7057357 () Bool)

(declare-fun e!4242783 () (Set Context!13156))

(assert (=> b!7057357 (= e!4242783 e!4242785)))

(declare-fun c!1314969 () Bool)

(assert (=> b!7057357 (= c!1314969 (is-Cons!68148 (exprs!7078 lt!2533545)))))

(declare-fun d!2205631 () Bool)

(declare-fun c!1314970 () Bool)

(declare-fun e!4242784 () Bool)

(assert (=> d!2205631 (= c!1314970 e!4242784)))

(declare-fun res!2881245 () Bool)

(assert (=> d!2205631 (=> (not res!2881245) (not e!4242784))))

(assert (=> d!2205631 (= res!2881245 (is-Cons!68148 (exprs!7078 lt!2533545)))))

(assert (=> d!2205631 (= (derivationStepZipperUp!2166 lt!2533545 (h!74597 s!7408)) e!4242783)))

(declare-fun b!7057358 () Bool)

(assert (=> b!7057358 (= e!4242783 (set.union call!641141 (derivationStepZipperUp!2166 (Context!13157 (t!382051 (exprs!7078 lt!2533545))) (h!74597 s!7408))))))

(declare-fun bm!641136 () Bool)

(assert (=> bm!641136 (= call!641141 (derivationStepZipperDown!2216 (h!74596 (exprs!7078 lt!2533545)) (Context!13157 (t!382051 (exprs!7078 lt!2533545))) (h!74597 s!7408)))))

(declare-fun b!7057359 () Bool)

(assert (=> b!7057359 (= e!4242784 (nullable!7265 (h!74596 (exprs!7078 lt!2533545))))))

(assert (= (and d!2205631 res!2881245) b!7057359))

(assert (= (and d!2205631 c!1314970) b!7057358))

(assert (= (and d!2205631 (not c!1314970)) b!7057357))

(assert (= (and b!7057357 c!1314969) b!7057355))

(assert (= (and b!7057357 (not c!1314969)) b!7057356))

(assert (= (or b!7057358 b!7057355) bm!641136))

(declare-fun m!7775940 () Bool)

(assert (=> b!7057358 m!7775940))

(declare-fun m!7775942 () Bool)

(assert (=> bm!641136 m!7775942))

(declare-fun m!7775944 () Bool)

(assert (=> b!7057359 m!7775944))

(assert (=> b!7057225 d!2205631))

(declare-fun d!2205633 () Bool)

(declare-fun lt!2533731 () Int)

(assert (=> d!2205633 (>= lt!2533731 0)))

(declare-fun e!4242788 () Int)

(assert (=> d!2205633 (= lt!2533731 e!4242788)))

(declare-fun c!1314974 () Bool)

(assert (=> d!2205633 (= c!1314974 (is-Cons!68148 (exprs!7078 lt!2533572)))))

(assert (=> d!2205633 (= (contextDepthTotal!518 lt!2533572) lt!2533731)))

(declare-fun b!7057364 () Bool)

(declare-fun regexDepthTotal!315 (Regex!17582) Int)

(assert (=> b!7057364 (= e!4242788 (+ (regexDepthTotal!315 (h!74596 (exprs!7078 lt!2533572))) (contextDepthTotal!518 (Context!13157 (t!382051 (exprs!7078 lt!2533572))))))))

(declare-fun b!7057365 () Bool)

(assert (=> b!7057365 (= e!4242788 1)))

(assert (= (and d!2205633 c!1314974) b!7057364))

(assert (= (and d!2205633 (not c!1314974)) b!7057365))

(declare-fun m!7775946 () Bool)

(assert (=> b!7057364 m!7775946))

(declare-fun m!7775948 () Bool)

(assert (=> b!7057364 m!7775948))

(assert (=> b!7057225 d!2205633))

(declare-fun d!2205635 () Bool)

(declare-fun e!4242791 () Bool)

(assert (=> d!2205635 e!4242791))

(declare-fun res!2881248 () Bool)

(assert (=> d!2205635 (=> (not res!2881248) (not e!4242791))))

(declare-fun lt!2533734 () List!68274)

(declare-fun noDuplicate!2697 (List!68274) Bool)

(assert (=> d!2205635 (= res!2881248 (noDuplicate!2697 lt!2533734))))

(declare-fun choose!53869 ((Set Context!13156)) List!68274)

(assert (=> d!2205635 (= lt!2533734 (choose!53869 z1!570))))

(assert (=> d!2205635 (= (toList!10923 z1!570) lt!2533734)))

(declare-fun b!7057368 () Bool)

(declare-fun content!13701 (List!68274) (Set Context!13156))

(assert (=> b!7057368 (= e!4242791 (= (content!13701 lt!2533734) z1!570))))

(assert (= (and d!2205635 res!2881248) b!7057368))

(declare-fun m!7775950 () Bool)

(assert (=> d!2205635 m!7775950))

(declare-fun m!7775952 () Bool)

(assert (=> d!2205635 m!7775952))

(declare-fun m!7775954 () Bool)

(assert (=> b!7057368 m!7775954))

(assert (=> b!7057225 d!2205635))

(declare-fun d!2205637 () Bool)

(declare-fun dynLambda!27669 (Int Context!13156) (Set Context!13156))

(assert (=> d!2205637 (= (flatMap!2508 lt!2533540 lambda!421036) (dynLambda!27669 lambda!421036 lt!2533545))))

(declare-fun lt!2533737 () Unit!161837)

(declare-fun choose!53870 ((Set Context!13156) Context!13156 Int) Unit!161837)

(assert (=> d!2205637 (= lt!2533737 (choose!53870 lt!2533540 lt!2533545 lambda!421036))))

(assert (=> d!2205637 (= lt!2533540 (set.insert lt!2533545 (as set.empty (Set Context!13156))))))

(assert (=> d!2205637 (= (lemmaFlatMapOnSingletonSet!2017 lt!2533540 lt!2533545 lambda!421036) lt!2533737)))

(declare-fun b_lambda!268869 () Bool)

(assert (=> (not b_lambda!268869) (not d!2205637)))

(declare-fun bs!1877327 () Bool)

(assert (= bs!1877327 d!2205637))

(assert (=> bs!1877327 m!7775724))

(declare-fun m!7775956 () Bool)

(assert (=> bs!1877327 m!7775956))

(declare-fun m!7775958 () Bool)

(assert (=> bs!1877327 m!7775958))

(assert (=> bs!1877327 m!7775718))

(assert (=> b!7057225 d!2205637))

(declare-fun d!2205639 () Bool)

(declare-fun lt!2533740 () Int)

(assert (=> d!2205639 (>= lt!2533740 0)))

(declare-fun e!4242794 () Int)

(assert (=> d!2205639 (= lt!2533740 e!4242794)))

(declare-fun c!1314977 () Bool)

(assert (=> d!2205639 (= c!1314977 (is-Cons!68150 lt!2533529))))

(assert (=> d!2205639 (= (zipperDepthTotal!547 lt!2533529) lt!2533740)))

(declare-fun b!7057373 () Bool)

(assert (=> b!7057373 (= e!4242794 (+ (contextDepthTotal!518 (h!74598 lt!2533529)) (zipperDepthTotal!547 (t!382053 lt!2533529))))))

(declare-fun b!7057374 () Bool)

(assert (=> b!7057374 (= e!4242794 0)))

(assert (= (and d!2205639 c!1314977) b!7057373))

(assert (= (and d!2205639 (not c!1314977)) b!7057374))

(declare-fun m!7775960 () Bool)

(assert (=> b!7057373 m!7775960))

(declare-fun m!7775962 () Bool)

(assert (=> b!7057373 m!7775962))

(assert (=> b!7057225 d!2205639))

(declare-fun b!7057376 () Bool)

(declare-fun e!4242796 () List!68272)

(assert (=> b!7057376 (= e!4242796 (Cons!68148 (h!74596 lt!2533549) (++!15665 (t!382051 lt!2533549) (exprs!7078 ct2!306))))))

(declare-fun b!7057378 () Bool)

(declare-fun e!4242795 () Bool)

(declare-fun lt!2533741 () List!68272)

(assert (=> b!7057378 (= e!4242795 (or (not (= (exprs!7078 ct2!306) Nil!68148)) (= lt!2533741 lt!2533549)))))

(declare-fun b!7057377 () Bool)

(declare-fun res!2881250 () Bool)

(assert (=> b!7057377 (=> (not res!2881250) (not e!4242795))))

(assert (=> b!7057377 (= res!2881250 (= (size!41159 lt!2533741) (+ (size!41159 lt!2533549) (size!41159 (exprs!7078 ct2!306)))))))

(declare-fun d!2205641 () Bool)

(assert (=> d!2205641 e!4242795))

(declare-fun res!2881249 () Bool)

(assert (=> d!2205641 (=> (not res!2881249) (not e!4242795))))

(assert (=> d!2205641 (= res!2881249 (= (content!13700 lt!2533741) (set.union (content!13700 lt!2533549) (content!13700 (exprs!7078 ct2!306)))))))

(assert (=> d!2205641 (= lt!2533741 e!4242796)))

(declare-fun c!1314978 () Bool)

(assert (=> d!2205641 (= c!1314978 (is-Nil!68148 lt!2533549))))

(assert (=> d!2205641 (= (++!15665 lt!2533549 (exprs!7078 ct2!306)) lt!2533741)))

(declare-fun b!7057375 () Bool)

(assert (=> b!7057375 (= e!4242796 (exprs!7078 ct2!306))))

(assert (= (and d!2205641 c!1314978) b!7057375))

(assert (= (and d!2205641 (not c!1314978)) b!7057376))

(assert (= (and d!2205641 res!2881249) b!7057377))

(assert (= (and b!7057377 res!2881250) b!7057378))

(declare-fun m!7775964 () Bool)

(assert (=> b!7057376 m!7775964))

(declare-fun m!7775966 () Bool)

(assert (=> b!7057377 m!7775966))

(declare-fun m!7775968 () Bool)

(assert (=> b!7057377 m!7775968))

(assert (=> b!7057377 m!7775904))

(declare-fun m!7775970 () Bool)

(assert (=> d!2205641 m!7775970))

(declare-fun m!7775972 () Bool)

(assert (=> d!2205641 m!7775972))

(assert (=> d!2205641 m!7775910))

(assert (=> b!7057225 d!2205641))

(declare-fun d!2205643 () Bool)

(assert (=> d!2205643 (<= (contextDepthTotal!518 lt!2533572) (zipperDepthTotal!547 lt!2533529))))

(declare-fun lt!2533744 () Unit!161837)

(declare-fun choose!53871 (List!68274 Context!13156) Unit!161837)

(assert (=> d!2205643 (= lt!2533744 (choose!53871 lt!2533529 lt!2533572))))

(declare-fun contains!20485 (List!68274 Context!13156) Bool)

(assert (=> d!2205643 (contains!20485 lt!2533529 lt!2533572)))

(assert (=> d!2205643 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!85 lt!2533529 lt!2533572) lt!2533744)))

(declare-fun bs!1877328 () Bool)

(assert (= bs!1877328 d!2205643))

(assert (=> bs!1877328 m!7775716))

(assert (=> bs!1877328 m!7775722))

(declare-fun m!7775974 () Bool)

(assert (=> bs!1877328 m!7775974))

(declare-fun m!7775976 () Bool)

(assert (=> bs!1877328 m!7775976))

(assert (=> b!7057225 d!2205643))

(declare-fun d!2205645 () Bool)

(assert (=> d!2205645 (forall!16533 (++!15665 lt!2533549 (exprs!7078 ct2!306)) lambda!421035)))

(declare-fun lt!2533745 () Unit!161837)

(assert (=> d!2205645 (= lt!2533745 (choose!53867 lt!2533549 (exprs!7078 ct2!306) lambda!421035))))

(assert (=> d!2205645 (forall!16533 lt!2533549 lambda!421035)))

(assert (=> d!2205645 (= (lemmaConcatPreservesForall!893 lt!2533549 (exprs!7078 ct2!306) lambda!421035) lt!2533745)))

(declare-fun bs!1877329 () Bool)

(assert (= bs!1877329 d!2205645))

(assert (=> bs!1877329 m!7775736))

(assert (=> bs!1877329 m!7775736))

(declare-fun m!7775978 () Bool)

(assert (=> bs!1877329 m!7775978))

(declare-fun m!7775980 () Bool)

(assert (=> bs!1877329 m!7775980))

(declare-fun m!7775982 () Bool)

(assert (=> bs!1877329 m!7775982))

(assert (=> b!7057225 d!2205645))

(declare-fun d!2205647 () Bool)

(declare-fun choose!53872 ((Set Context!13156) Int) (Set Context!13156))

(assert (=> d!2205647 (= (map!15906 lt!2533540 lambda!421034) (choose!53872 lt!2533540 lambda!421034))))

(declare-fun bs!1877330 () Bool)

(assert (= bs!1877330 d!2205647))

(declare-fun m!7775984 () Bool)

(assert (=> bs!1877330 m!7775984))

(assert (=> b!7057225 d!2205647))

(declare-fun d!2205649 () Bool)

(declare-fun lt!2533746 () Int)

(assert (=> d!2205649 (>= lt!2533746 0)))

(declare-fun e!4242797 () Int)

(assert (=> d!2205649 (= lt!2533746 e!4242797)))

(declare-fun c!1314980 () Bool)

(assert (=> d!2205649 (= c!1314980 (is-Cons!68148 (exprs!7078 lt!2533545)))))

(assert (=> d!2205649 (= (contextDepthTotal!518 lt!2533545) lt!2533746)))

(declare-fun b!7057379 () Bool)

(assert (=> b!7057379 (= e!4242797 (+ (regexDepthTotal!315 (h!74596 (exprs!7078 lt!2533545))) (contextDepthTotal!518 (Context!13157 (t!382051 (exprs!7078 lt!2533545))))))))

(declare-fun b!7057380 () Bool)

(assert (=> b!7057380 (= e!4242797 1)))

(assert (= (and d!2205649 c!1314980) b!7057379))

(assert (= (and d!2205649 (not c!1314980)) b!7057380))

(declare-fun m!7775986 () Bool)

(assert (=> b!7057379 m!7775986))

(declare-fun m!7775988 () Bool)

(assert (=> b!7057379 m!7775988))

(assert (=> b!7057225 d!2205649))

(declare-fun d!2205651 () Bool)

(declare-fun choose!53873 ((Set Context!13156) Int) (Set Context!13156))

(assert (=> d!2205651 (= (flatMap!2508 lt!2533540 lambda!421036) (choose!53873 lt!2533540 lambda!421036))))

(declare-fun bs!1877331 () Bool)

(assert (= bs!1877331 d!2205651))

(declare-fun m!7775990 () Bool)

(assert (=> bs!1877331 m!7775990))

(assert (=> b!7057225 d!2205651))

(declare-fun d!2205653 () Bool)

(assert (=> d!2205653 (= (map!15906 lt!2533540 lambda!421034) (set.insert (dynLambda!27668 lambda!421034 lt!2533545) (as set.empty (Set Context!13156))))))

(declare-fun lt!2533749 () Unit!161837)

(declare-fun choose!53874 ((Set Context!13156) Context!13156 Int) Unit!161837)

(assert (=> d!2205653 (= lt!2533749 (choose!53874 lt!2533540 lt!2533545 lambda!421034))))

(assert (=> d!2205653 (= lt!2533540 (set.insert lt!2533545 (as set.empty (Set Context!13156))))))

(assert (=> d!2205653 (= (lemmaMapOnSingletonSet!399 lt!2533540 lt!2533545 lambda!421034) lt!2533749)))

(declare-fun b_lambda!268871 () Bool)

(assert (=> (not b_lambda!268871) (not d!2205653)))

(declare-fun bs!1877332 () Bool)

(assert (= bs!1877332 d!2205653))

(assert (=> bs!1877332 m!7775720))

(assert (=> bs!1877332 m!7775718))

(declare-fun m!7775992 () Bool)

(assert (=> bs!1877332 m!7775992))

(declare-fun m!7775994 () Bool)

(assert (=> bs!1877332 m!7775994))

(assert (=> bs!1877332 m!7775994))

(declare-fun m!7775996 () Bool)

(assert (=> bs!1877332 m!7775996))

(assert (=> b!7057225 d!2205653))

(declare-fun d!2205655 () Bool)

(assert (=> d!2205655 (= (flatMap!2508 lt!2533538 lambda!421036) (dynLambda!27669 lambda!421036 lt!2533553))))

(declare-fun lt!2533750 () Unit!161837)

(assert (=> d!2205655 (= lt!2533750 (choose!53870 lt!2533538 lt!2533553 lambda!421036))))

(assert (=> d!2205655 (= lt!2533538 (set.insert lt!2533553 (as set.empty (Set Context!13156))))))

(assert (=> d!2205655 (= (lemmaFlatMapOnSingletonSet!2017 lt!2533538 lt!2533553 lambda!421036) lt!2533750)))

(declare-fun b_lambda!268873 () Bool)

(assert (=> (not b_lambda!268873) (not d!2205655)))

(declare-fun bs!1877333 () Bool)

(assert (= bs!1877333 d!2205655))

(assert (=> bs!1877333 m!7775752))

(declare-fun m!7775998 () Bool)

(assert (=> bs!1877333 m!7775998))

(declare-fun m!7776000 () Bool)

(assert (=> bs!1877333 m!7776000))

(assert (=> bs!1877333 m!7775764))

(assert (=> b!7057230 d!2205655))

(assert (=> b!7057230 d!2205623))

(declare-fun bs!1877334 () Bool)

(declare-fun d!2205657 () Bool)

(assert (= bs!1877334 (and d!2205657 b!7057230)))

(declare-fun lambda!421099 () Int)

(assert (=> bs!1877334 (= lambda!421099 lambda!421036)))

(assert (=> d!2205657 true))

(assert (=> d!2205657 (= (derivationStepZipper!3032 lt!2533538 (h!74597 s!7408)) (flatMap!2508 lt!2533538 lambda!421099))))

(declare-fun bs!1877335 () Bool)

(assert (= bs!1877335 d!2205657))

(declare-fun m!7776002 () Bool)

(assert (=> bs!1877335 m!7776002))

(assert (=> b!7057230 d!2205657))

(declare-fun d!2205659 () Bool)

(assert (=> d!2205659 (= (flatMap!2508 lt!2533538 lambda!421036) (choose!53873 lt!2533538 lambda!421036))))

(declare-fun bs!1877336 () Bool)

(assert (= bs!1877336 d!2205659))

(declare-fun m!7776004 () Bool)

(assert (=> bs!1877336 m!7776004))

(assert (=> b!7057230 d!2205659))

(declare-fun b!7057383 () Bool)

(declare-fun e!4242800 () (Set Context!13156))

(declare-fun call!641142 () (Set Context!13156))

(assert (=> b!7057383 (= e!4242800 call!641142)))

(declare-fun b!7057384 () Bool)

(assert (=> b!7057384 (= e!4242800 (as set.empty (Set Context!13156)))))

(declare-fun b!7057385 () Bool)

(declare-fun e!4242798 () (Set Context!13156))

(assert (=> b!7057385 (= e!4242798 e!4242800)))

(declare-fun c!1314983 () Bool)

(assert (=> b!7057385 (= c!1314983 (is-Cons!68148 (exprs!7078 lt!2533553)))))

(declare-fun d!2205661 () Bool)

(declare-fun c!1314984 () Bool)

(declare-fun e!4242799 () Bool)

(assert (=> d!2205661 (= c!1314984 e!4242799)))

(declare-fun res!2881252 () Bool)

(assert (=> d!2205661 (=> (not res!2881252) (not e!4242799))))

(assert (=> d!2205661 (= res!2881252 (is-Cons!68148 (exprs!7078 lt!2533553)))))

(assert (=> d!2205661 (= (derivationStepZipperUp!2166 lt!2533553 (h!74597 s!7408)) e!4242798)))

(declare-fun b!7057386 () Bool)

(assert (=> b!7057386 (= e!4242798 (set.union call!641142 (derivationStepZipperUp!2166 (Context!13157 (t!382051 (exprs!7078 lt!2533553))) (h!74597 s!7408))))))

(declare-fun bm!641137 () Bool)

(assert (=> bm!641137 (= call!641142 (derivationStepZipperDown!2216 (h!74596 (exprs!7078 lt!2533553)) (Context!13157 (t!382051 (exprs!7078 lt!2533553))) (h!74597 s!7408)))))

(declare-fun b!7057387 () Bool)

(assert (=> b!7057387 (= e!4242799 (nullable!7265 (h!74596 (exprs!7078 lt!2533553))))))

(assert (= (and d!2205661 res!2881252) b!7057387))

(assert (= (and d!2205661 c!1314984) b!7057386))

(assert (= (and d!2205661 (not c!1314984)) b!7057385))

(assert (= (and b!7057385 c!1314983) b!7057383))

(assert (= (and b!7057385 (not c!1314983)) b!7057384))

(assert (= (or b!7057386 b!7057383) bm!641137))

(declare-fun m!7776006 () Bool)

(assert (=> b!7057386 m!7776006))

(declare-fun m!7776008 () Bool)

(assert (=> bm!641137 m!7776008))

(declare-fun m!7776010 () Bool)

(assert (=> b!7057387 m!7776010))

(assert (=> b!7057230 d!2205661))

(declare-fun b!7057388 () Bool)

(declare-fun e!4242803 () (Set Context!13156))

(declare-fun call!641143 () (Set Context!13156))

(assert (=> b!7057388 (= e!4242803 call!641143)))

(declare-fun b!7057389 () Bool)

(assert (=> b!7057389 (= e!4242803 (as set.empty (Set Context!13156)))))

(declare-fun b!7057390 () Bool)

(declare-fun e!4242801 () (Set Context!13156))

(assert (=> b!7057390 (= e!4242801 e!4242803)))

(declare-fun c!1314985 () Bool)

(assert (=> b!7057390 (= c!1314985 (is-Cons!68148 (exprs!7078 lt!2533543)))))

(declare-fun d!2205663 () Bool)

(declare-fun c!1314986 () Bool)

(declare-fun e!4242802 () Bool)

(assert (=> d!2205663 (= c!1314986 e!4242802)))

(declare-fun res!2881253 () Bool)

(assert (=> d!2205663 (=> (not res!2881253) (not e!4242802))))

(assert (=> d!2205663 (= res!2881253 (is-Cons!68148 (exprs!7078 lt!2533543)))))

(assert (=> d!2205663 (= (derivationStepZipperUp!2166 lt!2533543 (h!74597 s!7408)) e!4242801)))

(declare-fun b!7057391 () Bool)

(assert (=> b!7057391 (= e!4242801 (set.union call!641143 (derivationStepZipperUp!2166 (Context!13157 (t!382051 (exprs!7078 lt!2533543))) (h!74597 s!7408))))))

(declare-fun bm!641138 () Bool)

(assert (=> bm!641138 (= call!641143 (derivationStepZipperDown!2216 (h!74596 (exprs!7078 lt!2533543)) (Context!13157 (t!382051 (exprs!7078 lt!2533543))) (h!74597 s!7408)))))

(declare-fun b!7057392 () Bool)

(assert (=> b!7057392 (= e!4242802 (nullable!7265 (h!74596 (exprs!7078 lt!2533543))))))

(assert (= (and d!2205663 res!2881253) b!7057392))

(assert (= (and d!2205663 c!1314986) b!7057391))

(assert (= (and d!2205663 (not c!1314986)) b!7057390))

(assert (= (and b!7057390 c!1314985) b!7057388))

(assert (= (and b!7057390 (not c!1314985)) b!7057389))

(assert (= (or b!7057391 b!7057388) bm!641138))

(declare-fun m!7776012 () Bool)

(assert (=> b!7057391 m!7776012))

(declare-fun m!7776014 () Bool)

(assert (=> bm!641138 m!7776014))

(declare-fun m!7776016 () Bool)

(assert (=> b!7057392 m!7776016))

(assert (=> b!7057241 d!2205663))

(declare-fun b!7057415 () Bool)

(declare-fun c!1314999 () Bool)

(assert (=> b!7057415 (= c!1314999 (is-Star!17582 (h!74596 (exprs!7078 lt!2533572))))))

(declare-fun e!4242820 () (Set Context!13156))

(declare-fun e!4242818 () (Set Context!13156))

(assert (=> b!7057415 (= e!4242820 e!4242818)))

(declare-fun c!1314998 () Bool)

(declare-fun c!1315001 () Bool)

(declare-fun c!1315000 () Bool)

(declare-fun call!641156 () List!68272)

(declare-fun call!641157 () (Set Context!13156))

(declare-fun bm!641151 () Bool)

(assert (=> bm!641151 (= call!641157 (derivationStepZipperDown!2216 (ite c!1315001 (regOne!35677 (h!74596 (exprs!7078 lt!2533572))) (ite c!1315000 (regTwo!35676 (h!74596 (exprs!7078 lt!2533572))) (ite c!1314998 (regOne!35676 (h!74596 (exprs!7078 lt!2533572))) (reg!17911 (h!74596 (exprs!7078 lt!2533572)))))) (ite (or c!1315001 c!1315000) lt!2533543 (Context!13157 call!641156)) (h!74597 s!7408)))))

(declare-fun b!7057416 () Bool)

(assert (=> b!7057416 (= e!4242818 (as set.empty (Set Context!13156)))))

(declare-fun b!7057417 () Bool)

(declare-fun e!4242819 () Bool)

(assert (=> b!7057417 (= e!4242819 (nullable!7265 (regOne!35676 (h!74596 (exprs!7078 lt!2533572)))))))

(declare-fun call!641160 () List!68272)

(declare-fun bm!641152 () Bool)

(declare-fun $colon$colon!2628 (List!68272 Regex!17582) List!68272)

(assert (=> bm!641152 (= call!641160 ($colon$colon!2628 (exprs!7078 lt!2533543) (ite (or c!1315000 c!1314998) (regTwo!35676 (h!74596 (exprs!7078 lt!2533572))) (h!74596 (exprs!7078 lt!2533572)))))))

(declare-fun bm!641153 () Bool)

(assert (=> bm!641153 (= call!641156 call!641160)))

(declare-fun d!2205665 () Bool)

(declare-fun c!1314997 () Bool)

(assert (=> d!2205665 (= c!1314997 (and (is-ElementMatch!17582 (h!74596 (exprs!7078 lt!2533572))) (= (c!1314943 (h!74596 (exprs!7078 lt!2533572))) (h!74597 s!7408))))))

(declare-fun e!4242816 () (Set Context!13156))

(assert (=> d!2205665 (= (derivationStepZipperDown!2216 (h!74596 (exprs!7078 lt!2533572)) lt!2533543 (h!74597 s!7408)) e!4242816)))

(declare-fun call!641159 () (Set Context!13156))

(declare-fun bm!641154 () Bool)

(assert (=> bm!641154 (= call!641159 (derivationStepZipperDown!2216 (ite c!1315001 (regTwo!35677 (h!74596 (exprs!7078 lt!2533572))) (regOne!35676 (h!74596 (exprs!7078 lt!2533572)))) (ite c!1315001 lt!2533543 (Context!13157 call!641160)) (h!74597 s!7408)))))

(declare-fun b!7057418 () Bool)

(assert (=> b!7057418 (= c!1315000 e!4242819)))

(declare-fun res!2881256 () Bool)

(assert (=> b!7057418 (=> (not res!2881256) (not e!4242819))))

(assert (=> b!7057418 (= res!2881256 (is-Concat!26427 (h!74596 (exprs!7078 lt!2533572))))))

(declare-fun e!4242817 () (Set Context!13156))

(declare-fun e!4242821 () (Set Context!13156))

(assert (=> b!7057418 (= e!4242817 e!4242821)))

(declare-fun b!7057419 () Bool)

(assert (=> b!7057419 (= e!4242816 (set.insert lt!2533543 (as set.empty (Set Context!13156))))))

(declare-fun bm!641155 () Bool)

(declare-fun call!641161 () (Set Context!13156))

(declare-fun call!641158 () (Set Context!13156))

(assert (=> bm!641155 (= call!641161 call!641158)))

(declare-fun b!7057420 () Bool)

(assert (=> b!7057420 (= e!4242816 e!4242817)))

(assert (=> b!7057420 (= c!1315001 (is-Union!17582 (h!74596 (exprs!7078 lt!2533572))))))

(declare-fun b!7057421 () Bool)

(assert (=> b!7057421 (= e!4242820 call!641161)))

(declare-fun b!7057422 () Bool)

(assert (=> b!7057422 (= e!4242818 call!641161)))

(declare-fun b!7057423 () Bool)

(assert (=> b!7057423 (= e!4242817 (set.union call!641157 call!641159))))

(declare-fun bm!641156 () Bool)

(assert (=> bm!641156 (= call!641158 call!641157)))

(declare-fun b!7057424 () Bool)

(assert (=> b!7057424 (= e!4242821 (set.union call!641159 call!641158))))

(declare-fun b!7057425 () Bool)

(assert (=> b!7057425 (= e!4242821 e!4242820)))

(assert (=> b!7057425 (= c!1314998 (is-Concat!26427 (h!74596 (exprs!7078 lt!2533572))))))

(assert (= (and d!2205665 c!1314997) b!7057419))

(assert (= (and d!2205665 (not c!1314997)) b!7057420))

(assert (= (and b!7057420 c!1315001) b!7057423))

(assert (= (and b!7057420 (not c!1315001)) b!7057418))

(assert (= (and b!7057418 res!2881256) b!7057417))

(assert (= (and b!7057418 c!1315000) b!7057424))

(assert (= (and b!7057418 (not c!1315000)) b!7057425))

(assert (= (and b!7057425 c!1314998) b!7057421))

(assert (= (and b!7057425 (not c!1314998)) b!7057415))

(assert (= (and b!7057415 c!1314999) b!7057422))

(assert (= (and b!7057415 (not c!1314999)) b!7057416))

(assert (= (or b!7057421 b!7057422) bm!641153))

(assert (= (or b!7057421 b!7057422) bm!641155))

(assert (= (or b!7057424 bm!641155) bm!641156))

(assert (= (or b!7057424 bm!641153) bm!641152))

(assert (= (or b!7057423 bm!641156) bm!641151))

(assert (= (or b!7057423 b!7057424) bm!641154))

(declare-fun m!7776018 () Bool)

(assert (=> bm!641152 m!7776018))

(declare-fun m!7776020 () Bool)

(assert (=> bm!641154 m!7776020))

(declare-fun m!7776022 () Bool)

(assert (=> bm!641151 m!7776022))

(assert (=> b!7057419 m!7775710))

(declare-fun m!7776024 () Bool)

(assert (=> b!7057417 m!7776024))

(assert (=> b!7057241 d!2205665))

(assert (=> b!7057241 d!2205645))

(assert (=> b!7057241 d!2205641))

(declare-fun d!2205667 () Bool)

(declare-fun lt!2533751 () Int)

(assert (=> d!2205667 (>= lt!2533751 0)))

(declare-fun e!4242822 () Int)

(assert (=> d!2205667 (= lt!2533751 e!4242822)))

(declare-fun c!1315002 () Bool)

(assert (=> d!2205667 (= c!1315002 (is-Cons!68150 (Cons!68150 lt!2533545 Nil!68150)))))

(assert (=> d!2205667 (= (zipperDepthTotal!547 (Cons!68150 lt!2533545 Nil!68150)) lt!2533751)))

(declare-fun b!7057426 () Bool)

(assert (=> b!7057426 (= e!4242822 (+ (contextDepthTotal!518 (h!74598 (Cons!68150 lt!2533545 Nil!68150))) (zipperDepthTotal!547 (t!382053 (Cons!68150 lt!2533545 Nil!68150)))))))

(declare-fun b!7057427 () Bool)

(assert (=> b!7057427 (= e!4242822 0)))

(assert (= (and d!2205667 c!1315002) b!7057426))

(assert (= (and d!2205667 (not c!1315002)) b!7057427))

(declare-fun m!7776026 () Bool)

(assert (=> b!7057426 m!7776026))

(declare-fun m!7776028 () Bool)

(assert (=> b!7057426 m!7776028))

(assert (=> b!7057240 d!2205667))

(declare-fun bs!1877337 () Bool)

(declare-fun d!2205669 () Bool)

(assert (= bs!1877337 (and d!2205669 b!7057221)))

(declare-fun lambda!421102 () Int)

(assert (=> bs!1877337 (not (= lambda!421102 lambda!421033))))

(assert (=> d!2205669 true))

(declare-fun order!28337 () Int)

(declare-fun dynLambda!27670 (Int Int) Int)

(assert (=> d!2205669 (< (dynLambda!27670 order!28337 lambda!421033) (dynLambda!27670 order!28337 lambda!421102))))

(declare-fun forall!16534 (List!68274 Int) Bool)

(assert (=> d!2205669 (= (exists!3579 lt!2533560 lambda!421033) (not (forall!16534 lt!2533560 lambda!421102)))))

(declare-fun bs!1877338 () Bool)

(assert (= bs!1877338 d!2205669))

(declare-fun m!7776030 () Bool)

(assert (=> bs!1877338 m!7776030))

(assert (=> b!7057221 d!2205669))

(declare-fun d!2205671 () Bool)

(declare-fun c!1315003 () Bool)

(assert (=> d!2205671 (= c!1315003 (isEmpty!39751 s!7408))))

(declare-fun e!4242823 () Bool)

(assert (=> d!2205671 (= (matchZipper!3122 lt!2533558 s!7408) e!4242823)))

(declare-fun b!7057430 () Bool)

(assert (=> b!7057430 (= e!4242823 (nullableZipper!2666 lt!2533558))))

(declare-fun b!7057431 () Bool)

(assert (=> b!7057431 (= e!4242823 (matchZipper!3122 (derivationStepZipper!3032 lt!2533558 (head!14367 s!7408)) (tail!13723 s!7408)))))

(assert (= (and d!2205671 c!1315003) b!7057430))

(assert (= (and d!2205671 (not c!1315003)) b!7057431))

(declare-fun m!7776032 () Bool)

(assert (=> d!2205671 m!7776032))

(declare-fun m!7776034 () Bool)

(assert (=> b!7057430 m!7776034))

(declare-fun m!7776036 () Bool)

(assert (=> b!7057431 m!7776036))

(assert (=> b!7057431 m!7776036))

(declare-fun m!7776038 () Bool)

(assert (=> b!7057431 m!7776038))

(declare-fun m!7776040 () Bool)

(assert (=> b!7057431 m!7776040))

(assert (=> b!7057431 m!7776038))

(assert (=> b!7057431 m!7776040))

(declare-fun m!7776042 () Bool)

(assert (=> b!7057431 m!7776042))

(assert (=> b!7057221 d!2205671))

(declare-fun d!2205673 () Bool)

(declare-fun e!4242826 () Bool)

(assert (=> d!2205673 e!4242826))

(declare-fun res!2881259 () Bool)

(assert (=> d!2205673 (=> (not res!2881259) (not e!4242826))))

(declare-fun lt!2533754 () Context!13156)

(declare-fun dynLambda!27671 (Int Context!13156) Bool)

(assert (=> d!2205673 (= res!2881259 (dynLambda!27671 lambda!421033 lt!2533754))))

(declare-fun getWitness!1655 (List!68274 Int) Context!13156)

(assert (=> d!2205673 (= lt!2533754 (getWitness!1655 (toList!10923 lt!2533566) lambda!421033))))

(declare-fun exists!3581 ((Set Context!13156) Int) Bool)

(assert (=> d!2205673 (exists!3581 lt!2533566 lambda!421033)))

(assert (=> d!2205673 (= (getWitness!1653 lt!2533566 lambda!421033) lt!2533754)))

(declare-fun b!7057434 () Bool)

(assert (=> b!7057434 (= e!4242826 (set.member lt!2533754 lt!2533566))))

(assert (= (and d!2205673 res!2881259) b!7057434))

(declare-fun b_lambda!268875 () Bool)

(assert (=> (not b_lambda!268875) (not d!2205673)))

(declare-fun m!7776044 () Bool)

(assert (=> d!2205673 m!7776044))

(assert (=> d!2205673 m!7775768))

(assert (=> d!2205673 m!7775768))

(declare-fun m!7776046 () Bool)

(assert (=> d!2205673 m!7776046))

(declare-fun m!7776048 () Bool)

(assert (=> d!2205673 m!7776048))

(declare-fun m!7776050 () Bool)

(assert (=> b!7057434 m!7776050))

(assert (=> b!7057221 d!2205673))

(declare-fun d!2205675 () Bool)

(declare-fun e!4242827 () Bool)

(assert (=> d!2205675 e!4242827))

(declare-fun res!2881260 () Bool)

(assert (=> d!2205675 (=> (not res!2881260) (not e!4242827))))

(declare-fun lt!2533755 () List!68274)

(assert (=> d!2205675 (= res!2881260 (noDuplicate!2697 lt!2533755))))

(assert (=> d!2205675 (= lt!2533755 (choose!53869 lt!2533566))))

(assert (=> d!2205675 (= (toList!10923 lt!2533566) lt!2533755)))

(declare-fun b!7057435 () Bool)

(assert (=> b!7057435 (= e!4242827 (= (content!13701 lt!2533755) lt!2533566))))

(assert (= (and d!2205675 res!2881260) b!7057435))

(declare-fun m!7776052 () Bool)

(assert (=> d!2205675 m!7776052))

(declare-fun m!7776054 () Bool)

(assert (=> d!2205675 m!7776054))

(declare-fun m!7776056 () Bool)

(assert (=> b!7057435 m!7776056))

(assert (=> b!7057221 d!2205675))

(declare-fun bs!1877339 () Bool)

(declare-fun d!2205677 () Bool)

(assert (= bs!1877339 (and d!2205677 b!7057221)))

(declare-fun lambda!421105 () Int)

(assert (=> bs!1877339 (= lambda!421105 lambda!421033)))

(declare-fun bs!1877340 () Bool)

(assert (= bs!1877340 (and d!2205677 d!2205669)))

(assert (=> bs!1877340 (not (= lambda!421105 lambda!421102))))

(assert (=> d!2205677 true))

(assert (=> d!2205677 (exists!3579 lt!2533560 lambda!421105)))

(declare-fun lt!2533758 () Unit!161837)

(declare-fun choose!53875 (List!68274 List!68273) Unit!161837)

(assert (=> d!2205677 (= lt!2533758 (choose!53875 lt!2533560 s!7408))))

(assert (=> d!2205677 (matchZipper!3122 (content!13701 lt!2533560) s!7408)))

(assert (=> d!2205677 (= (lemmaZipperMatchesExistsMatchingContext!503 lt!2533560 s!7408) lt!2533758)))

(declare-fun bs!1877341 () Bool)

(assert (= bs!1877341 d!2205677))

(declare-fun m!7776058 () Bool)

(assert (=> bs!1877341 m!7776058))

(declare-fun m!7776060 () Bool)

(assert (=> bs!1877341 m!7776060))

(declare-fun m!7776062 () Bool)

(assert (=> bs!1877341 m!7776062))

(assert (=> bs!1877341 m!7776062))

(declare-fun m!7776064 () Bool)

(assert (=> bs!1877341 m!7776064))

(assert (=> b!7057221 d!2205677))

(declare-fun d!2205679 () Bool)

(declare-fun c!1315006 () Bool)

(assert (=> d!2205679 (= c!1315006 (isEmpty!39751 s!7408))))

(declare-fun e!4242828 () Bool)

(assert (=> d!2205679 (= (matchZipper!3122 lt!2533566 s!7408) e!4242828)))

(declare-fun b!7057436 () Bool)

(assert (=> b!7057436 (= e!4242828 (nullableZipper!2666 lt!2533566))))

(declare-fun b!7057437 () Bool)

(assert (=> b!7057437 (= e!4242828 (matchZipper!3122 (derivationStepZipper!3032 lt!2533566 (head!14367 s!7408)) (tail!13723 s!7408)))))

(assert (= (and d!2205679 c!1315006) b!7057436))

(assert (= (and d!2205679 (not c!1315006)) b!7057437))

(assert (=> d!2205679 m!7776032))

(declare-fun m!7776066 () Bool)

(assert (=> b!7057436 m!7776066))

(assert (=> b!7057437 m!7776036))

(assert (=> b!7057437 m!7776036))

(declare-fun m!7776068 () Bool)

(assert (=> b!7057437 m!7776068))

(assert (=> b!7057437 m!7776040))

(assert (=> b!7057437 m!7776068))

(assert (=> b!7057437 m!7776040))

(declare-fun m!7776070 () Bool)

(assert (=> b!7057437 m!7776070))

(assert (=> start!684646 d!2205679))

(declare-fun bs!1877342 () Bool)

(declare-fun d!2205681 () Bool)

(assert (= bs!1877342 (and d!2205681 b!7057224)))

(declare-fun lambda!421110 () Int)

(assert (=> bs!1877342 (= lambda!421110 lambda!421034)))

(assert (=> d!2205681 true))

(assert (=> d!2205681 (= (appendTo!703 z1!570 ct2!306) (map!15906 z1!570 lambda!421110))))

(declare-fun bs!1877343 () Bool)

(assert (= bs!1877343 d!2205681))

(declare-fun m!7776072 () Bool)

(assert (=> bs!1877343 m!7776072))

(assert (=> start!684646 d!2205681))

(declare-fun bs!1877344 () Bool)

(declare-fun d!2205683 () Bool)

(assert (= bs!1877344 (and d!2205683 b!7057224)))

(declare-fun lambda!421113 () Int)

(assert (=> bs!1877344 (= lambda!421113 lambda!421035)))

(assert (=> d!2205683 (= (inv!86815 ct2!306) (forall!16533 (exprs!7078 ct2!306) lambda!421113))))

(declare-fun bs!1877345 () Bool)

(assert (= bs!1877345 d!2205683))

(declare-fun m!7776074 () Bool)

(assert (=> bs!1877345 m!7776074))

(assert (=> start!684646 d!2205683))

(assert (=> b!7057223 d!2205623))

(declare-fun d!2205685 () Bool)

(declare-fun c!1315008 () Bool)

(assert (=> d!2205685 (= c!1315008 (isEmpty!39751 (t!382052 s!7408)))))

(declare-fun e!4242829 () Bool)

(assert (=> d!2205685 (= (matchZipper!3122 lt!2533571 (t!382052 s!7408)) e!4242829)))

(declare-fun b!7057438 () Bool)

(assert (=> b!7057438 (= e!4242829 (nullableZipper!2666 lt!2533571))))

(declare-fun b!7057439 () Bool)

(assert (=> b!7057439 (= e!4242829 (matchZipper!3122 (derivationStepZipper!3032 lt!2533571 (head!14367 (t!382052 s!7408))) (tail!13723 (t!382052 s!7408))))))

(assert (= (and d!2205685 c!1315008) b!7057438))

(assert (= (and d!2205685 (not c!1315008)) b!7057439))

(assert (=> d!2205685 m!7775928))

(declare-fun m!7776076 () Bool)

(assert (=> b!7057438 m!7776076))

(assert (=> b!7057439 m!7775932))

(assert (=> b!7057439 m!7775932))

(declare-fun m!7776078 () Bool)

(assert (=> b!7057439 m!7776078))

(assert (=> b!7057439 m!7775936))

(assert (=> b!7057439 m!7776078))

(assert (=> b!7057439 m!7775936))

(declare-fun m!7776080 () Bool)

(assert (=> b!7057439 m!7776080))

(assert (=> b!7057222 d!2205685))

(declare-fun d!2205687 () Bool)

(declare-fun e!4242832 () Bool)

(assert (=> d!2205687 (= (matchZipper!3122 (set.union lt!2533571 lt!2533531) (t!382052 s!7408)) e!4242832)))

(declare-fun res!2881263 () Bool)

(assert (=> d!2205687 (=> res!2881263 e!4242832)))

(assert (=> d!2205687 (= res!2881263 (matchZipper!3122 lt!2533571 (t!382052 s!7408)))))

(declare-fun lt!2533763 () Unit!161837)

(declare-fun choose!53876 ((Set Context!13156) (Set Context!13156) List!68273) Unit!161837)

(assert (=> d!2205687 (= lt!2533763 (choose!53876 lt!2533571 lt!2533531 (t!382052 s!7408)))))

(assert (=> d!2205687 (= (lemmaZipperConcatMatchesSameAsBothZippers!1595 lt!2533571 lt!2533531 (t!382052 s!7408)) lt!2533763)))

(declare-fun b!7057442 () Bool)

(assert (=> b!7057442 (= e!4242832 (matchZipper!3122 lt!2533531 (t!382052 s!7408)))))

(assert (= (and d!2205687 (not res!2881263)) b!7057442))

(declare-fun m!7776082 () Bool)

(assert (=> d!2205687 m!7776082))

(assert (=> d!2205687 m!7775700))

(declare-fun m!7776084 () Bool)

(assert (=> d!2205687 m!7776084))

(assert (=> b!7057442 m!7775690))

(assert (=> b!7057222 d!2205687))

(declare-fun d!2205689 () Bool)

(declare-fun c!1315009 () Bool)

(assert (=> d!2205689 (= c!1315009 (isEmpty!39751 (t!382052 s!7408)))))

(declare-fun e!4242833 () Bool)

(assert (=> d!2205689 (= (matchZipper!3122 lt!2533551 (t!382052 s!7408)) e!4242833)))

(declare-fun b!7057443 () Bool)

(assert (=> b!7057443 (= e!4242833 (nullableZipper!2666 lt!2533551))))

(declare-fun b!7057444 () Bool)

(assert (=> b!7057444 (= e!4242833 (matchZipper!3122 (derivationStepZipper!3032 lt!2533551 (head!14367 (t!382052 s!7408))) (tail!13723 (t!382052 s!7408))))))

(assert (= (and d!2205689 c!1315009) b!7057443))

(assert (= (and d!2205689 (not c!1315009)) b!7057444))

(assert (=> d!2205689 m!7775928))

(declare-fun m!7776086 () Bool)

(assert (=> b!7057443 m!7776086))

(assert (=> b!7057444 m!7775932))

(assert (=> b!7057444 m!7775932))

(declare-fun m!7776088 () Bool)

(assert (=> b!7057444 m!7776088))

(assert (=> b!7057444 m!7775936))

(assert (=> b!7057444 m!7776088))

(assert (=> b!7057444 m!7775936))

(declare-fun m!7776090 () Bool)

(assert (=> b!7057444 m!7776090))

(assert (=> b!7057222 d!2205689))

(declare-fun d!2205691 () Bool)

(declare-fun c!1315010 () Bool)

(assert (=> d!2205691 (= c!1315010 (isEmpty!39751 (t!382052 s!7408)))))

(declare-fun e!4242834 () Bool)

(assert (=> d!2205691 (= (matchZipper!3122 lt!2533533 (t!382052 s!7408)) e!4242834)))

(declare-fun b!7057445 () Bool)

(assert (=> b!7057445 (= e!4242834 (nullableZipper!2666 lt!2533533))))

(declare-fun b!7057446 () Bool)

(assert (=> b!7057446 (= e!4242834 (matchZipper!3122 (derivationStepZipper!3032 lt!2533533 (head!14367 (t!382052 s!7408))) (tail!13723 (t!382052 s!7408))))))

(assert (= (and d!2205691 c!1315010) b!7057445))

(assert (= (and d!2205691 (not c!1315010)) b!7057446))

(assert (=> d!2205691 m!7775928))

(declare-fun m!7776092 () Bool)

(assert (=> b!7057445 m!7776092))

(assert (=> b!7057446 m!7775932))

(assert (=> b!7057446 m!7775932))

(declare-fun m!7776094 () Bool)

(assert (=> b!7057446 m!7776094))

(assert (=> b!7057446 m!7775936))

(assert (=> b!7057446 m!7776094))

(assert (=> b!7057446 m!7775936))

(declare-fun m!7776096 () Bool)

(assert (=> b!7057446 m!7776096))

(assert (=> b!7057222 d!2205691))

(assert (=> b!7057222 d!2205645))

(assert (=> b!7057231 d!2205663))

(declare-fun bs!1877346 () Bool)

(declare-fun d!2205693 () Bool)

(assert (= bs!1877346 (and d!2205693 b!7057230)))

(declare-fun lambda!421114 () Int)

(assert (=> bs!1877346 (= lambda!421114 lambda!421036)))

(declare-fun bs!1877347 () Bool)

(assert (= bs!1877347 (and d!2205693 d!2205657)))

(assert (=> bs!1877347 (= lambda!421114 lambda!421099)))

(assert (=> d!2205693 true))

(assert (=> d!2205693 (= (derivationStepZipper!3032 lt!2533559 (h!74597 s!7408)) (flatMap!2508 lt!2533559 lambda!421114))))

(declare-fun bs!1877348 () Bool)

(assert (= bs!1877348 d!2205693))

(declare-fun m!7776098 () Bool)

(assert (=> bs!1877348 m!7776098))

(assert (=> b!7057231 d!2205693))

(declare-fun d!2205695 () Bool)

(assert (=> d!2205695 (= (flatMap!2508 lt!2533559 lambda!421036) (choose!53873 lt!2533559 lambda!421036))))

(declare-fun bs!1877349 () Bool)

(assert (= bs!1877349 d!2205695))

(declare-fun m!7776100 () Bool)

(assert (=> bs!1877349 m!7776100))

(assert (=> b!7057231 d!2205695))

(declare-fun d!2205697 () Bool)

(assert (=> d!2205697 (= (flatMap!2508 lt!2533559 lambda!421036) (dynLambda!27669 lambda!421036 lt!2533543))))

(declare-fun lt!2533764 () Unit!161837)

(assert (=> d!2205697 (= lt!2533764 (choose!53870 lt!2533559 lt!2533543 lambda!421036))))

(assert (=> d!2205697 (= lt!2533559 (set.insert lt!2533543 (as set.empty (Set Context!13156))))))

(assert (=> d!2205697 (= (lemmaFlatMapOnSingletonSet!2017 lt!2533559 lt!2533543 lambda!421036) lt!2533764)))

(declare-fun b_lambda!268877 () Bool)

(assert (=> (not b_lambda!268877) (not d!2205697)))

(declare-fun bs!1877350 () Bool)

(assert (= bs!1877350 d!2205697))

(assert (=> bs!1877350 m!7775708))

(declare-fun m!7776102 () Bool)

(assert (=> bs!1877350 m!7776102))

(declare-fun m!7776104 () Bool)

(assert (=> bs!1877350 m!7776104))

(assert (=> bs!1877350 m!7775710))

(assert (=> b!7057231 d!2205697))

(assert (=> b!7057231 d!2205645))

(declare-fun d!2205699 () Bool)

(declare-fun c!1315011 () Bool)

(assert (=> d!2205699 (= c!1315011 (isEmpty!39751 s!7408))))

(declare-fun e!4242835 () Bool)

(assert (=> d!2205699 (= (matchZipper!3122 lt!2533559 s!7408) e!4242835)))

(declare-fun b!7057447 () Bool)

(assert (=> b!7057447 (= e!4242835 (nullableZipper!2666 lt!2533559))))

(declare-fun b!7057448 () Bool)

(assert (=> b!7057448 (= e!4242835 (matchZipper!3122 (derivationStepZipper!3032 lt!2533559 (head!14367 s!7408)) (tail!13723 s!7408)))))

(assert (= (and d!2205699 c!1315011) b!7057447))

(assert (= (and d!2205699 (not c!1315011)) b!7057448))

(assert (=> d!2205699 m!7776032))

(declare-fun m!7776106 () Bool)

(assert (=> b!7057447 m!7776106))

(assert (=> b!7057448 m!7776036))

(assert (=> b!7057448 m!7776036))

(declare-fun m!7776108 () Bool)

(assert (=> b!7057448 m!7776108))

(assert (=> b!7057448 m!7776040))

(assert (=> b!7057448 m!7776108))

(assert (=> b!7057448 m!7776040))

(declare-fun m!7776110 () Bool)

(assert (=> b!7057448 m!7776110))

(assert (=> b!7057238 d!2205699))

(assert (=> b!7057238 d!2205645))

(assert (=> b!7057229 d!2205627))

(assert (=> b!7057229 d!2205645))

(declare-fun bs!1877351 () Bool)

(declare-fun d!2205701 () Bool)

(assert (= bs!1877351 (and d!2205701 b!7057224)))

(declare-fun lambda!421115 () Int)

(assert (=> bs!1877351 (= lambda!421115 lambda!421035)))

(declare-fun bs!1877352 () Bool)

(assert (= bs!1877352 (and d!2205701 d!2205683)))

(assert (=> bs!1877352 (= lambda!421115 lambda!421113)))

(assert (=> d!2205701 (= (inv!86815 setElem!49912) (forall!16533 (exprs!7078 setElem!49912) lambda!421115))))

(declare-fun bs!1877353 () Bool)

(assert (= bs!1877353 d!2205701))

(declare-fun m!7776112 () Bool)

(assert (=> bs!1877353 m!7776112))

(assert (=> setNonEmpty!49912 d!2205701))

(assert (=> b!7057235 d!2205627))

(assert (=> b!7057235 d!2205645))

(declare-fun d!2205703 () Bool)

(declare-fun nullableFct!2782 (Regex!17582) Bool)

(assert (=> d!2205703 (= (nullable!7265 (h!74596 (exprs!7078 lt!2533572))) (nullableFct!2782 (h!74596 (exprs!7078 lt!2533572))))))

(declare-fun bs!1877354 () Bool)

(assert (= bs!1877354 d!2205703))

(declare-fun m!7776114 () Bool)

(assert (=> bs!1877354 m!7776114))

(assert (=> b!7057226 d!2205703))

(declare-fun d!2205705 () Bool)

(assert (=> d!2205705 (= (tail!13721 (exprs!7078 lt!2533572)) (t!382051 (exprs!7078 lt!2533572)))))

(assert (=> b!7057226 d!2205705))

(declare-fun d!2205707 () Bool)

(declare-fun c!1315012 () Bool)

(assert (=> d!2205707 (= c!1315012 (isEmpty!39751 s!7408))))

(declare-fun e!4242836 () Bool)

(assert (=> d!2205707 (= (matchZipper!3122 (appendTo!703 lt!2533540 ct2!306) s!7408) e!4242836)))

(declare-fun b!7057449 () Bool)

(assert (=> b!7057449 (= e!4242836 (nullableZipper!2666 (appendTo!703 lt!2533540 ct2!306)))))

(declare-fun b!7057450 () Bool)

(assert (=> b!7057450 (= e!4242836 (matchZipper!3122 (derivationStepZipper!3032 (appendTo!703 lt!2533540 ct2!306) (head!14367 s!7408)) (tail!13723 s!7408)))))

(assert (= (and d!2205707 c!1315012) b!7057449))

(assert (= (and d!2205707 (not c!1315012)) b!7057450))

(assert (=> d!2205707 m!7776032))

(assert (=> b!7057449 m!7775760))

(declare-fun m!7776116 () Bool)

(assert (=> b!7057449 m!7776116))

(assert (=> b!7057450 m!7776036))

(assert (=> b!7057450 m!7775760))

(assert (=> b!7057450 m!7776036))

(declare-fun m!7776118 () Bool)

(assert (=> b!7057450 m!7776118))

(assert (=> b!7057450 m!7776040))

(assert (=> b!7057450 m!7776118))

(assert (=> b!7057450 m!7776040))

(declare-fun m!7776120 () Bool)

(assert (=> b!7057450 m!7776120))

(assert (=> b!7057237 d!2205707))

(declare-fun bs!1877355 () Bool)

(declare-fun d!2205709 () Bool)

(assert (= bs!1877355 (and d!2205709 b!7057224)))

(declare-fun lambda!421116 () Int)

(assert (=> bs!1877355 (= lambda!421116 lambda!421034)))

(declare-fun bs!1877356 () Bool)

(assert (= bs!1877356 (and d!2205709 d!2205681)))

(assert (=> bs!1877356 (= lambda!421116 lambda!421110)))

(assert (=> d!2205709 true))

(assert (=> d!2205709 (= (appendTo!703 lt!2533540 ct2!306) (map!15906 lt!2533540 lambda!421116))))

(declare-fun bs!1877357 () Bool)

(assert (= bs!1877357 d!2205709))

(declare-fun m!7776122 () Bool)

(assert (=> bs!1877357 m!7776122))

(assert (=> b!7057237 d!2205709))

(declare-fun b!7057455 () Bool)

(declare-fun e!4242839 () Bool)

(declare-fun tp!1940499 () Bool)

(declare-fun tp!1940500 () Bool)

(assert (=> b!7057455 (= e!4242839 (and tp!1940499 tp!1940500))))

(assert (=> b!7057227 (= tp!1940481 e!4242839)))

(assert (= (and b!7057227 (is-Cons!68148 (exprs!7078 setElem!49912))) b!7057455))

(declare-fun b!7057460 () Bool)

(declare-fun e!4242842 () Bool)

(declare-fun tp!1940503 () Bool)

(assert (=> b!7057460 (= e!4242842 (and tp_is_empty!44389 tp!1940503))))

(assert (=> b!7057220 (= tp!1940479 e!4242842)))

(assert (= (and b!7057220 (is-Cons!68149 (t!382052 s!7408))) b!7057460))

(declare-fun b!7057461 () Bool)

(declare-fun e!4242843 () Bool)

(declare-fun tp!1940504 () Bool)

(declare-fun tp!1940505 () Bool)

(assert (=> b!7057461 (= e!4242843 (and tp!1940504 tp!1940505))))

(assert (=> b!7057234 (= tp!1940482 e!4242843)))

(assert (= (and b!7057234 (is-Cons!68148 (exprs!7078 ct2!306))) b!7057461))

(declare-fun condSetEmpty!49918 () Bool)

(assert (=> setNonEmpty!49912 (= condSetEmpty!49918 (= setRest!49912 (as set.empty (Set Context!13156))))))

(declare-fun setRes!49918 () Bool)

(assert (=> setNonEmpty!49912 (= tp!1940480 setRes!49918)))

(declare-fun setIsEmpty!49918 () Bool)

(assert (=> setIsEmpty!49918 setRes!49918))

(declare-fun e!4242846 () Bool)

(declare-fun tp!1940510 () Bool)

(declare-fun setElem!49918 () Context!13156)

(declare-fun setNonEmpty!49918 () Bool)

(assert (=> setNonEmpty!49918 (= setRes!49918 (and tp!1940510 (inv!86815 setElem!49918) e!4242846))))

(declare-fun setRest!49918 () (Set Context!13156))

(assert (=> setNonEmpty!49918 (= setRest!49912 (set.union (set.insert setElem!49918 (as set.empty (Set Context!13156))) setRest!49918))))

(declare-fun b!7057466 () Bool)

(declare-fun tp!1940511 () Bool)

(assert (=> b!7057466 (= e!4242846 tp!1940511)))

(assert (= (and setNonEmpty!49912 condSetEmpty!49918) setIsEmpty!49918))

(assert (= (and setNonEmpty!49912 (not condSetEmpty!49918)) setNonEmpty!49918))

(assert (= setNonEmpty!49918 b!7057466))

(declare-fun m!7776124 () Bool)

(assert (=> setNonEmpty!49918 m!7776124))

(declare-fun b_lambda!268879 () Bool)

(assert (= b_lambda!268869 (or b!7057230 b_lambda!268879)))

(declare-fun bs!1877358 () Bool)

(declare-fun d!2205711 () Bool)

(assert (= bs!1877358 (and d!2205711 b!7057230)))

(assert (=> bs!1877358 (= (dynLambda!27669 lambda!421036 lt!2533545) (derivationStepZipperUp!2166 lt!2533545 (h!74597 s!7408)))))

(assert (=> bs!1877358 m!7775730))

(assert (=> d!2205637 d!2205711))

(declare-fun b_lambda!268881 () Bool)

(assert (= b_lambda!268871 (or b!7057224 b_lambda!268881)))

(declare-fun bs!1877359 () Bool)

(declare-fun d!2205713 () Bool)

(assert (= bs!1877359 (and d!2205713 b!7057224)))

(declare-fun lt!2533765 () Unit!161837)

(assert (=> bs!1877359 (= lt!2533765 (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533545) (exprs!7078 ct2!306) lambda!421035))))

(assert (=> bs!1877359 (= (dynLambda!27668 lambda!421034 lt!2533545) (Context!13157 (++!15665 (exprs!7078 lt!2533545) (exprs!7078 ct2!306))))))

(declare-fun m!7776126 () Bool)

(assert (=> bs!1877359 m!7776126))

(declare-fun m!7776128 () Bool)

(assert (=> bs!1877359 m!7776128))

(assert (=> d!2205653 d!2205713))

(declare-fun b_lambda!268883 () Bool)

(assert (= b_lambda!268867 (or b!7057224 b_lambda!268883)))

(declare-fun bs!1877360 () Bool)

(declare-fun d!2205715 () Bool)

(assert (= bs!1877360 (and d!2205715 b!7057224)))

(declare-fun lt!2533766 () Unit!161837)

(assert (=> bs!1877360 (= lt!2533766 (lemmaConcatPreservesForall!893 (exprs!7078 lt!2533728) (exprs!7078 ct2!306) lambda!421035))))

(assert (=> bs!1877360 (= (dynLambda!27668 lambda!421034 lt!2533728) (Context!13157 (++!15665 (exprs!7078 lt!2533728) (exprs!7078 ct2!306))))))

(declare-fun m!7776130 () Bool)

(assert (=> bs!1877360 m!7776130))

(declare-fun m!7776132 () Bool)

(assert (=> bs!1877360 m!7776132))

(assert (=> d!2205625 d!2205715))

(declare-fun b_lambda!268885 () Bool)

(assert (= b_lambda!268875 (or b!7057221 b_lambda!268885)))

(declare-fun bs!1877361 () Bool)

(declare-fun d!2205717 () Bool)

(assert (= bs!1877361 (and d!2205717 b!7057221)))

(assert (=> bs!1877361 (= (dynLambda!27671 lambda!421033 lt!2533754) (matchZipper!3122 (set.insert lt!2533754 (as set.empty (Set Context!13156))) s!7408))))

(declare-fun m!7776134 () Bool)

(assert (=> bs!1877361 m!7776134))

(assert (=> bs!1877361 m!7776134))

(declare-fun m!7776136 () Bool)

(assert (=> bs!1877361 m!7776136))

(assert (=> d!2205673 d!2205717))

(declare-fun b_lambda!268887 () Bool)

(assert (= b_lambda!268877 (or b!7057230 b_lambda!268887)))

(declare-fun bs!1877362 () Bool)

(declare-fun d!2205719 () Bool)

(assert (= bs!1877362 (and d!2205719 b!7057230)))

(assert (=> bs!1877362 (= (dynLambda!27669 lambda!421036 lt!2533543) (derivationStepZipperUp!2166 lt!2533543 (h!74597 s!7408)))))

(assert (=> bs!1877362 m!7775706))

(assert (=> d!2205697 d!2205719))

(declare-fun b_lambda!268889 () Bool)

(assert (= b_lambda!268873 (or b!7057230 b_lambda!268889)))

(declare-fun bs!1877363 () Bool)

(declare-fun d!2205721 () Bool)

(assert (= bs!1877363 (and d!2205721 b!7057230)))

(assert (=> bs!1877363 (= (dynLambda!27669 lambda!421036 lt!2533553) (derivationStepZipperUp!2166 lt!2533553 (h!74597 s!7408)))))

(assert (=> bs!1877363 m!7775746))

(assert (=> d!2205655 d!2205721))

(push 1)

(assert (not d!2205699))

(assert (not b!7057359))

(assert (not b!7057438))

(assert (not bm!641151))

(assert (not d!2205695))

(assert (not d!2205659))

(assert (not bs!1877358))

(assert (not b!7057392))

(assert (not b_lambda!268883))

(assert (not d!2205703))

(assert (not bm!641136))

(assert (not setNonEmpty!49918))

(assert (not b_lambda!268885))

(assert (not bm!641154))

(assert (not d!2205621))

(assert (not b!7057444))

(assert (not d!2205679))

(assert (not d!2205673))

(assert (not d!2205685))

(assert (not bs!1877362))

(assert (not d!2205693))

(assert (not b!7057387))

(assert (not d!2205687))

(assert (not d!2205635))

(assert (not d!2205677))

(assert (not b!7057426))

(assert (not d!2205643))

(assert (not b!7057391))

(assert (not b!7057436))

(assert (not b!7057376))

(assert (not b!7057445))

(assert (not bm!641137))

(assert (not b_lambda!268879))

(assert (not b!7057333))

(assert (not b!7057455))

(assert (not d!2205675))

(assert (not d!2205669))

(assert (not bm!641152))

(assert (not b_lambda!268881))

(assert (not d!2205625))

(assert (not b!7057364))

(assert (not d!2205657))

(assert (not bm!641138))

(assert (not b_lambda!268887))

(assert (not b!7057386))

(assert (not b!7057450))

(assert (not d!2205645))

(assert (not d!2205701))

(assert (not b!7057446))

(assert (not b!7057377))

(assert (not b!7057443))

(assert tp_is_empty!44389)

(assert (not b!7057442))

(assert (not b!7057373))

(assert (not d!2205647))

(assert (not d!2205683))

(assert (not b!7057332))

(assert (not b!7057461))

(assert (not d!2205627))

(assert (not d!2205689))

(assert (not bs!1877360))

(assert (not b!7057358))

(assert (not b!7057448))

(assert (not d!2205681))

(assert (not d!2205671))

(assert (not d!2205651))

(assert (not b!7057460))

(assert (not bs!1877359))

(assert (not d!2205623))

(assert (not b!7057430))

(assert (not d!2205641))

(assert (not d!2205709))

(assert (not b!7057466))

(assert (not b!7057449))

(assert (not bs!1877361))

(assert (not d!2205697))

(assert (not b!7057447))

(assert (not b_lambda!268889))

(assert (not d!2205691))

(assert (not b!7057437))

(assert (not d!2205653))

(assert (not b!7057435))

(assert (not d!2205655))

(assert (not d!2205707))

(assert (not b!7057344))

(assert (not bs!1877363))

(assert (not b!7057368))

(assert (not b!7057431))

(assert (not b!7057417))

(assert (not d!2205637))

(assert (not b!7057343))

(assert (not b!7057379))

(assert (not b!7057439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

