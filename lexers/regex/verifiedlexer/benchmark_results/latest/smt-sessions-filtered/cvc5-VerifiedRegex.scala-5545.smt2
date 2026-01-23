; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278952 () Bool)

(assert start!278952)

(declare-fun b!2863783 () Bool)

(assert (=> b!2863783 true))

(declare-fun condSetEmpty!25464 () Bool)

(declare-datatypes ((C!17470 0))(
  ( (C!17471 (val!10769 Int)) )
))
(declare-datatypes ((Regex!8644 0))(
  ( (ElementMatch!8644 (c!461715 C!17470)) (Concat!13965 (regOne!17800 Regex!8644) (regTwo!17800 Regex!8644)) (EmptyExpr!8644) (Star!8644 (reg!8973 Regex!8644)) (EmptyLang!8644) (Union!8644 (regOne!17801 Regex!8644) (regTwo!17801 Regex!8644)) )
))
(declare-datatypes ((List!34276 0))(
  ( (Nil!34152) (Cons!34152 (h!39572 Regex!8644) (t!233317 List!34276)) )
))
(declare-datatypes ((Context!5208 0))(
  ( (Context!5209 (exprs!3104 List!34276)) )
))
(declare-fun z!960 () (Set Context!5208))

(assert (=> b!2863783 (= condSetEmpty!25464 (= z!960 (as set.empty (Set Context!5208))))))

(declare-fun setRes!25464 () Bool)

(assert (=> b!2863783 setRes!25464))

(declare-fun setIsEmpty!25464 () Bool)

(assert (=> setIsEmpty!25464 setRes!25464))

(declare-fun setNonEmpty!25464 () Bool)

(assert (=> setNonEmpty!25464 (= setRes!25464 true)))

(declare-fun setElem!25464 () Context!5208)

(declare-fun setRest!25464 () (Set Context!5208))

(assert (=> setNonEmpty!25464 (= z!960 (set.union (set.insert setElem!25464 (as set.empty (Set Context!5208))) setRest!25464))))

(assert (= (and b!2863783 condSetEmpty!25464) setIsEmpty!25464))

(assert (= (and b!2863783 (not condSetEmpty!25464)) setNonEmpty!25464))

(declare-fun setElem!25461 () Context!5208)

(declare-fun e!1812910 () Bool)

(declare-fun tp!922191 () Bool)

(declare-fun setNonEmpty!25461 () Bool)

(declare-fun setRes!25461 () Bool)

(declare-fun inv!46198 (Context!5208) Bool)

(assert (=> setNonEmpty!25461 (= setRes!25461 (and tp!922191 (inv!46198 setElem!25461) e!1812910))))

(declare-fun setRest!25461 () (Set Context!5208))

(assert (=> setNonEmpty!25461 (= z!960 (set.union (set.insert setElem!25461 (as set.empty (Set Context!5208))) setRest!25461))))

(declare-fun b!2863779 () Bool)

(declare-fun tp!922193 () Bool)

(assert (=> b!2863779 (= e!1812910 tp!922193)))

(declare-fun b!2863781 () Bool)

(declare-fun res!1188964 () Bool)

(declare-fun e!1812912 () Bool)

(assert (=> b!2863781 (=> (not res!1188964) (not e!1812912))))

(declare-datatypes ((List!34277 0))(
  ( (Nil!34153) (Cons!34153 (h!39573 C!17470) (t!233318 List!34277)) )
))
(declare-fun prefix!919 () List!34277)

(assert (=> b!2863781 (= res!1188964 (is-Nil!34153 prefix!919))))

(declare-fun setIsEmpty!25461 () Bool)

(assert (=> setIsEmpty!25461 setRes!25461))

(declare-fun b!2863782 () Bool)

(declare-fun e!1812911 () Bool)

(assert (=> b!2863782 (= e!1812912 (not e!1812911))))

(declare-fun res!1188963 () Bool)

(assert (=> b!2863782 (=> res!1188963 e!1812911)))

(declare-fun lt!1015212 () List!34277)

(declare-fun isPrefix!2699 (List!34277 List!34277) Bool)

(assert (=> b!2863782 (= res!1188963 (not (isPrefix!2699 prefix!919 lt!1015212)))))

