; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45878 () Bool)

(assert start!45878)

(declare-fun b!489903 () Bool)

(declare-fun res!213449 () Bool)

(declare-fun e!296586 () Bool)

(assert (=> b!489903 (=> (not res!213449) (not e!296586))))

(declare-datatypes ((C!3270 0))(
  ( (C!3271 (val!1621 Int)) )
))
(declare-datatypes ((Regex!1174 0))(
  ( (ElementMatch!1174 (c!97065 C!3270)) (Concat!2074 (regOne!2860 Regex!1174) (regTwo!2860 Regex!1174)) (EmptyExpr!1174) (Star!1174 (reg!1503 Regex!1174)) (EmptyLang!1174) (Union!1174 (regOne!2861 Regex!1174) (regTwo!2861 Regex!1174)) )
))
(declare-fun r!20230 () Regex!1174)

(declare-fun lostCause!168 (Regex!1174) Bool)

(assert (=> b!489903 (= res!213449 (lostCause!168 r!20230))))

(declare-fun b!489904 () Bool)

(declare-fun e!296587 () Bool)

(declare-fun tp!142632 () Bool)

(declare-fun tp!142633 () Bool)

(assert (=> b!489904 (= e!296587 (and tp!142632 tp!142633))))

(declare-fun b!489905 () Bool)

(declare-fun e!296584 () Bool)

(assert (=> b!489905 (= e!296586 e!296584)))

(declare-fun res!213450 () Bool)

(assert (=> b!489905 (=> (not res!213450) (not e!296584))))

(declare-fun e!296585 () Bool)

(assert (=> b!489905 (= res!213450 e!296585)))

(declare-fun res!213448 () Bool)

(assert (=> b!489905 (=> res!213448 e!296585)))

(declare-fun lt!211197 () Bool)

(assert (=> b!489905 (= res!213448 lt!211197)))

(assert (=> b!489905 (= lt!211197 (lostCause!168 (regOne!2860 r!20230)))))

(declare-fun b!489906 () Bool)

(declare-fun tp!142636 () Bool)

(declare-fun tp!142634 () Bool)

(assert (=> b!489906 (= e!296587 (and tp!142636 tp!142634))))

(declare-fun b!489907 () Bool)

(declare-fun tp!142635 () Bool)

(assert (=> b!489907 (= e!296587 tp!142635)))

(declare-fun b!489908 () Bool)

(declare-fun res!213454 () Bool)

(assert (=> b!489908 (=> (not res!213454) (not e!296586))))

(assert (=> b!489908 (= res!213454 (and (not (is-EmptyLang!1174 r!20230)) (not (is-EmptyExpr!1174 r!20230)) (not (is-ElementMatch!1174 r!20230)) (not (is-Union!1174 r!20230)) (not (is-Star!1174 r!20230))))))

(declare-fun b!489910 () Bool)

(declare-fun res!213451 () Bool)

(assert (=> b!489910 (=> (not res!213451) (not e!296584))))

(declare-fun nullable!309 (Regex!1174) Bool)

(assert (=> b!489910 (= res!213451 (not (nullable!309 (regOne!2860 r!20230))))))

(declare-fun b!489911 () Bool)

(declare-fun res!213452 () Bool)

(assert (=> b!489911 (=> (not res!213452) (not e!296584))))

(assert (=> b!489911 (= res!213452 lt!211197)))

(declare-fun res!213453 () Bool)

(assert (=> start!45878 (=> (not res!213453) (not e!296586))))

(declare-fun validRegex!402 (Regex!1174) Bool)

(assert (=> start!45878 (= res!213453 (validRegex!402 r!20230))))

(assert (=> start!45878 e!296586))

(assert (=> start!45878 e!296587))

(declare-fun b!489909 () Bool)

(declare-fun tp_is_empty!2345 () Bool)

(assert (=> b!489909 (= e!296587 tp_is_empty!2345)))

(declare-fun b!489912 () Bool)

