; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543440 () Bool)

(assert start!543440)

(declare-fun b!5135024 () Bool)

(declare-fun e!3202872 () Bool)

(declare-datatypes ((C!29064 0))(
  ( (C!29065 (val!24184 Int)) )
))
(declare-datatypes ((Regex!14399 0))(
  ( (ElementMatch!14399 (c!883846 C!29064)) (Concat!23244 (regOne!29310 Regex!14399) (regTwo!29310 Regex!14399)) (EmptyExpr!14399) (Star!14399 (reg!14728 Regex!14399)) (EmptyLang!14399) (Union!14399 (regOne!29311 Regex!14399) (regTwo!29311 Regex!14399)) )
))
(declare-datatypes ((List!59730 0))(
  ( (Nil!59606) (Cons!59606 (h!66054 Regex!14399) (t!372757 List!59730)) )
))
(declare-datatypes ((Context!7566 0))(
  ( (Context!7567 (exprs!4283 List!59730)) )
))
(declare-fun ctx!74 () Context!7566)

(declare-fun validRegex!6258 (Regex!14399) Bool)

(assert (=> b!5135024 (= e!3202872 (not (validRegex!6258 (h!66054 (exprs!4283 ctx!74)))))))

(declare-fun lt!2118929 () Context!7566)

(declare-fun a!1252 () C!29064)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1227 ((InoxSet Context!7566)) Bool)

(declare-fun derivationStepZipperUp!85 (Context!7566 C!29064) (InoxSet Context!7566))

(assert (=> b!5135024 (lostCauseZipper!1227 (derivationStepZipperUp!85 lt!2118929 a!1252))))

(declare-datatypes ((Unit!150945 0))(
  ( (Unit!150946) )
))
(declare-fun lt!2118930 () Unit!150945)

(declare-fun lemmaLostCauseFixPointDerivUp!18 (Context!7566 C!29064) Unit!150945)

(assert (=> b!5135024 (= lt!2118930 (lemmaLostCauseFixPointDerivUp!18 lt!2118929 a!1252))))

(assert (=> b!5135024 (= lt!2118929 (Context!7567 (t!372757 (exprs!4283 ctx!74))))))

(declare-fun lostCause!1358 (Regex!14399) Bool)

(assert (=> b!5135024 (not (lostCause!1358 (h!66054 (exprs!4283 ctx!74))))))

(declare-fun lt!2118928 () Unit!150945)

(declare-fun lemmaNullableThenNotLostCause!50 (Regex!14399) Unit!150945)

(assert (=> b!5135024 (= lt!2118928 (lemmaNullableThenNotLostCause!50 (h!66054 (exprs!4283 ctx!74))))))

(declare-fun b!5135022 () Bool)

(declare-fun res!2187242 () Bool)

(assert (=> b!5135022 (=> (not res!2187242) (not e!3202872))))

(get-info :version)

(assert (=> b!5135022 (= res!2187242 ((_ is Cons!59606) (exprs!4283 ctx!74)))))

(declare-fun res!2187240 () Bool)

(assert (=> start!543440 (=> (not res!2187240) (not e!3202872))))

(declare-fun lostCause!1359 (Context!7566) Bool)

(assert (=> start!543440 (= res!2187240 (lostCause!1359 ctx!74))))

(assert (=> start!543440 e!3202872))

(declare-fun e!3202871 () Bool)

(declare-fun inv!79178 (Context!7566) Bool)

(assert (=> start!543440 (and (inv!79178 ctx!74) e!3202871)))

(declare-fun tp_is_empty!37951 () Bool)

(assert (=> start!543440 tp_is_empty!37951))

(declare-fun b!5135025 () Bool)

(declare-fun tp!1432319 () Bool)

(assert (=> b!5135025 (= e!3202871 tp!1432319)))

(declare-fun b!5135023 () Bool)

(declare-fun res!2187241 () Bool)

(assert (=> b!5135023 (=> (not res!2187241) (not e!3202872))))

(declare-fun nullable!4772 (Regex!14399) Bool)

(assert (=> b!5135023 (= res!2187241 (nullable!4772 (h!66054 (exprs!4283 ctx!74))))))

