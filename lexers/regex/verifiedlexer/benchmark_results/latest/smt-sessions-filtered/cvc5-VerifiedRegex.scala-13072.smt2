; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715680 () Bool)

(assert start!715680)

(declare-fun res!2962326 () Bool)

(declare-fun e!4388954 () Bool)

(assert (=> start!715680 (=> (not res!2962326) (not e!4388954))))

(declare-datatypes ((C!38338 0))(
  ( (C!38339 (val!29529 Int)) )
))
(declare-datatypes ((Regex!19032 0))(
  ( (ElementMatch!19032 (c!1360812 C!38338)) (Concat!27877 (regOne!38576 Regex!19032) (regTwo!38576 Regex!19032)) (EmptyExpr!19032) (Star!19032 (reg!19361 Regex!19032)) (EmptyLang!19032) (Union!19032 (regOne!38577 Regex!19032) (regTwo!38577 Regex!19032)) )
))
(declare-datatypes ((List!71528 0))(
  ( (Nil!71404) (Cons!71404 (h!77852 Regex!19032) (t!385915 List!71528)) )
))
(declare-datatypes ((Context!15944 0))(
  ( (Context!15945 (exprs!8472 List!71528)) )
))
(declare-fun cWitness!35 () Context!15944)

(declare-fun ct1!256 () Context!15944)

(declare-fun c!10305 () C!38338)

(declare-fun derivationStepZipperUp!2712 (Context!15944 C!38338) (Set Context!15944))

(assert (=> start!715680 (= res!2962326 (set.member cWitness!35 (derivationStepZipperUp!2712 ct1!256 c!10305)))))

(assert (=> start!715680 e!4388954))

(declare-fun e!4388950 () Bool)

(declare-fun inv!90921 (Context!15944) Bool)

(assert (=> start!715680 (and (inv!90921 cWitness!35) e!4388950)))

(declare-fun e!4388953 () Bool)

(assert (=> start!715680 (and (inv!90921 ct1!256) e!4388953)))

(declare-fun tp_is_empty!48309 () Bool)

(assert (=> start!715680 tp_is_empty!48309))

(declare-fun ct2!352 () Context!15944)

(declare-fun e!4388952 () Bool)

(assert (=> start!715680 (and (inv!90921 ct2!352) e!4388952)))

(declare-fun b!7329680 () Bool)

(declare-fun tp!2081178 () Bool)

(assert (=> b!7329680 (= e!4388950 tp!2081178)))

(declare-fun b!7329681 () Bool)

(declare-fun e!4388951 () Bool)

(declare-fun isEmpty!40944 (List!71528) Bool)

(assert (=> b!7329681 (= e!4388951 (isEmpty!40944 (exprs!8472 ct1!256)))))

(declare-fun b!7329682 () Bool)

(declare-fun tp!2081179 () Bool)

(assert (=> b!7329682 (= e!4388952 tp!2081179)))

(declare-fun b!7329683 () Bool)

(declare-fun tp!2081180 () Bool)

(assert (=> b!7329683 (= e!4388953 tp!2081180)))

(declare-fun b!7329684 () Bool)

(assert (=> b!7329684 (= e!4388954 e!4388951)))

(declare-fun res!2962325 () Bool)

(assert (=> b!7329684 (=> (not res!2962325) (not e!4388951))))

(assert (=> b!7329684 (= res!2962325 (is-Cons!71404 (exprs!8472 ct1!256)))))

(declare-fun lt!2607351 () List!71528)

(declare-fun ++!16854 (List!71528 List!71528) List!71528)

(assert (=> b!7329684 (= lt!2607351 (++!16854 (exprs!8472 ct1!256) (exprs!8472 ct2!352)))))

(declare-datatypes ((Unit!165025 0))(
  ( (Unit!165026) )
))
(declare-fun lt!2607352 () Unit!165025)

(declare-fun lambda!454526 () Int)

(declare-fun lemmaConcatPreservesForall!1711 (List!71528 List!71528 Int) Unit!165025)

(assert (=> b!7329684 (= lt!2607352 (lemmaConcatPreservesForall!1711 (exprs!8472 ct1!256) (exprs!8472 ct2!352) lambda!454526))))

(assert (= (and start!715680 res!2962326) b!7329684))

(assert (= (and b!7329684 res!2962325) b!7329681))

(assert (= start!715680 b!7329680))