(assert (=> b!489912 (= e!296584 (not (validRegex!402 (regOne!2860 r!20230))))))

(declare-fun b!489913 () Bool)

(assert (=> b!489913 (= e!296585 (lostCause!168 (regTwo!2860 r!20230)))))

(assert (= (and start!45878 res!213453) b!489903))

(assert (= (and b!489903 res!213449) b!489908))

(assert (= (and b!489908 res!213454) b!489905))

(assert (= (and b!489905 (not res!213448)) b!489913))

(assert (= (and b!489905 res!213450) b!489910))

(assert (= (and b!489910 res!213451) b!489911))

(assert (= (and b!489911 res!213452) b!489912))

(assert (= (and start!45878 (is-ElementMatch!1174 r!20230)) b!489909))

(assert (= (and start!45878 (is-Concat!2074 r!20230)) b!489906))

(assert (= (and start!45878 (is-Star!1174 r!20230)) b!489907))

(assert (= (and start!45878 (is-Union!1174 r!20230)) b!489904))

(declare-fun m!751643 () Bool)

(assert (=> b!489910 m!751643))

(declare-fun m!751645 () Bool)

(assert (=> b!489905 m!751645))

(declare-fun m!751647 () Bool)

(assert (=> b!489913 m!751647))

(declare-fun m!751649 () Bool)

(assert (=> start!45878 m!751649))

(declare-fun m!751651 () Bool)

(assert (=> b!489903 m!751651))

(declare-fun m!751653 () Bool)

(assert (=> b!489912 m!751653))

(push 1)

(assert (not b!489906))

(assert (not b!489904))

(assert (not b!489912))

(assert (not start!45878))

(assert tp_is_empty!2345)

(assert (not b!489907))

(assert (not b!489910))

(assert (not b!489905))

(assert (not b!489903))

