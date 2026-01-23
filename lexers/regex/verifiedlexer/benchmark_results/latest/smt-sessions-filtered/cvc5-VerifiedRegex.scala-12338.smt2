; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691838 () Bool)

(assert start!691838)

(declare-fun b!7106913 () Bool)

(declare-fun e!4271324 () Bool)

(declare-fun tp!1954599 () Bool)

(assert (=> b!7106913 (= e!4271324 tp!1954599)))

(declare-fun b!7106914 () Bool)

(declare-fun e!4271323 () Bool)

(declare-fun tp!1954598 () Bool)

(assert (=> b!7106914 (= e!4271323 tp!1954598)))

(declare-fun b!7106915 () Bool)

(declare-fun res!2900893 () Bool)

(declare-fun e!4271325 () Bool)

(assert (=> b!7106915 (=> (not res!2900893) (not e!4271325))))

(declare-datatypes ((C!36106 0))(
  ( (C!36107 (val!27759 Int)) )
))
(declare-datatypes ((Regex!17918 0))(
  ( (ElementMatch!17918 (c!1326215 C!36106)) (Concat!26763 (regOne!36348 Regex!17918) (regTwo!36348 Regex!17918)) (EmptyExpr!17918) (Star!17918 (reg!18247 Regex!17918)) (EmptyLang!17918) (Union!17918 (regOne!36349 Regex!17918) (regTwo!36349 Regex!17918)) )
))
(declare-fun r!11554 () Regex!17918)

(declare-fun a!1901 () C!36106)

(assert (=> b!7106915 (= res!2900893 (and (or (not (is-ElementMatch!17918 r!11554)) (not (= (c!1326215 r!11554) a!1901))) (not (is-Union!17918 r!11554)) (is-Concat!26763 r!11554)))))

(declare-fun b!7106916 () Bool)

(declare-fun e!4271321 () Bool)

(declare-fun tp!1954596 () Bool)

(declare-fun tp!1954595 () Bool)

(assert (=> b!7106916 (= e!4271321 (and tp!1954596 tp!1954595))))

(declare-fun res!2900891 () Bool)

(assert (=> start!691838 (=> (not res!2900891) (not e!4271325))))

(declare-fun validRegex!9191 (Regex!17918) Bool)

(assert (=> start!691838 (= res!2900891 (validRegex!9191 r!11554))))

(assert (=> start!691838 e!4271325))

(assert (=> start!691838 e!4271321))

(declare-fun tp_is_empty!45069 () Bool)

(assert (=> start!691838 tp_is_empty!45069))

(declare-datatypes ((List!68879 0))(
  ( (Nil!68755) (Cons!68755 (h!75203 Regex!17918) (t!382696 List!68879)) )
))
(declare-datatypes ((Context!13824 0))(
  ( (Context!13825 (exprs!7412 List!68879)) )
))
(declare-fun c!9994 () Context!13824)

(declare-fun inv!87659 (Context!13824) Bool)

(assert (=> start!691838 (and (inv!87659 c!9994) e!4271323)))

(declare-fun auxCtx!45 () Context!13824)

(assert (=> start!691838 (and (inv!87659 auxCtx!45) e!4271324)))

(declare-fun b!7106917 () Bool)

(declare-fun e!4271322 () Bool)

(declare-fun lt!2559205 () List!68879)

(declare-fun $colon$colon!2776 (List!68879 Regex!17918) List!68879)

(assert (=> b!7106917 (= e!4271322 (not (inv!87659 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554))))))))

(declare-fun b!7106918 () Bool)

(declare-fun tp!1954594 () Bool)

(assert (=> b!7106918 (= e!4271321 tp!1954594)))

(declare-fun b!7106919 () Bool)

(declare-fun tp!1954593 () Bool)

(declare-fun tp!1954597 () Bool)

(assert (=> b!7106919 (= e!4271321 (and tp!1954593 tp!1954597))))

(declare-fun b!7106920 () Bool)

(declare-fun res!2900894 () Bool)

(assert (=> b!7106920 (=> (not res!2900894) (not e!4271325))))

(declare-fun nullable!7555 (Regex!17918) Bool)

(assert (=> b!7106920 (= res!2900894 (nullable!7555 (regOne!36348 r!11554)))))

(declare-fun b!7106921 () Bool)

(assert (=> b!7106921 (= e!4271325 e!4271322)))

(declare-fun res!2900892 () Bool)

(assert (=> b!7106921 (=> (not res!2900892) (not e!4271322))))

(assert (=> b!7106921 (= res!2900892 (validRegex!9191 (regTwo!36348 r!11554)))))

(declare-fun lambda!431684 () Int)

(declare-datatypes ((Unit!162507 0))(
  ( (Unit!162508) )
))
(declare-fun lt!2559208 () Unit!162507)

(declare-fun lemmaConcatPreservesForall!1203 (List!68879 List!68879 Int) Unit!162507)

(assert (=> b!7106921 (= lt!2559208 (lemmaConcatPreservesForall!1203 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684))))

(declare-fun ++!16070 (List!68879 List!68879) List!68879)

(assert (=> b!7106921 (= lt!2559205 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)))))

(declare-fun lt!2559206 () Unit!162507)

(assert (=> b!7106921 (= lt!2559206 (lemmaConcatPreservesForall!1203 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684))))

(declare-fun lt!2559207 () Unit!162507)

(assert (=> b!7106921 (= lt!2559207 (lemmaConcatPreservesForall!1203 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684))))

(declare-fun b!7106922 () Bool)

(assert (=> b!7106922 (= e!4271321 tp_is_empty!45069)))

(assert (= (and start!691838 res!2900891) b!7106915))

(assert (= (and b!7106915 res!2900893) b!7106920))

(assert (= (and b!7106920 res!2900894) b!7106921))

(assert (= (and b!7106921 res!2900892) b!7106917))

(assert (= (and start!691838 (is-ElementMatch!17918 r!11554)) b!7106922))

(assert (= (and start!691838 (is-Concat!26763 r!11554)) b!7106919))

(assert (= (and start!691838 (is-Star!17918 r!11554)) b!7106918))

(assert (= (and start!691838 (is-Union!17918 r!11554)) b!7106916))

(assert (= start!691838 b!7106914))

(assert (= start!691838 b!7106913))

(declare-fun m!7829700 () Bool)

(assert (=> start!691838 m!7829700))

(declare-fun m!7829702 () Bool)

(assert (=> start!691838 m!7829702))

(declare-fun m!7829704 () Bool)

(assert (=> start!691838 m!7829704))

(declare-fun m!7829706 () Bool)

(assert (=> b!7106917 m!7829706))

(declare-fun m!7829708 () Bool)

(assert (=> b!7106917 m!7829708))

(declare-fun m!7829710 () Bool)

(assert (=> b!7106920 m!7829710))

(declare-fun m!7829712 () Bool)

(assert (=> b!7106921 m!7829712))

(assert (=> b!7106921 m!7829712))

(assert (=> b!7106921 m!7829712))

(declare-fun m!7829714 () Bool)

(assert (=> b!7106921 m!7829714))

(declare-fun m!7829716 () Bool)

(assert (=> b!7106921 m!7829716))

(push 1)

(assert tp_is_empty!45069)

(assert (not b!7106920))

(assert (not b!7106918))

(assert (not b!7106914))

(assert (not b!7106917))

(assert (not b!7106921))

(assert (not b!7106919))

(assert (not b!7106913))

(assert (not b!7106916))

(assert (not start!691838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1884841 () Bool)

(declare-fun d!2219461 () Bool)

(assert (= bs!1884841 (and d!2219461 b!7106921)))

(declare-fun lambda!431694 () Int)

(assert (=> bs!1884841 (= lambda!431694 lambda!431684)))

(declare-fun forall!16821 (List!68879 Int) Bool)

(assert (=> d!2219461 (= (inv!87659 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))) (forall!16821 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))) lambda!431694))))

(declare-fun bs!1884842 () Bool)

(assert (= bs!1884842 d!2219461))

(declare-fun m!7829736 () Bool)

(assert (=> bs!1884842 m!7829736))

(assert (=> b!7106917 d!2219461))

(declare-fun d!2219463 () Bool)

(assert (=> d!2219463 (= ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)) (Cons!68755 (regTwo!36348 r!11554) lt!2559205))))

(assert (=> b!7106917 d!2219463))

(declare-fun d!2219467 () Bool)

(declare-fun nullableFct!2912 (Regex!17918) Bool)

(assert (=> d!2219467 (= (nullable!7555 (regOne!36348 r!11554)) (nullableFct!2912 (regOne!36348 r!11554)))))

(declare-fun bs!1884843 () Bool)

(assert (= bs!1884843 d!2219467))

(declare-fun m!7829738 () Bool)

(assert (=> bs!1884843 m!7829738))

(assert (=> b!7106920 d!2219467))

(declare-fun d!2219469 () Bool)

(assert (=> d!2219469 (forall!16821 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)) lambda!431684)))

(declare-fun lt!2559223 () Unit!162507)

(declare-fun choose!54829 (List!68879 List!68879 Int) Unit!162507)

(assert (=> d!2219469 (= lt!2559223 (choose!54829 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684))))

(assert (=> d!2219469 (forall!16821 (exprs!7412 c!9994) lambda!431684)))

(assert (=> d!2219469 (= (lemmaConcatPreservesForall!1203 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684) lt!2559223)))

(declare-fun bs!1884844 () Bool)

(assert (= bs!1884844 d!2219469))

(assert (=> bs!1884844 m!7829714))

(assert (=> bs!1884844 m!7829714))

(declare-fun m!7829740 () Bool)

(assert (=> bs!1884844 m!7829740))

(declare-fun m!7829742 () Bool)

(assert (=> bs!1884844 m!7829742))

(declare-fun m!7829744 () Bool)

(assert (=> bs!1884844 m!7829744))

(assert (=> b!7106921 d!2219469))

(declare-fun bm!647909 () Bool)

(declare-fun c!1326222 () Bool)

(declare-fun c!1326221 () Bool)

(declare-fun call!647914 () Bool)

