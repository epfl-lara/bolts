; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713386 () Bool)

(assert start!713386)

(declare-fun b!7317595 () Bool)

(assert (=> b!7317595 true))

(declare-fun setIsEmpty!54764 () Bool)

(declare-fun setRes!54764 () Bool)

(assert (=> setIsEmpty!54764 setRes!54764))

(declare-fun b!7317593 () Bool)

(declare-fun e!4380829 () Bool)

(declare-fun tp!2077765 () Bool)

(assert (=> b!7317593 (= e!4380829 tp!2077765)))

(declare-fun setNonEmpty!54764 () Bool)

(declare-fun e!4380828 () Bool)

(declare-datatypes ((C!38190 0))(
  ( (C!38191 (val!29191 Int)) )
))
(declare-datatypes ((Regex!18958 0))(
  ( (ElementMatch!18958 (c!1358512 C!38190)) (Concat!27803 (regOne!38428 Regex!18958) (regTwo!38428 Regex!18958)) (EmptyExpr!18958) (Star!18958 (reg!19287 Regex!18958)) (EmptyLang!18958) (Union!18958 (regOne!38429 Regex!18958) (regTwo!38429 Regex!18958)) )
))
(declare-datatypes ((List!71349 0))(
  ( (Nil!71225) (Cons!71225 (h!77673 Regex!18958) (t!385581 List!71349)) )
))
(declare-datatypes ((Context!15796 0))(
  ( (Context!15797 (exprs!8398 List!71349)) )
))
(declare-fun setElem!54764 () Context!15796)

(declare-fun tp!2077762 () Bool)

(declare-fun inv!90517 (Context!15796) Bool)

(assert (=> setNonEmpty!54764 (= setRes!54764 (and tp!2077762 (inv!90517 setElem!54764) e!4380828))))

(declare-fun z!3198 () (Set Context!15796))

(declare-fun setRest!54766 () (Set Context!15796))

(assert (=> setNonEmpty!54764 (= z!3198 (set.union (set.insert setElem!54764 (as set.empty (Set Context!15796))) setRest!54766))))

(declare-fun b!7317594 () Bool)

(declare-fun tp!2077766 () Bool)

(assert (=> b!7317594 (= e!4380828 tp!2077766)))

(declare-fun res!2956887 () Bool)

(declare-fun e!4380830 () Bool)

(assert (=> start!713386 (=> (not res!2956887) (not e!4380830))))

(declare-fun lt!2602598 () (Set Context!15796))

(assert (=> start!713386 (= res!2956887 (= z!3198 lt!2602598))))

(declare-fun z1!752 () (Set Context!15796))

(declare-fun z2!649 () (Set Context!15796))

(assert (=> start!713386 (= lt!2602598 (set.union z1!752 z2!649))))

(assert (=> start!713386 e!4380830))

(declare-fun tp_is_empty!47661 () Bool)

(assert (=> start!713386 tp_is_empty!47661))

(declare-fun condSetEmpty!54764 () Bool)

(assert (=> start!713386 (= condSetEmpty!54764 (= z2!649 (as set.empty (Set Context!15796))))))

(declare-fun setRes!54766 () Bool)

(assert (=> start!713386 setRes!54766))

(declare-fun condSetEmpty!54766 () Bool)

(assert (=> start!713386 (= condSetEmpty!54766 (= z!3198 (as set.empty (Set Context!15796))))))

(assert (=> start!713386 setRes!54764))

(declare-fun condSetEmpty!54765 () Bool)

(assert (=> start!713386 (= condSetEmpty!54765 (= z1!752 (as set.empty (Set Context!15796))))))

(declare-fun setRes!54765 () Bool)

(assert (=> start!713386 setRes!54765))

(declare-fun setNonEmpty!54765 () Bool)

(declare-fun tp!2077764 () Bool)

(declare-fun setElem!54766 () Context!15796)

(assert (=> setNonEmpty!54765 (= setRes!54766 (and tp!2077764 (inv!90517 setElem!54766) e!4380829))))

(declare-fun setRest!54765 () (Set Context!15796))

(assert (=> setNonEmpty!54765 (= z2!649 (set.union (set.insert setElem!54766 (as set.empty (Set Context!15796))) setRest!54765))))

(declare-fun setIsEmpty!54765 () Bool)

(assert (=> setIsEmpty!54765 setRes!54765))

(declare-fun setIsEmpty!54766 () Bool)

(assert (=> setIsEmpty!54766 setRes!54766))

(declare-fun tp!2077763 () Bool)

