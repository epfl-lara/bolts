; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739080 () Bool)

(assert start!739080)

(declare-fun b!7754906 () Bool)

(declare-fun e!4596837 () Bool)

(declare-fun tp_is_empty!51621 () Bool)

(declare-fun tp!2275644 () Bool)

(assert (=> b!7754906 (= e!4596837 (and tp_is_empty!51621 tp!2275644))))

(declare-fun b!7754907 () Bool)

(declare-fun e!4596836 () Bool)

(declare-datatypes ((C!41592 0))(
  ( (C!41593 (val!31236 Int)) )
))
(declare-datatypes ((List!73478 0))(
  ( (Nil!73354) (Cons!73354 (h!79802 C!41592) (t!388213 List!73478)) )
))
(declare-fun s!14266 () List!73478)

(declare-fun ++!17814 (List!73478 List!73478) List!73478)

(assert (=> b!7754907 (= e!4596836 (not (= (++!17814 Nil!73354 s!14266) s!14266)))))

(declare-fun b!7754908 () Bool)

(declare-fun res!3091858 () Bool)

(assert (=> b!7754908 (=> (not res!3091858) (not e!4596836))))

(declare-fun s2!3712 () List!73478)

(declare-fun s1!4090 () List!73478)

(assert (=> b!7754908 (= res!3091858 (= s!14266 (++!17814 s1!4090 s2!3712)))))

(declare-fun b!7754909 () Bool)

(declare-fun e!4596835 () Bool)

(declare-fun tp!2275639 () Bool)

(declare-fun tp!2275646 () Bool)

(assert (=> b!7754909 (= e!4596835 (and tp!2275639 tp!2275646))))

(declare-fun b!7754910 () Bool)

(assert (=> b!7754910 (= e!4596835 tp_is_empty!51621)))

(declare-fun b!7754911 () Bool)

(declare-fun e!4596834 () Bool)

(declare-fun tp!2275641 () Bool)

(assert (=> b!7754911 (= e!4596834 (and tp_is_empty!51621 tp!2275641))))

(declare-fun b!7754912 () Bool)

(declare-fun res!3091860 () Bool)

(assert (=> b!7754912 (=> (not res!3091860) (not e!4596836))))

(declare-datatypes ((Regex!20633 0))(
  ( (ElementMatch!20633 (c!1430258 C!41592)) (Concat!29478 (regOne!41778 Regex!20633) (regTwo!41778 Regex!20633)) (EmptyExpr!20633) (Star!20633 (reg!20962 Regex!20633)) (EmptyLang!20633) (Union!20633 (regOne!41779 Regex!20633) (regTwo!41779 Regex!20633)) )
))
(declare-fun r1!6249 () Regex!20633)

(declare-fun r2!6187 () Regex!20633)

(declare-datatypes ((tuple2!69660 0))(
  ( (tuple2!69661 (_1!38133 List!73478) (_2!38133 List!73478)) )
))
(declare-datatypes ((Option!17624 0))(
  ( (None!17623) (Some!17623 (v!54758 tuple2!69660)) )
))
(declare-fun isDefined!14238 (Option!17624) Bool)

(declare-fun findConcatSeparation!3654 (Regex!20633 Regex!20633 List!73478 List!73478 List!73478) Option!17624)

(assert (=> b!7754912 (= res!3091860 (isDefined!14238 (findConcatSeparation!3654 r1!6249 r2!6187 Nil!73354 s!14266 s!14266)))))

(declare-fun b!7754913 () Bool)

(declare-fun e!4596839 () Bool)

(declare-fun tp!2275638 () Bool)

(declare-fun tp!2275649 () Bool)

(assert (=> b!7754913 (= e!4596839 (and tp!2275638 tp!2275649))))

(declare-fun res!3091859 () Bool)

(assert (=> start!739080 (=> (not res!3091859) (not e!4596836))))

(declare-fun validRegex!11051 (Regex!20633) Bool)

(assert (=> start!739080 (= res!3091859 (validRegex!11051 r1!6249))))

(assert (=> start!739080 e!4596836))

(declare-fun e!4596838 () Bool)

(assert (=> start!739080 e!4596838))

(assert (=> start!739080 e!4596834))

(assert (=> start!739080 e!4596837))

(assert (=> start!739080 e!4596839))

(assert (=> start!739080 e!4596835))

(declare-fun b!7754905 () Bool)

(declare-fun res!3091857 () Bool)

(assert (=> b!7754905 (=> (not res!3091857) (not e!4596836))))

(assert (=> b!7754905 (= res!3091857 (validRegex!11051 r2!6187))))

(declare-fun b!7754914 () Bool)

(declare-fun tp!2275645 () Bool)

(declare-fun tp!2275643 () Bool)

(assert (=> b!7754914 (= e!4596839 (and tp!2275645 tp!2275643))))

(declare-fun b!7754915 () Bool)

(declare-fun tp!2275647 () Bool)

(assert (=> b!7754915 (= e!4596838 (and tp_is_empty!51621 tp!2275647))))

(declare-fun b!7754916 () Bool)

(assert (=> b!7754916 (= e!4596839 tp_is_empty!51621)))

(declare-fun b!7754917 () Bool)

(declare-fun tp!2275648 () Bool)

(assert (=> b!7754917 (= e!4596835 tp!2275648)))

(declare-fun b!7754918 () Bool)

(declare-fun tp!2275637 () Bool)

(assert (=> b!7754918 (= e!4596839 tp!2275637)))

(declare-fun b!7754919 () Bool)

(declare-fun tp!2275640 () Bool)

(declare-fun tp!2275642 () Bool)

(assert (=> b!7754919 (= e!4596835 (and tp!2275640 tp!2275642))))

(assert (= (and start!739080 res!3091859) b!7754905))

