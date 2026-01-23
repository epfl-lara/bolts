; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691408 () Bool)

(assert start!691408)

(declare-fun b!7102501 () Bool)

(assert (=> b!7102501 true))

(declare-fun b!7102495 () Bool)

(declare-fun e!4268956 () Bool)

(declare-datatypes ((C!36052 0))(
  ( (C!36053 (val!27732 Int)) )
))
(declare-datatypes ((Regex!17891 0))(
  ( (ElementMatch!17891 (c!1325246 C!36052)) (Concat!26736 (regOne!36294 Regex!17891) (regTwo!36294 Regex!17891)) (EmptyExpr!17891) (Star!17891 (reg!18220 Regex!17891)) (EmptyLang!17891) (Union!17891 (regOne!36295 Regex!17891) (regTwo!36295 Regex!17891)) )
))
(declare-datatypes ((List!68852 0))(
  ( (Nil!68728) (Cons!68728 (h!75176 Regex!17891) (t!382669 List!68852)) )
))
(declare-datatypes ((Context!13770 0))(
  ( (Context!13771 (exprs!7385 List!68852)) )
))
(declare-fun c!9994 () Context!13770)

(declare-fun auxCtx!45 () Context!13770)

(declare-fun inv!87590 (Context!13770) Bool)

(declare-fun ++!16043 (List!68852 List!68852) List!68852)

(assert (=> b!7102495 (= e!4268956 (not (inv!87590 (Context!13771 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45))))))))

(declare-datatypes ((Unit!162453 0))(
  ( (Unit!162454) )
))
(declare-fun lt!2558309 () Unit!162453)

(declare-fun lambda!431157 () Int)

(declare-fun lemmaConcatPreservesForall!1176 (List!68852 List!68852 Int) Unit!162453)

(assert (=> b!7102495 (= lt!2558309 (lemmaConcatPreservesForall!1176 (exprs!7385 c!9994) (exprs!7385 auxCtx!45) lambda!431157))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2558308 () (InoxSet Context!13770))

(declare-fun lambda!431156 () Int)

(declare-fun map!16233 ((InoxSet Context!13770) Int) (InoxSet Context!13770))

(assert (=> b!7102495 (= (map!16233 lt!2558308 lambda!431156) (store ((as const (Array Context!13770 Bool)) false) (Context!13771 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45))) true))))

(declare-fun lt!2558307 () Unit!162453)

(assert (=> b!7102495 (= lt!2558307 (lemmaConcatPreservesForall!1176 (exprs!7385 c!9994) (exprs!7385 auxCtx!45) lambda!431157))))

(declare-fun lt!2558310 () Unit!162453)

(declare-fun lemmaMapOnSingletonSet!452 ((InoxSet Context!13770) Context!13770 Int) Unit!162453)

(assert (=> b!7102495 (= lt!2558310 (lemmaMapOnSingletonSet!452 lt!2558308 c!9994 lambda!431156))))

(assert (=> b!7102495 (= lt!2558308 (store ((as const (Array Context!13770 Bool)) false) c!9994 true))))

(declare-fun b!7102496 () Bool)

(declare-fun e!4268958 () Bool)

(declare-fun tp!1952822 () Bool)

(assert (=> b!7102496 (= e!4268958 tp!1952822)))

(declare-fun b!7102497 () Bool)

(declare-fun tp!1952825 () Bool)

(declare-fun tp!1952828 () Bool)

(assert (=> b!7102497 (= e!4268958 (and tp!1952825 tp!1952828))))

(declare-fun b!7102499 () Bool)

(declare-fun e!4268954 () Bool)

(declare-fun tp!1952824 () Bool)

(assert (=> b!7102499 (= e!4268954 tp!1952824)))

(declare-fun b!7102500 () Bool)

(declare-fun tp!1952826 () Bool)

(declare-fun tp!1952823 () Bool)

(assert (=> b!7102500 (= e!4268958 (and tp!1952826 tp!1952823))))

