; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283190 () Bool)

(assert start!283190)

(declare-fun b!2908898 () Bool)

(declare-fun e!1836129 () Bool)

(declare-fun tp_is_empty!15441 () Bool)

(assert (=> b!2908898 (= e!1836129 tp_is_empty!15441)))

(declare-fun b!2908899 () Bool)

(declare-fun e!1836131 () Bool)

(declare-datatypes ((C!18036 0))(
  ( (C!18037 (val!11052 Int)) )
))
(declare-datatypes ((List!34764 0))(
  ( (Nil!34640) (Cons!34640 (h!40060 C!18036) (t!233807 List!34764)) )
))
(declare-fun prefix!1309 () List!34764)

(declare-fun size!26390 (List!34764) Int)

(declare-fun tail!4672 (List!34764) List!34764)

(assert (=> b!2908899 (= e!1836131 (>= (size!26390 (tail!4672 prefix!1309)) (size!26390 prefix!1309)))))

(declare-datatypes ((Regex!8927 0))(
  ( (ElementMatch!8927 (c!474098 C!18036)) (Concat!14248 (regOne!18366 Regex!8927) (regTwo!18366 Regex!8927)) (EmptyExpr!8927) (Star!8927 (reg!9256 Regex!8927)) (EmptyLang!8927) (Union!8927 (regOne!18367 Regex!8927) (regTwo!18367 Regex!8927)) )
))
(declare-fun lt!1023045 () Regex!8927)

(declare-fun r!13239 () Regex!8927)

(declare-fun derivativeStep!2404 (Regex!8927 C!18036) Regex!8927)

(declare-fun head!6445 (List!34764) C!18036)

(assert (=> b!2908899 (= lt!1023045 (derivativeStep!2404 r!13239 (head!6445 prefix!1309)))))

(declare-fun b!2908900 () Bool)

(declare-fun res!1201070 () Bool)

(assert (=> b!2908900 (=> (not res!1201070) (not e!1836131))))

(declare-fun isEmpty!18911 (List!34764) Bool)

(assert (=> b!2908900 (= res!1201070 (not (isEmpty!18911 prefix!1309)))))

(declare-fun b!2908901 () Bool)

(declare-fun tp!934683 () Bool)

(assert (=> b!2908901 (= e!1836129 tp!934683)))

(declare-fun b!2908903 () Bool)

(declare-fun tp!934682 () Bool)

(declare-fun tp!934678 () Bool)

(assert (=> b!2908903 (= e!1836129 (and tp!934682 tp!934678))))

(declare-fun b!2908904 () Bool)

(declare-fun tp!934681 () Bool)

(declare-fun tp!934680 () Bool)

(assert (=> b!2908904 (= e!1836129 (and tp!934681 tp!934680))))

(declare-fun res!1201071 () Bool)

(assert (=> start!283190 (=> (not res!1201071) (not e!1836131))))

(declare-fun validRegex!3677 (Regex!8927) Bool)

(assert (=> start!283190 (= res!1201071 (validRegex!3677 r!13239))))

(assert (=> start!283190 e!1836131))

(assert (=> start!283190 e!1836129))

(declare-fun e!1836130 () Bool)

(assert (=> start!283190 e!1836130))

(declare-fun b!2908902 () Bool)

(declare-fun tp!934679 () Bool)

(assert (=> b!2908902 (= e!1836130 (and tp_is_empty!15441 tp!934679))))

(assert (= (and start!283190 res!1201071) b!2908900))

(assert (= (and b!2908900 res!1201070) b!2908899))

(get-info :version)

(assert (= (and start!283190 ((_ is ElementMatch!8927) r!13239)) b!2908898))

(assert (= (and start!283190 ((_ is Concat!14248) r!13239)) b!2908904))

(assert (= (and start!283190 ((_ is Star!8927) r!13239)) b!2908901))

(assert (= (and start!283190 ((_ is Union!8927) r!13239)) b!2908903))

(assert (= (and start!283190 ((_ is Cons!34640) prefix!1309)) b!2908902))

(declare-fun m!3310245 () Bool)

(assert (=> b!2908899 m!3310245))

(declare-fun m!3310247 () Bool)

(assert (=> b!2908899 m!3310247))

(assert (=> b!2908899 m!3310245))

