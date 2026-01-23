; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718240 () Bool)

(assert start!718240)

(declare-fun b!7355337 () Bool)

(declare-fun e!4403987 () Bool)

(declare-fun e!4403988 () Bool)

(assert (=> b!7355337 (= e!4403987 (not e!4403988))))

(declare-fun res!2970092 () Bool)

(assert (=> b!7355337 (=> res!2970092 e!4403988)))

(declare-datatypes ((C!38656 0))(
  ( (C!38657 (val!29688 Int)) )
))
(declare-datatypes ((Regex!19191 0))(
  ( (ElementMatch!19191 (c!1366569 C!38656)) (Concat!28036 (regOne!38894 Regex!19191) (regTwo!38894 Regex!19191)) (EmptyExpr!19191) (Star!19191 (reg!19520 Regex!19191)) (EmptyLang!19191) (Union!19191 (regOne!38895 Regex!19191) (regTwo!38895 Regex!19191)) )
))
(declare-datatypes ((List!71687 0))(
  ( (Nil!71563) (Cons!71563 (h!78011 Regex!19191) (t!386124 List!71687)) )
))
(declare-datatypes ((Context!16262 0))(
  ( (Context!16263 (exprs!8631 List!71687)) )
))
(declare-fun lt!2613129 () Context!16262)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2613132 () (InoxSet Context!16262))

(assert (=> b!7355337 (= res!2970092 (not (select lt!2613132 lt!2613129)))))

(declare-fun ct2!378 () Context!16262)

(declare-fun cWitness!61 () Context!16262)

(declare-fun lambda!456957 () Int)

(declare-datatypes ((Unit!165335 0))(
  ( (Unit!165336) )
))
(declare-fun lt!2613134 () Unit!165335)

(declare-fun lemmaConcatPreservesForall!1866 (List!71687 List!71687 Int) Unit!165335)

(assert (=> b!7355337 (= lt!2613134 (lemmaConcatPreservesForall!1866 (exprs!8631 cWitness!61) (exprs!8631 ct2!378) lambda!456957))))

(declare-fun lt!2613128 () List!71687)

(declare-fun c!10362 () C!38656)

(declare-fun r1!2370 () Regex!19191)

(declare-fun derivationStepZipperDown!3017 (Regex!19191 Context!16262 C!38656) (InoxSet Context!16262))

(declare-fun ++!17009 (List!71687 List!71687) List!71687)

(assert (=> b!7355337 (select (derivationStepZipperDown!3017 (reg!19520 r1!2370) (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378))) c!10362) lt!2613129)))

(assert (=> b!7355337 (= lt!2613129 (Context!16263 (++!17009 (exprs!8631 cWitness!61) (exprs!8631 ct2!378))))))

(declare-fun lt!2613135 () Unit!165335)

(assert (=> b!7355337 (= lt!2613135 (lemmaConcatPreservesForall!1866 lt!2613128 (exprs!8631 ct2!378) lambda!456957))))

(declare-fun lt!2613130 () Unit!165335)

(assert (=> b!7355337 (= lt!2613130 (lemmaConcatPreservesForall!1866 (exprs!8631 cWitness!61) (exprs!8631 ct2!378) lambda!456957))))

(declare-fun lt!2613133 () Context!16262)

(declare-fun lt!2613126 () Unit!165335)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!108 (Regex!19191 Context!16262 Context!16262 Context!16262 C!38656) Unit!165335)

(assert (=> b!7355337 (= lt!2613126 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!108 (reg!19520 r1!2370) lt!2613133 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7355338 () Bool)

(declare-fun e!4403990 () Bool)

(declare-fun forall!18011 (List!71687 Int) Bool)

(assert (=> b!7355338 (= e!4403990 (forall!18011 (exprs!8631 ct2!378) lambda!456957))))

(declare-fun b!7355339 () Bool)

(declare-fun e!4403993 () Bool)

(declare-fun tp_is_empty!48627 () Bool)

(assert (=> b!7355339 (= e!4403993 tp_is_empty!48627)))

(declare-fun b!7355340 () Bool)

(declare-fun tp!2089360 () Bool)

(assert (=> b!7355340 (= e!4403993 tp!2089360)))

(declare-fun b!7355341 () Bool)

(declare-fun e!4403985 () Bool)

(declare-fun e!4403989 () Bool)

(assert (=> b!7355341 (= e!4403985 e!4403989)))

(declare-fun res!2970090 () Bool)

(assert (=> b!7355341 (=> (not res!2970090) (not e!4403989))))

(get-info :version)

(assert (=> b!7355341 (= res!2970090 (and (or (not ((_ is ElementMatch!19191) r1!2370)) (not (= c!10362 (c!1366569 r1!2370)))) (not ((_ is Union!19191) r1!2370))))))

(declare-fun ct1!282 () Context!16262)

(assert (=> b!7355341 (= lt!2613132 (derivationStepZipperDown!3017 r1!2370 (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378))) c!10362))))

(declare-fun lt!2613125 () Unit!165335)

(assert (=> b!7355341 (= lt!2613125 (lemmaConcatPreservesForall!1866 (exprs!8631 ct1!282) (exprs!8631 ct2!378) lambda!456957))))

(declare-fun b!7355342 () Bool)

(declare-fun e!4403992 () Bool)

(declare-fun tp!2089358 () Bool)

(assert (=> b!7355342 (= e!4403992 tp!2089358)))

(declare-fun b!7355343 () Bool)

(declare-fun res!2970085 () Bool)

(assert (=> b!7355343 (=> (not res!2970085) (not e!4403989))))

(assert (=> b!7355343 (= res!2970085 (and (not ((_ is Concat!28036) r1!2370)) ((_ is Star!19191) r1!2370)))))

(declare-fun b!7355344 () Bool)

(declare-fun res!2970086 () Bool)

(assert (=> b!7355344 (=> (not res!2970086) (not e!4403989))))

(declare-fun e!4403986 () Bool)

(assert (=> b!7355344 (= res!2970086 e!4403986)))

(declare-fun res!2970089 () Bool)

(assert (=> b!7355344 (=> res!2970089 e!4403986)))

(assert (=> b!7355344 (= res!2970089 (not ((_ is Concat!28036) r1!2370)))))

(declare-fun b!7355345 () Bool)

(declare-fun tp!2089357 () Bool)

(declare-fun tp!2089361 () Bool)

(assert (=> b!7355345 (= e!4403993 (and tp!2089357 tp!2089361))))

(declare-fun b!7355346 () Bool)

(declare-fun e!4403991 () Bool)

(declare-fun tp!2089359 () Bool)

(assert (=> b!7355346 (= e!4403991 tp!2089359)))

(declare-fun b!7355347 () Bool)

(assert (=> b!7355347 (= e!4403988 e!4403990)))

(declare-fun res!2970083 () Bool)

(assert (=> b!7355347 (=> res!2970083 e!4403990)))

(assert (=> b!7355347 (= res!2970083 (not (forall!18011 (exprs!8631 cWitness!61) lambda!456957)))))

(declare-fun b!7355348 () Bool)

(declare-fun e!4403994 () Bool)

(declare-fun tp!2089355 () Bool)

(assert (=> b!7355348 (= e!4403994 tp!2089355)))

(declare-fun b!7355349 () Bool)

(declare-fun e!4403984 () Bool)

(assert (=> b!7355349 (= e!4403984 e!4403987)))

(declare-fun res!2970088 () Bool)

(assert (=> b!7355349 (=> (not res!2970088) (not e!4403987))))

(declare-fun lt!2613127 () (InoxSet Context!16262))

(assert (=> b!7355349 (= res!2970088 (= lt!2613127 (derivationStepZipperDown!3017 (reg!19520 r1!2370) lt!2613133 c!10362)))))

(assert (=> b!7355349 (= lt!2613133 (Context!16263 lt!2613128))))

(declare-fun lt!2613131 () Regex!19191)

(declare-fun $colon$colon!3188 (List!71687 Regex!19191) List!71687)

(assert (=> b!7355349 (= lt!2613128 ($colon$colon!3188 (exprs!8631 ct1!282) lt!2613131))))

(declare-fun b!7355350 () Bool)

(assert (=> b!7355350 (= e!4403989 e!4403984)))

(declare-fun res!2970087 () Bool)

(assert (=> b!7355350 (=> (not res!2970087) (not e!4403984))))

(declare-fun validRegex!9787 (Regex!19191) Bool)

(assert (=> b!7355350 (= res!2970087 (validRegex!9787 lt!2613131))))

(assert (=> b!7355350 (= lt!2613131 (Star!19191 (reg!19520 r1!2370)))))

(declare-fun b!7355351 () Bool)

(declare-fun tp!2089356 () Bool)

(declare-fun tp!2089354 () Bool)

(assert (=> b!7355351 (= e!4403993 (and tp!2089356 tp!2089354))))

(declare-fun res!2970091 () Bool)

(declare-fun e!4403983 () Bool)

(assert (=> start!718240 (=> (not res!2970091) (not e!4403983))))

(assert (=> start!718240 (= res!2970091 (validRegex!9787 r1!2370))))

(assert (=> start!718240 e!4403983))

(assert (=> start!718240 tp_is_empty!48627))

(declare-fun inv!91317 (Context!16262) Bool)

(assert (=> start!718240 (and (inv!91317 cWitness!61) e!4403992)))

(assert (=> start!718240 (and (inv!91317 ct1!282) e!4403994)))

(assert (=> start!718240 e!4403993))

(assert (=> start!718240 (and (inv!91317 ct2!378) e!4403991)))

(declare-fun b!7355352 () Bool)

(assert (=> b!7355352 (= e!4403983 e!4403985)))

(declare-fun res!2970084 () Bool)

(assert (=> b!7355352 (=> (not res!2970084) (not e!4403985))))

(assert (=> b!7355352 (= res!2970084 (select lt!2613127 cWitness!61))))

(assert (=> b!7355352 (= lt!2613127 (derivationStepZipperDown!3017 r1!2370 ct1!282 c!10362))))

(declare-fun b!7355353 () Bool)

(declare-fun nullable!8282 (Regex!19191) Bool)

(assert (=> b!7355353 (= e!4403986 (not (nullable!8282 (regOne!38894 r1!2370))))))

