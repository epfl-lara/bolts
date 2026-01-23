; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545682 () Bool)

(assert start!545682)

(declare-fun b!5159733 () Bool)

(declare-fun e!3215288 () Bool)

(declare-datatypes ((C!29328 0))(
  ( (C!29329 (val!24316 Int)) )
))
(declare-datatypes ((Regex!14531 0))(
  ( (ElementMatch!14531 (c!887810 C!29328)) (Concat!23376 (regOne!29574 Regex!14531) (regTwo!29574 Regex!14531)) (EmptyExpr!14531) (Star!14531 (reg!14860 Regex!14531)) (EmptyLang!14531) (Union!14531 (regOne!29575 Regex!14531) (regTwo!29575 Regex!14531)) )
))
(declare-fun expr!117 () Regex!14531)

(declare-fun nullable!4887 (Regex!14531) Bool)

(assert (=> b!5159733 (= e!3215288 (not (nullable!4887 (regOne!29574 expr!117))))))

(declare-fun b!5159734 () Bool)

(declare-fun e!3215294 () Bool)

(declare-fun tp!1445931 () Bool)

(declare-fun tp!1445926 () Bool)

(assert (=> b!5159734 (= e!3215294 (and tp!1445931 tp!1445926))))

(declare-fun b!5159735 () Bool)

(declare-fun res!2194162 () Bool)

(declare-fun e!3215290 () Bool)

(assert (=> b!5159735 (=> (not res!2194162) (not e!3215290))))

(declare-fun e!3215293 () Bool)

(assert (=> b!5159735 (= res!2194162 e!3215293)))

(declare-fun res!2194156 () Bool)

(assert (=> b!5159735 (=> res!2194156 e!3215293)))

(declare-fun lostCause!1614 (Regex!14531) Bool)

(assert (=> b!5159735 (= res!2194156 (lostCause!1614 (reg!14860 expr!117)))))

(declare-fun b!5159736 () Bool)

(declare-fun e!3215292 () Bool)

(declare-datatypes ((List!59974 0))(
  ( (Nil!59850) (Cons!59850 (h!66298 Regex!14531) (t!373043 List!59974)) )
))
(declare-datatypes ((Context!7830 0))(
  ( (Context!7831 (exprs!4415 List!59974)) )
))
(declare-fun ctx!100 () Context!7830)

(declare-fun lostCause!1615 (Context!7830) Bool)

(assert (=> b!5159736 (= e!3215292 (lostCause!1615 ctx!100))))

(declare-fun b!5159737 () Bool)

(declare-fun res!2194158 () Bool)

(declare-fun e!3215289 () Bool)

(assert (=> b!5159737 (=> (not res!2194158) (not e!3215289))))

(assert (=> b!5159737 (= res!2194158 e!3215288)))

(declare-fun res!2194154 () Bool)

(assert (=> b!5159737 (=> res!2194154 e!3215288)))

(get-info :version)

(assert (=> b!5159737 (= res!2194154 (not ((_ is Concat!23376) expr!117)))))

(declare-fun b!5159738 () Bool)

(declare-fun tp!1445927 () Bool)

(assert (=> b!5159738 (= e!3215294 tp!1445927)))

(declare-fun b!5159739 () Bool)

(declare-fun tp_is_empty!38211 () Bool)

(assert (=> b!5159739 (= e!3215294 tp_is_empty!38211)))

(declare-fun b!5159740 () Bool)

(declare-fun e!3215291 () Bool)

(declare-fun tp!1445930 () Bool)

(assert (=> b!5159740 (= e!3215291 tp!1445930)))

(declare-fun b!5159741 () Bool)

(declare-fun res!2194153 () Bool)

(assert (=> b!5159741 (=> (not res!2194153) (not e!3215289))))

(declare-fun a!1296 () C!29328)

(assert (=> b!5159741 (= res!2194153 (and (or (not ((_ is ElementMatch!14531) expr!117)) (not (= (c!887810 expr!117) a!1296))) (not ((_ is Union!14531) expr!117))))))

(declare-fun b!5159742 () Bool)

(declare-fun lt!2122117 () Context!7830)

(assert (=> b!5159742 (= e!3215293 (lostCause!1615 lt!2122117))))

(declare-fun b!5159743 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1297 ((InoxSet Context!7830)) Bool)

(declare-fun derivationStepZipperDown!178 (Regex!14531 Context!7830 C!29328) (InoxSet Context!7830))

(assert (=> b!5159743 (= e!3215290 (not (lostCauseZipper!1297 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296))))))

(assert (=> b!5159743 (lostCauseZipper!1297 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296))))

(declare-datatypes ((Unit!151271 0))(
  ( (Unit!151272) )
))
(declare-fun lt!2122116 () Unit!151271)

(declare-fun lemmaLostCauseFixPointDerivDown!68 (Regex!14531 Context!7830 C!29328) Unit!151271)

(assert (=> b!5159743 (= lt!2122116 (lemmaLostCauseFixPointDerivDown!68 (reg!14860 expr!117) lt!2122117 a!1296))))

(declare-fun b!5159744 () Bool)

(declare-fun res!2194155 () Bool)

(assert (=> b!5159744 (=> (not res!2194155) (not e!3215289))))

(assert (=> b!5159744 (= res!2194155 e!3215292)))

(declare-fun res!2194160 () Bool)

(assert (=> b!5159744 (=> res!2194160 e!3215292)))

(assert (=> b!5159744 (= res!2194160 (lostCause!1614 expr!117))))

(declare-fun b!5159745 () Bool)

(declare-fun tp!1445929 () Bool)

(declare-fun tp!1445928 () Bool)

(assert (=> b!5159745 (= e!3215294 (and tp!1445929 tp!1445928))))

(declare-fun res!2194157 () Bool)

(assert (=> start!545682 (=> (not res!2194157) (not e!3215289))))

(declare-fun validRegex!6386 (Regex!14531) Bool)

(assert (=> start!545682 (= res!2194157 (validRegex!6386 expr!117))))

(assert (=> start!545682 e!3215289))

(assert (=> start!545682 e!3215294))

(declare-fun inv!79508 (Context!7830) Bool)

(assert (=> start!545682 (and (inv!79508 ctx!100) e!3215291)))

(assert (=> start!545682 tp_is_empty!38211))

(declare-fun b!5159746 () Bool)

(declare-fun res!2194159 () Bool)

(assert (=> b!5159746 (=> (not res!2194159) (not e!3215289))))

(assert (=> b!5159746 (= res!2194159 (and (not ((_ is Concat!23376) expr!117)) ((_ is Star!14531) expr!117)))))

(declare-fun b!5159747 () Bool)

(assert (=> b!5159747 (= e!3215289 e!3215290)))

(declare-fun res!2194161 () Bool)

(assert (=> b!5159747 (=> (not res!2194161) (not e!3215290))))

(assert (=> b!5159747 (= res!2194161 (validRegex!6386 (reg!14860 expr!117)))))

(declare-fun $colon$colon!1245 (List!59974 Regex!14531) List!59974)

(assert (=> b!5159747 (= lt!2122117 (Context!7831 ($colon$colon!1245 (exprs!4415 ctx!100) expr!117)))))

