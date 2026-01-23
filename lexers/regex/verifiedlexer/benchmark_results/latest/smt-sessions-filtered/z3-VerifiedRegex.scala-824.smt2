; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45532 () Bool)

(assert start!45532)

(declare-fun b!474552 () Bool)

(declare-fun res!210582 () Bool)

(declare-fun e!289907 () Bool)

(assert (=> b!474552 (=> (not res!210582) (not e!289907))))

(declare-datatypes ((C!3212 0))(
  ( (C!3213 (val!1592 Int)) )
))
(declare-datatypes ((Regex!1145 0))(
  ( (ElementMatch!1145 (c!95072 C!3212)) (Concat!2045 (regOne!2802 Regex!1145) (regTwo!2802 Regex!1145)) (EmptyExpr!1145) (Star!1145 (reg!1474 Regex!1145)) (EmptyLang!1145) (Union!1145 (regOne!2803 Regex!1145) (regTwo!2803 Regex!1145)) )
))
(declare-fun r!20230 () Regex!1145)

(get-info :version)

(assert (=> b!474552 (= res!210582 (and (not ((_ is EmptyLang!1145) r!20230)) ((_ is EmptyExpr!1145) r!20230)))))

(declare-fun b!474553 () Bool)

(declare-fun c!12526 () C!3212)

(declare-fun lostCause!139 (Regex!1145) Bool)

(declare-fun derivativeStep!237 (Regex!1145 C!3212) Regex!1145)

(assert (=> b!474553 (= e!289907 (not (lostCause!139 (derivativeStep!237 r!20230 c!12526))))))

(declare-fun b!474554 () Bool)

(declare-fun e!289906 () Bool)

(declare-fun tp_is_empty!2287 () Bool)

(assert (=> b!474554 (= e!289906 tp_is_empty!2287)))

(declare-fun b!474555 () Bool)

(declare-fun tp!131969 () Bool)

(declare-fun tp!131971 () Bool)

(assert (=> b!474555 (= e!289906 (and tp!131969 tp!131971))))

(declare-fun res!210583 () Bool)

(assert (=> start!45532 (=> (not res!210583) (not e!289907))))

(declare-fun validRegex!373 (Regex!1145) Bool)

(assert (=> start!45532 (= res!210583 (validRegex!373 r!20230))))

(assert (=> start!45532 e!289907))

(assert (=> start!45532 e!289906))

(assert (=> start!45532 tp_is_empty!2287))

(declare-fun b!474556 () Bool)

(declare-fun res!210581 () Bool)

(assert (=> b!474556 (=> (not res!210581) (not e!289907))))

(assert (=> b!474556 (= res!210581 (lostCause!139 r!20230))))

(declare-fun b!474557 () Bool)

(declare-fun tp!131970 () Bool)

(declare-fun tp!131967 () Bool)

(assert (=> b!474557 (= e!289906 (and tp!131970 tp!131967))))

(declare-fun b!474558 () Bool)

(declare-fun tp!131968 () Bool)

(assert (=> b!474558 (= e!289906 tp!131968)))

(assert (= (and start!45532 res!210583) b!474556))

(assert (= (and b!474556 res!210581) b!474552))

(assert (= (and b!474552 res!210582) b!474553))

(assert (= (and start!45532 ((_ is ElementMatch!1145) r!20230)) b!474554))

(assert (= (and start!45532 ((_ is Concat!2045) r!20230)) b!474557))

(assert (= (and start!45532 ((_ is Star!1145) r!20230)) b!474558))

(assert (= (and start!45532 ((_ is Union!1145) r!20230)) b!474555))

(declare-fun m!746931 () Bool)

(assert (=> b!474553 m!746931))

(assert (=> b!474553 m!746931))

(declare-fun m!746933 () Bool)

(assert (=> b!474553 m!746933))

(declare-fun m!746935 () Bool)

(assert (=> start!45532 m!746935))

(declare-fun m!746937 () Bool)

(assert (=> b!474556 m!746937))

(check-sat tp_is_empty!2287 (not b!474558) (not b!474556) (not b!474557) (not start!45532) (not b!474553) (not b!474555))
(check-sat)
(get-model)

(declare-fun d!179813 () Bool)

(declare-fun lostCauseFct!49 (Regex!1145) Bool)

(assert (=> d!179813 (= (lostCause!139 (derivativeStep!237 r!20230 c!12526)) (lostCauseFct!49 (derivativeStep!237 r!20230 c!12526)))))

(declare-fun bs!58681 () Bool)

(assert (= bs!58681 d!179813))

(assert (=> bs!58681 m!746931))

(declare-fun m!746941 () Bool)

(assert (=> bs!58681 m!746941))

(assert (=> b!474553 d!179813))

(declare-fun b!474666 () Bool)

(declare-fun e!289964 () Regex!1145)

(declare-fun call!32999 () Regex!1145)

(assert (=> b!474666 (= e!289964 (Union!1145 (Concat!2045 call!32999 (regTwo!2802 r!20230)) EmptyLang!1145))))

(declare-fun bm!32994 () Bool)

(declare-fun call!33000 () Regex!1145)

(declare-fun call!33002 () Regex!1145)

(assert (=> bm!32994 (= call!33000 call!33002)))

(declare-fun b!474667 () Bool)

(declare-fun e!289962 () Regex!1145)

(declare-fun e!289961 () Regex!1145)

(assert (=> b!474667 (= e!289962 e!289961)))

(declare-fun c!95108 () Bool)

(assert (=> b!474667 (= c!95108 ((_ is ElementMatch!1145) r!20230))))

(declare-fun d!179815 () Bool)

(declare-fun lt!210698 () Regex!1145)

(assert (=> d!179815 (validRegex!373 lt!210698)))

(assert (=> d!179815 (= lt!210698 e!289962)))

(declare-fun c!95104 () Bool)

(assert (=> d!179815 (= c!95104 (or ((_ is EmptyExpr!1145) r!20230) ((_ is EmptyLang!1145) r!20230)))))

(assert (=> d!179815 (validRegex!373 r!20230)))

(assert (=> d!179815 (= (derivativeStep!237 r!20230 c!12526) lt!210698)))

(declare-fun call!33001 () Regex!1145)

(declare-fun c!95107 () Bool)

(declare-fun bm!32995 () Bool)

(assert (=> bm!32995 (= call!33001 (derivativeStep!237 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)) c!12526))))

(declare-fun b!474668 () Bool)

(declare-fun e!289965 () Regex!1145)

(declare-fun e!289963 () Regex!1145)

(assert (=> b!474668 (= e!289965 e!289963)))

(declare-fun c!95105 () Bool)

(assert (=> b!474668 (= c!95105 ((_ is Star!1145) r!20230))))

(declare-fun bm!32996 () Bool)

(assert (=> bm!32996 (= call!33002 (derivativeStep!237 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))) c!12526))))

(declare-fun b!474669 () Bool)

(assert (=> b!474669 (= e!289962 EmptyLang!1145)))

(declare-fun bm!32997 () Bool)

(assert (=> bm!32997 (= call!32999 call!33000)))

(declare-fun b!474670 () Bool)

(assert (=> b!474670 (= e!289963 (Concat!2045 call!33000 r!20230))))

(declare-fun b!474671 () Bool)

(assert (=> b!474671 (= c!95107 ((_ is Union!1145) r!20230))))

(assert (=> b!474671 (= e!289961 e!289965)))

(declare-fun b!474672 () Bool)

(declare-fun c!95106 () Bool)

(declare-fun nullable!280 (Regex!1145) Bool)

(assert (=> b!474672 (= c!95106 (nullable!280 (regOne!2802 r!20230)))))

(assert (=> b!474672 (= e!289963 e!289964)))

(declare-fun b!474673 () Bool)

(assert (=> b!474673 (= e!289964 (Union!1145 (Concat!2045 call!32999 (regTwo!2802 r!20230)) call!33001))))

(declare-fun b!474674 () Bool)

(assert (=> b!474674 (= e!289961 (ite (= c!12526 (c!95072 r!20230)) EmptyExpr!1145 EmptyLang!1145))))

(declare-fun b!474675 () Bool)

(assert (=> b!474675 (= e!289965 (Union!1145 call!33001 call!33002))))

(assert (= (and d!179815 c!95104) b!474669))

(assert (= (and d!179815 (not c!95104)) b!474667))

(assert (= (and b!474667 c!95108) b!474674))

(assert (= (and b!474667 (not c!95108)) b!474671))

(assert (= (and b!474671 c!95107) b!474675))

(assert (= (and b!474671 (not c!95107)) b!474668))

(assert (= (and b!474668 c!95105) b!474670))

(assert (= (and b!474668 (not c!95105)) b!474672))

(assert (= (and b!474672 c!95106) b!474673))

(assert (= (and b!474672 (not c!95106)) b!474666))

(assert (= (or b!474673 b!474666) bm!32997))

(assert (= (or b!474670 bm!32997) bm!32994))

(assert (= (or b!474675 bm!32994) bm!32996))

(assert (= (or b!474675 b!474673) bm!32995))

(declare-fun m!746959 () Bool)

(assert (=> d!179815 m!746959))

(assert (=> d!179815 m!746935))

(declare-fun m!746961 () Bool)

(assert (=> bm!32995 m!746961))

(declare-fun m!746963 () Bool)

(assert (=> bm!32996 m!746963))

(declare-fun m!746965 () Bool)

(assert (=> b!474672 m!746965))

(assert (=> b!474553 d!179815))

(declare-fun c!95114 () Bool)

(declare-fun bm!33004 () Bool)

(declare-fun c!95113 () Bool)

(declare-fun call!33010 () Bool)

