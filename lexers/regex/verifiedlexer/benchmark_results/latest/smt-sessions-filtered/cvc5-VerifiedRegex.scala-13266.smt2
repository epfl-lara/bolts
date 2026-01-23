; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721652 () Bool)

(assert start!721652)

(declare-fun b!7408599 () Bool)

(assert (=> b!7408599 true))

(declare-fun b!7408608 () Bool)

(assert (=> b!7408608 true))

(declare-fun lambda!459706 () Int)

(declare-fun lambda!459705 () Int)

(assert (=> b!7408608 (not (= lambda!459706 lambda!459705))))

(assert (=> b!7408608 true))

(assert (=> b!7408608 true))

(declare-fun b!7408596 () Bool)

(declare-fun res!2982624 () Bool)

(declare-fun e!4431000 () Bool)

(assert (=> b!7408596 (=> (not res!2982624) (not e!4431000))))

(declare-datatypes ((C!39086 0))(
  ( (C!39087 (val!29917 Int)) )
))
(declare-datatypes ((Regex!19406 0))(
  ( (ElementMatch!19406 (c!1375103 C!39086)) (Concat!28251 (regOne!39324 Regex!19406) (regTwo!39324 Regex!19406)) (EmptyExpr!19406) (Star!19406 (reg!19735 Regex!19406)) (EmptyLang!19406) (Union!19406 (regOne!39325 Regex!19406) (regTwo!39325 Regex!19406)) )
))
(declare-datatypes ((List!72004 0))(
  ( (Nil!71880) (Cons!71880 (h!78328 Regex!19406) (t!386563 List!72004)) )
))
(declare-datatypes ((Context!16692 0))(
  ( (Context!16693 (exprs!8846 List!72004)) )
))
(declare-fun c!10532 () Context!16692)

(declare-fun a!2228 () C!39086)

(declare-fun head!15198 (List!72004) Regex!19406)

(assert (=> b!7408596 (= res!2982624 (= (head!15198 (exprs!8846 c!10532)) (ElementMatch!19406 a!2228)))))

(declare-fun b!7408597 () Bool)

(declare-fun e!4431002 () Bool)

(declare-fun tp!2119651 () Bool)

(assert (=> b!7408597 (= e!4431002 tp!2119651)))

(declare-fun b!7408598 () Bool)

(declare-fun e!4430998 () Bool)

(assert (=> b!7408598 (= e!4431000 e!4430998)))

(declare-fun res!2982627 () Bool)

(assert (=> b!7408598 (=> (not res!2982627) (not e!4430998))))

(declare-fun lt!2618515 () C!39086)

(declare-fun lt!2618512 () (Set Context!16692))

(declare-fun derivationStepZipperUp!2810 (Context!16692 C!39086) (Set Context!16692))

(assert (=> b!7408598 (= res!2982627 (= (derivationStepZipperUp!2810 c!10532 lt!2618515) lt!2618512))))

(declare-fun lt!2618514 () Context!16692)

(assert (=> b!7408598 (= lt!2618512 (set.insert lt!2618514 (as set.empty (Set Context!16692))))))

(assert (=> b!7408598 (= lt!2618514 (Context!16693 Nil!71880))))

(declare-fun lt!2618516 () (Set Context!16692))

(declare-fun z!3451 () (Set Context!16692))

(declare-fun derivationStepZipper!3680 ((Set Context!16692) C!39086) (Set Context!16692))

(assert (=> b!7408598 (= lt!2618516 (derivationStepZipper!3680 z!3451 lt!2618515))))

(declare-datatypes ((List!72005 0))(
  ( (Nil!71881) (Cons!71881 (h!78329 C!39086) (t!386564 List!72005)) )
))
(declare-fun s!7927 () List!72005)

(declare-fun head!15199 (List!72005) C!39086)

(assert (=> b!7408598 (= lt!2618515 (head!15199 s!7927))))

(declare-fun e!4430999 () Bool)

(assert (=> b!7408599 (= e!4430998 (not e!4430999))))

(declare-fun res!2982628 () Bool)

(assert (=> b!7408599 (=> res!2982628 e!4430999)))

(assert (=> b!7408599 (= res!2982628 (not (set.member lt!2618514 lt!2618516)))))

(declare-fun lambda!459704 () Int)

(declare-fun lt!2618509 () Context!16692)

(declare-fun flatMapPost!213 ((Set Context!16692) Int Context!16692) Context!16692)

(assert (=> b!7408599 (= (flatMapPost!213 z!3451 lambda!459704 lt!2618514) lt!2618509)))

(declare-fun empty!3571 () Context!16692)

(assert (=> b!7408599 (= lt!2618509 empty!3571)))

(assert (=> b!7408599 true))

(declare-fun inv!91877 (Context!16692) Bool)

(assert (=> b!7408599 (and (inv!91877 empty!3571) e!4431002)))

(declare-fun setRes!56240 () Bool)

(declare-fun setElem!56240 () Context!16692)

(declare-fun tp!2119652 () Bool)

(declare-fun e!4431001 () Bool)

(declare-fun setNonEmpty!56240 () Bool)

(assert (=> setNonEmpty!56240 (= setRes!56240 (and tp!2119652 (inv!91877 setElem!56240) e!4431001))))

(declare-fun setRest!56240 () (Set Context!16692))

(assert (=> setNonEmpty!56240 (= z!3451 (set.union (set.insert setElem!56240 (as set.empty (Set Context!16692))) setRest!56240))))

(declare-fun setIsEmpty!56240 () Bool)

(assert (=> setIsEmpty!56240 setRes!56240))

(declare-fun b!7408600 () Bool)

(declare-fun e!4430996 () Bool)

(assert (=> b!7408600 (= e!4430996 (inv!91877 lt!2618514))))

(declare-fun b!7408601 () Bool)

(declare-fun tp!2119654 () Bool)

(assert (=> b!7408601 (= e!4431001 tp!2119654)))

(declare-fun b!7408602 () Bool)

(declare-fun res!2982630 () Bool)

(assert (=> b!7408602 (=> (not res!2982630) (not e!4431000))))

(assert (=> b!7408602 (= res!2982630 (and (is-Cons!71881 s!7927) (= (h!78329 s!7927) a!2228)))))

(declare-fun b!7408603 () Bool)

(declare-fun res!2982629 () Bool)

(assert (=> b!7408603 (=> (not res!2982629) (not e!4431000))))

(declare-fun isEmpty!41046 (List!72004) Bool)

(declare-fun tail!14813 (List!72004) List!72004)

(assert (=> b!7408603 (= res!2982629 (isEmpty!41046 (tail!14813 (exprs!8846 c!10532))))))

(declare-fun res!2982626 () Bool)

(assert (=> start!721652 (=> (not res!2982626) (not e!4431000))))

(assert (=> start!721652 (= res!2982626 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16692)))))))

(assert (=> start!721652 e!4431000))

(declare-fun condSetEmpty!56240 () Bool)

(assert (=> start!721652 (= condSetEmpty!56240 (= z!3451 (as set.empty (Set Context!16692))))))

(assert (=> start!721652 setRes!56240))

(declare-fun e!4430997 () Bool)

(assert (=> start!721652 (and (inv!91877 c!10532) e!4430997)))

(declare-fun tp_is_empty!49075 () Bool)

(assert (=> start!721652 tp_is_empty!49075))

(declare-fun e!4430995 () Bool)

(assert (=> start!721652 e!4430995))

(declare-fun b!7408604 () Bool)

(assert (=> b!7408604 (= e!4430999 e!4430996)))

(declare-fun res!2982623 () Bool)

(assert (=> b!7408604 (=> res!2982623 e!4430996)))

(declare-fun isEmpty!41047 (List!72005) Bool)

(assert (=> b!7408604 (= res!2982623 (not (isEmpty!41047 (t!386564 s!7927))))))

(declare-fun lt!2618513 () Bool)

(assert (=> b!7408604 lt!2618513))

(declare-datatypes ((Unit!165688 0))(
  ( (Unit!165689) )
))
(declare-fun lt!2618510 () Unit!165688)

(declare-fun e!4430994 () Unit!165688)

(assert (=> b!7408604 (= lt!2618510 e!4430994)))

(declare-fun c!1375102 () Bool)

(assert (=> b!7408604 (= c!1375102 (not lt!2618513))))

(assert (=> b!7408604 (= lt!2618513 (= lt!2618516 lt!2618512))))

(declare-fun b!7408605 () Bool)

(declare-fun tp!2119655 () Bool)

(assert (=> b!7408605 (= e!4430995 (and tp_is_empty!49075 tp!2119655))))

(declare-fun b!7408606 () Bool)

(declare-fun res!2982625 () Bool)

(assert (=> b!7408606 (=> (not res!2982625) (not e!4431000))))

(assert (=> b!7408606 (= res!2982625 (not (isEmpty!41046 (exprs!8846 c!10532))))))

(declare-fun b!7408607 () Bool)

(declare-fun tp!2119653 () Bool)

(assert (=> b!7408607 (= e!4430997 tp!2119653)))

(declare-fun Unit!165690 () Unit!165688)

(assert (=> b!7408608 (= e!4430994 Unit!165690)))

(declare-fun lt!2618508 () Context!16692)

(declare-fun getWitness!2445 ((Set Context!16692) Int) Context!16692)

(assert (=> b!7408608 (= lt!2618508 (getWitness!2445 lt!2618516 lambda!459705))))

(assert (=> b!7408608 (= (flatMapPost!213 z!3451 lambda!459704 lt!2618508) lt!2618509)))

(declare-fun lt!2618511 () Context!16692)

(assert (=> b!7408608 (= lt!2618511 (getWitness!2445 z!3451 lambda!459706))))

(assert (=> b!7408608 false))

(declare-fun b!7408609 () Bool)

(declare-fun Unit!165691 () Unit!165688)

(assert (=> b!7408609 (= e!4430994 Unit!165691)))

(assert (= (and start!721652 res!2982626) b!7408606))

(assert (= (and b!7408606 res!2982625) b!7408596))

(assert (= (and b!7408596 res!2982624) b!7408603))

(assert (= (and b!7408603 res!2982629) b!7408602))

(assert (= (and b!7408602 res!2982630) b!7408598))

(assert (= (and b!7408598 res!2982627) b!7408599))

(assert (= b!7408599 b!7408597))

(assert (= (and b!7408599 (not res!2982628)) b!7408604))

(assert (= (and b!7408604 c!1375102) b!7408608))

(assert (= (and b!7408604 (not c!1375102)) b!7408609))

(assert (= (and b!7408604 (not res!2982623)) b!7408600))

(assert (= (and start!721652 condSetEmpty!56240) setIsEmpty!56240))

(assert (= (and start!721652 (not condSetEmpty!56240)) setNonEmpty!56240))

(assert (= setNonEmpty!56240 b!7408601))

(assert (= start!721652 b!7408607))

(assert (= (and start!721652 (is-Cons!71881 s!7927)) b!7408605))

(declare-fun m!8043832 () Bool)

(assert (=> b!7408606 m!8043832))

(declare-fun m!8043834 () Bool)

(assert (=> b!7408608 m!8043834))