(assert (= (and start!545682 res!2194157) b!5159744))

(assert (= (and b!5159744 (not res!2194160)) b!5159736))

(assert (= (and b!5159744 res!2194155) b!5159741))

(assert (= (and b!5159741 res!2194153) b!5159737))

(assert (= (and b!5159737 (not res!2194154)) b!5159733))

(assert (= (and b!5159737 res!2194158) b!5159746))

(assert (= (and b!5159746 res!2194159) b!5159747))

(assert (= (and b!5159747 res!2194161) b!5159735))

(assert (= (and b!5159735 (not res!2194156)) b!5159742))

(assert (= (and b!5159735 res!2194162) b!5159743))

(assert (= (and start!545682 ((_ is ElementMatch!14531) expr!117)) b!5159739))

(assert (= (and start!545682 ((_ is Concat!23376) expr!117)) b!5159734))

(assert (= (and start!545682 ((_ is Star!14531) expr!117)) b!5159738))

(assert (= (and start!545682 ((_ is Union!14531) expr!117)) b!5159745))

(assert (= start!545682 b!5159740))

(declare-fun m!6211756 () Bool)

(assert (=> b!5159742 m!6211756))

(declare-fun m!6211758 () Bool)

(assert (=> b!5159736 m!6211758))

(declare-fun m!6211760 () Bool)

(assert (=> b!5159733 m!6211760))

(declare-fun m!6211762 () Bool)

(assert (=> b!5159744 m!6211762))

(declare-fun m!6211764 () Bool)

(assert (=> start!545682 m!6211764))

(declare-fun m!6211766 () Bool)

(assert (=> start!545682 m!6211766))

(declare-fun m!6211768 () Bool)

(assert (=> b!5159747 m!6211768))

(declare-fun m!6211770 () Bool)

(assert (=> b!5159747 m!6211770))

(declare-fun m!6211772 () Bool)

(assert (=> b!5159743 m!6211772))

(declare-fun m!6211774 () Bool)

(assert (=> b!5159743 m!6211774))

(declare-fun m!6211776 () Bool)

(assert (=> b!5159743 m!6211776))

(assert (=> b!5159743 m!6211772))

(declare-fun m!6211778 () Bool)

(assert (=> b!5159743 m!6211778))

(declare-fun m!6211780 () Bool)

(assert (=> b!5159743 m!6211780))

(assert (=> b!5159743 m!6211774))

(declare-fun m!6211782 () Bool)

(assert (=> b!5159735 m!6211782))

(check-sat (not b!5159736) (not b!5159735) (not b!5159743) tp_is_empty!38211 (not b!5159747) (not b!5159745) (not b!5159734) (not start!545682) (not b!5159744) (not b!5159738) (not b!5159733) (not b!5159740) (not b!5159742))
(check-sat)
(get-model)

(declare-fun d!1665431 () Bool)

(declare-fun lostCauseFct!403 (Regex!14531) Bool)

(assert (=> d!1665431 (= (lostCause!1614 expr!117) (lostCauseFct!403 expr!117))))

(declare-fun bs!1202375 () Bool)

(assert (= bs!1202375 d!1665431))

(declare-fun m!6211784 () Bool)

(assert (=> bs!1202375 m!6211784))

(assert (=> b!5159744 d!1665431))

(declare-fun d!1665433 () Bool)

(declare-fun nullableFct!1362 (Regex!14531) Bool)

(assert (=> d!1665433 (= (nullable!4887 (regOne!29574 expr!117)) (nullableFct!1362 (regOne!29574 expr!117)))))

(declare-fun bs!1202376 () Bool)

(assert (= bs!1202376 d!1665433))

(declare-fun m!6211786 () Bool)

(assert (=> bs!1202376 m!6211786))

(assert (=> b!5159733 d!1665433))

(declare-fun bs!1202394 () Bool)

(declare-fun b!5159787 () Bool)

(declare-fun d!1665435 () Bool)

(assert (= bs!1202394 (and b!5159787 d!1665435)))

(declare-fun lambda!257562 () Int)

(declare-fun lambda!257561 () Int)

(assert (=> bs!1202394 (not (= lambda!257562 lambda!257561))))

(declare-fun bs!1202395 () Bool)

(declare-fun b!5159788 () Bool)

(assert (= bs!1202395 (and b!5159788 d!1665435)))

(declare-fun lambda!257563 () Int)

(assert (=> bs!1202395 (not (= lambda!257563 lambda!257561))))

(declare-fun bs!1202396 () Bool)

(assert (= bs!1202396 (and b!5159788 b!5159787)))

(assert (=> bs!1202396 (= lambda!257563 lambda!257562)))

(declare-fun call!361726 () Bool)

(declare-datatypes ((List!59977 0))(
  ( (Nil!59853) (Cons!59853 (h!66301 Context!7830) (t!373048 List!59977)) )
))
(declare-fun lt!2122176 () List!59977)

(declare-fun bm!361720 () Bool)

(declare-fun lt!2122173 () List!59977)

(declare-fun c!887839 () Bool)

(declare-fun exists!1873 (List!59977 Int) Bool)

(assert (=> bm!361720 (= call!361726 (exists!1873 (ite c!887839 lt!2122173 lt!2122176) (ite c!887839 lambda!257562 lambda!257563)))))

(declare-fun lt!2122171 () Bool)

(declare-datatypes ((List!59978 0))(
  ( (Nil!59854) (Cons!59854 (h!66302 C!29328) (t!373049 List!59978)) )
))
(declare-datatypes ((Option!14822 0))(
  ( (None!14821) (Some!14821 (v!50850 List!59978)) )
))
(declare-fun isEmpty!32083 (Option!14822) Bool)

(declare-fun getLanguageWitness!987 ((InoxSet Context!7830)) Option!14822)

(assert (=> d!1665435 (= lt!2122171 (isEmpty!32083 (getLanguageWitness!987 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296))))))

(declare-fun forall!14023 ((InoxSet Context!7830) Int) Bool)

(assert (=> d!1665435 (= lt!2122171 (forall!14023 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296) lambda!257561))))

(declare-fun lt!2122174 () Unit!151271)

(declare-fun e!3215330 () Unit!151271)

(assert (=> d!1665435 (= lt!2122174 e!3215330)))

(assert (=> d!1665435 (= c!887839 (not (forall!14023 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296) lambda!257561)))))

(assert (=> d!1665435 (= (lostCauseZipper!1297 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296)) lt!2122171)))

(declare-fun Unit!151275 () Unit!151271)

(assert (=> b!5159787 (= e!3215330 Unit!151275)))

(declare-fun call!361725 () List!59977)

(assert (=> b!5159787 (= lt!2122173 call!361725)))

(declare-fun lt!2122170 () Unit!151271)

(declare-fun lemmaNotForallThenExists!457 (List!59977 Int) Unit!151271)

(assert (=> b!5159787 (= lt!2122170 (lemmaNotForallThenExists!457 lt!2122173 lambda!257561))))

(assert (=> b!5159787 call!361726))

(declare-fun lt!2122175 () Unit!151271)

