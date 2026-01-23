; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278328 () Bool)

(assert start!278328)

(declare-fun b!2859885 () Bool)

(declare-fun e!1810751 () Bool)

(declare-fun tp!920558 () Bool)

(assert (=> b!2859885 (= e!1810751 tp!920558)))

(declare-fun b!2859886 () Bool)

(declare-fun tp!920560 () Bool)

(declare-fun tp!920557 () Bool)

(assert (=> b!2859886 (= e!1810751 (and tp!920560 tp!920557))))

(declare-fun res!1187779 () Bool)

(declare-fun e!1810750 () Bool)

(assert (=> start!278328 (=> (not res!1187779) (not e!1810750))))

(declare-datatypes ((C!17386 0))(
  ( (C!17387 (val!10727 Int)) )
))
(declare-datatypes ((Regex!8602 0))(
  ( (ElementMatch!8602 (c!460915 C!17386)) (Concat!13923 (regOne!17716 Regex!8602) (regTwo!17716 Regex!8602)) (EmptyExpr!8602) (Star!8602 (reg!8931 Regex!8602)) (EmptyLang!8602) (Union!8602 (regOne!17717 Regex!8602) (regTwo!17717 Regex!8602)) )
))
(declare-fun r!23423 () Regex!8602)

(declare-fun validRegex!3472 (Regex!8602) Bool)

(assert (=> start!278328 (= res!1187779 (validRegex!3472 r!23423))))

(assert (=> start!278328 e!1810750))

(assert (=> start!278328 e!1810751))

(declare-fun e!1810749 () Bool)

(assert (=> start!278328 e!1810749))

(declare-fun b!2859887 () Bool)

(declare-fun tp_is_empty!14941 () Bool)

(declare-fun tp!920559 () Bool)

(assert (=> b!2859887 (= e!1810749 (and tp_is_empty!14941 tp!920559))))

(declare-fun b!2859888 () Bool)

(declare-datatypes ((List!34199 0))(
  ( (Nil!34075) (Cons!34075 (h!39495 C!17386) (t!233234 List!34199)) )
))
(declare-fun prefix!1470 () List!34199)

(declare-fun size!26280 (List!34199) Int)

(assert (=> b!2859888 (= e!1810750 (< (size!26280 prefix!1470) 0))))

(declare-fun b!2859889 () Bool)

(assert (=> b!2859889 (= e!1810751 tp_is_empty!14941)))

(declare-fun b!2859890 () Bool)

(declare-fun tp!920561 () Bool)

(declare-fun tp!920562 () Bool)

(assert (=> b!2859890 (= e!1810751 (and tp!920561 tp!920562))))

(declare-fun b!2859891 () Bool)

(declare-fun res!1187780 () Bool)

(assert (=> b!2859891 (=> (not res!1187780) (not e!1810750))))

(declare-fun prefixMatch!910 (Regex!8602 List!34199) Bool)

(assert (=> b!2859891 (= res!1187780 (prefixMatch!910 r!23423 prefix!1470))))

(assert (= (and start!278328 res!1187779) b!2859891))

(assert (= (and b!2859891 res!1187780) b!2859888))

(assert (= (and start!278328 (is-ElementMatch!8602 r!23423)) b!2859889))

(assert (= (and start!278328 (is-Concat!13923 r!23423)) b!2859890))

(assert (= (and start!278328 (is-Star!8602 r!23423)) b!2859885))

(assert (= (and start!278328 (is-Union!8602 r!23423)) b!2859886))

(assert (= (and start!278328 (is-Cons!34075 prefix!1470)) b!2859887))

(declare-fun m!3280593 () Bool)

(assert (=> start!278328 m!3280593))

(declare-fun m!3280595 () Bool)

(assert (=> b!2859888 m!3280595))

(declare-fun m!3280597 () Bool)

(assert (=> b!2859891 m!3280597))

(push 1)

(assert (not b!2859888))