(declare-fun setNonEmpty!54766 () Bool)

(declare-fun e!4380831 () Bool)

(declare-fun setElem!54765 () Context!15796)

(assert (=> setNonEmpty!54766 (= setRes!54765 (and tp!2077763 (inv!90517 setElem!54765) e!4380831))))

(declare-fun setRest!54764 () (Set Context!15796))

(assert (=> setNonEmpty!54766 (= z1!752 (set.union (set.insert setElem!54765 (as set.empty (Set Context!15796))) setRest!54764))))

(declare-fun a!1892 () C!38190)

(declare-fun derivationStepZipper!3636 ((Set Context!15796) C!38190) (Set Context!15796))

(assert (=> b!7317595 (= e!4380830 (not (= (derivationStepZipper!3636 z!3198 a!1892) (set.union (derivationStepZipper!3636 z1!752 a!1892) (derivationStepZipper!3636 z2!649 a!1892)))))))

(declare-fun lambda!452722 () Int)

(declare-fun flatMap!3054 ((Set Context!15796) Int) (Set Context!15796))

(assert (=> b!7317595 (= (set.union (flatMap!3054 z1!752 lambda!452722) (flatMap!3054 z2!649 lambda!452722)) (flatMap!3054 lt!2602598 lambda!452722))))

(declare-datatypes ((Unit!164689 0))(
  ( (Unit!164690) )
))
(declare-fun lt!2602599 () Unit!164689)

(declare-fun lemmaFlatMapAssociative!45 ((Set Context!15796) (Set Context!15796) Int) Unit!164689)

(assert (=> b!7317595 (= lt!2602599 (lemmaFlatMapAssociative!45 z1!752 z2!649 lambda!452722))))

(declare-fun b!7317596 () Bool)

(declare-fun tp!2077767 () Bool)

(assert (=> b!7317596 (= e!4380831 tp!2077767)))

(assert (= (and start!713386 res!2956887) b!7317595))

(assert (= (and start!713386 condSetEmpty!54764) setIsEmpty!54766))

(assert (= (and start!713386 (not condSetEmpty!54764)) setNonEmpty!54765))

(assert (= setNonEmpty!54765 b!7317593))

(assert (= (and start!713386 condSetEmpty!54766) setIsEmpty!54764))

(assert (= (and start!713386 (not condSetEmpty!54766)) setNonEmpty!54764))

(assert (= setNonEmpty!54764 b!7317594))

(assert (= (and start!713386 condSetEmpty!54765) setIsEmpty!54765))

(assert (= (and start!713386 (not condSetEmpty!54765)) setNonEmpty!54766))

(assert (= setNonEmpty!54766 b!7317596))

(declare-fun m!7981926 () Bool)

(assert (=> setNonEmpty!54764 m!7981926))

(declare-fun m!7981928 () Bool)

(assert (=> setNonEmpty!54765 m!7981928))

(declare-fun m!7981930 () Bool)

(assert (=> setNonEmpty!54766 m!7981930))

(declare-fun m!7981932 () Bool)

(assert (=> b!7317595 m!7981932))

(declare-fun m!7981934 () Bool)

(assert (=> b!7317595 m!7981934))

(declare-fun m!7981936 () Bool)

(assert (=> b!7317595 m!7981936))

(declare-fun m!7981938 () Bool)

(assert (=> b!7317595 m!7981938))

(declare-fun m!7981940 () Bool)

(assert (=> b!7317595 m!7981940))

(declare-fun m!7981942 () Bool)

(assert (=> b!7317595 m!7981942))

(declare-fun m!7981944 () Bool)

(assert (=> b!7317595 m!7981944))

(push 1)

(assert (not b!7317593))

(assert (not b!7317595))

(assert (not b!7317596))

(assert tp_is_empty!47661)

(assert (not b!7317594))

(assert (not setNonEmpty!54766))

(assert (not setNonEmpty!54765))