(assert (=> bm!33004 (= call!33010 (validRegex!373 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))

(declare-fun b!474694 () Bool)

(declare-fun e!289980 () Bool)

(assert (=> b!474694 (= e!289980 call!33010)))

(declare-fun b!474695 () Bool)

(declare-fun e!289982 () Bool)

(declare-fun e!289986 () Bool)

(assert (=> b!474695 (= e!289982 e!289986)))

(assert (=> b!474695 (= c!95114 ((_ is Star!1145) r!20230))))

(declare-fun b!474696 () Bool)

(assert (=> b!474696 (= e!289986 e!289980)))

(declare-fun res!210612 () Bool)

(assert (=> b!474696 (= res!210612 (not (nullable!280 (reg!1474 r!20230))))))

(assert (=> b!474696 (=> (not res!210612) (not e!289980))))

(declare-fun b!474697 () Bool)

(declare-fun res!210611 () Bool)

(declare-fun e!289984 () Bool)

(assert (=> b!474697 (=> (not res!210611) (not e!289984))))

(declare-fun call!33009 () Bool)

(assert (=> b!474697 (= res!210611 call!33009)))

(declare-fun e!289983 () Bool)

(assert (=> b!474697 (= e!289983 e!289984)))

(declare-fun b!474698 () Bool)

(assert (=> b!474698 (= e!289986 e!289983)))

(assert (=> b!474698 (= c!95113 ((_ is Union!1145) r!20230))))

(declare-fun b!474699 () Bool)

(declare-fun call!33011 () Bool)

(assert (=> b!474699 (= e!289984 call!33011)))

(declare-fun b!474700 () Bool)

(declare-fun res!210609 () Bool)

(declare-fun e!289985 () Bool)

(assert (=> b!474700 (=> res!210609 e!289985)))

(assert (=> b!474700 (= res!210609 (not ((_ is Concat!2045) r!20230)))))

(assert (=> b!474700 (= e!289983 e!289985)))

(declare-fun bm!33006 () Bool)

(assert (=> bm!33006 (= call!33009 (validRegex!373 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun bm!33005 () Bool)

(assert (=> bm!33005 (= call!33011 call!33010)))

(declare-fun d!179821 () Bool)

(declare-fun res!210613 () Bool)

(assert (=> d!179821 (=> res!210613 e!289982)))

(assert (=> d!179821 (= res!210613 ((_ is ElementMatch!1145) r!20230))))

(assert (=> d!179821 (= (validRegex!373 r!20230) e!289982)))

(declare-fun b!474701 () Bool)

(declare-fun e!289981 () Bool)

(assert (=> b!474701 (= e!289985 e!289981)))

(declare-fun res!210610 () Bool)

(assert (=> b!474701 (=> (not res!210610) (not e!289981))))

(assert (=> b!474701 (= res!210610 call!33011)))

(declare-fun b!474702 () Bool)

(assert (=> b!474702 (= e!289981 call!33009)))

(assert (= (and d!179821 (not res!210613)) b!474695))

(assert (= (and b!474695 c!95114) b!474696))

(assert (= (and b!474695 (not c!95114)) b!474698))

(assert (= (and b!474696 res!210612) b!474694))

(assert (= (and b!474698 c!95113) b!474697))

(assert (= (and b!474698 (not c!95113)) b!474700))

(assert (= (and b!474697 res!210611) b!474699))

(assert (= (and b!474700 (not res!210609)) b!474701))

(assert (= (and b!474701 res!210610) b!474702))

(assert (= (or b!474699 b!474701) bm!33005))

(assert (= (or b!474697 b!474702) bm!33006))

(assert (= (or b!474694 bm!33005) bm!33004))

(declare-fun m!746967 () Bool)

(assert (=> bm!33004 m!746967))

(declare-fun m!746969 () Bool)

(assert (=> b!474696 m!746969))

(declare-fun m!746971 () Bool)

(assert (=> bm!33006 m!746971))

(assert (=> start!45532 d!179821))

(declare-fun d!179823 () Bool)

(assert (=> d!179823 (= (lostCause!139 r!20230) (lostCauseFct!49 r!20230))))

(declare-fun bs!58683 () Bool)

(assert (= bs!58683 d!179823))

(declare-fun m!746973 () Bool)

(assert (=> bs!58683 m!746973))

(assert (=> b!474556 d!179823))

(declare-fun b!474713 () Bool)

(declare-fun e!289989 () Bool)

(assert (=> b!474713 (= e!289989 tp_is_empty!2287)))

(assert (=> b!474558 (= tp!131968 e!289989)))

(declare-fun b!474714 () Bool)

(declare-fun tp!132019 () Bool)

(declare-fun tp!132017 () Bool)

(assert (=> b!474714 (= e!289989 (and tp!132019 tp!132017))))

(declare-fun b!474715 () Bool)

(declare-fun tp!132021 () Bool)

(assert (=> b!474715 (= e!289989 tp!132021)))

(declare-fun b!474716 () Bool)

(declare-fun tp!132020 () Bool)

(declare-fun tp!132018 () Bool)

(assert (=> b!474716 (= e!289989 (and tp!132020 tp!132018))))

(assert (= (and b!474558 ((_ is ElementMatch!1145) (reg!1474 r!20230))) b!474713))

(assert (= (and b!474558 ((_ is Concat!2045) (reg!1474 r!20230))) b!474714))

(assert (= (and b!474558 ((_ is Star!1145) (reg!1474 r!20230))) b!474715))

(assert (= (and b!474558 ((_ is Union!1145) (reg!1474 r!20230))) b!474716))

(declare-fun b!474717 () Bool)

(declare-fun e!289990 () Bool)

(assert (=> b!474717 (= e!289990 tp_is_empty!2287)))

(assert (=> b!474555 (= tp!131969 e!289990)))

(declare-fun b!474718 () Bool)

(declare-fun tp!132024 () Bool)

(declare-fun tp!132022 () Bool)

(assert (=> b!474718 (= e!289990 (and tp!132024 tp!132022))))

(declare-fun b!474719 () Bool)

(declare-fun tp!132026 () Bool)

(assert (=> b!474719 (= e!289990 tp!132026)))

(declare-fun b!474720 () Bool)

(declare-fun tp!132025 () Bool)

(declare-fun tp!132023 () Bool)

(assert (=> b!474720 (= e!289990 (and tp!132025 tp!132023))))

(assert (= (and b!474555 ((_ is ElementMatch!1145) (regOne!2803 r!20230))) b!474717))

(assert (= (and b!474555 ((_ is Concat!2045) (regOne!2803 r!20230))) b!474718))

(assert (= (and b!474555 ((_ is Star!1145) (regOne!2803 r!20230))) b!474719))

(assert (= (and b!474555 ((_ is Union!1145) (regOne!2803 r!20230))) b!474720))

(declare-fun b!474721 () Bool)

(declare-fun e!289991 () Bool)

(assert (=> b!474721 (= e!289991 tp_is_empty!2287)))

(assert (=> b!474555 (= tp!131971 e!289991)))

(declare-fun b!474722 () Bool)

(declare-fun tp!132029 () Bool)

(declare-fun tp!132027 () Bool)

(assert (=> b!474722 (= e!289991 (and tp!132029 tp!132027))))

(declare-fun b!474723 () Bool)

(declare-fun tp!132031 () Bool)

(assert (=> b!474723 (= e!289991 tp!132031)))

(declare-fun b!474724 () Bool)

(declare-fun tp!132030 () Bool)

(declare-fun tp!132028 () Bool)

(assert (=> b!474724 (= e!289991 (and tp!132030 tp!132028))))

(assert (= (and b!474555 ((_ is ElementMatch!1145) (regTwo!2803 r!20230))) b!474721))

(assert (= (and b!474555 ((_ is Concat!2045) (regTwo!2803 r!20230))) b!474722))

(assert (= (and b!474555 ((_ is Star!1145) (regTwo!2803 r!20230))) b!474723))

(assert (= (and b!474555 ((_ is Union!1145) (regTwo!2803 r!20230))) b!474724))

(declare-fun b!474725 () Bool)

(declare-fun e!289992 () Bool)

(assert (=> b!474725 (= e!289992 tp_is_empty!2287)))

(assert (=> b!474557 (= tp!131970 e!289992)))

(declare-fun b!474726 () Bool)

(declare-fun tp!132034 () Bool)

(declare-fun tp!132032 () Bool)

(assert (=> b!474726 (= e!289992 (and tp!132034 tp!132032))))

(declare-fun b!474727 () Bool)

(declare-fun tp!132036 () Bool)

(assert (=> b!474727 (= e!289992 tp!132036)))

(declare-fun b!474728 () Bool)

(declare-fun tp!132035 () Bool)

(declare-fun tp!132033 () Bool)

(assert (=> b!474728 (= e!289992 (and tp!132035 tp!132033))))

(assert (= (and b!474557 ((_ is ElementMatch!1145) (regOne!2802 r!20230))) b!474725))

(assert (= (and b!474557 ((_ is Concat!2045) (regOne!2802 r!20230))) b!474726))

(assert (= (and b!474557 ((_ is Star!1145) (regOne!2802 r!20230))) b!474727))

(assert (= (and b!474557 ((_ is Union!1145) (regOne!2802 r!20230))) b!474728))

(declare-fun b!474729 () Bool)

(declare-fun e!289993 () Bool)

(assert (=> b!474729 (= e!289993 tp_is_empty!2287)))

(assert (=> b!474557 (= tp!131967 e!289993)))

(declare-fun b!474730 () Bool)

(declare-fun tp!132039 () Bool)

(declare-fun tp!132037 () Bool)

(assert (=> b!474730 (= e!289993 (and tp!132039 tp!132037))))

(declare-fun b!474731 () Bool)

(declare-fun tp!132041 () Bool)

(assert (=> b!474731 (= e!289993 tp!132041)))

(declare-fun b!474732 () Bool)

(declare-fun tp!132040 () Bool)

(declare-fun tp!132038 () Bool)

(assert (=> b!474732 (= e!289993 (and tp!132040 tp!132038))))

(assert (= (and b!474557 ((_ is ElementMatch!1145) (regTwo!2802 r!20230))) b!474729))

(assert (= (and b!474557 ((_ is Concat!2045) (regTwo!2802 r!20230))) b!474730))

(assert (= (and b!474557 ((_ is Star!1145) (regTwo!2802 r!20230))) b!474731))

(assert (= (and b!474557 ((_ is Union!1145) (regTwo!2802 r!20230))) b!474732))

(check-sat (not bm!33006) (not b!474727) (not b!474731) (not b!474716) (not d!179823) (not b!474722) (not b!474719) tp_is_empty!2287 (not d!179813) (not bm!32996) (not bm!33004) (not b!474714) (not b!474672) (not b!474724) (not bm!32995) (not b!474720) (not b!474732) (not d!179815) (not b!474723) (not b!474718) (not b!474696) (not b!474730) (not b!474715) (not b!474726) (not b!474728))
(check-sat)
(get-model)

(declare-fun c!95136 () Bool)

(declare-fun bm!33032 () Bool)

(declare-fun call!33038 () Bool)

(declare-fun c!95135 () Bool)

(assert (=> bm!33032 (= call!33038 (validRegex!373 (ite c!95136 (reg!1474 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))) (ite c!95135 (regTwo!2803 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))) (regOne!2802 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230))))))))))

(declare-fun b!474908 () Bool)

(declare-fun e!290074 () Bool)

(assert (=> b!474908 (= e!290074 call!33038)))

(declare-fun b!474909 () Bool)

(declare-fun e!290076 () Bool)

(declare-fun e!290080 () Bool)

(assert (=> b!474909 (= e!290076 e!290080)))