(declare-fun m!8043836 () Bool)

(assert (=> b!7408608 m!8043836))

(declare-fun m!8043838 () Bool)

(assert (=> b!7408608 m!8043838))

(declare-fun m!8043840 () Bool)

(assert (=> b!7408598 m!8043840))

(declare-fun m!8043842 () Bool)

(assert (=> b!7408598 m!8043842))

(declare-fun m!8043844 () Bool)

(assert (=> b!7408598 m!8043844))

(declare-fun m!8043846 () Bool)

(assert (=> b!7408598 m!8043846))

(declare-fun m!8043848 () Bool)

(assert (=> b!7408600 m!8043848))

(declare-fun m!8043850 () Bool)

(assert (=> b!7408603 m!8043850))

(assert (=> b!7408603 m!8043850))

(declare-fun m!8043852 () Bool)

(assert (=> b!7408603 m!8043852))

(declare-fun m!8043854 () Bool)

(assert (=> b!7408599 m!8043854))

(declare-fun m!8043856 () Bool)

(assert (=> b!7408599 m!8043856))

(declare-fun m!8043858 () Bool)

(assert (=> b!7408599 m!8043858))

(declare-fun m!8043860 () Bool)

(assert (=> setNonEmpty!56240 m!8043860))

(declare-fun m!8043862 () Bool)

(assert (=> b!7408604 m!8043862))

(declare-fun m!8043864 () Bool)

(assert (=> start!721652 m!8043864))

(declare-fun m!8043866 () Bool)

(assert (=> start!721652 m!8043866))

(declare-fun m!8043868 () Bool)

(assert (=> b!7408596 m!8043868))

(push 1)

(assert (not start!721652))

(assert (not b!7408606))

(assert (not b!7408604))

(assert (not b!7408597))

(assert (not b!7408596))

(assert (not b!7408607))

(assert tp_is_empty!49075)

(assert (not b!7408599))

(assert (not setNonEmpty!56240))

(assert (not b!7408598))

(assert (not b!7408608))

(assert (not b!7408605))

(assert (not b!7408601))

(assert (not b!7408603))