(assert (= (and start!543440 res!2187240) b!5135022))

(assert (= (and b!5135022 res!2187242) b!5135023))

(assert (= (and b!5135023 res!2187241) b!5135024))

(assert (= start!543440 b!5135025))

(declare-fun m!6200634 () Bool)

(assert (=> b!5135024 m!6200634))

(declare-fun m!6200636 () Bool)

(assert (=> b!5135024 m!6200636))

(declare-fun m!6200638 () Bool)

(assert (=> b!5135024 m!6200638))

(declare-fun m!6200640 () Bool)

(assert (=> b!5135024 m!6200640))

(declare-fun m!6200642 () Bool)

(assert (=> b!5135024 m!6200642))

(declare-fun m!6200644 () Bool)

(assert (=> b!5135024 m!6200644))

(assert (=> b!5135024 m!6200636))

(declare-fun m!6200646 () Bool)

(assert (=> start!543440 m!6200646))

(declare-fun m!6200648 () Bool)

(assert (=> start!543440 m!6200648))

(declare-fun m!6200650 () Bool)

(assert (=> b!5135023 m!6200650))

(check-sat tp_is_empty!37951 (not b!5135024) (not b!5135023) (not start!543440) (not b!5135025))
(check-sat)
(get-model)

(declare-fun d!1661543 () Bool)

(declare-fun nullableFct!1295 (Regex!14399) Bool)

(assert (=> d!1661543 (= (nullable!4772 (h!66054 (exprs!4283 ctx!74))) (nullableFct!1295 (h!66054 (exprs!4283 ctx!74))))))

(declare-fun bs!1199623 () Bool)

(assert (= bs!1199623 d!1661543))

(declare-fun m!6200654 () Bool)

(assert (=> bs!1199623 m!6200654))

(assert (=> b!5135023 d!1661543))

(declare-fun d!1661547 () Bool)

(declare-fun lambda!255652 () Int)

(declare-fun exists!1727 (List!59730 Int) Bool)

(assert (=> d!1661547 (= (lostCause!1359 ctx!74) (exists!1727 (exprs!4283 ctx!74) lambda!255652))))

(declare-fun bs!1199628 () Bool)

(assert (= bs!1199628 d!1661547))

(declare-fun m!6200662 () Bool)

(assert (=> bs!1199628 m!6200662))

(assert (=> start!543440 d!1661547))

(declare-fun bs!1199629 () Bool)

(declare-fun d!1661555 () Bool)

(assert (= bs!1199629 (and d!1661555 d!1661547)))

(declare-fun lambda!255655 () Int)

(assert (=> bs!1199629 (not (= lambda!255655 lambda!255652))))

(declare-fun forall!13851 (List!59730 Int) Bool)

(assert (=> d!1661555 (= (inv!79178 ctx!74) (forall!13851 (exprs!4283 ctx!74) lambda!255655))))

(declare-fun bs!1199630 () Bool)

(assert (= bs!1199630 d!1661555))

(declare-fun m!6200664 () Bool)

(assert (=> bs!1199630 m!6200664))

(assert (=> start!543440 d!1661555))

(declare-fun d!1661557 () Bool)

(declare-fun lostCauseFct!326 (Regex!14399) Bool)

(assert (=> d!1661557 (= (lostCause!1358 (h!66054 (exprs!4283 ctx!74))) (lostCauseFct!326 (h!66054 (exprs!4283 ctx!74))))))

(declare-fun bs!1199631 () Bool)

(assert (= bs!1199631 d!1661557))

(declare-fun m!6200672 () Bool)

(assert (=> bs!1199631 m!6200672))

(assert (=> b!5135024 d!1661557))

(declare-fun c!883864 () Bool)

(declare-fun bm!357663 () Bool)

(declare-fun call!357668 () Bool)

(declare-fun c!883863 () Bool)

(assert (=> bm!357663 (= call!357668 (validRegex!6258 (ite c!883863 (reg!14728 (h!66054 (exprs!4283 ctx!74))) (ite c!883864 (regOne!29311 (h!66054 (exprs!4283 ctx!74))) (regTwo!29310 (h!66054 (exprs!4283 ctx!74)))))))))

