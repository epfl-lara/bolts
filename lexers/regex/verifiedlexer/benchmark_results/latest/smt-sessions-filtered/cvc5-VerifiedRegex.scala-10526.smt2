; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542564 () Bool)

(assert start!542564)

(declare-fun b!5131386 () Bool)

(assert (=> b!5131386 true))

(declare-fun setIsEmpty!31087 () Bool)

(declare-fun setRes!31087 () Bool)

(assert (=> setIsEmpty!31087 setRes!31087))

(declare-datatypes ((C!28950 0))(
  ( (C!28951 (val!24127 Int)) )
))
(declare-datatypes ((Regex!14342 0))(
  ( (ElementMatch!14342 (c!882768 C!28950)) (Concat!23187 (regOne!29196 Regex!14342) (regTwo!29196 Regex!14342)) (EmptyExpr!14342) (Star!14342 (reg!14671 Regex!14342)) (EmptyLang!14342) (Union!14342 (regOne!29197 Regex!14342) (regTwo!29197 Regex!14342)) )
))
(declare-datatypes ((List!59615 0))(
  ( (Nil!59491) (Cons!59491 (h!65939 Regex!14342) (t!372642 List!59615)) )
))
(declare-datatypes ((Context!7452 0))(
  ( (Context!7453 (exprs!4226 List!59615)) )
))
(declare-fun setElem!31087 () Context!7452)

(declare-fun e!3200420 () Bool)

(declare-fun tp!1431465 () Bool)

(declare-fun setNonEmpty!31087 () Bool)

(declare-fun inv!79037 (Context!7452) Bool)

(assert (=> setNonEmpty!31087 (= setRes!31087 (and tp!1431465 (inv!79037 setElem!31087) e!3200420))))

(declare-fun z!1054 () (Set Context!7452))

(declare-fun setRest!31087 () (Set Context!7452))

(assert (=> setNonEmpty!31087 (= z!1054 (set.union (set.insert setElem!31087 (as set.empty (Set Context!7452))) setRest!31087))))

(declare-fun res!2185418 () Bool)

(declare-fun e!3200418 () Bool)

(assert (=> start!542564 (=> (not res!2185418) (not e!3200418))))

(declare-fun lostCauseZipper!1186 ((Set Context!7452)) Bool)

(assert (=> start!542564 (= res!2185418 (lostCauseZipper!1186 z!1054))))

(assert (=> start!542564 e!3200418))

(declare-fun condSetEmpty!31087 () Bool)

(assert (=> start!542564 (= condSetEmpty!31087 (= z!1054 (as set.empty (Set Context!7452))))))

(assert (=> start!542564 setRes!31087))

(declare-fun tp_is_empty!37857 () Bool)

(assert (=> start!542564 tp_is_empty!37857))

(declare-fun b!5131384 () Bool)

(declare-fun tp!1431464 () Bool)

(assert (=> b!5131384 (= e!3200420 tp!1431464)))

(declare-fun b!5131385 () Bool)

(declare-fun e!3200419 () Bool)

(declare-fun lt!2116959 () (Set Context!7452))

(declare-fun lambda!254132 () Int)

(declare-fun forall!13764 ((Set Context!7452) Int) Bool)

(assert (=> b!5131385 (= e!3200419 (not (= (lostCauseZipper!1186 lt!2116959) (forall!13764 lt!2116959 lambda!254132))))))

(assert (=> b!5131386 (= e!3200418 e!3200419)))

(declare-fun res!2185417 () Bool)

(assert (=> b!5131386 (=> (not res!2185417) (not e!3200419))))

(declare-fun lambda!254131 () Int)

(declare-fun flatMap!393 ((Set Context!7452) Int) (Set Context!7452))

(assert (=> b!5131386 (= res!2185417 (= lt!2116959 (flatMap!393 z!1054 lambda!254131)))))

(declare-fun a!1233 () C!28950)