(assert (=> b!5159787 (= lt!2122175 lt!2122170)))

(declare-fun Unit!151276 () Unit!151271)

(assert (=> b!5159788 (= e!3215330 Unit!151276)))

(assert (=> b!5159788 (= lt!2122176 call!361725)))

(declare-fun lt!2122172 () Unit!151271)

(declare-fun lemmaForallThenNotExists!424 (List!59977 Int) Unit!151271)

(assert (=> b!5159788 (= lt!2122172 (lemmaForallThenNotExists!424 lt!2122176 lambda!257561))))

(assert (=> b!5159788 (not call!361726)))

(declare-fun lt!2122169 () Unit!151271)

(assert (=> b!5159788 (= lt!2122169 lt!2122172)))

(declare-fun bm!361721 () Bool)

(declare-fun toList!8411 ((InoxSet Context!7830)) List!59977)

(assert (=> bm!361721 (= call!361725 (toList!8411 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296)))))

(assert (= (and d!1665435 c!887839) b!5159787))

(assert (= (and d!1665435 (not c!887839)) b!5159788))

(assert (= (or b!5159787 b!5159788) bm!361720))

(assert (= (or b!5159787 b!5159788) bm!361721))

(declare-fun m!6211826 () Bool)

(assert (=> b!5159788 m!6211826))

(declare-fun m!6211828 () Bool)

(assert (=> b!5159787 m!6211828))

(assert (=> bm!361721 m!6211772))

(declare-fun m!6211830 () Bool)

(assert (=> bm!361721 m!6211830))

(assert (=> d!1665435 m!6211772))

(declare-fun m!6211832 () Bool)

(assert (=> d!1665435 m!6211832))

(assert (=> d!1665435 m!6211832))

(declare-fun m!6211834 () Bool)

(assert (=> d!1665435 m!6211834))

(assert (=> d!1665435 m!6211772))

(declare-fun m!6211836 () Bool)

(assert (=> d!1665435 m!6211836))

(assert (=> d!1665435 m!6211772))

(assert (=> d!1665435 m!6211836))

(declare-fun m!6211838 () Bool)

(assert (=> bm!361720 m!6211838))

(assert (=> b!5159743 d!1665435))

(declare-fun bs!1202397 () Bool)

(declare-fun d!1665449 () Bool)

(assert (= bs!1202397 (and d!1665449 d!1665435)))

(declare-fun lambda!257564 () Int)

(assert (=> bs!1202397 (= lambda!257564 lambda!257561)))

(declare-fun bs!1202398 () Bool)

(assert (= bs!1202398 (and d!1665449 b!5159787)))

(assert (=> bs!1202398 (not (= lambda!257564 lambda!257562))))

(declare-fun bs!1202399 () Bool)

(assert (= bs!1202399 (and d!1665449 b!5159788)))

(assert (=> bs!1202399 (not (= lambda!257564 lambda!257563))))

(declare-fun bs!1202400 () Bool)

(declare-fun b!5159789 () Bool)

(assert (= bs!1202400 (and b!5159789 d!1665435)))

(declare-fun lambda!257565 () Int)

(assert (=> bs!1202400 (not (= lambda!257565 lambda!257561))))

(declare-fun bs!1202401 () Bool)

(assert (= bs!1202401 (and b!5159789 b!5159787)))

(assert (=> bs!1202401 (= lambda!257565 lambda!257562)))

(declare-fun bs!1202402 () Bool)

(assert (= bs!1202402 (and b!5159789 b!5159788)))

(assert (=> bs!1202402 (= lambda!257565 lambda!257563)))

(declare-fun bs!1202403 () Bool)

(assert (= bs!1202403 (and b!5159789 d!1665449)))

(assert (=> bs!1202403 (not (= lambda!257565 lambda!257564))))

(declare-fun bs!1202404 () Bool)

(declare-fun b!5159790 () Bool)

(assert (= bs!1202404 (and b!5159790 b!5159789)))

(declare-fun lambda!257566 () Int)

(assert (=> bs!1202404 (= lambda!257566 lambda!257565)))

(declare-fun bs!1202405 () Bool)

(assert (= bs!1202405 (and b!5159790 b!5159788)))

(assert (=> bs!1202405 (= lambda!257566 lambda!257563)))

(declare-fun bs!1202406 () Bool)

(assert (= bs!1202406 (and b!5159790 d!1665435)))

(assert (=> bs!1202406 (not (= lambda!257566 lambda!257561))))

(declare-fun bs!1202407 () Bool)

(assert (= bs!1202407 (and b!5159790 d!1665449)))

(assert (=> bs!1202407 (not (= lambda!257566 lambda!257564))))

(declare-fun bs!1202408 () Bool)

(assert (= bs!1202408 (and b!5159790 b!5159787)))

(assert (=> bs!1202408 (= lambda!257566 lambda!257562)))

(declare-fun lt!2122184 () List!59977)

(declare-fun call!361728 () Bool)

(declare-fun bm!361722 () Bool)

(declare-fun c!887840 () Bool)

(declare-fun lt!2122181 () List!59977)

(assert (=> bm!361722 (= call!361728 (exists!1873 (ite c!887840 lt!2122181 lt!2122184) (ite c!887840 lambda!257565 lambda!257566)))))

(declare-fun lt!2122179 () Bool)

(assert (=> d!1665449 (= lt!2122179 (isEmpty!32083 (getLanguageWitness!987 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296))))))

(assert (=> d!1665449 (= lt!2122179 (forall!14023 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296) lambda!257564))))

(declare-fun lt!2122182 () Unit!151271)

(declare-fun e!3215331 () Unit!151271)

(assert (=> d!1665449 (= lt!2122182 e!3215331)))

(assert (=> d!1665449 (= c!887840 (not (forall!14023 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296) lambda!257564)))))

(assert (=> d!1665449 (= (lostCauseZipper!1297 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296)) lt!2122179)))

(declare-fun Unit!151279 () Unit!151271)

(assert (=> b!5159789 (= e!3215331 Unit!151279)))

(declare-fun call!361727 () List!59977)

(assert (=> b!5159789 (= lt!2122181 call!361727)))

(declare-fun lt!2122178 () Unit!151271)

(assert (=> b!5159789 (= lt!2122178 (lemmaNotForallThenExists!457 lt!2122181 lambda!257564))))

(assert (=> b!5159789 call!361728))

(declare-fun lt!2122183 () Unit!151271)

(assert (=> b!5159789 (= lt!2122183 lt!2122178)))

(declare-fun Unit!151280 () Unit!151271)

(assert (=> b!5159790 (= e!3215331 Unit!151280)))

(assert (=> b!5159790 (= lt!2122184 call!361727)))

(declare-fun lt!2122180 () Unit!151271)

(assert (=> b!5159790 (= lt!2122180 (lemmaForallThenNotExists!424 lt!2122184 lambda!257564))))

(assert (=> b!5159790 (not call!361728)))

(declare-fun lt!2122177 () Unit!151271)

(assert (=> b!5159790 (= lt!2122177 lt!2122180)))

(declare-fun bm!361723 () Bool)