(assert (=> bm!647909 (= call!647914 (validRegex!9191 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))

(declare-fun bm!647910 () Bool)

(declare-fun call!647915 () Bool)

(assert (=> bm!647910 (= call!647915 call!647914)))

(declare-fun d!2219471 () Bool)

(declare-fun res!2900917 () Bool)

(declare-fun e!4271355 () Bool)

(assert (=> d!2219471 (=> res!2900917 e!4271355)))

(assert (=> d!2219471 (= res!2900917 (is-ElementMatch!17918 (regTwo!36348 r!11554)))))

(assert (=> d!2219471 (= (validRegex!9191 (regTwo!36348 r!11554)) e!4271355)))

(declare-fun b!7106971 () Bool)

(declare-fun e!4271360 () Bool)

(assert (=> b!7106971 (= e!4271355 e!4271360)))

(assert (=> b!7106971 (= c!1326221 (is-Star!17918 (regTwo!36348 r!11554)))))

(declare-fun b!7106972 () Bool)

(declare-fun e!4271361 () Bool)

(assert (=> b!7106972 (= e!4271361 call!647915)))

(declare-fun b!7106973 () Bool)

(declare-fun e!4271357 () Bool)

(assert (=> b!7106973 (= e!4271357 call!647914)))

(declare-fun b!7106974 () Bool)

(declare-fun e!4271359 () Bool)

(assert (=> b!7106974 (= e!4271359 e!4271361)))

(declare-fun res!2900919 () Bool)

(assert (=> b!7106974 (=> (not res!2900919) (not e!4271361))))

(declare-fun call!647916 () Bool)

(assert (=> b!7106974 (= res!2900919 call!647916)))

(declare-fun bm!647911 () Bool)

(assert (=> bm!647911 (= call!647916 (validRegex!9191 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))

(declare-fun b!7106975 () Bool)

(declare-fun res!2900920 () Bool)

(assert (=> b!7106975 (=> res!2900920 e!4271359)))

(assert (=> b!7106975 (= res!2900920 (not (is-Concat!26763 (regTwo!36348 r!11554))))))

(declare-fun e!4271358 () Bool)

(assert (=> b!7106975 (= e!4271358 e!4271359)))

(declare-fun b!7106976 () Bool)

(declare-fun res!2900918 () Bool)

(declare-fun e!4271356 () Bool)

(assert (=> b!7106976 (=> (not res!2900918) (not e!4271356))))

(assert (=> b!7106976 (= res!2900918 call!647915)))

(assert (=> b!7106976 (= e!4271358 e!4271356)))

(declare-fun b!7106977 () Bool)

(assert (=> b!7106977 (= e!4271356 call!647916)))

(declare-fun b!7106978 () Bool)

(assert (=> b!7106978 (= e!4271360 e!4271358)))

(assert (=> b!7106978 (= c!1326222 (is-Union!17918 (regTwo!36348 r!11554)))))

(declare-fun b!7106979 () Bool)

(assert (=> b!7106979 (= e!4271360 e!4271357)))

(declare-fun res!2900921 () Bool)

(assert (=> b!7106979 (= res!2900921 (not (nullable!7555 (reg!18247 (regTwo!36348 r!11554)))))))

(assert (=> b!7106979 (=> (not res!2900921) (not e!4271357))))

(assert (= (and d!2219471 (not res!2900917)) b!7106971))

(assert (= (and b!7106971 c!1326221) b!7106979))

(assert (= (and b!7106971 (not c!1326221)) b!7106978))

(assert (= (and b!7106979 res!2900921) b!7106973))

(assert (= (and b!7106978 c!1326222) b!7106976))

(assert (= (and b!7106978 (not c!1326222)) b!7106975))

(assert (= (and b!7106976 res!2900918) b!7106977))

(assert (= (and b!7106975 (not res!2900920)) b!7106974))

(assert (= (and b!7106974 res!2900919) b!7106972))

(assert (= (or b!7106976 b!7106972) bm!647910))

(assert (= (or b!7106977 b!7106974) bm!647911))

(assert (= (or b!7106973 bm!647910) bm!647909))

(declare-fun m!7829750 () Bool)

(assert (=> bm!647909 m!7829750))

(declare-fun m!7829752 () Bool)

(assert (=> bm!647911 m!7829752))

(declare-fun m!7829754 () Bool)

(assert (=> b!7106979 m!7829754))

(assert (=> b!7106921 d!2219471))

(declare-fun d!2219479 () Bool)

(declare-fun e!4271367 () Bool)

(assert (=> d!2219479 e!4271367))

(declare-fun res!2900926 () Bool)

(assert (=> d!2219479 (=> (not res!2900926) (not e!4271367))))

(declare-fun lt!2559229 () List!68879)

(declare-fun content!14006 (List!68879) (Set Regex!17918))

(assert (=> d!2219479 (= res!2900926 (= (content!14006 lt!2559229) (set.union (content!14006 (exprs!7412 c!9994)) (content!14006 (exprs!7412 auxCtx!45)))))))

(declare-fun e!4271366 () List!68879)

(assert (=> d!2219479 (= lt!2559229 e!4271366)))

(declare-fun c!1326225 () Bool)

(assert (=> d!2219479 (= c!1326225 (is-Nil!68755 (exprs!7412 c!9994)))))

(assert (=> d!2219479 (= (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)) lt!2559229)))

(declare-fun b!7106988 () Bool)

(assert (=> b!7106988 (= e!4271366 (exprs!7412 auxCtx!45))))

(declare-fun b!7106991 () Bool)

(assert (=> b!7106991 (= e!4271367 (or (not (= (exprs!7412 auxCtx!45) Nil!68755)) (= lt!2559229 (exprs!7412 c!9994))))))

(declare-fun b!7106990 () Bool)

(declare-fun res!2900927 () Bool)

(assert (=> b!7106990 (=> (not res!2900927) (not e!4271367))))

(declare-fun size!41381 (List!68879) Int)

(assert (=> b!7106990 (= res!2900927 (= (size!41381 lt!2559229) (+ (size!41381 (exprs!7412 c!9994)) (size!41381 (exprs!7412 auxCtx!45)))))))

(declare-fun b!7106989 () Bool)

(assert (=> b!7106989 (= e!4271366 (Cons!68755 (h!75203 (exprs!7412 c!9994)) (++!16070 (t!382696 (exprs!7412 c!9994)) (exprs!7412 auxCtx!45))))))

(assert (= (and d!2219479 c!1326225) b!7106988))

(assert (= (and d!2219479 (not c!1326225)) b!7106989))

(assert (= (and d!2219479 res!2900926) b!7106990))

(assert (= (and b!7106990 res!2900927) b!7106991))

(declare-fun m!7829762 () Bool)

(assert (=> d!2219479 m!7829762))

(declare-fun m!7829764 () Bool)

(assert (=> d!2219479 m!7829764))

(declare-fun m!7829766 () Bool)

(assert (=> d!2219479 m!7829766))

(declare-fun m!7829768 () Bool)

(assert (=> b!7106990 m!7829768))

(declare-fun m!7829770 () Bool)

(assert (=> b!7106990 m!7829770))

(declare-fun m!7829772 () Bool)

(assert (=> b!7106990 m!7829772))

(declare-fun m!7829774 () Bool)

(assert (=> b!7106989 m!7829774))

(assert (=> b!7106921 d!2219479))

(declare-fun bm!647912 () Bool)

(declare-fun call!647917 () Bool)

(declare-fun c!1326227 () Bool)

(declare-fun c!1326226 () Bool)

(assert (=> bm!647912 (= call!647917 (validRegex!9191 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))

(declare-fun bm!647913 () Bool)

(declare-fun call!647918 () Bool)

(assert (=> bm!647913 (= call!647918 call!647917)))

(declare-fun d!2219483 () Bool)

(declare-fun res!2900928 () Bool)

(declare-fun e!4271368 () Bool)

(assert (=> d!2219483 (=> res!2900928 e!4271368)))

(assert (=> d!2219483 (= res!2900928 (is-ElementMatch!17918 r!11554))))

(assert (=> d!2219483 (= (validRegex!9191 r!11554) e!4271368)))

(declare-fun b!7106992 () Bool)

(declare-fun e!4271373 () Bool)

(assert (=> b!7106992 (= e!4271368 e!4271373)))

(assert (=> b!7106992 (= c!1326226 (is-Star!17918 r!11554))))

(declare-fun b!7106993 () Bool)

(declare-fun e!4271374 () Bool)

(assert (=> b!7106993 (= e!4271374 call!647918)))

(declare-fun b!7106994 () Bool)

(declare-fun e!4271370 () Bool)

(assert (=> b!7106994 (= e!4271370 call!647917)))

(declare-fun b!7106995 () Bool)

(declare-fun e!4271372 () Bool)

(assert (=> b!7106995 (= e!4271372 e!4271374)))

(declare-fun res!2900930 () Bool)

(assert (=> b!7106995 (=> (not res!2900930) (not e!4271374))))

(declare-fun call!647919 () Bool)

(assert (=> b!7106995 (= res!2900930 call!647919)))

(declare-fun bm!647914 () Bool)

(assert (=> bm!647914 (= call!647919 (validRegex!9191 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))

(declare-fun b!7106996 () Bool)

(declare-fun res!2900931 () Bool)

(assert (=> b!7106996 (=> res!2900931 e!4271372)))

(assert (=> b!7106996 (= res!2900931 (not (is-Concat!26763 r!11554)))))

(declare-fun e!4271371 () Bool)

(assert (=> b!7106996 (= e!4271371 e!4271372)))

(declare-fun b!7106997 () Bool)

(declare-fun res!2900929 () Bool)

(declare-fun e!4271369 () Bool)

(assert (=> b!7106997 (=> (not res!2900929) (not e!4271369))))

(assert (=> b!7106997 (= res!2900929 call!647918)))

(assert (=> b!7106997 (= e!4271371 e!4271369)))

(declare-fun b!7106998 () Bool)

(assert (=> b!7106998 (= e!4271369 call!647919)))

(declare-fun b!7106999 () Bool)

(assert (=> b!7106999 (= e!4271373 e!4271371)))

(assert (=> b!7106999 (= c!1326227 (is-Union!17918 r!11554))))

(declare-fun b!7107000 () Bool)

(assert (=> b!7107000 (= e!4271373 e!4271370)))

(declare-fun res!2900932 () Bool)

(assert (=> b!7107000 (= res!2900932 (not (nullable!7555 (reg!18247 r!11554))))))

(assert (=> b!7107000 (=> (not res!2900932) (not e!4271370))))

(assert (= (and d!2219483 (not res!2900928)) b!7106992))

(assert (= (and b!7106992 c!1326226) b!7107000))

(assert (= (and b!7106992 (not c!1326226)) b!7106999))

(assert (= (and b!7107000 res!2900932) b!7106994))

(assert (= (and b!7106999 c!1326227) b!7106997))

(assert (= (and b!7106999 (not c!1326227)) b!7106996))

(assert (= (and b!7106997 res!2900929) b!7106998))

(assert (= (and b!7106996 (not res!2900931)) b!7106995))

(assert (= (and b!7106995 res!2900930) b!7106993))

(assert (= (or b!7106997 b!7106993) bm!647913))

(assert (= (or b!7106998 b!7106995) bm!647914))

(assert (= (or b!7106994 bm!647913) bm!647912))

(declare-fun m!7829776 () Bool)

(assert (=> bm!647912 m!7829776))

(declare-fun m!7829778 () Bool)

(assert (=> bm!647914 m!7829778))

(declare-fun m!7829780 () Bool)

(assert (=> b!7107000 m!7829780))

(assert (=> start!691838 d!2219483))

(declare-fun bs!1884849 () Bool)

(declare-fun d!2219485 () Bool)

(assert (= bs!1884849 (and d!2219485 b!7106921)))

(declare-fun lambda!431698 () Int)

(assert (=> bs!1884849 (= lambda!431698 lambda!431684)))

(declare-fun bs!1884850 () Bool)

(assert (= bs!1884850 (and d!2219485 d!2219461)))

(assert (=> bs!1884850 (= lambda!431698 lambda!431694)))

(assert (=> d!2219485 (= (inv!87659 c!9994) (forall!16821 (exprs!7412 c!9994) lambda!431698))))

(declare-fun bs!1884851 () Bool)

(assert (= bs!1884851 d!2219485))

(declare-fun m!7829782 () Bool)

(assert (=> bs!1884851 m!7829782))

(assert (=> start!691838 d!2219485))

(declare-fun bs!1884852 () Bool)

(declare-fun d!2219487 () Bool)

(assert (= bs!1884852 (and d!2219487 b!7106921)))

(declare-fun lambda!431699 () Int)

(assert (=> bs!1884852 (= lambda!431699 lambda!431684)))

(declare-fun bs!1884853 () Bool)

(assert (= bs!1884853 (and d!2219487 d!2219461)))

(assert (=> bs!1884853 (= lambda!431699 lambda!431694)))

(declare-fun bs!1884854 () Bool)

(assert (= bs!1884854 (and d!2219487 d!2219485)))

(assert (=> bs!1884854 (= lambda!431699 lambda!431698)))

(assert (=> d!2219487 (= (inv!87659 auxCtx!45) (forall!16821 (exprs!7412 auxCtx!45) lambda!431699))))

(declare-fun bs!1884855 () Bool)

(assert (= bs!1884855 d!2219487))

(declare-fun m!7829784 () Bool)

(assert (=> bs!1884855 m!7829784))

(assert (=> start!691838 d!2219487))

(declare-fun b!7107005 () Bool)

(declare-fun e!4271377 () Bool)

(declare-fun tp!1954625 () Bool)

(declare-fun tp!1954626 () Bool)

(assert (=> b!7107005 (= e!4271377 (and tp!1954625 tp!1954626))))

(assert (=> b!7106913 (= tp!1954599 e!4271377)))

(assert (= (and b!7106913 (is-Cons!68755 (exprs!7412 auxCtx!45))) b!7107005))

(declare-fun b!7107017 () Bool)

(declare-fun e!4271380 () Bool)

(declare-fun tp!1954640 () Bool)

(declare-fun tp!1954639 () Bool)

(assert (=> b!7107017 (= e!4271380 (and tp!1954640 tp!1954639))))

(declare-fun b!7107016 () Bool)

(assert (=> b!7107016 (= e!4271380 tp_is_empty!45069)))

(assert (=> b!7106918 (= tp!1954594 e!4271380)))

(declare-fun b!7107019 () Bool)

(declare-fun tp!1954638 () Bool)

(declare-fun tp!1954637 () Bool)

(assert (=> b!7107019 (= e!4271380 (and tp!1954638 tp!1954637))))

(declare-fun b!7107018 () Bool)

(declare-fun tp!1954641 () Bool)

(assert (=> b!7107018 (= e!4271380 tp!1954641)))

(assert (= (and b!7106918 (is-ElementMatch!17918 (reg!18247 r!11554))) b!7107016))

(assert (= (and b!7106918 (is-Concat!26763 (reg!18247 r!11554))) b!7107017))

(assert (= (and b!7106918 (is-Star!17918 (reg!18247 r!11554))) b!7107018))

(assert (= (and b!7106918 (is-Union!17918 (reg!18247 r!11554))) b!7107019))

(declare-fun b!7107021 () Bool)

(declare-fun e!4271381 () Bool)

(declare-fun tp!1954645 () Bool)

(declare-fun tp!1954644 () Bool)

(assert (=> b!7107021 (= e!4271381 (and tp!1954645 tp!1954644))))

(declare-fun b!7107020 () Bool)

(assert (=> b!7107020 (= e!4271381 tp_is_empty!45069)))

(assert (=> b!7106919 (= tp!1954593 e!4271381)))

(declare-fun b!7107023 () Bool)

(declare-fun tp!1954643 () Bool)

(declare-fun tp!1954642 () Bool)

(assert (=> b!7107023 (= e!4271381 (and tp!1954643 tp!1954642))))

(declare-fun b!7107022 () Bool)

(declare-fun tp!1954646 () Bool)

(assert (=> b!7107022 (= e!4271381 tp!1954646)))

(assert (= (and b!7106919 (is-ElementMatch!17918 (regOne!36348 r!11554))) b!7107020))

(assert (= (and b!7106919 (is-Concat!26763 (regOne!36348 r!11554))) b!7107021))

(assert (= (and b!7106919 (is-Star!17918 (regOne!36348 r!11554))) b!7107022))

(assert (= (and b!7106919 (is-Union!17918 (regOne!36348 r!11554))) b!7107023))

(declare-fun b!7107025 () Bool)

(declare-fun e!4271382 () Bool)

(declare-fun tp!1954650 () Bool)

(declare-fun tp!1954649 () Bool)

(assert (=> b!7107025 (= e!4271382 (and tp!1954650 tp!1954649))))

(declare-fun b!7107024 () Bool)

(assert (=> b!7107024 (= e!4271382 tp_is_empty!45069)))

(assert (=> b!7106919 (= tp!1954597 e!4271382)))

(declare-fun b!7107027 () Bool)

(declare-fun tp!1954648 () Bool)

(declare-fun tp!1954647 () Bool)

(assert (=> b!7107027 (= e!4271382 (and tp!1954648 tp!1954647))))

(declare-fun b!7107026 () Bool)

(declare-fun tp!1954651 () Bool)

(assert (=> b!7107026 (= e!4271382 tp!1954651)))

(assert (= (and b!7106919 (is-ElementMatch!17918 (regTwo!36348 r!11554))) b!7107024))

(assert (= (and b!7106919 (is-Concat!26763 (regTwo!36348 r!11554))) b!7107025))

(assert (= (and b!7106919 (is-Star!17918 (regTwo!36348 r!11554))) b!7107026))

(assert (= (and b!7106919 (is-Union!17918 (regTwo!36348 r!11554))) b!7107027))

(declare-fun b!7107028 () Bool)

(declare-fun e!4271383 () Bool)

(declare-fun tp!1954652 () Bool)

(declare-fun tp!1954653 () Bool)

(assert (=> b!7107028 (= e!4271383 (and tp!1954652 tp!1954653))))

(assert (=> b!7106914 (= tp!1954598 e!4271383)))

(assert (= (and b!7106914 (is-Cons!68755 (exprs!7412 c!9994))) b!7107028))

(declare-fun b!7107030 () Bool)

(declare-fun e!4271384 () Bool)

(declare-fun tp!1954657 () Bool)

(declare-fun tp!1954656 () Bool)

(assert (=> b!7107030 (= e!4271384 (and tp!1954657 tp!1954656))))

(declare-fun b!7107029 () Bool)

(assert (=> b!7107029 (= e!4271384 tp_is_empty!45069)))

(assert (=> b!7106916 (= tp!1954596 e!4271384)))

(declare-fun b!7107032 () Bool)

(declare-fun tp!1954655 () Bool)

(declare-fun tp!1954654 () Bool)

(assert (=> b!7107032 (= e!4271384 (and tp!1954655 tp!1954654))))

(declare-fun b!7107031 () Bool)

(declare-fun tp!1954658 () Bool)

(assert (=> b!7107031 (= e!4271384 tp!1954658)))

(assert (= (and b!7106916 (is-ElementMatch!17918 (regOne!36349 r!11554))) b!7107029))

(assert (= (and b!7106916 (is-Concat!26763 (regOne!36349 r!11554))) b!7107030))

(assert (= (and b!7106916 (is-Star!17918 (regOne!36349 r!11554))) b!7107031))

(assert (= (and b!7106916 (is-Union!17918 (regOne!36349 r!11554))) b!7107032))

(declare-fun b!7107034 () Bool)

(declare-fun e!4271385 () Bool)

(declare-fun tp!1954662 () Bool)

(declare-fun tp!1954661 () Bool)

(assert (=> b!7107034 (= e!4271385 (and tp!1954662 tp!1954661))))

(declare-fun b!7107033 () Bool)

(assert (=> b!7107033 (= e!4271385 tp_is_empty!45069)))

(assert (=> b!7106916 (= tp!1954595 e!4271385)))

(declare-fun b!7107036 () Bool)

(declare-fun tp!1954660 () Bool)

(declare-fun tp!1954659 () Bool)

(assert (=> b!7107036 (= e!4271385 (and tp!1954660 tp!1954659))))

(declare-fun b!7107035 () Bool)

(declare-fun tp!1954663 () Bool)

(assert (=> b!7107035 (= e!4271385 tp!1954663)))

(assert (= (and b!7106916 (is-ElementMatch!17918 (regTwo!36349 r!11554))) b!7107033))

(assert (= (and b!7106916 (is-Concat!26763 (regTwo!36349 r!11554))) b!7107034))

(assert (= (and b!7106916 (is-Star!17918 (regTwo!36349 r!11554))) b!7107035))

(assert (= (and b!7106916 (is-Union!17918 (regTwo!36349 r!11554))) b!7107036))

(push 1)

(assert (not bm!647912))

(assert (not b!7107036))

(assert (not b!7107027))

(assert (not d!2219467))

(assert (not b!7107023))

(assert (not bm!647911))

(assert (not b!7107030))

(assert (not d!2219487))

(assert (not bm!647914))

(assert (not b!7107019))

(assert (not b!7107034))

(assert (not b!7107032))

(assert tp_is_empty!45069)

(assert (not b!7107025))

(assert (not b!7107022))

(assert (not d!2219469))

(assert (not b!7107021))

(assert (not b!7106979))

(assert (not d!2219479))

(assert (not b!7106990))

(assert (not b!7107035))

(assert (not b!7107026))

(assert (not b!7107000))

(assert (not b!7107005))

(assert (not b!7107031))

(assert (not bm!647909))

(assert (not d!2219461))

(assert (not b!7107028))

(assert (not d!2219485))

(assert (not b!7107018))

(assert (not b!7107017))

(assert (not b!7106989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219497 () Bool)

(declare-fun res!2900963 () Bool)

(declare-fun e!4271435 () Bool)

(assert (=> d!2219497 (=> res!2900963 e!4271435)))

(assert (=> d!2219497 (= res!2900963 (is-Nil!68755 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45))))))

(assert (=> d!2219497 (= (forall!16821 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)) lambda!431684) e!4271435)))

(declare-fun b!7107125 () Bool)

(declare-fun e!4271436 () Bool)

(assert (=> b!7107125 (= e!4271435 e!4271436)))

(declare-fun res!2900964 () Bool)

(assert (=> b!7107125 (=> (not res!2900964) (not e!4271436))))

(declare-fun dynLambda!28052 (Int Regex!17918) Bool)

(assert (=> b!7107125 (= res!2900964 (dynLambda!28052 lambda!431684 (h!75203 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)))))))

(declare-fun b!7107126 () Bool)

(assert (=> b!7107126 (= e!4271436 (forall!16821 (t!382696 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45))) lambda!431684))))

