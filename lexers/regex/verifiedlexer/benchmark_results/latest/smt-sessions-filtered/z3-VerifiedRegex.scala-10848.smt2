; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559282 () Bool)

(assert start!559282)

(declare-fun b!5301372 () Bool)

(assert (=> b!5301372 true))

(assert (=> b!5301372 true))

(declare-fun lambda!269258 () Int)

(declare-fun lambda!269257 () Int)

(assert (=> b!5301372 (not (= lambda!269258 lambda!269257))))

(assert (=> b!5301372 true))

(assert (=> b!5301372 true))

(declare-fun b!5301358 () Bool)

(assert (=> b!5301358 true))

(declare-fun bs!1229532 () Bool)

(declare-fun b!5301360 () Bool)

(assert (= bs!1229532 (and b!5301360 b!5301372)))

(declare-fun lambda!269260 () Int)

(declare-datatypes ((C!30156 0))(
  ( (C!30157 (val!24780 Int)) )
))
(declare-datatypes ((Regex!14943 0))(
  ( (ElementMatch!14943 (c!920351 C!30156)) (Concat!23788 (regOne!30398 Regex!14943) (regTwo!30398 Regex!14943)) (EmptyExpr!14943) (Star!14943 (reg!15272 Regex!14943)) (EmptyLang!14943) (Union!14943 (regOne!30399 Regex!14943) (regTwo!30399 Regex!14943)) )
))
(declare-fun lt!2165957 () Regex!14943)

(declare-fun r!7292 () Regex!14943)

(assert (=> bs!1229532 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165957 (regTwo!30398 r!7292))) (= lambda!269260 lambda!269257))))

(assert (=> bs!1229532 (not (= lambda!269260 lambda!269258))))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(declare-fun lambda!269261 () Int)

(assert (=> bs!1229532 (not (= lambda!269261 lambda!269257))))

(assert (=> bs!1229532 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165957 (regTwo!30398 r!7292))) (= lambda!269261 lambda!269258))))

(assert (=> b!5301360 (not (= lambda!269261 lambda!269260))))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(declare-fun lt!2165938 () Regex!14943)

(declare-fun lambda!269262 () Int)

(assert (=> bs!1229532 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165938 (regTwo!30398 r!7292))) (= lambda!269262 lambda!269257))))

(assert (=> bs!1229532 (not (= lambda!269262 lambda!269258))))

(assert (=> b!5301360 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269262 lambda!269260))))

(assert (=> b!5301360 (not (= lambda!269262 lambda!269261))))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(declare-fun lambda!269263 () Int)

(assert (=> bs!1229532 (not (= lambda!269263 lambda!269257))))

(assert (=> b!5301360 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269263 lambda!269261))))

(assert (=> b!5301360 (not (= lambda!269263 lambda!269260))))

(assert (=> b!5301360 (not (= lambda!269263 lambda!269262))))

(assert (=> bs!1229532 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165938 (regTwo!30398 r!7292))) (= lambda!269263 lambda!269258))))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(assert (=> b!5301360 true))

(declare-fun b!5301357 () Bool)

(declare-fun e!3294976 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61128 0))(
  ( (Nil!61004) (Cons!61004 (h!67452 Regex!14943) (t!374333 List!61128)) )
))
(declare-datatypes ((Context!8654 0))(
  ( (Context!8655 (exprs!4827 List!61128)) )
))
(declare-fun lt!2165924 () (InoxSet Context!8654))

(declare-datatypes ((List!61129 0))(
  ( (Nil!61005) (Cons!61005 (h!67453 C!30156) (t!374334 List!61129)) )
))
(declare-fun s!2326 () List!61129)

(declare-fun matchZipper!1187 ((InoxSet Context!8654) List!61129) Bool)

(assert (=> b!5301357 (= e!3294976 (not (matchZipper!1187 lt!2165924 (t!374334 s!2326))))))

(declare-fun e!3294982 () Bool)

(declare-fun e!3294981 () Bool)

(assert (=> b!5301358 (= e!3294982 e!3294981)))

(declare-fun res!2248492 () Bool)

(assert (=> b!5301358 (=> res!2248492 e!3294981)))

(get-info :version)

(assert (=> b!5301358 (= res!2248492 (or (and ((_ is ElementMatch!14943) (regOne!30398 r!7292)) (= (c!920351 (regOne!30398 r!7292)) (h!67453 s!2326))) ((_ is Union!14943) (regOne!30398 r!7292)) (not ((_ is Concat!23788) (regOne!30398 r!7292)))))))

(declare-datatypes ((Unit!153290 0))(
  ( (Unit!153291) )
))
(declare-fun lt!2165940 () Unit!153290)

(declare-fun e!3294963 () Unit!153290)

(assert (=> b!5301358 (= lt!2165940 e!3294963)))

(declare-fun c!920350 () Bool)

(declare-datatypes ((List!61130 0))(
  ( (Nil!61006) (Cons!61006 (h!67454 Context!8654) (t!374335 List!61130)) )
))
(declare-fun zl!343 () List!61130)

(declare-fun nullable!5112 (Regex!14943) Bool)

(assert (=> b!5301358 (= c!920350 (nullable!5112 (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun lambda!269259 () Int)

(declare-fun z!1189 () (InoxSet Context!8654))

(declare-fun flatMap!670 ((InoxSet Context!8654) Int) (InoxSet Context!8654))

(declare-fun derivationStepZipperUp!315 (Context!8654 C!30156) (InoxSet Context!8654))

(assert (=> b!5301358 (= (flatMap!670 z!1189 lambda!269259) (derivationStepZipperUp!315 (h!67454 zl!343) (h!67453 s!2326)))))

(declare-fun lt!2165932 () Unit!153290)

(declare-fun lemmaFlatMapOnSingletonSet!202 ((InoxSet Context!8654) Context!8654 Int) Unit!153290)

(assert (=> b!5301358 (= lt!2165932 (lemmaFlatMapOnSingletonSet!202 z!1189 (h!67454 zl!343) lambda!269259))))

(declare-fun lt!2165948 () (InoxSet Context!8654))

(declare-fun lt!2165920 () Context!8654)

(assert (=> b!5301358 (= lt!2165948 (derivationStepZipperUp!315 lt!2165920 (h!67453 s!2326)))))

(declare-fun lt!2165930 () (InoxSet Context!8654))

(declare-fun derivationStepZipperDown!391 (Regex!14943 Context!8654 C!30156) (InoxSet Context!8654))

(assert (=> b!5301358 (= lt!2165930 (derivationStepZipperDown!391 (h!67452 (exprs!4827 (h!67454 zl!343))) lt!2165920 (h!67453 s!2326)))))

(assert (=> b!5301358 (= lt!2165920 (Context!8655 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun lt!2165935 () (InoxSet Context!8654))

(assert (=> b!5301358 (= lt!2165935 (derivationStepZipperUp!315 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343))))) (h!67453 s!2326)))))

(declare-fun b!5301359 () Bool)

(declare-fun e!3294962 () Bool)

(declare-fun tp!1478332 () Bool)

(declare-fun tp!1478329 () Bool)

(assert (=> b!5301359 (= e!3294962 (and tp!1478332 tp!1478329))))

(declare-fun e!3294974 () Bool)

(declare-fun e!3294968 () Bool)

(assert (=> b!5301360 (= e!3294974 e!3294968)))

(declare-fun res!2248481 () Bool)

(assert (=> b!5301360 (=> res!2248481 e!3294968)))

(declare-fun lt!2165937 () Bool)

(declare-fun lt!2165913 () Bool)

(declare-fun lt!2165922 () Bool)

(declare-fun lt!2165916 () Bool)

(declare-fun lt!2165951 () Bool)

(assert (=> b!5301360 (= res!2248481 (or (not (= lt!2165922 (or lt!2165951 lt!2165913))) (not (= lt!2165922 (or lt!2165916 lt!2165937)))))))

(assert (=> b!5301360 (= lt!2165922 (matchZipper!1187 z!1189 s!2326))))

(declare-fun Exists!2124 (Int) Bool)

(assert (=> b!5301360 (= (Exists!2124 lambda!269262) (Exists!2124 lambda!269263))))

(declare-fun lt!2165956 () Unit!153290)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!778 (Regex!14943 Regex!14943 List!61129) Unit!153290)

(assert (=> b!5301360 (= lt!2165956 (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326))))

(declare-datatypes ((tuple2!64284 0))(
  ( (tuple2!64285 (_1!35445 List!61129) (_2!35445 List!61129)) )
))
(declare-datatypes ((Option!15054 0))(
  ( (None!15053) (Some!15053 (v!51082 tuple2!64284)) )
))
(declare-fun isDefined!11757 (Option!15054) Bool)

(declare-fun findConcatSeparation!1468 (Regex!14943 Regex!14943 List!61129 List!61129 List!61129) Option!15054)

(assert (=> b!5301360 (= (isDefined!11757 (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 Nil!61005 s!2326 s!2326)) (Exists!2124 lambda!269262))))

(declare-fun lt!2165921 () Unit!153290)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1232 (Regex!14943 Regex!14943 List!61129) Unit!153290)

(assert (=> b!5301360 (= lt!2165921 (lemmaFindConcatSeparationEquivalentToExists!1232 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326))))

(declare-fun generalisedConcat!612 (List!61128) Regex!14943)

(assert (=> b!5301360 (= lt!2165938 (generalisedConcat!612 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun matchRSpec!2046 (Regex!14943 List!61129) Bool)

(assert (=> b!5301360 (= lt!2165937 (matchRSpec!2046 lt!2165957 s!2326))))

(declare-fun lt!2165944 () Unit!153290)

(declare-fun mainMatchTheorem!2046 (Regex!14943 List!61129) Unit!153290)

(assert (=> b!5301360 (= lt!2165944 (mainMatchTheorem!2046 lt!2165957 s!2326))))

(assert (=> b!5301360 (= (Exists!2124 lambda!269260) (Exists!2124 lambda!269261))))

(declare-fun lt!2165929 () Unit!153290)

(assert (=> b!5301360 (= lt!2165929 (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326))))

(assert (=> b!5301360 (= (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 Nil!61005 s!2326 s!2326)) (Exists!2124 lambda!269260))))

(declare-fun lt!2165911 () Unit!153290)

(assert (=> b!5301360 (= lt!2165911 (lemmaFindConcatSeparationEquivalentToExists!1232 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326))))

(declare-fun lt!2165912 () Regex!14943)

(assert (=> b!5301360 (= lt!2165916 (matchRSpec!2046 lt!2165912 s!2326))))

(declare-fun lt!2165941 () Unit!153290)

(assert (=> b!5301360 (= lt!2165941 (mainMatchTheorem!2046 lt!2165912 s!2326))))

(assert (=> b!5301360 (= lt!2165937 lt!2165913)))

(declare-fun lt!2165952 () (InoxSet Context!8654))

(assert (=> b!5301360 (= lt!2165913 (matchZipper!1187 lt!2165952 s!2326))))

(declare-fun matchR!7128 (Regex!14943 List!61129) Bool)

(assert (=> b!5301360 (= lt!2165937 (matchR!7128 lt!2165957 s!2326))))

(declare-fun lt!2165925 () Context!8654)

(declare-fun lt!2165918 () Unit!153290)

(declare-fun theoremZipperRegexEquiv!353 ((InoxSet Context!8654) List!61130 Regex!14943 List!61129) Unit!153290)

(assert (=> b!5301360 (= lt!2165918 (theoremZipperRegexEquiv!353 lt!2165952 (Cons!61006 lt!2165925 Nil!61006) lt!2165957 s!2326))))

(declare-fun lt!2165923 () List!61128)

(assert (=> b!5301360 (= lt!2165957 (generalisedConcat!612 lt!2165923))))

(assert (=> b!5301360 (= lt!2165916 lt!2165951)))

(declare-fun lt!2165927 () (InoxSet Context!8654))

(assert (=> b!5301360 (= lt!2165951 (matchZipper!1187 lt!2165927 s!2326))))

(assert (=> b!5301360 (= lt!2165916 (matchR!7128 lt!2165912 s!2326))))

(declare-fun lt!2165914 () List!61130)

(declare-fun lt!2165942 () Unit!153290)

(assert (=> b!5301360 (= lt!2165942 (theoremZipperRegexEquiv!353 lt!2165927 lt!2165914 lt!2165912 s!2326))))

(declare-fun lt!2165943 () List!61128)

(assert (=> b!5301360 (= lt!2165912 (generalisedConcat!612 lt!2165943))))

(declare-fun b!5301361 () Bool)

(declare-fun tp!1478330 () Bool)

(declare-fun tp!1478337 () Bool)

(assert (=> b!5301361 (= e!3294962 (and tp!1478330 tp!1478337))))

(declare-fun b!5301363 () Bool)

(declare-fun e!3294969 () Bool)

(declare-fun lt!2165945 () (InoxSet Context!8654))

(assert (=> b!5301363 (= e!3294969 (matchZipper!1187 lt!2165945 (t!374334 s!2326)))))

(declare-fun b!5301364 () Bool)

(declare-fun e!3294967 () Bool)

(declare-fun e!3294965 () Bool)

(assert (=> b!5301364 (= e!3294967 e!3294965)))

(declare-fun res!2248498 () Bool)

(assert (=> b!5301364 (=> res!2248498 e!3294965)))

(declare-fun lt!2165931 () (InoxSet Context!8654))

(declare-fun lt!2165958 () (InoxSet Context!8654))

(assert (=> b!5301364 (= res!2248498 (not (= lt!2165931 lt!2165958)))))

(declare-fun lt!2165953 () (InoxSet Context!8654))

(assert (=> b!5301364 (= lt!2165958 ((_ map or) lt!2165953 lt!2165945))))

(assert (=> b!5301364 (= lt!2165945 (derivationStepZipperUp!315 lt!2165925 (h!67453 s!2326)))))

(declare-fun lt!2165954 () Context!8654)

(assert (=> b!5301364 (= (flatMap!670 lt!2165927 lambda!269259) (derivationStepZipperUp!315 lt!2165954 (h!67453 s!2326)))))

(declare-fun lt!2165926 () Unit!153290)

(assert (=> b!5301364 (= lt!2165926 (lemmaFlatMapOnSingletonSet!202 lt!2165927 lt!2165954 lambda!269259))))

(declare-fun lt!2165947 () (InoxSet Context!8654))

(assert (=> b!5301364 (= lt!2165947 (derivationStepZipperUp!315 lt!2165954 (h!67453 s!2326)))))

(declare-fun derivationStepZipper!1186 ((InoxSet Context!8654) C!30156) (InoxSet Context!8654))

(assert (=> b!5301364 (= lt!2165931 (derivationStepZipper!1186 lt!2165927 (h!67453 s!2326)))))

(assert (=> b!5301364 (= lt!2165952 (store ((as const (Array Context!8654 Bool)) false) lt!2165925 true))))

(assert (=> b!5301364 (= lt!2165927 (store ((as const (Array Context!8654 Bool)) false) lt!2165954 true))))

(assert (=> b!5301364 (= lt!2165954 (Context!8655 lt!2165943))))

(assert (=> b!5301364 (= lt!2165943 (Cons!61004 (regOne!30398 (regOne!30398 r!7292)) lt!2165923))))

(declare-fun b!5301365 () Bool)

(declare-fun res!2248507 () Bool)

(declare-fun e!3294971 () Bool)

(assert (=> b!5301365 (=> (not res!2248507) (not e!3294971))))

(declare-fun unfocusZipper!685 (List!61130) Regex!14943)

(assert (=> b!5301365 (= res!2248507 (= r!7292 (unfocusZipper!685 zl!343)))))

(declare-fun b!5301366 () Bool)

(declare-fun e!3294979 () Bool)

(declare-fun tp_is_empty!39139 () Bool)

(declare-fun tp!1478328 () Bool)

(assert (=> b!5301366 (= e!3294979 (and tp_is_empty!39139 tp!1478328))))

(declare-fun b!5301367 () Bool)

(declare-fun Unit!153292 () Unit!153290)

(assert (=> b!5301367 (= e!3294963 Unit!153292)))

(declare-fun lt!2165934 () Unit!153290)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!180 ((InoxSet Context!8654) (InoxSet Context!8654) List!61129) Unit!153290)

(assert (=> b!5301367 (= lt!2165934 (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165930 lt!2165948 (t!374334 s!2326)))))

(declare-fun res!2248493 () Bool)

(assert (=> b!5301367 (= res!2248493 (matchZipper!1187 lt!2165930 (t!374334 s!2326)))))

(declare-fun e!3294964 () Bool)

(assert (=> b!5301367 (=> res!2248493 e!3294964)))

(assert (=> b!5301367 (= (matchZipper!1187 ((_ map or) lt!2165930 lt!2165948) (t!374334 s!2326)) e!3294964)))

(declare-fun b!5301368 () Bool)

(declare-fun e!3294970 () Bool)

(assert (=> b!5301368 (= e!3294970 e!3294967)))

(declare-fun res!2248505 () Bool)

(assert (=> b!5301368 (=> res!2248505 e!3294967)))

(assert (=> b!5301368 (= res!2248505 e!3294976)))

(declare-fun res!2248499 () Bool)

(assert (=> b!5301368 (=> (not res!2248499) (not e!3294976))))

(declare-fun lt!2165946 () Bool)

(declare-fun lt!2165933 () Bool)

(assert (=> b!5301368 (= res!2248499 (not (= lt!2165946 lt!2165933)))))

(assert (=> b!5301368 (= lt!2165946 (matchZipper!1187 lt!2165930 (t!374334 s!2326)))))

(declare-fun lt!2165919 () (InoxSet Context!8654))

(declare-fun e!3294978 () Bool)

(assert (=> b!5301368 (= (matchZipper!1187 lt!2165919 (t!374334 s!2326)) e!3294978)))

(declare-fun res!2248494 () Bool)

(assert (=> b!5301368 (=> res!2248494 e!3294978)))

(assert (=> b!5301368 (= res!2248494 lt!2165933)))

(assert (=> b!5301368 (= lt!2165933 (matchZipper!1187 lt!2165953 (t!374334 s!2326)))))

(declare-fun lt!2165928 () Unit!153290)

(assert (=> b!5301368 (= lt!2165928 (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165953 lt!2165924 (t!374334 s!2326)))))

(declare-fun b!5301369 () Bool)

(declare-fun e!3294966 () Bool)

(assert (=> b!5301369 (= e!3294965 e!3294966)))

(declare-fun res!2248490 () Bool)

(assert (=> b!5301369 (=> res!2248490 e!3294966)))

(declare-fun e!3294972 () Bool)

(assert (=> b!5301369 (= res!2248490 e!3294972)))

(declare-fun res!2248500 () Bool)

(assert (=> b!5301369 (=> (not res!2248500) (not e!3294972))))

(assert (=> b!5301369 (= res!2248500 (not (= lt!2165946 (matchZipper!1187 lt!2165931 (t!374334 s!2326)))))))

(assert (=> b!5301369 (= (matchZipper!1187 lt!2165958 (t!374334 s!2326)) e!3294969)))

(declare-fun res!2248509 () Bool)

(assert (=> b!5301369 (=> res!2248509 e!3294969)))

(assert (=> b!5301369 (= res!2248509 lt!2165933)))

(declare-fun lt!2165936 () Unit!153290)

(assert (=> b!5301369 (= lt!2165936 (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165953 lt!2165945 (t!374334 s!2326)))))

(assert (=> b!5301369 (= (flatMap!670 lt!2165952 lambda!269259) (derivationStepZipperUp!315 lt!2165925 (h!67453 s!2326)))))

(declare-fun lt!2165939 () Unit!153290)

(assert (=> b!5301369 (= lt!2165939 (lemmaFlatMapOnSingletonSet!202 lt!2165952 lt!2165925 lambda!269259))))

(declare-fun b!5301370 () Bool)

(declare-fun tp!1478336 () Bool)

(assert (=> b!5301370 (= e!3294962 tp!1478336)))

(declare-fun b!5301371 () Bool)

(declare-fun e!3294975 () Bool)

(assert (=> b!5301371 (= e!3294971 (not e!3294975))))

(declare-fun res!2248488 () Bool)

(assert (=> b!5301371 (=> res!2248488 e!3294975)))

(assert (=> b!5301371 (= res!2248488 (not ((_ is Cons!61006) zl!343)))))

(declare-fun lt!2165950 () Bool)

(assert (=> b!5301371 (= lt!2165950 (matchRSpec!2046 r!7292 s!2326))))

(assert (=> b!5301371 (= lt!2165950 (matchR!7128 r!7292 s!2326))))

(declare-fun lt!2165949 () Unit!153290)

(assert (=> b!5301371 (= lt!2165949 (mainMatchTheorem!2046 r!7292 s!2326))))

(declare-fun res!2248502 () Bool)

(assert (=> start!559282 (=> (not res!2248502) (not e!3294971))))

(declare-fun validRegex!6679 (Regex!14943) Bool)

(assert (=> start!559282 (= res!2248502 (validRegex!6679 r!7292))))

(assert (=> start!559282 e!3294971))

(assert (=> start!559282 e!3294962))

(declare-fun condSetEmpty!34055 () Bool)

(assert (=> start!559282 (= condSetEmpty!34055 (= z!1189 ((as const (Array Context!8654 Bool)) false)))))

(declare-fun setRes!34055 () Bool)

(assert (=> start!559282 setRes!34055))

(declare-fun e!3294977 () Bool)

(assert (=> start!559282 e!3294977))

(assert (=> start!559282 e!3294979))

(declare-fun b!5301362 () Bool)

(declare-fun e!3294980 () Bool)

(declare-fun tp!1478335 () Bool)

(assert (=> b!5301362 (= e!3294980 tp!1478335)))

(assert (=> b!5301372 (= e!3294975 e!3294982)))

(declare-fun res!2248497 () Bool)

(assert (=> b!5301372 (=> res!2248497 e!3294982)))

(declare-fun lt!2165955 () Bool)

(assert (=> b!5301372 (= res!2248497 (or (not (= lt!2165950 lt!2165955)) ((_ is Nil!61005) s!2326)))))

(assert (=> b!5301372 (= (Exists!2124 lambda!269257) (Exists!2124 lambda!269258))))

(declare-fun lt!2165915 () Unit!153290)

(assert (=> b!5301372 (= lt!2165915 (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326))))

(assert (=> b!5301372 (= lt!2165955 (Exists!2124 lambda!269257))))

(assert (=> b!5301372 (= lt!2165955 (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) Nil!61005 s!2326 s!2326)))))

(declare-fun lt!2165917 () Unit!153290)

(assert (=> b!5301372 (= lt!2165917 (lemmaFindConcatSeparationEquivalentToExists!1232 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326))))

(declare-fun tp!1478331 () Bool)

(declare-fun e!3294973 () Bool)

(declare-fun b!5301373 () Bool)

(declare-fun inv!80604 (Context!8654) Bool)

(assert (=> b!5301373 (= e!3294977 (and (inv!80604 (h!67454 zl!343)) e!3294973 tp!1478331))))

(declare-fun b!5301374 () Bool)

(declare-fun res!2248496 () Bool)

(assert (=> b!5301374 (=> res!2248496 e!3294968)))

(assert (=> b!5301374 (= res!2248496 (not (validRegex!6679 (regOne!30398 r!7292))))))

(declare-fun b!5301375 () Bool)

(assert (=> b!5301375 (= e!3294978 (matchZipper!1187 lt!2165924 (t!374334 s!2326)))))

(declare-fun b!5301376 () Bool)

(declare-fun Unit!153293 () Unit!153290)

(assert (=> b!5301376 (= e!3294963 Unit!153293)))

(declare-fun b!5301377 () Bool)

(assert (=> b!5301377 (= e!3294964 (matchZipper!1187 lt!2165948 (t!374334 s!2326)))))

(declare-fun setNonEmpty!34055 () Bool)

(declare-fun tp!1478334 () Bool)

(declare-fun setElem!34055 () Context!8654)

(assert (=> setNonEmpty!34055 (= setRes!34055 (and tp!1478334 (inv!80604 setElem!34055) e!3294980))))

(declare-fun setRest!34055 () (InoxSet Context!8654))

(assert (=> setNonEmpty!34055 (= z!1189 ((_ map or) (store ((as const (Array Context!8654 Bool)) false) setElem!34055 true) setRest!34055))))

(declare-fun b!5301378 () Bool)

(declare-fun res!2248486 () Bool)

(assert (=> b!5301378 (=> res!2248486 e!3294975)))

(assert (=> b!5301378 (= res!2248486 (or ((_ is EmptyExpr!14943) r!7292) ((_ is EmptyLang!14943) r!7292) ((_ is ElementMatch!14943) r!7292) ((_ is Union!14943) r!7292) (not ((_ is Concat!23788) r!7292))))))

(declare-fun b!5301379 () Bool)

(declare-fun res!2248484 () Bool)

(assert (=> b!5301379 (=> res!2248484 e!3294975)))

(declare-fun generalisedUnion!872 (List!61128) Regex!14943)

(declare-fun unfocusZipperList!385 (List!61130) List!61128)

(assert (=> b!5301379 (= res!2248484 (not (= r!7292 (generalisedUnion!872 (unfocusZipperList!385 zl!343)))))))

(declare-fun b!5301380 () Bool)

(assert (=> b!5301380 (= e!3294972 (not (matchZipper!1187 (derivationStepZipper!1186 lt!2165952 (h!67453 s!2326)) (t!374334 s!2326))))))

(declare-fun b!5301381 () Bool)

(declare-fun res!2248482 () Bool)

(assert (=> b!5301381 (=> res!2248482 e!3294975)))

