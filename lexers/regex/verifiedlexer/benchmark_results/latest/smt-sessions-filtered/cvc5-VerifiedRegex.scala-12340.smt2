; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691890 () Bool)

(assert start!691890)

(declare-fun res!2901099 () Bool)

(declare-fun e!4271674 () Bool)

(assert (=> start!691890 (=> (not res!2901099) (not e!4271674))))

(declare-datatypes ((C!36114 0))(
  ( (C!36115 (val!27763 Int)) )
))
(declare-datatypes ((Regex!17922 0))(
  ( (ElementMatch!17922 (c!1326285 C!36114)) (Concat!26767 (regOne!36356 Regex!17922) (regTwo!36356 Regex!17922)) (EmptyExpr!17922) (Star!17922 (reg!18251 Regex!17922)) (EmptyLang!17922) (Union!17922 (regOne!36357 Regex!17922) (regTwo!36357 Regex!17922)) )
))
(declare-fun r!11554 () Regex!17922)

(declare-fun validRegex!9195 (Regex!17922) Bool)

(assert (=> start!691890 (= res!2901099 (validRegex!9195 r!11554))))

(assert (=> start!691890 e!4271674))

(declare-fun e!4271675 () Bool)

(assert (=> start!691890 e!4271675))

(declare-fun tp_is_empty!45077 () Bool)

(assert (=> start!691890 tp_is_empty!45077))

(declare-datatypes ((List!68883 0))(
  ( (Nil!68759) (Cons!68759 (h!75207 Regex!17922) (t!382702 List!68883)) )
))
(declare-datatypes ((Context!13832 0))(
  ( (Context!13833 (exprs!7416 List!68883)) )
))
(declare-fun c!9994 () Context!13832)

(declare-fun e!4271676 () Bool)

(declare-fun inv!87669 (Context!13832) Bool)

(assert (=> start!691890 (and (inv!87669 c!9994) e!4271676)))

(declare-fun auxCtx!45 () Context!13832)

(declare-fun e!4271673 () Bool)

(assert (=> start!691890 (and (inv!87669 auxCtx!45) e!4271673)))

(declare-fun b!7107613 () Bool)

(declare-fun res!2901095 () Bool)

(assert (=> b!7107613 (=> (not res!2901095) (not e!4271674))))

(declare-fun a!1901 () C!36114)

(assert (=> b!7107613 (= res!2901095 (and (or (not (is-ElementMatch!17922 r!11554)) (not (= (c!1326285 r!11554) a!1901))) (not (is-Union!17922 r!11554)) (is-Concat!26767 r!11554)))))

(declare-fun b!7107614 () Bool)

(declare-fun tp!1955042 () Bool)

(assert (=> b!7107614 (= e!4271675 tp!1955042)))

(declare-fun b!7107615 () Bool)

(declare-fun e!4271677 () Bool)

(declare-fun $colon$colon!2780 (List!68883 Regex!17922) List!68883)

(assert (=> b!7107615 (= e!4271677 (not (inv!87669 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554))))))))

(declare-fun b!7107616 () Bool)

(declare-fun tp!1955046 () Bool)

(assert (=> b!7107616 (= e!4271673 tp!1955046)))

(declare-fun b!7107617 () Bool)

(declare-fun tp!1955043 () Bool)

(assert (=> b!7107617 (= e!4271676 tp!1955043)))

(declare-fun b!7107618 () Bool)

(assert (=> b!7107618 (= e!4271674 e!4271677)))

(declare-fun res!2901098 () Bool)

(assert (=> b!7107618 (=> (not res!2901098) (not e!4271677))))

(assert (=> b!7107618 (= res!2901098 (validRegex!9195 (regTwo!36356 r!11554)))))

(declare-datatypes ((Unit!162515 0))(
  ( (Unit!162516) )
))
(declare-fun lt!2559305 () Unit!162515)

(declare-fun lambda!431722 () Int)

(declare-fun lemmaConcatPreservesForall!1207 (List!68883 List!68883 Int) Unit!162515)

(assert (=> b!7107618 (= lt!2559305 (lemmaConcatPreservesForall!1207 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722))))

(declare-fun lt!2559304 () Context!13832)

(declare-fun lt!2559307 () List!68883)

(assert (=> b!7107618 (= lt!2559304 (Context!13833 lt!2559307))))

(declare-fun ++!16074 (List!68883 List!68883) List!68883)

(assert (=> b!7107618 (= lt!2559307 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)))))

(declare-fun lt!2559303 () Unit!162515)

(assert (=> b!7107618 (= lt!2559303 (lemmaConcatPreservesForall!1207 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722))))

(declare-fun lt!2559306 () Unit!162515)

(assert (=> b!7107618 (= lt!2559306 (lemmaConcatPreservesForall!1207 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722))))

(declare-fun b!7107619 () Bool)

(declare-fun res!2901096 () Bool)

(assert (=> b!7107619 (=> (not res!2901096) (not e!4271674))))

(declare-fun nullable!7559 (Regex!17922) Bool)

(assert (=> b!7107619 (= res!2901096 (nullable!7559 (regOne!36356 r!11554)))))

(declare-fun b!7107620 () Bool)

(declare-fun tp!1955047 () Bool)

(declare-fun tp!1955044 () Bool)

(assert (=> b!7107620 (= e!4271675 (and tp!1955047 tp!1955044))))

(declare-fun b!7107621 () Bool)

(declare-fun res!2901097 () Bool)

(assert (=> b!7107621 (=> (not res!2901097) (not e!4271677))))

(declare-fun derivationStepZipperDown!2437 (Regex!17922 Context!13832 C!36114) (Set Context!13832))

(assert (=> b!7107621 (= res!2901097 (= (derivationStepZipperDown!2437 r!11554 lt!2559304 a!1901) (set.union (derivationStepZipperDown!2437 (regOne!36356 r!11554) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) a!1901) (derivationStepZipperDown!2437 (regTwo!36356 r!11554) lt!2559304 a!1901))))))

(declare-fun b!7107622 () Bool)

(assert (=> b!7107622 (= e!4271675 tp_is_empty!45077)))

(declare-fun b!7107623 () Bool)

(declare-fun tp!1955041 () Bool)

(declare-fun tp!1955045 () Bool)

(assert (=> b!7107623 (= e!4271675 (and tp!1955041 tp!1955045))))

(assert (= (and start!691890 res!2901099) b!7107613))

(assert (= (and b!7107613 res!2901095) b!7107619))

(assert (= (and b!7107619 res!2901096) b!7107618))

(assert (= (and b!7107618 res!2901098) b!7107621))

(assert (= (and b!7107621 res!2901097) b!7107615))

(assert (= (and start!691890 (is-ElementMatch!17922 r!11554)) b!7107622))

(assert (= (and start!691890 (is-Concat!26767 r!11554)) b!7107620))

(assert (= (and start!691890 (is-Star!17922 r!11554)) b!7107614))

(assert (= (and start!691890 (is-Union!17922 r!11554)) b!7107623))

(assert (= start!691890 b!7107617))

(assert (= start!691890 b!7107616))

(declare-fun m!7830028 () Bool)

(assert (=> start!691890 m!7830028))

(declare-fun m!7830030 () Bool)

(assert (=> start!691890 m!7830030))

(declare-fun m!7830032 () Bool)

(assert (=> start!691890 m!7830032))

(declare-fun m!7830034 () Bool)

(assert (=> b!7107621 m!7830034))

(declare-fun m!7830036 () Bool)

(assert (=> b!7107621 m!7830036))

(declare-fun m!7830038 () Bool)

(assert (=> b!7107621 m!7830038))

(declare-fun m!7830040 () Bool)

(assert (=> b!7107621 m!7830040))

(declare-fun m!7830042 () Bool)

(assert (=> b!7107615 m!7830042))

(declare-fun m!7830044 () Bool)

(assert (=> b!7107615 m!7830044))

(declare-fun m!7830046 () Bool)

(assert (=> b!7107619 m!7830046))

(declare-fun m!7830048 () Bool)

(assert (=> b!7107618 m!7830048))

(assert (=> b!7107618 m!7830048))

(declare-fun m!7830050 () Bool)

(assert (=> b!7107618 m!7830050))

(declare-fun m!7830052 () Bool)

(assert (=> b!7107618 m!7830052))

(assert (=> b!7107618 m!7830048))

(push 1)

(assert (not start!691890))

(assert (not b!7107619))

(assert tp_is_empty!45077)

(assert (not b!7107615))

(assert (not b!7107621))

(assert (not b!7107620))

(assert (not b!7107618))

(assert (not b!7107614))

(assert (not b!7107623))

(assert (not b!7107617))

(assert (not b!7107616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7107679 () Bool)

(declare-fun e!4271708 () (Set Context!13832))

(assert (=> b!7107679 (= e!4271708 (set.insert lt!2559304 (as set.empty (Set Context!13832))))))

(declare-fun c!1326299 () Bool)

(declare-fun call!647984 () (Set Context!13832))

(declare-fun call!647983 () List!68883)

(declare-fun bm!647975 () Bool)

(assert (=> bm!647975 (= call!647984 (derivationStepZipperDown!2437 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)) (ite c!1326299 lt!2559304 (Context!13833 call!647983)) a!1901))))

(declare-fun b!7107680 () Bool)

(declare-fun e!4271706 () (Set Context!13832))

(assert (=> b!7107680 (= e!4271708 e!4271706)))

(assert (=> b!7107680 (= c!1326299 (is-Union!17922 r!11554))))

(declare-fun b!7107681 () Bool)

(declare-fun e!4271710 () (Set Context!13832))

(declare-fun call!647981 () (Set Context!13832))

(assert (=> b!7107681 (= e!4271710 call!647981)))

(declare-fun bm!647976 () Bool)

(declare-fun call!647980 () (Set Context!13832))

(declare-fun call!647982 () (Set Context!13832))

(assert (=> bm!647976 (= call!647980 call!647982)))

(declare-fun b!7107682 () Bool)

(declare-fun e!4271709 () (Set Context!13832))

(assert (=> b!7107682 (= e!4271709 call!647981)))

(declare-fun bm!647977 () Bool)

(declare-fun c!1326298 () Bool)

(declare-fun c!1326297 () Bool)

(assert (=> bm!647977 (= call!647983 ($colon$colon!2780 (exprs!7416 lt!2559304) (ite (or c!1326297 c!1326298) (regTwo!36356 r!11554) r!11554)))))

(declare-fun b!7107683 () Bool)

(declare-fun e!4271705 () (Set Context!13832))

(assert (=> b!7107683 (= e!4271705 e!4271709)))

(assert (=> b!7107683 (= c!1326298 (is-Concat!26767 r!11554))))

(declare-fun b!7107684 () Bool)

(declare-fun e!4271707 () Bool)

(assert (=> b!7107684 (= e!4271707 (nullable!7559 (regOne!36356 r!11554)))))

(declare-fun bm!647978 () Bool)

(declare-fun call!647985 () List!68883)

(assert (=> bm!647978 (= call!647985 call!647983)))

(declare-fun bm!647979 () Bool)

(assert (=> bm!647979 (= call!647982 (derivationStepZipperDown!2437 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))) (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985)) a!1901))))

(declare-fun b!7107685 () Bool)

(assert (=> b!7107685 (= e!4271710 (as set.empty (Set Context!13832)))))

(declare-fun b!7107687 () Bool)

(assert (=> b!7107687 (= c!1326297 e!4271707)))

(declare-fun res!2901117 () Bool)

(assert (=> b!7107687 (=> (not res!2901117) (not e!4271707))))

(assert (=> b!7107687 (= res!2901117 (is-Concat!26767 r!11554))))

(assert (=> b!7107687 (= e!4271706 e!4271705)))

(declare-fun bm!647980 () Bool)

(assert (=> bm!647980 (= call!647981 call!647980)))

(declare-fun b!7107688 () Bool)

(assert (=> b!7107688 (= e!4271705 (set.union call!647984 call!647980))))

(declare-fun b!7107689 () Bool)

(assert (=> b!7107689 (= e!4271706 (set.union call!647982 call!647984))))

(declare-fun d!2219599 () Bool)

(declare-fun c!1326301 () Bool)

(assert (=> d!2219599 (= c!1326301 (and (is-ElementMatch!17922 r!11554) (= (c!1326285 r!11554) a!1901)))))

(assert (=> d!2219599 (= (derivationStepZipperDown!2437 r!11554 lt!2559304 a!1901) e!4271708)))

(declare-fun b!7107686 () Bool)

(declare-fun c!1326300 () Bool)

(assert (=> b!7107686 (= c!1326300 (is-Star!17922 r!11554))))

(assert (=> b!7107686 (= e!4271709 e!4271710)))

(assert (= (and d!2219599 c!1326301) b!7107679))

(assert (= (and d!2219599 (not c!1326301)) b!7107680))

(assert (= (and b!7107680 c!1326299) b!7107689))

(assert (= (and b!7107680 (not c!1326299)) b!7107687))

(assert (= (and b!7107687 res!2901117) b!7107684))

(assert (= (and b!7107687 c!1326297) b!7107688))

(assert (= (and b!7107687 (not c!1326297)) b!7107683))

(assert (= (and b!7107683 c!1326298) b!7107682))

(assert (= (and b!7107683 (not c!1326298)) b!7107686))

(assert (= (and b!7107686 c!1326300) b!7107681))

(assert (= (and b!7107686 (not c!1326300)) b!7107685))

(assert (= (or b!7107682 b!7107681) bm!647978))

(assert (= (or b!7107682 b!7107681) bm!647980))

(assert (= (or b!7107688 bm!647980) bm!647976))

(assert (= (or b!7107688 bm!647978) bm!647977))

(assert (= (or b!7107689 b!7107688) bm!647975))

(assert (= (or b!7107689 bm!647976) bm!647979))

(declare-fun m!7830080 () Bool)

(assert (=> bm!647975 m!7830080))

(declare-fun m!7830082 () Bool)

(assert (=> bm!647979 m!7830082))

(declare-fun m!7830084 () Bool)

(assert (=> bm!647977 m!7830084))

(declare-fun m!7830086 () Bool)

(assert (=> b!7107679 m!7830086))

(assert (=> b!7107684 m!7830046))

(assert (=> b!7107621 d!2219599))

(declare-fun b!7107690 () Bool)

(declare-fun e!4271714 () (Set Context!13832))

(assert (=> b!7107690 (= e!4271714 (set.insert (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (as set.empty (Set Context!13832))))))

(declare-fun bm!647981 () Bool)

(declare-fun call!647989 () List!68883)

(declare-fun c!1326304 () Bool)

(declare-fun call!647990 () (Set Context!13832))

(assert (=> bm!647981 (= call!647990 (derivationStepZipperDown!2437 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))) (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989)) a!1901))))

(declare-fun b!7107691 () Bool)

(declare-fun e!4271712 () (Set Context!13832))

(assert (=> b!7107691 (= e!4271714 e!4271712)))

(assert (=> b!7107691 (= c!1326304 (is-Union!17922 (regOne!36356 r!11554)))))

(declare-fun b!7107692 () Bool)

(declare-fun e!4271716 () (Set Context!13832))

(declare-fun call!647987 () (Set Context!13832))

(assert (=> b!7107692 (= e!4271716 call!647987)))

(declare-fun bm!647982 () Bool)

(declare-fun call!647986 () (Set Context!13832))

(declare-fun call!647988 () (Set Context!13832))

(assert (=> bm!647982 (= call!647986 call!647988)))

(declare-fun b!7107693 () Bool)

(declare-fun e!4271715 () (Set Context!13832))

(assert (=> b!7107693 (= e!4271715 call!647987)))

(declare-fun c!1326302 () Bool)

(declare-fun c!1326303 () Bool)

(declare-fun bm!647983 () Bool)

(assert (=> bm!647983 (= call!647989 ($colon$colon!2780 (exprs!7416 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554)))) (ite (or c!1326302 c!1326303) (regTwo!36356 (regOne!36356 r!11554)) (regOne!36356 r!11554))))))

(declare-fun b!7107694 () Bool)

(declare-fun e!4271711 () (Set Context!13832))

(assert (=> b!7107694 (= e!4271711 e!4271715)))

(assert (=> b!7107694 (= c!1326303 (is-Concat!26767 (regOne!36356 r!11554)))))

(declare-fun b!7107695 () Bool)

(declare-fun e!4271713 () Bool)

(assert (=> b!7107695 (= e!4271713 (nullable!7559 (regOne!36356 (regOne!36356 r!11554))))))

(declare-fun bm!647984 () Bool)

(declare-fun call!647991 () List!68883)

(assert (=> bm!647984 (= call!647991 call!647989)))

(declare-fun bm!647985 () Bool)

(assert (=> bm!647985 (= call!647988 (derivationStepZipperDown!2437 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))) (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991)) a!1901))))

(declare-fun b!7107696 () Bool)

(assert (=> b!7107696 (= e!4271716 (as set.empty (Set Context!13832)))))

(declare-fun b!7107698 () Bool)

(assert (=> b!7107698 (= c!1326302 e!4271713)))

(declare-fun res!2901118 () Bool)

(assert (=> b!7107698 (=> (not res!2901118) (not e!4271713))))

(assert (=> b!7107698 (= res!2901118 (is-Concat!26767 (regOne!36356 r!11554)))))

(assert (=> b!7107698 (= e!4271712 e!4271711)))

(declare-fun bm!647986 () Bool)

(assert (=> bm!647986 (= call!647987 call!647986)))

(declare-fun b!7107699 () Bool)

(assert (=> b!7107699 (= e!4271711 (set.union call!647990 call!647986))))

(declare-fun b!7107700 () Bool)

(assert (=> b!7107700 (= e!4271712 (set.union call!647988 call!647990))))

(declare-fun d!2219603 () Bool)

(declare-fun c!1326306 () Bool)

(assert (=> d!2219603 (= c!1326306 (and (is-ElementMatch!17922 (regOne!36356 r!11554)) (= (c!1326285 (regOne!36356 r!11554)) a!1901)))))

(assert (=> d!2219603 (= (derivationStepZipperDown!2437 (regOne!36356 r!11554) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) a!1901) e!4271714)))

(declare-fun b!7107697 () Bool)

(declare-fun c!1326305 () Bool)

(assert (=> b!7107697 (= c!1326305 (is-Star!17922 (regOne!36356 r!11554)))))

(assert (=> b!7107697 (= e!4271715 e!4271716)))

(assert (= (and d!2219603 c!1326306) b!7107690))

(assert (= (and d!2219603 (not c!1326306)) b!7107691))

(assert (= (and b!7107691 c!1326304) b!7107700))

(assert (= (and b!7107691 (not c!1326304)) b!7107698))

(assert (= (and b!7107698 res!2901118) b!7107695))

(assert (= (and b!7107698 c!1326302) b!7107699))

(assert (= (and b!7107698 (not c!1326302)) b!7107694))

(assert (= (and b!7107694 c!1326303) b!7107693))

(assert (= (and b!7107694 (not c!1326303)) b!7107697))

(assert (= (and b!7107697 c!1326305) b!7107692))

(assert (= (and b!7107697 (not c!1326305)) b!7107696))

(assert (= (or b!7107693 b!7107692) bm!647984))

(assert (= (or b!7107693 b!7107692) bm!647986))

(assert (= (or b!7107699 bm!647986) bm!647982))

(assert (= (or b!7107699 bm!647984) bm!647983))

(assert (= (or b!7107700 b!7107699) bm!647981))

(assert (= (or b!7107700 bm!647982) bm!647985))

(declare-fun m!7830088 () Bool)

(assert (=> bm!647981 m!7830088))

(declare-fun m!7830090 () Bool)

(assert (=> bm!647985 m!7830090))

(declare-fun m!7830092 () Bool)

(assert (=> bm!647983 m!7830092))

(declare-fun m!7830094 () Bool)

(assert (=> b!7107690 m!7830094))

(declare-fun m!7830096 () Bool)

(assert (=> b!7107695 m!7830096))

(assert (=> b!7107621 d!2219603))

(declare-fun d!2219605 () Bool)

(assert (=> d!2219605 (= ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554)) (Cons!68759 (regTwo!36356 r!11554) lt!2559307))))

(assert (=> b!7107621 d!2219605))

(declare-fun b!7107707 () Bool)

(declare-fun e!4271724 () (Set Context!13832))

(assert (=> b!7107707 (= e!4271724 (set.insert lt!2559304 (as set.empty (Set Context!13832))))))

(declare-fun call!647996 () (Set Context!13832))

(declare-fun call!647995 () List!68883)

(declare-fun c!1326311 () Bool)

(declare-fun bm!647987 () Bool)

(assert (=> bm!647987 (= call!647996 (derivationStepZipperDown!2437 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))) (ite c!1326311 lt!2559304 (Context!13833 call!647995)) a!1901))))

(declare-fun b!7107708 () Bool)

(declare-fun e!4271722 () (Set Context!13832))

(assert (=> b!7107708 (= e!4271724 e!4271722)))

(assert (=> b!7107708 (= c!1326311 (is-Union!17922 (regTwo!36356 r!11554)))))

(declare-fun b!7107709 () Bool)

(declare-fun e!4271726 () (Set Context!13832))

(declare-fun call!647993 () (Set Context!13832))

(assert (=> b!7107709 (= e!4271726 call!647993)))

(declare-fun bm!647988 () Bool)

(declare-fun call!647992 () (Set Context!13832))

(declare-fun call!647994 () (Set Context!13832))

(assert (=> bm!647988 (= call!647992 call!647994)))

(declare-fun b!7107710 () Bool)

(declare-fun e!4271725 () (Set Context!13832))

(assert (=> b!7107710 (= e!4271725 call!647993)))

(declare-fun bm!647989 () Bool)

(declare-fun c!1326310 () Bool)

(declare-fun c!1326309 () Bool)

(assert (=> bm!647989 (= call!647995 ($colon$colon!2780 (exprs!7416 lt!2559304) (ite (or c!1326309 c!1326310) (regTwo!36356 (regTwo!36356 r!11554)) (regTwo!36356 r!11554))))))

(declare-fun b!7107711 () Bool)

(declare-fun e!4271721 () (Set Context!13832))