(assert (not b!7408600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291083 () Bool)

(declare-fun lambda!459720 () Int)

(declare-fun forall!18190 (List!72004 Int) Bool)

(assert (=> d!2291083 (= (inv!91877 lt!2618514) (forall!18190 (exprs!8846 lt!2618514) lambda!459720))))

(declare-fun bs!1924185 () Bool)

(assert (= bs!1924185 d!2291083))

(declare-fun m!8043908 () Bool)

(assert (=> bs!1924185 m!8043908))

(assert (=> b!7408600 d!2291083))

(declare-fun bs!1924186 () Bool)

(declare-fun d!2291085 () Bool)

(assert (= bs!1924186 (and d!2291085 d!2291083)))

(declare-fun lambda!459721 () Int)

(assert (=> bs!1924186 (= lambda!459721 lambda!459720)))

(assert (=> d!2291085 (= (inv!91877 c!10532) (forall!18190 (exprs!8846 c!10532) lambda!459721))))

(declare-fun bs!1924187 () Bool)

(assert (= bs!1924187 d!2291085))

(declare-fun m!8043910 () Bool)

(assert (=> bs!1924187 m!8043910))

(assert (=> start!721652 d!2291085))

(declare-fun d!2291087 () Bool)

(assert (=> d!2291087 (= (isEmpty!41046 (exprs!8846 c!10532)) (is-Nil!71880 (exprs!8846 c!10532)))))

(assert (=> b!7408606 d!2291087))

(declare-fun d!2291089 () Bool)

(declare-fun c!1375121 () Bool)

(declare-fun e!4431036 () Bool)

(assert (=> d!2291089 (= c!1375121 e!4431036)))

(declare-fun res!2982657 () Bool)

(assert (=> d!2291089 (=> (not res!2982657) (not e!4431036))))

(assert (=> d!2291089 (= res!2982657 (is-Cons!71880 (exprs!8846 c!10532)))))

(declare-fun e!4431037 () (Set Context!16692))

(assert (=> d!2291089 (= (derivationStepZipperUp!2810 c!10532 lt!2618515) e!4431037)))

(declare-fun b!7408674 () Bool)

(declare-fun e!4431038 () (Set Context!16692))

(assert (=> b!7408674 (= e!4431038 (as set.empty (Set Context!16692)))))

(declare-fun bm!682096 () Bool)

(declare-fun call!682101 () (Set Context!16692))

(declare-fun derivationStepZipperDown!3202 (Regex!19406 Context!16692 C!39086) (Set Context!16692))

(assert (=> bm!682096 (= call!682101 (derivationStepZipperDown!3202 (h!78328 (exprs!8846 c!10532)) (Context!16693 (t!386563 (exprs!8846 c!10532))) lt!2618515))))

(declare-fun b!7408675 () Bool)

(assert (=> b!7408675 (= e!4431037 e!4431038)))

(declare-fun c!1375120 () Bool)

(assert (=> b!7408675 (= c!1375120 (is-Cons!71880 (exprs!8846 c!10532)))))

(declare-fun b!7408676 () Bool)

(assert (=> b!7408676 (= e!4431037 (set.union call!682101 (derivationStepZipperUp!2810 (Context!16693 (t!386563 (exprs!8846 c!10532))) lt!2618515)))))

(declare-fun b!7408677 () Bool)

(declare-fun nullable!8450 (Regex!19406) Bool)

(assert (=> b!7408677 (= e!4431036 (nullable!8450 (h!78328 (exprs!8846 c!10532))))))

(declare-fun b!7408678 () Bool)

(assert (=> b!7408678 (= e!4431038 call!682101)))

(assert (= (and d!2291089 res!2982657) b!7408677))

(assert (= (and d!2291089 c!1375121) b!7408676))

(assert (= (and d!2291089 (not c!1375121)) b!7408675))

(assert (= (and b!7408675 c!1375120) b!7408678))

(assert (= (and b!7408675 (not c!1375120)) b!7408674))

(assert (= (or b!7408676 b!7408678) bm!682096))

(declare-fun m!8043912 () Bool)

(assert (=> bm!682096 m!8043912))

(declare-fun m!8043914 () Bool)

(assert (=> b!7408676 m!8043914))

(declare-fun m!8043916 () Bool)

(assert (=> b!7408677 m!8043916))

(assert (=> b!7408598 d!2291089))

(declare-fun bs!1924188 () Bool)

(declare-fun d!2291095 () Bool)

(assert (= bs!1924188 (and d!2291095 b!7408599)))

(declare-fun lambda!459724 () Int)

(assert (=> bs!1924188 (= (= lt!2618515 a!2228) (= lambda!459724 lambda!459704))))

(assert (=> d!2291095 true))

(declare-fun flatMap!3206 ((Set Context!16692) Int) (Set Context!16692))

(assert (=> d!2291095 (= (derivationStepZipper!3680 z!3451 lt!2618515) (flatMap!3206 z!3451 lambda!459724))))

(declare-fun bs!1924189 () Bool)

(assert (= bs!1924189 d!2291095))

(declare-fun m!8043918 () Bool)

(assert (=> bs!1924189 m!8043918))

(assert (=> b!7408598 d!2291095))

(declare-fun d!2291101 () Bool)

(assert (=> d!2291101 (= (head!15199 s!7927) (h!78329 s!7927))))

(assert (=> b!7408598 d!2291101))

(declare-fun bs!1924190 () Bool)

(declare-fun d!2291103 () Bool)

(assert (= bs!1924190 (and d!2291103 b!7408608)))

(declare-fun lambda!459727 () Int)

(assert (=> bs!1924190 (not (= lambda!459727 lambda!459705))))

(assert (=> bs!1924190 (not (= lambda!459727 lambda!459706))))

(assert (=> d!2291103 true))

(assert (=> d!2291103 true))

(declare-fun order!29513 () Int)

(declare-fun order!29515 () Int)

(declare-fun dynLambda!29648 (Int Int) Int)

(declare-fun dynLambda!29649 (Int Int) Int)

(assert (=> d!2291103 (< (dynLambda!29648 order!29513 lambda!459704) (dynLambda!29649 order!29515 lambda!459727))))

(declare-fun exists!4770 ((Set Context!16692) Int) Bool)

(assert (=> d!2291103 (= (set.member lt!2618514 (flatMap!3206 z!3451 lambda!459704)) (exists!4770 z!3451 lambda!459727))))

(declare-fun lt!2618546 () Context!16692)

(declare-fun choose!57444 ((Set Context!16692) Int Context!16692) Context!16692)

(assert (=> d!2291103 (= lt!2618546 (choose!57444 z!3451 lambda!459704 lt!2618514))))

(assert (=> d!2291103 (= (flatMapPost!213 z!3451 lambda!459704 lt!2618514) lt!2618546)))

(declare-fun bs!1924191 () Bool)

(assert (= bs!1924191 d!2291103))

(declare-fun m!8043920 () Bool)

(assert (=> bs!1924191 m!8043920))

(declare-fun m!8043922 () Bool)

(assert (=> bs!1924191 m!8043922))

(declare-fun m!8043924 () Bool)

(assert (=> bs!1924191 m!8043924))

(declare-fun m!8043926 () Bool)

(assert (=> bs!1924191 m!8043926))

(assert (=> b!7408599 d!2291103))

(declare-fun bs!1924192 () Bool)

(declare-fun d!2291105 () Bool)

(assert (= bs!1924192 (and d!2291105 d!2291083)))

(declare-fun lambda!459728 () Int)

(assert (=> bs!1924192 (= lambda!459728 lambda!459720)))

(declare-fun bs!1924193 () Bool)

(assert (= bs!1924193 (and d!2291105 d!2291085)))

(assert (=> bs!1924193 (= lambda!459728 lambda!459721)))

(assert (=> d!2291105 (= (inv!91877 empty!3571) (forall!18190 (exprs!8846 empty!3571) lambda!459728))))

(declare-fun bs!1924194 () Bool)

(assert (= bs!1924194 d!2291105))

(declare-fun m!8043928 () Bool)

(assert (=> bs!1924194 m!8043928))

(assert (=> b!7408599 d!2291105))

(declare-fun d!2291107 () Bool)

(assert (=> d!2291107 (= (isEmpty!41046 (tail!14813 (exprs!8846 c!10532))) (is-Nil!71880 (tail!14813 (exprs!8846 c!10532))))))

(assert (=> b!7408603 d!2291107))

(declare-fun d!2291109 () Bool)

(assert (=> d!2291109 (= (tail!14813 (exprs!8846 c!10532)) (t!386563 (exprs!8846 c!10532)))))

(assert (=> b!7408603 d!2291109))

(declare-fun d!2291111 () Bool)

(declare-fun e!4431041 () Bool)

(assert (=> d!2291111 e!4431041))

(declare-fun res!2982660 () Bool)

(assert (=> d!2291111 (=> (not res!2982660) (not e!4431041))))

(declare-fun lt!2618549 () Context!16692)

(declare-fun dynLambda!29650 (Int Context!16692) Bool)

(assert (=> d!2291111 (= res!2982660 (dynLambda!29650 lambda!459705 lt!2618549))))

(declare-datatypes ((List!72008 0))(
  ( (Nil!71884) (Cons!71884 (h!78332 Context!16692) (t!386567 List!72008)) )
))
(declare-fun getWitness!2447 (List!72008 Int) Context!16692)

(declare-fun toList!11757 ((Set Context!16692)) List!72008)

(assert (=> d!2291111 (= lt!2618549 (getWitness!2447 (toList!11757 lt!2618516) lambda!459705))))

(assert (=> d!2291111 (exists!4770 lt!2618516 lambda!459705)))

(assert (=> d!2291111 (= (getWitness!2445 lt!2618516 lambda!459705) lt!2618549)))

(declare-fun b!7408684 () Bool)

(assert (=> b!7408684 (= e!4431041 (set.member lt!2618549 lt!2618516))))

(assert (= (and d!2291111 res!2982660) b!7408684))

(declare-fun b_lambda!286343 () Bool)

(assert (=> (not b_lambda!286343) (not d!2291111)))

(declare-fun m!8043932 () Bool)

(assert (=> d!2291111 m!8043932))

(declare-fun m!8043934 () Bool)

(assert (=> d!2291111 m!8043934))

(assert (=> d!2291111 m!8043934))

(declare-fun m!8043936 () Bool)

(assert (=> d!2291111 m!8043936))

(declare-fun m!8043938 () Bool)

(assert (=> d!2291111 m!8043938))

(declare-fun m!8043940 () Bool)

(assert (=> b!7408684 m!8043940))

(assert (=> b!7408608 d!2291111))

(declare-fun bs!1924196 () Bool)

(declare-fun d!2291115 () Bool)

(assert (= bs!1924196 (and d!2291115 b!7408608)))

(declare-fun lambda!459732 () Int)

(assert (=> bs!1924196 (not (= lambda!459732 lambda!459705))))

(assert (=> bs!1924196 (not (= lambda!459732 lambda!459706))))

(declare-fun bs!1924197 () Bool)

(assert (= bs!1924197 (and d!2291115 d!2291103)))

(assert (=> bs!1924197 (= (= lt!2618508 lt!2618514) (= lambda!459732 lambda!459727))))

(assert (=> d!2291115 true))

(assert (=> d!2291115 true))

(assert (=> d!2291115 (< (dynLambda!29648 order!29513 lambda!459704) (dynLambda!29649 order!29515 lambda!459732))))

(assert (=> d!2291115 (= (set.member lt!2618508 (flatMap!3206 z!3451 lambda!459704)) (exists!4770 z!3451 lambda!459732))))

(declare-fun lt!2618550 () Context!16692)

(assert (=> d!2291115 (= lt!2618550 (choose!57444 z!3451 lambda!459704 lt!2618508))))

(assert (=> d!2291115 (= (flatMapPost!213 z!3451 lambda!459704 lt!2618508) lt!2618550)))

(declare-fun bs!1924198 () Bool)

(assert (= bs!1924198 d!2291115))

(assert (=> bs!1924198 m!8043920))

(declare-fun m!8043942 () Bool)

(assert (=> bs!1924198 m!8043942))

(declare-fun m!8043944 () Bool)

(assert (=> bs!1924198 m!8043944))

(declare-fun m!8043946 () Bool)

(assert (=> bs!1924198 m!8043946))

(assert (=> b!7408608 d!2291115))

(declare-fun d!2291117 () Bool)

(declare-fun e!4431042 () Bool)

(assert (=> d!2291117 e!4431042))

(declare-fun res!2982661 () Bool)

(assert (=> d!2291117 (=> (not res!2982661) (not e!4431042))))

(declare-fun lt!2618551 () Context!16692)

(assert (=> d!2291117 (= res!2982661 (dynLambda!29650 lambda!459706 lt!2618551))))

(assert (=> d!2291117 (= lt!2618551 (getWitness!2447 (toList!11757 z!3451) lambda!459706))))

(assert (=> d!2291117 (exists!4770 z!3451 lambda!459706)))

(assert (=> d!2291117 (= (getWitness!2445 z!3451 lambda!459706) lt!2618551)))

(declare-fun b!7408685 () Bool)

(assert (=> b!7408685 (= e!4431042 (set.member lt!2618551 z!3451))))

(assert (= (and d!2291117 res!2982661) b!7408685))

(declare-fun b_lambda!286345 () Bool)

(assert (=> (not b_lambda!286345) (not d!2291117)))

(declare-fun m!8043948 () Bool)

(assert (=> d!2291117 m!8043948))

(declare-fun m!8043950 () Bool)

(assert (=> d!2291117 m!8043950))

(assert (=> d!2291117 m!8043950))

(declare-fun m!8043952 () Bool)

(assert (=> d!2291117 m!8043952))

(declare-fun m!8043954 () Bool)

(assert (=> d!2291117 m!8043954))

(declare-fun m!8043956 () Bool)

(assert (=> b!7408685 m!8043956))

(assert (=> b!7408608 d!2291117))

(declare-fun bs!1924199 () Bool)

(declare-fun d!2291119 () Bool)

(assert (= bs!1924199 (and d!2291119 d!2291083)))

(declare-fun lambda!459733 () Int)

(assert (=> bs!1924199 (= lambda!459733 lambda!459720)))

(declare-fun bs!1924200 () Bool)

(assert (= bs!1924200 (and d!2291119 d!2291085)))

(assert (=> bs!1924200 (= lambda!459733 lambda!459721)))

(declare-fun bs!1924201 () Bool)

(assert (= bs!1924201 (and d!2291119 d!2291105)))

(assert (=> bs!1924201 (= lambda!459733 lambda!459728)))

(assert (=> d!2291119 (= (inv!91877 setElem!56240) (forall!18190 (exprs!8846 setElem!56240) lambda!459733))))

(declare-fun bs!1924202 () Bool)

(assert (= bs!1924202 d!2291119))

(declare-fun m!8043958 () Bool)

(assert (=> bs!1924202 m!8043958))

(assert (=> setNonEmpty!56240 d!2291119))

(declare-fun d!2291121 () Bool)

(assert (=> d!2291121 (= (isEmpty!41047 (t!386564 s!7927)) (is-Nil!71881 (t!386564 s!7927)))))

(assert (=> b!7408604 d!2291121))

(declare-fun d!2291123 () Bool)

(assert (=> d!2291123 (= (head!15198 (exprs!8846 c!10532)) (h!78328 (exprs!8846 c!10532)))))

(assert (=> b!7408596 d!2291123))

(declare-fun b!7408690 () Bool)

(declare-fun e!4431045 () Bool)

(declare-fun tp!2119675 () Bool)

(declare-fun tp!2119676 () Bool)

(assert (=> b!7408690 (= e!4431045 (and tp!2119675 tp!2119676))))

(assert (=> b!7408597 (= tp!2119651 e!4431045)))

(assert (= (and b!7408597 (is-Cons!71880 (exprs!8846 empty!3571))) b!7408690))

(declare-fun b!7408691 () Bool)

(declare-fun e!4431046 () Bool)

(declare-fun tp!2119677 () Bool)

(declare-fun tp!2119678 () Bool)

(assert (=> b!7408691 (= e!4431046 (and tp!2119677 tp!2119678))))

(assert (=> b!7408601 (= tp!2119654 e!4431046)))

(assert (= (and b!7408601 (is-Cons!71880 (exprs!8846 setElem!56240))) b!7408691))

(declare-fun b!7408692 () Bool)

(declare-fun e!4431047 () Bool)

(declare-fun tp!2119679 () Bool)

(declare-fun tp!2119680 () Bool)

(assert (=> b!7408692 (= e!4431047 (and tp!2119679 tp!2119680))))

(assert (=> b!7408607 (= tp!2119653 e!4431047)))

(assert (= (and b!7408607 (is-Cons!71880 (exprs!8846 c!10532))) b!7408692))

(declare-fun condSetEmpty!56246 () Bool)

(assert (=> setNonEmpty!56240 (= condSetEmpty!56246 (= setRest!56240 (as set.empty (Set Context!16692))))))

(declare-fun setRes!56246 () Bool)

(assert (=> setNonEmpty!56240 (= tp!2119652 setRes!56246)))

(declare-fun setIsEmpty!56246 () Bool)

(assert (=> setIsEmpty!56246 setRes!56246))

(declare-fun setElem!56246 () Context!16692)

(declare-fun tp!2119685 () Bool)

(declare-fun e!4431054 () Bool)

(declare-fun setNonEmpty!56246 () Bool)

(assert (=> setNonEmpty!56246 (= setRes!56246 (and tp!2119685 (inv!91877 setElem!56246) e!4431054))))

(declare-fun setRest!56246 () (Set Context!16692))

(assert (=> setNonEmpty!56246 (= setRest!56240 (set.union (set.insert setElem!56246 (as set.empty (Set Context!16692))) setRest!56246))))

(declare-fun b!7408703 () Bool)

(declare-fun tp!2119686 () Bool)

(assert (=> b!7408703 (= e!4431054 tp!2119686)))

(assert (= (and setNonEmpty!56240 condSetEmpty!56246) setIsEmpty!56246))

(assert (= (and setNonEmpty!56240 (not condSetEmpty!56246)) setNonEmpty!56246))

(assert (= setNonEmpty!56246 b!7408703))

(declare-fun m!8043960 () Bool)

(assert (=> setNonEmpty!56246 m!8043960))

(declare-fun b!7408712 () Bool)

(declare-fun e!4431059 () Bool)

(declare-fun tp!2119689 () Bool)

(assert (=> b!7408712 (= e!4431059 (and tp_is_empty!49075 tp!2119689))))

(assert (=> b!7408605 (= tp!2119655 e!4431059)))

(assert (= (and b!7408605 (is-Cons!71881 (t!386564 s!7927))) b!7408712))

(declare-fun b_lambda!286347 () Bool)

(assert (= b_lambda!286343 (or b!7408608 b_lambda!286347)))

(declare-fun bs!1924203 () Bool)

(declare-fun d!2291125 () Bool)

(assert (= bs!1924203 (and d!2291125 b!7408608)))

(assert (=> bs!1924203 (= (dynLambda!29650 lambda!459705 lt!2618549) (not (= lt!2618549 lt!2618514)))))

(assert (=> d!2291111 d!2291125))

(declare-fun b_lambda!286349 () Bool)

(assert (= b_lambda!286345 (or b!7408608 b_lambda!286349)))

(declare-fun bs!1924204 () Bool)

(declare-fun d!2291127 () Bool)

(assert (= bs!1924204 (and d!2291127 b!7408608)))

(assert (=> bs!1924204 (= (dynLambda!29650 lambda!459706 lt!2618551) (set.member lt!2618508 (derivationStepZipperUp!2810 lt!2618551 lt!2618515)))))

(declare-fun m!8043962 () Bool)

(assert (=> bs!1924204 m!8043962))

(declare-fun m!8043964 () Bool)

(assert (=> bs!1924204 m!8043964))

(assert (=> d!2291117 d!2291127))

(push 1)

(assert (not setNonEmpty!56246))

(assert (not d!2291105))

(assert (not b!7408692))

(assert (not b_lambda!286349))

(assert (not d!2291117))

(assert (not d!2291095))

(assert (not d!2291111))

(assert (not d!2291103))

(assert (not b!7408703))

(assert (not b!7408677))

(assert (not bm!682096))

(assert (not d!2291085))

(assert (not bs!1924204))

(assert (not b!7408676))

(assert (not d!2291083))

(assert (not b!7408712))

(assert (not b_lambda!286347))

(assert (not d!2291115))

(assert (not b!7408691))

(assert (not b!7408690))

(assert (not d!2291119))

(assert tp_is_empty!49075)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291155 () Bool)

