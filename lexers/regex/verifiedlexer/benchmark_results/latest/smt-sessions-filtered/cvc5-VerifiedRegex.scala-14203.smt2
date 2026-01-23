; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744208 () Bool)

(assert start!744208)

(declare-fun b!7878744 () Bool)

(declare-fun e!4653020 () Bool)

(declare-fun tp_is_empty!52755 () Bool)

(assert (=> b!7878744 (= e!4653020 tp_is_empty!52755)))

(declare-fun b!7878745 () Bool)

(declare-fun e!4653019 () Bool)

(declare-fun tp!2340872 () Bool)

(declare-fun tp!2340871 () Bool)

(assert (=> b!7878745 (= e!4653019 (and tp!2340872 tp!2340871))))

(declare-fun b!7878746 () Bool)

(assert (=> b!7878746 (= e!4653019 tp_is_empty!52755)))

(declare-fun b!7878747 () Bool)

(declare-fun res!3129114 () Bool)

(declare-fun e!4653021 () Bool)

(assert (=> b!7878747 (=> (not res!3129114) (not e!4653021))))

(declare-datatypes ((C!42682 0))(
  ( (C!42683 (val!31803 Int)) )
))
(declare-datatypes ((Regex!21178 0))(
  ( (ElementMatch!21178 (c!1446878 C!42682)) (Concat!30023 (regOne!42868 Regex!21178) (regTwo!42868 Regex!21178)) (EmptyExpr!21178) (Star!21178 (reg!21507 Regex!21178)) (EmptyLang!21178) (Union!21178 (regOne!42869 Regex!21178) (regTwo!42869 Regex!21178)) )
))
(declare-fun r2!6150 () Regex!21178)

(declare-datatypes ((List!74037 0))(
  ( (Nil!73913) (Cons!73913 (h!80361 C!42682) (t!388772 List!74037)) )
))
(declare-fun s!14231 () List!74037)

(declare-fun r1!6212 () Regex!21178)

(declare-fun matchR!10614 (Regex!21178 List!74037) Bool)

(assert (=> b!7878747 (= res!3129114 (matchR!10614 (Union!21178 r1!6212 r2!6150) s!14231))))

(declare-fun b!7878748 () Bool)

(declare-fun res!3129113 () Bool)

(assert (=> b!7878748 (=> (not res!3129113) (not e!4653021))))

(declare-fun validRegex!11588 (Regex!21178) Bool)

(assert (=> b!7878748 (= res!3129113 (validRegex!11588 r2!6150))))

(declare-fun b!7878749 () Bool)

(declare-fun e!4653018 () Bool)

(declare-fun tp!2340870 () Bool)

(assert (=> b!7878749 (= e!4653018 (and tp_is_empty!52755 tp!2340870))))

(declare-fun res!3129112 () Bool)

(assert (=> start!744208 (=> (not res!3129112) (not e!4653021))))

(assert (=> start!744208 (= res!3129112 (validRegex!11588 r1!6212))))

(assert (=> start!744208 e!4653021))

(assert (=> start!744208 e!4653020))

(assert (=> start!744208 e!4653019))

(assert (=> start!744208 e!4653018))

(declare-fun b!7878743 () Bool)

(declare-fun tp!2340865 () Bool)

(assert (=> b!7878743 (= e!4653020 tp!2340865)))

(declare-fun b!7878750 () Bool)

(declare-fun res!3129111 () Bool)

(assert (=> b!7878750 (=> (not res!3129111) (not e!4653021))))

(assert (=> b!7878750 (= res!3129111 (is-Cons!73913 s!14231))))

(declare-fun b!7878751 () Bool)

(assert (=> b!7878751 (= e!4653021 (not (validRegex!11588 (Union!21178 r2!6150 r1!6212))))))

(declare-fun lt!2681144 () Regex!21178)

(declare-fun lt!2681143 () Regex!21178)

(assert (=> b!7878751 (matchR!10614 (Union!21178 lt!2681144 lt!2681143) (t!388772 s!14231))))

(declare-datatypes ((Unit!168986 0))(
  ( (Unit!168987) )
))
(declare-fun lt!2681142 () Unit!168986)

(declare-fun lemmaReversedUnionAcceptsSameString!51 (Regex!21178 Regex!21178 List!74037) Unit!168986)

(assert (=> b!7878751 (= lt!2681142 (lemmaReversedUnionAcceptsSameString!51 lt!2681143 lt!2681144 (t!388772 s!14231)))))

(declare-fun derivativeStep!6407 (Regex!21178 C!42682) Regex!21178)

(assert (=> b!7878751 (= lt!2681144 (derivativeStep!6407 r2!6150 (h!80361 s!14231)))))

(assert (=> b!7878751 (= lt!2681143 (derivativeStep!6407 r1!6212 (h!80361 s!14231)))))

(declare-fun b!7878752 () Bool)

(declare-fun tp!2340868 () Bool)

(declare-fun tp!2340867 () Bool)

(assert (=> b!7878752 (= e!4653019 (and tp!2340868 tp!2340867))))

(declare-fun b!7878753 () Bool)

(declare-fun tp!2340873 () Bool)

(declare-fun tp!2340874 () Bool)

(assert (=> b!7878753 (= e!4653020 (and tp!2340873 tp!2340874))))

(declare-fun b!7878754 () Bool)

(declare-fun tp!2340875 () Bool)

(assert (=> b!7878754 (= e!4653019 tp!2340875)))

(declare-fun b!7878755 () Bool)

(declare-fun tp!2340869 () Bool)

(declare-fun tp!2340866 () Bool)

(assert (=> b!7878755 (= e!4653020 (and tp!2340869 tp!2340866))))

(assert (= (and start!744208 res!3129112) b!7878748))

(assert (= (and b!7878748 res!3129113) b!7878747))

(assert (= (and b!7878747 res!3129114) b!7878750))

(assert (= (and b!7878750 res!3129111) b!7878751))

(assert (= (and start!744208 (is-ElementMatch!21178 r1!6212)) b!7878744))

(assert (= (and start!744208 (is-Concat!30023 r1!6212)) b!7878755))

(assert (= (and start!744208 (is-Star!21178 r1!6212)) b!7878743))

(assert (= (and start!744208 (is-Union!21178 r1!6212)) b!7878753))

(assert (= (and start!744208 (is-ElementMatch!21178 r2!6150)) b!7878746))

(assert (= (and start!744208 (is-Concat!30023 r2!6150)) b!7878745))

(assert (= (and start!744208 (is-Star!21178 r2!6150)) b!7878754))

(assert (= (and start!744208 (is-Union!21178 r2!6150)) b!7878752))

(assert (= (and start!744208 (is-Cons!73913 s!14231)) b!7878749))

(declare-fun m!8267268 () Bool)

(assert (=> b!7878747 m!8267268))

(declare-fun m!8267270 () Bool)

(assert (=> b!7878748 m!8267270))

(declare-fun m!8267272 () Bool)

(assert (=> start!744208 m!8267272))

(declare-fun m!8267274 () Bool)

(assert (=> b!7878751 m!8267274))

(declare-fun m!8267276 () Bool)

(assert (=> b!7878751 m!8267276))

(declare-fun m!8267278 () Bool)

(assert (=> b!7878751 m!8267278))

(declare-fun m!8267280 () Bool)

(assert (=> b!7878751 m!8267280))

(declare-fun m!8267282 () Bool)

(assert (=> b!7878751 m!8267282))

(push 1)

(assert (not b!7878752))

(assert (not start!744208))

(assert (not b!7878748))

(assert (not b!7878747))

(assert (not b!7878743))

(assert (not b!7878749))

(assert (not b!7878754))

(assert (not b!7878753))

(assert (not b!7878745))

(assert (not b!7878751))

(assert (not b!7878755))

(assert tp_is_empty!52755)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7878813 () Bool)

(declare-fun res!3129139 () Bool)

(declare-fun e!4653050 () Bool)

(assert (=> b!7878813 (=> res!3129139 e!4653050)))

(assert (=> b!7878813 (= res!3129139 (not (is-Concat!30023 r2!6150)))))

(declare-fun e!4653054 () Bool)

