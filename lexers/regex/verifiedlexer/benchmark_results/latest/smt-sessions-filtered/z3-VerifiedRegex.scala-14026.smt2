; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740706 () Bool)

(assert start!740706)

(declare-fun res!3102768 () Bool)

(declare-fun e!4610937 () Bool)

(assert (=> start!740706 (=> (not res!3102768) (not e!4610937))))

(declare-datatypes ((C!42020 0))(
  ( (C!42021 (val!31450 Int)) )
))
(declare-datatypes ((Regex!20847 0))(
  ( (ElementMatch!20847 (c!1434240 C!42020)) (Concat!29692 (regOne!42206 Regex!20847) (regTwo!42206 Regex!20847)) (EmptyExpr!20847) (Star!20847 (reg!21176 Regex!20847)) (EmptyLang!20847) (Union!20847 (regOne!42207 Regex!20847) (regTwo!42207 Regex!20847)) )
))
(declare-fun r1!6279 () Regex!20847)

(declare-fun validRegex!11261 (Regex!20847) Bool)

(assert (=> start!740706 (= res!3102768 (validRegex!11261 r1!6279))))

(assert (=> start!740706 e!4610937))

(declare-fun e!4610938 () Bool)

(assert (=> start!740706 e!4610938))

(declare-fun e!4610934 () Bool)

(assert (=> start!740706 e!4610934))

(declare-fun e!4610935 () Bool)

(assert (=> start!740706 e!4610935))

(declare-fun b!7784803 () Bool)

(declare-fun e!4610933 () Bool)

(assert (=> b!7784803 (= e!4610937 e!4610933)))

(declare-fun res!3102770 () Bool)

(assert (=> b!7784803 (=> (not res!3102770) (not e!4610933))))

(declare-fun lt!2673368 () Regex!20847)

(declare-datatypes ((List!73686 0))(
  ( (Nil!73562) (Cons!73562 (h!80010 C!42020) (t!388421 List!73686)) )
))
(declare-fun s!14292 () List!73686)

(declare-fun matchR!10307 (Regex!20847 List!73686) Bool)

(assert (=> b!7784803 (= res!3102770 (matchR!10307 lt!2673368 s!14292))))

(declare-fun r2!6217 () Regex!20847)

(assert (=> b!7784803 (= lt!2673368 (Concat!29692 r1!6279 r2!6217))))

(declare-fun b!7784804 () Bool)

(declare-fun tp!2288949 () Bool)

(assert (=> b!7784804 (= e!4610938 tp!2288949)))

(declare-fun b!7784805 () Bool)

(declare-fun e!4610939 () Bool)

(declare-fun lt!2673369 () Bool)

(assert (=> b!7784805 (= e!4610939 (not lt!2673369))))

(declare-fun derivative!559 (Regex!20847 List!73686) Regex!20847)

(assert (=> b!7784805 (= (derivative!559 EmptyLang!20847 (t!388421 s!14292)) EmptyLang!20847)))

(declare-datatypes ((Unit!168556 0))(
  ( (Unit!168557) )
))
(declare-fun lt!2673366 () Unit!168556)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!94 (Regex!20847 List!73686) Unit!168556)

(assert (=> b!7784805 (= lt!2673366 (lemmaEmptyLangDerivativeIsAFixPoint!94 EmptyLang!20847 (t!388421 s!14292)))))

(declare-fun e!4610932 () Bool)

(assert (=> b!7784805 e!4610932))

(declare-fun res!3102774 () Bool)

(assert (=> b!7784805 (=> res!3102774 e!4610932)))

(assert (=> b!7784805 (= res!3102774 lt!2673369)))

(declare-fun lt!2673370 () Regex!20847)

(assert (=> b!7784805 (= lt!2673369 (matchR!10307 lt!2673370 (t!388421 s!14292)))))

(declare-fun lt!2673367 () Unit!168556)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!400 (Regex!20847 Regex!20847 List!73686) Unit!168556)

(assert (=> b!7784805 (= lt!2673367 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!400 lt!2673370 EmptyLang!20847 (t!388421 s!14292)))))

(declare-fun b!7784806 () Bool)

(declare-fun tp_is_empty!52049 () Bool)

(assert (=> b!7784806 (= e!4610934 tp_is_empty!52049)))

(declare-fun b!7784807 () Bool)

(declare-fun tp!2288948 () Bool)

(assert (=> b!7784807 (= e!4610935 (and tp_is_empty!52049 tp!2288948))))

(declare-fun b!7784808 () Bool)

(declare-fun tp!2288947 () Bool)

(assert (=> b!7784808 (= e!4610934 tp!2288947)))

(declare-fun b!7784809 () Bool)

(declare-fun e!4610936 () Bool)

(assert (=> b!7784809 (= e!4610933 e!4610936)))

(declare-fun res!3102771 () Bool)

(assert (=> b!7784809 (=> (not res!3102771) (not e!4610936))))

(declare-fun lt!2673365 () Regex!20847)

(assert (=> b!7784809 (= res!3102771 (matchR!10307 lt!2673365 (t!388421 s!14292)))))

(declare-fun derivativeStep!6184 (Regex!20847 C!42020) Regex!20847)

(assert (=> b!7784809 (= lt!2673365 (derivativeStep!6184 lt!2673368 (h!80010 s!14292)))))

(declare-fun b!7784810 () Bool)

(declare-fun res!3102769 () Bool)

(assert (=> b!7784810 (=> (not res!3102769) (not e!4610936))))

(declare-fun nullable!9231 (Regex!20847) Bool)

(assert (=> b!7784810 (= res!3102769 (not (nullable!9231 r1!6279)))))

(declare-fun b!7784811 () Bool)

(declare-fun res!3102773 () Bool)

(assert (=> b!7784811 (=> (not res!3102773) (not e!4610933))))

(get-info :version)

(assert (=> b!7784811 (= res!3102773 ((_ is Cons!73562) s!14292))))

(declare-fun b!7784812 () Bool)

(declare-fun res!3102767 () Bool)

(assert (=> b!7784812 (=> (not res!3102767) (not e!4610937))))

(assert (=> b!7784812 (= res!3102767 (validRegex!11261 r2!6217))))

(declare-fun b!7784813 () Bool)

(declare-fun tp!2288954 () Bool)

(declare-fun tp!2288952 () Bool)

(assert (=> b!7784813 (= e!4610934 (and tp!2288954 tp!2288952))))

(declare-fun b!7784814 () Bool)

(declare-fun tp!2288946 () Bool)

(declare-fun tp!2288950 () Bool)

(assert (=> b!7784814 (= e!4610938 (and tp!2288946 tp!2288950))))

(declare-fun b!7784815 () Bool)

(assert (=> b!7784815 (= e!4610936 e!4610939)))

(declare-fun res!3102772 () Bool)

(assert (=> b!7784815 (=> (not res!3102772) (not e!4610939))))

(assert (=> b!7784815 (= res!3102772 (= lt!2673365 (Union!20847 lt!2673370 EmptyLang!20847)))))

(assert (=> b!7784815 (= lt!2673370 (Concat!29692 (derivativeStep!6184 r1!6279 (h!80010 s!14292)) r2!6217))))

(declare-fun b!7784816 () Bool)

(declare-fun tp!2288955 () Bool)

(declare-fun tp!2288953 () Bool)

(assert (=> b!7784816 (= e!4610934 (and tp!2288955 tp!2288953))))

(declare-fun b!7784817 () Bool)

(declare-fun tp!2288951 () Bool)

(declare-fun tp!2288945 () Bool)

(assert (=> b!7784817 (= e!4610938 (and tp!2288951 tp!2288945))))

(declare-fun b!7784818 () Bool)

(assert (=> b!7784818 (= e!4610938 tp_is_empty!52049)))

(declare-fun b!7784819 () Bool)

(assert (=> b!7784819 (= e!4610932 (matchR!10307 EmptyLang!20847 (t!388421 s!14292)))))

(assert (= (and start!740706 res!3102768) b!7784812))

(assert (= (and b!7784812 res!3102767) b!7784803))

(assert (= (and b!7784803 res!3102770) b!7784811))

(assert (= (and b!7784811 res!3102773) b!7784809))

(assert (= (and b!7784809 res!3102771) b!7784810))

(assert (= (and b!7784810 res!3102769) b!7784815))

(assert (= (and b!7784815 res!3102772) b!7784805))

(assert (= (and b!7784805 (not res!3102774)) b!7784819))

(assert (= (and start!740706 ((_ is ElementMatch!20847) r1!6279)) b!7784818))

(assert (= (and start!740706 ((_ is Concat!29692) r1!6279)) b!7784817))

(assert (= (and start!740706 ((_ is Star!20847) r1!6279)) b!7784804))

(assert (= (and start!740706 ((_ is Union!20847) r1!6279)) b!7784814))

(assert (= (and start!740706 ((_ is ElementMatch!20847) r2!6217)) b!7784806))

(assert (= (and start!740706 ((_ is Concat!29692) r2!6217)) b!7784816))

(assert (= (and start!740706 ((_ is Star!20847) r2!6217)) b!7784808))

(assert (= (and start!740706 ((_ is Union!20847) r2!6217)) b!7784813))

(assert (= (and start!740706 ((_ is Cons!73562) s!14292)) b!7784807))

(declare-fun m!8230490 () Bool)

(assert (=> b!7784812 m!8230490))

(declare-fun m!8230492 () Bool)

(assert (=> b!7784819 m!8230492))

(declare-fun m!8230494 () Bool)

(assert (=> b!7784805 m!8230494))

(declare-fun m!8230496 () Bool)

(assert (=> b!7784805 m!8230496))

(declare-fun m!8230498 () Bool)

(assert (=> b!7784805 m!8230498))

(declare-fun m!8230500 () Bool)

(assert (=> b!7784805 m!8230500))

(declare-fun m!8230502 () Bool)

(assert (=> b!7784803 m!8230502))