(declare-fun res!2982673 () Bool)

(declare-fun e!4431082 () Bool)

(assert (=> d!2291155 (=> res!2982673 e!4431082)))

(assert (=> d!2291155 (= res!2982673 (is-Nil!71880 (exprs!8846 empty!3571)))))

(assert (=> d!2291155 (= (forall!18190 (exprs!8846 empty!3571) lambda!459728) e!4431082)))

(declare-fun b!7408746 () Bool)

(declare-fun e!4431083 () Bool)

(assert (=> b!7408746 (= e!4431082 e!4431083)))

(declare-fun res!2982674 () Bool)

(assert (=> b!7408746 (=> (not res!2982674) (not e!4431083))))

(declare-fun dynLambda!29654 (Int Regex!19406) Bool)

(assert (=> b!7408746 (= res!2982674 (dynLambda!29654 lambda!459728 (h!78328 (exprs!8846 empty!3571))))))

(declare-fun b!7408747 () Bool)

(assert (=> b!7408747 (= e!4431083 (forall!18190 (t!386563 (exprs!8846 empty!3571)) lambda!459728))))

(assert (= (and d!2291155 (not res!2982673)) b!7408746))

(assert (= (and b!7408746 res!2982674) b!7408747))

(declare-fun b_lambda!286359 () Bool)

(assert (=> (not b_lambda!286359) (not b!7408746)))

(declare-fun m!8044020 () Bool)

(assert (=> b!7408746 m!8044020))

(declare-fun m!8044022 () Bool)

(assert (=> b!7408747 m!8044022))

(assert (=> d!2291105 d!2291155))

(declare-fun b!7408760 () Bool)

(declare-fun e!4431092 () Bool)

(declare-fun lt!2618564 () Context!16692)

(declare-fun contains!20845 (List!72008 Context!16692) Bool)

(assert (=> b!7408760 (= e!4431092 (contains!20845 (toList!11757 z!3451) lt!2618564))))

(declare-fun b!7408761 () Bool)

(declare-fun e!4431093 () Bool)

(assert (=> b!7408761 (= e!4431093 (dynLambda!29650 lambda!459706 (h!78332 (toList!11757 z!3451))))))

(declare-fun b!7408762 () Bool)

(declare-fun e!4431094 () Context!16692)

(assert (=> b!7408762 (= e!4431094 (h!78332 (toList!11757 z!3451)))))

(declare-fun b!7408763 () Bool)

(declare-fun e!4431095 () Context!16692)

(assert (=> b!7408763 (= e!4431094 e!4431095)))

(declare-fun c!1375136 () Bool)

(assert (=> b!7408763 (= c!1375136 (is-Cons!71884 (toList!11757 z!3451)))))

(declare-fun b!7408764 () Bool)

(assert (=> b!7408764 (= e!4431095 (getWitness!2447 (t!386567 (toList!11757 z!3451)) lambda!459706))))

(declare-fun b!7408765 () Bool)

(declare-fun lt!2618565 () Unit!165688)

(declare-fun Unit!165696 () Unit!165688)

(assert (=> b!7408765 (= lt!2618565 Unit!165696)))

(assert (=> b!7408765 false))

(declare-fun head!15202 (List!72008) Context!16692)

(assert (=> b!7408765 (= e!4431095 (head!15202 (toList!11757 z!3451)))))

(declare-fun d!2291157 () Bool)

(assert (=> d!2291157 e!4431092))

(declare-fun res!2982679 () Bool)

(assert (=> d!2291157 (=> (not res!2982679) (not e!4431092))))

(assert (=> d!2291157 (= res!2982679 (dynLambda!29650 lambda!459706 lt!2618564))))

(assert (=> d!2291157 (= lt!2618564 e!4431094)))

(declare-fun c!1375137 () Bool)

(assert (=> d!2291157 (= c!1375137 e!4431093)))

(declare-fun res!2982680 () Bool)

(assert (=> d!2291157 (=> (not res!2982680) (not e!4431093))))

(assert (=> d!2291157 (= res!2982680 (is-Cons!71884 (toList!11757 z!3451)))))

(declare-fun exists!4772 (List!72008 Int) Bool)

(assert (=> d!2291157 (exists!4772 (toList!11757 z!3451) lambda!459706)))

(assert (=> d!2291157 (= (getWitness!2447 (toList!11757 z!3451) lambda!459706) lt!2618564)))

(assert (= (and d!2291157 res!2982680) b!7408761))

(assert (= (and d!2291157 c!1375137) b!7408762))

(assert (= (and d!2291157 (not c!1375137)) b!7408763))

(assert (= (and b!7408763 c!1375136) b!7408764))

(assert (= (and b!7408763 (not c!1375136)) b!7408765))

(assert (= (and d!2291157 res!2982679) b!7408760))

(declare-fun b_lambda!286361 () Bool)

(assert (=> (not b_lambda!286361) (not b!7408761)))

(declare-fun b_lambda!286363 () Bool)

(assert (=> (not b_lambda!286363) (not d!2291157)))

(assert (=> b!7408765 m!8043950))

(declare-fun m!8044024 () Bool)

(assert (=> b!7408765 m!8044024))

(declare-fun m!8044026 () Bool)

(assert (=> d!2291157 m!8044026))

(assert (=> d!2291157 m!8043950))

(declare-fun m!8044028 () Bool)

(assert (=> d!2291157 m!8044028))

(declare-fun m!8044030 () Bool)

(assert (=> b!7408764 m!8044030))

(assert (=> b!7408760 m!8043950))

(declare-fun m!8044032 () Bool)

(assert (=> b!7408760 m!8044032))

(declare-fun m!8044034 () Bool)

(assert (=> b!7408761 m!8044034))

(assert (=> d!2291117 d!2291157))

(declare-fun d!2291159 () Bool)

(declare-fun e!4431098 () Bool)

(assert (=> d!2291159 e!4431098))

(declare-fun res!2982683 () Bool)

(assert (=> d!2291159 (=> (not res!2982683) (not e!4431098))))

(declare-fun lt!2618568 () List!72008)

(declare-fun noDuplicate!3104 (List!72008) Bool)

(assert (=> d!2291159 (= res!2982683 (noDuplicate!3104 lt!2618568))))

(declare-fun choose!57446 ((Set Context!16692)) List!72008)

(assert (=> d!2291159 (= lt!2618568 (choose!57446 z!3451))))

(assert (=> d!2291159 (= (toList!11757 z!3451) lt!2618568)))

(declare-fun b!7408768 () Bool)

(declare-fun content!15216 (List!72008) (Set Context!16692))

(assert (=> b!7408768 (= e!4431098 (= (content!15216 lt!2618568) z!3451))))

(assert (= (and d!2291159 res!2982683) b!7408768))

(declare-fun m!8044036 () Bool)

(assert (=> d!2291159 m!8044036))

(declare-fun m!8044038 () Bool)

(assert (=> d!2291159 m!8044038))

(declare-fun m!8044040 () Bool)

(assert (=> b!7408768 m!8044040))

(assert (=> d!2291117 d!2291159))

(declare-fun d!2291161 () Bool)

(declare-fun lt!2618571 () Bool)

(assert (=> d!2291161 (= lt!2618571 (exists!4772 (toList!11757 z!3451) lambda!459706))))

(declare-fun choose!57447 ((Set Context!16692) Int) Bool)

(assert (=> d!2291161 (= lt!2618571 (choose!57447 z!3451 lambda!459706))))

(assert (=> d!2291161 (= (exists!4770 z!3451 lambda!459706) lt!2618571)))

(declare-fun bs!1924223 () Bool)

(assert (= bs!1924223 d!2291161))

(assert (=> bs!1924223 m!8043950))

(assert (=> bs!1924223 m!8043950))

(assert (=> bs!1924223 m!8044028))

(declare-fun m!8044042 () Bool)

(assert (=> bs!1924223 m!8044042))

(assert (=> d!2291117 d!2291161))

(declare-fun d!2291163 () Bool)

(declare-fun c!1375150 () Bool)

(assert (=> d!2291163 (= c!1375150 (and (is-ElementMatch!19406 (h!78328 (exprs!8846 c!10532))) (= (c!1375103 (h!78328 (exprs!8846 c!10532))) lt!2618515)))))

(declare-fun e!4431111 () (Set Context!16692))

(assert (=> d!2291163 (= (derivationStepZipperDown!3202 (h!78328 (exprs!8846 c!10532)) (Context!16693 (t!386563 (exprs!8846 c!10532))) lt!2618515) e!4431111)))

(declare-fun b!7408791 () Bool)

(declare-fun e!4431116 () (Set Context!16692))

(declare-fun e!4431112 () (Set Context!16692))

(assert (=> b!7408791 (= e!4431116 e!4431112)))

(declare-fun c!1375151 () Bool)

(assert (=> b!7408791 (= c!1375151 (is-Concat!28251 (h!78328 (exprs!8846 c!10532))))))

(declare-fun bm!682112 () Bool)

(declare-fun call!682119 () List!72004)

(declare-fun call!682121 () List!72004)

(assert (=> bm!682112 (= call!682119 call!682121)))

(declare-fun b!7408792 () Bool)

(declare-fun c!1375149 () Bool)

(declare-fun e!4431113 () Bool)

(assert (=> b!7408792 (= c!1375149 e!4431113)))

(declare-fun res!2982686 () Bool)

(assert (=> b!7408792 (=> (not res!2982686) (not e!4431113))))

(assert (=> b!7408792 (= res!2982686 (is-Concat!28251 (h!78328 (exprs!8846 c!10532))))))

(declare-fun e!4431114 () (Set Context!16692))

(assert (=> b!7408792 (= e!4431114 e!4431116)))

(declare-fun b!7408793 () Bool)

(declare-fun e!4431115 () (Set Context!16692))

(declare-fun call!682117 () (Set Context!16692))

(assert (=> b!7408793 (= e!4431115 call!682117)))

(declare-fun c!1375152 () Bool)

(declare-fun bm!682113 () Bool)

(declare-fun call!682122 () (Set Context!16692))

(assert (=> bm!682113 (= call!682122 (derivationStepZipperDown!3202 (ite c!1375152 (regOne!39325 (h!78328 (exprs!8846 c!10532))) (ite c!1375149 (regTwo!39324 (h!78328 (exprs!8846 c!10532))) (ite c!1375151 (regOne!39324 (h!78328 (exprs!8846 c!10532))) (reg!19735 (h!78328 (exprs!8846 c!10532)))))) (ite (or c!1375152 c!1375149) (Context!16693 (t!386563 (exprs!8846 c!10532))) (Context!16693 call!682119)) lt!2618515))))