(assert (= (and start!718240 res!2970091) b!7355352))

(assert (= (and b!7355352 res!2970084) b!7355341))

(assert (= (and b!7355341 res!2970090) b!7355344))

(assert (= (and b!7355344 (not res!2970089)) b!7355353))

(assert (= (and b!7355344 res!2970086) b!7355343))

(assert (= (and b!7355343 res!2970085) b!7355350))

(assert (= (and b!7355350 res!2970087) b!7355349))

(assert (= (and b!7355349 res!2970088) b!7355337))

(assert (= (and b!7355337 (not res!2970092)) b!7355347))

(assert (= (and b!7355347 (not res!2970083)) b!7355338))

(assert (= start!718240 b!7355342))

(assert (= start!718240 b!7355348))

(assert (= (and start!718240 ((_ is ElementMatch!19191) r1!2370)) b!7355339))

(assert (= (and start!718240 ((_ is Concat!28036) r1!2370)) b!7355345))

(assert (= (and start!718240 ((_ is Star!19191) r1!2370)) b!7355340))

(assert (= (and start!718240 ((_ is Union!19191) r1!2370)) b!7355351))

(assert (= start!718240 b!7355346))

(declare-fun m!8015352 () Bool)

(assert (=> b!7355341 m!8015352))

(declare-fun m!8015354 () Bool)

(assert (=> b!7355341 m!8015354))

(declare-fun m!8015356 () Bool)

(assert (=> b!7355341 m!8015356))

(declare-fun m!8015358 () Bool)

(assert (=> b!7355352 m!8015358))

(declare-fun m!8015360 () Bool)

(assert (=> b!7355352 m!8015360))

(declare-fun m!8015362 () Bool)

(assert (=> b!7355349 m!8015362))

(declare-fun m!8015364 () Bool)

(assert (=> b!7355349 m!8015364))

(declare-fun m!8015366 () Bool)

(assert (=> b!7355347 m!8015366))

(declare-fun m!8015368 () Bool)

(assert (=> b!7355338 m!8015368))

(declare-fun m!8015370 () Bool)

(assert (=> b!7355337 m!8015370))

(declare-fun m!8015372 () Bool)

(assert (=> b!7355337 m!8015372))

(declare-fun m!8015374 () Bool)

(assert (=> b!7355337 m!8015374))

(declare-fun m!8015376 () Bool)

(assert (=> b!7355337 m!8015376))

(declare-fun m!8015378 () Bool)

(assert (=> b!7355337 m!8015378))

(declare-fun m!8015380 () Bool)

(assert (=> b!7355337 m!8015380))

(declare-fun m!8015382 () Bool)

(assert (=> b!7355337 m!8015382))

(declare-fun m!8015384 () Bool)

(assert (=> b!7355337 m!8015384))

(assert (=> b!7355337 m!8015370))

(declare-fun m!8015386 () Bool)

(assert (=> start!718240 m!8015386))

(declare-fun m!8015388 () Bool)

(assert (=> start!718240 m!8015388))

(declare-fun m!8015390 () Bool)

(assert (=> start!718240 m!8015390))

(declare-fun m!8015392 () Bool)

(assert (=> start!718240 m!8015392))

(declare-fun m!8015394 () Bool)

(assert (=> b!7355353 m!8015394))

(declare-fun m!8015396 () Bool)

(assert (=> b!7355350 m!8015396))

(check-sat (not b!7355342) (not b!7355353) (not b!7355341) (not b!7355337) (not b!7355351) (not b!7355348) (not b!7355347) (not start!718240) (not b!7355350) (not b!7355352) (not b!7355338) (not b!7355340) (not b!7355345) (not b!7355349) (not b!7355346) tp_is_empty!48627)
(check-sat)
(get-model)

(declare-fun d!2281326 () Bool)

(declare-fun res!2970097 () Bool)

(declare-fun e!4403999 () Bool)

(assert (=> d!2281326 (=> res!2970097 e!4403999)))

(assert (=> d!2281326 (= res!2970097 ((_ is Nil!71563) (exprs!8631 cWitness!61)))))

(assert (=> d!2281326 (= (forall!18011 (exprs!8631 cWitness!61) lambda!456957) e!4403999)))

(declare-fun b!7355358 () Bool)

(declare-fun e!4404000 () Bool)

(assert (=> b!7355358 (= e!4403999 e!4404000)))

(declare-fun res!2970098 () Bool)

(assert (=> b!7355358 (=> (not res!2970098) (not e!4404000))))

(declare-fun dynLambda!29508 (Int Regex!19191) Bool)

(assert (=> b!7355358 (= res!2970098 (dynLambda!29508 lambda!456957 (h!78011 (exprs!8631 cWitness!61))))))

(declare-fun b!7355359 () Bool)

(assert (=> b!7355359 (= e!4404000 (forall!18011 (t!386124 (exprs!8631 cWitness!61)) lambda!456957))))

(assert (= (and d!2281326 (not res!2970097)) b!7355358))

(assert (= (and b!7355358 res!2970098) b!7355359))

(declare-fun b_lambda!284227 () Bool)

(assert (=> (not b_lambda!284227) (not b!7355358)))

(declare-fun m!8015398 () Bool)

(assert (=> b!7355358 m!8015398))

(declare-fun m!8015400 () Bool)

(assert (=> b!7355359 m!8015400))

(assert (=> b!7355347 d!2281326))

(declare-fun bm!673327 () Bool)

(declare-fun call!673334 () List!71687)

(declare-fun call!673335 () List!71687)

(assert (=> bm!673327 (= call!673334 call!673335)))

(declare-fun bm!673328 () Bool)

(declare-fun c!1366584 () Bool)

(declare-fun call!673333 () (InoxSet Context!16262))

(assert (=> bm!673328 (= call!673333 (derivationStepZipperDown!3017 (ite c!1366584 (regOne!38895 r1!2370) (regOne!38894 r1!2370)) (ite c!1366584 ct1!282 (Context!16263 call!673335)) c!10362))))

(declare-fun b!7355382 () Bool)

(declare-fun e!4404017 () (InoxSet Context!16262))

(declare-fun call!673337 () (InoxSet Context!16262))

(assert (=> b!7355382 (= e!4404017 call!673337)))

(declare-fun bm!673329 () Bool)

(declare-fun c!1366580 () Bool)

(declare-fun c!1366581 () Bool)

(assert (=> bm!673329 (= call!673335 ($colon$colon!3188 (exprs!8631 ct1!282) (ite (or c!1366580 c!1366581) (regTwo!38894 r1!2370) r1!2370)))))

(declare-fun bm!673330 () Bool)

(declare-fun call!673332 () (InoxSet Context!16262))

(assert (=> bm!673330 (= call!673337 call!673332)))

(declare-fun b!7355383 () Bool)

(assert (=> b!7355383 (= e!4404017 ((as const (Array Context!16262 Bool)) false))))

(declare-fun b!7355384 () Bool)

(declare-fun c!1366582 () Bool)

(assert (=> b!7355384 (= c!1366582 ((_ is Star!19191) r1!2370))))

(declare-fun e!4404016 () (InoxSet Context!16262))

(assert (=> b!7355384 (= e!4404016 e!4404017)))

(declare-fun d!2281328 () Bool)

(declare-fun c!1366583 () Bool)

(assert (=> d!2281328 (= c!1366583 (and ((_ is ElementMatch!19191) r1!2370) (= (c!1366569 r1!2370) c!10362)))))

(declare-fun e!4404018 () (InoxSet Context!16262))

(assert (=> d!2281328 (= (derivationStepZipperDown!3017 r1!2370 ct1!282 c!10362) e!4404018)))

(declare-fun b!7355385 () Bool)

(declare-fun e!4404014 () (InoxSet Context!16262))

(declare-fun call!673336 () (InoxSet Context!16262))

(assert (=> b!7355385 (= e!4404014 ((_ map or) call!673333 call!673336))))

(declare-fun b!7355386 () Bool)

(declare-fun e!4404013 () Bool)

(assert (=> b!7355386 (= c!1366580 e!4404013)))

(declare-fun res!2970101 () Bool)

(assert (=> b!7355386 (=> (not res!2970101) (not e!4404013))))

(assert (=> b!7355386 (= res!2970101 ((_ is Concat!28036) r1!2370))))

(declare-fun e!4404015 () (InoxSet Context!16262))

(assert (=> b!7355386 (= e!4404014 e!4404015)))

(declare-fun bm!673331 () Bool)

(assert (=> bm!673331 (= call!673332 call!673336)))

(declare-fun b!7355387 () Bool)

(assert (=> b!7355387 (= e!4404018 e!4404014)))

(assert (=> b!7355387 (= c!1366584 ((_ is Union!19191) r1!2370))))

(declare-fun b!7355388 () Bool)

(assert (=> b!7355388 (= e!4404015 ((_ map or) call!673333 call!673332))))

(declare-fun b!7355389 () Bool)

(assert (=> b!7355389 (= e!4404018 (store ((as const (Array Context!16262 Bool)) false) ct1!282 true))))

(declare-fun b!7355390 () Bool)

(assert (=> b!7355390 (= e!4404015 e!4404016)))

(assert (=> b!7355390 (= c!1366581 ((_ is Concat!28036) r1!2370))))

(declare-fun b!7355391 () Bool)

(assert (=> b!7355391 (= e!4404016 call!673337)))

(declare-fun bm!673332 () Bool)

(assert (=> bm!673332 (= call!673336 (derivationStepZipperDown!3017 (ite c!1366584 (regTwo!38895 r1!2370) (ite c!1366580 (regTwo!38894 r1!2370) (ite c!1366581 (regOne!38894 r1!2370) (reg!19520 r1!2370)))) (ite (or c!1366584 c!1366580) ct1!282 (Context!16263 call!673334)) c!10362))))

(declare-fun b!7355392 () Bool)

(assert (=> b!7355392 (= e!4404013 (nullable!8282 (regOne!38894 r1!2370)))))

(assert (= (and d!2281328 c!1366583) b!7355389))

(assert (= (and d!2281328 (not c!1366583)) b!7355387))

(assert (= (and b!7355387 c!1366584) b!7355385))

