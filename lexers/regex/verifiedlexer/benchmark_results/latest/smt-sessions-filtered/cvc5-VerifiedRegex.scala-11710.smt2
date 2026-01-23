; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!661126 () Bool)

(assert start!661126)

(declare-fun b!6842046 () Bool)

(declare-fun e!4126361 () Bool)

(declare-fun tp_is_empty!42585 () Bool)

(assert (=> b!6842046 (= e!4126361 tp_is_empty!42585)))

(declare-fun b!6842047 () Bool)

(declare-fun res!2793429 () Bool)

(declare-fun e!4126366 () Bool)

(assert (=> b!6842047 (=> (not res!2793429) (not e!4126366))))

(declare-datatypes ((C!33602 0))(
  ( (C!33603 (val!26503 Int)) )
))
(declare-datatypes ((Regex!16666 0))(
  ( (ElementMatch!16666 (c!1273782 C!33602)) (Concat!25511 (regOne!33844 Regex!16666) (regTwo!33844 Regex!16666)) (EmptyExpr!16666) (Star!16666 (reg!16995 Regex!16666)) (EmptyLang!16666) (Union!16666 (regOne!33845 Regex!16666) (regTwo!33845 Regex!16666)) )
))
(declare-fun r!7292 () Regex!16666)

(declare-datatypes ((List!66297 0))(
  ( (Nil!66173) (Cons!66173 (h!72621 Regex!16666) (t!380040 List!66297)) )
))
(declare-datatypes ((Context!12100 0))(
  ( (Context!12101 (exprs!6550 List!66297)) )
))
(declare-datatypes ((List!66298 0))(
  ( (Nil!66174) (Cons!66174 (h!72622 Context!12100) (t!380041 List!66298)) )
))
(declare-fun zl!343 () List!66298)

(declare-fun unfocusZipper!2408 (List!66298) Regex!16666)

(assert (=> b!6842047 (= res!2793429 (= r!7292 (unfocusZipper!2408 zl!343)))))

(declare-fun b!6842048 () Bool)

(declare-fun e!4126369 () Bool)

(declare-fun lt!2455370 () List!66297)

(declare-fun generalisedUnion!2506 (List!66297) Regex!16666)

(assert (=> b!6842048 (= e!4126369 (= r!7292 (generalisedUnion!2506 lt!2455370)))))

(declare-fun b!6842049 () Bool)

(declare-fun res!2793428 () Bool)

(declare-fun e!4126368 () Bool)

(assert (=> b!6842049 (=> res!2793428 e!4126368)))

(declare-fun isEmpty!38552 (List!66298) Bool)

(assert (=> b!6842049 (= res!2793428 (isEmpty!38552 (t!380041 zl!343)))))

(declare-fun b!6842050 () Bool)

(declare-fun e!4126363 () Bool)

(declare-fun tp!1873820 () Bool)

(assert (=> b!6842050 (= e!4126363 tp!1873820)))

(declare-fun b!6842051 () Bool)

(assert (=> b!6842051 (= e!4126368 e!4126369)))

(declare-fun res!2793430 () Bool)

(assert (=> b!6842051 (=> res!2793430 e!4126369)))

(declare-fun lambda!386832 () Int)

(declare-fun forall!15841 (List!66297 Int) Bool)

(assert (=> b!6842051 (= res!2793430 (not (forall!15841 lt!2455370 lambda!386832)))))

(declare-fun unfocusZipperList!2083 (List!66298) List!66297)

(assert (=> b!6842051 (= lt!2455370 (unfocusZipperList!2083 zl!343))))

(declare-fun b!6842052 () Bool)

(declare-fun e!4126364 () Bool)

(assert (=> b!6842052 (= e!4126364 (isEmpty!38552 (t!380041 zl!343)))))

(declare-fun b!6842053 () Bool)

(assert (=> b!6842053 (= e!4126366 (not e!4126368))))

(declare-fun res!2793427 () Bool)

(assert (=> b!6842053 (=> res!2793427 e!4126368)))

(assert (=> b!6842053 (= res!2793427 e!4126364)))

(declare-fun res!2793423 () Bool)

(assert (=> b!6842053 (=> (not res!2793423) (not e!4126364))))

(assert (=> b!6842053 (= res!2793423 (is-Cons!66174 zl!343))))

(declare-datatypes ((List!66299 0))(
  ( (Nil!66175) (Cons!66175 (h!72623 C!33602) (t!380042 List!66299)) )
))
(declare-fun s!2326 () List!66299)

(declare-fun matchR!8849 (Regex!16666 List!66299) Bool)

(declare-fun matchRSpec!3767 (Regex!16666 List!66299) Bool)

(assert (=> b!6842053 (= (matchR!8849 r!7292 s!2326) (matchRSpec!3767 r!7292 s!2326))))

(declare-datatypes ((Unit!160031 0))(
  ( (Unit!160032) )
))
(declare-fun lt!2455369 () Unit!160031)

(declare-fun mainMatchTheorem!3767 (Regex!16666 List!66299) Unit!160031)

(assert (=> b!6842053 (= lt!2455369 (mainMatchTheorem!3767 r!7292 s!2326))))

(declare-fun b!6842054 () Bool)

(declare-fun res!2793426 () Bool)

(assert (=> b!6842054 (=> (not res!2793426) (not e!4126366))))

(declare-fun z!1189 () (Set Context!12100))

(declare-fun toList!10450 ((Set Context!12100)) List!66298)

(assert (=> b!6842054 (= res!2793426 (= (toList!10450 z!1189) zl!343))))

(declare-fun res!2793425 () Bool)

(assert (=> start!661126 (=> (not res!2793425) (not e!4126366))))

(declare-fun validRegex!8402 (Regex!16666) Bool)

(assert (=> start!661126 (= res!2793425 (validRegex!8402 r!7292))))

(assert (=> start!661126 e!4126366))

(assert (=> start!661126 e!4126361))

(declare-fun condSetEmpty!47032 () Bool)

(assert (=> start!661126 (= condSetEmpty!47032 (= z!1189 (as set.empty (Set Context!12100))))))

(declare-fun setRes!47032 () Bool)

(assert (=> start!661126 setRes!47032))

(declare-fun e!4126367 () Bool)

(assert (=> start!661126 e!4126367))

(declare-fun e!4126365 () Bool)

(assert (=> start!661126 e!4126365))

(declare-fun b!6842055 () Bool)

(declare-fun tp!1873818 () Bool)

(declare-fun tp!1873815 () Bool)

(assert (=> b!6842055 (= e!4126361 (and tp!1873818 tp!1873815))))

(declare-fun setIsEmpty!47032 () Bool)

(assert (=> setIsEmpty!47032 setRes!47032))

(declare-fun b!6842056 () Bool)

(declare-fun tp!1873814 () Bool)

(assert (=> b!6842056 (= e!4126365 (and tp_is_empty!42585 tp!1873814))))

(declare-fun b!6842057 () Bool)

(declare-fun e!4126362 () Bool)

(declare-fun tp!1873816 () Bool)