(declare-fun matchZipper!438 ((Set Context!5208) List!34277) Bool)

(assert (=> b!2863782 (matchZipper!438 z!960 lt!1015212)))

(declare-datatypes ((Unit!47817 0))(
  ( (Unit!47818) )
))
(declare-fun lt!1015214 () Unit!47817)

(declare-fun lemmaGetWitnessMatchesZipper!7 ((Set Context!5208)) Unit!47817)

(assert (=> b!2863782 (= lt!1015214 (lemmaGetWitnessMatchesZipper!7 z!960))))

(declare-datatypes ((Option!6332 0))(
  ( (None!6331) (Some!6331 (v!34453 List!34277)) )
))
(declare-fun get!10241 (Option!6332) List!34277)

(declare-fun getLanguageWitness!272 ((Set Context!5208)) Option!6332)

(assert (=> b!2863782 (= lt!1015212 (get!10241 (getLanguageWitness!272 z!960)))))

(declare-fun lambda!105630 () Int)

(declare-fun Exists!1324 (Int) Bool)

(assert (=> b!2863783 (= e!1812911 (Exists!1324 lambda!105630))))

(declare-fun lt!1015213 () Unit!47817)

(declare-fun ExistsThe!13 (List!34277 Int) Unit!47817)

(assert (=> b!2863783 (= lt!1015213 (ExistsThe!13 lt!1015212 lambda!105630))))

(declare-fun res!1188965 () Bool)

(assert (=> start!278952 (=> (not res!1188965) (not e!1812912))))

(declare-fun prefixMatchZipper!326 ((Set Context!5208) List!34277) Bool)

(assert (=> start!278952 (= res!1188965 (prefixMatchZipper!326 z!960 prefix!919))))

(assert (=> start!278952 e!1812912))

(declare-fun condSetEmpty!25461 () Bool)

(assert (=> start!278952 (= condSetEmpty!25461 (= z!960 (as set.empty (Set Context!5208))))))

(assert (=> start!278952 setRes!25461))

(declare-fun e!1812909 () Bool)

(assert (=> start!278952 e!1812909))

(declare-fun b!2863780 () Bool)

(declare-fun tp_is_empty!15025 () Bool)

(declare-fun tp!922192 () Bool)

(assert (=> b!2863780 (= e!1812909 (and tp_is_empty!15025 tp!922192))))

(assert (= (and start!278952 res!1188965) b!2863781))

(assert (= (and b!2863781 res!1188964) b!2863782))

(assert (= (and b!2863782 (not res!1188963)) b!2863783))

(assert (= (and start!278952 condSetEmpty!25461) setIsEmpty!25461))

(assert (= (and start!278952 (not condSetEmpty!25461)) setNonEmpty!25461))

(assert (= setNonEmpty!25461 b!2863779))

(assert (= (and start!278952 (is-Cons!34153 prefix!919)) b!2863780))

(declare-fun m!3283389 () Bool)

(assert (=> setNonEmpty!25461 m!3283389))

(declare-fun m!3283391 () Bool)

(assert (=> b!2863782 m!3283391))

(declare-fun m!3283393 () Bool)

(assert (=> b!2863782 m!3283393))

(declare-fun m!3283395 () Bool)

(assert (=> b!2863782 m!3283395))

(declare-fun m!3283397 () Bool)

(assert (=> b!2863782 m!3283397))

(assert (=> b!2863782 m!3283393))

(declare-fun m!3283399 () Bool)

(assert (=> b!2863782 m!3283399))

(declare-fun m!3283401 () Bool)

(assert (=> b!2863783 m!3283401))

(declare-fun m!3283403 () Bool)

(assert (=> b!2863783 m!3283403))

(declare-fun m!3283405 () Bool)

(assert (=> start!278952 m!3283405))

(push 1)

(assert (not setNonEmpty!25461))

(assert (not b!2863779))

(assert (not b!2863783))

(assert (not b!2863780))

(assert (not setNonEmpty!25464))

(assert tp_is_empty!15025)

(assert (not b!2863782))

