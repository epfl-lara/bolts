; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92232 () Bool)

(assert start!92232)

(declare-fun b!1084893 () Bool)

(assert (=> b!1084893 true))

(declare-fun b!1084890 () Bool)

(declare-fun res!482645 () Bool)

(declare-fun e!686064 () Bool)

(assert (=> b!1084890 (=> (not res!482645) (not e!686064))))

(declare-datatypes ((C!6546 0))(
  ( (C!6547 (val!3521 Int)) )
))
(declare-datatypes ((Regex!2988 0))(
  ( (ElementMatch!2988 (c!183271 C!6546)) (Concat!4821 (regOne!6488 Regex!2988) (regTwo!6488 Regex!2988)) (EmptyExpr!2988) (Star!2988 (reg!3317 Regex!2988)) (EmptyLang!2988) (Union!2988 (regOne!6489 Regex!2988) (regTwo!6489 Regex!2988)) )
))
(declare-datatypes ((List!10267 0))(
  ( (Nil!10251) (Cons!10251 (h!15652 Regex!2988) (t!101313 List!10267)) )
))
(declare-datatypes ((Context!936 0))(
  ( (Context!937 (exprs!968 List!10267)) )
))
(declare-fun z!1122 () (Set Context!936))

(declare-datatypes ((List!10268 0))(
  ( (Nil!10252) (Cons!10252 (h!15653 C!6546) (t!101314 List!10268)) )
))
(declare-fun s!2287 () List!10268)

(declare-fun matchZipper!36 ((Set Context!936) List!10268) Bool)

(assert (=> b!1084890 (= res!482645 (matchZipper!36 z!1122 s!2287))))

(declare-fun e!686062 () Bool)

(declare-fun setElem!7479 () Context!936)

(declare-fun setNonEmpty!7479 () Bool)

(declare-fun setRes!7479 () Bool)

(declare-fun tp!324603 () Bool)

(declare-fun inv!13184 (Context!936) Bool)

(assert (=> setNonEmpty!7479 (= setRes!7479 (and tp!324603 (inv!13184 setElem!7479) e!686062))))

(declare-fun setRest!7479 () (Set Context!936))

(assert (=> setNonEmpty!7479 (= z!1122 (set.union (set.insert setElem!7479 (as set.empty (Set Context!936))) setRest!7479))))

(declare-fun e!686061 () Bool)

(declare-fun tp!324601 () Bool)

(declare-fun b!1084891 () Bool)

(declare-datatypes ((List!10269 0))(
  ( (Nil!10253) (Cons!10253 (h!15654 Context!936) (t!101315 List!10269)) )
))
(declare-fun zl!316 () List!10269)

(declare-fun e!686063 () Bool)

(assert (=> b!1084891 (= e!686061 (and (inv!13184 (h!15654 zl!316)) e!686063 tp!324601))))

(declare-fun res!482644 () Bool)

(assert (=> start!92232 (=> (not res!482644) (not e!686064))))

(declare-fun toList!606 ((Set Context!936)) List!10269)

(assert (=> start!92232 (= res!482644 (= (toList!606 z!1122) zl!316))))

(assert (=> start!92232 e!686064))

(declare-fun condSetEmpty!7479 () Bool)

(assert (=> start!92232 (= condSetEmpty!7479 (= z!1122 (as set.empty (Set Context!936))))))

(assert (=> start!92232 setRes!7479))

(assert (=> start!92232 e!686061))

(declare-fun e!686060 () Bool)

(assert (=> start!92232 e!686060))

(declare-fun b!1084892 () Bool)

(declare-fun tp_is_empty!5607 () Bool)

(declare-fun tp!324604 () Bool)

(assert (=> b!1084892 (= e!686060 (and tp_is_empty!5607 tp!324604))))

(declare-fun lambda!39648 () Int)

(declare-fun exists!117 ((Set Context!936) Int) Bool)

(assert (=> b!1084893 (= e!686064 (not (exists!117 z!1122 lambda!39648)))))

(declare-fun exists!118 (List!10269 Int) Bool)

(assert (=> b!1084893 (exists!118 zl!316 lambda!39648)))

(declare-datatypes ((Unit!15651 0))(
  ( (Unit!15652) )
))
(declare-fun lt!362870 () Unit!15651)

(declare-fun lemmaZipperMatchesExistsMatchingContext!15 (List!10269 List!10268) Unit!15651)

(assert (=> b!1084893 (= lt!362870 (lemmaZipperMatchesExistsMatchingContext!15 zl!316 s!2287))))

(declare-fun b!1084894 () Bool)

(declare-fun tp!324602 () Bool)