(assert (=> b!6842057 (= e!4126362 tp!1873816)))

(declare-fun b!6842058 () Bool)

(declare-fun tp!1873821 () Bool)

(declare-fun inv!84913 (Context!12100) Bool)

(assert (=> b!6842058 (= e!4126367 (and (inv!84913 (h!72622 zl!343)) e!4126363 tp!1873821))))

(declare-fun b!6842059 () Bool)

(declare-fun tp!1873817 () Bool)

(declare-fun tp!1873813 () Bool)

(assert (=> b!6842059 (= e!4126361 (and tp!1873817 tp!1873813))))

(declare-fun tp!1873819 () Bool)

(declare-fun setNonEmpty!47032 () Bool)

(declare-fun setElem!47032 () Context!12100)

(assert (=> setNonEmpty!47032 (= setRes!47032 (and tp!1873819 (inv!84913 setElem!47032) e!4126362))))

(declare-fun setRest!47032 () (Set Context!12100))

(assert (=> setNonEmpty!47032 (= z!1189 (set.union (set.insert setElem!47032 (as set.empty (Set Context!12100))) setRest!47032))))

(declare-fun b!6842060 () Bool)

(declare-fun res!2793424 () Bool)

(assert (=> b!6842060 (=> res!2793424 e!4126368)))

(assert (=> b!6842060 (= res!2793424 (or (not (is-Cons!66174 zl!343)) (is-Nil!66175 s!2326) (not (= zl!343 (Cons!66174 (h!72622 zl!343) (t!380041 zl!343))))))))

(declare-fun b!6842061 () Bool)

(declare-fun tp!1873812 () Bool)

(assert (=> b!6842061 (= e!4126361 tp!1873812)))

(assert (= (and start!661126 res!2793425) b!6842054))

(assert (= (and b!6842054 res!2793426) b!6842047))

(assert (= (and b!6842047 res!2793429) b!6842053))

(assert (= (and b!6842053 res!2793423) b!6842052))

(assert (= (and b!6842053 (not res!2793427)) b!6842060))

(assert (= (and b!6842060 (not res!2793424)) b!6842049))

(assert (= (and b!6842049 (not res!2793428)) b!6842051))

(assert (= (and b!6842051 (not res!2793430)) b!6842048))

(assert (= (and start!661126 (is-ElementMatch!16666 r!7292)) b!6842046))

(assert (= (and start!661126 (is-Concat!25511 r!7292)) b!6842055))

(assert (= (and start!661126 (is-Star!16666 r!7292)) b!6842061))

(assert (= (and start!661126 (is-Union!16666 r!7292)) b!6842059))

(assert (= (and start!661126 condSetEmpty!47032) setIsEmpty!47032))

(assert (= (and start!661126 (not condSetEmpty!47032)) setNonEmpty!47032))

(assert (= setNonEmpty!47032 b!6842057))

(assert (= b!6842058 b!6842050))

(assert (= (and start!661126 (is-Cons!66174 zl!343)) b!6842058))

(assert (= (and start!661126 (is-Cons!66175 s!2326)) b!6842056))

(declare-fun m!7584308 () Bool)

(assert (=> setNonEmpty!47032 m!7584308))

(declare-fun m!7584310 () Bool)

(assert (=> b!6842051 m!7584310))

(declare-fun m!7584312 () Bool)

(assert (=> b!6842051 m!7584312))

(declare-fun m!7584314 () Bool)

(assert (=> b!6842049 m!7584314))

(declare-fun m!7584316 () Bool)

(assert (=> b!6842058 m!7584316))

(declare-fun m!7584318 () Bool)

(assert (=> start!661126 m!7584318))

(declare-fun m!7584320 () Bool)

(assert (=> b!6842054 m!7584320))

(declare-fun m!7584322 () Bool)

(assert (=> b!6842048 m!7584322))

(declare-fun m!7584324 () Bool)

(assert (=> b!6842047 m!7584324))

(declare-fun m!7584326 () Bool)

(assert (=> b!6842053 m!7584326))

(declare-fun m!7584328 () Bool)

(assert (=> b!6842053 m!7584328))

(declare-fun m!7584330 () Bool)

(assert (=> b!6842053 m!7584330))

(assert (=> b!6842052 m!7584314))

(push 1)

(assert (not start!661126))

(assert (not b!6842055))

(assert (not b!6842056))

(assert (not b!6842048))

(assert (not b!6842052))

(assert tp_is_empty!42585)

(assert (not b!6842047))

(assert (not b!6842053))

(assert (not b!6842051))

(assert (not b!6842054))

(assert (not b!6842059))

(assert (not b!6842061))

(assert (not b!6842058))

(assert (not b!6842050))

(assert (not b!6842057))

(assert (not setNonEmpty!47032))