(assert (= (and b!7754905 res!3091857) b!7754908))

(assert (= (and b!7754908 res!3091858) b!7754912))

(assert (= (and b!7754912 res!3091860) b!7754907))

(get-info :version)

(assert (= (and start!739080 ((_ is Cons!73354) s!14266)) b!7754915))

(assert (= (and start!739080 ((_ is Cons!73354) s2!3712)) b!7754911))

(assert (= (and start!739080 ((_ is Cons!73354) s1!4090)) b!7754906))

(assert (= (and start!739080 ((_ is ElementMatch!20633) r1!6249)) b!7754916))

(assert (= (and start!739080 ((_ is Concat!29478) r1!6249)) b!7754914))

(assert (= (and start!739080 ((_ is Star!20633) r1!6249)) b!7754918))

(assert (= (and start!739080 ((_ is Union!20633) r1!6249)) b!7754913))

(assert (= (and start!739080 ((_ is ElementMatch!20633) r2!6187)) b!7754910))

(assert (= (and start!739080 ((_ is Concat!29478) r2!6187)) b!7754919))

(assert (= (and start!739080 ((_ is Star!20633) r2!6187)) b!7754917))

(assert (= (and start!739080 ((_ is Union!20633) r2!6187)) b!7754909))

(declare-fun m!8218490 () Bool)

(assert (=> start!739080 m!8218490))

(declare-fun m!8218492 () Bool)

(assert (=> b!7754912 m!8218492))

(assert (=> b!7754912 m!8218492))

(declare-fun m!8218494 () Bool)

(assert (=> b!7754912 m!8218494))

(declare-fun m!8218496 () Bool)

(assert (=> b!7754907 m!8218496))

(declare-fun m!8218498 () Bool)

(assert (=> b!7754905 m!8218498))

(declare-fun m!8218500 () Bool)

(assert (=> b!7754908 m!8218500))

(check-sat (not start!739080) (not b!7754909) (not b!7754912) tp_is_empty!51621 (not b!7754906) (not b!7754913) (not b!7754917) (not b!7754914) (not b!7754908) (not b!7754905) (not b!7754907) (not b!7754918) (not b!7754911) (not b!7754919) (not b!7754915))
(check-sat)
(get-model)

(declare-fun d!2343254 () Bool)

(declare-fun res!3091880 () Bool)

(declare-fun e!4596864 () Bool)

(assert (=> d!2343254 (=> res!3091880 e!4596864)))

(assert (=> d!2343254 (= res!3091880 ((_ is ElementMatch!20633) r2!6187))))

(assert (=> d!2343254 (= (validRegex!11051 r2!6187) e!4596864)))

(declare-fun b!7754950 () Bool)

(declare-fun e!4596865 () Bool)

(assert (=> b!7754950 (= e!4596864 e!4596865)))

(declare-fun c!1430266 () Bool)

(assert (=> b!7754950 (= c!1430266 ((_ is Star!20633) r2!6187))))

(declare-fun b!7754951 () Bool)

(declare-fun e!4596863 () Bool)

(declare-fun call!718882 () Bool)

(assert (=> b!7754951 (= e!4596863 call!718882)))

(declare-fun bm!718876 () Bool)

(declare-fun call!718881 () Bool)

(declare-fun call!718883 () Bool)

(assert (=> bm!718876 (= call!718881 call!718883)))

(declare-fun b!7754952 () Bool)

(declare-fun e!4596866 () Bool)

(assert (=> b!7754952 (= e!4596866 call!718881)))

(declare-fun b!7754953 () Bool)

(declare-fun res!3091878 () Bool)

(assert (=> b!7754953 (=> (not res!3091878) (not e!4596863))))

(assert (=> b!7754953 (= res!3091878 call!718881)))

(declare-fun e!4596862 () Bool)

(assert (=> b!7754953 (= e!4596862 e!4596863)))

(declare-fun b!7754954 () Bool)

(declare-fun e!4596860 () Bool)

(assert (=> b!7754954 (= e!4596860 e!4596866)))

(declare-fun res!3091879 () Bool)

(assert (=> b!7754954 (=> (not res!3091879) (not e!4596866))))

(assert (=> b!7754954 (= res!3091879 call!718882)))

(declare-fun b!7754955 () Bool)

(assert (=> b!7754955 (= e!4596865 e!4596862)))

(declare-fun c!1430267 () Bool)

(assert (=> b!7754955 (= c!1430267 ((_ is Union!20633) r2!6187))))

(declare-fun bm!718877 () Bool)

(assert (=> bm!718877 (= call!718882 (validRegex!11051 (ite c!1430267 (regTwo!41779 r2!6187) (regOne!41778 r2!6187))))))

(declare-fun bm!718878 () Bool)

(assert (=> bm!718878 (= call!718883 (validRegex!11051 (ite c!1430266 (reg!20962 r2!6187) (ite c!1430267 (regOne!41779 r2!6187) (regTwo!41778 r2!6187)))))))

(declare-fun b!7754956 () Bool)

(declare-fun e!4596861 () Bool)

(assert (=> b!7754956 (= e!4596865 e!4596861)))

(declare-fun res!3091881 () Bool)

(declare-fun nullable!9089 (Regex!20633) Bool)

(assert (=> b!7754956 (= res!3091881 (not (nullable!9089 (reg!20962 r2!6187))))))

(assert (=> b!7754956 (=> (not res!3091881) (not e!4596861))))

(declare-fun b!7754957 () Bool)

(assert (=> b!7754957 (= e!4596861 call!718883)))

(declare-fun b!7754958 () Bool)

(declare-fun res!3091877 () Bool)

(assert (=> b!7754958 (=> res!3091877 e!4596860)))