(assert (= (and d!2219497 (not res!2900963)) b!7107125))

(assert (= (and b!7107125 res!2900964) b!7107126))

(declare-fun b_lambda!271337 () Bool)

(assert (=> (not b_lambda!271337) (not b!7107125)))

(declare-fun m!7829816 () Bool)

(assert (=> b!7107125 m!7829816))

(declare-fun m!7829818 () Bool)

(assert (=> b!7107126 m!7829818))

(assert (=> d!2219469 d!2219497))

(assert (=> d!2219469 d!2219479))

(declare-fun d!2219499 () Bool)

(assert (=> d!2219499 (forall!16821 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)) lambda!431684)))

(assert (=> d!2219499 true))

(declare-fun _$78!683 () Unit!162507)

(assert (=> d!2219499 (= (choose!54829 (exprs!7412 c!9994) (exprs!7412 auxCtx!45) lambda!431684) _$78!683)))

(declare-fun bs!1884863 () Bool)

(assert (= bs!1884863 d!2219499))

(assert (=> bs!1884863 m!7829714))

(assert (=> bs!1884863 m!7829714))

(assert (=> bs!1884863 m!7829740))

(assert (=> d!2219469 d!2219499))

(declare-fun d!2219501 () Bool)

(declare-fun res!2900965 () Bool)

(declare-fun e!4271437 () Bool)

(assert (=> d!2219501 (=> res!2900965 e!4271437)))

(assert (=> d!2219501 (= res!2900965 (is-Nil!68755 (exprs!7412 c!9994)))))

(assert (=> d!2219501 (= (forall!16821 (exprs!7412 c!9994) lambda!431684) e!4271437)))

(declare-fun b!7107127 () Bool)

(declare-fun e!4271438 () Bool)

(assert (=> b!7107127 (= e!4271437 e!4271438)))

(declare-fun res!2900966 () Bool)

(assert (=> b!7107127 (=> (not res!2900966) (not e!4271438))))

(assert (=> b!7107127 (= res!2900966 (dynLambda!28052 lambda!431684 (h!75203 (exprs!7412 c!9994))))))

(declare-fun b!7107128 () Bool)

(assert (=> b!7107128 (= e!4271438 (forall!16821 (t!382696 (exprs!7412 c!9994)) lambda!431684))))

(assert (= (and d!2219501 (not res!2900965)) b!7107127))

(assert (= (and b!7107127 res!2900966) b!7107128))

(declare-fun b_lambda!271339 () Bool)

(assert (=> (not b_lambda!271339) (not b!7107127)))

(declare-fun m!7829820 () Bool)

(assert (=> b!7107127 m!7829820))

(declare-fun m!7829822 () Bool)

(assert (=> b!7107128 m!7829822))

(assert (=> d!2219469 d!2219501))

(declare-fun d!2219503 () Bool)

(declare-fun e!4271440 () Bool)

(assert (=> d!2219503 e!4271440))

(declare-fun res!2900967 () Bool)

(assert (=> d!2219503 (=> (not res!2900967) (not e!4271440))))

(declare-fun lt!2559233 () List!68879)

(assert (=> d!2219503 (= res!2900967 (= (content!14006 lt!2559233) (set.union (content!14006 (t!382696 (exprs!7412 c!9994))) (content!14006 (exprs!7412 auxCtx!45)))))))

(declare-fun e!4271439 () List!68879)

(assert (=> d!2219503 (= lt!2559233 e!4271439)))

(declare-fun c!1326239 () Bool)

(assert (=> d!2219503 (= c!1326239 (is-Nil!68755 (t!382696 (exprs!7412 c!9994))))))

(assert (=> d!2219503 (= (++!16070 (t!382696 (exprs!7412 c!9994)) (exprs!7412 auxCtx!45)) lt!2559233)))

(declare-fun b!7107129 () Bool)

(assert (=> b!7107129 (= e!4271439 (exprs!7412 auxCtx!45))))

(declare-fun b!7107132 () Bool)

(assert (=> b!7107132 (= e!4271440 (or (not (= (exprs!7412 auxCtx!45) Nil!68755)) (= lt!2559233 (t!382696 (exprs!7412 c!9994)))))))

(declare-fun b!7107131 () Bool)

(declare-fun res!2900968 () Bool)

(assert (=> b!7107131 (=> (not res!2900968) (not e!4271440))))

(assert (=> b!7107131 (= res!2900968 (= (size!41381 lt!2559233) (+ (size!41381 (t!382696 (exprs!7412 c!9994))) (size!41381 (exprs!7412 auxCtx!45)))))))

(declare-fun b!7107130 () Bool)

(assert (=> b!7107130 (= e!4271439 (Cons!68755 (h!75203 (t!382696 (exprs!7412 c!9994))) (++!16070 (t!382696 (t!382696 (exprs!7412 c!9994))) (exprs!7412 auxCtx!45))))))

(assert (= (and d!2219503 c!1326239) b!7107129))

(assert (= (and d!2219503 (not c!1326239)) b!7107130))

(assert (= (and d!2219503 res!2900967) b!7107131))

(assert (= (and b!7107131 res!2900968) b!7107132))

(declare-fun m!7829824 () Bool)

(assert (=> d!2219503 m!7829824))

(declare-fun m!7829826 () Bool)

(assert (=> d!2219503 m!7829826))

(assert (=> d!2219503 m!7829766))

(declare-fun m!7829828 () Bool)

(assert (=> b!7107131 m!7829828))

(declare-fun m!7829830 () Bool)

(assert (=> b!7107131 m!7829830))

(assert (=> b!7107131 m!7829772))

(declare-fun m!7829832 () Bool)

(assert (=> b!7107130 m!7829832))

(assert (=> b!7106989 d!2219503))

(declare-fun d!2219505 () Bool)

(declare-fun lt!2559236 () Int)

(assert (=> d!2219505 (>= lt!2559236 0)))

(declare-fun e!4271443 () Int)

(assert (=> d!2219505 (= lt!2559236 e!4271443)))

(declare-fun c!1326242 () Bool)

(assert (=> d!2219505 (= c!1326242 (is-Nil!68755 lt!2559229))))

(assert (=> d!2219505 (= (size!41381 lt!2559229) lt!2559236)))

(declare-fun b!7107137 () Bool)

(assert (=> b!7107137 (= e!4271443 0)))

(declare-fun b!7107138 () Bool)

(assert (=> b!7107138 (= e!4271443 (+ 1 (size!41381 (t!382696 lt!2559229))))))

(assert (= (and d!2219505 c!1326242) b!7107137))

(assert (= (and d!2219505 (not c!1326242)) b!7107138))

(declare-fun m!7829834 () Bool)

(assert (=> b!7107138 m!7829834))

(assert (=> b!7106990 d!2219505))

(declare-fun d!2219507 () Bool)

(declare-fun lt!2559237 () Int)

(assert (=> d!2219507 (>= lt!2559237 0)))

(declare-fun e!4271444 () Int)

(assert (=> d!2219507 (= lt!2559237 e!4271444)))

(declare-fun c!1326243 () Bool)

(assert (=> d!2219507 (= c!1326243 (is-Nil!68755 (exprs!7412 c!9994)))))

(assert (=> d!2219507 (= (size!41381 (exprs!7412 c!9994)) lt!2559237)))

(declare-fun b!7107139 () Bool)

(assert (=> b!7107139 (= e!4271444 0)))

(declare-fun b!7107140 () Bool)

(assert (=> b!7107140 (= e!4271444 (+ 1 (size!41381 (t!382696 (exprs!7412 c!9994)))))))

(assert (= (and d!2219507 c!1326243) b!7107139))

(assert (= (and d!2219507 (not c!1326243)) b!7107140))

(assert (=> b!7107140 m!7829830))

(assert (=> b!7106990 d!2219507))

(declare-fun d!2219509 () Bool)

(declare-fun lt!2559238 () Int)

(assert (=> d!2219509 (>= lt!2559238 0)))

(declare-fun e!4271445 () Int)

(assert (=> d!2219509 (= lt!2559238 e!4271445)))

(declare-fun c!1326244 () Bool)

(assert (=> d!2219509 (= c!1326244 (is-Nil!68755 (exprs!7412 auxCtx!45)))))

(assert (=> d!2219509 (= (size!41381 (exprs!7412 auxCtx!45)) lt!2559238)))

(declare-fun b!7107141 () Bool)

(assert (=> b!7107141 (= e!4271445 0)))

(declare-fun b!7107142 () Bool)

(assert (=> b!7107142 (= e!4271445 (+ 1 (size!41381 (t!382696 (exprs!7412 auxCtx!45)))))))

(assert (= (and d!2219509 c!1326244) b!7107141))

(assert (= (and d!2219509 (not c!1326244)) b!7107142))

(declare-fun m!7829836 () Bool)

(assert (=> b!7107142 m!7829836))

(assert (=> b!7106990 d!2219509))

(declare-fun d!2219511 () Bool)

(declare-fun res!2900969 () Bool)

(declare-fun e!4271446 () Bool)

(assert (=> d!2219511 (=> res!2900969 e!4271446)))

(assert (=> d!2219511 (= res!2900969 (is-Nil!68755 (exprs!7412 c!9994)))))

(assert (=> d!2219511 (= (forall!16821 (exprs!7412 c!9994) lambda!431698) e!4271446)))

(declare-fun b!7107143 () Bool)

(declare-fun e!4271447 () Bool)

(assert (=> b!7107143 (= e!4271446 e!4271447)))

(declare-fun res!2900970 () Bool)

(assert (=> b!7107143 (=> (not res!2900970) (not e!4271447))))

(assert (=> b!7107143 (= res!2900970 (dynLambda!28052 lambda!431698 (h!75203 (exprs!7412 c!9994))))))

(declare-fun b!7107144 () Bool)

(assert (=> b!7107144 (= e!4271447 (forall!16821 (t!382696 (exprs!7412 c!9994)) lambda!431698))))

(assert (= (and d!2219511 (not res!2900969)) b!7107143))

(assert (= (and b!7107143 res!2900970) b!7107144))

(declare-fun b_lambda!271341 () Bool)

(assert (=> (not b_lambda!271341) (not b!7107143)))

(declare-fun m!7829838 () Bool)

(assert (=> b!7107143 m!7829838))

(declare-fun m!7829840 () Bool)

(assert (=> b!7107144 m!7829840))

(assert (=> d!2219485 d!2219511))

(declare-fun call!647932 () Bool)

(declare-fun c!1326245 () Bool)

(declare-fun c!1326246 () Bool)

(declare-fun bm!647927 () Bool)

(assert (=> bm!647927 (= call!647932 (validRegex!9191 (ite c!1326245 (reg!18247 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))) (ite c!1326246 (regOne!36349 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))) (regTwo!36348 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554))))))))))

(declare-fun bm!647928 () Bool)

(declare-fun call!647933 () Bool)

(assert (=> bm!647928 (= call!647933 call!647932)))

(declare-fun d!2219513 () Bool)

(declare-fun res!2900971 () Bool)

(declare-fun e!4271448 () Bool)

(assert (=> d!2219513 (=> res!2900971 e!4271448)))

(assert (=> d!2219513 (= res!2900971 (is-ElementMatch!17918 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))

(assert (=> d!2219513 (= (validRegex!9191 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))) e!4271448)))

(declare-fun b!7107145 () Bool)

(declare-fun e!4271453 () Bool)

(assert (=> b!7107145 (= e!4271448 e!4271453)))