(assert (=> b!1084894 (= e!686063 tp!324602)))

(declare-fun setIsEmpty!7479 () Bool)

(assert (=> setIsEmpty!7479 setRes!7479))

(declare-fun b!1084895 () Bool)

(declare-fun tp!324605 () Bool)

(assert (=> b!1084895 (= e!686062 tp!324605)))

(assert (= (and start!92232 res!482644) b!1084890))

(assert (= (and b!1084890 res!482645) b!1084893))

(assert (= (and start!92232 condSetEmpty!7479) setIsEmpty!7479))

(assert (= (and start!92232 (not condSetEmpty!7479)) setNonEmpty!7479))

(assert (= setNonEmpty!7479 b!1084895))

(assert (= b!1084891 b!1084894))

(assert (= (and start!92232 (is-Cons!10253 zl!316)) b!1084891))

(assert (= (and start!92232 (is-Cons!10252 s!2287)) b!1084892))

(declare-fun m!1234509 () Bool)

(assert (=> b!1084893 m!1234509))

(declare-fun m!1234511 () Bool)

(assert (=> b!1084893 m!1234511))

(declare-fun m!1234513 () Bool)

(assert (=> b!1084893 m!1234513))

(declare-fun m!1234515 () Bool)

(assert (=> setNonEmpty!7479 m!1234515))

(declare-fun m!1234517 () Bool)

(assert (=> start!92232 m!1234517))

(declare-fun m!1234519 () Bool)

(assert (=> b!1084890 m!1234519))

(declare-fun m!1234521 () Bool)

(assert (=> b!1084891 m!1234521))

(push 1)

(assert (not b!1084894))

(assert (not b!1084890))

(assert (not b!1084893))

(assert (not b!1084891))

(assert (not setNonEmpty!7479))

(assert (not b!1084892))

(assert (not start!92232))

(assert tp_is_empty!5607)

