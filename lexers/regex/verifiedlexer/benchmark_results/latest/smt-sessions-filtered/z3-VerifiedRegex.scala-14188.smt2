; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743938 () Bool)

(assert start!743938)

(declare-fun b!7868942 () Bool)

(declare-fun e!4648888 () Bool)

(declare-datatypes ((C!42624 0))(
  ( (C!42625 (val!31774 Int)) )
))
(declare-datatypes ((Regex!21149 0))(
  ( (ElementMatch!21149 (c!1445643 C!42624)) (Concat!29994 (regOne!42810 Regex!21149) (regTwo!42810 Regex!21149)) (EmptyExpr!21149) (Star!21149 (reg!21478 Regex!21149)) (EmptyLang!21149) (Union!21149 (regOne!42811 Regex!21149) (regTwo!42811 Regex!21149)) )
))
(declare-fun r!24826 () Regex!21149)

(declare-datatypes ((List!74008 0))(
  ( (Nil!73884) (Cons!73884 (h!80332 C!42624) (t!388743 List!74008)) )
))
(declare-fun s!14217 () List!74008)

(declare-fun matchR!10585 (Regex!21149 List!74008) Bool)

(declare-fun derivativeStep!6380 (Regex!21149 C!42624) Regex!21149)

(declare-fun head!16095 (List!74008) C!42624)

(declare-fun tail!15638 (List!74008) List!74008)

(assert (=> b!7868942 (= e!4648888 (not (matchR!10585 (derivativeStep!6380 r!24826 (head!16095 s!14217)) (tail!15638 s!14217))))))

(declare-fun b!7868943 () Bool)

(declare-fun e!4648889 () Bool)

(declare-fun tp!2334571 () Bool)

(declare-fun tp!2334572 () Bool)

(assert (=> b!7868943 (= e!4648889 (and tp!2334571 tp!2334572))))

(declare-fun b!7868944 () Bool)

(declare-fun e!4648886 () Bool)

(assert (=> b!7868944 (= e!4648886 e!4648888)))

(declare-fun c!1445642 () Bool)

(declare-fun isEmpty!42384 (List!74008) Bool)

(assert (=> b!7868944 (= c!1445642 (isEmpty!42384 s!14217))))

(declare-fun b!7868946 () Bool)

(declare-fun tp!2334569 () Bool)

(declare-fun tp!2334570 () Bool)

(assert (=> b!7868946 (= e!4648889 (and tp!2334569 tp!2334570))))

(declare-fun b!7868947 () Bool)

(declare-fun e!4648887 () Bool)

(declare-fun tp_is_empty!52697 () Bool)

(declare-fun tp!2334574 () Bool)

(assert (=> b!7868947 (= e!4648887 (and tp_is_empty!52697 tp!2334574))))

(declare-fun b!7868948 () Bool)

(declare-fun nullable!9417 (Regex!21149) Bool)

(assert (=> b!7868948 (= e!4648888 (not (nullable!9417 r!24826)))))

(declare-fun b!7868949 () Bool)

(declare-fun res!3126882 () Bool)

(assert (=> b!7868949 (=> (not res!3126882) (not e!4648886))))

(assert (=> b!7868949 (= res!3126882 (matchR!10585 r!24826 s!14217))))

(declare-fun b!7868950 () Bool)

(declare-fun tp!2334573 () Bool)

(assert (=> b!7868950 (= e!4648889 tp!2334573)))

(declare-fun res!3126881 () Bool)

(assert (=> start!743938 (=> (not res!3126881) (not e!4648886))))

(declare-fun validRegex!11559 (Regex!21149) Bool)

(assert (=> start!743938 (= res!3126881 (validRegex!11559 r!24826))))

(assert (=> start!743938 e!4648886))

(assert (=> start!743938 e!4648889))

(assert (=> start!743938 e!4648887))

(declare-fun b!7868945 () Bool)

(assert (=> b!7868945 (= e!4648889 tp_is_empty!52697)))

(assert (= (and start!743938 res!3126881) b!7868949))

(assert (= (and b!7868949 res!3126882) b!7868944))

(assert (= (and b!7868944 c!1445642) b!7868948))

(assert (= (and b!7868944 (not c!1445642)) b!7868942))

(get-info :version)

(assert (= (and start!743938 ((_ is ElementMatch!21149) r!24826)) b!7868945))

(assert (= (and start!743938 ((_ is Concat!29994) r!24826)) b!7868946))

(assert (= (and start!743938 ((_ is Star!21149) r!24826)) b!7868950))

(assert (= (and start!743938 ((_ is Union!21149) r!24826)) b!7868943))

(assert (= (and start!743938 ((_ is Cons!73884) s!14217)) b!7868947))

(declare-fun m!8264536 () Bool)

(assert (=> b!7868949 m!8264536))

(declare-fun m!8264538 () Bool)

(assert (=> start!743938 m!8264538))

(declare-fun m!8264540 () Bool)

(assert (=> b!7868944 m!8264540))