(assert (=> b!7878813 (= e!4653054 e!4653050)))

(declare-fun b!7878814 () Bool)

(declare-fun e!4653052 () Bool)

(declare-fun call!730751 () Bool)

(assert (=> b!7878814 (= e!4653052 call!730751)))

(declare-fun b!7878815 () Bool)

(declare-fun e!4653049 () Bool)

(assert (=> b!7878815 (= e!4653049 e!4653052)))

(declare-fun res!3129140 () Bool)

(declare-fun nullable!9438 (Regex!21178) Bool)

(assert (=> b!7878815 (= res!3129140 (not (nullable!9438 (reg!21507 r2!6150))))))

(assert (=> b!7878815 (=> (not res!3129140) (not e!4653052))))

(declare-fun bm!730746 () Bool)

(declare-fun call!730753 () Bool)

(assert (=> bm!730746 (= call!730753 call!730751)))

(declare-fun d!2355908 () Bool)

(declare-fun res!3129137 () Bool)

(declare-fun e!4653053 () Bool)

(assert (=> d!2355908 (=> res!3129137 e!4653053)))

(assert (=> d!2355908 (= res!3129137 (is-ElementMatch!21178 r2!6150))))

(assert (=> d!2355908 (= (validRegex!11588 r2!6150) e!4653053)))

(declare-fun c!1446884 () Bool)

(declare-fun bm!730747 () Bool)

(declare-fun c!1446885 () Bool)

(assert (=> bm!730747 (= call!730751 (validRegex!11588 (ite c!1446884 (reg!21507 r2!6150) (ite c!1446885 (regOne!42869 r2!6150) (regTwo!42868 r2!6150)))))))

(declare-fun bm!730748 () Bool)

(declare-fun call!730752 () Bool)

(assert (=> bm!730748 (= call!730752 (validRegex!11588 (ite c!1446885 (regTwo!42869 r2!6150) (regOne!42868 r2!6150))))))

(declare-fun b!7878816 () Bool)

(assert (=> b!7878816 (= e!4653049 e!4653054)))

(assert (=> b!7878816 (= c!1446885 (is-Union!21178 r2!6150))))

(declare-fun b!7878817 () Bool)

(assert (=> b!7878817 (= e!4653053 e!4653049)))

(assert (=> b!7878817 (= c!1446884 (is-Star!21178 r2!6150))))

(declare-fun b!7878818 () Bool)

(declare-fun e!4653048 () Bool)

(assert (=> b!7878818 (= e!4653048 call!730753)))

(declare-fun b!7878819 () Bool)

(declare-fun res!3129138 () Bool)

(declare-fun e!4653051 () Bool)

(assert (=> b!7878819 (=> (not res!3129138) (not e!4653051))))

(assert (=> b!7878819 (= res!3129138 call!730753)))

(assert (=> b!7878819 (= e!4653054 e!4653051)))

(declare-fun b!7878820 () Bool)

(assert (=> b!7878820 (= e!4653051 call!730752)))

(declare-fun b!7878821 () Bool)

(assert (=> b!7878821 (= e!4653050 e!4653048)))

(declare-fun res!3129141 () Bool)

(assert (=> b!7878821 (=> (not res!3129141) (not e!4653048))))

(assert (=> b!7878821 (= res!3129141 call!730752)))

(assert (= (and d!2355908 (not res!3129137)) b!7878817))

(assert (= (and b!7878817 c!1446884) b!7878815))

(assert (= (and b!7878817 (not c!1446884)) b!7878816))

(assert (= (and b!7878815 res!3129140) b!7878814))

(assert (= (and b!7878816 c!1446885) b!7878819))

(assert (= (and b!7878816 (not c!1446885)) b!7878813))

(assert (= (and b!7878819 res!3129138) b!7878820))

(assert (= (and b!7878813 (not res!3129139)) b!7878821))

(assert (= (and b!7878821 res!3129141) b!7878818))

(assert (= (or b!7878820 b!7878821) bm!730748))

(assert (= (or b!7878819 b!7878818) bm!730746))

(assert (= (or b!7878814 bm!730746) bm!730747))

(declare-fun m!8267300 () Bool)

(assert (=> b!7878815 m!8267300))

(declare-fun m!8267302 () Bool)

(assert (=> bm!730747 m!8267302))

(declare-fun m!8267304 () Bool)

(assert (=> bm!730748 m!8267304))

(assert (=> b!7878748 d!2355908))

(declare-fun b!7878898 () Bool)

(declare-fun res!3129170 () Bool)

(declare-fun e!4653102 () Bool)

(assert (=> b!7878898 (=> (not res!3129170) (not e!4653102))))

(declare-fun call!730774 () Bool)

(assert (=> b!7878898 (= res!3129170 (not call!730774))))

(declare-fun b!7878899 () Bool)

(declare-fun e!4653099 () Bool)

(assert (=> b!7878899 (= e!4653099 (nullable!9438 (Union!21178 r1!6212 r2!6150)))))

(declare-fun b!7878900 () Bool)

(declare-fun res!3129175 () Bool)

(assert (=> b!7878900 (=> (not res!3129175) (not e!4653102))))

(declare-fun isEmpty!42405 (List!74037) Bool)

(declare-fun tail!15659 (List!74037) List!74037)

(assert (=> b!7878900 (= res!3129175 (isEmpty!42405 (tail!15659 s!14231)))))

(declare-fun b!7878901 () Bool)

(declare-fun res!3129168 () Bool)

(declare-fun e!4653100 () Bool)

(assert (=> b!7878901 (=> res!3129168 e!4653100)))

(assert (=> b!7878901 (= res!3129168 (not (is-ElementMatch!21178 (Union!21178 r1!6212 r2!6150))))))

(declare-fun e!4653103 () Bool)

(assert (=> b!7878901 (= e!4653103 e!4653100)))

(declare-fun b!7878902 () Bool)

(declare-fun head!16116 (List!74037) C!42682)

(assert (=> b!7878902 (= e!4653099 (matchR!10614 (derivativeStep!6407 (Union!21178 r1!6212 r2!6150) (head!16116 s!14231)) (tail!15659 s!14231)))))

(declare-fun b!7878904 () Bool)

(declare-fun e!4653104 () Bool)

(assert (=> b!7878904 (= e!4653104 e!4653103)))

(declare-fun c!1446911 () Bool)

(assert (=> b!7878904 (= c!1446911 (is-EmptyLang!21178 (Union!21178 r1!6212 r2!6150)))))

(declare-fun b!7878905 () Bool)

(declare-fun res!3129173 () Bool)

(assert (=> b!7878905 (=> res!3129173 e!4653100)))

(assert (=> b!7878905 (= res!3129173 e!4653102)))

(declare-fun res!3129174 () Bool)

(assert (=> b!7878905 (=> (not res!3129174) (not e!4653102))))

(declare-fun lt!2681159 () Bool)

(assert (=> b!7878905 (= res!3129174 lt!2681159)))

(declare-fun b!7878906 () Bool)

(declare-fun e!4653101 () Bool)

(declare-fun e!4653098 () Bool)

(assert (=> b!7878906 (= e!4653101 e!4653098)))

(declare-fun res!3129172 () Bool)

(assert (=> b!7878906 (=> res!3129172 e!4653098)))

(assert (=> b!7878906 (= res!3129172 call!730774)))

(declare-fun b!7878907 () Bool)

(assert (=> b!7878907 (= e!4653104 (= lt!2681159 call!730774))))

(declare-fun b!7878908 () Bool)

(assert (=> b!7878908 (= e!4653103 (not lt!2681159))))

(declare-fun b!7878909 () Bool)

(assert (=> b!7878909 (= e!4653102 (= (head!16116 s!14231) (c!1446878 (Union!21178 r1!6212 r2!6150))))))

(declare-fun b!7878910 () Bool)

(assert (=> b!7878910 (= e!4653098 (not (= (head!16116 s!14231) (c!1446878 (Union!21178 r1!6212 r2!6150)))))))

(declare-fun d!2355912 () Bool)

(assert (=> d!2355912 e!4653104))

(declare-fun c!1446913 () Bool)

