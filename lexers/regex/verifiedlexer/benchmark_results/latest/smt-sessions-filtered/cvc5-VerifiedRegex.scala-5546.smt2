; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278992 () Bool)

(assert start!278992)

(declare-fun b!2863911 () Bool)

(declare-fun res!1189009 () Bool)

(declare-fun e!1812991 () Bool)

(assert (=> b!2863911 (=> (not res!1189009) (not e!1812991))))

(declare-datatypes ((C!17474 0))(
  ( (C!17475 (val!10771 Int)) )
))
(declare-datatypes ((List!34280 0))(
  ( (Nil!34156) (Cons!34156 (h!39576 C!17474) (t!233321 List!34280)) )
))
(declare-fun prefix!919 () List!34280)

(assert (=> b!2863911 (= res!1189009 (not (is-Nil!34156 prefix!919)))))

(declare-fun b!2863912 () Bool)

(declare-fun e!1812992 () Bool)

(declare-fun tp!922241 () Bool)

(assert (=> b!2863912 (= e!1812992 tp!922241)))

(declare-fun res!1189010 () Bool)

(assert (=> start!278992 (=> (not res!1189010) (not e!1812991))))

(declare-datatypes ((Regex!8646 0))(
  ( (ElementMatch!8646 (c!461747 C!17474)) (Concat!13967 (regOne!17804 Regex!8646) (regTwo!17804 Regex!8646)) (EmptyExpr!8646) (Star!8646 (reg!8975 Regex!8646)) (EmptyLang!8646) (Union!8646 (regOne!17805 Regex!8646) (regTwo!17805 Regex!8646)) )
))
(declare-datatypes ((List!34281 0))(
  ( (Nil!34157) (Cons!34157 (h!39577 Regex!8646) (t!233322 List!34281)) )
))
(declare-datatypes ((Context!5212 0))(
  ( (Context!5213 (exprs!3106 List!34281)) )
))
(declare-fun z!960 () (Set Context!5212))

(declare-fun prefixMatchZipper!328 ((Set Context!5212) List!34280) Bool)

(assert (=> start!278992 (= res!1189010 (prefixMatchZipper!328 z!960 prefix!919))))

(assert (=> start!278992 e!1812991))

(declare-fun condSetEmpty!25481 () Bool)

(assert (=> start!278992 (= condSetEmpty!25481 (= z!960 (as set.empty (Set Context!5212))))))

(declare-fun setRes!25481 () Bool)

(assert (=> start!278992 setRes!25481))

(declare-fun e!1812993 () Bool)

(assert (=> start!278992 e!1812993))

(declare-fun b!2863913 () Bool)

(declare-fun derivationStepZipper!444 ((Set Context!5212) C!17474) (Set Context!5212))

(assert (=> b!2863913 (= e!1812991 (not (prefixMatchZipper!328 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (t!233321 prefix!919))))))

(declare-fun b!2863914 () Bool)

(declare-fun tp_is_empty!15029 () Bool)

(declare-fun tp!922239 () Bool)

(assert (=> b!2863914 (= e!1812993 (and tp_is_empty!15029 tp!922239))))

(declare-fun setElem!25481 () Context!5212)

(declare-fun tp!922240 () Bool)

(declare-fun setNonEmpty!25481 () Bool)

(declare-fun inv!46203 (Context!5212) Bool)

(assert (=> setNonEmpty!25481 (= setRes!25481 (and tp!922240 (inv!46203 setElem!25481) e!1812992))))

(declare-fun setRest!25481 () (Set Context!5212))

(assert (=> setNonEmpty!25481 (= z!960 (set.union (set.insert setElem!25481 (as set.empty (Set Context!5212))) setRest!25481))))

(declare-fun setIsEmpty!25481 () Bool)

(assert (=> setIsEmpty!25481 setRes!25481))

(assert (= (and start!278992 res!1189010) b!2863911))

(assert (= (and b!2863911 res!1189009) b!2863913))

(assert (= (and start!278992 condSetEmpty!25481) setIsEmpty!25481))

(assert (= (and start!278992 (not condSetEmpty!25481)) setNonEmpty!25481))

(assert (= setNonEmpty!25481 b!2863912))

(assert (= (and start!278992 (is-Cons!34156 prefix!919)) b!2863914))

(declare-fun m!3283529 () Bool)

(assert (=> start!278992 m!3283529))

(declare-fun m!3283531 () Bool)

(assert (=> b!2863913 m!3283531))

(assert (=> b!2863913 m!3283531))

(declare-fun m!3283533 () Bool)

(assert (=> b!2863913 m!3283533))

(declare-fun m!3283535 () Bool)

(assert (=> setNonEmpty!25481 m!3283535))

(push 1)

(assert (not b!2863913))

(assert (not setNonEmpty!25481))

(assert (not b!2863912))

(assert tp_is_empty!15029)

(assert (not b!2863914))

