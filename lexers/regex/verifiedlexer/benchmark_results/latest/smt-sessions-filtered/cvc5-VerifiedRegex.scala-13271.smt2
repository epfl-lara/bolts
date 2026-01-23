; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722024 () Bool)

(assert start!722024)

(declare-fun b!7410245 () Bool)

(assert (=> b!7410245 true))

(declare-fun b!7410247 () Bool)

(declare-fun m!8045788 () Bool)

(assert (=> b!7410247 m!8045788))

(assert (=> b!7410247 true))

(assert (=> b!7410247 true))

(declare-fun b!7410244 () Bool)

(declare-fun res!2983115 () Bool)

(declare-fun e!4431974 () Bool)

(assert (=> b!7410244 (=> (not res!2983115) (not e!4431974))))

(declare-datatypes ((C!39106 0))(
  ( (C!39107 (val!29927 Int)) )
))
(declare-datatypes ((Regex!19416 0))(
  ( (ElementMatch!19416 (c!1375502 C!39106)) (Concat!28261 (regOne!39344 Regex!19416) (regTwo!39344 Regex!19416)) (EmptyExpr!19416) (Star!19416 (reg!19745 Regex!19416)) (EmptyLang!19416) (Union!19416 (regOne!39345 Regex!19416) (regTwo!39345 Regex!19416)) )
))
(declare-datatypes ((List!72034 0))(
  ( (Nil!71910) (Cons!71910 (h!78358 Regex!19416) (t!386593 List!72034)) )
))
(declare-datatypes ((Context!16712 0))(
  ( (Context!16713 (exprs!8856 List!72034)) )
))
(declare-fun c!10532 () Context!16712)

(declare-fun isEmpty!41066 (List!72034) Bool)

(assert (=> b!7410244 (= res!2983115 (not (isEmpty!41066 (exprs!8856 c!10532))))))

(declare-fun e!4431976 () Bool)

(declare-fun e!4431975 () Bool)

(assert (=> b!7410245 (= e!4431976 e!4431975)))

(declare-fun res!2983120 () Bool)

(assert (=> b!7410245 (=> (not res!2983120) (not e!4431975))))

(declare-fun lt!2619000 () Context!16712)

(declare-fun z!3451 () (Set Context!16712))

(declare-fun lambda!459986 () Int)

(declare-fun flatMap!3216 ((Set Context!16712) Int) (Set Context!16712))

(assert (=> b!7410245 (= res!2983120 (set.member lt!2619000 (flatMap!3216 z!3451 lambda!459986)))))

(declare-fun lt!2619001 () (Set Context!16712))

(declare-datatypes ((List!72035 0))(
  ( (Nil!71911) (Cons!71911 (h!78359 Context!16712) (t!386594 List!72035)) )
))
(declare-fun head!15224 (List!72035) Context!16712)

(declare-fun toList!11767 ((Set Context!16712)) List!72035)

(assert (=> b!7410245 (= lt!2619000 (head!15224 (toList!11767 lt!2619001)))))

(declare-fun b!7410246 () Bool)

(declare-fun res!2983119 () Bool)

(assert (=> b!7410246 (=> (not res!2983119) (not e!4431975))))

(assert (=> b!7410246 (= res!2983119 (set.member lt!2619000 lt!2619001))))

(declare-fun lambda!459987 () Int)

(declare-fun exists!4786 ((Set Context!16712) Int) Bool)

(assert (=> b!7410247 (= e!4431975 (not (not (exists!4786 z!3451 lambda!459987))))))

(declare-fun empty!3611 () Context!16712)

(declare-fun flatMapPost!223 ((Set Context!16712) Int Context!16712) Context!16712)

(assert (=> b!7410247 (= (flatMapPost!223 z!3451 lambda!459986 lt!2619000) empty!3611)))

(assert (=> b!7410247 true))

(declare-fun e!4431972 () Bool)

(declare-fun inv!91902 (Context!16712) Bool)

(assert (=> b!7410247 (and (inv!91902 empty!3611) e!4431972)))

(declare-fun b!7410248 () Bool)

(assert (=> b!7410248 (= e!4431974 e!4431976)))

(declare-fun res!2983114 () Bool)

(assert (=> b!7410248 (=> (not res!2983114) (not e!4431976))))

(declare-datatypes ((List!72036 0))(
  ( (Nil!71912) (Cons!71912 (h!78360 C!39106) (t!386595 List!72036)) )
))
(declare-fun s!7927 () List!72036)

(declare-fun derivationStepZipperUp!2820 (Context!16712 C!39106) (Set Context!16712))

(assert (=> b!7410248 (= res!2983114 (= (derivationStepZipperUp!2820 c!10532 (h!78360 s!7927)) (as set.empty (Set Context!16712))))))

(declare-fun derivationStepZipper!3690 ((Set Context!16712) C!39106) (Set Context!16712))

(assert (=> b!7410248 (= lt!2619001 (derivationStepZipper!3690 z!3451 (h!78360 s!7927)))))

(declare-fun b!7410249 () Bool)

(declare-fun res!2983113 () Bool)

(assert (=> b!7410249 (=> (not res!2983113) (not e!4431976))))

(assert (=> b!7410249 (= res!2983113 (not (= lt!2619001 (as set.empty (Set Context!16712)))))))

(declare-fun b!7410250 () Bool)

(declare-fun e!4431970 () Bool)

(declare-fun tp!2120235 () Bool)

(assert (=> b!7410250 (= e!4431970 tp!2120235)))

(declare-fun b!7410251 () Bool)

(declare-fun res!2983118 () Bool)

(assert (=> b!7410251 (=> (not res!2983118) (not e!4431974))))

(declare-fun tail!14831 (List!72034) List!72034)

(assert (=> b!7410251 (= res!2983118 (isEmpty!41066 (tail!14831 (exprs!8856 c!10532))))))

(declare-fun b!7410252 () Bool)

(declare-fun res!2983121 () Bool)

(assert (=> b!7410252 (=> (not res!2983121) (not e!4431974))))

(declare-fun a!2228 () C!39106)

(assert (=> b!7410252 (= res!2983121 (and (or (not (is-Cons!71912 s!7927)) (not (= (h!78360 s!7927) a!2228))) (is-Cons!71912 s!7927) (not (= (h!78360 s!7927) a!2228))))))

(declare-fun res!2983116 () Bool)

(assert (=> start!722024 (=> (not res!2983116) (not e!4431974))))

(assert (=> start!722024 (= res!2983116 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16712)))))))

(assert (=> start!722024 e!4431974))

(declare-fun condSetEmpty!56306 () Bool)

(assert (=> start!722024 (= condSetEmpty!56306 (= z!3451 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56306 () Bool)

(assert (=> start!722024 setRes!56306))

(assert (=> start!722024 (and (inv!91902 c!10532) e!4431970)))

(declare-fun tp_is_empty!49095 () Bool)

(assert (=> start!722024 tp_is_empty!49095))

(declare-fun e!4431971 () Bool)

(assert (=> start!722024 e!4431971))

(declare-fun setIsEmpty!56306 () Bool)

(assert (=> setIsEmpty!56306 setRes!56306))

(declare-fun b!7410253 () Bool)

(declare-fun tp!2120231 () Bool)

(assert (=> b!7410253 (= e!4431972 tp!2120231)))

(declare-fun b!7410254 () Bool)

(declare-fun tp!2120234 () Bool)

(assert (=> b!7410254 (= e!4431971 (and tp_is_empty!49095 tp!2120234))))

(declare-fun b!7410255 () Bool)

(declare-fun res!2983117 () Bool)

(assert (=> b!7410255 (=> (not res!2983117) (not e!4431974))))

(declare-fun head!15225 (List!72034) Regex!19416)

(assert (=> b!7410255 (= res!2983117 (= (head!15225 (exprs!8856 c!10532)) (ElementMatch!19416 a!2228)))))

(declare-fun e!4431973 () Bool)

(declare-fun setNonEmpty!56306 () Bool)

(declare-fun setElem!56306 () Context!16712)

(declare-fun tp!2120232 () Bool)

(assert (=> setNonEmpty!56306 (= setRes!56306 (and tp!2120232 (inv!91902 setElem!56306) e!4431973))))

(declare-fun setRest!56306 () (Set Context!16712))

(assert (=> setNonEmpty!56306 (= z!3451 (set.union (set.insert setElem!56306 (as set.empty (Set Context!16712))) setRest!56306))))

(declare-fun b!7410256 () Bool)

(declare-fun tp!2120233 () Bool)

(assert (=> b!7410256 (= e!4431973 tp!2120233)))

(assert (= (and start!722024 res!2983116) b!7410244))

(assert (= (and b!7410244 res!2983115) b!7410255))

(assert (= (and b!7410255 res!2983117) b!7410251))

(assert (= (and b!7410251 res!2983118) b!7410252))

(assert (= (and b!7410252 res!2983121) b!7410248))

(assert (= (and b!7410248 res!2983114) b!7410249))

(assert (= (and b!7410249 res!2983113) b!7410245))

(assert (= (and b!7410245 res!2983120) b!7410246))

(assert (= (and b!7410246 res!2983119) b!7410247))

(assert (= b!7410247 b!7410253))

(assert (= (and start!722024 condSetEmpty!56306) setIsEmpty!56306))

(assert (= (and start!722024 (not condSetEmpty!56306)) setNonEmpty!56306))

(assert (= setNonEmpty!56306 b!7410256))

(assert (= start!722024 b!7410250))

(assert (= (and start!722024 (is-Cons!71912 s!7927)) b!7410254))

(declare-fun m!8045790 () Bool)

(assert (=> b!7410248 m!8045790))

(declare-fun m!8045792 () Bool)

(assert (=> b!7410248 m!8045792))

(declare-fun m!8045794 () Bool)

(assert (=> setNonEmpty!56306 m!8045794))

(declare-fun m!8045796 () Bool)

(assert (=> b!7410255 m!8045796))

(declare-fun m!8045798 () Bool)

(assert (=> b!7410251 m!8045798))

(assert (=> b!7410251 m!8045798))

(declare-fun m!8045800 () Bool)

(assert (=> b!7410251 m!8045800))

(declare-fun m!8045802 () Bool)

(assert (=> b!7410244 m!8045802))

(declare-fun m!8045804 () Bool)

(assert (=> b!7410247 m!8045804))

(declare-fun m!8045806 () Bool)

(assert (=> b!7410247 m!8045806))

(declare-fun m!8045808 () Bool)

(assert (=> b!7410247 m!8045808))

(declare-fun m!8045810 () Bool)

(assert (=> b!7410245 m!8045810))

(declare-fun m!8045812 () Bool)

(assert (=> b!7410245 m!8045812))

(declare-fun m!8045814 () Bool)

(assert (=> b!7410245 m!8045814))

(assert (=> b!7410245 m!8045814))

(declare-fun m!8045816 () Bool)

(assert (=> b!7410245 m!8045816))

(declare-fun m!8045818 () Bool)

(assert (=> start!722024 m!8045818))

(declare-fun m!8045820 () Bool)

(assert (=> start!722024 m!8045820))

(declare-fun m!8045822 () Bool)

(assert (=> b!7410246 m!8045822))

(push 1)

(assert (not b!7410244))

(assert (not b!7410254))

(assert tp_is_empty!49095)

(assert (not b!7410255))

(assert (not b!7410251))

(assert (not b!7410247))

(assert (not start!722024))

(assert (not setNonEmpty!56306))

(assert (not b!7410256))

(assert (not b!7410248))

(assert (not b!7410253))

(assert (not b!7410250))

(assert (not b!7410245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291900 () Bool)

(declare-fun head!15228 (List!72036) C!39106)

(assert (=> d!2291900 (= (head!15228 s!7927) (h!78360 s!7927))))

(assert (=> b!7410247 d!2291900))

(declare-fun d!2291902 () Bool)

(declare-fun lt!2619010 () Bool)

(declare-fun exists!4788 (List!72035 Int) Bool)

(assert (=> d!2291902 (= lt!2619010 (exists!4788 (toList!11767 z!3451) lambda!459987))))

(declare-fun choose!57477 ((Set Context!16712) Int) Bool)

(assert (=> d!2291902 (= lt!2619010 (choose!57477 z!3451 lambda!459987))))

(assert (=> d!2291902 (= (exists!4786 z!3451 lambda!459987) lt!2619010)))

(declare-fun bs!1924599 () Bool)

(assert (= bs!1924599 d!2291902))

(declare-fun m!8045860 () Bool)

(assert (=> bs!1924599 m!8045860))

(assert (=> bs!1924599 m!8045860))

(declare-fun m!8045862 () Bool)

(assert (=> bs!1924599 m!8045862))

(declare-fun m!8045864 () Bool)

(assert (=> bs!1924599 m!8045864))

(assert (=> b!7410247 d!2291902))

(declare-fun bs!1924600 () Bool)

(declare-fun d!2291904 () Bool)

(assert (= bs!1924600 (and d!2291904 b!7410247)))

(declare-fun lambda!459996 () Int)

(assert (=> bs!1924600 (not (= lambda!459996 lambda!459987))))

(assert (=> d!2291904 true))

(assert (=> d!2291904 true))

(declare-fun order!29553 () Int)

(declare-fun order!29555 () Int)

(declare-fun dynLambda!29684 (Int Int) Int)

(declare-fun dynLambda!29685 (Int Int) Int)

(assert (=> d!2291904 (< (dynLambda!29684 order!29553 lambda!459986) (dynLambda!29685 order!29555 lambda!459996))))

(assert (=> d!2291904 (= (set.member lt!2619000 (flatMap!3216 z!3451 lambda!459986)) (exists!4786 z!3451 lambda!459996))))

(declare-fun lt!2619013 () Context!16712)

(declare-fun choose!57478 ((Set Context!16712) Int Context!16712) Context!16712)

(assert (=> d!2291904 (= lt!2619013 (choose!57478 z!3451 lambda!459986 lt!2619000))))

(assert (=> d!2291904 (= (flatMapPost!223 z!3451 lambda!459986 lt!2619000) lt!2619013)))

(declare-fun bs!1924601 () Bool)

(assert (= bs!1924601 d!2291904))

(assert (=> bs!1924601 m!8045810))

(assert (=> bs!1924601 m!8045812))

(declare-fun m!8045866 () Bool)

(assert (=> bs!1924601 m!8045866))

(declare-fun m!8045868 () Bool)

(assert (=> bs!1924601 m!8045868))

(assert (=> b!7410247 d!2291904))

(declare-fun d!2291906 () Bool)

(declare-fun lambda!459999 () Int)

(declare-fun forall!18200 (List!72034 Int) Bool)

(assert (=> d!2291906 (= (inv!91902 empty!3611) (forall!18200 (exprs!8856 empty!3611) lambda!459999))))

(declare-fun bs!1924602 () Bool)

(assert (= bs!1924602 d!2291906))

(declare-fun m!8045870 () Bool)

(assert (=> bs!1924602 m!8045870))

(assert (=> b!7410247 d!2291906))

(declare-fun bs!1924603 () Bool)

(declare-fun d!2291908 () Bool)

(assert (= bs!1924603 (and d!2291908 d!2291906)))

(declare-fun lambda!460000 () Int)

(assert (=> bs!1924603 (= lambda!460000 lambda!459999)))

(assert (=> d!2291908 (= (inv!91902 setElem!56306) (forall!18200 (exprs!8856 setElem!56306) lambda!460000))))

(declare-fun bs!1924604 () Bool)

(assert (= bs!1924604 d!2291908))

(declare-fun m!8045872 () Bool)

(assert (=> bs!1924604 m!8045872))

(assert (=> setNonEmpty!56306 d!2291908))

(declare-fun bs!1924605 () Bool)

(declare-fun d!2291910 () Bool)

(assert (= bs!1924605 (and d!2291910 d!2291906)))

(declare-fun lambda!460001 () Int)

(assert (=> bs!1924605 (= lambda!460001 lambda!459999)))

(declare-fun bs!1924606 () Bool)

(assert (= bs!1924606 (and d!2291910 d!2291908)))

(assert (=> bs!1924606 (= lambda!460001 lambda!460000)))

(assert (=> d!2291910 (= (inv!91902 c!10532) (forall!18200 (exprs!8856 c!10532) lambda!460001))))

(declare-fun bs!1924607 () Bool)

(assert (= bs!1924607 d!2291910))

(declare-fun m!8045874 () Bool)

(assert (=> bs!1924607 m!8045874))

(assert (=> start!722024 d!2291910))

(declare-fun d!2291912 () Bool)

(assert (=> d!2291912 (= (isEmpty!41066 (tail!14831 (exprs!8856 c!10532))) (is-Nil!71910 (tail!14831 (exprs!8856 c!10532))))))

(assert (=> b!7410251 d!2291912))

(declare-fun d!2291914 () Bool)

(assert (=> d!2291914 (= (tail!14831 (exprs!8856 c!10532)) (t!386593 (exprs!8856 c!10532)))))

(assert (=> b!7410251 d!2291914))

(declare-fun d!2291916 () Bool)

(declare-fun choose!57479 ((Set Context!16712) Int) (Set Context!16712))

(assert (=> d!2291916 (= (flatMap!3216 z!3451 lambda!459986) (choose!57479 z!3451 lambda!459986))))

(declare-fun bs!1924608 () Bool)

(assert (= bs!1924608 d!2291916))

(declare-fun m!8045876 () Bool)

(assert (=> bs!1924608 m!8045876))

(assert (=> b!7410245 d!2291916))

(declare-fun d!2291918 () Bool)

(assert (=> d!2291918 (= (head!15224 (toList!11767 lt!2619001)) (h!78359 (toList!11767 lt!2619001)))))

(assert (=> b!7410245 d!2291918))

(declare-fun d!2291920 () Bool)

(declare-fun e!4432000 () Bool)

(assert (=> d!2291920 e!4432000))

(declare-fun res!2983151 () Bool)

(assert (=> d!2291920 (=> (not res!2983151) (not e!4432000))))

(declare-fun lt!2619016 () List!72035)

(declare-fun noDuplicate!3109 (List!72035) Bool)

(assert (=> d!2291920 (= res!2983151 (noDuplicate!3109 lt!2619016))))

(declare-fun choose!57480 ((Set Context!16712)) List!72035)

(assert (=> d!2291920 (= lt!2619016 (choose!57480 lt!2619001))))

(assert (=> d!2291920 (= (toList!11767 lt!2619001) lt!2619016)))

(declare-fun b!7410313 () Bool)

(declare-fun content!15221 (List!72035) (Set Context!16712))

(assert (=> b!7410313 (= e!4432000 (= (content!15221 lt!2619016) lt!2619001))))

(assert (= (and d!2291920 res!2983151) b!7410313))

(declare-fun m!8045878 () Bool)

(assert (=> d!2291920 m!8045878))

(declare-fun m!8045880 () Bool)

(assert (=> d!2291920 m!8045880))

(declare-fun m!8045882 () Bool)

(assert (=> b!7410313 m!8045882))

(assert (=> b!7410245 d!2291920))

(declare-fun d!2291922 () Bool)

(assert (=> d!2291922 (= (head!15225 (exprs!8856 c!10532)) (h!78358 (exprs!8856 c!10532)))))

(assert (=> b!7410255 d!2291922))

(declare-fun d!2291924 () Bool)

(assert (=> d!2291924 (= (isEmpty!41066 (exprs!8856 c!10532)) (is-Nil!71910 (exprs!8856 c!10532)))))

(assert (=> b!7410244 d!2291924))

(declare-fun b!7410324 () Bool)

(declare-fun e!4432008 () (Set Context!16712))

(assert (=> b!7410324 (= e!4432008 (as set.empty (Set Context!16712)))))

(declare-fun b!7410325 () Bool)

(declare-fun e!4432007 () (Set Context!16712))

(assert (=> b!7410325 (= e!4432007 e!4432008)))

(declare-fun c!1375508 () Bool)

(assert (=> b!7410325 (= c!1375508 (is-Cons!71910 (exprs!8856 c!10532)))))

(declare-fun b!7410326 () Bool)

(declare-fun e!4432009 () Bool)

(declare-fun nullable!8460 (Regex!19416) Bool)

(assert (=> b!7410326 (= e!4432009 (nullable!8460 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410327 () Bool)

(declare-fun call!682251 () (Set Context!16712))

(assert (=> b!7410327 (= e!4432008 call!682251)))

(declare-fun b!7410328 () Bool)

(assert (=> b!7410328 (= e!4432007 (set.union call!682251 (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 c!10532))) (h!78360 s!7927))))))

(declare-fun bm!682246 () Bool)

(declare-fun derivationStepZipperDown!3212 (Regex!19416 Context!16712 C!39106) (Set Context!16712))

(assert (=> bm!682246 (= call!682251 (derivationStepZipperDown!3212 (h!78358 (exprs!8856 c!10532)) (Context!16713 (t!386593 (exprs!8856 c!10532))) (h!78360 s!7927)))))

(declare-fun d!2291926 () Bool)

(declare-fun c!1375509 () Bool)

(assert (=> d!2291926 (= c!1375509 e!4432009)))

(declare-fun res!2983154 () Bool)

(assert (=> d!2291926 (=> (not res!2983154) (not e!4432009))))

(assert (=> d!2291926 (= res!2983154 (is-Cons!71910 (exprs!8856 c!10532)))))

(assert (=> d!2291926 (= (derivationStepZipperUp!2820 c!10532 (h!78360 s!7927)) e!4432007)))

(assert (= (and d!2291926 res!2983154) b!7410326))

(assert (= (and d!2291926 c!1375509) b!7410328))

(assert (= (and d!2291926 (not c!1375509)) b!7410325))

(assert (= (and b!7410325 c!1375508) b!7410327))

(assert (= (and b!7410325 (not c!1375508)) b!7410324))

(assert (= (or b!7410328 b!7410327) bm!682246))

(declare-fun m!8045884 () Bool)

(assert (=> b!7410326 m!8045884))

(declare-fun m!8045886 () Bool)

(assert (=> b!7410328 m!8045886))

(declare-fun m!8045888 () Bool)

(assert (=> bm!682246 m!8045888))

(assert (=> b!7410248 d!2291926))

(declare-fun bs!1924609 () Bool)

(declare-fun d!2291930 () Bool)

(assert (= bs!1924609 (and d!2291930 b!7410245)))

(declare-fun lambda!460004 () Int)

(assert (=> bs!1924609 (= lambda!460004 lambda!459986)))

(assert (=> d!2291930 true))

(assert (=> d!2291930 (= (derivationStepZipper!3690 z!3451 (h!78360 s!7927)) (flatMap!3216 z!3451 lambda!460004))))

(declare-fun bs!1924610 () Bool)

(assert (= bs!1924610 d!2291930))

(declare-fun m!8045890 () Bool)

(assert (=> bs!1924610 m!8045890))

(assert (=> b!7410248 d!2291930))

(declare-fun b!7410335 () Bool)

(declare-fun e!4432012 () Bool)

(declare-fun tp!2120255 () Bool)

(declare-fun tp!2120256 () Bool)

(assert (=> b!7410335 (= e!4432012 (and tp!2120255 tp!2120256))))

(assert (=> b!7410256 (= tp!2120233 e!4432012)))

(assert (= (and b!7410256 (is-Cons!71910 (exprs!8856 setElem!56306))) b!7410335))

(declare-fun condSetEmpty!56312 () Bool)

(assert (=> setNonEmpty!56306 (= condSetEmpty!56312 (= setRest!56306 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56312 () Bool)

(assert (=> setNonEmpty!56306 (= tp!2120232 setRes!56312)))

(declare-fun setIsEmpty!56312 () Bool)

(assert (=> setIsEmpty!56312 setRes!56312))

(declare-fun e!4432015 () Bool)

(declare-fun setElem!56312 () Context!16712)

(declare-fun tp!2120262 () Bool)

(declare-fun setNonEmpty!56312 () Bool)

(assert (=> setNonEmpty!56312 (= setRes!56312 (and tp!2120262 (inv!91902 setElem!56312) e!4432015))))

(declare-fun setRest!56312 () (Set Context!16712))

(assert (=> setNonEmpty!56312 (= setRest!56306 (set.union (set.insert setElem!56312 (as set.empty (Set Context!16712))) setRest!56312))))

(declare-fun b!7410340 () Bool)

(declare-fun tp!2120261 () Bool)

(assert (=> b!7410340 (= e!4432015 tp!2120261)))

(assert (= (and setNonEmpty!56306 condSetEmpty!56312) setIsEmpty!56312))

(assert (= (and setNonEmpty!56306 (not condSetEmpty!56312)) setNonEmpty!56312))

(assert (= setNonEmpty!56312 b!7410340))

(declare-fun m!8045892 () Bool)

(assert (=> setNonEmpty!56312 m!8045892))

(declare-fun b!7410345 () Bool)

(declare-fun e!4432018 () Bool)

(declare-fun tp!2120265 () Bool)

(assert (=> b!7410345 (= e!4432018 (and tp_is_empty!49095 tp!2120265))))

(assert (=> b!7410254 (= tp!2120234 e!4432018)))

(assert (= (and b!7410254 (is-Cons!71912 (t!386595 s!7927))) b!7410345))

(declare-fun b!7410346 () Bool)

(declare-fun e!4432019 () Bool)

(declare-fun tp!2120266 () Bool)

(declare-fun tp!2120267 () Bool)

(assert (=> b!7410346 (= e!4432019 (and tp!2120266 tp!2120267))))

(assert (=> b!7410250 (= tp!2120235 e!4432019)))

(assert (= (and b!7410250 (is-Cons!71910 (exprs!8856 c!10532))) b!7410346))

(declare-fun b!7410347 () Bool)

(declare-fun e!4432020 () Bool)

(declare-fun tp!2120268 () Bool)

(declare-fun tp!2120269 () Bool)

(assert (=> b!7410347 (= e!4432020 (and tp!2120268 tp!2120269))))

(assert (=> b!7410253 (= tp!2120231 e!4432020)))

(assert (= (and b!7410253 (is-Cons!71910 (exprs!8856 empty!3611))) b!7410347))

(push 1)

(assert (not d!2291908))

(assert (not d!2291916))

(assert tp_is_empty!49095)

(assert (not d!2291910))

(assert (not d!2291906))

(assert (not b!7410345))

(assert (not b!7410326))

(assert (not b!7410313))

(assert (not d!2291902))

(assert (not b!7410335))

(assert (not b!7410340))

(assert (not b!7410346))

(assert (not d!2291930))

(assert (not bm!682246))

(assert (not setNonEmpty!56312))

(assert (not d!2291904))

(assert (not b!7410328))

(assert (not b!7410347))

(assert (not d!2291920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291950 () Bool)

(declare-fun res!2983165 () Bool)

(declare-fun e!4432037 () Bool)

(assert (=> d!2291950 (=> res!2983165 e!4432037)))

(assert (=> d!2291950 (= res!2983165 (is-Nil!71910 (exprs!8856 c!10532)))))

(assert (=> d!2291950 (= (forall!18200 (exprs!8856 c!10532) lambda!460001) e!4432037)))

(declare-fun b!7410375 () Bool)

(declare-fun e!4432038 () Bool)

(assert (=> b!7410375 (= e!4432037 e!4432038)))

(declare-fun res!2983166 () Bool)

(assert (=> b!7410375 (=> (not res!2983166) (not e!4432038))))

(declare-fun dynLambda!29688 (Int Regex!19416) Bool)

(assert (=> b!7410375 (= res!2983166 (dynLambda!29688 lambda!460001 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410376 () Bool)

(assert (=> b!7410376 (= e!4432038 (forall!18200 (t!386593 (exprs!8856 c!10532)) lambda!460001))))

(assert (= (and d!2291950 (not res!2983165)) b!7410375))

(assert (= (and b!7410375 res!2983166) b!7410376))

(declare-fun b_lambda!286599 () Bool)

(assert (=> (not b_lambda!286599) (not b!7410375)))

(declare-fun m!8045922 () Bool)

(assert (=> b!7410375 m!8045922))

(declare-fun m!8045924 () Bool)

(assert (=> b!7410376 m!8045924))

(assert (=> d!2291910 d!2291950))

(declare-fun d!2291956 () Bool)

(declare-fun res!2983171 () Bool)

(declare-fun e!4432043 () Bool)

(assert (=> d!2291956 (=> res!2983171 e!4432043)))

(assert (=> d!2291956 (= res!2983171 (is-Nil!71911 lt!2619016))))

(assert (=> d!2291956 (= (noDuplicate!3109 lt!2619016) e!4432043)))

(declare-fun b!7410381 () Bool)

(declare-fun e!4432044 () Bool)

(assert (=> b!7410381 (= e!4432043 e!4432044)))

(declare-fun res!2983172 () Bool)

(assert (=> b!7410381 (=> (not res!2983172) (not e!4432044))))

(declare-fun contains!20851 (List!72035 Context!16712) Bool)

(assert (=> b!7410381 (= res!2983172 (not (contains!20851 (t!386594 lt!2619016) (h!78359 lt!2619016))))))

(declare-fun b!7410382 () Bool)

(assert (=> b!7410382 (= e!4432044 (noDuplicate!3109 (t!386594 lt!2619016)))))

(assert (= (and d!2291956 (not res!2983171)) b!7410381))

(assert (= (and b!7410381 res!2983172) b!7410382))

(declare-fun m!8045926 () Bool)

(assert (=> b!7410381 m!8045926))

(declare-fun m!8045928 () Bool)

(assert (=> b!7410382 m!8045928))

(assert (=> d!2291920 d!2291956))

(declare-fun d!2291962 () Bool)

(declare-fun e!4432053 () Bool)

(assert (=> d!2291962 e!4432053))

(declare-fun res!2983177 () Bool)

(assert (=> d!2291962 (=> (not res!2983177) (not e!4432053))))

(declare-fun res!2983178 () List!72035)

(assert (=> d!2291962 (= res!2983177 (noDuplicate!3109 res!2983178))))

(declare-fun e!4432054 () Bool)

(assert (=> d!2291962 e!4432054))

(assert (=> d!2291962 (= (choose!57480 lt!2619001) res!2983178)))

(declare-fun b!7410394 () Bool)

(declare-fun e!4432055 () Bool)

(declare-fun tp!2120279 () Bool)

(assert (=> b!7410394 (= e!4432055 tp!2120279)))

(declare-fun b!7410393 () Bool)

(declare-fun tp!2120278 () Bool)

(assert (=> b!7410393 (= e!4432054 (and (inv!91902 (h!78359 res!2983178)) e!4432055 tp!2120278))))

(declare-fun b!7410395 () Bool)

(assert (=> b!7410395 (= e!4432053 (= (content!15221 res!2983178) lt!2619001))))

(assert (= b!7410393 b!7410394))

(assert (= (and d!2291962 (is-Cons!71911 res!2983178)) b!7410393))

(assert (= (and d!2291962 res!2983177) b!7410395))

(declare-fun m!8045934 () Bool)

(assert (=> d!2291962 m!8045934))

(declare-fun m!8045936 () Bool)

(assert (=> b!7410393 m!8045936))

(declare-fun m!8045938 () Bool)

(assert (=> b!7410395 m!8045938))

(assert (=> d!2291920 d!2291962))

(declare-fun bs!1924623 () Bool)

(declare-fun d!2291966 () Bool)

(assert (= bs!1924623 (and d!2291966 b!7410247)))

(declare-fun lambda!460018 () Int)

(assert (=> bs!1924623 (not (= lambda!460018 lambda!459987))))

(declare-fun bs!1924624 () Bool)

(assert (= bs!1924624 (and d!2291966 d!2291904)))

(assert (=> bs!1924624 (not (= lambda!460018 lambda!459996))))

(assert (=> d!2291966 true))

(assert (=> d!2291966 (< (dynLambda!29685 order!29555 lambda!459987) (dynLambda!29685 order!29555 lambda!460018))))

(declare-fun forall!18202 (List!72035 Int) Bool)

(assert (=> d!2291966 (= (exists!4788 (toList!11767 z!3451) lambda!459987) (not (forall!18202 (toList!11767 z!3451) lambda!460018)))))

(declare-fun bs!1924625 () Bool)

(assert (= bs!1924625 d!2291966))

(assert (=> bs!1924625 m!8045860))

(declare-fun m!8045940 () Bool)

(assert (=> bs!1924625 m!8045940))

(assert (=> d!2291902 d!2291966))

(declare-fun d!2291968 () Bool)

(declare-fun e!4432062 () Bool)

(assert (=> d!2291968 e!4432062))

(declare-fun res!2983179 () Bool)

(assert (=> d!2291968 (=> (not res!2983179) (not e!4432062))))

(declare-fun lt!2619026 () List!72035)

(assert (=> d!2291968 (= res!2983179 (noDuplicate!3109 lt!2619026))))

(assert (=> d!2291968 (= lt!2619026 (choose!57480 z!3451))))

(assert (=> d!2291968 (= (toList!11767 z!3451) lt!2619026)))

(declare-fun b!7410408 () Bool)

(assert (=> b!7410408 (= e!4432062 (= (content!15221 lt!2619026) z!3451))))

(assert (= (and d!2291968 res!2983179) b!7410408))

(declare-fun m!8045942 () Bool)

(assert (=> d!2291968 m!8045942))

(declare-fun m!8045944 () Bool)

(assert (=> d!2291968 m!8045944))

(declare-fun m!8045946 () Bool)

(assert (=> b!7410408 m!8045946))

(assert (=> d!2291902 d!2291968))

(declare-fun d!2291970 () Bool)

(declare-fun res!2983182 () Bool)

(assert (=> d!2291970 (= res!2983182 (exists!4788 (toList!11767 z!3451) lambda!459987))))

(assert (=> d!2291970 true))

(assert (=> d!2291970 (= (choose!57477 z!3451 lambda!459987) res!2983182)))

(declare-fun bs!1924626 () Bool)

(assert (= bs!1924626 d!2291970))

(assert (=> bs!1924626 m!8045860))

(assert (=> bs!1924626 m!8045860))

(assert (=> bs!1924626 m!8045862))

(assert (=> d!2291902 d!2291970))

(declare-fun d!2291972 () Bool)

(declare-fun res!2983183 () Bool)

(declare-fun e!4432064 () Bool)

(assert (=> d!2291972 (=> res!2983183 e!4432064)))

(assert (=> d!2291972 (= res!2983183 (is-Nil!71910 (exprs!8856 setElem!56306)))))

(assert (=> d!2291972 (= (forall!18200 (exprs!8856 setElem!56306) lambda!460000) e!4432064)))

(declare-fun b!7410410 () Bool)

(declare-fun e!4432065 () Bool)

(assert (=> b!7410410 (= e!4432064 e!4432065)))

(declare-fun res!2983184 () Bool)

(assert (=> b!7410410 (=> (not res!2983184) (not e!4432065))))

(assert (=> b!7410410 (= res!2983184 (dynLambda!29688 lambda!460000 (h!78358 (exprs!8856 setElem!56306))))))

(declare-fun b!7410411 () Bool)

(assert (=> b!7410411 (= e!4432065 (forall!18200 (t!386593 (exprs!8856 setElem!56306)) lambda!460000))))

(assert (= (and d!2291972 (not res!2983183)) b!7410410))

(assert (= (and b!7410410 res!2983184) b!7410411))

(declare-fun b_lambda!286601 () Bool)

(assert (=> (not b_lambda!286601) (not b!7410410)))

(declare-fun m!8045948 () Bool)

(assert (=> b!7410410 m!8045948))

(declare-fun m!8045950 () Bool)

(assert (=> b!7410411 m!8045950))

(assert (=> d!2291908 d!2291972))

(declare-fun d!2291974 () Bool)

(assert (=> d!2291974 true))

(declare-fun setRes!56318 () Bool)

(assert (=> d!2291974 setRes!56318))

(declare-fun condSetEmpty!56318 () Bool)

(declare-fun res!2983187 () (Set Context!16712))

(assert (=> d!2291974 (= condSetEmpty!56318 (= res!2983187 (as set.empty (Set Context!16712))))))

(assert (=> d!2291974 (= (choose!57479 z!3451 lambda!459986) res!2983187)))

(declare-fun setIsEmpty!56318 () Bool)

(assert (=> setIsEmpty!56318 setRes!56318))

(declare-fun e!4432070 () Bool)

(declare-fun setNonEmpty!56318 () Bool)

(declare-fun setElem!56318 () Context!16712)

(declare-fun tp!2120300 () Bool)

(assert (=> setNonEmpty!56318 (= setRes!56318 (and tp!2120300 (inv!91902 setElem!56318) e!4432070))))

(declare-fun setRest!56318 () (Set Context!16712))

(assert (=> setNonEmpty!56318 (= res!2983187 (set.union (set.insert setElem!56318 (as set.empty (Set Context!16712))) setRest!56318))))

(declare-fun b!7410416 () Bool)

(declare-fun tp!2120299 () Bool)

(assert (=> b!7410416 (= e!4432070 tp!2120299)))

(assert (= (and d!2291974 condSetEmpty!56318) setIsEmpty!56318))

(assert (= (and d!2291974 (not condSetEmpty!56318)) setNonEmpty!56318))

(assert (= setNonEmpty!56318 b!7410416))

(declare-fun m!8045954 () Bool)

(assert (=> setNonEmpty!56318 m!8045954))

(assert (=> d!2291916 d!2291974))

(declare-fun b!7410417 () Bool)

(declare-fun e!4432072 () (Set Context!16712))

(assert (=> b!7410417 (= e!4432072 (as set.empty (Set Context!16712)))))

(declare-fun b!7410418 () Bool)

(declare-fun e!4432071 () (Set Context!16712))

(assert (=> b!7410418 (= e!4432071 e!4432072)))

(declare-fun c!1375520 () Bool)

(assert (=> b!7410418 (= c!1375520 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))

(declare-fun b!7410419 () Bool)

(declare-fun e!4432073 () Bool)

(assert (=> b!7410419 (= e!4432073 (nullable!8460 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun b!7410420 () Bool)

(declare-fun call!682255 () (Set Context!16712))

(assert (=> b!7410420 (= e!4432072 call!682255)))

(declare-fun b!7410421 () Bool)

(assert (=> b!7410421 (= e!4432071 (set.union call!682255 (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78360 s!7927))))))

(declare-fun bm!682250 () Bool)

(assert (=> bm!682250 (= call!682255 (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78360 s!7927)))))

(declare-fun d!2291976 () Bool)

(declare-fun c!1375521 () Bool)

(assert (=> d!2291976 (= c!1375521 e!4432073)))

(declare-fun res!2983188 () Bool)

(assert (=> d!2291976 (=> (not res!2983188) (not e!4432073))))

(assert (=> d!2291976 (= res!2983188 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))

(assert (=> d!2291976 (= (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 c!10532))) (h!78360 s!7927)) e!4432071)))

(assert (= (and d!2291976 res!2983188) b!7410419))

(assert (= (and d!2291976 c!1375521) b!7410421))

(assert (= (and d!2291976 (not c!1375521)) b!7410418))

(assert (= (and b!7410418 c!1375520) b!7410420))

(assert (= (and b!7410418 (not c!1375520)) b!7410417))

(assert (= (or b!7410421 b!7410420) bm!682250))

(declare-fun m!8045956 () Bool)

(assert (=> b!7410419 m!8045956))

(declare-fun m!8045958 () Bool)

(assert (=> b!7410421 m!8045958))

(declare-fun m!8045960 () Bool)

(assert (=> bm!682250 m!8045960))

(assert (=> b!7410328 d!2291976))

(declare-fun call!682272 () (Set Context!16712))

(declare-fun c!1375534 () Bool)

(declare-fun call!682269 () List!72034)

(declare-fun bm!682263 () Bool)

(assert (=> bm!682263 (= call!682272 (derivationStepZipperDown!3212 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (h!78360 s!7927)))))

(declare-fun b!7410444 () Bool)

(declare-fun e!4432090 () (Set Context!16712))

(declare-fun call!682270 () (Set Context!16712))

(assert (=> b!7410444 (= e!4432090 (set.union call!682272 call!682270))))

(declare-fun b!7410445 () Bool)

(declare-fun e!4432086 () (Set Context!16712))

(assert (=> b!7410445 (= e!4432086 (set.insert (Context!16713 (t!386593 (exprs!8856 c!10532))) (as set.empty (Set Context!16712))))))

(declare-fun bm!682264 () Bool)

(declare-fun c!1375535 () Bool)

(declare-fun c!1375536 () Bool)

(declare-fun $colon$colon!3346 (List!72034 Regex!19416) List!72034)

(assert (=> bm!682264 (= call!682269 ($colon$colon!3346 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))) (ite (or c!1375535 c!1375536) (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (h!78358 (exprs!8856 c!10532)))))))

(declare-fun b!7410446 () Bool)

(declare-fun e!4432088 () (Set Context!16712))

(declare-fun call!682271 () (Set Context!16712))

(assert (=> b!7410446 (= e!4432088 call!682271)))

(declare-fun b!7410447 () Bool)

(assert (=> b!7410447 (= e!4432088 (as set.empty (Set Context!16712)))))

(declare-fun b!7410449 () Bool)

(declare-fun e!4432091 () (Set Context!16712))

(assert (=> b!7410449 (= e!4432091 call!682271)))

(declare-fun bm!682265 () Bool)

(declare-fun call!682273 () List!72034)

(assert (=> bm!682265 (= call!682273 call!682269)))

(declare-fun b!7410450 () Bool)

(declare-fun c!1375532 () Bool)

(assert (=> b!7410450 (= c!1375532 (is-Star!19416 (h!78358 (exprs!8856 c!10532))))))

(assert (=> b!7410450 (= e!4432091 e!4432088)))

(declare-fun call!682268 () (Set Context!16712))

(declare-fun bm!682266 () Bool)

(assert (=> bm!682266 (= call!682268 (derivationStepZipperDown!3212 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (h!78360 s!7927)))))

(declare-fun b!7410451 () Bool)

(declare-fun e!4432089 () (Set Context!16712))

(assert (=> b!7410451 (= e!4432089 (set.union call!682272 call!682268))))

(declare-fun b!7410452 () Bool)

(declare-fun e!4432087 () Bool)

(assert (=> b!7410452 (= e!4432087 (nullable!8460 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun b!7410453 () Bool)

(assert (=> b!7410453 (= e!4432086 e!4432089)))

(assert (=> b!7410453 (= c!1375534 (is-Union!19416 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410454 () Bool)

(assert (=> b!7410454 (= e!4432090 e!4432091)))

(assert (=> b!7410454 (= c!1375536 (is-Concat!28261 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410448 () Bool)

(assert (=> b!7410448 (= c!1375535 e!4432087)))

(declare-fun res!2983191 () Bool)

(assert (=> b!7410448 (=> (not res!2983191) (not e!4432087))))

(assert (=> b!7410448 (= res!2983191 (is-Concat!28261 (h!78358 (exprs!8856 c!10532))))))

(assert (=> b!7410448 (= e!4432089 e!4432090)))

(declare-fun d!2291978 () Bool)

(declare-fun c!1375533 () Bool)

(assert (=> d!2291978 (= c!1375533 (and (is-ElementMatch!19416 (h!78358 (exprs!8856 c!10532))) (= (c!1375502 (h!78358 (exprs!8856 c!10532))) (h!78360 s!7927))))))

(assert (=> d!2291978 (= (derivationStepZipperDown!3212 (h!78358 (exprs!8856 c!10532)) (Context!16713 (t!386593 (exprs!8856 c!10532))) (h!78360 s!7927)) e!4432086)))

(declare-fun bm!682267 () Bool)

(assert (=> bm!682267 (= call!682270 call!682268)))

(declare-fun bm!682268 () Bool)

(assert (=> bm!682268 (= call!682271 call!682270)))

(assert (= (and d!2291978 c!1375533) b!7410445))

(assert (= (and d!2291978 (not c!1375533)) b!7410453))

(assert (= (and b!7410453 c!1375534) b!7410451))

(assert (= (and b!7410453 (not c!1375534)) b!7410448))

(assert (= (and b!7410448 res!2983191) b!7410452))

(assert (= (and b!7410448 c!1375535) b!7410444))

(assert (= (and b!7410448 (not c!1375535)) b!7410454))

(assert (= (and b!7410454 c!1375536) b!7410449))

(assert (= (and b!7410454 (not c!1375536)) b!7410450))

(assert (= (and b!7410450 c!1375532) b!7410446))

(assert (= (and b!7410450 (not c!1375532)) b!7410447))

(assert (= (or b!7410449 b!7410446) bm!682265))

(assert (= (or b!7410449 b!7410446) bm!682268))

(assert (= (or b!7410444 bm!682265) bm!682264))

(assert (= (or b!7410444 bm!682268) bm!682267))

(assert (= (or b!7410451 b!7410444) bm!682263))

(assert (= (or b!7410451 bm!682267) bm!682266))

(declare-fun m!8045962 () Bool)

(assert (=> bm!682264 m!8045962))

(declare-fun m!8045964 () Bool)

(assert (=> bm!682263 m!8045964))

(declare-fun m!8045966 () Bool)

(assert (=> bm!682266 m!8045966))

(declare-fun m!8045968 () Bool)

(assert (=> b!7410452 m!8045968))

(declare-fun m!8045970 () Bool)

(assert (=> b!7410445 m!8045970))

(assert (=> bm!682246 d!2291978))

(assert (=> d!2291904 d!2291916))

(declare-fun d!2291980 () Bool)

(declare-fun lt!2619027 () Bool)

(assert (=> d!2291980 (= lt!2619027 (exists!4788 (toList!11767 z!3451) lambda!459996))))

(assert (=> d!2291980 (= lt!2619027 (choose!57477 z!3451 lambda!459996))))

(assert (=> d!2291980 (= (exists!4786 z!3451 lambda!459996) lt!2619027)))

(declare-fun bs!1924627 () Bool)

(assert (= bs!1924627 d!2291980))

(assert (=> bs!1924627 m!8045860))

(assert (=> bs!1924627 m!8045860))

(declare-fun m!8045972 () Bool)

(assert (=> bs!1924627 m!8045972))

(declare-fun m!8045974 () Bool)

(assert (=> bs!1924627 m!8045974))

(assert (=> d!2291904 d!2291980))

(declare-fun bs!1924628 () Bool)

(declare-fun d!2291982 () Bool)

(assert (= bs!1924628 (and d!2291982 b!7410247)))

(declare-fun lambda!460021 () Int)

(assert (=> bs!1924628 (not (= lambda!460021 lambda!459987))))

(declare-fun bs!1924629 () Bool)

(assert (= bs!1924629 (and d!2291982 d!2291904)))

(assert (=> bs!1924629 (= lambda!460021 lambda!459996)))

(declare-fun bs!1924630 () Bool)

(assert (= bs!1924630 (and d!2291982 d!2291966)))

(assert (=> bs!1924630 (not (= lambda!460021 lambda!460018))))

(assert (=> d!2291982 true))

(assert (=> d!2291982 true))

(assert (=> d!2291982 (< (dynLambda!29684 order!29553 lambda!459986) (dynLambda!29685 order!29555 lambda!460021))))

(assert (=> d!2291982 (= (set.member lt!2619000 (flatMap!3216 z!3451 lambda!459986)) (exists!4786 z!3451 lambda!460021))))

(declare-fun _$3!583 () Context!16712)

(declare-fun e!4432094 () Bool)

(assert (=> d!2291982 (and (inv!91902 _$3!583) e!4432094)))

(assert (=> d!2291982 (= (choose!57478 z!3451 lambda!459986 lt!2619000) _$3!583)))

(declare-fun b!7410458 () Bool)

(declare-fun tp!2120303 () Bool)

(assert (=> b!7410458 (= e!4432094 tp!2120303)))

(assert (= d!2291982 b!7410458))

(assert (=> d!2291982 m!8045810))

(assert (=> d!2291982 m!8045812))

(declare-fun m!8045976 () Bool)

(assert (=> d!2291982 m!8045976))

(declare-fun m!8045978 () Bool)

(assert (=> d!2291982 m!8045978))

(assert (=> d!2291904 d!2291982))

(declare-fun d!2291984 () Bool)

(assert (=> d!2291984 (= (flatMap!3216 z!3451 lambda!460004) (choose!57479 z!3451 lambda!460004))))

(declare-fun bs!1924631 () Bool)

(assert (= bs!1924631 d!2291984))

(declare-fun m!8045980 () Bool)

(assert (=> bs!1924631 m!8045980))

(assert (=> d!2291930 d!2291984))

(declare-fun d!2291986 () Bool)

(declare-fun res!2983192 () Bool)

(declare-fun e!4432095 () Bool)

(assert (=> d!2291986 (=> res!2983192 e!4432095)))

(assert (=> d!2291986 (= res!2983192 (is-Nil!71910 (exprs!8856 empty!3611)))))

(assert (=> d!2291986 (= (forall!18200 (exprs!8856 empty!3611) lambda!459999) e!4432095)))

(declare-fun b!7410459 () Bool)

(declare-fun e!4432096 () Bool)

(assert (=> b!7410459 (= e!4432095 e!4432096)))

(declare-fun res!2983193 () Bool)

(assert (=> b!7410459 (=> (not res!2983193) (not e!4432096))))

(assert (=> b!7410459 (= res!2983193 (dynLambda!29688 lambda!459999 (h!78358 (exprs!8856 empty!3611))))))

(declare-fun b!7410460 () Bool)

(assert (=> b!7410460 (= e!4432096 (forall!18200 (t!386593 (exprs!8856 empty!3611)) lambda!459999))))

(assert (= (and d!2291986 (not res!2983192)) b!7410459))

(assert (= (and b!7410459 res!2983193) b!7410460))

(declare-fun b_lambda!286603 () Bool)

(assert (=> (not b_lambda!286603) (not b!7410459)))

(declare-fun m!8045982 () Bool)

(assert (=> b!7410459 m!8045982))

(declare-fun m!8045984 () Bool)

(assert (=> b!7410460 m!8045984))

(assert (=> d!2291906 d!2291986))

(declare-fun d!2291988 () Bool)

(declare-fun c!1375539 () Bool)

(assert (=> d!2291988 (= c!1375539 (is-Nil!71911 lt!2619016))))

(declare-fun e!4432099 () (Set Context!16712))

(assert (=> d!2291988 (= (content!15221 lt!2619016) e!4432099)))

(declare-fun b!7410465 () Bool)

(assert (=> b!7410465 (= e!4432099 (as set.empty (Set Context!16712)))))

(declare-fun b!7410466 () Bool)

(assert (=> b!7410466 (= e!4432099 (set.union (set.insert (h!78359 lt!2619016) (as set.empty (Set Context!16712))) (content!15221 (t!386594 lt!2619016))))))

(assert (= (and d!2291988 c!1375539) b!7410465))

(assert (= (and d!2291988 (not c!1375539)) b!7410466))

(declare-fun m!8045986 () Bool)

(assert (=> b!7410466 m!8045986))

(declare-fun m!8045988 () Bool)

(assert (=> b!7410466 m!8045988))

(assert (=> b!7410313 d!2291988))

(declare-fun d!2291990 () Bool)

(declare-fun nullableFct!3407 (Regex!19416) Bool)

(assert (=> d!2291990 (= (nullable!8460 (h!78358 (exprs!8856 c!10532))) (nullableFct!3407 (h!78358 (exprs!8856 c!10532))))))

(declare-fun bs!1924632 () Bool)

(assert (= bs!1924632 d!2291990))

(declare-fun m!8045990 () Bool)

(assert (=> bs!1924632 m!8045990))

(assert (=> b!7410326 d!2291990))

(declare-fun bs!1924633 () Bool)

(declare-fun d!2291992 () Bool)

(assert (= bs!1924633 (and d!2291992 d!2291906)))

(declare-fun lambda!460022 () Int)

(assert (=> bs!1924633 (= lambda!460022 lambda!459999)))

(declare-fun bs!1924634 () Bool)

(assert (= bs!1924634 (and d!2291992 d!2291908)))

(assert (=> bs!1924634 (= lambda!460022 lambda!460000)))

(declare-fun bs!1924635 () Bool)

(assert (= bs!1924635 (and d!2291992 d!2291910)))

(assert (=> bs!1924635 (= lambda!460022 lambda!460001)))

(assert (=> d!2291992 (= (inv!91902 setElem!56312) (forall!18200 (exprs!8856 setElem!56312) lambda!460022))))

(declare-fun bs!1924636 () Bool)

(assert (= bs!1924636 d!2291992))

(declare-fun m!8045992 () Bool)

(assert (=> bs!1924636 m!8045992))

(assert (=> setNonEmpty!56312 d!2291992))

(declare-fun b!7410467 () Bool)

(declare-fun e!4432100 () Bool)

(declare-fun tp!2120304 () Bool)

(assert (=> b!7410467 (= e!4432100 (and tp_is_empty!49095 tp!2120304))))

(assert (=> b!7410345 (= tp!2120265 e!4432100)))

(assert (= (and b!7410345 (is-Cons!71912 (t!386595 (t!386595 s!7927)))) b!7410467))

(declare-fun b!7410478 () Bool)

(declare-fun e!4432103 () Bool)

(assert (=> b!7410478 (= e!4432103 tp_is_empty!49095)))

(declare-fun b!7410481 () Bool)

(declare-fun tp!2120316 () Bool)

(declare-fun tp!2120315 () Bool)

(assert (=> b!7410481 (= e!4432103 (and tp!2120316 tp!2120315))))

(declare-fun b!7410480 () Bool)

(declare-fun tp!2120317 () Bool)

(assert (=> b!7410480 (= e!4432103 tp!2120317)))

(assert (=> b!7410346 (= tp!2120266 e!4432103)))

(declare-fun b!7410479 () Bool)

(declare-fun tp!2120319 () Bool)

(declare-fun tp!2120318 () Bool)

(assert (=> b!7410479 (= e!4432103 (and tp!2120319 tp!2120318))))

(assert (= (and b!7410346 (is-ElementMatch!19416 (h!78358 (exprs!8856 c!10532)))) b!7410478))

(assert (= (and b!7410346 (is-Concat!28261 (h!78358 (exprs!8856 c!10532)))) b!7410479))

(assert (= (and b!7410346 (is-Star!19416 (h!78358 (exprs!8856 c!10532)))) b!7410480))

(assert (= (and b!7410346 (is-Union!19416 (h!78358 (exprs!8856 c!10532)))) b!7410481))

(declare-fun b!7410482 () Bool)

(declare-fun e!4432104 () Bool)

(declare-fun tp!2120320 () Bool)

(declare-fun tp!2120321 () Bool)

(assert (=> b!7410482 (= e!4432104 (and tp!2120320 tp!2120321))))

(assert (=> b!7410346 (= tp!2120267 e!4432104)))

(assert (= (and b!7410346 (is-Cons!71910 (t!386593 (exprs!8856 c!10532)))) b!7410482))

(declare-fun b!7410483 () Bool)

(declare-fun e!4432105 () Bool)

(declare-fun tp!2120322 () Bool)

(declare-fun tp!2120323 () Bool)

(assert (=> b!7410483 (= e!4432105 (and tp!2120322 tp!2120323))))

(assert (=> b!7410340 (= tp!2120261 e!4432105)))

(assert (= (and b!7410340 (is-Cons!71910 (exprs!8856 setElem!56312))) b!7410483))

(declare-fun condSetEmpty!56319 () Bool)

(assert (=> setNonEmpty!56312 (= condSetEmpty!56319 (= setRest!56312 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56319 () Bool)

(assert (=> setNonEmpty!56312 (= tp!2120262 setRes!56319)))

(declare-fun setIsEmpty!56319 () Bool)

(assert (=> setIsEmpty!56319 setRes!56319))

(declare-fun setNonEmpty!56319 () Bool)

(declare-fun e!4432106 () Bool)

(declare-fun setElem!56319 () Context!16712)

(declare-fun tp!2120325 () Bool)

(assert (=> setNonEmpty!56319 (= setRes!56319 (and tp!2120325 (inv!91902 setElem!56319) e!4432106))))

(declare-fun setRest!56319 () (Set Context!16712))

(assert (=> setNonEmpty!56319 (= setRest!56312 (set.union (set.insert setElem!56319 (as set.empty (Set Context!16712))) setRest!56319))))

(declare-fun b!7410484 () Bool)

(declare-fun tp!2120324 () Bool)

(assert (=> b!7410484 (= e!4432106 tp!2120324)))

(assert (= (and setNonEmpty!56312 condSetEmpty!56319) setIsEmpty!56319))

(assert (= (and setNonEmpty!56312 (not condSetEmpty!56319)) setNonEmpty!56319))

(assert (= setNonEmpty!56319 b!7410484))

(declare-fun m!8045994 () Bool)

(assert (=> setNonEmpty!56319 m!8045994))

(declare-fun b!7410485 () Bool)

(declare-fun e!4432107 () Bool)

(assert (=> b!7410485 (= e!4432107 tp_is_empty!49095)))

(declare-fun b!7410488 () Bool)

(declare-fun tp!2120327 () Bool)

(declare-fun tp!2120326 () Bool)

(assert (=> b!7410488 (= e!4432107 (and tp!2120327 tp!2120326))))

(declare-fun b!7410487 () Bool)

(declare-fun tp!2120328 () Bool)

(assert (=> b!7410487 (= e!4432107 tp!2120328)))

(assert (=> b!7410335 (= tp!2120255 e!4432107)))

(declare-fun b!7410486 () Bool)

(declare-fun tp!2120330 () Bool)

(declare-fun tp!2120329 () Bool)

(assert (=> b!7410486 (= e!4432107 (and tp!2120330 tp!2120329))))

(assert (= (and b!7410335 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56306)))) b!7410485))

(assert (= (and b!7410335 (is-Concat!28261 (h!78358 (exprs!8856 setElem!56306)))) b!7410486))

(assert (= (and b!7410335 (is-Star!19416 (h!78358 (exprs!8856 setElem!56306)))) b!7410487))

(assert (= (and b!7410335 (is-Union!19416 (h!78358 (exprs!8856 setElem!56306)))) b!7410488))

(declare-fun b!7410489 () Bool)

(declare-fun e!4432108 () Bool)

(declare-fun tp!2120331 () Bool)

(declare-fun tp!2120332 () Bool)

(assert (=> b!7410489 (= e!4432108 (and tp!2120331 tp!2120332))))

(assert (=> b!7410335 (= tp!2120256 e!4432108)))

(assert (= (and b!7410335 (is-Cons!71910 (t!386593 (exprs!8856 setElem!56306)))) b!7410489))

(declare-fun b!7410490 () Bool)

(declare-fun e!4432109 () Bool)

(assert (=> b!7410490 (= e!4432109 tp_is_empty!49095)))

(declare-fun b!7410493 () Bool)

(declare-fun tp!2120334 () Bool)

(declare-fun tp!2120333 () Bool)

(assert (=> b!7410493 (= e!4432109 (and tp!2120334 tp!2120333))))

(declare-fun b!7410492 () Bool)

(declare-fun tp!2120335 () Bool)

(assert (=> b!7410492 (= e!4432109 tp!2120335)))

(assert (=> b!7410347 (= tp!2120268 e!4432109)))

(declare-fun b!7410491 () Bool)

(declare-fun tp!2120337 () Bool)

(declare-fun tp!2120336 () Bool)

(assert (=> b!7410491 (= e!4432109 (and tp!2120337 tp!2120336))))

(assert (= (and b!7410347 (is-ElementMatch!19416 (h!78358 (exprs!8856 empty!3611)))) b!7410490))

(assert (= (and b!7410347 (is-Concat!28261 (h!78358 (exprs!8856 empty!3611)))) b!7410491))

(assert (= (and b!7410347 (is-Star!19416 (h!78358 (exprs!8856 empty!3611)))) b!7410492))

(assert (= (and b!7410347 (is-Union!19416 (h!78358 (exprs!8856 empty!3611)))) b!7410493))

(declare-fun b!7410494 () Bool)

(declare-fun e!4432110 () Bool)

(declare-fun tp!2120338 () Bool)

(declare-fun tp!2120339 () Bool)

(assert (=> b!7410494 (= e!4432110 (and tp!2120338 tp!2120339))))

(assert (=> b!7410347 (= tp!2120269 e!4432110)))

(assert (= (and b!7410347 (is-Cons!71910 (t!386593 (exprs!8856 empty!3611)))) b!7410494))

(declare-fun b_lambda!286605 () Bool)

(assert (= b_lambda!286603 (or d!2291906 b_lambda!286605)))

(declare-fun bs!1924637 () Bool)

(declare-fun d!2291994 () Bool)

(assert (= bs!1924637 (and d!2291994 d!2291906)))

(declare-fun validRegex!9965 (Regex!19416) Bool)

(assert (=> bs!1924637 (= (dynLambda!29688 lambda!459999 (h!78358 (exprs!8856 empty!3611))) (validRegex!9965 (h!78358 (exprs!8856 empty!3611))))))

(declare-fun m!8045996 () Bool)

(assert (=> bs!1924637 m!8045996))

(assert (=> b!7410459 d!2291994))

(declare-fun b_lambda!286607 () Bool)

(assert (= b_lambda!286601 (or d!2291908 b_lambda!286607)))

(declare-fun bs!1924638 () Bool)

(declare-fun d!2291996 () Bool)

(assert (= bs!1924638 (and d!2291996 d!2291908)))

(assert (=> bs!1924638 (= (dynLambda!29688 lambda!460000 (h!78358 (exprs!8856 setElem!56306))) (validRegex!9965 (h!78358 (exprs!8856 setElem!56306))))))

(declare-fun m!8045998 () Bool)

(assert (=> bs!1924638 m!8045998))

(assert (=> b!7410410 d!2291996))

(declare-fun b_lambda!286609 () Bool)

(assert (= b_lambda!286599 (or d!2291910 b_lambda!286609)))

(declare-fun bs!1924639 () Bool)

(declare-fun d!2291998 () Bool)

(assert (= bs!1924639 (and d!2291998 d!2291910)))

(assert (=> bs!1924639 (= (dynLambda!29688 lambda!460001 (h!78358 (exprs!8856 c!10532))) (validRegex!9965 (h!78358 (exprs!8856 c!10532))))))

(declare-fun m!8046000 () Bool)

(assert (=> bs!1924639 m!8046000))

(assert (=> b!7410375 d!2291998))

(push 1)

(assert (not b!7410452))

(assert (not b!7410382))

(assert (not d!2291966))

(assert (not bm!682264))

(assert (not b!7410460))

(assert (not b!7410376))

(assert (not b!7410411))

(assert (not d!2291980))

(assert (not b!7410486))

(assert (not b!7410487))

(assert (not b!7410479))

(assert (not b!7410466))

(assert (not bm!682250))

(assert (not b!7410393))

(assert (not b!7410483))

(assert tp_is_empty!49095)

(assert (not setNonEmpty!56318))

(assert (not d!2291968))

(assert (not d!2291982))

(assert (not bs!1924637))

(assert (not b!7410493))

(assert (not b!7410458))

(assert (not b!7410408))

(assert (not b_lambda!286609))

(assert (not b!7410488))

(assert (not b!7410482))

(assert (not d!2291990))

(assert (not bs!1924638))

(assert (not b!7410484))

(assert (not bm!682263))

(assert (not d!2291962))

(assert (not bs!1924639))

(assert (not setNonEmpty!56319))

(assert (not b!7410494))

(assert (not d!2291992))

(assert (not b!7410394))

(assert (not bm!682266))

(assert (not b!7410421))

(assert (not b!7410416))

(assert (not d!2291984))

(assert (not b!7410491))

(assert (not b!7410481))

(assert (not b!7410489))

(assert (not b!7410381))

(assert (not b!7410467))

(assert (not b_lambda!286607))

(assert (not d!2291970))

(assert (not b_lambda!286605))

(assert (not b!7410480))

(assert (not b!7410419))

(assert (not b!7410395))

(assert (not b!7410492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7410501 () Bool)

(declare-fun e!4432118 () (Set Context!16712))

(assert (=> b!7410501 (= e!4432118 (as set.empty (Set Context!16712)))))

(declare-fun b!7410502 () Bool)

(declare-fun e!4432117 () (Set Context!16712))

(assert (=> b!7410502 (= e!4432117 e!4432118)))

(declare-fun c!1375540 () Bool)

(assert (=> b!7410502 (= c!1375540 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(declare-fun b!7410503 () Bool)

(declare-fun e!4432119 () Bool)

(assert (=> b!7410503 (= e!4432119 (nullable!8460 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun b!7410504 () Bool)

(declare-fun call!682274 () (Set Context!16712))

(assert (=> b!7410504 (= e!4432118 call!682274)))

(declare-fun b!7410505 () Bool)

(assert (=> b!7410505 (= e!4432117 (set.union call!682274 (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78360 s!7927))))))

(declare-fun bm!682269 () Bool)

(assert (=> bm!682269 (= call!682274 (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78360 s!7927)))))

(declare-fun d!2292006 () Bool)

(declare-fun c!1375541 () Bool)

(assert (=> d!2292006 (= c!1375541 e!4432119)))

(declare-fun res!2983200 () Bool)

(assert (=> d!2292006 (=> (not res!2983200) (not e!4432119))))

(assert (=> d!2292006 (= res!2983200 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(assert (=> d!2292006 (= (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78360 s!7927)) e!4432117)))

(assert (= (and d!2292006 res!2983200) b!7410503))

(assert (= (and d!2292006 c!1375541) b!7410505))

(assert (= (and d!2292006 (not c!1375541)) b!7410502))

(assert (= (and b!7410502 c!1375540) b!7410504))

(assert (= (and b!7410502 (not c!1375540)) b!7410501))

(assert (= (or b!7410505 b!7410504) bm!682269))

(declare-fun m!8046010 () Bool)

(assert (=> b!7410503 m!8046010))

(declare-fun m!8046012 () Bool)

(assert (=> b!7410505 m!8046012))

(declare-fun m!8046014 () Bool)

(assert (=> bm!682269 m!8046014))

(assert (=> b!7410421 d!2292006))

(declare-fun d!2292008 () Bool)

(declare-fun c!1375542 () Bool)

(assert (=> d!2292008 (= c!1375542 (is-Nil!71911 lt!2619026))))

(declare-fun e!4432122 () (Set Context!16712))

(assert (=> d!2292008 (= (content!15221 lt!2619026) e!4432122)))

(declare-fun b!7410509 () Bool)

(assert (=> b!7410509 (= e!4432122 (as set.empty (Set Context!16712)))))

(declare-fun b!7410510 () Bool)

(assert (=> b!7410510 (= e!4432122 (set.union (set.insert (h!78359 lt!2619026) (as set.empty (Set Context!16712))) (content!15221 (t!386594 lt!2619026))))))

(assert (= (and d!2292008 c!1375542) b!7410509))

(assert (= (and d!2292008 (not c!1375542)) b!7410510))

(declare-fun m!8046016 () Bool)

(assert (=> b!7410510 m!8046016))

(declare-fun m!8046018 () Bool)

(assert (=> b!7410510 m!8046018))

(assert (=> b!7410408 d!2292008))

(declare-fun c!1375545 () Bool)

(declare-fun bm!682270 () Bool)

(declare-fun call!682276 () List!72034)

(declare-fun call!682279 () (Set Context!16712))

(assert (=> bm!682270 (= call!682279 (derivationStepZipperDown!3212 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276)) (h!78360 s!7927)))))

(declare-fun b!7410511 () Bool)

(declare-fun e!4432127 () (Set Context!16712))

(declare-fun call!682277 () (Set Context!16712))

(assert (=> b!7410511 (= e!4432127 (set.union call!682279 call!682277))))

(declare-fun b!7410512 () Bool)

(declare-fun e!4432123 () (Set Context!16712))

(assert (=> b!7410512 (= e!4432123 (set.insert (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (as set.empty (Set Context!16712))))))

(declare-fun c!1375546 () Bool)

(declare-fun bm!682271 () Bool)

(declare-fun c!1375547 () Bool)

(assert (=> bm!682271 (= call!682276 ($colon$colon!3346 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (ite (or c!1375546 c!1375547) (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))

(declare-fun b!7410513 () Bool)

(declare-fun e!4432125 () (Set Context!16712))

(declare-fun call!682278 () (Set Context!16712))

(assert (=> b!7410513 (= e!4432125 call!682278)))

(declare-fun b!7410514 () Bool)

(assert (=> b!7410514 (= e!4432125 (as set.empty (Set Context!16712)))))

(declare-fun b!7410516 () Bool)

(declare-fun e!4432128 () (Set Context!16712))

(assert (=> b!7410516 (= e!4432128 call!682278)))

(declare-fun bm!682272 () Bool)

(declare-fun call!682280 () List!72034)

(assert (=> bm!682272 (= call!682280 call!682276)))

(declare-fun b!7410517 () Bool)

(declare-fun c!1375543 () Bool)

(assert (=> b!7410517 (= c!1375543 (is-Star!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(assert (=> b!7410517 (= e!4432128 e!4432125)))

(declare-fun call!682275 () (Set Context!16712))

(declare-fun bm!682273 () Bool)

(assert (=> bm!682273 (= call!682275 (derivationStepZipperDown!3212 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280)) (h!78360 s!7927)))))

(declare-fun b!7410518 () Bool)

(declare-fun e!4432126 () (Set Context!16712))

(assert (=> b!7410518 (= e!4432126 (set.union call!682279 call!682275))))

(declare-fun b!7410519 () Bool)

(declare-fun e!4432124 () Bool)

(assert (=> b!7410519 (= e!4432124 (nullable!8460 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))

(declare-fun b!7410520 () Bool)

(assert (=> b!7410520 (= e!4432123 e!4432126)))

(assert (=> b!7410520 (= c!1375545 (is-Union!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun b!7410521 () Bool)

(assert (=> b!7410521 (= e!4432127 e!4432128)))

(assert (=> b!7410521 (= c!1375547 (is-Concat!28261 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun b!7410515 () Bool)

(assert (=> b!7410515 (= c!1375546 e!4432124)))

(declare-fun res!2983201 () Bool)

(assert (=> b!7410515 (=> (not res!2983201) (not e!4432124))))

(assert (=> b!7410515 (= res!2983201 (is-Concat!28261 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(assert (=> b!7410515 (= e!4432126 e!4432127)))

(declare-fun d!2292010 () Bool)

(declare-fun c!1375544 () Bool)

(assert (=> d!2292010 (= c!1375544 (and (is-ElementMatch!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (= (c!1375502 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78360 s!7927))))))

(assert (=> d!2292010 (= (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78360 s!7927)) e!4432123)))

(declare-fun bm!682274 () Bool)

(assert (=> bm!682274 (= call!682277 call!682275)))

(declare-fun bm!682275 () Bool)

(assert (=> bm!682275 (= call!682278 call!682277)))

(assert (= (and d!2292010 c!1375544) b!7410512))

(assert (= (and d!2292010 (not c!1375544)) b!7410520))

(assert (= (and b!7410520 c!1375545) b!7410518))

(assert (= (and b!7410520 (not c!1375545)) b!7410515))

(assert (= (and b!7410515 res!2983201) b!7410519))

(assert (= (and b!7410515 c!1375546) b!7410511))

(assert (= (and b!7410515 (not c!1375546)) b!7410521))

(assert (= (and b!7410521 c!1375547) b!7410516))

(assert (= (and b!7410521 (not c!1375547)) b!7410517))

(assert (= (and b!7410517 c!1375543) b!7410513))

(assert (= (and b!7410517 (not c!1375543)) b!7410514))

(assert (= (or b!7410516 b!7410513) bm!682272))

(assert (= (or b!7410516 b!7410513) bm!682275))

(assert (= (or b!7410511 bm!682272) bm!682271))

(assert (= (or b!7410511 bm!682275) bm!682274))

(assert (= (or b!7410518 b!7410511) bm!682270))

(assert (= (or b!7410518 bm!682274) bm!682273))

(declare-fun m!8046020 () Bool)

(assert (=> bm!682271 m!8046020))

(declare-fun m!8046022 () Bool)

(assert (=> bm!682270 m!8046022))

(declare-fun m!8046024 () Bool)

(assert (=> bm!682273 m!8046024))

(declare-fun m!8046026 () Bool)

(assert (=> b!7410519 m!8046026))

(declare-fun m!8046028 () Bool)

(assert (=> b!7410512 m!8046028))

(assert (=> bm!682250 d!2292010))

(declare-fun d!2292012 () Bool)

(declare-fun c!1375548 () Bool)

(assert (=> d!2292012 (= c!1375548 (is-Nil!71911 (t!386594 lt!2619016)))))

(declare-fun e!4432129 () (Set Context!16712))

(assert (=> d!2292012 (= (content!15221 (t!386594 lt!2619016)) e!4432129)))

(declare-fun b!7410522 () Bool)

(assert (=> b!7410522 (= e!4432129 (as set.empty (Set Context!16712)))))

(declare-fun b!7410523 () Bool)

(assert (=> b!7410523 (= e!4432129 (set.union (set.insert (h!78359 (t!386594 lt!2619016)) (as set.empty (Set Context!16712))) (content!15221 (t!386594 (t!386594 lt!2619016)))))))

(assert (= (and d!2292012 c!1375548) b!7410522))

(assert (= (and d!2292012 (not c!1375548)) b!7410523))

(declare-fun m!8046030 () Bool)

(assert (=> b!7410523 m!8046030))

(declare-fun m!8046032 () Bool)

(assert (=> b!7410523 m!8046032))

(assert (=> b!7410466 d!2292012))

(declare-fun b!7410545 () Bool)

(declare-fun res!2983216 () Bool)

(declare-fun e!4432152 () Bool)

(assert (=> b!7410545 (=> res!2983216 e!4432152)))

(assert (=> b!7410545 (= res!2983216 (not (is-Concat!28261 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun e!4432151 () Bool)

(assert (=> b!7410545 (= e!4432151 e!4432152)))

(declare-fun b!7410546 () Bool)

(declare-fun e!4432153 () Bool)

(declare-fun call!682289 () Bool)

(assert (=> b!7410546 (= e!4432153 call!682289)))

(declare-fun b!7410547 () Bool)

(declare-fun e!4432147 () Bool)

(assert (=> b!7410547 (= e!4432147 e!4432151)))

(declare-fun c!1375554 () Bool)

(assert (=> b!7410547 (= c!1375554 (is-Union!19416 (h!78358 (exprs!8856 c!10532))))))

(declare-fun call!682287 () Bool)

(declare-fun c!1375553 () Bool)

(declare-fun bm!682282 () Bool)

(assert (=> bm!682282 (= call!682287 (validRegex!9965 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun bm!682283 () Bool)

(assert (=> bm!682283 (= call!682289 (validRegex!9965 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7410548 () Bool)

(declare-fun e!4432148 () Bool)

(assert (=> b!7410548 (= e!4432147 e!4432148)))

(declare-fun res!2983218 () Bool)

(assert (=> b!7410548 (= res!2983218 (not (nullable!8460 (reg!19745 (h!78358 (exprs!8856 c!10532))))))))

(assert (=> b!7410548 (=> (not res!2983218) (not e!4432148))))

(declare-fun b!7410549 () Bool)

(assert (=> b!7410549 (= e!4432148 call!682287)))

(declare-fun bm!682284 () Bool)

(declare-fun call!682288 () Bool)

(assert (=> bm!682284 (= call!682288 call!682287)))

(declare-fun d!2292014 () Bool)

(declare-fun res!2983217 () Bool)

(declare-fun e!4432150 () Bool)

(assert (=> d!2292014 (=> res!2983217 e!4432150)))

(assert (=> d!2292014 (= res!2983217 (is-ElementMatch!19416 (h!78358 (exprs!8856 c!10532))))))

(assert (=> d!2292014 (= (validRegex!9965 (h!78358 (exprs!8856 c!10532))) e!4432150)))

(declare-fun b!7410550 () Bool)

(assert (=> b!7410550 (= e!4432150 e!4432147)))

(assert (=> b!7410550 (= c!1375553 (is-Star!19416 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410551 () Bool)

(assert (=> b!7410551 (= e!4432152 e!4432153)))

(declare-fun res!2983215 () Bool)

(assert (=> b!7410551 (=> (not res!2983215) (not e!4432153))))

(assert (=> b!7410551 (= res!2983215 call!682288)))

(declare-fun b!7410552 () Bool)

(declare-fun e!4432149 () Bool)

(assert (=> b!7410552 (= e!4432149 call!682289)))

(declare-fun b!7410553 () Bool)

(declare-fun res!2983214 () Bool)

(assert (=> b!7410553 (=> (not res!2983214) (not e!4432149))))

(assert (=> b!7410553 (= res!2983214 call!682288)))

(assert (=> b!7410553 (= e!4432151 e!4432149)))

(assert (= (and d!2292014 (not res!2983217)) b!7410550))

(assert (= (and b!7410550 c!1375553) b!7410548))

(assert (= (and b!7410550 (not c!1375553)) b!7410547))

(assert (= (and b!7410548 res!2983218) b!7410549))

(assert (= (and b!7410547 c!1375554) b!7410553))

(assert (= (and b!7410547 (not c!1375554)) b!7410545))

(assert (= (and b!7410553 res!2983214) b!7410552))

(assert (= (and b!7410545 (not res!2983216)) b!7410551))

(assert (= (and b!7410551 res!2983215) b!7410546))

(assert (= (or b!7410553 b!7410551) bm!682284))

(assert (= (or b!7410552 b!7410546) bm!682283))

(assert (= (or b!7410549 bm!682284) bm!682282))

(declare-fun m!8046042 () Bool)

(assert (=> bm!682282 m!8046042))

(declare-fun m!8046044 () Bool)

(assert (=> bm!682283 m!8046044))

(declare-fun m!8046046 () Bool)

(assert (=> b!7410548 m!8046046))

(assert (=> bs!1924639 d!2292014))

(declare-fun d!2292020 () Bool)

(declare-fun res!2983219 () Bool)

(declare-fun e!4432154 () Bool)

(assert (=> d!2292020 (=> res!2983219 e!4432154)))

(assert (=> d!2292020 (= res!2983219 (is-Nil!71910 (t!386593 (exprs!8856 empty!3611))))))

(assert (=> d!2292020 (= (forall!18200 (t!386593 (exprs!8856 empty!3611)) lambda!459999) e!4432154)))

(declare-fun b!7410554 () Bool)

(declare-fun e!4432155 () Bool)

(assert (=> b!7410554 (= e!4432154 e!4432155)))

(declare-fun res!2983220 () Bool)

(assert (=> b!7410554 (=> (not res!2983220) (not e!4432155))))

(assert (=> b!7410554 (= res!2983220 (dynLambda!29688 lambda!459999 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))

(declare-fun b!7410555 () Bool)

(assert (=> b!7410555 (= e!4432155 (forall!18200 (t!386593 (t!386593 (exprs!8856 empty!3611))) lambda!459999))))

(assert (= (and d!2292020 (not res!2983219)) b!7410554))

(assert (= (and b!7410554 res!2983220) b!7410555))

(declare-fun b_lambda!286615 () Bool)

(assert (=> (not b_lambda!286615) (not b!7410554)))

(declare-fun m!8046048 () Bool)

(assert (=> b!7410554 m!8046048))

(declare-fun m!8046050 () Bool)

(assert (=> b!7410555 m!8046050))

(assert (=> b!7410460 d!2292020))

(declare-fun d!2292022 () Bool)

(assert (=> d!2292022 (= (nullable!8460 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (nullableFct!3407 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun bs!1924643 () Bool)

(assert (= bs!1924643 d!2292022))

(declare-fun m!8046052 () Bool)

(assert (=> bs!1924643 m!8046052))

(assert (=> b!7410419 d!2292022))

(declare-fun d!2292024 () Bool)

(declare-fun res!2983221 () Bool)

(declare-fun e!4432156 () Bool)

(assert (=> d!2292024 (=> res!2983221 e!4432156)))

(assert (=> d!2292024 (= res!2983221 (is-Nil!71911 lt!2619026))))

(assert (=> d!2292024 (= (noDuplicate!3109 lt!2619026) e!4432156)))

(declare-fun b!7410556 () Bool)

(declare-fun e!4432157 () Bool)

(assert (=> b!7410556 (= e!4432156 e!4432157)))

(declare-fun res!2983222 () Bool)

(assert (=> b!7410556 (=> (not res!2983222) (not e!4432157))))

(assert (=> b!7410556 (= res!2983222 (not (contains!20851 (t!386594 lt!2619026) (h!78359 lt!2619026))))))

(declare-fun b!7410557 () Bool)

(assert (=> b!7410557 (= e!4432157 (noDuplicate!3109 (t!386594 lt!2619026)))))

(assert (= (and d!2292024 (not res!2983221)) b!7410556))

(assert (= (and b!7410556 res!2983222) b!7410557))

(declare-fun m!8046054 () Bool)

(assert (=> b!7410556 m!8046054))

(declare-fun m!8046056 () Bool)

(assert (=> b!7410557 m!8046056))

(assert (=> d!2291968 d!2292024))

(declare-fun d!2292026 () Bool)

(declare-fun e!4432158 () Bool)

(assert (=> d!2292026 e!4432158))

(declare-fun res!2983223 () Bool)

(assert (=> d!2292026 (=> (not res!2983223) (not e!4432158))))

(declare-fun res!2983224 () List!72035)

(assert (=> d!2292026 (= res!2983223 (noDuplicate!3109 res!2983224))))

(declare-fun e!4432159 () Bool)

(assert (=> d!2292026 e!4432159))

(assert (=> d!2292026 (= (choose!57480 z!3451) res!2983224)))

(declare-fun b!7410559 () Bool)

(declare-fun e!4432160 () Bool)

(declare-fun tp!2120344 () Bool)

(assert (=> b!7410559 (= e!4432160 tp!2120344)))

(declare-fun b!7410558 () Bool)

(declare-fun tp!2120343 () Bool)

(assert (=> b!7410558 (= e!4432159 (and (inv!91902 (h!78359 res!2983224)) e!4432160 tp!2120343))))

(declare-fun b!7410560 () Bool)

(assert (=> b!7410560 (= e!4432158 (= (content!15221 res!2983224) z!3451))))

(assert (= b!7410558 b!7410559))

(assert (= (and d!2292026 (is-Cons!71911 res!2983224)) b!7410558))

(assert (= (and d!2292026 res!2983223) b!7410560))

(declare-fun m!8046058 () Bool)

(assert (=> d!2292026 m!8046058))

(declare-fun m!8046060 () Bool)

(assert (=> b!7410558 m!8046060))

(declare-fun m!8046062 () Bool)

(assert (=> b!7410560 m!8046062))

(assert (=> d!2291968 d!2292026))

(assert (=> d!2291982 d!2291916))

(declare-fun d!2292028 () Bool)

(declare-fun lt!2619029 () Bool)

(assert (=> d!2292028 (= lt!2619029 (exists!4788 (toList!11767 z!3451) lambda!460021))))

(assert (=> d!2292028 (= lt!2619029 (choose!57477 z!3451 lambda!460021))))

(assert (=> d!2292028 (= (exists!4786 z!3451 lambda!460021) lt!2619029)))

(declare-fun bs!1924644 () Bool)

(assert (= bs!1924644 d!2292028))

(assert (=> bs!1924644 m!8045860))

(assert (=> bs!1924644 m!8045860))

(declare-fun m!8046064 () Bool)

(assert (=> bs!1924644 m!8046064))

(declare-fun m!8046066 () Bool)

(assert (=> bs!1924644 m!8046066))

(assert (=> d!2291982 d!2292028))

(declare-fun bs!1924645 () Bool)

(declare-fun d!2292030 () Bool)

(assert (= bs!1924645 (and d!2292030 d!2291906)))

(declare-fun lambda!460028 () Int)

(assert (=> bs!1924645 (= lambda!460028 lambda!459999)))

(declare-fun bs!1924646 () Bool)

(assert (= bs!1924646 (and d!2292030 d!2291908)))

(assert (=> bs!1924646 (= lambda!460028 lambda!460000)))

(declare-fun bs!1924647 () Bool)

(assert (= bs!1924647 (and d!2292030 d!2291910)))

(assert (=> bs!1924647 (= lambda!460028 lambda!460001)))

(declare-fun bs!1924648 () Bool)

(assert (= bs!1924648 (and d!2292030 d!2291992)))

(assert (=> bs!1924648 (= lambda!460028 lambda!460022)))

(assert (=> d!2292030 (= (inv!91902 _$3!583) (forall!18200 (exprs!8856 _$3!583) lambda!460028))))

(declare-fun bs!1924649 () Bool)

(assert (= bs!1924649 d!2292030))

(declare-fun m!8046068 () Bool)

(assert (=> bs!1924649 m!8046068))

(assert (=> d!2291982 d!2292030))

(declare-fun b!7410561 () Bool)

(declare-fun res!2983227 () Bool)

(declare-fun e!4432166 () Bool)

(assert (=> b!7410561 (=> res!2983227 e!4432166)))

(assert (=> b!7410561 (= res!2983227 (not (is-Concat!28261 (h!78358 (exprs!8856 setElem!56306)))))))

(declare-fun e!4432165 () Bool)

(assert (=> b!7410561 (= e!4432165 e!4432166)))

(declare-fun b!7410562 () Bool)

(declare-fun e!4432167 () Bool)

(declare-fun call!682292 () Bool)

(assert (=> b!7410562 (= e!4432167 call!682292)))

(declare-fun b!7410563 () Bool)

(declare-fun e!4432161 () Bool)

(assert (=> b!7410563 (= e!4432161 e!4432165)))

(declare-fun c!1375556 () Bool)

(assert (=> b!7410563 (= c!1375556 (is-Union!19416 (h!78358 (exprs!8856 setElem!56306))))))

(declare-fun c!1375555 () Bool)

(declare-fun call!682290 () Bool)

(declare-fun bm!682285 () Bool)

(assert (=> bm!682285 (= call!682290 (validRegex!9965 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))

(declare-fun bm!682286 () Bool)

(assert (=> bm!682286 (= call!682292 (validRegex!9965 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))

(declare-fun b!7410564 () Bool)

(declare-fun e!4432162 () Bool)

(assert (=> b!7410564 (= e!4432161 e!4432162)))

(declare-fun res!2983229 () Bool)

(assert (=> b!7410564 (= res!2983229 (not (nullable!8460 (reg!19745 (h!78358 (exprs!8856 setElem!56306))))))))

(assert (=> b!7410564 (=> (not res!2983229) (not e!4432162))))

(declare-fun b!7410565 () Bool)

(assert (=> b!7410565 (= e!4432162 call!682290)))

(declare-fun bm!682287 () Bool)

(declare-fun call!682291 () Bool)

(assert (=> bm!682287 (= call!682291 call!682290)))

(declare-fun d!2292032 () Bool)

(declare-fun res!2983228 () Bool)

(declare-fun e!4432164 () Bool)

(assert (=> d!2292032 (=> res!2983228 e!4432164)))

(assert (=> d!2292032 (= res!2983228 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56306))))))

(assert (=> d!2292032 (= (validRegex!9965 (h!78358 (exprs!8856 setElem!56306))) e!4432164)))

(declare-fun b!7410566 () Bool)

(assert (=> b!7410566 (= e!4432164 e!4432161)))

(assert (=> b!7410566 (= c!1375555 (is-Star!19416 (h!78358 (exprs!8856 setElem!56306))))))

(declare-fun b!7410567 () Bool)

(assert (=> b!7410567 (= e!4432166 e!4432167)))

(declare-fun res!2983226 () Bool)

(assert (=> b!7410567 (=> (not res!2983226) (not e!4432167))))

(assert (=> b!7410567 (= res!2983226 call!682291)))

(declare-fun b!7410568 () Bool)

(declare-fun e!4432163 () Bool)

(assert (=> b!7410568 (= e!4432163 call!682292)))

(declare-fun b!7410569 () Bool)

(declare-fun res!2983225 () Bool)

(assert (=> b!7410569 (=> (not res!2983225) (not e!4432163))))

(assert (=> b!7410569 (= res!2983225 call!682291)))

(assert (=> b!7410569 (= e!4432165 e!4432163)))

(assert (= (and d!2292032 (not res!2983228)) b!7410566))

(assert (= (and b!7410566 c!1375555) b!7410564))

(assert (= (and b!7410566 (not c!1375555)) b!7410563))

(assert (= (and b!7410564 res!2983229) b!7410565))

(assert (= (and b!7410563 c!1375556) b!7410569))

(assert (= (and b!7410563 (not c!1375556)) b!7410561))

(assert (= (and b!7410569 res!2983225) b!7410568))

(assert (= (and b!7410561 (not res!2983227)) b!7410567))

(assert (= (and b!7410567 res!2983226) b!7410562))

(assert (= (or b!7410569 b!7410567) bm!682287))

(assert (= (or b!7410568 b!7410562) bm!682286))

(assert (= (or b!7410565 bm!682287) bm!682285))

(declare-fun m!8046070 () Bool)

(assert (=> bm!682285 m!8046070))

(declare-fun m!8046072 () Bool)

(assert (=> bm!682286 m!8046072))

(declare-fun m!8046074 () Bool)

(assert (=> b!7410564 m!8046074))

(assert (=> bs!1924638 d!2292032))

(declare-fun d!2292034 () Bool)

(declare-fun res!2983230 () Bool)

(declare-fun e!4432168 () Bool)

(assert (=> d!2292034 (=> res!2983230 e!4432168)))

(assert (=> d!2292034 (= res!2983230 (is-Nil!71910 (exprs!8856 setElem!56312)))))

(assert (=> d!2292034 (= (forall!18200 (exprs!8856 setElem!56312) lambda!460022) e!4432168)))

(declare-fun b!7410572 () Bool)

(declare-fun e!4432169 () Bool)

(assert (=> b!7410572 (= e!4432168 e!4432169)))

(declare-fun res!2983231 () Bool)

(assert (=> b!7410572 (=> (not res!2983231) (not e!4432169))))

(assert (=> b!7410572 (= res!2983231 (dynLambda!29688 lambda!460022 (h!78358 (exprs!8856 setElem!56312))))))

(declare-fun b!7410573 () Bool)

(assert (=> b!7410573 (= e!4432169 (forall!18200 (t!386593 (exprs!8856 setElem!56312)) lambda!460022))))

(assert (= (and d!2292034 (not res!2983230)) b!7410572))

(assert (= (and b!7410572 res!2983231) b!7410573))

(declare-fun b_lambda!286617 () Bool)

(assert (=> (not b_lambda!286617) (not b!7410572)))

(declare-fun m!8046076 () Bool)

(assert (=> b!7410572 m!8046076))

(declare-fun m!8046078 () Bool)

(assert (=> b!7410573 m!8046078))

(assert (=> d!2291992 d!2292034))

(declare-fun bs!1924651 () Bool)

(declare-fun d!2292036 () Bool)

(assert (= bs!1924651 (and d!2292036 d!2291992)))

(declare-fun lambda!460030 () Int)

(assert (=> bs!1924651 (= lambda!460030 lambda!460022)))

(declare-fun bs!1924652 () Bool)

(assert (= bs!1924652 (and d!2292036 d!2292030)))

(assert (=> bs!1924652 (= lambda!460030 lambda!460028)))

(declare-fun bs!1924654 () Bool)

(assert (= bs!1924654 (and d!2292036 d!2291906)))

(assert (=> bs!1924654 (= lambda!460030 lambda!459999)))

(declare-fun bs!1924655 () Bool)

(assert (= bs!1924655 (and d!2292036 d!2291910)))

(assert (=> bs!1924655 (= lambda!460030 lambda!460001)))

(declare-fun bs!1924656 () Bool)

(assert (= bs!1924656 (and d!2292036 d!2291908)))

(assert (=> bs!1924656 (= lambda!460030 lambda!460000)))

(assert (=> d!2292036 (= (inv!91902 setElem!56319) (forall!18200 (exprs!8856 setElem!56319) lambda!460030))))

(declare-fun bs!1924658 () Bool)

(assert (= bs!1924658 d!2292036))

(declare-fun m!8046080 () Bool)

(assert (=> bs!1924658 m!8046080))

(assert (=> setNonEmpty!56319 d!2292036))

(declare-fun d!2292038 () Bool)

(assert (=> d!2292038 (= (nullable!8460 (regOne!39344 (h!78358 (exprs!8856 c!10532)))) (nullableFct!3407 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun bs!1924659 () Bool)

(assert (= bs!1924659 d!2292038))

(declare-fun m!8046082 () Bool)

(assert (=> bs!1924659 m!8046082))

(assert (=> b!7410452 d!2292038))

(declare-fun d!2292040 () Bool)

(declare-fun res!2983232 () Bool)

(declare-fun e!4432170 () Bool)

(assert (=> d!2292040 (=> res!2983232 e!4432170)))

(assert (=> d!2292040 (= res!2983232 (is-Nil!71910 (t!386593 (exprs!8856 setElem!56306))))))

(assert (=> d!2292040 (= (forall!18200 (t!386593 (exprs!8856 setElem!56306)) lambda!460000) e!4432170)))

(declare-fun b!7410574 () Bool)

(declare-fun e!4432171 () Bool)

(assert (=> b!7410574 (= e!4432170 e!4432171)))

(declare-fun res!2983233 () Bool)

(assert (=> b!7410574 (=> (not res!2983233) (not e!4432171))))

(assert (=> b!7410574 (= res!2983233 (dynLambda!29688 lambda!460000 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))

(declare-fun b!7410575 () Bool)

(assert (=> b!7410575 (= e!4432171 (forall!18200 (t!386593 (t!386593 (exprs!8856 setElem!56306))) lambda!460000))))

(assert (= (and d!2292040 (not res!2983232)) b!7410574))

(assert (= (and b!7410574 res!2983233) b!7410575))

(declare-fun b_lambda!286619 () Bool)

(assert (=> (not b_lambda!286619) (not b!7410574)))

(declare-fun m!8046086 () Bool)

(assert (=> b!7410574 m!8046086))

(declare-fun m!8046088 () Bool)

(assert (=> b!7410575 m!8046088))

(assert (=> b!7410411 d!2292040))

(declare-fun d!2292044 () Bool)

(declare-fun res!2983239 () Bool)

(declare-fun e!4432177 () Bool)

(assert (=> d!2292044 (=> res!2983239 e!4432177)))

(assert (=> d!2292044 (= res!2983239 (is-Nil!71911 (toList!11767 z!3451)))))

(assert (=> d!2292044 (= (forall!18202 (toList!11767 z!3451) lambda!460018) e!4432177)))

(declare-fun b!7410581 () Bool)

(declare-fun e!4432178 () Bool)

(assert (=> b!7410581 (= e!4432177 e!4432178)))

(declare-fun res!2983240 () Bool)

(assert (=> b!7410581 (=> (not res!2983240) (not e!4432178))))

(declare-fun dynLambda!29690 (Int Context!16712) Bool)

(assert (=> b!7410581 (= res!2983240 (dynLambda!29690 lambda!460018 (h!78359 (toList!11767 z!3451))))))

(declare-fun b!7410582 () Bool)

(assert (=> b!7410582 (= e!4432178 (forall!18202 (t!386594 (toList!11767 z!3451)) lambda!460018))))

(assert (= (and d!2292044 (not res!2983239)) b!7410581))

(assert (= (and b!7410581 res!2983240) b!7410582))

(declare-fun b_lambda!286621 () Bool)

(assert (=> (not b_lambda!286621) (not b!7410581)))

(declare-fun m!8046096 () Bool)

(assert (=> b!7410581 m!8046096))

(declare-fun m!8046098 () Bool)

(assert (=> b!7410582 m!8046098))

(assert (=> d!2291966 d!2292044))

(declare-fun d!2292048 () Bool)

(declare-fun res!2983241 () Bool)

(declare-fun e!4432179 () Bool)

(assert (=> d!2292048 (=> res!2983241 e!4432179)))

(assert (=> d!2292048 (= res!2983241 (is-Nil!71911 res!2983178))))

(assert (=> d!2292048 (= (noDuplicate!3109 res!2983178) e!4432179)))

(declare-fun b!7410583 () Bool)

(declare-fun e!4432180 () Bool)

(assert (=> b!7410583 (= e!4432179 e!4432180)))

(declare-fun res!2983242 () Bool)

(assert (=> b!7410583 (=> (not res!2983242) (not e!4432180))))

(assert (=> b!7410583 (= res!2983242 (not (contains!20851 (t!386594 res!2983178) (h!78359 res!2983178))))))

(declare-fun b!7410584 () Bool)

(assert (=> b!7410584 (= e!4432180 (noDuplicate!3109 (t!386594 res!2983178)))))

(assert (= (and d!2292048 (not res!2983241)) b!7410583))

(assert (= (and b!7410583 res!2983242) b!7410584))

(declare-fun m!8046100 () Bool)

(assert (=> b!7410583 m!8046100))

(declare-fun m!8046102 () Bool)

(assert (=> b!7410584 m!8046102))

(assert (=> d!2291962 d!2292048))

(declare-fun b!7410585 () Bool)

(declare-fun res!2983247 () Bool)

(declare-fun e!4432186 () Bool)

(assert (=> b!7410585 (=> res!2983247 e!4432186)))

(assert (=> b!7410585 (= res!2983247 (not (is-Concat!28261 (h!78358 (exprs!8856 empty!3611)))))))

(declare-fun e!4432185 () Bool)

(assert (=> b!7410585 (= e!4432185 e!4432186)))

(declare-fun b!7410586 () Bool)

(declare-fun e!4432187 () Bool)

(declare-fun call!682295 () Bool)

(assert (=> b!7410586 (= e!4432187 call!682295)))

(declare-fun b!7410587 () Bool)

(declare-fun e!4432181 () Bool)

(assert (=> b!7410587 (= e!4432181 e!4432185)))

(declare-fun c!1375558 () Bool)

(assert (=> b!7410587 (= c!1375558 (is-Union!19416 (h!78358 (exprs!8856 empty!3611))))))

(declare-fun bm!682288 () Bool)

(declare-fun call!682293 () Bool)

(declare-fun c!1375557 () Bool)

(assert (=> bm!682288 (= call!682293 (validRegex!9965 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))

(declare-fun bm!682289 () Bool)

(assert (=> bm!682289 (= call!682295 (validRegex!9965 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))

(declare-fun b!7410588 () Bool)

(declare-fun e!4432182 () Bool)

(assert (=> b!7410588 (= e!4432181 e!4432182)))

(declare-fun res!2983249 () Bool)

(assert (=> b!7410588 (= res!2983249 (not (nullable!8460 (reg!19745 (h!78358 (exprs!8856 empty!3611))))))))

(assert (=> b!7410588 (=> (not res!2983249) (not e!4432182))))

(declare-fun b!7410589 () Bool)

(assert (=> b!7410589 (= e!4432182 call!682293)))

(declare-fun bm!682290 () Bool)

(declare-fun call!682294 () Bool)

(assert (=> bm!682290 (= call!682294 call!682293)))

(declare-fun d!2292050 () Bool)

(declare-fun res!2983248 () Bool)

(declare-fun e!4432184 () Bool)

(assert (=> d!2292050 (=> res!2983248 e!4432184)))

(assert (=> d!2292050 (= res!2983248 (is-ElementMatch!19416 (h!78358 (exprs!8856 empty!3611))))))

(assert (=> d!2292050 (= (validRegex!9965 (h!78358 (exprs!8856 empty!3611))) e!4432184)))

(declare-fun b!7410590 () Bool)

(assert (=> b!7410590 (= e!4432184 e!4432181)))

(assert (=> b!7410590 (= c!1375557 (is-Star!19416 (h!78358 (exprs!8856 empty!3611))))))

(declare-fun b!7410591 () Bool)

(assert (=> b!7410591 (= e!4432186 e!4432187)))

(declare-fun res!2983246 () Bool)

(assert (=> b!7410591 (=> (not res!2983246) (not e!4432187))))

(assert (=> b!7410591 (= res!2983246 call!682294)))

(declare-fun b!7410592 () Bool)

(declare-fun e!4432183 () Bool)

(assert (=> b!7410592 (= e!4432183 call!682295)))

(declare-fun b!7410593 () Bool)

(declare-fun res!2983245 () Bool)

(assert (=> b!7410593 (=> (not res!2983245) (not e!4432183))))

(assert (=> b!7410593 (= res!2983245 call!682294)))

(assert (=> b!7410593 (= e!4432185 e!4432183)))

(assert (= (and d!2292050 (not res!2983248)) b!7410590))

(assert (= (and b!7410590 c!1375557) b!7410588))

(assert (= (and b!7410590 (not c!1375557)) b!7410587))

(assert (= (and b!7410588 res!2983249) b!7410589))

(assert (= (and b!7410587 c!1375558) b!7410593))

(assert (= (and b!7410587 (not c!1375558)) b!7410585))

(assert (= (and b!7410593 res!2983245) b!7410592))

(assert (= (and b!7410585 (not res!2983247)) b!7410591))

(assert (= (and b!7410591 res!2983246) b!7410586))

(assert (= (or b!7410593 b!7410591) bm!682290))

(assert (= (or b!7410592 b!7410586) bm!682289))

(assert (= (or b!7410589 bm!682290) bm!682288))

(declare-fun m!8046104 () Bool)

(assert (=> bm!682288 m!8046104))

(declare-fun m!8046106 () Bool)

(assert (=> bm!682289 m!8046106))

(declare-fun m!8046108 () Bool)

(assert (=> b!7410588 m!8046108))

(assert (=> bs!1924637 d!2292050))

(declare-fun bm!682291 () Bool)

(declare-fun call!682300 () (Set Context!16712))

(declare-fun call!682297 () List!72034)

(declare-fun c!1375561 () Bool)

(assert (=> bm!682291 (= call!682300 (derivationStepZipperDown!3212 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))) (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297)) (h!78360 s!7927)))))

(declare-fun b!7410594 () Bool)

(declare-fun e!4432192 () (Set Context!16712))

(declare-fun call!682298 () (Set Context!16712))

(assert (=> b!7410594 (= e!4432192 (set.union call!682300 call!682298))))

(declare-fun b!7410595 () Bool)

(declare-fun e!4432188 () (Set Context!16712))

(assert (=> b!7410595 (= e!4432188 (set.insert (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (as set.empty (Set Context!16712))))))

(declare-fun c!1375562 () Bool)

(declare-fun c!1375563 () Bool)

(declare-fun bm!682292 () Bool)

(assert (=> bm!682292 (= call!682297 ($colon$colon!3346 (exprs!8856 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273))) (ite (or c!1375562 c!1375563) (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun b!7410596 () Bool)

(declare-fun e!4432190 () (Set Context!16712))

(declare-fun call!682299 () (Set Context!16712))

(assert (=> b!7410596 (= e!4432190 call!682299)))

(declare-fun b!7410597 () Bool)

(assert (=> b!7410597 (= e!4432190 (as set.empty (Set Context!16712)))))

(declare-fun b!7410599 () Bool)

(declare-fun e!4432193 () (Set Context!16712))

(assert (=> b!7410599 (= e!4432193 call!682299)))

(declare-fun bm!682293 () Bool)

(declare-fun call!682301 () List!72034)

(assert (=> bm!682293 (= call!682301 call!682297)))

(declare-fun b!7410600 () Bool)

(declare-fun c!1375559 () Bool)

(assert (=> b!7410600 (= c!1375559 (is-Star!19416 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))

(assert (=> b!7410600 (= e!4432193 e!4432190)))

(declare-fun bm!682294 () Bool)

(declare-fun call!682296 () (Set Context!16712))

(assert (=> bm!682294 (= call!682296 (derivationStepZipperDown!3212 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))) (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301)) (h!78360 s!7927)))))

(declare-fun b!7410601 () Bool)

(declare-fun e!4432191 () (Set Context!16712))

(assert (=> b!7410601 (= e!4432191 (set.union call!682300 call!682296))))

(declare-fun b!7410602 () Bool)

(declare-fun e!4432189 () Bool)

(assert (=> b!7410602 (= e!4432189 (nullable!8460 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun b!7410603 () Bool)

(assert (=> b!7410603 (= e!4432188 e!4432191)))

(assert (=> b!7410603 (= c!1375561 (is-Union!19416 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun b!7410604 () Bool)

(assert (=> b!7410604 (= e!4432192 e!4432193)))

(assert (=> b!7410604 (= c!1375563 (is-Concat!28261 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun b!7410598 () Bool)

(assert (=> b!7410598 (= c!1375562 e!4432189)))

(declare-fun res!2983250 () Bool)

(assert (=> b!7410598 (=> (not res!2983250) (not e!4432189))))

(assert (=> b!7410598 (= res!2983250 (is-Concat!28261 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))

(assert (=> b!7410598 (= e!4432191 e!4432192)))

(declare-fun d!2292052 () Bool)

(declare-fun c!1375560 () Bool)

(assert (=> d!2292052 (= c!1375560 (and (is-ElementMatch!19416 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (= (c!1375502 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (h!78360 s!7927))))))

(assert (=> d!2292052 (= (derivationStepZipperDown!3212 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (h!78360 s!7927)) e!4432188)))

(declare-fun bm!682295 () Bool)

(assert (=> bm!682295 (= call!682298 call!682296)))

(declare-fun bm!682296 () Bool)

(assert (=> bm!682296 (= call!682299 call!682298)))

(assert (= (and d!2292052 c!1375560) b!7410595))

(assert (= (and d!2292052 (not c!1375560)) b!7410603))

(assert (= (and b!7410603 c!1375561) b!7410601))

(assert (= (and b!7410603 (not c!1375561)) b!7410598))

(assert (= (and b!7410598 res!2983250) b!7410602))

(assert (= (and b!7410598 c!1375562) b!7410594))

(assert (= (and b!7410598 (not c!1375562)) b!7410604))

(assert (= (and b!7410604 c!1375563) b!7410599))

(assert (= (and b!7410604 (not c!1375563)) b!7410600))

(assert (= (and b!7410600 c!1375559) b!7410596))

(assert (= (and b!7410600 (not c!1375559)) b!7410597))

(assert (= (or b!7410599 b!7410596) bm!682293))

(assert (= (or b!7410599 b!7410596) bm!682296))

(assert (= (or b!7410594 bm!682293) bm!682292))

(assert (= (or b!7410594 bm!682296) bm!682295))

(assert (= (or b!7410601 b!7410594) bm!682291))

(assert (= (or b!7410601 bm!682295) bm!682294))

(declare-fun m!8046110 () Bool)

(assert (=> bm!682292 m!8046110))

(declare-fun m!8046112 () Bool)

(assert (=> bm!682291 m!8046112))

(declare-fun m!8046114 () Bool)

(assert (=> bm!682294 m!8046114))

(declare-fun m!8046116 () Bool)

(assert (=> b!7410602 m!8046116))

(declare-fun m!8046118 () Bool)

(assert (=> b!7410595 m!8046118))

(assert (=> bm!682266 d!2292052))

(declare-fun bs!1924662 () Bool)

(declare-fun d!2292056 () Bool)

(assert (= bs!1924662 (and d!2292056 b!7410247)))

(declare-fun lambda!460031 () Int)

(assert (=> bs!1924662 (not (= lambda!460031 lambda!459987))))

(declare-fun bs!1924663 () Bool)

(assert (= bs!1924663 (and d!2292056 d!2291904)))

(assert (=> bs!1924663 (not (= lambda!460031 lambda!459996))))

(declare-fun bs!1924664 () Bool)

(assert (= bs!1924664 (and d!2292056 d!2291966)))

(assert (=> bs!1924664 (= (= lambda!459996 lambda!459987) (= lambda!460031 lambda!460018))))

(declare-fun bs!1924665 () Bool)

(assert (= bs!1924665 (and d!2292056 d!2291982)))

(assert (=> bs!1924665 (not (= lambda!460031 lambda!460021))))

(assert (=> d!2292056 true))

(assert (=> d!2292056 (< (dynLambda!29685 order!29555 lambda!459996) (dynLambda!29685 order!29555 lambda!460031))))

(assert (=> d!2292056 (= (exists!4788 (toList!11767 z!3451) lambda!459996) (not (forall!18202 (toList!11767 z!3451) lambda!460031)))))

(declare-fun bs!1924667 () Bool)

(assert (= bs!1924667 d!2292056))

(assert (=> bs!1924667 m!8045860))

(declare-fun m!8046124 () Bool)

(assert (=> bs!1924667 m!8046124))

(assert (=> d!2291980 d!2292056))

(assert (=> d!2291980 d!2291968))

(declare-fun d!2292060 () Bool)

(declare-fun res!2983254 () Bool)

(assert (=> d!2292060 (= res!2983254 (exists!4788 (toList!11767 z!3451) lambda!459996))))

(assert (=> d!2292060 true))

(assert (=> d!2292060 (= (choose!57477 z!3451 lambda!459996) res!2983254)))

(declare-fun bs!1924669 () Bool)

(assert (= bs!1924669 d!2292060))

(assert (=> bs!1924669 m!8045860))

(assert (=> bs!1924669 m!8045860))

(assert (=> bs!1924669 m!8045972))

(assert (=> d!2291980 d!2292060))

(assert (=> d!2291970 d!2291966))

(assert (=> d!2291970 d!2291968))

(declare-fun d!2292062 () Bool)

(assert (=> d!2292062 true))

(declare-fun setRes!56320 () Bool)

(assert (=> d!2292062 setRes!56320))

(declare-fun condSetEmpty!56320 () Bool)

(declare-fun res!2983255 () (Set Context!16712))

(assert (=> d!2292062 (= condSetEmpty!56320 (= res!2983255 (as set.empty (Set Context!16712))))))

(assert (=> d!2292062 (= (choose!57479 z!3451 lambda!460004) res!2983255)))

(declare-fun setIsEmpty!56320 () Bool)

(assert (=> setIsEmpty!56320 setRes!56320))

(declare-fun setNonEmpty!56320 () Bool)

(declare-fun tp!2120346 () Bool)

(declare-fun e!4432196 () Bool)

(declare-fun setElem!56320 () Context!16712)

(assert (=> setNonEmpty!56320 (= setRes!56320 (and tp!2120346 (inv!91902 setElem!56320) e!4432196))))

(declare-fun setRest!56320 () (Set Context!16712))

(assert (=> setNonEmpty!56320 (= res!2983255 (set.union (set.insert setElem!56320 (as set.empty (Set Context!16712))) setRest!56320))))

(declare-fun b!7410607 () Bool)

(declare-fun tp!2120345 () Bool)

(assert (=> b!7410607 (= e!4432196 tp!2120345)))

(assert (= (and d!2292062 condSetEmpty!56320) setIsEmpty!56320))

(assert (= (and d!2292062 (not condSetEmpty!56320)) setNonEmpty!56320))

(assert (= setNonEmpty!56320 b!7410607))

(declare-fun m!8046128 () Bool)

(assert (=> setNonEmpty!56320 m!8046128))

(assert (=> d!2291984 d!2292062))

(declare-fun b!7410622 () Bool)

(declare-fun e!4432214 () Bool)

(declare-fun e!4432210 () Bool)

(assert (=> b!7410622 (= e!4432214 e!4432210)))

(declare-fun res!2983269 () Bool)

(declare-fun call!682307 () Bool)

(assert (=> b!7410622 (= res!2983269 call!682307)))

(assert (=> b!7410622 (=> (not res!2983269) (not e!4432210))))

(declare-fun d!2292064 () Bool)

(declare-fun res!2983267 () Bool)

(declare-fun e!4432213 () Bool)

(assert (=> d!2292064 (=> res!2983267 e!4432213)))

(assert (=> d!2292064 (= res!2983267 (is-EmptyExpr!19416 (h!78358 (exprs!8856 c!10532))))))

(assert (=> d!2292064 (= (nullableFct!3407 (h!78358 (exprs!8856 c!10532))) e!4432213)))

(declare-fun b!7410623 () Bool)

(declare-fun e!4432212 () Bool)

(assert (=> b!7410623 (= e!4432214 e!4432212)))

(declare-fun res!2983266 () Bool)

(declare-fun call!682306 () Bool)

(assert (=> b!7410623 (= res!2983266 call!682306)))

(assert (=> b!7410623 (=> res!2983266 e!4432212)))

(declare-fun bm!682301 () Bool)

(declare-fun c!1375566 () Bool)

(assert (=> bm!682301 (= call!682306 (nullable!8460 (ite c!1375566 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7410624 () Bool)

(declare-fun e!4432209 () Bool)

(declare-fun e!4432211 () Bool)

(assert (=> b!7410624 (= e!4432209 e!4432211)))

(declare-fun res!2983268 () Bool)

(assert (=> b!7410624 (=> res!2983268 e!4432211)))

(assert (=> b!7410624 (= res!2983268 (is-Star!19416 (h!78358 (exprs!8856 c!10532))))))

(declare-fun bm!682302 () Bool)

(assert (=> bm!682302 (= call!682307 (nullable!8460 (ite c!1375566 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7410625 () Bool)

(assert (=> b!7410625 (= e!4432212 call!682307)))

(declare-fun b!7410626 () Bool)

(assert (=> b!7410626 (= e!4432211 e!4432214)))

(assert (=> b!7410626 (= c!1375566 (is-Union!19416 (h!78358 (exprs!8856 c!10532))))))

(declare-fun b!7410627 () Bool)

(assert (=> b!7410627 (= e!4432210 call!682306)))

(declare-fun b!7410628 () Bool)

(assert (=> b!7410628 (= e!4432213 e!4432209)))

(declare-fun res!2983270 () Bool)

(assert (=> b!7410628 (=> (not res!2983270) (not e!4432209))))

(assert (=> b!7410628 (= res!2983270 (and (not (is-EmptyLang!19416 (h!78358 (exprs!8856 c!10532)))) (not (is-ElementMatch!19416 (h!78358 (exprs!8856 c!10532))))))))

(assert (= (and d!2292064 (not res!2983267)) b!7410628))

(assert (= (and b!7410628 res!2983270) b!7410624))

(assert (= (and b!7410624 (not res!2983268)) b!7410626))

(assert (= (and b!7410626 c!1375566) b!7410623))

(assert (= (and b!7410626 (not c!1375566)) b!7410622))

(assert (= (and b!7410623 (not res!2983266)) b!7410625))

(assert (= (and b!7410622 res!2983269) b!7410627))

(assert (= (or b!7410625 b!7410622) bm!682302))

(assert (= (or b!7410623 b!7410627) bm!682301))

(declare-fun m!8046130 () Bool)

(assert (=> bm!682301 m!8046130))

(declare-fun m!8046132 () Bool)

(assert (=> bm!682302 m!8046132))

(assert (=> d!2291990 d!2292064))

(declare-fun d!2292068 () Bool)

(declare-fun c!1375567 () Bool)

(assert (=> d!2292068 (= c!1375567 (is-Nil!71911 res!2983178))))

(declare-fun e!4432215 () (Set Context!16712))

(assert (=> d!2292068 (= (content!15221 res!2983178) e!4432215)))

(declare-fun b!7410629 () Bool)

(assert (=> b!7410629 (= e!4432215 (as set.empty (Set Context!16712)))))

(declare-fun b!7410630 () Bool)

(assert (=> b!7410630 (= e!4432215 (set.union (set.insert (h!78359 res!2983178) (as set.empty (Set Context!16712))) (content!15221 (t!386594 res!2983178))))))

(assert (= (and d!2292068 c!1375567) b!7410629))

(assert (= (and d!2292068 (not c!1375567)) b!7410630))

(declare-fun m!8046134 () Bool)

(assert (=> b!7410630 m!8046134))

(declare-fun m!8046136 () Bool)

(assert (=> b!7410630 m!8046136))

(assert (=> b!7410395 d!2292068))

(declare-fun d!2292070 () Bool)

(assert (=> d!2292070 (= ($colon$colon!3346 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))) (ite (or c!1375535 c!1375536) (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (h!78358 (exprs!8856 c!10532)))) (Cons!71910 (ite (or c!1375535 c!1375536) (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (h!78358 (exprs!8856 c!10532))) (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))

(assert (=> bm!682264 d!2292070))

(declare-fun d!2292072 () Bool)

(declare-fun lt!2619033 () Bool)

(assert (=> d!2292072 (= lt!2619033 (set.member (h!78359 lt!2619016) (content!15221 (t!386594 lt!2619016))))))

(declare-fun e!4432233 () Bool)

(assert (=> d!2292072 (= lt!2619033 e!4432233)))

(declare-fun res!2983278 () Bool)

(assert (=> d!2292072 (=> (not res!2983278) (not e!4432233))))

(assert (=> d!2292072 (= res!2983278 (is-Cons!71911 (t!386594 lt!2619016)))))

(assert (=> d!2292072 (= (contains!20851 (t!386594 lt!2619016) (h!78359 lt!2619016)) lt!2619033)))

(declare-fun b!7410657 () Bool)

(declare-fun e!4432232 () Bool)

(assert (=> b!7410657 (= e!4432233 e!4432232)))

(declare-fun res!2983277 () Bool)

(assert (=> b!7410657 (=> res!2983277 e!4432232)))

(assert (=> b!7410657 (= res!2983277 (= (h!78359 (t!386594 lt!2619016)) (h!78359 lt!2619016)))))

(declare-fun b!7410658 () Bool)

(assert (=> b!7410658 (= e!4432232 (contains!20851 (t!386594 (t!386594 lt!2619016)) (h!78359 lt!2619016)))))

(assert (= (and d!2292072 res!2983278) b!7410657))

(assert (= (and b!7410657 (not res!2983277)) b!7410658))

(assert (=> d!2292072 m!8045988))

(declare-fun m!8046138 () Bool)

(assert (=> d!2292072 m!8046138))

(declare-fun m!8046140 () Bool)

(assert (=> b!7410658 m!8046140))

(assert (=> b!7410381 d!2292072))

(declare-fun bs!1924672 () Bool)

(declare-fun d!2292074 () Bool)

(assert (= bs!1924672 (and d!2292074 d!2291992)))

(declare-fun lambda!460033 () Int)

(assert (=> bs!1924672 (= lambda!460033 lambda!460022)))

(declare-fun bs!1924673 () Bool)

(assert (= bs!1924673 (and d!2292074 d!2292030)))

(assert (=> bs!1924673 (= lambda!460033 lambda!460028)))

(declare-fun bs!1924674 () Bool)

(assert (= bs!1924674 (and d!2292074 d!2291906)))

(assert (=> bs!1924674 (= lambda!460033 lambda!459999)))

(declare-fun bs!1924675 () Bool)

(assert (= bs!1924675 (and d!2292074 d!2291908)))

(assert (=> bs!1924675 (= lambda!460033 lambda!460000)))

(declare-fun bs!1924676 () Bool)

(assert (= bs!1924676 (and d!2292074 d!2291910)))

(assert (=> bs!1924676 (= lambda!460033 lambda!460001)))

(declare-fun bs!1924677 () Bool)

(assert (= bs!1924677 (and d!2292074 d!2292036)))

(assert (=> bs!1924677 (= lambda!460033 lambda!460030)))

(assert (=> d!2292074 (= (inv!91902 (h!78359 res!2983178)) (forall!18200 (exprs!8856 (h!78359 res!2983178)) lambda!460033))))

(declare-fun bs!1924678 () Bool)

(assert (= bs!1924678 d!2292074))

(declare-fun m!8046142 () Bool)

(assert (=> bs!1924678 m!8046142))

(assert (=> b!7410393 d!2292074))

(declare-fun d!2292076 () Bool)

(declare-fun res!2983279 () Bool)

(declare-fun e!4432234 () Bool)

(assert (=> d!2292076 (=> res!2983279 e!4432234)))

(assert (=> d!2292076 (= res!2983279 (is-Nil!71911 (t!386594 lt!2619016)))))

(assert (=> d!2292076 (= (noDuplicate!3109 (t!386594 lt!2619016)) e!4432234)))

(declare-fun b!7410659 () Bool)

(declare-fun e!4432235 () Bool)

(assert (=> b!7410659 (= e!4432234 e!4432235)))

(declare-fun res!2983280 () Bool)

(assert (=> b!7410659 (=> (not res!2983280) (not e!4432235))))

(assert (=> b!7410659 (= res!2983280 (not (contains!20851 (t!386594 (t!386594 lt!2619016)) (h!78359 (t!386594 lt!2619016)))))))

(declare-fun b!7410660 () Bool)

(assert (=> b!7410660 (= e!4432235 (noDuplicate!3109 (t!386594 (t!386594 lt!2619016))))))

(assert (= (and d!2292076 (not res!2983279)) b!7410659))

(assert (= (and b!7410659 res!2983280) b!7410660))

(declare-fun m!8046144 () Bool)

(assert (=> b!7410659 m!8046144))

(declare-fun m!8046146 () Bool)

(assert (=> b!7410660 m!8046146))

(assert (=> b!7410382 d!2292076))

(declare-fun d!2292078 () Bool)

(declare-fun res!2983281 () Bool)

(declare-fun e!4432236 () Bool)

(assert (=> d!2292078 (=> res!2983281 e!4432236)))

(assert (=> d!2292078 (= res!2983281 (is-Nil!71910 (t!386593 (exprs!8856 c!10532))))))

(assert (=> d!2292078 (= (forall!18200 (t!386593 (exprs!8856 c!10532)) lambda!460001) e!4432236)))

(declare-fun b!7410661 () Bool)

(declare-fun e!4432237 () Bool)

(assert (=> b!7410661 (= e!4432236 e!4432237)))

(declare-fun res!2983282 () Bool)

(assert (=> b!7410661 (=> (not res!2983282) (not e!4432237))))

(assert (=> b!7410661 (= res!2983282 (dynLambda!29688 lambda!460001 (h!78358 (t!386593 (exprs!8856 c!10532)))))))

(declare-fun b!7410662 () Bool)

(assert (=> b!7410662 (= e!4432237 (forall!18200 (t!386593 (t!386593 (exprs!8856 c!10532))) lambda!460001))))

(assert (= (and d!2292078 (not res!2983281)) b!7410661))

(assert (= (and b!7410661 res!2983282) b!7410662))

(declare-fun b_lambda!286625 () Bool)

(assert (=> (not b_lambda!286625) (not b!7410661)))

(declare-fun m!8046148 () Bool)

(assert (=> b!7410661 m!8046148))

(declare-fun m!8046150 () Bool)

(assert (=> b!7410662 m!8046150))

(assert (=> b!7410376 d!2292078))

(declare-fun bs!1924679 () Bool)

(declare-fun d!2292080 () Bool)

(assert (= bs!1924679 (and d!2292080 d!2291992)))

(declare-fun lambda!460034 () Int)

(assert (=> bs!1924679 (= lambda!460034 lambda!460022)))

(declare-fun bs!1924680 () Bool)

(assert (= bs!1924680 (and d!2292080 d!2292030)))

(assert (=> bs!1924680 (= lambda!460034 lambda!460028)))

(declare-fun bs!1924681 () Bool)

(assert (= bs!1924681 (and d!2292080 d!2292074)))

(assert (=> bs!1924681 (= lambda!460034 lambda!460033)))

(declare-fun bs!1924682 () Bool)

(assert (= bs!1924682 (and d!2292080 d!2291906)))

(assert (=> bs!1924682 (= lambda!460034 lambda!459999)))

(declare-fun bs!1924683 () Bool)

(assert (= bs!1924683 (and d!2292080 d!2291908)))

(assert (=> bs!1924683 (= lambda!460034 lambda!460000)))

(declare-fun bs!1924684 () Bool)

(assert (= bs!1924684 (and d!2292080 d!2291910)))

(assert (=> bs!1924684 (= lambda!460034 lambda!460001)))

(declare-fun bs!1924685 () Bool)

(assert (= bs!1924685 (and d!2292080 d!2292036)))

(assert (=> bs!1924685 (= lambda!460034 lambda!460030)))

(assert (=> d!2292080 (= (inv!91902 setElem!56318) (forall!18200 (exprs!8856 setElem!56318) lambda!460034))))

(declare-fun bs!1924686 () Bool)

(assert (= bs!1924686 d!2292080))

(declare-fun m!8046152 () Bool)

(assert (=> bs!1924686 m!8046152))

(assert (=> setNonEmpty!56318 d!2292080))

(declare-fun bm!682311 () Bool)

(declare-fun call!682320 () (Set Context!16712))

(declare-fun c!1375580 () Bool)

(declare-fun call!682317 () List!72034)

(assert (=> bm!682311 (= call!682320 (derivationStepZipperDown!3212 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317)) (h!78360 s!7927)))))

(declare-fun b!7410663 () Bool)

(declare-fun e!4432242 () (Set Context!16712))

(declare-fun call!682318 () (Set Context!16712))

(assert (=> b!7410663 (= e!4432242 (set.union call!682320 call!682318))))

(declare-fun b!7410664 () Bool)

(declare-fun e!4432238 () (Set Context!16712))

(assert (=> b!7410664 (= e!4432238 (set.insert (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (as set.empty (Set Context!16712))))))

(declare-fun c!1375581 () Bool)

(declare-fun bm!682312 () Bool)

(declare-fun c!1375582 () Bool)

(assert (=> bm!682312 (= call!682317 ($colon$colon!3346 (exprs!8856 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269))) (ite (or c!1375581 c!1375582) (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun b!7410665 () Bool)

(declare-fun e!4432240 () (Set Context!16712))

(declare-fun call!682319 () (Set Context!16712))

(assert (=> b!7410665 (= e!4432240 call!682319)))

(declare-fun b!7410666 () Bool)

(assert (=> b!7410666 (= e!4432240 (as set.empty (Set Context!16712)))))

(declare-fun b!7410668 () Bool)

(declare-fun e!4432243 () (Set Context!16712))

(assert (=> b!7410668 (= e!4432243 call!682319)))

(declare-fun bm!682313 () Bool)

(declare-fun call!682321 () List!72034)

(assert (=> bm!682313 (= call!682321 call!682317)))

(declare-fun b!7410669 () Bool)

(declare-fun c!1375578 () Bool)

(assert (=> b!7410669 (= c!1375578 (is-Star!19416 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(assert (=> b!7410669 (= e!4432243 e!4432240)))

(declare-fun call!682316 () (Set Context!16712))

(declare-fun bm!682314 () Bool)

(assert (=> bm!682314 (= call!682316 (derivationStepZipperDown!3212 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))) (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321)) (h!78360 s!7927)))))

(declare-fun b!7410670 () Bool)

(declare-fun e!4432241 () (Set Context!16712))

(assert (=> b!7410670 (= e!4432241 (set.union call!682320 call!682316))))

(declare-fun b!7410671 () Bool)

(declare-fun e!4432239 () Bool)

(assert (=> b!7410671 (= e!4432239 (nullable!8460 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun b!7410672 () Bool)

(assert (=> b!7410672 (= e!4432238 e!4432241)))

(assert (=> b!7410672 (= c!1375580 (is-Union!19416 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7410673 () Bool)

(assert (=> b!7410673 (= e!4432242 e!4432243)))

(assert (=> b!7410673 (= c!1375582 (is-Concat!28261 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7410667 () Bool)

(assert (=> b!7410667 (= c!1375581 e!4432239)))

(declare-fun res!2983283 () Bool)

(assert (=> b!7410667 (=> (not res!2983283) (not e!4432239))))

(assert (=> b!7410667 (= res!2983283 (is-Concat!28261 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(assert (=> b!7410667 (= e!4432241 e!4432242)))

(declare-fun d!2292082 () Bool)

(declare-fun c!1375579 () Bool)

(assert (=> d!2292082 (= c!1375579 (and (is-ElementMatch!19416 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (= (c!1375502 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (h!78360 s!7927))))))

(assert (=> d!2292082 (= (derivationStepZipperDown!3212 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (h!78360 s!7927)) e!4432238)))

(declare-fun bm!682315 () Bool)

(assert (=> bm!682315 (= call!682318 call!682316)))

(declare-fun bm!682316 () Bool)

(assert (=> bm!682316 (= call!682319 call!682318)))

(assert (= (and d!2292082 c!1375579) b!7410664))

(assert (= (and d!2292082 (not c!1375579)) b!7410672))

(assert (= (and b!7410672 c!1375580) b!7410670))

(assert (= (and b!7410672 (not c!1375580)) b!7410667))

(assert (= (and b!7410667 res!2983283) b!7410671))

(assert (= (and b!7410667 c!1375581) b!7410663))

(assert (= (and b!7410667 (not c!1375581)) b!7410673))

(assert (= (and b!7410673 c!1375582) b!7410668))

(assert (= (and b!7410673 (not c!1375582)) b!7410669))

(assert (= (and b!7410669 c!1375578) b!7410665))

(assert (= (and b!7410669 (not c!1375578)) b!7410666))

(assert (= (or b!7410668 b!7410665) bm!682313))

(assert (= (or b!7410668 b!7410665) bm!682316))

(assert (= (or b!7410663 bm!682313) bm!682312))

(assert (= (or b!7410663 bm!682316) bm!682315))

(assert (= (or b!7410670 b!7410663) bm!682311))

(assert (= (or b!7410670 bm!682315) bm!682314))

(declare-fun m!8046154 () Bool)

(assert (=> bm!682312 m!8046154))

(declare-fun m!8046156 () Bool)

(assert (=> bm!682311 m!8046156))

(declare-fun m!8046158 () Bool)

(assert (=> bm!682314 m!8046158))

(declare-fun m!8046160 () Bool)

(assert (=> b!7410671 m!8046160))

(declare-fun m!8046162 () Bool)

(assert (=> b!7410664 m!8046162))

(assert (=> bm!682263 d!2292082))

(declare-fun b!7410674 () Bool)

(declare-fun e!4432244 () Bool)

(assert (=> b!7410674 (= e!4432244 tp_is_empty!49095)))

(declare-fun b!7410677 () Bool)

(declare-fun tp!2120348 () Bool)

(declare-fun tp!2120347 () Bool)

(assert (=> b!7410677 (= e!4432244 (and tp!2120348 tp!2120347))))

(declare-fun b!7410676 () Bool)

(declare-fun tp!2120349 () Bool)

(assert (=> b!7410676 (= e!4432244 tp!2120349)))

(assert (=> b!7410482 (= tp!2120320 e!4432244)))

(declare-fun b!7410675 () Bool)

(declare-fun tp!2120351 () Bool)

(declare-fun tp!2120350 () Bool)

(assert (=> b!7410675 (= e!4432244 (and tp!2120351 tp!2120350))))

(assert (= (and b!7410482 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 c!10532))))) b!7410674))

(assert (= (and b!7410482 (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 c!10532))))) b!7410675))

(assert (= (and b!7410482 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 c!10532))))) b!7410676))

(assert (= (and b!7410482 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 c!10532))))) b!7410677))

(declare-fun b!7410678 () Bool)

(declare-fun e!4432245 () Bool)

(declare-fun tp!2120352 () Bool)

(declare-fun tp!2120353 () Bool)

(assert (=> b!7410678 (= e!4432245 (and tp!2120352 tp!2120353))))

(assert (=> b!7410482 (= tp!2120321 e!4432245)))

(assert (= (and b!7410482 (is-Cons!71910 (t!386593 (t!386593 (exprs!8856 c!10532))))) b!7410678))

(declare-fun b!7410679 () Bool)

(declare-fun e!4432246 () Bool)

(declare-fun tp!2120354 () Bool)

(declare-fun tp!2120355 () Bool)

(assert (=> b!7410679 (= e!4432246 (and tp!2120354 tp!2120355))))

(assert (=> b!7410458 (= tp!2120303 e!4432246)))

(assert (= (and b!7410458 (is-Cons!71910 (exprs!8856 _$3!583))) b!7410679))

(declare-fun b!7410680 () Bool)

(declare-fun e!4432247 () Bool)

(assert (=> b!7410680 (= e!4432247 tp_is_empty!49095)))

(declare-fun b!7410683 () Bool)

(declare-fun tp!2120357 () Bool)

(declare-fun tp!2120356 () Bool)

(assert (=> b!7410683 (= e!4432247 (and tp!2120357 tp!2120356))))

(declare-fun b!7410682 () Bool)

(declare-fun tp!2120358 () Bool)

(assert (=> b!7410682 (= e!4432247 tp!2120358)))

(assert (=> b!7410493 (= tp!2120334 e!4432247)))

(declare-fun b!7410681 () Bool)

(declare-fun tp!2120360 () Bool)

(declare-fun tp!2120359 () Bool)

(assert (=> b!7410681 (= e!4432247 (and tp!2120360 tp!2120359))))

(assert (= (and b!7410493 (is-ElementMatch!19416 (regOne!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410680))

(assert (= (and b!7410493 (is-Concat!28261 (regOne!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410681))

(assert (= (and b!7410493 (is-Star!19416 (regOne!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410682))

(assert (= (and b!7410493 (is-Union!19416 (regOne!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410683))

(declare-fun b!7410684 () Bool)

(declare-fun e!4432248 () Bool)

(assert (=> b!7410684 (= e!4432248 tp_is_empty!49095)))

(declare-fun b!7410687 () Bool)

(declare-fun tp!2120362 () Bool)

(declare-fun tp!2120361 () Bool)

(assert (=> b!7410687 (= e!4432248 (and tp!2120362 tp!2120361))))

(declare-fun b!7410686 () Bool)

(declare-fun tp!2120363 () Bool)

(assert (=> b!7410686 (= e!4432248 tp!2120363)))

(assert (=> b!7410493 (= tp!2120333 e!4432248)))

(declare-fun b!7410685 () Bool)

(declare-fun tp!2120365 () Bool)

(declare-fun tp!2120364 () Bool)

(assert (=> b!7410685 (= e!4432248 (and tp!2120365 tp!2120364))))

(assert (= (and b!7410493 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410684))

(assert (= (and b!7410493 (is-Concat!28261 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410685))

(assert (= (and b!7410493 (is-Star!19416 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410686))

(assert (= (and b!7410493 (is-Union!19416 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))))) b!7410687))

(declare-fun b!7410688 () Bool)

(declare-fun e!4432249 () Bool)

(assert (=> b!7410688 (= e!4432249 tp_is_empty!49095)))

(declare-fun b!7410691 () Bool)

(declare-fun tp!2120367 () Bool)

(declare-fun tp!2120366 () Bool)

(assert (=> b!7410691 (= e!4432249 (and tp!2120367 tp!2120366))))

(declare-fun b!7410690 () Bool)

(declare-fun tp!2120368 () Bool)

(assert (=> b!7410690 (= e!4432249 tp!2120368)))

(assert (=> b!7410491 (= tp!2120337 e!4432249)))

(declare-fun b!7410689 () Bool)

(declare-fun tp!2120370 () Bool)

(declare-fun tp!2120369 () Bool)

(assert (=> b!7410689 (= e!4432249 (and tp!2120370 tp!2120369))))

(assert (= (and b!7410491 (is-ElementMatch!19416 (regOne!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410688))

(assert (= (and b!7410491 (is-Concat!28261 (regOne!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410689))

(assert (= (and b!7410491 (is-Star!19416 (regOne!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410690))

(assert (= (and b!7410491 (is-Union!19416 (regOne!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410691))

(declare-fun b!7410692 () Bool)

(declare-fun e!4432250 () Bool)

(assert (=> b!7410692 (= e!4432250 tp_is_empty!49095)))

(declare-fun b!7410695 () Bool)

(declare-fun tp!2120372 () Bool)

(declare-fun tp!2120371 () Bool)

(assert (=> b!7410695 (= e!4432250 (and tp!2120372 tp!2120371))))

(declare-fun b!7410694 () Bool)

(declare-fun tp!2120373 () Bool)

(assert (=> b!7410694 (= e!4432250 tp!2120373)))

(assert (=> b!7410491 (= tp!2120336 e!4432250)))

(declare-fun b!7410693 () Bool)

(declare-fun tp!2120375 () Bool)

(declare-fun tp!2120374 () Bool)

(assert (=> b!7410693 (= e!4432250 (and tp!2120375 tp!2120374))))

(assert (= (and b!7410491 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410692))

(assert (= (and b!7410491 (is-Concat!28261 (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410693))

(assert (= (and b!7410491 (is-Star!19416 (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410694))

(assert (= (and b!7410491 (is-Union!19416 (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) b!7410695))

(declare-fun b!7410696 () Bool)

(declare-fun e!4432251 () Bool)

(assert (=> b!7410696 (= e!4432251 tp_is_empty!49095)))

(declare-fun b!7410699 () Bool)

(declare-fun tp!2120377 () Bool)

(declare-fun tp!2120376 () Bool)

(assert (=> b!7410699 (= e!4432251 (and tp!2120377 tp!2120376))))

(declare-fun b!7410698 () Bool)

(declare-fun tp!2120378 () Bool)

(assert (=> b!7410698 (= e!4432251 tp!2120378)))

(assert (=> b!7410492 (= tp!2120335 e!4432251)))

(declare-fun b!7410697 () Bool)

(declare-fun tp!2120380 () Bool)

(declare-fun tp!2120379 () Bool)

(assert (=> b!7410697 (= e!4432251 (and tp!2120380 tp!2120379))))

(assert (= (and b!7410492 (is-ElementMatch!19416 (reg!19745 (h!78358 (exprs!8856 empty!3611))))) b!7410696))

(assert (= (and b!7410492 (is-Concat!28261 (reg!19745 (h!78358 (exprs!8856 empty!3611))))) b!7410697))

(assert (= (and b!7410492 (is-Star!19416 (reg!19745 (h!78358 (exprs!8856 empty!3611))))) b!7410698))

(assert (= (and b!7410492 (is-Union!19416 (reg!19745 (h!78358 (exprs!8856 empty!3611))))) b!7410699))

(declare-fun b!7410700 () Bool)

(declare-fun e!4432252 () Bool)

(assert (=> b!7410700 (= e!4432252 tp_is_empty!49095)))

(declare-fun b!7410703 () Bool)

(declare-fun tp!2120382 () Bool)

(declare-fun tp!2120381 () Bool)

(assert (=> b!7410703 (= e!4432252 (and tp!2120382 tp!2120381))))

(declare-fun b!7410702 () Bool)

(declare-fun tp!2120383 () Bool)

(assert (=> b!7410702 (= e!4432252 tp!2120383)))

(assert (=> b!7410481 (= tp!2120316 e!4432252)))

(declare-fun b!7410701 () Bool)

(declare-fun tp!2120385 () Bool)

(declare-fun tp!2120384 () Bool)

(assert (=> b!7410701 (= e!4432252 (and tp!2120385 tp!2120384))))

(assert (= (and b!7410481 (is-ElementMatch!19416 (regOne!39345 (h!78358 (exprs!8856 c!10532))))) b!7410700))

(assert (= (and b!7410481 (is-Concat!28261 (regOne!39345 (h!78358 (exprs!8856 c!10532))))) b!7410701))

(assert (= (and b!7410481 (is-Star!19416 (regOne!39345 (h!78358 (exprs!8856 c!10532))))) b!7410702))

(assert (= (and b!7410481 (is-Union!19416 (regOne!39345 (h!78358 (exprs!8856 c!10532))))) b!7410703))

(declare-fun b!7410704 () Bool)

(declare-fun e!4432253 () Bool)

(assert (=> b!7410704 (= e!4432253 tp_is_empty!49095)))

(declare-fun b!7410707 () Bool)

(declare-fun tp!2120387 () Bool)

(declare-fun tp!2120386 () Bool)

(assert (=> b!7410707 (= e!4432253 (and tp!2120387 tp!2120386))))

(declare-fun b!7410706 () Bool)

(declare-fun tp!2120388 () Bool)

(assert (=> b!7410706 (= e!4432253 tp!2120388)))

(assert (=> b!7410481 (= tp!2120315 e!4432253)))

(declare-fun b!7410705 () Bool)

(declare-fun tp!2120390 () Bool)

(declare-fun tp!2120389 () Bool)

(assert (=> b!7410705 (= e!4432253 (and tp!2120390 tp!2120389))))

(assert (= (and b!7410481 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (exprs!8856 c!10532))))) b!7410704))

(assert (= (and b!7410481 (is-Concat!28261 (regTwo!39345 (h!78358 (exprs!8856 c!10532))))) b!7410705))

(assert (= (and b!7410481 (is-Star!19416 (regTwo!39345 (h!78358 (exprs!8856 c!10532))))) b!7410706))

(assert (= (and b!7410481 (is-Union!19416 (regTwo!39345 (h!78358 (exprs!8856 c!10532))))) b!7410707))

(declare-fun b!7410708 () Bool)

(declare-fun e!4432254 () Bool)

(assert (=> b!7410708 (= e!4432254 tp_is_empty!49095)))

(declare-fun b!7410711 () Bool)

(declare-fun tp!2120392 () Bool)

(declare-fun tp!2120391 () Bool)

(assert (=> b!7410711 (= e!4432254 (and tp!2120392 tp!2120391))))

(declare-fun b!7410710 () Bool)

(declare-fun tp!2120393 () Bool)

(assert (=> b!7410710 (= e!4432254 tp!2120393)))

(assert (=> b!7410479 (= tp!2120319 e!4432254)))

(declare-fun b!7410709 () Bool)

(declare-fun tp!2120395 () Bool)

(declare-fun tp!2120394 () Bool)

(assert (=> b!7410709 (= e!4432254 (and tp!2120395 tp!2120394))))

(assert (= (and b!7410479 (is-ElementMatch!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532))))) b!7410708))

(assert (= (and b!7410479 (is-Concat!28261 (regOne!39344 (h!78358 (exprs!8856 c!10532))))) b!7410709))

(assert (= (and b!7410479 (is-Star!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532))))) b!7410710))

(assert (= (and b!7410479 (is-Union!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532))))) b!7410711))

(declare-fun b!7410712 () Bool)

(declare-fun e!4432255 () Bool)

(assert (=> b!7410712 (= e!4432255 tp_is_empty!49095)))

(declare-fun b!7410715 () Bool)

(declare-fun tp!2120397 () Bool)

(declare-fun tp!2120396 () Bool)

(assert (=> b!7410715 (= e!4432255 (and tp!2120397 tp!2120396))))

(declare-fun b!7410714 () Bool)

(declare-fun tp!2120398 () Bool)

(assert (=> b!7410714 (= e!4432255 tp!2120398)))

(assert (=> b!7410479 (= tp!2120318 e!4432255)))

(declare-fun b!7410713 () Bool)

(declare-fun tp!2120400 () Bool)

(declare-fun tp!2120399 () Bool)

(assert (=> b!7410713 (= e!4432255 (and tp!2120400 tp!2120399))))

(assert (= (and b!7410479 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) b!7410712))

(assert (= (and b!7410479 (is-Concat!28261 (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) b!7410713))

(assert (= (and b!7410479 (is-Star!19416 (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) b!7410714))

(assert (= (and b!7410479 (is-Union!19416 (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) b!7410715))

(declare-fun b!7410716 () Bool)

(declare-fun e!4432256 () Bool)

(assert (=> b!7410716 (= e!4432256 tp_is_empty!49095)))

(declare-fun b!7410719 () Bool)

(declare-fun tp!2120402 () Bool)

(declare-fun tp!2120401 () Bool)

(assert (=> b!7410719 (= e!4432256 (and tp!2120402 tp!2120401))))

(declare-fun b!7410718 () Bool)

(declare-fun tp!2120403 () Bool)

(assert (=> b!7410718 (= e!4432256 tp!2120403)))

(assert (=> b!7410480 (= tp!2120317 e!4432256)))

(declare-fun b!7410717 () Bool)

(declare-fun tp!2120405 () Bool)

(declare-fun tp!2120404 () Bool)

(assert (=> b!7410717 (= e!4432256 (and tp!2120405 tp!2120404))))

(assert (= (and b!7410480 (is-ElementMatch!19416 (reg!19745 (h!78358 (exprs!8856 c!10532))))) b!7410716))

(assert (= (and b!7410480 (is-Concat!28261 (reg!19745 (h!78358 (exprs!8856 c!10532))))) b!7410717))

(assert (= (and b!7410480 (is-Star!19416 (reg!19745 (h!78358 (exprs!8856 c!10532))))) b!7410718))

(assert (= (and b!7410480 (is-Union!19416 (reg!19745 (h!78358 (exprs!8856 c!10532))))) b!7410719))

(declare-fun b!7410720 () Bool)

(declare-fun e!4432257 () Bool)

(declare-fun tp!2120406 () Bool)

(declare-fun tp!2120407 () Bool)

(assert (=> b!7410720 (= e!4432257 (and tp!2120406 tp!2120407))))

(assert (=> b!7410484 (= tp!2120324 e!4432257)))

(assert (= (and b!7410484 (is-Cons!71910 (exprs!8856 setElem!56319))) b!7410720))

(declare-fun condSetEmpty!56321 () Bool)

(assert (=> setNonEmpty!56319 (= condSetEmpty!56321 (= setRest!56319 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56321 () Bool)

(assert (=> setNonEmpty!56319 (= tp!2120325 setRes!56321)))

(declare-fun setIsEmpty!56321 () Bool)

(assert (=> setIsEmpty!56321 setRes!56321))

(declare-fun setNonEmpty!56321 () Bool)

(declare-fun tp!2120409 () Bool)

(declare-fun setElem!56321 () Context!16712)

(declare-fun e!4432258 () Bool)

(assert (=> setNonEmpty!56321 (= setRes!56321 (and tp!2120409 (inv!91902 setElem!56321) e!4432258))))

(declare-fun setRest!56321 () (Set Context!16712))

(assert (=> setNonEmpty!56321 (= setRest!56319 (set.union (set.insert setElem!56321 (as set.empty (Set Context!16712))) setRest!56321))))

(declare-fun b!7410721 () Bool)

(declare-fun tp!2120408 () Bool)

(assert (=> b!7410721 (= e!4432258 tp!2120408)))

(assert (= (and setNonEmpty!56319 condSetEmpty!56321) setIsEmpty!56321))

(assert (= (and setNonEmpty!56319 (not condSetEmpty!56321)) setNonEmpty!56321))

(assert (= setNonEmpty!56321 b!7410721))

(declare-fun m!8046164 () Bool)

(assert (=> setNonEmpty!56321 m!8046164))

(declare-fun b!7410722 () Bool)

(declare-fun e!4432259 () Bool)

(assert (=> b!7410722 (= e!4432259 tp_is_empty!49095)))

(declare-fun b!7410725 () Bool)

(declare-fun tp!2120411 () Bool)

(declare-fun tp!2120410 () Bool)

(assert (=> b!7410725 (= e!4432259 (and tp!2120411 tp!2120410))))

(declare-fun b!7410724 () Bool)

(declare-fun tp!2120412 () Bool)

(assert (=> b!7410724 (= e!4432259 tp!2120412)))

(assert (=> b!7410489 (= tp!2120331 e!4432259)))

(declare-fun b!7410723 () Bool)

(declare-fun tp!2120414 () Bool)

(declare-fun tp!2120413 () Bool)

(assert (=> b!7410723 (= e!4432259 (and tp!2120414 tp!2120413))))

(assert (= (and b!7410489 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306))))) b!7410722))

(assert (= (and b!7410489 (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 setElem!56306))))) b!7410723))

(assert (= (and b!7410489 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306))))) b!7410724))

(assert (= (and b!7410489 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306))))) b!7410725))

(declare-fun b!7410726 () Bool)

(declare-fun e!4432260 () Bool)

(declare-fun tp!2120415 () Bool)

(declare-fun tp!2120416 () Bool)

(assert (=> b!7410726 (= e!4432260 (and tp!2120415 tp!2120416))))

(assert (=> b!7410489 (= tp!2120332 e!4432260)))

(assert (= (and b!7410489 (is-Cons!71910 (t!386593 (t!386593 (exprs!8856 setElem!56306))))) b!7410726))

(declare-fun b!7410727 () Bool)

(declare-fun e!4432261 () Bool)

(assert (=> b!7410727 (= e!4432261 tp_is_empty!49095)))

(declare-fun b!7410730 () Bool)

(declare-fun tp!2120418 () Bool)

(declare-fun tp!2120417 () Bool)

(assert (=> b!7410730 (= e!4432261 (and tp!2120418 tp!2120417))))

(declare-fun b!7410729 () Bool)

(declare-fun tp!2120419 () Bool)

(assert (=> b!7410729 (= e!4432261 tp!2120419)))

(assert (=> b!7410488 (= tp!2120327 e!4432261)))

(declare-fun b!7410728 () Bool)

(declare-fun tp!2120421 () Bool)

(declare-fun tp!2120420 () Bool)

(assert (=> b!7410728 (= e!4432261 (and tp!2120421 tp!2120420))))

(assert (= (and b!7410488 (is-ElementMatch!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410727))

(assert (= (and b!7410488 (is-Concat!28261 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410728))

(assert (= (and b!7410488 (is-Star!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410729))

(assert (= (and b!7410488 (is-Union!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410730))

(declare-fun b!7410731 () Bool)

(declare-fun e!4432262 () Bool)

(assert (=> b!7410731 (= e!4432262 tp_is_empty!49095)))

(declare-fun b!7410734 () Bool)

(declare-fun tp!2120423 () Bool)

(declare-fun tp!2120422 () Bool)

(assert (=> b!7410734 (= e!4432262 (and tp!2120423 tp!2120422))))

(declare-fun b!7410733 () Bool)

(declare-fun tp!2120424 () Bool)

(assert (=> b!7410733 (= e!4432262 tp!2120424)))

(assert (=> b!7410488 (= tp!2120326 e!4432262)))

(declare-fun b!7410732 () Bool)

(declare-fun tp!2120426 () Bool)

(declare-fun tp!2120425 () Bool)

(assert (=> b!7410732 (= e!4432262 (and tp!2120426 tp!2120425))))

(assert (= (and b!7410488 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410731))

(assert (= (and b!7410488 (is-Concat!28261 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410732))

(assert (= (and b!7410488 (is-Star!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410733))

(assert (= (and b!7410488 (is-Union!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))))) b!7410734))

(declare-fun b!7410735 () Bool)

(declare-fun e!4432263 () Bool)

(assert (=> b!7410735 (= e!4432263 tp_is_empty!49095)))

(declare-fun b!7410738 () Bool)

(declare-fun tp!2120428 () Bool)

(declare-fun tp!2120427 () Bool)

(assert (=> b!7410738 (= e!4432263 (and tp!2120428 tp!2120427))))

(declare-fun b!7410737 () Bool)

(declare-fun tp!2120429 () Bool)

(assert (=> b!7410737 (= e!4432263 tp!2120429)))

(assert (=> b!7410487 (= tp!2120328 e!4432263)))

(declare-fun b!7410736 () Bool)

(declare-fun tp!2120431 () Bool)

(declare-fun tp!2120430 () Bool)

(assert (=> b!7410736 (= e!4432263 (and tp!2120431 tp!2120430))))

(assert (= (and b!7410487 (is-ElementMatch!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56306))))) b!7410735))

(assert (= (and b!7410487 (is-Concat!28261 (reg!19745 (h!78358 (exprs!8856 setElem!56306))))) b!7410736))

(assert (= (and b!7410487 (is-Star!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56306))))) b!7410737))

(assert (= (and b!7410487 (is-Union!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56306))))) b!7410738))

(declare-fun b!7410739 () Bool)

(declare-fun e!4432264 () Bool)

(declare-fun tp!2120432 () Bool)

(declare-fun tp!2120433 () Bool)

(assert (=> b!7410739 (= e!4432264 (and tp!2120432 tp!2120433))))

(assert (=> b!7410416 (= tp!2120299 e!4432264)))

(assert (= (and b!7410416 (is-Cons!71910 (exprs!8856 setElem!56318))) b!7410739))

(declare-fun b!7410747 () Bool)

(declare-fun e!4432270 () Bool)

(declare-fun tp!2120438 () Bool)

(assert (=> b!7410747 (= e!4432270 tp!2120438)))

(declare-fun tp!2120439 () Bool)

(declare-fun b!7410746 () Bool)

(declare-fun e!4432269 () Bool)

(assert (=> b!7410746 (= e!4432269 (and (inv!91902 (h!78359 (t!386594 res!2983178))) e!4432270 tp!2120439))))

(assert (=> b!7410393 (= tp!2120278 e!4432269)))

(assert (= b!7410746 b!7410747))

(assert (= (and b!7410393 (is-Cons!71911 (t!386594 res!2983178))) b!7410746))

(declare-fun m!8046166 () Bool)

(assert (=> b!7410746 m!8046166))

(declare-fun b!7410748 () Bool)

(declare-fun e!4432271 () Bool)

(declare-fun tp!2120440 () Bool)

(declare-fun tp!2120441 () Bool)

(assert (=> b!7410748 (= e!4432271 (and tp!2120440 tp!2120441))))

(assert (=> b!7410394 (= tp!2120279 e!4432271)))

(assert (= (and b!7410394 (is-Cons!71910 (exprs!8856 (h!78359 res!2983178)))) b!7410748))

(declare-fun b!7410749 () Bool)

(declare-fun e!4432272 () Bool)

(assert (=> b!7410749 (= e!4432272 tp_is_empty!49095)))

(declare-fun b!7410752 () Bool)

(declare-fun tp!2120443 () Bool)

(declare-fun tp!2120442 () Bool)

(assert (=> b!7410752 (= e!4432272 (and tp!2120443 tp!2120442))))

(declare-fun b!7410751 () Bool)

(declare-fun tp!2120444 () Bool)

(assert (=> b!7410751 (= e!4432272 tp!2120444)))

(assert (=> b!7410483 (= tp!2120322 e!4432272)))

(declare-fun b!7410750 () Bool)

(declare-fun tp!2120446 () Bool)

(declare-fun tp!2120445 () Bool)

(assert (=> b!7410750 (= e!4432272 (and tp!2120446 tp!2120445))))

(assert (= (and b!7410483 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56312)))) b!7410749))

(assert (= (and b!7410483 (is-Concat!28261 (h!78358 (exprs!8856 setElem!56312)))) b!7410750))

(assert (= (and b!7410483 (is-Star!19416 (h!78358 (exprs!8856 setElem!56312)))) b!7410751))

(assert (= (and b!7410483 (is-Union!19416 (h!78358 (exprs!8856 setElem!56312)))) b!7410752))

(declare-fun b!7410753 () Bool)

(declare-fun e!4432273 () Bool)

(declare-fun tp!2120447 () Bool)

(declare-fun tp!2120448 () Bool)

(assert (=> b!7410753 (= e!4432273 (and tp!2120447 tp!2120448))))

(assert (=> b!7410483 (= tp!2120323 e!4432273)))

(assert (= (and b!7410483 (is-Cons!71910 (t!386593 (exprs!8856 setElem!56312)))) b!7410753))

(declare-fun b!7410754 () Bool)

(declare-fun e!4432274 () Bool)

(declare-fun tp!2120449 () Bool)

(assert (=> b!7410754 (= e!4432274 (and tp_is_empty!49095 tp!2120449))))

(assert (=> b!7410467 (= tp!2120304 e!4432274)))

(assert (= (and b!7410467 (is-Cons!71912 (t!386595 (t!386595 (t!386595 s!7927))))) b!7410754))

(declare-fun b!7410755 () Bool)

(declare-fun e!4432275 () Bool)

(assert (=> b!7410755 (= e!4432275 tp_is_empty!49095)))

(declare-fun b!7410758 () Bool)

(declare-fun tp!2120451 () Bool)

(declare-fun tp!2120450 () Bool)

(assert (=> b!7410758 (= e!4432275 (and tp!2120451 tp!2120450))))

(declare-fun b!7410757 () Bool)

(declare-fun tp!2120452 () Bool)

(assert (=> b!7410757 (= e!4432275 tp!2120452)))

(assert (=> b!7410486 (= tp!2120330 e!4432275)))

(declare-fun b!7410756 () Bool)

(declare-fun tp!2120454 () Bool)

(declare-fun tp!2120453 () Bool)

(assert (=> b!7410756 (= e!4432275 (and tp!2120454 tp!2120453))))

(assert (= (and b!7410486 (is-ElementMatch!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410755))

(assert (= (and b!7410486 (is-Concat!28261 (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410756))

(assert (= (and b!7410486 (is-Star!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410757))

(assert (= (and b!7410486 (is-Union!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410758))

(declare-fun b!7410759 () Bool)

(declare-fun e!4432276 () Bool)

(assert (=> b!7410759 (= e!4432276 tp_is_empty!49095)))

(declare-fun b!7410762 () Bool)

(declare-fun tp!2120456 () Bool)

(declare-fun tp!2120455 () Bool)

(assert (=> b!7410762 (= e!4432276 (and tp!2120456 tp!2120455))))

(declare-fun b!7410761 () Bool)

(declare-fun tp!2120457 () Bool)

(assert (=> b!7410761 (= e!4432276 tp!2120457)))

(assert (=> b!7410486 (= tp!2120329 e!4432276)))

(declare-fun b!7410760 () Bool)

(declare-fun tp!2120459 () Bool)

(declare-fun tp!2120458 () Bool)

(assert (=> b!7410760 (= e!4432276 (and tp!2120459 tp!2120458))))

(assert (= (and b!7410486 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410759))

(assert (= (and b!7410486 (is-Concat!28261 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410760))

(assert (= (and b!7410486 (is-Star!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410761))

(assert (= (and b!7410486 (is-Union!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) b!7410762))

(declare-fun condSetEmpty!56322 () Bool)

(assert (=> setNonEmpty!56318 (= condSetEmpty!56322 (= setRest!56318 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56322 () Bool)

(assert (=> setNonEmpty!56318 (= tp!2120300 setRes!56322)))

(declare-fun setIsEmpty!56322 () Bool)

(assert (=> setIsEmpty!56322 setRes!56322))

(declare-fun e!4432277 () Bool)

(declare-fun tp!2120461 () Bool)

(declare-fun setElem!56322 () Context!16712)

(declare-fun setNonEmpty!56322 () Bool)

(assert (=> setNonEmpty!56322 (= setRes!56322 (and tp!2120461 (inv!91902 setElem!56322) e!4432277))))

(declare-fun setRest!56322 () (Set Context!16712))

(assert (=> setNonEmpty!56322 (= setRest!56318 (set.union (set.insert setElem!56322 (as set.empty (Set Context!16712))) setRest!56322))))

(declare-fun b!7410763 () Bool)

(declare-fun tp!2120460 () Bool)

(assert (=> b!7410763 (= e!4432277 tp!2120460)))

(assert (= (and setNonEmpty!56318 condSetEmpty!56322) setIsEmpty!56322))

(assert (= (and setNonEmpty!56318 (not condSetEmpty!56322)) setNonEmpty!56322))

(assert (= setNonEmpty!56322 b!7410763))

(declare-fun m!8046168 () Bool)

(assert (=> setNonEmpty!56322 m!8046168))

(declare-fun b!7410764 () Bool)

(declare-fun e!4432278 () Bool)

(assert (=> b!7410764 (= e!4432278 tp_is_empty!49095)))

(declare-fun b!7410767 () Bool)

(declare-fun tp!2120463 () Bool)

(declare-fun tp!2120462 () Bool)

(assert (=> b!7410767 (= e!4432278 (and tp!2120463 tp!2120462))))

(declare-fun b!7410766 () Bool)

(declare-fun tp!2120464 () Bool)

(assert (=> b!7410766 (= e!4432278 tp!2120464)))

(assert (=> b!7410494 (= tp!2120338 e!4432278)))

(declare-fun b!7410765 () Bool)

(declare-fun tp!2120466 () Bool)

(declare-fun tp!2120465 () Bool)

(assert (=> b!7410765 (= e!4432278 (and tp!2120466 tp!2120465))))

(assert (= (and b!7410494 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 empty!3611))))) b!7410764))

(assert (= (and b!7410494 (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 empty!3611))))) b!7410765))

(assert (= (and b!7410494 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 empty!3611))))) b!7410766))

(assert (= (and b!7410494 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 empty!3611))))) b!7410767))

(declare-fun b!7410768 () Bool)

(declare-fun e!4432279 () Bool)

(declare-fun tp!2120467 () Bool)

(declare-fun tp!2120468 () Bool)

(assert (=> b!7410768 (= e!4432279 (and tp!2120467 tp!2120468))))

(assert (=> b!7410494 (= tp!2120339 e!4432279)))

(assert (= (and b!7410494 (is-Cons!71910 (t!386593 (t!386593 (exprs!8856 empty!3611))))) b!7410768))

(declare-fun b_lambda!286627 () Bool)

(assert (= b_lambda!286615 (or d!2291906 b_lambda!286627)))

(declare-fun bs!1924687 () Bool)

(declare-fun d!2292084 () Bool)

(assert (= bs!1924687 (and d!2292084 d!2291906)))

(assert (=> bs!1924687 (= (dynLambda!29688 lambda!459999 (h!78358 (t!386593 (exprs!8856 empty!3611)))) (validRegex!9965 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))

(declare-fun m!8046170 () Bool)

(assert (=> bs!1924687 m!8046170))

(assert (=> b!7410554 d!2292084))

(declare-fun b_lambda!286629 () Bool)

(assert (= b_lambda!286617 (or d!2291992 b_lambda!286629)))

(declare-fun bs!1924688 () Bool)

(declare-fun d!2292086 () Bool)

(assert (= bs!1924688 (and d!2292086 d!2291992)))

(assert (=> bs!1924688 (= (dynLambda!29688 lambda!460022 (h!78358 (exprs!8856 setElem!56312))) (validRegex!9965 (h!78358 (exprs!8856 setElem!56312))))))

(declare-fun m!8046172 () Bool)

(assert (=> bs!1924688 m!8046172))

(assert (=> b!7410572 d!2292086))

(declare-fun b_lambda!286631 () Bool)

(assert (= b_lambda!286625 (or d!2291910 b_lambda!286631)))

(declare-fun bs!1924689 () Bool)

(declare-fun d!2292088 () Bool)

(assert (= bs!1924689 (and d!2292088 d!2291910)))

(assert (=> bs!1924689 (= (dynLambda!29688 lambda!460001 (h!78358 (t!386593 (exprs!8856 c!10532)))) (validRegex!9965 (h!78358 (t!386593 (exprs!8856 c!10532)))))))

(declare-fun m!8046174 () Bool)

(assert (=> bs!1924689 m!8046174))

(assert (=> b!7410661 d!2292088))

(declare-fun b_lambda!286633 () Bool)

(assert (= b_lambda!286621 (or d!2291966 b_lambda!286633)))

(declare-fun bs!1924690 () Bool)

(declare-fun d!2292090 () Bool)

(assert (= bs!1924690 (and d!2292090 d!2291966)))

(assert (=> bs!1924690 (= (dynLambda!29690 lambda!460018 (h!78359 (toList!11767 z!3451))) (not (dynLambda!29690 lambda!459987 (h!78359 (toList!11767 z!3451)))))))

(declare-fun b_lambda!286637 () Bool)

(assert (=> (not b_lambda!286637) (not bs!1924690)))

(declare-fun m!8046176 () Bool)

(assert (=> bs!1924690 m!8046176))

(assert (=> b!7410581 d!2292090))

(declare-fun b_lambda!286635 () Bool)

(assert (= b_lambda!286619 (or d!2291908 b_lambda!286635)))

(declare-fun bs!1924691 () Bool)

(declare-fun d!2292092 () Bool)

(assert (= bs!1924691 (and d!2292092 d!2291908)))

(assert (=> bs!1924691 (= (dynLambda!29688 lambda!460000 (h!78358 (t!386593 (exprs!8856 setElem!56306)))) (validRegex!9965 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))

(declare-fun m!8046178 () Bool)

(assert (=> bs!1924691 m!8046178))

(assert (=> b!7410574 d!2292092))

(push 1)

(assert (not b_lambda!286637))

(assert (not b!7410575))

(assert (not b!7410662))

(assert (not b!7410733))

(assert (not bm!682271))

(assert (not b!7410738))

(assert (not b!7410588))

(assert (not d!2292028))

(assert (not d!2292072))

(assert (not b!7410681))

(assert (not b!7410726))

(assert (not b!7410583))

(assert (not b!7410718))

(assert (not b!7410711))

(assert (not b!7410602))

(assert tp_is_empty!49095)

(assert (not bm!682289))

(assert (not d!2292038))

(assert (not b!7410503))

(assert (not d!2292022))

(assert (not setNonEmpty!56320))

(assert (not b!7410677))

(assert (not d!2292060))

(assert (not bm!682286))

(assert (not d!2292080))

(assert (not b!7410756))

(assert (not b!7410725))

(assert (not b!7410747))

(assert (not b!7410763))

(assert (not b!7410695))

(assert (not b!7410750))

(assert (not b!7410715))

(assert (not b!7410728))

(assert (not b!7410564))

(assert (not b!7410730))

(assert (not b!7410713))

(assert (not b!7410702))

(assert (not b!7410761))

(assert (not b!7410707))

(assert (not b!7410767))

(assert (not b!7410560))

(assert (not b!7410519))

(assert (not b_lambda!286631))

(assert (not b!7410706))

(assert (not b!7410573))

(assert (not bm!682273))

(assert (not bm!682288))

(assert (not b!7410584))

(assert (not b!7410720))

(assert (not bm!682291))

(assert (not b!7410736))

(assert (not bs!1924687))

(assert (not b!7410739))

(assert (not b!7410660))

(assert (not b!7410721))

(assert (not setNonEmpty!56321))

(assert (not b!7410697))

(assert (not b!7410768))

(assert (not b!7410676))

(assert (not b!7410719))

(assert (not b!7410752))

(assert (not b!7410698))

(assert (not b_lambda!286609))

(assert (not b!7410682))

(assert (not b!7410548))

(assert (not b!7410699))

(assert (not d!2292030))

(assert (not b!7410689))

(assert (not bm!682285))

(assert (not b!7410737))

(assert (not bs!1924688))

(assert (not b!7410717))

(assert (not b!7410748))

(assert (not b_lambda!286635))

(assert (not bm!682311))

(assert (not b!7410694))

(assert (not b!7410556))

(assert (not bm!682301))

(assert (not b!7410760))

(assert (not bm!682270))

(assert (not b!7410729))

(assert (not b!7410709))

(assert (not b!7410734))

(assert (not bm!682294))

(assert (not b!7410724))

(assert (not d!2292074))

(assert (not b!7410559))

(assert (not b!7410710))

(assert (not b!7410687))

(assert (not b!7410607))

(assert (not b!7410557))

(assert (not bs!1924691))

(assert (not b!7410683))

(assert (not b!7410658))

(assert (not b!7410703))

(assert (not b_lambda!286629))

(assert (not b_lambda!286627))

(assert (not b!7410714))

(assert (not b_lambda!286633))

(assert (not setNonEmpty!56322))

(assert (not bm!682312))

(assert (not b!7410671))

(assert (not bs!1924689))

(assert (not b!7410758))

(assert (not bm!682292))

(assert (not b!7410679))

(assert (not b!7410686))

(assert (not b!7410505))

(assert (not b!7410690))

(assert (not b!7410732))

(assert (not b!7410765))

(assert (not b!7410766))

(assert (not b!7410685))

(assert (not b!7410746))

(assert (not bm!682314))

(assert (not bm!682282))

(assert (not b!7410723))

(assert (not d!2292056))

(assert (not b!7410754))

(assert (not b!7410675))

(assert (not b!7410523))

(assert (not b!7410751))

(assert (not b!7410705))

(assert (not d!2292036))

(assert (not b!7410582))

(assert (not b!7410630))

(assert (not b!7410691))

(assert (not b!7410659))

(assert (not b!7410555))

(assert (not b!7410753))

(assert (not b!7410757))

(assert (not bm!682269))

(assert (not b!7410762))

(assert (not b!7410558))

(assert (not b_lambda!286607))

(assert (not bm!682302))

(assert (not b!7410693))

(assert (not b_lambda!286605))

(assert (not b!7410510))

(assert (not bm!682283))

(assert (not d!2292026))

(assert (not b!7410678))

(assert (not b!7410701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!286667 () Bool)

(assert (= b_lambda!286637 (or b!7410247 b_lambda!286667)))

(declare-fun bs!1924737 () Bool)

(declare-fun d!2292188 () Bool)

(assert (= bs!1924737 (and d!2292188 b!7410247)))

(assert (=> bs!1924737 (= (dynLambda!29690 lambda!459987 (h!78359 (toList!11767 z!3451))) (set.member lt!2619000 (derivationStepZipperUp!2820 (h!78359 (toList!11767 z!3451)) (head!15228 s!7927))))))

(declare-fun m!8046372 () Bool)

(assert (=> bs!1924737 m!8046372))

(declare-fun m!8046374 () Bool)

(assert (=> bs!1924737 m!8046374))

(assert (=> bs!1924690 d!2292188))

(push 1)

(assert (not b!7410575))

(assert (not b!7410662))

(assert (not b!7410733))

(assert (not bm!682271))

(assert (not b!7410738))

(assert (not b!7410588))

(assert (not d!2292028))

(assert (not d!2292072))

(assert (not b!7410681))

(assert (not b!7410726))

(assert (not b!7410583))

(assert (not b!7410718))

(assert (not b!7410711))

(assert (not b!7410602))

(assert tp_is_empty!49095)

(assert (not bm!682289))

(assert (not d!2292038))

(assert (not b!7410503))

(assert (not d!2292022))

(assert (not setNonEmpty!56320))

(assert (not b!7410677))

(assert (not d!2292060))

(assert (not bm!682286))

(assert (not d!2292080))

(assert (not b_lambda!286667))

(assert (not b!7410756))

(assert (not b!7410725))

(assert (not b!7410747))

(assert (not b!7410763))

(assert (not b!7410695))

(assert (not b!7410750))

(assert (not b!7410715))

(assert (not b!7410728))

(assert (not b!7410564))

(assert (not b!7410730))

(assert (not b!7410713))

(assert (not b!7410702))

(assert (not b!7410761))

(assert (not b!7410707))

(assert (not b!7410767))

(assert (not b!7410560))

(assert (not b!7410519))

(assert (not b_lambda!286631))

(assert (not b!7410706))

(assert (not b!7410573))

(assert (not bm!682273))

(assert (not bm!682288))

(assert (not b!7410584))

(assert (not b!7410720))

(assert (not bm!682291))

(assert (not b!7410736))

(assert (not bs!1924687))

(assert (not b!7410739))

(assert (not b!7410660))

(assert (not b!7410721))

(assert (not setNonEmpty!56321))

(assert (not b!7410697))

(assert (not b!7410768))

(assert (not b!7410676))

(assert (not b!7410719))

(assert (not b!7410752))

(assert (not b!7410698))

(assert (not b_lambda!286609))

(assert (not b!7410682))

(assert (not b!7410548))

(assert (not b!7410699))

(assert (not d!2292030))

(assert (not b!7410689))

(assert (not bm!682285))

(assert (not b!7410737))

(assert (not bs!1924688))

(assert (not b!7410717))

(assert (not b!7410748))

(assert (not b_lambda!286635))

(assert (not bm!682311))

(assert (not b!7410694))

(assert (not b!7410556))

(assert (not bm!682301))

(assert (not b!7410760))

(assert (not bm!682270))

(assert (not b!7410729))

(assert (not b!7410709))

(assert (not b!7410734))

(assert (not bm!682294))

(assert (not b!7410724))

(assert (not d!2292074))

(assert (not b!7410559))

(assert (not b!7410710))

(assert (not b!7410687))

(assert (not b!7410607))

(assert (not b!7410557))

(assert (not bs!1924691))

(assert (not b!7410683))

(assert (not bs!1924737))

(assert (not b!7410658))

(assert (not b!7410703))

(assert (not b_lambda!286629))

(assert (not b_lambda!286627))

(assert (not b!7410714))

(assert (not b_lambda!286633))

(assert (not setNonEmpty!56322))

(assert (not bm!682312))

(assert (not b!7410671))

(assert (not bs!1924689))

(assert (not b!7410758))

(assert (not bm!682292))

(assert (not b!7410679))

(assert (not b!7410686))

(assert (not b!7410505))

(assert (not b!7410690))

(assert (not b!7410732))

(assert (not b!7410765))

(assert (not b!7410766))

(assert (not b!7410685))

(assert (not b!7410746))

(assert (not bm!682314))

(assert (not bm!682282))

(assert (not b!7410723))

(assert (not d!2292056))

(assert (not b!7410754))

(assert (not b!7410675))

(assert (not b!7410523))

(assert (not b!7410751))

(assert (not b!7410705))

(assert (not d!2292036))

(assert (not b!7410582))

(assert (not b!7410630))

(assert (not b!7410691))

(assert (not b!7410659))

(assert (not b!7410555))

(assert (not b!7410753))

(assert (not b!7410757))

(assert (not bm!682269))

(assert (not b!7410762))

(assert (not b!7410558))

(assert (not b_lambda!286607))

(assert (not bm!682302))

(assert (not b!7410693))

(assert (not b_lambda!286605))

(assert (not b!7410510))

(assert (not bm!682283))

(assert (not d!2292026))

(assert (not b!7410678))

(assert (not b!7410701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7411072 () Bool)

(declare-fun res!2983377 () Bool)

(declare-fun e!4432469 () Bool)

(assert (=> b!7411072 (=> res!2983377 e!4432469)))

(assert (=> b!7411072 (= res!2983377 (not (is-Concat!28261 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun e!4432468 () Bool)

(assert (=> b!7411072 (= e!4432468 e!4432469)))

(declare-fun b!7411073 () Bool)

(declare-fun e!4432470 () Bool)

(declare-fun call!682375 () Bool)

(assert (=> b!7411073 (= e!4432470 call!682375)))

(declare-fun b!7411074 () Bool)

(declare-fun e!4432464 () Bool)

(assert (=> b!7411074 (= e!4432464 e!4432468)))

(declare-fun c!1375627 () Bool)

(assert (=> b!7411074 (= c!1375627 (is-Union!19416 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun c!1375626 () Bool)

(declare-fun call!682373 () Bool)

(declare-fun bm!682368 () Bool)

(assert (=> bm!682368 (= call!682373 (validRegex!9965 (ite c!1375626 (reg!19745 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (ite c!1375627 (regOne!39345 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (regOne!39344 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))))

(declare-fun bm!682369 () Bool)

(assert (=> bm!682369 (= call!682375 (validRegex!9965 (ite c!1375627 (regTwo!39345 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (regTwo!39344 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411075 () Bool)

(declare-fun e!4432465 () Bool)

(assert (=> b!7411075 (= e!4432464 e!4432465)))

(declare-fun res!2983379 () Bool)

(assert (=> b!7411075 (= res!2983379 (not (nullable!8460 (reg!19745 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))

(assert (=> b!7411075 (=> (not res!2983379) (not e!4432465))))

(declare-fun b!7411076 () Bool)

(assert (=> b!7411076 (= e!4432465 call!682373)))

(declare-fun bm!682370 () Bool)

(declare-fun call!682374 () Bool)

(assert (=> bm!682370 (= call!682374 call!682373)))

(declare-fun d!2292190 () Bool)

(declare-fun res!2983378 () Bool)

(declare-fun e!4432467 () Bool)

(assert (=> d!2292190 (=> res!2983378 e!4432467)))

(assert (=> d!2292190 (= res!2983378 (is-ElementMatch!19416 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(assert (=> d!2292190 (= (validRegex!9965 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) e!4432467)))

(declare-fun b!7411077 () Bool)

(assert (=> b!7411077 (= e!4432467 e!4432464)))

(assert (=> b!7411077 (= c!1375626 (is-Star!19416 (ite c!1375553 (reg!19745 (h!78358 (exprs!8856 c!10532))) (ite c!1375554 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun b!7411078 () Bool)

(assert (=> b!7411078 (= e!4432469 e!4432470)))

(declare-fun res!2983376 () Bool)

(assert (=> b!7411078 (=> (not res!2983376) (not e!4432470))))

(assert (=> b!7411078 (= res!2983376 call!682374)))

(declare-fun b!7411079 () Bool)

(declare-fun e!4432466 () Bool)

(assert (=> b!7411079 (= e!4432466 call!682375)))

(declare-fun b!7411080 () Bool)

(declare-fun res!2983375 () Bool)

(assert (=> b!7411080 (=> (not res!2983375) (not e!4432466))))

(assert (=> b!7411080 (= res!2983375 call!682374)))

(assert (=> b!7411080 (= e!4432468 e!4432466)))

(assert (= (and d!2292190 (not res!2983378)) b!7411077))

(assert (= (and b!7411077 c!1375626) b!7411075))

(assert (= (and b!7411077 (not c!1375626)) b!7411074))

(assert (= (and b!7411075 res!2983379) b!7411076))

(assert (= (and b!7411074 c!1375627) b!7411080))

(assert (= (and b!7411074 (not c!1375627)) b!7411072))

(assert (= (and b!7411080 res!2983375) b!7411079))

(assert (= (and b!7411072 (not res!2983377)) b!7411078))

(assert (= (and b!7411078 res!2983376) b!7411073))

(assert (= (or b!7411080 b!7411078) bm!682370))

(assert (= (or b!7411079 b!7411073) bm!682369))

(assert (= (or b!7411076 bm!682370) bm!682368))

(declare-fun m!8046376 () Bool)

(assert (=> bm!682368 m!8046376))

(declare-fun m!8046378 () Bool)

(assert (=> bm!682369 m!8046378))

(declare-fun m!8046380 () Bool)

(assert (=> b!7411075 m!8046380))

(assert (=> bm!682282 d!2292190))

(declare-fun d!2292192 () Bool)

(declare-fun lt!2619038 () Bool)

(assert (=> d!2292192 (= lt!2619038 (set.member (h!78359 res!2983178) (content!15221 (t!386594 res!2983178))))))

(declare-fun e!4432472 () Bool)

(assert (=> d!2292192 (= lt!2619038 e!4432472)))

(declare-fun res!2983381 () Bool)

(assert (=> d!2292192 (=> (not res!2983381) (not e!4432472))))

(assert (=> d!2292192 (= res!2983381 (is-Cons!71911 (t!386594 res!2983178)))))

(assert (=> d!2292192 (= (contains!20851 (t!386594 res!2983178) (h!78359 res!2983178)) lt!2619038)))

(declare-fun b!7411081 () Bool)

(declare-fun e!4432471 () Bool)

(assert (=> b!7411081 (= e!4432472 e!4432471)))

(declare-fun res!2983380 () Bool)

(assert (=> b!7411081 (=> res!2983380 e!4432471)))

(assert (=> b!7411081 (= res!2983380 (= (h!78359 (t!386594 res!2983178)) (h!78359 res!2983178)))))

(declare-fun b!7411082 () Bool)

(assert (=> b!7411082 (= e!4432471 (contains!20851 (t!386594 (t!386594 res!2983178)) (h!78359 res!2983178)))))

(assert (= (and d!2292192 res!2983381) b!7411081))

(assert (= (and b!7411081 (not res!2983380)) b!7411082))

(assert (=> d!2292192 m!8046136))

(declare-fun m!8046382 () Bool)

(assert (=> d!2292192 m!8046382))

(declare-fun m!8046384 () Bool)

(assert (=> b!7411082 m!8046384))

(assert (=> b!7410583 d!2292192))

(assert (=> d!2292060 d!2292056))

(assert (=> d!2292060 d!2291968))

(declare-fun d!2292194 () Bool)

(declare-fun c!1375628 () Bool)

(assert (=> d!2292194 (= c!1375628 (is-Nil!71911 (t!386594 res!2983178)))))

(declare-fun e!4432473 () (Set Context!16712))

(assert (=> d!2292194 (= (content!15221 (t!386594 res!2983178)) e!4432473)))

(declare-fun b!7411083 () Bool)

(assert (=> b!7411083 (= e!4432473 (as set.empty (Set Context!16712)))))

(declare-fun b!7411084 () Bool)

(assert (=> b!7411084 (= e!4432473 (set.union (set.insert (h!78359 (t!386594 res!2983178)) (as set.empty (Set Context!16712))) (content!15221 (t!386594 (t!386594 res!2983178)))))))

(assert (= (and d!2292194 c!1375628) b!7411083))

(assert (= (and d!2292194 (not c!1375628)) b!7411084))

(declare-fun m!8046386 () Bool)

(assert (=> b!7411084 m!8046386))

(declare-fun m!8046388 () Bool)

(assert (=> b!7411084 m!8046388))

(assert (=> b!7410630 d!2292194))

(declare-fun b!7411085 () Bool)

(declare-fun res!2983384 () Bool)

(declare-fun e!4432479 () Bool)

(assert (=> b!7411085 (=> res!2983384 e!4432479)))

(assert (=> b!7411085 (= res!2983384 (not (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 c!10532))))))))

(declare-fun e!4432478 () Bool)

(assert (=> b!7411085 (= e!4432478 e!4432479)))

(declare-fun b!7411086 () Bool)

(declare-fun e!4432480 () Bool)

(declare-fun call!682378 () Bool)

(assert (=> b!7411086 (= e!4432480 call!682378)))

(declare-fun b!7411087 () Bool)

(declare-fun e!4432474 () Bool)

(assert (=> b!7411087 (= e!4432474 e!4432478)))

(declare-fun c!1375630 () Bool)

(assert (=> b!7411087 (= c!1375630 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 c!10532)))))))

(declare-fun bm!682371 () Bool)

(declare-fun c!1375629 () Bool)

(declare-fun call!682376 () Bool)

(assert (=> bm!682371 (= call!682376 (validRegex!9965 (ite c!1375629 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))) (ite c!1375630 (regOne!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))) (regOne!39344 (h!78358 (t!386593 (exprs!8856 c!10532))))))))))

(declare-fun bm!682372 () Bool)

(assert (=> bm!682372 (= call!682378 (validRegex!9965 (ite c!1375630 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))) (regTwo!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun b!7411088 () Bool)

(declare-fun e!4432475 () Bool)

(assert (=> b!7411088 (= e!4432474 e!4432475)))

(declare-fun res!2983386 () Bool)

(assert (=> b!7411088 (= res!2983386 (not (nullable!8460 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))))))))

(assert (=> b!7411088 (=> (not res!2983386) (not e!4432475))))

(declare-fun b!7411089 () Bool)

(assert (=> b!7411089 (= e!4432475 call!682376)))

(declare-fun bm!682373 () Bool)

(declare-fun call!682377 () Bool)

(assert (=> bm!682373 (= call!682377 call!682376)))

(declare-fun d!2292196 () Bool)

(declare-fun res!2983385 () Bool)

(declare-fun e!4432477 () Bool)

(assert (=> d!2292196 (=> res!2983385 e!4432477)))

(assert (=> d!2292196 (= res!2983385 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 c!10532)))))))

(assert (=> d!2292196 (= (validRegex!9965 (h!78358 (t!386593 (exprs!8856 c!10532)))) e!4432477)))

(declare-fun b!7411090 () Bool)

(assert (=> b!7411090 (= e!4432477 e!4432474)))

(assert (=> b!7411090 (= c!1375629 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 c!10532)))))))

(declare-fun b!7411091 () Bool)

(assert (=> b!7411091 (= e!4432479 e!4432480)))

(declare-fun res!2983383 () Bool)

(assert (=> b!7411091 (=> (not res!2983383) (not e!4432480))))

(assert (=> b!7411091 (= res!2983383 call!682377)))

(declare-fun b!7411092 () Bool)

(declare-fun e!4432476 () Bool)

(assert (=> b!7411092 (= e!4432476 call!682378)))

(declare-fun b!7411093 () Bool)

(declare-fun res!2983382 () Bool)

(assert (=> b!7411093 (=> (not res!2983382) (not e!4432476))))

(assert (=> b!7411093 (= res!2983382 call!682377)))

(assert (=> b!7411093 (= e!4432478 e!4432476)))

(assert (= (and d!2292196 (not res!2983385)) b!7411090))

(assert (= (and b!7411090 c!1375629) b!7411088))

(assert (= (and b!7411090 (not c!1375629)) b!7411087))

(assert (= (and b!7411088 res!2983386) b!7411089))

(assert (= (and b!7411087 c!1375630) b!7411093))

(assert (= (and b!7411087 (not c!1375630)) b!7411085))

(assert (= (and b!7411093 res!2983382) b!7411092))

(assert (= (and b!7411085 (not res!2983384)) b!7411091))

(assert (= (and b!7411091 res!2983383) b!7411086))

(assert (= (or b!7411093 b!7411091) bm!682373))

(assert (= (or b!7411092 b!7411086) bm!682372))

(assert (= (or b!7411089 bm!682373) bm!682371))

(declare-fun m!8046390 () Bool)

(assert (=> bm!682371 m!8046390))

(declare-fun m!8046392 () Bool)

(assert (=> bm!682372 m!8046392))

(declare-fun m!8046394 () Bool)

(assert (=> b!7411088 m!8046394))

(assert (=> bs!1924689 d!2292196))

(declare-fun bm!682374 () Bool)

(declare-fun call!682383 () (Set Context!16712))

(declare-fun call!682380 () List!72034)

(declare-fun c!1375633 () Bool)

(assert (=> bm!682374 (= call!682383 (derivationStepZipperDown!3212 (ite c!1375633 (regOne!39345 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (regOne!39344 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (ite c!1375633 (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276)) (Context!16713 call!682380)) (h!78360 s!7927)))))

(declare-fun b!7411094 () Bool)

(declare-fun e!4432485 () (Set Context!16712))

(declare-fun call!682381 () (Set Context!16712))

(assert (=> b!7411094 (= e!4432485 (set.union call!682383 call!682381))))

(declare-fun b!7411095 () Bool)

(declare-fun e!4432481 () (Set Context!16712))

(assert (=> b!7411095 (= e!4432481 (set.insert (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276)) (as set.empty (Set Context!16712))))))

(declare-fun c!1375634 () Bool)

(declare-fun c!1375635 () Bool)

(declare-fun bm!682375 () Bool)

(assert (=> bm!682375 (= call!682380 ($colon$colon!3346 (exprs!8856 (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276))) (ite (or c!1375634 c!1375635) (regTwo!39344 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411096 () Bool)

(declare-fun e!4432483 () (Set Context!16712))

(declare-fun call!682382 () (Set Context!16712))

(assert (=> b!7411096 (= e!4432483 call!682382)))

(declare-fun b!7411097 () Bool)

(assert (=> b!7411097 (= e!4432483 (as set.empty (Set Context!16712)))))

(declare-fun b!7411099 () Bool)

(declare-fun e!4432486 () (Set Context!16712))

(assert (=> b!7411099 (= e!4432486 call!682382)))

(declare-fun bm!682376 () Bool)

(declare-fun call!682384 () List!72034)

(assert (=> bm!682376 (= call!682384 call!682380)))

(declare-fun b!7411100 () Bool)

(declare-fun c!1375631 () Bool)

(assert (=> b!7411100 (= c!1375631 (is-Star!19416 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(assert (=> b!7411100 (= e!4432486 e!4432483)))

(declare-fun call!682379 () (Set Context!16712))

(declare-fun bm!682377 () Bool)

(assert (=> bm!682377 (= call!682379 (derivationStepZipperDown!3212 (ite c!1375633 (regTwo!39345 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (ite c!1375634 (regTwo!39344 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (ite c!1375635 (regOne!39344 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (reg!19745 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))) (ite (or c!1375633 c!1375634) (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276)) (Context!16713 call!682384)) (h!78360 s!7927)))))

(declare-fun b!7411101 () Bool)

(declare-fun e!4432484 () (Set Context!16712))

(assert (=> b!7411101 (= e!4432484 (set.union call!682383 call!682379))))

(declare-fun b!7411102 () Bool)

(declare-fun e!4432482 () Bool)

(assert (=> b!7411102 (= e!4432482 (nullable!8460 (regOne!39344 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411103 () Bool)

(assert (=> b!7411103 (= e!4432481 e!4432484)))

(assert (=> b!7411103 (= c!1375633 (is-Union!19416 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411104 () Bool)

(assert (=> b!7411104 (= e!4432485 e!4432486)))

(assert (=> b!7411104 (= c!1375635 (is-Concat!28261 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411098 () Bool)

(assert (=> b!7411098 (= c!1375634 e!4432482)))

(declare-fun res!2983387 () Bool)

(assert (=> b!7411098 (=> (not res!2983387) (not e!4432482))))

(assert (=> b!7411098 (= res!2983387 (is-Concat!28261 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(assert (=> b!7411098 (= e!4432484 e!4432485)))

(declare-fun c!1375632 () Bool)

(declare-fun d!2292198 () Bool)

(assert (=> d!2292198 (= c!1375632 (and (is-ElementMatch!19416 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (= (c!1375502 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (h!78360 s!7927))))))

(assert (=> d!2292198 (= (derivationStepZipperDown!3212 (ite c!1375545 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (ite c!1375545 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682276)) (h!78360 s!7927)) e!4432481)))

(declare-fun bm!682378 () Bool)

(assert (=> bm!682378 (= call!682381 call!682379)))

(declare-fun bm!682379 () Bool)

(assert (=> bm!682379 (= call!682382 call!682381)))

(assert (= (and d!2292198 c!1375632) b!7411095))

(assert (= (and d!2292198 (not c!1375632)) b!7411103))

(assert (= (and b!7411103 c!1375633) b!7411101))

(assert (= (and b!7411103 (not c!1375633)) b!7411098))

(assert (= (and b!7411098 res!2983387) b!7411102))

(assert (= (and b!7411098 c!1375634) b!7411094))

(assert (= (and b!7411098 (not c!1375634)) b!7411104))

(assert (= (and b!7411104 c!1375635) b!7411099))

(assert (= (and b!7411104 (not c!1375635)) b!7411100))

(assert (= (and b!7411100 c!1375631) b!7411096))

(assert (= (and b!7411100 (not c!1375631)) b!7411097))

(assert (= (or b!7411099 b!7411096) bm!682376))

(assert (= (or b!7411099 b!7411096) bm!682379))

(assert (= (or b!7411094 bm!682376) bm!682375))

(assert (= (or b!7411094 bm!682379) bm!682378))

(assert (= (or b!7411101 b!7411094) bm!682374))

(assert (= (or b!7411101 bm!682378) bm!682377))

(declare-fun m!8046396 () Bool)

(assert (=> bm!682375 m!8046396))

(declare-fun m!8046398 () Bool)

(assert (=> bm!682374 m!8046398))

(declare-fun m!8046400 () Bool)

(assert (=> bm!682377 m!8046400))

(declare-fun m!8046402 () Bool)

(assert (=> b!7411102 m!8046402))

(declare-fun m!8046404 () Bool)

(assert (=> b!7411095 m!8046404))

(assert (=> bm!682270 d!2292198))

(declare-fun d!2292200 () Bool)

(declare-fun res!2983388 () Bool)

(declare-fun e!4432487 () Bool)

(assert (=> d!2292200 (=> res!2983388 e!4432487)))

(assert (=> d!2292200 (= res!2983388 (is-Nil!71910 (exprs!8856 _$3!583)))))

(assert (=> d!2292200 (= (forall!18200 (exprs!8856 _$3!583) lambda!460028) e!4432487)))

(declare-fun b!7411105 () Bool)

(declare-fun e!4432488 () Bool)

(assert (=> b!7411105 (= e!4432487 e!4432488)))

(declare-fun res!2983389 () Bool)

(assert (=> b!7411105 (=> (not res!2983389) (not e!4432488))))

(assert (=> b!7411105 (= res!2983389 (dynLambda!29688 lambda!460028 (h!78358 (exprs!8856 _$3!583))))))

(declare-fun b!7411106 () Bool)

(assert (=> b!7411106 (= e!4432488 (forall!18200 (t!386593 (exprs!8856 _$3!583)) lambda!460028))))

(assert (= (and d!2292200 (not res!2983388)) b!7411105))

(assert (= (and b!7411105 res!2983389) b!7411106))

(declare-fun b_lambda!286669 () Bool)

(assert (=> (not b_lambda!286669) (not b!7411105)))

(declare-fun m!8046406 () Bool)

(assert (=> b!7411105 m!8046406))

(declare-fun m!8046408 () Bool)

(assert (=> b!7411106 m!8046408))

(assert (=> d!2292030 d!2292200))

(declare-fun b!7411107 () Bool)

(declare-fun e!4432494 () Bool)

(declare-fun e!4432490 () Bool)

(assert (=> b!7411107 (= e!4432494 e!4432490)))

(declare-fun res!2983393 () Bool)

(declare-fun call!682386 () Bool)

(assert (=> b!7411107 (= res!2983393 call!682386)))

(assert (=> b!7411107 (=> (not res!2983393) (not e!4432490))))

(declare-fun d!2292202 () Bool)

(declare-fun res!2983391 () Bool)

(declare-fun e!4432493 () Bool)

(assert (=> d!2292202 (=> res!2983391 e!4432493)))

(assert (=> d!2292202 (= res!2983391 (is-EmptyExpr!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(assert (=> d!2292202 (= (nullableFct!3407 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) e!4432493)))

(declare-fun b!7411108 () Bool)

(declare-fun e!4432492 () Bool)

(assert (=> b!7411108 (= e!4432494 e!4432492)))

(declare-fun res!2983390 () Bool)

(declare-fun call!682385 () Bool)

(assert (=> b!7411108 (= res!2983390 call!682385)))

(assert (=> b!7411108 (=> res!2983390 e!4432492)))

(declare-fun bm!682380 () Bool)

(declare-fun c!1375636 () Bool)

(assert (=> bm!682380 (= call!682385 (nullable!8460 (ite c!1375636 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411109 () Bool)

(declare-fun e!4432489 () Bool)

(declare-fun e!4432491 () Bool)

(assert (=> b!7411109 (= e!4432489 e!4432491)))

(declare-fun res!2983392 () Bool)

(assert (=> b!7411109 (=> res!2983392 e!4432491)))

(assert (=> b!7411109 (= res!2983392 (is-Star!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun bm!682381 () Bool)

(assert (=> bm!682381 (= call!682386 (nullable!8460 (ite c!1375636 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411110 () Bool)

(assert (=> b!7411110 (= e!4432492 call!682386)))

(declare-fun b!7411111 () Bool)

(assert (=> b!7411111 (= e!4432491 e!4432494)))

(assert (=> b!7411111 (= c!1375636 (is-Union!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))

(declare-fun b!7411112 () Bool)

(assert (=> b!7411112 (= e!4432490 call!682385)))

(declare-fun b!7411113 () Bool)

(assert (=> b!7411113 (= e!4432493 e!4432489)))

(declare-fun res!2983394 () Bool)

(assert (=> b!7411113 (=> (not res!2983394) (not e!4432489))))

(assert (=> b!7411113 (= res!2983394 (and (not (is-EmptyLang!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (not (is-ElementMatch!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(assert (= (and d!2292202 (not res!2983391)) b!7411113))

(assert (= (and b!7411113 res!2983394) b!7411109))

(assert (= (and b!7411109 (not res!2983392)) b!7411111))

(assert (= (and b!7411111 c!1375636) b!7411108))

(assert (= (and b!7411111 (not c!1375636)) b!7411107))

(assert (= (and b!7411108 (not res!2983390)) b!7411110))

(assert (= (and b!7411107 res!2983393) b!7411112))

(assert (= (or b!7411110 b!7411107) bm!682381))

(assert (= (or b!7411108 b!7411112) bm!682380))

(declare-fun m!8046410 () Bool)

(assert (=> bm!682380 m!8046410))

(declare-fun m!8046412 () Bool)

(assert (=> bm!682381 m!8046412))

(assert (=> d!2292022 d!2292202))

(declare-fun b!7411114 () Bool)

(declare-fun e!4432500 () Bool)

(declare-fun e!4432496 () Bool)

(assert (=> b!7411114 (= e!4432500 e!4432496)))

(declare-fun res!2983398 () Bool)

(declare-fun call!682388 () Bool)

(assert (=> b!7411114 (= res!2983398 call!682388)))

(assert (=> b!7411114 (=> (not res!2983398) (not e!4432496))))

(declare-fun d!2292204 () Bool)

(declare-fun res!2983396 () Bool)

(declare-fun e!4432499 () Bool)

(assert (=> d!2292204 (=> res!2983396 e!4432499)))

(assert (=> d!2292204 (= res!2983396 (is-EmptyExpr!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))

(assert (=> d!2292204 (= (nullableFct!3407 (regOne!39344 (h!78358 (exprs!8856 c!10532)))) e!4432499)))

(declare-fun b!7411115 () Bool)

(declare-fun e!4432498 () Bool)

(assert (=> b!7411115 (= e!4432500 e!4432498)))

(declare-fun res!2983395 () Bool)

(declare-fun call!682387 () Bool)

(assert (=> b!7411115 (= res!2983395 call!682387)))

(assert (=> b!7411115 (=> res!2983395 e!4432498)))

(declare-fun bm!682382 () Bool)

(declare-fun c!1375637 () Bool)

(assert (=> bm!682382 (= call!682387 (nullable!8460 (ite c!1375637 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))) (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun b!7411116 () Bool)

(declare-fun e!4432495 () Bool)

(declare-fun e!4432497 () Bool)

(assert (=> b!7411116 (= e!4432495 e!4432497)))

(declare-fun res!2983397 () Bool)

(assert (=> b!7411116 (=> res!2983397 e!4432497)))

(assert (=> b!7411116 (= res!2983397 (is-Star!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun bm!682383 () Bool)

(assert (=> bm!682383 (= call!682388 (nullable!8460 (ite c!1375637 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))) (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun b!7411117 () Bool)

(assert (=> b!7411117 (= e!4432498 call!682388)))

(declare-fun b!7411118 () Bool)

(assert (=> b!7411118 (= e!4432497 e!4432500)))

(assert (=> b!7411118 (= c!1375637 (is-Union!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun b!7411119 () Bool)

(assert (=> b!7411119 (= e!4432496 call!682387)))

(declare-fun b!7411120 () Bool)

(assert (=> b!7411120 (= e!4432499 e!4432495)))

(declare-fun res!2983399 () Bool)

(assert (=> b!7411120 (=> (not res!2983399) (not e!4432495))))

(assert (=> b!7411120 (= res!2983399 (and (not (is-EmptyLang!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (not (is-ElementMatch!19416 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(assert (= (and d!2292204 (not res!2983396)) b!7411120))

(assert (= (and b!7411120 res!2983399) b!7411116))

(assert (= (and b!7411116 (not res!2983397)) b!7411118))

(assert (= (and b!7411118 c!1375637) b!7411115))

(assert (= (and b!7411118 (not c!1375637)) b!7411114))

(assert (= (and b!7411115 (not res!2983395)) b!7411117))

(assert (= (and b!7411114 res!2983398) b!7411119))

(assert (= (or b!7411117 b!7411114) bm!682383))

(assert (= (or b!7411115 b!7411119) bm!682382))

(declare-fun m!8046414 () Bool)

(assert (=> bm!682382 m!8046414))

(declare-fun m!8046416 () Bool)

(assert (=> bm!682383 m!8046416))

(assert (=> d!2292038 d!2292204))

(declare-fun d!2292206 () Bool)

(assert (=> d!2292206 (= (nullable!8460 (reg!19745 (h!78358 (exprs!8856 empty!3611)))) (nullableFct!3407 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))))

(declare-fun bs!1924738 () Bool)

(assert (= bs!1924738 d!2292206))

(declare-fun m!8046418 () Bool)

(assert (=> bs!1924738 m!8046418))

(assert (=> b!7410588 d!2292206))

(declare-fun bs!1924739 () Bool)

(declare-fun d!2292208 () Bool)

(assert (= bs!1924739 (and d!2292208 d!2292080)))

(declare-fun lambda!460040 () Int)

(assert (=> bs!1924739 (= lambda!460040 lambda!460034)))

(declare-fun bs!1924740 () Bool)

(assert (= bs!1924740 (and d!2292208 d!2291992)))

(assert (=> bs!1924740 (= lambda!460040 lambda!460022)))

(declare-fun bs!1924741 () Bool)

(assert (= bs!1924741 (and d!2292208 d!2292030)))

(assert (=> bs!1924741 (= lambda!460040 lambda!460028)))

(declare-fun bs!1924742 () Bool)

(assert (= bs!1924742 (and d!2292208 d!2292074)))

(assert (=> bs!1924742 (= lambda!460040 lambda!460033)))

(declare-fun bs!1924743 () Bool)

(assert (= bs!1924743 (and d!2292208 d!2291906)))

(assert (=> bs!1924743 (= lambda!460040 lambda!459999)))

(declare-fun bs!1924744 () Bool)

(assert (= bs!1924744 (and d!2292208 d!2291908)))

(assert (=> bs!1924744 (= lambda!460040 lambda!460000)))

(declare-fun bs!1924745 () Bool)

(assert (= bs!1924745 (and d!2292208 d!2291910)))

(assert (=> bs!1924745 (= lambda!460040 lambda!460001)))

(declare-fun bs!1924746 () Bool)

(assert (= bs!1924746 (and d!2292208 d!2292036)))

(assert (=> bs!1924746 (= lambda!460040 lambda!460030)))

(assert (=> d!2292208 (= (inv!91902 setElem!56320) (forall!18200 (exprs!8856 setElem!56320) lambda!460040))))

(declare-fun bs!1924747 () Bool)

(assert (= bs!1924747 d!2292208))

(declare-fun m!8046420 () Bool)

(assert (=> bs!1924747 m!8046420))

(assert (=> setNonEmpty!56320 d!2292208))

(declare-fun d!2292210 () Bool)

(declare-fun res!2983400 () Bool)

(declare-fun e!4432501 () Bool)

(assert (=> d!2292210 (=> res!2983400 e!4432501)))

(assert (=> d!2292210 (= res!2983400 (is-Nil!71911 (t!386594 (t!386594 lt!2619016))))))

(assert (=> d!2292210 (= (noDuplicate!3109 (t!386594 (t!386594 lt!2619016))) e!4432501)))

(declare-fun b!7411121 () Bool)

(declare-fun e!4432502 () Bool)

(assert (=> b!7411121 (= e!4432501 e!4432502)))

(declare-fun res!2983401 () Bool)

(assert (=> b!7411121 (=> (not res!2983401) (not e!4432502))))

(assert (=> b!7411121 (= res!2983401 (not (contains!20851 (t!386594 (t!386594 (t!386594 lt!2619016))) (h!78359 (t!386594 (t!386594 lt!2619016))))))))

(declare-fun b!7411122 () Bool)

(assert (=> b!7411122 (= e!4432502 (noDuplicate!3109 (t!386594 (t!386594 (t!386594 lt!2619016)))))))

(assert (= (and d!2292210 (not res!2983400)) b!7411121))

(assert (= (and b!7411121 res!2983401) b!7411122))

(declare-fun m!8046422 () Bool)

(assert (=> b!7411121 m!8046422))

(declare-fun m!8046424 () Bool)

(assert (=> b!7411122 m!8046424))

(assert (=> b!7410660 d!2292210))

(declare-fun d!2292212 () Bool)

(declare-fun c!1375638 () Bool)

(assert (=> d!2292212 (= c!1375638 (is-Nil!71911 (t!386594 lt!2619026)))))

(declare-fun e!4432503 () (Set Context!16712))

(assert (=> d!2292212 (= (content!15221 (t!386594 lt!2619026)) e!4432503)))

(declare-fun b!7411123 () Bool)

(assert (=> b!7411123 (= e!4432503 (as set.empty (Set Context!16712)))))

(declare-fun b!7411124 () Bool)

(assert (=> b!7411124 (= e!4432503 (set.union (set.insert (h!78359 (t!386594 lt!2619026)) (as set.empty (Set Context!16712))) (content!15221 (t!386594 (t!386594 lt!2619026)))))))

(assert (= (and d!2292212 c!1375638) b!7411123))

(assert (= (and d!2292212 (not c!1375638)) b!7411124))

(declare-fun m!8046426 () Bool)

(assert (=> b!7411124 m!8046426))

(declare-fun m!8046428 () Bool)

(assert (=> b!7411124 m!8046428))

(assert (=> b!7410510 d!2292212))

(declare-fun b!7411125 () Bool)

(declare-fun res!2983404 () Bool)

(declare-fun e!4432509 () Bool)

(assert (=> b!7411125 (=> res!2983404 e!4432509)))

(assert (=> b!7411125 (= res!2983404 (not (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 empty!3611))))))))

(declare-fun e!4432508 () Bool)

(assert (=> b!7411125 (= e!4432508 e!4432509)))

(declare-fun b!7411126 () Bool)

(declare-fun e!4432510 () Bool)

(declare-fun call!682391 () Bool)

(assert (=> b!7411126 (= e!4432510 call!682391)))

(declare-fun b!7411127 () Bool)

(declare-fun e!4432504 () Bool)

(assert (=> b!7411127 (= e!4432504 e!4432508)))

(declare-fun c!1375640 () Bool)

(assert (=> b!7411127 (= c!1375640 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))

(declare-fun bm!682384 () Bool)

(declare-fun call!682389 () Bool)

(declare-fun c!1375639 () Bool)

(assert (=> bm!682384 (= call!682389 (validRegex!9965 (ite c!1375639 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))) (ite c!1375640 (regOne!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))) (regOne!39344 (h!78358 (t!386593 (exprs!8856 empty!3611))))))))))

(declare-fun bm!682385 () Bool)

(assert (=> bm!682385 (= call!682391 (validRegex!9965 (ite c!1375640 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))) (regTwo!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))))

(declare-fun b!7411128 () Bool)

(declare-fun e!4432505 () Bool)

(assert (=> b!7411128 (= e!4432504 e!4432505)))

(declare-fun res!2983406 () Bool)

(assert (=> b!7411128 (= res!2983406 (not (nullable!8460 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))))

(assert (=> b!7411128 (=> (not res!2983406) (not e!4432505))))

(declare-fun b!7411129 () Bool)

(assert (=> b!7411129 (= e!4432505 call!682389)))

(declare-fun bm!682386 () Bool)

(declare-fun call!682390 () Bool)

(assert (=> bm!682386 (= call!682390 call!682389)))

(declare-fun d!2292214 () Bool)

(declare-fun res!2983405 () Bool)

(declare-fun e!4432507 () Bool)

(assert (=> d!2292214 (=> res!2983405 e!4432507)))

(assert (=> d!2292214 (= res!2983405 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))

(assert (=> d!2292214 (= (validRegex!9965 (h!78358 (t!386593 (exprs!8856 empty!3611)))) e!4432507)))

(declare-fun b!7411130 () Bool)

(assert (=> b!7411130 (= e!4432507 e!4432504)))

(assert (=> b!7411130 (= c!1375639 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 empty!3611)))))))

(declare-fun b!7411131 () Bool)

(assert (=> b!7411131 (= e!4432509 e!4432510)))

(declare-fun res!2983403 () Bool)

(assert (=> b!7411131 (=> (not res!2983403) (not e!4432510))))

(assert (=> b!7411131 (= res!2983403 call!682390)))

(declare-fun b!7411132 () Bool)

(declare-fun e!4432506 () Bool)

(assert (=> b!7411132 (= e!4432506 call!682391)))

(declare-fun b!7411133 () Bool)

(declare-fun res!2983402 () Bool)

(assert (=> b!7411133 (=> (not res!2983402) (not e!4432506))))

(assert (=> b!7411133 (= res!2983402 call!682390)))

(assert (=> b!7411133 (= e!4432508 e!4432506)))

(assert (= (and d!2292214 (not res!2983405)) b!7411130))

(assert (= (and b!7411130 c!1375639) b!7411128))

(assert (= (and b!7411130 (not c!1375639)) b!7411127))

(assert (= (and b!7411128 res!2983406) b!7411129))

(assert (= (and b!7411127 c!1375640) b!7411133))

(assert (= (and b!7411127 (not c!1375640)) b!7411125))

(assert (= (and b!7411133 res!2983402) b!7411132))

(assert (= (and b!7411125 (not res!2983404)) b!7411131))

(assert (= (and b!7411131 res!2983403) b!7411126))

(assert (= (or b!7411133 b!7411131) bm!682386))

(assert (= (or b!7411132 b!7411126) bm!682385))

(assert (= (or b!7411129 bm!682386) bm!682384))

(declare-fun m!8046430 () Bool)

(assert (=> bm!682384 m!8046430))

(declare-fun m!8046432 () Bool)

(assert (=> bm!682385 m!8046432))

(declare-fun m!8046434 () Bool)

(assert (=> b!7411128 m!8046434))

(assert (=> bs!1924687 d!2292214))

(declare-fun d!2292216 () Bool)

(assert (=> d!2292216 (= ($colon$colon!3346 (exprs!8856 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269))) (ite (or c!1375581 c!1375582) (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (Cons!71910 (ite (or c!1375581 c!1375582) (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (exprs!8856 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)))))))

(assert (=> bm!682312 d!2292216))

(declare-fun d!2292218 () Bool)

(declare-fun c!1375641 () Bool)

(assert (=> d!2292218 (= c!1375641 (is-Nil!71911 (t!386594 (t!386594 lt!2619016))))))

(declare-fun e!4432511 () (Set Context!16712))

(assert (=> d!2292218 (= (content!15221 (t!386594 (t!386594 lt!2619016))) e!4432511)))

(declare-fun b!7411134 () Bool)

(assert (=> b!7411134 (= e!4432511 (as set.empty (Set Context!16712)))))

(declare-fun b!7411135 () Bool)

(assert (=> b!7411135 (= e!4432511 (set.union (set.insert (h!78359 (t!386594 (t!386594 lt!2619016))) (as set.empty (Set Context!16712))) (content!15221 (t!386594 (t!386594 (t!386594 lt!2619016))))))))

(assert (= (and d!2292218 c!1375641) b!7411134))

(assert (= (and d!2292218 (not c!1375641)) b!7411135))

(declare-fun m!8046436 () Bool)

(assert (=> b!7411135 m!8046436))

(declare-fun m!8046438 () Bool)

(assert (=> b!7411135 m!8046438))

(assert (=> b!7410523 d!2292218))

(declare-fun b!7411136 () Bool)

(declare-fun res!2983409 () Bool)

(declare-fun e!4432517 () Bool)

(assert (=> b!7411136 (=> res!2983409 e!4432517)))

(assert (=> b!7411136 (= res!2983409 (not (is-Concat!28261 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611))))))))))

(declare-fun e!4432516 () Bool)

(assert (=> b!7411136 (= e!4432516 e!4432517)))

(declare-fun b!7411137 () Bool)

(declare-fun e!4432518 () Bool)

(declare-fun call!682394 () Bool)

(assert (=> b!7411137 (= e!4432518 call!682394)))

(declare-fun b!7411138 () Bool)

(declare-fun e!4432512 () Bool)

(assert (=> b!7411138 (= e!4432512 e!4432516)))

(declare-fun c!1375643 () Bool)

(assert (=> b!7411138 (= c!1375643 (is-Union!19416 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))

(declare-fun call!682392 () Bool)

(declare-fun bm!682387 () Bool)

(declare-fun c!1375642 () Bool)

(assert (=> bm!682387 (= call!682392 (validRegex!9965 (ite c!1375642 (reg!19745 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) (ite c!1375643 (regOne!39345 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) (regOne!39344 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611))))))))))))

(declare-fun bm!682388 () Bool)

(assert (=> bm!682388 (= call!682394 (validRegex!9965 (ite c!1375643 (regTwo!39345 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) (regTwo!39344 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))))

(declare-fun b!7411139 () Bool)

(declare-fun e!4432513 () Bool)

(assert (=> b!7411139 (= e!4432512 e!4432513)))

(declare-fun res!2983411 () Bool)

(assert (=> b!7411139 (= res!2983411 (not (nullable!8460 (reg!19745 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))))

(assert (=> b!7411139 (=> (not res!2983411) (not e!4432513))))

(declare-fun b!7411140 () Bool)

(assert (=> b!7411140 (= e!4432513 call!682392)))

(declare-fun bm!682389 () Bool)

(declare-fun call!682393 () Bool)

(assert (=> bm!682389 (= call!682393 call!682392)))

(declare-fun d!2292220 () Bool)

(declare-fun res!2983410 () Bool)

(declare-fun e!4432515 () Bool)

(assert (=> d!2292220 (=> res!2983410 e!4432515)))

(assert (=> d!2292220 (= res!2983410 (is-ElementMatch!19416 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))

(assert (=> d!2292220 (= (validRegex!9965 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) e!4432515)))

(declare-fun b!7411141 () Bool)

(assert (=> b!7411141 (= e!4432515 e!4432512)))

(assert (=> b!7411141 (= c!1375642 (is-Star!19416 (ite c!1375557 (reg!19745 (h!78358 (exprs!8856 empty!3611))) (ite c!1375558 (regOne!39345 (h!78358 (exprs!8856 empty!3611))) (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))))))

(declare-fun b!7411142 () Bool)

(assert (=> b!7411142 (= e!4432517 e!4432518)))

(declare-fun res!2983408 () Bool)

(assert (=> b!7411142 (=> (not res!2983408) (not e!4432518))))

(assert (=> b!7411142 (= res!2983408 call!682393)))

(declare-fun b!7411143 () Bool)

(declare-fun e!4432514 () Bool)

(assert (=> b!7411143 (= e!4432514 call!682394)))

(declare-fun b!7411144 () Bool)

(declare-fun res!2983407 () Bool)

(assert (=> b!7411144 (=> (not res!2983407) (not e!4432514))))

(assert (=> b!7411144 (= res!2983407 call!682393)))

(assert (=> b!7411144 (= e!4432516 e!4432514)))

(assert (= (and d!2292220 (not res!2983410)) b!7411141))

(assert (= (and b!7411141 c!1375642) b!7411139))

(assert (= (and b!7411141 (not c!1375642)) b!7411138))

(assert (= (and b!7411139 res!2983411) b!7411140))

(assert (= (and b!7411138 c!1375643) b!7411144))

(assert (= (and b!7411138 (not c!1375643)) b!7411136))

(assert (= (and b!7411144 res!2983407) b!7411143))

(assert (= (and b!7411136 (not res!2983409)) b!7411142))

(assert (= (and b!7411142 res!2983408) b!7411137))

(assert (= (or b!7411144 b!7411142) bm!682389))

(assert (= (or b!7411143 b!7411137) bm!682388))

(assert (= (or b!7411140 bm!682389) bm!682387))

(declare-fun m!8046440 () Bool)

(assert (=> bm!682387 m!8046440))

(declare-fun m!8046442 () Bool)

(assert (=> bm!682388 m!8046442))

(declare-fun m!8046444 () Bool)

(assert (=> b!7411139 m!8046444))

(assert (=> bm!682288 d!2292220))

(declare-fun d!2292222 () Bool)

(declare-fun res!2983412 () Bool)

(declare-fun e!4432519 () Bool)

(assert (=> d!2292222 (=> res!2983412 e!4432519)))

(assert (=> d!2292222 (= res!2983412 (is-Nil!71911 res!2983224))))

(assert (=> d!2292222 (= (noDuplicate!3109 res!2983224) e!4432519)))

(declare-fun b!7411145 () Bool)

(declare-fun e!4432520 () Bool)

(assert (=> b!7411145 (= e!4432519 e!4432520)))

(declare-fun res!2983413 () Bool)

(assert (=> b!7411145 (=> (not res!2983413) (not e!4432520))))

(assert (=> b!7411145 (= res!2983413 (not (contains!20851 (t!386594 res!2983224) (h!78359 res!2983224))))))

(declare-fun b!7411146 () Bool)

(assert (=> b!7411146 (= e!4432520 (noDuplicate!3109 (t!386594 res!2983224)))))

(assert (= (and d!2292222 (not res!2983412)) b!7411145))

(assert (= (and b!7411145 res!2983413) b!7411146))

(declare-fun m!8046446 () Bool)

(assert (=> b!7411145 m!8046446))

(declare-fun m!8046448 () Bool)

(assert (=> b!7411146 m!8046448))

(assert (=> d!2292026 d!2292222))

(declare-fun d!2292224 () Bool)

(declare-fun res!2983414 () Bool)

(declare-fun e!4432521 () Bool)

(assert (=> d!2292224 (=> res!2983414 e!4432521)))

(assert (=> d!2292224 (= res!2983414 (is-Nil!71910 (exprs!8856 (h!78359 res!2983178))))))

(assert (=> d!2292224 (= (forall!18200 (exprs!8856 (h!78359 res!2983178)) lambda!460033) e!4432521)))

(declare-fun b!7411147 () Bool)

(declare-fun e!4432522 () Bool)

(assert (=> b!7411147 (= e!4432521 e!4432522)))

(declare-fun res!2983415 () Bool)

(assert (=> b!7411147 (=> (not res!2983415) (not e!4432522))))

(assert (=> b!7411147 (= res!2983415 (dynLambda!29688 lambda!460033 (h!78358 (exprs!8856 (h!78359 res!2983178)))))))

(declare-fun b!7411148 () Bool)

(assert (=> b!7411148 (= e!4432522 (forall!18200 (t!386593 (exprs!8856 (h!78359 res!2983178))) lambda!460033))))

(assert (= (and d!2292224 (not res!2983414)) b!7411147))

(assert (= (and b!7411147 res!2983415) b!7411148))

(declare-fun b_lambda!286671 () Bool)

(assert (=> (not b_lambda!286671) (not b!7411147)))

(declare-fun m!8046450 () Bool)

(assert (=> b!7411147 m!8046450))

(declare-fun m!8046452 () Bool)

(assert (=> b!7411148 m!8046452))

(assert (=> d!2292074 d!2292224))

(declare-fun call!682396 () List!72034)

(declare-fun call!682399 () (Set Context!16712))

(declare-fun c!1375646 () Bool)

(declare-fun bm!682390 () Bool)

(assert (=> bm!682390 (= call!682399 (derivationStepZipperDown!3212 (ite c!1375646 (regOne!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (ite c!1375646 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (Context!16713 call!682396)) (h!78360 s!7927)))))

(declare-fun b!7411149 () Bool)

(declare-fun e!4432527 () (Set Context!16712))

(declare-fun call!682397 () (Set Context!16712))

(assert (=> b!7411149 (= e!4432527 (set.union call!682399 call!682397))))

(declare-fun b!7411150 () Bool)

(declare-fun e!4432523 () (Set Context!16712))

(assert (=> b!7411150 (= e!4432523 (set.insert (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (as set.empty (Set Context!16712))))))

(declare-fun c!1375648 () Bool)

(declare-fun bm!682391 () Bool)

(declare-fun c!1375647 () Bool)

(assert (=> bm!682391 (= call!682396 ($colon$colon!3346 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (ite (or c!1375647 c!1375648) (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411151 () Bool)

(declare-fun e!4432525 () (Set Context!16712))

(declare-fun call!682398 () (Set Context!16712))

(assert (=> b!7411151 (= e!4432525 call!682398)))

(declare-fun b!7411152 () Bool)

(assert (=> b!7411152 (= e!4432525 (as set.empty (Set Context!16712)))))

(declare-fun b!7411154 () Bool)

(declare-fun e!4432528 () (Set Context!16712))

(assert (=> b!7411154 (= e!4432528 call!682398)))

(declare-fun bm!682392 () Bool)

(declare-fun call!682400 () List!72034)

(assert (=> bm!682392 (= call!682400 call!682396)))

(declare-fun b!7411155 () Bool)

(declare-fun c!1375644 () Bool)

(assert (=> b!7411155 (= c!1375644 (is-Star!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411155 (= e!4432528 e!4432525)))

(declare-fun bm!682393 () Bool)

(declare-fun call!682395 () (Set Context!16712))

(assert (=> bm!682393 (= call!682395 (derivationStepZipperDown!3212 (ite c!1375646 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (ite c!1375647 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (ite c!1375648 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))) (ite (or c!1375646 c!1375647) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (Context!16713 call!682400)) (h!78360 s!7927)))))

(declare-fun b!7411156 () Bool)

(declare-fun e!4432526 () (Set Context!16712))

(assert (=> b!7411156 (= e!4432526 (set.union call!682399 call!682395))))

(declare-fun b!7411157 () Bool)

(declare-fun e!4432524 () Bool)

(assert (=> b!7411157 (= e!4432524 (nullable!8460 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411158 () Bool)

(assert (=> b!7411158 (= e!4432523 e!4432526)))

(assert (=> b!7411158 (= c!1375646 (is-Union!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411159 () Bool)

(assert (=> b!7411159 (= e!4432527 e!4432528)))

(assert (=> b!7411159 (= c!1375648 (is-Concat!28261 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411153 () Bool)

(assert (=> b!7411153 (= c!1375647 e!4432524)))

(declare-fun res!2983416 () Bool)

(assert (=> b!7411153 (=> (not res!2983416) (not e!4432524))))

(assert (=> b!7411153 (= res!2983416 (is-Concat!28261 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411153 (= e!4432526 e!4432527)))

(declare-fun d!2292226 () Bool)

(declare-fun c!1375645 () Bool)

(assert (=> d!2292226 (= c!1375645 (and (is-ElementMatch!19416 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (= (c!1375502 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78360 s!7927))))))

(assert (=> d!2292226 (= (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78360 s!7927)) e!4432523)))

(declare-fun bm!682394 () Bool)

(assert (=> bm!682394 (= call!682397 call!682395)))

(declare-fun bm!682395 () Bool)

(assert (=> bm!682395 (= call!682398 call!682397)))

(assert (= (and d!2292226 c!1375645) b!7411150))

(assert (= (and d!2292226 (not c!1375645)) b!7411158))

(assert (= (and b!7411158 c!1375646) b!7411156))

(assert (= (and b!7411158 (not c!1375646)) b!7411153))

(assert (= (and b!7411153 res!2983416) b!7411157))

(assert (= (and b!7411153 c!1375647) b!7411149))

(assert (= (and b!7411153 (not c!1375647)) b!7411159))

(assert (= (and b!7411159 c!1375648) b!7411154))

(assert (= (and b!7411159 (not c!1375648)) b!7411155))

(assert (= (and b!7411155 c!1375644) b!7411151))

(assert (= (and b!7411155 (not c!1375644)) b!7411152))

(assert (= (or b!7411154 b!7411151) bm!682392))

(assert (= (or b!7411154 b!7411151) bm!682395))

(assert (= (or b!7411149 bm!682392) bm!682391))

(assert (= (or b!7411149 bm!682395) bm!682394))

(assert (= (or b!7411156 b!7411149) bm!682390))

(assert (= (or b!7411156 bm!682394) bm!682393))

(declare-fun m!8046454 () Bool)

(assert (=> bm!682391 m!8046454))

(declare-fun m!8046456 () Bool)

(assert (=> bm!682390 m!8046456))

(declare-fun m!8046458 () Bool)

(assert (=> bm!682393 m!8046458))

(declare-fun m!8046460 () Bool)

(assert (=> b!7411157 m!8046460))

(declare-fun m!8046462 () Bool)

(assert (=> b!7411150 m!8046462))

(assert (=> bm!682269 d!2292226))

(declare-fun c!1375651 () Bool)

(declare-fun bm!682396 () Bool)

(declare-fun call!682405 () (Set Context!16712))

(declare-fun call!682402 () List!72034)

(assert (=> bm!682396 (= call!682405 (derivationStepZipperDown!3212 (ite c!1375651 (regOne!39345 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))) (ite c!1375651 (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317)) (Context!16713 call!682402)) (h!78360 s!7927)))))

(declare-fun b!7411160 () Bool)

(declare-fun e!4432533 () (Set Context!16712))

(declare-fun call!682403 () (Set Context!16712))

(assert (=> b!7411160 (= e!4432533 (set.union call!682405 call!682403))))

(declare-fun b!7411161 () Bool)

(declare-fun e!4432529 () (Set Context!16712))

(assert (=> b!7411161 (= e!4432529 (set.insert (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317)) (as set.empty (Set Context!16712))))))

(declare-fun c!1375653 () Bool)

(declare-fun c!1375652 () Bool)

(declare-fun bm!682397 () Bool)

(assert (=> bm!682397 (= call!682402 ($colon$colon!3346 (exprs!8856 (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317))) (ite (or c!1375652 c!1375653) (regTwo!39344 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411162 () Bool)

(declare-fun e!4432531 () (Set Context!16712))

(declare-fun call!682404 () (Set Context!16712))

(assert (=> b!7411162 (= e!4432531 call!682404)))

(declare-fun b!7411163 () Bool)

(assert (=> b!7411163 (= e!4432531 (as set.empty (Set Context!16712)))))

(declare-fun b!7411165 () Bool)

(declare-fun e!4432534 () (Set Context!16712))

(assert (=> b!7411165 (= e!4432534 call!682404)))

(declare-fun bm!682398 () Bool)

(declare-fun call!682406 () List!72034)

(assert (=> bm!682398 (= call!682406 call!682402)))

(declare-fun b!7411166 () Bool)

(declare-fun c!1375649 () Bool)

(assert (=> b!7411166 (= c!1375649 (is-Star!19416 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))

(assert (=> b!7411166 (= e!4432534 e!4432531)))

(declare-fun bm!682399 () Bool)

(declare-fun call!682401 () (Set Context!16712))

(assert (=> bm!682399 (= call!682401 (derivationStepZipperDown!3212 (ite c!1375651 (regTwo!39345 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375652 (regTwo!39344 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375653 (regOne!39344 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))) (ite (or c!1375651 c!1375652) (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317)) (Context!16713 call!682406)) (h!78360 s!7927)))))

(declare-fun b!7411167 () Bool)

(declare-fun e!4432532 () (Set Context!16712))

(assert (=> b!7411167 (= e!4432532 (set.union call!682405 call!682401))))

(declare-fun e!4432530 () Bool)

(declare-fun b!7411168 () Bool)

(assert (=> b!7411168 (= e!4432530 (nullable!8460 (regOne!39344 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun b!7411169 () Bool)

(assert (=> b!7411169 (= e!4432529 e!4432532)))

(assert (=> b!7411169 (= c!1375651 (is-Union!19416 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun b!7411170 () Bool)

(assert (=> b!7411170 (= e!4432533 e!4432534)))

(assert (=> b!7411170 (= c!1375653 (is-Concat!28261 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun b!7411164 () Bool)

(assert (=> b!7411164 (= c!1375652 e!4432530)))

(declare-fun res!2983417 () Bool)

(assert (=> b!7411164 (=> (not res!2983417) (not e!4432530))))

(assert (=> b!7411164 (= res!2983417 (is-Concat!28261 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))

(assert (=> b!7411164 (= e!4432532 e!4432533)))

(declare-fun d!2292228 () Bool)

(declare-fun c!1375650 () Bool)

(assert (=> d!2292228 (= c!1375650 (and (is-ElementMatch!19416 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (= (c!1375502 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))) (h!78360 s!7927))))))

(assert (=> d!2292228 (= (derivationStepZipperDown!3212 (ite c!1375580 (regOne!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (ite c!1375580 (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682317)) (h!78360 s!7927)) e!4432529)))

(declare-fun bm!682400 () Bool)

(assert (=> bm!682400 (= call!682403 call!682401)))

(declare-fun bm!682401 () Bool)

(assert (=> bm!682401 (= call!682404 call!682403)))

(assert (= (and d!2292228 c!1375650) b!7411161))

(assert (= (and d!2292228 (not c!1375650)) b!7411169))

(assert (= (and b!7411169 c!1375651) b!7411167))

(assert (= (and b!7411169 (not c!1375651)) b!7411164))

(assert (= (and b!7411164 res!2983417) b!7411168))

(assert (= (and b!7411164 c!1375652) b!7411160))

(assert (= (and b!7411164 (not c!1375652)) b!7411170))

(assert (= (and b!7411170 c!1375653) b!7411165))

(assert (= (and b!7411170 (not c!1375653)) b!7411166))

(assert (= (and b!7411166 c!1375649) b!7411162))

(assert (= (and b!7411166 (not c!1375649)) b!7411163))

(assert (= (or b!7411165 b!7411162) bm!682398))

(assert (= (or b!7411165 b!7411162) bm!682401))

(assert (= (or b!7411160 bm!682398) bm!682397))

(assert (= (or b!7411160 bm!682401) bm!682400))

(assert (= (or b!7411167 b!7411160) bm!682396))

(assert (= (or b!7411167 bm!682400) bm!682399))

(declare-fun m!8046464 () Bool)

(assert (=> bm!682397 m!8046464))

(declare-fun m!8046466 () Bool)

(assert (=> bm!682396 m!8046466))

(declare-fun m!8046468 () Bool)

(assert (=> bm!682399 m!8046468))

(declare-fun m!8046470 () Bool)

(assert (=> b!7411168 m!8046470))

(declare-fun m!8046472 () Bool)

(assert (=> b!7411161 m!8046472))

(assert (=> bm!682311 d!2292228))

(declare-fun d!2292230 () Bool)

(assert (=> d!2292230 (= (nullable!8460 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (nullableFct!3407 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))

(declare-fun bs!1924748 () Bool)

(assert (= bs!1924748 d!2292230))

(declare-fun m!8046474 () Bool)

(assert (=> bs!1924748 m!8046474))

(assert (=> b!7410519 d!2292230))

(declare-fun d!2292232 () Bool)

(assert (=> d!2292232 (= (nullable!8460 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))) (nullableFct!3407 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))))

(declare-fun bs!1924749 () Bool)

(assert (= bs!1924749 d!2292232))

(declare-fun m!8046476 () Bool)

(assert (=> bs!1924749 m!8046476))

(assert (=> b!7410564 d!2292232))

(declare-fun d!2292234 () Bool)

(declare-fun res!2983418 () Bool)

(declare-fun e!4432535 () Bool)

(assert (=> d!2292234 (=> res!2983418 e!4432535)))

(assert (=> d!2292234 (= res!2983418 (is-Nil!71911 (t!386594 (toList!11767 z!3451))))))

(assert (=> d!2292234 (= (forall!18202 (t!386594 (toList!11767 z!3451)) lambda!460018) e!4432535)))

(declare-fun b!7411171 () Bool)

(declare-fun e!4432536 () Bool)

(assert (=> b!7411171 (= e!4432535 e!4432536)))

(declare-fun res!2983419 () Bool)

(assert (=> b!7411171 (=> (not res!2983419) (not e!4432536))))

(assert (=> b!7411171 (= res!2983419 (dynLambda!29690 lambda!460018 (h!78359 (t!386594 (toList!11767 z!3451)))))))

(declare-fun b!7411172 () Bool)

(assert (=> b!7411172 (= e!4432536 (forall!18202 (t!386594 (t!386594 (toList!11767 z!3451))) lambda!460018))))

(assert (= (and d!2292234 (not res!2983418)) b!7411171))

(assert (= (and b!7411171 res!2983419) b!7411172))

(declare-fun b_lambda!286673 () Bool)

(assert (=> (not b_lambda!286673) (not b!7411171)))

(declare-fun m!8046478 () Bool)

(assert (=> b!7411171 m!8046478))

(declare-fun m!8046480 () Bool)

(assert (=> b!7411172 m!8046480))

(assert (=> b!7410582 d!2292234))

(declare-fun d!2292236 () Bool)

(assert (=> d!2292236 (= (nullable!8460 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (nullableFct!3407 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))

(declare-fun bs!1924750 () Bool)

(assert (= bs!1924750 d!2292236))

(declare-fun m!8046482 () Bool)

(assert (=> bs!1924750 m!8046482))

(assert (=> b!7410503 d!2292236))

(declare-fun call!682408 () List!72034)

(declare-fun c!1375656 () Bool)

(declare-fun call!682411 () (Set Context!16712))

(declare-fun bm!682402 () Bool)

(assert (=> bm!682402 (= call!682411 (derivationStepZipperDown!3212 (ite c!1375656 (regOne!39345 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (regOne!39344 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))) (ite c!1375656 (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297)) (Context!16713 call!682408)) (h!78360 s!7927)))))

(declare-fun b!7411173 () Bool)

(declare-fun e!4432541 () (Set Context!16712))

(declare-fun call!682409 () (Set Context!16712))

(assert (=> b!7411173 (= e!4432541 (set.union call!682411 call!682409))))

(declare-fun e!4432537 () (Set Context!16712))

(declare-fun b!7411174 () Bool)

(assert (=> b!7411174 (= e!4432537 (set.insert (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297)) (as set.empty (Set Context!16712))))))

(declare-fun bm!682403 () Bool)

(declare-fun c!1375658 () Bool)

(declare-fun c!1375657 () Bool)

(assert (=> bm!682403 (= call!682408 ($colon$colon!3346 (exprs!8856 (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297))) (ite (or c!1375657 c!1375658) (regTwo!39344 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411175 () Bool)

(declare-fun e!4432539 () (Set Context!16712))

(declare-fun call!682410 () (Set Context!16712))

(assert (=> b!7411175 (= e!4432539 call!682410)))

(declare-fun b!7411176 () Bool)

(assert (=> b!7411176 (= e!4432539 (as set.empty (Set Context!16712)))))

(declare-fun b!7411178 () Bool)

(declare-fun e!4432542 () (Set Context!16712))

(assert (=> b!7411178 (= e!4432542 call!682410)))

(declare-fun bm!682404 () Bool)

(declare-fun call!682412 () List!72034)

(assert (=> bm!682404 (= call!682412 call!682408)))

(declare-fun b!7411179 () Bool)

(declare-fun c!1375654 () Bool)

(assert (=> b!7411179 (= c!1375654 (is-Star!19416 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411179 (= e!4432542 e!4432539)))

(declare-fun call!682407 () (Set Context!16712))

(declare-fun bm!682405 () Bool)

(assert (=> bm!682405 (= call!682407 (derivationStepZipperDown!3212 (ite c!1375656 (regTwo!39345 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375657 (regTwo!39344 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375658 (regOne!39344 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (reg!19745 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))) (ite (or c!1375656 c!1375657) (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297)) (Context!16713 call!682412)) (h!78360 s!7927)))))

(declare-fun b!7411180 () Bool)

(declare-fun e!4432540 () (Set Context!16712))

(assert (=> b!7411180 (= e!4432540 (set.union call!682411 call!682407))))

(declare-fun b!7411181 () Bool)

(declare-fun e!4432538 () Bool)

(assert (=> b!7411181 (= e!4432538 (nullable!8460 (regOne!39344 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411182 () Bool)

(assert (=> b!7411182 (= e!4432537 e!4432540)))

(assert (=> b!7411182 (= c!1375656 (is-Union!19416 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411183 () Bool)

(assert (=> b!7411183 (= e!4432541 e!4432542)))

(assert (=> b!7411183 (= c!1375658 (is-Concat!28261 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411177 () Bool)

(assert (=> b!7411177 (= c!1375657 e!4432538)))

(declare-fun res!2983420 () Bool)

(assert (=> b!7411177 (=> (not res!2983420) (not e!4432538))))

(assert (=> b!7411177 (= res!2983420 (is-Concat!28261 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411177 (= e!4432540 e!4432541)))

(declare-fun c!1375655 () Bool)

(declare-fun d!2292238 () Bool)

(assert (=> d!2292238 (= c!1375655 (and (is-ElementMatch!19416 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (= (c!1375502 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))) (h!78360 s!7927))))))

(assert (=> d!2292238 (= (derivationStepZipperDown!3212 (ite c!1375561 (regOne!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))) (ite c!1375561 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682297)) (h!78360 s!7927)) e!4432537)))

(declare-fun bm!682406 () Bool)

(assert (=> bm!682406 (= call!682409 call!682407)))

(declare-fun bm!682407 () Bool)

(assert (=> bm!682407 (= call!682410 call!682409)))

(assert (= (and d!2292238 c!1375655) b!7411174))

(assert (= (and d!2292238 (not c!1375655)) b!7411182))

(assert (= (and b!7411182 c!1375656) b!7411180))

(assert (= (and b!7411182 (not c!1375656)) b!7411177))

(assert (= (and b!7411177 res!2983420) b!7411181))

(assert (= (and b!7411177 c!1375657) b!7411173))

(assert (= (and b!7411177 (not c!1375657)) b!7411183))

(assert (= (and b!7411183 c!1375658) b!7411178))

(assert (= (and b!7411183 (not c!1375658)) b!7411179))

(assert (= (and b!7411179 c!1375654) b!7411175))

(assert (= (and b!7411179 (not c!1375654)) b!7411176))

(assert (= (or b!7411178 b!7411175) bm!682404))

(assert (= (or b!7411178 b!7411175) bm!682407))

(assert (= (or b!7411173 bm!682404) bm!682403))

(assert (= (or b!7411173 bm!682407) bm!682406))

(assert (= (or b!7411180 b!7411173) bm!682402))

(assert (= (or b!7411180 bm!682406) bm!682405))

(declare-fun m!8046484 () Bool)

(assert (=> bm!682403 m!8046484))

(declare-fun m!8046486 () Bool)

(assert (=> bm!682402 m!8046486))

(declare-fun m!8046488 () Bool)

(assert (=> bm!682405 m!8046488))

(declare-fun m!8046490 () Bool)

(assert (=> b!7411181 m!8046490))

(declare-fun m!8046492 () Bool)

(assert (=> b!7411174 m!8046492))

(assert (=> bm!682291 d!2292238))

(declare-fun call!682417 () (Set Context!16712))

(declare-fun call!682414 () List!72034)

(declare-fun bm!682408 () Bool)

(declare-fun c!1375661 () Bool)

(assert (=> bm!682408 (= call!682417 (derivationStepZipperDown!3212 (ite c!1375661 (regOne!39345 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (regOne!39344 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))) (ite c!1375661 (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280)) (Context!16713 call!682414)) (h!78360 s!7927)))))

(declare-fun b!7411184 () Bool)

(declare-fun e!4432547 () (Set Context!16712))

(declare-fun call!682415 () (Set Context!16712))

(assert (=> b!7411184 (= e!4432547 (set.union call!682417 call!682415))))

(declare-fun b!7411185 () Bool)

(declare-fun e!4432543 () (Set Context!16712))

(assert (=> b!7411185 (= e!4432543 (set.insert (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280)) (as set.empty (Set Context!16712))))))

(declare-fun bm!682409 () Bool)

(declare-fun c!1375663 () Bool)

(declare-fun c!1375662 () Bool)

(assert (=> bm!682409 (= call!682414 ($colon$colon!3346 (exprs!8856 (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280))) (ite (or c!1375662 c!1375663) (regTwo!39344 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))))

(declare-fun b!7411186 () Bool)

(declare-fun e!4432545 () (Set Context!16712))

(declare-fun call!682416 () (Set Context!16712))

(assert (=> b!7411186 (= e!4432545 call!682416)))

(declare-fun b!7411187 () Bool)

(assert (=> b!7411187 (= e!4432545 (as set.empty (Set Context!16712)))))

(declare-fun b!7411189 () Bool)

(declare-fun e!4432548 () (Set Context!16712))

(assert (=> b!7411189 (= e!4432548 call!682416)))

(declare-fun bm!682410 () Bool)

(declare-fun call!682418 () List!72034)

(assert (=> bm!682410 (= call!682418 call!682414)))

(declare-fun c!1375659 () Bool)

(declare-fun b!7411190 () Bool)

(assert (=> b!7411190 (= c!1375659 (is-Star!19416 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(assert (=> b!7411190 (= e!4432548 e!4432545)))

(declare-fun call!682413 () (Set Context!16712))

(declare-fun bm!682411 () Bool)

(assert (=> bm!682411 (= call!682413 (derivationStepZipperDown!3212 (ite c!1375661 (regTwo!39345 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (ite c!1375662 (regTwo!39344 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (ite c!1375663 (regOne!39344 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (reg!19745 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))) (ite (or c!1375661 c!1375662) (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280)) (Context!16713 call!682418)) (h!78360 s!7927)))))

(declare-fun b!7411191 () Bool)

(declare-fun e!4432546 () (Set Context!16712))

(assert (=> b!7411191 (= e!4432546 (set.union call!682417 call!682413))))

(declare-fun e!4432544 () Bool)

(declare-fun b!7411192 () Bool)

(assert (=> b!7411192 (= e!4432544 (nullable!8460 (regOne!39344 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))))

(declare-fun b!7411193 () Bool)

(assert (=> b!7411193 (= e!4432543 e!4432546)))

(assert (=> b!7411193 (= c!1375661 (is-Union!19416 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411194 () Bool)

(assert (=> b!7411194 (= e!4432547 e!4432548)))

(assert (=> b!7411194 (= c!1375663 (is-Concat!28261 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411188 () Bool)

(assert (=> b!7411188 (= c!1375662 e!4432544)))

(declare-fun res!2983421 () Bool)

(assert (=> b!7411188 (=> (not res!2983421) (not e!4432544))))

(assert (=> b!7411188 (= res!2983421 (is-Concat!28261 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))

(assert (=> b!7411188 (= e!4432546 e!4432547)))

(declare-fun d!2292240 () Bool)

(declare-fun c!1375660 () Bool)

(assert (=> d!2292240 (= c!1375660 (and (is-ElementMatch!19416 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (= (c!1375502 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))) (h!78360 s!7927))))))

(assert (=> d!2292240 (= (derivationStepZipperDown!3212 (ite c!1375545 (regTwo!39345 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375546 (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (ite c!1375547 (regOne!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (reg!19745 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (ite (or c!1375545 c!1375546) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (Context!16713 call!682280)) (h!78360 s!7927)) e!4432543)))

(declare-fun bm!682412 () Bool)

(assert (=> bm!682412 (= call!682415 call!682413)))

(declare-fun bm!682413 () Bool)

(assert (=> bm!682413 (= call!682416 call!682415)))

(assert (= (and d!2292240 c!1375660) b!7411185))

(assert (= (and d!2292240 (not c!1375660)) b!7411193))

(assert (= (and b!7411193 c!1375661) b!7411191))

(assert (= (and b!7411193 (not c!1375661)) b!7411188))

(assert (= (and b!7411188 res!2983421) b!7411192))

(assert (= (and b!7411188 c!1375662) b!7411184))

(assert (= (and b!7411188 (not c!1375662)) b!7411194))

(assert (= (and b!7411194 c!1375663) b!7411189))

(assert (= (and b!7411194 (not c!1375663)) b!7411190))

(assert (= (and b!7411190 c!1375659) b!7411186))

(assert (= (and b!7411190 (not c!1375659)) b!7411187))

(assert (= (or b!7411189 b!7411186) bm!682410))

(assert (= (or b!7411189 b!7411186) bm!682413))

(assert (= (or b!7411184 bm!682410) bm!682409))

(assert (= (or b!7411184 bm!682413) bm!682412))

(assert (= (or b!7411191 b!7411184) bm!682408))

(assert (= (or b!7411191 bm!682412) bm!682411))

(declare-fun m!8046494 () Bool)

(assert (=> bm!682409 m!8046494))

(declare-fun m!8046496 () Bool)

(assert (=> bm!682408 m!8046496))

(declare-fun m!8046498 () Bool)

(assert (=> bm!682411 m!8046498))

(declare-fun m!8046500 () Bool)

(assert (=> b!7411192 m!8046500))

(declare-fun m!8046502 () Bool)

(assert (=> b!7411185 m!8046502))

(assert (=> bm!682273 d!2292240))

(declare-fun b!7411195 () Bool)

(declare-fun res!2983424 () Bool)

(declare-fun e!4432554 () Bool)

(assert (=> b!7411195 (=> res!2983424 e!4432554)))

(assert (=> b!7411195 (= res!2983424 (not (is-Concat!28261 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))))))))

(declare-fun e!4432553 () Bool)

(assert (=> b!7411195 (= e!4432553 e!4432554)))

(declare-fun b!7411196 () Bool)

(declare-fun e!4432555 () Bool)

(declare-fun call!682421 () Bool)

(assert (=> b!7411196 (= e!4432555 call!682421)))

(declare-fun b!7411197 () Bool)

(declare-fun e!4432549 () Bool)

(assert (=> b!7411197 (= e!4432549 e!4432553)))

(declare-fun c!1375665 () Bool)

(assert (=> b!7411197 (= c!1375665 (is-Union!19416 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))

(declare-fun bm!682414 () Bool)

(declare-fun call!682419 () Bool)

(declare-fun c!1375664 () Bool)

(assert (=> bm!682414 (= call!682419 (validRegex!9965 (ite c!1375664 (reg!19745 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) (ite c!1375665 (regOne!39345 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) (regOne!39344 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306))))))))))))

(declare-fun bm!682415 () Bool)

(assert (=> bm!682415 (= call!682421 (validRegex!9965 (ite c!1375665 (regTwo!39345 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) (regTwo!39344 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))))

(declare-fun b!7411198 () Bool)

(declare-fun e!4432550 () Bool)

(assert (=> b!7411198 (= e!4432549 e!4432550)))

(declare-fun res!2983426 () Bool)

(assert (=> b!7411198 (= res!2983426 (not (nullable!8460 (reg!19745 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))))

(assert (=> b!7411198 (=> (not res!2983426) (not e!4432550))))

(declare-fun b!7411199 () Bool)

(assert (=> b!7411199 (= e!4432550 call!682419)))

(declare-fun bm!682416 () Bool)

(declare-fun call!682420 () Bool)

(assert (=> bm!682416 (= call!682420 call!682419)))

(declare-fun d!2292242 () Bool)

(declare-fun res!2983425 () Bool)

(declare-fun e!4432552 () Bool)

(assert (=> d!2292242 (=> res!2983425 e!4432552)))

(assert (=> d!2292242 (= res!2983425 (is-ElementMatch!19416 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))

(assert (=> d!2292242 (= (validRegex!9965 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) e!4432552)))

(declare-fun b!7411200 () Bool)

(assert (=> b!7411200 (= e!4432552 e!4432549)))

(assert (=> b!7411200 (= c!1375664 (is-Star!19416 (ite c!1375555 (reg!19745 (h!78358 (exprs!8856 setElem!56306))) (ite c!1375556 (regOne!39345 (h!78358 (exprs!8856 setElem!56306))) (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))))))

(declare-fun b!7411201 () Bool)

(assert (=> b!7411201 (= e!4432554 e!4432555)))

(declare-fun res!2983423 () Bool)

(assert (=> b!7411201 (=> (not res!2983423) (not e!4432555))))

(assert (=> b!7411201 (= res!2983423 call!682420)))

(declare-fun b!7411202 () Bool)

(declare-fun e!4432551 () Bool)

(assert (=> b!7411202 (= e!4432551 call!682421)))

(declare-fun b!7411203 () Bool)

(declare-fun res!2983422 () Bool)

(assert (=> b!7411203 (=> (not res!2983422) (not e!4432551))))

(assert (=> b!7411203 (= res!2983422 call!682420)))

(assert (=> b!7411203 (= e!4432553 e!4432551)))

(assert (= (and d!2292242 (not res!2983425)) b!7411200))

(assert (= (and b!7411200 c!1375664) b!7411198))

(assert (= (and b!7411200 (not c!1375664)) b!7411197))

(assert (= (and b!7411198 res!2983426) b!7411199))

(assert (= (and b!7411197 c!1375665) b!7411203))

(assert (= (and b!7411197 (not c!1375665)) b!7411195))

(assert (= (and b!7411203 res!2983422) b!7411202))

(assert (= (and b!7411195 (not res!2983424)) b!7411201))

(assert (= (and b!7411201 res!2983423) b!7411196))

(assert (= (or b!7411203 b!7411201) bm!682416))

(assert (= (or b!7411202 b!7411196) bm!682415))

(assert (= (or b!7411199 bm!682416) bm!682414))

(declare-fun m!8046504 () Bool)

(assert (=> bm!682414 m!8046504))

(declare-fun m!8046506 () Bool)

(assert (=> bm!682415 m!8046506))

(declare-fun m!8046508 () Bool)

(assert (=> b!7411198 m!8046508))

(assert (=> bm!682285 d!2292242))

(declare-fun d!2292244 () Bool)

(declare-fun res!2983427 () Bool)

(declare-fun e!4432556 () Bool)

(assert (=> d!2292244 (=> res!2983427 e!4432556)))

(assert (=> d!2292244 (= res!2983427 (is-Nil!71910 (t!386593 (t!386593 (exprs!8856 c!10532)))))))

(assert (=> d!2292244 (= (forall!18200 (t!386593 (t!386593 (exprs!8856 c!10532))) lambda!460001) e!4432556)))

(declare-fun b!7411204 () Bool)

(declare-fun e!4432557 () Bool)

(assert (=> b!7411204 (= e!4432556 e!4432557)))

(declare-fun res!2983428 () Bool)

(assert (=> b!7411204 (=> (not res!2983428) (not e!4432557))))

(assert (=> b!7411204 (= res!2983428 (dynLambda!29688 lambda!460001 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532))))))))

(declare-fun b!7411205 () Bool)

(assert (=> b!7411205 (= e!4432557 (forall!18200 (t!386593 (t!386593 (t!386593 (exprs!8856 c!10532)))) lambda!460001))))

(assert (= (and d!2292244 (not res!2983427)) b!7411204))

(assert (= (and b!7411204 res!2983428) b!7411205))

(declare-fun b_lambda!286675 () Bool)

(assert (=> (not b_lambda!286675) (not b!7411204)))

(declare-fun m!8046510 () Bool)

(assert (=> b!7411204 m!8046510))

(declare-fun m!8046512 () Bool)

(assert (=> b!7411205 m!8046512))

(assert (=> b!7410662 d!2292244))

(declare-fun d!2292246 () Bool)

(declare-fun res!2983429 () Bool)

(declare-fun e!4432558 () Bool)

(assert (=> d!2292246 (=> res!2983429 e!4432558)))

(assert (=> d!2292246 (= res!2983429 (is-Nil!71911 (toList!11767 z!3451)))))

(assert (=> d!2292246 (= (forall!18202 (toList!11767 z!3451) lambda!460031) e!4432558)))

(declare-fun b!7411206 () Bool)

(declare-fun e!4432559 () Bool)

(assert (=> b!7411206 (= e!4432558 e!4432559)))

(declare-fun res!2983430 () Bool)

(assert (=> b!7411206 (=> (not res!2983430) (not e!4432559))))

(assert (=> b!7411206 (= res!2983430 (dynLambda!29690 lambda!460031 (h!78359 (toList!11767 z!3451))))))

(declare-fun b!7411207 () Bool)

(assert (=> b!7411207 (= e!4432559 (forall!18202 (t!386594 (toList!11767 z!3451)) lambda!460031))))

(assert (= (and d!2292246 (not res!2983429)) b!7411206))

(assert (= (and b!7411206 res!2983430) b!7411207))

(declare-fun b_lambda!286677 () Bool)

(assert (=> (not b_lambda!286677) (not b!7411206)))

(declare-fun m!8046514 () Bool)

(assert (=> b!7411206 m!8046514))

(declare-fun m!8046516 () Bool)

(assert (=> b!7411207 m!8046516))

(assert (=> d!2292056 d!2292246))

(declare-fun d!2292248 () Bool)

(declare-fun lt!2619039 () Bool)

(assert (=> d!2292248 (= lt!2619039 (set.member (h!78359 lt!2619016) (content!15221 (t!386594 (t!386594 lt!2619016)))))))

(declare-fun e!4432561 () Bool)

(assert (=> d!2292248 (= lt!2619039 e!4432561)))

(declare-fun res!2983432 () Bool)

(assert (=> d!2292248 (=> (not res!2983432) (not e!4432561))))

(assert (=> d!2292248 (= res!2983432 (is-Cons!71911 (t!386594 (t!386594 lt!2619016))))))

(assert (=> d!2292248 (= (contains!20851 (t!386594 (t!386594 lt!2619016)) (h!78359 lt!2619016)) lt!2619039)))

(declare-fun b!7411208 () Bool)

(declare-fun e!4432560 () Bool)

(assert (=> b!7411208 (= e!4432561 e!4432560)))

(declare-fun res!2983431 () Bool)

(assert (=> b!7411208 (=> res!2983431 e!4432560)))

(assert (=> b!7411208 (= res!2983431 (= (h!78359 (t!386594 (t!386594 lt!2619016))) (h!78359 lt!2619016)))))

(declare-fun b!7411209 () Bool)

(assert (=> b!7411209 (= e!4432560 (contains!20851 (t!386594 (t!386594 (t!386594 lt!2619016))) (h!78359 lt!2619016)))))

(assert (= (and d!2292248 res!2983432) b!7411208))

(assert (= (and b!7411208 (not res!2983431)) b!7411209))

(assert (=> d!2292248 m!8046032))

(declare-fun m!8046518 () Bool)

(assert (=> d!2292248 m!8046518))

(declare-fun m!8046520 () Bool)

(assert (=> b!7411209 m!8046520))

(assert (=> b!7410658 d!2292248))

(declare-fun d!2292250 () Bool)

(declare-fun lt!2619040 () Bool)

(assert (=> d!2292250 (= lt!2619040 (set.member (h!78359 lt!2619026) (content!15221 (t!386594 lt!2619026))))))

(declare-fun e!4432563 () Bool)

(assert (=> d!2292250 (= lt!2619040 e!4432563)))

(declare-fun res!2983434 () Bool)

(assert (=> d!2292250 (=> (not res!2983434) (not e!4432563))))

(assert (=> d!2292250 (= res!2983434 (is-Cons!71911 (t!386594 lt!2619026)))))

(assert (=> d!2292250 (= (contains!20851 (t!386594 lt!2619026) (h!78359 lt!2619026)) lt!2619040)))

(declare-fun b!7411210 () Bool)

(declare-fun e!4432562 () Bool)

(assert (=> b!7411210 (= e!4432563 e!4432562)))

(declare-fun res!2983433 () Bool)

(assert (=> b!7411210 (=> res!2983433 e!4432562)))

(assert (=> b!7411210 (= res!2983433 (= (h!78359 (t!386594 lt!2619026)) (h!78359 lt!2619026)))))

(declare-fun b!7411211 () Bool)

(assert (=> b!7411211 (= e!4432562 (contains!20851 (t!386594 (t!386594 lt!2619026)) (h!78359 lt!2619026)))))

(assert (= (and d!2292250 res!2983434) b!7411210))

(assert (= (and b!7411210 (not res!2983433)) b!7411211))

(assert (=> d!2292250 m!8046018))

(declare-fun m!8046522 () Bool)

(assert (=> d!2292250 m!8046522))

(declare-fun m!8046524 () Bool)

(assert (=> b!7411211 m!8046524))

(assert (=> b!7410556 d!2292250))

(declare-fun bs!1924751 () Bool)

(declare-fun d!2292252 () Bool)

(assert (= bs!1924751 (and d!2292252 d!2292080)))

(declare-fun lambda!460041 () Int)

(assert (=> bs!1924751 (= lambda!460041 lambda!460034)))

(declare-fun bs!1924752 () Bool)

(assert (= bs!1924752 (and d!2292252 d!2291992)))

(assert (=> bs!1924752 (= lambda!460041 lambda!460022)))

(declare-fun bs!1924753 () Bool)

(assert (= bs!1924753 (and d!2292252 d!2292030)))

(assert (=> bs!1924753 (= lambda!460041 lambda!460028)))

(declare-fun bs!1924754 () Bool)

(assert (= bs!1924754 (and d!2292252 d!2292074)))

(assert (=> bs!1924754 (= lambda!460041 lambda!460033)))

(declare-fun bs!1924755 () Bool)

(assert (= bs!1924755 (and d!2292252 d!2291906)))

(assert (=> bs!1924755 (= lambda!460041 lambda!459999)))

(declare-fun bs!1924756 () Bool)

(assert (= bs!1924756 (and d!2292252 d!2291908)))

(assert (=> bs!1924756 (= lambda!460041 lambda!460000)))

(declare-fun bs!1924757 () Bool)

(assert (= bs!1924757 (and d!2292252 d!2292208)))

(assert (=> bs!1924757 (= lambda!460041 lambda!460040)))

(declare-fun bs!1924758 () Bool)

(assert (= bs!1924758 (and d!2292252 d!2291910)))

(assert (=> bs!1924758 (= lambda!460041 lambda!460001)))

(declare-fun bs!1924759 () Bool)

(assert (= bs!1924759 (and d!2292252 d!2292036)))

(assert (=> bs!1924759 (= lambda!460041 lambda!460030)))

(assert (=> d!2292252 (= (inv!91902 setElem!56322) (forall!18200 (exprs!8856 setElem!56322) lambda!460041))))

(declare-fun bs!1924760 () Bool)

(assert (= bs!1924760 d!2292252))

(declare-fun m!8046526 () Bool)

(assert (=> bs!1924760 m!8046526))

(assert (=> setNonEmpty!56322 d!2292252))

(declare-fun d!2292254 () Bool)

(assert (=> d!2292254 (= (nullable!8460 (reg!19745 (h!78358 (exprs!8856 c!10532)))) (nullableFct!3407 (reg!19745 (h!78358 (exprs!8856 c!10532)))))))

(declare-fun bs!1924761 () Bool)

(assert (= bs!1924761 d!2292254))

(declare-fun m!8046528 () Bool)

(assert (=> bs!1924761 m!8046528))

(assert (=> b!7410548 d!2292254))

(declare-fun d!2292256 () Bool)

(declare-fun c!1375666 () Bool)

(assert (=> d!2292256 (= c!1375666 (is-Nil!71911 res!2983224))))

(declare-fun e!4432564 () (Set Context!16712))

(assert (=> d!2292256 (= (content!15221 res!2983224) e!4432564)))

(declare-fun b!7411212 () Bool)

(assert (=> b!7411212 (= e!4432564 (as set.empty (Set Context!16712)))))

(declare-fun b!7411213 () Bool)

(assert (=> b!7411213 (= e!4432564 (set.union (set.insert (h!78359 res!2983224) (as set.empty (Set Context!16712))) (content!15221 (t!386594 res!2983224))))))

(assert (= (and d!2292256 c!1375666) b!7411212))

(assert (= (and d!2292256 (not c!1375666)) b!7411213))

(declare-fun m!8046530 () Bool)

(assert (=> b!7411213 m!8046530))

(declare-fun m!8046532 () Bool)

(assert (=> b!7411213 m!8046532))

(assert (=> b!7410560 d!2292256))

(declare-fun d!2292258 () Bool)

(assert (=> d!2292258 (= (nullable!8460 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) (nullableFct!3407 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun bs!1924762 () Bool)

(assert (= bs!1924762 d!2292258))

(declare-fun m!8046534 () Bool)

(assert (=> bs!1924762 m!8046534))

(assert (=> b!7410671 d!2292258))

(declare-fun d!2292260 () Bool)

(declare-fun res!2983435 () Bool)

(declare-fun e!4432565 () Bool)

(assert (=> d!2292260 (=> res!2983435 e!4432565)))

(assert (=> d!2292260 (= res!2983435 (is-Nil!71910 (t!386593 (t!386593 (exprs!8856 empty!3611)))))))

(assert (=> d!2292260 (= (forall!18200 (t!386593 (t!386593 (exprs!8856 empty!3611))) lambda!459999) e!4432565)))

(declare-fun b!7411214 () Bool)

(declare-fun e!4432566 () Bool)

(assert (=> b!7411214 (= e!4432565 e!4432566)))

(declare-fun res!2983436 () Bool)

(assert (=> b!7411214 (=> (not res!2983436) (not e!4432566))))

(assert (=> b!7411214 (= res!2983436 (dynLambda!29688 lambda!459999 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611))))))))

(declare-fun b!7411215 () Bool)

(assert (=> b!7411215 (= e!4432566 (forall!18200 (t!386593 (t!386593 (t!386593 (exprs!8856 empty!3611)))) lambda!459999))))

(assert (= (and d!2292260 (not res!2983435)) b!7411214))

(assert (= (and b!7411214 res!2983436) b!7411215))

(declare-fun b_lambda!286679 () Bool)

(assert (=> (not b_lambda!286679) (not b!7411214)))

(declare-fun m!8046536 () Bool)

(assert (=> b!7411214 m!8046536))

(declare-fun m!8046538 () Bool)

(assert (=> b!7411215 m!8046538))

(assert (=> b!7410555 d!2292260))

(declare-fun d!2292262 () Bool)

(declare-fun res!2983437 () Bool)

(declare-fun e!4432567 () Bool)

(assert (=> d!2292262 (=> res!2983437 e!4432567)))

(assert (=> d!2292262 (= res!2983437 (is-Nil!71910 (exprs!8856 setElem!56319)))))

(assert (=> d!2292262 (= (forall!18200 (exprs!8856 setElem!56319) lambda!460030) e!4432567)))

(declare-fun b!7411216 () Bool)

(declare-fun e!4432568 () Bool)

(assert (=> b!7411216 (= e!4432567 e!4432568)))

(declare-fun res!2983438 () Bool)

(assert (=> b!7411216 (=> (not res!2983438) (not e!4432568))))

(assert (=> b!7411216 (= res!2983438 (dynLambda!29688 lambda!460030 (h!78358 (exprs!8856 setElem!56319))))))

(declare-fun b!7411217 () Bool)

(assert (=> b!7411217 (= e!4432568 (forall!18200 (t!386593 (exprs!8856 setElem!56319)) lambda!460030))))

(assert (= (and d!2292262 (not res!2983437)) b!7411216))

(assert (= (and b!7411216 res!2983438) b!7411217))

(declare-fun b_lambda!286681 () Bool)

(assert (=> (not b_lambda!286681) (not b!7411216)))

(declare-fun m!8046540 () Bool)

(assert (=> b!7411216 m!8046540))

(declare-fun m!8046542 () Bool)

(assert (=> b!7411217 m!8046542))

(assert (=> d!2292036 d!2292262))

(declare-fun b!7411218 () Bool)

(declare-fun res!2983441 () Bool)

(declare-fun e!4432574 () Bool)

(assert (=> b!7411218 (=> res!2983441 e!4432574)))

(assert (=> b!7411218 (= res!2983441 (not (is-Concat!28261 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))))))

(declare-fun e!4432573 () Bool)

(assert (=> b!7411218 (= e!4432573 e!4432574)))

(declare-fun b!7411219 () Bool)

(declare-fun e!4432575 () Bool)

(declare-fun call!682424 () Bool)

(assert (=> b!7411219 (= e!4432575 call!682424)))

(declare-fun b!7411220 () Bool)

(declare-fun e!4432569 () Bool)

(assert (=> b!7411220 (= e!4432569 e!4432573)))

(declare-fun c!1375668 () Bool)

(assert (=> b!7411220 (= c!1375668 (is-Union!19416 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun bm!682417 () Bool)

(declare-fun c!1375667 () Bool)

(declare-fun call!682422 () Bool)

(assert (=> bm!682417 (= call!682422 (validRegex!9965 (ite c!1375667 (reg!19745 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375668 (regOne!39345 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) (regOne!39344 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun bm!682418 () Bool)

(assert (=> bm!682418 (= call!682424 (validRegex!9965 (ite c!1375668 (regTwo!39345 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) (regTwo!39344 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))))

(declare-fun b!7411221 () Bool)

(declare-fun e!4432570 () Bool)

(assert (=> b!7411221 (= e!4432569 e!4432570)))

(declare-fun res!2983443 () Bool)

(assert (=> b!7411221 (= res!2983443 (not (nullable!8460 (reg!19745 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))))

(assert (=> b!7411221 (=> (not res!2983443) (not e!4432570))))

(declare-fun b!7411222 () Bool)

(assert (=> b!7411222 (= e!4432570 call!682422)))

(declare-fun bm!682419 () Bool)

(declare-fun call!682423 () Bool)

(assert (=> bm!682419 (= call!682423 call!682422)))

(declare-fun d!2292264 () Bool)

(declare-fun res!2983442 () Bool)

(declare-fun e!4432572 () Bool)

(assert (=> d!2292264 (=> res!2983442 e!4432572)))

(assert (=> d!2292264 (= res!2983442 (is-ElementMatch!19416 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(assert (=> d!2292264 (= (validRegex!9965 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) e!4432572)))

(declare-fun b!7411223 () Bool)

(assert (=> b!7411223 (= e!4432572 e!4432569)))

(assert (=> b!7411223 (= c!1375667 (is-Star!19416 (ite c!1375554 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun b!7411224 () Bool)

(assert (=> b!7411224 (= e!4432574 e!4432575)))

(declare-fun res!2983440 () Bool)

(assert (=> b!7411224 (=> (not res!2983440) (not e!4432575))))

(assert (=> b!7411224 (= res!2983440 call!682423)))

(declare-fun b!7411225 () Bool)

(declare-fun e!4432571 () Bool)

(assert (=> b!7411225 (= e!4432571 call!682424)))

(declare-fun b!7411226 () Bool)

(declare-fun res!2983439 () Bool)

(assert (=> b!7411226 (=> (not res!2983439) (not e!4432571))))

(assert (=> b!7411226 (= res!2983439 call!682423)))

(assert (=> b!7411226 (= e!4432573 e!4432571)))

(assert (= (and d!2292264 (not res!2983442)) b!7411223))

(assert (= (and b!7411223 c!1375667) b!7411221))

(assert (= (and b!7411223 (not c!1375667)) b!7411220))

(assert (= (and b!7411221 res!2983443) b!7411222))

(assert (= (and b!7411220 c!1375668) b!7411226))

(assert (= (and b!7411220 (not c!1375668)) b!7411218))

(assert (= (and b!7411226 res!2983439) b!7411225))

(assert (= (and b!7411218 (not res!2983441)) b!7411224))

(assert (= (and b!7411224 res!2983440) b!7411219))

(assert (= (or b!7411226 b!7411224) bm!682419))

(assert (= (or b!7411225 b!7411219) bm!682418))

(assert (= (or b!7411222 bm!682419) bm!682417))

(declare-fun m!8046544 () Bool)

(assert (=> bm!682417 m!8046544))

(declare-fun m!8046546 () Bool)

(assert (=> bm!682418 m!8046546))

(declare-fun m!8046548 () Bool)

(assert (=> b!7411221 m!8046548))

(assert (=> bm!682283 d!2292264))

(declare-fun call!682429 () (Set Context!16712))

(declare-fun call!682426 () List!72034)

(declare-fun bm!682420 () Bool)

(declare-fun c!1375671 () Bool)

(assert (=> bm!682420 (= call!682429 (derivationStepZipperDown!3212 (ite c!1375671 (regOne!39345 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (regOne!39344 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))) (ite c!1375671 (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321)) (Context!16713 call!682426)) (h!78360 s!7927)))))

(declare-fun b!7411227 () Bool)

(declare-fun e!4432580 () (Set Context!16712))

(declare-fun call!682427 () (Set Context!16712))

(assert (=> b!7411227 (= e!4432580 (set.union call!682429 call!682427))))

(declare-fun e!4432576 () (Set Context!16712))

(declare-fun b!7411228 () Bool)

(assert (=> b!7411228 (= e!4432576 (set.insert (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321)) (as set.empty (Set Context!16712))))))

(declare-fun bm!682421 () Bool)

(declare-fun c!1375672 () Bool)

(declare-fun c!1375673 () Bool)

(assert (=> bm!682421 (= call!682426 ($colon$colon!3346 (exprs!8856 (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321))) (ite (or c!1375672 c!1375673) (regTwo!39344 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411229 () Bool)

(declare-fun e!4432578 () (Set Context!16712))

(declare-fun call!682428 () (Set Context!16712))

(assert (=> b!7411229 (= e!4432578 call!682428)))

(declare-fun b!7411230 () Bool)

(assert (=> b!7411230 (= e!4432578 (as set.empty (Set Context!16712)))))

(declare-fun b!7411232 () Bool)

(declare-fun e!4432581 () (Set Context!16712))

(assert (=> b!7411232 (= e!4432581 call!682428)))

(declare-fun bm!682422 () Bool)

(declare-fun call!682430 () List!72034)

(assert (=> bm!682422 (= call!682430 call!682426)))

(declare-fun b!7411233 () Bool)

(declare-fun c!1375669 () Bool)

(assert (=> b!7411233 (= c!1375669 (is-Star!19416 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411233 (= e!4432581 e!4432578)))

(declare-fun call!682425 () (Set Context!16712))

(declare-fun bm!682423 () Bool)

(assert (=> bm!682423 (= call!682425 (derivationStepZipperDown!3212 (ite c!1375671 (regTwo!39345 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375672 (regTwo!39344 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (ite c!1375673 (regOne!39344 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (reg!19745 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))) (ite (or c!1375671 c!1375672) (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321)) (Context!16713 call!682430)) (h!78360 s!7927)))))

(declare-fun b!7411234 () Bool)

(declare-fun e!4432579 () (Set Context!16712))

(assert (=> b!7411234 (= e!4432579 (set.union call!682429 call!682425))))

(declare-fun e!4432577 () Bool)

(declare-fun b!7411235 () Bool)

(assert (=> b!7411235 (= e!4432577 (nullable!8460 (regOne!39344 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))))))))

(declare-fun b!7411236 () Bool)

(assert (=> b!7411236 (= e!4432576 e!4432579)))

(assert (=> b!7411236 (= c!1375671 (is-Union!19416 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411237 () Bool)

(assert (=> b!7411237 (= e!4432580 e!4432581)))

(assert (=> b!7411237 (= c!1375673 (is-Concat!28261 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))))

(declare-fun b!7411231 () Bool)

(assert (=> b!7411231 (= c!1375672 e!4432577)))

(declare-fun res!2983444 () Bool)

(assert (=> b!7411231 (=> (not res!2983444) (not e!4432577))))

(assert (=> b!7411231 (= res!2983444 (is-Concat!28261 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))))))

(assert (=> b!7411231 (= e!4432579 e!4432580)))

(declare-fun c!1375670 () Bool)

(declare-fun d!2292266 () Bool)

(assert (=> d!2292266 (= c!1375670 (and (is-ElementMatch!19416 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (= (c!1375502 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))) (h!78360 s!7927))))))

(assert (=> d!2292266 (= (derivationStepZipperDown!3212 (ite c!1375580 (regTwo!39345 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375581 (regTwo!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (ite c!1375582 (regOne!39344 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (reg!19745 (ite c!1375534 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532)))))))) (ite (or c!1375580 c!1375581) (ite c!1375534 (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682269)) (Context!16713 call!682321)) (h!78360 s!7927)) e!4432576)))

(declare-fun bm!682424 () Bool)

(assert (=> bm!682424 (= call!682427 call!682425)))

(declare-fun bm!682425 () Bool)

(assert (=> bm!682425 (= call!682428 call!682427)))

(assert (= (and d!2292266 c!1375670) b!7411228))

(assert (= (and d!2292266 (not c!1375670)) b!7411236))

(assert (= (and b!7411236 c!1375671) b!7411234))

(assert (= (and b!7411236 (not c!1375671)) b!7411231))

(assert (= (and b!7411231 res!2983444) b!7411235))

(assert (= (and b!7411231 c!1375672) b!7411227))

(assert (= (and b!7411231 (not c!1375672)) b!7411237))

(assert (= (and b!7411237 c!1375673) b!7411232))

(assert (= (and b!7411237 (not c!1375673)) b!7411233))

(assert (= (and b!7411233 c!1375669) b!7411229))

(assert (= (and b!7411233 (not c!1375669)) b!7411230))

(assert (= (or b!7411232 b!7411229) bm!682422))

(assert (= (or b!7411232 b!7411229) bm!682425))

(assert (= (or b!7411227 bm!682422) bm!682421))

(assert (= (or b!7411227 bm!682425) bm!682424))

(assert (= (or b!7411234 b!7411227) bm!682420))

(assert (= (or b!7411234 bm!682424) bm!682423))

(declare-fun m!8046550 () Bool)

(assert (=> bm!682421 m!8046550))

(declare-fun m!8046552 () Bool)

(assert (=> bm!682420 m!8046552))

(declare-fun m!8046554 () Bool)

(assert (=> bm!682423 m!8046554))

(declare-fun m!8046556 () Bool)

(assert (=> b!7411235 m!8046556))

(declare-fun m!8046558 () Bool)

(assert (=> b!7411228 m!8046558))

(assert (=> bm!682314 d!2292266))

(declare-fun d!2292268 () Bool)

(assert (=> d!2292268 (= ($colon$colon!3346 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (ite (or c!1375546 c!1375547) (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))) (Cons!71910 (ite (or c!1375546 c!1375547) (regTwo!39344 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))) (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))

(assert (=> bm!682271 d!2292268))

(declare-fun bs!1924763 () Bool)

(declare-fun d!2292270 () Bool)

(assert (= bs!1924763 (and d!2292270 d!2292080)))

(declare-fun lambda!460042 () Int)

(assert (=> bs!1924763 (= lambda!460042 lambda!460034)))

(declare-fun bs!1924764 () Bool)

(assert (= bs!1924764 (and d!2292270 d!2292252)))

(assert (=> bs!1924764 (= lambda!460042 lambda!460041)))

(declare-fun bs!1924765 () Bool)

(assert (= bs!1924765 (and d!2292270 d!2291992)))

(assert (=> bs!1924765 (= lambda!460042 lambda!460022)))

(declare-fun bs!1924766 () Bool)

(assert (= bs!1924766 (and d!2292270 d!2292030)))

(assert (=> bs!1924766 (= lambda!460042 lambda!460028)))

(declare-fun bs!1924767 () Bool)

(assert (= bs!1924767 (and d!2292270 d!2292074)))

(assert (=> bs!1924767 (= lambda!460042 lambda!460033)))

(declare-fun bs!1924768 () Bool)

(assert (= bs!1924768 (and d!2292270 d!2291906)))

(assert (=> bs!1924768 (= lambda!460042 lambda!459999)))

(declare-fun bs!1924769 () Bool)

(assert (= bs!1924769 (and d!2292270 d!2291908)))

(assert (=> bs!1924769 (= lambda!460042 lambda!460000)))

(declare-fun bs!1924770 () Bool)

(assert (= bs!1924770 (and d!2292270 d!2292208)))

(assert (=> bs!1924770 (= lambda!460042 lambda!460040)))

(declare-fun bs!1924771 () Bool)

(assert (= bs!1924771 (and d!2292270 d!2291910)))

(assert (=> bs!1924771 (= lambda!460042 lambda!460001)))

(declare-fun bs!1924772 () Bool)

(assert (= bs!1924772 (and d!2292270 d!2292036)))

(assert (=> bs!1924772 (= lambda!460042 lambda!460030)))

(assert (=> d!2292270 (= (inv!91902 (h!78359 res!2983224)) (forall!18200 (exprs!8856 (h!78359 res!2983224)) lambda!460042))))

(declare-fun bs!1924773 () Bool)

(assert (= bs!1924773 d!2292270))

(declare-fun m!8046560 () Bool)

(assert (=> bs!1924773 m!8046560))

(assert (=> b!7410558 d!2292270))

(declare-fun d!2292272 () Bool)

(assert (=> d!2292272 (= (nullable!8460 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))) (nullableFct!3407 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))

(declare-fun bs!1924774 () Bool)

(assert (= bs!1924774 d!2292272))

(declare-fun m!8046562 () Bool)

(assert (=> bs!1924774 m!8046562))

(assert (=> b!7410602 d!2292272))

(declare-fun b!7411238 () Bool)

(declare-fun res!2983447 () Bool)

(declare-fun e!4432587 () Bool)

(assert (=> b!7411238 (=> res!2983447 e!4432587)))

(assert (=> b!7411238 (= res!2983447 (not (is-Concat!28261 (h!78358 (exprs!8856 setElem!56312)))))))

(declare-fun e!4432586 () Bool)

(assert (=> b!7411238 (= e!4432586 e!4432587)))

(declare-fun b!7411239 () Bool)

(declare-fun e!4432588 () Bool)

(declare-fun call!682433 () Bool)

(assert (=> b!7411239 (= e!4432588 call!682433)))

(declare-fun b!7411240 () Bool)

(declare-fun e!4432582 () Bool)

(assert (=> b!7411240 (= e!4432582 e!4432586)))

(declare-fun c!1375675 () Bool)

(assert (=> b!7411240 (= c!1375675 (is-Union!19416 (h!78358 (exprs!8856 setElem!56312))))))

(declare-fun c!1375674 () Bool)

(declare-fun bm!682426 () Bool)

(declare-fun call!682431 () Bool)

(assert (=> bm!682426 (= call!682431 (validRegex!9965 (ite c!1375674 (reg!19745 (h!78358 (exprs!8856 setElem!56312))) (ite c!1375675 (regOne!39345 (h!78358 (exprs!8856 setElem!56312))) (regOne!39344 (h!78358 (exprs!8856 setElem!56312)))))))))

(declare-fun bm!682427 () Bool)

(assert (=> bm!682427 (= call!682433 (validRegex!9965 (ite c!1375675 (regTwo!39345 (h!78358 (exprs!8856 setElem!56312))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56312))))))))

(declare-fun b!7411241 () Bool)

(declare-fun e!4432583 () Bool)

(assert (=> b!7411241 (= e!4432582 e!4432583)))

(declare-fun res!2983449 () Bool)

(assert (=> b!7411241 (= res!2983449 (not (nullable!8460 (reg!19745 (h!78358 (exprs!8856 setElem!56312))))))))

(assert (=> b!7411241 (=> (not res!2983449) (not e!4432583))))

(declare-fun b!7411242 () Bool)

(assert (=> b!7411242 (= e!4432583 call!682431)))

(declare-fun bm!682428 () Bool)

(declare-fun call!682432 () Bool)

(assert (=> bm!682428 (= call!682432 call!682431)))

(declare-fun d!2292274 () Bool)

(declare-fun res!2983448 () Bool)

(declare-fun e!4432585 () Bool)

(assert (=> d!2292274 (=> res!2983448 e!4432585)))

(assert (=> d!2292274 (= res!2983448 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56312))))))

(assert (=> d!2292274 (= (validRegex!9965 (h!78358 (exprs!8856 setElem!56312))) e!4432585)))

(declare-fun b!7411243 () Bool)

(assert (=> b!7411243 (= e!4432585 e!4432582)))

(assert (=> b!7411243 (= c!1375674 (is-Star!19416 (h!78358 (exprs!8856 setElem!56312))))))

(declare-fun b!7411244 () Bool)

(assert (=> b!7411244 (= e!4432587 e!4432588)))

(declare-fun res!2983446 () Bool)

(assert (=> b!7411244 (=> (not res!2983446) (not e!4432588))))

(assert (=> b!7411244 (= res!2983446 call!682432)))

(declare-fun b!7411245 () Bool)

(declare-fun e!4432584 () Bool)

(assert (=> b!7411245 (= e!4432584 call!682433)))

(declare-fun b!7411246 () Bool)

(declare-fun res!2983445 () Bool)

(assert (=> b!7411246 (=> (not res!2983445) (not e!4432584))))

(assert (=> b!7411246 (= res!2983445 call!682432)))

(assert (=> b!7411246 (= e!4432586 e!4432584)))

(assert (= (and d!2292274 (not res!2983448)) b!7411243))

(assert (= (and b!7411243 c!1375674) b!7411241))

(assert (= (and b!7411243 (not c!1375674)) b!7411240))

(assert (= (and b!7411241 res!2983449) b!7411242))

(assert (= (and b!7411240 c!1375675) b!7411246))

(assert (= (and b!7411240 (not c!1375675)) b!7411238))

(assert (= (and b!7411246 res!2983445) b!7411245))

(assert (= (and b!7411238 (not res!2983447)) b!7411244))

(assert (= (and b!7411244 res!2983446) b!7411239))

(assert (= (or b!7411246 b!7411244) bm!682428))

(assert (= (or b!7411245 b!7411239) bm!682427))

(assert (= (or b!7411242 bm!682428) bm!682426))

(declare-fun m!8046564 () Bool)

(assert (=> bm!682426 m!8046564))

(declare-fun m!8046566 () Bool)

(assert (=> bm!682427 m!8046566))

(declare-fun m!8046568 () Bool)

(assert (=> b!7411241 m!8046568))

(assert (=> bs!1924688 d!2292274))

(declare-fun call!682438 () (Set Context!16712))

(declare-fun c!1375678 () Bool)

(declare-fun call!682435 () List!72034)

(declare-fun bm!682429 () Bool)

(assert (=> bm!682429 (= call!682438 (derivationStepZipperDown!3212 (ite c!1375678 (regOne!39345 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (regOne!39344 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))) (ite c!1375678 (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301)) (Context!16713 call!682435)) (h!78360 s!7927)))))

(declare-fun b!7411247 () Bool)

(declare-fun e!4432593 () (Set Context!16712))

(declare-fun call!682436 () (Set Context!16712))

(assert (=> b!7411247 (= e!4432593 (set.union call!682438 call!682436))))

(declare-fun b!7411248 () Bool)

(declare-fun e!4432589 () (Set Context!16712))

(assert (=> b!7411248 (= e!4432589 (set.insert (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301)) (as set.empty (Set Context!16712))))))

(declare-fun c!1375680 () Bool)

(declare-fun bm!682430 () Bool)

(declare-fun c!1375679 () Bool)

(assert (=> bm!682430 (= call!682435 ($colon$colon!3346 (exprs!8856 (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301))) (ite (or c!1375679 c!1375680) (regTwo!39344 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))))))

(declare-fun b!7411249 () Bool)

(declare-fun e!4432591 () (Set Context!16712))

(declare-fun call!682437 () (Set Context!16712))

(assert (=> b!7411249 (= e!4432591 call!682437)))

(declare-fun b!7411250 () Bool)

(assert (=> b!7411250 (= e!4432591 (as set.empty (Set Context!16712)))))

(declare-fun b!7411252 () Bool)

(declare-fun e!4432594 () (Set Context!16712))

(assert (=> b!7411252 (= e!4432594 call!682437)))

(declare-fun bm!682431 () Bool)

(declare-fun call!682439 () List!72034)

(assert (=> bm!682431 (= call!682439 call!682435)))

(declare-fun b!7411253 () Bool)

(declare-fun c!1375676 () Bool)

(assert (=> b!7411253 (= c!1375676 (is-Star!19416 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))))

(assert (=> b!7411253 (= e!4432594 e!4432591)))

(declare-fun bm!682432 () Bool)

(declare-fun call!682434 () (Set Context!16712))

(assert (=> bm!682432 (= call!682434 (derivationStepZipperDown!3212 (ite c!1375678 (regTwo!39345 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (ite c!1375679 (regTwo!39344 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (ite c!1375680 (regOne!39344 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (reg!19745 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))))) (ite (or c!1375678 c!1375679) (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301)) (Context!16713 call!682439)) (h!78360 s!7927)))))

(declare-fun b!7411254 () Bool)

(declare-fun e!4432592 () (Set Context!16712))

(assert (=> b!7411254 (= e!4432592 (set.union call!682438 call!682434))))

(declare-fun b!7411255 () Bool)

(declare-fun e!4432590 () Bool)

(assert (=> b!7411255 (= e!4432590 (nullable!8460 (regOne!39344 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))))))))

(declare-fun b!7411256 () Bool)

(assert (=> b!7411256 (= e!4432589 e!4432592)))

(assert (=> b!7411256 (= c!1375678 (is-Union!19416 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))))

(declare-fun b!7411257 () Bool)

(assert (=> b!7411257 (= e!4432593 e!4432594)))

(assert (=> b!7411257 (= c!1375680 (is-Concat!28261 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))))

(declare-fun b!7411251 () Bool)

(assert (=> b!7411251 (= c!1375679 e!4432590)))

(declare-fun res!2983450 () Bool)

(assert (=> b!7411251 (=> (not res!2983450) (not e!4432590))))

(assert (=> b!7411251 (= res!2983450 (is-Concat!28261 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))))))

(assert (=> b!7411251 (= e!4432592 e!4432593)))

(declare-fun d!2292276 () Bool)

(declare-fun c!1375677 () Bool)

(assert (=> d!2292276 (= c!1375677 (and (is-ElementMatch!19416 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (= (c!1375502 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))))))) (h!78360 s!7927))))))

(assert (=> d!2292276 (= (derivationStepZipperDown!3212 (ite c!1375561 (regTwo!39345 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375562 (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375563 (regOne!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (reg!19745 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))))) (ite (or c!1375561 c!1375562) (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)) (Context!16713 call!682301)) (h!78360 s!7927)) e!4432589)))

(declare-fun bm!682433 () Bool)

(assert (=> bm!682433 (= call!682436 call!682434)))

(declare-fun bm!682434 () Bool)

(assert (=> bm!682434 (= call!682437 call!682436)))

(assert (= (and d!2292276 c!1375677) b!7411248))

(assert (= (and d!2292276 (not c!1375677)) b!7411256))

(assert (= (and b!7411256 c!1375678) b!7411254))

(assert (= (and b!7411256 (not c!1375678)) b!7411251))

(assert (= (and b!7411251 res!2983450) b!7411255))

(assert (= (and b!7411251 c!1375679) b!7411247))

(assert (= (and b!7411251 (not c!1375679)) b!7411257))

(assert (= (and b!7411257 c!1375680) b!7411252))

(assert (= (and b!7411257 (not c!1375680)) b!7411253))

(assert (= (and b!7411253 c!1375676) b!7411249))

(assert (= (and b!7411253 (not c!1375676)) b!7411250))

(assert (= (or b!7411252 b!7411249) bm!682431))

(assert (= (or b!7411252 b!7411249) bm!682434))

(assert (= (or b!7411247 bm!682431) bm!682430))

(assert (= (or b!7411247 bm!682434) bm!682433))

(assert (= (or b!7411254 b!7411247) bm!682429))

(assert (= (or b!7411254 bm!682433) bm!682432))

(declare-fun m!8046570 () Bool)

(assert (=> bm!682430 m!8046570))

(declare-fun m!8046572 () Bool)

(assert (=> bm!682429 m!8046572))

(declare-fun m!8046574 () Bool)

(assert (=> bm!682432 m!8046574))

(declare-fun m!8046576 () Bool)

(assert (=> b!7411255 m!8046576))

(declare-fun m!8046578 () Bool)

(assert (=> b!7411248 m!8046578))

(assert (=> bm!682294 d!2292276))

(declare-fun b!7411258 () Bool)

(declare-fun res!2983453 () Bool)

(declare-fun e!4432600 () Bool)

(assert (=> b!7411258 (=> res!2983453 e!4432600)))

(assert (=> b!7411258 (= res!2983453 (not (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 setElem!56306))))))))

(declare-fun e!4432599 () Bool)

(assert (=> b!7411258 (= e!4432599 e!4432600)))

(declare-fun b!7411259 () Bool)

(declare-fun e!4432601 () Bool)

(declare-fun call!682442 () Bool)

(assert (=> b!7411259 (= e!4432601 call!682442)))

(declare-fun b!7411260 () Bool)

(declare-fun e!4432595 () Bool)

(assert (=> b!7411260 (= e!4432595 e!4432599)))

(declare-fun c!1375682 () Bool)

(assert (=> b!7411260 (= c!1375682 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))

(declare-fun c!1375681 () Bool)

(declare-fun bm!682435 () Bool)

(declare-fun call!682440 () Bool)

(assert (=> bm!682435 (= call!682440 (validRegex!9965 (ite c!1375681 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))) (ite c!1375682 (regOne!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))) (regOne!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306))))))))))

(declare-fun bm!682436 () Bool)

(assert (=> bm!682436 (= call!682442 (validRegex!9965 (ite c!1375682 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))) (regTwo!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))))

(declare-fun b!7411261 () Bool)

(declare-fun e!4432596 () Bool)

(assert (=> b!7411261 (= e!4432595 e!4432596)))

(declare-fun res!2983455 () Bool)

(assert (=> b!7411261 (= res!2983455 (not (nullable!8460 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))))

(assert (=> b!7411261 (=> (not res!2983455) (not e!4432596))))

(declare-fun b!7411262 () Bool)

(assert (=> b!7411262 (= e!4432596 call!682440)))

(declare-fun bm!682437 () Bool)

(declare-fun call!682441 () Bool)

(assert (=> bm!682437 (= call!682441 call!682440)))

(declare-fun d!2292278 () Bool)

(declare-fun res!2983454 () Bool)

(declare-fun e!4432598 () Bool)

(assert (=> d!2292278 (=> res!2983454 e!4432598)))

(assert (=> d!2292278 (= res!2983454 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))

(assert (=> d!2292278 (= (validRegex!9965 (h!78358 (t!386593 (exprs!8856 setElem!56306)))) e!4432598)))

(declare-fun b!7411263 () Bool)

(assert (=> b!7411263 (= e!4432598 e!4432595)))

(assert (=> b!7411263 (= c!1375681 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))))

(declare-fun b!7411264 () Bool)

(assert (=> b!7411264 (= e!4432600 e!4432601)))

(declare-fun res!2983452 () Bool)

(assert (=> b!7411264 (=> (not res!2983452) (not e!4432601))))

(assert (=> b!7411264 (= res!2983452 call!682441)))

(declare-fun b!7411265 () Bool)

(declare-fun e!4432597 () Bool)

(assert (=> b!7411265 (= e!4432597 call!682442)))

(declare-fun b!7411266 () Bool)

(declare-fun res!2983451 () Bool)

(assert (=> b!7411266 (=> (not res!2983451) (not e!4432597))))

(assert (=> b!7411266 (= res!2983451 call!682441)))

(assert (=> b!7411266 (= e!4432599 e!4432597)))

(assert (= (and d!2292278 (not res!2983454)) b!7411263))

(assert (= (and b!7411263 c!1375681) b!7411261))

(assert (= (and b!7411263 (not c!1375681)) b!7411260))

(assert (= (and b!7411261 res!2983455) b!7411262))

(assert (= (and b!7411260 c!1375682) b!7411266))

(assert (= (and b!7411260 (not c!1375682)) b!7411258))

(assert (= (and b!7411266 res!2983451) b!7411265))

(assert (= (and b!7411258 (not res!2983453)) b!7411264))

(assert (= (and b!7411264 res!2983452) b!7411259))

(assert (= (or b!7411266 b!7411264) bm!682437))

(assert (= (or b!7411265 b!7411259) bm!682436))

(assert (= (or b!7411262 bm!682437) bm!682435))

(declare-fun m!8046580 () Bool)

(assert (=> bm!682435 m!8046580))

(declare-fun m!8046582 () Bool)

(assert (=> bm!682436 m!8046582))

(declare-fun m!8046584 () Bool)

(assert (=> b!7411261 m!8046584))

(assert (=> bs!1924691 d!2292278))

(declare-fun d!2292280 () Bool)

(declare-fun res!2983456 () Bool)

(declare-fun e!4432602 () Bool)

(assert (=> d!2292280 (=> res!2983456 e!4432602)))

(assert (=> d!2292280 (= res!2983456 (is-Nil!71910 (t!386593 (exprs!8856 setElem!56312))))))

(assert (=> d!2292280 (= (forall!18200 (t!386593 (exprs!8856 setElem!56312)) lambda!460022) e!4432602)))

(declare-fun b!7411267 () Bool)

(declare-fun e!4432603 () Bool)

(assert (=> b!7411267 (= e!4432602 e!4432603)))

(declare-fun res!2983457 () Bool)

(assert (=> b!7411267 (=> (not res!2983457) (not e!4432603))))

(assert (=> b!7411267 (= res!2983457 (dynLambda!29688 lambda!460022 (h!78358 (t!386593 (exprs!8856 setElem!56312)))))))

(declare-fun b!7411268 () Bool)

(assert (=> b!7411268 (= e!4432603 (forall!18200 (t!386593 (t!386593 (exprs!8856 setElem!56312))) lambda!460022))))

(assert (= (and d!2292280 (not res!2983456)) b!7411267))

(assert (= (and b!7411267 res!2983457) b!7411268))

(declare-fun b_lambda!286683 () Bool)

(assert (=> (not b_lambda!286683) (not b!7411267)))

(declare-fun m!8046586 () Bool)

(assert (=> b!7411267 m!8046586))

(declare-fun m!8046588 () Bool)

(assert (=> b!7411268 m!8046588))

(assert (=> b!7410573 d!2292280))

(declare-fun b!7411269 () Bool)

(declare-fun res!2983460 () Bool)

(declare-fun e!4432609 () Bool)

(assert (=> b!7411269 (=> res!2983460 e!4432609)))

(assert (=> b!7411269 (= res!2983460 (not (is-Concat!28261 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))))))

(declare-fun e!4432608 () Bool)

(assert (=> b!7411269 (= e!4432608 e!4432609)))

(declare-fun b!7411270 () Bool)

(declare-fun e!4432610 () Bool)

(declare-fun call!682445 () Bool)

(assert (=> b!7411270 (= e!4432610 call!682445)))

(declare-fun b!7411271 () Bool)

(declare-fun e!4432604 () Bool)

(assert (=> b!7411271 (= e!4432604 e!4432608)))

(declare-fun c!1375684 () Bool)

(assert (=> b!7411271 (= c!1375684 (is-Union!19416 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))

(declare-fun bm!682438 () Bool)

(declare-fun call!682443 () Bool)

(declare-fun c!1375683 () Bool)

(assert (=> bm!682438 (= call!682443 (validRegex!9965 (ite c!1375683 (reg!19745 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) (ite c!1375684 (regOne!39345 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) (regOne!39344 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))))))))

(declare-fun bm!682439 () Bool)

(assert (=> bm!682439 (= call!682445 (validRegex!9965 (ite c!1375684 (regTwo!39345 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) (regTwo!39344 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))))

(declare-fun b!7411272 () Bool)

(declare-fun e!4432605 () Bool)

(assert (=> b!7411272 (= e!4432604 e!4432605)))

(declare-fun res!2983462 () Bool)

(assert (=> b!7411272 (= res!2983462 (not (nullable!8460 (reg!19745 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))))

(assert (=> b!7411272 (=> (not res!2983462) (not e!4432605))))

(declare-fun b!7411273 () Bool)

(assert (=> b!7411273 (= e!4432605 call!682443)))

(declare-fun bm!682440 () Bool)

(declare-fun call!682444 () Bool)

(assert (=> bm!682440 (= call!682444 call!682443)))

(declare-fun d!2292282 () Bool)

(declare-fun res!2983461 () Bool)

(declare-fun e!4432607 () Bool)

(assert (=> d!2292282 (=> res!2983461 e!4432607)))

(assert (=> d!2292282 (= res!2983461 (is-ElementMatch!19416 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))

(assert (=> d!2292282 (= (validRegex!9965 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))) e!4432607)))

(declare-fun b!7411274 () Bool)

(assert (=> b!7411274 (= e!4432607 e!4432604)))

(assert (=> b!7411274 (= c!1375683 (is-Star!19416 (ite c!1375558 (regTwo!39345 (h!78358 (exprs!8856 empty!3611))) (regTwo!39344 (h!78358 (exprs!8856 empty!3611))))))))

(declare-fun b!7411275 () Bool)

(assert (=> b!7411275 (= e!4432609 e!4432610)))

(declare-fun res!2983459 () Bool)

(assert (=> b!7411275 (=> (not res!2983459) (not e!4432610))))

(assert (=> b!7411275 (= res!2983459 call!682444)))

(declare-fun b!7411276 () Bool)

(declare-fun e!4432606 () Bool)

(assert (=> b!7411276 (= e!4432606 call!682445)))

(declare-fun b!7411277 () Bool)

(declare-fun res!2983458 () Bool)

(assert (=> b!7411277 (=> (not res!2983458) (not e!4432606))))

(assert (=> b!7411277 (= res!2983458 call!682444)))

(assert (=> b!7411277 (= e!4432608 e!4432606)))

(assert (= (and d!2292282 (not res!2983461)) b!7411274))

(assert (= (and b!7411274 c!1375683) b!7411272))

(assert (= (and b!7411274 (not c!1375683)) b!7411271))

(assert (= (and b!7411272 res!2983462) b!7411273))

(assert (= (and b!7411271 c!1375684) b!7411277))

(assert (= (and b!7411271 (not c!1375684)) b!7411269))

(assert (= (and b!7411277 res!2983458) b!7411276))

(assert (= (and b!7411269 (not res!2983460)) b!7411275))

(assert (= (and b!7411275 res!2983459) b!7411270))

(assert (= (or b!7411277 b!7411275) bm!682440))

(assert (= (or b!7411276 b!7411270) bm!682439))

(assert (= (or b!7411273 bm!682440) bm!682438))

(declare-fun m!8046590 () Bool)

(assert (=> bm!682438 m!8046590))

(declare-fun m!8046592 () Bool)

(assert (=> bm!682439 m!8046592))

(declare-fun m!8046594 () Bool)

(assert (=> b!7411272 m!8046594))

(assert (=> bm!682289 d!2292282))

(declare-fun bs!1924775 () Bool)

(declare-fun d!2292284 () Bool)

(assert (= bs!1924775 (and d!2292284 d!2292080)))

(declare-fun lambda!460043 () Int)

(assert (=> bs!1924775 (= lambda!460043 lambda!460034)))

(declare-fun bs!1924776 () Bool)

(assert (= bs!1924776 (and d!2292284 d!2292252)))

(assert (=> bs!1924776 (= lambda!460043 lambda!460041)))

(declare-fun bs!1924777 () Bool)

(assert (= bs!1924777 (and d!2292284 d!2291992)))

(assert (=> bs!1924777 (= lambda!460043 lambda!460022)))

(declare-fun bs!1924778 () Bool)

(assert (= bs!1924778 (and d!2292284 d!2292030)))

(assert (=> bs!1924778 (= lambda!460043 lambda!460028)))

(declare-fun bs!1924779 () Bool)

(assert (= bs!1924779 (and d!2292284 d!2292074)))

(assert (=> bs!1924779 (= lambda!460043 lambda!460033)))

(declare-fun bs!1924780 () Bool)

(assert (= bs!1924780 (and d!2292284 d!2291906)))

(assert (=> bs!1924780 (= lambda!460043 lambda!459999)))

(declare-fun bs!1924781 () Bool)

(assert (= bs!1924781 (and d!2292284 d!2291908)))

(assert (=> bs!1924781 (= lambda!460043 lambda!460000)))

(declare-fun bs!1924782 () Bool)

(assert (= bs!1924782 (and d!2292284 d!2291910)))

(assert (=> bs!1924782 (= lambda!460043 lambda!460001)))

(declare-fun bs!1924783 () Bool)

(assert (= bs!1924783 (and d!2292284 d!2292036)))

(assert (=> bs!1924783 (= lambda!460043 lambda!460030)))

(declare-fun bs!1924784 () Bool)

(assert (= bs!1924784 (and d!2292284 d!2292208)))

(assert (=> bs!1924784 (= lambda!460043 lambda!460040)))

(declare-fun bs!1924785 () Bool)

(assert (= bs!1924785 (and d!2292284 d!2292270)))

(assert (=> bs!1924785 (= lambda!460043 lambda!460042)))

(assert (=> d!2292284 (= (inv!91902 (h!78359 (t!386594 res!2983178))) (forall!18200 (exprs!8856 (h!78359 (t!386594 res!2983178))) lambda!460043))))

(declare-fun bs!1924786 () Bool)

(assert (= bs!1924786 d!2292284))

(declare-fun m!8046596 () Bool)

(assert (=> bs!1924786 m!8046596))

(assert (=> b!7410746 d!2292284))

(assert (=> d!2292072 d!2292012))

(declare-fun d!2292286 () Bool)

(declare-fun res!2983463 () Bool)

(declare-fun e!4432611 () Bool)

(assert (=> d!2292286 (=> res!2983463 e!4432611)))

(assert (=> d!2292286 (= res!2983463 (is-Nil!71910 (exprs!8856 setElem!56318)))))

(assert (=> d!2292286 (= (forall!18200 (exprs!8856 setElem!56318) lambda!460034) e!4432611)))

(declare-fun b!7411278 () Bool)

(declare-fun e!4432612 () Bool)

(assert (=> b!7411278 (= e!4432611 e!4432612)))

(declare-fun res!2983464 () Bool)

(assert (=> b!7411278 (=> (not res!2983464) (not e!4432612))))

(assert (=> b!7411278 (= res!2983464 (dynLambda!29688 lambda!460034 (h!78358 (exprs!8856 setElem!56318))))))

(declare-fun b!7411279 () Bool)

(assert (=> b!7411279 (= e!4432612 (forall!18200 (t!386593 (exprs!8856 setElem!56318)) lambda!460034))))

(assert (= (and d!2292286 (not res!2983463)) b!7411278))

(assert (= (and b!7411278 res!2983464) b!7411279))

(declare-fun b_lambda!286685 () Bool)

(assert (=> (not b_lambda!286685) (not b!7411278)))

(declare-fun m!8046598 () Bool)

(assert (=> b!7411278 m!8046598))

(declare-fun m!8046600 () Bool)

(assert (=> b!7411279 m!8046600))

(assert (=> d!2292080 d!2292286))

(declare-fun d!2292288 () Bool)

(declare-fun lt!2619041 () Bool)

(assert (=> d!2292288 (= lt!2619041 (set.member (h!78359 (t!386594 lt!2619016)) (content!15221 (t!386594 (t!386594 lt!2619016)))))))

(declare-fun e!4432614 () Bool)

(assert (=> d!2292288 (= lt!2619041 e!4432614)))

(declare-fun res!2983466 () Bool)

(assert (=> d!2292288 (=> (not res!2983466) (not e!4432614))))

(assert (=> d!2292288 (= res!2983466 (is-Cons!71911 (t!386594 (t!386594 lt!2619016))))))

(assert (=> d!2292288 (= (contains!20851 (t!386594 (t!386594 lt!2619016)) (h!78359 (t!386594 lt!2619016))) lt!2619041)))

(declare-fun b!7411280 () Bool)

(declare-fun e!4432613 () Bool)

(assert (=> b!7411280 (= e!4432614 e!4432613)))

(declare-fun res!2983465 () Bool)

(assert (=> b!7411280 (=> res!2983465 e!4432613)))

(assert (=> b!7411280 (= res!2983465 (= (h!78359 (t!386594 (t!386594 lt!2619016))) (h!78359 (t!386594 lt!2619016))))))

(declare-fun b!7411281 () Bool)

(assert (=> b!7411281 (= e!4432613 (contains!20851 (t!386594 (t!386594 (t!386594 lt!2619016))) (h!78359 (t!386594 lt!2619016))))))

(assert (= (and d!2292288 res!2983466) b!7411280))

(assert (= (and b!7411280 (not res!2983465)) b!7411281))

(assert (=> d!2292288 m!8046032))

(declare-fun m!8046602 () Bool)

(assert (=> d!2292288 m!8046602))

(declare-fun m!8046604 () Bool)

(assert (=> b!7411281 m!8046604))

(assert (=> b!7410659 d!2292288))

(declare-fun b!7411282 () Bool)

(declare-fun e!4432616 () (Set Context!16712))

(assert (=> b!7411282 (= e!4432616 (as set.empty (Set Context!16712)))))

(declare-fun b!7411283 () Bool)

(declare-fun e!4432615 () (Set Context!16712))

(assert (=> b!7411283 (= e!4432615 e!4432616)))

(declare-fun c!1375685 () Bool)

(assert (=> b!7411283 (= c!1375685 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))))

(declare-fun b!7411284 () Bool)

(declare-fun e!4432617 () Bool)

(assert (=> b!7411284 (= e!4432617 (nullable!8460 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))))))

(declare-fun b!7411285 () Bool)

(declare-fun call!682446 () (Set Context!16712))

(assert (=> b!7411285 (= e!4432616 call!682446)))

(declare-fun b!7411286 () Bool)

(assert (=> b!7411286 (= e!4432615 (set.union call!682446 (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))) (h!78360 s!7927))))))

(declare-fun bm!682441 () Bool)

(assert (=> bm!682441 (= call!682446 (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))) (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532)))))))))))) (h!78360 s!7927)))))

(declare-fun d!2292290 () Bool)

(declare-fun c!1375686 () Bool)

(assert (=> d!2292290 (= c!1375686 e!4432617)))

(declare-fun res!2983467 () Bool)

(assert (=> d!2292290 (=> (not res!2983467) (not e!4432617))))

(assert (=> d!2292290 (= res!2983467 (is-Cons!71910 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))))))))

(assert (=> d!2292290 (= (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 (Context!16713 (t!386593 (exprs!8856 c!10532))))))))) (h!78360 s!7927)) e!4432615)))

(assert (= (and d!2292290 res!2983467) b!7411284))

(assert (= (and d!2292290 c!1375686) b!7411286))

(assert (= (and d!2292290 (not c!1375686)) b!7411283))

(assert (= (and b!7411283 c!1375685) b!7411285))

(assert (= (and b!7411283 (not c!1375685)) b!7411282))

(assert (= (or b!7411286 b!7411285) bm!682441))

(declare-fun m!8046606 () Bool)

(assert (=> b!7411284 m!8046606))

(declare-fun m!8046608 () Bool)

(assert (=> b!7411286 m!8046608))

(declare-fun m!8046610 () Bool)

(assert (=> bm!682441 m!8046610))

(assert (=> b!7410505 d!2292290))

(declare-fun bs!1924787 () Bool)

(declare-fun d!2292292 () Bool)

(assert (= bs!1924787 (and d!2292292 b!7410247)))

(declare-fun lambda!460044 () Int)

(assert (=> bs!1924787 (not (= lambda!460044 lambda!459987))))

(declare-fun bs!1924788 () Bool)

(assert (= bs!1924788 (and d!2292292 d!2292056)))

(assert (=> bs!1924788 (= (= lambda!460021 lambda!459996) (= lambda!460044 lambda!460031))))

(declare-fun bs!1924789 () Bool)

(assert (= bs!1924789 (and d!2292292 d!2291904)))

(assert (=> bs!1924789 (not (= lambda!460044 lambda!459996))))

(declare-fun bs!1924790 () Bool)

(assert (= bs!1924790 (and d!2292292 d!2291982)))

(assert (=> bs!1924790 (not (= lambda!460044 lambda!460021))))

(declare-fun bs!1924791 () Bool)

(assert (= bs!1924791 (and d!2292292 d!2291966)))

(assert (=> bs!1924791 (= (= lambda!460021 lambda!459987) (= lambda!460044 lambda!460018))))

(assert (=> d!2292292 true))

(assert (=> d!2292292 (< (dynLambda!29685 order!29555 lambda!460021) (dynLambda!29685 order!29555 lambda!460044))))

(assert (=> d!2292292 (= (exists!4788 (toList!11767 z!3451) lambda!460021) (not (forall!18202 (toList!11767 z!3451) lambda!460044)))))

(declare-fun bs!1924792 () Bool)

(assert (= bs!1924792 d!2292292))

(assert (=> bs!1924792 m!8045860))

(declare-fun m!8046612 () Bool)

(assert (=> bs!1924792 m!8046612))

(assert (=> d!2292028 d!2292292))

(assert (=> d!2292028 d!2291968))

(declare-fun d!2292294 () Bool)

(declare-fun res!2983468 () Bool)

(assert (=> d!2292294 (= res!2983468 (exists!4788 (toList!11767 z!3451) lambda!460021))))

(assert (=> d!2292294 true))

(assert (=> d!2292294 (= (choose!57477 z!3451 lambda!460021) res!2983468)))

(declare-fun bs!1924793 () Bool)

(assert (= bs!1924793 d!2292294))

(assert (=> bs!1924793 m!8045860))

(assert (=> bs!1924793 m!8045860))

(assert (=> bs!1924793 m!8046064))

(assert (=> d!2292028 d!2292294))

(declare-fun d!2292296 () Bool)

(assert (=> d!2292296 (= (nullable!8460 (ite c!1375566 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))) (nullableFct!3407 (ite c!1375566 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (regOne!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun bs!1924794 () Bool)

(assert (= bs!1924794 d!2292296))

(declare-fun m!8046614 () Bool)

(assert (=> bs!1924794 m!8046614))

(assert (=> bm!682302 d!2292296))

(declare-fun d!2292298 () Bool)

(assert (=> d!2292298 (= ($colon$colon!3346 (exprs!8856 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273))) (ite (or c!1375562 c!1375563) (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532)))))))) (Cons!71910 (ite (or c!1375562 c!1375563) (regTwo!39344 (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (ite c!1375534 (regTwo!39345 (h!78358 (exprs!8856 c!10532))) (ite c!1375535 (regTwo!39344 (h!78358 (exprs!8856 c!10532))) (ite c!1375536 (regOne!39344 (h!78358 (exprs!8856 c!10532))) (reg!19745 (h!78358 (exprs!8856 c!10532))))))) (exprs!8856 (ite (or c!1375534 c!1375535) (Context!16713 (t!386593 (exprs!8856 c!10532))) (Context!16713 call!682273)))))))

(assert (=> bm!682292 d!2292298))

(declare-fun b!7411287 () Bool)

(declare-fun res!2983471 () Bool)

(declare-fun e!4432623 () Bool)

(assert (=> b!7411287 (=> res!2983471 e!4432623)))

(assert (=> b!7411287 (= res!2983471 (not (is-Concat!28261 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))))))

(declare-fun e!4432622 () Bool)

(assert (=> b!7411287 (= e!4432622 e!4432623)))

(declare-fun b!7411288 () Bool)

(declare-fun e!4432624 () Bool)

(declare-fun call!682449 () Bool)

(assert (=> b!7411288 (= e!4432624 call!682449)))

(declare-fun b!7411289 () Bool)

(declare-fun e!4432618 () Bool)

(assert (=> b!7411289 (= e!4432618 e!4432622)))

(declare-fun c!1375688 () Bool)

(assert (=> b!7411289 (= c!1375688 (is-Union!19416 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))

(declare-fun c!1375687 () Bool)

(declare-fun bm!682442 () Bool)

(declare-fun call!682447 () Bool)

(assert (=> bm!682442 (= call!682447 (validRegex!9965 (ite c!1375687 (reg!19745 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) (ite c!1375688 (regOne!39345 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) (regOne!39344 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))))))))

(declare-fun bm!682443 () Bool)

(assert (=> bm!682443 (= call!682449 (validRegex!9965 (ite c!1375688 (regTwo!39345 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) (regTwo!39344 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))))

(declare-fun b!7411290 () Bool)

(declare-fun e!4432619 () Bool)

(assert (=> b!7411290 (= e!4432618 e!4432619)))

(declare-fun res!2983473 () Bool)

(assert (=> b!7411290 (= res!2983473 (not (nullable!8460 (reg!19745 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))))

(assert (=> b!7411290 (=> (not res!2983473) (not e!4432619))))

(declare-fun b!7411291 () Bool)

(assert (=> b!7411291 (= e!4432619 call!682447)))

(declare-fun bm!682444 () Bool)

(declare-fun call!682448 () Bool)

(assert (=> bm!682444 (= call!682448 call!682447)))

(declare-fun d!2292300 () Bool)

(declare-fun res!2983472 () Bool)

(declare-fun e!4432621 () Bool)

(assert (=> d!2292300 (=> res!2983472 e!4432621)))

(assert (=> d!2292300 (= res!2983472 (is-ElementMatch!19416 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))

(assert (=> d!2292300 (= (validRegex!9965 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))) e!4432621)))

(declare-fun b!7411292 () Bool)

(assert (=> b!7411292 (= e!4432621 e!4432618)))

(assert (=> b!7411292 (= c!1375687 (is-Star!19416 (ite c!1375556 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306))) (regTwo!39344 (h!78358 (exprs!8856 setElem!56306))))))))

(declare-fun b!7411293 () Bool)

(assert (=> b!7411293 (= e!4432623 e!4432624)))

(declare-fun res!2983470 () Bool)

(assert (=> b!7411293 (=> (not res!2983470) (not e!4432624))))

(assert (=> b!7411293 (= res!2983470 call!682448)))

(declare-fun b!7411294 () Bool)

(declare-fun e!4432620 () Bool)

(assert (=> b!7411294 (= e!4432620 call!682449)))

(declare-fun b!7411295 () Bool)

(declare-fun res!2983469 () Bool)

(assert (=> b!7411295 (=> (not res!2983469) (not e!4432620))))

(assert (=> b!7411295 (= res!2983469 call!682448)))

(assert (=> b!7411295 (= e!4432622 e!4432620)))

(assert (= (and d!2292300 (not res!2983472)) b!7411292))

(assert (= (and b!7411292 c!1375687) b!7411290))

(assert (= (and b!7411292 (not c!1375687)) b!7411289))

(assert (= (and b!7411290 res!2983473) b!7411291))

(assert (= (and b!7411289 c!1375688) b!7411295))

(assert (= (and b!7411289 (not c!1375688)) b!7411287))

(assert (= (and b!7411295 res!2983469) b!7411294))

(assert (= (and b!7411287 (not res!2983471)) b!7411293))

(assert (= (and b!7411293 res!2983470) b!7411288))

(assert (= (or b!7411295 b!7411293) bm!682444))

(assert (= (or b!7411294 b!7411288) bm!682443))

(assert (= (or b!7411291 bm!682444) bm!682442))

(declare-fun m!8046616 () Bool)

(assert (=> bm!682442 m!8046616))

(declare-fun m!8046618 () Bool)

(assert (=> bm!682443 m!8046618))

(declare-fun m!8046620 () Bool)

(assert (=> b!7411290 m!8046620))

(assert (=> bm!682286 d!2292300))

(declare-fun d!2292302 () Bool)

(assert (=> d!2292302 (= (nullable!8460 (ite c!1375566 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))) (nullableFct!3407 (ite c!1375566 (regOne!39345 (h!78358 (exprs!8856 c!10532))) (regTwo!39344 (h!78358 (exprs!8856 c!10532))))))))

(declare-fun bs!1924795 () Bool)

(assert (= bs!1924795 d!2292302))

(declare-fun m!8046622 () Bool)

(assert (=> bs!1924795 m!8046622))

(assert (=> bm!682301 d!2292302))

(declare-fun b!7411296 () Bool)

(declare-fun e!4432626 () (Set Context!16712))

(assert (=> b!7411296 (= e!4432626 (as set.empty (Set Context!16712)))))

(declare-fun b!7411297 () Bool)

(declare-fun e!4432625 () (Set Context!16712))

(assert (=> b!7411297 (= e!4432625 e!4432626)))

(declare-fun c!1375689 () Bool)

(assert (=> b!7411297 (= c!1375689 (is-Cons!71910 (exprs!8856 (h!78359 (toList!11767 z!3451)))))))

(declare-fun b!7411298 () Bool)

(declare-fun e!4432627 () Bool)

(assert (=> b!7411298 (= e!4432627 (nullable!8460 (h!78358 (exprs!8856 (h!78359 (toList!11767 z!3451))))))))

(declare-fun b!7411299 () Bool)

(declare-fun call!682450 () (Set Context!16712))

(assert (=> b!7411299 (= e!4432626 call!682450)))

(declare-fun b!7411300 () Bool)

(assert (=> b!7411300 (= e!4432625 (set.union call!682450 (derivationStepZipperUp!2820 (Context!16713 (t!386593 (exprs!8856 (h!78359 (toList!11767 z!3451))))) (head!15228 s!7927))))))

(declare-fun bm!682445 () Bool)

(assert (=> bm!682445 (= call!682450 (derivationStepZipperDown!3212 (h!78358 (exprs!8856 (h!78359 (toList!11767 z!3451)))) (Context!16713 (t!386593 (exprs!8856 (h!78359 (toList!11767 z!3451))))) (head!15228 s!7927)))))

(declare-fun d!2292304 () Bool)

(declare-fun c!1375690 () Bool)

(assert (=> d!2292304 (= c!1375690 e!4432627)))

(declare-fun res!2983474 () Bool)

(assert (=> d!2292304 (=> (not res!2983474) (not e!4432627))))

(assert (=> d!2292304 (= res!2983474 (is-Cons!71910 (exprs!8856 (h!78359 (toList!11767 z!3451)))))))

(assert (=> d!2292304 (= (derivationStepZipperUp!2820 (h!78359 (toList!11767 z!3451)) (head!15228 s!7927)) e!4432625)))

(assert (= (and d!2292304 res!2983474) b!7411298))

(assert (= (and d!2292304 c!1375690) b!7411300))

(assert (= (and d!2292304 (not c!1375690)) b!7411297))

(assert (= (and b!7411297 c!1375689) b!7411299))

(assert (= (and b!7411297 (not c!1375689)) b!7411296))

(assert (= (or b!7411300 b!7411299) bm!682445))

(declare-fun m!8046624 () Bool)

(assert (=> b!7411298 m!8046624))

(declare-fun m!8046626 () Bool)

(assert (=> b!7411300 m!8046626))

(declare-fun m!8046628 () Bool)

(assert (=> bm!682445 m!8046628))

(assert (=> bs!1924737 d!2292304))

(declare-fun bs!1924796 () Bool)

(declare-fun d!2292306 () Bool)

(assert (= bs!1924796 (and d!2292306 d!2292080)))

(declare-fun lambda!460045 () Int)

(assert (=> bs!1924796 (= lambda!460045 lambda!460034)))

(declare-fun bs!1924797 () Bool)

(assert (= bs!1924797 (and d!2292306 d!2292252)))

(assert (=> bs!1924797 (= lambda!460045 lambda!460041)))

(declare-fun bs!1924798 () Bool)

(assert (= bs!1924798 (and d!2292306 d!2291992)))

(assert (=> bs!1924798 (= lambda!460045 lambda!460022)))

(declare-fun bs!1924799 () Bool)

(assert (= bs!1924799 (and d!2292306 d!2292030)))

(assert (=> bs!1924799 (= lambda!460045 lambda!460028)))

(declare-fun bs!1924800 () Bool)

(assert (= bs!1924800 (and d!2292306 d!2292074)))

(assert (=> bs!1924800 (= lambda!460045 lambda!460033)))

(declare-fun bs!1924801 () Bool)

(assert (= bs!1924801 (and d!2292306 d!2291906)))

(assert (=> bs!1924801 (= lambda!460045 lambda!459999)))

(declare-fun bs!1924802 () Bool)

(assert (= bs!1924802 (and d!2292306 d!2292284)))

(assert (=> bs!1924802 (= lambda!460045 lambda!460043)))

(declare-fun bs!1924803 () Bool)

(assert (= bs!1924803 (and d!2292306 d!2291908)))

(assert (=> bs!1924803 (= lambda!460045 lambda!460000)))

(declare-fun bs!1924804 () Bool)

(assert (= bs!1924804 (and d!2292306 d!2291910)))

(assert (=> bs!1924804 (= lambda!460045 lambda!460001)))

(declare-fun bs!1924805 () Bool)

(assert (= bs!1924805 (and d!2292306 d!2292036)))

(assert (=> bs!1924805 (= lambda!460045 lambda!460030)))

(declare-fun bs!1924806 () Bool)

(assert (= bs!1924806 (and d!2292306 d!2292208)))

(assert (=> bs!1924806 (= lambda!460045 lambda!460040)))

(declare-fun bs!1924807 () Bool)

(assert (= bs!1924807 (and d!2292306 d!2292270)))

(assert (=> bs!1924807 (= lambda!460045 lambda!460042)))

(assert (=> d!2292306 (= (inv!91902 setElem!56321) (forall!18200 (exprs!8856 setElem!56321) lambda!460045))))

(declare-fun bs!1924808 () Bool)

(assert (= bs!1924808 d!2292306))

(declare-fun m!8046630 () Bool)

(assert (=> bs!1924808 m!8046630))

(assert (=> setNonEmpty!56321 d!2292306))

(declare-fun d!2292308 () Bool)

(declare-fun res!2983475 () Bool)

(declare-fun e!4432628 () Bool)

(assert (=> d!2292308 (=> res!2983475 e!4432628)))

(assert (=> d!2292308 (= res!2983475 (is-Nil!71911 (t!386594 lt!2619026)))))

(assert (=> d!2292308 (= (noDuplicate!3109 (t!386594 lt!2619026)) e!4432628)))

(declare-fun b!7411301 () Bool)

(declare-fun e!4432629 () Bool)

(assert (=> b!7411301 (= e!4432628 e!4432629)))

(declare-fun res!2983476 () Bool)

(assert (=> b!7411301 (=> (not res!2983476) (not e!4432629))))

(assert (=> b!7411301 (= res!2983476 (not (contains!20851 (t!386594 (t!386594 lt!2619026)) (h!78359 (t!386594 lt!2619026)))))))

(declare-fun b!7411302 () Bool)

(assert (=> b!7411302 (= e!4432629 (noDuplicate!3109 (t!386594 (t!386594 lt!2619026))))))

(assert (= (and d!2292308 (not res!2983475)) b!7411301))

(assert (= (and b!7411301 res!2983476) b!7411302))

(declare-fun m!8046632 () Bool)

(assert (=> b!7411301 m!8046632))

(declare-fun m!8046634 () Bool)

(assert (=> b!7411302 m!8046634))

(assert (=> b!7410557 d!2292308))

(declare-fun d!2292310 () Bool)

(declare-fun res!2983477 () Bool)

(declare-fun e!4432630 () Bool)

(assert (=> d!2292310 (=> res!2983477 e!4432630)))

(assert (=> d!2292310 (= res!2983477 (is-Nil!71910 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))))

(assert (=> d!2292310 (= (forall!18200 (t!386593 (t!386593 (exprs!8856 setElem!56306))) lambda!460000) e!4432630)))

(declare-fun b!7411303 () Bool)

(declare-fun e!4432631 () Bool)

(assert (=> b!7411303 (= e!4432630 e!4432631)))

(declare-fun res!2983478 () Bool)

(assert (=> b!7411303 (=> (not res!2983478) (not e!4432631))))

(assert (=> b!7411303 (= res!2983478 (dynLambda!29688 lambda!460000 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306))))))))

(declare-fun b!7411304 () Bool)

(assert (=> b!7411304 (= e!4432631 (forall!18200 (t!386593 (t!386593 (t!386593 (exprs!8856 setElem!56306)))) lambda!460000))))

(assert (= (and d!2292310 (not res!2983477)) b!7411303))

(assert (= (and b!7411303 res!2983478) b!7411304))

(declare-fun b_lambda!286687 () Bool)

(assert (=> (not b_lambda!286687) (not b!7411303)))

(declare-fun m!8046636 () Bool)

(assert (=> b!7411303 m!8046636))

(declare-fun m!8046638 () Bool)

(assert (=> b!7411304 m!8046638))

(assert (=> b!7410575 d!2292310))

(declare-fun d!2292312 () Bool)

(declare-fun res!2983479 () Bool)

(declare-fun e!4432632 () Bool)

(assert (=> d!2292312 (=> res!2983479 e!4432632)))

(assert (=> d!2292312 (= res!2983479 (is-Nil!71911 (t!386594 res!2983178)))))

(assert (=> d!2292312 (= (noDuplicate!3109 (t!386594 res!2983178)) e!4432632)))

(declare-fun b!7411305 () Bool)

(declare-fun e!4432633 () Bool)

(assert (=> b!7411305 (= e!4432632 e!4432633)))

(declare-fun res!2983480 () Bool)

(assert (=> b!7411305 (=> (not res!2983480) (not e!4432633))))

(assert (=> b!7411305 (= res!2983480 (not (contains!20851 (t!386594 (t!386594 res!2983178)) (h!78359 (t!386594 res!2983178)))))))

(declare-fun b!7411306 () Bool)

(assert (=> b!7411306 (= e!4432633 (noDuplicate!3109 (t!386594 (t!386594 res!2983178))))))

(assert (= (and d!2292312 (not res!2983479)) b!7411305))

(assert (= (and b!7411305 res!2983480) b!7411306))

(declare-fun m!8046640 () Bool)

(assert (=> b!7411305 m!8046640))

(declare-fun m!8046642 () Bool)

(assert (=> b!7411306 m!8046642))

(assert (=> b!7410584 d!2292312))

(declare-fun b!7411307 () Bool)

(declare-fun e!4432634 () Bool)

(assert (=> b!7411307 (= e!4432634 tp_is_empty!49095)))

(declare-fun b!7411310 () Bool)

(declare-fun tp!2120644 () Bool)

(declare-fun tp!2120643 () Bool)

(assert (=> b!7411310 (= e!4432634 (and tp!2120644 tp!2120643))))

(declare-fun b!7411309 () Bool)

(declare-fun tp!2120645 () Bool)

(assert (=> b!7411309 (= e!4432634 tp!2120645)))

(assert (=> b!7410748 (= tp!2120440 e!4432634)))

(declare-fun b!7411308 () Bool)

(declare-fun tp!2120647 () Bool)

(declare-fun tp!2120646 () Bool)

(assert (=> b!7411308 (= e!4432634 (and tp!2120647 tp!2120646))))

(assert (= (and b!7410748 (is-ElementMatch!19416 (h!78358 (exprs!8856 (h!78359 res!2983178))))) b!7411307))

(assert (= (and b!7410748 (is-Concat!28261 (h!78358 (exprs!8856 (h!78359 res!2983178))))) b!7411308))

(assert (= (and b!7410748 (is-Star!19416 (h!78358 (exprs!8856 (h!78359 res!2983178))))) b!7411309))

(assert (= (and b!7410748 (is-Union!19416 (h!78358 (exprs!8856 (h!78359 res!2983178))))) b!7411310))

(declare-fun b!7411311 () Bool)

(declare-fun e!4432635 () Bool)

(declare-fun tp!2120648 () Bool)

(declare-fun tp!2120649 () Bool)

(assert (=> b!7411311 (= e!4432635 (and tp!2120648 tp!2120649))))

(assert (=> b!7410748 (= tp!2120441 e!4432635)))

(assert (= (and b!7410748 (is-Cons!71910 (t!386593 (exprs!8856 (h!78359 res!2983178))))) b!7411311))

(declare-fun b!7411312 () Bool)

(declare-fun e!4432636 () Bool)

(assert (=> b!7411312 (= e!4432636 tp_is_empty!49095)))

(declare-fun b!7411315 () Bool)

(declare-fun tp!2120651 () Bool)

(declare-fun tp!2120650 () Bool)

(assert (=> b!7411315 (= e!4432636 (and tp!2120651 tp!2120650))))

(declare-fun b!7411314 () Bool)

(declare-fun tp!2120652 () Bool)

(assert (=> b!7411314 (= e!4432636 tp!2120652)))

(assert (=> b!7410768 (= tp!2120467 e!4432636)))

(declare-fun b!7411313 () Bool)

(declare-fun tp!2120654 () Bool)

(declare-fun tp!2120653 () Bool)

(assert (=> b!7411313 (= e!4432636 (and tp!2120654 tp!2120653))))

(assert (= (and b!7410768 (is-ElementMatch!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611)))))) b!7411312))

(assert (= (and b!7410768 (is-Concat!28261 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611)))))) b!7411313))

(assert (= (and b!7410768 (is-Star!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611)))))) b!7411314))

(assert (= (and b!7410768 (is-Union!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611)))))) b!7411315))

(declare-fun b!7411316 () Bool)

(declare-fun e!4432637 () Bool)

(declare-fun tp!2120655 () Bool)

(declare-fun tp!2120656 () Bool)

(assert (=> b!7411316 (= e!4432637 (and tp!2120655 tp!2120656))))

(assert (=> b!7410768 (= tp!2120468 e!4432637)))

(assert (= (and b!7410768 (is-Cons!71910 (t!386593 (t!386593 (t!386593 (exprs!8856 empty!3611)))))) b!7411316))

(declare-fun b!7411317 () Bool)

(declare-fun e!4432638 () Bool)

(assert (=> b!7411317 (= e!4432638 tp_is_empty!49095)))

(declare-fun b!7411320 () Bool)

(declare-fun tp!2120658 () Bool)

(declare-fun tp!2120657 () Bool)

(assert (=> b!7411320 (= e!4432638 (and tp!2120658 tp!2120657))))

(declare-fun b!7411319 () Bool)

(declare-fun tp!2120659 () Bool)

(assert (=> b!7411319 (= e!4432638 tp!2120659)))

(assert (=> b!7410734 (= tp!2120423 e!4432638)))

(declare-fun b!7411318 () Bool)

(declare-fun tp!2120661 () Bool)

(declare-fun tp!2120660 () Bool)

(assert (=> b!7411318 (= e!4432638 (and tp!2120661 tp!2120660))))

(assert (= (and b!7410734 (is-ElementMatch!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411317))

(assert (= (and b!7410734 (is-Concat!28261 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411318))

(assert (= (and b!7410734 (is-Star!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411319))

(assert (= (and b!7410734 (is-Union!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411320))

(declare-fun b!7411321 () Bool)

(declare-fun e!4432639 () Bool)

(assert (=> b!7411321 (= e!4432639 tp_is_empty!49095)))

(declare-fun b!7411324 () Bool)

(declare-fun tp!2120663 () Bool)

(declare-fun tp!2120662 () Bool)

(assert (=> b!7411324 (= e!4432639 (and tp!2120663 tp!2120662))))

(declare-fun b!7411323 () Bool)

(declare-fun tp!2120664 () Bool)

(assert (=> b!7411323 (= e!4432639 tp!2120664)))

(assert (=> b!7410734 (= tp!2120422 e!4432639)))

(declare-fun b!7411322 () Bool)

(declare-fun tp!2120666 () Bool)

(declare-fun tp!2120665 () Bool)

(assert (=> b!7411322 (= e!4432639 (and tp!2120666 tp!2120665))))

(assert (= (and b!7410734 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411321))

(assert (= (and b!7410734 (is-Concat!28261 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411322))

(assert (= (and b!7410734 (is-Star!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411323))

(assert (= (and b!7410734 (is-Union!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411324))

(declare-fun b!7411325 () Bool)

(declare-fun e!4432640 () Bool)

(declare-fun tp!2120667 () Bool)

(declare-fun tp!2120668 () Bool)

(assert (=> b!7411325 (= e!4432640 (and tp!2120667 tp!2120668))))

(assert (=> b!7410559 (= tp!2120344 e!4432640)))

(assert (= (and b!7410559 (is-Cons!71910 (exprs!8856 (h!78359 res!2983224)))) b!7411325))

(declare-fun b!7411326 () Bool)

(declare-fun e!4432641 () Bool)

(assert (=> b!7411326 (= e!4432641 tp_is_empty!49095)))

(declare-fun b!7411329 () Bool)

(declare-fun tp!2120670 () Bool)

(declare-fun tp!2120669 () Bool)

(assert (=> b!7411329 (= e!4432641 (and tp!2120670 tp!2120669))))

(declare-fun b!7411328 () Bool)

(declare-fun tp!2120671 () Bool)

(assert (=> b!7411328 (= e!4432641 tp!2120671)))

(assert (=> b!7410687 (= tp!2120362 e!4432641)))

(declare-fun b!7411327 () Bool)

(declare-fun tp!2120673 () Bool)

(declare-fun tp!2120672 () Bool)

(assert (=> b!7411327 (= e!4432641 (and tp!2120673 tp!2120672))))

(assert (= (and b!7410687 (is-ElementMatch!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411326))

(assert (= (and b!7410687 (is-Concat!28261 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411327))

(assert (= (and b!7410687 (is-Star!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411328))

(assert (= (and b!7410687 (is-Union!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411329))

(declare-fun b!7411330 () Bool)

(declare-fun e!4432642 () Bool)

(assert (=> b!7411330 (= e!4432642 tp_is_empty!49095)))

(declare-fun b!7411333 () Bool)

(declare-fun tp!2120675 () Bool)

(declare-fun tp!2120674 () Bool)

(assert (=> b!7411333 (= e!4432642 (and tp!2120675 tp!2120674))))

(declare-fun b!7411332 () Bool)

(declare-fun tp!2120676 () Bool)

(assert (=> b!7411332 (= e!4432642 tp!2120676)))

(assert (=> b!7410687 (= tp!2120361 e!4432642)))

(declare-fun b!7411331 () Bool)

(declare-fun tp!2120678 () Bool)

(declare-fun tp!2120677 () Bool)

(assert (=> b!7411331 (= e!4432642 (and tp!2120678 tp!2120677))))

(assert (= (and b!7410687 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411330))

(assert (= (and b!7410687 (is-Concat!28261 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411331))

(assert (= (and b!7410687 (is-Star!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411332))

(assert (= (and b!7410687 (is-Union!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411333))

(declare-fun b!7411334 () Bool)

(declare-fun e!4432643 () Bool)

(assert (=> b!7411334 (= e!4432643 tp_is_empty!49095)))

(declare-fun b!7411337 () Bool)

(declare-fun tp!2120680 () Bool)

(declare-fun tp!2120679 () Bool)

(assert (=> b!7411337 (= e!4432643 (and tp!2120680 tp!2120679))))

(declare-fun b!7411336 () Bool)

(declare-fun tp!2120681 () Bool)

(assert (=> b!7411336 (= e!4432643 tp!2120681)))

(assert (=> b!7410732 (= tp!2120426 e!4432643)))

(declare-fun b!7411335 () Bool)

(declare-fun tp!2120683 () Bool)

(declare-fun tp!2120682 () Bool)

(assert (=> b!7411335 (= e!4432643 (and tp!2120683 tp!2120682))))

(assert (= (and b!7410732 (is-ElementMatch!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411334))

(assert (= (and b!7410732 (is-Concat!28261 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411335))

(assert (= (and b!7410732 (is-Star!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411336))

(assert (= (and b!7410732 (is-Union!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411337))

(declare-fun b!7411338 () Bool)

(declare-fun e!4432644 () Bool)

(assert (=> b!7411338 (= e!4432644 tp_is_empty!49095)))

(declare-fun b!7411341 () Bool)

(declare-fun tp!2120685 () Bool)

(declare-fun tp!2120684 () Bool)

(assert (=> b!7411341 (= e!4432644 (and tp!2120685 tp!2120684))))

(declare-fun b!7411340 () Bool)

(declare-fun tp!2120686 () Bool)

(assert (=> b!7411340 (= e!4432644 tp!2120686)))

(assert (=> b!7410732 (= tp!2120425 e!4432644)))

(declare-fun b!7411339 () Bool)

(declare-fun tp!2120688 () Bool)

(declare-fun tp!2120687 () Bool)

(assert (=> b!7411339 (= e!4432644 (and tp!2120688 tp!2120687))))

(assert (= (and b!7410732 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411338))

(assert (= (and b!7410732 (is-Concat!28261 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411339))

(assert (= (and b!7410732 (is-Star!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411340))

(assert (= (and b!7410732 (is-Union!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411341))

(declare-fun b!7411342 () Bool)

(declare-fun e!4432645 () Bool)

(assert (=> b!7411342 (= e!4432645 tp_is_empty!49095)))

(declare-fun b!7411345 () Bool)

(declare-fun tp!2120690 () Bool)

(declare-fun tp!2120689 () Bool)

(assert (=> b!7411345 (= e!4432645 (and tp!2120690 tp!2120689))))

(declare-fun b!7411344 () Bool)

(declare-fun tp!2120691 () Bool)

(assert (=> b!7411344 (= e!4432645 tp!2120691)))

(assert (=> b!7410685 (= tp!2120365 e!4432645)))

(declare-fun b!7411343 () Bool)

(declare-fun tp!2120693 () Bool)

(declare-fun tp!2120692 () Bool)

(assert (=> b!7411343 (= e!4432645 (and tp!2120693 tp!2120692))))

(assert (= (and b!7410685 (is-ElementMatch!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411342))

(assert (= (and b!7410685 (is-Concat!28261 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411343))

(assert (= (and b!7410685 (is-Star!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411344))

(assert (= (and b!7410685 (is-Union!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411345))

(declare-fun b!7411346 () Bool)

(declare-fun e!4432646 () Bool)

(assert (=> b!7411346 (= e!4432646 tp_is_empty!49095)))

(declare-fun b!7411349 () Bool)

(declare-fun tp!2120695 () Bool)

(declare-fun tp!2120694 () Bool)

(assert (=> b!7411349 (= e!4432646 (and tp!2120695 tp!2120694))))

(declare-fun b!7411348 () Bool)

(declare-fun tp!2120696 () Bool)

(assert (=> b!7411348 (= e!4432646 tp!2120696)))

(assert (=> b!7410685 (= tp!2120364 e!4432646)))

(declare-fun b!7411347 () Bool)

(declare-fun tp!2120698 () Bool)

(declare-fun tp!2120697 () Bool)

(assert (=> b!7411347 (= e!4432646 (and tp!2120698 tp!2120697))))

(assert (= (and b!7410685 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411346))

(assert (= (and b!7410685 (is-Concat!28261 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411347))

(assert (= (and b!7410685 (is-Star!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411348))

(assert (= (and b!7410685 (is-Union!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411349))

(declare-fun b!7411350 () Bool)

(declare-fun e!4432647 () Bool)

(assert (=> b!7411350 (= e!4432647 tp_is_empty!49095)))

(declare-fun b!7411353 () Bool)

(declare-fun tp!2120700 () Bool)

(declare-fun tp!2120699 () Bool)

(assert (=> b!7411353 (= e!4432647 (and tp!2120700 tp!2120699))))

(declare-fun b!7411352 () Bool)

(declare-fun tp!2120701 () Bool)

(assert (=> b!7411352 (= e!4432647 tp!2120701)))

(assert (=> b!7410724 (= tp!2120412 e!4432647)))

(declare-fun b!7411351 () Bool)

(declare-fun tp!2120703 () Bool)

(declare-fun tp!2120702 () Bool)

(assert (=> b!7411351 (= e!4432647 (and tp!2120703 tp!2120702))))

(assert (= (and b!7410724 (is-ElementMatch!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411350))

(assert (= (and b!7410724 (is-Concat!28261 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411351))

(assert (= (and b!7410724 (is-Star!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411352))

(assert (= (and b!7410724 (is-Union!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411353))

(declare-fun b!7411354 () Bool)

(declare-fun e!4432648 () Bool)

(assert (=> b!7411354 (= e!4432648 tp_is_empty!49095)))

(declare-fun b!7411357 () Bool)

(declare-fun tp!2120705 () Bool)

(declare-fun tp!2120704 () Bool)

(assert (=> b!7411357 (= e!4432648 (and tp!2120705 tp!2120704))))

(declare-fun b!7411356 () Bool)

(declare-fun tp!2120706 () Bool)

(assert (=> b!7411356 (= e!4432648 tp!2120706)))

(assert (=> b!7410720 (= tp!2120406 e!4432648)))

(declare-fun b!7411355 () Bool)

(declare-fun tp!2120708 () Bool)

(declare-fun tp!2120707 () Bool)

(assert (=> b!7411355 (= e!4432648 (and tp!2120708 tp!2120707))))

(assert (= (and b!7410720 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56319)))) b!7411354))

(assert (= (and b!7410720 (is-Concat!28261 (h!78358 (exprs!8856 setElem!56319)))) b!7411355))

(assert (= (and b!7410720 (is-Star!19416 (h!78358 (exprs!8856 setElem!56319)))) b!7411356))

(assert (= (and b!7410720 (is-Union!19416 (h!78358 (exprs!8856 setElem!56319)))) b!7411357))

(declare-fun b!7411358 () Bool)

(declare-fun e!4432649 () Bool)

(declare-fun tp!2120709 () Bool)

(declare-fun tp!2120710 () Bool)

(assert (=> b!7411358 (= e!4432649 (and tp!2120709 tp!2120710))))

(assert (=> b!7410720 (= tp!2120407 e!4432649)))

(assert (= (and b!7410720 (is-Cons!71910 (t!386593 (exprs!8856 setElem!56319)))) b!7411358))

(declare-fun b!7411359 () Bool)

(declare-fun e!4432650 () Bool)

(declare-fun tp!2120711 () Bool)

(assert (=> b!7411359 (= e!4432650 (and tp_is_empty!49095 tp!2120711))))

(assert (=> b!7410754 (= tp!2120449 e!4432650)))

(assert (= (and b!7410754 (is-Cons!71912 (t!386595 (t!386595 (t!386595 (t!386595 s!7927)))))) b!7411359))

(declare-fun b!7411360 () Bool)

(declare-fun e!4432651 () Bool)

(assert (=> b!7411360 (= e!4432651 tp_is_empty!49095)))

(declare-fun b!7411363 () Bool)

(declare-fun tp!2120713 () Bool)

(declare-fun tp!2120712 () Bool)

(assert (=> b!7411363 (= e!4432651 (and tp!2120713 tp!2120712))))

(declare-fun b!7411362 () Bool)

(declare-fun tp!2120714 () Bool)

(assert (=> b!7411362 (= e!4432651 tp!2120714)))

(assert (=> b!7410761 (= tp!2120457 e!4432651)))

(declare-fun b!7411361 () Bool)

(declare-fun tp!2120716 () Bool)

(declare-fun tp!2120715 () Bool)

(assert (=> b!7411361 (= e!4432651 (and tp!2120716 tp!2120715))))

(assert (= (and b!7410761 (is-ElementMatch!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411360))

(assert (= (and b!7410761 (is-Concat!28261 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411361))

(assert (= (and b!7410761 (is-Star!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411362))

(assert (= (and b!7410761 (is-Union!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411363))

(declare-fun b!7411364 () Bool)

(declare-fun e!4432652 () Bool)

(assert (=> b!7411364 (= e!4432652 tp_is_empty!49095)))

(declare-fun b!7411367 () Bool)

(declare-fun tp!2120718 () Bool)

(declare-fun tp!2120717 () Bool)

(assert (=> b!7411367 (= e!4432652 (and tp!2120718 tp!2120717))))

(declare-fun b!7411366 () Bool)

(declare-fun tp!2120719 () Bool)

(assert (=> b!7411366 (= e!4432652 tp!2120719)))

(assert (=> b!7410703 (= tp!2120382 e!4432652)))

(declare-fun b!7411365 () Bool)

(declare-fun tp!2120721 () Bool)

(declare-fun tp!2120720 () Bool)

(assert (=> b!7411365 (= e!4432652 (and tp!2120721 tp!2120720))))

(assert (= (and b!7410703 (is-ElementMatch!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411364))

(assert (= (and b!7410703 (is-Concat!28261 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411365))

(assert (= (and b!7410703 (is-Star!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411366))

(assert (= (and b!7410703 (is-Union!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411367))

(declare-fun b!7411368 () Bool)

(declare-fun e!4432653 () Bool)

(assert (=> b!7411368 (= e!4432653 tp_is_empty!49095)))

(declare-fun b!7411371 () Bool)

(declare-fun tp!2120723 () Bool)

(declare-fun tp!2120722 () Bool)

(assert (=> b!7411371 (= e!4432653 (and tp!2120723 tp!2120722))))

(declare-fun b!7411370 () Bool)

(declare-fun tp!2120724 () Bool)

(assert (=> b!7411370 (= e!4432653 tp!2120724)))

(assert (=> b!7410703 (= tp!2120381 e!4432653)))

(declare-fun b!7411369 () Bool)

(declare-fun tp!2120726 () Bool)

(declare-fun tp!2120725 () Bool)

(assert (=> b!7411369 (= e!4432653 (and tp!2120726 tp!2120725))))

(assert (= (and b!7410703 (is-ElementMatch!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411368))

(assert (= (and b!7410703 (is-Concat!28261 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411369))

(assert (= (and b!7410703 (is-Star!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411370))

(assert (= (and b!7410703 (is-Union!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411371))

(declare-fun b!7411372 () Bool)

(declare-fun e!4432654 () Bool)

(declare-fun tp!2120727 () Bool)

(declare-fun tp!2120728 () Bool)

(assert (=> b!7411372 (= e!4432654 (and tp!2120727 tp!2120728))))

(assert (=> b!7410747 (= tp!2120438 e!4432654)))

(assert (= (and b!7410747 (is-Cons!71910 (exprs!8856 (h!78359 (t!386594 res!2983178))))) b!7411372))

(declare-fun condSetEmpty!56330 () Bool)

(assert (=> setNonEmpty!56320 (= condSetEmpty!56330 (= setRest!56320 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56330 () Bool)

(assert (=> setNonEmpty!56320 (= tp!2120346 setRes!56330)))

(declare-fun setIsEmpty!56330 () Bool)

(assert (=> setIsEmpty!56330 setRes!56330))

(declare-fun tp!2120730 () Bool)

(declare-fun e!4432655 () Bool)

(declare-fun setNonEmpty!56330 () Bool)

(declare-fun setElem!56330 () Context!16712)

(assert (=> setNonEmpty!56330 (= setRes!56330 (and tp!2120730 (inv!91902 setElem!56330) e!4432655))))

(declare-fun setRest!56330 () (Set Context!16712))

(assert (=> setNonEmpty!56330 (= setRest!56320 (set.union (set.insert setElem!56330 (as set.empty (Set Context!16712))) setRest!56330))))

(declare-fun b!7411373 () Bool)

(declare-fun tp!2120729 () Bool)

(assert (=> b!7411373 (= e!4432655 tp!2120729)))

(assert (= (and setNonEmpty!56320 condSetEmpty!56330) setIsEmpty!56330))

(assert (= (and setNonEmpty!56320 (not condSetEmpty!56330)) setNonEmpty!56330))

(assert (= setNonEmpty!56330 b!7411373))

(declare-fun m!8046644 () Bool)

(assert (=> setNonEmpty!56330 m!8046644))

(declare-fun b!7411374 () Bool)

(declare-fun e!4432656 () Bool)

(assert (=> b!7411374 (= e!4432656 tp_is_empty!49095)))

(declare-fun b!7411377 () Bool)

(declare-fun tp!2120732 () Bool)

(declare-fun tp!2120731 () Bool)

(assert (=> b!7411377 (= e!4432656 (and tp!2120732 tp!2120731))))

(declare-fun b!7411376 () Bool)

(declare-fun tp!2120733 () Bool)

(assert (=> b!7411376 (= e!4432656 tp!2120733)))

(assert (=> b!7410767 (= tp!2120463 e!4432656)))

(declare-fun b!7411375 () Bool)

(declare-fun tp!2120735 () Bool)

(declare-fun tp!2120734 () Bool)

(assert (=> b!7411375 (= e!4432656 (and tp!2120735 tp!2120734))))

(assert (= (and b!7410767 (is-ElementMatch!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411374))

(assert (= (and b!7410767 (is-Concat!28261 (regOne!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411375))

(assert (= (and b!7410767 (is-Star!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411376))

(assert (= (and b!7410767 (is-Union!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411377))

(declare-fun b!7411378 () Bool)

(declare-fun e!4432657 () Bool)

(assert (=> b!7411378 (= e!4432657 tp_is_empty!49095)))

(declare-fun b!7411381 () Bool)

(declare-fun tp!2120737 () Bool)

(declare-fun tp!2120736 () Bool)

(assert (=> b!7411381 (= e!4432657 (and tp!2120737 tp!2120736))))

(declare-fun b!7411380 () Bool)

(declare-fun tp!2120738 () Bool)

(assert (=> b!7411380 (= e!4432657 tp!2120738)))

(assert (=> b!7410767 (= tp!2120462 e!4432657)))

(declare-fun b!7411379 () Bool)

(declare-fun tp!2120740 () Bool)

(declare-fun tp!2120739 () Bool)

(assert (=> b!7411379 (= e!4432657 (and tp!2120740 tp!2120739))))

(assert (= (and b!7410767 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411378))

(assert (= (and b!7410767 (is-Concat!28261 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411379))

(assert (= (and b!7410767 (is-Star!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411380))

(assert (= (and b!7410767 (is-Union!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411381))

(declare-fun b!7411382 () Bool)

(declare-fun e!4432658 () Bool)

(assert (=> b!7411382 (= e!4432658 tp_is_empty!49095)))

(declare-fun b!7411385 () Bool)

(declare-fun tp!2120742 () Bool)

(declare-fun tp!2120741 () Bool)

(assert (=> b!7411385 (= e!4432658 (and tp!2120742 tp!2120741))))

(declare-fun b!7411384 () Bool)

(declare-fun tp!2120743 () Bool)

(assert (=> b!7411384 (= e!4432658 tp!2120743)))

(assert (=> b!7410694 (= tp!2120373 e!4432658)))

(declare-fun b!7411383 () Bool)

(declare-fun tp!2120745 () Bool)

(declare-fun tp!2120744 () Bool)

(assert (=> b!7411383 (= e!4432658 (and tp!2120745 tp!2120744))))

(assert (= (and b!7410694 (is-ElementMatch!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411382))

(assert (= (and b!7410694 (is-Concat!28261 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411383))

(assert (= (and b!7410694 (is-Star!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411384))

(assert (= (and b!7410694 (is-Union!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411385))

(declare-fun b!7411386 () Bool)

(declare-fun e!4432659 () Bool)

(assert (=> b!7411386 (= e!4432659 tp_is_empty!49095)))

(declare-fun b!7411389 () Bool)

(declare-fun tp!2120747 () Bool)

(declare-fun tp!2120746 () Bool)

(assert (=> b!7411389 (= e!4432659 (and tp!2120747 tp!2120746))))

(declare-fun b!7411388 () Bool)

(declare-fun tp!2120748 () Bool)

(assert (=> b!7411388 (= e!4432659 tp!2120748)))

(assert (=> b!7410701 (= tp!2120385 e!4432659)))

(declare-fun b!7411387 () Bool)

(declare-fun tp!2120750 () Bool)

(declare-fun tp!2120749 () Bool)

(assert (=> b!7411387 (= e!4432659 (and tp!2120750 tp!2120749))))

(assert (= (and b!7410701 (is-ElementMatch!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411386))

(assert (= (and b!7410701 (is-Concat!28261 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411387))

(assert (= (and b!7410701 (is-Star!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411388))

(assert (= (and b!7410701 (is-Union!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411389))

(declare-fun b!7411390 () Bool)

(declare-fun e!4432660 () Bool)

(assert (=> b!7411390 (= e!4432660 tp_is_empty!49095)))

(declare-fun b!7411393 () Bool)

(declare-fun tp!2120752 () Bool)

(declare-fun tp!2120751 () Bool)

(assert (=> b!7411393 (= e!4432660 (and tp!2120752 tp!2120751))))

(declare-fun b!7411392 () Bool)

(declare-fun tp!2120753 () Bool)

(assert (=> b!7411392 (= e!4432660 tp!2120753)))

(assert (=> b!7410701 (= tp!2120384 e!4432660)))

(declare-fun b!7411391 () Bool)

(declare-fun tp!2120755 () Bool)

(declare-fun tp!2120754 () Bool)

(assert (=> b!7411391 (= e!4432660 (and tp!2120755 tp!2120754))))

(assert (= (and b!7410701 (is-ElementMatch!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411390))

(assert (= (and b!7410701 (is-Concat!28261 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411391))

(assert (= (and b!7410701 (is-Star!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411392))

(assert (= (and b!7410701 (is-Union!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411393))

(declare-fun b!7411394 () Bool)

(declare-fun e!4432661 () Bool)

(assert (=> b!7411394 (= e!4432661 tp_is_empty!49095)))

(declare-fun b!7411397 () Bool)

(declare-fun tp!2120757 () Bool)

(declare-fun tp!2120756 () Bool)

(assert (=> b!7411397 (= e!4432661 (and tp!2120757 tp!2120756))))

(declare-fun b!7411396 () Bool)

(declare-fun tp!2120758 () Bool)

(assert (=> b!7411396 (= e!4432661 tp!2120758)))

(assert (=> b!7410765 (= tp!2120466 e!4432661)))

(declare-fun b!7411395 () Bool)

(declare-fun tp!2120760 () Bool)

(declare-fun tp!2120759 () Bool)

(assert (=> b!7411395 (= e!4432661 (and tp!2120760 tp!2120759))))

(assert (= (and b!7410765 (is-ElementMatch!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411394))

(assert (= (and b!7410765 (is-Concat!28261 (regOne!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411395))

(assert (= (and b!7410765 (is-Star!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411396))

(assert (= (and b!7410765 (is-Union!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411397))

(declare-fun b!7411398 () Bool)

(declare-fun e!4432662 () Bool)

(assert (=> b!7411398 (= e!4432662 tp_is_empty!49095)))

(declare-fun b!7411401 () Bool)

(declare-fun tp!2120762 () Bool)

(declare-fun tp!2120761 () Bool)

(assert (=> b!7411401 (= e!4432662 (and tp!2120762 tp!2120761))))

(declare-fun b!7411400 () Bool)

(declare-fun tp!2120763 () Bool)

(assert (=> b!7411400 (= e!4432662 tp!2120763)))

(assert (=> b!7410765 (= tp!2120465 e!4432662)))

(declare-fun b!7411399 () Bool)

(declare-fun tp!2120765 () Bool)

(declare-fun tp!2120764 () Bool)

(assert (=> b!7411399 (= e!4432662 (and tp!2120765 tp!2120764))))

(assert (= (and b!7410765 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411398))

(assert (= (and b!7410765 (is-Concat!28261 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411399))

(assert (= (and b!7410765 (is-Star!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411400))

(assert (= (and b!7410765 (is-Union!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411401))

(declare-fun b!7411402 () Bool)

(declare-fun e!4432663 () Bool)

(assert (=> b!7411402 (= e!4432663 tp_is_empty!49095)))

(declare-fun b!7411405 () Bool)

(declare-fun tp!2120767 () Bool)

(declare-fun tp!2120766 () Bool)

(assert (=> b!7411405 (= e!4432663 (and tp!2120767 tp!2120766))))

(declare-fun b!7411404 () Bool)

(declare-fun tp!2120768 () Bool)

(assert (=> b!7411404 (= e!4432663 tp!2120768)))

(assert (=> b!7410719 (= tp!2120402 e!4432663)))

(declare-fun b!7411403 () Bool)

(declare-fun tp!2120770 () Bool)

(declare-fun tp!2120769 () Bool)

(assert (=> b!7411403 (= e!4432663 (and tp!2120770 tp!2120769))))

(assert (= (and b!7410719 (is-ElementMatch!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411402))

(assert (= (and b!7410719 (is-Concat!28261 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411403))

(assert (= (and b!7410719 (is-Star!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411404))

(assert (= (and b!7410719 (is-Union!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411405))

(declare-fun b!7411406 () Bool)

(declare-fun e!4432664 () Bool)

(assert (=> b!7411406 (= e!4432664 tp_is_empty!49095)))

(declare-fun b!7411409 () Bool)

(declare-fun tp!2120772 () Bool)

(declare-fun tp!2120771 () Bool)

(assert (=> b!7411409 (= e!4432664 (and tp!2120772 tp!2120771))))

(declare-fun b!7411408 () Bool)

(declare-fun tp!2120773 () Bool)

(assert (=> b!7411408 (= e!4432664 tp!2120773)))

(assert (=> b!7410719 (= tp!2120401 e!4432664)))

(declare-fun b!7411407 () Bool)

(declare-fun tp!2120775 () Bool)

(declare-fun tp!2120774 () Bool)

(assert (=> b!7411407 (= e!4432664 (and tp!2120775 tp!2120774))))

(assert (= (and b!7410719 (is-ElementMatch!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411406))

(assert (= (and b!7410719 (is-Concat!28261 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411407))

(assert (= (and b!7410719 (is-Star!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411408))

(assert (= (and b!7410719 (is-Union!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411409))

(declare-fun b!7411410 () Bool)

(declare-fun e!4432665 () Bool)

(assert (=> b!7411410 (= e!4432665 tp_is_empty!49095)))

(declare-fun b!7411413 () Bool)

(declare-fun tp!2120777 () Bool)

(declare-fun tp!2120776 () Bool)

(assert (=> b!7411413 (= e!4432665 (and tp!2120777 tp!2120776))))

(declare-fun b!7411412 () Bool)

(declare-fun tp!2120778 () Bool)

(assert (=> b!7411412 (= e!4432665 tp!2120778)))

(assert (=> b!7410710 (= tp!2120393 e!4432665)))

(declare-fun b!7411411 () Bool)

(declare-fun tp!2120780 () Bool)

(declare-fun tp!2120779 () Bool)

(assert (=> b!7411411 (= e!4432665 (and tp!2120780 tp!2120779))))

(assert (= (and b!7410710 (is-ElementMatch!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411410))

(assert (= (and b!7410710 (is-Concat!28261 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411411))

(assert (= (and b!7410710 (is-Star!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411412))

(assert (= (and b!7410710 (is-Union!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411413))

(declare-fun b!7411414 () Bool)

(declare-fun e!4432666 () Bool)

(assert (=> b!7411414 (= e!4432666 tp_is_empty!49095)))

(declare-fun b!7411417 () Bool)

(declare-fun tp!2120782 () Bool)

(declare-fun tp!2120781 () Bool)

(assert (=> b!7411417 (= e!4432666 (and tp!2120782 tp!2120781))))

(declare-fun b!7411416 () Bool)

(declare-fun tp!2120783 () Bool)

(assert (=> b!7411416 (= e!4432666 tp!2120783)))

(assert (=> b!7410718 (= tp!2120403 e!4432666)))

(declare-fun b!7411415 () Bool)

(declare-fun tp!2120785 () Bool)

(declare-fun tp!2120784 () Bool)

(assert (=> b!7411415 (= e!4432666 (and tp!2120785 tp!2120784))))

(assert (= (and b!7410718 (is-ElementMatch!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411414))

(assert (= (and b!7410718 (is-Concat!28261 (reg!19745 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411415))

(assert (= (and b!7410718 (is-Star!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411416))

(assert (= (and b!7410718 (is-Union!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411417))

(declare-fun b!7411418 () Bool)

(declare-fun e!4432667 () Bool)

(assert (=> b!7411418 (= e!4432667 tp_is_empty!49095)))

(declare-fun b!7411421 () Bool)

(declare-fun tp!2120787 () Bool)

(declare-fun tp!2120786 () Bool)

(assert (=> b!7411421 (= e!4432667 (and tp!2120787 tp!2120786))))

(declare-fun b!7411420 () Bool)

(declare-fun tp!2120788 () Bool)

(assert (=> b!7411420 (= e!4432667 tp!2120788)))

(assert (=> b!7410752 (= tp!2120443 e!4432667)))

(declare-fun b!7411419 () Bool)

(declare-fun tp!2120790 () Bool)

(declare-fun tp!2120789 () Bool)

(assert (=> b!7411419 (= e!4432667 (and tp!2120790 tp!2120789))))

(assert (= (and b!7410752 (is-ElementMatch!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411418))

(assert (= (and b!7410752 (is-Concat!28261 (regOne!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411419))

(assert (= (and b!7410752 (is-Star!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411420))

(assert (= (and b!7410752 (is-Union!19416 (regOne!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411421))

(declare-fun b!7411422 () Bool)

(declare-fun e!4432668 () Bool)

(assert (=> b!7411422 (= e!4432668 tp_is_empty!49095)))

(declare-fun b!7411425 () Bool)

(declare-fun tp!2120792 () Bool)

(declare-fun tp!2120791 () Bool)

(assert (=> b!7411425 (= e!4432668 (and tp!2120792 tp!2120791))))

(declare-fun b!7411424 () Bool)

(declare-fun tp!2120793 () Bool)

(assert (=> b!7411424 (= e!4432668 tp!2120793)))

(assert (=> b!7410752 (= tp!2120442 e!4432668)))

(declare-fun b!7411423 () Bool)

(declare-fun tp!2120795 () Bool)

(declare-fun tp!2120794 () Bool)

(assert (=> b!7411423 (= e!4432668 (and tp!2120795 tp!2120794))))

(assert (= (and b!7410752 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411422))

(assert (= (and b!7410752 (is-Concat!28261 (regTwo!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411423))

(assert (= (and b!7410752 (is-Star!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411424))

(assert (= (and b!7410752 (is-Union!19416 (regTwo!39345 (h!78358 (exprs!8856 setElem!56312))))) b!7411425))

(declare-fun b!7411426 () Bool)

(declare-fun e!4432669 () Bool)

(assert (=> b!7411426 (= e!4432669 tp_is_empty!49095)))

(declare-fun b!7411429 () Bool)

(declare-fun tp!2120797 () Bool)

(declare-fun tp!2120796 () Bool)

(assert (=> b!7411429 (= e!4432669 (and tp!2120797 tp!2120796))))

(declare-fun b!7411428 () Bool)

(declare-fun tp!2120798 () Bool)

(assert (=> b!7411428 (= e!4432669 tp!2120798)))

(assert (=> b!7410750 (= tp!2120446 e!4432669)))

(declare-fun b!7411427 () Bool)

(declare-fun tp!2120800 () Bool)

(declare-fun tp!2120799 () Bool)

(assert (=> b!7411427 (= e!4432669 (and tp!2120800 tp!2120799))))

(assert (= (and b!7410750 (is-ElementMatch!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411426))

(assert (= (and b!7410750 (is-Concat!28261 (regOne!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411427))

(assert (= (and b!7410750 (is-Star!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411428))

(assert (= (and b!7410750 (is-Union!19416 (regOne!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411429))

(declare-fun b!7411430 () Bool)

(declare-fun e!4432670 () Bool)

(assert (=> b!7411430 (= e!4432670 tp_is_empty!49095)))

(declare-fun b!7411433 () Bool)

(declare-fun tp!2120802 () Bool)

(declare-fun tp!2120801 () Bool)

(assert (=> b!7411433 (= e!4432670 (and tp!2120802 tp!2120801))))

(declare-fun b!7411432 () Bool)

(declare-fun tp!2120803 () Bool)

(assert (=> b!7411432 (= e!4432670 tp!2120803)))

(assert (=> b!7410750 (= tp!2120445 e!4432670)))

(declare-fun b!7411431 () Bool)

(declare-fun tp!2120805 () Bool)

(declare-fun tp!2120804 () Bool)

(assert (=> b!7411431 (= e!4432670 (and tp!2120805 tp!2120804))))

(assert (= (and b!7410750 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411430))

(assert (= (and b!7410750 (is-Concat!28261 (regTwo!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411431))

(assert (= (and b!7410750 (is-Star!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411432))

(assert (= (and b!7410750 (is-Union!19416 (regTwo!39344 (h!78358 (exprs!8856 setElem!56312))))) b!7411433))

(declare-fun b!7411434 () Bool)

(declare-fun e!4432671 () Bool)

(assert (=> b!7411434 (= e!4432671 tp_is_empty!49095)))

(declare-fun b!7411437 () Bool)

(declare-fun tp!2120807 () Bool)

(declare-fun tp!2120806 () Bool)

(assert (=> b!7411437 (= e!4432671 (and tp!2120807 tp!2120806))))

(declare-fun b!7411436 () Bool)

(declare-fun tp!2120808 () Bool)

(assert (=> b!7411436 (= e!4432671 tp!2120808)))

(assert (=> b!7410738 (= tp!2120428 e!4432671)))

(declare-fun b!7411435 () Bool)

(declare-fun tp!2120810 () Bool)

(declare-fun tp!2120809 () Bool)

(assert (=> b!7411435 (= e!4432671 (and tp!2120810 tp!2120809))))

(assert (= (and b!7410738 (is-ElementMatch!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411434))

(assert (= (and b!7410738 (is-Concat!28261 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411435))

(assert (= (and b!7410738 (is-Star!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411436))

(assert (= (and b!7410738 (is-Union!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411437))

(declare-fun b!7411438 () Bool)

(declare-fun e!4432672 () Bool)

(assert (=> b!7411438 (= e!4432672 tp_is_empty!49095)))

(declare-fun b!7411441 () Bool)

(declare-fun tp!2120812 () Bool)

(declare-fun tp!2120811 () Bool)

(assert (=> b!7411441 (= e!4432672 (and tp!2120812 tp!2120811))))

(declare-fun b!7411440 () Bool)

(declare-fun tp!2120813 () Bool)

(assert (=> b!7411440 (= e!4432672 tp!2120813)))

(assert (=> b!7410738 (= tp!2120427 e!4432672)))

(declare-fun b!7411439 () Bool)

(declare-fun tp!2120815 () Bool)

(declare-fun tp!2120814 () Bool)

(assert (=> b!7411439 (= e!4432672 (and tp!2120815 tp!2120814))))

(assert (= (and b!7410738 (is-ElementMatch!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411438))

(assert (= (and b!7410738 (is-Concat!28261 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411439))

(assert (= (and b!7410738 (is-Star!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411440))

(assert (= (and b!7410738 (is-Union!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411441))

(declare-fun b!7411442 () Bool)

(declare-fun e!4432673 () Bool)

(assert (=> b!7411442 (= e!4432673 tp_is_empty!49095)))

(declare-fun b!7411445 () Bool)

(declare-fun tp!2120817 () Bool)

(declare-fun tp!2120816 () Bool)

(assert (=> b!7411445 (= e!4432673 (and tp!2120817 tp!2120816))))

(declare-fun b!7411444 () Bool)

(declare-fun tp!2120818 () Bool)

(assert (=> b!7411444 (= e!4432673 tp!2120818)))

(assert (=> b!7410729 (= tp!2120419 e!4432673)))

(declare-fun b!7411443 () Bool)

(declare-fun tp!2120820 () Bool)

(declare-fun tp!2120819 () Bool)

(assert (=> b!7411443 (= e!4432673 (and tp!2120820 tp!2120819))))

(assert (= (and b!7410729 (is-ElementMatch!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411442))

(assert (= (and b!7410729 (is-Concat!28261 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411443))

(assert (= (and b!7410729 (is-Star!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411444))

(assert (= (and b!7410729 (is-Union!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411445))

(declare-fun b!7411446 () Bool)

(declare-fun e!4432674 () Bool)

(assert (=> b!7411446 (= e!4432674 tp_is_empty!49095)))

(declare-fun b!7411449 () Bool)

(declare-fun tp!2120822 () Bool)

(declare-fun tp!2120821 () Bool)

(assert (=> b!7411449 (= e!4432674 (and tp!2120822 tp!2120821))))

(declare-fun b!7411448 () Bool)

(declare-fun tp!2120823 () Bool)

(assert (=> b!7411448 (= e!4432674 tp!2120823)))

(assert (=> b!7410691 (= tp!2120367 e!4432674)))

(declare-fun b!7411447 () Bool)

(declare-fun tp!2120825 () Bool)

(declare-fun tp!2120824 () Bool)

(assert (=> b!7411447 (= e!4432674 (and tp!2120825 tp!2120824))))

(assert (= (and b!7410691 (is-ElementMatch!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411446))

(assert (= (and b!7410691 (is-Concat!28261 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411447))

(assert (= (and b!7410691 (is-Star!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411448))

(assert (= (and b!7410691 (is-Union!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411449))

(declare-fun b!7411450 () Bool)

(declare-fun e!4432675 () Bool)

(assert (=> b!7411450 (= e!4432675 tp_is_empty!49095)))

(declare-fun b!7411453 () Bool)

(declare-fun tp!2120827 () Bool)

(declare-fun tp!2120826 () Bool)

(assert (=> b!7411453 (= e!4432675 (and tp!2120827 tp!2120826))))

(declare-fun b!7411452 () Bool)

(declare-fun tp!2120828 () Bool)

(assert (=> b!7411452 (= e!4432675 tp!2120828)))

(assert (=> b!7410691 (= tp!2120366 e!4432675)))

(declare-fun b!7411451 () Bool)

(declare-fun tp!2120830 () Bool)

(declare-fun tp!2120829 () Bool)

(assert (=> b!7411451 (= e!4432675 (and tp!2120830 tp!2120829))))

(assert (= (and b!7410691 (is-ElementMatch!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411450))

(assert (= (and b!7410691 (is-Concat!28261 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411451))

(assert (= (and b!7410691 (is-Star!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411452))

(assert (= (and b!7410691 (is-Union!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411453))

(declare-fun b!7411454 () Bool)

(declare-fun e!4432676 () Bool)

(assert (=> b!7411454 (= e!4432676 tp_is_empty!49095)))

(declare-fun b!7411457 () Bool)

(declare-fun tp!2120832 () Bool)

(declare-fun tp!2120831 () Bool)

(assert (=> b!7411457 (= e!4432676 (and tp!2120832 tp!2120831))))

(declare-fun b!7411456 () Bool)

(declare-fun tp!2120833 () Bool)

(assert (=> b!7411456 (= e!4432676 tp!2120833)))

(assert (=> b!7410736 (= tp!2120431 e!4432676)))

(declare-fun b!7411455 () Bool)

(declare-fun tp!2120835 () Bool)

(declare-fun tp!2120834 () Bool)

(assert (=> b!7411455 (= e!4432676 (and tp!2120835 tp!2120834))))

(assert (= (and b!7410736 (is-ElementMatch!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411454))

(assert (= (and b!7410736 (is-Concat!28261 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411455))

(assert (= (and b!7410736 (is-Star!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411456))

(assert (= (and b!7410736 (is-Union!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411457))

(declare-fun b!7411458 () Bool)

(declare-fun e!4432677 () Bool)

(assert (=> b!7411458 (= e!4432677 tp_is_empty!49095)))

(declare-fun b!7411461 () Bool)

(declare-fun tp!2120837 () Bool)

(declare-fun tp!2120836 () Bool)

(assert (=> b!7411461 (= e!4432677 (and tp!2120837 tp!2120836))))

(declare-fun b!7411460 () Bool)

(declare-fun tp!2120838 () Bool)

(assert (=> b!7411460 (= e!4432677 tp!2120838)))

(assert (=> b!7410736 (= tp!2120430 e!4432677)))

(declare-fun b!7411459 () Bool)

(declare-fun tp!2120840 () Bool)

(declare-fun tp!2120839 () Bool)

(assert (=> b!7411459 (= e!4432677 (and tp!2120840 tp!2120839))))

(assert (= (and b!7410736 (is-ElementMatch!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411458))

(assert (= (and b!7410736 (is-Concat!28261 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411459))

(assert (= (and b!7410736 (is-Star!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411460))

(assert (= (and b!7410736 (is-Union!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411461))

(declare-fun b!7411462 () Bool)

(declare-fun e!4432678 () Bool)

(assert (=> b!7411462 (= e!4432678 tp_is_empty!49095)))

(declare-fun b!7411465 () Bool)

(declare-fun tp!2120842 () Bool)

(declare-fun tp!2120841 () Bool)

(assert (=> b!7411465 (= e!4432678 (and tp!2120842 tp!2120841))))

(declare-fun b!7411464 () Bool)

(declare-fun tp!2120843 () Bool)

(assert (=> b!7411464 (= e!4432678 tp!2120843)))

(assert (=> b!7410682 (= tp!2120358 e!4432678)))

(declare-fun b!7411463 () Bool)

(declare-fun tp!2120845 () Bool)

(declare-fun tp!2120844 () Bool)

(assert (=> b!7411463 (= e!4432678 (and tp!2120845 tp!2120844))))

(assert (= (and b!7410682 (is-ElementMatch!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411462))

(assert (= (and b!7410682 (is-Concat!28261 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411463))

(assert (= (and b!7410682 (is-Star!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411464))

(assert (= (and b!7410682 (is-Union!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411465))

(declare-fun b!7411466 () Bool)

(declare-fun e!4432679 () Bool)

(assert (=> b!7411466 (= e!4432679 tp_is_empty!49095)))

(declare-fun b!7411469 () Bool)

(declare-fun tp!2120847 () Bool)

(declare-fun tp!2120846 () Bool)

(assert (=> b!7411469 (= e!4432679 (and tp!2120847 tp!2120846))))

(declare-fun b!7411468 () Bool)

(declare-fun tp!2120848 () Bool)

(assert (=> b!7411468 (= e!4432679 tp!2120848)))

(assert (=> b!7410677 (= tp!2120348 e!4432679)))

(declare-fun b!7411467 () Bool)

(declare-fun tp!2120850 () Bool)

(declare-fun tp!2120849 () Bool)

(assert (=> b!7411467 (= e!4432679 (and tp!2120850 tp!2120849))))

(assert (= (and b!7410677 (is-ElementMatch!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411466))

(assert (= (and b!7410677 (is-Concat!28261 (regOne!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411467))

(assert (= (and b!7410677 (is-Star!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411468))

(assert (= (and b!7410677 (is-Union!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411469))

(declare-fun b!7411470 () Bool)

(declare-fun e!4432680 () Bool)

(assert (=> b!7411470 (= e!4432680 tp_is_empty!49095)))

(declare-fun b!7411473 () Bool)

(declare-fun tp!2120852 () Bool)

(declare-fun tp!2120851 () Bool)

(assert (=> b!7411473 (= e!4432680 (and tp!2120852 tp!2120851))))

(declare-fun b!7411472 () Bool)

(declare-fun tp!2120853 () Bool)

(assert (=> b!7411472 (= e!4432680 tp!2120853)))

(assert (=> b!7410677 (= tp!2120347 e!4432680)))

(declare-fun b!7411471 () Bool)

(declare-fun tp!2120855 () Bool)

(declare-fun tp!2120854 () Bool)

(assert (=> b!7411471 (= e!4432680 (and tp!2120855 tp!2120854))))

(assert (= (and b!7410677 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411470))

(assert (= (and b!7410677 (is-Concat!28261 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411471))

(assert (= (and b!7410677 (is-Star!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411472))

(assert (= (and b!7410677 (is-Union!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411473))

(declare-fun b!7411474 () Bool)

(declare-fun e!4432681 () Bool)

(assert (=> b!7411474 (= e!4432681 tp_is_empty!49095)))

(declare-fun b!7411477 () Bool)

(declare-fun tp!2120857 () Bool)

(declare-fun tp!2120856 () Bool)

(assert (=> b!7411477 (= e!4432681 (and tp!2120857 tp!2120856))))

(declare-fun b!7411476 () Bool)

(declare-fun tp!2120858 () Bool)

(assert (=> b!7411476 (= e!4432681 tp!2120858)))

(assert (=> b!7410675 (= tp!2120351 e!4432681)))

(declare-fun b!7411475 () Bool)

(declare-fun tp!2120860 () Bool)

(declare-fun tp!2120859 () Bool)

(assert (=> b!7411475 (= e!4432681 (and tp!2120860 tp!2120859))))

(assert (= (and b!7410675 (is-ElementMatch!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411474))

(assert (= (and b!7410675 (is-Concat!28261 (regOne!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411475))

(assert (= (and b!7410675 (is-Star!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411476))

(assert (= (and b!7410675 (is-Union!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411477))

(declare-fun b!7411478 () Bool)

(declare-fun e!4432682 () Bool)

(assert (=> b!7411478 (= e!4432682 tp_is_empty!49095)))

(declare-fun b!7411481 () Bool)

(declare-fun tp!2120862 () Bool)

(declare-fun tp!2120861 () Bool)

(assert (=> b!7411481 (= e!4432682 (and tp!2120862 tp!2120861))))

(declare-fun b!7411480 () Bool)

(declare-fun tp!2120863 () Bool)

(assert (=> b!7411480 (= e!4432682 tp!2120863)))

(assert (=> b!7410675 (= tp!2120350 e!4432682)))

(declare-fun b!7411479 () Bool)

(declare-fun tp!2120865 () Bool)

(declare-fun tp!2120864 () Bool)

(assert (=> b!7411479 (= e!4432682 (and tp!2120865 tp!2120864))))

(assert (= (and b!7410675 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411478))

(assert (= (and b!7410675 (is-Concat!28261 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411479))

(assert (= (and b!7410675 (is-Star!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411480))

(assert (= (and b!7410675 (is-Union!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411481))

(declare-fun b!7411482 () Bool)

(declare-fun e!4432683 () Bool)

(declare-fun tp!2120866 () Bool)

(declare-fun tp!2120867 () Bool)

(assert (=> b!7411482 (= e!4432683 (and tp!2120866 tp!2120867))))

(assert (=> b!7410721 (= tp!2120408 e!4432683)))

(assert (= (and b!7410721 (is-Cons!71910 (exprs!8856 setElem!56321))) b!7411482))

(declare-fun b!7411483 () Bool)

(declare-fun e!4432684 () Bool)

(assert (=> b!7411483 (= e!4432684 tp_is_empty!49095)))

(declare-fun b!7411486 () Bool)

(declare-fun tp!2120869 () Bool)

(declare-fun tp!2120868 () Bool)

(assert (=> b!7411486 (= e!4432684 (and tp!2120869 tp!2120868))))

(declare-fun b!7411485 () Bool)

(declare-fun tp!2120870 () Bool)

(assert (=> b!7411485 (= e!4432684 tp!2120870)))

(assert (=> b!7410758 (= tp!2120451 e!4432684)))

(declare-fun b!7411484 () Bool)

(declare-fun tp!2120872 () Bool)

(declare-fun tp!2120871 () Bool)

(assert (=> b!7411484 (= e!4432684 (and tp!2120872 tp!2120871))))

(assert (= (and b!7410758 (is-ElementMatch!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411483))

(assert (= (and b!7410758 (is-Concat!28261 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411484))

(assert (= (and b!7410758 (is-Star!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411485))

(assert (= (and b!7410758 (is-Union!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411486))

(declare-fun b!7411487 () Bool)

(declare-fun e!4432685 () Bool)

(assert (=> b!7411487 (= e!4432685 tp_is_empty!49095)))

(declare-fun b!7411490 () Bool)

(declare-fun tp!2120874 () Bool)

(declare-fun tp!2120873 () Bool)

(assert (=> b!7411490 (= e!4432685 (and tp!2120874 tp!2120873))))

(declare-fun b!7411489 () Bool)

(declare-fun tp!2120875 () Bool)

(assert (=> b!7411489 (= e!4432685 tp!2120875)))

(assert (=> b!7410758 (= tp!2120450 e!4432685)))

(declare-fun b!7411488 () Bool)

(declare-fun tp!2120877 () Bool)

(declare-fun tp!2120876 () Bool)

(assert (=> b!7411488 (= e!4432685 (and tp!2120877 tp!2120876))))

(assert (= (and b!7410758 (is-ElementMatch!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411487))

(assert (= (and b!7410758 (is-Concat!28261 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411488))

(assert (= (and b!7410758 (is-Star!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411489))

(assert (= (and b!7410758 (is-Union!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411490))

(declare-fun b!7411491 () Bool)

(declare-fun e!4432686 () Bool)

(assert (=> b!7411491 (= e!4432686 tp_is_empty!49095)))

(declare-fun b!7411494 () Bool)

(declare-fun tp!2120879 () Bool)

(declare-fun tp!2120878 () Bool)

(assert (=> b!7411494 (= e!4432686 (and tp!2120879 tp!2120878))))

(declare-fun b!7411493 () Bool)

(declare-fun tp!2120880 () Bool)

(assert (=> b!7411493 (= e!4432686 tp!2120880)))

(assert (=> b!7410707 (= tp!2120387 e!4432686)))

(declare-fun b!7411492 () Bool)

(declare-fun tp!2120882 () Bool)

(declare-fun tp!2120881 () Bool)

(assert (=> b!7411492 (= e!4432686 (and tp!2120882 tp!2120881))))

(assert (= (and b!7410707 (is-ElementMatch!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411491))

(assert (= (and b!7410707 (is-Concat!28261 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411492))

(assert (= (and b!7410707 (is-Star!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411493))

(assert (= (and b!7410707 (is-Union!19416 (regOne!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411494))

(declare-fun b!7411495 () Bool)

(declare-fun e!4432687 () Bool)

(assert (=> b!7411495 (= e!4432687 tp_is_empty!49095)))

(declare-fun b!7411498 () Bool)

(declare-fun tp!2120884 () Bool)

(declare-fun tp!2120883 () Bool)

(assert (=> b!7411498 (= e!4432687 (and tp!2120884 tp!2120883))))

(declare-fun b!7411497 () Bool)

(declare-fun tp!2120885 () Bool)

(assert (=> b!7411497 (= e!4432687 tp!2120885)))

(assert (=> b!7410707 (= tp!2120386 e!4432687)))

(declare-fun b!7411496 () Bool)

(declare-fun tp!2120887 () Bool)

(declare-fun tp!2120886 () Bool)

(assert (=> b!7411496 (= e!4432687 (and tp!2120887 tp!2120886))))

(assert (= (and b!7410707 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411495))

(assert (= (and b!7410707 (is-Concat!28261 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411496))

(assert (= (and b!7410707 (is-Star!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411497))

(assert (= (and b!7410707 (is-Union!19416 (regTwo!39345 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411498))

(declare-fun b!7411499 () Bool)

(declare-fun e!4432688 () Bool)

(assert (=> b!7411499 (= e!4432688 tp_is_empty!49095)))

(declare-fun b!7411502 () Bool)

(declare-fun tp!2120889 () Bool)

(declare-fun tp!2120888 () Bool)

(assert (=> b!7411502 (= e!4432688 (and tp!2120889 tp!2120888))))

(declare-fun b!7411501 () Bool)

(declare-fun tp!2120890 () Bool)

(assert (=> b!7411501 (= e!4432688 tp!2120890)))

(assert (=> b!7410698 (= tp!2120378 e!4432688)))

(declare-fun b!7411500 () Bool)

(declare-fun tp!2120892 () Bool)

(declare-fun tp!2120891 () Bool)

(assert (=> b!7411500 (= e!4432688 (and tp!2120892 tp!2120891))))

(assert (= (and b!7410698 (is-ElementMatch!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411499))

(assert (= (and b!7410698 (is-Concat!28261 (reg!19745 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411500))

(assert (= (and b!7410698 (is-Star!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411501))

(assert (= (and b!7410698 (is-Union!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411502))

(declare-fun b!7411503 () Bool)

(declare-fun e!4432689 () Bool)

(assert (=> b!7411503 (= e!4432689 tp_is_empty!49095)))

(declare-fun b!7411506 () Bool)

(declare-fun tp!2120894 () Bool)

(declare-fun tp!2120893 () Bool)

(assert (=> b!7411506 (= e!4432689 (and tp!2120894 tp!2120893))))

(declare-fun b!7411505 () Bool)

(declare-fun tp!2120895 () Bool)

(assert (=> b!7411505 (= e!4432689 tp!2120895)))

(assert (=> b!7410689 (= tp!2120370 e!4432689)))

(declare-fun b!7411504 () Bool)

(declare-fun tp!2120897 () Bool)

(declare-fun tp!2120896 () Bool)

(assert (=> b!7411504 (= e!4432689 (and tp!2120897 tp!2120896))))

(assert (= (and b!7410689 (is-ElementMatch!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411503))

(assert (= (and b!7410689 (is-Concat!28261 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411504))

(assert (= (and b!7410689 (is-Star!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411505))

(assert (= (and b!7410689 (is-Union!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411506))

(declare-fun b!7411507 () Bool)

(declare-fun e!4432690 () Bool)

(assert (=> b!7411507 (= e!4432690 tp_is_empty!49095)))

(declare-fun b!7411510 () Bool)

(declare-fun tp!2120899 () Bool)

(declare-fun tp!2120898 () Bool)

(assert (=> b!7411510 (= e!4432690 (and tp!2120899 tp!2120898))))

(declare-fun b!7411509 () Bool)

(declare-fun tp!2120900 () Bool)

(assert (=> b!7411509 (= e!4432690 tp!2120900)))

(assert (=> b!7410689 (= tp!2120369 e!4432690)))

(declare-fun b!7411508 () Bool)

(declare-fun tp!2120902 () Bool)

(declare-fun tp!2120901 () Bool)

(assert (=> b!7411508 (= e!4432690 (and tp!2120902 tp!2120901))))

(assert (= (and b!7410689 (is-ElementMatch!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411507))

(assert (= (and b!7410689 (is-Concat!28261 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411508))

(assert (= (and b!7410689 (is-Star!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411509))

(assert (= (and b!7410689 (is-Union!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411510))

(declare-fun b!7411511 () Bool)

(declare-fun e!4432691 () Bool)

(assert (=> b!7411511 (= e!4432691 tp_is_empty!49095)))

(declare-fun b!7411514 () Bool)

(declare-fun tp!2120904 () Bool)

(declare-fun tp!2120903 () Bool)

(assert (=> b!7411514 (= e!4432691 (and tp!2120904 tp!2120903))))

(declare-fun b!7411513 () Bool)

(declare-fun tp!2120905 () Bool)

(assert (=> b!7411513 (= e!4432691 tp!2120905)))

(assert (=> b!7410756 (= tp!2120454 e!4432691)))

(declare-fun b!7411512 () Bool)

(declare-fun tp!2120907 () Bool)

(declare-fun tp!2120906 () Bool)

(assert (=> b!7411512 (= e!4432691 (and tp!2120907 tp!2120906))))

(assert (= (and b!7410756 (is-ElementMatch!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411511))

(assert (= (and b!7410756 (is-Concat!28261 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411512))

(assert (= (and b!7410756 (is-Star!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411513))

(assert (= (and b!7410756 (is-Union!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411514))

(declare-fun b!7411515 () Bool)

(declare-fun e!4432692 () Bool)

(assert (=> b!7411515 (= e!4432692 tp_is_empty!49095)))

(declare-fun b!7411518 () Bool)

(declare-fun tp!2120909 () Bool)

(declare-fun tp!2120908 () Bool)

(assert (=> b!7411518 (= e!4432692 (and tp!2120909 tp!2120908))))

(declare-fun b!7411517 () Bool)

(declare-fun tp!2120910 () Bool)

(assert (=> b!7411517 (= e!4432692 tp!2120910)))

(assert (=> b!7410756 (= tp!2120453 e!4432692)))

(declare-fun b!7411516 () Bool)

(declare-fun tp!2120912 () Bool)

(declare-fun tp!2120911 () Bool)

(assert (=> b!7411516 (= e!4432692 (and tp!2120912 tp!2120911))))

(assert (= (and b!7410756 (is-ElementMatch!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411515))

(assert (= (and b!7410756 (is-Concat!28261 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411516))

(assert (= (and b!7410756 (is-Star!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411517))

(assert (= (and b!7410756 (is-Union!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411518))

(declare-fun b!7411519 () Bool)

(declare-fun e!4432693 () Bool)

(assert (=> b!7411519 (= e!4432693 tp_is_empty!49095)))

(declare-fun b!7411522 () Bool)

(declare-fun tp!2120914 () Bool)

(declare-fun tp!2120913 () Bool)

(assert (=> b!7411522 (= e!4432693 (and tp!2120914 tp!2120913))))

(declare-fun b!7411521 () Bool)

(declare-fun tp!2120915 () Bool)

(assert (=> b!7411521 (= e!4432693 tp!2120915)))

(assert (=> b!7410714 (= tp!2120398 e!4432693)))

(declare-fun b!7411520 () Bool)

(declare-fun tp!2120917 () Bool)

(declare-fun tp!2120916 () Bool)

(assert (=> b!7411520 (= e!4432693 (and tp!2120917 tp!2120916))))

(assert (= (and b!7410714 (is-ElementMatch!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411519))

(assert (= (and b!7410714 (is-Concat!28261 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411520))

(assert (= (and b!7410714 (is-Star!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411521))

(assert (= (and b!7410714 (is-Union!19416 (reg!19745 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411522))

(declare-fun condSetEmpty!56331 () Bool)

(assert (=> setNonEmpty!56322 (= condSetEmpty!56331 (= setRest!56322 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56331 () Bool)

(assert (=> setNonEmpty!56322 (= tp!2120461 setRes!56331)))

(declare-fun setIsEmpty!56331 () Bool)

(assert (=> setIsEmpty!56331 setRes!56331))

(declare-fun e!4432694 () Bool)

(declare-fun tp!2120919 () Bool)

(declare-fun setElem!56331 () Context!16712)

(declare-fun setNonEmpty!56331 () Bool)

(assert (=> setNonEmpty!56331 (= setRes!56331 (and tp!2120919 (inv!91902 setElem!56331) e!4432694))))

(declare-fun setRest!56331 () (Set Context!16712))

(assert (=> setNonEmpty!56331 (= setRest!56322 (set.union (set.insert setElem!56331 (as set.empty (Set Context!16712))) setRest!56331))))

(declare-fun b!7411523 () Bool)

(declare-fun tp!2120918 () Bool)

(assert (=> b!7411523 (= e!4432694 tp!2120918)))

(assert (= (and setNonEmpty!56322 condSetEmpty!56331) setIsEmpty!56331))

(assert (= (and setNonEmpty!56322 (not condSetEmpty!56331)) setNonEmpty!56331))

(assert (= setNonEmpty!56331 b!7411523))

(declare-fun m!8046646 () Bool)

(assert (=> setNonEmpty!56331 m!8046646))

(declare-fun b!7411524 () Bool)

(declare-fun e!4432695 () Bool)

(assert (=> b!7411524 (= e!4432695 tp_is_empty!49095)))

(declare-fun b!7411527 () Bool)

(declare-fun tp!2120921 () Bool)

(declare-fun tp!2120920 () Bool)

(assert (=> b!7411527 (= e!4432695 (and tp!2120921 tp!2120920))))

(declare-fun b!7411526 () Bool)

(declare-fun tp!2120922 () Bool)

(assert (=> b!7411526 (= e!4432695 tp!2120922)))

(assert (=> b!7410705 (= tp!2120390 e!4432695)))

(declare-fun b!7411525 () Bool)

(declare-fun tp!2120924 () Bool)

(declare-fun tp!2120923 () Bool)

(assert (=> b!7411525 (= e!4432695 (and tp!2120924 tp!2120923))))

(assert (= (and b!7410705 (is-ElementMatch!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411524))

(assert (= (and b!7410705 (is-Concat!28261 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411525))

(assert (= (and b!7410705 (is-Star!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411526))

(assert (= (and b!7410705 (is-Union!19416 (regOne!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411527))

(declare-fun b!7411528 () Bool)

(declare-fun e!4432696 () Bool)

(assert (=> b!7411528 (= e!4432696 tp_is_empty!49095)))

(declare-fun b!7411531 () Bool)

(declare-fun tp!2120926 () Bool)

(declare-fun tp!2120925 () Bool)

(assert (=> b!7411531 (= e!4432696 (and tp!2120926 tp!2120925))))

(declare-fun b!7411530 () Bool)

(declare-fun tp!2120927 () Bool)

(assert (=> b!7411530 (= e!4432696 tp!2120927)))

(assert (=> b!7410705 (= tp!2120389 e!4432696)))

(declare-fun b!7411529 () Bool)

(declare-fun tp!2120929 () Bool)

(declare-fun tp!2120928 () Bool)

(assert (=> b!7411529 (= e!4432696 (and tp!2120929 tp!2120928))))

(assert (= (and b!7410705 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411528))

(assert (= (and b!7410705 (is-Concat!28261 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411529))

(assert (= (and b!7410705 (is-Star!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411530))

(assert (= (and b!7410705 (is-Union!19416 (regTwo!39344 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411531))

(declare-fun b!7411532 () Bool)

(declare-fun e!4432697 () Bool)

(assert (=> b!7411532 (= e!4432697 tp_is_empty!49095)))

(declare-fun b!7411535 () Bool)

(declare-fun tp!2120931 () Bool)

(declare-fun tp!2120930 () Bool)

(assert (=> b!7411535 (= e!4432697 (and tp!2120931 tp!2120930))))

(declare-fun b!7411534 () Bool)

(declare-fun tp!2120932 () Bool)

(assert (=> b!7411534 (= e!4432697 tp!2120932)))

(assert (=> b!7410726 (= tp!2120415 e!4432697)))

(declare-fun b!7411533 () Bool)

(declare-fun tp!2120934 () Bool)

(declare-fun tp!2120933 () Bool)

(assert (=> b!7411533 (= e!4432697 (and tp!2120934 tp!2120933))))

(assert (= (and b!7410726 (is-ElementMatch!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))) b!7411532))

(assert (= (and b!7410726 (is-Concat!28261 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))) b!7411533))

(assert (= (and b!7410726 (is-Star!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))) b!7411534))

(assert (= (and b!7410726 (is-Union!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))) b!7411535))

(declare-fun b!7411536 () Bool)

(declare-fun e!4432698 () Bool)

(declare-fun tp!2120935 () Bool)

(declare-fun tp!2120936 () Bool)

(assert (=> b!7411536 (= e!4432698 (and tp!2120935 tp!2120936))))

(assert (=> b!7410726 (= tp!2120416 e!4432698)))

(assert (= (and b!7410726 (is-Cons!71910 (t!386593 (t!386593 (t!386593 (exprs!8856 setElem!56306)))))) b!7411536))

(declare-fun b!7411537 () Bool)

(declare-fun e!4432699 () Bool)

(assert (=> b!7411537 (= e!4432699 tp_is_empty!49095)))

(declare-fun b!7411540 () Bool)

(declare-fun tp!2120938 () Bool)

(declare-fun tp!2120937 () Bool)

(assert (=> b!7411540 (= e!4432699 (and tp!2120938 tp!2120937))))

(declare-fun b!7411539 () Bool)

(declare-fun tp!2120939 () Bool)

(assert (=> b!7411539 (= e!4432699 tp!2120939)))

(assert (=> b!7410713 (= tp!2120400 e!4432699)))

(declare-fun b!7411538 () Bool)

(declare-fun tp!2120941 () Bool)

(declare-fun tp!2120940 () Bool)

(assert (=> b!7411538 (= e!4432699 (and tp!2120941 tp!2120940))))

(assert (= (and b!7410713 (is-ElementMatch!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411537))

(assert (= (and b!7410713 (is-Concat!28261 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411538))

(assert (= (and b!7410713 (is-Star!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411539))

(assert (= (and b!7410713 (is-Union!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411540))

(declare-fun b!7411541 () Bool)

(declare-fun e!4432700 () Bool)

(assert (=> b!7411541 (= e!4432700 tp_is_empty!49095)))

(declare-fun b!7411544 () Bool)

(declare-fun tp!2120943 () Bool)

(declare-fun tp!2120942 () Bool)

(assert (=> b!7411544 (= e!4432700 (and tp!2120943 tp!2120942))))

(declare-fun b!7411543 () Bool)

(declare-fun tp!2120944 () Bool)

(assert (=> b!7411543 (= e!4432700 tp!2120944)))

(assert (=> b!7410713 (= tp!2120399 e!4432700)))

(declare-fun b!7411542 () Bool)

(declare-fun tp!2120946 () Bool)

(declare-fun tp!2120945 () Bool)

(assert (=> b!7411542 (= e!4432700 (and tp!2120946 tp!2120945))))

(assert (= (and b!7410713 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411541))

(assert (= (and b!7410713 (is-Concat!28261 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411542))

(assert (= (and b!7410713 (is-Star!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411543))

(assert (= (and b!7410713 (is-Union!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411544))

(declare-fun b!7411545 () Bool)

(declare-fun e!4432701 () Bool)

(assert (=> b!7411545 (= e!4432701 tp_is_empty!49095)))

(declare-fun b!7411548 () Bool)

(declare-fun tp!2120948 () Bool)

(declare-fun tp!2120947 () Bool)

(assert (=> b!7411548 (= e!4432701 (and tp!2120948 tp!2120947))))

(declare-fun b!7411547 () Bool)

(declare-fun tp!2120949 () Bool)

(assert (=> b!7411547 (= e!4432701 tp!2120949)))

(assert (=> b!7410733 (= tp!2120424 e!4432701)))

(declare-fun b!7411546 () Bool)

(declare-fun tp!2120951 () Bool)

(declare-fun tp!2120950 () Bool)

(assert (=> b!7411546 (= e!4432701 (and tp!2120951 tp!2120950))))

(assert (= (and b!7410733 (is-ElementMatch!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411545))

(assert (= (and b!7410733 (is-Concat!28261 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411546))

(assert (= (and b!7410733 (is-Star!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411547))

(assert (= (and b!7410733 (is-Union!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411548))

(declare-fun b!7411550 () Bool)

(declare-fun e!4432703 () Bool)

(declare-fun tp!2120952 () Bool)

(assert (=> b!7411550 (= e!4432703 tp!2120952)))

(declare-fun b!7411549 () Bool)

(declare-fun e!4432702 () Bool)

(declare-fun tp!2120953 () Bool)

(assert (=> b!7411549 (= e!4432702 (and (inv!91902 (h!78359 (t!386594 res!2983224))) e!4432703 tp!2120953))))

(assert (=> b!7410558 (= tp!2120343 e!4432702)))

(assert (= b!7411549 b!7411550))

(assert (= (and b!7410558 (is-Cons!71911 (t!386594 res!2983224))) b!7411549))

(declare-fun m!8046648 () Bool)

(assert (=> b!7411549 m!8046648))

(declare-fun b!7411551 () Bool)

(declare-fun e!4432704 () Bool)

(assert (=> b!7411551 (= e!4432704 tp_is_empty!49095)))

(declare-fun b!7411554 () Bool)

(declare-fun tp!2120955 () Bool)

(declare-fun tp!2120954 () Bool)

(assert (=> b!7411554 (= e!4432704 (and tp!2120955 tp!2120954))))

(declare-fun b!7411553 () Bool)

(declare-fun tp!2120956 () Bool)

(assert (=> b!7411553 (= e!4432704 tp!2120956)))

(assert (=> b!7410679 (= tp!2120354 e!4432704)))

(declare-fun b!7411552 () Bool)

(declare-fun tp!2120958 () Bool)

(declare-fun tp!2120957 () Bool)

(assert (=> b!7411552 (= e!4432704 (and tp!2120958 tp!2120957))))

(assert (= (and b!7410679 (is-ElementMatch!19416 (h!78358 (exprs!8856 _$3!583)))) b!7411551))

(assert (= (and b!7410679 (is-Concat!28261 (h!78358 (exprs!8856 _$3!583)))) b!7411552))

(assert (= (and b!7410679 (is-Star!19416 (h!78358 (exprs!8856 _$3!583)))) b!7411553))

(assert (= (and b!7410679 (is-Union!19416 (h!78358 (exprs!8856 _$3!583)))) b!7411554))

(declare-fun b!7411555 () Bool)

(declare-fun e!4432705 () Bool)

(declare-fun tp!2120959 () Bool)

(declare-fun tp!2120960 () Bool)

(assert (=> b!7411555 (= e!4432705 (and tp!2120959 tp!2120960))))

(assert (=> b!7410679 (= tp!2120355 e!4432705)))

(assert (= (and b!7410679 (is-Cons!71910 (t!386593 (exprs!8856 _$3!583)))) b!7411555))

(declare-fun b!7411556 () Bool)

(declare-fun e!4432706 () Bool)

(assert (=> b!7411556 (= e!4432706 tp_is_empty!49095)))

(declare-fun b!7411559 () Bool)

(declare-fun tp!2120962 () Bool)

(declare-fun tp!2120961 () Bool)

(assert (=> b!7411559 (= e!4432706 (and tp!2120962 tp!2120961))))

(declare-fun b!7411558 () Bool)

(declare-fun tp!2120963 () Bool)

(assert (=> b!7411558 (= e!4432706 tp!2120963)))

(assert (=> b!7410725 (= tp!2120411 e!4432706)))

(declare-fun b!7411557 () Bool)

(declare-fun tp!2120965 () Bool)

(declare-fun tp!2120964 () Bool)

(assert (=> b!7411557 (= e!4432706 (and tp!2120965 tp!2120964))))

(assert (= (and b!7410725 (is-ElementMatch!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411556))

(assert (= (and b!7410725 (is-Concat!28261 (regOne!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411557))

(assert (= (and b!7410725 (is-Star!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411558))

(assert (= (and b!7410725 (is-Union!19416 (regOne!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411559))

(declare-fun b!7411560 () Bool)

(declare-fun e!4432707 () Bool)

(assert (=> b!7411560 (= e!4432707 tp_is_empty!49095)))

(declare-fun b!7411563 () Bool)

(declare-fun tp!2120967 () Bool)

(declare-fun tp!2120966 () Bool)

(assert (=> b!7411563 (= e!4432707 (and tp!2120967 tp!2120966))))

(declare-fun b!7411562 () Bool)

(declare-fun tp!2120968 () Bool)

(assert (=> b!7411562 (= e!4432707 tp!2120968)))

(assert (=> b!7410725 (= tp!2120410 e!4432707)))

(declare-fun b!7411561 () Bool)

(declare-fun tp!2120970 () Bool)

(declare-fun tp!2120969 () Bool)

(assert (=> b!7411561 (= e!4432707 (and tp!2120970 tp!2120969))))

(assert (= (and b!7410725 (is-ElementMatch!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411560))

(assert (= (and b!7410725 (is-Concat!28261 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411561))

(assert (= (and b!7410725 (is-Star!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411562))

(assert (= (and b!7410725 (is-Union!19416 (regTwo!39345 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411563))

(declare-fun b!7411564 () Bool)

(declare-fun e!4432708 () Bool)

(declare-fun tp!2120971 () Bool)

(declare-fun tp!2120972 () Bool)

(assert (=> b!7411564 (= e!4432708 (and tp!2120971 tp!2120972))))

(assert (=> b!7410607 (= tp!2120345 e!4432708)))

(assert (= (and b!7410607 (is-Cons!71910 (exprs!8856 setElem!56320))) b!7411564))

(declare-fun b!7411565 () Bool)

(declare-fun e!4432709 () Bool)

(assert (=> b!7411565 (= e!4432709 tp_is_empty!49095)))

(declare-fun b!7411568 () Bool)

(declare-fun tp!2120974 () Bool)

(declare-fun tp!2120973 () Bool)

(assert (=> b!7411568 (= e!4432709 (and tp!2120974 tp!2120973))))

(declare-fun b!7411567 () Bool)

(declare-fun tp!2120975 () Bool)

(assert (=> b!7411567 (= e!4432709 tp!2120975)))

(assert (=> b!7410766 (= tp!2120464 e!4432709)))

(declare-fun b!7411566 () Bool)

(declare-fun tp!2120977 () Bool)

(declare-fun tp!2120976 () Bool)

(assert (=> b!7411566 (= e!4432709 (and tp!2120977 tp!2120976))))

(assert (= (and b!7410766 (is-ElementMatch!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411565))

(assert (= (and b!7410766 (is-Concat!28261 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411566))

(assert (= (and b!7410766 (is-Star!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411567))

(assert (= (and b!7410766 (is-Union!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 empty!3611)))))) b!7411568))

(declare-fun b!7411569 () Bool)

(declare-fun e!4432710 () Bool)

(assert (=> b!7411569 (= e!4432710 tp_is_empty!49095)))

(declare-fun b!7411572 () Bool)

(declare-fun tp!2120979 () Bool)

(declare-fun tp!2120978 () Bool)

(assert (=> b!7411572 (= e!4432710 (and tp!2120979 tp!2120978))))

(declare-fun b!7411571 () Bool)

(declare-fun tp!2120980 () Bool)

(assert (=> b!7411571 (= e!4432710 tp!2120980)))

(assert (=> b!7410695 (= tp!2120372 e!4432710)))

(declare-fun b!7411570 () Bool)

(declare-fun tp!2120982 () Bool)

(declare-fun tp!2120981 () Bool)

(assert (=> b!7411570 (= e!4432710 (and tp!2120982 tp!2120981))))

(assert (= (and b!7410695 (is-ElementMatch!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411569))

(assert (= (and b!7410695 (is-Concat!28261 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411570))

(assert (= (and b!7410695 (is-Star!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411571))

(assert (= (and b!7410695 (is-Union!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411572))

(declare-fun b!7411573 () Bool)

(declare-fun e!4432711 () Bool)

(assert (=> b!7411573 (= e!4432711 tp_is_empty!49095)))

(declare-fun b!7411576 () Bool)

(declare-fun tp!2120984 () Bool)

(declare-fun tp!2120983 () Bool)

(assert (=> b!7411576 (= e!4432711 (and tp!2120984 tp!2120983))))

(declare-fun b!7411575 () Bool)

(declare-fun tp!2120985 () Bool)

(assert (=> b!7411575 (= e!4432711 tp!2120985)))

(assert (=> b!7410695 (= tp!2120371 e!4432711)))

(declare-fun b!7411574 () Bool)

(declare-fun tp!2120987 () Bool)

(declare-fun tp!2120986 () Bool)

(assert (=> b!7411574 (= e!4432711 (and tp!2120987 tp!2120986))))

(assert (= (and b!7410695 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411573))

(assert (= (and b!7410695 (is-Concat!28261 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411574))

(assert (= (and b!7410695 (is-Star!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411575))

(assert (= (and b!7410695 (is-Union!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411576))

(declare-fun b!7411577 () Bool)

(declare-fun e!4432712 () Bool)

(assert (=> b!7411577 (= e!4432712 tp_is_empty!49095)))

(declare-fun b!7411580 () Bool)

(declare-fun tp!2120989 () Bool)

(declare-fun tp!2120988 () Bool)

(assert (=> b!7411580 (= e!4432712 (and tp!2120989 tp!2120988))))

(declare-fun b!7411579 () Bool)

(declare-fun tp!2120990 () Bool)

(assert (=> b!7411579 (= e!4432712 tp!2120990)))

(assert (=> b!7410686 (= tp!2120363 e!4432712)))

(declare-fun b!7411578 () Bool)

(declare-fun tp!2120992 () Bool)

(declare-fun tp!2120991 () Bool)

(assert (=> b!7411578 (= e!4432712 (and tp!2120992 tp!2120991))))

(assert (= (and b!7410686 (is-ElementMatch!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411577))

(assert (= (and b!7410686 (is-Concat!28261 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411578))

(assert (= (and b!7410686 (is-Star!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411579))

(assert (= (and b!7410686 (is-Union!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411580))

(declare-fun b!7411581 () Bool)

(declare-fun e!4432713 () Bool)

(assert (=> b!7411581 (= e!4432713 tp_is_empty!49095)))

(declare-fun b!7411584 () Bool)

(declare-fun tp!2120994 () Bool)

(declare-fun tp!2120993 () Bool)

(assert (=> b!7411584 (= e!4432713 (and tp!2120994 tp!2120993))))

(declare-fun b!7411583 () Bool)

(declare-fun tp!2120995 () Bool)

(assert (=> b!7411583 (= e!4432713 tp!2120995)))

(assert (=> b!7410693 (= tp!2120375 e!4432713)))

(declare-fun b!7411582 () Bool)

(declare-fun tp!2120997 () Bool)

(declare-fun tp!2120996 () Bool)

(assert (=> b!7411582 (= e!4432713 (and tp!2120997 tp!2120996))))

(assert (= (and b!7410693 (is-ElementMatch!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411581))

(assert (= (and b!7410693 (is-Concat!28261 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411582))

(assert (= (and b!7410693 (is-Star!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411583))

(assert (= (and b!7410693 (is-Union!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411584))

(declare-fun b!7411585 () Bool)

(declare-fun e!4432714 () Bool)

(assert (=> b!7411585 (= e!4432714 tp_is_empty!49095)))

(declare-fun b!7411588 () Bool)

(declare-fun tp!2120999 () Bool)

(declare-fun tp!2120998 () Bool)

(assert (=> b!7411588 (= e!4432714 (and tp!2120999 tp!2120998))))

(declare-fun b!7411587 () Bool)

(declare-fun tp!2121000 () Bool)

(assert (=> b!7411587 (= e!4432714 tp!2121000)))

(assert (=> b!7410693 (= tp!2120374 e!4432714)))

(declare-fun b!7411586 () Bool)

(declare-fun tp!2121002 () Bool)

(declare-fun tp!2121001 () Bool)

(assert (=> b!7411586 (= e!4432714 (and tp!2121002 tp!2121001))))

(assert (= (and b!7410693 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411585))

(assert (= (and b!7410693 (is-Concat!28261 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411586))

(assert (= (and b!7410693 (is-Star!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411587))

(assert (= (and b!7410693 (is-Union!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411588))

(declare-fun b!7411589 () Bool)

(declare-fun e!4432715 () Bool)

(assert (=> b!7411589 (= e!4432715 tp_is_empty!49095)))

(declare-fun b!7411592 () Bool)

(declare-fun tp!2121004 () Bool)

(declare-fun tp!2121003 () Bool)

(assert (=> b!7411592 (= e!4432715 (and tp!2121004 tp!2121003))))

(declare-fun b!7411591 () Bool)

(declare-fun tp!2121005 () Bool)

(assert (=> b!7411591 (= e!4432715 tp!2121005)))

(assert (=> b!7410723 (= tp!2120414 e!4432715)))

(declare-fun b!7411590 () Bool)

(declare-fun tp!2121007 () Bool)

(declare-fun tp!2121006 () Bool)

(assert (=> b!7411590 (= e!4432715 (and tp!2121007 tp!2121006))))

(assert (= (and b!7410723 (is-ElementMatch!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411589))

(assert (= (and b!7410723 (is-Concat!28261 (regOne!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411590))

(assert (= (and b!7410723 (is-Star!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411591))

(assert (= (and b!7410723 (is-Union!19416 (regOne!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411592))

(declare-fun b!7411593 () Bool)

(declare-fun e!4432716 () Bool)

(assert (=> b!7411593 (= e!4432716 tp_is_empty!49095)))

(declare-fun b!7411596 () Bool)

(declare-fun tp!2121009 () Bool)

(declare-fun tp!2121008 () Bool)

(assert (=> b!7411596 (= e!4432716 (and tp!2121009 tp!2121008))))

(declare-fun b!7411595 () Bool)

(declare-fun tp!2121010 () Bool)

(assert (=> b!7411595 (= e!4432716 tp!2121010)))

(assert (=> b!7410723 (= tp!2120413 e!4432716)))

(declare-fun b!7411594 () Bool)

(declare-fun tp!2121012 () Bool)

(declare-fun tp!2121011 () Bool)

(assert (=> b!7411594 (= e!4432716 (and tp!2121012 tp!2121011))))

(assert (= (and b!7410723 (is-ElementMatch!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411593))

(assert (= (and b!7410723 (is-Concat!28261 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411594))

(assert (= (and b!7410723 (is-Star!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411595))

(assert (= (and b!7410723 (is-Union!19416 (regTwo!39344 (h!78358 (t!386593 (exprs!8856 setElem!56306)))))) b!7411596))

(declare-fun b!7411597 () Bool)

(declare-fun e!4432717 () Bool)

(assert (=> b!7411597 (= e!4432717 tp_is_empty!49095)))

(declare-fun b!7411600 () Bool)

(declare-fun tp!2121014 () Bool)

(declare-fun tp!2121013 () Bool)

(assert (=> b!7411600 (= e!4432717 (and tp!2121014 tp!2121013))))

(declare-fun b!7411599 () Bool)

(declare-fun tp!2121015 () Bool)

(assert (=> b!7411599 (= e!4432717 tp!2121015)))

(assert (=> b!7410762 (= tp!2120456 e!4432717)))

(declare-fun b!7411598 () Bool)

(declare-fun tp!2121017 () Bool)

(declare-fun tp!2121016 () Bool)

(assert (=> b!7411598 (= e!4432717 (and tp!2121017 tp!2121016))))

(assert (= (and b!7410762 (is-ElementMatch!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411597))

(assert (= (and b!7410762 (is-Concat!28261 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411598))

(assert (= (and b!7410762 (is-Star!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411599))

(assert (= (and b!7410762 (is-Union!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411600))

(declare-fun b!7411601 () Bool)

(declare-fun e!4432718 () Bool)

(assert (=> b!7411601 (= e!4432718 tp_is_empty!49095)))

(declare-fun b!7411604 () Bool)

(declare-fun tp!2121019 () Bool)

(declare-fun tp!2121018 () Bool)

(assert (=> b!7411604 (= e!4432718 (and tp!2121019 tp!2121018))))

(declare-fun b!7411603 () Bool)

(declare-fun tp!2121020 () Bool)

(assert (=> b!7411603 (= e!4432718 tp!2121020)))

(assert (=> b!7410762 (= tp!2120455 e!4432718)))

(declare-fun b!7411602 () Bool)

(declare-fun tp!2121022 () Bool)

(declare-fun tp!2121021 () Bool)

(assert (=> b!7411602 (= e!4432718 (and tp!2121022 tp!2121021))))

(assert (= (and b!7410762 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411601))

(assert (= (and b!7410762 (is-Concat!28261 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411602))

(assert (= (and b!7410762 (is-Star!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411603))

(assert (= (and b!7410762 (is-Union!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411604))

(declare-fun b!7411605 () Bool)

(declare-fun e!4432719 () Bool)

(assert (=> b!7411605 (= e!4432719 tp_is_empty!49095)))

(declare-fun b!7411608 () Bool)

(declare-fun tp!2121024 () Bool)

(declare-fun tp!2121023 () Bool)

(assert (=> b!7411608 (= e!4432719 (and tp!2121024 tp!2121023))))

(declare-fun b!7411607 () Bool)

(declare-fun tp!2121025 () Bool)

(assert (=> b!7411607 (= e!4432719 tp!2121025)))

(assert (=> b!7410678 (= tp!2120352 e!4432719)))

(declare-fun b!7411606 () Bool)

(declare-fun tp!2121027 () Bool)

(declare-fun tp!2121026 () Bool)

(assert (=> b!7411606 (= e!4432719 (and tp!2121027 tp!2121026))))

(assert (= (and b!7410678 (is-ElementMatch!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532)))))) b!7411605))

(assert (= (and b!7410678 (is-Concat!28261 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532)))))) b!7411606))

(assert (= (and b!7410678 (is-Star!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532)))))) b!7411607))

(assert (= (and b!7410678 (is-Union!19416 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532)))))) b!7411608))

(declare-fun b!7411609 () Bool)

(declare-fun e!4432720 () Bool)

(declare-fun tp!2121028 () Bool)

(declare-fun tp!2121029 () Bool)

(assert (=> b!7411609 (= e!4432720 (and tp!2121028 tp!2121029))))

(assert (=> b!7410678 (= tp!2120353 e!4432720)))

(assert (= (and b!7410678 (is-Cons!71910 (t!386593 (t!386593 (t!386593 (exprs!8856 c!10532)))))) b!7411609))

(declare-fun b!7411610 () Bool)

(declare-fun e!4432721 () Bool)

(assert (=> b!7411610 (= e!4432721 tp_is_empty!49095)))

(declare-fun b!7411613 () Bool)

(declare-fun tp!2121031 () Bool)

(declare-fun tp!2121030 () Bool)

(assert (=> b!7411613 (= e!4432721 (and tp!2121031 tp!2121030))))

(declare-fun b!7411612 () Bool)

(declare-fun tp!2121032 () Bool)

(assert (=> b!7411612 (= e!4432721 tp!2121032)))

(assert (=> b!7410760 (= tp!2120459 e!4432721)))

(declare-fun b!7411611 () Bool)

(declare-fun tp!2121034 () Bool)

(declare-fun tp!2121033 () Bool)

(assert (=> b!7411611 (= e!4432721 (and tp!2121034 tp!2121033))))

(assert (= (and b!7410760 (is-ElementMatch!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411610))

(assert (= (and b!7410760 (is-Concat!28261 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411611))

(assert (= (and b!7410760 (is-Star!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411612))

(assert (= (and b!7410760 (is-Union!19416 (regOne!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411613))

(declare-fun b!7411614 () Bool)

(declare-fun e!4432722 () Bool)

(assert (=> b!7411614 (= e!4432722 tp_is_empty!49095)))

(declare-fun b!7411617 () Bool)

(declare-fun tp!2121036 () Bool)

(declare-fun tp!2121035 () Bool)

(assert (=> b!7411617 (= e!4432722 (and tp!2121036 tp!2121035))))

(declare-fun b!7411616 () Bool)

(declare-fun tp!2121037 () Bool)

(assert (=> b!7411616 (= e!4432722 tp!2121037)))

(assert (=> b!7410760 (= tp!2120458 e!4432722)))

(declare-fun b!7411615 () Bool)

(declare-fun tp!2121039 () Bool)

(declare-fun tp!2121038 () Bool)

(assert (=> b!7411615 (= e!4432722 (and tp!2121039 tp!2121038))))

(assert (= (and b!7410760 (is-ElementMatch!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411614))

(assert (= (and b!7410760 (is-Concat!28261 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411615))

(assert (= (and b!7410760 (is-Star!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411616))

(assert (= (and b!7410760 (is-Union!19416 (regTwo!39344 (regTwo!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411617))

(declare-fun b!7411618 () Bool)

(declare-fun e!4432723 () Bool)

(assert (=> b!7411618 (= e!4432723 tp_is_empty!49095)))

(declare-fun b!7411621 () Bool)

(declare-fun tp!2121041 () Bool)

(declare-fun tp!2121040 () Bool)

(assert (=> b!7411621 (= e!4432723 (and tp!2121041 tp!2121040))))

(declare-fun b!7411620 () Bool)

(declare-fun tp!2121042 () Bool)

(assert (=> b!7411620 (= e!4432723 tp!2121042)))

(assert (=> b!7410711 (= tp!2120392 e!4432723)))

(declare-fun b!7411619 () Bool)

(declare-fun tp!2121044 () Bool)

(declare-fun tp!2121043 () Bool)

(assert (=> b!7411619 (= e!4432723 (and tp!2121044 tp!2121043))))

(assert (= (and b!7410711 (is-ElementMatch!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411618))

(assert (= (and b!7410711 (is-Concat!28261 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411619))

(assert (= (and b!7410711 (is-Star!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411620))

(assert (= (and b!7410711 (is-Union!19416 (regOne!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411621))

(declare-fun b!7411622 () Bool)

(declare-fun e!4432724 () Bool)

(assert (=> b!7411622 (= e!4432724 tp_is_empty!49095)))

(declare-fun b!7411625 () Bool)

(declare-fun tp!2121046 () Bool)

(declare-fun tp!2121045 () Bool)

(assert (=> b!7411625 (= e!4432724 (and tp!2121046 tp!2121045))))

(declare-fun b!7411624 () Bool)

(declare-fun tp!2121047 () Bool)

(assert (=> b!7411624 (= e!4432724 tp!2121047)))

(assert (=> b!7410711 (= tp!2120391 e!4432724)))

(declare-fun b!7411623 () Bool)

(declare-fun tp!2121049 () Bool)

(declare-fun tp!2121048 () Bool)

(assert (=> b!7411623 (= e!4432724 (and tp!2121049 tp!2121048))))

(assert (= (and b!7410711 (is-ElementMatch!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411622))

(assert (= (and b!7410711 (is-Concat!28261 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411623))

(assert (= (and b!7410711 (is-Star!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411624))

(assert (= (and b!7410711 (is-Union!19416 (regTwo!39345 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411625))

(declare-fun b!7411626 () Bool)

(declare-fun e!4432725 () Bool)

(assert (=> b!7411626 (= e!4432725 tp_is_empty!49095)))

(declare-fun b!7411629 () Bool)

(declare-fun tp!2121051 () Bool)

(declare-fun tp!2121050 () Bool)

(assert (=> b!7411629 (= e!4432725 (and tp!2121051 tp!2121050))))

(declare-fun b!7411628 () Bool)

(declare-fun tp!2121052 () Bool)

(assert (=> b!7411628 (= e!4432725 tp!2121052)))

(assert (=> b!7410753 (= tp!2120447 e!4432725)))

(declare-fun b!7411627 () Bool)

(declare-fun tp!2121054 () Bool)

(declare-fun tp!2121053 () Bool)

(assert (=> b!7411627 (= e!4432725 (and tp!2121054 tp!2121053))))

(assert (= (and b!7410753 (is-ElementMatch!19416 (h!78358 (t!386593 (exprs!8856 setElem!56312))))) b!7411626))

(assert (= (and b!7410753 (is-Concat!28261 (h!78358 (t!386593 (exprs!8856 setElem!56312))))) b!7411627))

(assert (= (and b!7410753 (is-Star!19416 (h!78358 (t!386593 (exprs!8856 setElem!56312))))) b!7411628))

(assert (= (and b!7410753 (is-Union!19416 (h!78358 (t!386593 (exprs!8856 setElem!56312))))) b!7411629))

(declare-fun b!7411630 () Bool)

(declare-fun e!4432726 () Bool)

(declare-fun tp!2121055 () Bool)

(declare-fun tp!2121056 () Bool)

(assert (=> b!7411630 (= e!4432726 (and tp!2121055 tp!2121056))))

(assert (=> b!7410753 (= tp!2120448 e!4432726)))

(assert (= (and b!7410753 (is-Cons!71910 (t!386593 (t!386593 (exprs!8856 setElem!56312))))) b!7411630))

(declare-fun b!7411631 () Bool)

(declare-fun e!4432727 () Bool)

(assert (=> b!7411631 (= e!4432727 tp_is_empty!49095)))

(declare-fun b!7411634 () Bool)

(declare-fun tp!2121058 () Bool)

(declare-fun tp!2121057 () Bool)

(assert (=> b!7411634 (= e!4432727 (and tp!2121058 tp!2121057))))

(declare-fun b!7411633 () Bool)

(declare-fun tp!2121059 () Bool)

(assert (=> b!7411633 (= e!4432727 tp!2121059)))

(assert (=> b!7410702 (= tp!2120383 e!4432727)))

(declare-fun b!7411632 () Bool)

(declare-fun tp!2121061 () Bool)

(declare-fun tp!2121060 () Bool)

(assert (=> b!7411632 (= e!4432727 (and tp!2121061 tp!2121060))))

(assert (= (and b!7410702 (is-ElementMatch!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411631))

(assert (= (and b!7410702 (is-Concat!28261 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411632))

(assert (= (and b!7410702 (is-Star!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411633))

(assert (= (and b!7410702 (is-Union!19416 (reg!19745 (regOne!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411634))

(declare-fun b!7411636 () Bool)

(declare-fun e!4432729 () Bool)

(declare-fun tp!2121062 () Bool)

(assert (=> b!7411636 (= e!4432729 tp!2121062)))

(declare-fun tp!2121063 () Bool)

(declare-fun e!4432728 () Bool)

(declare-fun b!7411635 () Bool)

(assert (=> b!7411635 (= e!4432728 (and (inv!91902 (h!78359 (t!386594 (t!386594 res!2983178)))) e!4432729 tp!2121063))))

(assert (=> b!7410746 (= tp!2120439 e!4432728)))

(assert (= b!7411635 b!7411636))

(assert (= (and b!7410746 (is-Cons!71911 (t!386594 (t!386594 res!2983178)))) b!7411635))

(declare-fun m!8046650 () Bool)

(assert (=> b!7411635 m!8046650))

(declare-fun b!7411637 () Bool)

(declare-fun e!4432730 () Bool)

(assert (=> b!7411637 (= e!4432730 tp_is_empty!49095)))

(declare-fun b!7411640 () Bool)

(declare-fun tp!2121065 () Bool)

(declare-fun tp!2121064 () Bool)

(assert (=> b!7411640 (= e!4432730 (and tp!2121065 tp!2121064))))

(declare-fun b!7411639 () Bool)

(declare-fun tp!2121066 () Bool)

(assert (=> b!7411639 (= e!4432730 tp!2121066)))

(assert (=> b!7410709 (= tp!2120395 e!4432730)))

(declare-fun b!7411638 () Bool)

(declare-fun tp!2121068 () Bool)

(declare-fun tp!2121067 () Bool)

(assert (=> b!7411638 (= e!4432730 (and tp!2121068 tp!2121067))))

(assert (= (and b!7410709 (is-ElementMatch!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411637))

(assert (= (and b!7410709 (is-Concat!28261 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411638))

(assert (= (and b!7410709 (is-Star!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411639))

(assert (= (and b!7410709 (is-Union!19416 (regOne!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411640))

(declare-fun b!7411641 () Bool)

(declare-fun e!4432731 () Bool)

(assert (=> b!7411641 (= e!4432731 tp_is_empty!49095)))

(declare-fun b!7411644 () Bool)

(declare-fun tp!2121070 () Bool)

(declare-fun tp!2121069 () Bool)

(assert (=> b!7411644 (= e!4432731 (and tp!2121070 tp!2121069))))

(declare-fun b!7411643 () Bool)

(declare-fun tp!2121071 () Bool)

(assert (=> b!7411643 (= e!4432731 tp!2121071)))

(assert (=> b!7410709 (= tp!2120394 e!4432731)))

(declare-fun b!7411642 () Bool)

(declare-fun tp!2121073 () Bool)

(declare-fun tp!2121072 () Bool)

(assert (=> b!7411642 (= e!4432731 (and tp!2121073 tp!2121072))))

(assert (= (and b!7410709 (is-ElementMatch!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411641))

(assert (= (and b!7410709 (is-Concat!28261 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411642))

(assert (= (and b!7410709 (is-Star!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411643))

(assert (= (and b!7410709 (is-Union!19416 (regTwo!39344 (regOne!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411644))

(declare-fun b!7411645 () Bool)

(declare-fun e!4432732 () Bool)

(assert (=> b!7411645 (= e!4432732 tp_is_empty!49095)))

(declare-fun b!7411648 () Bool)

(declare-fun tp!2121075 () Bool)

(declare-fun tp!2121074 () Bool)

(assert (=> b!7411648 (= e!4432732 (and tp!2121075 tp!2121074))))

(declare-fun b!7411647 () Bool)

(declare-fun tp!2121076 () Bool)

(assert (=> b!7411647 (= e!4432732 tp!2121076)))

(assert (=> b!7410739 (= tp!2120432 e!4432732)))

(declare-fun b!7411646 () Bool)

(declare-fun tp!2121078 () Bool)

(declare-fun tp!2121077 () Bool)

(assert (=> b!7411646 (= e!4432732 (and tp!2121078 tp!2121077))))

(assert (= (and b!7410739 (is-ElementMatch!19416 (h!78358 (exprs!8856 setElem!56318)))) b!7411645))

(assert (= (and b!7410739 (is-Concat!28261 (h!78358 (exprs!8856 setElem!56318)))) b!7411646))

(assert (= (and b!7410739 (is-Star!19416 (h!78358 (exprs!8856 setElem!56318)))) b!7411647))

(assert (= (and b!7410739 (is-Union!19416 (h!78358 (exprs!8856 setElem!56318)))) b!7411648))

(declare-fun b!7411649 () Bool)

(declare-fun e!4432733 () Bool)

(declare-fun tp!2121079 () Bool)

(declare-fun tp!2121080 () Bool)

(assert (=> b!7411649 (= e!4432733 (and tp!2121079 tp!2121080))))

(assert (=> b!7410739 (= tp!2120433 e!4432733)))

(assert (= (and b!7410739 (is-Cons!71910 (t!386593 (exprs!8856 setElem!56318)))) b!7411649))

(declare-fun b!7411650 () Bool)

(declare-fun e!4432734 () Bool)

(assert (=> b!7411650 (= e!4432734 tp_is_empty!49095)))

(declare-fun b!7411653 () Bool)

(declare-fun tp!2121082 () Bool)

(declare-fun tp!2121081 () Bool)

(assert (=> b!7411653 (= e!4432734 (and tp!2121082 tp!2121081))))

(declare-fun b!7411652 () Bool)

(declare-fun tp!2121083 () Bool)

(assert (=> b!7411652 (= e!4432734 tp!2121083)))

(assert (=> b!7410717 (= tp!2120405 e!4432734)))

(declare-fun b!7411651 () Bool)

(declare-fun tp!2121085 () Bool)

(declare-fun tp!2121084 () Bool)

(assert (=> b!7411651 (= e!4432734 (and tp!2121085 tp!2121084))))

(assert (= (and b!7410717 (is-ElementMatch!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411650))

(assert (= (and b!7410717 (is-Concat!28261 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411651))

(assert (= (and b!7410717 (is-Star!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411652))

(assert (= (and b!7410717 (is-Union!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411653))

(declare-fun b!7411654 () Bool)

(declare-fun e!4432735 () Bool)

(assert (=> b!7411654 (= e!4432735 tp_is_empty!49095)))

(declare-fun b!7411657 () Bool)

(declare-fun tp!2121087 () Bool)

(declare-fun tp!2121086 () Bool)

(assert (=> b!7411657 (= e!4432735 (and tp!2121087 tp!2121086))))

(declare-fun b!7411656 () Bool)

(declare-fun tp!2121088 () Bool)

(assert (=> b!7411656 (= e!4432735 tp!2121088)))

(assert (=> b!7410717 (= tp!2120404 e!4432735)))

(declare-fun b!7411655 () Bool)

(declare-fun tp!2121090 () Bool)

(declare-fun tp!2121089 () Bool)

(assert (=> b!7411655 (= e!4432735 (and tp!2121090 tp!2121089))))

(assert (= (and b!7410717 (is-ElementMatch!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411654))

(assert (= (and b!7410717 (is-Concat!28261 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411655))

(assert (= (and b!7410717 (is-Star!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411656))

(assert (= (and b!7410717 (is-Union!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 c!10532)))))) b!7411657))

(declare-fun b!7411658 () Bool)

(declare-fun e!4432736 () Bool)

(assert (=> b!7411658 (= e!4432736 tp_is_empty!49095)))

(declare-fun b!7411661 () Bool)

(declare-fun tp!2121092 () Bool)

(declare-fun tp!2121091 () Bool)

(assert (=> b!7411661 (= e!4432736 (and tp!2121092 tp!2121091))))

(declare-fun b!7411660 () Bool)

(declare-fun tp!2121093 () Bool)

(assert (=> b!7411660 (= e!4432736 tp!2121093)))

(assert (=> b!7410730 (= tp!2120418 e!4432736)))

(declare-fun b!7411659 () Bool)

(declare-fun tp!2121095 () Bool)

(declare-fun tp!2121094 () Bool)

(assert (=> b!7411659 (= e!4432736 (and tp!2121095 tp!2121094))))

(assert (= (and b!7410730 (is-ElementMatch!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411658))

(assert (= (and b!7410730 (is-Concat!28261 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411659))

(assert (= (and b!7410730 (is-Star!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411660))

(assert (= (and b!7410730 (is-Union!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411661))

(declare-fun b!7411662 () Bool)

(declare-fun e!4432737 () Bool)

(assert (=> b!7411662 (= e!4432737 tp_is_empty!49095)))

(declare-fun b!7411665 () Bool)

(declare-fun tp!2121097 () Bool)

(declare-fun tp!2121096 () Bool)

(assert (=> b!7411665 (= e!4432737 (and tp!2121097 tp!2121096))))

(declare-fun b!7411664 () Bool)

(declare-fun tp!2121098 () Bool)

(assert (=> b!7411664 (= e!4432737 tp!2121098)))

(assert (=> b!7410730 (= tp!2120417 e!4432737)))

(declare-fun b!7411663 () Bool)

(declare-fun tp!2121100 () Bool)

(declare-fun tp!2121099 () Bool)

(assert (=> b!7411663 (= e!4432737 (and tp!2121100 tp!2121099))))

(assert (= (and b!7410730 (is-ElementMatch!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411662))

(assert (= (and b!7410730 (is-Concat!28261 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411663))

(assert (= (and b!7410730 (is-Star!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411664))

(assert (= (and b!7410730 (is-Union!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411665))

(declare-fun b!7411666 () Bool)

(declare-fun e!4432738 () Bool)

(assert (=> b!7411666 (= e!4432738 tp_is_empty!49095)))

(declare-fun b!7411669 () Bool)

(declare-fun tp!2121102 () Bool)

(declare-fun tp!2121101 () Bool)

(assert (=> b!7411669 (= e!4432738 (and tp!2121102 tp!2121101))))

(declare-fun b!7411668 () Bool)

(declare-fun tp!2121103 () Bool)

(assert (=> b!7411668 (= e!4432738 tp!2121103)))

(assert (=> b!7410683 (= tp!2120357 e!4432738)))

(declare-fun b!7411667 () Bool)

(declare-fun tp!2121105 () Bool)

(declare-fun tp!2121104 () Bool)

(assert (=> b!7411667 (= e!4432738 (and tp!2121105 tp!2121104))))

(assert (= (and b!7410683 (is-ElementMatch!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411666))

(assert (= (and b!7410683 (is-Concat!28261 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411667))

(assert (= (and b!7410683 (is-Star!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411668))

(assert (= (and b!7410683 (is-Union!19416 (regOne!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411669))

(declare-fun b!7411670 () Bool)

(declare-fun e!4432739 () Bool)

(assert (=> b!7411670 (= e!4432739 tp_is_empty!49095)))

(declare-fun b!7411673 () Bool)

(declare-fun tp!2121107 () Bool)

(declare-fun tp!2121106 () Bool)

(assert (=> b!7411673 (= e!4432739 (and tp!2121107 tp!2121106))))

(declare-fun b!7411672 () Bool)

(declare-fun tp!2121108 () Bool)

(assert (=> b!7411672 (= e!4432739 tp!2121108)))

(assert (=> b!7410683 (= tp!2120356 e!4432739)))

(declare-fun b!7411671 () Bool)

(declare-fun tp!2121110 () Bool)

(declare-fun tp!2121109 () Bool)

(assert (=> b!7411671 (= e!4432739 (and tp!2121110 tp!2121109))))

(assert (= (and b!7410683 (is-ElementMatch!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411670))

(assert (= (and b!7410683 (is-Concat!28261 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411671))

(assert (= (and b!7410683 (is-Star!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411672))

(assert (= (and b!7410683 (is-Union!19416 (regTwo!39345 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411673))

(declare-fun b!7411674 () Bool)

(declare-fun e!4432740 () Bool)

(assert (=> b!7411674 (= e!4432740 tp_is_empty!49095)))

(declare-fun b!7411677 () Bool)

(declare-fun tp!2121112 () Bool)

(declare-fun tp!2121111 () Bool)

(assert (=> b!7411677 (= e!4432740 (and tp!2121112 tp!2121111))))

(declare-fun b!7411676 () Bool)

(declare-fun tp!2121113 () Bool)

(assert (=> b!7411676 (= e!4432740 tp!2121113)))

(assert (=> b!7410728 (= tp!2120421 e!4432740)))

(declare-fun b!7411675 () Bool)

(declare-fun tp!2121115 () Bool)

(declare-fun tp!2121114 () Bool)

(assert (=> b!7411675 (= e!4432740 (and tp!2121115 tp!2121114))))

(assert (= (and b!7410728 (is-ElementMatch!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411674))

(assert (= (and b!7410728 (is-Concat!28261 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411675))

(assert (= (and b!7410728 (is-Star!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411676))

(assert (= (and b!7410728 (is-Union!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411677))

(declare-fun b!7411678 () Bool)

(declare-fun e!4432741 () Bool)

(assert (=> b!7411678 (= e!4432741 tp_is_empty!49095)))

(declare-fun b!7411681 () Bool)

(declare-fun tp!2121117 () Bool)

(declare-fun tp!2121116 () Bool)

(assert (=> b!7411681 (= e!4432741 (and tp!2121117 tp!2121116))))

(declare-fun b!7411680 () Bool)

(declare-fun tp!2121118 () Bool)

(assert (=> b!7411680 (= e!4432741 tp!2121118)))

(assert (=> b!7410728 (= tp!2120420 e!4432741)))

(declare-fun b!7411679 () Bool)

(declare-fun tp!2121120 () Bool)

(declare-fun tp!2121119 () Bool)

(assert (=> b!7411679 (= e!4432741 (and tp!2121120 tp!2121119))))

(assert (= (and b!7410728 (is-ElementMatch!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411678))

(assert (= (and b!7410728 (is-Concat!28261 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411679))

(assert (= (and b!7410728 (is-Star!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411680))

(assert (= (and b!7410728 (is-Union!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 setElem!56306)))))) b!7411681))

(declare-fun b!7411682 () Bool)

(declare-fun e!4432742 () Bool)

(assert (=> b!7411682 (= e!4432742 tp_is_empty!49095)))

(declare-fun b!7411685 () Bool)

(declare-fun tp!2121122 () Bool)

(declare-fun tp!2121121 () Bool)

(assert (=> b!7411685 (= e!4432742 (and tp!2121122 tp!2121121))))

(declare-fun b!7411684 () Bool)

(declare-fun tp!2121123 () Bool)

(assert (=> b!7411684 (= e!4432742 tp!2121123)))

(assert (=> b!7410751 (= tp!2120444 e!4432742)))

(declare-fun b!7411683 () Bool)

(declare-fun tp!2121125 () Bool)

(declare-fun tp!2121124 () Bool)

(assert (=> b!7411683 (= e!4432742 (and tp!2121125 tp!2121124))))

(assert (= (and b!7410751 (is-ElementMatch!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56312))))) b!7411682))

(assert (= (and b!7410751 (is-Concat!28261 (reg!19745 (h!78358 (exprs!8856 setElem!56312))))) b!7411683))

(assert (= (and b!7410751 (is-Star!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56312))))) b!7411684))

(assert (= (and b!7410751 (is-Union!19416 (reg!19745 (h!78358 (exprs!8856 setElem!56312))))) b!7411685))

(declare-fun b!7411686 () Bool)

(declare-fun e!4432743 () Bool)

(assert (=> b!7411686 (= e!4432743 tp_is_empty!49095)))

(declare-fun b!7411689 () Bool)

(declare-fun tp!2121127 () Bool)

(declare-fun tp!2121126 () Bool)

(assert (=> b!7411689 (= e!4432743 (and tp!2121127 tp!2121126))))

(declare-fun b!7411688 () Bool)

(declare-fun tp!2121128 () Bool)

(assert (=> b!7411688 (= e!4432743 tp!2121128)))

(assert (=> b!7410737 (= tp!2120429 e!4432743)))

(declare-fun b!7411687 () Bool)

(declare-fun tp!2121130 () Bool)

(declare-fun tp!2121129 () Bool)

(assert (=> b!7411687 (= e!4432743 (and tp!2121130 tp!2121129))))

(assert (= (and b!7410737 (is-ElementMatch!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411686))

(assert (= (and b!7410737 (is-Concat!28261 (reg!19745 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411687))

(assert (= (and b!7410737 (is-Star!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411688))

(assert (= (and b!7410737 (is-Union!19416 (reg!19745 (reg!19745 (h!78358 (exprs!8856 setElem!56306)))))) b!7411689))

(declare-fun b!7411690 () Bool)

(declare-fun e!4432744 () Bool)

(assert (=> b!7411690 (= e!4432744 tp_is_empty!49095)))

(declare-fun b!7411693 () Bool)

(declare-fun tp!2121132 () Bool)

(declare-fun tp!2121131 () Bool)

(assert (=> b!7411693 (= e!4432744 (and tp!2121132 tp!2121131))))

(declare-fun b!7411692 () Bool)

(declare-fun tp!2121133 () Bool)

(assert (=> b!7411692 (= e!4432744 tp!2121133)))

(assert (=> b!7410699 (= tp!2120377 e!4432744)))

(declare-fun b!7411691 () Bool)

(declare-fun tp!2121135 () Bool)

(declare-fun tp!2121134 () Bool)

(assert (=> b!7411691 (= e!4432744 (and tp!2121135 tp!2121134))))

(assert (= (and b!7410699 (is-ElementMatch!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411690))

(assert (= (and b!7410699 (is-Concat!28261 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411691))

(assert (= (and b!7410699 (is-Star!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411692))

(assert (= (and b!7410699 (is-Union!19416 (regOne!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411693))

(declare-fun b!7411694 () Bool)

(declare-fun e!4432745 () Bool)

(assert (=> b!7411694 (= e!4432745 tp_is_empty!49095)))

(declare-fun b!7411697 () Bool)

(declare-fun tp!2121137 () Bool)

(declare-fun tp!2121136 () Bool)

(assert (=> b!7411697 (= e!4432745 (and tp!2121137 tp!2121136))))

(declare-fun b!7411696 () Bool)

(declare-fun tp!2121138 () Bool)

(assert (=> b!7411696 (= e!4432745 tp!2121138)))

(assert (=> b!7410699 (= tp!2120376 e!4432745)))

(declare-fun b!7411695 () Bool)

(declare-fun tp!2121140 () Bool)

(declare-fun tp!2121139 () Bool)

(assert (=> b!7411695 (= e!4432745 (and tp!2121140 tp!2121139))))

(assert (= (and b!7410699 (is-ElementMatch!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411694))

(assert (= (and b!7410699 (is-Concat!28261 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411695))

(assert (= (and b!7410699 (is-Star!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411696))

(assert (= (and b!7410699 (is-Union!19416 (regTwo!39345 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411697))

(declare-fun b!7411698 () Bool)

(declare-fun e!4432746 () Bool)

(assert (=> b!7411698 (= e!4432746 tp_is_empty!49095)))

(declare-fun b!7411701 () Bool)

(declare-fun tp!2121142 () Bool)

(declare-fun tp!2121141 () Bool)

(assert (=> b!7411701 (= e!4432746 (and tp!2121142 tp!2121141))))

(declare-fun b!7411700 () Bool)

(declare-fun tp!2121143 () Bool)

(assert (=> b!7411700 (= e!4432746 tp!2121143)))

(assert (=> b!7410690 (= tp!2120368 e!4432746)))

(declare-fun b!7411699 () Bool)

(declare-fun tp!2121145 () Bool)

(declare-fun tp!2121144 () Bool)

(assert (=> b!7411699 (= e!4432746 (and tp!2121145 tp!2121144))))

(assert (= (and b!7410690 (is-ElementMatch!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411698))

(assert (= (and b!7410690 (is-Concat!28261 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411699))

(assert (= (and b!7410690 (is-Star!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411700))

(assert (= (and b!7410690 (is-Union!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 empty!3611)))))) b!7411701))

(declare-fun b!7411702 () Bool)

(declare-fun e!4432747 () Bool)

(assert (=> b!7411702 (= e!4432747 tp_is_empty!49095)))

(declare-fun b!7411705 () Bool)

(declare-fun tp!2121147 () Bool)

(declare-fun tp!2121146 () Bool)

(assert (=> b!7411705 (= e!4432747 (and tp!2121147 tp!2121146))))

(declare-fun b!7411704 () Bool)

(declare-fun tp!2121148 () Bool)

(assert (=> b!7411704 (= e!4432747 tp!2121148)))

(assert (=> b!7410681 (= tp!2120360 e!4432747)))

(declare-fun b!7411703 () Bool)

(declare-fun tp!2121150 () Bool)

(declare-fun tp!2121149 () Bool)

(assert (=> b!7411703 (= e!4432747 (and tp!2121150 tp!2121149))))

(assert (= (and b!7410681 (is-ElementMatch!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411702))

(assert (= (and b!7410681 (is-Concat!28261 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411703))

(assert (= (and b!7410681 (is-Star!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411704))

(assert (= (and b!7410681 (is-Union!19416 (regOne!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411705))

(declare-fun b!7411706 () Bool)

(declare-fun e!4432748 () Bool)

(assert (=> b!7411706 (= e!4432748 tp_is_empty!49095)))

(declare-fun b!7411709 () Bool)

(declare-fun tp!2121152 () Bool)

(declare-fun tp!2121151 () Bool)

(assert (=> b!7411709 (= e!4432748 (and tp!2121152 tp!2121151))))

(declare-fun b!7411708 () Bool)

(declare-fun tp!2121153 () Bool)

(assert (=> b!7411708 (= e!4432748 tp!2121153)))

(assert (=> b!7410681 (= tp!2120359 e!4432748)))

(declare-fun b!7411707 () Bool)

(declare-fun tp!2121155 () Bool)

(declare-fun tp!2121154 () Bool)

(assert (=> b!7411707 (= e!4432748 (and tp!2121155 tp!2121154))))

(assert (= (and b!7410681 (is-ElementMatch!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411706))

(assert (= (and b!7410681 (is-Concat!28261 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411707))

(assert (= (and b!7410681 (is-Star!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411708))

(assert (= (and b!7410681 (is-Union!19416 (regTwo!39344 (regOne!39345 (h!78358 (exprs!8856 empty!3611)))))) b!7411709))

(declare-fun b!7411710 () Bool)

(declare-fun e!4432749 () Bool)

(declare-fun tp!2121156 () Bool)

(declare-fun tp!2121157 () Bool)

(assert (=> b!7411710 (= e!4432749 (and tp!2121156 tp!2121157))))

(assert (=> b!7410763 (= tp!2120460 e!4432749)))

(assert (= (and b!7410763 (is-Cons!71910 (exprs!8856 setElem!56322))) b!7411710))

(declare-fun b!7411711 () Bool)

(declare-fun e!4432750 () Bool)

(assert (=> b!7411711 (= e!4432750 tp_is_empty!49095)))

(declare-fun b!7411714 () Bool)

(declare-fun tp!2121159 () Bool)

(declare-fun tp!2121158 () Bool)

(assert (=> b!7411714 (= e!4432750 (and tp!2121159 tp!2121158))))

(declare-fun b!7411713 () Bool)

(declare-fun tp!2121160 () Bool)

(assert (=> b!7411713 (= e!4432750 tp!2121160)))

(assert (=> b!7410676 (= tp!2120349 e!4432750)))

(declare-fun b!7411712 () Bool)

(declare-fun tp!2121162 () Bool)

(declare-fun tp!2121161 () Bool)

(assert (=> b!7411712 (= e!4432750 (and tp!2121162 tp!2121161))))

(assert (= (and b!7410676 (is-ElementMatch!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411711))

(assert (= (and b!7410676 (is-Concat!28261 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411712))

(assert (= (and b!7410676 (is-Star!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411713))

(assert (= (and b!7410676 (is-Union!19416 (reg!19745 (h!78358 (t!386593 (exprs!8856 c!10532)))))) b!7411714))

(declare-fun condSetEmpty!56332 () Bool)

(assert (=> setNonEmpty!56321 (= condSetEmpty!56332 (= setRest!56321 (as set.empty (Set Context!16712))))))

(declare-fun setRes!56332 () Bool)

(assert (=> setNonEmpty!56321 (= tp!2120409 setRes!56332)))

(declare-fun setIsEmpty!56332 () Bool)

(assert (=> setIsEmpty!56332 setRes!56332))

(declare-fun e!4432751 () Bool)

(declare-fun tp!2121164 () Bool)

(declare-fun setNonEmpty!56332 () Bool)

(declare-fun setElem!56332 () Context!16712)

(assert (=> setNonEmpty!56332 (= setRes!56332 (and tp!2121164 (inv!91902 setElem!56332) e!4432751))))

(declare-fun setRest!56332 () (Set Context!16712))

(assert (=> setNonEmpty!56332 (= setRest!56321 (set.union (set.insert setElem!56332 (as set.empty (Set Context!16712))) setRest!56332))))

(declare-fun b!7411715 () Bool)

(declare-fun tp!2121163 () Bool)

(assert (=> b!7411715 (= e!4432751 tp!2121163)))

(assert (= (and setNonEmpty!56321 condSetEmpty!56332) setIsEmpty!56332))

(assert (= (and setNonEmpty!56321 (not condSetEmpty!56332)) setNonEmpty!56332))

(assert (= setNonEmpty!56332 b!7411715))

(declare-fun m!8046652 () Bool)

(assert (=> setNonEmpty!56332 m!8046652))

(declare-fun b!7411716 () Bool)

(declare-fun e!4432752 () Bool)

(assert (=> b!7411716 (= e!4432752 tp_is_empty!49095)))

(declare-fun b!7411719 () Bool)

(declare-fun tp!2121166 () Bool)

(declare-fun tp!2121165 () Bool)

(assert (=> b!7411719 (= e!4432752 (and tp!2121166 tp!2121165))))

(declare-fun b!7411718 () Bool)

(declare-fun tp!2121167 () Bool)

(assert (=> b!7411718 (= e!4432752 tp!2121167)))

(assert (=> b!7410757 (= tp!2120452 e!4432752)))

(declare-fun b!7411717 () Bool)

(declare-fun tp!2121169 () Bool)

(declare-fun tp!2121168 () Bool)

(assert (=> b!7411717 (= e!4432752 (and tp!2121169 tp!2121168))))

(assert (= (and b!7410757 (is-ElementMatch!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411716))

(assert (= (and b!7410757 (is-Concat!28261 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411717))

(assert (= (and b!7410757 (is-Star!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411718))

(assert (= (and b!7410757 (is-Union!19416 (reg!19745 (regOne!39344 (h!78358 (exprs!8856 setElem!56306)))))) b!7411719))

(declare-fun b!7411720 () Bool)

(declare-fun e!4432753 () Bool)

(assert (=> b!7411720 (= e!4432753 tp_is_empty!49095)))

(declare-fun b!7411723 () Bool)

(declare-fun tp!2121171 () Bool)

(declare-fun tp!2121170 () Bool)

(assert (=> b!7411723 (= e!4432753 (and tp!2121171 tp!2121170))))

(declare-fun b!7411722 () Bool)

(declare-fun tp!2121172 () Bool)

(assert (=> b!7411722 (= e!4432753 tp!2121172)))

(assert (=> b!7410715 (= tp!2120397 e!4432753)))

(declare-fun b!7411721 () Bool)

(declare-fun tp!2121174 () Bool)

(declare-fun tp!2121173 () Bool)

(assert (=> b!7411721 (= e!4432753 (and tp!2121174 tp!2121173))))

(assert (= (and b!7410715 (is-ElementMatch!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411720))

(assert (= (and b!7410715 (is-Concat!28261 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411721))

(assert (= (and b!7410715 (is-Star!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411722))

(assert (= (and b!7410715 (is-Union!19416 (regOne!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411723))

(declare-fun b!7411724 () Bool)

(declare-fun e!4432754 () Bool)

(assert (=> b!7411724 (= e!4432754 tp_is_empty!49095)))

(declare-fun b!7411727 () Bool)

(declare-fun tp!2121176 () Bool)

(declare-fun tp!2121175 () Bool)

(assert (=> b!7411727 (= e!4432754 (and tp!2121176 tp!2121175))))

(declare-fun b!7411726 () Bool)

(declare-fun tp!2121177 () Bool)

(assert (=> b!7411726 (= e!4432754 tp!2121177)))

(assert (=> b!7410715 (= tp!2120396 e!4432754)))

(declare-fun b!7411725 () Bool)

(declare-fun tp!2121179 () Bool)

(declare-fun tp!2121178 () Bool)

(assert (=> b!7411725 (= e!4432754 (and tp!2121179 tp!2121178))))

(assert (= (and b!7410715 (is-ElementMatch!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411724))

(assert (= (and b!7410715 (is-Concat!28261 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411725))

(assert (= (and b!7410715 (is-Star!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411726))

(assert (= (and b!7410715 (is-Union!19416 (regTwo!39345 (regTwo!39344 (h!78358 (exprs!8856 c!10532)))))) b!7411727))

(declare-fun b!7411728 () Bool)

(declare-fun e!4432755 () Bool)

(assert (=> b!7411728 (= e!4432755 tp_is_empty!49095)))

(declare-fun b!7411731 () Bool)

(declare-fun tp!2121181 () Bool)

(declare-fun tp!2121180 () Bool)

(assert (=> b!7411731 (= e!4432755 (and tp!2121181 tp!2121180))))

(declare-fun b!7411730 () Bool)

(declare-fun tp!2121182 () Bool)

(assert (=> b!7411730 (= e!4432755 tp!2121182)))

(assert (=> b!7410706 (= tp!2120388 e!4432755)))

(declare-fun b!7411729 () Bool)

(declare-fun tp!2121184 () Bool)

(declare-fun tp!2121183 () Bool)

(assert (=> b!7411729 (= e!4432755 (and tp!2121184 tp!2121183))))

(assert (= (and b!7410706 (is-ElementMatch!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411728))

(assert (= (and b!7410706 (is-Concat!28261 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411729))

(assert (= (and b!7410706 (is-Star!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411730))

(assert (= (and b!7410706 (is-Union!19416 (reg!19745 (regTwo!39345 (h!78358 (exprs!8856 c!10532)))))) b!7411731))

(declare-fun b!7411732 () Bool)

(declare-fun e!4432756 () Bool)

(assert (=> b!7411732 (= e!4432756 tp_is_empty!49095)))

(declare-fun b!7411735 () Bool)

(declare-fun tp!2121186 () Bool)

(declare-fun tp!2121185 () Bool)

(assert (=> b!7411735 (= e!4432756 (and tp!2121186 tp!2121185))))

(declare-fun b!7411734 () Bool)

(declare-fun tp!2121187 () Bool)

(assert (=> b!7411734 (= e!4432756 tp!2121187)))

(assert (=> b!7410697 (= tp!2120380 e!4432756)))

(declare-fun b!7411733 () Bool)

(declare-fun tp!2121189 () Bool)

(declare-fun tp!2121188 () Bool)

(assert (=> b!7411733 (= e!4432756 (and tp!2121189 tp!2121188))))

(assert (= (and b!7410697 (is-ElementMatch!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411732))

(assert (= (and b!7410697 (is-Concat!28261 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411733))

(assert (= (and b!7410697 (is-Star!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411734))

(assert (= (and b!7410697 (is-Union!19416 (regOne!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411735))

(declare-fun b!7411736 () Bool)

(declare-fun e!4432757 () Bool)

(assert (=> b!7411736 (= e!4432757 tp_is_empty!49095)))

(declare-fun b!7411739 () Bool)

(declare-fun tp!2121191 () Bool)

(declare-fun tp!2121190 () Bool)

(assert (=> b!7411739 (= e!4432757 (and tp!2121191 tp!2121190))))

(declare-fun b!7411738 () Bool)

(declare-fun tp!2121192 () Bool)

(assert (=> b!7411738 (= e!4432757 tp!2121192)))

(assert (=> b!7410697 (= tp!2120379 e!4432757)))

(declare-fun b!7411737 () Bool)

(declare-fun tp!2121194 () Bool)

(declare-fun tp!2121193 () Bool)

(assert (=> b!7411737 (= e!4432757 (and tp!2121194 tp!2121193))))

(assert (= (and b!7410697 (is-ElementMatch!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411736))

(assert (= (and b!7410697 (is-Concat!28261 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411737))

(assert (= (and b!7410697 (is-Star!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411738))

(assert (= (and b!7410697 (is-Union!19416 (regTwo!39344 (reg!19745 (h!78358 (exprs!8856 empty!3611)))))) b!7411739))

(declare-fun b_lambda!286689 () Bool)

(assert (= b_lambda!286671 (or d!2292074 b_lambda!286689)))

(declare-fun bs!1924809 () Bool)

(declare-fun d!2292314 () Bool)

(assert (= bs!1924809 (and d!2292314 d!2292074)))

(assert (=> bs!1924809 (= (dynLambda!29688 lambda!460033 (h!78358 (exprs!8856 (h!78359 res!2983178)))) (validRegex!9965 (h!78358 (exprs!8856 (h!78359 res!2983178)))))))

(declare-fun m!8046654 () Bool)

(assert (=> bs!1924809 m!8046654))

(assert (=> b!7411147 d!2292314))

(declare-fun b_lambda!286691 () Bool)

(assert (= b_lambda!286669 (or d!2292030 b_lambda!286691)))

(declare-fun bs!1924810 () Bool)

(declare-fun d!2292316 () Bool)

(assert (= bs!1924810 (and d!2292316 d!2292030)))

(assert (=> bs!1924810 (= (dynLambda!29688 lambda!460028 (h!78358 (exprs!8856 _$3!583))) (validRegex!9965 (h!78358 (exprs!8856 _$3!583))))))

(declare-fun m!8046656 () Bool)

(assert (=> bs!1924810 m!8046656))

(assert (=> b!7411105 d!2292316))

(declare-fun b_lambda!286693 () Bool)

(assert (= b_lambda!286687 (or d!2291908 b_lambda!286693)))

(declare-fun bs!1924811 () Bool)

(declare-fun d!2292318 () Bool)

(assert (= bs!1924811 (and d!2292318 d!2291908)))

(assert (=> bs!1924811 (= (dynLambda!29688 lambda!460000 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306))))) (validRegex!9965 (h!78358 (t!386593 (t!386593 (exprs!8856 setElem!56306))))))))

(declare-fun m!8046658 () Bool)

(assert (=> bs!1924811 m!8046658))

(assert (=> b!7411303 d!2292318))

(declare-fun b_lambda!286695 () Bool)

(assert (= b_lambda!286677 (or d!2292056 b_lambda!286695)))

(declare-fun bs!1924812 () Bool)

(declare-fun d!2292320 () Bool)

(assert (= bs!1924812 (and d!2292320 d!2292056)))

(assert (=> bs!1924812 (= (dynLambda!29690 lambda!460031 (h!78359 (toList!11767 z!3451))) (not (dynLambda!29690 lambda!459996 (h!78359 (toList!11767 z!3451)))))))

(declare-fun b_lambda!286709 () Bool)

(assert (=> (not b_lambda!286709) (not bs!1924812)))

(declare-fun m!8046660 () Bool)

(assert (=> bs!1924812 m!8046660))

(assert (=> b!7411206 d!2292320))

(declare-fun b_lambda!286697 () Bool)

(assert (= b_lambda!286685 (or d!2292080 b_lambda!286697)))

(declare-fun bs!1924813 () Bool)

(declare-fun d!2292322 () Bool)

(assert (= bs!1924813 (and d!2292322 d!2292080)))

(assert (=> bs!1924813 (= (dynLambda!29688 lambda!460034 (h!78358 (exprs!8856 setElem!56318))) (validRegex!9965 (h!78358 (exprs!8856 setElem!56318))))))

(declare-fun m!8046662 () Bool)

(assert (=> bs!1924813 m!8046662))

(assert (=> b!7411278 d!2292322))

(declare-fun b_lambda!286699 () Bool)

(assert (= b_lambda!286681 (or d!2292036 b_lambda!286699)))

(declare-fun bs!1924814 () Bool)

(declare-fun d!2292324 () Bool)

(assert (= bs!1924814 (and d!2292324 d!2292036)))

(assert (=> bs!1924814 (= (dynLambda!29688 lambda!460030 (h!78358 (exprs!8856 setElem!56319))) (validRegex!9965 (h!78358 (exprs!8856 setElem!56319))))))

(declare-fun m!8046664 () Bool)

(assert (=> bs!1924814 m!8046664))

(assert (=> b!7411216 d!2292324))

(declare-fun b_lambda!286701 () Bool)

(assert (= b_lambda!286673 (or d!2291966 b_lambda!286701)))

(declare-fun bs!1924815 () Bool)

(declare-fun d!2292326 () Bool)

(assert (= bs!1924815 (and d!2292326 d!2291966)))

(assert (=> bs!1924815 (= (dynLambda!29690 lambda!460018 (h!78359 (t!386594 (toList!11767 z!3451)))) (not (dynLambda!29690 lambda!459987 (h!78359 (t!386594 (toList!11767 z!3451))))))))

(declare-fun b_lambda!286711 () Bool)

(assert (=> (not b_lambda!286711) (not bs!1924815)))

(declare-fun m!8046666 () Bool)

(assert (=> bs!1924815 m!8046666))

(assert (=> b!7411171 d!2292326))

(declare-fun b_lambda!286703 () Bool)

(assert (= b_lambda!286683 (or d!2291992 b_lambda!286703)))

(declare-fun bs!1924816 () Bool)

(declare-fun d!2292328 () Bool)

(assert (= bs!1924816 (and d!2292328 d!2291992)))

(assert (=> bs!1924816 (= (dynLambda!29688 lambda!460022 (h!78358 (t!386593 (exprs!8856 setElem!56312)))) (validRegex!9965 (h!78358 (t!386593 (exprs!8856 setElem!56312)))))))

(declare-fun m!8046668 () Bool)

(assert (=> bs!1924816 m!8046668))

(assert (=> b!7411267 d!2292328))

(declare-fun b_lambda!286705 () Bool)

(assert (= b_lambda!286675 (or d!2291910 b_lambda!286705)))

(declare-fun bs!1924817 () Bool)

(declare-fun d!2292330 () Bool)

(assert (= bs!1924817 (and d!2292330 d!2291910)))

(assert (=> bs!1924817 (= (dynLambda!29688 lambda!460001 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532))))) (validRegex!9965 (h!78358 (t!386593 (t!386593 (exprs!8856 c!10532))))))))

(declare-fun m!8046670 () Bool)

(assert (=> bs!1924817 m!8046670))

(assert (=> b!7411204 d!2292330))

(declare-fun b_lambda!286707 () Bool)

(assert (= b_lambda!286679 (or d!2291906 b_lambda!286707)))

(declare-fun bs!1924818 () Bool)

(declare-fun d!2292332 () Bool)

(assert (= bs!1924818 (and d!2292332 d!2291906)))

(assert (=> bs!1924818 (= (dynLambda!29688 lambda!459999 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611))))) (validRegex!9965 (h!78358 (t!386593 (t!386593 (exprs!8856 empty!3611))))))))

(declare-fun m!8046672 () Bool)

(assert (=> bs!1924818 m!8046672))

(assert (=> b!7411214 d!2292332))

(push 1)

(assert (not d!2292206))

(assert (not b!7411669))

(assert (not b!7411512))

(assert (not d!2292230))

(assert (not b!7411542))

(assert (not b!7411554))

(assert (not d!2292236))

(assert (not b!7411715))

(assert (not b!7411557))

(assert (not b!7411480))

(assert (not b!7411526))

(assert (not b!7411365))

(assert (not d!2292254))

(assert (not b!7411145))

(assert (not b!7411121))

(assert (not b!7411486))

(assert (not b!7411527))

(assert (not b!7411366))

(assert (not bm!682368))

(assert (not b!7411488))

(assert (not b!7411439))

(assert (not b!7411122))

(assert (not b!7411380))

(assert (not b!7411463))

(assert (not b!7411388))

(assert (not b!7411642))

(assert (not bs!1924816))

(assert (not b!7411615))

(assert (not bm!682426))

(assert (not b!7411420))

(assert (not b!7411261))

(assert (not setNonEmpty!56332))

(assert (not b!7411424))

(assert (not b!7411349))

(assert (not b!7411599))

(assert (not d!2292284))

(assert (not b!7411341))

(assert (not b!7411387))

(assert (not b!7411687))

(assert (not b!7411369))

(assert (not b!7411546))

(assert (not b!7411538))

(assert (not b!7411475))

(assert (not b!7411313))

(assert (not b!7411508))

(assert (not b!7411473))

(assert tp_is_empty!49095)

(assert (not b!7411567))

(assert (not b!7411685))

(assert (not b!7411304))

(assert (not b!7411676))

(assert (not b!7411595))

(assert (not b!7411459))

(assert (not b!7411629))

(assert (not b!7411327))

(assert (not b!7411363))

(assert (not b!7411651))

(assert (not b!7411445))

(assert (not b!7411207))

(assert (not bm!682411))

(assert (not b!7411609))

(assert (not b!7411198))

(assert (not b!7411619))

(assert (not b!7411490))

(assert (not b!7411633))

(assert (not b!7411476))

(assert (not b!7411421))

(assert (not b!7411533))

(assert (not b!7411635))

(assert (not b!7411496))

(assert (not b!7411403))

(assert (not b!7411332))

(assert (not b!7411644))

(assert (not b!7411534))

(assert (not b!7411699))

(assert (not b!7411659))

(assert (not b!7411371))

(assert (not b!7411464))

(assert (not b!7411616))

(assert (not b!7411705))

(assert (not b!7411284))

(assert (not b!7411322))

(assert (not b_lambda!286667))

(assert (not b!7411544))

(assert (not b!7411639))

(assert (not b!7411514))

(assert (not d!2292270))

(assert (not b!7411727))

(assert (not setNonEmpty!56330))

(assert (not b!7411516))

(assert (not b!7411707))

(assert (not b!7411683))

(assert (not b!7411290))

(assert (not b!7411331))

(assert (not bm!682372))

(assert (not b!7411213))

(assert (not bm!682397))

(assert (not b!7411580))

(assert (not b!7411717))

(assert (not b!7411423))

(assert (not b!7411323))

(assert (not b!7411235))

(assert (not d!2292296))

(assert (not bm!682387))

(assert (not b!7411719))

(assert (not b!7411680))

(assert (not b!7411467))

(assert (not bm!682388))

(assert (not b!7411419))

(assert (not b!7411505))

(assert (not bm!682432))

(assert (not b!7411612))

(assert (not b!7411603))

(assert (not b!7411697))

(assert (not bs!1924813))

(assert (not b!7411314))

(assert (not b!7411305))

(assert (not d!2292208))

(assert (not b!7411139))

(assert (not b!7411436))

(assert (not b!7411588))

(assert (not b!7411335))

(assert (not b!7411584))

(assert (not b!7411311))

(assert (not b!7411339))

(assert (not bm!682430))

(assert (not b!7411726))

(assert (not b!7411348))

(assert (not b!7411703))

(assert (not b!7411440))

(assert (not b!7411221))

(assert (not b!7411574))

(assert (not b!7411664))

(assert (not b!7411494))

(assert (not b!7411400))

(assert (not b!7411471))

(assert (not bm!682371))

(assert (not bm!682377))

(assert (not b!7411279))

(assert (not b!7411316))

(assert (not bm!682439))

(assert (not b!7411623))

(assert (not b_lambda!286631))

(assert (not d!2292232))

(assert (not b!7411172))

(assert (not b!7411587))

(assert (not b!7411376))

(assert (not setNonEmpty!56331))

(assert (not d!2292252))

(assert (not b!7411625))

(assert (not bm!682390))

(assert (not bm!682429))

(assert (not b_lambda!286711))

(assert (not b!7411561))

(assert (not d!2292302))

(assert (not b!7411632))

(assert (not b!7411417))

(assert (not b!7411689))

(assert (not b!7411708))

(assert (not b!7411355))

(assert (not b!7411579))

(assert (not bm!682420))

(assert (not bs!1924817))

(assert (not b!7411591))

(assert (not bm!682385))

(assert (not b!7411308))

(assert (not b_lambda!286697))

(assert (not b!7411241))

(assert (not b!7411679))

(assert (not b!7411181))

(assert (not b!7411168))

(assert (not b!7411465))

(assert (not b!7411513))

(assert (not b!7411370))

(assert (not b!7411590))

(assert (not b!7411351))

(assert (not b!7411409))

(assert (not b!7411412))

(assert (not bm!682421))

(assert (not b!7411429))

(assert (not b!7411272))

(assert (not b!7411652))

(assert (not b_lambda!286609))

(assert (not b!7411547))

(assert (not b!7411695))

(assert (not b!7411549))

(assert (not b!7411723))

(assert (not b!7411375))

(assert (not b!7411451))

(assert (not b!7411701))

(assert (not d!2292306))

(assert (not b!7411671))

(assert (not b!7411396))

(assert (not b!7411344))

(assert (not b!7411700))

(assert (not b!7411522))

(assert (not bm!682383))

(assert (not b!7411404))

(assert (not b!7411628))

(assert (not b!7411606))

(assert (not bm!682415))

(assert (not b!7411315))

(assert (not bm!682381))

(assert (not b!7411681))

(assert (not bm!682369))

(assert (not b_lambda!286635))

(assert (not b!7411594))

(assert (not b_lambda!286695))

(assert (not b!7411733))

(assert (not b!7411525))

(assert (not b!7411500))

(assert (not b!7411497))

(assert (not b!7411353))

(assert (not b!7411306))

(assert (not b!7411392))

(assert (not b!7411586))

(assert (not b!7411318))

(assert (not b!7411441))

(assert (not b!7411102))

(assert (not b!7411425))

(assert (not b!7411677))

(assert (not b!7411416))

(assert (not b!7411509))

(assert (not bs!1924809))

(assert (not bm!682423))

(assert (not bm!682409))

(assert (not b!7411668))

(assert (not b!7411217))

(assert (not b!7411739))

(assert (not b!7411734))

(assert (not bm!682435))

(assert (not b!7411498))

(assert (not b!7411550))

(assert (not b_lambda!286699))

(assert (not b!7411558))

(assert (not b!7411106))

(assert (not b!7411725))

(assert (not b!7411215))

(assert (not b!7411665))

(assert (not b!7411620))

(assert (not b!7411482))

(assert (not b!7411630))

(assert (not b!7411602))

(assert (not b!7411571))

(assert (not b!7411397))

(assert (not b!7411399))

(assert (not b!7411477))

(assert (not b!7411377))

(assert (not bm!682382))

(assert (not b!7411738))

(assert (not b!7411443))

(assert (not b!7411691))

(assert (not b!7411124))

(assert (not b!7411452))

(assert (not b!7411340))

(assert (not b!7411709))

(assert (not b!7411562))

(assert (not b!7411661))

(assert (not b!7411634))

(assert (not b!7411730))

(assert (not b!7411343))

(assert (not bm!682438))

(assert (not bm!682374))

(assert (not b!7411572))

(assert (not b!7411570))

(assert (not b!7411456))

(assert (not b!7411286))

(assert (not b!7411566))

(assert (not b!7411352))

(assert (not b!7411693))

(assert (not b!7411347))

(assert (not bm!682418))

(assert (not b!7411468))

(assert (not b!7411435))

(assert (not b!7411484))

(assert (not b!7411672))

(assert (not b!7411358))

(assert (not b!7411648))

(assert (not b!7411384))

(assert (not b!7411211))

(assert (not bm!682391))

(assert (not b!7411401))

(assert (not b!7411502))

(assert (not b!7411411))

(assert (not b!7411592))

(assert (not bm!682442))

(assert (not bm!682436))

(assert (not d!2292258))

(assert (not bm!682443))

(assert (not b!7411453))

(assert (not b!7411309))

(assert (not b!7411696))

(assert (not b!7411611))

(assert (not b!7411431))

(assert (not b!7411535))

(assert (not b_lambda!286689))

(assert (not b!7411268))

(assert (not b!7411675))

(assert (not b!7411737))

(assert (not b!7411576))

(assert (not b!7411510))

(assert (not b!7411539))

(assert (not b!7411521))

(assert (not b!7411712))

(assert (not b!7411298))

(assert (not b!7411082))

(assert (not b_lambda!286693))

(assert (not bm!682375))

(assert (not b!7411555))

(assert (not b!7411379))

(assert (not b!7411310))

(assert (not b!7411432))

(assert (not b!7411624))

(assert (not b!7411088))

(assert (not b_lambda!286707))

(assert (not b!7411320))

(assert (not b!7411688))

(assert (not b!7411449))

(assert (not b_lambda!286705))

(assert (not b_lambda!286629))

(assert (not b_lambda!286627))

(assert (not b!7411714))

(assert (not b!7411128))

(assert (not b_lambda!286633))

(assert (not b!7411552))

(assert (not b!7411721))

(assert (not b!7411575))

(assert (not b!7411582))

(assert (not b!7411255))

(assert (not b!7411209))

(assert (not b!7411481))

(assert (not b!7411324))

(assert (not bs!1924810))

(assert (not b!7411608))

(assert (not b!7411604))

(assert (not b!7411405))

(assert (not b!7411333))

(assert (not b!7411367))

(assert (not b!7411710))

(assert (not bm!682380))

(assert (not b!7411075))

(assert (not b!7411684))

(assert (not bm!682402))

(assert (not b!7411649))

(assert (not bm!682445))

(assert (not b!7411472))

(assert (not d!2292248))

(assert (not b!7411447))

(assert (not b!7411713))

(assert (not b!7411407))

(assert (not bm!682403))

(assert (not b!7411302))

(assert (not b!7411692))

(assert (not b!7411489))

(assert (not b!7411300))

(assert (not b!7411455))

(assert (not bs!1924811))

(assert (not b!7411559))

(assert (not d!2292294))

(assert (not b!7411667))

(assert (not b!7411391))

(assert (not b!7411135))

(assert (not b!7411600))

(assert (not b!7411148))

(assert (not b!7411543))

(assert (not b!7411657))

(assert (not b!7411673))

(assert (not bm!682408))

(assert (not b!7411084))

(assert (not b!7411548))

(assert (not b!7411704))

(assert (not b!7411381))

(assert (not b!7411596))

(assert (not b!7411540))

(assert (not b!7411617))

(assert (not d!2292250))

(assert (not b!7411448))

(assert (not b!7411504))

(assert (not b!7411408))

(assert (not b!7411640))

(assert (not b!7411485))

(assert (not b!7411479))

(assert (not b!7411301))

(assert (not b!7411536))

(assert (not b!7411325))

(assert (not b!7411563))

(assert (not b!7411583))

(assert (not b!7411523))

(assert (not d!2292288))

(assert (not b!7411361))

(assert (not bm!682384))

(assert (not b!7411433))

(assert (not d!2292272))

(assert (not d!2292192))

(assert (not b!7411646))

(assert (not b!7411373))

(assert (not b!7411356))

(assert (not b!7411655))

(assert (not b_lambda!286691))

(assert (not b!7411517))

(assert (not b_lambda!286701))

(assert (not b!7411531))

(assert (not b!7411735))

(assert (not b!7411647))

(assert (not b!7411362))

(assert (not bm!682414))

(assert (not b!7411613))

(assert (not b!7411729))

(assert (not b!7411372))

(assert (not b!7411643))

(assert (not b!7411493))

(assert (not b!7411444))

(assert (not b!7411492))

(assert (not b!7411636))

(assert (not b!7411281))

(assert (not b!7411457))

(assert (not b!7411653))

(assert (not b!7411337))

(assert (not d!2292292))

(assert (not b!7411530))

(assert (not b!7411192))

(assert (not b!7411428))

(assert (not b!7411329))

(assert (not b!7411461))

(assert (not b!7411578))

(assert (not bm!682441))

(assert (not b!7411722))

(assert (not b_lambda!286703))

(assert (not b!7411501))

(assert (not b!7411345))

(assert (not b!7411520))

(assert (not bm!682399))

(assert (not b!7411328))

(assert (not b_lambda!286709))

(assert (not b!7411336))

(assert (not b_lambda!286605))

(assert (not b!7411607))

(assert (not b!7411718))

(assert (not b!7411469))

(assert (not b!7411146))

(assert (not b!7411598))

(assert (not b!7411564))

(assert (not b!7411205))

(assert (not b!7411518))

(assert (not bm!682396))

(assert (not b!7411319))

(assert (not b!7411359))

(assert (not b_lambda!286607))

(assert (not b!7411731))

(assert (not b!7411460))

(assert (not b!7411529))

(assert (not b!7411157))

(assert (not b!7411385))

(assert (not b!7411389))

(assert (not b!7411357))

(assert (not b!7411663))

(assert (not b!7411621))

(assert (not b!7411415))

(assert (not b!7411638))

(assert (not b!7411383))

(assert (not bm!682405))

(assert (not b!7411506))

(assert (not b!7411413))

(assert (not b!7411627))

(assert (not bs!1924818))

(assert (not b!7411656))

(assert (not bs!1924814))

(assert (not b!7411437))

(assert (not b!7411395))

(assert (not bm!682427))

(assert (not b!7411568))

(assert (not bm!682417))

(assert (not b!7411553))

(assert (not b!7411660))

(assert (not b!7411427))

(assert (not b!7411393))

(assert (not bm!682393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