(declare-fun m!8264542 () Bool)

(assert (=> b!7868942 m!8264542))

(assert (=> b!7868942 m!8264542))

(declare-fun m!8264544 () Bool)

(assert (=> b!7868942 m!8264544))

(declare-fun m!8264546 () Bool)

(assert (=> b!7868942 m!8264546))

(assert (=> b!7868942 m!8264544))

(assert (=> b!7868942 m!8264546))

(declare-fun m!8264548 () Bool)

(assert (=> b!7868942 m!8264548))

(declare-fun m!8264550 () Bool)

(assert (=> b!7868948 m!8264550))

(check-sat (not start!743938) (not b!7868950) (not b!7868944) (not b!7868942) (not b!7868947) (not b!7868948) (not b!7868949) (not b!7868946) tp_is_empty!52697 (not b!7868943))
(check-sat)
(get-model)

(declare-fun d!2355093 () Bool)

(assert (=> d!2355093 (= (isEmpty!42384 s!14217) ((_ is Nil!73884) s!14217))))

(assert (=> b!7868944 d!2355093))

(declare-fun d!2355097 () Bool)

(declare-fun nullableFct!3722 (Regex!21149) Bool)

(assert (=> d!2355097 (= (nullable!9417 r!24826) (nullableFct!3722 r!24826))))

(declare-fun bs!1967275 () Bool)

(assert (= bs!1967275 d!2355097))

(declare-fun m!8264552 () Bool)

(assert (=> bs!1967275 m!8264552))

(assert (=> b!7868948 d!2355097))

(declare-fun b!7869017 () Bool)

(declare-fun res!3126928 () Bool)

(declare-fun e!4648928 () Bool)

(assert (=> b!7869017 (=> res!3126928 e!4648928)))

(declare-fun e!4648930 () Bool)

(assert (=> b!7869017 (= res!3126928 e!4648930)))

(declare-fun res!3126929 () Bool)

(assert (=> b!7869017 (=> (not res!3126929) (not e!4648930))))

(declare-fun lt!2680749 () Bool)

(assert (=> b!7869017 (= res!3126929 lt!2680749)))

(declare-fun b!7869019 () Bool)

(declare-fun e!4648927 () Bool)

(assert (=> b!7869019 (= e!4648927 (matchR!10585 (derivativeStep!6380 r!24826 (head!16095 s!14217)) (tail!15638 s!14217)))))

(declare-fun b!7869021 () Bool)

(declare-fun res!3126926 () Bool)

(assert (=> b!7869021 (=> res!3126926 e!4648928)))

(assert (=> b!7869021 (= res!3126926 (not ((_ is ElementMatch!21149) r!24826)))))

(declare-fun e!4648929 () Bool)

(assert (=> b!7869021 (= e!4648929 e!4648928)))

(declare-fun bm!729665 () Bool)

(declare-fun call!729670 () Bool)

(assert (=> bm!729665 (= call!729670 (isEmpty!42384 s!14217))))

(declare-fun b!7869024 () Bool)

(declare-fun e!4648925 () Bool)

(assert (=> b!7869024 (= e!4648928 e!4648925)))

(declare-fun res!3126921 () Bool)

(assert (=> b!7869024 (=> (not res!3126921) (not e!4648925))))

(assert (=> b!7869024 (= res!3126921 (not lt!2680749))))

(declare-fun b!7869025 () Bool)

(declare-fun e!4648931 () Bool)

(assert (=> b!7869025 (= e!4648931 (not (= (head!16095 s!14217) (c!1445643 r!24826))))))

(declare-fun b!7869026 () Bool)

(assert (=> b!7869026 (= e!4648930 (= (head!16095 s!14217) (c!1445643 r!24826)))))

(declare-fun b!7869027 () Bool)

(declare-fun res!3126927 () Bool)

(assert (=> b!7869027 (=> (not res!3126927) (not e!4648930))))

(assert (=> b!7869027 (= res!3126927 (isEmpty!42384 (tail!15638 s!14217)))))

(declare-fun b!7869028 () Bool)

(declare-fun e!4648923 () Bool)

(assert (=> b!7869028 (= e!4648923 (= lt!2680749 call!729670))))

(declare-fun b!7869029 () Bool)

(assert (=> b!7869029 (= e!4648929 (not lt!2680749))))

(declare-fun b!7869030 () Bool)

(declare-fun res!3126930 () Bool)

(assert (=> b!7869030 (=> res!3126930 e!4648931)))

(assert (=> b!7869030 (= res!3126930 (not (isEmpty!42384 (tail!15638 s!14217))))))

(declare-fun d!2355099 () Bool)

(assert (=> d!2355099 e!4648923))

(declare-fun c!1445659 () Bool)

(assert (=> d!2355099 (= c!1445659 ((_ is EmptyExpr!21149) r!24826))))

(assert (=> d!2355099 (= lt!2680749 e!4648927)))

(declare-fun c!1445661 () Bool)

(assert (=> d!2355099 (= c!1445661 (isEmpty!42384 s!14217))))