(assert (not b!6842049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2151197 () Bool)

(declare-fun lt!2455379 () Regex!16666)

(assert (=> d!2151197 (validRegex!8402 lt!2455379)))

(assert (=> d!2151197 (= lt!2455379 (generalisedUnion!2506 (unfocusZipperList!2083 zl!343)))))

(assert (=> d!2151197 (= (unfocusZipper!2408 zl!343) lt!2455379)))

(declare-fun bs!1829236 () Bool)

(assert (= bs!1829236 d!2151197))

(declare-fun m!7584362 () Bool)

(assert (=> bs!1829236 m!7584362))

(assert (=> bs!1829236 m!7584312))

(assert (=> bs!1829236 m!7584312))

(declare-fun m!7584364 () Bool)

(assert (=> bs!1829236 m!7584364))

(assert (=> b!6842047 d!2151197))

(declare-fun d!2151199 () Bool)

(assert (=> d!2151199 (= (isEmpty!38552 (t!380041 zl!343)) (is-Nil!66174 (t!380041 zl!343)))))

(assert (=> b!6842052 d!2151199))

(declare-fun b!6842150 () Bool)

(declare-fun e!4126425 () Bool)

(declare-fun lt!2455385 () Bool)

(declare-fun call!623112 () Bool)

(assert (=> b!6842150 (= e!4126425 (= lt!2455385 call!623112))))

(declare-fun b!6842151 () Bool)

(declare-fun res!2793480 () Bool)

(declare-fun e!4126424 () Bool)

(assert (=> b!6842151 (=> res!2793480 e!4126424)))

(assert (=> b!6842151 (= res!2793480 (not (is-ElementMatch!16666 r!7292)))))

(declare-fun e!4126422 () Bool)

(assert (=> b!6842151 (= e!4126422 e!4126424)))

(declare-fun b!6842152 () Bool)

(declare-fun e!4126423 () Bool)

(declare-fun derivativeStep!5314 (Regex!16666 C!33602) Regex!16666)

(declare-fun head!13708 (List!66299) C!33602)

(declare-fun tail!12793 (List!66299) List!66299)

(assert (=> b!6842152 (= e!4126423 (matchR!8849 (derivativeStep!5314 r!7292 (head!13708 s!2326)) (tail!12793 s!2326)))))

(declare-fun b!6842153 () Bool)

(declare-fun e!4126421 () Bool)

(assert (=> b!6842153 (= e!4126424 e!4126421)))

(declare-fun res!2793482 () Bool)

(assert (=> b!6842153 (=> (not res!2793482) (not e!4126421))))

(assert (=> b!6842153 (= res!2793482 (not lt!2455385))))

(declare-fun b!6842154 () Bool)

(declare-fun nullable!6631 (Regex!16666) Bool)

(assert (=> b!6842154 (= e!4126423 (nullable!6631 r!7292))))

(declare-fun b!6842155 () Bool)

(assert (=> b!6842155 (= e!4126422 (not lt!2455385))))

(declare-fun b!6842156 () Bool)

(declare-fun res!2793481 () Bool)

(declare-fun e!4126420 () Bool)

(assert (=> b!6842156 (=> (not res!2793481) (not e!4126420))))

(assert (=> b!6842156 (= res!2793481 (not call!623112))))

(declare-fun b!6842157 () Bool)

(declare-fun res!2793477 () Bool)

(assert (=> b!6842157 (=> res!2793477 e!4126424)))

(assert (=> b!6842157 (= res!2793477 e!4126420)))

(declare-fun res!2793478 () Bool)

(assert (=> b!6842157 (=> (not res!2793478) (not e!4126420))))

(assert (=> b!6842157 (= res!2793478 lt!2455385)))

(declare-fun bm!623107 () Bool)

(declare-fun isEmpty!38554 (List!66299) Bool)

(assert (=> bm!623107 (= call!623112 (isEmpty!38554 s!2326))))

(declare-fun b!6842158 () Bool)

(assert (=> b!6842158 (= e!4126425 e!4126422)))

(declare-fun c!1273793 () Bool)

(assert (=> b!6842158 (= c!1273793 (is-EmptyLang!16666 r!7292))))

(declare-fun b!6842159 () Bool)

(declare-fun e!4126426 () Bool)

(assert (=> b!6842159 (= e!4126421 e!4126426)))

(declare-fun res!2793479 () Bool)

(assert (=> b!6842159 (=> res!2793479 e!4126426)))

(assert (=> b!6842159 (= res!2793479 call!623112)))

(declare-fun d!2151201 () Bool)

(assert (=> d!2151201 e!4126425))

(declare-fun c!1273794 () Bool)

(assert (=> d!2151201 (= c!1273794 (is-EmptyExpr!16666 r!7292))))

(assert (=> d!2151201 (= lt!2455385 e!4126423)))

(declare-fun c!1273795 () Bool)

(assert (=> d!2151201 (= c!1273795 (isEmpty!38554 s!2326))))

(assert (=> d!2151201 (validRegex!8402 r!7292)))

(assert (=> d!2151201 (= (matchR!8849 r!7292 s!2326) lt!2455385)))

(declare-fun b!6842160 () Bool)

(declare-fun res!2793483 () Bool)

(assert (=> b!6842160 (=> (not res!2793483) (not e!4126420))))

(assert (=> b!6842160 (= res!2793483 (isEmpty!38554 (tail!12793 s!2326)))))

(declare-fun b!6842161 () Bool)

(assert (=> b!6842161 (= e!4126426 (not (= (head!13708 s!2326) (c!1273782 r!7292))))))

(declare-fun b!6842162 () Bool)

(declare-fun res!2793484 () Bool)

(assert (=> b!6842162 (=> res!2793484 e!4126426)))

(assert (=> b!6842162 (= res!2793484 (not (isEmpty!38554 (tail!12793 s!2326))))))

(declare-fun b!6842163 () Bool)

(assert (=> b!6842163 (= e!4126420 (= (head!13708 s!2326) (c!1273782 r!7292)))))

(assert (= (and d!2151201 c!1273795) b!6842154))

(assert (= (and d!2151201 (not c!1273795)) b!6842152))

(assert (= (and d!2151201 c!1273794) b!6842150))

(assert (= (and d!2151201 (not c!1273794)) b!6842158))

(assert (= (and b!6842158 c!1273793) b!6842155))

(assert (= (and b!6842158 (not c!1273793)) b!6842151))

(assert (= (and b!6842151 (not res!2793480)) b!6842157))

(assert (= (and b!6842157 res!2793478) b!6842156))

(assert (= (and b!6842156 res!2793481) b!6842160))

(assert (= (and b!6842160 res!2793483) b!6842163))

(assert (= (and b!6842157 (not res!2793477)) b!6842153))

(assert (= (and b!6842153 res!2793482) b!6842159))

(assert (= (and b!6842159 (not res!2793479)) b!6842162))

(assert (= (and b!6842162 (not res!2793484)) b!6842161))

(assert (= (or b!6842150 b!6842156 b!6842159) bm!623107))

(declare-fun m!7584372 () Bool)

(assert (=> b!6842163 m!7584372))

(declare-fun m!7584374 () Bool)

(assert (=> d!2151201 m!7584374))

(assert (=> d!2151201 m!7584318))

(declare-fun m!7584376 () Bool)

(assert (=> b!6842160 m!7584376))

(assert (=> b!6842160 m!7584376))

(declare-fun m!7584378 () Bool)

(assert (=> b!6842160 m!7584378))

(assert (=> b!6842162 m!7584376))

(assert (=> b!6842162 m!7584376))

(assert (=> b!6842162 m!7584378))

(assert (=> b!6842161 m!7584372))

(assert (=> bm!623107 m!7584374))

(declare-fun m!7584380 () Bool)

(assert (=> b!6842154 m!7584380))

(assert (=> b!6842152 m!7584372))

(assert (=> b!6842152 m!7584372))

(declare-fun m!7584382 () Bool)

(assert (=> b!6842152 m!7584382))

(assert (=> b!6842152 m!7584376))

(assert (=> b!6842152 m!7584382))

(assert (=> b!6842152 m!7584376))

(declare-fun m!7584384 () Bool)

(assert (=> b!6842152 m!7584384))

(assert (=> b!6842053 d!2151201))

(declare-fun b!6842223 () Bool)

(assert (=> b!6842223 true))

(assert (=> b!6842223 true))

(declare-fun bs!1829239 () Bool)

(declare-fun b!6842231 () Bool)

(assert (= bs!1829239 (and b!6842231 b!6842223)))

(declare-fun lambda!386847 () Int)

(declare-fun lambda!386846 () Int)

(assert (=> bs!1829239 (not (= lambda!386847 lambda!386846))))

(assert (=> b!6842231 true))

(assert (=> b!6842231 true))

(declare-fun e!4126467 () Bool)

(declare-fun call!623126 () Bool)

(assert (=> b!6842223 (= e!4126467 call!623126)))

(declare-fun b!6842224 () Bool)

(declare-fun e!4126472 () Bool)

(declare-fun call!623127 () Bool)

(assert (=> b!6842224 (= e!4126472 call!623127)))

(declare-fun b!6842225 () Bool)

(declare-fun e!4126469 () Bool)

(declare-fun e!4126470 () Bool)

(assert (=> b!6842225 (= e!4126469 e!4126470)))

(declare-fun res!2793518 () Bool)

(assert (=> b!6842225 (= res!2793518 (matchRSpec!3767 (regOne!33845 r!7292) s!2326))))

(assert (=> b!6842225 (=> res!2793518 e!4126470)))

(declare-fun b!6842226 () Bool)

(declare-fun c!1273810 () Bool)

(assert (=> b!6842226 (= c!1273810 (is-Union!16666 r!7292))))

(declare-fun e!4126471 () Bool)

(assert (=> b!6842226 (= e!4126471 e!4126469)))

(declare-fun b!6842227 () Bool)

(assert (=> b!6842227 (= e!4126470 (matchRSpec!3767 (regTwo!33845 r!7292) s!2326))))

(declare-fun b!6842228 () Bool)

(declare-fun e!4126466 () Bool)

(assert (=> b!6842228 (= e!4126469 e!4126466)))

(declare-fun c!1273813 () Bool)

(assert (=> b!6842228 (= c!1273813 (is-Star!16666 r!7292))))

(declare-fun b!6842229 () Bool)

(declare-fun res!2793517 () Bool)

(assert (=> b!6842229 (=> res!2793517 e!4126467)))

(assert (=> b!6842229 (= res!2793517 call!623127)))

(assert (=> b!6842229 (= e!4126466 e!4126467)))

(declare-fun bm!623121 () Bool)

(assert (=> bm!623121 (= call!623127 (isEmpty!38554 s!2326))))

(declare-fun b!6842230 () Bool)

(declare-fun c!1273812 () Bool)

(assert (=> b!6842230 (= c!1273812 (is-ElementMatch!16666 r!7292))))

(declare-fun e!4126468 () Bool)

(assert (=> b!6842230 (= e!4126468 e!4126471)))

(assert (=> b!6842231 (= e!4126466 call!623126)))

(declare-fun bm!623122 () Bool)

(declare-fun Exists!3730 (Int) Bool)

(assert (=> bm!623122 (= call!623126 (Exists!3730 (ite c!1273813 lambda!386846 lambda!386847)))))

(declare-fun b!6842233 () Bool)

(assert (=> b!6842233 (= e!4126471 (= s!2326 (Cons!66175 (c!1273782 r!7292) Nil!66175)))))

(declare-fun d!2151205 () Bool)

(declare-fun c!1273811 () Bool)

(assert (=> d!2151205 (= c!1273811 (is-EmptyExpr!16666 r!7292))))

(assert (=> d!2151205 (= (matchRSpec!3767 r!7292 s!2326) e!4126472)))

(declare-fun b!6842232 () Bool)

(assert (=> b!6842232 (= e!4126472 e!4126468)))

(declare-fun res!2793516 () Bool)

(assert (=> b!6842232 (= res!2793516 (not (is-EmptyLang!16666 r!7292)))))

(assert (=> b!6842232 (=> (not res!2793516) (not e!4126468))))

(assert (= (and d!2151205 c!1273811) b!6842224))

(assert (= (and d!2151205 (not c!1273811)) b!6842232))

(assert (= (and b!6842232 res!2793516) b!6842230))

(assert (= (and b!6842230 c!1273812) b!6842233))

(assert (= (and b!6842230 (not c!1273812)) b!6842226))

(assert (= (and b!6842226 c!1273810) b!6842225))

(assert (= (and b!6842226 (not c!1273810)) b!6842228))

(assert (= (and b!6842225 (not res!2793518)) b!6842227))

(assert (= (and b!6842228 c!1273813) b!6842229))

(assert (= (and b!6842228 (not c!1273813)) b!6842231))

(assert (= (and b!6842229 (not res!2793517)) b!6842223))

(assert (= (or b!6842223 b!6842231) bm!623122))

(assert (= (or b!6842224 b!6842229) bm!623121))

(declare-fun m!7584392 () Bool)

(assert (=> b!6842225 m!7584392))

(declare-fun m!7584394 () Bool)

(assert (=> b!6842227 m!7584394))

(assert (=> bm!623121 m!7584374))

(declare-fun m!7584396 () Bool)

(assert (=> bm!623122 m!7584396))

(assert (=> b!6842053 d!2151205))

(declare-fun d!2151209 () Bool)

(assert (=> d!2151209 (= (matchR!8849 r!7292 s!2326) (matchRSpec!3767 r!7292 s!2326))))

(declare-fun lt!2455388 () Unit!160031)

(declare-fun choose!51021 (Regex!16666 List!66299) Unit!160031)

(assert (=> d!2151209 (= lt!2455388 (choose!51021 r!7292 s!2326))))

(assert (=> d!2151209 (validRegex!8402 r!7292)))

(assert (=> d!2151209 (= (mainMatchTheorem!3767 r!7292 s!2326) lt!2455388)))

(declare-fun bs!1829240 () Bool)

(assert (= bs!1829240 d!2151209))

(assert (=> bs!1829240 m!7584326))

(assert (=> bs!1829240 m!7584328))

(declare-fun m!7584398 () Bool)

(assert (=> bs!1829240 m!7584398))

(assert (=> bs!1829240 m!7584318))

(assert (=> b!6842053 d!2151209))

(declare-fun d!2151211 () Bool)

(declare-fun res!2793523 () Bool)

(declare-fun e!4126477 () Bool)

(assert (=> d!2151211 (=> res!2793523 e!4126477)))

(assert (=> d!2151211 (= res!2793523 (is-Nil!66173 lt!2455370))))

(assert (=> d!2151211 (= (forall!15841 lt!2455370 lambda!386832) e!4126477)))

(declare-fun b!6842242 () Bool)

(declare-fun e!4126478 () Bool)

(assert (=> b!6842242 (= e!4126477 e!4126478)))

(declare-fun res!2793524 () Bool)

(assert (=> b!6842242 (=> (not res!2793524) (not e!4126478))))

(declare-fun dynLambda!26433 (Int Regex!16666) Bool)

(assert (=> b!6842242 (= res!2793524 (dynLambda!26433 lambda!386832 (h!72621 lt!2455370)))))

(declare-fun b!6842243 () Bool)

(assert (=> b!6842243 (= e!4126478 (forall!15841 (t!380040 lt!2455370) lambda!386832))))

(assert (= (and d!2151211 (not res!2793523)) b!6842242))

(assert (= (and b!6842242 res!2793524) b!6842243))

(declare-fun b_lambda!258037 () Bool)

(assert (=> (not b_lambda!258037) (not b!6842242)))

(declare-fun m!7584400 () Bool)

(assert (=> b!6842242 m!7584400))

(declare-fun m!7584402 () Bool)

(assert (=> b!6842243 m!7584402))

(assert (=> b!6842051 d!2151211))

(declare-fun bs!1829241 () Bool)

(declare-fun d!2151213 () Bool)

(assert (= bs!1829241 (and d!2151213 b!6842051)))

(declare-fun lambda!386850 () Int)

(assert (=> bs!1829241 (= lambda!386850 lambda!386832)))

(declare-fun lt!2455393 () List!66297)

(assert (=> d!2151213 (forall!15841 lt!2455393 lambda!386850)))

(declare-fun e!4126491 () List!66297)

(assert (=> d!2151213 (= lt!2455393 e!4126491)))

(declare-fun c!1273822 () Bool)

(assert (=> d!2151213 (= c!1273822 (is-Cons!66174 zl!343))))

(assert (=> d!2151213 (= (unfocusZipperList!2083 zl!343) lt!2455393)))

(declare-fun b!6842270 () Bool)

(declare-fun generalisedConcat!2259 (List!66297) Regex!16666)

(assert (=> b!6842270 (= e!4126491 (Cons!66173 (generalisedConcat!2259 (exprs!6550 (h!72622 zl!343))) (unfocusZipperList!2083 (t!380041 zl!343))))))

(declare-fun b!6842271 () Bool)

(assert (=> b!6842271 (= e!4126491 Nil!66173)))

(assert (= (and d!2151213 c!1273822) b!6842270))

(assert (= (and d!2151213 (not c!1273822)) b!6842271))

(declare-fun m!7584404 () Bool)

(assert (=> d!2151213 m!7584404))

(declare-fun m!7584406 () Bool)

(assert (=> b!6842270 m!7584406))

(declare-fun m!7584408 () Bool)

(assert (=> b!6842270 m!7584408))

(assert (=> b!6842051 d!2151213))

(declare-fun b!6842296 () Bool)

(declare-fun e!4126514 () Bool)

(declare-fun e!4126513 () Bool)

(assert (=> b!6842296 (= e!4126514 e!4126513)))

(declare-fun res!2793555 () Bool)

(assert (=> b!6842296 (=> (not res!2793555) (not e!4126513))))

(declare-fun call!623137 () Bool)

(assert (=> b!6842296 (= res!2793555 call!623137)))

(declare-fun d!2151215 () Bool)

(declare-fun res!2793551 () Bool)

(declare-fun e!4126510 () Bool)

(assert (=> d!2151215 (=> res!2793551 e!4126510)))

(assert (=> d!2151215 (= res!2793551 (is-ElementMatch!16666 r!7292))))

(assert (=> d!2151215 (= (validRegex!8402 r!7292) e!4126510)))

(declare-fun b!6842297 () Bool)

(declare-fun e!4126511 () Bool)

(declare-fun call!623136 () Bool)

(assert (=> b!6842297 (= e!4126511 call!623136)))

(declare-fun b!6842298 () Bool)

(assert (=> b!6842298 (= e!4126513 call!623136)))

(declare-fun b!6842299 () Bool)

(declare-fun e!4126516 () Bool)

(declare-fun e!4126512 () Bool)

(assert (=> b!6842299 (= e!4126516 e!4126512)))

(declare-fun res!2793554 () Bool)

(assert (=> b!6842299 (= res!2793554 (not (nullable!6631 (reg!16995 r!7292))))))

(assert (=> b!6842299 (=> (not res!2793554) (not e!4126512))))

(declare-fun b!6842300 () Bool)

(declare-fun res!2793552 () Bool)

(assert (=> b!6842300 (=> (not res!2793552) (not e!4126511))))

(assert (=> b!6842300 (= res!2793552 call!623137)))

(declare-fun e!4126515 () Bool)

(assert (=> b!6842300 (= e!4126515 e!4126511)))

(declare-fun bm!623131 () Bool)

(declare-fun call!623138 () Bool)

(assert (=> bm!623131 (= call!623136 call!623138)))

(declare-fun b!6842301 () Bool)

(declare-fun res!2793553 () Bool)

(assert (=> b!6842301 (=> res!2793553 e!4126514)))

(assert (=> b!6842301 (= res!2793553 (not (is-Concat!25511 r!7292)))))

(assert (=> b!6842301 (= e!4126515 e!4126514)))

(declare-fun c!1273827 () Bool)

(declare-fun c!1273828 () Bool)

(declare-fun bm!623132 () Bool)

(assert (=> bm!623132 (= call!623138 (validRegex!8402 (ite c!1273828 (reg!16995 r!7292) (ite c!1273827 (regTwo!33845 r!7292) (regTwo!33844 r!7292)))))))

(declare-fun b!6842302 () Bool)

(assert (=> b!6842302 (= e!4126512 call!623138)))

(declare-fun bm!623133 () Bool)

(assert (=> bm!623133 (= call!623137 (validRegex!8402 (ite c!1273827 (regOne!33845 r!7292) (regOne!33844 r!7292))))))

(declare-fun b!6842303 () Bool)

(assert (=> b!6842303 (= e!4126516 e!4126515)))

(assert (=> b!6842303 (= c!1273827 (is-Union!16666 r!7292))))

(declare-fun b!6842304 () Bool)

(assert (=> b!6842304 (= e!4126510 e!4126516)))

(assert (=> b!6842304 (= c!1273828 (is-Star!16666 r!7292))))

(assert (= (and d!2151215 (not res!2793551)) b!6842304))

(assert (= (and b!6842304 c!1273828) b!6842299))

(assert (= (and b!6842304 (not c!1273828)) b!6842303))

(assert (= (and b!6842299 res!2793554) b!6842302))

(assert (= (and b!6842303 c!1273827) b!6842300))

(assert (= (and b!6842303 (not c!1273827)) b!6842301))

(assert (= (and b!6842300 res!2793552) b!6842297))

(assert (= (and b!6842301 (not res!2793553)) b!6842296))

(assert (= (and b!6842296 res!2793555) b!6842298))

(assert (= (or b!6842297 b!6842298) bm!623131))

(assert (= (or b!6842300 b!6842296) bm!623133))

(assert (= (or b!6842302 bm!623131) bm!623132))

(declare-fun m!7584410 () Bool)

(assert (=> b!6842299 m!7584410))

(declare-fun m!7584412 () Bool)

(assert (=> bm!623132 m!7584412))

(declare-fun m!7584414 () Bool)

(assert (=> bm!623133 m!7584414))

(assert (=> start!661126 d!2151215))

(declare-fun bs!1829242 () Bool)

(declare-fun d!2151217 () Bool)

(assert (= bs!1829242 (and d!2151217 b!6842051)))

(declare-fun lambda!386853 () Int)

(assert (=> bs!1829242 (= lambda!386853 lambda!386832)))

(declare-fun bs!1829243 () Bool)

(assert (= bs!1829243 (and d!2151217 d!2151213)))

(assert (=> bs!1829243 (= lambda!386853 lambda!386850)))

(assert (=> d!2151217 (= (inv!84913 setElem!47032) (forall!15841 (exprs!6550 setElem!47032) lambda!386853))))

(declare-fun bs!1829244 () Bool)

(assert (= bs!1829244 d!2151217))

(declare-fun m!7584416 () Bool)

(assert (=> bs!1829244 m!7584416))

(assert (=> setNonEmpty!47032 d!2151217))

(declare-fun bs!1829245 () Bool)

(declare-fun d!2151219 () Bool)

(assert (= bs!1829245 (and d!2151219 b!6842051)))

(declare-fun lambda!386854 () Int)

(assert (=> bs!1829245 (= lambda!386854 lambda!386832)))

(declare-fun bs!1829246 () Bool)

(assert (= bs!1829246 (and d!2151219 d!2151213)))

(assert (=> bs!1829246 (= lambda!386854 lambda!386850)))

(declare-fun bs!1829247 () Bool)

(assert (= bs!1829247 (and d!2151219 d!2151217)))

(assert (=> bs!1829247 (= lambda!386854 lambda!386853)))

(assert (=> d!2151219 (= (inv!84913 (h!72622 zl!343)) (forall!15841 (exprs!6550 (h!72622 zl!343)) lambda!386854))))

(declare-fun bs!1829248 () Bool)

(assert (= bs!1829248 d!2151219))

(declare-fun m!7584418 () Bool)

(assert (=> bs!1829248 m!7584418))

(assert (=> b!6842058 d!2151219))

(declare-fun bs!1829249 () Bool)

(declare-fun d!2151221 () Bool)

(assert (= bs!1829249 (and d!2151221 b!6842051)))

(declare-fun lambda!386857 () Int)

(assert (=> bs!1829249 (= lambda!386857 lambda!386832)))

(declare-fun bs!1829250 () Bool)

(assert (= bs!1829250 (and d!2151221 d!2151213)))

(assert (=> bs!1829250 (= lambda!386857 lambda!386850)))

(declare-fun bs!1829251 () Bool)

(assert (= bs!1829251 (and d!2151221 d!2151217)))

(assert (=> bs!1829251 (= lambda!386857 lambda!386853)))

(declare-fun bs!1829252 () Bool)

(assert (= bs!1829252 (and d!2151221 d!2151219)))

(assert (=> bs!1829252 (= lambda!386857 lambda!386854)))

(declare-fun b!6842339 () Bool)

(declare-fun e!4126541 () Bool)

(declare-fun e!4126539 () Bool)

(assert (=> b!6842339 (= e!4126541 e!4126539)))

(declare-fun c!1273841 () Bool)

(declare-fun isEmpty!38555 (List!66297) Bool)

(declare-fun tail!12794 (List!66297) List!66297)

(assert (=> b!6842339 (= c!1273841 (isEmpty!38555 (tail!12794 lt!2455370)))))

(declare-fun b!6842341 () Bool)

(declare-fun e!4126536 () Bool)

(assert (=> b!6842341 (= e!4126536 (isEmpty!38555 (t!380040 lt!2455370)))))

(declare-fun b!6842342 () Bool)

(declare-fun e!4126538 () Regex!16666)

(declare-fun e!4126540 () Regex!16666)

(assert (=> b!6842342 (= e!4126538 e!4126540)))

(declare-fun c!1273840 () Bool)

(assert (=> b!6842342 (= c!1273840 (is-Cons!66173 lt!2455370))))

(declare-fun b!6842343 () Bool)

(assert (=> b!6842343 (= e!4126540 (Union!16666 (h!72621 lt!2455370) (generalisedUnion!2506 (t!380040 lt!2455370))))))

(declare-fun b!6842344 () Bool)

(declare-fun lt!2455397 () Regex!16666)

(declare-fun isEmptyLang!2012 (Regex!16666) Bool)

(assert (=> b!6842344 (= e!4126541 (isEmptyLang!2012 lt!2455397))))

(declare-fun b!6842345 () Bool)

(assert (=> b!6842345 (= e!4126540 EmptyLang!16666)))

(declare-fun b!6842346 () Bool)

(declare-fun isUnion!1442 (Regex!16666) Bool)

(assert (=> b!6842346 (= e!4126539 (isUnion!1442 lt!2455397))))

(declare-fun e!4126537 () Bool)

(assert (=> d!2151221 e!4126537))

(declare-fun res!2793569 () Bool)

(assert (=> d!2151221 (=> (not res!2793569) (not e!4126537))))

(assert (=> d!2151221 (= res!2793569 (validRegex!8402 lt!2455397))))

(assert (=> d!2151221 (= lt!2455397 e!4126538)))

(declare-fun c!1273843 () Bool)

(assert (=> d!2151221 (= c!1273843 e!4126536)))

(declare-fun res!2793568 () Bool)

(assert (=> d!2151221 (=> (not res!2793568) (not e!4126536))))

(assert (=> d!2151221 (= res!2793568 (is-Cons!66173 lt!2455370))))

(assert (=> d!2151221 (forall!15841 lt!2455370 lambda!386857)))

(assert (=> d!2151221 (= (generalisedUnion!2506 lt!2455370) lt!2455397)))

(declare-fun b!6842340 () Bool)

(declare-fun head!13709 (List!66297) Regex!16666)

(assert (=> b!6842340 (= e!4126539 (= lt!2455397 (head!13709 lt!2455370)))))

(declare-fun b!6842347 () Bool)

(assert (=> b!6842347 (= e!4126537 e!4126541)))

(declare-fun c!1273842 () Bool)

(assert (=> b!6842347 (= c!1273842 (isEmpty!38555 lt!2455370))))

(declare-fun b!6842348 () Bool)

(assert (=> b!6842348 (= e!4126538 (h!72621 lt!2455370))))

(assert (= (and d!2151221 res!2793568) b!6842341))

(assert (= (and d!2151221 c!1273843) b!6842348))

(assert (= (and d!2151221 (not c!1273843)) b!6842342))

(assert (= (and b!6842342 c!1273840) b!6842343))

(assert (= (and b!6842342 (not c!1273840)) b!6842345))

(assert (= (and d!2151221 res!2793569) b!6842347))

(assert (= (and b!6842347 c!1273842) b!6842344))

(assert (= (and b!6842347 (not c!1273842)) b!6842339))

(assert (= (and b!6842339 c!1273841) b!6842340))

(assert (= (and b!6842339 (not c!1273841)) b!6842346))

(declare-fun m!7584434 () Bool)

(assert (=> d!2151221 m!7584434))

(declare-fun m!7584436 () Bool)

(assert (=> d!2151221 m!7584436))

(declare-fun m!7584438 () Bool)

(assert (=> b!6842339 m!7584438))

(assert (=> b!6842339 m!7584438))

(declare-fun m!7584440 () Bool)

(assert (=> b!6842339 m!7584440))

(declare-fun m!7584442 () Bool)

(assert (=> b!6842344 m!7584442))

(declare-fun m!7584444 () Bool)

(assert (=> b!6842341 m!7584444))

(declare-fun m!7584446 () Bool)

(assert (=> b!6842346 m!7584446))

(declare-fun m!7584448 () Bool)

(assert (=> b!6842340 m!7584448))

(declare-fun m!7584450 () Bool)

(assert (=> b!6842347 m!7584450))

(declare-fun m!7584452 () Bool)

(assert (=> b!6842343 m!7584452))

(assert (=> b!6842048 d!2151221))

(assert (=> b!6842049 d!2151199))

(declare-fun d!2151225 () Bool)

(declare-fun e!4126544 () Bool)

(assert (=> d!2151225 e!4126544))

(declare-fun res!2793572 () Bool)

(assert (=> d!2151225 (=> (not res!2793572) (not e!4126544))))

(declare-fun lt!2455400 () List!66298)

(declare-fun noDuplicate!2435 (List!66298) Bool)

(assert (=> d!2151225 (= res!2793572 (noDuplicate!2435 lt!2455400))))

(declare-fun choose!51022 ((Set Context!12100)) List!66298)

(assert (=> d!2151225 (= lt!2455400 (choose!51022 z!1189))))

(assert (=> d!2151225 (= (toList!10450 z!1189) lt!2455400)))

(declare-fun b!6842351 () Bool)

(declare-fun content!12970 (List!66298) (Set Context!12100))

(assert (=> b!6842351 (= e!4126544 (= (content!12970 lt!2455400) z!1189))))

(assert (= (and d!2151225 res!2793572) b!6842351))

(declare-fun m!7584454 () Bool)

(assert (=> d!2151225 m!7584454))

(declare-fun m!7584456 () Bool)

(assert (=> d!2151225 m!7584456))

(declare-fun m!7584458 () Bool)

(assert (=> b!6842351 m!7584458))

(assert (=> b!6842054 d!2151225))

(declare-fun b!6842363 () Bool)

(declare-fun e!4126547 () Bool)

(declare-fun tp!1873866 () Bool)

(declare-fun tp!1873865 () Bool)

(assert (=> b!6842363 (= e!4126547 (and tp!1873866 tp!1873865))))

(assert (=> b!6842061 (= tp!1873812 e!4126547)))

(declare-fun b!6842364 () Bool)

(declare-fun tp!1873863 () Bool)

(assert (=> b!6842364 (= e!4126547 tp!1873863)))

(declare-fun b!6842362 () Bool)

(assert (=> b!6842362 (= e!4126547 tp_is_empty!42585)))

(declare-fun b!6842365 () Bool)

(declare-fun tp!1873864 () Bool)

(declare-fun tp!1873862 () Bool)

(assert (=> b!6842365 (= e!4126547 (and tp!1873864 tp!1873862))))

(assert (= (and b!6842061 (is-ElementMatch!16666 (reg!16995 r!7292))) b!6842362))

(assert (= (and b!6842061 (is-Concat!25511 (reg!16995 r!7292))) b!6842363))

(assert (= (and b!6842061 (is-Star!16666 (reg!16995 r!7292))) b!6842364))

(assert (= (and b!6842061 (is-Union!16666 (reg!16995 r!7292))) b!6842365))

(declare-fun b!6842370 () Bool)

(declare-fun e!4126550 () Bool)

(declare-fun tp!1873871 () Bool)

(declare-fun tp!1873872 () Bool)

(assert (=> b!6842370 (= e!4126550 (and tp!1873871 tp!1873872))))

(assert (=> b!6842057 (= tp!1873816 e!4126550)))

(assert (= (and b!6842057 (is-Cons!66173 (exprs!6550 setElem!47032))) b!6842370))

(declare-fun b!6842375 () Bool)

(declare-fun e!4126553 () Bool)

(declare-fun tp!1873875 () Bool)

(assert (=> b!6842375 (= e!4126553 (and tp_is_empty!42585 tp!1873875))))

(assert (=> b!6842056 (= tp!1873814 e!4126553)))

(assert (= (and b!6842056 (is-Cons!66175 (t!380042 s!2326))) b!6842375))

(declare-fun b!6842377 () Bool)

(declare-fun e!4126554 () Bool)

(declare-fun tp!1873880 () Bool)

(declare-fun tp!1873879 () Bool)

(assert (=> b!6842377 (= e!4126554 (and tp!1873880 tp!1873879))))

(assert (=> b!6842055 (= tp!1873818 e!4126554)))

(declare-fun b!6842378 () Bool)

(declare-fun tp!1873877 () Bool)

(assert (=> b!6842378 (= e!4126554 tp!1873877)))

(declare-fun b!6842376 () Bool)

(assert (=> b!6842376 (= e!4126554 tp_is_empty!42585)))

(declare-fun b!6842379 () Bool)

(declare-fun tp!1873878 () Bool)

(declare-fun tp!1873876 () Bool)

(assert (=> b!6842379 (= e!4126554 (and tp!1873878 tp!1873876))))

(assert (= (and b!6842055 (is-ElementMatch!16666 (regOne!33844 r!7292))) b!6842376))

(assert (= (and b!6842055 (is-Concat!25511 (regOne!33844 r!7292))) b!6842377))

(assert (= (and b!6842055 (is-Star!16666 (regOne!33844 r!7292))) b!6842378))

(assert (= (and b!6842055 (is-Union!16666 (regOne!33844 r!7292))) b!6842379))

(declare-fun b!6842381 () Bool)

(declare-fun e!4126555 () Bool)

(declare-fun tp!1873885 () Bool)

(declare-fun tp!1873884 () Bool)

(assert (=> b!6842381 (= e!4126555 (and tp!1873885 tp!1873884))))

(assert (=> b!6842055 (= tp!1873815 e!4126555)))

(declare-fun b!6842382 () Bool)

(declare-fun tp!1873882 () Bool)

(assert (=> b!6842382 (= e!4126555 tp!1873882)))

(declare-fun b!6842380 () Bool)

(assert (=> b!6842380 (= e!4126555 tp_is_empty!42585)))

(declare-fun b!6842383 () Bool)

(declare-fun tp!1873883 () Bool)

(declare-fun tp!1873881 () Bool)

(assert (=> b!6842383 (= e!4126555 (and tp!1873883 tp!1873881))))

(assert (= (and b!6842055 (is-ElementMatch!16666 (regTwo!33844 r!7292))) b!6842380))

(assert (= (and b!6842055 (is-Concat!25511 (regTwo!33844 r!7292))) b!6842381))

(assert (= (and b!6842055 (is-Star!16666 (regTwo!33844 r!7292))) b!6842382))

(assert (= (and b!6842055 (is-Union!16666 (regTwo!33844 r!7292))) b!6842383))

(declare-fun b!6842385 () Bool)

(declare-fun e!4126556 () Bool)

(declare-fun tp!1873890 () Bool)

(declare-fun tp!1873889 () Bool)

(assert (=> b!6842385 (= e!4126556 (and tp!1873890 tp!1873889))))

(assert (=> b!6842059 (= tp!1873817 e!4126556)))

(declare-fun b!6842386 () Bool)

(declare-fun tp!1873887 () Bool)

(assert (=> b!6842386 (= e!4126556 tp!1873887)))

(declare-fun b!6842384 () Bool)

(assert (=> b!6842384 (= e!4126556 tp_is_empty!42585)))

(declare-fun b!6842387 () Bool)

(declare-fun tp!1873888 () Bool)

(declare-fun tp!1873886 () Bool)

(assert (=> b!6842387 (= e!4126556 (and tp!1873888 tp!1873886))))

(assert (= (and b!6842059 (is-ElementMatch!16666 (regOne!33845 r!7292))) b!6842384))

(assert (= (and b!6842059 (is-Concat!25511 (regOne!33845 r!7292))) b!6842385))

(assert (= (and b!6842059 (is-Star!16666 (regOne!33845 r!7292))) b!6842386))

(assert (= (and b!6842059 (is-Union!16666 (regOne!33845 r!7292))) b!6842387))

(declare-fun b!6842389 () Bool)

(declare-fun e!4126557 () Bool)

(declare-fun tp!1873895 () Bool)

(declare-fun tp!1873894 () Bool)

(assert (=> b!6842389 (= e!4126557 (and tp!1873895 tp!1873894))))

(assert (=> b!6842059 (= tp!1873813 e!4126557)))

(declare-fun b!6842390 () Bool)

(declare-fun tp!1873892 () Bool)

(assert (=> b!6842390 (= e!4126557 tp!1873892)))

(declare-fun b!6842388 () Bool)

(assert (=> b!6842388 (= e!4126557 tp_is_empty!42585)))

(declare-fun b!6842391 () Bool)

(declare-fun tp!1873893 () Bool)

(declare-fun tp!1873891 () Bool)

(assert (=> b!6842391 (= e!4126557 (and tp!1873893 tp!1873891))))

(assert (= (and b!6842059 (is-ElementMatch!16666 (regTwo!33845 r!7292))) b!6842388))

(assert (= (and b!6842059 (is-Concat!25511 (regTwo!33845 r!7292))) b!6842389))

(assert (= (and b!6842059 (is-Star!16666 (regTwo!33845 r!7292))) b!6842390))

(assert (= (and b!6842059 (is-Union!16666 (regTwo!33845 r!7292))) b!6842391))

(declare-fun condSetEmpty!47038 () Bool)

(assert (=> setNonEmpty!47032 (= condSetEmpty!47038 (= setRest!47032 (as set.empty (Set Context!12100))))))

(declare-fun setRes!47038 () Bool)

(assert (=> setNonEmpty!47032 (= tp!1873819 setRes!47038)))

(declare-fun setIsEmpty!47038 () Bool)

(assert (=> setIsEmpty!47038 setRes!47038))

(declare-fun e!4126560 () Bool)

(declare-fun setNonEmpty!47038 () Bool)

(declare-fun tp!1873900 () Bool)

(declare-fun setElem!47038 () Context!12100)

(assert (=> setNonEmpty!47038 (= setRes!47038 (and tp!1873900 (inv!84913 setElem!47038) e!4126560))))

(declare-fun setRest!47038 () (Set Context!12100))

(assert (=> setNonEmpty!47038 (= setRest!47032 (set.union (set.insert setElem!47038 (as set.empty (Set Context!12100))) setRest!47038))))

(declare-fun b!6842396 () Bool)

(declare-fun tp!1873901 () Bool)

(assert (=> b!6842396 (= e!4126560 tp!1873901)))

(assert (= (and setNonEmpty!47032 condSetEmpty!47038) setIsEmpty!47038))

(assert (= (and setNonEmpty!47032 (not condSetEmpty!47038)) setNonEmpty!47038))

(assert (= setNonEmpty!47038 b!6842396))

(declare-fun m!7584460 () Bool)

(assert (=> setNonEmpty!47038 m!7584460))

(declare-fun b!6842397 () Bool)

(declare-fun e!4126561 () Bool)

(declare-fun tp!1873902 () Bool)

(declare-fun tp!1873903 () Bool)

(assert (=> b!6842397 (= e!4126561 (and tp!1873902 tp!1873903))))

(assert (=> b!6842050 (= tp!1873820 e!4126561)))

(assert (= (and b!6842050 (is-Cons!66173 (exprs!6550 (h!72622 zl!343)))) b!6842397))

(declare-fun b!6842405 () Bool)

(declare-fun e!4126567 () Bool)

(declare-fun tp!1873908 () Bool)

(assert (=> b!6842405 (= e!4126567 tp!1873908)))

(declare-fun e!4126566 () Bool)

(declare-fun tp!1873909 () Bool)

(declare-fun b!6842404 () Bool)

(assert (=> b!6842404 (= e!4126566 (and (inv!84913 (h!72622 (t!380041 zl!343))) e!4126567 tp!1873909))))

(assert (=> b!6842058 (= tp!1873821 e!4126566)))

(assert (= b!6842404 b!6842405))

(assert (= (and b!6842058 (is-Cons!66174 (t!380041 zl!343))) b!6842404))

(declare-fun m!7584462 () Bool)

(assert (=> b!6842404 m!7584462))

(declare-fun b_lambda!258039 () Bool)

(assert (= b_lambda!258037 (or b!6842051 b_lambda!258039)))

(declare-fun bs!1829253 () Bool)

(declare-fun d!2151227 () Bool)

(assert (= bs!1829253 (and d!2151227 b!6842051)))

(assert (=> bs!1829253 (= (dynLambda!26433 lambda!386832 (h!72621 lt!2455370)) (validRegex!8402 (h!72621 lt!2455370)))))

(declare-fun m!7584464 () Bool)

(assert (=> bs!1829253 m!7584464))

(assert (=> b!6842242 d!2151227))

(push 1)

(assert (not b!6842243))

(assert (not d!2151197))

(assert (not b!6842381))

(assert (not b!6842163))

(assert (not b!6842299))

(assert (not b!6842365))

(assert (not b!6842154))

(assert (not b!6842225))

(assert (not b!6842385))

(assert (not b!6842389))

(assert (not b!6842347))

(assert (not b!6842390))

(assert (not b!6842162))

(assert (not b!6842387))

(assert (not b!6842346))

(assert (not bs!1829253))

(assert (not b!6842404))

(assert (not b!6842341))

(assert (not b!6842375))

(assert (not b!6842386))

(assert (not bm!623132))

(assert (not b!6842377))

(assert (not d!2151225))

(assert (not d!2151209))

(assert (not bm!623107))

(assert (not b_lambda!258039))

(assert (not b!6842339))

(assert (not d!2151219))

(assert (not b!6842364))

(assert (not b!6842270))

(assert (not b!6842160))

(assert (not b!6842396))

(assert (not b!6842382))

(assert (not b!6842397))

(assert (not b!6842344))

(assert (not b!6842152))

(assert (not b!6842383))

(assert (not bm!623133))

(assert (not b!6842379))

(assert (not b!6842340))

(assert (not b!6842405))

(assert (not setNonEmpty!47038))

(assert (not d!2151201))

(assert tp_is_empty!42585)

(assert (not d!2151213))

(assert (not d!2151221))

(assert (not b!6842378))

(assert (not d!2151217))

(assert (not b!6842351))

(assert (not b!6842227))

(assert (not bm!623122))

(assert (not bm!623121))

(assert (not b!6842161))

(assert (not b!6842370))

(assert (not b!6842343))

(assert (not b!6842363))

(assert (not b!6842391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

