; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563950 () Bool)

(assert start!563950)

(declare-fun b!5356938 () Bool)

(assert (=> b!5356938 true))

(assert (=> b!5356938 true))

(declare-fun lambda!275626 () Int)

(declare-fun lambda!275625 () Int)

(assert (=> b!5356938 (not (= lambda!275626 lambda!275625))))

(assert (=> b!5356938 true))

(assert (=> b!5356938 true))

(declare-fun b!5356961 () Bool)

(assert (=> b!5356961 true))

(declare-fun bs!1241190 () Bool)

(declare-fun b!5356929 () Bool)

(assert (= bs!1241190 (and b!5356929 b!5356938)))

(declare-datatypes ((C!30388 0))(
  ( (C!30389 (val!24896 Int)) )
))
(declare-datatypes ((Regex!15059 0))(
  ( (ElementMatch!15059 (c!932657 C!30388)) (Concat!23904 (regOne!30630 Regex!15059) (regTwo!30630 Regex!15059)) (EmptyExpr!15059) (Star!15059 (reg!15388 Regex!15059)) (EmptyLang!15059) (Union!15059 (regOne!30631 Regex!15059) (regTwo!30631 Regex!15059)) )
))
(declare-fun r!7292 () Regex!15059)

(declare-fun lt!2183059 () Regex!15059)

(declare-fun lambda!275628 () Int)

(assert (=> bs!1241190 (= (= lt!2183059 (regOne!30630 r!7292)) (= lambda!275628 lambda!275625))))

(assert (=> bs!1241190 (not (= lambda!275628 lambda!275626))))

(assert (=> b!5356929 true))

(assert (=> b!5356929 true))

(assert (=> b!5356929 true))

(declare-fun lambda!275629 () Int)

(assert (=> bs!1241190 (not (= lambda!275629 lambda!275625))))

(assert (=> bs!1241190 (= (= lt!2183059 (regOne!30630 r!7292)) (= lambda!275629 lambda!275626))))

(assert (=> b!5356929 (not (= lambda!275629 lambda!275628))))

(assert (=> b!5356929 true))

(assert (=> b!5356929 true))

(assert (=> b!5356929 true))

(declare-fun b!5356928 () Bool)

(declare-fun res!2273227 () Bool)

(declare-fun e!3324948 () Bool)

(assert (=> b!5356928 (=> res!2273227 e!3324948)))

(declare-fun e!3324947 () Bool)

(assert (=> b!5356928 (= res!2273227 e!3324947)))

(declare-fun res!2273211 () Bool)

(assert (=> b!5356928 (=> (not res!2273211) (not e!3324947))))

(get-info :version)

(assert (=> b!5356928 (= res!2273211 ((_ is Concat!23904) (regOne!30630 r!7292)))))

(declare-fun e!3324954 () Bool)

(declare-fun validRegex!6795 (Regex!15059) Bool)

(assert (=> b!5356929 (= e!3324954 (validRegex!6795 lt!2183059))))

(declare-fun Exists!2240 (Int) Bool)

(assert (=> b!5356929 (= (Exists!2240 lambda!275628) (Exists!2240 lambda!275629))))

(declare-datatypes ((List!61476 0))(
  ( (Nil!61352) (Cons!61352 (h!67800 C!30388) (t!374697 List!61476)) )
))
(declare-fun s!2326 () List!61476)

(declare-datatypes ((Unit!153754 0))(
  ( (Unit!153755) )
))
(declare-fun lt!2183038 () Unit!153754)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!894 (Regex!15059 Regex!15059 List!61476) Unit!153754)

(assert (=> b!5356929 (= lt!2183038 (lemmaExistCutMatchRandMatchRSpecEquivalent!894 lt!2183059 (regTwo!30630 r!7292) s!2326))))

(declare-datatypes ((tuple2!64516 0))(
  ( (tuple2!64517 (_1!35561 List!61476) (_2!35561 List!61476)) )
))
(declare-datatypes ((Option!15170 0))(
  ( (None!15169) (Some!15169 (v!51198 tuple2!64516)) )
))
(declare-fun isDefined!11873 (Option!15170) Bool)

(declare-fun findConcatSeparation!1584 (Regex!15059 Regex!15059 List!61476 List!61476 List!61476) Option!15170)

(assert (=> b!5356929 (= (isDefined!11873 (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)) (Exists!2240 lambda!275628))))

(declare-fun lt!2183044 () Unit!153754)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1348 (Regex!15059 Regex!15059 List!61476) Unit!153754)

(assert (=> b!5356929 (= lt!2183044 (lemmaFindConcatSeparationEquivalentToExists!1348 lt!2183059 (regTwo!30630 r!7292) s!2326))))

(declare-fun b!5356930 () Bool)

(declare-fun e!3324952 () Bool)

(declare-fun e!3324956 () Bool)

(assert (=> b!5356930 (= e!3324952 e!3324956)))

(declare-fun res!2273215 () Bool)

(assert (=> b!5356930 (=> res!2273215 e!3324956)))

(declare-datatypes ((List!61477 0))(
  ( (Nil!61353) (Cons!61353 (h!67801 Regex!15059) (t!374698 List!61477)) )
))
(declare-datatypes ((Context!8886 0))(
  ( (Context!8887 (exprs!4943 List!61477)) )
))
(declare-fun lt!2183035 () Context!8886)

(declare-fun lt!2183056 () Regex!15059)

(declare-datatypes ((List!61478 0))(
  ( (Nil!61354) (Cons!61354 (h!67802 Context!8886) (t!374699 List!61478)) )
))
(declare-fun unfocusZipper!801 (List!61478) Regex!15059)

(assert (=> b!5356930 (= res!2273215 (not (= (unfocusZipper!801 (Cons!61354 lt!2183035 Nil!61354)) lt!2183056)))))

(declare-fun lt!2183047 () Regex!15059)

(assert (=> b!5356930 (= lt!2183056 (Concat!23904 (reg!15388 (regOne!30630 r!7292)) lt!2183047))))

(declare-fun b!5356931 () Bool)

(declare-fun e!3324943 () Bool)

(assert (=> b!5356931 (= e!3324943 e!3324954)))

(declare-fun res!2273210 () Bool)

(assert (=> b!5356931 (=> res!2273210 e!3324954)))

(declare-fun lt!2183063 () Bool)

(assert (=> b!5356931 (= res!2273210 (not lt!2183063))))

(declare-fun e!3324957 () Bool)

(assert (=> b!5356931 e!3324957))

(declare-fun res!2273219 () Bool)

(assert (=> b!5356931 (=> (not res!2273219) (not e!3324957))))

(declare-fun matchR!7244 (Regex!15059 List!61476) Bool)

(declare-fun matchRSpec!2162 (Regex!15059 List!61476) Bool)

(assert (=> b!5356931 (= res!2273219 (= (matchR!7244 lt!2183056 s!2326) (matchRSpec!2162 lt!2183056 s!2326)))))

(declare-fun lt!2183061 () Unit!153754)

(declare-fun mainMatchTheorem!2162 (Regex!15059 List!61476) Unit!153754)

(assert (=> b!5356931 (= lt!2183061 (mainMatchTheorem!2162 lt!2183056 s!2326))))

(declare-fun b!5356932 () Bool)

(declare-fun e!3324955 () Unit!153754)

(declare-fun Unit!153756 () Unit!153754)

(assert (=> b!5356932 (= e!3324955 Unit!153756)))

(declare-fun b!5356933 () Bool)

(declare-fun res!2273206 () Bool)

(declare-fun e!3324942 () Bool)

(assert (=> b!5356933 (=> res!2273206 e!3324942)))

(declare-fun zl!343 () List!61478)

(declare-fun isEmpty!33319 (List!61477) Bool)

