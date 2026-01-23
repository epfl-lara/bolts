; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543478 () Bool)

(assert start!543478)

(declare-fun b!5135142 () Bool)

(declare-fun res!2187290 () Bool)

(declare-fun e!3202960 () Bool)

(assert (=> b!5135142 (=> (not res!2187290) (not e!3202960))))

(declare-datatypes ((C!29066 0))(
  ( (C!29067 (val!24185 Int)) )
))
(declare-datatypes ((Regex!14400 0))(
  ( (ElementMatch!14400 (c!883893 C!29066)) (Concat!23245 (regOne!29312 Regex!14400) (regTwo!29312 Regex!14400)) (EmptyExpr!14400) (Star!14400 (reg!14729 Regex!14400)) (EmptyLang!14400) (Union!14400 (regOne!29313 Regex!14400) (regTwo!29313 Regex!14400)) )
))
(declare-datatypes ((List!59735 0))(
  ( (Nil!59611) (Cons!59611 (h!66059 Regex!14400) (t!372762 List!59735)) )
))
(declare-datatypes ((Context!7568 0))(
  ( (Context!7569 (exprs!4284 List!59735)) )
))
(declare-fun ctx!74 () Context!7568)

(declare-fun nullable!4773 (Regex!14400) Bool)

(assert (=> b!5135142 (= res!2187290 (nullable!4773 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun b!5135143 () Bool)

(declare-fun res!2187287 () Bool)

(assert (=> b!5135143 (=> (not res!2187287) (not e!3202960))))

(assert (=> b!5135143 (= res!2187287 (is-Cons!59611 (exprs!4284 ctx!74)))))

(declare-fun b!5135144 () Bool)

(declare-fun e!3202961 () Bool)

(assert (=> b!5135144 (= e!3202960 (not e!3202961))))

(declare-fun res!2187289 () Bool)

(assert (=> b!5135144 (=> res!2187289 e!3202961)))

(declare-fun validRegex!6259 (Regex!14400) Bool)

(assert (=> b!5135144 (= res!2187289 (not (validRegex!6259 (h!66059 (exprs!4284 ctx!74)))))))

(declare-fun lt!2118997 () Context!7568)

(declare-fun a!1252 () C!29066)

(declare-fun lostCauseZipper!1228 ((Set Context!7568)) Bool)

(declare-fun derivationStepZipperUp!86 (Context!7568 C!29066) (Set Context!7568))

(assert (=> b!5135144 (lostCauseZipper!1228 (derivationStepZipperUp!86 lt!2118997 a!1252))))

(declare-datatypes ((Unit!150951 0))(
  ( (Unit!150952) )
))
(declare-fun lt!2118998 () Unit!150951)

(declare-fun lemmaLostCauseFixPointDerivUp!19 (Context!7568 C!29066) Unit!150951)

(assert (=> b!5135144 (= lt!2118998 (lemmaLostCauseFixPointDerivUp!19 lt!2118997 a!1252))))

(assert (=> b!5135144 (= lt!2118997 (Context!7569 (t!372762 (exprs!4284 ctx!74))))))

(declare-fun lostCause!1360 (Regex!14400) Bool)

(assert (=> b!5135144 (not (lostCause!1360 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun lt!2118999 () Unit!150951)

(declare-fun lemmaNullableThenNotLostCause!51 (Regex!14400) Unit!150951)

(assert (=> b!5135144 (= lt!2118999 (lemmaNullableThenNotLostCause!51 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun b!5135145 () Bool)

(declare-fun e!3202959 () Bool)

(declare-fun tp!1432334 () Bool)

(assert (=> b!5135145 (= e!3202959 tp!1432334)))

(declare-fun b!5135146 () Bool)

(declare-fun lostCause!1361 (Context!7568) Bool)

(assert (=> b!5135146 (= e!3202961 (lostCause!1361 lt!2118997))))

(declare-fun res!2187288 () Bool)

(assert (=> start!543478 (=> (not res!2187288) (not e!3202960))))

(assert (=> start!543478 (= res!2187288 (lostCause!1361 ctx!74))))

(assert (=> start!543478 e!3202960))

(declare-fun inv!79182 (Context!7568) Bool)

(assert (=> start!543478 (and (inv!79182 ctx!74) e!3202959)))

(declare-fun tp_is_empty!37953 () Bool)

(assert (=> start!543478 tp_is_empty!37953))

(assert (= (and start!543478 res!2187288) b!5135143))

(assert (= (and b!5135143 res!2187287) b!5135142))

(assert (= (and b!5135142 res!2187290) b!5135144))

(assert (= (and b!5135144 (not res!2187289)) b!5135146))

(assert (= start!543478 b!5135145))

(declare-fun m!6200732 () Bool)

(assert (=> b!5135142 m!6200732))

(declare-fun m!6200734 () Bool)

(assert (=> b!5135144 m!6200734))

(declare-fun m!6200736 () Bool)

(assert (=> b!5135144 m!6200736))

(declare-fun m!6200738 () Bool)

(assert (=> b!5135144 m!6200738))

(declare-fun m!6200740 () Bool)

(assert (=> b!5135144 m!6200740))

(assert (=> b!5135144 m!6200734))

(declare-fun m!6200742 () Bool)

(assert (=> b!5135144 m!6200742))

(declare-fun m!6200744 () Bool)

(assert (=> b!5135144 m!6200744))

(declare-fun m!6200746 () Bool)

(assert (=> b!5135146 m!6200746))

(declare-fun m!6200748 () Bool)

(assert (=> start!543478 m!6200748))

(declare-fun m!6200750 () Bool)

(assert (=> start!543478 m!6200750))

(push 1)

(assert (not start!543478))

(assert tp_is_empty!37953)

(assert (not b!5135145))

(assert (not b!5135146))

(assert (not b!5135144))

(assert (not b!5135142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661580 () Bool)

(declare-fun nullableFct!1296 (Regex!14400) Bool)

(assert (=> d!1661580 (= (nullable!4773 (h!66059 (exprs!4284 ctx!74))) (nullableFct!1296 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun bs!1199644 () Bool)

(assert (= bs!1199644 d!1661580))

(declare-fun m!6200772 () Bool)

(assert (=> bs!1199644 m!6200772))

(assert (=> b!5135142 d!1661580))

(declare-fun d!1661582 () Bool)

(declare-fun lambda!255688 () Int)

(declare-fun exists!1730 (List!59735 Int) Bool)

(assert (=> d!1661582 (= (lostCause!1361 lt!2118997) (exists!1730 (exprs!4284 lt!2118997) lambda!255688))))

(declare-fun bs!1199645 () Bool)

(assert (= bs!1199645 d!1661582))

(declare-fun m!6200774 () Bool)

(assert (=> bs!1199645 m!6200774))

(assert (=> b!5135146 d!1661582))

(declare-fun bs!1199646 () Bool)

(declare-fun d!1661584 () Bool)

(assert (= bs!1199646 (and d!1661584 d!1661582)))

(declare-fun lambda!255689 () Int)

(assert (=> bs!1199646 (= lambda!255689 lambda!255688)))

(assert (=> d!1661584 (= (lostCause!1361 ctx!74) (exists!1730 (exprs!4284 ctx!74) lambda!255689))))

(declare-fun bs!1199647 () Bool)

(assert (= bs!1199647 d!1661584))

(declare-fun m!6200776 () Bool)

(assert (=> bs!1199647 m!6200776))

(assert (=> start!543478 d!1661584))

(declare-fun bs!1199648 () Bool)

(declare-fun d!1661586 () Bool)

(assert (= bs!1199648 (and d!1661586 d!1661582)))

(declare-fun lambda!255692 () Int)

(assert (=> bs!1199648 (not (= lambda!255692 lambda!255688))))

(declare-fun bs!1199649 () Bool)

(assert (= bs!1199649 (and d!1661586 d!1661584)))

(assert (=> bs!1199649 (not (= lambda!255692 lambda!255689))))

(declare-fun forall!13854 (List!59735 Int) Bool)

(assert (=> d!1661586 (= (inv!79182 ctx!74) (forall!13854 (exprs!4284 ctx!74) lambda!255692))))

(declare-fun bs!1199650 () Bool)

(assert (= bs!1199650 d!1661586))

(declare-fun m!6200778 () Bool)

(assert (=> bs!1199650 m!6200778))

(assert (=> start!543478 d!1661586))

(declare-fun d!1661588 () Bool)

(declare-fun lostCauseFct!327 (Regex!14400) Bool)

(assert (=> d!1661588 (= (lostCause!1360 (h!66059 (exprs!4284 ctx!74))) (lostCauseFct!327 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun bs!1199651 () Bool)

(assert (= bs!1199651 d!1661588))

(declare-fun m!6200780 () Bool)

(assert (=> bs!1199651 m!6200780))

(assert (=> b!5135144 d!1661588))

(declare-fun b!5135180 () Bool)

(declare-fun e!3202985 () Bool)

(declare-fun e!3202989 () Bool)

(assert (=> b!5135180 (= e!3202985 e!3202989)))

(declare-fun res!2187316 () Bool)

(assert (=> b!5135180 (=> (not res!2187316) (not e!3202989))))

(declare-fun call!357693 () Bool)

(assert (=> b!5135180 (= res!2187316 call!357693)))

(declare-fun b!5135181 () Bool)

(declare-fun e!3202986 () Bool)

(declare-fun e!3202991 () Bool)

(assert (=> b!5135181 (= e!3202986 e!3202991)))

(declare-fun res!2187314 () Bool)

(assert (=> b!5135181 (= res!2187314 (not (nullable!4773 (reg!14729 (h!66059 (exprs!4284 ctx!74))))))))

(assert (=> b!5135181 (=> (not res!2187314) (not e!3202991))))

(declare-fun b!5135182 () Bool)

(declare-fun res!2187313 () Bool)

(declare-fun e!3202988 () Bool)

(assert (=> b!5135182 (=> (not res!2187313) (not e!3202988))))

(declare-fun call!357694 () Bool)

(assert (=> b!5135182 (= res!2187313 call!357694)))

(declare-fun e!3202987 () Bool)

(assert (=> b!5135182 (= e!3202987 e!3202988)))

(declare-fun bm!357687 () Bool)

(declare-fun call!357692 () Bool)

(assert (=> bm!357687 (= call!357694 call!357692)))

(declare-fun bm!357688 () Bool)

(declare-fun c!883900 () Bool)

(assert (=> bm!357688 (= call!357693 (validRegex!6259 (ite c!883900 (regTwo!29313 (h!66059 (exprs!4284 ctx!74))) (regOne!29312 (h!66059 (exprs!4284 ctx!74))))))))

(declare-fun b!5135183 () Bool)

(assert (=> b!5135183 (= e!3202991 call!357692)))

(declare-fun d!1661590 () Bool)

(declare-fun res!2187315 () Bool)

(declare-fun e!3202990 () Bool)

(assert (=> d!1661590 (=> res!2187315 e!3202990)))

(assert (=> d!1661590 (= res!2187315 (is-ElementMatch!14400 (h!66059 (exprs!4284 ctx!74))))))

(assert (=> d!1661590 (= (validRegex!6259 (h!66059 (exprs!4284 ctx!74))) e!3202990)))

(declare-fun b!5135184 () Bool)

(assert (=> b!5135184 (= e!3202990 e!3202986)))

(declare-fun c!883899 () Bool)

(assert (=> b!5135184 (= c!883899 (is-Star!14400 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun b!5135185 () Bool)

(declare-fun res!2187317 () Bool)

(assert (=> b!5135185 (=> res!2187317 e!3202985)))

(assert (=> b!5135185 (= res!2187317 (not (is-Concat!23245 (h!66059 (exprs!4284 ctx!74)))))))

(assert (=> b!5135185 (= e!3202987 e!3202985)))

(declare-fun b!5135186 () Bool)

(assert (=> b!5135186 (= e!3202988 call!357693)))

(declare-fun b!5135187 () Bool)

(assert (=> b!5135187 (= e!3202986 e!3202987)))

(assert (=> b!5135187 (= c!883900 (is-Union!14400 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun bm!357689 () Bool)

(assert (=> bm!357689 (= call!357692 (validRegex!6259 (ite c!883899 (reg!14729 (h!66059 (exprs!4284 ctx!74))) (ite c!883900 (regOne!29313 (h!66059 (exprs!4284 ctx!74))) (regTwo!29312 (h!66059 (exprs!4284 ctx!74)))))))))

(declare-fun b!5135188 () Bool)

(assert (=> b!5135188 (= e!3202989 call!357694)))

(assert (= (and d!1661590 (not res!2187315)) b!5135184))

(assert (= (and b!5135184 c!883899) b!5135181))

(assert (= (and b!5135184 (not c!883899)) b!5135187))

(assert (= (and b!5135181 res!2187314) b!5135183))

(assert (= (and b!5135187 c!883900) b!5135182))

(assert (= (and b!5135187 (not c!883900)) b!5135185))

(assert (= (and b!5135182 res!2187313) b!5135186))

(assert (= (and b!5135185 (not res!2187317)) b!5135180))

(assert (= (and b!5135180 res!2187316) b!5135188))

(assert (= (or b!5135182 b!5135188) bm!357687))

(assert (= (or b!5135186 b!5135180) bm!357688))

(assert (= (or b!5135183 bm!357687) bm!357689))

(declare-fun m!6200782 () Bool)

(assert (=> b!5135181 m!6200782))

(declare-fun m!6200784 () Bool)

(assert (=> bm!357688 m!6200784))

(declare-fun m!6200786 () Bool)

(assert (=> bm!357689 m!6200786))

(assert (=> b!5135144 d!1661590))

(declare-fun d!1661592 () Bool)

(assert (=> d!1661592 (not (lostCause!1360 (h!66059 (exprs!4284 ctx!74))))))

(declare-fun lt!2119011 () Unit!150951)

(declare-fun choose!37981 (Regex!14400) Unit!150951)

(assert (=> d!1661592 (= lt!2119011 (choose!37981 (h!66059 (exprs!4284 ctx!74))))))

(assert (=> d!1661592 (validRegex!6259 (h!66059 (exprs!4284 ctx!74)))))

(assert (=> d!1661592 (= (lemmaNullableThenNotLostCause!51 (h!66059 (exprs!4284 ctx!74))) lt!2119011)))

(declare-fun bs!1199652 () Bool)

(assert (= bs!1199652 d!1661592))

(assert (=> bs!1199652 m!6200744))

(declare-fun m!6200788 () Bool)

(assert (=> bs!1199652 m!6200788))

(assert (=> bs!1199652 m!6200736))

(assert (=> b!5135144 d!1661592))

(declare-fun b!5135199 () Bool)

(declare-fun e!3202999 () (Set Context!7568))

(assert (=> b!5135199 (= e!3202999 (as set.empty (Set Context!7568)))))

(declare-fun bm!357692 () Bool)

(declare-fun call!357697 () (Set Context!7568))

(declare-fun derivationStepZipperDown!109 (Regex!14400 Context!7568 C!29066) (Set Context!7568))

(assert (=> bm!357692 (= call!357697 (derivationStepZipperDown!109 (h!66059 (exprs!4284 lt!2118997)) (Context!7569 (t!372762 (exprs!4284 lt!2118997))) a!1252))))

(declare-fun e!3203000 () (Set Context!7568))

(declare-fun b!5135200 () Bool)

(assert (=> b!5135200 (= e!3203000 (set.union call!357697 (derivationStepZipperUp!86 (Context!7569 (t!372762 (exprs!4284 lt!2118997))) a!1252)))))

(declare-fun b!5135201 () Bool)

(assert (=> b!5135201 (= e!3203000 e!3202999)))

(declare-fun c!883906 () Bool)

(assert (=> b!5135201 (= c!883906 (is-Cons!59611 (exprs!4284 lt!2118997)))))

(declare-fun d!1661594 () Bool)

(declare-fun c!883905 () Bool)

(declare-fun e!3202998 () Bool)

(assert (=> d!1661594 (= c!883905 e!3202998)))

(declare-fun res!2187320 () Bool)

(assert (=> d!1661594 (=> (not res!2187320) (not e!3202998))))

(assert (=> d!1661594 (= res!2187320 (is-Cons!59611 (exprs!4284 lt!2118997)))))

(assert (=> d!1661594 (= (derivationStepZipperUp!86 lt!2118997 a!1252) e!3203000)))

(declare-fun b!5135202 () Bool)

(assert (=> b!5135202 (= e!3202998 (nullable!4773 (h!66059 (exprs!4284 lt!2118997))))))

(declare-fun b!5135203 () Bool)

(assert (=> b!5135203 (= e!3202999 call!357697)))

(assert (= (and d!1661594 res!2187320) b!5135202))

(assert (= (and d!1661594 c!883905) b!5135200))

(assert (= (and d!1661594 (not c!883905)) b!5135201))

(assert (= (and b!5135201 c!883906) b!5135203))

(assert (= (and b!5135201 (not c!883906)) b!5135199))

(assert (= (or b!5135200 b!5135203) bm!357692))

(declare-fun m!6200790 () Bool)

(assert (=> bm!357692 m!6200790))

(declare-fun m!6200792 () Bool)

(assert (=> b!5135200 m!6200792))

(declare-fun m!6200794 () Bool)

(assert (=> b!5135202 m!6200794))

(assert (=> b!5135144 d!1661594))

(declare-fun bs!1199661 () Bool)

(declare-fun b!5135208 () Bool)

(declare-fun d!1661596 () Bool)

(assert (= bs!1199661 (and b!5135208 d!1661596)))

(declare-fun lambda!255713 () Int)

(declare-fun lambda!255712 () Int)

(assert (=> bs!1199661 (not (= lambda!255713 lambda!255712))))

(declare-fun bs!1199662 () Bool)

(declare-fun b!5135209 () Bool)

(assert (= bs!1199662 (and b!5135209 d!1661596)))

(declare-fun lambda!255714 () Int)

(assert (=> bs!1199662 (not (= lambda!255714 lambda!255712))))

(declare-fun bs!1199663 () Bool)

(assert (= bs!1199663 (and b!5135209 b!5135208)))

(assert (=> bs!1199663 (= lambda!255714 lambda!255713)))

(declare-fun e!3203007 () Unit!150951)

(declare-fun Unit!150955 () Unit!150951)

(assert (=> b!5135208 (= e!3203007 Unit!150955)))

(declare-datatypes ((List!59737 0))(
  ( (Nil!59613) (Cons!59613 (h!66061 Context!7568) (t!372764 List!59737)) )
))
(declare-fun lt!2119035 () List!59737)

(declare-fun call!357703 () List!59737)

(assert (=> b!5135208 (= lt!2119035 call!357703)))

(declare-fun lt!2119031 () Unit!150951)

(declare-fun lemmaNotForallThenExists!411 (List!59737 Int) Unit!150951)

(assert (=> b!5135208 (= lt!2119031 (lemmaNotForallThenExists!411 lt!2119035 lambda!255712))))

(declare-fun call!357702 () Bool)

(assert (=> b!5135208 call!357702))

(declare-fun lt!2119034 () Unit!150951)

(assert (=> b!5135208 (= lt!2119034 lt!2119031)))

(declare-fun Unit!150956 () Unit!150951)

(assert (=> b!5135209 (= e!3203007 Unit!150956)))

(declare-fun lt!2119030 () List!59737)

(assert (=> b!5135209 (= lt!2119030 call!357703)))

(declare-fun lt!2119028 () Unit!150951)

(declare-fun lemmaForallThenNotExists!378 (List!59737 Int) Unit!150951)

(assert (=> b!5135209 (= lt!2119028 (lemmaForallThenNotExists!378 lt!2119030 lambda!255712))))

(assert (=> b!5135209 (not call!357702)))

(declare-fun lt!2119029 () Unit!150951)

(assert (=> b!5135209 (= lt!2119029 lt!2119028)))

(declare-fun bm!357697 () Bool)

(declare-fun toList!8363 ((Set Context!7568)) List!59737)

(assert (=> bm!357697 (= call!357703 (toList!8363 (derivationStepZipperUp!86 lt!2118997 a!1252)))))

(declare-fun bm!357698 () Bool)

(declare-fun c!883917 () Bool)

(declare-fun exists!1732 (List!59737 Int) Bool)

(assert (=> bm!357698 (= call!357702 (exists!1732 (ite c!883917 lt!2119035 lt!2119030) (ite c!883917 lambda!255713 lambda!255714)))))

(declare-fun lt!2119033 () Bool)

(declare-datatypes ((List!59738 0))(
  ( (Nil!59614) (Cons!59614 (h!66062 C!29066) (t!372765 List!59738)) )
))
(declare-datatypes ((Option!14760 0))(
  ( (None!14759) (Some!14759 (v!50788 List!59738)) )
))
(declare-fun isEmpty!32021 (Option!14760) Bool)

(declare-fun getLanguageWitness!901 ((Set Context!7568)) Option!14760)

(assert (=> d!1661596 (= lt!2119033 (isEmpty!32021 (getLanguageWitness!901 (derivationStepZipperUp!86 lt!2118997 a!1252))))))

(declare-fun forall!13855 ((Set Context!7568) Int) Bool)

(assert (=> d!1661596 (= lt!2119033 (forall!13855 (derivationStepZipperUp!86 lt!2118997 a!1252) lambda!255712))))

(declare-fun lt!2119032 () Unit!150951)

(assert (=> d!1661596 (= lt!2119032 e!3203007)))

(assert (=> d!1661596 (= c!883917 (not (forall!13855 (derivationStepZipperUp!86 lt!2118997 a!1252) lambda!255712)))))

(assert (=> d!1661596 (= (lostCauseZipper!1228 (derivationStepZipperUp!86 lt!2118997 a!1252)) lt!2119033)))

(assert (= (and d!1661596 c!883917) b!5135208))

(assert (= (and d!1661596 (not c!883917)) b!5135209))

(assert (= (or b!5135208 b!5135209) bm!357697))

(assert (= (or b!5135208 b!5135209) bm!357698))

(declare-fun m!6200806 () Bool)

(assert (=> b!5135209 m!6200806))

(declare-fun m!6200808 () Bool)

(assert (=> bm!357698 m!6200808))

(assert (=> bm!357697 m!6200734))

(declare-fun m!6200810 () Bool)

(assert (=> bm!357697 m!6200810))

(declare-fun m!6200812 () Bool)

(assert (=> b!5135208 m!6200812))

(assert (=> d!1661596 m!6200734))

(declare-fun m!6200814 () Bool)

(assert (=> d!1661596 m!6200814))

(assert (=> d!1661596 m!6200814))

(declare-fun m!6200816 () Bool)

(assert (=> d!1661596 m!6200816))

(assert (=> d!1661596 m!6200734))

(declare-fun m!6200818 () Bool)

(assert (=> d!1661596 m!6200818))

(assert (=> d!1661596 m!6200734))

(assert (=> d!1661596 m!6200818))

(assert (=> b!5135144 d!1661596))

(declare-fun d!1661608 () Bool)

(assert (=> d!1661608 (lostCauseZipper!1228 (derivationStepZipperUp!86 lt!2118997 a!1252))))

(declare-fun lt!2119038 () Unit!150951)

(declare-fun choose!37982 (Context!7568 C!29066) Unit!150951)

(assert (=> d!1661608 (= lt!2119038 (choose!37982 lt!2118997 a!1252))))

(assert (=> d!1661608 (lostCause!1361 lt!2118997)))

(assert (=> d!1661608 (= (lemmaLostCauseFixPointDerivUp!19 lt!2118997 a!1252) lt!2119038)))

(declare-fun bs!1199664 () Bool)

(assert (= bs!1199664 d!1661608))

(assert (=> bs!1199664 m!6200734))

(assert (=> bs!1199664 m!6200734))

(assert (=> bs!1199664 m!6200742))

(declare-fun m!6200826 () Bool)

(assert (=> bs!1199664 m!6200826))

(assert (=> bs!1199664 m!6200746))

(assert (=> b!5135144 d!1661608))

(declare-fun b!5135241 () Bool)

(declare-fun e!3203031 () Bool)

(declare-fun tp!1432342 () Bool)

(declare-fun tp!1432343 () Bool)

(assert (=> b!5135241 (= e!3203031 (and tp!1432342 tp!1432343))))

(assert (=> b!5135145 (= tp!1432334 e!3203031)))

(assert (= (and b!5135145 (is-Cons!59611 (exprs!4284 ctx!74))) b!5135241))

(push 1)

(assert (not b!5135208))

(assert (not d!1661586))

(assert (not bm!357689))

(assert (not b!5135209))

(assert (not bm!357697))

(assert (not d!1661580))

(assert (not b!5135202))

(assert (not d!1661608))

(assert (not d!1661596))

(assert (not d!1661588))

(assert (not d!1661584))

(assert tp_is_empty!37953)

(assert (not bm!357692))

(assert (not d!1661582))

(assert (not d!1661592))

(assert (not bm!357698))

(assert (not bm!357688))

(assert (not b!5135181))

(assert (not b!5135241))

(assert (not b!5135200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