(declare-fun m!8230504 () Bool)

(assert (=> start!740706 m!8230504))

(declare-fun m!8230506 () Bool)

(assert (=> b!7784815 m!8230506))

(declare-fun m!8230508 () Bool)

(assert (=> b!7784809 m!8230508))

(declare-fun m!8230510 () Bool)

(assert (=> b!7784809 m!8230510))

(declare-fun m!8230512 () Bool)

(assert (=> b!7784810 m!8230512))

(check-sat (not b!7784817) (not b!7784816) (not b!7784805) (not b!7784810) (not b!7784807) (not b!7784812) (not b!7784815) (not b!7784809) tp_is_empty!52049 (not start!740706) (not b!7784804) (not b!7784819) (not b!7784814) (not b!7784803) (not b!7784813) (not b!7784808))
(check-sat)
(get-model)

(declare-fun b!7784881 () Bool)

(declare-fun res!3102810 () Bool)

(declare-fun e!4610984 () Bool)

(assert (=> b!7784881 (=> (not res!3102810) (not e!4610984))))

(declare-fun isEmpty!42199 (List!73686) Bool)

(declare-fun tail!15467 (List!73686) List!73686)

(assert (=> b!7784881 (= res!3102810 (isEmpty!42199 (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7784882 () Bool)

(declare-fun e!4610979 () Bool)

(declare-fun e!4610980 () Bool)

(assert (=> b!7784882 (= e!4610979 e!4610980)))

(declare-fun res!3102812 () Bool)

(assert (=> b!7784882 (=> (not res!3102812) (not e!4610980))))

(declare-fun lt!2673379 () Bool)

(assert (=> b!7784882 (= res!3102812 (not lt!2673379))))

(declare-fun b!7784884 () Bool)

(declare-fun head!15926 (List!73686) C!42020)

(assert (=> b!7784884 (= e!4610984 (= (head!15926 (t!388421 s!14292)) (c!1434240 EmptyLang!20847)))))

(declare-fun b!7784885 () Bool)

(declare-fun e!4610978 () Bool)

(declare-fun e!4610981 () Bool)

(assert (=> b!7784885 (= e!4610978 e!4610981)))

(declare-fun c!1434256 () Bool)

(assert (=> b!7784885 (= c!1434256 ((_ is EmptyLang!20847) EmptyLang!20847))))

(declare-fun b!7784886 () Bool)

(declare-fun res!3102806 () Bool)

(assert (=> b!7784886 (=> res!3102806 e!4610979)))

(assert (=> b!7784886 (= res!3102806 (not ((_ is ElementMatch!20847) EmptyLang!20847)))))

(assert (=> b!7784886 (= e!4610981 e!4610979)))

(declare-fun b!7784887 () Bool)

(declare-fun e!4610983 () Bool)

(assert (=> b!7784887 (= e!4610980 e!4610983)))

(declare-fun res!3102809 () Bool)

(assert (=> b!7784887 (=> res!3102809 e!4610983)))

(declare-fun call!721600 () Bool)

(assert (=> b!7784887 (= res!3102809 call!721600)))

(declare-fun b!7784888 () Bool)

(declare-fun res!3102807 () Bool)

(assert (=> b!7784888 (=> res!3102807 e!4610983)))

(assert (=> b!7784888 (= res!3102807 (not (isEmpty!42199 (tail!15467 (t!388421 s!14292)))))))

(declare-fun b!7784889 () Bool)

(declare-fun e!4610982 () Bool)

(assert (=> b!7784889 (= e!4610982 (matchR!10307 (derivativeStep!6184 EmptyLang!20847 (head!15926 (t!388421 s!14292))) (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7784883 () Bool)

(assert (=> b!7784883 (= e!4610983 (not (= (head!15926 (t!388421 s!14292)) (c!1434240 EmptyLang!20847))))))

(declare-fun d!2345465 () Bool)

(assert (=> d!2345465 e!4610978))

(declare-fun c!1434258 () Bool)

(assert (=> d!2345465 (= c!1434258 ((_ is EmptyExpr!20847) EmptyLang!20847))))

(assert (=> d!2345465 (= lt!2673379 e!4610982)))

(declare-fun c!1434257 () Bool)

(assert (=> d!2345465 (= c!1434257 (isEmpty!42199 (t!388421 s!14292)))))

(assert (=> d!2345465 (validRegex!11261 EmptyLang!20847)))

(assert (=> d!2345465 (= (matchR!10307 EmptyLang!20847 (t!388421 s!14292)) lt!2673379)))

(declare-fun b!7784890 () Bool)

(assert (=> b!7784890 (= e!4610982 (nullable!9231 EmptyLang!20847))))

(declare-fun b!7784891 () Bool)

(declare-fun res!3102813 () Bool)

(assert (=> b!7784891 (=> (not res!3102813) (not e!4610984))))

(assert (=> b!7784891 (= res!3102813 (not call!721600))))

(declare-fun b!7784892 () Bool)

(declare-fun res!3102808 () Bool)

(assert (=> b!7784892 (=> res!3102808 e!4610979)))

(assert (=> b!7784892 (= res!3102808 e!4610984)))

(declare-fun res!3102811 () Bool)

(assert (=> b!7784892 (=> (not res!3102811) (not e!4610984))))

(assert (=> b!7784892 (= res!3102811 lt!2673379)))

(declare-fun b!7784893 () Bool)

(assert (=> b!7784893 (= e!4610981 (not lt!2673379))))

(declare-fun bm!721595 () Bool)

(assert (=> bm!721595 (= call!721600 (isEmpty!42199 (t!388421 s!14292)))))

(declare-fun b!7784894 () Bool)

(assert (=> b!7784894 (= e!4610978 (= lt!2673379 call!721600))))

(assert (= (and d!2345465 c!1434257) b!7784890))

(assert (= (and d!2345465 (not c!1434257)) b!7784889))

(assert (= (and d!2345465 c!1434258) b!7784894))

(assert (= (and d!2345465 (not c!1434258)) b!7784885))

(assert (= (and b!7784885 c!1434256) b!7784893))

(assert (= (and b!7784885 (not c!1434256)) b!7784886))

(assert (= (and b!7784886 (not res!3102806)) b!7784892))

(assert (= (and b!7784892 res!3102811) b!7784891))

(assert (= (and b!7784891 res!3102813) b!7784881))

(assert (= (and b!7784881 res!3102810) b!7784884))

(assert (= (and b!7784892 (not res!3102808)) b!7784882))

(assert (= (and b!7784882 res!3102812) b!7784887))

(assert (= (and b!7784887 (not res!3102809)) b!7784888))

(assert (= (and b!7784888 (not res!3102807)) b!7784883))

(assert (= (or b!7784894 b!7784887 b!7784891) bm!721595))

(declare-fun m!8230530 () Bool)

(assert (=> b!7784889 m!8230530))

(assert (=> b!7784889 m!8230530))

(declare-fun m!8230532 () Bool)

(assert (=> b!7784889 m!8230532))

(declare-fun m!8230534 () Bool)

(assert (=> b!7784889 m!8230534))

(assert (=> b!7784889 m!8230532))

(assert (=> b!7784889 m!8230534))

(declare-fun m!8230536 () Bool)

(assert (=> b!7784889 m!8230536))

(assert (=> b!7784884 m!8230530))

(assert (=> b!7784888 m!8230534))

(assert (=> b!7784888 m!8230534))

(declare-fun m!8230538 () Bool)

(assert (=> b!7784888 m!8230538))

(declare-fun m!8230540 () Bool)

(assert (=> bm!721595 m!8230540))

(assert (=> b!7784883 m!8230530))

(assert (=> b!7784881 m!8230534))

(assert (=> b!7784881 m!8230534))

(assert (=> b!7784881 m!8230538))

(declare-fun m!8230542 () Bool)

(assert (=> b!7784890 m!8230542))

(assert (=> d!2345465 m!8230540))

(declare-fun m!8230544 () Bool)

(assert (=> d!2345465 m!8230544))

(assert (=> b!7784819 d!2345465))

(declare-fun b!7784895 () Bool)

(declare-fun res!3102818 () Bool)

(declare-fun e!4610991 () Bool)

(assert (=> b!7784895 (=> (not res!3102818) (not e!4610991))))

(assert (=> b!7784895 (= res!3102818 (isEmpty!42199 (tail!15467 s!14292)))))

(declare-fun b!7784896 () Bool)

(declare-fun e!4610986 () Bool)

(declare-fun e!4610987 () Bool)

(assert (=> b!7784896 (= e!4610986 e!4610987)))

(declare-fun res!3102820 () Bool)

(assert (=> b!7784896 (=> (not res!3102820) (not e!4610987))))

(declare-fun lt!2673380 () Bool)

(assert (=> b!7784896 (= res!3102820 (not lt!2673380))))

(declare-fun b!7784898 () Bool)

(assert (=> b!7784898 (= e!4610991 (= (head!15926 s!14292) (c!1434240 lt!2673368)))))

(declare-fun b!7784899 () Bool)

(declare-fun e!4610985 () Bool)

(declare-fun e!4610988 () Bool)

(assert (=> b!7784899 (= e!4610985 e!4610988)))

(declare-fun c!1434259 () Bool)

(assert (=> b!7784899 (= c!1434259 ((_ is EmptyLang!20847) lt!2673368))))

(declare-fun b!7784900 () Bool)

(declare-fun res!3102814 () Bool)

(assert (=> b!7784900 (=> res!3102814 e!4610986)))

(assert (=> b!7784900 (= res!3102814 (not ((_ is ElementMatch!20847) lt!2673368)))))

(assert (=> b!7784900 (= e!4610988 e!4610986)))

(declare-fun b!7784901 () Bool)

(declare-fun e!4610990 () Bool)

(assert (=> b!7784901 (= e!4610987 e!4610990)))

(declare-fun res!3102817 () Bool)

(assert (=> b!7784901 (=> res!3102817 e!4610990)))

(declare-fun call!721601 () Bool)

(assert (=> b!7784901 (= res!3102817 call!721601)))

(declare-fun b!7784902 () Bool)

(declare-fun res!3102815 () Bool)

(assert (=> b!7784902 (=> res!3102815 e!4610990)))

(assert (=> b!7784902 (= res!3102815 (not (isEmpty!42199 (tail!15467 s!14292))))))

(declare-fun b!7784903 () Bool)

(declare-fun e!4610989 () Bool)

(assert (=> b!7784903 (= e!4610989 (matchR!10307 (derivativeStep!6184 lt!2673368 (head!15926 s!14292)) (tail!15467 s!14292)))))

(declare-fun b!7784897 () Bool)

(assert (=> b!7784897 (= e!4610990 (not (= (head!15926 s!14292) (c!1434240 lt!2673368))))))

(declare-fun d!2345473 () Bool)

(assert (=> d!2345473 e!4610985))

(declare-fun c!1434261 () Bool)

(assert (=> d!2345473 (= c!1434261 ((_ is EmptyExpr!20847) lt!2673368))))

(assert (=> d!2345473 (= lt!2673380 e!4610989)))

(declare-fun c!1434260 () Bool)

(assert (=> d!2345473 (= c!1434260 (isEmpty!42199 s!14292))))

(assert (=> d!2345473 (validRegex!11261 lt!2673368)))

(assert (=> d!2345473 (= (matchR!10307 lt!2673368 s!14292) lt!2673380)))

(declare-fun b!7784904 () Bool)

(assert (=> b!7784904 (= e!4610989 (nullable!9231 lt!2673368))))

(declare-fun b!7784905 () Bool)

(declare-fun res!3102821 () Bool)

(assert (=> b!7784905 (=> (not res!3102821) (not e!4610991))))

(assert (=> b!7784905 (= res!3102821 (not call!721601))))

(declare-fun b!7784906 () Bool)

(declare-fun res!3102816 () Bool)

(assert (=> b!7784906 (=> res!3102816 e!4610986)))

(assert (=> b!7784906 (= res!3102816 e!4610991)))

(declare-fun res!3102819 () Bool)

(assert (=> b!7784906 (=> (not res!3102819) (not e!4610991))))

(assert (=> b!7784906 (= res!3102819 lt!2673380)))

(declare-fun b!7784907 () Bool)

(assert (=> b!7784907 (= e!4610988 (not lt!2673380))))

(declare-fun bm!721596 () Bool)

(assert (=> bm!721596 (= call!721601 (isEmpty!42199 s!14292))))

(declare-fun b!7784908 () Bool)

(assert (=> b!7784908 (= e!4610985 (= lt!2673380 call!721601))))

(assert (= (and d!2345473 c!1434260) b!7784904))

(assert (= (and d!2345473 (not c!1434260)) b!7784903))

(assert (= (and d!2345473 c!1434261) b!7784908))

(assert (= (and d!2345473 (not c!1434261)) b!7784899))

(assert (= (and b!7784899 c!1434259) b!7784907))

(assert (= (and b!7784899 (not c!1434259)) b!7784900))

(assert (= (and b!7784900 (not res!3102814)) b!7784906))

(assert (= (and b!7784906 res!3102819) b!7784905))

(assert (= (and b!7784905 res!3102821) b!7784895))

(assert (= (and b!7784895 res!3102818) b!7784898))

(assert (= (and b!7784906 (not res!3102816)) b!7784896))

(assert (= (and b!7784896 res!3102820) b!7784901))

(assert (= (and b!7784901 (not res!3102817)) b!7784902))

(assert (= (and b!7784902 (not res!3102815)) b!7784897))

(assert (= (or b!7784908 b!7784901 b!7784905) bm!721596))

(declare-fun m!8230546 () Bool)

(assert (=> b!7784903 m!8230546))

(assert (=> b!7784903 m!8230546))

(declare-fun m!8230548 () Bool)

(assert (=> b!7784903 m!8230548))

(declare-fun m!8230550 () Bool)

(assert (=> b!7784903 m!8230550))

(assert (=> b!7784903 m!8230548))

(assert (=> b!7784903 m!8230550))

(declare-fun m!8230552 () Bool)

(assert (=> b!7784903 m!8230552))

(assert (=> b!7784898 m!8230546))

(assert (=> b!7784902 m!8230550))

(assert (=> b!7784902 m!8230550))

(declare-fun m!8230554 () Bool)

(assert (=> b!7784902 m!8230554))

(declare-fun m!8230556 () Bool)

(assert (=> bm!721596 m!8230556))

(assert (=> b!7784897 m!8230546))

(assert (=> b!7784895 m!8230550))

(assert (=> b!7784895 m!8230550))

(assert (=> b!7784895 m!8230554))

(declare-fun m!8230558 () Bool)

(assert (=> b!7784904 m!8230558))

(assert (=> d!2345473 m!8230556))

(declare-fun m!8230560 () Bool)

(assert (=> d!2345473 m!8230560))

(assert (=> b!7784803 d!2345473))

(declare-fun b!7784909 () Bool)

(declare-fun res!3102826 () Bool)

(declare-fun e!4610998 () Bool)

(assert (=> b!7784909 (=> (not res!3102826) (not e!4610998))))

(assert (=> b!7784909 (= res!3102826 (isEmpty!42199 (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7784910 () Bool)

(declare-fun e!4610993 () Bool)

(declare-fun e!4610994 () Bool)

(assert (=> b!7784910 (= e!4610993 e!4610994)))

(declare-fun res!3102828 () Bool)

(assert (=> b!7784910 (=> (not res!3102828) (not e!4610994))))

(declare-fun lt!2673381 () Bool)

(assert (=> b!7784910 (= res!3102828 (not lt!2673381))))

(declare-fun b!7784912 () Bool)

(assert (=> b!7784912 (= e!4610998 (= (head!15926 (t!388421 s!14292)) (c!1434240 lt!2673365)))))

(declare-fun b!7784913 () Bool)

(declare-fun e!4610992 () Bool)

(declare-fun e!4610995 () Bool)

(assert (=> b!7784913 (= e!4610992 e!4610995)))

(declare-fun c!1434262 () Bool)

(assert (=> b!7784913 (= c!1434262 ((_ is EmptyLang!20847) lt!2673365))))

(declare-fun b!7784914 () Bool)

(declare-fun res!3102822 () Bool)

(assert (=> b!7784914 (=> res!3102822 e!4610993)))

(assert (=> b!7784914 (= res!3102822 (not ((_ is ElementMatch!20847) lt!2673365)))))

(assert (=> b!7784914 (= e!4610995 e!4610993)))

(declare-fun b!7784915 () Bool)

(declare-fun e!4610997 () Bool)

(assert (=> b!7784915 (= e!4610994 e!4610997)))

(declare-fun res!3102825 () Bool)

(assert (=> b!7784915 (=> res!3102825 e!4610997)))

(declare-fun call!721602 () Bool)

(assert (=> b!7784915 (= res!3102825 call!721602)))

(declare-fun b!7784916 () Bool)

(declare-fun res!3102823 () Bool)

(assert (=> b!7784916 (=> res!3102823 e!4610997)))

(assert (=> b!7784916 (= res!3102823 (not (isEmpty!42199 (tail!15467 (t!388421 s!14292)))))))

(declare-fun b!7784917 () Bool)

(declare-fun e!4610996 () Bool)

(assert (=> b!7784917 (= e!4610996 (matchR!10307 (derivativeStep!6184 lt!2673365 (head!15926 (t!388421 s!14292))) (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7784911 () Bool)

(assert (=> b!7784911 (= e!4610997 (not (= (head!15926 (t!388421 s!14292)) (c!1434240 lt!2673365))))))

(declare-fun d!2345475 () Bool)

(assert (=> d!2345475 e!4610992))

(declare-fun c!1434264 () Bool)

(assert (=> d!2345475 (= c!1434264 ((_ is EmptyExpr!20847) lt!2673365))))

(assert (=> d!2345475 (= lt!2673381 e!4610996)))

(declare-fun c!1434263 () Bool)

(assert (=> d!2345475 (= c!1434263 (isEmpty!42199 (t!388421 s!14292)))))

(assert (=> d!2345475 (validRegex!11261 lt!2673365)))

(assert (=> d!2345475 (= (matchR!10307 lt!2673365 (t!388421 s!14292)) lt!2673381)))

(declare-fun b!7784918 () Bool)

(assert (=> b!7784918 (= e!4610996 (nullable!9231 lt!2673365))))

(declare-fun b!7784919 () Bool)

(declare-fun res!3102829 () Bool)

(assert (=> b!7784919 (=> (not res!3102829) (not e!4610998))))

(assert (=> b!7784919 (= res!3102829 (not call!721602))))

(declare-fun b!7784920 () Bool)

(declare-fun res!3102824 () Bool)

(assert (=> b!7784920 (=> res!3102824 e!4610993)))

(assert (=> b!7784920 (= res!3102824 e!4610998)))

(declare-fun res!3102827 () Bool)

(assert (=> b!7784920 (=> (not res!3102827) (not e!4610998))))

(assert (=> b!7784920 (= res!3102827 lt!2673381)))

(declare-fun b!7784921 () Bool)

(assert (=> b!7784921 (= e!4610995 (not lt!2673381))))

(declare-fun bm!721597 () Bool)

(assert (=> bm!721597 (= call!721602 (isEmpty!42199 (t!388421 s!14292)))))

(declare-fun b!7784922 () Bool)

(assert (=> b!7784922 (= e!4610992 (= lt!2673381 call!721602))))

(assert (= (and d!2345475 c!1434263) b!7784918))

(assert (= (and d!2345475 (not c!1434263)) b!7784917))

(assert (= (and d!2345475 c!1434264) b!7784922))

(assert (= (and d!2345475 (not c!1434264)) b!7784913))

(assert (= (and b!7784913 c!1434262) b!7784921))

(assert (= (and b!7784913 (not c!1434262)) b!7784914))

(assert (= (and b!7784914 (not res!3102822)) b!7784920))

(assert (= (and b!7784920 res!3102827) b!7784919))

(assert (= (and b!7784919 res!3102829) b!7784909))

(assert (= (and b!7784909 res!3102826) b!7784912))

(assert (= (and b!7784920 (not res!3102824)) b!7784910))

(assert (= (and b!7784910 res!3102828) b!7784915))

(assert (= (and b!7784915 (not res!3102825)) b!7784916))

(assert (= (and b!7784916 (not res!3102823)) b!7784911))

(assert (= (or b!7784922 b!7784915 b!7784919) bm!721597))

(assert (=> b!7784917 m!8230530))

(assert (=> b!7784917 m!8230530))

(declare-fun m!8230562 () Bool)

(assert (=> b!7784917 m!8230562))

(assert (=> b!7784917 m!8230534))

(assert (=> b!7784917 m!8230562))

(assert (=> b!7784917 m!8230534))

(declare-fun m!8230564 () Bool)

(assert (=> b!7784917 m!8230564))

(assert (=> b!7784912 m!8230530))

(assert (=> b!7784916 m!8230534))

(assert (=> b!7784916 m!8230534))

(assert (=> b!7784916 m!8230538))

(assert (=> bm!721597 m!8230540))

(assert (=> b!7784911 m!8230530))

(assert (=> b!7784909 m!8230534))

(assert (=> b!7784909 m!8230534))

(assert (=> b!7784909 m!8230538))

(declare-fun m!8230566 () Bool)

(assert (=> b!7784918 m!8230566))

(assert (=> d!2345475 m!8230540))

(declare-fun m!8230568 () Bool)

(assert (=> d!2345475 m!8230568))

(assert (=> b!7784809 d!2345475))

(declare-fun d!2345477 () Bool)

(declare-fun lt!2673391 () Regex!20847)

(assert (=> d!2345477 (validRegex!11261 lt!2673391)))

(declare-fun e!4611044 () Regex!20847)

(assert (=> d!2345477 (= lt!2673391 e!4611044)))

(declare-fun c!1434288 () Bool)

(assert (=> d!2345477 (= c!1434288 (or ((_ is EmptyExpr!20847) lt!2673368) ((_ is EmptyLang!20847) lt!2673368)))))

(assert (=> d!2345477 (validRegex!11261 lt!2673368)))

(assert (=> d!2345477 (= (derivativeStep!6184 lt!2673368 (h!80010 s!14292)) lt!2673391)))

(declare-fun b!7785005 () Bool)

(declare-fun e!4611047 () Regex!20847)

(declare-fun call!721618 () Regex!20847)

(declare-fun call!721616 () Regex!20847)

(assert (=> b!7785005 (= e!4611047 (Union!20847 call!721618 call!721616))))

(declare-fun b!7785006 () Bool)

(declare-fun e!4611043 () Regex!20847)

(assert (=> b!7785006 (= e!4611047 e!4611043)))

(declare-fun c!1434291 () Bool)

(assert (=> b!7785006 (= c!1434291 ((_ is Star!20847) lt!2673368))))

(declare-fun b!7785007 () Bool)

(declare-fun e!4611046 () Regex!20847)

(declare-fun call!721617 () Regex!20847)

(assert (=> b!7785007 (= e!4611046 (Union!20847 (Concat!29692 call!721617 (regTwo!42206 lt!2673368)) EmptyLang!20847))))

(declare-fun b!7785008 () Bool)

(declare-fun e!4611045 () Regex!20847)

(assert (=> b!7785008 (= e!4611045 (ite (= (h!80010 s!14292) (c!1434240 lt!2673368)) EmptyExpr!20847 EmptyLang!20847))))

(declare-fun b!7785009 () Bool)

(assert (=> b!7785009 (= e!4611044 EmptyLang!20847)))

(declare-fun bm!721610 () Bool)

(declare-fun call!721615 () Regex!20847)

(assert (=> bm!721610 (= call!721615 call!721616)))

(declare-fun bm!721611 () Bool)

(assert (=> bm!721611 (= call!721617 call!721615)))

(declare-fun b!7785010 () Bool)

(assert (=> b!7785010 (= e!4611043 (Concat!29692 call!721615 lt!2673368))))

(declare-fun c!1434287 () Bool)

(declare-fun bm!721612 () Bool)

(assert (=> bm!721612 (= call!721618 (derivativeStep!6184 (ite c!1434287 (regOne!42207 lt!2673368) (regOne!42206 lt!2673368)) (h!80010 s!14292)))))

(declare-fun b!7785011 () Bool)

(declare-fun c!1434290 () Bool)

(assert (=> b!7785011 (= c!1434290 (nullable!9231 (regOne!42206 lt!2673368)))))

(assert (=> b!7785011 (= e!4611043 e!4611046)))

(declare-fun b!7785012 () Bool)

(assert (=> b!7785012 (= e!4611046 (Union!20847 (Concat!29692 call!721618 (regTwo!42206 lt!2673368)) call!721617))))

(declare-fun b!7785013 () Bool)

(assert (=> b!7785013 (= c!1434287 ((_ is Union!20847) lt!2673368))))

(assert (=> b!7785013 (= e!4611045 e!4611047)))

(declare-fun b!7785014 () Bool)

(assert (=> b!7785014 (= e!4611044 e!4611045)))

(declare-fun c!1434289 () Bool)

(assert (=> b!7785014 (= c!1434289 ((_ is ElementMatch!20847) lt!2673368))))

(declare-fun bm!721613 () Bool)

(assert (=> bm!721613 (= call!721616 (derivativeStep!6184 (ite c!1434287 (regTwo!42207 lt!2673368) (ite c!1434291 (reg!21176 lt!2673368) (ite c!1434290 (regTwo!42206 lt!2673368) (regOne!42206 lt!2673368)))) (h!80010 s!14292)))))

(assert (= (and d!2345477 c!1434288) b!7785009))

(assert (= (and d!2345477 (not c!1434288)) b!7785014))

(assert (= (and b!7785014 c!1434289) b!7785008))

(assert (= (and b!7785014 (not c!1434289)) b!7785013))

(assert (= (and b!7785013 c!1434287) b!7785005))

(assert (= (and b!7785013 (not c!1434287)) b!7785006))

(assert (= (and b!7785006 c!1434291) b!7785010))

(assert (= (and b!7785006 (not c!1434291)) b!7785011))

(assert (= (and b!7785011 c!1434290) b!7785012))

(assert (= (and b!7785011 (not c!1434290)) b!7785007))

(assert (= (or b!7785012 b!7785007) bm!721611))

(assert (= (or b!7785010 bm!721611) bm!721610))

(assert (= (or b!7785005 bm!721610) bm!721613))

(assert (= (or b!7785005 b!7785012) bm!721612))

(declare-fun m!8230596 () Bool)

(assert (=> d!2345477 m!8230596))

(assert (=> d!2345477 m!8230560))

(declare-fun m!8230598 () Bool)

(assert (=> bm!721612 m!8230598))

(declare-fun m!8230600 () Bool)

(assert (=> b!7785011 m!8230600))

(declare-fun m!8230602 () Bool)

(assert (=> bm!721613 m!8230602))

(assert (=> b!7784809 d!2345477))

(declare-fun bm!721632 () Bool)

(declare-fun call!721637 () Bool)

(declare-fun c!1434312 () Bool)

(assert (=> bm!721632 (= call!721637 (validRegex!11261 (ite c!1434312 (regTwo!42207 r2!6217) (regTwo!42206 r2!6217))))))

(declare-fun b!7785063 () Bool)

(declare-fun e!4611078 () Bool)

(declare-fun call!721638 () Bool)

(assert (=> b!7785063 (= e!4611078 call!721638)))

(declare-fun d!2345485 () Bool)

(declare-fun res!3102878 () Bool)

(declare-fun e!4611081 () Bool)

(assert (=> d!2345485 (=> res!3102878 e!4611081)))

(assert (=> d!2345485 (= res!3102878 ((_ is ElementMatch!20847) r2!6217))))

(assert (=> d!2345485 (= (validRegex!11261 r2!6217) e!4611081)))

(declare-fun bm!721633 () Bool)

(declare-fun call!721639 () Bool)

(assert (=> bm!721633 (= call!721639 call!721638)))

(declare-fun b!7785064 () Bool)

(declare-fun e!4611083 () Bool)

(assert (=> b!7785064 (= e!4611083 e!4611078)))

(declare-fun res!3102880 () Bool)

(assert (=> b!7785064 (= res!3102880 (not (nullable!9231 (reg!21176 r2!6217))))))

(assert (=> b!7785064 (=> (not res!3102880) (not e!4611078))))

(declare-fun bm!721634 () Bool)

(declare-fun c!1434311 () Bool)

(assert (=> bm!721634 (= call!721638 (validRegex!11261 (ite c!1434311 (reg!21176 r2!6217) (ite c!1434312 (regOne!42207 r2!6217) (regOne!42206 r2!6217)))))))

(declare-fun b!7785065 () Bool)

(declare-fun res!3102882 () Bool)

(declare-fun e!4611082 () Bool)

(assert (=> b!7785065 (=> res!3102882 e!4611082)))

(assert (=> b!7785065 (= res!3102882 (not ((_ is Concat!29692) r2!6217)))))

(declare-fun e!4611080 () Bool)

(assert (=> b!7785065 (= e!4611080 e!4611082)))

(declare-fun b!7785066 () Bool)

(declare-fun res!3102879 () Bool)

(declare-fun e!4611077 () Bool)

(assert (=> b!7785066 (=> (not res!3102879) (not e!4611077))))

(assert (=> b!7785066 (= res!3102879 call!721639)))

(assert (=> b!7785066 (= e!4611080 e!4611077)))

(declare-fun b!7785067 () Bool)

(assert (=> b!7785067 (= e!4611077 call!721637)))

(declare-fun b!7785068 () Bool)

(declare-fun e!4611079 () Bool)

(assert (=> b!7785068 (= e!4611082 e!4611079)))

(declare-fun res!3102881 () Bool)

(assert (=> b!7785068 (=> (not res!3102881) (not e!4611079))))

(assert (=> b!7785068 (= res!3102881 call!721639)))

(declare-fun b!7785069 () Bool)

(assert (=> b!7785069 (= e!4611081 e!4611083)))

(assert (=> b!7785069 (= c!1434311 ((_ is Star!20847) r2!6217))))

(declare-fun b!7785070 () Bool)

(assert (=> b!7785070 (= e!4611079 call!721637)))

(declare-fun b!7785071 () Bool)

(assert (=> b!7785071 (= e!4611083 e!4611080)))

(assert (=> b!7785071 (= c!1434312 ((_ is Union!20847) r2!6217))))

(assert (= (and d!2345485 (not res!3102878)) b!7785069))

(assert (= (and b!7785069 c!1434311) b!7785064))

(assert (= (and b!7785069 (not c!1434311)) b!7785071))

(assert (= (and b!7785064 res!3102880) b!7785063))

(assert (= (and b!7785071 c!1434312) b!7785066))

(assert (= (and b!7785071 (not c!1434312)) b!7785065))

(assert (= (and b!7785066 res!3102879) b!7785067))

(assert (= (and b!7785065 (not res!3102882)) b!7785068))

(assert (= (and b!7785068 res!3102881) b!7785070))

(assert (= (or b!7785066 b!7785068) bm!721633))

(assert (= (or b!7785067 b!7785070) bm!721632))

(assert (= (or b!7785063 bm!721633) bm!721634))

(declare-fun m!8230614 () Bool)

(assert (=> bm!721632 m!8230614))

(declare-fun m!8230616 () Bool)

(assert (=> b!7785064 m!8230616))

(declare-fun m!8230618 () Bool)

(assert (=> bm!721634 m!8230618))

(assert (=> b!7784812 d!2345485))

(declare-fun bm!721636 () Bool)

(declare-fun call!721641 () Bool)

(declare-fun c!1434317 () Bool)

(assert (=> bm!721636 (= call!721641 (validRegex!11261 (ite c!1434317 (regTwo!42207 r1!6279) (regTwo!42206 r1!6279))))))

(declare-fun b!7785086 () Bool)

(declare-fun e!4611092 () Bool)

(declare-fun call!721642 () Bool)

(assert (=> b!7785086 (= e!4611092 call!721642)))

(declare-fun d!2345489 () Bool)

(declare-fun res!3102891 () Bool)

(declare-fun e!4611095 () Bool)

(assert (=> d!2345489 (=> res!3102891 e!4611095)))

(assert (=> d!2345489 (= res!3102891 ((_ is ElementMatch!20847) r1!6279))))

(assert (=> d!2345489 (= (validRegex!11261 r1!6279) e!4611095)))

(declare-fun bm!721637 () Bool)

(declare-fun call!721643 () Bool)

(assert (=> bm!721637 (= call!721643 call!721642)))

(declare-fun b!7785087 () Bool)

(declare-fun e!4611097 () Bool)

(assert (=> b!7785087 (= e!4611097 e!4611092)))

(declare-fun res!3102893 () Bool)

(assert (=> b!7785087 (= res!3102893 (not (nullable!9231 (reg!21176 r1!6279))))))

(assert (=> b!7785087 (=> (not res!3102893) (not e!4611092))))

(declare-fun c!1434316 () Bool)

(declare-fun bm!721638 () Bool)

(assert (=> bm!721638 (= call!721642 (validRegex!11261 (ite c!1434316 (reg!21176 r1!6279) (ite c!1434317 (regOne!42207 r1!6279) (regOne!42206 r1!6279)))))))

(declare-fun b!7785088 () Bool)

(declare-fun res!3102895 () Bool)

(declare-fun e!4611096 () Bool)

(assert (=> b!7785088 (=> res!3102895 e!4611096)))

(assert (=> b!7785088 (= res!3102895 (not ((_ is Concat!29692) r1!6279)))))

(declare-fun e!4611094 () Bool)

(assert (=> b!7785088 (= e!4611094 e!4611096)))

(declare-fun b!7785089 () Bool)

(declare-fun res!3102892 () Bool)

(declare-fun e!4611091 () Bool)

(assert (=> b!7785089 (=> (not res!3102892) (not e!4611091))))

(assert (=> b!7785089 (= res!3102892 call!721643)))

(assert (=> b!7785089 (= e!4611094 e!4611091)))

(declare-fun b!7785090 () Bool)

(assert (=> b!7785090 (= e!4611091 call!721641)))

(declare-fun b!7785091 () Bool)

(declare-fun e!4611093 () Bool)

(assert (=> b!7785091 (= e!4611096 e!4611093)))

(declare-fun res!3102894 () Bool)

(assert (=> b!7785091 (=> (not res!3102894) (not e!4611093))))

(assert (=> b!7785091 (= res!3102894 call!721643)))

(declare-fun b!7785092 () Bool)

(assert (=> b!7785092 (= e!4611095 e!4611097)))

(assert (=> b!7785092 (= c!1434316 ((_ is Star!20847) r1!6279))))

(declare-fun b!7785093 () Bool)

(assert (=> b!7785093 (= e!4611093 call!721641)))

(declare-fun b!7785094 () Bool)

(assert (=> b!7785094 (= e!4611097 e!4611094)))

(assert (=> b!7785094 (= c!1434317 ((_ is Union!20847) r1!6279))))

(assert (= (and d!2345489 (not res!3102891)) b!7785092))

(assert (= (and b!7785092 c!1434316) b!7785087))

(assert (= (and b!7785092 (not c!1434316)) b!7785094))

(assert (= (and b!7785087 res!3102893) b!7785086))

(assert (= (and b!7785094 c!1434317) b!7785089))

(assert (= (and b!7785094 (not c!1434317)) b!7785088))

(assert (= (and b!7785089 res!3102892) b!7785090))

(assert (= (and b!7785088 (not res!3102895)) b!7785091))

(assert (= (and b!7785091 res!3102894) b!7785093))

(assert (= (or b!7785089 b!7785091) bm!721637))

(assert (= (or b!7785090 b!7785093) bm!721636))

(assert (= (or b!7785086 bm!721637) bm!721638))

(declare-fun m!8230626 () Bool)

(assert (=> bm!721636 m!8230626))

(declare-fun m!8230628 () Bool)

(assert (=> b!7785087 m!8230628))

(declare-fun m!8230630 () Bool)

(assert (=> bm!721638 m!8230630))

(assert (=> start!740706 d!2345489))

(declare-fun d!2345493 () Bool)

(declare-fun lt!2673396 () Regex!20847)

(assert (=> d!2345493 (validRegex!11261 lt!2673396)))

(declare-fun e!4611106 () Regex!20847)

(assert (=> d!2345493 (= lt!2673396 e!4611106)))

(declare-fun c!1434321 () Bool)

(assert (=> d!2345493 (= c!1434321 (or ((_ is EmptyExpr!20847) r1!6279) ((_ is EmptyLang!20847) r1!6279)))))

(assert (=> d!2345493 (validRegex!11261 r1!6279)))

(assert (=> d!2345493 (= (derivativeStep!6184 r1!6279 (h!80010 s!14292)) lt!2673396)))

(declare-fun b!7785104 () Bool)

(declare-fun e!4611109 () Regex!20847)

(declare-fun call!721650 () Regex!20847)

(declare-fun call!721648 () Regex!20847)

(assert (=> b!7785104 (= e!4611109 (Union!20847 call!721650 call!721648))))

(declare-fun b!7785105 () Bool)

(declare-fun e!4611105 () Regex!20847)

(assert (=> b!7785105 (= e!4611109 e!4611105)))

(declare-fun c!1434324 () Bool)

(assert (=> b!7785105 (= c!1434324 ((_ is Star!20847) r1!6279))))

(declare-fun b!7785106 () Bool)

(declare-fun e!4611108 () Regex!20847)

(declare-fun call!721649 () Regex!20847)

(assert (=> b!7785106 (= e!4611108 (Union!20847 (Concat!29692 call!721649 (regTwo!42206 r1!6279)) EmptyLang!20847))))

(declare-fun b!7785107 () Bool)

(declare-fun e!4611107 () Regex!20847)

(assert (=> b!7785107 (= e!4611107 (ite (= (h!80010 s!14292) (c!1434240 r1!6279)) EmptyExpr!20847 EmptyLang!20847))))

(declare-fun b!7785108 () Bool)

(assert (=> b!7785108 (= e!4611106 EmptyLang!20847)))

(declare-fun bm!721642 () Bool)

(declare-fun call!721647 () Regex!20847)

(assert (=> bm!721642 (= call!721647 call!721648)))

(declare-fun bm!721643 () Bool)

(assert (=> bm!721643 (= call!721649 call!721647)))

(declare-fun b!7785109 () Bool)

(assert (=> b!7785109 (= e!4611105 (Concat!29692 call!721647 r1!6279))))

(declare-fun bm!721644 () Bool)

(declare-fun c!1434320 () Bool)

(assert (=> bm!721644 (= call!721650 (derivativeStep!6184 (ite c!1434320 (regOne!42207 r1!6279) (regOne!42206 r1!6279)) (h!80010 s!14292)))))

(declare-fun b!7785110 () Bool)

(declare-fun c!1434323 () Bool)

(assert (=> b!7785110 (= c!1434323 (nullable!9231 (regOne!42206 r1!6279)))))

(assert (=> b!7785110 (= e!4611105 e!4611108)))

(declare-fun b!7785111 () Bool)

(assert (=> b!7785111 (= e!4611108 (Union!20847 (Concat!29692 call!721650 (regTwo!42206 r1!6279)) call!721649))))

(declare-fun b!7785112 () Bool)

(assert (=> b!7785112 (= c!1434320 ((_ is Union!20847) r1!6279))))

(assert (=> b!7785112 (= e!4611107 e!4611109)))

(declare-fun b!7785113 () Bool)

(assert (=> b!7785113 (= e!4611106 e!4611107)))

(declare-fun c!1434322 () Bool)

(assert (=> b!7785113 (= c!1434322 ((_ is ElementMatch!20847) r1!6279))))

(declare-fun bm!721645 () Bool)

(assert (=> bm!721645 (= call!721648 (derivativeStep!6184 (ite c!1434320 (regTwo!42207 r1!6279) (ite c!1434324 (reg!21176 r1!6279) (ite c!1434323 (regTwo!42206 r1!6279) (regOne!42206 r1!6279)))) (h!80010 s!14292)))))

(assert (= (and d!2345493 c!1434321) b!7785108))

(assert (= (and d!2345493 (not c!1434321)) b!7785113))

(assert (= (and b!7785113 c!1434322) b!7785107))

(assert (= (and b!7785113 (not c!1434322)) b!7785112))

(assert (= (and b!7785112 c!1434320) b!7785104))

(assert (= (and b!7785112 (not c!1434320)) b!7785105))

(assert (= (and b!7785105 c!1434324) b!7785109))

(assert (= (and b!7785105 (not c!1434324)) b!7785110))

(assert (= (and b!7785110 c!1434323) b!7785111))

(assert (= (and b!7785110 (not c!1434323)) b!7785106))

(assert (= (or b!7785111 b!7785106) bm!721643))

(assert (= (or b!7785109 bm!721643) bm!721642))

(assert (= (or b!7785104 bm!721642) bm!721645))

(assert (= (or b!7785104 b!7785111) bm!721644))

(declare-fun m!8230638 () Bool)

(assert (=> d!2345493 m!8230638))

(assert (=> d!2345493 m!8230504))

(declare-fun m!8230640 () Bool)

(assert (=> bm!721644 m!8230640))

(declare-fun m!8230642 () Bool)

(assert (=> b!7785110 m!8230642))

(declare-fun m!8230644 () Bool)

(assert (=> bm!721645 m!8230644))

(assert (=> b!7784815 d!2345493))

(declare-fun d!2345497 () Bool)

(declare-fun nullableFct!3616 (Regex!20847) Bool)

(assert (=> d!2345497 (= (nullable!9231 r1!6279) (nullableFct!3616 r1!6279))))

(declare-fun bs!1966280 () Bool)

(assert (= bs!1966280 d!2345497))

(declare-fun m!8230654 () Bool)

(assert (=> bs!1966280 m!8230654))

(assert (=> b!7784810 d!2345497))

(declare-fun d!2345503 () Bool)

(declare-fun lt!2673401 () Regex!20847)

(assert (=> d!2345503 (validRegex!11261 lt!2673401)))

(declare-fun e!4611138 () Regex!20847)

(assert (=> d!2345503 (= lt!2673401 e!4611138)))

(declare-fun c!1434335 () Bool)

(assert (=> d!2345503 (= c!1434335 ((_ is Cons!73562) (t!388421 s!14292)))))

(assert (=> d!2345503 (validRegex!11261 EmptyLang!20847)))

(assert (=> d!2345503 (= (derivative!559 EmptyLang!20847 (t!388421 s!14292)) lt!2673401)))

(declare-fun b!7785193 () Bool)

(assert (=> b!7785193 (= e!4611138 (derivative!559 (derivativeStep!6184 EmptyLang!20847 (h!80010 (t!388421 s!14292))) (t!388421 (t!388421 s!14292))))))

(declare-fun b!7785194 () Bool)

(assert (=> b!7785194 (= e!4611138 EmptyLang!20847)))

(assert (= (and d!2345503 c!1434335) b!7785193))

(assert (= (and d!2345503 (not c!1434335)) b!7785194))

(declare-fun m!8230672 () Bool)

(assert (=> d!2345503 m!8230672))

(assert (=> d!2345503 m!8230544))

(declare-fun m!8230674 () Bool)

(assert (=> b!7785193 m!8230674))

(assert (=> b!7785193 m!8230674))

(declare-fun m!8230676 () Bool)

(assert (=> b!7785193 m!8230676))

(assert (=> b!7784805 d!2345503))

(declare-fun d!2345505 () Bool)

(assert (=> d!2345505 (= (derivative!559 EmptyLang!20847 (t!388421 s!14292)) EmptyLang!20847)))

(declare-fun lt!2673404 () Unit!168556)

(declare-fun choose!59510 (Regex!20847 List!73686) Unit!168556)

(assert (=> d!2345505 (= lt!2673404 (choose!59510 EmptyLang!20847 (t!388421 s!14292)))))

(assert (=> d!2345505 (= EmptyLang!20847 EmptyLang!20847)))

(assert (=> d!2345505 (= (lemmaEmptyLangDerivativeIsAFixPoint!94 EmptyLang!20847 (t!388421 s!14292)) lt!2673404)))

(declare-fun bs!1966281 () Bool)

(assert (= bs!1966281 d!2345505))

(assert (=> bs!1966281 m!8230494))

(declare-fun m!8230678 () Bool)

(assert (=> bs!1966281 m!8230678))

(assert (=> b!7784805 d!2345505))

(declare-fun b!7785199 () Bool)

(declare-fun res!3102913 () Bool)

(declare-fun e!4611146 () Bool)

(assert (=> b!7785199 (=> (not res!3102913) (not e!4611146))))

(assert (=> b!7785199 (= res!3102913 (isEmpty!42199 (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7785200 () Bool)

(declare-fun e!4611141 () Bool)

(declare-fun e!4611142 () Bool)

(assert (=> b!7785200 (= e!4611141 e!4611142)))

(declare-fun res!3102915 () Bool)

(assert (=> b!7785200 (=> (not res!3102915) (not e!4611142))))

(declare-fun lt!2673405 () Bool)

(assert (=> b!7785200 (= res!3102915 (not lt!2673405))))

(declare-fun b!7785202 () Bool)

(assert (=> b!7785202 (= e!4611146 (= (head!15926 (t!388421 s!14292)) (c!1434240 lt!2673370)))))

(declare-fun b!7785203 () Bool)

(declare-fun e!4611140 () Bool)

(declare-fun e!4611143 () Bool)

(assert (=> b!7785203 (= e!4611140 e!4611143)))

(declare-fun c!1434336 () Bool)

(assert (=> b!7785203 (= c!1434336 ((_ is EmptyLang!20847) lt!2673370))))

(declare-fun b!7785204 () Bool)

(declare-fun res!3102909 () Bool)

(assert (=> b!7785204 (=> res!3102909 e!4611141)))

(assert (=> b!7785204 (= res!3102909 (not ((_ is ElementMatch!20847) lt!2673370)))))

(assert (=> b!7785204 (= e!4611143 e!4611141)))

(declare-fun b!7785205 () Bool)

(declare-fun e!4611145 () Bool)

(assert (=> b!7785205 (= e!4611142 e!4611145)))

(declare-fun res!3102912 () Bool)

(assert (=> b!7785205 (=> res!3102912 e!4611145)))

(declare-fun call!721656 () Bool)

(assert (=> b!7785205 (= res!3102912 call!721656)))

(declare-fun b!7785206 () Bool)

(declare-fun res!3102910 () Bool)

(assert (=> b!7785206 (=> res!3102910 e!4611145)))

(assert (=> b!7785206 (= res!3102910 (not (isEmpty!42199 (tail!15467 (t!388421 s!14292)))))))

(declare-fun b!7785207 () Bool)

(declare-fun e!4611144 () Bool)

(assert (=> b!7785207 (= e!4611144 (matchR!10307 (derivativeStep!6184 lt!2673370 (head!15926 (t!388421 s!14292))) (tail!15467 (t!388421 s!14292))))))

(declare-fun b!7785201 () Bool)

(assert (=> b!7785201 (= e!4611145 (not (= (head!15926 (t!388421 s!14292)) (c!1434240 lt!2673370))))))

(declare-fun d!2345507 () Bool)

(assert (=> d!2345507 e!4611140))

(declare-fun c!1434338 () Bool)

(assert (=> d!2345507 (= c!1434338 ((_ is EmptyExpr!20847) lt!2673370))))

(assert (=> d!2345507 (= lt!2673405 e!4611144)))

(declare-fun c!1434337 () Bool)

(assert (=> d!2345507 (= c!1434337 (isEmpty!42199 (t!388421 s!14292)))))

(assert (=> d!2345507 (validRegex!11261 lt!2673370)))

(assert (=> d!2345507 (= (matchR!10307 lt!2673370 (t!388421 s!14292)) lt!2673405)))

(declare-fun b!7785208 () Bool)

(assert (=> b!7785208 (= e!4611144 (nullable!9231 lt!2673370))))

(declare-fun b!7785209 () Bool)

(declare-fun res!3102916 () Bool)

(assert (=> b!7785209 (=> (not res!3102916) (not e!4611146))))

(assert (=> b!7785209 (= res!3102916 (not call!721656))))

(declare-fun b!7785210 () Bool)

(declare-fun res!3102911 () Bool)

(assert (=> b!7785210 (=> res!3102911 e!4611141)))

(assert (=> b!7785210 (= res!3102911 e!4611146)))

(declare-fun res!3102914 () Bool)

(assert (=> b!7785210 (=> (not res!3102914) (not e!4611146))))

(assert (=> b!7785210 (= res!3102914 lt!2673405)))

(declare-fun b!7785211 () Bool)

(assert (=> b!7785211 (= e!4611143 (not lt!2673405))))

(declare-fun bm!721651 () Bool)

(assert (=> bm!721651 (= call!721656 (isEmpty!42199 (t!388421 s!14292)))))

(declare-fun b!7785212 () Bool)

(assert (=> b!7785212 (= e!4611140 (= lt!2673405 call!721656))))

(assert (= (and d!2345507 c!1434337) b!7785208))

(assert (= (and d!2345507 (not c!1434337)) b!7785207))

(assert (= (and d!2345507 c!1434338) b!7785212))

(assert (= (and d!2345507 (not c!1434338)) b!7785203))

(assert (= (and b!7785203 c!1434336) b!7785211))

(assert (= (and b!7785203 (not c!1434336)) b!7785204))

(assert (= (and b!7785204 (not res!3102909)) b!7785210))

(assert (= (and b!7785210 res!3102914) b!7785209))

(assert (= (and b!7785209 res!3102916) b!7785199))

(assert (= (and b!7785199 res!3102913) b!7785202))

(assert (= (and b!7785210 (not res!3102911)) b!7785200))

(assert (= (and b!7785200 res!3102915) b!7785205))

(assert (= (and b!7785205 (not res!3102912)) b!7785206))

(assert (= (and b!7785206 (not res!3102910)) b!7785201))

(assert (= (or b!7785212 b!7785205 b!7785209) bm!721651))

(assert (=> b!7785207 m!8230530))

(assert (=> b!7785207 m!8230530))

(declare-fun m!8230680 () Bool)

(assert (=> b!7785207 m!8230680))

(assert (=> b!7785207 m!8230534))

(assert (=> b!7785207 m!8230680))

(assert (=> b!7785207 m!8230534))

(declare-fun m!8230682 () Bool)

(assert (=> b!7785207 m!8230682))

(assert (=> b!7785202 m!8230530))

(assert (=> b!7785206 m!8230534))

(assert (=> b!7785206 m!8230534))

(assert (=> b!7785206 m!8230538))

(assert (=> bm!721651 m!8230540))

(assert (=> b!7785201 m!8230530))

(assert (=> b!7785199 m!8230534))

(assert (=> b!7785199 m!8230534))

(assert (=> b!7785199 m!8230538))

(declare-fun m!8230684 () Bool)

(assert (=> b!7785208 m!8230684))

(assert (=> d!2345507 m!8230540))

(declare-fun m!8230686 () Bool)

(assert (=> d!2345507 m!8230686))

(assert (=> b!7784805 d!2345507))

(declare-fun d!2345509 () Bool)

(declare-fun e!4611151 () Bool)

(assert (=> d!2345509 e!4611151))

(declare-fun res!3102921 () Bool)

(assert (=> d!2345509 (=> res!3102921 e!4611151)))

(assert (=> d!2345509 (= res!3102921 (matchR!10307 lt!2673370 (t!388421 s!14292)))))

(declare-fun lt!2673408 () Unit!168556)

(declare-fun choose!59511 (Regex!20847 Regex!20847 List!73686) Unit!168556)

(assert (=> d!2345509 (= lt!2673408 (choose!59511 lt!2673370 EmptyLang!20847 (t!388421 s!14292)))))

(declare-fun e!4611152 () Bool)

(assert (=> d!2345509 e!4611152))

(declare-fun res!3102922 () Bool)

(assert (=> d!2345509 (=> (not res!3102922) (not e!4611152))))

(assert (=> d!2345509 (= res!3102922 (validRegex!11261 lt!2673370))))

(assert (=> d!2345509 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!400 lt!2673370 EmptyLang!20847 (t!388421 s!14292)) lt!2673408)))

(declare-fun b!7785217 () Bool)

(assert (=> b!7785217 (= e!4611152 (validRegex!11261 EmptyLang!20847))))

(declare-fun b!7785218 () Bool)

(assert (=> b!7785218 (= e!4611151 (matchR!10307 EmptyLang!20847 (t!388421 s!14292)))))

(assert (= (and d!2345509 res!3102922) b!7785217))

(assert (= (and d!2345509 (not res!3102921)) b!7785218))

(assert (=> d!2345509 m!8230498))

(declare-fun m!8230688 () Bool)

(assert (=> d!2345509 m!8230688))

(assert (=> d!2345509 m!8230686))

(assert (=> b!7785217 m!8230544))

(assert (=> b!7785218 m!8230492))

(assert (=> b!7784805 d!2345509))

(declare-fun b!7785229 () Bool)

(declare-fun e!4611155 () Bool)

(assert (=> b!7785229 (= e!4611155 tp_is_empty!52049)))

(declare-fun b!7785230 () Bool)

(declare-fun tp!2289029 () Bool)

(declare-fun tp!2289032 () Bool)

(assert (=> b!7785230 (= e!4611155 (and tp!2289029 tp!2289032))))

(declare-fun b!7785231 () Bool)

(declare-fun tp!2289033 () Bool)

(assert (=> b!7785231 (= e!4611155 tp!2289033)))

(declare-fun b!7785232 () Bool)

(declare-fun tp!2289030 () Bool)

(declare-fun tp!2289031 () Bool)

(assert (=> b!7785232 (= e!4611155 (and tp!2289030 tp!2289031))))

(assert (=> b!7784808 (= tp!2288947 e!4611155)))

(assert (= (and b!7784808 ((_ is ElementMatch!20847) (reg!21176 r2!6217))) b!7785229))

(assert (= (and b!7784808 ((_ is Concat!29692) (reg!21176 r2!6217))) b!7785230))

(assert (= (and b!7784808 ((_ is Star!20847) (reg!21176 r2!6217))) b!7785231))

(assert (= (and b!7784808 ((_ is Union!20847) (reg!21176 r2!6217))) b!7785232))

(declare-fun b!7785233 () Bool)

(declare-fun e!4611156 () Bool)

(assert (=> b!7785233 (= e!4611156 tp_is_empty!52049)))

(declare-fun b!7785234 () Bool)

(declare-fun tp!2289034 () Bool)

(declare-fun tp!2289037 () Bool)

(assert (=> b!7785234 (= e!4611156 (and tp!2289034 tp!2289037))))

(declare-fun b!7785235 () Bool)

(declare-fun tp!2289038 () Bool)

(assert (=> b!7785235 (= e!4611156 tp!2289038)))

(declare-fun b!7785236 () Bool)

(declare-fun tp!2289035 () Bool)

(declare-fun tp!2289036 () Bool)

(assert (=> b!7785236 (= e!4611156 (and tp!2289035 tp!2289036))))

(assert (=> b!7784814 (= tp!2288946 e!4611156)))

(assert (= (and b!7784814 ((_ is ElementMatch!20847) (regOne!42207 r1!6279))) b!7785233))

(assert (= (and b!7784814 ((_ is Concat!29692) (regOne!42207 r1!6279))) b!7785234))

(assert (= (and b!7784814 ((_ is Star!20847) (regOne!42207 r1!6279))) b!7785235))

(assert (= (and b!7784814 ((_ is Union!20847) (regOne!42207 r1!6279))) b!7785236))

(declare-fun b!7785237 () Bool)

(declare-fun e!4611157 () Bool)

(assert (=> b!7785237 (= e!4611157 tp_is_empty!52049)))

(declare-fun b!7785238 () Bool)

(declare-fun tp!2289039 () Bool)

(declare-fun tp!2289042 () Bool)

(assert (=> b!7785238 (= e!4611157 (and tp!2289039 tp!2289042))))

(declare-fun b!7785239 () Bool)

(declare-fun tp!2289043 () Bool)

(assert (=> b!7785239 (= e!4611157 tp!2289043)))

(declare-fun b!7785240 () Bool)

(declare-fun tp!2289040 () Bool)

(declare-fun tp!2289041 () Bool)

(assert (=> b!7785240 (= e!4611157 (and tp!2289040 tp!2289041))))

(assert (=> b!7784814 (= tp!2288950 e!4611157)))

(assert (= (and b!7784814 ((_ is ElementMatch!20847) (regTwo!42207 r1!6279))) b!7785237))

(assert (= (and b!7784814 ((_ is Concat!29692) (regTwo!42207 r1!6279))) b!7785238))

(assert (= (and b!7784814 ((_ is Star!20847) (regTwo!42207 r1!6279))) b!7785239))

(assert (= (and b!7784814 ((_ is Union!20847) (regTwo!42207 r1!6279))) b!7785240))

(declare-fun b!7785245 () Bool)

(declare-fun e!4611160 () Bool)

(declare-fun tp!2289046 () Bool)

(assert (=> b!7785245 (= e!4611160 (and tp_is_empty!52049 tp!2289046))))

(assert (=> b!7784807 (= tp!2288948 e!4611160)))

(assert (= (and b!7784807 ((_ is Cons!73562) (t!388421 s!14292))) b!7785245))

(declare-fun b!7785246 () Bool)

(declare-fun e!4611161 () Bool)

(assert (=> b!7785246 (= e!4611161 tp_is_empty!52049)))

(declare-fun b!7785247 () Bool)

(declare-fun tp!2289047 () Bool)

(declare-fun tp!2289050 () Bool)

(assert (=> b!7785247 (= e!4611161 (and tp!2289047 tp!2289050))))

(declare-fun b!7785248 () Bool)

(declare-fun tp!2289051 () Bool)

(assert (=> b!7785248 (= e!4611161 tp!2289051)))

(declare-fun b!7785249 () Bool)

(declare-fun tp!2289048 () Bool)

(declare-fun tp!2289049 () Bool)

(assert (=> b!7785249 (= e!4611161 (and tp!2289048 tp!2289049))))

(assert (=> b!7784813 (= tp!2288954 e!4611161)))

(assert (= (and b!7784813 ((_ is ElementMatch!20847) (regOne!42207 r2!6217))) b!7785246))

(assert (= (and b!7784813 ((_ is Concat!29692) (regOne!42207 r2!6217))) b!7785247))

(assert (= (and b!7784813 ((_ is Star!20847) (regOne!42207 r2!6217))) b!7785248))

(assert (= (and b!7784813 ((_ is Union!20847) (regOne!42207 r2!6217))) b!7785249))

(declare-fun b!7785250 () Bool)

(declare-fun e!4611162 () Bool)

(assert (=> b!7785250 (= e!4611162 tp_is_empty!52049)))

(declare-fun b!7785251 () Bool)

(declare-fun tp!2289052 () Bool)

(declare-fun tp!2289055 () Bool)

(assert (=> b!7785251 (= e!4611162 (and tp!2289052 tp!2289055))))

(declare-fun b!7785252 () Bool)

(declare-fun tp!2289056 () Bool)

(assert (=> b!7785252 (= e!4611162 tp!2289056)))

(declare-fun b!7785253 () Bool)

(declare-fun tp!2289053 () Bool)

(declare-fun tp!2289054 () Bool)

(assert (=> b!7785253 (= e!4611162 (and tp!2289053 tp!2289054))))

(assert (=> b!7784813 (= tp!2288952 e!4611162)))

(assert (= (and b!7784813 ((_ is ElementMatch!20847) (regTwo!42207 r2!6217))) b!7785250))

(assert (= (and b!7784813 ((_ is Concat!29692) (regTwo!42207 r2!6217))) b!7785251))

(assert (= (and b!7784813 ((_ is Star!20847) (regTwo!42207 r2!6217))) b!7785252))

(assert (= (and b!7784813 ((_ is Union!20847) (regTwo!42207 r2!6217))) b!7785253))

(declare-fun b!7785254 () Bool)

(declare-fun e!4611163 () Bool)

(assert (=> b!7785254 (= e!4611163 tp_is_empty!52049)))

(declare-fun b!7785255 () Bool)

(declare-fun tp!2289057 () Bool)

(declare-fun tp!2289060 () Bool)

(assert (=> b!7785255 (= e!4611163 (and tp!2289057 tp!2289060))))

(declare-fun b!7785256 () Bool)

(declare-fun tp!2289061 () Bool)

(assert (=> b!7785256 (= e!4611163 tp!2289061)))

(declare-fun b!7785257 () Bool)

(declare-fun tp!2289058 () Bool)

(declare-fun tp!2289059 () Bool)

(assert (=> b!7785257 (= e!4611163 (and tp!2289058 tp!2289059))))

(assert (=> b!7784816 (= tp!2288955 e!4611163)))

(assert (= (and b!7784816 ((_ is ElementMatch!20847) (regOne!42206 r2!6217))) b!7785254))

(assert (= (and b!7784816 ((_ is Concat!29692) (regOne!42206 r2!6217))) b!7785255))

(assert (= (and b!7784816 ((_ is Star!20847) (regOne!42206 r2!6217))) b!7785256))

(assert (= (and b!7784816 ((_ is Union!20847) (regOne!42206 r2!6217))) b!7785257))

(declare-fun b!7785258 () Bool)

(declare-fun e!4611164 () Bool)

(assert (=> b!7785258 (= e!4611164 tp_is_empty!52049)))

(declare-fun b!7785259 () Bool)

(declare-fun tp!2289062 () Bool)

(declare-fun tp!2289065 () Bool)

(assert (=> b!7785259 (= e!4611164 (and tp!2289062 tp!2289065))))

(declare-fun b!7785260 () Bool)

(declare-fun tp!2289066 () Bool)

(assert (=> b!7785260 (= e!4611164 tp!2289066)))

(declare-fun b!7785261 () Bool)

(declare-fun tp!2289063 () Bool)

(declare-fun tp!2289064 () Bool)

(assert (=> b!7785261 (= e!4611164 (and tp!2289063 tp!2289064))))

(assert (=> b!7784816 (= tp!2288953 e!4611164)))

(assert (= (and b!7784816 ((_ is ElementMatch!20847) (regTwo!42206 r2!6217))) b!7785258))

(assert (= (and b!7784816 ((_ is Concat!29692) (regTwo!42206 r2!6217))) b!7785259))

(assert (= (and b!7784816 ((_ is Star!20847) (regTwo!42206 r2!6217))) b!7785260))

(assert (= (and b!7784816 ((_ is Union!20847) (regTwo!42206 r2!6217))) b!7785261))

(declare-fun b!7785262 () Bool)

(declare-fun e!4611165 () Bool)

(assert (=> b!7785262 (= e!4611165 tp_is_empty!52049)))

(declare-fun b!7785263 () Bool)

(declare-fun tp!2289067 () Bool)

(declare-fun tp!2289070 () Bool)

(assert (=> b!7785263 (= e!4611165 (and tp!2289067 tp!2289070))))

(declare-fun b!7785264 () Bool)

(declare-fun tp!2289071 () Bool)

(assert (=> b!7785264 (= e!4611165 tp!2289071)))

(declare-fun b!7785265 () Bool)

(declare-fun tp!2289068 () Bool)

(declare-fun tp!2289069 () Bool)

(assert (=> b!7785265 (= e!4611165 (and tp!2289068 tp!2289069))))

(assert (=> b!7784817 (= tp!2288951 e!4611165)))

(assert (= (and b!7784817 ((_ is ElementMatch!20847) (regOne!42206 r1!6279))) b!7785262))

(assert (= (and b!7784817 ((_ is Concat!29692) (regOne!42206 r1!6279))) b!7785263))

(assert (= (and b!7784817 ((_ is Star!20847) (regOne!42206 r1!6279))) b!7785264))

(assert (= (and b!7784817 ((_ is Union!20847) (regOne!42206 r1!6279))) b!7785265))

(declare-fun b!7785266 () Bool)

(declare-fun e!4611166 () Bool)

(assert (=> b!7785266 (= e!4611166 tp_is_empty!52049)))

(declare-fun b!7785267 () Bool)

(declare-fun tp!2289072 () Bool)

(declare-fun tp!2289075 () Bool)

(assert (=> b!7785267 (= e!4611166 (and tp!2289072 tp!2289075))))

(declare-fun b!7785268 () Bool)

(declare-fun tp!2289076 () Bool)

(assert (=> b!7785268 (= e!4611166 tp!2289076)))

(declare-fun b!7785269 () Bool)

(declare-fun tp!2289073 () Bool)

(declare-fun tp!2289074 () Bool)

(assert (=> b!7785269 (= e!4611166 (and tp!2289073 tp!2289074))))

(assert (=> b!7784817 (= tp!2288945 e!4611166)))

(assert (= (and b!7784817 ((_ is ElementMatch!20847) (regTwo!42206 r1!6279))) b!7785266))

(assert (= (and b!7784817 ((_ is Concat!29692) (regTwo!42206 r1!6279))) b!7785267))

(assert (= (and b!7784817 ((_ is Star!20847) (regTwo!42206 r1!6279))) b!7785268))

(assert (= (and b!7784817 ((_ is Union!20847) (regTwo!42206 r1!6279))) b!7785269))

(declare-fun b!7785270 () Bool)

(declare-fun e!4611167 () Bool)

(assert (=> b!7785270 (= e!4611167 tp_is_empty!52049)))

(declare-fun b!7785271 () Bool)

(declare-fun tp!2289077 () Bool)

(declare-fun tp!2289080 () Bool)

(assert (=> b!7785271 (= e!4611167 (and tp!2289077 tp!2289080))))

(declare-fun b!7785272 () Bool)

(declare-fun tp!2289081 () Bool)

(assert (=> b!7785272 (= e!4611167 tp!2289081)))

(declare-fun b!7785273 () Bool)

(declare-fun tp!2289078 () Bool)

(declare-fun tp!2289079 () Bool)

(assert (=> b!7785273 (= e!4611167 (and tp!2289078 tp!2289079))))

(assert (=> b!7784804 (= tp!2288949 e!4611167)))

(assert (= (and b!7784804 ((_ is ElementMatch!20847) (reg!21176 r1!6279))) b!7785270))

(assert (= (and b!7784804 ((_ is Concat!29692) (reg!21176 r1!6279))) b!7785271))

(assert (= (and b!7784804 ((_ is Star!20847) (reg!21176 r1!6279))) b!7785272))

(assert (= (and b!7784804 ((_ is Union!20847) (reg!21176 r1!6279))) b!7785273))

(check-sat (not b!7785251) (not b!7785202) (not b!7785268) (not bm!721595) (not b!7785265) (not b!7785267) (not b!7785110) (not d!2345503) (not b!7784917) (not b!7785206) (not b!7785234) (not d!2345473) (not b!7785193) (not b!7785208) (not bm!721638) (not b!7785248) (not b!7784909) (not b!7785259) (not b!7785230) (not b!7784884) (not b!7784895) (not b!7785263) (not b!7785217) (not b!7785207) (not b!7784881) (not b!7785236) (not b!7784911) (not d!2345497) (not bm!721596) (not b!7785255) (not bm!721645) (not b!7784883) (not b!7785256) (not bm!721597) (not b!7784902) (not b!7785272) (not d!2345507) (not b!7784918) (not b!7784897) (not bm!721651) (not d!2345509) (not b!7785257) (not b!7785218) (not b!7785240) (not b!7785232) (not b!7784888) (not b!7785238) (not b!7785064) (not b!7785239) (not b!7785261) (not b!7785247) (not b!7785249) (not b!7785264) (not b!7785201) (not b!7784912) (not d!2345505) (not bm!721632) (not b!7785245) (not d!2345465) (not b!7785011) (not bm!721644) tp_is_empty!52049 (not b!7785253) (not bm!721634) (not b!7785231) (not b!7784916) (not b!7784890) (not d!2345475) (not b!7785273) (not b!7785252) (not b!7785260) (not bm!721613) (not b!7785087) (not b!7784898) (not b!7784903) (not bm!721636) (not b!7785235) (not b!7785271) (not d!2345477) (not d!2345493) (not b!7785269) (not b!7785199) (not b!7784889) (not b!7784904) (not bm!721612))
(check-sat)