(assert (=> b!7107145 (= c!1326245 (is-Star!17918 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))

(declare-fun b!7107146 () Bool)

(declare-fun e!4271454 () Bool)

(assert (=> b!7107146 (= e!4271454 call!647933)))

(declare-fun b!7107147 () Bool)

(declare-fun e!4271450 () Bool)

(assert (=> b!7107147 (= e!4271450 call!647932)))

(declare-fun b!7107148 () Bool)

(declare-fun e!4271452 () Bool)

(assert (=> b!7107148 (= e!4271452 e!4271454)))

(declare-fun res!2900973 () Bool)

(assert (=> b!7107148 (=> (not res!2900973) (not e!4271454))))

(declare-fun call!647934 () Bool)

(assert (=> b!7107148 (= res!2900973 call!647934)))

(declare-fun bm!647929 () Bool)

(assert (=> bm!647929 (= call!647934 (validRegex!9191 (ite c!1326246 (regTwo!36349 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))) (regOne!36348 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))))

(declare-fun b!7107149 () Bool)

(declare-fun res!2900974 () Bool)

(assert (=> b!7107149 (=> res!2900974 e!4271452)))

(assert (=> b!7107149 (= res!2900974 (not (is-Concat!26763 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554))))))))

(declare-fun e!4271451 () Bool)

(assert (=> b!7107149 (= e!4271451 e!4271452)))

(declare-fun b!7107150 () Bool)

(declare-fun res!2900972 () Bool)

(declare-fun e!4271449 () Bool)

(assert (=> b!7107150 (=> (not res!2900972) (not e!4271449))))

(assert (=> b!7107150 (= res!2900972 call!647933)))

(assert (=> b!7107150 (= e!4271451 e!4271449)))

(declare-fun b!7107151 () Bool)

(assert (=> b!7107151 (= e!4271449 call!647934)))

(declare-fun b!7107152 () Bool)

(assert (=> b!7107152 (= e!4271453 e!4271451)))

(assert (=> b!7107152 (= c!1326246 (is-Union!17918 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))

(declare-fun b!7107153 () Bool)

(assert (=> b!7107153 (= e!4271453 e!4271450)))

(declare-fun res!2900975 () Bool)

(assert (=> b!7107153 (= res!2900975 (not (nullable!7555 (reg!18247 (ite c!1326222 (regTwo!36349 (regTwo!36348 r!11554)) (regOne!36348 (regTwo!36348 r!11554)))))))))

(assert (=> b!7107153 (=> (not res!2900975) (not e!4271450))))

(assert (= (and d!2219513 (not res!2900971)) b!7107145))

(assert (= (and b!7107145 c!1326245) b!7107153))

(assert (= (and b!7107145 (not c!1326245)) b!7107152))

(assert (= (and b!7107153 res!2900975) b!7107147))

(assert (= (and b!7107152 c!1326246) b!7107150))

(assert (= (and b!7107152 (not c!1326246)) b!7107149))

(assert (= (and b!7107150 res!2900972) b!7107151))

(assert (= (and b!7107149 (not res!2900974)) b!7107148))

(assert (= (and b!7107148 res!2900973) b!7107146))

(assert (= (or b!7107150 b!7107146) bm!647928))

(assert (= (or b!7107151 b!7107148) bm!647929))

(assert (= (or b!7107147 bm!647928) bm!647927))

(declare-fun m!7829842 () Bool)

(assert (=> bm!647927 m!7829842))

(declare-fun m!7829844 () Bool)

(assert (=> bm!647929 m!7829844))

(declare-fun m!7829846 () Bool)

(assert (=> b!7107153 m!7829846))

(assert (=> bm!647911 d!2219513))

(declare-fun d!2219515 () Bool)

(declare-fun res!2900976 () Bool)

(declare-fun e!4271455 () Bool)

(assert (=> d!2219515 (=> res!2900976 e!4271455)))

(assert (=> d!2219515 (= res!2900976 (is-Nil!68755 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554))))))))

(assert (=> d!2219515 (= (forall!16821 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))) lambda!431694) e!4271455)))

(declare-fun b!7107154 () Bool)

(declare-fun e!4271456 () Bool)

(assert (=> b!7107154 (= e!4271455 e!4271456)))

(declare-fun res!2900977 () Bool)

(assert (=> b!7107154 (=> (not res!2900977) (not e!4271456))))

(assert (=> b!7107154 (= res!2900977 (dynLambda!28052 lambda!431694 (h!75203 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))))))))

(declare-fun b!7107155 () Bool)

(assert (=> b!7107155 (= e!4271456 (forall!16821 (t!382696 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554))))) lambda!431694))))

(assert (= (and d!2219515 (not res!2900976)) b!7107154))

(assert (= (and b!7107154 res!2900977) b!7107155))

(declare-fun b_lambda!271343 () Bool)

(assert (=> (not b_lambda!271343) (not b!7107154)))

(declare-fun m!7829848 () Bool)

(assert (=> b!7107154 m!7829848))

(declare-fun m!7829850 () Bool)

(assert (=> b!7107155 m!7829850))

(assert (=> d!2219461 d!2219515))

(declare-fun d!2219517 () Bool)

(declare-fun res!2900978 () Bool)

(declare-fun e!4271457 () Bool)

(assert (=> d!2219517 (=> res!2900978 e!4271457)))

(assert (=> d!2219517 (= res!2900978 (is-Nil!68755 (exprs!7412 auxCtx!45)))))

(assert (=> d!2219517 (= (forall!16821 (exprs!7412 auxCtx!45) lambda!431699) e!4271457)))

(declare-fun b!7107156 () Bool)

(declare-fun e!4271458 () Bool)

(assert (=> b!7107156 (= e!4271457 e!4271458)))

(declare-fun res!2900979 () Bool)

(assert (=> b!7107156 (=> (not res!2900979) (not e!4271458))))

(assert (=> b!7107156 (= res!2900979 (dynLambda!28052 lambda!431699 (h!75203 (exprs!7412 auxCtx!45))))))

(declare-fun b!7107157 () Bool)

(assert (=> b!7107157 (= e!4271458 (forall!16821 (t!382696 (exprs!7412 auxCtx!45)) lambda!431699))))

(assert (= (and d!2219517 (not res!2900978)) b!7107156))

(assert (= (and b!7107156 res!2900979) b!7107157))

(declare-fun b_lambda!271345 () Bool)

(assert (=> (not b_lambda!271345) (not b!7107156)))

(declare-fun m!7829852 () Bool)

(assert (=> b!7107156 m!7829852))

(declare-fun m!7829854 () Bool)

(assert (=> b!7107157 m!7829854))

(assert (=> d!2219487 d!2219517))

(declare-fun call!647935 () Bool)

(declare-fun bm!647930 () Bool)

(declare-fun c!1326247 () Bool)

(declare-fun c!1326248 () Bool)

(assert (=> bm!647930 (= call!647935 (validRegex!9191 (ite c!1326247 (reg!18247 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))) (ite c!1326248 (regOne!36349 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))) (regTwo!36348 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554)))))))))

(declare-fun bm!647931 () Bool)

(declare-fun call!647936 () Bool)

(assert (=> bm!647931 (= call!647936 call!647935)))

(declare-fun d!2219519 () Bool)

(declare-fun res!2900980 () Bool)

(declare-fun e!4271459 () Bool)

(assert (=> d!2219519 (=> res!2900980 e!4271459)))

(assert (=> d!2219519 (= res!2900980 (is-ElementMatch!17918 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))

(assert (=> d!2219519 (= (validRegex!9191 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))) e!4271459)))

(declare-fun b!7107158 () Bool)

(declare-fun e!4271464 () Bool)

(assert (=> b!7107158 (= e!4271459 e!4271464)))

(assert (=> b!7107158 (= c!1326247 (is-Star!17918 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))

(declare-fun b!7107159 () Bool)

(declare-fun e!4271465 () Bool)

(assert (=> b!7107159 (= e!4271465 call!647936)))

(declare-fun b!7107160 () Bool)

(declare-fun e!4271461 () Bool)

(assert (=> b!7107160 (= e!4271461 call!647935)))

(declare-fun b!7107161 () Bool)

(declare-fun e!4271463 () Bool)

(assert (=> b!7107161 (= e!4271463 e!4271465)))

(declare-fun res!2900982 () Bool)

(assert (=> b!7107161 (=> (not res!2900982) (not e!4271465))))

(declare-fun call!647937 () Bool)

(assert (=> b!7107161 (= res!2900982 call!647937)))

(declare-fun bm!647932 () Bool)

(assert (=> bm!647932 (= call!647937 (validRegex!9191 (ite c!1326248 (regTwo!36349 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))) (regOne!36348 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))))

(declare-fun b!7107162 () Bool)

(declare-fun res!2900983 () Bool)

(assert (=> b!7107162 (=> res!2900983 e!4271463)))

(assert (=> b!7107162 (= res!2900983 (not (is-Concat!26763 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554)))))))

(declare-fun e!4271462 () Bool)

(assert (=> b!7107162 (= e!4271462 e!4271463)))

(declare-fun b!7107163 () Bool)

(declare-fun res!2900981 () Bool)

(declare-fun e!4271460 () Bool)

(assert (=> b!7107163 (=> (not res!2900981) (not e!4271460))))

(assert (=> b!7107163 (= res!2900981 call!647936)))

(assert (=> b!7107163 (= e!4271462 e!4271460)))

(declare-fun b!7107164 () Bool)

(assert (=> b!7107164 (= e!4271460 call!647937)))

(declare-fun b!7107165 () Bool)

(assert (=> b!7107165 (= e!4271464 e!4271462)))

(assert (=> b!7107165 (= c!1326248 (is-Union!17918 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))

(declare-fun b!7107166 () Bool)

(assert (=> b!7107166 (= e!4271464 e!4271461)))

(declare-fun res!2900984 () Bool)

(assert (=> b!7107166 (= res!2900984 (not (nullable!7555 (reg!18247 (ite c!1326227 (regTwo!36349 r!11554) (regOne!36348 r!11554))))))))

(assert (=> b!7107166 (=> (not res!2900984) (not e!4271461))))

(assert (= (and d!2219519 (not res!2900980)) b!7107158))

(assert (= (and b!7107158 c!1326247) b!7107166))

(assert (= (and b!7107158 (not c!1326247)) b!7107165))

(assert (= (and b!7107166 res!2900984) b!7107160))

(assert (= (and b!7107165 c!1326248) b!7107163))

(assert (= (and b!7107165 (not c!1326248)) b!7107162))

(assert (= (and b!7107163 res!2900981) b!7107164))

(assert (= (and b!7107162 (not res!2900983)) b!7107161))

(assert (= (and b!7107161 res!2900982) b!7107159))

(assert (= (or b!7107163 b!7107159) bm!647931))

(assert (= (or b!7107164 b!7107161) bm!647932))

(assert (= (or b!7107160 bm!647931) bm!647930))

(declare-fun m!7829856 () Bool)

(assert (=> bm!647930 m!7829856))

(declare-fun m!7829858 () Bool)

(assert (=> bm!647932 m!7829858))

(declare-fun m!7829860 () Bool)

(assert (=> b!7107166 m!7829860))

(assert (=> bm!647914 d!2219519))

(declare-fun d!2219521 () Bool)

(assert (=> d!2219521 (= (nullable!7555 (reg!18247 (regTwo!36348 r!11554))) (nullableFct!2912 (reg!18247 (regTwo!36348 r!11554))))))

(declare-fun bs!1884864 () Bool)

(assert (= bs!1884864 d!2219521))

(declare-fun m!7829862 () Bool)

(assert (=> bs!1884864 m!7829862))

(assert (=> b!7106979 d!2219521))

(declare-fun c!1326249 () Bool)

(declare-fun c!1326250 () Bool)

(declare-fun call!647938 () Bool)

(declare-fun bm!647933 () Bool)

(assert (=> bm!647933 (= call!647938 (validRegex!9191 (ite c!1326249 (reg!18247 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))) (ite c!1326250 (regOne!36349 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))) (regTwo!36348 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554)))))))))))

(declare-fun bm!647934 () Bool)

(declare-fun call!647939 () Bool)

(assert (=> bm!647934 (= call!647939 call!647938)))

(declare-fun d!2219523 () Bool)

(declare-fun res!2900985 () Bool)

(declare-fun e!4271466 () Bool)

(assert (=> d!2219523 (=> res!2900985 e!4271466)))

(assert (=> d!2219523 (= res!2900985 (is-ElementMatch!17918 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))

(assert (=> d!2219523 (= (validRegex!9191 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))) e!4271466)))

(declare-fun b!7107167 () Bool)

(declare-fun e!4271471 () Bool)

(assert (=> b!7107167 (= e!4271466 e!4271471)))

(assert (=> b!7107167 (= c!1326249 (is-Star!17918 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))

(declare-fun b!7107168 () Bool)

(declare-fun e!4271472 () Bool)

(assert (=> b!7107168 (= e!4271472 call!647939)))

(declare-fun b!7107169 () Bool)

(declare-fun e!4271468 () Bool)

(assert (=> b!7107169 (= e!4271468 call!647938)))

(declare-fun b!7107170 () Bool)

(declare-fun e!4271470 () Bool)

(assert (=> b!7107170 (= e!4271470 e!4271472)))

(declare-fun res!2900987 () Bool)

(assert (=> b!7107170 (=> (not res!2900987) (not e!4271472))))

(declare-fun call!647940 () Bool)

(assert (=> b!7107170 (= res!2900987 call!647940)))

(declare-fun bm!647935 () Bool)

(assert (=> bm!647935 (= call!647940 (validRegex!9191 (ite c!1326250 (regTwo!36349 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))) (regOne!36348 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))))

(declare-fun b!7107171 () Bool)

(declare-fun res!2900988 () Bool)

(assert (=> b!7107171 (=> res!2900988 e!4271470)))

(assert (=> b!7107171 (= res!2900988 (not (is-Concat!26763 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554)))))))))

(declare-fun e!4271469 () Bool)

(assert (=> b!7107171 (= e!4271469 e!4271470)))

(declare-fun b!7107172 () Bool)

(declare-fun res!2900986 () Bool)

(declare-fun e!4271467 () Bool)

(assert (=> b!7107172 (=> (not res!2900986) (not e!4271467))))

(assert (=> b!7107172 (= res!2900986 call!647939)))

(assert (=> b!7107172 (= e!4271469 e!4271467)))

(declare-fun b!7107173 () Bool)

(assert (=> b!7107173 (= e!4271467 call!647940)))

(declare-fun b!7107174 () Bool)

(assert (=> b!7107174 (= e!4271471 e!4271469)))