(assert (=> b!5301381 (= res!2248482 (not (= r!7292 (generalisedConcat!612 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5301382 () Bool)

(declare-fun res!2248504 () Bool)

(assert (=> b!5301382 (=> res!2248504 e!3294966)))

(assert (=> b!5301382 (= res!2248504 (not (= (exprs!4827 (h!67454 zl!343)) (Cons!61004 (Concat!23788 (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (t!374333 (exprs!4827 (h!67454 zl!343)))))))))

(declare-fun b!5301383 () Bool)

(declare-fun res!2248489 () Bool)

(assert (=> b!5301383 (=> res!2248489 e!3294982)))

(declare-fun isEmpty!32967 (List!61128) Bool)

(assert (=> b!5301383 (= res!2248489 (isEmpty!32967 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5301384 () Bool)

(assert (=> b!5301384 (= e!3294962 tp_is_empty!39139)))

(declare-fun b!5301385 () Bool)

(declare-fun res!2248491 () Bool)

(assert (=> b!5301385 (=> res!2248491 e!3294966)))

(declare-fun contextDepthTotal!84 (Context!8654) Int)

(assert (=> b!5301385 (= res!2248491 (>= (contextDepthTotal!84 lt!2165954) (contextDepthTotal!84 (h!67454 zl!343))))))

(declare-fun b!5301386 () Bool)

(declare-fun res!2248485 () Bool)

(assert (=> b!5301386 (=> res!2248485 e!3294968)))

(assert (=> b!5301386 (= res!2248485 (not (validRegex!6679 (regTwo!30398 r!7292))))))

(declare-fun b!5301387 () Bool)

(declare-fun res!2248495 () Bool)

(assert (=> b!5301387 (=> res!2248495 e!3294981)))

(assert (=> b!5301387 (= res!2248495 (not (nullable!5112 (regOne!30398 (regOne!30398 r!7292)))))))

(declare-fun b!5301388 () Bool)

(declare-fun tp!1478333 () Bool)

(assert (=> b!5301388 (= e!3294973 tp!1478333)))

(declare-fun b!5301389 () Bool)

(declare-fun res!2248487 () Bool)

(assert (=> b!5301389 (=> res!2248487 e!3294974)))

(declare-fun zipperDepth!60 (List!61130) Int)

(assert (=> b!5301389 (= res!2248487 (> (zipperDepth!60 lt!2165914) (zipperDepth!60 zl!343)))))

(declare-fun b!5301390 () Bool)

(declare-fun res!2248501 () Bool)

(assert (=> b!5301390 (=> res!2248501 e!3294975)))

(assert (=> b!5301390 (= res!2248501 (not ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343)))))))

(declare-fun setIsEmpty!34055 () Bool)

(assert (=> setIsEmpty!34055 setRes!34055))

(declare-fun b!5301391 () Bool)

(declare-fun res!2248508 () Bool)

(assert (=> b!5301391 (=> res!2248508 e!3294975)))

(declare-fun isEmpty!32968 (List!61130) Bool)

(assert (=> b!5301391 (= res!2248508 (not (isEmpty!32968 (t!374335 zl!343))))))

(declare-fun b!5301392 () Bool)

(assert (=> b!5301392 (= e!3294966 e!3294974)))

(declare-fun res!2248483 () Bool)

(assert (=> b!5301392 (=> res!2248483 e!3294974)))

(declare-fun zipperDepthTotal!104 (List!61130) Int)

(assert (=> b!5301392 (= res!2248483 (>= (zipperDepthTotal!104 lt!2165914) (zipperDepthTotal!104 zl!343)))))

(assert (=> b!5301392 (= lt!2165914 (Cons!61006 lt!2165954 Nil!61006))))

(declare-fun b!5301393 () Bool)

(assert (=> b!5301393 (= e!3294981 e!3294970)))

(declare-fun res!2248503 () Bool)

(assert (=> b!5301393 (=> res!2248503 e!3294970)))

(assert (=> b!5301393 (= res!2248503 (not (= lt!2165930 lt!2165919)))))

(assert (=> b!5301393 (= lt!2165919 ((_ map or) lt!2165953 lt!2165924))))

(assert (=> b!5301393 (= lt!2165924 (derivationStepZipperDown!391 (regTwo!30398 (regOne!30398 r!7292)) lt!2165920 (h!67453 s!2326)))))

(assert (=> b!5301393 (= lt!2165953 (derivationStepZipperDown!391 (regOne!30398 (regOne!30398 r!7292)) lt!2165925 (h!67453 s!2326)))))

(assert (=> b!5301393 (= lt!2165925 (Context!8655 lt!2165923))))

(assert (=> b!5301393 (= lt!2165923 (Cons!61004 (regTwo!30398 (regOne!30398 r!7292)) (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5301394 () Bool)

(declare-fun res!2248506 () Bool)

(assert (=> b!5301394 (=> (not res!2248506) (not e!3294971))))

(declare-fun toList!8727 ((InoxSet Context!8654)) List!61130)

(assert (=> b!5301394 (= res!2248506 (= (toList!8727 z!1189) zl!343))))

(declare-fun b!5301395 () Bool)

(declare-fun ++!13304 (List!61129 List!61129) List!61129)

(assert (=> b!5301395 (= e!3294968 (= (++!13304 Nil!61005 s!2326) s!2326))))

(assert (= (and start!559282 res!2248502) b!5301394))

(assert (= (and b!5301394 res!2248506) b!5301365))

(assert (= (and b!5301365 res!2248507) b!5301371))

(assert (= (and b!5301371 (not res!2248488)) b!5301391))

(assert (= (and b!5301391 (not res!2248508)) b!5301381))

(assert (= (and b!5301381 (not res!2248482)) b!5301390))

(assert (= (and b!5301390 (not res!2248501)) b!5301379))

(assert (= (and b!5301379 (not res!2248484)) b!5301378))

(assert (= (and b!5301378 (not res!2248486)) b!5301372))

(assert (= (and b!5301372 (not res!2248497)) b!5301383))

(assert (= (and b!5301383 (not res!2248489)) b!5301358))

(assert (= (and b!5301358 c!920350) b!5301367))

(assert (= (and b!5301358 (not c!920350)) b!5301376))

(assert (= (and b!5301367 (not res!2248493)) b!5301377))

(assert (= (and b!5301358 (not res!2248492)) b!5301387))

(assert (= (and b!5301387 (not res!2248495)) b!5301393))

(assert (= (and b!5301393 (not res!2248503)) b!5301368))

(assert (= (and b!5301368 (not res!2248494)) b!5301375))

(assert (= (and b!5301368 res!2248499) b!5301357))

(assert (= (and b!5301368 (not res!2248505)) b!5301364))

(assert (= (and b!5301364 (not res!2248498)) b!5301369))

(assert (= (and b!5301369 (not res!2248509)) b!5301363))

(assert (= (and b!5301369 res!2248500) b!5301380))

(assert (= (and b!5301369 (not res!2248490)) b!5301382))

(assert (= (and b!5301382 (not res!2248504)) b!5301385))

(assert (= (and b!5301385 (not res!2248491)) b!5301392))

(assert (= (and b!5301392 (not res!2248483)) b!5301389))

(assert (= (and b!5301389 (not res!2248487)) b!5301360))

(assert (= (and b!5301360 (not res!2248481)) b!5301374))

(assert (= (and b!5301374 (not res!2248496)) b!5301386))

(assert (= (and b!5301386 (not res!2248485)) b!5301395))

(assert (= (and start!559282 ((_ is ElementMatch!14943) r!7292)) b!5301384))

(assert (= (and start!559282 ((_ is Concat!23788) r!7292)) b!5301361))

(assert (= (and start!559282 ((_ is Star!14943) r!7292)) b!5301370))

(assert (= (and start!559282 ((_ is Union!14943) r!7292)) b!5301359))

(assert (= (and start!559282 condSetEmpty!34055) setIsEmpty!34055))

(assert (= (and start!559282 (not condSetEmpty!34055)) setNonEmpty!34055))

(assert (= setNonEmpty!34055 b!5301362))

(assert (= b!5301373 b!5301388))

(assert (= (and start!559282 ((_ is Cons!61006) zl!343)) b!5301373))

(assert (= (and start!559282 ((_ is Cons!61005) s!2326)) b!5301366))

(declare-fun m!6338590 () Bool)

(assert (=> b!5301369 m!6338590))

(declare-fun m!6338592 () Bool)

(assert (=> b!5301369 m!6338592))

(declare-fun m!6338594 () Bool)

(assert (=> b!5301369 m!6338594))

(declare-fun m!6338596 () Bool)

(assert (=> b!5301369 m!6338596))

(declare-fun m!6338598 () Bool)

(assert (=> b!5301369 m!6338598))

(declare-fun m!6338600 () Bool)

(assert (=> b!5301369 m!6338600))

(declare-fun m!6338602 () Bool)

(assert (=> b!5301386 m!6338602))

(declare-fun m!6338604 () Bool)

(assert (=> b!5301381 m!6338604))

(declare-fun m!6338606 () Bool)

(assert (=> b!5301394 m!6338606))

(declare-fun m!6338608 () Bool)

(assert (=> b!5301387 m!6338608))

(declare-fun m!6338610 () Bool)

(assert (=> b!5301374 m!6338610))

(declare-fun m!6338612 () Bool)

(assert (=> b!5301368 m!6338612))

(declare-fun m!6338614 () Bool)

(assert (=> b!5301368 m!6338614))

(declare-fun m!6338616 () Bool)

(assert (=> b!5301368 m!6338616))

(declare-fun m!6338618 () Bool)

(assert (=> b!5301368 m!6338618))

(declare-fun m!6338620 () Bool)

(assert (=> b!5301391 m!6338620))

(declare-fun m!6338622 () Bool)

(assert (=> b!5301360 m!6338622))

(declare-fun m!6338624 () Bool)

(assert (=> b!5301360 m!6338624))

(declare-fun m!6338626 () Bool)

(assert (=> b!5301360 m!6338626))

(declare-fun m!6338628 () Bool)

(assert (=> b!5301360 m!6338628))

(declare-fun m!6338630 () Bool)

(assert (=> b!5301360 m!6338630))

(declare-fun m!6338632 () Bool)

(assert (=> b!5301360 m!6338632))

(declare-fun m!6338634 () Bool)

(assert (=> b!5301360 m!6338634))

(declare-fun m!6338636 () Bool)

(assert (=> b!5301360 m!6338636))

(declare-fun m!6338638 () Bool)

(assert (=> b!5301360 m!6338638))

(declare-fun m!6338640 () Bool)

(assert (=> b!5301360 m!6338640))

(declare-fun m!6338642 () Bool)

(assert (=> b!5301360 m!6338642))

(declare-fun m!6338644 () Bool)

(assert (=> b!5301360 m!6338644))

(declare-fun m!6338646 () Bool)

(assert (=> b!5301360 m!6338646))

(declare-fun m!6338648 () Bool)

(assert (=> b!5301360 m!6338648))

(declare-fun m!6338650 () Bool)

(assert (=> b!5301360 m!6338650))

(declare-fun m!6338652 () Bool)

(assert (=> b!5301360 m!6338652))

(assert (=> b!5301360 m!6338632))

(declare-fun m!6338654 () Bool)

(assert (=> b!5301360 m!6338654))

(declare-fun m!6338656 () Bool)

(assert (=> b!5301360 m!6338656))

(declare-fun m!6338658 () Bool)

(assert (=> b!5301360 m!6338658))

(declare-fun m!6338660 () Bool)

(assert (=> b!5301360 m!6338660))

(declare-fun m!6338662 () Bool)

(assert (=> b!5301360 m!6338662))

(assert (=> b!5301360 m!6338638))

(assert (=> b!5301360 m!6338652))

(declare-fun m!6338664 () Bool)

(assert (=> b!5301360 m!6338664))

(declare-fun m!6338666 () Bool)

(assert (=> b!5301360 m!6338666))

(declare-fun m!6338668 () Bool)

(assert (=> b!5301360 m!6338668))

(declare-fun m!6338670 () Bool)

(assert (=> b!5301360 m!6338670))

(assert (=> b!5301360 m!6338644))

(declare-fun m!6338672 () Bool)

(assert (=> b!5301360 m!6338672))

(declare-fun m!6338674 () Bool)

(assert (=> b!5301357 m!6338674))

(declare-fun m!6338676 () Bool)

(assert (=> b!5301363 m!6338676))

(declare-fun m!6338678 () Bool)

(assert (=> b!5301377 m!6338678))

(declare-fun m!6338680 () Bool)

(assert (=> b!5301393 m!6338680))

(declare-fun m!6338682 () Bool)

(assert (=> b!5301393 m!6338682))

(declare-fun m!6338684 () Bool)

(assert (=> b!5301358 m!6338684))

(declare-fun m!6338686 () Bool)

(assert (=> b!5301358 m!6338686))

(declare-fun m!6338688 () Bool)

(assert (=> b!5301358 m!6338688))

(declare-fun m!6338690 () Bool)

(assert (=> b!5301358 m!6338690))

(declare-fun m!6338692 () Bool)

(assert (=> b!5301358 m!6338692))

(declare-fun m!6338694 () Bool)

(assert (=> b!5301358 m!6338694))

(declare-fun m!6338696 () Bool)

(assert (=> b!5301358 m!6338696))

(declare-fun m!6338698 () Bool)

(assert (=> setNonEmpty!34055 m!6338698))

(declare-fun m!6338700 () Bool)

(assert (=> b!5301365 m!6338700))

(declare-fun m!6338702 () Bool)

(assert (=> b!5301372 m!6338702))

(declare-fun m!6338704 () Bool)

(assert (=> b!5301372 m!6338704))

(declare-fun m!6338706 () Bool)

(assert (=> b!5301372 m!6338706))

(declare-fun m!6338708 () Bool)

(assert (=> b!5301372 m!6338708))

(assert (=> b!5301372 m!6338702))

(declare-fun m!6338710 () Bool)

(assert (=> b!5301372 m!6338710))

(assert (=> b!5301372 m!6338708))

(declare-fun m!6338712 () Bool)

(assert (=> b!5301372 m!6338712))

(assert (=> b!5301375 m!6338674))

(declare-fun m!6338714 () Bool)

(assert (=> start!559282 m!6338714))

(declare-fun m!6338716 () Bool)

(assert (=> b!5301392 m!6338716))

(declare-fun m!6338718 () Bool)

(assert (=> b!5301392 m!6338718))

(declare-fun m!6338720 () Bool)

(assert (=> b!5301395 m!6338720))

(declare-fun m!6338722 () Bool)

(assert (=> b!5301383 m!6338722))

(declare-fun m!6338724 () Bool)

(assert (=> b!5301379 m!6338724))

(assert (=> b!5301379 m!6338724))

(declare-fun m!6338726 () Bool)

(assert (=> b!5301379 m!6338726))

(declare-fun m!6338728 () Bool)

(assert (=> b!5301371 m!6338728))

(declare-fun m!6338730 () Bool)

(assert (=> b!5301371 m!6338730))

(declare-fun m!6338732 () Bool)

(assert (=> b!5301371 m!6338732))

(declare-fun m!6338734 () Bool)

(assert (=> b!5301364 m!6338734))

(declare-fun m!6338736 () Bool)

(assert (=> b!5301364 m!6338736))

(declare-fun m!6338738 () Bool)

(assert (=> b!5301364 m!6338738))

(assert (=> b!5301364 m!6338592))

(declare-fun m!6338740 () Bool)

(assert (=> b!5301364 m!6338740))

(declare-fun m!6338742 () Bool)

(assert (=> b!5301364 m!6338742))

(declare-fun m!6338744 () Bool)

(assert (=> b!5301364 m!6338744))

(declare-fun m!6338746 () Bool)

(assert (=> b!5301380 m!6338746))

(assert (=> b!5301380 m!6338746))

(declare-fun m!6338748 () Bool)

(assert (=> b!5301380 m!6338748))

(declare-fun m!6338750 () Bool)

(assert (=> b!5301373 m!6338750))

(declare-fun m!6338752 () Bool)

(assert (=> b!5301389 m!6338752))

(declare-fun m!6338754 () Bool)

(assert (=> b!5301389 m!6338754))

(declare-fun m!6338756 () Bool)

(assert (=> b!5301367 m!6338756))

(assert (=> b!5301367 m!6338612))

(declare-fun m!6338758 () Bool)

(assert (=> b!5301367 m!6338758))

(declare-fun m!6338760 () Bool)

(assert (=> b!5301385 m!6338760))

(declare-fun m!6338762 () Bool)

(assert (=> b!5301385 m!6338762))

(check-sat (not start!559282) (not b!5301380) tp_is_empty!39139 (not b!5301391) (not b!5301362) (not b!5301379) (not b!5301377) (not b!5301367) (not b!5301359) (not b!5301375) (not b!5301358) (not b!5301387) (not b!5301386) (not b!5301363) (not b!5301357) (not setNonEmpty!34055) (not b!5301370) (not b!5301368) (not b!5301369) (not b!5301372) (not b!5301361) (not b!5301394) (not b!5301385) (not b!5301389) (not b!5301383) (not b!5301366) (not b!5301373) (not b!5301395) (not b!5301388) (not b!5301393) (not b!5301365) (not b!5301360) (not b!5301392) (not b!5301374) (not b!5301381) (not b!5301371) (not b!5301364))
(check-sat)
(get-model)

(declare-fun d!1704787 () Bool)

(declare-fun c!920526 () Bool)

(declare-fun isEmpty!32971 (List!61129) Bool)

(assert (=> d!1704787 (= c!920526 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295301 () Bool)

(assert (=> d!1704787 (= (matchZipper!1187 lt!2165945 (t!374334 s!2326)) e!3295301)))

(declare-fun b!5301965 () Bool)

(declare-fun nullableZipper!1324 ((InoxSet Context!8654)) Bool)

(assert (=> b!5301965 (= e!3295301 (nullableZipper!1324 lt!2165945))))

(declare-fun b!5301966 () Bool)

(declare-fun head!11366 (List!61129) C!30156)

(declare-fun tail!10463 (List!61129) List!61129)

(assert (=> b!5301966 (= e!3295301 (matchZipper!1187 (derivationStepZipper!1186 lt!2165945 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704787 c!920526) b!5301965))

(assert (= (and d!1704787 (not c!920526)) b!5301966))

(declare-fun m!6339286 () Bool)

(assert (=> d!1704787 m!6339286))

(declare-fun m!6339288 () Bool)

(assert (=> b!5301965 m!6339288))

(declare-fun m!6339290 () Bool)

(assert (=> b!5301966 m!6339290))

(assert (=> b!5301966 m!6339290))

(declare-fun m!6339292 () Bool)

(assert (=> b!5301966 m!6339292))

(declare-fun m!6339294 () Bool)

(assert (=> b!5301966 m!6339294))

(assert (=> b!5301966 m!6339292))

(assert (=> b!5301966 m!6339294))

(declare-fun m!6339296 () Bool)

(assert (=> b!5301966 m!6339296))

(assert (=> b!5301363 d!1704787))

(declare-fun d!1704789 () Bool)

(assert (=> d!1704789 (= (isEmpty!32967 (t!374333 (exprs!4827 (h!67454 zl!343)))) ((_ is Nil!61004) (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(assert (=> b!5301383 d!1704789))

(declare-fun d!1704791 () Bool)

(declare-fun choose!39635 ((InoxSet Context!8654) Int) (InoxSet Context!8654))

(assert (=> d!1704791 (= (flatMap!670 lt!2165927 lambda!269259) (choose!39635 lt!2165927 lambda!269259))))

(declare-fun bs!1229696 () Bool)

(assert (= bs!1229696 d!1704791))

(declare-fun m!6339298 () Bool)

(assert (=> bs!1229696 m!6339298))

(assert (=> b!5301364 d!1704791))

(declare-fun bs!1229697 () Bool)

(declare-fun d!1704793 () Bool)

(assert (= bs!1229697 (and d!1704793 b!5301358)))

(declare-fun lambda!269323 () Int)

(assert (=> bs!1229697 (= lambda!269323 lambda!269259)))

(assert (=> d!1704793 true))

(assert (=> d!1704793 (= (derivationStepZipper!1186 lt!2165927 (h!67453 s!2326)) (flatMap!670 lt!2165927 lambda!269323))))

(declare-fun bs!1229698 () Bool)

(assert (= bs!1229698 d!1704793))

(declare-fun m!6339300 () Bool)

(assert (=> bs!1229698 m!6339300))

(assert (=> b!5301364 d!1704793))

(declare-fun b!5301979 () Bool)

(declare-fun e!3295309 () (InoxSet Context!8654))

(declare-fun call!378016 () (InoxSet Context!8654))

(assert (=> b!5301979 (= e!3295309 call!378016)))

(declare-fun b!5301980 () Bool)

(declare-fun e!3295308 () (InoxSet Context!8654))

(assert (=> b!5301980 (= e!3295308 e!3295309)))

(declare-fun c!920534 () Bool)

(assert (=> b!5301980 (= c!920534 ((_ is Cons!61004) (exprs!4827 lt!2165925)))))

(declare-fun d!1704795 () Bool)

(declare-fun c!920533 () Bool)

(declare-fun e!3295310 () Bool)

(assert (=> d!1704795 (= c!920533 e!3295310)))

(declare-fun res!2248687 () Bool)

(assert (=> d!1704795 (=> (not res!2248687) (not e!3295310))))

(assert (=> d!1704795 (= res!2248687 ((_ is Cons!61004) (exprs!4827 lt!2165925)))))

(assert (=> d!1704795 (= (derivationStepZipperUp!315 lt!2165925 (h!67453 s!2326)) e!3295308)))

(declare-fun b!5301981 () Bool)

(assert (=> b!5301981 (= e!3295310 (nullable!5112 (h!67452 (exprs!4827 lt!2165925))))))

(declare-fun b!5301982 () Bool)

(assert (=> b!5301982 (= e!3295309 ((as const (Array Context!8654 Bool)) false))))

(declare-fun b!5301983 () Bool)

(assert (=> b!5301983 (= e!3295308 ((_ map or) call!378016 (derivationStepZipperUp!315 (Context!8655 (t!374333 (exprs!4827 lt!2165925))) (h!67453 s!2326))))))

(declare-fun bm!378011 () Bool)

(assert (=> bm!378011 (= call!378016 (derivationStepZipperDown!391 (h!67452 (exprs!4827 lt!2165925)) (Context!8655 (t!374333 (exprs!4827 lt!2165925))) (h!67453 s!2326)))))

(assert (= (and d!1704795 res!2248687) b!5301981))

(assert (= (and d!1704795 c!920533) b!5301983))

(assert (= (and d!1704795 (not c!920533)) b!5301980))

(assert (= (and b!5301980 c!920534) b!5301979))

(assert (= (and b!5301980 (not c!920534)) b!5301982))

(assert (= (or b!5301983 b!5301979) bm!378011))

(declare-fun m!6339302 () Bool)

(assert (=> b!5301981 m!6339302))

(declare-fun m!6339304 () Bool)

(assert (=> b!5301983 m!6339304))

(declare-fun m!6339306 () Bool)

(assert (=> bm!378011 m!6339306))

(assert (=> b!5301364 d!1704795))

(declare-fun d!1704797 () Bool)

(declare-fun dynLambda!24121 (Int Context!8654) (InoxSet Context!8654))

(assert (=> d!1704797 (= (flatMap!670 lt!2165927 lambda!269259) (dynLambda!24121 lambda!269259 lt!2165954))))

(declare-fun lt!2166055 () Unit!153290)

(declare-fun choose!39636 ((InoxSet Context!8654) Context!8654 Int) Unit!153290)

(assert (=> d!1704797 (= lt!2166055 (choose!39636 lt!2165927 lt!2165954 lambda!269259))))

(assert (=> d!1704797 (= lt!2165927 (store ((as const (Array Context!8654 Bool)) false) lt!2165954 true))))

(assert (=> d!1704797 (= (lemmaFlatMapOnSingletonSet!202 lt!2165927 lt!2165954 lambda!269259) lt!2166055)))

(declare-fun b_lambda!204273 () Bool)

(assert (=> (not b_lambda!204273) (not d!1704797)))

(declare-fun bs!1229699 () Bool)

(assert (= bs!1229699 d!1704797))

(assert (=> bs!1229699 m!6338740))

(declare-fun m!6339308 () Bool)

(assert (=> bs!1229699 m!6339308))

(declare-fun m!6339310 () Bool)

(assert (=> bs!1229699 m!6339310))

(assert (=> bs!1229699 m!6338734))

(assert (=> b!5301364 d!1704797))

(declare-fun b!5301984 () Bool)

(declare-fun e!3295312 () (InoxSet Context!8654))

(declare-fun call!378017 () (InoxSet Context!8654))

(assert (=> b!5301984 (= e!3295312 call!378017)))

(declare-fun b!5301985 () Bool)

(declare-fun e!3295311 () (InoxSet Context!8654))

(assert (=> b!5301985 (= e!3295311 e!3295312)))

(declare-fun c!920536 () Bool)

(assert (=> b!5301985 (= c!920536 ((_ is Cons!61004) (exprs!4827 lt!2165954)))))

(declare-fun d!1704799 () Bool)

(declare-fun c!920535 () Bool)

(declare-fun e!3295313 () Bool)

(assert (=> d!1704799 (= c!920535 e!3295313)))

(declare-fun res!2248688 () Bool)

(assert (=> d!1704799 (=> (not res!2248688) (not e!3295313))))

(assert (=> d!1704799 (= res!2248688 ((_ is Cons!61004) (exprs!4827 lt!2165954)))))

(assert (=> d!1704799 (= (derivationStepZipperUp!315 lt!2165954 (h!67453 s!2326)) e!3295311)))

(declare-fun b!5301986 () Bool)

(assert (=> b!5301986 (= e!3295313 (nullable!5112 (h!67452 (exprs!4827 lt!2165954))))))

(declare-fun b!5301987 () Bool)

(assert (=> b!5301987 (= e!3295312 ((as const (Array Context!8654 Bool)) false))))

(declare-fun b!5301988 () Bool)

(assert (=> b!5301988 (= e!3295311 ((_ map or) call!378017 (derivationStepZipperUp!315 (Context!8655 (t!374333 (exprs!4827 lt!2165954))) (h!67453 s!2326))))))

(declare-fun bm!378012 () Bool)

(assert (=> bm!378012 (= call!378017 (derivationStepZipperDown!391 (h!67452 (exprs!4827 lt!2165954)) (Context!8655 (t!374333 (exprs!4827 lt!2165954))) (h!67453 s!2326)))))

(assert (= (and d!1704799 res!2248688) b!5301986))

(assert (= (and d!1704799 c!920535) b!5301988))

(assert (= (and d!1704799 (not c!920535)) b!5301985))

(assert (= (and b!5301985 c!920536) b!5301984))

(assert (= (and b!5301985 (not c!920536)) b!5301987))

(assert (= (or b!5301988 b!5301984) bm!378012))

(declare-fun m!6339312 () Bool)

(assert (=> b!5301986 m!6339312))

(declare-fun m!6339314 () Bool)

(assert (=> b!5301988 m!6339314))

(declare-fun m!6339316 () Bool)

(assert (=> bm!378012 m!6339316))

(assert (=> b!5301364 d!1704799))

(declare-fun d!1704801 () Bool)

(declare-fun c!920537 () Bool)

(assert (=> d!1704801 (= c!920537 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295314 () Bool)

(assert (=> d!1704801 (= (matchZipper!1187 (derivationStepZipper!1186 lt!2165952 (h!67453 s!2326)) (t!374334 s!2326)) e!3295314)))

(declare-fun b!5301989 () Bool)

(assert (=> b!5301989 (= e!3295314 (nullableZipper!1324 (derivationStepZipper!1186 lt!2165952 (h!67453 s!2326))))))

(declare-fun b!5301990 () Bool)

(assert (=> b!5301990 (= e!3295314 (matchZipper!1187 (derivationStepZipper!1186 (derivationStepZipper!1186 lt!2165952 (h!67453 s!2326)) (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704801 c!920537) b!5301989))

(assert (= (and d!1704801 (not c!920537)) b!5301990))

(assert (=> d!1704801 m!6339286))

(assert (=> b!5301989 m!6338746))

(declare-fun m!6339318 () Bool)

(assert (=> b!5301989 m!6339318))

(assert (=> b!5301990 m!6339290))

(assert (=> b!5301990 m!6338746))

(assert (=> b!5301990 m!6339290))

(declare-fun m!6339320 () Bool)

(assert (=> b!5301990 m!6339320))

(assert (=> b!5301990 m!6339294))

(assert (=> b!5301990 m!6339320))

(assert (=> b!5301990 m!6339294))

(declare-fun m!6339322 () Bool)

(assert (=> b!5301990 m!6339322))

(assert (=> b!5301380 d!1704801))

(declare-fun bs!1229700 () Bool)

(declare-fun d!1704803 () Bool)

(assert (= bs!1229700 (and d!1704803 b!5301358)))

(declare-fun lambda!269324 () Int)

(assert (=> bs!1229700 (= lambda!269324 lambda!269259)))

(declare-fun bs!1229701 () Bool)

(assert (= bs!1229701 (and d!1704803 d!1704793)))

(assert (=> bs!1229701 (= lambda!269324 lambda!269323)))

(assert (=> d!1704803 true))

(assert (=> d!1704803 (= (derivationStepZipper!1186 lt!2165952 (h!67453 s!2326)) (flatMap!670 lt!2165952 lambda!269324))))

(declare-fun bs!1229702 () Bool)

(assert (= bs!1229702 d!1704803))

(declare-fun m!6339324 () Bool)

(assert (=> bs!1229702 m!6339324))

(assert (=> b!5301380 d!1704803))

(declare-fun d!1704805 () Bool)

(assert (=> d!1704805 (= (matchR!7128 lt!2165957 s!2326) (matchRSpec!2046 lt!2165957 s!2326))))

(declare-fun lt!2166058 () Unit!153290)

(declare-fun choose!39637 (Regex!14943 List!61129) Unit!153290)

(assert (=> d!1704805 (= lt!2166058 (choose!39637 lt!2165957 s!2326))))

(assert (=> d!1704805 (validRegex!6679 lt!2165957)))

(assert (=> d!1704805 (= (mainMatchTheorem!2046 lt!2165957 s!2326) lt!2166058)))

(declare-fun bs!1229703 () Bool)

(assert (= bs!1229703 d!1704805))

(assert (=> bs!1229703 m!6338672))

(assert (=> bs!1229703 m!6338622))

(declare-fun m!6339326 () Bool)

(assert (=> bs!1229703 m!6339326))

(declare-fun m!6339328 () Bool)

(assert (=> bs!1229703 m!6339328))

(assert (=> b!5301360 d!1704805))

(declare-fun b!5302019 () Bool)

(declare-fun e!3295334 () Bool)

(declare-fun lt!2166061 () Bool)

(assert (=> b!5302019 (= e!3295334 (not lt!2166061))))

(declare-fun b!5302020 () Bool)

(declare-fun e!3295335 () Bool)

(declare-fun derivativeStep!4145 (Regex!14943 C!30156) Regex!14943)

(assert (=> b!5302020 (= e!3295335 (matchR!7128 (derivativeStep!4145 lt!2165912 (head!11366 s!2326)) (tail!10463 s!2326)))))

(declare-fun b!5302021 () Bool)

(declare-fun res!2248707 () Bool)

(declare-fun e!3295329 () Bool)

(assert (=> b!5302021 (=> res!2248707 e!3295329)))

(assert (=> b!5302021 (= res!2248707 (not ((_ is ElementMatch!14943) lt!2165912)))))

(assert (=> b!5302021 (= e!3295334 e!3295329)))

(declare-fun b!5302022 () Bool)

(declare-fun e!3295330 () Bool)

(declare-fun call!378020 () Bool)

(assert (=> b!5302022 (= e!3295330 (= lt!2166061 call!378020))))

(declare-fun b!5302023 () Bool)

(declare-fun e!3295333 () Bool)

(declare-fun e!3295331 () Bool)

(assert (=> b!5302023 (= e!3295333 e!3295331)))

(declare-fun res!2248710 () Bool)

(assert (=> b!5302023 (=> res!2248710 e!3295331)))

(assert (=> b!5302023 (= res!2248710 call!378020)))

(declare-fun b!5302024 () Bool)

(declare-fun res!2248712 () Bool)

(assert (=> b!5302024 (=> res!2248712 e!3295331)))

(assert (=> b!5302024 (= res!2248712 (not (isEmpty!32971 (tail!10463 s!2326))))))

(declare-fun d!1704807 () Bool)

(assert (=> d!1704807 e!3295330))

(declare-fun c!920546 () Bool)

(assert (=> d!1704807 (= c!920546 ((_ is EmptyExpr!14943) lt!2165912))))

(assert (=> d!1704807 (= lt!2166061 e!3295335)))

(declare-fun c!920544 () Bool)

(assert (=> d!1704807 (= c!920544 (isEmpty!32971 s!2326))))

(assert (=> d!1704807 (validRegex!6679 lt!2165912)))

(assert (=> d!1704807 (= (matchR!7128 lt!2165912 s!2326) lt!2166061)))

(declare-fun b!5302025 () Bool)

(declare-fun e!3295332 () Bool)

(assert (=> b!5302025 (= e!3295332 (= (head!11366 s!2326) (c!920351 lt!2165912)))))

(declare-fun b!5302026 () Bool)

(declare-fun res!2248709 () Bool)

(assert (=> b!5302026 (=> res!2248709 e!3295329)))

(assert (=> b!5302026 (= res!2248709 e!3295332)))

(declare-fun res!2248708 () Bool)

(assert (=> b!5302026 (=> (not res!2248708) (not e!3295332))))

(assert (=> b!5302026 (= res!2248708 lt!2166061)))

(declare-fun bm!378015 () Bool)

(assert (=> bm!378015 (= call!378020 (isEmpty!32971 s!2326))))

(declare-fun b!5302027 () Bool)

(declare-fun res!2248711 () Bool)

(assert (=> b!5302027 (=> (not res!2248711) (not e!3295332))))

(assert (=> b!5302027 (= res!2248711 (not call!378020))))

(declare-fun b!5302028 () Bool)

(assert (=> b!5302028 (= e!3295329 e!3295333)))

(declare-fun res!2248706 () Bool)

(assert (=> b!5302028 (=> (not res!2248706) (not e!3295333))))

(assert (=> b!5302028 (= res!2248706 (not lt!2166061))))

(declare-fun b!5302029 () Bool)

(assert (=> b!5302029 (= e!3295335 (nullable!5112 lt!2165912))))

(declare-fun b!5302030 () Bool)

(assert (=> b!5302030 (= e!3295331 (not (= (head!11366 s!2326) (c!920351 lt!2165912))))))

(declare-fun b!5302031 () Bool)

(assert (=> b!5302031 (= e!3295330 e!3295334)))

(declare-fun c!920545 () Bool)

(assert (=> b!5302031 (= c!920545 ((_ is EmptyLang!14943) lt!2165912))))

(declare-fun b!5302032 () Bool)

(declare-fun res!2248705 () Bool)

(assert (=> b!5302032 (=> (not res!2248705) (not e!3295332))))

(assert (=> b!5302032 (= res!2248705 (isEmpty!32971 (tail!10463 s!2326)))))

(assert (= (and d!1704807 c!920544) b!5302029))

(assert (= (and d!1704807 (not c!920544)) b!5302020))

(assert (= (and d!1704807 c!920546) b!5302022))

(assert (= (and d!1704807 (not c!920546)) b!5302031))

(assert (= (and b!5302031 c!920545) b!5302019))

(assert (= (and b!5302031 (not c!920545)) b!5302021))

(assert (= (and b!5302021 (not res!2248707)) b!5302026))

(assert (= (and b!5302026 res!2248708) b!5302027))

(assert (= (and b!5302027 res!2248711) b!5302032))

(assert (= (and b!5302032 res!2248705) b!5302025))

(assert (= (and b!5302026 (not res!2248709)) b!5302028))

(assert (= (and b!5302028 res!2248706) b!5302023))

(assert (= (and b!5302023 (not res!2248710)) b!5302024))

(assert (= (and b!5302024 (not res!2248712)) b!5302030))

(assert (= (or b!5302022 b!5302027 b!5302023) bm!378015))

(declare-fun m!6339330 () Bool)

(assert (=> b!5302030 m!6339330))

(declare-fun m!6339332 () Bool)

(assert (=> b!5302024 m!6339332))

(assert (=> b!5302024 m!6339332))

(declare-fun m!6339334 () Bool)

(assert (=> b!5302024 m!6339334))

(assert (=> b!5302032 m!6339332))

(assert (=> b!5302032 m!6339332))

(assert (=> b!5302032 m!6339334))

(assert (=> b!5302025 m!6339330))

(declare-fun m!6339336 () Bool)

(assert (=> d!1704807 m!6339336))

(declare-fun m!6339338 () Bool)

(assert (=> d!1704807 m!6339338))

(assert (=> b!5302020 m!6339330))

(assert (=> b!5302020 m!6339330))

(declare-fun m!6339340 () Bool)

(assert (=> b!5302020 m!6339340))

(assert (=> b!5302020 m!6339332))

(assert (=> b!5302020 m!6339340))

(assert (=> b!5302020 m!6339332))

(declare-fun m!6339342 () Bool)

(assert (=> b!5302020 m!6339342))

(assert (=> bm!378015 m!6339336))

(declare-fun m!6339344 () Bool)

(assert (=> b!5302029 m!6339344))

(assert (=> b!5301360 d!1704807))

(declare-fun b!5302053 () Bool)

(declare-fun e!3295350 () Bool)

(declare-fun lt!2166064 () Regex!14943)

(declare-fun isEmptyExpr!859 (Regex!14943) Bool)

(assert (=> b!5302053 (= e!3295350 (isEmptyExpr!859 lt!2166064))))

(declare-fun b!5302054 () Bool)

(declare-fun e!3295348 () Bool)

(declare-fun head!11367 (List!61128) Regex!14943)

(assert (=> b!5302054 (= e!3295348 (= lt!2166064 (head!11367 (t!374333 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5302055 () Bool)

(declare-fun e!3295352 () Regex!14943)

(assert (=> b!5302055 (= e!3295352 EmptyExpr!14943)))

(declare-fun b!5302056 () Bool)

(assert (=> b!5302056 (= e!3295350 e!3295348)))

(declare-fun c!920558 () Bool)

(declare-fun tail!10464 (List!61128) List!61128)

(assert (=> b!5302056 (= c!920558 (isEmpty!32967 (tail!10464 (t!374333 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5302057 () Bool)

(declare-fun e!3295351 () Bool)

(assert (=> b!5302057 (= e!3295351 e!3295350)))

(declare-fun c!920556 () Bool)

(assert (=> b!5302057 (= c!920556 (isEmpty!32967 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302058 () Bool)

(declare-fun e!3295353 () Bool)

(assert (=> b!5302058 (= e!3295353 (isEmpty!32967 (t!374333 (t!374333 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5302059 () Bool)

(assert (=> b!5302059 (= e!3295352 (Concat!23788 (h!67452 (t!374333 (exprs!4827 (h!67454 zl!343)))) (generalisedConcat!612 (t!374333 (t!374333 (exprs!4827 (h!67454 zl!343)))))))))

(declare-fun b!5302060 () Bool)

(declare-fun e!3295349 () Regex!14943)

(assert (=> b!5302060 (= e!3295349 (h!67452 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302061 () Bool)

(assert (=> b!5302061 (= e!3295349 e!3295352)))

(declare-fun c!920557 () Bool)

(assert (=> b!5302061 (= c!920557 ((_ is Cons!61004) (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun d!1704809 () Bool)

(assert (=> d!1704809 e!3295351))

(declare-fun res!2248718 () Bool)

(assert (=> d!1704809 (=> (not res!2248718) (not e!3295351))))

(assert (=> d!1704809 (= res!2248718 (validRegex!6679 lt!2166064))))

(assert (=> d!1704809 (= lt!2166064 e!3295349)))

(declare-fun c!920555 () Bool)

(assert (=> d!1704809 (= c!920555 e!3295353)))

(declare-fun res!2248717 () Bool)

(assert (=> d!1704809 (=> (not res!2248717) (not e!3295353))))

(assert (=> d!1704809 (= res!2248717 ((_ is Cons!61004) (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun lambda!269327 () Int)

(declare-fun forall!14362 (List!61128 Int) Bool)

(assert (=> d!1704809 (forall!14362 (t!374333 (exprs!4827 (h!67454 zl!343))) lambda!269327)))

(assert (=> d!1704809 (= (generalisedConcat!612 (t!374333 (exprs!4827 (h!67454 zl!343)))) lt!2166064)))

(declare-fun b!5302062 () Bool)

(declare-fun isConcat!382 (Regex!14943) Bool)

(assert (=> b!5302062 (= e!3295348 (isConcat!382 lt!2166064))))

(assert (= (and d!1704809 res!2248717) b!5302058))

(assert (= (and d!1704809 c!920555) b!5302060))

(assert (= (and d!1704809 (not c!920555)) b!5302061))

(assert (= (and b!5302061 c!920557) b!5302059))

(assert (= (and b!5302061 (not c!920557)) b!5302055))

(assert (= (and d!1704809 res!2248718) b!5302057))

(assert (= (and b!5302057 c!920556) b!5302053))

(assert (= (and b!5302057 (not c!920556)) b!5302056))

(assert (= (and b!5302056 c!920558) b!5302054))

(assert (= (and b!5302056 (not c!920558)) b!5302062))

(declare-fun m!6339346 () Bool)

(assert (=> b!5302058 m!6339346))

(declare-fun m!6339348 () Bool)

(assert (=> b!5302059 m!6339348))

(declare-fun m!6339350 () Bool)

(assert (=> b!5302062 m!6339350))

(declare-fun m!6339352 () Bool)

(assert (=> b!5302053 m!6339352))

(declare-fun m!6339354 () Bool)

(assert (=> b!5302056 m!6339354))

(assert (=> b!5302056 m!6339354))

(declare-fun m!6339356 () Bool)

(assert (=> b!5302056 m!6339356))

(declare-fun m!6339358 () Bool)

(assert (=> b!5302054 m!6339358))

(assert (=> b!5302057 m!6338722))

(declare-fun m!6339360 () Bool)

(assert (=> d!1704809 m!6339360))

(declare-fun m!6339362 () Bool)

(assert (=> d!1704809 m!6339362))

(assert (=> b!5301360 d!1704809))

(declare-fun bs!1229704 () Bool)

(declare-fun d!1704811 () Bool)

(assert (= bs!1229704 (and d!1704811 b!5301372)))

(declare-fun lambda!269332 () Int)

(assert (=> bs!1229704 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165938 (regTwo!30398 r!7292))) (= lambda!269332 lambda!269257))))

(declare-fun bs!1229705 () Bool)

(assert (= bs!1229705 (and d!1704811 b!5301360)))

(assert (=> bs!1229705 (not (= lambda!269332 lambda!269263))))

(assert (=> bs!1229705 (not (= lambda!269332 lambda!269261))))

(assert (=> bs!1229705 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269332 lambda!269260))))

(assert (=> bs!1229705 (= lambda!269332 lambda!269262)))

(assert (=> bs!1229704 (not (= lambda!269332 lambda!269258))))

(assert (=> d!1704811 true))

(assert (=> d!1704811 true))

(assert (=> d!1704811 true))

(declare-fun bs!1229706 () Bool)

(assert (= bs!1229706 d!1704811))

(declare-fun lambda!269333 () Int)

(assert (=> bs!1229706 (not (= lambda!269333 lambda!269332))))

(assert (=> bs!1229704 (not (= lambda!269333 lambda!269257))))

(assert (=> bs!1229705 (= lambda!269333 lambda!269263)))

(assert (=> bs!1229705 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269333 lambda!269261))))

(assert (=> bs!1229705 (not (= lambda!269333 lambda!269260))))

(assert (=> bs!1229705 (not (= lambda!269333 lambda!269262))))

(assert (=> bs!1229704 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165938 (regTwo!30398 r!7292))) (= lambda!269333 lambda!269258))))

(assert (=> d!1704811 true))

(assert (=> d!1704811 true))

(assert (=> d!1704811 true))

(assert (=> d!1704811 (= (Exists!2124 lambda!269332) (Exists!2124 lambda!269333))))

(declare-fun lt!2166067 () Unit!153290)

(declare-fun choose!39639 (Regex!14943 Regex!14943 List!61129) Unit!153290)

(assert (=> d!1704811 (= lt!2166067 (choose!39639 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326))))

(assert (=> d!1704811 (validRegex!6679 (regTwo!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704811 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326) lt!2166067)))

(declare-fun m!6339364 () Bool)

(assert (=> bs!1229706 m!6339364))

(declare-fun m!6339366 () Bool)

(assert (=> bs!1229706 m!6339366))

(declare-fun m!6339368 () Bool)

(assert (=> bs!1229706 m!6339368))

(declare-fun m!6339370 () Bool)

(assert (=> bs!1229706 m!6339370))

(assert (=> b!5301360 d!1704811))

(declare-fun bs!1229707 () Bool)

(declare-fun b!5302112 () Bool)

(assert (= bs!1229707 (and b!5302112 d!1704811)))

(declare-fun lambda!269338 () Int)

(assert (=> bs!1229707 (not (= lambda!269338 lambda!269332))))

(declare-fun bs!1229708 () Bool)

(assert (= bs!1229708 (and b!5302112 b!5301372)))

(assert (=> bs!1229708 (not (= lambda!269338 lambda!269257))))

(declare-fun bs!1229709 () Bool)

(assert (= bs!1229709 (and b!5302112 b!5301360)))

(assert (=> bs!1229709 (not (= lambda!269338 lambda!269263))))

(assert (=> bs!1229707 (not (= lambda!269338 lambda!269333))))

(assert (=> bs!1229709 (not (= lambda!269338 lambda!269261))))

(assert (=> bs!1229709 (not (= lambda!269338 lambda!269260))))

(assert (=> bs!1229709 (not (= lambda!269338 lambda!269262))))

(assert (=> bs!1229708 (not (= lambda!269338 lambda!269258))))

(assert (=> b!5302112 true))

(assert (=> b!5302112 true))

(declare-fun bs!1229710 () Bool)

(declare-fun b!5302113 () Bool)

(assert (= bs!1229710 (and b!5302113 d!1704811)))

(declare-fun lambda!269339 () Int)

(assert (=> bs!1229710 (not (= lambda!269339 lambda!269332))))

(declare-fun bs!1229711 () Bool)

(assert (= bs!1229711 (and b!5302113 b!5301372)))

(assert (=> bs!1229711 (not (= lambda!269339 lambda!269257))))

(declare-fun bs!1229712 () Bool)

(assert (= bs!1229712 (and b!5302113 b!5301360)))

(assert (=> bs!1229712 (= (and (= (regOne!30398 lt!2165957) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165957) lt!2165938)) (= lambda!269339 lambda!269263))))

(assert (=> bs!1229710 (= (and (= (regOne!30398 lt!2165957) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165957) lt!2165938)) (= lambda!269339 lambda!269333))))

(assert (=> bs!1229712 (= (and (= (regOne!30398 lt!2165957) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165957) lt!2165957)) (= lambda!269339 lambda!269261))))

(declare-fun bs!1229713 () Bool)

(assert (= bs!1229713 (and b!5302113 b!5302112)))

(assert (=> bs!1229713 (not (= lambda!269339 lambda!269338))))

(assert (=> bs!1229712 (not (= lambda!269339 lambda!269260))))

(assert (=> bs!1229712 (not (= lambda!269339 lambda!269262))))

(assert (=> bs!1229711 (= (and (= (regOne!30398 lt!2165957) (regOne!30398 r!7292)) (= (regTwo!30398 lt!2165957) (regTwo!30398 r!7292))) (= lambda!269339 lambda!269258))))

(assert (=> b!5302113 true))

(assert (=> b!5302113 true))

(declare-fun d!1704813 () Bool)

(declare-fun c!920569 () Bool)

(assert (=> d!1704813 (= c!920569 ((_ is EmptyExpr!14943) lt!2165957))))

(declare-fun e!3295379 () Bool)

(assert (=> d!1704813 (= (matchRSpec!2046 lt!2165957 s!2326) e!3295379)))

(declare-fun b!5302103 () Bool)

(declare-fun res!2248743 () Bool)

(declare-fun e!3295382 () Bool)

(assert (=> b!5302103 (=> res!2248743 e!3295382)))

(declare-fun call!378025 () Bool)

(assert (=> b!5302103 (= res!2248743 call!378025)))

(declare-fun e!3295376 () Bool)

(assert (=> b!5302103 (= e!3295376 e!3295382)))

(declare-fun b!5302104 () Bool)

(declare-fun e!3295381 () Bool)

(assert (=> b!5302104 (= e!3295379 e!3295381)))

(declare-fun res!2248744 () Bool)

(assert (=> b!5302104 (= res!2248744 (not ((_ is EmptyLang!14943) lt!2165957)))))

(assert (=> b!5302104 (=> (not res!2248744) (not e!3295381))))

(declare-fun bm!378020 () Bool)

(declare-fun c!920570 () Bool)

(declare-fun call!378026 () Bool)

(assert (=> bm!378020 (= call!378026 (Exists!2124 (ite c!920570 lambda!269338 lambda!269339)))))

(declare-fun b!5302105 () Bool)

(declare-fun e!3295378 () Bool)

(assert (=> b!5302105 (= e!3295378 (matchRSpec!2046 (regTwo!30399 lt!2165957) s!2326))))

(declare-fun b!5302106 () Bool)

(declare-fun e!3295377 () Bool)

(assert (=> b!5302106 (= e!3295377 e!3295376)))

(assert (=> b!5302106 (= c!920570 ((_ is Star!14943) lt!2165957))))

(declare-fun b!5302107 () Bool)

(declare-fun e!3295380 () Bool)

(assert (=> b!5302107 (= e!3295380 (= s!2326 (Cons!61005 (c!920351 lt!2165957) Nil!61005)))))

(declare-fun b!5302108 () Bool)

(assert (=> b!5302108 (= e!3295379 call!378025)))

(declare-fun b!5302109 () Bool)

(declare-fun c!920567 () Bool)

(assert (=> b!5302109 (= c!920567 ((_ is ElementMatch!14943) lt!2165957))))

(assert (=> b!5302109 (= e!3295381 e!3295380)))

(declare-fun b!5302110 () Bool)

(declare-fun c!920568 () Bool)

(assert (=> b!5302110 (= c!920568 ((_ is Union!14943) lt!2165957))))

(assert (=> b!5302110 (= e!3295380 e!3295377)))

(declare-fun b!5302111 () Bool)

(assert (=> b!5302111 (= e!3295377 e!3295378)))

(declare-fun res!2248745 () Bool)

(assert (=> b!5302111 (= res!2248745 (matchRSpec!2046 (regOne!30399 lt!2165957) s!2326))))

(assert (=> b!5302111 (=> res!2248745 e!3295378)))

(assert (=> b!5302112 (= e!3295382 call!378026)))

(assert (=> b!5302113 (= e!3295376 call!378026)))

(declare-fun bm!378021 () Bool)

(assert (=> bm!378021 (= call!378025 (isEmpty!32971 s!2326))))

(assert (= (and d!1704813 c!920569) b!5302108))

(assert (= (and d!1704813 (not c!920569)) b!5302104))

(assert (= (and b!5302104 res!2248744) b!5302109))

(assert (= (and b!5302109 c!920567) b!5302107))

(assert (= (and b!5302109 (not c!920567)) b!5302110))

(assert (= (and b!5302110 c!920568) b!5302111))

(assert (= (and b!5302110 (not c!920568)) b!5302106))

(assert (= (and b!5302111 (not res!2248745)) b!5302105))

(assert (= (and b!5302106 c!920570) b!5302103))

(assert (= (and b!5302106 (not c!920570)) b!5302113))

(assert (= (and b!5302103 (not res!2248743)) b!5302112))

(assert (= (or b!5302112 b!5302113) bm!378020))

(assert (= (or b!5302108 b!5302103) bm!378021))

(declare-fun m!6339372 () Bool)

(assert (=> bm!378020 m!6339372))

(declare-fun m!6339374 () Bool)

(assert (=> b!5302105 m!6339374))

(declare-fun m!6339376 () Bool)

(assert (=> b!5302111 m!6339376))

(assert (=> bm!378021 m!6339336))

(assert (=> b!5301360 d!1704813))

(declare-fun bs!1229714 () Bool)

(declare-fun d!1704815 () Bool)

(assert (= bs!1229714 (and d!1704815 d!1704809)))

(declare-fun lambda!269340 () Int)

(assert (=> bs!1229714 (= lambda!269340 lambda!269327)))

(declare-fun b!5302114 () Bool)

(declare-fun e!3295385 () Bool)

(declare-fun lt!2166068 () Regex!14943)

(assert (=> b!5302114 (= e!3295385 (isEmptyExpr!859 lt!2166068))))

(declare-fun b!5302115 () Bool)

(declare-fun e!3295383 () Bool)

(assert (=> b!5302115 (= e!3295383 (= lt!2166068 (head!11367 lt!2165943)))))

(declare-fun b!5302116 () Bool)

(declare-fun e!3295387 () Regex!14943)

(assert (=> b!5302116 (= e!3295387 EmptyExpr!14943)))

(declare-fun b!5302117 () Bool)

(assert (=> b!5302117 (= e!3295385 e!3295383)))

(declare-fun c!920574 () Bool)

(assert (=> b!5302117 (= c!920574 (isEmpty!32967 (tail!10464 lt!2165943)))))

(declare-fun b!5302118 () Bool)

(declare-fun e!3295386 () Bool)

(assert (=> b!5302118 (= e!3295386 e!3295385)))

(declare-fun c!920572 () Bool)

(assert (=> b!5302118 (= c!920572 (isEmpty!32967 lt!2165943))))

(declare-fun b!5302119 () Bool)

(declare-fun e!3295388 () Bool)

(assert (=> b!5302119 (= e!3295388 (isEmpty!32967 (t!374333 lt!2165943)))))

(declare-fun b!5302120 () Bool)

(assert (=> b!5302120 (= e!3295387 (Concat!23788 (h!67452 lt!2165943) (generalisedConcat!612 (t!374333 lt!2165943))))))

(declare-fun b!5302121 () Bool)

(declare-fun e!3295384 () Regex!14943)

(assert (=> b!5302121 (= e!3295384 (h!67452 lt!2165943))))

(declare-fun b!5302122 () Bool)

(assert (=> b!5302122 (= e!3295384 e!3295387)))

(declare-fun c!920573 () Bool)

(assert (=> b!5302122 (= c!920573 ((_ is Cons!61004) lt!2165943))))

(assert (=> d!1704815 e!3295386))

(declare-fun res!2248747 () Bool)

(assert (=> d!1704815 (=> (not res!2248747) (not e!3295386))))

(assert (=> d!1704815 (= res!2248747 (validRegex!6679 lt!2166068))))

(assert (=> d!1704815 (= lt!2166068 e!3295384)))

(declare-fun c!920571 () Bool)

(assert (=> d!1704815 (= c!920571 e!3295388)))

(declare-fun res!2248746 () Bool)

(assert (=> d!1704815 (=> (not res!2248746) (not e!3295388))))

(assert (=> d!1704815 (= res!2248746 ((_ is Cons!61004) lt!2165943))))

(assert (=> d!1704815 (forall!14362 lt!2165943 lambda!269340)))

(assert (=> d!1704815 (= (generalisedConcat!612 lt!2165943) lt!2166068)))

(declare-fun b!5302123 () Bool)

(assert (=> b!5302123 (= e!3295383 (isConcat!382 lt!2166068))))

(assert (= (and d!1704815 res!2248746) b!5302119))

(assert (= (and d!1704815 c!920571) b!5302121))

(assert (= (and d!1704815 (not c!920571)) b!5302122))

(assert (= (and b!5302122 c!920573) b!5302120))

(assert (= (and b!5302122 (not c!920573)) b!5302116))

(assert (= (and d!1704815 res!2248747) b!5302118))

(assert (= (and b!5302118 c!920572) b!5302114))

(assert (= (and b!5302118 (not c!920572)) b!5302117))

(assert (= (and b!5302117 c!920574) b!5302115))

(assert (= (and b!5302117 (not c!920574)) b!5302123))

(declare-fun m!6339378 () Bool)

(assert (=> b!5302119 m!6339378))

(declare-fun m!6339380 () Bool)

(assert (=> b!5302120 m!6339380))

(declare-fun m!6339382 () Bool)

(assert (=> b!5302123 m!6339382))

(declare-fun m!6339384 () Bool)

(assert (=> b!5302114 m!6339384))

(declare-fun m!6339386 () Bool)

(assert (=> b!5302117 m!6339386))

(assert (=> b!5302117 m!6339386))

(declare-fun m!6339388 () Bool)

(assert (=> b!5302117 m!6339388))

(declare-fun m!6339390 () Bool)

(assert (=> b!5302115 m!6339390))

(declare-fun m!6339392 () Bool)

(assert (=> b!5302118 m!6339392))

(declare-fun m!6339394 () Bool)

(assert (=> d!1704815 m!6339394))

(declare-fun m!6339396 () Bool)

(assert (=> d!1704815 m!6339396))

(assert (=> b!5301360 d!1704815))

(declare-fun bs!1229715 () Bool)

(declare-fun d!1704817 () Bool)

(assert (= bs!1229715 (and d!1704817 d!1704811)))

(declare-fun lambda!269341 () Int)

(assert (=> bs!1229715 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269341 lambda!269332))))

(declare-fun bs!1229716 () Bool)

(assert (= bs!1229716 (and d!1704817 b!5301372)))

(assert (=> bs!1229716 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165957 (regTwo!30398 r!7292))) (= lambda!269341 lambda!269257))))

(declare-fun bs!1229717 () Bool)

(assert (= bs!1229717 (and d!1704817 b!5301360)))

(assert (=> bs!1229717 (not (= lambda!269341 lambda!269263))))

(assert (=> bs!1229715 (not (= lambda!269341 lambda!269333))))

(assert (=> bs!1229717 (not (= lambda!269341 lambda!269261))))

(declare-fun bs!1229718 () Bool)

(assert (= bs!1229718 (and d!1704817 b!5302112)))

(assert (=> bs!1229718 (not (= lambda!269341 lambda!269338))))

(assert (=> bs!1229717 (= lambda!269341 lambda!269260)))

(assert (=> bs!1229717 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269341 lambda!269262))))

(declare-fun bs!1229719 () Bool)

(assert (= bs!1229719 (and d!1704817 b!5302113)))

(assert (=> bs!1229719 (not (= lambda!269341 lambda!269339))))

(assert (=> bs!1229716 (not (= lambda!269341 lambda!269258))))

(assert (=> d!1704817 true))

(assert (=> d!1704817 true))

(assert (=> d!1704817 true))

(declare-fun bs!1229720 () Bool)

(assert (= bs!1229720 d!1704817))

(declare-fun lambda!269342 () Int)

(assert (=> bs!1229720 (not (= lambda!269342 lambda!269341))))

(assert (=> bs!1229715 (not (= lambda!269342 lambda!269332))))

(assert (=> bs!1229716 (not (= lambda!269342 lambda!269257))))

(assert (=> bs!1229717 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269342 lambda!269263))))

(assert (=> bs!1229715 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269342 lambda!269333))))

(assert (=> bs!1229717 (= lambda!269342 lambda!269261)))

(assert (=> bs!1229718 (not (= lambda!269342 lambda!269338))))

(assert (=> bs!1229717 (not (= lambda!269342 lambda!269260))))

(assert (=> bs!1229717 (not (= lambda!269342 lambda!269262))))

(assert (=> bs!1229719 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 lt!2165957)) (= lt!2165957 (regTwo!30398 lt!2165957))) (= lambda!269342 lambda!269339))))

(assert (=> bs!1229716 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165957 (regTwo!30398 r!7292))) (= lambda!269342 lambda!269258))))

(assert (=> d!1704817 true))

(assert (=> d!1704817 true))

(assert (=> d!1704817 true))

(assert (=> d!1704817 (= (Exists!2124 lambda!269341) (Exists!2124 lambda!269342))))

(declare-fun lt!2166069 () Unit!153290)

(assert (=> d!1704817 (= lt!2166069 (choose!39639 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326))))

(assert (=> d!1704817 (validRegex!6679 (regOne!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704817 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326) lt!2166069)))

(declare-fun m!6339398 () Bool)

(assert (=> bs!1229720 m!6339398))

(declare-fun m!6339400 () Bool)

(assert (=> bs!1229720 m!6339400))

(declare-fun m!6339402 () Bool)

(assert (=> bs!1229720 m!6339402))

(declare-fun m!6339404 () Bool)

(assert (=> bs!1229720 m!6339404))

(assert (=> b!5301360 d!1704817))

(declare-fun bs!1229721 () Bool)

(declare-fun d!1704819 () Bool)

(assert (= bs!1229721 (and d!1704819 d!1704817)))

(declare-fun lambda!269345 () Int)

(assert (=> bs!1229721 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269345 lambda!269341))))

(declare-fun bs!1229722 () Bool)

(assert (= bs!1229722 (and d!1704819 d!1704811)))

(assert (=> bs!1229722 (= lambda!269345 lambda!269332)))

(declare-fun bs!1229723 () Bool)

(assert (= bs!1229723 (and d!1704819 b!5301372)))

(assert (=> bs!1229723 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165938 (regTwo!30398 r!7292))) (= lambda!269345 lambda!269257))))

(declare-fun bs!1229724 () Bool)

(assert (= bs!1229724 (and d!1704819 b!5301360)))

(assert (=> bs!1229724 (not (= lambda!269345 lambda!269263))))

(assert (=> bs!1229722 (not (= lambda!269345 lambda!269333))))

(declare-fun bs!1229725 () Bool)

(assert (= bs!1229725 (and d!1704819 b!5302112)))

(assert (=> bs!1229725 (not (= lambda!269345 lambda!269338))))

(assert (=> bs!1229724 (= (and (= (regTwo!30398 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))) (= lt!2165938 lt!2165957)) (= lambda!269345 lambda!269260))))

(assert (=> bs!1229724 (= lambda!269345 lambda!269262)))

(assert (=> bs!1229721 (not (= lambda!269345 lambda!269342))))

(assert (=> bs!1229724 (not (= lambda!269345 lambda!269261))))

(declare-fun bs!1229726 () Bool)

(assert (= bs!1229726 (and d!1704819 b!5302113)))

(assert (=> bs!1229726 (not (= lambda!269345 lambda!269339))))

(assert (=> bs!1229723 (not (= lambda!269345 lambda!269258))))

(assert (=> d!1704819 true))

(assert (=> d!1704819 true))

(assert (=> d!1704819 true))

(assert (=> d!1704819 (= (isDefined!11757 (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 Nil!61005 s!2326 s!2326)) (Exists!2124 lambda!269345))))

(declare-fun lt!2166072 () Unit!153290)

(declare-fun choose!39640 (Regex!14943 Regex!14943 List!61129) Unit!153290)

(assert (=> d!1704819 (= lt!2166072 (choose!39640 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326))))

(assert (=> d!1704819 (validRegex!6679 (regTwo!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704819 (= (lemmaFindConcatSeparationEquivalentToExists!1232 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 s!2326) lt!2166072)))

(declare-fun bs!1229727 () Bool)

(assert (= bs!1229727 d!1704819))

(assert (=> bs!1229727 m!6339370))

(assert (=> bs!1229727 m!6338644))

(assert (=> bs!1229727 m!6338646))

(declare-fun m!6339406 () Bool)

(assert (=> bs!1229727 m!6339406))

(assert (=> bs!1229727 m!6338644))

(declare-fun m!6339408 () Bool)

(assert (=> bs!1229727 m!6339408))

(assert (=> b!5301360 d!1704819))

(declare-fun b!5302146 () Bool)

(declare-fun e!3295405 () Bool)

(assert (=> b!5302146 (= e!3295405 (matchR!7128 lt!2165957 s!2326))))

(declare-fun b!5302147 () Bool)

(declare-fun e!3295404 () Option!15054)

(assert (=> b!5302147 (= e!3295404 (Some!15053 (tuple2!64285 Nil!61005 s!2326)))))

(declare-fun d!1704821 () Bool)

(declare-fun e!3295401 () Bool)

(assert (=> d!1704821 e!3295401))

(declare-fun res!2248764 () Bool)

(assert (=> d!1704821 (=> res!2248764 e!3295401)))

(declare-fun e!3295402 () Bool)

(assert (=> d!1704821 (= res!2248764 e!3295402)))

(declare-fun res!2248763 () Bool)

(assert (=> d!1704821 (=> (not res!2248763) (not e!3295402))))

(declare-fun lt!2166081 () Option!15054)

(assert (=> d!1704821 (= res!2248763 (isDefined!11757 lt!2166081))))

(assert (=> d!1704821 (= lt!2166081 e!3295404)))

(declare-fun c!920579 () Bool)

(assert (=> d!1704821 (= c!920579 e!3295405)))

(declare-fun res!2248766 () Bool)

(assert (=> d!1704821 (=> (not res!2248766) (not e!3295405))))

(assert (=> d!1704821 (= res!2248766 (matchR!7128 (regOne!30398 (regOne!30398 r!7292)) Nil!61005))))

(assert (=> d!1704821 (validRegex!6679 (regOne!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704821 (= (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 Nil!61005 s!2326 s!2326) lt!2166081)))

(declare-fun b!5302148 () Bool)

(declare-fun lt!2166079 () Unit!153290)

(declare-fun lt!2166080 () Unit!153290)

(assert (=> b!5302148 (= lt!2166079 lt!2166080)))

(assert (=> b!5302148 (= (++!13304 (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1719 (List!61129 C!30156 List!61129 List!61129) Unit!153290)

(assert (=> b!5302148 (= lt!2166080 (lemmaMoveElementToOtherListKeepsConcatEq!1719 Nil!61005 (h!67453 s!2326) (t!374334 s!2326) s!2326))))

(declare-fun e!3295403 () Option!15054)

(assert (=> b!5302148 (= e!3295403 (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326) s!2326))))

(declare-fun b!5302149 () Bool)

(assert (=> b!5302149 (= e!3295403 None!15053)))

(declare-fun b!5302150 () Bool)

(declare-fun res!2248762 () Bool)

(assert (=> b!5302150 (=> (not res!2248762) (not e!3295402))))

(declare-fun get!20981 (Option!15054) tuple2!64284)

(assert (=> b!5302150 (= res!2248762 (matchR!7128 (regOne!30398 (regOne!30398 r!7292)) (_1!35445 (get!20981 lt!2166081))))))

(declare-fun b!5302151 () Bool)

(declare-fun res!2248765 () Bool)

(assert (=> b!5302151 (=> (not res!2248765) (not e!3295402))))

(assert (=> b!5302151 (= res!2248765 (matchR!7128 lt!2165957 (_2!35445 (get!20981 lt!2166081))))))

(declare-fun b!5302152 () Bool)

(assert (=> b!5302152 (= e!3295402 (= (++!13304 (_1!35445 (get!20981 lt!2166081)) (_2!35445 (get!20981 lt!2166081))) s!2326))))

(declare-fun b!5302153 () Bool)

(assert (=> b!5302153 (= e!3295401 (not (isDefined!11757 lt!2166081)))))

(declare-fun b!5302154 () Bool)

(assert (=> b!5302154 (= e!3295404 e!3295403)))

(declare-fun c!920580 () Bool)

(assert (=> b!5302154 (= c!920580 ((_ is Nil!61005) s!2326))))

(assert (= (and d!1704821 res!2248766) b!5302146))

(assert (= (and d!1704821 c!920579) b!5302147))

(assert (= (and d!1704821 (not c!920579)) b!5302154))

(assert (= (and b!5302154 c!920580) b!5302149))

(assert (= (and b!5302154 (not c!920580)) b!5302148))

(assert (= (and d!1704821 res!2248763) b!5302150))

(assert (= (and b!5302150 res!2248762) b!5302151))

(assert (= (and b!5302151 res!2248765) b!5302152))

(assert (= (and d!1704821 (not res!2248764)) b!5302153))

(declare-fun m!6339410 () Bool)

(assert (=> b!5302153 m!6339410))

(assert (=> b!5302146 m!6338672))

(declare-fun m!6339412 () Bool)

(assert (=> b!5302151 m!6339412))

(declare-fun m!6339414 () Bool)

(assert (=> b!5302151 m!6339414))

(assert (=> b!5302150 m!6339412))

(declare-fun m!6339416 () Bool)

(assert (=> b!5302150 m!6339416))

(declare-fun m!6339418 () Bool)

(assert (=> b!5302148 m!6339418))

(assert (=> b!5302148 m!6339418))

(declare-fun m!6339420 () Bool)

(assert (=> b!5302148 m!6339420))

(declare-fun m!6339422 () Bool)

(assert (=> b!5302148 m!6339422))

(assert (=> b!5302148 m!6339418))

(declare-fun m!6339424 () Bool)

(assert (=> b!5302148 m!6339424))

(assert (=> d!1704821 m!6339410))

(declare-fun m!6339426 () Bool)

(assert (=> d!1704821 m!6339426))

(assert (=> d!1704821 m!6339404))

(assert (=> b!5302152 m!6339412))

(declare-fun m!6339428 () Bool)

(assert (=> b!5302152 m!6339428))

(assert (=> b!5301360 d!1704821))

(declare-fun d!1704823 () Bool)

(declare-fun choose!39641 (Int) Bool)

(assert (=> d!1704823 (= (Exists!2124 lambda!269260) (choose!39641 lambda!269260))))

(declare-fun bs!1229728 () Bool)

(assert (= bs!1229728 d!1704823))

(declare-fun m!6339430 () Bool)

(assert (=> bs!1229728 m!6339430))

(assert (=> b!5301360 d!1704823))

(declare-fun d!1704825 () Bool)

(assert (=> d!1704825 (= (matchR!7128 lt!2165957 s!2326) (matchZipper!1187 lt!2165952 s!2326))))

(declare-fun lt!2166084 () Unit!153290)

(declare-fun choose!39642 ((InoxSet Context!8654) List!61130 Regex!14943 List!61129) Unit!153290)

(assert (=> d!1704825 (= lt!2166084 (choose!39642 lt!2165952 (Cons!61006 lt!2165925 Nil!61006) lt!2165957 s!2326))))

(assert (=> d!1704825 (validRegex!6679 lt!2165957)))

(assert (=> d!1704825 (= (theoremZipperRegexEquiv!353 lt!2165952 (Cons!61006 lt!2165925 Nil!61006) lt!2165957 s!2326) lt!2166084)))

(declare-fun bs!1229729 () Bool)

(assert (= bs!1229729 d!1704825))

(assert (=> bs!1229729 m!6338672))

(assert (=> bs!1229729 m!6338656))

(declare-fun m!6339432 () Bool)

(assert (=> bs!1229729 m!6339432))

(assert (=> bs!1229729 m!6339328))

(assert (=> b!5301360 d!1704825))

(declare-fun d!1704827 () Bool)

(assert (=> d!1704827 (= (Exists!2124 lambda!269263) (choose!39641 lambda!269263))))

(declare-fun bs!1229730 () Bool)

(assert (= bs!1229730 d!1704827))

(declare-fun m!6339434 () Bool)

(assert (=> bs!1229730 m!6339434))

(assert (=> b!5301360 d!1704827))

(declare-fun d!1704829 () Bool)

(assert (=> d!1704829 (= (matchR!7128 lt!2165912 s!2326) (matchZipper!1187 lt!2165927 s!2326))))

(declare-fun lt!2166085 () Unit!153290)

(assert (=> d!1704829 (= lt!2166085 (choose!39642 lt!2165927 lt!2165914 lt!2165912 s!2326))))

(assert (=> d!1704829 (validRegex!6679 lt!2165912)))

(assert (=> d!1704829 (= (theoremZipperRegexEquiv!353 lt!2165927 lt!2165914 lt!2165912 s!2326) lt!2166085)))

(declare-fun bs!1229731 () Bool)

(assert (= bs!1229731 d!1704829))

(assert (=> bs!1229731 m!6338642))

(assert (=> bs!1229731 m!6338634))

(declare-fun m!6339436 () Bool)

(assert (=> bs!1229731 m!6339436))

(assert (=> bs!1229731 m!6339338))

(assert (=> b!5301360 d!1704829))

(declare-fun b!5302155 () Bool)

(declare-fun e!3295410 () Bool)

(assert (=> b!5302155 (= e!3295410 (matchR!7128 lt!2165938 s!2326))))

(declare-fun b!5302156 () Bool)

(declare-fun e!3295409 () Option!15054)

(assert (=> b!5302156 (= e!3295409 (Some!15053 (tuple2!64285 Nil!61005 s!2326)))))

(declare-fun d!1704831 () Bool)

(declare-fun e!3295406 () Bool)

(assert (=> d!1704831 e!3295406))

(declare-fun res!2248769 () Bool)

(assert (=> d!1704831 (=> res!2248769 e!3295406)))

(declare-fun e!3295407 () Bool)

(assert (=> d!1704831 (= res!2248769 e!3295407)))

(declare-fun res!2248768 () Bool)

(assert (=> d!1704831 (=> (not res!2248768) (not e!3295407))))

(declare-fun lt!2166088 () Option!15054)

(assert (=> d!1704831 (= res!2248768 (isDefined!11757 lt!2166088))))

(assert (=> d!1704831 (= lt!2166088 e!3295409)))

(declare-fun c!920581 () Bool)

(assert (=> d!1704831 (= c!920581 e!3295410)))

(declare-fun res!2248771 () Bool)

(assert (=> d!1704831 (=> (not res!2248771) (not e!3295410))))

(assert (=> d!1704831 (= res!2248771 (matchR!7128 (regTwo!30398 (regOne!30398 r!7292)) Nil!61005))))

(assert (=> d!1704831 (validRegex!6679 (regTwo!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704831 (= (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 Nil!61005 s!2326 s!2326) lt!2166088)))

(declare-fun b!5302157 () Bool)

(declare-fun lt!2166086 () Unit!153290)

(declare-fun lt!2166087 () Unit!153290)

(assert (=> b!5302157 (= lt!2166086 lt!2166087)))

(assert (=> b!5302157 (= (++!13304 (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326)) s!2326)))

(assert (=> b!5302157 (= lt!2166087 (lemmaMoveElementToOtherListKeepsConcatEq!1719 Nil!61005 (h!67453 s!2326) (t!374334 s!2326) s!2326))))

(declare-fun e!3295408 () Option!15054)

(assert (=> b!5302157 (= e!3295408 (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326) s!2326))))

(declare-fun b!5302158 () Bool)

(assert (=> b!5302158 (= e!3295408 None!15053)))

(declare-fun b!5302159 () Bool)

(declare-fun res!2248767 () Bool)

(assert (=> b!5302159 (=> (not res!2248767) (not e!3295407))))

(assert (=> b!5302159 (= res!2248767 (matchR!7128 (regTwo!30398 (regOne!30398 r!7292)) (_1!35445 (get!20981 lt!2166088))))))

(declare-fun b!5302160 () Bool)

(declare-fun res!2248770 () Bool)

(assert (=> b!5302160 (=> (not res!2248770) (not e!3295407))))

(assert (=> b!5302160 (= res!2248770 (matchR!7128 lt!2165938 (_2!35445 (get!20981 lt!2166088))))))

(declare-fun b!5302161 () Bool)

(assert (=> b!5302161 (= e!3295407 (= (++!13304 (_1!35445 (get!20981 lt!2166088)) (_2!35445 (get!20981 lt!2166088))) s!2326))))

(declare-fun b!5302162 () Bool)

(assert (=> b!5302162 (= e!3295406 (not (isDefined!11757 lt!2166088)))))

(declare-fun b!5302163 () Bool)

(assert (=> b!5302163 (= e!3295409 e!3295408)))

(declare-fun c!920582 () Bool)

(assert (=> b!5302163 (= c!920582 ((_ is Nil!61005) s!2326))))

(assert (= (and d!1704831 res!2248771) b!5302155))

(assert (= (and d!1704831 c!920581) b!5302156))

(assert (= (and d!1704831 (not c!920581)) b!5302163))

(assert (= (and b!5302163 c!920582) b!5302158))

(assert (= (and b!5302163 (not c!920582)) b!5302157))

(assert (= (and d!1704831 res!2248768) b!5302159))

(assert (= (and b!5302159 res!2248767) b!5302160))

(assert (= (and b!5302160 res!2248770) b!5302161))

(assert (= (and d!1704831 (not res!2248769)) b!5302162))

(declare-fun m!6339438 () Bool)

(assert (=> b!5302162 m!6339438))

(declare-fun m!6339440 () Bool)

(assert (=> b!5302155 m!6339440))

(declare-fun m!6339442 () Bool)

(assert (=> b!5302160 m!6339442))

(declare-fun m!6339444 () Bool)

(assert (=> b!5302160 m!6339444))

(assert (=> b!5302159 m!6339442))

(declare-fun m!6339446 () Bool)

(assert (=> b!5302159 m!6339446))

(assert (=> b!5302157 m!6339418))

(assert (=> b!5302157 m!6339418))

(assert (=> b!5302157 m!6339420))

(assert (=> b!5302157 m!6339422))

(assert (=> b!5302157 m!6339418))

(declare-fun m!6339448 () Bool)

(assert (=> b!5302157 m!6339448))

(assert (=> d!1704831 m!6339438))

(declare-fun m!6339450 () Bool)

(assert (=> d!1704831 m!6339450))

(assert (=> d!1704831 m!6339370))

(assert (=> b!5302161 m!6339442))

(declare-fun m!6339452 () Bool)

(assert (=> b!5302161 m!6339452))

(assert (=> b!5301360 d!1704831))

(declare-fun bs!1229732 () Bool)

(declare-fun d!1704833 () Bool)

(assert (= bs!1229732 (and d!1704833 d!1704817)))

(declare-fun lambda!269346 () Int)

(assert (=> bs!1229732 (= lambda!269346 lambda!269341)))

(declare-fun bs!1229733 () Bool)

(assert (= bs!1229733 (and d!1704833 d!1704811)))

(assert (=> bs!1229733 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269346 lambda!269332))))

(declare-fun bs!1229734 () Bool)

(assert (= bs!1229734 (and d!1704833 b!5301372)))

(assert (=> bs!1229734 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regOne!30398 r!7292)) (= lt!2165957 (regTwo!30398 r!7292))) (= lambda!269346 lambda!269257))))

(declare-fun bs!1229735 () Bool)

(assert (= bs!1229735 (and d!1704833 b!5301360)))

(assert (=> bs!1229735 (not (= lambda!269346 lambda!269263))))

(assert (=> bs!1229733 (not (= lambda!269346 lambda!269333))))

(declare-fun bs!1229736 () Bool)

(assert (= bs!1229736 (and d!1704833 b!5302112)))

(assert (=> bs!1229736 (not (= lambda!269346 lambda!269338))))

(assert (=> bs!1229735 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269346 lambda!269262))))

(assert (=> bs!1229732 (not (= lambda!269346 lambda!269342))))

(assert (=> bs!1229735 (not (= lambda!269346 lambda!269261))))

(declare-fun bs!1229737 () Bool)

(assert (= bs!1229737 (and d!1704833 d!1704819)))

(assert (=> bs!1229737 (= (and (= (regOne!30398 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292))) (= lt!2165957 lt!2165938)) (= lambda!269346 lambda!269345))))

(assert (=> bs!1229735 (= lambda!269346 lambda!269260)))

(declare-fun bs!1229738 () Bool)

(assert (= bs!1229738 (and d!1704833 b!5302113)))

(assert (=> bs!1229738 (not (= lambda!269346 lambda!269339))))

(assert (=> bs!1229734 (not (= lambda!269346 lambda!269258))))

(assert (=> d!1704833 true))

(assert (=> d!1704833 true))

(assert (=> d!1704833 true))

(assert (=> d!1704833 (= (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 Nil!61005 s!2326 s!2326)) (Exists!2124 lambda!269346))))

(declare-fun lt!2166089 () Unit!153290)

(assert (=> d!1704833 (= lt!2166089 (choose!39640 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326))))

(assert (=> d!1704833 (validRegex!6679 (regOne!30398 (regOne!30398 r!7292)))))

(assert (=> d!1704833 (= (lemmaFindConcatSeparationEquivalentToExists!1232 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 s!2326) lt!2166089)))

(declare-fun bs!1229739 () Bool)

(assert (= bs!1229739 d!1704833))

(assert (=> bs!1229739 m!6339404))

(assert (=> bs!1229739 m!6338638))

(assert (=> bs!1229739 m!6338640))

(declare-fun m!6339454 () Bool)

(assert (=> bs!1229739 m!6339454))

(assert (=> bs!1229739 m!6338638))

(declare-fun m!6339456 () Bool)

(assert (=> bs!1229739 m!6339456))

(assert (=> b!5301360 d!1704833))

(declare-fun d!1704835 () Bool)

(assert (=> d!1704835 (= (Exists!2124 lambda!269261) (choose!39641 lambda!269261))))

(declare-fun bs!1229740 () Bool)

(assert (= bs!1229740 d!1704835))

(declare-fun m!6339458 () Bool)

(assert (=> bs!1229740 m!6339458))

(assert (=> b!5301360 d!1704835))

(declare-fun d!1704837 () Bool)

(assert (=> d!1704837 (= (matchR!7128 lt!2165912 s!2326) (matchRSpec!2046 lt!2165912 s!2326))))

(declare-fun lt!2166090 () Unit!153290)

(assert (=> d!1704837 (= lt!2166090 (choose!39637 lt!2165912 s!2326))))

(assert (=> d!1704837 (validRegex!6679 lt!2165912)))

(assert (=> d!1704837 (= (mainMatchTheorem!2046 lt!2165912 s!2326) lt!2166090)))

(declare-fun bs!1229741 () Bool)

(assert (= bs!1229741 d!1704837))

(assert (=> bs!1229741 m!6338642))

(assert (=> bs!1229741 m!6338660))

(declare-fun m!6339460 () Bool)

(assert (=> bs!1229741 m!6339460))

(assert (=> bs!1229741 m!6339338))

(assert (=> b!5301360 d!1704837))

(declare-fun d!1704839 () Bool)

(declare-fun c!920583 () Bool)

(assert (=> d!1704839 (= c!920583 (isEmpty!32971 s!2326))))

(declare-fun e!3295411 () Bool)

(assert (=> d!1704839 (= (matchZipper!1187 z!1189 s!2326) e!3295411)))

(declare-fun b!5302164 () Bool)

(assert (=> b!5302164 (= e!3295411 (nullableZipper!1324 z!1189))))

(declare-fun b!5302165 () Bool)

(assert (=> b!5302165 (= e!3295411 (matchZipper!1187 (derivationStepZipper!1186 z!1189 (head!11366 s!2326)) (tail!10463 s!2326)))))

(assert (= (and d!1704839 c!920583) b!5302164))

(assert (= (and d!1704839 (not c!920583)) b!5302165))

(assert (=> d!1704839 m!6339336))

(declare-fun m!6339462 () Bool)

(assert (=> b!5302164 m!6339462))

(assert (=> b!5302165 m!6339330))

(assert (=> b!5302165 m!6339330))

(declare-fun m!6339464 () Bool)

(assert (=> b!5302165 m!6339464))

(assert (=> b!5302165 m!6339332))

(assert (=> b!5302165 m!6339464))

(assert (=> b!5302165 m!6339332))

(declare-fun m!6339466 () Bool)

(assert (=> b!5302165 m!6339466))

(assert (=> b!5301360 d!1704839))

(declare-fun d!1704841 () Bool)

(declare-fun c!920584 () Bool)

(assert (=> d!1704841 (= c!920584 (isEmpty!32971 s!2326))))

(declare-fun e!3295412 () Bool)

(assert (=> d!1704841 (= (matchZipper!1187 lt!2165927 s!2326) e!3295412)))

(declare-fun b!5302166 () Bool)

(assert (=> b!5302166 (= e!3295412 (nullableZipper!1324 lt!2165927))))

(declare-fun b!5302167 () Bool)

(assert (=> b!5302167 (= e!3295412 (matchZipper!1187 (derivationStepZipper!1186 lt!2165927 (head!11366 s!2326)) (tail!10463 s!2326)))))

(assert (= (and d!1704841 c!920584) b!5302166))

(assert (= (and d!1704841 (not c!920584)) b!5302167))

(assert (=> d!1704841 m!6339336))

(declare-fun m!6339468 () Bool)

(assert (=> b!5302166 m!6339468))

(assert (=> b!5302167 m!6339330))

(assert (=> b!5302167 m!6339330))

(declare-fun m!6339470 () Bool)

(assert (=> b!5302167 m!6339470))

(assert (=> b!5302167 m!6339332))

(assert (=> b!5302167 m!6339470))

(assert (=> b!5302167 m!6339332))

(declare-fun m!6339472 () Bool)

(assert (=> b!5302167 m!6339472))

(assert (=> b!5301360 d!1704841))

(declare-fun bs!1229742 () Bool)

(declare-fun b!5302177 () Bool)

(assert (= bs!1229742 (and b!5302177 d!1704817)))

(declare-fun lambda!269347 () Int)

(assert (=> bs!1229742 (not (= lambda!269347 lambda!269341))))

(declare-fun bs!1229743 () Bool)

(assert (= bs!1229743 (and b!5302177 d!1704811)))

(assert (=> bs!1229743 (not (= lambda!269347 lambda!269332))))

(declare-fun bs!1229744 () Bool)

(assert (= bs!1229744 (and b!5302177 b!5301372)))

(assert (=> bs!1229744 (not (= lambda!269347 lambda!269257))))

(declare-fun bs!1229745 () Bool)

(assert (= bs!1229745 (and b!5302177 b!5301360)))

(assert (=> bs!1229745 (not (= lambda!269347 lambda!269263))))

(assert (=> bs!1229743 (not (= lambda!269347 lambda!269333))))

(declare-fun bs!1229746 () Bool)

(assert (= bs!1229746 (and b!5302177 b!5302112)))

(assert (=> bs!1229746 (= (and (= (reg!15272 lt!2165912) (reg!15272 lt!2165957)) (= lt!2165912 lt!2165957)) (= lambda!269347 lambda!269338))))

(assert (=> bs!1229745 (not (= lambda!269347 lambda!269262))))

(assert (=> bs!1229742 (not (= lambda!269347 lambda!269342))))

(assert (=> bs!1229745 (not (= lambda!269347 lambda!269261))))

(declare-fun bs!1229747 () Bool)

(assert (= bs!1229747 (and b!5302177 d!1704819)))

(assert (=> bs!1229747 (not (= lambda!269347 lambda!269345))))

(assert (=> bs!1229745 (not (= lambda!269347 lambda!269260))))

(declare-fun bs!1229748 () Bool)

(assert (= bs!1229748 (and b!5302177 b!5302113)))

(assert (=> bs!1229748 (not (= lambda!269347 lambda!269339))))

(declare-fun bs!1229749 () Bool)

(assert (= bs!1229749 (and b!5302177 d!1704833)))

(assert (=> bs!1229749 (not (= lambda!269347 lambda!269346))))

(assert (=> bs!1229744 (not (= lambda!269347 lambda!269258))))

(assert (=> b!5302177 true))

(assert (=> b!5302177 true))

(declare-fun bs!1229750 () Bool)

(declare-fun b!5302178 () Bool)

(assert (= bs!1229750 (and b!5302178 d!1704817)))

(declare-fun lambda!269348 () Int)

(assert (=> bs!1229750 (not (= lambda!269348 lambda!269341))))

(declare-fun bs!1229751 () Bool)

(assert (= bs!1229751 (and b!5302178 d!1704811)))

(assert (=> bs!1229751 (not (= lambda!269348 lambda!269332))))

(declare-fun bs!1229752 () Bool)

(assert (= bs!1229752 (and b!5302178 b!5301372)))

(assert (=> bs!1229752 (not (= lambda!269348 lambda!269257))))

(declare-fun bs!1229753 () Bool)

(assert (= bs!1229753 (and b!5302178 b!5301360)))

(assert (=> bs!1229753 (= (and (= (regOne!30398 lt!2165912) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165912) lt!2165938)) (= lambda!269348 lambda!269263))))

(assert (=> bs!1229751 (= (and (= (regOne!30398 lt!2165912) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165912) lt!2165938)) (= lambda!269348 lambda!269333))))

(declare-fun bs!1229754 () Bool)

(assert (= bs!1229754 (and b!5302178 b!5302112)))

(assert (=> bs!1229754 (not (= lambda!269348 lambda!269338))))

(declare-fun bs!1229755 () Bool)

(assert (= bs!1229755 (and b!5302178 b!5302177)))

(assert (=> bs!1229755 (not (= lambda!269348 lambda!269347))))

(assert (=> bs!1229753 (not (= lambda!269348 lambda!269262))))

(assert (=> bs!1229750 (= (and (= (regOne!30398 lt!2165912) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165912) lt!2165957)) (= lambda!269348 lambda!269342))))

(assert (=> bs!1229753 (= (and (= (regOne!30398 lt!2165912) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 lt!2165912) lt!2165957)) (= lambda!269348 lambda!269261))))

(declare-fun bs!1229756 () Bool)

(assert (= bs!1229756 (and b!5302178 d!1704819)))

(assert (=> bs!1229756 (not (= lambda!269348 lambda!269345))))

(assert (=> bs!1229753 (not (= lambda!269348 lambda!269260))))

(declare-fun bs!1229757 () Bool)

(assert (= bs!1229757 (and b!5302178 b!5302113)))

(assert (=> bs!1229757 (= (and (= (regOne!30398 lt!2165912) (regOne!30398 lt!2165957)) (= (regTwo!30398 lt!2165912) (regTwo!30398 lt!2165957))) (= lambda!269348 lambda!269339))))

(declare-fun bs!1229758 () Bool)

(assert (= bs!1229758 (and b!5302178 d!1704833)))

(assert (=> bs!1229758 (not (= lambda!269348 lambda!269346))))

(assert (=> bs!1229752 (= (and (= (regOne!30398 lt!2165912) (regOne!30398 r!7292)) (= (regTwo!30398 lt!2165912) (regTwo!30398 r!7292))) (= lambda!269348 lambda!269258))))

(assert (=> b!5302178 true))

(assert (=> b!5302178 true))

(declare-fun d!1704843 () Bool)

(declare-fun c!920587 () Bool)

(assert (=> d!1704843 (= c!920587 ((_ is EmptyExpr!14943) lt!2165912))))

(declare-fun e!3295416 () Bool)

(assert (=> d!1704843 (= (matchRSpec!2046 lt!2165912 s!2326) e!3295416)))

(declare-fun b!5302168 () Bool)

(declare-fun res!2248772 () Bool)

(declare-fun e!3295419 () Bool)

(assert (=> b!5302168 (=> res!2248772 e!3295419)))

(declare-fun call!378027 () Bool)

(assert (=> b!5302168 (= res!2248772 call!378027)))

(declare-fun e!3295413 () Bool)

(assert (=> b!5302168 (= e!3295413 e!3295419)))

(declare-fun b!5302169 () Bool)

(declare-fun e!3295418 () Bool)

(assert (=> b!5302169 (= e!3295416 e!3295418)))

(declare-fun res!2248773 () Bool)

(assert (=> b!5302169 (= res!2248773 (not ((_ is EmptyLang!14943) lt!2165912)))))

(assert (=> b!5302169 (=> (not res!2248773) (not e!3295418))))

(declare-fun call!378028 () Bool)

(declare-fun c!920588 () Bool)

(declare-fun bm!378022 () Bool)

(assert (=> bm!378022 (= call!378028 (Exists!2124 (ite c!920588 lambda!269347 lambda!269348)))))

(declare-fun b!5302170 () Bool)

(declare-fun e!3295415 () Bool)

(assert (=> b!5302170 (= e!3295415 (matchRSpec!2046 (regTwo!30399 lt!2165912) s!2326))))

(declare-fun b!5302171 () Bool)

(declare-fun e!3295414 () Bool)

(assert (=> b!5302171 (= e!3295414 e!3295413)))

(assert (=> b!5302171 (= c!920588 ((_ is Star!14943) lt!2165912))))

(declare-fun b!5302172 () Bool)

(declare-fun e!3295417 () Bool)

(assert (=> b!5302172 (= e!3295417 (= s!2326 (Cons!61005 (c!920351 lt!2165912) Nil!61005)))))

(declare-fun b!5302173 () Bool)

(assert (=> b!5302173 (= e!3295416 call!378027)))

(declare-fun b!5302174 () Bool)

(declare-fun c!920585 () Bool)

(assert (=> b!5302174 (= c!920585 ((_ is ElementMatch!14943) lt!2165912))))

(assert (=> b!5302174 (= e!3295418 e!3295417)))

(declare-fun b!5302175 () Bool)

(declare-fun c!920586 () Bool)

(assert (=> b!5302175 (= c!920586 ((_ is Union!14943) lt!2165912))))

(assert (=> b!5302175 (= e!3295417 e!3295414)))

(declare-fun b!5302176 () Bool)

(assert (=> b!5302176 (= e!3295414 e!3295415)))

(declare-fun res!2248774 () Bool)

(assert (=> b!5302176 (= res!2248774 (matchRSpec!2046 (regOne!30399 lt!2165912) s!2326))))

(assert (=> b!5302176 (=> res!2248774 e!3295415)))

(assert (=> b!5302177 (= e!3295419 call!378028)))

(assert (=> b!5302178 (= e!3295413 call!378028)))

(declare-fun bm!378023 () Bool)

(assert (=> bm!378023 (= call!378027 (isEmpty!32971 s!2326))))

(assert (= (and d!1704843 c!920587) b!5302173))

(assert (= (and d!1704843 (not c!920587)) b!5302169))

(assert (= (and b!5302169 res!2248773) b!5302174))

(assert (= (and b!5302174 c!920585) b!5302172))

(assert (= (and b!5302174 (not c!920585)) b!5302175))

(assert (= (and b!5302175 c!920586) b!5302176))

(assert (= (and b!5302175 (not c!920586)) b!5302171))

(assert (= (and b!5302176 (not res!2248774)) b!5302170))

(assert (= (and b!5302171 c!920588) b!5302168))

(assert (= (and b!5302171 (not c!920588)) b!5302178))

(assert (= (and b!5302168 (not res!2248772)) b!5302177))

(assert (= (or b!5302177 b!5302178) bm!378022))

(assert (= (or b!5302173 b!5302168) bm!378023))

(declare-fun m!6339474 () Bool)

(assert (=> bm!378022 m!6339474))

(declare-fun m!6339476 () Bool)

(assert (=> b!5302170 m!6339476))

(declare-fun m!6339478 () Bool)

(assert (=> b!5302176 m!6339478))

(assert (=> bm!378023 m!6339336))

(assert (=> b!5301360 d!1704843))

(declare-fun d!1704845 () Bool)

(assert (=> d!1704845 (= (Exists!2124 lambda!269262) (choose!39641 lambda!269262))))

(declare-fun bs!1229759 () Bool)

(assert (= bs!1229759 d!1704845))

(declare-fun m!6339480 () Bool)

(assert (=> bs!1229759 m!6339480))

(assert (=> b!5301360 d!1704845))

(declare-fun b!5302179 () Bool)

(declare-fun e!3295425 () Bool)

(declare-fun lt!2166091 () Bool)

(assert (=> b!5302179 (= e!3295425 (not lt!2166091))))

(declare-fun b!5302180 () Bool)

(declare-fun e!3295426 () Bool)

(assert (=> b!5302180 (= e!3295426 (matchR!7128 (derivativeStep!4145 lt!2165957 (head!11366 s!2326)) (tail!10463 s!2326)))))

(declare-fun b!5302181 () Bool)

(declare-fun res!2248777 () Bool)

(declare-fun e!3295420 () Bool)

(assert (=> b!5302181 (=> res!2248777 e!3295420)))

(assert (=> b!5302181 (= res!2248777 (not ((_ is ElementMatch!14943) lt!2165957)))))

(assert (=> b!5302181 (= e!3295425 e!3295420)))

(declare-fun b!5302182 () Bool)

(declare-fun e!3295421 () Bool)

(declare-fun call!378029 () Bool)

(assert (=> b!5302182 (= e!3295421 (= lt!2166091 call!378029))))

(declare-fun b!5302183 () Bool)

(declare-fun e!3295424 () Bool)

(declare-fun e!3295422 () Bool)

(assert (=> b!5302183 (= e!3295424 e!3295422)))

(declare-fun res!2248780 () Bool)

(assert (=> b!5302183 (=> res!2248780 e!3295422)))

(assert (=> b!5302183 (= res!2248780 call!378029)))

(declare-fun b!5302184 () Bool)

(declare-fun res!2248782 () Bool)

(assert (=> b!5302184 (=> res!2248782 e!3295422)))

(assert (=> b!5302184 (= res!2248782 (not (isEmpty!32971 (tail!10463 s!2326))))))

(declare-fun d!1704847 () Bool)

(assert (=> d!1704847 e!3295421))

(declare-fun c!920591 () Bool)

(assert (=> d!1704847 (= c!920591 ((_ is EmptyExpr!14943) lt!2165957))))

(assert (=> d!1704847 (= lt!2166091 e!3295426)))

(declare-fun c!920589 () Bool)

(assert (=> d!1704847 (= c!920589 (isEmpty!32971 s!2326))))

(assert (=> d!1704847 (validRegex!6679 lt!2165957)))

(assert (=> d!1704847 (= (matchR!7128 lt!2165957 s!2326) lt!2166091)))

(declare-fun b!5302185 () Bool)

(declare-fun e!3295423 () Bool)

(assert (=> b!5302185 (= e!3295423 (= (head!11366 s!2326) (c!920351 lt!2165957)))))

(declare-fun b!5302186 () Bool)

(declare-fun res!2248779 () Bool)

(assert (=> b!5302186 (=> res!2248779 e!3295420)))

(assert (=> b!5302186 (= res!2248779 e!3295423)))

(declare-fun res!2248778 () Bool)

(assert (=> b!5302186 (=> (not res!2248778) (not e!3295423))))

(assert (=> b!5302186 (= res!2248778 lt!2166091)))

(declare-fun bm!378024 () Bool)

(assert (=> bm!378024 (= call!378029 (isEmpty!32971 s!2326))))

(declare-fun b!5302187 () Bool)

(declare-fun res!2248781 () Bool)

(assert (=> b!5302187 (=> (not res!2248781) (not e!3295423))))

(assert (=> b!5302187 (= res!2248781 (not call!378029))))

(declare-fun b!5302188 () Bool)

(assert (=> b!5302188 (= e!3295420 e!3295424)))

(declare-fun res!2248776 () Bool)

(assert (=> b!5302188 (=> (not res!2248776) (not e!3295424))))

(assert (=> b!5302188 (= res!2248776 (not lt!2166091))))

(declare-fun b!5302189 () Bool)

(assert (=> b!5302189 (= e!3295426 (nullable!5112 lt!2165957))))

(declare-fun b!5302190 () Bool)

(assert (=> b!5302190 (= e!3295422 (not (= (head!11366 s!2326) (c!920351 lt!2165957))))))

(declare-fun b!5302191 () Bool)

(assert (=> b!5302191 (= e!3295421 e!3295425)))

(declare-fun c!920590 () Bool)

(assert (=> b!5302191 (= c!920590 ((_ is EmptyLang!14943) lt!2165957))))

(declare-fun b!5302192 () Bool)

(declare-fun res!2248775 () Bool)

(assert (=> b!5302192 (=> (not res!2248775) (not e!3295423))))

(assert (=> b!5302192 (= res!2248775 (isEmpty!32971 (tail!10463 s!2326)))))

(assert (= (and d!1704847 c!920589) b!5302189))

(assert (= (and d!1704847 (not c!920589)) b!5302180))

(assert (= (and d!1704847 c!920591) b!5302182))

(assert (= (and d!1704847 (not c!920591)) b!5302191))

(assert (= (and b!5302191 c!920590) b!5302179))

(assert (= (and b!5302191 (not c!920590)) b!5302181))

(assert (= (and b!5302181 (not res!2248777)) b!5302186))

(assert (= (and b!5302186 res!2248778) b!5302187))

(assert (= (and b!5302187 res!2248781) b!5302192))

(assert (= (and b!5302192 res!2248775) b!5302185))

(assert (= (and b!5302186 (not res!2248779)) b!5302188))

(assert (= (and b!5302188 res!2248776) b!5302183))

(assert (= (and b!5302183 (not res!2248780)) b!5302184))

(assert (= (and b!5302184 (not res!2248782)) b!5302190))

(assert (= (or b!5302182 b!5302187 b!5302183) bm!378024))

(assert (=> b!5302190 m!6339330))

(assert (=> b!5302184 m!6339332))

(assert (=> b!5302184 m!6339332))

(assert (=> b!5302184 m!6339334))

(assert (=> b!5302192 m!6339332))

(assert (=> b!5302192 m!6339332))

(assert (=> b!5302192 m!6339334))

(assert (=> b!5302185 m!6339330))

(assert (=> d!1704847 m!6339336))

(assert (=> d!1704847 m!6339328))

(assert (=> b!5302180 m!6339330))

(assert (=> b!5302180 m!6339330))

(declare-fun m!6339482 () Bool)

(assert (=> b!5302180 m!6339482))

(assert (=> b!5302180 m!6339332))

(assert (=> b!5302180 m!6339482))

(assert (=> b!5302180 m!6339332))

(declare-fun m!6339484 () Bool)

(assert (=> b!5302180 m!6339484))

(assert (=> bm!378024 m!6339336))

(declare-fun m!6339486 () Bool)

(assert (=> b!5302189 m!6339486))

(assert (=> b!5301360 d!1704847))

(declare-fun d!1704849 () Bool)

(declare-fun isEmpty!32972 (Option!15054) Bool)

(assert (=> d!1704849 (= (isDefined!11757 (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 Nil!61005 s!2326 s!2326)) (not (isEmpty!32972 (findConcatSeparation!1468 (regTwo!30398 (regOne!30398 r!7292)) lt!2165938 Nil!61005 s!2326 s!2326))))))

(declare-fun bs!1229760 () Bool)

(assert (= bs!1229760 d!1704849))

(assert (=> bs!1229760 m!6338644))

(declare-fun m!6339488 () Bool)

(assert (=> bs!1229760 m!6339488))

(assert (=> b!5301360 d!1704849))

(declare-fun d!1704851 () Bool)

(declare-fun c!920592 () Bool)

(assert (=> d!1704851 (= c!920592 (isEmpty!32971 s!2326))))

(declare-fun e!3295427 () Bool)

(assert (=> d!1704851 (= (matchZipper!1187 lt!2165952 s!2326) e!3295427)))

(declare-fun b!5302193 () Bool)

(assert (=> b!5302193 (= e!3295427 (nullableZipper!1324 lt!2165952))))

(declare-fun b!5302194 () Bool)

(assert (=> b!5302194 (= e!3295427 (matchZipper!1187 (derivationStepZipper!1186 lt!2165952 (head!11366 s!2326)) (tail!10463 s!2326)))))

(assert (= (and d!1704851 c!920592) b!5302193))

(assert (= (and d!1704851 (not c!920592)) b!5302194))

(assert (=> d!1704851 m!6339336))

(declare-fun m!6339490 () Bool)

(assert (=> b!5302193 m!6339490))

(assert (=> b!5302194 m!6339330))

(assert (=> b!5302194 m!6339330))

(declare-fun m!6339492 () Bool)

(assert (=> b!5302194 m!6339492))

(assert (=> b!5302194 m!6339332))

(assert (=> b!5302194 m!6339492))

(assert (=> b!5302194 m!6339332))

(declare-fun m!6339494 () Bool)

(assert (=> b!5302194 m!6339494))

(assert (=> b!5301360 d!1704851))

(declare-fun bs!1229761 () Bool)

(declare-fun d!1704853 () Bool)

(assert (= bs!1229761 (and d!1704853 d!1704809)))

(declare-fun lambda!269349 () Int)

(assert (=> bs!1229761 (= lambda!269349 lambda!269327)))

(declare-fun bs!1229762 () Bool)

(assert (= bs!1229762 (and d!1704853 d!1704815)))

(assert (=> bs!1229762 (= lambda!269349 lambda!269340)))

(declare-fun b!5302195 () Bool)

(declare-fun e!3295430 () Bool)

(declare-fun lt!2166092 () Regex!14943)

(assert (=> b!5302195 (= e!3295430 (isEmptyExpr!859 lt!2166092))))

(declare-fun b!5302196 () Bool)

(declare-fun e!3295428 () Bool)

(assert (=> b!5302196 (= e!3295428 (= lt!2166092 (head!11367 lt!2165923)))))

(declare-fun b!5302197 () Bool)

(declare-fun e!3295432 () Regex!14943)

(assert (=> b!5302197 (= e!3295432 EmptyExpr!14943)))

(declare-fun b!5302198 () Bool)

(assert (=> b!5302198 (= e!3295430 e!3295428)))

(declare-fun c!920596 () Bool)

(assert (=> b!5302198 (= c!920596 (isEmpty!32967 (tail!10464 lt!2165923)))))

(declare-fun b!5302199 () Bool)

(declare-fun e!3295431 () Bool)

(assert (=> b!5302199 (= e!3295431 e!3295430)))

(declare-fun c!920594 () Bool)

(assert (=> b!5302199 (= c!920594 (isEmpty!32967 lt!2165923))))

(declare-fun b!5302200 () Bool)

(declare-fun e!3295433 () Bool)

(assert (=> b!5302200 (= e!3295433 (isEmpty!32967 (t!374333 lt!2165923)))))

(declare-fun b!5302201 () Bool)

(assert (=> b!5302201 (= e!3295432 (Concat!23788 (h!67452 lt!2165923) (generalisedConcat!612 (t!374333 lt!2165923))))))

(declare-fun b!5302202 () Bool)

(declare-fun e!3295429 () Regex!14943)

(assert (=> b!5302202 (= e!3295429 (h!67452 lt!2165923))))

(declare-fun b!5302203 () Bool)

(assert (=> b!5302203 (= e!3295429 e!3295432)))

(declare-fun c!920595 () Bool)

(assert (=> b!5302203 (= c!920595 ((_ is Cons!61004) lt!2165923))))

(assert (=> d!1704853 e!3295431))

(declare-fun res!2248784 () Bool)

(assert (=> d!1704853 (=> (not res!2248784) (not e!3295431))))

(assert (=> d!1704853 (= res!2248784 (validRegex!6679 lt!2166092))))

(assert (=> d!1704853 (= lt!2166092 e!3295429)))

(declare-fun c!920593 () Bool)

(assert (=> d!1704853 (= c!920593 e!3295433)))

(declare-fun res!2248783 () Bool)

(assert (=> d!1704853 (=> (not res!2248783) (not e!3295433))))

(assert (=> d!1704853 (= res!2248783 ((_ is Cons!61004) lt!2165923))))

(assert (=> d!1704853 (forall!14362 lt!2165923 lambda!269349)))

(assert (=> d!1704853 (= (generalisedConcat!612 lt!2165923) lt!2166092)))

(declare-fun b!5302204 () Bool)

(assert (=> b!5302204 (= e!3295428 (isConcat!382 lt!2166092))))

(assert (= (and d!1704853 res!2248783) b!5302200))

(assert (= (and d!1704853 c!920593) b!5302202))

(assert (= (and d!1704853 (not c!920593)) b!5302203))

(assert (= (and b!5302203 c!920595) b!5302201))

(assert (= (and b!5302203 (not c!920595)) b!5302197))

(assert (= (and d!1704853 res!2248784) b!5302199))

(assert (= (and b!5302199 c!920594) b!5302195))

(assert (= (and b!5302199 (not c!920594)) b!5302198))

(assert (= (and b!5302198 c!920596) b!5302196))

(assert (= (and b!5302198 (not c!920596)) b!5302204))

(declare-fun m!6339496 () Bool)

(assert (=> b!5302200 m!6339496))

(declare-fun m!6339498 () Bool)

(assert (=> b!5302201 m!6339498))

(declare-fun m!6339500 () Bool)

(assert (=> b!5302204 m!6339500))

(declare-fun m!6339502 () Bool)

(assert (=> b!5302195 m!6339502))

(declare-fun m!6339504 () Bool)

(assert (=> b!5302198 m!6339504))

(assert (=> b!5302198 m!6339504))

(declare-fun m!6339506 () Bool)

(assert (=> b!5302198 m!6339506))

(declare-fun m!6339508 () Bool)

(assert (=> b!5302196 m!6339508))

(declare-fun m!6339510 () Bool)

(assert (=> b!5302199 m!6339510))

(declare-fun m!6339512 () Bool)

(assert (=> d!1704853 m!6339512))

(declare-fun m!6339514 () Bool)

(assert (=> d!1704853 m!6339514))

(assert (=> b!5301360 d!1704853))

(declare-fun d!1704855 () Bool)

(assert (=> d!1704855 (= (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 Nil!61005 s!2326 s!2326)) (not (isEmpty!32972 (findConcatSeparation!1468 (regOne!30398 (regOne!30398 r!7292)) lt!2165957 Nil!61005 s!2326 s!2326))))))

(declare-fun bs!1229763 () Bool)

(assert (= bs!1229763 d!1704855))

(assert (=> bs!1229763 m!6338638))

(declare-fun m!6339516 () Bool)

(assert (=> bs!1229763 m!6339516))

(assert (=> b!5301360 d!1704855))

(declare-fun bs!1229764 () Bool)

(declare-fun d!1704857 () Bool)

(assert (= bs!1229764 (and d!1704857 d!1704809)))

(declare-fun lambda!269350 () Int)

(assert (=> bs!1229764 (= lambda!269350 lambda!269327)))

(declare-fun bs!1229765 () Bool)

(assert (= bs!1229765 (and d!1704857 d!1704815)))

(assert (=> bs!1229765 (= lambda!269350 lambda!269340)))

(declare-fun bs!1229766 () Bool)

(assert (= bs!1229766 (and d!1704857 d!1704853)))

(assert (=> bs!1229766 (= lambda!269350 lambda!269349)))

(declare-fun b!5302205 () Bool)

(declare-fun e!3295436 () Bool)

(declare-fun lt!2166093 () Regex!14943)

(assert (=> b!5302205 (= e!3295436 (isEmptyExpr!859 lt!2166093))))

(declare-fun b!5302206 () Bool)

(declare-fun e!3295434 () Bool)

(assert (=> b!5302206 (= e!3295434 (= lt!2166093 (head!11367 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302207 () Bool)

(declare-fun e!3295438 () Regex!14943)

(assert (=> b!5302207 (= e!3295438 EmptyExpr!14943)))

(declare-fun b!5302208 () Bool)

(assert (=> b!5302208 (= e!3295436 e!3295434)))

(declare-fun c!920600 () Bool)

(assert (=> b!5302208 (= c!920600 (isEmpty!32967 (tail!10464 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302209 () Bool)

(declare-fun e!3295437 () Bool)

(assert (=> b!5302209 (= e!3295437 e!3295436)))

(declare-fun c!920598 () Bool)

(assert (=> b!5302209 (= c!920598 (isEmpty!32967 (exprs!4827 (h!67454 zl!343))))))

(declare-fun b!5302210 () Bool)

(declare-fun e!3295439 () Bool)

(assert (=> b!5302210 (= e!3295439 (isEmpty!32967 (t!374333 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302211 () Bool)

(assert (=> b!5302211 (= e!3295438 (Concat!23788 (h!67452 (exprs!4827 (h!67454 zl!343))) (generalisedConcat!612 (t!374333 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5302212 () Bool)

(declare-fun e!3295435 () Regex!14943)

(assert (=> b!5302212 (= e!3295435 (h!67452 (exprs!4827 (h!67454 zl!343))))))

(declare-fun b!5302213 () Bool)

(assert (=> b!5302213 (= e!3295435 e!3295438)))

(declare-fun c!920599 () Bool)

(assert (=> b!5302213 (= c!920599 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343))))))

(assert (=> d!1704857 e!3295437))

(declare-fun res!2248786 () Bool)

(assert (=> d!1704857 (=> (not res!2248786) (not e!3295437))))

(assert (=> d!1704857 (= res!2248786 (validRegex!6679 lt!2166093))))

(assert (=> d!1704857 (= lt!2166093 e!3295435)))

(declare-fun c!920597 () Bool)

(assert (=> d!1704857 (= c!920597 e!3295439)))

(declare-fun res!2248785 () Bool)

(assert (=> d!1704857 (=> (not res!2248785) (not e!3295439))))

(assert (=> d!1704857 (= res!2248785 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343))))))

(assert (=> d!1704857 (forall!14362 (exprs!4827 (h!67454 zl!343)) lambda!269350)))

(assert (=> d!1704857 (= (generalisedConcat!612 (exprs!4827 (h!67454 zl!343))) lt!2166093)))

(declare-fun b!5302214 () Bool)

(assert (=> b!5302214 (= e!3295434 (isConcat!382 lt!2166093))))

(assert (= (and d!1704857 res!2248785) b!5302210))

(assert (= (and d!1704857 c!920597) b!5302212))

(assert (= (and d!1704857 (not c!920597)) b!5302213))

(assert (= (and b!5302213 c!920599) b!5302211))

(assert (= (and b!5302213 (not c!920599)) b!5302207))

(assert (= (and d!1704857 res!2248786) b!5302209))

(assert (= (and b!5302209 c!920598) b!5302205))

(assert (= (and b!5302209 (not c!920598)) b!5302208))

(assert (= (and b!5302208 c!920600) b!5302206))

(assert (= (and b!5302208 (not c!920600)) b!5302214))

(assert (=> b!5302210 m!6338722))

(assert (=> b!5302211 m!6338664))

(declare-fun m!6339518 () Bool)

(assert (=> b!5302214 m!6339518))

(declare-fun m!6339520 () Bool)

(assert (=> b!5302205 m!6339520))

(declare-fun m!6339522 () Bool)

(assert (=> b!5302208 m!6339522))

(assert (=> b!5302208 m!6339522))

(declare-fun m!6339524 () Bool)

(assert (=> b!5302208 m!6339524))

(declare-fun m!6339526 () Bool)

(assert (=> b!5302206 m!6339526))

(declare-fun m!6339528 () Bool)

(assert (=> b!5302209 m!6339528))

(declare-fun m!6339530 () Bool)

(assert (=> d!1704857 m!6339530))

(declare-fun m!6339532 () Bool)

(assert (=> d!1704857 m!6339532))

(assert (=> b!5301381 d!1704857))

(declare-fun d!1704859 () Bool)

(declare-fun c!920601 () Bool)

(assert (=> d!1704859 (= c!920601 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295440 () Bool)

(assert (=> d!1704859 (= (matchZipper!1187 lt!2165924 (t!374334 s!2326)) e!3295440)))

(declare-fun b!5302215 () Bool)

(assert (=> b!5302215 (= e!3295440 (nullableZipper!1324 lt!2165924))))

(declare-fun b!5302216 () Bool)

(assert (=> b!5302216 (= e!3295440 (matchZipper!1187 (derivationStepZipper!1186 lt!2165924 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704859 c!920601) b!5302215))

(assert (= (and d!1704859 (not c!920601)) b!5302216))

(assert (=> d!1704859 m!6339286))

(declare-fun m!6339534 () Bool)

(assert (=> b!5302215 m!6339534))

(assert (=> b!5302216 m!6339290))

(assert (=> b!5302216 m!6339290))

(declare-fun m!6339536 () Bool)

(assert (=> b!5302216 m!6339536))

(assert (=> b!5302216 m!6339294))

(assert (=> b!5302216 m!6339536))

(assert (=> b!5302216 m!6339294))

(declare-fun m!6339538 () Bool)

(assert (=> b!5302216 m!6339538))

(assert (=> b!5301357 d!1704859))

(declare-fun bs!1229767 () Bool)

(declare-fun d!1704861 () Bool)

(assert (= bs!1229767 (and d!1704861 d!1704809)))

(declare-fun lambda!269353 () Int)

(assert (=> bs!1229767 (= lambda!269353 lambda!269327)))

(declare-fun bs!1229768 () Bool)

(assert (= bs!1229768 (and d!1704861 d!1704815)))

(assert (=> bs!1229768 (= lambda!269353 lambda!269340)))

(declare-fun bs!1229769 () Bool)

(assert (= bs!1229769 (and d!1704861 d!1704853)))

(assert (=> bs!1229769 (= lambda!269353 lambda!269349)))

(declare-fun bs!1229770 () Bool)

(assert (= bs!1229770 (and d!1704861 d!1704857)))

(assert (=> bs!1229770 (= lambda!269353 lambda!269350)))

(assert (=> d!1704861 (= (inv!80604 setElem!34055) (forall!14362 (exprs!4827 setElem!34055) lambda!269353))))

(declare-fun bs!1229771 () Bool)

(assert (= bs!1229771 d!1704861))

(declare-fun m!6339540 () Bool)

(assert (=> bs!1229771 m!6339540))

(assert (=> setNonEmpty!34055 d!1704861))

(declare-fun d!1704863 () Bool)

(assert (=> d!1704863 (= (flatMap!670 z!1189 lambda!269259) (choose!39635 z!1189 lambda!269259))))

(declare-fun bs!1229772 () Bool)

(assert (= bs!1229772 d!1704863))

(declare-fun m!6339542 () Bool)

(assert (=> bs!1229772 m!6339542))

(assert (=> b!5301358 d!1704863))

(declare-fun d!1704865 () Bool)

(declare-fun nullableFct!1476 (Regex!14943) Bool)

(assert (=> d!1704865 (= (nullable!5112 (h!67452 (exprs!4827 (h!67454 zl!343)))) (nullableFct!1476 (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun bs!1229773 () Bool)

(assert (= bs!1229773 d!1704865))

(declare-fun m!6339544 () Bool)

(assert (=> bs!1229773 m!6339544))

(assert (=> b!5301358 d!1704865))

(declare-fun b!5302217 () Bool)

(declare-fun e!3295442 () (InoxSet Context!8654))

(declare-fun call!378030 () (InoxSet Context!8654))

(assert (=> b!5302217 (= e!3295442 call!378030)))

(declare-fun b!5302218 () Bool)

(declare-fun e!3295441 () (InoxSet Context!8654))

(assert (=> b!5302218 (= e!3295441 e!3295442)))

(declare-fun c!920603 () Bool)

(assert (=> b!5302218 (= c!920603 ((_ is Cons!61004) (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343))))))))))

(declare-fun d!1704867 () Bool)

(declare-fun c!920602 () Bool)

(declare-fun e!3295443 () Bool)

(assert (=> d!1704867 (= c!920602 e!3295443)))

(declare-fun res!2248787 () Bool)

(assert (=> d!1704867 (=> (not res!2248787) (not e!3295443))))

(assert (=> d!1704867 (= res!2248787 ((_ is Cons!61004) (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343))))))))))

(assert (=> d!1704867 (= (derivationStepZipperUp!315 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343))))) (h!67453 s!2326)) e!3295441)))

(declare-fun b!5302219 () Bool)

(assert (=> b!5302219 (= e!3295443 (nullable!5112 (h!67452 (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343)))))))))))

(declare-fun b!5302220 () Bool)

(assert (=> b!5302220 (= e!3295442 ((as const (Array Context!8654 Bool)) false))))

(declare-fun b!5302221 () Bool)

(assert (=> b!5302221 (= e!3295441 ((_ map or) call!378030 (derivationStepZipperUp!315 (Context!8655 (t!374333 (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343)))))))) (h!67453 s!2326))))))

(declare-fun bm!378025 () Bool)

(assert (=> bm!378025 (= call!378030 (derivationStepZipperDown!391 (h!67452 (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343))))))) (Context!8655 (t!374333 (exprs!4827 (Context!8655 (Cons!61004 (h!67452 (exprs!4827 (h!67454 zl!343))) (t!374333 (exprs!4827 (h!67454 zl!343)))))))) (h!67453 s!2326)))))