(assert (not b!489913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!181452 () Bool)

(declare-fun lostCauseFct!76 (Regex!1174) Bool)

(assert (=> d!181452 (= (lostCause!168 (regOne!2860 r!20230)) (lostCauseFct!76 (regOne!2860 r!20230)))))

(declare-fun bs!58978 () Bool)

(assert (= bs!58978 d!181452))

(declare-fun m!751667 () Bool)

(assert (=> bs!58978 m!751667))

(assert (=> b!489905 d!181452))

(declare-fun b!489965 () Bool)

(declare-fun res!213486 () Bool)

(declare-fun e!296614 () Bool)

(assert (=> b!489965 (=> res!213486 e!296614)))

(assert (=> b!489965 (= res!213486 (not (is-Concat!2074 r!20230)))))

(declare-fun e!296617 () Bool)

(assert (=> b!489965 (= e!296617 e!296614)))

(declare-fun b!489966 () Bool)

(declare-fun e!296619 () Bool)

(assert (=> b!489966 (= e!296614 e!296619)))

(declare-fun res!213489 () Bool)

(assert (=> b!489966 (=> (not res!213489) (not e!296619))))

(declare-fun call!35034 () Bool)

(assert (=> b!489966 (= res!213489 call!35034)))

(declare-fun bm!35030 () Bool)

(declare-fun call!35035 () Bool)

(declare-fun call!35036 () Bool)

(assert (=> bm!35030 (= call!35035 call!35036)))

(declare-fun b!489967 () Bool)

(declare-fun e!296615 () Bool)

(declare-fun e!296616 () Bool)

(assert (=> b!489967 (= e!296615 e!296616)))

(declare-fun c!97071 () Bool)

(assert (=> b!489967 (= c!97071 (is-Star!1174 r!20230))))

(declare-fun c!97072 () Bool)

(declare-fun bm!35031 () Bool)

(assert (=> bm!35031 (= call!35036 (validRegex!402 (ite c!97071 (reg!1503 r!20230) (ite c!97072 (regOne!2861 r!20230) (regTwo!2860 r!20230)))))))

(declare-fun b!489968 () Bool)

(declare-fun res!213490 () Bool)

(declare-fun e!296620 () Bool)

(assert (=> b!489968 (=> (not res!213490) (not e!296620))))

(assert (=> b!489968 (= res!213490 call!35035)))

(assert (=> b!489968 (= e!296617 e!296620)))

(declare-fun b!489969 () Bool)

(assert (=> b!489969 (= e!296616 e!296617)))

(assert (=> b!489969 (= c!97072 (is-Union!1174 r!20230))))

(declare-fun b!489970 () Bool)

(declare-fun e!296618 () Bool)

(assert (=> b!489970 (= e!296616 e!296618)))

(declare-fun res!213488 () Bool)

(assert (=> b!489970 (= res!213488 (not (nullable!309 (reg!1503 r!20230))))))

(assert (=> b!489970 (=> (not res!213488) (not e!296618))))

(declare-fun bm!35029 () Bool)

(assert (=> bm!35029 (= call!35034 (validRegex!402 (ite c!97072 (regTwo!2861 r!20230) (regOne!2860 r!20230))))))

(declare-fun d!181454 () Bool)

(declare-fun res!213487 () Bool)

(assert (=> d!181454 (=> res!213487 e!296615)))

(assert (=> d!181454 (= res!213487 (is-ElementMatch!1174 r!20230))))

(assert (=> d!181454 (= (validRegex!402 r!20230) e!296615)))

(declare-fun b!489971 () Bool)

(assert (=> b!489971 (= e!296620 call!35034)))

(declare-fun b!489972 () Bool)

(assert (=> b!489972 (= e!296618 call!35036)))

(declare-fun b!489973 () Bool)

(assert (=> b!489973 (= e!296619 call!35035)))

(assert (= (and d!181454 (not res!213487)) b!489967))

(assert (= (and b!489967 c!97071) b!489970))

(assert (= (and b!489967 (not c!97071)) b!489969))

(assert (= (and b!489970 res!213488) b!489972))

(assert (= (and b!489969 c!97072) b!489968))

(assert (= (and b!489969 (not c!97072)) b!489965))

(assert (= (and b!489968 res!213490) b!489971))

(assert (= (and b!489965 (not res!213486)) b!489966))

(assert (= (and b!489966 res!213489) b!489973))

(assert (= (or b!489971 b!489966) bm!35029))

(assert (= (or b!489968 b!489973) bm!35030))

(assert (= (or b!489972 bm!35030) bm!35031))

(declare-fun m!751673 () Bool)

(assert (=> bm!35031 m!751673))

(declare-fun m!751675 () Bool)

(assert (=> b!489970 m!751675))

(declare-fun m!751677 () Bool)

(assert (=> bm!35029 m!751677))

(assert (=> start!45878 d!181454))

(declare-fun d!181462 () Bool)

(declare-fun nullableFct!114 (Regex!1174) Bool)

(assert (=> d!181462 (= (nullable!309 (regOne!2860 r!20230)) (nullableFct!114 (regOne!2860 r!20230)))))

(declare-fun bs!58982 () Bool)

(assert (= bs!58982 d!181462))

(declare-fun m!751681 () Bool)

(assert (=> bs!58982 m!751681))

(assert (=> b!489910 d!181462))

(declare-fun b!489974 () Bool)

(declare-fun res!213491 () Bool)

(declare-fun e!296621 () Bool)

(assert (=> b!489974 (=> res!213491 e!296621)))

(assert (=> b!489974 (= res!213491 (not (is-Concat!2074 (regOne!2860 r!20230))))))

(declare-fun e!296624 () Bool)

(assert (=> b!489974 (= e!296624 e!296621)))

(declare-fun b!489975 () Bool)

(declare-fun e!296626 () Bool)

(assert (=> b!489975 (= e!296621 e!296626)))

(declare-fun res!213494 () Bool)

(assert (=> b!489975 (=> (not res!213494) (not e!296626))))

(declare-fun call!35037 () Bool)

(assert (=> b!489975 (= res!213494 call!35037)))

(declare-fun bm!35033 () Bool)

(declare-fun call!35038 () Bool)

(declare-fun call!35039 () Bool)

(assert (=> bm!35033 (= call!35038 call!35039)))

(declare-fun b!489976 () Bool)

(declare-fun e!296622 () Bool)

(declare-fun e!296623 () Bool)

(assert (=> b!489976 (= e!296622 e!296623)))

(declare-fun c!97073 () Bool)

(assert (=> b!489976 (= c!97073 (is-Star!1174 (regOne!2860 r!20230)))))

(declare-fun bm!35034 () Bool)

(declare-fun c!97074 () Bool)

(assert (=> bm!35034 (= call!35039 (validRegex!402 (ite c!97073 (reg!1503 (regOne!2860 r!20230)) (ite c!97074 (regOne!2861 (regOne!2860 r!20230)) (regTwo!2860 (regOne!2860 r!20230))))))))

(declare-fun b!489977 () Bool)

(declare-fun res!213495 () Bool)

(declare-fun e!296627 () Bool)

(assert (=> b!489977 (=> (not res!213495) (not e!296627))))

(assert (=> b!489977 (= res!213495 call!35038)))

(assert (=> b!489977 (= e!296624 e!296627)))

(declare-fun b!489978 () Bool)

(assert (=> b!489978 (= e!296623 e!296624)))

(assert (=> b!489978 (= c!97074 (is-Union!1174 (regOne!2860 r!20230)))))

(declare-fun b!489979 () Bool)

(declare-fun e!296625 () Bool)

(assert (=> b!489979 (= e!296623 e!296625)))

(declare-fun res!213493 () Bool)

(assert (=> b!489979 (= res!213493 (not (nullable!309 (reg!1503 (regOne!2860 r!20230)))))))

(assert (=> b!489979 (=> (not res!213493) (not e!296625))))

(declare-fun bm!35032 () Bool)

(assert (=> bm!35032 (= call!35037 (validRegex!402 (ite c!97074 (regTwo!2861 (regOne!2860 r!20230)) (regOne!2860 (regOne!2860 r!20230)))))))

(declare-fun d!181466 () Bool)

(declare-fun res!213492 () Bool)

(assert (=> d!181466 (=> res!213492 e!296622)))

(assert (=> d!181466 (= res!213492 (is-ElementMatch!1174 (regOne!2860 r!20230)))))

(assert (=> d!181466 (= (validRegex!402 (regOne!2860 r!20230)) e!296622)))

(declare-fun b!489980 () Bool)

(assert (=> b!489980 (= e!296627 call!35037)))

(declare-fun b!489981 () Bool)

(assert (=> b!489981 (= e!296625 call!35039)))

(declare-fun b!489982 () Bool)

(assert (=> b!489982 (= e!296626 call!35038)))

(assert (= (and d!181466 (not res!213492)) b!489976))

(assert (= (and b!489976 c!97073) b!489979))

(assert (= (and b!489976 (not c!97073)) b!489978))

(assert (= (and b!489979 res!213493) b!489981))

(assert (= (and b!489978 c!97074) b!489977))

(assert (= (and b!489978 (not c!97074)) b!489974))

(assert (= (and b!489977 res!213495) b!489980))

(assert (= (and b!489974 (not res!213491)) b!489975))

(assert (= (and b!489975 res!213494) b!489982))

(assert (= (or b!489980 b!489975) bm!35032))

(assert (= (or b!489977 b!489982) bm!35033))

(assert (= (or b!489981 bm!35033) bm!35034))

(declare-fun m!751683 () Bool)

(assert (=> bm!35034 m!751683))

(declare-fun m!751685 () Bool)

(assert (=> b!489979 m!751685))

(declare-fun m!751687 () Bool)

(assert (=> bm!35032 m!751687))

(assert (=> b!489912 d!181466))

(declare-fun d!181468 () Bool)

(assert (=> d!181468 (= (lostCause!168 r!20230) (lostCauseFct!76 r!20230))))

(declare-fun bs!58983 () Bool)

(assert (= bs!58983 d!181468))

(declare-fun m!751689 () Bool)

(assert (=> bs!58983 m!751689))

(assert (=> b!489903 d!181468))

(declare-fun d!181470 () Bool)

(assert (=> d!181470 (= (lostCause!168 (regTwo!2860 r!20230)) (lostCauseFct!76 (regTwo!2860 r!20230)))))

(declare-fun bs!58984 () Bool)

(assert (= bs!58984 d!181470))

(declare-fun m!751691 () Bool)

(assert (=> bs!58984 m!751691))

(assert (=> b!489913 d!181470))

(declare-fun b!489994 () Bool)

(declare-fun e!296630 () Bool)

(declare-fun tp!142663 () Bool)

(declare-fun tp!142666 () Bool)

(assert (=> b!489994 (= e!296630 (and tp!142663 tp!142666))))

(declare-fun b!489993 () Bool)

(assert (=> b!489993 (= e!296630 tp_is_empty!2345)))

(declare-fun b!489995 () Bool)

(declare-fun tp!142664 () Bool)

(assert (=> b!489995 (= e!296630 tp!142664)))

(assert (=> b!489907 (= tp!142635 e!296630)))

(declare-fun b!489996 () Bool)

(declare-fun tp!142665 () Bool)

(declare-fun tp!142662 () Bool)

(assert (=> b!489996 (= e!296630 (and tp!142665 tp!142662))))

(assert (= (and b!489907 (is-ElementMatch!1174 (reg!1503 r!20230))) b!489993))

(assert (= (and b!489907 (is-Concat!2074 (reg!1503 r!20230))) b!489994))

(assert (= (and b!489907 (is-Star!1174 (reg!1503 r!20230))) b!489995))

(assert (= (and b!489907 (is-Union!1174 (reg!1503 r!20230))) b!489996))

(declare-fun b!489998 () Bool)

(declare-fun e!296631 () Bool)

(declare-fun tp!142668 () Bool)

(declare-fun tp!142671 () Bool)

(assert (=> b!489998 (= e!296631 (and tp!142668 tp!142671))))

(declare-fun b!489997 () Bool)

(assert (=> b!489997 (= e!296631 tp_is_empty!2345)))

(declare-fun b!489999 () Bool)

(declare-fun tp!142669 () Bool)

(assert (=> b!489999 (= e!296631 tp!142669)))

(assert (=> b!489906 (= tp!142636 e!296631)))

(declare-fun b!490000 () Bool)

(declare-fun tp!142670 () Bool)

(declare-fun tp!142667 () Bool)

(assert (=> b!490000 (= e!296631 (and tp!142670 tp!142667))))

(assert (= (and b!489906 (is-ElementMatch!1174 (regOne!2860 r!20230))) b!489997))

(assert (= (and b!489906 (is-Concat!2074 (regOne!2860 r!20230))) b!489998))

(assert (= (and b!489906 (is-Star!1174 (regOne!2860 r!20230))) b!489999))

(assert (= (and b!489906 (is-Union!1174 (regOne!2860 r!20230))) b!490000))

(declare-fun b!490002 () Bool)

(declare-fun e!296632 () Bool)

(declare-fun tp!142673 () Bool)

(declare-fun tp!142676 () Bool)

(assert (=> b!490002 (= e!296632 (and tp!142673 tp!142676))))

(declare-fun b!490001 () Bool)

(assert (=> b!490001 (= e!296632 tp_is_empty!2345)))

(declare-fun b!490003 () Bool)

(declare-fun tp!142674 () Bool)

(assert (=> b!490003 (= e!296632 tp!142674)))

(assert (=> b!489906 (= tp!142634 e!296632)))

(declare-fun b!490004 () Bool)

(declare-fun tp!142675 () Bool)

(declare-fun tp!142672 () Bool)

(assert (=> b!490004 (= e!296632 (and tp!142675 tp!142672))))

(assert (= (and b!489906 (is-ElementMatch!1174 (regTwo!2860 r!20230))) b!490001))

(assert (= (and b!489906 (is-Concat!2074 (regTwo!2860 r!20230))) b!490002))

(assert (= (and b!489906 (is-Star!1174 (regTwo!2860 r!20230))) b!490003))

(assert (= (and b!489906 (is-Union!1174 (regTwo!2860 r!20230))) b!490004))

(declare-fun b!490006 () Bool)

(declare-fun e!296633 () Bool)

(declare-fun tp!142678 () Bool)

(declare-fun tp!142681 () Bool)

(assert (=> b!490006 (= e!296633 (and tp!142678 tp!142681))))

(declare-fun b!490005 () Bool)

(assert (=> b!490005 (= e!296633 tp_is_empty!2345)))

(declare-fun b!490007 () Bool)

(declare-fun tp!142679 () Bool)

(assert (=> b!490007 (= e!296633 tp!142679)))

(assert (=> b!489904 (= tp!142632 e!296633)))

(declare-fun b!490008 () Bool)

(declare-fun tp!142680 () Bool)

(declare-fun tp!142677 () Bool)

(assert (=> b!490008 (= e!296633 (and tp!142680 tp!142677))))

(assert (= (and b!489904 (is-ElementMatch!1174 (regOne!2861 r!20230))) b!490005))

(assert (= (and b!489904 (is-Concat!2074 (regOne!2861 r!20230))) b!490006))

(assert (= (and b!489904 (is-Star!1174 (regOne!2861 r!20230))) b!490007))

(assert (= (and b!489904 (is-Union!1174 (regOne!2861 r!20230))) b!490008))

(declare-fun b!490010 () Bool)

(declare-fun e!296634 () Bool)

(declare-fun tp!142683 () Bool)

(declare-fun tp!142686 () Bool)

(assert (=> b!490010 (= e!296634 (and tp!142683 tp!142686))))

(declare-fun b!490009 () Bool)

(assert (=> b!490009 (= e!296634 tp_is_empty!2345)))

(declare-fun b!490011 () Bool)

(declare-fun tp!142684 () Bool)

(assert (=> b!490011 (= e!296634 tp!142684)))

(assert (=> b!489904 (= tp!142633 e!296634)))

(declare-fun b!490012 () Bool)

(declare-fun tp!142685 () Bool)

(declare-fun tp!142682 () Bool)

(assert (=> b!490012 (= e!296634 (and tp!142685 tp!142682))))

(assert (= (and b!489904 (is-ElementMatch!1174 (regTwo!2861 r!20230))) b!490009))

(assert (= (and b!489904 (is-Concat!2074 (regTwo!2861 r!20230))) b!490010))

(assert (= (and b!489904 (is-Star!1174 (regTwo!2861 r!20230))) b!490011))

(assert (= (and b!489904 (is-Union!1174 (regTwo!2861 r!20230))) b!490012))

(push 1)

(assert (not b!489999))

(assert (not b!490007))

(assert (not bm!35029))

(assert (not b!490008))

(assert (not bm!35034))

(assert tp_is_empty!2345)

(assert (not b!490004))

(assert (not b!490000))

(assert (not b!489998))

(assert (not d!181452))

(assert (not b!489994))

(assert (not bm!35031))

(assert (not d!181468))

(assert (not b!489995))

(assert (not b!490002))

(assert (not b!489970))

(assert (not b!490011))

(assert (not b!490010))

(assert (not b!489979))

(assert (not b!490006))

(assert (not bm!35032))

(assert (not b!490003))

(assert (not d!181470))

(assert (not d!181462))

(assert (not b!489996))

(assert (not b!490012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