(assert (=> b!5356933 (= res!2273206 (isEmpty!33319 (t!374698 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun b!5356934 () Bool)

(declare-fun res!2273209 () Bool)

(declare-fun e!3324946 () Bool)

(assert (=> b!5356934 (=> res!2273209 e!3324946)))

(declare-fun isEmpty!33320 (List!61478) Bool)

(assert (=> b!5356934 (= res!2273209 (not (isEmpty!33320 (t!374699 zl!343))))))

(declare-fun b!5356935 () Bool)

(declare-fun res!2273224 () Bool)

(assert (=> b!5356935 (=> res!2273224 e!3324948)))

(assert (=> b!5356935 (= res!2273224 (or ((_ is Concat!23904) (regOne!30630 r!7292)) (not ((_ is Star!15059) (regOne!30630 r!7292)))))))

(declare-fun b!5356936 () Bool)

(declare-fun res!2273217 () Bool)

(assert (=> b!5356936 (=> res!2273217 e!3324946)))

(declare-fun generalisedConcat!728 (List!61477) Regex!15059)

(assert (=> b!5356936 (= res!2273217 (not (= r!7292 (generalisedConcat!728 (exprs!4943 (h!67802 zl!343))))))))

(assert (=> b!5356938 (= e!3324946 e!3324942)))

(declare-fun res!2273205 () Bool)

(assert (=> b!5356938 (=> res!2273205 e!3324942)))

(declare-fun lt!2183064 () Bool)

(assert (=> b!5356938 (= res!2273205 (or (not (= lt!2183063 lt!2183064)) ((_ is Nil!61352) s!2326)))))

(assert (=> b!5356938 (= (Exists!2240 lambda!275625) (Exists!2240 lambda!275626))))

(declare-fun lt!2183042 () Unit!153754)

(assert (=> b!5356938 (= lt!2183042 (lemmaExistCutMatchRandMatchRSpecEquivalent!894 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326))))

(assert (=> b!5356938 (= lt!2183064 (Exists!2240 lambda!275625))))

(assert (=> b!5356938 (= lt!2183064 (isDefined!11873 (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)))))

(declare-fun lt!2183054 () Unit!153754)

(assert (=> b!5356938 (= lt!2183054 (lemmaFindConcatSeparationEquivalentToExists!1348 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326))))

(declare-fun b!5356939 () Bool)

(declare-fun e!3324953 () Bool)

(assert (=> b!5356939 (= e!3324953 (not e!3324946))))

(declare-fun res!2273212 () Bool)

(assert (=> b!5356939 (=> res!2273212 e!3324946)))

(assert (=> b!5356939 (= res!2273212 (not ((_ is Cons!61354) zl!343)))))

(declare-fun lt!2183052 () Bool)

(assert (=> b!5356939 (= lt!2183063 lt!2183052)))

(assert (=> b!5356939 (= lt!2183052 (matchRSpec!2162 r!7292 s!2326))))

(assert (=> b!5356939 (= lt!2183063 (matchR!7244 r!7292 s!2326))))

(declare-fun lt!2183060 () Unit!153754)

(assert (=> b!5356939 (= lt!2183060 (mainMatchTheorem!2162 r!7292 s!2326))))

(declare-fun b!5356940 () Bool)

(declare-fun res!2273216 () Bool)

(assert (=> b!5356940 (=> res!2273216 e!3324943)))

(declare-fun lt!2183049 () Context!8886)

(assert (=> b!5356940 (= res!2273216 (not (= (unfocusZipper!801 (Cons!61354 lt!2183049 Nil!61354)) lt!2183047)))))

(declare-fun b!5356941 () Bool)

(declare-fun e!3324960 () Bool)

(declare-fun e!3324949 () Bool)

(assert (=> b!5356941 (= e!3324960 e!3324949)))

(declare-fun res!2273207 () Bool)

(assert (=> b!5356941 (=> res!2273207 e!3324949)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2183039 () (InoxSet Context!8886))

(declare-fun lt!2183046 () (InoxSet Context!8886))

(assert (=> b!5356941 (= res!2273207 (not (= lt!2183039 lt!2183046)))))

(declare-fun lambda!275627 () Int)

(declare-fun lt!2183062 () (InoxSet Context!8886))

(declare-fun flatMap!786 ((InoxSet Context!8886) Int) (InoxSet Context!8886))

(declare-fun derivationStepZipperUp!431 (Context!8886 C!30388) (InoxSet Context!8886))

(assert (=> b!5356941 (= (flatMap!786 lt!2183062 lambda!275627) (derivationStepZipperUp!431 lt!2183035 (h!67800 s!2326)))))

(declare-fun lt!2183037 () Unit!153754)

(declare-fun lemmaFlatMapOnSingletonSet!318 ((InoxSet Context!8886) Context!8886 Int) Unit!153754)

(assert (=> b!5356941 (= lt!2183037 (lemmaFlatMapOnSingletonSet!318 lt!2183062 lt!2183035 lambda!275627))))

(declare-fun lt!2183032 () (InoxSet Context!8886))

(assert (=> b!5356941 (= lt!2183032 (derivationStepZipperUp!431 lt!2183035 (h!67800 s!2326)))))

(declare-fun derivationStepZipper!1298 ((InoxSet Context!8886) C!30388) (InoxSet Context!8886))

(assert (=> b!5356941 (= lt!2183039 (derivationStepZipper!1298 lt!2183062 (h!67800 s!2326)))))

(assert (=> b!5356941 (= lt!2183062 (store ((as const (Array Context!8886 Bool)) false) lt!2183035 true))))

(declare-fun lt!2183036 () List!61477)

(assert (=> b!5356941 (= lt!2183035 (Context!8887 (Cons!61353 (reg!15388 (regOne!30630 r!7292)) lt!2183036)))))

(declare-fun setIsEmpty!34657 () Bool)

(declare-fun setRes!34657 () Bool)

(assert (=> setIsEmpty!34657 setRes!34657))

(declare-fun b!5356942 () Bool)

(declare-fun e!3324944 () Bool)

(declare-fun tp!1487869 () Bool)

(declare-fun tp!1487876 () Bool)

(assert (=> b!5356942 (= e!3324944 (and tp!1487869 tp!1487876))))

(declare-fun b!5356943 () Bool)

(declare-fun Unit!153757 () Unit!153754)

(assert (=> b!5356943 (= e!3324955 Unit!153757)))

(declare-fun lt!2183065 () (InoxSet Context!8886))

(declare-fun lt!2183043 () (InoxSet Context!8886))

(declare-fun lt!2183053 () Unit!153754)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!296 ((InoxSet Context!8886) (InoxSet Context!8886) List!61476) Unit!153754)

(assert (=> b!5356943 (= lt!2183053 (lemmaZipperConcatMatchesSameAsBothZippers!296 lt!2183065 lt!2183043 (t!374697 s!2326)))))

(declare-fun res!2273228 () Bool)

(declare-fun matchZipper!1303 ((InoxSet Context!8886) List!61476) Bool)

(assert (=> b!5356943 (= res!2273228 (matchZipper!1303 lt!2183065 (t!374697 s!2326)))))

(declare-fun e!3324950 () Bool)

(assert (=> b!5356943 (=> res!2273228 e!3324950)))

(assert (=> b!5356943 (= (matchZipper!1303 ((_ map or) lt!2183065 lt!2183043) (t!374697 s!2326)) e!3324950)))

(declare-fun b!5356944 () Bool)

(assert (=> b!5356944 (= e!3324956 e!3324943)))

(declare-fun res!2273218 () Bool)

(assert (=> b!5356944 (=> res!2273218 e!3324943)))

(declare-fun lt!2183050 () Context!8886)

(assert (=> b!5356944 (= res!2273218 (not (= (unfocusZipper!801 (Cons!61354 lt!2183050 Nil!61354)) (reg!15388 (regOne!30630 r!7292)))))))

(declare-fun lt!2183048 () (InoxSet Context!8886))

(assert (=> b!5356944 (= (flatMap!786 lt!2183048 lambda!275627) (derivationStepZipperUp!431 lt!2183049 (h!67800 s!2326)))))

(declare-fun lt!2183034 () Unit!153754)

(assert (=> b!5356944 (= lt!2183034 (lemmaFlatMapOnSingletonSet!318 lt!2183048 lt!2183049 lambda!275627))))

(declare-fun lt!2183041 () (InoxSet Context!8886))

(assert (=> b!5356944 (= (flatMap!786 lt!2183041 lambda!275627) (derivationStepZipperUp!431 lt!2183050 (h!67800 s!2326)))))

(declare-fun lt!2183055 () Unit!153754)

(assert (=> b!5356944 (= lt!2183055 (lemmaFlatMapOnSingletonSet!318 lt!2183041 lt!2183050 lambda!275627))))

(declare-fun lt!2183040 () (InoxSet Context!8886))

(assert (=> b!5356944 (= lt!2183040 (derivationStepZipperUp!431 lt!2183049 (h!67800 s!2326)))))

(declare-fun lt!2183057 () (InoxSet Context!8886))

(assert (=> b!5356944 (= lt!2183057 (derivationStepZipperUp!431 lt!2183050 (h!67800 s!2326)))))

(assert (=> b!5356944 (= lt!2183048 (store ((as const (Array Context!8886 Bool)) false) lt!2183049 true))))

(assert (=> b!5356944 (= lt!2183041 (store ((as const (Array Context!8886 Bool)) false) lt!2183050 true))))

(assert (=> b!5356944 (= lt!2183050 (Context!8887 (Cons!61353 (reg!15388 (regOne!30630 r!7292)) Nil!61353)))))

(declare-fun b!5356945 () Bool)

(declare-fun res!2273225 () Bool)

(assert (=> b!5356945 (=> res!2273225 e!3324946)))

(assert (=> b!5356945 (= res!2273225 (or ((_ is EmptyExpr!15059) r!7292) ((_ is EmptyLang!15059) r!7292) ((_ is ElementMatch!15059) r!7292) ((_ is Union!15059) r!7292) (not ((_ is Concat!23904) r!7292))))))

(declare-fun b!5356946 () Bool)

(declare-fun tp_is_empty!39371 () Bool)

(assert (=> b!5356946 (= e!3324944 tp_is_empty!39371)))

(declare-fun b!5356947 () Bool)

(declare-fun res!2273226 () Bool)

(declare-fun e!3324941 () Bool)

(assert (=> b!5356947 (=> (not res!2273226) (not e!3324941))))

(declare-fun z!1189 () (InoxSet Context!8886))

(declare-fun toList!8843 ((InoxSet Context!8886)) List!61478)

(assert (=> b!5356947 (= res!2273226 (= (toList!8843 z!1189) zl!343))))

(declare-fun b!5356948 () Bool)

(declare-fun e!3324958 () Bool)

(declare-fun tp!1487875 () Bool)

(assert (=> b!5356948 (= e!3324958 (and tp_is_empty!39371 tp!1487875))))

(declare-fun b!5356949 () Bool)

(declare-fun nullable!5228 (Regex!15059) Bool)

(assert (=> b!5356949 (= e!3324947 (nullable!5228 (regOne!30630 (regOne!30630 r!7292))))))

(declare-fun b!5356950 () Bool)

(assert (=> b!5356950 (= e!3324941 e!3324953)))

(declare-fun res!2273222 () Bool)

(assert (=> b!5356950 (=> (not res!2273222) (not e!3324953))))

(declare-fun lt!2183051 () Regex!15059)

(assert (=> b!5356950 (= res!2273222 (= r!7292 lt!2183051))))

(assert (=> b!5356950 (= lt!2183051 (unfocusZipper!801 zl!343))))

(declare-fun b!5356951 () Bool)

(declare-fun res!2273208 () Bool)

(assert (=> b!5356951 (=> res!2273208 e!3324949)))

(assert (=> b!5356951 (= res!2273208 (not (= (matchZipper!1303 lt!2183062 s!2326) (matchZipper!1303 lt!2183039 (t!374697 s!2326)))))))

(declare-fun e!3324945 () Bool)

(declare-fun setNonEmpty!34657 () Bool)

(declare-fun setElem!34657 () Context!8886)

(declare-fun tp!1487874 () Bool)

(declare-fun inv!80894 (Context!8886) Bool)

(assert (=> setNonEmpty!34657 (= setRes!34657 (and tp!1487874 (inv!80894 setElem!34657) e!3324945))))

(declare-fun setRest!34657 () (InoxSet Context!8886))

(assert (=> setNonEmpty!34657 (= z!1189 ((_ map or) (store ((as const (Array Context!8886 Bool)) false) setElem!34657 true) setRest!34657))))

(declare-fun b!5356952 () Bool)

(declare-fun res!2273229 () Bool)

(assert (=> b!5356952 (=> res!2273229 e!3324946)))

(assert (=> b!5356952 (= res!2273229 (not ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343)))))))

(declare-fun b!5356953 () Bool)

(assert (=> b!5356953 (= e!3324950 (matchZipper!1303 lt!2183043 (t!374697 s!2326)))))

(declare-fun e!3324951 () Bool)

(declare-fun tp!1487868 () Bool)

(declare-fun b!5356954 () Bool)

(declare-fun e!3324959 () Bool)

(assert (=> b!5356954 (= e!3324951 (and (inv!80894 (h!67802 zl!343)) e!3324959 tp!1487868))))

(declare-fun b!5356955 () Bool)

(declare-fun res!2273220 () Bool)

(assert (=> b!5356955 (=> res!2273220 e!3324946)))

(declare-fun generalisedUnion!988 (List!61477) Regex!15059)

(declare-fun unfocusZipperList!501 (List!61478) List!61477)

(assert (=> b!5356955 (= res!2273220 (not (= r!7292 (generalisedUnion!988 (unfocusZipperList!501 zl!343)))))))

(declare-fun b!5356956 () Bool)

(declare-fun tp!1487872 () Bool)

(assert (=> b!5356956 (= e!3324945 tp!1487872)))

(declare-fun b!5356957 () Bool)

(declare-fun tp!1487873 () Bool)

(assert (=> b!5356957 (= e!3324944 tp!1487873)))

(declare-fun b!5356958 () Bool)

(declare-fun res!2273221 () Bool)

(assert (=> b!5356958 (=> res!2273221 e!3324949)))

(assert (=> b!5356958 (= res!2273221 (not (= lt!2183051 r!7292)))))

(declare-fun b!5356959 () Bool)

(assert (=> b!5356959 (= e!3324948 e!3324960)))

(declare-fun res!2273204 () Bool)

(assert (=> b!5356959 (=> res!2273204 e!3324960)))

(assert (=> b!5356959 (= res!2273204 (not (= lt!2183065 lt!2183046)))))

(declare-fun derivationStepZipperDown!507 (Regex!15059 Context!8886 C!30388) (InoxSet Context!8886))

(assert (=> b!5356959 (= lt!2183046 (derivationStepZipperDown!507 (reg!15388 (regOne!30630 r!7292)) lt!2183049 (h!67800 s!2326)))))

(assert (=> b!5356959 (= lt!2183049 (Context!8887 lt!2183036))))

(assert (=> b!5356959 (= lt!2183036 (Cons!61353 lt!2183059 (t!374698 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> b!5356959 (= lt!2183059 (Star!15059 (reg!15388 (regOne!30630 r!7292))))))

(declare-fun b!5356960 () Bool)

(declare-fun tp!1487877 () Bool)

(declare-fun tp!1487870 () Bool)

(assert (=> b!5356960 (= e!3324944 (and tp!1487877 tp!1487870))))

(assert (=> b!5356961 (= e!3324942 e!3324948)))

(declare-fun res!2273223 () Bool)

(assert (=> b!5356961 (=> res!2273223 e!3324948)))

(assert (=> b!5356961 (= res!2273223 (or (and ((_ is ElementMatch!15059) (regOne!30630 r!7292)) (= (c!932657 (regOne!30630 r!7292)) (h!67800 s!2326))) ((_ is Union!15059) (regOne!30630 r!7292))))))

(declare-fun lt!2183066 () Unit!153754)

(assert (=> b!5356961 (= lt!2183066 e!3324955)))

(declare-fun c!932656 () Bool)

(assert (=> b!5356961 (= c!932656 (nullable!5228 (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> b!5356961 (= (flatMap!786 z!1189 lambda!275627) (derivationStepZipperUp!431 (h!67802 zl!343) (h!67800 s!2326)))))

(declare-fun lt!2183033 () Unit!153754)

(assert (=> b!5356961 (= lt!2183033 (lemmaFlatMapOnSingletonSet!318 z!1189 (h!67802 zl!343) lambda!275627))))

(declare-fun lt!2183045 () Context!8886)

(assert (=> b!5356961 (= lt!2183043 (derivationStepZipperUp!431 lt!2183045 (h!67800 s!2326)))))

(assert (=> b!5356961 (= lt!2183065 (derivationStepZipperDown!507 (h!67801 (exprs!4943 (h!67802 zl!343))) lt!2183045 (h!67800 s!2326)))))

(assert (=> b!5356961 (= lt!2183045 (Context!8887 (t!374698 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun lt!2183058 () (InoxSet Context!8886))

(assert (=> b!5356961 (= lt!2183058 (derivationStepZipperUp!431 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343))))) (h!67800 s!2326)))))

(declare-fun res!2273214 () Bool)

(assert (=> start!563950 (=> (not res!2273214) (not e!3324941))))

(assert (=> start!563950 (= res!2273214 (validRegex!6795 r!7292))))

(assert (=> start!563950 e!3324941))

(assert (=> start!563950 e!3324944))

(declare-fun condSetEmpty!34657 () Bool)

(assert (=> start!563950 (= condSetEmpty!34657 (= z!1189 ((as const (Array Context!8886 Bool)) false)))))

(assert (=> start!563950 setRes!34657))

(assert (=> start!563950 e!3324951))

(assert (=> start!563950 e!3324958))

(declare-fun b!5356937 () Bool)

(declare-fun tp!1487871 () Bool)

(assert (=> b!5356937 (= e!3324959 tp!1487871)))

(declare-fun b!5356962 () Bool)

(assert (=> b!5356962 (= e!3324957 (or (not lt!2183063) lt!2183052))))

(declare-fun b!5356963 () Bool)

(assert (=> b!5356963 (= e!3324949 e!3324952)))

(declare-fun res!2273213 () Bool)

(assert (=> b!5356963 (=> res!2273213 e!3324952)))

(assert (=> b!5356963 (= res!2273213 (not (= r!7292 lt!2183047)))))

(assert (=> b!5356963 (= lt!2183047 (Concat!23904 lt!2183059 (regTwo!30630 r!7292)))))

(assert (= (and start!563950 res!2273214) b!5356947))

(assert (= (and b!5356947 res!2273226) b!5356950))

(assert (= (and b!5356950 res!2273222) b!5356939))

(assert (= (and b!5356939 (not res!2273212)) b!5356934))

(assert (= (and b!5356934 (not res!2273209)) b!5356936))

(assert (= (and b!5356936 (not res!2273217)) b!5356952))

(assert (= (and b!5356952 (not res!2273229)) b!5356955))

(assert (= (and b!5356955 (not res!2273220)) b!5356945))

(assert (= (and b!5356945 (not res!2273225)) b!5356938))

(assert (= (and b!5356938 (not res!2273205)) b!5356933))

(assert (= (and b!5356933 (not res!2273206)) b!5356961))

(assert (= (and b!5356961 c!932656) b!5356943))

(assert (= (and b!5356961 (not c!932656)) b!5356932))

(assert (= (and b!5356943 (not res!2273228)) b!5356953))

(assert (= (and b!5356961 (not res!2273223)) b!5356928))

(assert (= (and b!5356928 res!2273211) b!5356949))

(assert (= (and b!5356928 (not res!2273227)) b!5356935))

(assert (= (and b!5356935 (not res!2273224)) b!5356959))

(assert (= (and b!5356959 (not res!2273204)) b!5356941))

(assert (= (and b!5356941 (not res!2273207)) b!5356951))

(assert (= (and b!5356951 (not res!2273208)) b!5356958))

(assert (= (and b!5356958 (not res!2273221)) b!5356963))

(assert (= (and b!5356963 (not res!2273213)) b!5356930))

(assert (= (and b!5356930 (not res!2273215)) b!5356944))

(assert (= (and b!5356944 (not res!2273218)) b!5356940))

(assert (= (and b!5356940 (not res!2273216)) b!5356931))

(assert (= (and b!5356931 res!2273219) b!5356962))

(assert (= (and b!5356931 (not res!2273210)) b!5356929))

(assert (= (and start!563950 ((_ is ElementMatch!15059) r!7292)) b!5356946))

(assert (= (and start!563950 ((_ is Concat!23904) r!7292)) b!5356942))

(assert (= (and start!563950 ((_ is Star!15059) r!7292)) b!5356957))

(assert (= (and start!563950 ((_ is Union!15059) r!7292)) b!5356960))

(assert (= (and start!563950 condSetEmpty!34657) setIsEmpty!34657))

(assert (= (and start!563950 (not condSetEmpty!34657)) setNonEmpty!34657))

(assert (= setNonEmpty!34657 b!5356956))

(assert (= b!5356954 b!5356937))

(assert (= (and start!563950 ((_ is Cons!61354) zl!343)) b!5356954))

(assert (= (and start!563950 ((_ is Cons!61352) s!2326)) b!5356948))

(declare-fun m!6386536 () Bool)

(assert (=> b!5356953 m!6386536))

(declare-fun m!6386538 () Bool)

(assert (=> b!5356949 m!6386538))

(declare-fun m!6386540 () Bool)

(assert (=> setNonEmpty!34657 m!6386540))

(declare-fun m!6386542 () Bool)

(assert (=> b!5356950 m!6386542))

(declare-fun m!6386544 () Bool)

(assert (=> b!5356941 m!6386544))

(declare-fun m!6386546 () Bool)

(assert (=> b!5356941 m!6386546))

(declare-fun m!6386548 () Bool)

(assert (=> b!5356941 m!6386548))

(declare-fun m!6386550 () Bool)

(assert (=> b!5356941 m!6386550))

(declare-fun m!6386552 () Bool)

(assert (=> b!5356941 m!6386552))

(declare-fun m!6386554 () Bool)

(assert (=> b!5356933 m!6386554))

(declare-fun m!6386556 () Bool)

(assert (=> b!5356940 m!6386556))

(declare-fun m!6386558 () Bool)

(assert (=> b!5356939 m!6386558))

(declare-fun m!6386560 () Bool)

(assert (=> b!5356939 m!6386560))

(declare-fun m!6386562 () Bool)

(assert (=> b!5356939 m!6386562))

(declare-fun m!6386564 () Bool)

(assert (=> start!563950 m!6386564))

(declare-fun m!6386566 () Bool)

(assert (=> b!5356954 m!6386566))

(declare-fun m!6386568 () Bool)

(assert (=> b!5356936 m!6386568))

(declare-fun m!6386570 () Bool)

(assert (=> b!5356951 m!6386570))

(declare-fun m!6386572 () Bool)

(assert (=> b!5356951 m!6386572))

(declare-fun m!6386574 () Bool)

(assert (=> b!5356943 m!6386574))

(declare-fun m!6386576 () Bool)

(assert (=> b!5356943 m!6386576))

(declare-fun m!6386578 () Bool)

(assert (=> b!5356943 m!6386578))

(declare-fun m!6386580 () Bool)

(assert (=> b!5356929 m!6386580))

(declare-fun m!6386582 () Bool)

(assert (=> b!5356929 m!6386582))

(declare-fun m!6386584 () Bool)

(assert (=> b!5356929 m!6386584))

(assert (=> b!5356929 m!6386584))

(declare-fun m!6386586 () Bool)

(assert (=> b!5356929 m!6386586))

(declare-fun m!6386588 () Bool)

(assert (=> b!5356929 m!6386588))

(declare-fun m!6386590 () Bool)

(assert (=> b!5356929 m!6386590))

(declare-fun m!6386592 () Bool)

(assert (=> b!5356929 m!6386592))

(assert (=> b!5356929 m!6386582))

(declare-fun m!6386594 () Bool)

(assert (=> b!5356930 m!6386594))

(declare-fun m!6386596 () Bool)

(assert (=> b!5356955 m!6386596))

(assert (=> b!5356955 m!6386596))

(declare-fun m!6386598 () Bool)

(assert (=> b!5356955 m!6386598))

(declare-fun m!6386600 () Bool)

(assert (=> b!5356947 m!6386600))

(declare-fun m!6386602 () Bool)

(assert (=> b!5356961 m!6386602))

(declare-fun m!6386604 () Bool)

(assert (=> b!5356961 m!6386604))

(declare-fun m!6386606 () Bool)

(assert (=> b!5356961 m!6386606))

(declare-fun m!6386608 () Bool)

(assert (=> b!5356961 m!6386608))

(declare-fun m!6386610 () Bool)

(assert (=> b!5356961 m!6386610))

(declare-fun m!6386612 () Bool)

(assert (=> b!5356961 m!6386612))

(declare-fun m!6386614 () Bool)

(assert (=> b!5356961 m!6386614))

(declare-fun m!6386616 () Bool)

(assert (=> b!5356944 m!6386616))

(declare-fun m!6386618 () Bool)

(assert (=> b!5356944 m!6386618))

(declare-fun m!6386620 () Bool)

(assert (=> b!5356944 m!6386620))

(declare-fun m!6386622 () Bool)

(assert (=> b!5356944 m!6386622))

(declare-fun m!6386624 () Bool)

(assert (=> b!5356944 m!6386624))

(declare-fun m!6386626 () Bool)

(assert (=> b!5356944 m!6386626))

(declare-fun m!6386628 () Bool)

(assert (=> b!5356944 m!6386628))

(declare-fun m!6386630 () Bool)

(assert (=> b!5356944 m!6386630))

(declare-fun m!6386632 () Bool)

(assert (=> b!5356944 m!6386632))

(declare-fun m!6386634 () Bool)

(assert (=> b!5356959 m!6386634))

(declare-fun m!6386636 () Bool)

(assert (=> b!5356934 m!6386636))

(declare-fun m!6386638 () Bool)

(assert (=> b!5356931 m!6386638))

(declare-fun m!6386640 () Bool)

(assert (=> b!5356931 m!6386640))

(declare-fun m!6386642 () Bool)

(assert (=> b!5356931 m!6386642))

(declare-fun m!6386644 () Bool)

(assert (=> b!5356938 m!6386644))

(declare-fun m!6386646 () Bool)

(assert (=> b!5356938 m!6386646))

(declare-fun m!6386648 () Bool)

(assert (=> b!5356938 m!6386648))

(declare-fun m!6386650 () Bool)

(assert (=> b!5356938 m!6386650))

(assert (=> b!5356938 m!6386650))

(declare-fun m!6386652 () Bool)

(assert (=> b!5356938 m!6386652))

(assert (=> b!5356938 m!6386644))

(declare-fun m!6386654 () Bool)

(assert (=> b!5356938 m!6386654))

(check-sat (not b!5356960) (not b!5356941) (not b!5356959) (not b!5356956) (not b!5356939) (not b!5356949) (not b!5356955) (not b!5356929) (not b!5356948) (not b!5356953) (not b!5356950) (not b!5356933) (not b!5356930) (not b!5356951) (not b!5356937) (not b!5356947) tp_is_empty!39371 (not start!563950) (not b!5356942) (not b!5356934) (not b!5356938) (not b!5356936) (not b!5356954) (not b!5356931) (not b!5356943) (not setNonEmpty!34657) (not b!5356940) (not b!5356944) (not b!5356961) (not b!5356957))
(check-sat)
(get-model)

(declare-fun bs!1241200 () Bool)

(declare-fun d!1716873 () Bool)

(assert (= bs!1241200 (and d!1716873 b!5356938)))

(declare-fun lambda!275646 () Int)

(assert (=> bs!1241200 (= (= lt!2183059 (regOne!30630 r!7292)) (= lambda!275646 lambda!275625))))

(assert (=> bs!1241200 (not (= lambda!275646 lambda!275626))))

(declare-fun bs!1241201 () Bool)

(assert (= bs!1241201 (and d!1716873 b!5356929)))

(assert (=> bs!1241201 (= lambda!275646 lambda!275628)))

(assert (=> bs!1241201 (not (= lambda!275646 lambda!275629))))

(assert (=> d!1716873 true))

(assert (=> d!1716873 true))

(assert (=> d!1716873 true))

(declare-fun lambda!275648 () Int)

(assert (=> bs!1241201 (= lambda!275648 lambda!275629)))

(assert (=> bs!1241200 (= (= lt!2183059 (regOne!30630 r!7292)) (= lambda!275648 lambda!275626))))

(assert (=> bs!1241201 (not (= lambda!275648 lambda!275628))))

(declare-fun bs!1241205 () Bool)

(assert (= bs!1241205 d!1716873))

(assert (=> bs!1241205 (not (= lambda!275648 lambda!275646))))

(assert (=> bs!1241200 (not (= lambda!275648 lambda!275625))))

(assert (=> d!1716873 true))

(assert (=> d!1716873 true))

(assert (=> d!1716873 true))

(assert (=> d!1716873 (= (Exists!2240 lambda!275646) (Exists!2240 lambda!275648))))

(declare-fun lt!2183086 () Unit!153754)

(declare-fun choose!40188 (Regex!15059 Regex!15059 List!61476) Unit!153754)

(assert (=> d!1716873 (= lt!2183086 (choose!40188 lt!2183059 (regTwo!30630 r!7292) s!2326))))

(assert (=> d!1716873 (validRegex!6795 lt!2183059)))

(assert (=> d!1716873 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!894 lt!2183059 (regTwo!30630 r!7292) s!2326) lt!2183086)))

(declare-fun m!6386728 () Bool)

(assert (=> bs!1241205 m!6386728))

(declare-fun m!6386730 () Bool)

(assert (=> bs!1241205 m!6386730))

(declare-fun m!6386732 () Bool)

(assert (=> bs!1241205 m!6386732))

(assert (=> bs!1241205 m!6386592))

(assert (=> b!5356929 d!1716873))

(declare-fun d!1716883 () Bool)

(declare-fun isEmpty!33323 (Option!15170) Bool)

(assert (=> d!1716883 (= (isDefined!11873 (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)) (not (isEmpty!33323 (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326))))))

(declare-fun bs!1241208 () Bool)

(assert (= bs!1241208 d!1716883))

(assert (=> bs!1241208 m!6386584))

(declare-fun m!6386742 () Bool)

(assert (=> bs!1241208 m!6386742))

(assert (=> b!5356929 d!1716883))

(declare-fun d!1716887 () Bool)

(declare-fun choose!40190 (Int) Bool)

(assert (=> d!1716887 (= (Exists!2240 lambda!275629) (choose!40190 lambda!275629))))

(declare-fun bs!1241209 () Bool)

(assert (= bs!1241209 d!1716887))

(declare-fun m!6386744 () Bool)

(assert (=> bs!1241209 m!6386744))

(assert (=> b!5356929 d!1716887))

(declare-fun bs!1241224 () Bool)

(declare-fun d!1716889 () Bool)

(assert (= bs!1241224 (and d!1716889 d!1716873)))

(declare-fun lambda!275654 () Int)

(assert (=> bs!1241224 (not (= lambda!275654 lambda!275648))))

(declare-fun bs!1241225 () Bool)

(assert (= bs!1241225 (and d!1716889 b!5356929)))

(assert (=> bs!1241225 (not (= lambda!275654 lambda!275629))))

(declare-fun bs!1241226 () Bool)

(assert (= bs!1241226 (and d!1716889 b!5356938)))

(assert (=> bs!1241226 (not (= lambda!275654 lambda!275626))))

(assert (=> bs!1241225 (= lambda!275654 lambda!275628)))

(assert (=> bs!1241224 (= lambda!275654 lambda!275646)))

(assert (=> bs!1241226 (= (= lt!2183059 (regOne!30630 r!7292)) (= lambda!275654 lambda!275625))))

(assert (=> d!1716889 true))

(assert (=> d!1716889 true))

(assert (=> d!1716889 true))

(assert (=> d!1716889 (= (isDefined!11873 (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)) (Exists!2240 lambda!275654))))

(declare-fun lt!2183095 () Unit!153754)

(declare-fun choose!40191 (Regex!15059 Regex!15059 List!61476) Unit!153754)

(assert (=> d!1716889 (= lt!2183095 (choose!40191 lt!2183059 (regTwo!30630 r!7292) s!2326))))

(assert (=> d!1716889 (validRegex!6795 lt!2183059)))

(assert (=> d!1716889 (= (lemmaFindConcatSeparationEquivalentToExists!1348 lt!2183059 (regTwo!30630 r!7292) s!2326) lt!2183095)))

(declare-fun bs!1241227 () Bool)

(assert (= bs!1241227 d!1716889))

(declare-fun m!6386778 () Bool)

(assert (=> bs!1241227 m!6386778))

(assert (=> bs!1241227 m!6386592))

(declare-fun m!6386780 () Bool)

(assert (=> bs!1241227 m!6386780))

(assert (=> bs!1241227 m!6386584))

(assert (=> bs!1241227 m!6386584))

(assert (=> bs!1241227 m!6386586))

(assert (=> b!5356929 d!1716889))

(declare-fun b!5357125 () Bool)

(declare-fun e!3325055 () Bool)

(declare-fun lt!2183111 () Option!15170)

(assert (=> b!5357125 (= e!3325055 (not (isDefined!11873 lt!2183111)))))

(declare-fun b!5357126 () Bool)

(declare-fun e!3325059 () Option!15170)

(assert (=> b!5357126 (= e!3325059 (Some!15169 (tuple2!64517 Nil!61352 s!2326)))))

(declare-fun b!5357127 () Bool)

(declare-fun lt!2183109 () Unit!153754)

(declare-fun lt!2183110 () Unit!153754)

(assert (=> b!5357127 (= lt!2183109 lt!2183110)))

(declare-fun ++!13364 (List!61476 List!61476) List!61476)

(assert (=> b!5357127 (= (++!13364 (++!13364 Nil!61352 (Cons!61352 (h!67800 s!2326) Nil!61352)) (t!374697 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1779 (List!61476 C!30388 List!61476 List!61476) Unit!153754)

(assert (=> b!5357127 (= lt!2183110 (lemmaMoveElementToOtherListKeepsConcatEq!1779 Nil!61352 (h!67800 s!2326) (t!374697 s!2326) s!2326))))

(declare-fun e!3325058 () Option!15170)

(assert (=> b!5357127 (= e!3325058 (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) (++!13364 Nil!61352 (Cons!61352 (h!67800 s!2326) Nil!61352)) (t!374697 s!2326) s!2326))))

(declare-fun b!5357128 () Bool)

(declare-fun e!3325056 () Bool)

(assert (=> b!5357128 (= e!3325056 (matchR!7244 (regTwo!30630 r!7292) s!2326))))

(declare-fun d!1716903 () Bool)

(assert (=> d!1716903 e!3325055))

(declare-fun res!2273315 () Bool)

(assert (=> d!1716903 (=> res!2273315 e!3325055)))

(declare-fun e!3325057 () Bool)

(assert (=> d!1716903 (= res!2273315 e!3325057)))

(declare-fun res!2273314 () Bool)

(assert (=> d!1716903 (=> (not res!2273314) (not e!3325057))))

(assert (=> d!1716903 (= res!2273314 (isDefined!11873 lt!2183111))))

(assert (=> d!1716903 (= lt!2183111 e!3325059)))

(declare-fun c!932695 () Bool)

(assert (=> d!1716903 (= c!932695 e!3325056)))

(declare-fun res!2273312 () Bool)

(assert (=> d!1716903 (=> (not res!2273312) (not e!3325056))))

(assert (=> d!1716903 (= res!2273312 (matchR!7244 lt!2183059 Nil!61352))))

(assert (=> d!1716903 (validRegex!6795 lt!2183059)))

(assert (=> d!1716903 (= (findConcatSeparation!1584 lt!2183059 (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326) lt!2183111)))

(declare-fun b!5357124 () Bool)

(declare-fun get!21099 (Option!15170) tuple2!64516)

(assert (=> b!5357124 (= e!3325057 (= (++!13364 (_1!35561 (get!21099 lt!2183111)) (_2!35561 (get!21099 lt!2183111))) s!2326))))

(declare-fun b!5357129 () Bool)

(declare-fun res!2273313 () Bool)

(assert (=> b!5357129 (=> (not res!2273313) (not e!3325057))))

(assert (=> b!5357129 (= res!2273313 (matchR!7244 lt!2183059 (_1!35561 (get!21099 lt!2183111))))))

(declare-fun b!5357130 () Bool)

(assert (=> b!5357130 (= e!3325059 e!3325058)))

(declare-fun c!932694 () Bool)

(assert (=> b!5357130 (= c!932694 ((_ is Nil!61352) s!2326))))

(declare-fun b!5357131 () Bool)

(declare-fun res!2273316 () Bool)

(assert (=> b!5357131 (=> (not res!2273316) (not e!3325057))))

(assert (=> b!5357131 (= res!2273316 (matchR!7244 (regTwo!30630 r!7292) (_2!35561 (get!21099 lt!2183111))))))

(declare-fun b!5357132 () Bool)

(assert (=> b!5357132 (= e!3325058 None!15169)))

(assert (= (and d!1716903 res!2273312) b!5357128))

(assert (= (and d!1716903 c!932695) b!5357126))

(assert (= (and d!1716903 (not c!932695)) b!5357130))

(assert (= (and b!5357130 c!932694) b!5357132))

(assert (= (and b!5357130 (not c!932694)) b!5357127))

(assert (= (and d!1716903 res!2273314) b!5357129))

(assert (= (and b!5357129 res!2273313) b!5357131))

(assert (= (and b!5357131 res!2273316) b!5357124))

(assert (= (and d!1716903 (not res!2273315)) b!5357125))

(declare-fun m!6386828 () Bool)

(assert (=> b!5357129 m!6386828))

(declare-fun m!6386830 () Bool)

(assert (=> b!5357129 m!6386830))

(declare-fun m!6386832 () Bool)

(assert (=> d!1716903 m!6386832))

(declare-fun m!6386834 () Bool)

(assert (=> d!1716903 m!6386834))

(assert (=> d!1716903 m!6386592))

(declare-fun m!6386836 () Bool)

(assert (=> b!5357128 m!6386836))

(declare-fun m!6386838 () Bool)

(assert (=> b!5357127 m!6386838))

(assert (=> b!5357127 m!6386838))

(declare-fun m!6386840 () Bool)

(assert (=> b!5357127 m!6386840))

(declare-fun m!6386842 () Bool)

(assert (=> b!5357127 m!6386842))

(assert (=> b!5357127 m!6386838))

(declare-fun m!6386844 () Bool)

(assert (=> b!5357127 m!6386844))

(assert (=> b!5357125 m!6386832))

(assert (=> b!5357124 m!6386828))

(declare-fun m!6386846 () Bool)

(assert (=> b!5357124 m!6386846))

(assert (=> b!5357131 m!6386828))

(declare-fun m!6386848 () Bool)

(assert (=> b!5357131 m!6386848))

(assert (=> b!5356929 d!1716903))

(declare-fun b!5357173 () Bool)

(declare-fun e!3325092 () Bool)

(declare-fun e!3325088 () Bool)

(assert (=> b!5357173 (= e!3325092 e!3325088)))

(declare-fun c!932711 () Bool)

(assert (=> b!5357173 (= c!932711 ((_ is Union!15059) lt!2183059))))

(declare-fun d!1716925 () Bool)

(declare-fun res!2273331 () Bool)

(declare-fun e!3325089 () Bool)

(assert (=> d!1716925 (=> res!2273331 e!3325089)))

(assert (=> d!1716925 (= res!2273331 ((_ is ElementMatch!15059) lt!2183059))))

(assert (=> d!1716925 (= (validRegex!6795 lt!2183059) e!3325089)))

(declare-fun bm!383121 () Bool)

(declare-fun call!383126 () Bool)

(declare-fun call!383128 () Bool)

(assert (=> bm!383121 (= call!383126 call!383128)))

(declare-fun b!5357174 () Bool)

(declare-fun e!3325091 () Bool)

(assert (=> b!5357174 (= e!3325091 call!383128)))

(declare-fun b!5357175 () Bool)

(assert (=> b!5357175 (= e!3325092 e!3325091)))

(declare-fun res!2273330 () Bool)

(assert (=> b!5357175 (= res!2273330 (not (nullable!5228 (reg!15388 lt!2183059))))))

(assert (=> b!5357175 (=> (not res!2273330) (not e!3325091))))

(declare-fun bm!383122 () Bool)

(declare-fun call!383127 () Bool)

(assert (=> bm!383122 (= call!383127 (validRegex!6795 (ite c!932711 (regTwo!30631 lt!2183059) (regTwo!30630 lt!2183059))))))

(declare-fun b!5357176 () Bool)

(declare-fun e!3325090 () Bool)

(assert (=> b!5357176 (= e!3325090 call!383127)))

(declare-fun b!5357177 () Bool)

(declare-fun res!2273329 () Bool)

(declare-fun e!3325086 () Bool)

(assert (=> b!5357177 (=> res!2273329 e!3325086)))

(assert (=> b!5357177 (= res!2273329 (not ((_ is Concat!23904) lt!2183059)))))

(assert (=> b!5357177 (= e!3325088 e!3325086)))

(declare-fun b!5357178 () Bool)

(declare-fun e!3325087 () Bool)

(assert (=> b!5357178 (= e!3325087 call!383127)))

(declare-fun b!5357179 () Bool)

(assert (=> b!5357179 (= e!3325089 e!3325092)))

(declare-fun c!932710 () Bool)

(assert (=> b!5357179 (= c!932710 ((_ is Star!15059) lt!2183059))))

(declare-fun b!5357180 () Bool)

(declare-fun res!2273332 () Bool)

(assert (=> b!5357180 (=> (not res!2273332) (not e!3325087))))

(assert (=> b!5357180 (= res!2273332 call!383126)))

(assert (=> b!5357180 (= e!3325088 e!3325087)))

(declare-fun b!5357181 () Bool)

(assert (=> b!5357181 (= e!3325086 e!3325090)))

(declare-fun res!2273333 () Bool)

(assert (=> b!5357181 (=> (not res!2273333) (not e!3325090))))

(assert (=> b!5357181 (= res!2273333 call!383126)))

(declare-fun bm!383123 () Bool)

(assert (=> bm!383123 (= call!383128 (validRegex!6795 (ite c!932710 (reg!15388 lt!2183059) (ite c!932711 (regOne!30631 lt!2183059) (regOne!30630 lt!2183059)))))))

(assert (= (and d!1716925 (not res!2273331)) b!5357179))

(assert (= (and b!5357179 c!932710) b!5357175))

(assert (= (and b!5357179 (not c!932710)) b!5357173))

(assert (= (and b!5357175 res!2273330) b!5357174))

(assert (= (and b!5357173 c!932711) b!5357180))

(assert (= (and b!5357173 (not c!932711)) b!5357177))

(assert (= (and b!5357180 res!2273332) b!5357178))

(assert (= (and b!5357177 (not res!2273329)) b!5357181))

(assert (= (and b!5357181 res!2273333) b!5357176))

(assert (= (or b!5357178 b!5357176) bm!383122))

(assert (= (or b!5357180 b!5357181) bm!383121))

(assert (= (or b!5357174 bm!383121) bm!383123))

(declare-fun m!6386850 () Bool)

(assert (=> b!5357175 m!6386850))

(declare-fun m!6386852 () Bool)

(assert (=> bm!383122 m!6386852))

(declare-fun m!6386854 () Bool)

(assert (=> bm!383123 m!6386854))

(assert (=> b!5356929 d!1716925))

(declare-fun d!1716927 () Bool)

(assert (=> d!1716927 (= (Exists!2240 lambda!275628) (choose!40190 lambda!275628))))

(declare-fun bs!1241232 () Bool)

(assert (= bs!1241232 d!1716927))

(declare-fun m!6386856 () Bool)

(assert (=> bs!1241232 m!6386856))

(assert (=> b!5356929 d!1716927))

(declare-fun bm!383144 () Bool)

(declare-fun c!932742 () Bool)

(declare-fun c!932743 () Bool)

(declare-fun call!383154 () List!61477)

(declare-fun $colon$colon!1433 (List!61477 Regex!15059) List!61477)

(assert (=> bm!383144 (= call!383154 ($colon$colon!1433 (exprs!4943 lt!2183049) (ite (or c!932743 c!932742) (regTwo!30630 (reg!15388 (regOne!30630 r!7292))) (reg!15388 (regOne!30630 r!7292)))))))

(declare-fun bm!383145 () Bool)

(declare-fun call!383152 () List!61477)

(assert (=> bm!383145 (= call!383152 call!383154)))

(declare-fun b!5357248 () Bool)

(declare-fun e!3325132 () (InoxSet Context!8886))

(declare-fun call!383151 () (InoxSet Context!8886))

(assert (=> b!5357248 (= e!3325132 call!383151)))

(declare-fun bm!383146 () Bool)

(declare-fun call!383149 () (InoxSet Context!8886))

(declare-fun call!383150 () (InoxSet Context!8886))

(assert (=> bm!383146 (= call!383149 call!383150)))

(declare-fun b!5357249 () Bool)

(declare-fun e!3325130 () (InoxSet Context!8886))

(declare-fun call!383153 () (InoxSet Context!8886))

(assert (=> b!5357249 (= e!3325130 ((_ map or) call!383153 call!383150))))

(declare-fun c!932744 () Bool)

(declare-fun bm!383147 () Bool)

(assert (=> bm!383147 (= call!383150 (derivationStepZipperDown!507 (ite c!932744 (regTwo!30631 (reg!15388 (regOne!30630 r!7292))) (ite c!932743 (regTwo!30630 (reg!15388 (regOne!30630 r!7292))) (ite c!932742 (regOne!30630 (reg!15388 (regOne!30630 r!7292))) (reg!15388 (reg!15388 (regOne!30630 r!7292)))))) (ite (or c!932744 c!932743) lt!2183049 (Context!8887 call!383152)) (h!67800 s!2326)))))

(declare-fun b!5357250 () Bool)

(declare-fun e!3325131 () (InoxSet Context!8886))

(assert (=> b!5357250 (= e!3325131 (store ((as const (Array Context!8886 Bool)) false) lt!2183049 true))))

(declare-fun b!5357251 () Bool)

(declare-fun e!3325134 () (InoxSet Context!8886))

(assert (=> b!5357251 (= e!3325134 ((as const (Array Context!8886 Bool)) false))))

(declare-fun b!5357252 () Bool)

(declare-fun e!3325135 () (InoxSet Context!8886))

(assert (=> b!5357252 (= e!3325135 e!3325132)))

(assert (=> b!5357252 (= c!932742 ((_ is Concat!23904) (reg!15388 (regOne!30630 r!7292))))))

(declare-fun bm!383148 () Bool)

(assert (=> bm!383148 (= call!383153 (derivationStepZipperDown!507 (ite c!932744 (regOne!30631 (reg!15388 (regOne!30630 r!7292))) (regOne!30630 (reg!15388 (regOne!30630 r!7292)))) (ite c!932744 lt!2183049 (Context!8887 call!383154)) (h!67800 s!2326)))))

(declare-fun b!5357247 () Bool)

(declare-fun e!3325133 () Bool)

(assert (=> b!5357247 (= c!932743 e!3325133)))

(declare-fun res!2273343 () Bool)

(assert (=> b!5357247 (=> (not res!2273343) (not e!3325133))))

(assert (=> b!5357247 (= res!2273343 ((_ is Concat!23904) (reg!15388 (regOne!30630 r!7292))))))

(assert (=> b!5357247 (= e!3325130 e!3325135)))

(declare-fun d!1716929 () Bool)

(declare-fun c!932740 () Bool)

(assert (=> d!1716929 (= c!932740 (and ((_ is ElementMatch!15059) (reg!15388 (regOne!30630 r!7292))) (= (c!932657 (reg!15388 (regOne!30630 r!7292))) (h!67800 s!2326))))))

(assert (=> d!1716929 (= (derivationStepZipperDown!507 (reg!15388 (regOne!30630 r!7292)) lt!2183049 (h!67800 s!2326)) e!3325131)))

(declare-fun b!5357253 () Bool)

(assert (=> b!5357253 (= e!3325135 ((_ map or) call!383153 call!383149))))

(declare-fun b!5357254 () Bool)

(assert (=> b!5357254 (= e!3325133 (nullable!5228 (regOne!30630 (reg!15388 (regOne!30630 r!7292)))))))

(declare-fun b!5357255 () Bool)

(assert (=> b!5357255 (= e!3325131 e!3325130)))

(assert (=> b!5357255 (= c!932744 ((_ is Union!15059) (reg!15388 (regOne!30630 r!7292))))))

(declare-fun bm!383149 () Bool)

(assert (=> bm!383149 (= call!383151 call!383149)))

(declare-fun b!5357256 () Bool)

(declare-fun c!932741 () Bool)

(assert (=> b!5357256 (= c!932741 ((_ is Star!15059) (reg!15388 (regOne!30630 r!7292))))))

(assert (=> b!5357256 (= e!3325132 e!3325134)))

(declare-fun b!5357257 () Bool)

(assert (=> b!5357257 (= e!3325134 call!383151)))

(assert (= (and d!1716929 c!932740) b!5357250))

(assert (= (and d!1716929 (not c!932740)) b!5357255))

(assert (= (and b!5357255 c!932744) b!5357249))

(assert (= (and b!5357255 (not c!932744)) b!5357247))

(assert (= (and b!5357247 res!2273343) b!5357254))

(assert (= (and b!5357247 c!932743) b!5357253))

(assert (= (and b!5357247 (not c!932743)) b!5357252))

(assert (= (and b!5357252 c!932742) b!5357248))

(assert (= (and b!5357252 (not c!932742)) b!5357256))

(assert (= (and b!5357256 c!932741) b!5357257))

(assert (= (and b!5357256 (not c!932741)) b!5357251))

(assert (= (or b!5357248 b!5357257) bm!383145))

(assert (= (or b!5357248 b!5357257) bm!383149))

(assert (= (or b!5357253 bm!383145) bm!383144))

(assert (= (or b!5357253 bm!383149) bm!383146))

(assert (= (or b!5357249 bm!383146) bm!383147))

(assert (= (or b!5357249 b!5357253) bm!383148))

(declare-fun m!6386904 () Bool)

(assert (=> bm!383144 m!6386904))

(declare-fun m!6386906 () Bool)

(assert (=> bm!383147 m!6386906))

(declare-fun m!6386908 () Bool)

(assert (=> b!5357254 m!6386908))

(declare-fun m!6386910 () Bool)

(assert (=> bm!383148 m!6386910))

(assert (=> b!5357250 m!6386620))

(assert (=> b!5356959 d!1716929))

(declare-fun d!1716949 () Bool)

(declare-fun nullableFct!1535 (Regex!15059) Bool)

(assert (=> d!1716949 (= (nullable!5228 (regOne!30630 (regOne!30630 r!7292))) (nullableFct!1535 (regOne!30630 (regOne!30630 r!7292))))))

(declare-fun bs!1241240 () Bool)

(assert (= bs!1241240 d!1716949))

(declare-fun m!6386916 () Bool)

(assert (=> bs!1241240 m!6386916))

(assert (=> b!5356949 d!1716949))

(declare-fun d!1716951 () Bool)

(declare-fun lt!2183120 () Regex!15059)

(assert (=> d!1716951 (validRegex!6795 lt!2183120)))

(assert (=> d!1716951 (= lt!2183120 (generalisedUnion!988 (unfocusZipperList!501 zl!343)))))

(assert (=> d!1716951 (= (unfocusZipper!801 zl!343) lt!2183120)))

(declare-fun bs!1241241 () Bool)

(assert (= bs!1241241 d!1716951))

(declare-fun m!6386934 () Bool)

(assert (=> bs!1241241 m!6386934))

(assert (=> bs!1241241 m!6386596))

(assert (=> bs!1241241 m!6386596))

(assert (=> bs!1241241 m!6386598))

(assert (=> b!5356950 d!1716951))

(declare-fun d!1716955 () Bool)

(declare-fun lt!2183123 () Regex!15059)

(assert (=> d!1716955 (validRegex!6795 lt!2183123)))

(assert (=> d!1716955 (= lt!2183123 (generalisedUnion!988 (unfocusZipperList!501 (Cons!61354 lt!2183049 Nil!61354))))))

(assert (=> d!1716955 (= (unfocusZipper!801 (Cons!61354 lt!2183049 Nil!61354)) lt!2183123)))

(declare-fun bs!1241242 () Bool)

(assert (= bs!1241242 d!1716955))

(declare-fun m!6386936 () Bool)

(assert (=> bs!1241242 m!6386936))

(declare-fun m!6386938 () Bool)

(assert (=> bs!1241242 m!6386938))

(assert (=> bs!1241242 m!6386938))

(declare-fun m!6386940 () Bool)

(assert (=> bs!1241242 m!6386940))

(assert (=> b!5356940 d!1716955))

(declare-fun d!1716957 () Bool)

(declare-fun choose!40193 ((InoxSet Context!8886) Int) (InoxSet Context!8886))

(assert (=> d!1716957 (= (flatMap!786 lt!2183062 lambda!275627) (choose!40193 lt!2183062 lambda!275627))))

(declare-fun bs!1241243 () Bool)

(assert (= bs!1241243 d!1716957))

(declare-fun m!6386942 () Bool)

(assert (=> bs!1241243 m!6386942))

(assert (=> b!5356941 d!1716957))

(declare-fun b!5357287 () Bool)

(declare-fun e!3325156 () (InoxSet Context!8886))

(declare-fun call!383157 () (InoxSet Context!8886))

(assert (=> b!5357287 (= e!3325156 call!383157)))

(declare-fun e!3325155 () (InoxSet Context!8886))

(declare-fun b!5357288 () Bool)

(assert (=> b!5357288 (= e!3325155 ((_ map or) call!383157 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 lt!2183035))) (h!67800 s!2326))))))

(declare-fun bm!383152 () Bool)

(assert (=> bm!383152 (= call!383157 (derivationStepZipperDown!507 (h!67801 (exprs!4943 lt!2183035)) (Context!8887 (t!374698 (exprs!4943 lt!2183035))) (h!67800 s!2326)))))

(declare-fun b!5357289 () Bool)

(declare-fun e!3325154 () Bool)

(assert (=> b!5357289 (= e!3325154 (nullable!5228 (h!67801 (exprs!4943 lt!2183035))))))

(declare-fun d!1716959 () Bool)

(declare-fun c!932756 () Bool)

(assert (=> d!1716959 (= c!932756 e!3325154)))

(declare-fun res!2273351 () Bool)

(assert (=> d!1716959 (=> (not res!2273351) (not e!3325154))))

(assert (=> d!1716959 (= res!2273351 ((_ is Cons!61353) (exprs!4943 lt!2183035)))))

(assert (=> d!1716959 (= (derivationStepZipperUp!431 lt!2183035 (h!67800 s!2326)) e!3325155)))

(declare-fun b!5357290 () Bool)

(assert (=> b!5357290 (= e!3325155 e!3325156)))

(declare-fun c!932757 () Bool)

(assert (=> b!5357290 (= c!932757 ((_ is Cons!61353) (exprs!4943 lt!2183035)))))

(declare-fun b!5357291 () Bool)

(assert (=> b!5357291 (= e!3325156 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1716959 res!2273351) b!5357289))

(assert (= (and d!1716959 c!932756) b!5357288))

(assert (= (and d!1716959 (not c!932756)) b!5357290))

(assert (= (and b!5357290 c!932757) b!5357287))

(assert (= (and b!5357290 (not c!932757)) b!5357291))

(assert (= (or b!5357288 b!5357287) bm!383152))

(declare-fun m!6386954 () Bool)

(assert (=> b!5357288 m!6386954))

(declare-fun m!6386956 () Bool)

(assert (=> bm!383152 m!6386956))

(declare-fun m!6386958 () Bool)

(assert (=> b!5357289 m!6386958))

(assert (=> b!5356941 d!1716959))

(declare-fun d!1716965 () Bool)

(declare-fun dynLambda!24236 (Int Context!8886) (InoxSet Context!8886))

(assert (=> d!1716965 (= (flatMap!786 lt!2183062 lambda!275627) (dynLambda!24236 lambda!275627 lt!2183035))))

(declare-fun lt!2183130 () Unit!153754)

(declare-fun choose!40194 ((InoxSet Context!8886) Context!8886 Int) Unit!153754)

(assert (=> d!1716965 (= lt!2183130 (choose!40194 lt!2183062 lt!2183035 lambda!275627))))

(assert (=> d!1716965 (= lt!2183062 (store ((as const (Array Context!8886 Bool)) false) lt!2183035 true))))

(assert (=> d!1716965 (= (lemmaFlatMapOnSingletonSet!318 lt!2183062 lt!2183035 lambda!275627) lt!2183130)))

(declare-fun b_lambda!205459 () Bool)

(assert (=> (not b_lambda!205459) (not d!1716965)))

(declare-fun bs!1241247 () Bool)

(assert (= bs!1241247 d!1716965))

(assert (=> bs!1241247 m!6386550))

(declare-fun m!6386960 () Bool)

(assert (=> bs!1241247 m!6386960))

(declare-fun m!6386962 () Bool)

(assert (=> bs!1241247 m!6386962))

(assert (=> bs!1241247 m!6386548))

(assert (=> b!5356941 d!1716965))

(declare-fun bs!1241248 () Bool)

(declare-fun d!1716967 () Bool)

(assert (= bs!1241248 (and d!1716967 b!5356961)))

(declare-fun lambda!275665 () Int)

(assert (=> bs!1241248 (= lambda!275665 lambda!275627)))

(assert (=> d!1716967 true))

(assert (=> d!1716967 (= (derivationStepZipper!1298 lt!2183062 (h!67800 s!2326)) (flatMap!786 lt!2183062 lambda!275665))))

(declare-fun bs!1241249 () Bool)

(assert (= bs!1241249 d!1716967))

(declare-fun m!6386964 () Bool)

(assert (=> bs!1241249 m!6386964))

(assert (=> b!5356941 d!1716967))

(declare-fun d!1716969 () Bool)

(declare-fun lt!2183133 () Regex!15059)

(assert (=> d!1716969 (validRegex!6795 lt!2183133)))

(assert (=> d!1716969 (= lt!2183133 (generalisedUnion!988 (unfocusZipperList!501 (Cons!61354 lt!2183035 Nil!61354))))))

(assert (=> d!1716969 (= (unfocusZipper!801 (Cons!61354 lt!2183035 Nil!61354)) lt!2183133)))

(declare-fun bs!1241250 () Bool)

(assert (= bs!1241250 d!1716969))

(declare-fun m!6386966 () Bool)

(assert (=> bs!1241250 m!6386966))

(declare-fun m!6386968 () Bool)

(assert (=> bs!1241250 m!6386968))

(assert (=> bs!1241250 m!6386968))

(declare-fun m!6386970 () Bool)

(assert (=> bs!1241250 m!6386970))

(assert (=> b!5356930 d!1716969))

(declare-fun b!5357359 () Bool)

(declare-fun e!3325196 () Bool)

(declare-fun lt!2183139 () Bool)

(declare-fun call!383161 () Bool)

(assert (=> b!5357359 (= e!3325196 (= lt!2183139 call!383161))))

(declare-fun b!5357360 () Bool)

(declare-fun e!3325193 () Bool)

(declare-fun e!3325194 () Bool)

(assert (=> b!5357360 (= e!3325193 e!3325194)))

(declare-fun res!2273378 () Bool)

(assert (=> b!5357360 (=> (not res!2273378) (not e!3325194))))

(assert (=> b!5357360 (= res!2273378 (not lt!2183139))))

(declare-fun bm!383156 () Bool)

(declare-fun isEmpty!33324 (List!61476) Bool)

(assert (=> bm!383156 (= call!383161 (isEmpty!33324 s!2326))))

(declare-fun b!5357361 () Bool)

(declare-fun e!3325192 () Bool)

(assert (=> b!5357361 (= e!3325192 (not lt!2183139))))

(declare-fun b!5357363 () Bool)

(declare-fun e!3325198 () Bool)

(assert (=> b!5357363 (= e!3325194 e!3325198)))

(declare-fun res!2273381 () Bool)

(assert (=> b!5357363 (=> res!2273381 e!3325198)))

(assert (=> b!5357363 (= res!2273381 call!383161)))

(declare-fun b!5357364 () Bool)

(declare-fun res!2273375 () Bool)

(assert (=> b!5357364 (=> res!2273375 e!3325198)))

(declare-fun tail!10582 (List!61476) List!61476)

(assert (=> b!5357364 (= res!2273375 (not (isEmpty!33324 (tail!10582 s!2326))))))

(declare-fun b!5357365 () Bool)

(declare-fun res!2273376 () Bool)

(assert (=> b!5357365 (=> res!2273376 e!3325193)))

(declare-fun e!3325195 () Bool)

(assert (=> b!5357365 (= res!2273376 e!3325195)))

(declare-fun res!2273382 () Bool)

(assert (=> b!5357365 (=> (not res!2273382) (not e!3325195))))

(assert (=> b!5357365 (= res!2273382 lt!2183139)))

(declare-fun b!5357366 () Bool)

(assert (=> b!5357366 (= e!3325196 e!3325192)))

(declare-fun c!932782 () Bool)

(assert (=> b!5357366 (= c!932782 ((_ is EmptyLang!15059) lt!2183056))))

(declare-fun b!5357367 () Bool)

(declare-fun head!11485 (List!61476) C!30388)

(assert (=> b!5357367 (= e!3325198 (not (= (head!11485 s!2326) (c!932657 lt!2183056))))))

(declare-fun b!5357368 () Bool)

(declare-fun e!3325197 () Bool)

(declare-fun derivativeStep!4204 (Regex!15059 C!30388) Regex!15059)

(assert (=> b!5357368 (= e!3325197 (matchR!7244 (derivativeStep!4204 lt!2183056 (head!11485 s!2326)) (tail!10582 s!2326)))))

(declare-fun b!5357369 () Bool)

(assert (=> b!5357369 (= e!3325195 (= (head!11485 s!2326) (c!932657 lt!2183056)))))

(declare-fun d!1716971 () Bool)

(assert (=> d!1716971 e!3325196))

(declare-fun c!932783 () Bool)

(assert (=> d!1716971 (= c!932783 ((_ is EmptyExpr!15059) lt!2183056))))

(assert (=> d!1716971 (= lt!2183139 e!3325197)))

(declare-fun c!932784 () Bool)

(assert (=> d!1716971 (= c!932784 (isEmpty!33324 s!2326))))

(assert (=> d!1716971 (validRegex!6795 lt!2183056)))

(assert (=> d!1716971 (= (matchR!7244 lt!2183056 s!2326) lt!2183139)))

(declare-fun b!5357362 () Bool)

(declare-fun res!2273379 () Bool)

(assert (=> b!5357362 (=> (not res!2273379) (not e!3325195))))

(assert (=> b!5357362 (= res!2273379 (isEmpty!33324 (tail!10582 s!2326)))))

(declare-fun b!5357370 () Bool)

(declare-fun res!2273380 () Bool)

(assert (=> b!5357370 (=> res!2273380 e!3325193)))

(assert (=> b!5357370 (= res!2273380 (not ((_ is ElementMatch!15059) lt!2183056)))))

(assert (=> b!5357370 (= e!3325192 e!3325193)))

(declare-fun b!5357371 () Bool)

(declare-fun res!2273377 () Bool)

(assert (=> b!5357371 (=> (not res!2273377) (not e!3325195))))

(assert (=> b!5357371 (= res!2273377 (not call!383161))))

(declare-fun b!5357372 () Bool)

(assert (=> b!5357372 (= e!3325197 (nullable!5228 lt!2183056))))

(assert (= (and d!1716971 c!932784) b!5357372))

(assert (= (and d!1716971 (not c!932784)) b!5357368))

(assert (= (and d!1716971 c!932783) b!5357359))

(assert (= (and d!1716971 (not c!932783)) b!5357366))

(assert (= (and b!5357366 c!932782) b!5357361))

(assert (= (and b!5357366 (not c!932782)) b!5357370))

(assert (= (and b!5357370 (not res!2273380)) b!5357365))

(assert (= (and b!5357365 res!2273382) b!5357371))

(assert (= (and b!5357371 res!2273377) b!5357362))

(assert (= (and b!5357362 res!2273379) b!5357369))

(assert (= (and b!5357365 (not res!2273376)) b!5357360))

(assert (= (and b!5357360 res!2273378) b!5357363))

(assert (= (and b!5357363 (not res!2273381)) b!5357364))

(assert (= (and b!5357364 (not res!2273375)) b!5357367))

(assert (= (or b!5357359 b!5357363 b!5357371) bm!383156))

(declare-fun m!6387012 () Bool)

(assert (=> bm!383156 m!6387012))

(declare-fun m!6387014 () Bool)

(assert (=> b!5357364 m!6387014))

(assert (=> b!5357364 m!6387014))

(declare-fun m!6387016 () Bool)

(assert (=> b!5357364 m!6387016))

(assert (=> b!5357362 m!6387014))

(assert (=> b!5357362 m!6387014))

(assert (=> b!5357362 m!6387016))

(declare-fun m!6387018 () Bool)

(assert (=> b!5357369 m!6387018))

(assert (=> b!5357367 m!6387018))

(assert (=> d!1716971 m!6387012))

(declare-fun m!6387020 () Bool)

(assert (=> d!1716971 m!6387020))

(declare-fun m!6387022 () Bool)

(assert (=> b!5357372 m!6387022))

(assert (=> b!5357368 m!6387018))

(assert (=> b!5357368 m!6387018))

(declare-fun m!6387024 () Bool)

(assert (=> b!5357368 m!6387024))

(assert (=> b!5357368 m!6387014))

(assert (=> b!5357368 m!6387024))

(assert (=> b!5357368 m!6387014))

(declare-fun m!6387026 () Bool)

(assert (=> b!5357368 m!6387026))

(assert (=> b!5356931 d!1716971))

(declare-fun bs!1241274 () Bool)

(declare-fun b!5357449 () Bool)

(assert (= bs!1241274 (and b!5357449 d!1716889)))

(declare-fun lambda!275680 () Int)

(assert (=> bs!1241274 (not (= lambda!275680 lambda!275654))))

(declare-fun bs!1241275 () Bool)

(assert (= bs!1241275 (and b!5357449 d!1716873)))

(assert (=> bs!1241275 (not (= lambda!275680 lambda!275648))))

(declare-fun bs!1241276 () Bool)

(assert (= bs!1241276 (and b!5357449 b!5356929)))

(assert (=> bs!1241276 (not (= lambda!275680 lambda!275629))))

(declare-fun bs!1241277 () Bool)

(assert (= bs!1241277 (and b!5357449 b!5356938)))

(assert (=> bs!1241277 (not (= lambda!275680 lambda!275626))))

(assert (=> bs!1241276 (not (= lambda!275680 lambda!275628))))

(assert (=> bs!1241275 (not (= lambda!275680 lambda!275646))))

(assert (=> bs!1241277 (not (= lambda!275680 lambda!275625))))

(assert (=> b!5357449 true))

(assert (=> b!5357449 true))

(declare-fun bs!1241278 () Bool)

(declare-fun b!5357453 () Bool)

(assert (= bs!1241278 (and b!5357453 d!1716889)))

(declare-fun lambda!275681 () Int)

(assert (=> bs!1241278 (not (= lambda!275681 lambda!275654))))

(declare-fun bs!1241279 () Bool)

(assert (= bs!1241279 (and b!5357453 d!1716873)))

(assert (=> bs!1241279 (= (and (= (regOne!30630 lt!2183056) lt!2183059) (= (regTwo!30630 lt!2183056) (regTwo!30630 r!7292))) (= lambda!275681 lambda!275648))))

(declare-fun bs!1241280 () Bool)

(assert (= bs!1241280 (and b!5357453 b!5356938)))

(assert (=> bs!1241280 (= (and (= (regOne!30630 lt!2183056) (regOne!30630 r!7292)) (= (regTwo!30630 lt!2183056) (regTwo!30630 r!7292))) (= lambda!275681 lambda!275626))))

(declare-fun bs!1241281 () Bool)

(assert (= bs!1241281 (and b!5357453 b!5356929)))

(assert (=> bs!1241281 (not (= lambda!275681 lambda!275628))))

(assert (=> bs!1241279 (not (= lambda!275681 lambda!275646))))

(assert (=> bs!1241280 (not (= lambda!275681 lambda!275625))))

(declare-fun bs!1241282 () Bool)

(assert (= bs!1241282 (and b!5357453 b!5357449)))

(assert (=> bs!1241282 (not (= lambda!275681 lambda!275680))))

(assert (=> bs!1241281 (= (and (= (regOne!30630 lt!2183056) lt!2183059) (= (regTwo!30630 lt!2183056) (regTwo!30630 r!7292))) (= lambda!275681 lambda!275629))))

(assert (=> b!5357453 true))

(assert (=> b!5357453 true))

(declare-fun b!5357448 () Bool)

(declare-fun e!3325247 () Bool)

(declare-fun e!3325246 () Bool)

(assert (=> b!5357448 (= e!3325247 e!3325246)))

(declare-fun res!2273420 () Bool)

(assert (=> b!5357448 (= res!2273420 (not ((_ is EmptyLang!15059) lt!2183056)))))

(assert (=> b!5357448 (=> (not res!2273420) (not e!3325246))))

(declare-fun d!1716987 () Bool)

(declare-fun c!932808 () Bool)

(assert (=> d!1716987 (= c!932808 ((_ is EmptyExpr!15059) lt!2183056))))

(assert (=> d!1716987 (= (matchRSpec!2162 lt!2183056 s!2326) e!3325247)))

(declare-fun e!3325244 () Bool)

(declare-fun call!383172 () Bool)

(assert (=> b!5357449 (= e!3325244 call!383172)))

(declare-fun b!5357450 () Bool)

(declare-fun e!3325243 () Bool)

(assert (=> b!5357450 (= e!3325243 (matchRSpec!2162 (regTwo!30631 lt!2183056) s!2326))))

(declare-fun b!5357451 () Bool)

(declare-fun call!383173 () Bool)

(assert (=> b!5357451 (= e!3325247 call!383173)))

(declare-fun b!5357452 () Bool)

(declare-fun c!932805 () Bool)

(assert (=> b!5357452 (= c!932805 ((_ is ElementMatch!15059) lt!2183056))))

(declare-fun e!3325242 () Bool)

(assert (=> b!5357452 (= e!3325246 e!3325242)))

(declare-fun e!3325248 () Bool)

(assert (=> b!5357453 (= e!3325248 call!383172)))

(declare-fun b!5357454 () Bool)

(declare-fun c!932807 () Bool)

(assert (=> b!5357454 (= c!932807 ((_ is Union!15059) lt!2183056))))

(declare-fun e!3325245 () Bool)

(assert (=> b!5357454 (= e!3325242 e!3325245)))

(declare-fun b!5357455 () Bool)

(assert (=> b!5357455 (= e!3325245 e!3325243)))

(declare-fun res!2273418 () Bool)

(assert (=> b!5357455 (= res!2273418 (matchRSpec!2162 (regOne!30631 lt!2183056) s!2326))))

(assert (=> b!5357455 (=> res!2273418 e!3325243)))

(declare-fun bm!383167 () Bool)

(assert (=> bm!383167 (= call!383173 (isEmpty!33324 s!2326))))

(declare-fun b!5357456 () Bool)

(assert (=> b!5357456 (= e!3325242 (= s!2326 (Cons!61352 (c!932657 lt!2183056) Nil!61352)))))

(declare-fun b!5357457 () Bool)

(assert (=> b!5357457 (= e!3325245 e!3325248)))

(declare-fun c!932806 () Bool)

(assert (=> b!5357457 (= c!932806 ((_ is Star!15059) lt!2183056))))

(declare-fun b!5357458 () Bool)

(declare-fun res!2273419 () Bool)

(assert (=> b!5357458 (=> res!2273419 e!3325244)))

(assert (=> b!5357458 (= res!2273419 call!383173)))

(assert (=> b!5357458 (= e!3325248 e!3325244)))

(declare-fun bm!383168 () Bool)

(assert (=> bm!383168 (= call!383172 (Exists!2240 (ite c!932806 lambda!275680 lambda!275681)))))

(assert (= (and d!1716987 c!932808) b!5357451))

(assert (= (and d!1716987 (not c!932808)) b!5357448))

(assert (= (and b!5357448 res!2273420) b!5357452))

(assert (= (and b!5357452 c!932805) b!5357456))

(assert (= (and b!5357452 (not c!932805)) b!5357454))

(assert (= (and b!5357454 c!932807) b!5357455))

(assert (= (and b!5357454 (not c!932807)) b!5357457))

(assert (= (and b!5357455 (not res!2273418)) b!5357450))

(assert (= (and b!5357457 c!932806) b!5357458))

(assert (= (and b!5357457 (not c!932806)) b!5357453))

(assert (= (and b!5357458 (not res!2273419)) b!5357449))

(assert (= (or b!5357449 b!5357453) bm!383168))

(assert (= (or b!5357451 b!5357458) bm!383167))

(declare-fun m!6387034 () Bool)

(assert (=> b!5357450 m!6387034))

(declare-fun m!6387036 () Bool)

(assert (=> b!5357455 m!6387036))

(assert (=> bm!383167 m!6387012))

(declare-fun m!6387038 () Bool)

(assert (=> bm!383168 m!6387038))

(assert (=> b!5356931 d!1716987))

(declare-fun d!1716991 () Bool)

(assert (=> d!1716991 (= (matchR!7244 lt!2183056 s!2326) (matchRSpec!2162 lt!2183056 s!2326))))

(declare-fun lt!2183144 () Unit!153754)

(declare-fun choose!40197 (Regex!15059 List!61476) Unit!153754)

(assert (=> d!1716991 (= lt!2183144 (choose!40197 lt!2183056 s!2326))))

(assert (=> d!1716991 (validRegex!6795 lt!2183056)))

(assert (=> d!1716991 (= (mainMatchTheorem!2162 lt!2183056 s!2326) lt!2183144)))

(declare-fun bs!1241283 () Bool)

(assert (= bs!1241283 d!1716991))

(assert (=> bs!1241283 m!6386638))

(assert (=> bs!1241283 m!6386640))

(declare-fun m!6387040 () Bool)

(assert (=> bs!1241283 m!6387040))

(assert (=> bs!1241283 m!6387020))

(assert (=> b!5356931 d!1716991))

(declare-fun d!1716993 () Bool)

(assert (=> d!1716993 (= (flatMap!786 z!1189 lambda!275627) (choose!40193 z!1189 lambda!275627))))

(declare-fun bs!1241284 () Bool)

(assert (= bs!1241284 d!1716993))

(declare-fun m!6387042 () Bool)

(assert (=> bs!1241284 m!6387042))

(assert (=> b!5356961 d!1716993))

(declare-fun b!5357487 () Bool)

(declare-fun e!3325265 () (InoxSet Context!8886))

(declare-fun call!383176 () (InoxSet Context!8886))

(assert (=> b!5357487 (= e!3325265 call!383176)))

(declare-fun b!5357488 () Bool)

(declare-fun e!3325264 () (InoxSet Context!8886))

(assert (=> b!5357488 (= e!3325264 ((_ map or) call!383176 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343)))))))) (h!67800 s!2326))))))

