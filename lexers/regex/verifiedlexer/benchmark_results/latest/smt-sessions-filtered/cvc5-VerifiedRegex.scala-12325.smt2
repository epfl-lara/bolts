; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691434 () Bool)

(assert start!691434)

(declare-fun b!7102672 () Bool)

(assert (=> b!7102672 true))

(declare-fun res!2899871 () Bool)

(declare-fun e!4269045 () Bool)

(assert (=> start!691434 (=> (not res!2899871) (not e!4269045))))

(declare-datatypes ((C!36054 0))(
  ( (C!36055 (val!27733 Int)) )
))
(declare-datatypes ((Regex!17892 0))(
  ( (ElementMatch!17892 (c!1325265 C!36054)) (Concat!26737 (regOne!36296 Regex!17892) (regTwo!36296 Regex!17892)) (EmptyExpr!17892) (Star!17892 (reg!18221 Regex!17892)) (EmptyLang!17892) (Union!17892 (regOne!36297 Regex!17892) (regTwo!36297 Regex!17892)) )
))
(declare-fun r!11554 () Regex!17892)

(declare-fun validRegex!9165 (Regex!17892) Bool)

(assert (=> start!691434 (= res!2899871 (validRegex!9165 r!11554))))

(assert (=> start!691434 e!4269045))

(declare-fun e!4269046 () Bool)

(assert (=> start!691434 e!4269046))

(declare-datatypes ((List!68853 0))(
  ( (Nil!68729) (Cons!68729 (h!75177 Regex!17892) (t!382670 List!68853)) )
))
(declare-datatypes ((Context!13772 0))(
  ( (Context!13773 (exprs!7386 List!68853)) )
))
(declare-fun c!9994 () Context!13772)

(declare-fun e!4269048 () Bool)

(declare-fun inv!87594 (Context!13772) Bool)

(assert (=> start!691434 (and (inv!87594 c!9994) e!4269048)))

(declare-fun tp_is_empty!45017 () Bool)

(assert (=> start!691434 tp_is_empty!45017))

(declare-fun auxCtx!45 () Context!13772)

(declare-fun e!4269047 () Bool)

(assert (=> start!691434 (and (inv!87594 auxCtx!45) e!4269047)))

(declare-fun b!7102671 () Bool)

(declare-fun tp!1952934 () Bool)

(assert (=> b!7102671 (= e!4269048 tp!1952934)))

(declare-fun e!4269049 () Bool)

(assert (=> b!7102672 (= e!4269045 e!4269049)))

(declare-fun res!2899872 () Bool)

(assert (=> b!7102672 (=> (not res!2899872) (not e!4269049))))

(declare-fun a!1901 () C!36054)

(assert (=> b!7102672 (= res!2899872 (and (is-ElementMatch!17892 r!11554) (= (c!1325265 r!11554) a!1901)))))

(declare-fun b!7102673 () Bool)

(declare-fun tp!1952932 () Bool)

(assert (=> b!7102673 (= e!4269046 tp!1952932)))

(declare-fun b!7102674 () Bool)

(assert (=> b!7102674 (= e!4269046 tp_is_empty!45017)))

(declare-fun b!7102675 () Bool)

(declare-fun tp!1952930 () Bool)

(assert (=> b!7102675 (= e!4269047 tp!1952930)))

(declare-fun b!7102676 () Bool)

(declare-fun tp!1952933 () Bool)

(declare-fun tp!1952929 () Bool)

(assert (=> b!7102676 (= e!4269046 (and tp!1952933 tp!1952929))))

(declare-fun b!7102677 () Bool)

(declare-fun tp!1952935 () Bool)

(declare-fun tp!1952931 () Bool)

(assert (=> b!7102677 (= e!4269046 (and tp!1952935 tp!1952931))))

(declare-fun b!7102678 () Bool)

(declare-fun derivationStepZipperDown!2417 (Regex!17892 Context!13772 C!36054) (Set Context!13772))

(declare-fun ++!16044 (List!68853 List!68853) List!68853)

(declare-fun appendTo!913 ((Set Context!13772) Context!13772) (Set Context!13772))