(assert (= (and d!1704867 res!2248787) b!5302219))

(assert (= (and d!1704867 c!920602) b!5302221))

(assert (= (and d!1704867 (not c!920602)) b!5302218))

(assert (= (and b!5302218 c!920603) b!5302217))

(assert (= (and b!5302218 (not c!920603)) b!5302220))

(assert (= (or b!5302221 b!5302217) bm!378025))

(declare-fun m!6339546 () Bool)

(assert (=> b!5302219 m!6339546))

(declare-fun m!6339548 () Bool)

(assert (=> b!5302221 m!6339548))

(declare-fun m!6339550 () Bool)

(assert (=> bm!378025 m!6339550))

(assert (=> b!5301358 d!1704867))

(declare-fun d!1704869 () Bool)

(assert (=> d!1704869 (= (flatMap!670 z!1189 lambda!269259) (dynLambda!24121 lambda!269259 (h!67454 zl!343)))))

(declare-fun lt!2166094 () Unit!153290)

(assert (=> d!1704869 (= lt!2166094 (choose!39636 z!1189 (h!67454 zl!343) lambda!269259))))

(assert (=> d!1704869 (= z!1189 (store ((as const (Array Context!8654 Bool)) false) (h!67454 zl!343) true))))

(assert (=> d!1704869 (= (lemmaFlatMapOnSingletonSet!202 z!1189 (h!67454 zl!343) lambda!269259) lt!2166094)))