(assert (=> b!7107711 (= e!4271721 e!4271725)))

(assert (=> b!7107711 (= c!1326310 (is-Concat!26767 (regTwo!36356 r!11554)))))

(declare-fun b!7107712 () Bool)

(declare-fun e!4271723 () Bool)

(assert (=> b!7107712 (= e!4271723 (nullable!7559 (regOne!36356 (regTwo!36356 r!11554))))))

(declare-fun bm!647990 () Bool)

(declare-fun call!647997 () List!68883)

(assert (=> bm!647990 (= call!647997 call!647995)))

(declare-fun bm!647991 () Bool)

(assert (=> bm!647991 (= call!647994 (derivationStepZipperDown!2437 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))) (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997)) a!1901))))

(declare-fun b!7107713 () Bool)

(assert (=> b!7107713 (= e!4271726 (as set.empty (Set Context!13832)))))

(declare-fun b!7107715 () Bool)

(assert (=> b!7107715 (= c!1326309 e!4271723)))

(declare-fun res!2901121 () Bool)

(assert (=> b!7107715 (=> (not res!2901121) (not e!4271723))))

(assert (=> b!7107715 (= res!2901121 (is-Concat!26767 (regTwo!36356 r!11554)))))

(assert (=> b!7107715 (= e!4271722 e!4271721)))

(declare-fun bm!647992 () Bool)

(assert (=> bm!647992 (= call!647993 call!647992)))

(declare-fun b!7107716 () Bool)

(assert (=> b!7107716 (= e!4271721 (set.union call!647996 call!647992))))

(declare-fun b!7107717 () Bool)

(assert (=> b!7107717 (= e!4271722 (set.union call!647994 call!647996))))

(declare-fun d!2219607 () Bool)

(declare-fun c!1326313 () Bool)

(assert (=> d!2219607 (= c!1326313 (and (is-ElementMatch!17922 (regTwo!36356 r!11554)) (= (c!1326285 (regTwo!36356 r!11554)) a!1901)))))

(assert (=> d!2219607 (= (derivationStepZipperDown!2437 (regTwo!36356 r!11554) lt!2559304 a!1901) e!4271724)))

(declare-fun b!7107714 () Bool)

(declare-fun c!1326312 () Bool)

(assert (=> b!7107714 (= c!1326312 (is-Star!17922 (regTwo!36356 r!11554)))))

(assert (=> b!7107714 (= e!4271725 e!4271726)))

(assert (= (and d!2219607 c!1326313) b!7107707))

(assert (= (and d!2219607 (not c!1326313)) b!7107708))

(assert (= (and b!7107708 c!1326311) b!7107717))

(assert (= (and b!7107708 (not c!1326311)) b!7107715))

(assert (= (and b!7107715 res!2901121) b!7107712))

(assert (= (and b!7107715 c!1326309) b!7107716))

(assert (= (and b!7107715 (not c!1326309)) b!7107711))

(assert (= (and b!7107711 c!1326310) b!7107710))

(assert (= (and b!7107711 (not c!1326310)) b!7107714))

(assert (= (and b!7107714 c!1326312) b!7107709))

(assert (= (and b!7107714 (not c!1326312)) b!7107713))

(assert (= (or b!7107710 b!7107709) bm!647990))

(assert (= (or b!7107710 b!7107709) bm!647992))

(assert (= (or b!7107716 bm!647992) bm!647988))

(assert (= (or b!7107716 bm!647990) bm!647989))

(assert (= (or b!7107717 b!7107716) bm!647987))

(assert (= (or b!7107717 bm!647988) bm!647991))

(declare-fun m!7830098 () Bool)

(assert (=> bm!647987 m!7830098))

(declare-fun m!7830100 () Bool)

(assert (=> bm!647991 m!7830100))

(declare-fun m!7830102 () Bool)

(assert (=> bm!647989 m!7830102))

(assert (=> b!7107707 m!7830086))

(declare-fun m!7830104 () Bool)

(assert (=> b!7107712 m!7830104))

(assert (=> b!7107621 d!2219607))

(declare-fun bs!1884883 () Bool)

(declare-fun d!2219609 () Bool)

(assert (= bs!1884883 (and d!2219609 b!7107618)))

(declare-fun lambda!431732 () Int)

(assert (=> bs!1884883 (= lambda!431732 lambda!431722)))

(declare-fun forall!16823 (List!68883 Int) Bool)

(assert (=> d!2219609 (= (inv!87669 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))) (forall!16823 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))) lambda!431732))))

(declare-fun bs!1884884 () Bool)

(assert (= bs!1884884 d!2219609))

(declare-fun m!7830106 () Bool)

(assert (=> bs!1884884 m!7830106))

(assert (=> b!7107615 d!2219609))

(declare-fun d!2219611 () Bool)

(assert (=> d!2219611 (= ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)) (Cons!68759 (regTwo!36356 r!11554) (exprs!7416 c!9994)))))

(assert (=> b!7107615 d!2219611))

(declare-fun d!2219613 () Bool)

(declare-fun nullableFct!2914 (Regex!17922) Bool)

(assert (=> d!2219613 (= (nullable!7559 (regOne!36356 r!11554)) (nullableFct!2914 (regOne!36356 r!11554)))))

(declare-fun bs!1884885 () Bool)

(assert (= bs!1884885 d!2219613))

(declare-fun m!7830108 () Bool)

(assert (=> bs!1884885 m!7830108))

(assert (=> b!7107619 d!2219613))

(declare-fun b!7107748 () Bool)

(declare-fun e!4271753 () Bool)

(declare-fun call!648012 () Bool)

(assert (=> b!7107748 (= e!4271753 call!648012)))

(declare-fun b!7107749 () Bool)

(declare-fun res!2901142 () Bool)

(assert (=> b!7107749 (=> (not res!2901142) (not e!4271753))))

(declare-fun call!648011 () Bool)

(assert (=> b!7107749 (= res!2901142 call!648011)))

(declare-fun e!4271751 () Bool)

(assert (=> b!7107749 (= e!4271751 e!4271753)))

(declare-fun b!7107750 () Bool)

(declare-fun e!4271756 () Bool)

(declare-fun e!4271752 () Bool)

(assert (=> b!7107750 (= e!4271756 e!4271752)))

(declare-fun c!1326320 () Bool)

(assert (=> b!7107750 (= c!1326320 (is-Star!17922 r!11554))))

(declare-fun b!7107751 () Bool)

(declare-fun res!2901141 () Bool)

(declare-fun e!4271754 () Bool)

(assert (=> b!7107751 (=> res!2901141 e!4271754)))

(assert (=> b!7107751 (= res!2901141 (not (is-Concat!26767 r!11554)))))

(assert (=> b!7107751 (= e!4271751 e!4271754)))

(declare-fun b!7107752 () Bool)

(declare-fun e!4271757 () Bool)

(declare-fun call!648010 () Bool)

(assert (=> b!7107752 (= e!4271757 call!648010)))

(declare-fun b!7107753 () Bool)

(assert (=> b!7107753 (= e!4271752 e!4271757)))

(declare-fun res!2901140 () Bool)

(assert (=> b!7107753 (= res!2901140 (not (nullable!7559 (reg!18251 r!11554))))))

(assert (=> b!7107753 (=> (not res!2901140) (not e!4271757))))

(declare-fun b!7107754 () Bool)

(declare-fun e!4271755 () Bool)

(assert (=> b!7107754 (= e!4271755 call!648011)))

(declare-fun d!2219615 () Bool)

(declare-fun res!2901144 () Bool)

(assert (=> d!2219615 (=> res!2901144 e!4271756)))

(assert (=> d!2219615 (= res!2901144 (is-ElementMatch!17922 r!11554))))

(assert (=> d!2219615 (= (validRegex!9195 r!11554) e!4271756)))

(declare-fun b!7107755 () Bool)

(assert (=> b!7107755 (= e!4271752 e!4271751)))

(declare-fun c!1326321 () Bool)

(assert (=> b!7107755 (= c!1326321 (is-Union!17922 r!11554))))

(declare-fun bm!648005 () Bool)

(assert (=> bm!648005 (= call!648010 (validRegex!9195 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(declare-fun bm!648006 () Bool)

(assert (=> bm!648006 (= call!648012 call!648010)))

(declare-fun bm!648007 () Bool)

(assert (=> bm!648007 (= call!648011 (validRegex!9195 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))

(declare-fun b!7107756 () Bool)

(assert (=> b!7107756 (= e!4271754 e!4271755)))

(declare-fun res!2901143 () Bool)

(assert (=> b!7107756 (=> (not res!2901143) (not e!4271755))))

(assert (=> b!7107756 (= res!2901143 call!648012)))

(assert (= (and d!2219615 (not res!2901144)) b!7107750))

(assert (= (and b!7107750 c!1326320) b!7107753))

(assert (= (and b!7107750 (not c!1326320)) b!7107755))

(assert (= (and b!7107753 res!2901140) b!7107752))

(assert (= (and b!7107755 c!1326321) b!7107749))

(assert (= (and b!7107755 (not c!1326321)) b!7107751))

(assert (= (and b!7107749 res!2901142) b!7107748))

(assert (= (and b!7107751 (not res!2901141)) b!7107756))

(assert (= (and b!7107756 res!2901143) b!7107754))

(assert (= (or b!7107749 b!7107754) bm!648007))

(assert (= (or b!7107748 b!7107756) bm!648006))

(assert (= (or b!7107752 bm!648006) bm!648005))

(declare-fun m!7830110 () Bool)

(assert (=> b!7107753 m!7830110))

(declare-fun m!7830112 () Bool)

(assert (=> bm!648005 m!7830112))

(declare-fun m!7830114 () Bool)

(assert (=> bm!648007 m!7830114))

(assert (=> start!691890 d!2219615))

(declare-fun bs!1884886 () Bool)

(declare-fun d!2219617 () Bool)

(assert (= bs!1884886 (and d!2219617 b!7107618)))

(declare-fun lambda!431733 () Int)

(assert (=> bs!1884886 (= lambda!431733 lambda!431722)))

(declare-fun bs!1884887 () Bool)

(assert (= bs!1884887 (and d!2219617 d!2219609)))

(assert (=> bs!1884887 (= lambda!431733 lambda!431732)))

(assert (=> d!2219617 (= (inv!87669 c!9994) (forall!16823 (exprs!7416 c!9994) lambda!431733))))

(declare-fun bs!1884888 () Bool)

(assert (= bs!1884888 d!2219617))

(declare-fun m!7830116 () Bool)

(assert (=> bs!1884888 m!7830116))

(assert (=> start!691890 d!2219617))

(declare-fun bs!1884889 () Bool)

(declare-fun d!2219619 () Bool)

(assert (= bs!1884889 (and d!2219619 b!7107618)))

(declare-fun lambda!431734 () Int)

(assert (=> bs!1884889 (= lambda!431734 lambda!431722)))

(declare-fun bs!1884890 () Bool)

(assert (= bs!1884890 (and d!2219619 d!2219609)))

(assert (=> bs!1884890 (= lambda!431734 lambda!431732)))

(declare-fun bs!1884891 () Bool)

(assert (= bs!1884891 (and d!2219619 d!2219617)))

(assert (=> bs!1884891 (= lambda!431734 lambda!431733)))

(assert (=> d!2219619 (= (inv!87669 auxCtx!45) (forall!16823 (exprs!7416 auxCtx!45) lambda!431734))))

(declare-fun bs!1884892 () Bool)

(assert (= bs!1884892 d!2219619))

(declare-fun m!7830120 () Bool)

(assert (=> bs!1884892 m!7830120))

(assert (=> start!691890 d!2219619))

(declare-fun b!7107766 () Bool)

(declare-fun e!4271767 () Bool)

(declare-fun call!648018 () Bool)

(assert (=> b!7107766 (= e!4271767 call!648018)))

(declare-fun b!7107767 () Bool)

(declare-fun res!2901152 () Bool)

(assert (=> b!7107767 (=> (not res!2901152) (not e!4271767))))

(declare-fun call!648017 () Bool)

(assert (=> b!7107767 (= res!2901152 call!648017)))

(declare-fun e!4271765 () Bool)

(assert (=> b!7107767 (= e!4271765 e!4271767)))

(declare-fun b!7107768 () Bool)

(declare-fun e!4271770 () Bool)

(declare-fun e!4271766 () Bool)

(assert (=> b!7107768 (= e!4271770 e!4271766)))

(declare-fun c!1326324 () Bool)

(assert (=> b!7107768 (= c!1326324 (is-Star!17922 (regTwo!36356 r!11554)))))

(declare-fun b!7107769 () Bool)

(declare-fun res!2901151 () Bool)

(declare-fun e!4271768 () Bool)

(assert (=> b!7107769 (=> res!2901151 e!4271768)))

(assert (=> b!7107769 (= res!2901151 (not (is-Concat!26767 (regTwo!36356 r!11554))))))

(assert (=> b!7107769 (= e!4271765 e!4271768)))

(declare-fun b!7107770 () Bool)

(declare-fun e!4271771 () Bool)

(declare-fun call!648016 () Bool)

(assert (=> b!7107770 (= e!4271771 call!648016)))

(declare-fun b!7107771 () Bool)

(assert (=> b!7107771 (= e!4271766 e!4271771)))

(declare-fun res!2901150 () Bool)

(assert (=> b!7107771 (= res!2901150 (not (nullable!7559 (reg!18251 (regTwo!36356 r!11554)))))))

(assert (=> b!7107771 (=> (not res!2901150) (not e!4271771))))

(declare-fun b!7107772 () Bool)

(declare-fun e!4271769 () Bool)

(assert (=> b!7107772 (= e!4271769 call!648017)))

(declare-fun d!2219621 () Bool)

(declare-fun res!2901154 () Bool)

(assert (=> d!2219621 (=> res!2901154 e!4271770)))

(assert (=> d!2219621 (= res!2901154 (is-ElementMatch!17922 (regTwo!36356 r!11554)))))

(assert (=> d!2219621 (= (validRegex!9195 (regTwo!36356 r!11554)) e!4271770)))

(declare-fun b!7107773 () Bool)

(assert (=> b!7107773 (= e!4271766 e!4271765)))

(declare-fun c!1326325 () Bool)

(assert (=> b!7107773 (= c!1326325 (is-Union!17922 (regTwo!36356 r!11554)))))

(declare-fun bm!648011 () Bool)

(assert (=> bm!648011 (= call!648016 (validRegex!9195 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(declare-fun bm!648012 () Bool)

(assert (=> bm!648012 (= call!648018 call!648016)))

(declare-fun bm!648013 () Bool)

(assert (=> bm!648013 (= call!648017 (validRegex!9195 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))

(declare-fun b!7107774 () Bool)

(assert (=> b!7107774 (= e!4271768 e!4271769)))

(declare-fun res!2901153 () Bool)

(assert (=> b!7107774 (=> (not res!2901153) (not e!4271769))))

(assert (=> b!7107774 (= res!2901153 call!648018)))

(assert (= (and d!2219621 (not res!2901154)) b!7107768))

(assert (= (and b!7107768 c!1326324) b!7107771))

(assert (= (and b!7107768 (not c!1326324)) b!7107773))

(assert (= (and b!7107771 res!2901150) b!7107770))

(assert (= (and b!7107773 c!1326325) b!7107767))

(assert (= (and b!7107773 (not c!1326325)) b!7107769))

(assert (= (and b!7107767 res!2901152) b!7107766))

(assert (= (and b!7107769 (not res!2901151)) b!7107774))

(assert (= (and b!7107774 res!2901153) b!7107772))

(assert (= (or b!7107767 b!7107772) bm!648013))

(assert (= (or b!7107766 b!7107774) bm!648012))

(assert (= (or b!7107770 bm!648012) bm!648011))

(declare-fun m!7830126 () Bool)

(assert (=> b!7107771 m!7830126))

(declare-fun m!7830128 () Bool)

(assert (=> bm!648011 m!7830128))

(declare-fun m!7830130 () Bool)

(assert (=> bm!648013 m!7830130))

(assert (=> b!7107618 d!2219621))

(declare-fun d!2219625 () Bool)

(assert (=> d!2219625 (forall!16823 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)) lambda!431722)))

(declare-fun lt!2559325 () Unit!162515)

(declare-fun choose!54831 (List!68883 List!68883 Int) Unit!162515)

(assert (=> d!2219625 (= lt!2559325 (choose!54831 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722))))

(assert (=> d!2219625 (forall!16823 (exprs!7416 c!9994) lambda!431722)))

(assert (=> d!2219625 (= (lemmaConcatPreservesForall!1207 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722) lt!2559325)))

(declare-fun bs!1884893 () Bool)

(assert (= bs!1884893 d!2219625))

(assert (=> bs!1884893 m!7830050))

(assert (=> bs!1884893 m!7830050))

(declare-fun m!7830132 () Bool)

(assert (=> bs!1884893 m!7830132))

(declare-fun m!7830134 () Bool)

(assert (=> bs!1884893 m!7830134))

(declare-fun m!7830136 () Bool)

(assert (=> bs!1884893 m!7830136))

(assert (=> b!7107618 d!2219625))

(declare-fun b!7107785 () Bool)

(declare-fun res!2901159 () Bool)

(declare-fun e!4271776 () Bool)

(assert (=> b!7107785 (=> (not res!2901159) (not e!4271776))))

(declare-fun lt!2559331 () List!68883)

(declare-fun size!41383 (List!68883) Int)

(assert (=> b!7107785 (= res!2901159 (= (size!41383 lt!2559331) (+ (size!41383 (exprs!7416 c!9994)) (size!41383 (exprs!7416 auxCtx!45)))))))

(declare-fun b!7107786 () Bool)

(assert (=> b!7107786 (= e!4271776 (or (not (= (exprs!7416 auxCtx!45) Nil!68759)) (= lt!2559331 (exprs!7416 c!9994))))))

(declare-fun b!7107784 () Bool)

(declare-fun e!4271777 () List!68883)

(assert (=> b!7107784 (= e!4271777 (Cons!68759 (h!75207 (exprs!7416 c!9994)) (++!16074 (t!382702 (exprs!7416 c!9994)) (exprs!7416 auxCtx!45))))))

(declare-fun d!2219627 () Bool)

(assert (=> d!2219627 e!4271776))

(declare-fun res!2901160 () Bool)

(assert (=> d!2219627 (=> (not res!2901160) (not e!4271776))))

(declare-fun content!14008 (List!68883) (Set Regex!17922))

(assert (=> d!2219627 (= res!2901160 (= (content!14008 lt!2559331) (set.union (content!14008 (exprs!7416 c!9994)) (content!14008 (exprs!7416 auxCtx!45)))))))

(assert (=> d!2219627 (= lt!2559331 e!4271777)))

(declare-fun c!1326328 () Bool)

(assert (=> d!2219627 (= c!1326328 (is-Nil!68759 (exprs!7416 c!9994)))))

(assert (=> d!2219627 (= (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)) lt!2559331)))

(declare-fun b!7107783 () Bool)

(assert (=> b!7107783 (= e!4271777 (exprs!7416 auxCtx!45))))

(assert (= (and d!2219627 c!1326328) b!7107783))

(assert (= (and d!2219627 (not c!1326328)) b!7107784))

(assert (= (and d!2219627 res!2901160) b!7107785))

(assert (= (and b!7107785 res!2901159) b!7107786))

(declare-fun m!7830144 () Bool)

(assert (=> b!7107785 m!7830144))

(declare-fun m!7830146 () Bool)

(assert (=> b!7107785 m!7830146))

(declare-fun m!7830148 () Bool)

(assert (=> b!7107785 m!7830148))

(declare-fun m!7830150 () Bool)

(assert (=> b!7107784 m!7830150))

(declare-fun m!7830152 () Bool)

(assert (=> d!2219627 m!7830152))

(declare-fun m!7830154 () Bool)

(assert (=> d!2219627 m!7830154))

(declare-fun m!7830156 () Bool)

(assert (=> d!2219627 m!7830156))

(assert (=> b!7107618 d!2219627))

(declare-fun b!7107791 () Bool)

(declare-fun e!4271780 () Bool)

(declare-fun tp!1955073 () Bool)

(declare-fun tp!1955074 () Bool)

(assert (=> b!7107791 (= e!4271780 (and tp!1955073 tp!1955074))))

(assert (=> b!7107617 (= tp!1955043 e!4271780)))

(assert (= (and b!7107617 (is-Cons!68759 (exprs!7416 c!9994))) b!7107791))

(declare-fun b!7107792 () Bool)

(declare-fun e!4271781 () Bool)

(declare-fun tp!1955075 () Bool)

(declare-fun tp!1955076 () Bool)

(assert (=> b!7107792 (= e!4271781 (and tp!1955075 tp!1955076))))

(assert (=> b!7107616 (= tp!1955046 e!4271781)))

(assert (= (and b!7107616 (is-Cons!68759 (exprs!7416 auxCtx!45))) b!7107792))

(declare-fun e!4271784 () Bool)

(assert (=> b!7107620 (= tp!1955047 e!4271784)))

(declare-fun b!7107805 () Bool)

(declare-fun tp!1955090 () Bool)

(assert (=> b!7107805 (= e!4271784 tp!1955090)))

(declare-fun b!7107806 () Bool)

(declare-fun tp!1955091 () Bool)

(declare-fun tp!1955087 () Bool)

(assert (=> b!7107806 (= e!4271784 (and tp!1955091 tp!1955087))))

(declare-fun b!7107803 () Bool)

(assert (=> b!7107803 (= e!4271784 tp_is_empty!45077)))

(declare-fun b!7107804 () Bool)

(declare-fun tp!1955088 () Bool)

(declare-fun tp!1955089 () Bool)

(assert (=> b!7107804 (= e!4271784 (and tp!1955088 tp!1955089))))

(assert (= (and b!7107620 (is-ElementMatch!17922 (regOne!36356 r!11554))) b!7107803))

(assert (= (and b!7107620 (is-Concat!26767 (regOne!36356 r!11554))) b!7107804))

(assert (= (and b!7107620 (is-Star!17922 (regOne!36356 r!11554))) b!7107805))

(assert (= (and b!7107620 (is-Union!17922 (regOne!36356 r!11554))) b!7107806))

(declare-fun e!4271785 () Bool)

(assert (=> b!7107620 (= tp!1955044 e!4271785)))

(declare-fun b!7107809 () Bool)

(declare-fun tp!1955095 () Bool)

(assert (=> b!7107809 (= e!4271785 tp!1955095)))

(declare-fun b!7107810 () Bool)

(declare-fun tp!1955096 () Bool)

(declare-fun tp!1955092 () Bool)

(assert (=> b!7107810 (= e!4271785 (and tp!1955096 tp!1955092))))

(declare-fun b!7107807 () Bool)

(assert (=> b!7107807 (= e!4271785 tp_is_empty!45077)))

(declare-fun b!7107808 () Bool)

(declare-fun tp!1955093 () Bool)

(declare-fun tp!1955094 () Bool)

(assert (=> b!7107808 (= e!4271785 (and tp!1955093 tp!1955094))))

(assert (= (and b!7107620 (is-ElementMatch!17922 (regTwo!36356 r!11554))) b!7107807))

(assert (= (and b!7107620 (is-Concat!26767 (regTwo!36356 r!11554))) b!7107808))

(assert (= (and b!7107620 (is-Star!17922 (regTwo!36356 r!11554))) b!7107809))

(assert (= (and b!7107620 (is-Union!17922 (regTwo!36356 r!11554))) b!7107810))

(declare-fun e!4271786 () Bool)

(assert (=> b!7107614 (= tp!1955042 e!4271786)))

(declare-fun b!7107813 () Bool)

(declare-fun tp!1955100 () Bool)

(assert (=> b!7107813 (= e!4271786 tp!1955100)))

(declare-fun b!7107814 () Bool)

(declare-fun tp!1955101 () Bool)

(declare-fun tp!1955097 () Bool)

(assert (=> b!7107814 (= e!4271786 (and tp!1955101 tp!1955097))))

(declare-fun b!7107811 () Bool)

(assert (=> b!7107811 (= e!4271786 tp_is_empty!45077)))

(declare-fun b!7107812 () Bool)

(declare-fun tp!1955098 () Bool)

(declare-fun tp!1955099 () Bool)

(assert (=> b!7107812 (= e!4271786 (and tp!1955098 tp!1955099))))

(assert (= (and b!7107614 (is-ElementMatch!17922 (reg!18251 r!11554))) b!7107811))

(assert (= (and b!7107614 (is-Concat!26767 (reg!18251 r!11554))) b!7107812))

(assert (= (and b!7107614 (is-Star!17922 (reg!18251 r!11554))) b!7107813))

(assert (= (and b!7107614 (is-Union!17922 (reg!18251 r!11554))) b!7107814))

(declare-fun e!4271787 () Bool)

(assert (=> b!7107623 (= tp!1955041 e!4271787)))

(declare-fun b!7107817 () Bool)

(declare-fun tp!1955105 () Bool)

(assert (=> b!7107817 (= e!4271787 tp!1955105)))

(declare-fun b!7107818 () Bool)

(declare-fun tp!1955106 () Bool)

(declare-fun tp!1955102 () Bool)

(assert (=> b!7107818 (= e!4271787 (and tp!1955106 tp!1955102))))

(declare-fun b!7107815 () Bool)

(assert (=> b!7107815 (= e!4271787 tp_is_empty!45077)))

(declare-fun b!7107816 () Bool)

(declare-fun tp!1955103 () Bool)

(declare-fun tp!1955104 () Bool)

(assert (=> b!7107816 (= e!4271787 (and tp!1955103 tp!1955104))))

(assert (= (and b!7107623 (is-ElementMatch!17922 (regOne!36357 r!11554))) b!7107815))

(assert (= (and b!7107623 (is-Concat!26767 (regOne!36357 r!11554))) b!7107816))

(assert (= (and b!7107623 (is-Star!17922 (regOne!36357 r!11554))) b!7107817))

(assert (= (and b!7107623 (is-Union!17922 (regOne!36357 r!11554))) b!7107818))

(declare-fun e!4271788 () Bool)

(assert (=> b!7107623 (= tp!1955045 e!4271788)))

(declare-fun b!7107821 () Bool)

(declare-fun tp!1955110 () Bool)

(assert (=> b!7107821 (= e!4271788 tp!1955110)))

(declare-fun b!7107822 () Bool)

(declare-fun tp!1955111 () Bool)

(declare-fun tp!1955107 () Bool)

(assert (=> b!7107822 (= e!4271788 (and tp!1955111 tp!1955107))))

(declare-fun b!7107819 () Bool)

(assert (=> b!7107819 (= e!4271788 tp_is_empty!45077)))

(declare-fun b!7107820 () Bool)

(declare-fun tp!1955108 () Bool)

(declare-fun tp!1955109 () Bool)

(assert (=> b!7107820 (= e!4271788 (and tp!1955108 tp!1955109))))

(assert (= (and b!7107623 (is-ElementMatch!17922 (regTwo!36357 r!11554))) b!7107819))

(assert (= (and b!7107623 (is-Concat!26767 (regTwo!36357 r!11554))) b!7107820))

(assert (= (and b!7107623 (is-Star!17922 (regTwo!36357 r!11554))) b!7107821))

(assert (= (and b!7107623 (is-Union!17922 (regTwo!36357 r!11554))) b!7107822))

(push 1)

(assert (not b!7107695))

(assert (not b!7107812))

(assert (not b!7107712))

(assert (not bm!647987))

(assert (not b!7107813))

(assert (not b!7107809))

(assert (not bm!647975))

(assert (not b!7107808))

(assert (not bm!648005))

(assert (not d!2219617))

(assert (not b!7107784))

(assert (not d!2219613))

(assert (not b!7107791))

(assert (not b!7107816))

(assert (not b!7107804))

(assert (not bm!647991))

(assert (not b!7107814))

(assert (not b!7107771))

(assert (not bm!647989))

(assert (not b!7107810))

(assert (not b!7107785))

(assert (not b!7107822))

(assert (not d!2219625))

(assert (not d!2219627))

(assert (not bm!647985))

(assert (not bm!647981))

(assert (not b!7107792))

(assert (not b!7107806))

(assert (not b!7107817))

(assert (not bm!647979))

(assert (not b!7107818))

(assert (not b!7107805))

(assert tp_is_empty!45077)

(assert (not b!7107821))

(assert (not b!7107684))

(assert (not bm!648013))

(assert (not b!7107820))

(assert (not d!2219609))

(assert (not bm!648011))

(assert (not bm!647983))

(assert (not bm!647977))

(assert (not b!7107753))

(assert (not d!2219619))

(assert (not bm!648007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7107935 () Bool)

(declare-fun e!4271846 () (Set Context!13832))

(assert (=> b!7107935 (= e!4271846 (set.insert (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991)) (as set.empty (Set Context!13832))))))

(declare-fun c!1326361 () Bool)

(declare-fun call!648056 () (Set Context!13832))

(declare-fun bm!648047 () Bool)

(declare-fun call!648055 () List!68883)

(assert (=> bm!648047 (= call!648056 (derivationStepZipperDown!2437 (ite c!1326361 (regTwo!36357 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (regOne!36356 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))))) (ite c!1326361 (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991)) (Context!13833 call!648055)) a!1901))))

(declare-fun b!7107936 () Bool)

(declare-fun e!4271844 () (Set Context!13832))

(assert (=> b!7107936 (= e!4271846 e!4271844)))

(assert (=> b!7107936 (= c!1326361 (is-Union!17922 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))))))

(declare-fun b!7107937 () Bool)

(declare-fun e!4271848 () (Set Context!13832))

(declare-fun call!648053 () (Set Context!13832))

(assert (=> b!7107937 (= e!4271848 call!648053)))

(declare-fun bm!648048 () Bool)

(declare-fun call!648052 () (Set Context!13832))

(declare-fun call!648054 () (Set Context!13832))

(assert (=> bm!648048 (= call!648052 call!648054)))

(declare-fun b!7107938 () Bool)

(declare-fun e!4271847 () (Set Context!13832))

(assert (=> b!7107938 (= e!4271847 call!648053)))

(declare-fun c!1326359 () Bool)

(declare-fun c!1326360 () Bool)

(declare-fun bm!648049 () Bool)

(assert (=> bm!648049 (= call!648055 ($colon$colon!2780 (exprs!7416 (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991))) (ite (or c!1326359 c!1326360) (regTwo!36356 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))))))))

(declare-fun b!7107939 () Bool)

(declare-fun e!4271843 () (Set Context!13832))

(assert (=> b!7107939 (= e!4271843 e!4271847)))

(assert (=> b!7107939 (= c!1326360 (is-Concat!26767 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))))))