(assert (=> b!7107174 (= c!1326250 (is-Union!17918 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))

(declare-fun b!7107175 () Bool)

(assert (=> b!7107175 (= e!4271471 e!4271468)))

(declare-fun res!2900989 () Bool)

(assert (=> b!7107175 (= res!2900989 (not (nullable!7555 (reg!18247 (ite c!1326221 (reg!18247 (regTwo!36348 r!11554)) (ite c!1326222 (regOne!36349 (regTwo!36348 r!11554)) (regTwo!36348 (regTwo!36348 r!11554))))))))))

(assert (=> b!7107175 (=> (not res!2900989) (not e!4271468))))

(assert (= (and d!2219523 (not res!2900985)) b!7107167))

(assert (= (and b!7107167 c!1326249) b!7107175))

(assert (= (and b!7107167 (not c!1326249)) b!7107174))

(assert (= (and b!7107175 res!2900989) b!7107169))

(assert (= (and b!7107174 c!1326250) b!7107172))

(assert (= (and b!7107174 (not c!1326250)) b!7107171))

(assert (= (and b!7107172 res!2900986) b!7107173))

(assert (= (and b!7107171 (not res!2900988)) b!7107170))

(assert (= (and b!7107170 res!2900987) b!7107168))

(assert (= (or b!7107172 b!7107168) bm!647934))

(assert (= (or b!7107173 b!7107170) bm!647935))

(assert (= (or b!7107169 bm!647934) bm!647933))

(declare-fun m!7829864 () Bool)

(assert (=> bm!647933 m!7829864))

(declare-fun m!7829866 () Bool)

(assert (=> bm!647935 m!7829866))

(declare-fun m!7829868 () Bool)

(assert (=> b!7107175 m!7829868))

(assert (=> bm!647909 d!2219523))

(declare-fun b!7107190 () Bool)

(declare-fun e!4271487 () Bool)

(declare-fun e!4271489 () Bool)

(assert (=> b!7107190 (= e!4271487 e!4271489)))

(declare-fun res!2901002 () Bool)

(assert (=> b!7107190 (=> res!2901002 e!4271489)))

(assert (=> b!7107190 (= res!2901002 (is-Star!17918 (regOne!36348 r!11554)))))

(declare-fun b!7107191 () Bool)

(declare-fun e!4271486 () Bool)

(declare-fun call!647946 () Bool)

(assert (=> b!7107191 (= e!4271486 call!647946)))

(declare-fun bm!647940 () Bool)

(declare-fun c!1326253 () Bool)

(assert (=> bm!647940 (= call!647946 (nullable!7555 (ite c!1326253 (regTwo!36349 (regOne!36348 r!11554)) (regOne!36348 (regOne!36348 r!11554)))))))

(declare-fun b!7107192 () Bool)

(declare-fun e!4271485 () Bool)

(assert (=> b!7107192 (= e!4271489 e!4271485)))

(assert (=> b!7107192 (= c!1326253 (is-Union!17918 (regOne!36348 r!11554)))))

(declare-fun b!7107193 () Bool)

(assert (=> b!7107193 (= e!4271485 e!4271486)))

(declare-fun res!2901000 () Bool)

(declare-fun call!647945 () Bool)

(assert (=> b!7107193 (= res!2901000 call!647945)))

(assert (=> b!7107193 (=> res!2901000 e!4271486)))

(declare-fun b!7107194 () Bool)

(declare-fun e!4271490 () Bool)

(assert (=> b!7107194 (= e!4271485 e!4271490)))

(declare-fun res!2901003 () Bool)

(assert (=> b!7107194 (= res!2901003 call!647946)))

(assert (=> b!7107194 (=> (not res!2901003) (not e!4271490))))

(declare-fun b!7107195 () Bool)

(assert (=> b!7107195 (= e!4271490 call!647945)))

(declare-fun b!7107196 () Bool)

(declare-fun e!4271488 () Bool)

(assert (=> b!7107196 (= e!4271488 e!4271487)))

(declare-fun res!2901001 () Bool)

(assert (=> b!7107196 (=> (not res!2901001) (not e!4271487))))

(assert (=> b!7107196 (= res!2901001 (and (not (is-EmptyLang!17918 (regOne!36348 r!11554))) (not (is-ElementMatch!17918 (regOne!36348 r!11554)))))))

(declare-fun bm!647941 () Bool)

(assert (=> bm!647941 (= call!647945 (nullable!7555 (ite c!1326253 (regOne!36349 (regOne!36348 r!11554)) (regTwo!36348 (regOne!36348 r!11554)))))))

(declare-fun d!2219525 () Bool)

(declare-fun res!2901004 () Bool)

(assert (=> d!2219525 (=> res!2901004 e!4271488)))

(assert (=> d!2219525 (= res!2901004 (is-EmptyExpr!17918 (regOne!36348 r!11554)))))

(assert (=> d!2219525 (= (nullableFct!2912 (regOne!36348 r!11554)) e!4271488)))

(assert (= (and d!2219525 (not res!2901004)) b!7107196))

(assert (= (and b!7107196 res!2901001) b!7107190))

(assert (= (and b!7107190 (not res!2901002)) b!7107192))

(assert (= (and b!7107192 c!1326253) b!7107193))

(assert (= (and b!7107192 (not c!1326253)) b!7107194))

(assert (= (and b!7107193 (not res!2901000)) b!7107191))

(assert (= (and b!7107194 res!2901003) b!7107195))

(assert (= (or b!7107193 b!7107195) bm!647941))

(assert (= (or b!7107191 b!7107194) bm!647940))

(declare-fun m!7829870 () Bool)

(assert (=> bm!647940 m!7829870))

(declare-fun m!7829872 () Bool)

(assert (=> bm!647941 m!7829872))

(assert (=> d!2219467 d!2219525))

(declare-fun d!2219527 () Bool)

(declare-fun c!1326256 () Bool)

(assert (=> d!2219527 (= c!1326256 (is-Nil!68755 lt!2559229))))

(declare-fun e!4271493 () (Set Regex!17918))

(assert (=> d!2219527 (= (content!14006 lt!2559229) e!4271493)))

(declare-fun b!7107201 () Bool)

(assert (=> b!7107201 (= e!4271493 (as set.empty (Set Regex!17918)))))

(declare-fun b!7107202 () Bool)

(assert (=> b!7107202 (= e!4271493 (set.union (set.insert (h!75203 lt!2559229) (as set.empty (Set Regex!17918))) (content!14006 (t!382696 lt!2559229))))))

(assert (= (and d!2219527 c!1326256) b!7107201))

(assert (= (and d!2219527 (not c!1326256)) b!7107202))

(declare-fun m!7829874 () Bool)

(assert (=> b!7107202 m!7829874))

(declare-fun m!7829876 () Bool)

(assert (=> b!7107202 m!7829876))

(assert (=> d!2219479 d!2219527))

(declare-fun d!2219529 () Bool)

(declare-fun c!1326257 () Bool)

(assert (=> d!2219529 (= c!1326257 (is-Nil!68755 (exprs!7412 c!9994)))))

(declare-fun e!4271494 () (Set Regex!17918))

(assert (=> d!2219529 (= (content!14006 (exprs!7412 c!9994)) e!4271494)))

(declare-fun b!7107203 () Bool)

(assert (=> b!7107203 (= e!4271494 (as set.empty (Set Regex!17918)))))

(declare-fun b!7107204 () Bool)

(assert (=> b!7107204 (= e!4271494 (set.union (set.insert (h!75203 (exprs!7412 c!9994)) (as set.empty (Set Regex!17918))) (content!14006 (t!382696 (exprs!7412 c!9994)))))))

(assert (= (and d!2219529 c!1326257) b!7107203))

(assert (= (and d!2219529 (not c!1326257)) b!7107204))

(declare-fun m!7829878 () Bool)

(assert (=> b!7107204 m!7829878))

(assert (=> b!7107204 m!7829826))

(assert (=> d!2219479 d!2219529))

(declare-fun d!2219531 () Bool)

(declare-fun c!1326258 () Bool)

(assert (=> d!2219531 (= c!1326258 (is-Nil!68755 (exprs!7412 auxCtx!45)))))

(declare-fun e!4271495 () (Set Regex!17918))

(assert (=> d!2219531 (= (content!14006 (exprs!7412 auxCtx!45)) e!4271495)))

(declare-fun b!7107205 () Bool)

(assert (=> b!7107205 (= e!4271495 (as set.empty (Set Regex!17918)))))

(declare-fun b!7107206 () Bool)

(assert (=> b!7107206 (= e!4271495 (set.union (set.insert (h!75203 (exprs!7412 auxCtx!45)) (as set.empty (Set Regex!17918))) (content!14006 (t!382696 (exprs!7412 auxCtx!45)))))))

(assert (= (and d!2219531 c!1326258) b!7107205))

(assert (= (and d!2219531 (not c!1326258)) b!7107206))

(declare-fun m!7829880 () Bool)

(assert (=> b!7107206 m!7829880))

(declare-fun m!7829882 () Bool)

(assert (=> b!7107206 m!7829882))

(assert (=> d!2219479 d!2219531))

(declare-fun d!2219533 () Bool)

(assert (=> d!2219533 (= (nullable!7555 (reg!18247 r!11554)) (nullableFct!2912 (reg!18247 r!11554)))))

(declare-fun bs!1884865 () Bool)

(assert (= bs!1884865 d!2219533))

(declare-fun m!7829884 () Bool)

(assert (=> bs!1884865 m!7829884))

(assert (=> b!7107000 d!2219533))

(declare-fun bm!647942 () Bool)

(declare-fun c!1326259 () Bool)

(declare-fun call!647947 () Bool)

(declare-fun c!1326260 () Bool)

(assert (=> bm!647942 (= call!647947 (validRegex!9191 (ite c!1326259 (reg!18247 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))) (ite c!1326260 (regOne!36349 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))) (regTwo!36348 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554))))))))))

(declare-fun bm!647943 () Bool)

(declare-fun call!647948 () Bool)

(assert (=> bm!647943 (= call!647948 call!647947)))

(declare-fun d!2219535 () Bool)

(declare-fun res!2901005 () Bool)

(declare-fun e!4271496 () Bool)

(assert (=> d!2219535 (=> res!2901005 e!4271496)))

(assert (=> d!2219535 (= res!2901005 (is-ElementMatch!17918 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))

(assert (=> d!2219535 (= (validRegex!9191 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))) e!4271496)))

(declare-fun b!7107207 () Bool)

(declare-fun e!4271501 () Bool)

(assert (=> b!7107207 (= e!4271496 e!4271501)))

(assert (=> b!7107207 (= c!1326259 (is-Star!17918 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))

(declare-fun b!7107208 () Bool)

(declare-fun e!4271502 () Bool)

(assert (=> b!7107208 (= e!4271502 call!647948)))

(declare-fun b!7107209 () Bool)

(declare-fun e!4271498 () Bool)

(assert (=> b!7107209 (= e!4271498 call!647947)))

(declare-fun b!7107210 () Bool)

(declare-fun e!4271500 () Bool)

(assert (=> b!7107210 (= e!4271500 e!4271502)))

(declare-fun res!2901007 () Bool)

(assert (=> b!7107210 (=> (not res!2901007) (not e!4271502))))

(declare-fun call!647949 () Bool)

(assert (=> b!7107210 (= res!2901007 call!647949)))

(declare-fun bm!647944 () Bool)

(assert (=> bm!647944 (= call!647949 (validRegex!9191 (ite c!1326260 (regTwo!36349 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))) (regOne!36348 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))))

(declare-fun b!7107211 () Bool)

(declare-fun res!2901008 () Bool)

(assert (=> b!7107211 (=> res!2901008 e!4271500)))

(assert (=> b!7107211 (= res!2901008 (not (is-Concat!26763 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554))))))))

(declare-fun e!4271499 () Bool)

(assert (=> b!7107211 (= e!4271499 e!4271500)))

(declare-fun b!7107212 () Bool)

(declare-fun res!2901006 () Bool)

(declare-fun e!4271497 () Bool)

(assert (=> b!7107212 (=> (not res!2901006) (not e!4271497))))

(assert (=> b!7107212 (= res!2901006 call!647948)))

(assert (=> b!7107212 (= e!4271499 e!4271497)))

(declare-fun b!7107213 () Bool)

(assert (=> b!7107213 (= e!4271497 call!647949)))

(declare-fun b!7107214 () Bool)

(assert (=> b!7107214 (= e!4271501 e!4271499)))