(declare-fun b_lambda!204275 () Bool)

(assert (=> (not b_lambda!204275) (not d!1704869)))

(declare-fun bs!1229774 () Bool)

(assert (= bs!1229774 d!1704869))

(assert (=> bs!1229774 m!6338692))

(declare-fun m!6339552 () Bool)

(assert (=> bs!1229774 m!6339552))

(declare-fun m!6339554 () Bool)

(assert (=> bs!1229774 m!6339554))

(declare-fun m!6339556 () Bool)

(assert (=> bs!1229774 m!6339556))

(assert (=> b!5301358 d!1704869))

(declare-fun b!5302222 () Bool)

(declare-fun e!3295445 () (InoxSet Context!8654))

(declare-fun call!378031 () (InoxSet Context!8654))

(assert (=> b!5302222 (= e!3295445 call!378031)))

(declare-fun b!5302223 () Bool)

(declare-fun e!3295444 () (InoxSet Context!8654))

(assert (=> b!5302223 (= e!3295444 e!3295445)))

(declare-fun c!920605 () Bool)

(assert (=> b!5302223 (= c!920605 ((_ is Cons!61004) (exprs!4827 lt!2165920)))))

(declare-fun d!1704871 () Bool)

(declare-fun c!920604 () Bool)

(declare-fun e!3295446 () Bool)

