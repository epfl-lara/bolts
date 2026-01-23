; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752764 () Bool)

(assert start!752764)

(declare-fun b!7999979 () Bool)

(declare-fun e!4712822 () Bool)

(declare-fun tp_is_empty!53709 () Bool)

(assert (=> b!7999979 (= e!4712822 tp_is_empty!53709)))

(declare-fun res!3163804 () Bool)

(declare-fun e!4712821 () Bool)

(assert (=> start!752764 (=> (not res!3163804) (not e!4712821))))

(declare-datatypes ((C!43504 0))(
  ( (C!43505 (val!32300 Int)) )
))
(declare-datatypes ((Regex!21583 0))(
  ( (ElementMatch!21583 (c!1468792 C!43504)) (Concat!30582 (regOne!43678 Regex!21583) (regTwo!43678 Regex!21583)) (EmptyExpr!21583) (Star!21583 (reg!21912 Regex!21583)) (EmptyLang!21583) (Union!21583 (regOne!43679 Regex!21583) (regTwo!43679 Regex!21583)) )
))
(declare-fun r!24748 () Regex!21583)

(declare-fun validRegex!11887 (Regex!21583) Bool)

(assert (=> start!752764 (= res!3163804 (validRegex!11887 r!24748))))

(assert (=> start!752764 e!4712821))

(assert (=> start!752764 e!4712822))

(declare-fun e!4712820 () Bool)

(assert (=> start!752764 e!4712820))

(declare-fun b!7999980 () Bool)

(declare-fun tp!2392893 () Bool)

(declare-fun tp!2392898 () Bool)

(assert (=> b!7999980 (= e!4712822 (and tp!2392893 tp!2392898))))

(declare-fun b!7999981 () Bool)

(declare-fun e!4712823 () Bool)

(assert (=> b!7999981 (= e!4712821 e!4712823)))

(declare-fun res!3163806 () Bool)

(assert (=> b!7999981 (=> (not res!3163806) (not e!4712823))))

(declare-fun lt!2713659 () Regex!21583)

(assert (=> b!7999981 (= res!3163806 (validRegex!11887 lt!2713659))))

(declare-datatypes ((List!74812 0))(
  ( (Nil!74688) (Cons!74688 (h!81136 C!43504) (t!390555 List!74812)) )
))
(declare-fun input!8006 () List!74812)

(declare-fun derivativeStep!6598 (Regex!21583 C!43504) Regex!21583)

(assert (=> b!7999981 (= lt!2713659 (derivativeStep!6598 r!24748 (h!81136 input!8006)))))

(declare-fun b!7999982 () Bool)

(declare-fun res!3163805 () Bool)

(assert (=> b!7999982 (=> (not res!3163805) (not e!4712821))))

(get-info :version)

(assert (=> b!7999982 (= res!3163805 ((_ is Cons!74688) input!8006))))

(declare-fun b!7999983 () Bool)

(declare-fun tp!2392895 () Bool)

(assert (=> b!7999983 (= e!4712820 (and tp_is_empty!53709 tp!2392895))))

(declare-fun b!7999984 () Bool)

(declare-fun derivative!767 (Regex!21583 List!74812) Regex!21583)

(assert (=> b!7999984 (= e!4712823 (not (validRegex!11887 (derivative!767 r!24748 input!8006))))))

(declare-fun matchR!10768 (Regex!21583 List!74812) Bool)

(assert (=> b!7999984 (= (matchR!10768 lt!2713659 (t!390555 input!8006)) (matchR!10768 (derivative!767 lt!2713659 (t!390555 input!8006)) Nil!74688))))

(declare-datatypes ((Unit!170588 0))(
  ( (Unit!170589) )
))
(declare-fun lt!2713658 () Unit!170588)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!310 (Regex!21583 List!74812) Unit!170588)

(assert (=> b!7999984 (= lt!2713658 (lemmaMatchRIsSameAsWholeDerivativeAndNil!310 lt!2713659 (t!390555 input!8006)))))

(declare-fun b!7999985 () Bool)

(declare-fun tp!2392896 () Bool)

(declare-fun tp!2392894 () Bool)

(assert (=> b!7999985 (= e!4712822 (and tp!2392896 tp!2392894))))

(declare-fun b!7999986 () Bool)

(declare-fun tp!2392897 () Bool)

(assert (=> b!7999986 (= e!4712822 tp!2392897)))

(assert (= (and start!752764 res!3163804) b!7999982))

(assert (= (and b!7999982 res!3163805) b!7999981))

(assert (= (and b!7999981 res!3163806) b!7999984))

(assert (= (and start!752764 ((_ is ElementMatch!21583) r!24748)) b!7999979))

(assert (= (and start!752764 ((_ is Concat!30582) r!24748)) b!7999980))

(assert (= (and start!752764 ((_ is Star!21583) r!24748)) b!7999986))

(assert (= (and start!752764 ((_ is Union!21583) r!24748)) b!7999985))

(assert (= (and start!752764 ((_ is Cons!74688) input!8006)) b!7999983))

(declare-fun m!8368192 () Bool)

(assert (=> start!752764 m!8368192))

(declare-fun m!8368194 () Bool)

(assert (=> b!7999981 m!8368194))

(declare-fun m!8368196 () Bool)

(assert (=> b!7999981 m!8368196))

(declare-fun m!8368198 () Bool)

(assert (=> b!7999984 m!8368198))

(declare-fun m!8368200 () Bool)

(assert (=> b!7999984 m!8368200))

(declare-fun m!8368202 () Bool)

(assert (=> b!7999984 m!8368202))

(assert (=> b!7999984 m!8368200))

(declare-fun m!8368204 () Bool)

(assert (=> b!7999984 m!8368204))

(declare-fun m!8368206 () Bool)

(assert (=> b!7999984 m!8368206))

(assert (=> b!7999984 m!8368198))

(declare-fun m!8368208 () Bool)

(assert (=> b!7999984 m!8368208))

(check-sat tp_is_empty!53709 (not b!7999980) (not b!7999984) (not b!7999985) (not b!7999983) (not b!7999981) (not start!752764) (not b!7999986))
(check-sat)
(get-model)

(declare-fun b!8000015 () Bool)

(declare-fun res!3163826 () Bool)

(declare-fun e!4712843 () Bool)

(assert (=> b!8000015 (=> res!3163826 e!4712843)))

(declare-fun isEmpty!42966 (List!74812) Bool)

(declare-fun tail!15827 (List!74812) List!74812)

(assert (=> b!8000015 (= res!3163826 (not (isEmpty!42966 (tail!15827 (t!390555 input!8006)))))))

(declare-fun b!8000016 () Bool)

