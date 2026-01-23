; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279232 () Bool)

(assert start!279232)

(declare-fun res!1189410 () Bool)

(declare-fun e!1813595 () Bool)

(assert (=> start!279232 (=> (not res!1189410) (not e!1813595))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17528 0))(
  ( (C!17529 (val!10798 Int)) )
))
(declare-datatypes ((Regex!8673 0))(
  ( (ElementMatch!8673 (c!462112 C!17528)) (Concat!13994 (regOne!17858 Regex!8673) (regTwo!17858 Regex!8673)) (EmptyExpr!8673) (Star!8673 (reg!9002 Regex!8673)) (EmptyLang!8673) (Union!8673 (regOne!17859 Regex!8673) (regTwo!17859 Regex!8673)) )
))
(declare-datatypes ((List!34351 0))(
  ( (Nil!34227) (Cons!34227 (h!39647 Regex!8673) (t!233394 List!34351)) )
))
(declare-datatypes ((Context!5266 0))(
  ( (Context!5267 (exprs!3133 List!34351)) )
))
(declare-fun z!691 () (InoxSet Context!5266))

(declare-fun lostCauseZipper!577 ((InoxSet Context!5266)) Bool)

(assert (=> start!279232 (= res!1189410 (not (lostCauseZipper!577 z!691)))))

(assert (=> start!279232 e!1813595))

(declare-fun condSetEmpty!25613 () Bool)

(assert (=> start!279232 (= condSetEmpty!25613 (= z!691 ((as const (Array Context!5266 Bool)) false)))))

(declare-fun setRes!25613 () Bool)

(assert (=> start!279232 setRes!25613))

(declare-fun tp!922590 () Bool)

(declare-fun setNonEmpty!25613 () Bool)

(declare-fun setElem!25613 () Context!5266)

(declare-fun e!1813594 () Bool)

(declare-fun inv!46269 (Context!5266) Bool)

(assert (=> setNonEmpty!25613 (= setRes!25613 (and tp!922590 (inv!46269 setElem!25613) e!1813594))))

(declare-fun setRest!25613 () (InoxSet Context!5266))

(assert (=> setNonEmpty!25613 (= z!691 ((_ map or) (store ((as const (Array Context!5266 Bool)) false) setElem!25613 true) setRest!25613))))

(declare-fun setIsEmpty!25613 () Bool)

(assert (=> setIsEmpty!25613 setRes!25613))

(declare-fun b!2864827 () Bool)

(declare-datatypes ((List!34352 0))(
  ( (Nil!34228) (Cons!34228 (h!39648 C!17528) (t!233395 List!34352)) )
))
(declare-datatypes ((Option!6352 0))(
  ( (None!6351) (Some!6351 (v!34473 List!34352)) )
))
(declare-fun isDefined!4972 (Option!6352) Bool)

(declare-fun getLanguageWitness!307 ((InoxSet Context!5266)) Option!6352)

(assert (=> b!2864827 (= e!1813595 (not (isDefined!4972 (getLanguageWitness!307 z!691))))))

(declare-fun b!2864828 () Bool)

(declare-fun tp!922589 () Bool)

(assert (=> b!2864828 (= e!1813594 tp!922589)))

(assert (= (and start!279232 res!1189410) b!2864827))

(assert (= (and start!279232 condSetEmpty!25613) setIsEmpty!25613))

(assert (= (and start!279232 (not condSetEmpty!25613)) setNonEmpty!25613))

(assert (= setNonEmpty!25613 b!2864828))

(declare-fun m!3284777 () Bool)

(assert (=> start!279232 m!3284777))

(declare-fun m!3284779 () Bool)

(assert (=> setNonEmpty!25613 m!3284779))

(declare-fun m!3284781 () Bool)

(assert (=> b!2864827 m!3284781))

(assert (=> b!2864827 m!3284781))

(declare-fun m!3284783 () Bool)

(assert (=> b!2864827 m!3284783))

(check-sat (not start!279232) (not setNonEmpty!25613) (not b!2864827) (not b!2864828))
(check-sat)
(get-model)

(declare-fun bs!520993 () Bool)

(declare-fun b!2864833 () Bool)

(declare-fun d!828288 () Bool)

(assert (= bs!520993 (and b!2864833 d!828288)))

(declare-fun lambda!106105 () Int)

(declare-fun lambda!106104 () Int)

(assert (=> bs!520993 (not (= lambda!106105 lambda!106104))))

(declare-fun bs!520994 () Bool)

(declare-fun b!2864834 () Bool)

(assert (= bs!520994 (and b!2864834 d!828288)))

(declare-fun lambda!106106 () Int)

(assert (=> bs!520994 (not (= lambda!106106 lambda!106104))))

(declare-fun bs!520995 () Bool)

(assert (= bs!520995 (and b!2864834 b!2864833)))

(assert (=> bs!520995 (= lambda!106106 lambda!106105)))