(assert (=> d!2355912 (= c!1446913 (is-EmptyExpr!21178 (Union!21178 r1!6212 r2!6150)))))

(assert (=> d!2355912 (= lt!2681159 e!4653099)))

(declare-fun c!1446912 () Bool)

(assert (=> d!2355912 (= c!1446912 (isEmpty!42405 s!14231))))

(assert (=> d!2355912 (validRegex!11588 (Union!21178 r1!6212 r2!6150))))

(assert (=> d!2355912 (= (matchR!10614 (Union!21178 r1!6212 r2!6150) s!14231) lt!2681159)))

(declare-fun b!7878903 () Bool)

(assert (=> b!7878903 (= e!4653100 e!4653101)))

(declare-fun res!3129171 () Bool)

(assert (=> b!7878903 (=> (not res!3129171) (not e!4653101))))

(assert (=> b!7878903 (= res!3129171 (not lt!2681159))))

(declare-fun bm!730769 () Bool)

(assert (=> bm!730769 (= call!730774 (isEmpty!42405 s!14231))))

(declare-fun b!7878911 () Bool)

(declare-fun res!3129169 () Bool)

(assert (=> b!7878911 (=> res!3129169 e!4653098)))

(assert (=> b!7878911 (= res!3129169 (not (isEmpty!42405 (tail!15659 s!14231))))))

(assert (= (and d!2355912 c!1446912) b!7878899))

(assert (= (and d!2355912 (not c!1446912)) b!7878902))

(assert (= (and d!2355912 c!1446913) b!7878907))

(assert (= (and d!2355912 (not c!1446913)) b!7878904))

(assert (= (and b!7878904 c!1446911) b!7878908))

(assert (= (and b!7878904 (not c!1446911)) b!7878901))

(assert (= (and b!7878901 (not res!3129168)) b!7878905))

(assert (= (and b!7878905 res!3129174) b!7878898))

(assert (= (and b!7878898 res!3129170) b!7878900))

(assert (= (and b!7878900 res!3129175) b!7878909))

(assert (= (and b!7878905 (not res!3129173)) b!7878903))

(assert (= (and b!7878903 res!3129171) b!7878906))

(assert (= (and b!7878906 (not res!3129172)) b!7878911))

(assert (= (and b!7878911 (not res!3129169)) b!7878910))

(assert (= (or b!7878907 b!7878898 b!7878906) bm!730769))

(declare-fun m!8267314 () Bool)

(assert (=> b!7878909 m!8267314))

(declare-fun m!8267316 () Bool)

(assert (=> b!7878900 m!8267316))

(assert (=> b!7878900 m!8267316))

(declare-fun m!8267318 () Bool)

(assert (=> b!7878900 m!8267318))

(assert (=> b!7878911 m!8267316))

(assert (=> b!7878911 m!8267316))

(assert (=> b!7878911 m!8267318))

(assert (=> b!7878902 m!8267314))

(assert (=> b!7878902 m!8267314))

(declare-fun m!8267320 () Bool)

(assert (=> b!7878902 m!8267320))

(assert (=> b!7878902 m!8267316))

(assert (=> b!7878902 m!8267320))

(assert (=> b!7878902 m!8267316))

(declare-fun m!8267322 () Bool)

(assert (=> b!7878902 m!8267322))

(assert (=> b!7878910 m!8267314))

(declare-fun m!8267324 () Bool)

(assert (=> b!7878899 m!8267324))

(declare-fun m!8267326 () Bool)

(assert (=> bm!730769 m!8267326))

(assert (=> d!2355912 m!8267326))

(declare-fun m!8267328 () Bool)

(assert (=> d!2355912 m!8267328))

(assert (=> b!7878747 d!2355912))

(declare-fun b!7878968 () Bool)

(declare-fun c!1446934 () Bool)

(assert (=> b!7878968 (= c!1446934 (is-Union!21178 r1!6212))))

(declare-fun e!4653135 () Regex!21178)

(declare-fun e!4653138 () Regex!21178)

(assert (=> b!7878968 (= e!4653135 e!4653138)))

(declare-fun b!7878969 () Bool)

(declare-fun e!4653136 () Regex!21178)

(assert (=> b!7878969 (= e!4653136 EmptyLang!21178)))

(declare-fun b!7878970 () Bool)

(declare-fun e!4653137 () Regex!21178)

(declare-fun call!730786 () Regex!21178)

(assert (=> b!7878970 (= e!4653137 (Concat!30023 call!730786 r1!6212))))

(declare-fun bm!730782 () Bool)

(declare-fun call!730789 () Regex!21178)

(assert (=> bm!730782 (= call!730789 call!730786)))

(declare-fun bm!730783 () Bool)

(declare-fun call!730788 () Regex!21178)

(assert (=> bm!730783 (= call!730786 call!730788)))

(declare-fun b!7878971 () Bool)

(declare-fun call!730787 () Regex!21178)

(assert (=> b!7878971 (= e!4653138 (Union!21178 call!730787 call!730788))))

(declare-fun b!7878972 () Bool)

(declare-fun e!4653139 () Regex!21178)

(assert (=> b!7878972 (= e!4653139 (Union!21178 (Concat!30023 call!730789 (regTwo!42868 r1!6212)) call!730787))))

(declare-fun b!7878973 () Bool)

(assert (=> b!7878973 (= e!4653136 e!4653135)))

(declare-fun c!1446932 () Bool)

(assert (=> b!7878973 (= c!1446932 (is-ElementMatch!21178 r1!6212))))

(declare-fun b!7878974 () Bool)

(assert (=> b!7878974 (= e!4653135 (ite (= (h!80361 s!14231) (c!1446878 r1!6212)) EmptyExpr!21178 EmptyLang!21178))))

(declare-fun b!7878975 () Bool)

(assert (=> b!7878975 (= e!4653139 (Union!21178 (Concat!30023 call!730789 (regTwo!42868 r1!6212)) EmptyLang!21178))))

(declare-fun c!1446936 () Bool)

(declare-fun bm!730784 () Bool)

(assert (=> bm!730784 (= call!730788 (derivativeStep!6407 (ite c!1446934 (regTwo!42869 r1!6212) (ite c!1446936 (reg!21507 r1!6212) (regOne!42868 r1!6212))) (h!80361 s!14231)))))

(declare-fun bm!730781 () Bool)

(assert (=> bm!730781 (= call!730787 (derivativeStep!6407 (ite c!1446934 (regOne!42869 r1!6212) (regTwo!42868 r1!6212)) (h!80361 s!14231)))))

(declare-fun d!2355916 () Bool)

(declare-fun lt!2681167 () Regex!21178)

(assert (=> d!2355916 (validRegex!11588 lt!2681167)))

(assert (=> d!2355916 (= lt!2681167 e!4653136)))

(declare-fun c!1446933 () Bool)

(assert (=> d!2355916 (= c!1446933 (or (is-EmptyExpr!21178 r1!6212) (is-EmptyLang!21178 r1!6212)))))

(assert (=> d!2355916 (validRegex!11588 r1!6212)))

(assert (=> d!2355916 (= (derivativeStep!6407 r1!6212 (h!80361 s!14231)) lt!2681167)))

(declare-fun b!7878976 () Bool)

(declare-fun c!1446935 () Bool)

(assert (=> b!7878976 (= c!1446935 (nullable!9438 (regOne!42868 r1!6212)))))

(assert (=> b!7878976 (= e!4653137 e!4653139)))

(declare-fun b!7878977 () Bool)

(assert (=> b!7878977 (= e!4653138 e!4653137)))

(assert (=> b!7878977 (= c!1446936 (is-Star!21178 r1!6212))))

(assert (= (and d!2355916 c!1446933) b!7878969))

(assert (= (and d!2355916 (not c!1446933)) b!7878973))

(assert (= (and b!7878973 c!1446932) b!7878974))

(assert (= (and b!7878973 (not c!1446932)) b!7878968))

(assert (= (and b!7878968 c!1446934) b!7878971))

(assert (= (and b!7878968 (not c!1446934)) b!7878977))

(assert (= (and b!7878977 c!1446936) b!7878970))