(assert (=> b!7102678 (= e!4269049 (not (= (derivationStepZipperDown!2417 r!11554 (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) a!1901) (appendTo!913 (derivationStepZipperDown!2417 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lambda!431179 () Int)

(declare-datatypes ((Unit!162455 0))(
  ( (Unit!162456) )
))
(declare-fun lt!2558344 () Unit!162455)

(declare-fun lemmaConcatPreservesForall!1177 (List!68853 List!68853 Int) Unit!162455)

(assert (=> b!7102678 (= lt!2558344 (lemmaConcatPreservesForall!1177 (exprs!7386 c!9994) (exprs!7386 auxCtx!45) lambda!431179))))

(declare-fun lt!2558341 () (Set Context!13772))

(declare-fun lambda!431178 () Int)

(declare-fun map!16235 ((Set Context!13772) Int) (Set Context!13772))

(assert (=> b!7102678 (= (map!16235 lt!2558341 lambda!431178) (set.insert (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) (as set.empty (Set Context!13772))))))

(declare-fun lt!2558342 () Unit!162455)

(assert (=> b!7102678 (= lt!2558342 (lemmaConcatPreservesForall!1177 (exprs!7386 c!9994) (exprs!7386 auxCtx!45) lambda!431179))))

(declare-fun lt!2558343 () Unit!162455)

(declare-fun lemmaMapOnSingletonSet!453 ((Set Context!13772) Context!13772 Int) Unit!162455)

(assert (=> b!7102678 (= lt!2558343 (lemmaMapOnSingletonSet!453 lt!2558341 c!9994 lambda!431178))))

(assert (=> b!7102678 (= lt!2558341 (set.insert c!9994 (as set.empty (Set Context!13772))))))

(assert (= (and start!691434 res!2899871) b!7102672))

(assert (= (and b!7102672 res!2899872) b!7102678))

(assert (= (and start!691434 (is-ElementMatch!17892 r!11554)) b!7102674))

(assert (= (and start!691434 (is-Concat!26737 r!11554)) b!7102677))

(assert (= (and start!691434 (is-Star!17892 r!11554)) b!7102673))

(assert (= (and start!691434 (is-Union!17892 r!11554)) b!7102676))

(assert (= start!691434 b!7102671))

(assert (= start!691434 b!7102675))

(declare-fun m!7827244 () Bool)

(assert (=> start!691434 m!7827244))

(declare-fun m!7827246 () Bool)

(assert (=> start!691434 m!7827246))

(declare-fun m!7827248 () Bool)

(assert (=> start!691434 m!7827248))

(declare-fun m!7827250 () Bool)

(assert (=> b!7102678 m!7827250))

(declare-fun m!7827252 () Bool)

(assert (=> b!7102678 m!7827252))

(declare-fun m!7827254 () Bool)

(assert (=> b!7102678 m!7827254))

(assert (=> b!7102678 m!7827252))

(declare-fun m!7827256 () Bool)

(assert (=> b!7102678 m!7827256))

(declare-fun m!7827258 () Bool)

(assert (=> b!7102678 m!7827258))

(declare-fun m!7827260 () Bool)

(assert (=> b!7102678 m!7827260))

(declare-fun m!7827262 () Bool)

(assert (=> b!7102678 m!7827262))

(declare-fun m!7827264 () Bool)

(assert (=> b!7102678 m!7827264))

(declare-fun m!7827266 () Bool)

(assert (=> b!7102678 m!7827266))

(assert (=> b!7102678 m!7827250))

(push 1)

(assert (not b!7102678))

(assert (not b!7102671))

(assert tp_is_empty!45017)

(assert (not start!691434))

(assert (not b!7102675))

(assert (not b!7102673))

(assert (not b!7102676))

(assert (not b!7102677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1884419 () Bool)

(declare-fun d!2218820 () Bool)

(assert (= bs!1884419 (and d!2218820 b!7102672)))

(declare-fun lambda!431194 () Int)

(assert (=> bs!1884419 (= lambda!431194 lambda!431178)))

(assert (=> d!2218820 true))

(assert (=> d!2218820 (= (appendTo!913 (derivationStepZipperDown!2417 r!11554 c!9994 a!1901) auxCtx!45) (map!16235 (derivationStepZipperDown!2417 r!11554 c!9994 a!1901) lambda!431194))))

(declare-fun bs!1884420 () Bool)

(assert (= bs!1884420 d!2218820))

(assert (=> bs!1884420 m!7827252))

(declare-fun m!7827292 () Bool)

(assert (=> bs!1884420 m!7827292))

(assert (=> b!7102678 d!2218820))

(declare-fun d!2218822 () Bool)

(declare-fun dynLambda!28049 (Int Context!13772) Context!13772)

(assert (=> d!2218822 (= (map!16235 lt!2558341 lambda!431178) (set.insert (dynLambda!28049 lambda!431178 c!9994) (as set.empty (Set Context!13772))))))

(declare-fun lt!2558363 () Unit!162455)

(declare-fun choose!54777 ((Set Context!13772) Context!13772 Int) Unit!162455)

(assert (=> d!2218822 (= lt!2558363 (choose!54777 lt!2558341 c!9994 lambda!431178))))

(assert (=> d!2218822 (= lt!2558341 (set.insert c!9994 (as set.empty (Set Context!13772))))))

(assert (=> d!2218822 (= (lemmaMapOnSingletonSet!453 lt!2558341 c!9994 lambda!431178) lt!2558363)))

(declare-fun b_lambda!271321 () Bool)

(assert (=> (not b_lambda!271321) (not d!2218822)))

(declare-fun bs!1884421 () Bool)

(assert (= bs!1884421 d!2218822))

(declare-fun m!7827294 () Bool)

(assert (=> bs!1884421 m!7827294))

(declare-fun m!7827296 () Bool)

(assert (=> bs!1884421 m!7827296))

(assert (=> bs!1884421 m!7827262))

(declare-fun m!7827298 () Bool)

(assert (=> bs!1884421 m!7827298))

(assert (=> bs!1884421 m!7827294))

(assert (=> bs!1884421 m!7827264))

(assert (=> b!7102678 d!2218822))

(declare-fun bm!646897 () Bool)

(declare-fun call!646902 () (Set Context!13772))

(declare-fun call!646905 () (Set Context!13772))

(assert (=> bm!646897 (= call!646902 call!646905)))

(declare-fun d!2218824 () Bool)

(declare-fun c!1325280 () Bool)

(assert (=> d!2218824 (= c!1325280 (and (is-ElementMatch!17892 r!11554) (= (c!1325265 r!11554) a!1901)))))

(declare-fun e!4269082 () (Set Context!13772))

(assert (=> d!2218824 (= (derivationStepZipperDown!2417 r!11554 c!9994 a!1901) e!4269082)))

(declare-fun b!7102729 () Bool)

(declare-fun e!4269080 () (Set Context!13772))

(declare-fun call!646907 () (Set Context!13772))

(assert (=> b!7102729 (= e!4269080 call!646907)))

(declare-fun b!7102730 () Bool)

(declare-fun c!1325282 () Bool)

(declare-fun e!4269079 () Bool)

(assert (=> b!7102730 (= c!1325282 e!4269079)))

(declare-fun res!2899883 () Bool)

(assert (=> b!7102730 (=> (not res!2899883) (not e!4269079))))

(assert (=> b!7102730 (= res!2899883 (is-Concat!26737 r!11554))))

(declare-fun e!4269078 () (Set Context!13772))

(declare-fun e!4269081 () (Set Context!13772))

(assert (=> b!7102730 (= e!4269078 e!4269081)))

(declare-fun b!7102731 () Bool)

(declare-fun c!1325281 () Bool)

(assert (=> b!7102731 (= c!1325281 (is-Star!17892 r!11554))))

(declare-fun e!4269077 () (Set Context!13772))

(assert (=> b!7102731 (= e!4269080 e!4269077)))

(declare-fun b!7102732 () Bool)

(assert (=> b!7102732 (= e!4269082 (set.insert c!9994 (as set.empty (Set Context!13772))))))

(declare-fun b!7102733 () Bool)

(declare-fun nullable!7530 (Regex!17892) Bool)

(assert (=> b!7102733 (= e!4269079 (nullable!7530 (regOne!36296 r!11554)))))

(declare-fun bm!646898 () Bool)

(declare-fun c!1325278 () Bool)

(declare-fun call!646904 () List!68853)

(declare-fun $colon$colon!2759 (List!68853 Regex!17892) List!68853)

(assert (=> bm!646898 (= call!646904 ($colon$colon!2759 (exprs!7386 c!9994) (ite (or c!1325282 c!1325278) (regTwo!36296 r!11554) r!11554)))))

(declare-fun bm!646899 () Bool)

(declare-fun call!646903 () List!68853)

(assert (=> bm!646899 (= call!646903 call!646904)))

(declare-fun b!7102734 () Bool)

(assert (=> b!7102734 (= e!4269077 (as set.empty (Set Context!13772)))))

(declare-fun b!7102735 () Bool)

(assert (=> b!7102735 (= e!4269081 e!4269080)))

(assert (=> b!7102735 (= c!1325278 (is-Concat!26737 r!11554))))

(declare-fun b!7102736 () Bool)

(declare-fun call!646906 () (Set Context!13772))

(assert (=> b!7102736 (= e!4269081 (set.union call!646906 call!646902))))

(declare-fun b!7102737 () Bool)

(assert (=> b!7102737 (= e!4269078 (set.union call!646906 call!646905))))

(declare-fun b!7102738 () Bool)

(assert (=> b!7102738 (= e!4269077 call!646907)))

(declare-fun bm!646900 () Bool)

(declare-fun c!1325279 () Bool)

(assert (=> bm!646900 (= call!646905 (derivationStepZipperDown!2417 (ite c!1325279 (regTwo!36297 r!11554) (ite c!1325282 (regTwo!36296 r!11554) (ite c!1325278 (regOne!36296 r!11554) (reg!18221 r!11554)))) (ite (or c!1325279 c!1325282) c!9994 (Context!13773 call!646903)) a!1901))))

(declare-fun bm!646901 () Bool)

(assert (=> bm!646901 (= call!646906 (derivationStepZipperDown!2417 (ite c!1325279 (regOne!36297 r!11554) (regOne!36296 r!11554)) (ite c!1325279 c!9994 (Context!13773 call!646904)) a!1901))))

(declare-fun bm!646902 () Bool)

(assert (=> bm!646902 (= call!646907 call!646902)))

(declare-fun b!7102739 () Bool)

(assert (=> b!7102739 (= e!4269082 e!4269078)))

(assert (=> b!7102739 (= c!1325279 (is-Union!17892 r!11554))))

(assert (= (and d!2218824 c!1325280) b!7102732))

(assert (= (and d!2218824 (not c!1325280)) b!7102739))

(assert (= (and b!7102739 c!1325279) b!7102737))

(assert (= (and b!7102739 (not c!1325279)) b!7102730))

(assert (= (and b!7102730 res!2899883) b!7102733))

(assert (= (and b!7102730 c!1325282) b!7102736))

(assert (= (and b!7102730 (not c!1325282)) b!7102735))

(assert (= (and b!7102735 c!1325278) b!7102729))

(assert (= (and b!7102735 (not c!1325278)) b!7102731))

(assert (= (and b!7102731 c!1325281) b!7102738))

(assert (= (and b!7102731 (not c!1325281)) b!7102734))

(assert (= (or b!7102729 b!7102738) bm!646899))

(assert (= (or b!7102729 b!7102738) bm!646902))

(assert (= (or b!7102736 bm!646902) bm!646897))

(assert (= (or b!7102736 bm!646899) bm!646898))

(assert (= (or b!7102737 bm!646897) bm!646900))

(assert (= (or b!7102737 b!7102736) bm!646901))

(declare-fun m!7827308 () Bool)

(assert (=> bm!646900 m!7827308))

(declare-fun m!7827310 () Bool)

(assert (=> b!7102733 m!7827310))

(declare-fun m!7827312 () Bool)

(assert (=> bm!646898 m!7827312))

(declare-fun m!7827314 () Bool)

(assert (=> bm!646901 m!7827314))

(assert (=> b!7102732 m!7827264))

(assert (=> b!7102678 d!2218824))

(declare-fun bm!646903 () Bool)

(declare-fun call!646908 () (Set Context!13772))

(declare-fun call!646911 () (Set Context!13772))

(assert (=> bm!646903 (= call!646908 call!646911)))

(declare-fun d!2218832 () Bool)

(declare-fun c!1325285 () Bool)

(assert (=> d!2218832 (= c!1325285 (and (is-ElementMatch!17892 r!11554) (= (c!1325265 r!11554) a!1901)))))

(declare-fun e!4269088 () (Set Context!13772))

(assert (=> d!2218832 (= (derivationStepZipperDown!2417 r!11554 (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) a!1901) e!4269088)))

(declare-fun b!7102740 () Bool)

(declare-fun e!4269086 () (Set Context!13772))

(declare-fun call!646913 () (Set Context!13772))

(assert (=> b!7102740 (= e!4269086 call!646913)))

(declare-fun b!7102741 () Bool)

(declare-fun c!1325287 () Bool)

(declare-fun e!4269085 () Bool)

(assert (=> b!7102741 (= c!1325287 e!4269085)))

(declare-fun res!2899884 () Bool)

(assert (=> b!7102741 (=> (not res!2899884) (not e!4269085))))

(assert (=> b!7102741 (= res!2899884 (is-Concat!26737 r!11554))))

(declare-fun e!4269084 () (Set Context!13772))

(declare-fun e!4269087 () (Set Context!13772))

(assert (=> b!7102741 (= e!4269084 e!4269087)))

(declare-fun b!7102742 () Bool)

(declare-fun c!1325286 () Bool)

(assert (=> b!7102742 (= c!1325286 (is-Star!17892 r!11554))))

(declare-fun e!4269083 () (Set Context!13772))

(assert (=> b!7102742 (= e!4269086 e!4269083)))

(declare-fun b!7102743 () Bool)

(assert (=> b!7102743 (= e!4269088 (set.insert (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) (as set.empty (Set Context!13772))))))

(declare-fun b!7102744 () Bool)

(assert (=> b!7102744 (= e!4269085 (nullable!7530 (regOne!36296 r!11554)))))

(declare-fun bm!646904 () Bool)

(declare-fun call!646910 () List!68853)

(declare-fun c!1325283 () Bool)

(assert (=> bm!646904 (= call!646910 ($colon$colon!2759 (exprs!7386 (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45)))) (ite (or c!1325287 c!1325283) (regTwo!36296 r!11554) r!11554)))))

(declare-fun bm!646905 () Bool)

(declare-fun call!646909 () List!68853)

(assert (=> bm!646905 (= call!646909 call!646910)))

(declare-fun b!7102745 () Bool)

(assert (=> b!7102745 (= e!4269083 (as set.empty (Set Context!13772)))))

(declare-fun b!7102746 () Bool)

(assert (=> b!7102746 (= e!4269087 e!4269086)))

(assert (=> b!7102746 (= c!1325283 (is-Concat!26737 r!11554))))

(declare-fun b!7102747 () Bool)

(declare-fun call!646912 () (Set Context!13772))

(assert (=> b!7102747 (= e!4269087 (set.union call!646912 call!646908))))

(declare-fun b!7102748 () Bool)

(assert (=> b!7102748 (= e!4269084 (set.union call!646912 call!646911))))

(declare-fun b!7102749 () Bool)

(assert (=> b!7102749 (= e!4269083 call!646913)))

(declare-fun bm!646906 () Bool)

(declare-fun c!1325284 () Bool)

(assert (=> bm!646906 (= call!646911 (derivationStepZipperDown!2417 (ite c!1325284 (regTwo!36297 r!11554) (ite c!1325287 (regTwo!36296 r!11554) (ite c!1325283 (regOne!36296 r!11554) (reg!18221 r!11554)))) (ite (or c!1325284 c!1325287) (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) (Context!13773 call!646909)) a!1901))))

(declare-fun bm!646907 () Bool)

(assert (=> bm!646907 (= call!646912 (derivationStepZipperDown!2417 (ite c!1325284 (regOne!36297 r!11554) (regOne!36296 r!11554)) (ite c!1325284 (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))) (Context!13773 call!646910)) a!1901))))

(declare-fun bm!646908 () Bool)

(assert (=> bm!646908 (= call!646913 call!646908)))

(declare-fun b!7102750 () Bool)

(assert (=> b!7102750 (= e!4269088 e!4269084)))

(assert (=> b!7102750 (= c!1325284 (is-Union!17892 r!11554))))

(assert (= (and d!2218832 c!1325285) b!7102743))

(assert (= (and d!2218832 (not c!1325285)) b!7102750))

(assert (= (and b!7102750 c!1325284) b!7102748))

(assert (= (and b!7102750 (not c!1325284)) b!7102741))

(assert (= (and b!7102741 res!2899884) b!7102744))

(assert (= (and b!7102741 c!1325287) b!7102747))

(assert (= (and b!7102741 (not c!1325287)) b!7102746))

(assert (= (and b!7102746 c!1325283) b!7102740))

(assert (= (and b!7102746 (not c!1325283)) b!7102742))

(assert (= (and b!7102742 c!1325286) b!7102749))

(assert (= (and b!7102742 (not c!1325286)) b!7102745))

(assert (= (or b!7102740 b!7102749) bm!646905))

(assert (= (or b!7102740 b!7102749) bm!646908))

(assert (= (or b!7102747 bm!646908) bm!646903))

(assert (= (or b!7102747 bm!646905) bm!646904))

(assert (= (or b!7102748 bm!646903) bm!646906))

(assert (= (or b!7102748 b!7102747) bm!646907))

(declare-fun m!7827316 () Bool)

(assert (=> bm!646906 m!7827316))

(assert (=> b!7102744 m!7827310))

(declare-fun m!7827318 () Bool)

(assert (=> bm!646904 m!7827318))

(declare-fun m!7827320 () Bool)

(assert (=> bm!646907 m!7827320))

(assert (=> b!7102743 m!7827266))

(assert (=> b!7102678 d!2218832))

(declare-fun b!7102761 () Bool)

(declare-fun res!2899889 () Bool)

(declare-fun e!4269094 () Bool)

(assert (=> b!7102761 (=> (not res!2899889) (not e!4269094))))

(declare-fun lt!2558371 () List!68853)

(declare-fun size!41358 (List!68853) Int)

(assert (=> b!7102761 (= res!2899889 (= (size!41358 lt!2558371) (+ (size!41358 (exprs!7386 c!9994)) (size!41358 (exprs!7386 auxCtx!45)))))))

(declare-fun b!7102759 () Bool)

(declare-fun e!4269093 () List!68853)

(assert (=> b!7102759 (= e!4269093 (exprs!7386 auxCtx!45))))

(declare-fun b!7102760 () Bool)

(assert (=> b!7102760 (= e!4269093 (Cons!68729 (h!75177 (exprs!7386 c!9994)) (++!16044 (t!382670 (exprs!7386 c!9994)) (exprs!7386 auxCtx!45))))))

(declare-fun b!7102762 () Bool)

(assert (=> b!7102762 (= e!4269094 (or (not (= (exprs!7386 auxCtx!45) Nil!68729)) (= lt!2558371 (exprs!7386 c!9994))))))

(declare-fun d!2218834 () Bool)

(assert (=> d!2218834 e!4269094))

(declare-fun res!2899890 () Bool)

(assert (=> d!2218834 (=> (not res!2899890) (not e!4269094))))

(declare-fun content!13983 (List!68853) (Set Regex!17892))

(assert (=> d!2218834 (= res!2899890 (= (content!13983 lt!2558371) (set.union (content!13983 (exprs!7386 c!9994)) (content!13983 (exprs!7386 auxCtx!45)))))))

(assert (=> d!2218834 (= lt!2558371 e!4269093)))

(declare-fun c!1325291 () Bool)

(assert (=> d!2218834 (= c!1325291 (is-Nil!68729 (exprs!7386 c!9994)))))

(assert (=> d!2218834 (= (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45)) lt!2558371)))

(assert (= (and d!2218834 c!1325291) b!7102759))

(assert (= (and d!2218834 (not c!1325291)) b!7102760))

(assert (= (and d!2218834 res!2899890) b!7102761))

(assert (= (and b!7102761 res!2899889) b!7102762))

(declare-fun m!7827322 () Bool)

(assert (=> b!7102761 m!7827322))

(declare-fun m!7827324 () Bool)

(assert (=> b!7102761 m!7827324))

(declare-fun m!7827326 () Bool)

(assert (=> b!7102761 m!7827326))

(declare-fun m!7827328 () Bool)

(assert (=> b!7102760 m!7827328))

(declare-fun m!7827330 () Bool)

(assert (=> d!2218834 m!7827330))

(declare-fun m!7827332 () Bool)

(assert (=> d!2218834 m!7827332))

(declare-fun m!7827334 () Bool)

(assert (=> d!2218834 m!7827334))

(assert (=> b!7102678 d!2218834))

(declare-fun d!2218836 () Bool)

(declare-fun choose!54778 ((Set Context!13772) Int) (Set Context!13772))

(assert (=> d!2218836 (= (map!16235 lt!2558341 lambda!431178) (choose!54778 lt!2558341 lambda!431178))))

(declare-fun bs!1884424 () Bool)

(assert (= bs!1884424 d!2218836))

(declare-fun m!7827336 () Bool)

(assert (=> bs!1884424 m!7827336))

(assert (=> b!7102678 d!2218836))

(declare-fun d!2218838 () Bool)

(declare-fun forall!16796 (List!68853 Int) Bool)

(assert (=> d!2218838 (forall!16796 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45)) lambda!431179)))