(assert (=> b!474909 (= c!95136 ((_ is Star!1145) (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))

(declare-fun b!474910 () Bool)

(assert (=> b!474910 (= e!290080 e!290074)))

(declare-fun res!210652 () Bool)

(assert (=> b!474910 (= res!210652 (not (nullable!280 (reg!1474 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))))

(assert (=> b!474910 (=> (not res!210652) (not e!290074))))

(declare-fun b!474911 () Bool)

(declare-fun res!210651 () Bool)

(declare-fun e!290078 () Bool)

(assert (=> b!474911 (=> (not res!210651) (not e!290078))))

(declare-fun call!33037 () Bool)

(assert (=> b!474911 (= res!210651 call!33037)))

(declare-fun e!290077 () Bool)

(assert (=> b!474911 (= e!290077 e!290078)))

(declare-fun b!474912 () Bool)

(assert (=> b!474912 (= e!290080 e!290077)))

(assert (=> b!474912 (= c!95135 ((_ is Union!1145) (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))

(declare-fun b!474913 () Bool)

(declare-fun call!33039 () Bool)

(assert (=> b!474913 (= e!290078 call!33039)))

(declare-fun b!474914 () Bool)

(declare-fun res!210649 () Bool)

(declare-fun e!290079 () Bool)

(assert (=> b!474914 (=> res!210649 e!290079)))

(assert (=> b!474914 (= res!210649 (not ((_ is Concat!2045) (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230))))))))

(assert (=> b!474914 (= e!290077 e!290079)))

(declare-fun bm!33034 () Bool)

(assert (=> bm!33034 (= call!33037 (validRegex!373 (ite c!95135 (regOne!2803 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))) (regTwo!2802 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))))

(declare-fun bm!33033 () Bool)

(assert (=> bm!33033 (= call!33039 call!33038)))

(declare-fun d!179843 () Bool)

(declare-fun res!210653 () Bool)

(assert (=> d!179843 (=> res!210653 e!290076)))

(assert (=> d!179843 (= res!210653 ((_ is ElementMatch!1145) (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))))))

(assert (=> d!179843 (= (validRegex!373 (ite c!95114 (reg!1474 r!20230) (ite c!95113 (regTwo!2803 r!20230) (regOne!2802 r!20230)))) e!290076)))

(declare-fun b!474915 () Bool)

(declare-fun e!290075 () Bool)

(assert (=> b!474915 (= e!290079 e!290075)))

(declare-fun res!210650 () Bool)

(assert (=> b!474915 (=> (not res!210650) (not e!290075))))

(assert (=> b!474915 (= res!210650 call!33039)))

(declare-fun b!474916 () Bool)

(assert (=> b!474916 (= e!290075 call!33037)))

(assert (= (and d!179843 (not res!210653)) b!474909))

(assert (= (and b!474909 c!95136) b!474910))

(assert (= (and b!474909 (not c!95136)) b!474912))

(assert (= (and b!474910 res!210652) b!474908))

(assert (= (and b!474912 c!95135) b!474911))

(assert (= (and b!474912 (not c!95135)) b!474914))

(assert (= (and b!474911 res!210651) b!474913))

(assert (= (and b!474914 (not res!210649)) b!474915))

(assert (= (and b!474915 res!210650) b!474916))

(assert (= (or b!474913 b!474915) bm!33033))

(assert (= (or b!474911 b!474916) bm!33034))

(assert (= (or b!474908 bm!33033) bm!33032))

(declare-fun m!747033 () Bool)

(assert (=> bm!33032 m!747033))

(declare-fun m!747035 () Bool)

(assert (=> b!474910 m!747035))

(declare-fun m!747037 () Bool)

(assert (=> bm!33034 m!747037))

(assert (=> bm!33004 d!179843))

(declare-fun b!474931 () Bool)

(declare-fun e!290095 () Bool)

(declare-fun call!33044 () Bool)

(assert (=> b!474931 (= e!290095 call!33044)))

(declare-fun b!474932 () Bool)

(declare-fun e!290097 () Bool)

(declare-fun e!290098 () Bool)

(assert (=> b!474932 (= e!290097 e!290098)))

(declare-fun res!210664 () Bool)

(assert (=> b!474932 (=> (not res!210664) (not e!290098))))

(assert (=> b!474932 (= res!210664 (and (not ((_ is ElementMatch!1145) (derivativeStep!237 r!20230 c!12526))) (not ((_ is Star!1145) (derivativeStep!237 r!20230 c!12526)))))))

(declare-fun b!474933 () Bool)

(declare-fun e!290093 () Bool)

(assert (=> b!474933 (= e!290093 call!33044)))

(declare-fun b!474934 () Bool)

(declare-fun e!290096 () Bool)

(assert (=> b!474934 (= e!290096 e!290095)))

(declare-fun res!210666 () Bool)

(declare-fun call!33045 () Bool)

(assert (=> b!474934 (= res!210666 call!33045)))

(assert (=> b!474934 (=> res!210666 e!290095)))

(declare-fun bm!33039 () Bool)

(declare-fun c!95139 () Bool)

(assert (=> bm!33039 (= call!33044 (lostCause!139 (ite c!95139 (regTwo!2803 (derivativeStep!237 r!20230 c!12526)) (regTwo!2802 (derivativeStep!237 r!20230 c!12526)))))))

(declare-fun d!179845 () Bool)

(declare-fun lt!210707 () Bool)

(declare-datatypes ((List!4591 0))(
  ( (Nil!4581) (Cons!4581 (h!9978 C!3212) (t!73109 List!4591)) )
))
(declare-datatypes ((Option!1209 0))(
  ( (None!1208) (Some!1208 (v!15620 List!4591)) )
))
(declare-fun isEmpty!3535 (Option!1209) Bool)

(declare-fun getLanguageWitness!44 (Regex!1145) Option!1209)

(assert (=> d!179845 (= lt!210707 (isEmpty!3535 (getLanguageWitness!44 (derivativeStep!237 r!20230 c!12526))))))

(declare-fun e!290094 () Bool)

(assert (=> d!179845 (= lt!210707 e!290094)))

(declare-fun res!210668 () Bool)

(assert (=> d!179845 (=> (not res!210668) (not e!290094))))

(assert (=> d!179845 (= res!210668 (not ((_ is EmptyExpr!1145) (derivativeStep!237 r!20230 c!12526))))))

(assert (=> d!179845 (= (lostCauseFct!49 (derivativeStep!237 r!20230 c!12526)) lt!210707)))

(declare-fun b!474935 () Bool)

(assert (=> b!474935 (= e!290098 e!290096)))

(assert (=> b!474935 (= c!95139 ((_ is Union!1145) (derivativeStep!237 r!20230 c!12526)))))

(declare-fun bm!33040 () Bool)

(assert (=> bm!33040 (= call!33045 (lostCause!139 (ite c!95139 (regOne!2803 (derivativeStep!237 r!20230 c!12526)) (regOne!2802 (derivativeStep!237 r!20230 c!12526)))))))

(declare-fun b!474936 () Bool)

(assert (=> b!474936 (= e!290094 e!290097)))

(declare-fun res!210665 () Bool)

(assert (=> b!474936 (=> res!210665 e!290097)))

(assert (=> b!474936 (= res!210665 ((_ is EmptyLang!1145) (derivativeStep!237 r!20230 c!12526)))))

(declare-fun b!474937 () Bool)

(assert (=> b!474937 (= e!290096 e!290093)))

(declare-fun res!210667 () Bool)

(assert (=> b!474937 (= res!210667 call!33045)))

(assert (=> b!474937 (=> (not res!210667) (not e!290093))))

(assert (= (and d!179845 res!210668) b!474936))

(assert (= (and b!474936 (not res!210665)) b!474932))

(assert (= (and b!474932 res!210664) b!474935))

(assert (= (and b!474935 c!95139) b!474937))

(assert (= (and b!474935 (not c!95139)) b!474934))

(assert (= (and b!474937 res!210667) b!474933))

(assert (= (and b!474934 (not res!210666)) b!474931))

(assert (= (or b!474937 b!474934) bm!33040))

(assert (= (or b!474933 b!474931) bm!33039))

(declare-fun m!747039 () Bool)

(assert (=> bm!33039 m!747039))

(assert (=> d!179845 m!746931))

(declare-fun m!747041 () Bool)

(assert (=> d!179845 m!747041))

(assert (=> d!179845 m!747041))

(declare-fun m!747043 () Bool)

(assert (=> d!179845 m!747043))

(declare-fun m!747045 () Bool)

(assert (=> bm!33040 m!747045))

(assert (=> d!179813 d!179845))

(declare-fun c!95141 () Bool)

(declare-fun bm!33041 () Bool)

(declare-fun call!33047 () Bool)

(declare-fun c!95140 () Bool)

(assert (=> bm!33041 (= call!33047 (validRegex!373 (ite c!95141 (reg!1474 lt!210698) (ite c!95140 (regTwo!2803 lt!210698) (regOne!2802 lt!210698)))))))

(declare-fun b!474938 () Bool)

(declare-fun e!290099 () Bool)

(assert (=> b!474938 (= e!290099 call!33047)))

(declare-fun b!474939 () Bool)

(declare-fun e!290101 () Bool)

(declare-fun e!290105 () Bool)

(assert (=> b!474939 (= e!290101 e!290105)))

(assert (=> b!474939 (= c!95141 ((_ is Star!1145) lt!210698))))

(declare-fun b!474940 () Bool)

(assert (=> b!474940 (= e!290105 e!290099)))

(declare-fun res!210672 () Bool)

(assert (=> b!474940 (= res!210672 (not (nullable!280 (reg!1474 lt!210698))))))

(assert (=> b!474940 (=> (not res!210672) (not e!290099))))

(declare-fun b!474941 () Bool)

(declare-fun res!210671 () Bool)

(declare-fun e!290103 () Bool)

(assert (=> b!474941 (=> (not res!210671) (not e!290103))))

(declare-fun call!33046 () Bool)

(assert (=> b!474941 (= res!210671 call!33046)))

(declare-fun e!290102 () Bool)

(assert (=> b!474941 (= e!290102 e!290103)))

(declare-fun b!474942 () Bool)

(assert (=> b!474942 (= e!290105 e!290102)))

(assert (=> b!474942 (= c!95140 ((_ is Union!1145) lt!210698))))

(declare-fun b!474943 () Bool)

(declare-fun call!33048 () Bool)

(assert (=> b!474943 (= e!290103 call!33048)))

(declare-fun b!474944 () Bool)

(declare-fun res!210669 () Bool)

(declare-fun e!290104 () Bool)

(assert (=> b!474944 (=> res!210669 e!290104)))

(assert (=> b!474944 (= res!210669 (not ((_ is Concat!2045) lt!210698)))))

(assert (=> b!474944 (= e!290102 e!290104)))

(declare-fun bm!33043 () Bool)

(assert (=> bm!33043 (= call!33046 (validRegex!373 (ite c!95140 (regOne!2803 lt!210698) (regTwo!2802 lt!210698))))))

(declare-fun bm!33042 () Bool)

(assert (=> bm!33042 (= call!33048 call!33047)))

(declare-fun d!179847 () Bool)

(declare-fun res!210673 () Bool)

(assert (=> d!179847 (=> res!210673 e!290101)))

(assert (=> d!179847 (= res!210673 ((_ is ElementMatch!1145) lt!210698))))

(assert (=> d!179847 (= (validRegex!373 lt!210698) e!290101)))

(declare-fun b!474945 () Bool)

(declare-fun e!290100 () Bool)

(assert (=> b!474945 (= e!290104 e!290100)))

(declare-fun res!210670 () Bool)

(assert (=> b!474945 (=> (not res!210670) (not e!290100))))

(assert (=> b!474945 (= res!210670 call!33048)))

(declare-fun b!474946 () Bool)

(assert (=> b!474946 (= e!290100 call!33046)))

(assert (= (and d!179847 (not res!210673)) b!474939))

(assert (= (and b!474939 c!95141) b!474940))

(assert (= (and b!474939 (not c!95141)) b!474942))

(assert (= (and b!474940 res!210672) b!474938))

(assert (= (and b!474942 c!95140) b!474941))

(assert (= (and b!474942 (not c!95140)) b!474944))

(assert (= (and b!474941 res!210671) b!474943))

(assert (= (and b!474944 (not res!210669)) b!474945))

(assert (= (and b!474945 res!210670) b!474946))

(assert (= (or b!474943 b!474945) bm!33042))

(assert (= (or b!474941 b!474946) bm!33043))

(assert (= (or b!474938 bm!33042) bm!33041))

(declare-fun m!747047 () Bool)

(assert (=> bm!33041 m!747047))

(declare-fun m!747049 () Bool)

(assert (=> b!474940 m!747049))

(declare-fun m!747051 () Bool)

(assert (=> bm!33043 m!747051))

(assert (=> d!179815 d!179847))

(assert (=> d!179815 d!179821))

(declare-fun d!179849 () Bool)

(declare-fun nullableFct!95 (Regex!1145) Bool)

(assert (=> d!179849 (= (nullable!280 (reg!1474 r!20230)) (nullableFct!95 (reg!1474 r!20230)))))

(declare-fun bs!58686 () Bool)

(assert (= bs!58686 d!179849))

(declare-fun m!747053 () Bool)

(assert (=> bs!58686 m!747053))

(assert (=> b!474696 d!179849))

(declare-fun b!474947 () Bool)

(declare-fun e!290108 () Bool)

(declare-fun call!33049 () Bool)

(assert (=> b!474947 (= e!290108 call!33049)))

(declare-fun b!474948 () Bool)

(declare-fun e!290110 () Bool)

(declare-fun e!290111 () Bool)

(assert (=> b!474948 (= e!290110 e!290111)))

(declare-fun res!210674 () Bool)

(assert (=> b!474948 (=> (not res!210674) (not e!290111))))

(assert (=> b!474948 (= res!210674 (and (not ((_ is ElementMatch!1145) r!20230)) (not ((_ is Star!1145) r!20230))))))

(declare-fun b!474949 () Bool)

(declare-fun e!290106 () Bool)

(assert (=> b!474949 (= e!290106 call!33049)))

(declare-fun b!474950 () Bool)

(declare-fun e!290109 () Bool)

(assert (=> b!474950 (= e!290109 e!290108)))

(declare-fun res!210676 () Bool)

(declare-fun call!33050 () Bool)

(assert (=> b!474950 (= res!210676 call!33050)))

(assert (=> b!474950 (=> res!210676 e!290108)))

(declare-fun bm!33044 () Bool)

(declare-fun c!95142 () Bool)

(assert (=> bm!33044 (= call!33049 (lostCause!139 (ite c!95142 (regTwo!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun d!179851 () Bool)

(declare-fun lt!210708 () Bool)

(assert (=> d!179851 (= lt!210708 (isEmpty!3535 (getLanguageWitness!44 r!20230)))))

(declare-fun e!290107 () Bool)

(assert (=> d!179851 (= lt!210708 e!290107)))

(declare-fun res!210678 () Bool)

(assert (=> d!179851 (=> (not res!210678) (not e!290107))))

(assert (=> d!179851 (= res!210678 (not ((_ is EmptyExpr!1145) r!20230)))))

(assert (=> d!179851 (= (lostCauseFct!49 r!20230) lt!210708)))

(declare-fun b!474951 () Bool)

(assert (=> b!474951 (= e!290111 e!290109)))

(assert (=> b!474951 (= c!95142 ((_ is Union!1145) r!20230))))

(declare-fun bm!33045 () Bool)

(assert (=> bm!33045 (= call!33050 (lostCause!139 (ite c!95142 (regOne!2803 r!20230) (regOne!2802 r!20230))))))

(declare-fun b!474952 () Bool)

(assert (=> b!474952 (= e!290107 e!290110)))

(declare-fun res!210675 () Bool)

(assert (=> b!474952 (=> res!210675 e!290110)))

(assert (=> b!474952 (= res!210675 ((_ is EmptyLang!1145) r!20230))))

(declare-fun b!474953 () Bool)

(assert (=> b!474953 (= e!290109 e!290106)))

(declare-fun res!210677 () Bool)

(assert (=> b!474953 (= res!210677 call!33050)))

(assert (=> b!474953 (=> (not res!210677) (not e!290106))))

(assert (= (and d!179851 res!210678) b!474952))

(assert (= (and b!474952 (not res!210675)) b!474948))

(assert (= (and b!474948 res!210674) b!474951))

(assert (= (and b!474951 c!95142) b!474953))

(assert (= (and b!474951 (not c!95142)) b!474950))

(assert (= (and b!474953 res!210677) b!474949))

(assert (= (and b!474950 (not res!210676)) b!474947))

(assert (= (or b!474953 b!474950) bm!33045))

(assert (= (or b!474949 b!474947) bm!33044))

(declare-fun m!747055 () Bool)

(assert (=> bm!33044 m!747055))

(declare-fun m!747057 () Bool)

(assert (=> d!179851 m!747057))

(assert (=> d!179851 m!747057))

(declare-fun m!747059 () Bool)

(assert (=> d!179851 m!747059))

(declare-fun m!747061 () Bool)

(assert (=> bm!33045 m!747061))

(assert (=> d!179823 d!179851))

(declare-fun call!33051 () Regex!1145)

(declare-fun b!474954 () Bool)

(declare-fun e!290115 () Regex!1145)

(assert (=> b!474954 (= e!290115 (Union!1145 (Concat!2045 call!33051 (regTwo!2802 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))) EmptyLang!1145))))

(declare-fun bm!33046 () Bool)

(declare-fun call!33052 () Regex!1145)

(declare-fun call!33054 () Regex!1145)

(assert (=> bm!33046 (= call!33052 call!33054)))

(declare-fun b!474955 () Bool)

(declare-fun e!290113 () Regex!1145)

(declare-fun e!290112 () Regex!1145)

(assert (=> b!474955 (= e!290113 e!290112)))

(declare-fun c!95147 () Bool)

(assert (=> b!474955 (= c!95147 ((_ is ElementMatch!1145) (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun d!179853 () Bool)

(declare-fun lt!210709 () Regex!1145)

(assert (=> d!179853 (validRegex!373 lt!210709)))

(assert (=> d!179853 (= lt!210709 e!290113)))

(declare-fun c!95143 () Bool)

(assert (=> d!179853 (= c!95143 (or ((_ is EmptyExpr!1145) (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))) ((_ is EmptyLang!1145) (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))))))

(assert (=> d!179853 (validRegex!373 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))))

(assert (=> d!179853 (= (derivativeStep!237 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)) c!12526) lt!210709)))

(declare-fun bm!33047 () Bool)

(declare-fun call!33053 () Regex!1145)

(declare-fun c!95146 () Bool)

(assert (=> bm!33047 (= call!33053 (derivativeStep!237 (ite c!95146 (regOne!2803 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (regTwo!2802 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))) c!12526))))

(declare-fun b!474956 () Bool)

(declare-fun e!290116 () Regex!1145)

(declare-fun e!290114 () Regex!1145)

(assert (=> b!474956 (= e!290116 e!290114)))

(declare-fun c!95144 () Bool)

(assert (=> b!474956 (= c!95144 ((_ is Star!1145) (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun bm!33048 () Bool)

(assert (=> bm!33048 (= call!33054 (derivativeStep!237 (ite c!95146 (regTwo!2803 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (ite c!95144 (reg!1474 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (regOne!2802 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))))) c!12526))))

(declare-fun b!474957 () Bool)

(assert (=> b!474957 (= e!290113 EmptyLang!1145)))

(declare-fun bm!33049 () Bool)

(assert (=> bm!33049 (= call!33051 call!33052)))

(declare-fun b!474958 () Bool)

(assert (=> b!474958 (= e!290114 (Concat!2045 call!33052 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun b!474959 () Bool)

(assert (=> b!474959 (= c!95146 ((_ is Union!1145) (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(assert (=> b!474959 (= e!290112 e!290116)))

(declare-fun b!474960 () Bool)

(declare-fun c!95145 () Bool)

(assert (=> b!474960 (= c!95145 (nullable!280 (regOne!2802 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))))))

(assert (=> b!474960 (= e!290114 e!290115)))

(declare-fun b!474961 () Bool)

(assert (=> b!474961 (= e!290115 (Union!1145 (Concat!2045 call!33051 (regTwo!2802 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))) call!33053))))

(declare-fun b!474962 () Bool)

(assert (=> b!474962 (= e!290112 (ite (= c!12526 (c!95072 (ite c!95107 (regOne!2803 r!20230) (regTwo!2802 r!20230)))) EmptyExpr!1145 EmptyLang!1145))))

(declare-fun b!474963 () Bool)

(assert (=> b!474963 (= e!290116 (Union!1145 call!33053 call!33054))))

(assert (= (and d!179853 c!95143) b!474957))

(assert (= (and d!179853 (not c!95143)) b!474955))

(assert (= (and b!474955 c!95147) b!474962))

(assert (= (and b!474955 (not c!95147)) b!474959))

(assert (= (and b!474959 c!95146) b!474963))

(assert (= (and b!474959 (not c!95146)) b!474956))

(assert (= (and b!474956 c!95144) b!474958))

(assert (= (and b!474956 (not c!95144)) b!474960))

(assert (= (and b!474960 c!95145) b!474961))

(assert (= (and b!474960 (not c!95145)) b!474954))

(assert (= (or b!474961 b!474954) bm!33049))

(assert (= (or b!474958 bm!33049) bm!33046))

(assert (= (or b!474963 bm!33046) bm!33048))

(assert (= (or b!474963 b!474961) bm!33047))

(declare-fun m!747063 () Bool)

(assert (=> d!179853 m!747063))

(declare-fun m!747065 () Bool)

(assert (=> d!179853 m!747065))

(declare-fun m!747067 () Bool)

(assert (=> bm!33047 m!747067))

(declare-fun m!747069 () Bool)

(assert (=> bm!33048 m!747069))

(declare-fun m!747071 () Bool)

(assert (=> b!474960 m!747071))

(assert (=> bm!32995 d!179853))

(declare-fun e!290120 () Regex!1145)

(declare-fun call!33055 () Regex!1145)

(declare-fun b!474964 () Bool)

(assert (=> b!474964 (= e!290120 (Union!1145 (Concat!2045 call!33055 (regTwo!2802 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))) EmptyLang!1145))))

(declare-fun bm!33050 () Bool)

(declare-fun call!33056 () Regex!1145)

(declare-fun call!33058 () Regex!1145)

(assert (=> bm!33050 (= call!33056 call!33058)))

(declare-fun b!474965 () Bool)

(declare-fun e!290118 () Regex!1145)

(declare-fun e!290117 () Regex!1145)

(assert (=> b!474965 (= e!290118 e!290117)))

(declare-fun c!95152 () Bool)

(assert (=> b!474965 (= c!95152 ((_ is ElementMatch!1145) (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))))))

(declare-fun d!179855 () Bool)

(declare-fun lt!210710 () Regex!1145)

(assert (=> d!179855 (validRegex!373 lt!210710)))

(assert (=> d!179855 (= lt!210710 e!290118)))

(declare-fun c!95148 () Bool)

(assert (=> d!179855 (= c!95148 (or ((_ is EmptyExpr!1145) (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))) ((_ is EmptyLang!1145) (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))))))

(assert (=> d!179855 (validRegex!373 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))))

(assert (=> d!179855 (= (derivativeStep!237 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))) c!12526) lt!210710)))

(declare-fun bm!33051 () Bool)

(declare-fun c!95151 () Bool)

(declare-fun call!33057 () Regex!1145)

(assert (=> bm!33051 (= call!33057 (derivativeStep!237 (ite c!95151 (regOne!2803 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))) (regTwo!2802 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))) c!12526))))

(declare-fun b!474966 () Bool)

(declare-fun e!290121 () Regex!1145)

(declare-fun e!290119 () Regex!1145)

(assert (=> b!474966 (= e!290121 e!290119)))

(declare-fun c!95149 () Bool)

(assert (=> b!474966 (= c!95149 ((_ is Star!1145) (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))))))

(declare-fun bm!33052 () Bool)

(assert (=> bm!33052 (= call!33058 (derivativeStep!237 (ite c!95151 (regTwo!2803 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))) (ite c!95149 (reg!1474 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))) (regOne!2802 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))))) c!12526))))

(declare-fun b!474967 () Bool)

(assert (=> b!474967 (= e!290118 EmptyLang!1145)))

(declare-fun bm!33053 () Bool)

(assert (=> bm!33053 (= call!33055 call!33056)))

(declare-fun b!474968 () Bool)

(assert (=> b!474968 (= e!290119 (Concat!2045 call!33056 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))))))