(assert (=> bm!361723 (= call!361727 (toList!8411 (derivationStepZipperDown!178 expr!117 ctx!100 a!1296)))))

(assert (= (and d!1665449 c!887840) b!5159789))

(assert (= (and d!1665449 (not c!887840)) b!5159790))

(assert (= (or b!5159789 b!5159790) bm!361722))

(assert (= (or b!5159789 b!5159790) bm!361723))

(declare-fun m!6211840 () Bool)

(assert (=> b!5159790 m!6211840))

(declare-fun m!6211842 () Bool)

(assert (=> b!5159789 m!6211842))

(assert (=> bm!361723 m!6211774))

(declare-fun m!6211844 () Bool)

(assert (=> bm!361723 m!6211844))

(assert (=> d!1665449 m!6211774))

(declare-fun m!6211846 () Bool)

(assert (=> d!1665449 m!6211846))

(assert (=> d!1665449 m!6211846))

(declare-fun m!6211848 () Bool)

(assert (=> d!1665449 m!6211848))

(assert (=> d!1665449 m!6211774))

(declare-fun m!6211850 () Bool)

(assert (=> d!1665449 m!6211850))

(assert (=> d!1665449 m!6211774))

(assert (=> d!1665449 m!6211850))

(declare-fun m!6211852 () Bool)

(assert (=> bm!361722 m!6211852))

(assert (=> b!5159743 d!1665449))

(declare-fun d!1665451 () Bool)

(assert (=> d!1665451 (lostCauseZipper!1297 (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296))))

(declare-fun lt!2122187 () Unit!151271)

(declare-fun choose!38132 (Regex!14531 Context!7830 C!29328) Unit!151271)

(assert (=> d!1665451 (= lt!2122187 (choose!38132 (reg!14860 expr!117) lt!2122117 a!1296))))

(assert (=> d!1665451 (validRegex!6386 (reg!14860 expr!117))))

(assert (=> d!1665451 (= (lemmaLostCauseFixPointDerivDown!68 (reg!14860 expr!117) lt!2122117 a!1296) lt!2122187)))

(declare-fun bs!1202409 () Bool)

(assert (= bs!1202409 d!1665451))

(assert (=> bs!1202409 m!6211772))

(assert (=> bs!1202409 m!6211772))

(assert (=> bs!1202409 m!6211778))

(declare-fun m!6211854 () Bool)

(assert (=> bs!1202409 m!6211854))

(assert (=> bs!1202409 m!6211768))

(assert (=> b!5159743 d!1665451))

(declare-fun b!5159901 () Bool)

(declare-fun e!3215386 () (InoxSet Context!7830))

(declare-fun call!361768 () (InoxSet Context!7830))

(declare-fun call!361771 () (InoxSet Context!7830))

(assert (=> b!5159901 (= e!3215386 ((_ map or) call!361768 call!361771))))

(declare-fun b!5159902 () Bool)

(declare-fun e!3215390 () (InoxSet Context!7830))

(assert (=> b!5159902 (= e!3215390 (store ((as const (Array Context!7830 Bool)) false) ctx!100 true))))

(declare-fun b!5159903 () Bool)

(declare-fun e!3215387 () Bool)

(assert (=> b!5159903 (= e!3215387 (nullable!4887 (regOne!29574 expr!117)))))

(declare-fun bm!361763 () Bool)

(declare-fun call!361773 () (InoxSet Context!7830))

(assert (=> bm!361763 (= call!361773 call!361771)))

(declare-fun d!1665453 () Bool)

(declare-fun c!887875 () Bool)

(assert (=> d!1665453 (= c!887875 (and ((_ is ElementMatch!14531) expr!117) (= (c!887810 expr!117) a!1296)))))

(assert (=> d!1665453 (= (derivationStepZipperDown!178 expr!117 ctx!100 a!1296) e!3215390)))

(declare-fun b!5159904 () Bool)

(declare-fun e!3215389 () (InoxSet Context!7830))

(declare-fun call!361769 () (InoxSet Context!7830))

(assert (=> b!5159904 (= e!3215389 ((_ map or) call!361768 call!361769))))

(declare-fun b!5159905 () Bool)

(declare-fun c!887876 () Bool)

(assert (=> b!5159905 (= c!887876 ((_ is Star!14531) expr!117))))

(declare-fun e!3215385 () (InoxSet Context!7830))

(declare-fun e!3215388 () (InoxSet Context!7830))

(assert (=> b!5159905 (= e!3215385 e!3215388)))

(declare-fun b!5159906 () Bool)

(assert (=> b!5159906 (= e!3215386 e!3215385)))

(declare-fun c!887873 () Bool)

(assert (=> b!5159906 (= c!887873 ((_ is Concat!23376) expr!117))))

(declare-fun call!361772 () List!59974)

(declare-fun c!887877 () Bool)

(declare-fun bm!361764 () Bool)

(assert (=> bm!361764 (= call!361768 (derivationStepZipperDown!178 (ite c!887877 (regOne!29575 expr!117) (regOne!29574 expr!117)) (ite c!887877 ctx!100 (Context!7831 call!361772)) a!1296))))

(declare-fun bm!361765 () Bool)

(assert (=> bm!361765 (= call!361771 call!361769)))

(declare-fun b!5159907 () Bool)

(assert (=> b!5159907 (= e!3215388 call!361773)))

(declare-fun b!5159908 () Bool)

(assert (=> b!5159908 (= e!3215385 call!361773)))

(declare-fun c!887874 () Bool)

(declare-fun bm!361766 () Bool)

(assert (=> bm!361766 (= call!361772 ($colon$colon!1245 (exprs!4415 ctx!100) (ite (or c!887874 c!887873) (regTwo!29574 expr!117) expr!117)))))

(declare-fun b!5159909 () Bool)

(assert (=> b!5159909 (= c!887874 e!3215387)))

(declare-fun res!2194189 () Bool)

(assert (=> b!5159909 (=> (not res!2194189) (not e!3215387))))

(assert (=> b!5159909 (= res!2194189 ((_ is Concat!23376) expr!117))))

(assert (=> b!5159909 (= e!3215389 e!3215386)))

(declare-fun b!5159910 () Bool)

(assert (=> b!5159910 (= e!3215388 ((as const (Array Context!7830 Bool)) false))))

(declare-fun bm!361767 () Bool)

(declare-fun call!361770 () List!59974)

(assert (=> bm!361767 (= call!361769 (derivationStepZipperDown!178 (ite c!887877 (regTwo!29575 expr!117) (ite c!887874 (regTwo!29574 expr!117) (ite c!887873 (regOne!29574 expr!117) (reg!14860 expr!117)))) (ite (or c!887877 c!887874) ctx!100 (Context!7831 call!361770)) a!1296))))

(declare-fun b!5159911 () Bool)

(assert (=> b!5159911 (= e!3215390 e!3215389)))

(assert (=> b!5159911 (= c!887877 ((_ is Union!14531) expr!117))))

(declare-fun bm!361768 () Bool)

(assert (=> bm!361768 (= call!361770 call!361772)))

(assert (= (and d!1665453 c!887875) b!5159902))

(assert (= (and d!1665453 (not c!887875)) b!5159911))