(assert (= (and b!7355387 (not c!1366584)) b!7355386))

(assert (= (and b!7355386 res!2970101) b!7355392))

(assert (= (and b!7355386 c!1366580) b!7355388))

(assert (= (and b!7355386 (not c!1366580)) b!7355390))

(assert (= (and b!7355390 c!1366581) b!7355391))

(assert (= (and b!7355390 (not c!1366581)) b!7355384))

(assert (= (and b!7355384 c!1366582) b!7355382))

(assert (= (and b!7355384 (not c!1366582)) b!7355383))

(assert (= (or b!7355391 b!7355382) bm!673327))

(assert (= (or b!7355391 b!7355382) bm!673330))

(assert (= (or b!7355388 bm!673330) bm!673331))

(assert (= (or b!7355388 bm!673327) bm!673329))

(assert (= (or b!7355385 bm!673331) bm!673332))

(assert (= (or b!7355385 b!7355388) bm!673328))

(declare-fun m!8015402 () Bool)

(assert (=> bm!673329 m!8015402))

(assert (=> b!7355392 m!8015394))

(declare-fun m!8015404 () Bool)

(assert (=> bm!673332 m!8015404))

(declare-fun m!8015406 () Bool)

(assert (=> b!7355389 m!8015406))

(declare-fun m!8015408 () Bool)

(assert (=> bm!673328 m!8015408))

(assert (=> b!7355352 d!2281328))

(declare-fun b!7355421 () Bool)

(declare-fun res!2970116 () Bool)

(declare-fun e!4404037 () Bool)

(assert (=> b!7355421 (=> (not res!2970116) (not e!4404037))))

(declare-fun lt!2613138 () List!71687)

(declare-fun size!42071 (List!71687) Int)

(assert (=> b!7355421 (= res!2970116 (= (size!42071 lt!2613138) (+ (size!42071 lt!2613128) (size!42071 (exprs!8631 ct2!378)))))))

(declare-fun b!7355420 () Bool)

(declare-fun e!4404038 () List!71687)

(assert (=> b!7355420 (= e!4404038 (Cons!71563 (h!78011 lt!2613128) (++!17009 (t!386124 lt!2613128) (exprs!8631 ct2!378))))))

(declare-fun b!7355419 () Bool)

(assert (=> b!7355419 (= e!4404038 (exprs!8631 ct2!378))))

(declare-fun b!7355422 () Bool)

(assert (=> b!7355422 (= e!4404037 (or (not (= (exprs!8631 ct2!378) Nil!71563)) (= lt!2613138 lt!2613128)))))

(declare-fun d!2281330 () Bool)

(assert (=> d!2281330 e!4404037))

(declare-fun res!2970117 () Bool)

(assert (=> d!2281330 (=> (not res!2970117) (not e!4404037))))

(declare-fun content!15093 (List!71687) (InoxSet Regex!19191))

(assert (=> d!2281330 (= res!2970117 (= (content!15093 lt!2613138) ((_ map or) (content!15093 lt!2613128) (content!15093 (exprs!8631 ct2!378)))))))

(assert (=> d!2281330 (= lt!2613138 e!4404038)))

(declare-fun c!1366591 () Bool)

(assert (=> d!2281330 (= c!1366591 ((_ is Nil!71563) lt!2613128))))

(assert (=> d!2281330 (= (++!17009 lt!2613128 (exprs!8631 ct2!378)) lt!2613138)))

(assert (= (and d!2281330 c!1366591) b!7355419))

(assert (= (and d!2281330 (not c!1366591)) b!7355420))

(assert (= (and d!2281330 res!2970117) b!7355421))

(assert (= (and b!7355421 res!2970116) b!7355422))

(declare-fun m!8015410 () Bool)

(assert (=> b!7355421 m!8015410))

(declare-fun m!8015412 () Bool)

(assert (=> b!7355421 m!8015412))

(declare-fun m!8015414 () Bool)

(assert (=> b!7355421 m!8015414))

(declare-fun m!8015416 () Bool)

(assert (=> b!7355420 m!8015416))

(declare-fun m!8015418 () Bool)

(assert (=> d!2281330 m!8015418))

(declare-fun m!8015420 () Bool)

(assert (=> d!2281330 m!8015420))

(declare-fun m!8015422 () Bool)

(assert (=> d!2281330 m!8015422))

(assert (=> b!7355337 d!2281330))

(declare-fun d!2281334 () Bool)

(assert (=> d!2281334 (forall!18011 (++!17009 lt!2613128 (exprs!8631 ct2!378)) lambda!456957)))

(declare-fun lt!2613141 () Unit!165335)

(declare-fun choose!57216 (List!71687 List!71687 Int) Unit!165335)

(assert (=> d!2281334 (= lt!2613141 (choose!57216 lt!2613128 (exprs!8631 ct2!378) lambda!456957))))

(assert (=> d!2281334 (forall!18011 lt!2613128 lambda!456957)))

(assert (=> d!2281334 (= (lemmaConcatPreservesForall!1866 lt!2613128 (exprs!8631 ct2!378) lambda!456957) lt!2613141)))

(declare-fun bs!1919684 () Bool)

(assert (= bs!1919684 d!2281334))

(assert (=> bs!1919684 m!8015380))

(assert (=> bs!1919684 m!8015380))

(declare-fun m!8015430 () Bool)

(assert (=> bs!1919684 m!8015430))

(declare-fun m!8015432 () Bool)

(assert (=> bs!1919684 m!8015432))

(declare-fun m!8015434 () Bool)

(assert (=> bs!1919684 m!8015434))

(assert (=> b!7355337 d!2281334))

(declare-fun b!7355434 () Bool)

(declare-fun res!2970123 () Bool)

(declare-fun e!4404046 () Bool)

(assert (=> b!7355434 (=> (not res!2970123) (not e!4404046))))

(declare-fun lt!2613142 () List!71687)

(assert (=> b!7355434 (= res!2970123 (= (size!42071 lt!2613142) (+ (size!42071 (exprs!8631 cWitness!61)) (size!42071 (exprs!8631 ct2!378)))))))

(declare-fun b!7355433 () Bool)

(declare-fun e!4404047 () List!71687)

(assert (=> b!7355433 (= e!4404047 (Cons!71563 (h!78011 (exprs!8631 cWitness!61)) (++!17009 (t!386124 (exprs!8631 cWitness!61)) (exprs!8631 ct2!378))))))

(declare-fun b!7355432 () Bool)

(assert (=> b!7355432 (= e!4404047 (exprs!8631 ct2!378))))

(declare-fun b!7355435 () Bool)

(assert (=> b!7355435 (= e!4404046 (or (not (= (exprs!8631 ct2!378) Nil!71563)) (= lt!2613142 (exprs!8631 cWitness!61))))))

(declare-fun d!2281338 () Bool)

(assert (=> d!2281338 e!4404046))

(declare-fun res!2970124 () Bool)

(assert (=> d!2281338 (=> (not res!2970124) (not e!4404046))))

(assert (=> d!2281338 (= res!2970124 (= (content!15093 lt!2613142) ((_ map or) (content!15093 (exprs!8631 cWitness!61)) (content!15093 (exprs!8631 ct2!378)))))))

(assert (=> d!2281338 (= lt!2613142 e!4404047)))

(declare-fun c!1366594 () Bool)

(assert (=> d!2281338 (= c!1366594 ((_ is Nil!71563) (exprs!8631 cWitness!61)))))

(assert (=> d!2281338 (= (++!17009 (exprs!8631 cWitness!61) (exprs!8631 ct2!378)) lt!2613142)))

(assert (= (and d!2281338 c!1366594) b!7355432))

(assert (= (and d!2281338 (not c!1366594)) b!7355433))

(assert (= (and d!2281338 res!2970124) b!7355434))

(assert (= (and b!7355434 res!2970123) b!7355435))

(declare-fun m!8015436 () Bool)

(assert (=> b!7355434 m!8015436))

(declare-fun m!8015438 () Bool)

(assert (=> b!7355434 m!8015438))

(assert (=> b!7355434 m!8015414))

(declare-fun m!8015440 () Bool)

(assert (=> b!7355433 m!8015440))

(declare-fun m!8015442 () Bool)

(assert (=> d!2281338 m!8015442))

(declare-fun m!8015444 () Bool)

(assert (=> d!2281338 m!8015444))

(assert (=> d!2281338 m!8015422))

(assert (=> b!7355337 d!2281338))

(declare-fun bm!673342 () Bool)

(declare-fun call!673349 () List!71687)

(declare-fun call!673350 () List!71687)

(assert (=> bm!673342 (= call!673349 call!673350)))

(declare-fun c!1366599 () Bool)

(declare-fun call!673348 () (InoxSet Context!16262))

(declare-fun bm!673343 () Bool)

(assert (=> bm!673343 (= call!673348 (derivationStepZipperDown!3017 (ite c!1366599 (regOne!38895 (reg!19520 r1!2370)) (regOne!38894 (reg!19520 r1!2370))) (ite c!1366599 (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378))) (Context!16263 call!673350)) c!10362))))

(declare-fun b!7355436 () Bool)

(declare-fun e!4404052 () (InoxSet Context!16262))

(declare-fun call!673352 () (InoxSet Context!16262))

(assert (=> b!7355436 (= e!4404052 call!673352)))

(declare-fun c!1366595 () Bool)

(declare-fun bm!673344 () Bool)

(declare-fun c!1366596 () Bool)

(assert (=> bm!673344 (= call!673350 ($colon$colon!3188 (exprs!8631 (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378)))) (ite (or c!1366595 c!1366596) (regTwo!38894 (reg!19520 r1!2370)) (reg!19520 r1!2370))))))

(declare-fun bm!673345 () Bool)

(declare-fun call!673347 () (InoxSet Context!16262))

(assert (=> bm!673345 (= call!673352 call!673347)))

(declare-fun b!7355437 () Bool)

(assert (=> b!7355437 (= e!4404052 ((as const (Array Context!16262 Bool)) false))))

(declare-fun b!7355438 () Bool)

(declare-fun c!1366597 () Bool)

(assert (=> b!7355438 (= c!1366597 ((_ is Star!19191) (reg!19520 r1!2370)))))