(declare-fun b!7408794 () Bool)

(assert (=> b!7408794 (= e!4431111 e!4431114)))

(assert (=> b!7408794 (= c!1375152 (is-Union!19406 (h!78328 (exprs!8846 c!10532))))))

(declare-fun b!7408795 () Bool)

(assert (=> b!7408795 (= e!4431115 (as set.empty (Set Context!16692)))))

(declare-fun b!7408796 () Bool)

(assert (=> b!7408796 (= e!4431111 (set.insert (Context!16693 (t!386563 (exprs!8846 c!10532))) (as set.empty (Set Context!16692))))))

(declare-fun bm!682114 () Bool)

(declare-fun call!682120 () (Set Context!16692))

(assert (=> bm!682114 (= call!682117 call!682120)))

(declare-fun b!7408797 () Bool)

(assert (=> b!7408797 (= e!4431113 (nullable!8450 (regOne!39324 (h!78328 (exprs!8846 c!10532)))))))

(declare-fun b!7408798 () Bool)

(declare-fun c!1375148 () Bool)

(assert (=> b!7408798 (= c!1375148 (is-Star!19406 (h!78328 (exprs!8846 c!10532))))))

(assert (=> b!7408798 (= e!4431112 e!4431115)))

(declare-fun b!7408799 () Bool)

(declare-fun call!682118 () (Set Context!16692))

(assert (=> b!7408799 (= e!4431114 (set.union call!682122 call!682118))))

(declare-fun bm!682115 () Bool)

(assert (=> bm!682115 (= call!682120 call!682122)))

(declare-fun b!7408800 () Bool)

(assert (=> b!7408800 (= e!4431112 call!682117)))

(declare-fun b!7408801 () Bool)

(assert (=> b!7408801 (= e!4431116 (set.union call!682118 call!682120))))

(declare-fun bm!682116 () Bool)

(declare-fun $colon$colon!3341 (List!72004 Regex!19406) List!72004)

(assert (=> bm!682116 (= call!682121 ($colon$colon!3341 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532)))) (ite (or c!1375149 c!1375151) (regTwo!39324 (h!78328 (exprs!8846 c!10532))) (h!78328 (exprs!8846 c!10532)))))))

(declare-fun bm!682117 () Bool)

(assert (=> bm!682117 (= call!682118 (derivationStepZipperDown!3202 (ite c!1375152 (regTwo!39325 (h!78328 (exprs!8846 c!10532))) (regOne!39324 (h!78328 (exprs!8846 c!10532)))) (ite c!1375152 (Context!16693 (t!386563 (exprs!8846 c!10532))) (Context!16693 call!682121)) lt!2618515))))

(assert (= (and d!2291163 c!1375150) b!7408796))

(assert (= (and d!2291163 (not c!1375150)) b!7408794))

(assert (= (and b!7408794 c!1375152) b!7408799))

(assert (= (and b!7408794 (not c!1375152)) b!7408792))

(assert (= (and b!7408792 res!2982686) b!7408797))

(assert (= (and b!7408792 c!1375149) b!7408801))

(assert (= (and b!7408792 (not c!1375149)) b!7408791))

(assert (= (and b!7408791 c!1375151) b!7408800))

(assert (= (and b!7408791 (not c!1375151)) b!7408798))

(assert (= (and b!7408798 c!1375148) b!7408793))

(assert (= (and b!7408798 (not c!1375148)) b!7408795))

(assert (= (or b!7408800 b!7408793) bm!682112))

(assert (= (or b!7408800 b!7408793) bm!682114))

(assert (= (or b!7408801 bm!682112) bm!682116))

(assert (= (or b!7408801 bm!682114) bm!682115))

(assert (= (or b!7408799 bm!682115) bm!682113))

(assert (= (or b!7408799 b!7408801) bm!682117))

(declare-fun m!8044044 () Bool)

(assert (=> bm!682116 m!8044044))

(declare-fun m!8044046 () Bool)

(assert (=> b!7408797 m!8044046))

(declare-fun m!8044048 () Bool)

(assert (=> b!7408796 m!8044048))

(declare-fun m!8044050 () Bool)

(assert (=> bm!682113 m!8044050))

(declare-fun m!8044052 () Bool)

(assert (=> bm!682117 m!8044052))

(assert (=> bm!682096 d!2291163))

(declare-fun d!2291165 () Bool)

(declare-fun c!1375154 () Bool)

(declare-fun e!4431117 () Bool)

(assert (=> d!2291165 (= c!1375154 e!4431117)))

(declare-fun res!2982687 () Bool)

(assert (=> d!2291165 (=> (not res!2982687) (not e!4431117))))

(assert (=> d!2291165 (= res!2982687 (is-Cons!71880 (exprs!8846 lt!2618551)))))

(declare-fun e!4431118 () (Set Context!16692))

(assert (=> d!2291165 (= (derivationStepZipperUp!2810 lt!2618551 lt!2618515) e!4431118)))

(declare-fun b!7408802 () Bool)

(declare-fun e!4431119 () (Set Context!16692))

(assert (=> b!7408802 (= e!4431119 (as set.empty (Set Context!16692)))))

(declare-fun bm!682118 () Bool)

(declare-fun call!682123 () (Set Context!16692))

(assert (=> bm!682118 (= call!682123 (derivationStepZipperDown!3202 (h!78328 (exprs!8846 lt!2618551)) (Context!16693 (t!386563 (exprs!8846 lt!2618551))) lt!2618515))))

(declare-fun b!7408803 () Bool)

(assert (=> b!7408803 (= e!4431118 e!4431119)))

(declare-fun c!1375153 () Bool)

(assert (=> b!7408803 (= c!1375153 (is-Cons!71880 (exprs!8846 lt!2618551)))))

(declare-fun b!7408804 () Bool)

(assert (=> b!7408804 (= e!4431118 (set.union call!682123 (derivationStepZipperUp!2810 (Context!16693 (t!386563 (exprs!8846 lt!2618551))) lt!2618515)))))

(declare-fun b!7408805 () Bool)

(assert (=> b!7408805 (= e!4431117 (nullable!8450 (h!78328 (exprs!8846 lt!2618551))))))

(declare-fun b!7408806 () Bool)

(assert (=> b!7408806 (= e!4431119 call!682123)))

(assert (= (and d!2291165 res!2982687) b!7408805))

(assert (= (and d!2291165 c!1375154) b!7408804))

(assert (= (and d!2291165 (not c!1375154)) b!7408803))

(assert (= (and b!7408803 c!1375153) b!7408806))

(assert (= (and b!7408803 (not c!1375153)) b!7408802))

(assert (= (or b!7408804 b!7408806) bm!682118))

(declare-fun m!8044054 () Bool)

(assert (=> bm!682118 m!8044054))

(declare-fun m!8044056 () Bool)

(assert (=> b!7408804 m!8044056))

(declare-fun m!8044058 () Bool)

(assert (=> b!7408805 m!8044058))

(assert (=> bs!1924204 d!2291165))

(declare-fun d!2291167 () Bool)

(declare-fun choose!57448 ((Set Context!16692) Int) (Set Context!16692))

(assert (=> d!2291167 (= (flatMap!3206 z!3451 lambda!459704) (choose!57448 z!3451 lambda!459704))))

(declare-fun bs!1924224 () Bool)

(assert (= bs!1924224 d!2291167))

(declare-fun m!8044060 () Bool)

(assert (=> bs!1924224 m!8044060))

(assert (=> d!2291103 d!2291167))

(declare-fun d!2291169 () Bool)

(declare-fun lt!2618572 () Bool)

(assert (=> d!2291169 (= lt!2618572 (exists!4772 (toList!11757 z!3451) lambda!459727))))

(assert (=> d!2291169 (= lt!2618572 (choose!57447 z!3451 lambda!459727))))

(assert (=> d!2291169 (= (exists!4770 z!3451 lambda!459727) lt!2618572)))

(declare-fun bs!1924225 () Bool)

(assert (= bs!1924225 d!2291169))

(assert (=> bs!1924225 m!8043950))

(assert (=> bs!1924225 m!8043950))

(declare-fun m!8044062 () Bool)

(assert (=> bs!1924225 m!8044062))

(declare-fun m!8044064 () Bool)

(assert (=> bs!1924225 m!8044064))

(assert (=> d!2291103 d!2291169))

(declare-fun bs!1924226 () Bool)

(declare-fun d!2291171 () Bool)

(assert (= bs!1924226 (and d!2291171 b!7408608)))

(declare-fun lambda!459746 () Int)

(assert (=> bs!1924226 (not (= lambda!459746 lambda!459705))))

(assert (=> bs!1924226 (not (= lambda!459746 lambda!459706))))

(declare-fun bs!1924227 () Bool)

(assert (= bs!1924227 (and d!2291171 d!2291103)))

(assert (=> bs!1924227 (= lambda!459746 lambda!459727)))

(declare-fun bs!1924228 () Bool)

(assert (= bs!1924228 (and d!2291171 d!2291115)))

(assert (=> bs!1924228 (= (= lt!2618514 lt!2618508) (= lambda!459746 lambda!459732))))

(assert (=> d!2291171 true))

(assert (=> d!2291171 true))

(assert (=> d!2291171 (< (dynLambda!29648 order!29513 lambda!459704) (dynLambda!29649 order!29515 lambda!459746))))

(assert (=> d!2291171 (= (set.member lt!2618514 (flatMap!3206 z!3451 lambda!459704)) (exists!4770 z!3451 lambda!459746))))

(declare-fun _$3!559 () Context!16692)

(declare-fun e!4431122 () Bool)

(assert (=> d!2291171 (and (inv!91877 _$3!559) e!4431122)))

(assert (=> d!2291171 (= (choose!57444 z!3451 lambda!459704 lt!2618514) _$3!559)))

(declare-fun b!7408810 () Bool)

(declare-fun tp!2119711 () Bool)

(assert (=> b!7408810 (= e!4431122 tp!2119711)))

(assert (= d!2291171 b!7408810))

(assert (=> d!2291171 m!8043920))

(assert (=> d!2291171 m!8043922))

(declare-fun m!8044066 () Bool)

(assert (=> d!2291171 m!8044066))

(declare-fun m!8044068 () Bool)

(assert (=> d!2291171 m!8044068))

(assert (=> d!2291103 d!2291171))

(declare-fun d!2291173 () Bool)

(declare-fun res!2982688 () Bool)

(declare-fun e!4431123 () Bool)

(assert (=> d!2291173 (=> res!2982688 e!4431123)))

(assert (=> d!2291173 (= res!2982688 (is-Nil!71880 (exprs!8846 setElem!56240)))))

(assert (=> d!2291173 (= (forall!18190 (exprs!8846 setElem!56240) lambda!459733) e!4431123)))

(declare-fun b!7408811 () Bool)

(declare-fun e!4431124 () Bool)

(assert (=> b!7408811 (= e!4431123 e!4431124)))

(declare-fun res!2982689 () Bool)