(declare-fun m!3310249 () Bool)

(assert (=> b!2908899 m!3310249))

(declare-fun m!3310251 () Bool)

(assert (=> b!2908899 m!3310251))

(declare-fun m!3310253 () Bool)

(assert (=> b!2908899 m!3310253))

(assert (=> b!2908899 m!3310251))

(declare-fun m!3310255 () Bool)

(assert (=> b!2908900 m!3310255))

(declare-fun m!3310257 () Bool)

(assert (=> start!283190 m!3310257))

(check-sat (not b!2908902) (not b!2908899) (not start!283190) (not b!2908903) (not b!2908900) tp_is_empty!15441 (not b!2908904) (not b!2908901))
(check-sat)
(get-model)

(declare-fun b!2908951 () Bool)

(declare-fun e!1836171 () Bool)

(declare-fun call!189892 () Bool)

(assert (=> b!2908951 (= e!1836171 call!189892)))

(declare-fun b!2908952 () Bool)

(declare-fun e!1836170 () Bool)

(declare-fun e!1836172 () Bool)

(assert (=> b!2908952 (= e!1836170 e!1836172)))

(declare-fun res!1201100 () Bool)

(assert (=> b!2908952 (=> (not res!1201100) (not e!1836172))))

(assert (=> b!2908952 (= res!1201100 call!189892)))

(declare-fun bm!189885 () Bool)

(declare-fun call!189891 () Bool)

(declare-fun c!474109 () Bool)

(assert (=> bm!189885 (= call!189891 (validRegex!3677 (ite c!474109 (regOne!18367 r!13239) (regTwo!18366 r!13239))))))

(declare-fun b!2908953 () Bool)

(declare-fun res!1201101 () Bool)

(assert (=> b!2908953 (=> res!1201101 e!1836170)))

(assert (=> b!2908953 (= res!1201101 (not ((_ is Concat!14248) r!13239)))))

(declare-fun e!1836173 () Bool)

(assert (=> b!2908953 (= e!1836173 e!1836170)))

(declare-fun b!2908954 () Bool)

(declare-fun e!1836169 () Bool)

(declare-fun e!1836168 () Bool)

(assert (=> b!2908954 (= e!1836169 e!1836168)))

(declare-fun res!1201098 () Bool)

(declare-fun nullable!2789 (Regex!8927) Bool)

(assert (=> b!2908954 (= res!1201098 (not (nullable!2789 (reg!9256 r!13239))))))

(assert (=> b!2908954 (=> (not res!1201098) (not e!1836168))))

(declare-fun b!2908955 () Bool)

(declare-fun res!1201099 () Bool)

(assert (=> b!2908955 (=> (not res!1201099) (not e!1836171))))

(assert (=> b!2908955 (= res!1201099 call!189891)))

(assert (=> b!2908955 (= e!1836173 e!1836171)))

(declare-fun b!2908956 () Bool)

(assert (=> b!2908956 (= e!1836172 call!189891)))

(declare-fun bm!189886 () Bool)

(declare-fun call!189890 () Bool)

(assert (=> bm!189886 (= call!189892 call!189890)))

(declare-fun b!2908957 () Bool)

(declare-fun e!1836167 () Bool)

(assert (=> b!2908957 (= e!1836167 e!1836169)))

(declare-fun c!474110 () Bool)

(assert (=> b!2908957 (= c!474110 ((_ is Star!8927) r!13239))))

(declare-fun b!2908958 () Bool)

(assert (=> b!2908958 (= e!1836169 e!1836173)))

(assert (=> b!2908958 (= c!474109 ((_ is Union!8927) r!13239))))

(declare-fun bm!189887 () Bool)

(assert (=> bm!189887 (= call!189890 (validRegex!3677 (ite c!474110 (reg!9256 r!13239) (ite c!474109 (regTwo!18367 r!13239) (regOne!18366 r!13239)))))))

(declare-fun d!836881 () Bool)

(declare-fun res!1201097 () Bool)

(assert (=> d!836881 (=> res!1201097 e!1836167)))

(assert (=> d!836881 (= res!1201097 ((_ is ElementMatch!8927) r!13239))))

(assert (=> d!836881 (= (validRegex!3677 r!13239) e!1836167)))

(declare-fun b!2908950 () Bool)

