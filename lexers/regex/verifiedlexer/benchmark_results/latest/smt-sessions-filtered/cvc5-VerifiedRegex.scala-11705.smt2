; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!660906 () Bool)

(assert start!660906)

(declare-fun b!6839856 () Bool)

(declare-fun res!2792693 () Bool)

(declare-fun e!4125165 () Bool)

(assert (=> b!6839856 (=> (not res!2792693) (not e!4125165))))

(declare-datatypes ((C!33582 0))(
  ( (C!33583 (val!26493 Int)) )
))
(declare-datatypes ((Regex!16656 0))(
  ( (ElementMatch!16656 (c!1273452 C!33582)) (Concat!25501 (regOne!33824 Regex!16656) (regTwo!33824 Regex!16656)) (EmptyExpr!16656) (Star!16656 (reg!16985 Regex!16656)) (EmptyLang!16656) (Union!16656 (regOne!33825 Regex!16656) (regTwo!33825 Regex!16656)) )
))
(declare-datatypes ((List!66267 0))(
  ( (Nil!66143) (Cons!66143 (h!72591 Regex!16656) (t!380010 List!66267)) )
))
(declare-datatypes ((Context!12080 0))(
  ( (Context!12081 (exprs!6540 List!66267)) )
))
(declare-fun z!1189 () (Set Context!12080))

(declare-datatypes ((List!66268 0))(
  ( (Nil!66144) (Cons!66144 (h!72592 Context!12080) (t!380011 List!66268)) )
))
(declare-fun zl!343 () List!66268)

(declare-fun toList!10440 ((Set Context!12080)) List!66268)

(assert (=> b!6839856 (= res!2792693 (= (toList!10440 z!1189) zl!343))))

(declare-fun b!6839857 () Bool)

(declare-fun e!4125167 () Bool)

(assert (=> b!6839857 (= e!4125165 (not e!4125167))))

(declare-fun res!2792688 () Bool)

(assert (=> b!6839857 (=> res!2792688 e!4125167)))

(assert (=> b!6839857 (= res!2792688 (not (is-Cons!66144 zl!343)))))

(declare-fun lt!2455144 () Bool)

(declare-fun r!7292 () Regex!16656)

(declare-datatypes ((List!66269 0))(
  ( (Nil!66145) (Cons!66145 (h!72593 C!33582) (t!380012 List!66269)) )
))
(declare-fun s!2326 () List!66269)

(declare-fun matchRSpec!3757 (Regex!16656 List!66269) Bool)

(assert (=> b!6839857 (= lt!2455144 (matchRSpec!3757 r!7292 s!2326))))

(declare-fun matchR!8839 (Regex!16656 List!66269) Bool)

(assert (=> b!6839857 (= lt!2455144 (matchR!8839 r!7292 s!2326))))

(declare-datatypes ((Unit!160011 0))(
  ( (Unit!160012) )
))
(declare-fun lt!2455143 () Unit!160011)

(declare-fun mainMatchTheorem!3757 (Regex!16656 List!66269) Unit!160011)

(assert (=> b!6839857 (= lt!2455143 (mainMatchTheorem!3757 r!7292 s!2326))))

(declare-fun setIsEmpty!46982 () Bool)

(declare-fun setRes!46982 () Bool)

(assert (=> setIsEmpty!46982 setRes!46982))

(declare-fun b!6839858 () Bool)

(declare-fun e!4125169 () Bool)

(declare-fun tp!1872862 () Bool)

(declare-fun tp!1872857 () Bool)

(assert (=> b!6839858 (= e!4125169 (and tp!1872862 tp!1872857))))

(declare-fun tp!1872861 () Bool)

(declare-fun setNonEmpty!46982 () Bool)

(declare-fun e!4125166 () Bool)

(declare-fun setElem!46982 () Context!12080)

(declare-fun inv!84888 (Context!12080) Bool)

(assert (=> setNonEmpty!46982 (= setRes!46982 (and tp!1872861 (inv!84888 setElem!46982) e!4125166))))

(declare-fun setRest!46982 () (Set Context!12080))

(assert (=> setNonEmpty!46982 (= z!1189 (set.union (set.insert setElem!46982 (as set.empty (Set Context!12080))) setRest!46982))))

(declare-fun res!2792690 () Bool)

(assert (=> start!660906 (=> (not res!2792690) (not e!4125165))))

(declare-fun validRegex!8392 (Regex!16656) Bool)

(assert (=> start!660906 (= res!2792690 (validRegex!8392 r!7292))))

(assert (=> start!660906 e!4125165))

(assert (=> start!660906 e!4125169))

(declare-fun condSetEmpty!46982 () Bool)

(assert (=> start!660906 (= condSetEmpty!46982 (= z!1189 (as set.empty (Set Context!12080))))))

(assert (=> start!660906 setRes!46982))

(declare-fun e!4125170 () Bool)

(assert (=> start!660906 e!4125170))

(declare-fun e!4125171 () Bool)

(assert (=> start!660906 e!4125171))

(declare-fun b!6839859 () Bool)

(declare-fun tp!1872865 () Bool)

(declare-fun tp!1872863 () Bool)

(assert (=> b!6839859 (= e!4125169 (and tp!1872865 tp!1872863))))

(declare-fun b!6839860 () Bool)

(declare-fun res!2792689 () Bool)

(assert (=> b!6839860 (=> (not res!2792689) (not e!4125165))))

(declare-fun unfocusZipper!2398 (List!66268) Regex!16656)

(assert (=> b!6839860 (= res!2792689 (= r!7292 (unfocusZipper!2398 zl!343)))))

(declare-fun b!6839861 () Bool)

(declare-fun tp_is_empty!42565 () Bool)

(declare-fun tp!1872864 () Bool)

(assert (=> b!6839861 (= e!4125171 (and tp_is_empty!42565 tp!1872864))))

(declare-fun b!6839862 () Bool)

(declare-fun lt!2455145 () Bool)

(assert (=> b!6839862 (= e!4125167 (= lt!2455144 lt!2455145))))

(declare-fun isEmpty!38533 (List!66269) Bool)

(assert (=> b!6839862 (= lt!2455145 (isEmpty!38533 s!2326))))

(declare-fun matchZipper!2640 ((Set Context!12080) List!66269) Bool)

(assert (=> b!6839862 (= lt!2455145 (matchZipper!2640 z!1189 s!2326))))

(declare-fun lt!2455146 () Unit!160011)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!7 ((Set Context!12080) List!66269) Unit!160011)

(assert (=> b!6839862 (= lt!2455146 (lemmaZipperOfEmptyContextMatchesEmptyString!7 z!1189 s!2326))))

(declare-fun b!6839863 () Bool)

(declare-fun tp!1872860 () Bool)

(assert (=> b!6839863 (= e!4125166 tp!1872860)))

