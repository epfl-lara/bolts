; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557646 () Bool)

(assert start!557646)

(declare-fun b!5281395 () Bool)

(assert (=> b!5281395 true))

(assert (=> b!5281395 true))

(declare-fun lambda!266800 () Int)

(declare-fun lambda!266799 () Int)

(assert (=> b!5281395 (not (= lambda!266800 lambda!266799))))

(assert (=> b!5281395 true))

(assert (=> b!5281395 true))

(declare-fun b!5281360 () Bool)

(assert (=> b!5281360 true))

(declare-fun b!5281358 () Bool)

(declare-fun res!2239831 () Bool)

(declare-fun e!3283916 () Bool)

(assert (=> b!5281358 (=> res!2239831 e!3283916)))

(declare-datatypes ((C!30076 0))(
  ( (C!30077 (val!24740 Int)) )
))
(declare-datatypes ((Regex!14903 0))(
  ( (ElementMatch!14903 (c!915555 C!30076)) (Concat!23748 (regOne!30318 Regex!14903) (regTwo!30318 Regex!14903)) (EmptyExpr!14903) (Star!14903 (reg!15232 Regex!14903)) (EmptyLang!14903) (Union!14903 (regOne!30319 Regex!14903) (regTwo!30319 Regex!14903)) )
))
(declare-datatypes ((List!61008 0))(
  ( (Nil!60884) (Cons!60884 (h!67332 Regex!14903) (t!374211 List!61008)) )
))
(declare-datatypes ((Context!8574 0))(
  ( (Context!8575 (exprs!4787 List!61008)) )
))
(declare-datatypes ((List!61009 0))(
  ( (Nil!60885) (Cons!60885 (h!67333 Context!8574) (t!374212 List!61009)) )
))
(declare-fun zl!343 () List!61009)

(declare-fun isEmpty!32839 (List!61008) Bool)

(assert (=> b!5281358 (= res!2239831 (isEmpty!32839 (t!374211 (exprs!4787 (h!67333 zl!343)))))))

(declare-fun b!5281359 () Bool)

(declare-fun e!3283913 () Bool)

(declare-fun tp!1475413 () Bool)

(declare-fun tp!1475409 () Bool)

(assert (=> b!5281359 (= e!3283913 (and tp!1475413 tp!1475409))))

(declare-fun e!3283920 () Bool)

(assert (=> b!5281360 (= e!3283916 e!3283920)))

(declare-fun res!2239825 () Bool)

(assert (=> b!5281360 (=> res!2239825 e!3283920)))

(declare-fun r!7292 () Regex!14903)

(declare-datatypes ((List!61010 0))(
  ( (Nil!60886) (Cons!60886 (h!67334 C!30076) (t!374213 List!61010)) )
))
(declare-fun s!2326 () List!61010)

(get-info :version)

(assert (=> b!5281360 (= res!2239825 (or (and ((_ is ElementMatch!14903) (regOne!30318 r!7292)) (= (c!915555 (regOne!30318 r!7292)) (h!67334 s!2326))) ((_ is Union!14903) (regOne!30318 r!7292)) (not ((_ is Concat!23748) (regOne!30318 r!7292)))))))

(declare-datatypes ((Unit!153130 0))(
  ( (Unit!153131) )
))
(declare-fun lt!2158577 () Unit!153130)

(declare-fun e!3283927 () Unit!153130)

(assert (=> b!5281360 (= lt!2158577 e!3283927)))

(declare-fun c!915554 () Bool)

(declare-fun nullable!5072 (Regex!14903) Bool)