(assert (= (and b!5159911 c!887877) b!5159904))

(assert (= (and b!5159911 (not c!887877)) b!5159909))

(assert (= (and b!5159909 res!2194189) b!5159903))

(assert (= (and b!5159909 c!887874) b!5159901))

(assert (= (and b!5159909 (not c!887874)) b!5159906))

(assert (= (and b!5159906 c!887873) b!5159908))

(assert (= (and b!5159906 (not c!887873)) b!5159905))

(assert (= (and b!5159905 c!887876) b!5159907))

(assert (= (and b!5159905 (not c!887876)) b!5159910))

(assert (= (or b!5159908 b!5159907) bm!361768))

(assert (= (or b!5159908 b!5159907) bm!361763))

(assert (= (or b!5159901 bm!361768) bm!361766))

(assert (= (or b!5159901 bm!361763) bm!361765))

(assert (= (or b!5159904 bm!361765) bm!361767))

(assert (= (or b!5159904 b!5159901) bm!361764))

(declare-fun m!6211890 () Bool)

(assert (=> b!5159902 m!6211890))

(assert (=> b!5159903 m!6211760))

(declare-fun m!6211892 () Bool)

(assert (=> bm!361766 m!6211892))

(declare-fun m!6211894 () Bool)

(assert (=> bm!361764 m!6211894))

(declare-fun m!6211896 () Bool)

(assert (=> bm!361767 m!6211896))

(assert (=> b!5159743 d!1665453))

(declare-fun b!5159912 () Bool)

(declare-fun e!3215392 () (InoxSet Context!7830))

(declare-fun call!361774 () (InoxSet Context!7830))

(declare-fun call!361777 () (InoxSet Context!7830))

(assert (=> b!5159912 (= e!3215392 ((_ map or) call!361774 call!361777))))

(declare-fun b!5159913 () Bool)

(declare-fun e!3215396 () (InoxSet Context!7830))

(assert (=> b!5159913 (= e!3215396 (store ((as const (Array Context!7830 Bool)) false) lt!2122117 true))))

(declare-fun b!5159914 () Bool)

(declare-fun e!3215393 () Bool)

(assert (=> b!5159914 (= e!3215393 (nullable!4887 (regOne!29574 (reg!14860 expr!117))))))

(declare-fun bm!361769 () Bool)

(declare-fun call!361779 () (InoxSet Context!7830))

(assert (=> bm!361769 (= call!361779 call!361777)))

(declare-fun d!1665469 () Bool)

(declare-fun c!887880 () Bool)

(assert (=> d!1665469 (= c!887880 (and ((_ is ElementMatch!14531) (reg!14860 expr!117)) (= (c!887810 (reg!14860 expr!117)) a!1296)))))

(assert (=> d!1665469 (= (derivationStepZipperDown!178 (reg!14860 expr!117) lt!2122117 a!1296) e!3215396)))

(declare-fun b!5159915 () Bool)

(declare-fun e!3215395 () (InoxSet Context!7830))

(declare-fun call!361775 () (InoxSet Context!7830))

(assert (=> b!5159915 (= e!3215395 ((_ map or) call!361774 call!361775))))

(declare-fun b!5159916 () Bool)

(declare-fun c!887881 () Bool)

(assert (=> b!5159916 (= c!887881 ((_ is Star!14531) (reg!14860 expr!117)))))

(declare-fun e!3215391 () (InoxSet Context!7830))

(declare-fun e!3215394 () (InoxSet Context!7830))

(assert (=> b!5159916 (= e!3215391 e!3215394)))

(declare-fun b!5159917 () Bool)

(assert (=> b!5159917 (= e!3215392 e!3215391)))

(declare-fun c!887878 () Bool)

(assert (=> b!5159917 (= c!887878 ((_ is Concat!23376) (reg!14860 expr!117)))))

(declare-fun c!887882 () Bool)

(declare-fun bm!361770 () Bool)

(declare-fun call!361778 () List!59974)

(assert (=> bm!361770 (= call!361774 (derivationStepZipperDown!178 (ite c!887882 (regOne!29575 (reg!14860 expr!117)) (regOne!29574 (reg!14860 expr!117))) (ite c!887882 lt!2122117 (Context!7831 call!361778)) a!1296))))

(declare-fun bm!361771 () Bool)

(assert (=> bm!361771 (= call!361777 call!361775)))

(declare-fun b!5159918 () Bool)

(assert (=> b!5159918 (= e!3215394 call!361779)))

(declare-fun b!5159919 () Bool)

(assert (=> b!5159919 (= e!3215391 call!361779)))

(declare-fun bm!361772 () Bool)

(declare-fun c!887879 () Bool)

(assert (=> bm!361772 (= call!361778 ($colon$colon!1245 (exprs!4415 lt!2122117) (ite (or c!887879 c!887878) (regTwo!29574 (reg!14860 expr!117)) (reg!14860 expr!117))))))

(declare-fun b!5159920 () Bool)

(assert (=> b!5159920 (= c!887879 e!3215393)))

(declare-fun res!2194190 () Bool)

(assert (=> b!5159920 (=> (not res!2194190) (not e!3215393))))

(assert (=> b!5159920 (= res!2194190 ((_ is Concat!23376) (reg!14860 expr!117)))))

(assert (=> b!5159920 (= e!3215395 e!3215392)))

(declare-fun b!5159921 () Bool)

(assert (=> b!5159921 (= e!3215394 ((as const (Array Context!7830 Bool)) false))))

(declare-fun bm!361773 () Bool)

(declare-fun call!361776 () List!59974)

(assert (=> bm!361773 (= call!361775 (derivationStepZipperDown!178 (ite c!887882 (regTwo!29575 (reg!14860 expr!117)) (ite c!887879 (regTwo!29574 (reg!14860 expr!117)) (ite c!887878 (regOne!29574 (reg!14860 expr!117)) (reg!14860 (reg!14860 expr!117))))) (ite (or c!887882 c!887879) lt!2122117 (Context!7831 call!361776)) a!1296))))

(declare-fun b!5159922 () Bool)

(assert (=> b!5159922 (= e!3215396 e!3215395)))

(assert (=> b!5159922 (= c!887882 ((_ is Union!14531) (reg!14860 expr!117)))))

(declare-fun bm!361774 () Bool)

(assert (=> bm!361774 (= call!361776 call!361778)))

(assert (= (and d!1665469 c!887880) b!5159913))

(assert (= (and d!1665469 (not c!887880)) b!5159922))

(assert (= (and b!5159922 c!887882) b!5159915))

(assert (= (and b!5159922 (not c!887882)) b!5159920))

(assert (= (and b!5159920 res!2194190) b!5159914))

(assert (= (and b!5159920 c!887879) b!5159912))

(assert (= (and b!5159920 (not c!887879)) b!5159917))

(assert (= (and b!5159917 c!887878) b!5159919))

(assert (= (and b!5159917 (not c!887878)) b!5159916))

(assert (= (and b!5159916 c!887881) b!5159918))

(assert (= (and b!5159916 (not c!887881)) b!5159921))

(assert (= (or b!5159919 b!5159918) bm!361774))