(declare-fun derivationStepZipper!897 ((Set Context!7452) C!28950) (Set Context!7452))

(assert (=> b!5131386 (= lt!2116959 (derivationStepZipper!897 z!1054 a!1233))))

(assert (= (and start!542564 res!2185418) b!5131386))

(assert (= (and b!5131386 res!2185417) b!5131385))

(assert (= (and start!542564 condSetEmpty!31087) setIsEmpty!31087))

(assert (= (and start!542564 (not condSetEmpty!31087)) setNonEmpty!31087))

(assert (= setNonEmpty!31087 b!5131384))

(declare-fun m!6196684 () Bool)

(assert (=> setNonEmpty!31087 m!6196684))

(declare-fun m!6196686 () Bool)

(assert (=> start!542564 m!6196686))

(declare-fun m!6196688 () Bool)

(assert (=> b!5131385 m!6196688))

(declare-fun m!6196690 () Bool)

(assert (=> b!5131385 m!6196690))

(declare-fun m!6196692 () Bool)

(assert (=> b!5131386 m!6196692))

(declare-fun m!6196694 () Bool)

(assert (=> b!5131386 m!6196694))

(push 1)

(assert (not b!5131384))

(assert (not start!542564))

(assert (not setNonEmpty!31087))

(assert (not b!5131385))

(assert (not b!5131386))

(assert tp_is_empty!37857)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1197559 () Bool)

(declare-fun d!1660307 () Bool)

(assert (= bs!1197559 (and d!1660307 b!5131385)))

(declare-fun lambda!254151 () Int)

(assert (=> bs!1197559 (= lambda!254151 lambda!254132)))

(declare-fun bs!1197560 () Bool)

(declare-fun b!5131404 () Bool)

(assert (= bs!1197560 (and b!5131404 b!5131385)))

(declare-fun lambda!254152 () Int)

(assert (=> bs!1197560 (not (= lambda!254152 lambda!254132))))

(declare-fun bs!1197561 () Bool)

(assert (= bs!1197561 (and b!5131404 d!1660307)))

(assert (=> bs!1197561 (not (= lambda!254152 lambda!254151))))

(declare-fun bs!1197562 () Bool)

(declare-fun b!5131405 () Bool)

(assert (= bs!1197562 (and b!5131405 b!5131385)))

(declare-fun lambda!254153 () Int)

(assert (=> bs!1197562 (not (= lambda!254153 lambda!254132))))

(declare-fun bs!1197563 () Bool)

(assert (= bs!1197563 (and b!5131405 d!1660307)))

(assert (=> bs!1197563 (not (= lambda!254153 lambda!254151))))

(declare-fun bs!1197564 () Bool)

(assert (= bs!1197564 (and b!5131405 b!5131404)))

(assert (=> bs!1197564 (= lambda!254153 lambda!254152)))

(declare-datatypes ((Unit!150761 0))(
  ( (Unit!150762) )
))
(declare-fun e!3200436 () Unit!150761)

(declare-fun Unit!150763 () Unit!150761)

(assert (=> b!5131405 (= e!3200436 Unit!150763)))

(declare-datatypes ((List!59617 0))(
  ( (Nil!59493) (Cons!59493 (h!65941 Context!7452) (t!372644 List!59617)) )
))
(declare-fun lt!2116986 () List!59617)

(declare-fun call!357147 () List!59617)

(assert (=> b!5131405 (= lt!2116986 call!357147)))

(declare-fun lt!2116985 () Unit!150761)

(declare-fun lemmaForallThenNotExists!354 (List!59617 Int) Unit!150761)

(assert (=> b!5131405 (= lt!2116985 (lemmaForallThenNotExists!354 lt!2116986 lambda!254151))))

(declare-fun call!357146 () Bool)

(assert (=> b!5131405 (not call!357146)))

(declare-fun lt!2116982 () Unit!150761)

(assert (=> b!5131405 (= lt!2116982 lt!2116985)))

