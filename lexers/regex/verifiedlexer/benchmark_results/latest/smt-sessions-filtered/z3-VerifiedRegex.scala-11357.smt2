; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601424 () Bool)

(assert start!601424)

(declare-fun b!5912371 () Bool)

(assert (=> b!5912371 true))

(assert (=> b!5912371 true))

(declare-fun lambda!322486 () Int)

(declare-fun lambda!322485 () Int)

(assert (=> b!5912371 (not (= lambda!322486 lambda!322485))))

(assert (=> b!5912371 true))

(assert (=> b!5912371 true))

(declare-fun b!5912362 () Bool)

(declare-fun e!3620355 () Bool)

(declare-fun tp!1642654 () Bool)

(assert (=> b!5912362 (= e!3620355 tp!1642654)))

(declare-fun b!5912363 () Bool)

(declare-fun res!2479085 () Bool)

(declare-fun e!3620359 () Bool)

(assert (=> b!5912363 (=> res!2479085 e!3620359)))

(declare-datatypes ((C!32192 0))(
  ( (C!32193 (val!25798 Int)) )
))
(declare-datatypes ((Regex!15961 0))(
  ( (ElementMatch!15961 (c!1050727 C!32192)) (Concat!24806 (regOne!32434 Regex!15961) (regTwo!32434 Regex!15961)) (EmptyExpr!15961) (Star!15961 (reg!16290 Regex!15961)) (EmptyLang!15961) (Union!15961 (regOne!32435 Regex!15961) (regTwo!32435 Regex!15961)) )
))
(declare-datatypes ((List!64182 0))(
  ( (Nil!64058) (Cons!64058 (h!70506 Regex!15961) (t!377571 List!64182)) )
))
(declare-datatypes ((Context!10690 0))(
  ( (Context!10691 (exprs!5845 List!64182)) )
))
(declare-datatypes ((List!64183 0))(
  ( (Nil!64059) (Cons!64059 (h!70507 Context!10690) (t!377572 List!64183)) )
))
(declare-fun zl!343 () List!64183)

(get-info :version)

(assert (=> b!5912363 (= res!2479085 (not ((_ is Cons!64058) (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5912364 () Bool)

(declare-fun res!2479084 () Bool)

(assert (=> b!5912364 (=> res!2479084 e!3620359)))

(declare-fun r!7292 () Regex!15961)

(declare-fun generalisedUnion!1805 (List!64182) Regex!15961)

(declare-fun unfocusZipperList!1382 (List!64183) List!64182)

(assert (=> b!5912364 (= res!2479084 (not (= r!7292 (generalisedUnion!1805 (unfocusZipperList!1382 zl!343)))))))

(declare-fun setNonEmpty!40114 () Bool)

(declare-fun setElem!40114 () Context!10690)

(declare-fun e!3620358 () Bool)

(declare-fun setRes!40114 () Bool)

(declare-fun tp!1642659 () Bool)

(declare-fun inv!83149 (Context!10690) Bool)

(assert (=> setNonEmpty!40114 (= setRes!40114 (and tp!1642659 (inv!83149 setElem!40114) e!3620358))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10690))

(declare-fun setRest!40114 () (InoxSet Context!10690))

(assert (=> setNonEmpty!40114 (= z!1189 ((_ map or) (store ((as const (Array Context!10690 Bool)) false) setElem!40114 true) setRest!40114))))

(declare-fun b!5912365 () Bool)

(declare-fun e!3620356 () Bool)

(assert (=> b!5912365 (= e!3620356 (not e!3620359))))

(declare-fun res!2479090 () Bool)

(assert (=> b!5912365 (=> res!2479090 e!3620359)))

(assert (=> b!5912365 (= res!2479090 (not ((_ is Cons!64059) zl!343)))))

(declare-fun lt!2309226 () Bool)

(declare-datatypes ((List!64184 0))(
  ( (Nil!64060) (Cons!64060 (h!70508 C!32192) (t!377573 List!64184)) )
))
(declare-fun s!2326 () List!64184)

(declare-fun matchRSpec!3062 (Regex!15961 List!64184) Bool)

(assert (=> b!5912365 (= lt!2309226 (matchRSpec!3062 r!7292 s!2326))))

(declare-fun matchR!8144 (Regex!15961 List!64184) Bool)

(assert (=> b!5912365 (= lt!2309226 (matchR!8144 r!7292 s!2326))))

(declare-datatypes ((Unit!157193 0))(
  ( (Unit!157194) )
))
(declare-fun lt!2309225 () Unit!157193)

(declare-fun mainMatchTheorem!3062 (Regex!15961 List!64184) Unit!157193)

(assert (=> b!5912365 (= lt!2309225 (mainMatchTheorem!3062 r!7292 s!2326))))

(declare-fun b!5912366 () Bool)

(declare-fun res!2479088 () Bool)

(assert (=> b!5912366 (=> (not res!2479088) (not e!3620356))))

(declare-fun unfocusZipper!1703 (List!64183) Regex!15961)

(assert (=> b!5912366 (= res!2479088 (= r!7292 (unfocusZipper!1703 zl!343)))))

(declare-fun b!5912368 () Bool)

(declare-fun e!3620362 () Bool)

(declare-fun matchZipper!2017 ((InoxSet Context!10690) List!64184) Bool)

(assert (=> b!5912368 (= e!3620362 (= (matchZipper!2017 z!1189 s!2326) lt!2309226))))

(declare-fun b!5912369 () Bool)

(declare-fun res!2479092 () Bool)

(assert (=> b!5912369 (=> res!2479092 e!3620359)))

(declare-fun generalisedConcat!1558 (List!64182) Regex!15961)

(assert (=> b!5912369 (= res!2479092 (not (= r!7292 (generalisedConcat!1558 (exprs!5845 (h!70507 zl!343))))))))

(declare-fun b!5912370 () Bool)

(declare-fun e!3620357 () Bool)

(declare-fun tp!1642653 () Bool)

(declare-fun tp!1642658 () Bool)

(assert (=> b!5912370 (= e!3620357 (and tp!1642653 tp!1642658))))

(declare-fun e!3620361 () Bool)

(assert (=> b!5912371 (= e!3620359 e!3620361)))

(declare-fun res!2479089 () Bool)

(assert (=> b!5912371 (=> res!2479089 e!3620361)))

(declare-fun lt!2309229 () Bool)

(assert (=> b!5912371 (= res!2479089 (or (not (= lt!2309226 lt!2309229)) (not ((_ is Nil!64060) s!2326))))))

(declare-fun Exists!3031 (Int) Bool)

(assert (=> b!5912371 (= (Exists!3031 lambda!322485) (Exists!3031 lambda!322486))))

(declare-fun lt!2309230 () Unit!157193)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1568 (Regex!15961 Regex!15961 List!64184) Unit!157193)

(assert (=> b!5912371 (= lt!2309230 (lemmaExistCutMatchRandMatchRSpecEquivalent!1568 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326))))

(assert (=> b!5912371 (= lt!2309229 (Exists!3031 lambda!322485))))

(declare-datatypes ((tuple2!65880 0))(
  ( (tuple2!65881 (_1!36243 List!64184) (_2!36243 List!64184)) )
))
(declare-datatypes ((Option!15852 0))(
  ( (None!15851) (Some!15851 (v!51945 tuple2!65880)) )
))
(declare-fun isDefined!12555 (Option!15852) Bool)

(declare-fun findConcatSeparation!2266 (Regex!15961 Regex!15961 List!64184 List!64184 List!64184) Option!15852)

(assert (=> b!5912371 (= lt!2309229 (isDefined!12555 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326)))))

(declare-fun lt!2309227 () Unit!157193)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2030 (Regex!15961 Regex!15961 List!64184) Unit!157193)

(assert (=> b!5912371 (= lt!2309227 (lemmaFindConcatSeparationEquivalentToExists!2030 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326))))

(declare-fun b!5912372 () Bool)

(declare-fun tp!1642660 () Bool)

(assert (=> b!5912372 (= e!3620357 tp!1642660)))

(declare-fun b!5912373 () Bool)

(declare-fun res!2479091 () Bool)

(assert (=> b!5912373 (=> (not res!2479091) (not e!3620356))))

(declare-fun toList!9745 ((InoxSet Context!10690)) List!64183)

(assert (=> b!5912373 (= res!2479091 (= (toList!9745 z!1189) zl!343))))

(declare-fun b!5912374 () Bool)

(declare-fun res!2479087 () Bool)

(assert (=> b!5912374 (=> res!2479087 e!3620359)))

(assert (=> b!5912374 (= res!2479087 (or ((_ is EmptyExpr!15961) r!7292) ((_ is EmptyLang!15961) r!7292) ((_ is ElementMatch!15961) r!7292) ((_ is Union!15961) r!7292) (not ((_ is Concat!24806) r!7292))))))

(declare-fun b!5912367 () Bool)

(declare-fun tp_is_empty!41175 () Bool)

(assert (=> b!5912367 (= e!3620357 tp_is_empty!41175)))

(declare-fun res!2479086 () Bool)

(assert (=> start!601424 (=> (not res!2479086) (not e!3620356))))

(declare-fun validRegex!7697 (Regex!15961) Bool)

(assert (=> start!601424 (= res!2479086 (validRegex!7697 r!7292))))

(assert (=> start!601424 e!3620356))

(assert (=> start!601424 e!3620357))

(declare-fun condSetEmpty!40114 () Bool)

(assert (=> start!601424 (= condSetEmpty!40114 (= z!1189 ((as const (Array Context!10690 Bool)) false)))))

(assert (=> start!601424 setRes!40114))

(declare-fun e!3620363 () Bool)

(assert (=> start!601424 e!3620363))

(declare-fun e!3620360 () Bool)

(assert (=> start!601424 e!3620360))

(declare-fun b!5912375 () Bool)

(declare-fun tp!1642656 () Bool)

(assert (=> b!5912375 (= e!3620360 (and tp_is_empty!41175 tp!1642656))))

(declare-fun tp!1642655 () Bool)

(declare-fun b!5912376 () Bool)

(assert (=> b!5912376 (= e!3620363 (and (inv!83149 (h!70507 zl!343)) e!3620355 tp!1642655))))

(declare-fun b!5912377 () Bool)

(declare-fun tp!1642661 () Bool)

(declare-fun tp!1642657 () Bool)

(assert (=> b!5912377 (= e!3620357 (and tp!1642661 tp!1642657))))

(declare-fun b!5912378 () Bool)

(declare-fun tp!1642662 () Bool)

(assert (=> b!5912378 (= e!3620358 tp!1642662)))

(declare-fun setIsEmpty!40114 () Bool)

(assert (=> setIsEmpty!40114 setRes!40114))

(declare-fun b!5912379 () Bool)

(declare-fun res!2479082 () Bool)

(assert (=> b!5912379 (=> res!2479082 e!3620359)))

(declare-fun isEmpty!35910 (List!64183) Bool)

(assert (=> b!5912379 (= res!2479082 (not (isEmpty!35910 (t!377572 zl!343))))))

(declare-fun b!5912380 () Bool)

(assert (=> b!5912380 (= e!3620361 e!3620362)))

(declare-fun res!2479083 () Bool)

(assert (=> b!5912380 (=> res!2479083 e!3620362)))

(declare-fun lt!2309231 () Bool)

(declare-fun lt!2309228 () Bool)

(assert (=> b!5912380 (= res!2479083 (not (= lt!2309231 lt!2309228)))))

(assert (=> b!5912380 (= lt!2309228 lt!2309231)))

(declare-fun nullableZipper!1788 ((InoxSet Context!10690)) Bool)

(assert (=> b!5912380 (= lt!2309231 (nullableZipper!1788 z!1189))))

(declare-fun nullable!5956 (Regex!15961) Bool)

(assert (=> b!5912380 (= lt!2309228 (nullable!5956 r!7292))))

(declare-fun lt!2309232 () Unit!157193)

(declare-fun lemmaUnfocusPreservesNullability!30 (Regex!15961 (InoxSet Context!10690)) Unit!157193)

(assert (=> b!5912380 (= lt!2309232 (lemmaUnfocusPreservesNullability!30 r!7292 z!1189))))

(assert (= (and start!601424 res!2479086) b!5912373))

(assert (= (and b!5912373 res!2479091) b!5912366))

(assert (= (and b!5912366 res!2479088) b!5912365))

(assert (= (and b!5912365 (not res!2479090)) b!5912379))

(assert (= (and b!5912379 (not res!2479082)) b!5912369))

(assert (= (and b!5912369 (not res!2479092)) b!5912363))

(assert (= (and b!5912363 (not res!2479085)) b!5912364))

(assert (= (and b!5912364 (not res!2479084)) b!5912374))

(assert (= (and b!5912374 (not res!2479087)) b!5912371))

(assert (= (and b!5912371 (not res!2479089)) b!5912380))

(assert (= (and b!5912380 (not res!2479083)) b!5912368))

(assert (= (and start!601424 ((_ is ElementMatch!15961) r!7292)) b!5912367))

(assert (= (and start!601424 ((_ is Concat!24806) r!7292)) b!5912377))

(assert (= (and start!601424 ((_ is Star!15961) r!7292)) b!5912372))

(assert (= (and start!601424 ((_ is Union!15961) r!7292)) b!5912370))

(assert (= (and start!601424 condSetEmpty!40114) setIsEmpty!40114))

(assert (= (and start!601424 (not condSetEmpty!40114)) setNonEmpty!40114))

(assert (= setNonEmpty!40114 b!5912378))

(assert (= b!5912376 b!5912362))

(assert (= (and start!601424 ((_ is Cons!64059) zl!343)) b!5912376))

(assert (= (and start!601424 ((_ is Cons!64060) s!2326)) b!5912375))

(declare-fun m!6811712 () Bool)

(assert (=> b!5912365 m!6811712))

(declare-fun m!6811714 () Bool)

(assert (=> b!5912365 m!6811714))

(declare-fun m!6811716 () Bool)

(assert (=> b!5912365 m!6811716))

(declare-fun m!6811718 () Bool)

(assert (=> b!5912376 m!6811718))

(declare-fun m!6811720 () Bool)

(assert (=> b!5912379 m!6811720))

(declare-fun m!6811722 () Bool)

(assert (=> b!5912371 m!6811722))

(declare-fun m!6811724 () Bool)

(assert (=> b!5912371 m!6811724))

(declare-fun m!6811726 () Bool)

(assert (=> b!5912371 m!6811726))

(declare-fun m!6811728 () Bool)

(assert (=> b!5912371 m!6811728))

(assert (=> b!5912371 m!6811724))

(declare-fun m!6811730 () Bool)

(assert (=> b!5912371 m!6811730))

(assert (=> b!5912371 m!6811722))

(declare-fun m!6811732 () Bool)

(assert (=> b!5912371 m!6811732))

(declare-fun m!6811734 () Bool)

(assert (=> b!5912364 m!6811734))

(assert (=> b!5912364 m!6811734))

(declare-fun m!6811736 () Bool)

(assert (=> b!5912364 m!6811736))

(declare-fun m!6811738 () Bool)

(assert (=> b!5912373 m!6811738))

(declare-fun m!6811740 () Bool)

(assert (=> b!5912369 m!6811740))

(declare-fun m!6811742 () Bool)

(assert (=> b!5912366 m!6811742))

(declare-fun m!6811744 () Bool)

(assert (=> start!601424 m!6811744))

(declare-fun m!6811746 () Bool)

(assert (=> b!5912368 m!6811746))

(declare-fun m!6811748 () Bool)

(assert (=> setNonEmpty!40114 m!6811748))

(declare-fun m!6811750 () Bool)

(assert (=> b!5912380 m!6811750))

(declare-fun m!6811752 () Bool)

(assert (=> b!5912380 m!6811752))

(declare-fun m!6811754 () Bool)

(assert (=> b!5912380 m!6811754))

(check-sat (not b!5912376) (not b!5912362) (not b!5912375) (not b!5912380) (not b!5912364) (not b!5912379) (not start!601424) (not b!5912371) (not b!5912372) (not b!5912378) (not b!5912368) tp_is_empty!41175 (not b!5912377) (not setNonEmpty!40114) (not b!5912366) (not b!5912370) (not b!5912369) (not b!5912373) (not b!5912365))
(check-sat)
(get-model)

(declare-fun d!1854748 () Bool)

(declare-fun lambda!322495 () Int)

(declare-fun exists!2341 ((InoxSet Context!10690) Int) Bool)

(assert (=> d!1854748 (= (nullableZipper!1788 z!1189) (exists!2341 z!1189 lambda!322495))))

(declare-fun bs!1400005 () Bool)

(assert (= bs!1400005 d!1854748))

(declare-fun m!6811782 () Bool)

(assert (=> bs!1400005 m!6811782))

(assert (=> b!5912380 d!1854748))

(declare-fun d!1854752 () Bool)

(declare-fun nullableFct!1932 (Regex!15961) Bool)

(assert (=> d!1854752 (= (nullable!5956 r!7292) (nullableFct!1932 r!7292))))

(declare-fun bs!1400006 () Bool)

(assert (= bs!1400006 d!1854752))

(declare-fun m!6811784 () Bool)

(assert (=> bs!1400006 m!6811784))

(assert (=> b!5912380 d!1854752))

(declare-fun d!1854754 () Bool)

(assert (=> d!1854754 (= (nullable!5956 r!7292) (nullableZipper!1788 z!1189))))

(declare-fun lt!2309247 () Unit!157193)

(declare-fun choose!44600 (Regex!15961 (InoxSet Context!10690)) Unit!157193)

(assert (=> d!1854754 (= lt!2309247 (choose!44600 r!7292 z!1189))))

(assert (=> d!1854754 (validRegex!7697 r!7292)))

(assert (=> d!1854754 (= (lemmaUnfocusPreservesNullability!30 r!7292 z!1189) lt!2309247)))

(declare-fun bs!1400012 () Bool)

(assert (= bs!1400012 d!1854754))

(assert (=> bs!1400012 m!6811752))

(assert (=> bs!1400012 m!6811750))

(declare-fun m!6811794 () Bool)

(assert (=> bs!1400012 m!6811794))

(assert (=> bs!1400012 m!6811744))

(assert (=> b!5912380 d!1854754))

(declare-fun d!1854762 () Bool)

(declare-fun e!3620420 () Bool)

(assert (=> d!1854762 e!3620420))

(declare-fun res!2479137 () Bool)

(assert (=> d!1854762 (=> res!2479137 e!3620420)))

(declare-fun e!3620416 () Bool)

(assert (=> d!1854762 (= res!2479137 e!3620416)))

(declare-fun res!2479140 () Bool)

(assert (=> d!1854762 (=> (not res!2479140) (not e!3620416))))

(declare-fun lt!2309269 () Option!15852)

(assert (=> d!1854762 (= res!2479140 (isDefined!12555 lt!2309269))))

(declare-fun e!3620419 () Option!15852)

(assert (=> d!1854762 (= lt!2309269 e!3620419)))

(declare-fun c!1050757 () Bool)

(declare-fun e!3620418 () Bool)

(assert (=> d!1854762 (= c!1050757 e!3620418)))

(declare-fun res!2479136 () Bool)

(assert (=> d!1854762 (=> (not res!2479136) (not e!3620418))))

(assert (=> d!1854762 (= res!2479136 (matchR!8144 (regOne!32434 r!7292) Nil!64060))))

(assert (=> d!1854762 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1854762 (= (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326) lt!2309269)))

(declare-fun b!5912478 () Bool)

(declare-fun e!3620417 () Option!15852)

(assert (=> b!5912478 (= e!3620417 None!15851)))

(declare-fun b!5912479 () Bool)

(assert (=> b!5912479 (= e!3620419 e!3620417)))

(declare-fun c!1050758 () Bool)

(assert (=> b!5912479 (= c!1050758 ((_ is Nil!64060) s!2326))))

(declare-fun b!5912480 () Bool)

(declare-fun res!2479139 () Bool)

(assert (=> b!5912480 (=> (not res!2479139) (not e!3620416))))

(declare-fun get!22056 (Option!15852) tuple2!65880)

(assert (=> b!5912480 (= res!2479139 (matchR!8144 (regTwo!32434 r!7292) (_2!36243 (get!22056 lt!2309269))))))

(declare-fun b!5912481 () Bool)

(assert (=> b!5912481 (= e!3620420 (not (isDefined!12555 lt!2309269)))))

(declare-fun b!5912482 () Bool)

(declare-fun ++!14060 (List!64184 List!64184) List!64184)

(assert (=> b!5912482 (= e!3620416 (= (++!14060 (_1!36243 (get!22056 lt!2309269)) (_2!36243 (get!22056 lt!2309269))) s!2326))))

(declare-fun b!5912483 () Bool)

(assert (=> b!5912483 (= e!3620418 (matchR!8144 (regTwo!32434 r!7292) s!2326))))

(declare-fun b!5912484 () Bool)

(declare-fun lt!2309271 () Unit!157193)

(declare-fun lt!2309270 () Unit!157193)

(assert (=> b!5912484 (= lt!2309271 lt!2309270)))

(assert (=> b!5912484 (= (++!14060 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2155 (List!64184 C!32192 List!64184 List!64184) Unit!157193)

(assert (=> b!5912484 (= lt!2309270 (lemmaMoveElementToOtherListKeepsConcatEq!2155 Nil!64060 (h!70508 s!2326) (t!377573 s!2326) s!2326))))

(assert (=> b!5912484 (= e!3620417 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326) s!2326))))

(declare-fun b!5912485 () Bool)

(assert (=> b!5912485 (= e!3620419 (Some!15851 (tuple2!65881 Nil!64060 s!2326)))))

(declare-fun b!5912486 () Bool)

(declare-fun res!2479138 () Bool)

(assert (=> b!5912486 (=> (not res!2479138) (not e!3620416))))

(assert (=> b!5912486 (= res!2479138 (matchR!8144 (regOne!32434 r!7292) (_1!36243 (get!22056 lt!2309269))))))

(assert (= (and d!1854762 res!2479136) b!5912483))

(assert (= (and d!1854762 c!1050757) b!5912485))

(assert (= (and d!1854762 (not c!1050757)) b!5912479))

(assert (= (and b!5912479 c!1050758) b!5912478))

(assert (= (and b!5912479 (not c!1050758)) b!5912484))

(assert (= (and d!1854762 res!2479140) b!5912486))

(assert (= (and b!5912486 res!2479138) b!5912480))

(assert (= (and b!5912480 res!2479139) b!5912482))

(assert (= (and d!1854762 (not res!2479137)) b!5912481))

(declare-fun m!6811836 () Bool)

(assert (=> b!5912482 m!6811836))

(declare-fun m!6811838 () Bool)

(assert (=> b!5912482 m!6811838))

(declare-fun m!6811840 () Bool)

(assert (=> b!5912484 m!6811840))

(assert (=> b!5912484 m!6811840))

(declare-fun m!6811842 () Bool)

(assert (=> b!5912484 m!6811842))

(declare-fun m!6811844 () Bool)

(assert (=> b!5912484 m!6811844))

(assert (=> b!5912484 m!6811840))

(declare-fun m!6811846 () Bool)

(assert (=> b!5912484 m!6811846))

(assert (=> b!5912480 m!6811836))

(declare-fun m!6811848 () Bool)

(assert (=> b!5912480 m!6811848))

(assert (=> b!5912486 m!6811836))

(declare-fun m!6811850 () Bool)

(assert (=> b!5912486 m!6811850))

(declare-fun m!6811852 () Bool)

(assert (=> d!1854762 m!6811852))

(declare-fun m!6811854 () Bool)

(assert (=> d!1854762 m!6811854))

(declare-fun m!6811856 () Bool)

(assert (=> d!1854762 m!6811856))

(declare-fun m!6811858 () Bool)

(assert (=> b!5912483 m!6811858))

(assert (=> b!5912481 m!6811852))

(assert (=> b!5912371 d!1854762))

(declare-fun d!1854776 () Bool)

(declare-fun choose!44601 (Int) Bool)

(assert (=> d!1854776 (= (Exists!3031 lambda!322486) (choose!44601 lambda!322486))))

(declare-fun bs!1400021 () Bool)

(assert (= bs!1400021 d!1854776))

(declare-fun m!6811870 () Bool)

(assert (=> bs!1400021 m!6811870))

(assert (=> b!5912371 d!1854776))

(declare-fun d!1854780 () Bool)

(assert (=> d!1854780 (= (Exists!3031 lambda!322485) (choose!44601 lambda!322485))))

(declare-fun bs!1400022 () Bool)

(assert (= bs!1400022 d!1854780))

(declare-fun m!6811872 () Bool)

(assert (=> bs!1400022 m!6811872))

(assert (=> b!5912371 d!1854780))

(declare-fun bs!1400030 () Bool)

(declare-fun d!1854782 () Bool)

(assert (= bs!1400030 (and d!1854782 b!5912371)))

(declare-fun lambda!322519 () Int)

(assert (=> bs!1400030 (= lambda!322519 lambda!322485)))

(assert (=> bs!1400030 (not (= lambda!322519 lambda!322486))))

(assert (=> d!1854782 true))

(assert (=> d!1854782 true))

(assert (=> d!1854782 true))

(assert (=> d!1854782 (= (isDefined!12555 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326)) (Exists!3031 lambda!322519))))

(declare-fun lt!2309274 () Unit!157193)

(declare-fun choose!44602 (Regex!15961 Regex!15961 List!64184) Unit!157193)

(assert (=> d!1854782 (= lt!2309274 (choose!44602 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326))))

(assert (=> d!1854782 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1854782 (= (lemmaFindConcatSeparationEquivalentToExists!2030 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326) lt!2309274)))

(declare-fun bs!1400031 () Bool)

(assert (= bs!1400031 d!1854782))

(assert (=> bs!1400031 m!6811724))

(assert (=> bs!1400031 m!6811726))

(declare-fun m!6811880 () Bool)

(assert (=> bs!1400031 m!6811880))

(assert (=> bs!1400031 m!6811724))

(assert (=> bs!1400031 m!6811856))

(declare-fun m!6811882 () Bool)

(assert (=> bs!1400031 m!6811882))

(assert (=> b!5912371 d!1854782))

(declare-fun bs!1400041 () Bool)

(declare-fun d!1854786 () Bool)

(assert (= bs!1400041 (and d!1854786 b!5912371)))

(declare-fun lambda!322528 () Int)

(assert (=> bs!1400041 (= lambda!322528 lambda!322485)))

(assert (=> bs!1400041 (not (= lambda!322528 lambda!322486))))

(declare-fun bs!1400042 () Bool)

(assert (= bs!1400042 (and d!1854786 d!1854782)))

(assert (=> bs!1400042 (= lambda!322528 lambda!322519)))

(assert (=> d!1854786 true))

(assert (=> d!1854786 true))

(assert (=> d!1854786 true))

(declare-fun lambda!322529 () Int)

(assert (=> bs!1400041 (not (= lambda!322529 lambda!322485))))

(assert (=> bs!1400041 (= lambda!322529 lambda!322486)))

(assert (=> bs!1400042 (not (= lambda!322529 lambda!322519))))

(declare-fun bs!1400043 () Bool)

(assert (= bs!1400043 d!1854786))

(assert (=> bs!1400043 (not (= lambda!322529 lambda!322528))))

(assert (=> d!1854786 true))

(assert (=> d!1854786 true))

(assert (=> d!1854786 true))

(assert (=> d!1854786 (= (Exists!3031 lambda!322528) (Exists!3031 lambda!322529))))

(declare-fun lt!2309286 () Unit!157193)

(declare-fun choose!44603 (Regex!15961 Regex!15961 List!64184) Unit!157193)

(assert (=> d!1854786 (= lt!2309286 (choose!44603 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326))))

(assert (=> d!1854786 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1854786 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1568 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326) lt!2309286)))

(declare-fun m!6811920 () Bool)

(assert (=> bs!1400043 m!6811920))

(declare-fun m!6811922 () Bool)

(assert (=> bs!1400043 m!6811922))

(declare-fun m!6811924 () Bool)

(assert (=> bs!1400043 m!6811924))

(assert (=> bs!1400043 m!6811856))

(assert (=> b!5912371 d!1854786))

(declare-fun d!1854800 () Bool)

(declare-fun isEmpty!35914 (Option!15852) Bool)

(assert (=> d!1854800 (= (isDefined!12555 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326)) (not (isEmpty!35914 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326))))))

(declare-fun bs!1400044 () Bool)

(assert (= bs!1400044 d!1854800))

(assert (=> bs!1400044 m!6811724))

(declare-fun m!6811932 () Bool)

(assert (=> bs!1400044 m!6811932))

(assert (=> b!5912371 d!1854800))

(declare-fun d!1854802 () Bool)

(declare-fun lambda!322532 () Int)

(declare-fun forall!15046 (List!64182 Int) Bool)

(assert (=> d!1854802 (= (inv!83149 setElem!40114) (forall!15046 (exprs!5845 setElem!40114) lambda!322532))))

(declare-fun bs!1400045 () Bool)

(assert (= bs!1400045 d!1854802))

(declare-fun m!6811938 () Bool)

(assert (=> bs!1400045 m!6811938))

(assert (=> setNonEmpty!40114 d!1854802))

(declare-fun d!1854804 () Bool)

(declare-fun e!3620543 () Bool)

(assert (=> d!1854804 e!3620543))

(declare-fun res!2479222 () Bool)

(assert (=> d!1854804 (=> (not res!2479222) (not e!3620543))))

(declare-fun lt!2309292 () List!64183)

(declare-fun noDuplicate!1821 (List!64183) Bool)

(assert (=> d!1854804 (= res!2479222 (noDuplicate!1821 lt!2309292))))

(declare-fun choose!44604 ((InoxSet Context!10690)) List!64183)

(assert (=> d!1854804 (= lt!2309292 (choose!44604 z!1189))))

(assert (=> d!1854804 (= (toList!9745 z!1189) lt!2309292)))

(declare-fun b!5912706 () Bool)

(declare-fun content!11786 (List!64183) (InoxSet Context!10690))

(assert (=> b!5912706 (= e!3620543 (= (content!11786 lt!2309292) z!1189))))

(assert (= (and d!1854804 res!2479222) b!5912706))

(declare-fun m!6811940 () Bool)

(assert (=> d!1854804 m!6811940))

(declare-fun m!6811942 () Bool)

(assert (=> d!1854804 m!6811942))

(declare-fun m!6811944 () Bool)

(assert (=> b!5912706 m!6811944))

(assert (=> b!5912373 d!1854804))

(declare-fun bs!1400046 () Bool)

(declare-fun d!1854806 () Bool)

(assert (= bs!1400046 (and d!1854806 d!1854802)))

(declare-fun lambda!322535 () Int)

(assert (=> bs!1400046 (= lambda!322535 lambda!322532)))

(declare-fun b!5912727 () Bool)

(declare-fun e!3620559 () Regex!15961)

(declare-fun e!3620557 () Regex!15961)

(assert (=> b!5912727 (= e!3620559 e!3620557)))

(declare-fun c!1050811 () Bool)

(assert (=> b!5912727 (= c!1050811 ((_ is Cons!64058) (unfocusZipperList!1382 zl!343)))))

(declare-fun b!5912728 () Bool)

(assert (=> b!5912728 (= e!3620557 EmptyLang!15961)))

(declare-fun b!5912729 () Bool)

(assert (=> b!5912729 (= e!3620557 (Union!15961 (h!70506 (unfocusZipperList!1382 zl!343)) (generalisedUnion!1805 (t!377571 (unfocusZipperList!1382 zl!343)))))))

(declare-fun b!5912731 () Bool)

(assert (=> b!5912731 (= e!3620559 (h!70506 (unfocusZipperList!1382 zl!343)))))

(declare-fun b!5912732 () Bool)

(declare-fun e!3620560 () Bool)

(declare-fun lt!2309295 () Regex!15961)

(declare-fun isUnion!830 (Regex!15961) Bool)

(assert (=> b!5912732 (= e!3620560 (isUnion!830 lt!2309295))))

(declare-fun b!5912733 () Bool)

(declare-fun e!3620558 () Bool)

(declare-fun isEmptyLang!1400 (Regex!15961) Bool)

(assert (=> b!5912733 (= e!3620558 (isEmptyLang!1400 lt!2309295))))

(declare-fun e!3620561 () Bool)

(assert (=> d!1854806 e!3620561))

(declare-fun res!2479227 () Bool)

(assert (=> d!1854806 (=> (not res!2479227) (not e!3620561))))

(assert (=> d!1854806 (= res!2479227 (validRegex!7697 lt!2309295))))

(assert (=> d!1854806 (= lt!2309295 e!3620559)))

(declare-fun c!1050809 () Bool)

(declare-fun e!3620556 () Bool)

(assert (=> d!1854806 (= c!1050809 e!3620556)))

(declare-fun res!2479228 () Bool)

(assert (=> d!1854806 (=> (not res!2479228) (not e!3620556))))

(assert (=> d!1854806 (= res!2479228 ((_ is Cons!64058) (unfocusZipperList!1382 zl!343)))))

(assert (=> d!1854806 (forall!15046 (unfocusZipperList!1382 zl!343) lambda!322535)))

(assert (=> d!1854806 (= (generalisedUnion!1805 (unfocusZipperList!1382 zl!343)) lt!2309295)))

(declare-fun b!5912730 () Bool)

(declare-fun isEmpty!35915 (List!64182) Bool)