(declare-fun bm!383171 () Bool)

(assert (=> bm!383171 (= call!383176 (derivationStepZipperDown!507 (h!67801 (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343))))))) (Context!8887 (t!374698 (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343)))))))) (h!67800 s!2326)))))

(declare-fun b!5357489 () Bool)

(declare-fun e!3325263 () Bool)

(assert (=> b!5357489 (= e!3325263 (nullable!5228 (h!67801 (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343)))))))))))

(declare-fun d!1716995 () Bool)

(declare-fun c!932815 () Bool)

(assert (=> d!1716995 (= c!932815 e!3325263)))

(declare-fun res!2273437 () Bool)

(assert (=> d!1716995 (=> (not res!2273437) (not e!3325263))))

(assert (=> d!1716995 (= res!2273437 ((_ is Cons!61353) (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343))))))))))

(assert (=> d!1716995 (= (derivationStepZipperUp!431 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343))))) (h!67800 s!2326)) e!3325264)))

(declare-fun b!5357490 () Bool)

(assert (=> b!5357490 (= e!3325264 e!3325265)))

(declare-fun c!932816 () Bool)

(assert (=> b!5357490 (= c!932816 ((_ is Cons!61353) (exprs!4943 (Context!8887 (Cons!61353 (h!67801 (exprs!4943 (h!67802 zl!343))) (t!374698 (exprs!4943 (h!67802 zl!343))))))))))