(declare-fun Unit!150764 () Unit!150761)

(assert (=> b!5131404 (= e!3200436 Unit!150764)))

(declare-fun lt!2116980 () List!59617)

(assert (=> b!5131404 (= lt!2116980 call!357147)))

(declare-fun lt!2116983 () Unit!150761)

(declare-fun lemmaNotForallThenExists!379 (List!59617 Int) Unit!150761)

(assert (=> b!5131404 (= lt!2116983 (lemmaNotForallThenExists!379 lt!2116980 lambda!254151))))

(assert (=> b!5131404 call!357146))

(declare-fun lt!2116981 () Unit!150761)

(assert (=> b!5131404 (= lt!2116981 lt!2116983)))

(declare-fun bm!357142 () Bool)

(declare-fun c!882780 () Bool)

(declare-fun exists!1648 (List!59617 Int) Bool)

(assert (=> bm!357142 (= call!357146 (exists!1648 (ite c!882780 lt!2116980 lt!2116986) (ite c!882780 lambda!254152 lambda!254153)))))

(declare-fun lt!2116984 () Bool)

(declare-datatypes ((List!59618 0))(
  ( (Nil!59494) (Cons!59494 (h!65942 C!28950) (t!372645 List!59618)) )
))
(declare-datatypes ((Option!14731 0))(
  ( (None!14730) (Some!14730 (v!50757 List!59618)) )
))
(declare-fun isEmpty!31992 (Option!14731) Bool)

(declare-fun getLanguageWitness!866 ((Set Context!7452)) Option!14731)

(assert (=> d!1660307 (= lt!2116984 (isEmpty!31992 (getLanguageWitness!866 lt!2116959)))))

(assert (=> d!1660307 (= lt!2116984 (forall!13764 lt!2116959 lambda!254151))))

(declare-fun lt!2116979 () Unit!150761)

(assert (=> d!1660307 (= lt!2116979 e!3200436)))

(assert (=> d!1660307 (= c!882780 (not (forall!13764 lt!2116959 lambda!254151)))))

(assert (=> d!1660307 (= (lostCauseZipper!1186 lt!2116959) lt!2116984)))

(declare-fun bm!357141 () Bool)

(declare-fun toList!8331 ((Set Context!7452)) List!59617)

(assert (=> bm!357141 (= call!357147 (toList!8331 lt!2116959))))

(assert (= (and d!1660307 c!882780) b!5131404))

(assert (= (and d!1660307 (not c!882780)) b!5131405))

(assert (= (or b!5131404 b!5131405) bm!357141))

(assert (= (or b!5131404 b!5131405) bm!357142))

(declare-fun m!6196708 () Bool)

(assert (=> bm!357141 m!6196708))

(declare-fun m!6196710 () Bool)

(assert (=> b!5131405 m!6196710))

(declare-fun m!6196712 () Bool)

(assert (=> b!5131404 m!6196712))

(declare-fun m!6196714 () Bool)

(assert (=> bm!357142 m!6196714))

(declare-fun m!6196716 () Bool)

(assert (=> d!1660307 m!6196716))

(assert (=> d!1660307 m!6196716))

(declare-fun m!6196718 () Bool)

(assert (=> d!1660307 m!6196718))

(declare-fun m!6196720 () Bool)

(assert (=> d!1660307 m!6196720))

(assert (=> d!1660307 m!6196720))

(assert (=> b!5131385 d!1660307))

(declare-fun d!1660311 () Bool)

(declare-fun lt!2116989 () Bool)

(declare-fun forall!13766 (List!59617 Int) Bool)

(assert (=> d!1660311 (= lt!2116989 (forall!13766 (toList!8331 lt!2116959) lambda!254132))))

(declare-fun choose!37873 ((Set Context!7452) Int) Bool)

(assert (=> d!1660311 (= lt!2116989 (choose!37873 lt!2116959 lambda!254132))))