(assert (=> b!5281360 (= c!915554 (nullable!5072 (h!67332 (exprs!4787 (h!67333 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8574))

(declare-fun lambda!266801 () Int)

(declare-fun flatMap!630 ((InoxSet Context!8574) Int) (InoxSet Context!8574))

(declare-fun derivationStepZipperUp!275 (Context!8574 C!30076) (InoxSet Context!8574))

(assert (=> b!5281360 (= (flatMap!630 z!1189 lambda!266801) (derivationStepZipperUp!275 (h!67333 zl!343) (h!67334 s!2326)))))

(declare-fun lt!2158548 () Unit!153130)

(declare-fun lemmaFlatMapOnSingletonSet!162 ((InoxSet Context!8574) Context!8574 Int) Unit!153130)

(assert (=> b!5281360 (= lt!2158548 (lemmaFlatMapOnSingletonSet!162 z!1189 (h!67333 zl!343) lambda!266801))))

(declare-fun lt!2158559 () (InoxSet Context!8574))

(declare-fun lt!2158555 () Context!8574)

(assert (=> b!5281360 (= lt!2158559 (derivationStepZipperUp!275 lt!2158555 (h!67334 s!2326)))))

(declare-fun lt!2158556 () (InoxSet Context!8574))

(declare-fun derivationStepZipperDown!351 (Regex!14903 Context!8574 C!30076) (InoxSet Context!8574))

(assert (=> b!5281360 (= lt!2158556 (derivationStepZipperDown!351 (h!67332 (exprs!4787 (h!67333 zl!343))) lt!2158555 (h!67334 s!2326)))))

(assert (=> b!5281360 (= lt!2158555 (Context!8575 (t!374211 (exprs!4787 (h!67333 zl!343)))))))

(declare-fun lt!2158561 () (InoxSet Context!8574))

(assert (=> b!5281360 (= lt!2158561 (derivationStepZipperUp!275 (Context!8575 (Cons!60884 (h!67332 (exprs!4787 (h!67333 zl!343))) (t!374211 (exprs!4787 (h!67333 zl!343))))) (h!67334 s!2326)))))

(declare-fun b!5281361 () Bool)

(declare-fun e!3283922 () Bool)

(declare-fun tp_is_empty!39059 () Bool)

(declare-fun tp!1475416 () Bool)

(assert (=> b!5281361 (= e!3283922 (and tp_is_empty!39059 tp!1475416))))

(declare-fun b!5281362 () Bool)

(declare-fun res!2239838 () Bool)

(declare-fun e!3283918 () Bool)

(assert (=> b!5281362 (=> res!2239838 e!3283918)))

(declare-fun lt!2158554 () List!61009)

(declare-fun zipperDepth!20 (List!61009) Int)

(assert (=> b!5281362 (= res!2239838 (> (zipperDepth!20 lt!2158554) (zipperDepth!20 zl!343)))))

(declare-fun b!5281363 () Bool)

(declare-fun e!3283910 () Bool)

(declare-fun tp!1475410 () Bool)

(assert (=> b!5281363 (= e!3283910 tp!1475410)))

(declare-fun b!5281364 () Bool)

(declare-fun res!2239813 () Bool)

(assert (=> b!5281364 (=> res!2239813 e!3283920)))

(assert (=> b!5281364 (= res!2239813 (not (nullable!5072 (regOne!30318 (regOne!30318 r!7292)))))))

(declare-fun b!5281365 () Bool)

(declare-fun res!2239820 () Bool)

(declare-fun e!3283928 () Bool)

(assert (=> b!5281365 (=> res!2239820 e!3283928)))

(declare-fun isEmpty!32840 (List!61009) Bool)

(assert (=> b!5281365 (= res!2239820 (not (isEmpty!32840 (t!374212 zl!343))))))

(declare-fun b!5281366 () Bool)

(declare-fun res!2239830 () Bool)

(declare-fun e!3283925 () Bool)

(assert (=> b!5281366 (=> res!2239830 e!3283925)))

(declare-fun lt!2158582 () Context!8574)

(declare-fun contextDepthTotal!44 (Context!8574) Int)

(assert (=> b!5281366 (= res!2239830 (>= (contextDepthTotal!44 lt!2158582) (contextDepthTotal!44 (h!67333 zl!343))))))

(declare-fun b!5281367 () Bool)

(declare-fun e!3283917 () Bool)

(assert (=> b!5281367 (= e!3283917 (not e!3283928))))

(declare-fun res!2239829 () Bool)

(assert (=> b!5281367 (=> res!2239829 e!3283928)))

(assert (=> b!5281367 (= res!2239829 (not ((_ is Cons!60885) zl!343)))))

(declare-fun lt!2158560 () Bool)

(declare-fun matchRSpec!2006 (Regex!14903 List!61010) Bool)

(assert (=> b!5281367 (= lt!2158560 (matchRSpec!2006 r!7292 s!2326))))

(declare-fun matchR!7088 (Regex!14903 List!61010) Bool)

(assert (=> b!5281367 (= lt!2158560 (matchR!7088 r!7292 s!2326))))

(declare-fun lt!2158564 () Unit!153130)

(declare-fun mainMatchTheorem!2006 (Regex!14903 List!61010) Unit!153130)

(assert (=> b!5281367 (= lt!2158564 (mainMatchTheorem!2006 r!7292 s!2326))))

(declare-fun b!5281368 () Bool)

(declare-fun res!2239822 () Bool)

(assert (=> b!5281368 (=> res!2239822 e!3283928)))

(assert (=> b!5281368 (= res!2239822 (or ((_ is EmptyExpr!14903) r!7292) ((_ is EmptyLang!14903) r!7292) ((_ is ElementMatch!14903) r!7292) ((_ is Union!14903) r!7292) (not ((_ is Concat!23748) r!7292))))))

(declare-fun b!5281369 () Bool)

(declare-fun e!3283908 () Bool)

(declare-fun lt!2158581 () (InoxSet Context!8574))

(declare-fun matchZipper!1147 ((InoxSet Context!8574) List!61010) Bool)

(assert (=> b!5281369 (= e!3283908 (matchZipper!1147 lt!2158581 (t!374213 s!2326)))))

(declare-fun b!5281370 () Bool)

(declare-fun e!3283914 () Bool)

(assert (=> b!5281370 (= e!3283914 true)))

(declare-fun lt!2158562 () Regex!14903)

(declare-fun lt!2158567 () List!61009)

(declare-fun unfocusZipper!645 (List!61009) Regex!14903)

(assert (=> b!5281370 (= lt!2158562 (unfocusZipper!645 lt!2158567))))

(declare-fun b!5281371 () Bool)

(declare-fun e!3283909 () Bool)

(declare-fun lt!2158575 () (InoxSet Context!8574))

(assert (=> b!5281371 (= e!3283909 (not (matchZipper!1147 lt!2158575 (t!374213 s!2326))))))

(declare-fun b!5281372 () Bool)

(declare-fun e!3283911 () Bool)

(declare-fun e!3283912 () Bool)

(assert (=> b!5281372 (= e!3283911 e!3283912)))

(declare-fun res!2239832 () Bool)

(assert (=> b!5281372 (=> res!2239832 e!3283912)))

(assert (=> b!5281372 (= res!2239832 e!3283909)))

(declare-fun res!2239834 () Bool)

(assert (=> b!5281372 (=> (not res!2239834) (not e!3283909))))

(declare-fun lt!2158574 () Bool)

(declare-fun lt!2158569 () Bool)

(assert (=> b!5281372 (= res!2239834 (not (= lt!2158574 lt!2158569)))))

(assert (=> b!5281372 (= lt!2158574 (matchZipper!1147 lt!2158556 (t!374213 s!2326)))))

(declare-fun lt!2158558 () (InoxSet Context!8574))

(declare-fun e!3283926 () Bool)

(assert (=> b!5281372 (= (matchZipper!1147 lt!2158558 (t!374213 s!2326)) e!3283926)))

(declare-fun res!2239812 () Bool)

(assert (=> b!5281372 (=> res!2239812 e!3283926)))

(assert (=> b!5281372 (= res!2239812 lt!2158569)))

(declare-fun lt!2158570 () (InoxSet Context!8574))

(assert (=> b!5281372 (= lt!2158569 (matchZipper!1147 lt!2158570 (t!374213 s!2326)))))

(declare-fun lt!2158580 () Unit!153130)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!140 ((InoxSet Context!8574) (InoxSet Context!8574) List!61010) Unit!153130)

(assert (=> b!5281372 (= lt!2158580 (lemmaZipperConcatMatchesSameAsBothZippers!140 lt!2158570 lt!2158575 (t!374213 s!2326)))))

(declare-fun b!5281373 () Bool)

(declare-fun e!3283923 () Bool)

(declare-fun lt!2158551 () (InoxSet Context!8574))

(declare-fun derivationStepZipper!1146 ((InoxSet Context!8574) C!30076) (InoxSet Context!8574))

(assert (=> b!5281373 (= e!3283923 (not (matchZipper!1147 (derivationStepZipper!1146 lt!2158551 (h!67334 s!2326)) (t!374213 s!2326))))))

(declare-fun b!5281374 () Bool)

(declare-fun res!2239827 () Bool)

(assert (=> b!5281374 (=> res!2239827 e!3283928)))

(assert (=> b!5281374 (= res!2239827 (not ((_ is Cons!60884) (exprs!4787 (h!67333 zl!343)))))))

(declare-fun tp!1475408 () Bool)

(declare-fun e!3283915 () Bool)

(declare-fun setRes!33851 () Bool)

(declare-fun setElem!33851 () Context!8574)

(declare-fun setNonEmpty!33851 () Bool)

(declare-fun inv!80504 (Context!8574) Bool)

(assert (=> setNonEmpty!33851 (= setRes!33851 (and tp!1475408 (inv!80504 setElem!33851) e!3283915))))

(declare-fun setRest!33851 () (InoxSet Context!8574))

(assert (=> setNonEmpty!33851 (= z!1189 ((_ map or) (store ((as const (Array Context!8574 Bool)) false) setElem!33851 true) setRest!33851))))

(declare-fun b!5281375 () Bool)

(declare-fun res!2239821 () Bool)

(assert (=> b!5281375 (=> res!2239821 e!3283925)))

(assert (=> b!5281375 (= res!2239821 (not (= (exprs!4787 (h!67333 zl!343)) (Cons!60884 (Concat!23748 (regOne!30318 (regOne!30318 r!7292)) (regTwo!30318 (regOne!30318 r!7292))) (t!374211 (exprs!4787 (h!67333 zl!343)))))))))

(declare-fun b!5281376 () Bool)

(assert (=> b!5281376 (= e!3283925 e!3283918)))

(declare-fun res!2239828 () Bool)

(assert (=> b!5281376 (=> res!2239828 e!3283918)))

(declare-fun zipperDepthTotal!64 (List!61009) Int)

(assert (=> b!5281376 (= res!2239828 (>= (zipperDepthTotal!64 lt!2158554) (zipperDepthTotal!64 zl!343)))))

(assert (=> b!5281376 (= lt!2158554 (Cons!60885 lt!2158582 Nil!60885))))

(declare-fun b!5281377 () Bool)

(declare-fun tp!1475414 () Bool)

(assert (=> b!5281377 (= e!3283915 tp!1475414)))

(declare-fun b!5281378 () Bool)

(assert (=> b!5281378 (= e!3283913 tp_is_empty!39059)))

(declare-fun b!5281379 () Bool)

(declare-fun res!2239837 () Bool)

(assert (=> b!5281379 (=> (not res!2239837) (not e!3283917))))

(assert (=> b!5281379 (= res!2239837 (= r!7292 (unfocusZipper!645 zl!343)))))

(declare-fun b!5281380 () Bool)

(declare-fun Unit!153132 () Unit!153130)

(assert (=> b!5281380 (= e!3283927 Unit!153132)))

(declare-fun b!5281381 () Bool)

(declare-fun Unit!153133 () Unit!153130)

(assert (=> b!5281381 (= e!3283927 Unit!153133)))

(declare-fun lt!2158579 () Unit!153130)

(assert (=> b!5281381 (= lt!2158579 (lemmaZipperConcatMatchesSameAsBothZippers!140 lt!2158556 lt!2158559 (t!374213 s!2326)))))

(declare-fun res!2239833 () Bool)

(assert (=> b!5281381 (= res!2239833 (matchZipper!1147 lt!2158556 (t!374213 s!2326)))))

(declare-fun e!3283919 () Bool)

(assert (=> b!5281381 (=> res!2239833 e!3283919)))

(assert (=> b!5281381 (= (matchZipper!1147 ((_ map or) lt!2158556 lt!2158559) (t!374213 s!2326)) e!3283919)))

(declare-fun b!5281382 () Bool)

(declare-fun tp!1475411 () Bool)

(assert (=> b!5281382 (= e!3283913 tp!1475411)))

(declare-fun b!5281383 () Bool)

(declare-fun res!2239819 () Bool)

(assert (=> b!5281383 (=> res!2239819 e!3283928)))

(declare-fun generalisedConcat!572 (List!61008) Regex!14903)

(assert (=> b!5281383 (= res!2239819 (not (= r!7292 (generalisedConcat!572 (exprs!4787 (h!67333 zl!343))))))))

(declare-fun b!5281384 () Bool)

(assert (=> b!5281384 (= e!3283919 (matchZipper!1147 lt!2158559 (t!374213 s!2326)))))

(declare-fun b!5281385 () Bool)

(assert (=> b!5281385 (= e!3283918 e!3283914)))

(declare-fun res!2239835 () Bool)

(assert (=> b!5281385 (=> res!2239835 e!3283914)))

(declare-fun lt!2158568 () List!61008)

(declare-fun validRegex!6639 (Regex!14903) Bool)

(assert (=> b!5281385 (= res!2239835 (not (validRegex!6639 (generalisedConcat!572 lt!2158568))))))

(declare-fun lt!2158572 () Context!8574)

(assert (=> b!5281385 (= lt!2158567 (Cons!60885 lt!2158572 Nil!60885))))

(declare-fun lt!2158566 () Regex!14903)

(declare-fun lt!2158557 () (InoxSet Context!8574))

(assert (=> b!5281385 (= (matchR!7088 lt!2158566 s!2326) (matchZipper!1147 lt!2158557 s!2326))))

(declare-fun lt!2158578 () Unit!153130)

(declare-fun theoremZipperRegexEquiv!313 ((InoxSet Context!8574) List!61009 Regex!14903 List!61010) Unit!153130)

(assert (=> b!5281385 (= lt!2158578 (theoremZipperRegexEquiv!313 lt!2158557 lt!2158554 lt!2158566 s!2326))))

(declare-fun lt!2158553 () List!61008)

(assert (=> b!5281385 (= lt!2158566 (generalisedConcat!572 lt!2158553))))

(declare-fun b!5281386 () Bool)

(assert (=> b!5281386 (= e!3283926 (matchZipper!1147 lt!2158575 (t!374213 s!2326)))))

(declare-fun b!5281387 () Bool)

(declare-fun tp!1475412 () Bool)

(declare-fun tp!1475415 () Bool)

(assert (=> b!5281387 (= e!3283913 (and tp!1475412 tp!1475415))))

(declare-fun res!2239815 () Bool)

(assert (=> start!557646 (=> (not res!2239815) (not e!3283917))))

(assert (=> start!557646 (= res!2239815 (validRegex!6639 r!7292))))

(assert (=> start!557646 e!3283917))

(assert (=> start!557646 e!3283913))

(declare-fun condSetEmpty!33851 () Bool)

(assert (=> start!557646 (= condSetEmpty!33851 (= z!1189 ((as const (Array Context!8574 Bool)) false)))))

(assert (=> start!557646 setRes!33851))

(declare-fun e!3283924 () Bool)

(assert (=> start!557646 e!3283924))

(assert (=> start!557646 e!3283922))

(declare-fun setIsEmpty!33851 () Bool)

(assert (=> setIsEmpty!33851 setRes!33851))

(declare-fun b!5281388 () Bool)

(declare-fun tp!1475417 () Bool)

(assert (=> b!5281388 (= e!3283924 (and (inv!80504 (h!67333 zl!343)) e!3283910 tp!1475417))))

(declare-fun b!5281389 () Bool)

(declare-fun res!2239836 () Bool)

(assert (=> b!5281389 (=> (not res!2239836) (not e!3283917))))

(declare-fun toList!8687 ((InoxSet Context!8574)) List!61009)

(assert (=> b!5281389 (= res!2239836 (= (toList!8687 z!1189) zl!343))))

(declare-fun b!5281390 () Bool)

(declare-fun res!2239824 () Bool)

(assert (=> b!5281390 (=> res!2239824 e!3283914)))

(assert (=> b!5281390 (= res!2239824 (not (= (toList!8687 lt!2158551) lt!2158567)))))

(declare-fun b!5281391 () Bool)

(assert (=> b!5281391 (= e!3283920 e!3283911)))

(declare-fun res!2239817 () Bool)

(assert (=> b!5281391 (=> res!2239817 e!3283911)))

(assert (=> b!5281391 (= res!2239817 (not (= lt!2158556 lt!2158558)))))

(assert (=> b!5281391 (= lt!2158558 ((_ map or) lt!2158570 lt!2158575))))

(assert (=> b!5281391 (= lt!2158575 (derivationStepZipperDown!351 (regTwo!30318 (regOne!30318 r!7292)) lt!2158555 (h!67334 s!2326)))))

(assert (=> b!5281391 (= lt!2158570 (derivationStepZipperDown!351 (regOne!30318 (regOne!30318 r!7292)) lt!2158572 (h!67334 s!2326)))))

(assert (=> b!5281391 (= lt!2158572 (Context!8575 lt!2158568))))

(assert (=> b!5281391 (= lt!2158568 (Cons!60884 (regTwo!30318 (regOne!30318 r!7292)) (t!374211 (exprs!4787 (h!67333 zl!343)))))))

(declare-fun b!5281392 () Bool)

(declare-fun e!3283921 () Bool)

(assert (=> b!5281392 (= e!3283921 e!3283925)))

(declare-fun res!2239826 () Bool)

(assert (=> b!5281392 (=> res!2239826 e!3283925)))

(assert (=> b!5281392 (= res!2239826 e!3283923)))

(declare-fun res!2239823 () Bool)

(assert (=> b!5281392 (=> (not res!2239823) (not e!3283923))))

(declare-fun lt!2158547 () (InoxSet Context!8574))

(assert (=> b!5281392 (= res!2239823 (not (= lt!2158574 (matchZipper!1147 lt!2158547 (t!374213 s!2326)))))))

(declare-fun lt!2158565 () (InoxSet Context!8574))

(assert (=> b!5281392 (= (matchZipper!1147 lt!2158565 (t!374213 s!2326)) e!3283908)))

(declare-fun res!2239839 () Bool)

(assert (=> b!5281392 (=> res!2239839 e!3283908)))

(assert (=> b!5281392 (= res!2239839 lt!2158569)))

(declare-fun lt!2158563 () Unit!153130)

(assert (=> b!5281392 (= lt!2158563 (lemmaZipperConcatMatchesSameAsBothZippers!140 lt!2158570 lt!2158581 (t!374213 s!2326)))))

(assert (=> b!5281392 (= (flatMap!630 lt!2158551 lambda!266801) (derivationStepZipperUp!275 lt!2158572 (h!67334 s!2326)))))

(declare-fun lt!2158576 () Unit!153130)

(assert (=> b!5281392 (= lt!2158576 (lemmaFlatMapOnSingletonSet!162 lt!2158551 lt!2158572 lambda!266801))))

(declare-fun b!5281393 () Bool)

(declare-fun res!2239816 () Bool)

(assert (=> b!5281393 (=> res!2239816 e!3283928)))

(declare-fun generalisedUnion!832 (List!61008) Regex!14903)

(declare-fun unfocusZipperList!345 (List!61009) List!61008)

(assert (=> b!5281393 (= res!2239816 (not (= r!7292 (generalisedUnion!832 (unfocusZipperList!345 zl!343)))))))

(declare-fun b!5281394 () Bool)

(assert (=> b!5281394 (= e!3283912 e!3283921)))

(declare-fun res!2239818 () Bool)

(assert (=> b!5281394 (=> res!2239818 e!3283921)))

(assert (=> b!5281394 (= res!2239818 (not (= lt!2158547 lt!2158565)))))

(assert (=> b!5281394 (= lt!2158565 ((_ map or) lt!2158570 lt!2158581))))

(assert (=> b!5281394 (= lt!2158581 (derivationStepZipperUp!275 lt!2158572 (h!67334 s!2326)))))

(assert (=> b!5281394 (= (flatMap!630 lt!2158557 lambda!266801) (derivationStepZipperUp!275 lt!2158582 (h!67334 s!2326)))))

(declare-fun lt!2158573 () Unit!153130)

(assert (=> b!5281394 (= lt!2158573 (lemmaFlatMapOnSingletonSet!162 lt!2158557 lt!2158582 lambda!266801))))

(declare-fun lt!2158550 () (InoxSet Context!8574))

(assert (=> b!5281394 (= lt!2158550 (derivationStepZipperUp!275 lt!2158582 (h!67334 s!2326)))))

(assert (=> b!5281394 (= lt!2158547 (derivationStepZipper!1146 lt!2158557 (h!67334 s!2326)))))

(assert (=> b!5281394 (= lt!2158551 (store ((as const (Array Context!8574 Bool)) false) lt!2158572 true))))

(assert (=> b!5281394 (= lt!2158557 (store ((as const (Array Context!8574 Bool)) false) lt!2158582 true))))

(assert (=> b!5281394 (= lt!2158582 (Context!8575 lt!2158553))))

(assert (=> b!5281394 (= lt!2158553 (Cons!60884 (regOne!30318 (regOne!30318 r!7292)) lt!2158568))))

(assert (=> b!5281395 (= e!3283928 e!3283916)))

(declare-fun res!2239814 () Bool)

(assert (=> b!5281395 (=> res!2239814 e!3283916)))

(declare-fun lt!2158549 () Bool)

(assert (=> b!5281395 (= res!2239814 (or (not (= lt!2158560 lt!2158549)) ((_ is Nil!60886) s!2326)))))

(declare-fun Exists!2084 (Int) Bool)

(assert (=> b!5281395 (= (Exists!2084 lambda!266799) (Exists!2084 lambda!266800))))

(declare-fun lt!2158571 () Unit!153130)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!738 (Regex!14903 Regex!14903 List!61010) Unit!153130)

(assert (=> b!5281395 (= lt!2158571 (lemmaExistCutMatchRandMatchRSpecEquivalent!738 (regOne!30318 r!7292) (regTwo!30318 r!7292) s!2326))))

(assert (=> b!5281395 (= lt!2158549 (Exists!2084 lambda!266799))))

(declare-datatypes ((tuple2!64204 0))(
  ( (tuple2!64205 (_1!35405 List!61010) (_2!35405 List!61010)) )
))
(declare-datatypes ((Option!15014 0))(
  ( (None!15013) (Some!15013 (v!51042 tuple2!64204)) )
))
(declare-fun isDefined!11717 (Option!15014) Bool)

(declare-fun findConcatSeparation!1428 (Regex!14903 Regex!14903 List!61010 List!61010 List!61010) Option!15014)

(assert (=> b!5281395 (= lt!2158549 (isDefined!11717 (findConcatSeparation!1428 (regOne!30318 r!7292) (regTwo!30318 r!7292) Nil!60886 s!2326 s!2326)))))

(declare-fun lt!2158552 () Unit!153130)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1192 (Regex!14903 Regex!14903 List!61010) Unit!153130)

(assert (=> b!5281395 (= lt!2158552 (lemmaFindConcatSeparationEquivalentToExists!1192 (regOne!30318 r!7292) (regTwo!30318 r!7292) s!2326))))

(assert (= (and start!557646 res!2239815) b!5281389))

(assert (= (and b!5281389 res!2239836) b!5281379))

(assert (= (and b!5281379 res!2239837) b!5281367))

(assert (= (and b!5281367 (not res!2239829)) b!5281365))

(assert (= (and b!5281365 (not res!2239820)) b!5281383))

(assert (= (and b!5281383 (not res!2239819)) b!5281374))

(assert (= (and b!5281374 (not res!2239827)) b!5281393))

(assert (= (and b!5281393 (not res!2239816)) b!5281368))

(assert (= (and b!5281368 (not res!2239822)) b!5281395))

(assert (= (and b!5281395 (not res!2239814)) b!5281358))

(assert (= (and b!5281358 (not res!2239831)) b!5281360))

(assert (= (and b!5281360 c!915554) b!5281381))

(assert (= (and b!5281360 (not c!915554)) b!5281380))

(assert (= (and b!5281381 (not res!2239833)) b!5281384))

(assert (= (and b!5281360 (not res!2239825)) b!5281364))

(assert (= (and b!5281364 (not res!2239813)) b!5281391))

(assert (= (and b!5281391 (not res!2239817)) b!5281372))

(assert (= (and b!5281372 (not res!2239812)) b!5281386))

(assert (= (and b!5281372 res!2239834) b!5281371))

(assert (= (and b!5281372 (not res!2239832)) b!5281394))

(assert (= (and b!5281394 (not res!2239818)) b!5281392))

(assert (= (and b!5281392 (not res!2239839)) b!5281369))

(assert (= (and b!5281392 res!2239823) b!5281373))

(assert (= (and b!5281392 (not res!2239826)) b!5281375))

(assert (= (and b!5281375 (not res!2239821)) b!5281366))

(assert (= (and b!5281366 (not res!2239830)) b!5281376))

(assert (= (and b!5281376 (not res!2239828)) b!5281362))

(assert (= (and b!5281362 (not res!2239838)) b!5281385))

(assert (= (and b!5281385 (not res!2239835)) b!5281390))

(assert (= (and b!5281390 (not res!2239824)) b!5281370))

(assert (= (and start!557646 ((_ is ElementMatch!14903) r!7292)) b!5281378))

(assert (= (and start!557646 ((_ is Concat!23748) r!7292)) b!5281359))

(assert (= (and start!557646 ((_ is Star!14903) r!7292)) b!5281382))

(assert (= (and start!557646 ((_ is Union!14903) r!7292)) b!5281387))

(assert (= (and start!557646 condSetEmpty!33851) setIsEmpty!33851))

(assert (= (and start!557646 (not condSetEmpty!33851)) setNonEmpty!33851))

(assert (= setNonEmpty!33851 b!5281377))

(assert (= b!5281388 b!5281363))

(assert (= (and start!557646 ((_ is Cons!60885) zl!343)) b!5281388))

(assert (= (and start!557646 ((_ is Cons!60886) s!2326)) b!5281361))

(declare-fun m!6319244 () Bool)

(assert (=> b!5281379 m!6319244))

(declare-fun m!6319246 () Bool)

(assert (=> b!5281383 m!6319246))

(declare-fun m!6319248 () Bool)

(assert (=> b!5281384 m!6319248))

(declare-fun m!6319250 () Bool)

(assert (=> b!5281393 m!6319250))

(assert (=> b!5281393 m!6319250))

(declare-fun m!6319252 () Bool)

(assert (=> b!5281393 m!6319252))

(declare-fun m!6319254 () Bool)

(assert (=> b!5281385 m!6319254))

(declare-fun m!6319256 () Bool)

(assert (=> b!5281385 m!6319256))

(declare-fun m!6319258 () Bool)

(assert (=> b!5281385 m!6319258))

(declare-fun m!6319260 () Bool)

(assert (=> b!5281385 m!6319260))

(assert (=> b!5281385 m!6319258))

(declare-fun m!6319262 () Bool)

(assert (=> b!5281385 m!6319262))

(declare-fun m!6319264 () Bool)

(assert (=> b!5281385 m!6319264))

(declare-fun m!6319266 () Bool)

(assert (=> b!5281395 m!6319266))

(declare-fun m!6319268 () Bool)

(assert (=> b!5281395 m!6319268))

(declare-fun m!6319270 () Bool)

(assert (=> b!5281395 m!6319270))

(declare-fun m!6319272 () Bool)

(assert (=> b!5281395 m!6319272))

(assert (=> b!5281395 m!6319270))

(declare-fun m!6319274 () Bool)

(assert (=> b!5281395 m!6319274))

(assert (=> b!5281395 m!6319266))

(declare-fun m!6319276 () Bool)

(assert (=> b!5281395 m!6319276))

(declare-fun m!6319278 () Bool)

(assert (=> b!5281362 m!6319278))

(declare-fun m!6319280 () Bool)

(assert (=> b!5281362 m!6319280))

(declare-fun m!6319282 () Bool)

(assert (=> b!5281392 m!6319282))

(declare-fun m!6319284 () Bool)

(assert (=> b!5281392 m!6319284))

(declare-fun m!6319286 () Bool)

(assert (=> b!5281392 m!6319286))

(declare-fun m!6319288 () Bool)

(assert (=> b!5281392 m!6319288))

(declare-fun m!6319290 () Bool)

(assert (=> b!5281392 m!6319290))

(declare-fun m!6319292 () Bool)

(assert (=> b!5281392 m!6319292))

(declare-fun m!6319294 () Bool)

(assert (=> b!5281364 m!6319294))

(declare-fun m!6319296 () Bool)

(assert (=> b!5281388 m!6319296))

(declare-fun m!6319298 () Bool)

(assert (=> b!5281391 m!6319298))

(declare-fun m!6319300 () Bool)

(assert (=> b!5281391 m!6319300))

(declare-fun m!6319302 () Bool)

(assert (=> b!5281360 m!6319302))

(declare-fun m!6319304 () Bool)

(assert (=> b!5281360 m!6319304))

(declare-fun m!6319306 () Bool)

(assert (=> b!5281360 m!6319306))

(declare-fun m!6319308 () Bool)

(assert (=> b!5281360 m!6319308))

(declare-fun m!6319310 () Bool)

(assert (=> b!5281360 m!6319310))

(declare-fun m!6319312 () Bool)

(assert (=> b!5281360 m!6319312))

(declare-fun m!6319314 () Bool)

(assert (=> b!5281360 m!6319314))

(declare-fun m!6319316 () Bool)

(assert (=> b!5281386 m!6319316))

(declare-fun m!6319318 () Bool)

(assert (=> b!5281394 m!6319318))

(declare-fun m!6319320 () Bool)

(assert (=> b!5281394 m!6319320))

(declare-fun m!6319322 () Bool)

(assert (=> b!5281394 m!6319322))

(declare-fun m!6319324 () Bool)

(assert (=> b!5281394 m!6319324))

(declare-fun m!6319326 () Bool)

(assert (=> b!5281394 m!6319326))

(declare-fun m!6319328 () Bool)

(assert (=> b!5281394 m!6319328))

(assert (=> b!5281394 m!6319282))

(declare-fun m!6319330 () Bool)

(assert (=> b!5281366 m!6319330))

(declare-fun m!6319332 () Bool)

(assert (=> b!5281366 m!6319332))

(declare-fun m!6319334 () Bool)

(assert (=> b!5281389 m!6319334))

(declare-fun m!6319336 () Bool)

(assert (=> b!5281390 m!6319336))

(declare-fun m!6319338 () Bool)

(assert (=> b!5281381 m!6319338))

(declare-fun m!6319340 () Bool)

(assert (=> b!5281381 m!6319340))

(declare-fun m!6319342 () Bool)

(assert (=> b!5281381 m!6319342))

(assert (=> b!5281372 m!6319340))

(declare-fun m!6319344 () Bool)

(assert (=> b!5281372 m!6319344))

(declare-fun m!6319346 () Bool)

(assert (=> b!5281372 m!6319346))

(declare-fun m!6319348 () Bool)

(assert (=> b!5281372 m!6319348))

(declare-fun m!6319350 () Bool)

(assert (=> start!557646 m!6319350))

(declare-fun m!6319352 () Bool)

(assert (=> b!5281376 m!6319352))

(declare-fun m!6319354 () Bool)

(assert (=> b!5281376 m!6319354))

(declare-fun m!6319356 () Bool)

(assert (=> b!5281358 m!6319356))

(declare-fun m!6319358 () Bool)

(assert (=> b!5281367 m!6319358))

(declare-fun m!6319360 () Bool)

(assert (=> b!5281367 m!6319360))

(declare-fun m!6319362 () Bool)

(assert (=> b!5281367 m!6319362))

(assert (=> b!5281371 m!6319316))

(declare-fun m!6319364 () Bool)

(assert (=> b!5281373 m!6319364))

(assert (=> b!5281373 m!6319364))

(declare-fun m!6319366 () Bool)

(assert (=> b!5281373 m!6319366))

(declare-fun m!6319368 () Bool)

(assert (=> setNonEmpty!33851 m!6319368))

(declare-fun m!6319370 () Bool)

(assert (=> b!5281369 m!6319370))

(declare-fun m!6319372 () Bool)

(assert (=> b!5281370 m!6319372))

(declare-fun m!6319374 () Bool)

(assert (=> b!5281365 m!6319374))

(check-sat (not b!5281366) (not b!5281388) (not b!5281392) (not b!5281387) (not b!5281376) (not b!5281377) (not b!5281365) tp_is_empty!39059 (not b!5281391) (not b!5281372) (not b!5281393) (not b!5281361) (not b!5281379) (not b!5281390) (not setNonEmpty!33851) (not b!5281384) (not start!557646) (not b!5281373) (not b!5281389) (not b!5281382) (not b!5281358) (not b!5281363) (not b!5281370) (not b!5281385) (not b!5281362) (not b!5281360) (not b!5281359) (not b!5281367) (not b!5281371) (not b!5281395) (not b!5281386) (not b!5281369) (not b!5281394) (not b!5281383) (not b!5281364) (not b!5281381))
(check-sat)