(declare-fun b!5357491 () Bool)

(assert (=> b!5357491 (= e!3325265 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1716995 res!2273437) b!5357489))

(assert (= (and d!1716995 c!932815) b!5357488))

(assert (= (and d!1716995 (not c!932815)) b!5357490))

(assert (= (and b!5357490 c!932816) b!5357487))

(assert (= (and b!5357490 (not c!932816)) b!5357491))

(assert (= (or b!5357488 b!5357487) bm!383171))

(declare-fun m!6387044 () Bool)

(assert (=> b!5357488 m!6387044))

(declare-fun m!6387046 () Bool)

(assert (=> bm!383171 m!6387046))

(declare-fun m!6387048 () Bool)

(assert (=> b!5357489 m!6387048))

(assert (=> b!5356961 d!1716995))

(declare-fun b!5357492 () Bool)

(declare-fun e!3325268 () (InoxSet Context!8886))

(declare-fun call!383177 () (InoxSet Context!8886))

(assert (=> b!5357492 (= e!3325268 call!383177)))

(declare-fun e!3325267 () (InoxSet Context!8886))

(declare-fun b!5357493 () Bool)

(assert (=> b!5357493 (= e!3325267 ((_ map or) call!383177 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 (h!67802 zl!343)))) (h!67800 s!2326))))))

(declare-fun bm!383172 () Bool)

(assert (=> bm!383172 (= call!383177 (derivationStepZipperDown!507 (h!67801 (exprs!4943 (h!67802 zl!343))) (Context!8887 (t!374698 (exprs!4943 (h!67802 zl!343)))) (h!67800 s!2326)))))

(declare-fun b!5357494 () Bool)

(declare-fun e!3325266 () Bool)

(assert (=> b!5357494 (= e!3325266 (nullable!5228 (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun d!1716997 () Bool)

(declare-fun c!932817 () Bool)

(assert (=> d!1716997 (= c!932817 e!3325266)))

(declare-fun res!2273438 () Bool)

(assert (=> d!1716997 (=> (not res!2273438) (not e!3325266))))

(assert (=> d!1716997 (= res!2273438 ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343))))))

(assert (=> d!1716997 (= (derivationStepZipperUp!431 (h!67802 zl!343) (h!67800 s!2326)) e!3325267)))

(declare-fun b!5357495 () Bool)

(assert (=> b!5357495 (= e!3325267 e!3325268)))

(declare-fun c!932818 () Bool)

(assert (=> b!5357495 (= c!932818 ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343))))))

(declare-fun b!5357496 () Bool)

(assert (=> b!5357496 (= e!3325268 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1716997 res!2273438) b!5357494))

(assert (= (and d!1716997 c!932817) b!5357493))

(assert (= (and d!1716997 (not c!932817)) b!5357495))

(assert (= (and b!5357495 c!932818) b!5357492))

(assert (= (and b!5357495 (not c!932818)) b!5357496))

(assert (= (or b!5357493 b!5357492) bm!383172))

(declare-fun m!6387050 () Bool)

(assert (=> b!5357493 m!6387050))

(declare-fun m!6387052 () Bool)

(assert (=> bm!383172 m!6387052))

(assert (=> b!5357494 m!6386608))

(assert (=> b!5356961 d!1716997))

(declare-fun b!5357497 () Bool)

(declare-fun e!3325271 () (InoxSet Context!8886))

(declare-fun call!383178 () (InoxSet Context!8886))

(assert (=> b!5357497 (= e!3325271 call!383178)))

(declare-fun e!3325270 () (InoxSet Context!8886))

(declare-fun b!5357498 () Bool)

(assert (=> b!5357498 (= e!3325270 ((_ map or) call!383178 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 lt!2183045))) (h!67800 s!2326))))))

(declare-fun bm!383173 () Bool)

(assert (=> bm!383173 (= call!383178 (derivationStepZipperDown!507 (h!67801 (exprs!4943 lt!2183045)) (Context!8887 (t!374698 (exprs!4943 lt!2183045))) (h!67800 s!2326)))))

(declare-fun b!5357499 () Bool)

(declare-fun e!3325269 () Bool)

(assert (=> b!5357499 (= e!3325269 (nullable!5228 (h!67801 (exprs!4943 lt!2183045))))))

(declare-fun d!1716999 () Bool)

(declare-fun c!932819 () Bool)

(assert (=> d!1716999 (= c!932819 e!3325269)))

(declare-fun res!2273439 () Bool)

(assert (=> d!1716999 (=> (not res!2273439) (not e!3325269))))

(assert (=> d!1716999 (= res!2273439 ((_ is Cons!61353) (exprs!4943 lt!2183045)))))

(assert (=> d!1716999 (= (derivationStepZipperUp!431 lt!2183045 (h!67800 s!2326)) e!3325270)))

(declare-fun b!5357500 () Bool)

(assert (=> b!5357500 (= e!3325270 e!3325271)))

(declare-fun c!932820 () Bool)

(assert (=> b!5357500 (= c!932820 ((_ is Cons!61353) (exprs!4943 lt!2183045)))))

(declare-fun b!5357501 () Bool)

(assert (=> b!5357501 (= e!3325271 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1716999 res!2273439) b!5357499))

(assert (= (and d!1716999 c!932819) b!5357498))

(assert (= (and d!1716999 (not c!932819)) b!5357500))

(assert (= (and b!5357500 c!932820) b!5357497))

(assert (= (and b!5357500 (not c!932820)) b!5357501))

(assert (= (or b!5357498 b!5357497) bm!383173))

(declare-fun m!6387054 () Bool)

(assert (=> b!5357498 m!6387054))

(declare-fun m!6387056 () Bool)

(assert (=> bm!383173 m!6387056))

(declare-fun m!6387058 () Bool)

(assert (=> b!5357499 m!6387058))

(assert (=> b!5356961 d!1716999))

(declare-fun d!1717001 () Bool)

