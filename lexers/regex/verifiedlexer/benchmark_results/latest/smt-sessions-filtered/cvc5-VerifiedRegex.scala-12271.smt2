; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690146 () Bool)

(assert start!690146)

(declare-fun b!7090267 () Bool)

(declare-fun e!4262364 () Bool)

(declare-fun tp!1947602 () Bool)

(assert (=> b!7090267 (= e!4262364 tp!1947602)))

(declare-fun b!7090268 () Bool)

(declare-fun res!2895814 () Bool)

(declare-fun e!4262363 () Bool)

(assert (=> b!7090268 (=> (not res!2895814) (not e!4262363))))

(declare-datatypes ((C!35838 0))(
  ( (C!35839 (val!27625 Int)) )
))
(declare-datatypes ((Regex!17784 0))(
  ( (ElementMatch!17784 (c!1323219 C!35838)) (Concat!26629 (regOne!36080 Regex!17784) (regTwo!36080 Regex!17784)) (EmptyExpr!17784) (Star!17784 (reg!18113 Regex!17784)) (EmptyLang!17784) (Union!17784 (regOne!36081 Regex!17784) (regTwo!36081 Regex!17784)) )
))
(declare-fun r!11554 () Regex!17784)

(declare-fun nullable!7424 (Regex!17784) Bool)

(assert (=> b!7090268 (= res!2895814 (nullable!7424 (regOne!36080 r!11554)))))

(declare-fun b!7090269 () Bool)

(declare-datatypes ((List!68747 0))(
  ( (Nil!68623) (Cons!68623 (h!75071 Regex!17784) (t!382532 List!68747)) )
))
(declare-datatypes ((Context!13560 0))(
  ( (Context!13561 (exprs!7280 List!68747)) )
))
(declare-fun c!9994 () Context!13560)

(declare-fun lambda!429704 () Int)

(declare-fun forall!16724 (List!68747 Int) Bool)

(assert (=> b!7090269 (= e!4262363 (not (forall!16724 (exprs!7280 c!9994) lambda!429704)))))

(declare-fun lt!2555683 () List!68747)

(declare-fun auxCtx!45 () Context!13560)

(declare-fun ++!15953 (List!68747 List!68747) List!68747)

(assert (=> b!7090269 (= lt!2555683 (++!15953 (exprs!7280 c!9994) (exprs!7280 auxCtx!45)))))

(declare-datatypes ((Unit!162259 0))(
  ( (Unit!162260) )
))
(declare-fun lt!2555682 () Unit!162259)

(declare-fun lemmaConcatPreservesForall!1083 (List!68747 List!68747 Int) Unit!162259)

(assert (=> b!7090269 (= lt!2555682 (lemmaConcatPreservesForall!1083 (exprs!7280 c!9994) (exprs!7280 auxCtx!45) lambda!429704))))

(declare-fun lt!2555681 () Unit!162259)

(assert (=> b!7090269 (= lt!2555681 (lemmaConcatPreservesForall!1083 (exprs!7280 c!9994) (exprs!7280 auxCtx!45) lambda!429704))))

(declare-fun b!7090270 () Bool)

(declare-fun e!4262366 () Bool)

(declare-fun tp_is_empty!44801 () Bool)

(assert (=> b!7090270 (= e!4262366 tp_is_empty!44801)))

(declare-fun b!7090271 () Bool)

(declare-fun res!2895813 () Bool)

(assert (=> b!7090271 (=> (not res!2895813) (not e!4262363))))

(declare-fun a!1901 () C!35838)

(assert (=> b!7090271 (= res!2895813 (and (or (not (is-ElementMatch!17784 r!11554)) (not (= (c!1323219 r!11554) a!1901))) (not (is-Union!17784 r!11554)) (is-Concat!26629 r!11554)))))

(declare-fun b!7090272 () Bool)

(declare-fun tp!1947600 () Bool)

(declare-fun tp!1947599 () Bool)

(assert (=> b!7090272 (= e!4262366 (and tp!1947600 tp!1947599))))

(declare-fun b!7090273 () Bool)

(declare-fun tp!1947597 () Bool)

