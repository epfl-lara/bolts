; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!574920 () Bool)

(assert start!574920)

(declare-fun b!5505199 () Bool)

(assert (=> b!5505199 true))

(assert (=> b!5505199 true))

(declare-fun lambda!294759 () Int)

(declare-fun lambda!294758 () Int)

(assert (=> b!5505199 (not (= lambda!294759 lambda!294758))))

(assert (=> b!5505199 true))

(assert (=> b!5505199 true))

(declare-fun b!5505189 () Bool)

(declare-fun e!3405060 () Bool)

(declare-fun tp!1514770 () Bool)

(declare-fun tp!1514769 () Bool)

(assert (=> b!5505189 (= e!3405060 (and tp!1514770 tp!1514769))))

(declare-fun b!5505190 () Bool)

(declare-fun res!2346158 () Bool)

(declare-fun e!3405057 () Bool)

(assert (=> b!5505190 (=> res!2346158 e!3405057)))

(declare-datatypes ((C!31238 0))(
  ( (C!31239 (val!25321 Int)) )
))
(declare-datatypes ((Regex!15484 0))(
  ( (ElementMatch!15484 (c!961864 C!31238)) (Concat!24329 (regOne!31480 Regex!15484) (regTwo!31480 Regex!15484)) (EmptyExpr!15484) (Star!15484 (reg!15813 Regex!15484)) (EmptyLang!15484) (Union!15484 (regOne!31481 Regex!15484) (regTwo!31481 Regex!15484)) )
))
(declare-datatypes ((List!62751 0))(
  ( (Nil!62627) (Cons!62627 (h!69075 Regex!15484) (t!375992 List!62751)) )
))
(declare-datatypes ((Context!9736 0))(
  ( (Context!9737 (exprs!5368 List!62751)) )
))
(declare-datatypes ((List!62752 0))(
  ( (Nil!62628) (Cons!62628 (h!69076 Context!9736) (t!375993 List!62752)) )
))
(declare-fun zl!343 () List!62752)

(assert (=> b!5505190 (= res!2346158 (not (is-Cons!62627 (exprs!5368 (h!69076 zl!343)))))))

(declare-fun b!5505191 () Bool)

(declare-fun res!2346154 () Bool)

(assert (=> b!5505191 (=> res!2346154 e!3405057)))

(declare-fun r!7292 () Regex!15484)

(assert (=> b!5505191 (= res!2346154 (or (is-EmptyExpr!15484 r!7292) (is-EmptyLang!15484 r!7292) (is-ElementMatch!15484 r!7292) (is-Union!15484 r!7292) (not (is-Concat!24329 r!7292))))))

(declare-fun b!5505192 () Bool)

(declare-fun res!2346155 () Bool)

(assert (=> b!5505192 (=> res!2346155 e!3405057)))

(declare-fun generalisedConcat!1099 (List!62751) Regex!15484)

(assert (=> b!5505192 (= res!2346155 (not (= r!7292 (generalisedConcat!1099 (exprs!5368 (h!69076 zl!343))))))))

(declare-fun b!5505193 () Bool)

(declare-fun res!2346157 () Bool)

(declare-fun e!3405063 () Bool)

(assert (=> b!5505193 (=> (not res!2346157) (not e!3405063))))

(declare-fun unfocusZipper!1226 (List!62752) Regex!15484)

(assert (=> b!5505193 (= res!2346157 (= r!7292 (unfocusZipper!1226 zl!343)))))

(declare-fun b!5505194 () Bool)

(declare-fun res!2346152 () Bool)

(assert (=> b!5505194 (=> (not res!2346152) (not e!3405063))))

(declare-fun z!1189 () (Set Context!9736))

(declare-fun toList!9268 ((Set Context!9736)) List!62752)

(assert (=> b!5505194 (= res!2346152 (= (toList!9268 z!1189) zl!343))))

(declare-fun res!2346153 () Bool)

(assert (=> start!574920 (=> (not res!2346153) (not e!3405063))))

(declare-fun validRegex!7220 (Regex!15484) Bool)

(assert (=> start!574920 (= res!2346153 (validRegex!7220 r!7292))))

(assert (=> start!574920 e!3405063))

(assert (=> start!574920 e!3405060))

(declare-fun condSetEmpty!36520 () Bool)

(assert (=> start!574920 (= condSetEmpty!36520 (= z!1189 (as set.empty (Set Context!9736))))))

(declare-fun setRes!36520 () Bool)

(assert (=> start!574920 setRes!36520))

(declare-fun e!3405062 () Bool)

(assert (=> start!574920 e!3405062))

(declare-fun e!3405061 () Bool)

(assert (=> start!574920 e!3405061))

(declare-fun b!5505195 () Bool)

(declare-fun tp_is_empty!40221 () Bool)

(assert (=> b!5505195 (= e!3405060 tp_is_empty!40221)))

(declare-fun tp!1514777 () Bool)

(declare-fun b!5505196 () Bool)

(declare-fun e!3405058 () Bool)

(declare-fun inv!81958 (Context!9736) Bool)

(assert (=> b!5505196 (= e!3405062 (and (inv!81958 (h!69076 zl!343)) e!3405058 tp!1514777))))

(declare-fun b!5505197 () Bool)

(declare-fun tp!1514771 () Bool)

(declare-fun tp!1514775 () Bool)

(assert (=> b!5505197 (= e!3405060 (and tp!1514771 tp!1514775))))

(declare-fun b!5505198 () Bool)

(declare-fun res!2346156 () Bool)

(assert (=> b!5505198 (=> res!2346156 e!3405057)))

(declare-fun isEmpty!34408 (List!62752) Bool)

(assert (=> b!5505198 (= res!2346156 (not (isEmpty!34408 (t!375993 zl!343))))))

(declare-fun lt!2244198 () Bool)

(declare-fun lt!2244196 () Bool)

(assert (=> b!5505199 (= e!3405057 (= lt!2244198 lt!2244196))))

(declare-fun Exists!2584 (Int) Bool)

(assert (=> b!5505199 (= (Exists!2584 lambda!294758) (Exists!2584 lambda!294759))))

(declare-datatypes ((Unit!155428 0))(
  ( (Unit!155429) )
))
(declare-fun lt!2244195 () Unit!155428)

(declare-datatypes ((List!62753 0))(
  ( (Nil!62629) (Cons!62629 (h!69077 C!31238) (t!375994 List!62753)) )
))
(declare-fun s!2326 () List!62753)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1213 (Regex!15484 Regex!15484 List!62753) Unit!155428)

(assert (=> b!5505199 (= lt!2244195 (lemmaExistCutMatchRandMatchRSpecEquivalent!1213 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326))))

(assert (=> b!5505199 (= lt!2244196 (Exists!2584 lambda!294758))))

(declare-datatypes ((tuple2!65162 0))(
  ( (tuple2!65163 (_1!35884 List!62753) (_2!35884 List!62753)) )
))
(declare-datatypes ((Option!15493 0))(
  ( (None!15492) (Some!15492 (v!51527 tuple2!65162)) )
))
(declare-fun isDefined!12196 (Option!15493) Bool)

(declare-fun findConcatSeparation!1907 (Regex!15484 Regex!15484 List!62753 List!62753 List!62753) Option!15493)

(assert (=> b!5505199 (= lt!2244196 (isDefined!12196 (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) Nil!62629 s!2326 s!2326)))))

(declare-fun lt!2244197 () Unit!155428)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1671 (Regex!15484 Regex!15484 List!62753) Unit!155428)

(assert (=> b!5505199 (= lt!2244197 (lemmaFindConcatSeparationEquivalentToExists!1671 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326))))

(declare-fun b!5505200 () Bool)

(declare-fun tp!1514776 () Bool)

(assert (=> b!5505200 (= e!3405061 (and tp_is_empty!40221 tp!1514776))))

(declare-fun b!5505201 () Bool)

(declare-fun tp!1514772 () Bool)

(assert (=> b!5505201 (= e!3405060 tp!1514772)))

(declare-fun e!3405059 () Bool)

(declare-fun setElem!36520 () Context!9736)

(declare-fun setNonEmpty!36520 () Bool)

(declare-fun tp!1514774 () Bool)

(assert (=> setNonEmpty!36520 (= setRes!36520 (and tp!1514774 (inv!81958 setElem!36520) e!3405059))))

(declare-fun setRest!36520 () (Set Context!9736))

(assert (=> setNonEmpty!36520 (= z!1189 (set.union (set.insert setElem!36520 (as set.empty (Set Context!9736))) setRest!36520))))

(declare-fun b!5505202 () Bool)

(declare-fun tp!1514768 () Bool)

(assert (=> b!5505202 (= e!3405059 tp!1514768)))

(declare-fun b!5505203 () Bool)

(declare-fun res!2346159 () Bool)

(assert (=> b!5505203 (=> res!2346159 e!3405057)))

(declare-fun generalisedUnion!1347 (List!62751) Regex!15484)

(declare-fun unfocusZipperList!912 (List!62752) List!62751)

(assert (=> b!5505203 (= res!2346159 (not (= r!7292 (generalisedUnion!1347 (unfocusZipperList!912 zl!343)))))))

(declare-fun setIsEmpty!36520 () Bool)

(assert (=> setIsEmpty!36520 setRes!36520))

(declare-fun b!5505204 () Bool)

(assert (=> b!5505204 (= e!3405063 (not e!3405057))))