(declare-datatypes ((Unit!47867 0))(
  ( (Unit!47868) )
))
(declare-fun e!1813602 () Unit!47867)

(declare-fun Unit!47869 () Unit!47867)

(assert (=> b!2864833 (= e!1813602 Unit!47869)))

(declare-datatypes ((List!34353 0))(
  ( (Nil!34229) (Cons!34229 (h!39649 Context!5266) (t!233396 List!34353)) )
))
(declare-fun lt!1015793 () List!34353)

(declare-fun call!184800 () List!34353)

(assert (=> b!2864833 (= lt!1015793 call!184800)))

(declare-fun lt!1015791 () Unit!47867)

(declare-fun lemmaNotForallThenExists!142 (List!34353 Int) Unit!47867)

(assert (=> b!2864833 (= lt!1015791 (lemmaNotForallThenExists!142 lt!1015793 lambda!106104))))

(declare-fun call!184799 () Bool)

(assert (=> b!2864833 call!184799))

(declare-fun lt!1015794 () Unit!47867)

(assert (=> b!2864833 (= lt!1015794 lt!1015791)))

(declare-fun Unit!47870 () Unit!47867)

(assert (=> b!2864834 (= e!1813602 Unit!47870)))

(declare-fun lt!1015792 () List!34353)

(assert (=> b!2864834 (= lt!1015792 call!184800)))

(declare-fun lt!1015795 () Unit!47867)

(declare-fun lemmaForallThenNotExists!130 (List!34353 Int) Unit!47867)

(assert (=> b!2864834 (= lt!1015795 (lemmaForallThenNotExists!130 lt!1015792 lambda!106104))))

(assert (=> b!2864834 (not call!184799)))

(declare-fun lt!1015789 () Unit!47867)

(assert (=> b!2864834 (= lt!1015789 lt!1015795)))

(declare-fun lt!1015788 () Bool)

(declare-fun isEmpty!18657 (Option!6352) Bool)

(assert (=> d!828288 (= lt!1015788 (isEmpty!18657 (getLanguageWitness!307 z!691)))))

(declare-fun forall!7015 ((InoxSet Context!5266) Int) Bool)

(assert (=> d!828288 (= lt!1015788 (forall!7015 z!691 lambda!106104))))

(declare-fun lt!1015790 () Unit!47867)

(assert (=> d!828288 (= lt!1015790 e!1813602)))

(declare-fun c!462123 () Bool)

(assert (=> d!828288 (= c!462123 (not (forall!7015 z!691 lambda!106104)))))

(assert (=> d!828288 (= (lostCauseZipper!577 z!691) lt!1015788)))

(declare-fun bm!184795 () Bool)

(declare-fun exists!1090 (List!34353 Int) Bool)

(assert (=> bm!184795 (= call!184799 (exists!1090 (ite c!462123 lt!1015793 lt!1015792) (ite c!462123 lambda!106105 lambda!106106)))))

(declare-fun bm!184794 () Bool)

(declare-fun toList!2003 ((InoxSet Context!5266)) List!34353)

(assert (=> bm!184794 (= call!184800 (toList!2003 z!691))))

(assert (= (and d!828288 c!462123) b!2864833))

(assert (= (and d!828288 (not c!462123)) b!2864834))

(assert (= (or b!2864833 b!2864834) bm!184794))

(assert (= (or b!2864833 b!2864834) bm!184795))

(declare-fun m!3284785 () Bool)

(assert (=> b!2864834 m!3284785))

(declare-fun m!3284787 () Bool)

(assert (=> bm!184794 m!3284787))

(declare-fun m!3284789 () Bool)

(assert (=> bm!184795 m!3284789))

(declare-fun m!3284791 () Bool)

(assert (=> b!2864833 m!3284791))

(assert (=> d!828288 m!3284781))

(assert (=> d!828288 m!3284781))

(declare-fun m!3284793 () Bool)

(assert (=> d!828288 m!3284793))

(declare-fun m!3284795 () Bool)

(assert (=> d!828288 m!3284795))

(assert (=> d!828288 m!3284795))

(assert (=> start!279232 d!828288))

(declare-fun d!828290 () Bool)

(declare-fun lambda!106109 () Int)

(declare-fun forall!7016 (List!34351 Int) Bool)

(assert (=> d!828290 (= (inv!46269 setElem!25613) (forall!7016 (exprs!3133 setElem!25613) lambda!106109))))

(declare-fun bs!520996 () Bool)

(assert (= bs!520996 d!828290))

(declare-fun m!3284797 () Bool)

(assert (=> bs!520996 m!3284797))

(assert (=> setNonEmpty!25613 d!828290))

(declare-fun d!828292 () Bool)

(assert (=> d!828292 (= (isDefined!4972 (getLanguageWitness!307 z!691)) (not (isEmpty!18657 (getLanguageWitness!307 z!691))))))

(declare-fun bs!520997 () Bool)