(declare-fun e!4271845 () Bool)

(declare-fun b!7107940 () Bool)

(assert (=> b!7107940 (= e!4271845 (nullable!7559 (regOne!36356 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))))))))

(declare-fun bm!648050 () Bool)

(declare-fun call!648057 () List!68883)

(assert (=> bm!648050 (= call!648057 call!648055)))

(declare-fun bm!648051 () Bool)

(assert (=> bm!648051 (= call!648054 (derivationStepZipperDown!2437 (ite c!1326361 (regOne!36357 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (ite c!1326359 (regTwo!36356 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (ite c!1326360 (regOne!36356 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (reg!18251 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))))))) (ite (or c!1326361 c!1326359) (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991)) (Context!13833 call!648057)) a!1901))))

(declare-fun b!7107941 () Bool)

(assert (=> b!7107941 (= e!4271848 (as set.empty (Set Context!13832)))))

(declare-fun b!7107943 () Bool)

(assert (=> b!7107943 (= c!1326359 e!4271845)))

(declare-fun res!2901177 () Bool)

(assert (=> b!7107943 (=> (not res!2901177) (not e!4271845))))

(assert (=> b!7107943 (= res!2901177 (is-Concat!26767 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))))))

(assert (=> b!7107943 (= e!4271844 e!4271843)))

(declare-fun bm!648052 () Bool)

(assert (=> bm!648052 (= call!648053 call!648052)))

(declare-fun b!7107944 () Bool)

(assert (=> b!7107944 (= e!4271843 (set.union call!648056 call!648052))))

(declare-fun b!7107945 () Bool)

(assert (=> b!7107945 (= e!4271844 (set.union call!648054 call!648056))))

(declare-fun d!2219651 () Bool)

(declare-fun c!1326363 () Bool)

(assert (=> d!2219651 (= c!1326363 (and (is-ElementMatch!17922 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) (= (c!1326285 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))) a!1901)))))

(assert (=> d!2219651 (= (derivationStepZipperDown!2437 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554))))) (ite (or c!1326304 c!1326302) (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647991)) a!1901) e!4271846)))

(declare-fun c!1326362 () Bool)

(declare-fun b!7107942 () Bool)

(assert (=> b!7107942 (= c!1326362 (is-Star!17922 (ite c!1326304 (regOne!36357 (regOne!36356 r!11554)) (ite c!1326302 (regTwo!36356 (regOne!36356 r!11554)) (ite c!1326303 (regOne!36356 (regOne!36356 r!11554)) (reg!18251 (regOne!36356 r!11554)))))))))

(assert (=> b!7107942 (= e!4271847 e!4271848)))

(assert (= (and d!2219651 c!1326363) b!7107935))

(assert (= (and d!2219651 (not c!1326363)) b!7107936))

(assert (= (and b!7107936 c!1326361) b!7107945))

(assert (= (and b!7107936 (not c!1326361)) b!7107943))

(assert (= (and b!7107943 res!2901177) b!7107940))

(assert (= (and b!7107943 c!1326359) b!7107944))

(assert (= (and b!7107943 (not c!1326359)) b!7107939))

(assert (= (and b!7107939 c!1326360) b!7107938))

(assert (= (and b!7107939 (not c!1326360)) b!7107942))

(assert (= (and b!7107942 c!1326362) b!7107937))

(assert (= (and b!7107942 (not c!1326362)) b!7107941))

(assert (= (or b!7107938 b!7107937) bm!648050))

(assert (= (or b!7107938 b!7107937) bm!648052))

(assert (= (or b!7107944 bm!648052) bm!648048))

(assert (= (or b!7107944 bm!648050) bm!648049))

(assert (= (or b!7107945 b!7107944) bm!648047))

(assert (= (or b!7107945 bm!648048) bm!648051))

(declare-fun m!7830212 () Bool)

(assert (=> bm!648047 m!7830212))

(declare-fun m!7830214 () Bool)

(assert (=> bm!648051 m!7830214))

(declare-fun m!7830216 () Bool)

(assert (=> bm!648049 m!7830216))

(declare-fun m!7830218 () Bool)

(assert (=> b!7107935 m!7830218))

(declare-fun m!7830220 () Bool)

(assert (=> b!7107940 m!7830220))

(assert (=> bm!647985 d!2219651))

(declare-fun d!2219653 () Bool)

(assert (=> d!2219653 (= (nullable!7559 (reg!18251 r!11554)) (nullableFct!2914 (reg!18251 r!11554)))))

(declare-fun bs!1884905 () Bool)

(assert (= bs!1884905 d!2219653))

(declare-fun m!7830222 () Bool)

(assert (=> bs!1884905 m!7830222))

(assert (=> b!7107753 d!2219653))

(declare-fun d!2219655 () Bool)

(assert (=> d!2219655 (= (nullable!7559 (reg!18251 (regTwo!36356 r!11554))) (nullableFct!2914 (reg!18251 (regTwo!36356 r!11554))))))

(declare-fun bs!1884906 () Bool)

(assert (= bs!1884906 d!2219655))

(declare-fun m!7830224 () Bool)

(assert (=> bs!1884906 m!7830224))

(assert (=> b!7107771 d!2219655))

(declare-fun d!2219657 () Bool)

(declare-fun res!2901182 () Bool)

(declare-fun e!4271853 () Bool)

(assert (=> d!2219657 (=> res!2901182 e!4271853)))

(assert (=> d!2219657 (= res!2901182 (is-Nil!68759 (exprs!7416 c!9994)))))

(assert (=> d!2219657 (= (forall!16823 (exprs!7416 c!9994) lambda!431733) e!4271853)))

(declare-fun b!7107950 () Bool)

(declare-fun e!4271854 () Bool)

(assert (=> b!7107950 (= e!4271853 e!4271854)))

(declare-fun res!2901183 () Bool)

(assert (=> b!7107950 (=> (not res!2901183) (not e!4271854))))

(declare-fun dynLambda!28054 (Int Regex!17922) Bool)

(assert (=> b!7107950 (= res!2901183 (dynLambda!28054 lambda!431733 (h!75207 (exprs!7416 c!9994))))))

(declare-fun b!7107951 () Bool)

(assert (=> b!7107951 (= e!4271854 (forall!16823 (t!382702 (exprs!7416 c!9994)) lambda!431733))))

(assert (= (and d!2219657 (not res!2901182)) b!7107950))

(assert (= (and b!7107950 res!2901183) b!7107951))

(declare-fun b_lambda!271377 () Bool)

(assert (=> (not b_lambda!271377) (not b!7107950)))

(declare-fun m!7830226 () Bool)

(assert (=> b!7107950 m!7830226))

(declare-fun m!7830228 () Bool)

(assert (=> b!7107951 m!7830228))

(assert (=> d!2219617 d!2219657))

(declare-fun b!7107954 () Bool)

(declare-fun res!2901184 () Bool)

(declare-fun e!4271855 () Bool)

(assert (=> b!7107954 (=> (not res!2901184) (not e!4271855))))

(declare-fun lt!2559335 () List!68883)

(assert (=> b!7107954 (= res!2901184 (= (size!41383 lt!2559335) (+ (size!41383 (t!382702 (exprs!7416 c!9994))) (size!41383 (exprs!7416 auxCtx!45)))))))

(declare-fun b!7107955 () Bool)

(assert (=> b!7107955 (= e!4271855 (or (not (= (exprs!7416 auxCtx!45) Nil!68759)) (= lt!2559335 (t!382702 (exprs!7416 c!9994)))))))

(declare-fun b!7107953 () Bool)

(declare-fun e!4271856 () List!68883)

(assert (=> b!7107953 (= e!4271856 (Cons!68759 (h!75207 (t!382702 (exprs!7416 c!9994))) (++!16074 (t!382702 (t!382702 (exprs!7416 c!9994))) (exprs!7416 auxCtx!45))))))

(declare-fun d!2219659 () Bool)

(assert (=> d!2219659 e!4271855))

(declare-fun res!2901185 () Bool)

(assert (=> d!2219659 (=> (not res!2901185) (not e!4271855))))

(assert (=> d!2219659 (= res!2901185 (= (content!14008 lt!2559335) (set.union (content!14008 (t!382702 (exprs!7416 c!9994))) (content!14008 (exprs!7416 auxCtx!45)))))))

(assert (=> d!2219659 (= lt!2559335 e!4271856)))

(declare-fun c!1326364 () Bool)

(assert (=> d!2219659 (= c!1326364 (is-Nil!68759 (t!382702 (exprs!7416 c!9994))))))

(assert (=> d!2219659 (= (++!16074 (t!382702 (exprs!7416 c!9994)) (exprs!7416 auxCtx!45)) lt!2559335)))

(declare-fun b!7107952 () Bool)

(assert (=> b!7107952 (= e!4271856 (exprs!7416 auxCtx!45))))

(assert (= (and d!2219659 c!1326364) b!7107952))

(assert (= (and d!2219659 (not c!1326364)) b!7107953))

(assert (= (and d!2219659 res!2901185) b!7107954))

(assert (= (and b!7107954 res!2901184) b!7107955))

(declare-fun m!7830230 () Bool)

(assert (=> b!7107954 m!7830230))

(declare-fun m!7830232 () Bool)

(assert (=> b!7107954 m!7830232))

(assert (=> b!7107954 m!7830148))

(declare-fun m!7830234 () Bool)

(assert (=> b!7107953 m!7830234))

(declare-fun m!7830236 () Bool)

(assert (=> d!2219659 m!7830236))

(declare-fun m!7830238 () Bool)

(assert (=> d!2219659 m!7830238))

(assert (=> d!2219659 m!7830156))

(assert (=> b!7107784 d!2219659))

(declare-fun d!2219661 () Bool)

(assert (=> d!2219661 (= ($colon$colon!2780 (exprs!7416 lt!2559304) (ite (or c!1326309 c!1326310) (regTwo!36356 (regTwo!36356 r!11554)) (regTwo!36356 r!11554))) (Cons!68759 (ite (or c!1326309 c!1326310) (regTwo!36356 (regTwo!36356 r!11554)) (regTwo!36356 r!11554)) (exprs!7416 lt!2559304)))))

(assert (=> bm!647989 d!2219661))

(declare-fun d!2219663 () Bool)

(declare-fun res!2901186 () Bool)

(declare-fun e!4271857 () Bool)

(assert (=> d!2219663 (=> res!2901186 e!4271857)))

(assert (=> d!2219663 (= res!2901186 (is-Nil!68759 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45))))))

(assert (=> d!2219663 (= (forall!16823 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)) lambda!431722) e!4271857)))

(declare-fun b!7107956 () Bool)

(declare-fun e!4271858 () Bool)

(assert (=> b!7107956 (= e!4271857 e!4271858)))

(declare-fun res!2901187 () Bool)

(assert (=> b!7107956 (=> (not res!2901187) (not e!4271858))))

(assert (=> b!7107956 (= res!2901187 (dynLambda!28054 lambda!431722 (h!75207 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)))))))

(declare-fun b!7107957 () Bool)

(assert (=> b!7107957 (= e!4271858 (forall!16823 (t!382702 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45))) lambda!431722))))

(assert (= (and d!2219663 (not res!2901186)) b!7107956))

(assert (= (and b!7107956 res!2901187) b!7107957))

(declare-fun b_lambda!271379 () Bool)

(assert (=> (not b_lambda!271379) (not b!7107956)))

(declare-fun m!7830240 () Bool)

(assert (=> b!7107956 m!7830240))

(declare-fun m!7830242 () Bool)

(assert (=> b!7107957 m!7830242))

(assert (=> d!2219625 d!2219663))

(assert (=> d!2219625 d!2219627))

(declare-fun d!2219665 () Bool)

(assert (=> d!2219665 (forall!16823 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)) lambda!431722)))

(assert (=> d!2219665 true))

(declare-fun _$78!689 () Unit!162515)

(assert (=> d!2219665 (= (choose!54831 (exprs!7416 c!9994) (exprs!7416 auxCtx!45) lambda!431722) _$78!689)))

(declare-fun bs!1884907 () Bool)

(assert (= bs!1884907 d!2219665))

(assert (=> bs!1884907 m!7830050))

(assert (=> bs!1884907 m!7830050))

(assert (=> bs!1884907 m!7830132))

(assert (=> d!2219625 d!2219665))

(declare-fun d!2219667 () Bool)

(declare-fun res!2901188 () Bool)

(declare-fun e!4271859 () Bool)

(assert (=> d!2219667 (=> res!2901188 e!4271859)))

(assert (=> d!2219667 (= res!2901188 (is-Nil!68759 (exprs!7416 c!9994)))))

(assert (=> d!2219667 (= (forall!16823 (exprs!7416 c!9994) lambda!431722) e!4271859)))

(declare-fun b!7107958 () Bool)

(declare-fun e!4271860 () Bool)

(assert (=> b!7107958 (= e!4271859 e!4271860)))

(declare-fun res!2901189 () Bool)

(assert (=> b!7107958 (=> (not res!2901189) (not e!4271860))))

(assert (=> b!7107958 (= res!2901189 (dynLambda!28054 lambda!431722 (h!75207 (exprs!7416 c!9994))))))

(declare-fun b!7107959 () Bool)

(assert (=> b!7107959 (= e!4271860 (forall!16823 (t!382702 (exprs!7416 c!9994)) lambda!431722))))

(assert (= (and d!2219667 (not res!2901188)) b!7107958))

(assert (= (and b!7107958 res!2901189) b!7107959))

(declare-fun b_lambda!271381 () Bool)

(assert (=> (not b_lambda!271381) (not b!7107958)))

(declare-fun m!7830244 () Bool)

(assert (=> b!7107958 m!7830244))

(declare-fun m!7830246 () Bool)