(declare-fun res!2346151 () Bool)

(assert (=> b!5505204 (=> res!2346151 e!3405057)))

(assert (=> b!5505204 (= res!2346151 (not (is-Cons!62628 zl!343)))))

(declare-fun matchRSpec!2587 (Regex!15484 List!62753) Bool)

(assert (=> b!5505204 (= lt!2244198 (matchRSpec!2587 r!7292 s!2326))))

(declare-fun matchR!7669 (Regex!15484 List!62753) Bool)

(assert (=> b!5505204 (= lt!2244198 (matchR!7669 r!7292 s!2326))))

(declare-fun lt!2244194 () Unit!155428)

(declare-fun mainMatchTheorem!2587 (Regex!15484 List!62753) Unit!155428)

(assert (=> b!5505204 (= lt!2244194 (mainMatchTheorem!2587 r!7292 s!2326))))

(declare-fun b!5505205 () Bool)

(declare-fun tp!1514773 () Bool)

(assert (=> b!5505205 (= e!3405058 tp!1514773)))

(assert (= (and start!574920 res!2346153) b!5505194))

(assert (= (and b!5505194 res!2346152) b!5505193))

(assert (= (and b!5505193 res!2346157) b!5505204))

(assert (= (and b!5505204 (not res!2346151)) b!5505198))

(assert (= (and b!5505198 (not res!2346156)) b!5505192))

(assert (= (and b!5505192 (not res!2346155)) b!5505190))

(assert (= (and b!5505190 (not res!2346158)) b!5505203))

(assert (= (and b!5505203 (not res!2346159)) b!5505191))

(assert (= (and b!5505191 (not res!2346154)) b!5505199))

(assert (= (and start!574920 (is-ElementMatch!15484 r!7292)) b!5505195))

(assert (= (and start!574920 (is-Concat!24329 r!7292)) b!5505197))

(assert (= (and start!574920 (is-Star!15484 r!7292)) b!5505201))

(assert (= (and start!574920 (is-Union!15484 r!7292)) b!5505189))

(assert (= (and start!574920 condSetEmpty!36520) setIsEmpty!36520))

(assert (= (and start!574920 (not condSetEmpty!36520)) setNonEmpty!36520))

(assert (= setNonEmpty!36520 b!5505202))

(assert (= b!5505196 b!5505205))

(assert (= (and start!574920 (is-Cons!62628 zl!343)) b!5505196))

(assert (= (and start!574920 (is-Cons!62629 s!2326)) b!5505200))

(declare-fun m!6512320 () Bool)

(assert (=> b!5505194 m!6512320))

(declare-fun m!6512322 () Bool)

(assert (=> b!5505204 m!6512322))

(declare-fun m!6512324 () Bool)

(assert (=> b!5505204 m!6512324))

(declare-fun m!6512326 () Bool)

(assert (=> b!5505204 m!6512326))

(declare-fun m!6512328 () Bool)

(assert (=> b!5505192 m!6512328))

(declare-fun m!6512330 () Bool)

(assert (=> b!5505193 m!6512330))

(declare-fun m!6512332 () Bool)

(assert (=> start!574920 m!6512332))

(declare-fun m!6512334 () Bool)

(assert (=> b!5505199 m!6512334))

(declare-fun m!6512336 () Bool)

(assert (=> b!5505199 m!6512336))

(declare-fun m!6512338 () Bool)

(assert (=> b!5505199 m!6512338))

(declare-fun m!6512340 () Bool)

(assert (=> b!5505199 m!6512340))

(assert (=> b!5505199 m!6512334))

(declare-fun m!6512342 () Bool)

(assert (=> b!5505199 m!6512342))

(assert (=> b!5505199 m!6512336))

(declare-fun m!6512344 () Bool)

(assert (=> b!5505199 m!6512344))

(declare-fun m!6512346 () Bool)

(assert (=> b!5505196 m!6512346))

(declare-fun m!6512348 () Bool)

(assert (=> setNonEmpty!36520 m!6512348))

(declare-fun m!6512350 () Bool)

(assert (=> b!5505203 m!6512350))

(assert (=> b!5505203 m!6512350))

(declare-fun m!6512352 () Bool)

(assert (=> b!5505203 m!6512352))

(declare-fun m!6512354 () Bool)

(assert (=> b!5505198 m!6512354))

(push 1)

(assert tp_is_empty!40221)

(assert (not b!5505203))

(assert (not b!5505204))

(assert (not b!5505189))

(assert (not b!5505202))

(assert (not b!5505192))

(assert (not b!5505200))

(assert (not b!5505199))

(assert (not b!5505205))

(assert (not b!5505196))

(assert (not start!574920))

(assert (not b!5505197))

(assert (not b!5505201))

(assert (not b!5505194))

(assert (not setNonEmpty!36520))

(assert (not b!5505193))