(assert (=> d!1717001 (= (nullable!5228 (h!67801 (exprs!4943 (h!67802 zl!343)))) (nullableFct!1535 (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun bs!1241285 () Bool)

(assert (= bs!1241285 d!1717001))

(declare-fun m!6387060 () Bool)

(assert (=> bs!1241285 m!6387060))

(assert (=> b!5356961 d!1717001))

(declare-fun c!932824 () Bool)

(declare-fun c!932823 () Bool)

(declare-fun call!383184 () List!61477)

(declare-fun bm!383174 () Bool)

(assert (=> bm!383174 (= call!383184 ($colon$colon!1433 (exprs!4943 lt!2183045) (ite (or c!932824 c!932823) (regTwo!30630 (h!67801 (exprs!4943 (h!67802 zl!343)))) (h!67801 (exprs!4943 (h!67802 zl!343))))))))

(declare-fun bm!383175 () Bool)

(declare-fun call!383182 () List!61477)

(assert (=> bm!383175 (= call!383182 call!383184)))

(declare-fun b!5357503 () Bool)

(declare-fun e!3325274 () (InoxSet Context!8886))

(declare-fun call!383181 () (InoxSet Context!8886))

(assert (=> b!5357503 (= e!3325274 call!383181)))

(declare-fun bm!383176 () Bool)

(declare-fun call!383179 () (InoxSet Context!8886))

(declare-fun call!383180 () (InoxSet Context!8886))

(assert (=> bm!383176 (= call!383179 call!383180)))

(declare-fun b!5357504 () Bool)

(declare-fun e!3325272 () (InoxSet Context!8886))

(declare-fun call!383183 () (InoxSet Context!8886))

(assert (=> b!5357504 (= e!3325272 ((_ map or) call!383183 call!383180))))

(declare-fun c!932825 () Bool)

(declare-fun bm!383177 () Bool)

(assert (=> bm!383177 (= call!383180 (derivationStepZipperDown!507 (ite c!932825 (regTwo!30631 (h!67801 (exprs!4943 (h!67802 zl!343)))) (ite c!932824 (regTwo!30630 (h!67801 (exprs!4943 (h!67802 zl!343)))) (ite c!932823 (regOne!30630 (h!67801 (exprs!4943 (h!67802 zl!343)))) (reg!15388 (h!67801 (exprs!4943 (h!67802 zl!343))))))) (ite (or c!932825 c!932824) lt!2183045 (Context!8887 call!383182)) (h!67800 s!2326)))))

(declare-fun b!5357505 () Bool)

(declare-fun e!3325273 () (InoxSet Context!8886))

(assert (=> b!5357505 (= e!3325273 (store ((as const (Array Context!8886 Bool)) false) lt!2183045 true))))

(declare-fun b!5357506 () Bool)

(declare-fun e!3325276 () (InoxSet Context!8886))

(assert (=> b!5357506 (= e!3325276 ((as const (Array Context!8886 Bool)) false))))

(declare-fun b!5357507 () Bool)

(declare-fun e!3325277 () (InoxSet Context!8886))

(assert (=> b!5357507 (= e!3325277 e!3325274)))

(assert (=> b!5357507 (= c!932823 ((_ is Concat!23904) (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun bm!383178 () Bool)

(assert (=> bm!383178 (= call!383183 (derivationStepZipperDown!507 (ite c!932825 (regOne!30631 (h!67801 (exprs!4943 (h!67802 zl!343)))) (regOne!30630 (h!67801 (exprs!4943 (h!67802 zl!343))))) (ite c!932825 lt!2183045 (Context!8887 call!383184)) (h!67800 s!2326)))))

(declare-fun b!5357502 () Bool)

(declare-fun e!3325275 () Bool)

(assert (=> b!5357502 (= c!932824 e!3325275)))

(declare-fun res!2273440 () Bool)

(assert (=> b!5357502 (=> (not res!2273440) (not e!3325275))))

(assert (=> b!5357502 (= res!2273440 ((_ is Concat!23904) (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> b!5357502 (= e!3325272 e!3325277)))

(declare-fun d!1717003 () Bool)

(declare-fun c!932821 () Bool)

(assert (=> d!1717003 (= c!932821 (and ((_ is ElementMatch!15059) (h!67801 (exprs!4943 (h!67802 zl!343)))) (= (c!932657 (h!67801 (exprs!4943 (h!67802 zl!343)))) (h!67800 s!2326))))))

(assert (=> d!1717003 (= (derivationStepZipperDown!507 (h!67801 (exprs!4943 (h!67802 zl!343))) lt!2183045 (h!67800 s!2326)) e!3325273)))

(declare-fun b!5357508 () Bool)

(assert (=> b!5357508 (= e!3325277 ((_ map or) call!383183 call!383179))))

(declare-fun b!5357509 () Bool)

(assert (=> b!5357509 (= e!3325275 (nullable!5228 (regOne!30630 (h!67801 (exprs!4943 (h!67802 zl!343))))))))

(declare-fun b!5357510 () Bool)

(assert (=> b!5357510 (= e!3325273 e!3325272)))

(assert (=> b!5357510 (= c!932825 ((_ is Union!15059) (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun bm!383179 () Bool)

(assert (=> bm!383179 (= call!383181 call!383179)))

(declare-fun b!5357511 () Bool)

(declare-fun c!932822 () Bool)

(assert (=> b!5357511 (= c!932822 ((_ is Star!15059) (h!67801 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> b!5357511 (= e!3325274 e!3325276)))

(declare-fun b!5357512 () Bool)

(assert (=> b!5357512 (= e!3325276 call!383181)))

(assert (= (and d!1717003 c!932821) b!5357505))

(assert (= (and d!1717003 (not c!932821)) b!5357510))

(assert (= (and b!5357510 c!932825) b!5357504))

(assert (= (and b!5357510 (not c!932825)) b!5357502))

(assert (= (and b!5357502 res!2273440) b!5357509))

(assert (= (and b!5357502 c!932824) b!5357508))

(assert (= (and b!5357502 (not c!932824)) b!5357507))

(assert (= (and b!5357507 c!932823) b!5357503))

(assert (= (and b!5357507 (not c!932823)) b!5357511))

(assert (= (and b!5357511 c!932822) b!5357512))

(assert (= (and b!5357511 (not c!932822)) b!5357506))

(assert (= (or b!5357503 b!5357512) bm!383175))

(assert (= (or b!5357503 b!5357512) bm!383179))

(assert (= (or b!5357508 bm!383175) bm!383174))

(assert (= (or b!5357508 bm!383179) bm!383176))

(assert (= (or b!5357504 bm!383176) bm!383177))

(assert (= (or b!5357504 b!5357508) bm!383178))

(declare-fun m!6387062 () Bool)

(assert (=> bm!383174 m!6387062))

(declare-fun m!6387064 () Bool)

(assert (=> bm!383177 m!6387064))

(declare-fun m!6387066 () Bool)

(assert (=> b!5357509 m!6387066))

(declare-fun m!6387068 () Bool)

(assert (=> bm!383178 m!6387068))

(declare-fun m!6387070 () Bool)

(assert (=> b!5357505 m!6387070))

(assert (=> b!5356961 d!1717003))

(declare-fun d!1717005 () Bool)

(assert (=> d!1717005 (= (flatMap!786 z!1189 lambda!275627) (dynLambda!24236 lambda!275627 (h!67802 zl!343)))))

(declare-fun lt!2183146 () Unit!153754)

(assert (=> d!1717005 (= lt!2183146 (choose!40194 z!1189 (h!67802 zl!343) lambda!275627))))

(assert (=> d!1717005 (= z!1189 (store ((as const (Array Context!8886 Bool)) false) (h!67802 zl!343) true))))

(assert (=> d!1717005 (= (lemmaFlatMapOnSingletonSet!318 z!1189 (h!67802 zl!343) lambda!275627) lt!2183146)))

(declare-fun b_lambda!205463 () Bool)

(assert (=> (not b_lambda!205463) (not d!1717005)))

(declare-fun bs!1241286 () Bool)

(assert (= bs!1241286 d!1717005))

(assert (=> bs!1241286 m!6386610))

(declare-fun m!6387078 () Bool)

(assert (=> bs!1241286 m!6387078))

(declare-fun m!6387082 () Bool)

(assert (=> bs!1241286 m!6387082))

(declare-fun m!6387084 () Bool)

(assert (=> bs!1241286 m!6387084))

(assert (=> b!5356961 d!1717005))

(declare-fun d!1717009 () Bool)

(declare-fun c!932833 () Bool)

(assert (=> d!1717009 (= c!932833 (isEmpty!33324 s!2326))))

(declare-fun e!3325287 () Bool)

(assert (=> d!1717009 (= (matchZipper!1303 lt!2183062 s!2326) e!3325287)))

(declare-fun b!5357531 () Bool)

(declare-fun nullableZipper!1384 ((InoxSet Context!8886)) Bool)

(assert (=> b!5357531 (= e!3325287 (nullableZipper!1384 lt!2183062))))

(declare-fun b!5357532 () Bool)

(assert (=> b!5357532 (= e!3325287 (matchZipper!1303 (derivationStepZipper!1298 lt!2183062 (head!11485 s!2326)) (tail!10582 s!2326)))))

(assert (= (and d!1717009 c!932833) b!5357531))

(assert (= (and d!1717009 (not c!932833)) b!5357532))

(assert (=> d!1717009 m!6387012))

(declare-fun m!6387088 () Bool)

(assert (=> b!5357531 m!6387088))

(assert (=> b!5357532 m!6387018))

(assert (=> b!5357532 m!6387018))

(declare-fun m!6387090 () Bool)

(assert (=> b!5357532 m!6387090))

(assert (=> b!5357532 m!6387014))

(assert (=> b!5357532 m!6387090))

(assert (=> b!5357532 m!6387014))

(declare-fun m!6387092 () Bool)

(assert (=> b!5357532 m!6387092))

(assert (=> b!5356951 d!1717009))

(declare-fun d!1717013 () Bool)

(declare-fun c!932837 () Bool)

(assert (=> d!1717013 (= c!932837 (isEmpty!33324 (t!374697 s!2326)))))

(declare-fun e!3325294 () Bool)

(assert (=> d!1717013 (= (matchZipper!1303 lt!2183039 (t!374697 s!2326)) e!3325294)))

(declare-fun b!5357544 () Bool)

(assert (=> b!5357544 (= e!3325294 (nullableZipper!1384 lt!2183039))))

(declare-fun b!5357545 () Bool)

(assert (=> b!5357545 (= e!3325294 (matchZipper!1303 (derivationStepZipper!1298 lt!2183039 (head!11485 (t!374697 s!2326))) (tail!10582 (t!374697 s!2326))))))

(assert (= (and d!1717013 c!932837) b!5357544))

(assert (= (and d!1717013 (not c!932837)) b!5357545))

(declare-fun m!6387094 () Bool)

(assert (=> d!1717013 m!6387094))

(declare-fun m!6387096 () Bool)

(assert (=> b!5357544 m!6387096))

(declare-fun m!6387098 () Bool)

(assert (=> b!5357545 m!6387098))

(assert (=> b!5357545 m!6387098))

(declare-fun m!6387100 () Bool)

(assert (=> b!5357545 m!6387100))

(declare-fun m!6387102 () Bool)

(assert (=> b!5357545 m!6387102))

(assert (=> b!5357545 m!6387100))

(assert (=> b!5357545 m!6387102))

(declare-fun m!6387104 () Bool)

(assert (=> b!5357545 m!6387104))

(assert (=> b!5356951 d!1717013))

(declare-fun d!1717015 () Bool)

(declare-fun lambda!275684 () Int)

(declare-fun forall!14471 (List!61477 Int) Bool)

(assert (=> d!1717015 (= (inv!80894 setElem!34657) (forall!14471 (exprs!4943 setElem!34657) lambda!275684))))

(declare-fun bs!1241288 () Bool)

(assert (= bs!1241288 d!1717015))

(declare-fun m!6387122 () Bool)

(assert (=> bs!1241288 m!6387122))

(assert (=> setNonEmpty!34657 d!1717015))

(declare-fun b!5357571 () Bool)

(declare-fun e!3325315 () Bool)

(declare-fun e!3325311 () Bool)

(assert (=> b!5357571 (= e!3325315 e!3325311)))

(declare-fun c!932846 () Bool)

(assert (=> b!5357571 (= c!932846 ((_ is Union!15059) r!7292))))

(declare-fun d!1717021 () Bool)

(declare-fun res!2273463 () Bool)

(declare-fun e!3325312 () Bool)

(assert (=> d!1717021 (=> res!2273463 e!3325312)))

(assert (=> d!1717021 (= res!2273463 ((_ is ElementMatch!15059) r!7292))))

(assert (=> d!1717021 (= (validRegex!6795 r!7292) e!3325312)))

(declare-fun bm!383190 () Bool)

(declare-fun call!383195 () Bool)

(declare-fun call!383197 () Bool)

(assert (=> bm!383190 (= call!383195 call!383197)))

(declare-fun b!5357572 () Bool)

(declare-fun e!3325314 () Bool)

(assert (=> b!5357572 (= e!3325314 call!383197)))

(declare-fun b!5357573 () Bool)

(assert (=> b!5357573 (= e!3325315 e!3325314)))

(declare-fun res!2273462 () Bool)

(assert (=> b!5357573 (= res!2273462 (not (nullable!5228 (reg!15388 r!7292))))))

(assert (=> b!5357573 (=> (not res!2273462) (not e!3325314))))

(declare-fun bm!383191 () Bool)

(declare-fun call!383196 () Bool)

(assert (=> bm!383191 (= call!383196 (validRegex!6795 (ite c!932846 (regTwo!30631 r!7292) (regTwo!30630 r!7292))))))

(declare-fun b!5357574 () Bool)

(declare-fun e!3325313 () Bool)

(assert (=> b!5357574 (= e!3325313 call!383196)))

(declare-fun b!5357575 () Bool)

(declare-fun res!2273461 () Bool)

(declare-fun e!3325309 () Bool)

(assert (=> b!5357575 (=> res!2273461 e!3325309)))

(assert (=> b!5357575 (= res!2273461 (not ((_ is Concat!23904) r!7292)))))

(assert (=> b!5357575 (= e!3325311 e!3325309)))

(declare-fun b!5357576 () Bool)

(declare-fun e!3325310 () Bool)

(assert (=> b!5357576 (= e!3325310 call!383196)))

(declare-fun b!5357577 () Bool)

(assert (=> b!5357577 (= e!3325312 e!3325315)))

(declare-fun c!932845 () Bool)

(assert (=> b!5357577 (= c!932845 ((_ is Star!15059) r!7292))))

(declare-fun b!5357578 () Bool)

(declare-fun res!2273464 () Bool)

(assert (=> b!5357578 (=> (not res!2273464) (not e!3325310))))

(assert (=> b!5357578 (= res!2273464 call!383195)))

(assert (=> b!5357578 (= e!3325311 e!3325310)))

(declare-fun b!5357579 () Bool)

(assert (=> b!5357579 (= e!3325309 e!3325313)))

(declare-fun res!2273465 () Bool)

(assert (=> b!5357579 (=> (not res!2273465) (not e!3325313))))

(assert (=> b!5357579 (= res!2273465 call!383195)))

(declare-fun bm!383192 () Bool)

(assert (=> bm!383192 (= call!383197 (validRegex!6795 (ite c!932845 (reg!15388 r!7292) (ite c!932846 (regOne!30631 r!7292) (regOne!30630 r!7292)))))))

(assert (= (and d!1717021 (not res!2273463)) b!5357577))

(assert (= (and b!5357577 c!932845) b!5357573))

(assert (= (and b!5357577 (not c!932845)) b!5357571))

(assert (= (and b!5357573 res!2273462) b!5357572))

(assert (= (and b!5357571 c!932846) b!5357578))

(assert (= (and b!5357571 (not c!932846)) b!5357575))

(assert (= (and b!5357578 res!2273464) b!5357576))

(assert (= (and b!5357575 (not res!2273461)) b!5357579))

(assert (= (and b!5357579 res!2273465) b!5357574))

(assert (= (or b!5357576 b!5357574) bm!383191))

(assert (= (or b!5357578 b!5357579) bm!383190))

(assert (= (or b!5357572 bm!383190) bm!383192))

(declare-fun m!6387124 () Bool)

(assert (=> b!5357573 m!6387124))

(declare-fun m!6387126 () Bool)

(assert (=> bm!383191 m!6387126))

(declare-fun m!6387128 () Bool)

(assert (=> bm!383192 m!6387128))

(assert (=> start!563950 d!1717021))

(declare-fun d!1717023 () Bool)

(assert (=> d!1717023 (= (isEmpty!33319 (t!374698 (exprs!4943 (h!67802 zl!343)))) ((_ is Nil!61353) (t!374698 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> b!5356933 d!1717023))

(declare-fun d!1717025 () Bool)

(declare-fun c!932847 () Bool)

(assert (=> d!1717025 (= c!932847 (isEmpty!33324 (t!374697 s!2326)))))

(declare-fun e!3325316 () Bool)

(assert (=> d!1717025 (= (matchZipper!1303 lt!2183043 (t!374697 s!2326)) e!3325316)))

(declare-fun b!5357580 () Bool)

(assert (=> b!5357580 (= e!3325316 (nullableZipper!1384 lt!2183043))))

(declare-fun b!5357581 () Bool)

(assert (=> b!5357581 (= e!3325316 (matchZipper!1303 (derivationStepZipper!1298 lt!2183043 (head!11485 (t!374697 s!2326))) (tail!10582 (t!374697 s!2326))))))

(assert (= (and d!1717025 c!932847) b!5357580))

(assert (= (and d!1717025 (not c!932847)) b!5357581))

(assert (=> d!1717025 m!6387094))

(declare-fun m!6387130 () Bool)

(assert (=> b!5357580 m!6387130))

(assert (=> b!5357581 m!6387098))

(assert (=> b!5357581 m!6387098))

(declare-fun m!6387132 () Bool)

(assert (=> b!5357581 m!6387132))

(assert (=> b!5357581 m!6387102))

(assert (=> b!5357581 m!6387132))

(assert (=> b!5357581 m!6387102))

(declare-fun m!6387134 () Bool)

(assert (=> b!5357581 m!6387134))

(assert (=> b!5356953 d!1717025))

(declare-fun d!1717027 () Bool)

(declare-fun e!3325319 () Bool)

(assert (=> d!1717027 (= (matchZipper!1303 ((_ map or) lt!2183065 lt!2183043) (t!374697 s!2326)) e!3325319)))

(declare-fun res!2273468 () Bool)

(assert (=> d!1717027 (=> res!2273468 e!3325319)))

(assert (=> d!1717027 (= res!2273468 (matchZipper!1303 lt!2183065 (t!374697 s!2326)))))

(declare-fun lt!2183154 () Unit!153754)

(declare-fun choose!40199 ((InoxSet Context!8886) (InoxSet Context!8886) List!61476) Unit!153754)

(assert (=> d!1717027 (= lt!2183154 (choose!40199 lt!2183065 lt!2183043 (t!374697 s!2326)))))

(assert (=> d!1717027 (= (lemmaZipperConcatMatchesSameAsBothZippers!296 lt!2183065 lt!2183043 (t!374697 s!2326)) lt!2183154)))

(declare-fun b!5357584 () Bool)

(assert (=> b!5357584 (= e!3325319 (matchZipper!1303 lt!2183043 (t!374697 s!2326)))))

(assert (= (and d!1717027 (not res!2273468)) b!5357584))

(assert (=> d!1717027 m!6386578))

(assert (=> d!1717027 m!6386576))

(declare-fun m!6387144 () Bool)

(assert (=> d!1717027 m!6387144))

(assert (=> b!5357584 m!6386536))

(assert (=> b!5356943 d!1717027))

(declare-fun d!1717033 () Bool)

(declare-fun c!932848 () Bool)

(assert (=> d!1717033 (= c!932848 (isEmpty!33324 (t!374697 s!2326)))))

(declare-fun e!3325322 () Bool)

(assert (=> d!1717033 (= (matchZipper!1303 lt!2183065 (t!374697 s!2326)) e!3325322)))

(declare-fun b!5357593 () Bool)

(assert (=> b!5357593 (= e!3325322 (nullableZipper!1384 lt!2183065))))

(declare-fun b!5357594 () Bool)

(assert (=> b!5357594 (= e!3325322 (matchZipper!1303 (derivationStepZipper!1298 lt!2183065 (head!11485 (t!374697 s!2326))) (tail!10582 (t!374697 s!2326))))))

(assert (= (and d!1717033 c!932848) b!5357593))

(assert (= (and d!1717033 (not c!932848)) b!5357594))

(assert (=> d!1717033 m!6387094))

(declare-fun m!6387146 () Bool)

(assert (=> b!5357593 m!6387146))

(assert (=> b!5357594 m!6387098))

(assert (=> b!5357594 m!6387098))

(declare-fun m!6387148 () Bool)

(assert (=> b!5357594 m!6387148))

(assert (=> b!5357594 m!6387102))

(assert (=> b!5357594 m!6387148))

(assert (=> b!5357594 m!6387102))

(declare-fun m!6387150 () Bool)

(assert (=> b!5357594 m!6387150))

(assert (=> b!5356943 d!1717033))

(declare-fun d!1717035 () Bool)

(declare-fun c!932849 () Bool)

(assert (=> d!1717035 (= c!932849 (isEmpty!33324 (t!374697 s!2326)))))

(declare-fun e!3325323 () Bool)

(assert (=> d!1717035 (= (matchZipper!1303 ((_ map or) lt!2183065 lt!2183043) (t!374697 s!2326)) e!3325323)))

(declare-fun b!5357597 () Bool)

(assert (=> b!5357597 (= e!3325323 (nullableZipper!1384 ((_ map or) lt!2183065 lt!2183043)))))

(declare-fun b!5357598 () Bool)

(assert (=> b!5357598 (= e!3325323 (matchZipper!1303 (derivationStepZipper!1298 ((_ map or) lt!2183065 lt!2183043) (head!11485 (t!374697 s!2326))) (tail!10582 (t!374697 s!2326))))))

(assert (= (and d!1717035 c!932849) b!5357597))

(assert (= (and d!1717035 (not c!932849)) b!5357598))

(assert (=> d!1717035 m!6387094))

(declare-fun m!6387152 () Bool)

(assert (=> b!5357597 m!6387152))

(assert (=> b!5357598 m!6387098))

(assert (=> b!5357598 m!6387098))

(declare-fun m!6387154 () Bool)

(assert (=> b!5357598 m!6387154))

(assert (=> b!5357598 m!6387102))

(assert (=> b!5357598 m!6387154))

(assert (=> b!5357598 m!6387102))

(declare-fun m!6387156 () Bool)

(assert (=> b!5357598 m!6387156))

(assert (=> b!5356943 d!1717035))

(declare-fun d!1717037 () Bool)

(assert (=> d!1717037 (= (flatMap!786 lt!2183041 lambda!275627) (dynLambda!24236 lambda!275627 lt!2183050))))

(declare-fun lt!2183155 () Unit!153754)

(assert (=> d!1717037 (= lt!2183155 (choose!40194 lt!2183041 lt!2183050 lambda!275627))))

(assert (=> d!1717037 (= lt!2183041 (store ((as const (Array Context!8886 Bool)) false) lt!2183050 true))))

(assert (=> d!1717037 (= (lemmaFlatMapOnSingletonSet!318 lt!2183041 lt!2183050 lambda!275627) lt!2183155)))

(declare-fun b_lambda!205465 () Bool)

(assert (=> (not b_lambda!205465) (not d!1717037)))

(declare-fun bs!1241307 () Bool)

(assert (= bs!1241307 d!1717037))

(assert (=> bs!1241307 m!6386624))

(declare-fun m!6387158 () Bool)

(assert (=> bs!1241307 m!6387158))

(declare-fun m!6387160 () Bool)

(assert (=> bs!1241307 m!6387160))

(assert (=> bs!1241307 m!6386632))

(assert (=> b!5356944 d!1717037))

(declare-fun b!5357611 () Bool)

(declare-fun e!3325329 () (InoxSet Context!8886))

(declare-fun call!383198 () (InoxSet Context!8886))

(assert (=> b!5357611 (= e!3325329 call!383198)))

(declare-fun b!5357612 () Bool)

(declare-fun e!3325328 () (InoxSet Context!8886))

(assert (=> b!5357612 (= e!3325328 ((_ map or) call!383198 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 lt!2183049))) (h!67800 s!2326))))))

(declare-fun bm!383193 () Bool)

(assert (=> bm!383193 (= call!383198 (derivationStepZipperDown!507 (h!67801 (exprs!4943 lt!2183049)) (Context!8887 (t!374698 (exprs!4943 lt!2183049))) (h!67800 s!2326)))))

(declare-fun b!5357613 () Bool)

(declare-fun e!3325327 () Bool)

(assert (=> b!5357613 (= e!3325327 (nullable!5228 (h!67801 (exprs!4943 lt!2183049))))))

(declare-fun d!1717039 () Bool)

(declare-fun c!932850 () Bool)

(assert (=> d!1717039 (= c!932850 e!3325327)))

(declare-fun res!2273469 () Bool)

(assert (=> d!1717039 (=> (not res!2273469) (not e!3325327))))

(assert (=> d!1717039 (= res!2273469 ((_ is Cons!61353) (exprs!4943 lt!2183049)))))

(assert (=> d!1717039 (= (derivationStepZipperUp!431 lt!2183049 (h!67800 s!2326)) e!3325328)))

(declare-fun b!5357614 () Bool)

(assert (=> b!5357614 (= e!3325328 e!3325329)))

(declare-fun c!932851 () Bool)

(assert (=> b!5357614 (= c!932851 ((_ is Cons!61353) (exprs!4943 lt!2183049)))))

(declare-fun b!5357615 () Bool)

(assert (=> b!5357615 (= e!3325329 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1717039 res!2273469) b!5357613))

(assert (= (and d!1717039 c!932850) b!5357612))

(assert (= (and d!1717039 (not c!932850)) b!5357614))

(assert (= (and b!5357614 c!932851) b!5357611))

(assert (= (and b!5357614 (not c!932851)) b!5357615))

(assert (= (or b!5357612 b!5357611) bm!383193))

(declare-fun m!6387162 () Bool)

(assert (=> b!5357612 m!6387162))

(declare-fun m!6387164 () Bool)

(assert (=> bm!383193 m!6387164))

(declare-fun m!6387166 () Bool)

(assert (=> b!5357613 m!6387166))

(assert (=> b!5356944 d!1717039))

(declare-fun d!1717041 () Bool)

(assert (=> d!1717041 (= (flatMap!786 lt!2183041 lambda!275627) (choose!40193 lt!2183041 lambda!275627))))

(declare-fun bs!1241308 () Bool)

(assert (= bs!1241308 d!1717041))

(declare-fun m!6387168 () Bool)

(assert (=> bs!1241308 m!6387168))

(assert (=> b!5356944 d!1717041))

(declare-fun b!5357620 () Bool)

(declare-fun e!3325334 () (InoxSet Context!8886))

(declare-fun call!383199 () (InoxSet Context!8886))

(assert (=> b!5357620 (= e!3325334 call!383199)))

(declare-fun b!5357621 () Bool)

(declare-fun e!3325333 () (InoxSet Context!8886))

(assert (=> b!5357621 (= e!3325333 ((_ map or) call!383199 (derivationStepZipperUp!431 (Context!8887 (t!374698 (exprs!4943 lt!2183050))) (h!67800 s!2326))))))

(declare-fun bm!383194 () Bool)

(assert (=> bm!383194 (= call!383199 (derivationStepZipperDown!507 (h!67801 (exprs!4943 lt!2183050)) (Context!8887 (t!374698 (exprs!4943 lt!2183050))) (h!67800 s!2326)))))

(declare-fun b!5357622 () Bool)

(declare-fun e!3325332 () Bool)

(assert (=> b!5357622 (= e!3325332 (nullable!5228 (h!67801 (exprs!4943 lt!2183050))))))

(declare-fun d!1717043 () Bool)

(declare-fun c!932852 () Bool)

(assert (=> d!1717043 (= c!932852 e!3325332)))

(declare-fun res!2273470 () Bool)

(assert (=> d!1717043 (=> (not res!2273470) (not e!3325332))))

(assert (=> d!1717043 (= res!2273470 ((_ is Cons!61353) (exprs!4943 lt!2183050)))))

(assert (=> d!1717043 (= (derivationStepZipperUp!431 lt!2183050 (h!67800 s!2326)) e!3325333)))

(declare-fun b!5357623 () Bool)

(assert (=> b!5357623 (= e!3325333 e!3325334)))

(declare-fun c!932853 () Bool)

(assert (=> b!5357623 (= c!932853 ((_ is Cons!61353) (exprs!4943 lt!2183050)))))

(declare-fun b!5357624 () Bool)

(assert (=> b!5357624 (= e!3325334 ((as const (Array Context!8886 Bool)) false))))

(assert (= (and d!1717043 res!2273470) b!5357622))

(assert (= (and d!1717043 c!932852) b!5357621))

(assert (= (and d!1717043 (not c!932852)) b!5357623))

(assert (= (and b!5357623 c!932853) b!5357620))

(assert (= (and b!5357623 (not c!932853)) b!5357624))

(assert (= (or b!5357621 b!5357620) bm!383194))

(declare-fun m!6387170 () Bool)

(assert (=> b!5357621 m!6387170))

(declare-fun m!6387172 () Bool)

(assert (=> bm!383194 m!6387172))

(declare-fun m!6387174 () Bool)

(assert (=> b!5357622 m!6387174))

(assert (=> b!5356944 d!1717043))

(declare-fun d!1717045 () Bool)

(assert (=> d!1717045 (= (flatMap!786 lt!2183048 lambda!275627) (dynLambda!24236 lambda!275627 lt!2183049))))

(declare-fun lt!2183156 () Unit!153754)

(assert (=> d!1717045 (= lt!2183156 (choose!40194 lt!2183048 lt!2183049 lambda!275627))))

(assert (=> d!1717045 (= lt!2183048 (store ((as const (Array Context!8886 Bool)) false) lt!2183049 true))))

(assert (=> d!1717045 (= (lemmaFlatMapOnSingletonSet!318 lt!2183048 lt!2183049 lambda!275627) lt!2183156)))

(declare-fun b_lambda!205467 () Bool)

(assert (=> (not b_lambda!205467) (not d!1717045)))

(declare-fun bs!1241309 () Bool)

(assert (= bs!1241309 d!1717045))

(assert (=> bs!1241309 m!6386630))

(declare-fun m!6387178 () Bool)

(assert (=> bs!1241309 m!6387178))

(declare-fun m!6387180 () Bool)

(assert (=> bs!1241309 m!6387180))

(assert (=> bs!1241309 m!6386620))

(assert (=> b!5356944 d!1717045))

(declare-fun d!1717047 () Bool)

(assert (=> d!1717047 (= (flatMap!786 lt!2183048 lambda!275627) (choose!40193 lt!2183048 lambda!275627))))

(declare-fun bs!1241310 () Bool)

(assert (= bs!1241310 d!1717047))

(declare-fun m!6387182 () Bool)

(assert (=> bs!1241310 m!6387182))

(assert (=> b!5356944 d!1717047))

(declare-fun d!1717049 () Bool)

(declare-fun lt!2183157 () Regex!15059)

(assert (=> d!1717049 (validRegex!6795 lt!2183157)))

(assert (=> d!1717049 (= lt!2183157 (generalisedUnion!988 (unfocusZipperList!501 (Cons!61354 lt!2183050 Nil!61354))))))

(assert (=> d!1717049 (= (unfocusZipper!801 (Cons!61354 lt!2183050 Nil!61354)) lt!2183157)))

(declare-fun bs!1241311 () Bool)

(assert (= bs!1241311 d!1717049))

(declare-fun m!6387184 () Bool)

(assert (=> bs!1241311 m!6387184))

(declare-fun m!6387186 () Bool)

(assert (=> bs!1241311 m!6387186))

(assert (=> bs!1241311 m!6387186))

(declare-fun m!6387188 () Bool)

(assert (=> bs!1241311 m!6387188))

(assert (=> b!5356944 d!1717049))

(declare-fun d!1717051 () Bool)

(assert (=> d!1717051 (= (isEmpty!33320 (t!374699 zl!343)) ((_ is Nil!61354) (t!374699 zl!343)))))

(assert (=> b!5356934 d!1717051))

(declare-fun bs!1241312 () Bool)

(declare-fun d!1717053 () Bool)

(assert (= bs!1241312 (and d!1717053 d!1717015)))

(declare-fun lambda!275687 () Int)

(assert (=> bs!1241312 (= lambda!275687 lambda!275684)))

(assert (=> d!1717053 (= (inv!80894 (h!67802 zl!343)) (forall!14471 (exprs!4943 (h!67802 zl!343)) lambda!275687))))

(declare-fun bs!1241313 () Bool)

(assert (= bs!1241313 d!1717053))

(declare-fun m!6387190 () Bool)

(assert (=> bs!1241313 m!6387190))

(assert (=> b!5356954 d!1717053))

(declare-fun bs!1241318 () Bool)

(declare-fun d!1717055 () Bool)

(assert (= bs!1241318 (and d!1717055 d!1717015)))

(declare-fun lambda!275690 () Int)

(assert (=> bs!1241318 (= lambda!275690 lambda!275684)))

(declare-fun bs!1241319 () Bool)

(assert (= bs!1241319 (and d!1717055 d!1717053)))

(assert (=> bs!1241319 (= lambda!275690 lambda!275687)))

(declare-fun b!5357673 () Bool)

(declare-fun e!3325368 () Bool)

(declare-fun e!3325364 () Bool)

(assert (=> b!5357673 (= e!3325368 e!3325364)))

(declare-fun c!932864 () Bool)

(declare-fun tail!10584 (List!61477) List!61477)

(assert (=> b!5357673 (= c!932864 (isEmpty!33319 (tail!10584 (unfocusZipperList!501 zl!343))))))

(declare-fun b!5357674 () Bool)

(declare-fun e!3325366 () Regex!15059)

(declare-fun e!3325367 () Regex!15059)

(assert (=> b!5357674 (= e!3325366 e!3325367)))

(declare-fun c!932865 () Bool)

(assert (=> b!5357674 (= c!932865 ((_ is Cons!61353) (unfocusZipperList!501 zl!343)))))

(declare-fun b!5357675 () Bool)

(declare-fun lt!2183160 () Regex!15059)

(declare-fun isUnion!359 (Regex!15059) Bool)

(assert (=> b!5357675 (= e!3325364 (isUnion!359 lt!2183160))))

(declare-fun b!5357676 () Bool)

(declare-fun head!11487 (List!61477) Regex!15059)

(assert (=> b!5357676 (= e!3325364 (= lt!2183160 (head!11487 (unfocusZipperList!501 zl!343))))))

(declare-fun e!3325363 () Bool)

(assert (=> d!1717055 e!3325363))

(declare-fun res!2273475 () Bool)

(assert (=> d!1717055 (=> (not res!2273475) (not e!3325363))))

(assert (=> d!1717055 (= res!2273475 (validRegex!6795 lt!2183160))))

(assert (=> d!1717055 (= lt!2183160 e!3325366)))

(declare-fun c!932862 () Bool)

(declare-fun e!3325365 () Bool)

(assert (=> d!1717055 (= c!932862 e!3325365)))

(declare-fun res!2273476 () Bool)

(assert (=> d!1717055 (=> (not res!2273476) (not e!3325365))))

(assert (=> d!1717055 (= res!2273476 ((_ is Cons!61353) (unfocusZipperList!501 zl!343)))))

(assert (=> d!1717055 (forall!14471 (unfocusZipperList!501 zl!343) lambda!275690)))

(assert (=> d!1717055 (= (generalisedUnion!988 (unfocusZipperList!501 zl!343)) lt!2183160)))

(declare-fun b!5357677 () Bool)

(assert (=> b!5357677 (= e!3325365 (isEmpty!33319 (t!374698 (unfocusZipperList!501 zl!343))))))

(declare-fun b!5357678 () Bool)

(assert (=> b!5357678 (= e!3325363 e!3325368)))

(declare-fun c!932863 () Bool)

(assert (=> b!5357678 (= c!932863 (isEmpty!33319 (unfocusZipperList!501 zl!343)))))

(declare-fun b!5357679 () Bool)

(declare-fun isEmptyLang!927 (Regex!15059) Bool)

(assert (=> b!5357679 (= e!3325368 (isEmptyLang!927 lt!2183160))))

(declare-fun b!5357680 () Bool)

(assert (=> b!5357680 (= e!3325366 (h!67801 (unfocusZipperList!501 zl!343)))))

(declare-fun b!5357681 () Bool)

(assert (=> b!5357681 (= e!3325367 (Union!15059 (h!67801 (unfocusZipperList!501 zl!343)) (generalisedUnion!988 (t!374698 (unfocusZipperList!501 zl!343)))))))

(declare-fun b!5357682 () Bool)

(assert (=> b!5357682 (= e!3325367 EmptyLang!15059)))

(assert (= (and d!1717055 res!2273476) b!5357677))

(assert (= (and d!1717055 c!932862) b!5357680))

(assert (= (and d!1717055 (not c!932862)) b!5357674))

(assert (= (and b!5357674 c!932865) b!5357681))

(assert (= (and b!5357674 (not c!932865)) b!5357682))

(assert (= (and d!1717055 res!2273475) b!5357678))

(assert (= (and b!5357678 c!932863) b!5357679))

(assert (= (and b!5357678 (not c!932863)) b!5357673))

(assert (= (and b!5357673 c!932864) b!5357676))

(assert (= (and b!5357673 (not c!932864)) b!5357675))

(declare-fun m!6387194 () Bool)

(assert (=> d!1717055 m!6387194))

(assert (=> d!1717055 m!6386596))

(declare-fun m!6387196 () Bool)

(assert (=> d!1717055 m!6387196))

(declare-fun m!6387198 () Bool)

(assert (=> b!5357679 m!6387198))

(declare-fun m!6387200 () Bool)

(assert (=> b!5357677 m!6387200))

(declare-fun m!6387202 () Bool)

(assert (=> b!5357681 m!6387202))

(declare-fun m!6387204 () Bool)

(assert (=> b!5357675 m!6387204))

(assert (=> b!5357678 m!6386596))

(declare-fun m!6387206 () Bool)

(assert (=> b!5357678 m!6387206))

(assert (=> b!5357676 m!6386596))

(declare-fun m!6387208 () Bool)

(assert (=> b!5357676 m!6387208))

(assert (=> b!5357673 m!6386596))

(declare-fun m!6387210 () Bool)

(assert (=> b!5357673 m!6387210))

(assert (=> b!5357673 m!6387210))

(declare-fun m!6387212 () Bool)

(assert (=> b!5357673 m!6387212))

(assert (=> b!5356955 d!1717055))

(declare-fun bs!1241320 () Bool)

(declare-fun d!1717065 () Bool)

(assert (= bs!1241320 (and d!1717065 d!1717015)))

(declare-fun lambda!275693 () Int)

(assert (=> bs!1241320 (= lambda!275693 lambda!275684)))

(declare-fun bs!1241321 () Bool)

(assert (= bs!1241321 (and d!1717065 d!1717053)))

(assert (=> bs!1241321 (= lambda!275693 lambda!275687)))

(declare-fun bs!1241322 () Bool)

(assert (= bs!1241322 (and d!1717065 d!1717055)))

(assert (=> bs!1241322 (= lambda!275693 lambda!275690)))

(declare-fun lt!2183163 () List!61477)

(assert (=> d!1717065 (forall!14471 lt!2183163 lambda!275693)))

(declare-fun e!3325371 () List!61477)

(assert (=> d!1717065 (= lt!2183163 e!3325371)))

(declare-fun c!932868 () Bool)

(assert (=> d!1717065 (= c!932868 ((_ is Cons!61354) zl!343))))

(assert (=> d!1717065 (= (unfocusZipperList!501 zl!343) lt!2183163)))

(declare-fun b!5357687 () Bool)

(assert (=> b!5357687 (= e!3325371 (Cons!61353 (generalisedConcat!728 (exprs!4943 (h!67802 zl!343))) (unfocusZipperList!501 (t!374699 zl!343))))))

(declare-fun b!5357688 () Bool)

(assert (=> b!5357688 (= e!3325371 Nil!61353)))

(assert (= (and d!1717065 c!932868) b!5357687))

(assert (= (and d!1717065 (not c!932868)) b!5357688))

(declare-fun m!6387214 () Bool)

(assert (=> d!1717065 m!6387214))

(assert (=> b!5357687 m!6386568))

(declare-fun m!6387216 () Bool)

(assert (=> b!5357687 m!6387216))

(assert (=> b!5356955 d!1717065))

(declare-fun bs!1241323 () Bool)

(declare-fun d!1717067 () Bool)

(assert (= bs!1241323 (and d!1717067 d!1717015)))

(declare-fun lambda!275696 () Int)

(assert (=> bs!1241323 (= lambda!275696 lambda!275684)))

(declare-fun bs!1241324 () Bool)

(assert (= bs!1241324 (and d!1717067 d!1717053)))

(assert (=> bs!1241324 (= lambda!275696 lambda!275687)))

(declare-fun bs!1241325 () Bool)

(assert (= bs!1241325 (and d!1717067 d!1717055)))

(assert (=> bs!1241325 (= lambda!275696 lambda!275690)))

(declare-fun bs!1241326 () Bool)

(assert (= bs!1241326 (and d!1717067 d!1717065)))

(assert (=> bs!1241326 (= lambda!275696 lambda!275693)))

(declare-fun b!5357709 () Bool)

(declare-fun e!3325385 () Bool)

(assert (=> b!5357709 (= e!3325385 (isEmpty!33319 (t!374698 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun b!5357711 () Bool)

(declare-fun e!3325387 () Regex!15059)

(assert (=> b!5357711 (= e!3325387 EmptyExpr!15059)))

(declare-fun b!5357712 () Bool)

(declare-fun e!3325384 () Bool)

(declare-fun lt!2183166 () Regex!15059)

(declare-fun isConcat!442 (Regex!15059) Bool)

(assert (=> b!5357712 (= e!3325384 (isConcat!442 lt!2183166))))

(declare-fun b!5357713 () Bool)

(declare-fun e!3325389 () Bool)

(declare-fun e!3325388 () Bool)

(assert (=> b!5357713 (= e!3325389 e!3325388)))

(declare-fun c!932880 () Bool)

(assert (=> b!5357713 (= c!932880 (isEmpty!33319 (exprs!4943 (h!67802 zl!343))))))

(declare-fun b!5357714 () Bool)

(declare-fun isEmptyExpr!919 (Regex!15059) Bool)

(assert (=> b!5357714 (= e!3325388 (isEmptyExpr!919 lt!2183166))))

(declare-fun b!5357715 () Bool)

(declare-fun e!3325386 () Regex!15059)

(assert (=> b!5357715 (= e!3325386 e!3325387)))

(declare-fun c!932878 () Bool)

(assert (=> b!5357715 (= c!932878 ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343))))))

(declare-fun b!5357716 () Bool)

(assert (=> b!5357716 (= e!3325388 e!3325384)))

(declare-fun c!932877 () Bool)

(assert (=> b!5357716 (= c!932877 (isEmpty!33319 (tail!10584 (exprs!4943 (h!67802 zl!343)))))))

(assert (=> d!1717067 e!3325389))

(declare-fun res!2273481 () Bool)

(assert (=> d!1717067 (=> (not res!2273481) (not e!3325389))))

(assert (=> d!1717067 (= res!2273481 (validRegex!6795 lt!2183166))))

(assert (=> d!1717067 (= lt!2183166 e!3325386)))

(declare-fun c!932879 () Bool)

(assert (=> d!1717067 (= c!932879 e!3325385)))

(declare-fun res!2273482 () Bool)

(assert (=> d!1717067 (=> (not res!2273482) (not e!3325385))))

(assert (=> d!1717067 (= res!2273482 ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343))))))

(assert (=> d!1717067 (forall!14471 (exprs!4943 (h!67802 zl!343)) lambda!275696)))

(assert (=> d!1717067 (= (generalisedConcat!728 (exprs!4943 (h!67802 zl!343))) lt!2183166)))

(declare-fun b!5357710 () Bool)

(assert (=> b!5357710 (= e!3325386 (h!67801 (exprs!4943 (h!67802 zl!343))))))

(declare-fun b!5357717 () Bool)

(assert (=> b!5357717 (= e!3325384 (= lt!2183166 (head!11487 (exprs!4943 (h!67802 zl!343)))))))

(declare-fun b!5357718 () Bool)

(assert (=> b!5357718 (= e!3325387 (Concat!23904 (h!67801 (exprs!4943 (h!67802 zl!343))) (generalisedConcat!728 (t!374698 (exprs!4943 (h!67802 zl!343))))))))

(assert (= (and d!1717067 res!2273482) b!5357709))

(assert (= (and d!1717067 c!932879) b!5357710))

(assert (= (and d!1717067 (not c!932879)) b!5357715))

(assert (= (and b!5357715 c!932878) b!5357718))

(assert (= (and b!5357715 (not c!932878)) b!5357711))

(assert (= (and d!1717067 res!2273481) b!5357713))

(assert (= (and b!5357713 c!932880) b!5357714))

(assert (= (and b!5357713 (not c!932880)) b!5357716))

(assert (= (and b!5357716 c!932877) b!5357717))

(assert (= (and b!5357716 (not c!932877)) b!5357712))

(declare-fun m!6387218 () Bool)

(assert (=> d!1717067 m!6387218))

(declare-fun m!6387220 () Bool)

(assert (=> d!1717067 m!6387220))

(assert (=> b!5357709 m!6386554))

(declare-fun m!6387222 () Bool)

(assert (=> b!5357717 m!6387222))

(declare-fun m!6387224 () Bool)

(assert (=> b!5357712 m!6387224))

(declare-fun m!6387226 () Bool)

(assert (=> b!5357716 m!6387226))

(assert (=> b!5357716 m!6387226))

(declare-fun m!6387228 () Bool)

(assert (=> b!5357716 m!6387228))

(declare-fun m!6387230 () Bool)

(assert (=> b!5357714 m!6387230))

(declare-fun m!6387232 () Bool)

(assert (=> b!5357718 m!6387232))

(declare-fun m!6387234 () Bool)

(assert (=> b!5357713 m!6387234))

(assert (=> b!5356936 d!1717067))

(declare-fun d!1717069 () Bool)

(declare-fun e!3325392 () Bool)

(assert (=> d!1717069 e!3325392))

(declare-fun res!2273485 () Bool)

(assert (=> d!1717069 (=> (not res!2273485) (not e!3325392))))

(declare-fun lt!2183169 () List!61478)

(declare-fun noDuplicate!1338 (List!61478) Bool)

(assert (=> d!1717069 (= res!2273485 (noDuplicate!1338 lt!2183169))))

(declare-fun choose!40200 ((InoxSet Context!8886)) List!61478)

(assert (=> d!1717069 (= lt!2183169 (choose!40200 z!1189))))

(assert (=> d!1717069 (= (toList!8843 z!1189) lt!2183169)))

(declare-fun b!5357721 () Bool)

(declare-fun content!10946 (List!61478) (InoxSet Context!8886))

(assert (=> b!5357721 (= e!3325392 (= (content!10946 lt!2183169) z!1189))))

(assert (= (and d!1717069 res!2273485) b!5357721))

(declare-fun m!6387236 () Bool)

(assert (=> d!1717069 m!6387236))

(declare-fun m!6387238 () Bool)

(assert (=> d!1717069 m!6387238))

(declare-fun m!6387240 () Bool)

(assert (=> b!5357721 m!6387240))

(assert (=> b!5356947 d!1717069))

(declare-fun b!5357723 () Bool)

(declare-fun e!3325393 () Bool)

(declare-fun lt!2183172 () Option!15170)

(assert (=> b!5357723 (= e!3325393 (not (isDefined!11873 lt!2183172)))))

(declare-fun b!5357724 () Bool)

(declare-fun e!3325397 () Option!15170)

(assert (=> b!5357724 (= e!3325397 (Some!15169 (tuple2!64517 Nil!61352 s!2326)))))

(declare-fun b!5357725 () Bool)

(declare-fun lt!2183170 () Unit!153754)

(declare-fun lt!2183171 () Unit!153754)

(assert (=> b!5357725 (= lt!2183170 lt!2183171)))

(assert (=> b!5357725 (= (++!13364 (++!13364 Nil!61352 (Cons!61352 (h!67800 s!2326) Nil!61352)) (t!374697 s!2326)) s!2326)))

(assert (=> b!5357725 (= lt!2183171 (lemmaMoveElementToOtherListKeepsConcatEq!1779 Nil!61352 (h!67800 s!2326) (t!374697 s!2326) s!2326))))

(declare-fun e!3325396 () Option!15170)

(assert (=> b!5357725 (= e!3325396 (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) (++!13364 Nil!61352 (Cons!61352 (h!67800 s!2326) Nil!61352)) (t!374697 s!2326) s!2326))))

(declare-fun b!5357726 () Bool)

(declare-fun e!3325394 () Bool)

(assert (=> b!5357726 (= e!3325394 (matchR!7244 (regTwo!30630 r!7292) s!2326))))

(declare-fun d!1717071 () Bool)

(assert (=> d!1717071 e!3325393))

(declare-fun res!2273489 () Bool)

(assert (=> d!1717071 (=> res!2273489 e!3325393)))

(declare-fun e!3325395 () Bool)

(assert (=> d!1717071 (= res!2273489 e!3325395)))

(declare-fun res!2273488 () Bool)

(assert (=> d!1717071 (=> (not res!2273488) (not e!3325395))))

(assert (=> d!1717071 (= res!2273488 (isDefined!11873 lt!2183172))))

(assert (=> d!1717071 (= lt!2183172 e!3325397)))

(declare-fun c!932882 () Bool)

(assert (=> d!1717071 (= c!932882 e!3325394)))

(declare-fun res!2273486 () Bool)

(assert (=> d!1717071 (=> (not res!2273486) (not e!3325394))))

(assert (=> d!1717071 (= res!2273486 (matchR!7244 (regOne!30630 r!7292) Nil!61352))))

(assert (=> d!1717071 (validRegex!6795 (regOne!30630 r!7292))))

(assert (=> d!1717071 (= (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326) lt!2183172)))

(declare-fun b!5357722 () Bool)

(assert (=> b!5357722 (= e!3325395 (= (++!13364 (_1!35561 (get!21099 lt!2183172)) (_2!35561 (get!21099 lt!2183172))) s!2326))))

(declare-fun b!5357727 () Bool)

(declare-fun res!2273487 () Bool)

(assert (=> b!5357727 (=> (not res!2273487) (not e!3325395))))

(assert (=> b!5357727 (= res!2273487 (matchR!7244 (regOne!30630 r!7292) (_1!35561 (get!21099 lt!2183172))))))

(declare-fun b!5357728 () Bool)

(assert (=> b!5357728 (= e!3325397 e!3325396)))

(declare-fun c!932881 () Bool)

(assert (=> b!5357728 (= c!932881 ((_ is Nil!61352) s!2326))))

(declare-fun b!5357729 () Bool)

(declare-fun res!2273490 () Bool)

(assert (=> b!5357729 (=> (not res!2273490) (not e!3325395))))

(assert (=> b!5357729 (= res!2273490 (matchR!7244 (regTwo!30630 r!7292) (_2!35561 (get!21099 lt!2183172))))))

(declare-fun b!5357730 () Bool)

(assert (=> b!5357730 (= e!3325396 None!15169)))

(assert (= (and d!1717071 res!2273486) b!5357726))

(assert (= (and d!1717071 c!932882) b!5357724))

(assert (= (and d!1717071 (not c!932882)) b!5357728))

(assert (= (and b!5357728 c!932881) b!5357730))

(assert (= (and b!5357728 (not c!932881)) b!5357725))

(assert (= (and d!1717071 res!2273488) b!5357727))

(assert (= (and b!5357727 res!2273487) b!5357729))

(assert (= (and b!5357729 res!2273490) b!5357722))

(assert (= (and d!1717071 (not res!2273489)) b!5357723))

(declare-fun m!6387242 () Bool)

(assert (=> b!5357727 m!6387242))

(declare-fun m!6387244 () Bool)

(assert (=> b!5357727 m!6387244))

(declare-fun m!6387246 () Bool)

(assert (=> d!1717071 m!6387246))

(declare-fun m!6387248 () Bool)

(assert (=> d!1717071 m!6387248))

(declare-fun m!6387250 () Bool)

(assert (=> d!1717071 m!6387250))

(assert (=> b!5357726 m!6386836))

(assert (=> b!5357725 m!6386838))

(assert (=> b!5357725 m!6386838))

(assert (=> b!5357725 m!6386840))

(assert (=> b!5357725 m!6386842))

(assert (=> b!5357725 m!6386838))

(declare-fun m!6387252 () Bool)

(assert (=> b!5357725 m!6387252))

(assert (=> b!5357723 m!6387246))

(assert (=> b!5357722 m!6387242))

(declare-fun m!6387254 () Bool)

(assert (=> b!5357722 m!6387254))

(assert (=> b!5357729 m!6387242))

(declare-fun m!6387256 () Bool)

(assert (=> b!5357729 m!6387256))

(assert (=> b!5356938 d!1717071))

(declare-fun d!1717073 () Bool)

(assert (=> d!1717073 (= (Exists!2240 lambda!275626) (choose!40190 lambda!275626))))

(declare-fun bs!1241327 () Bool)

(assert (= bs!1241327 d!1717073))

(declare-fun m!6387258 () Bool)

(assert (=> bs!1241327 m!6387258))

(assert (=> b!5356938 d!1717073))

(declare-fun d!1717075 () Bool)

(assert (=> d!1717075 (= (Exists!2240 lambda!275625) (choose!40190 lambda!275625))))

(declare-fun bs!1241328 () Bool)

(assert (= bs!1241328 d!1717075))

(declare-fun m!6387260 () Bool)

(assert (=> bs!1241328 m!6387260))

(assert (=> b!5356938 d!1717075))

(declare-fun bs!1241329 () Bool)

(declare-fun d!1717077 () Bool)

(assert (= bs!1241329 (and d!1717077 d!1716889)))

(declare-fun lambda!275697 () Int)

(assert (=> bs!1241329 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275697 lambda!275654))))

(declare-fun bs!1241330 () Bool)

(assert (= bs!1241330 (and d!1717077 d!1716873)))

(assert (=> bs!1241330 (not (= lambda!275697 lambda!275648))))

(declare-fun bs!1241331 () Bool)

(assert (= bs!1241331 (and d!1717077 b!5356938)))

(assert (=> bs!1241331 (not (= lambda!275697 lambda!275626))))

(declare-fun bs!1241332 () Bool)

(assert (= bs!1241332 (and d!1717077 b!5356929)))

(assert (=> bs!1241332 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275697 lambda!275628))))

(assert (=> bs!1241330 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275697 lambda!275646))))

(declare-fun bs!1241333 () Bool)

(assert (= bs!1241333 (and d!1717077 b!5357453)))

(assert (=> bs!1241333 (not (= lambda!275697 lambda!275681))))

(assert (=> bs!1241331 (= lambda!275697 lambda!275625)))

(declare-fun bs!1241334 () Bool)

(assert (= bs!1241334 (and d!1717077 b!5357449)))

(assert (=> bs!1241334 (not (= lambda!275697 lambda!275680))))

(assert (=> bs!1241332 (not (= lambda!275697 lambda!275629))))

(assert (=> d!1717077 true))

(assert (=> d!1717077 true))

(assert (=> d!1717077 true))

(assert (=> d!1717077 (= (isDefined!11873 (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)) (Exists!2240 lambda!275697))))

(declare-fun lt!2183173 () Unit!153754)

(assert (=> d!1717077 (= lt!2183173 (choose!40191 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326))))

(assert (=> d!1717077 (validRegex!6795 (regOne!30630 r!7292))))

(assert (=> d!1717077 (= (lemmaFindConcatSeparationEquivalentToExists!1348 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326) lt!2183173)))

(declare-fun bs!1241335 () Bool)

(assert (= bs!1241335 d!1717077))

(declare-fun m!6387262 () Bool)

(assert (=> bs!1241335 m!6387262))

(assert (=> bs!1241335 m!6387250))

(declare-fun m!6387264 () Bool)

(assert (=> bs!1241335 m!6387264))

(assert (=> bs!1241335 m!6386644))

(assert (=> bs!1241335 m!6386644))

(assert (=> bs!1241335 m!6386646))

(assert (=> b!5356938 d!1717077))

(declare-fun bs!1241336 () Bool)

(declare-fun d!1717079 () Bool)

(assert (= bs!1241336 (and d!1717079 d!1716889)))

(declare-fun lambda!275698 () Int)

(assert (=> bs!1241336 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275698 lambda!275654))))

(declare-fun bs!1241337 () Bool)

(assert (= bs!1241337 (and d!1717079 d!1716873)))

(assert (=> bs!1241337 (not (= lambda!275698 lambda!275648))))

(declare-fun bs!1241338 () Bool)

(assert (= bs!1241338 (and d!1717079 b!5356938)))

(assert (=> bs!1241338 (not (= lambda!275698 lambda!275626))))

(declare-fun bs!1241339 () Bool)

(assert (= bs!1241339 (and d!1717079 d!1717077)))

(assert (=> bs!1241339 (= lambda!275698 lambda!275697)))

(declare-fun bs!1241340 () Bool)

(assert (= bs!1241340 (and d!1717079 b!5356929)))

(assert (=> bs!1241340 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275698 lambda!275628))))

(assert (=> bs!1241337 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275698 lambda!275646))))

(declare-fun bs!1241341 () Bool)

(assert (= bs!1241341 (and d!1717079 b!5357453)))

(assert (=> bs!1241341 (not (= lambda!275698 lambda!275681))))

(assert (=> bs!1241338 (= lambda!275698 lambda!275625)))

(declare-fun bs!1241342 () Bool)

(assert (= bs!1241342 (and d!1717079 b!5357449)))

(assert (=> bs!1241342 (not (= lambda!275698 lambda!275680))))

(assert (=> bs!1241340 (not (= lambda!275698 lambda!275629))))

(assert (=> d!1717079 true))

(assert (=> d!1717079 true))

(assert (=> d!1717079 true))

(declare-fun lambda!275699 () Int)

(assert (=> bs!1241337 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275699 lambda!275648))))