(declare-fun e!4404051 () (InoxSet Context!16262))

(assert (=> b!7355438 (= e!4404051 e!4404052)))

(declare-fun d!2281340 () Bool)

(declare-fun c!1366598 () Bool)

(assert (=> d!2281340 (= c!1366598 (and ((_ is ElementMatch!19191) (reg!19520 r1!2370)) (= (c!1366569 (reg!19520 r1!2370)) c!10362)))))

(declare-fun e!4404053 () (InoxSet Context!16262))

(assert (=> d!2281340 (= (derivationStepZipperDown!3017 (reg!19520 r1!2370) (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378))) c!10362) e!4404053)))

(declare-fun b!7355439 () Bool)

(declare-fun e!4404049 () (InoxSet Context!16262))

(declare-fun call!673351 () (InoxSet Context!16262))

(assert (=> b!7355439 (= e!4404049 ((_ map or) call!673348 call!673351))))

(declare-fun b!7355440 () Bool)

(declare-fun e!4404048 () Bool)

(assert (=> b!7355440 (= c!1366595 e!4404048)))

(declare-fun res!2970125 () Bool)

(assert (=> b!7355440 (=> (not res!2970125) (not e!4404048))))

(assert (=> b!7355440 (= res!2970125 ((_ is Concat!28036) (reg!19520 r1!2370)))))

(declare-fun e!4404050 () (InoxSet Context!16262))

(assert (=> b!7355440 (= e!4404049 e!4404050)))

(declare-fun bm!673346 () Bool)

(assert (=> bm!673346 (= call!673347 call!673351)))

(declare-fun b!7355441 () Bool)

(assert (=> b!7355441 (= e!4404053 e!4404049)))

(assert (=> b!7355441 (= c!1366599 ((_ is Union!19191) (reg!19520 r1!2370)))))

(declare-fun b!7355442 () Bool)

(assert (=> b!7355442 (= e!4404050 ((_ map or) call!673348 call!673347))))

(declare-fun b!7355443 () Bool)

(assert (=> b!7355443 (= e!4404053 (store ((as const (Array Context!16262 Bool)) false) (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378))) true))))

(declare-fun b!7355444 () Bool)

(assert (=> b!7355444 (= e!4404050 e!4404051)))

(assert (=> b!7355444 (= c!1366596 ((_ is Concat!28036) (reg!19520 r1!2370)))))

(declare-fun b!7355445 () Bool)

(assert (=> b!7355445 (= e!4404051 call!673352)))

(declare-fun bm!673347 () Bool)

(assert (=> bm!673347 (= call!673351 (derivationStepZipperDown!3017 (ite c!1366599 (regTwo!38895 (reg!19520 r1!2370)) (ite c!1366595 (regTwo!38894 (reg!19520 r1!2370)) (ite c!1366596 (regOne!38894 (reg!19520 r1!2370)) (reg!19520 (reg!19520 r1!2370))))) (ite (or c!1366599 c!1366595) (Context!16263 (++!17009 lt!2613128 (exprs!8631 ct2!378))) (Context!16263 call!673349)) c!10362))))

(declare-fun b!7355446 () Bool)

(assert (=> b!7355446 (= e!4404048 (nullable!8282 (regOne!38894 (reg!19520 r1!2370))))))

(assert (= (and d!2281340 c!1366598) b!7355443))

(assert (= (and d!2281340 (not c!1366598)) b!7355441))

(assert (= (and b!7355441 c!1366599) b!7355439))

(assert (= (and b!7355441 (not c!1366599)) b!7355440))

(assert (= (and b!7355440 res!2970125) b!7355446))

(assert (= (and b!7355440 c!1366595) b!7355442))

(assert (= (and b!7355440 (not c!1366595)) b!7355444))

(assert (= (and b!7355444 c!1366596) b!7355445))

(assert (= (and b!7355444 (not c!1366596)) b!7355438))

(assert (= (and b!7355438 c!1366597) b!7355436))

(assert (= (and b!7355438 (not c!1366597)) b!7355437))

(assert (= (or b!7355445 b!7355436) bm!673342))

(assert (= (or b!7355445 b!7355436) bm!673345))

(assert (= (or b!7355442 bm!673345) bm!673346))

(assert (= (or b!7355442 bm!673342) bm!673344))

(assert (= (or b!7355439 bm!673346) bm!673347))

(assert (= (or b!7355439 b!7355442) bm!673343))

(declare-fun m!8015446 () Bool)

(assert (=> bm!673344 m!8015446))

(declare-fun m!8015448 () Bool)

(assert (=> b!7355446 m!8015448))

(declare-fun m!8015450 () Bool)

(assert (=> bm!673347 m!8015450))

(declare-fun m!8015452 () Bool)

(assert (=> b!7355443 m!8015452))

(declare-fun m!8015454 () Bool)

(assert (=> bm!673343 m!8015454))

(assert (=> b!7355337 d!2281340))

(declare-fun bs!1919685 () Bool)

(declare-fun d!2281342 () Bool)

(assert (= bs!1919685 (and d!2281342 b!7355341)))

(declare-fun lambda!456962 () Int)

(assert (=> bs!1919685 (= lambda!456962 lambda!456957)))

(assert (=> d!2281342 (select (derivationStepZipperDown!3017 (reg!19520 r1!2370) (Context!16263 (++!17009 (exprs!8631 lt!2613133) (exprs!8631 ct2!378))) c!10362) (Context!16263 (++!17009 (exprs!8631 cWitness!61) (exprs!8631 ct2!378))))))

(declare-fun lt!2613151 () Unit!165335)

(assert (=> d!2281342 (= lt!2613151 (lemmaConcatPreservesForall!1866 (exprs!8631 lt!2613133) (exprs!8631 ct2!378) lambda!456962))))

(declare-fun lt!2613150 () Unit!165335)

(assert (=> d!2281342 (= lt!2613150 (lemmaConcatPreservesForall!1866 (exprs!8631 cWitness!61) (exprs!8631 ct2!378) lambda!456962))))

(declare-fun lt!2613149 () Unit!165335)

(declare-fun choose!57218 (Regex!19191 Context!16262 Context!16262 Context!16262 C!38656) Unit!165335)

(assert (=> d!2281342 (= lt!2613149 (choose!57218 (reg!19520 r1!2370) lt!2613133 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281342 (validRegex!9787 (reg!19520 r1!2370))))

(assert (=> d!2281342 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!108 (reg!19520 r1!2370) lt!2613133 ct2!378 cWitness!61 c!10362) lt!2613149)))

(declare-fun bs!1919686 () Bool)

(assert (= bs!1919686 d!2281342))

(declare-fun m!8015456 () Bool)

(assert (=> bs!1919686 m!8015456))

(assert (=> bs!1919686 m!8015374))

(declare-fun m!8015458 () Bool)

(assert (=> bs!1919686 m!8015458))

(declare-fun m!8015460 () Bool)

(assert (=> bs!1919686 m!8015460))

(declare-fun m!8015462 () Bool)

(assert (=> bs!1919686 m!8015462))

(declare-fun m!8015464 () Bool)

(assert (=> bs!1919686 m!8015464))

(declare-fun m!8015466 () Bool)

(assert (=> bs!1919686 m!8015466))

(declare-fun m!8015468 () Bool)

(assert (=> bs!1919686 m!8015468))

(assert (=> b!7355337 d!2281342))

(declare-fun d!2281344 () Bool)

(assert (=> d!2281344 (forall!18011 (++!17009 (exprs!8631 cWitness!61) (exprs!8631 ct2!378)) lambda!456957)))

(declare-fun lt!2613152 () Unit!165335)

(assert (=> d!2281344 (= lt!2613152 (choose!57216 (exprs!8631 cWitness!61) (exprs!8631 ct2!378) lambda!456957))))

(assert (=> d!2281344 (forall!18011 (exprs!8631 cWitness!61) lambda!456957)))

(assert (=> d!2281344 (= (lemmaConcatPreservesForall!1866 (exprs!8631 cWitness!61) (exprs!8631 ct2!378) lambda!456957) lt!2613152)))

(declare-fun bs!1919687 () Bool)

(assert (= bs!1919687 d!2281344))

(assert (=> bs!1919687 m!8015374))

(assert (=> bs!1919687 m!8015374))

(declare-fun m!8015470 () Bool)

(assert (=> bs!1919687 m!8015470))

(declare-fun m!8015472 () Bool)

(assert (=> bs!1919687 m!8015472))

(assert (=> bs!1919687 m!8015366))

(assert (=> b!7355337 d!2281344))

(declare-fun d!2281346 () Bool)

(declare-fun nullableFct!3309 (Regex!19191) Bool)

(assert (=> d!2281346 (= (nullable!8282 (regOne!38894 r1!2370)) (nullableFct!3309 (regOne!38894 r1!2370)))))

(declare-fun bs!1919688 () Bool)

(assert (= bs!1919688 d!2281346))

(declare-fun m!8015484 () Bool)

(assert (=> bs!1919688 m!8015484))

(assert (=> b!7355353 d!2281346))

(declare-fun bm!673366 () Bool)

(declare-fun call!673373 () List!71687)

(declare-fun call!673374 () List!71687)

(assert (=> bm!673366 (= call!673373 call!673374)))

(declare-fun call!673372 () (InoxSet Context!16262))

(declare-fun c!1366620 () Bool)

(declare-fun bm!673367 () Bool)

(assert (=> bm!673367 (= call!673372 (derivationStepZipperDown!3017 (ite c!1366620 (regOne!38895 (reg!19520 r1!2370)) (regOne!38894 (reg!19520 r1!2370))) (ite c!1366620 lt!2613133 (Context!16263 call!673374)) c!10362))))

(declare-fun b!7355480 () Bool)

(declare-fun e!4404076 () (InoxSet Context!16262))

(declare-fun call!673376 () (InoxSet Context!16262))

(assert (=> b!7355480 (= e!4404076 call!673376)))

(declare-fun bm!673368 () Bool)

(declare-fun c!1366617 () Bool)

(declare-fun c!1366616 () Bool)