(assert (=> d!2355099 (validRegex!11559 r!24826)))

(assert (=> d!2355099 (= (matchR!10585 r!24826 s!14217) lt!2680749)))

(declare-fun b!7869031 () Bool)

(assert (=> b!7869031 (= e!4648927 (nullable!9417 r!24826))))

(declare-fun b!7869032 () Bool)

(declare-fun res!3126923 () Bool)

(assert (=> b!7869032 (=> (not res!3126923) (not e!4648930))))

(assert (=> b!7869032 (= res!3126923 (not call!729670))))

(declare-fun b!7869033 () Bool)

(assert (=> b!7869033 (= e!4648925 e!4648931)))

(declare-fun res!3126920 () Bool)

(assert (=> b!7869033 (=> res!3126920 e!4648931)))

(assert (=> b!7869033 (= res!3126920 call!729670)))

(declare-fun b!7869034 () Bool)

(assert (=> b!7869034 (= e!4648923 e!4648929)))

(declare-fun c!1445660 () Bool)

(assert (=> b!7869034 (= c!1445660 ((_ is EmptyLang!21149) r!24826))))

(assert (= (and d!2355099 c!1445661) b!7869031))

(assert (= (and d!2355099 (not c!1445661)) b!7869019))

(assert (= (and d!2355099 c!1445659) b!7869028))

(assert (= (and d!2355099 (not c!1445659)) b!7869034))

(assert (= (and b!7869034 c!1445660) b!7869029))

(assert (= (and b!7869034 (not c!1445660)) b!7869021))

(assert (= (and b!7869021 (not res!3126926)) b!7869017))

(assert (= (and b!7869017 res!3126929) b!7869032))

(assert (= (and b!7869032 res!3126923) b!7869027))

(assert (= (and b!7869027 res!3126927) b!7869026))

(assert (= (and b!7869017 (not res!3126928)) b!7869024))

(assert (= (and b!7869024 res!3126921) b!7869033))

(assert (= (and b!7869033 (not res!3126920)) b!7869030))

(assert (= (and b!7869030 (not res!3126930)) b!7869025))

(assert (= (or b!7869028 b!7869032 b!7869033) bm!729665))

(assert (=> bm!729665 m!8264540))

(assert (=> d!2355099 m!8264540))

(assert (=> d!2355099 m!8264538))

(assert (=> b!7869030 m!8264546))

(assert (=> b!7869030 m!8264546))

(declare-fun m!8264554 () Bool)

(assert (=> b!7869030 m!8264554))

(assert (=> b!7869027 m!8264546))

(assert (=> b!7869027 m!8264546))

(assert (=> b!7869027 m!8264554))

(assert (=> b!7869031 m!8264550))

(assert (=> b!7869019 m!8264542))

(assert (=> b!7869019 m!8264542))

(assert (=> b!7869019 m!8264544))

(assert (=> b!7869019 m!8264546))

(assert (=> b!7869019 m!8264544))

(assert (=> b!7869019 m!8264546))

(assert (=> b!7869019 m!8264548))

(assert (=> b!7869025 m!8264542))

(assert (=> b!7869026 m!8264542))

(assert (=> b!7868949 d!2355099))

(declare-fun b!7869035 () Bool)

(declare-fun res!3126936 () Bool)

(declare-fun e!4648935 () Bool)

(assert (=> b!7869035 (=> res!3126936 e!4648935)))

(declare-fun e!4648937 () Bool)

(assert (=> b!7869035 (= res!3126936 e!4648937)))

(declare-fun res!3126937 () Bool)

(assert (=> b!7869035 (=> (not res!3126937) (not e!4648937))))

(declare-fun lt!2680750 () Bool)

(assert (=> b!7869035 (= res!3126937 lt!2680750)))

(declare-fun b!7869036 () Bool)

(declare-fun e!4648934 () Bool)

(assert (=> b!7869036 (= e!4648934 (matchR!10585 (derivativeStep!6380 (derivativeStep!6380 r!24826 (head!16095 s!14217)) (head!16095 (tail!15638 s!14217))) (tail!15638 (tail!15638 s!14217))))))

(declare-fun b!7869037 () Bool)

(declare-fun res!3126934 () Bool)

(assert (=> b!7869037 (=> res!3126934 e!4648935)))

(assert (=> b!7869037 (= res!3126934 (not ((_ is ElementMatch!21149) (derivativeStep!6380 r!24826 (head!16095 s!14217)))))))

(declare-fun e!4648936 () Bool)

(assert (=> b!7869037 (= e!4648936 e!4648935)))

(declare-fun bm!729666 () Bool)

(declare-fun call!729671 () Bool)

(assert (=> bm!729666 (= call!729671 (isEmpty!42384 (tail!15638 s!14217)))))

(declare-fun b!7869038 () Bool)

(declare-fun e!4648933 () Bool)

(assert (=> b!7869038 (= e!4648935 e!4648933)))

(declare-fun res!3126932 () Bool)