(assert (=> bs!1241338 (= lambda!275699 lambda!275626)))

(assert (=> bs!1241339 (not (= lambda!275699 lambda!275697))))

(assert (=> bs!1241340 (not (= lambda!275699 lambda!275628))))

(assert (=> bs!1241337 (not (= lambda!275699 lambda!275646))))

(assert (=> bs!1241341 (= (and (= (regOne!30630 r!7292) (regOne!30630 lt!2183056)) (= (regTwo!30630 r!7292) (regTwo!30630 lt!2183056))) (= lambda!275699 lambda!275681))))

(assert (=> bs!1241338 (not (= lambda!275699 lambda!275625))))

(declare-fun bs!1241343 () Bool)

(assert (= bs!1241343 d!1717079))

(assert (=> bs!1241343 (not (= lambda!275699 lambda!275698))))

(assert (=> bs!1241336 (not (= lambda!275699 lambda!275654))))

(assert (=> bs!1241342 (not (= lambda!275699 lambda!275680))))

(assert (=> bs!1241340 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275699 lambda!275629))))

(assert (=> d!1717079 true))

(assert (=> d!1717079 true))

(assert (=> d!1717079 true))

(assert (=> d!1717079 (= (Exists!2240 lambda!275698) (Exists!2240 lambda!275699))))

