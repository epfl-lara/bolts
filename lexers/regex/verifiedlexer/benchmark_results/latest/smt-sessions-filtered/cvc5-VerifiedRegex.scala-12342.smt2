; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691974 () Bool)

(assert start!691974)

(declare-fun b!7108863 () Bool)

(declare-fun res!2901407 () Bool)

(declare-fun e!4272322 () Bool)

(assert (=> b!7108863 (=> (not res!2901407) (not e!4272322))))

(declare-datatypes ((C!36122 0))(
  ( (C!36123 (val!27767 Int)) )
))
(declare-datatypes ((Regex!17926 0))(
  ( (ElementMatch!17926 (c!1326541 C!36122)) (Concat!26771 (regOne!36364 Regex!17926) (regTwo!36364 Regex!17926)) (EmptyExpr!17926) (Star!17926 (reg!18255 Regex!17926)) (EmptyLang!17926) (Union!17926 (regOne!36365 Regex!17926) (regTwo!36365 Regex!17926)) )
))
(declare-fun r!11554 () Regex!17926)

(declare-fun validRegex!9199 (Regex!17926) Bool)

(assert (=> b!7108863 (= res!2901407 (validRegex!9199 (regOne!36364 r!11554)))))

(declare-fun b!7108864 () Bool)

(declare-fun regexDepth!391 (Regex!17926) Int)

(assert (=> b!7108864 (= e!4272322 (>= (regexDepth!391 (regOne!36364 r!11554)) (regexDepth!391 r!11554)))))

(declare-fun b!7108865 () Bool)

(declare-fun res!2901406 () Bool)

(assert (=> b!7108865 (=> (not res!2901406) (not e!4272322))))

(declare-datatypes ((List!68887 0))(
  ( (Nil!68763) (Cons!68763 (h!75211 Regex!17926) (t!382710 List!68887)) )
))
(declare-datatypes ((Context!13840 0))(
  ( (Context!13841 (exprs!7420 List!68887)) )
))
(declare-fun lt!2559399 () Context!13840)

(declare-fun lt!2559402 () List!68887)

(declare-fun a!1901 () C!36122)

(declare-fun derivationStepZipperDown!2441 (Regex!17926 Context!13840 C!36122) (Set Context!13840))

(declare-fun $colon$colon!2784 (List!68887 Regex!17926) List!68887)

(assert (=> b!7108865 (= res!2901406 (= (derivationStepZipperDown!2441 r!11554 lt!2559399 a!1901) (set.union (derivationStepZipperDown!2441 (regOne!36364 r!11554) (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554))) a!1901) (derivationStepZipperDown!2441 (regTwo!36364 r!11554) lt!2559399 a!1901))))))

(declare-fun b!7108866 () Bool)

(declare-fun e!4272324 () Bool)

(assert (=> b!7108866 (= e!4272324 e!4272322)))

(declare-fun res!2901405 () Bool)

(assert (=> b!7108866 (=> (not res!2901405) (not e!4272322))))

(assert (=> b!7108866 (= res!2901405 (validRegex!9199 (regTwo!36364 r!11554)))))

(declare-datatypes ((Unit!162523 0))(
  ( (Unit!162524) )
))
(declare-fun lt!2559403 () Unit!162523)

(declare-fun c!9994 () Context!13840)

(declare-fun lambda!431768 () Int)

(declare-fun auxCtx!45 () Context!13840)

(declare-fun lemmaConcatPreservesForall!1211 (List!68887 List!68887 Int) Unit!162523)

(assert (=> b!7108866 (= lt!2559403 (lemmaConcatPreservesForall!1211 (exprs!7420 c!9994) (exprs!7420 auxCtx!45) lambda!431768))))

(assert (=> b!7108866 (= lt!2559399 (Context!13841 lt!2559402))))

(declare-fun ++!16078 (List!68887 List!68887) List!68887)

(assert (=> b!7108866 (= lt!2559402 (++!16078 (exprs!7420 c!9994) (exprs!7420 auxCtx!45)))))

(declare-fun lt!2559400 () Unit!162523)

(assert (=> b!7108866 (= lt!2559400 (lemmaConcatPreservesForall!1211 (exprs!7420 c!9994) (exprs!7420 auxCtx!45) lambda!431768))))

(declare-fun lt!2559401 () Unit!162523)

(assert (=> b!7108866 (= lt!2559401 (lemmaConcatPreservesForall!1211 (exprs!7420 c!9994) (exprs!7420 auxCtx!45) lambda!431768))))

(declare-fun b!7108867 () Bool)

(declare-fun e!4272323 () Bool)

(declare-fun tp!1955578 () Bool)

(declare-fun tp!1955580 () Bool)

(assert (=> b!7108867 (= e!4272323 (and tp!1955578 tp!1955580))))

(declare-fun res!2901409 () Bool)

(assert (=> start!691974 (=> (not res!2901409) (not e!4272324))))

(assert (=> start!691974 (= res!2901409 (validRegex!9199 r!11554))))

(assert (=> start!691974 e!4272324))

(assert (=> start!691974 e!4272323))

(declare-fun tp_is_empty!45085 () Bool)

(assert (=> start!691974 tp_is_empty!45085))

(declare-fun e!4272325 () Bool)

(declare-fun inv!87679 (Context!13840) Bool)

(assert (=> start!691974 (and (inv!87679 c!9994) e!4272325)))

(declare-fun e!4272321 () Bool)

(assert (=> start!691974 (and (inv!87679 auxCtx!45) e!4272321)))

(declare-fun b!7108868 () Bool)

(declare-fun tp!1955576 () Bool)

(assert (=> b!7108868 (= e!4272323 tp!1955576)))

(declare-fun b!7108869 () Bool)

(declare-fun res!2901410 () Bool)

(assert (=> b!7108869 (=> (not res!2901410) (not e!4272324))))

(assert (=> b!7108869 (= res!2901410 (and (or (not (is-ElementMatch!17926 r!11554)) (not (= (c!1326541 r!11554) a!1901))) (not (is-Union!17926 r!11554)) (is-Concat!26771 r!11554)))))

(declare-fun b!7108870 () Bool)

(declare-fun tp!1955575 () Bool)

(declare-fun tp!1955579 () Bool)

(assert (=> b!7108870 (= e!4272323 (and tp!1955575 tp!1955579))))

(declare-fun b!7108871 () Bool)

(declare-fun tp!1955577 () Bool)

(assert (=> b!7108871 (= e!4272321 tp!1955577)))

(declare-fun b!7108872 () Bool)

(declare-fun tp!1955581 () Bool)

(assert (=> b!7108872 (= e!4272325 tp!1955581)))

(declare-fun b!7108873 () Bool)

(assert (=> b!7108873 (= e!4272323 tp_is_empty!45085)))

(declare-fun b!7108874 () Bool)

(declare-fun res!2901408 () Bool)

(assert (=> b!7108874 (=> (not res!2901408) (not e!4272324))))

(declare-fun nullable!7563 (Regex!17926) Bool)

(assert (=> b!7108874 (= res!2901408 (nullable!7563 (regOne!36364 r!11554)))))

(assert (= (and start!691974 res!2901409) b!7108869))

(assert (= (and b!7108869 res!2901410) b!7108874))

(assert (= (and b!7108874 res!2901408) b!7108866))

(assert (= (and b!7108866 res!2901405) b!7108865))

(assert (= (and b!7108865 res!2901406) b!7108863))

(assert (= (and b!7108863 res!2901407) b!7108864))

(assert (= (and start!691974 (is-ElementMatch!17926 r!11554)) b!7108873))

(assert (= (and start!691974 (is-Concat!26771 r!11554)) b!7108870))

(assert (= (and start!691974 (is-Star!17926 r!11554)) b!7108868))

(assert (= (and start!691974 (is-Union!17926 r!11554)) b!7108867))

(assert (= start!691974 b!7108872))

(assert (= start!691974 b!7108871))

(declare-fun m!7830696 () Bool)

(assert (=> b!7108874 m!7830696))

(declare-fun m!7830698 () Bool)

(assert (=> b!7108865 m!7830698))

(declare-fun m!7830700 () Bool)

(assert (=> b!7108865 m!7830700))

(declare-fun m!7830702 () Bool)

(assert (=> b!7108865 m!7830702))

(declare-fun m!7830704 () Bool)

(assert (=> b!7108865 m!7830704))

(declare-fun m!7830706 () Bool)

(assert (=> b!7108866 m!7830706))

(assert (=> b!7108866 m!7830706))

(assert (=> b!7108866 m!7830706))

(declare-fun m!7830708 () Bool)

(assert (=> b!7108866 m!7830708))

(declare-fun m!7830710 () Bool)

(assert (=> b!7108866 m!7830710))

(declare-fun m!7830712 () Bool)

(assert (=> b!7108864 m!7830712))

(declare-fun m!7830714 () Bool)

(assert (=> b!7108864 m!7830714))

(declare-fun m!7830716 () Bool)

(assert (=> start!691974 m!7830716))

(declare-fun m!7830718 () Bool)

(assert (=> start!691974 m!7830718))

(declare-fun m!7830720 () Bool)

(assert (=> start!691974 m!7830720))

(declare-fun m!7830722 () Bool)

(assert (=> b!7108863 m!7830722))

(push 1)

(assert (not b!7108874))

(assert (not b!7108866))

(assert tp_is_empty!45085)

(assert (not start!691974))

(assert (not b!7108870))

(assert (not b!7108865))