(assert (not b!2859887))

(assert (not b!2859885))

(assert tp_is_empty!14941)

(assert (not start!278328))

(assert (not b!2859891))

(assert (not b!2859890))

(assert (not b!2859886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2859937 () Bool)

(declare-fun e!1810782 () Bool)

(declare-fun call!184411 () Bool)

(assert (=> b!2859937 (= e!1810782 call!184411)))

(declare-fun call!184412 () Bool)

(declare-fun c!460924 () Bool)

(declare-fun bm!184406 () Bool)

(declare-fun c!460925 () Bool)

(assert (=> bm!184406 (= call!184412 (validRegex!3472 (ite c!460924 (reg!8931 r!23423) (ite c!460925 (regOne!17717 r!23423) (regOne!17716 r!23423)))))))

(declare-fun b!2859938 () Bool)

(declare-fun e!1810784 () Bool)

(declare-fun e!1810783 () Bool)

(assert (=> b!2859938 (= e!1810784 e!1810783)))

(declare-fun res!1187800 () Bool)

(assert (=> b!2859938 (=> (not res!1187800) (not e!1810783))))

(declare-fun call!184413 () Bool)

(assert (=> b!2859938 (= res!1187800 call!184413)))

(declare-fun b!2859939 () Bool)

(declare-fun res!1187799 () Bool)

(assert (=> b!2859939 (=> res!1187799 e!1810784)))

(assert (=> b!2859939 (= res!1187799 (not (is-Concat!13923 r!23423)))))

(declare-fun e!1810780 () Bool)

(assert (=> b!2859939 (= e!1810780 e!1810784)))

(declare-fun b!2859940 () Bool)

(declare-fun e!1810779 () Bool)

(declare-fun e!1810778 () Bool)

(assert (=> b!2859940 (= e!1810779 e!1810778)))

(declare-fun res!1187797 () Bool)

(declare-fun nullable!2656 (Regex!8602) Bool)

(assert (=> b!2859940 (= res!1187797 (not (nullable!2656 (reg!8931 r!23423))))))

(assert (=> b!2859940 (=> (not res!1187797) (not e!1810778))))

(declare-fun bm!184407 () Bool)

(assert (=> bm!184407 (= call!184413 call!184412)))

(declare-fun b!2859941 () Bool)

(declare-fun res!1187798 () Bool)

(assert (=> b!2859941 (=> (not res!1187798) (not e!1810782))))

(assert (=> b!2859941 (= res!1187798 call!184413)))

(assert (=> b!2859941 (= e!1810780 e!1810782)))

(declare-fun bm!184408 () Bool)

(assert (=> bm!184408 (= call!184411 (validRegex!3472 (ite c!460925 (regTwo!17717 r!23423) (regTwo!17716 r!23423))))))

(declare-fun d!827037 () Bool)

(declare-fun res!1187801 () Bool)

(declare-fun e!1810781 () Bool)

(assert (=> d!827037 (=> res!1187801 e!1810781)))

(assert (=> d!827037 (= res!1187801 (is-ElementMatch!8602 r!23423))))

(assert (=> d!827037 (= (validRegex!3472 r!23423) e!1810781)))

(declare-fun b!2859942 () Bool)

(assert (=> b!2859942 (= e!1810779 e!1810780)))

(assert (=> b!2859942 (= c!460925 (is-Union!8602 r!23423))))

(declare-fun b!2859943 () Bool)

(assert (=> b!2859943 (= e!1810783 call!184411)))

(declare-fun b!2859944 () Bool)

(assert (=> b!2859944 (= e!1810778 call!184412)))

(declare-fun b!2859945 () Bool)

(assert (=> b!2859945 (= e!1810781 e!1810779)))

(assert (=> b!2859945 (= c!460924 (is-Star!8602 r!23423))))

(assert (= (and d!827037 (not res!1187801)) b!2859945))

(assert (= (and b!2859945 c!460924) b!2859940))

(assert (= (and b!2859945 (not c!460924)) b!2859942))

(assert (= (and b!2859940 res!1187797) b!2859944))

(assert (= (and b!2859942 c!460925) b!2859941))

(assert (= (and b!2859942 (not c!460925)) b!2859939))

(assert (= (and b!2859941 res!1187798) b!2859937))

(assert (= (and b!2859939 (not res!1187799)) b!2859938))

(assert (= (and b!2859938 res!1187800) b!2859943))

(assert (= (or b!2859937 b!2859943) bm!184408))

(assert (= (or b!2859941 b!2859938) bm!184407))

(assert (= (or b!2859944 bm!184407) bm!184406))

(declare-fun m!3280607 () Bool)

(assert (=> bm!184406 m!3280607))

(declare-fun m!3280609 () Bool)

(assert (=> b!2859940 m!3280609))

(declare-fun m!3280611 () Bool)

(assert (=> bm!184408 m!3280611))

(assert (=> start!278328 d!827037))

(declare-fun d!827043 () Bool)

(declare-fun lt!1014427 () Int)

(assert (=> d!827043 (>= lt!1014427 0)))

(declare-fun e!1810787 () Int)

(assert (=> d!827043 (= lt!1014427 e!1810787)))

(declare-fun c!460928 () Bool)

(assert (=> d!827043 (= c!460928 (is-Nil!34075 prefix!1470))))

(assert (=> d!827043 (= (size!26280 prefix!1470) lt!1014427)))

(declare-fun b!2859950 () Bool)

(assert (=> b!2859950 (= e!1810787 0)))

(declare-fun b!2859951 () Bool)

(assert (=> b!2859951 (= e!1810787 (+ 1 (size!26280 (t!233234 prefix!1470))))))

(assert (= (and d!827043 c!460928) b!2859950))

(assert (= (and d!827043 (not c!460928)) b!2859951))

(declare-fun m!3280613 () Bool)

(assert (=> b!2859951 m!3280613))

(assert (=> b!2859888 d!827043))

(declare-fun d!827045 () Bool)

(declare-fun c!460935 () Bool)

(declare-fun isEmpty!18610 (List!34199) Bool)

(assert (=> d!827045 (= c!460935 (isEmpty!18610 prefix!1470))))

(declare-fun e!1810804 () Bool)

(assert (=> d!827045 (= (prefixMatch!910 r!23423 prefix!1470) e!1810804)))

(declare-fun b!2859974 () Bool)

(declare-fun lostCause!755 (Regex!8602) Bool)

(assert (=> b!2859974 (= e!1810804 (not (lostCause!755 r!23423)))))

(declare-fun b!2859975 () Bool)

(declare-fun derivativeStep!2291 (Regex!8602 C!17386) Regex!8602)

(declare-fun head!6285 (List!34199) C!17386)

(declare-fun tail!4510 (List!34199) List!34199)

(assert (=> b!2859975 (= e!1810804 (prefixMatch!910 (derivativeStep!2291 r!23423 (head!6285 prefix!1470)) (tail!4510 prefix!1470)))))

(assert (= (and d!827045 c!460935) b!2859974))

(assert (= (and d!827045 (not c!460935)) b!2859975))

(declare-fun m!3280615 () Bool)

(assert (=> d!827045 m!3280615))

(declare-fun m!3280617 () Bool)

(assert (=> b!2859974 m!3280617))

(declare-fun m!3280619 () Bool)

(assert (=> b!2859975 m!3280619))

(assert (=> b!2859975 m!3280619))

(declare-fun m!3280621 () Bool)

(assert (=> b!2859975 m!3280621))

(declare-fun m!3280623 () Bool)

(assert (=> b!2859975 m!3280623))

(assert (=> b!2859975 m!3280621))

(assert (=> b!2859975 m!3280623))

(declare-fun m!3280625 () Bool)

(assert (=> b!2859975 m!3280625))

(assert (=> b!2859891 d!827045))

(declare-fun b!2859987 () Bool)

(declare-fun e!1810807 () Bool)

(declare-fun tp!920593 () Bool)

(declare-fun tp!920592 () Bool)

(assert (=> b!2859987 (= e!1810807 (and tp!920593 tp!920592))))

(declare-fun b!2859989 () Bool)

(declare-fun tp!920595 () Bool)

(declare-fun tp!920594 () Bool)

(assert (=> b!2859989 (= e!1810807 (and tp!920595 tp!920594))))

(assert (=> b!2859886 (= tp!920560 e!1810807)))

(declare-fun b!2859986 () Bool)

(assert (=> b!2859986 (= e!1810807 tp_is_empty!14941)))

(declare-fun b!2859988 () Bool)

(declare-fun tp!920591 () Bool)

(assert (=> b!2859988 (= e!1810807 tp!920591)))

(assert (= (and b!2859886 (is-ElementMatch!8602 (regOne!17717 r!23423))) b!2859986))

(assert (= (and b!2859886 (is-Concat!13923 (regOne!17717 r!23423))) b!2859987))

(assert (= (and b!2859886 (is-Star!8602 (regOne!17717 r!23423))) b!2859988))

(assert (= (and b!2859886 (is-Union!8602 (regOne!17717 r!23423))) b!2859989))

(declare-fun b!2859991 () Bool)

(declare-fun e!1810808 () Bool)

(declare-fun tp!920598 () Bool)

(declare-fun tp!920597 () Bool)

(assert (=> b!2859991 (= e!1810808 (and tp!920598 tp!920597))))

(declare-fun b!2859993 () Bool)

(declare-fun tp!920600 () Bool)

(declare-fun tp!920599 () Bool)

(assert (=> b!2859993 (= e!1810808 (and tp!920600 tp!920599))))

(assert (=> b!2859886 (= tp!920557 e!1810808)))

(declare-fun b!2859990 () Bool)

(assert (=> b!2859990 (= e!1810808 tp_is_empty!14941)))

(declare-fun b!2859992 () Bool)

(declare-fun tp!920596 () Bool)

(assert (=> b!2859992 (= e!1810808 tp!920596)))

(assert (= (and b!2859886 (is-ElementMatch!8602 (regTwo!17717 r!23423))) b!2859990))

(assert (= (and b!2859886 (is-Concat!13923 (regTwo!17717 r!23423))) b!2859991))

(assert (= (and b!2859886 (is-Star!8602 (regTwo!17717 r!23423))) b!2859992))

(assert (= (and b!2859886 (is-Union!8602 (regTwo!17717 r!23423))) b!2859993))

(declare-fun b!2859998 () Bool)

(declare-fun e!1810811 () Bool)

(declare-fun tp!920603 () Bool)

(assert (=> b!2859998 (= e!1810811 (and tp_is_empty!14941 tp!920603))))

(assert (=> b!2859887 (= tp!920559 e!1810811)))

(assert (= (and b!2859887 (is-Cons!34075 (t!233234 prefix!1470))) b!2859998))

(declare-fun b!2860000 () Bool)

(declare-fun e!1810812 () Bool)

(declare-fun tp!920606 () Bool)

(declare-fun tp!920605 () Bool)

(assert (=> b!2860000 (= e!1810812 (and tp!920606 tp!920605))))

(declare-fun b!2860002 () Bool)

(declare-fun tp!920608 () Bool)

(declare-fun tp!920607 () Bool)

(assert (=> b!2860002 (= e!1810812 (and tp!920608 tp!920607))))

(assert (=> b!2859885 (= tp!920558 e!1810812)))

(declare-fun b!2859999 () Bool)

(assert (=> b!2859999 (= e!1810812 tp_is_empty!14941)))

(declare-fun b!2860001 () Bool)

(declare-fun tp!920604 () Bool)

(assert (=> b!2860001 (= e!1810812 tp!920604)))

(assert (= (and b!2859885 (is-ElementMatch!8602 (reg!8931 r!23423))) b!2859999))

(assert (= (and b!2859885 (is-Concat!13923 (reg!8931 r!23423))) b!2860000))

(assert (= (and b!2859885 (is-Star!8602 (reg!8931 r!23423))) b!2860001))

(assert (= (and b!2859885 (is-Union!8602 (reg!8931 r!23423))) b!2860002))

(declare-fun b!2860004 () Bool)

(declare-fun e!1810813 () Bool)

(declare-fun tp!920611 () Bool)

(declare-fun tp!920610 () Bool)

(assert (=> b!2860004 (= e!1810813 (and tp!920611 tp!920610))))

(declare-fun b!2860006 () Bool)

(declare-fun tp!920613 () Bool)

(declare-fun tp!920612 () Bool)

(assert (=> b!2860006 (= e!1810813 (and tp!920613 tp!920612))))

(assert (=> b!2859890 (= tp!920561 e!1810813)))

(declare-fun b!2860003 () Bool)

(assert (=> b!2860003 (= e!1810813 tp_is_empty!14941)))

(declare-fun b!2860005 () Bool)

(declare-fun tp!920609 () Bool)

(assert (=> b!2860005 (= e!1810813 tp!920609)))

(assert (= (and b!2859890 (is-ElementMatch!8602 (regOne!17716 r!23423))) b!2860003))

(assert (= (and b!2859890 (is-Concat!13923 (regOne!17716 r!23423))) b!2860004))

(assert (= (and b!2859890 (is-Star!8602 (regOne!17716 r!23423))) b!2860005))

(assert (= (and b!2859890 (is-Union!8602 (regOne!17716 r!23423))) b!2860006))

(declare-fun b!2860008 () Bool)

(declare-fun e!1810814 () Bool)

(declare-fun tp!920616 () Bool)

(declare-fun tp!920615 () Bool)

(assert (=> b!2860008 (= e!1810814 (and tp!920616 tp!920615))))

(declare-fun b!2860010 () Bool)

(declare-fun tp!920618 () Bool)

(declare-fun tp!920617 () Bool)

(assert (=> b!2860010 (= e!1810814 (and tp!920618 tp!920617))))

(assert (=> b!2859890 (= tp!920562 e!1810814)))

(declare-fun b!2860007 () Bool)

(assert (=> b!2860007 (= e!1810814 tp_is_empty!14941)))

(declare-fun b!2860009 () Bool)

(declare-fun tp!920614 () Bool)

(assert (=> b!2860009 (= e!1810814 tp!920614)))

(assert (= (and b!2859890 (is-ElementMatch!8602 (regTwo!17716 r!23423))) b!2860007))

(assert (= (and b!2859890 (is-Concat!13923 (regTwo!17716 r!23423))) b!2860008))

(assert (= (and b!2859890 (is-Star!8602 (regTwo!17716 r!23423))) b!2860009))

(assert (= (and b!2859890 (is-Union!8602 (regTwo!17716 r!23423))) b!2860010))

(push 1)

(assert (not b!2860004))

(assert (not bm!184408))

(assert (not b!2860002))

(assert (not b!2860001))

(assert (not b!2859993))

(assert (not b!2859988))

(assert (not b!2860005))

(assert (not b!2860000))

(assert (not b!2859974))

(assert (not d!827045))

(assert (not bm!184406))

(assert (not b!2859989))

(assert (not b!2859940))

(assert (not b!2860006))

(assert (not b!2859951))

(assert (not b!2860010))

(assert (not b!2859991))

(assert (not b!2859975))

(assert (not b!2860008))

(assert tp_is_empty!14941)

(assert (not b!2860009))

(assert (not b!2859998))

(assert (not b!2859987))

(assert (not b!2859992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