(declare-fun lt!2558374 () Unit!162455)

(declare-fun choose!54779 (List!68853 List!68853 Int) Unit!162455)

(assert (=> d!2218838 (= lt!2558374 (choose!54779 (exprs!7386 c!9994) (exprs!7386 auxCtx!45) lambda!431179))))

(assert (=> d!2218838 (forall!16796 (exprs!7386 c!9994) lambda!431179)))

(assert (=> d!2218838 (= (lemmaConcatPreservesForall!1177 (exprs!7386 c!9994) (exprs!7386 auxCtx!45) lambda!431179) lt!2558374)))

(declare-fun bs!1884427 () Bool)

(assert (= bs!1884427 d!2218838))

(assert (=> bs!1884427 m!7827258))

(assert (=> bs!1884427 m!7827258))

(declare-fun m!7827340 () Bool)

(assert (=> bs!1884427 m!7827340))

(declare-fun m!7827342 () Bool)

(assert (=> bs!1884427 m!7827342))

(declare-fun m!7827344 () Bool)

(assert (=> bs!1884427 m!7827344))

(assert (=> b!7102678 d!2218838))

(declare-fun b!7102781 () Bool)

(declare-fun res!2899901 () Bool)

(declare-fun e!4269109 () Bool)

(assert (=> b!7102781 (=> (not res!2899901) (not e!4269109))))