(assert (not start!278992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828023 () Bool)

(declare-fun lambda!105658 () Int)

(declare-fun forall!6986 (List!34281 Int) Bool)

(assert (=> d!828023 (= (inv!46203 setElem!25481) (forall!6986 (exprs!3106 setElem!25481) lambda!105658))))

(declare-fun bs!520745 () Bool)

(assert (= bs!520745 d!828023))

(declare-fun m!3283569 () Bool)

(assert (=> bs!520745 m!3283569))

(assert (=> setNonEmpty!25481 d!828023))

(declare-fun d!828031 () Bool)

(declare-fun c!461757 () Bool)

(declare-fun isEmpty!18645 (List!34280) Bool)

(assert (=> d!828031 (= c!461757 (isEmpty!18645 prefix!919))))

(declare-fun e!1813009 () Bool)

(assert (=> d!828031 (= (prefixMatchZipper!328 z!960 prefix!919) e!1813009)))

(declare-fun b!2863939 () Bool)

(declare-fun lostCauseZipper!555 ((Set Context!5212)) Bool)

(assert (=> b!2863939 (= e!1813009 (not (lostCauseZipper!555 z!960)))))

(declare-fun b!2863940 () Bool)

(declare-fun head!6312 (List!34280) C!17474)

(declare-fun tail!4537 (List!34280) List!34280)

(assert (=> b!2863940 (= e!1813009 (prefixMatchZipper!328 (derivationStepZipper!444 z!960 (head!6312 prefix!919)) (tail!4537 prefix!919)))))

(assert (= (and d!828031 c!461757) b!2863939))

(assert (= (and d!828031 (not c!461757)) b!2863940))

(declare-fun m!3283571 () Bool)

(assert (=> d!828031 m!3283571))

(declare-fun m!3283573 () Bool)

(assert (=> b!2863939 m!3283573))

(declare-fun m!3283575 () Bool)

(assert (=> b!2863940 m!3283575))

(assert (=> b!2863940 m!3283575))

(declare-fun m!3283577 () Bool)

(assert (=> b!2863940 m!3283577))

(declare-fun m!3283579 () Bool)

(assert (=> b!2863940 m!3283579))

(assert (=> b!2863940 m!3283577))

(assert (=> b!2863940 m!3283579))

(declare-fun m!3283581 () Bool)

(assert (=> b!2863940 m!3283581))

(assert (=> start!278992 d!828031))

(declare-fun d!828033 () Bool)

(declare-fun c!461758 () Bool)

(assert (=> d!828033 (= c!461758 (isEmpty!18645 (t!233321 prefix!919)))))

(declare-fun e!1813010 () Bool)

(assert (=> d!828033 (= (prefixMatchZipper!328 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (t!233321 prefix!919)) e!1813010)))

(declare-fun b!2863941 () Bool)

(assert (=> b!2863941 (= e!1813010 (not (lostCauseZipper!555 (derivationStepZipper!444 z!960 (h!39576 prefix!919)))))))

(declare-fun b!2863942 () Bool)

(assert (=> b!2863942 (= e!1813010 (prefixMatchZipper!328 (derivationStepZipper!444 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (head!6312 (t!233321 prefix!919))) (tail!4537 (t!233321 prefix!919))))))

(assert (= (and d!828033 c!461758) b!2863941))

(assert (= (and d!828033 (not c!461758)) b!2863942))

(declare-fun m!3283583 () Bool)

(assert (=> d!828033 m!3283583))

(assert (=> b!2863941 m!3283531))

(declare-fun m!3283585 () Bool)

(assert (=> b!2863941 m!3283585))

(declare-fun m!3283587 () Bool)

(assert (=> b!2863942 m!3283587))

(assert (=> b!2863942 m!3283531))

(assert (=> b!2863942 m!3283587))

(declare-fun m!3283589 () Bool)

(assert (=> b!2863942 m!3283589))

(declare-fun m!3283591 () Bool)

(assert (=> b!2863942 m!3283591))

(assert (=> b!2863942 m!3283589))

(assert (=> b!2863942 m!3283591))

(declare-fun m!3283593 () Bool)

(assert (=> b!2863942 m!3283593))

(assert (=> b!2863913 d!828033))

(declare-fun d!828035 () Bool)

(assert (=> d!828035 true))

(declare-fun lambda!105661 () Int)

(declare-fun flatMap!213 ((Set Context!5212) Int) (Set Context!5212))

(assert (=> d!828035 (= (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (flatMap!213 z!960 lambda!105661))))

(declare-fun bs!520746 () Bool)

(assert (= bs!520746 d!828035))

(declare-fun m!3283595 () Bool)

(assert (=> bs!520746 m!3283595))

(assert (=> b!2863913 d!828035))

(declare-fun condSetEmpty!25487 () Bool)

(assert (=> setNonEmpty!25481 (= condSetEmpty!25487 (= setRest!25481 (as set.empty (Set Context!5212))))))

(declare-fun setRes!25487 () Bool)

(assert (=> setNonEmpty!25481 (= tp!922240 setRes!25487)))

(declare-fun setIsEmpty!25487 () Bool)

(assert (=> setIsEmpty!25487 setRes!25487))

(declare-fun setNonEmpty!25487 () Bool)

(declare-fun e!1813013 () Bool)

(declare-fun setElem!25487 () Context!5212)

(declare-fun tp!922255 () Bool)

(assert (=> setNonEmpty!25487 (= setRes!25487 (and tp!922255 (inv!46203 setElem!25487) e!1813013))))

(declare-fun setRest!25487 () (Set Context!5212))

(assert (=> setNonEmpty!25487 (= setRest!25481 (set.union (set.insert setElem!25487 (as set.empty (Set Context!5212))) setRest!25487))))

(declare-fun b!2863949 () Bool)

(declare-fun tp!922256 () Bool)

(assert (=> b!2863949 (= e!1813013 tp!922256)))

(assert (= (and setNonEmpty!25481 condSetEmpty!25487) setIsEmpty!25487))

(assert (= (and setNonEmpty!25481 (not condSetEmpty!25487)) setNonEmpty!25487))

(assert (= setNonEmpty!25487 b!2863949))

(declare-fun m!3283597 () Bool)

(assert (=> setNonEmpty!25487 m!3283597))

(declare-fun b!2863954 () Bool)

(declare-fun e!1813016 () Bool)

(declare-fun tp!922259 () Bool)

(assert (=> b!2863954 (= e!1813016 (and tp_is_empty!15029 tp!922259))))

(assert (=> b!2863914 (= tp!922239 e!1813016)))

(assert (= (and b!2863914 (is-Cons!34156 (t!233321 prefix!919))) b!2863954))

(declare-fun b!2863959 () Bool)

(declare-fun e!1813019 () Bool)

(declare-fun tp!922264 () Bool)

(declare-fun tp!922265 () Bool)

(assert (=> b!2863959 (= e!1813019 (and tp!922264 tp!922265))))

(assert (=> b!2863912 (= tp!922241 e!1813019)))

(assert (= (and b!2863912 (is-Cons!34157 (exprs!3106 setElem!25481))) b!2863959))

(push 1)

(assert (not d!828031))

(assert (not b!2863959))

(assert (not b!2863939))

(assert (not b!2863942))

(assert (not b!2863941))

(assert (not d!828035))

(assert (not d!828033))

(assert (not setNonEmpty!25487))

(assert (not d!828023))

(assert (not b!2863949))

(assert (not b!2863954))

(assert tp_is_empty!15029)

(assert (not b!2863940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!520747 () Bool)

(declare-fun b!2863964 () Bool)

(declare-fun d!828037 () Bool)

(assert (= bs!520747 (and b!2863964 d!828037)))

(declare-fun lambda!105675 () Int)

(declare-fun lambda!105674 () Int)

(assert (=> bs!520747 (not (= lambda!105675 lambda!105674))))

(declare-fun bs!520748 () Bool)

(declare-fun b!2863965 () Bool)

(assert (= bs!520748 (and b!2863965 d!828037)))

(declare-fun lambda!105676 () Int)

(assert (=> bs!520748 (not (= lambda!105676 lambda!105674))))

(declare-fun bs!520749 () Bool)

(assert (= bs!520749 (and b!2863965 b!2863964)))

(assert (=> bs!520749 (= lambda!105676 lambda!105675)))

(declare-fun c!461771 () Bool)

(declare-datatypes ((List!34284 0))(
  ( (Nil!34160) (Cons!34160 (h!39580 Context!5212) (t!233325 List!34284)) )
))
(declare-fun lt!1015264 () List!34284)

(declare-fun bm!184763 () Bool)

(declare-fun lt!1015267 () List!34284)

(declare-fun call!184767 () Bool)

(declare-fun exists!1058 (List!34284 Int) Bool)

(assert (=> bm!184763 (= call!184767 (exists!1058 (ite c!461771 lt!1015267 lt!1015264) (ite c!461771 lambda!105675 lambda!105676)))))

(declare-datatypes ((Unit!47821 0))(
  ( (Unit!47822) )
))
(declare-fun e!1813026 () Unit!47821)

(declare-fun Unit!47823 () Unit!47821)

(assert (=> b!2863964 (= e!1813026 Unit!47823)))

(declare-fun call!184768 () List!34284)

(assert (=> b!2863964 (= lt!1015267 call!184768)))

(declare-fun lt!1015268 () Unit!47821)

(declare-fun lemmaNotForallThenExists!127 (List!34284 Int) Unit!47821)

(assert (=> b!2863964 (= lt!1015268 (lemmaNotForallThenExists!127 lt!1015267 lambda!105674))))

(assert (=> b!2863964 call!184767))

(declare-fun lt!1015270 () Unit!47821)

(assert (=> b!2863964 (= lt!1015270 lt!1015268)))

(declare-fun lt!1015265 () Bool)

(declare-datatypes ((Option!6334 0))(
  ( (None!6333) (Some!6333 (v!34455 List!34280)) )
))
(declare-fun isEmpty!18646 (Option!6334) Bool)

(declare-fun getLanguageWitness!276 ((Set Context!5212)) Option!6334)

(assert (=> d!828037 (= lt!1015265 (isEmpty!18646 (getLanguageWitness!276 (derivationStepZipper!444 z!960 (h!39576 prefix!919)))))))

(declare-fun forall!6987 ((Set Context!5212) Int) Bool)

(assert (=> d!828037 (= lt!1015265 (forall!6987 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) lambda!105674))))

(declare-fun lt!1015266 () Unit!47821)

(assert (=> d!828037 (= lt!1015266 e!1813026)))

(assert (=> d!828037 (= c!461771 (not (forall!6987 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) lambda!105674)))))

(assert (=> d!828037 (= (lostCauseZipper!555 (derivationStepZipper!444 z!960 (h!39576 prefix!919))) lt!1015265)))

(declare-fun Unit!47824 () Unit!47821)

(assert (=> b!2863965 (= e!1813026 Unit!47824)))

(assert (=> b!2863965 (= lt!1015264 call!184768)))

(declare-fun lt!1015271 () Unit!47821)

(declare-fun lemmaForallThenNotExists!127 (List!34284 Int) Unit!47821)

(assert (=> b!2863965 (= lt!1015271 (lemmaForallThenNotExists!127 lt!1015264 lambda!105674))))

(assert (=> b!2863965 (not call!184767)))

(declare-fun lt!1015269 () Unit!47821)

(assert (=> b!2863965 (= lt!1015269 lt!1015271)))

(declare-fun bm!184762 () Bool)

(declare-fun toList!1986 ((Set Context!5212)) List!34284)

(assert (=> bm!184762 (= call!184768 (toList!1986 (derivationStepZipper!444 z!960 (h!39576 prefix!919))))))

(assert (= (and d!828037 c!461771) b!2863964))

(assert (= (and d!828037 (not c!461771)) b!2863965))

(assert (= (or b!2863964 b!2863965) bm!184762))

(assert (= (or b!2863964 b!2863965) bm!184763))

(declare-fun m!3283599 () Bool)

(assert (=> b!2863964 m!3283599))

(assert (=> d!828037 m!3283531))

(declare-fun m!3283601 () Bool)

(assert (=> d!828037 m!3283601))

(assert (=> d!828037 m!3283601))

(declare-fun m!3283603 () Bool)

(assert (=> d!828037 m!3283603))

(assert (=> d!828037 m!3283531))

(declare-fun m!3283605 () Bool)

(assert (=> d!828037 m!3283605))

(assert (=> d!828037 m!3283531))

(assert (=> d!828037 m!3283605))

(declare-fun m!3283607 () Bool)

(assert (=> b!2863965 m!3283607))

(assert (=> bm!184762 m!3283531))

(declare-fun m!3283609 () Bool)

(assert (=> bm!184762 m!3283609))

(declare-fun m!3283611 () Bool)

(assert (=> bm!184763 m!3283611))

(assert (=> b!2863941 d!828037))

(declare-fun d!828039 () Bool)

(declare-fun choose!16877 ((Set Context!5212) Int) (Set Context!5212))

(assert (=> d!828039 (= (flatMap!213 z!960 lambda!105661) (choose!16877 z!960 lambda!105661))))

(declare-fun bs!520750 () Bool)

(assert (= bs!520750 d!828039))

(declare-fun m!3283613 () Bool)

(assert (=> bs!520750 m!3283613))

(assert (=> d!828035 d!828039))

(declare-fun d!828041 () Bool)

(declare-fun c!461772 () Bool)

(assert (=> d!828041 (= c!461772 (isEmpty!18645 (tail!4537 prefix!919)))))

(declare-fun e!1813027 () Bool)

(assert (=> d!828041 (= (prefixMatchZipper!328 (derivationStepZipper!444 z!960 (head!6312 prefix!919)) (tail!4537 prefix!919)) e!1813027)))

(declare-fun b!2863966 () Bool)

(assert (=> b!2863966 (= e!1813027 (not (lostCauseZipper!555 (derivationStepZipper!444 z!960 (head!6312 prefix!919)))))))

(declare-fun b!2863967 () Bool)

(assert (=> b!2863967 (= e!1813027 (prefixMatchZipper!328 (derivationStepZipper!444 (derivationStepZipper!444 z!960 (head!6312 prefix!919)) (head!6312 (tail!4537 prefix!919))) (tail!4537 (tail!4537 prefix!919))))))

(assert (= (and d!828041 c!461772) b!2863966))

(assert (= (and d!828041 (not c!461772)) b!2863967))

(assert (=> d!828041 m!3283579))

(declare-fun m!3283615 () Bool)

(assert (=> d!828041 m!3283615))

(assert (=> b!2863966 m!3283577))

(declare-fun m!3283617 () Bool)

(assert (=> b!2863966 m!3283617))

(assert (=> b!2863967 m!3283579))

(declare-fun m!3283619 () Bool)

(assert (=> b!2863967 m!3283619))

(assert (=> b!2863967 m!3283577))

(assert (=> b!2863967 m!3283619))

(declare-fun m!3283621 () Bool)

(assert (=> b!2863967 m!3283621))

(assert (=> b!2863967 m!3283579))

(declare-fun m!3283623 () Bool)

(assert (=> b!2863967 m!3283623))

(assert (=> b!2863967 m!3283621))

(assert (=> b!2863967 m!3283623))

(declare-fun m!3283625 () Bool)

(assert (=> b!2863967 m!3283625))

(assert (=> b!2863940 d!828041))

(declare-fun bs!520751 () Bool)

(declare-fun d!828043 () Bool)

(assert (= bs!520751 (and d!828043 d!828035)))

(declare-fun lambda!105677 () Int)

(assert (=> bs!520751 (= (= (head!6312 prefix!919) (h!39576 prefix!919)) (= lambda!105677 lambda!105661))))

(assert (=> d!828043 true))

(assert (=> d!828043 (= (derivationStepZipper!444 z!960 (head!6312 prefix!919)) (flatMap!213 z!960 lambda!105677))))

(declare-fun bs!520752 () Bool)

(assert (= bs!520752 d!828043))

(declare-fun m!3283627 () Bool)

(assert (=> bs!520752 m!3283627))

(assert (=> b!2863940 d!828043))

(declare-fun d!828045 () Bool)

(assert (=> d!828045 (= (head!6312 prefix!919) (h!39576 prefix!919))))

(assert (=> b!2863940 d!828045))

(declare-fun d!828047 () Bool)

(assert (=> d!828047 (= (tail!4537 prefix!919) (t!233321 prefix!919))))

(assert (=> b!2863940 d!828047))

(declare-fun d!828049 () Bool)

(assert (=> d!828049 (= (isEmpty!18645 prefix!919) (is-Nil!34156 prefix!919))))

(assert (=> d!828031 d!828049))

(declare-fun bs!520753 () Bool)

(declare-fun d!828051 () Bool)

(assert (= bs!520753 (and d!828051 d!828037)))

(declare-fun lambda!105678 () Int)

(assert (=> bs!520753 (= lambda!105678 lambda!105674)))

(declare-fun bs!520754 () Bool)

(assert (= bs!520754 (and d!828051 b!2863964)))

(assert (=> bs!520754 (not (= lambda!105678 lambda!105675))))

(declare-fun bs!520755 () Bool)

(assert (= bs!520755 (and d!828051 b!2863965)))

(assert (=> bs!520755 (not (= lambda!105678 lambda!105676))))

(declare-fun bs!520756 () Bool)

(declare-fun b!2863968 () Bool)

(assert (= bs!520756 (and b!2863968 d!828037)))

(declare-fun lambda!105679 () Int)

(assert (=> bs!520756 (not (= lambda!105679 lambda!105674))))

(declare-fun bs!520757 () Bool)

(assert (= bs!520757 (and b!2863968 b!2863964)))

(assert (=> bs!520757 (= lambda!105679 lambda!105675)))

(declare-fun bs!520758 () Bool)

(assert (= bs!520758 (and b!2863968 b!2863965)))

(assert (=> bs!520758 (= lambda!105679 lambda!105676)))

(declare-fun bs!520759 () Bool)

(assert (= bs!520759 (and b!2863968 d!828051)))

(assert (=> bs!520759 (not (= lambda!105679 lambda!105678))))

(declare-fun bs!520760 () Bool)

(declare-fun b!2863969 () Bool)

(assert (= bs!520760 (and b!2863969 d!828037)))

(declare-fun lambda!105680 () Int)

(assert (=> bs!520760 (not (= lambda!105680 lambda!105674))))

(declare-fun bs!520761 () Bool)

(assert (= bs!520761 (and b!2863969 b!2863965)))

(assert (=> bs!520761 (= lambda!105680 lambda!105676)))

(declare-fun bs!520762 () Bool)

(assert (= bs!520762 (and b!2863969 d!828051)))

(assert (=> bs!520762 (not (= lambda!105680 lambda!105678))))

(declare-fun bs!520763 () Bool)

(assert (= bs!520763 (and b!2863969 b!2863968)))

(assert (=> bs!520763 (= lambda!105680 lambda!105679)))

(declare-fun bs!520764 () Bool)

(assert (= bs!520764 (and b!2863969 b!2863964)))

(assert (=> bs!520764 (= lambda!105680 lambda!105675)))

(declare-fun call!184769 () Bool)

(declare-fun lt!1015275 () List!34284)

(declare-fun lt!1015272 () List!34284)

(declare-fun bm!184765 () Bool)

(declare-fun c!461773 () Bool)

(assert (=> bm!184765 (= call!184769 (exists!1058 (ite c!461773 lt!1015275 lt!1015272) (ite c!461773 lambda!105679 lambda!105680)))))

(declare-fun e!1813028 () Unit!47821)

(declare-fun Unit!47825 () Unit!47821)

(assert (=> b!2863968 (= e!1813028 Unit!47825)))

(declare-fun call!184770 () List!34284)

(assert (=> b!2863968 (= lt!1015275 call!184770)))

(declare-fun lt!1015276 () Unit!47821)

(assert (=> b!2863968 (= lt!1015276 (lemmaNotForallThenExists!127 lt!1015275 lambda!105678))))

(assert (=> b!2863968 call!184769))

(declare-fun lt!1015278 () Unit!47821)

(assert (=> b!2863968 (= lt!1015278 lt!1015276)))

(declare-fun lt!1015273 () Bool)

(assert (=> d!828051 (= lt!1015273 (isEmpty!18646 (getLanguageWitness!276 z!960)))))

(assert (=> d!828051 (= lt!1015273 (forall!6987 z!960 lambda!105678))))

(declare-fun lt!1015274 () Unit!47821)

(assert (=> d!828051 (= lt!1015274 e!1813028)))

(assert (=> d!828051 (= c!461773 (not (forall!6987 z!960 lambda!105678)))))

(assert (=> d!828051 (= (lostCauseZipper!555 z!960) lt!1015273)))

(declare-fun Unit!47826 () Unit!47821)

(assert (=> b!2863969 (= e!1813028 Unit!47826)))

(assert (=> b!2863969 (= lt!1015272 call!184770)))

(declare-fun lt!1015279 () Unit!47821)

(assert (=> b!2863969 (= lt!1015279 (lemmaForallThenNotExists!127 lt!1015272 lambda!105678))))

(assert (=> b!2863969 (not call!184769)))

(declare-fun lt!1015277 () Unit!47821)

(assert (=> b!2863969 (= lt!1015277 lt!1015279)))

(declare-fun bm!184764 () Bool)

(assert (=> bm!184764 (= call!184770 (toList!1986 z!960))))

(assert (= (and d!828051 c!461773) b!2863968))

(assert (= (and d!828051 (not c!461773)) b!2863969))

(assert (= (or b!2863968 b!2863969) bm!184764))

(assert (= (or b!2863968 b!2863969) bm!184765))

(declare-fun m!3283629 () Bool)

(assert (=> b!2863968 m!3283629))

(declare-fun m!3283631 () Bool)

(assert (=> d!828051 m!3283631))

(assert (=> d!828051 m!3283631))

(declare-fun m!3283633 () Bool)

(assert (=> d!828051 m!3283633))

(declare-fun m!3283635 () Bool)

(assert (=> d!828051 m!3283635))

(assert (=> d!828051 m!3283635))

(declare-fun m!3283637 () Bool)

(assert (=> b!2863969 m!3283637))

(declare-fun m!3283639 () Bool)

(assert (=> bm!184764 m!3283639))

(declare-fun m!3283641 () Bool)

(assert (=> bm!184765 m!3283641))

(assert (=> b!2863939 d!828051))

(declare-fun d!828053 () Bool)

(assert (=> d!828053 (= (isEmpty!18645 (t!233321 prefix!919)) (is-Nil!34156 (t!233321 prefix!919)))))

(assert (=> d!828033 d!828053))

(declare-fun bs!520765 () Bool)

(declare-fun d!828055 () Bool)

(assert (= bs!520765 (and d!828055 d!828023)))

(declare-fun lambda!105681 () Int)

(assert (=> bs!520765 (= lambda!105681 lambda!105658)))

(assert (=> d!828055 (= (inv!46203 setElem!25487) (forall!6986 (exprs!3106 setElem!25487) lambda!105681))))

(declare-fun bs!520766 () Bool)

(assert (= bs!520766 d!828055))

(declare-fun m!3283643 () Bool)

(assert (=> bs!520766 m!3283643))

(assert (=> setNonEmpty!25487 d!828055))

(declare-fun d!828057 () Bool)

(declare-fun res!1189021 () Bool)

(declare-fun e!1813033 () Bool)

(assert (=> d!828057 (=> res!1189021 e!1813033)))

(assert (=> d!828057 (= res!1189021 (is-Nil!34157 (exprs!3106 setElem!25481)))))

(assert (=> d!828057 (= (forall!6986 (exprs!3106 setElem!25481) lambda!105658) e!1813033)))

(declare-fun b!2863974 () Bool)

(declare-fun e!1813034 () Bool)

(assert (=> b!2863974 (= e!1813033 e!1813034)))

(declare-fun res!1189022 () Bool)

(assert (=> b!2863974 (=> (not res!1189022) (not e!1813034))))

(declare-fun dynLambda!14262 (Int Regex!8646) Bool)

(assert (=> b!2863974 (= res!1189022 (dynLambda!14262 lambda!105658 (h!39577 (exprs!3106 setElem!25481))))))

(declare-fun b!2863975 () Bool)

(assert (=> b!2863975 (= e!1813034 (forall!6986 (t!233322 (exprs!3106 setElem!25481)) lambda!105658))))

(assert (= (and d!828057 (not res!1189021)) b!2863974))

(assert (= (and b!2863974 res!1189022) b!2863975))

(declare-fun b_lambda!85867 () Bool)

(assert (=> (not b_lambda!85867) (not b!2863974)))

(declare-fun m!3283645 () Bool)

(assert (=> b!2863974 m!3283645))

(declare-fun m!3283647 () Bool)

(assert (=> b!2863975 m!3283647))

(assert (=> d!828023 d!828057))

(declare-fun d!828059 () Bool)

(declare-fun c!461774 () Bool)

(assert (=> d!828059 (= c!461774 (isEmpty!18645 (tail!4537 (t!233321 prefix!919))))))

(declare-fun e!1813035 () Bool)

(assert (=> d!828059 (= (prefixMatchZipper!328 (derivationStepZipper!444 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (head!6312 (t!233321 prefix!919))) (tail!4537 (t!233321 prefix!919))) e!1813035)))

(declare-fun b!2863976 () Bool)

(assert (=> b!2863976 (= e!1813035 (not (lostCauseZipper!555 (derivationStepZipper!444 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (head!6312 (t!233321 prefix!919))))))))

(declare-fun b!2863977 () Bool)

(assert (=> b!2863977 (= e!1813035 (prefixMatchZipper!328 (derivationStepZipper!444 (derivationStepZipper!444 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (head!6312 (t!233321 prefix!919))) (head!6312 (tail!4537 (t!233321 prefix!919)))) (tail!4537 (tail!4537 (t!233321 prefix!919)))))))

(assert (= (and d!828059 c!461774) b!2863976))

(assert (= (and d!828059 (not c!461774)) b!2863977))

(assert (=> d!828059 m!3283591))

(declare-fun m!3283649 () Bool)

(assert (=> d!828059 m!3283649))

(assert (=> b!2863976 m!3283589))

(declare-fun m!3283651 () Bool)

(assert (=> b!2863976 m!3283651))

(assert (=> b!2863977 m!3283591))

(declare-fun m!3283653 () Bool)

(assert (=> b!2863977 m!3283653))

(assert (=> b!2863977 m!3283589))

(assert (=> b!2863977 m!3283653))

(declare-fun m!3283655 () Bool)

(assert (=> b!2863977 m!3283655))

(assert (=> b!2863977 m!3283591))

(declare-fun m!3283657 () Bool)

(assert (=> b!2863977 m!3283657))

(assert (=> b!2863977 m!3283655))

(assert (=> b!2863977 m!3283657))

(declare-fun m!3283659 () Bool)

(assert (=> b!2863977 m!3283659))

(assert (=> b!2863942 d!828059))

(declare-fun bs!520767 () Bool)

(declare-fun d!828061 () Bool)

(assert (= bs!520767 (and d!828061 d!828035)))

(declare-fun lambda!105682 () Int)

(assert (=> bs!520767 (= (= (head!6312 (t!233321 prefix!919)) (h!39576 prefix!919)) (= lambda!105682 lambda!105661))))

(declare-fun bs!520768 () Bool)

(assert (= bs!520768 (and d!828061 d!828043)))

(assert (=> bs!520768 (= (= (head!6312 (t!233321 prefix!919)) (head!6312 prefix!919)) (= lambda!105682 lambda!105677))))

(assert (=> d!828061 true))

(assert (=> d!828061 (= (derivationStepZipper!444 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) (head!6312 (t!233321 prefix!919))) (flatMap!213 (derivationStepZipper!444 z!960 (h!39576 prefix!919)) lambda!105682))))

