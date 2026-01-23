; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692094 () Bool)

(assert start!692094)

(declare-fun b!7110325 () Bool)

(assert (=> b!7110325 true))

(declare-fun b!7110323 () Bool)

(declare-fun e!4273113 () Bool)

(declare-fun e!4273119 () Bool)

(assert (=> b!7110323 (= e!4273113 e!4273119)))

(declare-fun res!2901761 () Bool)

(assert (=> b!7110323 (=> (not res!2901761) (not e!4273119))))

(declare-datatypes ((C!36134 0))(
  ( (C!36135 (val!27773 Int)) )
))
(declare-datatypes ((Regex!17932 0))(
  ( (ElementMatch!17932 (c!1326941 C!36134)) (Concat!26777 (regOne!36376 Regex!17932) (regTwo!36376 Regex!17932)) (EmptyExpr!17932) (Star!17932 (reg!18261 Regex!17932)) (EmptyLang!17932) (Union!17932 (regOne!36377 Regex!17932) (regTwo!36377 Regex!17932)) )
))
(declare-datatypes ((List!68893 0))(
  ( (Nil!68769) (Cons!68769 (h!75217 Regex!17932) (t!382722 List!68893)) )
))
(declare-datatypes ((Context!13852 0))(
  ( (Context!13853 (exprs!7426 List!68893)) )
))
(declare-fun lt!2559690 () (Set Context!13852))

(declare-fun a!1901 () C!36134)

(declare-fun lt!2559694 () (Set Context!13852))

(declare-fun r!11554 () Regex!17932)

(declare-fun lt!2559695 () Context!13852)

(declare-fun derivationStepZipperDown!2447 (Regex!17932 Context!13852 C!36134) (Set Context!13852))

(assert (=> b!7110323 (= res!2901761 (= (derivationStepZipperDown!2447 r!11554 lt!2559695 a!1901) (set.union lt!2559690 lt!2559694)))))

(assert (=> b!7110323 (= lt!2559694 (derivationStepZipperDown!2447 (regTwo!36376 r!11554) lt!2559695 a!1901))))

(declare-fun lt!2559699 () List!68893)

(declare-fun $colon$colon!2790 (List!68893 Regex!17932) List!68893)

(assert (=> b!7110323 (= lt!2559690 (derivationStepZipperDown!2447 (regOne!36376 r!11554) (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554))) a!1901))))

(declare-fun b!7110324 () Bool)

(declare-fun inv!87694 (Context!13852) Bool)

(assert (=> b!7110324 (= e!4273119 (not (inv!87694 lt!2559695)))))

(declare-fun c!9994 () Context!13852)

(declare-datatypes ((Unit!162535 0))(
  ( (Unit!162536) )
))
(declare-fun lt!2559700 () Unit!162535)

(declare-fun lambda!431895 () Int)

(declare-fun auxCtx!45 () Context!13852)

(declare-fun lemmaConcatPreservesForall!1217 (List!68893 List!68893 Int) Unit!162535)