(declare-fun b!474969 () Bool)

(assert (=> b!474969 (= c!95151 ((_ is Union!1145) (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230)))))))

(assert (=> b!474969 (= e!290117 e!290121)))

(declare-fun b!474970 () Bool)

(declare-fun c!95150 () Bool)

(assert (=> b!474970 (= c!95150 (nullable!280 (regOne!2802 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))))))

(assert (=> b!474970 (= e!290119 e!290120)))

(declare-fun b!474971 () Bool)

(assert (=> b!474971 (= e!290120 (Union!1145 (Concat!2045 call!33055 (regTwo!2802 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))) call!33057))))

(declare-fun b!474972 () Bool)

(assert (=> b!474972 (= e!290117 (ite (= c!12526 (c!95072 (ite c!95107 (regTwo!2803 r!20230) (ite c!95105 (reg!1474 r!20230) (regOne!2802 r!20230))))) EmptyExpr!1145 EmptyLang!1145))))

(declare-fun b!474973 () Bool)

(assert (=> b!474973 (= e!290121 (Union!1145 call!33057 call!33058))))

(assert (= (and d!179855 c!95148) b!474967))

(assert (= (and d!179855 (not c!95148)) b!474965))

(assert (= (and b!474965 c!95152) b!474972))

(assert (= (and b!474965 (not c!95152)) b!474969))