(assert (=> d!1660311 (= (forall!13764 lt!2116959 lambda!254132) lt!2116989)))

(declare-fun bs!1197565 () Bool)

(assert (= bs!1197565 d!1660311))

(assert (=> bs!1197565 m!6196708))

(assert (=> bs!1197565 m!6196708))

(declare-fun m!6196722 () Bool)

(assert (=> bs!1197565 m!6196722))

(declare-fun m!6196724 () Bool)

(assert (=> bs!1197565 m!6196724))

(assert (=> b!5131385 d!1660311))

(declare-fun bs!1197566 () Bool)

(declare-fun d!1660313 () Bool)

(assert (= bs!1197566 (and d!1660313 b!5131385)))

(declare-fun lambda!254154 () Int)

(assert (=> bs!1197566 (= lambda!254154 lambda!254132)))

(declare-fun bs!1197567 () Bool)

(assert (= bs!1197567 (and d!1660313 d!1660307)))

(assert (=> bs!1197567 (= lambda!254154 lambda!254151)))

(declare-fun bs!1197568 () Bool)

(assert (= bs!1197568 (and d!1660313 b!5131404)))

(assert (=> bs!1197568 (not (= lambda!254154 lambda!254152))))

(declare-fun bs!1197569 () Bool)

(assert (= bs!1197569 (and d!1660313 b!5131405)))

(assert (=> bs!1197569 (not (= lambda!254154 lambda!254153))))

(declare-fun bs!1197570 () Bool)

(declare-fun b!5131406 () Bool)

(assert (= bs!1197570 (and b!5131406 b!5131404)))

(declare-fun lambda!254155 () Int)

(assert (=> bs!1197570 (= lambda!254155 lambda!254152)))

(declare-fun bs!1197571 () Bool)

(assert (= bs!1197571 (and b!5131406 b!5131385)))

(assert (=> bs!1197571 (not (= lambda!254155 lambda!254132))))

(declare-fun bs!1197572 () Bool)

(assert (= bs!1197572 (and b!5131406 d!1660313)))

(assert (=> bs!1197572 (not (= lambda!254155 lambda!254154))))

(declare-fun bs!1197573 () Bool)

(assert (= bs!1197573 (and b!5131406 b!5131405)))

(assert (=> bs!1197573 (= lambda!254155 lambda!254153)))

(declare-fun bs!1197574 () Bool)

(assert (= bs!1197574 (and b!5131406 d!1660307)))

(assert (=> bs!1197574 (not (= lambda!254155 lambda!254151))))

(declare-fun bs!1197575 () Bool)

(declare-fun b!5131407 () Bool)

(assert (= bs!1197575 (and b!5131407 b!5131404)))

(declare-fun lambda!254156 () Int)

(assert (=> bs!1197575 (= lambda!254156 lambda!254152)))

(declare-fun bs!1197576 () Bool)

(assert (= bs!1197576 (and b!5131407 b!5131406)))

(assert (=> bs!1197576 (= lambda!254156 lambda!254155)))

(declare-fun bs!1197577 () Bool)

(assert (= bs!1197577 (and b!5131407 b!5131385)))

(assert (=> bs!1197577 (not (= lambda!254156 lambda!254132))))

(declare-fun bs!1197578 () Bool)

(assert (= bs!1197578 (and b!5131407 d!1660313)))

(assert (=> bs!1197578 (not (= lambda!254156 lambda!254154))))

(declare-fun bs!1197579 () Bool)

(assert (= bs!1197579 (and b!5131407 b!5131405)))

(assert (=> bs!1197579 (= lambda!254156 lambda!254153)))

(declare-fun bs!1197580 () Bool)

(assert (= bs!1197580 (and b!5131407 d!1660307)))

(assert (=> bs!1197580 (not (= lambda!254156 lambda!254151))))

(declare-fun e!3200437 () Unit!150761)

