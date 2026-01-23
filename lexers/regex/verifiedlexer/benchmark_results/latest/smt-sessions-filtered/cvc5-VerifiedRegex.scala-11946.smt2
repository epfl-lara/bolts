; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668756 () Bool)

(assert start!668756)

(declare-fun b!6976674 () Bool)

(assert (=> b!6976674 true))

(declare-fun b!6976672 () Bool)

(declare-fun e!4192918 () Bool)

(declare-fun tp!1927023 () Bool)

(assert (=> b!6976672 (= e!4192918 tp!1927023)))

(declare-fun b!6976673 () Bool)

(declare-fun res!2844841 () Bool)

(declare-fun e!4192917 () Bool)

(assert (=> b!6976673 (=> (not res!2844841) (not e!4192917))))

(declare-datatypes ((C!34546 0))(
  ( (C!34547 (val!26975 Int)) )
))
(declare-datatypes ((List!66959 0))(
  ( (Nil!66835) (Cons!66835 (h!73283 C!34546) (t!380702 List!66959)) )
))
(declare-fun s!7408 () List!66959)

(assert (=> b!6976673 (= res!2844841 (is-Cons!66835 s!7408))))

(declare-fun res!2844842 () Bool)

(assert (=> start!668756 (=> (not res!2844842) (not e!4192917))))

(declare-datatypes ((Regex!17138 0))(
  ( (ElementMatch!17138 (c!1293110 C!34546)) (Concat!25983 (regOne!34788 Regex!17138) (regTwo!34788 Regex!17138)) (EmptyExpr!17138) (Star!17138 (reg!17467 Regex!17138)) (EmptyLang!17138) (Union!17138 (regOne!34789 Regex!17138) (regTwo!34789 Regex!17138)) )
))
(declare-datatypes ((List!66960 0))(
  ( (Nil!66836) (Cons!66836 (h!73284 Regex!17138) (t!380703 List!66960)) )
))
(declare-datatypes ((Context!12268 0))(
  ( (Context!12269 (exprs!6634 List!66960)) )
))
(declare-fun lt!2479950 () (Set Context!12268))

(declare-fun matchZipper!2678 ((Set Context!12268) List!66959) Bool)

(assert (=> start!668756 (= res!2844842 (matchZipper!2678 lt!2479950 s!7408))))

(declare-fun z1!570 () (Set Context!12268))

(declare-fun ct2!306 () Context!12268)

(declare-fun appendTo!259 ((Set Context!12268) Context!12268) (Set Context!12268))

(assert (=> start!668756 (= lt!2479950 (appendTo!259 z1!570 ct2!306))))

(assert (=> start!668756 e!4192917))

(declare-fun condSetEmpty!47312 () Bool)

(assert (=> start!668756 (= condSetEmpty!47312 (= z1!570 (as set.empty (Set Context!12268))))))

(declare-fun setRes!47312 () Bool)

(assert (=> start!668756 setRes!47312))

(declare-fun e!4192916 () Bool)

(declare-fun inv!85705 (Context!12268) Bool)

(assert (=> start!668756 (and (inv!85705 ct2!306) e!4192916)))

(declare-fun e!4192915 () Bool)

(assert (=> start!668756 e!4192915))

(declare-fun lambda!397963 () Int)

(declare-fun exists!2872 ((Set Context!12268) Int) Bool)

(assert (=> b!6976674 (= e!4192917 (not (exists!2872 lt!2479950 lambda!397963)))))

(declare-datatypes ((List!66961 0))(
  ( (Nil!66837) (Cons!66837 (h!73285 Context!12268) (t!380704 List!66961)) )
))
(declare-fun lt!2479948 () List!66961)

(declare-fun exists!2873 (List!66961 Int) Bool)

(assert (=> b!6976674 (exists!2873 lt!2479948 lambda!397963)))

(declare-datatypes ((Unit!160924 0))(
  ( (Unit!160925) )
))
(declare-fun lt!2479949 () Unit!160924)

(declare-fun lemmaZipperMatchesExistsMatchingContext!107 (List!66961 List!66959) Unit!160924)

(assert (=> b!6976674 (= lt!2479949 (lemmaZipperMatchesExistsMatchingContext!107 lt!2479948 s!7408))))

(declare-fun toList!10498 ((Set Context!12268)) List!66961)

(assert (=> b!6976674 (= lt!2479948 (toList!10498 lt!2479950))))

(declare-fun setIsEmpty!47312 () Bool)

(assert (=> setIsEmpty!47312 setRes!47312))

(declare-fun tp!1927020 () Bool)

(declare-fun setNonEmpty!47312 () Bool)

(declare-fun setElem!47312 () Context!12268)

(assert (=> setNonEmpty!47312 (= setRes!47312 (and tp!1927020 (inv!85705 setElem!47312) e!4192918))))