(assert (=> b!7110324 (= lt!2559700 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(declare-fun lt!2559687 () (Set Context!13852))

(declare-fun lambda!431894 () Int)

(declare-fun lt!2559686 () (Set Context!13852))

(declare-fun map!16273 ((Set Context!13852) Int) (Set Context!13852))

(assert (=> b!7110324 (= (set.union (map!16273 lt!2559687 lambda!431894) (map!16273 lt!2559686 lambda!431894)) (map!16273 (set.union lt!2559687 lt!2559686) lambda!431894))))

(declare-fun lt!2559696 () Unit!162535)

(declare-fun lemmaMapAssociative!31 ((Set Context!13852) (Set Context!13852) Int) Unit!162535)

(assert (=> b!7110324 (= lt!2559696 (lemmaMapAssociative!31 lt!2559687 lt!2559686 lambda!431894))))

(declare-fun appendTo!931 ((Set Context!13852) Context!13852) (Set Context!13852))

(assert (=> b!7110324 (= lt!2559694 (appendTo!931 lt!2559686 auxCtx!45))))

(assert (=> b!7110324 (= lt!2559686 (derivationStepZipperDown!2447 (regTwo!36376 r!11554) c!9994 a!1901))))

(declare-fun lt!2559701 () Unit!162535)

(assert (=> b!7110324 (= lt!2559701 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(declare-fun lt!2559698 () Unit!162535)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!229 (Context!13852 Regex!17932 C!36134 Context!13852) Unit!162535)

(assert (=> b!7110324 (= lt!2559698 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!229 c!9994 (regTwo!36376 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2559693 () List!68893)

(assert (=> b!7110324 (= (derivationStepZipperDown!2447 (regOne!36376 r!11554) (Context!13853 lt!2559693) a!1901) (appendTo!931 lt!2559687 auxCtx!45))))

(declare-fun lt!2559688 () Context!13852)

(assert (=> b!7110324 (= lt!2559687 (derivationStepZipperDown!2447 (regOne!36376 r!11554) lt!2559688 a!1901))))

(declare-fun lt!2559685 () List!68893)

(declare-fun ++!16084 (List!68893 List!68893) List!68893)

(assert (=> b!7110324 (= lt!2559693 (++!16084 lt!2559685 (exprs!7426 auxCtx!45)))))

(declare-fun lt!2559691 () Unit!162535)

(assert (=> b!7110324 (= lt!2559691 (lemmaConcatPreservesForall!1217 lt!2559685 (exprs!7426 auxCtx!45) lambda!431895))))

(declare-fun lt!2559689 () Unit!162535)

(assert (=> b!7110324 (= lt!2559689 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!229 lt!2559688 (regOne!36376 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7110324 (= lt!2559688 (Context!13853 lt!2559685))))

(assert (=> b!7110324 (= lt!2559685 ($colon$colon!2790 (exprs!7426 c!9994) (regTwo!36376 r!11554)))))

(declare-fun e!4273118 () Bool)

(declare-fun e!4273116 () Bool)

(assert (=> b!7110325 (= e!4273118 e!4273116)))

(declare-fun res!2901765 () Bool)

(assert (=> b!7110325 (=> (not res!2901765) (not e!4273116))))

(assert (=> b!7110325 (= res!2901765 (and (or (not (is-ElementMatch!17932 r!11554)) (not (= (c!1326941 r!11554) a!1901))) (not (is-Union!17932 r!11554)) (is-Concat!26777 r!11554)))))

(declare-fun b!7110326 () Bool)

(declare-fun e!4273114 () Bool)

(declare-fun tp!1955961 () Bool)

(assert (=> b!7110326 (= e!4273114 tp!1955961)))

(declare-fun b!7110327 () Bool)

(declare-fun e!4273115 () Bool)

(declare-fun tp!1955963 () Bool)

(declare-fun tp!1955964 () Bool)

(assert (=> b!7110327 (= e!4273115 (and tp!1955963 tp!1955964))))

(declare-fun b!7110328 () Bool)

(declare-fun tp!1955965 () Bool)

(assert (=> b!7110328 (= e!4273115 tp!1955965)))

(declare-fun b!7110330 () Bool)

(declare-fun res!2901762 () Bool)

(assert (=> b!7110330 (=> (not res!2901762) (not e!4273116))))

(declare-fun nullable!7569 (Regex!17932) Bool)

(assert (=> b!7110330 (= res!2901762 (nullable!7569 (regOne!36376 r!11554)))))

(declare-fun b!7110331 () Bool)

(declare-fun tp!1955962 () Bool)

(declare-fun tp!1955960 () Bool)

(assert (=> b!7110331 (= e!4273115 (and tp!1955962 tp!1955960))))

(declare-fun b!7110332 () Bool)

(declare-fun e!4273117 () Bool)

(declare-fun tp!1955959 () Bool)

(assert (=> b!7110332 (= e!4273117 tp!1955959)))

(declare-fun b!7110333 () Bool)

(declare-fun tp_is_empty!45097 () Bool)

(assert (=> b!7110333 (= e!4273115 tp_is_empty!45097)))

(declare-fun b!7110329 () Bool)

(assert (=> b!7110329 (= e!4273116 e!4273113)))

(declare-fun res!2901764 () Bool)

(assert (=> b!7110329 (=> (not res!2901764) (not e!4273113))))

(declare-fun validRegex!9205 (Regex!17932) Bool)

(assert (=> b!7110329 (= res!2901764 (validRegex!9205 (regTwo!36376 r!11554)))))

(declare-fun lt!2559702 () Unit!162535)

(assert (=> b!7110329 (= lt!2559702 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(assert (=> b!7110329 (= lt!2559695 (Context!13853 lt!2559699))))

(assert (=> b!7110329 (= lt!2559699 (++!16084 (exprs!7426 c!9994) (exprs!7426 auxCtx!45)))))

(declare-fun lt!2559692 () Unit!162535)

(assert (=> b!7110329 (= lt!2559692 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(declare-fun lt!2559697 () Unit!162535)

(assert (=> b!7110329 (= lt!2559697 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(declare-fun res!2901763 () Bool)

(assert (=> start!692094 (=> (not res!2901763) (not e!4273118))))

(assert (=> start!692094 (= res!2901763 (validRegex!9205 r!11554))))

(assert (=> start!692094 e!4273118))

(assert (=> start!692094 e!4273115))

(assert (=> start!692094 (and (inv!87694 c!9994) e!4273114)))

(assert (=> start!692094 tp_is_empty!45097))

(assert (=> start!692094 (and (inv!87694 auxCtx!45) e!4273117)))

(assert (= (and start!692094 res!2901763) b!7110325))

(assert (= (and b!7110325 res!2901765) b!7110330))

(assert (= (and b!7110330 res!2901762) b!7110329))

(assert (= (and b!7110329 res!2901764) b!7110323))

(assert (= (and b!7110323 res!2901761) b!7110324))

(assert (= (and start!692094 (is-ElementMatch!17932 r!11554)) b!7110333))

(assert (= (and start!692094 (is-Concat!26777 r!11554)) b!7110331))

(assert (= (and start!692094 (is-Star!17932 r!11554)) b!7110328))

(assert (= (and start!692094 (is-Union!17932 r!11554)) b!7110327))

(assert (= start!692094 b!7110326))

(assert (= start!692094 b!7110332))

(declare-fun m!7831608 () Bool)

(assert (=> b!7110324 m!7831608))

(declare-fun m!7831610 () Bool)

(assert (=> b!7110324 m!7831610))

(declare-fun m!7831612 () Bool)

(assert (=> b!7110324 m!7831612))

(declare-fun m!7831614 () Bool)

(assert (=> b!7110324 m!7831614))

(declare-fun m!7831616 () Bool)

(assert (=> b!7110324 m!7831616))

(declare-fun m!7831618 () Bool)

(assert (=> b!7110324 m!7831618))

(declare-fun m!7831620 () Bool)

(assert (=> b!7110324 m!7831620))

(declare-fun m!7831622 () Bool)

(assert (=> b!7110324 m!7831622))

(assert (=> b!7110324 m!7831614))

(declare-fun m!7831624 () Bool)

(assert (=> b!7110324 m!7831624))

(declare-fun m!7831626 () Bool)

(assert (=> b!7110324 m!7831626))

(declare-fun m!7831628 () Bool)

(assert (=> b!7110324 m!7831628))

(declare-fun m!7831630 () Bool)

(assert (=> b!7110324 m!7831630))

(declare-fun m!7831632 () Bool)

(assert (=> b!7110324 m!7831632))

(declare-fun m!7831634 () Bool)

(assert (=> b!7110324 m!7831634))

(declare-fun m!7831636 () Bool)

(assert (=> b!7110324 m!7831636))

(declare-fun m!7831638 () Bool)

(assert (=> b!7110324 m!7831638))

(declare-fun m!7831640 () Bool)

(assert (=> b!7110323 m!7831640))

(declare-fun m!7831642 () Bool)

(assert (=> b!7110323 m!7831642))

(declare-fun m!7831644 () Bool)

(assert (=> b!7110323 m!7831644))

(declare-fun m!7831646 () Bool)

(assert (=> b!7110323 m!7831646))

(declare-fun m!7831648 () Bool)

(assert (=> b!7110330 m!7831648))

(assert (=> b!7110329 m!7831614))

(declare-fun m!7831650 () Bool)

(assert (=> b!7110329 m!7831650))

(declare-fun m!7831652 () Bool)

(assert (=> b!7110329 m!7831652))

(assert (=> b!7110329 m!7831614))

(assert (=> b!7110329 m!7831614))

(declare-fun m!7831654 () Bool)

(assert (=> start!692094 m!7831654))

(declare-fun m!7831656 () Bool)

(assert (=> start!692094 m!7831656))

(declare-fun m!7831658 () Bool)

(assert (=> start!692094 m!7831658))

(push 1)

(assert (not b!7110330))

(assert (not b!7110332))

(assert (not b!7110329))

(assert (not b!7110327))

(assert (not b!7110328))

(assert (not b!7110331))

(assert (not start!692094))

(assert (not b!7110324))

(assert tp_is_empty!45097)

(assert (not b!7110323))

(assert (not b!7110326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220072 () Bool)

(declare-fun nullableFct!2923 (Regex!17932) Bool)

(assert (=> d!2220072 (= (nullable!7569 (regOne!36376 r!11554)) (nullableFct!2923 (regOne!36376 r!11554)))))

(declare-fun bs!1885041 () Bool)

(assert (= bs!1885041 d!2220072))

(declare-fun m!7831712 () Bool)

(assert (=> bs!1885041 m!7831712))

(assert (=> b!7110330 d!2220072))

(declare-fun b!7110389 () Bool)

(declare-fun res!2901793 () Bool)

(declare-fun e!4273159 () Bool)

(assert (=> b!7110389 (=> res!2901793 e!4273159)))

(assert (=> b!7110389 (= res!2901793 (not (is-Concat!26777 r!11554)))))

(declare-fun e!4273160 () Bool)

(assert (=> b!7110389 (= e!4273160 e!4273159)))

(declare-fun b!7110390 () Bool)

(declare-fun e!4273155 () Bool)

(declare-fun call!648688 () Bool)

(assert (=> b!7110390 (= e!4273155 call!648688)))

(declare-fun call!648687 () Bool)

(declare-fun bm!648681 () Bool)

(declare-fun c!1326948 () Bool)

(declare-fun c!1326947 () Bool)

(assert (=> bm!648681 (= call!648687 (validRegex!9205 (ite c!1326948 (reg!18261 r!11554) (ite c!1326947 (regTwo!36377 r!11554) (regOne!36376 r!11554)))))))

(declare-fun bm!648682 () Bool)

(declare-fun call!648686 () Bool)

(assert (=> bm!648682 (= call!648686 (validRegex!9205 (ite c!1326947 (regOne!36377 r!11554) (regTwo!36376 r!11554))))))

(declare-fun b!7110391 () Bool)

(declare-fun e!4273156 () Bool)

(assert (=> b!7110391 (= e!4273156 call!648686)))

(declare-fun d!2220074 () Bool)

(declare-fun res!2901795 () Bool)

(declare-fun e!4273158 () Bool)

(assert (=> d!2220074 (=> res!2901795 e!4273158)))

(assert (=> d!2220074 (= res!2901795 (is-ElementMatch!17932 r!11554))))

(assert (=> d!2220074 (= (validRegex!9205 r!11554) e!4273158)))

(declare-fun b!7110392 () Bool)

(assert (=> b!7110392 (= e!4273159 e!4273156)))

(declare-fun res!2901792 () Bool)

(assert (=> b!7110392 (=> (not res!2901792) (not e!4273156))))

(assert (=> b!7110392 (= res!2901792 call!648688)))

(declare-fun bm!648683 () Bool)

(assert (=> bm!648683 (= call!648688 call!648687)))

(declare-fun b!7110393 () Bool)

(declare-fun res!2901794 () Bool)

(assert (=> b!7110393 (=> (not res!2901794) (not e!4273155))))

(assert (=> b!7110393 (= res!2901794 call!648686)))

(assert (=> b!7110393 (= e!4273160 e!4273155)))

(declare-fun b!7110394 () Bool)

(declare-fun e!4273161 () Bool)

(assert (=> b!7110394 (= e!4273158 e!4273161)))

(assert (=> b!7110394 (= c!1326948 (is-Star!17932 r!11554))))

(declare-fun b!7110395 () Bool)

(declare-fun e!4273157 () Bool)

(assert (=> b!7110395 (= e!4273157 call!648687)))

(declare-fun b!7110396 () Bool)

(assert (=> b!7110396 (= e!4273161 e!4273157)))

(declare-fun res!2901796 () Bool)

(assert (=> b!7110396 (= res!2901796 (not (nullable!7569 (reg!18261 r!11554))))))

(assert (=> b!7110396 (=> (not res!2901796) (not e!4273157))))

(declare-fun b!7110397 () Bool)

(assert (=> b!7110397 (= e!4273161 e!4273160)))

(assert (=> b!7110397 (= c!1326947 (is-Union!17932 r!11554))))

(assert (= (and d!2220074 (not res!2901795)) b!7110394))

(assert (= (and b!7110394 c!1326948) b!7110396))

(assert (= (and b!7110394 (not c!1326948)) b!7110397))

(assert (= (and b!7110396 res!2901796) b!7110395))

(assert (= (and b!7110397 c!1326947) b!7110393))

(assert (= (and b!7110397 (not c!1326947)) b!7110389))

(assert (= (and b!7110393 res!2901794) b!7110390))

(assert (= (and b!7110389 (not res!2901793)) b!7110392))

(assert (= (and b!7110392 res!2901792) b!7110391))

(assert (= (or b!7110393 b!7110391) bm!648682))

(assert (= (or b!7110390 b!7110392) bm!648683))

(assert (= (or b!7110395 bm!648683) bm!648681))

(declare-fun m!7831714 () Bool)

(assert (=> bm!648681 m!7831714))

(declare-fun m!7831716 () Bool)

(assert (=> bm!648682 m!7831716))

(declare-fun m!7831718 () Bool)

(assert (=> b!7110396 m!7831718))

(assert (=> start!692094 d!2220074))

(declare-fun bs!1885042 () Bool)

(declare-fun d!2220076 () Bool)

(assert (= bs!1885042 (and d!2220076 b!7110329)))

(declare-fun lambda!431916 () Int)

(assert (=> bs!1885042 (= lambda!431916 lambda!431895)))

(declare-fun forall!16832 (List!68893 Int) Bool)

(assert (=> d!2220076 (= (inv!87694 c!9994) (forall!16832 (exprs!7426 c!9994) lambda!431916))))

(declare-fun bs!1885043 () Bool)

(assert (= bs!1885043 d!2220076))

(declare-fun m!7831720 () Bool)

(assert (=> bs!1885043 m!7831720))

(assert (=> start!692094 d!2220076))

(declare-fun bs!1885044 () Bool)

(declare-fun d!2220078 () Bool)

(assert (= bs!1885044 (and d!2220078 b!7110329)))

(declare-fun lambda!431917 () Int)

(assert (=> bs!1885044 (= lambda!431917 lambda!431895)))

(declare-fun bs!1885045 () Bool)

(assert (= bs!1885045 (and d!2220078 d!2220076)))

(assert (=> bs!1885045 (= lambda!431917 lambda!431916)))

(assert (=> d!2220078 (= (inv!87694 auxCtx!45) (forall!16832 (exprs!7426 auxCtx!45) lambda!431917))))

(declare-fun bs!1885046 () Bool)

(assert (= bs!1885046 d!2220078))

(declare-fun m!7831722 () Bool)

(assert (=> bs!1885046 m!7831722))

(assert (=> start!692094 d!2220078))

(declare-fun bs!1885047 () Bool)

(declare-fun d!2220080 () Bool)

(assert (= bs!1885047 (and d!2220080 b!7110329)))

(declare-fun lambda!431918 () Int)

(assert (=> bs!1885047 (= lambda!431918 lambda!431895)))

(declare-fun bs!1885048 () Bool)

(assert (= bs!1885048 (and d!2220080 d!2220076)))

(assert (=> bs!1885048 (= lambda!431918 lambda!431916)))

(declare-fun bs!1885049 () Bool)

(assert (= bs!1885049 (and d!2220080 d!2220078)))

(assert (=> bs!1885049 (= lambda!431918 lambda!431917)))

(assert (=> d!2220080 (= (inv!87694 lt!2559695) (forall!16832 (exprs!7426 lt!2559695) lambda!431918))))

(declare-fun bs!1885050 () Bool)

(assert (= bs!1885050 d!2220080))

(declare-fun m!7831724 () Bool)

(assert (=> bs!1885050 m!7831724))

(assert (=> b!7110324 d!2220080))

(declare-fun b!7110420 () Bool)

(declare-fun e!4273176 () (Set Context!13852))

(declare-fun e!4273174 () (Set Context!13852))

(assert (=> b!7110420 (= e!4273176 e!4273174)))

(declare-fun c!1326961 () Bool)

(assert (=> b!7110420 (= c!1326961 (is-Union!17932 (regOne!36376 r!11554)))))

(declare-fun b!7110421 () Bool)

(declare-fun e!4273177 () (Set Context!13852))

(declare-fun call!648703 () (Set Context!13852))

(assert (=> b!7110421 (= e!4273177 call!648703)))

(declare-fun b!7110422 () Bool)

(declare-fun call!648705 () (Set Context!13852))

(declare-fun call!648701 () (Set Context!13852))

(assert (=> b!7110422 (= e!4273174 (set.union call!648705 call!648701))))

(declare-fun b!7110423 () Bool)

(declare-fun e!4273178 () (Set Context!13852))

(assert (=> b!7110423 (= e!4273178 call!648703)))

(declare-fun d!2220082 () Bool)

(declare-fun c!1326962 () Bool)

(assert (=> d!2220082 (= c!1326962 (and (is-ElementMatch!17932 (regOne!36376 r!11554)) (= (c!1326941 (regOne!36376 r!11554)) a!1901)))))

(assert (=> d!2220082 (= (derivationStepZipperDown!2447 (regOne!36376 r!11554) (Context!13853 lt!2559693) a!1901) e!4273176)))

(declare-fun bm!648696 () Bool)

(declare-fun call!648704 () (Set Context!13852))

(assert (=> bm!648696 (= call!648704 call!648701)))

(declare-fun call!648706 () List!68893)

(declare-fun bm!648697 () Bool)

(assert (=> bm!648697 (= call!648705 (derivationStepZipperDown!2447 (ite c!1326961 (regOne!36377 (regOne!36376 r!11554)) (regOne!36376 (regOne!36376 r!11554))) (ite c!1326961 (Context!13853 lt!2559693) (Context!13853 call!648706)) a!1901))))

(declare-fun b!7110424 () Bool)

(declare-fun c!1326963 () Bool)

(assert (=> b!7110424 (= c!1326963 (is-Star!17932 (regOne!36376 r!11554)))))

(assert (=> b!7110424 (= e!4273177 e!4273178)))

(declare-fun b!7110425 () Bool)

(declare-fun e!4273175 () Bool)

(assert (=> b!7110425 (= e!4273175 (nullable!7569 (regOne!36376 (regOne!36376 r!11554))))))

(declare-fun b!7110426 () Bool)

(declare-fun e!4273179 () (Set Context!13852))

(assert (=> b!7110426 (= e!4273179 (set.union call!648705 call!648704))))

(declare-fun bm!648698 () Bool)

(declare-fun call!648702 () List!68893)

(assert (=> bm!648698 (= call!648702 call!648706)))

(declare-fun b!7110427 () Bool)

(assert (=> b!7110427 (= e!4273176 (set.insert (Context!13853 lt!2559693) (as set.empty (Set Context!13852))))))

(declare-fun bm!648699 () Bool)

(declare-fun c!1326959 () Bool)

(declare-fun c!1326960 () Bool)

(assert (=> bm!648699 (= call!648706 ($colon$colon!2790 (exprs!7426 (Context!13853 lt!2559693)) (ite (or c!1326960 c!1326959) (regTwo!36376 (regOne!36376 r!11554)) (regOne!36376 r!11554))))))

(declare-fun b!7110428 () Bool)

(assert (=> b!7110428 (= e!4273178 (as set.empty (Set Context!13852)))))

(declare-fun b!7110429 () Bool)

(assert (=> b!7110429 (= c!1326960 e!4273175)))

(declare-fun res!2901800 () Bool)

(assert (=> b!7110429 (=> (not res!2901800) (not e!4273175))))

(assert (=> b!7110429 (= res!2901800 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (=> b!7110429 (= e!4273174 e!4273179)))

(declare-fun bm!648700 () Bool)

(assert (=> bm!648700 (= call!648703 call!648704)))

(declare-fun bm!648701 () Bool)

(assert (=> bm!648701 (= call!648701 (derivationStepZipperDown!2447 (ite c!1326961 (regTwo!36377 (regOne!36376 r!11554)) (ite c!1326960 (regTwo!36376 (regOne!36376 r!11554)) (ite c!1326959 (regOne!36376 (regOne!36376 r!11554)) (reg!18261 (regOne!36376 r!11554))))) (ite (or c!1326961 c!1326960) (Context!13853 lt!2559693) (Context!13853 call!648702)) a!1901))))

(declare-fun b!7110430 () Bool)

(assert (=> b!7110430 (= e!4273179 e!4273177)))

(assert (=> b!7110430 (= c!1326959 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (= (and d!2220082 c!1326962) b!7110427))

(assert (= (and d!2220082 (not c!1326962)) b!7110420))

(assert (= (and b!7110420 c!1326961) b!7110422))

(assert (= (and b!7110420 (not c!1326961)) b!7110429))

(assert (= (and b!7110429 res!2901800) b!7110425))

(assert (= (and b!7110429 c!1326960) b!7110426))

(assert (= (and b!7110429 (not c!1326960)) b!7110430))

(assert (= (and b!7110430 c!1326959) b!7110421))

(assert (= (and b!7110430 (not c!1326959)) b!7110424))

(assert (= (and b!7110424 c!1326963) b!7110423))

(assert (= (and b!7110424 (not c!1326963)) b!7110428))

(assert (= (or b!7110421 b!7110423) bm!648698))

(assert (= (or b!7110421 b!7110423) bm!648700))

(assert (= (or b!7110426 bm!648700) bm!648696))

(assert (= (or b!7110426 bm!648698) bm!648699))

(assert (= (or b!7110422 bm!648696) bm!648701))

(assert (= (or b!7110422 b!7110426) bm!648697))

(declare-fun m!7831726 () Bool)

(assert (=> bm!648701 m!7831726))

(declare-fun m!7831728 () Bool)

(assert (=> b!7110425 m!7831728))

(declare-fun m!7831730 () Bool)

(assert (=> b!7110427 m!7831730))

(declare-fun m!7831732 () Bool)

(assert (=> bm!648697 m!7831732))

(declare-fun m!7831734 () Bool)

(assert (=> bm!648699 m!7831734))

(assert (=> b!7110324 d!2220082))

(declare-fun b!7110431 () Bool)

(declare-fun e!4273182 () (Set Context!13852))

(declare-fun e!4273180 () (Set Context!13852))

(assert (=> b!7110431 (= e!4273182 e!4273180)))

(declare-fun c!1326966 () Bool)

(assert (=> b!7110431 (= c!1326966 (is-Union!17932 (regTwo!36376 r!11554)))))

(declare-fun b!7110432 () Bool)

(declare-fun e!4273183 () (Set Context!13852))

(declare-fun call!648709 () (Set Context!13852))

(assert (=> b!7110432 (= e!4273183 call!648709)))

(declare-fun b!7110433 () Bool)

(declare-fun call!648711 () (Set Context!13852))

(declare-fun call!648707 () (Set Context!13852))

(assert (=> b!7110433 (= e!4273180 (set.union call!648711 call!648707))))

(declare-fun b!7110434 () Bool)

(declare-fun e!4273184 () (Set Context!13852))

(assert (=> b!7110434 (= e!4273184 call!648709)))

(declare-fun d!2220084 () Bool)

(declare-fun c!1326967 () Bool)

(assert (=> d!2220084 (= c!1326967 (and (is-ElementMatch!17932 (regTwo!36376 r!11554)) (= (c!1326941 (regTwo!36376 r!11554)) a!1901)))))

(assert (=> d!2220084 (= (derivationStepZipperDown!2447 (regTwo!36376 r!11554) c!9994 a!1901) e!4273182)))

(declare-fun bm!648702 () Bool)

(declare-fun call!648710 () (Set Context!13852))

(assert (=> bm!648702 (= call!648710 call!648707)))

(declare-fun call!648712 () List!68893)

(declare-fun bm!648703 () Bool)

(assert (=> bm!648703 (= call!648711 (derivationStepZipperDown!2447 (ite c!1326966 (regOne!36377 (regTwo!36376 r!11554)) (regOne!36376 (regTwo!36376 r!11554))) (ite c!1326966 c!9994 (Context!13853 call!648712)) a!1901))))

(declare-fun b!7110435 () Bool)

(declare-fun c!1326968 () Bool)

(assert (=> b!7110435 (= c!1326968 (is-Star!17932 (regTwo!36376 r!11554)))))

(assert (=> b!7110435 (= e!4273183 e!4273184)))

(declare-fun b!7110436 () Bool)

(declare-fun e!4273181 () Bool)

(assert (=> b!7110436 (= e!4273181 (nullable!7569 (regOne!36376 (regTwo!36376 r!11554))))))

(declare-fun b!7110437 () Bool)

(declare-fun e!4273185 () (Set Context!13852))

(assert (=> b!7110437 (= e!4273185 (set.union call!648711 call!648710))))

(declare-fun bm!648704 () Bool)

(declare-fun call!648708 () List!68893)

(assert (=> bm!648704 (= call!648708 call!648712)))

(declare-fun b!7110438 () Bool)

(assert (=> b!7110438 (= e!4273182 (set.insert c!9994 (as set.empty (Set Context!13852))))))

(declare-fun bm!648705 () Bool)

(declare-fun c!1326964 () Bool)

(declare-fun c!1326965 () Bool)

(assert (=> bm!648705 (= call!648712 ($colon$colon!2790 (exprs!7426 c!9994) (ite (or c!1326965 c!1326964) (regTwo!36376 (regTwo!36376 r!11554)) (regTwo!36376 r!11554))))))

(declare-fun b!7110439 () Bool)

(assert (=> b!7110439 (= e!4273184 (as set.empty (Set Context!13852)))))

(declare-fun b!7110440 () Bool)

(assert (=> b!7110440 (= c!1326965 e!4273181)))

(declare-fun res!2901801 () Bool)

(assert (=> b!7110440 (=> (not res!2901801) (not e!4273181))))

(assert (=> b!7110440 (= res!2901801 (is-Concat!26777 (regTwo!36376 r!11554)))))

(assert (=> b!7110440 (= e!4273180 e!4273185)))

(declare-fun bm!648706 () Bool)

(assert (=> bm!648706 (= call!648709 call!648710)))

(declare-fun bm!648707 () Bool)

(assert (=> bm!648707 (= call!648707 (derivationStepZipperDown!2447 (ite c!1326966 (regTwo!36377 (regTwo!36376 r!11554)) (ite c!1326965 (regTwo!36376 (regTwo!36376 r!11554)) (ite c!1326964 (regOne!36376 (regTwo!36376 r!11554)) (reg!18261 (regTwo!36376 r!11554))))) (ite (or c!1326966 c!1326965) c!9994 (Context!13853 call!648708)) a!1901))))

(declare-fun b!7110441 () Bool)

(assert (=> b!7110441 (= e!4273185 e!4273183)))

(assert (=> b!7110441 (= c!1326964 (is-Concat!26777 (regTwo!36376 r!11554)))))

(assert (= (and d!2220084 c!1326967) b!7110438))

(assert (= (and d!2220084 (not c!1326967)) b!7110431))

(assert (= (and b!7110431 c!1326966) b!7110433))

(assert (= (and b!7110431 (not c!1326966)) b!7110440))

(assert (= (and b!7110440 res!2901801) b!7110436))

(assert (= (and b!7110440 c!1326965) b!7110437))

(assert (= (and b!7110440 (not c!1326965)) b!7110441))

(assert (= (and b!7110441 c!1326964) b!7110432))

(assert (= (and b!7110441 (not c!1326964)) b!7110435))

(assert (= (and b!7110435 c!1326968) b!7110434))

(assert (= (and b!7110435 (not c!1326968)) b!7110439))

(assert (= (or b!7110432 b!7110434) bm!648704))

(assert (= (or b!7110432 b!7110434) bm!648706))

(assert (= (or b!7110437 bm!648706) bm!648702))

(assert (= (or b!7110437 bm!648704) bm!648705))

(assert (= (or b!7110433 bm!648702) bm!648707))

(assert (= (or b!7110433 b!7110437) bm!648703))

(declare-fun m!7831736 () Bool)

(assert (=> bm!648707 m!7831736))

(declare-fun m!7831738 () Bool)

(assert (=> b!7110436 m!7831738))

(declare-fun m!7831740 () Bool)

(assert (=> b!7110438 m!7831740))

(declare-fun m!7831742 () Bool)

(assert (=> bm!648703 m!7831742))

(declare-fun m!7831744 () Bool)

(assert (=> bm!648705 m!7831744))

(assert (=> b!7110324 d!2220084))

(declare-fun bs!1885051 () Bool)

(declare-fun d!2220086 () Bool)

(assert (= bs!1885051 (and d!2220086 b!7110329)))

(declare-fun lambda!431921 () Int)

(assert (=> bs!1885051 (= lambda!431921 lambda!431895)))

(declare-fun bs!1885052 () Bool)

(assert (= bs!1885052 (and d!2220086 d!2220076)))

(assert (=> bs!1885052 (= lambda!431921 lambda!431916)))

(declare-fun bs!1885053 () Bool)

(assert (= bs!1885053 (and d!2220086 d!2220078)))

(assert (=> bs!1885053 (= lambda!431921 lambda!431917)))

(declare-fun bs!1885054 () Bool)

(assert (= bs!1885054 (and d!2220086 d!2220080)))

(assert (=> bs!1885054 (= lambda!431921 lambda!431918)))

(assert (=> d!2220086 (= (derivationStepZipperDown!2447 (regTwo!36376 r!11554) (Context!13853 (++!16084 (exprs!7426 c!9994) (exprs!7426 auxCtx!45))) a!1901) (appendTo!931 (derivationStepZipperDown!2447 (regTwo!36376 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2559764 () Unit!162535)

(assert (=> d!2220086 (= lt!2559764 (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431921))))

(declare-fun lt!2559763 () Unit!162535)

(declare-fun choose!54844 (Context!13852 Regex!17932 C!36134 Context!13852) Unit!162535)

(assert (=> d!2220086 (= lt!2559763 (choose!54844 c!9994 (regTwo!36376 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220086 (validRegex!9205 (regTwo!36376 r!11554))))

(assert (=> d!2220086 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!229 c!9994 (regTwo!36376 r!11554) a!1901 auxCtx!45) lt!2559763)))

(declare-fun bs!1885055 () Bool)

(assert (= bs!1885055 d!2220086))

(assert (=> bs!1885055 m!7831634))

(declare-fun m!7831746 () Bool)

(assert (=> bs!1885055 m!7831746))

(declare-fun m!7831748 () Bool)

(assert (=> bs!1885055 m!7831748))

(declare-fun m!7831750 () Bool)

(assert (=> bs!1885055 m!7831750))

(assert (=> bs!1885055 m!7831650))

(assert (=> bs!1885055 m!7831634))

(declare-fun m!7831752 () Bool)

(assert (=> bs!1885055 m!7831752))

(assert (=> bs!1885055 m!7831652))

(assert (=> b!7110324 d!2220086))

(declare-fun b!7110450 () Bool)

(declare-fun e!4273191 () List!68893)

(assert (=> b!7110450 (= e!4273191 (exprs!7426 auxCtx!45))))

(declare-fun e!4273190 () Bool)

(declare-fun b!7110453 () Bool)

(declare-fun lt!2559767 () List!68893)

(assert (=> b!7110453 (= e!4273190 (or (not (= (exprs!7426 auxCtx!45) Nil!68769)) (= lt!2559767 lt!2559685)))))

(declare-fun d!2220090 () Bool)

(assert (=> d!2220090 e!4273190))

(declare-fun res!2901807 () Bool)

(assert (=> d!2220090 (=> (not res!2901807) (not e!4273190))))

(declare-fun content!14017 (List!68893) (Set Regex!17932))

(assert (=> d!2220090 (= res!2901807 (= (content!14017 lt!2559767) (set.union (content!14017 lt!2559685) (content!14017 (exprs!7426 auxCtx!45)))))))

(assert (=> d!2220090 (= lt!2559767 e!4273191)))

(declare-fun c!1326972 () Bool)

(assert (=> d!2220090 (= c!1326972 (is-Nil!68769 lt!2559685))))

(assert (=> d!2220090 (= (++!16084 lt!2559685 (exprs!7426 auxCtx!45)) lt!2559767)))

(declare-fun b!7110451 () Bool)

(assert (=> b!7110451 (= e!4273191 (Cons!68769 (h!75217 lt!2559685) (++!16084 (t!382722 lt!2559685) (exprs!7426 auxCtx!45))))))

(declare-fun b!7110452 () Bool)

(declare-fun res!2901806 () Bool)

(assert (=> b!7110452 (=> (not res!2901806) (not e!4273190))))

(declare-fun size!41392 (List!68893) Int)

(assert (=> b!7110452 (= res!2901806 (= (size!41392 lt!2559767) (+ (size!41392 lt!2559685) (size!41392 (exprs!7426 auxCtx!45)))))))

(assert (= (and d!2220090 c!1326972) b!7110450))

(assert (= (and d!2220090 (not c!1326972)) b!7110451))

(assert (= (and d!2220090 res!2901807) b!7110452))

(assert (= (and b!7110452 res!2901806) b!7110453))

(declare-fun m!7831756 () Bool)

(assert (=> d!2220090 m!7831756))

(declare-fun m!7831758 () Bool)

(assert (=> d!2220090 m!7831758))

(declare-fun m!7831760 () Bool)

(assert (=> d!2220090 m!7831760))

(declare-fun m!7831762 () Bool)

(assert (=> b!7110451 m!7831762))

(declare-fun m!7831764 () Bool)

(assert (=> b!7110452 m!7831764))

(declare-fun m!7831766 () Bool)

(assert (=> b!7110452 m!7831766))

(declare-fun m!7831768 () Bool)

(assert (=> b!7110452 m!7831768))

(assert (=> b!7110324 d!2220090))

(declare-fun d!2220094 () Bool)

(declare-fun choose!54845 ((Set Context!13852) Int) (Set Context!13852))

(assert (=> d!2220094 (= (map!16273 (set.union lt!2559687 lt!2559686) lambda!431894) (choose!54845 (set.union lt!2559687 lt!2559686) lambda!431894))))

(declare-fun bs!1885057 () Bool)

(assert (= bs!1885057 d!2220094))

(declare-fun m!7831770 () Bool)

(assert (=> bs!1885057 m!7831770))

(assert (=> b!7110324 d!2220094))

(declare-fun d!2220096 () Bool)

(assert (=> d!2220096 (= (map!16273 lt!2559687 lambda!431894) (choose!54845 lt!2559687 lambda!431894))))

(declare-fun bs!1885058 () Bool)

(assert (= bs!1885058 d!2220096))

(declare-fun m!7831772 () Bool)

(assert (=> bs!1885058 m!7831772))

(assert (=> b!7110324 d!2220096))

(declare-fun bs!1885059 () Bool)

(declare-fun d!2220098 () Bool)

(assert (= bs!1885059 (and d!2220098 b!7110325)))

(declare-fun lambda!431926 () Int)

(assert (=> bs!1885059 (= lambda!431926 lambda!431894)))

(assert (=> d!2220098 true))

(assert (=> d!2220098 (= (appendTo!931 lt!2559687 auxCtx!45) (map!16273 lt!2559687 lambda!431926))))

(declare-fun bs!1885060 () Bool)

(assert (= bs!1885060 d!2220098))

(declare-fun m!7831774 () Bool)

(assert (=> bs!1885060 m!7831774))

(assert (=> b!7110324 d!2220098))

(declare-fun b!7110472 () Bool)

(declare-fun e!4273208 () (Set Context!13852))

(declare-fun e!4273206 () (Set Context!13852))

(assert (=> b!7110472 (= e!4273208 e!4273206)))

(declare-fun c!1326980 () Bool)

(assert (=> b!7110472 (= c!1326980 (is-Union!17932 (regOne!36376 r!11554)))))

(declare-fun b!7110473 () Bool)

(declare-fun e!4273209 () (Set Context!13852))

(declare-fun call!648721 () (Set Context!13852))

(assert (=> b!7110473 (= e!4273209 call!648721)))

(declare-fun b!7110474 () Bool)

(declare-fun call!648723 () (Set Context!13852))

(declare-fun call!648719 () (Set Context!13852))

(assert (=> b!7110474 (= e!4273206 (set.union call!648723 call!648719))))

(declare-fun b!7110475 () Bool)

(declare-fun e!4273210 () (Set Context!13852))

(assert (=> b!7110475 (= e!4273210 call!648721)))

(declare-fun d!2220100 () Bool)

(declare-fun c!1326981 () Bool)

(assert (=> d!2220100 (= c!1326981 (and (is-ElementMatch!17932 (regOne!36376 r!11554)) (= (c!1326941 (regOne!36376 r!11554)) a!1901)))))

(assert (=> d!2220100 (= (derivationStepZipperDown!2447 (regOne!36376 r!11554) lt!2559688 a!1901) e!4273208)))

(declare-fun bm!648714 () Bool)

(declare-fun call!648722 () (Set Context!13852))

(assert (=> bm!648714 (= call!648722 call!648719)))

(declare-fun call!648724 () List!68893)

(declare-fun bm!648715 () Bool)

(assert (=> bm!648715 (= call!648723 (derivationStepZipperDown!2447 (ite c!1326980 (regOne!36377 (regOne!36376 r!11554)) (regOne!36376 (regOne!36376 r!11554))) (ite c!1326980 lt!2559688 (Context!13853 call!648724)) a!1901))))

(declare-fun b!7110476 () Bool)

(declare-fun c!1326982 () Bool)

(assert (=> b!7110476 (= c!1326982 (is-Star!17932 (regOne!36376 r!11554)))))

(assert (=> b!7110476 (= e!4273209 e!4273210)))

(declare-fun b!7110477 () Bool)

(declare-fun e!4273207 () Bool)

(assert (=> b!7110477 (= e!4273207 (nullable!7569 (regOne!36376 (regOne!36376 r!11554))))))

(declare-fun b!7110478 () Bool)

(declare-fun e!4273211 () (Set Context!13852))

(assert (=> b!7110478 (= e!4273211 (set.union call!648723 call!648722))))

(declare-fun bm!648716 () Bool)

(declare-fun call!648720 () List!68893)

(assert (=> bm!648716 (= call!648720 call!648724)))

(declare-fun b!7110479 () Bool)

(assert (=> b!7110479 (= e!4273208 (set.insert lt!2559688 (as set.empty (Set Context!13852))))))

(declare-fun c!1326979 () Bool)

(declare-fun c!1326978 () Bool)

(declare-fun bm!648717 () Bool)

(assert (=> bm!648717 (= call!648724 ($colon$colon!2790 (exprs!7426 lt!2559688) (ite (or c!1326979 c!1326978) (regTwo!36376 (regOne!36376 r!11554)) (regOne!36376 r!11554))))))

(declare-fun b!7110480 () Bool)

(assert (=> b!7110480 (= e!4273210 (as set.empty (Set Context!13852)))))

(declare-fun b!7110481 () Bool)

(assert (=> b!7110481 (= c!1326979 e!4273207)))

(declare-fun res!2901818 () Bool)

(assert (=> b!7110481 (=> (not res!2901818) (not e!4273207))))

(assert (=> b!7110481 (= res!2901818 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (=> b!7110481 (= e!4273206 e!4273211)))

(declare-fun bm!648718 () Bool)

(assert (=> bm!648718 (= call!648721 call!648722)))

(declare-fun bm!648719 () Bool)

(assert (=> bm!648719 (= call!648719 (derivationStepZipperDown!2447 (ite c!1326980 (regTwo!36377 (regOne!36376 r!11554)) (ite c!1326979 (regTwo!36376 (regOne!36376 r!11554)) (ite c!1326978 (regOne!36376 (regOne!36376 r!11554)) (reg!18261 (regOne!36376 r!11554))))) (ite (or c!1326980 c!1326979) lt!2559688 (Context!13853 call!648720)) a!1901))))

(declare-fun b!7110482 () Bool)

(assert (=> b!7110482 (= e!4273211 e!4273209)))

(assert (=> b!7110482 (= c!1326978 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (= (and d!2220100 c!1326981) b!7110479))

(assert (= (and d!2220100 (not c!1326981)) b!7110472))

(assert (= (and b!7110472 c!1326980) b!7110474))

(assert (= (and b!7110472 (not c!1326980)) b!7110481))

(assert (= (and b!7110481 res!2901818) b!7110477))

(assert (= (and b!7110481 c!1326979) b!7110478))

(assert (= (and b!7110481 (not c!1326979)) b!7110482))

(assert (= (and b!7110482 c!1326978) b!7110473))

(assert (= (and b!7110482 (not c!1326978)) b!7110476))

(assert (= (and b!7110476 c!1326982) b!7110475))

(assert (= (and b!7110476 (not c!1326982)) b!7110480))

(assert (= (or b!7110473 b!7110475) bm!648716))

(assert (= (or b!7110473 b!7110475) bm!648718))

(assert (= (or b!7110478 bm!648718) bm!648714))

(assert (= (or b!7110478 bm!648716) bm!648717))

(assert (= (or b!7110474 bm!648714) bm!648719))

(assert (= (or b!7110474 b!7110478) bm!648715))

(declare-fun m!7831776 () Bool)

(assert (=> bm!648719 m!7831776))

(assert (=> b!7110477 m!7831728))

(declare-fun m!7831778 () Bool)

(assert (=> b!7110479 m!7831778))

(declare-fun m!7831780 () Bool)

(assert (=> bm!648715 m!7831780))

(declare-fun m!7831782 () Bool)

(assert (=> bm!648717 m!7831782))

(assert (=> b!7110324 d!2220100))

(declare-fun d!2220102 () Bool)

(assert (=> d!2220102 (= (set.union (map!16273 lt!2559687 lambda!431894) (map!16273 lt!2559686 lambda!431894)) (map!16273 (set.union lt!2559687 lt!2559686) lambda!431894))))

(declare-fun lt!2559772 () Unit!162535)

(declare-fun choose!54846 ((Set Context!13852) (Set Context!13852) Int) Unit!162535)

(assert (=> d!2220102 (= lt!2559772 (choose!54846 lt!2559687 lt!2559686 lambda!431894))))

(assert (=> d!2220102 (= (lemmaMapAssociative!31 lt!2559687 lt!2559686 lambda!431894) lt!2559772)))

(declare-fun bs!1885061 () Bool)

(assert (= bs!1885061 d!2220102))

(assert (=> bs!1885061 m!7831610))

(assert (=> bs!1885061 m!7831622))

(assert (=> bs!1885061 m!7831624))

(declare-fun m!7831784 () Bool)

(assert (=> bs!1885061 m!7831784))

(assert (=> b!7110324 d!2220102))

(declare-fun d!2220104 () Bool)

(assert (=> d!2220104 (forall!16832 (++!16084 (exprs!7426 c!9994) (exprs!7426 auxCtx!45)) lambda!431895)))

(declare-fun lt!2559775 () Unit!162535)

(declare-fun choose!54847 (List!68893 List!68893 Int) Unit!162535)

(assert (=> d!2220104 (= lt!2559775 (choose!54847 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895))))

(assert (=> d!2220104 (forall!16832 (exprs!7426 c!9994) lambda!431895)))

(assert (=> d!2220104 (= (lemmaConcatPreservesForall!1217 (exprs!7426 c!9994) (exprs!7426 auxCtx!45) lambda!431895) lt!2559775)))

(declare-fun bs!1885062 () Bool)

(assert (= bs!1885062 d!2220104))

(assert (=> bs!1885062 m!7831650))

(assert (=> bs!1885062 m!7831650))

(declare-fun m!7831792 () Bool)

(assert (=> bs!1885062 m!7831792))

(declare-fun m!7831794 () Bool)

(assert (=> bs!1885062 m!7831794))

(declare-fun m!7831796 () Bool)

(assert (=> bs!1885062 m!7831796))

(assert (=> b!7110324 d!2220104))

(declare-fun bs!1885063 () Bool)

(declare-fun d!2220108 () Bool)

(assert (= bs!1885063 (and d!2220108 d!2220086)))

(declare-fun lambda!431927 () Int)

(assert (=> bs!1885063 (= lambda!431927 lambda!431921)))

(declare-fun bs!1885064 () Bool)

(assert (= bs!1885064 (and d!2220108 b!7110329)))

(assert (=> bs!1885064 (= lambda!431927 lambda!431895)))

(declare-fun bs!1885065 () Bool)

(assert (= bs!1885065 (and d!2220108 d!2220078)))

(assert (=> bs!1885065 (= lambda!431927 lambda!431917)))

(declare-fun bs!1885066 () Bool)

(assert (= bs!1885066 (and d!2220108 d!2220080)))

(assert (=> bs!1885066 (= lambda!431927 lambda!431918)))

(declare-fun bs!1885067 () Bool)

(assert (= bs!1885067 (and d!2220108 d!2220076)))

(assert (=> bs!1885067 (= lambda!431927 lambda!431916)))

(assert (=> d!2220108 (= (derivationStepZipperDown!2447 (regOne!36376 r!11554) (Context!13853 (++!16084 (exprs!7426 lt!2559688) (exprs!7426 auxCtx!45))) a!1901) (appendTo!931 (derivationStepZipperDown!2447 (regOne!36376 r!11554) lt!2559688 a!1901) auxCtx!45))))

(declare-fun lt!2559777 () Unit!162535)

(assert (=> d!2220108 (= lt!2559777 (lemmaConcatPreservesForall!1217 (exprs!7426 lt!2559688) (exprs!7426 auxCtx!45) lambda!431927))))

(declare-fun lt!2559776 () Unit!162535)

(assert (=> d!2220108 (= lt!2559776 (choose!54844 lt!2559688 (regOne!36376 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220108 (validRegex!9205 (regOne!36376 r!11554))))

(assert (=> d!2220108 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!229 lt!2559688 (regOne!36376 r!11554) a!1901 auxCtx!45) lt!2559776)))

(declare-fun bs!1885068 () Bool)

(assert (= bs!1885068 d!2220108))

(assert (=> bs!1885068 m!7831630))

(declare-fun m!7831798 () Bool)

(assert (=> bs!1885068 m!7831798))

(declare-fun m!7831800 () Bool)

(assert (=> bs!1885068 m!7831800))

(declare-fun m!7831802 () Bool)

(assert (=> bs!1885068 m!7831802))

(declare-fun m!7831804 () Bool)

(assert (=> bs!1885068 m!7831804))

(assert (=> bs!1885068 m!7831630))

(declare-fun m!7831806 () Bool)

(assert (=> bs!1885068 m!7831806))

(declare-fun m!7831808 () Bool)

(assert (=> bs!1885068 m!7831808))

(assert (=> b!7110324 d!2220108))

(declare-fun d!2220110 () Bool)

(assert (=> d!2220110 (= (map!16273 lt!2559686 lambda!431894) (choose!54845 lt!2559686 lambda!431894))))

(declare-fun bs!1885069 () Bool)

(assert (= bs!1885069 d!2220110))

(declare-fun m!7831810 () Bool)

(assert (=> bs!1885069 m!7831810))

(assert (=> b!7110324 d!2220110))

(declare-fun bs!1885070 () Bool)

(declare-fun d!2220112 () Bool)

(assert (= bs!1885070 (and d!2220112 b!7110325)))

(declare-fun lambda!431928 () Int)

(assert (=> bs!1885070 (= lambda!431928 lambda!431894)))

(declare-fun bs!1885071 () Bool)

(assert (= bs!1885071 (and d!2220112 d!2220098)))

(assert (=> bs!1885071 (= lambda!431928 lambda!431926)))

(assert (=> d!2220112 true))

(assert (=> d!2220112 (= (appendTo!931 lt!2559686 auxCtx!45) (map!16273 lt!2559686 lambda!431928))))

(declare-fun bs!1885072 () Bool)

(assert (= bs!1885072 d!2220112))

(declare-fun m!7831812 () Bool)

(assert (=> bs!1885072 m!7831812))

(assert (=> b!7110324 d!2220112))

(declare-fun d!2220114 () Bool)

(assert (=> d!2220114 (forall!16832 (++!16084 lt!2559685 (exprs!7426 auxCtx!45)) lambda!431895)))

(declare-fun lt!2559780 () Unit!162535)

(assert (=> d!2220114 (= lt!2559780 (choose!54847 lt!2559685 (exprs!7426 auxCtx!45) lambda!431895))))

(assert (=> d!2220114 (forall!16832 lt!2559685 lambda!431895)))

(assert (=> d!2220114 (= (lemmaConcatPreservesForall!1217 lt!2559685 (exprs!7426 auxCtx!45) lambda!431895) lt!2559780)))

(declare-fun bs!1885073 () Bool)

(assert (= bs!1885073 d!2220114))

(assert (=> bs!1885073 m!7831620))

(assert (=> bs!1885073 m!7831620))

(declare-fun m!7831814 () Bool)

(assert (=> bs!1885073 m!7831814))

(declare-fun m!7831816 () Bool)

(assert (=> bs!1885073 m!7831816))

(declare-fun m!7831818 () Bool)

(assert (=> bs!1885073 m!7831818))

(assert (=> b!7110324 d!2220114))

(declare-fun d!2220116 () Bool)

(assert (=> d!2220116 (= ($colon$colon!2790 (exprs!7426 c!9994) (regTwo!36376 r!11554)) (Cons!68769 (regTwo!36376 r!11554) (exprs!7426 c!9994)))))

(assert (=> b!7110324 d!2220116))

(assert (=> b!7110329 d!2220104))

(declare-fun b!7110492 () Bool)

(declare-fun res!2901825 () Bool)

(declare-fun e!4273223 () Bool)

(assert (=> b!7110492 (=> res!2901825 e!4273223)))

(assert (=> b!7110492 (= res!2901825 (not (is-Concat!26777 (regTwo!36376 r!11554))))))

(declare-fun e!4273224 () Bool)

(assert (=> b!7110492 (= e!4273224 e!4273223)))

(declare-fun b!7110493 () Bool)

(declare-fun e!4273219 () Bool)

(declare-fun call!648730 () Bool)

(assert (=> b!7110493 (= e!4273219 call!648730)))

(declare-fun bm!648723 () Bool)

(declare-fun call!648729 () Bool)

(declare-fun c!1326986 () Bool)

(declare-fun c!1326985 () Bool)

(assert (=> bm!648723 (= call!648729 (validRegex!9205 (ite c!1326986 (reg!18261 (regTwo!36376 r!11554)) (ite c!1326985 (regTwo!36377 (regTwo!36376 r!11554)) (regOne!36376 (regTwo!36376 r!11554))))))))

(declare-fun bm!648724 () Bool)

(declare-fun call!648728 () Bool)

(assert (=> bm!648724 (= call!648728 (validRegex!9205 (ite c!1326985 (regOne!36377 (regTwo!36376 r!11554)) (regTwo!36376 (regTwo!36376 r!11554)))))))

(declare-fun b!7110494 () Bool)

(declare-fun e!4273220 () Bool)

(assert (=> b!7110494 (= e!4273220 call!648728)))

(declare-fun d!2220118 () Bool)

(declare-fun res!2901827 () Bool)

(declare-fun e!4273222 () Bool)

(assert (=> d!2220118 (=> res!2901827 e!4273222)))

(assert (=> d!2220118 (= res!2901827 (is-ElementMatch!17932 (regTwo!36376 r!11554)))))

(assert (=> d!2220118 (= (validRegex!9205 (regTwo!36376 r!11554)) e!4273222)))

(declare-fun b!7110495 () Bool)

(assert (=> b!7110495 (= e!4273223 e!4273220)))

(declare-fun res!2901824 () Bool)

(assert (=> b!7110495 (=> (not res!2901824) (not e!4273220))))

(assert (=> b!7110495 (= res!2901824 call!648730)))

(declare-fun bm!648725 () Bool)

(assert (=> bm!648725 (= call!648730 call!648729)))

(declare-fun b!7110496 () Bool)

(declare-fun res!2901826 () Bool)

(assert (=> b!7110496 (=> (not res!2901826) (not e!4273219))))

(assert (=> b!7110496 (= res!2901826 call!648728)))

(assert (=> b!7110496 (= e!4273224 e!4273219)))

(declare-fun b!7110497 () Bool)

(declare-fun e!4273225 () Bool)

(assert (=> b!7110497 (= e!4273222 e!4273225)))

(assert (=> b!7110497 (= c!1326986 (is-Star!17932 (regTwo!36376 r!11554)))))

(declare-fun b!7110498 () Bool)

(declare-fun e!4273221 () Bool)

(assert (=> b!7110498 (= e!4273221 call!648729)))

(declare-fun b!7110499 () Bool)

(assert (=> b!7110499 (= e!4273225 e!4273221)))

(declare-fun res!2901828 () Bool)

(assert (=> b!7110499 (= res!2901828 (not (nullable!7569 (reg!18261 (regTwo!36376 r!11554)))))))

(assert (=> b!7110499 (=> (not res!2901828) (not e!4273221))))

(declare-fun b!7110500 () Bool)

(assert (=> b!7110500 (= e!4273225 e!4273224)))

(assert (=> b!7110500 (= c!1326985 (is-Union!17932 (regTwo!36376 r!11554)))))

(assert (= (and d!2220118 (not res!2901827)) b!7110497))

(assert (= (and b!7110497 c!1326986) b!7110499))

(assert (= (and b!7110497 (not c!1326986)) b!7110500))

(assert (= (and b!7110499 res!2901828) b!7110498))

(assert (= (and b!7110500 c!1326985) b!7110496))

(assert (= (and b!7110500 (not c!1326985)) b!7110492))

(assert (= (and b!7110496 res!2901826) b!7110493))

(assert (= (and b!7110492 (not res!2901825)) b!7110495))

(assert (= (and b!7110495 res!2901824) b!7110494))

(assert (= (or b!7110496 b!7110494) bm!648724))

(assert (= (or b!7110493 b!7110495) bm!648725))

(assert (= (or b!7110498 bm!648725) bm!648723))

(declare-fun m!7831826 () Bool)

(assert (=> bm!648723 m!7831826))

(declare-fun m!7831828 () Bool)

(assert (=> bm!648724 m!7831828))

(declare-fun m!7831830 () Bool)

(assert (=> b!7110499 m!7831830))

(assert (=> b!7110329 d!2220118))

(declare-fun b!7110501 () Bool)

(declare-fun e!4273227 () List!68893)

(assert (=> b!7110501 (= e!4273227 (exprs!7426 auxCtx!45))))

(declare-fun lt!2559782 () List!68893)

(declare-fun e!4273226 () Bool)

(declare-fun b!7110504 () Bool)

(assert (=> b!7110504 (= e!4273226 (or (not (= (exprs!7426 auxCtx!45) Nil!68769)) (= lt!2559782 (exprs!7426 c!9994))))))

(declare-fun d!2220122 () Bool)

(assert (=> d!2220122 e!4273226))

(declare-fun res!2901830 () Bool)

(assert (=> d!2220122 (=> (not res!2901830) (not e!4273226))))

(assert (=> d!2220122 (= res!2901830 (= (content!14017 lt!2559782) (set.union (content!14017 (exprs!7426 c!9994)) (content!14017 (exprs!7426 auxCtx!45)))))))

(assert (=> d!2220122 (= lt!2559782 e!4273227)))

(declare-fun c!1326987 () Bool)

(assert (=> d!2220122 (= c!1326987 (is-Nil!68769 (exprs!7426 c!9994)))))

(assert (=> d!2220122 (= (++!16084 (exprs!7426 c!9994) (exprs!7426 auxCtx!45)) lt!2559782)))

(declare-fun b!7110502 () Bool)

(assert (=> b!7110502 (= e!4273227 (Cons!68769 (h!75217 (exprs!7426 c!9994)) (++!16084 (t!382722 (exprs!7426 c!9994)) (exprs!7426 auxCtx!45))))))

(declare-fun b!7110503 () Bool)

(declare-fun res!2901829 () Bool)

(assert (=> b!7110503 (=> (not res!2901829) (not e!4273226))))

(assert (=> b!7110503 (= res!2901829 (= (size!41392 lt!2559782) (+ (size!41392 (exprs!7426 c!9994)) (size!41392 (exprs!7426 auxCtx!45)))))))

(assert (= (and d!2220122 c!1326987) b!7110501))

(assert (= (and d!2220122 (not c!1326987)) b!7110502))

(assert (= (and d!2220122 res!2901830) b!7110503))

(assert (= (and b!7110503 res!2901829) b!7110504))

(declare-fun m!7831832 () Bool)

(assert (=> d!2220122 m!7831832))

(declare-fun m!7831834 () Bool)

(assert (=> d!2220122 m!7831834))

(assert (=> d!2220122 m!7831760))

(declare-fun m!7831836 () Bool)

(assert (=> b!7110502 m!7831836))

(declare-fun m!7831838 () Bool)

(assert (=> b!7110503 m!7831838))

(declare-fun m!7831840 () Bool)

(assert (=> b!7110503 m!7831840))

(assert (=> b!7110503 m!7831768))

(assert (=> b!7110329 d!2220122))

(declare-fun b!7110505 () Bool)

(declare-fun e!4273230 () (Set Context!13852))

(declare-fun e!4273228 () (Set Context!13852))

(assert (=> b!7110505 (= e!4273230 e!4273228)))

(declare-fun c!1326990 () Bool)

(assert (=> b!7110505 (= c!1326990 (is-Union!17932 r!11554))))

(declare-fun b!7110506 () Bool)

(declare-fun e!4273231 () (Set Context!13852))

(declare-fun call!648733 () (Set Context!13852))

(assert (=> b!7110506 (= e!4273231 call!648733)))

(declare-fun b!7110507 () Bool)

(declare-fun call!648735 () (Set Context!13852))

(declare-fun call!648731 () (Set Context!13852))

(assert (=> b!7110507 (= e!4273228 (set.union call!648735 call!648731))))

(declare-fun b!7110508 () Bool)

(declare-fun e!4273232 () (Set Context!13852))

(assert (=> b!7110508 (= e!4273232 call!648733)))

(declare-fun d!2220124 () Bool)

(declare-fun c!1326991 () Bool)

(assert (=> d!2220124 (= c!1326991 (and (is-ElementMatch!17932 r!11554) (= (c!1326941 r!11554) a!1901)))))

(assert (=> d!2220124 (= (derivationStepZipperDown!2447 r!11554 lt!2559695 a!1901) e!4273230)))

(declare-fun bm!648726 () Bool)

(declare-fun call!648734 () (Set Context!13852))

(assert (=> bm!648726 (= call!648734 call!648731)))

(declare-fun call!648736 () List!68893)

(declare-fun bm!648727 () Bool)

(assert (=> bm!648727 (= call!648735 (derivationStepZipperDown!2447 (ite c!1326990 (regOne!36377 r!11554) (regOne!36376 r!11554)) (ite c!1326990 lt!2559695 (Context!13853 call!648736)) a!1901))))

(declare-fun b!7110509 () Bool)

(declare-fun c!1326992 () Bool)

(assert (=> b!7110509 (= c!1326992 (is-Star!17932 r!11554))))

(assert (=> b!7110509 (= e!4273231 e!4273232)))

(declare-fun b!7110510 () Bool)

(declare-fun e!4273229 () Bool)

(assert (=> b!7110510 (= e!4273229 (nullable!7569 (regOne!36376 r!11554)))))

(declare-fun b!7110511 () Bool)

(declare-fun e!4273233 () (Set Context!13852))

(assert (=> b!7110511 (= e!4273233 (set.union call!648735 call!648734))))

(declare-fun bm!648728 () Bool)

(declare-fun call!648732 () List!68893)

(assert (=> bm!648728 (= call!648732 call!648736)))

(declare-fun b!7110512 () Bool)

(assert (=> b!7110512 (= e!4273230 (set.insert lt!2559695 (as set.empty (Set Context!13852))))))

(declare-fun bm!648729 () Bool)

(declare-fun c!1326988 () Bool)

(declare-fun c!1326989 () Bool)

(assert (=> bm!648729 (= call!648736 ($colon$colon!2790 (exprs!7426 lt!2559695) (ite (or c!1326989 c!1326988) (regTwo!36376 r!11554) r!11554)))))

(declare-fun b!7110513 () Bool)

(assert (=> b!7110513 (= e!4273232 (as set.empty (Set Context!13852)))))

(declare-fun b!7110514 () Bool)

(assert (=> b!7110514 (= c!1326989 e!4273229)))

(declare-fun res!2901831 () Bool)

(assert (=> b!7110514 (=> (not res!2901831) (not e!4273229))))

(assert (=> b!7110514 (= res!2901831 (is-Concat!26777 r!11554))))

(assert (=> b!7110514 (= e!4273228 e!4273233)))

(declare-fun bm!648730 () Bool)

(assert (=> bm!648730 (= call!648733 call!648734)))

(declare-fun bm!648731 () Bool)

(assert (=> bm!648731 (= call!648731 (derivationStepZipperDown!2447 (ite c!1326990 (regTwo!36377 r!11554) (ite c!1326989 (regTwo!36376 r!11554) (ite c!1326988 (regOne!36376 r!11554) (reg!18261 r!11554)))) (ite (or c!1326990 c!1326989) lt!2559695 (Context!13853 call!648732)) a!1901))))

(declare-fun b!7110515 () Bool)

(assert (=> b!7110515 (= e!4273233 e!4273231)))

(assert (=> b!7110515 (= c!1326988 (is-Concat!26777 r!11554))))

(assert (= (and d!2220124 c!1326991) b!7110512))

(assert (= (and d!2220124 (not c!1326991)) b!7110505))

(assert (= (and b!7110505 c!1326990) b!7110507))

(assert (= (and b!7110505 (not c!1326990)) b!7110514))

(assert (= (and b!7110514 res!2901831) b!7110510))

(assert (= (and b!7110514 c!1326989) b!7110511))

(assert (= (and b!7110514 (not c!1326989)) b!7110515))

(assert (= (and b!7110515 c!1326988) b!7110506))

(assert (= (and b!7110515 (not c!1326988)) b!7110509))

(assert (= (and b!7110509 c!1326992) b!7110508))

(assert (= (and b!7110509 (not c!1326992)) b!7110513))

(assert (= (or b!7110506 b!7110508) bm!648728))

(assert (= (or b!7110506 b!7110508) bm!648730))

(assert (= (or b!7110511 bm!648730) bm!648726))

(assert (= (or b!7110511 bm!648728) bm!648729))

(assert (= (or b!7110507 bm!648726) bm!648731))

(assert (= (or b!7110507 b!7110511) bm!648727))

(declare-fun m!7831842 () Bool)

(assert (=> bm!648731 m!7831842))

(assert (=> b!7110510 m!7831648))

(declare-fun m!7831844 () Bool)

(assert (=> b!7110512 m!7831844))

(declare-fun m!7831846 () Bool)

(assert (=> bm!648727 m!7831846))

(declare-fun m!7831848 () Bool)

(assert (=> bm!648729 m!7831848))

(assert (=> b!7110323 d!2220124))

(declare-fun b!7110516 () Bool)

(declare-fun e!4273236 () (Set Context!13852))

(declare-fun e!4273234 () (Set Context!13852))

(assert (=> b!7110516 (= e!4273236 e!4273234)))

(declare-fun c!1326995 () Bool)

(assert (=> b!7110516 (= c!1326995 (is-Union!17932 (regTwo!36376 r!11554)))))

(declare-fun b!7110517 () Bool)

(declare-fun e!4273237 () (Set Context!13852))

(declare-fun call!648739 () (Set Context!13852))

(assert (=> b!7110517 (= e!4273237 call!648739)))

(declare-fun b!7110518 () Bool)

(declare-fun call!648741 () (Set Context!13852))

(declare-fun call!648737 () (Set Context!13852))

(assert (=> b!7110518 (= e!4273234 (set.union call!648741 call!648737))))

(declare-fun b!7110519 () Bool)

(declare-fun e!4273238 () (Set Context!13852))

(assert (=> b!7110519 (= e!4273238 call!648739)))

(declare-fun d!2220126 () Bool)

(declare-fun c!1326996 () Bool)

(assert (=> d!2220126 (= c!1326996 (and (is-ElementMatch!17932 (regTwo!36376 r!11554)) (= (c!1326941 (regTwo!36376 r!11554)) a!1901)))))

(assert (=> d!2220126 (= (derivationStepZipperDown!2447 (regTwo!36376 r!11554) lt!2559695 a!1901) e!4273236)))

(declare-fun bm!648732 () Bool)

(declare-fun call!648740 () (Set Context!13852))

(assert (=> bm!648732 (= call!648740 call!648737)))

(declare-fun bm!648733 () Bool)

(declare-fun call!648742 () List!68893)

(assert (=> bm!648733 (= call!648741 (derivationStepZipperDown!2447 (ite c!1326995 (regOne!36377 (regTwo!36376 r!11554)) (regOne!36376 (regTwo!36376 r!11554))) (ite c!1326995 lt!2559695 (Context!13853 call!648742)) a!1901))))

(declare-fun b!7110520 () Bool)

(declare-fun c!1326997 () Bool)

(assert (=> b!7110520 (= c!1326997 (is-Star!17932 (regTwo!36376 r!11554)))))

(assert (=> b!7110520 (= e!4273237 e!4273238)))

(declare-fun b!7110521 () Bool)

(declare-fun e!4273235 () Bool)

(assert (=> b!7110521 (= e!4273235 (nullable!7569 (regOne!36376 (regTwo!36376 r!11554))))))

(declare-fun b!7110522 () Bool)

(declare-fun e!4273239 () (Set Context!13852))

(assert (=> b!7110522 (= e!4273239 (set.union call!648741 call!648740))))

(declare-fun bm!648734 () Bool)

(declare-fun call!648738 () List!68893)

(assert (=> bm!648734 (= call!648738 call!648742)))

(declare-fun b!7110523 () Bool)

(assert (=> b!7110523 (= e!4273236 (set.insert lt!2559695 (as set.empty (Set Context!13852))))))

(declare-fun bm!648735 () Bool)

(declare-fun c!1326994 () Bool)

(declare-fun c!1326993 () Bool)

(assert (=> bm!648735 (= call!648742 ($colon$colon!2790 (exprs!7426 lt!2559695) (ite (or c!1326994 c!1326993) (regTwo!36376 (regTwo!36376 r!11554)) (regTwo!36376 r!11554))))))

(declare-fun b!7110524 () Bool)

(assert (=> b!7110524 (= e!4273238 (as set.empty (Set Context!13852)))))

(declare-fun b!7110525 () Bool)

(assert (=> b!7110525 (= c!1326994 e!4273235)))

(declare-fun res!2901832 () Bool)

(assert (=> b!7110525 (=> (not res!2901832) (not e!4273235))))

(assert (=> b!7110525 (= res!2901832 (is-Concat!26777 (regTwo!36376 r!11554)))))

(assert (=> b!7110525 (= e!4273234 e!4273239)))

(declare-fun bm!648736 () Bool)

(assert (=> bm!648736 (= call!648739 call!648740)))

(declare-fun bm!648737 () Bool)

(assert (=> bm!648737 (= call!648737 (derivationStepZipperDown!2447 (ite c!1326995 (regTwo!36377 (regTwo!36376 r!11554)) (ite c!1326994 (regTwo!36376 (regTwo!36376 r!11554)) (ite c!1326993 (regOne!36376 (regTwo!36376 r!11554)) (reg!18261 (regTwo!36376 r!11554))))) (ite (or c!1326995 c!1326994) lt!2559695 (Context!13853 call!648738)) a!1901))))

(declare-fun b!7110526 () Bool)

(assert (=> b!7110526 (= e!4273239 e!4273237)))

(assert (=> b!7110526 (= c!1326993 (is-Concat!26777 (regTwo!36376 r!11554)))))

(assert (= (and d!2220126 c!1326996) b!7110523))

(assert (= (and d!2220126 (not c!1326996)) b!7110516))

(assert (= (and b!7110516 c!1326995) b!7110518))

(assert (= (and b!7110516 (not c!1326995)) b!7110525))

(assert (= (and b!7110525 res!2901832) b!7110521))

(assert (= (and b!7110525 c!1326994) b!7110522))

(assert (= (and b!7110525 (not c!1326994)) b!7110526))

(assert (= (and b!7110526 c!1326993) b!7110517))

(assert (= (and b!7110526 (not c!1326993)) b!7110520))

(assert (= (and b!7110520 c!1326997) b!7110519))

(assert (= (and b!7110520 (not c!1326997)) b!7110524))

(assert (= (or b!7110517 b!7110519) bm!648734))

(assert (= (or b!7110517 b!7110519) bm!648736))

(assert (= (or b!7110522 bm!648736) bm!648732))

(assert (= (or b!7110522 bm!648734) bm!648735))

(assert (= (or b!7110518 bm!648732) bm!648737))

(assert (= (or b!7110518 b!7110522) bm!648733))

(declare-fun m!7831850 () Bool)

(assert (=> bm!648737 m!7831850))

(assert (=> b!7110521 m!7831738))

(assert (=> b!7110523 m!7831844))

(declare-fun m!7831852 () Bool)

(assert (=> bm!648733 m!7831852))

(declare-fun m!7831854 () Bool)

(assert (=> bm!648735 m!7831854))

(assert (=> b!7110323 d!2220126))

(declare-fun b!7110527 () Bool)

(declare-fun e!4273242 () (Set Context!13852))

(declare-fun e!4273240 () (Set Context!13852))

(assert (=> b!7110527 (= e!4273242 e!4273240)))

(declare-fun c!1327000 () Bool)

(assert (=> b!7110527 (= c!1327000 (is-Union!17932 (regOne!36376 r!11554)))))

(declare-fun b!7110528 () Bool)

(declare-fun e!4273243 () (Set Context!13852))

(declare-fun call!648745 () (Set Context!13852))

(assert (=> b!7110528 (= e!4273243 call!648745)))

(declare-fun b!7110529 () Bool)

(declare-fun call!648747 () (Set Context!13852))

(declare-fun call!648743 () (Set Context!13852))

(assert (=> b!7110529 (= e!4273240 (set.union call!648747 call!648743))))

(declare-fun b!7110530 () Bool)

(declare-fun e!4273244 () (Set Context!13852))

(assert (=> b!7110530 (= e!4273244 call!648745)))

(declare-fun d!2220128 () Bool)

(declare-fun c!1327001 () Bool)

(assert (=> d!2220128 (= c!1327001 (and (is-ElementMatch!17932 (regOne!36376 r!11554)) (= (c!1326941 (regOne!36376 r!11554)) a!1901)))))

(assert (=> d!2220128 (= (derivationStepZipperDown!2447 (regOne!36376 r!11554) (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554))) a!1901) e!4273242)))

(declare-fun bm!648738 () Bool)

(declare-fun call!648746 () (Set Context!13852))

(assert (=> bm!648738 (= call!648746 call!648743)))

(declare-fun call!648748 () List!68893)

(declare-fun bm!648739 () Bool)

(assert (=> bm!648739 (= call!648747 (derivationStepZipperDown!2447 (ite c!1327000 (regOne!36377 (regOne!36376 r!11554)) (regOne!36376 (regOne!36376 r!11554))) (ite c!1327000 (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554))) (Context!13853 call!648748)) a!1901))))

(declare-fun b!7110531 () Bool)

(declare-fun c!1327002 () Bool)

(assert (=> b!7110531 (= c!1327002 (is-Star!17932 (regOne!36376 r!11554)))))

(assert (=> b!7110531 (= e!4273243 e!4273244)))

(declare-fun b!7110532 () Bool)

(declare-fun e!4273241 () Bool)

(assert (=> b!7110532 (= e!4273241 (nullable!7569 (regOne!36376 (regOne!36376 r!11554))))))

(declare-fun b!7110533 () Bool)

(declare-fun e!4273245 () (Set Context!13852))

(assert (=> b!7110533 (= e!4273245 (set.union call!648747 call!648746))))

(declare-fun bm!648740 () Bool)

(declare-fun call!648744 () List!68893)

(assert (=> bm!648740 (= call!648744 call!648748)))

(declare-fun b!7110534 () Bool)

(assert (=> b!7110534 (= e!4273242 (set.insert (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554))) (as set.empty (Set Context!13852))))))

(declare-fun c!1326998 () Bool)

(declare-fun c!1326999 () Bool)

(declare-fun bm!648741 () Bool)

(assert (=> bm!648741 (= call!648748 ($colon$colon!2790 (exprs!7426 (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554)))) (ite (or c!1326999 c!1326998) (regTwo!36376 (regOne!36376 r!11554)) (regOne!36376 r!11554))))))

(declare-fun b!7110535 () Bool)

(assert (=> b!7110535 (= e!4273244 (as set.empty (Set Context!13852)))))

(declare-fun b!7110536 () Bool)

(assert (=> b!7110536 (= c!1326999 e!4273241)))

(declare-fun res!2901833 () Bool)

(assert (=> b!7110536 (=> (not res!2901833) (not e!4273241))))

(assert (=> b!7110536 (= res!2901833 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (=> b!7110536 (= e!4273240 e!4273245)))

(declare-fun bm!648742 () Bool)

(assert (=> bm!648742 (= call!648745 call!648746)))

(declare-fun bm!648743 () Bool)

(assert (=> bm!648743 (= call!648743 (derivationStepZipperDown!2447 (ite c!1327000 (regTwo!36377 (regOne!36376 r!11554)) (ite c!1326999 (regTwo!36376 (regOne!36376 r!11554)) (ite c!1326998 (regOne!36376 (regOne!36376 r!11554)) (reg!18261 (regOne!36376 r!11554))))) (ite (or c!1327000 c!1326999) (Context!13853 ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554))) (Context!13853 call!648744)) a!1901))))

(declare-fun b!7110537 () Bool)

(assert (=> b!7110537 (= e!4273245 e!4273243)))

(assert (=> b!7110537 (= c!1326998 (is-Concat!26777 (regOne!36376 r!11554)))))

(assert (= (and d!2220128 c!1327001) b!7110534))

(assert (= (and d!2220128 (not c!1327001)) b!7110527))

(assert (= (and b!7110527 c!1327000) b!7110529))

(assert (= (and b!7110527 (not c!1327000)) b!7110536))

(assert (= (and b!7110536 res!2901833) b!7110532))

(assert (= (and b!7110536 c!1326999) b!7110533))

(assert (= (and b!7110536 (not c!1326999)) b!7110537))

(assert (= (and b!7110537 c!1326998) b!7110528))

(assert (= (and b!7110537 (not c!1326998)) b!7110531))

(assert (= (and b!7110531 c!1327002) b!7110530))

(assert (= (and b!7110531 (not c!1327002)) b!7110535))

(assert (= (or b!7110528 b!7110530) bm!648740))

(assert (= (or b!7110528 b!7110530) bm!648742))

(assert (= (or b!7110533 bm!648742) bm!648738))

(assert (= (or b!7110533 bm!648740) bm!648741))

(assert (= (or b!7110529 bm!648738) bm!648743))

(assert (= (or b!7110529 b!7110533) bm!648739))

(declare-fun m!7831856 () Bool)

(assert (=> bm!648743 m!7831856))

(assert (=> b!7110532 m!7831728))

(declare-fun m!7831858 () Bool)

(assert (=> b!7110534 m!7831858))

(declare-fun m!7831860 () Bool)

(assert (=> bm!648739 m!7831860))

(declare-fun m!7831862 () Bool)

(assert (=> bm!648741 m!7831862))

(assert (=> b!7110323 d!2220128))

(declare-fun d!2220130 () Bool)

(assert (=> d!2220130 (= ($colon$colon!2790 lt!2559699 (regTwo!36376 r!11554)) (Cons!68769 (regTwo!36376 r!11554) lt!2559699))))

(assert (=> b!7110323 d!2220130))

(declare-fun b!7110546 () Bool)

(declare-fun e!4273250 () Bool)

(declare-fun tp!1955991 () Bool)

(declare-fun tp!1955992 () Bool)

(assert (=> b!7110546 (= e!4273250 (and tp!1955991 tp!1955992))))

(assert (=> b!7110332 (= tp!1955959 e!4273250)))

(assert (= (and b!7110332 (is-Cons!68769 (exprs!7426 auxCtx!45))) b!7110546))

(declare-fun b!7110547 () Bool)

(declare-fun e!4273251 () Bool)

(declare-fun tp!1955993 () Bool)

(declare-fun tp!1955994 () Bool)

(assert (=> b!7110547 (= e!4273251 (and tp!1955993 tp!1955994))))

(assert (=> b!7110326 (= tp!1955961 e!4273251)))

(assert (= (and b!7110326 (is-Cons!68769 (exprs!7426 c!9994))) b!7110547))

(declare-fun b!7110562 () Bool)

(declare-fun e!4273256 () Bool)

(assert (=> b!7110562 (= e!4273256 tp_is_empty!45097)))

(assert (=> b!7110331 (= tp!1955962 e!4273256)))

(declare-fun b!7110565 () Bool)

(declare-fun tp!1956005 () Bool)

(declare-fun tp!1956007 () Bool)

(assert (=> b!7110565 (= e!4273256 (and tp!1956005 tp!1956007))))

(declare-fun b!7110563 () Bool)

(declare-fun tp!1956006 () Bool)

(declare-fun tp!1956009 () Bool)

(assert (=> b!7110563 (= e!4273256 (and tp!1956006 tp!1956009))))

(declare-fun b!7110564 () Bool)

(declare-fun tp!1956008 () Bool)

(assert (=> b!7110564 (= e!4273256 tp!1956008)))

(assert (= (and b!7110331 (is-ElementMatch!17932 (regOne!36376 r!11554))) b!7110562))

(assert (= (and b!7110331 (is-Concat!26777 (regOne!36376 r!11554))) b!7110563))

(assert (= (and b!7110331 (is-Star!17932 (regOne!36376 r!11554))) b!7110564))

(assert (= (and b!7110331 (is-Union!17932 (regOne!36376 r!11554))) b!7110565))

(declare-fun b!7110566 () Bool)

(declare-fun e!4273257 () Bool)

(assert (=> b!7110566 (= e!4273257 tp_is_empty!45097)))

(assert (=> b!7110331 (= tp!1955960 e!4273257)))

(declare-fun b!7110569 () Bool)

(declare-fun tp!1956010 () Bool)

(declare-fun tp!1956012 () Bool)

(assert (=> b!7110569 (= e!4273257 (and tp!1956010 tp!1956012))))

(declare-fun b!7110567 () Bool)

(declare-fun tp!1956011 () Bool)

(declare-fun tp!1956014 () Bool)

(assert (=> b!7110567 (= e!4273257 (and tp!1956011 tp!1956014))))

(declare-fun b!7110568 () Bool)

(declare-fun tp!1956013 () Bool)

(assert (=> b!7110568 (= e!4273257 tp!1956013)))

(assert (= (and b!7110331 (is-ElementMatch!17932 (regTwo!36376 r!11554))) b!7110566))

(assert (= (and b!7110331 (is-Concat!26777 (regTwo!36376 r!11554))) b!7110567))

(assert (= (and b!7110331 (is-Star!17932 (regTwo!36376 r!11554))) b!7110568))

(assert (= (and b!7110331 (is-Union!17932 (regTwo!36376 r!11554))) b!7110569))

(declare-fun b!7110570 () Bool)

(declare-fun e!4273258 () Bool)

(assert (=> b!7110570 (= e!4273258 tp_is_empty!45097)))

(assert (=> b!7110328 (= tp!1955965 e!4273258)))

(declare-fun b!7110573 () Bool)

(declare-fun tp!1956015 () Bool)

(declare-fun tp!1956017 () Bool)

(assert (=> b!7110573 (= e!4273258 (and tp!1956015 tp!1956017))))

(declare-fun b!7110571 () Bool)

(declare-fun tp!1956016 () Bool)

(declare-fun tp!1956019 () Bool)

(assert (=> b!7110571 (= e!4273258 (and tp!1956016 tp!1956019))))

(declare-fun b!7110572 () Bool)

(declare-fun tp!1956018 () Bool)

(assert (=> b!7110572 (= e!4273258 tp!1956018)))

(assert (= (and b!7110328 (is-ElementMatch!17932 (reg!18261 r!11554))) b!7110570))

(assert (= (and b!7110328 (is-Concat!26777 (reg!18261 r!11554))) b!7110571))

(assert (= (and b!7110328 (is-Star!17932 (reg!18261 r!11554))) b!7110572))

(assert (= (and b!7110328 (is-Union!17932 (reg!18261 r!11554))) b!7110573))

(declare-fun b!7110574 () Bool)

(declare-fun e!4273259 () Bool)

(assert (=> b!7110574 (= e!4273259 tp_is_empty!45097)))

(assert (=> b!7110327 (= tp!1955963 e!4273259)))

(declare-fun b!7110577 () Bool)

(declare-fun tp!1956020 () Bool)

(declare-fun tp!1956022 () Bool)

(assert (=> b!7110577 (= e!4273259 (and tp!1956020 tp!1956022))))

(declare-fun b!7110575 () Bool)

(declare-fun tp!1956021 () Bool)

(declare-fun tp!1956024 () Bool)

(assert (=> b!7110575 (= e!4273259 (and tp!1956021 tp!1956024))))

(declare-fun b!7110576 () Bool)

(declare-fun tp!1956023 () Bool)

(assert (=> b!7110576 (= e!4273259 tp!1956023)))

(assert (= (and b!7110327 (is-ElementMatch!17932 (regOne!36377 r!11554))) b!7110574))

(assert (= (and b!7110327 (is-Concat!26777 (regOne!36377 r!11554))) b!7110575))

(assert (= (and b!7110327 (is-Star!17932 (regOne!36377 r!11554))) b!7110576))

(assert (= (and b!7110327 (is-Union!17932 (regOne!36377 r!11554))) b!7110577))

(declare-fun b!7110578 () Bool)

(declare-fun e!4273260 () Bool)

(assert (=> b!7110578 (= e!4273260 tp_is_empty!45097)))

(assert (=> b!7110327 (= tp!1955964 e!4273260)))

(declare-fun b!7110581 () Bool)

(declare-fun tp!1956025 () Bool)

(declare-fun tp!1956027 () Bool)

(assert (=> b!7110581 (= e!4273260 (and tp!1956025 tp!1956027))))

(declare-fun b!7110579 () Bool)

(declare-fun tp!1956026 () Bool)

(declare-fun tp!1956029 () Bool)

(assert (=> b!7110579 (= e!4273260 (and tp!1956026 tp!1956029))))

(declare-fun b!7110580 () Bool)

(declare-fun tp!1956028 () Bool)

(assert (=> b!7110580 (= e!4273260 tp!1956028)))

(assert (= (and b!7110327 (is-ElementMatch!17932 (regTwo!36377 r!11554))) b!7110578))

(assert (= (and b!7110327 (is-Concat!26777 (regTwo!36377 r!11554))) b!7110579))

(assert (= (and b!7110327 (is-Star!17932 (regTwo!36377 r!11554))) b!7110580))

(assert (= (and b!7110327 (is-Union!17932 (regTwo!36377 r!11554))) b!7110581))

(push 1)

(assert (not b!7110581))

(assert (not d!2220102))

(assert (not d!2220094))

(assert (not b!7110564))

(assert (not b!7110503))

(assert (not b!7110568))

(assert (not b!7110577))

(assert (not bm!648707))

(assert (not b!7110569))

(assert (not d!2220076))

(assert (not b!7110451))

(assert (not d!2220108))

(assert (not d!2220098))

(assert (not bm!648701))

(assert (not bm!648729))

(assert (not d!2220112))

(assert (not bm!648733))

(assert (not bm!648705))

(assert (not b!7110425))

(assert (not d!2220114))

(assert (not b!7110563))

(assert (not bm!648715))

(assert (not d!2220110))

(assert (not d!2220078))

(assert (not d!2220086))

(assert (not bm!648724))

(assert (not d!2220096))

(assert (not b!7110532))

(assert (not b!7110567))

(assert (not b!7110580))

(assert (not b!7110572))

(assert (not b!7110499))

(assert (not bm!648697))

(assert (not bm!648739))

(assert (not d!2220090))

(assert (not b!7110565))

(assert (not b!7110521))

(assert (not b!7110502))

(assert (not bm!648741))

(assert (not bm!648735))

(assert (not b!7110510))

(assert (not b!7110546))

(assert (not bm!648703))

(assert (not d!2220072))

(assert (not bm!648727))

(assert (not bm!648737))

(assert (not b!7110575))

(assert (not d!2220104))

(assert (not bm!648719))

(assert (not bm!648723))

(assert (not b!7110576))

(assert (not bm!648731))

(assert (not b!7110436))

(assert (not bm!648743))

(assert tp_is_empty!45097)

(assert (not d!2220080))

(assert (not b!7110579))

(assert (not d!2220122))

(assert (not b!7110452))

(assert (not bm!648682))

(assert (not b!7110547))

(assert (not bm!648717))

(assert (not b!7110573))

(assert (not bm!648699))

(assert (not b!7110477))

(assert (not b!7110396))

(assert (not b!7110571))

(assert (not bm!648681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