(assert (=> bm!673368 (= call!673374 ($colon$colon!3188 (exprs!8631 lt!2613133) (ite (or c!1366616 c!1366617) (regTwo!38894 (reg!19520 r1!2370)) (reg!19520 r1!2370))))))

(declare-fun bm!673369 () Bool)

(declare-fun call!673371 () (InoxSet Context!16262))

(assert (=> bm!673369 (= call!673376 call!673371)))

(declare-fun b!7355481 () Bool)

(assert (=> b!7355481 (= e!4404076 ((as const (Array Context!16262 Bool)) false))))

(declare-fun b!7355482 () Bool)

(declare-fun c!1366618 () Bool)

(assert (=> b!7355482 (= c!1366618 ((_ is Star!19191) (reg!19520 r1!2370)))))

(declare-fun e!4404075 () (InoxSet Context!16262))

(assert (=> b!7355482 (= e!4404075 e!4404076)))

(declare-fun d!2281350 () Bool)

(declare-fun c!1366619 () Bool)

(assert (=> d!2281350 (= c!1366619 (and ((_ is ElementMatch!19191) (reg!19520 r1!2370)) (= (c!1366569 (reg!19520 r1!2370)) c!10362)))))

(declare-fun e!4404077 () (InoxSet Context!16262))

(assert (=> d!2281350 (= (derivationStepZipperDown!3017 (reg!19520 r1!2370) lt!2613133 c!10362) e!4404077)))

(declare-fun b!7355483 () Bool)

(declare-fun e!4404073 () (InoxSet Context!16262))

(declare-fun call!673375 () (InoxSet Context!16262))

(assert (=> b!7355483 (= e!4404073 ((_ map or) call!673372 call!673375))))

(declare-fun b!7355484 () Bool)

(declare-fun e!4404072 () Bool)

(assert (=> b!7355484 (= c!1366616 e!4404072)))

(declare-fun res!2970129 () Bool)

(assert (=> b!7355484 (=> (not res!2970129) (not e!4404072))))

(assert (=> b!7355484 (= res!2970129 ((_ is Concat!28036) (reg!19520 r1!2370)))))

(declare-fun e!4404074 () (InoxSet Context!16262))

(assert (=> b!7355484 (= e!4404073 e!4404074)))

(declare-fun bm!673370 () Bool)

(assert (=> bm!673370 (= call!673371 call!673375)))

(declare-fun b!7355485 () Bool)

(assert (=> b!7355485 (= e!4404077 e!4404073)))

(assert (=> b!7355485 (= c!1366620 ((_ is Union!19191) (reg!19520 r1!2370)))))

(declare-fun b!7355486 () Bool)

(assert (=> b!7355486 (= e!4404074 ((_ map or) call!673372 call!673371))))

(declare-fun b!7355487 () Bool)

(assert (=> b!7355487 (= e!4404077 (store ((as const (Array Context!16262 Bool)) false) lt!2613133 true))))

(declare-fun b!7355488 () Bool)

(assert (=> b!7355488 (= e!4404074 e!4404075)))

(assert (=> b!7355488 (= c!1366617 ((_ is Concat!28036) (reg!19520 r1!2370)))))

(declare-fun b!7355489 () Bool)

(assert (=> b!7355489 (= e!4404075 call!673376)))

(declare-fun bm!673371 () Bool)

(assert (=> bm!673371 (= call!673375 (derivationStepZipperDown!3017 (ite c!1366620 (regTwo!38895 (reg!19520 r1!2370)) (ite c!1366616 (regTwo!38894 (reg!19520 r1!2370)) (ite c!1366617 (regOne!38894 (reg!19520 r1!2370)) (reg!19520 (reg!19520 r1!2370))))) (ite (or c!1366620 c!1366616) lt!2613133 (Context!16263 call!673373)) c!10362))))

(declare-fun b!7355490 () Bool)

(assert (=> b!7355490 (= e!4404072 (nullable!8282 (regOne!38894 (reg!19520 r1!2370))))))

(assert (= (and d!2281350 c!1366619) b!7355487))

(assert (= (and d!2281350 (not c!1366619)) b!7355485))

(assert (= (and b!7355485 c!1366620) b!7355483))

(assert (= (and b!7355485 (not c!1366620)) b!7355484))

(assert (= (and b!7355484 res!2970129) b!7355490))

(assert (= (and b!7355484 c!1366616) b!7355486))

(assert (= (and b!7355484 (not c!1366616)) b!7355488))

(assert (= (and b!7355488 c!1366617) b!7355489))

(assert (= (and b!7355488 (not c!1366617)) b!7355482))

(assert (= (and b!7355482 c!1366618) b!7355480))

(assert (= (and b!7355482 (not c!1366618)) b!7355481))

(assert (= (or b!7355489 b!7355480) bm!673366))

(assert (= (or b!7355489 b!7355480) bm!673369))

(assert (= (or b!7355486 bm!673369) bm!673370))

(assert (= (or b!7355486 bm!673366) bm!673368))

(assert (= (or b!7355483 bm!673370) bm!673371))

(assert (= (or b!7355483 b!7355486) bm!673367))

(declare-fun m!8015486 () Bool)

(assert (=> bm!673368 m!8015486))

(assert (=> b!7355490 m!8015448))

(declare-fun m!8015488 () Bool)

(assert (=> bm!673371 m!8015488))

(declare-fun m!8015490 () Bool)

(assert (=> b!7355487 m!8015490))

(declare-fun m!8015492 () Bool)

(assert (=> bm!673367 m!8015492))

(assert (=> b!7355349 d!2281350))

(declare-fun d!2281352 () Bool)

(assert (=> d!2281352 (= ($colon$colon!3188 (exprs!8631 ct1!282) lt!2613131) (Cons!71563 lt!2613131 (exprs!8631 ct1!282)))))

(assert (=> b!7355349 d!2281352))

(declare-fun d!2281354 () Bool)

(declare-fun res!2970130 () Bool)

(declare-fun e!4404078 () Bool)

(assert (=> d!2281354 (=> res!2970130 e!4404078)))

(assert (=> d!2281354 (= res!2970130 ((_ is Nil!71563) (exprs!8631 ct2!378)))))

(assert (=> d!2281354 (= (forall!18011 (exprs!8631 ct2!378) lambda!456957) e!4404078)))

(declare-fun b!7355491 () Bool)

(declare-fun e!4404079 () Bool)

(assert (=> b!7355491 (= e!4404078 e!4404079)))

(declare-fun res!2970131 () Bool)

(assert (=> b!7355491 (=> (not res!2970131) (not e!4404079))))

(assert (=> b!7355491 (= res!2970131 (dynLambda!29508 lambda!456957 (h!78011 (exprs!8631 ct2!378))))))

(declare-fun b!7355492 () Bool)

(assert (=> b!7355492 (= e!4404079 (forall!18011 (t!386124 (exprs!8631 ct2!378)) lambda!456957))))

(assert (= (and d!2281354 (not res!2970130)) b!7355491))

(assert (= (and b!7355491 res!2970131) b!7355492))

(declare-fun b_lambda!284229 () Bool)

(assert (=> (not b_lambda!284229) (not b!7355491)))

(declare-fun m!8015494 () Bool)

(assert (=> b!7355491 m!8015494))

(declare-fun m!8015496 () Bool)

(assert (=> b!7355492 m!8015496))

(assert (=> b!7355338 d!2281354))

(declare-fun bm!673378 () Bool)

(declare-fun call!673385 () Bool)

(declare-fun c!1366628 () Bool)

(assert (=> bm!673378 (= call!673385 (validRegex!9787 (ite c!1366628 (regTwo!38895 r1!2370) (regOne!38894 r1!2370))))))

(declare-fun b!7355523 () Bool)

(declare-fun e!4404104 () Bool)

(declare-fun e!4404103 () Bool)

(assert (=> b!7355523 (= e!4404104 e!4404103)))

(declare-fun res!2970151 () Bool)

(assert (=> b!7355523 (= res!2970151 (not (nullable!8282 (reg!19520 r1!2370))))))

(assert (=> b!7355523 (=> (not res!2970151) (not e!4404103))))

(declare-fun b!7355524 () Bool)

(declare-fun e!4404100 () Bool)

(assert (=> b!7355524 (= e!4404104 e!4404100)))

(assert (=> b!7355524 (= c!1366628 ((_ is Union!19191) r1!2370))))

(declare-fun b!7355525 () Bool)

(declare-fun call!673384 () Bool)

(assert (=> b!7355525 (= e!4404103 call!673384)))

(declare-fun b!7355526 () Bool)

(declare-fun e!4404105 () Bool)

(assert (=> b!7355526 (= e!4404105 call!673385)))

(declare-fun bm!673379 () Bool)

(declare-fun call!673383 () Bool)

(assert (=> bm!673379 (= call!673383 call!673384)))

(declare-fun b!7355527 () Bool)

(declare-fun res!2970149 () Bool)

(assert (=> b!7355527 (=> (not res!2970149) (not e!4404105))))

(assert (=> b!7355527 (= res!2970149 call!673383)))

(assert (=> b!7355527 (= e!4404100 e!4404105)))

(declare-fun b!7355528 () Bool)

(declare-fun e!4404101 () Bool)

(assert (=> b!7355528 (= e!4404101 call!673383)))

(declare-fun b!7355529 () Bool)

(declare-fun res!2970150 () Bool)

(declare-fun e!4404106 () Bool)

(assert (=> b!7355529 (=> res!2970150 e!4404106)))

(assert (=> b!7355529 (= res!2970150 (not ((_ is Concat!28036) r1!2370)))))

(assert (=> b!7355529 (= e!4404100 e!4404106)))

(declare-fun bm!673380 () Bool)

(declare-fun c!1366629 () Bool)

(assert (=> bm!673380 (= call!673384 (validRegex!9787 (ite c!1366629 (reg!19520 r1!2370) (ite c!1366628 (regOne!38895 r1!2370) (regTwo!38894 r1!2370)))))))

(declare-fun b!7355530 () Bool)

(assert (=> b!7355530 (= e!4404106 e!4404101)))

(declare-fun res!2970148 () Bool)

(assert (=> b!7355530 (=> (not res!2970148) (not e!4404101))))

(assert (=> b!7355530 (= res!2970148 call!673385)))