(assert (= (or b!5159919 b!5159918) bm!361769))

(assert (= (or b!5159912 bm!361774) bm!361772))

(assert (= (or b!5159912 bm!361769) bm!361771))

(assert (= (or b!5159915 bm!361771) bm!361773))

(assert (= (or b!5159915 b!5159912) bm!361770))

(declare-fun m!6211898 () Bool)

(assert (=> b!5159913 m!6211898))

(declare-fun m!6211900 () Bool)

(assert (=> b!5159914 m!6211900))

(declare-fun m!6211902 () Bool)

(assert (=> bm!361772 m!6211902))

(declare-fun m!6211904 () Bool)

(assert (=> bm!361770 m!6211904))

(declare-fun m!6211906 () Bool)

(assert (=> bm!361773 m!6211906))

(assert (=> b!5159743 d!1665469))

(declare-fun d!1665471 () Bool)

(declare-fun lambda!257573 () Int)

(declare-fun exists!1874 (List!59974 Int) Bool)

(assert (=> d!1665471 (= (lostCause!1615 lt!2122117) (exists!1874 (exprs!4415 lt!2122117) lambda!257573))))

(declare-fun bs!1202418 () Bool)

(assert (= bs!1202418 d!1665471))

(declare-fun m!6211908 () Bool)

(assert (=> bs!1202418 m!6211908))

(assert (=> b!5159742 d!1665471))

(declare-fun d!1665473 () Bool)

(declare-fun res!2194205 () Bool)

(declare-fun e!3215415 () Bool)

(assert (=> d!1665473 (=> res!2194205 e!3215415)))

(assert (=> d!1665473 (= res!2194205 ((_ is ElementMatch!14531) expr!117))))

(assert (=> d!1665473 (= (validRegex!6386 expr!117) e!3215415)))

(declare-fun b!5159941 () Bool)

(declare-fun e!3215411 () Bool)

(declare-fun e!3215412 () Bool)

(assert (=> b!5159941 (= e!3215411 e!3215412)))

(declare-fun res!2194202 () Bool)

(assert (=> b!5159941 (=> (not res!2194202) (not e!3215412))))

(declare-fun call!361786 () Bool)

(assert (=> b!5159941 (= res!2194202 call!361786)))

(declare-fun b!5159942 () Bool)

(declare-fun e!3215417 () Bool)

(declare-fun e!3215413 () Bool)

(assert (=> b!5159942 (= e!3215417 e!3215413)))

(declare-fun res!2194204 () Bool)

(assert (=> b!5159942 (= res!2194204 (not (nullable!4887 (reg!14860 expr!117))))))

(assert (=> b!5159942 (=> (not res!2194204) (not e!3215413))))

(declare-fun bm!361781 () Bool)

(declare-fun c!887887 () Bool)

(assert (=> bm!361781 (= call!361786 (validRegex!6386 (ite c!887887 (regOne!29575 expr!117) (regOne!29574 expr!117))))))

(declare-fun bm!361782 () Bool)

(declare-fun call!361787 () Bool)

(declare-fun call!361788 () Bool)

(assert (=> bm!361782 (= call!361787 call!361788)))

(declare-fun b!5159943 () Bool)

(declare-fun res!2194201 () Bool)

(declare-fun e!3215414 () Bool)

(assert (=> b!5159943 (=> (not res!2194201) (not e!3215414))))

(assert (=> b!5159943 (= res!2194201 call!361786)))

(declare-fun e!3215416 () Bool)

(assert (=> b!5159943 (= e!3215416 e!3215414)))

(declare-fun b!5159944 () Bool)

(assert (=> b!5159944 (= e!3215414 call!361787)))

(declare-fun b!5159945 () Bool)

(assert (=> b!5159945 (= e!3215412 call!361787)))

(declare-fun b!5159946 () Bool)

(assert (=> b!5159946 (= e!3215417 e!3215416)))

(assert (=> b!5159946 (= c!887887 ((_ is Union!14531) expr!117))))

(declare-fun b!5159947 () Bool)

(declare-fun res!2194203 () Bool)

(assert (=> b!5159947 (=> res!2194203 e!3215411)))

(assert (=> b!5159947 (= res!2194203 (not ((_ is Concat!23376) expr!117)))))

(assert (=> b!5159947 (= e!3215416 e!3215411)))

(declare-fun c!887888 () Bool)

(declare-fun bm!361783 () Bool)

(assert (=> bm!361783 (= call!361788 (validRegex!6386 (ite c!887888 (reg!14860 expr!117) (ite c!887887 (regTwo!29575 expr!117) (regTwo!29574 expr!117)))))))

(declare-fun b!5159948 () Bool)

(assert (=> b!5159948 (= e!3215413 call!361788)))

(declare-fun b!5159949 () Bool)

(assert (=> b!5159949 (= e!3215415 e!3215417)))

(assert (=> b!5159949 (= c!887888 ((_ is Star!14531) expr!117))))

(assert (= (and d!1665473 (not res!2194205)) b!5159949))

(assert (= (and b!5159949 c!887888) b!5159942))

(assert (= (and b!5159949 (not c!887888)) b!5159946))

(assert (= (and b!5159942 res!2194204) b!5159948))

(assert (= (and b!5159946 c!887887) b!5159943))

(assert (= (and b!5159946 (not c!887887)) b!5159947))

(assert (= (and b!5159943 res!2194201) b!5159944))

(assert (= (and b!5159947 (not res!2194203)) b!5159941))

(assert (= (and b!5159941 res!2194202) b!5159945))

(assert (= (or b!5159944 b!5159945) bm!361782))

(assert (= (or b!5159943 b!5159941) bm!361781))

(assert (= (or b!5159948 bm!361782) bm!361783))

(declare-fun m!6211910 () Bool)

(assert (=> b!5159942 m!6211910))

(declare-fun m!6211912 () Bool)

(assert (=> bm!361781 m!6211912))

(declare-fun m!6211914 () Bool)

(assert (=> bm!361783 m!6211914))

(assert (=> start!545682 d!1665473))

(declare-fun bs!1202419 () Bool)

(declare-fun d!1665475 () Bool)

(assert (= bs!1202419 (and d!1665475 d!1665471)))

(declare-fun lambda!257576 () Int)

(assert (=> bs!1202419 (not (= lambda!257576 lambda!257573))))

(declare-fun forall!14025 (List!59974 Int) Bool)

(assert (=> d!1665475 (= (inv!79508 ctx!100) (forall!14025 (exprs!4415 ctx!100) lambda!257576))))

(declare-fun bs!1202420 () Bool)

(assert (= bs!1202420 d!1665475))

(declare-fun m!6211916 () Bool)

(assert (=> bs!1202420 m!6211916))

(assert (=> start!545682 d!1665475))

(declare-fun bs!1202421 () Bool)

(declare-fun d!1665477 () Bool)

(assert (= bs!1202421 (and d!1665477 d!1665471)))

(declare-fun lambda!257577 () Int)

(assert (=> bs!1202421 (= lambda!257577 lambda!257573)))

(declare-fun bs!1202422 () Bool)