(assert (=> d!1704871 (= c!920604 e!3295446)))

(declare-fun res!2248788 () Bool)

(assert (=> d!1704871 (=> (not res!2248788) (not e!3295446))))

(assert (=> d!1704871 (= res!2248788 ((_ is Cons!61004) (exprs!4827 lt!2165920)))))

(assert (=> d!1704871 (= (derivationStepZipperUp!315 lt!2165920 (h!67453 s!2326)) e!3295444)))

(declare-fun b!5302224 () Bool)

(assert (=> b!5302224 (= e!3295446 (nullable!5112 (h!67452 (exprs!4827 lt!2165920))))))

(declare-fun b!5302225 () Bool)

(assert (=> b!5302225 (= e!3295445 ((as const (Array Context!8654 Bool)) false))))

(declare-fun b!5302226 () Bool)

(assert (=> b!5302226 (= e!3295444 ((_ map or) call!378031 (derivationStepZipperUp!315 (Context!8655 (t!374333 (exprs!4827 lt!2165920))) (h!67453 s!2326))))))

(declare-fun bm!378026 () Bool)

(assert (=> bm!378026 (= call!378031 (derivationStepZipperDown!391 (h!67452 (exprs!4827 lt!2165920)) (Context!8655 (t!374333 (exprs!4827 lt!2165920))) (h!67453 s!2326)))))

(assert (= (and d!1704871 res!2248788) b!5302224))

(assert (= (and d!1704871 c!920604) b!5302226))

(assert (= (and d!1704871 (not c!920604)) b!5302223))

(assert (= (and b!5302223 c!920605) b!5302222))

(assert (= (and b!5302223 (not c!920605)) b!5302225))

(assert (= (or b!5302226 b!5302222) bm!378026))

(declare-fun m!6339558 () Bool)

(assert (=> b!5302224 m!6339558))

(declare-fun m!6339560 () Bool)

(assert (=> b!5302226 m!6339560))

(declare-fun m!6339562 () Bool)

(assert (=> bm!378026 m!6339562))

(assert (=> b!5301358 d!1704871))

(declare-fun b!5302227 () Bool)

(declare-fun e!3295448 () (InoxSet Context!8654))

(declare-fun call!378032 () (InoxSet Context!8654))

(assert (=> b!5302227 (= e!3295448 call!378032)))

(declare-fun b!5302228 () Bool)

(declare-fun e!3295447 () (InoxSet Context!8654))

(assert (=> b!5302228 (= e!3295447 e!3295448)))

(declare-fun c!920607 () Bool)

(assert (=> b!5302228 (= c!920607 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343))))))

(declare-fun d!1704873 () Bool)

(declare-fun c!920606 () Bool)

(declare-fun e!3295449 () Bool)

(assert (=> d!1704873 (= c!920606 e!3295449)))

(declare-fun res!2248789 () Bool)

(assert (=> d!1704873 (=> (not res!2248789) (not e!3295449))))

(assert (=> d!1704873 (= res!2248789 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343))))))

(assert (=> d!1704873 (= (derivationStepZipperUp!315 (h!67454 zl!343) (h!67453 s!2326)) e!3295447)))

(declare-fun b!5302229 () Bool)