(declare-fun b!7355531 () Bool)

(declare-fun e!4404102 () Bool)

(assert (=> b!7355531 (= e!4404102 e!4404104)))

(assert (=> b!7355531 (= c!1366629 ((_ is Star!19191) r1!2370))))

(declare-fun d!2281356 () Bool)

(declare-fun res!2970152 () Bool)

(assert (=> d!2281356 (=> res!2970152 e!4404102)))

(assert (=> d!2281356 (= res!2970152 ((_ is ElementMatch!19191) r1!2370))))

(assert (=> d!2281356 (= (validRegex!9787 r1!2370) e!4404102)))

(assert (= (and d!2281356 (not res!2970152)) b!7355531))

(assert (= (and b!7355531 c!1366629) b!7355523))

(assert (= (and b!7355531 (not c!1366629)) b!7355524))

(assert (= (and b!7355523 res!2970151) b!7355525))

(assert (= (and b!7355524 c!1366628) b!7355527))

(assert (= (and b!7355524 (not c!1366628)) b!7355529))

(assert (= (and b!7355527 res!2970149) b!7355526))

(assert (= (and b!7355529 (not res!2970150)) b!7355530))

(assert (= (and b!7355530 res!2970148) b!7355528))

(assert (= (or b!7355527 b!7355528) bm!673379))

(assert (= (or b!7355526 b!7355530) bm!673378))

(assert (= (or b!7355525 bm!673379) bm!673380))

(declare-fun m!8015518 () Bool)

(assert (=> bm!673378 m!8015518))

(declare-fun m!8015520 () Bool)

(assert (=> b!7355523 m!8015520))

(declare-fun m!8015522 () Bool)

(assert (=> bm!673380 m!8015522))

(assert (=> start!718240 d!2281356))

(declare-fun bs!1919690 () Bool)

(declare-fun d!2281362 () Bool)

(assert (= bs!1919690 (and d!2281362 b!7355341)))

(declare-fun lambda!456965 () Int)

(assert (=> bs!1919690 (= lambda!456965 lambda!456957)))

(declare-fun bs!1919691 () Bool)

(assert (= bs!1919691 (and d!2281362 d!2281342)))

(assert (=> bs!1919691 (= lambda!456965 lambda!456962)))

(assert (=> d!2281362 (= (inv!91317 cWitness!61) (forall!18011 (exprs!8631 cWitness!61) lambda!456965))))

(declare-fun bs!1919692 () Bool)

(assert (= bs!1919692 d!2281362))

(declare-fun m!8015524 () Bool)

(assert (=> bs!1919692 m!8015524))

(assert (=> start!718240 d!2281362))

(declare-fun bs!1919693 () Bool)

(declare-fun d!2281364 () Bool)

(assert (= bs!1919693 (and d!2281364 b!7355341)))

(declare-fun lambda!456966 () Int)

(assert (=> bs!1919693 (= lambda!456966 lambda!456957)))

(declare-fun bs!1919694 () Bool)

(assert (= bs!1919694 (and d!2281364 d!2281342)))

(assert (=> bs!1919694 (= lambda!456966 lambda!456962)))

(declare-fun bs!1919695 () Bool)

(assert (= bs!1919695 (and d!2281364 d!2281362)))

(assert (=> bs!1919695 (= lambda!456966 lambda!456965)))

(assert (=> d!2281364 (= (inv!91317 ct1!282) (forall!18011 (exprs!8631 ct1!282) lambda!456966))))

(declare-fun bs!1919696 () Bool)

(assert (= bs!1919696 d!2281364))

(declare-fun m!8015526 () Bool)

(assert (=> bs!1919696 m!8015526))

(assert (=> start!718240 d!2281364))

(declare-fun bs!1919697 () Bool)

(declare-fun d!2281366 () Bool)

(assert (= bs!1919697 (and d!2281366 b!7355341)))

(declare-fun lambda!456967 () Int)

(assert (=> bs!1919697 (= lambda!456967 lambda!456957)))

(declare-fun bs!1919698 () Bool)

(assert (= bs!1919698 (and d!2281366 d!2281342)))

(assert (=> bs!1919698 (= lambda!456967 lambda!456962)))

(declare-fun bs!1919699 () Bool)

(assert (= bs!1919699 (and d!2281366 d!2281362)))

(assert (=> bs!1919699 (= lambda!456967 lambda!456965)))

(declare-fun bs!1919700 () Bool)

(assert (= bs!1919700 (and d!2281366 d!2281364)))

(assert (=> bs!1919700 (= lambda!456967 lambda!456966)))

(assert (=> d!2281366 (= (inv!91317 ct2!378) (forall!18011 (exprs!8631 ct2!378) lambda!456967))))

(declare-fun bs!1919701 () Bool)

(assert (= bs!1919701 d!2281366))

(declare-fun m!8015528 () Bool)

(assert (=> bs!1919701 m!8015528))

(assert (=> start!718240 d!2281366))

(declare-fun bm!673381 () Bool)

(declare-fun call!673388 () Bool)

(declare-fun c!1366630 () Bool)

(assert (=> bm!673381 (= call!673388 (validRegex!9787 (ite c!1366630 (regTwo!38895 lt!2613131) (regOne!38894 lt!2613131))))))

(declare-fun b!7355532 () Bool)

(declare-fun e!4404111 () Bool)

(declare-fun e!4404110 () Bool)

(assert (=> b!7355532 (= e!4404111 e!4404110)))

(declare-fun res!2970156 () Bool)

(assert (=> b!7355532 (= res!2970156 (not (nullable!8282 (reg!19520 lt!2613131))))))

(assert (=> b!7355532 (=> (not res!2970156) (not e!4404110))))

(declare-fun b!7355533 () Bool)

(declare-fun e!4404107 () Bool)

(assert (=> b!7355533 (= e!4404111 e!4404107)))

(assert (=> b!7355533 (= c!1366630 ((_ is Union!19191) lt!2613131))))

(declare-fun b!7355534 () Bool)

(declare-fun call!673387 () Bool)

(assert (=> b!7355534 (= e!4404110 call!673387)))

(declare-fun b!7355535 () Bool)

(declare-fun e!4404112 () Bool)

(assert (=> b!7355535 (= e!4404112 call!673388)))

(declare-fun bm!673382 () Bool)

(declare-fun call!673386 () Bool)

(assert (=> bm!673382 (= call!673386 call!673387)))

(declare-fun b!7355536 () Bool)

(declare-fun res!2970154 () Bool)

(assert (=> b!7355536 (=> (not res!2970154) (not e!4404112))))

(assert (=> b!7355536 (= res!2970154 call!673386)))

(assert (=> b!7355536 (= e!4404107 e!4404112)))

(declare-fun b!7355537 () Bool)

(declare-fun e!4404108 () Bool)

(assert (=> b!7355537 (= e!4404108 call!673386)))

(declare-fun b!7355538 () Bool)

(declare-fun res!2970155 () Bool)

(declare-fun e!4404113 () Bool)

(assert (=> b!7355538 (=> res!2970155 e!4404113)))

(assert (=> b!7355538 (= res!2970155 (not ((_ is Concat!28036) lt!2613131)))))

(assert (=> b!7355538 (= e!4404107 e!4404113)))

(declare-fun c!1366631 () Bool)

(declare-fun bm!673383 () Bool)

(assert (=> bm!673383 (= call!673387 (validRegex!9787 (ite c!1366631 (reg!19520 lt!2613131) (ite c!1366630 (regOne!38895 lt!2613131) (regTwo!38894 lt!2613131)))))))

(declare-fun b!7355539 () Bool)

(assert (=> b!7355539 (= e!4404113 e!4404108)))

(declare-fun res!2970153 () Bool)

(assert (=> b!7355539 (=> (not res!2970153) (not e!4404108))))

(assert (=> b!7355539 (= res!2970153 call!673388)))

(declare-fun b!7355540 () Bool)

(declare-fun e!4404109 () Bool)

(assert (=> b!7355540 (= e!4404109 e!4404111)))

(assert (=> b!7355540 (= c!1366631 ((_ is Star!19191) lt!2613131))))

(declare-fun d!2281368 () Bool)

(declare-fun res!2970157 () Bool)

(assert (=> d!2281368 (=> res!2970157 e!4404109)))

(assert (=> d!2281368 (= res!2970157 ((_ is ElementMatch!19191) lt!2613131))))

(assert (=> d!2281368 (= (validRegex!9787 lt!2613131) e!4404109)))

(assert (= (and d!2281368 (not res!2970157)) b!7355540))

(assert (= (and b!7355540 c!1366631) b!7355532))

(assert (= (and b!7355540 (not c!1366631)) b!7355533))

(assert (= (and b!7355532 res!2970156) b!7355534))

(assert (= (and b!7355533 c!1366630) b!7355536))

(assert (= (and b!7355533 (not c!1366630)) b!7355538))

(assert (= (and b!7355536 res!2970154) b!7355535))

(assert (= (and b!7355538 (not res!2970155)) b!7355539))

(assert (= (and b!7355539 res!2970153) b!7355537))

(assert (= (or b!7355536 b!7355537) bm!673382))

(assert (= (or b!7355535 b!7355539) bm!673381))

(assert (= (or b!7355534 bm!673382) bm!673383))

(declare-fun m!8015530 () Bool)

(assert (=> bm!673381 m!8015530))

(declare-fun m!8015532 () Bool)

(assert (=> b!7355532 m!8015532))

(declare-fun m!8015534 () Bool)

(assert (=> bm!673383 m!8015534))

(assert (=> b!7355350 d!2281368))

(declare-fun bm!673384 () Bool)

(declare-fun call!673391 () List!71687)

(declare-fun call!673392 () List!71687)

(assert (=> bm!673384 (= call!673391 call!673392)))

(declare-fun call!673390 () (InoxSet Context!16262))

(declare-fun c!1366637 () Bool)

(declare-fun bm!673385 () Bool)

(assert (=> bm!673385 (= call!673390 (derivationStepZipperDown!3017 (ite c!1366637 (regOne!38895 r1!2370) (regOne!38894 r1!2370)) (ite c!1366637 (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378))) (Context!16263 call!673392)) c!10362))))

