; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543626 () Bool)

(assert start!543626)

(declare-fun b!5135717 () Bool)

(declare-fun e!3203347 () Bool)

(declare-fun tp!1432404 () Bool)

(assert (=> b!5135717 (= e!3203347 tp!1432404)))

(declare-fun b!5135716 () Bool)

(declare-fun e!3203348 () Bool)

(declare-datatypes ((C!29074 0))(
  ( (C!29075 (val!24189 Int)) )
))
(declare-datatypes ((Regex!14404 0))(
  ( (ElementMatch!14404 (c!884089 C!29074)) (Concat!23249 (regOne!29320 Regex!14404) (regTwo!29320 Regex!14404)) (EmptyExpr!14404) (Star!14404 (reg!14733 Regex!14404)) (EmptyLang!14404) (Union!14404 (regOne!29321 Regex!14404) (regTwo!29321 Regex!14404)) )
))
(declare-datatypes ((List!59747 0))(
  ( (Nil!59623) (Cons!59623 (h!66071 Regex!14404) (t!372776 List!59747)) )
))
(declare-datatypes ((Context!7576 0))(
  ( (Context!7577 (exprs!4288 List!59747)) )
))
(declare-fun lt!2119235 () (Set Context!7576))

(declare-fun lambda!255830 () Int)

(declare-fun forall!13864 ((Set Context!7576) Int) Bool)

(assert (=> b!5135716 (= e!3203348 (not (forall!13864 lt!2119235 lambda!255830)))))

(declare-fun lostCauseZipper!1232 ((Set Context!7576)) Bool)

(assert (=> b!5135716 (lostCauseZipper!1232 lt!2119235)))

(declare-fun a!1252 () C!29074)

(declare-fun lt!2119231 () Context!7576)

(declare-fun ctx!74 () Context!7576)

(declare-fun derivationStepZipperDown!113 (Regex!14404 Context!7576 C!29074) (Set Context!7576))

(assert (=> b!5135716 (= lt!2119235 (derivationStepZipperDown!113 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252))))

(declare-datatypes ((Unit!150971 0))(
  ( (Unit!150972) )
))
(declare-fun lt!2119234 () Unit!150971)

(declare-fun lemmaLostCauseFixPointDerivDown!7 (Regex!14404 Context!7576 C!29074) Unit!150971)

(assert (=> b!5135716 (= lt!2119234 (lemmaLostCauseFixPointDerivDown!7 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252))))

(declare-fun derivationStepZipperUp!90 (Context!7576 C!29074) (Set Context!7576))

(assert (=> b!5135716 (lostCauseZipper!1232 (derivationStepZipperUp!90 lt!2119231 a!1252))))

(declare-fun lt!2119232 () Unit!150971)

(declare-fun lemmaLostCauseFixPointDerivUp!23 (Context!7576 C!29074) Unit!150971)

(assert (=> b!5135716 (= lt!2119232 (lemmaLostCauseFixPointDerivUp!23 lt!2119231 a!1252))))

(assert (=> b!5135716 (= lt!2119231 (Context!7577 (t!372776 (exprs!4288 ctx!74))))))

(declare-fun lostCause!1368 (Regex!14404) Bool)