(assert (= (and b!7878977 (not c!1446936)) b!7878976))

(assert (= (and b!7878976 c!1446935) b!7878972))

(assert (= (and b!7878976 (not c!1446935)) b!7878975))

(assert (= (or b!7878972 b!7878975) bm!730782))

(assert (= (or b!7878970 bm!730782) bm!730783))

(assert (= (or b!7878971 bm!730783) bm!730784))

(assert (= (or b!7878971 b!7878972) bm!730781))

(declare-fun m!8267342 () Bool)

(assert (=> bm!730784 m!8267342))

(declare-fun m!8267344 () Bool)

(assert (=> bm!730781 m!8267344))

(declare-fun m!8267346 () Bool)

(assert (=> d!2355916 m!8267346))

(assert (=> d!2355916 m!8267272))

(declare-fun m!8267348 () Bool)

(assert (=> b!7878976 m!8267348))

(assert (=> b!7878751 d!2355916))

(declare-fun d!2355922 () Bool)

(assert (=> d!2355922 (matchR!10614 (Union!21178 lt!2681144 lt!2681143) (t!388772 s!14231))))

(declare-fun lt!2681170 () Unit!168986)

(declare-fun choose!59692 (Regex!21178 Regex!21178 List!74037) Unit!168986)

(assert (=> d!2355922 (= lt!2681170 (choose!59692 lt!2681143 lt!2681144 (t!388772 s!14231)))))

(declare-fun e!4653146 () Bool)

(assert (=> d!2355922 e!4653146))

(declare-fun res!3129202 () Bool)

(assert (=> d!2355922 (=> (not res!3129202) (not e!4653146))))

(assert (=> d!2355922 (= res!3129202 (validRegex!11588 lt!2681143))))

(assert (=> d!2355922 (= (lemmaReversedUnionAcceptsSameString!51 lt!2681143 lt!2681144 (t!388772 s!14231)) lt!2681170)))

(declare-fun b!7878984 () Bool)

(assert (=> b!7878984 (= e!4653146 (validRegex!11588 lt!2681144))))

(assert (= (and d!2355922 res!3129202) b!7878984))

(assert (=> d!2355922 m!8267282))

(declare-fun m!8267350 () Bool)

(assert (=> d!2355922 m!8267350))

(declare-fun m!8267352 () Bool)

(assert (=> d!2355922 m!8267352))

(declare-fun m!8267354 () Bool)

(assert (=> b!7878984 m!8267354))

(assert (=> b!7878751 d!2355922))

(declare-fun b!7878985 () Bool)

(declare-fun res!3129205 () Bool)

(declare-fun e!4653149 () Bool)

(assert (=> b!7878985 (=> res!3129205 e!4653149)))

(assert (=> b!7878985 (= res!3129205 (not (is-Concat!30023 (Union!21178 r2!6150 r1!6212))))))

(declare-fun e!4653153 () Bool)

(assert (=> b!7878985 (= e!4653153 e!4653149)))

(declare-fun b!7878986 () Bool)

(declare-fun e!4653151 () Bool)

(declare-fun call!730792 () Bool)

(assert (=> b!7878986 (= e!4653151 call!730792)))

(declare-fun b!7878987 () Bool)

(declare-fun e!4653148 () Bool)

(assert (=> b!7878987 (= e!4653148 e!4653151)))

(declare-fun res!3129206 () Bool)

(assert (=> b!7878987 (= res!3129206 (not (nullable!9438 (reg!21507 (Union!21178 r2!6150 r1!6212)))))))

(assert (=> b!7878987 (=> (not res!3129206) (not e!4653151))))

(declare-fun bm!730787 () Bool)

(declare-fun call!730794 () Bool)

(assert (=> bm!730787 (= call!730794 call!730792)))

(declare-fun d!2355924 () Bool)

(declare-fun res!3129203 () Bool)

(declare-fun e!4653152 () Bool)

(assert (=> d!2355924 (=> res!3129203 e!4653152)))

(assert (=> d!2355924 (= res!3129203 (is-ElementMatch!21178 (Union!21178 r2!6150 r1!6212)))))

(assert (=> d!2355924 (= (validRegex!11588 (Union!21178 r2!6150 r1!6212)) e!4653152)))

(declare-fun c!1446937 () Bool)

(declare-fun bm!730788 () Bool)

(declare-fun c!1446938 () Bool)

(assert (=> bm!730788 (= call!730792 (validRegex!11588 (ite c!1446937 (reg!21507 (Union!21178 r2!6150 r1!6212)) (ite c!1446938 (regOne!42869 (Union!21178 r2!6150 r1!6212)) (regTwo!42868 (Union!21178 r2!6150 r1!6212))))))))

(declare-fun call!730793 () Bool)

(declare-fun bm!730789 () Bool)

(assert (=> bm!730789 (= call!730793 (validRegex!11588 (ite c!1446938 (regTwo!42869 (Union!21178 r2!6150 r1!6212)) (regOne!42868 (Union!21178 r2!6150 r1!6212)))))))

(declare-fun b!7878988 () Bool)

(assert (=> b!7878988 (= e!4653148 e!4653153)))

(assert (=> b!7878988 (= c!1446938 (is-Union!21178 (Union!21178 r2!6150 r1!6212)))))

(declare-fun b!7878989 () Bool)

(assert (=> b!7878989 (= e!4653152 e!4653148)))

(assert (=> b!7878989 (= c!1446937 (is-Star!21178 (Union!21178 r2!6150 r1!6212)))))

(declare-fun b!7878990 () Bool)

(declare-fun e!4653147 () Bool)

(assert (=> b!7878990 (= e!4653147 call!730794)))

(declare-fun b!7878991 () Bool)

(declare-fun res!3129204 () Bool)

(declare-fun e!4653150 () Bool)

(assert (=> b!7878991 (=> (not res!3129204) (not e!4653150))))

(assert (=> b!7878991 (= res!3129204 call!730794)))

(assert (=> b!7878991 (= e!4653153 e!4653150)))

(declare-fun b!7878992 () Bool)

(assert (=> b!7878992 (= e!4653150 call!730793)))

(declare-fun b!7878993 () Bool)

(assert (=> b!7878993 (= e!4653149 e!4653147)))

(declare-fun res!3129207 () Bool)

(assert (=> b!7878993 (=> (not res!3129207) (not e!4653147))))

(assert (=> b!7878993 (= res!3129207 call!730793)))

(assert (= (and d!2355924 (not res!3129203)) b!7878989))

(assert (= (and b!7878989 c!1446937) b!7878987))

(assert (= (and b!7878989 (not c!1446937)) b!7878988))

(assert (= (and b!7878987 res!3129206) b!7878986))

(assert (= (and b!7878988 c!1446938) b!7878991))

(assert (= (and b!7878988 (not c!1446938)) b!7878985))

(assert (= (and b!7878991 res!3129204) b!7878992))

(assert (= (and b!7878985 (not res!3129205)) b!7878993))

(assert (= (and b!7878993 res!3129207) b!7878990))

(assert (= (or b!7878992 b!7878993) bm!730789))

(assert (= (or b!7878991 b!7878990) bm!730787))

(assert (= (or b!7878986 bm!730787) bm!730788))

(declare-fun m!8267356 () Bool)

(assert (=> b!7878987 m!8267356))

(declare-fun m!8267358 () Bool)

(assert (=> bm!730788 m!8267358))

(declare-fun m!8267360 () Bool)

(assert (=> bm!730789 m!8267360))

(assert (=> b!7878751 d!2355924))

(declare-fun b!7879008 () Bool)

(declare-fun c!1446944 () Bool)

(assert (=> b!7879008 (= c!1446944 (is-Union!21178 r2!6150))))

(declare-fun e!4653161 () Regex!21178)

(declare-fun e!4653164 () Regex!21178)

(assert (=> b!7879008 (= e!4653161 e!4653164)))

(declare-fun b!7879009 () Bool)

(declare-fun e!4653162 () Regex!21178)

(assert (=> b!7879009 (= e!4653162 EmptyLang!21178)))

(declare-fun b!7879010 () Bool)

(declare-fun e!4653163 () Regex!21178)