(declare-fun b!7355541 () Bool)

(declare-fun e!4404118 () (InoxSet Context!16262))

(declare-fun call!673394 () (InoxSet Context!16262))

(assert (=> b!7355541 (= e!4404118 call!673394)))

(declare-fun bm!673386 () Bool)

(declare-fun c!1366633 () Bool)

(declare-fun c!1366634 () Bool)

(assert (=> bm!673386 (= call!673392 ($colon$colon!3188 (exprs!8631 (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378)))) (ite (or c!1366633 c!1366634) (regTwo!38894 r1!2370) r1!2370)))))

(declare-fun bm!673387 () Bool)

(declare-fun call!673389 () (InoxSet Context!16262))

(assert (=> bm!673387 (= call!673394 call!673389)))

(declare-fun b!7355542 () Bool)

(assert (=> b!7355542 (= e!4404118 ((as const (Array Context!16262 Bool)) false))))

(declare-fun b!7355543 () Bool)

(declare-fun c!1366635 () Bool)

(assert (=> b!7355543 (= c!1366635 ((_ is Star!19191) r1!2370))))

(declare-fun e!4404117 () (InoxSet Context!16262))

(assert (=> b!7355543 (= e!4404117 e!4404118)))

(declare-fun d!2281370 () Bool)

(declare-fun c!1366636 () Bool)

(assert (=> d!2281370 (= c!1366636 (and ((_ is ElementMatch!19191) r1!2370) (= (c!1366569 r1!2370) c!10362)))))

(declare-fun e!4404119 () (InoxSet Context!16262))

(assert (=> d!2281370 (= (derivationStepZipperDown!3017 r1!2370 (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378))) c!10362) e!4404119)))

(declare-fun b!7355544 () Bool)

(declare-fun e!4404115 () (InoxSet Context!16262))

(declare-fun call!673393 () (InoxSet Context!16262))

(assert (=> b!7355544 (= e!4404115 ((_ map or) call!673390 call!673393))))

(declare-fun b!7355545 () Bool)

(declare-fun e!4404114 () Bool)

(assert (=> b!7355545 (= c!1366633 e!4404114)))

(declare-fun res!2970158 () Bool)

(assert (=> b!7355545 (=> (not res!2970158) (not e!4404114))))

(assert (=> b!7355545 (= res!2970158 ((_ is Concat!28036) r1!2370))))

(declare-fun e!4404116 () (InoxSet Context!16262))

(assert (=> b!7355545 (= e!4404115 e!4404116)))

(declare-fun bm!673388 () Bool)

(assert (=> bm!673388 (= call!673389 call!673393)))

(declare-fun b!7355546 () Bool)

(assert (=> b!7355546 (= e!4404119 e!4404115)))

(assert (=> b!7355546 (= c!1366637 ((_ is Union!19191) r1!2370))))

(declare-fun b!7355547 () Bool)

(assert (=> b!7355547 (= e!4404116 ((_ map or) call!673390 call!673389))))

(declare-fun b!7355548 () Bool)

(assert (=> b!7355548 (= e!4404119 (store ((as const (Array Context!16262 Bool)) false) (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378))) true))))

(declare-fun b!7355549 () Bool)

(assert (=> b!7355549 (= e!4404116 e!4404117)))

(assert (=> b!7355549 (= c!1366634 ((_ is Concat!28036) r1!2370))))

(declare-fun b!7355550 () Bool)

(assert (=> b!7355550 (= e!4404117 call!673394)))

(declare-fun bm!673389 () Bool)

(assert (=> bm!673389 (= call!673393 (derivationStepZipperDown!3017 (ite c!1366637 (regTwo!38895 r1!2370) (ite c!1366633 (regTwo!38894 r1!2370) (ite c!1366634 (regOne!38894 r1!2370) (reg!19520 r1!2370)))) (ite (or c!1366637 c!1366633) (Context!16263 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378))) (Context!16263 call!673391)) c!10362))))

(declare-fun b!7355551 () Bool)

(assert (=> b!7355551 (= e!4404114 (nullable!8282 (regOne!38894 r1!2370)))))

(assert (= (and d!2281370 c!1366636) b!7355548))

(assert (= (and d!2281370 (not c!1366636)) b!7355546))

(assert (= (and b!7355546 c!1366637) b!7355544))

(assert (= (and b!7355546 (not c!1366637)) b!7355545))

(assert (= (and b!7355545 res!2970158) b!7355551))

(assert (= (and b!7355545 c!1366633) b!7355547))

(assert (= (and b!7355545 (not c!1366633)) b!7355549))

(assert (= (and b!7355549 c!1366634) b!7355550))

(assert (= (and b!7355549 (not c!1366634)) b!7355543))

(assert (= (and b!7355543 c!1366635) b!7355541))

(assert (= (and b!7355543 (not c!1366635)) b!7355542))

(assert (= (or b!7355550 b!7355541) bm!673384))

(assert (= (or b!7355550 b!7355541) bm!673387))

(assert (= (or b!7355547 bm!673387) bm!673388))

(assert (= (or b!7355547 bm!673384) bm!673386))

(assert (= (or b!7355544 bm!673388) bm!673389))

(assert (= (or b!7355544 b!7355547) bm!673385))

(declare-fun m!8015536 () Bool)

(assert (=> bm!673386 m!8015536))

(assert (=> b!7355551 m!8015394))

(declare-fun m!8015538 () Bool)

(assert (=> bm!673389 m!8015538))

(declare-fun m!8015540 () Bool)

(assert (=> b!7355548 m!8015540))

(declare-fun m!8015542 () Bool)

(assert (=> bm!673385 m!8015542))

(assert (=> b!7355341 d!2281370))

(declare-fun b!7355554 () Bool)

(declare-fun res!2970159 () Bool)

(declare-fun e!4404120 () Bool)

(assert (=> b!7355554 (=> (not res!2970159) (not e!4404120))))

(declare-fun lt!2613165 () List!71687)

(assert (=> b!7355554 (= res!2970159 (= (size!42071 lt!2613165) (+ (size!42071 (exprs!8631 ct1!282)) (size!42071 (exprs!8631 ct2!378)))))))

(declare-fun b!7355553 () Bool)

(declare-fun e!4404121 () List!71687)

(assert (=> b!7355553 (= e!4404121 (Cons!71563 (h!78011 (exprs!8631 ct1!282)) (++!17009 (t!386124 (exprs!8631 ct1!282)) (exprs!8631 ct2!378))))))

(declare-fun b!7355552 () Bool)

(assert (=> b!7355552 (= e!4404121 (exprs!8631 ct2!378))))

(declare-fun b!7355555 () Bool)

(assert (=> b!7355555 (= e!4404120 (or (not (= (exprs!8631 ct2!378) Nil!71563)) (= lt!2613165 (exprs!8631 ct1!282))))))

(declare-fun d!2281372 () Bool)

(assert (=> d!2281372 e!4404120))

(declare-fun res!2970160 () Bool)

(assert (=> d!2281372 (=> (not res!2970160) (not e!4404120))))

(assert (=> d!2281372 (= res!2970160 (= (content!15093 lt!2613165) ((_ map or) (content!15093 (exprs!8631 ct1!282)) (content!15093 (exprs!8631 ct2!378)))))))

(assert (=> d!2281372 (= lt!2613165 e!4404121)))

(declare-fun c!1366638 () Bool)

(assert (=> d!2281372 (= c!1366638 ((_ is Nil!71563) (exprs!8631 ct1!282)))))

(assert (=> d!2281372 (= (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378)) lt!2613165)))

(assert (= (and d!2281372 c!1366638) b!7355552))

(assert (= (and d!2281372 (not c!1366638)) b!7355553))

(assert (= (and d!2281372 res!2970160) b!7355554))

(assert (= (and b!7355554 res!2970159) b!7355555))

(declare-fun m!8015544 () Bool)

(assert (=> b!7355554 m!8015544))

(declare-fun m!8015546 () Bool)

(assert (=> b!7355554 m!8015546))

(assert (=> b!7355554 m!8015414))

(declare-fun m!8015548 () Bool)

(assert (=> b!7355553 m!8015548))

(declare-fun m!8015550 () Bool)

(assert (=> d!2281372 m!8015550))

(declare-fun m!8015552 () Bool)

(assert (=> d!2281372 m!8015552))

(assert (=> d!2281372 m!8015422))

(assert (=> b!7355341 d!2281372))

(declare-fun d!2281374 () Bool)

(assert (=> d!2281374 (forall!18011 (++!17009 (exprs!8631 ct1!282) (exprs!8631 ct2!378)) lambda!456957)))

(declare-fun lt!2613166 () Unit!165335)

(assert (=> d!2281374 (= lt!2613166 (choose!57216 (exprs!8631 ct1!282) (exprs!8631 ct2!378) lambda!456957))))

(assert (=> d!2281374 (forall!18011 (exprs!8631 ct1!282) lambda!456957)))

(assert (=> d!2281374 (= (lemmaConcatPreservesForall!1866 (exprs!8631 ct1!282) (exprs!8631 ct2!378) lambda!456957) lt!2613166)))

(declare-fun bs!1919702 () Bool)

(assert (= bs!1919702 d!2281374))

(assert (=> bs!1919702 m!8015352))

(assert (=> bs!1919702 m!8015352))

(declare-fun m!8015554 () Bool)

(assert (=> bs!1919702 m!8015554))

(declare-fun m!8015556 () Bool)

(assert (=> bs!1919702 m!8015556))

(declare-fun m!8015558 () Bool)

(assert (=> bs!1919702 m!8015558))

(assert (=> b!7355341 d!2281374))

(declare-fun b!7355560 () Bool)

(declare-fun e!4404124 () Bool)

(declare-fun tp!2089366 () Bool)

(declare-fun tp!2089367 () Bool)

(assert (=> b!7355560 (= e!4404124 (and tp!2089366 tp!2089367))))

(assert (=> b!7355342 (= tp!2089358 e!4404124)))

(assert (= (and b!7355342 ((_ is Cons!71563) (exprs!8631 cWitness!61))) b!7355560))

(declare-fun b!7355561 () Bool)

(declare-fun e!4404125 () Bool)