(assert (not b!7108872))

(assert (not b!7108867))

(assert (not b!7108863))

(assert (not b!7108868))

(assert (not b!7108864))

(assert (not b!7108871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7108929 () Bool)

(declare-fun res!2901441 () Bool)

(declare-fun e!4272357 () Bool)

(assert (=> b!7108929 (=> res!2901441 e!4272357)))

(assert (=> b!7108929 (= res!2901441 (not (is-Concat!26771 (regTwo!36364 r!11554))))))

(declare-fun e!4272358 () Bool)

(assert (=> b!7108929 (= e!4272358 e!4272357)))

(declare-fun b!7108930 () Bool)

(declare-fun e!4272359 () Bool)

(declare-fun call!648256 () Bool)

(assert (=> b!7108930 (= e!4272359 call!648256)))

(declare-fun bm!648251 () Bool)

(declare-fun call!648258 () Bool)

(assert (=> bm!648251 (= call!648258 call!648256)))

(declare-fun c!1326547 () Bool)

(declare-fun bm!648252 () Bool)

(declare-fun c!1326548 () Bool)

(assert (=> bm!648252 (= call!648256 (validRegex!9199 (ite c!1326548 (reg!18255 (regTwo!36364 r!11554)) (ite c!1326547 (regTwo!36365 (regTwo!36364 r!11554)) (regOne!36364 (regTwo!36364 r!11554))))))))

(declare-fun bm!648253 () Bool)

(declare-fun call!648257 () Bool)

(assert (=> bm!648253 (= call!648257 (validRegex!9199 (ite c!1326547 (regOne!36365 (regTwo!36364 r!11554)) (regTwo!36364 (regTwo!36364 r!11554)))))))

(declare-fun b!7108931 () Bool)

(declare-fun res!2901442 () Bool)

(declare-fun e!4272356 () Bool)

(assert (=> b!7108931 (=> (not res!2901442) (not e!4272356))))

(assert (=> b!7108931 (= res!2901442 call!648257)))

(assert (=> b!7108931 (= e!4272358 e!4272356)))

(declare-fun b!7108932 () Bool)

(declare-fun e!4272361 () Bool)

(assert (=> b!7108932 (= e!4272361 call!648257)))

(declare-fun b!7108933 () Bool)

(declare-fun e!4272355 () Bool)

(assert (=> b!7108933 (= e!4272355 e!4272358)))

(assert (=> b!7108933 (= c!1326547 (is-Union!17926 (regTwo!36364 r!11554)))))

(declare-fun b!7108934 () Bool)

(assert (=> b!7108934 (= e!4272355 e!4272359)))

(declare-fun res!2901443 () Bool)

(assert (=> b!7108934 (= res!2901443 (not (nullable!7563 (reg!18255 (regTwo!36364 r!11554)))))))

(assert (=> b!7108934 (=> (not res!2901443) (not e!4272359))))

(declare-fun b!7108935 () Bool)

(declare-fun e!4272360 () Bool)

(assert (=> b!7108935 (= e!4272360 e!4272355)))

(assert (=> b!7108935 (= c!1326548 (is-Star!17926 (regTwo!36364 r!11554)))))

(declare-fun d!2219845 () Bool)

(declare-fun res!2901440 () Bool)

(assert (=> d!2219845 (=> res!2901440 e!4272360)))

(assert (=> d!2219845 (= res!2901440 (is-ElementMatch!17926 (regTwo!36364 r!11554)))))

(assert (=> d!2219845 (= (validRegex!9199 (regTwo!36364 r!11554)) e!4272360)))

(declare-fun b!7108936 () Bool)

(assert (=> b!7108936 (= e!4272356 call!648258)))

(declare-fun b!7108937 () Bool)

(assert (=> b!7108937 (= e!4272357 e!4272361)))

(declare-fun res!2901439 () Bool)

(assert (=> b!7108937 (=> (not res!2901439) (not e!4272361))))

(assert (=> b!7108937 (= res!2901439 call!648258)))

(assert (= (and d!2219845 (not res!2901440)) b!7108935))

(assert (= (and b!7108935 c!1326548) b!7108934))

(assert (= (and b!7108935 (not c!1326548)) b!7108933))

(assert (= (and b!7108934 res!2901443) b!7108930))

(assert (= (and b!7108933 c!1326547) b!7108931))

(assert (= (and b!7108933 (not c!1326547)) b!7108929))

(assert (= (and b!7108931 res!2901442) b!7108936))

(assert (= (and b!7108929 (not res!2901441)) b!7108937))

(assert (= (and b!7108937 res!2901439) b!7108932))

(assert (= (or b!7108931 b!7108932) bm!648253))

(assert (= (or b!7108936 b!7108937) bm!648251))

(assert (= (or b!7108930 bm!648251) bm!648252))

(declare-fun m!7830752 () Bool)

(assert (=> bm!648252 m!7830752))

(declare-fun m!7830754 () Bool)

(assert (=> bm!648253 m!7830754))

(declare-fun m!7830756 () Bool)

(assert (=> b!7108934 m!7830756))

(assert (=> b!7108866 d!2219845))

(declare-fun d!2219847 () Bool)

(declare-fun forall!16827 (List!68887 Int) Bool)

(assert (=> d!2219847 (forall!16827 (++!16078 (exprs!7420 c!9994) (exprs!7420 auxCtx!45)) lambda!431768)))

(declare-fun lt!2559421 () Unit!162523)

(declare-fun choose!54835 (List!68887 List!68887 Int) Unit!162523)

(assert (=> d!2219847 (= lt!2559421 (choose!54835 (exprs!7420 c!9994) (exprs!7420 auxCtx!45) lambda!431768))))

(assert (=> d!2219847 (forall!16827 (exprs!7420 c!9994) lambda!431768)))

(assert (=> d!2219847 (= (lemmaConcatPreservesForall!1211 (exprs!7420 c!9994) (exprs!7420 auxCtx!45) lambda!431768) lt!2559421)))

(declare-fun bs!1884943 () Bool)

(assert (= bs!1884943 d!2219847))

(assert (=> bs!1884943 m!7830708))

(assert (=> bs!1884943 m!7830708))

(declare-fun m!7830758 () Bool)

(assert (=> bs!1884943 m!7830758))

(declare-fun m!7830760 () Bool)

(assert (=> bs!1884943 m!7830760))

(declare-fun m!7830762 () Bool)

(assert (=> bs!1884943 m!7830762))

(assert (=> b!7108866 d!2219847))

(declare-fun b!7108946 () Bool)

(declare-fun e!4272367 () List!68887)

(assert (=> b!7108946 (= e!4272367 (exprs!7420 auxCtx!45))))

(declare-fun b!7108949 () Bool)

(declare-fun e!4272366 () Bool)

(declare-fun lt!2559424 () List!68887)

(assert (=> b!7108949 (= e!4272366 (or (not (= (exprs!7420 auxCtx!45) Nil!68763)) (= lt!2559424 (exprs!7420 c!9994))))))

(declare-fun b!7108947 () Bool)

(assert (=> b!7108947 (= e!4272367 (Cons!68763 (h!75211 (exprs!7420 c!9994)) (++!16078 (t!382710 (exprs!7420 c!9994)) (exprs!7420 auxCtx!45))))))

(declare-fun d!2219849 () Bool)

(assert (=> d!2219849 e!4272366))

(declare-fun res!2901449 () Bool)

(assert (=> d!2219849 (=> (not res!2901449) (not e!4272366))))

(declare-fun content!14012 (List!68887) (Set Regex!17926))

(assert (=> d!2219849 (= res!2901449 (= (content!14012 lt!2559424) (set.union (content!14012 (exprs!7420 c!9994)) (content!14012 (exprs!7420 auxCtx!45)))))))

(assert (=> d!2219849 (= lt!2559424 e!4272367)))

(declare-fun c!1326551 () Bool)

(assert (=> d!2219849 (= c!1326551 (is-Nil!68763 (exprs!7420 c!9994)))))

(assert (=> d!2219849 (= (++!16078 (exprs!7420 c!9994) (exprs!7420 auxCtx!45)) lt!2559424)))

(declare-fun b!7108948 () Bool)

(declare-fun res!2901448 () Bool)

(assert (=> b!7108948 (=> (not res!2901448) (not e!4272366))))

(declare-fun size!41387 (List!68887) Int)

(assert (=> b!7108948 (= res!2901448 (= (size!41387 lt!2559424) (+ (size!41387 (exprs!7420 c!9994)) (size!41387 (exprs!7420 auxCtx!45)))))))

(assert (= (and d!2219849 c!1326551) b!7108946))

(assert (= (and d!2219849 (not c!1326551)) b!7108947))

(assert (= (and d!2219849 res!2901449) b!7108948))

(assert (= (and b!7108948 res!2901448) b!7108949))

(declare-fun m!7830764 () Bool)

(assert (=> b!7108947 m!7830764))

(declare-fun m!7830766 () Bool)

(assert (=> d!2219849 m!7830766))

(declare-fun m!7830768 () Bool)

(assert (=> d!2219849 m!7830768))

(declare-fun m!7830770 () Bool)

(assert (=> d!2219849 m!7830770))

(declare-fun m!7830772 () Bool)

(assert (=> b!7108948 m!7830772))

(declare-fun m!7830774 () Bool)

(assert (=> b!7108948 m!7830774))

(declare-fun m!7830776 () Bool)

(assert (=> b!7108948 m!7830776))

(assert (=> b!7108866 d!2219849))

(declare-fun b!7108950 () Bool)

(declare-fun res!2901452 () Bool)

(declare-fun e!4272370 () Bool)

(assert (=> b!7108950 (=> res!2901452 e!4272370)))

(assert (=> b!7108950 (= res!2901452 (not (is-Concat!26771 r!11554)))))

(declare-fun e!4272371 () Bool)

(assert (=> b!7108950 (= e!4272371 e!4272370)))

(declare-fun b!7108951 () Bool)

(declare-fun e!4272372 () Bool)

(declare-fun call!648259 () Bool)

(assert (=> b!7108951 (= e!4272372 call!648259)))

(declare-fun bm!648254 () Bool)

(declare-fun call!648261 () Bool)

(assert (=> bm!648254 (= call!648261 call!648259)))

(declare-fun c!1326553 () Bool)

(declare-fun c!1326552 () Bool)

(declare-fun bm!648255 () Bool)

(assert (=> bm!648255 (= call!648259 (validRegex!9199 (ite c!1326553 (reg!18255 r!11554) (ite c!1326552 (regTwo!36365 r!11554) (regOne!36364 r!11554)))))))

(declare-fun bm!648256 () Bool)

(declare-fun call!648260 () Bool)

(assert (=> bm!648256 (= call!648260 (validRegex!9199 (ite c!1326552 (regOne!36365 r!11554) (regTwo!36364 r!11554))))))

(declare-fun b!7108952 () Bool)

(declare-fun res!2901453 () Bool)

(declare-fun e!4272369 () Bool)

(assert (=> b!7108952 (=> (not res!2901453) (not e!4272369))))

(assert (=> b!7108952 (= res!2901453 call!648260)))

(assert (=> b!7108952 (= e!4272371 e!4272369)))

(declare-fun b!7108953 () Bool)

(declare-fun e!4272374 () Bool)

(assert (=> b!7108953 (= e!4272374 call!648260)))

(declare-fun b!7108954 () Bool)

(declare-fun e!4272368 () Bool)

(assert (=> b!7108954 (= e!4272368 e!4272371)))

(assert (=> b!7108954 (= c!1326552 (is-Union!17926 r!11554))))

(declare-fun b!7108955 () Bool)

(assert (=> b!7108955 (= e!4272368 e!4272372)))

(declare-fun res!2901454 () Bool)

(assert (=> b!7108955 (= res!2901454 (not (nullable!7563 (reg!18255 r!11554))))))

(assert (=> b!7108955 (=> (not res!2901454) (not e!4272372))))

(declare-fun b!7108956 () Bool)

(declare-fun e!4272373 () Bool)

(assert (=> b!7108956 (= e!4272373 e!4272368)))

(assert (=> b!7108956 (= c!1326553 (is-Star!17926 r!11554))))

(declare-fun d!2219853 () Bool)

(declare-fun res!2901451 () Bool)

(assert (=> d!2219853 (=> res!2901451 e!4272373)))

(assert (=> d!2219853 (= res!2901451 (is-ElementMatch!17926 r!11554))))

(assert (=> d!2219853 (= (validRegex!9199 r!11554) e!4272373)))

(declare-fun b!7108957 () Bool)

(assert (=> b!7108957 (= e!4272369 call!648261)))

(declare-fun b!7108958 () Bool)

(assert (=> b!7108958 (= e!4272370 e!4272374)))

(declare-fun res!2901450 () Bool)

(assert (=> b!7108958 (=> (not res!2901450) (not e!4272374))))

(assert (=> b!7108958 (= res!2901450 call!648261)))

(assert (= (and d!2219853 (not res!2901451)) b!7108956))

(assert (= (and b!7108956 c!1326553) b!7108955))

(assert (= (and b!7108956 (not c!1326553)) b!7108954))

(assert (= (and b!7108955 res!2901454) b!7108951))

(assert (= (and b!7108954 c!1326552) b!7108952))

(assert (= (and b!7108954 (not c!1326552)) b!7108950))

(assert (= (and b!7108952 res!2901453) b!7108957))

(assert (= (and b!7108950 (not res!2901452)) b!7108958))

(assert (= (and b!7108958 res!2901450) b!7108953))

(assert (= (or b!7108952 b!7108953) bm!648256))

(assert (= (or b!7108957 b!7108958) bm!648254))

(assert (= (or b!7108951 bm!648254) bm!648255))

(declare-fun m!7830778 () Bool)

(assert (=> bm!648255 m!7830778))

(declare-fun m!7830780 () Bool)

(assert (=> bm!648256 m!7830780))

(declare-fun m!7830782 () Bool)

(assert (=> b!7108955 m!7830782))

(assert (=> start!691974 d!2219853))

(declare-fun bs!1884944 () Bool)

(declare-fun d!2219855 () Bool)

(assert (= bs!1884944 (and d!2219855 b!7108866)))

(declare-fun lambda!431778 () Int)

(assert (=> bs!1884944 (= lambda!431778 lambda!431768)))

(assert (=> d!2219855 (= (inv!87679 c!9994) (forall!16827 (exprs!7420 c!9994) lambda!431778))))

(declare-fun bs!1884945 () Bool)

(assert (= bs!1884945 d!2219855))

(declare-fun m!7830784 () Bool)

(assert (=> bs!1884945 m!7830784))

(assert (=> start!691974 d!2219855))

(declare-fun bs!1884946 () Bool)

(declare-fun d!2219857 () Bool)

(assert (= bs!1884946 (and d!2219857 b!7108866)))

(declare-fun lambda!431779 () Int)

(assert (=> bs!1884946 (= lambda!431779 lambda!431768)))

(declare-fun bs!1884947 () Bool)

(assert (= bs!1884947 (and d!2219857 d!2219855)))

(assert (=> bs!1884947 (= lambda!431779 lambda!431778)))

(assert (=> d!2219857 (= (inv!87679 auxCtx!45) (forall!16827 (exprs!7420 auxCtx!45) lambda!431779))))

(declare-fun bs!1884948 () Bool)

(assert (= bs!1884948 d!2219857))

(declare-fun m!7830786 () Bool)

(assert (=> bs!1884948 m!7830786))

(assert (=> start!691974 d!2219857))

(declare-fun b!7108959 () Bool)

(declare-fun res!2901457 () Bool)

(declare-fun e!4272377 () Bool)

(assert (=> b!7108959 (=> res!2901457 e!4272377)))

(assert (=> b!7108959 (= res!2901457 (not (is-Concat!26771 (regOne!36364 r!11554))))))

(declare-fun e!4272378 () Bool)

(assert (=> b!7108959 (= e!4272378 e!4272377)))

(declare-fun b!7108960 () Bool)

(declare-fun e!4272379 () Bool)

(declare-fun call!648262 () Bool)

(assert (=> b!7108960 (= e!4272379 call!648262)))

(declare-fun bm!648257 () Bool)

(declare-fun call!648264 () Bool)

(assert (=> bm!648257 (= call!648264 call!648262)))

(declare-fun c!1326554 () Bool)

(declare-fun bm!648258 () Bool)

(declare-fun c!1326555 () Bool)

(assert (=> bm!648258 (= call!648262 (validRegex!9199 (ite c!1326555 (reg!18255 (regOne!36364 r!11554)) (ite c!1326554 (regTwo!36365 (regOne!36364 r!11554)) (regOne!36364 (regOne!36364 r!11554))))))))

(declare-fun bm!648259 () Bool)

(declare-fun call!648263 () Bool)

(assert (=> bm!648259 (= call!648263 (validRegex!9199 (ite c!1326554 (regOne!36365 (regOne!36364 r!11554)) (regTwo!36364 (regOne!36364 r!11554)))))))

(declare-fun b!7108961 () Bool)

(declare-fun res!2901458 () Bool)

(declare-fun e!4272376 () Bool)

(assert (=> b!7108961 (=> (not res!2901458) (not e!4272376))))

(assert (=> b!7108961 (= res!2901458 call!648263)))

(assert (=> b!7108961 (= e!4272378 e!4272376)))

(declare-fun b!7108962 () Bool)

(declare-fun e!4272381 () Bool)

(assert (=> b!7108962 (= e!4272381 call!648263)))

(declare-fun b!7108963 () Bool)

(declare-fun e!4272375 () Bool)

(assert (=> b!7108963 (= e!4272375 e!4272378)))

(assert (=> b!7108963 (= c!1326554 (is-Union!17926 (regOne!36364 r!11554)))))

(declare-fun b!7108964 () Bool)

(assert (=> b!7108964 (= e!4272375 e!4272379)))

(declare-fun res!2901459 () Bool)

(assert (=> b!7108964 (= res!2901459 (not (nullable!7563 (reg!18255 (regOne!36364 r!11554)))))))

(assert (=> b!7108964 (=> (not res!2901459) (not e!4272379))))

(declare-fun b!7108965 () Bool)

(declare-fun e!4272380 () Bool)

(assert (=> b!7108965 (= e!4272380 e!4272375)))

(assert (=> b!7108965 (= c!1326555 (is-Star!17926 (regOne!36364 r!11554)))))

(declare-fun d!2219859 () Bool)

(declare-fun res!2901456 () Bool)

(assert (=> d!2219859 (=> res!2901456 e!4272380)))

(assert (=> d!2219859 (= res!2901456 (is-ElementMatch!17926 (regOne!36364 r!11554)))))

(assert (=> d!2219859 (= (validRegex!9199 (regOne!36364 r!11554)) e!4272380)))

(declare-fun b!7108966 () Bool)

(assert (=> b!7108966 (= e!4272376 call!648264)))

(declare-fun b!7108967 () Bool)

(assert (=> b!7108967 (= e!4272377 e!4272381)))

(declare-fun res!2901455 () Bool)

(assert (=> b!7108967 (=> (not res!2901455) (not e!4272381))))

(assert (=> b!7108967 (= res!2901455 call!648264)))

(assert (= (and d!2219859 (not res!2901456)) b!7108965))

(assert (= (and b!7108965 c!1326555) b!7108964))

(assert (= (and b!7108965 (not c!1326555)) b!7108963))

(assert (= (and b!7108964 res!2901459) b!7108960))

(assert (= (and b!7108963 c!1326554) b!7108961))

(assert (= (and b!7108963 (not c!1326554)) b!7108959))

(assert (= (and b!7108961 res!2901458) b!7108966))

(assert (= (and b!7108959 (not res!2901457)) b!7108967))

(assert (= (and b!7108967 res!2901455) b!7108962))

(assert (= (or b!7108961 b!7108962) bm!648259))

(assert (= (or b!7108966 b!7108967) bm!648257))

(assert (= (or b!7108960 bm!648257) bm!648258))

(declare-fun m!7830788 () Bool)

(assert (=> bm!648258 m!7830788))

(declare-fun m!7830790 () Bool)

(assert (=> bm!648259 m!7830790))

(declare-fun m!7830792 () Bool)

(assert (=> b!7108964 m!7830792))

(assert (=> b!7108863 d!2219859))

(declare-fun d!2219861 () Bool)

(declare-fun nullableFct!2918 (Regex!17926) Bool)

(assert (=> d!2219861 (= (nullable!7563 (regOne!36364 r!11554)) (nullableFct!2918 (regOne!36364 r!11554)))))

(declare-fun bs!1884949 () Bool)

(assert (= bs!1884949 d!2219861))

(declare-fun m!7830794 () Bool)

(assert (=> bs!1884949 m!7830794))

(assert (=> b!7108874 d!2219861))

(declare-fun bm!648286 () Bool)

(declare-fun c!1326585 () Bool)

(declare-fun c!1326580 () Bool)

(declare-fun call!648291 () Int)

(assert (=> bm!648286 (= call!648291 (regexDepth!391 (ite c!1326580 (regOne!36365 (regOne!36364 r!11554)) (ite c!1326585 (regOne!36364 (regOne!36364 r!11554)) (reg!18255 (regOne!36364 r!11554))))))))

(declare-fun b!7109024 () Bool)

(declare-fun e!4272420 () Int)

(declare-fun call!648293 () Int)

(assert (=> b!7109024 (= e!4272420 (+ 1 call!648293))))

(declare-fun b!7109025 () Bool)

(declare-fun e!4272418 () Bool)

(declare-fun lt!2559427 () Int)

(declare-fun call!648296 () Int)

(assert (=> b!7109025 (= e!4272418 (> lt!2559427 call!648296))))

(declare-fun b!7109026 () Bool)

(declare-fun res!2901469 () Bool)

(assert (=> b!7109026 (=> (not res!2901469) (not e!4272418))))

(declare-fun call!648295 () Int)

(assert (=> b!7109026 (= res!2901469 (> lt!2559427 call!648295))))

(declare-fun e!4272417 () Bool)

(assert (=> b!7109026 (= e!4272417 e!4272418)))

(declare-fun bm!648287 () Bool)

(assert (=> bm!648287 (= call!648296 (regexDepth!391 (ite c!1326580 (regTwo!36365 (regOne!36364 r!11554)) (regTwo!36364 (regOne!36364 r!11554)))))))

(declare-fun b!7109027 () Bool)

(declare-fun e!4272419 () Bool)

(declare-fun e!4272423 () Bool)

(assert (=> b!7109027 (= e!4272419 e!4272423)))

(declare-fun res!2901470 () Bool)

(assert (=> b!7109027 (= res!2901470 (> lt!2559427 call!648291))))

(assert (=> b!7109027 (=> (not res!2901470) (not e!4272423))))

(declare-fun b!7109028 () Bool)

(declare-fun e!4272415 () Int)

(declare-fun call!648297 () Int)

(assert (=> b!7109028 (= e!4272415 (+ 1 call!648297))))

(declare-fun c!1326584 () Bool)

(declare-fun bm!648288 () Bool)

(declare-fun c!1326586 () Bool)

(assert (=> bm!648288 (= call!648297 (regexDepth!391 (ite c!1326584 (reg!18255 (regOne!36364 r!11554)) (ite c!1326586 (regTwo!36365 (regOne!36364 r!11554)) (regOne!36364 (regOne!36364 r!11554))))))))

(declare-fun b!7109029 () Bool)

(assert (=> b!7109029 (= c!1326586 (is-Union!17926 (regOne!36364 r!11554)))))

(declare-fun e!4272422 () Int)

(assert (=> b!7109029 (= e!4272415 e!4272422)))

(declare-fun b!7109030 () Bool)

(declare-fun e!4272421 () Bool)

(assert (=> b!7109030 (= e!4272421 (> lt!2559427 call!648295))))

(declare-fun b!7109031 () Bool)

(assert (=> b!7109031 (= e!4272423 (> lt!2559427 call!648296))))

(declare-fun b!7109032 () Bool)

(declare-fun e!4272416 () Int)

(assert (=> b!7109032 (= e!4272416 e!4272415)))

(assert (=> b!7109032 (= c!1326584 (is-Star!17926 (regOne!36364 r!11554)))))

(declare-fun bm!648290 () Bool)

(declare-fun call!648294 () Int)

(assert (=> bm!648290 (= call!648294 (regexDepth!391 (ite c!1326586 (regOne!36365 (regOne!36364 r!11554)) (regTwo!36364 (regOne!36364 r!11554)))))))

(declare-fun bm!648291 () Bool)

(assert (=> bm!648291 (= call!648295 call!648291)))

(declare-fun b!7109033 () Bool)

(assert (=> b!7109033 (= e!4272421 (= lt!2559427 1))))

(declare-fun b!7109034 () Bool)

(assert (=> b!7109034 (= e!4272416 1)))

(declare-fun bm!648292 () Bool)

(declare-fun call!648292 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!648292 (= call!648293 (maxBigInt!0 (ite c!1326586 call!648294 call!648292) (ite c!1326586 call!648292 call!648294)))))