(assert (=> b!2908950 (= e!1836168 call!189890)))

(assert (= (and d!836881 (not res!1201097)) b!2908957))

(assert (= (and b!2908957 c!474110) b!2908954))

(assert (= (and b!2908957 (not c!474110)) b!2908958))

(assert (= (and b!2908954 res!1201098) b!2908950))

(assert (= (and b!2908958 c!474109) b!2908955))

(assert (= (and b!2908958 (not c!474109)) b!2908953))

(assert (= (and b!2908955 res!1201099) b!2908951))

(assert (= (and b!2908953 (not res!1201101)) b!2908952))

(assert (= (and b!2908952 res!1201100) b!2908956))

(assert (= (or b!2908951 b!2908952) bm!189886))

(assert (= (or b!2908955 b!2908956) bm!189885))

(assert (= (or b!2908950 bm!189886) bm!189887))

(declare-fun m!3310265 () Bool)

(assert (=> bm!189885 m!3310265))

(declare-fun m!3310267 () Bool)

(assert (=> b!2908954 m!3310267))

(declare-fun m!3310269 () Bool)

(assert (=> bm!189887 m!3310269))

(assert (=> start!283190 d!836881))

(declare-fun d!836885 () Bool)

(assert (=> d!836885 (= (isEmpty!18911 prefix!1309) ((_ is Nil!34640) prefix!1309))))

(assert (=> b!2908900 d!836885))

(declare-fun d!836889 () Bool)

(declare-fun lt!1023051 () Int)

(assert (=> d!836889 (>= lt!1023051 0)))

(declare-fun e!1836179 () Int)

(assert (=> d!836889 (= lt!1023051 e!1836179)))

(declare-fun c!474116 () Bool)

(assert (=> d!836889 (= c!474116 ((_ is Nil!34640) prefix!1309))))

(assert (=> d!836889 (= (size!26390 prefix!1309) lt!1023051)))

(declare-fun b!2908969 () Bool)

(assert (=> b!2908969 (= e!1836179 0)))

(declare-fun b!2908970 () Bool)

(assert (=> b!2908970 (= e!1836179 (+ 1 (size!26390 (t!233807 prefix!1309))))))

(assert (= (and d!836889 c!474116) b!2908969))

(assert (= (and d!836889 (not c!474116)) b!2908970))

(declare-fun m!3310273 () Bool)

(assert (=> b!2908970 m!3310273))

(assert (=> b!2908899 d!836889))

(declare-fun b!2909029 () Bool)

(declare-fun e!1836209 () Regex!8927)

(declare-fun call!189915 () Regex!8927)

(assert (=> b!2909029 (= e!1836209 (Union!8927 (Concat!14248 call!189915 (regTwo!18366 r!13239)) EmptyLang!8927))))

(declare-fun bm!189908 () Bool)

(declare-fun call!189916 () Regex!8927)

(assert (=> bm!189908 (= call!189915 call!189916)))

(declare-fun b!2909030 () Bool)

(declare-fun c!474143 () Bool)

(assert (=> b!2909030 (= c!474143 (nullable!2789 (regOne!18366 r!13239)))))

(declare-fun e!1836208 () Regex!8927)

(assert (=> b!2909030 (= e!1836208 e!1836209)))

(declare-fun call!189914 () Regex!8927)

(declare-fun b!2909031 () Bool)

(assert (=> b!2909031 (= e!1836209 (Union!8927 (Concat!14248 call!189915 (regTwo!18366 r!13239)) call!189914))))

(declare-fun call!189913 () Regex!8927)

(declare-fun bm!189909 () Bool)

(declare-fun c!474147 () Bool)

(declare-fun c!474144 () Bool)

(assert (=> bm!189909 (= call!189913 (derivativeStep!2404 (ite c!474144 (regTwo!18367 r!13239) (ite c!474147 (reg!9256 r!13239) (regOne!18366 r!13239))) (head!6445 prefix!1309)))))

(declare-fun b!2909032 () Bool)

(assert (=> b!2909032 (= e!1836208 (Concat!14248 call!189916 r!13239))))

(declare-fun b!2909033 () Bool)

(declare-fun e!1836211 () Regex!8927)