(declare-fun d!1661561 () Bool)

(declare-fun res!2187275 () Bool)

(declare-fun e!3202917 () Bool)

(assert (=> d!1661561 (=> res!2187275 e!3202917)))

(assert (=> d!1661561 (= res!2187275 ((_ is ElementMatch!14399) (h!66054 (exprs!4283 ctx!74))))))

(assert (=> d!1661561 (= (validRegex!6258 (h!66054 (exprs!4283 ctx!74))) e!3202917)))

(declare-fun b!5135086 () Bool)

(declare-fun res!2187274 () Bool)

(declare-fun e!3202920 () Bool)

(assert (=> b!5135086 (=> res!2187274 e!3202920)))

(assert (=> b!5135086 (= res!2187274 (not ((_ is Concat!23244) (h!66054 (exprs!4283 ctx!74)))))))

(declare-fun e!3202918 () Bool)

(assert (=> b!5135086 (= e!3202918 e!3202920)))

(declare-fun bm!357664 () Bool)

(declare-fun call!357669 () Bool)

(assert (=> bm!357664 (= call!357669 (validRegex!6258 (ite c!883864 (regTwo!29311 (h!66054 (exprs!4283 ctx!74))) (regOne!29310 (h!66054 (exprs!4283 ctx!74))))))))

(declare-fun b!5135087 () Bool)

(declare-fun e!3202922 () Bool)

(declare-fun call!357670 () Bool)

(assert (=> b!5135087 (= e!3202922 call!357670)))

(declare-fun b!5135088 () Bool)

(declare-fun e!3202921 () Bool)

(assert (=> b!5135088 (= e!3202921 call!357669)))

(declare-fun b!5135089 () Bool)

(declare-fun e!3202923 () Bool)

(declare-fun e!3202919 () Bool)

(assert (=> b!5135089 (= e!3202923 e!3202919)))

(declare-fun res!2187271 () Bool)

(assert (=> b!5135089 (= res!2187271 (not (nullable!4772 (reg!14728 (h!66054 (exprs!4283 ctx!74))))))))

(assert (=> b!5135089 (=> (not res!2187271) (not e!3202919))))

(declare-fun b!5135090 () Bool)

(assert (=> b!5135090 (= e!3202923 e!3202918)))

(assert (=> b!5135090 (= c!883864 ((_ is Union!14399) (h!66054 (exprs!4283 ctx!74))))))

(declare-fun b!5135091 () Bool)

(declare-fun res!2187272 () Bool)

(assert (=> b!5135091 (=> (not res!2187272) (not e!3202921))))

(assert (=> b!5135091 (= res!2187272 call!357670)))

(assert (=> b!5135091 (= e!3202918 e!3202921)))

(declare-fun bm!357665 () Bool)

(assert (=> bm!357665 (= call!357670 call!357668)))

(declare-fun b!5135092 () Bool)

(assert (=> b!5135092 (= e!3202920 e!3202922)))

(declare-fun res!2187273 () Bool)

(assert (=> b!5135092 (=> (not res!2187273) (not e!3202922))))

(assert (=> b!5135092 (= res!2187273 call!357669)))

(declare-fun b!5135093 () Bool)

(assert (=> b!5135093 (= e!3202919 call!357668)))

(declare-fun b!5135094 () Bool)

(assert (=> b!5135094 (= e!3202917 e!3202923)))

(assert (=> b!5135094 (= c!883863 ((_ is Star!14399) (h!66054 (exprs!4283 ctx!74))))))

(assert (= (and d!1661561 (not res!2187275)) b!5135094))

(assert (= (and b!5135094 c!883863) b!5135089))

(assert (= (and b!5135094 (not c!883863)) b!5135090))

(assert (= (and b!5135089 res!2187271) b!5135093))

(assert (= (and b!5135090 c!883864) b!5135091))

(assert (= (and b!5135090 (not c!883864)) b!5135086))

(assert (= (and b!5135091 res!2187272) b!5135088))

(assert (= (and b!5135086 (not res!2187274)) b!5135092))