(declare-fun b!7109035 () Bool)

(declare-fun e!4272414 () Bool)

(assert (=> b!7109035 (= e!4272414 e!4272419)))

(assert (=> b!7109035 (= c!1326580 (is-Union!17926 (regOne!36364 r!11554)))))

(declare-fun b!7109036 () Bool)

(assert (=> b!7109036 (= e!4272420 1)))

(declare-fun b!7109037 () Bool)

(assert (=> b!7109037 (= e!4272419 e!4272417)))

(assert (=> b!7109037 (= c!1326585 (is-Concat!26771 (regOne!36364 r!11554)))))

(declare-fun d!2219863 () Bool)

(assert (=> d!2219863 e!4272414))

(declare-fun res!2901468 () Bool)

(assert (=> d!2219863 (=> (not res!2901468) (not e!4272414))))

(assert (=> d!2219863 (= res!2901468 (> lt!2559427 0))))

(assert (=> d!2219863 (= lt!2559427 e!4272416)))

(declare-fun c!1326581 () Bool)

(assert (=> d!2219863 (= c!1326581 (is-ElementMatch!17926 (regOne!36364 r!11554)))))

(assert (=> d!2219863 (= (regexDepth!391 (regOne!36364 r!11554)) lt!2559427)))

(declare-fun bm!648289 () Bool)