(assert (=> b!7107214 (= c!1326260 (is-Union!17918 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))

(declare-fun b!7107215 () Bool)

(assert (=> b!7107215 (= e!4271501 e!4271498)))

(declare-fun res!2901009 () Bool)

(assert (=> b!7107215 (= res!2901009 (not (nullable!7555 (reg!18247 (ite c!1326226 (reg!18247 r!11554) (ite c!1326227 (regOne!36349 r!11554) (regTwo!36348 r!11554)))))))))

(assert (=> b!7107215 (=> (not res!2901009) (not e!4271498))))

(assert (= (and d!2219535 (not res!2901005)) b!7107207))

(assert (= (and b!7107207 c!1326259) b!7107215))

(assert (= (and b!7107207 (not c!1326259)) b!7107214))

(assert (= (and b!7107215 res!2901009) b!7107209))

(assert (= (and b!7107214 c!1326260) b!7107212))

(assert (= (and b!7107214 (not c!1326260)) b!7107211))

(assert (= (and b!7107212 res!2901006) b!7107213))

(assert (= (and b!7107211 (not res!2901008)) b!7107210))

(assert (= (and b!7107210 res!2901007) b!7107208))

(assert (= (or b!7107212 b!7107208) bm!647943))

(assert (= (or b!7107213 b!7107210) bm!647944))

(assert (= (or b!7107209 bm!647943) bm!647942))

(declare-fun m!7829886 () Bool)

(assert (=> bm!647942 m!7829886))

(declare-fun m!7829888 () Bool)

(assert (=> bm!647944 m!7829888))

(declare-fun m!7829890 () Bool)

(assert (=> b!7107215 m!7829890))

(assert (=> bm!647912 d!2219535))

(declare-fun b!7107217 () Bool)

(declare-fun e!4271503 () Bool)

(declare-fun tp!1954710 () Bool)

(declare-fun tp!1954709 () Bool)

(assert (=> b!7107217 (= e!4271503 (and tp!1954710 tp!1954709))))

(declare-fun b!7107216 () Bool)

(assert (=> b!7107216 (= e!4271503 tp_is_empty!45069)))

(assert (=> b!7107036 (= tp!1954660 e!4271503)))

(declare-fun b!7107219 () Bool)

(declare-fun tp!1954708 () Bool)

(declare-fun tp!1954707 () Bool)

(assert (=> b!7107219 (= e!4271503 (and tp!1954708 tp!1954707))))

(declare-fun b!7107218 () Bool)

(declare-fun tp!1954711 () Bool)

(assert (=> b!7107218 (= e!4271503 tp!1954711)))

(assert (= (and b!7107036 (is-ElementMatch!17918 (regOne!36349 (regTwo!36349 r!11554)))) b!7107216))

(assert (= (and b!7107036 (is-Concat!26763 (regOne!36349 (regTwo!36349 r!11554)))) b!7107217))

(assert (= (and b!7107036 (is-Star!17918 (regOne!36349 (regTwo!36349 r!11554)))) b!7107218))

(assert (= (and b!7107036 (is-Union!17918 (regOne!36349 (regTwo!36349 r!11554)))) b!7107219))

(declare-fun b!7107221 () Bool)

(declare-fun e!4271504 () Bool)

(declare-fun tp!1954715 () Bool)

(declare-fun tp!1954714 () Bool)

(assert (=> b!7107221 (= e!4271504 (and tp!1954715 tp!1954714))))

(declare-fun b!7107220 () Bool)

(assert (=> b!7107220 (= e!4271504 tp_is_empty!45069)))

(assert (=> b!7107036 (= tp!1954659 e!4271504)))

(declare-fun b!7107223 () Bool)

(declare-fun tp!1954713 () Bool)

(declare-fun tp!1954712 () Bool)

(assert (=> b!7107223 (= e!4271504 (and tp!1954713 tp!1954712))))

(declare-fun b!7107222 () Bool)

(declare-fun tp!1954716 () Bool)

(assert (=> b!7107222 (= e!4271504 tp!1954716)))

(assert (= (and b!7107036 (is-ElementMatch!17918 (regTwo!36349 (regTwo!36349 r!11554)))) b!7107220))

(assert (= (and b!7107036 (is-Concat!26763 (regTwo!36349 (regTwo!36349 r!11554)))) b!7107221))

(assert (= (and b!7107036 (is-Star!17918 (regTwo!36349 (regTwo!36349 r!11554)))) b!7107222))

(assert (= (and b!7107036 (is-Union!17918 (regTwo!36349 (regTwo!36349 r!11554)))) b!7107223))

(declare-fun b!7107225 () Bool)

(declare-fun e!4271505 () Bool)

(declare-fun tp!1954720 () Bool)

(declare-fun tp!1954719 () Bool)

(assert (=> b!7107225 (= e!4271505 (and tp!1954720 tp!1954719))))

(declare-fun b!7107224 () Bool)

(assert (=> b!7107224 (= e!4271505 tp_is_empty!45069)))

(assert (=> b!7107032 (= tp!1954655 e!4271505)))

(declare-fun b!7107227 () Bool)

(declare-fun tp!1954718 () Bool)

(declare-fun tp!1954717 () Bool)

(assert (=> b!7107227 (= e!4271505 (and tp!1954718 tp!1954717))))

(declare-fun b!7107226 () Bool)

(declare-fun tp!1954721 () Bool)

(assert (=> b!7107226 (= e!4271505 tp!1954721)))

(assert (= (and b!7107032 (is-ElementMatch!17918 (regOne!36349 (regOne!36349 r!11554)))) b!7107224))

(assert (= (and b!7107032 (is-Concat!26763 (regOne!36349 (regOne!36349 r!11554)))) b!7107225))

(assert (= (and b!7107032 (is-Star!17918 (regOne!36349 (regOne!36349 r!11554)))) b!7107226))

(assert (= (and b!7107032 (is-Union!17918 (regOne!36349 (regOne!36349 r!11554)))) b!7107227))

(declare-fun b!7107229 () Bool)

(declare-fun e!4271506 () Bool)

(declare-fun tp!1954725 () Bool)

(declare-fun tp!1954724 () Bool)

(assert (=> b!7107229 (= e!4271506 (and tp!1954725 tp!1954724))))

(declare-fun b!7107228 () Bool)

(assert (=> b!7107228 (= e!4271506 tp_is_empty!45069)))

(assert (=> b!7107032 (= tp!1954654 e!4271506)))

(declare-fun b!7107231 () Bool)

(declare-fun tp!1954723 () Bool)

(declare-fun tp!1954722 () Bool)

(assert (=> b!7107231 (= e!4271506 (and tp!1954723 tp!1954722))))

(declare-fun b!7107230 () Bool)

(declare-fun tp!1954726 () Bool)

(assert (=> b!7107230 (= e!4271506 tp!1954726)))

(assert (= (and b!7107032 (is-ElementMatch!17918 (regTwo!36349 (regOne!36349 r!11554)))) b!7107228))

(assert (= (and b!7107032 (is-Concat!26763 (regTwo!36349 (regOne!36349 r!11554)))) b!7107229))

(assert (= (and b!7107032 (is-Star!17918 (regTwo!36349 (regOne!36349 r!11554)))) b!7107230))

(assert (= (and b!7107032 (is-Union!17918 (regTwo!36349 (regOne!36349 r!11554)))) b!7107231))

(declare-fun b!7107233 () Bool)

(declare-fun e!4271507 () Bool)

(declare-fun tp!1954730 () Bool)

(declare-fun tp!1954729 () Bool)

(assert (=> b!7107233 (= e!4271507 (and tp!1954730 tp!1954729))))

(declare-fun b!7107232 () Bool)

(assert (=> b!7107232 (= e!4271507 tp_is_empty!45069)))

(assert (=> b!7107028 (= tp!1954652 e!4271507)))

(declare-fun b!7107235 () Bool)

(declare-fun tp!1954728 () Bool)

(declare-fun tp!1954727 () Bool)

(assert (=> b!7107235 (= e!4271507 (and tp!1954728 tp!1954727))))

(declare-fun b!7107234 () Bool)

(declare-fun tp!1954731 () Bool)

(assert (=> b!7107234 (= e!4271507 tp!1954731)))

(assert (= (and b!7107028 (is-ElementMatch!17918 (h!75203 (exprs!7412 c!9994)))) b!7107232))

(assert (= (and b!7107028 (is-Concat!26763 (h!75203 (exprs!7412 c!9994)))) b!7107233))

(assert (= (and b!7107028 (is-Star!17918 (h!75203 (exprs!7412 c!9994)))) b!7107234))

(assert (= (and b!7107028 (is-Union!17918 (h!75203 (exprs!7412 c!9994)))) b!7107235))

(declare-fun b!7107236 () Bool)

(declare-fun e!4271508 () Bool)

(declare-fun tp!1954732 () Bool)

(declare-fun tp!1954733 () Bool)

(assert (=> b!7107236 (= e!4271508 (and tp!1954732 tp!1954733))))

(assert (=> b!7107028 (= tp!1954653 e!4271508)))

(assert (= (and b!7107028 (is-Cons!68755 (t!382696 (exprs!7412 c!9994)))) b!7107236))

(declare-fun b!7107238 () Bool)

(declare-fun e!4271509 () Bool)

(declare-fun tp!1954737 () Bool)

(declare-fun tp!1954736 () Bool)

(assert (=> b!7107238 (= e!4271509 (and tp!1954737 tp!1954736))))

(declare-fun b!7107237 () Bool)

(assert (=> b!7107237 (= e!4271509 tp_is_empty!45069)))

(assert (=> b!7107027 (= tp!1954648 e!4271509)))

(declare-fun b!7107240 () Bool)

(declare-fun tp!1954735 () Bool)

(declare-fun tp!1954734 () Bool)

(assert (=> b!7107240 (= e!4271509 (and tp!1954735 tp!1954734))))

(declare-fun b!7107239 () Bool)

(declare-fun tp!1954738 () Bool)

(assert (=> b!7107239 (= e!4271509 tp!1954738)))

(assert (= (and b!7107027 (is-ElementMatch!17918 (regOne!36349 (regTwo!36348 r!11554)))) b!7107237))

(assert (= (and b!7107027 (is-Concat!26763 (regOne!36349 (regTwo!36348 r!11554)))) b!7107238))

(assert (= (and b!7107027 (is-Star!17918 (regOne!36349 (regTwo!36348 r!11554)))) b!7107239))

(assert (= (and b!7107027 (is-Union!17918 (regOne!36349 (regTwo!36348 r!11554)))) b!7107240))

(declare-fun b!7107242 () Bool)

(declare-fun e!4271510 () Bool)

(declare-fun tp!1954742 () Bool)

(declare-fun tp!1954741 () Bool)

(assert (=> b!7107242 (= e!4271510 (and tp!1954742 tp!1954741))))

(declare-fun b!7107241 () Bool)

(assert (=> b!7107241 (= e!4271510 tp_is_empty!45069)))

(assert (=> b!7107027 (= tp!1954647 e!4271510)))

(declare-fun b!7107244 () Bool)

(declare-fun tp!1954740 () Bool)

(declare-fun tp!1954739 () Bool)

(assert (=> b!7107244 (= e!4271510 (and tp!1954740 tp!1954739))))

(declare-fun b!7107243 () Bool)

(declare-fun tp!1954743 () Bool)

(assert (=> b!7107243 (= e!4271510 tp!1954743)))

(assert (= (and b!7107027 (is-ElementMatch!17918 (regTwo!36349 (regTwo!36348 r!11554)))) b!7107241))

(assert (= (and b!7107027 (is-Concat!26763 (regTwo!36349 (regTwo!36348 r!11554)))) b!7107242))

(assert (= (and b!7107027 (is-Star!17918 (regTwo!36349 (regTwo!36348 r!11554)))) b!7107243))

(assert (= (and b!7107027 (is-Union!17918 (regTwo!36349 (regTwo!36348 r!11554)))) b!7107244))

(declare-fun b!7107246 () Bool)

(declare-fun e!4271511 () Bool)

(declare-fun tp!1954747 () Bool)

(declare-fun tp!1954746 () Bool)

(assert (=> b!7107246 (= e!4271511 (and tp!1954747 tp!1954746))))

(declare-fun b!7107245 () Bool)

(assert (=> b!7107245 (= e!4271511 tp_is_empty!45069)))

(assert (=> b!7107018 (= tp!1954641 e!4271511)))

(declare-fun b!7107248 () Bool)

(declare-fun tp!1954745 () Bool)

(declare-fun tp!1954744 () Bool)

(assert (=> b!7107248 (= e!4271511 (and tp!1954745 tp!1954744))))

(declare-fun b!7107247 () Bool)

(declare-fun tp!1954748 () Bool)

(assert (=> b!7107247 (= e!4271511 tp!1954748)))

(assert (= (and b!7107018 (is-ElementMatch!17918 (reg!18247 (reg!18247 r!11554)))) b!7107245))

(assert (= (and b!7107018 (is-Concat!26763 (reg!18247 (reg!18247 r!11554)))) b!7107246))

(assert (= (and b!7107018 (is-Star!17918 (reg!18247 (reg!18247 r!11554)))) b!7107247))

(assert (= (and b!7107018 (is-Union!17918 (reg!18247 (reg!18247 r!11554)))) b!7107248))

(declare-fun b!7107250 () Bool)

(declare-fun e!4271512 () Bool)

(declare-fun tp!1954752 () Bool)

(declare-fun tp!1954751 () Bool)

(assert (=> b!7107250 (= e!4271512 (and tp!1954752 tp!1954751))))

(declare-fun b!7107249 () Bool)

(assert (=> b!7107249 (= e!4271512 tp_is_empty!45069)))

(assert (=> b!7107023 (= tp!1954643 e!4271512)))

(declare-fun b!7107252 () Bool)

(declare-fun tp!1954750 () Bool)

(declare-fun tp!1954749 () Bool)

(assert (=> b!7107252 (= e!4271512 (and tp!1954750 tp!1954749))))

(declare-fun b!7107251 () Bool)

(declare-fun tp!1954753 () Bool)

(assert (=> b!7107251 (= e!4271512 tp!1954753)))

(assert (= (and b!7107023 (is-ElementMatch!17918 (regOne!36349 (regOne!36348 r!11554)))) b!7107249))

(assert (= (and b!7107023 (is-Concat!26763 (regOne!36349 (regOne!36348 r!11554)))) b!7107250))

(assert (= (and b!7107023 (is-Star!17918 (regOne!36349 (regOne!36348 r!11554)))) b!7107251))

(assert (= (and b!7107023 (is-Union!17918 (regOne!36349 (regOne!36348 r!11554)))) b!7107252))

(declare-fun b!7107254 () Bool)

(declare-fun e!4271513 () Bool)

(declare-fun tp!1954757 () Bool)

(declare-fun tp!1954756 () Bool)

(assert (=> b!7107254 (= e!4271513 (and tp!1954757 tp!1954756))))

(declare-fun b!7107253 () Bool)

(assert (=> b!7107253 (= e!4271513 tp_is_empty!45069)))

(assert (=> b!7107023 (= tp!1954642 e!4271513)))

(declare-fun b!7107256 () Bool)

(declare-fun tp!1954755 () Bool)

(declare-fun tp!1954754 () Bool)

(assert (=> b!7107256 (= e!4271513 (and tp!1954755 tp!1954754))))

(declare-fun b!7107255 () Bool)

(declare-fun tp!1954758 () Bool)

(assert (=> b!7107255 (= e!4271513 tp!1954758)))

(assert (= (and b!7107023 (is-ElementMatch!17918 (regTwo!36349 (regOne!36348 r!11554)))) b!7107253))

(assert (= (and b!7107023 (is-Concat!26763 (regTwo!36349 (regOne!36348 r!11554)))) b!7107254))

(assert (= (and b!7107023 (is-Star!17918 (regTwo!36349 (regOne!36348 r!11554)))) b!7107255))

(assert (= (and b!7107023 (is-Union!17918 (regTwo!36349 (regOne!36348 r!11554)))) b!7107256))

(declare-fun b!7107258 () Bool)

(declare-fun e!4271514 () Bool)

(declare-fun tp!1954762 () Bool)

(declare-fun tp!1954761 () Bool)

(assert (=> b!7107258 (= e!4271514 (and tp!1954762 tp!1954761))))

(declare-fun b!7107257 () Bool)

(assert (=> b!7107257 (= e!4271514 tp_is_empty!45069)))

(assert (=> b!7107034 (= tp!1954662 e!4271514)))

(declare-fun b!7107260 () Bool)

(declare-fun tp!1954760 () Bool)

(declare-fun tp!1954759 () Bool)

(assert (=> b!7107260 (= e!4271514 (and tp!1954760 tp!1954759))))

(declare-fun b!7107259 () Bool)

(declare-fun tp!1954763 () Bool)

(assert (=> b!7107259 (= e!4271514 tp!1954763)))

(assert (= (and b!7107034 (is-ElementMatch!17918 (regOne!36348 (regTwo!36349 r!11554)))) b!7107257))

(assert (= (and b!7107034 (is-Concat!26763 (regOne!36348 (regTwo!36349 r!11554)))) b!7107258))

(assert (= (and b!7107034 (is-Star!17918 (regOne!36348 (regTwo!36349 r!11554)))) b!7107259))

(assert (= (and b!7107034 (is-Union!17918 (regOne!36348 (regTwo!36349 r!11554)))) b!7107260))

(declare-fun b!7107262 () Bool)

(declare-fun e!4271515 () Bool)

(declare-fun tp!1954767 () Bool)

(declare-fun tp!1954766 () Bool)

(assert (=> b!7107262 (= e!4271515 (and tp!1954767 tp!1954766))))

(declare-fun b!7107261 () Bool)

(assert (=> b!7107261 (= e!4271515 tp_is_empty!45069)))

(assert (=> b!7107034 (= tp!1954661 e!4271515)))

(declare-fun b!7107264 () Bool)

(declare-fun tp!1954765 () Bool)

(declare-fun tp!1954764 () Bool)

(assert (=> b!7107264 (= e!4271515 (and tp!1954765 tp!1954764))))

(declare-fun b!7107263 () Bool)

(declare-fun tp!1954768 () Bool)

(assert (=> b!7107263 (= e!4271515 tp!1954768)))

(assert (= (and b!7107034 (is-ElementMatch!17918 (regTwo!36348 (regTwo!36349 r!11554)))) b!7107261))

(assert (= (and b!7107034 (is-Concat!26763 (regTwo!36348 (regTwo!36349 r!11554)))) b!7107262))

(assert (= (and b!7107034 (is-Star!17918 (regTwo!36348 (regTwo!36349 r!11554)))) b!7107263))

(assert (= (and b!7107034 (is-Union!17918 (regTwo!36348 (regTwo!36349 r!11554)))) b!7107264))

(declare-fun b!7107266 () Bool)

(declare-fun e!4271516 () Bool)

(declare-fun tp!1954772 () Bool)

(declare-fun tp!1954771 () Bool)

(assert (=> b!7107266 (= e!4271516 (and tp!1954772 tp!1954771))))

(declare-fun b!7107265 () Bool)

(assert (=> b!7107265 (= e!4271516 tp_is_empty!45069)))

(assert (=> b!7107019 (= tp!1954638 e!4271516)))

(declare-fun b!7107268 () Bool)

(declare-fun tp!1954770 () Bool)

(declare-fun tp!1954769 () Bool)

(assert (=> b!7107268 (= e!4271516 (and tp!1954770 tp!1954769))))

(declare-fun b!7107267 () Bool)

(declare-fun tp!1954773 () Bool)

(assert (=> b!7107267 (= e!4271516 tp!1954773)))

(assert (= (and b!7107019 (is-ElementMatch!17918 (regOne!36349 (reg!18247 r!11554)))) b!7107265))

(assert (= (and b!7107019 (is-Concat!26763 (regOne!36349 (reg!18247 r!11554)))) b!7107266))

(assert (= (and b!7107019 (is-Star!17918 (regOne!36349 (reg!18247 r!11554)))) b!7107267))

(assert (= (and b!7107019 (is-Union!17918 (regOne!36349 (reg!18247 r!11554)))) b!7107268))

(declare-fun b!7107270 () Bool)

(declare-fun e!4271517 () Bool)

(declare-fun tp!1954777 () Bool)

(declare-fun tp!1954776 () Bool)

(assert (=> b!7107270 (= e!4271517 (and tp!1954777 tp!1954776))))

(declare-fun b!7107269 () Bool)

(assert (=> b!7107269 (= e!4271517 tp_is_empty!45069)))

(assert (=> b!7107019 (= tp!1954637 e!4271517)))

(declare-fun b!7107272 () Bool)

(declare-fun tp!1954775 () Bool)

(declare-fun tp!1954774 () Bool)

(assert (=> b!7107272 (= e!4271517 (and tp!1954775 tp!1954774))))

(declare-fun b!7107271 () Bool)

(declare-fun tp!1954778 () Bool)

(assert (=> b!7107271 (= e!4271517 tp!1954778)))

(assert (= (and b!7107019 (is-ElementMatch!17918 (regTwo!36349 (reg!18247 r!11554)))) b!7107269))

(assert (= (and b!7107019 (is-Concat!26763 (regTwo!36349 (reg!18247 r!11554)))) b!7107270))

(assert (= (and b!7107019 (is-Star!17918 (regTwo!36349 (reg!18247 r!11554)))) b!7107271))

(assert (= (and b!7107019 (is-Union!17918 (regTwo!36349 (reg!18247 r!11554)))) b!7107272))

(declare-fun b!7107274 () Bool)

(declare-fun e!4271518 () Bool)

(declare-fun tp!1954782 () Bool)

(declare-fun tp!1954781 () Bool)

(assert (=> b!7107274 (= e!4271518 (and tp!1954782 tp!1954781))))

(declare-fun b!7107273 () Bool)

(assert (=> b!7107273 (= e!4271518 tp_is_empty!45069)))

(assert (=> b!7107030 (= tp!1954657 e!4271518)))

(declare-fun b!7107276 () Bool)

(declare-fun tp!1954780 () Bool)

(declare-fun tp!1954779 () Bool)

(assert (=> b!7107276 (= e!4271518 (and tp!1954780 tp!1954779))))

(declare-fun b!7107275 () Bool)

(declare-fun tp!1954783 () Bool)

(assert (=> b!7107275 (= e!4271518 tp!1954783)))

(assert (= (and b!7107030 (is-ElementMatch!17918 (regOne!36348 (regOne!36349 r!11554)))) b!7107273))

(assert (= (and b!7107030 (is-Concat!26763 (regOne!36348 (regOne!36349 r!11554)))) b!7107274))

(assert (= (and b!7107030 (is-Star!17918 (regOne!36348 (regOne!36349 r!11554)))) b!7107275))

(assert (= (and b!7107030 (is-Union!17918 (regOne!36348 (regOne!36349 r!11554)))) b!7107276))

(declare-fun b!7107278 () Bool)

(declare-fun e!4271519 () Bool)

(declare-fun tp!1954787 () Bool)

(declare-fun tp!1954786 () Bool)

(assert (=> b!7107278 (= e!4271519 (and tp!1954787 tp!1954786))))

(declare-fun b!7107277 () Bool)

(assert (=> b!7107277 (= e!4271519 tp_is_empty!45069)))

(assert (=> b!7107030 (= tp!1954656 e!4271519)))

(declare-fun b!7107280 () Bool)

(declare-fun tp!1954785 () Bool)

(declare-fun tp!1954784 () Bool)

(assert (=> b!7107280 (= e!4271519 (and tp!1954785 tp!1954784))))

(declare-fun b!7107279 () Bool)

(declare-fun tp!1954788 () Bool)

(assert (=> b!7107279 (= e!4271519 tp!1954788)))

(assert (= (and b!7107030 (is-ElementMatch!17918 (regTwo!36348 (regOne!36349 r!11554)))) b!7107277))

(assert (= (and b!7107030 (is-Concat!26763 (regTwo!36348 (regOne!36349 r!11554)))) b!7107278))

(assert (= (and b!7107030 (is-Star!17918 (regTwo!36348 (regOne!36349 r!11554)))) b!7107279))

(assert (= (and b!7107030 (is-Union!17918 (regTwo!36348 (regOne!36349 r!11554)))) b!7107280))

(declare-fun b!7107282 () Bool)

(declare-fun e!4271520 () Bool)

(declare-fun tp!1954792 () Bool)

(declare-fun tp!1954791 () Bool)

(assert (=> b!7107282 (= e!4271520 (and tp!1954792 tp!1954791))))

(declare-fun b!7107281 () Bool)

(assert (=> b!7107281 (= e!4271520 tp_is_empty!45069)))

(assert (=> b!7107035 (= tp!1954663 e!4271520)))

(declare-fun b!7107284 () Bool)

(declare-fun tp!1954790 () Bool)

(declare-fun tp!1954789 () Bool)

(assert (=> b!7107284 (= e!4271520 (and tp!1954790 tp!1954789))))

(declare-fun b!7107283 () Bool)

(declare-fun tp!1954793 () Bool)

(assert (=> b!7107283 (= e!4271520 tp!1954793)))

(assert (= (and b!7107035 (is-ElementMatch!17918 (reg!18247 (regTwo!36349 r!11554)))) b!7107281))

(assert (= (and b!7107035 (is-Concat!26763 (reg!18247 (regTwo!36349 r!11554)))) b!7107282))

(assert (= (and b!7107035 (is-Star!17918 (reg!18247 (regTwo!36349 r!11554)))) b!7107283))

(assert (= (and b!7107035 (is-Union!17918 (reg!18247 (regTwo!36349 r!11554)))) b!7107284))

(declare-fun b!7107286 () Bool)

(declare-fun e!4271521 () Bool)

(declare-fun tp!1954797 () Bool)

(declare-fun tp!1954796 () Bool)

(assert (=> b!7107286 (= e!4271521 (and tp!1954797 tp!1954796))))

(declare-fun b!7107285 () Bool)

(assert (=> b!7107285 (= e!4271521 tp_is_empty!45069)))

(assert (=> b!7107031 (= tp!1954658 e!4271521)))

(declare-fun b!7107288 () Bool)

(declare-fun tp!1954795 () Bool)

(declare-fun tp!1954794 () Bool)

(assert (=> b!7107288 (= e!4271521 (and tp!1954795 tp!1954794))))

(declare-fun b!7107287 () Bool)

(declare-fun tp!1954798 () Bool)

(assert (=> b!7107287 (= e!4271521 tp!1954798)))

(assert (= (and b!7107031 (is-ElementMatch!17918 (reg!18247 (regOne!36349 r!11554)))) b!7107285))

(assert (= (and b!7107031 (is-Concat!26763 (reg!18247 (regOne!36349 r!11554)))) b!7107286))

(assert (= (and b!7107031 (is-Star!17918 (reg!18247 (regOne!36349 r!11554)))) b!7107287))

(assert (= (and b!7107031 (is-Union!17918 (reg!18247 (regOne!36349 r!11554)))) b!7107288))

(declare-fun b!7107290 () Bool)

(declare-fun e!4271522 () Bool)

(declare-fun tp!1954802 () Bool)

(declare-fun tp!1954801 () Bool)

(assert (=> b!7107290 (= e!4271522 (and tp!1954802 tp!1954801))))

(declare-fun b!7107289 () Bool)

(assert (=> b!7107289 (= e!4271522 tp_is_empty!45069)))

(assert (=> b!7107005 (= tp!1954625 e!4271522)))

(declare-fun b!7107292 () Bool)

(declare-fun tp!1954800 () Bool)

(declare-fun tp!1954799 () Bool)

(assert (=> b!7107292 (= e!4271522 (and tp!1954800 tp!1954799))))

(declare-fun b!7107291 () Bool)

(declare-fun tp!1954803 () Bool)

(assert (=> b!7107291 (= e!4271522 tp!1954803)))

(assert (= (and b!7107005 (is-ElementMatch!17918 (h!75203 (exprs!7412 auxCtx!45)))) b!7107289))

(assert (= (and b!7107005 (is-Concat!26763 (h!75203 (exprs!7412 auxCtx!45)))) b!7107290))

(assert (= (and b!7107005 (is-Star!17918 (h!75203 (exprs!7412 auxCtx!45)))) b!7107291))

(assert (= (and b!7107005 (is-Union!17918 (h!75203 (exprs!7412 auxCtx!45)))) b!7107292))

(declare-fun b!7107293 () Bool)

(declare-fun e!4271523 () Bool)

(declare-fun tp!1954804 () Bool)

(declare-fun tp!1954805 () Bool)

(assert (=> b!7107293 (= e!4271523 (and tp!1954804 tp!1954805))))

(assert (=> b!7107005 (= tp!1954626 e!4271523)))

(assert (= (and b!7107005 (is-Cons!68755 (t!382696 (exprs!7412 auxCtx!45)))) b!7107293))

(declare-fun b!7107295 () Bool)

(declare-fun e!4271524 () Bool)

(declare-fun tp!1954809 () Bool)

(declare-fun tp!1954808 () Bool)

(assert (=> b!7107295 (= e!4271524 (and tp!1954809 tp!1954808))))

(declare-fun b!7107294 () Bool)

(assert (=> b!7107294 (= e!4271524 tp_is_empty!45069)))

(assert (=> b!7107025 (= tp!1954650 e!4271524)))

(declare-fun b!7107297 () Bool)

(declare-fun tp!1954807 () Bool)

(declare-fun tp!1954806 () Bool)

(assert (=> b!7107297 (= e!4271524 (and tp!1954807 tp!1954806))))

(declare-fun b!7107296 () Bool)

(declare-fun tp!1954810 () Bool)

(assert (=> b!7107296 (= e!4271524 tp!1954810)))

(assert (= (and b!7107025 (is-ElementMatch!17918 (regOne!36348 (regTwo!36348 r!11554)))) b!7107294))

(assert (= (and b!7107025 (is-Concat!26763 (regOne!36348 (regTwo!36348 r!11554)))) b!7107295))

(assert (= (and b!7107025 (is-Star!17918 (regOne!36348 (regTwo!36348 r!11554)))) b!7107296))

(assert (= (and b!7107025 (is-Union!17918 (regOne!36348 (regTwo!36348 r!11554)))) b!7107297))

(declare-fun b!7107299 () Bool)

(declare-fun e!4271525 () Bool)

(declare-fun tp!1954814 () Bool)

(declare-fun tp!1954813 () Bool)

(assert (=> b!7107299 (= e!4271525 (and tp!1954814 tp!1954813))))

(declare-fun b!7107298 () Bool)

(assert (=> b!7107298 (= e!4271525 tp_is_empty!45069)))

(assert (=> b!7107025 (= tp!1954649 e!4271525)))

(declare-fun b!7107301 () Bool)

(declare-fun tp!1954812 () Bool)

(declare-fun tp!1954811 () Bool)

(assert (=> b!7107301 (= e!4271525 (and tp!1954812 tp!1954811))))

(declare-fun b!7107300 () Bool)

(declare-fun tp!1954815 () Bool)

(assert (=> b!7107300 (= e!4271525 tp!1954815)))

(assert (= (and b!7107025 (is-ElementMatch!17918 (regTwo!36348 (regTwo!36348 r!11554)))) b!7107298))

(assert (= (and b!7107025 (is-Concat!26763 (regTwo!36348 (regTwo!36348 r!11554)))) b!7107299))

(assert (= (and b!7107025 (is-Star!17918 (regTwo!36348 (regTwo!36348 r!11554)))) b!7107300))

(assert (= (and b!7107025 (is-Union!17918 (regTwo!36348 (regTwo!36348 r!11554)))) b!7107301))

(declare-fun b!7107303 () Bool)

(declare-fun e!4271526 () Bool)

(declare-fun tp!1954819 () Bool)

(declare-fun tp!1954818 () Bool)

(assert (=> b!7107303 (= e!4271526 (and tp!1954819 tp!1954818))))

(declare-fun b!7107302 () Bool)

(assert (=> b!7107302 (= e!4271526 tp_is_empty!45069)))

(assert (=> b!7107021 (= tp!1954645 e!4271526)))

(declare-fun b!7107305 () Bool)

(declare-fun tp!1954817 () Bool)

(declare-fun tp!1954816 () Bool)

(assert (=> b!7107305 (= e!4271526 (and tp!1954817 tp!1954816))))

(declare-fun b!7107304 () Bool)

(declare-fun tp!1954820 () Bool)

(assert (=> b!7107304 (= e!4271526 tp!1954820)))

(assert (= (and b!7107021 (is-ElementMatch!17918 (regOne!36348 (regOne!36348 r!11554)))) b!7107302))

(assert (= (and b!7107021 (is-Concat!26763 (regOne!36348 (regOne!36348 r!11554)))) b!7107303))

(assert (= (and b!7107021 (is-Star!17918 (regOne!36348 (regOne!36348 r!11554)))) b!7107304))

(assert (= (and b!7107021 (is-Union!17918 (regOne!36348 (regOne!36348 r!11554)))) b!7107305))

(declare-fun b!7107307 () Bool)

(declare-fun e!4271527 () Bool)

(declare-fun tp!1954824 () Bool)

(declare-fun tp!1954823 () Bool)

(assert (=> b!7107307 (= e!4271527 (and tp!1954824 tp!1954823))))

(declare-fun b!7107306 () Bool)

(assert (=> b!7107306 (= e!4271527 tp_is_empty!45069)))

(assert (=> b!7107021 (= tp!1954644 e!4271527)))

(declare-fun b!7107309 () Bool)

(declare-fun tp!1954822 () Bool)

(declare-fun tp!1954821 () Bool)

(assert (=> b!7107309 (= e!4271527 (and tp!1954822 tp!1954821))))

(declare-fun b!7107308 () Bool)

(declare-fun tp!1954825 () Bool)

(assert (=> b!7107308 (= e!4271527 tp!1954825)))

(assert (= (and b!7107021 (is-ElementMatch!17918 (regTwo!36348 (regOne!36348 r!11554)))) b!7107306))

(assert (= (and b!7107021 (is-Concat!26763 (regTwo!36348 (regOne!36348 r!11554)))) b!7107307))

(assert (= (and b!7107021 (is-Star!17918 (regTwo!36348 (regOne!36348 r!11554)))) b!7107308))

(assert (= (and b!7107021 (is-Union!17918 (regTwo!36348 (regOne!36348 r!11554)))) b!7107309))

(declare-fun b!7107311 () Bool)

(declare-fun e!4271528 () Bool)

(declare-fun tp!1954829 () Bool)

(declare-fun tp!1954828 () Bool)

(assert (=> b!7107311 (= e!4271528 (and tp!1954829 tp!1954828))))

(declare-fun b!7107310 () Bool)

(assert (=> b!7107310 (= e!4271528 tp_is_empty!45069)))

(assert (=> b!7107026 (= tp!1954651 e!4271528)))

(declare-fun b!7107313 () Bool)

(declare-fun tp!1954827 () Bool)

(declare-fun tp!1954826 () Bool)

(assert (=> b!7107313 (= e!4271528 (and tp!1954827 tp!1954826))))

(declare-fun b!7107312 () Bool)

(declare-fun tp!1954830 () Bool)

(assert (=> b!7107312 (= e!4271528 tp!1954830)))

(assert (= (and b!7107026 (is-ElementMatch!17918 (reg!18247 (regTwo!36348 r!11554)))) b!7107310))

(assert (= (and b!7107026 (is-Concat!26763 (reg!18247 (regTwo!36348 r!11554)))) b!7107311))

(assert (= (and b!7107026 (is-Star!17918 (reg!18247 (regTwo!36348 r!11554)))) b!7107312))

(assert (= (and b!7107026 (is-Union!17918 (reg!18247 (regTwo!36348 r!11554)))) b!7107313))

(declare-fun b!7107315 () Bool)

(declare-fun e!4271529 () Bool)

(declare-fun tp!1954834 () Bool)

(declare-fun tp!1954833 () Bool)

(assert (=> b!7107315 (= e!4271529 (and tp!1954834 tp!1954833))))

(declare-fun b!7107314 () Bool)

(assert (=> b!7107314 (= e!4271529 tp_is_empty!45069)))

(assert (=> b!7107017 (= tp!1954640 e!4271529)))

(declare-fun b!7107317 () Bool)

(declare-fun tp!1954832 () Bool)

(declare-fun tp!1954831 () Bool)

(assert (=> b!7107317 (= e!4271529 (and tp!1954832 tp!1954831))))

(declare-fun b!7107316 () Bool)

(declare-fun tp!1954835 () Bool)

(assert (=> b!7107316 (= e!4271529 tp!1954835)))

(assert (= (and b!7107017 (is-ElementMatch!17918 (regOne!36348 (reg!18247 r!11554)))) b!7107314))

(assert (= (and b!7107017 (is-Concat!26763 (regOne!36348 (reg!18247 r!11554)))) b!7107315))

(assert (= (and b!7107017 (is-Star!17918 (regOne!36348 (reg!18247 r!11554)))) b!7107316))

(assert (= (and b!7107017 (is-Union!17918 (regOne!36348 (reg!18247 r!11554)))) b!7107317))

(declare-fun b!7107319 () Bool)

(declare-fun e!4271530 () Bool)

(declare-fun tp!1954839 () Bool)

(declare-fun tp!1954838 () Bool)

(assert (=> b!7107319 (= e!4271530 (and tp!1954839 tp!1954838))))

(declare-fun b!7107318 () Bool)

(assert (=> b!7107318 (= e!4271530 tp_is_empty!45069)))

(assert (=> b!7107017 (= tp!1954639 e!4271530)))

(declare-fun b!7107321 () Bool)

(declare-fun tp!1954837 () Bool)

(declare-fun tp!1954836 () Bool)

(assert (=> b!7107321 (= e!4271530 (and tp!1954837 tp!1954836))))

(declare-fun b!7107320 () Bool)

(declare-fun tp!1954840 () Bool)

(assert (=> b!7107320 (= e!4271530 tp!1954840)))

(assert (= (and b!7107017 (is-ElementMatch!17918 (regTwo!36348 (reg!18247 r!11554)))) b!7107318))

(assert (= (and b!7107017 (is-Concat!26763 (regTwo!36348 (reg!18247 r!11554)))) b!7107319))

(assert (= (and b!7107017 (is-Star!17918 (regTwo!36348 (reg!18247 r!11554)))) b!7107320))

(assert (= (and b!7107017 (is-Union!17918 (regTwo!36348 (reg!18247 r!11554)))) b!7107321))

(declare-fun b!7107323 () Bool)

(declare-fun e!4271531 () Bool)

(declare-fun tp!1954844 () Bool)

(declare-fun tp!1954843 () Bool)

(assert (=> b!7107323 (= e!4271531 (and tp!1954844 tp!1954843))))

(declare-fun b!7107322 () Bool)

(assert (=> b!7107322 (= e!4271531 tp_is_empty!45069)))

(assert (=> b!7107022 (= tp!1954646 e!4271531)))

(declare-fun b!7107325 () Bool)

(declare-fun tp!1954842 () Bool)

(declare-fun tp!1954841 () Bool)

(assert (=> b!7107325 (= e!4271531 (and tp!1954842 tp!1954841))))

(declare-fun b!7107324 () Bool)

(declare-fun tp!1954845 () Bool)

(assert (=> b!7107324 (= e!4271531 tp!1954845)))

(assert (= (and b!7107022 (is-ElementMatch!17918 (reg!18247 (regOne!36348 r!11554)))) b!7107322))

(assert (= (and b!7107022 (is-Concat!26763 (reg!18247 (regOne!36348 r!11554)))) b!7107323))

(assert (= (and b!7107022 (is-Star!17918 (reg!18247 (regOne!36348 r!11554)))) b!7107324))

(assert (= (and b!7107022 (is-Union!17918 (reg!18247 (regOne!36348 r!11554)))) b!7107325))

(declare-fun b_lambda!271347 () Bool)

(assert (= b_lambda!271343 (or d!2219461 b_lambda!271347)))

(declare-fun bs!1884866 () Bool)

(declare-fun d!2219537 () Bool)

(assert (= bs!1884866 (and d!2219537 d!2219461)))

(assert (=> bs!1884866 (= (dynLambda!28052 lambda!431694 (h!75203 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))))) (validRegex!9191 (h!75203 (exprs!7412 (Context!13825 ($colon$colon!2776 lt!2559205 (regTwo!36348 r!11554)))))))))