(assert (not b!5505198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1744978 () Bool)

(declare-fun lambda!294770 () Int)

(declare-fun forall!14667 (List!62751 Int) Bool)

(assert (=> d!1744978 (= (inv!81958 (h!69076 zl!343)) (forall!14667 (exprs!5368 (h!69076 zl!343)) lambda!294770))))

(declare-fun bs!1269741 () Bool)

(assert (= bs!1269741 d!1744978))

(declare-fun m!6512392 () Bool)

(assert (=> bs!1269741 m!6512392))

(assert (=> b!5505196 d!1744978))

(declare-fun b!5505295 () Bool)

(declare-fun e!3405110 () Bool)

(declare-fun call!406800 () Bool)

(assert (=> b!5505295 (= e!3405110 call!406800)))

(declare-fun c!961870 () Bool)

(declare-fun c!961871 () Bool)

(declare-fun bm!406793 () Bool)

(assert (=> bm!406793 (= call!406800 (validRegex!7220 (ite c!961870 (reg!15813 r!7292) (ite c!961871 (regTwo!31481 r!7292) (regTwo!31480 r!7292)))))))

(declare-fun b!5505296 () Bool)

(declare-fun e!3405108 () Bool)

(declare-fun e!3405111 () Bool)

(assert (=> b!5505296 (= e!3405108 e!3405111)))

(declare-fun res!2346209 () Bool)

(assert (=> b!5505296 (=> (not res!2346209) (not e!3405111))))

(declare-fun call!406799 () Bool)

(assert (=> b!5505296 (= res!2346209 call!406799)))

(declare-fun b!5505297 () Bool)

(declare-fun e!3405106 () Bool)

(assert (=> b!5505297 (= e!3405106 e!3405110)))

(declare-fun res!2346213 () Bool)

(declare-fun nullable!5519 (Regex!15484) Bool)

(assert (=> b!5505297 (= res!2346213 (not (nullable!5519 (reg!15813 r!7292))))))

(assert (=> b!5505297 (=> (not res!2346213) (not e!3405110))))

(declare-fun b!5505298 () Bool)

(declare-fun e!3405107 () Bool)

(declare-fun call!406798 () Bool)

(assert (=> b!5505298 (= e!3405107 call!406798)))

(declare-fun bm!406794 () Bool)

(assert (=> bm!406794 (= call!406799 (validRegex!7220 (ite c!961871 (regOne!31481 r!7292) (regOne!31480 r!7292))))))

(declare-fun b!5505299 () Bool)

(declare-fun res!2346212 () Bool)

(assert (=> b!5505299 (=> (not res!2346212) (not e!3405107))))

(assert (=> b!5505299 (= res!2346212 call!406799)))

(declare-fun e!3405109 () Bool)

(assert (=> b!5505299 (= e!3405109 e!3405107)))

(declare-fun d!1744980 () Bool)

(declare-fun res!2346210 () Bool)

(declare-fun e!3405105 () Bool)

(assert (=> d!1744980 (=> res!2346210 e!3405105)))

(assert (=> d!1744980 (= res!2346210 (is-ElementMatch!15484 r!7292))))

(assert (=> d!1744980 (= (validRegex!7220 r!7292) e!3405105)))

(declare-fun b!5505300 () Bool)

(assert (=> b!5505300 (= e!3405105 e!3405106)))

(assert (=> b!5505300 (= c!961870 (is-Star!15484 r!7292))))

(declare-fun bm!406795 () Bool)

(assert (=> bm!406795 (= call!406798 call!406800)))

(declare-fun b!5505301 () Bool)

(assert (=> b!5505301 (= e!3405111 call!406798)))

(declare-fun b!5505302 () Bool)

(declare-fun res!2346211 () Bool)

(assert (=> b!5505302 (=> res!2346211 e!3405108)))

(assert (=> b!5505302 (= res!2346211 (not (is-Concat!24329 r!7292)))))

(assert (=> b!5505302 (= e!3405109 e!3405108)))

(declare-fun b!5505303 () Bool)

(assert (=> b!5505303 (= e!3405106 e!3405109)))

(assert (=> b!5505303 (= c!961871 (is-Union!15484 r!7292))))

(assert (= (and d!1744980 (not res!2346210)) b!5505300))

(assert (= (and b!5505300 c!961870) b!5505297))

(assert (= (and b!5505300 (not c!961870)) b!5505303))

(assert (= (and b!5505297 res!2346213) b!5505295))

(assert (= (and b!5505303 c!961871) b!5505299))

(assert (= (and b!5505303 (not c!961871)) b!5505302))

(assert (= (and b!5505299 res!2346212) b!5505298))

(assert (= (and b!5505302 (not res!2346211)) b!5505296))

(assert (= (and b!5505296 res!2346209) b!5505301))

(assert (= (or b!5505298 b!5505301) bm!406795))

(assert (= (or b!5505299 b!5505296) bm!406794))

(assert (= (or b!5505295 bm!406795) bm!406793))

(declare-fun m!6512394 () Bool)

(assert (=> bm!406793 m!6512394))

(declare-fun m!6512396 () Bool)

(assert (=> b!5505297 m!6512396))

(declare-fun m!6512398 () Bool)

(assert (=> bm!406794 m!6512398))

(assert (=> start!574920 d!1744980))

(declare-fun bs!1269742 () Bool)

(declare-fun b!5505342 () Bool)

(assert (= bs!1269742 (and b!5505342 b!5505199)))

(declare-fun lambda!294775 () Int)

(assert (=> bs!1269742 (not (= lambda!294775 lambda!294758))))

(assert (=> bs!1269742 (not (= lambda!294775 lambda!294759))))

(assert (=> b!5505342 true))

(assert (=> b!5505342 true))

(declare-fun bs!1269743 () Bool)

(declare-fun b!5505338 () Bool)

(assert (= bs!1269743 (and b!5505338 b!5505199)))

(declare-fun lambda!294776 () Int)

(assert (=> bs!1269743 (not (= lambda!294776 lambda!294758))))

(assert (=> bs!1269743 (= lambda!294776 lambda!294759)))

(declare-fun bs!1269744 () Bool)

(assert (= bs!1269744 (and b!5505338 b!5505342)))

(assert (=> bs!1269744 (not (= lambda!294776 lambda!294775))))

(assert (=> b!5505338 true))

(assert (=> b!5505338 true))

(declare-fun b!5505336 () Bool)

(declare-fun e!3405136 () Bool)

(declare-fun e!3405135 () Bool)

(assert (=> b!5505336 (= e!3405136 e!3405135)))

(declare-fun res!2346232 () Bool)

(assert (=> b!5505336 (= res!2346232 (not (is-EmptyLang!15484 r!7292)))))

(assert (=> b!5505336 (=> (not res!2346232) (not e!3405135))))

(declare-fun bm!406800 () Bool)

(declare-fun call!406806 () Bool)

(declare-fun c!961880 () Bool)

(assert (=> bm!406800 (= call!406806 (Exists!2584 (ite c!961880 lambda!294775 lambda!294776)))))

(declare-fun b!5505337 () Bool)

(declare-fun e!3405131 () Bool)

(assert (=> b!5505337 (= e!3405131 (= s!2326 (Cons!62629 (c!961864 r!7292) Nil!62629)))))

(declare-fun b!5505339 () Bool)

(declare-fun e!3405134 () Bool)

(declare-fun e!3405132 () Bool)

(assert (=> b!5505339 (= e!3405134 e!3405132)))

(assert (=> b!5505339 (= c!961880 (is-Star!15484 r!7292))))

(declare-fun b!5505340 () Bool)

(declare-fun call!406805 () Bool)

(assert (=> b!5505340 (= e!3405136 call!406805)))

(declare-fun b!5505341 () Bool)

(declare-fun c!961883 () Bool)

(assert (=> b!5505341 (= c!961883 (is-Union!15484 r!7292))))

(assert (=> b!5505341 (= e!3405131 e!3405134)))

(declare-fun e!3405133 () Bool)

(assert (=> b!5505342 (= e!3405133 call!406806)))

(declare-fun b!5505343 () Bool)

(declare-fun c!961882 () Bool)

(assert (=> b!5505343 (= c!961882 (is-ElementMatch!15484 r!7292))))

(assert (=> b!5505343 (= e!3405135 e!3405131)))

(declare-fun b!5505344 () Bool)

(declare-fun e!3405130 () Bool)

(assert (=> b!5505344 (= e!3405130 (matchRSpec!2587 (regTwo!31481 r!7292) s!2326))))

(declare-fun b!5505345 () Bool)

(assert (=> b!5505345 (= e!3405134 e!3405130)))

(declare-fun res!2346230 () Bool)

(assert (=> b!5505345 (= res!2346230 (matchRSpec!2587 (regOne!31481 r!7292) s!2326))))

(assert (=> b!5505345 (=> res!2346230 e!3405130)))

(declare-fun d!1744982 () Bool)

(declare-fun c!961881 () Bool)

(assert (=> d!1744982 (= c!961881 (is-EmptyExpr!15484 r!7292))))

(assert (=> d!1744982 (= (matchRSpec!2587 r!7292 s!2326) e!3405136)))

(assert (=> b!5505338 (= e!3405132 call!406806)))

(declare-fun bm!406801 () Bool)

(declare-fun isEmpty!34410 (List!62753) Bool)

(assert (=> bm!406801 (= call!406805 (isEmpty!34410 s!2326))))

(declare-fun b!5505346 () Bool)

(declare-fun res!2346231 () Bool)

(assert (=> b!5505346 (=> res!2346231 e!3405133)))

(assert (=> b!5505346 (= res!2346231 call!406805)))

(assert (=> b!5505346 (= e!3405132 e!3405133)))

(assert (= (and d!1744982 c!961881) b!5505340))

(assert (= (and d!1744982 (not c!961881)) b!5505336))

(assert (= (and b!5505336 res!2346232) b!5505343))

(assert (= (and b!5505343 c!961882) b!5505337))

(assert (= (and b!5505343 (not c!961882)) b!5505341))

(assert (= (and b!5505341 c!961883) b!5505345))

(assert (= (and b!5505341 (not c!961883)) b!5505339))

(assert (= (and b!5505345 (not res!2346230)) b!5505344))

(assert (= (and b!5505339 c!961880) b!5505346))

(assert (= (and b!5505339 (not c!961880)) b!5505338))

(assert (= (and b!5505346 (not res!2346231)) b!5505342))

(assert (= (or b!5505342 b!5505338) bm!406800))

(assert (= (or b!5505340 b!5505346) bm!406801))

(declare-fun m!6512400 () Bool)

(assert (=> bm!406800 m!6512400))

(declare-fun m!6512402 () Bool)

(assert (=> b!5505344 m!6512402))

(declare-fun m!6512404 () Bool)

(assert (=> b!5505345 m!6512404))

(declare-fun m!6512406 () Bool)

(assert (=> bm!406801 m!6512406))

(assert (=> b!5505204 d!1744982))

(declare-fun b!5505378 () Bool)

(declare-fun e!3405155 () Bool)

(declare-fun e!3405156 () Bool)

(assert (=> b!5505378 (= e!3405155 e!3405156)))

(declare-fun c!961891 () Bool)

(assert (=> b!5505378 (= c!961891 (is-EmptyLang!15484 r!7292))))

(declare-fun b!5505379 () Bool)

(declare-fun res!2346257 () Bool)

(declare-fun e!3405157 () Bool)

(assert (=> b!5505379 (=> (not res!2346257) (not e!3405157))))

(declare-fun call!406809 () Bool)

(assert (=> b!5505379 (= res!2346257 (not call!406809))))

(declare-fun b!5505380 () Bool)

(declare-fun head!11789 (List!62753) C!31238)

(assert (=> b!5505380 (= e!3405157 (= (head!11789 s!2326) (c!961864 r!7292)))))

(declare-fun b!5505381 () Bool)

(declare-fun e!3405160 () Bool)

(declare-fun e!3405158 () Bool)

(assert (=> b!5505381 (= e!3405160 e!3405158)))

(declare-fun res!2346252 () Bool)

(assert (=> b!5505381 (=> res!2346252 e!3405158)))

(assert (=> b!5505381 (= res!2346252 call!406809)))

(declare-fun b!5505382 () Bool)

(declare-fun res!2346255 () Bool)

(assert (=> b!5505382 (=> res!2346255 e!3405158)))

(declare-fun tail!10884 (List!62753) List!62753)

(assert (=> b!5505382 (= res!2346255 (not (isEmpty!34410 (tail!10884 s!2326))))))

(declare-fun b!5505383 () Bool)

(declare-fun res!2346258 () Bool)

(declare-fun e!3405154 () Bool)

(assert (=> b!5505383 (=> res!2346258 e!3405154)))

(assert (=> b!5505383 (= res!2346258 (not (is-ElementMatch!15484 r!7292)))))

(assert (=> b!5505383 (= e!3405156 e!3405154)))

(declare-fun b!5505384 () Bool)

(assert (=> b!5505384 (= e!3405158 (not (= (head!11789 s!2326) (c!961864 r!7292))))))

(declare-fun b!5505385 () Bool)

(declare-fun lt!2244219 () Bool)

(assert (=> b!5505385 (= e!3405156 (not lt!2244219))))

(declare-fun d!1744986 () Bool)

(assert (=> d!1744986 e!3405155))

(declare-fun c!961892 () Bool)

(assert (=> d!1744986 (= c!961892 (is-EmptyExpr!15484 r!7292))))

(declare-fun e!3405159 () Bool)

(assert (=> d!1744986 (= lt!2244219 e!3405159)))

(declare-fun c!961890 () Bool)

(assert (=> d!1744986 (= c!961890 (isEmpty!34410 s!2326))))

(assert (=> d!1744986 (validRegex!7220 r!7292)))

(assert (=> d!1744986 (= (matchR!7669 r!7292 s!2326) lt!2244219)))

(declare-fun b!5505386 () Bool)

(declare-fun derivativeStep!4358 (Regex!15484 C!31238) Regex!15484)

(assert (=> b!5505386 (= e!3405159 (matchR!7669 (derivativeStep!4358 r!7292 (head!11789 s!2326)) (tail!10884 s!2326)))))

(declare-fun bm!406804 () Bool)

(assert (=> bm!406804 (= call!406809 (isEmpty!34410 s!2326))))

(declare-fun b!5505387 () Bool)

(assert (=> b!5505387 (= e!3405159 (nullable!5519 r!7292))))

(declare-fun b!5505388 () Bool)

(declare-fun res!2346259 () Bool)

(assert (=> b!5505388 (=> (not res!2346259) (not e!3405157))))

(assert (=> b!5505388 (= res!2346259 (isEmpty!34410 (tail!10884 s!2326)))))

(declare-fun b!5505389 () Bool)

(assert (=> b!5505389 (= e!3405155 (= lt!2244219 call!406809))))

(declare-fun b!5505390 () Bool)

(assert (=> b!5505390 (= e!3405154 e!3405160)))

(declare-fun res!2346253 () Bool)

(assert (=> b!5505390 (=> (not res!2346253) (not e!3405160))))

(assert (=> b!5505390 (= res!2346253 (not lt!2244219))))

(declare-fun b!5505391 () Bool)

(declare-fun res!2346256 () Bool)

(assert (=> b!5505391 (=> res!2346256 e!3405154)))

(assert (=> b!5505391 (= res!2346256 e!3405157)))

(declare-fun res!2346254 () Bool)

(assert (=> b!5505391 (=> (not res!2346254) (not e!3405157))))

(assert (=> b!5505391 (= res!2346254 lt!2244219)))

(assert (= (and d!1744986 c!961890) b!5505387))

(assert (= (and d!1744986 (not c!961890)) b!5505386))

(assert (= (and d!1744986 c!961892) b!5505389))

(assert (= (and d!1744986 (not c!961892)) b!5505378))

(assert (= (and b!5505378 c!961891) b!5505385))

(assert (= (and b!5505378 (not c!961891)) b!5505383))

(assert (= (and b!5505383 (not res!2346258)) b!5505391))

(assert (= (and b!5505391 res!2346254) b!5505379))

(assert (= (and b!5505379 res!2346257) b!5505388))

(assert (= (and b!5505388 res!2346259) b!5505380))

(assert (= (and b!5505391 (not res!2346256)) b!5505390))

(assert (= (and b!5505390 res!2346253) b!5505381))

(assert (= (and b!5505381 (not res!2346252)) b!5505382))

(assert (= (and b!5505382 (not res!2346255)) b!5505384))

(assert (= (or b!5505389 b!5505379 b!5505381) bm!406804))

(declare-fun m!6512416 () Bool)

(assert (=> b!5505382 m!6512416))

(assert (=> b!5505382 m!6512416))

(declare-fun m!6512418 () Bool)

(assert (=> b!5505382 m!6512418))

(declare-fun m!6512420 () Bool)

(assert (=> b!5505384 m!6512420))

(assert (=> d!1744986 m!6512406))

(assert (=> d!1744986 m!6512332))

(declare-fun m!6512422 () Bool)

(assert (=> b!5505387 m!6512422))

(assert (=> bm!406804 m!6512406))

(assert (=> b!5505388 m!6512416))

(assert (=> b!5505388 m!6512416))

(assert (=> b!5505388 m!6512418))

(assert (=> b!5505386 m!6512420))

(assert (=> b!5505386 m!6512420))

(declare-fun m!6512424 () Bool)

(assert (=> b!5505386 m!6512424))

(assert (=> b!5505386 m!6512416))

(assert (=> b!5505386 m!6512424))

(assert (=> b!5505386 m!6512416))

(declare-fun m!6512426 () Bool)

(assert (=> b!5505386 m!6512426))

(assert (=> b!5505380 m!6512420))

(assert (=> b!5505204 d!1744986))

(declare-fun d!1744992 () Bool)

(assert (=> d!1744992 (= (matchR!7669 r!7292 s!2326) (matchRSpec!2587 r!7292 s!2326))))

(declare-fun lt!2244222 () Unit!155428)

(declare-fun choose!41824 (Regex!15484 List!62753) Unit!155428)

(assert (=> d!1744992 (= lt!2244222 (choose!41824 r!7292 s!2326))))

(assert (=> d!1744992 (validRegex!7220 r!7292)))

(assert (=> d!1744992 (= (mainMatchTheorem!2587 r!7292 s!2326) lt!2244222)))

(declare-fun bs!1269746 () Bool)

(assert (= bs!1269746 d!1744992))

(assert (=> bs!1269746 m!6512324))

(assert (=> bs!1269746 m!6512322))

(declare-fun m!6512428 () Bool)

(assert (=> bs!1269746 m!6512428))

(assert (=> bs!1269746 m!6512332))

(assert (=> b!5505204 d!1744992))

(declare-fun d!1744994 () Bool)

(declare-fun e!3405163 () Bool)

(assert (=> d!1744994 e!3405163))

(declare-fun res!2346262 () Bool)

(assert (=> d!1744994 (=> (not res!2346262) (not e!3405163))))

(declare-fun lt!2244227 () List!62752)

(declare-fun noDuplicate!1485 (List!62752) Bool)

(assert (=> d!1744994 (= res!2346262 (noDuplicate!1485 lt!2244227))))

(declare-fun choose!41825 ((Set Context!9736)) List!62752)

(assert (=> d!1744994 (= lt!2244227 (choose!41825 z!1189))))

(assert (=> d!1744994 (= (toList!9268 z!1189) lt!2244227)))

(declare-fun b!5505394 () Bool)

(declare-fun content!11246 (List!62752) (Set Context!9736))

(assert (=> b!5505394 (= e!3405163 (= (content!11246 lt!2244227) z!1189))))

(assert (= (and d!1744994 res!2346262) b!5505394))

(declare-fun m!6512430 () Bool)

(assert (=> d!1744994 m!6512430))

(declare-fun m!6512432 () Bool)

(assert (=> d!1744994 m!6512432))

(declare-fun m!6512434 () Bool)

(assert (=> b!5505394 m!6512434))

(assert (=> b!5505194 d!1744994))

(declare-fun bs!1269748 () Bool)

(declare-fun d!1744996 () Bool)

(assert (= bs!1269748 (and d!1744996 d!1744978)))

(declare-fun lambda!294782 () Int)

(assert (=> bs!1269748 (= lambda!294782 lambda!294770)))

(declare-fun b!5505419 () Bool)

(declare-fun e!3405178 () Regex!15484)

(assert (=> b!5505419 (= e!3405178 (h!69075 (unfocusZipperList!912 zl!343)))))

(declare-fun b!5505420 () Bool)

(declare-fun e!3405179 () Bool)

(declare-fun lt!2244231 () Regex!15484)

(declare-fun isUnion!506 (Regex!15484) Bool)

(assert (=> b!5505420 (= e!3405179 (isUnion!506 lt!2244231))))

(declare-fun b!5505421 () Bool)

(declare-fun e!3405182 () Bool)

(declare-fun isEmpty!34411 (List!62751) Bool)

(assert (=> b!5505421 (= e!3405182 (isEmpty!34411 (t!375992 (unfocusZipperList!912 zl!343))))))

(declare-fun b!5505422 () Bool)

(declare-fun e!3405181 () Regex!15484)

(assert (=> b!5505422 (= e!3405178 e!3405181)))

(declare-fun c!961904 () Bool)

(assert (=> b!5505422 (= c!961904 (is-Cons!62627 (unfocusZipperList!912 zl!343)))))

(declare-fun b!5505423 () Bool)

(assert (=> b!5505423 (= e!3405181 EmptyLang!15484)))

(declare-fun b!5505424 () Bool)

(declare-fun head!11790 (List!62751) Regex!15484)

(assert (=> b!5505424 (= e!3405179 (= lt!2244231 (head!11790 (unfocusZipperList!912 zl!343))))))

(declare-fun b!5505425 () Bool)

(declare-fun e!3405183 () Bool)

(declare-fun e!3405180 () Bool)

(assert (=> b!5505425 (= e!3405183 e!3405180)))

(declare-fun c!961901 () Bool)

(assert (=> b!5505425 (= c!961901 (isEmpty!34411 (unfocusZipperList!912 zl!343)))))

(declare-fun b!5505427 () Bool)

(assert (=> b!5505427 (= e!3405181 (Union!15484 (h!69075 (unfocusZipperList!912 zl!343)) (generalisedUnion!1347 (t!375992 (unfocusZipperList!912 zl!343)))))))

(declare-fun b!5505428 () Bool)

(assert (=> b!5505428 (= e!3405180 e!3405179)))

(declare-fun c!961903 () Bool)

(declare-fun tail!10885 (List!62751) List!62751)

(assert (=> b!5505428 (= c!961903 (isEmpty!34411 (tail!10885 (unfocusZipperList!912 zl!343))))))

(declare-fun b!5505426 () Bool)

(declare-fun isEmptyLang!1076 (Regex!15484) Bool)

(assert (=> b!5505426 (= e!3405180 (isEmptyLang!1076 lt!2244231))))

(assert (=> d!1744996 e!3405183))

(declare-fun res!2346271 () Bool)

(assert (=> d!1744996 (=> (not res!2346271) (not e!3405183))))

(assert (=> d!1744996 (= res!2346271 (validRegex!7220 lt!2244231))))

(assert (=> d!1744996 (= lt!2244231 e!3405178)))

(declare-fun c!961902 () Bool)

(assert (=> d!1744996 (= c!961902 e!3405182)))

(declare-fun res!2346272 () Bool)

(assert (=> d!1744996 (=> (not res!2346272) (not e!3405182))))

(assert (=> d!1744996 (= res!2346272 (is-Cons!62627 (unfocusZipperList!912 zl!343)))))

(assert (=> d!1744996 (forall!14667 (unfocusZipperList!912 zl!343) lambda!294782)))

(assert (=> d!1744996 (= (generalisedUnion!1347 (unfocusZipperList!912 zl!343)) lt!2244231)))

(assert (= (and d!1744996 res!2346272) b!5505421))

(assert (= (and d!1744996 c!961902) b!5505419))

(assert (= (and d!1744996 (not c!961902)) b!5505422))

(assert (= (and b!5505422 c!961904) b!5505427))

(assert (= (and b!5505422 (not c!961904)) b!5505423))

(assert (= (and d!1744996 res!2346271) b!5505425))

(assert (= (and b!5505425 c!961901) b!5505426))

(assert (= (and b!5505425 (not c!961901)) b!5505428))

(assert (= (and b!5505428 c!961903) b!5505424))

(assert (= (and b!5505428 (not c!961903)) b!5505420))

(assert (=> b!5505424 m!6512350))

(declare-fun m!6512436 () Bool)

(assert (=> b!5505424 m!6512436))

(declare-fun m!6512438 () Bool)

(assert (=> b!5505421 m!6512438))

(declare-fun m!6512440 () Bool)

(assert (=> b!5505427 m!6512440))

(declare-fun m!6512442 () Bool)

(assert (=> b!5505420 m!6512442))

(assert (=> b!5505425 m!6512350))

(declare-fun m!6512444 () Bool)

(assert (=> b!5505425 m!6512444))

(declare-fun m!6512446 () Bool)

(assert (=> b!5505426 m!6512446))

(assert (=> b!5505428 m!6512350))

(declare-fun m!6512448 () Bool)

(assert (=> b!5505428 m!6512448))

(assert (=> b!5505428 m!6512448))

(declare-fun m!6512450 () Bool)

(assert (=> b!5505428 m!6512450))

(declare-fun m!6512452 () Bool)

(assert (=> d!1744996 m!6512452))

(assert (=> d!1744996 m!6512350))

(declare-fun m!6512454 () Bool)

(assert (=> d!1744996 m!6512454))

(assert (=> b!5505203 d!1744996))

(declare-fun bs!1269750 () Bool)

(declare-fun d!1744998 () Bool)

(assert (= bs!1269750 (and d!1744998 d!1744978)))

(declare-fun lambda!294785 () Int)

(assert (=> bs!1269750 (= lambda!294785 lambda!294770)))

(declare-fun bs!1269751 () Bool)

(assert (= bs!1269751 (and d!1744998 d!1744996)))

(assert (=> bs!1269751 (= lambda!294785 lambda!294782)))

(declare-fun lt!2244234 () List!62751)

(assert (=> d!1744998 (forall!14667 lt!2244234 lambda!294785)))

(declare-fun e!3405186 () List!62751)

(assert (=> d!1744998 (= lt!2244234 e!3405186)))

(declare-fun c!961907 () Bool)

(assert (=> d!1744998 (= c!961907 (is-Cons!62628 zl!343))))

(assert (=> d!1744998 (= (unfocusZipperList!912 zl!343) lt!2244234)))

(declare-fun b!5505433 () Bool)

(assert (=> b!5505433 (= e!3405186 (Cons!62627 (generalisedConcat!1099 (exprs!5368 (h!69076 zl!343))) (unfocusZipperList!912 (t!375993 zl!343))))))

(declare-fun b!5505434 () Bool)

(assert (=> b!5505434 (= e!3405186 Nil!62627)))

(assert (= (and d!1744998 c!961907) b!5505433))

(assert (= (and d!1744998 (not c!961907)) b!5505434))

(declare-fun m!6512462 () Bool)

(assert (=> d!1744998 m!6512462))

(assert (=> b!5505433 m!6512328))

(declare-fun m!6512464 () Bool)

(assert (=> b!5505433 m!6512464))

(assert (=> b!5505203 d!1744998))

(declare-fun b!5505453 () Bool)

(declare-fun e!3405201 () Option!15493)

(assert (=> b!5505453 (= e!3405201 (Some!15492 (tuple2!65163 Nil!62629 s!2326)))))

(declare-fun b!5505454 () Bool)

(declare-fun e!3405200 () Option!15493)

(assert (=> b!5505454 (= e!3405200 None!15492)))

(declare-fun b!5505456 () Bool)

(declare-fun e!3405197 () Bool)

(assert (=> b!5505456 (= e!3405197 (matchR!7669 (regTwo!31480 r!7292) s!2326))))

(declare-fun b!5505457 () Bool)

(declare-fun res!2346286 () Bool)

(declare-fun e!3405198 () Bool)

(assert (=> b!5505457 (=> (not res!2346286) (not e!3405198))))

(declare-fun lt!2244241 () Option!15493)

(declare-fun get!21551 (Option!15493) tuple2!65162)

(assert (=> b!5505457 (= res!2346286 (matchR!7669 (regOne!31480 r!7292) (_1!35884 (get!21551 lt!2244241))))))

(declare-fun b!5505458 () Bool)

(declare-fun lt!2244242 () Unit!155428)

(declare-fun lt!2244243 () Unit!155428)

(assert (=> b!5505458 (= lt!2244242 lt!2244243)))

(declare-fun ++!13741 (List!62753 List!62753) List!62753)

(assert (=> b!5505458 (= (++!13741 (++!13741 Nil!62629 (Cons!62629 (h!69077 s!2326) Nil!62629)) (t!375994 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1910 (List!62753 C!31238 List!62753 List!62753) Unit!155428)

(assert (=> b!5505458 (= lt!2244243 (lemmaMoveElementToOtherListKeepsConcatEq!1910 Nil!62629 (h!69077 s!2326) (t!375994 s!2326) s!2326))))

(assert (=> b!5505458 (= e!3405200 (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) (++!13741 Nil!62629 (Cons!62629 (h!69077 s!2326) Nil!62629)) (t!375994 s!2326) s!2326))))

(declare-fun b!5505459 () Bool)

(declare-fun e!3405199 () Bool)

(assert (=> b!5505459 (= e!3405199 (not (isDefined!12196 lt!2244241)))))

(declare-fun b!5505460 () Bool)

(assert (=> b!5505460 (= e!3405198 (= (++!13741 (_1!35884 (get!21551 lt!2244241)) (_2!35884 (get!21551 lt!2244241))) s!2326))))

(declare-fun b!5505461 () Bool)

(assert (=> b!5505461 (= e!3405201 e!3405200)))

(declare-fun c!961913 () Bool)

(assert (=> b!5505461 (= c!961913 (is-Nil!62629 s!2326))))

(declare-fun d!1745002 () Bool)

(assert (=> d!1745002 e!3405199))

(declare-fun res!2346283 () Bool)

(assert (=> d!1745002 (=> res!2346283 e!3405199)))

(assert (=> d!1745002 (= res!2346283 e!3405198)))

(declare-fun res!2346284 () Bool)

(assert (=> d!1745002 (=> (not res!2346284) (not e!3405198))))

(assert (=> d!1745002 (= res!2346284 (isDefined!12196 lt!2244241))))

(assert (=> d!1745002 (= lt!2244241 e!3405201)))

(declare-fun c!961912 () Bool)

(assert (=> d!1745002 (= c!961912 e!3405197)))

(declare-fun res!2346287 () Bool)

(assert (=> d!1745002 (=> (not res!2346287) (not e!3405197))))

(assert (=> d!1745002 (= res!2346287 (matchR!7669 (regOne!31480 r!7292) Nil!62629))))

(assert (=> d!1745002 (validRegex!7220 (regOne!31480 r!7292))))

(assert (=> d!1745002 (= (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) Nil!62629 s!2326 s!2326) lt!2244241)))

(declare-fun b!5505455 () Bool)

(declare-fun res!2346285 () Bool)

(assert (=> b!5505455 (=> (not res!2346285) (not e!3405198))))

(assert (=> b!5505455 (= res!2346285 (matchR!7669 (regTwo!31480 r!7292) (_2!35884 (get!21551 lt!2244241))))))

(assert (= (and d!1745002 res!2346287) b!5505456))

(assert (= (and d!1745002 c!961912) b!5505453))

(assert (= (and d!1745002 (not c!961912)) b!5505461))

(assert (= (and b!5505461 c!961913) b!5505454))

(assert (= (and b!5505461 (not c!961913)) b!5505458))

(assert (= (and d!1745002 res!2346284) b!5505457))

(assert (= (and b!5505457 res!2346286) b!5505455))

(assert (= (and b!5505455 res!2346285) b!5505460))

(assert (= (and d!1745002 (not res!2346283)) b!5505459))

(declare-fun m!6512466 () Bool)

(assert (=> b!5505460 m!6512466))

(declare-fun m!6512468 () Bool)

(assert (=> b!5505460 m!6512468))

(assert (=> b!5505455 m!6512466))

(declare-fun m!6512470 () Bool)

(assert (=> b!5505455 m!6512470))

(assert (=> b!5505457 m!6512466))

(declare-fun m!6512472 () Bool)

(assert (=> b!5505457 m!6512472))

(declare-fun m!6512474 () Bool)

(assert (=> b!5505458 m!6512474))

(assert (=> b!5505458 m!6512474))

(declare-fun m!6512476 () Bool)

(assert (=> b!5505458 m!6512476))

(declare-fun m!6512478 () Bool)

(assert (=> b!5505458 m!6512478))

(assert (=> b!5505458 m!6512474))

(declare-fun m!6512480 () Bool)

(assert (=> b!5505458 m!6512480))

(declare-fun m!6512482 () Bool)

(assert (=> b!5505456 m!6512482))

(declare-fun m!6512484 () Bool)

(assert (=> d!1745002 m!6512484))

(declare-fun m!6512486 () Bool)

(assert (=> d!1745002 m!6512486))

(declare-fun m!6512488 () Bool)

(assert (=> d!1745002 m!6512488))

(assert (=> b!5505459 m!6512484))

(assert (=> b!5505199 d!1745002))

(declare-fun d!1745004 () Bool)

(declare-fun choose!41826 (Int) Bool)

(assert (=> d!1745004 (= (Exists!2584 lambda!294759) (choose!41826 lambda!294759))))

(declare-fun bs!1269752 () Bool)

(assert (= bs!1269752 d!1745004))

(declare-fun m!6512490 () Bool)

(assert (=> bs!1269752 m!6512490))

(assert (=> b!5505199 d!1745004))

(declare-fun d!1745006 () Bool)

(assert (=> d!1745006 (= (Exists!2584 lambda!294758) (choose!41826 lambda!294758))))

(declare-fun bs!1269753 () Bool)

(assert (= bs!1269753 d!1745006))

(declare-fun m!6512492 () Bool)

(assert (=> bs!1269753 m!6512492))

(assert (=> b!5505199 d!1745006))

(declare-fun bs!1269754 () Bool)

(declare-fun d!1745008 () Bool)

(assert (= bs!1269754 (and d!1745008 b!5505199)))

(declare-fun lambda!294788 () Int)

(assert (=> bs!1269754 (= lambda!294788 lambda!294758)))

(assert (=> bs!1269754 (not (= lambda!294788 lambda!294759))))

(declare-fun bs!1269755 () Bool)

(assert (= bs!1269755 (and d!1745008 b!5505342)))

(assert (=> bs!1269755 (not (= lambda!294788 lambda!294775))))

(declare-fun bs!1269756 () Bool)

(assert (= bs!1269756 (and d!1745008 b!5505338)))

(assert (=> bs!1269756 (not (= lambda!294788 lambda!294776))))

(assert (=> d!1745008 true))

(assert (=> d!1745008 true))

(assert (=> d!1745008 true))

(assert (=> d!1745008 (= (isDefined!12196 (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) Nil!62629 s!2326 s!2326)) (Exists!2584 lambda!294788))))

(declare-fun lt!2244252 () Unit!155428)

(declare-fun choose!41827 (Regex!15484 Regex!15484 List!62753) Unit!155428)

(assert (=> d!1745008 (= lt!2244252 (choose!41827 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326))))

(assert (=> d!1745008 (validRegex!7220 (regOne!31480 r!7292))))

(assert (=> d!1745008 (= (lemmaFindConcatSeparationEquivalentToExists!1671 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326) lt!2244252)))

(declare-fun bs!1269757 () Bool)

(assert (= bs!1269757 d!1745008))

(assert (=> bs!1269757 m!6512488))

(declare-fun m!6512494 () Bool)

(assert (=> bs!1269757 m!6512494))

(assert (=> bs!1269757 m!6512336))

(declare-fun m!6512496 () Bool)

(assert (=> bs!1269757 m!6512496))

(assert (=> bs!1269757 m!6512336))

(assert (=> bs!1269757 m!6512338))

(assert (=> b!5505199 d!1745008))

(declare-fun bs!1269758 () Bool)

(declare-fun d!1745010 () Bool)

(assert (= bs!1269758 (and d!1745010 b!5505338)))

(declare-fun lambda!294793 () Int)

(assert (=> bs!1269758 (not (= lambda!294793 lambda!294776))))

(declare-fun bs!1269759 () Bool)

(assert (= bs!1269759 (and d!1745010 b!5505199)))

(assert (=> bs!1269759 (not (= lambda!294793 lambda!294759))))

(declare-fun bs!1269760 () Bool)

(assert (= bs!1269760 (and d!1745010 d!1745008)))

(assert (=> bs!1269760 (= lambda!294793 lambda!294788)))

(assert (=> bs!1269759 (= lambda!294793 lambda!294758)))

(declare-fun bs!1269761 () Bool)

(assert (= bs!1269761 (and d!1745010 b!5505342)))

(assert (=> bs!1269761 (not (= lambda!294793 lambda!294775))))

(assert (=> d!1745010 true))

(assert (=> d!1745010 true))

(assert (=> d!1745010 true))

(declare-fun lambda!294794 () Int)

(assert (=> bs!1269758 (= lambda!294794 lambda!294776)))

(assert (=> bs!1269759 (= lambda!294794 lambda!294759)))

(assert (=> bs!1269760 (not (= lambda!294794 lambda!294788))))

(assert (=> bs!1269759 (not (= lambda!294794 lambda!294758))))

(declare-fun bs!1269763 () Bool)

(assert (= bs!1269763 d!1745010))

(assert (=> bs!1269763 (not (= lambda!294794 lambda!294793))))

(assert (=> bs!1269761 (not (= lambda!294794 lambda!294775))))

(assert (=> d!1745010 true))

(assert (=> d!1745010 true))

(assert (=> d!1745010 true))

(assert (=> d!1745010 (= (Exists!2584 lambda!294793) (Exists!2584 lambda!294794))))

(declare-fun lt!2244258 () Unit!155428)

(declare-fun choose!41828 (Regex!15484 Regex!15484 List!62753) Unit!155428)

(assert (=> d!1745010 (= lt!2244258 (choose!41828 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326))))

(assert (=> d!1745010 (validRegex!7220 (regOne!31480 r!7292))))

(assert (=> d!1745010 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1213 (regOne!31480 r!7292) (regTwo!31480 r!7292) s!2326) lt!2244258)))