(assert (=> bm!648289 (= call!648292 call!648297)))

(declare-fun b!7109038 () Bool)

(assert (=> b!7109038 (= e!4272422 (+ 1 call!648293))))

(declare-fun b!7109039 () Bool)

(assert (=> b!7109039 (= e!4272422 e!4272420)))

(declare-fun c!1326582 () Bool)

(assert (=> b!7109039 (= c!1326582 (is-Concat!26771 (regOne!36364 r!11554)))))

(declare-fun b!7109040 () Bool)

(declare-fun c!1326583 () Bool)

(assert (=> b!7109040 (= c!1326583 (is-Star!17926 (regOne!36364 r!11554)))))

(assert (=> b!7109040 (= e!4272417 e!4272421)))

(assert (= (and d!2219863 c!1326581) b!7109034))

(assert (= (and d!2219863 (not c!1326581)) b!7109032))

(assert (= (and b!7109032 c!1326584) b!7109028))

(assert (= (and b!7109032 (not c!1326584)) b!7109029))

(assert (= (and b!7109029 c!1326586) b!7109038))

(assert (= (and b!7109029 (not c!1326586)) b!7109039))

(assert (= (and b!7109039 c!1326582) b!7109024))

(assert (= (and b!7109039 (not c!1326582)) b!7109036))

(assert (= (or b!7109038 b!7109024) bm!648289))

(assert (= (or b!7109038 b!7109024) bm!648290))

(assert (= (or b!7109038 b!7109024) bm!648292))

(assert (= (or b!7109028 bm!648289) bm!648288))

(assert (= (and d!2219863 res!2901468) b!7109035))

(assert (= (and b!7109035 c!1326580) b!7109027))