(assert (=> b!7090273 (= e!4262366 tp!1947597)))

(declare-fun b!7090274 () Bool)

(declare-fun e!4262365 () Bool)

(declare-fun tp!1947601 () Bool)

(assert (=> b!7090274 (= e!4262365 tp!1947601)))

(declare-fun res!2895815 () Bool)

(assert (=> start!690146 (=> (not res!2895815) (not e!4262363))))

(declare-fun validRegex!9059 (Regex!17784) Bool)

(assert (=> start!690146 (= res!2895815 (validRegex!9059 r!11554))))

(assert (=> start!690146 e!4262363))

(assert (=> start!690146 e!4262366))

(assert (=> start!690146 tp_is_empty!44801))

(declare-fun inv!87326 (Context!13560) Bool)

(assert (=> start!690146 (and (inv!87326 c!9994) e!4262365)))

(assert (=> start!690146 (and (inv!87326 auxCtx!45) e!4262364)))

(declare-fun b!7090275 () Bool)

(declare-fun tp!1947598 () Bool)

(declare-fun tp!1947603 () Bool)

(assert (=> b!7090275 (= e!4262366 (and tp!1947598 tp!1947603))))

(assert (= (and start!690146 res!2895815) b!7090271))

(assert (= (and b!7090271 res!2895813) b!7090268))

(assert (= (and b!7090268 res!2895814) b!7090269))

(assert (= (and start!690146 (is-ElementMatch!17784 r!11554)) b!7090270))

(assert (= (and start!690146 (is-Concat!26629 r!11554)) b!7090275))

(assert (= (and start!690146 (is-Star!17784 r!11554)) b!7090273))

(assert (= (and start!690146 (is-Union!17784 r!11554)) b!7090272))

(assert (= start!690146 b!7090274))

(assert (= start!690146 b!7090267))

(declare-fun m!7819552 () Bool)

(assert (=> b!7090268 m!7819552))

(declare-fun m!7819554 () Bool)

(assert (=> b!7090269 m!7819554))

(declare-fun m!7819556 () Bool)

(assert (=> b!7090269 m!7819556))

(declare-fun m!7819558 () Bool)

(assert (=> b!7090269 m!7819558))

(assert (=> b!7090269 m!7819558))

(declare-fun m!7819560 () Bool)

(assert (=> start!690146 m!7819560))

(declare-fun m!7819562 () Bool)

(assert (=> start!690146 m!7819562))

(declare-fun m!7819564 () Bool)

(assert (=> start!690146 m!7819564))

(push 1)

(assert (not b!7090269))

(assert tp_is_empty!44801)

(assert (not b!7090273))

(assert (not start!690146))

(assert (not b!7090272))

(assert (not b!7090275))

(assert (not b!7090267))

(assert (not b!7090274))