(declare-fun setRest!47312 () (Set Context!12268))

(assert (=> setNonEmpty!47312 (= z1!570 (set.union (set.insert setElem!47312 (as set.empty (Set Context!12268))) setRest!47312))))

(declare-fun b!6976675 () Bool)

(declare-fun tp_is_empty!43501 () Bool)

(declare-fun tp!1927022 () Bool)

(assert (=> b!6976675 (= e!4192915 (and tp_is_empty!43501 tp!1927022))))

(declare-fun b!6976676 () Bool)

(declare-fun tp!1927021 () Bool)

(assert (=> b!6976676 (= e!4192916 tp!1927021)))

(assert (= (and start!668756 res!2844842) b!6976673))

(assert (= (and b!6976673 res!2844841) b!6976674))

(assert (= (and start!668756 condSetEmpty!47312) setIsEmpty!47312))

(assert (= (and start!668756 (not condSetEmpty!47312)) setNonEmpty!47312))

(assert (= setNonEmpty!47312 b!6976672))

(assert (= start!668756 b!6976676))

(assert (= (and start!668756 (is-Cons!66835 s!7408)) b!6976675))

(declare-fun m!7661916 () Bool)

(assert (=> start!668756 m!7661916))

(declare-fun m!7661918 () Bool)

(assert (=> start!668756 m!7661918))

(declare-fun m!7661920 () Bool)

(assert (=> start!668756 m!7661920))

(declare-fun m!7661922 () Bool)

(assert (=> b!6976674 m!7661922))

(declare-fun m!7661924 () Bool)

(assert (=> b!6976674 m!7661924))

(declare-fun m!7661926 () Bool)

(assert (=> b!6976674 m!7661926))

(declare-fun m!7661928 () Bool)

(assert (=> b!6976674 m!7661928))

(declare-fun m!7661930 () Bool)

(assert (=> setNonEmpty!47312 m!7661930))

(push 1)

(assert (not setNonEmpty!47312))

(assert (not b!6976674))

(assert tp_is_empty!43501)

(assert (not b!6976672))

(assert (not b!6976676))

(assert (not b!6976675))