(declare-fun e!4268957 () Bool)

(assert (=> b!7102501 (= e!4268957 e!4268956)))

(declare-fun res!2899822 () Bool)

(assert (=> b!7102501 (=> (not res!2899822) (not e!4268956))))

(declare-fun r!11554 () Regex!17891)

(declare-fun a!1901 () C!36052)

(get-info :version)

(assert (=> b!7102501 (= res!2899822 (and ((_ is ElementMatch!17891) r!11554) (= (c!1325246 r!11554) a!1901)))))

(declare-fun b!7102502 () Bool)

(declare-fun e!4268955 () Bool)

(declare-fun tp!1952827 () Bool)

(assert (=> b!7102502 (= e!4268955 tp!1952827)))

(declare-fun b!7102498 () Bool)

(declare-fun tp_is_empty!45015 () Bool)

(assert (=> b!7102498 (= e!4268958 tp_is_empty!45015)))

(declare-fun res!2899821 () Bool)

(assert (=> start!691408 (=> (not res!2899821) (not e!4268957))))

(declare-fun validRegex!9164 (Regex!17891) Bool)

(assert (=> start!691408 (= res!2899821 (validRegex!9164 r!11554))))

(assert (=> start!691408 e!4268957))

(assert (=> start!691408 e!4268958))

(assert (=> start!691408 (and (inv!87590 c!9994) e!4268954)))

(assert (=> start!691408 tp_is_empty!45015))

(assert (=> start!691408 (and (inv!87590 auxCtx!45) e!4268955)))

(assert (= (and start!691408 res!2899821) b!7102501))

(assert (= (and b!7102501 res!2899822) b!7102495))

(assert (= (and start!691408 ((_ is ElementMatch!17891) r!11554)) b!7102498))

(assert (= (and start!691408 ((_ is Concat!26736) r!11554)) b!7102500))

(assert (= (and start!691408 ((_ is Star!17891) r!11554)) b!7102496))

(assert (= (and start!691408 ((_ is Union!17891) r!11554)) b!7102497))

(assert (= start!691408 b!7102499))

(assert (= start!691408 b!7102502))

(declare-fun m!7827140 () Bool)

(assert (=> b!7102495 m!7827140))

(declare-fun m!7827142 () Bool)

(assert (=> b!7102495 m!7827142))

(declare-fun m!7827144 () Bool)

(assert (=> b!7102495 m!7827144))

(declare-fun m!7827146 () Bool)

(assert (=> b!7102495 m!7827146))

(assert (=> b!7102495 m!7827146))

(declare-fun m!7827148 () Bool)

(assert (=> b!7102495 m!7827148))

(declare-fun m!7827150 () Bool)

(assert (=> b!7102495 m!7827150))

(declare-fun m!7827152 () Bool)

(assert (=> b!7102495 m!7827152))

(declare-fun m!7827154 () Bool)

(assert (=> start!691408 m!7827154))

(declare-fun m!7827156 () Bool)

(assert (=> start!691408 m!7827156))

(declare-fun m!7827158 () Bool)

(assert (=> start!691408 m!7827158))

(check-sat (not b!7102502) (not b!7102496) (not start!691408) (not b!7102499) (not b!7102495) (not b!7102497) (not b!7102500) tp_is_empty!45015)
(check-sat)
(get-model)

(declare-fun b!7102550 () Bool)

(declare-fun e!4268994 () Bool)

(declare-fun call!646888 () Bool)

(assert (=> b!7102550 (= e!4268994 call!646888)))

(declare-fun d!2218783 () Bool)

(declare-fun res!2899852 () Bool)

(declare-fun e!4268999 () Bool)

(assert (=> d!2218783 (=> res!2899852 e!4268999)))

(assert (=> d!2218783 (= res!2899852 ((_ is ElementMatch!17891) r!11554))))

(assert (=> d!2218783 (= (validRegex!9164 r!11554) e!4268999)))