(assert (= (and b!5135092 res!2187273) b!5135087))

(assert (= (or b!5135091 b!5135087) bm!357665))

(assert (= (or b!5135088 b!5135092) bm!357664))

(assert (= (or b!5135093 bm!357665) bm!357663))

(declare-fun m!6200680 () Bool)

(assert (=> bm!357663 m!6200680))

(declare-fun m!6200682 () Bool)

(assert (=> bm!357664 m!6200682))

(declare-fun m!6200684 () Bool)

(assert (=> b!5135089 m!6200684))

(assert (=> b!5135024 d!1661561))

(declare-fun b!5135105 () Bool)

(declare-fun e!3202931 () (InoxSet Context!7566))

(declare-fun call!357673 () (InoxSet Context!7566))

(assert (=> b!5135105 (= e!3202931 call!357673)))

(declare-fun d!1661565 () Bool)

(declare-fun c!883870 () Bool)

(declare-fun e!3202932 () Bool)

(assert (=> d!1661565 (= c!883870 e!3202932)))

(declare-fun res!2187278 () Bool)

(assert (=> d!1661565 (=> (not res!2187278) (not e!3202932))))

(assert (=> d!1661565 (= res!2187278 ((_ is Cons!59606) (exprs!4283 lt!2118929)))))

(declare-fun e!3202930 () (InoxSet Context!7566))

(assert (=> d!1661565 (= (derivationStepZipperUp!85 lt!2118929 a!1252) e!3202930)))

(declare-fun b!5135106 () Bool)

(assert (=> b!5135106 (= e!3202932 (nullable!4772 (h!66054 (exprs!4283 lt!2118929))))))

(declare-fun bm!357668 () Bool)

(declare-fun derivationStepZipperDown!108 (Regex!14399 Context!7566 C!29064) (InoxSet Context!7566))

(assert (=> bm!357668 (= call!357673 (derivationStepZipperDown!108 (h!66054 (exprs!4283 lt!2118929)) (Context!7567 (t!372757 (exprs!4283 lt!2118929))) a!1252))))

(declare-fun b!5135107 () Bool)

(assert (=> b!5135107 (= e!3202930 e!3202931)))

(declare-fun c!883869 () Bool)

(assert (=> b!5135107 (= c!883869 ((_ is Cons!59606) (exprs!4283 lt!2118929)))))

(declare-fun b!5135108 () Bool)

(assert (=> b!5135108 (= e!3202931 ((as const (Array Context!7566 Bool)) false))))

(declare-fun b!5135109 () Bool)

(assert (=> b!5135109 (= e!3202930 ((_ map or) call!357673 (derivationStepZipperUp!85 (Context!7567 (t!372757 (exprs!4283 lt!2118929))) a!1252)))))

(assert (= (and d!1661565 res!2187278) b!5135106))

(assert (= (and d!1661565 c!883870) b!5135109))

(assert (= (and d!1661565 (not c!883870)) b!5135107))

(assert (= (and b!5135107 c!883869) b!5135105))

(assert (= (and b!5135107 (not c!883869)) b!5135108))

(assert (= (or b!5135109 b!5135105) bm!357668))

(declare-fun m!6200686 () Bool)

(assert (=> b!5135106 m!6200686))

(declare-fun m!6200688 () Bool)

(assert (=> bm!357668 m!6200688))

(declare-fun m!6200690 () Bool)

(assert (=> b!5135109 m!6200690))

(assert (=> b!5135024 d!1661565))

(declare-fun d!1661567 () Bool)

(assert (=> d!1661567 (not (lostCause!1358 (h!66054 (exprs!4283 ctx!74))))))

(declare-fun lt!2118949 () Unit!150945)

(declare-fun choose!37977 (Regex!14399) Unit!150945)

(assert (=> d!1661567 (= lt!2118949 (choose!37977 (h!66054 (exprs!4283 ctx!74))))))

(assert (=> d!1661567 (validRegex!6258 (h!66054 (exprs!4283 ctx!74)))))

(assert (=> d!1661567 (= (lemmaNullableThenNotLostCause!50 (h!66054 (exprs!4283 ctx!74))) lt!2118949)))