(assert (=> b!7408811 (=> (not res!2982689) (not e!4431124))))

(assert (=> b!7408811 (= res!2982689 (dynLambda!29654 lambda!459733 (h!78328 (exprs!8846 setElem!56240))))))

(declare-fun b!7408812 () Bool)

(assert (=> b!7408812 (= e!4431124 (forall!18190 (t!386563 (exprs!8846 setElem!56240)) lambda!459733))))

(assert (= (and d!2291173 (not res!2982688)) b!7408811))

(assert (= (and b!7408811 res!2982689) b!7408812))

(declare-fun b_lambda!286365 () Bool)

(assert (=> (not b_lambda!286365) (not b!7408811)))

(declare-fun m!8044070 () Bool)

(assert (=> b!7408811 m!8044070))

(declare-fun m!8044072 () Bool)

(assert (=> b!7408812 m!8044072))

(assert (=> d!2291119 d!2291173))

(declare-fun bs!1924229 () Bool)

(declare-fun d!2291175 () Bool)

(assert (= bs!1924229 (and d!2291175 d!2291083)))

(declare-fun lambda!459747 () Int)

(assert (=> bs!1924229 (= lambda!459747 lambda!459720)))

(declare-fun bs!1924230 () Bool)

(assert (= bs!1924230 (and d!2291175 d!2291085)))

(assert (=> bs!1924230 (= lambda!459747 lambda!459721)))

(declare-fun bs!1924231 () Bool)

(assert (= bs!1924231 (and d!2291175 d!2291105)))

(assert (=> bs!1924231 (= lambda!459747 lambda!459728)))

(declare-fun bs!1924232 () Bool)

(assert (= bs!1924232 (and d!2291175 d!2291119)))

(assert (=> bs!1924232 (= lambda!459747 lambda!459733)))

(assert (=> d!2291175 (= (inv!91877 setElem!56246) (forall!18190 (exprs!8846 setElem!56246) lambda!459747))))

(declare-fun bs!1924233 () Bool)

(assert (= bs!1924233 d!2291175))

(declare-fun m!8044074 () Bool)

(assert (=> bs!1924233 m!8044074))

(assert (=> setNonEmpty!56246 d!2291175))

(assert (=> d!2291115 d!2291167))

(declare-fun d!2291177 () Bool)

(declare-fun lt!2618573 () Bool)

(assert (=> d!2291177 (= lt!2618573 (exists!4772 (toList!11757 z!3451) lambda!459732))))

(assert (=> d!2291177 (= lt!2618573 (choose!57447 z!3451 lambda!459732))))

(assert (=> d!2291177 (= (exists!4770 z!3451 lambda!459732) lt!2618573)))

(declare-fun bs!1924234 () Bool)

(assert (= bs!1924234 d!2291177))

(assert (=> bs!1924234 m!8043950))

(assert (=> bs!1924234 m!8043950))

(declare-fun m!8044076 () Bool)

(assert (=> bs!1924234 m!8044076))

(declare-fun m!8044078 () Bool)

(assert (=> bs!1924234 m!8044078))

(assert (=> d!2291115 d!2291177))

(declare-fun bs!1924235 () Bool)

(declare-fun d!2291179 () Bool)

(assert (= bs!1924235 (and d!2291179 d!2291171)))

(declare-fun lambda!459748 () Int)

(assert (=> bs!1924235 (= (= lt!2618508 lt!2618514) (= lambda!459748 lambda!459746))))

(declare-fun bs!1924236 () Bool)

(assert (= bs!1924236 (and d!2291179 b!7408608)))

(assert (=> bs!1924236 (not (= lambda!459748 lambda!459705))))

(declare-fun bs!1924237 () Bool)

(assert (= bs!1924237 (and d!2291179 d!2291115)))

(assert (=> bs!1924237 (= lambda!459748 lambda!459732)))

(assert (=> bs!1924236 (not (= lambda!459748 lambda!459706))))

(declare-fun bs!1924238 () Bool)

(assert (= bs!1924238 (and d!2291179 d!2291103)))

(assert (=> bs!1924238 (= (= lt!2618508 lt!2618514) (= lambda!459748 lambda!459727))))

(assert (=> d!2291179 true))

(assert (=> d!2291179 true))

(assert (=> d!2291179 (< (dynLambda!29648 order!29513 lambda!459704) (dynLambda!29649 order!29515 lambda!459748))))

(assert (=> d!2291179 (= (set.member lt!2618508 (flatMap!3206 z!3451 lambda!459704)) (exists!4770 z!3451 lambda!459748))))

(declare-fun _$3!560 () Context!16692)

(declare-fun e!4431125 () Bool)

(assert (=> d!2291179 (and (inv!91877 _$3!560) e!4431125)))

(assert (=> d!2291179 (= (choose!57444 z!3451 lambda!459704 lt!2618508) _$3!560)))

(declare-fun b!7408813 () Bool)

(declare-fun tp!2119712 () Bool)

(assert (=> b!7408813 (= e!4431125 tp!2119712)))

(assert (= d!2291179 b!7408813))

(assert (=> d!2291179 m!8043920))

(assert (=> d!2291179 m!8043942))

(declare-fun m!8044080 () Bool)

(assert (=> d!2291179 m!8044080))

(declare-fun m!8044082 () Bool)

(assert (=> d!2291179 m!8044082))

(assert (=> d!2291115 d!2291179))

(declare-fun b!7408814 () Bool)

(declare-fun e!4431126 () Bool)

(declare-fun lt!2618574 () Context!16692)

(assert (=> b!7408814 (= e!4431126 (contains!20845 (toList!11757 lt!2618516) lt!2618574))))

(declare-fun b!7408815 () Bool)

(declare-fun e!4431127 () Bool)

(assert (=> b!7408815 (= e!4431127 (dynLambda!29650 lambda!459705 (h!78332 (toList!11757 lt!2618516))))))

(declare-fun b!7408816 () Bool)

(declare-fun e!4431128 () Context!16692)

(assert (=> b!7408816 (= e!4431128 (h!78332 (toList!11757 lt!2618516)))))

(declare-fun b!7408817 () Bool)

(declare-fun e!4431129 () Context!16692)

(assert (=> b!7408817 (= e!4431128 e!4431129)))

(declare-fun c!1375155 () Bool)

(assert (=> b!7408817 (= c!1375155 (is-Cons!71884 (toList!11757 lt!2618516)))))

(declare-fun b!7408818 () Bool)

(assert (=> b!7408818 (= e!4431129 (getWitness!2447 (t!386567 (toList!11757 lt!2618516)) lambda!459705))))

(declare-fun b!7408819 () Bool)

(declare-fun lt!2618575 () Unit!165688)

(declare-fun Unit!165697 () Unit!165688)

(assert (=> b!7408819 (= lt!2618575 Unit!165697)))

(assert (=> b!7408819 false))

(assert (=> b!7408819 (= e!4431129 (head!15202 (toList!11757 lt!2618516)))))

(declare-fun d!2291181 () Bool)

(assert (=> d!2291181 e!4431126))

(declare-fun res!2982690 () Bool)

(assert (=> d!2291181 (=> (not res!2982690) (not e!4431126))))

(assert (=> d!2291181 (= res!2982690 (dynLambda!29650 lambda!459705 lt!2618574))))

(assert (=> d!2291181 (= lt!2618574 e!4431128)))

(declare-fun c!1375156 () Bool)

(assert (=> d!2291181 (= c!1375156 e!4431127)))

(declare-fun res!2982691 () Bool)

(assert (=> d!2291181 (=> (not res!2982691) (not e!4431127))))

(assert (=> d!2291181 (= res!2982691 (is-Cons!71884 (toList!11757 lt!2618516)))))

(assert (=> d!2291181 (exists!4772 (toList!11757 lt!2618516) lambda!459705)))

(assert (=> d!2291181 (= (getWitness!2447 (toList!11757 lt!2618516) lambda!459705) lt!2618574)))

(assert (= (and d!2291181 res!2982691) b!7408815))

(assert (= (and d!2291181 c!1375156) b!7408816))

(assert (= (and d!2291181 (not c!1375156)) b!7408817))

(assert (= (and b!7408817 c!1375155) b!7408818))

(assert (= (and b!7408817 (not c!1375155)) b!7408819))

(assert (= (and d!2291181 res!2982690) b!7408814))

(declare-fun b_lambda!286367 () Bool)

(assert (=> (not b_lambda!286367) (not b!7408815)))

(declare-fun b_lambda!286369 () Bool)

(assert (=> (not b_lambda!286369) (not d!2291181)))

(assert (=> b!7408819 m!8043934))

(declare-fun m!8044084 () Bool)

(assert (=> b!7408819 m!8044084))

(declare-fun m!8044086 () Bool)

(assert (=> d!2291181 m!8044086))

(assert (=> d!2291181 m!8043934))

(declare-fun m!8044088 () Bool)

(assert (=> d!2291181 m!8044088))

(declare-fun m!8044090 () Bool)

(assert (=> b!7408818 m!8044090))

(assert (=> b!7408814 m!8043934))

(declare-fun m!8044092 () Bool)

(assert (=> b!7408814 m!8044092))

(declare-fun m!8044094 () Bool)

(assert (=> b!7408815 m!8044094))

(assert (=> d!2291111 d!2291181))

(declare-fun d!2291183 () Bool)

(declare-fun e!4431130 () Bool)

(assert (=> d!2291183 e!4431130))

(declare-fun res!2982692 () Bool)

(assert (=> d!2291183 (=> (not res!2982692) (not e!4431130))))

(declare-fun lt!2618576 () List!72008)

(assert (=> d!2291183 (= res!2982692 (noDuplicate!3104 lt!2618576))))

(assert (=> d!2291183 (= lt!2618576 (choose!57446 lt!2618516))))

(assert (=> d!2291183 (= (toList!11757 lt!2618516) lt!2618576)))

(declare-fun b!7408820 () Bool)

(assert (=> b!7408820 (= e!4431130 (= (content!15216 lt!2618576) lt!2618516))))

(assert (= (and d!2291183 res!2982692) b!7408820))

(declare-fun m!8044096 () Bool)

(assert (=> d!2291183 m!8044096))

(declare-fun m!8044098 () Bool)

(assert (=> d!2291183 m!8044098))

(declare-fun m!8044100 () Bool)

(assert (=> b!7408820 m!8044100))

(assert (=> d!2291111 d!2291183))

(declare-fun d!2291185 () Bool)

(declare-fun lt!2618577 () Bool)

(assert (=> d!2291185 (= lt!2618577 (exists!4772 (toList!11757 lt!2618516) lambda!459705))))

(assert (=> d!2291185 (= lt!2618577 (choose!57447 lt!2618516 lambda!459705))))

(assert (=> d!2291185 (= (exists!4770 lt!2618516 lambda!459705) lt!2618577)))

(declare-fun bs!1924239 () Bool)

(assert (= bs!1924239 d!2291185))

(assert (=> bs!1924239 m!8043934))

(assert (=> bs!1924239 m!8043934))

(assert (=> bs!1924239 m!8044088))

(declare-fun m!8044102 () Bool)

(assert (=> bs!1924239 m!8044102))