(assert (=> b!5135716 (not (lostCause!1368 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun lt!2119233 () Unit!150971)

(declare-fun lemmaNullableThenNotLostCause!55 (Regex!14404) Unit!150971)

(assert (=> b!5135716 (= lt!2119233 (lemmaNullableThenNotLostCause!55 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun res!2187497 () Bool)

(assert (=> start!543626 (=> (not res!2187497) (not e!3203348))))

(declare-fun lostCause!1369 (Context!7576) Bool)

(assert (=> start!543626 (= res!2187497 (lostCause!1369 ctx!74))))

(assert (=> start!543626 e!3203348))

(declare-fun inv!79192 (Context!7576) Bool)

(assert (=> start!543626 (and (inv!79192 ctx!74) e!3203347)))

(declare-fun tp_is_empty!37961 () Bool)

(assert (=> start!543626 tp_is_empty!37961))

(declare-fun b!5135715 () Bool)

(declare-fun res!2187498 () Bool)

(assert (=> b!5135715 (=> (not res!2187498) (not e!3203348))))

(declare-fun nullable!4777 (Regex!14404) Bool)

(assert (=> b!5135715 (= res!2187498 (nullable!4777 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun b!5135714 () Bool)

(declare-fun res!2187499 () Bool)

(assert (=> b!5135714 (=> (not res!2187499) (not e!3203348))))

(assert (=> b!5135714 (= res!2187499 (is-Cons!59623 (exprs!4288 ctx!74)))))

(assert (= (and start!543626 res!2187497) b!5135714))

(assert (= (and b!5135714 res!2187499) b!5135715))

(assert (= (and b!5135715 res!2187498) b!5135716))

(assert (= start!543626 b!5135717))

(declare-fun m!6201300 () Bool)

(assert (=> b!5135716 m!6201300))

(declare-fun m!6201302 () Bool)

(assert (=> b!5135716 m!6201302))

(declare-fun m!6201304 () Bool)

(assert (=> b!5135716 m!6201304))

(declare-fun m!6201306 () Bool)

(assert (=> b!5135716 m!6201306))

(declare-fun m!6201308 () Bool)

(assert (=> b!5135716 m!6201308))

(declare-fun m!6201310 () Bool)

(assert (=> b!5135716 m!6201310))

(declare-fun m!6201312 () Bool)

(assert (=> b!5135716 m!6201312))

(declare-fun m!6201314 () Bool)

(assert (=> b!5135716 m!6201314))

(assert (=> b!5135716 m!6201310))

(declare-fun m!6201316 () Bool)

(assert (=> b!5135716 m!6201316))

(declare-fun m!6201318 () Bool)

(assert (=> start!543626 m!6201318))

(declare-fun m!6201320 () Bool)

(assert (=> start!543626 m!6201320))

(declare-fun m!6201322 () Bool)

(assert (=> b!5135715 m!6201322))

(push 1)

(assert (not start!543626))

(assert (not b!5135717))

(assert (not b!5135715))

(assert tp_is_empty!37961)

(assert (not b!5135716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661800 () Bool)

(declare-fun nullableFct!1300 (Regex!14404) Bool)

(assert (=> d!1661800 (= (nullable!4777 (h!66071 (exprs!4288 ctx!74))) (nullableFct!1300 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun bs!1199926 () Bool)

(assert (= bs!1199926 d!1661800))

(declare-fun m!6201348 () Bool)

(assert (=> bs!1199926 m!6201348))

(assert (=> b!5135715 d!1661800))

(declare-fun d!1661802 () Bool)

(declare-fun lambda!255836 () Int)

(declare-fun exists!1740 (List!59747 Int) Bool)

(assert (=> d!1661802 (= (lostCause!1369 ctx!74) (exists!1740 (exprs!4288 ctx!74) lambda!255836))))

(declare-fun bs!1199927 () Bool)

(assert (= bs!1199927 d!1661802))

(declare-fun m!6201350 () Bool)

(assert (=> bs!1199927 m!6201350))

(assert (=> start!543626 d!1661802))

(declare-fun bs!1199928 () Bool)

(declare-fun d!1661804 () Bool)

(assert (= bs!1199928 (and d!1661804 d!1661802)))

(declare-fun lambda!255839 () Int)

(assert (=> bs!1199928 (not (= lambda!255839 lambda!255836))))

(declare-fun forall!13866 (List!59747 Int) Bool)

(assert (=> d!1661804 (= (inv!79192 ctx!74) (forall!13866 (exprs!4288 ctx!74) lambda!255839))))

(declare-fun bs!1199929 () Bool)

(assert (= bs!1199929 d!1661804))

(declare-fun m!6201352 () Bool)

(assert (=> bs!1199929 m!6201352))

(assert (=> start!543626 d!1661804))

(declare-fun d!1661806 () Bool)

(declare-fun lostCauseFct!331 (Regex!14404) Bool)

(assert (=> d!1661806 (= (lostCause!1368 (h!66071 (exprs!4288 ctx!74))) (lostCauseFct!331 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun bs!1199930 () Bool)

(assert (= bs!1199930 d!1661806))

(declare-fun m!6201354 () Bool)

(assert (=> bs!1199930 m!6201354))

(assert (=> b!5135716 d!1661806))

(declare-fun d!1661808 () Bool)

(assert (=> d!1661808 (lostCauseZipper!1232 (derivationStepZipperUp!90 lt!2119231 a!1252))))

(declare-fun lt!2119255 () Unit!150971)

(declare-fun choose!37999 (Context!7576 C!29074) Unit!150971)

(assert (=> d!1661808 (= lt!2119255 (choose!37999 lt!2119231 a!1252))))

(assert (=> d!1661808 (lostCause!1369 lt!2119231)))

(assert (=> d!1661808 (= (lemmaLostCauseFixPointDerivUp!23 lt!2119231 a!1252) lt!2119255)))

(declare-fun bs!1199931 () Bool)

(assert (= bs!1199931 d!1661808))

(assert (=> bs!1199931 m!6201310))

(assert (=> bs!1199931 m!6201310))

(assert (=> bs!1199931 m!6201316))

(declare-fun m!6201356 () Bool)

(assert (=> bs!1199931 m!6201356))

(declare-fun m!6201358 () Bool)

(assert (=> bs!1199931 m!6201358))

(assert (=> b!5135716 d!1661808))

(declare-fun b!5135740 () Bool)

(declare-fun e!3203362 () (Set Context!7576))

(assert (=> b!5135740 (= e!3203362 (as set.empty (Set Context!7576)))))

(declare-fun b!5135741 () Bool)

(declare-fun call!357862 () (Set Context!7576))

(assert (=> b!5135741 (= e!3203362 call!357862)))

(declare-fun bm!357857 () Bool)

(assert (=> bm!357857 (= call!357862 (derivationStepZipperDown!113 (h!66071 (exprs!4288 lt!2119231)) (Context!7577 (t!372776 (exprs!4288 lt!2119231))) a!1252))))

(declare-fun e!3203361 () (Set Context!7576))

(declare-fun b!5135742 () Bool)

(assert (=> b!5135742 (= e!3203361 (set.union call!357862 (derivationStepZipperUp!90 (Context!7577 (t!372776 (exprs!4288 lt!2119231))) a!1252)))))

(declare-fun b!5135743 () Bool)

(declare-fun e!3203363 () Bool)

(assert (=> b!5135743 (= e!3203363 (nullable!4777 (h!66071 (exprs!4288 lt!2119231))))))

(declare-fun d!1661812 () Bool)

(declare-fun c!884098 () Bool)

(assert (=> d!1661812 (= c!884098 e!3203363)))

(declare-fun res!2187511 () Bool)

(assert (=> d!1661812 (=> (not res!2187511) (not e!3203363))))

(assert (=> d!1661812 (= res!2187511 (is-Cons!59623 (exprs!4288 lt!2119231)))))

(assert (=> d!1661812 (= (derivationStepZipperUp!90 lt!2119231 a!1252) e!3203361)))

(declare-fun b!5135744 () Bool)

(assert (=> b!5135744 (= e!3203361 e!3203362)))

(declare-fun c!884097 () Bool)

(assert (=> b!5135744 (= c!884097 (is-Cons!59623 (exprs!4288 lt!2119231)))))

(assert (= (and d!1661812 res!2187511) b!5135743))

(assert (= (and d!1661812 c!884098) b!5135742))

(assert (= (and d!1661812 (not c!884098)) b!5135744))

(assert (= (and b!5135744 c!884097) b!5135741))

(assert (= (and b!5135744 (not c!884097)) b!5135740))

(assert (= (or b!5135742 b!5135741) bm!357857))

(declare-fun m!6201366 () Bool)

(assert (=> bm!357857 m!6201366))

(declare-fun m!6201368 () Bool)

(assert (=> b!5135742 m!6201368))

(declare-fun m!6201370 () Bool)

(assert (=> b!5135743 m!6201370))

(assert (=> b!5135716 d!1661812))

(declare-fun d!1661816 () Bool)

(assert (=> d!1661816 (lostCauseZipper!1232 (derivationStepZipperDown!113 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252))))

(declare-fun lt!2119259 () Unit!150971)

(declare-fun choose!38000 (Regex!14404 Context!7576 C!29074) Unit!150971)

(assert (=> d!1661816 (= lt!2119259 (choose!38000 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252))))

(declare-fun validRegex!6263 (Regex!14404) Bool)

(assert (=> d!1661816 (validRegex!6263 (h!66071 (exprs!4288 ctx!74)))))

(assert (=> d!1661816 (= (lemmaLostCauseFixPointDerivDown!7 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252) lt!2119259)))

(declare-fun bs!1199933 () Bool)

(assert (= bs!1199933 d!1661816))

(assert (=> bs!1199933 m!6201314))

(assert (=> bs!1199933 m!6201314))

(declare-fun m!6201372 () Bool)

(assert (=> bs!1199933 m!6201372))

(declare-fun m!6201374 () Bool)

(assert (=> bs!1199933 m!6201374))

(declare-fun m!6201376 () Bool)

(assert (=> bs!1199933 m!6201376))

(assert (=> b!5135716 d!1661816))

(declare-fun b!5135789 () Bool)

(declare-fun e!3203389 () (Set Context!7576))

(declare-fun e!3203392 () (Set Context!7576))

(assert (=> b!5135789 (= e!3203389 e!3203392)))

(declare-fun c!884120 () Bool)

(assert (=> b!5135789 (= c!884120 (is-Union!14404 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun b!5135791 () Bool)

(declare-fun c!884121 () Bool)

(assert (=> b!5135791 (= c!884121 (is-Star!14404 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun e!3203388 () (Set Context!7576))

(declare-fun e!3203391 () (Set Context!7576))

(assert (=> b!5135791 (= e!3203388 e!3203391)))

(declare-fun bm!357882 () Bool)

(declare-fun call!357887 () List!59747)

(declare-fun call!357890 () List!59747)

(assert (=> bm!357882 (= call!357887 call!357890)))

(declare-fun b!5135792 () Bool)

(declare-fun e!3203393 () (Set Context!7576))

(declare-fun call!357889 () (Set Context!7576))

(declare-fun call!357888 () (Set Context!7576))

(assert (=> b!5135792 (= e!3203393 (set.union call!357889 call!357888))))

(declare-fun b!5135793 () Bool)

(declare-fun call!357891 () (Set Context!7576))

(assert (=> b!5135793 (= e!3203388 call!357891)))

(declare-fun b!5135794 () Bool)

(assert (=> b!5135794 (= e!3203391 (as set.empty (Set Context!7576)))))

(declare-fun b!5135795 () Bool)

(declare-fun c!884119 () Bool)

(declare-fun e!3203390 () Bool)

(assert (=> b!5135795 (= c!884119 e!3203390)))

(declare-fun res!2187516 () Bool)

(assert (=> b!5135795 (=> (not res!2187516) (not e!3203390))))

(assert (=> b!5135795 (= res!2187516 (is-Concat!23249 (h!66071 (exprs!4288 ctx!74))))))

(assert (=> b!5135795 (= e!3203392 e!3203393)))

(declare-fun c!884123 () Bool)

(declare-fun bm!357883 () Bool)

(declare-fun $colon$colon!1164 (List!59747 Regex!14404) List!59747)

(assert (=> bm!357883 (= call!357890 ($colon$colon!1164 (exprs!4288 lt!2119231) (ite (or c!884119 c!884123) (regTwo!29320 (h!66071 (exprs!4288 ctx!74))) (h!66071 (exprs!4288 ctx!74)))))))

(declare-fun b!5135796 () Bool)

(assert (=> b!5135796 (= e!3203389 (set.insert lt!2119231 (as set.empty (Set Context!7576))))))

(declare-fun b!5135797 () Bool)

(assert (=> b!5135797 (= e!3203390 (nullable!4777 (regOne!29320 (h!66071 (exprs!4288 ctx!74)))))))

(declare-fun bm!357884 () Bool)

(assert (=> bm!357884 (= call!357889 (derivationStepZipperDown!113 (ite c!884120 (regTwo!29321 (h!66071 (exprs!4288 ctx!74))) (regOne!29320 (h!66071 (exprs!4288 ctx!74)))) (ite c!884120 lt!2119231 (Context!7577 call!357890)) a!1252))))

(declare-fun b!5135798 () Bool)

(assert (=> b!5135798 (= e!3203393 e!3203388)))

(assert (=> b!5135798 (= c!884123 (is-Concat!23249 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun bm!357885 () Bool)

(declare-fun call!357892 () (Set Context!7576))

(assert (=> bm!357885 (= call!357888 call!357892)))

(declare-fun bm!357886 () Bool)

(assert (=> bm!357886 (= call!357891 call!357888)))

(declare-fun b!5135790 () Bool)

(assert (=> b!5135790 (= e!3203391 call!357891)))

(declare-fun d!1661818 () Bool)

(declare-fun c!884122 () Bool)

(assert (=> d!1661818 (= c!884122 (and (is-ElementMatch!14404 (h!66071 (exprs!4288 ctx!74))) (= (c!884089 (h!66071 (exprs!4288 ctx!74))) a!1252)))))

(assert (=> d!1661818 (= (derivationStepZipperDown!113 (h!66071 (exprs!4288 ctx!74)) lt!2119231 a!1252) e!3203389)))

(declare-fun b!5135799 () Bool)

(assert (=> b!5135799 (= e!3203392 (set.union call!357892 call!357889))))

(declare-fun bm!357887 () Bool)

(assert (=> bm!357887 (= call!357892 (derivationStepZipperDown!113 (ite c!884120 (regOne!29321 (h!66071 (exprs!4288 ctx!74))) (ite c!884119 (regTwo!29320 (h!66071 (exprs!4288 ctx!74))) (ite c!884123 (regOne!29320 (h!66071 (exprs!4288 ctx!74))) (reg!14733 (h!66071 (exprs!4288 ctx!74)))))) (ite (or c!884120 c!884119) lt!2119231 (Context!7577 call!357887)) a!1252))))

(assert (= (and d!1661818 c!884122) b!5135796))

(assert (= (and d!1661818 (not c!884122)) b!5135789))

(assert (= (and b!5135789 c!884120) b!5135799))

(assert (= (and b!5135789 (not c!884120)) b!5135795))

(assert (= (and b!5135795 res!2187516) b!5135797))

(assert (= (and b!5135795 c!884119) b!5135792))

(assert (= (and b!5135795 (not c!884119)) b!5135798))

(assert (= (and b!5135798 c!884123) b!5135793))

(assert (= (and b!5135798 (not c!884123)) b!5135791))

(assert (= (and b!5135791 c!884121) b!5135790))

(assert (= (and b!5135791 (not c!884121)) b!5135794))

(assert (= (or b!5135793 b!5135790) bm!357882))

(assert (= (or b!5135793 b!5135790) bm!357886))

(assert (= (or b!5135792 bm!357882) bm!357883))

(assert (= (or b!5135792 bm!357886) bm!357885))

(assert (= (or b!5135799 bm!357885) bm!357887))

(assert (= (or b!5135799 b!5135792) bm!357884))

(declare-fun m!6201378 () Bool)

(assert (=> bm!357887 m!6201378))

(declare-fun m!6201380 () Bool)

(assert (=> b!5135796 m!6201380))

(declare-fun m!6201382 () Bool)

(assert (=> bm!357884 m!6201382))

(declare-fun m!6201384 () Bool)

(assert (=> b!5135797 m!6201384))

(declare-fun m!6201386 () Bool)

(assert (=> bm!357883 m!6201386))

(assert (=> b!5135716 d!1661818))

(declare-fun d!1661820 () Bool)

(assert (=> d!1661820 (not (lostCause!1368 (h!66071 (exprs!4288 ctx!74))))))

(declare-fun lt!2119262 () Unit!150971)

(declare-fun choose!38001 (Regex!14404) Unit!150971)

(assert (=> d!1661820 (= lt!2119262 (choose!38001 (h!66071 (exprs!4288 ctx!74))))))

(assert (=> d!1661820 (validRegex!6263 (h!66071 (exprs!4288 ctx!74)))))

(assert (=> d!1661820 (= (lemmaNullableThenNotLostCause!55 (h!66071 (exprs!4288 ctx!74))) lt!2119262)))

(declare-fun bs!1199934 () Bool)

(assert (= bs!1199934 d!1661820))

(assert (=> bs!1199934 m!6201312))

(declare-fun m!6201388 () Bool)

(assert (=> bs!1199934 m!6201388))

(assert (=> bs!1199934 m!6201376))

(assert (=> b!5135716 d!1661820))

(declare-fun bs!1199935 () Bool)

(declare-fun d!1661822 () Bool)

(assert (= bs!1199935 (and d!1661822 b!5135716)))

(declare-fun lambda!255852 () Int)

(assert (=> bs!1199935 (= lambda!255852 lambda!255830)))

(declare-fun bs!1199936 () Bool)

(declare-fun b!5135815 () Bool)

(assert (= bs!1199936 (and b!5135815 b!5135716)))

(declare-fun lambda!255853 () Int)

(assert (=> bs!1199936 (not (= lambda!255853 lambda!255830))))

(declare-fun bs!1199937 () Bool)

(assert (= bs!1199937 (and b!5135815 d!1661822)))

(assert (=> bs!1199937 (not (= lambda!255853 lambda!255852))))

(declare-fun bs!1199938 () Bool)

(declare-fun b!5135816 () Bool)

(assert (= bs!1199938 (and b!5135816 b!5135716)))

(declare-fun lambda!255854 () Int)

(assert (=> bs!1199938 (not (= lambda!255854 lambda!255830))))

(declare-fun bs!1199939 () Bool)

(assert (= bs!1199939 (and b!5135816 d!1661822)))

(assert (=> bs!1199939 (not (= lambda!255854 lambda!255852))))

(declare-fun bs!1199940 () Bool)

(assert (= bs!1199940 (and b!5135816 b!5135815)))

(assert (=> bs!1199940 (= lambda!255854 lambda!255853)))

(declare-fun bm!357898 () Bool)

(declare-datatypes ((List!59749 0))(
  ( (Nil!59625) (Cons!59625 (h!66073 Context!7576) (t!372778 List!59749)) )
))
(declare-fun call!357904 () List!59749)

(declare-fun toList!8367 ((Set Context!7576)) List!59749)

(assert (=> bm!357898 (= call!357904 (toList!8367 (derivationStepZipperUp!90 lt!2119231 a!1252)))))

(declare-fun lt!2119282 () Bool)

(declare-datatypes ((List!59750 0))(
  ( (Nil!59626) (Cons!59626 (h!66074 C!29074) (t!372779 List!59750)) )
))
(declare-datatypes ((Option!14764 0))(
  ( (None!14763) (Some!14763 (v!50792 List!59750)) )
))
(declare-fun isEmpty!32025 (Option!14764) Bool)

(declare-fun getLanguageWitness!909 ((Set Context!7576)) Option!14764)

(assert (=> d!1661822 (= lt!2119282 (isEmpty!32025 (getLanguageWitness!909 (derivationStepZipperUp!90 lt!2119231 a!1252))))))

(assert (=> d!1661822 (= lt!2119282 (forall!13864 (derivationStepZipperUp!90 lt!2119231 a!1252) lambda!255852))))

(declare-fun lt!2119279 () Unit!150971)

(declare-fun e!3203406 () Unit!150971)

(assert (=> d!1661822 (= lt!2119279 e!3203406)))

(declare-fun c!884139 () Bool)

(assert (=> d!1661822 (= c!884139 (not (forall!13864 (derivationStepZipperUp!90 lt!2119231 a!1252) lambda!255852)))))

(assert (=> d!1661822 (= (lostCauseZipper!1232 (derivationStepZipperUp!90 lt!2119231 a!1252)) lt!2119282)))

(declare-fun Unit!150975 () Unit!150971)

(assert (=> b!5135815 (= e!3203406 Unit!150975)))

(declare-fun lt!2119284 () List!59749)

(assert (=> b!5135815 (= lt!2119284 call!357904)))

(declare-fun lt!2119281 () Unit!150971)

(declare-fun lemmaNotForallThenExists!415 (List!59749 Int) Unit!150971)

(assert (=> b!5135815 (= lt!2119281 (lemmaNotForallThenExists!415 lt!2119284 lambda!255852))))

(declare-fun call!357903 () Bool)

(assert (=> b!5135815 call!357903))

(declare-fun lt!2119280 () Unit!150971)

(assert (=> b!5135815 (= lt!2119280 lt!2119281)))

(declare-fun bm!357899 () Bool)

(declare-fun lt!2119283 () List!59749)

(declare-fun exists!1741 (List!59749 Int) Bool)

(assert (=> bm!357899 (= call!357903 (exists!1741 (ite c!884139 lt!2119284 lt!2119283) (ite c!884139 lambda!255853 lambda!255854)))))

(declare-fun Unit!150976 () Unit!150971)

(assert (=> b!5135816 (= e!3203406 Unit!150976)))

(assert (=> b!5135816 (= lt!2119283 call!357904)))

(declare-fun lt!2119285 () Unit!150971)

(declare-fun lemmaForallThenNotExists!382 (List!59749 Int) Unit!150971)

(assert (=> b!5135816 (= lt!2119285 (lemmaForallThenNotExists!382 lt!2119283 lambda!255852))))

(assert (=> b!5135816 (not call!357903)))

(declare-fun lt!2119286 () Unit!150971)

(assert (=> b!5135816 (= lt!2119286 lt!2119285)))

(assert (= (and d!1661822 c!884139) b!5135815))

(assert (= (and d!1661822 (not c!884139)) b!5135816))

(assert (= (or b!5135815 b!5135816) bm!357898))

(assert (= (or b!5135815 b!5135816) bm!357899))

(declare-fun m!6201400 () Bool)

(assert (=> b!5135816 m!6201400))

(assert (=> bm!357898 m!6201310))

(declare-fun m!6201402 () Bool)

(assert (=> bm!357898 m!6201402))

(assert (=> d!1661822 m!6201310))

(declare-fun m!6201404 () Bool)

(assert (=> d!1661822 m!6201404))

(assert (=> d!1661822 m!6201404))

(declare-fun m!6201406 () Bool)

(assert (=> d!1661822 m!6201406))

(assert (=> d!1661822 m!6201310))

(declare-fun m!6201408 () Bool)

(assert (=> d!1661822 m!6201408))

(assert (=> d!1661822 m!6201310))

(assert (=> d!1661822 m!6201408))

(declare-fun m!6201410 () Bool)

(assert (=> bm!357899 m!6201410))

(declare-fun m!6201412 () Bool)

(assert (=> b!5135815 m!6201412))

(assert (=> b!5135716 d!1661822))

(declare-fun bs!1199941 () Bool)

(declare-fun d!1661826 () Bool)

(assert (= bs!1199941 (and d!1661826 b!5135716)))

(declare-fun lambda!255855 () Int)

(assert (=> bs!1199941 (= lambda!255855 lambda!255830)))

(declare-fun bs!1199942 () Bool)

(assert (= bs!1199942 (and d!1661826 d!1661822)))

(assert (=> bs!1199942 (= lambda!255855 lambda!255852)))

(declare-fun bs!1199943 () Bool)

(assert (= bs!1199943 (and d!1661826 b!5135815)))

(assert (=> bs!1199943 (not (= lambda!255855 lambda!255853))))

(declare-fun bs!1199944 () Bool)

(assert (= bs!1199944 (and d!1661826 b!5135816)))

(assert (=> bs!1199944 (not (= lambda!255855 lambda!255854))))

(declare-fun bs!1199946 () Bool)

(declare-fun b!5135817 () Bool)

(assert (= bs!1199946 (and b!5135817 b!5135716)))

(declare-fun lambda!255856 () Int)

(assert (=> bs!1199946 (not (= lambda!255856 lambda!255830))))

(declare-fun bs!1199947 () Bool)

(assert (= bs!1199947 (and b!5135817 d!1661826)))

(assert (=> bs!1199947 (not (= lambda!255856 lambda!255855))))

(declare-fun bs!1199948 () Bool)

(assert (= bs!1199948 (and b!5135817 d!1661822)))

(assert (=> bs!1199948 (not (= lambda!255856 lambda!255852))))

(declare-fun bs!1199949 () Bool)

(assert (= bs!1199949 (and b!5135817 b!5135815)))

(assert (=> bs!1199949 (= lambda!255856 lambda!255853)))

(declare-fun bs!1199950 () Bool)

(assert (= bs!1199950 (and b!5135817 b!5135816)))

(assert (=> bs!1199950 (= lambda!255856 lambda!255854)))

(declare-fun bs!1199951 () Bool)

(declare-fun b!5135818 () Bool)

(assert (= bs!1199951 (and b!5135818 b!5135716)))

(declare-fun lambda!255857 () Int)

(assert (=> bs!1199951 (not (= lambda!255857 lambda!255830))))

(declare-fun bs!1199952 () Bool)

(assert (= bs!1199952 (and b!5135818 d!1661826)))

(assert (=> bs!1199952 (not (= lambda!255857 lambda!255855))))

(declare-fun bs!1199953 () Bool)

(assert (= bs!1199953 (and b!5135818 d!1661822)))

(assert (=> bs!1199953 (not (= lambda!255857 lambda!255852))))

(declare-fun bs!1199954 () Bool)

(assert (= bs!1199954 (and b!5135818 b!5135815)))

(assert (=> bs!1199954 (= lambda!255857 lambda!255853)))

(declare-fun bs!1199955 () Bool)

(assert (= bs!1199955 (and b!5135818 b!5135816)))

(assert (=> bs!1199955 (= lambda!255857 lambda!255854)))

(declare-fun bs!1199956 () Bool)

(assert (= bs!1199956 (and b!5135818 b!5135817)))

(assert (=> bs!1199956 (= lambda!255857 lambda!255856)))

(declare-fun bm!357900 () Bool)

(declare-fun call!357906 () List!59749)

(assert (=> bm!357900 (= call!357906 (toList!8367 lt!2119235))))

(declare-fun lt!2119292 () Bool)

(assert (=> d!1661826 (= lt!2119292 (isEmpty!32025 (getLanguageWitness!909 lt!2119235)))))

(assert (=> d!1661826 (= lt!2119292 (forall!13864 lt!2119235 lambda!255855))))

(declare-fun lt!2119289 () Unit!150971)

(declare-fun e!3203407 () Unit!150971)

(assert (=> d!1661826 (= lt!2119289 e!3203407)))

(declare-fun c!884140 () Bool)

(assert (=> d!1661826 (= c!884140 (not (forall!13864 lt!2119235 lambda!255855)))))

(assert (=> d!1661826 (= (lostCauseZipper!1232 lt!2119235) lt!2119292)))

(declare-fun Unit!150977 () Unit!150971)

(assert (=> b!5135817 (= e!3203407 Unit!150977)))

(declare-fun lt!2119294 () List!59749)

(assert (=> b!5135817 (= lt!2119294 call!357906)))

(declare-fun lt!2119291 () Unit!150971)

(assert (=> b!5135817 (= lt!2119291 (lemmaNotForallThenExists!415 lt!2119294 lambda!255855))))

(declare-fun call!357905 () Bool)

(assert (=> b!5135817 call!357905))

(declare-fun lt!2119290 () Unit!150971)

(assert (=> b!5135817 (= lt!2119290 lt!2119291)))

(declare-fun bm!357901 () Bool)

(declare-fun lt!2119293 () List!59749)

(assert (=> bm!357901 (= call!357905 (exists!1741 (ite c!884140 lt!2119294 lt!2119293) (ite c!884140 lambda!255856 lambda!255857)))))

(declare-fun Unit!150978 () Unit!150971)

(assert (=> b!5135818 (= e!3203407 Unit!150978)))

(assert (=> b!5135818 (= lt!2119293 call!357906)))

(declare-fun lt!2119295 () Unit!150971)

(assert (=> b!5135818 (= lt!2119295 (lemmaForallThenNotExists!382 lt!2119293 lambda!255855))))

(assert (=> b!5135818 (not call!357905)))

(declare-fun lt!2119296 () Unit!150971)

(assert (=> b!5135818 (= lt!2119296 lt!2119295)))

(assert (= (and d!1661826 c!884140) b!5135817))

(assert (= (and d!1661826 (not c!884140)) b!5135818))

(assert (= (or b!5135817 b!5135818) bm!357900))

(assert (= (or b!5135817 b!5135818) bm!357901))

(declare-fun m!6201420 () Bool)

(assert (=> b!5135818 m!6201420))

(declare-fun m!6201422 () Bool)

(assert (=> bm!357900 m!6201422))

(declare-fun m!6201424 () Bool)

(assert (=> d!1661826 m!6201424))

(assert (=> d!1661826 m!6201424))

(declare-fun m!6201426 () Bool)

(assert (=> d!1661826 m!6201426))

(declare-fun m!6201428 () Bool)

(assert (=> d!1661826 m!6201428))

(assert (=> d!1661826 m!6201428))

(declare-fun m!6201430 () Bool)

(assert (=> bm!357901 m!6201430))

(declare-fun m!6201432 () Bool)

(assert (=> b!5135817 m!6201432))

(assert (=> b!5135716 d!1661826))

(declare-fun d!1661830 () Bool)

(declare-fun lt!2119300 () Bool)

(declare-fun forall!13867 (List!59749 Int) Bool)

(assert (=> d!1661830 (= lt!2119300 (forall!13867 (toList!8367 lt!2119235) lambda!255830))))

(declare-fun choose!38002 ((Set Context!7576) Int) Bool)

(assert (=> d!1661830 (= lt!2119300 (choose!38002 lt!2119235 lambda!255830))))

(assert (=> d!1661830 (= (forall!13864 lt!2119235 lambda!255830) lt!2119300)))

(declare-fun bs!1199957 () Bool)

(assert (= bs!1199957 d!1661830))

(assert (=> bs!1199957 m!6201422))

(assert (=> bs!1199957 m!6201422))

(declare-fun m!6201434 () Bool)

(assert (=> bs!1199957 m!6201434))

(declare-fun m!6201436 () Bool)

(assert (=> bs!1199957 m!6201436))

(assert (=> b!5135716 d!1661830))

(declare-fun b!5135823 () Bool)

(declare-fun e!3203410 () Bool)

(declare-fun tp!1432412 () Bool)

(declare-fun tp!1432413 () Bool)

(assert (=> b!5135823 (= e!3203410 (and tp!1432412 tp!1432413))))

(assert (=> b!5135717 (= tp!1432404 e!3203410)))

(assert (= (and b!5135717 (is-Cons!59623 (exprs!4288 ctx!74))) b!5135823))

(push 1)

(assert (not b!5135823))

(assert (not b!5135797))

(assert tp_is_empty!37961)

(assert (not b!5135742))

(assert (not d!1661826))

(assert (not d!1661816))

(assert (not d!1661800))

(assert (not b!5135743))

(assert (not bm!357899))

(assert (not b!5135817))

(assert (not b!5135816))

(assert (not bm!357857))

(assert (not bm!357901))

(assert (not bm!357883))

(assert (not d!1661806))

(assert (not d!1661830))

(assert (not bm!357900))

(assert (not bm!357884))

(assert (not bm!357898))

(assert (not d!1661808))

(assert (not b!5135815))

(assert (not d!1661804))

(assert (not d!1661820))

(assert (not d!1661802))

(assert (not b!5135818))

(assert (not d!1661822))

(assert (not bm!357887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