(assert (=> b!7107959 m!7830246))

(assert (=> d!2219625 d!2219667))

(declare-fun b!7107960 () Bool)

(declare-fun e!4271864 () (Set Context!13832))

(assert (=> b!7107960 (= e!4271864 (set.insert (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997)) (as set.empty (Set Context!13832))))))

(declare-fun c!1326367 () Bool)

(declare-fun call!648062 () (Set Context!13832))

(declare-fun call!648061 () List!68883)

(declare-fun bm!648053 () Bool)

(assert (=> bm!648053 (= call!648062 (derivationStepZipperDown!2437 (ite c!1326367 (regTwo!36357 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (regOne!36356 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))))) (ite c!1326367 (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997)) (Context!13833 call!648061)) a!1901))))

(declare-fun b!7107961 () Bool)

(declare-fun e!4271862 () (Set Context!13832))

(assert (=> b!7107961 (= e!4271864 e!4271862)))

(assert (=> b!7107961 (= c!1326367 (is-Union!17922 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))))))

(declare-fun b!7107962 () Bool)

(declare-fun e!4271866 () (Set Context!13832))

(declare-fun call!648059 () (Set Context!13832))

(assert (=> b!7107962 (= e!4271866 call!648059)))

(declare-fun bm!648054 () Bool)

(declare-fun call!648058 () (Set Context!13832))

(declare-fun call!648060 () (Set Context!13832))

(assert (=> bm!648054 (= call!648058 call!648060)))

(declare-fun b!7107963 () Bool)

(declare-fun e!4271865 () (Set Context!13832))

(assert (=> b!7107963 (= e!4271865 call!648059)))

(declare-fun bm!648055 () Bool)

(declare-fun c!1326365 () Bool)

(declare-fun c!1326366 () Bool)

(assert (=> bm!648055 (= call!648061 ($colon$colon!2780 (exprs!7416 (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997))) (ite (or c!1326365 c!1326366) (regTwo!36356 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))))))))

(declare-fun b!7107964 () Bool)

(declare-fun e!4271861 () (Set Context!13832))

(assert (=> b!7107964 (= e!4271861 e!4271865)))

(assert (=> b!7107964 (= c!1326366 (is-Concat!26767 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))))))

(declare-fun e!4271863 () Bool)

(declare-fun b!7107965 () Bool)

(assert (=> b!7107965 (= e!4271863 (nullable!7559 (regOne!36356 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))))))))

(declare-fun bm!648056 () Bool)

(declare-fun call!648063 () List!68883)

(assert (=> bm!648056 (= call!648063 call!648061)))

(declare-fun bm!648057 () Bool)

(assert (=> bm!648057 (= call!648060 (derivationStepZipperDown!2437 (ite c!1326367 (regOne!36357 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (ite c!1326365 (regTwo!36356 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (ite c!1326366 (regOne!36356 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (reg!18251 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))))))) (ite (or c!1326367 c!1326365) (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997)) (Context!13833 call!648063)) a!1901))))

(declare-fun b!7107966 () Bool)

(assert (=> b!7107966 (= e!4271866 (as set.empty (Set Context!13832)))))

(declare-fun b!7107968 () Bool)

(assert (=> b!7107968 (= c!1326365 e!4271863)))

(declare-fun res!2901190 () Bool)

(assert (=> b!7107968 (=> (not res!2901190) (not e!4271863))))

(assert (=> b!7107968 (= res!2901190 (is-Concat!26767 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))))))

(assert (=> b!7107968 (= e!4271862 e!4271861)))

(declare-fun bm!648058 () Bool)

(assert (=> bm!648058 (= call!648059 call!648058)))

(declare-fun b!7107969 () Bool)

(assert (=> b!7107969 (= e!4271861 (set.union call!648062 call!648058))))

(declare-fun b!7107970 () Bool)

(assert (=> b!7107970 (= e!4271862 (set.union call!648060 call!648062))))

(declare-fun d!2219669 () Bool)

(declare-fun c!1326369 () Bool)

(assert (=> d!2219669 (= c!1326369 (and (is-ElementMatch!17922 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) (= (c!1326285 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))) a!1901)))))

(assert (=> d!2219669 (= (derivationStepZipperDown!2437 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554))))) (ite (or c!1326311 c!1326309) lt!2559304 (Context!13833 call!647997)) a!1901) e!4271864)))

(declare-fun b!7107967 () Bool)

(declare-fun c!1326368 () Bool)

(assert (=> b!7107967 (= c!1326368 (is-Star!17922 (ite c!1326311 (regOne!36357 (regTwo!36356 r!11554)) (ite c!1326309 (regTwo!36356 (regTwo!36356 r!11554)) (ite c!1326310 (regOne!36356 (regTwo!36356 r!11554)) (reg!18251 (regTwo!36356 r!11554)))))))))

(assert (=> b!7107967 (= e!4271865 e!4271866)))

(assert (= (and d!2219669 c!1326369) b!7107960))

(assert (= (and d!2219669 (not c!1326369)) b!7107961))

(assert (= (and b!7107961 c!1326367) b!7107970))

(assert (= (and b!7107961 (not c!1326367)) b!7107968))

(assert (= (and b!7107968 res!2901190) b!7107965))

(assert (= (and b!7107968 c!1326365) b!7107969))

(assert (= (and b!7107968 (not c!1326365)) b!7107964))

(assert (= (and b!7107964 c!1326366) b!7107963))

(assert (= (and b!7107964 (not c!1326366)) b!7107967))

(assert (= (and b!7107967 c!1326368) b!7107962))

(assert (= (and b!7107967 (not c!1326368)) b!7107966))

(assert (= (or b!7107963 b!7107962) bm!648056))

(assert (= (or b!7107963 b!7107962) bm!648058))

(assert (= (or b!7107969 bm!648058) bm!648054))

(assert (= (or b!7107969 bm!648056) bm!648055))

(assert (= (or b!7107970 b!7107969) bm!648053))

(assert (= (or b!7107970 bm!648054) bm!648057))

(declare-fun m!7830248 () Bool)

(assert (=> bm!648053 m!7830248))

(declare-fun m!7830250 () Bool)

(assert (=> bm!648057 m!7830250))

(declare-fun m!7830252 () Bool)

(assert (=> bm!648055 m!7830252))

(declare-fun m!7830254 () Bool)

(assert (=> b!7107960 m!7830254))

(declare-fun m!7830256 () Bool)

(assert (=> b!7107965 m!7830256))

(assert (=> bm!647991 d!2219669))

(declare-fun b!7107971 () Bool)

(declare-fun e!4271869 () Bool)

(declare-fun call!648066 () Bool)

(assert (=> b!7107971 (= e!4271869 call!648066)))

(declare-fun b!7107972 () Bool)

(declare-fun res!2901193 () Bool)

(assert (=> b!7107972 (=> (not res!2901193) (not e!4271869))))

(declare-fun call!648065 () Bool)

(assert (=> b!7107972 (= res!2901193 call!648065)))

(declare-fun e!4271867 () Bool)

(assert (=> b!7107972 (= e!4271867 e!4271869)))

(declare-fun b!7107973 () Bool)

(declare-fun e!4271872 () Bool)

(declare-fun e!4271868 () Bool)

(assert (=> b!7107973 (= e!4271872 e!4271868)))

(declare-fun c!1326370 () Bool)

(assert (=> b!7107973 (= c!1326370 (is-Star!17922 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(declare-fun b!7107974 () Bool)

(declare-fun res!2901192 () Bool)

(declare-fun e!4271870 () Bool)

(assert (=> b!7107974 (=> res!2901192 e!4271870)))

(assert (=> b!7107974 (= res!2901192 (not (is-Concat!26767 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))))

(assert (=> b!7107974 (= e!4271867 e!4271870)))

(declare-fun b!7107975 () Bool)

(declare-fun e!4271873 () Bool)

(declare-fun call!648064 () Bool)

(assert (=> b!7107975 (= e!4271873 call!648064)))

(declare-fun b!7107976 () Bool)

(assert (=> b!7107976 (= e!4271868 e!4271873)))

(declare-fun res!2901191 () Bool)

(assert (=> b!7107976 (= res!2901191 (not (nullable!7559 (reg!18251 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))))

(assert (=> b!7107976 (=> (not res!2901191) (not e!4271873))))

(declare-fun b!7107977 () Bool)

(declare-fun e!4271871 () Bool)

(assert (=> b!7107977 (= e!4271871 call!648065)))

(declare-fun d!2219671 () Bool)

(declare-fun res!2901195 () Bool)

(assert (=> d!2219671 (=> res!2901195 e!4271872)))

(assert (=> d!2219671 (= res!2901195 (is-ElementMatch!17922 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(assert (=> d!2219671 (= (validRegex!9195 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))) e!4271872)))

(declare-fun b!7107978 () Bool)

(assert (=> b!7107978 (= e!4271868 e!4271867)))

(declare-fun c!1326371 () Bool)

(assert (=> b!7107978 (= c!1326371 (is-Union!17922 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(declare-fun bm!648059 () Bool)

(assert (=> bm!648059 (= call!648064 (validRegex!9195 (ite c!1326370 (reg!18251 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))) (ite c!1326371 (regTwo!36357 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))) (regOne!36356 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))))))

(declare-fun bm!648060 () Bool)

(assert (=> bm!648060 (= call!648066 call!648064)))

(declare-fun bm!648061 () Bool)

(assert (=> bm!648061 (= call!648065 (validRegex!9195 (ite c!1326371 (regOne!36357 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))) (regTwo!36356 (ite c!1326320 (reg!18251 r!11554) (ite c!1326321 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))))

(declare-fun b!7107979 () Bool)

(assert (=> b!7107979 (= e!4271870 e!4271871)))

(declare-fun res!2901194 () Bool)

(assert (=> b!7107979 (=> (not res!2901194) (not e!4271871))))

(assert (=> b!7107979 (= res!2901194 call!648066)))

(assert (= (and d!2219671 (not res!2901195)) b!7107973))

(assert (= (and b!7107973 c!1326370) b!7107976))

(assert (= (and b!7107973 (not c!1326370)) b!7107978))

(assert (= (and b!7107976 res!2901191) b!7107975))

(assert (= (and b!7107978 c!1326371) b!7107972))

(assert (= (and b!7107978 (not c!1326371)) b!7107974))

(assert (= (and b!7107972 res!2901193) b!7107971))

(assert (= (and b!7107974 (not res!2901192)) b!7107979))

(assert (= (and b!7107979 res!2901194) b!7107977))

(assert (= (or b!7107972 b!7107977) bm!648061))

(assert (= (or b!7107971 b!7107979) bm!648060))

(assert (= (or b!7107975 bm!648060) bm!648059))

(declare-fun m!7830258 () Bool)

(assert (=> b!7107976 m!7830258))

(declare-fun m!7830260 () Bool)

(assert (=> bm!648059 m!7830260))

(declare-fun m!7830262 () Bool)

(assert (=> bm!648061 m!7830262))

(assert (=> bm!648005 d!2219671))

(declare-fun b!7107980 () Bool)

(declare-fun e!4271876 () Bool)

(declare-fun call!648069 () Bool)

(assert (=> b!7107980 (= e!4271876 call!648069)))

(declare-fun b!7107981 () Bool)

(declare-fun res!2901198 () Bool)

(assert (=> b!7107981 (=> (not res!2901198) (not e!4271876))))

(declare-fun call!648068 () Bool)

(assert (=> b!7107981 (= res!2901198 call!648068)))

(declare-fun e!4271874 () Bool)

(assert (=> b!7107981 (= e!4271874 e!4271876)))

(declare-fun b!7107982 () Bool)

(declare-fun e!4271879 () Bool)

(declare-fun e!4271875 () Bool)

(assert (=> b!7107982 (= e!4271879 e!4271875)))

(declare-fun c!1326372 () Bool)

(assert (=> b!7107982 (= c!1326372 (is-Star!17922 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(declare-fun b!7107983 () Bool)

(declare-fun res!2901197 () Bool)

(declare-fun e!4271877 () Bool)

(assert (=> b!7107983 (=> res!2901197 e!4271877)))

(assert (=> b!7107983 (= res!2901197 (not (is-Concat!26767 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))))

(assert (=> b!7107983 (= e!4271874 e!4271877)))

(declare-fun b!7107984 () Bool)

(declare-fun e!4271880 () Bool)

(declare-fun call!648067 () Bool)

(assert (=> b!7107984 (= e!4271880 call!648067)))

(declare-fun b!7107985 () Bool)

(assert (=> b!7107985 (= e!4271875 e!4271880)))

(declare-fun res!2901196 () Bool)

(assert (=> b!7107985 (= res!2901196 (not (nullable!7559 (reg!18251 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))))

(assert (=> b!7107985 (=> (not res!2901196) (not e!4271880))))

(declare-fun b!7107986 () Bool)

(declare-fun e!4271878 () Bool)

(assert (=> b!7107986 (= e!4271878 call!648068)))

(declare-fun d!2219673 () Bool)

(declare-fun res!2901200 () Bool)

(assert (=> d!2219673 (=> res!2901200 e!4271879)))

(assert (=> d!2219673 (= res!2901200 (is-ElementMatch!17922 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(assert (=> d!2219673 (= (validRegex!9195 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))) e!4271879)))

(declare-fun b!7107987 () Bool)

(assert (=> b!7107987 (= e!4271875 e!4271874)))

(declare-fun c!1326373 () Bool)

(assert (=> b!7107987 (= c!1326373 (is-Union!17922 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(declare-fun bm!648062 () Bool)

(assert (=> bm!648062 (= call!648067 (validRegex!9195 (ite c!1326372 (reg!18251 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))) (ite c!1326373 (regTwo!36357 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))) (regOne!36356 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))))))

(declare-fun bm!648063 () Bool)

(assert (=> bm!648063 (= call!648069 call!648067)))

(declare-fun bm!648064 () Bool)

(assert (=> bm!648064 (= call!648068 (validRegex!9195 (ite c!1326373 (regOne!36357 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))) (regTwo!36356 (ite c!1326324 (reg!18251 (regTwo!36356 r!11554)) (ite c!1326325 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))))

(declare-fun b!7107988 () Bool)

(assert (=> b!7107988 (= e!4271877 e!4271878)))

(declare-fun res!2901199 () Bool)

(assert (=> b!7107988 (=> (not res!2901199) (not e!4271878))))

(assert (=> b!7107988 (= res!2901199 call!648069)))

(assert (= (and d!2219673 (not res!2901200)) b!7107982))

(assert (= (and b!7107982 c!1326372) b!7107985))

(assert (= (and b!7107982 (not c!1326372)) b!7107987))

(assert (= (and b!7107985 res!2901196) b!7107984))

(assert (= (and b!7107987 c!1326373) b!7107981))

(assert (= (and b!7107987 (not c!1326373)) b!7107983))

(assert (= (and b!7107981 res!2901198) b!7107980))

(assert (= (and b!7107983 (not res!2901197)) b!7107988))

(assert (= (and b!7107988 res!2901199) b!7107986))

(assert (= (or b!7107981 b!7107986) bm!648064))

(assert (= (or b!7107980 b!7107988) bm!648063))

(assert (= (or b!7107984 bm!648063) bm!648062))

(declare-fun m!7830264 () Bool)

(assert (=> b!7107985 m!7830264))

(declare-fun m!7830266 () Bool)

(assert (=> bm!648062 m!7830266))

(declare-fun m!7830268 () Bool)

(assert (=> bm!648064 m!7830268))

(assert (=> bm!648011 d!2219673))

(declare-fun d!2219675 () Bool)

(assert (=> d!2219675 (= (nullable!7559 (regOne!36356 (regTwo!36356 r!11554))) (nullableFct!2914 (regOne!36356 (regTwo!36356 r!11554))))))

(declare-fun bs!1884908 () Bool)

(assert (= bs!1884908 d!2219675))

(declare-fun m!7830270 () Bool)

(assert (=> bs!1884908 m!7830270))

(assert (=> b!7107712 d!2219675))

(declare-fun d!2219677 () Bool)

(declare-fun lt!2559338 () Int)

(assert (=> d!2219677 (>= lt!2559338 0)))

(declare-fun e!4271883 () Int)

(assert (=> d!2219677 (= lt!2559338 e!4271883)))

(declare-fun c!1326376 () Bool)

(assert (=> d!2219677 (= c!1326376 (is-Nil!68759 lt!2559331))))

(assert (=> d!2219677 (= (size!41383 lt!2559331) lt!2559338)))

(declare-fun b!7107993 () Bool)

(assert (=> b!7107993 (= e!4271883 0)))

(declare-fun b!7107994 () Bool)

(assert (=> b!7107994 (= e!4271883 (+ 1 (size!41383 (t!382702 lt!2559331))))))

(assert (= (and d!2219677 c!1326376) b!7107993))

(assert (= (and d!2219677 (not c!1326376)) b!7107994))

(declare-fun m!7830272 () Bool)

(assert (=> b!7107994 m!7830272))

(assert (=> b!7107785 d!2219677))

(declare-fun d!2219679 () Bool)

(declare-fun lt!2559339 () Int)

(assert (=> d!2219679 (>= lt!2559339 0)))

(declare-fun e!4271884 () Int)

(assert (=> d!2219679 (= lt!2559339 e!4271884)))

(declare-fun c!1326377 () Bool)

(assert (=> d!2219679 (= c!1326377 (is-Nil!68759 (exprs!7416 c!9994)))))

(assert (=> d!2219679 (= (size!41383 (exprs!7416 c!9994)) lt!2559339)))

(declare-fun b!7107995 () Bool)

(assert (=> b!7107995 (= e!4271884 0)))

(declare-fun b!7107996 () Bool)

(assert (=> b!7107996 (= e!4271884 (+ 1 (size!41383 (t!382702 (exprs!7416 c!9994)))))))

(assert (= (and d!2219679 c!1326377) b!7107995))

(assert (= (and d!2219679 (not c!1326377)) b!7107996))

(assert (=> b!7107996 m!7830232))

(assert (=> b!7107785 d!2219679))

(declare-fun d!2219681 () Bool)

(declare-fun lt!2559340 () Int)

(assert (=> d!2219681 (>= lt!2559340 0)))

(declare-fun e!4271885 () Int)

(assert (=> d!2219681 (= lt!2559340 e!4271885)))

(declare-fun c!1326378 () Bool)

(assert (=> d!2219681 (= c!1326378 (is-Nil!68759 (exprs!7416 auxCtx!45)))))

(assert (=> d!2219681 (= (size!41383 (exprs!7416 auxCtx!45)) lt!2559340)))

(declare-fun b!7107997 () Bool)

(assert (=> b!7107997 (= e!4271885 0)))

(declare-fun b!7107998 () Bool)

(assert (=> b!7107998 (= e!4271885 (+ 1 (size!41383 (t!382702 (exprs!7416 auxCtx!45)))))))

(assert (= (and d!2219681 c!1326378) b!7107997))

(assert (= (and d!2219681 (not c!1326378)) b!7107998))

(declare-fun m!7830274 () Bool)

(assert (=> b!7107998 m!7830274))

(assert (=> b!7107785 d!2219681))

(declare-fun b!7107999 () Bool)

(declare-fun e!4271888 () Bool)

(declare-fun call!648072 () Bool)

(assert (=> b!7107999 (= e!4271888 call!648072)))

(declare-fun b!7108000 () Bool)

(declare-fun res!2901203 () Bool)

(assert (=> b!7108000 (=> (not res!2901203) (not e!4271888))))

(declare-fun call!648071 () Bool)

(assert (=> b!7108000 (= res!2901203 call!648071)))

(declare-fun e!4271886 () Bool)

(assert (=> b!7108000 (= e!4271886 e!4271888)))

(declare-fun b!7108001 () Bool)

(declare-fun e!4271891 () Bool)

(declare-fun e!4271887 () Bool)

(assert (=> b!7108001 (= e!4271891 e!4271887)))

(declare-fun c!1326379 () Bool)

(assert (=> b!7108001 (= c!1326379 (is-Star!17922 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))

(declare-fun b!7108002 () Bool)

(declare-fun res!2901202 () Bool)

(declare-fun e!4271889 () Bool)

(assert (=> b!7108002 (=> res!2901202 e!4271889)))

(assert (=> b!7108002 (= res!2901202 (not (is-Concat!26767 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554))))))))

(assert (=> b!7108002 (= e!4271886 e!4271889)))

(declare-fun b!7108003 () Bool)

(declare-fun e!4271892 () Bool)

(declare-fun call!648070 () Bool)

(assert (=> b!7108003 (= e!4271892 call!648070)))

(declare-fun b!7108004 () Bool)

(assert (=> b!7108004 (= e!4271887 e!4271892)))

(declare-fun res!2901201 () Bool)

(assert (=> b!7108004 (= res!2901201 (not (nullable!7559 (reg!18251 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))))

(assert (=> b!7108004 (=> (not res!2901201) (not e!4271892))))

(declare-fun b!7108005 () Bool)

(declare-fun e!4271890 () Bool)

(assert (=> b!7108005 (= e!4271890 call!648071)))

(declare-fun d!2219683 () Bool)

(declare-fun res!2901205 () Bool)

(assert (=> d!2219683 (=> res!2901205 e!4271891)))

(assert (=> d!2219683 (= res!2901205 (is-ElementMatch!17922 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))

(assert (=> d!2219683 (= (validRegex!9195 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))) e!4271891)))

(declare-fun b!7108006 () Bool)

(assert (=> b!7108006 (= e!4271887 e!4271886)))

(declare-fun c!1326380 () Bool)

(assert (=> b!7108006 (= c!1326380 (is-Union!17922 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))

(declare-fun bm!648065 () Bool)

(assert (=> bm!648065 (= call!648070 (validRegex!9195 (ite c!1326379 (reg!18251 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))) (ite c!1326380 (regTwo!36357 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))) (regOne!36356 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554))))))))))

(declare-fun bm!648066 () Bool)

(assert (=> bm!648066 (= call!648072 call!648070)))

(declare-fun bm!648067 () Bool)

(assert (=> bm!648067 (= call!648071 (validRegex!9195 (ite c!1326380 (regOne!36357 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))) (regTwo!36356 (ite c!1326325 (regOne!36357 (regTwo!36356 r!11554)) (regTwo!36356 (regTwo!36356 r!11554)))))))))

(declare-fun b!7108007 () Bool)

(assert (=> b!7108007 (= e!4271889 e!4271890)))

(declare-fun res!2901204 () Bool)

(assert (=> b!7108007 (=> (not res!2901204) (not e!4271890))))

(assert (=> b!7108007 (= res!2901204 call!648072)))

(assert (= (and d!2219683 (not res!2901205)) b!7108001))

(assert (= (and b!7108001 c!1326379) b!7108004))

(assert (= (and b!7108001 (not c!1326379)) b!7108006))

(assert (= (and b!7108004 res!2901201) b!7108003))

(assert (= (and b!7108006 c!1326380) b!7108000))

(assert (= (and b!7108006 (not c!1326380)) b!7108002))

(assert (= (and b!7108000 res!2901203) b!7107999))

(assert (= (and b!7108002 (not res!2901202)) b!7108007))

(assert (= (and b!7108007 res!2901204) b!7108005))

(assert (= (or b!7108000 b!7108005) bm!648067))

(assert (= (or b!7107999 b!7108007) bm!648066))

(assert (= (or b!7108003 bm!648066) bm!648065))

(declare-fun m!7830276 () Bool)

(assert (=> b!7108004 m!7830276))

(declare-fun m!7830278 () Bool)

(assert (=> bm!648065 m!7830278))

(declare-fun m!7830280 () Bool)

(assert (=> bm!648067 m!7830280))

(assert (=> bm!648013 d!2219683))

(declare-fun b!7108008 () Bool)

(declare-fun e!4271895 () Bool)

(declare-fun call!648075 () Bool)

(assert (=> b!7108008 (= e!4271895 call!648075)))

(declare-fun b!7108009 () Bool)

(declare-fun res!2901208 () Bool)

(assert (=> b!7108009 (=> (not res!2901208) (not e!4271895))))

(declare-fun call!648074 () Bool)

(assert (=> b!7108009 (= res!2901208 call!648074)))

(declare-fun e!4271893 () Bool)

(assert (=> b!7108009 (= e!4271893 e!4271895)))

(declare-fun b!7108010 () Bool)

(declare-fun e!4271898 () Bool)

(declare-fun e!4271894 () Bool)

(assert (=> b!7108010 (= e!4271898 e!4271894)))

(declare-fun c!1326381 () Bool)

(assert (=> b!7108010 (= c!1326381 (is-Star!17922 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))

(declare-fun b!7108011 () Bool)

(declare-fun res!2901207 () Bool)

(declare-fun e!4271896 () Bool)

(assert (=> b!7108011 (=> res!2901207 e!4271896)))

(assert (=> b!7108011 (= res!2901207 (not (is-Concat!26767 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554)))))))

(assert (=> b!7108011 (= e!4271893 e!4271896)))

(declare-fun b!7108012 () Bool)

(declare-fun e!4271899 () Bool)

(declare-fun call!648073 () Bool)

(assert (=> b!7108012 (= e!4271899 call!648073)))

(declare-fun b!7108013 () Bool)

(assert (=> b!7108013 (= e!4271894 e!4271899)))

(declare-fun res!2901206 () Bool)

(assert (=> b!7108013 (= res!2901206 (not (nullable!7559 (reg!18251 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))))

(assert (=> b!7108013 (=> (not res!2901206) (not e!4271899))))

(declare-fun b!7108014 () Bool)

(declare-fun e!4271897 () Bool)

(assert (=> b!7108014 (= e!4271897 call!648074)))

(declare-fun d!2219685 () Bool)

(declare-fun res!2901210 () Bool)

(assert (=> d!2219685 (=> res!2901210 e!4271898)))

(assert (=> d!2219685 (= res!2901210 (is-ElementMatch!17922 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))

(assert (=> d!2219685 (= (validRegex!9195 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))) e!4271898)))

(declare-fun b!7108015 () Bool)

(assert (=> b!7108015 (= e!4271894 e!4271893)))

(declare-fun c!1326382 () Bool)

(assert (=> b!7108015 (= c!1326382 (is-Union!17922 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))

(declare-fun bm!648068 () Bool)

(assert (=> bm!648068 (= call!648073 (validRegex!9195 (ite c!1326381 (reg!18251 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))) (ite c!1326382 (regTwo!36357 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))) (regOne!36356 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554)))))))))

(declare-fun bm!648069 () Bool)

(assert (=> bm!648069 (= call!648075 call!648073)))

(declare-fun bm!648070 () Bool)

(assert (=> bm!648070 (= call!648074 (validRegex!9195 (ite c!1326382 (regOne!36357 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))) (regTwo!36356 (ite c!1326321 (regOne!36357 r!11554) (regTwo!36356 r!11554))))))))

(declare-fun b!7108016 () Bool)

(assert (=> b!7108016 (= e!4271896 e!4271897)))

(declare-fun res!2901209 () Bool)

(assert (=> b!7108016 (=> (not res!2901209) (not e!4271897))))

(assert (=> b!7108016 (= res!2901209 call!648075)))

(assert (= (and d!2219685 (not res!2901210)) b!7108010))

(assert (= (and b!7108010 c!1326381) b!7108013))

(assert (= (and b!7108010 (not c!1326381)) b!7108015))

(assert (= (and b!7108013 res!2901206) b!7108012))

(assert (= (and b!7108015 c!1326382) b!7108009))

(assert (= (and b!7108015 (not c!1326382)) b!7108011))

(assert (= (and b!7108009 res!2901208) b!7108008))

(assert (= (and b!7108011 (not res!2901207)) b!7108016))

(assert (= (and b!7108016 res!2901209) b!7108014))

(assert (= (or b!7108009 b!7108014) bm!648070))

(assert (= (or b!7108008 b!7108016) bm!648069))

(assert (= (or b!7108012 bm!648069) bm!648068))

(declare-fun m!7830282 () Bool)

(assert (=> b!7108013 m!7830282))

(declare-fun m!7830284 () Bool)

(assert (=> bm!648068 m!7830284))

(declare-fun m!7830286 () Bool)

(assert (=> bm!648070 m!7830286))

(assert (=> bm!648007 d!2219685))

(declare-fun d!2219687 () Bool)

(declare-fun res!2901211 () Bool)

(declare-fun e!4271900 () Bool)

(assert (=> d!2219687 (=> res!2901211 e!4271900)))

(assert (=> d!2219687 (= res!2901211 (is-Nil!68759 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554))))))))

(assert (=> d!2219687 (= (forall!16823 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))) lambda!431732) e!4271900)))

(declare-fun b!7108017 () Bool)

(declare-fun e!4271901 () Bool)

(assert (=> b!7108017 (= e!4271900 e!4271901)))

(declare-fun res!2901212 () Bool)

(assert (=> b!7108017 (=> (not res!2901212) (not e!4271901))))

(assert (=> b!7108017 (= res!2901212 (dynLambda!28054 lambda!431732 (h!75207 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))))))))

(declare-fun b!7108018 () Bool)

(assert (=> b!7108018 (= e!4271901 (forall!16823 (t!382702 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554))))) lambda!431732))))