(declare-fun res!3163823 () Bool)

(declare-fun e!4712839 () Bool)

(assert (=> b!8000016 (=> (not res!3163823) (not e!4712839))))

(declare-fun call!743151 () Bool)

(assert (=> b!8000016 (= res!3163823 (not call!743151))))

(declare-fun b!8000017 () Bool)

(declare-fun e!4712838 () Bool)

(declare-fun nullable!9663 (Regex!21583) Bool)

(assert (=> b!8000017 (= e!4712838 (nullable!9663 lt!2713659))))

(declare-fun b!8000018 () Bool)

(declare-fun head!16300 (List!74812) C!43504)

(assert (=> b!8000018 (= e!4712839 (= (head!16300 (t!390555 input!8006)) (c!1468792 lt!2713659)))))

(declare-fun b!8000019 () Bool)

(declare-fun e!4712844 () Bool)

(declare-fun lt!2713662 () Bool)

(assert (=> b!8000019 (= e!4712844 (= lt!2713662 call!743151))))

(declare-fun b!8000020 () Bool)

(declare-fun res!3163824 () Bool)

(assert (=> b!8000020 (=> (not res!3163824) (not e!4712839))))

(assert (=> b!8000020 (= res!3163824 (isEmpty!42966 (tail!15827 (t!390555 input!8006))))))

(declare-fun d!2386604 () Bool)

(assert (=> d!2386604 e!4712844))

(declare-fun c!1468800 () Bool)

(assert (=> d!2386604 (= c!1468800 ((_ is EmptyExpr!21583) lt!2713659))))

(assert (=> d!2386604 (= lt!2713662 e!4712838)))

(declare-fun c!1468799 () Bool)

(assert (=> d!2386604 (= c!1468799 (isEmpty!42966 (t!390555 input!8006)))))

(assert (=> d!2386604 (validRegex!11887 lt!2713659)))

(assert (=> d!2386604 (= (matchR!10768 lt!2713659 (t!390555 input!8006)) lt!2713662)))

(declare-fun b!8000021 () Bool)

(declare-fun e!4712840 () Bool)

(declare-fun e!4712841 () Bool)

(assert (=> b!8000021 (= e!4712840 e!4712841)))

(declare-fun res!3163825 () Bool)

(assert (=> b!8000021 (=> (not res!3163825) (not e!4712841))))

(assert (=> b!8000021 (= res!3163825 (not lt!2713662))))

(declare-fun b!8000022 () Bool)

(assert (=> b!8000022 (= e!4712843 (not (= (head!16300 (t!390555 input!8006)) (c!1468792 lt!2713659))))))

(declare-fun b!8000023 () Bool)

(declare-fun e!4712842 () Bool)

(assert (=> b!8000023 (= e!4712844 e!4712842)))

(declare-fun c!1468801 () Bool)

(assert (=> b!8000023 (= c!1468801 ((_ is EmptyLang!21583) lt!2713659))))

(declare-fun b!8000024 () Bool)

(declare-fun res!3163830 () Bool)

(assert (=> b!8000024 (=> res!3163830 e!4712840)))

(assert (=> b!8000024 (= res!3163830 e!4712839)))

(declare-fun res!3163827 () Bool)

(assert (=> b!8000024 (=> (not res!3163827) (not e!4712839))))

(assert (=> b!8000024 (= res!3163827 lt!2713662)))

(declare-fun bm!743146 () Bool)

(assert (=> bm!743146 (= call!743151 (isEmpty!42966 (t!390555 input!8006)))))

(declare-fun b!8000025 () Bool)

(assert (=> b!8000025 (= e!4712838 (matchR!10768 (derivativeStep!6598 lt!2713659 (head!16300 (t!390555 input!8006))) (tail!15827 (t!390555 input!8006))))))

(declare-fun b!8000026 () Bool)

(assert (=> b!8000026 (= e!4712842 (not lt!2713662))))

(declare-fun b!8000027 () Bool)

(declare-fun res!3163828 () Bool)

(assert (=> b!8000027 (=> res!3163828 e!4712840)))

(assert (=> b!8000027 (= res!3163828 (not ((_ is ElementMatch!21583) lt!2713659)))))

(assert (=> b!8000027 (= e!4712842 e!4712840)))

(declare-fun b!8000028 () Bool)

(assert (=> b!8000028 (= e!4712841 e!4712843)))

(declare-fun res!3163829 () Bool)

(assert (=> b!8000028 (=> res!3163829 e!4712843)))

(assert (=> b!8000028 (= res!3163829 call!743151)))

(assert (= (and d!2386604 c!1468799) b!8000017))

(assert (= (and d!2386604 (not c!1468799)) b!8000025))

(assert (= (and d!2386604 c!1468800) b!8000019))

(assert (= (and d!2386604 (not c!1468800)) b!8000023))

(assert (= (and b!8000023 c!1468801) b!8000026))

(assert (= (and b!8000023 (not c!1468801)) b!8000027))

(assert (= (and b!8000027 (not res!3163828)) b!8000024))

(assert (= (and b!8000024 res!3163827) b!8000016))

(assert (= (and b!8000016 res!3163823) b!8000020))

(assert (= (and b!8000020 res!3163824) b!8000018))

(assert (= (and b!8000024 (not res!3163830)) b!8000021))

(assert (= (and b!8000021 res!3163825) b!8000028))

(assert (= (and b!8000028 (not res!3163829)) b!8000015))

(assert (= (and b!8000015 (not res!3163826)) b!8000022))

(assert (= (or b!8000019 b!8000016 b!8000028) bm!743146))

(declare-fun m!8368210 () Bool)

(assert (=> bm!743146 m!8368210))

(declare-fun m!8368212 () Bool)

(assert (=> b!8000017 m!8368212))

(declare-fun m!8368214 () Bool)

(assert (=> b!8000020 m!8368214))

(assert (=> b!8000020 m!8368214))

(declare-fun m!8368216 () Bool)

(assert (=> b!8000020 m!8368216))

(assert (=> d!2386604 m!8368210))

(assert (=> d!2386604 m!8368194))

(declare-fun m!8368218 () Bool)

(assert (=> b!8000018 m!8368218))

(assert (=> b!8000015 m!8368214))

(assert (=> b!8000015 m!8368214))

(assert (=> b!8000015 m!8368216))

(assert (=> b!8000025 m!8368218))

(assert (=> b!8000025 m!8368218))

(declare-fun m!8368220 () Bool)

(assert (=> b!8000025 m!8368220))

(assert (=> b!8000025 m!8368214))

(assert (=> b!8000025 m!8368220))

(assert (=> b!8000025 m!8368214))

(declare-fun m!8368222 () Bool)