(declare-fun c!1325258 () Bool)

(declare-fun c!1325257 () Bool)

(declare-fun bm!646882 () Bool)

(assert (=> bm!646882 (= call!646888 (validRegex!9164 (ite c!1325258 (reg!18220 r!11554) (ite c!1325257 (regOne!36295 r!11554) (regTwo!36294 r!11554)))))))

(declare-fun bm!646883 () Bool)

(declare-fun call!646889 () Bool)

(assert (=> bm!646883 (= call!646889 call!646888)))

(declare-fun b!7102551 () Bool)

(declare-fun e!4269000 () Bool)

(assert (=> b!7102551 (= e!4269000 e!4268994)))

(declare-fun res!2899850 () Bool)

(declare-fun nullable!7529 (Regex!17891) Bool)

(assert (=> b!7102551 (= res!2899850 (not (nullable!7529 (reg!18220 r!11554))))))

(assert (=> b!7102551 (=> (not res!2899850) (not e!4268994))))

(declare-fun b!7102552 () Bool)

(assert (=> b!7102552 (= e!4268999 e!4269000)))

(assert (=> b!7102552 (= c!1325258 ((_ is Star!17891) r!11554))))

(declare-fun b!7102553 () Bool)

(declare-fun e!4268996 () Bool)

(declare-fun e!4268995 () Bool)

(assert (=> b!7102553 (= e!4268996 e!4268995)))

(declare-fun res!2899851 () Bool)

(assert (=> b!7102553 (=> (not res!2899851) (not e!4268995))))

(declare-fun call!646887 () Bool)

(assert (=> b!7102553 (= res!2899851 call!646887)))

(declare-fun b!7102554 () Bool)

(assert (=> b!7102554 (= e!4268995 call!646889)))

(declare-fun b!7102555 () Bool)

(declare-fun e!4268997 () Bool)

(assert (=> b!7102555 (= e!4269000 e!4268997)))

(assert (=> b!7102555 (= c!1325257 ((_ is Union!17891) r!11554))))

(declare-fun b!7102556 () Bool)

(declare-fun res!2899854 () Bool)

(declare-fun e!4268998 () Bool)

(assert (=> b!7102556 (=> (not res!2899854) (not e!4268998))))

(assert (=> b!7102556 (= res!2899854 call!646889)))

(assert (=> b!7102556 (= e!4268997 e!4268998)))

(declare-fun b!7102557 () Bool)

(declare-fun res!2899853 () Bool)

(assert (=> b!7102557 (=> res!2899853 e!4268996)))

(assert (=> b!7102557 (= res!2899853 (not ((_ is Concat!26736) r!11554)))))

(assert (=> b!7102557 (= e!4268997 e!4268996)))

(declare-fun bm!646884 () Bool)

(assert (=> bm!646884 (= call!646887 (validRegex!9164 (ite c!1325257 (regTwo!36295 r!11554) (regOne!36294 r!11554))))))

(declare-fun b!7102558 () Bool)

(assert (=> b!7102558 (= e!4268998 call!646887)))

(assert (= (and d!2218783 (not res!2899852)) b!7102552))

(assert (= (and b!7102552 c!1325258) b!7102551))

(assert (= (and b!7102552 (not c!1325258)) b!7102555))

(assert (= (and b!7102551 res!2899850) b!7102550))

(assert (= (and b!7102555 c!1325257) b!7102556))

(assert (= (and b!7102555 (not c!1325257)) b!7102557))

(assert (= (and b!7102556 res!2899854) b!7102558))

(assert (= (and b!7102557 (not res!2899853)) b!7102553))

(assert (= (and b!7102553 res!2899851) b!7102554))

(assert (= (or b!7102556 b!7102554) bm!646883))

(assert (= (or b!7102558 b!7102553) bm!646884))

(assert (= (or b!7102550 bm!646883) bm!646882))

(declare-fun m!7827172 () Bool)

(assert (=> bm!646882 m!7827172))