(declare-fun bs!520769 () Bool)

(assert (= bs!520769 d!828061))

(assert (=> bs!520769 m!3283531))

(declare-fun m!3283661 () Bool)

(assert (=> bs!520769 m!3283661))

(assert (=> b!2863942 d!828061))

(declare-fun d!828063 () Bool)

(assert (=> d!828063 (= (head!6312 (t!233321 prefix!919)) (h!39576 (t!233321 prefix!919)))))

(assert (=> b!2863942 d!828063))

(declare-fun d!828065 () Bool)

(assert (=> d!828065 (= (tail!4537 (t!233321 prefix!919)) (t!233321 (t!233321 prefix!919)))))

(assert (=> b!2863942 d!828065))

(declare-fun b!2863978 () Bool)

(declare-fun e!1813036 () Bool)

(declare-fun tp!922266 () Bool)

(assert (=> b!2863978 (= e!1813036 (and tp_is_empty!15029 tp!922266))))

(assert (=> b!2863954 (= tp!922259 e!1813036)))

(assert (= (and b!2863954 (is-Cons!34156 (t!233321 (t!233321 prefix!919)))) b!2863978))

(declare-fun b!2863979 () Bool)

(declare-fun e!1813037 () Bool)

(declare-fun tp!922267 () Bool)