(assert (not start!278952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827982 () Bool)

(declare-fun choose!16873 (Int) Bool)

(assert (=> d!827982 (= (Exists!1324 lambda!105630) (choose!16873 lambda!105630))))

(declare-fun bs!520733 () Bool)

(assert (= bs!520733 d!827982))

(declare-fun m!3283425 () Bool)

(assert (=> bs!520733 m!3283425))

(assert (=> b!2863783 d!827982))

(declare-fun d!827984 () Bool)

(assert (=> d!827984 (Exists!1324 lambda!105630)))

(declare-fun lt!1015226 () Unit!47817)

(declare-fun choose!16874 (List!34277 Int) Unit!47817)

(assert (=> d!827984 (= lt!1015226 (choose!16874 lt!1015212 lambda!105630))))

(declare-fun dynLambda!14261 (Int List!34277) Bool)

(assert (=> d!827984 (dynLambda!14261 lambda!105630 lt!1015212)))

(assert (=> d!827984 (= (ExistsThe!13 lt!1015212 lambda!105630) lt!1015226)))

(declare-fun b_lambda!85859 () Bool)

(assert (=> (not b_lambda!85859) (not d!827984)))

(declare-fun bs!520734 () Bool)

(assert (= bs!520734 d!827984))

(assert (=> bs!520734 m!3283401))

(declare-fun m!3283427 () Bool)

(assert (=> bs!520734 m!3283427))

(declare-fun m!3283429 () Bool)

(assert (=> bs!520734 m!3283429))

(assert (=> b!2863783 d!827984))

(declare-fun d!827988 () Bool)

(declare-fun c!461719 () Bool)

(declare-fun isEmpty!18643 (List!34277) Bool)

(assert (=> d!827988 (= c!461719 (isEmpty!18643 prefix!919))))

(declare-fun e!1812931 () Bool)

(assert (=> d!827988 (= (prefixMatchZipper!326 z!960 prefix!919) e!1812931)))

(declare-fun b!2863815 () Bool)

(declare-fun lostCauseZipper!553 ((Set Context!5208)) Bool)

(assert (=> b!2863815 (= e!1812931 (not (lostCauseZipper!553 z!960)))))

(declare-fun b!2863816 () Bool)

(declare-fun derivationStepZipper!442 ((Set Context!5208) C!17470) (Set Context!5208))

(declare-fun head!6310 (List!34277) C!17470)

(declare-fun tail!4535 (List!34277) List!34277)

(assert (=> b!2863816 (= e!1812931 (prefixMatchZipper!326 (derivationStepZipper!442 z!960 (head!6310 prefix!919)) (tail!4535 prefix!919)))))

(assert (= (and d!827988 c!461719) b!2863815))

(assert (= (and d!827988 (not c!461719)) b!2863816))

(declare-fun m!3283433 () Bool)

(assert (=> d!827988 m!3283433))

(declare-fun m!3283435 () Bool)

(assert (=> b!2863815 m!3283435))

(declare-fun m!3283437 () Bool)

(assert (=> b!2863816 m!3283437))

(assert (=> b!2863816 m!3283437))

(declare-fun m!3283439 () Bool)

(assert (=> b!2863816 m!3283439))

(declare-fun m!3283441 () Bool)

(assert (=> b!2863816 m!3283441))

(assert (=> b!2863816 m!3283439))

(assert (=> b!2863816 m!3283441))

(declare-fun m!3283443 () Bool)

(assert (=> b!2863816 m!3283443))

(assert (=> start!278952 d!827988))

(declare-fun d!827994 () Bool)

(declare-fun lambda!105645 () Int)

(declare-fun forall!6984 (List!34276 Int) Bool)

(assert (=> d!827994 (= (inv!46198 setElem!25461) (forall!6984 (exprs!3104 setElem!25461) lambda!105645))))

(declare-fun bs!520736 () Bool)

(assert (= bs!520736 d!827994))

(declare-fun m!3283445 () Bool)

(assert (=> bs!520736 m!3283445))

(assert (=> setNonEmpty!25461 d!827994))

(declare-fun d!827996 () Bool)

(assert (=> d!827996 (= (get!10241 (getLanguageWitness!272 z!960)) (v!34453 (getLanguageWitness!272 z!960)))))

(assert (=> b!2863782 d!827996))

(declare-fun d!827998 () Bool)

(declare-fun lt!1015232 () Option!6332)

(declare-fun lambda!105655 () Int)

(declare-fun isDefined!4953 (Option!6332) Bool)

(declare-fun exists!1056 ((Set Context!5208) Int) Bool)

(assert (=> d!827998 (= (isDefined!4953 lt!1015232) (exists!1056 z!960 lambda!105655))))

(declare-fun e!1812939 () Option!6332)

(assert (=> d!827998 (= lt!1015232 e!1812939)))

(declare-fun c!461739 () Bool)

(assert (=> d!827998 (= c!461739 (exists!1056 z!960 lambda!105655))))

(assert (=> d!827998 (= (getLanguageWitness!272 z!960) lt!1015232)))

(declare-fun b!2863831 () Bool)

(declare-fun getLanguageWitness!274 (Context!5208) Option!6332)

(declare-fun getWitness!585 ((Set Context!5208) Int) Context!5208)

(assert (=> b!2863831 (= e!1812939 (getLanguageWitness!274 (getWitness!585 z!960 lambda!105655)))))

(declare-fun b!2863832 () Bool)

(assert (=> b!2863832 (= e!1812939 None!6331)))

(assert (= (and d!827998 c!461739) b!2863831))

(assert (= (and d!827998 (not c!461739)) b!2863832))

(declare-fun m!3283455 () Bool)

(assert (=> d!827998 m!3283455))

(declare-fun m!3283457 () Bool)

(assert (=> d!827998 m!3283457))

(assert (=> d!827998 m!3283457))

(declare-fun m!3283459 () Bool)

(assert (=> b!2863831 m!3283459))

(assert (=> b!2863831 m!3283459))

(declare-fun m!3283463 () Bool)

(assert (=> b!2863831 m!3283463))

(assert (=> b!2863782 d!827998))

(declare-fun d!828002 () Bool)

(assert (=> d!828002 (matchZipper!438 z!960 (get!10241 (getLanguageWitness!272 z!960)))))

(declare-fun lt!1015235 () Unit!47817)

(declare-fun choose!16875 ((Set Context!5208)) Unit!47817)

(assert (=> d!828002 (= lt!1015235 (choose!16875 z!960))))

(assert (=> d!828002 (not (lostCauseZipper!553 z!960))))

(assert (=> d!828002 (= (lemmaGetWitnessMatchesZipper!7 z!960) lt!1015235)))

(declare-fun bs!520737 () Bool)

(assert (= bs!520737 d!828002))

(assert (=> bs!520737 m!3283393))

(declare-fun m!3283475 () Bool)

(assert (=> bs!520737 m!3283475))

(assert (=> bs!520737 m!3283395))

(declare-fun m!3283477 () Bool)

(assert (=> bs!520737 m!3283477))

(assert (=> bs!520737 m!3283435))

(assert (=> bs!520737 m!3283393))

(assert (=> bs!520737 m!3283395))

(assert (=> b!2863782 d!828002))

(declare-fun b!2863843 () Bool)

(declare-fun e!1812947 () Bool)

(declare-fun e!1812948 () Bool)

(assert (=> b!2863843 (= e!1812947 e!1812948)))

(declare-fun res!1188990 () Bool)

(assert (=> b!2863843 (=> (not res!1188990) (not e!1812948))))

(assert (=> b!2863843 (= res!1188990 (not (is-Nil!34153 lt!1015212)))))

(declare-fun b!2863845 () Bool)

(assert (=> b!2863845 (= e!1812948 (isPrefix!2699 (tail!4535 prefix!919) (tail!4535 lt!1015212)))))

(declare-fun b!2863846 () Bool)

(declare-fun e!1812949 () Bool)

(declare-fun size!26297 (List!34277) Int)

(assert (=> b!2863846 (= e!1812949 (>= (size!26297 lt!1015212) (size!26297 prefix!919)))))

(declare-fun d!828006 () Bool)

(assert (=> d!828006 e!1812949))

(declare-fun res!1188988 () Bool)

(assert (=> d!828006 (=> res!1188988 e!1812949)))

(declare-fun lt!1015241 () Bool)

(assert (=> d!828006 (= res!1188988 (not lt!1015241))))

(assert (=> d!828006 (= lt!1015241 e!1812947)))

(declare-fun res!1188987 () Bool)

(assert (=> d!828006 (=> res!1188987 e!1812947)))

(assert (=> d!828006 (= res!1188987 (is-Nil!34153 prefix!919))))

(assert (=> d!828006 (= (isPrefix!2699 prefix!919 lt!1015212) lt!1015241)))

(declare-fun b!2863844 () Bool)

(declare-fun res!1188989 () Bool)

(assert (=> b!2863844 (=> (not res!1188989) (not e!1812948))))

(assert (=> b!2863844 (= res!1188989 (= (head!6310 prefix!919) (head!6310 lt!1015212)))))

(assert (= (and d!828006 (not res!1188987)) b!2863843))

(assert (= (and b!2863843 res!1188990) b!2863844))

(assert (= (and b!2863844 res!1188989) b!2863845))

(assert (= (and d!828006 (not res!1188988)) b!2863846))

(assert (=> b!2863845 m!3283441))

(declare-fun m!3283485 () Bool)

(assert (=> b!2863845 m!3283485))

(assert (=> b!2863845 m!3283441))

(assert (=> b!2863845 m!3283485))

(declare-fun m!3283487 () Bool)

(assert (=> b!2863845 m!3283487))

(declare-fun m!3283489 () Bool)

(assert (=> b!2863846 m!3283489))

(declare-fun m!3283491 () Bool)

(assert (=> b!2863846 m!3283491))

(assert (=> b!2863844 m!3283437))

(declare-fun m!3283493 () Bool)

(assert (=> b!2863844 m!3283493))

(assert (=> b!2863782 d!828006))

(declare-fun d!828010 () Bool)

(declare-fun c!461743 () Bool)

(assert (=> d!828010 (= c!461743 (isEmpty!18643 lt!1015212))))

(declare-fun e!1812961 () Bool)

(assert (=> d!828010 (= (matchZipper!438 z!960 lt!1015212) e!1812961)))

(declare-fun b!2863863 () Bool)

(declare-fun nullableZipper!692 ((Set Context!5208)) Bool)

(assert (=> b!2863863 (= e!1812961 (nullableZipper!692 z!960))))

(declare-fun b!2863864 () Bool)

(assert (=> b!2863864 (= e!1812961 (matchZipper!438 (derivationStepZipper!442 z!960 (head!6310 lt!1015212)) (tail!4535 lt!1015212)))))

(assert (= (and d!828010 c!461743) b!2863863))

(assert (= (and d!828010 (not c!461743)) b!2863864))

(declare-fun m!3283505 () Bool)

(assert (=> d!828010 m!3283505))

(declare-fun m!3283509 () Bool)

(assert (=> b!2863863 m!3283509))

(assert (=> b!2863864 m!3283493))

(assert (=> b!2863864 m!3283493))

(declare-fun m!3283511 () Bool)

(assert (=> b!2863864 m!3283511))

(assert (=> b!2863864 m!3283485))

(assert (=> b!2863864 m!3283511))

(assert (=> b!2863864 m!3283485))

(declare-fun m!3283513 () Bool)

(assert (=> b!2863864 m!3283513))

(assert (=> b!2863782 d!828010))

(declare-fun b!2863869 () Bool)

(declare-fun e!1812964 () Bool)

(declare-fun tp!922205 () Bool)

(assert (=> b!2863869 (= e!1812964 (and tp_is_empty!15025 tp!922205))))

(assert (=> b!2863780 (= tp!922192 e!1812964)))

(assert (= (and b!2863780 (is-Cons!34153 (t!233318 prefix!919))) b!2863869))

(declare-fun b!2863874 () Bool)

(declare-fun e!1812967 () Bool)

(declare-fun tp!922210 () Bool)

(declare-fun tp!922211 () Bool)

(assert (=> b!2863874 (= e!1812967 (and tp!922210 tp!922211))))

(assert (=> b!2863779 (= tp!922193 e!1812967)))

(assert (= (and b!2863779 (is-Cons!34152 (exprs!3104 setElem!25461))) b!2863874))

(declare-fun condSetEmpty!25473 () Bool)

(assert (=> setNonEmpty!25461 (= condSetEmpty!25473 (= setRest!25461 (as set.empty (Set Context!5208))))))

(declare-fun setRes!25473 () Bool)

(assert (=> setNonEmpty!25461 (= tp!922191 setRes!25473)))

(declare-fun setIsEmpty!25473 () Bool)

(assert (=> setIsEmpty!25473 setRes!25473))

(declare-fun tp!922217 () Bool)

(declare-fun e!1812970 () Bool)

(declare-fun setElem!25473 () Context!5208)

(declare-fun setNonEmpty!25473 () Bool)

(assert (=> setNonEmpty!25473 (= setRes!25473 (and tp!922217 (inv!46198 setElem!25473) e!1812970))))

(declare-fun setRest!25473 () (Set Context!5208))

(assert (=> setNonEmpty!25473 (= setRest!25461 (set.union (set.insert setElem!25473 (as set.empty (Set Context!5208))) setRest!25473))))

(declare-fun b!2863879 () Bool)

(declare-fun tp!922216 () Bool)

(assert (=> b!2863879 (= e!1812970 tp!922216)))

(assert (= (and setNonEmpty!25461 condSetEmpty!25473) setIsEmpty!25473))

(assert (= (and setNonEmpty!25461 (not condSetEmpty!25473)) setNonEmpty!25473))

(assert (= setNonEmpty!25473 b!2863879))

(declare-fun m!3283519 () Bool)

(assert (=> setNonEmpty!25473 m!3283519))

(declare-fun condSetEmpty!25474 () Bool)

(assert (=> setNonEmpty!25464 (= condSetEmpty!25474 (= setRest!25464 (as set.empty (Set Context!5208))))))

(declare-fun setRes!25474 () Bool)

(assert (=> setNonEmpty!25464 setRes!25474))

(declare-fun setIsEmpty!25474 () Bool)

(assert (=> setIsEmpty!25474 setRes!25474))

(declare-fun setNonEmpty!25474 () Bool)

(assert (=> setNonEmpty!25474 (= setRes!25474 true)))

(declare-fun setElem!25474 () Context!5208)

(declare-fun setRest!25474 () (Set Context!5208))

(assert (=> setNonEmpty!25474 (= setRest!25464 (set.union (set.insert setElem!25474 (as set.empty (Set Context!5208))) setRest!25474))))

(assert (= (and setNonEmpty!25464 condSetEmpty!25474) setIsEmpty!25474))

(assert (= (and setNonEmpty!25464 (not condSetEmpty!25474)) setNonEmpty!25474))

(declare-fun b_lambda!85863 () Bool)

(assert (= b_lambda!85859 (or b!2863783 b_lambda!85863)))

(declare-fun bs!520741 () Bool)

(declare-fun d!828018 () Bool)

(assert (= bs!520741 (and d!828018 b!2863783)))

(declare-fun res!1189003 () Bool)

(declare-fun e!1812971 () Bool)

(assert (=> bs!520741 (=> (not res!1189003) (not e!1812971))))

(assert (=> bs!520741 (= res!1189003 (matchZipper!438 z!960 lt!1015212))))

(assert (=> bs!520741 (= (dynLambda!14261 lambda!105630 lt!1015212) e!1812971)))

(declare-fun b!2863880 () Bool)

(assert (=> b!2863880 (= e!1812971 (isPrefix!2699 prefix!919 lt!1015212))))

(assert (= (and bs!520741 res!1189003) b!2863880))

(assert (=> bs!520741 m!3283399))

(assert (=> b!2863880 m!3283397))

(assert (=> d!827984 d!828018))

(push 1)

(assert (not b!2863880))

(assert (not d!828002))

(assert (not b!2863879))

(assert (not b!2863815))

(assert (not b!2863864))

(assert (not b!2863844))

(assert (not setNonEmpty!25474))

(assert (not d!827998))

(assert (not d!827988))

(assert (not setNonEmpty!25473))

(assert (not b!2863863))

(assert (not b!2863816))

(assert (not b!2863874))

(assert (not b!2863831))

(assert (not b_lambda!85863))

(assert (not bs!520741))

(assert (not d!827982))

(assert (not b!2863869))

(assert (not d!828010))

(assert (not d!827984))

(assert (not b!2863845))

(assert (not d!827994))

(assert (not b!2863846))

(assert tp_is_empty!15025)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