(declare-fun m!7827174 () Bool)

(assert (=> b!7102551 m!7827174))

(declare-fun m!7827176 () Bool)

(assert (=> bm!646884 m!7827176))

(assert (=> start!691408 d!2218783))

(declare-fun bs!1884393 () Bool)

(declare-fun d!2218795 () Bool)

(assert (= bs!1884393 (and d!2218795 b!7102495)))

(declare-fun lambda!431165 () Int)

(assert (=> bs!1884393 (= lambda!431165 lambda!431157)))

(declare-fun forall!16795 (List!68852 Int) Bool)

(assert (=> d!2218795 (= (inv!87590 c!9994) (forall!16795 (exprs!7385 c!9994) lambda!431165))))

(declare-fun bs!1884394 () Bool)

(assert (= bs!1884394 d!2218795))

(declare-fun m!7827184 () Bool)

(assert (=> bs!1884394 m!7827184))

(assert (=> start!691408 d!2218795))

(declare-fun bs!1884395 () Bool)

(declare-fun d!2218799 () Bool)

(assert (= bs!1884395 (and d!2218799 b!7102495)))

(declare-fun lambda!431166 () Int)

(assert (=> bs!1884395 (= lambda!431166 lambda!431157)))

(declare-fun bs!1884396 () Bool)

(assert (= bs!1884396 (and d!2218799 d!2218795)))

(assert (=> bs!1884396 (= lambda!431166 lambda!431165)))

(assert (=> d!2218799 (= (inv!87590 auxCtx!45) (forall!16795 (exprs!7385 auxCtx!45) lambda!431166))))

(declare-fun bs!1884397 () Bool)

(assert (= bs!1884397 d!2218799))

(declare-fun m!7827186 () Bool)

(assert (=> bs!1884397 m!7827186))

(assert (=> start!691408 d!2218799))

(declare-fun bs!1884398 () Bool)

(declare-fun d!2218801 () Bool)

(assert (= bs!1884398 (and d!2218801 b!7102495)))

(declare-fun lambda!431167 () Int)

(assert (=> bs!1884398 (= lambda!431167 lambda!431157)))

(declare-fun bs!1884399 () Bool)

(assert (= bs!1884399 (and d!2218801 d!2218795)))

(assert (=> bs!1884399 (= lambda!431167 lambda!431165)))

(declare-fun bs!1884400 () Bool)

(assert (= bs!1884400 (and d!2218801 d!2218799)))

(assert (=> bs!1884400 (= lambda!431167 lambda!431166)))

(assert (=> d!2218801 (= (inv!87590 (Context!13771 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45)))) (forall!16795 (exprs!7385 (Context!13771 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45)))) lambda!431167))))

(declare-fun bs!1884401 () Bool)

(assert (= bs!1884401 d!2218801))

(declare-fun m!7827188 () Bool)

(assert (=> bs!1884401 m!7827188))

(assert (=> b!7102495 d!2218801))

(declare-fun d!2218803 () Bool)

(declare-fun dynLambda!28048 (Int Context!13770) Context!13770)

(assert (=> d!2218803 (= (map!16233 lt!2558308 lambda!431156) (store ((as const (Array Context!13770 Bool)) false) (dynLambda!28048 lambda!431156 c!9994) true))))

(declare-fun lt!2558322 () Unit!162453)

(declare-fun choose!54774 ((InoxSet Context!13770) Context!13770 Int) Unit!162453)

(assert (=> d!2218803 (= lt!2558322 (choose!54774 lt!2558308 c!9994 lambda!431156))))

(assert (=> d!2218803 (= lt!2558308 (store ((as const (Array Context!13770 Bool)) false) c!9994 true))))

(assert (=> d!2218803 (= (lemmaMapOnSingletonSet!452 lt!2558308 c!9994 lambda!431156) lt!2558322)))

(declare-fun b_lambda!271315 () Bool)