(assert (= (and b!7109035 (not c!1326580)) b!7109037))

(assert (= (and b!7109027 res!2901470) b!7109031))

(assert (= (and b!7109037 c!1326585) b!7109026))

(assert (= (and b!7109037 (not c!1326585)) b!7109040))

(assert (= (and b!7109026 res!2901469) b!7109025))

(assert (= (and b!7109040 c!1326583) b!7109030))

(assert (= (and b!7109040 (not c!1326583)) b!7109033))

(assert (= (or b!7109026 b!7109030) bm!648291))

(assert (= (or b!7109031 b!7109025) bm!648287))

(assert (= (or b!7109027 bm!648291) bm!648286))

(declare-fun m!7830796 () Bool)

(assert (=> bm!648286 m!7830796))

(declare-fun m!7830798 () Bool)

(assert (=> bm!648292 m!7830798))

(declare-fun m!7830800 () Bool)

(assert (=> bm!648287 m!7830800))

(declare-fun m!7830802 () Bool)

(assert (=> bm!648290 m!7830802))

(declare-fun m!7830804 () Bool)

(assert (=> bm!648288 m!7830804))

(assert (=> b!7108864 d!2219863))

(declare-fun bm!648293 () Bool)

(declare-fun call!648298 () Int)

(declare-fun c!1326592 () Bool)

(declare-fun c!1326587 () Bool)

(assert (=> bm!648293 (= call!648298 (regexDepth!391 (ite c!1326587 (regOne!36365 r!11554) (ite c!1326592 (regOne!36364 r!11554) (reg!18255 r!11554)))))))

(declare-fun b!7109041 () Bool)

(declare-fun e!4272430 () Int)

(declare-fun call!648300 () Int)

(assert (=> b!7109041 (= e!4272430 (+ 1 call!648300))))

(declare-fun b!7109042 () Bool)

(declare-fun e!4272428 () Bool)

(declare-fun lt!2559428 () Int)

(declare-fun call!648303 () Int)

(assert (=> b!7109042 (= e!4272428 (> lt!2559428 call!648303))))

(declare-fun b!7109043 () Bool)

(declare-fun res!2901472 () Bool)

(assert (=> b!7109043 (=> (not res!2901472) (not e!4272428))))

(declare-fun call!648302 () Int)

(assert (=> b!7109043 (= res!2901472 (> lt!2559428 call!648302))))

(declare-fun e!4272427 () Bool)

(assert (=> b!7109043 (= e!4272427 e!4272428)))

(declare-fun bm!648294 () Bool)

(assert (=> bm!648294 (= call!648303 (regexDepth!391 (ite c!1326587 (regTwo!36365 r!11554) (regTwo!36364 r!11554))))))

(declare-fun b!7109044 () Bool)

(declare-fun e!4272429 () Bool)

(declare-fun e!4272433 () Bool)

(assert (=> b!7109044 (= e!4272429 e!4272433)))

(declare-fun res!2901473 () Bool)

(assert (=> b!7109044 (= res!2901473 (> lt!2559428 call!648298))))

(assert (=> b!7109044 (=> (not res!2901473) (not e!4272433))))

(declare-fun b!7109045 () Bool)

(declare-fun e!4272425 () Int)

(declare-fun call!648304 () Int)

(assert (=> b!7109045 (= e!4272425 (+ 1 call!648304))))

(declare-fun c!1326591 () Bool)

(declare-fun bm!648295 () Bool)

(declare-fun c!1326593 () Bool)

(assert (=> bm!648295 (= call!648304 (regexDepth!391 (ite c!1326591 (reg!18255 r!11554) (ite c!1326593 (regTwo!36365 r!11554) (regOne!36364 r!11554)))))))

(declare-fun b!7109046 () Bool)

(assert (=> b!7109046 (= c!1326593 (is-Union!17926 r!11554))))

(declare-fun e!4272432 () Int)

(assert (=> b!7109046 (= e!4272425 e!4272432)))

(declare-fun b!7109047 () Bool)

(declare-fun e!4272431 () Bool)

(assert (=> b!7109047 (= e!4272431 (> lt!2559428 call!648302))))

(declare-fun b!7109048 () Bool)

(assert (=> b!7109048 (= e!4272433 (> lt!2559428 call!648303))))

(declare-fun b!7109049 () Bool)

(declare-fun e!4272426 () Int)

(assert (=> b!7109049 (= e!4272426 e!4272425)))

(assert (=> b!7109049 (= c!1326591 (is-Star!17926 r!11554))))

(declare-fun bm!648297 () Bool)

(declare-fun call!648301 () Int)

(assert (=> bm!648297 (= call!648301 (regexDepth!391 (ite c!1326593 (regOne!36365 r!11554) (regTwo!36364 r!11554))))))

(declare-fun bm!648298 () Bool)

(assert (=> bm!648298 (= call!648302 call!648298)))

(declare-fun b!7109050 () Bool)

(assert (=> b!7109050 (= e!4272431 (= lt!2559428 1))))

(declare-fun b!7109051 () Bool)

(assert (=> b!7109051 (= e!4272426 1)))

(declare-fun call!648299 () Int)

(declare-fun bm!648299 () Bool)

(assert (=> bm!648299 (= call!648300 (maxBigInt!0 (ite c!1326593 call!648301 call!648299) (ite c!1326593 call!648299 call!648301)))))

(declare-fun b!7109052 () Bool)

(declare-fun e!4272424 () Bool)

(assert (=> b!7109052 (= e!4272424 e!4272429)))

(assert (=> b!7109052 (= c!1326587 (is-Union!17926 r!11554))))

(declare-fun b!7109053 () Bool)

(assert (=> b!7109053 (= e!4272430 1)))

(declare-fun b!7109054 () Bool)

(assert (=> b!7109054 (= e!4272429 e!4272427)))

(assert (=> b!7109054 (= c!1326592 (is-Concat!26771 r!11554))))

(declare-fun d!2219865 () Bool)

(assert (=> d!2219865 e!4272424))

(declare-fun res!2901471 () Bool)

(assert (=> d!2219865 (=> (not res!2901471) (not e!4272424))))

(assert (=> d!2219865 (= res!2901471 (> lt!2559428 0))))

(assert (=> d!2219865 (= lt!2559428 e!4272426)))

(declare-fun c!1326588 () Bool)

(assert (=> d!2219865 (= c!1326588 (is-ElementMatch!17926 r!11554))))

(assert (=> d!2219865 (= (regexDepth!391 r!11554) lt!2559428)))

(declare-fun bm!648296 () Bool)

(assert (=> bm!648296 (= call!648299 call!648304)))

(declare-fun b!7109055 () Bool)

(assert (=> b!7109055 (= e!4272432 (+ 1 call!648300))))

(declare-fun b!7109056 () Bool)

(assert (=> b!7109056 (= e!4272432 e!4272430)))

(declare-fun c!1326589 () Bool)

(assert (=> b!7109056 (= c!1326589 (is-Concat!26771 r!11554))))

(declare-fun b!7109057 () Bool)

(declare-fun c!1326590 () Bool)

(assert (=> b!7109057 (= c!1326590 (is-Star!17926 r!11554))))

(assert (=> b!7109057 (= e!4272427 e!4272431)))

(assert (= (and d!2219865 c!1326588) b!7109051))

(assert (= (and d!2219865 (not c!1326588)) b!7109049))

(assert (= (and b!7109049 c!1326591) b!7109045))

(assert (= (and b!7109049 (not c!1326591)) b!7109046))

(assert (= (and b!7109046 c!1326593) b!7109055))

(assert (= (and b!7109046 (not c!1326593)) b!7109056))

(assert (= (and b!7109056 c!1326589) b!7109041))

(assert (= (and b!7109056 (not c!1326589)) b!7109053))

(assert (= (or b!7109055 b!7109041) bm!648296))

(assert (= (or b!7109055 b!7109041) bm!648297))

(assert (= (or b!7109055 b!7109041) bm!648299))

(assert (= (or b!7109045 bm!648296) bm!648295))

(assert (= (and d!2219865 res!2901471) b!7109052))

(assert (= (and b!7109052 c!1326587) b!7109044))

(assert (= (and b!7109052 (not c!1326587)) b!7109054))

(assert (= (and b!7109044 res!2901473) b!7109048))

(assert (= (and b!7109054 c!1326592) b!7109043))

(assert (= (and b!7109054 (not c!1326592)) b!7109057))

(assert (= (and b!7109043 res!2901472) b!7109042))

(assert (= (and b!7109057 c!1326590) b!7109047))

(assert (= (and b!7109057 (not c!1326590)) b!7109050))

(assert (= (or b!7109043 b!7109047) bm!648298))

(assert (= (or b!7109048 b!7109042) bm!648294))

(assert (= (or b!7109044 bm!648298) bm!648293))

(declare-fun m!7830806 () Bool)

(assert (=> bm!648293 m!7830806))

(declare-fun m!7830808 () Bool)

(assert (=> bm!648299 m!7830808))

(declare-fun m!7830810 () Bool)

(assert (=> bm!648294 m!7830810))

(declare-fun m!7830812 () Bool)

(assert (=> bm!648297 m!7830812))

(declare-fun m!7830814 () Bool)

(assert (=> bm!648295 m!7830814))

(assert (=> b!7108864 d!2219865))

(declare-fun c!1326617 () Bool)

(declare-fun c!1326614 () Bool)

(declare-fun call!648332 () List!68887)