(assert (not setNonEmpty!54764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272213 () Bool)

(declare-fun lambda!452731 () Int)

(declare-fun forall!17787 (List!71349 Int) Bool)

(assert (=> d!2272213 (= (inv!90517 setElem!54766) (forall!17787 (exprs!8398 setElem!54766) lambda!452731))))

(declare-fun bs!1915477 () Bool)

(assert (= bs!1915477 d!2272213))

(declare-fun m!7981968 () Bool)

(assert (=> bs!1915477 m!7981968))

(assert (=> setNonEmpty!54765 d!2272213))

(declare-fun bs!1915483 () Bool)

(declare-fun d!2272217 () Bool)

(assert (= bs!1915483 (and d!2272217 b!7317595)))

(declare-fun lambda!452736 () Int)

(assert (=> bs!1915483 (= lambda!452736 lambda!452722)))

(assert (=> d!2272217 true))

(assert (=> d!2272217 (= (derivationStepZipper!3636 z2!649 a!1892) (flatMap!3054 z2!649 lambda!452736))))

(declare-fun bs!1915484 () Bool)

(assert (= bs!1915484 d!2272217))

(declare-fun m!7981974 () Bool)

(assert (=> bs!1915484 m!7981974))

(assert (=> b!7317595 d!2272217))

(declare-fun bs!1915485 () Bool)

(declare-fun d!2272223 () Bool)

(assert (= bs!1915485 (and d!2272223 b!7317595)))

(declare-fun lambda!452737 () Int)

(assert (=> bs!1915485 (= lambda!452737 lambda!452722)))

(declare-fun bs!1915486 () Bool)

(assert (= bs!1915486 (and d!2272223 d!2272217)))

(assert (=> bs!1915486 (= lambda!452737 lambda!452736)))

(assert (=> d!2272223 true))

(assert (=> d!2272223 (= (derivationStepZipper!3636 z1!752 a!1892) (flatMap!3054 z1!752 lambda!452737))))

(declare-fun bs!1915487 () Bool)

(assert (= bs!1915487 d!2272223))

(declare-fun m!7981976 () Bool)

(assert (=> bs!1915487 m!7981976))

(assert (=> b!7317595 d!2272223))

(declare-fun d!2272225 () Bool)

(assert (=> d!2272225 (= (set.union (flatMap!3054 z1!752 lambda!452722) (flatMap!3054 z2!649 lambda!452722)) (flatMap!3054 (set.union z1!752 z2!649) lambda!452722))))

(declare-fun lt!2602608 () Unit!164689)

(declare-fun choose!56765 ((Set Context!15796) (Set Context!15796) Int) Unit!164689)

(assert (=> d!2272225 (= lt!2602608 (choose!56765 z1!752 z2!649 lambda!452722))))

(assert (=> d!2272225 (= (lemmaFlatMapAssociative!45 z1!752 z2!649 lambda!452722) lt!2602608)))

(declare-fun bs!1915488 () Bool)

(assert (= bs!1915488 d!2272225))

(assert (=> bs!1915488 m!7981940))

(assert (=> bs!1915488 m!7981934))

(declare-fun m!7981978 () Bool)

(assert (=> bs!1915488 m!7981978))

(declare-fun m!7981980 () Bool)

(assert (=> bs!1915488 m!7981980))

(assert (=> b!7317595 d!2272225))

(declare-fun d!2272227 () Bool)

(declare-fun choose!56766 ((Set Context!15796) Int) (Set Context!15796))

(assert (=> d!2272227 (= (flatMap!3054 z1!752 lambda!452722) (choose!56766 z1!752 lambda!452722))))

(declare-fun bs!1915489 () Bool)

(assert (= bs!1915489 d!2272227))

(declare-fun m!7981982 () Bool)

(assert (=> bs!1915489 m!7981982))

(assert (=> b!7317595 d!2272227))

(declare-fun d!2272229 () Bool)

(assert (=> d!2272229 (= (flatMap!3054 z2!649 lambda!452722) (choose!56766 z2!649 lambda!452722))))

(declare-fun bs!1915490 () Bool)

(assert (= bs!1915490 d!2272229))

(declare-fun m!7981984 () Bool)

(assert (=> bs!1915490 m!7981984))

(assert (=> b!7317595 d!2272229))

(declare-fun d!2272231 () Bool)

(assert (=> d!2272231 (= (flatMap!3054 lt!2602598 lambda!452722) (choose!56766 lt!2602598 lambda!452722))))

(declare-fun bs!1915491 () Bool)

(assert (= bs!1915491 d!2272231))

(declare-fun m!7981986 () Bool)

(assert (=> bs!1915491 m!7981986))

(assert (=> b!7317595 d!2272231))

(declare-fun bs!1915492 () Bool)

(declare-fun d!2272233 () Bool)

(assert (= bs!1915492 (and d!2272233 b!7317595)))

(declare-fun lambda!452740 () Int)

(assert (=> bs!1915492 (= lambda!452740 lambda!452722)))

(declare-fun bs!1915493 () Bool)

(assert (= bs!1915493 (and d!2272233 d!2272217)))

(assert (=> bs!1915493 (= lambda!452740 lambda!452736)))

(declare-fun bs!1915494 () Bool)

(assert (= bs!1915494 (and d!2272233 d!2272223)))

(assert (=> bs!1915494 (= lambda!452740 lambda!452737)))

(assert (=> d!2272233 true))

(assert (=> d!2272233 (= (derivationStepZipper!3636 z!3198 a!1892) (flatMap!3054 z!3198 lambda!452740))))

(declare-fun bs!1915495 () Bool)

(assert (= bs!1915495 d!2272233))

(declare-fun m!7981988 () Bool)

(assert (=> bs!1915495 m!7981988))

(assert (=> b!7317595 d!2272233))

(declare-fun bs!1915496 () Bool)

(declare-fun d!2272235 () Bool)

(assert (= bs!1915496 (and d!2272235 d!2272213)))

(declare-fun lambda!452742 () Int)

(assert (=> bs!1915496 (= lambda!452742 lambda!452731)))

(assert (=> d!2272235 (= (inv!90517 setElem!54765) (forall!17787 (exprs!8398 setElem!54765) lambda!452742))))

(declare-fun bs!1915498 () Bool)

(assert (= bs!1915498 d!2272235))

(declare-fun m!7981990 () Bool)

(assert (=> bs!1915498 m!7981990))

(assert (=> setNonEmpty!54766 d!2272235))

(declare-fun bs!1915499 () Bool)

(declare-fun d!2272237 () Bool)

(assert (= bs!1915499 (and d!2272237 d!2272213)))

(declare-fun lambda!452743 () Int)

(assert (=> bs!1915499 (= lambda!452743 lambda!452731)))

(declare-fun bs!1915500 () Bool)

(assert (= bs!1915500 (and d!2272237 d!2272235)))

(assert (=> bs!1915500 (= lambda!452743 lambda!452742)))

(assert (=> d!2272237 (= (inv!90517 setElem!54764) (forall!17787 (exprs!8398 setElem!54764) lambda!452743))))

(declare-fun bs!1915501 () Bool)

(assert (= bs!1915501 d!2272237))

(declare-fun m!7981992 () Bool)

(assert (=> bs!1915501 m!7981992))

(assert (=> setNonEmpty!54764 d!2272237))

(declare-fun b!7317617 () Bool)

(declare-fun e!4380846 () Bool)

(declare-fun tp!2077790 () Bool)

(declare-fun tp!2077791 () Bool)

(assert (=> b!7317617 (= e!4380846 (and tp!2077790 tp!2077791))))

(assert (=> b!7317593 (= tp!2077765 e!4380846)))

(assert (= (and b!7317593 (is-Cons!71225 (exprs!8398 setElem!54766))) b!7317617))

(declare-fun condSetEmpty!54778 () Bool)

(assert (=> setNonEmpty!54765 (= condSetEmpty!54778 (= setRest!54765 (as set.empty (Set Context!15796))))))

(declare-fun setRes!54778 () Bool)

(assert (=> setNonEmpty!54765 (= tp!2077764 setRes!54778)))

(declare-fun setIsEmpty!54778 () Bool)

(assert (=> setIsEmpty!54778 setRes!54778))

(declare-fun setElem!54778 () Context!15796)

(declare-fun setNonEmpty!54778 () Bool)

(declare-fun tp!2077797 () Bool)

(declare-fun e!4380849 () Bool)

(assert (=> setNonEmpty!54778 (= setRes!54778 (and tp!2077797 (inv!90517 setElem!54778) e!4380849))))

(declare-fun setRest!54778 () (Set Context!15796))

(assert (=> setNonEmpty!54778 (= setRest!54765 (set.union (set.insert setElem!54778 (as set.empty (Set Context!15796))) setRest!54778))))

(declare-fun b!7317622 () Bool)

(declare-fun tp!2077796 () Bool)

(assert (=> b!7317622 (= e!4380849 tp!2077796)))

(assert (= (and setNonEmpty!54765 condSetEmpty!54778) setIsEmpty!54778))

(assert (= (and setNonEmpty!54765 (not condSetEmpty!54778)) setNonEmpty!54778))

(assert (= setNonEmpty!54778 b!7317622))

(declare-fun m!7981998 () Bool)

(assert (=> setNonEmpty!54778 m!7981998))

(declare-fun b!7317623 () Bool)

(declare-fun e!4380850 () Bool)

(declare-fun tp!2077798 () Bool)

(declare-fun tp!2077799 () Bool)

(assert (=> b!7317623 (= e!4380850 (and tp!2077798 tp!2077799))))

(assert (=> b!7317594 (= tp!2077766 e!4380850)))

(assert (= (and b!7317594 (is-Cons!71225 (exprs!8398 setElem!54764))) b!7317623))

(declare-fun b!7317624 () Bool)

(declare-fun e!4380851 () Bool)

(declare-fun tp!2077800 () Bool)

(declare-fun tp!2077801 () Bool)

(assert (=> b!7317624 (= e!4380851 (and tp!2077800 tp!2077801))))

(assert (=> b!7317596 (= tp!2077767 e!4380851)))

(assert (= (and b!7317596 (is-Cons!71225 (exprs!8398 setElem!54765))) b!7317624))

(declare-fun condSetEmpty!54779 () Bool)

(assert (=> setNonEmpty!54766 (= condSetEmpty!54779 (= setRest!54764 (as set.empty (Set Context!15796))))))

(declare-fun setRes!54779 () Bool)

(assert (=> setNonEmpty!54766 (= tp!2077763 setRes!54779)))

(declare-fun setIsEmpty!54779 () Bool)

(assert (=> setIsEmpty!54779 setRes!54779))

(declare-fun e!4380852 () Bool)

(declare-fun tp!2077803 () Bool)

(declare-fun setElem!54779 () Context!15796)

(declare-fun setNonEmpty!54779 () Bool)

(assert (=> setNonEmpty!54779 (= setRes!54779 (and tp!2077803 (inv!90517 setElem!54779) e!4380852))))

(declare-fun setRest!54779 () (Set Context!15796))

(assert (=> setNonEmpty!54779 (= setRest!54764 (set.union (set.insert setElem!54779 (as set.empty (Set Context!15796))) setRest!54779))))

(declare-fun b!7317625 () Bool)

(declare-fun tp!2077802 () Bool)

(assert (=> b!7317625 (= e!4380852 tp!2077802)))

(assert (= (and setNonEmpty!54766 condSetEmpty!54779) setIsEmpty!54779))

(assert (= (and setNonEmpty!54766 (not condSetEmpty!54779)) setNonEmpty!54779))

(assert (= setNonEmpty!54779 b!7317625))

(declare-fun m!7982000 () Bool)

(assert (=> setNonEmpty!54779 m!7982000))

(declare-fun condSetEmpty!54780 () Bool)

(assert (=> setNonEmpty!54764 (= condSetEmpty!54780 (= setRest!54766 (as set.empty (Set Context!15796))))))

(declare-fun setRes!54780 () Bool)

(assert (=> setNonEmpty!54764 (= tp!2077762 setRes!54780)))

(declare-fun setIsEmpty!54780 () Bool)

(assert (=> setIsEmpty!54780 setRes!54780))

(declare-fun setNonEmpty!54780 () Bool)

(declare-fun e!4380853 () Bool)

(declare-fun tp!2077805 () Bool)

(declare-fun setElem!54780 () Context!15796)

(assert (=> setNonEmpty!54780 (= setRes!54780 (and tp!2077805 (inv!90517 setElem!54780) e!4380853))))

(declare-fun setRest!54780 () (Set Context!15796))

(assert (=> setNonEmpty!54780 (= setRest!54766 (set.union (set.insert setElem!54780 (as set.empty (Set Context!15796))) setRest!54780))))

(declare-fun b!7317626 () Bool)

(declare-fun tp!2077804 () Bool)

(assert (=> b!7317626 (= e!4380853 tp!2077804)))

(assert (= (and setNonEmpty!54764 condSetEmpty!54780) setIsEmpty!54780))

(assert (= (and setNonEmpty!54764 (not condSetEmpty!54780)) setNonEmpty!54780))

(assert (= setNonEmpty!54780 b!7317626))

(declare-fun m!7982004 () Bool)

(assert (=> setNonEmpty!54780 m!7982004))

(push 1)

(assert (not d!2272227))

(assert (not setNonEmpty!54778))

(assert (not b!7317624))

(assert (not d!2272233))

(assert (not b!7317626))

(assert (not b!7317622))

(assert (not setNonEmpty!54779))

(assert (not d!2272235))

(assert (not d!2272237))

(assert (not b!7317625))

(assert tp_is_empty!47661)

(assert (not d!2272223))

(assert (not d!2272229))

(assert (not b!7317617))

(assert (not d!2272231))

(assert (not d!2272225))

(assert (not setNonEmpty!54780))

(assert (not d!2272213))

(assert (not d!2272217))

(assert (not b!7317623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