(declare-fun call!646920 () Bool)

(assert (=> b!7102781 (= res!2899901 call!646920)))

(declare-fun e!4269112 () Bool)

(assert (=> b!7102781 (= e!4269112 e!4269109)))

(declare-fun b!7102782 () Bool)

(declare-fun e!4269111 () Bool)

(declare-fun e!4269110 () Bool)

(assert (=> b!7102782 (= e!4269111 e!4269110)))

(declare-fun c!1325297 () Bool)

(assert (=> b!7102782 (= c!1325297 (is-Star!17892 r!11554))))

(declare-fun b!7102783 () Bool)

(declare-fun e!4269114 () Bool)

(declare-fun e!4269115 () Bool)

(assert (=> b!7102783 (= e!4269114 e!4269115)))

(declare-fun res!2899905 () Bool)

(assert (=> b!7102783 (=> (not res!2899905) (not e!4269115))))

(declare-fun call!646921 () Bool)

(assert (=> b!7102783 (= res!2899905 call!646921)))

(declare-fun b!7102784 () Bool)

(assert (=> b!7102784 (= e!4269109 call!646921)))

(declare-fun bm!646915 () Bool)

(declare-fun call!646922 () Bool)

(declare-fun c!1325296 () Bool)

(assert (=> bm!646915 (= call!646922 (validRegex!9165 (ite c!1325297 (reg!18221 r!11554) (ite c!1325296 (regTwo!36297 r!11554) (regOne!36296 r!11554)))))))