(assert (=> b!8000025 m!8368222))

(assert (=> b!8000022 m!8368218))

(assert (=> b!7999984 d!2386604))

(declare-fun d!2386608 () Bool)

(declare-fun lt!2713665 () Regex!21583)

(assert (=> d!2386608 (validRegex!11887 lt!2713665)))

(declare-fun e!4712847 () Regex!21583)

(assert (=> d!2386608 (= lt!2713665 e!4712847)))

(declare-fun c!1468804 () Bool)

(assert (=> d!2386608 (= c!1468804 ((_ is Cons!74688) (t!390555 input!8006)))))

(assert (=> d!2386608 (validRegex!11887 lt!2713659)))

(assert (=> d!2386608 (= (derivative!767 lt!2713659 (t!390555 input!8006)) lt!2713665)))

(declare-fun b!8000033 () Bool)

(assert (=> b!8000033 (= e!4712847 (derivative!767 (derivativeStep!6598 lt!2713659 (h!81136 (t!390555 input!8006))) (t!390555 (t!390555 input!8006))))))

(declare-fun b!8000034 () Bool)

(assert (=> b!8000034 (= e!4712847 lt!2713659)))

(assert (= (and d!2386608 c!1468804) b!8000033))

(assert (= (and d!2386608 (not c!1468804)) b!8000034))

(declare-fun m!8368224 () Bool)

(assert (=> d!2386608 m!8368224))

(assert (=> d!2386608 m!8368194))

(declare-fun m!8368226 () Bool)

(assert (=> b!8000033 m!8368226))

(assert (=> b!8000033 m!8368226))

(declare-fun m!8368228 () Bool)

(assert (=> b!8000033 m!8368228))

(assert (=> b!7999984 d!2386608))

(declare-fun d!2386610 () Bool)

(declare-fun lt!2713666 () Regex!21583)

(assert (=> d!2386610 (validRegex!11887 lt!2713666)))

(declare-fun e!4712848 () Regex!21583)

(assert (=> d!2386610 (= lt!2713666 e!4712848)))

(declare-fun c!1468805 () Bool)

(assert (=> d!2386610 (= c!1468805 ((_ is Cons!74688) input!8006))))

(assert (=> d!2386610 (validRegex!11887 r!24748)))

(assert (=> d!2386610 (= (derivative!767 r!24748 input!8006) lt!2713666)))

(declare-fun b!8000035 () Bool)

(assert (=> b!8000035 (= e!4712848 (derivative!767 (derivativeStep!6598 r!24748 (h!81136 input!8006)) (t!390555 input!8006)))))

(declare-fun b!8000036 () Bool)

(assert (=> b!8000036 (= e!4712848 r!24748)))

(assert (= (and d!2386610 c!1468805) b!8000035))

(assert (= (and d!2386610 (not c!1468805)) b!8000036))

(declare-fun m!8368230 () Bool)

(assert (=> d!2386610 m!8368230))

(assert (=> d!2386610 m!8368192))

(assert (=> b!8000035 m!8368196))

(assert (=> b!8000035 m!8368196))

(declare-fun m!8368232 () Bool)

(assert (=> b!8000035 m!8368232))

(assert (=> b!7999984 d!2386610))

(declare-fun d!2386612 () Bool)

(assert (=> d!2386612 (= (matchR!10768 lt!2713659 (t!390555 input!8006)) (matchR!10768 (derivative!767 lt!2713659 (t!390555 input!8006)) Nil!74688))))

(declare-fun lt!2713671 () Unit!170588)

(declare-fun choose!60206 (Regex!21583 List!74812) Unit!170588)

(assert (=> d!2386612 (= lt!2713671 (choose!60206 lt!2713659 (t!390555 input!8006)))))

(assert (=> d!2386612 (validRegex!11887 lt!2713659)))

(assert (=> d!2386612 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!310 lt!2713659 (t!390555 input!8006)) lt!2713671)))

(declare-fun bs!1970547 () Bool)

(assert (= bs!1970547 d!2386612))

(assert (=> bs!1970547 m!8368202))

(assert (=> bs!1970547 m!8368198))

(assert (=> bs!1970547 m!8368208))

(assert (=> bs!1970547 m!8368194))

(declare-fun m!8368234 () Bool)

(assert (=> bs!1970547 m!8368234))

(assert (=> bs!1970547 m!8368198))

(assert (=> b!7999984 d!2386612))

(declare-fun b!8000083 () Bool)

(declare-fun e!4712880 () Bool)

(declare-fun call!743160 () Bool)

(assert (=> b!8000083 (= e!4712880 call!743160)))

(declare-fun b!8000084 () Bool)

(declare-fun e!4712882 () Bool)

(declare-fun e!4712879 () Bool)

(assert (=> b!8000084 (= e!4712882 e!4712879)))

(declare-fun c!1468817 () Bool)

(assert (=> b!8000084 (= c!1468817 ((_ is Union!21583) (derivative!767 r!24748 input!8006)))))

(declare-fun bm!743155 () Bool)

(assert (=> bm!743155 (= call!743160 (validRegex!11887 (ite c!1468817 (regTwo!43679 (derivative!767 r!24748 input!8006)) (regOne!43678 (derivative!767 r!24748 input!8006)))))))

(declare-fun d!2386614 () Bool)

(declare-fun res!3163858 () Bool)

(declare-fun e!4712878 () Bool)

(assert (=> d!2386614 (=> res!3163858 e!4712878)))

(assert (=> d!2386614 (= res!3163858 ((_ is ElementMatch!21583) (derivative!767 r!24748 input!8006)))))

(assert (=> d!2386614 (= (validRegex!11887 (derivative!767 r!24748 input!8006)) e!4712878)))

(declare-fun bm!743156 () Bool)

(declare-fun call!743162 () Bool)

(declare-fun call!743161 () Bool)

(assert (=> bm!743156 (= call!743162 call!743161)))

(declare-fun b!8000085 () Bool)

(declare-fun e!4712881 () Bool)

(assert (=> b!8000085 (= e!4712882 e!4712881)))

(declare-fun res!3163859 () Bool)

(assert (=> b!8000085 (= res!3163859 (not (nullable!9663 (reg!21912 (derivative!767 r!24748 input!8006)))))))

(assert (=> b!8000085 (=> (not res!3163859) (not e!4712881))))

(declare-fun b!8000086 () Bool)

(declare-fun e!4712883 () Bool)

(assert (=> b!8000086 (= e!4712883 call!743162)))

(declare-fun b!8000087 () Bool)

(declare-fun res!3163861 () Bool)

(declare-fun e!4712877 () Bool)

(assert (=> b!8000087 (=> res!3163861 e!4712877)))