(declare-fun lt!2183174 () Unit!153754)

(assert (=> d!1717079 (= lt!2183174 (choose!40188 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326))))

(assert (=> d!1717079 (validRegex!6795 (regOne!30630 r!7292))))

(assert (=> d!1717079 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!894 (regOne!30630 r!7292) (regTwo!30630 r!7292) s!2326) lt!2183174)))

(declare-fun m!6387266 () Bool)

(assert (=> bs!1241343 m!6387266))

(declare-fun m!6387268 () Bool)

(assert (=> bs!1241343 m!6387268))

(declare-fun m!6387270 () Bool)

(assert (=> bs!1241343 m!6387270))

(assert (=> bs!1241343 m!6387250))

(assert (=> b!5356938 d!1717079))

(declare-fun d!1717081 () Bool)

(assert (=> d!1717081 (= (isDefined!11873 (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326)) (not (isEmpty!33323 (findConcatSeparation!1584 (regOne!30630 r!7292) (regTwo!30630 r!7292) Nil!61352 s!2326 s!2326))))))

(declare-fun bs!1241344 () Bool)

(assert (= bs!1241344 d!1717081))

(assert (=> bs!1241344 m!6386644))

(declare-fun m!6387272 () Bool)

(assert (=> bs!1241344 m!6387272))

(assert (=> b!5356938 d!1717081))

(declare-fun bs!1241345 () Bool)

(declare-fun b!5357732 () Bool)

(assert (= bs!1241345 (and b!5357732 d!1716873)))

(declare-fun lambda!275700 () Int)

(assert (=> bs!1241345 (not (= lambda!275700 lambda!275648))))

(declare-fun bs!1241346 () Bool)

(assert (= bs!1241346 (and b!5357732 b!5356938)))

(assert (=> bs!1241346 (not (= lambda!275700 lambda!275626))))

(declare-fun bs!1241347 () Bool)

(assert (= bs!1241347 (and b!5357732 d!1717077)))

(assert (=> bs!1241347 (not (= lambda!275700 lambda!275697))))

(declare-fun bs!1241348 () Bool)

(assert (= bs!1241348 (and b!5357732 d!1717079)))

(assert (=> bs!1241348 (not (= lambda!275700 lambda!275699))))

(declare-fun bs!1241349 () Bool)

(assert (= bs!1241349 (and b!5357732 b!5356929)))

(assert (=> bs!1241349 (not (= lambda!275700 lambda!275628))))

(assert (=> bs!1241345 (not (= lambda!275700 lambda!275646))))

(declare-fun bs!1241350 () Bool)

(assert (= bs!1241350 (and b!5357732 b!5357453)))

(assert (=> bs!1241350 (not (= lambda!275700 lambda!275681))))

(assert (=> bs!1241346 (not (= lambda!275700 lambda!275625))))

(assert (=> bs!1241348 (not (= lambda!275700 lambda!275698))))

(declare-fun bs!1241351 () Bool)

(assert (= bs!1241351 (and b!5357732 d!1716889)))

(assert (=> bs!1241351 (not (= lambda!275700 lambda!275654))))

(declare-fun bs!1241352 () Bool)

(assert (= bs!1241352 (and b!5357732 b!5357449)))

(assert (=> bs!1241352 (= (and (= (reg!15388 r!7292) (reg!15388 lt!2183056)) (= r!7292 lt!2183056)) (= lambda!275700 lambda!275680))))

(assert (=> bs!1241349 (not (= lambda!275700 lambda!275629))))

(assert (=> b!5357732 true))

(assert (=> b!5357732 true))

(declare-fun bs!1241353 () Bool)

(declare-fun b!5357736 () Bool)

(assert (= bs!1241353 (and b!5357736 d!1716873)))

(declare-fun lambda!275701 () Int)

(assert (=> bs!1241353 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275701 lambda!275648))))

(declare-fun bs!1241354 () Bool)

(assert (= bs!1241354 (and b!5357736 b!5356938)))

(assert (=> bs!1241354 (= lambda!275701 lambda!275626)))

(declare-fun bs!1241355 () Bool)

(assert (= bs!1241355 (and b!5357736 d!1717077)))

(assert (=> bs!1241355 (not (= lambda!275701 lambda!275697))))

(declare-fun bs!1241356 () Bool)

(assert (= bs!1241356 (and b!5357736 d!1717079)))

(assert (=> bs!1241356 (= lambda!275701 lambda!275699)))

(declare-fun bs!1241357 () Bool)

(assert (= bs!1241357 (and b!5357736 b!5357732)))

(assert (=> bs!1241357 (not (= lambda!275701 lambda!275700))))

(declare-fun bs!1241358 () Bool)

(assert (= bs!1241358 (and b!5357736 b!5356929)))

(assert (=> bs!1241358 (not (= lambda!275701 lambda!275628))))

(assert (=> bs!1241353 (not (= lambda!275701 lambda!275646))))

(declare-fun bs!1241359 () Bool)

(assert (= bs!1241359 (and b!5357736 b!5357453)))

(assert (=> bs!1241359 (= (and (= (regOne!30630 r!7292) (regOne!30630 lt!2183056)) (= (regTwo!30630 r!7292) (regTwo!30630 lt!2183056))) (= lambda!275701 lambda!275681))))

(assert (=> bs!1241354 (not (= lambda!275701 lambda!275625))))

(assert (=> bs!1241356 (not (= lambda!275701 lambda!275698))))

(declare-fun bs!1241360 () Bool)

(assert (= bs!1241360 (and b!5357736 d!1716889)))

(assert (=> bs!1241360 (not (= lambda!275701 lambda!275654))))

(declare-fun bs!1241361 () Bool)

(assert (= bs!1241361 (and b!5357736 b!5357449)))

(assert (=> bs!1241361 (not (= lambda!275701 lambda!275680))))

(assert (=> bs!1241358 (= (= (regOne!30630 r!7292) lt!2183059) (= lambda!275701 lambda!275629))))

(assert (=> b!5357736 true))

(assert (=> b!5357736 true))

(declare-fun b!5357731 () Bool)

(declare-fun e!3325403 () Bool)

(declare-fun e!3325402 () Bool)

(assert (=> b!5357731 (= e!3325403 e!3325402)))

(declare-fun res!2273493 () Bool)

(assert (=> b!5357731 (= res!2273493 (not ((_ is EmptyLang!15059) r!7292)))))

(assert (=> b!5357731 (=> (not res!2273493) (not e!3325402))))

(declare-fun d!1717083 () Bool)

(declare-fun c!932886 () Bool)

(assert (=> d!1717083 (= c!932886 ((_ is EmptyExpr!15059) r!7292))))

(assert (=> d!1717083 (= (matchRSpec!2162 r!7292 s!2326) e!3325403)))

(declare-fun e!3325400 () Bool)

(declare-fun call!383200 () Bool)

(assert (=> b!5357732 (= e!3325400 call!383200)))

(declare-fun b!5357733 () Bool)

(declare-fun e!3325399 () Bool)

(assert (=> b!5357733 (= e!3325399 (matchRSpec!2162 (regTwo!30631 r!7292) s!2326))))

(declare-fun b!5357734 () Bool)

(declare-fun call!383201 () Bool)

(assert (=> b!5357734 (= e!3325403 call!383201)))

(declare-fun b!5357735 () Bool)

(declare-fun c!932883 () Bool)

(assert (=> b!5357735 (= c!932883 ((_ is ElementMatch!15059) r!7292))))

(declare-fun e!3325398 () Bool)

(assert (=> b!5357735 (= e!3325402 e!3325398)))

(declare-fun e!3325404 () Bool)

(assert (=> b!5357736 (= e!3325404 call!383200)))

(declare-fun b!5357737 () Bool)

(declare-fun c!932885 () Bool)

(assert (=> b!5357737 (= c!932885 ((_ is Union!15059) r!7292))))

(declare-fun e!3325401 () Bool)

(assert (=> b!5357737 (= e!3325398 e!3325401)))

(declare-fun b!5357738 () Bool)

(assert (=> b!5357738 (= e!3325401 e!3325399)))

(declare-fun res!2273491 () Bool)

(assert (=> b!5357738 (= res!2273491 (matchRSpec!2162 (regOne!30631 r!7292) s!2326))))

(assert (=> b!5357738 (=> res!2273491 e!3325399)))

(declare-fun bm!383195 () Bool)

(assert (=> bm!383195 (= call!383201 (isEmpty!33324 s!2326))))

(declare-fun b!5357739 () Bool)

(assert (=> b!5357739 (= e!3325398 (= s!2326 (Cons!61352 (c!932657 r!7292) Nil!61352)))))

(declare-fun b!5357740 () Bool)

(assert (=> b!5357740 (= e!3325401 e!3325404)))

(declare-fun c!932884 () Bool)

(assert (=> b!5357740 (= c!932884 ((_ is Star!15059) r!7292))))

(declare-fun b!5357741 () Bool)

(declare-fun res!2273492 () Bool)

(assert (=> b!5357741 (=> res!2273492 e!3325400)))

(assert (=> b!5357741 (= res!2273492 call!383201)))

(assert (=> b!5357741 (= e!3325404 e!3325400)))

(declare-fun bm!383196 () Bool)

(assert (=> bm!383196 (= call!383200 (Exists!2240 (ite c!932884 lambda!275700 lambda!275701)))))

(assert (= (and d!1717083 c!932886) b!5357734))

(assert (= (and d!1717083 (not c!932886)) b!5357731))

(assert (= (and b!5357731 res!2273493) b!5357735))

(assert (= (and b!5357735 c!932883) b!5357739))

(assert (= (and b!5357735 (not c!932883)) b!5357737))

(assert (= (and b!5357737 c!932885) b!5357738))

(assert (= (and b!5357737 (not c!932885)) b!5357740))

(assert (= (and b!5357738 (not res!2273491)) b!5357733))

(assert (= (and b!5357740 c!932884) b!5357741))

(assert (= (and b!5357740 (not c!932884)) b!5357736))

(assert (= (and b!5357741 (not res!2273492)) b!5357732))

(assert (= (or b!5357732 b!5357736) bm!383196))

(assert (= (or b!5357734 b!5357741) bm!383195))

(declare-fun m!6387274 () Bool)

(assert (=> b!5357733 m!6387274))

(declare-fun m!6387276 () Bool)

(assert (=> b!5357738 m!6387276))

(assert (=> bm!383195 m!6387012))

(declare-fun m!6387278 () Bool)

(assert (=> bm!383196 m!6387278))

(assert (=> b!5356939 d!1717083))

(declare-fun b!5357742 () Bool)

(declare-fun e!3325409 () Bool)

(declare-fun lt!2183175 () Bool)

(declare-fun call!383202 () Bool)

(assert (=> b!5357742 (= e!3325409 (= lt!2183175 call!383202))))