(assert (= start!715680 b!7329683))

(assert (= start!715680 b!7329682))

(declare-fun m!7995678 () Bool)

(assert (=> start!715680 m!7995678))

(declare-fun m!7995680 () Bool)

(assert (=> start!715680 m!7995680))

(declare-fun m!7995682 () Bool)

(assert (=> start!715680 m!7995682))

(declare-fun m!7995684 () Bool)

(assert (=> start!715680 m!7995684))

(declare-fun m!7995686 () Bool)

(assert (=> start!715680 m!7995686))

(declare-fun m!7995688 () Bool)

(assert (=> b!7329681 m!7995688))

(declare-fun m!7995690 () Bool)

(assert (=> b!7329684 m!7995690))

(declare-fun m!7995692 () Bool)

(assert (=> b!7329684 m!7995692))

(push 1)

(assert (not b!7329684))

(assert (not b!7329683))

(assert (not start!715680))

(assert (not b!7329681))

(assert (not b!7329682))

(assert tp_is_empty!48309)

(assert (not b!7329680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276133 () Bool)

(assert (=> d!2276133 (= (isEmpty!40944 (exprs!8472 ct1!256)) (is-Nil!71404 (exprs!8472 ct1!256)))))

(assert (=> b!7329681 d!2276133))

(declare-fun b!7329708 () Bool)

(declare-fun e!4388974 () List!71528)

(assert (=> b!7329708 (= e!4388974 (exprs!8472 ct2!352))))

(declare-fun e!4388975 () Bool)

(declare-fun lt!2607361 () List!71528)

(declare-fun b!7329711 () Bool)

(assert (=> b!7329711 (= e!4388975 (or (not (= (exprs!8472 ct2!352) Nil!71404)) (= lt!2607361 (exprs!8472 ct1!256))))))

(declare-fun d!2276135 () Bool)

(assert (=> d!2276135 e!4388975))

(declare-fun res!2962337 () Bool)

(assert (=> d!2276135 (=> (not res!2962337) (not e!4388975))))

(declare-fun content!14965 (List!71528) (Set Regex!19032))

(assert (=> d!2276135 (= res!2962337 (= (content!14965 lt!2607361) (set.union (content!14965 (exprs!8472 ct1!256)) (content!14965 (exprs!8472 ct2!352)))))))

(assert (=> d!2276135 (= lt!2607361 e!4388974)))

(declare-fun c!1360816 () Bool)

(assert (=> d!2276135 (= c!1360816 (is-Nil!71404 (exprs!8472 ct1!256)))))

(assert (=> d!2276135 (= (++!16854 (exprs!8472 ct1!256) (exprs!8472 ct2!352)) lt!2607361)))

(declare-fun b!7329709 () Bool)

(assert (=> b!7329709 (= e!4388974 (Cons!71404 (h!77852 (exprs!8472 ct1!256)) (++!16854 (t!385915 (exprs!8472 ct1!256)) (exprs!8472 ct2!352))))))

(declare-fun b!7329710 () Bool)

(declare-fun res!2962338 () Bool)

(assert (=> b!7329710 (=> (not res!2962338) (not e!4388975))))

(declare-fun size!41944 (List!71528) Int)

(assert (=> b!7329710 (= res!2962338 (= (size!41944 lt!2607361) (+ (size!41944 (exprs!8472 ct1!256)) (size!41944 (exprs!8472 ct2!352)))))))

(assert (= (and d!2276135 c!1360816) b!7329708))

(assert (= (and d!2276135 (not c!1360816)) b!7329709))

(assert (= (and d!2276135 res!2962337) b!7329710))

(assert (= (and b!7329710 res!2962338) b!7329711))

(declare-fun m!7995710 () Bool)

(assert (=> d!2276135 m!7995710))

(declare-fun m!7995712 () Bool)

(assert (=> d!2276135 m!7995712))

(declare-fun m!7995714 () Bool)

(assert (=> d!2276135 m!7995714))

(declare-fun m!7995716 () Bool)

(assert (=> b!7329709 m!7995716))

(declare-fun m!7995718 () Bool)

(assert (=> b!7329710 m!7995718))

(declare-fun m!7995720 () Bool)

(assert (=> b!7329710 m!7995720))

(declare-fun m!7995722 () Bool)

(assert (=> b!7329710 m!7995722))

(assert (=> b!7329684 d!2276135))

(declare-fun d!2276139 () Bool)

(declare-fun forall!17874 (List!71528 Int) Bool)

(assert (=> d!2276139 (forall!17874 (++!16854 (exprs!8472 ct1!256) (exprs!8472 ct2!352)) lambda!454526)))

(declare-fun lt!2607364 () Unit!165025)

(declare-fun choose!57011 (List!71528 List!71528 Int) Unit!165025)

(assert (=> d!2276139 (= lt!2607364 (choose!57011 (exprs!8472 ct1!256) (exprs!8472 ct2!352) lambda!454526))))

(assert (=> d!2276139 (forall!17874 (exprs!8472 ct1!256) lambda!454526)))

(assert (=> d!2276139 (= (lemmaConcatPreservesForall!1711 (exprs!8472 ct1!256) (exprs!8472 ct2!352) lambda!454526) lt!2607364)))

(declare-fun bs!1917179 () Bool)

(assert (= bs!1917179 d!2276139))

(assert (=> bs!1917179 m!7995690))

(assert (=> bs!1917179 m!7995690))

(declare-fun m!7995724 () Bool)

(assert (=> bs!1917179 m!7995724))

(declare-fun m!7995726 () Bool)

(assert (=> bs!1917179 m!7995726))

(declare-fun m!7995728 () Bool)

(assert (=> bs!1917179 m!7995728))

(assert (=> b!7329684 d!2276139))

(declare-fun bm!667521 () Bool)

(declare-fun call!667526 () (Set Context!15944))

(declare-fun derivationStepZipperDown!2859 (Regex!19032 Context!15944 C!38338) (Set Context!15944))

(assert (=> bm!667521 (= call!667526 (derivationStepZipperDown!2859 (h!77852 (exprs!8472 ct1!256)) (Context!15945 (t!385915 (exprs!8472 ct1!256))) c!10305))))

(declare-fun b!7329732 () Bool)

(declare-fun e!4388988 () (Set Context!15944))

(assert (=> b!7329732 (= e!4388988 call!667526)))

(declare-fun b!7329733 () Bool)

(declare-fun e!4388990 () (Set Context!15944))

(assert (=> b!7329733 (= e!4388990 e!4388988)))

(declare-fun c!1360825 () Bool)

(assert (=> b!7329733 (= c!1360825 (is-Cons!71404 (exprs!8472 ct1!256)))))

(declare-fun b!7329734 () Bool)

(assert (=> b!7329734 (= e!4388988 (as set.empty (Set Context!15944)))))

(declare-fun b!7329735 () Bool)

(declare-fun e!4388989 () Bool)

(declare-fun nullable!8133 (Regex!19032) Bool)

(assert (=> b!7329735 (= e!4388989 (nullable!8133 (h!77852 (exprs!8472 ct1!256))))))

(declare-fun b!7329736 () Bool)

(assert (=> b!7329736 (= e!4388990 (set.union call!667526 (derivationStepZipperUp!2712 (Context!15945 (t!385915 (exprs!8472 ct1!256))) c!10305)))))

(declare-fun d!2276141 () Bool)

(declare-fun c!1360826 () Bool)

(assert (=> d!2276141 (= c!1360826 e!4388989)))

(declare-fun res!2962343 () Bool)

(assert (=> d!2276141 (=> (not res!2962343) (not e!4388989))))

(assert (=> d!2276141 (= res!2962343 (is-Cons!71404 (exprs!8472 ct1!256)))))

(assert (=> d!2276141 (= (derivationStepZipperUp!2712 ct1!256 c!10305) e!4388990)))

(assert (= (and d!2276141 res!2962343) b!7329735))

(assert (= (and d!2276141 c!1360826) b!7329736))

(assert (= (and d!2276141 (not c!1360826)) b!7329733))

(assert (= (and b!7329733 c!1360825) b!7329732))

(assert (= (and b!7329733 (not c!1360825)) b!7329734))

(assert (= (or b!7329736 b!7329732) bm!667521))

(declare-fun m!7995730 () Bool)

(assert (=> bm!667521 m!7995730))

(declare-fun m!7995732 () Bool)

(assert (=> b!7329735 m!7995732))

(declare-fun m!7995734 () Bool)

(assert (=> b!7329736 m!7995734))

(assert (=> start!715680 d!2276141))

(declare-fun bs!1917180 () Bool)

(declare-fun d!2276143 () Bool)

(assert (= bs!1917180 (and d!2276143 b!7329684)))

(declare-fun lambda!454532 () Int)

(assert (=> bs!1917180 (= lambda!454532 lambda!454526)))

(assert (=> d!2276143 (= (inv!90921 cWitness!35) (forall!17874 (exprs!8472 cWitness!35) lambda!454532))))

(declare-fun bs!1917181 () Bool)

(assert (= bs!1917181 d!2276143))

(declare-fun m!7995736 () Bool)

(assert (=> bs!1917181 m!7995736))

(assert (=> start!715680 d!2276143))

(declare-fun bs!1917182 () Bool)

(declare-fun d!2276145 () Bool)

(assert (= bs!1917182 (and d!2276145 b!7329684)))

(declare-fun lambda!454533 () Int)

(assert (=> bs!1917182 (= lambda!454533 lambda!454526)))

(declare-fun bs!1917183 () Bool)

(assert (= bs!1917183 (and d!2276145 d!2276143)))

(assert (=> bs!1917183 (= lambda!454533 lambda!454532)))

(assert (=> d!2276145 (= (inv!90921 ct1!256) (forall!17874 (exprs!8472 ct1!256) lambda!454533))))

(declare-fun bs!1917184 () Bool)

(assert (= bs!1917184 d!2276145))

(declare-fun m!7995738 () Bool)

(assert (=> bs!1917184 m!7995738))

(assert (=> start!715680 d!2276145))

(declare-fun bs!1917185 () Bool)

(declare-fun d!2276147 () Bool)

(assert (= bs!1917185 (and d!2276147 b!7329684)))

(declare-fun lambda!454534 () Int)

(assert (=> bs!1917185 (= lambda!454534 lambda!454526)))

(declare-fun bs!1917186 () Bool)

(assert (= bs!1917186 (and d!2276147 d!2276143)))

(assert (=> bs!1917186 (= lambda!454534 lambda!454532)))

(declare-fun bs!1917187 () Bool)

(assert (= bs!1917187 (and d!2276147 d!2276145)))

(assert (=> bs!1917187 (= lambda!454534 lambda!454533)))

(assert (=> d!2276147 (= (inv!90921 ct2!352) (forall!17874 (exprs!8472 ct2!352) lambda!454534))))

(declare-fun bs!1917188 () Bool)

(assert (= bs!1917188 d!2276147))

(declare-fun m!7995746 () Bool)

(assert (=> bs!1917188 m!7995746))

(assert (=> start!715680 d!2276147))

(declare-fun b!7329746 () Bool)

(declare-fun e!4388996 () Bool)

(declare-fun tp!2081194 () Bool)

(declare-fun tp!2081195 () Bool)

(assert (=> b!7329746 (= e!4388996 (and tp!2081194 tp!2081195))))

(assert (=> b!7329680 (= tp!2081178 e!4388996)))

(assert (= (and b!7329680 (is-Cons!71404 (exprs!8472 cWitness!35))) b!7329746))

(declare-fun b!7329747 () Bool)

(declare-fun e!4388997 () Bool)

(declare-fun tp!2081196 () Bool)

(declare-fun tp!2081197 () Bool)

(assert (=> b!7329747 (= e!4388997 (and tp!2081196 tp!2081197))))

(assert (=> b!7329683 (= tp!2081180 e!4388997)))

(assert (= (and b!7329683 (is-Cons!71404 (exprs!8472 ct1!256))) b!7329747))

(declare-fun b!7329748 () Bool)

(declare-fun e!4388998 () Bool)

(declare-fun tp!2081198 () Bool)

(declare-fun tp!2081199 () Bool)

(assert (=> b!7329748 (= e!4388998 (and tp!2081198 tp!2081199))))

(assert (=> b!7329682 (= tp!2081179 e!4388998)))

(assert (= (and b!7329682 (is-Cons!71404 (exprs!8472 ct2!352))) b!7329748))

(push 1)

(assert (not b!7329710))

(assert (not b!7329748))

(assert (not d!2276139))

(assert (not b!7329735))

(assert (not d!2276135))

(assert (not b!7329709))

(assert (not b!7329746))

(assert (not bm!667521))

(assert tp_is_empty!48309)

(assert (not b!7329736))

(assert (not d!2276145))

(assert (not d!2276147))

(assert (not d!2276143))

(assert (not b!7329747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