(declare-fun m!6512522 () Bool)

(assert (=> bs!1269763 m!6512522))

(declare-fun m!6512524 () Bool)

(assert (=> bs!1269763 m!6512524))

(declare-fun m!6512526 () Bool)

(assert (=> bs!1269763 m!6512526))

(assert (=> bs!1269763 m!6512488))

(assert (=> b!5505199 d!1745010))

(declare-fun d!1745016 () Bool)

(declare-fun isEmpty!34412 (Option!15493) Bool)

(assert (=> d!1745016 (= (isDefined!12196 (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) Nil!62629 s!2326 s!2326)) (not (isEmpty!34412 (findConcatSeparation!1907 (regOne!31480 r!7292) (regTwo!31480 r!7292) Nil!62629 s!2326 s!2326))))))

(declare-fun bs!1269764 () Bool)

(assert (= bs!1269764 d!1745016))

(assert (=> bs!1269764 m!6512336))

(declare-fun m!6512528 () Bool)

(assert (=> bs!1269764 m!6512528))

(assert (=> b!5505199 d!1745016))

(declare-fun d!1745018 () Bool)

(assert (=> d!1745018 (= (isEmpty!34408 (t!375993 zl!343)) (is-Nil!62628 (t!375993 zl!343)))))

(assert (=> b!5505198 d!1745018))