(declare-fun tp!2089368 () Bool)

(declare-fun tp!2089369 () Bool)

(assert (=> b!7355561 (= e!4404125 (and tp!2089368 tp!2089369))))

(assert (=> b!7355348 (= tp!2089355 e!4404125)))

(assert (= (and b!7355348 ((_ is Cons!71563) (exprs!8631 ct1!282))) b!7355561))

(declare-fun b!7355575 () Bool)

(declare-fun e!4404128 () Bool)

(declare-fun tp!2089384 () Bool)

(declare-fun tp!2089383 () Bool)

(assert (=> b!7355575 (= e!4404128 (and tp!2089384 tp!2089383))))

(assert (=> b!7355345 (= tp!2089357 e!4404128)))

(declare-fun b!7355572 () Bool)

(assert (=> b!7355572 (= e!4404128 tp_is_empty!48627)))

(declare-fun b!7355574 () Bool)

(declare-fun tp!2089381 () Bool)

(assert (=> b!7355574 (= e!4404128 tp!2089381)))

(declare-fun b!7355573 () Bool)

(declare-fun tp!2089380 () Bool)

(declare-fun tp!2089382 () Bool)

(assert (=> b!7355573 (= e!4404128 (and tp!2089380 tp!2089382))))

(assert (= (and b!7355345 ((_ is ElementMatch!19191) (regOne!38894 r1!2370))) b!7355572))

(assert (= (and b!7355345 ((_ is Concat!28036) (regOne!38894 r1!2370))) b!7355573))

(assert (= (and b!7355345 ((_ is Star!19191) (regOne!38894 r1!2370))) b!7355574))

(assert (= (and b!7355345 ((_ is Union!19191) (regOne!38894 r1!2370))) b!7355575))

(declare-fun b!7355583 () Bool)

(declare-fun e!4404131 () Bool)

(declare-fun tp!2089389 () Bool)

(declare-fun tp!2089388 () Bool)

(assert (=> b!7355583 (= e!4404131 (and tp!2089389 tp!2089388))))

(assert (=> b!7355345 (= tp!2089361 e!4404131)))

(declare-fun b!7355580 () Bool)

(assert (=> b!7355580 (= e!4404131 tp_is_empty!48627)))

(declare-fun b!7355582 () Bool)

(declare-fun tp!2089386 () Bool)

(assert (=> b!7355582 (= e!4404131 tp!2089386)))

(declare-fun b!7355581 () Bool)

(declare-fun tp!2089385 () Bool)

(declare-fun tp!2089387 () Bool)

(assert (=> b!7355581 (= e!4404131 (and tp!2089385 tp!2089387))))

(assert (= (and b!7355345 ((_ is ElementMatch!19191) (regTwo!38894 r1!2370))) b!7355580))

(assert (= (and b!7355345 ((_ is Concat!28036) (regTwo!38894 r1!2370))) b!7355581))

(assert (= (and b!7355345 ((_ is Star!19191) (regTwo!38894 r1!2370))) b!7355582))

(assert (= (and b!7355345 ((_ is Union!19191) (regTwo!38894 r1!2370))) b!7355583))

(declare-fun b!7355587 () Bool)

(declare-fun e!4404132 () Bool)

(declare-fun tp!2089394 () Bool)

(declare-fun tp!2089393 () Bool)

(assert (=> b!7355587 (= e!4404132 (and tp!2089394 tp!2089393))))

(assert (=> b!7355351 (= tp!2089356 e!4404132)))

(declare-fun b!7355584 () Bool)

(assert (=> b!7355584 (= e!4404132 tp_is_empty!48627)))

(declare-fun b!7355586 () Bool)

(declare-fun tp!2089391 () Bool)

(assert (=> b!7355586 (= e!4404132 tp!2089391)))

(declare-fun b!7355585 () Bool)

(declare-fun tp!2089390 () Bool)

(declare-fun tp!2089392 () Bool)

(assert (=> b!7355585 (= e!4404132 (and tp!2089390 tp!2089392))))

(assert (= (and b!7355351 ((_ is ElementMatch!19191) (regOne!38895 r1!2370))) b!7355584))

(assert (= (and b!7355351 ((_ is Concat!28036) (regOne!38895 r1!2370))) b!7355585))

(assert (= (and b!7355351 ((_ is Star!19191) (regOne!38895 r1!2370))) b!7355586))

(assert (= (and b!7355351 ((_ is Union!19191) (regOne!38895 r1!2370))) b!7355587))

(declare-fun b!7355594 () Bool)

(declare-fun e!4404136 () Bool)

(declare-fun tp!2089399 () Bool)

(declare-fun tp!2089398 () Bool)

(assert (=> b!7355594 (= e!4404136 (and tp!2089399 tp!2089398))))

(assert (=> b!7355351 (= tp!2089354 e!4404136)))

(declare-fun b!7355588 () Bool)

(assert (=> b!7355588 (= e!4404136 tp_is_empty!48627)))

(declare-fun b!7355592 () Bool)

(declare-fun tp!2089396 () Bool)

(assert (=> b!7355592 (= e!4404136 tp!2089396)))

(declare-fun b!7355590 () Bool)

(declare-fun tp!2089395 () Bool)

(declare-fun tp!2089397 () Bool)

(assert (=> b!7355590 (= e!4404136 (and tp!2089395 tp!2089397))))

(assert (= (and b!7355351 ((_ is ElementMatch!19191) (regTwo!38895 r1!2370))) b!7355588))

(assert (= (and b!7355351 ((_ is Concat!28036) (regTwo!38895 r1!2370))) b!7355590))

(assert (= (and b!7355351 ((_ is Star!19191) (regTwo!38895 r1!2370))) b!7355592))

(assert (= (and b!7355351 ((_ is Union!19191) (regTwo!38895 r1!2370))) b!7355594))

(declare-fun b!7355604 () Bool)

(declare-fun e!4404141 () Bool)

(declare-fun tp!2089404 () Bool)

(declare-fun tp!2089403 () Bool)

(assert (=> b!7355604 (= e!4404141 (and tp!2089404 tp!2089403))))

(assert (=> b!7355340 (= tp!2089360 e!4404141)))

(declare-fun b!7355601 () Bool)

(assert (=> b!7355601 (= e!4404141 tp_is_empty!48627)))

(declare-fun b!7355603 () Bool)

(declare-fun tp!2089401 () Bool)

(assert (=> b!7355603 (= e!4404141 tp!2089401)))

(declare-fun b!7355602 () Bool)

(declare-fun tp!2089400 () Bool)

(declare-fun tp!2089402 () Bool)

(assert (=> b!7355602 (= e!4404141 (and tp!2089400 tp!2089402))))

(assert (= (and b!7355340 ((_ is ElementMatch!19191) (reg!19520 r1!2370))) b!7355601))

(assert (= (and b!7355340 ((_ is Concat!28036) (reg!19520 r1!2370))) b!7355602))

(assert (= (and b!7355340 ((_ is Star!19191) (reg!19520 r1!2370))) b!7355603))

(assert (= (and b!7355340 ((_ is Union!19191) (reg!19520 r1!2370))) b!7355604))

(declare-fun b!7355605 () Bool)

(declare-fun e!4404142 () Bool)

(declare-fun tp!2089405 () Bool)

(declare-fun tp!2089406 () Bool)

(assert (=> b!7355605 (= e!4404142 (and tp!2089405 tp!2089406))))

(assert (=> b!7355346 (= tp!2089359 e!4404142)))

(assert (= (and b!7355346 ((_ is Cons!71563) (exprs!8631 ct2!378))) b!7355605))

(declare-fun b_lambda!284231 () Bool)

(assert (= b_lambda!284227 (or b!7355341 b_lambda!284231)))

(declare-fun bs!1919706 () Bool)

(declare-fun d!2281382 () Bool)

(assert (= bs!1919706 (and d!2281382 b!7355341)))

(assert (=> bs!1919706 (= (dynLambda!29508 lambda!456957 (h!78011 (exprs!8631 cWitness!61))) (validRegex!9787 (h!78011 (exprs!8631 cWitness!61))))))

(declare-fun m!8015594 () Bool)

(assert (=> bs!1919706 m!8015594))

(assert (=> b!7355358 d!2281382))

(declare-fun b_lambda!284233 () Bool)

(assert (= b_lambda!284229 (or b!7355341 b_lambda!284233)))

(declare-fun bs!1919707 () Bool)

(declare-fun d!2281386 () Bool)

(assert (= bs!1919707 (and d!2281386 b!7355341)))

(assert (=> bs!1919707 (= (dynLambda!29508 lambda!456957 (h!78011 (exprs!8631 ct2!378))) (validRegex!9787 (h!78011 (exprs!8631 ct2!378))))))

(declare-fun m!8015596 () Bool)

(assert (=> bs!1919707 m!8015596))

(assert (=> b!7355491 d!2281386))

(check-sat (not b!7355590) (not b!7355560) (not bm!673389) (not bm!673380) (not b!7355587) (not bm!673344) (not b!7355573) (not b!7355561) (not b!7355492) (not bm!673385) (not d!2281342) (not d!2281362) (not b!7355553) (not b!7355604) (not b!7355359) (not bm!673371) (not bm!673368) (not d!2281366) (not b!7355433) (not bm!673386) (not bm!673367) (not bm!673383) (not b!7355523) (not b!7355421) (not bm!673378) (not b!7355434) (not d!2281372) (not bm!673332) (not bm!673347) (not b!7355575) (not b_lambda!284233) (not d!2281338) (not b!7355594) (not d!2281334) (not bm!673328) (not b!7355551) (not b!7355392) (not d!2281346) (not d!2281330) (not b!7355490) (not bm!673329) (not b!7355603) (not d!2281364) (not b!7355554) (not bm!673381) (not d!2281344) (not b!7355605) (not d!2281374) (not b_lambda!284231) (not bm!673343) (not b!7355602) (not b!7355574) (not bs!1919707) (not b!7355592) (not bs!1919706) tp_is_empty!48627 (not b!7355585) (not b!7355583) (not b!7355420) (not b!7355582) (not b!7355586) (not b!7355581) (not b!7355446) (not b!7355532))
(check-sat)