(declare-fun bm!648324 () Bool)

(assert (=> bm!648324 (= call!648332 ($colon$colon!2784 (exprs!7420 lt!2559399) (ite (or c!1326617 c!1326614) (regTwo!36364 r!11554) r!11554)))))

(declare-fun bm!648325 () Bool)

(declare-fun call!648333 () (Set Context!13840))

(declare-fun c!1326615 () Bool)

(declare-fun call!648330 () List!68887)

(assert (=> bm!648325 (= call!648333 (derivationStepZipperDown!2441 (ite c!1326615 (regTwo!36365 r!11554) (ite c!1326617 (regTwo!36364 r!11554) (ite c!1326614 (regOne!36364 r!11554) (reg!18255 r!11554)))) (ite (or c!1326615 c!1326617) lt!2559399 (Context!13841 call!648330)) a!1901))))

(declare-fun bm!648326 () Bool)

(declare-fun call!648331 () (Set Context!13840))

(declare-fun call!648334 () (Set Context!13840))

(assert (=> bm!648326 (= call!648331 call!648334)))

(declare-fun b!7109102 () Bool)

(declare-fun e!4272460 () (Set Context!13840))

(assert (=> b!7109102 (= e!4272460 call!648331)))

(declare-fun b!7109103 () Bool)

(declare-fun e!4272462 () (Set Context!13840))

(assert (=> b!7109103 (= e!4272462 (as set.empty (Set Context!13840)))))

(declare-fun bm!648327 () Bool)

(declare-fun call!648329 () (Set Context!13840))

(assert (=> bm!648327 (= call!648329 (derivationStepZipperDown!2441 (ite c!1326615 (regOne!36365 r!11554) (regOne!36364 r!11554)) (ite c!1326615 lt!2559399 (Context!13841 call!648332)) a!1901))))

(declare-fun b!7109104 () Bool)

(declare-fun e!4272463 () (Set Context!13840))

(assert (=> b!7109104 (= e!4272463 (set.union call!648329 call!648334))))

(declare-fun b!7109105 () Bool)

(assert (=> b!7109105 (= e!4272462 call!648331)))

(declare-fun bm!648328 () Bool)

(assert (=> bm!648328 (= call!648330 call!648332)))

(declare-fun b!7109106 () Bool)

(declare-fun e!4272461 () (Set Context!13840))

(declare-fun e!4272459 () (Set Context!13840))

(assert (=> b!7109106 (= e!4272461 e!4272459)))

(assert (=> b!7109106 (= c!1326615 (is-Union!17926 r!11554))))

(declare-fun b!7109107 () Bool)

(declare-fun c!1326618 () Bool)

(assert (=> b!7109107 (= c!1326618 (is-Star!17926 r!11554))))

(assert (=> b!7109107 (= e!4272460 e!4272462)))

(declare-fun d!2219867 () Bool)

(declare-fun c!1326616 () Bool)

(assert (=> d!2219867 (= c!1326616 (and (is-ElementMatch!17926 r!11554) (= (c!1326541 r!11554) a!1901)))))

(assert (=> d!2219867 (= (derivationStepZipperDown!2441 r!11554 lt!2559399 a!1901) e!4272461)))

(declare-fun b!7109108 () Bool)

(declare-fun e!4272458 () Bool)

(assert (=> b!7109108 (= c!1326617 e!4272458)))

(declare-fun res!2901478 () Bool)

(assert (=> b!7109108 (=> (not res!2901478) (not e!4272458))))

(assert (=> b!7109108 (= res!2901478 (is-Concat!26771 r!11554))))

(assert (=> b!7109108 (= e!4272459 e!4272463)))

(declare-fun b!7109109 () Bool)

(assert (=> b!7109109 (= e!4272458 (nullable!7563 (regOne!36364 r!11554)))))

(declare-fun b!7109110 () Bool)

(assert (=> b!7109110 (= e!4272459 (set.union call!648329 call!648333))))

(declare-fun b!7109111 () Bool)

(assert (=> b!7109111 (= e!4272461 (set.insert lt!2559399 (as set.empty (Set Context!13840))))))

(declare-fun bm!648329 () Bool)

(assert (=> bm!648329 (= call!648334 call!648333)))

(declare-fun b!7109112 () Bool)

(assert (=> b!7109112 (= e!4272463 e!4272460)))

(assert (=> b!7109112 (= c!1326614 (is-Concat!26771 r!11554))))

(assert (= (and d!2219867 c!1326616) b!7109111))

(assert (= (and d!2219867 (not c!1326616)) b!7109106))

(assert (= (and b!7109106 c!1326615) b!7109110))

(assert (= (and b!7109106 (not c!1326615)) b!7109108))

(assert (= (and b!7109108 res!2901478) b!7109109))

(assert (= (and b!7109108 c!1326617) b!7109104))

(assert (= (and b!7109108 (not c!1326617)) b!7109112))

(assert (= (and b!7109112 c!1326614) b!7109102))

(assert (= (and b!7109112 (not c!1326614)) b!7109107))

(assert (= (and b!7109107 c!1326618) b!7109105))

(assert (= (and b!7109107 (not c!1326618)) b!7109103))

(assert (= (or b!7109102 b!7109105) bm!648328))

(assert (= (or b!7109102 b!7109105) bm!648326))

(assert (= (or b!7109104 bm!648326) bm!648329))

(assert (= (or b!7109104 bm!648328) bm!648324))

(assert (= (or b!7109110 bm!648329) bm!648325))

(assert (= (or b!7109110 b!7109104) bm!648327))

(declare-fun m!7830834 () Bool)

(assert (=> bm!648324 m!7830834))

(declare-fun m!7830836 () Bool)

(assert (=> bm!648327 m!7830836))

(declare-fun m!7830838 () Bool)

(assert (=> b!7109111 m!7830838))

(declare-fun m!7830840 () Bool)

(assert (=> bm!648325 m!7830840))

(assert (=> b!7109109 m!7830696))

(assert (=> b!7108865 d!2219867))

(declare-fun call!648338 () List!68887)

(declare-fun c!1326622 () Bool)

(declare-fun c!1326619 () Bool)

(declare-fun bm!648330 () Bool)

(assert (=> bm!648330 (= call!648338 ($colon$colon!2784 (exprs!7420 (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554)))) (ite (or c!1326622 c!1326619) (regTwo!36364 (regOne!36364 r!11554)) (regOne!36364 r!11554))))))

(declare-fun call!648336 () List!68887)

(declare-fun bm!648331 () Bool)

(declare-fun call!648339 () (Set Context!13840))

(declare-fun c!1326620 () Bool)

(assert (=> bm!648331 (= call!648339 (derivationStepZipperDown!2441 (ite c!1326620 (regTwo!36365 (regOne!36364 r!11554)) (ite c!1326622 (regTwo!36364 (regOne!36364 r!11554)) (ite c!1326619 (regOne!36364 (regOne!36364 r!11554)) (reg!18255 (regOne!36364 r!11554))))) (ite (or c!1326620 c!1326622) (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554))) (Context!13841 call!648336)) a!1901))))

(declare-fun bm!648332 () Bool)

(declare-fun call!648337 () (Set Context!13840))

(declare-fun call!648340 () (Set Context!13840))

(assert (=> bm!648332 (= call!648337 call!648340)))

(declare-fun b!7109113 () Bool)

(declare-fun e!4272466 () (Set Context!13840))

(assert (=> b!7109113 (= e!4272466 call!648337)))

(declare-fun b!7109114 () Bool)

(declare-fun e!4272468 () (Set Context!13840))

(assert (=> b!7109114 (= e!4272468 (as set.empty (Set Context!13840)))))

(declare-fun call!648335 () (Set Context!13840))

(declare-fun bm!648333 () Bool)

(assert (=> bm!648333 (= call!648335 (derivationStepZipperDown!2441 (ite c!1326620 (regOne!36365 (regOne!36364 r!11554)) (regOne!36364 (regOne!36364 r!11554))) (ite c!1326620 (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554))) (Context!13841 call!648338)) a!1901))))

(declare-fun b!7109115 () Bool)

(declare-fun e!4272469 () (Set Context!13840))

(assert (=> b!7109115 (= e!4272469 (set.union call!648335 call!648340))))

(declare-fun b!7109116 () Bool)

(assert (=> b!7109116 (= e!4272468 call!648337)))

(declare-fun bm!648334 () Bool)

(assert (=> bm!648334 (= call!648336 call!648338)))

(declare-fun b!7109117 () Bool)

(declare-fun e!4272467 () (Set Context!13840))

(declare-fun e!4272465 () (Set Context!13840))

(assert (=> b!7109117 (= e!4272467 e!4272465)))

(assert (=> b!7109117 (= c!1326620 (is-Union!17926 (regOne!36364 r!11554)))))

(declare-fun b!7109118 () Bool)

(declare-fun c!1326623 () Bool)

(assert (=> b!7109118 (= c!1326623 (is-Star!17926 (regOne!36364 r!11554)))))

(assert (=> b!7109118 (= e!4272466 e!4272468)))

(declare-fun d!2219873 () Bool)

(declare-fun c!1326621 () Bool)

(assert (=> d!2219873 (= c!1326621 (and (is-ElementMatch!17926 (regOne!36364 r!11554)) (= (c!1326541 (regOne!36364 r!11554)) a!1901)))))

(assert (=> d!2219873 (= (derivationStepZipperDown!2441 (regOne!36364 r!11554) (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554))) a!1901) e!4272467)))