(assert (=> b!5302229 (= e!3295449 (nullable!5112 (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun b!5302230 () Bool)

(assert (=> b!5302230 (= e!3295448 ((as const (Array Context!8654 Bool)) false))))

(declare-fun b!5302231 () Bool)

(assert (=> b!5302231 (= e!3295447 ((_ map or) call!378032 (derivationStepZipperUp!315 (Context!8655 (t!374333 (exprs!4827 (h!67454 zl!343)))) (h!67453 s!2326))))))

(declare-fun bm!378027 () Bool)

(assert (=> bm!378027 (= call!378032 (derivationStepZipperDown!391 (h!67452 (exprs!4827 (h!67454 zl!343))) (Context!8655 (t!374333 (exprs!4827 (h!67454 zl!343)))) (h!67453 s!2326)))))

(assert (= (and d!1704873 res!2248789) b!5302229))

(assert (= (and d!1704873 c!920606) b!5302231))

(assert (= (and d!1704873 (not c!920606)) b!5302228))

(assert (= (and b!5302228 c!920607) b!5302227))

(assert (= (and b!5302228 (not c!920607)) b!5302230))

(assert (= (or b!5302231 b!5302227) bm!378027))

(assert (=> b!5302229 m!6338690))

(declare-fun m!6339564 () Bool)

(assert (=> b!5302231 m!6339564))

(declare-fun m!6339566 () Bool)

(assert (=> bm!378027 m!6339566))

(assert (=> b!5301358 d!1704873))

(declare-fun bm!378040 () Bool)

(declare-fun call!378046 () (InoxSet Context!8654))

(declare-fun call!378045 () (InoxSet Context!8654))

(assert (=> bm!378040 (= call!378046 call!378045)))

(declare-fun b!5302254 () Bool)

(declare-fun e!3295467 () (InoxSet Context!8654))

(declare-fun e!3295462 () (InoxSet Context!8654))

(assert (=> b!5302254 (= e!3295467 e!3295462)))

(declare-fun c!920618 () Bool)

(assert (=> b!5302254 (= c!920618 ((_ is Union!14943) (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun c!920621 () Bool)

(declare-fun bm!378041 () Bool)

(declare-fun c!920619 () Bool)

(declare-fun call!378050 () List!61128)

(assert (=> bm!378041 (= call!378045 (derivationStepZipperDown!391 (ite c!920618 (regOne!30399 (h!67452 (exprs!4827 (h!67454 zl!343)))) (ite c!920619 (regTwo!30398 (h!67452 (exprs!4827 (h!67454 zl!343)))) (ite c!920621 (regOne!30398 (h!67452 (exprs!4827 (h!67454 zl!343)))) (reg!15272 (h!67452 (exprs!4827 (h!67454 zl!343))))))) (ite (or c!920618 c!920619) lt!2165920 (Context!8655 call!378050)) (h!67453 s!2326)))))

(declare-fun bm!378042 () Bool)

(declare-fun call!378049 () (InoxSet Context!8654))

(assert (=> bm!378042 (= call!378049 call!378046)))

(declare-fun b!5302256 () Bool)

(declare-fun e!3295465 () (InoxSet Context!8654))

(declare-fun call!378048 () (InoxSet Context!8654))

(assert (=> b!5302256 (= e!3295465 ((_ map or) call!378048 call!378046))))

(declare-fun call!378047 () List!61128)

(declare-fun bm!378043 () Bool)

(assert (=> bm!378043 (= call!378048 (derivationStepZipperDown!391 (ite c!920618 (regTwo!30399 (h!67452 (exprs!4827 (h!67454 zl!343)))) (regOne!30398 (h!67452 (exprs!4827 (h!67454 zl!343))))) (ite c!920618 lt!2165920 (Context!8655 call!378047)) (h!67453 s!2326)))))

(declare-fun b!5302257 () Bool)

(declare-fun e!3295463 () (InoxSet Context!8654))

(assert (=> b!5302257 (= e!3295463 call!378049)))

(declare-fun b!5302258 () Bool)

(declare-fun e!3295466 () Bool)

(assert (=> b!5302258 (= c!920619 e!3295466)))

(declare-fun res!2248792 () Bool)

(assert (=> b!5302258 (=> (not res!2248792) (not e!3295466))))

(assert (=> b!5302258 (= res!2248792 ((_ is Concat!23788) (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(assert (=> b!5302258 (= e!3295462 e!3295465)))

(declare-fun bm!378044 () Bool)

(declare-fun $colon$colon!1374 (List!61128 Regex!14943) List!61128)

(assert (=> bm!378044 (= call!378047 ($colon$colon!1374 (exprs!4827 lt!2165920) (ite (or c!920619 c!920621) (regTwo!30398 (h!67452 (exprs!4827 (h!67454 zl!343)))) (h!67452 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun d!1704875 () Bool)

(declare-fun c!920620 () Bool)

(assert (=> d!1704875 (= c!920620 (and ((_ is ElementMatch!14943) (h!67452 (exprs!4827 (h!67454 zl!343)))) (= (c!920351 (h!67452 (exprs!4827 (h!67454 zl!343)))) (h!67453 s!2326))))))

(assert (=> d!1704875 (= (derivationStepZipperDown!391 (h!67452 (exprs!4827 (h!67454 zl!343))) lt!2165920 (h!67453 s!2326)) e!3295467)))

(declare-fun b!5302255 () Bool)

(declare-fun c!920622 () Bool)

(assert (=> b!5302255 (= c!920622 ((_ is Star!14943) (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun e!3295464 () (InoxSet Context!8654))

(assert (=> b!5302255 (= e!3295463 e!3295464)))

(declare-fun b!5302259 () Bool)

(assert (=> b!5302259 (= e!3295465 e!3295463)))

(assert (=> b!5302259 (= c!920621 ((_ is Concat!23788) (h!67452 (exprs!4827 (h!67454 zl!343)))))))

(declare-fun bm!378045 () Bool)

(assert (=> bm!378045 (= call!378050 call!378047)))

(declare-fun b!5302260 () Bool)

(assert (=> b!5302260 (= e!3295464 call!378049)))

(declare-fun b!5302261 () Bool)

(assert (=> b!5302261 (= e!3295462 ((_ map or) call!378045 call!378048))))

(declare-fun b!5302262 () Bool)

(assert (=> b!5302262 (= e!3295467 (store ((as const (Array Context!8654 Bool)) false) lt!2165920 true))))

(declare-fun b!5302263 () Bool)

(assert (=> b!5302263 (= e!3295466 (nullable!5112 (regOne!30398 (h!67452 (exprs!4827 (h!67454 zl!343))))))))

(declare-fun b!5302264 () Bool)

(assert (=> b!5302264 (= e!3295464 ((as const (Array Context!8654 Bool)) false))))

(assert (= (and d!1704875 c!920620) b!5302262))

(assert (= (and d!1704875 (not c!920620)) b!5302254))

(assert (= (and b!5302254 c!920618) b!5302261))

(assert (= (and b!5302254 (not c!920618)) b!5302258))

(assert (= (and b!5302258 res!2248792) b!5302263))

(assert (= (and b!5302258 c!920619) b!5302256))

(assert (= (and b!5302258 (not c!920619)) b!5302259))

(assert (= (and b!5302259 c!920621) b!5302257))

(assert (= (and b!5302259 (not c!920621)) b!5302255))

(assert (= (and b!5302255 c!920622) b!5302260))

(assert (= (and b!5302255 (not c!920622)) b!5302264))

(assert (= (or b!5302257 b!5302260) bm!378045))

(assert (= (or b!5302257 b!5302260) bm!378042))

(assert (= (or b!5302256 bm!378045) bm!378044))

(assert (= (or b!5302256 bm!378042) bm!378040))

(assert (= (or b!5302261 b!5302256) bm!378043))

(assert (= (or b!5302261 bm!378040) bm!378041))

(declare-fun m!6339568 () Bool)

(assert (=> b!5302262 m!6339568))

(declare-fun m!6339570 () Bool)

(assert (=> bm!378041 m!6339570))

(declare-fun m!6339572 () Bool)

(assert (=> bm!378043 m!6339572))

(declare-fun m!6339574 () Bool)

(assert (=> b!5302263 m!6339574))

(declare-fun m!6339576 () Bool)

(assert (=> bm!378044 m!6339576))

(assert (=> b!5301358 d!1704875))

(declare-fun bs!1229775 () Bool)

(declare-fun d!1704877 () Bool)

(assert (= bs!1229775 (and d!1704877 d!1704815)))

(declare-fun lambda!269356 () Int)

(assert (=> bs!1229775 (= lambda!269356 lambda!269340)))

(declare-fun bs!1229776 () Bool)

(assert (= bs!1229776 (and d!1704877 d!1704857)))

(assert (=> bs!1229776 (= lambda!269356 lambda!269350)))

(declare-fun bs!1229777 () Bool)

(assert (= bs!1229777 (and d!1704877 d!1704861)))

(assert (=> bs!1229777 (= lambda!269356 lambda!269353)))

(declare-fun bs!1229778 () Bool)

(assert (= bs!1229778 (and d!1704877 d!1704809)))

(assert (=> bs!1229778 (= lambda!269356 lambda!269327)))

(declare-fun bs!1229779 () Bool)

(assert (= bs!1229779 (and d!1704877 d!1704853)))

(assert (=> bs!1229779 (= lambda!269356 lambda!269349)))

(declare-fun b!5302285 () Bool)

(declare-fun e!3295481 () Bool)

(declare-fun lt!2166097 () Regex!14943)

(declare-fun isEmptyLang!867 (Regex!14943) Bool)

(assert (=> b!5302285 (= e!3295481 (isEmptyLang!867 lt!2166097))))

(declare-fun b!5302286 () Bool)

(declare-fun e!3295482 () Bool)

(assert (=> b!5302286 (= e!3295482 (isEmpty!32967 (t!374333 (unfocusZipperList!385 zl!343))))))

(declare-fun b!5302287 () Bool)

(declare-fun e!3295480 () Regex!14943)

(assert (=> b!5302287 (= e!3295480 (Union!14943 (h!67452 (unfocusZipperList!385 zl!343)) (generalisedUnion!872 (t!374333 (unfocusZipperList!385 zl!343)))))))

(declare-fun b!5302288 () Bool)

(declare-fun e!3295484 () Regex!14943)

(assert (=> b!5302288 (= e!3295484 (h!67452 (unfocusZipperList!385 zl!343)))))

(declare-fun b!5302289 () Bool)

(declare-fun e!3295483 () Bool)

(assert (=> b!5302289 (= e!3295483 e!3295481)))

(declare-fun c!920631 () Bool)

(assert (=> b!5302289 (= c!920631 (isEmpty!32967 (unfocusZipperList!385 zl!343)))))

(declare-fun b!5302291 () Bool)

(assert (=> b!5302291 (= e!3295484 e!3295480)))

(declare-fun c!920633 () Bool)

(assert (=> b!5302291 (= c!920633 ((_ is Cons!61004) (unfocusZipperList!385 zl!343)))))

(declare-fun b!5302292 () Bool)

(declare-fun e!3295485 () Bool)

(assert (=> b!5302292 (= e!3295481 e!3295485)))

(declare-fun c!920634 () Bool)

(assert (=> b!5302292 (= c!920634 (isEmpty!32967 (tail!10464 (unfocusZipperList!385 zl!343))))))

(declare-fun b!5302290 () Bool)

(assert (=> b!5302290 (= e!3295485 (= lt!2166097 (head!11367 (unfocusZipperList!385 zl!343))))))

(assert (=> d!1704877 e!3295483))

(declare-fun res!2248797 () Bool)

(assert (=> d!1704877 (=> (not res!2248797) (not e!3295483))))

(assert (=> d!1704877 (= res!2248797 (validRegex!6679 lt!2166097))))

(assert (=> d!1704877 (= lt!2166097 e!3295484)))

(declare-fun c!920632 () Bool)

(assert (=> d!1704877 (= c!920632 e!3295482)))

(declare-fun res!2248798 () Bool)

(assert (=> d!1704877 (=> (not res!2248798) (not e!3295482))))

(assert (=> d!1704877 (= res!2248798 ((_ is Cons!61004) (unfocusZipperList!385 zl!343)))))

(assert (=> d!1704877 (forall!14362 (unfocusZipperList!385 zl!343) lambda!269356)))

(assert (=> d!1704877 (= (generalisedUnion!872 (unfocusZipperList!385 zl!343)) lt!2166097)))

(declare-fun b!5302293 () Bool)

(assert (=> b!5302293 (= e!3295480 EmptyLang!14943)))

(declare-fun b!5302294 () Bool)

(declare-fun isUnion!299 (Regex!14943) Bool)

(assert (=> b!5302294 (= e!3295485 (isUnion!299 lt!2166097))))

(assert (= (and d!1704877 res!2248798) b!5302286))

(assert (= (and d!1704877 c!920632) b!5302288))

(assert (= (and d!1704877 (not c!920632)) b!5302291))

(assert (= (and b!5302291 c!920633) b!5302287))

(assert (= (and b!5302291 (not c!920633)) b!5302293))

(assert (= (and d!1704877 res!2248797) b!5302289))

(assert (= (and b!5302289 c!920631) b!5302285))

(assert (= (and b!5302289 (not c!920631)) b!5302292))

(assert (= (and b!5302292 c!920634) b!5302290))

(assert (= (and b!5302292 (not c!920634)) b!5302294))

(declare-fun m!6339578 () Bool)

(assert (=> d!1704877 m!6339578))

(assert (=> d!1704877 m!6338724))

(declare-fun m!6339580 () Bool)

(assert (=> d!1704877 m!6339580))

(declare-fun m!6339582 () Bool)

(assert (=> b!5302286 m!6339582))

(assert (=> b!5302289 m!6338724))

(declare-fun m!6339584 () Bool)

(assert (=> b!5302289 m!6339584))

(declare-fun m!6339586 () Bool)

(assert (=> b!5302285 m!6339586))

(assert (=> b!5302292 m!6338724))

(declare-fun m!6339588 () Bool)

(assert (=> b!5302292 m!6339588))

(assert (=> b!5302292 m!6339588))

(declare-fun m!6339590 () Bool)

(assert (=> b!5302292 m!6339590))

(declare-fun m!6339592 () Bool)

(assert (=> b!5302287 m!6339592))

(assert (=> b!5302290 m!6338724))

(declare-fun m!6339594 () Bool)

(assert (=> b!5302290 m!6339594))

(declare-fun m!6339596 () Bool)

(assert (=> b!5302294 m!6339596))

(assert (=> b!5301379 d!1704877))

(declare-fun bs!1229780 () Bool)

(declare-fun d!1704879 () Bool)

(assert (= bs!1229780 (and d!1704879 d!1704815)))

(declare-fun lambda!269359 () Int)

(assert (=> bs!1229780 (= lambda!269359 lambda!269340)))

(declare-fun bs!1229781 () Bool)

(assert (= bs!1229781 (and d!1704879 d!1704857)))

(assert (=> bs!1229781 (= lambda!269359 lambda!269350)))

(declare-fun bs!1229782 () Bool)

(assert (= bs!1229782 (and d!1704879 d!1704861)))

(assert (=> bs!1229782 (= lambda!269359 lambda!269353)))

(declare-fun bs!1229783 () Bool)

(assert (= bs!1229783 (and d!1704879 d!1704809)))

(assert (=> bs!1229783 (= lambda!269359 lambda!269327)))

(declare-fun bs!1229784 () Bool)

(assert (= bs!1229784 (and d!1704879 d!1704877)))

(assert (=> bs!1229784 (= lambda!269359 lambda!269356)))

(declare-fun bs!1229785 () Bool)

(assert (= bs!1229785 (and d!1704879 d!1704853)))

(assert (=> bs!1229785 (= lambda!269359 lambda!269349)))

(declare-fun lt!2166100 () List!61128)

(assert (=> d!1704879 (forall!14362 lt!2166100 lambda!269359)))

(declare-fun e!3295488 () List!61128)

(assert (=> d!1704879 (= lt!2166100 e!3295488)))

(declare-fun c!920637 () Bool)

(assert (=> d!1704879 (= c!920637 ((_ is Cons!61006) zl!343))))

(assert (=> d!1704879 (= (unfocusZipperList!385 zl!343) lt!2166100)))

(declare-fun b!5302299 () Bool)

(assert (=> b!5302299 (= e!3295488 (Cons!61004 (generalisedConcat!612 (exprs!4827 (h!67454 zl!343))) (unfocusZipperList!385 (t!374335 zl!343))))))

(declare-fun b!5302300 () Bool)

(assert (=> b!5302300 (= e!3295488 Nil!61004)))

(assert (= (and d!1704879 c!920637) b!5302299))

(assert (= (and d!1704879 (not c!920637)) b!5302300))

(declare-fun m!6339598 () Bool)

(assert (=> d!1704879 m!6339598))

(assert (=> b!5302299 m!6338604))

(declare-fun m!6339600 () Bool)

(assert (=> b!5302299 m!6339600))

(assert (=> b!5301379 d!1704879))

(declare-fun b!5302309 () Bool)

(declare-fun e!3295494 () List!61129)

(assert (=> b!5302309 (= e!3295494 s!2326)))

(declare-fun b!5302312 () Bool)

(declare-fun e!3295493 () Bool)

(declare-fun lt!2166103 () List!61129)

(assert (=> b!5302312 (= e!3295493 (or (not (= s!2326 Nil!61005)) (= lt!2166103 Nil!61005)))))

(declare-fun b!5302310 () Bool)

(assert (=> b!5302310 (= e!3295494 (Cons!61005 (h!67453 Nil!61005) (++!13304 (t!374334 Nil!61005) s!2326)))))

(declare-fun d!1704881 () Bool)

(assert (=> d!1704881 e!3295493))

(declare-fun res!2248803 () Bool)

(assert (=> d!1704881 (=> (not res!2248803) (not e!3295493))))

(declare-fun content!10868 (List!61129) (InoxSet C!30156))

(assert (=> d!1704881 (= res!2248803 (= (content!10868 lt!2166103) ((_ map or) (content!10868 Nil!61005) (content!10868 s!2326))))))

(assert (=> d!1704881 (= lt!2166103 e!3295494)))

(declare-fun c!920640 () Bool)

(assert (=> d!1704881 (= c!920640 ((_ is Nil!61005) Nil!61005))))

(assert (=> d!1704881 (= (++!13304 Nil!61005 s!2326) lt!2166103)))

(declare-fun b!5302311 () Bool)

(declare-fun res!2248804 () Bool)

(assert (=> b!5302311 (=> (not res!2248804) (not e!3295493))))

(declare-fun size!39759 (List!61129) Int)

(assert (=> b!5302311 (= res!2248804 (= (size!39759 lt!2166103) (+ (size!39759 Nil!61005) (size!39759 s!2326))))))

(assert (= (and d!1704881 c!920640) b!5302309))

(assert (= (and d!1704881 (not c!920640)) b!5302310))

(assert (= (and d!1704881 res!2248803) b!5302311))

(assert (= (and b!5302311 res!2248804) b!5302312))

(declare-fun m!6339602 () Bool)

(assert (=> b!5302310 m!6339602))

(declare-fun m!6339604 () Bool)

(assert (=> d!1704881 m!6339604))

(declare-fun m!6339606 () Bool)

(assert (=> d!1704881 m!6339606))

(declare-fun m!6339608 () Bool)

(assert (=> d!1704881 m!6339608))

(declare-fun m!6339610 () Bool)

(assert (=> b!5302311 m!6339610))

(declare-fun m!6339612 () Bool)

(assert (=> b!5302311 m!6339612))

(declare-fun m!6339614 () Bool)

(assert (=> b!5302311 m!6339614))

(assert (=> b!5301395 d!1704881))

(declare-fun d!1704883 () Bool)

(declare-fun c!920641 () Bool)

(assert (=> d!1704883 (= c!920641 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295495 () Bool)

(assert (=> d!1704883 (= (matchZipper!1187 lt!2165948 (t!374334 s!2326)) e!3295495)))

(declare-fun b!5302313 () Bool)

(assert (=> b!5302313 (= e!3295495 (nullableZipper!1324 lt!2165948))))

(declare-fun b!5302314 () Bool)

(assert (=> b!5302314 (= e!3295495 (matchZipper!1187 (derivationStepZipper!1186 lt!2165948 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704883 c!920641) b!5302313))

(assert (= (and d!1704883 (not c!920641)) b!5302314))

(assert (=> d!1704883 m!6339286))

(declare-fun m!6339616 () Bool)

(assert (=> b!5302313 m!6339616))

(assert (=> b!5302314 m!6339290))

(assert (=> b!5302314 m!6339290))

(declare-fun m!6339618 () Bool)

(assert (=> b!5302314 m!6339618))

(assert (=> b!5302314 m!6339294))

(assert (=> b!5302314 m!6339618))

(assert (=> b!5302314 m!6339294))

(declare-fun m!6339620 () Bool)

(assert (=> b!5302314 m!6339620))

(assert (=> b!5301377 d!1704883))

(declare-fun bs!1229786 () Bool)

(declare-fun d!1704885 () Bool)

(assert (= bs!1229786 (and d!1704885 d!1704815)))

(declare-fun lambda!269360 () Int)

(assert (=> bs!1229786 (= lambda!269360 lambda!269340)))

(declare-fun bs!1229787 () Bool)

(assert (= bs!1229787 (and d!1704885 d!1704857)))

(assert (=> bs!1229787 (= lambda!269360 lambda!269350)))

(declare-fun bs!1229788 () Bool)

(assert (= bs!1229788 (and d!1704885 d!1704861)))

(assert (=> bs!1229788 (= lambda!269360 lambda!269353)))

(declare-fun bs!1229789 () Bool)

(assert (= bs!1229789 (and d!1704885 d!1704809)))

(assert (=> bs!1229789 (= lambda!269360 lambda!269327)))

(declare-fun bs!1229790 () Bool)

(assert (= bs!1229790 (and d!1704885 d!1704879)))

(assert (=> bs!1229790 (= lambda!269360 lambda!269359)))

(declare-fun bs!1229791 () Bool)

(assert (= bs!1229791 (and d!1704885 d!1704877)))

(assert (=> bs!1229791 (= lambda!269360 lambda!269356)))

(declare-fun bs!1229792 () Bool)

(assert (= bs!1229792 (and d!1704885 d!1704853)))

(assert (=> bs!1229792 (= lambda!269360 lambda!269349)))

(assert (=> d!1704885 (= (inv!80604 (h!67454 zl!343)) (forall!14362 (exprs!4827 (h!67454 zl!343)) lambda!269360))))

(declare-fun bs!1229793 () Bool)

(assert (= bs!1229793 d!1704885))

(declare-fun m!6339622 () Bool)

(assert (=> bs!1229793 m!6339622))

(assert (=> b!5301373 d!1704885))

(declare-fun d!1704887 () Bool)

(declare-fun lt!2166106 () Int)

(assert (=> d!1704887 (>= lt!2166106 0)))

(declare-fun e!3295498 () Int)

(assert (=> d!1704887 (= lt!2166106 e!3295498)))

(declare-fun c!920644 () Bool)

(assert (=> d!1704887 (= c!920644 ((_ is Cons!61006) lt!2165914))))

(assert (=> d!1704887 (= (zipperDepthTotal!104 lt!2165914) lt!2166106)))

(declare-fun b!5302319 () Bool)

(assert (=> b!5302319 (= e!3295498 (+ (contextDepthTotal!84 (h!67454 lt!2165914)) (zipperDepthTotal!104 (t!374335 lt!2165914))))))

(declare-fun b!5302320 () Bool)

(assert (=> b!5302320 (= e!3295498 0)))

(assert (= (and d!1704887 c!920644) b!5302319))

(assert (= (and d!1704887 (not c!920644)) b!5302320))

(declare-fun m!6339624 () Bool)

(assert (=> b!5302319 m!6339624))

(declare-fun m!6339626 () Bool)

(assert (=> b!5302319 m!6339626))

(assert (=> b!5301392 d!1704887))

(declare-fun d!1704889 () Bool)

(declare-fun lt!2166107 () Int)

(assert (=> d!1704889 (>= lt!2166107 0)))

(declare-fun e!3295499 () Int)

(assert (=> d!1704889 (= lt!2166107 e!3295499)))

(declare-fun c!920645 () Bool)

(assert (=> d!1704889 (= c!920645 ((_ is Cons!61006) zl!343))))

(assert (=> d!1704889 (= (zipperDepthTotal!104 zl!343) lt!2166107)))

(declare-fun b!5302321 () Bool)

(assert (=> b!5302321 (= e!3295499 (+ (contextDepthTotal!84 (h!67454 zl!343)) (zipperDepthTotal!104 (t!374335 zl!343))))))

(declare-fun b!5302322 () Bool)

(assert (=> b!5302322 (= e!3295499 0)))

(assert (= (and d!1704889 c!920645) b!5302321))

(assert (= (and d!1704889 (not c!920645)) b!5302322))

(assert (=> b!5302321 m!6338762))

(declare-fun m!6339628 () Bool)

(assert (=> b!5302321 m!6339628))

(assert (=> b!5301392 d!1704889))

(declare-fun bm!378046 () Bool)

(declare-fun call!378052 () (InoxSet Context!8654))

(declare-fun call!378051 () (InoxSet Context!8654))

(assert (=> bm!378046 (= call!378052 call!378051)))

(declare-fun b!5302323 () Bool)

(declare-fun e!3295505 () (InoxSet Context!8654))

(declare-fun e!3295500 () (InoxSet Context!8654))

(assert (=> b!5302323 (= e!3295505 e!3295500)))

(declare-fun c!920646 () Bool)

(assert (=> b!5302323 (= c!920646 ((_ is Union!14943) (regTwo!30398 (regOne!30398 r!7292))))))

(declare-fun bm!378047 () Bool)

(declare-fun c!920649 () Bool)

(declare-fun call!378056 () List!61128)

(declare-fun c!920647 () Bool)

(assert (=> bm!378047 (= call!378051 (derivationStepZipperDown!391 (ite c!920646 (regOne!30399 (regTwo!30398 (regOne!30398 r!7292))) (ite c!920647 (regTwo!30398 (regTwo!30398 (regOne!30398 r!7292))) (ite c!920649 (regOne!30398 (regTwo!30398 (regOne!30398 r!7292))) (reg!15272 (regTwo!30398 (regOne!30398 r!7292)))))) (ite (or c!920646 c!920647) lt!2165920 (Context!8655 call!378056)) (h!67453 s!2326)))))

(declare-fun bm!378048 () Bool)

(declare-fun call!378055 () (InoxSet Context!8654))

(assert (=> bm!378048 (= call!378055 call!378052)))

(declare-fun b!5302325 () Bool)

(declare-fun e!3295503 () (InoxSet Context!8654))

(declare-fun call!378054 () (InoxSet Context!8654))

(assert (=> b!5302325 (= e!3295503 ((_ map or) call!378054 call!378052))))

(declare-fun bm!378049 () Bool)

(declare-fun call!378053 () List!61128)

(assert (=> bm!378049 (= call!378054 (derivationStepZipperDown!391 (ite c!920646 (regTwo!30399 (regTwo!30398 (regOne!30398 r!7292))) (regOne!30398 (regTwo!30398 (regOne!30398 r!7292)))) (ite c!920646 lt!2165920 (Context!8655 call!378053)) (h!67453 s!2326)))))

(declare-fun b!5302326 () Bool)

(declare-fun e!3295501 () (InoxSet Context!8654))

(assert (=> b!5302326 (= e!3295501 call!378055)))

(declare-fun b!5302327 () Bool)

(declare-fun e!3295504 () Bool)

(assert (=> b!5302327 (= c!920647 e!3295504)))

(declare-fun res!2248805 () Bool)

(assert (=> b!5302327 (=> (not res!2248805) (not e!3295504))))

(assert (=> b!5302327 (= res!2248805 ((_ is Concat!23788) (regTwo!30398 (regOne!30398 r!7292))))))

(assert (=> b!5302327 (= e!3295500 e!3295503)))

(declare-fun bm!378050 () Bool)

(assert (=> bm!378050 (= call!378053 ($colon$colon!1374 (exprs!4827 lt!2165920) (ite (or c!920647 c!920649) (regTwo!30398 (regTwo!30398 (regOne!30398 r!7292))) (regTwo!30398 (regOne!30398 r!7292)))))))

(declare-fun d!1704891 () Bool)

(declare-fun c!920648 () Bool)

(assert (=> d!1704891 (= c!920648 (and ((_ is ElementMatch!14943) (regTwo!30398 (regOne!30398 r!7292))) (= (c!920351 (regTwo!30398 (regOne!30398 r!7292))) (h!67453 s!2326))))))

(assert (=> d!1704891 (= (derivationStepZipperDown!391 (regTwo!30398 (regOne!30398 r!7292)) lt!2165920 (h!67453 s!2326)) e!3295505)))

(declare-fun b!5302324 () Bool)

(declare-fun c!920650 () Bool)

(assert (=> b!5302324 (= c!920650 ((_ is Star!14943) (regTwo!30398 (regOne!30398 r!7292))))))

(declare-fun e!3295502 () (InoxSet Context!8654))

(assert (=> b!5302324 (= e!3295501 e!3295502)))

(declare-fun b!5302328 () Bool)

(assert (=> b!5302328 (= e!3295503 e!3295501)))

(assert (=> b!5302328 (= c!920649 ((_ is Concat!23788) (regTwo!30398 (regOne!30398 r!7292))))))

(declare-fun bm!378051 () Bool)

(assert (=> bm!378051 (= call!378056 call!378053)))

(declare-fun b!5302329 () Bool)

(assert (=> b!5302329 (= e!3295502 call!378055)))

(declare-fun b!5302330 () Bool)

(assert (=> b!5302330 (= e!3295500 ((_ map or) call!378051 call!378054))))

(declare-fun b!5302331 () Bool)

(assert (=> b!5302331 (= e!3295505 (store ((as const (Array Context!8654 Bool)) false) lt!2165920 true))))

(declare-fun b!5302332 () Bool)

(assert (=> b!5302332 (= e!3295504 (nullable!5112 (regOne!30398 (regTwo!30398 (regOne!30398 r!7292)))))))

(declare-fun b!5302333 () Bool)

(assert (=> b!5302333 (= e!3295502 ((as const (Array Context!8654 Bool)) false))))

(assert (= (and d!1704891 c!920648) b!5302331))

(assert (= (and d!1704891 (not c!920648)) b!5302323))

(assert (= (and b!5302323 c!920646) b!5302330))

(assert (= (and b!5302323 (not c!920646)) b!5302327))

(assert (= (and b!5302327 res!2248805) b!5302332))

(assert (= (and b!5302327 c!920647) b!5302325))

(assert (= (and b!5302327 (not c!920647)) b!5302328))

(assert (= (and b!5302328 c!920649) b!5302326))

(assert (= (and b!5302328 (not c!920649)) b!5302324))

(assert (= (and b!5302324 c!920650) b!5302329))

(assert (= (and b!5302324 (not c!920650)) b!5302333))

(assert (= (or b!5302326 b!5302329) bm!378051))

(assert (= (or b!5302326 b!5302329) bm!378048))

(assert (= (or b!5302325 bm!378051) bm!378050))

(assert (= (or b!5302325 bm!378048) bm!378046))

(assert (= (or b!5302330 b!5302325) bm!378049))

(assert (= (or b!5302330 bm!378046) bm!378047))

(assert (=> b!5302331 m!6339568))

(declare-fun m!6339630 () Bool)

(assert (=> bm!378047 m!6339630))

(declare-fun m!6339632 () Bool)

(assert (=> bm!378049 m!6339632))

(declare-fun m!6339634 () Bool)

(assert (=> b!5302332 m!6339634))

(declare-fun m!6339636 () Bool)

(assert (=> bm!378050 m!6339636))

(assert (=> b!5301393 d!1704891))

(declare-fun bm!378052 () Bool)

(declare-fun call!378058 () (InoxSet Context!8654))

(declare-fun call!378057 () (InoxSet Context!8654))

(assert (=> bm!378052 (= call!378058 call!378057)))

(declare-fun b!5302334 () Bool)

(declare-fun e!3295511 () (InoxSet Context!8654))

(declare-fun e!3295506 () (InoxSet Context!8654))

(assert (=> b!5302334 (= e!3295511 e!3295506)))

(declare-fun c!920651 () Bool)

(assert (=> b!5302334 (= c!920651 ((_ is Union!14943) (regOne!30398 (regOne!30398 r!7292))))))

(declare-fun bm!378053 () Bool)

(declare-fun c!920652 () Bool)

(declare-fun call!378062 () List!61128)

(declare-fun c!920654 () Bool)

(assert (=> bm!378053 (= call!378057 (derivationStepZipperDown!391 (ite c!920651 (regOne!30399 (regOne!30398 (regOne!30398 r!7292))) (ite c!920652 (regTwo!30398 (regOne!30398 (regOne!30398 r!7292))) (ite c!920654 (regOne!30398 (regOne!30398 (regOne!30398 r!7292))) (reg!15272 (regOne!30398 (regOne!30398 r!7292)))))) (ite (or c!920651 c!920652) lt!2165925 (Context!8655 call!378062)) (h!67453 s!2326)))))

(declare-fun bm!378054 () Bool)

(declare-fun call!378061 () (InoxSet Context!8654))

(assert (=> bm!378054 (= call!378061 call!378058)))

(declare-fun b!5302336 () Bool)

(declare-fun e!3295509 () (InoxSet Context!8654))

(declare-fun call!378060 () (InoxSet Context!8654))

(assert (=> b!5302336 (= e!3295509 ((_ map or) call!378060 call!378058))))

(declare-fun call!378059 () List!61128)

(declare-fun bm!378055 () Bool)

(assert (=> bm!378055 (= call!378060 (derivationStepZipperDown!391 (ite c!920651 (regTwo!30399 (regOne!30398 (regOne!30398 r!7292))) (regOne!30398 (regOne!30398 (regOne!30398 r!7292)))) (ite c!920651 lt!2165925 (Context!8655 call!378059)) (h!67453 s!2326)))))

(declare-fun b!5302337 () Bool)

(declare-fun e!3295507 () (InoxSet Context!8654))

(assert (=> b!5302337 (= e!3295507 call!378061)))

(declare-fun b!5302338 () Bool)

(declare-fun e!3295510 () Bool)

(assert (=> b!5302338 (= c!920652 e!3295510)))

(declare-fun res!2248806 () Bool)

(assert (=> b!5302338 (=> (not res!2248806) (not e!3295510))))

(assert (=> b!5302338 (= res!2248806 ((_ is Concat!23788) (regOne!30398 (regOne!30398 r!7292))))))

(assert (=> b!5302338 (= e!3295506 e!3295509)))

(declare-fun bm!378056 () Bool)

(assert (=> bm!378056 (= call!378059 ($colon$colon!1374 (exprs!4827 lt!2165925) (ite (or c!920652 c!920654) (regTwo!30398 (regOne!30398 (regOne!30398 r!7292))) (regOne!30398 (regOne!30398 r!7292)))))))

(declare-fun d!1704893 () Bool)

(declare-fun c!920653 () Bool)

(assert (=> d!1704893 (= c!920653 (and ((_ is ElementMatch!14943) (regOne!30398 (regOne!30398 r!7292))) (= (c!920351 (regOne!30398 (regOne!30398 r!7292))) (h!67453 s!2326))))))

(assert (=> d!1704893 (= (derivationStepZipperDown!391 (regOne!30398 (regOne!30398 r!7292)) lt!2165925 (h!67453 s!2326)) e!3295511)))

(declare-fun b!5302335 () Bool)

(declare-fun c!920655 () Bool)

(assert (=> b!5302335 (= c!920655 ((_ is Star!14943) (regOne!30398 (regOne!30398 r!7292))))))

(declare-fun e!3295508 () (InoxSet Context!8654))

(assert (=> b!5302335 (= e!3295507 e!3295508)))

(declare-fun b!5302339 () Bool)

(assert (=> b!5302339 (= e!3295509 e!3295507)))

(assert (=> b!5302339 (= c!920654 ((_ is Concat!23788) (regOne!30398 (regOne!30398 r!7292))))))

(declare-fun bm!378057 () Bool)

(assert (=> bm!378057 (= call!378062 call!378059)))

(declare-fun b!5302340 () Bool)

(assert (=> b!5302340 (= e!3295508 call!378061)))

(declare-fun b!5302341 () Bool)

(assert (=> b!5302341 (= e!3295506 ((_ map or) call!378057 call!378060))))

(declare-fun b!5302342 () Bool)

(assert (=> b!5302342 (= e!3295511 (store ((as const (Array Context!8654 Bool)) false) lt!2165925 true))))

(declare-fun b!5302343 () Bool)

(assert (=> b!5302343 (= e!3295510 (nullable!5112 (regOne!30398 (regOne!30398 (regOne!30398 r!7292)))))))

(declare-fun b!5302344 () Bool)

(assert (=> b!5302344 (= e!3295508 ((as const (Array Context!8654 Bool)) false))))

(assert (= (and d!1704893 c!920653) b!5302342))

(assert (= (and d!1704893 (not c!920653)) b!5302334))

(assert (= (and b!5302334 c!920651) b!5302341))

(assert (= (and b!5302334 (not c!920651)) b!5302338))

(assert (= (and b!5302338 res!2248806) b!5302343))

(assert (= (and b!5302338 c!920652) b!5302336))

(assert (= (and b!5302338 (not c!920652)) b!5302339))

(assert (= (and b!5302339 c!920654) b!5302337))

(assert (= (and b!5302339 (not c!920654)) b!5302335))

(assert (= (and b!5302335 c!920655) b!5302340))

(assert (= (and b!5302335 (not c!920655)) b!5302344))

(assert (= (or b!5302337 b!5302340) bm!378057))

(assert (= (or b!5302337 b!5302340) bm!378054))

(assert (= (or b!5302336 bm!378057) bm!378056))

(assert (= (or b!5302336 bm!378054) bm!378052))

(assert (= (or b!5302341 b!5302336) bm!378055))

(assert (= (or b!5302341 bm!378052) bm!378053))

(assert (=> b!5302342 m!6338744))

(declare-fun m!6339638 () Bool)

(assert (=> bm!378053 m!6339638))

(declare-fun m!6339640 () Bool)

(assert (=> bm!378055 m!6339640))

(declare-fun m!6339642 () Bool)

(assert (=> b!5302343 m!6339642))

(declare-fun m!6339644 () Bool)

(assert (=> bm!378056 m!6339644))

(assert (=> b!5301393 d!1704893))

(declare-fun b!5302363 () Bool)

(declare-fun e!3295527 () Bool)

(declare-fun e!3295532 () Bool)

(assert (=> b!5302363 (= e!3295527 e!3295532)))

(declare-fun c!920661 () Bool)

(assert (=> b!5302363 (= c!920661 ((_ is Union!14943) r!7292))))

(declare-fun b!5302364 () Bool)

(declare-fun e!3295530 () Bool)

(assert (=> b!5302364 (= e!3295530 e!3295527)))

(declare-fun c!920660 () Bool)

(assert (=> b!5302364 (= c!920660 ((_ is Star!14943) r!7292))))

(declare-fun b!5302365 () Bool)

(declare-fun res!2248820 () Bool)

(declare-fun e!3295531 () Bool)

(assert (=> b!5302365 (=> (not res!2248820) (not e!3295531))))

(declare-fun call!378069 () Bool)

(assert (=> b!5302365 (= res!2248820 call!378069)))

(assert (=> b!5302365 (= e!3295532 e!3295531)))

(declare-fun bm!378064 () Bool)

(declare-fun call!378071 () Bool)

(assert (=> bm!378064 (= call!378071 (validRegex!6679 (ite c!920661 (regTwo!30399 r!7292) (regTwo!30398 r!7292))))))

(declare-fun b!5302366 () Bool)

(declare-fun e!3295526 () Bool)

(assert (=> b!5302366 (= e!3295526 call!378071)))

(declare-fun bm!378065 () Bool)

(declare-fun call!378070 () Bool)

(assert (=> bm!378065 (= call!378069 call!378070)))

(declare-fun b!5302367 () Bool)

(declare-fun res!2248818 () Bool)

(declare-fun e!3295528 () Bool)

(assert (=> b!5302367 (=> res!2248818 e!3295528)))

(assert (=> b!5302367 (= res!2248818 (not ((_ is Concat!23788) r!7292)))))

(assert (=> b!5302367 (= e!3295532 e!3295528)))

(declare-fun bm!378066 () Bool)

(assert (=> bm!378066 (= call!378070 (validRegex!6679 (ite c!920660 (reg!15272 r!7292) (ite c!920661 (regOne!30399 r!7292) (regOne!30398 r!7292)))))))

(declare-fun d!1704895 () Bool)

(declare-fun res!2248819 () Bool)

(assert (=> d!1704895 (=> res!2248819 e!3295530)))

(assert (=> d!1704895 (= res!2248819 ((_ is ElementMatch!14943) r!7292))))

(assert (=> d!1704895 (= (validRegex!6679 r!7292) e!3295530)))

(declare-fun b!5302368 () Bool)

(assert (=> b!5302368 (= e!3295531 call!378071)))

(declare-fun b!5302369 () Bool)

(declare-fun e!3295529 () Bool)

(assert (=> b!5302369 (= e!3295527 e!3295529)))

(declare-fun res!2248817 () Bool)

(assert (=> b!5302369 (= res!2248817 (not (nullable!5112 (reg!15272 r!7292))))))

(assert (=> b!5302369 (=> (not res!2248817) (not e!3295529))))

(declare-fun b!5302370 () Bool)

(assert (=> b!5302370 (= e!3295529 call!378070)))

(declare-fun b!5302371 () Bool)

(assert (=> b!5302371 (= e!3295528 e!3295526)))

(declare-fun res!2248821 () Bool)

(assert (=> b!5302371 (=> (not res!2248821) (not e!3295526))))

(assert (=> b!5302371 (= res!2248821 call!378069)))

(assert (= (and d!1704895 (not res!2248819)) b!5302364))

(assert (= (and b!5302364 c!920660) b!5302369))

(assert (= (and b!5302364 (not c!920660)) b!5302363))

(assert (= (and b!5302369 res!2248817) b!5302370))

(assert (= (and b!5302363 c!920661) b!5302365))

(assert (= (and b!5302363 (not c!920661)) b!5302367))

(assert (= (and b!5302365 res!2248820) b!5302368))

(assert (= (and b!5302367 (not res!2248818)) b!5302371))

(assert (= (and b!5302371 res!2248821) b!5302366))

(assert (= (or b!5302368 b!5302366) bm!378064))

(assert (= (or b!5302365 b!5302371) bm!378065))

(assert (= (or b!5302370 bm!378065) bm!378066))

(declare-fun m!6339646 () Bool)

(assert (=> bm!378064 m!6339646))

(declare-fun m!6339648 () Bool)

(assert (=> bm!378066 m!6339648))

(declare-fun m!6339650 () Bool)

(assert (=> b!5302369 m!6339650))

(assert (=> start!559282 d!1704895))

(declare-fun b!5302372 () Bool)

(declare-fun e!3295534 () Bool)

(declare-fun e!3295539 () Bool)

(assert (=> b!5302372 (= e!3295534 e!3295539)))

(declare-fun c!920663 () Bool)

(assert (=> b!5302372 (= c!920663 ((_ is Union!14943) (regOne!30398 r!7292)))))

(declare-fun b!5302373 () Bool)

(declare-fun e!3295537 () Bool)

(assert (=> b!5302373 (= e!3295537 e!3295534)))

(declare-fun c!920662 () Bool)

(assert (=> b!5302373 (= c!920662 ((_ is Star!14943) (regOne!30398 r!7292)))))

(declare-fun b!5302374 () Bool)

(declare-fun res!2248825 () Bool)

(declare-fun e!3295538 () Bool)

(assert (=> b!5302374 (=> (not res!2248825) (not e!3295538))))

(declare-fun call!378072 () Bool)

(assert (=> b!5302374 (= res!2248825 call!378072)))

(assert (=> b!5302374 (= e!3295539 e!3295538)))

(declare-fun bm!378067 () Bool)

(declare-fun call!378074 () Bool)

(assert (=> bm!378067 (= call!378074 (validRegex!6679 (ite c!920663 (regTwo!30399 (regOne!30398 r!7292)) (regTwo!30398 (regOne!30398 r!7292)))))))

(declare-fun b!5302375 () Bool)

(declare-fun e!3295533 () Bool)

(assert (=> b!5302375 (= e!3295533 call!378074)))

(declare-fun bm!378068 () Bool)

(declare-fun call!378073 () Bool)

(assert (=> bm!378068 (= call!378072 call!378073)))

(declare-fun b!5302376 () Bool)

(declare-fun res!2248823 () Bool)

(declare-fun e!3295535 () Bool)

(assert (=> b!5302376 (=> res!2248823 e!3295535)))

(assert (=> b!5302376 (= res!2248823 (not ((_ is Concat!23788) (regOne!30398 r!7292))))))

(assert (=> b!5302376 (= e!3295539 e!3295535)))

(declare-fun bm!378069 () Bool)

(assert (=> bm!378069 (= call!378073 (validRegex!6679 (ite c!920662 (reg!15272 (regOne!30398 r!7292)) (ite c!920663 (regOne!30399 (regOne!30398 r!7292)) (regOne!30398 (regOne!30398 r!7292))))))))

(declare-fun d!1704897 () Bool)

(declare-fun res!2248824 () Bool)

(assert (=> d!1704897 (=> res!2248824 e!3295537)))

(assert (=> d!1704897 (= res!2248824 ((_ is ElementMatch!14943) (regOne!30398 r!7292)))))

(assert (=> d!1704897 (= (validRegex!6679 (regOne!30398 r!7292)) e!3295537)))

(declare-fun b!5302377 () Bool)

(assert (=> b!5302377 (= e!3295538 call!378074)))

(declare-fun b!5302378 () Bool)

(declare-fun e!3295536 () Bool)

(assert (=> b!5302378 (= e!3295534 e!3295536)))

(declare-fun res!2248822 () Bool)

(assert (=> b!5302378 (= res!2248822 (not (nullable!5112 (reg!15272 (regOne!30398 r!7292)))))))

(assert (=> b!5302378 (=> (not res!2248822) (not e!3295536))))

(declare-fun b!5302379 () Bool)

(assert (=> b!5302379 (= e!3295536 call!378073)))

(declare-fun b!5302380 () Bool)

(assert (=> b!5302380 (= e!3295535 e!3295533)))

(declare-fun res!2248826 () Bool)

(assert (=> b!5302380 (=> (not res!2248826) (not e!3295533))))

(assert (=> b!5302380 (= res!2248826 call!378072)))

(assert (= (and d!1704897 (not res!2248824)) b!5302373))

(assert (= (and b!5302373 c!920662) b!5302378))

(assert (= (and b!5302373 (not c!920662)) b!5302372))

(assert (= (and b!5302378 res!2248822) b!5302379))

(assert (= (and b!5302372 c!920663) b!5302374))

(assert (= (and b!5302372 (not c!920663)) b!5302376))

(assert (= (and b!5302374 res!2248825) b!5302377))

(assert (= (and b!5302376 (not res!2248823)) b!5302380))

(assert (= (and b!5302380 res!2248826) b!5302375))

(assert (= (or b!5302377 b!5302375) bm!378067))

(assert (= (or b!5302374 b!5302380) bm!378068))

(assert (= (or b!5302379 bm!378068) bm!378069))

(declare-fun m!6339652 () Bool)

(assert (=> bm!378067 m!6339652))

(declare-fun m!6339654 () Bool)

(assert (=> bm!378069 m!6339654))

(declare-fun m!6339656 () Bool)

(assert (=> b!5302378 m!6339656))

(assert (=> b!5301374 d!1704897))

(assert (=> b!5301375 d!1704859))

(declare-fun d!1704899 () Bool)

(declare-fun e!3295542 () Bool)

(assert (=> d!1704899 e!3295542))

(declare-fun res!2248829 () Bool)

(assert (=> d!1704899 (=> (not res!2248829) (not e!3295542))))

(declare-fun lt!2166110 () List!61130)

(declare-fun noDuplicate!1279 (List!61130) Bool)

(assert (=> d!1704899 (= res!2248829 (noDuplicate!1279 lt!2166110))))

(declare-fun choose!39643 ((InoxSet Context!8654)) List!61130)

(assert (=> d!1704899 (= lt!2166110 (choose!39643 z!1189))))

(assert (=> d!1704899 (= (toList!8727 z!1189) lt!2166110)))

(declare-fun b!5302383 () Bool)

(declare-fun content!10869 (List!61130) (InoxSet Context!8654))

(assert (=> b!5302383 (= e!3295542 (= (content!10869 lt!2166110) z!1189))))

(assert (= (and d!1704899 res!2248829) b!5302383))

(declare-fun m!6339658 () Bool)

(assert (=> d!1704899 m!6339658))

(declare-fun m!6339660 () Bool)

(assert (=> d!1704899 m!6339660))

(declare-fun m!6339662 () Bool)

(assert (=> b!5302383 m!6339662))

(assert (=> b!5301394 d!1704899))

(declare-fun bs!1229794 () Bool)

(declare-fun b!5302393 () Bool)

(assert (= bs!1229794 (and b!5302393 d!1704817)))

(declare-fun lambda!269361 () Int)

(assert (=> bs!1229794 (not (= lambda!269361 lambda!269341))))

(declare-fun bs!1229795 () Bool)

(assert (= bs!1229795 (and b!5302393 d!1704811)))

(assert (=> bs!1229795 (not (= lambda!269361 lambda!269332))))

(declare-fun bs!1229796 () Bool)

(assert (= bs!1229796 (and b!5302393 b!5301372)))

(assert (=> bs!1229796 (not (= lambda!269361 lambda!269257))))

(declare-fun bs!1229797 () Bool)

(assert (= bs!1229797 (and b!5302393 b!5301360)))

(assert (=> bs!1229797 (not (= lambda!269361 lambda!269263))))

(assert (=> bs!1229795 (not (= lambda!269361 lambda!269333))))

(declare-fun bs!1229798 () Bool)

(assert (= bs!1229798 (and b!5302393 b!5302112)))

(assert (=> bs!1229798 (= (and (= (reg!15272 r!7292) (reg!15272 lt!2165957)) (= r!7292 lt!2165957)) (= lambda!269361 lambda!269338))))

(declare-fun bs!1229799 () Bool)

(assert (= bs!1229799 (and b!5302393 b!5302177)))

(assert (=> bs!1229799 (= (and (= (reg!15272 r!7292) (reg!15272 lt!2165912)) (= r!7292 lt!2165912)) (= lambda!269361 lambda!269347))))

(assert (=> bs!1229797 (not (= lambda!269361 lambda!269262))))

(declare-fun bs!1229800 () Bool)

(assert (= bs!1229800 (and b!5302393 b!5302178)))

(assert (=> bs!1229800 (not (= lambda!269361 lambda!269348))))

(assert (=> bs!1229794 (not (= lambda!269361 lambda!269342))))

(assert (=> bs!1229797 (not (= lambda!269361 lambda!269261))))

(declare-fun bs!1229801 () Bool)

(assert (= bs!1229801 (and b!5302393 d!1704819)))

(assert (=> bs!1229801 (not (= lambda!269361 lambda!269345))))

(assert (=> bs!1229797 (not (= lambda!269361 lambda!269260))))

(declare-fun bs!1229802 () Bool)

(assert (= bs!1229802 (and b!5302393 b!5302113)))

(assert (=> bs!1229802 (not (= lambda!269361 lambda!269339))))

(declare-fun bs!1229803 () Bool)

(assert (= bs!1229803 (and b!5302393 d!1704833)))

(assert (=> bs!1229803 (not (= lambda!269361 lambda!269346))))

(assert (=> bs!1229796 (not (= lambda!269361 lambda!269258))))

(assert (=> b!5302393 true))

(assert (=> b!5302393 true))

(declare-fun bs!1229804 () Bool)

(declare-fun b!5302394 () Bool)

(assert (= bs!1229804 (and b!5302394 d!1704817)))

(declare-fun lambda!269362 () Int)

(assert (=> bs!1229804 (not (= lambda!269362 lambda!269341))))

(declare-fun bs!1229805 () Bool)

(assert (= bs!1229805 (and b!5302394 d!1704811)))

(assert (=> bs!1229805 (not (= lambda!269362 lambda!269332))))

(declare-fun bs!1229806 () Bool)

(assert (= bs!1229806 (and b!5302394 b!5301372)))

(assert (=> bs!1229806 (not (= lambda!269362 lambda!269257))))

(declare-fun bs!1229807 () Bool)

(assert (= bs!1229807 (and b!5302394 b!5301360)))

(assert (=> bs!1229807 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269362 lambda!269263))))

(assert (=> bs!1229805 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269362 lambda!269333))))

(declare-fun bs!1229808 () Bool)

(assert (= bs!1229808 (and b!5302394 b!5302393)))

(assert (=> bs!1229808 (not (= lambda!269362 lambda!269361))))

(declare-fun bs!1229809 () Bool)

(assert (= bs!1229809 (and b!5302394 b!5302112)))

(assert (=> bs!1229809 (not (= lambda!269362 lambda!269338))))

(declare-fun bs!1229810 () Bool)

(assert (= bs!1229810 (and b!5302394 b!5302177)))

(assert (=> bs!1229810 (not (= lambda!269362 lambda!269347))))

(assert (=> bs!1229807 (not (= lambda!269362 lambda!269262))))

(declare-fun bs!1229811 () Bool)

(assert (= bs!1229811 (and b!5302394 b!5302178)))

(assert (=> bs!1229811 (= (and (= (regOne!30398 r!7292) (regOne!30398 lt!2165912)) (= (regTwo!30398 r!7292) (regTwo!30398 lt!2165912))) (= lambda!269362 lambda!269348))))

(assert (=> bs!1229804 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269362 lambda!269342))))

(assert (=> bs!1229807 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269362 lambda!269261))))

(declare-fun bs!1229812 () Bool)

(assert (= bs!1229812 (and b!5302394 d!1704819)))

(assert (=> bs!1229812 (not (= lambda!269362 lambda!269345))))

(assert (=> bs!1229807 (not (= lambda!269362 lambda!269260))))

(declare-fun bs!1229813 () Bool)

(assert (= bs!1229813 (and b!5302394 b!5302113)))

(assert (=> bs!1229813 (= (and (= (regOne!30398 r!7292) (regOne!30398 lt!2165957)) (= (regTwo!30398 r!7292) (regTwo!30398 lt!2165957))) (= lambda!269362 lambda!269339))))

(declare-fun bs!1229814 () Bool)

(assert (= bs!1229814 (and b!5302394 d!1704833)))

(assert (=> bs!1229814 (not (= lambda!269362 lambda!269346))))

(assert (=> bs!1229806 (= lambda!269362 lambda!269258)))

(assert (=> b!5302394 true))

(assert (=> b!5302394 true))

(declare-fun d!1704901 () Bool)

(declare-fun c!920666 () Bool)

(assert (=> d!1704901 (= c!920666 ((_ is EmptyExpr!14943) r!7292))))

(declare-fun e!3295546 () Bool)

(assert (=> d!1704901 (= (matchRSpec!2046 r!7292 s!2326) e!3295546)))

(declare-fun b!5302384 () Bool)

(declare-fun res!2248830 () Bool)

(declare-fun e!3295549 () Bool)

(assert (=> b!5302384 (=> res!2248830 e!3295549)))

(declare-fun call!378075 () Bool)

(assert (=> b!5302384 (= res!2248830 call!378075)))

(declare-fun e!3295543 () Bool)

(assert (=> b!5302384 (= e!3295543 e!3295549)))

(declare-fun b!5302385 () Bool)

(declare-fun e!3295548 () Bool)

(assert (=> b!5302385 (= e!3295546 e!3295548)))

(declare-fun res!2248831 () Bool)

(assert (=> b!5302385 (= res!2248831 (not ((_ is EmptyLang!14943) r!7292)))))

(assert (=> b!5302385 (=> (not res!2248831) (not e!3295548))))

(declare-fun c!920667 () Bool)

(declare-fun call!378076 () Bool)

(declare-fun bm!378070 () Bool)

(assert (=> bm!378070 (= call!378076 (Exists!2124 (ite c!920667 lambda!269361 lambda!269362)))))

(declare-fun b!5302386 () Bool)

(declare-fun e!3295545 () Bool)

(assert (=> b!5302386 (= e!3295545 (matchRSpec!2046 (regTwo!30399 r!7292) s!2326))))

(declare-fun b!5302387 () Bool)

(declare-fun e!3295544 () Bool)

(assert (=> b!5302387 (= e!3295544 e!3295543)))

(assert (=> b!5302387 (= c!920667 ((_ is Star!14943) r!7292))))

(declare-fun b!5302388 () Bool)

(declare-fun e!3295547 () Bool)

(assert (=> b!5302388 (= e!3295547 (= s!2326 (Cons!61005 (c!920351 r!7292) Nil!61005)))))

(declare-fun b!5302389 () Bool)

(assert (=> b!5302389 (= e!3295546 call!378075)))

(declare-fun b!5302390 () Bool)

(declare-fun c!920664 () Bool)

(assert (=> b!5302390 (= c!920664 ((_ is ElementMatch!14943) r!7292))))

(assert (=> b!5302390 (= e!3295548 e!3295547)))

(declare-fun b!5302391 () Bool)

(declare-fun c!920665 () Bool)

(assert (=> b!5302391 (= c!920665 ((_ is Union!14943) r!7292))))

(assert (=> b!5302391 (= e!3295547 e!3295544)))

(declare-fun b!5302392 () Bool)

(assert (=> b!5302392 (= e!3295544 e!3295545)))

(declare-fun res!2248832 () Bool)

(assert (=> b!5302392 (= res!2248832 (matchRSpec!2046 (regOne!30399 r!7292) s!2326))))

(assert (=> b!5302392 (=> res!2248832 e!3295545)))

(assert (=> b!5302393 (= e!3295549 call!378076)))

(assert (=> b!5302394 (= e!3295543 call!378076)))

(declare-fun bm!378071 () Bool)

(assert (=> bm!378071 (= call!378075 (isEmpty!32971 s!2326))))

(assert (= (and d!1704901 c!920666) b!5302389))

(assert (= (and d!1704901 (not c!920666)) b!5302385))

(assert (= (and b!5302385 res!2248831) b!5302390))

(assert (= (and b!5302390 c!920664) b!5302388))

(assert (= (and b!5302390 (not c!920664)) b!5302391))

(assert (= (and b!5302391 c!920665) b!5302392))

(assert (= (and b!5302391 (not c!920665)) b!5302387))

(assert (= (and b!5302392 (not res!2248832)) b!5302386))

(assert (= (and b!5302387 c!920667) b!5302384))

(assert (= (and b!5302387 (not c!920667)) b!5302394))

(assert (= (and b!5302384 (not res!2248830)) b!5302393))

(assert (= (or b!5302393 b!5302394) bm!378070))

(assert (= (or b!5302389 b!5302384) bm!378071))

(declare-fun m!6339664 () Bool)

(assert (=> bm!378070 m!6339664))

(declare-fun m!6339666 () Bool)

(assert (=> b!5302386 m!6339666))

(declare-fun m!6339668 () Bool)

(assert (=> b!5302392 m!6339668))

(assert (=> bm!378071 m!6339336))

(assert (=> b!5301371 d!1704901))

(declare-fun b!5302395 () Bool)

(declare-fun e!3295555 () Bool)

(declare-fun lt!2166111 () Bool)

(assert (=> b!5302395 (= e!3295555 (not lt!2166111))))

(declare-fun b!5302396 () Bool)

(declare-fun e!3295556 () Bool)

(assert (=> b!5302396 (= e!3295556 (matchR!7128 (derivativeStep!4145 r!7292 (head!11366 s!2326)) (tail!10463 s!2326)))))

(declare-fun b!5302397 () Bool)

(declare-fun res!2248835 () Bool)

(declare-fun e!3295550 () Bool)

(assert (=> b!5302397 (=> res!2248835 e!3295550)))

(assert (=> b!5302397 (= res!2248835 (not ((_ is ElementMatch!14943) r!7292)))))

(assert (=> b!5302397 (= e!3295555 e!3295550)))

(declare-fun b!5302398 () Bool)

(declare-fun e!3295551 () Bool)

(declare-fun call!378077 () Bool)

(assert (=> b!5302398 (= e!3295551 (= lt!2166111 call!378077))))

(declare-fun b!5302399 () Bool)

(declare-fun e!3295554 () Bool)

(declare-fun e!3295552 () Bool)

(assert (=> b!5302399 (= e!3295554 e!3295552)))

(declare-fun res!2248838 () Bool)

(assert (=> b!5302399 (=> res!2248838 e!3295552)))

(assert (=> b!5302399 (= res!2248838 call!378077)))

(declare-fun b!5302400 () Bool)

(declare-fun res!2248840 () Bool)

(assert (=> b!5302400 (=> res!2248840 e!3295552)))

(assert (=> b!5302400 (= res!2248840 (not (isEmpty!32971 (tail!10463 s!2326))))))

(declare-fun d!1704903 () Bool)

(assert (=> d!1704903 e!3295551))

(declare-fun c!920670 () Bool)

(assert (=> d!1704903 (= c!920670 ((_ is EmptyExpr!14943) r!7292))))

(assert (=> d!1704903 (= lt!2166111 e!3295556)))

(declare-fun c!920668 () Bool)

(assert (=> d!1704903 (= c!920668 (isEmpty!32971 s!2326))))

(assert (=> d!1704903 (validRegex!6679 r!7292)))

(assert (=> d!1704903 (= (matchR!7128 r!7292 s!2326) lt!2166111)))

(declare-fun b!5302401 () Bool)

(declare-fun e!3295553 () Bool)

(assert (=> b!5302401 (= e!3295553 (= (head!11366 s!2326) (c!920351 r!7292)))))

(declare-fun b!5302402 () Bool)

(declare-fun res!2248837 () Bool)

(assert (=> b!5302402 (=> res!2248837 e!3295550)))

(assert (=> b!5302402 (= res!2248837 e!3295553)))

(declare-fun res!2248836 () Bool)

(assert (=> b!5302402 (=> (not res!2248836) (not e!3295553))))

(assert (=> b!5302402 (= res!2248836 lt!2166111)))

(declare-fun bm!378072 () Bool)

(assert (=> bm!378072 (= call!378077 (isEmpty!32971 s!2326))))

(declare-fun b!5302403 () Bool)

(declare-fun res!2248839 () Bool)

(assert (=> b!5302403 (=> (not res!2248839) (not e!3295553))))

(assert (=> b!5302403 (= res!2248839 (not call!378077))))

(declare-fun b!5302404 () Bool)

(assert (=> b!5302404 (= e!3295550 e!3295554)))

(declare-fun res!2248834 () Bool)

(assert (=> b!5302404 (=> (not res!2248834) (not e!3295554))))

(assert (=> b!5302404 (= res!2248834 (not lt!2166111))))

(declare-fun b!5302405 () Bool)

(assert (=> b!5302405 (= e!3295556 (nullable!5112 r!7292))))

(declare-fun b!5302406 () Bool)

(assert (=> b!5302406 (= e!3295552 (not (= (head!11366 s!2326) (c!920351 r!7292))))))

(declare-fun b!5302407 () Bool)

(assert (=> b!5302407 (= e!3295551 e!3295555)))

(declare-fun c!920669 () Bool)

(assert (=> b!5302407 (= c!920669 ((_ is EmptyLang!14943) r!7292))))

(declare-fun b!5302408 () Bool)

(declare-fun res!2248833 () Bool)

(assert (=> b!5302408 (=> (not res!2248833) (not e!3295553))))

(assert (=> b!5302408 (= res!2248833 (isEmpty!32971 (tail!10463 s!2326)))))

(assert (= (and d!1704903 c!920668) b!5302405))

(assert (= (and d!1704903 (not c!920668)) b!5302396))

(assert (= (and d!1704903 c!920670) b!5302398))

(assert (= (and d!1704903 (not c!920670)) b!5302407))

(assert (= (and b!5302407 c!920669) b!5302395))

(assert (= (and b!5302407 (not c!920669)) b!5302397))

(assert (= (and b!5302397 (not res!2248835)) b!5302402))

(assert (= (and b!5302402 res!2248836) b!5302403))

(assert (= (and b!5302403 res!2248839) b!5302408))

(assert (= (and b!5302408 res!2248833) b!5302401))

(assert (= (and b!5302402 (not res!2248837)) b!5302404))

(assert (= (and b!5302404 res!2248834) b!5302399))

(assert (= (and b!5302399 (not res!2248838)) b!5302400))

(assert (= (and b!5302400 (not res!2248840)) b!5302406))

(assert (= (or b!5302398 b!5302403 b!5302399) bm!378072))

(assert (=> b!5302406 m!6339330))

(assert (=> b!5302400 m!6339332))

(assert (=> b!5302400 m!6339332))

(assert (=> b!5302400 m!6339334))

(assert (=> b!5302408 m!6339332))

(assert (=> b!5302408 m!6339332))

(assert (=> b!5302408 m!6339334))

(assert (=> b!5302401 m!6339330))

(assert (=> d!1704903 m!6339336))

(assert (=> d!1704903 m!6338714))

(assert (=> b!5302396 m!6339330))

(assert (=> b!5302396 m!6339330))

(declare-fun m!6339670 () Bool)

(assert (=> b!5302396 m!6339670))

(assert (=> b!5302396 m!6339332))

(assert (=> b!5302396 m!6339670))

(assert (=> b!5302396 m!6339332))

(declare-fun m!6339672 () Bool)

(assert (=> b!5302396 m!6339672))

(assert (=> bm!378072 m!6339336))

(declare-fun m!6339674 () Bool)

(assert (=> b!5302405 m!6339674))

(assert (=> b!5301371 d!1704903))

(declare-fun d!1704905 () Bool)

(assert (=> d!1704905 (= (matchR!7128 r!7292 s!2326) (matchRSpec!2046 r!7292 s!2326))))

(declare-fun lt!2166112 () Unit!153290)

(assert (=> d!1704905 (= lt!2166112 (choose!39637 r!7292 s!2326))))

(assert (=> d!1704905 (validRegex!6679 r!7292)))

(assert (=> d!1704905 (= (mainMatchTheorem!2046 r!7292 s!2326) lt!2166112)))

(declare-fun bs!1229815 () Bool)

(assert (= bs!1229815 d!1704905))

(assert (=> bs!1229815 m!6338730))

(assert (=> bs!1229815 m!6338728))

(declare-fun m!6339676 () Bool)

(assert (=> bs!1229815 m!6339676))

(assert (=> bs!1229815 m!6338714))

(assert (=> b!5301371 d!1704905))

(declare-fun d!1704907 () Bool)

(assert (=> d!1704907 (= (isEmpty!32968 (t!374335 zl!343)) ((_ is Nil!61006) (t!374335 zl!343)))))

(assert (=> b!5301391 d!1704907))

(declare-fun b!5302409 () Bool)

(declare-fun e!3295561 () Bool)

(assert (=> b!5302409 (= e!3295561 (matchR!7128 (regTwo!30398 r!7292) s!2326))))

(declare-fun b!5302410 () Bool)

(declare-fun e!3295560 () Option!15054)

(assert (=> b!5302410 (= e!3295560 (Some!15053 (tuple2!64285 Nil!61005 s!2326)))))

(declare-fun d!1704909 () Bool)

(declare-fun e!3295557 () Bool)

(assert (=> d!1704909 e!3295557))

(declare-fun res!2248843 () Bool)

(assert (=> d!1704909 (=> res!2248843 e!3295557)))

(declare-fun e!3295558 () Bool)

(assert (=> d!1704909 (= res!2248843 e!3295558)))

(declare-fun res!2248842 () Bool)

(assert (=> d!1704909 (=> (not res!2248842) (not e!3295558))))

(declare-fun lt!2166115 () Option!15054)

(assert (=> d!1704909 (= res!2248842 (isDefined!11757 lt!2166115))))

(assert (=> d!1704909 (= lt!2166115 e!3295560)))

(declare-fun c!920671 () Bool)

(assert (=> d!1704909 (= c!920671 e!3295561)))

(declare-fun res!2248845 () Bool)

(assert (=> d!1704909 (=> (not res!2248845) (not e!3295561))))

(assert (=> d!1704909 (= res!2248845 (matchR!7128 (regOne!30398 r!7292) Nil!61005))))

(assert (=> d!1704909 (validRegex!6679 (regOne!30398 r!7292))))

(assert (=> d!1704909 (= (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) Nil!61005 s!2326 s!2326) lt!2166115)))

(declare-fun b!5302411 () Bool)

(declare-fun lt!2166113 () Unit!153290)

(declare-fun lt!2166114 () Unit!153290)

(assert (=> b!5302411 (= lt!2166113 lt!2166114)))

(assert (=> b!5302411 (= (++!13304 (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326)) s!2326)))

(assert (=> b!5302411 (= lt!2166114 (lemmaMoveElementToOtherListKeepsConcatEq!1719 Nil!61005 (h!67453 s!2326) (t!374334 s!2326) s!2326))))

(declare-fun e!3295559 () Option!15054)

(assert (=> b!5302411 (= e!3295559 (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) (++!13304 Nil!61005 (Cons!61005 (h!67453 s!2326) Nil!61005)) (t!374334 s!2326) s!2326))))

(declare-fun b!5302412 () Bool)

(assert (=> b!5302412 (= e!3295559 None!15053)))

(declare-fun b!5302413 () Bool)

(declare-fun res!2248841 () Bool)

(assert (=> b!5302413 (=> (not res!2248841) (not e!3295558))))

(assert (=> b!5302413 (= res!2248841 (matchR!7128 (regOne!30398 r!7292) (_1!35445 (get!20981 lt!2166115))))))

(declare-fun b!5302414 () Bool)

(declare-fun res!2248844 () Bool)

(assert (=> b!5302414 (=> (not res!2248844) (not e!3295558))))

(assert (=> b!5302414 (= res!2248844 (matchR!7128 (regTwo!30398 r!7292) (_2!35445 (get!20981 lt!2166115))))))

(declare-fun b!5302415 () Bool)

(assert (=> b!5302415 (= e!3295558 (= (++!13304 (_1!35445 (get!20981 lt!2166115)) (_2!35445 (get!20981 lt!2166115))) s!2326))))

(declare-fun b!5302416 () Bool)

(assert (=> b!5302416 (= e!3295557 (not (isDefined!11757 lt!2166115)))))

(declare-fun b!5302417 () Bool)

(assert (=> b!5302417 (= e!3295560 e!3295559)))

(declare-fun c!920672 () Bool)

(assert (=> b!5302417 (= c!920672 ((_ is Nil!61005) s!2326))))

(assert (= (and d!1704909 res!2248845) b!5302409))

(assert (= (and d!1704909 c!920671) b!5302410))

(assert (= (and d!1704909 (not c!920671)) b!5302417))

(assert (= (and b!5302417 c!920672) b!5302412))

(assert (= (and b!5302417 (not c!920672)) b!5302411))

(assert (= (and d!1704909 res!2248842) b!5302413))

(assert (= (and b!5302413 res!2248841) b!5302414))

(assert (= (and b!5302414 res!2248844) b!5302415))

(assert (= (and d!1704909 (not res!2248843)) b!5302416))

(declare-fun m!6339678 () Bool)

(assert (=> b!5302416 m!6339678))

(declare-fun m!6339680 () Bool)

(assert (=> b!5302409 m!6339680))

(declare-fun m!6339682 () Bool)

(assert (=> b!5302414 m!6339682))

(declare-fun m!6339684 () Bool)

(assert (=> b!5302414 m!6339684))

(assert (=> b!5302413 m!6339682))

(declare-fun m!6339686 () Bool)

(assert (=> b!5302413 m!6339686))

(assert (=> b!5302411 m!6339418))

(assert (=> b!5302411 m!6339418))

(assert (=> b!5302411 m!6339420))

(assert (=> b!5302411 m!6339422))

(assert (=> b!5302411 m!6339418))

(declare-fun m!6339688 () Bool)

(assert (=> b!5302411 m!6339688))

(assert (=> d!1704909 m!6339678))

(declare-fun m!6339690 () Bool)

(assert (=> d!1704909 m!6339690))

(assert (=> d!1704909 m!6338610))

(assert (=> b!5302415 m!6339682))

(declare-fun m!6339692 () Bool)

(assert (=> b!5302415 m!6339692))

(assert (=> b!5301372 d!1704909))

(declare-fun d!1704911 () Bool)

(assert (=> d!1704911 (= (Exists!2124 lambda!269257) (choose!39641 lambda!269257))))

(declare-fun bs!1229816 () Bool)

(assert (= bs!1229816 d!1704911))

(declare-fun m!6339694 () Bool)

(assert (=> bs!1229816 m!6339694))

(assert (=> b!5301372 d!1704911))

(declare-fun d!1704913 () Bool)

(assert (=> d!1704913 (= (Exists!2124 lambda!269258) (choose!39641 lambda!269258))))

(declare-fun bs!1229817 () Bool)

(assert (= bs!1229817 d!1704913))

(declare-fun m!6339696 () Bool)

(assert (=> bs!1229817 m!6339696))

(assert (=> b!5301372 d!1704913))

(declare-fun bs!1229818 () Bool)

(declare-fun d!1704915 () Bool)

(assert (= bs!1229818 (and d!1704915 d!1704817)))

(declare-fun lambda!269363 () Int)

(assert (=> bs!1229818 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269363 lambda!269341))))

(declare-fun bs!1229819 () Bool)

(assert (= bs!1229819 (and d!1704915 d!1704811)))

(assert (=> bs!1229819 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269363 lambda!269332))))

(declare-fun bs!1229820 () Bool)

(assert (= bs!1229820 (and d!1704915 b!5301372)))

(assert (=> bs!1229820 (= lambda!269363 lambda!269257)))

(assert (=> bs!1229819 (not (= lambda!269363 lambda!269333))))

(declare-fun bs!1229821 () Bool)

(assert (= bs!1229821 (and d!1704915 b!5302393)))

(assert (=> bs!1229821 (not (= lambda!269363 lambda!269361))))

(declare-fun bs!1229822 () Bool)

(assert (= bs!1229822 (and d!1704915 b!5302112)))

(assert (=> bs!1229822 (not (= lambda!269363 lambda!269338))))

(declare-fun bs!1229823 () Bool)

(assert (= bs!1229823 (and d!1704915 b!5302177)))

(assert (=> bs!1229823 (not (= lambda!269363 lambda!269347))))

(declare-fun bs!1229824 () Bool)

(assert (= bs!1229824 (and d!1704915 b!5301360)))

(assert (=> bs!1229824 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269363 lambda!269262))))

(declare-fun bs!1229825 () Bool)

(assert (= bs!1229825 (and d!1704915 b!5302178)))

(assert (=> bs!1229825 (not (= lambda!269363 lambda!269348))))

(assert (=> bs!1229824 (not (= lambda!269363 lambda!269263))))

(declare-fun bs!1229826 () Bool)

(assert (= bs!1229826 (and d!1704915 b!5302394)))

(assert (=> bs!1229826 (not (= lambda!269363 lambda!269362))))

(assert (=> bs!1229818 (not (= lambda!269363 lambda!269342))))

(assert (=> bs!1229824 (not (= lambda!269363 lambda!269261))))

(declare-fun bs!1229827 () Bool)

(assert (= bs!1229827 (and d!1704915 d!1704819)))

(assert (=> bs!1229827 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269363 lambda!269345))))

(assert (=> bs!1229824 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269363 lambda!269260))))

(declare-fun bs!1229828 () Bool)

(assert (= bs!1229828 (and d!1704915 b!5302113)))

(assert (=> bs!1229828 (not (= lambda!269363 lambda!269339))))

(declare-fun bs!1229829 () Bool)

(assert (= bs!1229829 (and d!1704915 d!1704833)))

(assert (=> bs!1229829 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269363 lambda!269346))))

(assert (=> bs!1229820 (not (= lambda!269363 lambda!269258))))

(assert (=> d!1704915 true))

(assert (=> d!1704915 true))

(assert (=> d!1704915 true))

(assert (=> d!1704915 (= (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) Nil!61005 s!2326 s!2326)) (Exists!2124 lambda!269363))))

(declare-fun lt!2166116 () Unit!153290)

(assert (=> d!1704915 (= lt!2166116 (choose!39640 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326))))

(assert (=> d!1704915 (validRegex!6679 (regOne!30398 r!7292))))

(assert (=> d!1704915 (= (lemmaFindConcatSeparationEquivalentToExists!1232 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326) lt!2166116)))

(declare-fun bs!1229830 () Bool)

(assert (= bs!1229830 d!1704915))

(assert (=> bs!1229830 m!6338610))

(assert (=> bs!1229830 m!6338702))

(assert (=> bs!1229830 m!6338704))

(declare-fun m!6339698 () Bool)

(assert (=> bs!1229830 m!6339698))

(assert (=> bs!1229830 m!6338702))

(declare-fun m!6339700 () Bool)

(assert (=> bs!1229830 m!6339700))

(assert (=> b!5301372 d!1704915))

(declare-fun bs!1229831 () Bool)

(declare-fun d!1704917 () Bool)

(assert (= bs!1229831 (and d!1704917 d!1704817)))

(declare-fun lambda!269364 () Int)

(assert (=> bs!1229831 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269364 lambda!269341))))