(declare-fun tp!1872859 () Bool)

(declare-fun e!4125168 () Bool)

(declare-fun b!6839864 () Bool)

(assert (=> b!6839864 (= e!4125170 (and (inv!84888 (h!72592 zl!343)) e!4125168 tp!1872859))))

(declare-fun b!6839865 () Bool)

(declare-fun res!2792687 () Bool)

(assert (=> b!6839865 (=> res!2792687 e!4125167)))

(declare-fun generalisedConcat!2253 (List!66267) Regex!16656)

(assert (=> b!6839865 (= res!2792687 (not (= r!7292 (generalisedConcat!2253 (exprs!6540 (h!72592 zl!343))))))))

(declare-fun b!6839866 () Bool)

(assert (=> b!6839866 (= e!4125169 tp_is_empty!42565)))

(declare-fun b!6839867 () Bool)

(declare-fun res!2792692 () Bool)

(assert (=> b!6839867 (=> res!2792692 e!4125167)))

(assert (=> b!6839867 (= res!2792692 (or (is-Cons!66143 (exprs!6540 (h!72592 zl!343))) (not (= r!7292 EmptyExpr!16656)) (not (= z!1189 (set.singleton (Context!12081 Nil!66143))))))))

(declare-fun b!6839868 () Bool)

(declare-fun res!2792691 () Bool)

(assert (=> b!6839868 (=> res!2792691 e!4125167)))

(declare-fun isEmpty!38534 (List!66268) Bool)

(assert (=> b!6839868 (= res!2792691 (not (isEmpty!38534 (t!380011 zl!343))))))

(declare-fun b!6839869 () Bool)

(declare-fun tp!1872858 () Bool)

(assert (=> b!6839869 (= e!4125168 tp!1872858)))

(declare-fun b!6839870 () Bool)

(declare-fun tp!1872856 () Bool)

(assert (=> b!6839870 (= e!4125169 tp!1872856)))

(assert (= (and start!660906 res!2792690) b!6839856))

(assert (= (and b!6839856 res!2792693) b!6839860))

(assert (= (and b!6839860 res!2792689) b!6839857))

(assert (= (and b!6839857 (not res!2792688)) b!6839868))

(assert (= (and b!6839868 (not res!2792691)) b!6839865))

(assert (= (and b!6839865 (not res!2792687)) b!6839867))

(assert (= (and b!6839867 (not res!2792692)) b!6839862))

(assert (= (and start!660906 (is-ElementMatch!16656 r!7292)) b!6839866))

(assert (= (and start!660906 (is-Concat!25501 r!7292)) b!6839858))

(assert (= (and start!660906 (is-Star!16656 r!7292)) b!6839870))

(assert (= (and start!660906 (is-Union!16656 r!7292)) b!6839859))

(assert (= (and start!660906 condSetEmpty!46982) setIsEmpty!46982))

(assert (= (and start!660906 (not condSetEmpty!46982)) setNonEmpty!46982))

(assert (= setNonEmpty!46982 b!6839863))

(assert (= b!6839864 b!6839869))

(assert (= (and start!660906 (is-Cons!66144 zl!343)) b!6839864))

(assert (= (and start!660906 (is-Cons!66145 s!2326)) b!6839861))

(declare-fun m!7583428 () Bool)

(assert (=> b!6839860 m!7583428))

(declare-fun m!7583430 () Bool)

(assert (=> b!6839856 m!7583430))

(declare-fun m!7583432 () Bool)

(assert (=> b!6839862 m!7583432))

(declare-fun m!7583434 () Bool)

(assert (=> b!6839862 m!7583434))

(declare-fun m!7583436 () Bool)

(assert (=> b!6839862 m!7583436))

(declare-fun m!7583438 () Bool)

(assert (=> start!660906 m!7583438))

(declare-fun m!7583440 () Bool)

(assert (=> b!6839865 m!7583440))

(declare-fun m!7583442 () Bool)

(assert (=> b!6839857 m!7583442))

(declare-fun m!7583444 () Bool)

(assert (=> b!6839857 m!7583444))

(declare-fun m!7583446 () Bool)

(assert (=> b!6839857 m!7583446))

(declare-fun m!7583448 () Bool)

(assert (=> b!6839868 m!7583448))

(declare-fun m!7583450 () Bool)

(assert (=> setNonEmpty!46982 m!7583450))

(declare-fun m!7583452 () Bool)

(assert (=> b!6839864 m!7583452))

(push 1)

(assert (not b!6839857))

(assert (not b!6839860))

(assert (not setNonEmpty!46982))

(assert (not b!6839863))

(assert (not b!6839865))

(assert (not b!6839870))

(assert (not b!6839869))

(assert (not b!6839868))

(assert (not b!6839859))

(assert (not start!660906))

(assert (not b!6839862))

(assert tp_is_empty!42565)

(assert (not b!6839856))

(assert (not b!6839864))

(assert (not b!6839858))

