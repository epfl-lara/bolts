; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543674 () Bool)

(assert start!543674)

(declare-fun b!5135862 () Bool)

(declare-fun e!3203437 () Bool)

(declare-datatypes ((C!29078 0))(
  ( (C!29079 (val!24191 Int)) )
))
(declare-datatypes ((Regex!14406 0))(
  ( (ElementMatch!14406 (c!884161 C!29078)) (Concat!23251 (regOne!29324 Regex!14406) (regTwo!29324 Regex!14406)) (EmptyExpr!14406) (Star!14406 (reg!14735 Regex!14406)) (EmptyLang!14406) (Union!14406 (regOne!29325 Regex!14406) (regTwo!29325 Regex!14406)) )
))
(declare-datatypes ((List!59752 0))(
  ( (Nil!59628) (Cons!59628 (h!66076 Regex!14406) (t!372781 List!59752)) )
))
(declare-datatypes ((Context!7580 0))(
  ( (Context!7581 (exprs!4290 List!59752)) )
))
(declare-fun lt!2119354 () (Set Context!7580))

(declare-fun lambda!255884 () Int)

(declare-fun forall!13869 ((Set Context!7580) Int) Bool)

(assert (=> b!5135862 (= e!3203437 (forall!13869 lt!2119354 lambda!255884))))

(declare-fun b!5135863 () Bool)

(declare-fun e!3203438 () Bool)

(assert (=> b!5135863 (= e!3203438 (not e!3203437))))

(declare-fun res!2187529 () Bool)

(assert (=> b!5135863 (=> res!2187529 e!3203437)))

(declare-fun lt!2119352 () (Set Context!7580))

(assert (=> b!5135863 (= res!2187529 (not (forall!13869 lt!2119352 lambda!255884)))))

(declare-fun lostCauseZipper!1234 ((Set Context!7580)) Bool)

(assert (=> b!5135863 (lostCauseZipper!1234 lt!2119352)))

(declare-fun a!1252 () C!29078)

(declare-fun ctx!74 () Context!7580)

(declare-fun lt!2119353 () Context!7580)

(declare-fun derivationStepZipperDown!115 (Regex!14406 Context!7580 C!29078) (Set Context!7580))

(assert (=> b!5135863 (= lt!2119352 (derivationStepZipperDown!115 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252))))

(declare-datatypes ((Unit!150979 0))(
  ( (Unit!150980) )
))
(declare-fun lt!2119351 () Unit!150979)

(declare-fun lemmaLostCauseFixPointDerivDown!9 (Regex!14406 Context!7580 C!29078) Unit!150979)

(assert (=> b!5135863 (= lt!2119351 (lemmaLostCauseFixPointDerivDown!9 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252))))

(assert (=> b!5135863 (lostCauseZipper!1234 lt!2119354)))

(declare-fun derivationStepZipperUp!92 (Context!7580 C!29078) (Set Context!7580))

(assert (=> b!5135863 (= lt!2119354 (derivationStepZipperUp!92 lt!2119353 a!1252))))

(declare-fun lt!2119356 () Unit!150979)

(declare-fun lemmaLostCauseFixPointDerivUp!25 (Context!7580 C!29078) Unit!150979)

(assert (=> b!5135863 (= lt!2119356 (lemmaLostCauseFixPointDerivUp!25 lt!2119353 a!1252))))

(assert (=> b!5135863 (= lt!2119353 (Context!7581 (t!372781 (exprs!4290 ctx!74))))))

(declare-fun lostCause!1372 (Regex!14406) Bool)