(declare-fun bs!1229832 () Bool)

(assert (= bs!1229832 (and d!1704917 d!1704811)))

(assert (=> bs!1229832 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269364 lambda!269332))))

(declare-fun bs!1229833 () Bool)

(assert (= bs!1229833 (and d!1704917 b!5301372)))

(assert (=> bs!1229833 (= lambda!269364 lambda!269257)))

(assert (=> bs!1229832 (not (= lambda!269364 lambda!269333))))

(declare-fun bs!1229834 () Bool)

(assert (= bs!1229834 (and d!1704917 b!5302393)))

(assert (=> bs!1229834 (not (= lambda!269364 lambda!269361))))

(declare-fun bs!1229835 () Bool)

(assert (= bs!1229835 (and d!1704917 b!5302112)))

(assert (=> bs!1229835 (not (= lambda!269364 lambda!269338))))

(declare-fun bs!1229836 () Bool)

(assert (= bs!1229836 (and d!1704917 b!5302177)))

(assert (=> bs!1229836 (not (= lambda!269364 lambda!269347))))

(declare-fun bs!1229837 () Bool)

(assert (= bs!1229837 (and d!1704917 b!5301360)))

(assert (=> bs!1229837 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269364 lambda!269262))))

(declare-fun bs!1229838 () Bool)

(assert (= bs!1229838 (and d!1704917 b!5302178)))

(assert (=> bs!1229838 (not (= lambda!269364 lambda!269348))))

(assert (=> bs!1229837 (not (= lambda!269364 lambda!269263))))

(declare-fun bs!1229839 () Bool)

(assert (= bs!1229839 (and d!1704917 b!5302394)))

(assert (=> bs!1229839 (not (= lambda!269364 lambda!269362))))

(declare-fun bs!1229840 () Bool)

(assert (= bs!1229840 (and d!1704917 d!1704915)))

(assert (=> bs!1229840 (= lambda!269364 lambda!269363)))

(assert (=> bs!1229831 (not (= lambda!269364 lambda!269342))))

(assert (=> bs!1229837 (not (= lambda!269364 lambda!269261))))

(declare-fun bs!1229841 () Bool)

(assert (= bs!1229841 (and d!1704917 d!1704819)))

(assert (=> bs!1229841 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269364 lambda!269345))))

(assert (=> bs!1229837 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269364 lambda!269260))))

(declare-fun bs!1229842 () Bool)

(assert (= bs!1229842 (and d!1704917 b!5302113)))

(assert (=> bs!1229842 (not (= lambda!269364 lambda!269339))))

(declare-fun bs!1229843 () Bool)

(assert (= bs!1229843 (and d!1704917 d!1704833)))

(assert (=> bs!1229843 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269364 lambda!269346))))

(assert (=> bs!1229833 (not (= lambda!269364 lambda!269258))))

(assert (=> d!1704917 true))

(assert (=> d!1704917 true))

(assert (=> d!1704917 true))

(declare-fun lambda!269365 () Int)

(assert (=> bs!1229831 (not (= lambda!269365 lambda!269341))))

(assert (=> bs!1229832 (not (= lambda!269365 lambda!269332))))

(assert (=> bs!1229833 (not (= lambda!269365 lambda!269257))))

(assert (=> bs!1229832 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269365 lambda!269333))))

(assert (=> bs!1229834 (not (= lambda!269365 lambda!269361))))

(assert (=> bs!1229835 (not (= lambda!269365 lambda!269338))))

(assert (=> bs!1229836 (not (= lambda!269365 lambda!269347))))

(assert (=> bs!1229838 (= (and (= (regOne!30398 r!7292) (regOne!30398 lt!2165912)) (= (regTwo!30398 r!7292) (regTwo!30398 lt!2165912))) (= lambda!269365 lambda!269348))))

(assert (=> bs!1229837 (= (and (= (regOne!30398 r!7292) (regTwo!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165938)) (= lambda!269365 lambda!269263))))

(assert (=> bs!1229839 (= lambda!269365 lambda!269362)))

(assert (=> bs!1229840 (not (= lambda!269365 lambda!269363))))

(assert (=> bs!1229831 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269365 lambda!269342))))

(assert (=> bs!1229837 (= (and (= (regOne!30398 r!7292) (regOne!30398 (regOne!30398 r!7292))) (= (regTwo!30398 r!7292) lt!2165957)) (= lambda!269365 lambda!269261))))

(assert (=> bs!1229841 (not (= lambda!269365 lambda!269345))))

(assert (=> bs!1229837 (not (= lambda!269365 lambda!269260))))

(assert (=> bs!1229837 (not (= lambda!269365 lambda!269262))))

(declare-fun bs!1229844 () Bool)

(assert (= bs!1229844 d!1704917))

(assert (=> bs!1229844 (not (= lambda!269365 lambda!269364))))

(assert (=> bs!1229842 (= (and (= (regOne!30398 r!7292) (regOne!30398 lt!2165957)) (= (regTwo!30398 r!7292) (regTwo!30398 lt!2165957))) (= lambda!269365 lambda!269339))))

(assert (=> bs!1229843 (not (= lambda!269365 lambda!269346))))

(assert (=> bs!1229833 (= lambda!269365 lambda!269258)))

(assert (=> d!1704917 true))

(assert (=> d!1704917 true))

(assert (=> d!1704917 true))

(assert (=> d!1704917 (= (Exists!2124 lambda!269364) (Exists!2124 lambda!269365))))

(declare-fun lt!2166117 () Unit!153290)

(assert (=> d!1704917 (= lt!2166117 (choose!39639 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326))))

(assert (=> d!1704917 (validRegex!6679 (regOne!30398 r!7292))))

(assert (=> d!1704917 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!778 (regOne!30398 r!7292) (regTwo!30398 r!7292) s!2326) lt!2166117)))

(declare-fun m!6339702 () Bool)

(assert (=> bs!1229844 m!6339702))

(declare-fun m!6339704 () Bool)

(assert (=> bs!1229844 m!6339704))

(declare-fun m!6339706 () Bool)

(assert (=> bs!1229844 m!6339706))

(assert (=> bs!1229844 m!6338610))

(assert (=> b!5301372 d!1704917))

(declare-fun d!1704919 () Bool)

(assert (=> d!1704919 (= (isDefined!11757 (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) Nil!61005 s!2326 s!2326)) (not (isEmpty!32972 (findConcatSeparation!1468 (regOne!30398 r!7292) (regTwo!30398 r!7292) Nil!61005 s!2326 s!2326))))))

(declare-fun bs!1229845 () Bool)

(assert (= bs!1229845 d!1704919))

(assert (=> bs!1229845 m!6338702))

(declare-fun m!6339708 () Bool)

(assert (=> bs!1229845 m!6339708))

(assert (=> b!5301372 d!1704919))

(declare-fun d!1704921 () Bool)

(declare-fun c!920673 () Bool)