(declare-fun tp!922268 () Bool)

(assert (=> b!2863979 (= e!1813037 (and tp!922267 tp!922268))))

(assert (=> b!2863949 (= tp!922256 e!1813037)))

(assert (= (and b!2863949 (is-Cons!34157 (exprs!3106 setElem!25487))) b!2863979))

(declare-fun condSetEmpty!25488 () Bool)

(assert (=> setNonEmpty!25487 (= condSetEmpty!25488 (= setRest!25487 (as set.empty (Set Context!5212))))))

(declare-fun setRes!25488 () Bool)

(assert (=> setNonEmpty!25487 (= tp!922255 setRes!25488)))

(declare-fun setIsEmpty!25488 () Bool)

(assert (=> setIsEmpty!25488 setRes!25488))

(declare-fun setNonEmpty!25488 () Bool)

(declare-fun setElem!25488 () Context!5212)

(declare-fun tp!922269 () Bool)

(declare-fun e!1813038 () Bool)

(assert (=> setNonEmpty!25488 (= setRes!25488 (and tp!922269 (inv!46203 setElem!25488) e!1813038))))

(declare-fun setRest!25488 () (Set Context!5212))

(assert (=> setNonEmpty!25488 (= setRest!25487 (set.union (set.insert setElem!25488 (as set.empty (Set Context!5212))) setRest!25488))))