(declare-fun m!7829892 () Bool)

(assert (=> bs!1884866 m!7829892))

(assert (=> b!7107154 d!2219537))

(declare-fun b_lambda!271349 () Bool)

(assert (= b_lambda!271339 (or b!7106921 b_lambda!271349)))

(declare-fun bs!1884867 () Bool)

(declare-fun d!2219539 () Bool)

(assert (= bs!1884867 (and d!2219539 b!7106921)))

(assert (=> bs!1884867 (= (dynLambda!28052 lambda!431684 (h!75203 (exprs!7412 c!9994))) (validRegex!9191 (h!75203 (exprs!7412 c!9994))))))

(declare-fun m!7829894 () Bool)

(assert (=> bs!1884867 m!7829894))

(assert (=> b!7107127 d!2219539))

(declare-fun b_lambda!271351 () Bool)

(assert (= b_lambda!271345 (or d!2219487 b_lambda!271351)))

(declare-fun bs!1884868 () Bool)

(declare-fun d!2219541 () Bool)

(assert (= bs!1884868 (and d!2219541 d!2219487)))

(assert (=> bs!1884868 (= (dynLambda!28052 lambda!431699 (h!75203 (exprs!7412 auxCtx!45))) (validRegex!9191 (h!75203 (exprs!7412 auxCtx!45))))))