(declare-fun Unit!150765 () Unit!150761)

(assert (=> b!5131407 (= e!3200437 Unit!150765)))

(declare-fun lt!2116997 () List!59617)

(declare-fun call!357149 () List!59617)

(assert (=> b!5131407 (= lt!2116997 call!357149)))

(declare-fun lt!2116996 () Unit!150761)

(assert (=> b!5131407 (= lt!2116996 (lemmaForallThenNotExists!354 lt!2116997 lambda!254154))))

(declare-fun call!357148 () Bool)

(assert (=> b!5131407 (not call!357148)))

(declare-fun lt!2116993 () Unit!150761)

(assert (=> b!5131407 (= lt!2116993 lt!2116996)))

(declare-fun Unit!150766 () Unit!150761)

(assert (=> b!5131406 (= e!3200437 Unit!150766)))

(declare-fun lt!2116991 () List!59617)

(assert (=> b!5131406 (= lt!2116991 call!357149)))

(declare-fun lt!2116994 () Unit!150761)

(assert (=> b!5131406 (= lt!2116994 (lemmaNotForallThenExists!379 lt!2116991 lambda!254154))))

(assert (=> b!5131406 call!357148))

(declare-fun lt!2116992 () Unit!150761)

(assert (=> b!5131406 (= lt!2116992 lt!2116994)))

(declare-fun c!882781 () Bool)

(declare-fun bm!357144 () Bool)

(assert (=> bm!357144 (= call!357148 (exists!1648 (ite c!882781 lt!2116991 lt!2116997) (ite c!882781 lambda!254155 lambda!254156)))))

(declare-fun lt!2116995 () Bool)

(assert (=> d!1660313 (= lt!2116995 (isEmpty!31992 (getLanguageWitness!866 z!1054)))))

(assert (=> d!1660313 (= lt!2116995 (forall!13764 z!1054 lambda!254154))))

(declare-fun lt!2116990 () Unit!150761)

(assert (=> d!1660313 (= lt!2116990 e!3200437)))

(assert (=> d!1660313 (= c!882781 (not (forall!13764 z!1054 lambda!254154)))))

(assert (=> d!1660313 (= (lostCauseZipper!1186 z!1054) lt!2116995)))

(declare-fun bm!357143 () Bool)

(assert (=> bm!357143 (= call!357149 (toList!8331 z!1054))))

(assert (= (and d!1660313 c!882781) b!5131406))

(assert (= (and d!1660313 (not c!882781)) b!5131407))

(assert (= (or b!5131406 b!5131407) bm!357143))

(assert (= (or b!5131406 b!5131407) bm!357144))

(declare-fun m!6196726 () Bool)

(assert (=> bm!357143 m!6196726))

(declare-fun m!6196728 () Bool)

(assert (=> b!5131407 m!6196728))

(declare-fun m!6196730 () Bool)

(assert (=> b!5131406 m!6196730))

(declare-fun m!6196732 () Bool)

(assert (=> bm!357144 m!6196732))

(declare-fun m!6196734 () Bool)

(assert (=> d!1660313 m!6196734))

(assert (=> d!1660313 m!6196734))

(declare-fun m!6196736 () Bool)

(assert (=> d!1660313 m!6196736))

(declare-fun m!6196738 () Bool)

(assert (=> d!1660313 m!6196738))

(assert (=> d!1660313 m!6196738))

(assert (=> start!542564 d!1660313))

(declare-fun d!1660315 () Bool)

(declare-fun lambda!254162 () Int)

(declare-fun forall!13767 (List!59615 Int) Bool)

(assert (=> d!1660315 (= (inv!79037 setElem!31087) (forall!13767 (exprs!4226 setElem!31087) lambda!254162))))

(declare-fun bs!1197582 () Bool)

(assert (= bs!1197582 d!1660315))

(declare-fun m!6196742 () Bool)

(assert (=> bs!1197582 m!6196742))