(assert (= bs!520997 d!828292))

(assert (=> bs!520997 m!3284781))

(assert (=> bs!520997 m!3284793))

(assert (=> b!2864827 d!828292))

(declare-fun bs!520998 () Bool)

(declare-fun d!828294 () Bool)

(assert (= bs!520998 (and d!828294 d!828288)))

(declare-fun lambda!106116 () Int)

(assert (=> bs!520998 (not (= lambda!106116 lambda!106104))))

(declare-fun bs!520999 () Bool)

(assert (= bs!520999 (and d!828294 b!2864833)))

(assert (=> bs!520999 (= lambda!106116 lambda!106105)))

(declare-fun bs!521000 () Bool)

(assert (= bs!521000 (and d!828294 b!2864834)))

(assert (=> bs!521000 (= lambda!106116 lambda!106106)))

(declare-fun lt!1015798 () Option!6352)

(declare-fun exists!1091 ((InoxSet Context!5266) Int) Bool)

(assert (=> d!828294 (= (isDefined!4972 lt!1015798) (exists!1091 z!691 lambda!106116))))

(declare-fun e!1813605 () Option!6352)

(assert (=> d!828294 (= lt!1015798 e!1813605)))

(declare-fun c!462132 () Bool)

(assert (=> d!828294 (= c!462132 (exists!1091 z!691 lambda!106116))))

(assert (=> d!828294 (= (getLanguageWitness!307 z!691) lt!1015798)))

(declare-fun b!2864839 () Bool)

(declare-fun getLanguageWitness!308 (Context!5266) Option!6352)

(declare-fun getWitness!602 ((InoxSet Context!5266) Int) Context!5266)

(assert (=> b!2864839 (= e!1813605 (getLanguageWitness!308 (getWitness!602 z!691 lambda!106116)))))

(declare-fun b!2864840 () Bool)

(assert (=> b!2864840 (= e!1813605 None!6351)))

(assert (= (and d!828294 c!462132) b!2864839))

(assert (= (and d!828294 (not c!462132)) b!2864840))

(declare-fun m!3284799 () Bool)

(assert (=> d!828294 m!3284799))

(declare-fun m!3284801 () Bool)

(assert (=> d!828294 m!3284801))

(assert (=> d!828294 m!3284801))

(declare-fun m!3284803 () Bool)

(assert (=> b!2864839 m!3284803))

(assert (=> b!2864839 m!3284803))

(declare-fun m!3284805 () Bool)

(assert (=> b!2864839 m!3284805))

(assert (=> b!2864827 d!828294))

(declare-fun b!2864845 () Bool)

(declare-fun e!1813608 () Bool)

(declare-fun tp!922595 () Bool)

(declare-fun tp!922596 () Bool)

(assert (=> b!2864845 (= e!1813608 (and tp!922595 tp!922596))))

(assert (=> b!2864828 (= tp!922589 e!1813608)))

(get-info :version)

(assert (= (and b!2864828 ((_ is Cons!34227) (exprs!3133 setElem!25613))) b!2864845))

(declare-fun condSetEmpty!25616 () Bool)

(assert (=> setNonEmpty!25613 (= condSetEmpty!25616 (= setRest!25613 ((as const (Array Context!5266 Bool)) false)))))

(declare-fun setRes!25616 () Bool)

(assert (=> setNonEmpty!25613 (= tp!922590 setRes!25616)))

(declare-fun setIsEmpty!25616 () Bool)

(assert (=> setIsEmpty!25616 setRes!25616))

(declare-fun setElem!25616 () Context!5266)

(declare-fun setNonEmpty!25616 () Bool)

(declare-fun tp!922601 () Bool)

(declare-fun e!1813611 () Bool)

(assert (=> setNonEmpty!25616 (= setRes!25616 (and tp!922601 (inv!46269 setElem!25616) e!1813611))))

(declare-fun setRest!25616 () (InoxSet Context!5266))

(assert (=> setNonEmpty!25616 (= setRest!25613 ((_ map or) (store ((as const (Array Context!5266 Bool)) false) setElem!25616 true) setRest!25616))))

(declare-fun b!2864850 () Bool)

(declare-fun tp!922602 () Bool)

(assert (=> b!2864850 (= e!1813611 tp!922602)))

(assert (= (and setNonEmpty!25613 condSetEmpty!25616) setIsEmpty!25616))

(assert (= (and setNonEmpty!25613 (not condSetEmpty!25616)) setNonEmpty!25616))

(assert (= setNonEmpty!25616 b!2864850))

(declare-fun m!3284807 () Bool)

(assert (=> setNonEmpty!25616 m!3284807))

(check-sat (not d!828292) (not b!2864839) (not d!828290) (not d!828288) (not b!2864850) (not bm!184795) (not b!2864833) (not d!828294) (not setNonEmpty!25616) (not b!2864834) (not bm!184794) (not b!2864845))
(check-sat)