(declare-fun b!5357743 () Bool)

(declare-fun e!3325406 () Bool)

(declare-fun e!3325407 () Bool)

(assert (=> b!5357743 (= e!3325406 e!3325407)))

(declare-fun res!2273497 () Bool)

(assert (=> b!5357743 (=> (not res!2273497) (not e!3325407))))

(assert (=> b!5357743 (= res!2273497 (not lt!2183175))))

(declare-fun bm!383197 () Bool)

(assert (=> bm!383197 (= call!383202 (isEmpty!33324 s!2326))))

(declare-fun b!5357744 () Bool)

(declare-fun e!3325405 () Bool)

(assert (=> b!5357744 (= e!3325405 (not lt!2183175))))

(declare-fun b!5357746 () Bool)

(declare-fun e!3325411 () Bool)

(assert (=> b!5357746 (= e!3325407 e!3325411)))

(declare-fun res!2273500 () Bool)

(assert (=> b!5357746 (=> res!2273500 e!3325411)))

(assert (=> b!5357746 (= res!2273500 call!383202)))

(declare-fun b!5357747 () Bool)

(declare-fun res!2273494 () Bool)

(assert (=> b!5357747 (=> res!2273494 e!3325411)))

(assert (=> b!5357747 (= res!2273494 (not (isEmpty!33324 (tail!10582 s!2326))))))

(declare-fun b!5357748 () Bool)

(declare-fun res!2273495 () Bool)

(assert (=> b!5357748 (=> res!2273495 e!3325406)))

(declare-fun e!3325408 () Bool)

(assert (=> b!5357748 (= res!2273495 e!3325408)))

(declare-fun res!2273501 () Bool)

(assert (=> b!5357748 (=> (not res!2273501) (not e!3325408))))

(assert (=> b!5357748 (= res!2273501 lt!2183175)))

(declare-fun b!5357749 () Bool)

(assert (=> b!5357749 (= e!3325409 e!3325405)))

(declare-fun c!932887 () Bool)

(assert (=> b!5357749 (= c!932887 ((_ is EmptyLang!15059) r!7292))))

(declare-fun b!5357750 () Bool)

(assert (=> b!5357750 (= e!3325411 (not (= (head!11485 s!2326) (c!932657 r!7292))))))

(declare-fun b!5357751 () Bool)

(declare-fun e!3325410 () Bool)

(assert (=> b!5357751 (= e!3325410 (matchR!7244 (derivativeStep!4204 r!7292 (head!11485 s!2326)) (tail!10582 s!2326)))))

(declare-fun b!5357752 () Bool)

(assert (=> b!5357752 (= e!3325408 (= (head!11485 s!2326) (c!932657 r!7292)))))

(declare-fun d!1717085 () Bool)

(assert (=> d!1717085 e!3325409))

(declare-fun c!932888 () Bool)

(assert (=> d!1717085 (= c!932888 ((_ is EmptyExpr!15059) r!7292))))

(assert (=> d!1717085 (= lt!2183175 e!3325410)))

(declare-fun c!932889 () Bool)

(assert (=> d!1717085 (= c!932889 (isEmpty!33324 s!2326))))

(assert (=> d!1717085 (validRegex!6795 r!7292)))

(assert (=> d!1717085 (= (matchR!7244 r!7292 s!2326) lt!2183175)))

(declare-fun b!5357745 () Bool)

(declare-fun res!2273498 () Bool)

(assert (=> b!5357745 (=> (not res!2273498) (not e!3325408))))

(assert (=> b!5357745 (= res!2273498 (isEmpty!33324 (tail!10582 s!2326)))))

(declare-fun b!5357753 () Bool)

(declare-fun res!2273499 () Bool)

(assert (=> b!5357753 (=> res!2273499 e!3325406)))

(assert (=> b!5357753 (= res!2273499 (not ((_ is ElementMatch!15059) r!7292)))))

(assert (=> b!5357753 (= e!3325405 e!3325406)))

(declare-fun b!5357754 () Bool)

(declare-fun res!2273496 () Bool)

(assert (=> b!5357754 (=> (not res!2273496) (not e!3325408))))

(assert (=> b!5357754 (= res!2273496 (not call!383202))))

(declare-fun b!5357755 () Bool)

(assert (=> b!5357755 (= e!3325410 (nullable!5228 r!7292))))

(assert (= (and d!1717085 c!932889) b!5357755))

(assert (= (and d!1717085 (not c!932889)) b!5357751))

(assert (= (and d!1717085 c!932888) b!5357742))

(assert (= (and d!1717085 (not c!932888)) b!5357749))

(assert (= (and b!5357749 c!932887) b!5357744))

(assert (= (and b!5357749 (not c!932887)) b!5357753))

(assert (= (and b!5357753 (not res!2273499)) b!5357748))

(assert (= (and b!5357748 res!2273501) b!5357754))

(assert (= (and b!5357754 res!2273496) b!5357745))

(assert (= (and b!5357745 res!2273498) b!5357752))

(assert (= (and b!5357748 (not res!2273495)) b!5357743))

(assert (= (and b!5357743 res!2273497) b!5357746))

(assert (= (and b!5357746 (not res!2273500)) b!5357747))

(assert (= (and b!5357747 (not res!2273494)) b!5357750))

(assert (= (or b!5357742 b!5357746 b!5357754) bm!383197))

(assert (=> bm!383197 m!6387012))

(assert (=> b!5357747 m!6387014))

(assert (=> b!5357747 m!6387014))

(assert (=> b!5357747 m!6387016))

(assert (=> b!5357745 m!6387014))

(assert (=> b!5357745 m!6387014))

(assert (=> b!5357745 m!6387016))

(assert (=> b!5357752 m!6387018))

(assert (=> b!5357750 m!6387018))

(assert (=> d!1717085 m!6387012))

(assert (=> d!1717085 m!6386564))

(declare-fun m!6387280 () Bool)

(assert (=> b!5357755 m!6387280))

(assert (=> b!5357751 m!6387018))

(assert (=> b!5357751 m!6387018))

(declare-fun m!6387282 () Bool)

(assert (=> b!5357751 m!6387282))

(assert (=> b!5357751 m!6387014))

(assert (=> b!5357751 m!6387282))

(assert (=> b!5357751 m!6387014))

(declare-fun m!6387284 () Bool)

(assert (=> b!5357751 m!6387284))

(assert (=> b!5356939 d!1717085))

(declare-fun d!1717087 () Bool)

(assert (=> d!1717087 (= (matchR!7244 r!7292 s!2326) (matchRSpec!2162 r!7292 s!2326))))

(declare-fun lt!2183176 () Unit!153754)

(assert (=> d!1717087 (= lt!2183176 (choose!40197 r!7292 s!2326))))

(assert (=> d!1717087 (validRegex!6795 r!7292)))

(assert (=> d!1717087 (= (mainMatchTheorem!2162 r!7292 s!2326) lt!2183176)))

(declare-fun bs!1241362 () Bool)

(assert (= bs!1241362 d!1717087))

(assert (=> bs!1241362 m!6386560))

(assert (=> bs!1241362 m!6386558))

(declare-fun m!6387286 () Bool)

(assert (=> bs!1241362 m!6387286))

(assert (=> bs!1241362 m!6386564))

(assert (=> b!5356939 d!1717087))

(declare-fun b!5357763 () Bool)

(declare-fun e!3325417 () Bool)

(declare-fun tp!1487940 () Bool)

(assert (=> b!5357763 (= e!3325417 tp!1487940)))

(declare-fun tp!1487941 () Bool)

(declare-fun b!5357762 () Bool)

(declare-fun e!3325416 () Bool)

(assert (=> b!5357762 (= e!3325416 (and (inv!80894 (h!67802 (t!374699 zl!343))) e!3325417 tp!1487941))))

(assert (=> b!5356954 (= tp!1487868 e!3325416)))

(assert (= b!5357762 b!5357763))

(assert (= (and b!5356954 ((_ is Cons!61354) (t!374699 zl!343))) b!5357762))

(declare-fun m!6387288 () Bool)

(assert (=> b!5357762 m!6387288))

(declare-fun b!5357774 () Bool)

(declare-fun e!3325420 () Bool)

(assert (=> b!5357774 (= e!3325420 tp_is_empty!39371)))

(declare-fun b!5357776 () Bool)

(declare-fun tp!1487954 () Bool)

(assert (=> b!5357776 (= e!3325420 tp!1487954)))

(declare-fun b!5357775 () Bool)

(declare-fun tp!1487952 () Bool)

(declare-fun tp!1487956 () Bool)

(assert (=> b!5357775 (= e!3325420 (and tp!1487952 tp!1487956))))

(assert (=> b!5356960 (= tp!1487877 e!3325420)))

(declare-fun b!5357777 () Bool)

(declare-fun tp!1487953 () Bool)

(declare-fun tp!1487955 () Bool)

(assert (=> b!5357777 (= e!3325420 (and tp!1487953 tp!1487955))))

(assert (= (and b!5356960 ((_ is ElementMatch!15059) (regOne!30631 r!7292))) b!5357774))

(assert (= (and b!5356960 ((_ is Concat!23904) (regOne!30631 r!7292))) b!5357775))

(assert (= (and b!5356960 ((_ is Star!15059) (regOne!30631 r!7292))) b!5357776))

(assert (= (and b!5356960 ((_ is Union!15059) (regOne!30631 r!7292))) b!5357777))

(declare-fun b!5357778 () Bool)

(declare-fun e!3325421 () Bool)

(assert (=> b!5357778 (= e!3325421 tp_is_empty!39371)))

(declare-fun b!5357780 () Bool)

(declare-fun tp!1487959 () Bool)

(assert (=> b!5357780 (= e!3325421 tp!1487959)))

(declare-fun b!5357779 () Bool)

(declare-fun tp!1487957 () Bool)

(declare-fun tp!1487961 () Bool)

(assert (=> b!5357779 (= e!3325421 (and tp!1487957 tp!1487961))))

(assert (=> b!5356960 (= tp!1487870 e!3325421)))

(declare-fun b!5357781 () Bool)

(declare-fun tp!1487958 () Bool)

(declare-fun tp!1487960 () Bool)

(assert (=> b!5357781 (= e!3325421 (and tp!1487958 tp!1487960))))

(assert (= (and b!5356960 ((_ is ElementMatch!15059) (regTwo!30631 r!7292))) b!5357778))

(assert (= (and b!5356960 ((_ is Concat!23904) (regTwo!30631 r!7292))) b!5357779))

(assert (= (and b!5356960 ((_ is Star!15059) (regTwo!30631 r!7292))) b!5357780))

(assert (= (and b!5356960 ((_ is Union!15059) (regTwo!30631 r!7292))) b!5357781))

(declare-fun b!5357786 () Bool)

(declare-fun e!3325424 () Bool)

(declare-fun tp!1487966 () Bool)

(declare-fun tp!1487967 () Bool)

(assert (=> b!5357786 (= e!3325424 (and tp!1487966 tp!1487967))))

(assert (=> b!5356937 (= tp!1487871 e!3325424)))

(assert (= (and b!5356937 ((_ is Cons!61353) (exprs!4943 (h!67802 zl!343)))) b!5357786))

(declare-fun condSetEmpty!34663 () Bool)

(assert (=> setNonEmpty!34657 (= condSetEmpty!34663 (= setRest!34657 ((as const (Array Context!8886 Bool)) false)))))

(declare-fun setRes!34663 () Bool)

(assert (=> setNonEmpty!34657 (= tp!1487874 setRes!34663)))

(declare-fun setIsEmpty!34663 () Bool)

(assert (=> setIsEmpty!34663 setRes!34663))

(declare-fun e!3325427 () Bool)

(declare-fun setNonEmpty!34663 () Bool)

(declare-fun tp!1487973 () Bool)

(declare-fun setElem!34663 () Context!8886)

(assert (=> setNonEmpty!34663 (= setRes!34663 (and tp!1487973 (inv!80894 setElem!34663) e!3325427))))

(declare-fun setRest!34663 () (InoxSet Context!8886))

(assert (=> setNonEmpty!34663 (= setRest!34657 ((_ map or) (store ((as const (Array Context!8886 Bool)) false) setElem!34663 true) setRest!34663))))

(declare-fun b!5357791 () Bool)

(declare-fun tp!1487972 () Bool)

(assert (=> b!5357791 (= e!3325427 tp!1487972)))

(assert (= (and setNonEmpty!34657 condSetEmpty!34663) setIsEmpty!34663))

(assert (= (and setNonEmpty!34657 (not condSetEmpty!34663)) setNonEmpty!34663))

(assert (= setNonEmpty!34663 b!5357791))

(declare-fun m!6387290 () Bool)

(assert (=> setNonEmpty!34663 m!6387290))

(declare-fun b!5357792 () Bool)

(declare-fun e!3325428 () Bool)

(declare-fun tp!1487974 () Bool)

(declare-fun tp!1487975 () Bool)

(assert (=> b!5357792 (= e!3325428 (and tp!1487974 tp!1487975))))

(assert (=> b!5356956 (= tp!1487872 e!3325428)))

(assert (= (and b!5356956 ((_ is Cons!61353) (exprs!4943 setElem!34657))) b!5357792))

(declare-fun b!5357793 () Bool)

(declare-fun e!3325429 () Bool)

(assert (=> b!5357793 (= e!3325429 tp_is_empty!39371)))

(declare-fun b!5357795 () Bool)

(declare-fun tp!1487978 () Bool)

(assert (=> b!5357795 (= e!3325429 tp!1487978)))

(declare-fun b!5357794 () Bool)

(declare-fun tp!1487976 () Bool)

(declare-fun tp!1487980 () Bool)

(assert (=> b!5357794 (= e!3325429 (and tp!1487976 tp!1487980))))

(assert (=> b!5356942 (= tp!1487869 e!3325429)))

(declare-fun b!5357796 () Bool)

(declare-fun tp!1487977 () Bool)

(declare-fun tp!1487979 () Bool)

(assert (=> b!5357796 (= e!3325429 (and tp!1487977 tp!1487979))))

(assert (= (and b!5356942 ((_ is ElementMatch!15059) (regOne!30630 r!7292))) b!5357793))

(assert (= (and b!5356942 ((_ is Concat!23904) (regOne!30630 r!7292))) b!5357794))

(assert (= (and b!5356942 ((_ is Star!15059) (regOne!30630 r!7292))) b!5357795))

(assert (= (and b!5356942 ((_ is Union!15059) (regOne!30630 r!7292))) b!5357796))

(declare-fun b!5357797 () Bool)

(declare-fun e!3325430 () Bool)

(assert (=> b!5357797 (= e!3325430 tp_is_empty!39371)))

(declare-fun b!5357799 () Bool)

(declare-fun tp!1487983 () Bool)

(assert (=> b!5357799 (= e!3325430 tp!1487983)))

(declare-fun b!5357798 () Bool)

(declare-fun tp!1487981 () Bool)

(declare-fun tp!1487985 () Bool)

(assert (=> b!5357798 (= e!3325430 (and tp!1487981 tp!1487985))))

(assert (=> b!5356942 (= tp!1487876 e!3325430)))

(declare-fun b!5357800 () Bool)

(declare-fun tp!1487982 () Bool)

(declare-fun tp!1487984 () Bool)

(assert (=> b!5357800 (= e!3325430 (and tp!1487982 tp!1487984))))

(assert (= (and b!5356942 ((_ is ElementMatch!15059) (regTwo!30630 r!7292))) b!5357797))

(assert (= (and b!5356942 ((_ is Concat!23904) (regTwo!30630 r!7292))) b!5357798))

(assert (= (and b!5356942 ((_ is Star!15059) (regTwo!30630 r!7292))) b!5357799))

(assert (= (and b!5356942 ((_ is Union!15059) (regTwo!30630 r!7292))) b!5357800))

(declare-fun b!5357801 () Bool)

(declare-fun e!3325431 () Bool)

(assert (=> b!5357801 (= e!3325431 tp_is_empty!39371)))

(declare-fun b!5357803 () Bool)

(declare-fun tp!1487988 () Bool)

(assert (=> b!5357803 (= e!3325431 tp!1487988)))

(declare-fun b!5357802 () Bool)

(declare-fun tp!1487986 () Bool)

(declare-fun tp!1487990 () Bool)

(assert (=> b!5357802 (= e!3325431 (and tp!1487986 tp!1487990))))

(assert (=> b!5356957 (= tp!1487873 e!3325431)))

(declare-fun b!5357804 () Bool)

(declare-fun tp!1487987 () Bool)

(declare-fun tp!1487989 () Bool)

(assert (=> b!5357804 (= e!3325431 (and tp!1487987 tp!1487989))))

(assert (= (and b!5356957 ((_ is ElementMatch!15059) (reg!15388 r!7292))) b!5357801))

(assert (= (and b!5356957 ((_ is Concat!23904) (reg!15388 r!7292))) b!5357802))

(assert (= (and b!5356957 ((_ is Star!15059) (reg!15388 r!7292))) b!5357803))

(assert (= (and b!5356957 ((_ is Union!15059) (reg!15388 r!7292))) b!5357804))

(declare-fun b!5357809 () Bool)

(declare-fun e!3325434 () Bool)

(declare-fun tp!1487993 () Bool)

(assert (=> b!5357809 (= e!3325434 (and tp_is_empty!39371 tp!1487993))))

(assert (=> b!5356948 (= tp!1487875 e!3325434)))

(assert (= (and b!5356948 ((_ is Cons!61352) (t!374697 s!2326))) b!5357809))

(declare-fun b_lambda!205477 () Bool)

(assert (= b_lambda!205465 (or b!5356961 b_lambda!205477)))

(declare-fun bs!1241363 () Bool)

(declare-fun d!1717089 () Bool)

(assert (= bs!1241363 (and d!1717089 b!5356961)))

(assert (=> bs!1241363 (= (dynLambda!24236 lambda!275627 lt!2183050) (derivationStepZipperUp!431 lt!2183050 (h!67800 s!2326)))))

(assert (=> bs!1241363 m!6386622))

(assert (=> d!1717037 d!1717089))

(declare-fun b_lambda!205479 () Bool)

(assert (= b_lambda!205463 (or b!5356961 b_lambda!205479)))

(declare-fun bs!1241364 () Bool)

(declare-fun d!1717091 () Bool)

(assert (= bs!1241364 (and d!1717091 b!5356961)))

(assert (=> bs!1241364 (= (dynLambda!24236 lambda!275627 (h!67802 zl!343)) (derivationStepZipperUp!431 (h!67802 zl!343) (h!67800 s!2326)))))

(assert (=> bs!1241364 m!6386604))

(assert (=> d!1717005 d!1717091))

(declare-fun b_lambda!205481 () Bool)

(assert (= b_lambda!205459 (or b!5356961 b_lambda!205481)))

(declare-fun bs!1241365 () Bool)

(declare-fun d!1717093 () Bool)

(assert (= bs!1241365 (and d!1717093 b!5356961)))

(assert (=> bs!1241365 (= (dynLambda!24236 lambda!275627 lt!2183035) (derivationStepZipperUp!431 lt!2183035 (h!67800 s!2326)))))

(assert (=> bs!1241365 m!6386544))

(assert (=> d!1716965 d!1717093))

(declare-fun b_lambda!205483 () Bool)

(assert (= b_lambda!205467 (or b!5356961 b_lambda!205483)))

(declare-fun bs!1241366 () Bool)

(declare-fun d!1717095 () Bool)

(assert (= bs!1241366 (and d!1717095 b!5356961)))

(assert (=> bs!1241366 (= (dynLambda!24236 lambda!275627 lt!2183049) (derivationStepZipperUp!431 lt!2183049 (h!67800 s!2326)))))

(assert (=> bs!1241366 m!6386618))

(assert (=> d!1717045 d!1717095))

(check-sat (not b!5357679) (not b!5357675) (not b!5357750) (not b_lambda!205483) (not b!5357369) (not bm!383147) (not b!5357763) (not b!5357622) (not b!5357729) (not d!1717065) (not b!5357721) (not b!5357494) (not d!1716889) (not b!5357804) (not bm!383156) (not bm!383177) (not d!1716965) (not b!5357738) (not d!1716951) (not b!5357716) (not d!1716887) (not b!5357722) (not d!1717037) (not b_lambda!205479) (not d!1717041) (not b!5357781) (not b!5357712) (not b!5357573) (not b!5357723) (not b!5357673) (not b!5357544) (not d!1716883) (not b!5357709) (not d!1717035) (not d!1717087) (not bm!383194) (not d!1717005) (not b!5357786) (not b!5357598) (not b!5357545) (not b!5357809) (not b!5357594) (not d!1716873) (not bs!1241365) (not b!5357584) (not b!5357493) (not b!5357580) (not d!1717075) (not bm!383123) (not b!5357612) (not b!5357581) (not d!1717077) (not d!1717071) (not bm!383174) (not b_lambda!205481) (not bm!383148) (not b!5357450) (not bs!1241366) (not d!1717033) (not b!5357531) (not d!1717027) (not b!5357129) (not d!1716993) (not b!5357726) (not b!5357751) (not bm!383193) (not b!5357488) (not bm!383152) (not b!5357498) (not b!5357509) (not d!1717067) (not bs!1241363) (not b!5357800) (not b!5357725) (not d!1717049) (not bm!383178) (not b!5357687) (not d!1717073) (not b!5357676) (not bm!383171) (not bm!383191) (not d!1717001) (not b!5357678) (not b!5357713) (not b!5357131) (not b!5357780) (not d!1717047) (not b!5357752) (not d!1716927) (not b!5357289) (not d!1716957) (not b!5357681) (not d!1717085) (not d!1716955) (not d!1717009) (not b!5357717) (not setNonEmpty!34663) (not d!1717013) (not b!5357455) (not b!5357802) (not bm!383167) (not b!5357727) (not bs!1241364) (not b!5357532) (not bm!383192) (not b!5357795) (not bm!383172) (not b!5357175) (not b!5357597) (not b!5357364) (not b!5357124) (not b!5357593) (not b!5357127) (not b!5357747) (not b!5357368) (not b!5357803) (not b!5357776) (not b!5357288) (not d!1717081) (not b!5357733) (not b!5357762) (not b!5357775) (not b!5357791) (not d!1716991) (not b!5357714) (not d!1717045) (not b!5357792) (not d!1716969) (not bm!383196) (not d!1717025) (not b!5357677) (not d!1717069) (not d!1716971) (not d!1717079) (not bm!383173) (not d!1716903) (not d!1716949) (not b!5357799) (not b!5357779) (not b!5357777) (not b!5357254) (not b!5357745) (not b!5357796) (not d!1717015) (not bm!383168) (not b!5357499) (not bm!383144) (not bm!383197) (not b!5357798) (not b!5357755) (not b_lambda!205477) (not b!5357362) (not b!5357621) (not bm!383122) (not b!5357128) (not d!1717053) (not bm!383195) (not b!5357489) (not b!5357718) (not d!1716967) (not b!5357125) (not b!5357372) (not d!1717055) (not b!5357794) (not b!5357367) (not b!5357613) tp_is_empty!39371)
(check-sat)