(assert (= (and b!474969 c!95151) b!474973))

(assert (= (and b!474969 (not c!95151)) b!474966))

(assert (= (and b!474966 c!95149) b!474968))

(assert (= (and b!474966 (not c!95149)) b!474970))

(assert (= (and b!474970 c!95150) b!474971))

(assert (= (and b!474970 (not c!95150)) b!474964))

(assert (= (or b!474971 b!474964) bm!33053))

(assert (= (or b!474968 bm!33053) bm!33050))

(assert (= (or b!474973 bm!33050) bm!33052))

(assert (= (or b!474973 b!474971) bm!33051))

(declare-fun m!747073 () Bool)

(assert (=> d!179855 m!747073))

(declare-fun m!747075 () Bool)

(assert (=> d!179855 m!747075))

(declare-fun m!747077 () Bool)

(assert (=> bm!33051 m!747077))

(declare-fun m!747079 () Bool)

(assert (=> bm!33052 m!747079))

(declare-fun m!747081 () Bool)

(assert (=> b!474970 m!747081))

(assert (=> bm!32996 d!179855))

(declare-fun d!179857 () Bool)

(assert (=> d!179857 (= (nullable!280 (regOne!2802 r!20230)) (nullableFct!95 (regOne!2802 r!20230)))))

(declare-fun bs!58687 () Bool)

(assert (= bs!58687 d!179857))

(declare-fun m!747083 () Bool)

(assert (=> bs!58687 m!747083))

(assert (=> b!474672 d!179857))

(declare-fun c!95153 () Bool)

(declare-fun c!95154 () Bool)

(declare-fun bm!33054 () Bool)

(declare-fun call!33060 () Bool)

(assert (=> bm!33054 (= call!33060 (validRegex!373 (ite c!95154 (reg!1474 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (ite c!95153 (regTwo!2803 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (regOne!2802 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230)))))))))

(declare-fun b!474974 () Bool)

(declare-fun e!290122 () Bool)

(assert (=> b!474974 (= e!290122 call!33060)))

(declare-fun b!474975 () Bool)

(declare-fun e!290124 () Bool)

(declare-fun e!290128 () Bool)

(assert (=> b!474975 (= e!290124 e!290128)))