(assert (=> (not b_lambda!271315) (not d!2218803)))

(declare-fun bs!1884403 () Bool)

(assert (= bs!1884403 d!2218803))

(declare-fun m!7827210 () Bool)

(assert (=> bs!1884403 m!7827210))

(declare-fun m!7827212 () Bool)

(assert (=> bs!1884403 m!7827212))

(assert (=> bs!1884403 m!7827210))

(assert (=> bs!1884403 m!7827144))

(declare-fun m!7827214 () Bool)

(assert (=> bs!1884403 m!7827214))

(assert (=> bs!1884403 m!7827142))

(assert (=> b!7102495 d!2218803))

(declare-fun d!2218809 () Bool)

(assert (=> d!2218809 (forall!16795 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45)) lambda!431157)))

(declare-fun lt!2558326 () Unit!162453)

(declare-fun choose!54775 (List!68852 List!68852 Int) Unit!162453)

(assert (=> d!2218809 (= lt!2558326 (choose!54775 (exprs!7385 c!9994) (exprs!7385 auxCtx!45) lambda!431157))))

(assert (=> d!2218809 (forall!16795 (exprs!7385 c!9994) lambda!431157)))

(assert (=> d!2218809 (= (lemmaConcatPreservesForall!1176 (exprs!7385 c!9994) (exprs!7385 auxCtx!45) lambda!431157) lt!2558326)))

(declare-fun bs!1884410 () Bool)

(assert (= bs!1884410 d!2218809))

(assert (=> bs!1884410 m!7827152))

(assert (=> bs!1884410 m!7827152))

(declare-fun m!7827220 () Bool)

(assert (=> bs!1884410 m!7827220))

(declare-fun m!7827222 () Bool)

(assert (=> bs!1884410 m!7827222))

(declare-fun m!7827224 () Bool)

(assert (=> bs!1884410 m!7827224))

(assert (=> b!7102495 d!2218809))

(declare-fun d!2218813 () Bool)

(declare-fun choose!54776 ((InoxSet Context!13770) Int) (InoxSet Context!13770))

(assert (=> d!2218813 (= (map!16233 lt!2558308 lambda!431156) (choose!54776 lt!2558308 lambda!431156))))

(declare-fun bs!1884411 () Bool)

(assert (= bs!1884411 d!2218813))

(declare-fun m!7827226 () Bool)

(assert (=> bs!1884411 m!7827226))

(assert (=> b!7102495 d!2218813))

(declare-fun lt!2558329 () List!68852)

(declare-fun e!4269022 () Bool)

(declare-fun b!7102618 () Bool)

(assert (=> b!7102618 (= e!4269022 (or (not (= (exprs!7385 auxCtx!45) Nil!68728)) (= lt!2558329 (exprs!7385 c!9994))))))

(declare-fun b!7102617 () Bool)

(declare-fun res!2899866 () Bool)

(assert (=> b!7102617 (=> (not res!2899866) (not e!4269022))))

(declare-fun size!41357 (List!68852) Int)

(assert (=> b!7102617 (= res!2899866 (= (size!41357 lt!2558329) (+ (size!41357 (exprs!7385 c!9994)) (size!41357 (exprs!7385 auxCtx!45)))))))

(declare-fun d!2218815 () Bool)

(assert (=> d!2218815 e!4269022))

(declare-fun res!2899865 () Bool)

(assert (=> d!2218815 (=> (not res!2899865) (not e!4269022))))

(declare-fun content!13982 (List!68852) (InoxSet Regex!17891))

(assert (=> d!2218815 (= res!2899865 (= (content!13982 lt!2558329) ((_ map or) (content!13982 (exprs!7385 c!9994)) (content!13982 (exprs!7385 auxCtx!45)))))))

(declare-fun e!4269023 () List!68852)

(assert (=> d!2218815 (= lt!2558329 e!4269023)))

(declare-fun c!1325264 () Bool)

(assert (=> d!2218815 (= c!1325264 ((_ is Nil!68728) (exprs!7385 c!9994)))))