(assert (= bs!1202422 (and d!1665477 d!1665475)))

(assert (=> bs!1202422 (not (= lambda!257577 lambda!257576))))

(assert (=> d!1665477 (= (lostCause!1615 ctx!100) (exists!1874 (exprs!4415 ctx!100) lambda!257577))))

(declare-fun bs!1202423 () Bool)

(assert (= bs!1202423 d!1665477))

(declare-fun m!6211918 () Bool)

(assert (=> bs!1202423 m!6211918))

(assert (=> b!5159736 d!1665477))

(declare-fun d!1665479 () Bool)

(declare-fun res!2194210 () Bool)

(declare-fun e!3215422 () Bool)

(assert (=> d!1665479 (=> res!2194210 e!3215422)))

(assert (=> d!1665479 (= res!2194210 ((_ is ElementMatch!14531) (reg!14860 expr!117)))))

(assert (=> d!1665479 (= (validRegex!6386 (reg!14860 expr!117)) e!3215422)))

(declare-fun b!5159950 () Bool)

(declare-fun e!3215418 () Bool)

(declare-fun e!3215419 () Bool)

(assert (=> b!5159950 (= e!3215418 e!3215419)))

(declare-fun res!2194207 () Bool)

(assert (=> b!5159950 (=> (not res!2194207) (not e!3215419))))

(declare-fun call!361789 () Bool)

(assert (=> b!5159950 (= res!2194207 call!361789)))

(declare-fun b!5159951 () Bool)

(declare-fun e!3215424 () Bool)

(declare-fun e!3215420 () Bool)

(assert (=> b!5159951 (= e!3215424 e!3215420)))

(declare-fun res!2194209 () Bool)

(assert (=> b!5159951 (= res!2194209 (not (nullable!4887 (reg!14860 (reg!14860 expr!117)))))))

(assert (=> b!5159951 (=> (not res!2194209) (not e!3215420))))

(declare-fun bm!361784 () Bool)

(declare-fun c!887889 () Bool)

(assert (=> bm!361784 (= call!361789 (validRegex!6386 (ite c!887889 (regOne!29575 (reg!14860 expr!117)) (regOne!29574 (reg!14860 expr!117)))))))

(declare-fun bm!361785 () Bool)

(declare-fun call!361790 () Bool)

(declare-fun call!361791 () Bool)

(assert (=> bm!361785 (= call!361790 call!361791)))

(declare-fun b!5159952 () Bool)

(declare-fun res!2194206 () Bool)

(declare-fun e!3215421 () Bool)

(assert (=> b!5159952 (=> (not res!2194206) (not e!3215421))))

(assert (=> b!5159952 (= res!2194206 call!361789)))

(declare-fun e!3215423 () Bool)

(assert (=> b!5159952 (= e!3215423 e!3215421)))

(declare-fun b!5159953 () Bool)

(assert (=> b!5159953 (= e!3215421 call!361790)))

(declare-fun b!5159954 () Bool)

(assert (=> b!5159954 (= e!3215419 call!361790)))

(declare-fun b!5159955 () Bool)

(assert (=> b!5159955 (= e!3215424 e!3215423)))

(assert (=> b!5159955 (= c!887889 ((_ is Union!14531) (reg!14860 expr!117)))))

(declare-fun b!5159956 () Bool)

(declare-fun res!2194208 () Bool)

(assert (=> b!5159956 (=> res!2194208 e!3215418)))

(assert (=> b!5159956 (= res!2194208 (not ((_ is Concat!23376) (reg!14860 expr!117))))))

(assert (=> b!5159956 (= e!3215423 e!3215418)))

(declare-fun c!887890 () Bool)

(declare-fun bm!361786 () Bool)

(assert (=> bm!361786 (= call!361791 (validRegex!6386 (ite c!887890 (reg!14860 (reg!14860 expr!117)) (ite c!887889 (regTwo!29575 (reg!14860 expr!117)) (regTwo!29574 (reg!14860 expr!117))))))))

(declare-fun b!5159957 () Bool)

(assert (=> b!5159957 (= e!3215420 call!361791)))

(declare-fun b!5159958 () Bool)

(assert (=> b!5159958 (= e!3215422 e!3215424)))

(assert (=> b!5159958 (= c!887890 ((_ is Star!14531) (reg!14860 expr!117)))))

(assert (= (and d!1665479 (not res!2194210)) b!5159958))

(assert (= (and b!5159958 c!887890) b!5159951))

(assert (= (and b!5159958 (not c!887890)) b!5159955))

(assert (= (and b!5159951 res!2194209) b!5159957))

(assert (= (and b!5159955 c!887889) b!5159952))

(assert (= (and b!5159955 (not c!887889)) b!5159956))

(assert (= (and b!5159952 res!2194206) b!5159953))

(assert (= (and b!5159956 (not res!2194208)) b!5159950))

(assert (= (and b!5159950 res!2194207) b!5159954))

(assert (= (or b!5159953 b!5159954) bm!361785))

(assert (= (or b!5159952 b!5159950) bm!361784))

(assert (= (or b!5159957 bm!361785) bm!361786))

(declare-fun m!6211920 () Bool)

(assert (=> b!5159951 m!6211920))

(declare-fun m!6211922 () Bool)

(assert (=> bm!361784 m!6211922))

(declare-fun m!6211924 () Bool)

(assert (=> bm!361786 m!6211924))

(assert (=> b!5159747 d!1665479))

(declare-fun d!1665481 () Bool)

(assert (=> d!1665481 (= ($colon$colon!1245 (exprs!4415 ctx!100) expr!117) (Cons!59850 expr!117 (exprs!4415 ctx!100)))))

(assert (=> b!5159747 d!1665481))

(declare-fun d!1665483 () Bool)

(assert (=> d!1665483 (= (lostCause!1614 (reg!14860 expr!117)) (lostCauseFct!403 (reg!14860 expr!117)))))

(declare-fun bs!1202424 () Bool)

(assert (= bs!1202424 d!1665483))

(declare-fun m!6211926 () Bool)

(assert (=> bs!1202424 m!6211926))

(assert (=> b!5159735 d!1665483))

(declare-fun b!5159970 () Bool)

(declare-fun e!3215427 () Bool)

(declare-fun tp!1445986 () Bool)

(declare-fun tp!1445985 () Bool)

(assert (=> b!5159970 (= e!3215427 (and tp!1445986 tp!1445985))))

(declare-fun b!5159971 () Bool)

(declare-fun tp!1445987 () Bool)

(assert (=> b!5159971 (= e!3215427 tp!1445987)))

(assert (=> b!5159738 (= tp!1445927 e!3215427)))

(declare-fun b!5159972 () Bool)

(declare-fun tp!1445983 () Bool)

(declare-fun tp!1445984 () Bool)

(assert (=> b!5159972 (= e!3215427 (and tp!1445983 tp!1445984))))

(declare-fun b!5159969 () Bool)

(assert (=> b!5159969 (= e!3215427 tp_is_empty!38211)))

(assert (= (and b!5159738 ((_ is ElementMatch!14531) (reg!14860 expr!117))) b!5159969))