(assert (=> b!7869038 (=> (not res!3126932) (not e!4648933))))

(assert (=> b!7869038 (= res!3126932 (not lt!2680750))))

(declare-fun b!7869039 () Bool)

(declare-fun e!4648938 () Bool)

(assert (=> b!7869039 (= e!4648938 (not (= (head!16095 (tail!15638 s!14217)) (c!1445643 (derivativeStep!6380 r!24826 (head!16095 s!14217))))))))

(declare-fun b!7869040 () Bool)

(assert (=> b!7869040 (= e!4648937 (= (head!16095 (tail!15638 s!14217)) (c!1445643 (derivativeStep!6380 r!24826 (head!16095 s!14217)))))))

(declare-fun b!7869041 () Bool)

(declare-fun res!3126935 () Bool)

(assert (=> b!7869041 (=> (not res!3126935) (not e!4648937))))

(assert (=> b!7869041 (= res!3126935 (isEmpty!42384 (tail!15638 (tail!15638 s!14217))))))

(declare-fun b!7869042 () Bool)

(declare-fun e!4648932 () Bool)

(assert (=> b!7869042 (= e!4648932 (= lt!2680750 call!729671))))

(declare-fun b!7869043 () Bool)

(assert (=> b!7869043 (= e!4648936 (not lt!2680750))))

(declare-fun b!7869044 () Bool)

(declare-fun res!3126938 () Bool)

(assert (=> b!7869044 (=> res!3126938 e!4648938)))

(assert (=> b!7869044 (= res!3126938 (not (isEmpty!42384 (tail!15638 (tail!15638 s!14217)))))))

(declare-fun d!2355101 () Bool)

(assert (=> d!2355101 e!4648932))

(declare-fun c!1445662 () Bool)

(assert (=> d!2355101 (= c!1445662 ((_ is EmptyExpr!21149) (derivativeStep!6380 r!24826 (head!16095 s!14217))))))

(assert (=> d!2355101 (= lt!2680750 e!4648934)))

(declare-fun c!1445664 () Bool)

(assert (=> d!2355101 (= c!1445664 (isEmpty!42384 (tail!15638 s!14217)))))

(assert (=> d!2355101 (validRegex!11559 (derivativeStep!6380 r!24826 (head!16095 s!14217)))))

(assert (=> d!2355101 (= (matchR!10585 (derivativeStep!6380 r!24826 (head!16095 s!14217)) (tail!15638 s!14217)) lt!2680750)))

(declare-fun b!7869045 () Bool)

(assert (=> b!7869045 (= e!4648934 (nullable!9417 (derivativeStep!6380 r!24826 (head!16095 s!14217))))))

(declare-fun b!7869046 () Bool)

(declare-fun res!3126933 () Bool)

(assert (=> b!7869046 (=> (not res!3126933) (not e!4648937))))

(assert (=> b!7869046 (= res!3126933 (not call!729671))))

(declare-fun b!7869047 () Bool)

(assert (=> b!7869047 (= e!4648933 e!4648938)))

(declare-fun res!3126931 () Bool)

(assert (=> b!7869047 (=> res!3126931 e!4648938)))

(assert (=> b!7869047 (= res!3126931 call!729671)))

(declare-fun b!7869048 () Bool)

(assert (=> b!7869048 (= e!4648932 e!4648936)))

(declare-fun c!1445663 () Bool)

(assert (=> b!7869048 (= c!1445663 ((_ is EmptyLang!21149) (derivativeStep!6380 r!24826 (head!16095 s!14217))))))

(assert (= (and d!2355101 c!1445664) b!7869045))

(assert (= (and d!2355101 (not c!1445664)) b!7869036))

(assert (= (and d!2355101 c!1445662) b!7869042))

(assert (= (and d!2355101 (not c!1445662)) b!7869048))

(assert (= (and b!7869048 c!1445663) b!7869043))

(assert (= (and b!7869048 (not c!1445663)) b!7869037))

(assert (= (and b!7869037 (not res!3126934)) b!7869035))

(assert (= (and b!7869035 res!3126937) b!7869046))

(assert (= (and b!7869046 res!3126933) b!7869041))

(assert (= (and b!7869041 res!3126935) b!7869040))

(assert (= (and b!7869035 (not res!3126936)) b!7869038))

(assert (= (and b!7869038 res!3126932) b!7869047))

(assert (= (and b!7869047 (not res!3126931)) b!7869044))

(assert (= (and b!7869044 (not res!3126938)) b!7869039))

(assert (= (or b!7869042 b!7869046 b!7869047) bm!729666))

(assert (=> bm!729666 m!8264546))

(assert (=> bm!729666 m!8264554))

(assert (=> d!2355101 m!8264546))

(assert (=> d!2355101 m!8264554))

(assert (=> d!2355101 m!8264544))

(declare-fun m!8264558 () Bool)

(assert (=> d!2355101 m!8264558))

(assert (=> b!7869044 m!8264546))

(declare-fun m!8264560 () Bool)

(assert (=> b!7869044 m!8264560))