(declare-fun call!730796 () Regex!21178)

(assert (=> b!7879010 (= e!4653163 (Concat!30023 call!730796 r2!6150))))

(declare-fun bm!730792 () Bool)

(declare-fun call!730799 () Regex!21178)

(assert (=> bm!730792 (= call!730799 call!730796)))

(declare-fun bm!730793 () Bool)

(declare-fun call!730798 () Regex!21178)

(assert (=> bm!730793 (= call!730796 call!730798)))

(declare-fun b!7879011 () Bool)

(declare-fun call!730797 () Regex!21178)

(assert (=> b!7879011 (= e!4653164 (Union!21178 call!730797 call!730798))))

(declare-fun b!7879012 () Bool)

(declare-fun e!4653165 () Regex!21178)

(assert (=> b!7879012 (= e!4653165 (Union!21178 (Concat!30023 call!730799 (regTwo!42868 r2!6150)) call!730797))))

(declare-fun b!7879013 () Bool)

(assert (=> b!7879013 (= e!4653162 e!4653161)))

(declare-fun c!1446942 () Bool)

(assert (=> b!7879013 (= c!1446942 (is-ElementMatch!21178 r2!6150))))

(declare-fun b!7879014 () Bool)

(assert (=> b!7879014 (= e!4653161 (ite (= (h!80361 s!14231) (c!1446878 r2!6150)) EmptyExpr!21178 EmptyLang!21178))))

(declare-fun b!7879015 () Bool)

(assert (=> b!7879015 (= e!4653165 (Union!21178 (Concat!30023 call!730799 (regTwo!42868 r2!6150)) EmptyLang!21178))))

(declare-fun bm!730794 () Bool)

(declare-fun c!1446946 () Bool)

(assert (=> bm!730794 (= call!730798 (derivativeStep!6407 (ite c!1446944 (regTwo!42869 r2!6150) (ite c!1446946 (reg!21507 r2!6150) (regOne!42868 r2!6150))) (h!80361 s!14231)))))

(declare-fun bm!730791 () Bool)

(assert (=> bm!730791 (= call!730797 (derivativeStep!6407 (ite c!1446944 (regOne!42869 r2!6150) (regTwo!42868 r2!6150)) (h!80361 s!14231)))))

(declare-fun d!2355926 () Bool)

(declare-fun lt!2681172 () Regex!21178)

(assert (=> d!2355926 (validRegex!11588 lt!2681172)))

(assert (=> d!2355926 (= lt!2681172 e!4653162)))

(declare-fun c!1446943 () Bool)

(assert (=> d!2355926 (= c!1446943 (or (is-EmptyExpr!21178 r2!6150) (is-EmptyLang!21178 r2!6150)))))

(assert (=> d!2355926 (validRegex!11588 r2!6150)))

(assert (=> d!2355926 (= (derivativeStep!6407 r2!6150 (h!80361 s!14231)) lt!2681172)))

(declare-fun b!7879016 () Bool)

(declare-fun c!1446945 () Bool)

(assert (=> b!7879016 (= c!1446945 (nullable!9438 (regOne!42868 r2!6150)))))

(assert (=> b!7879016 (= e!4653163 e!4653165)))

(declare-fun b!7879017 () Bool)

(assert (=> b!7879017 (= e!4653164 e!4653163)))

(assert (=> b!7879017 (= c!1446946 (is-Star!21178 r2!6150))))

(assert (= (and d!2355926 c!1446943) b!7879009))

(assert (= (and d!2355926 (not c!1446943)) b!7879013))

(assert (= (and b!7879013 c!1446942) b!7879014))

(assert (= (and b!7879013 (not c!1446942)) b!7879008))

(assert (= (and b!7879008 c!1446944) b!7879011))

(assert (= (and b!7879008 (not c!1446944)) b!7879017))

(assert (= (and b!7879017 c!1446946) b!7879010))

(assert (= (and b!7879017 (not c!1446946)) b!7879016))

(assert (= (and b!7879016 c!1446945) b!7879012))

(assert (= (and b!7879016 (not c!1446945)) b!7879015))

(assert (= (or b!7879012 b!7879015) bm!730792))

(assert (= (or b!7879010 bm!730792) bm!730793))

(assert (= (or b!7879011 bm!730793) bm!730794))

(assert (= (or b!7879011 b!7879012) bm!730791))

(declare-fun m!8267370 () Bool)

(assert (=> bm!730794 m!8267370))

(declare-fun m!8267372 () Bool)

(assert (=> bm!730791 m!8267372))

(declare-fun m!8267376 () Bool)

(assert (=> d!2355926 m!8267376))

(assert (=> d!2355926 m!8267270))

(declare-fun m!8267380 () Bool)

(assert (=> b!7879016 m!8267380))

(assert (=> b!7878751 d!2355926))

(declare-fun b!7879018 () Bool)

(declare-fun res!3129218 () Bool)

(declare-fun e!4653170 () Bool)

(assert (=> b!7879018 (=> (not res!3129218) (not e!4653170))))

(declare-fun call!730800 () Bool)

(assert (=> b!7879018 (= res!3129218 (not call!730800))))

(declare-fun b!7879019 () Bool)

(declare-fun e!4653167 () Bool)

(assert (=> b!7879019 (= e!4653167 (nullable!9438 (Union!21178 lt!2681144 lt!2681143)))))

(declare-fun b!7879020 () Bool)

(declare-fun res!3129223 () Bool)

(assert (=> b!7879020 (=> (not res!3129223) (not e!4653170))))

(assert (=> b!7879020 (= res!3129223 (isEmpty!42405 (tail!15659 (t!388772 s!14231))))))

(declare-fun b!7879021 () Bool)

(declare-fun res!3129216 () Bool)

(declare-fun e!4653168 () Bool)

(assert (=> b!7879021 (=> res!3129216 e!4653168)))

(assert (=> b!7879021 (= res!3129216 (not (is-ElementMatch!21178 (Union!21178 lt!2681144 lt!2681143))))))

(declare-fun e!4653171 () Bool)

(assert (=> b!7879021 (= e!4653171 e!4653168)))

(declare-fun b!7879022 () Bool)

(assert (=> b!7879022 (= e!4653167 (matchR!10614 (derivativeStep!6407 (Union!21178 lt!2681144 lt!2681143) (head!16116 (t!388772 s!14231))) (tail!15659 (t!388772 s!14231))))))

(declare-fun b!7879024 () Bool)

(declare-fun e!4653172 () Bool)

(assert (=> b!7879024 (= e!4653172 e!4653171)))

(declare-fun c!1446947 () Bool)

(assert (=> b!7879024 (= c!1446947 (is-EmptyLang!21178 (Union!21178 lt!2681144 lt!2681143)))))

(declare-fun b!7879025 () Bool)

(declare-fun res!3129221 () Bool)

(assert (=> b!7879025 (=> res!3129221 e!4653168)))

(assert (=> b!7879025 (= res!3129221 e!4653170)))

(declare-fun res!3129222 () Bool)

(assert (=> b!7879025 (=> (not res!3129222) (not e!4653170))))

(declare-fun lt!2681173 () Bool)

(assert (=> b!7879025 (= res!3129222 lt!2681173)))

(declare-fun b!7879026 () Bool)

(declare-fun e!4653169 () Bool)

(declare-fun e!4653166 () Bool)

(assert (=> b!7879026 (= e!4653169 e!4653166)))

(declare-fun res!3129220 () Bool)

(assert (=> b!7879026 (=> res!3129220 e!4653166)))

(assert (=> b!7879026 (= res!3129220 call!730800)))

(declare-fun b!7879027 () Bool)

(assert (=> b!7879027 (= e!4653172 (= lt!2681173 call!730800))))

(declare-fun b!7879028 () Bool)

(assert (=> b!7879028 (= e!4653171 (not lt!2681173))))

(declare-fun b!7879029 () Bool)

(assert (=> b!7879029 (= e!4653170 (= (head!16116 (t!388772 s!14231)) (c!1446878 (Union!21178 lt!2681144 lt!2681143))))))

(declare-fun b!7879030 () Bool)

