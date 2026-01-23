; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668860 () Bool)

(assert start!668860)

(declare-fun b!6977051 () Bool)

(assert (=> b!6977051 true))

(declare-fun b!6977047 () Bool)

(assert (=> b!6977047 true))

(declare-fun b!6977046 () Bool)

(declare-fun e!4193167 () Bool)

(declare-fun tp!1927214 () Bool)

(assert (=> b!6977046 (= e!4193167 tp!1927214)))

(declare-fun lambda!398104 () Int)

(declare-fun e!4193163 () Bool)

(declare-datatypes ((C!34558 0))(
  ( (C!34559 (val!26981 Int)) )
))
(declare-datatypes ((Regex!17144 0))(
  ( (ElementMatch!17144 (c!1293182 C!34558)) (Concat!25989 (regOne!34800 Regex!17144) (regTwo!34800 Regex!17144)) (EmptyExpr!17144) (Star!17144 (reg!17473 Regex!17144)) (EmptyLang!17144) (Union!17144 (regOne!34801 Regex!17144) (regTwo!34801 Regex!17144)) )
))
(declare-datatypes ((List!66977 0))(
  ( (Nil!66853) (Cons!66853 (h!73301 Regex!17144) (t!380720 List!66977)) )
))
(declare-datatypes ((Context!12280 0))(
  ( (Context!12281 (exprs!6640 List!66977)) )
))
(declare-fun lt!2480086 () Context!12280)

(declare-fun z1!570 () (Set Context!12280))

(declare-fun map!15392 ((Set Context!12280) Int) (Set Context!12280))

(assert (=> b!6977047 (= e!4193163 (set.member lt!2480086 (map!15392 z1!570 lambda!398104)))))

(declare-fun b!6977048 () Bool)

(declare-fun e!4193166 () Bool)

(declare-fun tp!1927217 () Bool)

(assert (=> b!6977048 (= e!4193166 tp!1927217)))

(declare-fun b!6977049 () Bool)

(declare-fun res!2844970 () Bool)

(declare-fun e!4193164 () Bool)

(assert (=> b!6977049 (=> (not res!2844970) (not e!4193164))))

(declare-datatypes ((List!66978 0))(
  ( (Nil!66854) (Cons!66854 (h!73302 C!34558) (t!380721 List!66978)) )
))
(declare-fun s!7408 () List!66978)

(assert (=> b!6977049 (= res!2844970 (is-Cons!66854 s!7408))))

(declare-fun b!6977050 () Bool)

(declare-fun e!4193165 () Bool)

(declare-fun tp_is_empty!43513 () Bool)

(declare-fun tp!1927216 () Bool)

(assert (=> b!6977050 (= e!4193165 (and tp_is_empty!43513 tp!1927216))))

(declare-fun res!2844971 () Bool)

(assert (=> start!668860 (=> (not res!2844971) (not e!4193164))))

(declare-fun lt!2480085 () (Set Context!12280))

(declare-fun matchZipper!2684 ((Set Context!12280) List!66978) Bool)

(assert (=> start!668860 (= res!2844971 (matchZipper!2684 lt!2480085 s!7408))))

(declare-fun ct2!306 () Context!12280)

(declare-fun appendTo!265 ((Set Context!12280) Context!12280) (Set Context!12280))

(assert (=> start!668860 (= lt!2480085 (appendTo!265 z1!570 ct2!306))))

(assert (=> start!668860 e!4193164))

(declare-fun condSetEmpty!47348 () Bool)

(assert (=> start!668860 (= condSetEmpty!47348 (= z1!570 (as set.empty (Set Context!12280))))))

(declare-fun setRes!47348 () Bool)

(assert (=> start!668860 setRes!47348))

(declare-fun inv!85720 (Context!12280) Bool)

(assert (=> start!668860 (and (inv!85720 ct2!306) e!4193166)))

(assert (=> start!668860 e!4193165))

(declare-fun setNonEmpty!47348 () Bool)

(declare-fun tp!1927215 () Bool)

(declare-fun setElem!47348 () Context!12280)

(assert (=> setNonEmpty!47348 (= setRes!47348 (and tp!1927215 (inv!85720 setElem!47348) e!4193167))))