(assert (=> b!7869044 m!8264560))

(declare-fun m!8264562 () Bool)

(assert (=> b!7869044 m!8264562))

(assert (=> b!7869041 m!8264546))

(assert (=> b!7869041 m!8264560))

(assert (=> b!7869041 m!8264560))

(assert (=> b!7869041 m!8264562))

(assert (=> b!7869045 m!8264544))

(declare-fun m!8264564 () Bool)

(assert (=> b!7869045 m!8264564))

(assert (=> b!7869036 m!8264546))

(declare-fun m!8264566 () Bool)

(assert (=> b!7869036 m!8264566))

(assert (=> b!7869036 m!8264544))

(assert (=> b!7869036 m!8264566))

(declare-fun m!8264568 () Bool)

(assert (=> b!7869036 m!8264568))

(assert (=> b!7869036 m!8264546))

(assert (=> b!7869036 m!8264560))

(assert (=> b!7869036 m!8264568))

(assert (=> b!7869036 m!8264560))

(declare-fun m!8264570 () Bool)

(assert (=> b!7869036 m!8264570))

(assert (=> b!7869039 m!8264546))

(assert (=> b!7869039 m!8264566))

(assert (=> b!7869040 m!8264546))

(assert (=> b!7869040 m!8264566))

(assert (=> b!7868942 d!2355101))

(declare-fun call!729691 () Regex!21149)

(declare-fun b!7869110 () Bool)

(declare-fun e!4648979 () Regex!21149)

(declare-fun call!729692 () Regex!21149)

(assert (=> b!7869110 (= e!4648979 (Union!21149 (Concat!29994 call!729691 (regTwo!42810 r!24826)) call!729692))))

(declare-fun b!7869111 () Bool)

(declare-fun e!4648978 () Regex!21149)

(declare-fun call!729693 () Regex!21149)

(assert (=> b!7869111 (= e!4648978 (Concat!29994 call!729693 r!24826))))

(declare-fun b!7869112 () Bool)

(declare-fun e!4648980 () Regex!21149)

(assert (=> b!7869112 (= e!4648980 e!4648978)))

(declare-fun c!1445686 () Bool)

(assert (=> b!7869112 (= c!1445686 ((_ is Star!21149) r!24826))))

(declare-fun bm!729685 () Bool)

(assert (=> bm!729685 (= call!729691 call!729693)))

(declare-fun c!1445684 () Bool)

(declare-fun bm!729686 () Bool)

(assert (=> bm!729686 (= call!729692 (derivativeStep!6380 (ite c!1445684 (regTwo!42811 r!24826) (regTwo!42810 r!24826)) (head!16095 s!14217)))))

(declare-fun bm!729687 () Bool)

(declare-fun call!729690 () Regex!21149)

(assert (=> bm!729687 (= call!729690 (derivativeStep!6380 (ite c!1445684 (regOne!42811 r!24826) (ite c!1445686 (reg!21478 r!24826) (regOne!42810 r!24826))) (head!16095 s!14217)))))

(declare-fun b!7869113 () Bool)

(assert (=> b!7869113 (= c!1445684 ((_ is Union!21149) r!24826))))

(declare-fun e!4648977 () Regex!21149)

(assert (=> b!7869113 (= e!4648977 e!4648980)))

(declare-fun b!7869114 () Bool)

(assert (=> b!7869114 (= e!4648977 (ite (= (head!16095 s!14217) (c!1445643 r!24826)) EmptyExpr!21149 EmptyLang!21149))))

(declare-fun b!7869115 () Bool)

(declare-fun e!4648981 () Regex!21149)

(assert (=> b!7869115 (= e!4648981 EmptyLang!21149)))

(declare-fun d!2355105 () Bool)

(declare-fun lt!2680754 () Regex!21149)

(assert (=> d!2355105 (validRegex!11559 lt!2680754)))

(assert (=> d!2355105 (= lt!2680754 e!4648981)))

(declare-fun c!1445685 () Bool)

(assert (=> d!2355105 (= c!1445685 (or ((_ is EmptyExpr!21149) r!24826) ((_ is EmptyLang!21149) r!24826)))))

(assert (=> d!2355105 (validRegex!11559 r!24826)))

(assert (=> d!2355105 (= (derivativeStep!6380 r!24826 (head!16095 s!14217)) lt!2680754)))

(declare-fun b!7869116 () Bool)

(assert (=> b!7869116 (= e!4648981 e!4648977)))

(declare-fun c!1445687 () Bool)

(assert (=> b!7869116 (= c!1445687 ((_ is ElementMatch!21149) r!24826))))

(declare-fun b!7869117 () Bool)

(assert (=> b!7869117 (= e!4648979 (Union!21149 (Concat!29994 call!729691 (regTwo!42810 r!24826)) EmptyLang!21149))))

(declare-fun bm!729688 () Bool)

(assert (=> bm!729688 (= call!729693 call!729690)))

(declare-fun b!7869118 () Bool)

(declare-fun c!1445688 () Bool)