(assert (=> b!7879030 (= e!4653166 (not (= (head!16116 (t!388772 s!14231)) (c!1446878 (Union!21178 lt!2681144 lt!2681143)))))))

(declare-fun d!2355928 () Bool)

(assert (=> d!2355928 e!4653172))

(declare-fun c!1446949 () Bool)

(assert (=> d!2355928 (= c!1446949 (is-EmptyExpr!21178 (Union!21178 lt!2681144 lt!2681143)))))

(assert (=> d!2355928 (= lt!2681173 e!4653167)))

(declare-fun c!1446948 () Bool)

(assert (=> d!2355928 (= c!1446948 (isEmpty!42405 (t!388772 s!14231)))))

(assert (=> d!2355928 (validRegex!11588 (Union!21178 lt!2681144 lt!2681143))))

(assert (=> d!2355928 (= (matchR!10614 (Union!21178 lt!2681144 lt!2681143) (t!388772 s!14231)) lt!2681173)))

(declare-fun b!7879023 () Bool)

(assert (=> b!7879023 (= e!4653168 e!4653169)))

(declare-fun res!3129219 () Bool)

(assert (=> b!7879023 (=> (not res!3129219) (not e!4653169))))

(assert (=> b!7879023 (= res!3129219 (not lt!2681173))))

(declare-fun bm!730795 () Bool)

(assert (=> bm!730795 (= call!730800 (isEmpty!42405 (t!388772 s!14231)))))

(declare-fun b!7879031 () Bool)

(declare-fun res!3129217 () Bool)

(assert (=> b!7879031 (=> res!3129217 e!4653166)))

(assert (=> b!7879031 (= res!3129217 (not (isEmpty!42405 (tail!15659 (t!388772 s!14231)))))))

(assert (= (and d!2355928 c!1446948) b!7879019))

(assert (= (and d!2355928 (not c!1446948)) b!7879022))

(assert (= (and d!2355928 c!1446949) b!7879027))

(assert (= (and d!2355928 (not c!1446949)) b!7879024))

(assert (= (and b!7879024 c!1446947) b!7879028))

(assert (= (and b!7879024 (not c!1446947)) b!7879021))

(assert (= (and b!7879021 (not res!3129216)) b!7879025))

(assert (= (and b!7879025 res!3129222) b!7879018))

(assert (= (and b!7879018 res!3129218) b!7879020))

(assert (= (and b!7879020 res!3129223) b!7879029))

(assert (= (and b!7879025 (not res!3129221)) b!7879023))

(assert (= (and b!7879023 res!3129219) b!7879026))

(assert (= (and b!7879026 (not res!3129220)) b!7879031))

(assert (= (and b!7879031 (not res!3129217)) b!7879030))

(assert (= (or b!7879027 b!7879018 b!7879026) bm!730795))

(declare-fun m!8267386 () Bool)

(assert (=> b!7879029 m!8267386))

(declare-fun m!8267388 () Bool)

(assert (=> b!7879020 m!8267388))

(assert (=> b!7879020 m!8267388))

(declare-fun m!8267390 () Bool)

(assert (=> b!7879020 m!8267390))

(assert (=> b!7879031 m!8267388))

(assert (=> b!7879031 m!8267388))

(assert (=> b!7879031 m!8267390))

(assert (=> b!7879022 m!8267386))

(assert (=> b!7879022 m!8267386))

(declare-fun m!8267392 () Bool)

(assert (=> b!7879022 m!8267392))

(assert (=> b!7879022 m!8267388))

(assert (=> b!7879022 m!8267392))

(assert (=> b!7879022 m!8267388))

(declare-fun m!8267394 () Bool)

(assert (=> b!7879022 m!8267394))

(assert (=> b!7879030 m!8267386))

(declare-fun m!8267398 () Bool)

(assert (=> b!7879019 m!8267398))

(declare-fun m!8267402 () Bool)

(assert (=> bm!730795 m!8267402))

(assert (=> d!2355928 m!8267402))

(declare-fun m!8267406 () Bool)

(assert (=> d!2355928 m!8267406))

(assert (=> b!7878751 d!2355928))

(declare-fun b!7879042 () Bool)

(declare-fun res!3129226 () Bool)

(declare-fun e!4653180 () Bool)

(assert (=> b!7879042 (=> res!3129226 e!4653180)))

(assert (=> b!7879042 (= res!3129226 (not (is-Concat!30023 r1!6212)))))

(declare-fun e!4653184 () Bool)

(assert (=> b!7879042 (= e!4653184 e!4653180)))

(declare-fun b!7879043 () Bool)

(declare-fun e!4653182 () Bool)

(declare-fun call!730805 () Bool)

(assert (=> b!7879043 (= e!4653182 call!730805)))

(declare-fun b!7879044 () Bool)

(declare-fun e!4653179 () Bool)

(assert (=> b!7879044 (= e!4653179 e!4653182)))

(declare-fun res!3129227 () Bool)

(assert (=> b!7879044 (= res!3129227 (not (nullable!9438 (reg!21507 r1!6212))))))

(assert (=> b!7879044 (=> (not res!3129227) (not e!4653182))))

(declare-fun bm!730800 () Bool)

(declare-fun call!730807 () Bool)

(assert (=> bm!730800 (= call!730807 call!730805)))

(declare-fun d!2355932 () Bool)

(declare-fun res!3129224 () Bool)

(declare-fun e!4653183 () Bool)

(assert (=> d!2355932 (=> res!3129224 e!4653183)))

(assert (=> d!2355932 (= res!3129224 (is-ElementMatch!21178 r1!6212))))

(assert (=> d!2355932 (= (validRegex!11588 r1!6212) e!4653183)))

(declare-fun bm!730801 () Bool)

(declare-fun c!1446956 () Bool)

(declare-fun c!1446955 () Bool)

(assert (=> bm!730801 (= call!730805 (validRegex!11588 (ite c!1446955 (reg!21507 r1!6212) (ite c!1446956 (regOne!42869 r1!6212) (regTwo!42868 r1!6212)))))))

(declare-fun bm!730802 () Bool)

(declare-fun call!730806 () Bool)

(assert (=> bm!730802 (= call!730806 (validRegex!11588 (ite c!1446956 (regTwo!42869 r1!6212) (regOne!42868 r1!6212))))))

(declare-fun b!7879045 () Bool)

(assert (=> b!7879045 (= e!4653179 e!4653184)))

(assert (=> b!7879045 (= c!1446956 (is-Union!21178 r1!6212))))

(declare-fun b!7879046 () Bool)

(assert (=> b!7879046 (= e!4653183 e!4653179)))

(assert (=> b!7879046 (= c!1446955 (is-Star!21178 r1!6212))))

(declare-fun b!7879047 () Bool)

(declare-fun e!4653178 () Bool)

(assert (=> b!7879047 (= e!4653178 call!730807)))

(declare-fun b!7879048 () Bool)

(declare-fun res!3129225 () Bool)

(declare-fun e!4653181 () Bool)

(assert (=> b!7879048 (=> (not res!3129225) (not e!4653181))))

(assert (=> b!7879048 (= res!3129225 call!730807)))

(assert (=> b!7879048 (= e!4653184 e!4653181)))

(declare-fun b!7879049 () Bool)

(assert (=> b!7879049 (= e!4653181 call!730806)))

(declare-fun b!7879050 () Bool)

(assert (=> b!7879050 (= e!4653180 e!4653178)))

(declare-fun res!3129228 () Bool)

(assert (=> b!7879050 (=> (not res!3129228) (not e!4653178))))

(assert (=> b!7879050 (= res!3129228 call!730806)))

(assert (= (and d!2355932 (not res!3129224)) b!7879046))

(assert (= (and b!7879046 c!1446955) b!7879044))

(assert (= (and b!7879046 (not c!1446955)) b!7879045))

(assert (= (and b!7879044 res!3129227) b!7879043))

(assert (= (and b!7879045 c!1446956) b!7879048))

(assert (= (and b!7879045 (not c!1446956)) b!7879042))

(assert (= (and b!7879048 res!3129225) b!7879049))

(assert (= (and b!7879042 (not res!3129226)) b!7879050))

(assert (= (and b!7879050 res!3129228) b!7879047))