(assert (=> b!5912730 (= e!3620556 (isEmpty!35915 (t!377571 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5912734 () Bool)

(assert (=> b!5912734 (= e!3620558 e!3620560)))

(declare-fun c!1050812 () Bool)

(declare-fun tail!11552 (List!64182) List!64182)

(assert (=> b!5912734 (= c!1050812 (isEmpty!35915 (tail!11552 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5912735 () Bool)

(declare-fun head!12467 (List!64182) Regex!15961)

(assert (=> b!5912735 (= e!3620560 (= lt!2309295 (head!12467 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5912736 () Bool)

(assert (=> b!5912736 (= e!3620561 e!3620558)))

(declare-fun c!1050810 () Bool)

(assert (=> b!5912736 (= c!1050810 (isEmpty!35915 (unfocusZipperList!1382 zl!343)))))

(assert (= (and d!1854806 res!2479228) b!5912730))

(assert (= (and d!1854806 c!1050809) b!5912731))

(assert (= (and d!1854806 (not c!1050809)) b!5912727))

(assert (= (and b!5912727 c!1050811) b!5912729))

(assert (= (and b!5912727 (not c!1050811)) b!5912728))

(assert (= (and d!1854806 res!2479227) b!5912736))

(assert (= (and b!5912736 c!1050810) b!5912733))

(assert (= (and b!5912736 (not c!1050810)) b!5912734))

(assert (= (and b!5912734 c!1050812) b!5912735))

(assert (= (and b!5912734 (not c!1050812)) b!5912732))

(declare-fun m!6811946 () Bool)

(assert (=> b!5912733 m!6811946))

(declare-fun m!6811948 () Bool)

(assert (=> b!5912729 m!6811948))

(declare-fun m!6811950 () Bool)

(assert (=> d!1854806 m!6811950))

(assert (=> d!1854806 m!6811734))

(declare-fun m!6811952 () Bool)

(assert (=> d!1854806 m!6811952))

(declare-fun m!6811954 () Bool)

(assert (=> b!5912732 m!6811954))

(assert (=> b!5912736 m!6811734))

(declare-fun m!6811956 () Bool)

(assert (=> b!5912736 m!6811956))

(declare-fun m!6811958 () Bool)

(assert (=> b!5912730 m!6811958))

(assert (=> b!5912734 m!6811734))

(declare-fun m!6811960 () Bool)

(assert (=> b!5912734 m!6811960))

(assert (=> b!5912734 m!6811960))

(declare-fun m!6811962 () Bool)

(assert (=> b!5912734 m!6811962))

(assert (=> b!5912735 m!6811734))

(declare-fun m!6811964 () Bool)

(assert (=> b!5912735 m!6811964))

(assert (=> b!5912364 d!1854806))

(declare-fun bs!1400047 () Bool)

(declare-fun d!1854808 () Bool)

(assert (= bs!1400047 (and d!1854808 d!1854802)))

(declare-fun lambda!322538 () Int)

(assert (=> bs!1400047 (= lambda!322538 lambda!322532)))

(declare-fun bs!1400048 () Bool)

(assert (= bs!1400048 (and d!1854808 d!1854806)))

(assert (=> bs!1400048 (= lambda!322538 lambda!322535)))

(declare-fun lt!2309298 () List!64182)

(assert (=> d!1854808 (forall!15046 lt!2309298 lambda!322538)))

(declare-fun e!3620564 () List!64182)

(assert (=> d!1854808 (= lt!2309298 e!3620564)))

(declare-fun c!1050815 () Bool)

(assert (=> d!1854808 (= c!1050815 ((_ is Cons!64059) zl!343))))

(assert (=> d!1854808 (= (unfocusZipperList!1382 zl!343) lt!2309298)))

(declare-fun b!5912741 () Bool)

(assert (=> b!5912741 (= e!3620564 (Cons!64058 (generalisedConcat!1558 (exprs!5845 (h!70507 zl!343))) (unfocusZipperList!1382 (t!377572 zl!343))))))

(declare-fun b!5912742 () Bool)

(assert (=> b!5912742 (= e!3620564 Nil!64058)))

(assert (= (and d!1854808 c!1050815) b!5912741))

(assert (= (and d!1854808 (not c!1050815)) b!5912742))

(declare-fun m!6811966 () Bool)

(assert (=> d!1854808 m!6811966))

(assert (=> b!5912741 m!6811740))

(declare-fun m!6811968 () Bool)

(assert (=> b!5912741 m!6811968))

(assert (=> b!5912364 d!1854808))

(declare-fun bs!1400049 () Bool)

(declare-fun d!1854810 () Bool)

(assert (= bs!1400049 (and d!1854810 d!1854802)))

(declare-fun lambda!322539 () Int)

(assert (=> bs!1400049 (= lambda!322539 lambda!322532)))

(declare-fun bs!1400050 () Bool)

(assert (= bs!1400050 (and d!1854810 d!1854806)))

(assert (=> bs!1400050 (= lambda!322539 lambda!322535)))

(declare-fun bs!1400051 () Bool)

(assert (= bs!1400051 (and d!1854810 d!1854808)))

(assert (=> bs!1400051 (= lambda!322539 lambda!322538)))

(assert (=> d!1854810 (= (inv!83149 (h!70507 zl!343)) (forall!15046 (exprs!5845 (h!70507 zl!343)) lambda!322539))))

(declare-fun bs!1400052 () Bool)

(assert (= bs!1400052 d!1854810))

(declare-fun m!6811970 () Bool)

(assert (=> bs!1400052 m!6811970))

(assert (=> b!5912376 d!1854810))

(declare-fun bs!1400053 () Bool)

(declare-fun b!5912785 () Bool)

(assert (= bs!1400053 (and b!5912785 d!1854782)))

(declare-fun lambda!322544 () Int)

(assert (=> bs!1400053 (not (= lambda!322544 lambda!322519))))

(declare-fun bs!1400054 () Bool)

(assert (= bs!1400054 (and b!5912785 d!1854786)))

(assert (=> bs!1400054 (not (= lambda!322544 lambda!322528))))

(declare-fun bs!1400055 () Bool)

(assert (= bs!1400055 (and b!5912785 b!5912371)))

(assert (=> bs!1400055 (not (= lambda!322544 lambda!322485))))

(assert (=> bs!1400055 (not (= lambda!322544 lambda!322486))))

(assert (=> bs!1400054 (not (= lambda!322544 lambda!322529))))

(assert (=> b!5912785 true))

(assert (=> b!5912785 true))

(declare-fun bs!1400056 () Bool)

(declare-fun b!5912776 () Bool)

(assert (= bs!1400056 (and b!5912776 b!5912785)))

(declare-fun lambda!322545 () Int)

(assert (=> bs!1400056 (not (= lambda!322545 lambda!322544))))

(declare-fun bs!1400057 () Bool)

(assert (= bs!1400057 (and b!5912776 d!1854782)))

(assert (=> bs!1400057 (not (= lambda!322545 lambda!322519))))

(declare-fun bs!1400058 () Bool)

(assert (= bs!1400058 (and b!5912776 d!1854786)))

(assert (=> bs!1400058 (not (= lambda!322545 lambda!322528))))

(declare-fun bs!1400059 () Bool)

(assert (= bs!1400059 (and b!5912776 b!5912371)))

(assert (=> bs!1400059 (not (= lambda!322545 lambda!322485))))

(assert (=> bs!1400059 (= lambda!322545 lambda!322486)))

(assert (=> bs!1400058 (= lambda!322545 lambda!322529)))

(assert (=> b!5912776 true))

(assert (=> b!5912776 true))

(declare-fun b!5912775 () Bool)

(declare-fun e!3620589 () Bool)

(assert (=> b!5912775 (= e!3620589 (= s!2326 (Cons!64060 (c!1050727 r!7292) Nil!64060)))))

(declare-fun e!3620585 () Bool)

(declare-fun call!468588 () Bool)

(assert (=> b!5912776 (= e!3620585 call!468588)))

(declare-fun b!5912777 () Bool)

(declare-fun e!3620588 () Bool)

(declare-fun call!468587 () Bool)

(assert (=> b!5912777 (= e!3620588 call!468587)))

(declare-fun b!5912778 () Bool)

(declare-fun e!3620586 () Bool)

(declare-fun e!3620583 () Bool)

(assert (=> b!5912778 (= e!3620586 e!3620583)))

(declare-fun res!2479245 () Bool)

(assert (=> b!5912778 (= res!2479245 (matchRSpec!3062 (regOne!32435 r!7292) s!2326))))

(assert (=> b!5912778 (=> res!2479245 e!3620583)))

(declare-fun b!5912779 () Bool)

(assert (=> b!5912779 (= e!3620583 (matchRSpec!3062 (regTwo!32435 r!7292) s!2326))))

(declare-fun b!5912780 () Bool)

(declare-fun res!2479246 () Bool)

(declare-fun e!3620584 () Bool)

(assert (=> b!5912780 (=> res!2479246 e!3620584)))

(assert (=> b!5912780 (= res!2479246 call!468587)))

(assert (=> b!5912780 (= e!3620585 e!3620584)))

(declare-fun bm!468582 () Bool)

(declare-fun isEmpty!35916 (List!64184) Bool)

(assert (=> bm!468582 (= call!468587 (isEmpty!35916 s!2326))))

(declare-fun b!5912782 () Bool)

(declare-fun c!1050824 () Bool)

(assert (=> b!5912782 (= c!1050824 ((_ is ElementMatch!15961) r!7292))))

(declare-fun e!3620587 () Bool)

(assert (=> b!5912782 (= e!3620587 e!3620589)))

(declare-fun bm!468583 () Bool)

(declare-fun c!1050826 () Bool)

(assert (=> bm!468583 (= call!468588 (Exists!3031 (ite c!1050826 lambda!322544 lambda!322545)))))

(declare-fun b!5912783 () Bool)

(assert (=> b!5912783 (= e!3620588 e!3620587)))

(declare-fun res!2479247 () Bool)

(assert (=> b!5912783 (= res!2479247 (not ((_ is EmptyLang!15961) r!7292)))))

(assert (=> b!5912783 (=> (not res!2479247) (not e!3620587))))

(declare-fun d!1854812 () Bool)

(declare-fun c!1050825 () Bool)

(assert (=> d!1854812 (= c!1050825 ((_ is EmptyExpr!15961) r!7292))))

(assert (=> d!1854812 (= (matchRSpec!3062 r!7292 s!2326) e!3620588)))

(declare-fun b!5912781 () Bool)

(assert (=> b!5912781 (= e!3620586 e!3620585)))

(assert (=> b!5912781 (= c!1050826 ((_ is Star!15961) r!7292))))

(declare-fun b!5912784 () Bool)

(declare-fun c!1050827 () Bool)

(assert (=> b!5912784 (= c!1050827 ((_ is Union!15961) r!7292))))

(assert (=> b!5912784 (= e!3620589 e!3620586)))

(assert (=> b!5912785 (= e!3620584 call!468588)))

(assert (= (and d!1854812 c!1050825) b!5912777))

(assert (= (and d!1854812 (not c!1050825)) b!5912783))

(assert (= (and b!5912783 res!2479247) b!5912782))

(assert (= (and b!5912782 c!1050824) b!5912775))

(assert (= (and b!5912782 (not c!1050824)) b!5912784))

(assert (= (and b!5912784 c!1050827) b!5912778))

(assert (= (and b!5912784 (not c!1050827)) b!5912781))

(assert (= (and b!5912778 (not res!2479245)) b!5912779))

(assert (= (and b!5912781 c!1050826) b!5912780))

(assert (= (and b!5912781 (not c!1050826)) b!5912776))

(assert (= (and b!5912780 (not res!2479246)) b!5912785))

(assert (= (or b!5912785 b!5912776) bm!468583))

(assert (= (or b!5912777 b!5912780) bm!468582))

(declare-fun m!6811972 () Bool)

(assert (=> b!5912778 m!6811972))

(declare-fun m!6811974 () Bool)

(assert (=> b!5912779 m!6811974))

(declare-fun m!6811976 () Bool)

(assert (=> bm!468582 m!6811976))

(declare-fun m!6811978 () Bool)

(assert (=> bm!468583 m!6811978))

(assert (=> b!5912365 d!1854812))

(declare-fun b!5912814 () Bool)

(declare-fun e!3620607 () Bool)

(declare-fun lt!2309301 () Bool)

(declare-fun call!468591 () Bool)

(assert (=> b!5912814 (= e!3620607 (= lt!2309301 call!468591))))

(declare-fun b!5912815 () Bool)

(declare-fun res!2479271 () Bool)

(declare-fun e!3620604 () Bool)

(assert (=> b!5912815 (=> (not res!2479271) (not e!3620604))))

(assert (=> b!5912815 (= res!2479271 (not call!468591))))

(declare-fun b!5912816 () Bool)

(declare-fun e!3620605 () Bool)

(assert (=> b!5912816 (= e!3620605 (not lt!2309301))))

(declare-fun b!5912817 () Bool)

(declare-fun head!12468 (List!64184) C!32192)

(assert (=> b!5912817 (= e!3620604 (= (head!12468 s!2326) (c!1050727 r!7292)))))

(declare-fun b!5912819 () Bool)

(declare-fun e!3620610 () Bool)

(declare-fun e!3620606 () Bool)

(assert (=> b!5912819 (= e!3620610 e!3620606)))

(declare-fun res!2479264 () Bool)

(assert (=> b!5912819 (=> res!2479264 e!3620606)))

(assert (=> b!5912819 (= res!2479264 call!468591)))

(declare-fun b!5912820 () Bool)

(declare-fun res!2479268 () Bool)

(assert (=> b!5912820 (=> res!2479268 e!3620606)))

(declare-fun tail!11553 (List!64184) List!64184)

(assert (=> b!5912820 (= res!2479268 (not (isEmpty!35916 (tail!11553 s!2326))))))

(declare-fun b!5912821 () Bool)

(assert (=> b!5912821 (= e!3620607 e!3620605)))

(declare-fun c!1050834 () Bool)

(assert (=> b!5912821 (= c!1050834 ((_ is EmptyLang!15961) r!7292))))

(declare-fun b!5912822 () Bool)

(declare-fun e!3620608 () Bool)

(assert (=> b!5912822 (= e!3620608 e!3620610)))

(declare-fun res!2479269 () Bool)

(assert (=> b!5912822 (=> (not res!2479269) (not e!3620610))))

(assert (=> b!5912822 (= res!2479269 (not lt!2309301))))

(declare-fun b!5912823 () Bool)

(declare-fun res!2479270 () Bool)

(assert (=> b!5912823 (=> (not res!2479270) (not e!3620604))))

(assert (=> b!5912823 (= res!2479270 (isEmpty!35916 (tail!11553 s!2326)))))

(declare-fun b!5912824 () Bool)

(assert (=> b!5912824 (= e!3620606 (not (= (head!12468 s!2326) (c!1050727 r!7292))))))

(declare-fun bm!468586 () Bool)

(assert (=> bm!468586 (= call!468591 (isEmpty!35916 s!2326))))

(declare-fun b!5912825 () Bool)

(declare-fun res!2479265 () Bool)

(assert (=> b!5912825 (=> res!2479265 e!3620608)))

(assert (=> b!5912825 (= res!2479265 e!3620604)))

(declare-fun res!2479266 () Bool)

(assert (=> b!5912825 (=> (not res!2479266) (not e!3620604))))

(assert (=> b!5912825 (= res!2479266 lt!2309301)))

(declare-fun b!5912826 () Bool)

(declare-fun e!3620609 () Bool)

(assert (=> b!5912826 (= e!3620609 (nullable!5956 r!7292))))

(declare-fun b!5912827 () Bool)

(declare-fun derivativeStep!4694 (Regex!15961 C!32192) Regex!15961)

(assert (=> b!5912827 (= e!3620609 (matchR!8144 (derivativeStep!4694 r!7292 (head!12468 s!2326)) (tail!11553 s!2326)))))

(declare-fun b!5912818 () Bool)

(declare-fun res!2479267 () Bool)

(assert (=> b!5912818 (=> res!2479267 e!3620608)))

(assert (=> b!5912818 (= res!2479267 (not ((_ is ElementMatch!15961) r!7292)))))

(assert (=> b!5912818 (= e!3620605 e!3620608)))

(declare-fun d!1854814 () Bool)

(assert (=> d!1854814 e!3620607))

(declare-fun c!1050836 () Bool)

(assert (=> d!1854814 (= c!1050836 ((_ is EmptyExpr!15961) r!7292))))

(assert (=> d!1854814 (= lt!2309301 e!3620609)))

(declare-fun c!1050835 () Bool)

(assert (=> d!1854814 (= c!1050835 (isEmpty!35916 s!2326))))

(assert (=> d!1854814 (validRegex!7697 r!7292)))

(assert (=> d!1854814 (= (matchR!8144 r!7292 s!2326) lt!2309301)))

(assert (= (and d!1854814 c!1050835) b!5912826))

(assert (= (and d!1854814 (not c!1050835)) b!5912827))

(assert (= (and d!1854814 c!1050836) b!5912814))

(assert (= (and d!1854814 (not c!1050836)) b!5912821))

(assert (= (and b!5912821 c!1050834) b!5912816))

(assert (= (and b!5912821 (not c!1050834)) b!5912818))

(assert (= (and b!5912818 (not res!2479267)) b!5912825))

(assert (= (and b!5912825 res!2479266) b!5912815))

(assert (= (and b!5912815 res!2479271) b!5912823))

(assert (= (and b!5912823 res!2479270) b!5912817))

(assert (= (and b!5912825 (not res!2479265)) b!5912822))

(assert (= (and b!5912822 res!2479269) b!5912819))

(assert (= (and b!5912819 (not res!2479264)) b!5912820))

(assert (= (and b!5912820 (not res!2479268)) b!5912824))

(assert (= (or b!5912814 b!5912815 b!5912819) bm!468586))

(declare-fun m!6811980 () Bool)

(assert (=> b!5912820 m!6811980))

(assert (=> b!5912820 m!6811980))

(declare-fun m!6811982 () Bool)

(assert (=> b!5912820 m!6811982))

(declare-fun m!6811984 () Bool)

(assert (=> b!5912817 m!6811984))

(assert (=> b!5912824 m!6811984))

(assert (=> bm!468586 m!6811976))

(assert (=> b!5912827 m!6811984))

(assert (=> b!5912827 m!6811984))

(declare-fun m!6811986 () Bool)

(assert (=> b!5912827 m!6811986))

(assert (=> b!5912827 m!6811980))

(assert (=> b!5912827 m!6811986))

(assert (=> b!5912827 m!6811980))

(declare-fun m!6811988 () Bool)

(assert (=> b!5912827 m!6811988))

(assert (=> b!5912823 m!6811980))

(assert (=> b!5912823 m!6811980))

(assert (=> b!5912823 m!6811982))

(assert (=> d!1854814 m!6811976))

(assert (=> d!1854814 m!6811744))

(assert (=> b!5912826 m!6811752))

(assert (=> b!5912365 d!1854814))

(declare-fun d!1854816 () Bool)

(assert (=> d!1854816 (= (matchR!8144 r!7292 s!2326) (matchRSpec!3062 r!7292 s!2326))))

(declare-fun lt!2309304 () Unit!157193)

(declare-fun choose!44605 (Regex!15961 List!64184) Unit!157193)

(assert (=> d!1854816 (= lt!2309304 (choose!44605 r!7292 s!2326))))

(assert (=> d!1854816 (validRegex!7697 r!7292)))

(assert (=> d!1854816 (= (mainMatchTheorem!3062 r!7292 s!2326) lt!2309304)))

(declare-fun bs!1400060 () Bool)

(assert (= bs!1400060 d!1854816))

(assert (=> bs!1400060 m!6811714))

(assert (=> bs!1400060 m!6811712))

(declare-fun m!6811990 () Bool)

(assert (=> bs!1400060 m!6811990))

(assert (=> bs!1400060 m!6811744))

(assert (=> b!5912365 d!1854816))

(declare-fun d!1854818 () Bool)

(declare-fun lt!2309307 () Regex!15961)

(assert (=> d!1854818 (validRegex!7697 lt!2309307)))

(assert (=> d!1854818 (= lt!2309307 (generalisedUnion!1805 (unfocusZipperList!1382 zl!343)))))

(assert (=> d!1854818 (= (unfocusZipper!1703 zl!343) lt!2309307)))

(declare-fun bs!1400061 () Bool)

(assert (= bs!1400061 d!1854818))

(declare-fun m!6811992 () Bool)

(assert (=> bs!1400061 m!6811992))

(assert (=> bs!1400061 m!6811734))

(assert (=> bs!1400061 m!6811734))

(assert (=> bs!1400061 m!6811736))

(assert (=> b!5912366 d!1854818))

(declare-fun b!5912846 () Bool)

(declare-fun e!3620628 () Bool)

(declare-fun e!3620631 () Bool)

(assert (=> b!5912846 (= e!3620628 e!3620631)))

(declare-fun res!2479283 () Bool)

(assert (=> b!5912846 (=> (not res!2479283) (not e!3620631))))

(declare-fun call!468599 () Bool)

(assert (=> b!5912846 (= res!2479283 call!468599)))

(declare-fun d!1854820 () Bool)

(declare-fun res!2479284 () Bool)

(declare-fun e!3620626 () Bool)

(assert (=> d!1854820 (=> res!2479284 e!3620626)))

(assert (=> d!1854820 (= res!2479284 ((_ is ElementMatch!15961) r!7292))))

(assert (=> d!1854820 (= (validRegex!7697 r!7292) e!3620626)))

(declare-fun b!5912847 () Bool)

(declare-fun e!3620630 () Bool)

(declare-fun e!3620629 () Bool)

(assert (=> b!5912847 (= e!3620630 e!3620629)))

(declare-fun res!2479286 () Bool)

(assert (=> b!5912847 (= res!2479286 (not (nullable!5956 (reg!16290 r!7292))))))

(assert (=> b!5912847 (=> (not res!2479286) (not e!3620629))))

(declare-fun b!5912848 () Bool)

(declare-fun e!3620627 () Bool)

(declare-fun call!468600 () Bool)

(assert (=> b!5912848 (= e!3620627 call!468600)))

(declare-fun c!1050842 () Bool)

(declare-fun c!1050841 () Bool)

(declare-fun call!468598 () Bool)

(declare-fun bm!468593 () Bool)

(assert (=> bm!468593 (= call!468598 (validRegex!7697 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))

(declare-fun b!5912849 () Bool)

(declare-fun res!2479285 () Bool)

(assert (=> b!5912849 (=> res!2479285 e!3620628)))

(assert (=> b!5912849 (= res!2479285 (not ((_ is Concat!24806) r!7292)))))

(declare-fun e!3620625 () Bool)

(assert (=> b!5912849 (= e!3620625 e!3620628)))

(declare-fun b!5912850 () Bool)

(declare-fun res!2479282 () Bool)

(assert (=> b!5912850 (=> (not res!2479282) (not e!3620627))))

(assert (=> b!5912850 (= res!2479282 call!468599)))

(assert (=> b!5912850 (= e!3620625 e!3620627)))

(declare-fun b!5912851 () Bool)

(assert (=> b!5912851 (= e!3620626 e!3620630)))

(assert (=> b!5912851 (= c!1050842 ((_ is Star!15961) r!7292))))

(declare-fun b!5912852 () Bool)

(assert (=> b!5912852 (= e!3620630 e!3620625)))

(assert (=> b!5912852 (= c!1050841 ((_ is Union!15961) r!7292))))

(declare-fun bm!468594 () Bool)

(assert (=> bm!468594 (= call!468599 call!468598)))

(declare-fun b!5912853 () Bool)

(assert (=> b!5912853 (= e!3620631 call!468600)))

(declare-fun b!5912854 () Bool)

(assert (=> b!5912854 (= e!3620629 call!468598)))

(declare-fun bm!468595 () Bool)

(assert (=> bm!468595 (= call!468600 (validRegex!7697 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))

(assert (= (and d!1854820 (not res!2479284)) b!5912851))

(assert (= (and b!5912851 c!1050842) b!5912847))

(assert (= (and b!5912851 (not c!1050842)) b!5912852))

(assert (= (and b!5912847 res!2479286) b!5912854))

(assert (= (and b!5912852 c!1050841) b!5912850))

(assert (= (and b!5912852 (not c!1050841)) b!5912849))

(assert (= (and b!5912850 res!2479282) b!5912848))

(assert (= (and b!5912849 (not res!2479285)) b!5912846))

(assert (= (and b!5912846 res!2479283) b!5912853))

(assert (= (or b!5912848 b!5912853) bm!468595))

(assert (= (or b!5912850 b!5912846) bm!468594))

(assert (= (or b!5912854 bm!468594) bm!468593))

(declare-fun m!6811994 () Bool)

(assert (=> b!5912847 m!6811994))

(declare-fun m!6811996 () Bool)

(assert (=> bm!468593 m!6811996))

(declare-fun m!6811998 () Bool)

(assert (=> bm!468595 m!6811998))

(assert (=> start!601424 d!1854820))

(declare-fun d!1854822 () Bool)

(assert (=> d!1854822 (= (isEmpty!35910 (t!377572 zl!343)) ((_ is Nil!64059) (t!377572 zl!343)))))

(assert (=> b!5912379 d!1854822))

(declare-fun bs!1400062 () Bool)

(declare-fun d!1854824 () Bool)

(assert (= bs!1400062 (and d!1854824 d!1854802)))

(declare-fun lambda!322548 () Int)

(assert (=> bs!1400062 (= lambda!322548 lambda!322532)))

(declare-fun bs!1400063 () Bool)

(assert (= bs!1400063 (and d!1854824 d!1854806)))

(assert (=> bs!1400063 (= lambda!322548 lambda!322535)))

(declare-fun bs!1400064 () Bool)

(assert (= bs!1400064 (and d!1854824 d!1854808)))

(assert (=> bs!1400064 (= lambda!322548 lambda!322538)))

(declare-fun bs!1400065 () Bool)

(assert (= bs!1400065 (and d!1854824 d!1854810)))

(assert (=> bs!1400065 (= lambda!322548 lambda!322539)))

(declare-fun b!5912875 () Bool)

(declare-fun e!3620647 () Regex!15961)

(assert (=> b!5912875 (= e!3620647 (Concat!24806 (h!70506 (exprs!5845 (h!70507 zl!343))) (generalisedConcat!1558 (t!377571 (exprs!5845 (h!70507 zl!343))))))))

(declare-fun b!5912877 () Bool)

(declare-fun e!3620644 () Regex!15961)

(assert (=> b!5912877 (= e!3620644 (h!70506 (exprs!5845 (h!70507 zl!343))))))

(declare-fun b!5912878 () Bool)

(assert (=> b!5912878 (= e!3620647 EmptyExpr!15961)))

(declare-fun b!5912879 () Bool)

(declare-fun e!3620649 () Bool)

(declare-fun lt!2309310 () Regex!15961)

(declare-fun isConcat!914 (Regex!15961) Bool)

(assert (=> b!5912879 (= e!3620649 (isConcat!914 lt!2309310))))

(declare-fun b!5912880 () Bool)

(assert (=> b!5912880 (= e!3620649 (= lt!2309310 (head!12467 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun e!3620646 () Bool)

(assert (=> d!1854824 e!3620646))

(declare-fun res!2479292 () Bool)

(assert (=> d!1854824 (=> (not res!2479292) (not e!3620646))))

(assert (=> d!1854824 (= res!2479292 (validRegex!7697 lt!2309310))))

(assert (=> d!1854824 (= lt!2309310 e!3620644)))

(declare-fun c!1050851 () Bool)

(declare-fun e!3620645 () Bool)

(assert (=> d!1854824 (= c!1050851 e!3620645)))

(declare-fun res!2479291 () Bool)

(assert (=> d!1854824 (=> (not res!2479291) (not e!3620645))))

(assert (=> d!1854824 (= res!2479291 ((_ is Cons!64058) (exprs!5845 (h!70507 zl!343))))))

(assert (=> d!1854824 (forall!15046 (exprs!5845 (h!70507 zl!343)) lambda!322548)))

(assert (=> d!1854824 (= (generalisedConcat!1558 (exprs!5845 (h!70507 zl!343))) lt!2309310)))

(declare-fun b!5912876 () Bool)

(assert (=> b!5912876 (= e!3620644 e!3620647)))

(declare-fun c!1050853 () Bool)

(assert (=> b!5912876 (= c!1050853 ((_ is Cons!64058) (exprs!5845 (h!70507 zl!343))))))

(declare-fun b!5912881 () Bool)

(declare-fun e!3620648 () Bool)

(declare-fun isEmptyExpr!1391 (Regex!15961) Bool)

(assert (=> b!5912881 (= e!3620648 (isEmptyExpr!1391 lt!2309310))))

(declare-fun b!5912882 () Bool)

(assert (=> b!5912882 (= e!3620646 e!3620648)))

(declare-fun c!1050852 () Bool)

(assert (=> b!5912882 (= c!1050852 (isEmpty!35915 (exprs!5845 (h!70507 zl!343))))))

(declare-fun b!5912883 () Bool)

(assert (=> b!5912883 (= e!3620645 (isEmpty!35915 (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5912884 () Bool)

(assert (=> b!5912884 (= e!3620648 e!3620649)))

(declare-fun c!1050854 () Bool)

(assert (=> b!5912884 (= c!1050854 (isEmpty!35915 (tail!11552 (exprs!5845 (h!70507 zl!343)))))))

(assert (= (and d!1854824 res!2479291) b!5912883))

(assert (= (and d!1854824 c!1050851) b!5912877))

(assert (= (and d!1854824 (not c!1050851)) b!5912876))

(assert (= (and b!5912876 c!1050853) b!5912875))

(assert (= (and b!5912876 (not c!1050853)) b!5912878))

(assert (= (and d!1854824 res!2479292) b!5912882))

(assert (= (and b!5912882 c!1050852) b!5912881))

(assert (= (and b!5912882 (not c!1050852)) b!5912884))

(assert (= (and b!5912884 c!1050854) b!5912880))

(assert (= (and b!5912884 (not c!1050854)) b!5912879))

(declare-fun m!6812000 () Bool)

(assert (=> b!5912879 m!6812000))

(declare-fun m!6812002 () Bool)

(assert (=> b!5912875 m!6812002))

(declare-fun m!6812004 () Bool)

(assert (=> b!5912880 m!6812004))

(declare-fun m!6812006 () Bool)

(assert (=> b!5912881 m!6812006))

(declare-fun m!6812008 () Bool)

(assert (=> d!1854824 m!6812008))

(declare-fun m!6812010 () Bool)

(assert (=> d!1854824 m!6812010))

(declare-fun m!6812012 () Bool)

(assert (=> b!5912882 m!6812012))

(declare-fun m!6812014 () Bool)

(assert (=> b!5912883 m!6812014))

(declare-fun m!6812016 () Bool)

(assert (=> b!5912884 m!6812016))

(assert (=> b!5912884 m!6812016))

(declare-fun m!6812018 () Bool)

(assert (=> b!5912884 m!6812018))

(assert (=> b!5912369 d!1854824))

(declare-fun d!1854826 () Bool)

(declare-fun c!1050857 () Bool)

(assert (=> d!1854826 (= c!1050857 (isEmpty!35916 s!2326))))

(declare-fun e!3620652 () Bool)

(assert (=> d!1854826 (= (matchZipper!2017 z!1189 s!2326) e!3620652)))

(declare-fun b!5912889 () Bool)

(assert (=> b!5912889 (= e!3620652 (nullableZipper!1788 z!1189))))

(declare-fun b!5912890 () Bool)

(declare-fun derivationStepZipper!1950 ((InoxSet Context!10690) C!32192) (InoxSet Context!10690))

(assert (=> b!5912890 (= e!3620652 (matchZipper!2017 (derivationStepZipper!1950 z!1189 (head!12468 s!2326)) (tail!11553 s!2326)))))

(assert (= (and d!1854826 c!1050857) b!5912889))

(assert (= (and d!1854826 (not c!1050857)) b!5912890))

(assert (=> d!1854826 m!6811976))

(assert (=> b!5912889 m!6811750))

(assert (=> b!5912890 m!6811984))

(assert (=> b!5912890 m!6811984))

(declare-fun m!6812020 () Bool)

(assert (=> b!5912890 m!6812020))

(assert (=> b!5912890 m!6811980))

(assert (=> b!5912890 m!6812020))

(assert (=> b!5912890 m!6811980))

(declare-fun m!6812022 () Bool)

(assert (=> b!5912890 m!6812022))

(assert (=> b!5912368 d!1854826))

(declare-fun b!5912902 () Bool)

(declare-fun e!3620655 () Bool)

(declare-fun tp!1642735 () Bool)

(declare-fun tp!1642734 () Bool)

(assert (=> b!5912902 (= e!3620655 (and tp!1642735 tp!1642734))))

(declare-fun b!5912901 () Bool)

(assert (=> b!5912901 (= e!3620655 tp_is_empty!41175)))

(assert (=> b!5912372 (= tp!1642660 e!3620655)))

(declare-fun b!5912903 () Bool)

(declare-fun tp!1642732 () Bool)

(assert (=> b!5912903 (= e!3620655 tp!1642732)))

(declare-fun b!5912904 () Bool)

(declare-fun tp!1642731 () Bool)

(declare-fun tp!1642733 () Bool)

(assert (=> b!5912904 (= e!3620655 (and tp!1642731 tp!1642733))))

(assert (= (and b!5912372 ((_ is ElementMatch!15961) (reg!16290 r!7292))) b!5912901))

(assert (= (and b!5912372 ((_ is Concat!24806) (reg!16290 r!7292))) b!5912902))

(assert (= (and b!5912372 ((_ is Star!15961) (reg!16290 r!7292))) b!5912903))

(assert (= (and b!5912372 ((_ is Union!15961) (reg!16290 r!7292))) b!5912904))

(declare-fun b!5912909 () Bool)

(declare-fun e!3620658 () Bool)

(declare-fun tp!1642740 () Bool)

(declare-fun tp!1642741 () Bool)

(assert (=> b!5912909 (= e!3620658 (and tp!1642740 tp!1642741))))

(assert (=> b!5912362 (= tp!1642654 e!3620658)))

(assert (= (and b!5912362 ((_ is Cons!64058) (exprs!5845 (h!70507 zl!343)))) b!5912909))

(declare-fun b!5912911 () Bool)

(declare-fun e!3620659 () Bool)

(declare-fun tp!1642746 () Bool)

(declare-fun tp!1642745 () Bool)

(assert (=> b!5912911 (= e!3620659 (and tp!1642746 tp!1642745))))

(declare-fun b!5912910 () Bool)

(assert (=> b!5912910 (= e!3620659 tp_is_empty!41175)))

(assert (=> b!5912377 (= tp!1642661 e!3620659)))

(declare-fun b!5912912 () Bool)

(declare-fun tp!1642743 () Bool)

(assert (=> b!5912912 (= e!3620659 tp!1642743)))

(declare-fun b!5912913 () Bool)

(declare-fun tp!1642742 () Bool)

(declare-fun tp!1642744 () Bool)

(assert (=> b!5912913 (= e!3620659 (and tp!1642742 tp!1642744))))

(assert (= (and b!5912377 ((_ is ElementMatch!15961) (regOne!32434 r!7292))) b!5912910))

(assert (= (and b!5912377 ((_ is Concat!24806) (regOne!32434 r!7292))) b!5912911))

(assert (= (and b!5912377 ((_ is Star!15961) (regOne!32434 r!7292))) b!5912912))

(assert (= (and b!5912377 ((_ is Union!15961) (regOne!32434 r!7292))) b!5912913))

(declare-fun b!5912915 () Bool)

(declare-fun e!3620660 () Bool)

(declare-fun tp!1642751 () Bool)

(declare-fun tp!1642750 () Bool)

(assert (=> b!5912915 (= e!3620660 (and tp!1642751 tp!1642750))))

(declare-fun b!5912914 () Bool)

(assert (=> b!5912914 (= e!3620660 tp_is_empty!41175)))

(assert (=> b!5912377 (= tp!1642657 e!3620660)))

(declare-fun b!5912916 () Bool)

(declare-fun tp!1642748 () Bool)

(assert (=> b!5912916 (= e!3620660 tp!1642748)))

(declare-fun b!5912917 () Bool)

(declare-fun tp!1642747 () Bool)

(declare-fun tp!1642749 () Bool)

(assert (=> b!5912917 (= e!3620660 (and tp!1642747 tp!1642749))))

(assert (= (and b!5912377 ((_ is ElementMatch!15961) (regTwo!32434 r!7292))) b!5912914))

(assert (= (and b!5912377 ((_ is Concat!24806) (regTwo!32434 r!7292))) b!5912915))

(assert (= (and b!5912377 ((_ is Star!15961) (regTwo!32434 r!7292))) b!5912916))

(assert (= (and b!5912377 ((_ is Union!15961) (regTwo!32434 r!7292))) b!5912917))

(declare-fun b!5912918 () Bool)

(declare-fun e!3620661 () Bool)

(declare-fun tp!1642752 () Bool)

(declare-fun tp!1642753 () Bool)

(assert (=> b!5912918 (= e!3620661 (and tp!1642752 tp!1642753))))

(assert (=> b!5912378 (= tp!1642662 e!3620661)))

(assert (= (and b!5912378 ((_ is Cons!64058) (exprs!5845 setElem!40114))) b!5912918))

(declare-fun b!5912926 () Bool)

(declare-fun e!3620667 () Bool)

(declare-fun tp!1642758 () Bool)

(assert (=> b!5912926 (= e!3620667 tp!1642758)))

(declare-fun b!5912925 () Bool)

(declare-fun e!3620666 () Bool)

(declare-fun tp!1642759 () Bool)

(assert (=> b!5912925 (= e!3620666 (and (inv!83149 (h!70507 (t!377572 zl!343))) e!3620667 tp!1642759))))

(assert (=> b!5912376 (= tp!1642655 e!3620666)))

(assert (= b!5912925 b!5912926))

(assert (= (and b!5912376 ((_ is Cons!64059) (t!377572 zl!343))) b!5912925))

(declare-fun m!6812024 () Bool)

(assert (=> b!5912925 m!6812024))

(declare-fun condSetEmpty!40120 () Bool)

(assert (=> setNonEmpty!40114 (= condSetEmpty!40120 (= setRest!40114 ((as const (Array Context!10690 Bool)) false)))))

(declare-fun setRes!40120 () Bool)

(assert (=> setNonEmpty!40114 (= tp!1642659 setRes!40120)))

(declare-fun setIsEmpty!40120 () Bool)

(assert (=> setIsEmpty!40120 setRes!40120))

(declare-fun setElem!40120 () Context!10690)

(declare-fun setNonEmpty!40120 () Bool)

(declare-fun e!3620670 () Bool)

(declare-fun tp!1642764 () Bool)

(assert (=> setNonEmpty!40120 (= setRes!40120 (and tp!1642764 (inv!83149 setElem!40120) e!3620670))))

(declare-fun setRest!40120 () (InoxSet Context!10690))

(assert (=> setNonEmpty!40120 (= setRest!40114 ((_ map or) (store ((as const (Array Context!10690 Bool)) false) setElem!40120 true) setRest!40120))))

(declare-fun b!5912931 () Bool)

(declare-fun tp!1642765 () Bool)

(assert (=> b!5912931 (= e!3620670 tp!1642765)))

(assert (= (and setNonEmpty!40114 condSetEmpty!40120) setIsEmpty!40120))

(assert (= (and setNonEmpty!40114 (not condSetEmpty!40120)) setNonEmpty!40120))

(assert (= setNonEmpty!40120 b!5912931))

(declare-fun m!6812026 () Bool)

(assert (=> setNonEmpty!40120 m!6812026))

(declare-fun b!5912933 () Bool)

(declare-fun e!3620671 () Bool)

(declare-fun tp!1642770 () Bool)

(declare-fun tp!1642769 () Bool)

(assert (=> b!5912933 (= e!3620671 (and tp!1642770 tp!1642769))))

(declare-fun b!5912932 () Bool)

(assert (=> b!5912932 (= e!3620671 tp_is_empty!41175)))

(assert (=> b!5912370 (= tp!1642653 e!3620671)))

(declare-fun b!5912934 () Bool)

(declare-fun tp!1642767 () Bool)

(assert (=> b!5912934 (= e!3620671 tp!1642767)))

(declare-fun b!5912935 () Bool)

(declare-fun tp!1642766 () Bool)

(declare-fun tp!1642768 () Bool)

(assert (=> b!5912935 (= e!3620671 (and tp!1642766 tp!1642768))))

(assert (= (and b!5912370 ((_ is ElementMatch!15961) (regOne!32435 r!7292))) b!5912932))

(assert (= (and b!5912370 ((_ is Concat!24806) (regOne!32435 r!7292))) b!5912933))

(assert (= (and b!5912370 ((_ is Star!15961) (regOne!32435 r!7292))) b!5912934))

(assert (= (and b!5912370 ((_ is Union!15961) (regOne!32435 r!7292))) b!5912935))

(declare-fun b!5912937 () Bool)

(declare-fun e!3620672 () Bool)

(declare-fun tp!1642775 () Bool)

(declare-fun tp!1642774 () Bool)

(assert (=> b!5912937 (= e!3620672 (and tp!1642775 tp!1642774))))

(declare-fun b!5912936 () Bool)

(assert (=> b!5912936 (= e!3620672 tp_is_empty!41175)))

(assert (=> b!5912370 (= tp!1642658 e!3620672)))

(declare-fun b!5912938 () Bool)

(declare-fun tp!1642772 () Bool)

(assert (=> b!5912938 (= e!3620672 tp!1642772)))

(declare-fun b!5912939 () Bool)

(declare-fun tp!1642771 () Bool)

(declare-fun tp!1642773 () Bool)

(assert (=> b!5912939 (= e!3620672 (and tp!1642771 tp!1642773))))

(assert (= (and b!5912370 ((_ is ElementMatch!15961) (regTwo!32435 r!7292))) b!5912936))

(assert (= (and b!5912370 ((_ is Concat!24806) (regTwo!32435 r!7292))) b!5912937))

(assert (= (and b!5912370 ((_ is Star!15961) (regTwo!32435 r!7292))) b!5912938))

(assert (= (and b!5912370 ((_ is Union!15961) (regTwo!32435 r!7292))) b!5912939))

(declare-fun b!5912944 () Bool)

(declare-fun e!3620675 () Bool)

(declare-fun tp!1642778 () Bool)

(assert (=> b!5912944 (= e!3620675 (and tp_is_empty!41175 tp!1642778))))

(assert (=> b!5912375 (= tp!1642656 e!3620675)))

(assert (= (and b!5912375 ((_ is Cons!64060) (t!377573 s!2326))) b!5912944))

(check-sat (not b!5912847) (not b!5912933) (not b!5912883) (not d!1854818) (not d!1854802) (not bm!468582) (not b!5912735) (not b!5912917) (not bm!468593) (not b!5912882) (not d!1854808) (not b!5912935) (not d!1854752) (not d!1854814) (not b!5912733) (not b!5912884) (not b!5912889) (not b!5912918) (not b!5912944) (not d!1854762) (not b!5912939) (not b!5912827) (not bm!468586) (not b!5912926) (not setNonEmpty!40120) (not b!5912909) (not b!5912931) (not b!5912481) (not b!5912706) (not d!1854824) (not b!5912925) (not b!5912937) (not b!5912486) (not d!1854782) (not b!5912729) (not b!5912732) (not b!5912826) (not d!1854826) (not d!1854810) (not b!5912902) (not d!1854816) (not b!5912736) (not b!5912778) (not d!1854804) (not b!5912904) (not d!1854754) (not b!5912903) (not b!5912823) (not b!5912880) (not d!1854776) tp_is_empty!41175 (not b!5912912) (not bm!468595) (not d!1854800) (not b!5912779) (not b!5912817) (not b!5912879) (not b!5912875) (not b!5912480) (not b!5912824) (not b!5912938) (not d!1854786) (not b!5912913) (not b!5912484) (not d!1854806) (not b!5912916) (not b!5912482) (not b!5912881) (not b!5912915) (not b!5912820) (not bm!468583) (not b!5912730) (not b!5912734) (not b!5912934) (not b!5912483) (not d!1854748) (not b!5912890) (not b!5912911) (not d!1854780) (not b!5912741))
(check-sat)
(get-model)

(declare-fun d!1854974 () Bool)

(assert (=> d!1854974 (= (isEmpty!35915 (exprs!5845 (h!70507 zl!343))) ((_ is Nil!64058) (exprs!5845 (h!70507 zl!343))))))

(assert (=> b!5912882 d!1854974))

(declare-fun d!1854976 () Bool)

(assert (=> d!1854976 (= (isEmptyLang!1400 lt!2309295) ((_ is EmptyLang!15961) lt!2309295))))

(assert (=> b!5912733 d!1854976))

(assert (=> b!5912889 d!1854748))

(declare-fun d!1854978 () Bool)

(assert (=> d!1854978 true))

(assert (=> d!1854978 true))

(declare-fun res!2479447 () Bool)

(assert (=> d!1854978 (= (choose!44601 lambda!322486) res!2479447)))

(assert (=> d!1854776 d!1854978))

(declare-fun d!1854980 () Bool)

(assert (=> d!1854980 (= (isEmpty!35915 (tail!11552 (exprs!5845 (h!70507 zl!343)))) ((_ is Nil!64058) (tail!11552 (exprs!5845 (h!70507 zl!343)))))))

(assert (=> b!5912884 d!1854980))

(declare-fun d!1854982 () Bool)

(assert (=> d!1854982 (= (tail!11552 (exprs!5845 (h!70507 zl!343))) (t!377571 (exprs!5845 (h!70507 zl!343))))))

(assert (=> b!5912884 d!1854982))

(declare-fun d!1854984 () Bool)

(assert (=> d!1854984 (= (head!12467 (unfocusZipperList!1382 zl!343)) (h!70506 (unfocusZipperList!1382 zl!343)))))

(assert (=> b!5912735 d!1854984))

(declare-fun d!1854986 () Bool)

(declare-fun res!2479452 () Bool)

(declare-fun e!3620906 () Bool)

(assert (=> d!1854986 (=> res!2479452 e!3620906)))

(assert (=> d!1854986 (= res!2479452 ((_ is Nil!64058) (exprs!5845 setElem!40114)))))

(assert (=> d!1854986 (= (forall!15046 (exprs!5845 setElem!40114) lambda!322532) e!3620906)))

(declare-fun b!5913364 () Bool)

(declare-fun e!3620907 () Bool)

(assert (=> b!5913364 (= e!3620906 e!3620907)))

(declare-fun res!2479453 () Bool)

(assert (=> b!5913364 (=> (not res!2479453) (not e!3620907))))

(declare-fun dynLambda!25050 (Int Regex!15961) Bool)

(assert (=> b!5913364 (= res!2479453 (dynLambda!25050 lambda!322532 (h!70506 (exprs!5845 setElem!40114))))))

(declare-fun b!5913365 () Bool)

(assert (=> b!5913365 (= e!3620907 (forall!15046 (t!377571 (exprs!5845 setElem!40114)) lambda!322532))))

(assert (= (and d!1854986 (not res!2479452)) b!5913364))

(assert (= (and b!5913364 res!2479453) b!5913365))

(declare-fun b_lambda!222193 () Bool)

(assert (=> (not b_lambda!222193) (not b!5913364)))

(declare-fun m!6812336 () Bool)

(assert (=> b!5913364 m!6812336))

(declare-fun m!6812338 () Bool)

(assert (=> b!5913365 m!6812338))

(assert (=> d!1854802 d!1854986))

(declare-fun d!1854988 () Bool)

(declare-fun res!2479454 () Bool)

(declare-fun e!3620908 () Bool)

(assert (=> d!1854988 (=> res!2479454 e!3620908)))

(assert (=> d!1854988 (= res!2479454 ((_ is Nil!64058) lt!2309298))))

(assert (=> d!1854988 (= (forall!15046 lt!2309298 lambda!322538) e!3620908)))

(declare-fun b!5913366 () Bool)

(declare-fun e!3620909 () Bool)

(assert (=> b!5913366 (= e!3620908 e!3620909)))

(declare-fun res!2479455 () Bool)

(assert (=> b!5913366 (=> (not res!2479455) (not e!3620909))))

(assert (=> b!5913366 (= res!2479455 (dynLambda!25050 lambda!322538 (h!70506 lt!2309298)))))

(declare-fun b!5913367 () Bool)

(assert (=> b!5913367 (= e!3620909 (forall!15046 (t!377571 lt!2309298) lambda!322538))))

(assert (= (and d!1854988 (not res!2479454)) b!5913366))

(assert (= (and b!5913366 res!2479455) b!5913367))

(declare-fun b_lambda!222195 () Bool)

(assert (=> (not b_lambda!222195) (not b!5913366)))

(declare-fun m!6812340 () Bool)

(assert (=> b!5913366 m!6812340))

(declare-fun m!6812342 () Bool)

(assert (=> b!5913367 m!6812342))

(assert (=> d!1854808 d!1854988))

(declare-fun d!1854990 () Bool)

(assert (=> d!1854990 (= (isDefined!12555 lt!2309269) (not (isEmpty!35914 lt!2309269)))))

(declare-fun bs!1400166 () Bool)

(assert (= bs!1400166 d!1854990))

(declare-fun m!6812344 () Bool)

(assert (=> bs!1400166 m!6812344))

(assert (=> b!5912481 d!1854990))

(declare-fun d!1854992 () Bool)

(assert (=> d!1854992 (= (isEmpty!35916 s!2326) ((_ is Nil!64060) s!2326))))

(assert (=> d!1854826 d!1854992))

(assert (=> d!1854816 d!1854814))

(assert (=> d!1854816 d!1854812))

(declare-fun d!1854994 () Bool)

(assert (=> d!1854994 (= (matchR!8144 r!7292 s!2326) (matchRSpec!3062 r!7292 s!2326))))

(assert (=> d!1854994 true))

(declare-fun _$88!4386 () Unit!157193)

(assert (=> d!1854994 (= (choose!44605 r!7292 s!2326) _$88!4386)))

(declare-fun bs!1400167 () Bool)

(assert (= bs!1400167 d!1854994))

(assert (=> bs!1400167 m!6811714))

(assert (=> bs!1400167 m!6811712))

(assert (=> d!1854816 d!1854994))

(assert (=> d!1854816 d!1854820))

(declare-fun bs!1400168 () Bool)

(declare-fun b!5913378 () Bool)

(assert (= bs!1400168 (and b!5913378 b!5912776)))

(declare-fun lambda!322570 () Int)

(assert (=> bs!1400168 (not (= lambda!322570 lambda!322545))))

(declare-fun bs!1400169 () Bool)

(assert (= bs!1400169 (and b!5913378 b!5912785)))

(assert (=> bs!1400169 (= (and (= (reg!16290 (regTwo!32435 r!7292)) (reg!16290 r!7292)) (= (regTwo!32435 r!7292) r!7292)) (= lambda!322570 lambda!322544))))

(declare-fun bs!1400170 () Bool)

(assert (= bs!1400170 (and b!5913378 d!1854782)))

(assert (=> bs!1400170 (not (= lambda!322570 lambda!322519))))

(declare-fun bs!1400171 () Bool)

(assert (= bs!1400171 (and b!5913378 d!1854786)))

(assert (=> bs!1400171 (not (= lambda!322570 lambda!322528))))

(declare-fun bs!1400172 () Bool)

(assert (= bs!1400172 (and b!5913378 b!5912371)))

(assert (=> bs!1400172 (not (= lambda!322570 lambda!322485))))

(assert (=> bs!1400172 (not (= lambda!322570 lambda!322486))))

(assert (=> bs!1400171 (not (= lambda!322570 lambda!322529))))

(assert (=> b!5913378 true))

(assert (=> b!5913378 true))

(declare-fun bs!1400173 () Bool)

(declare-fun b!5913369 () Bool)

(assert (= bs!1400173 (and b!5913369 b!5912776)))

(declare-fun lambda!322571 () Int)

(assert (=> bs!1400173 (= (and (= (regOne!32434 (regTwo!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regTwo!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322571 lambda!322545))))

(declare-fun bs!1400174 () Bool)

(assert (= bs!1400174 (and b!5913369 b!5912785)))

(assert (=> bs!1400174 (not (= lambda!322571 lambda!322544))))

(declare-fun bs!1400175 () Bool)

(assert (= bs!1400175 (and b!5913369 b!5913378)))

(assert (=> bs!1400175 (not (= lambda!322571 lambda!322570))))

(declare-fun bs!1400176 () Bool)

(assert (= bs!1400176 (and b!5913369 d!1854782)))

(assert (=> bs!1400176 (not (= lambda!322571 lambda!322519))))

(declare-fun bs!1400177 () Bool)

(assert (= bs!1400177 (and b!5913369 d!1854786)))

(assert (=> bs!1400177 (not (= lambda!322571 lambda!322528))))

(declare-fun bs!1400178 () Bool)

(assert (= bs!1400178 (and b!5913369 b!5912371)))

(assert (=> bs!1400178 (not (= lambda!322571 lambda!322485))))

(assert (=> bs!1400178 (= (and (= (regOne!32434 (regTwo!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regTwo!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322571 lambda!322486))))

(assert (=> bs!1400177 (= (and (= (regOne!32434 (regTwo!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regTwo!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322571 lambda!322529))))

(assert (=> b!5913369 true))

(assert (=> b!5913369 true))

(declare-fun b!5913368 () Bool)

(declare-fun e!3620916 () Bool)

(assert (=> b!5913368 (= e!3620916 (= s!2326 (Cons!64060 (c!1050727 (regTwo!32435 r!7292)) Nil!64060)))))

(declare-fun e!3620912 () Bool)

(declare-fun call!468647 () Bool)

(assert (=> b!5913369 (= e!3620912 call!468647)))

(declare-fun b!5913370 () Bool)

(declare-fun e!3620915 () Bool)

(declare-fun call!468646 () Bool)

(assert (=> b!5913370 (= e!3620915 call!468646)))

(declare-fun b!5913371 () Bool)

(declare-fun e!3620913 () Bool)

(declare-fun e!3620910 () Bool)

(assert (=> b!5913371 (= e!3620913 e!3620910)))

(declare-fun res!2479456 () Bool)

(assert (=> b!5913371 (= res!2479456 (matchRSpec!3062 (regOne!32435 (regTwo!32435 r!7292)) s!2326))))

(assert (=> b!5913371 (=> res!2479456 e!3620910)))

(declare-fun b!5913372 () Bool)

(assert (=> b!5913372 (= e!3620910 (matchRSpec!3062 (regTwo!32435 (regTwo!32435 r!7292)) s!2326))))

(declare-fun b!5913373 () Bool)

(declare-fun res!2479457 () Bool)

(declare-fun e!3620911 () Bool)

(assert (=> b!5913373 (=> res!2479457 e!3620911)))

(assert (=> b!5913373 (= res!2479457 call!468646)))

(assert (=> b!5913373 (= e!3620912 e!3620911)))

(declare-fun bm!468641 () Bool)

(assert (=> bm!468641 (= call!468646 (isEmpty!35916 s!2326))))

(declare-fun b!5913375 () Bool)

(declare-fun c!1050933 () Bool)

(assert (=> b!5913375 (= c!1050933 ((_ is ElementMatch!15961) (regTwo!32435 r!7292)))))

(declare-fun e!3620914 () Bool)

(assert (=> b!5913375 (= e!3620914 e!3620916)))

(declare-fun bm!468642 () Bool)

(declare-fun c!1050935 () Bool)

(assert (=> bm!468642 (= call!468647 (Exists!3031 (ite c!1050935 lambda!322570 lambda!322571)))))

(declare-fun b!5913376 () Bool)

(assert (=> b!5913376 (= e!3620915 e!3620914)))

(declare-fun res!2479458 () Bool)

(assert (=> b!5913376 (= res!2479458 (not ((_ is EmptyLang!15961) (regTwo!32435 r!7292))))))

(assert (=> b!5913376 (=> (not res!2479458) (not e!3620914))))

(declare-fun d!1854996 () Bool)

(declare-fun c!1050934 () Bool)

(assert (=> d!1854996 (= c!1050934 ((_ is EmptyExpr!15961) (regTwo!32435 r!7292)))))

(assert (=> d!1854996 (= (matchRSpec!3062 (regTwo!32435 r!7292) s!2326) e!3620915)))

(declare-fun b!5913374 () Bool)

(assert (=> b!5913374 (= e!3620913 e!3620912)))

(assert (=> b!5913374 (= c!1050935 ((_ is Star!15961) (regTwo!32435 r!7292)))))

(declare-fun b!5913377 () Bool)

(declare-fun c!1050936 () Bool)

(assert (=> b!5913377 (= c!1050936 ((_ is Union!15961) (regTwo!32435 r!7292)))))

(assert (=> b!5913377 (= e!3620916 e!3620913)))

(assert (=> b!5913378 (= e!3620911 call!468647)))

(assert (= (and d!1854996 c!1050934) b!5913370))

(assert (= (and d!1854996 (not c!1050934)) b!5913376))

(assert (= (and b!5913376 res!2479458) b!5913375))

(assert (= (and b!5913375 c!1050933) b!5913368))

(assert (= (and b!5913375 (not c!1050933)) b!5913377))

(assert (= (and b!5913377 c!1050936) b!5913371))

(assert (= (and b!5913377 (not c!1050936)) b!5913374))

(assert (= (and b!5913371 (not res!2479456)) b!5913372))

(assert (= (and b!5913374 c!1050935) b!5913373))

(assert (= (and b!5913374 (not c!1050935)) b!5913369))

(assert (= (and b!5913373 (not res!2479457)) b!5913378))

(assert (= (or b!5913378 b!5913369) bm!468642))

(assert (= (or b!5913370 b!5913373) bm!468641))

(declare-fun m!6812346 () Bool)

(assert (=> b!5913371 m!6812346))

(declare-fun m!6812348 () Bool)

(assert (=> b!5913372 m!6812348))

(assert (=> bm!468641 m!6811976))

(declare-fun m!6812350 () Bool)

(assert (=> bm!468642 m!6812350))

(assert (=> b!5912779 d!1854996))

(declare-fun d!1854998 () Bool)

(declare-fun e!3620922 () Bool)

(assert (=> d!1854998 e!3620922))

(declare-fun res!2479464 () Bool)

(assert (=> d!1854998 (=> (not res!2479464) (not e!3620922))))

(declare-fun lt!2309338 () List!64184)

(declare-fun content!11788 (List!64184) (InoxSet C!32192))

(assert (=> d!1854998 (= res!2479464 (= (content!11788 lt!2309338) ((_ map or) (content!11788 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))) (content!11788 (t!377573 s!2326)))))))

(declare-fun e!3620921 () List!64184)

(assert (=> d!1854998 (= lt!2309338 e!3620921)))

(declare-fun c!1050939 () Bool)

(assert (=> d!1854998 (= c!1050939 ((_ is Nil!64060) (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))))))

(assert (=> d!1854998 (= (++!14060 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326)) lt!2309338)))

(declare-fun b!5913387 () Bool)

(assert (=> b!5913387 (= e!3620921 (t!377573 s!2326))))

(declare-fun b!5913389 () Bool)

(declare-fun res!2479463 () Bool)

(assert (=> b!5913389 (=> (not res!2479463) (not e!3620922))))

(declare-fun size!40132 (List!64184) Int)

(assert (=> b!5913389 (= res!2479463 (= (size!40132 lt!2309338) (+ (size!40132 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))) (size!40132 (t!377573 s!2326)))))))

(declare-fun b!5913388 () Bool)

(assert (=> b!5913388 (= e!3620921 (Cons!64060 (h!70508 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))) (++!14060 (t!377573 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))) (t!377573 s!2326))))))

(declare-fun b!5913390 () Bool)

(assert (=> b!5913390 (= e!3620922 (or (not (= (t!377573 s!2326) Nil!64060)) (= lt!2309338 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)))))))

(assert (= (and d!1854998 c!1050939) b!5913387))

(assert (= (and d!1854998 (not c!1050939)) b!5913388))

(assert (= (and d!1854998 res!2479464) b!5913389))

(assert (= (and b!5913389 res!2479463) b!5913390))

(declare-fun m!6812352 () Bool)

(assert (=> d!1854998 m!6812352))

(assert (=> d!1854998 m!6811840))

(declare-fun m!6812354 () Bool)

(assert (=> d!1854998 m!6812354))

(declare-fun m!6812356 () Bool)

(assert (=> d!1854998 m!6812356))

(declare-fun m!6812358 () Bool)

(assert (=> b!5913389 m!6812358))

(assert (=> b!5913389 m!6811840))

(declare-fun m!6812360 () Bool)

(assert (=> b!5913389 m!6812360))

(declare-fun m!6812362 () Bool)

(assert (=> b!5913389 m!6812362))

(declare-fun m!6812364 () Bool)

(assert (=> b!5913388 m!6812364))

(assert (=> b!5912484 d!1854998))

(declare-fun d!1855000 () Bool)

(declare-fun e!3620924 () Bool)

(assert (=> d!1855000 e!3620924))

(declare-fun res!2479466 () Bool)

(assert (=> d!1855000 (=> (not res!2479466) (not e!3620924))))

(declare-fun lt!2309339 () List!64184)

(assert (=> d!1855000 (= res!2479466 (= (content!11788 lt!2309339) ((_ map or) (content!11788 Nil!64060) (content!11788 (Cons!64060 (h!70508 s!2326) Nil!64060)))))))

(declare-fun e!3620923 () List!64184)

(assert (=> d!1855000 (= lt!2309339 e!3620923)))

(declare-fun c!1050940 () Bool)

(assert (=> d!1855000 (= c!1050940 ((_ is Nil!64060) Nil!64060))))

(assert (=> d!1855000 (= (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) lt!2309339)))

(declare-fun b!5913391 () Bool)

(assert (=> b!5913391 (= e!3620923 (Cons!64060 (h!70508 s!2326) Nil!64060))))

(declare-fun b!5913393 () Bool)

(declare-fun res!2479465 () Bool)

(assert (=> b!5913393 (=> (not res!2479465) (not e!3620924))))

(assert (=> b!5913393 (= res!2479465 (= (size!40132 lt!2309339) (+ (size!40132 Nil!64060) (size!40132 (Cons!64060 (h!70508 s!2326) Nil!64060)))))))

(declare-fun b!5913392 () Bool)

(assert (=> b!5913392 (= e!3620923 (Cons!64060 (h!70508 Nil!64060) (++!14060 (t!377573 Nil!64060) (Cons!64060 (h!70508 s!2326) Nil!64060))))))

(declare-fun b!5913394 () Bool)

(assert (=> b!5913394 (= e!3620924 (or (not (= (Cons!64060 (h!70508 s!2326) Nil!64060) Nil!64060)) (= lt!2309339 Nil!64060)))))

(assert (= (and d!1855000 c!1050940) b!5913391))

(assert (= (and d!1855000 (not c!1050940)) b!5913392))

(assert (= (and d!1855000 res!2479466) b!5913393))

(assert (= (and b!5913393 res!2479465) b!5913394))

(declare-fun m!6812366 () Bool)

(assert (=> d!1855000 m!6812366))

(declare-fun m!6812368 () Bool)

(assert (=> d!1855000 m!6812368))

(declare-fun m!6812370 () Bool)

(assert (=> d!1855000 m!6812370))

(declare-fun m!6812372 () Bool)

(assert (=> b!5913393 m!6812372))

(declare-fun m!6812374 () Bool)

(assert (=> b!5913393 m!6812374))

(declare-fun m!6812376 () Bool)

(assert (=> b!5913393 m!6812376))

(declare-fun m!6812378 () Bool)

(assert (=> b!5913392 m!6812378))

(assert (=> b!5912484 d!1855000))

(declare-fun d!1855002 () Bool)

(assert (=> d!1855002 (= (++!14060 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326)) s!2326)))

(declare-fun lt!2309342 () Unit!157193)

(declare-fun choose!44608 (List!64184 C!32192 List!64184 List!64184) Unit!157193)

(assert (=> d!1855002 (= lt!2309342 (choose!44608 Nil!64060 (h!70508 s!2326) (t!377573 s!2326) s!2326))))

(assert (=> d!1855002 (= (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) (t!377573 s!2326))) s!2326)))

(assert (=> d!1855002 (= (lemmaMoveElementToOtherListKeepsConcatEq!2155 Nil!64060 (h!70508 s!2326) (t!377573 s!2326) s!2326) lt!2309342)))

(declare-fun bs!1400179 () Bool)

(assert (= bs!1400179 d!1855002))

(assert (=> bs!1400179 m!6811840))

(assert (=> bs!1400179 m!6811840))

(assert (=> bs!1400179 m!6811842))

(declare-fun m!6812380 () Bool)

(assert (=> bs!1400179 m!6812380))

(declare-fun m!6812382 () Bool)

(assert (=> bs!1400179 m!6812382))

(assert (=> b!5912484 d!1855002))

(declare-fun d!1855004 () Bool)

(declare-fun e!3620929 () Bool)

(assert (=> d!1855004 e!3620929))

(declare-fun res!2479468 () Bool)

(assert (=> d!1855004 (=> res!2479468 e!3620929)))

(declare-fun e!3620925 () Bool)

(assert (=> d!1855004 (= res!2479468 e!3620925)))

(declare-fun res!2479471 () Bool)

(assert (=> d!1855004 (=> (not res!2479471) (not e!3620925))))

(declare-fun lt!2309343 () Option!15852)

(assert (=> d!1855004 (= res!2479471 (isDefined!12555 lt!2309343))))

(declare-fun e!3620928 () Option!15852)

(assert (=> d!1855004 (= lt!2309343 e!3620928)))

(declare-fun c!1050941 () Bool)

(declare-fun e!3620927 () Bool)

(assert (=> d!1855004 (= c!1050941 e!3620927)))

(declare-fun res!2479467 () Bool)

(assert (=> d!1855004 (=> (not res!2479467) (not e!3620927))))

(assert (=> d!1855004 (= res!2479467 (matchR!8144 (regOne!32434 r!7292) (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060))))))

(assert (=> d!1855004 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1855004 (= (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326) s!2326) lt!2309343)))

(declare-fun b!5913395 () Bool)

(declare-fun e!3620926 () Option!15852)

(assert (=> b!5913395 (= e!3620926 None!15851)))

(declare-fun b!5913396 () Bool)

(assert (=> b!5913396 (= e!3620928 e!3620926)))

(declare-fun c!1050942 () Bool)

(assert (=> b!5913396 (= c!1050942 ((_ is Nil!64060) (t!377573 s!2326)))))

(declare-fun b!5913397 () Bool)

(declare-fun res!2479470 () Bool)

(assert (=> b!5913397 (=> (not res!2479470) (not e!3620925))))

(assert (=> b!5913397 (= res!2479470 (matchR!8144 (regTwo!32434 r!7292) (_2!36243 (get!22056 lt!2309343))))))

(declare-fun b!5913398 () Bool)

(assert (=> b!5913398 (= e!3620929 (not (isDefined!12555 lt!2309343)))))

(declare-fun b!5913399 () Bool)

(assert (=> b!5913399 (= e!3620925 (= (++!14060 (_1!36243 (get!22056 lt!2309343)) (_2!36243 (get!22056 lt!2309343))) s!2326))))

(declare-fun b!5913400 () Bool)

(assert (=> b!5913400 (= e!3620927 (matchR!8144 (regTwo!32434 r!7292) (t!377573 s!2326)))))

(declare-fun b!5913401 () Bool)

(declare-fun lt!2309345 () Unit!157193)

(declare-fun lt!2309344 () Unit!157193)

(assert (=> b!5913401 (= lt!2309345 lt!2309344)))

(assert (=> b!5913401 (= (++!14060 (++!14060 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (Cons!64060 (h!70508 (t!377573 s!2326)) Nil!64060)) (t!377573 (t!377573 s!2326))) s!2326)))

(assert (=> b!5913401 (= lt!2309344 (lemmaMoveElementToOtherListKeepsConcatEq!2155 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (h!70508 (t!377573 s!2326)) (t!377573 (t!377573 s!2326)) s!2326))))

(assert (=> b!5913401 (= e!3620926 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) (++!14060 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (Cons!64060 (h!70508 (t!377573 s!2326)) Nil!64060)) (t!377573 (t!377573 s!2326)) s!2326))))

(declare-fun b!5913402 () Bool)

(assert (=> b!5913402 (= e!3620928 (Some!15851 (tuple2!65881 (++!14060 Nil!64060 (Cons!64060 (h!70508 s!2326) Nil!64060)) (t!377573 s!2326))))))

(declare-fun b!5913403 () Bool)

(declare-fun res!2479469 () Bool)

(assert (=> b!5913403 (=> (not res!2479469) (not e!3620925))))

(assert (=> b!5913403 (= res!2479469 (matchR!8144 (regOne!32434 r!7292) (_1!36243 (get!22056 lt!2309343))))))

(assert (= (and d!1855004 res!2479467) b!5913400))

(assert (= (and d!1855004 c!1050941) b!5913402))

(assert (= (and d!1855004 (not c!1050941)) b!5913396))

(assert (= (and b!5913396 c!1050942) b!5913395))

(assert (= (and b!5913396 (not c!1050942)) b!5913401))

(assert (= (and d!1855004 res!2479471) b!5913403))

(assert (= (and b!5913403 res!2479469) b!5913397))

(assert (= (and b!5913397 res!2479470) b!5913399))

(assert (= (and d!1855004 (not res!2479468)) b!5913398))

(declare-fun m!6812384 () Bool)

(assert (=> b!5913399 m!6812384))

(declare-fun m!6812386 () Bool)

(assert (=> b!5913399 m!6812386))

(assert (=> b!5913401 m!6811840))

(declare-fun m!6812388 () Bool)

(assert (=> b!5913401 m!6812388))

(assert (=> b!5913401 m!6812388))

(declare-fun m!6812390 () Bool)

(assert (=> b!5913401 m!6812390))

(assert (=> b!5913401 m!6811840))

(declare-fun m!6812392 () Bool)

(assert (=> b!5913401 m!6812392))

(assert (=> b!5913401 m!6812388))

(declare-fun m!6812394 () Bool)

(assert (=> b!5913401 m!6812394))

(assert (=> b!5913397 m!6812384))

(declare-fun m!6812396 () Bool)

(assert (=> b!5913397 m!6812396))

(assert (=> b!5913403 m!6812384))

(declare-fun m!6812398 () Bool)

(assert (=> b!5913403 m!6812398))

(declare-fun m!6812400 () Bool)

(assert (=> d!1855004 m!6812400))

(assert (=> d!1855004 m!6811840))

(declare-fun m!6812402 () Bool)

(assert (=> d!1855004 m!6812402))

(assert (=> d!1855004 m!6811856))

(declare-fun m!6812404 () Bool)

(assert (=> b!5913400 m!6812404))

(assert (=> b!5913398 m!6812400))

(assert (=> b!5912484 d!1855004))

(declare-fun d!1855006 () Bool)

(assert (=> d!1855006 (= (isEmpty!35916 (tail!11553 s!2326)) ((_ is Nil!64060) (tail!11553 s!2326)))))

(assert (=> b!5912823 d!1855006))

(declare-fun d!1855008 () Bool)

(assert (=> d!1855008 (= (tail!11553 s!2326) (t!377573 s!2326))))

(assert (=> b!5912823 d!1855008))

(declare-fun d!1855010 () Bool)

(declare-fun lt!2309348 () Bool)

(declare-fun exists!2343 (List!64183 Int) Bool)

(assert (=> d!1855010 (= lt!2309348 (exists!2343 (toList!9745 z!1189) lambda!322495))))

(declare-fun choose!44609 ((InoxSet Context!10690) Int) Bool)

(assert (=> d!1855010 (= lt!2309348 (choose!44609 z!1189 lambda!322495))))

(assert (=> d!1855010 (= (exists!2341 z!1189 lambda!322495) lt!2309348)))

(declare-fun bs!1400180 () Bool)

(assert (= bs!1400180 d!1855010))

(assert (=> bs!1400180 m!6811738))

(assert (=> bs!1400180 m!6811738))

(declare-fun m!6812406 () Bool)

(assert (=> bs!1400180 m!6812406))

(declare-fun m!6812408 () Bool)

(assert (=> bs!1400180 m!6812408))

(assert (=> d!1854748 d!1855010))

(assert (=> bm!468586 d!1854992))

(declare-fun d!1855012 () Bool)

(assert (=> d!1855012 (= (Exists!3031 (ite c!1050826 lambda!322544 lambda!322545)) (choose!44601 (ite c!1050826 lambda!322544 lambda!322545)))))

(declare-fun bs!1400181 () Bool)

(assert (= bs!1400181 d!1855012))

(declare-fun m!6812410 () Bool)

(assert (=> bs!1400181 m!6812410))

(assert (=> bm!468583 d!1855012))

(declare-fun b!5913404 () Bool)

(declare-fun e!3620933 () Bool)

(declare-fun lt!2309349 () Bool)

(declare-fun call!468648 () Bool)

(assert (=> b!5913404 (= e!3620933 (= lt!2309349 call!468648))))

(declare-fun b!5913405 () Bool)

(declare-fun res!2479479 () Bool)

(declare-fun e!3620930 () Bool)

(assert (=> b!5913405 (=> (not res!2479479) (not e!3620930))))

(assert (=> b!5913405 (= res!2479479 (not call!468648))))

(declare-fun b!5913406 () Bool)

(declare-fun e!3620931 () Bool)

(assert (=> b!5913406 (= e!3620931 (not lt!2309349))))

(declare-fun b!5913407 () Bool)

(assert (=> b!5913407 (= e!3620930 (= (head!12468 (_1!36243 (get!22056 lt!2309269))) (c!1050727 (regOne!32434 r!7292))))))

(declare-fun b!5913409 () Bool)

(declare-fun e!3620936 () Bool)

(declare-fun e!3620932 () Bool)

(assert (=> b!5913409 (= e!3620936 e!3620932)))

(declare-fun res!2479472 () Bool)

(assert (=> b!5913409 (=> res!2479472 e!3620932)))

(assert (=> b!5913409 (= res!2479472 call!468648)))

(declare-fun b!5913410 () Bool)

(declare-fun res!2479476 () Bool)

(assert (=> b!5913410 (=> res!2479476 e!3620932)))

(assert (=> b!5913410 (= res!2479476 (not (isEmpty!35916 (tail!11553 (_1!36243 (get!22056 lt!2309269))))))))

(declare-fun b!5913411 () Bool)

(assert (=> b!5913411 (= e!3620933 e!3620931)))

(declare-fun c!1050943 () Bool)

(assert (=> b!5913411 (= c!1050943 ((_ is EmptyLang!15961) (regOne!32434 r!7292)))))

(declare-fun b!5913412 () Bool)

(declare-fun e!3620934 () Bool)

(assert (=> b!5913412 (= e!3620934 e!3620936)))

(declare-fun res!2479477 () Bool)

(assert (=> b!5913412 (=> (not res!2479477) (not e!3620936))))

(assert (=> b!5913412 (= res!2479477 (not lt!2309349))))

(declare-fun b!5913413 () Bool)

(declare-fun res!2479478 () Bool)

(assert (=> b!5913413 (=> (not res!2479478) (not e!3620930))))

(assert (=> b!5913413 (= res!2479478 (isEmpty!35916 (tail!11553 (_1!36243 (get!22056 lt!2309269)))))))

(declare-fun b!5913414 () Bool)

(assert (=> b!5913414 (= e!3620932 (not (= (head!12468 (_1!36243 (get!22056 lt!2309269))) (c!1050727 (regOne!32434 r!7292)))))))

(declare-fun bm!468643 () Bool)

(assert (=> bm!468643 (= call!468648 (isEmpty!35916 (_1!36243 (get!22056 lt!2309269))))))

(declare-fun b!5913415 () Bool)

(declare-fun res!2479473 () Bool)

(assert (=> b!5913415 (=> res!2479473 e!3620934)))

(assert (=> b!5913415 (= res!2479473 e!3620930)))

(declare-fun res!2479474 () Bool)

(assert (=> b!5913415 (=> (not res!2479474) (not e!3620930))))

(assert (=> b!5913415 (= res!2479474 lt!2309349)))

(declare-fun b!5913416 () Bool)

(declare-fun e!3620935 () Bool)

(assert (=> b!5913416 (= e!3620935 (nullable!5956 (regOne!32434 r!7292)))))

(declare-fun b!5913417 () Bool)

(assert (=> b!5913417 (= e!3620935 (matchR!8144 (derivativeStep!4694 (regOne!32434 r!7292) (head!12468 (_1!36243 (get!22056 lt!2309269)))) (tail!11553 (_1!36243 (get!22056 lt!2309269)))))))

(declare-fun b!5913408 () Bool)

(declare-fun res!2479475 () Bool)

(assert (=> b!5913408 (=> res!2479475 e!3620934)))

(assert (=> b!5913408 (= res!2479475 (not ((_ is ElementMatch!15961) (regOne!32434 r!7292))))))

(assert (=> b!5913408 (= e!3620931 e!3620934)))

(declare-fun d!1855014 () Bool)

(assert (=> d!1855014 e!3620933))

(declare-fun c!1050945 () Bool)

(assert (=> d!1855014 (= c!1050945 ((_ is EmptyExpr!15961) (regOne!32434 r!7292)))))

(assert (=> d!1855014 (= lt!2309349 e!3620935)))

(declare-fun c!1050944 () Bool)

(assert (=> d!1855014 (= c!1050944 (isEmpty!35916 (_1!36243 (get!22056 lt!2309269))))))

(assert (=> d!1855014 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1855014 (= (matchR!8144 (regOne!32434 r!7292) (_1!36243 (get!22056 lt!2309269))) lt!2309349)))

(assert (= (and d!1855014 c!1050944) b!5913416))

(assert (= (and d!1855014 (not c!1050944)) b!5913417))

(assert (= (and d!1855014 c!1050945) b!5913404))

(assert (= (and d!1855014 (not c!1050945)) b!5913411))

(assert (= (and b!5913411 c!1050943) b!5913406))

(assert (= (and b!5913411 (not c!1050943)) b!5913408))

(assert (= (and b!5913408 (not res!2479475)) b!5913415))

(assert (= (and b!5913415 res!2479474) b!5913405))

(assert (= (and b!5913405 res!2479479) b!5913413))

(assert (= (and b!5913413 res!2479478) b!5913407))

(assert (= (and b!5913415 (not res!2479473)) b!5913412))

(assert (= (and b!5913412 res!2479477) b!5913409))

(assert (= (and b!5913409 (not res!2479472)) b!5913410))

(assert (= (and b!5913410 (not res!2479476)) b!5913414))

(assert (= (or b!5913404 b!5913405 b!5913409) bm!468643))

(declare-fun m!6812412 () Bool)

(assert (=> b!5913410 m!6812412))

(assert (=> b!5913410 m!6812412))

(declare-fun m!6812414 () Bool)

(assert (=> b!5913410 m!6812414))

(declare-fun m!6812416 () Bool)

(assert (=> b!5913407 m!6812416))

(assert (=> b!5913414 m!6812416))

(declare-fun m!6812418 () Bool)

(assert (=> bm!468643 m!6812418))

(assert (=> b!5913417 m!6812416))

(assert (=> b!5913417 m!6812416))

(declare-fun m!6812420 () Bool)

(assert (=> b!5913417 m!6812420))

(assert (=> b!5913417 m!6812412))

(assert (=> b!5913417 m!6812420))

(assert (=> b!5913417 m!6812412))

(declare-fun m!6812422 () Bool)

(assert (=> b!5913417 m!6812422))

(assert (=> b!5913413 m!6812412))

(assert (=> b!5913413 m!6812412))

(assert (=> b!5913413 m!6812414))

(assert (=> d!1855014 m!6812418))

(assert (=> d!1855014 m!6811856))

(declare-fun m!6812424 () Bool)

(assert (=> b!5913416 m!6812424))

(assert (=> b!5912486 d!1855014))

(declare-fun d!1855016 () Bool)

(assert (=> d!1855016 (= (get!22056 lt!2309269) (v!51945 lt!2309269))))

(assert (=> b!5912486 d!1855016))

(declare-fun b!5913418 () Bool)

(declare-fun e!3620940 () Bool)

(declare-fun e!3620943 () Bool)

(assert (=> b!5913418 (= e!3620940 e!3620943)))

(declare-fun res!2479481 () Bool)

(assert (=> b!5913418 (=> (not res!2479481) (not e!3620943))))

(declare-fun call!468650 () Bool)

(assert (=> b!5913418 (= res!2479481 call!468650)))

(declare-fun d!1855018 () Bool)

(declare-fun res!2479482 () Bool)

(declare-fun e!3620938 () Bool)

(assert (=> d!1855018 (=> res!2479482 e!3620938)))

(assert (=> d!1855018 (= res!2479482 ((_ is ElementMatch!15961) (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))

(assert (=> d!1855018 (= (validRegex!7697 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))) e!3620938)))

(declare-fun b!5913419 () Bool)

(declare-fun e!3620942 () Bool)

(declare-fun e!3620941 () Bool)

(assert (=> b!5913419 (= e!3620942 e!3620941)))

(declare-fun res!2479484 () Bool)

(assert (=> b!5913419 (= res!2479484 (not (nullable!5956 (reg!16290 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))))

(assert (=> b!5913419 (=> (not res!2479484) (not e!3620941))))

(declare-fun b!5913420 () Bool)

(declare-fun e!3620939 () Bool)

(declare-fun call!468651 () Bool)

(assert (=> b!5913420 (= e!3620939 call!468651)))

(declare-fun c!1050947 () Bool)

(declare-fun c!1050946 () Bool)

(declare-fun call!468649 () Bool)

(declare-fun bm!468644 () Bool)

(assert (=> bm!468644 (= call!468649 (validRegex!7697 (ite c!1050947 (reg!16290 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))) (ite c!1050946 (regOne!32435 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))) (regOne!32434 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292)))))))))

(declare-fun b!5913421 () Bool)

(declare-fun res!2479483 () Bool)

(assert (=> b!5913421 (=> res!2479483 e!3620940)))

(assert (=> b!5913421 (= res!2479483 (not ((_ is Concat!24806) (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292)))))))

(declare-fun e!3620937 () Bool)

(assert (=> b!5913421 (= e!3620937 e!3620940)))

(declare-fun b!5913422 () Bool)

(declare-fun res!2479480 () Bool)

(assert (=> b!5913422 (=> (not res!2479480) (not e!3620939))))

(assert (=> b!5913422 (= res!2479480 call!468650)))

(assert (=> b!5913422 (= e!3620937 e!3620939)))

(declare-fun b!5913423 () Bool)

(assert (=> b!5913423 (= e!3620938 e!3620942)))

(assert (=> b!5913423 (= c!1050947 ((_ is Star!15961) (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))

(declare-fun b!5913424 () Bool)

(assert (=> b!5913424 (= e!3620942 e!3620937)))

(assert (=> b!5913424 (= c!1050946 ((_ is Union!15961) (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))

(declare-fun bm!468645 () Bool)

(assert (=> bm!468645 (= call!468650 call!468649)))

(declare-fun b!5913425 () Bool)

(assert (=> b!5913425 (= e!3620943 call!468651)))

(declare-fun b!5913426 () Bool)

(assert (=> b!5913426 (= e!3620941 call!468649)))

(declare-fun bm!468646 () Bool)

(assert (=> bm!468646 (= call!468651 (validRegex!7697 (ite c!1050946 (regTwo!32435 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))) (regTwo!32434 (ite c!1050841 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))))

(assert (= (and d!1855018 (not res!2479482)) b!5913423))

(assert (= (and b!5913423 c!1050947) b!5913419))

(assert (= (and b!5913423 (not c!1050947)) b!5913424))

(assert (= (and b!5913419 res!2479484) b!5913426))

(assert (= (and b!5913424 c!1050946) b!5913422))

(assert (= (and b!5913424 (not c!1050946)) b!5913421))

(assert (= (and b!5913422 res!2479480) b!5913420))

(assert (= (and b!5913421 (not res!2479483)) b!5913418))

(assert (= (and b!5913418 res!2479481) b!5913425))

(assert (= (or b!5913420 b!5913425) bm!468646))

(assert (= (or b!5913422 b!5913418) bm!468645))

(assert (= (or b!5913426 bm!468645) bm!468644))

(declare-fun m!6812426 () Bool)

(assert (=> b!5913419 m!6812426))

(declare-fun m!6812428 () Bool)

(assert (=> bm!468644 m!6812428))

(declare-fun m!6812430 () Bool)

(assert (=> bm!468646 m!6812430))

(assert (=> bm!468595 d!1855018))

(assert (=> b!5912826 d!1854752))

(declare-fun d!1855020 () Bool)

(declare-fun res!2479485 () Bool)

(declare-fun e!3620944 () Bool)

(assert (=> d!1855020 (=> res!2479485 e!3620944)))

(assert (=> d!1855020 (= res!2479485 ((_ is Nil!64058) (exprs!5845 (h!70507 zl!343))))))

(assert (=> d!1855020 (= (forall!15046 (exprs!5845 (h!70507 zl!343)) lambda!322539) e!3620944)))

(declare-fun b!5913427 () Bool)

(declare-fun e!3620945 () Bool)

(assert (=> b!5913427 (= e!3620944 e!3620945)))

(declare-fun res!2479486 () Bool)

(assert (=> b!5913427 (=> (not res!2479486) (not e!3620945))))

(assert (=> b!5913427 (= res!2479486 (dynLambda!25050 lambda!322539 (h!70506 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5913428 () Bool)

(assert (=> b!5913428 (= e!3620945 (forall!15046 (t!377571 (exprs!5845 (h!70507 zl!343))) lambda!322539))))

(assert (= (and d!1855020 (not res!2479485)) b!5913427))

(assert (= (and b!5913427 res!2479486) b!5913428))

(declare-fun b_lambda!222197 () Bool)

(assert (=> (not b_lambda!222197) (not b!5913427)))

(declare-fun m!6812432 () Bool)

(assert (=> b!5913427 m!6812432))

(declare-fun m!6812434 () Bool)

(assert (=> b!5913428 m!6812434))

(assert (=> d!1854810 d!1855020))

(declare-fun bs!1400182 () Bool)

(declare-fun d!1855022 () Bool)

(assert (= bs!1400182 (and d!1855022 d!1854808)))

(declare-fun lambda!322572 () Int)

(assert (=> bs!1400182 (= lambda!322572 lambda!322538)))

(declare-fun bs!1400183 () Bool)

(assert (= bs!1400183 (and d!1855022 d!1854806)))

(assert (=> bs!1400183 (= lambda!322572 lambda!322535)))

(declare-fun bs!1400184 () Bool)

(assert (= bs!1400184 (and d!1855022 d!1854802)))

(assert (=> bs!1400184 (= lambda!322572 lambda!322532)))

(declare-fun bs!1400185 () Bool)

(assert (= bs!1400185 (and d!1855022 d!1854824)))

(assert (=> bs!1400185 (= lambda!322572 lambda!322548)))

(declare-fun bs!1400186 () Bool)

(assert (= bs!1400186 (and d!1855022 d!1854810)))

(assert (=> bs!1400186 (= lambda!322572 lambda!322539)))

(declare-fun b!5913429 () Bool)

(declare-fun e!3620949 () Regex!15961)

(declare-fun e!3620947 () Regex!15961)

(assert (=> b!5913429 (= e!3620949 e!3620947)))

(declare-fun c!1050950 () Bool)

(assert (=> b!5913429 (= c!1050950 ((_ is Cons!64058) (t!377571 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5913430 () Bool)

(assert (=> b!5913430 (= e!3620947 EmptyLang!15961)))

(declare-fun b!5913431 () Bool)

(assert (=> b!5913431 (= e!3620947 (Union!15961 (h!70506 (t!377571 (unfocusZipperList!1382 zl!343))) (generalisedUnion!1805 (t!377571 (t!377571 (unfocusZipperList!1382 zl!343))))))))

(declare-fun b!5913433 () Bool)

(assert (=> b!5913433 (= e!3620949 (h!70506 (t!377571 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5913434 () Bool)

(declare-fun e!3620950 () Bool)

(declare-fun lt!2309350 () Regex!15961)

(assert (=> b!5913434 (= e!3620950 (isUnion!830 lt!2309350))))

(declare-fun b!5913435 () Bool)

(declare-fun e!3620948 () Bool)

(assert (=> b!5913435 (= e!3620948 (isEmptyLang!1400 lt!2309350))))

(declare-fun e!3620951 () Bool)

(assert (=> d!1855022 e!3620951))

(declare-fun res!2479487 () Bool)

(assert (=> d!1855022 (=> (not res!2479487) (not e!3620951))))

(assert (=> d!1855022 (= res!2479487 (validRegex!7697 lt!2309350))))

(assert (=> d!1855022 (= lt!2309350 e!3620949)))

(declare-fun c!1050948 () Bool)

(declare-fun e!3620946 () Bool)

(assert (=> d!1855022 (= c!1050948 e!3620946)))

(declare-fun res!2479488 () Bool)

(assert (=> d!1855022 (=> (not res!2479488) (not e!3620946))))

(assert (=> d!1855022 (= res!2479488 ((_ is Cons!64058) (t!377571 (unfocusZipperList!1382 zl!343))))))

(assert (=> d!1855022 (forall!15046 (t!377571 (unfocusZipperList!1382 zl!343)) lambda!322572)))

(assert (=> d!1855022 (= (generalisedUnion!1805 (t!377571 (unfocusZipperList!1382 zl!343))) lt!2309350)))

(declare-fun b!5913432 () Bool)

(assert (=> b!5913432 (= e!3620946 (isEmpty!35915 (t!377571 (t!377571 (unfocusZipperList!1382 zl!343)))))))

(declare-fun b!5913436 () Bool)

(assert (=> b!5913436 (= e!3620948 e!3620950)))

(declare-fun c!1050951 () Bool)

(assert (=> b!5913436 (= c!1050951 (isEmpty!35915 (tail!11552 (t!377571 (unfocusZipperList!1382 zl!343)))))))

(declare-fun b!5913437 () Bool)

(assert (=> b!5913437 (= e!3620950 (= lt!2309350 (head!12467 (t!377571 (unfocusZipperList!1382 zl!343)))))))

(declare-fun b!5913438 () Bool)

(assert (=> b!5913438 (= e!3620951 e!3620948)))

(declare-fun c!1050949 () Bool)

(assert (=> b!5913438 (= c!1050949 (isEmpty!35915 (t!377571 (unfocusZipperList!1382 zl!343))))))

(assert (= (and d!1855022 res!2479488) b!5913432))

(assert (= (and d!1855022 c!1050948) b!5913433))

(assert (= (and d!1855022 (not c!1050948)) b!5913429))

(assert (= (and b!5913429 c!1050950) b!5913431))

(assert (= (and b!5913429 (not c!1050950)) b!5913430))

(assert (= (and d!1855022 res!2479487) b!5913438))

(assert (= (and b!5913438 c!1050949) b!5913435))

(assert (= (and b!5913438 (not c!1050949)) b!5913436))

(assert (= (and b!5913436 c!1050951) b!5913437))

(assert (= (and b!5913436 (not c!1050951)) b!5913434))

(declare-fun m!6812436 () Bool)

(assert (=> b!5913435 m!6812436))

(declare-fun m!6812438 () Bool)

(assert (=> b!5913431 m!6812438))

(declare-fun m!6812440 () Bool)

(assert (=> d!1855022 m!6812440))

(declare-fun m!6812442 () Bool)

(assert (=> d!1855022 m!6812442))

(declare-fun m!6812444 () Bool)

(assert (=> b!5913434 m!6812444))

(assert (=> b!5913438 m!6811958))

(declare-fun m!6812446 () Bool)

(assert (=> b!5913432 m!6812446))

(declare-fun m!6812448 () Bool)

(assert (=> b!5913436 m!6812448))

(assert (=> b!5913436 m!6812448))

(declare-fun m!6812450 () Bool)

(assert (=> b!5913436 m!6812450))

(declare-fun m!6812452 () Bool)

(assert (=> b!5913437 m!6812452))

(assert (=> b!5912729 d!1855022))

(declare-fun d!1855024 () Bool)

(assert (=> d!1855024 (= (head!12467 (exprs!5845 (h!70507 zl!343))) (h!70506 (exprs!5845 (h!70507 zl!343))))))

(assert (=> b!5912880 d!1855024))

(declare-fun b!5913453 () Bool)

(declare-fun e!3620965 () Bool)

(declare-fun e!3620967 () Bool)

(assert (=> b!5913453 (= e!3620965 e!3620967)))

(declare-fun res!2479501 () Bool)

(assert (=> b!5913453 (=> (not res!2479501) (not e!3620967))))

(assert (=> b!5913453 (= res!2479501 (and (not ((_ is EmptyLang!15961) r!7292)) (not ((_ is ElementMatch!15961) r!7292))))))

(declare-fun d!1855026 () Bool)

(declare-fun res!2479500 () Bool)

(assert (=> d!1855026 (=> res!2479500 e!3620965)))

(assert (=> d!1855026 (= res!2479500 ((_ is EmptyExpr!15961) r!7292))))

(assert (=> d!1855026 (= (nullableFct!1932 r!7292) e!3620965)))

(declare-fun b!5913454 () Bool)

(declare-fun e!3620964 () Bool)

(assert (=> b!5913454 (= e!3620967 e!3620964)))

(declare-fun res!2479503 () Bool)

(assert (=> b!5913454 (=> res!2479503 e!3620964)))

(assert (=> b!5913454 (= res!2479503 ((_ is Star!15961) r!7292))))

(declare-fun b!5913455 () Bool)

(declare-fun e!3620968 () Bool)

(declare-fun e!3620966 () Bool)

(assert (=> b!5913455 (= e!3620968 e!3620966)))

(declare-fun res!2479502 () Bool)

(declare-fun call!468656 () Bool)

(assert (=> b!5913455 (= res!2479502 call!468656)))

(assert (=> b!5913455 (=> res!2479502 e!3620966)))

(declare-fun b!5913456 () Bool)

(declare-fun e!3620969 () Bool)

(assert (=> b!5913456 (= e!3620968 e!3620969)))

(declare-fun res!2479499 () Bool)

(assert (=> b!5913456 (= res!2479499 call!468656)))

(assert (=> b!5913456 (=> (not res!2479499) (not e!3620969))))

(declare-fun bm!468651 () Bool)

(declare-fun c!1050954 () Bool)

(assert (=> bm!468651 (= call!468656 (nullable!5956 (ite c!1050954 (regOne!32435 r!7292) (regOne!32434 r!7292))))))

(declare-fun bm!468652 () Bool)

(declare-fun call!468657 () Bool)

(assert (=> bm!468652 (= call!468657 (nullable!5956 (ite c!1050954 (regTwo!32435 r!7292) (regTwo!32434 r!7292))))))

(declare-fun b!5913457 () Bool)

(assert (=> b!5913457 (= e!3620969 call!468657)))

(declare-fun b!5913458 () Bool)

(assert (=> b!5913458 (= e!3620966 call!468657)))

(declare-fun b!5913459 () Bool)

(assert (=> b!5913459 (= e!3620964 e!3620968)))

(assert (=> b!5913459 (= c!1050954 ((_ is Union!15961) r!7292))))

(assert (= (and d!1855026 (not res!2479500)) b!5913453))

(assert (= (and b!5913453 res!2479501) b!5913454))

(assert (= (and b!5913454 (not res!2479503)) b!5913459))

(assert (= (and b!5913459 c!1050954) b!5913455))

(assert (= (and b!5913459 (not c!1050954)) b!5913456))

(assert (= (and b!5913455 (not res!2479502)) b!5913458))

(assert (= (and b!5913456 res!2479499) b!5913457))

(assert (= (or b!5913458 b!5913457) bm!468652))

(assert (= (or b!5913455 b!5913456) bm!468651))

(declare-fun m!6812454 () Bool)

(assert (=> bm!468651 m!6812454))

(declare-fun m!6812456 () Bool)

(assert (=> bm!468652 m!6812456))

(assert (=> d!1854752 d!1855026))

(declare-fun b!5913460 () Bool)

(declare-fun e!3620973 () Bool)

(declare-fun e!3620976 () Bool)

(assert (=> b!5913460 (= e!3620973 e!3620976)))

(declare-fun res!2479505 () Bool)

(assert (=> b!5913460 (=> (not res!2479505) (not e!3620976))))

(declare-fun call!468659 () Bool)

(assert (=> b!5913460 (= res!2479505 call!468659)))

(declare-fun d!1855028 () Bool)

(declare-fun res!2479506 () Bool)

(declare-fun e!3620971 () Bool)

(assert (=> d!1855028 (=> res!2479506 e!3620971)))

(assert (=> d!1855028 (= res!2479506 ((_ is ElementMatch!15961) lt!2309307))))

(assert (=> d!1855028 (= (validRegex!7697 lt!2309307) e!3620971)))

(declare-fun b!5913461 () Bool)

(declare-fun e!3620975 () Bool)

(declare-fun e!3620974 () Bool)

(assert (=> b!5913461 (= e!3620975 e!3620974)))

(declare-fun res!2479508 () Bool)

(assert (=> b!5913461 (= res!2479508 (not (nullable!5956 (reg!16290 lt!2309307))))))

(assert (=> b!5913461 (=> (not res!2479508) (not e!3620974))))

(declare-fun b!5913462 () Bool)

(declare-fun e!3620972 () Bool)

(declare-fun call!468660 () Bool)

(assert (=> b!5913462 (= e!3620972 call!468660)))

(declare-fun call!468658 () Bool)

(declare-fun c!1050955 () Bool)

(declare-fun c!1050956 () Bool)

(declare-fun bm!468653 () Bool)

(assert (=> bm!468653 (= call!468658 (validRegex!7697 (ite c!1050956 (reg!16290 lt!2309307) (ite c!1050955 (regOne!32435 lt!2309307) (regOne!32434 lt!2309307)))))))

(declare-fun b!5913463 () Bool)

(declare-fun res!2479507 () Bool)

(assert (=> b!5913463 (=> res!2479507 e!3620973)))

(assert (=> b!5913463 (= res!2479507 (not ((_ is Concat!24806) lt!2309307)))))

(declare-fun e!3620970 () Bool)

(assert (=> b!5913463 (= e!3620970 e!3620973)))

(declare-fun b!5913464 () Bool)

(declare-fun res!2479504 () Bool)

(assert (=> b!5913464 (=> (not res!2479504) (not e!3620972))))

(assert (=> b!5913464 (= res!2479504 call!468659)))

(assert (=> b!5913464 (= e!3620970 e!3620972)))

(declare-fun b!5913465 () Bool)

(assert (=> b!5913465 (= e!3620971 e!3620975)))

(assert (=> b!5913465 (= c!1050956 ((_ is Star!15961) lt!2309307))))

(declare-fun b!5913466 () Bool)

(assert (=> b!5913466 (= e!3620975 e!3620970)))

(assert (=> b!5913466 (= c!1050955 ((_ is Union!15961) lt!2309307))))

(declare-fun bm!468654 () Bool)

(assert (=> bm!468654 (= call!468659 call!468658)))

(declare-fun b!5913467 () Bool)

(assert (=> b!5913467 (= e!3620976 call!468660)))

(declare-fun b!5913468 () Bool)

(assert (=> b!5913468 (= e!3620974 call!468658)))

(declare-fun bm!468655 () Bool)

(assert (=> bm!468655 (= call!468660 (validRegex!7697 (ite c!1050955 (regTwo!32435 lt!2309307) (regTwo!32434 lt!2309307))))))

(assert (= (and d!1855028 (not res!2479506)) b!5913465))

(assert (= (and b!5913465 c!1050956) b!5913461))

(assert (= (and b!5913465 (not c!1050956)) b!5913466))

(assert (= (and b!5913461 res!2479508) b!5913468))

(assert (= (and b!5913466 c!1050955) b!5913464))

(assert (= (and b!5913466 (not c!1050955)) b!5913463))

(assert (= (and b!5913464 res!2479504) b!5913462))

(assert (= (and b!5913463 (not res!2479507)) b!5913460))

(assert (= (and b!5913460 res!2479505) b!5913467))

(assert (= (or b!5913462 b!5913467) bm!468655))

(assert (= (or b!5913464 b!5913460) bm!468654))

(assert (= (or b!5913468 bm!468654) bm!468653))

(declare-fun m!6812458 () Bool)

(assert (=> b!5913461 m!6812458))

(declare-fun m!6812460 () Bool)

(assert (=> bm!468653 m!6812460))

(declare-fun m!6812462 () Bool)

(assert (=> bm!468655 m!6812462))

(assert (=> d!1854818 d!1855028))

(assert (=> d!1854818 d!1854806))

(assert (=> d!1854818 d!1854808))

(declare-fun d!1855030 () Bool)

(assert (=> d!1855030 (= (isEmptyExpr!1391 lt!2309310) ((_ is EmptyExpr!15961) lt!2309310))))

(assert (=> b!5912881 d!1855030))

(declare-fun d!1855032 () Bool)

(assert (=> d!1855032 (= (Exists!3031 lambda!322528) (choose!44601 lambda!322528))))

(declare-fun bs!1400187 () Bool)

(assert (= bs!1400187 d!1855032))

(declare-fun m!6812464 () Bool)

(assert (=> bs!1400187 m!6812464))

(assert (=> d!1854786 d!1855032))

(declare-fun d!1855034 () Bool)

(assert (=> d!1855034 (= (Exists!3031 lambda!322529) (choose!44601 lambda!322529))))

(declare-fun bs!1400188 () Bool)

(assert (= bs!1400188 d!1855034))

(declare-fun m!6812466 () Bool)

(assert (=> bs!1400188 m!6812466))

(assert (=> d!1854786 d!1855034))

(declare-fun bs!1400189 () Bool)

(declare-fun d!1855036 () Bool)

(assert (= bs!1400189 (and d!1855036 b!5912776)))

(declare-fun lambda!322577 () Int)

(assert (=> bs!1400189 (not (= lambda!322577 lambda!322545))))

(declare-fun bs!1400190 () Bool)

(assert (= bs!1400190 (and d!1855036 b!5912785)))

(assert (=> bs!1400190 (not (= lambda!322577 lambda!322544))))

(declare-fun bs!1400191 () Bool)

(assert (= bs!1400191 (and d!1855036 b!5913378)))

(assert (=> bs!1400191 (not (= lambda!322577 lambda!322570))))

(declare-fun bs!1400192 () Bool)

(assert (= bs!1400192 (and d!1855036 b!5913369)))

(assert (=> bs!1400192 (not (= lambda!322577 lambda!322571))))

(declare-fun bs!1400193 () Bool)

(assert (= bs!1400193 (and d!1855036 d!1854782)))

(assert (=> bs!1400193 (= lambda!322577 lambda!322519)))

(declare-fun bs!1400194 () Bool)

(assert (= bs!1400194 (and d!1855036 d!1854786)))

(assert (=> bs!1400194 (= lambda!322577 lambda!322528)))

(declare-fun bs!1400195 () Bool)

(assert (= bs!1400195 (and d!1855036 b!5912371)))

(assert (=> bs!1400195 (= lambda!322577 lambda!322485)))

(assert (=> bs!1400195 (not (= lambda!322577 lambda!322486))))

(assert (=> bs!1400194 (not (= lambda!322577 lambda!322529))))

(assert (=> d!1855036 true))

(assert (=> d!1855036 true))

(assert (=> d!1855036 true))

(declare-fun lambda!322578 () Int)

(assert (=> bs!1400189 (= lambda!322578 lambda!322545)))

(assert (=> bs!1400190 (not (= lambda!322578 lambda!322544))))

(assert (=> bs!1400191 (not (= lambda!322578 lambda!322570))))

(assert (=> bs!1400193 (not (= lambda!322578 lambda!322519))))

(assert (=> bs!1400194 (not (= lambda!322578 lambda!322528))))

(assert (=> bs!1400195 (not (= lambda!322578 lambda!322485))))

(assert (=> bs!1400195 (= lambda!322578 lambda!322486)))

(assert (=> bs!1400194 (= lambda!322578 lambda!322529)))

(declare-fun bs!1400196 () Bool)

(assert (= bs!1400196 d!1855036))

(assert (=> bs!1400196 (not (= lambda!322578 lambda!322577))))

(assert (=> bs!1400192 (= (and (= (regOne!32434 r!7292) (regOne!32434 (regTwo!32435 r!7292))) (= (regTwo!32434 r!7292) (regTwo!32434 (regTwo!32435 r!7292)))) (= lambda!322578 lambda!322571))))

(assert (=> d!1855036 true))

(assert (=> d!1855036 true))

(assert (=> d!1855036 true))

(assert (=> d!1855036 (= (Exists!3031 lambda!322577) (Exists!3031 lambda!322578))))

(assert (=> d!1855036 true))

(declare-fun _$90!1572 () Unit!157193)

(assert (=> d!1855036 (= (choose!44603 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326) _$90!1572)))

(declare-fun m!6812468 () Bool)

(assert (=> bs!1400196 m!6812468))

(declare-fun m!6812470 () Bool)

(assert (=> bs!1400196 m!6812470))

(assert (=> d!1854786 d!1855036))

(declare-fun b!5913477 () Bool)

(declare-fun e!3620984 () Bool)

(declare-fun e!3620987 () Bool)

(assert (=> b!5913477 (= e!3620984 e!3620987)))

(declare-fun res!2479518 () Bool)

(assert (=> b!5913477 (=> (not res!2479518) (not e!3620987))))

(declare-fun call!468662 () Bool)

(assert (=> b!5913477 (= res!2479518 call!468662)))

(declare-fun d!1855038 () Bool)

(declare-fun res!2479519 () Bool)

(declare-fun e!3620982 () Bool)

(assert (=> d!1855038 (=> res!2479519 e!3620982)))

(assert (=> d!1855038 (= res!2479519 ((_ is ElementMatch!15961) (regOne!32434 r!7292)))))

(assert (=> d!1855038 (= (validRegex!7697 (regOne!32434 r!7292)) e!3620982)))

(declare-fun b!5913478 () Bool)

(declare-fun e!3620986 () Bool)

(declare-fun e!3620985 () Bool)

(assert (=> b!5913478 (= e!3620986 e!3620985)))

(declare-fun res!2479521 () Bool)

(assert (=> b!5913478 (= res!2479521 (not (nullable!5956 (reg!16290 (regOne!32434 r!7292)))))))

(assert (=> b!5913478 (=> (not res!2479521) (not e!3620985))))

(declare-fun b!5913479 () Bool)

(declare-fun e!3620983 () Bool)

(declare-fun call!468663 () Bool)

(assert (=> b!5913479 (= e!3620983 call!468663)))

(declare-fun call!468661 () Bool)

(declare-fun c!1050958 () Bool)

(declare-fun bm!468656 () Bool)

(declare-fun c!1050957 () Bool)

(assert (=> bm!468656 (= call!468661 (validRegex!7697 (ite c!1050958 (reg!16290 (regOne!32434 r!7292)) (ite c!1050957 (regOne!32435 (regOne!32434 r!7292)) (regOne!32434 (regOne!32434 r!7292))))))))

(declare-fun b!5913480 () Bool)

(declare-fun res!2479520 () Bool)

(assert (=> b!5913480 (=> res!2479520 e!3620984)))

(assert (=> b!5913480 (= res!2479520 (not ((_ is Concat!24806) (regOne!32434 r!7292))))))

(declare-fun e!3620981 () Bool)

(assert (=> b!5913480 (= e!3620981 e!3620984)))

(declare-fun b!5913481 () Bool)

(declare-fun res!2479517 () Bool)

(assert (=> b!5913481 (=> (not res!2479517) (not e!3620983))))

(assert (=> b!5913481 (= res!2479517 call!468662)))

(assert (=> b!5913481 (= e!3620981 e!3620983)))

(declare-fun b!5913482 () Bool)

(assert (=> b!5913482 (= e!3620982 e!3620986)))

(assert (=> b!5913482 (= c!1050958 ((_ is Star!15961) (regOne!32434 r!7292)))))

(declare-fun b!5913483 () Bool)

(assert (=> b!5913483 (= e!3620986 e!3620981)))

(assert (=> b!5913483 (= c!1050957 ((_ is Union!15961) (regOne!32434 r!7292)))))

(declare-fun bm!468657 () Bool)

(assert (=> bm!468657 (= call!468662 call!468661)))

(declare-fun b!5913484 () Bool)

(assert (=> b!5913484 (= e!3620987 call!468663)))

(declare-fun b!5913485 () Bool)

(assert (=> b!5913485 (= e!3620985 call!468661)))

(declare-fun bm!468658 () Bool)

(assert (=> bm!468658 (= call!468663 (validRegex!7697 (ite c!1050957 (regTwo!32435 (regOne!32434 r!7292)) (regTwo!32434 (regOne!32434 r!7292)))))))

(assert (= (and d!1855038 (not res!2479519)) b!5913482))

(assert (= (and b!5913482 c!1050958) b!5913478))

(assert (= (and b!5913482 (not c!1050958)) b!5913483))

(assert (= (and b!5913478 res!2479521) b!5913485))

(assert (= (and b!5913483 c!1050957) b!5913481))

(assert (= (and b!5913483 (not c!1050957)) b!5913480))

(assert (= (and b!5913481 res!2479517) b!5913479))

(assert (= (and b!5913480 (not res!2479520)) b!5913477))

(assert (= (and b!5913477 res!2479518) b!5913484))

(assert (= (or b!5913479 b!5913484) bm!468658))

(assert (= (or b!5913481 b!5913477) bm!468657))

(assert (= (or b!5913485 bm!468657) bm!468656))

(declare-fun m!6812472 () Bool)

(assert (=> b!5913478 m!6812472))

(declare-fun m!6812474 () Bool)

(assert (=> bm!468656 m!6812474))

(declare-fun m!6812476 () Bool)

(assert (=> bm!468658 m!6812476))

(assert (=> d!1854786 d!1855038))

(declare-fun d!1855040 () Bool)

(declare-fun c!1050961 () Bool)

(assert (=> d!1855040 (= c!1050961 ((_ is Nil!64059) lt!2309292))))

(declare-fun e!3620990 () (InoxSet Context!10690))

(assert (=> d!1855040 (= (content!11786 lt!2309292) e!3620990)))

(declare-fun b!5913490 () Bool)

(assert (=> b!5913490 (= e!3620990 ((as const (Array Context!10690 Bool)) false))))

(declare-fun b!5913491 () Bool)

(assert (=> b!5913491 (= e!3620990 ((_ map or) (store ((as const (Array Context!10690 Bool)) false) (h!70507 lt!2309292) true) (content!11786 (t!377572 lt!2309292))))))

(assert (= (and d!1855040 c!1050961) b!5913490))

(assert (= (and d!1855040 (not c!1050961)) b!5913491))

(declare-fun m!6812478 () Bool)

(assert (=> b!5913491 m!6812478))

(declare-fun m!6812480 () Bool)

(assert (=> b!5913491 m!6812480))

(assert (=> b!5912706 d!1855040))

(declare-fun d!1855042 () Bool)

(assert (=> d!1855042 (= (isEmpty!35915 (t!377571 (exprs!5845 (h!70507 zl!343)))) ((_ is Nil!64058) (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(assert (=> b!5912883 d!1855042))

(declare-fun d!1855044 () Bool)

(assert (=> d!1855044 (= (isUnion!830 lt!2309295) ((_ is Union!15961) lt!2309295))))

(assert (=> b!5912732 d!1855044))

(declare-fun bs!1400197 () Bool)

(declare-fun d!1855046 () Bool)

(assert (= bs!1400197 (and d!1855046 d!1855022)))

(declare-fun lambda!322579 () Int)

(assert (=> bs!1400197 (= lambda!322579 lambda!322572)))

(declare-fun bs!1400198 () Bool)

(assert (= bs!1400198 (and d!1855046 d!1854808)))

(assert (=> bs!1400198 (= lambda!322579 lambda!322538)))

(declare-fun bs!1400199 () Bool)

(assert (= bs!1400199 (and d!1855046 d!1854806)))

(assert (=> bs!1400199 (= lambda!322579 lambda!322535)))

(declare-fun bs!1400200 () Bool)

(assert (= bs!1400200 (and d!1855046 d!1854802)))

(assert (=> bs!1400200 (= lambda!322579 lambda!322532)))

(declare-fun bs!1400201 () Bool)

(assert (= bs!1400201 (and d!1855046 d!1854824)))

(assert (=> bs!1400201 (= lambda!322579 lambda!322548)))

(declare-fun bs!1400202 () Bool)

(assert (= bs!1400202 (and d!1855046 d!1854810)))

(assert (=> bs!1400202 (= lambda!322579 lambda!322539)))

(assert (=> d!1855046 (= (inv!83149 (h!70507 (t!377572 zl!343))) (forall!15046 (exprs!5845 (h!70507 (t!377572 zl!343))) lambda!322579))))

(declare-fun bs!1400203 () Bool)

(assert (= bs!1400203 d!1855046))

(declare-fun m!6812482 () Bool)

(assert (=> bs!1400203 m!6812482))

(assert (=> b!5912925 d!1855046))

(declare-fun d!1855048 () Bool)

(declare-fun c!1050962 () Bool)

(assert (=> d!1855048 (= c!1050962 (isEmpty!35916 (tail!11553 s!2326)))))

(declare-fun e!3620991 () Bool)

(assert (=> d!1855048 (= (matchZipper!2017 (derivationStepZipper!1950 z!1189 (head!12468 s!2326)) (tail!11553 s!2326)) e!3620991)))

(declare-fun b!5913492 () Bool)

(assert (=> b!5913492 (= e!3620991 (nullableZipper!1788 (derivationStepZipper!1950 z!1189 (head!12468 s!2326))))))

(declare-fun b!5913493 () Bool)

(assert (=> b!5913493 (= e!3620991 (matchZipper!2017 (derivationStepZipper!1950 (derivationStepZipper!1950 z!1189 (head!12468 s!2326)) (head!12468 (tail!11553 s!2326))) (tail!11553 (tail!11553 s!2326))))))

(assert (= (and d!1855048 c!1050962) b!5913492))

(assert (= (and d!1855048 (not c!1050962)) b!5913493))

(assert (=> d!1855048 m!6811980))

(assert (=> d!1855048 m!6811982))

(assert (=> b!5913492 m!6812020))

(declare-fun m!6812484 () Bool)

(assert (=> b!5913492 m!6812484))

(assert (=> b!5913493 m!6811980))

(declare-fun m!6812486 () Bool)

(assert (=> b!5913493 m!6812486))

(assert (=> b!5913493 m!6812020))

(assert (=> b!5913493 m!6812486))

(declare-fun m!6812488 () Bool)

(assert (=> b!5913493 m!6812488))

(assert (=> b!5913493 m!6811980))

(declare-fun m!6812490 () Bool)

(assert (=> b!5913493 m!6812490))

(assert (=> b!5913493 m!6812488))

(assert (=> b!5913493 m!6812490))

(declare-fun m!6812492 () Bool)

(assert (=> b!5913493 m!6812492))

(assert (=> b!5912890 d!1855048))

(declare-fun d!1855050 () Bool)

(assert (=> d!1855050 true))

(declare-fun lambda!322582 () Int)

(declare-fun flatMap!1482 ((InoxSet Context!10690) Int) (InoxSet Context!10690))

(assert (=> d!1855050 (= (derivationStepZipper!1950 z!1189 (head!12468 s!2326)) (flatMap!1482 z!1189 lambda!322582))))

(declare-fun bs!1400204 () Bool)

(assert (= bs!1400204 d!1855050))

(declare-fun m!6812494 () Bool)

(assert (=> bs!1400204 m!6812494))

(assert (=> b!5912890 d!1855050))

(declare-fun d!1855052 () Bool)

(assert (=> d!1855052 (= (head!12468 s!2326) (h!70508 s!2326))))

(assert (=> b!5912890 d!1855052))

(assert (=> b!5912890 d!1855008))

(declare-fun d!1855054 () Bool)

(assert (=> d!1855054 (= (isEmpty!35915 (unfocusZipperList!1382 zl!343)) ((_ is Nil!64058) (unfocusZipperList!1382 zl!343)))))

(assert (=> b!5912736 d!1855054))

(declare-fun d!1855056 () Bool)

(assert (=> d!1855056 (= (isEmpty!35915 (tail!11552 (unfocusZipperList!1382 zl!343))) ((_ is Nil!64058) (tail!11552 (unfocusZipperList!1382 zl!343))))))

(assert (=> b!5912734 d!1855056))

(declare-fun d!1855058 () Bool)

(assert (=> d!1855058 (= (tail!11552 (unfocusZipperList!1382 zl!343)) (t!377571 (unfocusZipperList!1382 zl!343)))))

(assert (=> b!5912734 d!1855058))

(declare-fun d!1855060 () Bool)

(assert (=> d!1855060 true))

(assert (=> d!1855060 true))

(declare-fun res!2479522 () Bool)

(assert (=> d!1855060 (= (choose!44601 lambda!322485) res!2479522)))

(assert (=> d!1854780 d!1855060))

(declare-fun bs!1400205 () Bool)

(declare-fun b!5913506 () Bool)

(assert (= bs!1400205 (and b!5913506 b!5912776)))

(declare-fun lambda!322583 () Int)

(assert (=> bs!1400205 (not (= lambda!322583 lambda!322545))))

(declare-fun bs!1400206 () Bool)

(assert (= bs!1400206 (and b!5913506 b!5912785)))

(assert (=> bs!1400206 (= (and (= (reg!16290 (regOne!32435 r!7292)) (reg!16290 r!7292)) (= (regOne!32435 r!7292) r!7292)) (= lambda!322583 lambda!322544))))

(declare-fun bs!1400207 () Bool)

(assert (= bs!1400207 (and b!5913506 b!5913378)))

(assert (=> bs!1400207 (= (and (= (reg!16290 (regOne!32435 r!7292)) (reg!16290 (regTwo!32435 r!7292))) (= (regOne!32435 r!7292) (regTwo!32435 r!7292))) (= lambda!322583 lambda!322570))))

(declare-fun bs!1400208 () Bool)

(assert (= bs!1400208 (and b!5913506 d!1855036)))

(assert (=> bs!1400208 (not (= lambda!322583 lambda!322578))))

(declare-fun bs!1400209 () Bool)

(assert (= bs!1400209 (and b!5913506 d!1854782)))

(assert (=> bs!1400209 (not (= lambda!322583 lambda!322519))))

(declare-fun bs!1400210 () Bool)

(assert (= bs!1400210 (and b!5913506 d!1854786)))

(assert (=> bs!1400210 (not (= lambda!322583 lambda!322528))))

(declare-fun bs!1400211 () Bool)

(assert (= bs!1400211 (and b!5913506 b!5912371)))

(assert (=> bs!1400211 (not (= lambda!322583 lambda!322485))))

(assert (=> bs!1400211 (not (= lambda!322583 lambda!322486))))

(assert (=> bs!1400210 (not (= lambda!322583 lambda!322529))))

(assert (=> bs!1400208 (not (= lambda!322583 lambda!322577))))

(declare-fun bs!1400212 () Bool)

(assert (= bs!1400212 (and b!5913506 b!5913369)))

(assert (=> bs!1400212 (not (= lambda!322583 lambda!322571))))

(assert (=> b!5913506 true))

(assert (=> b!5913506 true))

(declare-fun bs!1400213 () Bool)

(declare-fun b!5913497 () Bool)

(assert (= bs!1400213 (and b!5913497 b!5912776)))

(declare-fun lambda!322584 () Int)

(assert (=> bs!1400213 (= (and (= (regOne!32434 (regOne!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regOne!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322584 lambda!322545))))

(declare-fun bs!1400214 () Bool)

(assert (= bs!1400214 (and b!5913497 b!5912785)))

(assert (=> bs!1400214 (not (= lambda!322584 lambda!322544))))

(declare-fun bs!1400215 () Bool)

(assert (= bs!1400215 (and b!5913497 b!5913378)))

(assert (=> bs!1400215 (not (= lambda!322584 lambda!322570))))

(declare-fun bs!1400216 () Bool)

(assert (= bs!1400216 (and b!5913497 d!1855036)))

(assert (=> bs!1400216 (= (and (= (regOne!32434 (regOne!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regOne!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322584 lambda!322578))))

(declare-fun bs!1400217 () Bool)

(assert (= bs!1400217 (and b!5913497 d!1854782)))

(assert (=> bs!1400217 (not (= lambda!322584 lambda!322519))))

(declare-fun bs!1400218 () Bool)

(assert (= bs!1400218 (and b!5913497 d!1854786)))

(assert (=> bs!1400218 (not (= lambda!322584 lambda!322528))))

(declare-fun bs!1400219 () Bool)

(assert (= bs!1400219 (and b!5913497 b!5912371)))

(assert (=> bs!1400219 (not (= lambda!322584 lambda!322485))))

(assert (=> bs!1400219 (= (and (= (regOne!32434 (regOne!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regOne!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322584 lambda!322486))))

(assert (=> bs!1400218 (= (and (= (regOne!32434 (regOne!32435 r!7292)) (regOne!32434 r!7292)) (= (regTwo!32434 (regOne!32435 r!7292)) (regTwo!32434 r!7292))) (= lambda!322584 lambda!322529))))

(declare-fun bs!1400220 () Bool)

(assert (= bs!1400220 (and b!5913497 b!5913506)))

(assert (=> bs!1400220 (not (= lambda!322584 lambda!322583))))

(assert (=> bs!1400216 (not (= lambda!322584 lambda!322577))))

(declare-fun bs!1400221 () Bool)

(assert (= bs!1400221 (and b!5913497 b!5913369)))

(assert (=> bs!1400221 (= (and (= (regOne!32434 (regOne!32435 r!7292)) (regOne!32434 (regTwo!32435 r!7292))) (= (regTwo!32434 (regOne!32435 r!7292)) (regTwo!32434 (regTwo!32435 r!7292)))) (= lambda!322584 lambda!322571))))

(assert (=> b!5913497 true))

(assert (=> b!5913497 true))

(declare-fun b!5913496 () Bool)

(declare-fun e!3620998 () Bool)

(assert (=> b!5913496 (= e!3620998 (= s!2326 (Cons!64060 (c!1050727 (regOne!32435 r!7292)) Nil!64060)))))

(declare-fun e!3620994 () Bool)

(declare-fun call!468665 () Bool)

(assert (=> b!5913497 (= e!3620994 call!468665)))

(declare-fun b!5913498 () Bool)

(declare-fun e!3620997 () Bool)

(declare-fun call!468664 () Bool)

(assert (=> b!5913498 (= e!3620997 call!468664)))

(declare-fun b!5913499 () Bool)

(declare-fun e!3620995 () Bool)

(declare-fun e!3620992 () Bool)

(assert (=> b!5913499 (= e!3620995 e!3620992)))

(declare-fun res!2479523 () Bool)

(assert (=> b!5913499 (= res!2479523 (matchRSpec!3062 (regOne!32435 (regOne!32435 r!7292)) s!2326))))

(assert (=> b!5913499 (=> res!2479523 e!3620992)))

(declare-fun b!5913500 () Bool)

(assert (=> b!5913500 (= e!3620992 (matchRSpec!3062 (regTwo!32435 (regOne!32435 r!7292)) s!2326))))

(declare-fun b!5913501 () Bool)

(declare-fun res!2479524 () Bool)

(declare-fun e!3620993 () Bool)

(assert (=> b!5913501 (=> res!2479524 e!3620993)))

(assert (=> b!5913501 (= res!2479524 call!468664)))

(assert (=> b!5913501 (= e!3620994 e!3620993)))

(declare-fun bm!468659 () Bool)

(assert (=> bm!468659 (= call!468664 (isEmpty!35916 s!2326))))

(declare-fun b!5913503 () Bool)

(declare-fun c!1050965 () Bool)

(assert (=> b!5913503 (= c!1050965 ((_ is ElementMatch!15961) (regOne!32435 r!7292)))))

(declare-fun e!3620996 () Bool)

(assert (=> b!5913503 (= e!3620996 e!3620998)))

(declare-fun bm!468660 () Bool)

(declare-fun c!1050967 () Bool)

(assert (=> bm!468660 (= call!468665 (Exists!3031 (ite c!1050967 lambda!322583 lambda!322584)))))

(declare-fun b!5913504 () Bool)

(assert (=> b!5913504 (= e!3620997 e!3620996)))

(declare-fun res!2479525 () Bool)

(assert (=> b!5913504 (= res!2479525 (not ((_ is EmptyLang!15961) (regOne!32435 r!7292))))))

(assert (=> b!5913504 (=> (not res!2479525) (not e!3620996))))

(declare-fun d!1855062 () Bool)

(declare-fun c!1050966 () Bool)

(assert (=> d!1855062 (= c!1050966 ((_ is EmptyExpr!15961) (regOne!32435 r!7292)))))

(assert (=> d!1855062 (= (matchRSpec!3062 (regOne!32435 r!7292) s!2326) e!3620997)))

(declare-fun b!5913502 () Bool)

(assert (=> b!5913502 (= e!3620995 e!3620994)))

(assert (=> b!5913502 (= c!1050967 ((_ is Star!15961) (regOne!32435 r!7292)))))

(declare-fun b!5913505 () Bool)

(declare-fun c!1050968 () Bool)

(assert (=> b!5913505 (= c!1050968 ((_ is Union!15961) (regOne!32435 r!7292)))))

(assert (=> b!5913505 (= e!3620998 e!3620995)))

(assert (=> b!5913506 (= e!3620993 call!468665)))

(assert (= (and d!1855062 c!1050966) b!5913498))

(assert (= (and d!1855062 (not c!1050966)) b!5913504))

(assert (= (and b!5913504 res!2479525) b!5913503))

(assert (= (and b!5913503 c!1050965) b!5913496))

(assert (= (and b!5913503 (not c!1050965)) b!5913505))

(assert (= (and b!5913505 c!1050968) b!5913499))

(assert (= (and b!5913505 (not c!1050968)) b!5913502))

(assert (= (and b!5913499 (not res!2479523)) b!5913500))

(assert (= (and b!5913502 c!1050967) b!5913501))

(assert (= (and b!5913502 (not c!1050967)) b!5913497))

(assert (= (and b!5913501 (not res!2479524)) b!5913506))

(assert (= (or b!5913506 b!5913497) bm!468660))

(assert (= (or b!5913498 b!5913501) bm!468659))

(declare-fun m!6812496 () Bool)

(assert (=> b!5913499 m!6812496))

(declare-fun m!6812498 () Bool)

(assert (=> b!5913500 m!6812498))

(assert (=> bm!468659 m!6811976))

(declare-fun m!6812500 () Bool)

(assert (=> bm!468660 m!6812500))

(assert (=> b!5912778 d!1855062))

(declare-fun d!1855064 () Bool)

(assert (=> d!1855064 (= (nullable!5956 (reg!16290 r!7292)) (nullableFct!1932 (reg!16290 r!7292)))))

(declare-fun bs!1400222 () Bool)

(assert (= bs!1400222 d!1855064))

(declare-fun m!6812502 () Bool)

(assert (=> bs!1400222 m!6812502))

(assert (=> b!5912847 d!1855064))

(assert (=> b!5912817 d!1855052))

(assert (=> d!1854754 d!1854752))

(assert (=> d!1854754 d!1854748))

(declare-fun d!1855066 () Bool)

(assert (=> d!1855066 (= (nullable!5956 r!7292) (nullableZipper!1788 z!1189))))

(assert (=> d!1855066 true))

(declare-fun _$51!203 () Unit!157193)

(assert (=> d!1855066 (= (choose!44600 r!7292 z!1189) _$51!203)))

(declare-fun bs!1400223 () Bool)

(assert (= bs!1400223 d!1855066))

(assert (=> bs!1400223 m!6811752))

(assert (=> bs!1400223 m!6811750))

(assert (=> d!1854754 d!1855066))

(assert (=> d!1854754 d!1854820))

(declare-fun d!1855068 () Bool)

(declare-fun e!3621000 () Bool)

(assert (=> d!1855068 e!3621000))

(declare-fun res!2479527 () Bool)

(assert (=> d!1855068 (=> (not res!2479527) (not e!3621000))))

(declare-fun lt!2309351 () List!64184)

(assert (=> d!1855068 (= res!2479527 (= (content!11788 lt!2309351) ((_ map or) (content!11788 (_1!36243 (get!22056 lt!2309269))) (content!11788 (_2!36243 (get!22056 lt!2309269))))))))

(declare-fun e!3620999 () List!64184)

(assert (=> d!1855068 (= lt!2309351 e!3620999)))

(declare-fun c!1050969 () Bool)

(assert (=> d!1855068 (= c!1050969 ((_ is Nil!64060) (_1!36243 (get!22056 lt!2309269))))))

(assert (=> d!1855068 (= (++!14060 (_1!36243 (get!22056 lt!2309269)) (_2!36243 (get!22056 lt!2309269))) lt!2309351)))

(declare-fun b!5913507 () Bool)

(assert (=> b!5913507 (= e!3620999 (_2!36243 (get!22056 lt!2309269)))))

(declare-fun b!5913509 () Bool)

(declare-fun res!2479526 () Bool)

(assert (=> b!5913509 (=> (not res!2479526) (not e!3621000))))

(assert (=> b!5913509 (= res!2479526 (= (size!40132 lt!2309351) (+ (size!40132 (_1!36243 (get!22056 lt!2309269))) (size!40132 (_2!36243 (get!22056 lt!2309269))))))))

(declare-fun b!5913508 () Bool)

(assert (=> b!5913508 (= e!3620999 (Cons!64060 (h!70508 (_1!36243 (get!22056 lt!2309269))) (++!14060 (t!377573 (_1!36243 (get!22056 lt!2309269))) (_2!36243 (get!22056 lt!2309269)))))))

(declare-fun b!5913510 () Bool)

(assert (=> b!5913510 (= e!3621000 (or (not (= (_2!36243 (get!22056 lt!2309269)) Nil!64060)) (= lt!2309351 (_1!36243 (get!22056 lt!2309269)))))))

(assert (= (and d!1855068 c!1050969) b!5913507))

(assert (= (and d!1855068 (not c!1050969)) b!5913508))

(assert (= (and d!1855068 res!2479527) b!5913509))

(assert (= (and b!5913509 res!2479526) b!5913510))

(declare-fun m!6812504 () Bool)

(assert (=> d!1855068 m!6812504))

(declare-fun m!6812506 () Bool)

(assert (=> d!1855068 m!6812506))

(declare-fun m!6812508 () Bool)

(assert (=> d!1855068 m!6812508))

(declare-fun m!6812510 () Bool)

(assert (=> b!5913509 m!6812510))

(declare-fun m!6812512 () Bool)

(assert (=> b!5913509 m!6812512))

(declare-fun m!6812514 () Bool)

(assert (=> b!5913509 m!6812514))

(declare-fun m!6812516 () Bool)

(assert (=> b!5913508 m!6812516))

(assert (=> b!5912482 d!1855068))

(assert (=> b!5912482 d!1855016))

(assert (=> b!5912741 d!1854824))

(declare-fun bs!1400224 () Bool)

(declare-fun d!1855070 () Bool)

(assert (= bs!1400224 (and d!1855070 d!1855022)))

(declare-fun lambda!322585 () Int)

(assert (=> bs!1400224 (= lambda!322585 lambda!322572)))

(declare-fun bs!1400225 () Bool)

(assert (= bs!1400225 (and d!1855070 d!1854808)))

(assert (=> bs!1400225 (= lambda!322585 lambda!322538)))

(declare-fun bs!1400226 () Bool)

(assert (= bs!1400226 (and d!1855070 d!1854806)))

(assert (=> bs!1400226 (= lambda!322585 lambda!322535)))

(declare-fun bs!1400227 () Bool)

(assert (= bs!1400227 (and d!1855070 d!1855046)))

(assert (=> bs!1400227 (= lambda!322585 lambda!322579)))

(declare-fun bs!1400228 () Bool)

(assert (= bs!1400228 (and d!1855070 d!1854802)))

(assert (=> bs!1400228 (= lambda!322585 lambda!322532)))

(declare-fun bs!1400229 () Bool)

(assert (= bs!1400229 (and d!1855070 d!1854824)))

(assert (=> bs!1400229 (= lambda!322585 lambda!322548)))

(declare-fun bs!1400230 () Bool)

(assert (= bs!1400230 (and d!1855070 d!1854810)))

(assert (=> bs!1400230 (= lambda!322585 lambda!322539)))

(declare-fun lt!2309352 () List!64182)

(assert (=> d!1855070 (forall!15046 lt!2309352 lambda!322585)))

(declare-fun e!3621001 () List!64182)

(assert (=> d!1855070 (= lt!2309352 e!3621001)))

(declare-fun c!1050970 () Bool)

(assert (=> d!1855070 (= c!1050970 ((_ is Cons!64059) (t!377572 zl!343)))))

(assert (=> d!1855070 (= (unfocusZipperList!1382 (t!377572 zl!343)) lt!2309352)))

(declare-fun b!5913511 () Bool)

(assert (=> b!5913511 (= e!3621001 (Cons!64058 (generalisedConcat!1558 (exprs!5845 (h!70507 (t!377572 zl!343)))) (unfocusZipperList!1382 (t!377572 (t!377572 zl!343)))))))

(declare-fun b!5913512 () Bool)

(assert (=> b!5913512 (= e!3621001 Nil!64058)))

(assert (= (and d!1855070 c!1050970) b!5913511))

(assert (= (and d!1855070 (not c!1050970)) b!5913512))

(declare-fun m!6812518 () Bool)

(assert (=> d!1855070 m!6812518))

(declare-fun m!6812520 () Bool)

(assert (=> b!5913511 m!6812520))

(declare-fun m!6812522 () Bool)

(assert (=> b!5913511 m!6812522))

(assert (=> b!5912741 d!1855070))

(declare-fun b!5913513 () Bool)

(declare-fun e!3621005 () Bool)

(declare-fun lt!2309353 () Bool)

(declare-fun call!468666 () Bool)

(assert (=> b!5913513 (= e!3621005 (= lt!2309353 call!468666))))

(declare-fun b!5913514 () Bool)

(declare-fun res!2479535 () Bool)

(declare-fun e!3621002 () Bool)

(assert (=> b!5913514 (=> (not res!2479535) (not e!3621002))))

(assert (=> b!5913514 (= res!2479535 (not call!468666))))

(declare-fun b!5913515 () Bool)

(declare-fun e!3621003 () Bool)

(assert (=> b!5913515 (= e!3621003 (not lt!2309353))))

(declare-fun b!5913516 () Bool)

(assert (=> b!5913516 (= e!3621002 (= (head!12468 (_2!36243 (get!22056 lt!2309269))) (c!1050727 (regTwo!32434 r!7292))))))

(declare-fun b!5913518 () Bool)

(declare-fun e!3621008 () Bool)

(declare-fun e!3621004 () Bool)

(assert (=> b!5913518 (= e!3621008 e!3621004)))

(declare-fun res!2479528 () Bool)

(assert (=> b!5913518 (=> res!2479528 e!3621004)))

(assert (=> b!5913518 (= res!2479528 call!468666)))

(declare-fun b!5913519 () Bool)

(declare-fun res!2479532 () Bool)

(assert (=> b!5913519 (=> res!2479532 e!3621004)))

(assert (=> b!5913519 (= res!2479532 (not (isEmpty!35916 (tail!11553 (_2!36243 (get!22056 lt!2309269))))))))

(declare-fun b!5913520 () Bool)

(assert (=> b!5913520 (= e!3621005 e!3621003)))

(declare-fun c!1050971 () Bool)

(assert (=> b!5913520 (= c!1050971 ((_ is EmptyLang!15961) (regTwo!32434 r!7292)))))

(declare-fun b!5913521 () Bool)

(declare-fun e!3621006 () Bool)

(assert (=> b!5913521 (= e!3621006 e!3621008)))

(declare-fun res!2479533 () Bool)

(assert (=> b!5913521 (=> (not res!2479533) (not e!3621008))))

(assert (=> b!5913521 (= res!2479533 (not lt!2309353))))

(declare-fun b!5913522 () Bool)

(declare-fun res!2479534 () Bool)

(assert (=> b!5913522 (=> (not res!2479534) (not e!3621002))))

(assert (=> b!5913522 (= res!2479534 (isEmpty!35916 (tail!11553 (_2!36243 (get!22056 lt!2309269)))))))

(declare-fun b!5913523 () Bool)

(assert (=> b!5913523 (= e!3621004 (not (= (head!12468 (_2!36243 (get!22056 lt!2309269))) (c!1050727 (regTwo!32434 r!7292)))))))

(declare-fun bm!468661 () Bool)

(assert (=> bm!468661 (= call!468666 (isEmpty!35916 (_2!36243 (get!22056 lt!2309269))))))

(declare-fun b!5913524 () Bool)

(declare-fun res!2479529 () Bool)

(assert (=> b!5913524 (=> res!2479529 e!3621006)))

(assert (=> b!5913524 (= res!2479529 e!3621002)))

(declare-fun res!2479530 () Bool)

(assert (=> b!5913524 (=> (not res!2479530) (not e!3621002))))

(assert (=> b!5913524 (= res!2479530 lt!2309353)))

(declare-fun b!5913525 () Bool)

(declare-fun e!3621007 () Bool)

(assert (=> b!5913525 (= e!3621007 (nullable!5956 (regTwo!32434 r!7292)))))

(declare-fun b!5913526 () Bool)

(assert (=> b!5913526 (= e!3621007 (matchR!8144 (derivativeStep!4694 (regTwo!32434 r!7292) (head!12468 (_2!36243 (get!22056 lt!2309269)))) (tail!11553 (_2!36243 (get!22056 lt!2309269)))))))

(declare-fun b!5913517 () Bool)

(declare-fun res!2479531 () Bool)

(assert (=> b!5913517 (=> res!2479531 e!3621006)))

(assert (=> b!5913517 (= res!2479531 (not ((_ is ElementMatch!15961) (regTwo!32434 r!7292))))))

(assert (=> b!5913517 (= e!3621003 e!3621006)))

(declare-fun d!1855072 () Bool)

(assert (=> d!1855072 e!3621005))

(declare-fun c!1050973 () Bool)

(assert (=> d!1855072 (= c!1050973 ((_ is EmptyExpr!15961) (regTwo!32434 r!7292)))))

(assert (=> d!1855072 (= lt!2309353 e!3621007)))

(declare-fun c!1050972 () Bool)

(assert (=> d!1855072 (= c!1050972 (isEmpty!35916 (_2!36243 (get!22056 lt!2309269))))))

(assert (=> d!1855072 (validRegex!7697 (regTwo!32434 r!7292))))

(assert (=> d!1855072 (= (matchR!8144 (regTwo!32434 r!7292) (_2!36243 (get!22056 lt!2309269))) lt!2309353)))

(assert (= (and d!1855072 c!1050972) b!5913525))

(assert (= (and d!1855072 (not c!1050972)) b!5913526))

(assert (= (and d!1855072 c!1050973) b!5913513))

(assert (= (and d!1855072 (not c!1050973)) b!5913520))

(assert (= (and b!5913520 c!1050971) b!5913515))

(assert (= (and b!5913520 (not c!1050971)) b!5913517))

(assert (= (and b!5913517 (not res!2479531)) b!5913524))

(assert (= (and b!5913524 res!2479530) b!5913514))

(assert (= (and b!5913514 res!2479535) b!5913522))

(assert (= (and b!5913522 res!2479534) b!5913516))

(assert (= (and b!5913524 (not res!2479529)) b!5913521))

(assert (= (and b!5913521 res!2479533) b!5913518))

(assert (= (and b!5913518 (not res!2479528)) b!5913519))

(assert (= (and b!5913519 (not res!2479532)) b!5913523))

(assert (= (or b!5913513 b!5913514 b!5913518) bm!468661))

(declare-fun m!6812524 () Bool)

(assert (=> b!5913519 m!6812524))

(assert (=> b!5913519 m!6812524))

(declare-fun m!6812526 () Bool)

(assert (=> b!5913519 m!6812526))

(declare-fun m!6812528 () Bool)

(assert (=> b!5913516 m!6812528))

(assert (=> b!5913523 m!6812528))

(declare-fun m!6812530 () Bool)

(assert (=> bm!468661 m!6812530))

(assert (=> b!5913526 m!6812528))

(assert (=> b!5913526 m!6812528))

(declare-fun m!6812532 () Bool)

(assert (=> b!5913526 m!6812532))

(assert (=> b!5913526 m!6812524))

(assert (=> b!5913526 m!6812532))

(assert (=> b!5913526 m!6812524))

(declare-fun m!6812534 () Bool)

(assert (=> b!5913526 m!6812534))

(assert (=> b!5913522 m!6812524))

(assert (=> b!5913522 m!6812524))

(assert (=> b!5913522 m!6812526))

(assert (=> d!1855072 m!6812530))

(declare-fun m!6812536 () Bool)

(assert (=> d!1855072 m!6812536))

(declare-fun m!6812538 () Bool)

(assert (=> b!5913525 m!6812538))

(assert (=> b!5912480 d!1855072))

(assert (=> b!5912480 d!1855016))

(declare-fun b!5913527 () Bool)

(declare-fun e!3621012 () Bool)

(declare-fun e!3621015 () Bool)

(assert (=> b!5913527 (= e!3621012 e!3621015)))

(declare-fun res!2479537 () Bool)

(assert (=> b!5913527 (=> (not res!2479537) (not e!3621015))))

(declare-fun call!468668 () Bool)

(assert (=> b!5913527 (= res!2479537 call!468668)))

(declare-fun d!1855074 () Bool)

(declare-fun res!2479538 () Bool)

(declare-fun e!3621010 () Bool)

(assert (=> d!1855074 (=> res!2479538 e!3621010)))

(assert (=> d!1855074 (= res!2479538 ((_ is ElementMatch!15961) lt!2309295))))

(assert (=> d!1855074 (= (validRegex!7697 lt!2309295) e!3621010)))

(declare-fun b!5913528 () Bool)

(declare-fun e!3621014 () Bool)

(declare-fun e!3621013 () Bool)

(assert (=> b!5913528 (= e!3621014 e!3621013)))

(declare-fun res!2479540 () Bool)

(assert (=> b!5913528 (= res!2479540 (not (nullable!5956 (reg!16290 lt!2309295))))))

(assert (=> b!5913528 (=> (not res!2479540) (not e!3621013))))

(declare-fun b!5913529 () Bool)

(declare-fun e!3621011 () Bool)

(declare-fun call!468669 () Bool)

(assert (=> b!5913529 (= e!3621011 call!468669)))

(declare-fun call!468667 () Bool)

(declare-fun bm!468662 () Bool)

(declare-fun c!1050975 () Bool)

(declare-fun c!1050974 () Bool)

(assert (=> bm!468662 (= call!468667 (validRegex!7697 (ite c!1050975 (reg!16290 lt!2309295) (ite c!1050974 (regOne!32435 lt!2309295) (regOne!32434 lt!2309295)))))))

(declare-fun b!5913530 () Bool)

(declare-fun res!2479539 () Bool)

(assert (=> b!5913530 (=> res!2479539 e!3621012)))

(assert (=> b!5913530 (= res!2479539 (not ((_ is Concat!24806) lt!2309295)))))

(declare-fun e!3621009 () Bool)

(assert (=> b!5913530 (= e!3621009 e!3621012)))

(declare-fun b!5913531 () Bool)

(declare-fun res!2479536 () Bool)

(assert (=> b!5913531 (=> (not res!2479536) (not e!3621011))))

(assert (=> b!5913531 (= res!2479536 call!468668)))

(assert (=> b!5913531 (= e!3621009 e!3621011)))

(declare-fun b!5913532 () Bool)

(assert (=> b!5913532 (= e!3621010 e!3621014)))

(assert (=> b!5913532 (= c!1050975 ((_ is Star!15961) lt!2309295))))

(declare-fun b!5913533 () Bool)

(assert (=> b!5913533 (= e!3621014 e!3621009)))

(assert (=> b!5913533 (= c!1050974 ((_ is Union!15961) lt!2309295))))

(declare-fun bm!468663 () Bool)

(assert (=> bm!468663 (= call!468668 call!468667)))

(declare-fun b!5913534 () Bool)

(assert (=> b!5913534 (= e!3621015 call!468669)))

(declare-fun b!5913535 () Bool)

(assert (=> b!5913535 (= e!3621013 call!468667)))

(declare-fun bm!468664 () Bool)

(assert (=> bm!468664 (= call!468669 (validRegex!7697 (ite c!1050974 (regTwo!32435 lt!2309295) (regTwo!32434 lt!2309295))))))

(assert (= (and d!1855074 (not res!2479538)) b!5913532))

(assert (= (and b!5913532 c!1050975) b!5913528))

(assert (= (and b!5913532 (not c!1050975)) b!5913533))

(assert (= (and b!5913528 res!2479540) b!5913535))

(assert (= (and b!5913533 c!1050974) b!5913531))

(assert (= (and b!5913533 (not c!1050974)) b!5913530))

(assert (= (and b!5913531 res!2479536) b!5913529))

(assert (= (and b!5913530 (not res!2479539)) b!5913527))

(assert (= (and b!5913527 res!2479537) b!5913534))

(assert (= (or b!5913529 b!5913534) bm!468664))

(assert (= (or b!5913531 b!5913527) bm!468663))

(assert (= (or b!5913535 bm!468663) bm!468662))

(declare-fun m!6812540 () Bool)

(assert (=> b!5913528 m!6812540))

(declare-fun m!6812542 () Bool)

(assert (=> bm!468662 m!6812542))

(declare-fun m!6812544 () Bool)

(assert (=> bm!468664 m!6812544))

(assert (=> d!1854806 d!1855074))

(declare-fun d!1855076 () Bool)

(declare-fun res!2479541 () Bool)

(declare-fun e!3621016 () Bool)

(assert (=> d!1855076 (=> res!2479541 e!3621016)))

(assert (=> d!1855076 (= res!2479541 ((_ is Nil!64058) (unfocusZipperList!1382 zl!343)))))

(assert (=> d!1855076 (= (forall!15046 (unfocusZipperList!1382 zl!343) lambda!322535) e!3621016)))

(declare-fun b!5913536 () Bool)

(declare-fun e!3621017 () Bool)

(assert (=> b!5913536 (= e!3621016 e!3621017)))

(declare-fun res!2479542 () Bool)

(assert (=> b!5913536 (=> (not res!2479542) (not e!3621017))))

(assert (=> b!5913536 (= res!2479542 (dynLambda!25050 lambda!322535 (h!70506 (unfocusZipperList!1382 zl!343))))))

(declare-fun b!5913537 () Bool)

(assert (=> b!5913537 (= e!3621017 (forall!15046 (t!377571 (unfocusZipperList!1382 zl!343)) lambda!322535))))

(assert (= (and d!1855076 (not res!2479541)) b!5913536))

(assert (= (and b!5913536 res!2479542) b!5913537))

(declare-fun b_lambda!222199 () Bool)

(assert (=> (not b_lambda!222199) (not b!5913536)))

(declare-fun m!6812546 () Bool)

(assert (=> b!5913536 m!6812546))

(declare-fun m!6812548 () Bool)

(assert (=> b!5913537 m!6812548))

(assert (=> d!1854806 d!1855076))

(declare-fun b!5913538 () Bool)

(declare-fun e!3621021 () Bool)

(declare-fun e!3621024 () Bool)

(assert (=> b!5913538 (= e!3621021 e!3621024)))

(declare-fun res!2479544 () Bool)

(assert (=> b!5913538 (=> (not res!2479544) (not e!3621024))))

(declare-fun call!468671 () Bool)

(assert (=> b!5913538 (= res!2479544 call!468671)))

(declare-fun d!1855078 () Bool)

(declare-fun res!2479545 () Bool)

(declare-fun e!3621019 () Bool)

(assert (=> d!1855078 (=> res!2479545 e!3621019)))

(assert (=> d!1855078 (= res!2479545 ((_ is ElementMatch!15961) (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))

(assert (=> d!1855078 (= (validRegex!7697 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))) e!3621019)))

(declare-fun b!5913539 () Bool)

(declare-fun e!3621023 () Bool)

(declare-fun e!3621022 () Bool)

(assert (=> b!5913539 (= e!3621023 e!3621022)))

(declare-fun res!2479547 () Bool)

(assert (=> b!5913539 (= res!2479547 (not (nullable!5956 (reg!16290 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))))

(assert (=> b!5913539 (=> (not res!2479547) (not e!3621022))))

(declare-fun b!5913540 () Bool)

(declare-fun e!3621020 () Bool)

(declare-fun call!468672 () Bool)

(assert (=> b!5913540 (= e!3621020 call!468672)))

(declare-fun call!468670 () Bool)

(declare-fun c!1050977 () Bool)

(declare-fun bm!468665 () Bool)

(declare-fun c!1050976 () Bool)

(assert (=> bm!468665 (= call!468670 (validRegex!7697 (ite c!1050977 (reg!16290 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))) (ite c!1050976 (regOne!32435 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))) (regOne!32434 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292))))))))))

(declare-fun b!5913541 () Bool)

(declare-fun res!2479546 () Bool)

(assert (=> b!5913541 (=> res!2479546 e!3621021)))

(assert (=> b!5913541 (= res!2479546 (not ((_ is Concat!24806) (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292))))))))

(declare-fun e!3621018 () Bool)

(assert (=> b!5913541 (= e!3621018 e!3621021)))

(declare-fun b!5913542 () Bool)

(declare-fun res!2479543 () Bool)

(assert (=> b!5913542 (=> (not res!2479543) (not e!3621020))))

(assert (=> b!5913542 (= res!2479543 call!468671)))

(assert (=> b!5913542 (= e!3621018 e!3621020)))

(declare-fun b!5913543 () Bool)

(assert (=> b!5913543 (= e!3621019 e!3621023)))

(assert (=> b!5913543 (= c!1050977 ((_ is Star!15961) (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))

(declare-fun b!5913544 () Bool)

(assert (=> b!5913544 (= e!3621023 e!3621018)))

(assert (=> b!5913544 (= c!1050976 ((_ is Union!15961) (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))

(declare-fun bm!468666 () Bool)

(assert (=> bm!468666 (= call!468671 call!468670)))

(declare-fun b!5913545 () Bool)

(assert (=> b!5913545 (= e!3621024 call!468672)))

(declare-fun b!5913546 () Bool)

(assert (=> b!5913546 (= e!3621022 call!468670)))

(declare-fun bm!468667 () Bool)

(assert (=> bm!468667 (= call!468672 (validRegex!7697 (ite c!1050976 (regTwo!32435 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))) (regTwo!32434 (ite c!1050842 (reg!16290 r!7292) (ite c!1050841 (regOne!32435 r!7292) (regOne!32434 r!7292)))))))))

(assert (= (and d!1855078 (not res!2479545)) b!5913543))

(assert (= (and b!5913543 c!1050977) b!5913539))

(assert (= (and b!5913543 (not c!1050977)) b!5913544))

(assert (= (and b!5913539 res!2479547) b!5913546))

(assert (= (and b!5913544 c!1050976) b!5913542))

(assert (= (and b!5913544 (not c!1050976)) b!5913541))

(assert (= (and b!5913542 res!2479543) b!5913540))

(assert (= (and b!5913541 (not res!2479546)) b!5913538))

(assert (= (and b!5913538 res!2479544) b!5913545))

(assert (= (or b!5913540 b!5913545) bm!468667))

(assert (= (or b!5913542 b!5913538) bm!468666))

(assert (= (or b!5913546 bm!468666) bm!468665))

(declare-fun m!6812550 () Bool)

(assert (=> b!5913539 m!6812550))

(declare-fun m!6812552 () Bool)

(assert (=> bm!468665 m!6812552))

(declare-fun m!6812554 () Bool)

(assert (=> bm!468667 m!6812554))

(assert (=> bm!468593 d!1855078))

(declare-fun b!5913547 () Bool)

(declare-fun e!3621028 () Bool)

(declare-fun e!3621031 () Bool)

(assert (=> b!5913547 (= e!3621028 e!3621031)))

(declare-fun res!2479549 () Bool)

(assert (=> b!5913547 (=> (not res!2479549) (not e!3621031))))

(declare-fun call!468674 () Bool)

(assert (=> b!5913547 (= res!2479549 call!468674)))

(declare-fun d!1855080 () Bool)

(declare-fun res!2479550 () Bool)

(declare-fun e!3621026 () Bool)

(assert (=> d!1855080 (=> res!2479550 e!3621026)))

(assert (=> d!1855080 (= res!2479550 ((_ is ElementMatch!15961) lt!2309310))))

(assert (=> d!1855080 (= (validRegex!7697 lt!2309310) e!3621026)))

(declare-fun b!5913548 () Bool)

(declare-fun e!3621030 () Bool)

(declare-fun e!3621029 () Bool)

(assert (=> b!5913548 (= e!3621030 e!3621029)))

(declare-fun res!2479552 () Bool)

(assert (=> b!5913548 (= res!2479552 (not (nullable!5956 (reg!16290 lt!2309310))))))

(assert (=> b!5913548 (=> (not res!2479552) (not e!3621029))))

(declare-fun b!5913549 () Bool)

(declare-fun e!3621027 () Bool)

(declare-fun call!468675 () Bool)

(assert (=> b!5913549 (= e!3621027 call!468675)))

(declare-fun c!1050978 () Bool)

(declare-fun call!468673 () Bool)

(declare-fun bm!468668 () Bool)

(declare-fun c!1050979 () Bool)

(assert (=> bm!468668 (= call!468673 (validRegex!7697 (ite c!1050979 (reg!16290 lt!2309310) (ite c!1050978 (regOne!32435 lt!2309310) (regOne!32434 lt!2309310)))))))

(declare-fun b!5913550 () Bool)

(declare-fun res!2479551 () Bool)

(assert (=> b!5913550 (=> res!2479551 e!3621028)))

(assert (=> b!5913550 (= res!2479551 (not ((_ is Concat!24806) lt!2309310)))))

(declare-fun e!3621025 () Bool)

(assert (=> b!5913550 (= e!3621025 e!3621028)))

(declare-fun b!5913551 () Bool)

(declare-fun res!2479548 () Bool)

(assert (=> b!5913551 (=> (not res!2479548) (not e!3621027))))

(assert (=> b!5913551 (= res!2479548 call!468674)))

(assert (=> b!5913551 (= e!3621025 e!3621027)))

(declare-fun b!5913552 () Bool)

(assert (=> b!5913552 (= e!3621026 e!3621030)))

(assert (=> b!5913552 (= c!1050979 ((_ is Star!15961) lt!2309310))))

(declare-fun b!5913553 () Bool)

(assert (=> b!5913553 (= e!3621030 e!3621025)))

(assert (=> b!5913553 (= c!1050978 ((_ is Union!15961) lt!2309310))))

(declare-fun bm!468669 () Bool)

(assert (=> bm!468669 (= call!468674 call!468673)))

(declare-fun b!5913554 () Bool)

(assert (=> b!5913554 (= e!3621031 call!468675)))

(declare-fun b!5913555 () Bool)

(assert (=> b!5913555 (= e!3621029 call!468673)))

(declare-fun bm!468670 () Bool)

(assert (=> bm!468670 (= call!468675 (validRegex!7697 (ite c!1050978 (regTwo!32435 lt!2309310) (regTwo!32434 lt!2309310))))))

(assert (= (and d!1855080 (not res!2479550)) b!5913552))

(assert (= (and b!5913552 c!1050979) b!5913548))

(assert (= (and b!5913552 (not c!1050979)) b!5913553))

(assert (= (and b!5913548 res!2479552) b!5913555))

(assert (= (and b!5913553 c!1050978) b!5913551))

(assert (= (and b!5913553 (not c!1050978)) b!5913550))

(assert (= (and b!5913551 res!2479548) b!5913549))

(assert (= (and b!5913550 (not res!2479551)) b!5913547))

(assert (= (and b!5913547 res!2479549) b!5913554))

(assert (= (or b!5913549 b!5913554) bm!468670))

(assert (= (or b!5913551 b!5913547) bm!468669))

(assert (= (or b!5913555 bm!468669) bm!468668))

(declare-fun m!6812556 () Bool)

(assert (=> b!5913548 m!6812556))

(declare-fun m!6812558 () Bool)

(assert (=> bm!468668 m!6812558))

(declare-fun m!6812560 () Bool)

(assert (=> bm!468670 m!6812560))

(assert (=> d!1854824 d!1855080))

(declare-fun d!1855082 () Bool)

(declare-fun res!2479553 () Bool)

(declare-fun e!3621032 () Bool)

(assert (=> d!1855082 (=> res!2479553 e!3621032)))

(assert (=> d!1855082 (= res!2479553 ((_ is Nil!64058) (exprs!5845 (h!70507 zl!343))))))

(assert (=> d!1855082 (= (forall!15046 (exprs!5845 (h!70507 zl!343)) lambda!322548) e!3621032)))

(declare-fun b!5913556 () Bool)

(declare-fun e!3621033 () Bool)

(assert (=> b!5913556 (= e!3621032 e!3621033)))

(declare-fun res!2479554 () Bool)

(assert (=> b!5913556 (=> (not res!2479554) (not e!3621033))))

(assert (=> b!5913556 (= res!2479554 (dynLambda!25050 lambda!322548 (h!70506 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5913557 () Bool)

(assert (=> b!5913557 (= e!3621033 (forall!15046 (t!377571 (exprs!5845 (h!70507 zl!343))) lambda!322548))))

(assert (= (and d!1855082 (not res!2479553)) b!5913556))

(assert (= (and b!5913556 res!2479554) b!5913557))

(declare-fun b_lambda!222201 () Bool)

(assert (=> (not b_lambda!222201) (not b!5913556)))

(declare-fun m!6812562 () Bool)

(assert (=> b!5913556 m!6812562))

(declare-fun m!6812564 () Bool)

(assert (=> b!5913557 m!6812564))

(assert (=> d!1854824 d!1855082))

(assert (=> d!1854782 d!1854762))

(assert (=> d!1854782 d!1855038))

(assert (=> d!1854782 d!1854800))

(declare-fun d!1855084 () Bool)

(assert (=> d!1855084 (= (Exists!3031 lambda!322519) (choose!44601 lambda!322519))))

(declare-fun bs!1400231 () Bool)

(assert (= bs!1400231 d!1855084))

(declare-fun m!6812566 () Bool)

(assert (=> bs!1400231 m!6812566))

(assert (=> d!1854782 d!1855084))

(declare-fun bs!1400232 () Bool)

(declare-fun d!1855086 () Bool)

(assert (= bs!1400232 (and d!1855086 b!5912776)))

(declare-fun lambda!322588 () Int)

(assert (=> bs!1400232 (not (= lambda!322588 lambda!322545))))

(declare-fun bs!1400233 () Bool)

(assert (= bs!1400233 (and d!1855086 b!5912785)))

(assert (=> bs!1400233 (not (= lambda!322588 lambda!322544))))

(declare-fun bs!1400234 () Bool)

(assert (= bs!1400234 (and d!1855086 b!5913378)))

(assert (=> bs!1400234 (not (= lambda!322588 lambda!322570))))

(declare-fun bs!1400235 () Bool)

(assert (= bs!1400235 (and d!1855086 d!1855036)))

(assert (=> bs!1400235 (not (= lambda!322588 lambda!322578))))

(declare-fun bs!1400236 () Bool)

(assert (= bs!1400236 (and d!1855086 d!1854782)))

(assert (=> bs!1400236 (= lambda!322588 lambda!322519)))

(declare-fun bs!1400237 () Bool)

(assert (= bs!1400237 (and d!1855086 b!5912371)))

(assert (=> bs!1400237 (= lambda!322588 lambda!322485)))

(assert (=> bs!1400237 (not (= lambda!322588 lambda!322486))))

(declare-fun bs!1400238 () Bool)

(assert (= bs!1400238 (and d!1855086 d!1854786)))

(assert (=> bs!1400238 (not (= lambda!322588 lambda!322529))))

(declare-fun bs!1400239 () Bool)

(assert (= bs!1400239 (and d!1855086 b!5913506)))

(assert (=> bs!1400239 (not (= lambda!322588 lambda!322583))))

(assert (=> bs!1400235 (= lambda!322588 lambda!322577)))

(declare-fun bs!1400240 () Bool)

(assert (= bs!1400240 (and d!1855086 b!5913369)))

(assert (=> bs!1400240 (not (= lambda!322588 lambda!322571))))

(declare-fun bs!1400241 () Bool)

(assert (= bs!1400241 (and d!1855086 b!5913497)))

(assert (=> bs!1400241 (not (= lambda!322588 lambda!322584))))

(assert (=> bs!1400238 (= lambda!322588 lambda!322528)))

(assert (=> d!1855086 true))

(assert (=> d!1855086 true))

(assert (=> d!1855086 true))

(assert (=> d!1855086 (= (isDefined!12555 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326)) (Exists!3031 lambda!322588))))

(assert (=> d!1855086 true))

(declare-fun _$89!1948 () Unit!157193)

(assert (=> d!1855086 (= (choose!44602 (regOne!32434 r!7292) (regTwo!32434 r!7292) s!2326) _$89!1948)))

(declare-fun bs!1400242 () Bool)

(assert (= bs!1400242 d!1855086))

(assert (=> bs!1400242 m!6811724))

(assert (=> bs!1400242 m!6811724))

(assert (=> bs!1400242 m!6811726))

(declare-fun m!6812568 () Bool)

(assert (=> bs!1400242 m!6812568))

(assert (=> d!1854782 d!1855086))

(assert (=> b!5912820 d!1855006))

(assert (=> b!5912820 d!1855008))

(assert (=> bm!468582 d!1854992))

(declare-fun b!5913562 () Bool)

(declare-fun e!3621039 () Bool)

(declare-fun lt!2309354 () Bool)

(declare-fun call!468676 () Bool)

(assert (=> b!5913562 (= e!3621039 (= lt!2309354 call!468676))))

(declare-fun b!5913563 () Bool)

(declare-fun res!2479566 () Bool)

(declare-fun e!3621036 () Bool)

(assert (=> b!5913563 (=> (not res!2479566) (not e!3621036))))

(assert (=> b!5913563 (= res!2479566 (not call!468676))))

(declare-fun b!5913564 () Bool)

(declare-fun e!3621037 () Bool)

(assert (=> b!5913564 (= e!3621037 (not lt!2309354))))

(declare-fun b!5913565 () Bool)

(assert (=> b!5913565 (= e!3621036 (= (head!12468 s!2326) (c!1050727 (regTwo!32434 r!7292))))))

(declare-fun b!5913567 () Bool)

(declare-fun e!3621042 () Bool)

(declare-fun e!3621038 () Bool)

(assert (=> b!5913567 (= e!3621042 e!3621038)))

(declare-fun res!2479559 () Bool)

(assert (=> b!5913567 (=> res!2479559 e!3621038)))

(assert (=> b!5913567 (= res!2479559 call!468676)))

(declare-fun b!5913568 () Bool)

(declare-fun res!2479563 () Bool)

(assert (=> b!5913568 (=> res!2479563 e!3621038)))

(assert (=> b!5913568 (= res!2479563 (not (isEmpty!35916 (tail!11553 s!2326))))))

(declare-fun b!5913569 () Bool)

(assert (=> b!5913569 (= e!3621039 e!3621037)))

(declare-fun c!1050980 () Bool)

(assert (=> b!5913569 (= c!1050980 ((_ is EmptyLang!15961) (regTwo!32434 r!7292)))))

(declare-fun b!5913570 () Bool)

(declare-fun e!3621040 () Bool)

(assert (=> b!5913570 (= e!3621040 e!3621042)))

(declare-fun res!2479564 () Bool)

(assert (=> b!5913570 (=> (not res!2479564) (not e!3621042))))

(assert (=> b!5913570 (= res!2479564 (not lt!2309354))))

(declare-fun b!5913571 () Bool)

(declare-fun res!2479565 () Bool)

(assert (=> b!5913571 (=> (not res!2479565) (not e!3621036))))

(assert (=> b!5913571 (= res!2479565 (isEmpty!35916 (tail!11553 s!2326)))))

(declare-fun b!5913572 () Bool)

(assert (=> b!5913572 (= e!3621038 (not (= (head!12468 s!2326) (c!1050727 (regTwo!32434 r!7292)))))))

(declare-fun bm!468671 () Bool)

(assert (=> bm!468671 (= call!468676 (isEmpty!35916 s!2326))))

(declare-fun b!5913573 () Bool)

(declare-fun res!2479560 () Bool)

(assert (=> b!5913573 (=> res!2479560 e!3621040)))

(assert (=> b!5913573 (= res!2479560 e!3621036)))

(declare-fun res!2479561 () Bool)

(assert (=> b!5913573 (=> (not res!2479561) (not e!3621036))))

(assert (=> b!5913573 (= res!2479561 lt!2309354)))

(declare-fun b!5913574 () Bool)

(declare-fun e!3621041 () Bool)

(assert (=> b!5913574 (= e!3621041 (nullable!5956 (regTwo!32434 r!7292)))))

(declare-fun b!5913575 () Bool)

(assert (=> b!5913575 (= e!3621041 (matchR!8144 (derivativeStep!4694 (regTwo!32434 r!7292) (head!12468 s!2326)) (tail!11553 s!2326)))))

(declare-fun b!5913566 () Bool)

(declare-fun res!2479562 () Bool)

(assert (=> b!5913566 (=> res!2479562 e!3621040)))

(assert (=> b!5913566 (= res!2479562 (not ((_ is ElementMatch!15961) (regTwo!32434 r!7292))))))

(assert (=> b!5913566 (= e!3621037 e!3621040)))

(declare-fun d!1855088 () Bool)

(assert (=> d!1855088 e!3621039))

(declare-fun c!1050982 () Bool)

(assert (=> d!1855088 (= c!1050982 ((_ is EmptyExpr!15961) (regTwo!32434 r!7292)))))

(assert (=> d!1855088 (= lt!2309354 e!3621041)))

(declare-fun c!1050981 () Bool)

(assert (=> d!1855088 (= c!1050981 (isEmpty!35916 s!2326))))

(assert (=> d!1855088 (validRegex!7697 (regTwo!32434 r!7292))))

(assert (=> d!1855088 (= (matchR!8144 (regTwo!32434 r!7292) s!2326) lt!2309354)))

(assert (= (and d!1855088 c!1050981) b!5913574))

(assert (= (and d!1855088 (not c!1050981)) b!5913575))

(assert (= (and d!1855088 c!1050982) b!5913562))

(assert (= (and d!1855088 (not c!1050982)) b!5913569))

(assert (= (and b!5913569 c!1050980) b!5913564))

(assert (= (and b!5913569 (not c!1050980)) b!5913566))

(assert (= (and b!5913566 (not res!2479562)) b!5913573))

(assert (= (and b!5913573 res!2479561) b!5913563))

(assert (= (and b!5913563 res!2479566) b!5913571))

(assert (= (and b!5913571 res!2479565) b!5913565))

(assert (= (and b!5913573 (not res!2479560)) b!5913570))

(assert (= (and b!5913570 res!2479564) b!5913567))

(assert (= (and b!5913567 (not res!2479559)) b!5913568))

(assert (= (and b!5913568 (not res!2479563)) b!5913572))

(assert (= (or b!5913562 b!5913563 b!5913567) bm!468671))

(assert (=> b!5913568 m!6811980))

(assert (=> b!5913568 m!6811980))

(assert (=> b!5913568 m!6811982))

(assert (=> b!5913565 m!6811984))

(assert (=> b!5913572 m!6811984))

(assert (=> bm!468671 m!6811976))

(assert (=> b!5913575 m!6811984))

(assert (=> b!5913575 m!6811984))

(declare-fun m!6812570 () Bool)

(assert (=> b!5913575 m!6812570))

(assert (=> b!5913575 m!6811980))

(assert (=> b!5913575 m!6812570))

(assert (=> b!5913575 m!6811980))

(declare-fun m!6812572 () Bool)

(assert (=> b!5913575 m!6812572))

(assert (=> b!5913571 m!6811980))

(assert (=> b!5913571 m!6811980))

(assert (=> b!5913571 m!6811982))

(assert (=> d!1855088 m!6811976))

(assert (=> d!1855088 m!6812536))

(assert (=> b!5913574 m!6812538))

(assert (=> b!5912483 d!1855088))

(declare-fun d!1855090 () Bool)

(declare-fun res!2479571 () Bool)

(declare-fun e!3621047 () Bool)

(assert (=> d!1855090 (=> res!2479571 e!3621047)))

(assert (=> d!1855090 (= res!2479571 ((_ is Nil!64059) lt!2309292))))

(assert (=> d!1855090 (= (noDuplicate!1821 lt!2309292) e!3621047)))

(declare-fun b!5913580 () Bool)

(declare-fun e!3621048 () Bool)

(assert (=> b!5913580 (= e!3621047 e!3621048)))

(declare-fun res!2479572 () Bool)

(assert (=> b!5913580 (=> (not res!2479572) (not e!3621048))))

(declare-fun contains!19951 (List!64183 Context!10690) Bool)

(assert (=> b!5913580 (= res!2479572 (not (contains!19951 (t!377572 lt!2309292) (h!70507 lt!2309292))))))

(declare-fun b!5913581 () Bool)

(assert (=> b!5913581 (= e!3621048 (noDuplicate!1821 (t!377572 lt!2309292)))))

(assert (= (and d!1855090 (not res!2479571)) b!5913580))

(assert (= (and b!5913580 res!2479572) b!5913581))

(declare-fun m!6812574 () Bool)

(assert (=> b!5913580 m!6812574))

(declare-fun m!6812576 () Bool)

(assert (=> b!5913581 m!6812576))

(assert (=> d!1854804 d!1855090))

(declare-fun d!1855092 () Bool)

(declare-fun e!3621056 () Bool)

(assert (=> d!1855092 e!3621056))

(declare-fun res!2479578 () Bool)

(assert (=> d!1855092 (=> (not res!2479578) (not e!3621056))))

(declare-fun res!2479577 () List!64183)

(assert (=> d!1855092 (= res!2479578 (noDuplicate!1821 res!2479577))))

(declare-fun e!3621057 () Bool)

(assert (=> d!1855092 e!3621057))

(assert (=> d!1855092 (= (choose!44604 z!1189) res!2479577)))

(declare-fun b!5913589 () Bool)

(declare-fun e!3621055 () Bool)

(declare-fun tp!1642937 () Bool)

(assert (=> b!5913589 (= e!3621055 tp!1642937)))

(declare-fun tp!1642938 () Bool)

(declare-fun b!5913588 () Bool)

(assert (=> b!5913588 (= e!3621057 (and (inv!83149 (h!70507 res!2479577)) e!3621055 tp!1642938))))

(declare-fun b!5913590 () Bool)

(assert (=> b!5913590 (= e!3621056 (= (content!11786 res!2479577) z!1189))))

(assert (= b!5913588 b!5913589))

(assert (= (and d!1855092 ((_ is Cons!64059) res!2479577)) b!5913588))

(assert (= (and d!1855092 res!2479578) b!5913590))

(declare-fun m!6812578 () Bool)

(assert (=> d!1855092 m!6812578))

(declare-fun m!6812580 () Bool)

(assert (=> b!5913588 m!6812580))

(declare-fun m!6812582 () Bool)

(assert (=> b!5913590 m!6812582))

(assert (=> d!1854804 d!1855092))

(declare-fun d!1855094 () Bool)

(assert (=> d!1855094 (= (isEmpty!35914 (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326)) (not ((_ is Some!15851) (findConcatSeparation!2266 (regOne!32434 r!7292) (regTwo!32434 r!7292) Nil!64060 s!2326 s!2326))))))

(assert (=> d!1854800 d!1855094))

(assert (=> d!1854762 d!1854990))

(declare-fun b!5913591 () Bool)

(declare-fun e!3621061 () Bool)

(declare-fun lt!2309355 () Bool)

(declare-fun call!468677 () Bool)

(assert (=> b!5913591 (= e!3621061 (= lt!2309355 call!468677))))

(declare-fun b!5913592 () Bool)

(declare-fun res!2479586 () Bool)

(declare-fun e!3621058 () Bool)

(assert (=> b!5913592 (=> (not res!2479586) (not e!3621058))))

(assert (=> b!5913592 (= res!2479586 (not call!468677))))

(declare-fun b!5913593 () Bool)

(declare-fun e!3621059 () Bool)

(assert (=> b!5913593 (= e!3621059 (not lt!2309355))))

(declare-fun b!5913594 () Bool)

(assert (=> b!5913594 (= e!3621058 (= (head!12468 Nil!64060) (c!1050727 (regOne!32434 r!7292))))))

(declare-fun b!5913596 () Bool)

(declare-fun e!3621064 () Bool)

(declare-fun e!3621060 () Bool)

(assert (=> b!5913596 (= e!3621064 e!3621060)))

(declare-fun res!2479579 () Bool)

(assert (=> b!5913596 (=> res!2479579 e!3621060)))

(assert (=> b!5913596 (= res!2479579 call!468677)))

(declare-fun b!5913597 () Bool)

(declare-fun res!2479583 () Bool)

(assert (=> b!5913597 (=> res!2479583 e!3621060)))

(assert (=> b!5913597 (= res!2479583 (not (isEmpty!35916 (tail!11553 Nil!64060))))))

(declare-fun b!5913598 () Bool)

(assert (=> b!5913598 (= e!3621061 e!3621059)))

(declare-fun c!1050983 () Bool)

(assert (=> b!5913598 (= c!1050983 ((_ is EmptyLang!15961) (regOne!32434 r!7292)))))

(declare-fun b!5913599 () Bool)

(declare-fun e!3621062 () Bool)

(assert (=> b!5913599 (= e!3621062 e!3621064)))

(declare-fun res!2479584 () Bool)

(assert (=> b!5913599 (=> (not res!2479584) (not e!3621064))))

(assert (=> b!5913599 (= res!2479584 (not lt!2309355))))

(declare-fun b!5913600 () Bool)

(declare-fun res!2479585 () Bool)

(assert (=> b!5913600 (=> (not res!2479585) (not e!3621058))))

(assert (=> b!5913600 (= res!2479585 (isEmpty!35916 (tail!11553 Nil!64060)))))

(declare-fun b!5913601 () Bool)

(assert (=> b!5913601 (= e!3621060 (not (= (head!12468 Nil!64060) (c!1050727 (regOne!32434 r!7292)))))))

(declare-fun bm!468672 () Bool)

(assert (=> bm!468672 (= call!468677 (isEmpty!35916 Nil!64060))))

(declare-fun b!5913602 () Bool)

(declare-fun res!2479580 () Bool)

(assert (=> b!5913602 (=> res!2479580 e!3621062)))

(assert (=> b!5913602 (= res!2479580 e!3621058)))

(declare-fun res!2479581 () Bool)

(assert (=> b!5913602 (=> (not res!2479581) (not e!3621058))))

(assert (=> b!5913602 (= res!2479581 lt!2309355)))

(declare-fun b!5913603 () Bool)

(declare-fun e!3621063 () Bool)

(assert (=> b!5913603 (= e!3621063 (nullable!5956 (regOne!32434 r!7292)))))

(declare-fun b!5913604 () Bool)

(assert (=> b!5913604 (= e!3621063 (matchR!8144 (derivativeStep!4694 (regOne!32434 r!7292) (head!12468 Nil!64060)) (tail!11553 Nil!64060)))))

(declare-fun b!5913595 () Bool)

(declare-fun res!2479582 () Bool)

(assert (=> b!5913595 (=> res!2479582 e!3621062)))

(assert (=> b!5913595 (= res!2479582 (not ((_ is ElementMatch!15961) (regOne!32434 r!7292))))))

(assert (=> b!5913595 (= e!3621059 e!3621062)))

(declare-fun d!1855096 () Bool)

(assert (=> d!1855096 e!3621061))

(declare-fun c!1050985 () Bool)

(assert (=> d!1855096 (= c!1050985 ((_ is EmptyExpr!15961) (regOne!32434 r!7292)))))

(assert (=> d!1855096 (= lt!2309355 e!3621063)))

(declare-fun c!1050984 () Bool)

(assert (=> d!1855096 (= c!1050984 (isEmpty!35916 Nil!64060))))

(assert (=> d!1855096 (validRegex!7697 (regOne!32434 r!7292))))

(assert (=> d!1855096 (= (matchR!8144 (regOne!32434 r!7292) Nil!64060) lt!2309355)))

(assert (= (and d!1855096 c!1050984) b!5913603))

(assert (= (and d!1855096 (not c!1050984)) b!5913604))

(assert (= (and d!1855096 c!1050985) b!5913591))

(assert (= (and d!1855096 (not c!1050985)) b!5913598))

(assert (= (and b!5913598 c!1050983) b!5913593))

(assert (= (and b!5913598 (not c!1050983)) b!5913595))

(assert (= (and b!5913595 (not res!2479582)) b!5913602))

(assert (= (and b!5913602 res!2479581) b!5913592))

(assert (= (and b!5913592 res!2479586) b!5913600))

(assert (= (and b!5913600 res!2479585) b!5913594))

(assert (= (and b!5913602 (not res!2479580)) b!5913599))

(assert (= (and b!5913599 res!2479584) b!5913596))

(assert (= (and b!5913596 (not res!2479579)) b!5913597))

(assert (= (and b!5913597 (not res!2479583)) b!5913601))

(assert (= (or b!5913591 b!5913592 b!5913596) bm!468672))

(declare-fun m!6812584 () Bool)

(assert (=> b!5913597 m!6812584))

(assert (=> b!5913597 m!6812584))

(declare-fun m!6812586 () Bool)

(assert (=> b!5913597 m!6812586))

(declare-fun m!6812588 () Bool)

(assert (=> b!5913594 m!6812588))

(assert (=> b!5913601 m!6812588))

(declare-fun m!6812590 () Bool)

(assert (=> bm!468672 m!6812590))

(assert (=> b!5913604 m!6812588))

(assert (=> b!5913604 m!6812588))

(declare-fun m!6812592 () Bool)

(assert (=> b!5913604 m!6812592))

(assert (=> b!5913604 m!6812584))

(assert (=> b!5913604 m!6812592))

(assert (=> b!5913604 m!6812584))

(declare-fun m!6812594 () Bool)

(assert (=> b!5913604 m!6812594))

(assert (=> b!5913600 m!6812584))

(assert (=> b!5913600 m!6812584))

(assert (=> b!5913600 m!6812586))

(assert (=> d!1855096 m!6812590))

(assert (=> d!1855096 m!6811856))

(assert (=> b!5913603 m!6812424))

(assert (=> d!1854762 d!1855096))

(assert (=> d!1854762 d!1855038))

(declare-fun bs!1400243 () Bool)

(declare-fun d!1855098 () Bool)

(assert (= bs!1400243 (and d!1855098 d!1855022)))

(declare-fun lambda!322589 () Int)

(assert (=> bs!1400243 (= lambda!322589 lambda!322572)))

(declare-fun bs!1400244 () Bool)

(assert (= bs!1400244 (and d!1855098 d!1854808)))

(assert (=> bs!1400244 (= lambda!322589 lambda!322538)))

(declare-fun bs!1400245 () Bool)

(assert (= bs!1400245 (and d!1855098 d!1854806)))

(assert (=> bs!1400245 (= lambda!322589 lambda!322535)))

(declare-fun bs!1400246 () Bool)

(assert (= bs!1400246 (and d!1855098 d!1855046)))

(assert (=> bs!1400246 (= lambda!322589 lambda!322579)))

(declare-fun bs!1400247 () Bool)

(assert (= bs!1400247 (and d!1855098 d!1855070)))

(assert (=> bs!1400247 (= lambda!322589 lambda!322585)))

(declare-fun bs!1400248 () Bool)

(assert (= bs!1400248 (and d!1855098 d!1854802)))

(assert (=> bs!1400248 (= lambda!322589 lambda!322532)))

(declare-fun bs!1400249 () Bool)

(assert (= bs!1400249 (and d!1855098 d!1854824)))

(assert (=> bs!1400249 (= lambda!322589 lambda!322548)))

(declare-fun bs!1400250 () Bool)

(assert (= bs!1400250 (and d!1855098 d!1854810)))

(assert (=> bs!1400250 (= lambda!322589 lambda!322539)))

(declare-fun b!5913605 () Bool)

(declare-fun e!3621068 () Regex!15961)

(assert (=> b!5913605 (= e!3621068 (Concat!24806 (h!70506 (t!377571 (exprs!5845 (h!70507 zl!343)))) (generalisedConcat!1558 (t!377571 (t!377571 (exprs!5845 (h!70507 zl!343)))))))))

(declare-fun b!5913607 () Bool)

(declare-fun e!3621065 () Regex!15961)

(assert (=> b!5913607 (= e!3621065 (h!70506 (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5913608 () Bool)

(assert (=> b!5913608 (= e!3621068 EmptyExpr!15961)))

(declare-fun b!5913609 () Bool)

(declare-fun e!3621070 () Bool)

(declare-fun lt!2309356 () Regex!15961)

(assert (=> b!5913609 (= e!3621070 (isConcat!914 lt!2309356))))

(declare-fun b!5913610 () Bool)

(assert (=> b!5913610 (= e!3621070 (= lt!2309356 (head!12467 (t!377571 (exprs!5845 (h!70507 zl!343))))))))

(declare-fun e!3621067 () Bool)

(assert (=> d!1855098 e!3621067))

(declare-fun res!2479588 () Bool)

(assert (=> d!1855098 (=> (not res!2479588) (not e!3621067))))

(assert (=> d!1855098 (= res!2479588 (validRegex!7697 lt!2309356))))

(assert (=> d!1855098 (= lt!2309356 e!3621065)))

(declare-fun c!1050986 () Bool)

(declare-fun e!3621066 () Bool)

(assert (=> d!1855098 (= c!1050986 e!3621066)))

(declare-fun res!2479587 () Bool)

(assert (=> d!1855098 (=> (not res!2479587) (not e!3621066))))

(assert (=> d!1855098 (= res!2479587 ((_ is Cons!64058) (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(assert (=> d!1855098 (forall!15046 (t!377571 (exprs!5845 (h!70507 zl!343))) lambda!322589)))

(assert (=> d!1855098 (= (generalisedConcat!1558 (t!377571 (exprs!5845 (h!70507 zl!343)))) lt!2309356)))

(declare-fun b!5913606 () Bool)

(assert (=> b!5913606 (= e!3621065 e!3621068)))

(declare-fun c!1050988 () Bool)

(assert (=> b!5913606 (= c!1050988 ((_ is Cons!64058) (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5913611 () Bool)

(declare-fun e!3621069 () Bool)

(assert (=> b!5913611 (= e!3621069 (isEmptyExpr!1391 lt!2309356))))

(declare-fun b!5913612 () Bool)

(assert (=> b!5913612 (= e!3621067 e!3621069)))

(declare-fun c!1050987 () Bool)

(assert (=> b!5913612 (= c!1050987 (isEmpty!35915 (t!377571 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun b!5913613 () Bool)

(assert (=> b!5913613 (= e!3621066 (isEmpty!35915 (t!377571 (t!377571 (exprs!5845 (h!70507 zl!343))))))))

(declare-fun b!5913614 () Bool)

(assert (=> b!5913614 (= e!3621069 e!3621070)))

(declare-fun c!1050989 () Bool)

(assert (=> b!5913614 (= c!1050989 (isEmpty!35915 (tail!11552 (t!377571 (exprs!5845 (h!70507 zl!343))))))))

(assert (= (and d!1855098 res!2479587) b!5913613))

(assert (= (and d!1855098 c!1050986) b!5913607))

(assert (= (and d!1855098 (not c!1050986)) b!5913606))

(assert (= (and b!5913606 c!1050988) b!5913605))

(assert (= (and b!5913606 (not c!1050988)) b!5913608))

(assert (= (and d!1855098 res!2479588) b!5913612))

(assert (= (and b!5913612 c!1050987) b!5913611))

(assert (= (and b!5913612 (not c!1050987)) b!5913614))

(assert (= (and b!5913614 c!1050989) b!5913610))

(assert (= (and b!5913614 (not c!1050989)) b!5913609))

(declare-fun m!6812596 () Bool)

(assert (=> b!5913609 m!6812596))

(declare-fun m!6812598 () Bool)

(assert (=> b!5913605 m!6812598))

(declare-fun m!6812600 () Bool)

(assert (=> b!5913610 m!6812600))

(declare-fun m!6812602 () Bool)

(assert (=> b!5913611 m!6812602))

(declare-fun m!6812604 () Bool)

(assert (=> d!1855098 m!6812604))

(declare-fun m!6812606 () Bool)

(assert (=> d!1855098 m!6812606))

(assert (=> b!5913612 m!6812014))

(declare-fun m!6812608 () Bool)

(assert (=> b!5913613 m!6812608))

(declare-fun m!6812610 () Bool)

(assert (=> b!5913614 m!6812610))

(assert (=> b!5913614 m!6812610))

(declare-fun m!6812612 () Bool)

(assert (=> b!5913614 m!6812612))

(assert (=> b!5912875 d!1855098))

(assert (=> d!1854814 d!1854992))

(assert (=> d!1854814 d!1854820))

(assert (=> b!5912824 d!1855052))

(declare-fun bs!1400251 () Bool)

(declare-fun d!1855100 () Bool)

(assert (= bs!1400251 (and d!1855100 d!1855022)))

(declare-fun lambda!322590 () Int)

(assert (=> bs!1400251 (= lambda!322590 lambda!322572)))

(declare-fun bs!1400252 () Bool)

(assert (= bs!1400252 (and d!1855100 d!1854808)))

(assert (=> bs!1400252 (= lambda!322590 lambda!322538)))

(declare-fun bs!1400253 () Bool)

(assert (= bs!1400253 (and d!1855100 d!1854806)))

(assert (=> bs!1400253 (= lambda!322590 lambda!322535)))

(declare-fun bs!1400254 () Bool)

(assert (= bs!1400254 (and d!1855100 d!1855046)))

(assert (=> bs!1400254 (= lambda!322590 lambda!322579)))

(declare-fun bs!1400255 () Bool)

(assert (= bs!1400255 (and d!1855100 d!1855070)))

(assert (=> bs!1400255 (= lambda!322590 lambda!322585)))

(declare-fun bs!1400256 () Bool)

(assert (= bs!1400256 (and d!1855100 d!1854824)))

(assert (=> bs!1400256 (= lambda!322590 lambda!322548)))

(declare-fun bs!1400257 () Bool)

(assert (= bs!1400257 (and d!1855100 d!1854810)))

(assert (=> bs!1400257 (= lambda!322590 lambda!322539)))

(declare-fun bs!1400258 () Bool)

(assert (= bs!1400258 (and d!1855100 d!1854802)))

(assert (=> bs!1400258 (= lambda!322590 lambda!322532)))

(declare-fun bs!1400259 () Bool)

(assert (= bs!1400259 (and d!1855100 d!1855098)))

(assert (=> bs!1400259 (= lambda!322590 lambda!322589)))

(assert (=> d!1855100 (= (inv!83149 setElem!40120) (forall!15046 (exprs!5845 setElem!40120) lambda!322590))))

(declare-fun bs!1400260 () Bool)

(assert (= bs!1400260 d!1855100))

(declare-fun m!6812614 () Bool)

(assert (=> bs!1400260 m!6812614))

(assert (=> setNonEmpty!40120 d!1855100))

(declare-fun d!1855102 () Bool)

(assert (=> d!1855102 (= (isEmpty!35915 (t!377571 (unfocusZipperList!1382 zl!343))) ((_ is Nil!64058) (t!377571 (unfocusZipperList!1382 zl!343))))))

(assert (=> b!5912730 d!1855102))

(declare-fun d!1855104 () Bool)

(assert (=> d!1855104 (= (isConcat!914 lt!2309310) ((_ is Concat!24806) lt!2309310))))

(assert (=> b!5912879 d!1855104))

(declare-fun b!5913615 () Bool)

(declare-fun e!3621074 () Bool)

(declare-fun lt!2309357 () Bool)

(declare-fun call!468678 () Bool)

(assert (=> b!5913615 (= e!3621074 (= lt!2309357 call!468678))))

(declare-fun b!5913616 () Bool)

(declare-fun res!2479596 () Bool)

(declare-fun e!3621071 () Bool)

(assert (=> b!5913616 (=> (not res!2479596) (not e!3621071))))

(assert (=> b!5913616 (= res!2479596 (not call!468678))))

(declare-fun b!5913617 () Bool)

(declare-fun e!3621072 () Bool)

(assert (=> b!5913617 (= e!3621072 (not lt!2309357))))

(declare-fun b!5913618 () Bool)

(assert (=> b!5913618 (= e!3621071 (= (head!12468 (tail!11553 s!2326)) (c!1050727 (derivativeStep!4694 r!7292 (head!12468 s!2326)))))))

(declare-fun b!5913620 () Bool)

(declare-fun e!3621077 () Bool)

(declare-fun e!3621073 () Bool)

(assert (=> b!5913620 (= e!3621077 e!3621073)))

(declare-fun res!2479589 () Bool)

(assert (=> b!5913620 (=> res!2479589 e!3621073)))

(assert (=> b!5913620 (= res!2479589 call!468678)))

(declare-fun b!5913621 () Bool)

(declare-fun res!2479593 () Bool)

(assert (=> b!5913621 (=> res!2479593 e!3621073)))

(assert (=> b!5913621 (= res!2479593 (not (isEmpty!35916 (tail!11553 (tail!11553 s!2326)))))))

(declare-fun b!5913622 () Bool)

(assert (=> b!5913622 (= e!3621074 e!3621072)))

(declare-fun c!1050990 () Bool)

(assert (=> b!5913622 (= c!1050990 ((_ is EmptyLang!15961) (derivativeStep!4694 r!7292 (head!12468 s!2326))))))

(declare-fun b!5913623 () Bool)

(declare-fun e!3621075 () Bool)

(assert (=> b!5913623 (= e!3621075 e!3621077)))

(declare-fun res!2479594 () Bool)

(assert (=> b!5913623 (=> (not res!2479594) (not e!3621077))))

(assert (=> b!5913623 (= res!2479594 (not lt!2309357))))

(declare-fun b!5913624 () Bool)

(declare-fun res!2479595 () Bool)

(assert (=> b!5913624 (=> (not res!2479595) (not e!3621071))))

(assert (=> b!5913624 (= res!2479595 (isEmpty!35916 (tail!11553 (tail!11553 s!2326))))))

(declare-fun b!5913625 () Bool)

(assert (=> b!5913625 (= e!3621073 (not (= (head!12468 (tail!11553 s!2326)) (c!1050727 (derivativeStep!4694 r!7292 (head!12468 s!2326))))))))

(declare-fun bm!468673 () Bool)

(assert (=> bm!468673 (= call!468678 (isEmpty!35916 (tail!11553 s!2326)))))

(declare-fun b!5913626 () Bool)

(declare-fun res!2479590 () Bool)

(assert (=> b!5913626 (=> res!2479590 e!3621075)))

(assert (=> b!5913626 (= res!2479590 e!3621071)))

(declare-fun res!2479591 () Bool)

(assert (=> b!5913626 (=> (not res!2479591) (not e!3621071))))

(assert (=> b!5913626 (= res!2479591 lt!2309357)))

(declare-fun b!5913627 () Bool)

(declare-fun e!3621076 () Bool)

(assert (=> b!5913627 (= e!3621076 (nullable!5956 (derivativeStep!4694 r!7292 (head!12468 s!2326))))))

(declare-fun b!5913628 () Bool)

(assert (=> b!5913628 (= e!3621076 (matchR!8144 (derivativeStep!4694 (derivativeStep!4694 r!7292 (head!12468 s!2326)) (head!12468 (tail!11553 s!2326))) (tail!11553 (tail!11553 s!2326))))))

(declare-fun b!5913619 () Bool)

(declare-fun res!2479592 () Bool)

(assert (=> b!5913619 (=> res!2479592 e!3621075)))

(assert (=> b!5913619 (= res!2479592 (not ((_ is ElementMatch!15961) (derivativeStep!4694 r!7292 (head!12468 s!2326)))))))

(assert (=> b!5913619 (= e!3621072 e!3621075)))

(declare-fun d!1855106 () Bool)

(assert (=> d!1855106 e!3621074))

(declare-fun c!1050992 () Bool)

(assert (=> d!1855106 (= c!1050992 ((_ is EmptyExpr!15961) (derivativeStep!4694 r!7292 (head!12468 s!2326))))))

(assert (=> d!1855106 (= lt!2309357 e!3621076)))

(declare-fun c!1050991 () Bool)

(assert (=> d!1855106 (= c!1050991 (isEmpty!35916 (tail!11553 s!2326)))))

(assert (=> d!1855106 (validRegex!7697 (derivativeStep!4694 r!7292 (head!12468 s!2326)))))

(assert (=> d!1855106 (= (matchR!8144 (derivativeStep!4694 r!7292 (head!12468 s!2326)) (tail!11553 s!2326)) lt!2309357)))

(assert (= (and d!1855106 c!1050991) b!5913627))

(assert (= (and d!1855106 (not c!1050991)) b!5913628))

(assert (= (and d!1855106 c!1050992) b!5913615))

(assert (= (and d!1855106 (not c!1050992)) b!5913622))

(assert (= (and b!5913622 c!1050990) b!5913617))

(assert (= (and b!5913622 (not c!1050990)) b!5913619))

(assert (= (and b!5913619 (not res!2479592)) b!5913626))

(assert (= (and b!5913626 res!2479591) b!5913616))

(assert (= (and b!5913616 res!2479596) b!5913624))

(assert (= (and b!5913624 res!2479595) b!5913618))

(assert (= (and b!5913626 (not res!2479590)) b!5913623))

(assert (= (and b!5913623 res!2479594) b!5913620))

(assert (= (and b!5913620 (not res!2479589)) b!5913621))

(assert (= (and b!5913621 (not res!2479593)) b!5913625))

(assert (= (or b!5913615 b!5913616 b!5913620) bm!468673))

(assert (=> b!5913621 m!6811980))

(assert (=> b!5913621 m!6812490))

(assert (=> b!5913621 m!6812490))

(declare-fun m!6812616 () Bool)

(assert (=> b!5913621 m!6812616))

(assert (=> b!5913618 m!6811980))

(assert (=> b!5913618 m!6812486))

(assert (=> b!5913625 m!6811980))

(assert (=> b!5913625 m!6812486))

(assert (=> bm!468673 m!6811980))

(assert (=> bm!468673 m!6811982))

(assert (=> b!5913628 m!6811980))

(assert (=> b!5913628 m!6812486))

(assert (=> b!5913628 m!6811986))

(assert (=> b!5913628 m!6812486))

(declare-fun m!6812618 () Bool)

(assert (=> b!5913628 m!6812618))

(assert (=> b!5913628 m!6811980))

(assert (=> b!5913628 m!6812490))

(assert (=> b!5913628 m!6812618))

(assert (=> b!5913628 m!6812490))

(declare-fun m!6812620 () Bool)

(assert (=> b!5913628 m!6812620))

(assert (=> b!5913624 m!6811980))

(assert (=> b!5913624 m!6812490))

(assert (=> b!5913624 m!6812490))

(assert (=> b!5913624 m!6812616))

(assert (=> d!1855106 m!6811980))

(assert (=> d!1855106 m!6811982))

(assert (=> d!1855106 m!6811986))

(declare-fun m!6812622 () Bool)

(assert (=> d!1855106 m!6812622))

(assert (=> b!5913627 m!6811986))

(declare-fun m!6812624 () Bool)

(assert (=> b!5913627 m!6812624))

(assert (=> b!5912827 d!1855106))

(declare-fun b!5913649 () Bool)

(declare-fun e!3621090 () Regex!15961)

(declare-fun e!3621089 () Regex!15961)

(assert (=> b!5913649 (= e!3621090 e!3621089)))

(declare-fun c!1051005 () Bool)

(assert (=> b!5913649 (= c!1051005 ((_ is ElementMatch!15961) r!7292))))

(declare-fun b!5913650 () Bool)

(declare-fun c!1051007 () Bool)

(assert (=> b!5913650 (= c!1051007 (nullable!5956 (regOne!32434 r!7292)))))

(declare-fun e!3621091 () Regex!15961)

(declare-fun e!3621092 () Regex!15961)

(assert (=> b!5913650 (= e!3621091 e!3621092)))

(declare-fun b!5913651 () Bool)

(declare-fun e!3621088 () Regex!15961)

(assert (=> b!5913651 (= e!3621088 e!3621091)))

(declare-fun c!1051006 () Bool)

(assert (=> b!5913651 (= c!1051006 ((_ is Star!15961) r!7292))))

(declare-fun call!468690 () Regex!15961)

(declare-fun call!468688 () Regex!15961)

(declare-fun b!5913652 () Bool)

(assert (=> b!5913652 (= e!3621092 (Union!15961 (Concat!24806 call!468690 (regTwo!32434 r!7292)) call!468688))))

(declare-fun bm!468682 () Bool)

(declare-fun call!468689 () Regex!15961)

(assert (=> bm!468682 (= call!468688 call!468689)))

(declare-fun b!5913653 () Bool)

(assert (=> b!5913653 (= e!3621090 EmptyLang!15961)))

(declare-fun c!1051003 () Bool)

(declare-fun bm!468683 () Bool)

(assert (=> bm!468683 (= call!468689 (derivativeStep!4694 (ite c!1051003 (regOne!32435 r!7292) (ite c!1051007 (regTwo!32434 r!7292) (regOne!32434 r!7292))) (head!12468 s!2326)))))

(declare-fun bm!468684 () Bool)

(declare-fun call!468687 () Regex!15961)

(assert (=> bm!468684 (= call!468690 call!468687)))

(declare-fun b!5913654 () Bool)

(assert (=> b!5913654 (= e!3621088 (Union!15961 call!468689 call!468687))))

(declare-fun b!5913655 () Bool)

(assert (=> b!5913655 (= e!3621089 (ite (= (head!12468 s!2326) (c!1050727 r!7292)) EmptyExpr!15961 EmptyLang!15961))))

(declare-fun b!5913657 () Bool)

(assert (=> b!5913657 (= c!1051003 ((_ is Union!15961) r!7292))))

(assert (=> b!5913657 (= e!3621089 e!3621088)))

(declare-fun d!1855108 () Bool)

(declare-fun lt!2309360 () Regex!15961)

(assert (=> d!1855108 (validRegex!7697 lt!2309360)))

(assert (=> d!1855108 (= lt!2309360 e!3621090)))

(declare-fun c!1051004 () Bool)

(assert (=> d!1855108 (= c!1051004 (or ((_ is EmptyExpr!15961) r!7292) ((_ is EmptyLang!15961) r!7292)))))

(assert (=> d!1855108 (validRegex!7697 r!7292)))

(assert (=> d!1855108 (= (derivativeStep!4694 r!7292 (head!12468 s!2326)) lt!2309360)))

(declare-fun b!5913656 () Bool)

(assert (=> b!5913656 (= e!3621091 (Concat!24806 call!468690 r!7292))))

(declare-fun b!5913658 () Bool)

(assert (=> b!5913658 (= e!3621092 (Union!15961 (Concat!24806 call!468688 (regTwo!32434 r!7292)) EmptyLang!15961))))

(declare-fun bm!468685 () Bool)

(assert (=> bm!468685 (= call!468687 (derivativeStep!4694 (ite c!1051003 (regTwo!32435 r!7292) (ite c!1051006 (reg!16290 r!7292) (regOne!32434 r!7292))) (head!12468 s!2326)))))

(assert (= (and d!1855108 c!1051004) b!5913653))

(assert (= (and d!1855108 (not c!1051004)) b!5913649))

(assert (= (and b!5913649 c!1051005) b!5913655))

(assert (= (and b!5913649 (not c!1051005)) b!5913657))

(assert (= (and b!5913657 c!1051003) b!5913654))

(assert (= (and b!5913657 (not c!1051003)) b!5913651))

(assert (= (and b!5913651 c!1051006) b!5913656))

(assert (= (and b!5913651 (not c!1051006)) b!5913650))

(assert (= (and b!5913650 c!1051007) b!5913652))

(assert (= (and b!5913650 (not c!1051007)) b!5913658))

(assert (= (or b!5913652 b!5913658) bm!468682))

(assert (= (or b!5913656 b!5913652) bm!468684))

(assert (= (or b!5913654 bm!468684) bm!468685))

(assert (= (or b!5913654 bm!468682) bm!468683))

(assert (=> b!5913650 m!6812424))

(assert (=> bm!468683 m!6811984))

(declare-fun m!6812626 () Bool)

(assert (=> bm!468683 m!6812626))

(declare-fun m!6812628 () Bool)

(assert (=> d!1855108 m!6812628))

(assert (=> d!1855108 m!6811744))

(assert (=> bm!468685 m!6811984))

(declare-fun m!6812630 () Bool)

(assert (=> bm!468685 m!6812630))

(assert (=> b!5912827 d!1855108))

(assert (=> b!5912827 d!1855052))

(assert (=> b!5912827 d!1855008))

(declare-fun b!5913660 () Bool)

(declare-fun e!3621093 () Bool)

(declare-fun tp!1642943 () Bool)

(declare-fun tp!1642942 () Bool)

(assert (=> b!5913660 (= e!3621093 (and tp!1642943 tp!1642942))))

(declare-fun b!5913659 () Bool)

(assert (=> b!5913659 (= e!3621093 tp_is_empty!41175)))

(assert (=> b!5912904 (= tp!1642731 e!3621093)))

(declare-fun b!5913661 () Bool)

(declare-fun tp!1642940 () Bool)

(assert (=> b!5913661 (= e!3621093 tp!1642940)))

(declare-fun b!5913662 () Bool)

(declare-fun tp!1642939 () Bool)

(declare-fun tp!1642941 () Bool)

(assert (=> b!5913662 (= e!3621093 (and tp!1642939 tp!1642941))))

(assert (= (and b!5912904 ((_ is ElementMatch!15961) (regOne!32435 (reg!16290 r!7292)))) b!5913659))

(assert (= (and b!5912904 ((_ is Concat!24806) (regOne!32435 (reg!16290 r!7292)))) b!5913660))

(assert (= (and b!5912904 ((_ is Star!15961) (regOne!32435 (reg!16290 r!7292)))) b!5913661))

(assert (= (and b!5912904 ((_ is Union!15961) (regOne!32435 (reg!16290 r!7292)))) b!5913662))

(declare-fun b!5913664 () Bool)

(declare-fun e!3621094 () Bool)

(declare-fun tp!1642948 () Bool)

(declare-fun tp!1642947 () Bool)

(assert (=> b!5913664 (= e!3621094 (and tp!1642948 tp!1642947))))

(declare-fun b!5913663 () Bool)

(assert (=> b!5913663 (= e!3621094 tp_is_empty!41175)))

(assert (=> b!5912904 (= tp!1642733 e!3621094)))

(declare-fun b!5913665 () Bool)

(declare-fun tp!1642945 () Bool)

(assert (=> b!5913665 (= e!3621094 tp!1642945)))

(declare-fun b!5913666 () Bool)

(declare-fun tp!1642944 () Bool)

(declare-fun tp!1642946 () Bool)

(assert (=> b!5913666 (= e!3621094 (and tp!1642944 tp!1642946))))

(assert (= (and b!5912904 ((_ is ElementMatch!15961) (regTwo!32435 (reg!16290 r!7292)))) b!5913663))

(assert (= (and b!5912904 ((_ is Concat!24806) (regTwo!32435 (reg!16290 r!7292)))) b!5913664))

(assert (= (and b!5912904 ((_ is Star!15961) (regTwo!32435 (reg!16290 r!7292)))) b!5913665))

(assert (= (and b!5912904 ((_ is Union!15961) (regTwo!32435 (reg!16290 r!7292)))) b!5913666))

(declare-fun b!5913668 () Bool)

(declare-fun e!3621095 () Bool)

(declare-fun tp!1642953 () Bool)

(declare-fun tp!1642952 () Bool)

(assert (=> b!5913668 (= e!3621095 (and tp!1642953 tp!1642952))))

(declare-fun b!5913667 () Bool)

(assert (=> b!5913667 (= e!3621095 tp_is_empty!41175)))

(assert (=> b!5912918 (= tp!1642752 e!3621095)))

(declare-fun b!5913669 () Bool)

(declare-fun tp!1642950 () Bool)

(assert (=> b!5913669 (= e!3621095 tp!1642950)))

(declare-fun b!5913670 () Bool)

(declare-fun tp!1642949 () Bool)

(declare-fun tp!1642951 () Bool)

(assert (=> b!5913670 (= e!3621095 (and tp!1642949 tp!1642951))))

(assert (= (and b!5912918 ((_ is ElementMatch!15961) (h!70506 (exprs!5845 setElem!40114)))) b!5913667))

(assert (= (and b!5912918 ((_ is Concat!24806) (h!70506 (exprs!5845 setElem!40114)))) b!5913668))

(assert (= (and b!5912918 ((_ is Star!15961) (h!70506 (exprs!5845 setElem!40114)))) b!5913669))

(assert (= (and b!5912918 ((_ is Union!15961) (h!70506 (exprs!5845 setElem!40114)))) b!5913670))

(declare-fun b!5913671 () Bool)

(declare-fun e!3621096 () Bool)

(declare-fun tp!1642954 () Bool)

(declare-fun tp!1642955 () Bool)

(assert (=> b!5913671 (= e!3621096 (and tp!1642954 tp!1642955))))

(assert (=> b!5912918 (= tp!1642753 e!3621096)))

(assert (= (and b!5912918 ((_ is Cons!64058) (t!377571 (exprs!5845 setElem!40114)))) b!5913671))

(declare-fun b!5913673 () Bool)

(declare-fun e!3621098 () Bool)

(declare-fun tp!1642956 () Bool)

(assert (=> b!5913673 (= e!3621098 tp!1642956)))

(declare-fun e!3621097 () Bool)

(declare-fun b!5913672 () Bool)

(declare-fun tp!1642957 () Bool)

(assert (=> b!5913672 (= e!3621097 (and (inv!83149 (h!70507 (t!377572 (t!377572 zl!343)))) e!3621098 tp!1642957))))

(assert (=> b!5912925 (= tp!1642759 e!3621097)))

(assert (= b!5913672 b!5913673))

(assert (= (and b!5912925 ((_ is Cons!64059) (t!377572 (t!377572 zl!343)))) b!5913672))

(declare-fun m!6812632 () Bool)

(assert (=> b!5913672 m!6812632))

(declare-fun b!5913674 () Bool)

(declare-fun e!3621099 () Bool)

(declare-fun tp!1642958 () Bool)

(declare-fun tp!1642959 () Bool)

(assert (=> b!5913674 (= e!3621099 (and tp!1642958 tp!1642959))))

(assert (=> b!5912926 (= tp!1642758 e!3621099)))

(assert (= (and b!5912926 ((_ is Cons!64058) (exprs!5845 (h!70507 (t!377572 zl!343))))) b!5913674))

(declare-fun b!5913676 () Bool)

(declare-fun e!3621100 () Bool)

(declare-fun tp!1642964 () Bool)

(declare-fun tp!1642963 () Bool)

(assert (=> b!5913676 (= e!3621100 (and tp!1642964 tp!1642963))))

(declare-fun b!5913675 () Bool)

(assert (=> b!5913675 (= e!3621100 tp_is_empty!41175)))

(assert (=> b!5912912 (= tp!1642743 e!3621100)))

(declare-fun b!5913677 () Bool)

(declare-fun tp!1642961 () Bool)

(assert (=> b!5913677 (= e!3621100 tp!1642961)))

(declare-fun b!5913678 () Bool)

(declare-fun tp!1642960 () Bool)

(declare-fun tp!1642962 () Bool)

(assert (=> b!5913678 (= e!3621100 (and tp!1642960 tp!1642962))))

(assert (= (and b!5912912 ((_ is ElementMatch!15961) (reg!16290 (regOne!32434 r!7292)))) b!5913675))

(assert (= (and b!5912912 ((_ is Concat!24806) (reg!16290 (regOne!32434 r!7292)))) b!5913676))

(assert (= (and b!5912912 ((_ is Star!15961) (reg!16290 (regOne!32434 r!7292)))) b!5913677))

(assert (= (and b!5912912 ((_ is Union!15961) (reg!16290 (regOne!32434 r!7292)))) b!5913678))

(declare-fun b!5913680 () Bool)

(declare-fun e!3621101 () Bool)

(declare-fun tp!1642969 () Bool)

(declare-fun tp!1642968 () Bool)

(assert (=> b!5913680 (= e!3621101 (and tp!1642969 tp!1642968))))

(declare-fun b!5913679 () Bool)

(assert (=> b!5913679 (= e!3621101 tp_is_empty!41175)))

(assert (=> b!5912911 (= tp!1642746 e!3621101)))

(declare-fun b!5913681 () Bool)

(declare-fun tp!1642966 () Bool)

(assert (=> b!5913681 (= e!3621101 tp!1642966)))

(declare-fun b!5913682 () Bool)

(declare-fun tp!1642965 () Bool)

(declare-fun tp!1642967 () Bool)

(assert (=> b!5913682 (= e!3621101 (and tp!1642965 tp!1642967))))

(assert (= (and b!5912911 ((_ is ElementMatch!15961) (regOne!32434 (regOne!32434 r!7292)))) b!5913679))

(assert (= (and b!5912911 ((_ is Concat!24806) (regOne!32434 (regOne!32434 r!7292)))) b!5913680))

(assert (= (and b!5912911 ((_ is Star!15961) (regOne!32434 (regOne!32434 r!7292)))) b!5913681))

(assert (= (and b!5912911 ((_ is Union!15961) (regOne!32434 (regOne!32434 r!7292)))) b!5913682))

(declare-fun b!5913684 () Bool)

(declare-fun e!3621102 () Bool)

(declare-fun tp!1642974 () Bool)

(declare-fun tp!1642973 () Bool)

(assert (=> b!5913684 (= e!3621102 (and tp!1642974 tp!1642973))))

(declare-fun b!5913683 () Bool)

(assert (=> b!5913683 (= e!3621102 tp_is_empty!41175)))

(assert (=> b!5912911 (= tp!1642745 e!3621102)))

(declare-fun b!5913685 () Bool)

(declare-fun tp!1642971 () Bool)

(assert (=> b!5913685 (= e!3621102 tp!1642971)))

(declare-fun b!5913686 () Bool)

(declare-fun tp!1642970 () Bool)

(declare-fun tp!1642972 () Bool)

(assert (=> b!5913686 (= e!3621102 (and tp!1642970 tp!1642972))))

(assert (= (and b!5912911 ((_ is ElementMatch!15961) (regTwo!32434 (regOne!32434 r!7292)))) b!5913683))

(assert (= (and b!5912911 ((_ is Concat!24806) (regTwo!32434 (regOne!32434 r!7292)))) b!5913684))

(assert (= (and b!5912911 ((_ is Star!15961) (regTwo!32434 (regOne!32434 r!7292)))) b!5913685))

(assert (= (and b!5912911 ((_ is Union!15961) (regTwo!32434 (regOne!32434 r!7292)))) b!5913686))

(declare-fun b!5913688 () Bool)

(declare-fun e!3621103 () Bool)

(declare-fun tp!1642979 () Bool)

(declare-fun tp!1642978 () Bool)

(assert (=> b!5913688 (= e!3621103 (and tp!1642979 tp!1642978))))

(declare-fun b!5913687 () Bool)

(assert (=> b!5913687 (= e!3621103 tp_is_empty!41175)))

(assert (=> b!5912913 (= tp!1642742 e!3621103)))

(declare-fun b!5913689 () Bool)

(declare-fun tp!1642976 () Bool)

(assert (=> b!5913689 (= e!3621103 tp!1642976)))

(declare-fun b!5913690 () Bool)

(declare-fun tp!1642975 () Bool)

(declare-fun tp!1642977 () Bool)

(assert (=> b!5913690 (= e!3621103 (and tp!1642975 tp!1642977))))

(assert (= (and b!5912913 ((_ is ElementMatch!15961) (regOne!32435 (regOne!32434 r!7292)))) b!5913687))

(assert (= (and b!5912913 ((_ is Concat!24806) (regOne!32435 (regOne!32434 r!7292)))) b!5913688))

(assert (= (and b!5912913 ((_ is Star!15961) (regOne!32435 (regOne!32434 r!7292)))) b!5913689))

(assert (= (and b!5912913 ((_ is Union!15961) (regOne!32435 (regOne!32434 r!7292)))) b!5913690))

(declare-fun b!5913692 () Bool)

(declare-fun e!3621104 () Bool)

(declare-fun tp!1642984 () Bool)

(declare-fun tp!1642983 () Bool)

(assert (=> b!5913692 (= e!3621104 (and tp!1642984 tp!1642983))))

(declare-fun b!5913691 () Bool)

(assert (=> b!5913691 (= e!3621104 tp_is_empty!41175)))

(assert (=> b!5912913 (= tp!1642744 e!3621104)))

(declare-fun b!5913693 () Bool)

(declare-fun tp!1642981 () Bool)

(assert (=> b!5913693 (= e!3621104 tp!1642981)))

(declare-fun b!5913694 () Bool)

(declare-fun tp!1642980 () Bool)

(declare-fun tp!1642982 () Bool)

(assert (=> b!5913694 (= e!3621104 (and tp!1642980 tp!1642982))))

(assert (= (and b!5912913 ((_ is ElementMatch!15961) (regTwo!32435 (regOne!32434 r!7292)))) b!5913691))

(assert (= (and b!5912913 ((_ is Concat!24806) (regTwo!32435 (regOne!32434 r!7292)))) b!5913692))

(assert (= (and b!5912913 ((_ is Star!15961) (regTwo!32435 (regOne!32434 r!7292)))) b!5913693))

(assert (= (and b!5912913 ((_ is Union!15961) (regTwo!32435 (regOne!32434 r!7292)))) b!5913694))

(declare-fun b!5913696 () Bool)

(declare-fun e!3621105 () Bool)

(declare-fun tp!1642989 () Bool)

(declare-fun tp!1642988 () Bool)

(assert (=> b!5913696 (= e!3621105 (and tp!1642989 tp!1642988))))

(declare-fun b!5913695 () Bool)

(assert (=> b!5913695 (= e!3621105 tp_is_empty!41175)))

(assert (=> b!5912934 (= tp!1642767 e!3621105)))

(declare-fun b!5913697 () Bool)

(declare-fun tp!1642986 () Bool)

(assert (=> b!5913697 (= e!3621105 tp!1642986)))

(declare-fun b!5913698 () Bool)

(declare-fun tp!1642985 () Bool)

(declare-fun tp!1642987 () Bool)

(assert (=> b!5913698 (= e!3621105 (and tp!1642985 tp!1642987))))

(assert (= (and b!5912934 ((_ is ElementMatch!15961) (reg!16290 (regOne!32435 r!7292)))) b!5913695))

(assert (= (and b!5912934 ((_ is Concat!24806) (reg!16290 (regOne!32435 r!7292)))) b!5913696))

(assert (= (and b!5912934 ((_ is Star!15961) (reg!16290 (regOne!32435 r!7292)))) b!5913697))

(assert (= (and b!5912934 ((_ is Union!15961) (reg!16290 (regOne!32435 r!7292)))) b!5913698))

(declare-fun b!5913700 () Bool)

(declare-fun e!3621106 () Bool)

(declare-fun tp!1642994 () Bool)

(declare-fun tp!1642993 () Bool)

(assert (=> b!5913700 (= e!3621106 (and tp!1642994 tp!1642993))))

(declare-fun b!5913699 () Bool)

(assert (=> b!5913699 (= e!3621106 tp_is_empty!41175)))

(assert (=> b!5912933 (= tp!1642770 e!3621106)))

(declare-fun b!5913701 () Bool)

(declare-fun tp!1642991 () Bool)

(assert (=> b!5913701 (= e!3621106 tp!1642991)))

(declare-fun b!5913702 () Bool)

(declare-fun tp!1642990 () Bool)

(declare-fun tp!1642992 () Bool)

(assert (=> b!5913702 (= e!3621106 (and tp!1642990 tp!1642992))))

(assert (= (and b!5912933 ((_ is ElementMatch!15961) (regOne!32434 (regOne!32435 r!7292)))) b!5913699))

(assert (= (and b!5912933 ((_ is Concat!24806) (regOne!32434 (regOne!32435 r!7292)))) b!5913700))

(assert (= (and b!5912933 ((_ is Star!15961) (regOne!32434 (regOne!32435 r!7292)))) b!5913701))

(assert (= (and b!5912933 ((_ is Union!15961) (regOne!32434 (regOne!32435 r!7292)))) b!5913702))

(declare-fun b!5913704 () Bool)

(declare-fun e!3621107 () Bool)

(declare-fun tp!1642999 () Bool)

(declare-fun tp!1642998 () Bool)

(assert (=> b!5913704 (= e!3621107 (and tp!1642999 tp!1642998))))

(declare-fun b!5913703 () Bool)

(assert (=> b!5913703 (= e!3621107 tp_is_empty!41175)))

(assert (=> b!5912933 (= tp!1642769 e!3621107)))

(declare-fun b!5913705 () Bool)

(declare-fun tp!1642996 () Bool)

(assert (=> b!5913705 (= e!3621107 tp!1642996)))

(declare-fun b!5913706 () Bool)

(declare-fun tp!1642995 () Bool)

(declare-fun tp!1642997 () Bool)

(assert (=> b!5913706 (= e!3621107 (and tp!1642995 tp!1642997))))

(assert (= (and b!5912933 ((_ is ElementMatch!15961) (regTwo!32434 (regOne!32435 r!7292)))) b!5913703))

(assert (= (and b!5912933 ((_ is Concat!24806) (regTwo!32434 (regOne!32435 r!7292)))) b!5913704))

(assert (= (and b!5912933 ((_ is Star!15961) (regTwo!32434 (regOne!32435 r!7292)))) b!5913705))

(assert (= (and b!5912933 ((_ is Union!15961) (regTwo!32434 (regOne!32435 r!7292)))) b!5913706))

(declare-fun b!5913708 () Bool)

(declare-fun e!3621108 () Bool)

(declare-fun tp!1643004 () Bool)

(declare-fun tp!1643003 () Bool)

(assert (=> b!5913708 (= e!3621108 (and tp!1643004 tp!1643003))))

(declare-fun b!5913707 () Bool)

(assert (=> b!5913707 (= e!3621108 tp_is_empty!41175)))

(assert (=> b!5912935 (= tp!1642766 e!3621108)))

(declare-fun b!5913709 () Bool)

(declare-fun tp!1643001 () Bool)

(assert (=> b!5913709 (= e!3621108 tp!1643001)))

(declare-fun b!5913710 () Bool)

(declare-fun tp!1643000 () Bool)

(declare-fun tp!1643002 () Bool)

(assert (=> b!5913710 (= e!3621108 (and tp!1643000 tp!1643002))))

(assert (= (and b!5912935 ((_ is ElementMatch!15961) (regOne!32435 (regOne!32435 r!7292)))) b!5913707))

(assert (= (and b!5912935 ((_ is Concat!24806) (regOne!32435 (regOne!32435 r!7292)))) b!5913708))

(assert (= (and b!5912935 ((_ is Star!15961) (regOne!32435 (regOne!32435 r!7292)))) b!5913709))

(assert (= (and b!5912935 ((_ is Union!15961) (regOne!32435 (regOne!32435 r!7292)))) b!5913710))

(declare-fun b!5913712 () Bool)

(declare-fun e!3621109 () Bool)

(declare-fun tp!1643009 () Bool)

(declare-fun tp!1643008 () Bool)

(assert (=> b!5913712 (= e!3621109 (and tp!1643009 tp!1643008))))

(declare-fun b!5913711 () Bool)

(assert (=> b!5913711 (= e!3621109 tp_is_empty!41175)))

(assert (=> b!5912935 (= tp!1642768 e!3621109)))

(declare-fun b!5913713 () Bool)

(declare-fun tp!1643006 () Bool)

(assert (=> b!5913713 (= e!3621109 tp!1643006)))

(declare-fun b!5913714 () Bool)

(declare-fun tp!1643005 () Bool)

(declare-fun tp!1643007 () Bool)

(assert (=> b!5913714 (= e!3621109 (and tp!1643005 tp!1643007))))

(assert (= (and b!5912935 ((_ is ElementMatch!15961) (regTwo!32435 (regOne!32435 r!7292)))) b!5913711))

(assert (= (and b!5912935 ((_ is Concat!24806) (regTwo!32435 (regOne!32435 r!7292)))) b!5913712))

(assert (= (and b!5912935 ((_ is Star!15961) (regTwo!32435 (regOne!32435 r!7292)))) b!5913713))

(assert (= (and b!5912935 ((_ is Union!15961) (regTwo!32435 (regOne!32435 r!7292)))) b!5913714))

(declare-fun b!5913715 () Bool)

(declare-fun e!3621110 () Bool)

(declare-fun tp!1643010 () Bool)

(assert (=> b!5913715 (= e!3621110 (and tp_is_empty!41175 tp!1643010))))

(assert (=> b!5912944 (= tp!1642778 e!3621110)))

(assert (= (and b!5912944 ((_ is Cons!64060) (t!377573 (t!377573 s!2326)))) b!5913715))

(declare-fun b!5913717 () Bool)

(declare-fun e!3621111 () Bool)

(declare-fun tp!1643015 () Bool)

(declare-fun tp!1643014 () Bool)

(assert (=> b!5913717 (= e!3621111 (and tp!1643015 tp!1643014))))

(declare-fun b!5913716 () Bool)

(assert (=> b!5913716 (= e!3621111 tp_is_empty!41175)))

(assert (=> b!5912915 (= tp!1642751 e!3621111)))

(declare-fun b!5913718 () Bool)

(declare-fun tp!1643012 () Bool)

(assert (=> b!5913718 (= e!3621111 tp!1643012)))

(declare-fun b!5913719 () Bool)

(declare-fun tp!1643011 () Bool)

(declare-fun tp!1643013 () Bool)

(assert (=> b!5913719 (= e!3621111 (and tp!1643011 tp!1643013))))

(assert (= (and b!5912915 ((_ is ElementMatch!15961) (regOne!32434 (regTwo!32434 r!7292)))) b!5913716))

(assert (= (and b!5912915 ((_ is Concat!24806) (regOne!32434 (regTwo!32434 r!7292)))) b!5913717))

(assert (= (and b!5912915 ((_ is Star!15961) (regOne!32434 (regTwo!32434 r!7292)))) b!5913718))

(assert (= (and b!5912915 ((_ is Union!15961) (regOne!32434 (regTwo!32434 r!7292)))) b!5913719))

(declare-fun b!5913721 () Bool)

(declare-fun e!3621112 () Bool)

(declare-fun tp!1643020 () Bool)

(declare-fun tp!1643019 () Bool)

(assert (=> b!5913721 (= e!3621112 (and tp!1643020 tp!1643019))))

(declare-fun b!5913720 () Bool)

(assert (=> b!5913720 (= e!3621112 tp_is_empty!41175)))

(assert (=> b!5912915 (= tp!1642750 e!3621112)))

(declare-fun b!5913722 () Bool)

(declare-fun tp!1643017 () Bool)

(assert (=> b!5913722 (= e!3621112 tp!1643017)))

(declare-fun b!5913723 () Bool)

(declare-fun tp!1643016 () Bool)

(declare-fun tp!1643018 () Bool)

(assert (=> b!5913723 (= e!3621112 (and tp!1643016 tp!1643018))))

(assert (= (and b!5912915 ((_ is ElementMatch!15961) (regTwo!32434 (regTwo!32434 r!7292)))) b!5913720))

(assert (= (and b!5912915 ((_ is Concat!24806) (regTwo!32434 (regTwo!32434 r!7292)))) b!5913721))

(assert (= (and b!5912915 ((_ is Star!15961) (regTwo!32434 (regTwo!32434 r!7292)))) b!5913722))

(assert (= (and b!5912915 ((_ is Union!15961) (regTwo!32434 (regTwo!32434 r!7292)))) b!5913723))

(declare-fun b!5913725 () Bool)

(declare-fun e!3621113 () Bool)

(declare-fun tp!1643025 () Bool)

(declare-fun tp!1643024 () Bool)

(assert (=> b!5913725 (= e!3621113 (and tp!1643025 tp!1643024))))

(declare-fun b!5913724 () Bool)

(assert (=> b!5913724 (= e!3621113 tp_is_empty!41175)))

(assert (=> b!5912916 (= tp!1642748 e!3621113)))

(declare-fun b!5913726 () Bool)

(declare-fun tp!1643022 () Bool)

(assert (=> b!5913726 (= e!3621113 tp!1643022)))

(declare-fun b!5913727 () Bool)

(declare-fun tp!1643021 () Bool)

(declare-fun tp!1643023 () Bool)

(assert (=> b!5913727 (= e!3621113 (and tp!1643021 tp!1643023))))

(assert (= (and b!5912916 ((_ is ElementMatch!15961) (reg!16290 (regTwo!32434 r!7292)))) b!5913724))

(assert (= (and b!5912916 ((_ is Concat!24806) (reg!16290 (regTwo!32434 r!7292)))) b!5913725))

(assert (= (and b!5912916 ((_ is Star!15961) (reg!16290 (regTwo!32434 r!7292)))) b!5913726))

(assert (= (and b!5912916 ((_ is Union!15961) (reg!16290 (regTwo!32434 r!7292)))) b!5913727))

(declare-fun condSetEmpty!40122 () Bool)

(assert (=> setNonEmpty!40120 (= condSetEmpty!40122 (= setRest!40120 ((as const (Array Context!10690 Bool)) false)))))

(declare-fun setRes!40122 () Bool)

(assert (=> setNonEmpty!40120 (= tp!1642764 setRes!40122)))

(declare-fun setIsEmpty!40122 () Bool)

(assert (=> setIsEmpty!40122 setRes!40122))

(declare-fun setElem!40122 () Context!10690)

(declare-fun tp!1643026 () Bool)

(declare-fun e!3621114 () Bool)

(declare-fun setNonEmpty!40122 () Bool)

(assert (=> setNonEmpty!40122 (= setRes!40122 (and tp!1643026 (inv!83149 setElem!40122) e!3621114))))

(declare-fun setRest!40122 () (InoxSet Context!10690))

(assert (=> setNonEmpty!40122 (= setRest!40120 ((_ map or) (store ((as const (Array Context!10690 Bool)) false) setElem!40122 true) setRest!40122))))

(declare-fun b!5913728 () Bool)

(declare-fun tp!1643027 () Bool)

(assert (=> b!5913728 (= e!3621114 tp!1643027)))

(assert (= (and setNonEmpty!40120 condSetEmpty!40122) setIsEmpty!40122))

(assert (= (and setNonEmpty!40120 (not condSetEmpty!40122)) setNonEmpty!40122))

(assert (= setNonEmpty!40122 b!5913728))

(declare-fun m!6812634 () Bool)

(assert (=> setNonEmpty!40122 m!6812634))

(declare-fun b!5913730 () Bool)

(declare-fun e!3621115 () Bool)

(declare-fun tp!1643032 () Bool)

(declare-fun tp!1643031 () Bool)

(assert (=> b!5913730 (= e!3621115 (and tp!1643032 tp!1643031))))

(declare-fun b!5913729 () Bool)

(assert (=> b!5913729 (= e!3621115 tp_is_empty!41175)))

(assert (=> b!5912937 (= tp!1642775 e!3621115)))

(declare-fun b!5913731 () Bool)

(declare-fun tp!1643029 () Bool)

(assert (=> b!5913731 (= e!3621115 tp!1643029)))

(declare-fun b!5913732 () Bool)

(declare-fun tp!1643028 () Bool)

(declare-fun tp!1643030 () Bool)

(assert (=> b!5913732 (= e!3621115 (and tp!1643028 tp!1643030))))

(assert (= (and b!5912937 ((_ is ElementMatch!15961) (regOne!32434 (regTwo!32435 r!7292)))) b!5913729))

(assert (= (and b!5912937 ((_ is Concat!24806) (regOne!32434 (regTwo!32435 r!7292)))) b!5913730))

(assert (= (and b!5912937 ((_ is Star!15961) (regOne!32434 (regTwo!32435 r!7292)))) b!5913731))

(assert (= (and b!5912937 ((_ is Union!15961) (regOne!32434 (regTwo!32435 r!7292)))) b!5913732))

(declare-fun b!5913734 () Bool)

(declare-fun e!3621116 () Bool)

(declare-fun tp!1643037 () Bool)

(declare-fun tp!1643036 () Bool)

(assert (=> b!5913734 (= e!3621116 (and tp!1643037 tp!1643036))))

(declare-fun b!5913733 () Bool)

(assert (=> b!5913733 (= e!3621116 tp_is_empty!41175)))

(assert (=> b!5912937 (= tp!1642774 e!3621116)))

(declare-fun b!5913735 () Bool)

(declare-fun tp!1643034 () Bool)

(assert (=> b!5913735 (= e!3621116 tp!1643034)))

(declare-fun b!5913736 () Bool)

(declare-fun tp!1643033 () Bool)

(declare-fun tp!1643035 () Bool)

(assert (=> b!5913736 (= e!3621116 (and tp!1643033 tp!1643035))))

(assert (= (and b!5912937 ((_ is ElementMatch!15961) (regTwo!32434 (regTwo!32435 r!7292)))) b!5913733))

(assert (= (and b!5912937 ((_ is Concat!24806) (regTwo!32434 (regTwo!32435 r!7292)))) b!5913734))

(assert (= (and b!5912937 ((_ is Star!15961) (regTwo!32434 (regTwo!32435 r!7292)))) b!5913735))

(assert (= (and b!5912937 ((_ is Union!15961) (regTwo!32434 (regTwo!32435 r!7292)))) b!5913736))

(declare-fun b!5913738 () Bool)

(declare-fun e!3621117 () Bool)

(declare-fun tp!1643042 () Bool)

(declare-fun tp!1643041 () Bool)

(assert (=> b!5913738 (= e!3621117 (and tp!1643042 tp!1643041))))

(declare-fun b!5913737 () Bool)

(assert (=> b!5913737 (= e!3621117 tp_is_empty!41175)))

(assert (=> b!5912917 (= tp!1642747 e!3621117)))

(declare-fun b!5913739 () Bool)

(declare-fun tp!1643039 () Bool)

(assert (=> b!5913739 (= e!3621117 tp!1643039)))

(declare-fun b!5913740 () Bool)

(declare-fun tp!1643038 () Bool)

(declare-fun tp!1643040 () Bool)

(assert (=> b!5913740 (= e!3621117 (and tp!1643038 tp!1643040))))

(assert (= (and b!5912917 ((_ is ElementMatch!15961) (regOne!32435 (regTwo!32434 r!7292)))) b!5913737))

(assert (= (and b!5912917 ((_ is Concat!24806) (regOne!32435 (regTwo!32434 r!7292)))) b!5913738))

(assert (= (and b!5912917 ((_ is Star!15961) (regOne!32435 (regTwo!32434 r!7292)))) b!5913739))

(assert (= (and b!5912917 ((_ is Union!15961) (regOne!32435 (regTwo!32434 r!7292)))) b!5913740))

(declare-fun b!5913742 () Bool)

(declare-fun e!3621118 () Bool)

(declare-fun tp!1643047 () Bool)

(declare-fun tp!1643046 () Bool)

(assert (=> b!5913742 (= e!3621118 (and tp!1643047 tp!1643046))))

(declare-fun b!5913741 () Bool)

(assert (=> b!5913741 (= e!3621118 tp_is_empty!41175)))

(assert (=> b!5912917 (= tp!1642749 e!3621118)))

(declare-fun b!5913743 () Bool)

(declare-fun tp!1643044 () Bool)

(assert (=> b!5913743 (= e!3621118 tp!1643044)))

(declare-fun b!5913744 () Bool)

(declare-fun tp!1643043 () Bool)

(declare-fun tp!1643045 () Bool)

(assert (=> b!5913744 (= e!3621118 (and tp!1643043 tp!1643045))))

(assert (= (and b!5912917 ((_ is ElementMatch!15961) (regTwo!32435 (regTwo!32434 r!7292)))) b!5913741))

(assert (= (and b!5912917 ((_ is Concat!24806) (regTwo!32435 (regTwo!32434 r!7292)))) b!5913742))

(assert (= (and b!5912917 ((_ is Star!15961) (regTwo!32435 (regTwo!32434 r!7292)))) b!5913743))

(assert (= (and b!5912917 ((_ is Union!15961) (regTwo!32435 (regTwo!32434 r!7292)))) b!5913744))

(declare-fun b!5913745 () Bool)

(declare-fun e!3621119 () Bool)

(declare-fun tp!1643048 () Bool)

(declare-fun tp!1643049 () Bool)

(assert (=> b!5913745 (= e!3621119 (and tp!1643048 tp!1643049))))

(assert (=> b!5912931 (= tp!1642765 e!3621119)))

(assert (= (and b!5912931 ((_ is Cons!64058) (exprs!5845 setElem!40120))) b!5913745))

(declare-fun b!5913747 () Bool)

(declare-fun e!3621120 () Bool)

(declare-fun tp!1643054 () Bool)

(declare-fun tp!1643053 () Bool)

(assert (=> b!5913747 (= e!3621120 (and tp!1643054 tp!1643053))))

(declare-fun b!5913746 () Bool)

(assert (=> b!5913746 (= e!3621120 tp_is_empty!41175)))

(assert (=> b!5912938 (= tp!1642772 e!3621120)))

(declare-fun b!5913748 () Bool)

(declare-fun tp!1643051 () Bool)

(assert (=> b!5913748 (= e!3621120 tp!1643051)))

(declare-fun b!5913749 () Bool)

(declare-fun tp!1643050 () Bool)

(declare-fun tp!1643052 () Bool)

(assert (=> b!5913749 (= e!3621120 (and tp!1643050 tp!1643052))))

(assert (= (and b!5912938 ((_ is ElementMatch!15961) (reg!16290 (regTwo!32435 r!7292)))) b!5913746))

(assert (= (and b!5912938 ((_ is Concat!24806) (reg!16290 (regTwo!32435 r!7292)))) b!5913747))

(assert (= (and b!5912938 ((_ is Star!15961) (reg!16290 (regTwo!32435 r!7292)))) b!5913748))

(assert (= (and b!5912938 ((_ is Union!15961) (reg!16290 (regTwo!32435 r!7292)))) b!5913749))

(declare-fun b!5913751 () Bool)

(declare-fun e!3621121 () Bool)

(declare-fun tp!1643059 () Bool)

(declare-fun tp!1643058 () Bool)

(assert (=> b!5913751 (= e!3621121 (and tp!1643059 tp!1643058))))

(declare-fun b!5913750 () Bool)

(assert (=> b!5913750 (= e!3621121 tp_is_empty!41175)))

(assert (=> b!5912909 (= tp!1642740 e!3621121)))

(declare-fun b!5913752 () Bool)

(declare-fun tp!1643056 () Bool)

(assert (=> b!5913752 (= e!3621121 tp!1643056)))

(declare-fun b!5913753 () Bool)

(declare-fun tp!1643055 () Bool)

(declare-fun tp!1643057 () Bool)

(assert (=> b!5913753 (= e!3621121 (and tp!1643055 tp!1643057))))

(assert (= (and b!5912909 ((_ is ElementMatch!15961) (h!70506 (exprs!5845 (h!70507 zl!343))))) b!5913750))

(assert (= (and b!5912909 ((_ is Concat!24806) (h!70506 (exprs!5845 (h!70507 zl!343))))) b!5913751))

(assert (= (and b!5912909 ((_ is Star!15961) (h!70506 (exprs!5845 (h!70507 zl!343))))) b!5913752))

(assert (= (and b!5912909 ((_ is Union!15961) (h!70506 (exprs!5845 (h!70507 zl!343))))) b!5913753))

(declare-fun b!5913754 () Bool)

(declare-fun e!3621122 () Bool)

(declare-fun tp!1643060 () Bool)

(declare-fun tp!1643061 () Bool)

(assert (=> b!5913754 (= e!3621122 (and tp!1643060 tp!1643061))))

(assert (=> b!5912909 (= tp!1642741 e!3621122)))

(assert (= (and b!5912909 ((_ is Cons!64058) (t!377571 (exprs!5845 (h!70507 zl!343))))) b!5913754))

(declare-fun b!5913756 () Bool)

(declare-fun e!3621123 () Bool)

(declare-fun tp!1643066 () Bool)

(declare-fun tp!1643065 () Bool)

(assert (=> b!5913756 (= e!3621123 (and tp!1643066 tp!1643065))))

(declare-fun b!5913755 () Bool)

(assert (=> b!5913755 (= e!3621123 tp_is_empty!41175)))

(assert (=> b!5912903 (= tp!1642732 e!3621123)))

(declare-fun b!5913757 () Bool)

(declare-fun tp!1643063 () Bool)

(assert (=> b!5913757 (= e!3621123 tp!1643063)))

(declare-fun b!5913758 () Bool)

(declare-fun tp!1643062 () Bool)

(declare-fun tp!1643064 () Bool)

(assert (=> b!5913758 (= e!3621123 (and tp!1643062 tp!1643064))))

(assert (= (and b!5912903 ((_ is ElementMatch!15961) (reg!16290 (reg!16290 r!7292)))) b!5913755))

(assert (= (and b!5912903 ((_ is Concat!24806) (reg!16290 (reg!16290 r!7292)))) b!5913756))

(assert (= (and b!5912903 ((_ is Star!15961) (reg!16290 (reg!16290 r!7292)))) b!5913757))

(assert (= (and b!5912903 ((_ is Union!15961) (reg!16290 (reg!16290 r!7292)))) b!5913758))

(declare-fun b!5913760 () Bool)

(declare-fun e!3621124 () Bool)

(declare-fun tp!1643071 () Bool)

(declare-fun tp!1643070 () Bool)

(assert (=> b!5913760 (= e!3621124 (and tp!1643071 tp!1643070))))

(declare-fun b!5913759 () Bool)

(assert (=> b!5913759 (= e!3621124 tp_is_empty!41175)))

(assert (=> b!5912939 (= tp!1642771 e!3621124)))

(declare-fun b!5913761 () Bool)

(declare-fun tp!1643068 () Bool)

(assert (=> b!5913761 (= e!3621124 tp!1643068)))

(declare-fun b!5913762 () Bool)

(declare-fun tp!1643067 () Bool)

(declare-fun tp!1643069 () Bool)

(assert (=> b!5913762 (= e!3621124 (and tp!1643067 tp!1643069))))

(assert (= (and b!5912939 ((_ is ElementMatch!15961) (regOne!32435 (regTwo!32435 r!7292)))) b!5913759))

(assert (= (and b!5912939 ((_ is Concat!24806) (regOne!32435 (regTwo!32435 r!7292)))) b!5913760))

(assert (= (and b!5912939 ((_ is Star!15961) (regOne!32435 (regTwo!32435 r!7292)))) b!5913761))

(assert (= (and b!5912939 ((_ is Union!15961) (regOne!32435 (regTwo!32435 r!7292)))) b!5913762))

(declare-fun b!5913764 () Bool)

(declare-fun e!3621125 () Bool)

(declare-fun tp!1643076 () Bool)

(declare-fun tp!1643075 () Bool)

(assert (=> b!5913764 (= e!3621125 (and tp!1643076 tp!1643075))))

(declare-fun b!5913763 () Bool)

(assert (=> b!5913763 (= e!3621125 tp_is_empty!41175)))

(assert (=> b!5912939 (= tp!1642773 e!3621125)))

(declare-fun b!5913765 () Bool)

(declare-fun tp!1643073 () Bool)

(assert (=> b!5913765 (= e!3621125 tp!1643073)))

(declare-fun b!5913766 () Bool)

(declare-fun tp!1643072 () Bool)

(declare-fun tp!1643074 () Bool)

(assert (=> b!5913766 (= e!3621125 (and tp!1643072 tp!1643074))))

(assert (= (and b!5912939 ((_ is ElementMatch!15961) (regTwo!32435 (regTwo!32435 r!7292)))) b!5913763))

(assert (= (and b!5912939 ((_ is Concat!24806) (regTwo!32435 (regTwo!32435 r!7292)))) b!5913764))

(assert (= (and b!5912939 ((_ is Star!15961) (regTwo!32435 (regTwo!32435 r!7292)))) b!5913765))

(assert (= (and b!5912939 ((_ is Union!15961) (regTwo!32435 (regTwo!32435 r!7292)))) b!5913766))

(declare-fun b!5913768 () Bool)

(declare-fun e!3621126 () Bool)

(declare-fun tp!1643081 () Bool)

(declare-fun tp!1643080 () Bool)

(assert (=> b!5913768 (= e!3621126 (and tp!1643081 tp!1643080))))

(declare-fun b!5913767 () Bool)

(assert (=> b!5913767 (= e!3621126 tp_is_empty!41175)))

(assert (=> b!5912902 (= tp!1642735 e!3621126)))

(declare-fun b!5913769 () Bool)

(declare-fun tp!1643078 () Bool)

(assert (=> b!5913769 (= e!3621126 tp!1643078)))

(declare-fun b!5913770 () Bool)

(declare-fun tp!1643077 () Bool)

(declare-fun tp!1643079 () Bool)

(assert (=> b!5913770 (= e!3621126 (and tp!1643077 tp!1643079))))

(assert (= (and b!5912902 ((_ is ElementMatch!15961) (regOne!32434 (reg!16290 r!7292)))) b!5913767))

(assert (= (and b!5912902 ((_ is Concat!24806) (regOne!32434 (reg!16290 r!7292)))) b!5913768))

(assert (= (and b!5912902 ((_ is Star!15961) (regOne!32434 (reg!16290 r!7292)))) b!5913769))

(assert (= (and b!5912902 ((_ is Union!15961) (regOne!32434 (reg!16290 r!7292)))) b!5913770))

(declare-fun b!5913772 () Bool)

(declare-fun e!3621127 () Bool)

(declare-fun tp!1643086 () Bool)

(declare-fun tp!1643085 () Bool)

(assert (=> b!5913772 (= e!3621127 (and tp!1643086 tp!1643085))))

(declare-fun b!5913771 () Bool)

(assert (=> b!5913771 (= e!3621127 tp_is_empty!41175)))

(assert (=> b!5912902 (= tp!1642734 e!3621127)))

(declare-fun b!5913773 () Bool)

(declare-fun tp!1643083 () Bool)

(assert (=> b!5913773 (= e!3621127 tp!1643083)))

(declare-fun b!5913774 () Bool)

(declare-fun tp!1643082 () Bool)

(declare-fun tp!1643084 () Bool)

(assert (=> b!5913774 (= e!3621127 (and tp!1643082 tp!1643084))))

(assert (= (and b!5912902 ((_ is ElementMatch!15961) (regTwo!32434 (reg!16290 r!7292)))) b!5913771))

(assert (= (and b!5912902 ((_ is Concat!24806) (regTwo!32434 (reg!16290 r!7292)))) b!5913772))

(assert (= (and b!5912902 ((_ is Star!15961) (regTwo!32434 (reg!16290 r!7292)))) b!5913773))

(assert (= (and b!5912902 ((_ is Union!15961) (regTwo!32434 (reg!16290 r!7292)))) b!5913774))

(declare-fun b_lambda!222203 () Bool)

(assert (= b_lambda!222201 (or d!1854824 b_lambda!222203)))

(declare-fun bs!1400261 () Bool)

(declare-fun d!1855110 () Bool)

(assert (= bs!1400261 (and d!1855110 d!1854824)))

(assert (=> bs!1400261 (= (dynLambda!25050 lambda!322548 (h!70506 (exprs!5845 (h!70507 zl!343)))) (validRegex!7697 (h!70506 (exprs!5845 (h!70507 zl!343)))))))

(declare-fun m!6812636 () Bool)

(assert (=> bs!1400261 m!6812636))

(assert (=> b!5913556 d!1855110))

(declare-fun b_lambda!222205 () Bool)

(assert (= b_lambda!222199 (or d!1854806 b_lambda!222205)))

(declare-fun bs!1400262 () Bool)

(declare-fun d!1855112 () Bool)

(assert (= bs!1400262 (and d!1855112 d!1854806)))

(assert (=> bs!1400262 (= (dynLambda!25050 lambda!322535 (h!70506 (unfocusZipperList!1382 zl!343))) (validRegex!7697 (h!70506 (unfocusZipperList!1382 zl!343))))))

(declare-fun m!6812638 () Bool)

(assert (=> bs!1400262 m!6812638))

(assert (=> b!5913536 d!1855112))

(declare-fun b_lambda!222207 () Bool)

(assert (= b_lambda!222197 (or d!1854810 b_lambda!222207)))

(declare-fun bs!1400263 () Bool)

(declare-fun d!1855114 () Bool)

(assert (= bs!1400263 (and d!1855114 d!1854810)))

(assert (=> bs!1400263 (= (dynLambda!25050 lambda!322539 (h!70506 (exprs!5845 (h!70507 zl!343)))) (validRegex!7697 (h!70506 (exprs!5845 (h!70507 zl!343)))))))

(assert (=> bs!1400263 m!6812636))

(assert (=> b!5913427 d!1855114))

(declare-fun b_lambda!222209 () Bool)

(assert (= b_lambda!222193 (or d!1854802 b_lambda!222209)))

(declare-fun bs!1400264 () Bool)

(declare-fun d!1855116 () Bool)

(assert (= bs!1400264 (and d!1855116 d!1854802)))

(assert (=> bs!1400264 (= (dynLambda!25050 lambda!322532 (h!70506 (exprs!5845 setElem!40114))) (validRegex!7697 (h!70506 (exprs!5845 setElem!40114))))))

(declare-fun m!6812640 () Bool)

(assert (=> bs!1400264 m!6812640))

(assert (=> b!5913364 d!1855116))

(declare-fun b_lambda!222211 () Bool)

(assert (= b_lambda!222195 (or d!1854808 b_lambda!222211)))

(declare-fun bs!1400265 () Bool)

(declare-fun d!1855118 () Bool)

(assert (= bs!1400265 (and d!1855118 d!1854808)))

(assert (=> bs!1400265 (= (dynLambda!25050 lambda!322538 (h!70506 lt!2309298)) (validRegex!7697 (h!70506 lt!2309298)))))

(declare-fun m!6812642 () Bool)

(assert (=> bs!1400265 m!6812642))

(assert (=> b!5913366 d!1855118))

(check-sat (not b!5913714) (not b!5913709) (not b!5913739) (not bm!468662) (not b!5913574) (not bm!468652) (not b!5913509) (not b!5913491) (not b!5913713) (not b!5913668) (not b!5913372) (not b!5913665) (not d!1855106) (not b!5913738) (not b!5913413) (not d!1855088) (not b!5913628) (not b!5913612) (not b!5913666) (not bm!468653) (not b!5913681) (not bs!1400261) (not b!5913398) (not b!5913597) (not b!5913508) (not d!1855086) (not b_lambda!222207) (not d!1855068) (not b!5913611) (not b!5913689) (not b!5913610) (not b!5913770) (not bm!468660) (not b!5913690) (not b!5913719) (not d!1855034) (not b!5913434) (not b!5913589) (not b!5913715) (not d!1855036) (not b!5913758) (not b!5913618) (not d!1855010) (not b!5913731) (not b!5913692) (not b!5913684) (not b!5913400) (not bm!468661) (not b!5913694) (not b!5913600) (not b!5913548) (not b!5913461) (not b!5913604) (not b!5913740) (not b!5913519) (not b!5913697) (not bm!468644) (not b!5913493) (not b!5913367) (not d!1855000) (not b!5913624) (not b!5913676) (not b!5913428) (not b!5913752) (not b!5913397) (not b!5913403) (not bm!468672) (not b!5913492) (not bs!1400264) (not b!5913588) (not b!5913677) (not b!5913701) (not b!5913772) (not b!5913761) (not bm!468659) (not b!5913704) (not b!5913708) (not bm!468664) (not b!5913436) (not b!5913688) (not d!1855096) (not d!1855022) (not b!5913437) (not bm!468671) (not b!5913753) (not b!5913417) (not b!5913721) (not b!5913730) (not b!5913773) (not b!5913700) (not b!5913580) (not b!5913575) (not b!5913410) (not b!5913516) (not bm!468665) (not d!1855064) (not bm!468667) (not d!1854990) (not b!5913742) (not b!5913590) (not b!5913757) (not bm!468658) (not b!5913670) (not b!5913537) (not d!1855002) (not d!1855084) (not b!5913764) (not b!5913662) (not b!5913774) (not b!5913702) (not b!5913698) (not b!5913526) (not b!5913664) (not d!1855050) (not b!5913674) (not b!5913603) (not b!5913416) (not bm!468683) (not b!5913685) (not d!1855032) (not b!5913478) (not b!5913499) (not b!5913581) (not bm!468641) (not bm!468655) (not b!5913407) (not d!1854994) (not bm!468673) (not b!5913760) (not bm!468643) (not b!5913393) (not d!1855100) (not b!5913571) (not b!5913712) (not b!5913650) (not b!5913401) (not d!1855098) tp_is_empty!41175 (not b!5913500) (not bm!468656) (not b!5913686) (not b!5913388) (not b!5913727) (not bm!468646) (not b!5913743) (not b!5913660) (not b!5913680) (not b!5913717) (not b!5913609) (not b!5913414) (not d!1855070) (not b!5913728) (not b!5913419) (not setNonEmpty!40122) (not b!5913725) (not b!5913523) (not b!5913705) (not b!5913722) (not b!5913673) (not b!5913765) (not d!1855004) (not d!1855072) (not b!5913751) (not d!1855012) (not d!1854998) (not b!5913525) (not b!5913613) (not b!5913399) (not bs!1400265) (not b!5913754) (not d!1855014) (not b!5913682) (not b!5913747) (not b!5913762) (not b!5913565) (not b!5913734) (not b_lambda!222205) (not b!5913572) (not b!5913392) (not b!5913693) (not b!5913568) (not b!5913539) (not b!5913601) (not b!5913732) (not bs!1400262) (not b!5913749) (not b!5913614) (not b!5913371) (not b!5913627) (not b!5913621) (not b!5913748) (not b!5913768) (not b!5913735) (not b!5913726) (not bm!468651) (not b!5913678) (not b!5913696) (not b!5913766) (not b!5913365) (not b!5913744) (not bs!1400263) (not b_lambda!222211) (not b!5913511) (not b!5913671) (not b!5913745) (not b!5913672) (not bm!468642) (not bm!468668) (not b!5913431) (not d!1855048) (not bm!468685) (not d!1855108) (not b_lambda!222203) (not d!1855066) (not b!5913769) (not bm!468670) (not b!5913438) (not b!5913723) (not b!5913522) (not b!5913435) (not b!5913557) (not b!5913710) (not b!5913736) (not b!5913669) (not b_lambda!222209) (not b!5913625) (not b!5913756) (not b!5913528) (not b!5913432) (not b!5913718) (not b!5913594) (not d!1855092) (not b!5913661) (not b!5913706) (not b!5913605) (not d!1855046) (not b!5913389))
(check-sat)