(declare-fun d!1745020 () Bool)

(declare-fun lt!2244261 () Regex!15484)

(assert (=> d!1745020 (validRegex!7220 lt!2244261)))

(assert (=> d!1745020 (= lt!2244261 (generalisedUnion!1347 (unfocusZipperList!912 zl!343)))))

(assert (=> d!1745020 (= (unfocusZipper!1226 zl!343) lt!2244261)))

(declare-fun bs!1269765 () Bool)

(assert (= bs!1269765 d!1745020))

(declare-fun m!6512530 () Bool)

(assert (=> bs!1269765 m!6512530))

(assert (=> bs!1269765 m!6512350))

(assert (=> bs!1269765 m!6512350))

(assert (=> bs!1269765 m!6512352))

(assert (=> b!5505193 d!1745020))

(declare-fun bs!1269766 () Bool)

(declare-fun d!1745022 () Bool)

(assert (= bs!1269766 (and d!1745022 d!1744978)))

(declare-fun lambda!294797 () Int)

(assert (=> bs!1269766 (= lambda!294797 lambda!294770)))

(declare-fun bs!1269767 () Bool)

(assert (= bs!1269767 (and d!1745022 d!1744996)))

(assert (=> bs!1269767 (= lambda!294797 lambda!294782)))

(declare-fun bs!1269768 () Bool)