(assert (=> d!1704921 (= c!920673 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295562 () Bool)

(assert (=> d!1704921 (= (matchZipper!1187 lt!2165930 (t!374334 s!2326)) e!3295562)))

(declare-fun b!5302418 () Bool)

(assert (=> b!5302418 (= e!3295562 (nullableZipper!1324 lt!2165930))))

(declare-fun b!5302419 () Bool)

(assert (=> b!5302419 (= e!3295562 (matchZipper!1187 (derivationStepZipper!1186 lt!2165930 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704921 c!920673) b!5302418))

(assert (= (and d!1704921 (not c!920673)) b!5302419))

(assert (=> d!1704921 m!6339286))

(declare-fun m!6339710 () Bool)

(assert (=> b!5302418 m!6339710))

(assert (=> b!5302419 m!6339290))

(assert (=> b!5302419 m!6339290))

(declare-fun m!6339712 () Bool)

(assert (=> b!5302419 m!6339712))

(assert (=> b!5302419 m!6339294))

(assert (=> b!5302419 m!6339712))

(assert (=> b!5302419 m!6339294))

(declare-fun m!6339714 () Bool)

(assert (=> b!5302419 m!6339714))

(assert (=> b!5301368 d!1704921))

(declare-fun d!1704923 () Bool)

(declare-fun c!920674 () Bool)

(assert (=> d!1704923 (= c!920674 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295563 () Bool)

(assert (=> d!1704923 (= (matchZipper!1187 lt!2165919 (t!374334 s!2326)) e!3295563)))

(declare-fun b!5302420 () Bool)

(assert (=> b!5302420 (= e!3295563 (nullableZipper!1324 lt!2165919))))

(declare-fun b!5302421 () Bool)

(assert (=> b!5302421 (= e!3295563 (matchZipper!1187 (derivationStepZipper!1186 lt!2165919 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704923 c!920674) b!5302420))

(assert (= (and d!1704923 (not c!920674)) b!5302421))

(assert (=> d!1704923 m!6339286))

(declare-fun m!6339716 () Bool)

(assert (=> b!5302420 m!6339716))

(assert (=> b!5302421 m!6339290))

(assert (=> b!5302421 m!6339290))

(declare-fun m!6339718 () Bool)

(assert (=> b!5302421 m!6339718))

(assert (=> b!5302421 m!6339294))

(assert (=> b!5302421 m!6339718))

(assert (=> b!5302421 m!6339294))

(declare-fun m!6339720 () Bool)

(assert (=> b!5302421 m!6339720))

(assert (=> b!5301368 d!1704923))

(declare-fun d!1704925 () Bool)

(declare-fun c!920675 () Bool)

(assert (=> d!1704925 (= c!920675 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295564 () Bool)

(assert (=> d!1704925 (= (matchZipper!1187 lt!2165953 (t!374334 s!2326)) e!3295564)))

(declare-fun b!5302422 () Bool)

(assert (=> b!5302422 (= e!3295564 (nullableZipper!1324 lt!2165953))))

(declare-fun b!5302423 () Bool)

(assert (=> b!5302423 (= e!3295564 (matchZipper!1187 (derivationStepZipper!1186 lt!2165953 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704925 c!920675) b!5302422))

(assert (= (and d!1704925 (not c!920675)) b!5302423))

(assert (=> d!1704925 m!6339286))

(declare-fun m!6339722 () Bool)

(assert (=> b!5302422 m!6339722))

(assert (=> b!5302423 m!6339290))

(assert (=> b!5302423 m!6339290))

(declare-fun m!6339724 () Bool)

(assert (=> b!5302423 m!6339724))

(assert (=> b!5302423 m!6339294))

(assert (=> b!5302423 m!6339724))

(assert (=> b!5302423 m!6339294))

(declare-fun m!6339726 () Bool)

(assert (=> b!5302423 m!6339726))

(assert (=> b!5301368 d!1704925))

(declare-fun e!3295567 () Bool)

(declare-fun d!1704927 () Bool)

(assert (=> d!1704927 (= (matchZipper!1187 ((_ map or) lt!2165953 lt!2165924) (t!374334 s!2326)) e!3295567)))

(declare-fun res!2248848 () Bool)

(assert (=> d!1704927 (=> res!2248848 e!3295567)))

(assert (=> d!1704927 (= res!2248848 (matchZipper!1187 lt!2165953 (t!374334 s!2326)))))

(declare-fun lt!2166120 () Unit!153290)

(declare-fun choose!39644 ((InoxSet Context!8654) (InoxSet Context!8654) List!61129) Unit!153290)

(assert (=> d!1704927 (= lt!2166120 (choose!39644 lt!2165953 lt!2165924 (t!374334 s!2326)))))

(assert (=> d!1704927 (= (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165953 lt!2165924 (t!374334 s!2326)) lt!2166120)))

(declare-fun b!5302426 () Bool)

(assert (=> b!5302426 (= e!3295567 (matchZipper!1187 lt!2165924 (t!374334 s!2326)))))

(assert (= (and d!1704927 (not res!2248848)) b!5302426))

(declare-fun m!6339728 () Bool)

(assert (=> d!1704927 m!6339728))

(assert (=> d!1704927 m!6338616))

(declare-fun m!6339730 () Bool)

(assert (=> d!1704927 m!6339730))

(assert (=> b!5302426 m!6338674))

(assert (=> b!5301368 d!1704927))

(assert (=> b!5301369 d!1704795))

(declare-fun d!1704929 () Bool)

(declare-fun c!920676 () Bool)

(assert (=> d!1704929 (= c!920676 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295568 () Bool)

(assert (=> d!1704929 (= (matchZipper!1187 lt!2165931 (t!374334 s!2326)) e!3295568)))

(declare-fun b!5302427 () Bool)

(assert (=> b!5302427 (= e!3295568 (nullableZipper!1324 lt!2165931))))

(declare-fun b!5302428 () Bool)

(assert (=> b!5302428 (= e!3295568 (matchZipper!1187 (derivationStepZipper!1186 lt!2165931 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704929 c!920676) b!5302427))

(assert (= (and d!1704929 (not c!920676)) b!5302428))

(assert (=> d!1704929 m!6339286))

(declare-fun m!6339732 () Bool)

(assert (=> b!5302427 m!6339732))

(assert (=> b!5302428 m!6339290))

(assert (=> b!5302428 m!6339290))

(declare-fun m!6339734 () Bool)

(assert (=> b!5302428 m!6339734))

(assert (=> b!5302428 m!6339294))

(assert (=> b!5302428 m!6339734))

(assert (=> b!5302428 m!6339294))

(declare-fun m!6339736 () Bool)

(assert (=> b!5302428 m!6339736))

(assert (=> b!5301369 d!1704929))

(declare-fun d!1704931 () Bool)

(declare-fun c!920677 () Bool)

(assert (=> d!1704931 (= c!920677 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295569 () Bool)

(assert (=> d!1704931 (= (matchZipper!1187 lt!2165958 (t!374334 s!2326)) e!3295569)))

(declare-fun b!5302429 () Bool)

(assert (=> b!5302429 (= e!3295569 (nullableZipper!1324 lt!2165958))))

(declare-fun b!5302430 () Bool)

(assert (=> b!5302430 (= e!3295569 (matchZipper!1187 (derivationStepZipper!1186 lt!2165958 (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704931 c!920677) b!5302429))

(assert (= (and d!1704931 (not c!920677)) b!5302430))

(assert (=> d!1704931 m!6339286))

(declare-fun m!6339738 () Bool)

(assert (=> b!5302429 m!6339738))

(assert (=> b!5302430 m!6339290))

(assert (=> b!5302430 m!6339290))

(declare-fun m!6339740 () Bool)

(assert (=> b!5302430 m!6339740))

(assert (=> b!5302430 m!6339294))

(assert (=> b!5302430 m!6339740))

(assert (=> b!5302430 m!6339294))

(declare-fun m!6339742 () Bool)

(assert (=> b!5302430 m!6339742))

(assert (=> b!5301369 d!1704931))

(declare-fun d!1704933 () Bool)

(assert (=> d!1704933 (= (flatMap!670 lt!2165952 lambda!269259) (choose!39635 lt!2165952 lambda!269259))))

(declare-fun bs!1229846 () Bool)

(assert (= bs!1229846 d!1704933))

(declare-fun m!6339744 () Bool)

(assert (=> bs!1229846 m!6339744))

(assert (=> b!5301369 d!1704933))

(declare-fun d!1704935 () Bool)

(assert (=> d!1704935 (= (flatMap!670 lt!2165952 lambda!269259) (dynLambda!24121 lambda!269259 lt!2165925))))

(declare-fun lt!2166121 () Unit!153290)

(assert (=> d!1704935 (= lt!2166121 (choose!39636 lt!2165952 lt!2165925 lambda!269259))))

(assert (=> d!1704935 (= lt!2165952 (store ((as const (Array Context!8654 Bool)) false) lt!2165925 true))))

(assert (=> d!1704935 (= (lemmaFlatMapOnSingletonSet!202 lt!2165952 lt!2165925 lambda!269259) lt!2166121)))

(declare-fun b_lambda!204277 () Bool)

(assert (=> (not b_lambda!204277) (not d!1704935)))

(declare-fun bs!1229847 () Bool)

(assert (= bs!1229847 d!1704935))

(assert (=> bs!1229847 m!6338600))

(declare-fun m!6339746 () Bool)

(assert (=> bs!1229847 m!6339746))

(declare-fun m!6339748 () Bool)

(assert (=> bs!1229847 m!6339748))

(assert (=> bs!1229847 m!6338744))

(assert (=> b!5301369 d!1704935))

(declare-fun d!1704937 () Bool)

(declare-fun e!3295570 () Bool)

(assert (=> d!1704937 (= (matchZipper!1187 ((_ map or) lt!2165953 lt!2165945) (t!374334 s!2326)) e!3295570)))

(declare-fun res!2248849 () Bool)

(assert (=> d!1704937 (=> res!2248849 e!3295570)))

(assert (=> d!1704937 (= res!2248849 (matchZipper!1187 lt!2165953 (t!374334 s!2326)))))

(declare-fun lt!2166122 () Unit!153290)

(assert (=> d!1704937 (= lt!2166122 (choose!39644 lt!2165953 lt!2165945 (t!374334 s!2326)))))

(assert (=> d!1704937 (= (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165953 lt!2165945 (t!374334 s!2326)) lt!2166122)))

(declare-fun b!5302431 () Bool)

(assert (=> b!5302431 (= e!3295570 (matchZipper!1187 lt!2165945 (t!374334 s!2326)))))

(assert (= (and d!1704937 (not res!2248849)) b!5302431))

(declare-fun m!6339750 () Bool)

(assert (=> d!1704937 m!6339750))

(assert (=> d!1704937 m!6338616))

(declare-fun m!6339752 () Bool)

(assert (=> d!1704937 m!6339752))

(assert (=> b!5302431 m!6338676))

(assert (=> b!5301369 d!1704937))

(declare-fun b!5302438 () Bool)

(assert (=> b!5302438 true))

(declare-fun bs!1229848 () Bool)

(declare-fun b!5302440 () Bool)

(assert (= bs!1229848 (and b!5302440 b!5302438)))

(declare-fun lt!2166132 () Int)

(declare-fun lambda!269374 () Int)

(declare-fun lambda!269373 () Int)

(declare-fun lt!2166134 () Int)

(assert (=> bs!1229848 (= (= lt!2166134 lt!2166132) (= lambda!269374 lambda!269373))))

(assert (=> b!5302440 true))

(declare-fun d!1704939 () Bool)

(declare-fun e!3295576 () Bool)

(assert (=> d!1704939 e!3295576))

(declare-fun res!2248852 () Bool)

(assert (=> d!1704939 (=> (not res!2248852) (not e!3295576))))

(assert (=> d!1704939 (= res!2248852 (>= lt!2166134 0))))

(declare-fun e!3295575 () Int)

(assert (=> d!1704939 (= lt!2166134 e!3295575)))

(declare-fun c!920686 () Bool)

(assert (=> d!1704939 (= c!920686 ((_ is Cons!61006) lt!2165914))))

(assert (=> d!1704939 (= (zipperDepth!60 lt!2165914) lt!2166134)))

(assert (=> b!5302438 (= e!3295575 lt!2166132)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!36 (Context!8654) Int)

(assert (=> b!5302438 (= lt!2166132 (maxBigInt!0 (contextDepth!36 (h!67454 lt!2165914)) (zipperDepth!60 (t!374335 lt!2165914))))))

(declare-fun lambda!269372 () Int)

(declare-fun lt!2166133 () Unit!153290)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!30 (List!61130 Int Int Int) Unit!153290)

(assert (=> b!5302438 (= lt!2166133 (lemmaForallContextDepthBiggerThanTransitive!30 (t!374335 lt!2165914) lt!2166132 (zipperDepth!60 (t!374335 lt!2165914)) lambda!269372))))

(declare-fun forall!14363 (List!61130 Int) Bool)

(assert (=> b!5302438 (forall!14363 (t!374335 lt!2165914) lambda!269373)))

(declare-fun lt!2166131 () Unit!153290)

(assert (=> b!5302438 (= lt!2166131 lt!2166133)))

(declare-fun b!5302439 () Bool)

(assert (=> b!5302439 (= e!3295575 0)))

(assert (=> b!5302440 (= e!3295576 (forall!14363 lt!2165914 lambda!269374))))

(assert (= (and d!1704939 c!920686) b!5302438))

(assert (= (and d!1704939 (not c!920686)) b!5302439))

(assert (= (and d!1704939 res!2248852) b!5302440))

(declare-fun m!6339754 () Bool)

(assert (=> b!5302438 m!6339754))

(declare-fun m!6339756 () Bool)

(assert (=> b!5302438 m!6339756))

(declare-fun m!6339758 () Bool)

(assert (=> b!5302438 m!6339758))

(assert (=> b!5302438 m!6339754))

(declare-fun m!6339760 () Bool)

(assert (=> b!5302438 m!6339760))

(declare-fun m!6339762 () Bool)

(assert (=> b!5302438 m!6339762))

(assert (=> b!5302438 m!6339754))

(assert (=> b!5302438 m!6339758))

(declare-fun m!6339764 () Bool)

(assert (=> b!5302440 m!6339764))

(assert (=> b!5301389 d!1704939))

(declare-fun bs!1229849 () Bool)

(declare-fun b!5302443 () Bool)

(assert (= bs!1229849 (and b!5302443 b!5302438)))

(declare-fun lambda!269375 () Int)

(assert (=> bs!1229849 (= lambda!269375 lambda!269372)))

(declare-fun lt!2166136 () Int)

(declare-fun lambda!269376 () Int)

(assert (=> bs!1229849 (= (= lt!2166136 lt!2166132) (= lambda!269376 lambda!269373))))

(declare-fun bs!1229850 () Bool)

(assert (= bs!1229850 (and b!5302443 b!5302440)))

(assert (=> bs!1229850 (= (= lt!2166136 lt!2166134) (= lambda!269376 lambda!269374))))

(assert (=> b!5302443 true))

(declare-fun bs!1229851 () Bool)

(declare-fun b!5302445 () Bool)

(assert (= bs!1229851 (and b!5302445 b!5302438)))

(declare-fun lambda!269377 () Int)

(declare-fun lt!2166138 () Int)

(assert (=> bs!1229851 (= (= lt!2166138 lt!2166132) (= lambda!269377 lambda!269373))))

(declare-fun bs!1229852 () Bool)

(assert (= bs!1229852 (and b!5302445 b!5302440)))

(assert (=> bs!1229852 (= (= lt!2166138 lt!2166134) (= lambda!269377 lambda!269374))))

(declare-fun bs!1229853 () Bool)

(assert (= bs!1229853 (and b!5302445 b!5302443)))

(assert (=> bs!1229853 (= (= lt!2166138 lt!2166136) (= lambda!269377 lambda!269376))))

(assert (=> b!5302445 true))

(declare-fun d!1704941 () Bool)

(declare-fun e!3295578 () Bool)

(assert (=> d!1704941 e!3295578))

(declare-fun res!2248853 () Bool)

(assert (=> d!1704941 (=> (not res!2248853) (not e!3295578))))

(assert (=> d!1704941 (= res!2248853 (>= lt!2166138 0))))

(declare-fun e!3295577 () Int)

(assert (=> d!1704941 (= lt!2166138 e!3295577)))

(declare-fun c!920687 () Bool)

(assert (=> d!1704941 (= c!920687 ((_ is Cons!61006) zl!343))))

(assert (=> d!1704941 (= (zipperDepth!60 zl!343) lt!2166138)))

(assert (=> b!5302443 (= e!3295577 lt!2166136)))

(assert (=> b!5302443 (= lt!2166136 (maxBigInt!0 (contextDepth!36 (h!67454 zl!343)) (zipperDepth!60 (t!374335 zl!343))))))

(declare-fun lt!2166137 () Unit!153290)

(assert (=> b!5302443 (= lt!2166137 (lemmaForallContextDepthBiggerThanTransitive!30 (t!374335 zl!343) lt!2166136 (zipperDepth!60 (t!374335 zl!343)) lambda!269375))))

(assert (=> b!5302443 (forall!14363 (t!374335 zl!343) lambda!269376)))

(declare-fun lt!2166135 () Unit!153290)

(assert (=> b!5302443 (= lt!2166135 lt!2166137)))

(declare-fun b!5302444 () Bool)

(assert (=> b!5302444 (= e!3295577 0)))

(assert (=> b!5302445 (= e!3295578 (forall!14363 zl!343 lambda!269377))))

(assert (= (and d!1704941 c!920687) b!5302443))

(assert (= (and d!1704941 (not c!920687)) b!5302444))

(assert (= (and d!1704941 res!2248853) b!5302445))

(declare-fun m!6339766 () Bool)

(assert (=> b!5302443 m!6339766))

(declare-fun m!6339768 () Bool)

(assert (=> b!5302443 m!6339768))

(declare-fun m!6339770 () Bool)

(assert (=> b!5302443 m!6339770))

(assert (=> b!5302443 m!6339766))

(declare-fun m!6339772 () Bool)

(assert (=> b!5302443 m!6339772))

(declare-fun m!6339774 () Bool)

(assert (=> b!5302443 m!6339774))

(assert (=> b!5302443 m!6339766))

(assert (=> b!5302443 m!6339770))

(declare-fun m!6339776 () Bool)

(assert (=> b!5302445 m!6339776))

(assert (=> b!5301389 d!1704941))

(declare-fun d!1704943 () Bool)

(declare-fun lt!2166141 () Regex!14943)

(assert (=> d!1704943 (validRegex!6679 lt!2166141)))

(assert (=> d!1704943 (= lt!2166141 (generalisedUnion!872 (unfocusZipperList!385 zl!343)))))

(assert (=> d!1704943 (= (unfocusZipper!685 zl!343) lt!2166141)))

(declare-fun bs!1229854 () Bool)

(assert (= bs!1229854 d!1704943))

(declare-fun m!6339778 () Bool)

(assert (=> bs!1229854 m!6339778))

(assert (=> bs!1229854 m!6338724))

(assert (=> bs!1229854 m!6338724))

(assert (=> bs!1229854 m!6338726))

(assert (=> b!5301365 d!1704943))

(declare-fun d!1704945 () Bool)

(declare-fun lt!2166144 () Int)

(assert (=> d!1704945 (>= lt!2166144 0)))

(declare-fun e!3295581 () Int)

(assert (=> d!1704945 (= lt!2166144 e!3295581)))

(declare-fun c!920691 () Bool)

(assert (=> d!1704945 (= c!920691 ((_ is Cons!61004) (exprs!4827 lt!2165954)))))

(assert (=> d!1704945 (= (contextDepthTotal!84 lt!2165954) lt!2166144)))

(declare-fun b!5302450 () Bool)

(declare-fun regexDepthTotal!35 (Regex!14943) Int)

(assert (=> b!5302450 (= e!3295581 (+ (regexDepthTotal!35 (h!67452 (exprs!4827 lt!2165954))) (contextDepthTotal!84 (Context!8655 (t!374333 (exprs!4827 lt!2165954))))))))

(declare-fun b!5302451 () Bool)

(assert (=> b!5302451 (= e!3295581 1)))

(assert (= (and d!1704945 c!920691) b!5302450))

(assert (= (and d!1704945 (not c!920691)) b!5302451))

(declare-fun m!6339780 () Bool)

(assert (=> b!5302450 m!6339780))

(declare-fun m!6339782 () Bool)

(assert (=> b!5302450 m!6339782))

(assert (=> b!5301385 d!1704945))

(declare-fun d!1704947 () Bool)

(declare-fun lt!2166145 () Int)

(assert (=> d!1704947 (>= lt!2166145 0)))

(declare-fun e!3295582 () Int)

(assert (=> d!1704947 (= lt!2166145 e!3295582)))

(declare-fun c!920692 () Bool)

(assert (=> d!1704947 (= c!920692 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343))))))

(assert (=> d!1704947 (= (contextDepthTotal!84 (h!67454 zl!343)) lt!2166145)))

(declare-fun b!5302452 () Bool)

(assert (=> b!5302452 (= e!3295582 (+ (regexDepthTotal!35 (h!67452 (exprs!4827 (h!67454 zl!343)))) (contextDepthTotal!84 (Context!8655 (t!374333 (exprs!4827 (h!67454 zl!343)))))))))

(declare-fun b!5302453 () Bool)

(assert (=> b!5302453 (= e!3295582 1)))

(assert (= (and d!1704947 c!920692) b!5302452))

(assert (= (and d!1704947 (not c!920692)) b!5302453))

(declare-fun m!6339784 () Bool)

(assert (=> b!5302452 m!6339784))

(declare-fun m!6339786 () Bool)

(assert (=> b!5302452 m!6339786))

(assert (=> b!5301385 d!1704947))

(declare-fun b!5302454 () Bool)

(declare-fun e!3295584 () Bool)

(declare-fun e!3295589 () Bool)

(assert (=> b!5302454 (= e!3295584 e!3295589)))

(declare-fun c!920694 () Bool)

(assert (=> b!5302454 (= c!920694 ((_ is Union!14943) (regTwo!30398 r!7292)))))

(declare-fun b!5302455 () Bool)

(declare-fun e!3295587 () Bool)

(assert (=> b!5302455 (= e!3295587 e!3295584)))

(declare-fun c!920693 () Bool)

(assert (=> b!5302455 (= c!920693 ((_ is Star!14943) (regTwo!30398 r!7292)))))

(declare-fun b!5302456 () Bool)

(declare-fun res!2248857 () Bool)

(declare-fun e!3295588 () Bool)

(assert (=> b!5302456 (=> (not res!2248857) (not e!3295588))))

(declare-fun call!378078 () Bool)

(assert (=> b!5302456 (= res!2248857 call!378078)))

(assert (=> b!5302456 (= e!3295589 e!3295588)))

(declare-fun bm!378073 () Bool)

(declare-fun call!378080 () Bool)

(assert (=> bm!378073 (= call!378080 (validRegex!6679 (ite c!920694 (regTwo!30399 (regTwo!30398 r!7292)) (regTwo!30398 (regTwo!30398 r!7292)))))))

(declare-fun b!5302457 () Bool)

(declare-fun e!3295583 () Bool)

(assert (=> b!5302457 (= e!3295583 call!378080)))

(declare-fun bm!378074 () Bool)

(declare-fun call!378079 () Bool)

(assert (=> bm!378074 (= call!378078 call!378079)))

(declare-fun b!5302458 () Bool)

(declare-fun res!2248855 () Bool)

(declare-fun e!3295585 () Bool)

(assert (=> b!5302458 (=> res!2248855 e!3295585)))

(assert (=> b!5302458 (= res!2248855 (not ((_ is Concat!23788) (regTwo!30398 r!7292))))))

(assert (=> b!5302458 (= e!3295589 e!3295585)))

(declare-fun bm!378075 () Bool)

(assert (=> bm!378075 (= call!378079 (validRegex!6679 (ite c!920693 (reg!15272 (regTwo!30398 r!7292)) (ite c!920694 (regOne!30399 (regTwo!30398 r!7292)) (regOne!30398 (regTwo!30398 r!7292))))))))

(declare-fun d!1704949 () Bool)

(declare-fun res!2248856 () Bool)

(assert (=> d!1704949 (=> res!2248856 e!3295587)))

(assert (=> d!1704949 (= res!2248856 ((_ is ElementMatch!14943) (regTwo!30398 r!7292)))))

(assert (=> d!1704949 (= (validRegex!6679 (regTwo!30398 r!7292)) e!3295587)))

(declare-fun b!5302459 () Bool)

(assert (=> b!5302459 (= e!3295588 call!378080)))

(declare-fun b!5302460 () Bool)

(declare-fun e!3295586 () Bool)

(assert (=> b!5302460 (= e!3295584 e!3295586)))

(declare-fun res!2248854 () Bool)

(assert (=> b!5302460 (= res!2248854 (not (nullable!5112 (reg!15272 (regTwo!30398 r!7292)))))))

(assert (=> b!5302460 (=> (not res!2248854) (not e!3295586))))

(declare-fun b!5302461 () Bool)

(assert (=> b!5302461 (= e!3295586 call!378079)))

(declare-fun b!5302462 () Bool)

(assert (=> b!5302462 (= e!3295585 e!3295583)))

(declare-fun res!2248858 () Bool)

(assert (=> b!5302462 (=> (not res!2248858) (not e!3295583))))

(assert (=> b!5302462 (= res!2248858 call!378078)))

(assert (= (and d!1704949 (not res!2248856)) b!5302455))

(assert (= (and b!5302455 c!920693) b!5302460))

(assert (= (and b!5302455 (not c!920693)) b!5302454))

(assert (= (and b!5302460 res!2248854) b!5302461))

(assert (= (and b!5302454 c!920694) b!5302456))

(assert (= (and b!5302454 (not c!920694)) b!5302458))

(assert (= (and b!5302456 res!2248857) b!5302459))

(assert (= (and b!5302458 (not res!2248855)) b!5302462))

(assert (= (and b!5302462 res!2248858) b!5302457))

(assert (= (or b!5302459 b!5302457) bm!378073))

(assert (= (or b!5302456 b!5302462) bm!378074))

(assert (= (or b!5302461 bm!378074) bm!378075))

(declare-fun m!6339788 () Bool)

(assert (=> bm!378073 m!6339788))

(declare-fun m!6339790 () Bool)

(assert (=> bm!378075 m!6339790))

(declare-fun m!6339792 () Bool)

(assert (=> b!5302460 m!6339792))

(assert (=> b!5301386 d!1704949))

(declare-fun e!3295590 () Bool)

(declare-fun d!1704951 () Bool)

(assert (=> d!1704951 (= (matchZipper!1187 ((_ map or) lt!2165930 lt!2165948) (t!374334 s!2326)) e!3295590)))

(declare-fun res!2248859 () Bool)

(assert (=> d!1704951 (=> res!2248859 e!3295590)))

(assert (=> d!1704951 (= res!2248859 (matchZipper!1187 lt!2165930 (t!374334 s!2326)))))

(declare-fun lt!2166146 () Unit!153290)

(assert (=> d!1704951 (= lt!2166146 (choose!39644 lt!2165930 lt!2165948 (t!374334 s!2326)))))

(assert (=> d!1704951 (= (lemmaZipperConcatMatchesSameAsBothZippers!180 lt!2165930 lt!2165948 (t!374334 s!2326)) lt!2166146)))

(declare-fun b!5302463 () Bool)

(assert (=> b!5302463 (= e!3295590 (matchZipper!1187 lt!2165948 (t!374334 s!2326)))))

(assert (= (and d!1704951 (not res!2248859)) b!5302463))

(assert (=> d!1704951 m!6338758))

(assert (=> d!1704951 m!6338612))

(declare-fun m!6339794 () Bool)

(assert (=> d!1704951 m!6339794))

(assert (=> b!5302463 m!6338678))

(assert (=> b!5301367 d!1704951))

(assert (=> b!5301367 d!1704921))

(declare-fun d!1704953 () Bool)

(declare-fun c!920695 () Bool)

(assert (=> d!1704953 (= c!920695 (isEmpty!32971 (t!374334 s!2326)))))

(declare-fun e!3295591 () Bool)

(assert (=> d!1704953 (= (matchZipper!1187 ((_ map or) lt!2165930 lt!2165948) (t!374334 s!2326)) e!3295591)))

(declare-fun b!5302464 () Bool)

(assert (=> b!5302464 (= e!3295591 (nullableZipper!1324 ((_ map or) lt!2165930 lt!2165948)))))

(declare-fun b!5302465 () Bool)

(assert (=> b!5302465 (= e!3295591 (matchZipper!1187 (derivationStepZipper!1186 ((_ map or) lt!2165930 lt!2165948) (head!11366 (t!374334 s!2326))) (tail!10463 (t!374334 s!2326))))))

(assert (= (and d!1704953 c!920695) b!5302464))

(assert (= (and d!1704953 (not c!920695)) b!5302465))

(assert (=> d!1704953 m!6339286))

(declare-fun m!6339796 () Bool)

(assert (=> b!5302464 m!6339796))

(assert (=> b!5302465 m!6339290))

(assert (=> b!5302465 m!6339290))

(declare-fun m!6339798 () Bool)

(assert (=> b!5302465 m!6339798))

(assert (=> b!5302465 m!6339294))

(assert (=> b!5302465 m!6339798))

(assert (=> b!5302465 m!6339294))

(declare-fun m!6339800 () Bool)

(assert (=> b!5302465 m!6339800))

(assert (=> b!5301367 d!1704953))

(declare-fun d!1704955 () Bool)

(assert (=> d!1704955 (= (nullable!5112 (regOne!30398 (regOne!30398 r!7292))) (nullableFct!1476 (regOne!30398 (regOne!30398 r!7292))))))

(declare-fun bs!1229855 () Bool)

(assert (= bs!1229855 d!1704955))

(declare-fun m!6339802 () Bool)

(assert (=> bs!1229855 m!6339802))

(assert (=> b!5301387 d!1704955))

(declare-fun b!5302473 () Bool)

(declare-fun e!3295597 () Bool)

(declare-fun tp!1478400 () Bool)

(assert (=> b!5302473 (= e!3295597 tp!1478400)))

(declare-fun b!5302472 () Bool)

(declare-fun e!3295596 () Bool)

(declare-fun tp!1478401 () Bool)

(assert (=> b!5302472 (= e!3295596 (and (inv!80604 (h!67454 (t!374335 zl!343))) e!3295597 tp!1478401))))

(assert (=> b!5301373 (= tp!1478331 e!3295596)))

(assert (= b!5302472 b!5302473))

(assert (= (and b!5301373 ((_ is Cons!61006) (t!374335 zl!343))) b!5302472))

(declare-fun m!6339804 () Bool)

(assert (=> b!5302472 m!6339804))

(declare-fun b!5302478 () Bool)

(declare-fun e!3295600 () Bool)

(declare-fun tp!1478406 () Bool)

(declare-fun tp!1478407 () Bool)

(assert (=> b!5302478 (= e!3295600 (and tp!1478406 tp!1478407))))

(assert (=> b!5301388 (= tp!1478333 e!3295600)))

(assert (= (and b!5301388 ((_ is Cons!61004) (exprs!4827 (h!67454 zl!343)))) b!5302478))

(declare-fun condSetEmpty!34061 () Bool)

(assert (=> setNonEmpty!34055 (= condSetEmpty!34061 (= setRest!34055 ((as const (Array Context!8654 Bool)) false)))))

(declare-fun setRes!34061 () Bool)

(assert (=> setNonEmpty!34055 (= tp!1478334 setRes!34061)))

(declare-fun setIsEmpty!34061 () Bool)

(assert (=> setIsEmpty!34061 setRes!34061))

(declare-fun setNonEmpty!34061 () Bool)

(declare-fun e!3295603 () Bool)

(declare-fun setElem!34061 () Context!8654)

(declare-fun tp!1478412 () Bool)

(assert (=> setNonEmpty!34061 (= setRes!34061 (and tp!1478412 (inv!80604 setElem!34061) e!3295603))))

(declare-fun setRest!34061 () (InoxSet Context!8654))

(assert (=> setNonEmpty!34061 (= setRest!34055 ((_ map or) (store ((as const (Array Context!8654 Bool)) false) setElem!34061 true) setRest!34061))))

(declare-fun b!5302483 () Bool)

(declare-fun tp!1478413 () Bool)

(assert (=> b!5302483 (= e!3295603 tp!1478413)))

(assert (= (and setNonEmpty!34055 condSetEmpty!34061) setIsEmpty!34061))

(assert (= (and setNonEmpty!34055 (not condSetEmpty!34061)) setNonEmpty!34061))

(assert (= setNonEmpty!34061 b!5302483))

(declare-fun m!6339806 () Bool)

(assert (=> setNonEmpty!34061 m!6339806))

(declare-fun b!5302484 () Bool)

(declare-fun e!3295604 () Bool)

(declare-fun tp!1478414 () Bool)

(declare-fun tp!1478415 () Bool)

(assert (=> b!5302484 (= e!3295604 (and tp!1478414 tp!1478415))))

(assert (=> b!5301362 (= tp!1478335 e!3295604)))

(assert (= (and b!5301362 ((_ is Cons!61004) (exprs!4827 setElem!34055))) b!5302484))

(declare-fun b!5302497 () Bool)

(declare-fun e!3295607 () Bool)

(declare-fun tp!1478428 () Bool)

(assert (=> b!5302497 (= e!3295607 tp!1478428)))

(declare-fun b!5302496 () Bool)

(declare-fun tp!1478427 () Bool)

(declare-fun tp!1478429 () Bool)

(assert (=> b!5302496 (= e!3295607 (and tp!1478427 tp!1478429))))

(declare-fun b!5302498 () Bool)

(declare-fun tp!1478430 () Bool)

(declare-fun tp!1478426 () Bool)

(assert (=> b!5302498 (= e!3295607 (and tp!1478430 tp!1478426))))

(assert (=> b!5301359 (= tp!1478332 e!3295607)))

(declare-fun b!5302495 () Bool)

(assert (=> b!5302495 (= e!3295607 tp_is_empty!39139)))

(assert (= (and b!5301359 ((_ is ElementMatch!14943) (regOne!30399 r!7292))) b!5302495))

(assert (= (and b!5301359 ((_ is Concat!23788) (regOne!30399 r!7292))) b!5302496))

(assert (= (and b!5301359 ((_ is Star!14943) (regOne!30399 r!7292))) b!5302497))

(assert (= (and b!5301359 ((_ is Union!14943) (regOne!30399 r!7292))) b!5302498))

(declare-fun b!5302501 () Bool)

(declare-fun e!3295608 () Bool)

(declare-fun tp!1478433 () Bool)

(assert (=> b!5302501 (= e!3295608 tp!1478433)))

(declare-fun b!5302500 () Bool)

(declare-fun tp!1478432 () Bool)

(declare-fun tp!1478434 () Bool)

(assert (=> b!5302500 (= e!3295608 (and tp!1478432 tp!1478434))))

(declare-fun b!5302502 () Bool)

(declare-fun tp!1478435 () Bool)

(declare-fun tp!1478431 () Bool)

(assert (=> b!5302502 (= e!3295608 (and tp!1478435 tp!1478431))))

(assert (=> b!5301359 (= tp!1478329 e!3295608)))

(declare-fun b!5302499 () Bool)

(assert (=> b!5302499 (= e!3295608 tp_is_empty!39139)))

(assert (= (and b!5301359 ((_ is ElementMatch!14943) (regTwo!30399 r!7292))) b!5302499))

(assert (= (and b!5301359 ((_ is Concat!23788) (regTwo!30399 r!7292))) b!5302500))

(assert (= (and b!5301359 ((_ is Star!14943) (regTwo!30399 r!7292))) b!5302501))

(assert (= (and b!5301359 ((_ is Union!14943) (regTwo!30399 r!7292))) b!5302502))

(declare-fun b!5302505 () Bool)

(declare-fun e!3295609 () Bool)

(declare-fun tp!1478438 () Bool)

(assert (=> b!5302505 (= e!3295609 tp!1478438)))

(declare-fun b!5302504 () Bool)

(declare-fun tp!1478437 () Bool)

(declare-fun tp!1478439 () Bool)

(assert (=> b!5302504 (= e!3295609 (and tp!1478437 tp!1478439))))

(declare-fun b!5302506 () Bool)

(declare-fun tp!1478440 () Bool)

(declare-fun tp!1478436 () Bool)

(assert (=> b!5302506 (= e!3295609 (and tp!1478440 tp!1478436))))

(assert (=> b!5301370 (= tp!1478336 e!3295609)))

(declare-fun b!5302503 () Bool)

(assert (=> b!5302503 (= e!3295609 tp_is_empty!39139)))

(assert (= (and b!5301370 ((_ is ElementMatch!14943) (reg!15272 r!7292))) b!5302503))

(assert (= (and b!5301370 ((_ is Concat!23788) (reg!15272 r!7292))) b!5302504))

(assert (= (and b!5301370 ((_ is Star!14943) (reg!15272 r!7292))) b!5302505))

(assert (= (and b!5301370 ((_ is Union!14943) (reg!15272 r!7292))) b!5302506))

(declare-fun b!5302509 () Bool)

(declare-fun e!3295610 () Bool)

(declare-fun tp!1478443 () Bool)

(assert (=> b!5302509 (= e!3295610 tp!1478443)))

(declare-fun b!5302508 () Bool)

(declare-fun tp!1478442 () Bool)

(declare-fun tp!1478444 () Bool)

(assert (=> b!5302508 (= e!3295610 (and tp!1478442 tp!1478444))))

(declare-fun b!5302510 () Bool)

(declare-fun tp!1478445 () Bool)

(declare-fun tp!1478441 () Bool)

(assert (=> b!5302510 (= e!3295610 (and tp!1478445 tp!1478441))))

(assert (=> b!5301361 (= tp!1478330 e!3295610)))

(declare-fun b!5302507 () Bool)

(assert (=> b!5302507 (= e!3295610 tp_is_empty!39139)))

(assert (= (and b!5301361 ((_ is ElementMatch!14943) (regOne!30398 r!7292))) b!5302507))

(assert (= (and b!5301361 ((_ is Concat!23788) (regOne!30398 r!7292))) b!5302508))

(assert (= (and b!5301361 ((_ is Star!14943) (regOne!30398 r!7292))) b!5302509))

(assert (= (and b!5301361 ((_ is Union!14943) (regOne!30398 r!7292))) b!5302510))

(declare-fun b!5302513 () Bool)

(declare-fun e!3295611 () Bool)

(declare-fun tp!1478448 () Bool)

(assert (=> b!5302513 (= e!3295611 tp!1478448)))

(declare-fun b!5302512 () Bool)

(declare-fun tp!1478447 () Bool)

(declare-fun tp!1478449 () Bool)

(assert (=> b!5302512 (= e!3295611 (and tp!1478447 tp!1478449))))

(declare-fun b!5302514 () Bool)

(declare-fun tp!1478450 () Bool)

(declare-fun tp!1478446 () Bool)

(assert (=> b!5302514 (= e!3295611 (and tp!1478450 tp!1478446))))

(assert (=> b!5301361 (= tp!1478337 e!3295611)))

(declare-fun b!5302511 () Bool)

(assert (=> b!5302511 (= e!3295611 tp_is_empty!39139)))

(assert (= (and b!5301361 ((_ is ElementMatch!14943) (regTwo!30398 r!7292))) b!5302511))

(assert (= (and b!5301361 ((_ is Concat!23788) (regTwo!30398 r!7292))) b!5302512))

(assert (= (and b!5301361 ((_ is Star!14943) (regTwo!30398 r!7292))) b!5302513))

(assert (= (and b!5301361 ((_ is Union!14943) (regTwo!30398 r!7292))) b!5302514))

(declare-fun b!5302519 () Bool)

(declare-fun e!3295614 () Bool)

(declare-fun tp!1478453 () Bool)

(assert (=> b!5302519 (= e!3295614 (and tp_is_empty!39139 tp!1478453))))

(assert (=> b!5301366 (= tp!1478328 e!3295614)))

(assert (= (and b!5301366 ((_ is Cons!61005) (t!374334 s!2326))) b!5302519))

(declare-fun b_lambda!204279 () Bool)

(assert (= b_lambda!204275 (or b!5301358 b_lambda!204279)))

(declare-fun bs!1229856 () Bool)

(declare-fun d!1704957 () Bool)

(assert (= bs!1229856 (and d!1704957 b!5301358)))

(assert (=> bs!1229856 (= (dynLambda!24121 lambda!269259 (h!67454 zl!343)) (derivationStepZipperUp!315 (h!67454 zl!343) (h!67453 s!2326)))))

(assert (=> bs!1229856 m!6338688))

(assert (=> d!1704869 d!1704957))

(declare-fun b_lambda!204281 () Bool)

(assert (= b_lambda!204273 (or b!5301358 b_lambda!204281)))

(declare-fun bs!1229857 () Bool)

(declare-fun d!1704959 () Bool)

(assert (= bs!1229857 (and d!1704959 b!5301358)))

(assert (=> bs!1229857 (= (dynLambda!24121 lambda!269259 lt!2165954) (derivationStepZipperUp!315 lt!2165954 (h!67453 s!2326)))))

(assert (=> bs!1229857 m!6338738))

(assert (=> d!1704797 d!1704959))

(declare-fun b_lambda!204283 () Bool)

(assert (= b_lambda!204277 (or b!5301358 b_lambda!204283)))

(declare-fun bs!1229858 () Bool)

(declare-fun d!1704961 () Bool)

(assert (= bs!1229858 (and d!1704961 b!5301358)))

(assert (=> bs!1229858 (= (dynLambda!24121 lambda!269259 lt!2165925) (derivationStepZipperUp!315 lt!2165925 (h!67453 s!2326)))))

(assert (=> bs!1229858 m!6338592))

(assert (=> d!1704935 d!1704961))

(check-sat (not b!5302198) (not b!5302111) (not b!5302231) (not bm!378022) (not b!5302057) (not d!1704883) (not bm!378066) (not b!5302211) (not b!5302170) (not b!5302189) (not d!1704805) (not b!5302120) (not d!1704927) (not b!5302422) (not b!5302519) (not b!5302416) (not b!5302419) (not b!5301989) (not b!5302105) (not d!1704847) (not bm!378021) (not b!5302204) (not b!5302408) (not bm!378015) (not b!5302151) (not b!5302483) (not b!5302152) (not b!5302180) (not b!5301966) (not b!5302386) (not d!1704885) (not b!5302184) (not b!5302409) (not b!5302452) (not d!1704915) (not d!1704917) (not b!5302150) (not b!5302405) (not d!1704811) (not b!5302146) (not b!5302506) (not b!5302162) (not b!5302193) (not b_lambda!204281) (not b!5302392) (not d!1704801) (not b!5302201) (not d!1704817) (not bm!378050) (not b!5302160) (not d!1704919) (not b!5301990) (not b!5302192) (not b!5302413) (not b!5302119) (not b!5302406) (not b!5302369) tp_is_empty!39139 (not b!5302472) (not bm!378073) (not d!1704937) (not d!1704855) (not d!1704879) (not b!5302321) (not b!5302117) (not b!5302313) (not bs!1229856) (not bm!378024) (not d!1704815) (not bm!378044) (not b!5302209) (not d!1704865) (not bm!378075) (not b!5302029) (not d!1704951) (not b!5301965) (not b!5302210) (not b!5302504) (not b!5302319) (not b!5302054) (not b!5302118) (not bm!378067) (not b!5302498) (not b!5302053) (not b!5302155) (not bm!378047) (not b!5302020) (not b!5302426) (not b!5302445) (not d!1704807) (not b!5302216) (not b!5302194) (not b!5302509) (not bm!378056) (not b!5302478) (not b!5302167) (not bm!378043) (not b!5302428) (not b!5302431) (not b!5302440) (not d!1704869) (not b!5302165) (not b!5302415) (not b!5302299) (not d!1704903) (not b!5302059) (not b!5302292) (not b!5302343) (not d!1704859) (not b!5302450) (not b!5302286) (not b!5302032) (not b!5302311) (not b!5302501) (not b!5302484) (not d!1704835) (not b!5302500) (not bm!378049) (not d!1704809) (not d!1704841) (not b!5302497) (not b!5302332) (not d!1704849) (not b!5302196) (not d!1704857) (not b!5302062) (not b!5301983) (not b!5302195) (not d!1704827) (not b!5302030) (not b!5302430) (not d!1704929) (not bm!378070) (not b!5302219) (not b!5302159) (not b!5302208) (not b!5302290) (not b_lambda!204279) (not b!5302505) (not b!5302420) (not b!5302263) (not d!1704839) (not b!5302164) (not b!5302157) (not b!5302161) (not d!1704905) (not d!1704955) (not b!5302294) (not bm!378012) (not d!1704853) (not d!1704793) (not d!1704787) (not d!1704845) (not bm!378053) (not b!5301988) (not b!5302215) (not b!5302464) (not bs!1229858) (not d!1704821) (not bm!378041) (not d!1704877) (not d!1704909) (not d!1704933) (not bm!378023) (not b!5302058) (not bm!378027) (not bs!1229857) (not b!5302414) (not d!1704935) (not d!1704797) (not b!5302056) (not setNonEmpty!34061) (not d!1704831) (not b!5302153) (not b!5302429) (not bm!378064) (not d!1704803) (not b!5302166) (not bm!378072) (not b!5302443) (not b!5302314) (not b!5302205) (not b!5301981) (not bm!378055) (not b!5302024) (not b!5302176) (not b!5302460) (not b!5302214) (not b!5302287) (not d!1704911) (not d!1704851) (not d!1704925) (not bm!378020) (not bm!378069) (not b!5302285) (not b!5302411) (not d!1704861) (not b_lambda!204283) (not b!5302229) (not b!5302502) (not d!1704899) (not b!5302496) (not b!5302310) (not b!5302513) (not d!1704819) (not b!5302206) (not b!5302508) (not b!5302473) (not b!5302224) (not b!5302400) (not b!5302396) (not b!5302438) (not bm!378011) (not b!5302148) (not d!1704829) (not b!5302427) (not b!5302123) (not d!1704921) (not b!5302512) (not d!1704913) (not b!5302383) (not b!5302226) (not b!5302115) (not b!5302423) (not b!5302418) (not d!1704923) (not d!1704863) (not d!1704823) (not b!5302114) (not d!1704833) (not d!1704931) (not b!5302289) (not b!5302190) (not b!5302421) (not b!5302221) (not b!5302200) (not d!1704881) (not b!5302510) (not b!5302465) (not d!1704825) (not d!1704837) (not b!5302025) (not b!5302463) (not b!5302514) (not d!1704953) (not b!5302185) (not bm!378025) (not d!1704791) (not b!5302378) (not b!5301986) (not bm!378071) (not d!1704943) (not b!5302401) (not bm!378026) (not b!5302199))
(check-sat)