(declare-fun d!2218842 () Bool)

(declare-fun res!2899904 () Bool)

(assert (=> d!2218842 (=> res!2899904 e!4269111)))

(assert (=> d!2218842 (= res!2899904 (is-ElementMatch!17892 r!11554))))

(assert (=> d!2218842 (= (validRegex!9165 r!11554) e!4269111)))

(declare-fun b!7102785 () Bool)

(declare-fun e!4269113 () Bool)

(assert (=> b!7102785 (= e!4269110 e!4269113)))

(declare-fun res!2899902 () Bool)

(assert (=> b!7102785 (= res!2899902 (not (nullable!7530 (reg!18221 r!11554))))))

(assert (=> b!7102785 (=> (not res!2899902) (not e!4269113))))

(declare-fun bm!646916 () Bool)

(assert (=> bm!646916 (= call!646921 call!646922)))

(declare-fun b!7102786 () Bool)

(assert (=> b!7102786 (= e!4269115 call!646920)))

(declare-fun bm!646917 () Bool)

(assert (=> bm!646917 (= call!646920 (validRegex!9165 (ite c!1325296 (regOne!36297 r!11554) (regTwo!36296 r!11554))))))

(declare-fun b!7102787 () Bool)

(assert (=> b!7102787 (= e!4269113 call!646922)))