(assert (=> d!2218815 (= (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45)) lt!2558329)))

(declare-fun b!7102616 () Bool)

(assert (=> b!7102616 (= e!4269023 (Cons!68728 (h!75176 (exprs!7385 c!9994)) (++!16043 (t!382669 (exprs!7385 c!9994)) (exprs!7385 auxCtx!45))))))

(declare-fun b!7102615 () Bool)

(assert (=> b!7102615 (= e!4269023 (exprs!7385 auxCtx!45))))

(assert (= (and d!2218815 c!1325264) b!7102615))

(assert (= (and d!2218815 (not c!1325264)) b!7102616))

(assert (= (and d!2218815 res!2899865) b!7102617))

(assert (= (and b!7102617 res!2899866) b!7102618))

(declare-fun m!7827228 () Bool)

(assert (=> b!7102617 m!7827228))

(declare-fun m!7827230 () Bool)

(assert (=> b!7102617 m!7827230))

(declare-fun m!7827232 () Bool)

(assert (=> b!7102617 m!7827232))

(declare-fun m!7827234 () Bool)

(assert (=> d!2218815 m!7827234))

(declare-fun m!7827236 () Bool)

(assert (=> d!2218815 m!7827236))

(declare-fun m!7827238 () Bool)

(assert (=> d!2218815 m!7827238))

(declare-fun m!7827240 () Bool)

(assert (=> b!7102616 m!7827240))

(assert (=> b!7102495 d!2218815))

(declare-fun b!7102623 () Bool)

(declare-fun e!4269026 () Bool)

(declare-fun tp!1952876 () Bool)

(declare-fun tp!1952877 () Bool)

(assert (=> b!7102623 (= e!4269026 (and tp!1952876 tp!1952877))))

(assert (=> b!7102499 (= tp!1952824 e!4269026)))

(assert (= (and b!7102499 ((_ is Cons!68728) (exprs!7385 c!9994))) b!7102623))

(declare-fun b!7102634 () Bool)

(declare-fun e!4269029 () Bool)

(assert (=> b!7102634 (= e!4269029 tp_is_empty!45015)))

(assert (=> b!7102496 (= tp!1952822 e!4269029)))

(declare-fun b!7102637 () Bool)

(declare-fun tp!1952888 () Bool)

(declare-fun tp!1952890 () Bool)

(assert (=> b!7102637 (= e!4269029 (and tp!1952888 tp!1952890))))

(declare-fun b!7102635 () Bool)

(declare-fun tp!1952889 () Bool)

(declare-fun tp!1952892 () Bool)

(assert (=> b!7102635 (= e!4269029 (and tp!1952889 tp!1952892))))

(declare-fun b!7102636 () Bool)

(declare-fun tp!1952891 () Bool)

(assert (=> b!7102636 (= e!4269029 tp!1952891)))

(assert (= (and b!7102496 ((_ is ElementMatch!17891) (reg!18220 r!11554))) b!7102634))

(assert (= (and b!7102496 ((_ is Concat!26736) (reg!18220 r!11554))) b!7102635))

(assert (= (and b!7102496 ((_ is Star!17891) (reg!18220 r!11554))) b!7102636))

(assert (= (and b!7102496 ((_ is Union!17891) (reg!18220 r!11554))) b!7102637))

(declare-fun b!7102638 () Bool)

(declare-fun e!4269030 () Bool)

(assert (=> b!7102638 (= e!4269030 tp_is_empty!45015)))

(assert (=> b!7102497 (= tp!1952825 e!4269030)))

(declare-fun b!7102641 () Bool)

(declare-fun tp!1952893 () Bool)

(declare-fun tp!1952895 () Bool)

(assert (=> b!7102641 (= e!4269030 (and tp!1952893 tp!1952895))))

(declare-fun b!7102639 () Bool)

(declare-fun tp!1952894 () Bool)

