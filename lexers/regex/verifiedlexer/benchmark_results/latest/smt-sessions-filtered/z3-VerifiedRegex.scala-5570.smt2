; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279594 () Bool)

(assert start!279594)

(declare-fun b!2865771 () Bool)

(declare-fun e!1814260 () Bool)

(declare-fun e!1814259 () Bool)

(assert (=> b!2865771 (= e!1814260 e!1814259)))

(declare-fun res!1189754 () Bool)

(assert (=> b!2865771 (=> (not res!1189754) (not e!1814259))))

(declare-datatypes ((C!17572 0))(
  ( (C!17573 (val!10820 Int)) )
))
(declare-datatypes ((List!34411 0))(
  ( (Nil!34287) (Cons!34287 (h!39707 C!17572) (t!233454 List!34411)) )
))
(declare-datatypes ((Option!6374 0))(
  ( (None!6373) (Some!6373 (v!34495 List!34411)) )
))
(declare-fun lt!1016649 () Option!6374)

(get-info :version)

(assert (=> b!2865771 (= res!1189754 ((_ is Some!6373) lt!1016649))))

(declare-datatypes ((Regex!8695 0))(
  ( (ElementMatch!8695 (c!462668 C!17572)) (Concat!14016 (regOne!17902 Regex!8695) (regTwo!17902 Regex!8695)) (EmptyExpr!8695) (Star!8695 (reg!9024 Regex!8695)) (EmptyLang!8695) (Union!8695 (regOne!17903 Regex!8695) (regTwo!17903 Regex!8695)) )
))
(declare-datatypes ((List!34412 0))(
  ( (Nil!34288) (Cons!34288 (h!39708 Regex!8695) (t!233455 List!34412)) )
))
(declare-datatypes ((Context!5310 0))(
  ( (Context!5311 (exprs!3155 List!34412)) )
))
(declare-fun lt!1016647 () Context!5310)

(declare-fun getLanguageWitness!354 (Context!5310) Option!6374)

(assert (=> b!2865771 (= lt!1016649 (getLanguageWitness!354 lt!1016647))))

(declare-fun c!7184 () Context!5310)

(assert (=> b!2865771 (= lt!1016647 (Context!5311 (t!233455 (exprs!3155 c!7184))))))

(declare-fun res!1189755 () Bool)

(declare-fun e!1814262 () Bool)

(assert (=> start!279594 (=> (not res!1189755) (not e!1814262))))

(declare-fun lostCause!787 (Context!5310) Bool)

(assert (=> start!279594 (= res!1189755 (not (lostCause!787 c!7184)))))

(assert (=> start!279594 e!1814262))

(declare-fun e!1814261 () Bool)

(declare-fun inv!46324 (Context!5310) Bool)

(assert (=> start!279594 (and (inv!46324 c!7184) e!1814261)))

(declare-fun b!2865772 () Bool)

(declare-fun validRegex!3492 (Regex!8695) Bool)