(declare-fun m!7829896 () Bool)

(assert (=> bs!1884868 m!7829896))

(assert (=> b!7107156 d!2219541))

(declare-fun b_lambda!271353 () Bool)

(assert (= b_lambda!271337 (or b!7106921 b_lambda!271353)))

(declare-fun bs!1884869 () Bool)

(declare-fun d!2219543 () Bool)

(assert (= bs!1884869 (and d!2219543 b!7106921)))

(assert (=> bs!1884869 (= (dynLambda!28052 lambda!431684 (h!75203 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)))) (validRegex!9191 (h!75203 (++!16070 (exprs!7412 c!9994) (exprs!7412 auxCtx!45)))))))

(declare-fun m!7829898 () Bool)

(assert (=> bs!1884869 m!7829898))

(assert (=> b!7107125 d!2219543))

(declare-fun b_lambda!271355 () Bool)

(assert (= b_lambda!271341 (or d!2219485 b_lambda!271355)))

(declare-fun bs!1884870 () Bool)

(declare-fun d!2219545 () Bool)

(assert (= bs!1884870 (and d!2219545 d!2219485)))

(assert (=> bs!1884870 (= (dynLambda!28052 lambda!431698 (h!75203 (exprs!7412 c!9994))) (validRegex!9191 (h!75203 (exprs!7412 c!9994))))))

(assert (=> bs!1884870 m!7829894))

(assert (=> b!7107143 d!2219545))

(push 1)

(assert (not b_lambda!271355))

(assert (not b!7107202))

(assert (not b!7107275))

(assert (not b!7107266))

(assert (not bm!647935))

(assert (not b!7107278))

(assert tp_is_empty!45069)

(assert (not b!7107236))

(assert (not bs!1884869))

(assert (not d!2219521))

(assert (not b!7107247))

(assert (not b!7107296))

(assert (not b!7107264))

(assert (not b!7107309))

(assert (not b!7107311))

(assert (not b!7107256))

(assert (not b_lambda!271347))

(assert (not b!7107155))

(assert (not b!7107299))

(assert (not bm!647940))

(assert (not b!7107229))

(assert (not b!7107166))

(assert (not b!7107325))

(assert (not b!7107153))

(assert (not b!7107240))

(assert (not b!7107307))

(assert (not b!7107284))

(assert (not b!7107218))

(assert (not b!7107144))

(assert (not b!7107276))

(assert (not bm!647927))

(assert (not b!7107279))

(assert (not b!7107263))

(assert (not b!7107292))

(assert (not b!7107235))

(assert (not b!7107225))

(assert (not b!7107304))

(assert (not b!7107128))

(assert (not b!7107295))

(assert (not b!7107320))

(assert (not b!7107268))

(assert (not bm!647941))

(assert (not bs!1884867))

(assert (not bm!647944))

(assert (not b!7107215))

(assert (not b_lambda!271349))

(assert (not b!7107324))

(assert (not b!7107252))

(assert (not b!7107293))

(assert (not b!7107222))

(assert (not b!7107287))

(assert (not b!7107267))

(assert (not b!7107303))

(assert (not b!7107206))

(assert (not b!7107280))

(assert (not b!7107313))

(assert (not b!7107255))

(assert (not bm!647932))

(assert (not b!7107230))

(assert (not bs!1884868))

(assert (not b!7107301))

(assert (not b!7107282))

(assert (not b!7107316))

(assert (not b!7107130))

(assert (not b!7107290))

(assert (not b!7107233))

(assert (not b!7107308))

(assert (not b!7107219))

(assert (not bs!1884870))

(assert (not b!7107246))

(assert (not b!7107305))

(assert (not b!7107157))

(assert (not b!7107242))

(assert (not b!7107126))

(assert (not b!7107260))

(assert (not b_lambda!271351))

(assert (not bm!647929))

(assert (not b!7107272))

(assert (not b!7107321))

(assert (not d!2219503))

(assert (not b!7107250))

(assert (not d!2219533))

(assert (not b!7107274))

(assert (not b!7107251))

(assert (not b!7107291))

(assert (not b!7107315))

(assert (not b!7107239))

(assert (not b!7107271))

(assert (not b_lambda!271353))

(assert (not bs!1884866))

(assert (not b!7107254))

(assert (not b!7107204))

(assert (not b!7107131))

(assert (not b!7107312))

(assert (not b!7107221))

(assert (not b!7107227))

(assert (not b!7107175))

(assert (not b!7107234))

(assert (not b!7107238))

(assert (not bm!647930))

(assert (not b!7107258))

(assert (not b!7107138))

(assert (not b!7107259))

(assert (not b!7107262))

(assert (not b!7107283))

(assert (not b!7107226))

(assert (not b!7107317))

(assert (not b!7107270))

(assert (not b!7107300))

(assert (not b!7107244))

(assert (not bm!647942))

(assert (not b!7107319))

(assert (not d!2219499))

(assert (not b!7107243))

(assert (not b!7107142))

(assert (not b!7107231))

(assert (not b!7107217))

(assert (not b!7107223))

(assert (not b!7107286))

(assert (not b!7107323))

(assert (not b!7107288))

(assert (not bm!647933))

(assert (not b!7107297))

(assert (not b!7107140))

(assert (not b!7107248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