(declare-fun bs!1199632 () Bool)

(assert (= bs!1199632 d!1661567))

(assert (=> bs!1199632 m!6200644))

(declare-fun m!6200692 () Bool)

(assert (=> bs!1199632 m!6200692))

(assert (=> bs!1199632 m!6200634))

(assert (=> b!5135024 d!1661567))

(declare-fun bs!1199638 () Bool)

(declare-fun b!5135120 () Bool)

(declare-fun d!1661569 () Bool)

(assert (= bs!1199638 (and b!5135120 d!1661569)))

(declare-fun lambda!255684 () Int)

(declare-fun lambda!255683 () Int)

(assert (=> bs!1199638 (not (= lambda!255684 lambda!255683))))

(declare-fun bs!1199639 () Bool)

(declare-fun b!5135121 () Bool)

(assert (= bs!1199639 (and b!5135121 d!1661569)))

(declare-fun lambda!255685 () Int)

(assert (=> bs!1199639 (not (= lambda!255685 lambda!255683))))

(declare-fun bs!1199640 () Bool)

(assert (= bs!1199640 (and b!5135121 b!5135120)))

(assert (=> bs!1199640 (= lambda!255685 lambda!255684)))

(declare-fun e!3202946 () Unit!150945)

(declare-fun Unit!150949 () Unit!150945)

(assert (=> b!5135121 (= e!3202946 Unit!150949)))

(declare-datatypes ((List!59733 0))(
  ( (Nil!59609) (Cons!59609 (h!66057 Context!7566) (t!372760 List!59733)) )
))
(declare-fun lt!2118983 () List!59733)

(declare-fun call!357684 () List!59733)

(assert (=> b!5135121 (= lt!2118983 call!357684)))

(declare-fun lt!2118979 () Unit!150945)

(declare-fun lemmaForallThenNotExists!377 (List!59733 Int) Unit!150945)

(assert (=> b!5135121 (= lt!2118979 (lemmaForallThenNotExists!377 lt!2118983 lambda!255683))))

(declare-fun call!357685 () Bool)

(assert (=> b!5135121 (not call!357685)))

(declare-fun lt!2118986 () Unit!150945)

(assert (=> b!5135121 (= lt!2118986 lt!2118979)))

(declare-fun Unit!150950 () Unit!150945)

(assert (=> b!5135120 (= e!3202946 Unit!150950)))

(declare-fun lt!2118984 () List!59733)

(assert (=> b!5135120 (= lt!2118984 call!357684)))

(declare-fun lt!2118980 () Unit!150945)

(declare-fun lemmaNotForallThenExists!410 (List!59733 Int) Unit!150945)

(assert (=> b!5135120 (= lt!2118980 (lemmaNotForallThenExists!410 lt!2118984 lambda!255683))))

(assert (=> b!5135120 call!357685))

(declare-fun lt!2118985 () Unit!150945)

(assert (=> b!5135120 (= lt!2118985 lt!2118980)))

(declare-fun bm!357679 () Bool)

(declare-fun toList!8362 ((InoxSet Context!7566)) List!59733)

(assert (=> bm!357679 (= call!357684 (toList!8362 (derivationStepZipperUp!85 lt!2118929 a!1252)))))

(declare-fun bm!357680 () Bool)

(declare-fun c!883892 () Bool)

(declare-fun exists!1729 (List!59733 Int) Bool)

(assert (=> bm!357680 (= call!357685 (exists!1729 (ite c!883892 lt!2118984 lt!2118983) (ite c!883892 lambda!255684 lambda!255685)))))

(declare-fun lt!2118982 () Bool)

(declare-datatypes ((List!59734 0))(
  ( (Nil!59610) (Cons!59610 (h!66058 C!29064) (t!372761 List!59734)) )
))
(declare-datatypes ((Option!14759 0))(
  ( (None!14758) (Some!14758 (v!50787 List!59734)) )
))
(declare-fun isEmpty!32020 (Option!14759) Bool)

(declare-fun getLanguageWitness!900 ((InoxSet Context!7566)) Option!14759)