(assert (not start!668756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172135 () Bool)

(declare-fun lambda!397971 () Int)

(declare-fun forall!16007 (List!66960 Int) Bool)

(assert (=> d!2172135 (= (inv!85705 setElem!47312) (forall!16007 (exprs!6634 setElem!47312) lambda!397971))))

(declare-fun bs!1859982 () Bool)

(assert (= bs!1859982 d!2172135))

(declare-fun m!7661948 () Bool)

(assert (=> bs!1859982 m!7661948))

(assert (=> setNonEmpty!47312 d!2172135))

(declare-fun d!2172137 () Bool)

(declare-fun lt!2479962 () Bool)

(assert (=> d!2172137 (= lt!2479962 (exists!2873 (toList!10498 lt!2479950) lambda!397963))))

(declare-fun choose!51924 ((Set Context!12268) Int) Bool)

(assert (=> d!2172137 (= lt!2479962 (choose!51924 lt!2479950 lambda!397963))))

(assert (=> d!2172137 (= (exists!2872 lt!2479950 lambda!397963) lt!2479962)))

(declare-fun bs!1859983 () Bool)

(assert (= bs!1859983 d!2172137))

(assert (=> bs!1859983 m!7661928))

(assert (=> bs!1859983 m!7661928))

(declare-fun m!7661950 () Bool)

(assert (=> bs!1859983 m!7661950))

(declare-fun m!7661952 () Bool)

(assert (=> bs!1859983 m!7661952))

(assert (=> b!6976674 d!2172137))

(declare-fun bs!1859984 () Bool)

(declare-fun d!2172139 () Bool)

(assert (= bs!1859984 (and d!2172139 b!6976674)))

(declare-fun lambda!397974 () Int)

(assert (=> bs!1859984 (not (= lambda!397974 lambda!397963))))

(assert (=> d!2172139 true))

(declare-fun order!27781 () Int)

(declare-fun dynLambda!26654 (Int Int) Int)

(assert (=> d!2172139 (< (dynLambda!26654 order!27781 lambda!397963) (dynLambda!26654 order!27781 lambda!397974))))

(declare-fun forall!16008 (List!66961 Int) Bool)

(assert (=> d!2172139 (= (exists!2873 lt!2479948 lambda!397963) (not (forall!16008 lt!2479948 lambda!397974)))))

(declare-fun bs!1859985 () Bool)

(assert (= bs!1859985 d!2172139))

(declare-fun m!7661954 () Bool)

(assert (=> bs!1859985 m!7661954))

(assert (=> b!6976674 d!2172139))

(declare-fun bs!1859986 () Bool)

(declare-fun d!2172141 () Bool)

(assert (= bs!1859986 (and d!2172141 b!6976674)))

(declare-fun lambda!397977 () Int)

(assert (=> bs!1859986 (= lambda!397977 lambda!397963)))

(declare-fun bs!1859987 () Bool)

(assert (= bs!1859987 (and d!2172141 d!2172139)))

(assert (=> bs!1859987 (not (= lambda!397977 lambda!397974))))

(assert (=> d!2172141 true))

(assert (=> d!2172141 (exists!2873 lt!2479948 lambda!397977)))

(declare-fun lt!2479965 () Unit!160924)

(declare-fun choose!51925 (List!66961 List!66959) Unit!160924)

(assert (=> d!2172141 (= lt!2479965 (choose!51925 lt!2479948 s!7408))))

(declare-fun content!13159 (List!66961) (Set Context!12268))

(assert (=> d!2172141 (matchZipper!2678 (content!13159 lt!2479948) s!7408)))

(assert (=> d!2172141 (= (lemmaZipperMatchesExistsMatchingContext!107 lt!2479948 s!7408) lt!2479965)))

(declare-fun bs!1859988 () Bool)

(assert (= bs!1859988 d!2172141))

(declare-fun m!7661956 () Bool)

(assert (=> bs!1859988 m!7661956))

(declare-fun m!7661958 () Bool)

(assert (=> bs!1859988 m!7661958))

(declare-fun m!7661960 () Bool)

(assert (=> bs!1859988 m!7661960))

(assert (=> bs!1859988 m!7661960))

(declare-fun m!7661962 () Bool)

(assert (=> bs!1859988 m!7661962))

(assert (=> b!6976674 d!2172141))

(declare-fun d!2172145 () Bool)

(declare-fun e!4192933 () Bool)

(assert (=> d!2172145 e!4192933))

(declare-fun res!2844851 () Bool)

(assert (=> d!2172145 (=> (not res!2844851) (not e!4192933))))

(declare-fun lt!2479968 () List!66961)

(declare-fun noDuplicate!2469 (List!66961) Bool)

(assert (=> d!2172145 (= res!2844851 (noDuplicate!2469 lt!2479968))))

(declare-fun choose!51926 ((Set Context!12268)) List!66961)

(assert (=> d!2172145 (= lt!2479968 (choose!51926 lt!2479950))))

(assert (=> d!2172145 (= (toList!10498 lt!2479950) lt!2479968)))

(declare-fun b!6976700 () Bool)

(assert (=> b!6976700 (= e!4192933 (= (content!13159 lt!2479968) lt!2479950))))

(assert (= (and d!2172145 res!2844851) b!6976700))

(declare-fun m!7661964 () Bool)

(assert (=> d!2172145 m!7661964))

(declare-fun m!7661966 () Bool)

(assert (=> d!2172145 m!7661966))

(declare-fun m!7661968 () Bool)

(assert (=> b!6976700 m!7661968))

(assert (=> b!6976674 d!2172145))

(declare-fun d!2172147 () Bool)

(declare-fun c!1293120 () Bool)

(declare-fun isEmpty!39032 (List!66959) Bool)

(assert (=> d!2172147 (= c!1293120 (isEmpty!39032 s!7408))))

(declare-fun e!4192936 () Bool)

(assert (=> d!2172147 (= (matchZipper!2678 lt!2479950 s!7408) e!4192936)))

(declare-fun b!6976705 () Bool)

(declare-fun nullableZipper!2376 ((Set Context!12268)) Bool)

(assert (=> b!6976705 (= e!4192936 (nullableZipper!2376 lt!2479950))))

(declare-fun b!6976706 () Bool)

(declare-fun derivationStepZipper!2623 ((Set Context!12268) C!34546) (Set Context!12268))

(declare-fun head!14044 (List!66959) C!34546)

(declare-fun tail!13112 (List!66959) List!66959)

(assert (=> b!6976706 (= e!4192936 (matchZipper!2678 (derivationStepZipper!2623 lt!2479950 (head!14044 s!7408)) (tail!13112 s!7408)))))

(assert (= (and d!2172147 c!1293120) b!6976705))

(assert (= (and d!2172147 (not c!1293120)) b!6976706))

(declare-fun m!7661970 () Bool)

(assert (=> d!2172147 m!7661970))

(declare-fun m!7661972 () Bool)

(assert (=> b!6976705 m!7661972))

(declare-fun m!7661974 () Bool)

(assert (=> b!6976706 m!7661974))

(assert (=> b!6976706 m!7661974))

(declare-fun m!7661976 () Bool)

(assert (=> b!6976706 m!7661976))

(declare-fun m!7661978 () Bool)

(assert (=> b!6976706 m!7661978))

(assert (=> b!6976706 m!7661976))

(assert (=> b!6976706 m!7661978))

(declare-fun m!7661980 () Bool)

(assert (=> b!6976706 m!7661980))

(assert (=> start!668756 d!2172147))

(declare-fun d!2172149 () Bool)

(assert (=> d!2172149 true))

(declare-fun lambda!397982 () Int)

(declare-fun map!15384 ((Set Context!12268) Int) (Set Context!12268))

(assert (=> d!2172149 (= (appendTo!259 z1!570 ct2!306) (map!15384 z1!570 lambda!397982))))

(declare-fun bs!1859989 () Bool)

(assert (= bs!1859989 d!2172149))

(declare-fun m!7661994 () Bool)

(assert (=> bs!1859989 m!7661994))

(assert (=> start!668756 d!2172149))

(declare-fun bs!1859990 () Bool)

(declare-fun d!2172153 () Bool)

(assert (= bs!1859990 (and d!2172153 d!2172135)))

(declare-fun lambda!397983 () Int)

(assert (=> bs!1859990 (= lambda!397983 lambda!397971)))

(assert (=> d!2172153 (= (inv!85705 ct2!306) (forall!16007 (exprs!6634 ct2!306) lambda!397983))))

(declare-fun bs!1859991 () Bool)

(assert (= bs!1859991 d!2172153))

(declare-fun m!7661996 () Bool)

(assert (=> bs!1859991 m!7661996))

(assert (=> start!668756 d!2172153))

(declare-fun condSetEmpty!47318 () Bool)

(assert (=> setNonEmpty!47312 (= condSetEmpty!47318 (= setRest!47312 (as set.empty (Set Context!12268))))))

(declare-fun setRes!47318 () Bool)

(assert (=> setNonEmpty!47312 (= tp!1927020 setRes!47318)))

(declare-fun setIsEmpty!47318 () Bool)

(assert (=> setIsEmpty!47318 setRes!47318))

(declare-fun tp!1927041 () Bool)

(declare-fun setNonEmpty!47318 () Bool)

(declare-fun setElem!47318 () Context!12268)

(declare-fun e!4192942 () Bool)

(assert (=> setNonEmpty!47318 (= setRes!47318 (and tp!1927041 (inv!85705 setElem!47318) e!4192942))))

(declare-fun setRest!47318 () (Set Context!12268))

(assert (=> setNonEmpty!47318 (= setRest!47312 (set.union (set.insert setElem!47318 (as set.empty (Set Context!12268))) setRest!47318))))

(declare-fun b!6976719 () Bool)

(declare-fun tp!1927040 () Bool)

(assert (=> b!6976719 (= e!4192942 tp!1927040)))

(assert (= (and setNonEmpty!47312 condSetEmpty!47318) setIsEmpty!47318))

(assert (= (and setNonEmpty!47312 (not condSetEmpty!47318)) setNonEmpty!47318))

(assert (= setNonEmpty!47318 b!6976719))

(declare-fun m!7661998 () Bool)

(assert (=> setNonEmpty!47318 m!7661998))

(declare-fun b!6976724 () Bool)

(declare-fun e!4192945 () Bool)

(declare-fun tp!1927046 () Bool)

(declare-fun tp!1927047 () Bool)

(assert (=> b!6976724 (= e!4192945 (and tp!1927046 tp!1927047))))

(assert (=> b!6976676 (= tp!1927021 e!4192945)))

(assert (= (and b!6976676 (is-Cons!66836 (exprs!6634 ct2!306))) b!6976724))

(declare-fun b!6976725 () Bool)

(declare-fun e!4192946 () Bool)

(declare-fun tp!1927048 () Bool)

(declare-fun tp!1927049 () Bool)

(assert (=> b!6976725 (= e!4192946 (and tp!1927048 tp!1927049))))

(assert (=> b!6976672 (= tp!1927023 e!4192946)))

(assert (= (and b!6976672 (is-Cons!66836 (exprs!6634 setElem!47312))) b!6976725))

(declare-fun b!6976730 () Bool)

(declare-fun e!4192949 () Bool)

(declare-fun tp!1927052 () Bool)

(assert (=> b!6976730 (= e!4192949 (and tp_is_empty!43501 tp!1927052))))

(assert (=> b!6976675 (= tp!1927022 e!4192949)))

(assert (= (and b!6976675 (is-Cons!66835 (t!380702 s!7408))) b!6976730))

(push 1)

(assert (not d!2172149))

(assert (not b!6976730))

(assert tp_is_empty!43501)

(assert (not b!6976700))

(assert (not b!6976705))

(assert (not setNonEmpty!47318))

(assert (not d!2172141))

(assert (not d!2172153))

(assert (not b!6976725))

(assert (not d!2172135))

(assert (not b!6976706))

(assert (not b!6976724))

(assert (not d!2172139))

(assert (not d!2172147))

(assert (not d!2172137))

(assert (not b!6976719))

(assert (not d!2172145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