(assert (= (and d!2219687 (not res!2901211)) b!7108017))

(assert (= (and b!7108017 res!2901212) b!7108018))

(declare-fun b_lambda!271383 () Bool)

(assert (=> (not b_lambda!271383) (not b!7108017)))

(declare-fun m!7830288 () Bool)

(assert (=> b!7108017 m!7830288))

(declare-fun m!7830290 () Bool)

(assert (=> b!7108018 m!7830290))

(assert (=> d!2219609 d!2219687))

(declare-fun d!2219689 () Bool)

(declare-fun res!2901213 () Bool)

(declare-fun e!4271902 () Bool)

(assert (=> d!2219689 (=> res!2901213 e!4271902)))

(assert (=> d!2219689 (= res!2901213 (is-Nil!68759 (exprs!7416 auxCtx!45)))))

(assert (=> d!2219689 (= (forall!16823 (exprs!7416 auxCtx!45) lambda!431734) e!4271902)))

(declare-fun b!7108019 () Bool)

(declare-fun e!4271903 () Bool)

(assert (=> b!7108019 (= e!4271902 e!4271903)))

(declare-fun res!2901214 () Bool)

(assert (=> b!7108019 (=> (not res!2901214) (not e!4271903))))

(assert (=> b!7108019 (= res!2901214 (dynLambda!28054 lambda!431734 (h!75207 (exprs!7416 auxCtx!45))))))

(declare-fun b!7108020 () Bool)

(assert (=> b!7108020 (= e!4271903 (forall!16823 (t!382702 (exprs!7416 auxCtx!45)) lambda!431734))))

(assert (= (and d!2219689 (not res!2901213)) b!7108019))

(assert (= (and b!7108019 res!2901214) b!7108020))

(declare-fun b_lambda!271385 () Bool)

(assert (=> (not b_lambda!271385) (not b!7108019)))

(declare-fun m!7830292 () Bool)

(assert (=> b!7108019 m!7830292))

(declare-fun m!7830294 () Bool)

(assert (=> b!7108020 m!7830294))

(assert (=> d!2219619 d!2219689))

(declare-fun b!7108021 () Bool)

(declare-fun e!4271907 () (Set Context!13832))

(assert (=> b!7108021 (= e!4271907 (set.insert (ite c!1326299 lt!2559304 (Context!13833 call!647983)) (as set.empty (Set Context!13832))))))

(declare-fun c!1326385 () Bool)

(declare-fun call!648080 () (Set Context!13832))

(declare-fun call!648079 () List!68883)

(declare-fun bm!648071 () Bool)

(assert (=> bm!648071 (= call!648080 (derivationStepZipperDown!2437 (ite c!1326385 (regTwo!36357 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (regOne!36356 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)))) (ite c!1326385 (ite c!1326299 lt!2559304 (Context!13833 call!647983)) (Context!13833 call!648079)) a!1901))))

(declare-fun b!7108022 () Bool)

(declare-fun e!4271905 () (Set Context!13832))

(assert (=> b!7108022 (= e!4271907 e!4271905)))

(assert (=> b!7108022 (= c!1326385 (is-Union!17922 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))

(declare-fun b!7108023 () Bool)

(declare-fun e!4271909 () (Set Context!13832))

(declare-fun call!648077 () (Set Context!13832))

(assert (=> b!7108023 (= e!4271909 call!648077)))

(declare-fun bm!648072 () Bool)

(declare-fun call!648076 () (Set Context!13832))

(declare-fun call!648078 () (Set Context!13832))

(assert (=> bm!648072 (= call!648076 call!648078)))

(declare-fun b!7108024 () Bool)

(declare-fun e!4271908 () (Set Context!13832))

(assert (=> b!7108024 (= e!4271908 call!648077)))

(declare-fun bm!648073 () Bool)

(declare-fun c!1326383 () Bool)

(declare-fun c!1326384 () Bool)

(assert (=> bm!648073 (= call!648079 ($colon$colon!2780 (exprs!7416 (ite c!1326299 lt!2559304 (Context!13833 call!647983))) (ite (or c!1326383 c!1326384) (regTwo!36356 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(declare-fun b!7108025 () Bool)

(declare-fun e!4271904 () (Set Context!13832))

(assert (=> b!7108025 (= e!4271904 e!4271908)))

(assert (=> b!7108025 (= c!1326384 (is-Concat!26767 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))

(declare-fun b!7108026 () Bool)

(declare-fun e!4271906 () Bool)

(assert (=> b!7108026 (= e!4271906 (nullable!7559 (regOne!36356 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))))

(declare-fun bm!648074 () Bool)

(declare-fun call!648081 () List!68883)

(assert (=> bm!648074 (= call!648081 call!648079)))

(declare-fun bm!648075 () Bool)

(assert (=> bm!648075 (= call!648078 (derivationStepZipperDown!2437 (ite c!1326385 (regOne!36357 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (ite c!1326383 (regTwo!36356 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (ite c!1326384 (regOne!36356 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (reg!18251 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)))))) (ite (or c!1326385 c!1326383) (ite c!1326299 lt!2559304 (Context!13833 call!647983)) (Context!13833 call!648081)) a!1901))))

(declare-fun b!7108027 () Bool)

(assert (=> b!7108027 (= e!4271909 (as set.empty (Set Context!13832)))))

(declare-fun b!7108029 () Bool)

(assert (=> b!7108029 (= c!1326383 e!4271906)))

(declare-fun res!2901215 () Bool)

(assert (=> b!7108029 (=> (not res!2901215) (not e!4271906))))

(assert (=> b!7108029 (= res!2901215 (is-Concat!26767 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))

(assert (=> b!7108029 (= e!4271905 e!4271904)))

(declare-fun bm!648076 () Bool)

(assert (=> bm!648076 (= call!648077 call!648076)))

(declare-fun b!7108030 () Bool)

(assert (=> b!7108030 (= e!4271904 (set.union call!648080 call!648076))))

(declare-fun b!7108031 () Bool)

(assert (=> b!7108031 (= e!4271905 (set.union call!648078 call!648080))))

(declare-fun d!2219691 () Bool)

(declare-fun c!1326387 () Bool)

(assert (=> d!2219691 (= c!1326387 (and (is-ElementMatch!17922 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) (= (c!1326285 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))) a!1901)))))

(assert (=> d!2219691 (= (derivationStepZipperDown!2437 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554)) (ite c!1326299 lt!2559304 (Context!13833 call!647983)) a!1901) e!4271907)))

(declare-fun b!7108028 () Bool)

(declare-fun c!1326386 () Bool)

(assert (=> b!7108028 (= c!1326386 (is-Star!17922 (ite c!1326299 (regTwo!36357 r!11554) (regOne!36356 r!11554))))))

(assert (=> b!7108028 (= e!4271908 e!4271909)))

(assert (= (and d!2219691 c!1326387) b!7108021))

(assert (= (and d!2219691 (not c!1326387)) b!7108022))

(assert (= (and b!7108022 c!1326385) b!7108031))

(assert (= (and b!7108022 (not c!1326385)) b!7108029))

(assert (= (and b!7108029 res!2901215) b!7108026))

(assert (= (and b!7108029 c!1326383) b!7108030))

(assert (= (and b!7108029 (not c!1326383)) b!7108025))

(assert (= (and b!7108025 c!1326384) b!7108024))

(assert (= (and b!7108025 (not c!1326384)) b!7108028))

(assert (= (and b!7108028 c!1326386) b!7108023))

(assert (= (and b!7108028 (not c!1326386)) b!7108027))

(assert (= (or b!7108024 b!7108023) bm!648074))

(assert (= (or b!7108024 b!7108023) bm!648076))

(assert (= (or b!7108030 bm!648076) bm!648072))

(assert (= (or b!7108030 bm!648074) bm!648073))

(assert (= (or b!7108031 b!7108030) bm!648071))

(assert (= (or b!7108031 bm!648072) bm!648075))

(declare-fun m!7830296 () Bool)

(assert (=> bm!648071 m!7830296))

(declare-fun m!7830298 () Bool)

(assert (=> bm!648075 m!7830298))

(declare-fun m!7830300 () Bool)

(assert (=> bm!648073 m!7830300))

(declare-fun m!7830302 () Bool)

(assert (=> b!7108021 m!7830302))

(declare-fun m!7830304 () Bool)

(assert (=> b!7108026 m!7830304))

(assert (=> bm!647975 d!2219691))

(declare-fun b!7108032 () Bool)

(declare-fun e!4271913 () (Set Context!13832))

(assert (=> b!7108032 (= e!4271913 (set.insert (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989)) (as set.empty (Set Context!13832))))))

(declare-fun c!1326390 () Bool)

(declare-fun bm!648077 () Bool)

(declare-fun call!648085 () List!68883)

(declare-fun call!648086 () (Set Context!13832))

(assert (=> bm!648077 (= call!648086 (derivationStepZipperDown!2437 (ite c!1326390 (regTwo!36357 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (regOne!36356 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))))) (ite c!1326390 (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989)) (Context!13833 call!648085)) a!1901))))

(declare-fun b!7108033 () Bool)

(declare-fun e!4271911 () (Set Context!13832))

(assert (=> b!7108033 (= e!4271913 e!4271911)))

(assert (=> b!7108033 (= c!1326390 (is-Union!17922 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))))))

(declare-fun b!7108034 () Bool)

(declare-fun e!4271915 () (Set Context!13832))

(declare-fun call!648083 () (Set Context!13832))

(assert (=> b!7108034 (= e!4271915 call!648083)))

(declare-fun bm!648078 () Bool)

(declare-fun call!648082 () (Set Context!13832))

(declare-fun call!648084 () (Set Context!13832))

(assert (=> bm!648078 (= call!648082 call!648084)))

(declare-fun b!7108035 () Bool)

(declare-fun e!4271914 () (Set Context!13832))

(assert (=> b!7108035 (= e!4271914 call!648083)))

(declare-fun c!1326389 () Bool)

(declare-fun bm!648079 () Bool)

(declare-fun c!1326388 () Bool)

(assert (=> bm!648079 (= call!648085 ($colon$colon!2780 (exprs!7416 (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989))) (ite (or c!1326388 c!1326389) (regTwo!36356 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))))))))

(declare-fun b!7108036 () Bool)

(declare-fun e!4271910 () (Set Context!13832))

(assert (=> b!7108036 (= e!4271910 e!4271914)))

(assert (=> b!7108036 (= c!1326389 (is-Concat!26767 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))))))

(declare-fun b!7108037 () Bool)

(declare-fun e!4271912 () Bool)

(assert (=> b!7108037 (= e!4271912 (nullable!7559 (regOne!36356 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))))))))

(declare-fun bm!648080 () Bool)

(declare-fun call!648087 () List!68883)

(assert (=> bm!648080 (= call!648087 call!648085)))

(declare-fun bm!648081 () Bool)

(assert (=> bm!648081 (= call!648084 (derivationStepZipperDown!2437 (ite c!1326390 (regOne!36357 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (ite c!1326388 (regTwo!36356 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (ite c!1326389 (regOne!36356 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (reg!18251 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))))))) (ite (or c!1326390 c!1326388) (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989)) (Context!13833 call!648087)) a!1901))))

(declare-fun b!7108038 () Bool)

(assert (=> b!7108038 (= e!4271915 (as set.empty (Set Context!13832)))))

(declare-fun b!7108040 () Bool)

(assert (=> b!7108040 (= c!1326388 e!4271912)))

(declare-fun res!2901216 () Bool)

(assert (=> b!7108040 (=> (not res!2901216) (not e!4271912))))

(assert (=> b!7108040 (= res!2901216 (is-Concat!26767 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))))))

(assert (=> b!7108040 (= e!4271911 e!4271910)))

(declare-fun bm!648082 () Bool)

(assert (=> bm!648082 (= call!648083 call!648082)))

(declare-fun b!7108041 () Bool)

(assert (=> b!7108041 (= e!4271910 (set.union call!648086 call!648082))))

(declare-fun b!7108042 () Bool)

(assert (=> b!7108042 (= e!4271911 (set.union call!648084 call!648086))))

(declare-fun d!2219693 () Bool)

(declare-fun c!1326392 () Bool)

(assert (=> d!2219693 (= c!1326392 (and (is-ElementMatch!17922 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) (= (c!1326285 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))) a!1901)))))

(assert (=> d!2219693 (= (derivationStepZipperDown!2437 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554))) (ite c!1326304 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))) (Context!13833 call!647989)) a!1901) e!4271913)))

(declare-fun b!7108039 () Bool)

(declare-fun c!1326391 () Bool)

(assert (=> b!7108039 (= c!1326391 (is-Star!17922 (ite c!1326304 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))))))

(assert (=> b!7108039 (= e!4271914 e!4271915)))

(assert (= (and d!2219693 c!1326392) b!7108032))

(assert (= (and d!2219693 (not c!1326392)) b!7108033))

(assert (= (and b!7108033 c!1326390) b!7108042))

(assert (= (and b!7108033 (not c!1326390)) b!7108040))

(assert (= (and b!7108040 res!2901216) b!7108037))

(assert (= (and b!7108040 c!1326388) b!7108041))

(assert (= (and b!7108040 (not c!1326388)) b!7108036))

(assert (= (and b!7108036 c!1326389) b!7108035))

(assert (= (and b!7108036 (not c!1326389)) b!7108039))

(assert (= (and b!7108039 c!1326391) b!7108034))

(assert (= (and b!7108039 (not c!1326391)) b!7108038))

(assert (= (or b!7108035 b!7108034) bm!648080))

(assert (= (or b!7108035 b!7108034) bm!648082))

(assert (= (or b!7108041 bm!648082) bm!648078))

(assert (= (or b!7108041 bm!648080) bm!648079))

(assert (= (or b!7108042 b!7108041) bm!648077))

(assert (= (or b!7108042 bm!648078) bm!648081))

(declare-fun m!7830306 () Bool)

(assert (=> bm!648077 m!7830306))

(declare-fun m!7830308 () Bool)

(assert (=> bm!648081 m!7830308))

(declare-fun m!7830310 () Bool)

(assert (=> bm!648079 m!7830310))

(declare-fun m!7830312 () Bool)

(assert (=> b!7108032 m!7830312))

(declare-fun m!7830314 () Bool)

(assert (=> b!7108037 m!7830314))

(assert (=> bm!647981 d!2219693))

(assert (=> b!7107684 d!2219613))

(declare-fun d!2219695 () Bool)

(declare-fun res!2901227 () Bool)

(declare-fun e!4271932 () Bool)

(assert (=> d!2219695 (=> res!2901227 e!4271932)))

(assert (=> d!2219695 (= res!2901227 (is-EmptyExpr!17922 (regOne!36356 r!11554)))))

(assert (=> d!2219695 (= (nullableFct!2914 (regOne!36356 r!11554)) e!4271932)))

(declare-fun b!7108057 () Bool)

(declare-fun e!4271929 () Bool)

(declare-fun e!4271930 () Bool)

(assert (=> b!7108057 (= e!4271929 e!4271930)))

(declare-fun res!2901231 () Bool)

(declare-fun call!648093 () Bool)

(assert (=> b!7108057 (= res!2901231 call!648093)))