(assert (=> b!7869118 (= c!1445688 (nullable!9417 (regOne!42810 r!24826)))))

(assert (=> b!7869118 (= e!4648978 e!4648979)))

(declare-fun b!7869119 () Bool)

(assert (=> b!7869119 (= e!4648980 (Union!21149 call!729690 call!729692))))

(assert (= (and d!2355105 c!1445685) b!7869115))

(assert (= (and d!2355105 (not c!1445685)) b!7869116))

(assert (= (and b!7869116 c!1445687) b!7869114))

(assert (= (and b!7869116 (not c!1445687)) b!7869113))

(assert (= (and b!7869113 c!1445684) b!7869119))

(assert (= (and b!7869113 (not c!1445684)) b!7869112))

(assert (= (and b!7869112 c!1445686) b!7869111))

(assert (= (and b!7869112 (not c!1445686)) b!7869118))

(assert (= (and b!7869118 c!1445688) b!7869110))

(assert (= (and b!7869118 (not c!1445688)) b!7869117))

(assert (= (or b!7869110 b!7869117) bm!729685))

(assert (= (or b!7869111 bm!729685) bm!729688))

(assert (= (or b!7869119 b!7869110) bm!729686))

(assert (= (or b!7869119 bm!729688) bm!729687))

(assert (=> bm!729686 m!8264542))

(declare-fun m!8264592 () Bool)

(assert (=> bm!729686 m!8264592))

(assert (=> bm!729687 m!8264542))

(declare-fun m!8264594 () Bool)

(assert (=> bm!729687 m!8264594))

(declare-fun m!8264596 () Bool)

(assert (=> d!2355105 m!8264596))

(assert (=> d!2355105 m!8264538))

(declare-fun m!8264598 () Bool)

(assert (=> b!7869118 m!8264598))

(assert (=> b!7868942 d!2355105))

(declare-fun d!2355113 () Bool)

(assert (=> d!2355113 (= (head!16095 s!14217) (h!80332 s!14217))))

(assert (=> b!7868942 d!2355113))

(declare-fun d!2355115 () Bool)

(assert (=> d!2355115 (= (tail!15638 s!14217) (t!388743 s!14217))))

(assert (=> b!7868942 d!2355115))

(declare-fun b!7869158 () Bool)

(declare-fun e!4649010 () Bool)

(declare-fun call!729708 () Bool)

(assert (=> b!7869158 (= e!4649010 call!729708)))

(declare-fun b!7869159 () Bool)

(declare-fun e!4649011 () Bool)

(declare-fun e!4649009 () Bool)

(assert (=> b!7869159 (= e!4649011 e!4649009)))

(declare-fun c!1445704 () Bool)

(assert (=> b!7869159 (= c!1445704 ((_ is Union!21149) r!24826))))

(declare-fun d!2355117 () Bool)

(declare-fun res!3126975 () Bool)

(declare-fun e!4649008 () Bool)

(assert (=> d!2355117 (=> res!3126975 e!4649008)))

(assert (=> d!2355117 (= res!3126975 ((_ is ElementMatch!21149) r!24826))))

(assert (=> d!2355117 (= (validRegex!11559 r!24826) e!4649008)))

(declare-fun b!7869160 () Bool)

(declare-fun e!4649007 () Bool)

(assert (=> b!7869160 (= e!4649011 e!4649007)))

(declare-fun res!3126973 () Bool)

(assert (=> b!7869160 (= res!3126973 (not (nullable!9417 (reg!21478 r!24826))))))

(assert (=> b!7869160 (=> (not res!3126973) (not e!4649007))))

(declare-fun bm!729703 () Bool)

(declare-fun call!729710 () Bool)

(assert (=> bm!729703 (= call!729710 (validRegex!11559 (ite c!1445704 (regTwo!42811 r!24826) (regOne!42810 r!24826))))))

(declare-fun b!7869161 () Bool)

(assert (=> b!7869161 (= e!4649008 e!4649011)))

(declare-fun c!1445703 () Bool)

(assert (=> b!7869161 (= c!1445703 ((_ is Star!21149) r!24826))))

(declare-fun b!7869162 () Bool)

(declare-fun call!729709 () Bool)

(assert (=> b!7869162 (= e!4649007 call!729709)))

(declare-fun b!7869163 () Bool)

(declare-fun res!3126972 () Bool)

(declare-fun e!4649012 () Bool)

(assert (=> b!7869163 (=> (not res!3126972) (not e!4649012))))

(assert (=> b!7869163 (= res!3126972 call!729708)))

(assert (=> b!7869163 (= e!4649009 e!4649012)))

(declare-fun b!7869164 () Bool)

(assert (=> b!7869164 (= e!4649012 call!729710)))

(declare-fun b!7869165 () Bool)

(declare-fun res!3126974 () Bool)

(declare-fun e!4649006 () Bool)

(assert (=> b!7869165 (=> res!3126974 e!4649006)))

(assert (=> b!7869165 (= res!3126974 (not ((_ is Concat!29994) r!24826)))))