(assert (=> b!7754958 (= res!3091877 (not ((_ is Concat!29478) r2!6187)))))

(assert (=> b!7754958 (= e!4596862 e!4596860)))

(assert (= (and d!2343254 (not res!3091880)) b!7754950))

(assert (= (and b!7754950 c!1430266) b!7754956))

(assert (= (and b!7754950 (not c!1430266)) b!7754955))

(assert (= (and b!7754956 res!3091881) b!7754957))

(assert (= (and b!7754955 c!1430267) b!7754953))

(assert (= (and b!7754955 (not c!1430267)) b!7754958))

(assert (= (and b!7754953 res!3091878) b!7754951))

(assert (= (and b!7754958 (not res!3091877)) b!7754954))

(assert (= (and b!7754954 res!3091879) b!7754952))

(assert (= (or b!7754953 b!7754952) bm!718876))

(assert (= (or b!7754951 b!7754954) bm!718877))

(assert (= (or b!7754957 bm!718876) bm!718878))

(declare-fun m!8218516 () Bool)

(assert (=> bm!718877 m!8218516))

(declare-fun m!8218518 () Bool)

(assert (=> bm!718878 m!8218518))

(declare-fun m!8218520 () Bool)

(assert (=> b!7754956 m!8218520))

(assert (=> b!7754905 d!2343254))

(declare-fun d!2343258 () Bool)

(declare-fun e!4596893 () Bool)

(assert (=> d!2343258 e!4596893))

(declare-fun res!3091901 () Bool)

(assert (=> d!2343258 (=> (not res!3091901) (not e!4596893))))

(declare-fun lt!2669680 () List!73478)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15559 (List!73478) (InoxSet C!41592))

(assert (=> d!2343258 (= res!3091901 (= (content!15559 lt!2669680) ((_ map or) (content!15559 Nil!73354) (content!15559 s!14266))))))

(declare-fun e!4596892 () List!73478)

(assert (=> d!2343258 (= lt!2669680 e!4596892)))

(declare-fun c!1430276 () Bool)

(assert (=> d!2343258 (= c!1430276 ((_ is Nil!73354) Nil!73354))))

(assert (=> d!2343258 (= (++!17814 Nil!73354 s!14266) lt!2669680)))

(declare-fun b!7754995 () Bool)

(assert (=> b!7754995 (= e!4596892 (Cons!73354 (h!79802 Nil!73354) (++!17814 (t!388213 Nil!73354) s!14266)))))

(declare-fun b!7754994 () Bool)

(assert (=> b!7754994 (= e!4596892 s!14266)))

(declare-fun b!7754996 () Bool)

(declare-fun res!3091902 () Bool)

(assert (=> b!7754996 (=> (not res!3091902) (not e!4596893))))

(declare-fun size!42662 (List!73478) Int)

(assert (=> b!7754996 (= res!3091902 (= (size!42662 lt!2669680) (+ (size!42662 Nil!73354) (size!42662 s!14266))))))

(declare-fun b!7754997 () Bool)

(assert (=> b!7754997 (= e!4596893 (or (not (= s!14266 Nil!73354)) (= lt!2669680 Nil!73354)))))

(assert (= (and d!2343258 c!1430276) b!7754994))

(assert (= (and d!2343258 (not c!1430276)) b!7754995))

(assert (= (and d!2343258 res!3091901) b!7754996))

(assert (= (and b!7754996 res!3091902) b!7754997))

(declare-fun m!8218530 () Bool)

(assert (=> d!2343258 m!8218530))

(declare-fun m!8218532 () Bool)

(assert (=> d!2343258 m!8218532))

(declare-fun m!8218534 () Bool)

(assert (=> d!2343258 m!8218534))

(declare-fun m!8218536 () Bool)

(assert (=> b!7754995 m!8218536))

(declare-fun m!8218538 () Bool)

(assert (=> b!7754996 m!8218538))

(declare-fun m!8218540 () Bool)

(assert (=> b!7754996 m!8218540))

(declare-fun m!8218542 () Bool)

(assert (=> b!7754996 m!8218542))

(assert (=> b!7754907 d!2343258))

(declare-fun d!2343264 () Bool)

(declare-fun isEmpty!42035 (Option!17624) Bool)

(assert (=> d!2343264 (= (isDefined!14238 (findConcatSeparation!3654 r1!6249 r2!6187 Nil!73354 s!14266 s!14266)) (not (isEmpty!42035 (findConcatSeparation!3654 r1!6249 r2!6187 Nil!73354 s!14266 s!14266))))))

(declare-fun bs!1965866 () Bool)

(assert (= bs!1965866 d!2343264))

(assert (=> bs!1965866 m!8218492))

(declare-fun m!8218544 () Bool)

(assert (=> bs!1965866 m!8218544))

(assert (=> b!7754912 d!2343264))

(declare-fun b!7755043 () Bool)

(declare-fun e!4596919 () Option!17624)

(assert (=> b!7755043 (= e!4596919 (Some!17623 (tuple2!69661 Nil!73354 s!14266)))))

(declare-fun d!2343266 () Bool)

(declare-fun e!4596923 () Bool)

(assert (=> d!2343266 e!4596923))

(declare-fun res!3091930 () Bool)

(assert (=> d!2343266 (=> res!3091930 e!4596923)))

(declare-fun e!4596922 () Bool)

(assert (=> d!2343266 (= res!3091930 e!4596922)))

(declare-fun res!3091928 () Bool)

(assert (=> d!2343266 (=> (not res!3091928) (not e!4596922))))

(declare-fun lt!2669697 () Option!17624)

(assert (=> d!2343266 (= res!3091928 (isDefined!14238 lt!2669697))))

(assert (=> d!2343266 (= lt!2669697 e!4596919)))

(declare-fun c!1430287 () Bool)