(assert (=> b!7108057 (=> res!2901231 e!4271930)))

(declare-fun b!7108058 () Bool)

(declare-fun e!4271931 () Bool)

(assert (=> b!7108058 (= e!4271931 call!648093)))

(declare-fun b!7108059 () Bool)

(declare-fun e!4271928 () Bool)

(assert (=> b!7108059 (= e!4271928 e!4271929)))

(declare-fun c!1326395 () Bool)

(assert (=> b!7108059 (= c!1326395 (is-Union!17922 (regOne!36356 r!11554)))))

(declare-fun bm!648087 () Bool)

(assert (=> bm!648087 (= call!648093 (nullable!7559 (ite c!1326395 (regOne!36357 (regOne!36356 r!11554)) (regTwo!36356 (regOne!36356 r!11554)))))))

(declare-fun b!7108060 () Bool)

(assert (=> b!7108060 (= e!4271929 e!4271931)))

(declare-fun res!2901230 () Bool)

(declare-fun call!648092 () Bool)

(assert (=> b!7108060 (= res!2901230 call!648092)))

(assert (=> b!7108060 (=> (not res!2901230) (not e!4271931))))

(declare-fun bm!648088 () Bool)

(assert (=> bm!648088 (= call!648092 (nullable!7559 (ite c!1326395 (regTwo!36357 (regOne!36356 r!11554)) (regOne!36356 (regOne!36356 r!11554)))))))

(declare-fun b!7108061 () Bool)

(assert (=> b!7108061 (= e!4271930 call!648092)))

(declare-fun b!7108062 () Bool)

(declare-fun e!4271933 () Bool)

(assert (=> b!7108062 (= e!4271932 e!4271933)))

(declare-fun res!2901229 () Bool)

(assert (=> b!7108062 (=> (not res!2901229) (not e!4271933))))

(assert (=> b!7108062 (= res!2901229 (and (not (is-EmptyLang!17922 (regOne!36356 r!11554))) (not (is-ElementMatch!17922 (regOne!36356 r!11554)))))))

(declare-fun b!7108063 () Bool)

(assert (=> b!7108063 (= e!4271933 e!4271928)))

(declare-fun res!2901228 () Bool)

(assert (=> b!7108063 (=> res!2901228 e!4271928)))

(assert (=> b!7108063 (= res!2901228 (is-Star!17922 (regOne!36356 r!11554)))))

(assert (= (and d!2219695 (not res!2901227)) b!7108062))

(assert (= (and b!7108062 res!2901229) b!7108063))

(assert (= (and b!7108063 (not res!2901228)) b!7108059))

(assert (= (and b!7108059 c!1326395) b!7108057))

(assert (= (and b!7108059 (not c!1326395)) b!7108060))

(assert (= (and b!7108057 (not res!2901231)) b!7108061))

(assert (= (and b!7108060 res!2901230) b!7108058))

(assert (= (or b!7108057 b!7108058) bm!648087))

(assert (= (or b!7108061 b!7108060) bm!648088))

(declare-fun m!7830316 () Bool)

(assert (=> bm!648087 m!7830316))

(declare-fun m!7830318 () Bool)

(assert (=> bm!648088 m!7830318))

(assert (=> d!2219613 d!2219695))

(declare-fun d!2219697 () Bool)

(assert (=> d!2219697 (= ($colon$colon!2780 (exprs!7416 lt!2559304) (ite (or c!1326297 c!1326298) (regTwo!36356 r!11554) r!11554)) (Cons!68759 (ite (or c!1326297 c!1326298) (regTwo!36356 r!11554) r!11554) (exprs!7416 lt!2559304)))))

(assert (=> bm!647977 d!2219697))

(declare-fun d!2219699 () Bool)

(assert (=> d!2219699 (= (nullable!7559 (regOne!36356 (regOne!36356 r!11554))) (nullableFct!2914 (regOne!36356 (regOne!36356 r!11554))))))

(declare-fun bs!1884909 () Bool)

(assert (= bs!1884909 d!2219699))

(declare-fun m!7830320 () Bool)

(assert (=> bs!1884909 m!7830320))

(assert (=> b!7107695 d!2219699))

(declare-fun d!2219701 () Bool)

(declare-fun c!1326398 () Bool)

(assert (=> d!2219701 (= c!1326398 (is-Nil!68759 lt!2559331))))

(declare-fun e!4271936 () (Set Regex!17922))

(assert (=> d!2219701 (= (content!14008 lt!2559331) e!4271936)))

(declare-fun b!7108068 () Bool)

(assert (=> b!7108068 (= e!4271936 (as set.empty (Set Regex!17922)))))

(declare-fun b!7108069 () Bool)

(assert (=> b!7108069 (= e!4271936 (set.union (set.insert (h!75207 lt!2559331) (as set.empty (Set Regex!17922))) (content!14008 (t!382702 lt!2559331))))))

(assert (= (and d!2219701 c!1326398) b!7108068))

(assert (= (and d!2219701 (not c!1326398)) b!7108069))

(declare-fun m!7830322 () Bool)

(assert (=> b!7108069 m!7830322))

(declare-fun m!7830324 () Bool)

(assert (=> b!7108069 m!7830324))

(assert (=> d!2219627 d!2219701))

(declare-fun d!2219703 () Bool)

(declare-fun c!1326399 () Bool)

(assert (=> d!2219703 (= c!1326399 (is-Nil!68759 (exprs!7416 c!9994)))))

(declare-fun e!4271937 () (Set Regex!17922))

(assert (=> d!2219703 (= (content!14008 (exprs!7416 c!9994)) e!4271937)))

(declare-fun b!7108070 () Bool)

(assert (=> b!7108070 (= e!4271937 (as set.empty (Set Regex!17922)))))

(declare-fun b!7108071 () Bool)

(assert (=> b!7108071 (= e!4271937 (set.union (set.insert (h!75207 (exprs!7416 c!9994)) (as set.empty (Set Regex!17922))) (content!14008 (t!382702 (exprs!7416 c!9994)))))))

(assert (= (and d!2219703 c!1326399) b!7108070))

(assert (= (and d!2219703 (not c!1326399)) b!7108071))

(declare-fun m!7830326 () Bool)

(assert (=> b!7108071 m!7830326))

(assert (=> b!7108071 m!7830238))

(assert (=> d!2219627 d!2219703))

(declare-fun d!2219705 () Bool)

(declare-fun c!1326400 () Bool)

(assert (=> d!2219705 (= c!1326400 (is-Nil!68759 (exprs!7416 auxCtx!45)))))

(declare-fun e!4271938 () (Set Regex!17922))

(assert (=> d!2219705 (= (content!14008 (exprs!7416 auxCtx!45)) e!4271938)))

(declare-fun b!7108072 () Bool)

(assert (=> b!7108072 (= e!4271938 (as set.empty (Set Regex!17922)))))

(declare-fun b!7108073 () Bool)

(assert (=> b!7108073 (= e!4271938 (set.union (set.insert (h!75207 (exprs!7416 auxCtx!45)) (as set.empty (Set Regex!17922))) (content!14008 (t!382702 (exprs!7416 auxCtx!45)))))))

(assert (= (and d!2219705 c!1326400) b!7108072))

(assert (= (and d!2219705 (not c!1326400)) b!7108073))

(declare-fun m!7830328 () Bool)

(assert (=> b!7108073 m!7830328))

(declare-fun m!7830330 () Bool)

(assert (=> b!7108073 m!7830330))

(assert (=> d!2219627 d!2219705))

(declare-fun b!7108074 () Bool)

(declare-fun e!4271942 () (Set Context!13832))

(assert (=> b!7108074 (= e!4271942 (set.insert (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985)) (as set.empty (Set Context!13832))))))

(declare-fun call!648098 () (Set Context!13832))

(declare-fun c!1326403 () Bool)

(declare-fun bm!648089 () Bool)

(declare-fun call!648097 () List!68883)

(assert (=> bm!648089 (= call!648098 (derivationStepZipperDown!2437 (ite c!1326403 (regTwo!36357 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (regOne!36356 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))))) (ite c!1326403 (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985)) (Context!13833 call!648097)) a!1901))))

(declare-fun b!7108075 () Bool)

(declare-fun e!4271940 () (Set Context!13832))

(assert (=> b!7108075 (= e!4271942 e!4271940)))

(assert (=> b!7108075 (= c!1326403 (is-Union!17922 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))))))

(declare-fun b!7108076 () Bool)

(declare-fun e!4271944 () (Set Context!13832))

(declare-fun call!648095 () (Set Context!13832))

(assert (=> b!7108076 (= e!4271944 call!648095)))

(declare-fun bm!648090 () Bool)

(declare-fun call!648094 () (Set Context!13832))

(declare-fun call!648096 () (Set Context!13832))

(assert (=> bm!648090 (= call!648094 call!648096)))

(declare-fun b!7108077 () Bool)

(declare-fun e!4271943 () (Set Context!13832))

(assert (=> b!7108077 (= e!4271943 call!648095)))

(declare-fun c!1326401 () Bool)

(declare-fun bm!648091 () Bool)

(declare-fun c!1326402 () Bool)

(assert (=> bm!648091 (= call!648097 ($colon$colon!2780 (exprs!7416 (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985))) (ite (or c!1326401 c!1326402) (regTwo!36356 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))))))))

(declare-fun b!7108078 () Bool)

(declare-fun e!4271939 () (Set Context!13832))

(assert (=> b!7108078 (= e!4271939 e!4271943)))

(assert (=> b!7108078 (= c!1326402 (is-Concat!26767 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))))))

(declare-fun e!4271941 () Bool)

(declare-fun b!7108079 () Bool)

(assert (=> b!7108079 (= e!4271941 (nullable!7559 (regOne!36356 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))))))))

(declare-fun bm!648092 () Bool)

(declare-fun call!648099 () List!68883)

(assert (=> bm!648092 (= call!648099 call!648097)))

(declare-fun bm!648093 () Bool)

(assert (=> bm!648093 (= call!648096 (derivationStepZipperDown!2437 (ite c!1326403 (regOne!36357 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (ite c!1326401 (regTwo!36356 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (ite c!1326402 (regOne!36356 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (reg!18251 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))))))) (ite (or c!1326403 c!1326401) (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985)) (Context!13833 call!648099)) a!1901))))

(declare-fun b!7108080 () Bool)

(assert (=> b!7108080 (= e!4271944 (as set.empty (Set Context!13832)))))

(declare-fun b!7108082 () Bool)

(assert (=> b!7108082 (= c!1326401 e!4271941)))

(declare-fun res!2901232 () Bool)

(assert (=> b!7108082 (=> (not res!2901232) (not e!4271941))))

(assert (=> b!7108082 (= res!2901232 (is-Concat!26767 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))))))

(assert (=> b!7108082 (= e!4271940 e!4271939)))

(declare-fun bm!648094 () Bool)

(assert (=> bm!648094 (= call!648095 call!648094)))

(declare-fun b!7108083 () Bool)

(assert (=> b!7108083 (= e!4271939 (set.union call!648098 call!648094))))

(declare-fun b!7108084 () Bool)

(assert (=> b!7108084 (= e!4271940 (set.union call!648096 call!648098))))

(declare-fun d!2219707 () Bool)

(declare-fun c!1326405 () Bool)

(assert (=> d!2219707 (= c!1326405 (and (is-ElementMatch!17922 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) (= (c!1326285 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))) a!1901)))))

(assert (=> d!2219707 (= (derivationStepZipperDown!2437 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554)))) (ite (or c!1326299 c!1326297) lt!2559304 (Context!13833 call!647985)) a!1901) e!4271942)))

(declare-fun c!1326404 () Bool)

(declare-fun b!7108081 () Bool)

(assert (=> b!7108081 (= c!1326404 (is-Star!17922 (ite c!1326299 (regOne!36357 r!11554) (ite c!1326297 (regTwo!36356 r!11554) (ite c!1326298 (regOne!36356 r!11554) (reg!18251 r!11554))))))))

(assert (=> b!7108081 (= e!4271943 e!4271944)))

(assert (= (and d!2219707 c!1326405) b!7108074))

(assert (= (and d!2219707 (not c!1326405)) b!7108075))

(assert (= (and b!7108075 c!1326403) b!7108084))

(assert (= (and b!7108075 (not c!1326403)) b!7108082))

(assert (= (and b!7108082 res!2901232) b!7108079))

(assert (= (and b!7108082 c!1326401) b!7108083))

(assert (= (and b!7108082 (not c!1326401)) b!7108078))

(assert (= (and b!7108078 c!1326402) b!7108077))

(assert (= (and b!7108078 (not c!1326402)) b!7108081))

(assert (= (and b!7108081 c!1326404) b!7108076))

(assert (= (and b!7108081 (not c!1326404)) b!7108080))

(assert (= (or b!7108077 b!7108076) bm!648092))

(assert (= (or b!7108077 b!7108076) bm!648094))

(assert (= (or b!7108083 bm!648094) bm!648090))

(assert (= (or b!7108083 bm!648092) bm!648091))

(assert (= (or b!7108084 b!7108083) bm!648089))

(assert (= (or b!7108084 bm!648090) bm!648093))

(declare-fun m!7830332 () Bool)

(assert (=> bm!648089 m!7830332))

(declare-fun m!7830334 () Bool)

(assert (=> bm!648093 m!7830334))

(declare-fun m!7830336 () Bool)

(assert (=> bm!648091 m!7830336))

(declare-fun m!7830338 () Bool)

(assert (=> b!7108074 m!7830338))

(declare-fun m!7830340 () Bool)

(assert (=> b!7108079 m!7830340))

(assert (=> bm!647979 d!2219707))

(declare-fun e!4271948 () (Set Context!13832))

(declare-fun b!7108085 () Bool)

(assert (=> b!7108085 (= e!4271948 (set.insert (ite c!1326311 lt!2559304 (Context!13833 call!647995)) (as set.empty (Set Context!13832))))))

(declare-fun bm!648095 () Bool)

(declare-fun call!648103 () List!68883)

(declare-fun c!1326408 () Bool)

(declare-fun call!648104 () (Set Context!13832))

(assert (=> bm!648095 (= call!648104 (derivationStepZipperDown!2437 (ite c!1326408 (regTwo!36357 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (regOne!36356 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))) (ite c!1326408 (ite c!1326311 lt!2559304 (Context!13833 call!647995)) (Context!13833 call!648103)) a!1901))))

(declare-fun b!7108086 () Bool)

(declare-fun e!4271946 () (Set Context!13832))

(assert (=> b!7108086 (= e!4271948 e!4271946)))