(assert (=> b!8000087 (= res!3163861 (not ((_ is Concat!30582) (derivative!767 r!24748 input!8006))))))

(assert (=> b!8000087 (= e!4712879 e!4712877)))

(declare-fun b!8000088 () Bool)

(declare-fun res!3163857 () Bool)

(assert (=> b!8000088 (=> (not res!3163857) (not e!4712880))))

(assert (=> b!8000088 (= res!3163857 call!743162)))

(assert (=> b!8000088 (= e!4712879 e!4712880)))

(declare-fun b!8000089 () Bool)

(assert (=> b!8000089 (= e!4712878 e!4712882)))

(declare-fun c!1468816 () Bool)

(assert (=> b!8000089 (= c!1468816 ((_ is Star!21583) (derivative!767 r!24748 input!8006)))))

(declare-fun b!8000090 () Bool)

(assert (=> b!8000090 (= e!4712877 e!4712883)))

(declare-fun res!3163860 () Bool)

(assert (=> b!8000090 (=> (not res!3163860) (not e!4712883))))

(assert (=> b!8000090 (= res!3163860 call!743160)))

(declare-fun bm!743157 () Bool)

(assert (=> bm!743157 (= call!743161 (validRegex!11887 (ite c!1468816 (reg!21912 (derivative!767 r!24748 input!8006)) (ite c!1468817 (regOne!43679 (derivative!767 r!24748 input!8006)) (regTwo!43678 (derivative!767 r!24748 input!8006))))))))

(declare-fun b!8000091 () Bool)

(assert (=> b!8000091 (= e!4712881 call!743161)))

(assert (= (and d!2386614 (not res!3163858)) b!8000089))

(assert (= (and b!8000089 c!1468816) b!8000085))

(assert (= (and b!8000089 (not c!1468816)) b!8000084))

(assert (= (and b!8000085 res!3163859) b!8000091))

(assert (= (and b!8000084 c!1468817) b!8000088))

(assert (= (and b!8000084 (not c!1468817)) b!8000087))

(assert (= (and b!8000088 res!3163857) b!8000083))

(assert (= (and b!8000087 (not res!3163861)) b!8000090))

(assert (= (and b!8000090 res!3163860) b!8000086))

(assert (= (or b!8000083 b!8000090) bm!743155))

(assert (= (or b!8000088 b!8000086) bm!743156))

(assert (= (or b!8000091 bm!743156) bm!743157))

(declare-fun m!8368236 () Bool)

(assert (=> bm!743155 m!8368236))

(declare-fun m!8368238 () Bool)

(assert (=> b!8000085 m!8368238))

(declare-fun m!8368240 () Bool)

(assert (=> bm!743157 m!8368240))

(assert (=> b!7999984 d!2386614))

(declare-fun b!8000092 () Bool)

(declare-fun res!3163865 () Bool)

(declare-fun e!4712889 () Bool)

(assert (=> b!8000092 (=> res!3163865 e!4712889)))

(assert (=> b!8000092 (= res!3163865 (not (isEmpty!42966 (tail!15827 Nil!74688))))))

(declare-fun b!8000093 () Bool)

(declare-fun res!3163862 () Bool)

(declare-fun e!4712885 () Bool)

(assert (=> b!8000093 (=> (not res!3163862) (not e!4712885))))

(declare-fun call!743163 () Bool)

(assert (=> b!8000093 (= res!3163862 (not call!743163))))

(declare-fun b!8000094 () Bool)

(declare-fun e!4712884 () Bool)

(assert (=> b!8000094 (= e!4712884 (nullable!9663 (derivative!767 lt!2713659 (t!390555 input!8006))))))

(declare-fun b!8000095 () Bool)

(assert (=> b!8000095 (= e!4712885 (= (head!16300 Nil!74688) (c!1468792 (derivative!767 lt!2713659 (t!390555 input!8006)))))))

(declare-fun b!8000096 () Bool)

(declare-fun e!4712890 () Bool)

(declare-fun lt!2713672 () Bool)

(assert (=> b!8000096 (= e!4712890 (= lt!2713672 call!743163))))

(declare-fun b!8000097 () Bool)

(declare-fun res!3163863 () Bool)

(assert (=> b!8000097 (=> (not res!3163863) (not e!4712885))))

(assert (=> b!8000097 (= res!3163863 (isEmpty!42966 (tail!15827 Nil!74688)))))

(declare-fun d!2386616 () Bool)

(assert (=> d!2386616 e!4712890))

(declare-fun c!1468819 () Bool)

(assert (=> d!2386616 (= c!1468819 ((_ is EmptyExpr!21583) (derivative!767 lt!2713659 (t!390555 input!8006))))))

(assert (=> d!2386616 (= lt!2713672 e!4712884)))

(declare-fun c!1468818 () Bool)

(assert (=> d!2386616 (= c!1468818 (isEmpty!42966 Nil!74688))))

(assert (=> d!2386616 (validRegex!11887 (derivative!767 lt!2713659 (t!390555 input!8006)))))

(assert (=> d!2386616 (= (matchR!10768 (derivative!767 lt!2713659 (t!390555 input!8006)) Nil!74688) lt!2713672)))

(declare-fun b!8000098 () Bool)

(declare-fun e!4712886 () Bool)

(declare-fun e!4712887 () Bool)

(assert (=> b!8000098 (= e!4712886 e!4712887)))

(declare-fun res!3163864 () Bool)

(assert (=> b!8000098 (=> (not res!3163864) (not e!4712887))))

(assert (=> b!8000098 (= res!3163864 (not lt!2713672))))

(declare-fun b!8000099 () Bool)

(assert (=> b!8000099 (= e!4712889 (not (= (head!16300 Nil!74688) (c!1468792 (derivative!767 lt!2713659 (t!390555 input!8006))))))))

(declare-fun b!8000100 () Bool)

(declare-fun e!4712888 () Bool)

(assert (=> b!8000100 (= e!4712890 e!4712888)))

(declare-fun c!1468820 () Bool)

(assert (=> b!8000100 (= c!1468820 ((_ is EmptyLang!21583) (derivative!767 lt!2713659 (t!390555 input!8006))))))

(declare-fun b!8000101 () Bool)

(declare-fun res!3163869 () Bool)

(assert (=> b!8000101 (=> res!3163869 e!4712886)))

(assert (=> b!8000101 (= res!3163869 e!4712885)))

(declare-fun res!3163866 () Bool)

(assert (=> b!8000101 (=> (not res!3163866) (not e!4712885))))

(assert (=> b!8000101 (= res!3163866 lt!2713672)))

(declare-fun bm!743158 () Bool)