(assert (=> b!7869165 (= e!4649009 e!4649006)))

(declare-fun bm!729704 () Bool)

(assert (=> bm!729704 (= call!729708 call!729709)))

(declare-fun b!7869166 () Bool)

(assert (=> b!7869166 (= e!4649006 e!4649010)))

(declare-fun res!3126976 () Bool)

(assert (=> b!7869166 (=> (not res!3126976) (not e!4649010))))

(assert (=> b!7869166 (= res!3126976 call!729710)))

(declare-fun bm!729705 () Bool)

(assert (=> bm!729705 (= call!729709 (validRegex!11559 (ite c!1445703 (reg!21478 r!24826) (ite c!1445704 (regOne!42811 r!24826) (regTwo!42810 r!24826)))))))

(assert (= (and d!2355117 (not res!3126975)) b!7869161))

(assert (= (and b!7869161 c!1445703) b!7869160))

(assert (= (and b!7869161 (not c!1445703)) b!7869159))

(assert (= (and b!7869160 res!3126973) b!7869162))

(assert (= (and b!7869159 c!1445704) b!7869163))

(assert (= (and b!7869159 (not c!1445704)) b!7869165))

(assert (= (and b!7869163 res!3126972) b!7869164))

(assert (= (and b!7869165 (not res!3126974)) b!7869166))

(assert (= (and b!7869166 res!3126976) b!7869158))

(assert (= (or b!7869163 b!7869158) bm!729704))

(assert (= (or b!7869164 b!7869166) bm!729703))

(assert (= (or b!7869162 bm!729704) bm!729705))

(declare-fun m!8264600 () Bool)

(assert (=> b!7869160 m!8264600))

(declare-fun m!8264602 () Bool)

(assert (=> bm!729703 m!8264602))

(declare-fun m!8264604 () Bool)

(assert (=> bm!729705 m!8264604))

(assert (=> start!743938 d!2355117))

(declare-fun b!7869190 () Bool)

(declare-fun e!4649020 () Bool)

(declare-fun tp!2334587 () Bool)

(declare-fun tp!2334589 () Bool)

(assert (=> b!7869190 (= e!4649020 (and tp!2334587 tp!2334589))))

(declare-fun b!7869188 () Bool)

(declare-fun tp!2334588 () Bool)

(declare-fun tp!2334585 () Bool)

(assert (=> b!7869188 (= e!4649020 (and tp!2334588 tp!2334585))))

(assert (=> b!7868950 (= tp!2334573 e!4649020)))

(declare-fun b!7869187 () Bool)

(assert (=> b!7869187 (= e!4649020 tp_is_empty!52697)))

(declare-fun b!7869189 () Bool)

(declare-fun tp!2334586 () Bool)

(assert (=> b!7869189 (= e!4649020 tp!2334586)))

(assert (= (and b!7868950 ((_ is ElementMatch!21149) (reg!21478 r!24826))) b!7869187))

(assert (= (and b!7868950 ((_ is Concat!29994) (reg!21478 r!24826))) b!7869188))

(assert (= (and b!7868950 ((_ is Star!21149) (reg!21478 r!24826))) b!7869189))

(assert (= (and b!7868950 ((_ is Union!21149) (reg!21478 r!24826))) b!7869190))

(declare-fun b!7869194 () Bool)

(declare-fun e!4649021 () Bool)

(declare-fun tp!2334592 () Bool)

(declare-fun tp!2334594 () Bool)

(assert (=> b!7869194 (= e!4649021 (and tp!2334592 tp!2334594))))

(declare-fun b!7869192 () Bool)

(declare-fun tp!2334593 () Bool)

(declare-fun tp!2334590 () Bool)

(assert (=> b!7869192 (= e!4649021 (and tp!2334593 tp!2334590))))

(assert (=> b!7868943 (= tp!2334571 e!4649021)))

(declare-fun b!7869191 () Bool)

(assert (=> b!7869191 (= e!4649021 tp_is_empty!52697)))

(declare-fun b!7869193 () Bool)

(declare-fun tp!2334591 () Bool)

(assert (=> b!7869193 (= e!4649021 tp!2334591)))

(assert (= (and b!7868943 ((_ is ElementMatch!21149) (regOne!42811 r!24826))) b!7869191))

(assert (= (and b!7868943 ((_ is Concat!29994) (regOne!42811 r!24826))) b!7869192))

(assert (= (and b!7868943 ((_ is Star!21149) (regOne!42811 r!24826))) b!7869193))

(assert (= (and b!7868943 ((_ is Union!21149) (regOne!42811 r!24826))) b!7869194))

(declare-fun b!7869198 () Bool)

(declare-fun e!4649022 () Bool)

(declare-fun tp!2334597 () Bool)

(declare-fun tp!2334599 () Bool)

(assert (=> b!7869198 (= e!4649022 (and tp!2334597 tp!2334599))))

(declare-fun b!7869196 () Bool)

(declare-fun tp!2334598 () Bool)