(assert (= (or b!7879049 b!7879050) bm!730802))

(assert (= (or b!7879048 b!7879047) bm!730800))

(assert (= (or b!7879043 bm!730800) bm!730801))

(declare-fun m!8267410 () Bool)

(assert (=> b!7879044 m!8267410))

(declare-fun m!8267412 () Bool)

(assert (=> bm!730801 m!8267412))

(declare-fun m!8267414 () Bool)

(assert (=> bm!730802 m!8267414))

(assert (=> start!744208 d!2355932))

(declare-fun e!4653201 () Bool)

(assert (=> b!7878743 (= tp!2340865 e!4653201)))

(declare-fun b!7879087 () Bool)

(declare-fun tp!2340920 () Bool)

(declare-fun tp!2340922 () Bool)

(assert (=> b!7879087 (= e!4653201 (and tp!2340920 tp!2340922))))

(declare-fun b!7879085 () Bool)

(declare-fun tp!2340923 () Bool)

(declare-fun tp!2340919 () Bool)

(assert (=> b!7879085 (= e!4653201 (and tp!2340923 tp!2340919))))

(declare-fun b!7879086 () Bool)

(declare-fun tp!2340921 () Bool)

(assert (=> b!7879086 (= e!4653201 tp!2340921)))

(declare-fun b!7879084 () Bool)

(assert (=> b!7879084 (= e!4653201 tp_is_empty!52755)))

(assert (= (and b!7878743 (is-ElementMatch!21178 (reg!21507 r1!6212))) b!7879084))

(assert (= (and b!7878743 (is-Concat!30023 (reg!21507 r1!6212))) b!7879085))

(assert (= (and b!7878743 (is-Star!21178 (reg!21507 r1!6212))) b!7879086))

(assert (= (and b!7878743 (is-Union!21178 (reg!21507 r1!6212))) b!7879087))

(declare-fun e!4653202 () Bool)

(assert (=> b!7878754 (= tp!2340875 e!4653202)))

(declare-fun b!7879091 () Bool)

(declare-fun tp!2340925 () Bool)

(declare-fun tp!2340927 () Bool)

(assert (=> b!7879091 (= e!4653202 (and tp!2340925 tp!2340927))))

(declare-fun b!7879089 () Bool)

(declare-fun tp!2340928 () Bool)

(declare-fun tp!2340924 () Bool)

(assert (=> b!7879089 (= e!4653202 (and tp!2340928 tp!2340924))))

(declare-fun b!7879090 () Bool)

(declare-fun tp!2340926 () Bool)

(assert (=> b!7879090 (= e!4653202 tp!2340926)))

(declare-fun b!7879088 () Bool)

(assert (=> b!7879088 (= e!4653202 tp_is_empty!52755)))

(assert (= (and b!7878754 (is-ElementMatch!21178 (reg!21507 r2!6150))) b!7879088))

(assert (= (and b!7878754 (is-Concat!30023 (reg!21507 r2!6150))) b!7879089))

(assert (= (and b!7878754 (is-Star!21178 (reg!21507 r2!6150))) b!7879090))

(assert (= (and b!7878754 (is-Union!21178 (reg!21507 r2!6150))) b!7879091))

(declare-fun e!4653203 () Bool)

(assert (=> b!7878753 (= tp!2340873 e!4653203)))

(declare-fun b!7879095 () Bool)

(declare-fun tp!2340930 () Bool)

(declare-fun tp!2340932 () Bool)

(assert (=> b!7879095 (= e!4653203 (and tp!2340930 tp!2340932))))

(declare-fun b!7879093 () Bool)

(declare-fun tp!2340933 () Bool)

(declare-fun tp!2340929 () Bool)

(assert (=> b!7879093 (= e!4653203 (and tp!2340933 tp!2340929))))

(declare-fun b!7879094 () Bool)

(declare-fun tp!2340931 () Bool)

(assert (=> b!7879094 (= e!4653203 tp!2340931)))

(declare-fun b!7879092 () Bool)

(assert (=> b!7879092 (= e!4653203 tp_is_empty!52755)))

(assert (= (and b!7878753 (is-ElementMatch!21178 (regOne!42869 r1!6212))) b!7879092))

(assert (= (and b!7878753 (is-Concat!30023 (regOne!42869 r1!6212))) b!7879093))

(assert (= (and b!7878753 (is-Star!21178 (regOne!42869 r1!6212))) b!7879094))

(assert (= (and b!7878753 (is-Union!21178 (regOne!42869 r1!6212))) b!7879095))

(declare-fun e!4653204 () Bool)

(assert (=> b!7878753 (= tp!2340874 e!4653204)))

(declare-fun b!7879099 () Bool)

(declare-fun tp!2340935 () Bool)

(declare-fun tp!2340937 () Bool)

(assert (=> b!7879099 (= e!4653204 (and tp!2340935 tp!2340937))))

(declare-fun b!7879097 () Bool)

(declare-fun tp!2340938 () Bool)

(declare-fun tp!2340934 () Bool)

(assert (=> b!7879097 (= e!4653204 (and tp!2340938 tp!2340934))))

(declare-fun b!7879098 () Bool)

(declare-fun tp!2340936 () Bool)

(assert (=> b!7879098 (= e!4653204 tp!2340936)))

(declare-fun b!7879096 () Bool)

(assert (=> b!7879096 (= e!4653204 tp_is_empty!52755)))

(assert (= (and b!7878753 (is-ElementMatch!21178 (regTwo!42869 r1!6212))) b!7879096))

(assert (= (and b!7878753 (is-Concat!30023 (regTwo!42869 r1!6212))) b!7879097))

(assert (= (and b!7878753 (is-Star!21178 (regTwo!42869 r1!6212))) b!7879098))

(assert (= (and b!7878753 (is-Union!21178 (regTwo!42869 r1!6212))) b!7879099))

(declare-fun e!4653212 () Bool)

(assert (=> b!7878752 (= tp!2340868 e!4653212)))

(declare-fun b!7879112 () Bool)

(declare-fun tp!2340940 () Bool)

(declare-fun tp!2340942 () Bool)

(assert (=> b!7879112 (= e!4653212 (and tp!2340940 tp!2340942))))

(declare-fun b!7879110 () Bool)

(declare-fun tp!2340943 () Bool)

(declare-fun tp!2340939 () Bool)

(assert (=> b!7879110 (= e!4653212 (and tp!2340943 tp!2340939))))

(declare-fun b!7879111 () Bool)

(declare-fun tp!2340941 () Bool)

(assert (=> b!7879111 (= e!4653212 tp!2340941)))

(declare-fun b!7879109 () Bool)

(assert (=> b!7879109 (= e!4653212 tp_is_empty!52755)))

(assert (= (and b!7878752 (is-ElementMatch!21178 (regOne!42869 r2!6150))) b!7879109))

(assert (= (and b!7878752 (is-Concat!30023 (regOne!42869 r2!6150))) b!7879110))

(assert (= (and b!7878752 (is-Star!21178 (regOne!42869 r2!6150))) b!7879111))

(assert (= (and b!7878752 (is-Union!21178 (regOne!42869 r2!6150))) b!7879112))

(declare-fun e!4653213 () Bool)

(assert (=> b!7878752 (= tp!2340867 e!4653213)))

(declare-fun b!7879116 () Bool)

(declare-fun tp!2340945 () Bool)

(declare-fun tp!2340947 () Bool)

(assert (=> b!7879116 (= e!4653213 (and tp!2340945 tp!2340947))))

(declare-fun b!7879114 () Bool)

(declare-fun tp!2340948 () Bool)

(declare-fun tp!2340944 () Bool)

(assert (=> b!7879114 (= e!4653213 (and tp!2340948 tp!2340944))))

(declare-fun b!7879115 () Bool)

(declare-fun tp!2340946 () Bool)

(assert (=> b!7879115 (= e!4653213 tp!2340946)))

(declare-fun b!7879113 () Bool)

(assert (=> b!7879113 (= e!4653213 tp_is_empty!52755)))

(assert (= (and b!7878752 (is-ElementMatch!21178 (regTwo!42869 r2!6150))) b!7879113))