(assert (=> bm!743158 (= call!743163 (isEmpty!42966 Nil!74688))))

(declare-fun b!8000102 () Bool)

(assert (=> b!8000102 (= e!4712884 (matchR!10768 (derivativeStep!6598 (derivative!767 lt!2713659 (t!390555 input!8006)) (head!16300 Nil!74688)) (tail!15827 Nil!74688)))))

(declare-fun b!8000103 () Bool)

(assert (=> b!8000103 (= e!4712888 (not lt!2713672))))

(declare-fun b!8000104 () Bool)

(declare-fun res!3163867 () Bool)

(assert (=> b!8000104 (=> res!3163867 e!4712886)))

(assert (=> b!8000104 (= res!3163867 (not ((_ is ElementMatch!21583) (derivative!767 lt!2713659 (t!390555 input!8006)))))))

(assert (=> b!8000104 (= e!4712888 e!4712886)))

(declare-fun b!8000105 () Bool)

(assert (=> b!8000105 (= e!4712887 e!4712889)))

(declare-fun res!3163868 () Bool)

(assert (=> b!8000105 (=> res!3163868 e!4712889)))

(assert (=> b!8000105 (= res!3163868 call!743163)))

(assert (= (and d!2386616 c!1468818) b!8000094))

(assert (= (and d!2386616 (not c!1468818)) b!8000102))

(assert (= (and d!2386616 c!1468819) b!8000096))

(assert (= (and d!2386616 (not c!1468819)) b!8000100))

(assert (= (and b!8000100 c!1468820) b!8000103))

(assert (= (and b!8000100 (not c!1468820)) b!8000104))

(assert (= (and b!8000104 (not res!3163867)) b!8000101))

(assert (= (and b!8000101 res!3163866) b!8000093))

(assert (= (and b!8000093 res!3163862) b!8000097))

(assert (= (and b!8000097 res!3163863) b!8000095))

(assert (= (and b!8000101 (not res!3163869)) b!8000098))

(assert (= (and b!8000098 res!3163864) b!8000105))

(assert (= (and b!8000105 (not res!3163868)) b!8000092))

(assert (= (and b!8000092 (not res!3163865)) b!8000099))

(assert (= (or b!8000096 b!8000093 b!8000105) bm!743158))

(declare-fun m!8368242 () Bool)

(assert (=> bm!743158 m!8368242))

(assert (=> b!8000094 m!8368198))

(declare-fun m!8368244 () Bool)

(assert (=> b!8000094 m!8368244))

(declare-fun m!8368246 () Bool)

(assert (=> b!8000097 m!8368246))

(assert (=> b!8000097 m!8368246))

(declare-fun m!8368248 () Bool)

(assert (=> b!8000097 m!8368248))

(assert (=> d!2386616 m!8368242))

(assert (=> d!2386616 m!8368198))

(declare-fun m!8368250 () Bool)

(assert (=> d!2386616 m!8368250))

(declare-fun m!8368252 () Bool)

(assert (=> b!8000095 m!8368252))

(assert (=> b!8000092 m!8368246))

(assert (=> b!8000092 m!8368246))

(assert (=> b!8000092 m!8368248))

(assert (=> b!8000102 m!8368252))

(assert (=> b!8000102 m!8368198))

(assert (=> b!8000102 m!8368252))

(declare-fun m!8368254 () Bool)

(assert (=> b!8000102 m!8368254))

(assert (=> b!8000102 m!8368246))

(assert (=> b!8000102 m!8368254))

(assert (=> b!8000102 m!8368246))

(declare-fun m!8368256 () Bool)

(assert (=> b!8000102 m!8368256))

(assert (=> b!8000099 m!8368252))

(assert (=> b!7999984 d!2386616))

(declare-fun b!8000106 () Bool)

(declare-fun e!4712894 () Bool)

(declare-fun call!743164 () Bool)

(assert (=> b!8000106 (= e!4712894 call!743164)))

(declare-fun b!8000107 () Bool)

(declare-fun e!4712896 () Bool)

(declare-fun e!4712893 () Bool)

(assert (=> b!8000107 (= e!4712896 e!4712893)))

(declare-fun c!1468822 () Bool)

(assert (=> b!8000107 (= c!1468822 ((_ is Union!21583) r!24748))))

(declare-fun bm!743159 () Bool)

(assert (=> bm!743159 (= call!743164 (validRegex!11887 (ite c!1468822 (regTwo!43679 r!24748) (regOne!43678 r!24748))))))

(declare-fun d!2386618 () Bool)

(declare-fun res!3163871 () Bool)

(declare-fun e!4712892 () Bool)

(assert (=> d!2386618 (=> res!3163871 e!4712892)))

(assert (=> d!2386618 (= res!3163871 ((_ is ElementMatch!21583) r!24748))))

(assert (=> d!2386618 (= (validRegex!11887 r!24748) e!4712892)))

(declare-fun bm!743160 () Bool)

(declare-fun call!743166 () Bool)

(declare-fun call!743165 () Bool)

(assert (=> bm!743160 (= call!743166 call!743165)))

(declare-fun b!8000108 () Bool)

(declare-fun e!4712895 () Bool)

(assert (=> b!8000108 (= e!4712896 e!4712895)))

(declare-fun res!3163872 () Bool)

(assert (=> b!8000108 (= res!3163872 (not (nullable!9663 (reg!21912 r!24748))))))

(assert (=> b!8000108 (=> (not res!3163872) (not e!4712895))))

(declare-fun b!8000109 () Bool)

(declare-fun e!4712897 () Bool)

(assert (=> b!8000109 (= e!4712897 call!743166)))

(declare-fun b!8000110 () Bool)

(declare-fun res!3163874 () Bool)

(declare-fun e!4712891 () Bool)

(assert (=> b!8000110 (=> res!3163874 e!4712891)))

(assert (=> b!8000110 (= res!3163874 (not ((_ is Concat!30582) r!24748)))))

(assert (=> b!8000110 (= e!4712893 e!4712891)))

(declare-fun b!8000111 () Bool)

(declare-fun res!3163870 () Bool)

(assert (=> b!8000111 (=> (not res!3163870) (not e!4712894))))

(assert (=> b!8000111 (= res!3163870 call!743166)))

(assert (=> b!8000111 (= e!4712893 e!4712894)))

(declare-fun b!8000112 () Bool)

(assert (=> b!8000112 (= e!4712892 e!4712896)))

(declare-fun c!1468821 () Bool)

(assert (=> b!8000112 (= c!1468821 ((_ is Star!21583) r!24748))))

(declare-fun b!8000113 () Bool)

(assert (=> b!8000113 (= e!4712891 e!4712897)))

(declare-fun res!3163873 () Bool)