(assert (=> d!2291111 d!2291185))

(declare-fun d!2291187 () Bool)

(declare-fun res!2982693 () Bool)

(declare-fun e!4431131 () Bool)

(assert (=> d!2291187 (=> res!2982693 e!4431131)))

(assert (=> d!2291187 (= res!2982693 (is-Nil!71880 (exprs!8846 c!10532)))))

(assert (=> d!2291187 (= (forall!18190 (exprs!8846 c!10532) lambda!459721) e!4431131)))

(declare-fun b!7408821 () Bool)

(declare-fun e!4431132 () Bool)

(assert (=> b!7408821 (= e!4431131 e!4431132)))

(declare-fun res!2982694 () Bool)

(assert (=> b!7408821 (=> (not res!2982694) (not e!4431132))))

(assert (=> b!7408821 (= res!2982694 (dynLambda!29654 lambda!459721 (h!78328 (exprs!8846 c!10532))))))

(declare-fun b!7408822 () Bool)

(assert (=> b!7408822 (= e!4431132 (forall!18190 (t!386563 (exprs!8846 c!10532)) lambda!459721))))

(assert (= (and d!2291187 (not res!2982693)) b!7408821))

(assert (= (and b!7408821 res!2982694) b!7408822))

(declare-fun b_lambda!286371 () Bool)

(assert (=> (not b_lambda!286371) (not b!7408821)))

(declare-fun m!8044104 () Bool)

(assert (=> b!7408821 m!8044104))

(declare-fun m!8044106 () Bool)

(assert (=> b!7408822 m!8044106))

(assert (=> d!2291085 d!2291187))

(declare-fun d!2291189 () Bool)

(assert (=> d!2291189 (= (flatMap!3206 z!3451 lambda!459724) (choose!57448 z!3451 lambda!459724))))

(declare-fun bs!1924240 () Bool)

(assert (= bs!1924240 d!2291189))

(declare-fun m!8044108 () Bool)

(assert (=> bs!1924240 m!8044108))

(assert (=> d!2291095 d!2291189))

(declare-fun d!2291191 () Bool)

(declare-fun res!2982695 () Bool)

(declare-fun e!4431133 () Bool)

(assert (=> d!2291191 (=> res!2982695 e!4431133)))

(assert (=> d!2291191 (= res!2982695 (is-Nil!71880 (exprs!8846 lt!2618514)))))

(assert (=> d!2291191 (= (forall!18190 (exprs!8846 lt!2618514) lambda!459720) e!4431133)))

(declare-fun b!7408823 () Bool)

(declare-fun e!4431134 () Bool)

(assert (=> b!7408823 (= e!4431133 e!4431134)))

(declare-fun res!2982696 () Bool)

(assert (=> b!7408823 (=> (not res!2982696) (not e!4431134))))

(assert (=> b!7408823 (= res!2982696 (dynLambda!29654 lambda!459720 (h!78328 (exprs!8846 lt!2618514))))))

(declare-fun b!7408824 () Bool)

(assert (=> b!7408824 (= e!4431134 (forall!18190 (t!386563 (exprs!8846 lt!2618514)) lambda!459720))))

(assert (= (and d!2291191 (not res!2982695)) b!7408823))

(assert (= (and b!7408823 res!2982696) b!7408824))

(declare-fun b_lambda!286373 () Bool)

(assert (=> (not b_lambda!286373) (not b!7408823)))

(declare-fun m!8044110 () Bool)

(assert (=> b!7408823 m!8044110))

(declare-fun m!8044112 () Bool)

(assert (=> b!7408824 m!8044112))

(assert (=> d!2291083 d!2291191))

(declare-fun d!2291193 () Bool)

(declare-fun c!1375158 () Bool)

(declare-fun e!4431135 () Bool)

(assert (=> d!2291193 (= c!1375158 e!4431135)))

(declare-fun res!2982697 () Bool)

(assert (=> d!2291193 (=> (not res!2982697) (not e!4431135))))

(assert (=> d!2291193 (= res!2982697 (is-Cons!71880 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532))))))))

(declare-fun e!4431136 () (Set Context!16692))

(assert (=> d!2291193 (= (derivationStepZipperUp!2810 (Context!16693 (t!386563 (exprs!8846 c!10532))) lt!2618515) e!4431136)))

(declare-fun b!7408825 () Bool)

(declare-fun e!4431137 () (Set Context!16692))

(assert (=> b!7408825 (= e!4431137 (as set.empty (Set Context!16692)))))

(declare-fun bm!682119 () Bool)

(declare-fun call!682124 () (Set Context!16692))

(assert (=> bm!682119 (= call!682124 (derivationStepZipperDown!3202 (h!78328 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532))))) (Context!16693 (t!386563 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532)))))) lt!2618515))))

(declare-fun b!7408826 () Bool)

(assert (=> b!7408826 (= e!4431136 e!4431137)))

(declare-fun c!1375157 () Bool)

(assert (=> b!7408826 (= c!1375157 (is-Cons!71880 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532))))))))

(declare-fun b!7408827 () Bool)

(assert (=> b!7408827 (= e!4431136 (set.union call!682124 (derivationStepZipperUp!2810 (Context!16693 (t!386563 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532)))))) lt!2618515)))))

(declare-fun b!7408828 () Bool)

(assert (=> b!7408828 (= e!4431135 (nullable!8450 (h!78328 (exprs!8846 (Context!16693 (t!386563 (exprs!8846 c!10532)))))))))

(declare-fun b!7408829 () Bool)

(assert (=> b!7408829 (= e!4431137 call!682124)))

(assert (= (and d!2291193 res!2982697) b!7408828))

(assert (= (and d!2291193 c!1375158) b!7408827))

(assert (= (and d!2291193 (not c!1375158)) b!7408826))

(assert (= (and b!7408826 c!1375157) b!7408829))

(assert (= (and b!7408826 (not c!1375157)) b!7408825))

(assert (= (or b!7408827 b!7408829) bm!682119))

(declare-fun m!8044114 () Bool)

(assert (=> bm!682119 m!8044114))

(declare-fun m!8044116 () Bool)

(assert (=> b!7408827 m!8044116))

(declare-fun m!8044118 () Bool)

(assert (=> b!7408828 m!8044118))

(assert (=> b!7408676 d!2291193))

(declare-fun d!2291195 () Bool)

(declare-fun nullableFct!3402 (Regex!19406) Bool)

(assert (=> d!2291195 (= (nullable!8450 (h!78328 (exprs!8846 c!10532))) (nullableFct!3402 (h!78328 (exprs!8846 c!10532))))))

(declare-fun bs!1924241 () Bool)

(assert (= bs!1924241 d!2291195))

(declare-fun m!8044120 () Bool)

(assert (=> bs!1924241 m!8044120))

(assert (=> b!7408677 d!2291195))

(declare-fun e!4431140 () Bool)

(assert (=> b!7408690 (= tp!2119675 e!4431140)))

(declare-fun b!7408841 () Bool)

(declare-fun tp!2119724 () Bool)

(declare-fun tp!2119727 () Bool)

(assert (=> b!7408841 (= e!4431140 (and tp!2119724 tp!2119727))))

(declare-fun b!7408843 () Bool)

(declare-fun tp!2119726 () Bool)

(declare-fun tp!2119725 () Bool)

(assert (=> b!7408843 (= e!4431140 (and tp!2119726 tp!2119725))))

(declare-fun b!7408842 () Bool)

(declare-fun tp!2119723 () Bool)

(assert (=> b!7408842 (= e!4431140 tp!2119723)))

(declare-fun b!7408840 () Bool)

(assert (=> b!7408840 (= e!4431140 tp_is_empty!49075)))

(assert (= (and b!7408690 (is-ElementMatch!19406 (h!78328 (exprs!8846 empty!3571)))) b!7408840))

(assert (= (and b!7408690 (is-Concat!28251 (h!78328 (exprs!8846 empty!3571)))) b!7408841))

(assert (= (and b!7408690 (is-Star!19406 (h!78328 (exprs!8846 empty!3571)))) b!7408842))

(assert (= (and b!7408690 (is-Union!19406 (h!78328 (exprs!8846 empty!3571)))) b!7408843))

(declare-fun b!7408844 () Bool)

(declare-fun e!4431141 () Bool)

(declare-fun tp!2119728 () Bool)

(declare-fun tp!2119729 () Bool)

(assert (=> b!7408844 (= e!4431141 (and tp!2119728 tp!2119729))))

(assert (=> b!7408690 (= tp!2119676 e!4431141)))

(assert (= (and b!7408690 (is-Cons!71880 (t!386563 (exprs!8846 empty!3571)))) b!7408844))

(declare-fun b!7408845 () Bool)

(declare-fun e!4431142 () Bool)

(declare-fun tp!2119730 () Bool)

(assert (=> b!7408845 (= e!4431142 (and tp_is_empty!49075 tp!2119730))))

(assert (=> b!7408712 (= tp!2119689 e!4431142)))

(assert (= (and b!7408712 (is-Cons!71881 (t!386564 (t!386564 s!7927)))) b!7408845))

(declare-fun e!4431143 () Bool)

(assert (=> b!7408692 (= tp!2119679 e!4431143)))

(declare-fun b!7408847 () Bool)

(declare-fun tp!2119732 () Bool)

(declare-fun tp!2119735 () Bool)

(assert (=> b!7408847 (= e!4431143 (and tp!2119732 tp!2119735))))

(declare-fun b!7408849 () Bool)

(declare-fun tp!2119734 () Bool)

(declare-fun tp!2119733 () Bool)

(assert (=> b!7408849 (= e!4431143 (and tp!2119734 tp!2119733))))

(declare-fun b!7408848 () Bool)

(declare-fun tp!2119731 () Bool)

(assert (=> b!7408848 (= e!4431143 tp!2119731)))

(declare-fun b!7408846 () Bool)

(assert (=> b!7408846 (= e!4431143 tp_is_empty!49075)))

(assert (= (and b!7408692 (is-ElementMatch!19406 (h!78328 (exprs!8846 c!10532)))) b!7408846))

(assert (= (and b!7408692 (is-Concat!28251 (h!78328 (exprs!8846 c!10532)))) b!7408847))

(assert (= (and b!7408692 (is-Star!19406 (h!78328 (exprs!8846 c!10532)))) b!7408848))

(assert (= (and b!7408692 (is-Union!19406 (h!78328 (exprs!8846 c!10532)))) b!7408849))

(declare-fun b!7408850 () Bool)

(declare-fun e!4431144 () Bool)

(declare-fun tp!2119736 () Bool)

(declare-fun tp!2119737 () Bool)

(assert (=> b!7408850 (= e!4431144 (and tp!2119736 tp!2119737))))

(assert (=> b!7408692 (= tp!2119680 e!4431144)))

(assert (= (and b!7408692 (is-Cons!71880 (t!386563 (exprs!8846 c!10532)))) b!7408850))

(declare-fun condSetEmpty!56250 () Bool)

(assert (=> setNonEmpty!56246 (= condSetEmpty!56250 (= setRest!56246 (as set.empty (Set Context!16692))))))