(declare-fun b!2863980 () Bool)

(declare-fun tp!922270 () Bool)

(assert (=> b!2863980 (= e!1813038 tp!922270)))

(assert (= (and setNonEmpty!25487 condSetEmpty!25488) setIsEmpty!25488))

(assert (= (and setNonEmpty!25487 (not condSetEmpty!25488)) setNonEmpty!25488))

(assert (= setNonEmpty!25488 b!2863980))

(declare-fun m!3283663 () Bool)

(assert (=> setNonEmpty!25488 m!3283663))

(declare-fun b!2863991 () Bool)

(declare-fun e!1813041 () Bool)

(assert (=> b!2863991 (= e!1813041 tp_is_empty!15029)))

(declare-fun b!2863992 () Bool)

(declare-fun tp!922283 () Bool)

(declare-fun tp!922284 () Bool)

(assert (=> b!2863992 (= e!1813041 (and tp!922283 tp!922284))))

(declare-fun b!2863993 () Bool)

(declare-fun tp!922285 () Bool)

(assert (=> b!2863993 (= e!1813041 tp!922285)))

(assert (=> b!2863959 (= tp!922264 e!1813041)))

(declare-fun b!2863994 () Bool)

(declare-fun tp!922281 () Bool)

(declare-fun tp!922282 () Bool)