(assert (= bs!1269768 (and d!1745022 d!1744998)))

(assert (=> bs!1269768 (= lambda!294797 lambda!294785)))

(declare-fun b!5505521 () Bool)

(declare-fun e!3405240 () Regex!15484)

(assert (=> b!5505521 (= e!3405240 (Concat!24329 (h!69075 (exprs!5368 (h!69076 zl!343))) (generalisedConcat!1099 (t!375992 (exprs!5368 (h!69076 zl!343))))))))

(declare-fun b!5505522 () Bool)

(declare-fun e!3405237 () Regex!15484)

(assert (=> b!5505522 (= e!3405237 (h!69075 (exprs!5368 (h!69076 zl!343))))))

(declare-fun b!5505523 () Bool)

(assert (=> b!5505523 (= e!3405240 EmptyExpr!15484)))

(declare-fun b!5505524 () Bool)

(declare-fun e!3405236 () Bool)

(declare-fun lt!2244264 () Regex!15484)

(declare-fun isEmptyExpr!1065 (Regex!15484) Bool)

(assert (=> b!5505524 (= e!3405236 (isEmptyExpr!1065 lt!2244264))))

(declare-fun b!5505525 () Bool)

(declare-fun e!3405238 () Bool)

(assert (=> b!5505525 (= e!3405236 e!3405238)))