(assert (=> b!5135863 (not (lostCause!1372 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun lt!2119355 () Unit!150979)

(declare-fun lemmaNullableThenNotLostCause!57 (Regex!14406) Unit!150979)

(assert (=> b!5135863 (= lt!2119355 (lemmaNullableThenNotLostCause!57 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun b!5135865 () Bool)

(declare-fun res!2187532 () Bool)

(assert (=> b!5135865 (=> (not res!2187532) (not e!3203438))))

(assert (=> b!5135865 (= res!2187532 (is-Cons!59628 (exprs!4290 ctx!74)))))

(declare-fun b!5135866 () Bool)

(declare-fun e!3203439 () Bool)

(declare-fun tp!1432422 () Bool)

(assert (=> b!5135866 (= e!3203439 tp!1432422)))

(declare-fun res!2187531 () Bool)

(assert (=> start!543674 (=> (not res!2187531) (not e!3203438))))

(declare-fun lostCause!1373 (Context!7580) Bool)

(assert (=> start!543674 (= res!2187531 (lostCause!1373 ctx!74))))

(assert (=> start!543674 e!3203438))

(declare-fun inv!79197 (Context!7580) Bool)

(assert (=> start!543674 (and (inv!79197 ctx!74) e!3203439)))

(declare-fun tp_is_empty!37965 () Bool)

(assert (=> start!543674 tp_is_empty!37965))

(declare-fun b!5135864 () Bool)

(declare-fun res!2187530 () Bool)

(assert (=> b!5135864 (=> (not res!2187530) (not e!3203438))))

(declare-fun nullable!4779 (Regex!14406) Bool)

(assert (=> b!5135864 (= res!2187530 (nullable!4779 (h!66076 (exprs!4290 ctx!74))))))

(assert (= (and start!543674 res!2187531) b!5135865))

(assert (= (and b!5135865 res!2187532) b!5135864))

(assert (= (and b!5135864 res!2187530) b!5135863))

(assert (= (and b!5135863 (not res!2187529)) b!5135862))

(assert (= start!543674 b!5135866))

(declare-fun m!6201484 () Bool)

(assert (=> b!5135862 m!6201484))

(declare-fun m!6201486 () Bool)

(assert (=> b!5135863 m!6201486))

(declare-fun m!6201488 () Bool)

(assert (=> b!5135863 m!6201488))

(declare-fun m!6201490 () Bool)

(assert (=> b!5135863 m!6201490))

(declare-fun m!6201492 () Bool)

(assert (=> b!5135863 m!6201492))

(declare-fun m!6201494 () Bool)

(assert (=> b!5135863 m!6201494))

(declare-fun m!6201496 () Bool)

(assert (=> b!5135863 m!6201496))

(declare-fun m!6201498 () Bool)

(assert (=> b!5135863 m!6201498))

(declare-fun m!6201500 () Bool)

(assert (=> b!5135863 m!6201500))

(declare-fun m!6201502 () Bool)

(assert (=> b!5135863 m!6201502))

(declare-fun m!6201504 () Bool)

(assert (=> start!543674 m!6201504))

(declare-fun m!6201506 () Bool)

(assert (=> start!543674 m!6201506))

(declare-fun m!6201508 () Bool)

(assert (=> b!5135864 m!6201508))

(push 1)

(assert (not b!5135863))

(assert tp_is_empty!37965)

(assert (not start!543674))

(assert (not b!5135864))

(assert (not b!5135866))

(assert (not b!5135862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661849 () Bool)

(declare-fun lt!2119377 () Bool)

(declare-datatypes ((List!59754 0))(
  ( (Nil!59630) (Cons!59630 (h!66078 Context!7580) (t!372783 List!59754)) )
))
(declare-fun forall!13871 (List!59754 Int) Bool)

(declare-fun toList!8369 ((Set Context!7580)) List!59754)

(assert (=> d!1661849 (= lt!2119377 (forall!13871 (toList!8369 lt!2119354) lambda!255884))))

(declare-fun choose!38005 ((Set Context!7580) Int) Bool)

(assert (=> d!1661849 (= lt!2119377 (choose!38005 lt!2119354 lambda!255884))))

(assert (=> d!1661849 (= (forall!13869 lt!2119354 lambda!255884) lt!2119377)))

(declare-fun bs!1199988 () Bool)

(assert (= bs!1199988 d!1661849))

(declare-fun m!6201536 () Bool)

(assert (=> bs!1199988 m!6201536))

(assert (=> bs!1199988 m!6201536))

(declare-fun m!6201538 () Bool)

(assert (=> bs!1199988 m!6201538))

(declare-fun m!6201540 () Bool)

(assert (=> bs!1199988 m!6201540))

(assert (=> b!5135862 d!1661849))

(declare-fun d!1661851 () Bool)

(declare-fun lambda!255890 () Int)

(declare-fun exists!1742 (List!59752 Int) Bool)

(assert (=> d!1661851 (= (lostCause!1373 ctx!74) (exists!1742 (exprs!4290 ctx!74) lambda!255890))))

(declare-fun bs!1199989 () Bool)

(assert (= bs!1199989 d!1661851))

(declare-fun m!6201542 () Bool)

(assert (=> bs!1199989 m!6201542))

(assert (=> start!543674 d!1661851))

(declare-fun bs!1199990 () Bool)

(declare-fun d!1661853 () Bool)

(assert (= bs!1199990 (and d!1661853 d!1661851)))

(declare-fun lambda!255893 () Int)

(assert (=> bs!1199990 (not (= lambda!255893 lambda!255890))))

(declare-fun forall!13872 (List!59752 Int) Bool)

(assert (=> d!1661853 (= (inv!79197 ctx!74) (forall!13872 (exprs!4290 ctx!74) lambda!255893))))

(declare-fun bs!1199991 () Bool)

(assert (= bs!1199991 d!1661853))

(declare-fun m!6201544 () Bool)

(assert (=> bs!1199991 m!6201544))

(assert (=> start!543674 d!1661853))

(declare-fun d!1661855 () Bool)

(declare-fun lostCauseFct!332 (Regex!14406) Bool)

(assert (=> d!1661855 (= (lostCause!1372 (h!66076 (exprs!4290 ctx!74))) (lostCauseFct!332 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun bs!1199992 () Bool)

(assert (= bs!1199992 d!1661855))

(declare-fun m!6201546 () Bool)

(assert (=> bs!1199992 m!6201546))

(assert (=> b!5135863 d!1661855))

(declare-fun bs!1199994 () Bool)

(declare-fun d!1661857 () Bool)

(assert (= bs!1199994 (and d!1661857 b!5135863)))

(declare-fun lambda!255912 () Int)

(assert (=> bs!1199994 (= lambda!255912 lambda!255884)))

(declare-fun bs!1199996 () Bool)

(declare-fun b!5135886 () Bool)

(assert (= bs!1199996 (and b!5135886 b!5135863)))

(declare-fun lambda!255913 () Int)

(assert (=> bs!1199996 (not (= lambda!255913 lambda!255884))))

(declare-fun bs!1199998 () Bool)

(assert (= bs!1199998 (and b!5135886 d!1661857)))

(assert (=> bs!1199998 (not (= lambda!255913 lambda!255912))))

(declare-fun bs!1199999 () Bool)

(declare-fun b!5135887 () Bool)

(assert (= bs!1199999 (and b!5135887 b!5135863)))

(declare-fun lambda!255914 () Int)

(assert (=> bs!1199999 (not (= lambda!255914 lambda!255884))))

(declare-fun bs!1200000 () Bool)

(assert (= bs!1200000 (and b!5135887 d!1661857)))

(assert (=> bs!1200000 (not (= lambda!255914 lambda!255912))))

(declare-fun bs!1200001 () Bool)

(assert (= bs!1200001 (and b!5135887 b!5135886)))

(assert (=> bs!1200001 (= lambda!255914 lambda!255913)))

(declare-fun call!357923 () Bool)

(declare-fun lt!2119400 () List!59754)

(declare-fun bm!357918 () Bool)

(declare-fun lt!2119399 () List!59754)

(declare-fun c!884175 () Bool)

(declare-fun exists!1743 (List!59754 Int) Bool)

(assert (=> bm!357918 (= call!357923 (exists!1743 (ite c!884175 lt!2119399 lt!2119400) (ite c!884175 lambda!255913 lambda!255914)))))

(declare-fun e!3203455 () Unit!150979)

(declare-fun Unit!150983 () Unit!150979)

(assert (=> b!5135887 (= e!3203455 Unit!150983)))

(declare-fun call!357922 () List!59754)

(assert (=> b!5135887 (= lt!2119400 call!357922)))

(declare-fun lt!2119394 () Unit!150979)

(declare-fun lemmaForallThenNotExists!383 (List!59754 Int) Unit!150979)

(assert (=> b!5135887 (= lt!2119394 (lemmaForallThenNotExists!383 lt!2119400 lambda!255912))))

(assert (=> b!5135887 (not call!357923)))

(declare-fun lt!2119396 () Unit!150979)

(assert (=> b!5135887 (= lt!2119396 lt!2119394)))

(declare-fun lt!2119395 () Bool)

(declare-datatypes ((List!59755 0))(
  ( (Nil!59631) (Cons!59631 (h!66079 C!29078) (t!372784 List!59755)) )
))
(declare-datatypes ((Option!14765 0))(
  ( (None!14764) (Some!14764 (v!50793 List!59755)) )
))
(declare-fun isEmpty!32026 (Option!14765) Bool)

(declare-fun getLanguageWitness!910 ((Set Context!7580)) Option!14765)

(assert (=> d!1661857 (= lt!2119395 (isEmpty!32026 (getLanguageWitness!910 lt!2119352)))))

(assert (=> d!1661857 (= lt!2119395 (forall!13869 lt!2119352 lambda!255912))))

(declare-fun lt!2119401 () Unit!150979)

(assert (=> d!1661857 (= lt!2119401 e!3203455)))

(assert (=> d!1661857 (= c!884175 (not (forall!13869 lt!2119352 lambda!255912)))))

(assert (=> d!1661857 (= (lostCauseZipper!1234 lt!2119352) lt!2119395)))

(declare-fun Unit!150984 () Unit!150979)

(assert (=> b!5135886 (= e!3203455 Unit!150984)))

(assert (=> b!5135886 (= lt!2119399 call!357922)))

(declare-fun lt!2119397 () Unit!150979)

(declare-fun lemmaNotForallThenExists!416 (List!59754 Int) Unit!150979)

(assert (=> b!5135886 (= lt!2119397 (lemmaNotForallThenExists!416 lt!2119399 lambda!255912))))

(assert (=> b!5135886 call!357923))

(declare-fun lt!2119398 () Unit!150979)

(assert (=> b!5135886 (= lt!2119398 lt!2119397)))

(declare-fun bm!357917 () Bool)

(assert (=> bm!357917 (= call!357922 (toList!8369 lt!2119352))))

(assert (= (and d!1661857 c!884175) b!5135886))

(assert (= (and d!1661857 (not c!884175)) b!5135887))

(assert (= (or b!5135886 b!5135887) bm!357917))

(assert (= (or b!5135886 b!5135887) bm!357918))

(declare-fun m!6201552 () Bool)

(assert (=> b!5135886 m!6201552))

(declare-fun m!6201554 () Bool)

(assert (=> bm!357918 m!6201554))

(declare-fun m!6201556 () Bool)

(assert (=> b!5135887 m!6201556))

(declare-fun m!6201558 () Bool)

(assert (=> d!1661857 m!6201558))

(assert (=> d!1661857 m!6201558))

(declare-fun m!6201560 () Bool)

(assert (=> d!1661857 m!6201560))

(declare-fun m!6201562 () Bool)

(assert (=> d!1661857 m!6201562))

(assert (=> d!1661857 m!6201562))

(declare-fun m!6201564 () Bool)

(assert (=> bm!357917 m!6201564))

(assert (=> b!5135863 d!1661857))

(declare-fun bm!357921 () Bool)

(declare-fun call!357926 () (Set Context!7580))

(assert (=> bm!357921 (= call!357926 (derivationStepZipperDown!115 (h!66076 (exprs!4290 lt!2119353)) (Context!7581 (t!372781 (exprs!4290 lt!2119353))) a!1252))))

(declare-fun b!5135899 () Bool)

(declare-fun e!3203463 () Bool)

(assert (=> b!5135899 (= e!3203463 (nullable!4779 (h!66076 (exprs!4290 lt!2119353))))))

(declare-fun b!5135900 () Bool)

(declare-fun e!3203464 () (Set Context!7580))

(assert (=> b!5135900 (= e!3203464 call!357926)))

(declare-fun b!5135901 () Bool)

(declare-fun e!3203462 () (Set Context!7580))

(assert (=> b!5135901 (= e!3203462 e!3203464)))

(declare-fun c!884181 () Bool)

(assert (=> b!5135901 (= c!884181 (is-Cons!59628 (exprs!4290 lt!2119353)))))

(declare-fun b!5135902 () Bool)

(assert (=> b!5135902 (= e!3203462 (set.union call!357926 (derivationStepZipperUp!92 (Context!7581 (t!372781 (exprs!4290 lt!2119353))) a!1252)))))

(declare-fun d!1661865 () Bool)

(declare-fun c!884180 () Bool)

(assert (=> d!1661865 (= c!884180 e!3203463)))

(declare-fun res!2187547 () Bool)

(assert (=> d!1661865 (=> (not res!2187547) (not e!3203463))))

(assert (=> d!1661865 (= res!2187547 (is-Cons!59628 (exprs!4290 lt!2119353)))))

(assert (=> d!1661865 (= (derivationStepZipperUp!92 lt!2119353 a!1252) e!3203462)))

(declare-fun b!5135898 () Bool)

(assert (=> b!5135898 (= e!3203464 (as set.empty (Set Context!7580)))))

(assert (= (and d!1661865 res!2187547) b!5135899))

(assert (= (and d!1661865 c!884180) b!5135902))

(assert (= (and d!1661865 (not c!884180)) b!5135901))

(assert (= (and b!5135901 c!884181) b!5135900))

(assert (= (and b!5135901 (not c!884181)) b!5135898))

(assert (= (or b!5135902 b!5135900) bm!357921))

(declare-fun m!6201566 () Bool)

(assert (=> bm!357921 m!6201566))

(declare-fun m!6201568 () Bool)

(assert (=> b!5135899 m!6201568))

(declare-fun m!6201570 () Bool)

(assert (=> b!5135902 m!6201570))

(assert (=> b!5135863 d!1661865))

(declare-fun d!1661867 () Bool)

(declare-fun lt!2119402 () Bool)

(assert (=> d!1661867 (= lt!2119402 (forall!13871 (toList!8369 lt!2119352) lambda!255884))))

(assert (=> d!1661867 (= lt!2119402 (choose!38005 lt!2119352 lambda!255884))))

(assert (=> d!1661867 (= (forall!13869 lt!2119352 lambda!255884) lt!2119402)))

(declare-fun bs!1200002 () Bool)

(assert (= bs!1200002 d!1661867))

(assert (=> bs!1200002 m!6201564))

(assert (=> bs!1200002 m!6201564))

(declare-fun m!6201572 () Bool)

(assert (=> bs!1200002 m!6201572))

(declare-fun m!6201574 () Bool)

(assert (=> bs!1200002 m!6201574))

(assert (=> b!5135863 d!1661867))

(declare-fun d!1661869 () Bool)

(assert (=> d!1661869 (lostCauseZipper!1234 (derivationStepZipperDown!115 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252))))

(declare-fun lt!2119408 () Unit!150979)

(declare-fun choose!38006 (Regex!14406 Context!7580 C!29078) Unit!150979)

(assert (=> d!1661869 (= lt!2119408 (choose!38006 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252))))

(declare-fun validRegex!6265 (Regex!14406) Bool)

(assert (=> d!1661869 (validRegex!6265 (h!66076 (exprs!4290 ctx!74)))))

(assert (=> d!1661869 (= (lemmaLostCauseFixPointDerivDown!9 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252) lt!2119408)))

(declare-fun bs!1200003 () Bool)

(assert (= bs!1200003 d!1661869))

(assert (=> bs!1200003 m!6201490))

(assert (=> bs!1200003 m!6201490))

(declare-fun m!6201576 () Bool)

(assert (=> bs!1200003 m!6201576))

(declare-fun m!6201578 () Bool)

(assert (=> bs!1200003 m!6201578))

(declare-fun m!6201580 () Bool)

(assert (=> bs!1200003 m!6201580))

(assert (=> b!5135863 d!1661869))

(declare-fun bs!1200005 () Bool)

(declare-fun d!1661871 () Bool)

(assert (= bs!1200005 (and d!1661871 b!5135863)))

(declare-fun lambda!255915 () Int)

(assert (=> bs!1200005 (= lambda!255915 lambda!255884)))

(declare-fun bs!1200006 () Bool)

(assert (= bs!1200006 (and d!1661871 d!1661857)))

(assert (=> bs!1200006 (= lambda!255915 lambda!255912)))

(declare-fun bs!1200007 () Bool)

(assert (= bs!1200007 (and d!1661871 b!5135886)))

(assert (=> bs!1200007 (not (= lambda!255915 lambda!255913))))

(declare-fun bs!1200008 () Bool)

(assert (= bs!1200008 (and d!1661871 b!5135887)))

(assert (=> bs!1200008 (not (= lambda!255915 lambda!255914))))

(declare-fun bs!1200009 () Bool)

(declare-fun b!5135903 () Bool)

(assert (= bs!1200009 (and b!5135903 b!5135887)))

(declare-fun lambda!255916 () Int)

(assert (=> bs!1200009 (= lambda!255916 lambda!255914)))

(declare-fun bs!1200010 () Bool)

(assert (= bs!1200010 (and b!5135903 d!1661871)))

(assert (=> bs!1200010 (not (= lambda!255916 lambda!255915))))

(declare-fun bs!1200011 () Bool)

(assert (= bs!1200011 (and b!5135903 b!5135863)))

(assert (=> bs!1200011 (not (= lambda!255916 lambda!255884))))

(declare-fun bs!1200012 () Bool)

(assert (= bs!1200012 (and b!5135903 d!1661857)))

(assert (=> bs!1200012 (not (= lambda!255916 lambda!255912))))

(declare-fun bs!1200013 () Bool)

(assert (= bs!1200013 (and b!5135903 b!5135886)))

(assert (=> bs!1200013 (= lambda!255916 lambda!255913)))

(declare-fun bs!1200014 () Bool)

(declare-fun b!5135904 () Bool)

(assert (= bs!1200014 (and b!5135904 b!5135887)))

(declare-fun lambda!255917 () Int)

(assert (=> bs!1200014 (= lambda!255917 lambda!255914)))

(declare-fun bs!1200015 () Bool)

(assert (= bs!1200015 (and b!5135904 b!5135863)))

(assert (=> bs!1200015 (not (= lambda!255917 lambda!255884))))

(declare-fun bs!1200016 () Bool)

(assert (= bs!1200016 (and b!5135904 d!1661857)))

(assert (=> bs!1200016 (not (= lambda!255917 lambda!255912))))

(declare-fun bs!1200017 () Bool)

(assert (= bs!1200017 (and b!5135904 b!5135886)))

(assert (=> bs!1200017 (= lambda!255917 lambda!255913)))

(declare-fun bs!1200018 () Bool)

(assert (= bs!1200018 (and b!5135904 b!5135903)))

(assert (=> bs!1200018 (= lambda!255917 lambda!255916)))

(declare-fun bs!1200019 () Bool)

(assert (= bs!1200019 (and b!5135904 d!1661871)))

(assert (=> bs!1200019 (not (= lambda!255917 lambda!255915))))

(declare-fun call!357928 () Bool)

(declare-fun bm!357923 () Bool)

(declare-fun lt!2119415 () List!59754)

(declare-fun lt!2119414 () List!59754)

(declare-fun c!884182 () Bool)

(assert (=> bm!357923 (= call!357928 (exists!1743 (ite c!884182 lt!2119414 lt!2119415) (ite c!884182 lambda!255916 lambda!255917)))))

(declare-fun e!3203465 () Unit!150979)

(declare-fun Unit!150985 () Unit!150979)

(assert (=> b!5135904 (= e!3203465 Unit!150985)))

(declare-fun call!357927 () List!59754)

(assert (=> b!5135904 (= lt!2119415 call!357927)))

(declare-fun lt!2119409 () Unit!150979)

(assert (=> b!5135904 (= lt!2119409 (lemmaForallThenNotExists!383 lt!2119415 lambda!255915))))

(assert (=> b!5135904 (not call!357928)))

(declare-fun lt!2119411 () Unit!150979)

(assert (=> b!5135904 (= lt!2119411 lt!2119409)))

(declare-fun lt!2119410 () Bool)

(assert (=> d!1661871 (= lt!2119410 (isEmpty!32026 (getLanguageWitness!910 lt!2119354)))))

(assert (=> d!1661871 (= lt!2119410 (forall!13869 lt!2119354 lambda!255915))))

(declare-fun lt!2119416 () Unit!150979)

(assert (=> d!1661871 (= lt!2119416 e!3203465)))

(assert (=> d!1661871 (= c!884182 (not (forall!13869 lt!2119354 lambda!255915)))))

(assert (=> d!1661871 (= (lostCauseZipper!1234 lt!2119354) lt!2119410)))

(declare-fun Unit!150986 () Unit!150979)

(assert (=> b!5135903 (= e!3203465 Unit!150986)))

(assert (=> b!5135903 (= lt!2119414 call!357927)))

(declare-fun lt!2119412 () Unit!150979)

(assert (=> b!5135903 (= lt!2119412 (lemmaNotForallThenExists!416 lt!2119414 lambda!255915))))

(assert (=> b!5135903 call!357928))

(declare-fun lt!2119413 () Unit!150979)

(assert (=> b!5135903 (= lt!2119413 lt!2119412)))

(declare-fun bm!357922 () Bool)

(assert (=> bm!357922 (= call!357927 (toList!8369 lt!2119354))))

(assert (= (and d!1661871 c!884182) b!5135903))

(assert (= (and d!1661871 (not c!884182)) b!5135904))

(assert (= (or b!5135903 b!5135904) bm!357922))

(assert (= (or b!5135903 b!5135904) bm!357923))

(declare-fun m!6201588 () Bool)

(assert (=> b!5135903 m!6201588))

(declare-fun m!6201590 () Bool)

(assert (=> bm!357923 m!6201590))

(declare-fun m!6201592 () Bool)

(assert (=> b!5135904 m!6201592))

(declare-fun m!6201594 () Bool)

(assert (=> d!1661871 m!6201594))

(assert (=> d!1661871 m!6201594))

(declare-fun m!6201596 () Bool)

(assert (=> d!1661871 m!6201596))

(declare-fun m!6201598 () Bool)

(assert (=> d!1661871 m!6201598))

(assert (=> d!1661871 m!6201598))

(assert (=> bm!357922 m!6201536))

(assert (=> b!5135863 d!1661871))

(declare-fun d!1661875 () Bool)

(assert (=> d!1661875 (lostCauseZipper!1234 (derivationStepZipperUp!92 lt!2119353 a!1252))))

(declare-fun lt!2119419 () Unit!150979)

(declare-fun choose!38007 (Context!7580 C!29078) Unit!150979)

(assert (=> d!1661875 (= lt!2119419 (choose!38007 lt!2119353 a!1252))))

(assert (=> d!1661875 (lostCause!1373 lt!2119353)))

(assert (=> d!1661875 (= (lemmaLostCauseFixPointDerivUp!25 lt!2119353 a!1252) lt!2119419)))

(declare-fun bs!1200021 () Bool)

(assert (= bs!1200021 d!1661875))

(assert (=> bs!1200021 m!6201488))

(assert (=> bs!1200021 m!6201488))

(declare-fun m!6201602 () Bool)

(assert (=> bs!1200021 m!6201602))

(declare-fun m!6201604 () Bool)

(assert (=> bs!1200021 m!6201604))

(declare-fun m!6201606 () Bool)

(assert (=> bs!1200021 m!6201606))

(assert (=> b!5135863 d!1661875))

(declare-fun d!1661879 () Bool)

(assert (=> d!1661879 (not (lostCause!1372 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun lt!2119422 () Unit!150979)

(declare-fun choose!38008 (Regex!14406) Unit!150979)

(assert (=> d!1661879 (= lt!2119422 (choose!38008 (h!66076 (exprs!4290 ctx!74))))))

(assert (=> d!1661879 (validRegex!6265 (h!66076 (exprs!4290 ctx!74)))))

(assert (=> d!1661879 (= (lemmaNullableThenNotLostCause!57 (h!66076 (exprs!4290 ctx!74))) lt!2119422)))

(declare-fun bs!1200022 () Bool)

(assert (= bs!1200022 d!1661879))

(assert (=> bs!1200022 m!6201498))

(declare-fun m!6201608 () Bool)

(assert (=> bs!1200022 m!6201608))

(assert (=> bs!1200022 m!6201580))

(assert (=> b!5135863 d!1661879))

(declare-fun bm!357938 () Bool)

(declare-fun call!357944 () List!59752)

(declare-fun call!357946 () List!59752)

(assert (=> bm!357938 (= call!357944 call!357946)))

(declare-fun b!5135937 () Bool)

(declare-fun e!3203484 () (Set Context!7580))

(declare-fun call!357947 () (Set Context!7580))

(assert (=> b!5135937 (= e!3203484 call!357947)))

(declare-fun bm!357939 () Bool)

(declare-fun call!357945 () (Set Context!7580))

(assert (=> bm!357939 (= call!357947 call!357945)))

(declare-fun bm!357940 () Bool)

(declare-fun c!884199 () Bool)

(declare-fun call!357943 () (Set Context!7580))

(assert (=> bm!357940 (= call!357943 (derivationStepZipperDown!115 (ite c!884199 (regTwo!29325 (h!66076 (exprs!4290 ctx!74))) (regOne!29324 (h!66076 (exprs!4290 ctx!74)))) (ite c!884199 lt!2119353 (Context!7581 call!357946)) a!1252))))

(declare-fun d!1661881 () Bool)

(declare-fun c!884198 () Bool)

(assert (=> d!1661881 (= c!884198 (and (is-ElementMatch!14406 (h!66076 (exprs!4290 ctx!74))) (= (c!884161 (h!66076 (exprs!4290 ctx!74))) a!1252)))))

(declare-fun e!3203487 () (Set Context!7580))

(assert (=> d!1661881 (= (derivationStepZipperDown!115 (h!66076 (exprs!4290 ctx!74)) lt!2119353 a!1252) e!3203487)))

(declare-fun b!5135938 () Bool)

(declare-fun e!3203486 () (Set Context!7580))

(assert (=> b!5135938 (= e!3203487 e!3203486)))

(assert (=> b!5135938 (= c!884199 (is-Union!14406 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun b!5135939 () Bool)

(declare-fun e!3203488 () (Set Context!7580))

(assert (=> b!5135939 (= e!3203488 (set.union call!357943 call!357945))))

(declare-fun b!5135940 () Bool)

(declare-fun call!357948 () (Set Context!7580))

(assert (=> b!5135940 (= e!3203486 (set.union call!357948 call!357943))))

(declare-fun b!5135941 () Bool)

(declare-fun e!3203485 () (Set Context!7580))

(assert (=> b!5135941 (= e!3203485 call!357947)))

(declare-fun b!5135942 () Bool)

(assert (=> b!5135942 (= e!3203487 (set.insert lt!2119353 (as set.empty (Set Context!7580))))))

(declare-fun bm!357941 () Bool)

(declare-fun c!884197 () Bool)

(declare-fun c!884201 () Bool)

(declare-fun $colon$colon!1166 (List!59752 Regex!14406) List!59752)

(assert (=> bm!357941 (= call!357946 ($colon$colon!1166 (exprs!4290 lt!2119353) (ite (or c!884201 c!884197) (regTwo!29324 (h!66076 (exprs!4290 ctx!74))) (h!66076 (exprs!4290 ctx!74)))))))

(declare-fun bm!357942 () Bool)

(assert (=> bm!357942 (= call!357945 call!357948)))

(declare-fun b!5135943 () Bool)

(assert (=> b!5135943 (= e!3203488 e!3203484)))

(assert (=> b!5135943 (= c!884197 (is-Concat!23251 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun b!5135944 () Bool)

(declare-fun e!3203489 () Bool)

(assert (=> b!5135944 (= c!884201 e!3203489)))

(declare-fun res!2187552 () Bool)

(assert (=> b!5135944 (=> (not res!2187552) (not e!3203489))))

(assert (=> b!5135944 (= res!2187552 (is-Concat!23251 (h!66076 (exprs!4290 ctx!74))))))

(assert (=> b!5135944 (= e!3203486 e!3203488)))

(declare-fun b!5135945 () Bool)

(assert (=> b!5135945 (= e!3203485 (as set.empty (Set Context!7580)))))

(declare-fun b!5135946 () Bool)

(declare-fun c!884200 () Bool)

(assert (=> b!5135946 (= c!884200 (is-Star!14406 (h!66076 (exprs!4290 ctx!74))))))

(assert (=> b!5135946 (= e!3203484 e!3203485)))

(declare-fun bm!357943 () Bool)

(assert (=> bm!357943 (= call!357948 (derivationStepZipperDown!115 (ite c!884199 (regOne!29325 (h!66076 (exprs!4290 ctx!74))) (ite c!884201 (regTwo!29324 (h!66076 (exprs!4290 ctx!74))) (ite c!884197 (regOne!29324 (h!66076 (exprs!4290 ctx!74))) (reg!14735 (h!66076 (exprs!4290 ctx!74)))))) (ite (or c!884199 c!884201) lt!2119353 (Context!7581 call!357944)) a!1252))))

(declare-fun b!5135947 () Bool)

(assert (=> b!5135947 (= e!3203489 (nullable!4779 (regOne!29324 (h!66076 (exprs!4290 ctx!74)))))))

(assert (= (and d!1661881 c!884198) b!5135942))

(assert (= (and d!1661881 (not c!884198)) b!5135938))

(assert (= (and b!5135938 c!884199) b!5135940))

(assert (= (and b!5135938 (not c!884199)) b!5135944))

(assert (= (and b!5135944 res!2187552) b!5135947))

(assert (= (and b!5135944 c!884201) b!5135939))

(assert (= (and b!5135944 (not c!884201)) b!5135943))

(assert (= (and b!5135943 c!884197) b!5135937))

(assert (= (and b!5135943 (not c!884197)) b!5135946))

(assert (= (and b!5135946 c!884200) b!5135941))

(assert (= (and b!5135946 (not c!884200)) b!5135945))

(assert (= (or b!5135937 b!5135941) bm!357938))

(assert (= (or b!5135937 b!5135941) bm!357939))

(assert (= (or b!5135939 bm!357938) bm!357941))

(assert (= (or b!5135939 bm!357939) bm!357942))

(assert (= (or b!5135940 bm!357942) bm!357943))

(assert (= (or b!5135940 b!5135939) bm!357940))

(declare-fun m!6201616 () Bool)

(assert (=> bm!357943 m!6201616))

(declare-fun m!6201618 () Bool)

(assert (=> b!5135942 m!6201618))

(declare-fun m!6201620 () Bool)

(assert (=> bm!357941 m!6201620))

(declare-fun m!6201622 () Bool)

(assert (=> b!5135947 m!6201622))

(declare-fun m!6201624 () Bool)

(assert (=> bm!357940 m!6201624))

(assert (=> b!5135863 d!1661881))

(declare-fun d!1661885 () Bool)

(declare-fun nullableFct!1301 (Regex!14406) Bool)

(assert (=> d!1661885 (= (nullable!4779 (h!66076 (exprs!4290 ctx!74))) (nullableFct!1301 (h!66076 (exprs!4290 ctx!74))))))

(declare-fun bs!1200024 () Bool)

(assert (= bs!1200024 d!1661885))

(declare-fun m!6201626 () Bool)

(assert (=> bs!1200024 m!6201626))

(assert (=> b!5135864 d!1661885))

(declare-fun b!5135957 () Bool)

(declare-fun e!3203495 () Bool)

(declare-fun tp!1432430 () Bool)

(declare-fun tp!1432431 () Bool)

(assert (=> b!5135957 (= e!3203495 (and tp!1432430 tp!1432431))))

(assert (=> b!5135866 (= tp!1432422 e!3203495)))

(assert (= (and b!5135866 (is-Cons!59628 (exprs!4290 ctx!74))) b!5135957))

(push 1)

(assert (not d!1661885))

(assert (not d!1661869))

(assert (not b!5135904))

(assert (not d!1661855))

(assert tp_is_empty!37965)

(assert (not b!5135947))

(assert (not bm!357917))

(assert (not d!1661871))

(assert (not d!1661867))

(assert (not b!5135886))

(assert (not bm!357943))

(assert (not bm!357923))

(assert (not d!1661875))

(assert (not bm!357921))

(assert (not bm!357940))

(assert (not d!1661851))

(assert (not bm!357918))

(assert (not bm!357941))

(assert (not b!5135903))

(assert (not b!5135957))

(assert (not b!5135902))

(assert (not b!5135887))

(assert (not d!1661849))

(assert (not d!1661853))

(assert (not b!5135899))

(assert (not d!1661857))

(assert (not bm!357922))

(assert (not d!1661879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