(declare-fun b!7102788 () Bool)

(declare-fun res!2899903 () Bool)

(assert (=> b!7102788 (=> res!2899903 e!4269114)))

(assert (=> b!7102788 (= res!2899903 (not (is-Concat!26737 r!11554)))))

(assert (=> b!7102788 (= e!4269112 e!4269114)))

(declare-fun b!7102789 () Bool)

(assert (=> b!7102789 (= e!4269110 e!4269112)))

(assert (=> b!7102789 (= c!1325296 (is-Union!17892 r!11554))))

(assert (= (and d!2218842 (not res!2899904)) b!7102782))

(assert (= (and b!7102782 c!1325297) b!7102785))

(assert (= (and b!7102782 (not c!1325297)) b!7102789))

(assert (= (and b!7102785 res!2899902) b!7102787))

(assert (= (and b!7102789 c!1325296) b!7102781))

(assert (= (and b!7102789 (not c!1325296)) b!7102788))

(assert (= (and b!7102781 res!2899901) b!7102784))

(assert (= (and b!7102788 (not res!2899903)) b!7102783))

(assert (= (and b!7102783 res!2899905) b!7102786))

(assert (= (or b!7102781 b!7102786) bm!646917))

(assert (= (or b!7102784 b!7102783) bm!646916))

(assert (= (or b!7102787 bm!646916) bm!646915))

(declare-fun m!7827346 () Bool)

(assert (=> bm!646915 m!7827346))

(declare-fun m!7827348 () Bool)

(assert (=> b!7102785 m!7827348))

(declare-fun m!7827350 () Bool)

(assert (=> bm!646917 m!7827350))

(assert (=> start!691434 d!2218842))

(declare-fun bs!1884428 () Bool)

(declare-fun d!2218844 () Bool)

(assert (= bs!1884428 (and d!2218844 b!7102678)))

(declare-fun lambda!431202 () Int)

(assert (=> bs!1884428 (= lambda!431202 lambda!431179)))

(assert (=> d!2218844 (= (inv!87594 c!9994) (forall!16796 (exprs!7386 c!9994) lambda!431202))))

(declare-fun bs!1884429 () Bool)

(assert (= bs!1884429 d!2218844))

(declare-fun m!7827352 () Bool)

(assert (=> bs!1884429 m!7827352))

(assert (=> start!691434 d!2218844))

(declare-fun bs!1884430 () Bool)

(declare-fun d!2218846 () Bool)

(assert (= bs!1884430 (and d!2218846 b!7102678)))

(declare-fun lambda!431203 () Int)

(assert (=> bs!1884430 (= lambda!431203 lambda!431179)))