(declare-fun setRest!47348 () (Set Context!12280))

(assert (=> setNonEmpty!47348 (= z1!570 (set.union (set.insert setElem!47348 (as set.empty (Set Context!12280))) setRest!47348))))

(assert (=> b!6977051 (= e!4193164 (not e!4193163))))

(declare-fun res!2844972 () Bool)

(assert (=> b!6977051 (=> res!2844972 e!4193163)))

(assert (=> b!6977051 (= res!2844972 (not (matchZipper!2684 (set.insert lt!2480086 (as set.empty (Set Context!12280))) s!7408)))))

(declare-fun lambda!398103 () Int)

(declare-fun getWitness!994 ((Set Context!12280) Int) Context!12280)

(assert (=> b!6977051 (= lt!2480086 (getWitness!994 lt!2480085 lambda!398103))))

(declare-datatypes ((List!66979 0))(
  ( (Nil!66855) (Cons!66855 (h!73303 Context!12280) (t!380722 List!66979)) )
))
(declare-fun lt!2480087 () List!66979)

(declare-fun exists!2883 (List!66979 Int) Bool)

(assert (=> b!6977051 (exists!2883 lt!2480087 lambda!398103)))

(declare-datatypes ((Unit!160936 0))(
  ( (Unit!160937) )
))
(declare-fun lt!2480084 () Unit!160936)

(declare-fun lemmaZipperMatchesExistsMatchingContext!113 (List!66979 List!66978) Unit!160936)

(assert (=> b!6977051 (= lt!2480084 (lemmaZipperMatchesExistsMatchingContext!113 lt!2480087 s!7408))))

(declare-fun toList!10504 ((Set Context!12280)) List!66979)

(assert (=> b!6977051 (= lt!2480087 (toList!10504 lt!2480085))))

(declare-fun setIsEmpty!47348 () Bool)

(assert (=> setIsEmpty!47348 setRes!47348))

(declare-fun b!6977052 () Bool)

(declare-fun res!2844969 () Bool)

(assert (=> b!6977052 (=> res!2844969 e!4193163)))

(assert (=> b!6977052 (= res!2844969 (not (set.member lt!2480086 lt!2480085)))))

(assert (= (and start!668860 res!2844971) b!6977049))

(assert (= (and b!6977049 res!2844970) b!6977051))

(assert (= (and b!6977051 (not res!2844972)) b!6977052))

(assert (= (and b!6977052 (not res!2844969)) b!6977047))

(assert (= (and start!668860 condSetEmpty!47348) setIsEmpty!47348))

(assert (= (and start!668860 (not condSetEmpty!47348)) setNonEmpty!47348))

(assert (= setNonEmpty!47348 b!6977046))

(assert (= start!668860 b!6977048))

(assert (= (and start!668860 (is-Cons!66854 s!7408)) b!6977050))

(declare-fun m!7662388 () Bool)

(assert (=> start!668860 m!7662388))

(declare-fun m!7662390 () Bool)

(assert (=> start!668860 m!7662390))

(declare-fun m!7662392 () Bool)

(assert (=> start!668860 m!7662392))

(declare-fun m!7662394 () Bool)

(assert (=> b!6977051 m!7662394))

(declare-fun m!7662396 () Bool)

(assert (=> b!6977051 m!7662396))

(declare-fun m!7662398 () Bool)

(assert (=> b!6977051 m!7662398))

(declare-fun m!7662400 () Bool)

(assert (=> b!6977051 m!7662400))

(declare-fun m!7662402 () Bool)

(assert (=> b!6977051 m!7662402))

(declare-fun m!7662404 () Bool)

(assert (=> b!6977051 m!7662404))

(assert (=> b!6977051 m!7662394))

(declare-fun m!7662406 () Bool)

(assert (=> b!6977047 m!7662406))

(declare-fun m!7662408 () Bool)

(assert (=> b!6977047 m!7662408))

(declare-fun m!7662410 () Bool)

(assert (=> b!6977052 m!7662410))

(declare-fun m!7662412 () Bool)

(assert (=> setNonEmpty!47348 m!7662412))

(push 1)

(assert (not setNonEmpty!47348))

(assert (not b!6977046))