(assert (=> b!2909033 (= e!1836211 (ite (= (head!6445 prefix!1309) (c!474098 r!13239)) EmptyExpr!8927 EmptyLang!8927))))

(declare-fun bm!189910 () Bool)

(assert (=> bm!189910 (= call!189914 (derivativeStep!2404 (ite c!474144 (regOne!18367 r!13239) (regTwo!18366 r!13239)) (head!6445 prefix!1309)))))

(declare-fun b!2909034 () Bool)

(assert (=> b!2909034 (= c!474144 ((_ is Union!8927) r!13239))))

(declare-fun e!1836210 () Regex!8927)

(assert (=> b!2909034 (= e!1836211 e!1836210)))

(declare-fun b!2909035 () Bool)

(declare-fun e!1836212 () Regex!8927)

(assert (=> b!2909035 (= e!1836212 EmptyLang!8927)))

(declare-fun d!836891 () Bool)

(declare-fun lt!1023058 () Regex!8927)

(assert (=> d!836891 (validRegex!3677 lt!1023058)))

(assert (=> d!836891 (= lt!1023058 e!1836212)))

(declare-fun c!474145 () Bool)

(assert (=> d!836891 (= c!474145 (or ((_ is EmptyExpr!8927) r!13239) ((_ is EmptyLang!8927) r!13239)))))

(assert (=> d!836891 (validRegex!3677 r!13239)))

(assert (=> d!836891 (= (derivativeStep!2404 r!13239 (head!6445 prefix!1309)) lt!1023058)))

(declare-fun bm!189911 () Bool)

(assert (=> bm!189911 (= call!189916 call!189913)))

(declare-fun b!2909036 () Bool)

(assert (=> b!2909036 (= e!1836210 (Union!8927 call!189914 call!189913))))

(declare-fun b!2909037 () Bool)

(assert (=> b!2909037 (= e!1836212 e!1836211)))

(declare-fun c!474146 () Bool)

(assert (=> b!2909037 (= c!474146 ((_ is ElementMatch!8927) r!13239))))

(declare-fun b!2909038 () Bool)

(assert (=> b!2909038 (= e!1836210 e!1836208)))

(assert (=> b!2909038 (= c!474147 ((_ is Star!8927) r!13239))))

(assert (= (and d!836891 c!474145) b!2909035))

(assert (= (and d!836891 (not c!474145)) b!2909037))

(assert (= (and b!2909037 c!474146) b!2909033))

(assert (= (and b!2909037 (not c!474146)) b!2909034))

(assert (= (and b!2909034 c!474144) b!2909036))

(assert (= (and b!2909034 (not c!474144)) b!2909038))

(assert (= (and b!2909038 c!474147) b!2909032))

(assert (= (and b!2909038 (not c!474147)) b!2909030))

(assert (= (and b!2909030 c!474143) b!2909031))

(assert (= (and b!2909030 (not c!474143)) b!2909029))

(assert (= (or b!2909031 b!2909029) bm!189908))

(assert (= (or b!2909032 bm!189908) bm!189911))

(assert (= (or b!2909036 bm!189911) bm!189909))

(assert (= (or b!2909036 b!2909031) bm!189910))

(declare-fun m!3310285 () Bool)

(assert (=> b!2909030 m!3310285))

(assert (=> bm!189909 m!3310251))

(declare-fun m!3310287 () Bool)

(assert (=> bm!189909 m!3310287))

(assert (=> bm!189910 m!3310251))

(declare-fun m!3310289 () Bool)

(assert (=> bm!189910 m!3310289))

(declare-fun m!3310291 () Bool)

(assert (=> d!836891 m!3310291))

(assert (=> d!836891 m!3310257))

(assert (=> b!2908899 d!836891))

(declare-fun d!836899 () Bool)

(declare-fun lt!1023059 () Int)

(assert (=> d!836899 (>= lt!1023059 0)))

(declare-fun e!1836214 () Int)

(assert (=> d!836899 (= lt!1023059 e!1836214)))

(declare-fun c!474148 () Bool)

(assert (=> d!836899 (= c!474148 ((_ is Nil!34640) (tail!4672 prefix!1309)))))

(assert (=> d!836899 (= (size!26390 (tail!4672 prefix!1309)) lt!1023059)))

(declare-fun b!2909047 () Bool)