(assert (=> b!2863994 (= e!1813041 (and tp!922281 tp!922282))))

(assert (= (and b!2863959 (is-ElementMatch!8646 (h!39577 (exprs!3106 setElem!25481)))) b!2863991))

(assert (= (and b!2863959 (is-Concat!13967 (h!39577 (exprs!3106 setElem!25481)))) b!2863992))

(assert (= (and b!2863959 (is-Star!8646 (h!39577 (exprs!3106 setElem!25481)))) b!2863993))

(assert (= (and b!2863959 (is-Union!8646 (h!39577 (exprs!3106 setElem!25481)))) b!2863994))

(declare-fun b!2863995 () Bool)

(declare-fun e!1813042 () Bool)

(declare-fun tp!922286 () Bool)

(declare-fun tp!922287 () Bool)

(assert (=> b!2863995 (= e!1813042 (and tp!922286 tp!922287))))

(assert (=> b!2863959 (= tp!922265 e!1813042)))

(assert (= (and b!2863959 (is-Cons!34157 (t!233322 (exprs!3106 setElem!25481)))) b!2863995))

(declare-fun b_lambda!85869 () Bool)

(assert (= b_lambda!85867 (or d!828023 b_lambda!85869)))

(declare-fun bs!520770 () Bool)

(declare-fun d!828067 () Bool)