(assert (=> b!7108086 (= c!1326408 (is-Union!17922 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))

(declare-fun b!7108087 () Bool)

(declare-fun e!4271950 () (Set Context!13832))

(declare-fun call!648101 () (Set Context!13832))

(assert (=> b!7108087 (= e!4271950 call!648101)))

(declare-fun bm!648096 () Bool)

(declare-fun call!648100 () (Set Context!13832))

(declare-fun call!648102 () (Set Context!13832))

(assert (=> bm!648096 (= call!648100 call!648102)))

(declare-fun b!7108088 () Bool)

(declare-fun e!4271949 () (Set Context!13832))

(assert (=> b!7108088 (= e!4271949 call!648101)))

(declare-fun bm!648097 () Bool)

(declare-fun c!1326407 () Bool)

(declare-fun c!1326406 () Bool)

(assert (=> bm!648097 (= call!648103 ($colon$colon!2780 (exprs!7416 (ite c!1326311 lt!2559304 (Context!13833 call!647995))) (ite (or c!1326406 c!1326407) (regTwo!36356 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(declare-fun b!7108089 () Bool)

(declare-fun e!4271945 () (Set Context!13832))

(assert (=> b!7108089 (= e!4271945 e!4271949)))

(assert (=> b!7108089 (= c!1326407 (is-Concat!26767 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))

(declare-fun b!7108090 () Bool)

(declare-fun e!4271947 () Bool)

(assert (=> b!7108090 (= e!4271947 (nullable!7559 (regOne!36356 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))))

(declare-fun bm!648098 () Bool)

(declare-fun call!648105 () List!68883)

(assert (=> bm!648098 (= call!648105 call!648103)))

(declare-fun bm!648099 () Bool)

(assert (=> bm!648099 (= call!648102 (derivationStepZipperDown!2437 (ite c!1326408 (regOne!36357 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (ite c!1326406 (regTwo!36356 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (ite c!1326407 (regOne!36356 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (reg!18251 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))))))) (ite (or c!1326408 c!1326406) (ite c!1326311 lt!2559304 (Context!13833 call!647995)) (Context!13833 call!648105)) a!1901))))

(declare-fun b!7108091 () Bool)

(assert (=> b!7108091 (= e!4271950 (as set.empty (Set Context!13832)))))

(declare-fun b!7108093 () Bool)

(assert (=> b!7108093 (= c!1326406 e!4271947)))

(declare-fun res!2901233 () Bool)

(assert (=> b!7108093 (=> (not res!2901233) (not e!4271947))))

(assert (=> b!7108093 (= res!2901233 (is-Concat!26767 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))

(assert (=> b!7108093 (= e!4271946 e!4271945)))

(declare-fun bm!648100 () Bool)

(assert (=> bm!648100 (= call!648101 call!648100)))

(declare-fun b!7108094 () Bool)

(assert (=> b!7108094 (= e!4271945 (set.union call!648104 call!648100))))

(declare-fun b!7108095 () Bool)

(assert (=> b!7108095 (= e!4271946 (set.union call!648102 call!648104))))

(declare-fun c!1326410 () Bool)

(declare-fun d!2219709 () Bool)

(assert (=> d!2219709 (= c!1326410 (and (is-ElementMatch!17922 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) (= (c!1326285 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))) a!1901)))))

(assert (=> d!2219709 (= (derivationStepZipperDown!2437 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554))) (ite c!1326311 lt!2559304 (Context!13833 call!647995)) a!1901) e!4271948)))

(declare-fun b!7108092 () Bool)

(declare-fun c!1326409 () Bool)

(assert (=> b!7108092 (= c!1326409 (is-Star!17922 (ite c!1326311 (regTwo!36357 (regTwo!36356 r!11554)) (regOne!36356 (regTwo!36356 r!11554)))))))

(assert (=> b!7108092 (= e!4271949 e!4271950)))

(assert (= (and d!2219709 c!1326410) b!7108085))

(assert (= (and d!2219709 (not c!1326410)) b!7108086))

(assert (= (and b!7108086 c!1326408) b!7108095))

(assert (= (and b!7108086 (not c!1326408)) b!7108093))

(assert (= (and b!7108093 res!2901233) b!7108090))

(assert (= (and b!7108093 c!1326406) b!7108094))

(assert (= (and b!7108093 (not c!1326406)) b!7108089))

(assert (= (and b!7108089 c!1326407) b!7108088))

(assert (= (and b!7108089 (not c!1326407)) b!7108092))

(assert (= (and b!7108092 c!1326409) b!7108087))

(assert (= (and b!7108092 (not c!1326409)) b!7108091))

(assert (= (or b!7108088 b!7108087) bm!648098))

(assert (= (or b!7108088 b!7108087) bm!648100))

(assert (= (or b!7108094 bm!648100) bm!648096))

(assert (= (or b!7108094 bm!648098) bm!648097))

(assert (= (or b!7108095 b!7108094) bm!648095))

(assert (= (or b!7108095 bm!648096) bm!648099))

(declare-fun m!7830342 () Bool)

(assert (=> bm!648095 m!7830342))

(declare-fun m!7830344 () Bool)

(assert (=> bm!648099 m!7830344))

(declare-fun m!7830346 () Bool)

(assert (=> bm!648097 m!7830346))

(declare-fun m!7830348 () Bool)

(assert (=> b!7108085 m!7830348))

(declare-fun m!7830350 () Bool)

(assert (=> b!7108090 m!7830350))

(assert (=> bm!647987 d!2219709))

(declare-fun d!2219711 () Bool)

(assert (=> d!2219711 (= ($colon$colon!2780 (exprs!7416 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554)))) (ite (or c!1326302 c!1326303) (regTwo!36356 (regOne!36356 r!11554)) (regOne!36356 r!11554))) (Cons!68759 (ite (or c!1326302 c!1326303) (regTwo!36356 (regOne!36356 r!11554)) (regOne!36356 r!11554)) (exprs!7416 (Context!13833 ($colon$colon!2780 lt!2559307 (regTwo!36356 r!11554))))))))

(assert (=> bm!647983 d!2219711))

(declare-fun e!4271951 () Bool)

(assert (=> b!7107822 (= tp!1955111 e!4271951)))

(declare-fun b!7108098 () Bool)

(declare-fun tp!1955158 () Bool)

(assert (=> b!7108098 (= e!4271951 tp!1955158)))

(declare-fun b!7108099 () Bool)

(declare-fun tp!1955159 () Bool)

(declare-fun tp!1955155 () Bool)

(assert (=> b!7108099 (= e!4271951 (and tp!1955159 tp!1955155))))

(declare-fun b!7108096 () Bool)

(assert (=> b!7108096 (= e!4271951 tp_is_empty!45077)))

(declare-fun b!7108097 () Bool)

(declare-fun tp!1955156 () Bool)

(declare-fun tp!1955157 () Bool)

(assert (=> b!7108097 (= e!4271951 (and tp!1955156 tp!1955157))))

(assert (= (and b!7107822 (is-ElementMatch!17922 (regOne!36357 (regTwo!36357 r!11554)))) b!7108096))

(assert (= (and b!7107822 (is-Concat!26767 (regOne!36357 (regTwo!36357 r!11554)))) b!7108097))

(assert (= (and b!7107822 (is-Star!17922 (regOne!36357 (regTwo!36357 r!11554)))) b!7108098))

(assert (= (and b!7107822 (is-Union!17922 (regOne!36357 (regTwo!36357 r!11554)))) b!7108099))

(declare-fun e!4271952 () Bool)

(assert (=> b!7107822 (= tp!1955107 e!4271952)))

(declare-fun b!7108102 () Bool)

(declare-fun tp!1955163 () Bool)

(assert (=> b!7108102 (= e!4271952 tp!1955163)))

(declare-fun b!7108103 () Bool)

(declare-fun tp!1955164 () Bool)

(declare-fun tp!1955160 () Bool)

(assert (=> b!7108103 (= e!4271952 (and tp!1955164 tp!1955160))))

(declare-fun b!7108100 () Bool)

(assert (=> b!7108100 (= e!4271952 tp_is_empty!45077)))

(declare-fun b!7108101 () Bool)

(declare-fun tp!1955161 () Bool)

(declare-fun tp!1955162 () Bool)

(assert (=> b!7108101 (= e!4271952 (and tp!1955161 tp!1955162))))

(assert (= (and b!7107822 (is-ElementMatch!17922 (regTwo!36357 (regTwo!36357 r!11554)))) b!7108100))

(assert (= (and b!7107822 (is-Concat!26767 (regTwo!36357 (regTwo!36357 r!11554)))) b!7108101))

(assert (= (and b!7107822 (is-Star!17922 (regTwo!36357 (regTwo!36357 r!11554)))) b!7108102))

(assert (= (and b!7107822 (is-Union!17922 (regTwo!36357 (regTwo!36357 r!11554)))) b!7108103))

(declare-fun e!4271953 () Bool)

(assert (=> b!7107808 (= tp!1955093 e!4271953)))

(declare-fun b!7108106 () Bool)

(declare-fun tp!1955168 () Bool)

(assert (=> b!7108106 (= e!4271953 tp!1955168)))

(declare-fun b!7108107 () Bool)

(declare-fun tp!1955169 () Bool)

(declare-fun tp!1955165 () Bool)

(assert (=> b!7108107 (= e!4271953 (and tp!1955169 tp!1955165))))

(declare-fun b!7108104 () Bool)

(assert (=> b!7108104 (= e!4271953 tp_is_empty!45077)))

(declare-fun b!7108105 () Bool)

(declare-fun tp!1955166 () Bool)

(declare-fun tp!1955167 () Bool)

(assert (=> b!7108105 (= e!4271953 (and tp!1955166 tp!1955167))))

(assert (= (and b!7107808 (is-ElementMatch!17922 (regOne!36356 (regTwo!36356 r!11554)))) b!7108104))

(assert (= (and b!7107808 (is-Concat!26767 (regOne!36356 (regTwo!36356 r!11554)))) b!7108105))

(assert (= (and b!7107808 (is-Star!17922 (regOne!36356 (regTwo!36356 r!11554)))) b!7108106))

(assert (= (and b!7107808 (is-Union!17922 (regOne!36356 (regTwo!36356 r!11554)))) b!7108107))

(declare-fun e!4271954 () Bool)

(assert (=> b!7107808 (= tp!1955094 e!4271954)))

(declare-fun b!7108110 () Bool)

(declare-fun tp!1955173 () Bool)

(assert (=> b!7108110 (= e!4271954 tp!1955173)))

(declare-fun b!7108111 () Bool)

(declare-fun tp!1955174 () Bool)

(declare-fun tp!1955170 () Bool)

(assert (=> b!7108111 (= e!4271954 (and tp!1955174 tp!1955170))))

(declare-fun b!7108108 () Bool)

(assert (=> b!7108108 (= e!4271954 tp_is_empty!45077)))

(declare-fun b!7108109 () Bool)

(declare-fun tp!1955171 () Bool)

(declare-fun tp!1955172 () Bool)

(assert (=> b!7108109 (= e!4271954 (and tp!1955171 tp!1955172))))

(assert (= (and b!7107808 (is-ElementMatch!17922 (regTwo!36356 (regTwo!36356 r!11554)))) b!7108108))

(assert (= (and b!7107808 (is-Concat!26767 (regTwo!36356 (regTwo!36356 r!11554)))) b!7108109))

(assert (= (and b!7107808 (is-Star!17922 (regTwo!36356 (regTwo!36356 r!11554)))) b!7108110))

(assert (= (and b!7107808 (is-Union!17922 (regTwo!36356 (regTwo!36356 r!11554)))) b!7108111))

(declare-fun e!4271955 () Bool)

(assert (=> b!7107817 (= tp!1955105 e!4271955)))

(declare-fun b!7108114 () Bool)

(declare-fun tp!1955178 () Bool)

(assert (=> b!7108114 (= e!4271955 tp!1955178)))

(declare-fun b!7108115 () Bool)

(declare-fun tp!1955179 () Bool)

(declare-fun tp!1955175 () Bool)

(assert (=> b!7108115 (= e!4271955 (and tp!1955179 tp!1955175))))

(declare-fun b!7108112 () Bool)

(assert (=> b!7108112 (= e!4271955 tp_is_empty!45077)))

(declare-fun b!7108113 () Bool)

(declare-fun tp!1955176 () Bool)

(declare-fun tp!1955177 () Bool)

(assert (=> b!7108113 (= e!4271955 (and tp!1955176 tp!1955177))))

(assert (= (and b!7107817 (is-ElementMatch!17922 (reg!18251 (regOne!36357 r!11554)))) b!7108112))

(assert (= (and b!7107817 (is-Concat!26767 (reg!18251 (regOne!36357 r!11554)))) b!7108113))

(assert (= (and b!7107817 (is-Star!17922 (reg!18251 (regOne!36357 r!11554)))) b!7108114))

(assert (= (and b!7107817 (is-Union!17922 (reg!18251 (regOne!36357 r!11554)))) b!7108115))

(declare-fun e!4271956 () Bool)

(assert (=> b!7107818 (= tp!1955106 e!4271956)))

(declare-fun b!7108118 () Bool)

(declare-fun tp!1955183 () Bool)

(assert (=> b!7108118 (= e!4271956 tp!1955183)))

(declare-fun b!7108119 () Bool)

(declare-fun tp!1955184 () Bool)

(declare-fun tp!1955180 () Bool)

(assert (=> b!7108119 (= e!4271956 (and tp!1955184 tp!1955180))))

(declare-fun b!7108116 () Bool)

(assert (=> b!7108116 (= e!4271956 tp_is_empty!45077)))

(declare-fun b!7108117 () Bool)

(declare-fun tp!1955181 () Bool)

(declare-fun tp!1955182 () Bool)

(assert (=> b!7108117 (= e!4271956 (and tp!1955181 tp!1955182))))

(assert (= (and b!7107818 (is-ElementMatch!17922 (regOne!36357 (regOne!36357 r!11554)))) b!7108116))

(assert (= (and b!7107818 (is-Concat!26767 (regOne!36357 (regOne!36357 r!11554)))) b!7108117))

(assert (= (and b!7107818 (is-Star!17922 (regOne!36357 (regOne!36357 r!11554)))) b!7108118))

(assert (= (and b!7107818 (is-Union!17922 (regOne!36357 (regOne!36357 r!11554)))) b!7108119))

(declare-fun e!4271957 () Bool)

(assert (=> b!7107818 (= tp!1955102 e!4271957)))

(declare-fun b!7108122 () Bool)

(declare-fun tp!1955188 () Bool)

(assert (=> b!7108122 (= e!4271957 tp!1955188)))

(declare-fun b!7108123 () Bool)

(declare-fun tp!1955189 () Bool)

(declare-fun tp!1955185 () Bool)

(assert (=> b!7108123 (= e!4271957 (and tp!1955189 tp!1955185))))

(declare-fun b!7108120 () Bool)

(assert (=> b!7108120 (= e!4271957 tp_is_empty!45077)))

(declare-fun b!7108121 () Bool)

(declare-fun tp!1955186 () Bool)

(declare-fun tp!1955187 () Bool)

(assert (=> b!7108121 (= e!4271957 (and tp!1955186 tp!1955187))))

(assert (= (and b!7107818 (is-ElementMatch!17922 (regTwo!36357 (regOne!36357 r!11554)))) b!7108120))

(assert (= (and b!7107818 (is-Concat!26767 (regTwo!36357 (regOne!36357 r!11554)))) b!7108121))

(assert (= (and b!7107818 (is-Star!17922 (regTwo!36357 (regOne!36357 r!11554)))) b!7108122))

(assert (= (and b!7107818 (is-Union!17922 (regTwo!36357 (regOne!36357 r!11554)))) b!7108123))

(declare-fun e!4271958 () Bool)

(assert (=> b!7107804 (= tp!1955088 e!4271958)))

(declare-fun b!7108126 () Bool)

(declare-fun tp!1955193 () Bool)

(assert (=> b!7108126 (= e!4271958 tp!1955193)))

(declare-fun b!7108127 () Bool)

(declare-fun tp!1955194 () Bool)

(declare-fun tp!1955190 () Bool)

(assert (=> b!7108127 (= e!4271958 (and tp!1955194 tp!1955190))))

(declare-fun b!7108124 () Bool)

(assert (=> b!7108124 (= e!4271958 tp_is_empty!45077)))

(declare-fun b!7108125 () Bool)

(declare-fun tp!1955191 () Bool)

(declare-fun tp!1955192 () Bool)

(assert (=> b!7108125 (= e!4271958 (and tp!1955191 tp!1955192))))

(assert (= (and b!7107804 (is-ElementMatch!17922 (regOne!36356 (regOne!36356 r!11554)))) b!7108124))

(assert (= (and b!7107804 (is-Concat!26767 (regOne!36356 (regOne!36356 r!11554)))) b!7108125))

(assert (= (and b!7107804 (is-Star!17922 (regOne!36356 (regOne!36356 r!11554)))) b!7108126))

(assert (= (and b!7107804 (is-Union!17922 (regOne!36356 (regOne!36356 r!11554)))) b!7108127))

(declare-fun e!4271959 () Bool)

(assert (=> b!7107804 (= tp!1955089 e!4271959)))

(declare-fun b!7108130 () Bool)

(declare-fun tp!1955198 () Bool)

(assert (=> b!7108130 (= e!4271959 tp!1955198)))

(declare-fun b!7108131 () Bool)

(declare-fun tp!1955199 () Bool)

(declare-fun tp!1955195 () Bool)

(assert (=> b!7108131 (= e!4271959 (and tp!1955199 tp!1955195))))

(declare-fun b!7108128 () Bool)

(assert (=> b!7108128 (= e!4271959 tp_is_empty!45077)))

(declare-fun b!7108129 () Bool)

(declare-fun tp!1955196 () Bool)

(declare-fun tp!1955197 () Bool)

(assert (=> b!7108129 (= e!4271959 (and tp!1955196 tp!1955197))))

(assert (= (and b!7107804 (is-ElementMatch!17922 (regTwo!36356 (regOne!36356 r!11554)))) b!7108128))

(assert (= (and b!7107804 (is-Concat!26767 (regTwo!36356 (regOne!36356 r!11554)))) b!7108129))

(assert (= (and b!7107804 (is-Star!17922 (regTwo!36356 (regOne!36356 r!11554)))) b!7108130))

(assert (= (and b!7107804 (is-Union!17922 (regTwo!36356 (regOne!36356 r!11554)))) b!7108131))

(declare-fun e!4271960 () Bool)

(assert (=> b!7107813 (= tp!1955100 e!4271960)))

(declare-fun b!7108134 () Bool)

(declare-fun tp!1955203 () Bool)

(assert (=> b!7108134 (= e!4271960 tp!1955203)))

(declare-fun b!7108135 () Bool)

(declare-fun tp!1955204 () Bool)

(declare-fun tp!1955200 () Bool)

(assert (=> b!7108135 (= e!4271960 (and tp!1955204 tp!1955200))))

(declare-fun b!7108132 () Bool)

(assert (=> b!7108132 (= e!4271960 tp_is_empty!45077)))

(declare-fun b!7108133 () Bool)

(declare-fun tp!1955201 () Bool)

(declare-fun tp!1955202 () Bool)

(assert (=> b!7108133 (= e!4271960 (and tp!1955201 tp!1955202))))

(assert (= (and b!7107813 (is-ElementMatch!17922 (reg!18251 (reg!18251 r!11554)))) b!7108132))

(assert (= (and b!7107813 (is-Concat!26767 (reg!18251 (reg!18251 r!11554)))) b!7108133))

(assert (= (and b!7107813 (is-Star!17922 (reg!18251 (reg!18251 r!11554)))) b!7108134))

(assert (= (and b!7107813 (is-Union!17922 (reg!18251 (reg!18251 r!11554)))) b!7108135))

(declare-fun e!4271961 () Bool)

(assert (=> b!7107792 (= tp!1955075 e!4271961)))

(declare-fun b!7108138 () Bool)

(declare-fun tp!1955208 () Bool)

(assert (=> b!7108138 (= e!4271961 tp!1955208)))

(declare-fun b!7108139 () Bool)

(declare-fun tp!1955209 () Bool)

(declare-fun tp!1955205 () Bool)

(assert (=> b!7108139 (= e!4271961 (and tp!1955209 tp!1955205))))

(declare-fun b!7108136 () Bool)

(assert (=> b!7108136 (= e!4271961 tp_is_empty!45077)))

(declare-fun b!7108137 () Bool)

(declare-fun tp!1955206 () Bool)

(declare-fun tp!1955207 () Bool)

(assert (=> b!7108137 (= e!4271961 (and tp!1955206 tp!1955207))))

(assert (= (and b!7107792 (is-ElementMatch!17922 (h!75207 (exprs!7416 auxCtx!45)))) b!7108136))

(assert (= (and b!7107792 (is-Concat!26767 (h!75207 (exprs!7416 auxCtx!45)))) b!7108137))

(assert (= (and b!7107792 (is-Star!17922 (h!75207 (exprs!7416 auxCtx!45)))) b!7108138))

(assert (= (and b!7107792 (is-Union!17922 (h!75207 (exprs!7416 auxCtx!45)))) b!7108139))

(declare-fun b!7108140 () Bool)

(declare-fun e!4271962 () Bool)

(declare-fun tp!1955210 () Bool)

(declare-fun tp!1955211 () Bool)

(assert (=> b!7108140 (= e!4271962 (and tp!1955210 tp!1955211))))

(assert (=> b!7107792 (= tp!1955076 e!4271962)))

(assert (= (and b!7107792 (is-Cons!68759 (t!382702 (exprs!7416 auxCtx!45)))) b!7108140))

(declare-fun e!4271963 () Bool)

(assert (=> b!7107816 (= tp!1955103 e!4271963)))

(declare-fun b!7108143 () Bool)

(declare-fun tp!1955215 () Bool)

(assert (=> b!7108143 (= e!4271963 tp!1955215)))

(declare-fun b!7108144 () Bool)

(declare-fun tp!1955216 () Bool)

(declare-fun tp!1955212 () Bool)

(assert (=> b!7108144 (= e!4271963 (and tp!1955216 tp!1955212))))

(declare-fun b!7108141 () Bool)

(assert (=> b!7108141 (= e!4271963 tp_is_empty!45077)))

(declare-fun b!7108142 () Bool)

(declare-fun tp!1955213 () Bool)

(declare-fun tp!1955214 () Bool)

(assert (=> b!7108142 (= e!4271963 (and tp!1955213 tp!1955214))))

(assert (= (and b!7107816 (is-ElementMatch!17922 (regOne!36356 (regOne!36357 r!11554)))) b!7108141))

(assert (= (and b!7107816 (is-Concat!26767 (regOne!36356 (regOne!36357 r!11554)))) b!7108142))

(assert (= (and b!7107816 (is-Star!17922 (regOne!36356 (regOne!36357 r!11554)))) b!7108143))

(assert (= (and b!7107816 (is-Union!17922 (regOne!36356 (regOne!36357 r!11554)))) b!7108144))

(declare-fun e!4271964 () Bool)

(assert (=> b!7107816 (= tp!1955104 e!4271964)))

(declare-fun b!7108147 () Bool)

(declare-fun tp!1955220 () Bool)

(assert (=> b!7108147 (= e!4271964 tp!1955220)))

(declare-fun b!7108148 () Bool)

(declare-fun tp!1955221 () Bool)

(declare-fun tp!1955217 () Bool)

(assert (=> b!7108148 (= e!4271964 (and tp!1955221 tp!1955217))))

(declare-fun b!7108145 () Bool)

(assert (=> b!7108145 (= e!4271964 tp_is_empty!45077)))

(declare-fun b!7108146 () Bool)

(declare-fun tp!1955218 () Bool)

(declare-fun tp!1955219 () Bool)

(assert (=> b!7108146 (= e!4271964 (and tp!1955218 tp!1955219))))

(assert (= (and b!7107816 (is-ElementMatch!17922 (regTwo!36356 (regOne!36357 r!11554)))) b!7108145))

(assert (= (and b!7107816 (is-Concat!26767 (regTwo!36356 (regOne!36357 r!11554)))) b!7108146))

(assert (= (and b!7107816 (is-Star!17922 (regTwo!36356 (regOne!36357 r!11554)))) b!7108147))

(assert (= (and b!7107816 (is-Union!17922 (regTwo!36356 (regOne!36357 r!11554)))) b!7108148))

(declare-fun e!4271965 () Bool)

(assert (=> b!7107812 (= tp!1955098 e!4271965)))

(declare-fun b!7108151 () Bool)

(declare-fun tp!1955225 () Bool)

(assert (=> b!7108151 (= e!4271965 tp!1955225)))

(declare-fun b!7108152 () Bool)

(declare-fun tp!1955226 () Bool)

(declare-fun tp!1955222 () Bool)

(assert (=> b!7108152 (= e!4271965 (and tp!1955226 tp!1955222))))

(declare-fun b!7108149 () Bool)

(assert (=> b!7108149 (= e!4271965 tp_is_empty!45077)))

(declare-fun b!7108150 () Bool)

(declare-fun tp!1955223 () Bool)

(declare-fun tp!1955224 () Bool)

(assert (=> b!7108150 (= e!4271965 (and tp!1955223 tp!1955224))))

(assert (= (and b!7107812 (is-ElementMatch!17922 (regOne!36356 (reg!18251 r!11554)))) b!7108149))

(assert (= (and b!7107812 (is-Concat!26767 (regOne!36356 (reg!18251 r!11554)))) b!7108150))

(assert (= (and b!7107812 (is-Star!17922 (regOne!36356 (reg!18251 r!11554)))) b!7108151))

(assert (= (and b!7107812 (is-Union!17922 (regOne!36356 (reg!18251 r!11554)))) b!7108152))

(declare-fun e!4271966 () Bool)

(assert (=> b!7107812 (= tp!1955099 e!4271966)))

(declare-fun b!7108155 () Bool)

(declare-fun tp!1955230 () Bool)

(assert (=> b!7108155 (= e!4271966 tp!1955230)))

(declare-fun b!7108156 () Bool)

(declare-fun tp!1955231 () Bool)

(declare-fun tp!1955227 () Bool)

(assert (=> b!7108156 (= e!4271966 (and tp!1955231 tp!1955227))))

(declare-fun b!7108153 () Bool)

(assert (=> b!7108153 (= e!4271966 tp_is_empty!45077)))

(declare-fun b!7108154 () Bool)

(declare-fun tp!1955228 () Bool)

(declare-fun tp!1955229 () Bool)

(assert (=> b!7108154 (= e!4271966 (and tp!1955228 tp!1955229))))

(assert (= (and b!7107812 (is-ElementMatch!17922 (regTwo!36356 (reg!18251 r!11554)))) b!7108153))

(assert (= (and b!7107812 (is-Concat!26767 (regTwo!36356 (reg!18251 r!11554)))) b!7108154))

(assert (= (and b!7107812 (is-Star!17922 (regTwo!36356 (reg!18251 r!11554)))) b!7108155))

(assert (= (and b!7107812 (is-Union!17922 (regTwo!36356 (reg!18251 r!11554)))) b!7108156))

(declare-fun e!4271967 () Bool)

(assert (=> b!7107821 (= tp!1955110 e!4271967)))

(declare-fun b!7108159 () Bool)

(declare-fun tp!1955235 () Bool)

(assert (=> b!7108159 (= e!4271967 tp!1955235)))

(declare-fun b!7108160 () Bool)

(declare-fun tp!1955236 () Bool)

(declare-fun tp!1955232 () Bool)

(assert (=> b!7108160 (= e!4271967 (and tp!1955236 tp!1955232))))

(declare-fun b!7108157 () Bool)

(assert (=> b!7108157 (= e!4271967 tp_is_empty!45077)))

(declare-fun b!7108158 () Bool)

(declare-fun tp!1955233 () Bool)

(declare-fun tp!1955234 () Bool)

(assert (=> b!7108158 (= e!4271967 (and tp!1955233 tp!1955234))))

(assert (= (and b!7107821 (is-ElementMatch!17922 (reg!18251 (regTwo!36357 r!11554)))) b!7108157))

(assert (= (and b!7107821 (is-Concat!26767 (reg!18251 (regTwo!36357 r!11554)))) b!7108158))

(assert (= (and b!7107821 (is-Star!17922 (reg!18251 (regTwo!36357 r!11554)))) b!7108159))

(assert (= (and b!7107821 (is-Union!17922 (reg!18251 (regTwo!36357 r!11554)))) b!7108160))

(declare-fun e!4271968 () Bool)

(assert (=> b!7107806 (= tp!1955091 e!4271968)))

(declare-fun b!7108163 () Bool)

(declare-fun tp!1955240 () Bool)

(assert (=> b!7108163 (= e!4271968 tp!1955240)))

(declare-fun b!7108164 () Bool)

(declare-fun tp!1955241 () Bool)

(declare-fun tp!1955237 () Bool)

(assert (=> b!7108164 (= e!4271968 (and tp!1955241 tp!1955237))))

(declare-fun b!7108161 () Bool)

(assert (=> b!7108161 (= e!4271968 tp_is_empty!45077)))

(declare-fun b!7108162 () Bool)

(declare-fun tp!1955238 () Bool)

(declare-fun tp!1955239 () Bool)

(assert (=> b!7108162 (= e!4271968 (and tp!1955238 tp!1955239))))

(assert (= (and b!7107806 (is-ElementMatch!17922 (regOne!36357 (regOne!36356 r!11554)))) b!7108161))

(assert (= (and b!7107806 (is-Concat!26767 (regOne!36357 (regOne!36356 r!11554)))) b!7108162))

(assert (= (and b!7107806 (is-Star!17922 (regOne!36357 (regOne!36356 r!11554)))) b!7108163))

(assert (= (and b!7107806 (is-Union!17922 (regOne!36357 (regOne!36356 r!11554)))) b!7108164))

(declare-fun e!4271969 () Bool)

(assert (=> b!7107806 (= tp!1955087 e!4271969)))

(declare-fun b!7108167 () Bool)

(declare-fun tp!1955245 () Bool)

(assert (=> b!7108167 (= e!4271969 tp!1955245)))

(declare-fun b!7108168 () Bool)

(declare-fun tp!1955246 () Bool)

(declare-fun tp!1955242 () Bool)

(assert (=> b!7108168 (= e!4271969 (and tp!1955246 tp!1955242))))

(declare-fun b!7108165 () Bool)

(assert (=> b!7108165 (= e!4271969 tp_is_empty!45077)))

(declare-fun b!7108166 () Bool)

(declare-fun tp!1955243 () Bool)

(declare-fun tp!1955244 () Bool)

(assert (=> b!7108166 (= e!4271969 (and tp!1955243 tp!1955244))))

(assert (= (and b!7107806 (is-ElementMatch!17922 (regTwo!36357 (regOne!36356 r!11554)))) b!7108165))

(assert (= (and b!7107806 (is-Concat!26767 (regTwo!36357 (regOne!36356 r!11554)))) b!7108166))

(assert (= (and b!7107806 (is-Star!17922 (regTwo!36357 (regOne!36356 r!11554)))) b!7108167))

(assert (= (and b!7107806 (is-Union!17922 (regTwo!36357 (regOne!36356 r!11554)))) b!7108168))

(declare-fun e!4271970 () Bool)

(assert (=> b!7107814 (= tp!1955101 e!4271970)))

(declare-fun b!7108171 () Bool)

(declare-fun tp!1955250 () Bool)

(assert (=> b!7108171 (= e!4271970 tp!1955250)))

(declare-fun b!7108172 () Bool)

(declare-fun tp!1955251 () Bool)

(declare-fun tp!1955247 () Bool)

(assert (=> b!7108172 (= e!4271970 (and tp!1955251 tp!1955247))))

(declare-fun b!7108169 () Bool)

(assert (=> b!7108169 (= e!4271970 tp_is_empty!45077)))

(declare-fun b!7108170 () Bool)

(declare-fun tp!1955248 () Bool)

(declare-fun tp!1955249 () Bool)

(assert (=> b!7108170 (= e!4271970 (and tp!1955248 tp!1955249))))

(assert (= (and b!7107814 (is-ElementMatch!17922 (regOne!36357 (reg!18251 r!11554)))) b!7108169))

(assert (= (and b!7107814 (is-Concat!26767 (regOne!36357 (reg!18251 r!11554)))) b!7108170))

(assert (= (and b!7107814 (is-Star!17922 (regOne!36357 (reg!18251 r!11554)))) b!7108171))

(assert (= (and b!7107814 (is-Union!17922 (regOne!36357 (reg!18251 r!11554)))) b!7108172))

(declare-fun e!4271971 () Bool)

(assert (=> b!7107814 (= tp!1955097 e!4271971)))

(declare-fun b!7108175 () Bool)

(declare-fun tp!1955255 () Bool)

(assert (=> b!7108175 (= e!4271971 tp!1955255)))

(declare-fun b!7108176 () Bool)

(declare-fun tp!1955256 () Bool)

(declare-fun tp!1955252 () Bool)

(assert (=> b!7108176 (= e!4271971 (and tp!1955256 tp!1955252))))

(declare-fun b!7108173 () Bool)

(assert (=> b!7108173 (= e!4271971 tp_is_empty!45077)))

(declare-fun b!7108174 () Bool)

(declare-fun tp!1955253 () Bool)

(declare-fun tp!1955254 () Bool)

(assert (=> b!7108174 (= e!4271971 (and tp!1955253 tp!1955254))))

(assert (= (and b!7107814 (is-ElementMatch!17922 (regTwo!36357 (reg!18251 r!11554)))) b!7108173))

(assert (= (and b!7107814 (is-Concat!26767 (regTwo!36357 (reg!18251 r!11554)))) b!7108174))

(assert (= (and b!7107814 (is-Star!17922 (regTwo!36357 (reg!18251 r!11554)))) b!7108175))

(assert (= (and b!7107814 (is-Union!17922 (regTwo!36357 (reg!18251 r!11554)))) b!7108176))

(declare-fun e!4271972 () Bool)

(assert (=> b!7107809 (= tp!1955095 e!4271972)))

(declare-fun b!7108179 () Bool)

(declare-fun tp!1955260 () Bool)

(assert (=> b!7108179 (= e!4271972 tp!1955260)))

(declare-fun b!7108180 () Bool)

(declare-fun tp!1955261 () Bool)

(declare-fun tp!1955257 () Bool)

(assert (=> b!7108180 (= e!4271972 (and tp!1955261 tp!1955257))))

(declare-fun b!7108177 () Bool)

(assert (=> b!7108177 (= e!4271972 tp_is_empty!45077)))

(declare-fun b!7108178 () Bool)

(declare-fun tp!1955258 () Bool)

(declare-fun tp!1955259 () Bool)

(assert (=> b!7108178 (= e!4271972 (and tp!1955258 tp!1955259))))

(assert (= (and b!7107809 (is-ElementMatch!17922 (reg!18251 (regTwo!36356 r!11554)))) b!7108177))

(assert (= (and b!7107809 (is-Concat!26767 (reg!18251 (regTwo!36356 r!11554)))) b!7108178))

(assert (= (and b!7107809 (is-Star!17922 (reg!18251 (regTwo!36356 r!11554)))) b!7108179))

(assert (= (and b!7107809 (is-Union!17922 (reg!18251 (regTwo!36356 r!11554)))) b!7108180))

(declare-fun e!4271973 () Bool)

(assert (=> b!7107810 (= tp!1955096 e!4271973)))

(declare-fun b!7108183 () Bool)

(declare-fun tp!1955265 () Bool)

(assert (=> b!7108183 (= e!4271973 tp!1955265)))

(declare-fun b!7108184 () Bool)

(declare-fun tp!1955266 () Bool)

(declare-fun tp!1955262 () Bool)

(assert (=> b!7108184 (= e!4271973 (and tp!1955266 tp!1955262))))

(declare-fun b!7108181 () Bool)

(assert (=> b!7108181 (= e!4271973 tp_is_empty!45077)))

(declare-fun b!7108182 () Bool)

(declare-fun tp!1955263 () Bool)

(declare-fun tp!1955264 () Bool)

(assert (=> b!7108182 (= e!4271973 (and tp!1955263 tp!1955264))))

(assert (= (and b!7107810 (is-ElementMatch!17922 (regOne!36357 (regTwo!36356 r!11554)))) b!7108181))

(assert (= (and b!7107810 (is-Concat!26767 (regOne!36357 (regTwo!36356 r!11554)))) b!7108182))

(assert (= (and b!7107810 (is-Star!17922 (regOne!36357 (regTwo!36356 r!11554)))) b!7108183))

(assert (= (and b!7107810 (is-Union!17922 (regOne!36357 (regTwo!36356 r!11554)))) b!7108184))

(declare-fun e!4271974 () Bool)

(assert (=> b!7107810 (= tp!1955092 e!4271974)))

(declare-fun b!7108187 () Bool)

(declare-fun tp!1955270 () Bool)

(assert (=> b!7108187 (= e!4271974 tp!1955270)))

(declare-fun b!7108188 () Bool)

(declare-fun tp!1955271 () Bool)

(declare-fun tp!1955267 () Bool)

(assert (=> b!7108188 (= e!4271974 (and tp!1955271 tp!1955267))))

(declare-fun b!7108185 () Bool)

(assert (=> b!7108185 (= e!4271974 tp_is_empty!45077)))

(declare-fun b!7108186 () Bool)

(declare-fun tp!1955268 () Bool)

(declare-fun tp!1955269 () Bool)

(assert (=> b!7108186 (= e!4271974 (and tp!1955268 tp!1955269))))

(assert (= (and b!7107810 (is-ElementMatch!17922 (regTwo!36357 (regTwo!36356 r!11554)))) b!7108185))

(assert (= (and b!7107810 (is-Concat!26767 (regTwo!36357 (regTwo!36356 r!11554)))) b!7108186))

(assert (= (and b!7107810 (is-Star!17922 (regTwo!36357 (regTwo!36356 r!11554)))) b!7108187))

(assert (= (and b!7107810 (is-Union!17922 (regTwo!36357 (regTwo!36356 r!11554)))) b!7108188))

(declare-fun e!4271975 () Bool)

(assert (=> b!7107805 (= tp!1955090 e!4271975)))

(declare-fun b!7108191 () Bool)

(declare-fun tp!1955275 () Bool)

(assert (=> b!7108191 (= e!4271975 tp!1955275)))

(declare-fun b!7108192 () Bool)

(declare-fun tp!1955276 () Bool)

(declare-fun tp!1955272 () Bool)

(assert (=> b!7108192 (= e!4271975 (and tp!1955276 tp!1955272))))

(declare-fun b!7108189 () Bool)

(assert (=> b!7108189 (= e!4271975 tp_is_empty!45077)))

(declare-fun b!7108190 () Bool)

(declare-fun tp!1955273 () Bool)

(declare-fun tp!1955274 () Bool)

(assert (=> b!7108190 (= e!4271975 (and tp!1955273 tp!1955274))))

(assert (= (and b!7107805 (is-ElementMatch!17922 (reg!18251 (regOne!36356 r!11554)))) b!7108189))

(assert (= (and b!7107805 (is-Concat!26767 (reg!18251 (regOne!36356 r!11554)))) b!7108190))

(assert (= (and b!7107805 (is-Star!17922 (reg!18251 (regOne!36356 r!11554)))) b!7108191))

(assert (= (and b!7107805 (is-Union!17922 (reg!18251 (regOne!36356 r!11554)))) b!7108192))

(declare-fun e!4271976 () Bool)

(assert (=> b!7107791 (= tp!1955073 e!4271976)))

(declare-fun b!7108195 () Bool)

(declare-fun tp!1955280 () Bool)

(assert (=> b!7108195 (= e!4271976 tp!1955280)))

(declare-fun b!7108196 () Bool)

(declare-fun tp!1955281 () Bool)

(declare-fun tp!1955277 () Bool)

(assert (=> b!7108196 (= e!4271976 (and tp!1955281 tp!1955277))))

(declare-fun b!7108193 () Bool)

(assert (=> b!7108193 (= e!4271976 tp_is_empty!45077)))

(declare-fun b!7108194 () Bool)

(declare-fun tp!1955278 () Bool)

(declare-fun tp!1955279 () Bool)

(assert (=> b!7108194 (= e!4271976 (and tp!1955278 tp!1955279))))

(assert (= (and b!7107791 (is-ElementMatch!17922 (h!75207 (exprs!7416 c!9994)))) b!7108193))

(assert (= (and b!7107791 (is-Concat!26767 (h!75207 (exprs!7416 c!9994)))) b!7108194))

(assert (= (and b!7107791 (is-Star!17922 (h!75207 (exprs!7416 c!9994)))) b!7108195))

(assert (= (and b!7107791 (is-Union!17922 (h!75207 (exprs!7416 c!9994)))) b!7108196))

(declare-fun b!7108197 () Bool)

(declare-fun e!4271977 () Bool)

(declare-fun tp!1955282 () Bool)

(declare-fun tp!1955283 () Bool)

(assert (=> b!7108197 (= e!4271977 (and tp!1955282 tp!1955283))))

(assert (=> b!7107791 (= tp!1955074 e!4271977)))

(assert (= (and b!7107791 (is-Cons!68759 (t!382702 (exprs!7416 c!9994)))) b!7108197))

(declare-fun e!4271978 () Bool)

(assert (=> b!7107820 (= tp!1955108 e!4271978)))

(declare-fun b!7108200 () Bool)

(declare-fun tp!1955287 () Bool)

(assert (=> b!7108200 (= e!4271978 tp!1955287)))

(declare-fun b!7108201 () Bool)

(declare-fun tp!1955288 () Bool)

(declare-fun tp!1955284 () Bool)

(assert (=> b!7108201 (= e!4271978 (and tp!1955288 tp!1955284))))

(declare-fun b!7108198 () Bool)

(assert (=> b!7108198 (= e!4271978 tp_is_empty!45077)))

(declare-fun b!7108199 () Bool)

(declare-fun tp!1955285 () Bool)

(declare-fun tp!1955286 () Bool)

(assert (=> b!7108199 (= e!4271978 (and tp!1955285 tp!1955286))))

(assert (= (and b!7107820 (is-ElementMatch!17922 (regOne!36356 (regTwo!36357 r!11554)))) b!7108198))

(assert (= (and b!7107820 (is-Concat!26767 (regOne!36356 (regTwo!36357 r!11554)))) b!7108199))

(assert (= (and b!7107820 (is-Star!17922 (regOne!36356 (regTwo!36357 r!11554)))) b!7108200))

(assert (= (and b!7107820 (is-Union!17922 (regOne!36356 (regTwo!36357 r!11554)))) b!7108201))

(declare-fun e!4271979 () Bool)

(assert (=> b!7107820 (= tp!1955109 e!4271979)))

(declare-fun b!7108204 () Bool)

(declare-fun tp!1955292 () Bool)

(assert (=> b!7108204 (= e!4271979 tp!1955292)))

(declare-fun b!7108205 () Bool)

(declare-fun tp!1955293 () Bool)

(declare-fun tp!1955289 () Bool)

(assert (=> b!7108205 (= e!4271979 (and tp!1955293 tp!1955289))))

(declare-fun b!7108202 () Bool)

(assert (=> b!7108202 (= e!4271979 tp_is_empty!45077)))

(declare-fun b!7108203 () Bool)

(declare-fun tp!1955290 () Bool)

(declare-fun tp!1955291 () Bool)

(assert (=> b!7108203 (= e!4271979 (and tp!1955290 tp!1955291))))

(assert (= (and b!7107820 (is-ElementMatch!17922 (regTwo!36356 (regTwo!36357 r!11554)))) b!7108202))

(assert (= (and b!7107820 (is-Concat!26767 (regTwo!36356 (regTwo!36357 r!11554)))) b!7108203))

(assert (= (and b!7107820 (is-Star!17922 (regTwo!36356 (regTwo!36357 r!11554)))) b!7108204))

(assert (= (and b!7107820 (is-Union!17922 (regTwo!36356 (regTwo!36357 r!11554)))) b!7108205))

(declare-fun b_lambda!271387 () Bool)

(assert (= b_lambda!271385 (or d!2219619 b_lambda!271387)))

(declare-fun bs!1884910 () Bool)

(declare-fun d!2219713 () Bool)

(assert (= bs!1884910 (and d!2219713 d!2219619)))

(assert (=> bs!1884910 (= (dynLambda!28054 lambda!431734 (h!75207 (exprs!7416 auxCtx!45))) (validRegex!9195 (h!75207 (exprs!7416 auxCtx!45))))))

(declare-fun m!7830352 () Bool)

(assert (=> bs!1884910 m!7830352))

(assert (=> b!7108019 d!2219713))

(declare-fun b_lambda!271389 () Bool)

(assert (= b_lambda!271379 (or b!7107618 b_lambda!271389)))

(declare-fun bs!1884911 () Bool)

(declare-fun d!2219715 () Bool)

(assert (= bs!1884911 (and d!2219715 b!7107618)))

(assert (=> bs!1884911 (= (dynLambda!28054 lambda!431722 (h!75207 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)))) (validRegex!9195 (h!75207 (++!16074 (exprs!7416 c!9994) (exprs!7416 auxCtx!45)))))))

(declare-fun m!7830354 () Bool)

(assert (=> bs!1884911 m!7830354))

(assert (=> b!7107956 d!2219715))

(declare-fun b_lambda!271391 () Bool)

(assert (= b_lambda!271383 (or d!2219609 b_lambda!271391)))

(declare-fun bs!1884912 () Bool)

(declare-fun d!2219717 () Bool)

(assert (= bs!1884912 (and d!2219717 d!2219609)))

(assert (=> bs!1884912 (= (dynLambda!28054 lambda!431732 (h!75207 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))))) (validRegex!9195 (h!75207 (exprs!7416 (Context!13833 ($colon$colon!2780 (exprs!7416 c!9994) (regTwo!36356 r!11554)))))))))