(declare-fun setRes!56250 () Bool)

(assert (=> setNonEmpty!56246 (= tp!2119685 setRes!56250)))

(declare-fun setIsEmpty!56250 () Bool)

(assert (=> setIsEmpty!56250 setRes!56250))

(declare-fun e!4431145 () Bool)

(declare-fun setNonEmpty!56250 () Bool)

(declare-fun tp!2119738 () Bool)

(declare-fun setElem!56250 () Context!16692)

(assert (=> setNonEmpty!56250 (= setRes!56250 (and tp!2119738 (inv!91877 setElem!56250) e!4431145))))

(declare-fun setRest!56250 () (Set Context!16692))

(assert (=> setNonEmpty!56250 (= setRest!56246 (set.union (set.insert setElem!56250 (as set.empty (Set Context!16692))) setRest!56250))))

(declare-fun b!7408851 () Bool)

(declare-fun tp!2119739 () Bool)

(assert (=> b!7408851 (= e!4431145 tp!2119739)))

(assert (= (and setNonEmpty!56246 condSetEmpty!56250) setIsEmpty!56250))

(assert (= (and setNonEmpty!56246 (not condSetEmpty!56250)) setNonEmpty!56250))

(assert (= setNonEmpty!56250 b!7408851))

(declare-fun m!8044122 () Bool)

(assert (=> setNonEmpty!56250 m!8044122))

(declare-fun b!7408852 () Bool)

(declare-fun e!4431146 () Bool)

(declare-fun tp!2119740 () Bool)

(declare-fun tp!2119741 () Bool)

(assert (=> b!7408852 (= e!4431146 (and tp!2119740 tp!2119741))))

(assert (=> b!7408703 (= tp!2119686 e!4431146)))

(assert (= (and b!7408703 (is-Cons!71880 (exprs!8846 setElem!56246))) b!7408852))

(declare-fun e!4431147 () Bool)

(assert (=> b!7408691 (= tp!2119677 e!4431147)))

(declare-fun b!7408854 () Bool)

(declare-fun tp!2119743 () Bool)

(declare-fun tp!2119746 () Bool)

(assert (=> b!7408854 (= e!4431147 (and tp!2119743 tp!2119746))))

(declare-fun b!7408856 () Bool)

(declare-fun tp!2119745 () Bool)

(declare-fun tp!2119744 () Bool)

(assert (=> b!7408856 (= e!4431147 (and tp!2119745 tp!2119744))))

(declare-fun b!7408855 () Bool)

(declare-fun tp!2119742 () Bool)

(assert (=> b!7408855 (= e!4431147 tp!2119742)))

(declare-fun b!7408853 () Bool)

(assert (=> b!7408853 (= e!4431147 tp_is_empty!49075)))

(assert (= (and b!7408691 (is-ElementMatch!19406 (h!78328 (exprs!8846 setElem!56240)))) b!7408853))

(assert (= (and b!7408691 (is-Concat!28251 (h!78328 (exprs!8846 setElem!56240)))) b!7408854))

(assert (= (and b!7408691 (is-Star!19406 (h!78328 (exprs!8846 setElem!56240)))) b!7408855))

(assert (= (and b!7408691 (is-Union!19406 (h!78328 (exprs!8846 setElem!56240)))) b!7408856))

(declare-fun b!7408857 () Bool)

(declare-fun e!4431148 () Bool)

(declare-fun tp!2119747 () Bool)

(declare-fun tp!2119748 () Bool)

(assert (=> b!7408857 (= e!4431148 (and tp!2119747 tp!2119748))))

(assert (=> b!7408691 (= tp!2119678 e!4431148)))

(assert (= (and b!7408691 (is-Cons!71880 (t!386563 (exprs!8846 setElem!56240)))) b!7408857))

(declare-fun b_lambda!286375 () Bool)

(assert (= b_lambda!286367 (or b!7408608 b_lambda!286375)))

(declare-fun bs!1924242 () Bool)

(declare-fun d!2291197 () Bool)

(assert (= bs!1924242 (and d!2291197 b!7408608)))

(assert (=> bs!1924242 (= (dynLambda!29650 lambda!459705 (h!78332 (toList!11757 lt!2618516))) (not (= (h!78332 (toList!11757 lt!2618516)) lt!2618514)))))

(assert (=> b!7408815 d!2291197))

(declare-fun b_lambda!286377 () Bool)

(assert (= b_lambda!286371 (or d!2291085 b_lambda!286377)))

(declare-fun bs!1924243 () Bool)

(declare-fun d!2291199 () Bool)

(assert (= bs!1924243 (and d!2291199 d!2291085)))

(declare-fun validRegex!9960 (Regex!19406) Bool)

(assert (=> bs!1924243 (= (dynLambda!29654 lambda!459721 (h!78328 (exprs!8846 c!10532))) (validRegex!9960 (h!78328 (exprs!8846 c!10532))))))

(declare-fun m!8044124 () Bool)

(assert (=> bs!1924243 m!8044124))

(assert (=> b!7408821 d!2291199))

(declare-fun b_lambda!286379 () Bool)

(assert (= b_lambda!286369 (or b!7408608 b_lambda!286379)))

(declare-fun bs!1924244 () Bool)

(declare-fun d!2291201 () Bool)

(assert (= bs!1924244 (and d!2291201 b!7408608)))

(assert (=> bs!1924244 (= (dynLambda!29650 lambda!459705 lt!2618574) (not (= lt!2618574 lt!2618514)))))

(assert (=> d!2291181 d!2291201))

(declare-fun b_lambda!286381 () Bool)

(assert (= b_lambda!286359 (or d!2291105 b_lambda!286381)))

(declare-fun bs!1924245 () Bool)

(declare-fun d!2291203 () Bool)

(assert (= bs!1924245 (and d!2291203 d!2291105)))

(assert (=> bs!1924245 (= (dynLambda!29654 lambda!459728 (h!78328 (exprs!8846 empty!3571))) (validRegex!9960 (h!78328 (exprs!8846 empty!3571))))))

(declare-fun m!8044126 () Bool)

(assert (=> bs!1924245 m!8044126))

(assert (=> b!7408746 d!2291203))

(declare-fun b_lambda!286383 () Bool)

(assert (= b_lambda!286361 (or b!7408608 b_lambda!286383)))

(declare-fun bs!1924246 () Bool)

(declare-fun d!2291205 () Bool)

(assert (= bs!1924246 (and d!2291205 b!7408608)))

(assert (=> bs!1924246 (= (dynLambda!29650 lambda!459706 (h!78332 (toList!11757 z!3451))) (set.member lt!2618508 (derivationStepZipperUp!2810 (h!78332 (toList!11757 z!3451)) lt!2618515)))))

(declare-fun m!8044128 () Bool)

(assert (=> bs!1924246 m!8044128))

(declare-fun m!8044130 () Bool)

(assert (=> bs!1924246 m!8044130))

(assert (=> b!7408761 d!2291205))

(declare-fun b_lambda!286385 () Bool)

(assert (= b_lambda!286365 (or d!2291119 b_lambda!286385)))

(declare-fun bs!1924247 () Bool)

(declare-fun d!2291207 () Bool)

(assert (= bs!1924247 (and d!2291207 d!2291119)))

(assert (=> bs!1924247 (= (dynLambda!29654 lambda!459733 (h!78328 (exprs!8846 setElem!56240))) (validRegex!9960 (h!78328 (exprs!8846 setElem!56240))))))

(declare-fun m!8044132 () Bool)

(assert (=> bs!1924247 m!8044132))

(assert (=> b!7408811 d!2291207))

(declare-fun b_lambda!286387 () Bool)

(assert (= b_lambda!286363 (or b!7408608 b_lambda!286387)))

(declare-fun bs!1924248 () Bool)

(declare-fun d!2291209 () Bool)

(assert (= bs!1924248 (and d!2291209 b!7408608)))

(assert (=> bs!1924248 (= (dynLambda!29650 lambda!459706 lt!2618564) (set.member lt!2618508 (derivationStepZipperUp!2810 lt!2618564 lt!2618515)))))

(declare-fun m!8044134 () Bool)

(assert (=> bs!1924248 m!8044134))

(declare-fun m!8044136 () Bool)

(assert (=> bs!1924248 m!8044136))

(assert (=> d!2291157 d!2291209))

(declare-fun b_lambda!286389 () Bool)

(assert (= b_lambda!286373 (or d!2291083 b_lambda!286389)))

(declare-fun bs!1924249 () Bool)

(declare-fun d!2291211 () Bool)

(assert (= bs!1924249 (and d!2291211 d!2291083)))

(assert (=> bs!1924249 (= (dynLambda!29654 lambda!459720 (h!78328 (exprs!8846 lt!2618514))) (validRegex!9960 (h!78328 (exprs!8846 lt!2618514))))))

(declare-fun m!8044138 () Bool)

(assert (=> bs!1924249 m!8044138))

(assert (=> b!7408823 d!2291211))

(push 1)

(assert (not b!7408805))

(assert (not b!7408814))

(assert (not d!2291167))

(assert (not b_lambda!286381))

(assert (not b!7408824))

(assert (not d!2291159))

(assert (not b!7408764))

(assert (not b!7408760))

(assert (not b!7408851))

(assert (not b!7408828))

(assert (not b!7408848))

(assert (not setNonEmpty!56250))

(assert (not b!7408820))

(assert (not b!7408843))

(assert (not b_lambda!286377))

(assert (not b!7408818))

(assert (not d!2291179))

(assert (not b!7408857))

(assert (not d!2291195))

(assert (not b!7408856))

(assert (not b!7408797))

(assert (not b_lambda!286379))

(assert (not d!2291161))

(assert (not b!7408844))

(assert (not b!7408747))

(assert (not b!7408845))

(assert (not d!2291185))

(assert (not bs!1924243))

(assert (not b_lambda!286349))

(assert (not bm!682119))

(assert (not bs!1924245))

(assert (not d!2291181))

(assert (not bs!1924247))

(assert (not d!2291157))

(assert (not b!7408768))

(assert (not b!7408827))

(assert (not d!2291171))

(assert (not b!7408852))

(assert (not b!7408842))

(assert (not b!7408812))

(assert (not bs!1924248))

(assert (not b!7408810))

(assert (not d!2291189))

(assert (not b!7408847))

(assert (not b_lambda!286347))

(assert (not b_lambda!286389))

(assert (not bm!682118))

(assert (not b!7408841))

(assert (not b!7408850))

(assert (not b!7408822))

(assert (not b!7408849))

(assert (not bm!682116))

(assert (not bs!1924249))

(assert (not d!2291183))

(assert (not b_lambda!286385))

(assert (not b!7408855))

(assert tp_is_empty!49075)

(assert (not b_lambda!286375))

(assert (not bm!682113))

(assert (not bm!682117))

(assert (not b!7408854))

(assert (not b!7408813))

(assert (not b!7408819))

(assert (not b_lambda!286383))

(assert (not b_lambda!286387))

(assert (not bs!1924246))

(assert (not d!2291175))

(assert (not d!2291177))

(assert (not b!7408804))

(assert (not b!7408765))

(assert (not d!2291169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