(assert (not b!6977047))

(assert (not b!6977051))

(assert tp_is_empty!43513)

(assert (not start!668860))

(assert (not b!6977048))

(assert (not b!6977050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172282 () Bool)

(declare-fun lambda!398117 () Int)

(declare-fun forall!16016 (List!66977 Int) Bool)

(assert (=> d!2172282 (= (inv!85720 setElem!47348) (forall!16016 (exprs!6640 setElem!47348) lambda!398117))))

(declare-fun bs!1860078 () Bool)

(assert (= bs!1860078 d!2172282))

(declare-fun m!7662440 () Bool)

(assert (=> bs!1860078 m!7662440))

(assert (=> setNonEmpty!47348 d!2172282))

(declare-fun d!2172284 () Bool)

(declare-fun c!1293192 () Bool)

(declare-fun isEmpty!39037 (List!66978) Bool)

(assert (=> d!2172284 (= c!1293192 (isEmpty!39037 s!7408))))

(declare-fun e!4193185 () Bool)

(assert (=> d!2172284 (= (matchZipper!2684 lt!2480085 s!7408) e!4193185)))

(declare-fun b!6977086 () Bool)

(declare-fun nullableZipper!2381 ((Set Context!12280)) Bool)

(assert (=> b!6977086 (= e!4193185 (nullableZipper!2381 lt!2480085))))

(declare-fun b!6977087 () Bool)

(declare-fun derivationStepZipper!2628 ((Set Context!12280) C!34558) (Set Context!12280))

(declare-fun head!14049 (List!66978) C!34558)

(declare-fun tail!13117 (List!66978) List!66978)

(assert (=> b!6977087 (= e!4193185 (matchZipper!2684 (derivationStepZipper!2628 lt!2480085 (head!14049 s!7408)) (tail!13117 s!7408)))))

(assert (= (and d!2172284 c!1293192) b!6977086))

(assert (= (and d!2172284 (not c!1293192)) b!6977087))

(declare-fun m!7662442 () Bool)

(assert (=> d!2172284 m!7662442))

(declare-fun m!7662444 () Bool)

(assert (=> b!6977086 m!7662444))

(declare-fun m!7662446 () Bool)

(assert (=> b!6977087 m!7662446))

(assert (=> b!6977087 m!7662446))

(declare-fun m!7662448 () Bool)

(assert (=> b!6977087 m!7662448))

(declare-fun m!7662450 () Bool)

(assert (=> b!6977087 m!7662450))

(assert (=> b!6977087 m!7662448))

(assert (=> b!6977087 m!7662450))

(declare-fun m!7662452 () Bool)

(assert (=> b!6977087 m!7662452))

(assert (=> start!668860 d!2172284))

(declare-fun bs!1860079 () Bool)

(declare-fun d!2172286 () Bool)

(assert (= bs!1860079 (and d!2172286 b!6977047)))

(declare-fun lambda!398122 () Int)

(assert (=> bs!1860079 (= lambda!398122 lambda!398104)))

(assert (=> d!2172286 true))

(assert (=> d!2172286 (= (appendTo!265 z1!570 ct2!306) (map!15392 z1!570 lambda!398122))))

(declare-fun bs!1860080 () Bool)

(assert (= bs!1860080 d!2172286))

(declare-fun m!7662454 () Bool)

(assert (=> bs!1860080 m!7662454))

(assert (=> start!668860 d!2172286))

(declare-fun bs!1860081 () Bool)

(declare-fun d!2172288 () Bool)

(assert (= bs!1860081 (and d!2172288 d!2172282)))

(declare-fun lambda!398123 () Int)

(assert (=> bs!1860081 (= lambda!398123 lambda!398117)))

(assert (=> d!2172288 (= (inv!85720 ct2!306) (forall!16016 (exprs!6640 ct2!306) lambda!398123))))

(declare-fun bs!1860082 () Bool)

(assert (= bs!1860082 d!2172288))

(declare-fun m!7662456 () Bool)

(assert (=> bs!1860082 m!7662456))

(assert (=> start!668860 d!2172288))

(declare-fun bs!1860083 () Bool)

(declare-fun d!2172290 () Bool)

(assert (= bs!1860083 (and d!2172290 b!6977051)))

(declare-fun lambda!398126 () Int)

(assert (=> bs!1860083 (= lambda!398126 lambda!398103)))

(assert (=> d!2172290 true))

(assert (=> d!2172290 (exists!2883 lt!2480087 lambda!398126)))

(declare-fun lt!2480106 () Unit!160936)

(declare-fun choose!51933 (List!66979 List!66978) Unit!160936)

(assert (=> d!2172290 (= lt!2480106 (choose!51933 lt!2480087 s!7408))))

(declare-fun content!13163 (List!66979) (Set Context!12280))

(assert (=> d!2172290 (matchZipper!2684 (content!13163 lt!2480087) s!7408)))

(assert (=> d!2172290 (= (lemmaZipperMatchesExistsMatchingContext!113 lt!2480087 s!7408) lt!2480106)))

(declare-fun bs!1860084 () Bool)

(assert (= bs!1860084 d!2172290))

(declare-fun m!7662458 () Bool)

(assert (=> bs!1860084 m!7662458))

(declare-fun m!7662460 () Bool)

(assert (=> bs!1860084 m!7662460))

(declare-fun m!7662462 () Bool)

(assert (=> bs!1860084 m!7662462))

(assert (=> bs!1860084 m!7662462))

(declare-fun m!7662464 () Bool)

(assert (=> bs!1860084 m!7662464))

(assert (=> b!6977051 d!2172290))

(declare-fun bs!1860085 () Bool)

(declare-fun d!2172292 () Bool)

(assert (= bs!1860085 (and d!2172292 b!6977051)))

(declare-fun lambda!398129 () Int)

(assert (=> bs!1860085 (not (= lambda!398129 lambda!398103))))

(declare-fun bs!1860086 () Bool)

(assert (= bs!1860086 (and d!2172292 d!2172290)))

(assert (=> bs!1860086 (not (= lambda!398129 lambda!398126))))

(assert (=> d!2172292 true))

(declare-fun order!27793 () Int)

(declare-fun dynLambda!26665 (Int Int) Int)

(assert (=> d!2172292 (< (dynLambda!26665 order!27793 lambda!398103) (dynLambda!26665 order!27793 lambda!398129))))

(declare-fun forall!16017 (List!66979 Int) Bool)

(assert (=> d!2172292 (= (exists!2883 lt!2480087 lambda!398103) (not (forall!16017 lt!2480087 lambda!398129)))))

(declare-fun bs!1860087 () Bool)

(assert (= bs!1860087 d!2172292))

(declare-fun m!7662466 () Bool)

(assert (=> bs!1860087 m!7662466))

(assert (=> b!6977051 d!2172292))

(declare-fun d!2172296 () Bool)

(declare-fun c!1293196 () Bool)

(assert (=> d!2172296 (= c!1293196 (isEmpty!39037 s!7408))))

(declare-fun e!4193186 () Bool)

(assert (=> d!2172296 (= (matchZipper!2684 (set.insert lt!2480086 (as set.empty (Set Context!12280))) s!7408) e!4193186)))

(declare-fun b!6977090 () Bool)

(assert (=> b!6977090 (= e!4193186 (nullableZipper!2381 (set.insert lt!2480086 (as set.empty (Set Context!12280)))))))

(declare-fun b!6977091 () Bool)

(assert (=> b!6977091 (= e!4193186 (matchZipper!2684 (derivationStepZipper!2628 (set.insert lt!2480086 (as set.empty (Set Context!12280))) (head!14049 s!7408)) (tail!13117 s!7408)))))

(assert (= (and d!2172296 c!1293196) b!6977090))

(assert (= (and d!2172296 (not c!1293196)) b!6977091))

(assert (=> d!2172296 m!7662442))

(assert (=> b!6977090 m!7662394))

(declare-fun m!7662468 () Bool)

(assert (=> b!6977090 m!7662468))

(assert (=> b!6977091 m!7662446))

(assert (=> b!6977091 m!7662394))

(assert (=> b!6977091 m!7662446))

(declare-fun m!7662470 () Bool)

(assert (=> b!6977091 m!7662470))

(assert (=> b!6977091 m!7662450))

(assert (=> b!6977091 m!7662470))

(assert (=> b!6977091 m!7662450))

(declare-fun m!7662472 () Bool)

(assert (=> b!6977091 m!7662472))

(assert (=> b!6977051 d!2172296))

(declare-fun d!2172298 () Bool)

(declare-fun e!4193189 () Bool)

(assert (=> d!2172298 e!4193189))

(declare-fun res!2844989 () Bool)

(assert (=> d!2172298 (=> (not res!2844989) (not e!4193189))))

(declare-fun lt!2480109 () List!66979)

(declare-fun noDuplicate!2473 (List!66979) Bool)

(assert (=> d!2172298 (= res!2844989 (noDuplicate!2473 lt!2480109))))

(declare-fun choose!51934 ((Set Context!12280)) List!66979)

(assert (=> d!2172298 (= lt!2480109 (choose!51934 lt!2480085))))

(assert (=> d!2172298 (= (toList!10504 lt!2480085) lt!2480109)))

(declare-fun b!6977094 () Bool)

(assert (=> b!6977094 (= e!4193189 (= (content!13163 lt!2480109) lt!2480085))))

(assert (= (and d!2172298 res!2844989) b!6977094))

(declare-fun m!7662474 () Bool)

(assert (=> d!2172298 m!7662474))

(declare-fun m!7662476 () Bool)

(assert (=> d!2172298 m!7662476))

(declare-fun m!7662478 () Bool)

(assert (=> b!6977094 m!7662478))

(assert (=> b!6977051 d!2172298))

(declare-fun d!2172300 () Bool)

(declare-fun e!4193194 () Bool)

(assert (=> d!2172300 e!4193194))

(declare-fun res!2844992 () Bool)

(assert (=> d!2172300 (=> (not res!2844992) (not e!4193194))))

(declare-fun lt!2480112 () Context!12280)

(declare-fun dynLambda!26666 (Int Context!12280) Bool)

(assert (=> d!2172300 (= res!2844992 (dynLambda!26666 lambda!398103 lt!2480112))))

(declare-fun getWitness!996 (List!66979 Int) Context!12280)

(assert (=> d!2172300 (= lt!2480112 (getWitness!996 (toList!10504 lt!2480085) lambda!398103))))

(declare-fun exists!2885 ((Set Context!12280) Int) Bool)

(assert (=> d!2172300 (exists!2885 lt!2480085 lambda!398103)))

(assert (=> d!2172300 (= (getWitness!994 lt!2480085 lambda!398103) lt!2480112)))

(declare-fun b!6977101 () Bool)

(assert (=> b!6977101 (= e!4193194 (set.member lt!2480112 lt!2480085))))

(assert (= (and d!2172300 res!2844992) b!6977101))

(declare-fun b_lambda!261045 () Bool)

(assert (=> (not b_lambda!261045) (not d!2172300)))

(declare-fun m!7662480 () Bool)

(assert (=> d!2172300 m!7662480))

(assert (=> d!2172300 m!7662404))

(assert (=> d!2172300 m!7662404))

(declare-fun m!7662482 () Bool)

(assert (=> d!2172300 m!7662482))

(declare-fun m!7662484 () Bool)

(assert (=> d!2172300 m!7662484))

(declare-fun m!7662486 () Bool)

(assert (=> b!6977101 m!7662486))

(assert (=> b!6977051 d!2172300))

(declare-fun d!2172302 () Bool)

(declare-fun choose!51935 ((Set Context!12280) Int) (Set Context!12280))

(assert (=> d!2172302 (= (map!15392 z1!570 lambda!398104) (choose!51935 z1!570 lambda!398104))))

(declare-fun bs!1860088 () Bool)

(assert (= bs!1860088 d!2172302))

(declare-fun m!7662488 () Bool)

(assert (=> bs!1860088 m!7662488))

(assert (=> b!6977047 d!2172302))

(declare-fun b!6977108 () Bool)

(declare-fun e!4193198 () Bool)

(declare-fun tp!1927232 () Bool)

(assert (=> b!6977108 (= e!4193198 (and tp_is_empty!43513 tp!1927232))))

(assert (=> b!6977050 (= tp!1927216 e!4193198)))

(assert (= (and b!6977050 (is-Cons!66854 (t!380721 s!7408))) b!6977108))

(declare-fun condSetEmpty!47354 () Bool)

(assert (=> setNonEmpty!47348 (= condSetEmpty!47354 (= setRest!47348 (as set.empty (Set Context!12280))))))

(declare-fun setRes!47354 () Bool)

(assert (=> setNonEmpty!47348 (= tp!1927215 setRes!47354)))

(declare-fun setIsEmpty!47354 () Bool)

(assert (=> setIsEmpty!47354 setRes!47354))

(declare-fun e!4193201 () Bool)

(declare-fun setElem!47354 () Context!12280)

(declare-fun setNonEmpty!47354 () Bool)

(declare-fun tp!1927238 () Bool)

(assert (=> setNonEmpty!47354 (= setRes!47354 (and tp!1927238 (inv!85720 setElem!47354) e!4193201))))

(declare-fun setRest!47354 () (Set Context!12280))

(assert (=> setNonEmpty!47354 (= setRest!47348 (set.union (set.insert setElem!47354 (as set.empty (Set Context!12280))) setRest!47354))))

(declare-fun b!6977113 () Bool)

(declare-fun tp!1927237 () Bool)

(assert (=> b!6977113 (= e!4193201 tp!1927237)))

(assert (= (and setNonEmpty!47348 condSetEmpty!47354) setIsEmpty!47354))

(assert (= (and setNonEmpty!47348 (not condSetEmpty!47354)) setNonEmpty!47354))

(assert (= setNonEmpty!47354 b!6977113))

(declare-fun m!7662502 () Bool)

(assert (=> setNonEmpty!47354 m!7662502))

(declare-fun b!6977118 () Bool)

(declare-fun e!4193204 () Bool)

(declare-fun tp!1927243 () Bool)

(declare-fun tp!1927244 () Bool)

(assert (=> b!6977118 (= e!4193204 (and tp!1927243 tp!1927244))))

(assert (=> b!6977048 (= tp!1927217 e!4193204)))

(assert (= (and b!6977048 (is-Cons!66853 (exprs!6640 ct2!306))) b!6977118))

(declare-fun b!6977119 () Bool)

(declare-fun e!4193205 () Bool)

(declare-fun tp!1927245 () Bool)

(declare-fun tp!1927246 () Bool)

(assert (=> b!6977119 (= e!4193205 (and tp!1927245 tp!1927246))))

(assert (=> b!6977046 (= tp!1927214 e!4193205)))

(assert (= (and b!6977046 (is-Cons!66853 (exprs!6640 setElem!47348))) b!6977119))

(declare-fun b_lambda!261047 () Bool)

(assert (= b_lambda!261045 (or b!6977051 b_lambda!261047)))

(declare-fun bs!1860089 () Bool)

(declare-fun d!2172306 () Bool)

(assert (= bs!1860089 (and d!2172306 b!6977051)))

(assert (=> bs!1860089 (= (dynLambda!26666 lambda!398103 lt!2480112) (matchZipper!2684 (set.insert lt!2480112 (as set.empty (Set Context!12280))) s!7408))))

(declare-fun m!7662504 () Bool)

(assert (=> bs!1860089 m!7662504))

(assert (=> bs!1860089 m!7662504))

(declare-fun m!7662506 () Bool)

(assert (=> bs!1860089 m!7662506))

(assert (=> d!2172300 d!2172306))

(push 1)

(assert (not b!6977119))

(assert (not bs!1860089))

(assert (not b!6977091))

(assert (not b_lambda!261047))

(assert (not b!6977108))

(assert (not d!2172298))

(assert (not b!6977087))

(assert (not d!2172286))

(assert (not d!2172302))

(assert (not d!2172290))

(assert (not setNonEmpty!47354))

(assert (not d!2172292))

(assert (not d!2172300))

(assert (not b!6977113))

(assert (not b!6977094))

(assert tp_is_empty!43513)

(assert (not b!6977118))

(assert (not d!2172284))

(assert (not d!2172296))

(assert (not d!2172288))

(assert (not b!6977090))

(assert (not b!6977086))

(assert (not d!2172282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