(assert (= (and b!7878752 (is-Concat!30023 (regTwo!42869 r2!6150))) b!7879114))

(assert (= (and b!7878752 (is-Star!21178 (regTwo!42869 r2!6150))) b!7879115))

(assert (= (and b!7878752 (is-Union!21178 (regTwo!42869 r2!6150))) b!7879116))

(declare-fun e!4653214 () Bool)

(assert (=> b!7878745 (= tp!2340872 e!4653214)))

(declare-fun b!7879120 () Bool)

(declare-fun tp!2340950 () Bool)

(declare-fun tp!2340952 () Bool)

(assert (=> b!7879120 (= e!4653214 (and tp!2340950 tp!2340952))))

(declare-fun b!7879118 () Bool)

(declare-fun tp!2340953 () Bool)

(declare-fun tp!2340949 () Bool)

(assert (=> b!7879118 (= e!4653214 (and tp!2340953 tp!2340949))))

(declare-fun b!7879119 () Bool)

(declare-fun tp!2340951 () Bool)

(assert (=> b!7879119 (= e!4653214 tp!2340951)))

(declare-fun b!7879117 () Bool)

(assert (=> b!7879117 (= e!4653214 tp_is_empty!52755)))

(assert (= (and b!7878745 (is-ElementMatch!21178 (regOne!42868 r2!6150))) b!7879117))

(assert (= (and b!7878745 (is-Concat!30023 (regOne!42868 r2!6150))) b!7879118))

(assert (= (and b!7878745 (is-Star!21178 (regOne!42868 r2!6150))) b!7879119))

(assert (= (and b!7878745 (is-Union!21178 (regOne!42868 r2!6150))) b!7879120))

(declare-fun e!4653215 () Bool)

(assert (=> b!7878745 (= tp!2340871 e!4653215)))

(declare-fun b!7879124 () Bool)

(declare-fun tp!2340955 () Bool)

(declare-fun tp!2340957 () Bool)

(assert (=> b!7879124 (= e!4653215 (and tp!2340955 tp!2340957))))

(declare-fun b!7879122 () Bool)

(declare-fun tp!2340958 () Bool)

(declare-fun tp!2340954 () Bool)

(assert (=> b!7879122 (= e!4653215 (and tp!2340958 tp!2340954))))

(declare-fun b!7879123 () Bool)

(declare-fun tp!2340956 () Bool)

(assert (=> b!7879123 (= e!4653215 tp!2340956)))

(declare-fun b!7879121 () Bool)

(assert (=> b!7879121 (= e!4653215 tp_is_empty!52755)))

(assert (= (and b!7878745 (is-ElementMatch!21178 (regTwo!42868 r2!6150))) b!7879121))

(assert (= (and b!7878745 (is-Concat!30023 (regTwo!42868 r2!6150))) b!7879122))

(assert (= (and b!7878745 (is-Star!21178 (regTwo!42868 r2!6150))) b!7879123))

(assert (= (and b!7878745 (is-Union!21178 (regTwo!42868 r2!6150))) b!7879124))

(declare-fun e!4653218 () Bool)

(assert (=> b!7878755 (= tp!2340869 e!4653218)))

(declare-fun b!7879134 () Bool)

(declare-fun tp!2340960 () Bool)

(declare-fun tp!2340962 () Bool)

(assert (=> b!7879134 (= e!4653218 (and tp!2340960 tp!2340962))))

(declare-fun b!7879132 () Bool)

(declare-fun tp!2340963 () Bool)

(declare-fun tp!2340959 () Bool)

(assert (=> b!7879132 (= e!4653218 (and tp!2340963 tp!2340959))))

(declare-fun b!7879133 () Bool)

(declare-fun tp!2340961 () Bool)

(assert (=> b!7879133 (= e!4653218 tp!2340961)))

(declare-fun b!7879131 () Bool)

(assert (=> b!7879131 (= e!4653218 tp_is_empty!52755)))

(assert (= (and b!7878755 (is-ElementMatch!21178 (regOne!42868 r1!6212))) b!7879131))

(assert (= (and b!7878755 (is-Concat!30023 (regOne!42868 r1!6212))) b!7879132))

(assert (= (and b!7878755 (is-Star!21178 (regOne!42868 r1!6212))) b!7879133))

(assert (= (and b!7878755 (is-Union!21178 (regOne!42868 r1!6212))) b!7879134))

(declare-fun e!4653219 () Bool)

(assert (=> b!7878755 (= tp!2340866 e!4653219)))

(declare-fun b!7879138 () Bool)

(declare-fun tp!2340969 () Bool)

(declare-fun tp!2340971 () Bool)

(assert (=> b!7879138 (= e!4653219 (and tp!2340969 tp!2340971))))

(declare-fun b!7879136 () Bool)

(declare-fun tp!2340972 () Bool)

(declare-fun tp!2340968 () Bool)

(assert (=> b!7879136 (= e!4653219 (and tp!2340972 tp!2340968))))

(declare-fun b!7879137 () Bool)

(declare-fun tp!2340970 () Bool)

(assert (=> b!7879137 (= e!4653219 tp!2340970)))

(declare-fun b!7879135 () Bool)

(assert (=> b!7879135 (= e!4653219 tp_is_empty!52755)))

(assert (= (and b!7878755 (is-ElementMatch!21178 (regTwo!42868 r1!6212))) b!7879135))

(assert (= (and b!7878755 (is-Concat!30023 (regTwo!42868 r1!6212))) b!7879136))

(assert (= (and b!7878755 (is-Star!21178 (regTwo!42868 r1!6212))) b!7879137))

(assert (= (and b!7878755 (is-Union!21178 (regTwo!42868 r1!6212))) b!7879138))

(declare-fun b!7879147 () Bool)

(declare-fun e!4653222 () Bool)

(declare-fun tp!2340981 () Bool)

(assert (=> b!7879147 (= e!4653222 (and tp_is_empty!52755 tp!2340981))))

(assert (=> b!7878749 (= tp!2340870 e!4653222)))

(assert (= (and b!7878749 (is-Cons!73913 (t!388772 s!14231))) b!7879147))

(push 1)

(assert (not d!2355922))

(assert (not b!7879137))

(assert (not b!7879016))

(assert (not b!7879116))

(assert (not b!7879112))

(assert (not bm!730769))

(assert (not b!7878909))

(assert (not b!7879147))

(assert (not b!7879031))

(assert (not b!7879090))

(assert (not b!7879133))

(assert (not b!7879114))

(assert (not bm!730747))

(assert (not b!7878987))

(assert (not b!7879111))

(assert (not bm!730791))

(assert (not bm!730748))

(assert (not b!7879132))

(assert (not b!7879094))

(assert (not b!7879085))

(assert (not b!7878976))

(assert (not bm!730789))

(assert (not b!7879123))

(assert (not b!7878900))

(assert (not b!7879099))

(assert (not bm!730781))

(assert (not b!7879029))

(assert (not bm!730802))

(assert (not b!7878902))

(assert (not b!7879086))

(assert (not b!7879087))

(assert (not b!7878815))

(assert (not b!7879098))

(assert (not b!7879030))

(assert (not b!7878911))

(assert (not b!7878910))

(assert (not d!2355916))

(assert (not bm!730794))

(assert (not bm!730795))

(assert (not b!7878984))

(assert (not d!2355926))

(assert (not b!7879118))

(assert (not b!7879097))

(assert (not bm!730784))

(assert (not b!7879020))

(assert (not b!7879120))

(assert (not b!7879095))

(assert (not b!7879124))

(assert (not b!7879134))

(assert (not b!7879136))

(assert (not d!2355912))

(assert (not b!7879119))

(assert (not b!7879093))

(assert tp_is_empty!52755)

(assert (not d!2355928))

(assert (not b!7879089))

(assert (not b!7879019))

(assert (not b!7879110))

(assert (not b!7879138))

(assert (not b!7879115))

(assert (not bm!730801))

(assert (not bm!730788))

(assert (not b!7879091))

(assert (not b!7879022))

(assert (not b!7879122))

(assert (not b!7879044))

(assert (not b!7878899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