(assert (=> setNonEmpty!31087 d!1660315))

(declare-fun d!1660319 () Bool)

(declare-fun choose!37874 ((Set Context!7452) Int) (Set Context!7452))

(assert (=> d!1660319 (= (flatMap!393 z!1054 lambda!254131) (choose!37874 z!1054 lambda!254131))))

(declare-fun bs!1197584 () Bool)

(assert (= bs!1197584 d!1660319))

(declare-fun m!6196746 () Bool)

(assert (=> bs!1197584 m!6196746))

(assert (=> b!5131386 d!1660319))

(declare-fun bs!1197585 () Bool)

(declare-fun d!1660323 () Bool)

(assert (= bs!1197585 (and d!1660323 b!5131386)))

(declare-fun lambda!254165 () Int)

(assert (=> bs!1197585 (= lambda!254165 lambda!254131)))

(assert (=> d!1660323 true))

(assert (=> d!1660323 (= (derivationStepZipper!897 z!1054 a!1233) (flatMap!393 z!1054 lambda!254165))))

(declare-fun bs!1197586 () Bool)

(assert (= bs!1197586 d!1660323))

(declare-fun m!6196748 () Bool)

(assert (=> bs!1197586 m!6196748))

(assert (=> b!5131386 d!1660323))

(declare-fun condSetEmpty!31093 () Bool)

(assert (=> setNonEmpty!31087 (= condSetEmpty!31093 (= setRest!31087 (as set.empty (Set Context!7452))))))

(declare-fun setRes!31093 () Bool)

(assert (=> setNonEmpty!31087 (= tp!1431465 setRes!31093)))

(declare-fun setIsEmpty!31093 () Bool)

(assert (=> setIsEmpty!31093 setRes!31093))

(declare-fun setNonEmpty!31093 () Bool)

(declare-fun setElem!31093 () Context!7452)

(declare-fun tp!1431476 () Bool)

(declare-fun e!3200440 () Bool)

(assert (=> setNonEmpty!31093 (= setRes!31093 (and tp!1431476 (inv!79037 setElem!31093) e!3200440))))

(declare-fun setRest!31093 () (Set Context!7452))

(assert (=> setNonEmpty!31093 (= setRest!31087 (set.union (set.insert setElem!31093 (as set.empty (Set Context!7452))) setRest!31093))))

(declare-fun b!5131412 () Bool)

(declare-fun tp!1431477 () Bool)

(assert (=> b!5131412 (= e!3200440 tp!1431477)))

(assert (= (and setNonEmpty!31087 condSetEmpty!31093) setIsEmpty!31093))

(assert (= (and setNonEmpty!31087 (not condSetEmpty!31093)) setNonEmpty!31093))

(assert (= setNonEmpty!31093 b!5131412))

(declare-fun m!6196750 () Bool)

(assert (=> setNonEmpty!31093 m!6196750))

(declare-fun b!5131417 () Bool)

(declare-fun e!3200443 () Bool)

(declare-fun tp!1431482 () Bool)

(declare-fun tp!1431483 () Bool)

(assert (=> b!5131417 (= e!3200443 (and tp!1431482 tp!1431483))))

(assert (=> b!5131384 (= tp!1431464 e!3200443)))

(assert (= (and b!5131384 (is-Cons!59491 (exprs!4226 setElem!31087))) b!5131417))

(push 1)

(assert (not d!1660313))

(assert tp_is_empty!37857)

(assert (not b!5131404))

(assert (not bm!357142))

(assert (not b!5131417))

(assert (not d!1660315))

(assert (not d!1660307))

(assert (not d!1660319))

(assert (not bm!357141))

(assert (not b!5131405))

(assert (not b!5131406))

(assert (not setNonEmpty!31093))

(assert (not d!1660311))

(assert (not bm!357143))

(assert (not b!5131412))

(assert (not bm!357144))

(assert (not d!1660323))

(assert (not b!5131407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