(assert (not b!7090268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7090321 () Bool)

(declare-fun e!4262398 () Bool)

(declare-fun e!4262393 () Bool)

(assert (=> b!7090321 (= e!4262398 e!4262393)))

(declare-fun res!2895835 () Bool)

(assert (=> b!7090321 (=> (not res!2895835) (not e!4262393))))

(declare-fun call!644706 () Bool)

(assert (=> b!7090321 (= res!2895835 call!644706)))

(declare-fun b!7090322 () Bool)

(declare-fun e!4262399 () Bool)

(declare-fun call!644708 () Bool)

(assert (=> b!7090322 (= e!4262399 call!644708)))

(declare-fun b!7090323 () Bool)

(declare-fun e!4262397 () Bool)

(assert (=> b!7090323 (= e!4262397 e!4262399)))

(declare-fun res!2895836 () Bool)

(assert (=> b!7090323 (= res!2895836 (not (nullable!7424 (reg!18113 r!11554))))))

(assert (=> b!7090323 (=> (not res!2895836) (not e!4262399))))

(declare-fun bm!644701 () Bool)

(declare-fun c!1323226 () Bool)

(assert (=> bm!644701 (= call!644706 (validRegex!9059 (ite c!1323226 (regTwo!36081 r!11554) (regOne!36080 r!11554))))))

(declare-fun b!7090324 () Bool)

(declare-fun e!4262394 () Bool)

(assert (=> b!7090324 (= e!4262397 e!4262394)))

(assert (=> b!7090324 (= c!1323226 (is-Union!17784 r!11554))))

(declare-fun d!2216766 () Bool)

(declare-fun res!2895838 () Bool)

(declare-fun e!4262396 () Bool)

(assert (=> d!2216766 (=> res!2895838 e!4262396)))

(assert (=> d!2216766 (= res!2895838 (is-ElementMatch!17784 r!11554))))

(assert (=> d!2216766 (= (validRegex!9059 r!11554) e!4262396)))

(declare-fun b!7090325 () Bool)

(declare-fun e!4262395 () Bool)

(assert (=> b!7090325 (= e!4262395 call!644706)))

(declare-fun b!7090326 () Bool)

(declare-fun res!2895837 () Bool)

(assert (=> b!7090326 (=> res!2895837 e!4262398)))

(assert (=> b!7090326 (= res!2895837 (not (is-Concat!26629 r!11554)))))

(assert (=> b!7090326 (= e!4262394 e!4262398)))

(declare-fun bm!644702 () Bool)

(declare-fun call!644707 () Bool)

(assert (=> bm!644702 (= call!644707 call!644708)))

(declare-fun b!7090327 () Bool)

(assert (=> b!7090327 (= e!4262393 call!644707)))

(declare-fun c!1323225 () Bool)

(declare-fun bm!644703 () Bool)

(assert (=> bm!644703 (= call!644708 (validRegex!9059 (ite c!1323225 (reg!18113 r!11554) (ite c!1323226 (regOne!36081 r!11554) (regTwo!36080 r!11554)))))))

(declare-fun b!7090328 () Bool)

(declare-fun res!2895839 () Bool)

(assert (=> b!7090328 (=> (not res!2895839) (not e!4262395))))

(assert (=> b!7090328 (= res!2895839 call!644707)))

(assert (=> b!7090328 (= e!4262394 e!4262395)))

(declare-fun b!7090329 () Bool)

(assert (=> b!7090329 (= e!4262396 e!4262397)))

(assert (=> b!7090329 (= c!1323225 (is-Star!17784 r!11554))))

(assert (= (and d!2216766 (not res!2895838)) b!7090329))

(assert (= (and b!7090329 c!1323225) b!7090323))

(assert (= (and b!7090329 (not c!1323225)) b!7090324))

(assert (= (and b!7090323 res!2895836) b!7090322))

(assert (= (and b!7090324 c!1323226) b!7090328))

(assert (= (and b!7090324 (not c!1323226)) b!7090326))

(assert (= (and b!7090328 res!2895839) b!7090325))

(assert (= (and b!7090326 (not res!2895837)) b!7090321))

(assert (= (and b!7090321 res!2895835) b!7090327))

(assert (= (or b!7090328 b!7090327) bm!644702))

(assert (= (or b!7090325 b!7090321) bm!644701))

(assert (= (or b!7090322 bm!644702) bm!644703))

(declare-fun m!7819582 () Bool)

(assert (=> b!7090323 m!7819582))

(declare-fun m!7819584 () Bool)

(assert (=> bm!644701 m!7819584))

(declare-fun m!7819586 () Bool)

(assert (=> bm!644703 m!7819586))

(assert (=> start!690146 d!2216766))

(declare-fun bs!1883400 () Bool)

(declare-fun d!2216772 () Bool)

(assert (= bs!1883400 (and d!2216772 b!7090269)))

(declare-fun lambda!429714 () Int)

(assert (=> bs!1883400 (= lambda!429714 lambda!429704)))

(assert (=> d!2216772 (= (inv!87326 c!9994) (forall!16724 (exprs!7280 c!9994) lambda!429714))))

(declare-fun bs!1883401 () Bool)

(assert (= bs!1883401 d!2216772))

(declare-fun m!7819588 () Bool)

(assert (=> bs!1883401 m!7819588))

(assert (=> start!690146 d!2216772))

(declare-fun bs!1883402 () Bool)

(declare-fun d!2216774 () Bool)

(assert (= bs!1883402 (and d!2216774 b!7090269)))

(declare-fun lambda!429715 () Int)

(assert (=> bs!1883402 (= lambda!429715 lambda!429704)))

(declare-fun bs!1883403 () Bool)

(assert (= bs!1883403 (and d!2216774 d!2216772)))

(assert (=> bs!1883403 (= lambda!429715 lambda!429714)))

(assert (=> d!2216774 (= (inv!87326 auxCtx!45) (forall!16724 (exprs!7280 auxCtx!45) lambda!429715))))

(declare-fun bs!1883404 () Bool)

(assert (= bs!1883404 d!2216774))

(declare-fun m!7819590 () Bool)

(assert (=> bs!1883404 m!7819590))

(assert (=> start!690146 d!2216774))

(declare-fun d!2216776 () Bool)

(declare-fun nullableFct!2847 (Regex!17784) Bool)

(assert (=> d!2216776 (= (nullable!7424 (regOne!36080 r!11554)) (nullableFct!2847 (regOne!36080 r!11554)))))

(declare-fun bs!1883405 () Bool)

(assert (= bs!1883405 d!2216776))

(declare-fun m!7819592 () Bool)

(assert (=> bs!1883405 m!7819592))

(assert (=> b!7090268 d!2216776))

(declare-fun d!2216778 () Bool)

(declare-fun res!2895854 () Bool)

(declare-fun e!4262418 () Bool)

(assert (=> d!2216778 (=> res!2895854 e!4262418)))

(assert (=> d!2216778 (= res!2895854 (is-Nil!68623 (exprs!7280 c!9994)))))

(assert (=> d!2216778 (= (forall!16724 (exprs!7280 c!9994) lambda!429704) e!4262418)))

(declare-fun b!7090352 () Bool)

(declare-fun e!4262419 () Bool)

(assert (=> b!7090352 (= e!4262418 e!4262419)))

(declare-fun res!2895855 () Bool)

(assert (=> b!7090352 (=> (not res!2895855) (not e!4262419))))

(declare-fun dynLambda!27996 (Int Regex!17784) Bool)

(assert (=> b!7090352 (= res!2895855 (dynLambda!27996 lambda!429704 (h!75071 (exprs!7280 c!9994))))))

(declare-fun b!7090353 () Bool)

(assert (=> b!7090353 (= e!4262419 (forall!16724 (t!382532 (exprs!7280 c!9994)) lambda!429704))))

(assert (= (and d!2216778 (not res!2895854)) b!7090352))

(assert (= (and b!7090352 res!2895855) b!7090353))

(declare-fun b_lambda!271001 () Bool)

(assert (=> (not b_lambda!271001) (not b!7090352)))

(declare-fun m!7819594 () Bool)

(assert (=> b!7090352 m!7819594))

(declare-fun m!7819596 () Bool)

(assert (=> b!7090353 m!7819596))

(assert (=> b!7090269 d!2216778))

(declare-fun b!7090362 () Bool)

(declare-fun e!4262424 () List!68747)

(assert (=> b!7090362 (= e!4262424 (exprs!7280 auxCtx!45))))

(declare-fun b!7090364 () Bool)

(declare-fun res!2895860 () Bool)

(declare-fun e!4262425 () Bool)

(assert (=> b!7090364 (=> (not res!2895860) (not e!4262425))))

(declare-fun lt!2555695 () List!68747)

(declare-fun size!41307 (List!68747) Int)

(assert (=> b!7090364 (= res!2895860 (= (size!41307 lt!2555695) (+ (size!41307 (exprs!7280 c!9994)) (size!41307 (exprs!7280 auxCtx!45)))))))

(declare-fun b!7090363 () Bool)

(assert (=> b!7090363 (= e!4262424 (Cons!68623 (h!75071 (exprs!7280 c!9994)) (++!15953 (t!382532 (exprs!7280 c!9994)) (exprs!7280 auxCtx!45))))))

(declare-fun d!2216780 () Bool)

(assert (=> d!2216780 e!4262425))

(declare-fun res!2895861 () Bool)

(assert (=> d!2216780 (=> (not res!2895861) (not e!4262425))))

(declare-fun content!13932 (List!68747) (Set Regex!17784))

(assert (=> d!2216780 (= res!2895861 (= (content!13932 lt!2555695) (set.union (content!13932 (exprs!7280 c!9994)) (content!13932 (exprs!7280 auxCtx!45)))))))

(assert (=> d!2216780 (= lt!2555695 e!4262424)))

(declare-fun c!1323233 () Bool)

(assert (=> d!2216780 (= c!1323233 (is-Nil!68623 (exprs!7280 c!9994)))))

(assert (=> d!2216780 (= (++!15953 (exprs!7280 c!9994) (exprs!7280 auxCtx!45)) lt!2555695)))

(declare-fun b!7090365 () Bool)

(assert (=> b!7090365 (= e!4262425 (or (not (= (exprs!7280 auxCtx!45) Nil!68623)) (= lt!2555695 (exprs!7280 c!9994))))))

(assert (= (and d!2216780 c!1323233) b!7090362))

(assert (= (and d!2216780 (not c!1323233)) b!7090363))

(assert (= (and d!2216780 res!2895861) b!7090364))

(assert (= (and b!7090364 res!2895860) b!7090365))

(declare-fun m!7819598 () Bool)

(assert (=> b!7090364 m!7819598))

(declare-fun m!7819600 () Bool)

(assert (=> b!7090364 m!7819600))

(declare-fun m!7819602 () Bool)

(assert (=> b!7090364 m!7819602))

(declare-fun m!7819604 () Bool)

(assert (=> b!7090363 m!7819604))

(declare-fun m!7819606 () Bool)

(assert (=> d!2216780 m!7819606))

(declare-fun m!7819608 () Bool)

(assert (=> d!2216780 m!7819608))

(declare-fun m!7819610 () Bool)

(assert (=> d!2216780 m!7819610))

(assert (=> b!7090269 d!2216780))

(declare-fun d!2216782 () Bool)

(assert (=> d!2216782 (forall!16724 (++!15953 (exprs!7280 c!9994) (exprs!7280 auxCtx!45)) lambda!429704)))

(declare-fun lt!2555698 () Unit!162259)

(declare-fun choose!54662 (List!68747 List!68747 Int) Unit!162259)

(assert (=> d!2216782 (= lt!2555698 (choose!54662 (exprs!7280 c!9994) (exprs!7280 auxCtx!45) lambda!429704))))

(assert (=> d!2216782 (forall!16724 (exprs!7280 c!9994) lambda!429704)))

(assert (=> d!2216782 (= (lemmaConcatPreservesForall!1083 (exprs!7280 c!9994) (exprs!7280 auxCtx!45) lambda!429704) lt!2555698)))

(declare-fun bs!1883406 () Bool)

(assert (= bs!1883406 d!2216782))

(assert (=> bs!1883406 m!7819556))

(assert (=> bs!1883406 m!7819556))

(declare-fun m!7819618 () Bool)

(assert (=> bs!1883406 m!7819618))

(declare-fun m!7819620 () Bool)

(assert (=> bs!1883406 m!7819620))

(assert (=> bs!1883406 m!7819554))

(assert (=> b!7090269 d!2216782))

(declare-fun b!7090387 () Bool)

(declare-fun e!4262435 () Bool)

(declare-fun tp!1947639 () Bool)

(assert (=> b!7090387 (= e!4262435 tp!1947639)))

(declare-fun b!7090386 () Bool)

(declare-fun tp!1947636 () Bool)

(declare-fun tp!1947637 () Bool)

(assert (=> b!7090386 (= e!4262435 (and tp!1947636 tp!1947637))))

(assert (=> b!7090275 (= tp!1947598 e!4262435)))

(declare-fun b!7090385 () Bool)

(assert (=> b!7090385 (= e!4262435 tp_is_empty!44801)))

(declare-fun b!7090388 () Bool)

(declare-fun tp!1947635 () Bool)

(declare-fun tp!1947638 () Bool)

(assert (=> b!7090388 (= e!4262435 (and tp!1947635 tp!1947638))))

(assert (= (and b!7090275 (is-ElementMatch!17784 (regOne!36080 r!11554))) b!7090385))

(assert (= (and b!7090275 (is-Concat!26629 (regOne!36080 r!11554))) b!7090386))

(assert (= (and b!7090275 (is-Star!17784 (regOne!36080 r!11554))) b!7090387))

(assert (= (and b!7090275 (is-Union!17784 (regOne!36080 r!11554))) b!7090388))

(declare-fun b!7090391 () Bool)

(declare-fun e!4262436 () Bool)

(declare-fun tp!1947644 () Bool)

(assert (=> b!7090391 (= e!4262436 tp!1947644)))

(declare-fun b!7090390 () Bool)

(declare-fun tp!1947641 () Bool)

(declare-fun tp!1947642 () Bool)

(assert (=> b!7090390 (= e!4262436 (and tp!1947641 tp!1947642))))

(assert (=> b!7090275 (= tp!1947603 e!4262436)))

(declare-fun b!7090389 () Bool)

(assert (=> b!7090389 (= e!4262436 tp_is_empty!44801)))

(declare-fun b!7090392 () Bool)

(declare-fun tp!1947640 () Bool)

(declare-fun tp!1947643 () Bool)

(assert (=> b!7090392 (= e!4262436 (and tp!1947640 tp!1947643))))

(assert (= (and b!7090275 (is-ElementMatch!17784 (regTwo!36080 r!11554))) b!7090389))

(assert (= (and b!7090275 (is-Concat!26629 (regTwo!36080 r!11554))) b!7090390))

(assert (= (and b!7090275 (is-Star!17784 (regTwo!36080 r!11554))) b!7090391))

(assert (= (and b!7090275 (is-Union!17784 (regTwo!36080 r!11554))) b!7090392))

(declare-fun b!7090395 () Bool)

(declare-fun e!4262437 () Bool)

(declare-fun tp!1947649 () Bool)

(assert (=> b!7090395 (= e!4262437 tp!1947649)))

(declare-fun b!7090394 () Bool)

(declare-fun tp!1947646 () Bool)

(declare-fun tp!1947647 () Bool)

(assert (=> b!7090394 (= e!4262437 (and tp!1947646 tp!1947647))))

(assert (=> b!7090272 (= tp!1947600 e!4262437)))

(declare-fun b!7090393 () Bool)

(assert (=> b!7090393 (= e!4262437 tp_is_empty!44801)))

(declare-fun b!7090396 () Bool)

(declare-fun tp!1947645 () Bool)

(declare-fun tp!1947648 () Bool)

(assert (=> b!7090396 (= e!4262437 (and tp!1947645 tp!1947648))))

(assert (= (and b!7090272 (is-ElementMatch!17784 (regOne!36081 r!11554))) b!7090393))

(assert (= (and b!7090272 (is-Concat!26629 (regOne!36081 r!11554))) b!7090394))

(assert (= (and b!7090272 (is-Star!17784 (regOne!36081 r!11554))) b!7090395))

(assert (= (and b!7090272 (is-Union!17784 (regOne!36081 r!11554))) b!7090396))

(declare-fun b!7090399 () Bool)

(declare-fun e!4262438 () Bool)

(declare-fun tp!1947654 () Bool)

(assert (=> b!7090399 (= e!4262438 tp!1947654)))

(declare-fun b!7090398 () Bool)

(declare-fun tp!1947651 () Bool)

(declare-fun tp!1947652 () Bool)

(assert (=> b!7090398 (= e!4262438 (and tp!1947651 tp!1947652))))

(assert (=> b!7090272 (= tp!1947599 e!4262438)))

(declare-fun b!7090397 () Bool)

(assert (=> b!7090397 (= e!4262438 tp_is_empty!44801)))

(declare-fun b!7090400 () Bool)

(declare-fun tp!1947650 () Bool)

(declare-fun tp!1947653 () Bool)

(assert (=> b!7090400 (= e!4262438 (and tp!1947650 tp!1947653))))

(assert (= (and b!7090272 (is-ElementMatch!17784 (regTwo!36081 r!11554))) b!7090397))

(assert (= (and b!7090272 (is-Concat!26629 (regTwo!36081 r!11554))) b!7090398))

(assert (= (and b!7090272 (is-Star!17784 (regTwo!36081 r!11554))) b!7090399))

(assert (= (and b!7090272 (is-Union!17784 (regTwo!36081 r!11554))) b!7090400))

(declare-fun b!7090405 () Bool)

(declare-fun e!4262441 () Bool)

(declare-fun tp!1947659 () Bool)

(declare-fun tp!1947660 () Bool)

(assert (=> b!7090405 (= e!4262441 (and tp!1947659 tp!1947660))))

(assert (=> b!7090267 (= tp!1947602 e!4262441)))

(assert (= (and b!7090267 (is-Cons!68623 (exprs!7280 auxCtx!45))) b!7090405))

(declare-fun b!7090408 () Bool)

(declare-fun e!4262442 () Bool)

(declare-fun tp!1947665 () Bool)

(assert (=> b!7090408 (= e!4262442 tp!1947665)))

(declare-fun b!7090407 () Bool)

(declare-fun tp!1947662 () Bool)

(declare-fun tp!1947663 () Bool)

(assert (=> b!7090407 (= e!4262442 (and tp!1947662 tp!1947663))))

(assert (=> b!7090273 (= tp!1947597 e!4262442)))

(declare-fun b!7090406 () Bool)

(assert (=> b!7090406 (= e!4262442 tp_is_empty!44801)))

(declare-fun b!7090409 () Bool)

(declare-fun tp!1947661 () Bool)

(declare-fun tp!1947664 () Bool)

(assert (=> b!7090409 (= e!4262442 (and tp!1947661 tp!1947664))))

(assert (= (and b!7090273 (is-ElementMatch!17784 (reg!18113 r!11554))) b!7090406))

(assert (= (and b!7090273 (is-Concat!26629 (reg!18113 r!11554))) b!7090407))

(assert (= (and b!7090273 (is-Star!17784 (reg!18113 r!11554))) b!7090408))

(assert (= (and b!7090273 (is-Union!17784 (reg!18113 r!11554))) b!7090409))

(declare-fun b!7090410 () Bool)

(declare-fun e!4262443 () Bool)

(declare-fun tp!1947666 () Bool)

(declare-fun tp!1947667 () Bool)

(assert (=> b!7090410 (= e!4262443 (and tp!1947666 tp!1947667))))

(assert (=> b!7090274 (= tp!1947601 e!4262443)))

(assert (= (and b!7090274 (is-Cons!68623 (exprs!7280 c!9994))) b!7090410))

(declare-fun b_lambda!271003 () Bool)

(assert (= b_lambda!271001 (or b!7090269 b_lambda!271003)))

(declare-fun bs!1883407 () Bool)

(declare-fun d!2216786 () Bool)

(assert (= bs!1883407 (and d!2216786 b!7090269)))

(assert (=> bs!1883407 (= (dynLambda!27996 lambda!429704 (h!75071 (exprs!7280 c!9994))) (validRegex!9059 (h!75071 (exprs!7280 c!9994))))))

(declare-fun m!7819622 () Bool)

(assert (=> bs!1883407 m!7819622))

(assert (=> b!7090352 d!2216786))

(push 1)

(assert (not b_lambda!271003))

(assert (not b!7090364))

(assert (not d!2216776))

(assert (not b!7090323))

(assert (not d!2216780))

(assert (not bm!644701))

(assert (not b!7090409))

(assert (not b!7090353))

(assert (not b!7090390))

(assert (not b!7090387))

(assert (not b!7090363))

(assert (not b!7090388))

(assert (not d!2216772))

(assert (not d!2216782))

(assert (not b!7090398))

(assert (not b!7090396))

(assert (not b!7090395))

(assert tp_is_empty!44801)

(assert (not b!7090391))

(assert (not d!2216774))

(assert (not b!7090405))

(assert (not b!7090407))

(assert (not b!7090408))

(assert (not b!7090392))

(assert (not b!7090394))

(assert (not bs!1883407))

(assert (not bm!644703))

(assert (not b!7090386))

(assert (not b!7090399))

(assert (not b!7090400))

(assert (not b!7090410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