(assert (= bs!520770 (and d!828067 d!828023)))

(declare-fun validRegex!3490 (Regex!8646) Bool)

(assert (=> bs!520770 (= (dynLambda!14262 lambda!105658 (h!39577 (exprs!3106 setElem!25481))) (validRegex!3490 (h!39577 (exprs!3106 setElem!25481))))))

(declare-fun m!3283665 () Bool)

(assert (=> bs!520770 m!3283665))

(assert (=> b!2863974 d!828067))

(push 1)

(assert (not b!2863965))

(assert (not b!2863992))

(assert (not d!828059))

(assert (not b!2863994))

(assert (not d!828043))

(assert (not b!2863977))

(assert (not d!828041))

(assert (not setNonEmpty!25488))

(assert (not bm!184765))

(assert (not b!2863975))

(assert (not b!2863976))

(assert (not b!2863980))

(assert (not b!2863969))

(assert (not b_lambda!85869))

(assert (not b!2863968))

(assert (not bm!184764))

(assert (not d!828055))

(assert (not b!2863979))

(assert (not d!828039))

(assert (not b!2863993))

(assert (not b!2863966))

(assert (not b!2863967))

(assert (not d!828037))

(assert (not b!2863964))

(assert (not b!2863995))

(assert (not bs!520770))

(assert tp_is_empty!15029)

(assert (not d!828061))

(assert (not b!2863978))

(assert (not bm!184763))

(assert (not bm!184762))

(assert (not d!828051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