(assert (=> b!8000113 (=> (not res!3163873) (not e!4712897))))

(assert (=> b!8000113 (= res!3163873 call!743164)))

(declare-fun bm!743161 () Bool)

(assert (=> bm!743161 (= call!743165 (validRegex!11887 (ite c!1468821 (reg!21912 r!24748) (ite c!1468822 (regOne!43679 r!24748) (regTwo!43678 r!24748)))))))

(declare-fun b!8000114 () Bool)

(assert (=> b!8000114 (= e!4712895 call!743165)))

(assert (= (and d!2386618 (not res!3163871)) b!8000112))

(assert (= (and b!8000112 c!1468821) b!8000108))

(assert (= (and b!8000112 (not c!1468821)) b!8000107))

(assert (= (and b!8000108 res!3163872) b!8000114))

(assert (= (and b!8000107 c!1468822) b!8000111))

(assert (= (and b!8000107 (not c!1468822)) b!8000110))

(assert (= (and b!8000111 res!3163870) b!8000106))

(assert (= (and b!8000110 (not res!3163874)) b!8000113))

(assert (= (and b!8000113 res!3163873) b!8000109))

(assert (= (or b!8000106 b!8000113) bm!743159))

(assert (= (or b!8000111 b!8000109) bm!743160))

(assert (= (or b!8000114 bm!743160) bm!743161))

(declare-fun m!8368258 () Bool)

(assert (=> bm!743159 m!8368258))

(declare-fun m!8368260 () Bool)

(assert (=> b!8000108 m!8368260))

(declare-fun m!8368262 () Bool)

(assert (=> bm!743161 m!8368262))

(assert (=> start!752764 d!2386618))

(declare-fun b!8000115 () Bool)

(declare-fun e!4712901 () Bool)

(declare-fun call!743167 () Bool)

(assert (=> b!8000115 (= e!4712901 call!743167)))

(declare-fun b!8000116 () Bool)

(declare-fun e!4712903 () Bool)

(declare-fun e!4712900 () Bool)

(assert (=> b!8000116 (= e!4712903 e!4712900)))

(declare-fun c!1468824 () Bool)

(assert (=> b!8000116 (= c!1468824 ((_ is Union!21583) lt!2713659))))

(declare-fun bm!743162 () Bool)

(assert (=> bm!743162 (= call!743167 (validRegex!11887 (ite c!1468824 (regTwo!43679 lt!2713659) (regOne!43678 lt!2713659))))))

(declare-fun d!2386620 () Bool)

(declare-fun res!3163876 () Bool)

(declare-fun e!4712899 () Bool)

(assert (=> d!2386620 (=> res!3163876 e!4712899)))

(assert (=> d!2386620 (= res!3163876 ((_ is ElementMatch!21583) lt!2713659))))

(assert (=> d!2386620 (= (validRegex!11887 lt!2713659) e!4712899)))

(declare-fun bm!743163 () Bool)

(declare-fun call!743169 () Bool)

(declare-fun call!743168 () Bool)

(assert (=> bm!743163 (= call!743169 call!743168)))

(declare-fun b!8000117 () Bool)

(declare-fun e!4712902 () Bool)

(assert (=> b!8000117 (= e!4712903 e!4712902)))

(declare-fun res!3163877 () Bool)

(assert (=> b!8000117 (= res!3163877 (not (nullable!9663 (reg!21912 lt!2713659))))))

(assert (=> b!8000117 (=> (not res!3163877) (not e!4712902))))

(declare-fun b!8000118 () Bool)

(declare-fun e!4712904 () Bool)

(assert (=> b!8000118 (= e!4712904 call!743169)))

(declare-fun b!8000119 () Bool)

(declare-fun res!3163879 () Bool)

(declare-fun e!4712898 () Bool)

(assert (=> b!8000119 (=> res!3163879 e!4712898)))

(assert (=> b!8000119 (= res!3163879 (not ((_ is Concat!30582) lt!2713659)))))

(assert (=> b!8000119 (= e!4712900 e!4712898)))

(declare-fun b!8000120 () Bool)

(declare-fun res!3163875 () Bool)

(assert (=> b!8000120 (=> (not res!3163875) (not e!4712901))))

(assert (=> b!8000120 (= res!3163875 call!743169)))

(assert (=> b!8000120 (= e!4712900 e!4712901)))

(declare-fun b!8000121 () Bool)

(assert (=> b!8000121 (= e!4712899 e!4712903)))

(declare-fun c!1468823 () Bool)

(assert (=> b!8000121 (= c!1468823 ((_ is Star!21583) lt!2713659))))

(declare-fun b!8000122 () Bool)

(assert (=> b!8000122 (= e!4712898 e!4712904)))

(declare-fun res!3163878 () Bool)

(assert (=> b!8000122 (=> (not res!3163878) (not e!4712904))))

(assert (=> b!8000122 (= res!3163878 call!743167)))

(declare-fun bm!743164 () Bool)

(assert (=> bm!743164 (= call!743168 (validRegex!11887 (ite c!1468823 (reg!21912 lt!2713659) (ite c!1468824 (regOne!43679 lt!2713659) (regTwo!43678 lt!2713659)))))))

(declare-fun b!8000123 () Bool)

(assert (=> b!8000123 (= e!4712902 call!743168)))

(assert (= (and d!2386620 (not res!3163876)) b!8000121))

(assert (= (and b!8000121 c!1468823) b!8000117))

(assert (= (and b!8000121 (not c!1468823)) b!8000116))

(assert (= (and b!8000117 res!3163877) b!8000123))

(assert (= (and b!8000116 c!1468824) b!8000120))

(assert (= (and b!8000116 (not c!1468824)) b!8000119))

(assert (= (and b!8000120 res!3163875) b!8000115))

(assert (= (and b!8000119 (not res!3163879)) b!8000122))

(assert (= (and b!8000122 res!3163878) b!8000118))

(assert (= (or b!8000115 b!8000122) bm!743162))

(assert (= (or b!8000120 b!8000118) bm!743163))

(assert (= (or b!8000123 bm!743163) bm!743164))

(declare-fun m!8368264 () Bool)

(assert (=> bm!743162 m!8368264))

(declare-fun m!8368266 () Bool)

(assert (=> b!8000117 m!8368266))

(declare-fun m!8368268 () Bool)

(assert (=> bm!743164 m!8368268))

(assert (=> b!7999981 d!2386620))

(declare-fun b!8000176 () Bool)

(declare-fun e!4712940 () Regex!21583)

(declare-fun call!743185 () Regex!21583)

(assert (=> b!8000176 (= e!4712940 (Union!21583 (Concat!30582 call!743185 (regTwo!43678 r!24748)) EmptyLang!21583))))