(assert (=> b!474975 (= c!95154 ((_ is Star!1145) (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun b!474976 () Bool)

(assert (=> b!474976 (= e!290128 e!290122)))

(declare-fun res!210682 () Bool)

(assert (=> b!474976 (= res!210682 (not (nullable!280 (reg!1474 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))))

(assert (=> b!474976 (=> (not res!210682) (not e!290122))))

(declare-fun b!474977 () Bool)

(declare-fun res!210681 () Bool)

(declare-fun e!290126 () Bool)

(assert (=> b!474977 (=> (not res!210681) (not e!290126))))

(declare-fun call!33059 () Bool)

(assert (=> b!474977 (= res!210681 call!33059)))

(declare-fun e!290125 () Bool)

(assert (=> b!474977 (= e!290125 e!290126)))

(declare-fun b!474978 () Bool)

(assert (=> b!474978 (= e!290128 e!290125)))

(assert (=> b!474978 (= c!95153 ((_ is Union!1145) (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(declare-fun b!474979 () Bool)

(declare-fun call!33061 () Bool)

(assert (=> b!474979 (= e!290126 call!33061)))

(declare-fun b!474980 () Bool)

(declare-fun res!210679 () Bool)

(declare-fun e!290127 () Bool)

(assert (=> b!474980 (=> res!210679 e!290127)))

(assert (=> b!474980 (= res!210679 (not ((_ is Concat!2045) (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230)))))))

(assert (=> b!474980 (= e!290125 e!290127)))

(declare-fun bm!33056 () Bool)

(assert (=> bm!33056 (= call!33059 (validRegex!373 (ite c!95153 (regOne!2803 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))) (regTwo!2802 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))))

(declare-fun bm!33055 () Bool)

(assert (=> bm!33055 (= call!33061 call!33060)))

(declare-fun d!179859 () Bool)

(declare-fun res!210683 () Bool)

(assert (=> d!179859 (=> res!210683 e!290124)))

(assert (=> d!179859 (= res!210683 ((_ is ElementMatch!1145) (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))))))

(assert (=> d!179859 (= (validRegex!373 (ite c!95113 (regOne!2803 r!20230) (regTwo!2802 r!20230))) e!290124)))

(declare-fun b!474981 () Bool)

(declare-fun e!290123 () Bool)

(assert (=> b!474981 (= e!290127 e!290123)))

(declare-fun res!210680 () Bool)

(assert (=> b!474981 (=> (not res!210680) (not e!290123))))

(assert (=> b!474981 (= res!210680 call!33061)))

(declare-fun b!474982 () Bool)

(assert (=> b!474982 (= e!290123 call!33059)))

(assert (= (and d!179859 (not res!210683)) b!474975))

(assert (= (and b!474975 c!95154) b!474976))

(assert (= (and b!474975 (not c!95154)) b!474978))

(assert (= (and b!474976 res!210682) b!474974))

(assert (= (and b!474978 c!95153) b!474977))

(assert (= (and b!474978 (not c!95153)) b!474980))

(assert (= (and b!474977 res!210681) b!474979))

(assert (= (and b!474980 (not res!210679)) b!474981))

(assert (= (and b!474981 res!210680) b!474982))

(assert (= (or b!474979 b!474981) bm!33055))

(assert (= (or b!474977 b!474982) bm!33056))

(assert (= (or b!474974 bm!33055) bm!33054))

(declare-fun m!747085 () Bool)

(assert (=> bm!33054 m!747085))

(declare-fun m!747087 () Bool)

(assert (=> b!474976 m!747087))

(declare-fun m!747089 () Bool)

(assert (=> bm!33056 m!747089))

(assert (=> bm!33006 d!179859))

(declare-fun b!474983 () Bool)

(declare-fun e!290129 () Bool)

(assert (=> b!474983 (= e!290129 tp_is_empty!2287)))

(assert (=> b!474724 (= tp!132030 e!290129)))

(declare-fun b!474984 () Bool)

(declare-fun tp!132169 () Bool)

(declare-fun tp!132167 () Bool)

(assert (=> b!474984 (= e!290129 (and tp!132169 tp!132167))))

(declare-fun b!474985 () Bool)

(declare-fun tp!132171 () Bool)

(assert (=> b!474985 (= e!290129 tp!132171)))

(declare-fun b!474986 () Bool)

(declare-fun tp!132170 () Bool)

(declare-fun tp!132168 () Bool)

(assert (=> b!474986 (= e!290129 (and tp!132170 tp!132168))))

(assert (= (and b!474724 ((_ is ElementMatch!1145) (regOne!2803 (regTwo!2803 r!20230)))) b!474983))

(assert (= (and b!474724 ((_ is Concat!2045) (regOne!2803 (regTwo!2803 r!20230)))) b!474984))

(assert (= (and b!474724 ((_ is Star!1145) (regOne!2803 (regTwo!2803 r!20230)))) b!474985))

(assert (= (and b!474724 ((_ is Union!1145) (regOne!2803 (regTwo!2803 r!20230)))) b!474986))

(declare-fun b!474987 () Bool)

(declare-fun e!290130 () Bool)

(assert (=> b!474987 (= e!290130 tp_is_empty!2287)))

(assert (=> b!474724 (= tp!132028 e!290130)))

(declare-fun b!474988 () Bool)

(declare-fun tp!132174 () Bool)

(declare-fun tp!132172 () Bool)

(assert (=> b!474988 (= e!290130 (and tp!132174 tp!132172))))

(declare-fun b!474989 () Bool)

(declare-fun tp!132176 () Bool)

(assert (=> b!474989 (= e!290130 tp!132176)))

(declare-fun b!474990 () Bool)

(declare-fun tp!132175 () Bool)

(declare-fun tp!132173 () Bool)

(assert (=> b!474990 (= e!290130 (and tp!132175 tp!132173))))

(assert (= (and b!474724 ((_ is ElementMatch!1145) (regTwo!2803 (regTwo!2803 r!20230)))) b!474987))

(assert (= (and b!474724 ((_ is Concat!2045) (regTwo!2803 (regTwo!2803 r!20230)))) b!474988))

(assert (= (and b!474724 ((_ is Star!1145) (regTwo!2803 (regTwo!2803 r!20230)))) b!474989))

(assert (= (and b!474724 ((_ is Union!1145) (regTwo!2803 (regTwo!2803 r!20230)))) b!474990))

(declare-fun b!474991 () Bool)

(declare-fun e!290131 () Bool)

(assert (=> b!474991 (= e!290131 tp_is_empty!2287)))

(assert (=> b!474719 (= tp!132026 e!290131)))

(declare-fun b!474992 () Bool)

(declare-fun tp!132179 () Bool)

(declare-fun tp!132177 () Bool)

(assert (=> b!474992 (= e!290131 (and tp!132179 tp!132177))))

(declare-fun b!474993 () Bool)

(declare-fun tp!132181 () Bool)

(assert (=> b!474993 (= e!290131 tp!132181)))

(declare-fun b!474994 () Bool)

(declare-fun tp!132180 () Bool)

(declare-fun tp!132178 () Bool)

(assert (=> b!474994 (= e!290131 (and tp!132180 tp!132178))))

(assert (= (and b!474719 ((_ is ElementMatch!1145) (reg!1474 (regOne!2803 r!20230)))) b!474991))

(assert (= (and b!474719 ((_ is Concat!2045) (reg!1474 (regOne!2803 r!20230)))) b!474992))

(assert (= (and b!474719 ((_ is Star!1145) (reg!1474 (regOne!2803 r!20230)))) b!474993))

(assert (= (and b!474719 ((_ is Union!1145) (reg!1474 (regOne!2803 r!20230)))) b!474994))

(declare-fun b!474995 () Bool)

(declare-fun e!290132 () Bool)

(assert (=> b!474995 (= e!290132 tp_is_empty!2287)))

(assert (=> b!474714 (= tp!132019 e!290132)))

(declare-fun b!474996 () Bool)

(declare-fun tp!132184 () Bool)

(declare-fun tp!132182 () Bool)

(assert (=> b!474996 (= e!290132 (and tp!132184 tp!132182))))

(declare-fun b!474997 () Bool)

(declare-fun tp!132186 () Bool)

(assert (=> b!474997 (= e!290132 tp!132186)))

(declare-fun b!474998 () Bool)

(declare-fun tp!132185 () Bool)

(declare-fun tp!132183 () Bool)

(assert (=> b!474998 (= e!290132 (and tp!132185 tp!132183))))

(assert (= (and b!474714 ((_ is ElementMatch!1145) (regOne!2802 (reg!1474 r!20230)))) b!474995))

(assert (= (and b!474714 ((_ is Concat!2045) (regOne!2802 (reg!1474 r!20230)))) b!474996))

(assert (= (and b!474714 ((_ is Star!1145) (regOne!2802 (reg!1474 r!20230)))) b!474997))

(assert (= (and b!474714 ((_ is Union!1145) (regOne!2802 (reg!1474 r!20230)))) b!474998))

(declare-fun b!474999 () Bool)

(declare-fun e!290133 () Bool)

(assert (=> b!474999 (= e!290133 tp_is_empty!2287)))

(assert (=> b!474714 (= tp!132017 e!290133)))

(declare-fun b!475000 () Bool)

(declare-fun tp!132189 () Bool)

(declare-fun tp!132187 () Bool)

(assert (=> b!475000 (= e!290133 (and tp!132189 tp!132187))))

(declare-fun b!475001 () Bool)

(declare-fun tp!132191 () Bool)

(assert (=> b!475001 (= e!290133 tp!132191)))

(declare-fun b!475002 () Bool)

(declare-fun tp!132190 () Bool)

(declare-fun tp!132188 () Bool)

(assert (=> b!475002 (= e!290133 (and tp!132190 tp!132188))))

(assert (= (and b!474714 ((_ is ElementMatch!1145) (regTwo!2802 (reg!1474 r!20230)))) b!474999))

(assert (= (and b!474714 ((_ is Concat!2045) (regTwo!2802 (reg!1474 r!20230)))) b!475000))

(assert (= (and b!474714 ((_ is Star!1145) (regTwo!2802 (reg!1474 r!20230)))) b!475001))

(assert (= (and b!474714 ((_ is Union!1145) (regTwo!2802 (reg!1474 r!20230)))) b!475002))

(declare-fun b!475003 () Bool)

(declare-fun e!290134 () Bool)

(assert (=> b!475003 (= e!290134 tp_is_empty!2287)))

(assert (=> b!474728 (= tp!132035 e!290134)))

(declare-fun b!475004 () Bool)

(declare-fun tp!132194 () Bool)

(declare-fun tp!132192 () Bool)

(assert (=> b!475004 (= e!290134 (and tp!132194 tp!132192))))

(declare-fun b!475005 () Bool)

(declare-fun tp!132196 () Bool)

(assert (=> b!475005 (= e!290134 tp!132196)))

(declare-fun b!475006 () Bool)

(declare-fun tp!132195 () Bool)

(declare-fun tp!132193 () Bool)

(assert (=> b!475006 (= e!290134 (and tp!132195 tp!132193))))

(assert (= (and b!474728 ((_ is ElementMatch!1145) (regOne!2803 (regOne!2802 r!20230)))) b!475003))

(assert (= (and b!474728 ((_ is Concat!2045) (regOne!2803 (regOne!2802 r!20230)))) b!475004))

(assert (= (and b!474728 ((_ is Star!1145) (regOne!2803 (regOne!2802 r!20230)))) b!475005))

(assert (= (and b!474728 ((_ is Union!1145) (regOne!2803 (regOne!2802 r!20230)))) b!475006))

(declare-fun b!475007 () Bool)

(declare-fun e!290135 () Bool)

(assert (=> b!475007 (= e!290135 tp_is_empty!2287)))

(assert (=> b!474728 (= tp!132033 e!290135)))

(declare-fun b!475008 () Bool)

(declare-fun tp!132199 () Bool)

(declare-fun tp!132197 () Bool)

(assert (=> b!475008 (= e!290135 (and tp!132199 tp!132197))))

(declare-fun b!475009 () Bool)

(declare-fun tp!132201 () Bool)

(assert (=> b!475009 (= e!290135 tp!132201)))

(declare-fun b!475010 () Bool)

(declare-fun tp!132200 () Bool)

(declare-fun tp!132198 () Bool)

(assert (=> b!475010 (= e!290135 (and tp!132200 tp!132198))))

(assert (= (and b!474728 ((_ is ElementMatch!1145) (regTwo!2803 (regOne!2802 r!20230)))) b!475007))

(assert (= (and b!474728 ((_ is Concat!2045) (regTwo!2803 (regOne!2802 r!20230)))) b!475008))

(assert (= (and b!474728 ((_ is Star!1145) (regTwo!2803 (regOne!2802 r!20230)))) b!475009))

(assert (= (and b!474728 ((_ is Union!1145) (regTwo!2803 (regOne!2802 r!20230)))) b!475010))

(declare-fun b!475011 () Bool)

(declare-fun e!290136 () Bool)

(assert (=> b!475011 (= e!290136 tp_is_empty!2287)))

(assert (=> b!474723 (= tp!132031 e!290136)))

(declare-fun b!475012 () Bool)

(declare-fun tp!132204 () Bool)

(declare-fun tp!132202 () Bool)

(assert (=> b!475012 (= e!290136 (and tp!132204 tp!132202))))

(declare-fun b!475013 () Bool)

(declare-fun tp!132206 () Bool)

(assert (=> b!475013 (= e!290136 tp!132206)))

(declare-fun b!475014 () Bool)

(declare-fun tp!132205 () Bool)

(declare-fun tp!132203 () Bool)

(assert (=> b!475014 (= e!290136 (and tp!132205 tp!132203))))

(assert (= (and b!474723 ((_ is ElementMatch!1145) (reg!1474 (regTwo!2803 r!20230)))) b!475011))

(assert (= (and b!474723 ((_ is Concat!2045) (reg!1474 (regTwo!2803 r!20230)))) b!475012))

(assert (= (and b!474723 ((_ is Star!1145) (reg!1474 (regTwo!2803 r!20230)))) b!475013))

(assert (= (and b!474723 ((_ is Union!1145) (reg!1474 (regTwo!2803 r!20230)))) b!475014))

(declare-fun b!475015 () Bool)

(declare-fun e!290137 () Bool)

(assert (=> b!475015 (= e!290137 tp_is_empty!2287)))

(assert (=> b!474716 (= tp!132020 e!290137)))

(declare-fun b!475016 () Bool)

(declare-fun tp!132209 () Bool)

(declare-fun tp!132207 () Bool)

(assert (=> b!475016 (= e!290137 (and tp!132209 tp!132207))))

(declare-fun b!475017 () Bool)

(declare-fun tp!132211 () Bool)

(assert (=> b!475017 (= e!290137 tp!132211)))

(declare-fun b!475018 () Bool)

(declare-fun tp!132210 () Bool)

(declare-fun tp!132208 () Bool)

(assert (=> b!475018 (= e!290137 (and tp!132210 tp!132208))))

(assert (= (and b!474716 ((_ is ElementMatch!1145) (regOne!2803 (reg!1474 r!20230)))) b!475015))

(assert (= (and b!474716 ((_ is Concat!2045) (regOne!2803 (reg!1474 r!20230)))) b!475016))

(assert (= (and b!474716 ((_ is Star!1145) (regOne!2803 (reg!1474 r!20230)))) b!475017))

(assert (= (and b!474716 ((_ is Union!1145) (regOne!2803 (reg!1474 r!20230)))) b!475018))

(declare-fun b!475019 () Bool)

(declare-fun e!290138 () Bool)

(assert (=> b!475019 (= e!290138 tp_is_empty!2287)))

(assert (=> b!474716 (= tp!132018 e!290138)))

(declare-fun b!475020 () Bool)

(declare-fun tp!132214 () Bool)

(declare-fun tp!132212 () Bool)

(assert (=> b!475020 (= e!290138 (and tp!132214 tp!132212))))

(declare-fun b!475021 () Bool)

(declare-fun tp!132216 () Bool)

(assert (=> b!475021 (= e!290138 tp!132216)))

(declare-fun b!475022 () Bool)

(declare-fun tp!132215 () Bool)

(declare-fun tp!132213 () Bool)

(assert (=> b!475022 (= e!290138 (and tp!132215 tp!132213))))

(assert (= (and b!474716 ((_ is ElementMatch!1145) (regTwo!2803 (reg!1474 r!20230)))) b!475019))

(assert (= (and b!474716 ((_ is Concat!2045) (regTwo!2803 (reg!1474 r!20230)))) b!475020))

(assert (= (and b!474716 ((_ is Star!1145) (regTwo!2803 (reg!1474 r!20230)))) b!475021))

(assert (= (and b!474716 ((_ is Union!1145) (regTwo!2803 (reg!1474 r!20230)))) b!475022))

(declare-fun b!475023 () Bool)

(declare-fun e!290139 () Bool)

(assert (=> b!475023 (= e!290139 tp_is_empty!2287)))

(assert (=> b!474720 (= tp!132025 e!290139)))

(declare-fun b!475024 () Bool)

(declare-fun tp!132219 () Bool)

(declare-fun tp!132217 () Bool)

(assert (=> b!475024 (= e!290139 (and tp!132219 tp!132217))))

(declare-fun b!475025 () Bool)

(declare-fun tp!132221 () Bool)

(assert (=> b!475025 (= e!290139 tp!132221)))

(declare-fun b!475026 () Bool)

(declare-fun tp!132220 () Bool)

(declare-fun tp!132218 () Bool)

(assert (=> b!475026 (= e!290139 (and tp!132220 tp!132218))))

(assert (= (and b!474720 ((_ is ElementMatch!1145) (regOne!2803 (regOne!2803 r!20230)))) b!475023))

(assert (= (and b!474720 ((_ is Concat!2045) (regOne!2803 (regOne!2803 r!20230)))) b!475024))

(assert (= (and b!474720 ((_ is Star!1145) (regOne!2803 (regOne!2803 r!20230)))) b!475025))

(assert (= (and b!474720 ((_ is Union!1145) (regOne!2803 (regOne!2803 r!20230)))) b!475026))

(declare-fun b!475027 () Bool)

(declare-fun e!290140 () Bool)

(assert (=> b!475027 (= e!290140 tp_is_empty!2287)))

(assert (=> b!474720 (= tp!132023 e!290140)))

(declare-fun b!475028 () Bool)

(declare-fun tp!132224 () Bool)

(declare-fun tp!132222 () Bool)

(assert (=> b!475028 (= e!290140 (and tp!132224 tp!132222))))

(declare-fun b!475029 () Bool)

(declare-fun tp!132226 () Bool)

(assert (=> b!475029 (= e!290140 tp!132226)))

(declare-fun b!475030 () Bool)

(declare-fun tp!132225 () Bool)

(declare-fun tp!132223 () Bool)

(assert (=> b!475030 (= e!290140 (and tp!132225 tp!132223))))

(assert (= (and b!474720 ((_ is ElementMatch!1145) (regTwo!2803 (regOne!2803 r!20230)))) b!475027))

(assert (= (and b!474720 ((_ is Concat!2045) (regTwo!2803 (regOne!2803 r!20230)))) b!475028))

(assert (= (and b!474720 ((_ is Star!1145) (regTwo!2803 (regOne!2803 r!20230)))) b!475029))

(assert (= (and b!474720 ((_ is Union!1145) (regTwo!2803 (regOne!2803 r!20230)))) b!475030))

(declare-fun b!475031 () Bool)

(declare-fun e!290141 () Bool)

(assert (=> b!475031 (= e!290141 tp_is_empty!2287)))

(assert (=> b!474715 (= tp!132021 e!290141)))

(declare-fun b!475032 () Bool)

(declare-fun tp!132229 () Bool)

(declare-fun tp!132227 () Bool)

(assert (=> b!475032 (= e!290141 (and tp!132229 tp!132227))))

(declare-fun b!475033 () Bool)

(declare-fun tp!132231 () Bool)

(assert (=> b!475033 (= e!290141 tp!132231)))

(declare-fun b!475034 () Bool)

(declare-fun tp!132230 () Bool)

(declare-fun tp!132228 () Bool)

(assert (=> b!475034 (= e!290141 (and tp!132230 tp!132228))))

(assert (= (and b!474715 ((_ is ElementMatch!1145) (reg!1474 (reg!1474 r!20230)))) b!475031))

(assert (= (and b!474715 ((_ is Concat!2045) (reg!1474 (reg!1474 r!20230)))) b!475032))

(assert (= (and b!474715 ((_ is Star!1145) (reg!1474 (reg!1474 r!20230)))) b!475033))

(assert (= (and b!474715 ((_ is Union!1145) (reg!1474 (reg!1474 r!20230)))) b!475034))

(declare-fun b!475035 () Bool)

(declare-fun e!290142 () Bool)

(assert (=> b!475035 (= e!290142 tp_is_empty!2287)))

(assert (=> b!474726 (= tp!132034 e!290142)))

(declare-fun b!475036 () Bool)

(declare-fun tp!132234 () Bool)

(declare-fun tp!132232 () Bool)

(assert (=> b!475036 (= e!290142 (and tp!132234 tp!132232))))

(declare-fun b!475037 () Bool)

(declare-fun tp!132236 () Bool)

(assert (=> b!475037 (= e!290142 tp!132236)))

(declare-fun b!475038 () Bool)

(declare-fun tp!132235 () Bool)

(declare-fun tp!132233 () Bool)

(assert (=> b!475038 (= e!290142 (and tp!132235 tp!132233))))

(assert (= (and b!474726 ((_ is ElementMatch!1145) (regOne!2802 (regOne!2802 r!20230)))) b!475035))

(assert (= (and b!474726 ((_ is Concat!2045) (regOne!2802 (regOne!2802 r!20230)))) b!475036))

(assert (= (and b!474726 ((_ is Star!1145) (regOne!2802 (regOne!2802 r!20230)))) b!475037))

(assert (= (and b!474726 ((_ is Union!1145) (regOne!2802 (regOne!2802 r!20230)))) b!475038))

(declare-fun b!475039 () Bool)

(declare-fun e!290143 () Bool)

(assert (=> b!475039 (= e!290143 tp_is_empty!2287)))

(assert (=> b!474726 (= tp!132032 e!290143)))

(declare-fun b!475040 () Bool)

(declare-fun tp!132239 () Bool)

(declare-fun tp!132237 () Bool)

(assert (=> b!475040 (= e!290143 (and tp!132239 tp!132237))))

(declare-fun b!475041 () Bool)

(declare-fun tp!132241 () Bool)

(assert (=> b!475041 (= e!290143 tp!132241)))

(declare-fun b!475042 () Bool)

(declare-fun tp!132240 () Bool)

(declare-fun tp!132238 () Bool)

(assert (=> b!475042 (= e!290143 (and tp!132240 tp!132238))))

(assert (= (and b!474726 ((_ is ElementMatch!1145) (regTwo!2802 (regOne!2802 r!20230)))) b!475039))

(assert (= (and b!474726 ((_ is Concat!2045) (regTwo!2802 (regOne!2802 r!20230)))) b!475040))

(assert (= (and b!474726 ((_ is Star!1145) (regTwo!2802 (regOne!2802 r!20230)))) b!475041))

(assert (= (and b!474726 ((_ is Union!1145) (regTwo!2802 (regOne!2802 r!20230)))) b!475042))

(declare-fun b!475043 () Bool)

(declare-fun e!290144 () Bool)

(assert (=> b!475043 (= e!290144 tp_is_empty!2287)))

(assert (=> b!474730 (= tp!132039 e!290144)))

(declare-fun b!475044 () Bool)

(declare-fun tp!132244 () Bool)

(declare-fun tp!132242 () Bool)

(assert (=> b!475044 (= e!290144 (and tp!132244 tp!132242))))

(declare-fun b!475045 () Bool)

(declare-fun tp!132246 () Bool)

(assert (=> b!475045 (= e!290144 tp!132246)))

(declare-fun b!475046 () Bool)

(declare-fun tp!132245 () Bool)

(declare-fun tp!132243 () Bool)

(assert (=> b!475046 (= e!290144 (and tp!132245 tp!132243))))

(assert (= (and b!474730 ((_ is ElementMatch!1145) (regOne!2802 (regTwo!2802 r!20230)))) b!475043))

(assert (= (and b!474730 ((_ is Concat!2045) (regOne!2802 (regTwo!2802 r!20230)))) b!475044))

(assert (= (and b!474730 ((_ is Star!1145) (regOne!2802 (regTwo!2802 r!20230)))) b!475045))

(assert (= (and b!474730 ((_ is Union!1145) (regOne!2802 (regTwo!2802 r!20230)))) b!475046))

(declare-fun b!475047 () Bool)

(declare-fun e!290145 () Bool)

(assert (=> b!475047 (= e!290145 tp_is_empty!2287)))

(assert (=> b!474730 (= tp!132037 e!290145)))

(declare-fun b!475048 () Bool)

(declare-fun tp!132249 () Bool)

(declare-fun tp!132247 () Bool)

(assert (=> b!475048 (= e!290145 (and tp!132249 tp!132247))))

(declare-fun b!475049 () Bool)

(declare-fun tp!132251 () Bool)

(assert (=> b!475049 (= e!290145 tp!132251)))

(declare-fun b!475050 () Bool)

(declare-fun tp!132250 () Bool)

(declare-fun tp!132248 () Bool)

(assert (=> b!475050 (= e!290145 (and tp!132250 tp!132248))))

(assert (= (and b!474730 ((_ is ElementMatch!1145) (regTwo!2802 (regTwo!2802 r!20230)))) b!475047))

(assert (= (and b!474730 ((_ is Concat!2045) (regTwo!2802 (regTwo!2802 r!20230)))) b!475048))

(assert (= (and b!474730 ((_ is Star!1145) (regTwo!2802 (regTwo!2802 r!20230)))) b!475049))

(assert (= (and b!474730 ((_ is Union!1145) (regTwo!2802 (regTwo!2802 r!20230)))) b!475050))

(declare-fun b!475051 () Bool)

(declare-fun e!290146 () Bool)

(assert (=> b!475051 (= e!290146 tp_is_empty!2287)))

(assert (=> b!474718 (= tp!132024 e!290146)))

(declare-fun b!475052 () Bool)

(declare-fun tp!132254 () Bool)

(declare-fun tp!132252 () Bool)

(assert (=> b!475052 (= e!290146 (and tp!132254 tp!132252))))

(declare-fun b!475053 () Bool)

(declare-fun tp!132256 () Bool)

(assert (=> b!475053 (= e!290146 tp!132256)))

(declare-fun b!475054 () Bool)

(declare-fun tp!132255 () Bool)

(declare-fun tp!132253 () Bool)

(assert (=> b!475054 (= e!290146 (and tp!132255 tp!132253))))

(assert (= (and b!474718 ((_ is ElementMatch!1145) (regOne!2802 (regOne!2803 r!20230)))) b!475051))

(assert (= (and b!474718 ((_ is Concat!2045) (regOne!2802 (regOne!2803 r!20230)))) b!475052))

(assert (= (and b!474718 ((_ is Star!1145) (regOne!2802 (regOne!2803 r!20230)))) b!475053))

(assert (= (and b!474718 ((_ is Union!1145) (regOne!2802 (regOne!2803 r!20230)))) b!475054))

(declare-fun b!475055 () Bool)

(declare-fun e!290147 () Bool)

(assert (=> b!475055 (= e!290147 tp_is_empty!2287)))

(assert (=> b!474718 (= tp!132022 e!290147)))

(declare-fun b!475056 () Bool)

(declare-fun tp!132259 () Bool)

(declare-fun tp!132257 () Bool)

(assert (=> b!475056 (= e!290147 (and tp!132259 tp!132257))))

(declare-fun b!475057 () Bool)

(declare-fun tp!132261 () Bool)

(assert (=> b!475057 (= e!290147 tp!132261)))

(declare-fun b!475058 () Bool)

(declare-fun tp!132260 () Bool)

(declare-fun tp!132258 () Bool)

(assert (=> b!475058 (= e!290147 (and tp!132260 tp!132258))))

(assert (= (and b!474718 ((_ is ElementMatch!1145) (regTwo!2802 (regOne!2803 r!20230)))) b!475055))

(assert (= (and b!474718 ((_ is Concat!2045) (regTwo!2802 (regOne!2803 r!20230)))) b!475056))

(assert (= (and b!474718 ((_ is Star!1145) (regTwo!2802 (regOne!2803 r!20230)))) b!475057))

(assert (= (and b!474718 ((_ is Union!1145) (regTwo!2802 (regOne!2803 r!20230)))) b!475058))

(declare-fun b!475059 () Bool)

(declare-fun e!290148 () Bool)

(assert (=> b!475059 (= e!290148 tp_is_empty!2287)))

(assert (=> b!474732 (= tp!132040 e!290148)))

(declare-fun b!475060 () Bool)

(declare-fun tp!132264 () Bool)

(declare-fun tp!132262 () Bool)

(assert (=> b!475060 (= e!290148 (and tp!132264 tp!132262))))

(declare-fun b!475061 () Bool)

(declare-fun tp!132266 () Bool)

(assert (=> b!475061 (= e!290148 tp!132266)))

(declare-fun b!475062 () Bool)

(declare-fun tp!132265 () Bool)

(declare-fun tp!132263 () Bool)

(assert (=> b!475062 (= e!290148 (and tp!132265 tp!132263))))

(assert (= (and b!474732 ((_ is ElementMatch!1145) (regOne!2803 (regTwo!2802 r!20230)))) b!475059))

(assert (= (and b!474732 ((_ is Concat!2045) (regOne!2803 (regTwo!2802 r!20230)))) b!475060))

(assert (= (and b!474732 ((_ is Star!1145) (regOne!2803 (regTwo!2802 r!20230)))) b!475061))

(assert (= (and b!474732 ((_ is Union!1145) (regOne!2803 (regTwo!2802 r!20230)))) b!475062))

(declare-fun b!475063 () Bool)

(declare-fun e!290149 () Bool)

(assert (=> b!475063 (= e!290149 tp_is_empty!2287)))

(assert (=> b!474732 (= tp!132038 e!290149)))

(declare-fun b!475064 () Bool)

(declare-fun tp!132269 () Bool)

(declare-fun tp!132267 () Bool)

(assert (=> b!475064 (= e!290149 (and tp!132269 tp!132267))))

(declare-fun b!475065 () Bool)

(declare-fun tp!132271 () Bool)

(assert (=> b!475065 (= e!290149 tp!132271)))

(declare-fun b!475066 () Bool)

(declare-fun tp!132270 () Bool)

(declare-fun tp!132268 () Bool)

(assert (=> b!475066 (= e!290149 (and tp!132270 tp!132268))))

(assert (= (and b!474732 ((_ is ElementMatch!1145) (regTwo!2803 (regTwo!2802 r!20230)))) b!475063))

(assert (= (and b!474732 ((_ is Concat!2045) (regTwo!2803 (regTwo!2802 r!20230)))) b!475064))

(assert (= (and b!474732 ((_ is Star!1145) (regTwo!2803 (regTwo!2802 r!20230)))) b!475065))

(assert (= (and b!474732 ((_ is Union!1145) (regTwo!2803 (regTwo!2802 r!20230)))) b!475066))

(declare-fun b!475067 () Bool)

(declare-fun e!290150 () Bool)

(assert (=> b!475067 (= e!290150 tp_is_empty!2287)))

(assert (=> b!474727 (= tp!132036 e!290150)))

(declare-fun b!475068 () Bool)

(declare-fun tp!132274 () Bool)

(declare-fun tp!132272 () Bool)

(assert (=> b!475068 (= e!290150 (and tp!132274 tp!132272))))

(declare-fun b!475069 () Bool)

(declare-fun tp!132276 () Bool)

(assert (=> b!475069 (= e!290150 tp!132276)))

(declare-fun b!475070 () Bool)

(declare-fun tp!132275 () Bool)

(declare-fun tp!132273 () Bool)

(assert (=> b!475070 (= e!290150 (and tp!132275 tp!132273))))

(assert (= (and b!474727 ((_ is ElementMatch!1145) (reg!1474 (regOne!2802 r!20230)))) b!475067))

(assert (= (and b!474727 ((_ is Concat!2045) (reg!1474 (regOne!2802 r!20230)))) b!475068))

(assert (= (and b!474727 ((_ is Star!1145) (reg!1474 (regOne!2802 r!20230)))) b!475069))

(assert (= (and b!474727 ((_ is Union!1145) (reg!1474 (regOne!2802 r!20230)))) b!475070))

(declare-fun b!475071 () Bool)

(declare-fun e!290151 () Bool)

(assert (=> b!475071 (= e!290151 tp_is_empty!2287)))

(assert (=> b!474722 (= tp!132029 e!290151)))

(declare-fun b!475072 () Bool)

(declare-fun tp!132279 () Bool)

(declare-fun tp!132277 () Bool)

(assert (=> b!475072 (= e!290151 (and tp!132279 tp!132277))))

(declare-fun b!475073 () Bool)

(declare-fun tp!132281 () Bool)

(assert (=> b!475073 (= e!290151 tp!132281)))

(declare-fun b!475074 () Bool)

(declare-fun tp!132280 () Bool)

(declare-fun tp!132278 () Bool)

(assert (=> b!475074 (= e!290151 (and tp!132280 tp!132278))))

(assert (= (and b!474722 ((_ is ElementMatch!1145) (regOne!2802 (regTwo!2803 r!20230)))) b!475071))

(assert (= (and b!474722 ((_ is Concat!2045) (regOne!2802 (regTwo!2803 r!20230)))) b!475072))

(assert (= (and b!474722 ((_ is Star!1145) (regOne!2802 (regTwo!2803 r!20230)))) b!475073))

(assert (= (and b!474722 ((_ is Union!1145) (regOne!2802 (regTwo!2803 r!20230)))) b!475074))

(declare-fun b!475075 () Bool)

(declare-fun e!290152 () Bool)

(assert (=> b!475075 (= e!290152 tp_is_empty!2287)))

(assert (=> b!474722 (= tp!132027 e!290152)))

(declare-fun b!475076 () Bool)

(declare-fun tp!132284 () Bool)

(declare-fun tp!132282 () Bool)

(assert (=> b!475076 (= e!290152 (and tp!132284 tp!132282))))

(declare-fun b!475077 () Bool)

(declare-fun tp!132286 () Bool)

(assert (=> b!475077 (= e!290152 tp!132286)))

(declare-fun b!475078 () Bool)

(declare-fun tp!132285 () Bool)

(declare-fun tp!132283 () Bool)

(assert (=> b!475078 (= e!290152 (and tp!132285 tp!132283))))

(assert (= (and b!474722 ((_ is ElementMatch!1145) (regTwo!2802 (regTwo!2803 r!20230)))) b!475075))

(assert (= (and b!474722 ((_ is Concat!2045) (regTwo!2802 (regTwo!2803 r!20230)))) b!475076))

(assert (= (and b!474722 ((_ is Star!1145) (regTwo!2802 (regTwo!2803 r!20230)))) b!475077))

(assert (= (and b!474722 ((_ is Union!1145) (regTwo!2802 (regTwo!2803 r!20230)))) b!475078))

(declare-fun b!475079 () Bool)

(declare-fun e!290153 () Bool)

(assert (=> b!475079 (= e!290153 tp_is_empty!2287)))

(assert (=> b!474731 (= tp!132041 e!290153)))

(declare-fun b!475080 () Bool)

(declare-fun tp!132289 () Bool)

(declare-fun tp!132287 () Bool)

(assert (=> b!475080 (= e!290153 (and tp!132289 tp!132287))))

(declare-fun b!475081 () Bool)

(declare-fun tp!132291 () Bool)

(assert (=> b!475081 (= e!290153 tp!132291)))

(declare-fun b!475082 () Bool)

(declare-fun tp!132290 () Bool)

(declare-fun tp!132288 () Bool)

(assert (=> b!475082 (= e!290153 (and tp!132290 tp!132288))))

(assert (= (and b!474731 ((_ is ElementMatch!1145) (reg!1474 (regTwo!2802 r!20230)))) b!475079))

(assert (= (and b!474731 ((_ is Concat!2045) (reg!1474 (regTwo!2802 r!20230)))) b!475080))

(assert (= (and b!474731 ((_ is Star!1145) (reg!1474 (regTwo!2802 r!20230)))) b!475081))

(assert (= (and b!474731 ((_ is Union!1145) (reg!1474 (regTwo!2802 r!20230)))) b!475082))

(check-sat (not b!474990) (not b!475049) (not b!474986) (not b!474940) (not b!474910) (not bm!33051) (not b!474989) (not d!179845) (not b!474960) (not bm!33034) (not b!475068) tp_is_empty!2287 (not b!475054) (not b!475060) (not b!475033) (not b!475056) (not b!475016) (not b!475032) (not b!475017) (not b!475029) (not b!474998) (not d!179857) (not b!475070) (not b!474985) (not b!475078) (not b!475038) (not b!475057) (not b!475014) (not bm!33040) (not b!475064) (not b!475005) (not b!475001) (not b!475024) (not b!474970) (not bm!33032) (not bm!33054) (not b!474993) (not bm!33041) (not b!475062) (not b!475061) (not b!475021) (not b!475004) (not b!475072) (not b!475020) (not b!475028) (not d!179853) (not b!475044) (not b!475030) (not b!475066) (not b!474992) (not d!179849) (not b!475010) (not b!475058) (not b!474988) (not b!475052) (not b!474984) (not b!475026) (not b!475053) (not b!475050) (not b!475025) (not b!474997) (not b!475076) (not b!475006) (not b!475012) (not bm!33039) (not b!475034) (not b!475069) (not b!475041) (not bm!33048) (not d!179855) (not b!475077) (not b!475000) (not b!475065) (not b!475018) (not b!475009) (not b!474994) (not b!475008) (not b!475040) (not b!475002) (not b!475048) (not b!475045) (not b!475080) (not b!475037) (not bm!33043) (not b!475013) (not b!474976) (not b!475022) (not bm!33044) (not b!475073) (not bm!33056) (not b!475036) (not bm!33052) (not d!179851) (not bm!33045) (not b!475074) (not bm!33047) (not b!474996) (not b!475081) (not b!475046) (not b!475042) (not b!475082))
(check-sat)