(assert (=> b!2865772 (= e!1814259 (not (validRegex!3492 (h!39708 (exprs!3155 c!7184)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!461 ((InoxSet Context!5310) List!34411) Bool)

(declare-fun get!10289 (Option!6374) List!34411)

(assert (=> b!2865772 (matchZipper!461 (store ((as const (Array Context!5310 Bool)) false) lt!1016647 true) (get!10289 lt!1016649))))

(declare-datatypes ((Unit!47927 0))(
  ( (Unit!47928) )
))
(declare-fun lt!1016651 () Unit!47927)

(declare-fun lemmaGetWitnessMatchesContext!20 (Context!5310) Unit!47927)

(assert (=> b!2865772 (= lt!1016651 (lemmaGetWitnessMatchesContext!20 lt!1016647))))

(declare-fun lt!1016648 () Option!6374)

(declare-fun matchR!3715 (Regex!8695 List!34411) Bool)

(assert (=> b!2865772 (matchR!3715 (h!39708 (exprs!3155 c!7184)) (get!10289 lt!1016648))))

(declare-fun lt!1016650 () Unit!47927)

(declare-fun lemmaGetWitnessMatches!22 (Regex!8695) Unit!47927)

(assert (=> b!2865772 (= lt!1016650 (lemmaGetWitnessMatches!22 (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2865773 () Bool)

(declare-fun res!1189752 () Bool)

(assert (=> b!2865773 (=> (not res!1189752) (not e!1814262))))

(assert (=> b!2865773 (= res!1189752 ((_ is Cons!34288) (exprs!3155 c!7184)))))

(declare-fun b!2865774 () Bool)

(assert (=> b!2865774 (= e!1814262 e!1814260)))

(declare-fun res!1189753 () Bool)

(assert (=> b!2865774 (=> (not res!1189753) (not e!1814260))))

(assert (=> b!2865774 (= res!1189753 ((_ is Some!6373) lt!1016648))))

(declare-fun getLanguageWitness!355 (Regex!8695) Option!6374)

(assert (=> b!2865774 (= lt!1016648 (getLanguageWitness!355 (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2865775 () Bool)

(declare-fun tp!922896 () Bool)

(assert (=> b!2865775 (= e!1814261 tp!922896)))

(assert (= (and start!279594 res!1189755) b!2865773))

(assert (= (and b!2865773 res!1189752) b!2865774))

(assert (= (and b!2865774 res!1189753) b!2865771))

(assert (= (and b!2865771 res!1189754) b!2865772))

(assert (= start!279594 b!2865775))

(declare-fun m!3286181 () Bool)

(assert (=> b!2865771 m!3286181))

(declare-fun m!3286183 () Bool)

(assert (=> start!279594 m!3286183))

(declare-fun m!3286185 () Bool)

(assert (=> start!279594 m!3286185))

(declare-fun m!3286187 () Bool)

(assert (=> b!2865772 m!3286187))

(declare-fun m!3286189 () Bool)

(assert (=> b!2865772 m!3286189))

(assert (=> b!2865772 m!3286187))

(declare-fun m!3286191 () Bool)

(assert (=> b!2865772 m!3286191))

(declare-fun m!3286193 () Bool)

(assert (=> b!2865772 m!3286193))

(declare-fun m!3286195 () Bool)

(assert (=> b!2865772 m!3286195))

(declare-fun m!3286197 () Bool)

(assert (=> b!2865772 m!3286197))

(declare-fun m!3286199 () Bool)

(assert (=> b!2865772 m!3286199))

(assert (=> b!2865772 m!3286195))

(declare-fun m!3286201 () Bool)

(assert (=> b!2865772 m!3286201))

(assert (=> b!2865772 m!3286199))

(declare-fun m!3286203 () Bool)

(assert (=> b!2865774 m!3286203))

(check-sat (not b!2865771) (not b!2865774) (not b!2865775) (not b!2865772) (not start!279594))
(check-sat)
(get-model)

(declare-fun b!2865808 () Bool)

(declare-fun c!462690 () Bool)

(declare-fun lt!1016659 () Option!6374)

(assert (=> b!2865808 (= c!462690 ((_ is Some!6373) lt!1016659))))

(declare-fun call!184889 () Option!6374)

(assert (=> b!2865808 (= lt!1016659 call!184889)))

(declare-fun e!1814285 () Option!6374)

(declare-fun e!1814279 () Option!6374)

(assert (=> b!2865808 (= e!1814285 e!1814279)))

(declare-fun b!2865809 () Bool)

(declare-fun e!1814280 () Option!6374)

(declare-fun lt!1016658 () Option!6374)

(assert (=> b!2865809 (= e!1814280 lt!1016658)))

(declare-fun b!2865810 () Bool)

(declare-fun e!1814282 () Option!6374)

(declare-fun e!1814283 () Option!6374)

(assert (=> b!2865810 (= e!1814282 e!1814283)))

(declare-fun c!462688 () Bool)

(assert (=> b!2865810 (= c!462688 ((_ is Star!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2865811 () Bool)

(declare-fun e!1814281 () Option!6374)

(assert (=> b!2865811 (= e!1814281 e!1814280)))

(declare-fun call!184890 () Option!6374)

(assert (=> b!2865811 (= lt!1016658 call!184890)))

(declare-fun c!462686 () Bool)

(assert (=> b!2865811 (= c!462686 ((_ is Some!6373) lt!1016658))))

(declare-fun b!2865812 () Bool)

(assert (=> b!2865812 (= e!1814279 None!6373)))

(declare-fun b!2865814 () Bool)

(assert (=> b!2865814 (= e!1814282 (Some!6373 (Cons!34287 (c!462668 (h!39708 (exprs!3155 c!7184))) Nil!34287)))))

(declare-fun b!2865815 () Bool)

(assert (=> b!2865815 (= e!1814283 (Some!6373 Nil!34287))))

(declare-fun b!2865816 () Bool)

(assert (=> b!2865816 (= e!1814281 e!1814285)))

(declare-fun lt!1016660 () Option!6374)

(assert (=> b!2865816 (= lt!1016660 call!184890)))

(declare-fun c!462691 () Bool)

(assert (=> b!2865816 (= c!462691 ((_ is Some!6373) lt!1016660))))

(declare-fun b!2865817 () Bool)

(declare-fun ++!8146 (List!34411 List!34411) List!34411)

(assert (=> b!2865817 (= e!1814279 (Some!6373 (++!8146 (v!34495 lt!1016660) (v!34495 lt!1016659))))))

(declare-fun b!2865818 () Bool)

(assert (=> b!2865818 (= e!1814280 call!184889)))

(declare-fun b!2865819 () Bool)

(declare-fun c!462692 () Bool)

(assert (=> b!2865819 (= c!462692 ((_ is ElementMatch!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun e!1814284 () Option!6374)

(assert (=> b!2865819 (= e!1814284 e!1814282)))

(declare-fun b!2865820 () Bool)

(declare-fun e!1814286 () Option!6374)

(assert (=> b!2865820 (= e!1814286 (Some!6373 Nil!34287))))

(declare-fun b!2865821 () Bool)

(assert (=> b!2865821 (= e!1814286 e!1814284)))

(declare-fun c!462687 () Bool)

(assert (=> b!2865821 (= c!462687 ((_ is EmptyLang!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun bm!184884 () Bool)

(declare-fun c!462689 () Bool)

(assert (=> bm!184884 (= call!184890 (getLanguageWitness!355 (ite c!462689 (regOne!17903 (h!39708 (exprs!3155 c!7184))) (regOne!17902 (h!39708 (exprs!3155 c!7184))))))))

(declare-fun b!2865822 () Bool)

(assert (=> b!2865822 (= e!1814285 None!6373)))

(declare-fun b!2865823 () Bool)

(assert (=> b!2865823 (= e!1814284 None!6373)))

(declare-fun bm!184885 () Bool)

(assert (=> bm!184885 (= call!184889 (getLanguageWitness!355 (ite c!462689 (regTwo!17903 (h!39708 (exprs!3155 c!7184))) (regTwo!17902 (h!39708 (exprs!3155 c!7184))))))))

(declare-fun d!828661 () Bool)

(declare-fun c!462685 () Bool)

(assert (=> d!828661 (= c!462685 ((_ is EmptyExpr!8695) (h!39708 (exprs!3155 c!7184))))))

(assert (=> d!828661 (= (getLanguageWitness!355 (h!39708 (exprs!3155 c!7184))) e!1814286)))

(declare-fun b!2865813 () Bool)

(assert (=> b!2865813 (= c!462689 ((_ is Union!8695) (h!39708 (exprs!3155 c!7184))))))

(assert (=> b!2865813 (= e!1814283 e!1814281)))

(assert (= (and d!828661 c!462685) b!2865820))

(assert (= (and d!828661 (not c!462685)) b!2865821))

(assert (= (and b!2865821 c!462687) b!2865823))

(assert (= (and b!2865821 (not c!462687)) b!2865819))

(assert (= (and b!2865819 c!462692) b!2865814))

(assert (= (and b!2865819 (not c!462692)) b!2865810))

(assert (= (and b!2865810 c!462688) b!2865815))

(assert (= (and b!2865810 (not c!462688)) b!2865813))

(assert (= (and b!2865813 c!462689) b!2865811))

(assert (= (and b!2865813 (not c!462689)) b!2865816))

(assert (= (and b!2865811 c!462686) b!2865809))

(assert (= (and b!2865811 (not c!462686)) b!2865818))

(assert (= (and b!2865816 c!462691) b!2865808))

(assert (= (and b!2865816 (not c!462691)) b!2865822))

(assert (= (and b!2865808 c!462690) b!2865817))

(assert (= (and b!2865808 (not c!462690)) b!2865812))

(assert (= (or b!2865818 b!2865808) bm!184885))

(assert (= (or b!2865811 b!2865816) bm!184884))

(declare-fun m!3286205 () Bool)

(assert (=> b!2865817 m!3286205))

(declare-fun m!3286207 () Bool)

(assert (=> bm!184884 m!3286207))

(declare-fun m!3286209 () Bool)

(assert (=> bm!184885 m!3286209))

(assert (=> b!2865774 d!828661))

(declare-fun d!828663 () Bool)

(declare-fun lambda!106757 () Int)

(declare-fun exists!1128 (List!34412 Int) Bool)

(assert (=> d!828663 (= (lostCause!787 c!7184) (exists!1128 (exprs!3155 c!7184) lambda!106757))))

(declare-fun bs!521547 () Bool)

(assert (= bs!521547 d!828663))

(declare-fun m!3286263 () Bool)

(assert (=> bs!521547 m!3286263))

(assert (=> start!279594 d!828663))

(declare-fun bs!521548 () Bool)

(declare-fun d!828683 () Bool)

(assert (= bs!521548 (and d!828683 d!828663)))

(declare-fun lambda!106760 () Int)

(assert (=> bs!521548 (not (= lambda!106760 lambda!106757))))

(declare-fun forall!7055 (List!34412 Int) Bool)

(assert (=> d!828683 (= (inv!46324 c!7184) (forall!7055 (exprs!3155 c!7184) lambda!106760))))

(declare-fun bs!521549 () Bool)

(assert (= bs!521549 d!828683))

(declare-fun m!3286265 () Bool)

(assert (=> bs!521549 m!3286265))

(assert (=> start!279594 d!828683))

(declare-fun bs!521550 () Bool)

(declare-fun d!828685 () Bool)

(assert (= bs!521550 (and d!828685 d!828663)))

(declare-fun lambda!106763 () Int)

(assert (=> bs!521550 (= lambda!106763 lambda!106757)))

(declare-fun bs!521551 () Bool)

(assert (= bs!521551 (and d!828685 d!828683)))

(assert (=> bs!521551 (not (= lambda!106763 lambda!106760))))

(declare-fun b!2865959 () Bool)

(declare-fun e!1814362 () Option!6374)

(assert (=> b!2865959 (= e!1814362 None!6373)))

(declare-fun b!2865960 () Bool)

(declare-fun e!1814363 () Option!6374)

(assert (=> b!2865960 (= e!1814363 e!1814362)))

(declare-fun lt!1016685 () Option!6374)

(assert (=> b!2865960 (= lt!1016685 (getLanguageWitness!355 (h!39708 (exprs!3155 lt!1016647))))))

(declare-fun c!462743 () Bool)

(assert (=> b!2865960 (= c!462743 ((_ is Some!6373) lt!1016685))))

(declare-fun b!2865962 () Bool)

(declare-fun e!1814364 () Option!6374)

(assert (=> b!2865962 (= e!1814364 None!6373)))

(declare-fun b!2865963 () Bool)

(declare-fun lt!1016686 () Option!6374)

(assert (=> b!2865963 (= e!1814364 (Some!6373 (++!8146 (v!34495 lt!1016685) (v!34495 lt!1016686))))))

(declare-fun b!2865964 () Bool)

(declare-fun c!462744 () Bool)

(assert (=> b!2865964 (= c!462744 ((_ is Some!6373) lt!1016686))))

(assert (=> b!2865964 (= lt!1016686 (getLanguageWitness!354 (Context!5311 (t!233455 (exprs!3155 lt!1016647)))))))

(assert (=> b!2865964 (= e!1814362 e!1814364)))

(declare-fun lt!1016687 () Option!6374)

(declare-fun isEmpty!18675 (Option!6374) Bool)

(assert (=> d!828685 (= (isEmpty!18675 lt!1016687) (exists!1128 (exprs!3155 lt!1016647) lambda!106763))))

(assert (=> d!828685 (= lt!1016687 e!1814363)))

(declare-fun c!462745 () Bool)

(assert (=> d!828685 (= c!462745 ((_ is Cons!34288) (exprs!3155 lt!1016647)))))

(assert (=> d!828685 (= (getLanguageWitness!354 lt!1016647) lt!1016687)))

(declare-fun b!2865961 () Bool)

(assert (=> b!2865961 (= e!1814363 (Some!6373 Nil!34287))))

(assert (= (and d!828685 c!462745) b!2865960))

(assert (= (and d!828685 (not c!462745)) b!2865961))

(assert (= (and b!2865960 c!462743) b!2865964))

(assert (= (and b!2865960 (not c!462743)) b!2865959))

(assert (= (and b!2865964 c!462744) b!2865963))

(assert (= (and b!2865964 (not c!462744)) b!2865962))

(declare-fun m!3286267 () Bool)

(assert (=> b!2865960 m!3286267))

(declare-fun m!3286269 () Bool)

(assert (=> b!2865963 m!3286269))

(declare-fun m!3286271 () Bool)

(assert (=> b!2865964 m!3286271))

(declare-fun m!3286273 () Bool)

(assert (=> d!828685 m!3286273))

(declare-fun m!3286275 () Bool)

(assert (=> d!828685 m!3286275))

(assert (=> b!2865771 d!828685))

(declare-fun b!2865993 () Bool)

(declare-fun e!1814379 () Bool)

(declare-fun e!1814382 () Bool)

(assert (=> b!2865993 (= e!1814379 e!1814382)))

(declare-fun res!1189811 () Bool)

(assert (=> b!2865993 (=> (not res!1189811) (not e!1814382))))

(declare-fun lt!1016690 () Bool)

(assert (=> b!2865993 (= res!1189811 (not lt!1016690))))

(declare-fun b!2865994 () Bool)

(declare-fun e!1814384 () Bool)

(assert (=> b!2865994 (= e!1814382 e!1814384)))

(declare-fun res!1189813 () Bool)

(assert (=> b!2865994 (=> res!1189813 e!1814384)))

(declare-fun call!184911 () Bool)

(assert (=> b!2865994 (= res!1189813 call!184911)))

(declare-fun d!828687 () Bool)

(declare-fun e!1814383 () Bool)

(assert (=> d!828687 e!1814383))

(declare-fun c!462753 () Bool)

(assert (=> d!828687 (= c!462753 ((_ is EmptyExpr!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun e!1814381 () Bool)

(assert (=> d!828687 (= lt!1016690 e!1814381)))

(declare-fun c!462754 () Bool)

(declare-fun isEmpty!18676 (List!34411) Bool)

(assert (=> d!828687 (= c!462754 (isEmpty!18676 (get!10289 lt!1016648)))))

(assert (=> d!828687 (validRegex!3492 (h!39708 (exprs!3155 c!7184)))))

(assert (=> d!828687 (= (matchR!3715 (h!39708 (exprs!3155 c!7184)) (get!10289 lt!1016648)) lt!1016690)))

(declare-fun b!2865995 () Bool)

(declare-fun res!1189814 () Bool)

(assert (=> b!2865995 (=> res!1189814 e!1814379)))

(assert (=> b!2865995 (= res!1189814 (not ((_ is ElementMatch!8695) (h!39708 (exprs!3155 c!7184)))))))

(declare-fun e!1814380 () Bool)

(assert (=> b!2865995 (= e!1814380 e!1814379)))

(declare-fun b!2865996 () Bool)

(assert (=> b!2865996 (= e!1814383 (= lt!1016690 call!184911))))

(declare-fun b!2865997 () Bool)

(declare-fun e!1814385 () Bool)

(declare-fun head!6325 (List!34411) C!17572)

(assert (=> b!2865997 (= e!1814385 (= (head!6325 (get!10289 lt!1016648)) (c!462668 (h!39708 (exprs!3155 c!7184)))))))

(declare-fun b!2865998 () Bool)

(declare-fun nullable!2668 (Regex!8695) Bool)

(assert (=> b!2865998 (= e!1814381 (nullable!2668 (h!39708 (exprs!3155 c!7184))))))

(declare-fun bm!184906 () Bool)

(assert (=> bm!184906 (= call!184911 (isEmpty!18676 (get!10289 lt!1016648)))))

(declare-fun b!2865999 () Bool)

(declare-fun res!1189812 () Bool)

(assert (=> b!2865999 (=> res!1189812 e!1814379)))

(assert (=> b!2865999 (= res!1189812 e!1814385)))

(declare-fun res!1189816 () Bool)

(assert (=> b!2865999 (=> (not res!1189816) (not e!1814385))))

(assert (=> b!2865999 (= res!1189816 lt!1016690)))

(declare-fun b!2866000 () Bool)

(declare-fun res!1189818 () Bool)

(assert (=> b!2866000 (=> res!1189818 e!1814384)))

(declare-fun tail!4550 (List!34411) List!34411)

(assert (=> b!2866000 (= res!1189818 (not (isEmpty!18676 (tail!4550 (get!10289 lt!1016648)))))))

(declare-fun b!2866001 () Bool)

(assert (=> b!2866001 (= e!1814380 (not lt!1016690))))

(declare-fun b!2866002 () Bool)

(declare-fun derivativeStep!2305 (Regex!8695 C!17572) Regex!8695)

(assert (=> b!2866002 (= e!1814381 (matchR!3715 (derivativeStep!2305 (h!39708 (exprs!3155 c!7184)) (head!6325 (get!10289 lt!1016648))) (tail!4550 (get!10289 lt!1016648))))))

(declare-fun b!2866003 () Bool)

(assert (=> b!2866003 (= e!1814384 (not (= (head!6325 (get!10289 lt!1016648)) (c!462668 (h!39708 (exprs!3155 c!7184))))))))

(declare-fun b!2866004 () Bool)

(assert (=> b!2866004 (= e!1814383 e!1814380)))

(declare-fun c!462752 () Bool)

(assert (=> b!2866004 (= c!462752 ((_ is EmptyLang!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2866005 () Bool)

(declare-fun res!1189817 () Bool)

(assert (=> b!2866005 (=> (not res!1189817) (not e!1814385))))

(assert (=> b!2866005 (= res!1189817 (isEmpty!18676 (tail!4550 (get!10289 lt!1016648))))))

(declare-fun b!2866006 () Bool)

(declare-fun res!1189815 () Bool)

(assert (=> b!2866006 (=> (not res!1189815) (not e!1814385))))

(assert (=> b!2866006 (= res!1189815 (not call!184911))))

(assert (= (and d!828687 c!462754) b!2865998))

(assert (= (and d!828687 (not c!462754)) b!2866002))

(assert (= (and d!828687 c!462753) b!2865996))

(assert (= (and d!828687 (not c!462753)) b!2866004))

(assert (= (and b!2866004 c!462752) b!2866001))

(assert (= (and b!2866004 (not c!462752)) b!2865995))

(assert (= (and b!2865995 (not res!1189814)) b!2865999))

(assert (= (and b!2865999 res!1189816) b!2866006))

(assert (= (and b!2866006 res!1189815) b!2866005))

(assert (= (and b!2866005 res!1189817) b!2865997))

(assert (= (and b!2865999 (not res!1189812)) b!2865993))

(assert (= (and b!2865993 res!1189811) b!2865994))

(assert (= (and b!2865994 (not res!1189813)) b!2866000))

(assert (= (and b!2866000 (not res!1189818)) b!2866003))

(assert (= (or b!2865996 b!2865994 b!2866006) bm!184906))

(assert (=> b!2865997 m!3286187))

(declare-fun m!3286277 () Bool)

(assert (=> b!2865997 m!3286277))

(assert (=> b!2866000 m!3286187))

(declare-fun m!3286279 () Bool)

(assert (=> b!2866000 m!3286279))

(assert (=> b!2866000 m!3286279))

(declare-fun m!3286281 () Bool)

(assert (=> b!2866000 m!3286281))

(declare-fun m!3286283 () Bool)

(assert (=> b!2865998 m!3286283))

(assert (=> d!828687 m!3286187))

(declare-fun m!3286285 () Bool)

(assert (=> d!828687 m!3286285))

(assert (=> d!828687 m!3286193))

(assert (=> b!2866002 m!3286187))

(assert (=> b!2866002 m!3286277))

(assert (=> b!2866002 m!3286277))

(declare-fun m!3286287 () Bool)

(assert (=> b!2866002 m!3286287))

(assert (=> b!2866002 m!3286187))

(assert (=> b!2866002 m!3286279))

(assert (=> b!2866002 m!3286287))

(assert (=> b!2866002 m!3286279))

(declare-fun m!3286289 () Bool)

(assert (=> b!2866002 m!3286289))

(assert (=> bm!184906 m!3286187))

(assert (=> bm!184906 m!3286285))

(assert (=> b!2866005 m!3286187))

(assert (=> b!2866005 m!3286279))

(assert (=> b!2866005 m!3286279))

(assert (=> b!2866005 m!3286281))

(assert (=> b!2866003 m!3286187))

(assert (=> b!2866003 m!3286277))

(assert (=> b!2865772 d!828687))

(declare-fun b!2866025 () Bool)

(declare-fun res!1189833 () Bool)

(declare-fun e!1814404 () Bool)

(assert (=> b!2866025 (=> (not res!1189833) (not e!1814404))))

(declare-fun call!184919 () Bool)

(assert (=> b!2866025 (= res!1189833 call!184919)))

(declare-fun e!1814403 () Bool)

(assert (=> b!2866025 (= e!1814403 e!1814404)))

(declare-fun b!2866026 () Bool)

(declare-fun e!1814402 () Bool)

(declare-fun e!1814401 () Bool)

(assert (=> b!2866026 (= e!1814402 e!1814401)))

(declare-fun res!1189831 () Bool)

(assert (=> b!2866026 (= res!1189831 (not (nullable!2668 (reg!9024 (h!39708 (exprs!3155 c!7184))))))))

(assert (=> b!2866026 (=> (not res!1189831) (not e!1814401))))

(declare-fun b!2866027 () Bool)

(declare-fun e!1814406 () Bool)

(assert (=> b!2866027 (= e!1814406 call!184919)))

(declare-fun c!462760 () Bool)

(declare-fun c!462759 () Bool)

(declare-fun call!184920 () Bool)

(declare-fun bm!184914 () Bool)

(assert (=> bm!184914 (= call!184920 (validRegex!3492 (ite c!462760 (reg!9024 (h!39708 (exprs!3155 c!7184))) (ite c!462759 (regTwo!17903 (h!39708 (exprs!3155 c!7184))) (regOne!17902 (h!39708 (exprs!3155 c!7184)))))))))

(declare-fun d!828689 () Bool)

(declare-fun res!1189832 () Bool)

(declare-fun e!1814405 () Bool)

(assert (=> d!828689 (=> res!1189832 e!1814405)))

(assert (=> d!828689 (= res!1189832 ((_ is ElementMatch!8695) (h!39708 (exprs!3155 c!7184))))))

(assert (=> d!828689 (= (validRegex!3492 (h!39708 (exprs!3155 c!7184))) e!1814405)))

(declare-fun bm!184913 () Bool)

(declare-fun call!184918 () Bool)

(assert (=> bm!184913 (= call!184918 call!184920)))

(declare-fun bm!184915 () Bool)

(assert (=> bm!184915 (= call!184919 (validRegex!3492 (ite c!462759 (regOne!17903 (h!39708 (exprs!3155 c!7184))) (regTwo!17902 (h!39708 (exprs!3155 c!7184))))))))

(declare-fun b!2866028 () Bool)

(assert (=> b!2866028 (= e!1814401 call!184920)))

(declare-fun b!2866029 () Bool)

(assert (=> b!2866029 (= e!1814404 call!184918)))

(declare-fun b!2866030 () Bool)

(assert (=> b!2866030 (= e!1814402 e!1814403)))

(assert (=> b!2866030 (= c!462759 ((_ is Union!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2866031 () Bool)

(assert (=> b!2866031 (= e!1814405 e!1814402)))

(assert (=> b!2866031 (= c!462760 ((_ is Star!8695) (h!39708 (exprs!3155 c!7184))))))

(declare-fun b!2866032 () Bool)

(declare-fun e!1814400 () Bool)

(assert (=> b!2866032 (= e!1814400 e!1814406)))

(declare-fun res!1189830 () Bool)

(assert (=> b!2866032 (=> (not res!1189830) (not e!1814406))))

(assert (=> b!2866032 (= res!1189830 call!184918)))

(declare-fun b!2866033 () Bool)

(declare-fun res!1189829 () Bool)

(assert (=> b!2866033 (=> res!1189829 e!1814400)))

(assert (=> b!2866033 (= res!1189829 (not ((_ is Concat!14016) (h!39708 (exprs!3155 c!7184)))))))

(assert (=> b!2866033 (= e!1814403 e!1814400)))

(assert (= (and d!828689 (not res!1189832)) b!2866031))

(assert (= (and b!2866031 c!462760) b!2866026))

(assert (= (and b!2866031 (not c!462760)) b!2866030))

(assert (= (and b!2866026 res!1189831) b!2866028))

(assert (= (and b!2866030 c!462759) b!2866025))

(assert (= (and b!2866030 (not c!462759)) b!2866033))

(assert (= (and b!2866025 res!1189833) b!2866029))

(assert (= (and b!2866033 (not res!1189829)) b!2866032))

(assert (= (and b!2866032 res!1189830) b!2866027))

(assert (= (or b!2866029 b!2866032) bm!184913))

(assert (= (or b!2866025 b!2866027) bm!184915))

(assert (= (or b!2866028 bm!184913) bm!184914))

(declare-fun m!3286291 () Bool)

(assert (=> b!2866026 m!3286291))

(declare-fun m!3286293 () Bool)

(assert (=> bm!184914 m!3286293))

(declare-fun m!3286295 () Bool)

(assert (=> bm!184915 m!3286295))

(assert (=> b!2865772 d!828689))

(declare-fun d!828691 () Bool)

(assert (=> d!828691 (matchZipper!461 (store ((as const (Array Context!5310 Bool)) false) lt!1016647 true) (get!10289 (getLanguageWitness!354 lt!1016647)))))

(declare-fun lt!1016693 () Unit!47927)

(declare-fun choose!16945 (Context!5310) Unit!47927)

(assert (=> d!828691 (= lt!1016693 (choose!16945 lt!1016647))))

(assert (=> d!828691 (not (lostCause!787 lt!1016647))))

(assert (=> d!828691 (= (lemmaGetWitnessMatchesContext!20 lt!1016647) lt!1016693)))

(declare-fun bs!521552 () Bool)

(assert (= bs!521552 d!828691))

(assert (=> bs!521552 m!3286199))

(declare-fun m!3286297 () Bool)

(assert (=> bs!521552 m!3286297))

(declare-fun m!3286299 () Bool)

(assert (=> bs!521552 m!3286299))

(declare-fun m!3286301 () Bool)

(assert (=> bs!521552 m!3286301))

(declare-fun m!3286303 () Bool)

(assert (=> bs!521552 m!3286303))

(assert (=> bs!521552 m!3286199))

(assert (=> bs!521552 m!3286181))

(assert (=> bs!521552 m!3286297))

(assert (=> bs!521552 m!3286181))

(assert (=> b!2865772 d!828691))

(declare-fun d!828693 () Bool)

(assert (=> d!828693 (= (get!10289 lt!1016649) (v!34495 lt!1016649))))

(assert (=> b!2865772 d!828693))

(declare-fun d!828695 () Bool)

(assert (=> d!828695 (matchR!3715 (h!39708 (exprs!3155 c!7184)) (get!10289 (getLanguageWitness!355 (h!39708 (exprs!3155 c!7184)))))))

(declare-fun lt!1016696 () Unit!47927)

(declare-fun choose!16946 (Regex!8695) Unit!47927)

(assert (=> d!828695 (= lt!1016696 (choose!16946 (h!39708 (exprs!3155 c!7184))))))

(assert (=> d!828695 (validRegex!3492 (h!39708 (exprs!3155 c!7184)))))

(assert (=> d!828695 (= (lemmaGetWitnessMatches!22 (h!39708 (exprs!3155 c!7184))) lt!1016696)))

(declare-fun bs!521553 () Bool)

(assert (= bs!521553 d!828695))

(assert (=> bs!521553 m!3286203))

(declare-fun m!3286305 () Bool)

(assert (=> bs!521553 m!3286305))

(assert (=> bs!521553 m!3286193))

(declare-fun m!3286307 () Bool)

(assert (=> bs!521553 m!3286307))

(assert (=> bs!521553 m!3286305))

(declare-fun m!3286309 () Bool)

(assert (=> bs!521553 m!3286309))

(assert (=> bs!521553 m!3286203))

(assert (=> b!2865772 d!828695))

(declare-fun d!828697 () Bool)

(assert (=> d!828697 (= (get!10289 lt!1016648) (v!34495 lt!1016648))))

(assert (=> b!2865772 d!828697))

(declare-fun d!828699 () Bool)

(declare-fun c!462764 () Bool)

(assert (=> d!828699 (= c!462764 (isEmpty!18676 (get!10289 lt!1016649)))))

(declare-fun e!1814409 () Bool)

(assert (=> d!828699 (= (matchZipper!461 (store ((as const (Array Context!5310 Bool)) false) lt!1016647 true) (get!10289 lt!1016649)) e!1814409)))

(declare-fun b!2866038 () Bool)

(declare-fun nullableZipper!704 ((InoxSet Context!5310)) Bool)

(assert (=> b!2866038 (= e!1814409 (nullableZipper!704 (store ((as const (Array Context!5310 Bool)) false) lt!1016647 true)))))

(declare-fun b!2866039 () Bool)

(declare-fun derivationStepZipper!460 ((InoxSet Context!5310) C!17572) (InoxSet Context!5310))

(assert (=> b!2866039 (= e!1814409 (matchZipper!461 (derivationStepZipper!460 (store ((as const (Array Context!5310 Bool)) false) lt!1016647 true) (head!6325 (get!10289 lt!1016649))) (tail!4550 (get!10289 lt!1016649))))))

(assert (= (and d!828699 c!462764) b!2866038))

(assert (= (and d!828699 (not c!462764)) b!2866039))

(assert (=> d!828699 m!3286195))

(declare-fun m!3286311 () Bool)

(assert (=> d!828699 m!3286311))

(assert (=> b!2866038 m!3286199))

(declare-fun m!3286313 () Bool)

(assert (=> b!2866038 m!3286313))

(assert (=> b!2866039 m!3286195))

(declare-fun m!3286315 () Bool)

(assert (=> b!2866039 m!3286315))

(assert (=> b!2866039 m!3286199))

(assert (=> b!2866039 m!3286315))

(declare-fun m!3286317 () Bool)

(assert (=> b!2866039 m!3286317))

(assert (=> b!2866039 m!3286195))

(declare-fun m!3286319 () Bool)

(assert (=> b!2866039 m!3286319))

(assert (=> b!2866039 m!3286317))

(assert (=> b!2866039 m!3286319))

(declare-fun m!3286321 () Bool)

(assert (=> b!2866039 m!3286321))

(assert (=> b!2865772 d!828699))

(declare-fun b!2866044 () Bool)

(declare-fun e!1814412 () Bool)

(declare-fun tp!922901 () Bool)

(declare-fun tp!922902 () Bool)

(assert (=> b!2866044 (= e!1814412 (and tp!922901 tp!922902))))

(assert (=> b!2865775 (= tp!922896 e!1814412)))

(assert (= (and b!2865775 ((_ is Cons!34288) (exprs!3155 c!7184))) b!2866044))

(check-sat (not d!828687) (not b!2866002) (not d!828685) (not b!2865964) (not bm!184915) (not d!828691) (not b!2866003) (not b!2865997) (not bm!184884) (not b!2866039) (not b!2866026) (not b!2865960) (not b!2866000) (not bm!184885) (not d!828663) (not d!828699) (not d!828695) (not b!2866038) (not b!2865963) (not d!828683) (not b!2865817) (not b!2866044) (not b!2865998) (not b!2866005) (not bm!184914) (not bm!184906))
(check-sat)