(declare-fun b!8000177 () Bool)

(declare-fun e!4712936 () Regex!21583)

(assert (=> b!8000177 (= e!4712936 EmptyLang!21583)))

(declare-fun b!8000178 () Bool)

(declare-fun e!4712938 () Regex!21583)

(declare-fun call!743183 () Regex!21583)

(declare-fun call!743186 () Regex!21583)

(assert (=> b!8000178 (= e!4712938 (Union!21583 call!743183 call!743186))))

(declare-fun c!1468842 () Bool)

(declare-fun bm!743178 () Bool)

(assert (=> bm!743178 (= call!743183 (derivativeStep!6598 (ite c!1468842 (regOne!43679 r!24748) (regTwo!43678 r!24748)) (h!81136 input!8006)))))

(declare-fun d!2386622 () Bool)

(declare-fun lt!2713676 () Regex!21583)

(assert (=> d!2386622 (validRegex!11887 lt!2713676)))

(assert (=> d!2386622 (= lt!2713676 e!4712936)))

(declare-fun c!1468844 () Bool)

(assert (=> d!2386622 (= c!1468844 (or ((_ is EmptyExpr!21583) r!24748) ((_ is EmptyLang!21583) r!24748)))))

(assert (=> d!2386622 (validRegex!11887 r!24748)))

(assert (=> d!2386622 (= (derivativeStep!6598 r!24748 (h!81136 input!8006)) lt!2713676)))

(declare-fun b!8000179 () Bool)

(assert (=> b!8000179 (= e!4712940 (Union!21583 (Concat!30582 call!743185 (regTwo!43678 r!24748)) call!743183))))

(declare-fun b!8000180 () Bool)

(declare-fun c!1468843 () Bool)

(assert (=> b!8000180 (= c!1468843 (nullable!9663 (regOne!43678 r!24748)))))

(declare-fun e!4712939 () Regex!21583)

(assert (=> b!8000180 (= e!4712939 e!4712940)))

(declare-fun b!8000181 () Bool)

(assert (=> b!8000181 (= e!4712938 e!4712939)))

(declare-fun c!1468846 () Bool)

(assert (=> b!8000181 (= c!1468846 ((_ is Star!21583) r!24748))))

(declare-fun bm!743179 () Bool)

(declare-fun call!743184 () Regex!21583)

(assert (=> bm!743179 (= call!743184 call!743186)))

(declare-fun bm!743180 () Bool)

(assert (=> bm!743180 (= call!743185 call!743184)))

(declare-fun b!8000182 () Bool)

(declare-fun e!4712937 () Regex!21583)

(assert (=> b!8000182 (= e!4712937 (ite (= (h!81136 input!8006) (c!1468792 r!24748)) EmptyExpr!21583 EmptyLang!21583))))

(declare-fun bm!743181 () Bool)

(assert (=> bm!743181 (= call!743186 (derivativeStep!6598 (ite c!1468842 (regTwo!43679 r!24748) (ite c!1468846 (reg!21912 r!24748) (regOne!43678 r!24748))) (h!81136 input!8006)))))

(declare-fun b!8000183 () Bool)

(assert (=> b!8000183 (= e!4712936 e!4712937)))

(declare-fun c!1468845 () Bool)

(assert (=> b!8000183 (= c!1468845 ((_ is ElementMatch!21583) r!24748))))

(declare-fun b!8000184 () Bool)

(assert (=> b!8000184 (= c!1468842 ((_ is Union!21583) r!24748))))

(assert (=> b!8000184 (= e!4712937 e!4712938)))

(declare-fun b!8000185 () Bool)

(assert (=> b!8000185 (= e!4712939 (Concat!30582 call!743184 r!24748))))

(assert (= (and d!2386622 c!1468844) b!8000177))

(assert (= (and d!2386622 (not c!1468844)) b!8000183))

(assert (= (and b!8000183 c!1468845) b!8000182))

(assert (= (and b!8000183 (not c!1468845)) b!8000184))

(assert (= (and b!8000184 c!1468842) b!8000178))

(assert (= (and b!8000184 (not c!1468842)) b!8000181))

(assert (= (and b!8000181 c!1468846) b!8000185))

(assert (= (and b!8000181 (not c!1468846)) b!8000180))

(assert (= (and b!8000180 c!1468843) b!8000179))

(assert (= (and b!8000180 (not c!1468843)) b!8000176))

(assert (= (or b!8000179 b!8000176) bm!743180))

(assert (= (or b!8000185 bm!743180) bm!743179))

(assert (= (or b!8000178 b!8000179) bm!743178))

(assert (= (or b!8000178 bm!743179) bm!743181))

(declare-fun m!8368284 () Bool)

(assert (=> bm!743178 m!8368284))

(declare-fun m!8368286 () Bool)

(assert (=> d!2386622 m!8368286))

(assert (=> d!2386622 m!8368192))

(declare-fun m!8368288 () Bool)

(assert (=> b!8000180 m!8368288))

(declare-fun m!8368290 () Bool)

(assert (=> bm!743181 m!8368290))

(assert (=> b!7999981 d!2386622))

(declare-fun b!8000190 () Bool)

(declare-fun e!4712943 () Bool)

(declare-fun tp!2392901 () Bool)

(assert (=> b!8000190 (= e!4712943 (and tp_is_empty!53709 tp!2392901))))

(assert (=> b!7999983 (= tp!2392895 e!4712943)))

(assert (= (and b!7999983 ((_ is Cons!74688) (t!390555 input!8006))) b!8000190))

(declare-fun b!8000203 () Bool)

(declare-fun e!4712946 () Bool)

(declare-fun tp!2392916 () Bool)

(assert (=> b!8000203 (= e!4712946 tp!2392916)))

(declare-fun b!8000202 () Bool)

(declare-fun tp!2392914 () Bool)

(declare-fun tp!2392912 () Bool)

(assert (=> b!8000202 (= e!4712946 (and tp!2392914 tp!2392912))))

(assert (=> b!7999985 (= tp!2392896 e!4712946)))

(declare-fun b!8000204 () Bool)

(declare-fun tp!2392913 () Bool)

(declare-fun tp!2392915 () Bool)

(assert (=> b!8000204 (= e!4712946 (and tp!2392913 tp!2392915))))

(declare-fun b!8000201 () Bool)

(assert (=> b!8000201 (= e!4712946 tp_is_empty!53709)))

(assert (= (and b!7999985 ((_ is ElementMatch!21583) (regOne!43679 r!24748))) b!8000201))

(assert (= (and b!7999985 ((_ is Concat!30582) (regOne!43679 r!24748))) b!8000202))