(declare-fun c!961928 () Bool)

(assert (=> b!5505525 (= c!961928 (isEmpty!34411 (tail!10885 (exprs!5368 (h!69076 zl!343)))))))

(declare-fun b!5505526 () Bool)

(declare-fun e!3405239 () Bool)

(assert (=> b!5505526 (= e!3405239 e!3405236)))

(declare-fun c!961930 () Bool)

(assert (=> b!5505526 (= c!961930 (isEmpty!34411 (exprs!5368 (h!69076 zl!343))))))

(assert (=> d!1745022 e!3405239))

(declare-fun res!2346319 () Bool)

(assert (=> d!1745022 (=> (not res!2346319) (not e!3405239))))

(assert (=> d!1745022 (= res!2346319 (validRegex!7220 lt!2244264))))

(assert (=> d!1745022 (= lt!2244264 e!3405237)))

(declare-fun c!961929 () Bool)

(declare-fun e!3405235 () Bool)

(assert (=> d!1745022 (= c!961929 e!3405235)))

(declare-fun res!2346320 () Bool)

(assert (=> d!1745022 (=> (not res!2346320) (not e!3405235))))

(assert (=> d!1745022 (= res!2346320 (is-Cons!62627 (exprs!5368 (h!69076 zl!343))))))

(assert (=> d!1745022 (forall!14667 (exprs!5368 (h!69076 zl!343)) lambda!294797)))

(assert (=> d!1745022 (= (generalisedConcat!1099 (exprs!5368 (h!69076 zl!343))) lt!2244264)))

(declare-fun b!5505527 () Bool)

(declare-fun isConcat!588 (Regex!15484) Bool)

(assert (=> b!5505527 (= e!3405238 (isConcat!588 lt!2244264))))

(declare-fun b!5505528 () Bool)

(assert (=> b!5505528 (= e!3405235 (isEmpty!34411 (t!375992 (exprs!5368 (h!69076 zl!343)))))))

(declare-fun b!5505529 () Bool)

(assert (=> b!5505529 (= e!3405238 (= lt!2244264 (head!11790 (exprs!5368 (h!69076 zl!343)))))))

(declare-fun b!5505530 () Bool)

(assert (=> b!5505530 (= e!3405237 e!3405240)))

(declare-fun c!961931 () Bool)

(assert (=> b!5505530 (= c!961931 (is-Cons!62627 (exprs!5368 (h!69076 zl!343))))))

(assert (= (and d!1745022 res!2346320) b!5505528))

(assert (= (and d!1745022 c!961929) b!5505522))

(assert (= (and d!1745022 (not c!961929)) b!5505530))

(assert (= (and b!5505530 c!961931) b!5505521))

(assert (= (and b!5505530 (not c!961931)) b!5505523))

(assert (= (and d!1745022 res!2346319) b!5505526))

(assert (= (and b!5505526 c!961930) b!5505524))

(assert (= (and b!5505526 (not c!961930)) b!5505525))

(assert (= (and b!5505525 c!961928) b!5505529))

(assert (= (and b!5505525 (not c!961928)) b!5505527))

(declare-fun m!6512532 () Bool)

(assert (=> b!5505524 m!6512532))

(declare-fun m!6512534 () Bool)

(assert (=> b!5505521 m!6512534))

(declare-fun m!6512536 () Bool)

(assert (=> b!5505525 m!6512536))

(assert (=> b!5505525 m!6512536))

(declare-fun m!6512538 () Bool)

(assert (=> b!5505525 m!6512538))

(declare-fun m!6512540 () Bool)

(assert (=> b!5505529 m!6512540))

(declare-fun m!6512542 () Bool)

(assert (=> b!5505527 m!6512542))

(declare-fun m!6512544 () Bool)

(assert (=> b!5505528 m!6512544))

(declare-fun m!6512546 () Bool)

(assert (=> d!1745022 m!6512546))

(declare-fun m!6512548 () Bool)

(assert (=> d!1745022 m!6512548))

(declare-fun m!6512550 () Bool)

(assert (=> b!5505526 m!6512550))

(assert (=> b!5505192 d!1745022))

(declare-fun bs!1269769 () Bool)

(declare-fun d!1745024 () Bool)

(assert (= bs!1269769 (and d!1745024 d!1744978)))

(declare-fun lambda!294798 () Int)

(assert (=> bs!1269769 (= lambda!294798 lambda!294770)))

(declare-fun bs!1269770 () Bool)

(assert (= bs!1269770 (and d!1745024 d!1744996)))

(assert (=> bs!1269770 (= lambda!294798 lambda!294782)))

(declare-fun bs!1269771 () Bool)

(assert (= bs!1269771 (and d!1745024 d!1744998)))

(assert (=> bs!1269771 (= lambda!294798 lambda!294785)))

(declare-fun bs!1269772 () Bool)

(assert (= bs!1269772 (and d!1745024 d!1745022)))

(assert (=> bs!1269772 (= lambda!294798 lambda!294797)))

(assert (=> d!1745024 (= (inv!81958 setElem!36520) (forall!14667 (exprs!5368 setElem!36520) lambda!294798))))

(declare-fun bs!1269773 () Bool)

(assert (= bs!1269773 d!1745024))

(declare-fun m!6512552 () Bool)

(assert (=> bs!1269773 m!6512552))

(assert (=> setNonEmpty!36520 d!1745024))

(declare-fun b!5505538 () Bool)

(declare-fun e!3405246 () Bool)

(declare-fun tp!1514812 () Bool)

(assert (=> b!5505538 (= e!3405246 tp!1514812)))

(declare-fun e!3405245 () Bool)

(declare-fun tp!1514813 () Bool)

(declare-fun b!5505537 () Bool)

(assert (=> b!5505537 (= e!3405245 (and (inv!81958 (h!69076 (t!375993 zl!343))) e!3405246 tp!1514813))))

(assert (=> b!5505196 (= tp!1514777 e!3405245)))

(assert (= b!5505537 b!5505538))

(assert (= (and b!5505196 (is-Cons!62628 (t!375993 zl!343))) b!5505537))

(declare-fun m!6512554 () Bool)

(assert (=> b!5505537 m!6512554))

(declare-fun b!5505547 () Bool)

(declare-fun e!3405251 () Bool)

(declare-fun tp!1514818 () Bool)

(declare-fun tp!1514819 () Bool)

(assert (=> b!5505547 (= e!3405251 (and tp!1514818 tp!1514819))))

(assert (=> b!5505205 (= tp!1514773 e!3405251)))

(assert (= (and b!5505205 (is-Cons!62627 (exprs!5368 (h!69076 zl!343)))) b!5505547))

(declare-fun b!5505558 () Bool)

(declare-fun e!3405254 () Bool)

(assert (=> b!5505558 (= e!3405254 tp_is_empty!40221)))

(declare-fun b!5505561 () Bool)

(declare-fun tp!1514832 () Bool)

(declare-fun tp!1514831 () Bool)

(assert (=> b!5505561 (= e!3405254 (and tp!1514832 tp!1514831))))

(declare-fun b!5505559 () Bool)

(declare-fun tp!1514830 () Bool)

(declare-fun tp!1514834 () Bool)

(assert (=> b!5505559 (= e!3405254 (and tp!1514830 tp!1514834))))

(declare-fun b!5505560 () Bool)

(declare-fun tp!1514833 () Bool)

(assert (=> b!5505560 (= e!3405254 tp!1514833)))

(assert (=> b!5505201 (= tp!1514772 e!3405254)))

(assert (= (and b!5505201 (is-ElementMatch!15484 (reg!15813 r!7292))) b!5505558))

(assert (= (and b!5505201 (is-Concat!24329 (reg!15813 r!7292))) b!5505559))

(assert (= (and b!5505201 (is-Star!15484 (reg!15813 r!7292))) b!5505560))

(assert (= (and b!5505201 (is-Union!15484 (reg!15813 r!7292))) b!5505561))

(declare-fun b!5505566 () Bool)

(declare-fun e!3405257 () Bool)

(declare-fun tp!1514837 () Bool)

(assert (=> b!5505566 (= e!3405257 (and tp_is_empty!40221 tp!1514837))))

(assert (=> b!5505200 (= tp!1514776 e!3405257)))

(assert (= (and b!5505200 (is-Cons!62629 (t!375994 s!2326))) b!5505566))

(declare-fun b!5505567 () Bool)

(declare-fun e!3405258 () Bool)

(assert (=> b!5505567 (= e!3405258 tp_is_empty!40221)))