(assert (=> b!2909047 (= e!1836214 0)))

(declare-fun b!2909048 () Bool)

(assert (=> b!2909048 (= e!1836214 (+ 1 (size!26390 (t!233807 (tail!4672 prefix!1309)))))))

(assert (= (and d!836899 c!474148) b!2909047))

(assert (= (and d!836899 (not c!474148)) b!2909048))

(declare-fun m!3310293 () Bool)

(assert (=> b!2909048 m!3310293))

(assert (=> b!2908899 d!836899))

(declare-fun d!836901 () Bool)

(assert (=> d!836901 (= (head!6445 prefix!1309) (h!40060 prefix!1309))))

(assert (=> b!2908899 d!836901))

(declare-fun d!836903 () Bool)

(assert (=> d!836903 (= (tail!4672 prefix!1309) (t!233807 prefix!1309))))

(assert (=> b!2908899 d!836903))

(declare-fun b!2909074 () Bool)

(declare-fun e!1836224 () Bool)

(declare-fun tp!934724 () Bool)

(assert (=> b!2909074 (= e!1836224 (and tp_is_empty!15441 tp!934724))))

(assert (=> b!2908902 (= tp!934679 e!1836224)))

(assert (= (and b!2908902 ((_ is Cons!34640) (t!233807 prefix!1309))) b!2909074))

(declare-fun e!1836227 () Bool)

(assert (=> b!2908904 (= tp!934681 e!1836227)))

(declare-fun b!2909085 () Bool)

(assert (=> b!2909085 (= e!1836227 tp_is_empty!15441)))

(declare-fun b!2909086 () Bool)

(declare-fun tp!934735 () Bool)

(declare-fun tp!934736 () Bool)

(assert (=> b!2909086 (= e!1836227 (and tp!934735 tp!934736))))

(declare-fun b!2909087 () Bool)

(declare-fun tp!934739 () Bool)

(assert (=> b!2909087 (= e!1836227 tp!934739)))

(declare-fun b!2909088 () Bool)

(declare-fun tp!934737 () Bool)

(declare-fun tp!934738 () Bool)

(assert (=> b!2909088 (= e!1836227 (and tp!934737 tp!934738))))

(assert (= (and b!2908904 ((_ is ElementMatch!8927) (regOne!18366 r!13239))) b!2909085))

(assert (= (and b!2908904 ((_ is Concat!14248) (regOne!18366 r!13239))) b!2909086))

(assert (= (and b!2908904 ((_ is Star!8927) (regOne!18366 r!13239))) b!2909087))

(assert (= (and b!2908904 ((_ is Union!8927) (regOne!18366 r!13239))) b!2909088))

(declare-fun e!1836228 () Bool)

(assert (=> b!2908904 (= tp!934680 e!1836228)))

(declare-fun b!2909089 () Bool)

(assert (=> b!2909089 (= e!1836228 tp_is_empty!15441)))

(declare-fun b!2909090 () Bool)

(declare-fun tp!934740 () Bool)

(declare-fun tp!934741 () Bool)

(assert (=> b!2909090 (= e!1836228 (and tp!934740 tp!934741))))

(declare-fun b!2909091 () Bool)

(declare-fun tp!934744 () Bool)

(assert (=> b!2909091 (= e!1836228 tp!934744)))

(declare-fun b!2909092 () Bool)

(declare-fun tp!934742 () Bool)

(declare-fun tp!934743 () Bool)

(assert (=> b!2909092 (= e!1836228 (and tp!934742 tp!934743))))

(assert (= (and b!2908904 ((_ is ElementMatch!8927) (regTwo!18366 r!13239))) b!2909089))

(assert (= (and b!2908904 ((_ is Concat!14248) (regTwo!18366 r!13239))) b!2909090))

(assert (= (and b!2908904 ((_ is Star!8927) (regTwo!18366 r!13239))) b!2909091))

(assert (= (and b!2908904 ((_ is Union!8927) (regTwo!18366 r!13239))) b!2909092))

(declare-fun e!1836229 () Bool)

(assert (=> b!2908903 (= tp!934682 e!1836229)))

(declare-fun b!2909093 () Bool)

(assert (=> b!2909093 (= e!1836229 tp_is_empty!15441)))

(declare-fun b!2909094 () Bool)