(assert (not b!1084895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304770 () Bool)

(declare-fun lambda!39656 () Int)

(declare-fun forall!2245 (List!10267 Int) Bool)

(assert (=> d!304770 (= (inv!13184 (h!15654 zl!316)) (forall!2245 (exprs!968 (h!15654 zl!316)) lambda!39656))))

(declare-fun bs!256464 () Bool)

(assert (= bs!256464 d!304770))

(declare-fun m!1234537 () Bool)

(assert (=> bs!256464 m!1234537))

(assert (=> b!1084891 d!304770))

(declare-fun d!304774 () Bool)

(declare-fun lt!362876 () Bool)

(assert (=> d!304774 (= lt!362876 (exists!118 (toList!606 z!1122) lambda!39648))))

(declare-fun choose!6884 ((Set Context!936) Int) Bool)

(assert (=> d!304774 (= lt!362876 (choose!6884 z!1122 lambda!39648))))

(assert (=> d!304774 (= (exists!117 z!1122 lambda!39648) lt!362876)))

(declare-fun bs!256465 () Bool)

(assert (= bs!256465 d!304774))

(assert (=> bs!256465 m!1234517))

(assert (=> bs!256465 m!1234517))

(declare-fun m!1234539 () Bool)

(assert (=> bs!256465 m!1234539))

(declare-fun m!1234541 () Bool)

(assert (=> bs!256465 m!1234541))

(assert (=> b!1084893 d!304774))

(declare-fun bs!256466 () Bool)

(declare-fun d!304776 () Bool)

(assert (= bs!256466 (and d!304776 b!1084893)))

(declare-fun lambda!39659 () Int)

(assert (=> bs!256466 (not (= lambda!39659 lambda!39648))))

(assert (=> d!304776 true))

(declare-fun order!6181 () Int)

(declare-fun dynLambda!4499 (Int Int) Int)

(assert (=> d!304776 (< (dynLambda!4499 order!6181 lambda!39648) (dynLambda!4499 order!6181 lambda!39659))))

(declare-fun forall!2246 (List!10269 Int) Bool)

(assert (=> d!304776 (= (exists!118 zl!316 lambda!39648) (not (forall!2246 zl!316 lambda!39659)))))

(declare-fun bs!256467 () Bool)

(assert (= bs!256467 d!304776))

(declare-fun m!1234543 () Bool)

(assert (=> bs!256467 m!1234543))

(assert (=> b!1084893 d!304776))

(declare-fun bs!256468 () Bool)

(declare-fun d!304778 () Bool)

(assert (= bs!256468 (and d!304778 b!1084893)))

(declare-fun lambda!39662 () Int)

(assert (=> bs!256468 (= lambda!39662 lambda!39648)))

(declare-fun bs!256469 () Bool)

(assert (= bs!256469 (and d!304778 d!304776)))

(assert (=> bs!256469 (not (= lambda!39662 lambda!39659))))

(assert (=> d!304778 true))

(assert (=> d!304778 (exists!118 zl!316 lambda!39662)))

(declare-fun lt!362879 () Unit!15651)

(declare-fun choose!6885 (List!10269 List!10268) Unit!15651)

(assert (=> d!304778 (= lt!362879 (choose!6885 zl!316 s!2287))))

(declare-fun content!1467 (List!10269) (Set Context!936))

(assert (=> d!304778 (matchZipper!36 (content!1467 zl!316) s!2287)))

(assert (=> d!304778 (= (lemmaZipperMatchesExistsMatchingContext!15 zl!316 s!2287) lt!362879)))

(declare-fun bs!256470 () Bool)

(assert (= bs!256470 d!304778))

(declare-fun m!1234557 () Bool)

(assert (=> bs!256470 m!1234557))

(declare-fun m!1234559 () Bool)

(assert (=> bs!256470 m!1234559))

(declare-fun m!1234561 () Bool)

(assert (=> bs!256470 m!1234561))

(assert (=> bs!256470 m!1234561))

(declare-fun m!1234563 () Bool)

(assert (=> bs!256470 m!1234563))

(assert (=> b!1084893 d!304778))

(declare-fun d!304782 () Bool)

(declare-fun e!686085 () Bool)

(assert (=> d!304782 e!686085))

(declare-fun res!482654 () Bool)

(assert (=> d!304782 (=> (not res!482654) (not e!686085))))

(declare-fun lt!362885 () List!10269)

(declare-fun noDuplicate!176 (List!10269) Bool)

(assert (=> d!304782 (= res!482654 (noDuplicate!176 lt!362885))))

(declare-fun choose!6886 ((Set Context!936)) List!10269)

(assert (=> d!304782 (= lt!362885 (choose!6886 z!1122))))

(assert (=> d!304782 (= (toList!606 z!1122) lt!362885)))

(declare-fun b!1084928 () Bool)

(assert (=> b!1084928 (= e!686085 (= (content!1467 lt!362885) z!1122))))

(assert (= (and d!304782 res!482654) b!1084928))

(declare-fun m!1234569 () Bool)

(assert (=> d!304782 m!1234569))

(declare-fun m!1234571 () Bool)

(assert (=> d!304782 m!1234571))

(declare-fun m!1234573 () Bool)

(assert (=> b!1084928 m!1234573))

(assert (=> start!92232 d!304782))

(declare-fun d!304786 () Bool)

(declare-fun c!183284 () Bool)

(declare-fun isEmpty!6614 (List!10268) Bool)

(assert (=> d!304786 (= c!183284 (isEmpty!6614 s!2287))))

(declare-fun e!686088 () Bool)

(assert (=> d!304786 (= (matchZipper!36 z!1122 s!2287) e!686088)))

(declare-fun b!1084933 () Bool)

(declare-fun nullableZipper!13 ((Set Context!936)) Bool)

(assert (=> b!1084933 (= e!686088 (nullableZipper!13 z!1122))))

(declare-fun b!1084934 () Bool)

(declare-fun derivationStepZipper!11 ((Set Context!936) C!6546) (Set Context!936))

(declare-fun head!1999 (List!10268) C!6546)

(declare-fun tail!1561 (List!10268) List!10268)

(assert (=> b!1084934 (= e!686088 (matchZipper!36 (derivationStepZipper!11 z!1122 (head!1999 s!2287)) (tail!1561 s!2287)))))

(assert (= (and d!304786 c!183284) b!1084933))

(assert (= (and d!304786 (not c!183284)) b!1084934))

(declare-fun m!1234575 () Bool)

(assert (=> d!304786 m!1234575))

(declare-fun m!1234577 () Bool)

(assert (=> b!1084933 m!1234577))

(declare-fun m!1234579 () Bool)

(assert (=> b!1084934 m!1234579))

(assert (=> b!1084934 m!1234579))

(declare-fun m!1234581 () Bool)

(assert (=> b!1084934 m!1234581))

(declare-fun m!1234583 () Bool)

(assert (=> b!1084934 m!1234583))

(assert (=> b!1084934 m!1234581))

(assert (=> b!1084934 m!1234583))

(declare-fun m!1234585 () Bool)

(assert (=> b!1084934 m!1234585))

(assert (=> b!1084890 d!304786))

(declare-fun bs!256472 () Bool)

(declare-fun d!304788 () Bool)

(assert (= bs!256472 (and d!304788 d!304770)))

(declare-fun lambda!39666 () Int)

(assert (=> bs!256472 (= lambda!39666 lambda!39656)))

(assert (=> d!304788 (= (inv!13184 setElem!7479) (forall!2245 (exprs!968 setElem!7479) lambda!39666))))

(declare-fun bs!256473 () Bool)

(assert (= bs!256473 d!304788))

(declare-fun m!1234587 () Bool)

(assert (=> bs!256473 m!1234587))

(assert (=> setNonEmpty!7479 d!304788))

(declare-fun b!1084944 () Bool)

(declare-fun e!686094 () Bool)

(declare-fun tp!324625 () Bool)

(assert (=> b!1084944 (= e!686094 tp!324625)))

(declare-fun tp!324626 () Bool)

(declare-fun e!686093 () Bool)

(declare-fun b!1084943 () Bool)

(assert (=> b!1084943 (= e!686093 (and (inv!13184 (h!15654 (t!101315 zl!316))) e!686094 tp!324626))))

(assert (=> b!1084891 (= tp!324601 e!686093)))

(assert (= b!1084943 b!1084944))

(assert (= (and b!1084891 (is-Cons!10253 (t!101315 zl!316))) b!1084943))

(declare-fun m!1234591 () Bool)

(assert (=> b!1084943 m!1234591))

(declare-fun b!1084949 () Bool)

(declare-fun e!686097 () Bool)

(declare-fun tp!324629 () Bool)

(assert (=> b!1084949 (= e!686097 (and tp_is_empty!5607 tp!324629))))

(assert (=> b!1084892 (= tp!324604 e!686097)))

(assert (= (and b!1084892 (is-Cons!10252 (t!101314 s!2287))) b!1084949))

(declare-fun b!1084954 () Bool)

(declare-fun e!686100 () Bool)

(declare-fun tp!324634 () Bool)

(declare-fun tp!324635 () Bool)

(assert (=> b!1084954 (= e!686100 (and tp!324634 tp!324635))))

(assert (=> b!1084894 (= tp!324602 e!686100)))

(assert (= (and b!1084894 (is-Cons!10251 (exprs!968 (h!15654 zl!316)))) b!1084954))

(declare-fun condSetEmpty!7485 () Bool)

(assert (=> setNonEmpty!7479 (= condSetEmpty!7485 (= setRest!7479 (as set.empty (Set Context!936))))))

(declare-fun setRes!7485 () Bool)

(assert (=> setNonEmpty!7479 (= tp!324603 setRes!7485)))

(declare-fun setIsEmpty!7485 () Bool)

(assert (=> setIsEmpty!7485 setRes!7485))

(declare-fun e!686103 () Bool)

(declare-fun tp!324641 () Bool)

(declare-fun setElem!7485 () Context!936)

(declare-fun setNonEmpty!7485 () Bool)

(assert (=> setNonEmpty!7485 (= setRes!7485 (and tp!324641 (inv!13184 setElem!7485) e!686103))))

(declare-fun setRest!7485 () (Set Context!936))

(assert (=> setNonEmpty!7485 (= setRest!7479 (set.union (set.insert setElem!7485 (as set.empty (Set Context!936))) setRest!7485))))

(declare-fun b!1084959 () Bool)

(declare-fun tp!324640 () Bool)

(assert (=> b!1084959 (= e!686103 tp!324640)))

(assert (= (and setNonEmpty!7479 condSetEmpty!7485) setIsEmpty!7485))

(assert (= (and setNonEmpty!7479 (not condSetEmpty!7485)) setNonEmpty!7485))

(assert (= setNonEmpty!7485 b!1084959))

(declare-fun m!1234593 () Bool)

(assert (=> setNonEmpty!7485 m!1234593))

(declare-fun b!1084960 () Bool)

(declare-fun e!686104 () Bool)

(declare-fun tp!324642 () Bool)

(declare-fun tp!324643 () Bool)

(assert (=> b!1084960 (= e!686104 (and tp!324642 tp!324643))))

(assert (=> b!1084895 (= tp!324605 e!686104)))

(assert (= (and b!1084895 (is-Cons!10251 (exprs!968 setElem!7479))) b!1084960))

(push 1)

(assert (not d!304782))

(assert (not b!1084928))

(assert (not d!304774))

(assert (not d!304776))

(assert (not b!1084959))

(assert (not d!304778))

(assert (not b!1084949))

(assert (not b!1084943))

(assert (not b!1084960))

(assert tp_is_empty!5607)

(assert (not b!1084944))

(assert (not d!304786))

(assert (not d!304788))

(assert (not b!1084954))

(assert (not b!1084933))

(assert (not setNonEmpty!7485))

(assert (not d!304770))

(assert (not b!1084934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