(declare-fun m!7830356 () Bool)

(assert (=> bs!1884912 m!7830356))

(assert (=> b!7108017 d!2219717))

(declare-fun b_lambda!271393 () Bool)

(assert (= b_lambda!271377 (or d!2219617 b_lambda!271393)))

(declare-fun bs!1884913 () Bool)

(declare-fun d!2219719 () Bool)

(assert (= bs!1884913 (and d!2219719 d!2219617)))

(assert (=> bs!1884913 (= (dynLambda!28054 lambda!431733 (h!75207 (exprs!7416 c!9994))) (validRegex!9195 (h!75207 (exprs!7416 c!9994))))))

(declare-fun m!7830358 () Bool)

(assert (=> bs!1884913 m!7830358))

(assert (=> b!7107950 d!2219719))

(declare-fun b_lambda!271395 () Bool)

(assert (= b_lambda!271381 (or b!7107618 b_lambda!271395)))

(declare-fun bs!1884914 () Bool)

(declare-fun d!2219721 () Bool)

(assert (= bs!1884914 (and d!2219721 b!7107618)))

(assert (=> bs!1884914 (= (dynLambda!28054 lambda!431722 (h!75207 (exprs!7416 c!9994))) (validRegex!9195 (h!75207 (exprs!7416 c!9994))))))

(assert (=> bs!1884914 m!7830358))

(assert (=> b!7107958 d!2219721))

(push 1)

(assert (not b!7108170))

(assert (not b!7108004))

(assert (not b!7108171))

(assert (not b!7108163))

(assert (not b!7108102))

(assert (not bm!648095))

(assert (not bm!648087))

(assert (not b!7108194))

(assert (not b!7107994))

(assert (not bm!648097))

(assert (not b!7108101))

(assert (not bm!648049))

(assert (not b!7107953))

(assert (not b!7108114))

(assert (not b_lambda!271387))

(assert (not b!7108071))

(assert (not b_lambda!271395))

(assert (not b!7108192))

(assert (not bs!1884914))

(assert (not b!7108151))

(assert (not bm!648057))

(assert (not d!2219655))

(assert (not b!7107959))

(assert (not bm!648079))

(assert (not b!7108201))

(assert (not b!7108148))

(assert (not bs!1884912))

(assert (not b!7108013))

(assert (not b!7108069))

(assert (not b!7108133))

(assert (not b!7108203))

(assert (not b!7108168))

(assert (not b!7107965))

(assert (not b!7108195))

(assert (not bm!648053))

(assert (not bs!1884911))

(assert (not bm!648077))

(assert (not b!7108175))

(assert (not b!7108156))

(assert (not bm!648091))

(assert (not b!7108183))

(assert (not b!7108178))

(assert (not b!7108140))

(assert (not bm!648071))

(assert (not b!7108186))

(assert (not bm!648093))

(assert (not b!7108073))

(assert (not d!2219665))

(assert (not b!7108126))

(assert (not b!7108139))

(assert (not b!7108134))

(assert (not b!7108155))

(assert (not b!7108123))

(assert (not bm!648067))

(assert (not d!2219653))

(assert (not b!7108200))

(assert (not b!7108174))

(assert (not b!7108130))

(assert (not b!7108180))

(assert (not b!7108079))

(assert (not b!7108162))

(assert (not b!7108109))

(assert (not b!7108127))

(assert (not b!7108164))

(assert (not b!7108020))

(assert (not bm!648099))

(assert (not d!2219675))

(assert (not d!2219699))

(assert (not b!7108179))

(assert (not b!7108187))

(assert (not b!7108125))

(assert (not b!7108158))

(assert (not d!2219659))

(assert (not b!7108115))

(assert (not b!7108107))

(assert (not b!7108184))

(assert (not bs!1884913))

(assert (not b_lambda!271393))

(assert (not b!7108182))

(assert (not b!7108118))

(assert (not bm!648064))

(assert (not b!7108143))

(assert (not bm!648047))

(assert (not b!7108167))

(assert (not b!7107940))

(assert (not b!7108159))

(assert (not b!7107957))

(assert (not b!7108099))

(assert (not b!7108105))

(assert tp_is_empty!45077)

(assert (not b!7108172))

(assert (not b!7108196))

(assert (not b!7108191))

(assert (not b!7108026))

(assert (not b!7108106))

(assert (not b!7108154))

(assert (not bm!648065))

(assert (not b!7108147))

(assert (not b!7108018))

(assert (not b!7108103))

(assert (not bm!648089))

(assert (not b_lambda!271391))

(assert (not b!7108111))

(assert (not b!7107954))

(assert (not b!7108197))

(assert (not b!7108150))

(assert (not b!7108037))

(assert (not b!7107998))

(assert (not b!7108144))

(assert (not bs!1884910))

(assert (not b!7108138))

(assert (not b!7108097))

(assert (not b!7108188))

(assert (not bm!648073))

(assert (not b!7108129))

(assert (not b!7108113))

(assert (not b!7108135))

(assert (not b!7108121))

(assert (not b!7107985))

(assert (not b!7108090))

(assert (not bm!648059))

(assert (not b!7108160))

(assert (not bm!648061))

(assert (not bm!648088))

(assert (not b!7108119))

(assert (not b!7108190))

(assert (not b!7108117))

(assert (not b!7108110))

(assert (not bm!648068))

(assert (not b!7108122))

(assert (not b!7107951))

(assert (not b!7108142))

(assert (not bm!648081))

(assert (not b!7108204))

(assert (not b_lambda!271389))

(assert (not b!7108146))

(assert (not b!7108166))

(assert (not bm!648070))

(assert (not b!7107996))

(assert (not b!7108199))

(assert (not b!7108176))

(assert (not bm!648062))

(assert (not bm!648055))

(assert (not b!7108131))

(assert (not b!7108152))

(assert (not bm!648075))

(assert (not b!7108205))

(assert (not b!7108098))

(assert (not bm!648051))

(assert (not b!7108137))

(assert (not b!7107976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