(declare-fun tp!934745 () Bool)

(declare-fun tp!934746 () Bool)

(assert (=> b!2909094 (= e!1836229 (and tp!934745 tp!934746))))

(declare-fun b!2909095 () Bool)

(declare-fun tp!934749 () Bool)

(assert (=> b!2909095 (= e!1836229 tp!934749)))

(declare-fun b!2909096 () Bool)

(declare-fun tp!934747 () Bool)

(declare-fun tp!934748 () Bool)

(assert (=> b!2909096 (= e!1836229 (and tp!934747 tp!934748))))

(assert (= (and b!2908903 ((_ is ElementMatch!8927) (regOne!18367 r!13239))) b!2909093))

(assert (= (and b!2908903 ((_ is Concat!14248) (regOne!18367 r!13239))) b!2909094))

(assert (= (and b!2908903 ((_ is Star!8927) (regOne!18367 r!13239))) b!2909095))

(assert (= (and b!2908903 ((_ is Union!8927) (regOne!18367 r!13239))) b!2909096))

(declare-fun e!1836230 () Bool)

(assert (=> b!2908903 (= tp!934678 e!1836230)))

(declare-fun b!2909097 () Bool)

(assert (=> b!2909097 (= e!1836230 tp_is_empty!15441)))

(declare-fun b!2909098 () Bool)

(declare-fun tp!934750 () Bool)

(declare-fun tp!934751 () Bool)

(assert (=> b!2909098 (= e!1836230 (and tp!934750 tp!934751))))

(declare-fun b!2909099 () Bool)

(declare-fun tp!934754 () Bool)

(assert (=> b!2909099 (= e!1836230 tp!934754)))

(declare-fun b!2909100 () Bool)

(declare-fun tp!934752 () Bool)

(declare-fun tp!934753 () Bool)

(assert (=> b!2909100 (= e!1836230 (and tp!934752 tp!934753))))

(assert (= (and b!2908903 ((_ is ElementMatch!8927) (regTwo!18367 r!13239))) b!2909097))

(assert (= (and b!2908903 ((_ is Concat!14248) (regTwo!18367 r!13239))) b!2909098))

(assert (= (and b!2908903 ((_ is Star!8927) (regTwo!18367 r!13239))) b!2909099))

(assert (= (and b!2908903 ((_ is Union!8927) (regTwo!18367 r!13239))) b!2909100))

(declare-fun e!1836231 () Bool)

(assert (=> b!2908901 (= tp!934683 e!1836231)))

(declare-fun b!2909101 () Bool)

(assert (=> b!2909101 (= e!1836231 tp_is_empty!15441)))

(declare-fun b!2909102 () Bool)

(declare-fun tp!934755 () Bool)

(declare-fun tp!934756 () Bool)

(assert (=> b!2909102 (= e!1836231 (and tp!934755 tp!934756))))

(declare-fun b!2909103 () Bool)

(declare-fun tp!934759 () Bool)

(assert (=> b!2909103 (= e!1836231 tp!934759)))

(declare-fun b!2909104 () Bool)

(declare-fun tp!934757 () Bool)

(declare-fun tp!934758 () Bool)

(assert (=> b!2909104 (= e!1836231 (and tp!934757 tp!934758))))

(assert (= (and b!2908901 ((_ is ElementMatch!8927) (reg!9256 r!13239))) b!2909101))

(assert (= (and b!2908901 ((_ is Concat!14248) (reg!9256 r!13239))) b!2909102))

(assert (= (and b!2908901 ((_ is Star!8927) (reg!9256 r!13239))) b!2909103))

(assert (= (and b!2908901 ((_ is Union!8927) (reg!9256 r!13239))) b!2909104))

(check-sat (not b!2909103) (not b!2909088) (not bm!189887) (not b!2909048) (not bm!189909) (not b!2909102) (not b!2909087) (not b!2909092) (not b!2909095) tp_is_empty!15441 (not b!2909090) (not b!2908970) (not b!2909104) (not b!2908954) (not bm!189910) (not b!2909099) (not b!2909098) (not b!2909086) (not b!2909091) (not d!836891) (not b!2909096) (not b!2909030) (not b!2909074) (not bm!189885) (not b!2909100) (not b!2909094))
(check-sat)