(declare-fun b!7109119 () Bool)

(declare-fun e!4272464 () Bool)

(assert (=> b!7109119 (= c!1326622 e!4272464)))

(declare-fun res!2901479 () Bool)

(assert (=> b!7109119 (=> (not res!2901479) (not e!4272464))))

(assert (=> b!7109119 (= res!2901479 (is-Concat!26771 (regOne!36364 r!11554)))))

(assert (=> b!7109119 (= e!4272465 e!4272469)))

(declare-fun b!7109120 () Bool)

(assert (=> b!7109120 (= e!4272464 (nullable!7563 (regOne!36364 (regOne!36364 r!11554))))))

(declare-fun b!7109121 () Bool)

(assert (=> b!7109121 (= e!4272465 (set.union call!648335 call!648339))))

(declare-fun b!7109122 () Bool)

(assert (=> b!7109122 (= e!4272467 (set.insert (Context!13841 ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554))) (as set.empty (Set Context!13840))))))

(declare-fun bm!648335 () Bool)

(assert (=> bm!648335 (= call!648340 call!648339)))

(declare-fun b!7109123 () Bool)

(assert (=> b!7109123 (= e!4272469 e!4272466)))

(assert (=> b!7109123 (= c!1326619 (is-Concat!26771 (regOne!36364 r!11554)))))

(assert (= (and d!2219873 c!1326621) b!7109122))

(assert (= (and d!2219873 (not c!1326621)) b!7109117))

(assert (= (and b!7109117 c!1326620) b!7109121))

(assert (= (and b!7109117 (not c!1326620)) b!7109119))

(assert (= (and b!7109119 res!2901479) b!7109120))

(assert (= (and b!7109119 c!1326622) b!7109115))

(assert (= (and b!7109119 (not c!1326622)) b!7109123))

(assert (= (and b!7109123 c!1326619) b!7109113))

(assert (= (and b!7109123 (not c!1326619)) b!7109118))

(assert (= (and b!7109118 c!1326623) b!7109116))

(assert (= (and b!7109118 (not c!1326623)) b!7109114))

(assert (= (or b!7109113 b!7109116) bm!648334))

(assert (= (or b!7109113 b!7109116) bm!648332))

(assert (= (or b!7109115 bm!648332) bm!648335))

(assert (= (or b!7109115 bm!648334) bm!648330))

(assert (= (or b!7109121 bm!648335) bm!648331))

(assert (= (or b!7109121 b!7109115) bm!648333))

(declare-fun m!7830842 () Bool)

(assert (=> bm!648330 m!7830842))

(declare-fun m!7830844 () Bool)

(assert (=> bm!648333 m!7830844))

(declare-fun m!7830846 () Bool)

(assert (=> b!7109122 m!7830846))

(declare-fun m!7830848 () Bool)

(assert (=> bm!648331 m!7830848))

(declare-fun m!7830850 () Bool)

(assert (=> b!7109120 m!7830850))

(assert (=> b!7108865 d!2219873))

(declare-fun d!2219877 () Bool)

(assert (=> d!2219877 (= ($colon$colon!2784 lt!2559402 (regTwo!36364 r!11554)) (Cons!68763 (regTwo!36364 r!11554) lt!2559402))))

(assert (=> b!7108865 d!2219877))

(declare-fun call!648350 () List!68887)

(declare-fun c!1326629 () Bool)

(declare-fun c!1326632 () Bool)

(declare-fun bm!648342 () Bool)

(assert (=> bm!648342 (= call!648350 ($colon$colon!2784 (exprs!7420 lt!2559399) (ite (or c!1326632 c!1326629) (regTwo!36364 (regTwo!36364 r!11554)) (regTwo!36364 r!11554))))))

(declare-fun call!648348 () List!68887)

(declare-fun call!648351 () (Set Context!13840))

(declare-fun bm!648343 () Bool)

(declare-fun c!1326630 () Bool)

(assert (=> bm!648343 (= call!648351 (derivationStepZipperDown!2441 (ite c!1326630 (regTwo!36365 (regTwo!36364 r!11554)) (ite c!1326632 (regTwo!36364 (regTwo!36364 r!11554)) (ite c!1326629 (regOne!36364 (regTwo!36364 r!11554)) (reg!18255 (regTwo!36364 r!11554))))) (ite (or c!1326630 c!1326632) lt!2559399 (Context!13841 call!648348)) a!1901))))

(declare-fun bm!648344 () Bool)

(declare-fun call!648349 () (Set Context!13840))

(declare-fun call!648352 () (Set Context!13840))

(assert (=> bm!648344 (= call!648349 call!648352)))

(declare-fun b!7109135 () Bool)

(declare-fun e!4272478 () (Set Context!13840))

(assert (=> b!7109135 (= e!4272478 call!648349)))

(declare-fun b!7109136 () Bool)

(declare-fun e!4272480 () (Set Context!13840))

(assert (=> b!7109136 (= e!4272480 (as set.empty (Set Context!13840)))))

(declare-fun call!648347 () (Set Context!13840))

(declare-fun bm!648345 () Bool)

(assert (=> bm!648345 (= call!648347 (derivationStepZipperDown!2441 (ite c!1326630 (regOne!36365 (regTwo!36364 r!11554)) (regOne!36364 (regTwo!36364 r!11554))) (ite c!1326630 lt!2559399 (Context!13841 call!648350)) a!1901))))

(declare-fun b!7109137 () Bool)

(declare-fun e!4272481 () (Set Context!13840))

(assert (=> b!7109137 (= e!4272481 (set.union call!648347 call!648352))))

(declare-fun b!7109138 () Bool)

(assert (=> b!7109138 (= e!4272480 call!648349)))

(declare-fun bm!648346 () Bool)

(assert (=> bm!648346 (= call!648348 call!648350)))

(declare-fun b!7109139 () Bool)

(declare-fun e!4272479 () (Set Context!13840))

(declare-fun e!4272477 () (Set Context!13840))

(assert (=> b!7109139 (= e!4272479 e!4272477)))

(assert (=> b!7109139 (= c!1326630 (is-Union!17926 (regTwo!36364 r!11554)))))

(declare-fun b!7109140 () Bool)

(declare-fun c!1326633 () Bool)

(assert (=> b!7109140 (= c!1326633 (is-Star!17926 (regTwo!36364 r!11554)))))

(assert (=> b!7109140 (= e!4272478 e!4272480)))

(declare-fun d!2219879 () Bool)

(declare-fun c!1326631 () Bool)

(assert (=> d!2219879 (= c!1326631 (and (is-ElementMatch!17926 (regTwo!36364 r!11554)) (= (c!1326541 (regTwo!36364 r!11554)) a!1901)))))

(assert (=> d!2219879 (= (derivationStepZipperDown!2441 (regTwo!36364 r!11554) lt!2559399 a!1901) e!4272479)))

(declare-fun b!7109141 () Bool)

(declare-fun e!4272476 () Bool)

(assert (=> b!7109141 (= c!1326632 e!4272476)))

(declare-fun res!2901481 () Bool)

(assert (=> b!7109141 (=> (not res!2901481) (not e!4272476))))

(assert (=> b!7109141 (= res!2901481 (is-Concat!26771 (regTwo!36364 r!11554)))))

(assert (=> b!7109141 (= e!4272477 e!4272481)))

(declare-fun b!7109142 () Bool)

(assert (=> b!7109142 (= e!4272476 (nullable!7563 (regOne!36364 (regTwo!36364 r!11554))))))

(declare-fun b!7109143 () Bool)

(assert (=> b!7109143 (= e!4272477 (set.union call!648347 call!648351))))

(declare-fun b!7109144 () Bool)

(assert (=> b!7109144 (= e!4272479 (set.insert lt!2559399 (as set.empty (Set Context!13840))))))

(declare-fun bm!648347 () Bool)

(assert (=> bm!648347 (= call!648352 call!648351)))

(declare-fun b!7109145 () Bool)

(assert (=> b!7109145 (= e!4272481 e!4272478)))

(assert (=> b!7109145 (= c!1326629 (is-Concat!26771 (regTwo!36364 r!11554)))))

(assert (= (and d!2219879 c!1326631) b!7109144))

(assert (= (and d!2219879 (not c!1326631)) b!7109139))

(assert (= (and b!7109139 c!1326630) b!7109143))

(assert (= (and b!7109139 (not c!1326630)) b!7109141))

(assert (= (and b!7109141 res!2901481) b!7109142))

(assert (= (and b!7109141 c!1326632) b!7109137))

(assert (= (and b!7109141 (not c!1326632)) b!7109145))

(assert (= (and b!7109145 c!1326629) b!7109135))

(assert (= (and b!7109145 (not c!1326629)) b!7109140))

(assert (= (and b!7109140 c!1326633) b!7109138))

(assert (= (and b!7109140 (not c!1326633)) b!7109136))

(assert (= (or b!7109135 b!7109138) bm!648346))

(assert (= (or b!7109135 b!7109138) bm!648344))

(assert (= (or b!7109137 bm!648344) bm!648347))

(assert (= (or b!7109137 bm!648346) bm!648342))

(assert (= (or b!7109143 bm!648347) bm!648343))

(assert (= (or b!7109143 b!7109137) bm!648345))

(declare-fun m!7830858 () Bool)

(assert (=> bm!648342 m!7830858))

(declare-fun m!7830860 () Bool)

(assert (=> bm!648345 m!7830860))