(declare-fun b!5505570 () Bool)

(declare-fun tp!1514840 () Bool)

(declare-fun tp!1514839 () Bool)

(assert (=> b!5505570 (= e!3405258 (and tp!1514840 tp!1514839))))

(declare-fun b!5505568 () Bool)

(declare-fun tp!1514838 () Bool)

(declare-fun tp!1514842 () Bool)

(assert (=> b!5505568 (= e!3405258 (and tp!1514838 tp!1514842))))

(declare-fun b!5505569 () Bool)

(declare-fun tp!1514841 () Bool)

(assert (=> b!5505569 (= e!3405258 tp!1514841)))

(assert (=> b!5505189 (= tp!1514770 e!3405258)))

(assert (= (and b!5505189 (is-ElementMatch!15484 (regOne!31481 r!7292))) b!5505567))

(assert (= (and b!5505189 (is-Concat!24329 (regOne!31481 r!7292))) b!5505568))

(assert (= (and b!5505189 (is-Star!15484 (regOne!31481 r!7292))) b!5505569))

(assert (= (and b!5505189 (is-Union!15484 (regOne!31481 r!7292))) b!5505570))

(declare-fun b!5505571 () Bool)

(declare-fun e!3405259 () Bool)

(assert (=> b!5505571 (= e!3405259 tp_is_empty!40221)))

(declare-fun b!5505574 () Bool)

(declare-fun tp!1514845 () Bool)

(declare-fun tp!1514844 () Bool)

(assert (=> b!5505574 (= e!3405259 (and tp!1514845 tp!1514844))))

(declare-fun b!5505572 () Bool)

(declare-fun tp!1514843 () Bool)

(declare-fun tp!1514847 () Bool)

(assert (=> b!5505572 (= e!3405259 (and tp!1514843 tp!1514847))))

(declare-fun b!5505573 () Bool)

(declare-fun tp!1514846 () Bool)

(assert (=> b!5505573 (= e!3405259 tp!1514846)))

(assert (=> b!5505189 (= tp!1514769 e!3405259)))

(assert (= (and b!5505189 (is-ElementMatch!15484 (regTwo!31481 r!7292))) b!5505571))

(assert (= (and b!5505189 (is-Concat!24329 (regTwo!31481 r!7292))) b!5505572))

(assert (= (and b!5505189 (is-Star!15484 (regTwo!31481 r!7292))) b!5505573))

(assert (= (and b!5505189 (is-Union!15484 (regTwo!31481 r!7292))) b!5505574))

(declare-fun b!5505575 () Bool)

(declare-fun e!3405260 () Bool)

(declare-fun tp!1514848 () Bool)

(declare-fun tp!1514849 () Bool)

(assert (=> b!5505575 (= e!3405260 (and tp!1514848 tp!1514849))))

(assert (=> b!5505202 (= tp!1514768 e!3405260)))

(assert (= (and b!5505202 (is-Cons!62627 (exprs!5368 setElem!36520))) b!5505575))

(declare-fun condSetEmpty!36526 () Bool)

(assert (=> setNonEmpty!36520 (= condSetEmpty!36526 (= setRest!36520 (as set.empty (Set Context!9736))))))

(declare-fun setRes!36526 () Bool)

(assert (=> setNonEmpty!36520 (= tp!1514774 setRes!36526)))

(declare-fun setIsEmpty!36526 () Bool)

(assert (=> setIsEmpty!36526 setRes!36526))

(declare-fun tp!1514854 () Bool)

(declare-fun setElem!36526 () Context!9736)

(declare-fun e!3405263 () Bool)

(declare-fun setNonEmpty!36526 () Bool)

(assert (=> setNonEmpty!36526 (= setRes!36526 (and tp!1514854 (inv!81958 setElem!36526) e!3405263))))

(declare-fun setRest!36526 () (Set Context!9736))

(assert (=> setNonEmpty!36526 (= setRest!36520 (set.union (set.insert setElem!36526 (as set.empty (Set Context!9736))) setRest!36526))))

(declare-fun b!5505580 () Bool)

(declare-fun tp!1514855 () Bool)

(assert (=> b!5505580 (= e!3405263 tp!1514855)))

(assert (= (and setNonEmpty!36520 condSetEmpty!36526) setIsEmpty!36526))

(assert (= (and setNonEmpty!36520 (not condSetEmpty!36526)) setNonEmpty!36526))

(assert (= setNonEmpty!36526 b!5505580))

(declare-fun m!6512556 () Bool)

(assert (=> setNonEmpty!36526 m!6512556))

(declare-fun b!5505581 () Bool)

(declare-fun e!3405264 () Bool)

(assert (=> b!5505581 (= e!3405264 tp_is_empty!40221)))

(declare-fun b!5505584 () Bool)

(declare-fun tp!1514858 () Bool)

(declare-fun tp!1514857 () Bool)

(assert (=> b!5505584 (= e!3405264 (and tp!1514858 tp!1514857))))

(declare-fun b!5505582 () Bool)

(declare-fun tp!1514856 () Bool)

(declare-fun tp!1514860 () Bool)

(assert (=> b!5505582 (= e!3405264 (and tp!1514856 tp!1514860))))

(declare-fun b!5505583 () Bool)

(declare-fun tp!1514859 () Bool)

(assert (=> b!5505583 (= e!3405264 tp!1514859)))

(assert (=> b!5505197 (= tp!1514771 e!3405264)))

(assert (= (and b!5505197 (is-ElementMatch!15484 (regOne!31480 r!7292))) b!5505581))

(assert (= (and b!5505197 (is-Concat!24329 (regOne!31480 r!7292))) b!5505582))

(assert (= (and b!5505197 (is-Star!15484 (regOne!31480 r!7292))) b!5505583))

(assert (= (and b!5505197 (is-Union!15484 (regOne!31480 r!7292))) b!5505584))

(declare-fun b!5505585 () Bool)

(declare-fun e!3405265 () Bool)

(assert (=> b!5505585 (= e!3405265 tp_is_empty!40221)))

(declare-fun b!5505588 () Bool)

(declare-fun tp!1514863 () Bool)

(declare-fun tp!1514862 () Bool)

(assert (=> b!5505588 (= e!3405265 (and tp!1514863 tp!1514862))))

(declare-fun b!5505586 () Bool)

(declare-fun tp!1514861 () Bool)

(declare-fun tp!1514865 () Bool)

(assert (=> b!5505586 (= e!3405265 (and tp!1514861 tp!1514865))))

(declare-fun b!5505587 () Bool)

(declare-fun tp!1514864 () Bool)

(assert (=> b!5505587 (= e!3405265 tp!1514864)))

(assert (=> b!5505197 (= tp!1514775 e!3405265)))

(assert (= (and b!5505197 (is-ElementMatch!15484 (regTwo!31480 r!7292))) b!5505585))

(assert (= (and b!5505197 (is-Concat!24329 (regTwo!31480 r!7292))) b!5505586))

(assert (= (and b!5505197 (is-Star!15484 (regTwo!31480 r!7292))) b!5505587))

(assert (= (and b!5505197 (is-Union!15484 (regTwo!31480 r!7292))) b!5505588))

(push 1)

(assert (not b!5505386))

(assert (not b!5505573))

(assert (not b!5505572))

(assert (not b!5505433))

(assert (not d!1745016))

(assert (not b!5505559))

(assert (not b!5505528))

(assert (not bm!406801))

(assert (not b!5505380))

(assert (not b!5505388))

(assert (not b!5505568))

(assert (not b!5505569))

(assert (not b!5505382))

(assert (not d!1744992))

(assert (not b!5505582))

(assert (not b!5505458))

(assert tp_is_empty!40221)

(assert (not d!1744994))

(assert (not b!5505420))

(assert (not d!1745010))

(assert (not bm!406804))

(assert (not b!5505460))

(assert (not d!1745004))

(assert (not b!5505537))

(assert (not d!1744998))

(assert (not b!5505345))

(assert (not d!1745008))

(assert (not b!5505425))

(assert (not b!5505529))

(assert (not b!5505566))

(assert (not b!5505561))

(assert (not b!5505574))

(assert (not b!5505527))

(assert (not b!5505547))

(assert (not b!5505426))

(assert (not d!1744986))

(assert (not b!5505421))

(assert (not d!1745006))

(assert (not b!5505583))

(assert (not b!5505560))

(assert (not b!5505526))

(assert (not b!5505297))

(assert (not d!1745024))

(assert (not b!5505457))

(assert (not d!1745020))

(assert (not b!5505455))

(assert (not b!5505456))

(assert (not b!5505521))

(assert (not b!5505428))

(assert (not b!5505588))

(assert (not b!5505575))

(assert (not b!5505459))

(assert (not b!5505580))

(assert (not b!5505424))

(assert (not d!1745022))

(assert (not b!5505538))

(assert (not b!5505524))

(assert (not b!5505570))

(assert (not b!5505584))

(assert (not bm!406794))

(assert (not b!5505586))

(assert (not b!5505525))

(assert (not setNonEmpty!36526))

(assert (not d!1744978))

(assert (not b!5505344))

(assert (not b!5505394))

(assert (not bm!406793))

(assert (not d!1745002))

(assert (not b!5505387))

(assert (not b!5505587))

(assert (not d!1744996))

(assert (not bm!406800))

(assert (not b!5505427))

(assert (not b!5505384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