(assert (= (and b!5159738 ((_ is Concat!23376) (reg!14860 expr!117))) b!5159970))

(assert (= (and b!5159738 ((_ is Star!14531) (reg!14860 expr!117))) b!5159971))

(assert (= (and b!5159738 ((_ is Union!14531) (reg!14860 expr!117))) b!5159972))

(declare-fun b!5159977 () Bool)

(declare-fun e!3215430 () Bool)

(declare-fun tp!1445992 () Bool)

(declare-fun tp!1445993 () Bool)

(assert (=> b!5159977 (= e!3215430 (and tp!1445992 tp!1445993))))

(assert (=> b!5159740 (= tp!1445930 e!3215430)))

(assert (= (and b!5159740 ((_ is Cons!59850) (exprs!4415 ctx!100))) b!5159977))

(declare-fun b!5159979 () Bool)

(declare-fun e!3215431 () Bool)

(declare-fun tp!1445997 () Bool)

(declare-fun tp!1445996 () Bool)

(assert (=> b!5159979 (= e!3215431 (and tp!1445997 tp!1445996))))

(declare-fun b!5159980 () Bool)

(declare-fun tp!1445998 () Bool)

(assert (=> b!5159980 (= e!3215431 tp!1445998)))

(assert (=> b!5159734 (= tp!1445931 e!3215431)))

(declare-fun b!5159981 () Bool)

(declare-fun tp!1445994 () Bool)

(declare-fun tp!1445995 () Bool)

(assert (=> b!5159981 (= e!3215431 (and tp!1445994 tp!1445995))))

(declare-fun b!5159978 () Bool)

(assert (=> b!5159978 (= e!3215431 tp_is_empty!38211)))

(assert (= (and b!5159734 ((_ is ElementMatch!14531) (regOne!29574 expr!117))) b!5159978))

(assert (= (and b!5159734 ((_ is Concat!23376) (regOne!29574 expr!117))) b!5159979))

(assert (= (and b!5159734 ((_ is Star!14531) (regOne!29574 expr!117))) b!5159980))

(assert (= (and b!5159734 ((_ is Union!14531) (regOne!29574 expr!117))) b!5159981))

(declare-fun b!5159983 () Bool)

(declare-fun e!3215432 () Bool)

(declare-fun tp!1446002 () Bool)

(declare-fun tp!1446001 () Bool)

(assert (=> b!5159983 (= e!3215432 (and tp!1446002 tp!1446001))))

(declare-fun b!5159984 () Bool)

(declare-fun tp!1446003 () Bool)

(assert (=> b!5159984 (= e!3215432 tp!1446003)))

(assert (=> b!5159734 (= tp!1445926 e!3215432)))

(declare-fun b!5159985 () Bool)

(declare-fun tp!1445999 () Bool)

(declare-fun tp!1446000 () Bool)

(assert (=> b!5159985 (= e!3215432 (and tp!1445999 tp!1446000))))

(declare-fun b!5159982 () Bool)

(assert (=> b!5159982 (= e!3215432 tp_is_empty!38211)))

(assert (= (and b!5159734 ((_ is ElementMatch!14531) (regTwo!29574 expr!117))) b!5159982))

(assert (= (and b!5159734 ((_ is Concat!23376) (regTwo!29574 expr!117))) b!5159983))

(assert (= (and b!5159734 ((_ is Star!14531) (regTwo!29574 expr!117))) b!5159984))

(assert (= (and b!5159734 ((_ is Union!14531) (regTwo!29574 expr!117))) b!5159985))

(declare-fun b!5159987 () Bool)

(declare-fun e!3215433 () Bool)

(declare-fun tp!1446007 () Bool)

(declare-fun tp!1446006 () Bool)

(assert (=> b!5159987 (= e!3215433 (and tp!1446007 tp!1446006))))

(declare-fun b!5159988 () Bool)

(declare-fun tp!1446008 () Bool)

(assert (=> b!5159988 (= e!3215433 tp!1446008)))

(assert (=> b!5159745 (= tp!1445929 e!3215433)))

(declare-fun b!5159989 () Bool)

(declare-fun tp!1446004 () Bool)

(declare-fun tp!1446005 () Bool)

(assert (=> b!5159989 (= e!3215433 (and tp!1446004 tp!1446005))))

(declare-fun b!5159986 () Bool)

(assert (=> b!5159986 (= e!3215433 tp_is_empty!38211)))

(assert (= (and b!5159745 ((_ is ElementMatch!14531) (regOne!29575 expr!117))) b!5159986))

(assert (= (and b!5159745 ((_ is Concat!23376) (regOne!29575 expr!117))) b!5159987))

(assert (= (and b!5159745 ((_ is Star!14531) (regOne!29575 expr!117))) b!5159988))

(assert (= (and b!5159745 ((_ is Union!14531) (regOne!29575 expr!117))) b!5159989))

(declare-fun b!5159991 () Bool)

(declare-fun e!3215434 () Bool)

(declare-fun tp!1446012 () Bool)

(declare-fun tp!1446011 () Bool)

(assert (=> b!5159991 (= e!3215434 (and tp!1446012 tp!1446011))))

(declare-fun b!5159992 () Bool)

(declare-fun tp!1446013 () Bool)

(assert (=> b!5159992 (= e!3215434 tp!1446013)))

(assert (=> b!5159745 (= tp!1445928 e!3215434)))

(declare-fun b!5159993 () Bool)

(declare-fun tp!1446009 () Bool)

(declare-fun tp!1446010 () Bool)

(assert (=> b!5159993 (= e!3215434 (and tp!1446009 tp!1446010))))

(declare-fun b!5159990 () Bool)

(assert (=> b!5159990 (= e!3215434 tp_is_empty!38211)))

(assert (= (and b!5159745 ((_ is ElementMatch!14531) (regTwo!29575 expr!117))) b!5159990))

(assert (= (and b!5159745 ((_ is Concat!23376) (regTwo!29575 expr!117))) b!5159991))

(assert (= (and b!5159745 ((_ is Star!14531) (regTwo!29575 expr!117))) b!5159992))

(assert (= (and b!5159745 ((_ is Union!14531) (regTwo!29575 expr!117))) b!5159993))

(check-sat (not d!1665449) (not bm!361723) (not bm!361781) (not bm!361786) (not b!5159988) (not b!5159981) (not b!5159980) (not bm!361767) (not d!1665431) (not b!5159992) (not bm!361783) (not b!5159787) (not b!5159970) (not d!1665471) (not b!5159989) (not bm!361772) (not b!5159914) (not b!5159789) (not b!5159951) (not b!5159903) (not bm!361766) (not d!1665483) (not b!5159991) (not bm!361721) (not bm!361720) (not bm!361773) (not b!5159971) (not b!5159985) tp_is_empty!38211 (not b!5159979) (not d!1665433) (not d!1665475) (not b!5159983) (not bm!361764) (not b!5159788) (not d!1665435) (not d!1665477) (not bm!361722) (not b!5159790) (not bm!361784) (not bm!361770) (not b!5159977) (not b!5159972) (not d!1665451) (not b!5159984) (not b!5159993) (not b!5159987) (not b!5159942))
(check-sat)