(assert (=> d!1661569 (= lt!2118982 (isEmpty!32020 (getLanguageWitness!900 (derivationStepZipperUp!85 lt!2118929 a!1252))))))

(declare-fun forall!13853 ((InoxSet Context!7566) Int) Bool)

(assert (=> d!1661569 (= lt!2118982 (forall!13853 (derivationStepZipperUp!85 lt!2118929 a!1252) lambda!255683))))

(declare-fun lt!2118981 () Unit!150945)

(assert (=> d!1661569 (= lt!2118981 e!3202946)))

(assert (=> d!1661569 (= c!883892 (not (forall!13853 (derivationStepZipperUp!85 lt!2118929 a!1252) lambda!255683)))))

(assert (=> d!1661569 (= (lostCauseZipper!1227 (derivationStepZipperUp!85 lt!2118929 a!1252)) lt!2118982)))

(assert (= (and d!1661569 c!883892) b!5135120))

(assert (= (and d!1661569 (not c!883892)) b!5135121))

(assert (= (or b!5135120 b!5135121) bm!357679))

(assert (= (or b!5135120 b!5135121) bm!357680))

(assert (=> bm!357679 m!6200636))

(declare-fun m!6200714 () Bool)

(assert (=> bm!357679 m!6200714))

(declare-fun m!6200716 () Bool)

(assert (=> b!5135120 m!6200716))

(declare-fun m!6200718 () Bool)

(assert (=> b!5135121 m!6200718))

(assert (=> d!1661569 m!6200636))

(declare-fun m!6200720 () Bool)

(assert (=> d!1661569 m!6200720))

(assert (=> d!1661569 m!6200720))

(declare-fun m!6200722 () Bool)

(assert (=> d!1661569 m!6200722))

(assert (=> d!1661569 m!6200636))

(declare-fun m!6200724 () Bool)

(assert (=> d!1661569 m!6200724))

(assert (=> d!1661569 m!6200636))

(assert (=> d!1661569 m!6200724))

(declare-fun m!6200726 () Bool)

(assert (=> bm!357680 m!6200726))

(assert (=> b!5135024 d!1661569))

(declare-fun d!1661575 () Bool)

(assert (=> d!1661575 (lostCauseZipper!1227 (derivationStepZipperUp!85 lt!2118929 a!1252))))

(declare-fun lt!2118990 () Unit!150945)

(declare-fun choose!37980 (Context!7566 C!29064) Unit!150945)

(assert (=> d!1661575 (= lt!2118990 (choose!37980 lt!2118929 a!1252))))

(assert (=> d!1661575 (lostCause!1359 lt!2118929)))

(assert (=> d!1661575 (= (lemmaLostCauseFixPointDerivUp!18 lt!2118929 a!1252) lt!2118990)))

(declare-fun bs!1199641 () Bool)

(assert (= bs!1199641 d!1661575))

(assert (=> bs!1199641 m!6200636))

(assert (=> bs!1199641 m!6200636))

(assert (=> bs!1199641 m!6200638))

(declare-fun m!6200728 () Bool)

(assert (=> bs!1199641 m!6200728))

(declare-fun m!6200730 () Bool)

(assert (=> bs!1199641 m!6200730))

(assert (=> b!5135024 d!1661575))

(declare-fun b!5135131 () Bool)

(declare-fun e!3202952 () Bool)

(declare-fun tp!1432330 () Bool)

(declare-fun tp!1432331 () Bool)

(assert (=> b!5135131 (= e!3202952 (and tp!1432330 tp!1432331))))

(assert (=> b!5135025 (= tp!1432319 e!3202952)))

(assert (= (and b!5135025 ((_ is Cons!59606) (exprs!4283 ctx!74))) b!5135131))

(check-sat (not d!1661557) (not bm!357680) tp_is_empty!37951 (not b!5135121) (not d!1661569) (not bm!357668) (not b!5135106) (not d!1661567) (not bm!357664) (not b!5135131) (not d!1661547) (not d!1661575) (not d!1661543) (not b!5135120) (not b!5135089) (not d!1661555) (not bm!357663) (not b!5135109) (not bm!357679))
(check-sat)