(declare-fun bs!1884431 () Bool)

(assert (= bs!1884431 (and d!2218846 d!2218844)))

(assert (=> bs!1884431 (= lambda!431203 lambda!431202)))

(assert (=> d!2218846 (= (inv!87594 auxCtx!45) (forall!16796 (exprs!7386 auxCtx!45) lambda!431203))))

(declare-fun bs!1884432 () Bool)

(assert (= bs!1884432 d!2218846))

(declare-fun m!7827354 () Bool)

(assert (=> bs!1884432 m!7827354))

(assert (=> start!691434 d!2218846))

(declare-fun b!7102824 () Bool)

(declare-fun e!4269130 () Bool)

(declare-fun tp!1952971 () Bool)

(assert (=> b!7102824 (= e!4269130 tp!1952971)))

(declare-fun b!7102823 () Bool)

(declare-fun tp!1952968 () Bool)

(declare-fun tp!1952967 () Bool)

(assert (=> b!7102823 (= e!4269130 (and tp!1952968 tp!1952967))))

(assert (=> b!7102673 (= tp!1952932 e!4269130)))

(declare-fun b!7102822 () Bool)

(assert (=> b!7102822 (= e!4269130 tp_is_empty!45017)))

(declare-fun b!7102825 () Bool)

(declare-fun tp!1952969 () Bool)

(declare-fun tp!1952970 () Bool)

(assert (=> b!7102825 (= e!4269130 (and tp!1952969 tp!1952970))))

(assert (= (and b!7102673 (is-ElementMatch!17892 (reg!18221 r!11554))) b!7102822))

(assert (= (and b!7102673 (is-Concat!26737 (reg!18221 r!11554))) b!7102823))

(assert (= (and b!7102673 (is-Star!17892 (reg!18221 r!11554))) b!7102824))

(assert (= (and b!7102673 (is-Union!17892 (reg!18221 r!11554))) b!7102825))

(declare-fun b!7102828 () Bool)

(declare-fun e!4269131 () Bool)

(declare-fun tp!1952976 () Bool)

(assert (=> b!7102828 (= e!4269131 tp!1952976)))

(declare-fun b!7102827 () Bool)

(declare-fun tp!1952973 () Bool)

(declare-fun tp!1952972 () Bool)

(assert (=> b!7102827 (= e!4269131 (and tp!1952973 tp!1952972))))

(assert (=> b!7102677 (= tp!1952935 e!4269131)))

(declare-fun b!7102826 () Bool)

(assert (=> b!7102826 (= e!4269131 tp_is_empty!45017)))

(declare-fun b!7102829 () Bool)

(declare-fun tp!1952974 () Bool)

(declare-fun tp!1952975 () Bool)

(assert (=> b!7102829 (= e!4269131 (and tp!1952974 tp!1952975))))

(assert (= (and b!7102677 (is-ElementMatch!17892 (regOne!36296 r!11554))) b!7102826))

(assert (= (and b!7102677 (is-Concat!26737 (regOne!36296 r!11554))) b!7102827))

(assert (= (and b!7102677 (is-Star!17892 (regOne!36296 r!11554))) b!7102828))

(assert (= (and b!7102677 (is-Union!17892 (regOne!36296 r!11554))) b!7102829))

(declare-fun b!7102832 () Bool)

(declare-fun e!4269132 () Bool)

(declare-fun tp!1952981 () Bool)

(assert (=> b!7102832 (= e!4269132 tp!1952981)))

(declare-fun b!7102831 () Bool)

(declare-fun tp!1952978 () Bool)

(declare-fun tp!1952977 () Bool)

(assert (=> b!7102831 (= e!4269132 (and tp!1952978 tp!1952977))))

(assert (=> b!7102677 (= tp!1952931 e!4269132)))

(declare-fun b!7102830 () Bool)

(assert (=> b!7102830 (= e!4269132 tp_is_empty!45017)))

(declare-fun b!7102833 () Bool)

(declare-fun tp!1952979 () Bool)

(declare-fun tp!1952980 () Bool)

(assert (=> b!7102833 (= e!4269132 (and tp!1952979 tp!1952980))))

(assert (= (and b!7102677 (is-ElementMatch!17892 (regTwo!36296 r!11554))) b!7102830))

(assert (= (and b!7102677 (is-Concat!26737 (regTwo!36296 r!11554))) b!7102831))

(assert (= (and b!7102677 (is-Star!17892 (regTwo!36296 r!11554))) b!7102832))

(assert (= (and b!7102677 (is-Union!17892 (regTwo!36296 r!11554))) b!7102833))

(declare-fun b!7102836 () Bool)

(declare-fun e!4269133 () Bool)

(declare-fun tp!1952986 () Bool)

(assert (=> b!7102836 (= e!4269133 tp!1952986)))

(declare-fun b!7102835 () Bool)

(declare-fun tp!1952983 () Bool)

(declare-fun tp!1952982 () Bool)

(assert (=> b!7102835 (= e!4269133 (and tp!1952983 tp!1952982))))

(assert (=> b!7102676 (= tp!1952933 e!4269133)))

(declare-fun b!7102834 () Bool)

(assert (=> b!7102834 (= e!4269133 tp_is_empty!45017)))

(declare-fun b!7102837 () Bool)

(declare-fun tp!1952984 () Bool)

(declare-fun tp!1952985 () Bool)

(assert (=> b!7102837 (= e!4269133 (and tp!1952984 tp!1952985))))

(assert (= (and b!7102676 (is-ElementMatch!17892 (regOne!36297 r!11554))) b!7102834))