(assert (=> b!7109144 m!7830838))

(declare-fun m!7830862 () Bool)

(assert (=> bm!648343 m!7830862))

(declare-fun m!7830864 () Bool)

(assert (=> b!7109142 m!7830864))

(assert (=> b!7108865 d!2219879))

(declare-fun b!7109157 () Bool)

(declare-fun e!4272484 () Bool)

(declare-fun tp!1955616 () Bool)

(declare-fun tp!1955613 () Bool)

(assert (=> b!7109157 (= e!4272484 (and tp!1955616 tp!1955613))))

(declare-fun b!7109156 () Bool)

(assert (=> b!7109156 (= e!4272484 tp_is_empty!45085)))

(declare-fun b!7109159 () Bool)

(declare-fun tp!1955617 () Bool)

(declare-fun tp!1955615 () Bool)

(assert (=> b!7109159 (= e!4272484 (and tp!1955617 tp!1955615))))

(declare-fun b!7109158 () Bool)

(declare-fun tp!1955614 () Bool)

(assert (=> b!7109158 (= e!4272484 tp!1955614)))

(assert (=> b!7108867 (= tp!1955578 e!4272484)))

(assert (= (and b!7108867 (is-ElementMatch!17926 (regOne!36365 r!11554))) b!7109156))

(assert (= (and b!7108867 (is-Concat!26771 (regOne!36365 r!11554))) b!7109157))

(assert (= (and b!7108867 (is-Star!17926 (regOne!36365 r!11554))) b!7109158))

(assert (= (and b!7108867 (is-Union!17926 (regOne!36365 r!11554))) b!7109159))

(declare-fun b!7109161 () Bool)

(declare-fun e!4272485 () Bool)

(declare-fun tp!1955621 () Bool)

(declare-fun tp!1955618 () Bool)

(assert (=> b!7109161 (= e!4272485 (and tp!1955621 tp!1955618))))

(declare-fun b!7109160 () Bool)

(assert (=> b!7109160 (= e!4272485 tp_is_empty!45085)))

(declare-fun b!7109163 () Bool)

(declare-fun tp!1955622 () Bool)

(declare-fun tp!1955620 () Bool)

(assert (=> b!7109163 (= e!4272485 (and tp!1955622 tp!1955620))))

(declare-fun b!7109162 () Bool)

(declare-fun tp!1955619 () Bool)

(assert (=> b!7109162 (= e!4272485 tp!1955619)))

(assert (=> b!7108867 (= tp!1955580 e!4272485)))

(assert (= (and b!7108867 (is-ElementMatch!17926 (regTwo!36365 r!11554))) b!7109160))

(assert (= (and b!7108867 (is-Concat!26771 (regTwo!36365 r!11554))) b!7109161))

(assert (= (and b!7108867 (is-Star!17926 (regTwo!36365 r!11554))) b!7109162))

(assert (= (and b!7108867 (is-Union!17926 (regTwo!36365 r!11554))) b!7109163))

(declare-fun b!7109168 () Bool)

(declare-fun e!4272488 () Bool)

(declare-fun tp!1955627 () Bool)

(declare-fun tp!1955628 () Bool)

(assert (=> b!7109168 (= e!4272488 (and tp!1955627 tp!1955628))))

(assert (=> b!7108872 (= tp!1955581 e!4272488)))

(assert (= (and b!7108872 (is-Cons!68763 (exprs!7420 c!9994))) b!7109168))

(declare-fun b!7109170 () Bool)

(declare-fun e!4272489 () Bool)

(declare-fun tp!1955632 () Bool)

(declare-fun tp!1955629 () Bool)

(assert (=> b!7109170 (= e!4272489 (and tp!1955632 tp!1955629))))

(declare-fun b!7109169 () Bool)

(assert (=> b!7109169 (= e!4272489 tp_is_empty!45085)))

(declare-fun b!7109172 () Bool)

(declare-fun tp!1955633 () Bool)

(declare-fun tp!1955631 () Bool)

(assert (=> b!7109172 (= e!4272489 (and tp!1955633 tp!1955631))))

(declare-fun b!7109171 () Bool)

(declare-fun tp!1955630 () Bool)

(assert (=> b!7109171 (= e!4272489 tp!1955630)))

(assert (=> b!7108868 (= tp!1955576 e!4272489)))

(assert (= (and b!7108868 (is-ElementMatch!17926 (reg!18255 r!11554))) b!7109169))

(assert (= (and b!7108868 (is-Concat!26771 (reg!18255 r!11554))) b!7109170))

(assert (= (and b!7108868 (is-Star!17926 (reg!18255 r!11554))) b!7109171))

(assert (= (and b!7108868 (is-Union!17926 (reg!18255 r!11554))) b!7109172))

(declare-fun b!7109174 () Bool)

(declare-fun e!4272490 () Bool)

(declare-fun tp!1955637 () Bool)

(declare-fun tp!1955634 () Bool)

(assert (=> b!7109174 (= e!4272490 (and tp!1955637 tp!1955634))))

(declare-fun b!7109173 () Bool)

(assert (=> b!7109173 (= e!4272490 tp_is_empty!45085)))

(declare-fun b!7109176 () Bool)

(declare-fun tp!1955638 () Bool)

(declare-fun tp!1955636 () Bool)

(assert (=> b!7109176 (= e!4272490 (and tp!1955638 tp!1955636))))

(declare-fun b!7109175 () Bool)

(declare-fun tp!1955635 () Bool)

(assert (=> b!7109175 (= e!4272490 tp!1955635)))

(assert (=> b!7108870 (= tp!1955575 e!4272490)))

(assert (= (and b!7108870 (is-ElementMatch!17926 (regOne!36364 r!11554))) b!7109173))

(assert (= (and b!7108870 (is-Concat!26771 (regOne!36364 r!11554))) b!7109174))

(assert (= (and b!7108870 (is-Star!17926 (regOne!36364 r!11554))) b!7109175))

(assert (= (and b!7108870 (is-Union!17926 (regOne!36364 r!11554))) b!7109176))

(declare-fun b!7109178 () Bool)

(declare-fun e!4272491 () Bool)

(declare-fun tp!1955642 () Bool)

(declare-fun tp!1955639 () Bool)

(assert (=> b!7109178 (= e!4272491 (and tp!1955642 tp!1955639))))

(declare-fun b!7109177 () Bool)

(assert (=> b!7109177 (= e!4272491 tp_is_empty!45085)))

(declare-fun b!7109180 () Bool)

(declare-fun tp!1955643 () Bool)

(declare-fun tp!1955641 () Bool)

(assert (=> b!7109180 (= e!4272491 (and tp!1955643 tp!1955641))))

(declare-fun b!7109179 () Bool)

(declare-fun tp!1955640 () Bool)

(assert (=> b!7109179 (= e!4272491 tp!1955640)))

(assert (=> b!7108870 (= tp!1955579 e!4272491)))

(assert (= (and b!7108870 (is-ElementMatch!17926 (regTwo!36364 r!11554))) b!7109177))

(assert (= (and b!7108870 (is-Concat!26771 (regTwo!36364 r!11554))) b!7109178))

(assert (= (and b!7108870 (is-Star!17926 (regTwo!36364 r!11554))) b!7109179))

(assert (= (and b!7108870 (is-Union!17926 (regTwo!36364 r!11554))) b!7109180))

(declare-fun b!7109181 () Bool)

(declare-fun e!4272492 () Bool)

(declare-fun tp!1955644 () Bool)

(declare-fun tp!1955645 () Bool)

(assert (=> b!7109181 (= e!4272492 (and tp!1955644 tp!1955645))))

(assert (=> b!7108871 (= tp!1955577 e!4272492)))

(assert (= (and b!7108871 (is-Cons!68763 (exprs!7420 auxCtx!45))) b!7109181))

(push 1)

(assert (not bm!648343))

(assert tp_is_empty!45085)

(assert (not b!7109161))

(assert (not bm!648290))

(assert (not bm!648327))

(assert (not d!2219849))

(assert (not bm!648252))

(assert (not b!7108964))

(assert (not bm!648293))

(assert (not b!7109172))

(assert (not bm!648345))

(assert (not bm!648324))

(assert (not b!7108947))

(assert (not d!2219857))

(assert (not b!7109163))

(assert (not bm!648286))

(assert (not bm!648256))

(assert (not bm!648253))

(assert (not bm!648288))

(assert (not bm!648299))

(assert (not d!2219861))

(assert (not b!7109158))

(assert (not b!7109174))

(assert (not b!7109181))

(assert (not b!7109178))

(assert (not b!7109162))

(assert (not b!7109175))

(assert (not b!7108934))

(assert (not bm!648287))

(assert (not bm!648258))

(assert (not b!7108948))

(assert (not bm!648330))

(assert (not bm!648331))

(assert (not b!7109171))

(assert (not bm!648294))

(assert (not b!7109180))

(assert (not b!7108955))

(assert (not bm!648342))

(assert (not b!7109170))

(assert (not bm!648297))

(assert (not b!7109168))

(assert (not bm!648255))

(assert (not b!7109159))

(assert (not b!7109142))

(assert (not b!7109120))

(assert (not bm!648295))

(assert (not d!2219847))

(assert (not b!7109109))

(assert (not bm!648333))

(assert (not bm!648259))

(assert (not d!2219855))

(assert (not b!7109176))

(assert (not bm!648292))

(assert (not b!7109157))

(assert (not bm!648325))

(assert (not b!7109179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