(declare-fun e!4596921 () Bool)

(assert (=> d!2343266 (= c!1430287 e!4596921)))

(declare-fun res!3091932 () Bool)

(assert (=> d!2343266 (=> (not res!3091932) (not e!4596921))))

(declare-fun matchR!10117 (Regex!20633 List!73478) Bool)

(assert (=> d!2343266 (= res!3091932 (matchR!10117 r1!6249 Nil!73354))))

(assert (=> d!2343266 (validRegex!11051 r1!6249)))

(assert (=> d!2343266 (= (findConcatSeparation!3654 r1!6249 r2!6187 Nil!73354 s!14266 s!14266) lt!2669697)))

(declare-fun b!7755044 () Bool)

(declare-fun get!26108 (Option!17624) tuple2!69660)

(assert (=> b!7755044 (= e!4596922 (= (++!17814 (_1!38133 (get!26108 lt!2669697)) (_2!38133 (get!26108 lt!2669697))) s!14266))))

(declare-fun b!7755045 () Bool)

(assert (=> b!7755045 (= e!4596923 (not (isDefined!14238 lt!2669697)))))

(declare-fun b!7755046 () Bool)

(declare-fun e!4596920 () Option!17624)

(assert (=> b!7755046 (= e!4596919 e!4596920)))

(declare-fun c!1430288 () Bool)

(assert (=> b!7755046 (= c!1430288 ((_ is Nil!73354) s!14266))))

(declare-fun b!7755047 () Bool)

(declare-fun res!3091929 () Bool)

(assert (=> b!7755047 (=> (not res!3091929) (not e!4596922))))

(assert (=> b!7755047 (= res!3091929 (matchR!10117 r1!6249 (_1!38133 (get!26108 lt!2669697))))))

(declare-fun b!7755048 () Bool)

(declare-datatypes ((Unit!168334 0))(
  ( (Unit!168335) )
))
(declare-fun lt!2669696 () Unit!168334)

(declare-fun lt!2669698 () Unit!168334)

(assert (=> b!7755048 (= lt!2669696 lt!2669698)))