(declare-fun tp!1952897 () Bool)

(assert (=> b!7102639 (= e!4269030 (and tp!1952894 tp!1952897))))

(declare-fun b!7102640 () Bool)

(declare-fun tp!1952896 () Bool)

(assert (=> b!7102640 (= e!4269030 tp!1952896)))

(assert (= (and b!7102497 ((_ is ElementMatch!17891) (regOne!36295 r!11554))) b!7102638))

(assert (= (and b!7102497 ((_ is Concat!26736) (regOne!36295 r!11554))) b!7102639))

(assert (= (and b!7102497 ((_ is Star!17891) (regOne!36295 r!11554))) b!7102640))

(assert (= (and b!7102497 ((_ is Union!17891) (regOne!36295 r!11554))) b!7102641))

(declare-fun b!7102642 () Bool)

(declare-fun e!4269031 () Bool)

(assert (=> b!7102642 (= e!4269031 tp_is_empty!45015)))

(assert (=> b!7102497 (= tp!1952828 e!4269031)))

(declare-fun b!7102645 () Bool)

(declare-fun tp!1952898 () Bool)

(declare-fun tp!1952900 () Bool)

(assert (=> b!7102645 (= e!4269031 (and tp!1952898 tp!1952900))))

(declare-fun b!7102643 () Bool)

(declare-fun tp!1952899 () Bool)

(declare-fun tp!1952902 () Bool)

(assert (=> b!7102643 (= e!4269031 (and tp!1952899 tp!1952902))))

(declare-fun b!7102644 () Bool)

(declare-fun tp!1952901 () Bool)

(assert (=> b!7102644 (= e!4269031 tp!1952901)))

(assert (= (and b!7102497 ((_ is ElementMatch!17891) (regTwo!36295 r!11554))) b!7102642))

(assert (= (and b!7102497 ((_ is Concat!26736) (regTwo!36295 r!11554))) b!7102643))

(assert (= (and b!7102497 ((_ is Star!17891) (regTwo!36295 r!11554))) b!7102644))

(assert (= (and b!7102497 ((_ is Union!17891) (regTwo!36295 r!11554))) b!7102645))

(declare-fun b!7102646 () Bool)

(declare-fun e!4269032 () Bool)

(declare-fun tp!1952903 () Bool)

(declare-fun tp!1952904 () Bool)

(assert (=> b!7102646 (= e!4269032 (and tp!1952903 tp!1952904))))

(assert (=> b!7102502 (= tp!1952827 e!4269032)))

(assert (= (and b!7102502 ((_ is Cons!68728) (exprs!7385 auxCtx!45))) b!7102646))

(declare-fun b!7102647 () Bool)

(declare-fun e!4269033 () Bool)

(assert (=> b!7102647 (= e!4269033 tp_is_empty!45015)))

(assert (=> b!7102500 (= tp!1952826 e!4269033)))

(declare-fun b!7102650 () Bool)

(declare-fun tp!1952905 () Bool)

(declare-fun tp!1952907 () Bool)

(assert (=> b!7102650 (= e!4269033 (and tp!1952905 tp!1952907))))

(declare-fun b!7102648 () Bool)

(declare-fun tp!1952906 () Bool)

(declare-fun tp!1952909 () Bool)

(assert (=> b!7102648 (= e!4269033 (and tp!1952906 tp!1952909))))

(declare-fun b!7102649 () Bool)

(declare-fun tp!1952908 () Bool)

(assert (=> b!7102649 (= e!4269033 tp!1952908)))

(assert (= (and b!7102500 ((_ is ElementMatch!17891) (regOne!36294 r!11554))) b!7102647))

(assert (= (and b!7102500 ((_ is Concat!26736) (regOne!36294 r!11554))) b!7102648))

(assert (= (and b!7102500 ((_ is Star!17891) (regOne!36294 r!11554))) b!7102649))

(assert (= (and b!7102500 ((_ is Union!17891) (regOne!36294 r!11554))) b!7102650))