(assert (= (and b!7102676 (is-Concat!26737 (regOne!36297 r!11554))) b!7102835))

(assert (= (and b!7102676 (is-Star!17892 (regOne!36297 r!11554))) b!7102836))

(assert (= (and b!7102676 (is-Union!17892 (regOne!36297 r!11554))) b!7102837))

(declare-fun b!7102840 () Bool)

(declare-fun e!4269134 () Bool)

(declare-fun tp!1952991 () Bool)

(assert (=> b!7102840 (= e!4269134 tp!1952991)))

(declare-fun b!7102839 () Bool)

(declare-fun tp!1952988 () Bool)

(declare-fun tp!1952987 () Bool)

(assert (=> b!7102839 (= e!4269134 (and tp!1952988 tp!1952987))))

(assert (=> b!7102676 (= tp!1952929 e!4269134)))

(declare-fun b!7102838 () Bool)

(assert (=> b!7102838 (= e!4269134 tp_is_empty!45017)))

(declare-fun b!7102841 () Bool)

(declare-fun tp!1952989 () Bool)

(declare-fun tp!1952990 () Bool)

(assert (=> b!7102841 (= e!4269134 (and tp!1952989 tp!1952990))))

(assert (= (and b!7102676 (is-ElementMatch!17892 (regTwo!36297 r!11554))) b!7102838))

(assert (= (and b!7102676 (is-Concat!26737 (regTwo!36297 r!11554))) b!7102839))

(assert (= (and b!7102676 (is-Star!17892 (regTwo!36297 r!11554))) b!7102840))

(assert (= (and b!7102676 (is-Union!17892 (regTwo!36297 r!11554))) b!7102841))

(declare-fun b!7102846 () Bool)

(declare-fun e!4269137 () Bool)

(declare-fun tp!1952996 () Bool)

(declare-fun tp!1952997 () Bool)

(assert (=> b!7102846 (= e!4269137 (and tp!1952996 tp!1952997))))

(assert (=> b!7102671 (= tp!1952934 e!4269137)))

(assert (= (and b!7102671 (is-Cons!68729 (exprs!7386 c!9994))) b!7102846))

(declare-fun b!7102847 () Bool)

(declare-fun e!4269138 () Bool)

(declare-fun tp!1952998 () Bool)

(declare-fun tp!1952999 () Bool)

(assert (=> b!7102847 (= e!4269138 (and tp!1952998 tp!1952999))))

(assert (=> b!7102675 (= tp!1952930 e!4269138)))

(assert (= (and b!7102675 (is-Cons!68729 (exprs!7386 auxCtx!45))) b!7102847))

(declare-fun b_lambda!271325 () Bool)

(assert (= b_lambda!271321 (or b!7102672 b_lambda!271325)))

(declare-fun bs!1884433 () Bool)

(declare-fun d!2218848 () Bool)

(assert (= bs!1884433 (and d!2218848 b!7102672)))

(declare-fun bs!1884434 () Bool)

(assert (= bs!1884434 (and d!2218848 b!7102672 b!7102678)))

(declare-fun lambda!431204 () Int)

(assert (=> bs!1884434 (= lambda!431204 lambda!431179)))

(declare-fun bs!1884435 () Bool)

(assert (= bs!1884435 (and d!2218848 b!7102672 d!2218844)))

(assert (=> bs!1884435 (= lambda!431204 lambda!431202)))

(declare-fun bs!1884436 () Bool)

(assert (= bs!1884436 (and d!2218848 b!7102672 d!2218846)))

(assert (=> bs!1884436 (= lambda!431204 lambda!431203)))

(declare-fun lt!2558375 () Unit!162455)

(assert (=> bs!1884433 (= lt!2558375 (lemmaConcatPreservesForall!1177 (exprs!7386 c!9994) (exprs!7386 auxCtx!45) lambda!431204))))

(assert (=> bs!1884433 (= (dynLambda!28049 lambda!431178 c!9994) (Context!13773 (++!16044 (exprs!7386 c!9994) (exprs!7386 auxCtx!45))))))

(declare-fun m!7827356 () Bool)

(assert (=> bs!1884433 m!7827356))

(assert (=> bs!1884433 m!7827258))

(assert (=> d!2218822 d!2218848))

(push 1)

(assert (not b!7102832))

(assert (not b!7102825))

(assert (not bm!646904))

(assert (not bm!646900))

(assert (not b!7102823))

(assert (not b!7102733))

(assert (not d!2218844))

(assert (not b!7102837))

(assert (not b!7102744))

(assert (not b!7102828))

(assert (not bm!646917))

(assert (not b!7102831))

(assert (not b!7102760))

(assert (not d!2218834))

(assert (not b!7102824))

(assert (not bm!646907))

(assert (not bm!646915))

(assert (not d!2218836))

(assert (not bm!646898))

(assert (not b!7102847))

(assert (not b!7102846))

(assert (not bm!646906))

(assert (not b!7102827))

(assert (not b!7102785))

(assert (not b!7102761))

(assert (not b!7102829))

(assert (not d!2218846))

(assert (not bs!1884433))

(assert tp_is_empty!45017)

(assert (not bm!646901))

(assert (not b!7102841))

(assert (not b!7102833))

(assert (not b!7102835))

(assert (not d!2218822))

(assert (not b!7102839))

(assert (not d!2218838))

(assert (not b!7102840))

(assert (not b_lambda!271325))

(assert (not d!2218820))

(assert (not b!7102836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