(assert (not b!6839861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2150914 () Bool)

(assert (=> d!2150914 (= (isEmpty!38534 (t!380011 zl!343)) (is-Nil!66144 (t!380011 zl!343)))))

(assert (=> b!6839868 d!2150914))

(declare-fun c!1273459 () Bool)

(declare-fun call!622944 () Bool)

(declare-fun bm!622939 () Bool)

(declare-fun c!1273458 () Bool)

(assert (=> bm!622939 (= call!622944 (validRegex!8392 (ite c!1273459 (reg!16985 r!7292) (ite c!1273458 (regOne!33825 r!7292) (regOne!33824 r!7292)))))))

(declare-fun bm!622940 () Bool)

(declare-fun call!622946 () Bool)

(assert (=> bm!622940 (= call!622946 call!622944)))

(declare-fun b!6839934 () Bool)

(declare-fun e!4125209 () Bool)

(declare-fun call!622945 () Bool)

(assert (=> b!6839934 (= e!4125209 call!622945)))

(declare-fun bm!622941 () Bool)

(assert (=> bm!622941 (= call!622945 (validRegex!8392 (ite c!1273458 (regTwo!33825 r!7292) (regTwo!33824 r!7292))))))

(declare-fun b!6839935 () Bool)

(declare-fun e!4125208 () Bool)

(assert (=> b!6839935 (= e!4125208 e!4125209)))

(declare-fun res!2792726 () Bool)

(assert (=> b!6839935 (=> (not res!2792726) (not e!4125209))))

(assert (=> b!6839935 (= res!2792726 call!622946)))

(declare-fun b!6839936 () Bool)

(declare-fun res!2792729 () Bool)

(assert (=> b!6839936 (=> res!2792729 e!4125208)))

(assert (=> b!6839936 (= res!2792729 (not (is-Concat!25501 r!7292)))))

(declare-fun e!4125212 () Bool)

(assert (=> b!6839936 (= e!4125212 e!4125208)))

(declare-fun b!6839937 () Bool)

(declare-fun e!4125213 () Bool)

(declare-fun e!4125211 () Bool)

(assert (=> b!6839937 (= e!4125213 e!4125211)))

(assert (=> b!6839937 (= c!1273459 (is-Star!16656 r!7292))))

(declare-fun b!6839938 () Bool)

(declare-fun e!4125207 () Bool)

(assert (=> b!6839938 (= e!4125207 call!622944)))

(declare-fun b!6839939 () Bool)

(assert (=> b!6839939 (= e!4125211 e!4125212)))

(assert (=> b!6839939 (= c!1273458 (is-Union!16656 r!7292))))

(declare-fun d!2150916 () Bool)

(declare-fun res!2792727 () Bool)

(assert (=> d!2150916 (=> res!2792727 e!4125213)))

(assert (=> d!2150916 (= res!2792727 (is-ElementMatch!16656 r!7292))))

(assert (=> d!2150916 (= (validRegex!8392 r!7292) e!4125213)))

(declare-fun b!6839940 () Bool)

(declare-fun e!4125210 () Bool)

(assert (=> b!6839940 (= e!4125210 call!622945)))

(declare-fun b!6839941 () Bool)

(declare-fun res!2792725 () Bool)

(assert (=> b!6839941 (=> (not res!2792725) (not e!4125210))))

(assert (=> b!6839941 (= res!2792725 call!622946)))

(assert (=> b!6839941 (= e!4125212 e!4125210)))

(declare-fun b!6839942 () Bool)

(assert (=> b!6839942 (= e!4125211 e!4125207)))

(declare-fun res!2792728 () Bool)

(declare-fun nullable!6623 (Regex!16656) Bool)

(assert (=> b!6839942 (= res!2792728 (not (nullable!6623 (reg!16985 r!7292))))))

(assert (=> b!6839942 (=> (not res!2792728) (not e!4125207))))

(assert (= (and d!2150916 (not res!2792727)) b!6839937))

(assert (= (and b!6839937 c!1273459) b!6839942))

(assert (= (and b!6839937 (not c!1273459)) b!6839939))

(assert (= (and b!6839942 res!2792728) b!6839938))

(assert (= (and b!6839939 c!1273458) b!6839941))

(assert (= (and b!6839939 (not c!1273458)) b!6839936))

(assert (= (and b!6839941 res!2792725) b!6839940))

(assert (= (and b!6839936 (not res!2792729)) b!6839935))

(assert (= (and b!6839935 res!2792726) b!6839934))

(assert (= (or b!6839940 b!6839934) bm!622941))

(assert (= (or b!6839941 b!6839935) bm!622940))

(assert (= (or b!6839938 bm!622940) bm!622939))

(declare-fun m!7583480 () Bool)

(assert (=> bm!622939 m!7583480))

(declare-fun m!7583482 () Bool)

(assert (=> bm!622941 m!7583482))

(declare-fun m!7583484 () Bool)

(assert (=> b!6839942 m!7583484))

(assert (=> start!660906 d!2150916))

(declare-fun d!2150922 () Bool)

(assert (=> d!2150922 (= (isEmpty!38533 s!2326) (is-Nil!66145 s!2326))))

(assert (=> b!6839862 d!2150922))

(declare-fun d!2150924 () Bool)

(declare-fun c!1273464 () Bool)

(assert (=> d!2150924 (= c!1273464 (isEmpty!38533 s!2326))))

(declare-fun e!4125218 () Bool)

(assert (=> d!2150924 (= (matchZipper!2640 z!1189 s!2326) e!4125218)))

(declare-fun b!6839951 () Bool)

(declare-fun nullableZipper!2349 ((Set Context!12080)) Bool)

(assert (=> b!6839951 (= e!4125218 (nullableZipper!2349 z!1189))))

(declare-fun b!6839952 () Bool)

(declare-fun derivationStepZipper!2598 ((Set Context!12080) C!33582) (Set Context!12080))

(declare-fun head!13699 (List!66269) C!33582)

(declare-fun tail!12784 (List!66269) List!66269)

(assert (=> b!6839952 (= e!4125218 (matchZipper!2640 (derivationStepZipper!2598 z!1189 (head!13699 s!2326)) (tail!12784 s!2326)))))

(assert (= (and d!2150924 c!1273464) b!6839951))

(assert (= (and d!2150924 (not c!1273464)) b!6839952))

(assert (=> d!2150924 m!7583432))

(declare-fun m!7583486 () Bool)

(assert (=> b!6839951 m!7583486))

(declare-fun m!7583488 () Bool)

(assert (=> b!6839952 m!7583488))

(assert (=> b!6839952 m!7583488))

(declare-fun m!7583490 () Bool)

(assert (=> b!6839952 m!7583490))

(declare-fun m!7583492 () Bool)

(assert (=> b!6839952 m!7583492))

(assert (=> b!6839952 m!7583490))

(assert (=> b!6839952 m!7583492))

(declare-fun m!7583494 () Bool)

(assert (=> b!6839952 m!7583494))

(assert (=> b!6839862 d!2150924))

(declare-fun d!2150926 () Bool)

(assert (=> d!2150926 (= (matchZipper!2640 z!1189 s!2326) (isEmpty!38533 s!2326))))

(declare-fun lt!2455161 () Unit!160011)

(declare-fun choose!51002 ((Set Context!12080) List!66269) Unit!160011)

(assert (=> d!2150926 (= lt!2455161 (choose!51002 z!1189 s!2326))))

(assert (=> d!2150926 (= z!1189 (set.singleton (Context!12081 Nil!66143)))))

(assert (=> d!2150926 (= (lemmaZipperOfEmptyContextMatchesEmptyString!7 z!1189 s!2326) lt!2455161)))

(declare-fun bs!1829088 () Bool)

(assert (= bs!1829088 d!2150926))

(assert (=> bs!1829088 m!7583434))

(assert (=> bs!1829088 m!7583432))

(declare-fun m!7583506 () Bool)

(assert (=> bs!1829088 m!7583506))

(assert (=> b!6839862 d!2150926))

(declare-fun d!2150930 () Bool)

(declare-fun lt!2455164 () Regex!16656)

(assert (=> d!2150930 (validRegex!8392 lt!2455164)))

(declare-fun generalisedUnion!2500 (List!66267) Regex!16656)

(declare-fun unfocusZipperList!2077 (List!66268) List!66267)

(assert (=> d!2150930 (= lt!2455164 (generalisedUnion!2500 (unfocusZipperList!2077 zl!343)))))

(assert (=> d!2150930 (= (unfocusZipper!2398 zl!343) lt!2455164)))

(declare-fun bs!1829089 () Bool)

(assert (= bs!1829089 d!2150930))

(declare-fun m!7583508 () Bool)

(assert (=> bs!1829089 m!7583508))

(declare-fun m!7583510 () Bool)

(assert (=> bs!1829089 m!7583510))

(assert (=> bs!1829089 m!7583510))

(declare-fun m!7583512 () Bool)

(assert (=> bs!1829089 m!7583512))

(assert (=> b!6839860 d!2150930))

(declare-fun b!6839991 () Bool)

(assert (=> b!6839991 true))

(assert (=> b!6839991 true))

(declare-fun bs!1829092 () Bool)

(declare-fun b!6839995 () Bool)

(assert (= bs!1829092 (and b!6839995 b!6839991)))

(declare-fun lambda!386721 () Int)

(declare-fun lambda!386720 () Int)

(assert (=> bs!1829092 (not (= lambda!386721 lambda!386720))))

(assert (=> b!6839995 true))

(assert (=> b!6839995 true))

(declare-fun b!6839987 () Bool)

(declare-fun e!4125244 () Bool)

(declare-fun e!4125241 () Bool)

(assert (=> b!6839987 (= e!4125244 e!4125241)))

(declare-fun res!2792746 () Bool)

(assert (=> b!6839987 (= res!2792746 (not (is-EmptyLang!16656 r!7292)))))

(assert (=> b!6839987 (=> (not res!2792746) (not e!4125241))))

(declare-fun b!6839988 () Bool)

(declare-fun e!4125239 () Bool)

(declare-fun e!4125243 () Bool)

(assert (=> b!6839988 (= e!4125239 e!4125243)))

(declare-fun res!2792747 () Bool)

(assert (=> b!6839988 (= res!2792747 (matchRSpec!3757 (regOne!33825 r!7292) s!2326))))

(assert (=> b!6839988 (=> res!2792747 e!4125243)))

(declare-fun b!6839989 () Bool)

(assert (=> b!6839989 (= e!4125243 (matchRSpec!3757 (regTwo!33825 r!7292) s!2326))))

(declare-fun b!6839990 () Bool)

(declare-fun res!2792748 () Bool)

(declare-fun e!4125238 () Bool)

(assert (=> b!6839990 (=> res!2792748 e!4125238)))

(declare-fun call!622951 () Bool)

(assert (=> b!6839990 (= res!2792748 call!622951)))

(declare-fun e!4125242 () Bool)

(assert (=> b!6839990 (= e!4125242 e!4125238)))

(declare-fun call!622952 () Bool)

(assert (=> b!6839991 (= e!4125238 call!622952)))

(declare-fun b!6839992 () Bool)

(assert (=> b!6839992 (= e!4125244 call!622951)))

(declare-fun b!6839993 () Bool)

(assert (=> b!6839993 (= e!4125239 e!4125242)))

(declare-fun c!1273477 () Bool)

(assert (=> b!6839993 (= c!1273477 (is-Star!16656 r!7292))))

(declare-fun bm!622946 () Bool)

(declare-fun Exists!3724 (Int) Bool)

(assert (=> bm!622946 (= call!622952 (Exists!3724 (ite c!1273477 lambda!386720 lambda!386721)))))

(declare-fun bm!622947 () Bool)

(assert (=> bm!622947 (= call!622951 (isEmpty!38533 s!2326))))

(assert (=> b!6839995 (= e!4125242 call!622952)))

(declare-fun b!6839996 () Bool)

(declare-fun e!4125240 () Bool)

(assert (=> b!6839996 (= e!4125240 (= s!2326 (Cons!66145 (c!1273452 r!7292) Nil!66145)))))

(declare-fun b!6839997 () Bool)

(declare-fun c!1273476 () Bool)

(assert (=> b!6839997 (= c!1273476 (is-ElementMatch!16656 r!7292))))

(assert (=> b!6839997 (= e!4125241 e!4125240)))

(declare-fun b!6839994 () Bool)

(declare-fun c!1273474 () Bool)

(assert (=> b!6839994 (= c!1273474 (is-Union!16656 r!7292))))

(assert (=> b!6839994 (= e!4125240 e!4125239)))

(declare-fun d!2150932 () Bool)

(declare-fun c!1273475 () Bool)

(assert (=> d!2150932 (= c!1273475 (is-EmptyExpr!16656 r!7292))))

(assert (=> d!2150932 (= (matchRSpec!3757 r!7292 s!2326) e!4125244)))

(assert (= (and d!2150932 c!1273475) b!6839992))

(assert (= (and d!2150932 (not c!1273475)) b!6839987))

(assert (= (and b!6839987 res!2792746) b!6839997))

(assert (= (and b!6839997 c!1273476) b!6839996))

(assert (= (and b!6839997 (not c!1273476)) b!6839994))

(assert (= (and b!6839994 c!1273474) b!6839988))

(assert (= (and b!6839994 (not c!1273474)) b!6839993))

(assert (= (and b!6839988 (not res!2792747)) b!6839989))

(assert (= (and b!6839993 c!1273477) b!6839990))

(assert (= (and b!6839993 (not c!1273477)) b!6839995))

(assert (= (and b!6839990 (not res!2792748)) b!6839991))

(assert (= (or b!6839991 b!6839995) bm!622946))

(assert (= (or b!6839992 b!6839990) bm!622947))

(declare-fun m!7583522 () Bool)

(assert (=> b!6839988 m!7583522))

(declare-fun m!7583524 () Bool)

(assert (=> b!6839989 m!7583524))

(declare-fun m!7583526 () Bool)

(assert (=> bm!622946 m!7583526))

(assert (=> bm!622947 m!7583432))

(assert (=> b!6839857 d!2150932))

(declare-fun b!6840048 () Bool)

(declare-fun e!4125273 () Bool)

(assert (=> b!6840048 (= e!4125273 (= (head!13699 s!2326) (c!1273452 r!7292)))))

(declare-fun b!6840049 () Bool)

(declare-fun res!2792778 () Bool)

(declare-fun e!4125275 () Bool)

(assert (=> b!6840049 (=> res!2792778 e!4125275)))

(assert (=> b!6840049 (= res!2792778 e!4125273)))

(declare-fun res!2792776 () Bool)

(assert (=> b!6840049 (=> (not res!2792776) (not e!4125273))))

(declare-fun lt!2455173 () Bool)

(assert (=> b!6840049 (= res!2792776 lt!2455173)))

(declare-fun b!6840050 () Bool)

(declare-fun e!4125274 () Bool)

(declare-fun call!622961 () Bool)

(assert (=> b!6840050 (= e!4125274 (= lt!2455173 call!622961))))

(declare-fun b!6840051 () Bool)

(declare-fun e!4125277 () Bool)

(assert (=> b!6840051 (= e!4125275 e!4125277)))

(declare-fun res!2792777 () Bool)

(assert (=> b!6840051 (=> (not res!2792777) (not e!4125277))))

(assert (=> b!6840051 (= res!2792777 (not lt!2455173))))

(declare-fun b!6840052 () Bool)

(declare-fun res!2792775 () Bool)

(assert (=> b!6840052 (=> res!2792775 e!4125275)))

(assert (=> b!6840052 (= res!2792775 (not (is-ElementMatch!16656 r!7292)))))

(declare-fun e!4125276 () Bool)

(assert (=> b!6840052 (= e!4125276 e!4125275)))

(declare-fun b!6840053 () Bool)

(declare-fun res!2792782 () Bool)

(assert (=> b!6840053 (=> (not res!2792782) (not e!4125273))))

(assert (=> b!6840053 (= res!2792782 (not call!622961))))

(declare-fun b!6840054 () Bool)

(declare-fun e!4125279 () Bool)

(assert (=> b!6840054 (= e!4125277 e!4125279)))

(declare-fun res!2792781 () Bool)

(assert (=> b!6840054 (=> res!2792781 e!4125279)))

(assert (=> b!6840054 (= res!2792781 call!622961)))

(declare-fun d!2150940 () Bool)

(assert (=> d!2150940 e!4125274))

(declare-fun c!1273490 () Bool)

(assert (=> d!2150940 (= c!1273490 (is-EmptyExpr!16656 r!7292))))

(declare-fun e!4125278 () Bool)

(assert (=> d!2150940 (= lt!2455173 e!4125278)))

(declare-fun c!1273488 () Bool)

(assert (=> d!2150940 (= c!1273488 (isEmpty!38533 s!2326))))

(assert (=> d!2150940 (validRegex!8392 r!7292)))

(assert (=> d!2150940 (= (matchR!8839 r!7292 s!2326) lt!2455173)))

(declare-fun bm!622956 () Bool)

(assert (=> bm!622956 (= call!622961 (isEmpty!38533 s!2326))))

(declare-fun b!6840055 () Bool)

(assert (=> b!6840055 (= e!4125278 (nullable!6623 r!7292))))

(declare-fun b!6840056 () Bool)

(declare-fun res!2792780 () Bool)

(assert (=> b!6840056 (=> (not res!2792780) (not e!4125273))))

(assert (=> b!6840056 (= res!2792780 (isEmpty!38533 (tail!12784 s!2326)))))

(declare-fun b!6840057 () Bool)

(declare-fun derivativeStep!5308 (Regex!16656 C!33582) Regex!16656)

(assert (=> b!6840057 (= e!4125278 (matchR!8839 (derivativeStep!5308 r!7292 (head!13699 s!2326)) (tail!12784 s!2326)))))

(declare-fun b!6840058 () Bool)

(assert (=> b!6840058 (= e!4125274 e!4125276)))

(declare-fun c!1273489 () Bool)

(assert (=> b!6840058 (= c!1273489 (is-EmptyLang!16656 r!7292))))

(declare-fun b!6840059 () Bool)

(assert (=> b!6840059 (= e!4125276 (not lt!2455173))))

(declare-fun b!6840060 () Bool)

(assert (=> b!6840060 (= e!4125279 (not (= (head!13699 s!2326) (c!1273452 r!7292))))))

(declare-fun b!6840061 () Bool)

(declare-fun res!2792779 () Bool)

(assert (=> b!6840061 (=> res!2792779 e!4125279)))

(assert (=> b!6840061 (= res!2792779 (not (isEmpty!38533 (tail!12784 s!2326))))))

(assert (= (and d!2150940 c!1273488) b!6840055))

(assert (= (and d!2150940 (not c!1273488)) b!6840057))

(assert (= (and d!2150940 c!1273490) b!6840050))

(assert (= (and d!2150940 (not c!1273490)) b!6840058))

(assert (= (and b!6840058 c!1273489) b!6840059))

(assert (= (and b!6840058 (not c!1273489)) b!6840052))

(assert (= (and b!6840052 (not res!2792775)) b!6840049))

(assert (= (and b!6840049 res!2792776) b!6840053))

(assert (= (and b!6840053 res!2792782) b!6840056))

(assert (= (and b!6840056 res!2792780) b!6840048))

(assert (= (and b!6840049 (not res!2792778)) b!6840051))

(assert (= (and b!6840051 res!2792777) b!6840054))

(assert (= (and b!6840054 (not res!2792781)) b!6840061))

(assert (= (and b!6840061 (not res!2792779)) b!6840060))

(assert (= (or b!6840050 b!6840053 b!6840054) bm!622956))

(assert (=> b!6840056 m!7583492))

(assert (=> b!6840056 m!7583492))

(declare-fun m!7583528 () Bool)

(assert (=> b!6840056 m!7583528))

(assert (=> b!6840060 m!7583488))

(declare-fun m!7583530 () Bool)

(assert (=> b!6840055 m!7583530))

(assert (=> b!6840048 m!7583488))

(assert (=> b!6840061 m!7583492))

(assert (=> b!6840061 m!7583492))

(assert (=> b!6840061 m!7583528))

(assert (=> bm!622956 m!7583432))

(assert (=> b!6840057 m!7583488))

(assert (=> b!6840057 m!7583488))

(declare-fun m!7583532 () Bool)

(assert (=> b!6840057 m!7583532))

(assert (=> b!6840057 m!7583492))

(assert (=> b!6840057 m!7583532))

(assert (=> b!6840057 m!7583492))

(declare-fun m!7583534 () Bool)

(assert (=> b!6840057 m!7583534))

(assert (=> d!2150940 m!7583432))

(assert (=> d!2150940 m!7583438))

(assert (=> b!6839857 d!2150940))

(declare-fun d!2150942 () Bool)

(assert (=> d!2150942 (= (matchR!8839 r!7292 s!2326) (matchRSpec!3757 r!7292 s!2326))))

(declare-fun lt!2455176 () Unit!160011)

(declare-fun choose!51003 (Regex!16656 List!66269) Unit!160011)

(assert (=> d!2150942 (= lt!2455176 (choose!51003 r!7292 s!2326))))

(assert (=> d!2150942 (validRegex!8392 r!7292)))

(assert (=> d!2150942 (= (mainMatchTheorem!3757 r!7292 s!2326) lt!2455176)))

(declare-fun bs!1829093 () Bool)

(assert (= bs!1829093 d!2150942))

(assert (=> bs!1829093 m!7583444))

(assert (=> bs!1829093 m!7583442))

(declare-fun m!7583539 () Bool)

(assert (=> bs!1829093 m!7583539))

(assert (=> bs!1829093 m!7583438))

(assert (=> b!6839857 d!2150942))

(declare-fun d!2150944 () Bool)

(declare-fun e!4125289 () Bool)

(assert (=> d!2150944 e!4125289))

(declare-fun res!2792790 () Bool)

(assert (=> d!2150944 (=> (not res!2792790) (not e!4125289))))

(declare-fun lt!2455179 () List!66268)

(declare-fun noDuplicate!2429 (List!66268) Bool)

(assert (=> d!2150944 (= res!2792790 (noDuplicate!2429 lt!2455179))))

(declare-fun choose!51004 ((Set Context!12080)) List!66268)

(assert (=> d!2150944 (= lt!2455179 (choose!51004 z!1189))))

(assert (=> d!2150944 (= (toList!10440 z!1189) lt!2455179)))

(declare-fun b!6840073 () Bool)

(declare-fun content!12964 (List!66268) (Set Context!12080))

(assert (=> b!6840073 (= e!4125289 (= (content!12964 lt!2455179) z!1189))))

(assert (= (and d!2150944 res!2792790) b!6840073))

(declare-fun m!7583544 () Bool)

(assert (=> d!2150944 m!7583544))

(declare-fun m!7583546 () Bool)

(assert (=> d!2150944 m!7583546))

(declare-fun m!7583548 () Bool)

(assert (=> b!6840073 m!7583548))

(assert (=> b!6839856 d!2150944))

(declare-fun b!6840097 () Bool)

(declare-fun e!4125305 () Regex!16656)

(declare-fun e!4125307 () Regex!16656)

(assert (=> b!6840097 (= e!4125305 e!4125307)))

(declare-fun c!1273504 () Bool)

(assert (=> b!6840097 (= c!1273504 (is-Cons!66143 (exprs!6540 (h!72592 zl!343))))))

(declare-fun b!6840098 () Bool)

(declare-fun e!4125310 () Bool)

(declare-fun lt!2455185 () Regex!16656)

(declare-fun isEmptyExpr!2002 (Regex!16656) Bool)

(assert (=> b!6840098 (= e!4125310 (isEmptyExpr!2002 lt!2455185))))

(declare-fun b!6840099 () Bool)

(declare-fun e!4125309 () Bool)

(assert (=> b!6840099 (= e!4125309 e!4125310)))

(declare-fun c!1273502 () Bool)

(declare-fun isEmpty!38537 (List!66267) Bool)

(assert (=> b!6840099 (= c!1273502 (isEmpty!38537 (exprs!6540 (h!72592 zl!343))))))

(declare-fun b!6840100 () Bool)

(assert (=> b!6840100 (= e!4125307 (Concat!25501 (h!72591 (exprs!6540 (h!72592 zl!343))) (generalisedConcat!2253 (t!380010 (exprs!6540 (h!72592 zl!343))))))))

(declare-fun b!6840101 () Bool)

(assert (=> b!6840101 (= e!4125307 EmptyExpr!16656)))

(declare-fun b!6840102 () Bool)

(declare-fun e!4125308 () Bool)

(declare-fun isConcat!1525 (Regex!16656) Bool)

(assert (=> b!6840102 (= e!4125308 (isConcat!1525 lt!2455185))))

(declare-fun b!6840103 () Bool)

(assert (=> b!6840103 (= e!4125310 e!4125308)))

(declare-fun c!1273503 () Bool)

(declare-fun tail!12785 (List!66267) List!66267)

(assert (=> b!6840103 (= c!1273503 (isEmpty!38537 (tail!12785 (exprs!6540 (h!72592 zl!343)))))))

(declare-fun d!2150948 () Bool)

(assert (=> d!2150948 e!4125309))

(declare-fun res!2792798 () Bool)

(assert (=> d!2150948 (=> (not res!2792798) (not e!4125309))))

(assert (=> d!2150948 (= res!2792798 (validRegex!8392 lt!2455185))))

(assert (=> d!2150948 (= lt!2455185 e!4125305)))

(declare-fun c!1273501 () Bool)

(declare-fun e!4125306 () Bool)

(assert (=> d!2150948 (= c!1273501 e!4125306)))

(declare-fun res!2792799 () Bool)

(assert (=> d!2150948 (=> (not res!2792799) (not e!4125306))))

(assert (=> d!2150948 (= res!2792799 (is-Cons!66143 (exprs!6540 (h!72592 zl!343))))))

(declare-fun lambda!386724 () Int)

(declare-fun forall!15836 (List!66267 Int) Bool)

(assert (=> d!2150948 (forall!15836 (exprs!6540 (h!72592 zl!343)) lambda!386724)))

(assert (=> d!2150948 (= (generalisedConcat!2253 (exprs!6540 (h!72592 zl!343))) lt!2455185)))

(declare-fun b!6840104 () Bool)

(assert (=> b!6840104 (= e!4125305 (h!72591 (exprs!6540 (h!72592 zl!343))))))

(declare-fun b!6840105 () Bool)

(assert (=> b!6840105 (= e!4125306 (isEmpty!38537 (t!380010 (exprs!6540 (h!72592 zl!343)))))))

(declare-fun b!6840106 () Bool)

(declare-fun head!13700 (List!66267) Regex!16656)

(assert (=> b!6840106 (= e!4125308 (= lt!2455185 (head!13700 (exprs!6540 (h!72592 zl!343)))))))

(assert (= (and d!2150948 res!2792799) b!6840105))

(assert (= (and d!2150948 c!1273501) b!6840104))

(assert (= (and d!2150948 (not c!1273501)) b!6840097))

(assert (= (and b!6840097 c!1273504) b!6840100))

(assert (= (and b!6840097 (not c!1273504)) b!6840101))

(assert (= (and d!2150948 res!2792798) b!6840099))

(assert (= (and b!6840099 c!1273502) b!6840098))

(assert (= (and b!6840099 (not c!1273502)) b!6840103))

(assert (= (and b!6840103 c!1273503) b!6840106))

(assert (= (and b!6840103 (not c!1273503)) b!6840102))

(declare-fun m!7583556 () Bool)

(assert (=> b!6840105 m!7583556))

(declare-fun m!7583558 () Bool)

(assert (=> b!6840106 m!7583558))

(declare-fun m!7583560 () Bool)

(assert (=> b!6840099 m!7583560))

(declare-fun m!7583562 () Bool)

(assert (=> b!6840100 m!7583562))

(declare-fun m!7583564 () Bool)

(assert (=> b!6840102 m!7583564))

(declare-fun m!7583566 () Bool)

(assert (=> d!2150948 m!7583566))

(declare-fun m!7583568 () Bool)

(assert (=> d!2150948 m!7583568))

(declare-fun m!7583570 () Bool)

(assert (=> b!6840103 m!7583570))

(assert (=> b!6840103 m!7583570))

(declare-fun m!7583572 () Bool)

(assert (=> b!6840103 m!7583572))

(declare-fun m!7583574 () Bool)

(assert (=> b!6840098 m!7583574))

(assert (=> b!6839865 d!2150948))

(declare-fun bs!1829094 () Bool)

(declare-fun d!2150952 () Bool)

(assert (= bs!1829094 (and d!2150952 d!2150948)))

(declare-fun lambda!386727 () Int)

(assert (=> bs!1829094 (= lambda!386727 lambda!386724)))

(assert (=> d!2150952 (= (inv!84888 (h!72592 zl!343)) (forall!15836 (exprs!6540 (h!72592 zl!343)) lambda!386727))))

(declare-fun bs!1829095 () Bool)

(assert (= bs!1829095 d!2150952))

(declare-fun m!7583576 () Bool)

(assert (=> bs!1829095 m!7583576))

(assert (=> b!6839864 d!2150952))

(declare-fun bs!1829096 () Bool)

(declare-fun d!2150954 () Bool)

(assert (= bs!1829096 (and d!2150954 d!2150948)))

(declare-fun lambda!386728 () Int)

(assert (=> bs!1829096 (= lambda!386728 lambda!386724)))

(declare-fun bs!1829097 () Bool)

(assert (= bs!1829097 (and d!2150954 d!2150952)))

(assert (=> bs!1829097 (= lambda!386728 lambda!386727)))

(assert (=> d!2150954 (= (inv!84888 setElem!46982) (forall!15836 (exprs!6540 setElem!46982) lambda!386728))))

(declare-fun bs!1829098 () Bool)

(assert (= bs!1829098 d!2150954))

(declare-fun m!7583578 () Bool)

(assert (=> bs!1829098 m!7583578))

(assert (=> setNonEmpty!46982 d!2150954))

(declare-fun b!6840111 () Bool)

(declare-fun e!4125313 () Bool)

(declare-fun tp!1872900 () Bool)

(declare-fun tp!1872901 () Bool)

(assert (=> b!6840111 (= e!4125313 (and tp!1872900 tp!1872901))))

(assert (=> b!6839863 (= tp!1872860 e!4125313)))

(assert (= (and b!6839863 (is-Cons!66143 (exprs!6540 setElem!46982))) b!6840111))

(declare-fun b!6840125 () Bool)

(declare-fun e!4125316 () Bool)

(declare-fun tp!1872914 () Bool)

(declare-fun tp!1872912 () Bool)

(assert (=> b!6840125 (= e!4125316 (and tp!1872914 tp!1872912))))

(declare-fun b!6840122 () Bool)

(assert (=> b!6840122 (= e!4125316 tp_is_empty!42565)))

(assert (=> b!6839858 (= tp!1872862 e!4125316)))

(declare-fun b!6840124 () Bool)

(declare-fun tp!1872915 () Bool)

(assert (=> b!6840124 (= e!4125316 tp!1872915)))

(declare-fun b!6840123 () Bool)

(declare-fun tp!1872916 () Bool)

(declare-fun tp!1872913 () Bool)

(assert (=> b!6840123 (= e!4125316 (and tp!1872916 tp!1872913))))

(assert (= (and b!6839858 (is-ElementMatch!16656 (regOne!33824 r!7292))) b!6840122))

(assert (= (and b!6839858 (is-Concat!25501 (regOne!33824 r!7292))) b!6840123))

(assert (= (and b!6839858 (is-Star!16656 (regOne!33824 r!7292))) b!6840124))

(assert (= (and b!6839858 (is-Union!16656 (regOne!33824 r!7292))) b!6840125))

(declare-fun b!6840129 () Bool)

(declare-fun e!4125317 () Bool)

(declare-fun tp!1872919 () Bool)

(declare-fun tp!1872917 () Bool)

(assert (=> b!6840129 (= e!4125317 (and tp!1872919 tp!1872917))))

(declare-fun b!6840126 () Bool)

(assert (=> b!6840126 (= e!4125317 tp_is_empty!42565)))

(assert (=> b!6839858 (= tp!1872857 e!4125317)))

(declare-fun b!6840128 () Bool)

(declare-fun tp!1872920 () Bool)

(assert (=> b!6840128 (= e!4125317 tp!1872920)))

(declare-fun b!6840127 () Bool)

(declare-fun tp!1872921 () Bool)

(declare-fun tp!1872918 () Bool)

(assert (=> b!6840127 (= e!4125317 (and tp!1872921 tp!1872918))))

(assert (= (and b!6839858 (is-ElementMatch!16656 (regTwo!33824 r!7292))) b!6840126))

(assert (= (and b!6839858 (is-Concat!25501 (regTwo!33824 r!7292))) b!6840127))

(assert (= (and b!6839858 (is-Star!16656 (regTwo!33824 r!7292))) b!6840128))

(assert (= (and b!6839858 (is-Union!16656 (regTwo!33824 r!7292))) b!6840129))

(declare-fun b!6840134 () Bool)

(declare-fun e!4125320 () Bool)

(declare-fun tp!1872924 () Bool)

(assert (=> b!6840134 (= e!4125320 (and tp_is_empty!42565 tp!1872924))))

(assert (=> b!6839861 (= tp!1872864 e!4125320)))

(assert (= (and b!6839861 (is-Cons!66145 (t!380012 s!2326))) b!6840134))

(declare-fun b!6840138 () Bool)

(declare-fun e!4125321 () Bool)

(declare-fun tp!1872927 () Bool)

(declare-fun tp!1872925 () Bool)

(assert (=> b!6840138 (= e!4125321 (and tp!1872927 tp!1872925))))

(declare-fun b!6840135 () Bool)

(assert (=> b!6840135 (= e!4125321 tp_is_empty!42565)))

(assert (=> b!6839870 (= tp!1872856 e!4125321)))

(declare-fun b!6840137 () Bool)

(declare-fun tp!1872928 () Bool)

(assert (=> b!6840137 (= e!4125321 tp!1872928)))

(declare-fun b!6840136 () Bool)

(declare-fun tp!1872929 () Bool)

(declare-fun tp!1872926 () Bool)

(assert (=> b!6840136 (= e!4125321 (and tp!1872929 tp!1872926))))

(assert (= (and b!6839870 (is-ElementMatch!16656 (reg!16985 r!7292))) b!6840135))

(assert (= (and b!6839870 (is-Concat!25501 (reg!16985 r!7292))) b!6840136))

(assert (= (and b!6839870 (is-Star!16656 (reg!16985 r!7292))) b!6840137))

(assert (= (and b!6839870 (is-Union!16656 (reg!16985 r!7292))) b!6840138))

(declare-fun b!6840146 () Bool)

(declare-fun e!4125327 () Bool)

(declare-fun tp!1872934 () Bool)

(assert (=> b!6840146 (= e!4125327 tp!1872934)))

(declare-fun b!6840145 () Bool)

(declare-fun tp!1872935 () Bool)

(declare-fun e!4125326 () Bool)

(assert (=> b!6840145 (= e!4125326 (and (inv!84888 (h!72592 (t!380011 zl!343))) e!4125327 tp!1872935))))

(assert (=> b!6839864 (= tp!1872859 e!4125326)))

(assert (= b!6840145 b!6840146))

(assert (= (and b!6839864 (is-Cons!66144 (t!380011 zl!343))) b!6840145))

(declare-fun m!7583580 () Bool)

(assert (=> b!6840145 m!7583580))

(declare-fun b!6840150 () Bool)

(declare-fun e!4125328 () Bool)

(declare-fun tp!1872938 () Bool)

(declare-fun tp!1872936 () Bool)

(assert (=> b!6840150 (= e!4125328 (and tp!1872938 tp!1872936))))

(declare-fun b!6840147 () Bool)

(assert (=> b!6840147 (= e!4125328 tp_is_empty!42565)))

(assert (=> b!6839859 (= tp!1872865 e!4125328)))

(declare-fun b!6840149 () Bool)

(declare-fun tp!1872939 () Bool)

(assert (=> b!6840149 (= e!4125328 tp!1872939)))

(declare-fun b!6840148 () Bool)

(declare-fun tp!1872940 () Bool)

(declare-fun tp!1872937 () Bool)

(assert (=> b!6840148 (= e!4125328 (and tp!1872940 tp!1872937))))

(assert (= (and b!6839859 (is-ElementMatch!16656 (regOne!33825 r!7292))) b!6840147))

(assert (= (and b!6839859 (is-Concat!25501 (regOne!33825 r!7292))) b!6840148))

(assert (= (and b!6839859 (is-Star!16656 (regOne!33825 r!7292))) b!6840149))

(assert (= (and b!6839859 (is-Union!16656 (regOne!33825 r!7292))) b!6840150))

(declare-fun b!6840154 () Bool)

(declare-fun e!4125329 () Bool)

(declare-fun tp!1872943 () Bool)

(declare-fun tp!1872941 () Bool)

(assert (=> b!6840154 (= e!4125329 (and tp!1872943 tp!1872941))))

(declare-fun b!6840151 () Bool)

(assert (=> b!6840151 (= e!4125329 tp_is_empty!42565)))

(assert (=> b!6839859 (= tp!1872863 e!4125329)))

(declare-fun b!6840153 () Bool)

(declare-fun tp!1872944 () Bool)

(assert (=> b!6840153 (= e!4125329 tp!1872944)))

(declare-fun b!6840152 () Bool)

(declare-fun tp!1872945 () Bool)

(declare-fun tp!1872942 () Bool)

(assert (=> b!6840152 (= e!4125329 (and tp!1872945 tp!1872942))))

(assert (= (and b!6839859 (is-ElementMatch!16656 (regTwo!33825 r!7292))) b!6840151))

(assert (= (and b!6839859 (is-Concat!25501 (regTwo!33825 r!7292))) b!6840152))

(assert (= (and b!6839859 (is-Star!16656 (regTwo!33825 r!7292))) b!6840153))

(assert (= (and b!6839859 (is-Union!16656 (regTwo!33825 r!7292))) b!6840154))

(declare-fun condSetEmpty!46988 () Bool)

(assert (=> setNonEmpty!46982 (= condSetEmpty!46988 (= setRest!46982 (as set.empty (Set Context!12080))))))

(declare-fun setRes!46988 () Bool)

(assert (=> setNonEmpty!46982 (= tp!1872861 setRes!46988)))

(declare-fun setIsEmpty!46988 () Bool)

(assert (=> setIsEmpty!46988 setRes!46988))

(declare-fun e!4125332 () Bool)

(declare-fun setNonEmpty!46988 () Bool)

(declare-fun setElem!46988 () Context!12080)

(declare-fun tp!1872950 () Bool)

(assert (=> setNonEmpty!46988 (= setRes!46988 (and tp!1872950 (inv!84888 setElem!46988) e!4125332))))

(declare-fun setRest!46988 () (Set Context!12080))

(assert (=> setNonEmpty!46988 (= setRest!46982 (set.union (set.insert setElem!46988 (as set.empty (Set Context!12080))) setRest!46988))))

(declare-fun b!6840159 () Bool)

(declare-fun tp!1872951 () Bool)

(assert (=> b!6840159 (= e!4125332 tp!1872951)))

(assert (= (and setNonEmpty!46982 condSetEmpty!46988) setIsEmpty!46988))

(assert (= (and setNonEmpty!46982 (not condSetEmpty!46988)) setNonEmpty!46988))

(assert (= setNonEmpty!46988 b!6840159))

(declare-fun m!7583582 () Bool)

(assert (=> setNonEmpty!46988 m!7583582))

(declare-fun b!6840160 () Bool)

(declare-fun e!4125333 () Bool)

(declare-fun tp!1872952 () Bool)

(declare-fun tp!1872953 () Bool)

(assert (=> b!6840160 (= e!4125333 (and tp!1872952 tp!1872953))))

(assert (=> b!6839869 (= tp!1872858 e!4125333)))

(assert (= (and b!6839869 (is-Cons!66143 (exprs!6540 (h!72592 zl!343)))) b!6840160))

(push 1)

(assert (not b!6840106))

(assert (not b!6839989))

(assert (not b!6840146))

(assert (not b!6840134))

(assert (not b!6840160))

(assert (not b!6840105))

(assert (not bm!622941))

(assert (not b!6840159))

(assert tp_is_empty!42565)

(assert (not b!6840127))

(assert (not b!6840153))

(assert (not b!6840128))

(assert (not b!6840057))

(assert (not b!6840060))

(assert (not b!6840048))

(assert (not d!2150930))

(assert (not d!2150944))

(assert (not bm!622947))

(assert (not b!6840102))

(assert (not b!6840154))

(assert (not b!6840129))

(assert (not b!6840055))

(assert (not d!2150940))

(assert (not b!6839952))

(assert (not b!6840103))

(assert (not d!2150954))

(assert (not b!6839951))

(assert (not b!6840073))

(assert (not b!6840056))

(assert (not b!6840123))

(assert (not bm!622956))

(assert (not b!6840137))

(assert (not b!6840148))

(assert (not d!2150942))

(assert (not b!6840149))

(assert (not b!6839942))

(assert (not b!6840150))

(assert (not d!2150948))

(assert (not b!6840136))

(assert (not d!2150924))

(assert (not b!6840061))

(assert (not b!6840145))

(assert (not d!2150952))

(assert (not b!6840124))

(assert (not b!6840098))

(assert (not b!6840125))

(assert (not bm!622939))

(assert (not b!6840099))

(assert (not setNonEmpty!46988))

(assert (not bm!622946))

(assert (not b!6840138))

(assert (not b!6840100))

(assert (not d!2150926))

(assert (not b!6840111))

(assert (not b!6840152))

(assert (not b!6839988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