(declare-fun b!7102651 () Bool)

(declare-fun e!4269034 () Bool)

(assert (=> b!7102651 (= e!4269034 tp_is_empty!45015)))

(assert (=> b!7102500 (= tp!1952823 e!4269034)))

(declare-fun b!7102654 () Bool)

(declare-fun tp!1952910 () Bool)

(declare-fun tp!1952912 () Bool)

(assert (=> b!7102654 (= e!4269034 (and tp!1952910 tp!1952912))))

(declare-fun b!7102652 () Bool)

(declare-fun tp!1952911 () Bool)

(declare-fun tp!1952914 () Bool)

(assert (=> b!7102652 (= e!4269034 (and tp!1952911 tp!1952914))))

(declare-fun b!7102653 () Bool)

(declare-fun tp!1952913 () Bool)

(assert (=> b!7102653 (= e!4269034 tp!1952913)))

(assert (= (and b!7102500 ((_ is ElementMatch!17891) (regTwo!36294 r!11554))) b!7102651))

(assert (= (and b!7102500 ((_ is Concat!26736) (regTwo!36294 r!11554))) b!7102652))

(assert (= (and b!7102500 ((_ is Star!17891) (regTwo!36294 r!11554))) b!7102653))

(assert (= (and b!7102500 ((_ is Union!17891) (regTwo!36294 r!11554))) b!7102654))

(declare-fun b_lambda!271319 () Bool)

(assert (= b_lambda!271315 (or b!7102501 b_lambda!271319)))

(declare-fun bs!1884412 () Bool)

(declare-fun d!2218817 () Bool)

(assert (= bs!1884412 (and d!2218817 b!7102501)))

(declare-fun bs!1884413 () Bool)

(assert (= bs!1884413 (and d!2218817 b!7102501 b!7102495)))

(declare-fun lambda!431169 () Int)

(assert (=> bs!1884413 (= lambda!431169 lambda!431157)))

(declare-fun bs!1884414 () Bool)

(assert (= bs!1884414 (and d!2218817 b!7102501 d!2218795)))

(assert (=> bs!1884414 (= lambda!431169 lambda!431165)))

(declare-fun bs!1884415 () Bool)

(assert (= bs!1884415 (and d!2218817 b!7102501 d!2218799)))

(assert (=> bs!1884415 (= lambda!431169 lambda!431166)))

(declare-fun bs!1884416 () Bool)

(assert (= bs!1884416 (and d!2218817 b!7102501 d!2218801)))

(assert (=> bs!1884416 (= lambda!431169 lambda!431167)))

(declare-fun lt!2558330 () Unit!162453)

(assert (=> bs!1884412 (= lt!2558330 (lemmaConcatPreservesForall!1176 (exprs!7385 c!9994) (exprs!7385 auxCtx!45) lambda!431169))))

(assert (=> bs!1884412 (= (dynLambda!28048 lambda!431156 c!9994) (Context!13771 (++!16043 (exprs!7385 c!9994) (exprs!7385 auxCtx!45))))))

(declare-fun m!7827242 () Bool)

(assert (=> bs!1884412 m!7827242))

(assert (=> bs!1884412 m!7827152))

(assert (=> d!2218803 d!2218817))

(check-sat (not b!7102654) (not b!7102644) (not d!2218799) tp_is_empty!45015 (not b!7102649) (not b!7102639) (not b!7102643) (not b!7102623) (not b!7102616) (not b!7102652) (not b!7102641) (not bm!646884) (not d!2218809) (not d!2218801) (not b!7102551) (not b!7102636) (not b!7102650) (not b!7102648) (not bs!1884412) (not b!7102640) (not bm!646882) (not b!7102617) (not b!7102637) (not d!2218813) (not d!2218795) (not d!2218803) (not b!7102653) (not b!7102646) (not b!7102645) (not b!7102635) (not b_lambda!271319) (not d!2218815))
(check-sat)