(assert (=> b!7755048 (= (++!17814 (++!17814 Nil!73354 (Cons!73354 (h!79802 s!14266) Nil!73354)) (t!388213 s!14266)) s!14266)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3344 (List!73478 C!41592 List!73478 List!73478) Unit!168334)

(assert (=> b!7755048 (= lt!2669698 (lemmaMoveElementToOtherListKeepsConcatEq!3344 Nil!73354 (h!79802 s!14266) (t!388213 s!14266) s!14266))))

(assert (=> b!7755048 (= e!4596920 (findConcatSeparation!3654 r1!6249 r2!6187 (++!17814 Nil!73354 (Cons!73354 (h!79802 s!14266) Nil!73354)) (t!388213 s!14266) s!14266))))

(declare-fun b!7755049 () Bool)

(declare-fun res!3091931 () Bool)

(assert (=> b!7755049 (=> (not res!3091931) (not e!4596922))))

(assert (=> b!7755049 (= res!3091931 (matchR!10117 r2!6187 (_2!38133 (get!26108 lt!2669697))))))

(declare-fun b!7755050 () Bool)

(assert (=> b!7755050 (= e!4596920 None!17623)))

(declare-fun b!7755051 () Bool)

(assert (=> b!7755051 (= e!4596921 (matchR!10117 r2!6187 s!14266))))

(assert (= (and d!2343266 res!3091932) b!7755051))

(assert (= (and d!2343266 c!1430287) b!7755043))

(assert (= (and d!2343266 (not c!1430287)) b!7755046))

(assert (= (and b!7755046 c!1430288) b!7755050))

(assert (= (and b!7755046 (not c!1430288)) b!7755048))

(assert (= (and d!2343266 res!3091928) b!7755047))

(assert (= (and b!7755047 res!3091929) b!7755049))

(assert (= (and b!7755049 res!3091931) b!7755044))

(assert (= (and d!2343266 (not res!3091930)) b!7755045))

(declare-fun m!8218568 () Bool)

(assert (=> b!7755044 m!8218568))

(declare-fun m!8218570 () Bool)

(assert (=> b!7755044 m!8218570))

(assert (=> b!7755047 m!8218568))

(declare-fun m!8218572 () Bool)

(assert (=> b!7755047 m!8218572))

(declare-fun m!8218574 () Bool)

(assert (=> b!7755048 m!8218574))

(assert (=> b!7755048 m!8218574))

(declare-fun m!8218576 () Bool)

(assert (=> b!7755048 m!8218576))

(declare-fun m!8218578 () Bool)

(assert (=> b!7755048 m!8218578))

(assert (=> b!7755048 m!8218574))

(declare-fun m!8218582 () Bool)

(assert (=> b!7755048 m!8218582))

(declare-fun m!8218588 () Bool)

(assert (=> d!2343266 m!8218588))

(declare-fun m!8218590 () Bool)

(assert (=> d!2343266 m!8218590))

(assert (=> d!2343266 m!8218490))

(assert (=> b!7755049 m!8218568))

(declare-fun m!8218592 () Bool)

(assert (=> b!7755049 m!8218592))

(declare-fun m!8218594 () Bool)

(assert (=> b!7755051 m!8218594))

(assert (=> b!7755045 m!8218588))

(assert (=> b!7754912 d!2343266))

(declare-fun d!2343272 () Bool)

(declare-fun e!4596934 () Bool)

(assert (=> d!2343272 e!4596934))

(declare-fun res!3091940 () Bool)

(assert (=> d!2343272 (=> (not res!3091940) (not e!4596934))))

(declare-fun lt!2669700 () List!73478)

(assert (=> d!2343272 (= res!3091940 (= (content!15559 lt!2669700) ((_ map or) (content!15559 s1!4090) (content!15559 s2!3712))))))

(declare-fun e!4596933 () List!73478)

(assert (=> d!2343272 (= lt!2669700 e!4596933)))

(declare-fun c!1430292 () Bool)

(assert (=> d!2343272 (= c!1430292 ((_ is Nil!73354) s1!4090))))

(assert (=> d!2343272 (= (++!17814 s1!4090 s2!3712) lt!2669700)))

(declare-fun b!7755066 () Bool)

(assert (=> b!7755066 (= e!4596933 (Cons!73354 (h!79802 s1!4090) (++!17814 (t!388213 s1!4090) s2!3712)))))

(declare-fun b!7755065 () Bool)

(assert (=> b!7755065 (= e!4596933 s2!3712)))

(declare-fun b!7755067 () Bool)

(declare-fun res!3091941 () Bool)

(assert (=> b!7755067 (=> (not res!3091941) (not e!4596934))))

(assert (=> b!7755067 (= res!3091941 (= (size!42662 lt!2669700) (+ (size!42662 s1!4090) (size!42662 s2!3712))))))

(declare-fun b!7755068 () Bool)

(assert (=> b!7755068 (= e!4596934 (or (not (= s2!3712 Nil!73354)) (= lt!2669700 s1!4090)))))

(assert (= (and d!2343272 c!1430292) b!7755065))

(assert (= (and d!2343272 (not c!1430292)) b!7755066))

(assert (= (and d!2343272 res!3091940) b!7755067))

(assert (= (and b!7755067 res!3091941) b!7755068))

(declare-fun m!8218610 () Bool)

(assert (=> d!2343272 m!8218610))

(declare-fun m!8218612 () Bool)

(assert (=> d!2343272 m!8218612))

(declare-fun m!8218614 () Bool)

(assert (=> d!2343272 m!8218614))

(declare-fun m!8218616 () Bool)

(assert (=> b!7755066 m!8218616))

(declare-fun m!8218618 () Bool)

(assert (=> b!7755067 m!8218618))

(declare-fun m!8218620 () Bool)

(assert (=> b!7755067 m!8218620))

(declare-fun m!8218622 () Bool)

(assert (=> b!7755067 m!8218622))

(assert (=> b!7754908 d!2343272))

(declare-fun d!2343274 () Bool)

(declare-fun res!3091945 () Bool)

(declare-fun e!4596941 () Bool)

(assert (=> d!2343274 (=> res!3091945 e!4596941)))

(assert (=> d!2343274 (= res!3091945 ((_ is ElementMatch!20633) r1!6249))))

(assert (=> d!2343274 (= (validRegex!11051 r1!6249) e!4596941)))

(declare-fun b!7755077 () Bool)

(declare-fun e!4596942 () Bool)

(assert (=> b!7755077 (= e!4596941 e!4596942)))

(declare-fun c!1430293 () Bool)

(assert (=> b!7755077 (= c!1430293 ((_ is Star!20633) r1!6249))))

(declare-fun b!7755078 () Bool)

(declare-fun e!4596940 () Bool)

(declare-fun call!718897 () Bool)

(assert (=> b!7755078 (= e!4596940 call!718897)))

(declare-fun bm!718891 () Bool)

(declare-fun call!718896 () Bool)

(declare-fun call!718898 () Bool)

(assert (=> bm!718891 (= call!718896 call!718898)))

(declare-fun b!7755079 () Bool)

(declare-fun e!4596943 () Bool)

(assert (=> b!7755079 (= e!4596943 call!718896)))

(declare-fun b!7755080 () Bool)

(declare-fun res!3091943 () Bool)

(assert (=> b!7755080 (=> (not res!3091943) (not e!4596940))))

(assert (=> b!7755080 (= res!3091943 call!718896)))

(declare-fun e!4596939 () Bool)

(assert (=> b!7755080 (= e!4596939 e!4596940)))

(declare-fun b!7755081 () Bool)

(declare-fun e!4596937 () Bool)

(assert (=> b!7755081 (= e!4596937 e!4596943)))

(declare-fun res!3091944 () Bool)

(assert (=> b!7755081 (=> (not res!3091944) (not e!4596943))))

(assert (=> b!7755081 (= res!3091944 call!718897)))

(declare-fun b!7755082 () Bool)

(assert (=> b!7755082 (= e!4596942 e!4596939)))

(declare-fun c!1430294 () Bool)

(assert (=> b!7755082 (= c!1430294 ((_ is Union!20633) r1!6249))))

(declare-fun bm!718892 () Bool)

(assert (=> bm!718892 (= call!718897 (validRegex!11051 (ite c!1430294 (regTwo!41779 r1!6249) (regOne!41778 r1!6249))))))

(declare-fun bm!718893 () Bool)

(assert (=> bm!718893 (= call!718898 (validRegex!11051 (ite c!1430293 (reg!20962 r1!6249) (ite c!1430294 (regOne!41779 r1!6249) (regTwo!41778 r1!6249)))))))

(declare-fun b!7755083 () Bool)

(declare-fun e!4596938 () Bool)

(assert (=> b!7755083 (= e!4596942 e!4596938)))

(declare-fun res!3091946 () Bool)

(assert (=> b!7755083 (= res!3091946 (not (nullable!9089 (reg!20962 r1!6249))))))

(assert (=> b!7755083 (=> (not res!3091946) (not e!4596938))))

(declare-fun b!7755084 () Bool)

(assert (=> b!7755084 (= e!4596938 call!718898)))

(declare-fun b!7755085 () Bool)

(declare-fun res!3091942 () Bool)

(assert (=> b!7755085 (=> res!3091942 e!4596937)))

(assert (=> b!7755085 (= res!3091942 (not ((_ is Concat!29478) r1!6249)))))

(assert (=> b!7755085 (= e!4596939 e!4596937)))

(assert (= (and d!2343274 (not res!3091945)) b!7755077))

(assert (= (and b!7755077 c!1430293) b!7755083))

(assert (= (and b!7755077 (not c!1430293)) b!7755082))

(assert (= (and b!7755083 res!3091946) b!7755084))

(assert (= (and b!7755082 c!1430294) b!7755080))

(assert (= (and b!7755082 (not c!1430294)) b!7755085))

(assert (= (and b!7755080 res!3091943) b!7755078))

(assert (= (and b!7755085 (not res!3091942)) b!7755081))

(assert (= (and b!7755081 res!3091944) b!7755079))

(assert (= (or b!7755080 b!7755079) bm!718891))

(assert (= (or b!7755078 b!7755081) bm!718892))

(assert (= (or b!7755084 bm!718891) bm!718893))

(declare-fun m!8218624 () Bool)

(assert (=> bm!718892 m!8218624))

(declare-fun m!8218626 () Bool)

(assert (=> bm!718893 m!8218626))

(declare-fun m!8218628 () Bool)

(assert (=> b!7755083 m!8218628))

(assert (=> start!739080 d!2343274))

(declare-fun b!7755108 () Bool)

(declare-fun e!4596950 () Bool)

(declare-fun tp!2275682 () Bool)

(assert (=> b!7755108 (= e!4596950 (and tp_is_empty!51621 tp!2275682))))

(assert (=> b!7754911 (= tp!2275641 e!4596950)))

(assert (= (and b!7754911 ((_ is Cons!73354) (t!388213 s2!3712))) b!7755108))

(declare-fun b!7755141 () Bool)

(declare-fun e!4596961 () Bool)

(assert (=> b!7755141 (= e!4596961 tp_is_empty!51621)))

(declare-fun b!7755143 () Bool)

(declare-fun tp!2275721 () Bool)

(assert (=> b!7755143 (= e!4596961 tp!2275721)))

(assert (=> b!7754917 (= tp!2275648 e!4596961)))

(declare-fun b!7755144 () Bool)

(declare-fun tp!2275717 () Bool)

(declare-fun tp!2275718 () Bool)

(assert (=> b!7755144 (= e!4596961 (and tp!2275717 tp!2275718))))

(declare-fun b!7755142 () Bool)

(declare-fun tp!2275719 () Bool)

(declare-fun tp!2275720 () Bool)

(assert (=> b!7755142 (= e!4596961 (and tp!2275719 tp!2275720))))

(assert (= (and b!7754917 ((_ is ElementMatch!20633) (reg!20962 r2!6187))) b!7755141))

(assert (= (and b!7754917 ((_ is Concat!29478) (reg!20962 r2!6187))) b!7755142))

(assert (= (and b!7754917 ((_ is Star!20633) (reg!20962 r2!6187))) b!7755143))

(assert (= (and b!7754917 ((_ is Union!20633) (reg!20962 r2!6187))) b!7755144))

(declare-fun b!7755149 () Bool)

(declare-fun e!4596963 () Bool)

(declare-fun tp!2275727 () Bool)

(assert (=> b!7755149 (= e!4596963 (and tp_is_empty!51621 tp!2275727))))

(assert (=> b!7754906 (= tp!2275644 e!4596963)))

(assert (= (and b!7754906 ((_ is Cons!73354) (t!388213 s1!4090))) b!7755149))

(declare-fun b!7755154 () Bool)

(declare-fun e!4596965 () Bool)

(assert (=> b!7755154 (= e!4596965 tp_is_empty!51621)))

(declare-fun b!7755156 () Bool)

(declare-fun tp!2275737 () Bool)

(assert (=> b!7755156 (= e!4596965 tp!2275737)))

(assert (=> b!7754913 (= tp!2275638 e!4596965)))

(declare-fun b!7755157 () Bool)

(declare-fun tp!2275733 () Bool)

(declare-fun tp!2275734 () Bool)

(assert (=> b!7755157 (= e!4596965 (and tp!2275733 tp!2275734))))

(declare-fun b!7755155 () Bool)

(declare-fun tp!2275735 () Bool)

(declare-fun tp!2275736 () Bool)

(assert (=> b!7755155 (= e!4596965 (and tp!2275735 tp!2275736))))

(assert (= (and b!7754913 ((_ is ElementMatch!20633) (regOne!41779 r1!6249))) b!7755154))

(assert (= (and b!7754913 ((_ is Concat!29478) (regOne!41779 r1!6249))) b!7755155))

(assert (= (and b!7754913 ((_ is Star!20633) (regOne!41779 r1!6249))) b!7755156))

(assert (= (and b!7754913 ((_ is Union!20633) (regOne!41779 r1!6249))) b!7755157))

(declare-fun b!7755159 () Bool)

(declare-fun e!4596967 () Bool)

(assert (=> b!7755159 (= e!4596967 tp_is_empty!51621)))

(declare-fun b!7755161 () Bool)

(declare-fun tp!2275743 () Bool)

(assert (=> b!7755161 (= e!4596967 tp!2275743)))

(assert (=> b!7754913 (= tp!2275649 e!4596967)))

(declare-fun b!7755162 () Bool)

(declare-fun tp!2275739 () Bool)

(declare-fun tp!2275740 () Bool)

(assert (=> b!7755162 (= e!4596967 (and tp!2275739 tp!2275740))))

(declare-fun b!7755160 () Bool)

(declare-fun tp!2275741 () Bool)

(declare-fun tp!2275742 () Bool)

(assert (=> b!7755160 (= e!4596967 (and tp!2275741 tp!2275742))))

(assert (= (and b!7754913 ((_ is ElementMatch!20633) (regTwo!41779 r1!6249))) b!7755159))

(assert (= (and b!7754913 ((_ is Concat!29478) (regTwo!41779 r1!6249))) b!7755160))

(assert (= (and b!7754913 ((_ is Star!20633) (regTwo!41779 r1!6249))) b!7755161))

(assert (= (and b!7754913 ((_ is Union!20633) (regTwo!41779 r1!6249))) b!7755162))

(declare-fun b!7755163 () Bool)

(declare-fun e!4596968 () Bool)

(assert (=> b!7755163 (= e!4596968 tp_is_empty!51621)))

(declare-fun b!7755165 () Bool)

(declare-fun tp!2275748 () Bool)

(assert (=> b!7755165 (= e!4596968 tp!2275748)))

(assert (=> b!7754918 (= tp!2275637 e!4596968)))

(declare-fun b!7755166 () Bool)

(declare-fun tp!2275744 () Bool)

(declare-fun tp!2275745 () Bool)

(assert (=> b!7755166 (= e!4596968 (and tp!2275744 tp!2275745))))

(declare-fun b!7755164 () Bool)

(declare-fun tp!2275746 () Bool)

(declare-fun tp!2275747 () Bool)

(assert (=> b!7755164 (= e!4596968 (and tp!2275746 tp!2275747))))

(assert (= (and b!7754918 ((_ is ElementMatch!20633) (reg!20962 r1!6249))) b!7755163))

(assert (= (and b!7754918 ((_ is Concat!29478) (reg!20962 r1!6249))) b!7755164))

(assert (= (and b!7754918 ((_ is Star!20633) (reg!20962 r1!6249))) b!7755165))

(assert (= (and b!7754918 ((_ is Union!20633) (reg!20962 r1!6249))) b!7755166))

(declare-fun b!7755167 () Bool)

(declare-fun e!4596969 () Bool)

(assert (=> b!7755167 (= e!4596969 tp_is_empty!51621)))

(declare-fun b!7755169 () Bool)

(declare-fun tp!2275753 () Bool)

(assert (=> b!7755169 (= e!4596969 tp!2275753)))

(assert (=> b!7754919 (= tp!2275640 e!4596969)))

(declare-fun b!7755170 () Bool)

(declare-fun tp!2275749 () Bool)

(declare-fun tp!2275750 () Bool)

(assert (=> b!7755170 (= e!4596969 (and tp!2275749 tp!2275750))))

(declare-fun b!7755168 () Bool)

(declare-fun tp!2275751 () Bool)

(declare-fun tp!2275752 () Bool)

(assert (=> b!7755168 (= e!4596969 (and tp!2275751 tp!2275752))))

(assert (= (and b!7754919 ((_ is ElementMatch!20633) (regOne!41778 r2!6187))) b!7755167))

(assert (= (and b!7754919 ((_ is Concat!29478) (regOne!41778 r2!6187))) b!7755168))

(assert (= (and b!7754919 ((_ is Star!20633) (regOne!41778 r2!6187))) b!7755169))

(assert (= (and b!7754919 ((_ is Union!20633) (regOne!41778 r2!6187))) b!7755170))

(declare-fun b!7755171 () Bool)

(declare-fun e!4596970 () Bool)

(assert (=> b!7755171 (= e!4596970 tp_is_empty!51621)))

(declare-fun b!7755173 () Bool)

(declare-fun tp!2275758 () Bool)

(assert (=> b!7755173 (= e!4596970 tp!2275758)))

(assert (=> b!7754919 (= tp!2275642 e!4596970)))

(declare-fun b!7755174 () Bool)

(declare-fun tp!2275754 () Bool)

(declare-fun tp!2275755 () Bool)

(assert (=> b!7755174 (= e!4596970 (and tp!2275754 tp!2275755))))

(declare-fun b!7755172 () Bool)

(declare-fun tp!2275756 () Bool)

(declare-fun tp!2275757 () Bool)

(assert (=> b!7755172 (= e!4596970 (and tp!2275756 tp!2275757))))

(assert (= (and b!7754919 ((_ is ElementMatch!20633) (regTwo!41778 r2!6187))) b!7755171))

(assert (= (and b!7754919 ((_ is Concat!29478) (regTwo!41778 r2!6187))) b!7755172))

(assert (= (and b!7754919 ((_ is Star!20633) (regTwo!41778 r2!6187))) b!7755173))

(assert (= (and b!7754919 ((_ is Union!20633) (regTwo!41778 r2!6187))) b!7755174))

(declare-fun b!7755175 () Bool)

(declare-fun e!4596971 () Bool)

(assert (=> b!7755175 (= e!4596971 tp_is_empty!51621)))

(declare-fun b!7755177 () Bool)

(declare-fun tp!2275763 () Bool)

(assert (=> b!7755177 (= e!4596971 tp!2275763)))

(assert (=> b!7754909 (= tp!2275639 e!4596971)))

(declare-fun b!7755178 () Bool)

(declare-fun tp!2275759 () Bool)

(declare-fun tp!2275760 () Bool)

(assert (=> b!7755178 (= e!4596971 (and tp!2275759 tp!2275760))))

(declare-fun b!7755176 () Bool)

(declare-fun tp!2275761 () Bool)

(declare-fun tp!2275762 () Bool)

(assert (=> b!7755176 (= e!4596971 (and tp!2275761 tp!2275762))))

(assert (= (and b!7754909 ((_ is ElementMatch!20633) (regOne!41779 r2!6187))) b!7755175))

(assert (= (and b!7754909 ((_ is Concat!29478) (regOne!41779 r2!6187))) b!7755176))

(assert (= (and b!7754909 ((_ is Star!20633) (regOne!41779 r2!6187))) b!7755177))

(assert (= (and b!7754909 ((_ is Union!20633) (regOne!41779 r2!6187))) b!7755178))

(declare-fun b!7755179 () Bool)

(declare-fun e!4596972 () Bool)

(assert (=> b!7755179 (= e!4596972 tp_is_empty!51621)))

(declare-fun b!7755181 () Bool)

(declare-fun tp!2275768 () Bool)

(assert (=> b!7755181 (= e!4596972 tp!2275768)))

(assert (=> b!7754909 (= tp!2275646 e!4596972)))

(declare-fun b!7755182 () Bool)

(declare-fun tp!2275764 () Bool)

(declare-fun tp!2275765 () Bool)

(assert (=> b!7755182 (= e!4596972 (and tp!2275764 tp!2275765))))

(declare-fun b!7755180 () Bool)

(declare-fun tp!2275766 () Bool)

(declare-fun tp!2275767 () Bool)

(assert (=> b!7755180 (= e!4596972 (and tp!2275766 tp!2275767))))

(assert (= (and b!7754909 ((_ is ElementMatch!20633) (regTwo!41779 r2!6187))) b!7755179))

(assert (= (and b!7754909 ((_ is Concat!29478) (regTwo!41779 r2!6187))) b!7755180))

(assert (= (and b!7754909 ((_ is Star!20633) (regTwo!41779 r2!6187))) b!7755181))

(assert (= (and b!7754909 ((_ is Union!20633) (regTwo!41779 r2!6187))) b!7755182))

(declare-fun b!7755183 () Bool)

(declare-fun e!4596973 () Bool)

(assert (=> b!7755183 (= e!4596973 tp_is_empty!51621)))

(declare-fun b!7755185 () Bool)

(declare-fun tp!2275773 () Bool)

(assert (=> b!7755185 (= e!4596973 tp!2275773)))

(assert (=> b!7754914 (= tp!2275645 e!4596973)))

(declare-fun b!7755186 () Bool)

(declare-fun tp!2275769 () Bool)

(declare-fun tp!2275770 () Bool)

(assert (=> b!7755186 (= e!4596973 (and tp!2275769 tp!2275770))))

(declare-fun b!7755184 () Bool)

(declare-fun tp!2275771 () Bool)

(declare-fun tp!2275772 () Bool)

(assert (=> b!7755184 (= e!4596973 (and tp!2275771 tp!2275772))))

(assert (= (and b!7754914 ((_ is ElementMatch!20633) (regOne!41778 r1!6249))) b!7755183))

(assert (= (and b!7754914 ((_ is Concat!29478) (regOne!41778 r1!6249))) b!7755184))

(assert (= (and b!7754914 ((_ is Star!20633) (regOne!41778 r1!6249))) b!7755185))

(assert (= (and b!7754914 ((_ is Union!20633) (regOne!41778 r1!6249))) b!7755186))

(declare-fun b!7755187 () Bool)

(declare-fun e!4596974 () Bool)

(assert (=> b!7755187 (= e!4596974 tp_is_empty!51621)))

(declare-fun b!7755189 () Bool)

(declare-fun tp!2275778 () Bool)

(assert (=> b!7755189 (= e!4596974 tp!2275778)))

(assert (=> b!7754914 (= tp!2275643 e!4596974)))

(declare-fun b!7755190 () Bool)

(declare-fun tp!2275774 () Bool)

(declare-fun tp!2275775 () Bool)

(assert (=> b!7755190 (= e!4596974 (and tp!2275774 tp!2275775))))

(declare-fun b!7755188 () Bool)

(declare-fun tp!2275776 () Bool)

(declare-fun tp!2275777 () Bool)

(assert (=> b!7755188 (= e!4596974 (and tp!2275776 tp!2275777))))

(assert (= (and b!7754914 ((_ is ElementMatch!20633) (regTwo!41778 r1!6249))) b!7755187))

(assert (= (and b!7754914 ((_ is Concat!29478) (regTwo!41778 r1!6249))) b!7755188))

(assert (= (and b!7754914 ((_ is Star!20633) (regTwo!41778 r1!6249))) b!7755189))

(assert (= (and b!7754914 ((_ is Union!20633) (regTwo!41778 r1!6249))) b!7755190))

(declare-fun b!7755191 () Bool)

(declare-fun e!4596975 () Bool)

(declare-fun tp!2275779 () Bool)

(assert (=> b!7755191 (= e!4596975 (and tp_is_empty!51621 tp!2275779))))

(assert (=> b!7754915 (= tp!2275647 e!4596975)))

(assert (= (and b!7754915 ((_ is Cons!73354) (t!388213 s!14266))) b!7755191))

(check-sat (not bm!718893) (not b!7755177) (not b!7755180) (not d!2343266) (not b!7755143) (not b!7755172) (not bm!718878) (not b!7755170) (not b!7755045) (not b!7755186) (not b!7754996) (not b!7754995) (not b!7755169) (not b!7755144) (not b!7755049) (not b!7755156) (not bm!718892) (not b!7755051) (not b!7755190) (not b!7755173) (not b!7755185) (not b!7755189) (not b!7755164) tp_is_empty!51621 (not b!7755168) (not b!7755191) (not b!7755166) (not b!7755188) (not b!7755155) (not b!7755157) (not b!7755184) (not b!7755178) (not b!7754956) (not b!7755067) (not d!2343272) (not b!7755047) (not b!7755181) (not b!7755083) (not b!7755176) (not b!7755066) (not d!2343264) (not bm!718877) (not b!7755161) (not b!7755048) (not b!7755044) (not b!7755174) (not b!7755165) (not b!7755160) (not b!7755162) (not b!7755142) (not b!7755108) (not b!7755182) (not b!7755149) (not d!2343258))
(check-sat)