(assert (= (and b!7999985 ((_ is Star!21583) (regOne!43679 r!24748))) b!8000203))

(assert (= (and b!7999985 ((_ is Union!21583) (regOne!43679 r!24748))) b!8000204))

(declare-fun b!8000207 () Bool)

(declare-fun e!4712947 () Bool)

(declare-fun tp!2392921 () Bool)

(assert (=> b!8000207 (= e!4712947 tp!2392921)))

(declare-fun b!8000206 () Bool)

(declare-fun tp!2392919 () Bool)

(declare-fun tp!2392917 () Bool)

(assert (=> b!8000206 (= e!4712947 (and tp!2392919 tp!2392917))))

(assert (=> b!7999985 (= tp!2392894 e!4712947)))

(declare-fun b!8000208 () Bool)

(declare-fun tp!2392918 () Bool)

(declare-fun tp!2392920 () Bool)

(assert (=> b!8000208 (= e!4712947 (and tp!2392918 tp!2392920))))

(declare-fun b!8000205 () Bool)

(assert (=> b!8000205 (= e!4712947 tp_is_empty!53709)))

(assert (= (and b!7999985 ((_ is ElementMatch!21583) (regTwo!43679 r!24748))) b!8000205))

(assert (= (and b!7999985 ((_ is Concat!30582) (regTwo!43679 r!24748))) b!8000206))

(assert (= (and b!7999985 ((_ is Star!21583) (regTwo!43679 r!24748))) b!8000207))

(assert (= (and b!7999985 ((_ is Union!21583) (regTwo!43679 r!24748))) b!8000208))

(declare-fun b!8000211 () Bool)

(declare-fun e!4712948 () Bool)

(declare-fun tp!2392926 () Bool)

(assert (=> b!8000211 (= e!4712948 tp!2392926)))

(declare-fun b!8000210 () Bool)

(declare-fun tp!2392924 () Bool)

(declare-fun tp!2392922 () Bool)

(assert (=> b!8000210 (= e!4712948 (and tp!2392924 tp!2392922))))

(assert (=> b!7999980 (= tp!2392893 e!4712948)))

(declare-fun b!8000212 () Bool)

(declare-fun tp!2392923 () Bool)

(declare-fun tp!2392925 () Bool)

(assert (=> b!8000212 (= e!4712948 (and tp!2392923 tp!2392925))))

(declare-fun b!8000209 () Bool)

(assert (=> b!8000209 (= e!4712948 tp_is_empty!53709)))

(assert (= (and b!7999980 ((_ is ElementMatch!21583) (regOne!43678 r!24748))) b!8000209))

(assert (= (and b!7999980 ((_ is Concat!30582) (regOne!43678 r!24748))) b!8000210))

(assert (= (and b!7999980 ((_ is Star!21583) (regOne!43678 r!24748))) b!8000211))

(assert (= (and b!7999980 ((_ is Union!21583) (regOne!43678 r!24748))) b!8000212))

(declare-fun b!8000215 () Bool)

(declare-fun e!4712949 () Bool)

(declare-fun tp!2392931 () Bool)

(assert (=> b!8000215 (= e!4712949 tp!2392931)))

(declare-fun b!8000214 () Bool)

(declare-fun tp!2392929 () Bool)

(declare-fun tp!2392927 () Bool)

(assert (=> b!8000214 (= e!4712949 (and tp!2392929 tp!2392927))))

(assert (=> b!7999980 (= tp!2392898 e!4712949)))

(declare-fun b!8000216 () Bool)

(declare-fun tp!2392928 () Bool)

(declare-fun tp!2392930 () Bool)

(assert (=> b!8000216 (= e!4712949 (and tp!2392928 tp!2392930))))

(declare-fun b!8000213 () Bool)

(assert (=> b!8000213 (= e!4712949 tp_is_empty!53709)))

(assert (= (and b!7999980 ((_ is ElementMatch!21583) (regTwo!43678 r!24748))) b!8000213))

(assert (= (and b!7999980 ((_ is Concat!30582) (regTwo!43678 r!24748))) b!8000214))

(assert (= (and b!7999980 ((_ is Star!21583) (regTwo!43678 r!24748))) b!8000215))

(assert (= (and b!7999980 ((_ is Union!21583) (regTwo!43678 r!24748))) b!8000216))

(declare-fun b!8000219 () Bool)

(declare-fun e!4712950 () Bool)

(declare-fun tp!2392936 () Bool)

(assert (=> b!8000219 (= e!4712950 tp!2392936)))

(declare-fun b!8000218 () Bool)

(declare-fun tp!2392934 () Bool)

(declare-fun tp!2392932 () Bool)

(assert (=> b!8000218 (= e!4712950 (and tp!2392934 tp!2392932))))

(assert (=> b!7999986 (= tp!2392897 e!4712950)))

(declare-fun b!8000220 () Bool)

(declare-fun tp!2392933 () Bool)

(declare-fun tp!2392935 () Bool)

(assert (=> b!8000220 (= e!4712950 (and tp!2392933 tp!2392935))))

(declare-fun b!8000217 () Bool)

(assert (=> b!8000217 (= e!4712950 tp_is_empty!53709)))

(assert (= (and b!7999986 ((_ is ElementMatch!21583) (reg!21912 r!24748))) b!8000217))

(assert (= (and b!7999986 ((_ is Concat!30582) (reg!21912 r!24748))) b!8000218))

(assert (= (and b!7999986 ((_ is Star!21583) (reg!21912 r!24748))) b!8000219))

(assert (= (and b!7999986 ((_ is Union!21583) (reg!21912 r!24748))) b!8000220))

(check-sat (not b!8000022) (not bm!743178) (not b!8000097) (not b!8000095) (not d!2386612) (not b!8000216) (not d!2386622) (not b!8000102) (not d!2386610) (not b!8000208) (not b!8000210) (not b!8000017) (not b!8000018) (not b!8000204) (not b!8000035) (not b!8000025) (not b!8000203) tp_is_empty!53709 (not b!8000020) (not b!8000211) (not b!8000180) (not bm!743162) (not b!8000202) (not b!8000117) (not bm!743146) (not b!8000033) (not b!8000206) (not b!8000207) (not bm!743155) (not b!8000085) (not d!2386604) (not bm!743161) (not bm!743158) (not b!8000190) (not b!8000220) (not b!8000214) (not b!8000092) (not d!2386608) (not bm!743181) (not b!8000218) (not b!8000094) (not bm!743159) (not bm!743164) (not b!8000215) (not b!8000099) (not d!2386616) (not bm!743157) (not b!8000219) (not b!8000212) (not b!8000015) (not b!8000108))
(check-sat)