(declare-fun tp!2334595 () Bool)

(assert (=> b!7869196 (= e!4649022 (and tp!2334598 tp!2334595))))

(assert (=> b!7868943 (= tp!2334572 e!4649022)))

(declare-fun b!7869195 () Bool)

(assert (=> b!7869195 (= e!4649022 tp_is_empty!52697)))

(declare-fun b!7869197 () Bool)

(declare-fun tp!2334596 () Bool)

(assert (=> b!7869197 (= e!4649022 tp!2334596)))

(assert (= (and b!7868943 ((_ is ElementMatch!21149) (regTwo!42811 r!24826))) b!7869195))

(assert (= (and b!7868943 ((_ is Concat!29994) (regTwo!42811 r!24826))) b!7869196))

(assert (= (and b!7868943 ((_ is Star!21149) (regTwo!42811 r!24826))) b!7869197))

(assert (= (and b!7868943 ((_ is Union!21149) (regTwo!42811 r!24826))) b!7869198))

(declare-fun b!7869209 () Bool)

(declare-fun e!4649027 () Bool)

(declare-fun tp!2334606 () Bool)

(assert (=> b!7869209 (= e!4649027 (and tp_is_empty!52697 tp!2334606))))

(assert (=> b!7868947 (= tp!2334574 e!4649027)))

(assert (= (and b!7868947 ((_ is Cons!73884) (t!388743 s!14217))) b!7869209))

(declare-fun b!7869217 () Bool)

(declare-fun e!4649028 () Bool)

(declare-fun tp!2334611 () Bool)

(declare-fun tp!2334613 () Bool)

(assert (=> b!7869217 (= e!4649028 (and tp!2334611 tp!2334613))))

(declare-fun b!7869215 () Bool)

(declare-fun tp!2334612 () Bool)

(declare-fun tp!2334609 () Bool)

(assert (=> b!7869215 (= e!4649028 (and tp!2334612 tp!2334609))))

(assert (=> b!7868946 (= tp!2334569 e!4649028)))

(declare-fun b!7869214 () Bool)

(assert (=> b!7869214 (= e!4649028 tp_is_empty!52697)))

(declare-fun b!7869216 () Bool)

(declare-fun tp!2334610 () Bool)

(assert (=> b!7869216 (= e!4649028 tp!2334610)))

(assert (= (and b!7868946 ((_ is ElementMatch!21149) (regOne!42810 r!24826))) b!7869214))

(assert (= (and b!7868946 ((_ is Concat!29994) (regOne!42810 r!24826))) b!7869215))

(assert (= (and b!7868946 ((_ is Star!21149) (regOne!42810 r!24826))) b!7869216))

(assert (= (and b!7868946 ((_ is Union!21149) (regOne!42810 r!24826))) b!7869217))

(declare-fun b!7869221 () Bool)

(declare-fun e!4649029 () Bool)

(declare-fun tp!2334620 () Bool)

(declare-fun tp!2334622 () Bool)

(assert (=> b!7869221 (= e!4649029 (and tp!2334620 tp!2334622))))

(declare-fun b!7869219 () Bool)

(declare-fun tp!2334621 () Bool)

(declare-fun tp!2334618 () Bool)

(assert (=> b!7869219 (= e!4649029 (and tp!2334621 tp!2334618))))

(assert (=> b!7868946 (= tp!2334570 e!4649029)))

(declare-fun b!7869218 () Bool)

(assert (=> b!7869218 (= e!4649029 tp_is_empty!52697)))

(declare-fun b!7869220 () Bool)

(declare-fun tp!2334619 () Bool)

(assert (=> b!7869220 (= e!4649029 tp!2334619)))

(assert (= (and b!7868946 ((_ is ElementMatch!21149) (regTwo!42810 r!24826))) b!7869218))

(assert (= (and b!7868946 ((_ is Concat!29994) (regTwo!42810 r!24826))) b!7869219))

(assert (= (and b!7868946 ((_ is Star!21149) (regTwo!42810 r!24826))) b!7869220))

(assert (= (and b!7868946 ((_ is Union!21149) (regTwo!42810 r!24826))) b!7869221))

(check-sat (not bm!729666) (not b!7869217) (not b!7869215) (not d!2355097) (not b!7869190) (not b!7869040) (not bm!729665) (not b!7869220) (not b!7869221) (not b!7869197) (not b!7869118) (not d!2355105) (not b!7869027) (not b!7869019) (not b!7869209) (not b!7869041) (not b!7869188) (not b!7869198) (not d!2355101) (not b!7869044) (not b!7869025) (not b!7869216) (not b!7869196) (not b!7869219) (not d!2355099) (not b!7869189) (not b!7869160) (not bm!729686) (not b!7869045) (not bm!729687) (not b!7869193) tp_is_empty!52697 (not bm!729703) (not b!7869026) (not b!7869031) (not b!7869192) (not b!7869036) (not b!7869030) (not bm!729705) (not b!7869194) (not b!7869039))
(check-sat)
