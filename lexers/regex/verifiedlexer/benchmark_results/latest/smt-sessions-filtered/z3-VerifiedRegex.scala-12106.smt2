; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!679168 () Bool)

(assert start!679168)

(declare-fun b!7030377 () Bool)

(assert (=> b!7030377 true))

(declare-fun b!7030373 () Bool)

(assert (=> b!7030373 true))

(declare-fun b!7030364 () Bool)

(assert (=> b!7030364 true))

(declare-fun bs!1869896 () Bool)

(declare-fun b!7030376 () Bool)

(assert (= bs!1869896 (and b!7030376 b!7030377)))

(declare-fun lambda!414257 () Int)

(declare-fun lambda!414253 () Int)

(assert (=> bs!1869896 (not (= lambda!414257 lambda!414253))))

(declare-fun b!7030356 () Bool)

(declare-fun res!2869943 () Bool)

(declare-fun e!4226382 () Bool)

(assert (=> b!7030356 (=> res!2869943 e!4226382)))

(declare-fun lt!2517589 () Bool)

(assert (=> b!7030356 (= res!2869943 (not lt!2517589))))

(declare-fun b!7030357 () Bool)

(declare-fun e!4226383 () Bool)

(declare-fun tp!1936154 () Bool)

(assert (=> b!7030357 (= e!4226383 tp!1936154)))

(declare-fun b!7030358 () Bool)

(declare-fun e!4226372 () Bool)

(assert (=> b!7030358 (= e!4226372 e!4226382)))

(declare-fun res!2869946 () Bool)

(assert (=> b!7030358 (=> res!2869946 e!4226382)))

(declare-fun e!4226373 () Bool)

(assert (=> b!7030358 (= res!2869946 e!4226373)))

(declare-fun res!2869952 () Bool)

(assert (=> b!7030358 (=> (not res!2869952) (not e!4226373))))

(declare-fun lt!2517608 () Bool)

(assert (=> b!7030358 (= res!2869952 (not (= lt!2517589 lt!2517608)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35188 0))(
  ( (C!35189 (val!27296 Int)) )
))
(declare-datatypes ((Regex!17459 0))(
  ( (ElementMatch!17459 (c!1307360 C!35188)) (Concat!26304 (regOne!35430 Regex!17459) (regTwo!35430 Regex!17459)) (EmptyExpr!17459) (Star!17459 (reg!17788 Regex!17459)) (EmptyLang!17459) (Union!17459 (regOne!35431 Regex!17459) (regTwo!35431 Regex!17459)) )
))
(declare-datatypes ((List!67905 0))(
  ( (Nil!67781) (Cons!67781 (h!74229 Regex!17459) (t!381668 List!67905)) )
))
(declare-datatypes ((Context!12910 0))(
  ( (Context!12911 (exprs!6955 List!67905)) )
))
(declare-fun lt!2517573 () (InoxSet Context!12910))

(declare-datatypes ((List!67906 0))(
  ( (Nil!67782) (Cons!67782 (h!74230 C!35188) (t!381669 List!67906)) )
))
(declare-fun s!7408 () List!67906)

(declare-fun matchZipper!2999 ((InoxSet Context!12910) List!67906) Bool)

(assert (=> b!7030358 (= lt!2517589 (matchZipper!2999 lt!2517573 (t!381669 s!7408)))))

(declare-fun lt!2517605 () List!67905)

(declare-fun lambda!414255 () Int)

(declare-fun ct2!306 () Context!12910)

(declare-datatypes ((Unit!161586 0))(
  ( (Unit!161587) )
))
(declare-fun lt!2517595 () Unit!161586)

(declare-fun lemmaConcatPreservesForall!780 (List!67905 List!67905 Int) Unit!161586)

(assert (=> b!7030358 (= lt!2517595 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517614 () (InoxSet Context!12910))

(declare-fun e!4226368 () Bool)

(assert (=> b!7030358 (= (matchZipper!2999 lt!2517614 (t!381669 s!7408)) e!4226368)))

(declare-fun res!2869956 () Bool)

(assert (=> b!7030358 (=> res!2869956 e!4226368)))

(assert (=> b!7030358 (= res!2869956 lt!2517608)))

(declare-fun lt!2517599 () (InoxSet Context!12910))

(assert (=> b!7030358 (= lt!2517608 (matchZipper!2999 lt!2517599 (t!381669 s!7408)))))

(declare-fun lt!2517570 () Unit!161586)

(declare-fun lt!2517606 () (InoxSet Context!12910))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1532 ((InoxSet Context!12910) (InoxSet Context!12910) List!67906) Unit!161586)

(assert (=> b!7030358 (= lt!2517570 (lemmaZipperConcatMatchesSameAsBothZippers!1532 lt!2517599 lt!2517606 (t!381669 s!7408)))))

(declare-fun lt!2517569 () Unit!161586)

(assert (=> b!7030358 (= lt!2517569 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517575 () Unit!161586)

(assert (=> b!7030358 (= lt!2517575 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun b!7030359 () Bool)

(declare-fun e!4226369 () Bool)

(declare-fun e!4226381 () Bool)

(assert (=> b!7030359 (= e!4226369 e!4226381)))

(declare-fun res!2869965 () Bool)

(assert (=> b!7030359 (=> res!2869965 e!4226381)))

(declare-fun lt!2517593 () Int)

(declare-fun lt!2517592 () Context!12910)

(declare-fun contextDepthTotal!494 (Context!12910) Int)

(assert (=> b!7030359 (= res!2869965 (<= lt!2517593 (contextDepthTotal!494 lt!2517592)))))

(declare-fun lt!2517609 () Int)

(assert (=> b!7030359 (<= lt!2517593 lt!2517609)))

(declare-datatypes ((List!67907 0))(
  ( (Nil!67783) (Cons!67783 (h!74231 Context!12910) (t!381670 List!67907)) )
))
(declare-fun lt!2517568 () List!67907)

(declare-fun zipperDepthTotal!522 (List!67907) Int)

(assert (=> b!7030359 (= lt!2517609 (zipperDepthTotal!522 lt!2517568))))

(declare-fun lt!2517579 () Context!12910)

(assert (=> b!7030359 (= lt!2517593 (contextDepthTotal!494 lt!2517579))))

(declare-fun lt!2517590 () Unit!161586)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!62 (List!67907 Context!12910) Unit!161586)

(assert (=> b!7030359 (= lt!2517590 (lemmaTotalDepthZipperLargerThanOfAnyContext!62 lt!2517568 lt!2517579))))

(declare-fun z1!570 () (InoxSet Context!12910))

(declare-fun toList!10802 ((InoxSet Context!12910)) List!67907)

(assert (=> b!7030359 (= lt!2517568 (toList!10802 z1!570))))

(declare-fun lt!2517574 () Unit!161586)

(assert (=> b!7030359 (= lt!2517574 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517581 () Unit!161586)

(assert (=> b!7030359 (= lt!2517581 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517578 () Unit!161586)

(assert (=> b!7030359 (= lt!2517578 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517603 () (InoxSet Context!12910))

(declare-fun lambda!414256 () Int)

(declare-fun flatMap!2406 ((InoxSet Context!12910) Int) (InoxSet Context!12910))

(declare-fun derivationStepZipperUp!2069 (Context!12910 C!35188) (InoxSet Context!12910))

(assert (=> b!7030359 (= (flatMap!2406 lt!2517603 lambda!414256) (derivationStepZipperUp!2069 lt!2517592 (h!74230 s!7408)))))

(declare-fun lt!2517596 () Unit!161586)

(declare-fun lemmaFlatMapOnSingletonSet!1920 ((InoxSet Context!12910) Context!12910 Int) Unit!161586)

(assert (=> b!7030359 (= lt!2517596 (lemmaFlatMapOnSingletonSet!1920 lt!2517603 lt!2517592 lambda!414256))))

(declare-fun lambda!414254 () Int)

(declare-fun map!15756 ((InoxSet Context!12910) Int) (InoxSet Context!12910))

(declare-fun ++!15498 (List!67905 List!67905) List!67905)

(assert (=> b!7030359 (= (map!15756 lt!2517603 lambda!414254) (store ((as const (Array Context!12910 Bool)) false) (Context!12911 (++!15498 lt!2517605 (exprs!6955 ct2!306))) true))))

(declare-fun lt!2517598 () Unit!161586)

(assert (=> b!7030359 (= lt!2517598 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517586 () Unit!161586)

(declare-fun lemmaMapOnSingletonSet!370 ((InoxSet Context!12910) Context!12910 Int) Unit!161586)

(assert (=> b!7030359 (= lt!2517586 (lemmaMapOnSingletonSet!370 lt!2517603 lt!2517592 lambda!414254))))

(assert (=> b!7030359 (= lt!2517603 (store ((as const (Array Context!12910 Bool)) false) lt!2517592 true))))

(declare-fun b!7030360 () Bool)

(declare-fun e!4226379 () Bool)

(declare-fun tp_is_empty!44143 () Bool)

(declare-fun tp!1936155 () Bool)

(assert (=> b!7030360 (= e!4226379 (and tp_is_empty!44143 tp!1936155))))

(declare-fun b!7030361 () Bool)

(declare-fun res!2869944 () Bool)

(assert (=> b!7030361 (=> res!2869944 e!4226381)))

(assert (=> b!7030361 (= res!2869944 (>= (zipperDepthTotal!522 (Cons!67783 lt!2517592 Nil!67783)) lt!2517609))))

(declare-fun b!7030362 () Bool)

(assert (=> b!7030362 (= e!4226368 (matchZipper!2999 lt!2517606 (t!381669 s!7408)))))

(declare-fun b!7030363 () Bool)

(declare-fun e!4226378 () Bool)

(assert (=> b!7030363 (= e!4226381 e!4226378)))

(declare-fun res!2869949 () Bool)

(assert (=> b!7030363 (=> res!2869949 e!4226378)))

(declare-datatypes ((tuple2!68064 0))(
  ( (tuple2!68065 (_1!37335 List!67906) (_2!37335 List!67906)) )
))
(declare-fun lt!2517607 () tuple2!68064)

(assert (=> b!7030363 (= res!2869949 (not (matchZipper!2999 lt!2517603 (_1!37335 lt!2517607))))))

(declare-datatypes ((Option!16864 0))(
  ( (None!16863) (Some!16863 (v!53145 tuple2!68064)) )
))
(declare-fun lt!2517585 () Option!16864)

(declare-fun get!23744 (Option!16864) tuple2!68064)

(assert (=> b!7030363 (= lt!2517607 (get!23744 lt!2517585))))

(declare-fun isDefined!13565 (Option!16864) Bool)

(assert (=> b!7030363 (isDefined!13565 lt!2517585)))

(declare-fun lt!2517610 () (InoxSet Context!12910))

(declare-fun findConcatSeparationZippers!380 ((InoxSet Context!12910) (InoxSet Context!12910) List!67906 List!67906 List!67906) Option!16864)

(assert (=> b!7030363 (= lt!2517585 (findConcatSeparationZippers!380 lt!2517603 lt!2517610 Nil!67782 s!7408 s!7408))))

(assert (=> b!7030363 (= lt!2517610 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true))))

(declare-fun lt!2517583 () Unit!161586)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!368 ((InoxSet Context!12910) Context!12910 List!67906) Unit!161586)

(assert (=> b!7030363 (= lt!2517583 (lemmaConcatZipperMatchesStringThenFindConcatDefined!368 lt!2517603 ct2!306 s!7408))))

(declare-fun e!4226375 () Bool)

(declare-fun e!4226385 () Bool)

(assert (=> b!7030364 (= e!4226375 e!4226385)))

(declare-fun res!2869958 () Bool)

(assert (=> b!7030364 (=> res!2869958 e!4226385)))

(declare-fun lt!2517584 () (InoxSet Context!12910))

(declare-fun derivationStepZipper!2915 ((InoxSet Context!12910) C!35188) (InoxSet Context!12910))

(assert (=> b!7030364 (= res!2869958 (not (= (derivationStepZipper!2915 lt!2517584 (h!74230 s!7408)) lt!2517573)))))

(declare-fun lt!2517582 () Context!12910)

(assert (=> b!7030364 (= (flatMap!2406 lt!2517584 lambda!414256) (derivationStepZipperUp!2069 lt!2517582 (h!74230 s!7408)))))

(declare-fun lt!2517597 () Unit!161586)

(assert (=> b!7030364 (= lt!2517597 (lemmaFlatMapOnSingletonSet!1920 lt!2517584 lt!2517582 lambda!414256))))

(assert (=> b!7030364 (= lt!2517573 (derivationStepZipperUp!2069 lt!2517582 (h!74230 s!7408)))))

(declare-fun lt!2517600 () Unit!161586)

(assert (=> b!7030364 (= lt!2517600 (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255))))

(declare-fun res!2869955 () Bool)

(declare-fun e!4226377 () Bool)

(assert (=> start!679168 (=> (not res!2869955) (not e!4226377))))

(declare-fun lt!2517572 () (InoxSet Context!12910))

(assert (=> start!679168 (= res!2869955 (matchZipper!2999 lt!2517572 s!7408))))

(declare-fun appendTo!580 ((InoxSet Context!12910) Context!12910) (InoxSet Context!12910))

(assert (=> start!679168 (= lt!2517572 (appendTo!580 z1!570 ct2!306))))

(assert (=> start!679168 e!4226377))

(declare-fun condSetEmpty!49106 () Bool)

(assert (=> start!679168 (= condSetEmpty!49106 (= z1!570 ((as const (Array Context!12910 Bool)) false)))))

(declare-fun setRes!49106 () Bool)

(assert (=> start!679168 setRes!49106))

(declare-fun inv!86506 (Context!12910) Bool)

(assert (=> start!679168 (and (inv!86506 ct2!306) e!4226383)))

(assert (=> start!679168 e!4226379))

(declare-fun b!7030365 () Bool)

(declare-fun res!2869960 () Bool)

(assert (=> b!7030365 (=> res!2869960 e!4226385)))

(get-info :version)

(assert (=> b!7030365 (= res!2869960 (not ((_ is Cons!67781) (exprs!6955 lt!2517579))))))

(declare-fun b!7030366 () Bool)

(declare-fun e!4226384 () Bool)

(assert (=> b!7030366 (= e!4226384 e!4226372)))

(declare-fun res!2869953 () Bool)

(assert (=> b!7030366 (=> res!2869953 e!4226372)))

(assert (=> b!7030366 (= res!2869953 (not (= lt!2517573 lt!2517614)))))

(assert (=> b!7030366 (= lt!2517614 ((_ map or) lt!2517599 lt!2517606))))

(declare-fun lt!2517613 () Context!12910)

(assert (=> b!7030366 (= lt!2517606 (derivationStepZipperUp!2069 lt!2517613 (h!74230 s!7408)))))

(declare-fun derivationStepZipperDown!2123 (Regex!17459 Context!12910 C!35188) (InoxSet Context!12910))

(assert (=> b!7030366 (= lt!2517599 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517579)) lt!2517613 (h!74230 s!7408)))))

(assert (=> b!7030366 (= lt!2517613 (Context!12911 (++!15498 lt!2517605 (exprs!6955 ct2!306))))))

(declare-fun lt!2517612 () Unit!161586)

(assert (=> b!7030366 (= lt!2517612 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517580 () Unit!161586)

(assert (=> b!7030366 (= lt!2517580 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun b!7030367 () Bool)

(declare-fun res!2869961 () Bool)

(assert (=> b!7030367 (=> res!2869961 e!4226378)))

(declare-fun ++!15499 (List!67906 List!67906) List!67906)

(assert (=> b!7030367 (= res!2869961 (not (= (++!15499 (_1!37335 lt!2517607) (_2!37335 lt!2517607)) s!7408)))))

(declare-fun b!7030368 () Bool)

(assert (=> b!7030368 (= e!4226373 (not (matchZipper!2999 lt!2517606 (t!381669 s!7408))))))

(declare-fun lt!2517611 () Unit!161586)

(assert (=> b!7030368 (= lt!2517611 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun b!7030369 () Bool)

(declare-fun res!2869962 () Bool)

(assert (=> b!7030369 (=> res!2869962 e!4226378)))

(declare-fun isEmpty!39526 (List!67906) Bool)

(assert (=> b!7030369 (= res!2869962 (not (isEmpty!39526 (_1!37335 lt!2517607))))))

(declare-fun b!7030370 () Bool)

(declare-fun e!4226370 () Bool)

(declare-fun e!4226374 () Bool)

(assert (=> b!7030370 (= e!4226370 e!4226374)))

(declare-fun res!2869951 () Bool)

(assert (=> b!7030370 (=> res!2869951 e!4226374)))

(declare-fun lt!2517591 () (InoxSet Context!12910))

(assert (=> b!7030370 (= res!2869951 (not (= (derivationStepZipper!2915 lt!2517591 (h!74230 s!7408)) lt!2517606)))))

(declare-fun lt!2517604 () Unit!161586)

(assert (=> b!7030370 (= lt!2517604 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517571 () Unit!161586)

(assert (=> b!7030370 (= lt!2517571 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(assert (=> b!7030370 (= (flatMap!2406 lt!2517591 lambda!414256) (derivationStepZipperUp!2069 lt!2517613 (h!74230 s!7408)))))

(declare-fun lt!2517602 () Unit!161586)

(assert (=> b!7030370 (= lt!2517602 (lemmaFlatMapOnSingletonSet!1920 lt!2517591 lt!2517613 lambda!414256))))

(assert (=> b!7030370 (= lt!2517591 (store ((as const (Array Context!12910 Bool)) false) lt!2517613 true))))

(declare-fun lt!2517594 () Unit!161586)

(assert (=> b!7030370 (= lt!2517594 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun lt!2517587 () Unit!161586)

(assert (=> b!7030370 (= lt!2517587 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun b!7030371 () Bool)

(declare-fun res!2869948 () Bool)

(assert (=> b!7030371 (=> res!2869948 e!4226385)))

(declare-fun isEmpty!39527 (List!67905) Bool)

(assert (=> b!7030371 (= res!2869948 (isEmpty!39527 (exprs!6955 lt!2517579)))))

(declare-fun b!7030372 () Bool)

(assert (=> b!7030372 (= e!4226385 e!4226384)))

(declare-fun res!2869966 () Bool)

(assert (=> b!7030372 (=> res!2869966 e!4226384)))

(declare-fun nullable!7170 (Regex!17459) Bool)

(assert (=> b!7030372 (= res!2869966 (not (nullable!7170 (h!74229 (exprs!6955 lt!2517579)))))))

(assert (=> b!7030372 (= lt!2517592 (Context!12911 lt!2517605))))

(declare-fun tail!13541 (List!67905) List!67905)

(assert (=> b!7030372 (= lt!2517605 (tail!13541 (exprs!6955 lt!2517579)))))

(declare-fun setNonEmpty!49106 () Bool)

(declare-fun setElem!49106 () Context!12910)

(declare-fun tp!1936157 () Bool)

(declare-fun e!4226376 () Bool)

(assert (=> setNonEmpty!49106 (= setRes!49106 (and tp!1936157 (inv!86506 setElem!49106) e!4226376))))

(declare-fun setRest!49106 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49106 (= z1!570 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49106 true) setRest!49106))))

(declare-fun e!4226380 () Bool)

(declare-fun e!4226371 () Bool)

(assert (=> b!7030373 (= e!4226380 e!4226371)))

(declare-fun res!2869950 () Bool)

(assert (=> b!7030373 (=> res!2869950 e!4226371)))

(declare-fun lt!2517565 () Context!12910)

(assert (=> b!7030373 (= res!2869950 (or (not (= lt!2517582 lt!2517565)) (not (select z1!570 lt!2517579))))))

(assert (=> b!7030373 (= lt!2517582 (Context!12911 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306))))))

(declare-fun lt!2517588 () Unit!161586)

(assert (=> b!7030373 (= lt!2517588 (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255))))

(declare-fun mapPost2!300 ((InoxSet Context!12910) Int Context!12910) Context!12910)

(assert (=> b!7030373 (= lt!2517579 (mapPost2!300 z1!570 lambda!414254 lt!2517565))))

(declare-fun setIsEmpty!49106 () Bool)

(assert (=> setIsEmpty!49106 setRes!49106))

(declare-fun b!7030374 () Bool)

(assert (=> b!7030374 (= e!4226374 e!4226369)))

(declare-fun res!2869957 () Bool)

(assert (=> b!7030374 (=> res!2869957 e!4226369)))

(assert (=> b!7030374 (= res!2869957 (not (matchZipper!2999 lt!2517591 s!7408)))))

(declare-fun lt!2517601 () Unit!161586)

(assert (=> b!7030374 (= lt!2517601 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun b!7030375 () Bool)

(assert (=> b!7030375 (= e!4226382 e!4226370)))

(declare-fun res!2869954 () Bool)

(assert (=> b!7030375 (=> res!2869954 e!4226370)))

(assert (=> b!7030375 (= res!2869954 (not (matchZipper!2999 lt!2517606 (t!381669 s!7408))))))

(declare-fun lt!2517566 () Unit!161586)

(assert (=> b!7030375 (= lt!2517566 (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(declare-fun exists!3380 ((InoxSet Context!12910) Int) Bool)

(assert (=> b!7030376 (= e!4226378 (exists!3380 lt!2517603 lambda!414257))))

(assert (=> b!7030377 (= e!4226377 (not e!4226380))))

(declare-fun res!2869963 () Bool)

(assert (=> b!7030377 (=> res!2869963 e!4226380)))

(declare-fun lt!2517576 () (InoxSet Context!12910))

(assert (=> b!7030377 (= res!2869963 (not (matchZipper!2999 lt!2517576 s!7408)))))

(assert (=> b!7030377 (= lt!2517576 (store ((as const (Array Context!12910 Bool)) false) lt!2517565 true))))

(declare-fun getWitness!1460 ((InoxSet Context!12910) Int) Context!12910)

(assert (=> b!7030377 (= lt!2517565 (getWitness!1460 lt!2517572 lambda!414253))))

(declare-fun lt!2517567 () List!67907)

(declare-fun exists!3381 (List!67907 Int) Bool)

(assert (=> b!7030377 (exists!3381 lt!2517567 lambda!414253)))

(declare-fun lt!2517615 () Unit!161586)

(declare-fun lemmaZipperMatchesExistsMatchingContext!398 (List!67907 List!67906) Unit!161586)

(assert (=> b!7030377 (= lt!2517615 (lemmaZipperMatchesExistsMatchingContext!398 lt!2517567 s!7408))))

(assert (=> b!7030377 (= lt!2517567 (toList!10802 lt!2517572))))

(declare-fun b!7030378 () Bool)

(declare-fun res!2869947 () Bool)

(assert (=> b!7030378 (=> res!2869947 e!4226378)))

(assert (=> b!7030378 (= res!2869947 (not (matchZipper!2999 lt!2517610 (_2!37335 lt!2517607))))))

(declare-fun b!7030379 () Bool)

(declare-fun tp!1936156 () Bool)

(assert (=> b!7030379 (= e!4226376 tp!1936156)))

(declare-fun b!7030380 () Bool)

(declare-fun res!2869964 () Bool)

(assert (=> b!7030380 (=> (not res!2869964) (not e!4226377))))

(assert (=> b!7030380 (= res!2869964 ((_ is Cons!67782) s!7408))))

(declare-fun b!7030381 () Bool)

(declare-fun res!2869959 () Bool)

(assert (=> b!7030381 (=> res!2869959 e!4226380)))

(assert (=> b!7030381 (= res!2869959 (not (select lt!2517572 lt!2517565)))))

(declare-fun b!7030382 () Bool)

(assert (=> b!7030382 (= e!4226371 e!4226375)))

(declare-fun res!2869945 () Bool)

(assert (=> b!7030382 (=> res!2869945 e!4226375)))

(assert (=> b!7030382 (= res!2869945 (not (= lt!2517584 lt!2517576)))))

(assert (=> b!7030382 (= lt!2517584 (store ((as const (Array Context!12910 Bool)) false) lt!2517582 true))))

(declare-fun lt!2517577 () Unit!161586)

(assert (=> b!7030382 (= lt!2517577 (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255))))

(assert (= (and start!679168 res!2869955) b!7030380))

(assert (= (and b!7030380 res!2869964) b!7030377))

(assert (= (and b!7030377 (not res!2869963)) b!7030381))

(assert (= (and b!7030381 (not res!2869959)) b!7030373))

(assert (= (and b!7030373 (not res!2869950)) b!7030382))

(assert (= (and b!7030382 (not res!2869945)) b!7030364))

(assert (= (and b!7030364 (not res!2869958)) b!7030365))

(assert (= (and b!7030365 (not res!2869960)) b!7030371))

(assert (= (and b!7030371 (not res!2869948)) b!7030372))

(assert (= (and b!7030372 (not res!2869966)) b!7030366))

(assert (= (and b!7030366 (not res!2869953)) b!7030358))

(assert (= (and b!7030358 (not res!2869956)) b!7030362))

(assert (= (and b!7030358 res!2869952) b!7030368))

(assert (= (and b!7030358 (not res!2869946)) b!7030356))

(assert (= (and b!7030356 (not res!2869943)) b!7030375))

(assert (= (and b!7030375 (not res!2869954)) b!7030370))

(assert (= (and b!7030370 (not res!2869951)) b!7030374))

(assert (= (and b!7030374 (not res!2869957)) b!7030359))

(assert (= (and b!7030359 (not res!2869965)) b!7030361))

(assert (= (and b!7030361 (not res!2869944)) b!7030363))

(assert (= (and b!7030363 (not res!2869949)) b!7030378))

(assert (= (and b!7030378 (not res!2869947)) b!7030367))

(assert (= (and b!7030367 (not res!2869961)) b!7030369))

(assert (= (and b!7030369 (not res!2869962)) b!7030376))

(assert (= (and start!679168 condSetEmpty!49106) setIsEmpty!49106))

(assert (= (and start!679168 (not condSetEmpty!49106)) setNonEmpty!49106))

(assert (= setNonEmpty!49106 b!7030379))

(assert (= start!679168 b!7030357))

(assert (= (and start!679168 ((_ is Cons!67782) s!7408)) b!7030360))

(declare-fun m!7735638 () Bool)

(assert (=> b!7030369 m!7735638))

(declare-fun m!7735640 () Bool)

(assert (=> b!7030376 m!7735640))

(declare-fun m!7735642 () Bool)

(assert (=> b!7030359 m!7735642))

(declare-fun m!7735644 () Bool)

(assert (=> b!7030359 m!7735644))

(declare-fun m!7735646 () Bool)

(assert (=> b!7030359 m!7735646))

(declare-fun m!7735648 () Bool)

(assert (=> b!7030359 m!7735648))

(declare-fun m!7735650 () Bool)

(assert (=> b!7030359 m!7735650))

(assert (=> b!7030359 m!7735642))

(declare-fun m!7735652 () Bool)

(assert (=> b!7030359 m!7735652))

(declare-fun m!7735654 () Bool)

(assert (=> b!7030359 m!7735654))

(declare-fun m!7735656 () Bool)

(assert (=> b!7030359 m!7735656))

(declare-fun m!7735658 () Bool)

(assert (=> b!7030359 m!7735658))

(declare-fun m!7735660 () Bool)

(assert (=> b!7030359 m!7735660))

(declare-fun m!7735662 () Bool)

(assert (=> b!7030359 m!7735662))

(assert (=> b!7030359 m!7735642))

(declare-fun m!7735664 () Bool)

(assert (=> b!7030359 m!7735664))

(declare-fun m!7735666 () Bool)

(assert (=> b!7030359 m!7735666))

(assert (=> b!7030359 m!7735642))

(declare-fun m!7735668 () Bool)

(assert (=> b!7030359 m!7735668))

(declare-fun m!7735670 () Bool)

(assert (=> b!7030363 m!7735670))

(declare-fun m!7735672 () Bool)

(assert (=> b!7030363 m!7735672))

(declare-fun m!7735674 () Bool)

(assert (=> b!7030363 m!7735674))

(declare-fun m!7735676 () Bool)

(assert (=> b!7030363 m!7735676))

(declare-fun m!7735678 () Bool)

(assert (=> b!7030363 m!7735678))

(declare-fun m!7735680 () Bool)

(assert (=> b!7030363 m!7735680))

(declare-fun m!7735682 () Bool)

(assert (=> b!7030382 m!7735682))

(declare-fun m!7735684 () Bool)

(assert (=> b!7030382 m!7735684))

(declare-fun m!7735686 () Bool)

(assert (=> b!7030372 m!7735686))

(declare-fun m!7735688 () Bool)

(assert (=> b!7030372 m!7735688))

(declare-fun m!7735690 () Bool)

(assert (=> b!7030362 m!7735690))

(declare-fun m!7735692 () Bool)

(assert (=> b!7030381 m!7735692))

(declare-fun m!7735694 () Bool)

(assert (=> setNonEmpty!49106 m!7735694))

(declare-fun m!7735696 () Bool)

(assert (=> b!7030367 m!7735696))

(declare-fun m!7735698 () Bool)

(assert (=> b!7030361 m!7735698))

(declare-fun m!7735700 () Bool)

(assert (=> b!7030370 m!7735700))

(assert (=> b!7030370 m!7735642))

(assert (=> b!7030370 m!7735642))

(declare-fun m!7735702 () Bool)

(assert (=> b!7030370 m!7735702))

(assert (=> b!7030370 m!7735642))

(declare-fun m!7735704 () Bool)

(assert (=> b!7030370 m!7735704))

(assert (=> b!7030370 m!7735642))

(declare-fun m!7735706 () Bool)

(assert (=> b!7030370 m!7735706))

(declare-fun m!7735708 () Bool)

(assert (=> b!7030370 m!7735708))

(assert (=> b!7030364 m!7735684))

(declare-fun m!7735710 () Bool)

(assert (=> b!7030364 m!7735710))

(declare-fun m!7735712 () Bool)

(assert (=> b!7030364 m!7735712))

(declare-fun m!7735714 () Bool)

(assert (=> b!7030364 m!7735714))

(declare-fun m!7735716 () Bool)

(assert (=> b!7030364 m!7735716))

(assert (=> b!7030368 m!7735690))

(assert (=> b!7030368 m!7735642))

(assert (=> b!7030375 m!7735690))

(assert (=> b!7030375 m!7735642))

(declare-fun m!7735718 () Bool)

(assert (=> b!7030377 m!7735718))

(declare-fun m!7735720 () Bool)

(assert (=> b!7030377 m!7735720))

(declare-fun m!7735722 () Bool)

(assert (=> b!7030377 m!7735722))

(declare-fun m!7735724 () Bool)

(assert (=> b!7030377 m!7735724))

(declare-fun m!7735726 () Bool)

(assert (=> b!7030377 m!7735726))

(declare-fun m!7735728 () Bool)

(assert (=> b!7030377 m!7735728))

(declare-fun m!7735730 () Bool)

(assert (=> b!7030378 m!7735730))

(declare-fun m!7735732 () Bool)

(assert (=> b!7030358 m!7735732))

(assert (=> b!7030358 m!7735642))

(declare-fun m!7735734 () Bool)

(assert (=> b!7030358 m!7735734))

(declare-fun m!7735736 () Bool)

(assert (=> b!7030358 m!7735736))

(assert (=> b!7030358 m!7735642))

(declare-fun m!7735738 () Bool)

(assert (=> b!7030358 m!7735738))

(assert (=> b!7030358 m!7735642))

(declare-fun m!7735740 () Bool)

(assert (=> b!7030373 m!7735740))

(declare-fun m!7735742 () Bool)

(assert (=> b!7030373 m!7735742))

(assert (=> b!7030373 m!7735684))

(declare-fun m!7735744 () Bool)

(assert (=> b!7030373 m!7735744))

(declare-fun m!7735746 () Bool)

(assert (=> start!679168 m!7735746))

(declare-fun m!7735748 () Bool)

(assert (=> start!679168 m!7735748))

(declare-fun m!7735750 () Bool)

(assert (=> start!679168 m!7735750))

(declare-fun m!7735752 () Bool)

(assert (=> b!7030374 m!7735752))

(assert (=> b!7030374 m!7735642))

(declare-fun m!7735754 () Bool)

(assert (=> b!7030371 m!7735754))

(assert (=> b!7030366 m!7735700))

(assert (=> b!7030366 m!7735642))

(assert (=> b!7030366 m!7735642))

(assert (=> b!7030366 m!7735666))

(declare-fun m!7735756 () Bool)

(assert (=> b!7030366 m!7735756))

(check-sat (not b!7030364) (not b!7030370) (not b!7030358) (not b!7030366) (not b!7030371) (not start!679168) (not b!7030376) (not b!7030360) (not b!7030359) (not b!7030361) (not b!7030378) (not b!7030382) (not b!7030372) (not b!7030373) (not b!7030374) tp_is_empty!44143 (not b!7030368) (not b!7030369) (not b!7030362) (not setNonEmpty!49106) (not b!7030363) (not b!7030375) (not b!7030379) (not b!7030367) (not b!7030357) (not b!7030377))
(check-sat)
(get-model)

(declare-fun d!2192689 () Bool)

(assert (=> d!2192689 (= (isEmpty!39527 (exprs!6955 lt!2517579)) ((_ is Nil!67781) (exprs!6955 lt!2517579)))))

(assert (=> b!7030371 d!2192689))

(declare-fun d!2192693 () Bool)

(declare-fun nullableFct!2723 (Regex!17459) Bool)

(assert (=> d!2192693 (= (nullable!7170 (h!74229 (exprs!6955 lt!2517579))) (nullableFct!2723 (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun bs!1869899 () Bool)

(assert (= bs!1869899 d!2192693))

(declare-fun m!7735784 () Bool)

(assert (=> bs!1869899 m!7735784))

(assert (=> b!7030372 d!2192693))

(declare-fun d!2192695 () Bool)

(assert (=> d!2192695 (= (tail!13541 (exprs!6955 lt!2517579)) (t!381668 (exprs!6955 lt!2517579)))))

(assert (=> b!7030372 d!2192695))

(declare-fun d!2192699 () Bool)

(declare-fun lt!2517633 () Int)

(assert (=> d!2192699 (>= lt!2517633 0)))

(declare-fun e!4226409 () Int)

(assert (=> d!2192699 (= lt!2517633 e!4226409)))

(declare-fun c!1307377 () Bool)

(assert (=> d!2192699 (= c!1307377 ((_ is Cons!67783) (Cons!67783 lt!2517592 Nil!67783)))))

(assert (=> d!2192699 (= (zipperDepthTotal!522 (Cons!67783 lt!2517592 Nil!67783)) lt!2517633)))

(declare-fun b!7030430 () Bool)

(assert (=> b!7030430 (= e!4226409 (+ (contextDepthTotal!494 (h!74231 (Cons!67783 lt!2517592 Nil!67783))) (zipperDepthTotal!522 (t!381670 (Cons!67783 lt!2517592 Nil!67783)))))))

(declare-fun b!7030431 () Bool)

(assert (=> b!7030431 (= e!4226409 0)))

(assert (= (and d!2192699 c!1307377) b!7030430))

(assert (= (and d!2192699 (not c!1307377)) b!7030431))

(declare-fun m!7735794 () Bool)

(assert (=> b!7030430 m!7735794))

(declare-fun m!7735796 () Bool)

(assert (=> b!7030430 m!7735796))

(assert (=> b!7030361 d!2192699))

(declare-fun d!2192703 () Bool)

(declare-fun c!1307383 () Bool)

(assert (=> d!2192703 (= c!1307383 (isEmpty!39526 (t!381669 s!7408)))))

(declare-fun e!4226415 () Bool)

(assert (=> d!2192703 (= (matchZipper!2999 lt!2517606 (t!381669 s!7408)) e!4226415)))

(declare-fun b!7030441 () Bool)

(declare-fun nullableZipper!2575 ((InoxSet Context!12910)) Bool)

(assert (=> b!7030441 (= e!4226415 (nullableZipper!2575 lt!2517606))))

(declare-fun b!7030442 () Bool)

(declare-fun head!14256 (List!67906) C!35188)

(declare-fun tail!13543 (List!67906) List!67906)

(assert (=> b!7030442 (= e!4226415 (matchZipper!2999 (derivationStepZipper!2915 lt!2517606 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))))))

(assert (= (and d!2192703 c!1307383) b!7030441))

(assert (= (and d!2192703 (not c!1307383)) b!7030442))

(declare-fun m!7735820 () Bool)

(assert (=> d!2192703 m!7735820))

(declare-fun m!7735822 () Bool)

(assert (=> b!7030441 m!7735822))

(declare-fun m!7735824 () Bool)

(assert (=> b!7030442 m!7735824))

(assert (=> b!7030442 m!7735824))

(declare-fun m!7735828 () Bool)

(assert (=> b!7030442 m!7735828))

(declare-fun m!7735830 () Bool)

(assert (=> b!7030442 m!7735830))

(assert (=> b!7030442 m!7735828))

(assert (=> b!7030442 m!7735830))

(declare-fun m!7735832 () Bool)

(assert (=> b!7030442 m!7735832))

(assert (=> b!7030362 d!2192703))

(assert (=> b!7030368 d!2192703))

(declare-fun d!2192717 () Bool)

(declare-fun forall!16369 (List!67905 Int) Bool)

(assert (=> d!2192717 (forall!16369 (++!15498 lt!2517605 (exprs!6955 ct2!306)) lambda!414255)))

(declare-fun lt!2517646 () Unit!161586)

(declare-fun choose!53199 (List!67905 List!67905 Int) Unit!161586)

(assert (=> d!2192717 (= lt!2517646 (choose!53199 lt!2517605 (exprs!6955 ct2!306) lambda!414255))))

(assert (=> d!2192717 (forall!16369 lt!2517605 lambda!414255)))

(assert (=> d!2192717 (= (lemmaConcatPreservesForall!780 lt!2517605 (exprs!6955 ct2!306) lambda!414255) lt!2517646)))

(declare-fun bs!1869904 () Bool)

(assert (= bs!1869904 d!2192717))

(assert (=> bs!1869904 m!7735666))

(assert (=> bs!1869904 m!7735666))

(declare-fun m!7735850 () Bool)

(assert (=> bs!1869904 m!7735850))

(declare-fun m!7735854 () Bool)

(assert (=> bs!1869904 m!7735854))

(declare-fun m!7735856 () Bool)

(assert (=> bs!1869904 m!7735856))

(assert (=> b!7030368 d!2192717))

(declare-fun d!2192723 () Bool)

(declare-fun c!1307389 () Bool)

(assert (=> d!2192723 (= c!1307389 (isEmpty!39526 (t!381669 s!7408)))))

(declare-fun e!4226421 () Bool)

(assert (=> d!2192723 (= (matchZipper!2999 lt!2517573 (t!381669 s!7408)) e!4226421)))

(declare-fun b!7030453 () Bool)

(assert (=> b!7030453 (= e!4226421 (nullableZipper!2575 lt!2517573))))

(declare-fun b!7030454 () Bool)

(assert (=> b!7030454 (= e!4226421 (matchZipper!2999 (derivationStepZipper!2915 lt!2517573 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))))))

(assert (= (and d!2192723 c!1307389) b!7030453))

(assert (= (and d!2192723 (not c!1307389)) b!7030454))

(assert (=> d!2192723 m!7735820))

(declare-fun m!7735868 () Bool)

(assert (=> b!7030453 m!7735868))

(assert (=> b!7030454 m!7735824))

(assert (=> b!7030454 m!7735824))

(declare-fun m!7735870 () Bool)

(assert (=> b!7030454 m!7735870))

(assert (=> b!7030454 m!7735830))

(assert (=> b!7030454 m!7735870))

(assert (=> b!7030454 m!7735830))

(declare-fun m!7735872 () Bool)

(assert (=> b!7030454 m!7735872))

(assert (=> b!7030358 d!2192723))

(declare-fun d!2192729 () Bool)

(declare-fun e!4226428 () Bool)

(assert (=> d!2192729 (= (matchZipper!2999 ((_ map or) lt!2517599 lt!2517606) (t!381669 s!7408)) e!4226428)))

(declare-fun res!2869986 () Bool)

(assert (=> d!2192729 (=> res!2869986 e!4226428)))

(assert (=> d!2192729 (= res!2869986 (matchZipper!2999 lt!2517599 (t!381669 s!7408)))))

(declare-fun lt!2517657 () Unit!161586)

(declare-fun choose!53200 ((InoxSet Context!12910) (InoxSet Context!12910) List!67906) Unit!161586)

(assert (=> d!2192729 (= lt!2517657 (choose!53200 lt!2517599 lt!2517606 (t!381669 s!7408)))))

(assert (=> d!2192729 (= (lemmaZipperConcatMatchesSameAsBothZippers!1532 lt!2517599 lt!2517606 (t!381669 s!7408)) lt!2517657)))

(declare-fun b!7030462 () Bool)

(assert (=> b!7030462 (= e!4226428 (matchZipper!2999 lt!2517606 (t!381669 s!7408)))))

(assert (= (and d!2192729 (not res!2869986)) b!7030462))

(declare-fun m!7735902 () Bool)

(assert (=> d!2192729 m!7735902))

(assert (=> d!2192729 m!7735736))

(declare-fun m!7735904 () Bool)

(assert (=> d!2192729 m!7735904))

(assert (=> b!7030462 m!7735690))

(assert (=> b!7030358 d!2192729))

(declare-fun d!2192737 () Bool)

(declare-fun c!1307393 () Bool)

(assert (=> d!2192737 (= c!1307393 (isEmpty!39526 (t!381669 s!7408)))))

(declare-fun e!4226429 () Bool)

(assert (=> d!2192737 (= (matchZipper!2999 lt!2517599 (t!381669 s!7408)) e!4226429)))

(declare-fun b!7030463 () Bool)

(assert (=> b!7030463 (= e!4226429 (nullableZipper!2575 lt!2517599))))

(declare-fun b!7030464 () Bool)

(assert (=> b!7030464 (= e!4226429 (matchZipper!2999 (derivationStepZipper!2915 lt!2517599 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))))))

(assert (= (and d!2192737 c!1307393) b!7030463))

(assert (= (and d!2192737 (not c!1307393)) b!7030464))

(assert (=> d!2192737 m!7735820))

(declare-fun m!7735906 () Bool)

(assert (=> b!7030463 m!7735906))

(assert (=> b!7030464 m!7735824))

(assert (=> b!7030464 m!7735824))

(declare-fun m!7735908 () Bool)

(assert (=> b!7030464 m!7735908))

(assert (=> b!7030464 m!7735830))

(assert (=> b!7030464 m!7735908))

(assert (=> b!7030464 m!7735830))

(declare-fun m!7735910 () Bool)

(assert (=> b!7030464 m!7735910))

(assert (=> b!7030358 d!2192737))

(declare-fun d!2192739 () Bool)

(declare-fun c!1307394 () Bool)

(assert (=> d!2192739 (= c!1307394 (isEmpty!39526 (t!381669 s!7408)))))

(declare-fun e!4226430 () Bool)

(assert (=> d!2192739 (= (matchZipper!2999 lt!2517614 (t!381669 s!7408)) e!4226430)))

(declare-fun b!7030467 () Bool)

(assert (=> b!7030467 (= e!4226430 (nullableZipper!2575 lt!2517614))))

(declare-fun b!7030468 () Bool)

(assert (=> b!7030468 (= e!4226430 (matchZipper!2999 (derivationStepZipper!2915 lt!2517614 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))))))

(assert (= (and d!2192739 c!1307394) b!7030467))

(assert (= (and d!2192739 (not c!1307394)) b!7030468))

(assert (=> d!2192739 m!7735820))

(declare-fun m!7735920 () Bool)

(assert (=> b!7030467 m!7735920))

(assert (=> b!7030468 m!7735824))

(assert (=> b!7030468 m!7735824))

(declare-fun m!7735922 () Bool)

(assert (=> b!7030468 m!7735922))

(assert (=> b!7030468 m!7735830))

(assert (=> b!7030468 m!7735922))

(assert (=> b!7030468 m!7735830))

(declare-fun m!7735936 () Bool)

(assert (=> b!7030468 m!7735936))

(assert (=> b!7030358 d!2192739))

(assert (=> b!7030358 d!2192717))

(declare-fun d!2192747 () Bool)

(declare-fun e!4226442 () Bool)

(assert (=> d!2192747 e!4226442))

(declare-fun res!2869993 () Bool)

(assert (=> d!2192747 (=> (not res!2869993) (not e!4226442))))

(declare-fun lt!2517665 () Context!12910)

(declare-fun dynLambda!27359 (Int Context!12910) Bool)

(assert (=> d!2192747 (= res!2869993 (dynLambda!27359 lambda!414253 lt!2517665))))

(declare-fun getWitness!1462 (List!67907 Int) Context!12910)

(assert (=> d!2192747 (= lt!2517665 (getWitness!1462 (toList!10802 lt!2517572) lambda!414253))))

(assert (=> d!2192747 (exists!3380 lt!2517572 lambda!414253)))

(assert (=> d!2192747 (= (getWitness!1460 lt!2517572 lambda!414253) lt!2517665)))

(declare-fun b!7030485 () Bool)

(assert (=> b!7030485 (= e!4226442 (select lt!2517572 lt!2517665))))

(assert (= (and d!2192747 res!2869993) b!7030485))

(declare-fun b_lambda!266175 () Bool)

(assert (=> (not b_lambda!266175) (not d!2192747)))

(declare-fun m!7735980 () Bool)

(assert (=> d!2192747 m!7735980))

(assert (=> d!2192747 m!7735720))

(assert (=> d!2192747 m!7735720))

(declare-fun m!7735982 () Bool)

(assert (=> d!2192747 m!7735982))

(declare-fun m!7735984 () Bool)

(assert (=> d!2192747 m!7735984))

(declare-fun m!7735986 () Bool)

(assert (=> b!7030485 m!7735986))

(assert (=> b!7030377 d!2192747))

(declare-fun bs!1869920 () Bool)

(declare-fun d!2192771 () Bool)

(assert (= bs!1869920 (and d!2192771 b!7030377)))

(declare-fun lambda!414272 () Int)

(assert (=> bs!1869920 (not (= lambda!414272 lambda!414253))))

(declare-fun bs!1869921 () Bool)

(assert (= bs!1869921 (and d!2192771 b!7030376)))

(assert (=> bs!1869921 (not (= lambda!414272 lambda!414257))))

(assert (=> d!2192771 true))

(declare-fun order!28165 () Int)

(declare-fun dynLambda!27360 (Int Int) Int)

(assert (=> d!2192771 (< (dynLambda!27360 order!28165 lambda!414253) (dynLambda!27360 order!28165 lambda!414272))))

(declare-fun forall!16370 (List!67907 Int) Bool)

(assert (=> d!2192771 (= (exists!3381 lt!2517567 lambda!414253) (not (forall!16370 lt!2517567 lambda!414272)))))

(declare-fun bs!1869922 () Bool)

(assert (= bs!1869922 d!2192771))

(declare-fun m!7735990 () Bool)

(assert (=> bs!1869922 m!7735990))

(assert (=> b!7030377 d!2192771))

(declare-fun bs!1869924 () Bool)

(declare-fun d!2192775 () Bool)

(assert (= bs!1869924 (and d!2192775 b!7030377)))

(declare-fun lambda!414275 () Int)

(assert (=> bs!1869924 (= lambda!414275 lambda!414253)))

(declare-fun bs!1869925 () Bool)

(assert (= bs!1869925 (and d!2192775 b!7030376)))

(assert (=> bs!1869925 (not (= lambda!414275 lambda!414257))))

(declare-fun bs!1869926 () Bool)

(assert (= bs!1869926 (and d!2192775 d!2192771)))

(assert (=> bs!1869926 (not (= lambda!414275 lambda!414272))))

(assert (=> d!2192775 true))

(assert (=> d!2192775 (exists!3381 lt!2517567 lambda!414275)))

(declare-fun lt!2517671 () Unit!161586)

(declare-fun choose!53201 (List!67907 List!67906) Unit!161586)

(assert (=> d!2192775 (= lt!2517671 (choose!53201 lt!2517567 s!7408))))

(declare-fun content!13520 (List!67907) (InoxSet Context!12910))

(assert (=> d!2192775 (matchZipper!2999 (content!13520 lt!2517567) s!7408)))

(assert (=> d!2192775 (= (lemmaZipperMatchesExistsMatchingContext!398 lt!2517567 s!7408) lt!2517671)))

(declare-fun bs!1869927 () Bool)

(assert (= bs!1869927 d!2192775))

(declare-fun m!7736002 () Bool)

(assert (=> bs!1869927 m!7736002))

(declare-fun m!7736004 () Bool)

(assert (=> bs!1869927 m!7736004))

(declare-fun m!7736006 () Bool)

(assert (=> bs!1869927 m!7736006))

(assert (=> bs!1869927 m!7736006))

(declare-fun m!7736008 () Bool)

(assert (=> bs!1869927 m!7736008))

(assert (=> b!7030377 d!2192775))

(declare-fun d!2192779 () Bool)

(declare-fun e!4226458 () Bool)

(assert (=> d!2192779 e!4226458))

(declare-fun res!2870007 () Bool)

(assert (=> d!2192779 (=> (not res!2870007) (not e!4226458))))

(declare-fun lt!2517680 () List!67907)

(declare-fun noDuplicate!2623 (List!67907) Bool)

(assert (=> d!2192779 (= res!2870007 (noDuplicate!2623 lt!2517680))))

(declare-fun choose!53202 ((InoxSet Context!12910)) List!67907)

(assert (=> d!2192779 (= lt!2517680 (choose!53202 lt!2517572))))

(assert (=> d!2192779 (= (toList!10802 lt!2517572) lt!2517680)))

(declare-fun b!7030515 () Bool)

(assert (=> b!7030515 (= e!4226458 (= (content!13520 lt!2517680) lt!2517572))))

(assert (= (and d!2192779 res!2870007) b!7030515))

(declare-fun m!7736010 () Bool)

(assert (=> d!2192779 m!7736010))

(declare-fun m!7736012 () Bool)

(assert (=> d!2192779 m!7736012))

(declare-fun m!7736014 () Bool)

(assert (=> b!7030515 m!7736014))

(assert (=> b!7030377 d!2192779))

(declare-fun d!2192781 () Bool)

(declare-fun c!1307410 () Bool)

(assert (=> d!2192781 (= c!1307410 (isEmpty!39526 s!7408))))

(declare-fun e!4226459 () Bool)

(assert (=> d!2192781 (= (matchZipper!2999 lt!2517576 s!7408) e!4226459)))

(declare-fun b!7030516 () Bool)

(assert (=> b!7030516 (= e!4226459 (nullableZipper!2575 lt!2517576))))

(declare-fun b!7030517 () Bool)

(assert (=> b!7030517 (= e!4226459 (matchZipper!2999 (derivationStepZipper!2915 lt!2517576 (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2192781 c!1307410) b!7030516))

(assert (= (and d!2192781 (not c!1307410)) b!7030517))

(declare-fun m!7736016 () Bool)

(assert (=> d!2192781 m!7736016))

(declare-fun m!7736018 () Bool)

(assert (=> b!7030516 m!7736018))

(declare-fun m!7736020 () Bool)

(assert (=> b!7030517 m!7736020))

(assert (=> b!7030517 m!7736020))

(declare-fun m!7736022 () Bool)

(assert (=> b!7030517 m!7736022))

(declare-fun m!7736024 () Bool)

(assert (=> b!7030517 m!7736024))

(assert (=> b!7030517 m!7736022))

(assert (=> b!7030517 m!7736024))

(declare-fun m!7736026 () Bool)

(assert (=> b!7030517 m!7736026))

(assert (=> b!7030377 d!2192781))

(declare-fun d!2192783 () Bool)

(declare-fun c!1307413 () Bool)

(assert (=> d!2192783 (= c!1307413 (isEmpty!39526 (_2!37335 lt!2517607)))))

(declare-fun e!4226465 () Bool)

(assert (=> d!2192783 (= (matchZipper!2999 lt!2517610 (_2!37335 lt!2517607)) e!4226465)))

(declare-fun b!7030527 () Bool)

(assert (=> b!7030527 (= e!4226465 (nullableZipper!2575 lt!2517610))))

(declare-fun b!7030528 () Bool)

(assert (=> b!7030528 (= e!4226465 (matchZipper!2999 (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 lt!2517607))) (tail!13543 (_2!37335 lt!2517607))))))

(assert (= (and d!2192783 c!1307413) b!7030527))

(assert (= (and d!2192783 (not c!1307413)) b!7030528))

(declare-fun m!7736028 () Bool)

(assert (=> d!2192783 m!7736028))

(declare-fun m!7736030 () Bool)

(assert (=> b!7030527 m!7736030))

(declare-fun m!7736032 () Bool)

(assert (=> b!7030528 m!7736032))

(assert (=> b!7030528 m!7736032))

(declare-fun m!7736034 () Bool)

(assert (=> b!7030528 m!7736034))

(declare-fun m!7736036 () Bool)

(assert (=> b!7030528 m!7736036))

(assert (=> b!7030528 m!7736034))

(assert (=> b!7030528 m!7736036))

(declare-fun m!7736038 () Bool)

(assert (=> b!7030528 m!7736038))

(assert (=> b!7030378 d!2192783))

(declare-fun d!2192785 () Bool)

(assert (=> d!2192785 (= (isEmpty!39526 (_1!37335 lt!2517607)) ((_ is Nil!67782) (_1!37335 lt!2517607)))))

(assert (=> b!7030369 d!2192785))

(declare-fun d!2192789 () Bool)

(declare-fun dynLambda!27361 (Int Context!12910) (InoxSet Context!12910))

(assert (=> d!2192789 (= (flatMap!2406 lt!2517591 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517613))))

(declare-fun lt!2517688 () Unit!161586)

(declare-fun choose!53203 ((InoxSet Context!12910) Context!12910 Int) Unit!161586)

(assert (=> d!2192789 (= lt!2517688 (choose!53203 lt!2517591 lt!2517613 lambda!414256))))

(assert (=> d!2192789 (= lt!2517591 (store ((as const (Array Context!12910 Bool)) false) lt!2517613 true))))

(assert (=> d!2192789 (= (lemmaFlatMapOnSingletonSet!1920 lt!2517591 lt!2517613 lambda!414256) lt!2517688)))

(declare-fun b_lambda!266177 () Bool)

(assert (=> (not b_lambda!266177) (not d!2192789)))

(declare-fun bs!1869929 () Bool)

(assert (= bs!1869929 d!2192789))

(assert (=> bs!1869929 m!7735704))

(declare-fun m!7736076 () Bool)

(assert (=> bs!1869929 m!7736076))

(declare-fun m!7736078 () Bool)

(assert (=> bs!1869929 m!7736078))

(assert (=> bs!1869929 m!7735708))

(assert (=> b!7030370 d!2192789))

(declare-fun bs!1869935 () Bool)

(declare-fun d!2192797 () Bool)

(assert (= bs!1869935 (and d!2192797 b!7030364)))

(declare-fun lambda!414279 () Int)

(assert (=> bs!1869935 (= lambda!414279 lambda!414256)))

(assert (=> d!2192797 true))

(assert (=> d!2192797 (= (derivationStepZipper!2915 lt!2517591 (h!74230 s!7408)) (flatMap!2406 lt!2517591 lambda!414279))))

(declare-fun bs!1869936 () Bool)

(assert (= bs!1869936 d!2192797))

(declare-fun m!7736108 () Bool)

(assert (=> bs!1869936 m!7736108))

(assert (=> b!7030370 d!2192797))

(assert (=> b!7030370 d!2192717))

(declare-fun b!7030597 () Bool)

(declare-fun e!4226503 () Bool)

(assert (=> b!7030597 (= e!4226503 (nullable!7170 (h!74229 (exprs!6955 lt!2517613))))))

(declare-fun d!2192809 () Bool)

(declare-fun c!1307443 () Bool)

(assert (=> d!2192809 (= c!1307443 e!4226503)))

(declare-fun res!2870027 () Bool)

(assert (=> d!2192809 (=> (not res!2870027) (not e!4226503))))

(assert (=> d!2192809 (= res!2870027 ((_ is Cons!67781) (exprs!6955 lt!2517613)))))

(declare-fun e!4226502 () (InoxSet Context!12910))

(assert (=> d!2192809 (= (derivationStepZipperUp!2069 lt!2517613 (h!74230 s!7408)) e!4226502)))

(declare-fun bm!638409 () Bool)

(declare-fun call!638414 () (InoxSet Context!12910))

(assert (=> bm!638409 (= call!638414 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517613)) (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (h!74230 s!7408)))))

(declare-fun b!7030598 () Bool)

(declare-fun e!4226504 () (InoxSet Context!12910))

(assert (=> b!7030598 (= e!4226502 e!4226504)))

(declare-fun c!1307442 () Bool)

(assert (=> b!7030598 (= c!1307442 ((_ is Cons!67781) (exprs!6955 lt!2517613)))))

(declare-fun b!7030599 () Bool)

(assert (=> b!7030599 (= e!4226504 call!638414)))

(declare-fun b!7030600 () Bool)

(assert (=> b!7030600 (= e!4226502 ((_ map or) call!638414 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (h!74230 s!7408))))))

(declare-fun b!7030601 () Bool)

(assert (=> b!7030601 (= e!4226504 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2192809 res!2870027) b!7030597))

(assert (= (and d!2192809 c!1307443) b!7030600))

(assert (= (and d!2192809 (not c!1307443)) b!7030598))

(assert (= (and b!7030598 c!1307442) b!7030599))

(assert (= (and b!7030598 (not c!1307442)) b!7030601))

(assert (= (or b!7030600 b!7030599) bm!638409))

(declare-fun m!7736128 () Bool)

(assert (=> b!7030597 m!7736128))

(declare-fun m!7736130 () Bool)

(assert (=> bm!638409 m!7736130))

(declare-fun m!7736132 () Bool)

(assert (=> b!7030600 m!7736132))

(assert (=> b!7030370 d!2192809))

(declare-fun d!2192815 () Bool)

(declare-fun choose!53205 ((InoxSet Context!12910) Int) (InoxSet Context!12910))

(assert (=> d!2192815 (= (flatMap!2406 lt!2517591 lambda!414256) (choose!53205 lt!2517591 lambda!414256))))

(declare-fun bs!1869937 () Bool)

(assert (= bs!1869937 d!2192815))

(declare-fun m!7736144 () Bool)

(assert (=> bs!1869937 m!7736144))

(assert (=> b!7030370 d!2192815))

(declare-fun d!2192819 () Bool)

(assert (=> d!2192819 (= (flatMap!2406 lt!2517603 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517592))))

(declare-fun lt!2517695 () Unit!161586)

(assert (=> d!2192819 (= lt!2517695 (choose!53203 lt!2517603 lt!2517592 lambda!414256))))

(assert (=> d!2192819 (= lt!2517603 (store ((as const (Array Context!12910 Bool)) false) lt!2517592 true))))

(assert (=> d!2192819 (= (lemmaFlatMapOnSingletonSet!1920 lt!2517603 lt!2517592 lambda!414256) lt!2517695)))

(declare-fun b_lambda!266183 () Bool)

(assert (=> (not b_lambda!266183) (not d!2192819)))

(declare-fun bs!1869938 () Bool)

(assert (= bs!1869938 d!2192819))

(assert (=> bs!1869938 m!7735652))

(declare-fun m!7736146 () Bool)

(assert (=> bs!1869938 m!7736146))

(declare-fun m!7736148 () Bool)

(assert (=> bs!1869938 m!7736148))

(assert (=> bs!1869938 m!7735668))

(assert (=> b!7030359 d!2192819))

(declare-fun d!2192821 () Bool)

(declare-fun lt!2517696 () Int)

(assert (=> d!2192821 (>= lt!2517696 0)))

(declare-fun e!4226508 () Int)

(assert (=> d!2192821 (= lt!2517696 e!4226508)))

(declare-fun c!1307444 () Bool)

(assert (=> d!2192821 (= c!1307444 ((_ is Cons!67783) lt!2517568))))

(assert (=> d!2192821 (= (zipperDepthTotal!522 lt!2517568) lt!2517696)))

(declare-fun b!7030606 () Bool)

(assert (=> b!7030606 (= e!4226508 (+ (contextDepthTotal!494 (h!74231 lt!2517568)) (zipperDepthTotal!522 (t!381670 lt!2517568))))))

(declare-fun b!7030607 () Bool)

(assert (=> b!7030607 (= e!4226508 0)))

(assert (= (and d!2192821 c!1307444) b!7030606))

(assert (= (and d!2192821 (not c!1307444)) b!7030607))

(declare-fun m!7736150 () Bool)

(assert (=> b!7030606 m!7736150))

(declare-fun m!7736152 () Bool)

(assert (=> b!7030606 m!7736152))

(assert (=> b!7030359 d!2192821))

(declare-fun d!2192823 () Bool)

(declare-fun e!4226509 () Bool)

(assert (=> d!2192823 e!4226509))

(declare-fun res!2870031 () Bool)

(assert (=> d!2192823 (=> (not res!2870031) (not e!4226509))))

(declare-fun lt!2517699 () List!67907)

(assert (=> d!2192823 (= res!2870031 (noDuplicate!2623 lt!2517699))))

(assert (=> d!2192823 (= lt!2517699 (choose!53202 z1!570))))

(assert (=> d!2192823 (= (toList!10802 z1!570) lt!2517699)))

(declare-fun b!7030608 () Bool)

(assert (=> b!7030608 (= e!4226509 (= (content!13520 lt!2517699) z1!570))))

(assert (= (and d!2192823 res!2870031) b!7030608))

(declare-fun m!7736160 () Bool)

(assert (=> d!2192823 m!7736160))

(declare-fun m!7736162 () Bool)

(assert (=> d!2192823 m!7736162))

(declare-fun m!7736164 () Bool)

(assert (=> b!7030608 m!7736164))

(assert (=> b!7030359 d!2192823))

(declare-fun d!2192827 () Bool)

(declare-fun lt!2517705 () Int)

(assert (=> d!2192827 (>= lt!2517705 0)))

(declare-fun e!4226515 () Int)

(assert (=> d!2192827 (= lt!2517705 e!4226515)))

(declare-fun c!1307450 () Bool)

(assert (=> d!2192827 (= c!1307450 ((_ is Cons!67781) (exprs!6955 lt!2517592)))))

(assert (=> d!2192827 (= (contextDepthTotal!494 lt!2517592) lt!2517705)))

(declare-fun b!7030619 () Bool)

(declare-fun regexDepthTotal!298 (Regex!17459) Int)

(assert (=> b!7030619 (= e!4226515 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 lt!2517592))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 lt!2517592))))))))

(declare-fun b!7030620 () Bool)

(assert (=> b!7030620 (= e!4226515 1)))

(assert (= (and d!2192827 c!1307450) b!7030619))

(assert (= (and d!2192827 (not c!1307450)) b!7030620))

(declare-fun m!7736176 () Bool)

(assert (=> b!7030619 m!7736176))

(declare-fun m!7736178 () Bool)

(assert (=> b!7030619 m!7736178))

(assert (=> b!7030359 d!2192827))

(declare-fun d!2192835 () Bool)

(declare-fun choose!53207 ((InoxSet Context!12910) Int) (InoxSet Context!12910))

(assert (=> d!2192835 (= (map!15756 lt!2517603 lambda!414254) (choose!53207 lt!2517603 lambda!414254))))

(declare-fun bs!1869945 () Bool)

(assert (= bs!1869945 d!2192835))

(declare-fun m!7736182 () Bool)

(assert (=> bs!1869945 m!7736182))

(assert (=> b!7030359 d!2192835))

(declare-fun d!2192837 () Bool)

(assert (=> d!2192837 (<= (contextDepthTotal!494 lt!2517579) (zipperDepthTotal!522 lt!2517568))))

(declare-fun lt!2517710 () Unit!161586)

(declare-fun choose!53208 (List!67907 Context!12910) Unit!161586)

(assert (=> d!2192837 (= lt!2517710 (choose!53208 lt!2517568 lt!2517579))))

(declare-fun contains!20452 (List!67907 Context!12910) Bool)

(assert (=> d!2192837 (contains!20452 lt!2517568 lt!2517579)))

(assert (=> d!2192837 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!62 lt!2517568 lt!2517579) lt!2517710)))

(declare-fun bs!1869952 () Bool)

(assert (= bs!1869952 d!2192837))

(assert (=> bs!1869952 m!7735664))

(assert (=> bs!1869952 m!7735654))

(declare-fun m!7736196 () Bool)

(assert (=> bs!1869952 m!7736196))

(declare-fun m!7736198 () Bool)

(assert (=> bs!1869952 m!7736198))

(assert (=> b!7030359 d!2192837))

(declare-fun d!2192851 () Bool)

(declare-fun lt!2517711 () Int)

(assert (=> d!2192851 (>= lt!2517711 0)))

(declare-fun e!4226524 () Int)

(assert (=> d!2192851 (= lt!2517711 e!4226524)))

(declare-fun c!1307452 () Bool)

(assert (=> d!2192851 (= c!1307452 ((_ is Cons!67781) (exprs!6955 lt!2517579)))))

(assert (=> d!2192851 (= (contextDepthTotal!494 lt!2517579) lt!2517711)))

(declare-fun b!7030633 () Bool)

(assert (=> b!7030633 (= e!4226524 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 lt!2517579))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 lt!2517579))))))))

(declare-fun b!7030634 () Bool)

(assert (=> b!7030634 (= e!4226524 1)))

(assert (= (and d!2192851 c!1307452) b!7030633))

(assert (= (and d!2192851 (not c!1307452)) b!7030634))

(declare-fun m!7736200 () Bool)

(assert (=> b!7030633 m!7736200))

(declare-fun m!7736202 () Bool)

(assert (=> b!7030633 m!7736202))

(assert (=> b!7030359 d!2192851))

(declare-fun d!2192853 () Bool)

(declare-fun dynLambda!27362 (Int Context!12910) Context!12910)

(assert (=> d!2192853 (= (map!15756 lt!2517603 lambda!414254) (store ((as const (Array Context!12910 Bool)) false) (dynLambda!27362 lambda!414254 lt!2517592) true))))

(declare-fun lt!2517714 () Unit!161586)

(declare-fun choose!53209 ((InoxSet Context!12910) Context!12910 Int) Unit!161586)

(assert (=> d!2192853 (= lt!2517714 (choose!53209 lt!2517603 lt!2517592 lambda!414254))))

(assert (=> d!2192853 (= lt!2517603 (store ((as const (Array Context!12910 Bool)) false) lt!2517592 true))))

(assert (=> d!2192853 (= (lemmaMapOnSingletonSet!370 lt!2517603 lt!2517592 lambda!414254) lt!2517714)))

(declare-fun b_lambda!266197 () Bool)

(assert (=> (not b_lambda!266197) (not d!2192853)))

(declare-fun bs!1869953 () Bool)

(assert (= bs!1869953 d!2192853))

(declare-fun m!7736204 () Bool)

(assert (=> bs!1869953 m!7736204))

(assert (=> bs!1869953 m!7735668))

(declare-fun m!7736206 () Bool)

(assert (=> bs!1869953 m!7736206))

(declare-fun m!7736208 () Bool)

(assert (=> bs!1869953 m!7736208))

(assert (=> bs!1869953 m!7735644))

(assert (=> bs!1869953 m!7736206))

(assert (=> b!7030359 d!2192853))

(assert (=> b!7030359 d!2192717))

(declare-fun b!7030635 () Bool)

(declare-fun e!4226526 () Bool)

(assert (=> b!7030635 (= e!4226526 (nullable!7170 (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun d!2192855 () Bool)

(declare-fun c!1307454 () Bool)

(assert (=> d!2192855 (= c!1307454 e!4226526)))

(declare-fun res!2870032 () Bool)

(assert (=> d!2192855 (=> (not res!2870032) (not e!4226526))))

(assert (=> d!2192855 (= res!2870032 ((_ is Cons!67781) (exprs!6955 lt!2517592)))))

(declare-fun e!4226525 () (InoxSet Context!12910))

(assert (=> d!2192855 (= (derivationStepZipperUp!2069 lt!2517592 (h!74230 s!7408)) e!4226525)))

(declare-fun bm!638410 () Bool)

(declare-fun call!638415 () (InoxSet Context!12910))

(assert (=> bm!638410 (= call!638415 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517592)) (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (h!74230 s!7408)))))

(declare-fun b!7030636 () Bool)

(declare-fun e!4226527 () (InoxSet Context!12910))

(assert (=> b!7030636 (= e!4226525 e!4226527)))

(declare-fun c!1307453 () Bool)

(assert (=> b!7030636 (= c!1307453 ((_ is Cons!67781) (exprs!6955 lt!2517592)))))

(declare-fun b!7030637 () Bool)

(assert (=> b!7030637 (= e!4226527 call!638415)))

(declare-fun b!7030638 () Bool)

(assert (=> b!7030638 (= e!4226525 ((_ map or) call!638415 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (h!74230 s!7408))))))

(declare-fun b!7030639 () Bool)

(assert (=> b!7030639 (= e!4226527 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2192855 res!2870032) b!7030635))

(assert (= (and d!2192855 c!1307454) b!7030638))

(assert (= (and d!2192855 (not c!1307454)) b!7030636))

(assert (= (and b!7030636 c!1307453) b!7030637))

(assert (= (and b!7030636 (not c!1307453)) b!7030639))

(assert (= (or b!7030638 b!7030637) bm!638410))

(declare-fun m!7736210 () Bool)

(assert (=> b!7030635 m!7736210))

(declare-fun m!7736212 () Bool)

(assert (=> bm!638410 m!7736212))

(declare-fun m!7736214 () Bool)

(assert (=> b!7030638 m!7736214))

(assert (=> b!7030359 d!2192855))

(declare-fun d!2192857 () Bool)

(assert (=> d!2192857 (= (flatMap!2406 lt!2517603 lambda!414256) (choose!53205 lt!2517603 lambda!414256))))

(declare-fun bs!1869954 () Bool)

(assert (= bs!1869954 d!2192857))

(declare-fun m!7736216 () Bool)

(assert (=> bs!1869954 m!7736216))

(assert (=> b!7030359 d!2192857))

(declare-fun d!2192859 () Bool)

(declare-fun e!4226533 () Bool)

(assert (=> d!2192859 e!4226533))

(declare-fun res!2870038 () Bool)

(assert (=> d!2192859 (=> (not res!2870038) (not e!4226533))))

(declare-fun lt!2517717 () List!67905)

(declare-fun content!13521 (List!67905) (InoxSet Regex!17459))

(assert (=> d!2192859 (= res!2870038 (= (content!13521 lt!2517717) ((_ map or) (content!13521 lt!2517605) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4226532 () List!67905)

(assert (=> d!2192859 (= lt!2517717 e!4226532)))

(declare-fun c!1307457 () Bool)

(assert (=> d!2192859 (= c!1307457 ((_ is Nil!67781) lt!2517605))))

(assert (=> d!2192859 (= (++!15498 lt!2517605 (exprs!6955 ct2!306)) lt!2517717)))

(declare-fun b!7030649 () Bool)

(assert (=> b!7030649 (= e!4226532 (Cons!67781 (h!74229 lt!2517605) (++!15498 (t!381668 lt!2517605) (exprs!6955 ct2!306))))))

(declare-fun b!7030650 () Bool)

(declare-fun res!2870037 () Bool)

(assert (=> b!7030650 (=> (not res!2870037) (not e!4226533))))

(declare-fun size!41054 (List!67905) Int)

(assert (=> b!7030650 (= res!2870037 (= (size!41054 lt!2517717) (+ (size!41054 lt!2517605) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7030651 () Bool)

(assert (=> b!7030651 (= e!4226533 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517717 lt!2517605)))))

(declare-fun b!7030648 () Bool)

(assert (=> b!7030648 (= e!4226532 (exprs!6955 ct2!306))))

(assert (= (and d!2192859 c!1307457) b!7030648))

(assert (= (and d!2192859 (not c!1307457)) b!7030649))

(assert (= (and d!2192859 res!2870038) b!7030650))

(assert (= (and b!7030650 res!2870037) b!7030651))

(declare-fun m!7736218 () Bool)

(assert (=> d!2192859 m!7736218))

(declare-fun m!7736220 () Bool)

(assert (=> d!2192859 m!7736220))

(declare-fun m!7736222 () Bool)

(assert (=> d!2192859 m!7736222))

(declare-fun m!7736224 () Bool)

(assert (=> b!7030649 m!7736224))

(declare-fun m!7736226 () Bool)

(assert (=> b!7030650 m!7736226))

(declare-fun m!7736228 () Bool)

(assert (=> b!7030650 m!7736228))

(declare-fun m!7736230 () Bool)

(assert (=> b!7030650 m!7736230))

(assert (=> b!7030359 d!2192859))

(declare-fun d!2192861 () Bool)

(declare-fun c!1307458 () Bool)

(assert (=> d!2192861 (= c!1307458 (isEmpty!39526 s!7408))))

(declare-fun e!4226534 () Bool)

(assert (=> d!2192861 (= (matchZipper!2999 lt!2517591 s!7408) e!4226534)))

(declare-fun b!7030652 () Bool)

(assert (=> b!7030652 (= e!4226534 (nullableZipper!2575 lt!2517591))))

(declare-fun b!7030653 () Bool)

(assert (=> b!7030653 (= e!4226534 (matchZipper!2999 (derivationStepZipper!2915 lt!2517591 (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2192861 c!1307458) b!7030652))

(assert (= (and d!2192861 (not c!1307458)) b!7030653))

(assert (=> d!2192861 m!7736016))

(declare-fun m!7736232 () Bool)

(assert (=> b!7030652 m!7736232))

(assert (=> b!7030653 m!7736020))

(assert (=> b!7030653 m!7736020))

(declare-fun m!7736234 () Bool)

(assert (=> b!7030653 m!7736234))

(assert (=> b!7030653 m!7736024))

(assert (=> b!7030653 m!7736234))

(assert (=> b!7030653 m!7736024))

(declare-fun m!7736236 () Bool)

(assert (=> b!7030653 m!7736236))

(assert (=> b!7030374 d!2192861))

(assert (=> b!7030374 d!2192717))

(assert (=> b!7030366 d!2192717))

(assert (=> b!7030366 d!2192809))

(declare-fun b!7030676 () Bool)

(declare-fun c!1307472 () Bool)

(assert (=> b!7030676 (= c!1307472 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun e!4226548 () (InoxSet Context!12910))

(declare-fun e!4226552 () (InoxSet Context!12910))

(assert (=> b!7030676 (= e!4226548 e!4226552)))

(declare-fun bm!638423 () Bool)

(declare-fun call!638433 () (InoxSet Context!12910))

(declare-fun call!638429 () (InoxSet Context!12910))

(assert (=> bm!638423 (= call!638433 call!638429)))

(declare-fun b!7030677 () Bool)

(declare-fun e!4226547 () Bool)

(assert (=> b!7030677 (= e!4226547 (nullable!7170 (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))))

(declare-fun b!7030678 () Bool)

(declare-fun e!4226551 () (InoxSet Context!12910))

(assert (=> b!7030678 (= e!4226551 e!4226548)))

(declare-fun c!1307473 () Bool)

(assert (=> b!7030678 (= c!1307473 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun call!638431 () (InoxSet Context!12910))

(declare-fun c!1307469 () Bool)

(declare-fun call!638432 () List!67905)

(declare-fun bm!638424 () Bool)

(assert (=> bm!638424 (= call!638431 (derivationStepZipperDown!2123 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))) (ite c!1307469 lt!2517613 (Context!12911 call!638432)) (h!74230 s!7408)))))

(declare-fun bm!638425 () Bool)

(declare-fun c!1307470 () Bool)

(declare-fun $colon$colon!2569 (List!67905 Regex!17459) List!67905)

(assert (=> bm!638425 (= call!638432 ($colon$colon!2569 (exprs!6955 lt!2517613) (ite (or c!1307470 c!1307473) (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (h!74229 (exprs!6955 lt!2517579)))))))

(declare-fun b!7030679 () Bool)

(assert (=> b!7030679 (= e!4226551 ((_ map or) call!638431 call!638429))))

(declare-fun bm!638426 () Bool)

(declare-fun call!638430 () (InoxSet Context!12910))

(assert (=> bm!638426 (= call!638429 call!638430)))

(declare-fun b!7030680 () Bool)

(declare-fun e!4226549 () (InoxSet Context!12910))

(assert (=> b!7030680 (= e!4226549 ((_ map or) call!638431 call!638430))))

(declare-fun d!2192863 () Bool)

(declare-fun c!1307471 () Bool)

(assert (=> d!2192863 (= c!1307471 (and ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517579))) (= (c!1307360 (h!74229 (exprs!6955 lt!2517579))) (h!74230 s!7408))))))

(declare-fun e!4226550 () (InoxSet Context!12910))

(assert (=> d!2192863 (= (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517579)) lt!2517613 (h!74230 s!7408)) e!4226550)))

(declare-fun b!7030681 () Bool)

(assert (=> b!7030681 (= e!4226550 (store ((as const (Array Context!12910 Bool)) false) lt!2517613 true))))

(declare-fun b!7030682 () Bool)

(assert (=> b!7030682 (= c!1307470 e!4226547)))

(declare-fun res!2870041 () Bool)

(assert (=> b!7030682 (=> (not res!2870041) (not e!4226547))))

(assert (=> b!7030682 (= res!2870041 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517579))))))

(assert (=> b!7030682 (= e!4226549 e!4226551)))

(declare-fun b!7030683 () Bool)

(assert (=> b!7030683 (= e!4226552 call!638433)))

(declare-fun call!638428 () List!67905)

(declare-fun bm!638427 () Bool)

(assert (=> bm!638427 (= call!638430 (derivationStepZipperDown!2123 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))) (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428)) (h!74230 s!7408)))))

(declare-fun b!7030684 () Bool)

(assert (=> b!7030684 (= e!4226552 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638428 () Bool)

(assert (=> bm!638428 (= call!638428 call!638432)))

(declare-fun b!7030685 () Bool)

(assert (=> b!7030685 (= e!4226548 call!638433)))

(declare-fun b!7030686 () Bool)

(assert (=> b!7030686 (= e!4226550 e!4226549)))

(assert (=> b!7030686 (= c!1307469 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517579))))))

(assert (= (and d!2192863 c!1307471) b!7030681))

(assert (= (and d!2192863 (not c!1307471)) b!7030686))

(assert (= (and b!7030686 c!1307469) b!7030680))

(assert (= (and b!7030686 (not c!1307469)) b!7030682))

(assert (= (and b!7030682 res!2870041) b!7030677))

(assert (= (and b!7030682 c!1307470) b!7030679))

(assert (= (and b!7030682 (not c!1307470)) b!7030678))

(assert (= (and b!7030678 c!1307473) b!7030685))

(assert (= (and b!7030678 (not c!1307473)) b!7030676))

(assert (= (and b!7030676 c!1307472) b!7030683))

(assert (= (and b!7030676 (not c!1307472)) b!7030684))

(assert (= (or b!7030685 b!7030683) bm!638428))

(assert (= (or b!7030685 b!7030683) bm!638423))

(assert (= (or b!7030679 bm!638423) bm!638426))

(assert (= (or b!7030679 bm!638428) bm!638425))

(assert (= (or b!7030680 b!7030679) bm!638424))

(assert (= (or b!7030680 bm!638426) bm!638427))

(declare-fun m!7736238 () Bool)

(assert (=> bm!638425 m!7736238))

(declare-fun m!7736240 () Bool)

(assert (=> b!7030677 m!7736240))

(declare-fun m!7736242 () Bool)

(assert (=> bm!638424 m!7736242))

(declare-fun m!7736244 () Bool)

(assert (=> bm!638427 m!7736244))

(assert (=> b!7030681 m!7735708))

(assert (=> b!7030366 d!2192863))

(assert (=> b!7030366 d!2192859))

(assert (=> b!7030375 d!2192703))

(assert (=> b!7030375 d!2192717))

(declare-fun d!2192865 () Bool)

(declare-fun lt!2517720 () Bool)

(assert (=> d!2192865 (= lt!2517720 (exists!3381 (toList!10802 lt!2517603) lambda!414257))))

(declare-fun choose!53210 ((InoxSet Context!12910) Int) Bool)

(assert (=> d!2192865 (= lt!2517720 (choose!53210 lt!2517603 lambda!414257))))

(assert (=> d!2192865 (= (exists!3380 lt!2517603 lambda!414257) lt!2517720)))

(declare-fun bs!1869955 () Bool)

(assert (= bs!1869955 d!2192865))

(declare-fun m!7736246 () Bool)

(assert (=> bs!1869955 m!7736246))

(assert (=> bs!1869955 m!7736246))

(declare-fun m!7736248 () Bool)

(assert (=> bs!1869955 m!7736248))

(declare-fun m!7736250 () Bool)

(assert (=> bs!1869955 m!7736250))

(assert (=> b!7030376 d!2192865))

(declare-fun b!7030698 () Bool)

(declare-fun e!4226557 () Bool)

(declare-fun lt!2517723 () List!67906)

(assert (=> b!7030698 (= e!4226557 (or (not (= (_2!37335 lt!2517607) Nil!67782)) (= lt!2517723 (_1!37335 lt!2517607))))))

(declare-fun b!7030695 () Bool)

(declare-fun e!4226558 () List!67906)

(assert (=> b!7030695 (= e!4226558 (_2!37335 lt!2517607))))

(declare-fun d!2192867 () Bool)

(assert (=> d!2192867 e!4226557))

(declare-fun res!2870046 () Bool)

(assert (=> d!2192867 (=> (not res!2870046) (not e!4226557))))

(declare-fun content!13522 (List!67906) (InoxSet C!35188))

(assert (=> d!2192867 (= res!2870046 (= (content!13522 lt!2517723) ((_ map or) (content!13522 (_1!37335 lt!2517607)) (content!13522 (_2!37335 lt!2517607)))))))

(assert (=> d!2192867 (= lt!2517723 e!4226558)))

(declare-fun c!1307476 () Bool)

(assert (=> d!2192867 (= c!1307476 ((_ is Nil!67782) (_1!37335 lt!2517607)))))

(assert (=> d!2192867 (= (++!15499 (_1!37335 lt!2517607) (_2!37335 lt!2517607)) lt!2517723)))

(declare-fun b!7030697 () Bool)

(declare-fun res!2870047 () Bool)

(assert (=> b!7030697 (=> (not res!2870047) (not e!4226557))))

(declare-fun size!41055 (List!67906) Int)

(assert (=> b!7030697 (= res!2870047 (= (size!41055 lt!2517723) (+ (size!41055 (_1!37335 lt!2517607)) (size!41055 (_2!37335 lt!2517607)))))))

(declare-fun b!7030696 () Bool)

(assert (=> b!7030696 (= e!4226558 (Cons!67782 (h!74230 (_1!37335 lt!2517607)) (++!15499 (t!381669 (_1!37335 lt!2517607)) (_2!37335 lt!2517607))))))

(assert (= (and d!2192867 c!1307476) b!7030695))

(assert (= (and d!2192867 (not c!1307476)) b!7030696))

(assert (= (and d!2192867 res!2870046) b!7030697))

(assert (= (and b!7030697 res!2870047) b!7030698))

(declare-fun m!7736252 () Bool)

(assert (=> d!2192867 m!7736252))

(declare-fun m!7736254 () Bool)

(assert (=> d!2192867 m!7736254))

(declare-fun m!7736256 () Bool)

(assert (=> d!2192867 m!7736256))

(declare-fun m!7736258 () Bool)

(assert (=> b!7030697 m!7736258))

(declare-fun m!7736260 () Bool)

(assert (=> b!7030697 m!7736260))

(declare-fun m!7736262 () Bool)

(assert (=> b!7030697 m!7736262))

(declare-fun m!7736264 () Bool)

(assert (=> b!7030696 m!7736264))

(assert (=> b!7030367 d!2192867))

(declare-fun d!2192869 () Bool)

(assert (=> d!2192869 (forall!16369 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)) lambda!414255)))

(declare-fun lt!2517724 () Unit!161586)

(assert (=> d!2192869 (= lt!2517724 (choose!53199 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> d!2192869 (forall!16369 (exprs!6955 lt!2517579) lambda!414255)))

(assert (=> d!2192869 (= (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255) lt!2517724)))

(declare-fun bs!1869956 () Bool)

(assert (= bs!1869956 d!2192869))

(assert (=> bs!1869956 m!7735742))

(assert (=> bs!1869956 m!7735742))

(declare-fun m!7736266 () Bool)

(assert (=> bs!1869956 m!7736266))

(declare-fun m!7736268 () Bool)

(assert (=> bs!1869956 m!7736268))

(declare-fun m!7736270 () Bool)

(assert (=> bs!1869956 m!7736270))

(assert (=> b!7030382 d!2192869))

(declare-fun bs!1869957 () Bool)

(declare-fun d!2192871 () Bool)

(assert (= bs!1869957 (and d!2192871 b!7030373)))

(declare-fun lambda!414288 () Int)

(assert (=> bs!1869957 (= lambda!414288 lambda!414255)))

(assert (=> d!2192871 (= (inv!86506 setElem!49106) (forall!16369 (exprs!6955 setElem!49106) lambda!414288))))

(declare-fun bs!1869958 () Bool)

(assert (= bs!1869958 d!2192871))

(declare-fun m!7736272 () Bool)

(assert (=> bs!1869958 m!7736272))

(assert (=> setNonEmpty!49106 d!2192871))

(declare-fun d!2192873 () Bool)

(declare-fun e!4226560 () Bool)

(assert (=> d!2192873 e!4226560))

(declare-fun res!2870049 () Bool)

(assert (=> d!2192873 (=> (not res!2870049) (not e!4226560))))

(declare-fun lt!2517725 () List!67905)

(assert (=> d!2192873 (= res!2870049 (= (content!13521 lt!2517725) ((_ map or) (content!13521 (exprs!6955 lt!2517579)) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4226559 () List!67905)

(assert (=> d!2192873 (= lt!2517725 e!4226559)))

(declare-fun c!1307477 () Bool)

(assert (=> d!2192873 (= c!1307477 ((_ is Nil!67781) (exprs!6955 lt!2517579)))))

(assert (=> d!2192873 (= (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)) lt!2517725)))

(declare-fun b!7030700 () Bool)

(assert (=> b!7030700 (= e!4226559 (Cons!67781 (h!74229 (exprs!6955 lt!2517579)) (++!15498 (t!381668 (exprs!6955 lt!2517579)) (exprs!6955 ct2!306))))))

(declare-fun b!7030701 () Bool)

(declare-fun res!2870048 () Bool)

(assert (=> b!7030701 (=> (not res!2870048) (not e!4226560))))

(assert (=> b!7030701 (= res!2870048 (= (size!41054 lt!2517725) (+ (size!41054 (exprs!6955 lt!2517579)) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7030702 () Bool)

(assert (=> b!7030702 (= e!4226560 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517725 (exprs!6955 lt!2517579))))))

(declare-fun b!7030699 () Bool)

(assert (=> b!7030699 (= e!4226559 (exprs!6955 ct2!306))))

(assert (= (and d!2192873 c!1307477) b!7030699))

(assert (= (and d!2192873 (not c!1307477)) b!7030700))

(assert (= (and d!2192873 res!2870049) b!7030701))

(assert (= (and b!7030701 res!2870048) b!7030702))

(declare-fun m!7736274 () Bool)

(assert (=> d!2192873 m!7736274))

(declare-fun m!7736276 () Bool)

(assert (=> d!2192873 m!7736276))

(assert (=> d!2192873 m!7736222))

(declare-fun m!7736278 () Bool)

(assert (=> b!7030700 m!7736278))

(declare-fun m!7736280 () Bool)

(assert (=> b!7030701 m!7736280))

(declare-fun m!7736282 () Bool)

(assert (=> b!7030701 m!7736282))

(assert (=> b!7030701 m!7736230))

(assert (=> b!7030373 d!2192873))

(assert (=> b!7030373 d!2192869))

(declare-fun d!2192875 () Bool)

(declare-fun e!4226563 () Bool)

(assert (=> d!2192875 e!4226563))

(declare-fun res!2870052 () Bool)

(assert (=> d!2192875 (=> (not res!2870052) (not e!4226563))))

(declare-fun lt!2517728 () Context!12910)

(assert (=> d!2192875 (= res!2870052 (= lt!2517565 (dynLambda!27362 lambda!414254 lt!2517728)))))

(declare-fun choose!53211 ((InoxSet Context!12910) Int Context!12910) Context!12910)

(assert (=> d!2192875 (= lt!2517728 (choose!53211 z1!570 lambda!414254 lt!2517565))))

(assert (=> d!2192875 (select (map!15756 z1!570 lambda!414254) lt!2517565)))

(assert (=> d!2192875 (= (mapPost2!300 z1!570 lambda!414254 lt!2517565) lt!2517728)))

(declare-fun b!7030706 () Bool)

(assert (=> b!7030706 (= e!4226563 (select z1!570 lt!2517728))))

(assert (= (and d!2192875 res!2870052) b!7030706))

(declare-fun b_lambda!266199 () Bool)

(assert (=> (not b_lambda!266199) (not d!2192875)))

(declare-fun m!7736284 () Bool)

(assert (=> d!2192875 m!7736284))

(declare-fun m!7736286 () Bool)

(assert (=> d!2192875 m!7736286))

(declare-fun m!7736288 () Bool)

(assert (=> d!2192875 m!7736288))

(declare-fun m!7736290 () Bool)

(assert (=> d!2192875 m!7736290))

(declare-fun m!7736292 () Bool)

(assert (=> b!7030706 m!7736292))

(assert (=> b!7030373 d!2192875))

(declare-fun d!2192877 () Bool)

(assert (=> d!2192877 (= (get!23744 lt!2517585) (v!53145 lt!2517585))))

(assert (=> b!7030363 d!2192877))

(declare-fun b!7030725 () Bool)

(declare-fun lt!2517735 () Unit!161586)

(declare-fun lt!2517736 () Unit!161586)

(assert (=> b!7030725 (= lt!2517735 lt!2517736)))

(assert (=> b!7030725 (= (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2919 (List!67906 C!35188 List!67906 List!67906) Unit!161586)

(assert (=> b!7030725 (= lt!2517736 (lemmaMoveElementToOtherListKeepsConcatEq!2919 Nil!67782 (h!74230 s!7408) (t!381669 s!7408) s!7408))))

(declare-fun e!4226578 () Option!16864)

(assert (=> b!7030725 (= e!4226578 (findConcatSeparationZippers!380 lt!2517603 lt!2517610 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408) s!7408))))

(declare-fun b!7030726 () Bool)

(declare-fun e!4226574 () Bool)

(declare-fun lt!2517737 () Option!16864)

(assert (=> b!7030726 (= e!4226574 (not (isDefined!13565 lt!2517737)))))

(declare-fun b!7030727 () Bool)

(declare-fun e!4226575 () Bool)

(assert (=> b!7030727 (= e!4226575 (matchZipper!2999 lt!2517610 s!7408))))

(declare-fun b!7030728 () Bool)

(declare-fun e!4226576 () Option!16864)

(assert (=> b!7030728 (= e!4226576 (Some!16863 (tuple2!68065 Nil!67782 s!7408)))))

(declare-fun d!2192879 () Bool)

(assert (=> d!2192879 e!4226574))

(declare-fun res!2870066 () Bool)

(assert (=> d!2192879 (=> res!2870066 e!4226574)))

(declare-fun e!4226577 () Bool)

(assert (=> d!2192879 (= res!2870066 e!4226577)))

(declare-fun res!2870063 () Bool)

(assert (=> d!2192879 (=> (not res!2870063) (not e!4226577))))

(assert (=> d!2192879 (= res!2870063 (isDefined!13565 lt!2517737))))

(assert (=> d!2192879 (= lt!2517737 e!4226576)))

(declare-fun c!1307482 () Bool)

(assert (=> d!2192879 (= c!1307482 e!4226575)))

(declare-fun res!2870065 () Bool)

(assert (=> d!2192879 (=> (not res!2870065) (not e!4226575))))

(assert (=> d!2192879 (= res!2870065 (matchZipper!2999 lt!2517603 Nil!67782))))

(assert (=> d!2192879 (= (++!15499 Nil!67782 s!7408) s!7408)))

(assert (=> d!2192879 (= (findConcatSeparationZippers!380 lt!2517603 lt!2517610 Nil!67782 s!7408 s!7408) lt!2517737)))

(declare-fun b!7030729 () Bool)

(assert (=> b!7030729 (= e!4226576 e!4226578)))

(declare-fun c!1307483 () Bool)

(assert (=> b!7030729 (= c!1307483 ((_ is Nil!67782) s!7408))))

(declare-fun b!7030730 () Bool)

(declare-fun res!2870064 () Bool)

(assert (=> b!7030730 (=> (not res!2870064) (not e!4226577))))

(assert (=> b!7030730 (= res!2870064 (matchZipper!2999 lt!2517610 (_2!37335 (get!23744 lt!2517737))))))

(declare-fun b!7030731 () Bool)

(declare-fun res!2870067 () Bool)

(assert (=> b!7030731 (=> (not res!2870067) (not e!4226577))))

(assert (=> b!7030731 (= res!2870067 (matchZipper!2999 lt!2517603 (_1!37335 (get!23744 lt!2517737))))))

(declare-fun b!7030732 () Bool)

(assert (=> b!7030732 (= e!4226577 (= (++!15499 (_1!37335 (get!23744 lt!2517737)) (_2!37335 (get!23744 lt!2517737))) s!7408))))

(declare-fun b!7030733 () Bool)

(assert (=> b!7030733 (= e!4226578 None!16863)))

(assert (= (and d!2192879 res!2870065) b!7030727))

(assert (= (and d!2192879 c!1307482) b!7030728))

(assert (= (and d!2192879 (not c!1307482)) b!7030729))

(assert (= (and b!7030729 c!1307483) b!7030733))

(assert (= (and b!7030729 (not c!1307483)) b!7030725))

(assert (= (and d!2192879 res!2870063) b!7030731))

(assert (= (and b!7030731 res!2870067) b!7030730))

(assert (= (and b!7030730 res!2870064) b!7030732))

(assert (= (and d!2192879 (not res!2870066)) b!7030726))

(declare-fun m!7736294 () Bool)

(assert (=> b!7030730 m!7736294))

(declare-fun m!7736296 () Bool)

(assert (=> b!7030730 m!7736296))

(assert (=> b!7030732 m!7736294))

(declare-fun m!7736298 () Bool)

(assert (=> b!7030732 m!7736298))

(assert (=> b!7030731 m!7736294))

(declare-fun m!7736300 () Bool)

(assert (=> b!7030731 m!7736300))

(declare-fun m!7736302 () Bool)

(assert (=> b!7030727 m!7736302))

(declare-fun m!7736304 () Bool)

(assert (=> b!7030725 m!7736304))

(assert (=> b!7030725 m!7736304))

(declare-fun m!7736306 () Bool)

(assert (=> b!7030725 m!7736306))

(declare-fun m!7736308 () Bool)

(assert (=> b!7030725 m!7736308))

(assert (=> b!7030725 m!7736304))

(declare-fun m!7736310 () Bool)

(assert (=> b!7030725 m!7736310))

(declare-fun m!7736312 () Bool)

(assert (=> d!2192879 m!7736312))

(declare-fun m!7736314 () Bool)

(assert (=> d!2192879 m!7736314))

(declare-fun m!7736316 () Bool)

(assert (=> d!2192879 m!7736316))

(assert (=> b!7030726 m!7736312))

(assert (=> b!7030363 d!2192879))

(declare-fun d!2192881 () Bool)

(declare-fun c!1307484 () Bool)

(assert (=> d!2192881 (= c!1307484 (isEmpty!39526 (_1!37335 lt!2517607)))))

(declare-fun e!4226579 () Bool)

(assert (=> d!2192881 (= (matchZipper!2999 lt!2517603 (_1!37335 lt!2517607)) e!4226579)))

(declare-fun b!7030734 () Bool)

(assert (=> b!7030734 (= e!4226579 (nullableZipper!2575 lt!2517603))))

(declare-fun b!7030735 () Bool)

(assert (=> b!7030735 (= e!4226579 (matchZipper!2999 (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 lt!2517607))) (tail!13543 (_1!37335 lt!2517607))))))

(assert (= (and d!2192881 c!1307484) b!7030734))

(assert (= (and d!2192881 (not c!1307484)) b!7030735))

(assert (=> d!2192881 m!7735638))

(declare-fun m!7736318 () Bool)

(assert (=> b!7030734 m!7736318))

(declare-fun m!7736320 () Bool)

(assert (=> b!7030735 m!7736320))

(assert (=> b!7030735 m!7736320))

(declare-fun m!7736322 () Bool)

(assert (=> b!7030735 m!7736322))

(declare-fun m!7736324 () Bool)

(assert (=> b!7030735 m!7736324))

(assert (=> b!7030735 m!7736322))

(assert (=> b!7030735 m!7736324))

(declare-fun m!7736326 () Bool)

(assert (=> b!7030735 m!7736326))

(assert (=> b!7030363 d!2192881))

(declare-fun d!2192883 () Bool)

(declare-fun isEmpty!39529 (Option!16864) Bool)

(assert (=> d!2192883 (= (isDefined!13565 lt!2517585) (not (isEmpty!39529 lt!2517585)))))

(declare-fun bs!1869959 () Bool)

(assert (= bs!1869959 d!2192883))

(declare-fun m!7736328 () Bool)

(assert (=> bs!1869959 m!7736328))

(assert (=> b!7030363 d!2192883))

(declare-fun d!2192885 () Bool)

(assert (=> d!2192885 (isDefined!13565 (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) Nil!67782 s!7408 s!7408))))

(declare-fun lt!2517740 () Unit!161586)

(declare-fun choose!53212 ((InoxSet Context!12910) Context!12910 List!67906) Unit!161586)

(assert (=> d!2192885 (= lt!2517740 (choose!53212 lt!2517603 ct2!306 s!7408))))

(assert (=> d!2192885 (matchZipper!2999 (appendTo!580 lt!2517603 ct2!306) s!7408)))

(assert (=> d!2192885 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!368 lt!2517603 ct2!306 s!7408) lt!2517740)))

(declare-fun bs!1869960 () Bool)

(assert (= bs!1869960 d!2192885))

(declare-fun m!7736330 () Bool)

(assert (=> bs!1869960 m!7736330))

(declare-fun m!7736332 () Bool)

(assert (=> bs!1869960 m!7736332))

(declare-fun m!7736334 () Bool)

(assert (=> bs!1869960 m!7736334))

(declare-fun m!7736336 () Bool)

(assert (=> bs!1869960 m!7736336))

(assert (=> bs!1869960 m!7735676))

(assert (=> bs!1869960 m!7736334))

(assert (=> bs!1869960 m!7736330))

(assert (=> bs!1869960 m!7735676))

(declare-fun m!7736338 () Bool)

(assert (=> bs!1869960 m!7736338))

(assert (=> b!7030363 d!2192885))

(declare-fun b!7030736 () Bool)

(declare-fun e!4226581 () Bool)

(assert (=> b!7030736 (= e!4226581 (nullable!7170 (h!74229 (exprs!6955 lt!2517582))))))

(declare-fun d!2192887 () Bool)

(declare-fun c!1307486 () Bool)

(assert (=> d!2192887 (= c!1307486 e!4226581)))

(declare-fun res!2870068 () Bool)

(assert (=> d!2192887 (=> (not res!2870068) (not e!4226581))))

(assert (=> d!2192887 (= res!2870068 ((_ is Cons!67781) (exprs!6955 lt!2517582)))))

(declare-fun e!4226580 () (InoxSet Context!12910))

(assert (=> d!2192887 (= (derivationStepZipperUp!2069 lt!2517582 (h!74230 s!7408)) e!4226580)))

(declare-fun bm!638429 () Bool)

(declare-fun call!638434 () (InoxSet Context!12910))

(assert (=> bm!638429 (= call!638434 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517582)) (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (h!74230 s!7408)))))

(declare-fun b!7030737 () Bool)

(declare-fun e!4226582 () (InoxSet Context!12910))

(assert (=> b!7030737 (= e!4226580 e!4226582)))

(declare-fun c!1307485 () Bool)

(assert (=> b!7030737 (= c!1307485 ((_ is Cons!67781) (exprs!6955 lt!2517582)))))

(declare-fun b!7030738 () Bool)

(assert (=> b!7030738 (= e!4226582 call!638434)))

(declare-fun b!7030739 () Bool)

(assert (=> b!7030739 (= e!4226580 ((_ map or) call!638434 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (h!74230 s!7408))))))

(declare-fun b!7030740 () Bool)

(assert (=> b!7030740 (= e!4226582 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2192887 res!2870068) b!7030736))

(assert (= (and d!2192887 c!1307486) b!7030739))

(assert (= (and d!2192887 (not c!1307486)) b!7030737))

(assert (= (and b!7030737 c!1307485) b!7030738))

(assert (= (and b!7030737 (not c!1307485)) b!7030740))

(assert (= (or b!7030739 b!7030738) bm!638429))

(declare-fun m!7736340 () Bool)

(assert (=> b!7030736 m!7736340))

(declare-fun m!7736342 () Bool)

(assert (=> bm!638429 m!7736342))

(declare-fun m!7736344 () Bool)

(assert (=> b!7030739 m!7736344))

(assert (=> b!7030364 d!2192887))

(declare-fun d!2192889 () Bool)

(assert (=> d!2192889 (= (flatMap!2406 lt!2517584 lambda!414256) (choose!53205 lt!2517584 lambda!414256))))

(declare-fun bs!1869961 () Bool)

(assert (= bs!1869961 d!2192889))

(declare-fun m!7736346 () Bool)

(assert (=> bs!1869961 m!7736346))

(assert (=> b!7030364 d!2192889))

(declare-fun bs!1869962 () Bool)

(declare-fun d!2192891 () Bool)

(assert (= bs!1869962 (and d!2192891 b!7030364)))

(declare-fun lambda!414289 () Int)

(assert (=> bs!1869962 (= lambda!414289 lambda!414256)))

(declare-fun bs!1869963 () Bool)

(assert (= bs!1869963 (and d!2192891 d!2192797)))

(assert (=> bs!1869963 (= lambda!414289 lambda!414279)))

(assert (=> d!2192891 true))

(assert (=> d!2192891 (= (derivationStepZipper!2915 lt!2517584 (h!74230 s!7408)) (flatMap!2406 lt!2517584 lambda!414289))))

(declare-fun bs!1869964 () Bool)

(assert (= bs!1869964 d!2192891))

(declare-fun m!7736348 () Bool)

(assert (=> bs!1869964 m!7736348))

(assert (=> b!7030364 d!2192891))

(declare-fun d!2192893 () Bool)

(assert (=> d!2192893 (= (flatMap!2406 lt!2517584 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517582))))

(declare-fun lt!2517741 () Unit!161586)

(assert (=> d!2192893 (= lt!2517741 (choose!53203 lt!2517584 lt!2517582 lambda!414256))))

(assert (=> d!2192893 (= lt!2517584 (store ((as const (Array Context!12910 Bool)) false) lt!2517582 true))))

(assert (=> d!2192893 (= (lemmaFlatMapOnSingletonSet!1920 lt!2517584 lt!2517582 lambda!414256) lt!2517741)))

(declare-fun b_lambda!266201 () Bool)

(assert (=> (not b_lambda!266201) (not d!2192893)))

(declare-fun bs!1869965 () Bool)

(assert (= bs!1869965 d!2192893))

(assert (=> bs!1869965 m!7735712))

(declare-fun m!7736350 () Bool)

(assert (=> bs!1869965 m!7736350))

(declare-fun m!7736352 () Bool)

(assert (=> bs!1869965 m!7736352))

(assert (=> bs!1869965 m!7735682))

(assert (=> b!7030364 d!2192893))

(assert (=> b!7030364 d!2192869))

(declare-fun d!2192895 () Bool)

(declare-fun c!1307487 () Bool)

(assert (=> d!2192895 (= c!1307487 (isEmpty!39526 s!7408))))

(declare-fun e!4226583 () Bool)

(assert (=> d!2192895 (= (matchZipper!2999 lt!2517572 s!7408) e!4226583)))

(declare-fun b!7030741 () Bool)

(assert (=> b!7030741 (= e!4226583 (nullableZipper!2575 lt!2517572))))

(declare-fun b!7030742 () Bool)

(assert (=> b!7030742 (= e!4226583 (matchZipper!2999 (derivationStepZipper!2915 lt!2517572 (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2192895 c!1307487) b!7030741))

(assert (= (and d!2192895 (not c!1307487)) b!7030742))

(assert (=> d!2192895 m!7736016))

(declare-fun m!7736354 () Bool)

(assert (=> b!7030741 m!7736354))

(assert (=> b!7030742 m!7736020))

(assert (=> b!7030742 m!7736020))

(declare-fun m!7736356 () Bool)

(assert (=> b!7030742 m!7736356))

(assert (=> b!7030742 m!7736024))

(assert (=> b!7030742 m!7736356))

(assert (=> b!7030742 m!7736024))

(declare-fun m!7736358 () Bool)

(assert (=> b!7030742 m!7736358))

(assert (=> start!679168 d!2192895))

(declare-fun bs!1869966 () Bool)

(declare-fun d!2192897 () Bool)

(assert (= bs!1869966 (and d!2192897 b!7030373)))

(declare-fun lambda!414294 () Int)

(assert (=> bs!1869966 (= lambda!414294 lambda!414254)))

(assert (=> d!2192897 true))

(assert (=> d!2192897 (= (appendTo!580 z1!570 ct2!306) (map!15756 z1!570 lambda!414294))))

(declare-fun bs!1869967 () Bool)

(assert (= bs!1869967 d!2192897))

(declare-fun m!7736360 () Bool)

(assert (=> bs!1869967 m!7736360))

(assert (=> start!679168 d!2192897))

(declare-fun bs!1869968 () Bool)

(declare-fun d!2192899 () Bool)

(assert (= bs!1869968 (and d!2192899 b!7030373)))

(declare-fun lambda!414295 () Int)

(assert (=> bs!1869968 (= lambda!414295 lambda!414255)))

(declare-fun bs!1869969 () Bool)

(assert (= bs!1869969 (and d!2192899 d!2192871)))

(assert (=> bs!1869969 (= lambda!414295 lambda!414288)))

(assert (=> d!2192899 (= (inv!86506 ct2!306) (forall!16369 (exprs!6955 ct2!306) lambda!414295))))

(declare-fun bs!1869970 () Bool)

(assert (= bs!1869970 d!2192899))

(declare-fun m!7736362 () Bool)

(assert (=> bs!1869970 m!7736362))

(assert (=> start!679168 d!2192899))

(declare-fun b!7030747 () Bool)

(declare-fun e!4226586 () Bool)

(declare-fun tp!1936177 () Bool)

(assert (=> b!7030747 (= e!4226586 (and tp_is_empty!44143 tp!1936177))))

(assert (=> b!7030360 (= tp!1936155 e!4226586)))

(assert (= (and b!7030360 ((_ is Cons!67782) (t!381669 s!7408))) b!7030747))

(declare-fun b!7030752 () Bool)

(declare-fun e!4226589 () Bool)

(declare-fun tp!1936182 () Bool)

(declare-fun tp!1936183 () Bool)

(assert (=> b!7030752 (= e!4226589 (and tp!1936182 tp!1936183))))

(assert (=> b!7030379 (= tp!1936156 e!4226589)))

(assert (= (and b!7030379 ((_ is Cons!67781) (exprs!6955 setElem!49106))) b!7030752))

(declare-fun b!7030753 () Bool)

(declare-fun e!4226590 () Bool)

(declare-fun tp!1936184 () Bool)

(declare-fun tp!1936185 () Bool)

(assert (=> b!7030753 (= e!4226590 (and tp!1936184 tp!1936185))))

(assert (=> b!7030357 (= tp!1936154 e!4226590)))

(assert (= (and b!7030357 ((_ is Cons!67781) (exprs!6955 ct2!306))) b!7030753))

(declare-fun condSetEmpty!49112 () Bool)

(assert (=> setNonEmpty!49106 (= condSetEmpty!49112 (= setRest!49106 ((as const (Array Context!12910 Bool)) false)))))

(declare-fun setRes!49112 () Bool)

(assert (=> setNonEmpty!49106 (= tp!1936157 setRes!49112)))

(declare-fun setIsEmpty!49112 () Bool)

(assert (=> setIsEmpty!49112 setRes!49112))

(declare-fun setElem!49112 () Context!12910)

(declare-fun setNonEmpty!49112 () Bool)

(declare-fun e!4226593 () Bool)

(declare-fun tp!1936190 () Bool)

(assert (=> setNonEmpty!49112 (= setRes!49112 (and tp!1936190 (inv!86506 setElem!49112) e!4226593))))

(declare-fun setRest!49112 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49112 (= setRest!49106 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49112 true) setRest!49112))))

(declare-fun b!7030758 () Bool)

(declare-fun tp!1936191 () Bool)

(assert (=> b!7030758 (= e!4226593 tp!1936191)))

(assert (= (and setNonEmpty!49106 condSetEmpty!49112) setIsEmpty!49112))

(assert (= (and setNonEmpty!49106 (not condSetEmpty!49112)) setNonEmpty!49112))

(assert (= setNonEmpty!49112 b!7030758))

(declare-fun m!7736364 () Bool)

(assert (=> setNonEmpty!49112 m!7736364))

(declare-fun b_lambda!266203 () Bool)

(assert (= b_lambda!266177 (or b!7030364 b_lambda!266203)))

(declare-fun bs!1869971 () Bool)

(declare-fun d!2192901 () Bool)

(assert (= bs!1869971 (and d!2192901 b!7030364)))

(assert (=> bs!1869971 (= (dynLambda!27361 lambda!414256 lt!2517613) (derivationStepZipperUp!2069 lt!2517613 (h!74230 s!7408)))))

(assert (=> bs!1869971 m!7735700))

(assert (=> d!2192789 d!2192901))

(declare-fun b_lambda!266205 () Bool)

(assert (= b_lambda!266201 (or b!7030364 b_lambda!266205)))

(declare-fun bs!1869972 () Bool)

(declare-fun d!2192903 () Bool)

(assert (= bs!1869972 (and d!2192903 b!7030364)))

(assert (=> bs!1869972 (= (dynLambda!27361 lambda!414256 lt!2517582) (derivationStepZipperUp!2069 lt!2517582 (h!74230 s!7408)))))

(assert (=> bs!1869972 m!7735714))

(assert (=> d!2192893 d!2192903))

(declare-fun b_lambda!266207 () Bool)

(assert (= b_lambda!266197 (or b!7030373 b_lambda!266207)))

(declare-fun bs!1869973 () Bool)

(declare-fun d!2192905 () Bool)

(assert (= bs!1869973 (and d!2192905 b!7030373)))

(declare-fun lt!2517744 () Unit!161586)

(assert (=> bs!1869973 (= lt!2517744 (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517592) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> bs!1869973 (= (dynLambda!27362 lambda!414254 lt!2517592) (Context!12911 (++!15498 (exprs!6955 lt!2517592) (exprs!6955 ct2!306))))))

(declare-fun m!7736366 () Bool)

(assert (=> bs!1869973 m!7736366))

(declare-fun m!7736368 () Bool)

(assert (=> bs!1869973 m!7736368))

(assert (=> d!2192853 d!2192905))

(declare-fun b_lambda!266209 () Bool)

(assert (= b_lambda!266175 (or b!7030377 b_lambda!266209)))

(declare-fun bs!1869974 () Bool)

(declare-fun d!2192907 () Bool)

(assert (= bs!1869974 (and d!2192907 b!7030377)))

(assert (=> bs!1869974 (= (dynLambda!27359 lambda!414253 lt!2517665) (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) lt!2517665 true) s!7408))))

(declare-fun m!7736370 () Bool)

(assert (=> bs!1869974 m!7736370))

(assert (=> bs!1869974 m!7736370))

(declare-fun m!7736372 () Bool)

(assert (=> bs!1869974 m!7736372))

(assert (=> d!2192747 d!2192907))

(declare-fun b_lambda!266211 () Bool)

(assert (= b_lambda!266199 (or b!7030373 b_lambda!266211)))

(declare-fun bs!1869975 () Bool)

(declare-fun d!2192909 () Bool)

(assert (= bs!1869975 (and d!2192909 b!7030373)))

(declare-fun lt!2517745 () Unit!161586)

(assert (=> bs!1869975 (= lt!2517745 (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517728) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> bs!1869975 (= (dynLambda!27362 lambda!414254 lt!2517728) (Context!12911 (++!15498 (exprs!6955 lt!2517728) (exprs!6955 ct2!306))))))

(declare-fun m!7736374 () Bool)

(assert (=> bs!1869975 m!7736374))

(declare-fun m!7736376 () Bool)

(assert (=> bs!1869975 m!7736376))

(assert (=> d!2192875 d!2192909))

(declare-fun b_lambda!266213 () Bool)

(assert (= b_lambda!266183 (or b!7030364 b_lambda!266213)))

(declare-fun bs!1869976 () Bool)

(declare-fun d!2192911 () Bool)

(assert (= bs!1869976 (and d!2192911 b!7030364)))

(assert (=> bs!1869976 (= (dynLambda!27361 lambda!414256 lt!2517592) (derivationStepZipperUp!2069 lt!2517592 (h!74230 s!7408)))))

(assert (=> bs!1869976 m!7735646))

(assert (=> d!2192819 d!2192911))

(check-sat (not b!7030516) (not bs!1869976) (not b!7030734) (not d!2192717) (not b!7030696) (not b!7030697) (not b!7030442) (not b!7030727) (not b_lambda!266205) (not bs!1869971) (not b!7030730) (not b!7030430) (not b_lambda!266211) (not b!7030650) (not b!7030468) (not d!2192693) (not d!2192859) (not b!7030597) (not d!2192899) (not d!2192835) (not d!2192789) (not d!2192819) (not d!2192797) (not d!2192857) (not b!7030735) (not b!7030653) (not b!7030453) (not b!7030726) (not b!7030441) (not bs!1869974) (not d!2192823) (not d!2192873) (not b!7030742) (not b!7030464) (not d!2192723) (not b!7030463) (not b!7030528) (not b!7030454) (not d!2192781) (not bs!1869973) (not b!7030677) (not b!7030741) (not b_lambda!266213) (not d!2192861) (not d!2192895) (not bs!1869975) (not b!7030736) (not setNonEmpty!49112) (not b!7030517) tp_is_empty!44143 (not b!7030527) (not d!2192783) (not d!2192869) (not b!7030731) (not b!7030638) (not d!2192875) (not b!7030515) (not b!7030732) (not d!2192747) (not b!7030635) (not b!7030462) (not b!7030600) (not b!7030701) (not b!7030608) (not bs!1869972) (not bm!638425) (not b!7030739) (not b_lambda!266203) (not b_lambda!266207) (not bm!638424) (not bm!638427) (not b!7030649) (not d!2192897) (not d!2192867) (not b!7030606) (not d!2192779) (not b!7030700) (not d!2192885) (not b!7030753) (not bm!638429) (not d!2192775) (not bm!638410) (not d!2192883) (not d!2192737) (not b!7030619) (not d!2192853) (not d!2192881) (not d!2192815) (not b!7030725) (not b!7030652) (not d!2192891) (not d!2192893) (not d!2192729) (not d!2192879) (not b!7030633) (not b!7030758) (not bm!638409) (not d!2192837) (not d!2192865) (not d!2192871) (not d!2192703) (not b_lambda!266209) (not b!7030467) (not b!7030752) (not d!2192771) (not b!7030747) (not d!2192739) (not d!2192889))
(check-sat)
(get-model)

(declare-fun d!2192923 () Bool)

(assert (=> d!2192923 (= (isEmpty!39526 (t!381669 s!7408)) ((_ is Nil!67782) (t!381669 s!7408)))))

(assert (=> d!2192703 d!2192923))

(declare-fun d!2192925 () Bool)

(declare-fun c!1307500 () Bool)

(assert (=> d!2192925 (= c!1307500 (isEmpty!39526 (tail!13543 (_2!37335 lt!2517607))))))

(declare-fun e!4226611 () Bool)

(assert (=> d!2192925 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 lt!2517607))) (tail!13543 (_2!37335 lt!2517607))) e!4226611)))

(declare-fun b!7030786 () Bool)

(assert (=> b!7030786 (= e!4226611 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 lt!2517607)))))))

(declare-fun b!7030787 () Bool)

(assert (=> b!7030787 (= e!4226611 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 lt!2517607))) (head!14256 (tail!13543 (_2!37335 lt!2517607)))) (tail!13543 (tail!13543 (_2!37335 lt!2517607)))))))

(assert (= (and d!2192925 c!1307500) b!7030786))

(assert (= (and d!2192925 (not c!1307500)) b!7030787))

(assert (=> d!2192925 m!7736036))

(declare-fun m!7736398 () Bool)

(assert (=> d!2192925 m!7736398))

(assert (=> b!7030786 m!7736034))

(declare-fun m!7736400 () Bool)

(assert (=> b!7030786 m!7736400))

(assert (=> b!7030787 m!7736036))

(declare-fun m!7736402 () Bool)

(assert (=> b!7030787 m!7736402))

(assert (=> b!7030787 m!7736034))

(assert (=> b!7030787 m!7736402))

(declare-fun m!7736404 () Bool)

(assert (=> b!7030787 m!7736404))

(assert (=> b!7030787 m!7736036))

(declare-fun m!7736406 () Bool)

(assert (=> b!7030787 m!7736406))

(assert (=> b!7030787 m!7736404))

(assert (=> b!7030787 m!7736406))

(declare-fun m!7736408 () Bool)

(assert (=> b!7030787 m!7736408))

(assert (=> b!7030528 d!2192925))

(declare-fun bs!1869978 () Bool)

(declare-fun d!2192927 () Bool)

(assert (= bs!1869978 (and d!2192927 b!7030364)))

(declare-fun lambda!414296 () Int)

(assert (=> bs!1869978 (= (= (head!14256 (_2!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414296 lambda!414256))))

(declare-fun bs!1869979 () Bool)

(assert (= bs!1869979 (and d!2192927 d!2192797)))

(assert (=> bs!1869979 (= (= (head!14256 (_2!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414296 lambda!414279))))

(declare-fun bs!1869980 () Bool)

(assert (= bs!1869980 (and d!2192927 d!2192891)))

(assert (=> bs!1869980 (= (= (head!14256 (_2!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414296 lambda!414289))))

(assert (=> d!2192927 true))

(assert (=> d!2192927 (= (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 lt!2517607))) (flatMap!2406 lt!2517610 lambda!414296))))

(declare-fun bs!1869981 () Bool)

(assert (= bs!1869981 d!2192927))

(declare-fun m!7736414 () Bool)

(assert (=> bs!1869981 m!7736414))

(assert (=> b!7030528 d!2192927))

(declare-fun d!2192931 () Bool)

(assert (=> d!2192931 (= (head!14256 (_2!37335 lt!2517607)) (h!74230 (_2!37335 lt!2517607)))))

(assert (=> b!7030528 d!2192931))

(declare-fun d!2192935 () Bool)

(assert (=> d!2192935 (= (tail!13543 (_2!37335 lt!2517607)) (t!381669 (_2!37335 lt!2517607)))))

(assert (=> b!7030528 d!2192935))

(declare-fun b!7030808 () Bool)

(declare-fun e!4226621 () Bool)

(declare-fun lt!2517749 () List!67906)

(assert (=> b!7030808 (= e!4226621 (or (not (= (_2!37335 (get!23744 lt!2517737)) Nil!67782)) (= lt!2517749 (_1!37335 (get!23744 lt!2517737)))))))

(declare-fun b!7030805 () Bool)

(declare-fun e!4226622 () List!67906)

(assert (=> b!7030805 (= e!4226622 (_2!37335 (get!23744 lt!2517737)))))

(declare-fun d!2192939 () Bool)

(assert (=> d!2192939 e!4226621))

(declare-fun res!2870077 () Bool)

(assert (=> d!2192939 (=> (not res!2870077) (not e!4226621))))

(assert (=> d!2192939 (= res!2870077 (= (content!13522 lt!2517749) ((_ map or) (content!13522 (_1!37335 (get!23744 lt!2517737))) (content!13522 (_2!37335 (get!23744 lt!2517737))))))))

(assert (=> d!2192939 (= lt!2517749 e!4226622)))

(declare-fun c!1307509 () Bool)

(assert (=> d!2192939 (= c!1307509 ((_ is Nil!67782) (_1!37335 (get!23744 lt!2517737))))))

(assert (=> d!2192939 (= (++!15499 (_1!37335 (get!23744 lt!2517737)) (_2!37335 (get!23744 lt!2517737))) lt!2517749)))

(declare-fun b!7030807 () Bool)

(declare-fun res!2870078 () Bool)

(assert (=> b!7030807 (=> (not res!2870078) (not e!4226621))))

(assert (=> b!7030807 (= res!2870078 (= (size!41055 lt!2517749) (+ (size!41055 (_1!37335 (get!23744 lt!2517737))) (size!41055 (_2!37335 (get!23744 lt!2517737))))))))

(declare-fun b!7030806 () Bool)

(assert (=> b!7030806 (= e!4226622 (Cons!67782 (h!74230 (_1!37335 (get!23744 lt!2517737))) (++!15499 (t!381669 (_1!37335 (get!23744 lt!2517737))) (_2!37335 (get!23744 lt!2517737)))))))

(assert (= (and d!2192939 c!1307509) b!7030805))

(assert (= (and d!2192939 (not c!1307509)) b!7030806))

(assert (= (and d!2192939 res!2870077) b!7030807))

(assert (= (and b!7030807 res!2870078) b!7030808))

(declare-fun m!7736424 () Bool)

(assert (=> d!2192939 m!7736424))

(declare-fun m!7736426 () Bool)

(assert (=> d!2192939 m!7736426))

(declare-fun m!7736428 () Bool)

(assert (=> d!2192939 m!7736428))

(declare-fun m!7736430 () Bool)

(assert (=> b!7030807 m!7736430))

(declare-fun m!7736432 () Bool)

(assert (=> b!7030807 m!7736432))

(declare-fun m!7736434 () Bool)

(assert (=> b!7030807 m!7736434))

(declare-fun m!7736436 () Bool)

(assert (=> b!7030806 m!7736436))

(assert (=> b!7030732 d!2192939))

(declare-fun d!2192941 () Bool)

(assert (=> d!2192941 (= (get!23744 lt!2517737) (v!53145 lt!2517737))))

(assert (=> b!7030732 d!2192941))

(declare-fun d!2192943 () Bool)

(assert (=> d!2192943 (= (nullable!7170 (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))) (nullableFct!2723 (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))))

(declare-fun bs!1869982 () Bool)

(assert (= bs!1869982 d!2192943))

(declare-fun m!7736438 () Bool)

(assert (=> bs!1869982 m!7736438))

(assert (=> b!7030677 d!2192943))

(declare-fun d!2192945 () Bool)

(declare-fun c!1307510 () Bool)

(assert (=> d!2192945 (= c!1307510 (isEmpty!39526 (tail!13543 s!7408)))))

(declare-fun e!4226623 () Bool)

(assert (=> d!2192945 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517576 (head!14256 s!7408)) (tail!13543 s!7408)) e!4226623)))

(declare-fun b!7030809 () Bool)

(assert (=> b!7030809 (= e!4226623 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517576 (head!14256 s!7408))))))

(declare-fun b!7030810 () Bool)

(assert (=> b!7030810 (= e!4226623 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517576 (head!14256 s!7408)) (head!14256 (tail!13543 s!7408))) (tail!13543 (tail!13543 s!7408))))))

(assert (= (and d!2192945 c!1307510) b!7030809))

(assert (= (and d!2192945 (not c!1307510)) b!7030810))

(assert (=> d!2192945 m!7736024))

(declare-fun m!7736440 () Bool)

(assert (=> d!2192945 m!7736440))

(assert (=> b!7030809 m!7736022))

(declare-fun m!7736442 () Bool)

(assert (=> b!7030809 m!7736442))

(assert (=> b!7030810 m!7736024))

(declare-fun m!7736444 () Bool)

(assert (=> b!7030810 m!7736444))

(assert (=> b!7030810 m!7736022))

(assert (=> b!7030810 m!7736444))

(declare-fun m!7736446 () Bool)

(assert (=> b!7030810 m!7736446))

(assert (=> b!7030810 m!7736024))

(declare-fun m!7736448 () Bool)

(assert (=> b!7030810 m!7736448))

(assert (=> b!7030810 m!7736446))

(assert (=> b!7030810 m!7736448))

(declare-fun m!7736450 () Bool)

(assert (=> b!7030810 m!7736450))

(assert (=> b!7030517 d!2192945))

(declare-fun bs!1869983 () Bool)

(declare-fun d!2192947 () Bool)

(assert (= bs!1869983 (and d!2192947 b!7030364)))

(declare-fun lambda!414297 () Int)

(assert (=> bs!1869983 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414297 lambda!414256))))

(declare-fun bs!1869984 () Bool)

(assert (= bs!1869984 (and d!2192947 d!2192797)))

(assert (=> bs!1869984 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414297 lambda!414279))))

(declare-fun bs!1869985 () Bool)

(assert (= bs!1869985 (and d!2192947 d!2192891)))

(assert (=> bs!1869985 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414297 lambda!414289))))

(declare-fun bs!1869986 () Bool)

(assert (= bs!1869986 (and d!2192947 d!2192927)))

(assert (=> bs!1869986 (= (= (head!14256 s!7408) (head!14256 (_2!37335 lt!2517607))) (= lambda!414297 lambda!414296))))

(assert (=> d!2192947 true))

(assert (=> d!2192947 (= (derivationStepZipper!2915 lt!2517576 (head!14256 s!7408)) (flatMap!2406 lt!2517576 lambda!414297))))

(declare-fun bs!1869987 () Bool)

(assert (= bs!1869987 d!2192947))

(declare-fun m!7736462 () Bool)

(assert (=> bs!1869987 m!7736462))

(assert (=> b!7030517 d!2192947))

(declare-fun d!2192951 () Bool)

(assert (=> d!2192951 (= (head!14256 s!7408) (h!74230 s!7408))))

(assert (=> b!7030517 d!2192951))

(declare-fun d!2192953 () Bool)

(assert (=> d!2192953 (= (tail!13543 s!7408) (t!381669 s!7408))))

(assert (=> b!7030517 d!2192953))

(declare-fun d!2192955 () Bool)

(assert (=> d!2192955 (= (isEmpty!39526 s!7408) ((_ is Nil!67782) s!7408))))

(assert (=> d!2192781 d!2192955))

(declare-fun b!7030811 () Bool)

(declare-fun c!1307514 () Bool)

(assert (=> b!7030811 (= c!1307514 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun e!4226625 () (InoxSet Context!12910))

(declare-fun e!4226629 () (InoxSet Context!12910))

(assert (=> b!7030811 (= e!4226625 e!4226629)))

(declare-fun bm!638442 () Bool)

(declare-fun call!638452 () (InoxSet Context!12910))

(declare-fun call!638448 () (InoxSet Context!12910))

(assert (=> bm!638442 (= call!638452 call!638448)))

(declare-fun b!7030812 () Bool)

(declare-fun e!4226624 () Bool)

(assert (=> b!7030812 (= e!4226624 (nullable!7170 (regOne!35430 (h!74229 (exprs!6955 lt!2517592)))))))

(declare-fun b!7030813 () Bool)

(declare-fun e!4226628 () (InoxSet Context!12910))

(assert (=> b!7030813 (= e!4226628 e!4226625)))

(declare-fun c!1307515 () Bool)

(assert (=> b!7030813 (= c!1307515 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun call!638451 () List!67905)

(declare-fun call!638450 () (InoxSet Context!12910))

(declare-fun c!1307511 () Bool)

(declare-fun bm!638443 () Bool)

(assert (=> bm!638443 (= call!638450 (derivationStepZipperDown!2123 (ite c!1307511 (regOne!35431 (h!74229 (exprs!6955 lt!2517592))) (regOne!35430 (h!74229 (exprs!6955 lt!2517592)))) (ite c!1307511 (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (Context!12911 call!638451)) (h!74230 s!7408)))))

(declare-fun c!1307512 () Bool)

(declare-fun bm!638444 () Bool)

(assert (=> bm!638444 (= call!638451 ($colon$colon!2569 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))) (ite (or c!1307512 c!1307515) (regTwo!35430 (h!74229 (exprs!6955 lt!2517592))) (h!74229 (exprs!6955 lt!2517592)))))))

(declare-fun b!7030814 () Bool)

(assert (=> b!7030814 (= e!4226628 ((_ map or) call!638450 call!638448))))

(declare-fun bm!638445 () Bool)

(declare-fun call!638449 () (InoxSet Context!12910))

(assert (=> bm!638445 (= call!638448 call!638449)))

(declare-fun b!7030815 () Bool)

(declare-fun e!4226626 () (InoxSet Context!12910))

(assert (=> b!7030815 (= e!4226626 ((_ map or) call!638450 call!638449))))

(declare-fun d!2192957 () Bool)

(declare-fun c!1307513 () Bool)

(assert (=> d!2192957 (= c!1307513 (and ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517592))) (= (c!1307360 (h!74229 (exprs!6955 lt!2517592))) (h!74230 s!7408))))))

(declare-fun e!4226627 () (InoxSet Context!12910))

(assert (=> d!2192957 (= (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517592)) (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (h!74230 s!7408)) e!4226627)))

(declare-fun b!7030816 () Bool)

(assert (=> b!7030816 (= e!4226627 (store ((as const (Array Context!12910 Bool)) false) (Context!12911 (t!381668 (exprs!6955 lt!2517592))) true))))

(declare-fun b!7030817 () Bool)

(assert (=> b!7030817 (= c!1307512 e!4226624)))

(declare-fun res!2870079 () Bool)

(assert (=> b!7030817 (=> (not res!2870079) (not e!4226624))))

(assert (=> b!7030817 (= res!2870079 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517592))))))

(assert (=> b!7030817 (= e!4226626 e!4226628)))

(declare-fun b!7030818 () Bool)

(assert (=> b!7030818 (= e!4226629 call!638452)))

(declare-fun call!638447 () List!67905)

(declare-fun bm!638446 () Bool)

(assert (=> bm!638446 (= call!638449 (derivationStepZipperDown!2123 (ite c!1307511 (regTwo!35431 (h!74229 (exprs!6955 lt!2517592))) (ite c!1307512 (regTwo!35430 (h!74229 (exprs!6955 lt!2517592))) (ite c!1307515 (regOne!35430 (h!74229 (exprs!6955 lt!2517592))) (reg!17788 (h!74229 (exprs!6955 lt!2517592)))))) (ite (or c!1307511 c!1307512) (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (Context!12911 call!638447)) (h!74230 s!7408)))))

(declare-fun b!7030819 () Bool)

(assert (=> b!7030819 (= e!4226629 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638447 () Bool)

(assert (=> bm!638447 (= call!638447 call!638451)))

(declare-fun b!7030820 () Bool)

(assert (=> b!7030820 (= e!4226625 call!638452)))

(declare-fun b!7030821 () Bool)

(assert (=> b!7030821 (= e!4226627 e!4226626)))

(assert (=> b!7030821 (= c!1307511 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517592))))))

(assert (= (and d!2192957 c!1307513) b!7030816))

(assert (= (and d!2192957 (not c!1307513)) b!7030821))

(assert (= (and b!7030821 c!1307511) b!7030815))

(assert (= (and b!7030821 (not c!1307511)) b!7030817))

(assert (= (and b!7030817 res!2870079) b!7030812))

(assert (= (and b!7030817 c!1307512) b!7030814))

(assert (= (and b!7030817 (not c!1307512)) b!7030813))

(assert (= (and b!7030813 c!1307515) b!7030820))

(assert (= (and b!7030813 (not c!1307515)) b!7030811))

(assert (= (and b!7030811 c!1307514) b!7030818))

(assert (= (and b!7030811 (not c!1307514)) b!7030819))

(assert (= (or b!7030820 b!7030818) bm!638447))

(assert (= (or b!7030820 b!7030818) bm!638442))

(assert (= (or b!7030814 bm!638442) bm!638445))

(assert (= (or b!7030814 bm!638447) bm!638444))

(assert (= (or b!7030815 b!7030814) bm!638443))

(assert (= (or b!7030815 bm!638445) bm!638446))

(declare-fun m!7736464 () Bool)

(assert (=> bm!638444 m!7736464))

(declare-fun m!7736466 () Bool)

(assert (=> b!7030812 m!7736466))

(declare-fun m!7736468 () Bool)

(assert (=> bm!638443 m!7736468))

(declare-fun m!7736470 () Bool)

(assert (=> bm!638446 m!7736470))

(declare-fun m!7736472 () Bool)

(assert (=> b!7030816 m!7736472))

(assert (=> bm!638410 d!2192957))

(assert (=> d!2192789 d!2192815))

(declare-fun d!2192959 () Bool)

(assert (=> d!2192959 (= (flatMap!2406 lt!2517591 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517613))))

(assert (=> d!2192959 true))

(declare-fun _$13!4464 () Unit!161586)

(assert (=> d!2192959 (= (choose!53203 lt!2517591 lt!2517613 lambda!414256) _$13!4464)))

(declare-fun b_lambda!266215 () Bool)

(assert (=> (not b_lambda!266215) (not d!2192959)))

(declare-fun bs!1869988 () Bool)

(assert (= bs!1869988 d!2192959))

(assert (=> bs!1869988 m!7735704))

(assert (=> bs!1869988 m!7736076))

(assert (=> d!2192789 d!2192959))

(declare-fun d!2192961 () Bool)

(assert (=> d!2192961 (= (isEmpty!39526 (_2!37335 lt!2517607)) ((_ is Nil!67782) (_2!37335 lt!2517607)))))

(assert (=> d!2192783 d!2192961))

(declare-fun d!2192963 () Bool)

(declare-fun c!1307518 () Bool)

(assert (=> d!2192963 (= c!1307518 ((_ is Nil!67781) lt!2517717))))

(declare-fun e!4226635 () (InoxSet Regex!17459))

(assert (=> d!2192963 (= (content!13521 lt!2517717) e!4226635)))

(declare-fun b!7030829 () Bool)

(assert (=> b!7030829 (= e!4226635 ((as const (Array Regex!17459 Bool)) false))))

(declare-fun b!7030830 () Bool)

(assert (=> b!7030830 (= e!4226635 ((_ map or) (store ((as const (Array Regex!17459 Bool)) false) (h!74229 lt!2517717) true) (content!13521 (t!381668 lt!2517717))))))

(assert (= (and d!2192963 c!1307518) b!7030829))

(assert (= (and d!2192963 (not c!1307518)) b!7030830))

(declare-fun m!7736476 () Bool)

(assert (=> b!7030830 m!7736476))

(declare-fun m!7736478 () Bool)

(assert (=> b!7030830 m!7736478))

(assert (=> d!2192859 d!2192963))

(declare-fun d!2192967 () Bool)

(declare-fun c!1307519 () Bool)

(assert (=> d!2192967 (= c!1307519 ((_ is Nil!67781) lt!2517605))))

(declare-fun e!4226636 () (InoxSet Regex!17459))

(assert (=> d!2192967 (= (content!13521 lt!2517605) e!4226636)))

(declare-fun b!7030831 () Bool)

(assert (=> b!7030831 (= e!4226636 ((as const (Array Regex!17459 Bool)) false))))

(declare-fun b!7030832 () Bool)

(assert (=> b!7030832 (= e!4226636 ((_ map or) (store ((as const (Array Regex!17459 Bool)) false) (h!74229 lt!2517605) true) (content!13521 (t!381668 lt!2517605))))))

(assert (= (and d!2192967 c!1307519) b!7030831))

(assert (= (and d!2192967 (not c!1307519)) b!7030832))

(declare-fun m!7736480 () Bool)

(assert (=> b!7030832 m!7736480))

(declare-fun m!7736482 () Bool)

(assert (=> b!7030832 m!7736482))

(assert (=> d!2192859 d!2192967))

(declare-fun d!2192969 () Bool)

(declare-fun c!1307520 () Bool)

(assert (=> d!2192969 (= c!1307520 ((_ is Nil!67781) (exprs!6955 ct2!306)))))

(declare-fun e!4226637 () (InoxSet Regex!17459))

(assert (=> d!2192969 (= (content!13521 (exprs!6955 ct2!306)) e!4226637)))

(declare-fun b!7030833 () Bool)

(assert (=> b!7030833 (= e!4226637 ((as const (Array Regex!17459 Bool)) false))))

(declare-fun b!7030834 () Bool)

(assert (=> b!7030834 (= e!4226637 ((_ map or) (store ((as const (Array Regex!17459 Bool)) false) (h!74229 (exprs!6955 ct2!306)) true) (content!13521 (t!381668 (exprs!6955 ct2!306)))))))

(assert (= (and d!2192969 c!1307520) b!7030833))

(assert (= (and d!2192969 (not c!1307520)) b!7030834))

(declare-fun m!7736484 () Bool)

(assert (=> b!7030834 m!7736484))

(declare-fun m!7736486 () Bool)

(assert (=> b!7030834 m!7736486))

(assert (=> d!2192859 d!2192969))

(declare-fun d!2192971 () Bool)

(declare-fun res!2870087 () Bool)

(declare-fun e!4226642 () Bool)

(assert (=> d!2192971 (=> res!2870087 e!4226642)))

(assert (=> d!2192971 (= res!2870087 ((_ is Nil!67783) lt!2517567))))

(assert (=> d!2192971 (= (forall!16370 lt!2517567 lambda!414272) e!4226642)))

(declare-fun b!7030839 () Bool)

(declare-fun e!4226643 () Bool)

(assert (=> b!7030839 (= e!4226642 e!4226643)))

(declare-fun res!2870088 () Bool)

(assert (=> b!7030839 (=> (not res!2870088) (not e!4226643))))

(assert (=> b!7030839 (= res!2870088 (dynLambda!27359 lambda!414272 (h!74231 lt!2517567)))))

(declare-fun b!7030840 () Bool)

(assert (=> b!7030840 (= e!4226643 (forall!16370 (t!381670 lt!2517567) lambda!414272))))

(assert (= (and d!2192971 (not res!2870087)) b!7030839))

(assert (= (and b!7030839 res!2870088) b!7030840))

(declare-fun b_lambda!266217 () Bool)

(assert (=> (not b_lambda!266217) (not b!7030839)))

(declare-fun m!7736488 () Bool)

(assert (=> b!7030839 m!7736488))

(declare-fun m!7736490 () Bool)

(assert (=> b!7030840 m!7736490))

(assert (=> d!2192771 d!2192971))

(declare-fun d!2192973 () Bool)

(declare-fun lt!2517752 () Int)

(assert (=> d!2192973 (>= lt!2517752 0)))

(declare-fun e!4226646 () Int)

(assert (=> d!2192973 (= lt!2517752 e!4226646)))

(declare-fun c!1307525 () Bool)

(assert (=> d!2192973 (= c!1307525 ((_ is Nil!67781) lt!2517725))))

(assert (=> d!2192973 (= (size!41054 lt!2517725) lt!2517752)))

(declare-fun b!7030845 () Bool)

(assert (=> b!7030845 (= e!4226646 0)))

(declare-fun b!7030846 () Bool)

(assert (=> b!7030846 (= e!4226646 (+ 1 (size!41054 (t!381668 lt!2517725))))))

(assert (= (and d!2192973 c!1307525) b!7030845))

(assert (= (and d!2192973 (not c!1307525)) b!7030846))

(declare-fun m!7736496 () Bool)

(assert (=> b!7030846 m!7736496))

(assert (=> b!7030701 d!2192973))

(declare-fun d!2192979 () Bool)

(declare-fun lt!2517753 () Int)

(assert (=> d!2192979 (>= lt!2517753 0)))

(declare-fun e!4226647 () Int)

(assert (=> d!2192979 (= lt!2517753 e!4226647)))

(declare-fun c!1307526 () Bool)

(assert (=> d!2192979 (= c!1307526 ((_ is Nil!67781) (exprs!6955 lt!2517579)))))

(assert (=> d!2192979 (= (size!41054 (exprs!6955 lt!2517579)) lt!2517753)))

(declare-fun b!7030847 () Bool)

(assert (=> b!7030847 (= e!4226647 0)))

(declare-fun b!7030848 () Bool)

(assert (=> b!7030848 (= e!4226647 (+ 1 (size!41054 (t!381668 (exprs!6955 lt!2517579)))))))

(assert (= (and d!2192979 c!1307526) b!7030847))

(assert (= (and d!2192979 (not c!1307526)) b!7030848))

(declare-fun m!7736498 () Bool)

(assert (=> b!7030848 m!7736498))

(assert (=> b!7030701 d!2192979))

(declare-fun d!2192981 () Bool)

(declare-fun lt!2517754 () Int)

(assert (=> d!2192981 (>= lt!2517754 0)))

(declare-fun e!4226648 () Int)

(assert (=> d!2192981 (= lt!2517754 e!4226648)))

(declare-fun c!1307527 () Bool)

(assert (=> d!2192981 (= c!1307527 ((_ is Nil!67781) (exprs!6955 ct2!306)))))

(assert (=> d!2192981 (= (size!41054 (exprs!6955 ct2!306)) lt!2517754)))

(declare-fun b!7030849 () Bool)

(assert (=> b!7030849 (= e!4226648 0)))

(declare-fun b!7030850 () Bool)

(assert (=> b!7030850 (= e!4226648 (+ 1 (size!41054 (t!381668 (exprs!6955 ct2!306)))))))

(assert (= (and d!2192981 c!1307527) b!7030849))

(assert (= (and d!2192981 (not c!1307527)) b!7030850))

(declare-fun m!7736500 () Bool)

(assert (=> b!7030850 m!7736500))

(assert (=> b!7030701 d!2192981))

(declare-fun b!7030854 () Bool)

(declare-fun e!4226649 () Bool)

(declare-fun lt!2517755 () List!67906)

(assert (=> b!7030854 (= e!4226649 (or (not (= (_2!37335 lt!2517607) Nil!67782)) (= lt!2517755 (t!381669 (_1!37335 lt!2517607)))))))

(declare-fun b!7030851 () Bool)

(declare-fun e!4226650 () List!67906)

(assert (=> b!7030851 (= e!4226650 (_2!37335 lt!2517607))))

(declare-fun d!2192983 () Bool)

(assert (=> d!2192983 e!4226649))

(declare-fun res!2870089 () Bool)

(assert (=> d!2192983 (=> (not res!2870089) (not e!4226649))))

(assert (=> d!2192983 (= res!2870089 (= (content!13522 lt!2517755) ((_ map or) (content!13522 (t!381669 (_1!37335 lt!2517607))) (content!13522 (_2!37335 lt!2517607)))))))

(assert (=> d!2192983 (= lt!2517755 e!4226650)))

(declare-fun c!1307528 () Bool)

(assert (=> d!2192983 (= c!1307528 ((_ is Nil!67782) (t!381669 (_1!37335 lt!2517607))))))

(assert (=> d!2192983 (= (++!15499 (t!381669 (_1!37335 lt!2517607)) (_2!37335 lt!2517607)) lt!2517755)))

(declare-fun b!7030853 () Bool)

(declare-fun res!2870090 () Bool)

(assert (=> b!7030853 (=> (not res!2870090) (not e!4226649))))

(assert (=> b!7030853 (= res!2870090 (= (size!41055 lt!2517755) (+ (size!41055 (t!381669 (_1!37335 lt!2517607))) (size!41055 (_2!37335 lt!2517607)))))))

(declare-fun b!7030852 () Bool)

(assert (=> b!7030852 (= e!4226650 (Cons!67782 (h!74230 (t!381669 (_1!37335 lt!2517607))) (++!15499 (t!381669 (t!381669 (_1!37335 lt!2517607))) (_2!37335 lt!2517607))))))

(assert (= (and d!2192983 c!1307528) b!7030851))

(assert (= (and d!2192983 (not c!1307528)) b!7030852))

(assert (= (and d!2192983 res!2870089) b!7030853))

(assert (= (and b!7030853 res!2870090) b!7030854))

(declare-fun m!7736502 () Bool)

(assert (=> d!2192983 m!7736502))

(declare-fun m!7736504 () Bool)

(assert (=> d!2192983 m!7736504))

(assert (=> d!2192983 m!7736256))

(declare-fun m!7736506 () Bool)

(assert (=> b!7030853 m!7736506))

(declare-fun m!7736508 () Bool)

(assert (=> b!7030853 m!7736508))

(assert (=> b!7030853 m!7736262))

(declare-fun m!7736510 () Bool)

(assert (=> b!7030852 m!7736510))

(assert (=> b!7030696 d!2192983))

(declare-fun d!2192985 () Bool)

(declare-fun c!1307529 () Bool)

(assert (=> d!2192985 (= c!1307529 ((_ is Nil!67781) lt!2517725))))

(declare-fun e!4226651 () (InoxSet Regex!17459))

(assert (=> d!2192985 (= (content!13521 lt!2517725) e!4226651)))

(declare-fun b!7030855 () Bool)

(assert (=> b!7030855 (= e!4226651 ((as const (Array Regex!17459 Bool)) false))))

(declare-fun b!7030856 () Bool)

(assert (=> b!7030856 (= e!4226651 ((_ map or) (store ((as const (Array Regex!17459 Bool)) false) (h!74229 lt!2517725) true) (content!13521 (t!381668 lt!2517725))))))

(assert (= (and d!2192985 c!1307529) b!7030855))

(assert (= (and d!2192985 (not c!1307529)) b!7030856))

(declare-fun m!7736512 () Bool)

(assert (=> b!7030856 m!7736512))

(declare-fun m!7736514 () Bool)

(assert (=> b!7030856 m!7736514))

(assert (=> d!2192873 d!2192985))

(declare-fun d!2192989 () Bool)

(declare-fun c!1307532 () Bool)

(assert (=> d!2192989 (= c!1307532 ((_ is Nil!67781) (exprs!6955 lt!2517579)))))

(declare-fun e!4226655 () (InoxSet Regex!17459))

(assert (=> d!2192989 (= (content!13521 (exprs!6955 lt!2517579)) e!4226655)))

(declare-fun b!7030862 () Bool)

(assert (=> b!7030862 (= e!4226655 ((as const (Array Regex!17459 Bool)) false))))

(declare-fun b!7030863 () Bool)

(assert (=> b!7030863 (= e!4226655 ((_ map or) (store ((as const (Array Regex!17459 Bool)) false) (h!74229 (exprs!6955 lt!2517579)) true) (content!13521 (t!381668 (exprs!6955 lt!2517579)))))))

(assert (= (and d!2192989 c!1307532) b!7030862))

(assert (= (and d!2192989 (not c!1307532)) b!7030863))

(declare-fun m!7736516 () Bool)

(assert (=> b!7030863 m!7736516))

(declare-fun m!7736518 () Bool)

(assert (=> b!7030863 m!7736518))

(assert (=> d!2192873 d!2192989))

(assert (=> d!2192873 d!2192969))

(assert (=> d!2192895 d!2192955))

(assert (=> d!2192861 d!2192955))

(declare-fun d!2192991 () Bool)

(declare-fun c!1307533 () Bool)

(assert (=> d!2192991 (= c!1307533 (isEmpty!39526 (tail!13543 s!7408)))))

(declare-fun e!4226656 () Bool)

(assert (=> d!2192991 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517572 (head!14256 s!7408)) (tail!13543 s!7408)) e!4226656)))

(declare-fun b!7030864 () Bool)

(assert (=> b!7030864 (= e!4226656 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517572 (head!14256 s!7408))))))

(declare-fun b!7030865 () Bool)

(assert (=> b!7030865 (= e!4226656 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517572 (head!14256 s!7408)) (head!14256 (tail!13543 s!7408))) (tail!13543 (tail!13543 s!7408))))))

(assert (= (and d!2192991 c!1307533) b!7030864))

(assert (= (and d!2192991 (not c!1307533)) b!7030865))

(assert (=> d!2192991 m!7736024))

(assert (=> d!2192991 m!7736440))

(assert (=> b!7030864 m!7736356))

(declare-fun m!7736520 () Bool)

(assert (=> b!7030864 m!7736520))

(assert (=> b!7030865 m!7736024))

(assert (=> b!7030865 m!7736444))

(assert (=> b!7030865 m!7736356))

(assert (=> b!7030865 m!7736444))

(declare-fun m!7736522 () Bool)

(assert (=> b!7030865 m!7736522))

(assert (=> b!7030865 m!7736024))

(assert (=> b!7030865 m!7736448))

(assert (=> b!7030865 m!7736522))

(assert (=> b!7030865 m!7736448))

(declare-fun m!7736524 () Bool)

(assert (=> b!7030865 m!7736524))

(assert (=> b!7030742 d!2192991))

(declare-fun bs!1870000 () Bool)

(declare-fun d!2192993 () Bool)

(assert (= bs!1870000 (and d!2192993 d!2192947)))

(declare-fun lambda!414302 () Int)

(assert (=> bs!1870000 (= lambda!414302 lambda!414297)))

(declare-fun bs!1870001 () Bool)

(assert (= bs!1870001 (and d!2192993 d!2192927)))

(assert (=> bs!1870001 (= (= (head!14256 s!7408) (head!14256 (_2!37335 lt!2517607))) (= lambda!414302 lambda!414296))))

(declare-fun bs!1870002 () Bool)

(assert (= bs!1870002 (and d!2192993 b!7030364)))

(assert (=> bs!1870002 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414302 lambda!414256))))

(declare-fun bs!1870003 () Bool)

(assert (= bs!1870003 (and d!2192993 d!2192797)))

(assert (=> bs!1870003 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414302 lambda!414279))))

(declare-fun bs!1870004 () Bool)

(assert (= bs!1870004 (and d!2192993 d!2192891)))

(assert (=> bs!1870004 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414302 lambda!414289))))

(assert (=> d!2192993 true))

(assert (=> d!2192993 (= (derivationStepZipper!2915 lt!2517572 (head!14256 s!7408)) (flatMap!2406 lt!2517572 lambda!414302))))

(declare-fun bs!1870005 () Bool)

(assert (= bs!1870005 d!2192993))

(declare-fun m!7736532 () Bool)

(assert (=> bs!1870005 m!7736532))

(assert (=> b!7030742 d!2192993))

(assert (=> b!7030742 d!2192951))

(assert (=> b!7030742 d!2192953))

(declare-fun d!2192997 () Bool)

(declare-fun lt!2517757 () Int)

(assert (=> d!2192997 (>= lt!2517757 0)))

(declare-fun e!4226659 () Int)

(assert (=> d!2192997 (= lt!2517757 e!4226659)))

(declare-fun c!1307535 () Bool)

(assert (=> d!2192997 (= c!1307535 ((_ is Nil!67781) lt!2517717))))

(assert (=> d!2192997 (= (size!41054 lt!2517717) lt!2517757)))

(declare-fun b!7030870 () Bool)

(assert (=> b!7030870 (= e!4226659 0)))

(declare-fun b!7030871 () Bool)

(assert (=> b!7030871 (= e!4226659 (+ 1 (size!41054 (t!381668 lt!2517717))))))

(assert (= (and d!2192997 c!1307535) b!7030870))

(assert (= (and d!2192997 (not c!1307535)) b!7030871))

(declare-fun m!7736534 () Bool)

(assert (=> b!7030871 m!7736534))

(assert (=> b!7030650 d!2192997))

(declare-fun d!2192999 () Bool)

(declare-fun lt!2517758 () Int)

(assert (=> d!2192999 (>= lt!2517758 0)))

(declare-fun e!4226660 () Int)

(assert (=> d!2192999 (= lt!2517758 e!4226660)))

(declare-fun c!1307536 () Bool)

(assert (=> d!2192999 (= c!1307536 ((_ is Nil!67781) lt!2517605))))

(assert (=> d!2192999 (= (size!41054 lt!2517605) lt!2517758)))

(declare-fun b!7030872 () Bool)

(assert (=> b!7030872 (= e!4226660 0)))

(declare-fun b!7030873 () Bool)

(assert (=> b!7030873 (= e!4226660 (+ 1 (size!41054 (t!381668 lt!2517605))))))

(assert (= (and d!2192999 c!1307536) b!7030872))

(assert (= (and d!2192999 (not c!1307536)) b!7030873))

(declare-fun m!7736536 () Bool)

(assert (=> b!7030873 m!7736536))

(assert (=> b!7030650 d!2192999))

(assert (=> b!7030650 d!2192981))

(declare-fun bm!638455 () Bool)

(declare-fun c!1307548 () Bool)

(declare-fun call!638460 () Int)

(declare-fun c!1307547 () Bool)

(assert (=> bm!638455 (= call!638460 (regexDepthTotal!298 (ite c!1307548 (reg!17788 (h!74229 (exprs!6955 lt!2517592))) (ite c!1307547 (regOne!35431 (h!74229 (exprs!6955 lt!2517592))) (regTwo!35430 (h!74229 (exprs!6955 lt!2517592)))))))))

(declare-fun b!7030890 () Bool)

(declare-fun e!4226671 () Int)

(declare-fun call!638461 () Int)

(declare-fun call!638462 () Int)

(assert (=> b!7030890 (= e!4226671 (+ 1 call!638461 call!638462))))

(declare-fun d!2193001 () Bool)

(declare-fun lt!2517761 () Int)

(assert (=> d!2193001 (> lt!2517761 0)))

(declare-fun e!4226670 () Int)

(assert (=> d!2193001 (= lt!2517761 e!4226670)))

(declare-fun c!1307546 () Bool)

(assert (=> d!2193001 (= c!1307546 ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517592))))))

(assert (=> d!2193001 (= (regexDepthTotal!298 (h!74229 (exprs!6955 lt!2517592))) lt!2517761)))

(declare-fun b!7030891 () Bool)

(declare-fun e!4226669 () Int)

(assert (=> b!7030891 (= e!4226669 e!4226671)))

(declare-fun c!1307545 () Bool)

(assert (=> b!7030891 (= c!1307545 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun b!7030892 () Bool)

(assert (=> b!7030892 (= e!4226669 (+ 1 call!638462 call!638461))))

(declare-fun b!7030893 () Bool)

(declare-fun e!4226672 () Int)

(assert (=> b!7030893 (= e!4226670 e!4226672)))

(assert (=> b!7030893 (= c!1307548 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun b!7030894 () Bool)

(assert (=> b!7030894 (= e!4226672 (+ 1 call!638460))))

(declare-fun b!7030895 () Bool)

(assert (=> b!7030895 (= e!4226671 1)))

(declare-fun bm!638456 () Bool)

(assert (=> bm!638456 (= call!638461 (regexDepthTotal!298 (ite c!1307547 (regTwo!35431 (h!74229 (exprs!6955 lt!2517592))) (regOne!35430 (h!74229 (exprs!6955 lt!2517592))))))))

(declare-fun bm!638457 () Bool)

(assert (=> bm!638457 (= call!638462 call!638460)))

(declare-fun b!7030896 () Bool)

(assert (=> b!7030896 (= e!4226670 1)))

(declare-fun b!7030897 () Bool)

(assert (=> b!7030897 (= c!1307547 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517592))))))

(assert (=> b!7030897 (= e!4226672 e!4226669)))

(assert (= (and d!2193001 c!1307546) b!7030896))

(assert (= (and d!2193001 (not c!1307546)) b!7030893))

(assert (= (and b!7030893 c!1307548) b!7030894))

(assert (= (and b!7030893 (not c!1307548)) b!7030897))

(assert (= (and b!7030897 c!1307547) b!7030892))

(assert (= (and b!7030897 (not c!1307547)) b!7030891))

(assert (= (and b!7030891 c!1307545) b!7030890))

(assert (= (and b!7030891 (not c!1307545)) b!7030895))

(assert (= (or b!7030892 b!7030890) bm!638456))

(assert (= (or b!7030892 b!7030890) bm!638457))

(assert (= (or b!7030894 bm!638457) bm!638455))

(declare-fun m!7736554 () Bool)

(assert (=> bm!638455 m!7736554))

(declare-fun m!7736556 () Bool)

(assert (=> bm!638456 m!7736556))

(assert (=> b!7030619 d!2193001))

(declare-fun d!2193009 () Bool)

(declare-fun lt!2517762 () Int)

(assert (=> d!2193009 (>= lt!2517762 0)))

(declare-fun e!4226673 () Int)

(assert (=> d!2193009 (= lt!2517762 e!4226673)))

(declare-fun c!1307549 () Bool)

(assert (=> d!2193009 (= c!1307549 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592))))))))

(assert (=> d!2193009 (= (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))) lt!2517762)))

(declare-fun b!7030898 () Bool)

(assert (=> b!7030898 (= e!4226673 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))))))))))

(declare-fun b!7030899 () Bool)

(assert (=> b!7030899 (= e!4226673 1)))

(assert (= (and d!2193009 c!1307549) b!7030898))

(assert (= (and d!2193009 (not c!1307549)) b!7030899))

(declare-fun m!7736558 () Bool)

(assert (=> b!7030898 m!7736558))

(declare-fun m!7736560 () Bool)

(assert (=> b!7030898 m!7736560))

(assert (=> b!7030619 d!2193009))

(declare-fun d!2193011 () Bool)

(declare-fun c!1307552 () Bool)

(assert (=> d!2193011 (= c!1307552 (isEmpty!39526 (tail!13543 s!7408)))))

(declare-fun e!4226674 () Bool)

(assert (=> d!2193011 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517591 (head!14256 s!7408)) (tail!13543 s!7408)) e!4226674)))

(declare-fun b!7030900 () Bool)

(assert (=> b!7030900 (= e!4226674 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517591 (head!14256 s!7408))))))

(declare-fun b!7030901 () Bool)

(assert (=> b!7030901 (= e!4226674 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517591 (head!14256 s!7408)) (head!14256 (tail!13543 s!7408))) (tail!13543 (tail!13543 s!7408))))))

(assert (= (and d!2193011 c!1307552) b!7030900))

(assert (= (and d!2193011 (not c!1307552)) b!7030901))

(assert (=> d!2193011 m!7736024))

(assert (=> d!2193011 m!7736440))

(assert (=> b!7030900 m!7736234))

(declare-fun m!7736562 () Bool)

(assert (=> b!7030900 m!7736562))

(assert (=> b!7030901 m!7736024))

(assert (=> b!7030901 m!7736444))

(assert (=> b!7030901 m!7736234))

(assert (=> b!7030901 m!7736444))

(declare-fun m!7736564 () Bool)

(assert (=> b!7030901 m!7736564))

(assert (=> b!7030901 m!7736024))

(assert (=> b!7030901 m!7736448))

(assert (=> b!7030901 m!7736564))

(assert (=> b!7030901 m!7736448))

(declare-fun m!7736566 () Bool)

(assert (=> b!7030901 m!7736566))

(assert (=> b!7030653 d!2193011))

(declare-fun bs!1870013 () Bool)

(declare-fun d!2193013 () Bool)

(assert (= bs!1870013 (and d!2193013 d!2192947)))

(declare-fun lambda!414304 () Int)

(assert (=> bs!1870013 (= lambda!414304 lambda!414297)))

(declare-fun bs!1870014 () Bool)

(assert (= bs!1870014 (and d!2193013 d!2192927)))

(assert (=> bs!1870014 (= (= (head!14256 s!7408) (head!14256 (_2!37335 lt!2517607))) (= lambda!414304 lambda!414296))))

(declare-fun bs!1870015 () Bool)

(assert (= bs!1870015 (and d!2193013 b!7030364)))

(assert (=> bs!1870015 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414304 lambda!414256))))

(declare-fun bs!1870016 () Bool)

(assert (= bs!1870016 (and d!2193013 d!2192993)))

(assert (=> bs!1870016 (= lambda!414304 lambda!414302)))

(declare-fun bs!1870017 () Bool)

(assert (= bs!1870017 (and d!2193013 d!2192797)))

(assert (=> bs!1870017 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414304 lambda!414279))))

(declare-fun bs!1870018 () Bool)

(assert (= bs!1870018 (and d!2193013 d!2192891)))

(assert (=> bs!1870018 (= (= (head!14256 s!7408) (h!74230 s!7408)) (= lambda!414304 lambda!414289))))

(assert (=> d!2193013 true))

(assert (=> d!2193013 (= (derivationStepZipper!2915 lt!2517591 (head!14256 s!7408)) (flatMap!2406 lt!2517591 lambda!414304))))

(declare-fun bs!1870019 () Bool)

(assert (= bs!1870019 d!2193013))

(declare-fun m!7736568 () Bool)

(assert (=> bs!1870019 m!7736568))

(assert (=> b!7030653 d!2193013))

(assert (=> b!7030653 d!2192951))

(assert (=> b!7030653 d!2192953))

(declare-fun bs!1870023 () Bool)

(declare-fun d!2193015 () Bool)

(assert (= bs!1870023 (and d!2193015 b!7030377)))

(declare-fun lambda!414310 () Int)

(assert (=> bs!1870023 (not (= lambda!414310 lambda!414253))))

(declare-fun bs!1870025 () Bool)

(assert (= bs!1870025 (and d!2193015 b!7030376)))

(assert (=> bs!1870025 (= lambda!414310 lambda!414257)))

(declare-fun bs!1870026 () Bool)

(assert (= bs!1870026 (and d!2193015 d!2192771)))

(assert (=> bs!1870026 (not (= lambda!414310 lambda!414272))))

(declare-fun bs!1870028 () Bool)

(assert (= bs!1870028 (and d!2193015 d!2192775)))

(assert (=> bs!1870028 (not (= lambda!414310 lambda!414275))))

(assert (=> d!2193015 (= (nullableZipper!2575 lt!2517599) (exists!3380 lt!2517599 lambda!414310))))

(declare-fun bs!1870030 () Bool)

(assert (= bs!1870030 d!2193015))

(declare-fun m!7736570 () Bool)

(assert (=> bs!1870030 m!7736570))

(assert (=> b!7030463 d!2193015))

(declare-fun c!1307557 () Bool)

(declare-fun c!1307558 () Bool)

(declare-fun bm!638458 () Bool)

(declare-fun call!638463 () Int)

(assert (=> bm!638458 (= call!638463 (regexDepthTotal!298 (ite c!1307558 (reg!17788 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307557 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regTwo!35430 (h!74229 (exprs!6955 lt!2517579)))))))))

(declare-fun b!7030902 () Bool)

(declare-fun e!4226677 () Int)

(declare-fun call!638464 () Int)

(declare-fun call!638465 () Int)

(assert (=> b!7030902 (= e!4226677 (+ 1 call!638464 call!638465))))

(declare-fun d!2193017 () Bool)

(declare-fun lt!2517763 () Int)

(assert (=> d!2193017 (> lt!2517763 0)))

(declare-fun e!4226676 () Int)

(assert (=> d!2193017 (= lt!2517763 e!4226676)))

(declare-fun c!1307556 () Bool)

(assert (=> d!2193017 (= c!1307556 ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517579))))))

(assert (=> d!2193017 (= (regexDepthTotal!298 (h!74229 (exprs!6955 lt!2517579))) lt!2517763)))

(declare-fun b!7030903 () Bool)

(declare-fun e!4226675 () Int)

(assert (=> b!7030903 (= e!4226675 e!4226677)))

(declare-fun c!1307555 () Bool)

(assert (=> b!7030903 (= c!1307555 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun b!7030904 () Bool)

(assert (=> b!7030904 (= e!4226675 (+ 1 call!638465 call!638464))))

(declare-fun b!7030905 () Bool)

(declare-fun e!4226678 () Int)

(assert (=> b!7030905 (= e!4226676 e!4226678)))

(assert (=> b!7030905 (= c!1307558 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun b!7030906 () Bool)

(assert (=> b!7030906 (= e!4226678 (+ 1 call!638463))))

(declare-fun b!7030907 () Bool)

(assert (=> b!7030907 (= e!4226677 1)))

(declare-fun bm!638459 () Bool)

(assert (=> bm!638459 (= call!638464 (regexDepthTotal!298 (ite c!1307557 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun bm!638460 () Bool)

(assert (=> bm!638460 (= call!638465 call!638463)))

(declare-fun b!7030908 () Bool)

(assert (=> b!7030908 (= e!4226676 1)))

(declare-fun b!7030909 () Bool)

(assert (=> b!7030909 (= c!1307557 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517579))))))

(assert (=> b!7030909 (= e!4226678 e!4226675)))

(assert (= (and d!2193017 c!1307556) b!7030908))

(assert (= (and d!2193017 (not c!1307556)) b!7030905))

(assert (= (and b!7030905 c!1307558) b!7030906))

(assert (= (and b!7030905 (not c!1307558)) b!7030909))

(assert (= (and b!7030909 c!1307557) b!7030904))

(assert (= (and b!7030909 (not c!1307557)) b!7030903))

(assert (= (and b!7030903 c!1307555) b!7030902))

(assert (= (and b!7030903 (not c!1307555)) b!7030907))

(assert (= (or b!7030904 b!7030902) bm!638459))

(assert (= (or b!7030904 b!7030902) bm!638460))

(assert (= (or b!7030906 bm!638460) bm!638458))

(declare-fun m!7736574 () Bool)

(assert (=> bm!638458 m!7736574))

(declare-fun m!7736576 () Bool)

(assert (=> bm!638459 m!7736576))

(assert (=> b!7030633 d!2193017))

(declare-fun d!2193021 () Bool)

(declare-fun lt!2517764 () Int)

(assert (=> d!2193021 (>= lt!2517764 0)))

(declare-fun e!4226680 () Int)

(assert (=> d!2193021 (= lt!2517764 e!4226680)))

(declare-fun c!1307560 () Bool)

(assert (=> d!2193021 (= c!1307560 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517579))))))))

(assert (=> d!2193021 (= (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 lt!2517579)))) lt!2517764)))

(declare-fun b!7030912 () Bool)

(assert (=> b!7030912 (= e!4226680 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517579)))))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517579)))))))))))

(declare-fun b!7030913 () Bool)

(assert (=> b!7030913 (= e!4226680 1)))

(assert (= (and d!2193021 c!1307560) b!7030912))

(assert (= (and d!2193021 (not c!1307560)) b!7030913))

(declare-fun m!7736578 () Bool)

(assert (=> b!7030912 m!7736578))

(declare-fun m!7736580 () Bool)

(assert (=> b!7030912 m!7736580))

(assert (=> b!7030633 d!2193021))

(declare-fun d!2193023 () Bool)

(assert (=> d!2193023 (forall!16369 (++!15498 (exprs!6955 lt!2517592) (exprs!6955 ct2!306)) lambda!414255)))

(declare-fun lt!2517765 () Unit!161586)

(assert (=> d!2193023 (= lt!2517765 (choose!53199 (exprs!6955 lt!2517592) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> d!2193023 (forall!16369 (exprs!6955 lt!2517592) lambda!414255)))

(assert (=> d!2193023 (= (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517592) (exprs!6955 ct2!306) lambda!414255) lt!2517765)))

(declare-fun bs!1870033 () Bool)

(assert (= bs!1870033 d!2193023))

(assert (=> bs!1870033 m!7736368))

(assert (=> bs!1870033 m!7736368))

(declare-fun m!7736586 () Bool)

(assert (=> bs!1870033 m!7736586))

(declare-fun m!7736590 () Bool)

(assert (=> bs!1870033 m!7736590))

(declare-fun m!7736592 () Bool)

(assert (=> bs!1870033 m!7736592))

(assert (=> bs!1869973 d!2193023))

(declare-fun d!2193027 () Bool)

(declare-fun e!4226683 () Bool)

(assert (=> d!2193027 e!4226683))

(declare-fun res!2870095 () Bool)

(assert (=> d!2193027 (=> (not res!2870095) (not e!4226683))))

(declare-fun lt!2517766 () List!67905)

(assert (=> d!2193027 (= res!2870095 (= (content!13521 lt!2517766) ((_ map or) (content!13521 (exprs!6955 lt!2517592)) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4226681 () List!67905)

(assert (=> d!2193027 (= lt!2517766 e!4226681)))

(declare-fun c!1307562 () Bool)

(assert (=> d!2193027 (= c!1307562 ((_ is Nil!67781) (exprs!6955 lt!2517592)))))

(assert (=> d!2193027 (= (++!15498 (exprs!6955 lt!2517592) (exprs!6955 ct2!306)) lt!2517766)))

(declare-fun b!7030917 () Bool)

(assert (=> b!7030917 (= e!4226681 (Cons!67781 (h!74229 (exprs!6955 lt!2517592)) (++!15498 (t!381668 (exprs!6955 lt!2517592)) (exprs!6955 ct2!306))))))

(declare-fun b!7030918 () Bool)

(declare-fun res!2870094 () Bool)

(assert (=> b!7030918 (=> (not res!2870094) (not e!4226683))))

(assert (=> b!7030918 (= res!2870094 (= (size!41054 lt!2517766) (+ (size!41054 (exprs!6955 lt!2517592)) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7030919 () Bool)

(assert (=> b!7030919 (= e!4226683 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517766 (exprs!6955 lt!2517592))))))

(declare-fun b!7030916 () Bool)

(assert (=> b!7030916 (= e!4226681 (exprs!6955 ct2!306))))

(assert (= (and d!2193027 c!1307562) b!7030916))

(assert (= (and d!2193027 (not c!1307562)) b!7030917))

(assert (= (and d!2193027 res!2870095) b!7030918))

(assert (= (and b!7030918 res!2870094) b!7030919))

(declare-fun m!7736598 () Bool)

(assert (=> d!2193027 m!7736598))

(declare-fun m!7736600 () Bool)

(assert (=> d!2193027 m!7736600))

(assert (=> d!2193027 m!7736222))

(declare-fun m!7736602 () Bool)

(assert (=> b!7030917 m!7736602))

(declare-fun m!7736604 () Bool)

(assert (=> b!7030918 m!7736604))

(declare-fun m!7736606 () Bool)

(assert (=> b!7030918 m!7736606))

(assert (=> b!7030918 m!7736230))

(assert (=> bs!1869973 d!2193027))

(assert (=> d!2192737 d!2192923))

(declare-fun b!7030921 () Bool)

(declare-fun e!4226686 () Bool)

(assert (=> b!7030921 (= e!4226686 (nullable!7170 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582)))))))))

(declare-fun d!2193031 () Bool)

(declare-fun c!1307564 () Bool)

(assert (=> d!2193031 (= c!1307564 e!4226686)))

(declare-fun res!2870097 () Bool)

(assert (=> d!2193031 (=> (not res!2870097) (not e!4226686))))

(assert (=> d!2193031 (= res!2870097 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582))))))))

(declare-fun e!4226685 () (InoxSet Context!12910))

(assert (=> d!2193031 (= (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (h!74230 s!7408)) e!4226685)))

(declare-fun bm!638461 () Bool)

(declare-fun call!638466 () (InoxSet Context!12910))

(assert (=> bm!638461 (= call!638466 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582))))) (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582)))))) (h!74230 s!7408)))))

(declare-fun b!7030922 () Bool)

(declare-fun e!4226687 () (InoxSet Context!12910))

(assert (=> b!7030922 (= e!4226685 e!4226687)))

(declare-fun c!1307563 () Bool)

(assert (=> b!7030922 (= c!1307563 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582))))))))

(declare-fun b!7030923 () Bool)

(assert (=> b!7030923 (= e!4226687 call!638466)))

(declare-fun b!7030924 () Bool)

(assert (=> b!7030924 (= e!4226685 ((_ map or) call!638466 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582)))))) (h!74230 s!7408))))))

(declare-fun b!7030925 () Bool)

(assert (=> b!7030925 (= e!4226687 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2193031 res!2870097) b!7030921))

(assert (= (and d!2193031 c!1307564) b!7030924))

(assert (= (and d!2193031 (not c!1307564)) b!7030922))

(assert (= (and b!7030922 c!1307563) b!7030923))

(assert (= (and b!7030922 (not c!1307563)) b!7030925))

(assert (= (or b!7030924 b!7030923) bm!638461))

(declare-fun m!7736610 () Bool)

(assert (=> b!7030921 m!7736610))

(declare-fun m!7736612 () Bool)

(assert (=> bm!638461 m!7736612))

(declare-fun m!7736614 () Bool)

(assert (=> b!7030924 m!7736614))

(assert (=> b!7030739 d!2193031))

(declare-fun d!2193035 () Bool)

(declare-fun res!2870104 () Bool)

(declare-fun e!4226694 () Bool)

(assert (=> d!2193035 (=> res!2870104 e!4226694)))

(assert (=> d!2193035 (= res!2870104 ((_ is Nil!67783) lt!2517699))))

(assert (=> d!2193035 (= (noDuplicate!2623 lt!2517699) e!4226694)))

(declare-fun b!7030934 () Bool)

(declare-fun e!4226695 () Bool)

(assert (=> b!7030934 (= e!4226694 e!4226695)))

(declare-fun res!2870105 () Bool)

(assert (=> b!7030934 (=> (not res!2870105) (not e!4226695))))

(assert (=> b!7030934 (= res!2870105 (not (contains!20452 (t!381670 lt!2517699) (h!74231 lt!2517699))))))

(declare-fun b!7030935 () Bool)

(assert (=> b!7030935 (= e!4226695 (noDuplicate!2623 (t!381670 lt!2517699)))))

(assert (= (and d!2193035 (not res!2870104)) b!7030934))

(assert (= (and b!7030934 res!2870105) b!7030935))

(declare-fun m!7736632 () Bool)

(assert (=> b!7030934 m!7736632))

(declare-fun m!7736634 () Bool)

(assert (=> b!7030935 m!7736634))

(assert (=> d!2192823 d!2193035))

(declare-fun d!2193041 () Bool)

(declare-fun e!4226706 () Bool)

(assert (=> d!2193041 e!4226706))

(declare-fun res!2870115 () Bool)

(assert (=> d!2193041 (=> (not res!2870115) (not e!4226706))))

(declare-fun res!2870114 () List!67907)

(assert (=> d!2193041 (= res!2870115 (noDuplicate!2623 res!2870114))))

(declare-fun e!4226707 () Bool)

(assert (=> d!2193041 e!4226707))

(assert (=> d!2193041 (= (choose!53202 z1!570) res!2870114)))

(declare-fun b!7030947 () Bool)

(declare-fun e!4226708 () Bool)

(declare-fun tp!1936204 () Bool)

(assert (=> b!7030947 (= e!4226708 tp!1936204)))

(declare-fun tp!1936205 () Bool)

(declare-fun b!7030946 () Bool)

(assert (=> b!7030946 (= e!4226707 (and (inv!86506 (h!74231 res!2870114)) e!4226708 tp!1936205))))

(declare-fun b!7030948 () Bool)

(assert (=> b!7030948 (= e!4226706 (= (content!13520 res!2870114) z1!570))))

(assert (= b!7030946 b!7030947))

(assert (= (and d!2193041 ((_ is Cons!67783) res!2870114)) b!7030946))

(assert (= (and d!2193041 res!2870115) b!7030948))

(declare-fun m!7736636 () Bool)

(assert (=> d!2193041 m!7736636))

(declare-fun m!7736638 () Bool)

(assert (=> b!7030946 m!7736638))

(declare-fun m!7736640 () Bool)

(assert (=> b!7030948 m!7736640))

(assert (=> d!2192823 d!2193041))

(declare-fun bs!1870035 () Bool)

(declare-fun d!2193043 () Bool)

(assert (= bs!1870035 (and d!2193043 b!7030377)))

(declare-fun lambda!414311 () Int)

(assert (=> bs!1870035 (not (= lambda!414311 lambda!414253))))

(declare-fun bs!1870036 () Bool)

(assert (= bs!1870036 (and d!2193043 d!2192775)))

(assert (=> bs!1870036 (not (= lambda!414311 lambda!414275))))

(declare-fun bs!1870037 () Bool)

(assert (= bs!1870037 (and d!2193043 b!7030376)))

(assert (=> bs!1870037 (= lambda!414311 lambda!414257)))

(declare-fun bs!1870038 () Bool)

(assert (= bs!1870038 (and d!2193043 d!2192771)))

(assert (=> bs!1870038 (not (= lambda!414311 lambda!414272))))

(declare-fun bs!1870039 () Bool)

(assert (= bs!1870039 (and d!2193043 d!2193015)))

(assert (=> bs!1870039 (= lambda!414311 lambda!414310)))

(assert (=> d!2193043 (= (nullableZipper!2575 lt!2517573) (exists!3380 lt!2517573 lambda!414311))))

(declare-fun bs!1870040 () Bool)

(assert (= bs!1870040 d!2193043))

(declare-fun m!7736642 () Bool)

(assert (=> bs!1870040 m!7736642))

(assert (=> b!7030453 d!2193043))

(declare-fun d!2193045 () Bool)

(assert (=> d!2193045 (= (nullable!7170 (h!74229 (exprs!6955 lt!2517582))) (nullableFct!2723 (h!74229 (exprs!6955 lt!2517582))))))

(declare-fun bs!1870041 () Bool)

(assert (= bs!1870041 d!2193045))

(declare-fun m!7736644 () Bool)

(assert (=> bs!1870041 m!7736644))

(assert (=> b!7030736 d!2193045))

(declare-fun d!2193047 () Bool)

(declare-fun lt!2517769 () Int)

(assert (=> d!2193047 (>= lt!2517769 0)))

(declare-fun e!4226711 () Int)

(assert (=> d!2193047 (= lt!2517769 e!4226711)))

(declare-fun c!1307566 () Bool)

(assert (=> d!2193047 (= c!1307566 ((_ is Cons!67781) (exprs!6955 (h!74231 (Cons!67783 lt!2517592 Nil!67783)))))))

(assert (=> d!2193047 (= (contextDepthTotal!494 (h!74231 (Cons!67783 lt!2517592 Nil!67783))) lt!2517769)))

(declare-fun b!7030951 () Bool)

(assert (=> b!7030951 (= e!4226711 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 (h!74231 (Cons!67783 lt!2517592 Nil!67783))))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 (h!74231 (Cons!67783 lt!2517592 Nil!67783))))))))))

(declare-fun b!7030952 () Bool)

(assert (=> b!7030952 (= e!4226711 1)))

(assert (= (and d!2193047 c!1307566) b!7030951))

(assert (= (and d!2193047 (not c!1307566)) b!7030952))

(declare-fun m!7736648 () Bool)

(assert (=> b!7030951 m!7736648))

(declare-fun m!7736650 () Bool)

(assert (=> b!7030951 m!7736650))

(assert (=> b!7030430 d!2193047))

(declare-fun d!2193049 () Bool)

(declare-fun lt!2517770 () Int)

(assert (=> d!2193049 (>= lt!2517770 0)))

(declare-fun e!4226712 () Int)

(assert (=> d!2193049 (= lt!2517770 e!4226712)))

(declare-fun c!1307567 () Bool)

(assert (=> d!2193049 (= c!1307567 ((_ is Cons!67783) (t!381670 (Cons!67783 lt!2517592 Nil!67783))))))

(assert (=> d!2193049 (= (zipperDepthTotal!522 (t!381670 (Cons!67783 lt!2517592 Nil!67783))) lt!2517770)))

(declare-fun b!7030953 () Bool)

(assert (=> b!7030953 (= e!4226712 (+ (contextDepthTotal!494 (h!74231 (t!381670 (Cons!67783 lt!2517592 Nil!67783)))) (zipperDepthTotal!522 (t!381670 (t!381670 (Cons!67783 lt!2517592 Nil!67783))))))))

(declare-fun b!7030954 () Bool)

(assert (=> b!7030954 (= e!4226712 0)))

(assert (= (and d!2193049 c!1307567) b!7030953))

(assert (= (and d!2193049 (not c!1307567)) b!7030954))

(declare-fun m!7736654 () Bool)

(assert (=> b!7030953 m!7736654))

(declare-fun m!7736656 () Bool)

(assert (=> b!7030953 m!7736656))

(assert (=> b!7030430 d!2193049))

(declare-fun d!2193053 () Bool)

(declare-fun lt!2517773 () Int)

(assert (=> d!2193053 (>= lt!2517773 0)))

(declare-fun e!4226715 () Int)

(assert (=> d!2193053 (= lt!2517773 e!4226715)))

(declare-fun c!1307570 () Bool)

(assert (=> d!2193053 (= c!1307570 ((_ is Nil!67782) lt!2517723))))

(assert (=> d!2193053 (= (size!41055 lt!2517723) lt!2517773)))

(declare-fun b!7030959 () Bool)

(assert (=> b!7030959 (= e!4226715 0)))

(declare-fun b!7030960 () Bool)

(assert (=> b!7030960 (= e!4226715 (+ 1 (size!41055 (t!381669 lt!2517723))))))

(assert (= (and d!2193053 c!1307570) b!7030959))

(assert (= (and d!2193053 (not c!1307570)) b!7030960))

(declare-fun m!7736658 () Bool)

(assert (=> b!7030960 m!7736658))

(assert (=> b!7030697 d!2193053))

(declare-fun d!2193055 () Bool)

(declare-fun lt!2517774 () Int)

(assert (=> d!2193055 (>= lt!2517774 0)))

(declare-fun e!4226716 () Int)

(assert (=> d!2193055 (= lt!2517774 e!4226716)))

(declare-fun c!1307571 () Bool)

(assert (=> d!2193055 (= c!1307571 ((_ is Nil!67782) (_1!37335 lt!2517607)))))

(assert (=> d!2193055 (= (size!41055 (_1!37335 lt!2517607)) lt!2517774)))

(declare-fun b!7030961 () Bool)

(assert (=> b!7030961 (= e!4226716 0)))

(declare-fun b!7030962 () Bool)

(assert (=> b!7030962 (= e!4226716 (+ 1 (size!41055 (t!381669 (_1!37335 lt!2517607)))))))

(assert (= (and d!2193055 c!1307571) b!7030961))

(assert (= (and d!2193055 (not c!1307571)) b!7030962))

(assert (=> b!7030962 m!7736508))

(assert (=> b!7030697 d!2193055))

(declare-fun d!2193059 () Bool)

(declare-fun lt!2517775 () Int)

(assert (=> d!2193059 (>= lt!2517775 0)))

(declare-fun e!4226718 () Int)

(assert (=> d!2193059 (= lt!2517775 e!4226718)))

(declare-fun c!1307572 () Bool)

(assert (=> d!2193059 (= c!1307572 ((_ is Nil!67782) (_2!37335 lt!2517607)))))

(assert (=> d!2193059 (= (size!41055 (_2!37335 lt!2517607)) lt!2517775)))

(declare-fun b!7030963 () Bool)

(assert (=> b!7030963 (= e!4226718 0)))

(declare-fun b!7030964 () Bool)

(assert (=> b!7030964 (= e!4226718 (+ 1 (size!41055 (t!381669 (_2!37335 lt!2517607)))))))

(assert (= (and d!2193059 c!1307572) b!7030963))

(assert (= (and d!2193059 (not c!1307572)) b!7030964))

(declare-fun m!7736660 () Bool)

(assert (=> b!7030964 m!7736660))

(assert (=> b!7030697 d!2193059))

(declare-fun d!2193061 () Bool)

(declare-fun c!1307576 () Bool)

(assert (=> d!2193061 (= c!1307576 ((_ is Nil!67783) lt!2517680))))

(declare-fun e!4226724 () (InoxSet Context!12910))

(assert (=> d!2193061 (= (content!13520 lt!2517680) e!4226724)))

(declare-fun b!7030975 () Bool)

(assert (=> b!7030975 (= e!4226724 ((as const (Array Context!12910 Bool)) false))))

(declare-fun b!7030976 () Bool)

(assert (=> b!7030976 (= e!4226724 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) (h!74231 lt!2517680) true) (content!13520 (t!381670 lt!2517680))))))

(assert (= (and d!2193061 c!1307576) b!7030975))

(assert (= (and d!2193061 (not c!1307576)) b!7030976))

(declare-fun m!7736674 () Bool)

(assert (=> b!7030976 m!7736674))

(declare-fun m!7736676 () Bool)

(assert (=> b!7030976 m!7736676))

(assert (=> b!7030515 d!2193061))

(declare-fun d!2193067 () Bool)

(declare-fun e!4226731 () Bool)

(assert (=> d!2193067 e!4226731))

(declare-fun res!2870126 () Bool)

(assert (=> d!2193067 (=> (not res!2870126) (not e!4226731))))

(declare-fun a!13184 () Context!12910)

(assert (=> d!2193067 (= res!2870126 (= lt!2517565 (dynLambda!27362 lambda!414254 a!13184)))))

(declare-fun e!4226732 () Bool)

(assert (=> d!2193067 (and (inv!86506 a!13184) e!4226732)))

(assert (=> d!2193067 (= (choose!53211 z1!570 lambda!414254 lt!2517565) a!13184)))

(declare-fun b!7030984 () Bool)

(declare-fun tp!1936208 () Bool)

(assert (=> b!7030984 (= e!4226732 tp!1936208)))

(declare-fun b!7030985 () Bool)

(assert (=> b!7030985 (= e!4226731 (select z1!570 a!13184))))

(assert (= d!2193067 b!7030984))

(assert (= (and d!2193067 res!2870126) b!7030985))

(declare-fun b_lambda!266223 () Bool)

(assert (=> (not b_lambda!266223) (not d!2193067)))

(declare-fun m!7736678 () Bool)

(assert (=> d!2193067 m!7736678))

(declare-fun m!7736680 () Bool)

(assert (=> d!2193067 m!7736680))

(declare-fun m!7736682 () Bool)

(assert (=> b!7030985 m!7736682))

(assert (=> d!2192875 d!2193067))

(declare-fun d!2193069 () Bool)

(assert (=> d!2193069 (= (map!15756 z1!570 lambda!414254) (choose!53207 z1!570 lambda!414254))))

(declare-fun bs!1870043 () Bool)

(assert (= bs!1870043 d!2193069))

(declare-fun m!7736684 () Bool)

(assert (=> bs!1870043 m!7736684))

(assert (=> d!2192875 d!2193069))

(declare-fun d!2193071 () Bool)

(assert (=> d!2193071 (= (flatMap!2406 lt!2517591 lambda!414279) (choose!53205 lt!2517591 lambda!414279))))

(declare-fun bs!1870044 () Bool)

(assert (= bs!1870044 d!2193071))

(declare-fun m!7736686 () Bool)

(assert (=> bs!1870044 m!7736686))

(assert (=> d!2192797 d!2193071))

(declare-fun b!7030988 () Bool)

(declare-fun e!4226736 () Bool)

(assert (=> b!7030988 (= e!4226736 (nullable!7170 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613)))))))))

(declare-fun d!2193073 () Bool)

(declare-fun c!1307578 () Bool)

(assert (=> d!2193073 (= c!1307578 e!4226736)))

(declare-fun res!2870129 () Bool)

(assert (=> d!2193073 (=> (not res!2870129) (not e!4226736))))

(assert (=> d!2193073 (= res!2870129 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613))))))))

(declare-fun e!4226735 () (InoxSet Context!12910))

(assert (=> d!2193073 (= (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (h!74230 s!7408)) e!4226735)))

(declare-fun bm!638462 () Bool)

(declare-fun call!638467 () (InoxSet Context!12910))

(assert (=> bm!638462 (= call!638467 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613))))) (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613)))))) (h!74230 s!7408)))))

(declare-fun b!7030989 () Bool)

(declare-fun e!4226737 () (InoxSet Context!12910))

(assert (=> b!7030989 (= e!4226735 e!4226737)))

(declare-fun c!1307577 () Bool)

(assert (=> b!7030989 (= c!1307577 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613))))))))

(declare-fun b!7030990 () Bool)

(assert (=> b!7030990 (= e!4226737 call!638467)))

(declare-fun b!7030991 () Bool)

(assert (=> b!7030991 (= e!4226735 ((_ map or) call!638467 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613)))))) (h!74230 s!7408))))))

(declare-fun b!7030992 () Bool)

(assert (=> b!7030992 (= e!4226737 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2193073 res!2870129) b!7030988))

(assert (= (and d!2193073 c!1307578) b!7030991))

(assert (= (and d!2193073 (not c!1307578)) b!7030989))

(assert (= (and b!7030989 c!1307577) b!7030990))

(assert (= (and b!7030989 (not c!1307577)) b!7030992))

(assert (= (or b!7030991 b!7030990) bm!638462))

(declare-fun m!7736688 () Bool)

(assert (=> b!7030988 m!7736688))

(declare-fun m!7736690 () Bool)

(assert (=> bm!638462 m!7736690))

(declare-fun m!7736692 () Bool)

(assert (=> b!7030991 m!7736692))

(assert (=> b!7030600 d!2193073))

(declare-fun d!2193075 () Bool)

(assert (=> d!2193075 true))

(declare-fun setRes!49119 () Bool)

(assert (=> d!2193075 setRes!49119))

(declare-fun condSetEmpty!49119 () Bool)

(declare-fun res!2870134 () (InoxSet Context!12910))

(assert (=> d!2193075 (= condSetEmpty!49119 (= res!2870134 ((as const (Array Context!12910 Bool)) false)))))

(assert (=> d!2193075 (= (choose!53207 lt!2517603 lambda!414254) res!2870134)))

(declare-fun setIsEmpty!49119 () Bool)

(assert (=> setIsEmpty!49119 setRes!49119))

(declare-fun tp!1936213 () Bool)

(declare-fun e!4226742 () Bool)

(declare-fun setElem!49119 () Context!12910)

(declare-fun setNonEmpty!49119 () Bool)

(assert (=> setNonEmpty!49119 (= setRes!49119 (and tp!1936213 (inv!86506 setElem!49119) e!4226742))))

(declare-fun setRest!49119 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49119 (= res!2870134 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49119 true) setRest!49119))))

(declare-fun b!7030997 () Bool)

(declare-fun tp!1936214 () Bool)

(assert (=> b!7030997 (= e!4226742 tp!1936214)))

(assert (= (and d!2193075 condSetEmpty!49119) setIsEmpty!49119))

(assert (= (and d!2193075 (not condSetEmpty!49119)) setNonEmpty!49119))

(assert (= setNonEmpty!49119 b!7030997))

(declare-fun m!7736698 () Bool)

(assert (=> setNonEmpty!49119 m!7736698))

(assert (=> d!2192835 d!2193075))

(declare-fun bs!1870045 () Bool)

(declare-fun d!2193079 () Bool)

(assert (= bs!1870045 (and d!2193079 b!7030377)))

(declare-fun lambda!414312 () Int)

(assert (=> bs!1870045 (not (= lambda!414312 lambda!414253))))

(declare-fun bs!1870046 () Bool)

(assert (= bs!1870046 (and d!2193079 d!2193043)))

(assert (=> bs!1870046 (= lambda!414312 lambda!414311)))

(declare-fun bs!1870047 () Bool)

(assert (= bs!1870047 (and d!2193079 d!2192775)))

(assert (=> bs!1870047 (not (= lambda!414312 lambda!414275))))

(declare-fun bs!1870048 () Bool)

(assert (= bs!1870048 (and d!2193079 b!7030376)))

(assert (=> bs!1870048 (= lambda!414312 lambda!414257)))

(declare-fun bs!1870049 () Bool)

(assert (= bs!1870049 (and d!2193079 d!2192771)))

(assert (=> bs!1870049 (not (= lambda!414312 lambda!414272))))

(declare-fun bs!1870050 () Bool)

(assert (= bs!1870050 (and d!2193079 d!2193015)))

(assert (=> bs!1870050 (= lambda!414312 lambda!414310)))

(assert (=> d!2193079 (= (nullableZipper!2575 lt!2517614) (exists!3380 lt!2517614 lambda!414312))))

(declare-fun bs!1870051 () Bool)

(assert (= bs!1870051 d!2193079))

(declare-fun m!7736700 () Bool)

(assert (=> bs!1870051 m!7736700))

(assert (=> b!7030467 d!2193079))

(assert (=> d!2192837 d!2192851))

(assert (=> d!2192837 d!2192821))

(declare-fun d!2193081 () Bool)

(assert (=> d!2193081 (<= (contextDepthTotal!494 lt!2517579) (zipperDepthTotal!522 lt!2517568))))

(assert (=> d!2193081 true))

(declare-fun _$53!113 () Unit!161586)

(assert (=> d!2193081 (= (choose!53208 lt!2517568 lt!2517579) _$53!113)))

(declare-fun bs!1870052 () Bool)

(assert (= bs!1870052 d!2193081))

(assert (=> bs!1870052 m!7735664))

(assert (=> bs!1870052 m!7735654))

(assert (=> d!2192837 d!2193081))

(declare-fun d!2193083 () Bool)

(declare-fun lt!2517779 () Bool)

(assert (=> d!2193083 (= lt!2517779 (select (content!13520 lt!2517568) lt!2517579))))

(declare-fun e!4226757 () Bool)

(assert (=> d!2193083 (= lt!2517779 e!4226757)))

(declare-fun res!2870145 () Bool)

(assert (=> d!2193083 (=> (not res!2870145) (not e!4226757))))

(assert (=> d!2193083 (= res!2870145 ((_ is Cons!67783) lt!2517568))))

(assert (=> d!2193083 (= (contains!20452 lt!2517568 lt!2517579) lt!2517779)))

(declare-fun b!7031011 () Bool)

(declare-fun e!4226756 () Bool)

(assert (=> b!7031011 (= e!4226757 e!4226756)))

(declare-fun res!2870146 () Bool)

(assert (=> b!7031011 (=> res!2870146 e!4226756)))

(assert (=> b!7031011 (= res!2870146 (= (h!74231 lt!2517568) lt!2517579))))

(declare-fun b!7031012 () Bool)

(assert (=> b!7031012 (= e!4226756 (contains!20452 (t!381670 lt!2517568) lt!2517579))))

(assert (= (and d!2193083 res!2870145) b!7031011))

(assert (= (and b!7031011 (not res!2870146)) b!7031012))

(declare-fun m!7736708 () Bool)

(assert (=> d!2193083 m!7736708))

(declare-fun m!7736710 () Bool)

(assert (=> d!2193083 m!7736710))

(declare-fun m!7736712 () Bool)

(assert (=> b!7031012 m!7736712))

(assert (=> d!2192837 d!2193083))

(declare-fun d!2193087 () Bool)

(assert (=> d!2193087 (= (isDefined!13565 lt!2517737) (not (isEmpty!39529 lt!2517737)))))

(declare-fun bs!1870061 () Bool)

(assert (= bs!1870061 d!2193087))

(declare-fun m!7736714 () Bool)

(assert (=> bs!1870061 m!7736714))

(assert (=> d!2192879 d!2193087))

(declare-fun d!2193089 () Bool)

(declare-fun c!1307580 () Bool)

(assert (=> d!2193089 (= c!1307580 (isEmpty!39526 Nil!67782))))

(declare-fun e!4226758 () Bool)

(assert (=> d!2193089 (= (matchZipper!2999 lt!2517603 Nil!67782) e!4226758)))

(declare-fun b!7031013 () Bool)

(assert (=> b!7031013 (= e!4226758 (nullableZipper!2575 lt!2517603))))

(declare-fun b!7031014 () Bool)

(assert (=> b!7031014 (= e!4226758 (matchZipper!2999 (derivationStepZipper!2915 lt!2517603 (head!14256 Nil!67782)) (tail!13543 Nil!67782)))))

(assert (= (and d!2193089 c!1307580) b!7031013))

(assert (= (and d!2193089 (not c!1307580)) b!7031014))

(declare-fun m!7736718 () Bool)

(assert (=> d!2193089 m!7736718))

(assert (=> b!7031013 m!7736318))

(declare-fun m!7736720 () Bool)

(assert (=> b!7031014 m!7736720))

(assert (=> b!7031014 m!7736720))

(declare-fun m!7736722 () Bool)

(assert (=> b!7031014 m!7736722))

(declare-fun m!7736724 () Bool)

(assert (=> b!7031014 m!7736724))

(assert (=> b!7031014 m!7736722))

(assert (=> b!7031014 m!7736724))

(declare-fun m!7736726 () Bool)

(assert (=> b!7031014 m!7736726))

(assert (=> d!2192879 d!2193089))

(declare-fun b!7031018 () Bool)

(declare-fun e!4226759 () Bool)

(declare-fun lt!2517781 () List!67906)

(assert (=> b!7031018 (= e!4226759 (or (not (= s!7408 Nil!67782)) (= lt!2517781 Nil!67782)))))

(declare-fun b!7031015 () Bool)

(declare-fun e!4226760 () List!67906)

(assert (=> b!7031015 (= e!4226760 s!7408)))

(declare-fun d!2193093 () Bool)

(assert (=> d!2193093 e!4226759))

(declare-fun res!2870147 () Bool)

(assert (=> d!2193093 (=> (not res!2870147) (not e!4226759))))

(assert (=> d!2193093 (= res!2870147 (= (content!13522 lt!2517781) ((_ map or) (content!13522 Nil!67782) (content!13522 s!7408))))))

(assert (=> d!2193093 (= lt!2517781 e!4226760)))

(declare-fun c!1307581 () Bool)

(assert (=> d!2193093 (= c!1307581 ((_ is Nil!67782) Nil!67782))))

(assert (=> d!2193093 (= (++!15499 Nil!67782 s!7408) lt!2517781)))

(declare-fun b!7031017 () Bool)

(declare-fun res!2870148 () Bool)

(assert (=> b!7031017 (=> (not res!2870148) (not e!4226759))))

(assert (=> b!7031017 (= res!2870148 (= (size!41055 lt!2517781) (+ (size!41055 Nil!67782) (size!41055 s!7408))))))

(declare-fun b!7031016 () Bool)

(assert (=> b!7031016 (= e!4226760 (Cons!67782 (h!74230 Nil!67782) (++!15499 (t!381669 Nil!67782) s!7408)))))

(assert (= (and d!2193093 c!1307581) b!7031015))

(assert (= (and d!2193093 (not c!1307581)) b!7031016))

(assert (= (and d!2193093 res!2870147) b!7031017))

(assert (= (and b!7031017 res!2870148) b!7031018))

(declare-fun m!7736732 () Bool)

(assert (=> d!2193093 m!7736732))

(declare-fun m!7736734 () Bool)

(assert (=> d!2193093 m!7736734))

(declare-fun m!7736736 () Bool)

(assert (=> d!2193093 m!7736736))

(declare-fun m!7736740 () Bool)

(assert (=> b!7031017 m!7736740))

(declare-fun m!7736742 () Bool)

(assert (=> b!7031017 m!7736742))

(declare-fun m!7736744 () Bool)

(assert (=> b!7031017 m!7736744))

(declare-fun m!7736746 () Bool)

(assert (=> b!7031016 m!7736746))

(assert (=> d!2192879 d!2193093))

(declare-fun d!2193097 () Bool)

(declare-fun lt!2517782 () Int)

(assert (=> d!2193097 (>= lt!2517782 0)))

(declare-fun e!4226761 () Int)

(assert (=> d!2193097 (= lt!2517782 e!4226761)))

(declare-fun c!1307582 () Bool)

(assert (=> d!2193097 (= c!1307582 ((_ is Cons!67781) (exprs!6955 (h!74231 lt!2517568))))))

(assert (=> d!2193097 (= (contextDepthTotal!494 (h!74231 lt!2517568)) lt!2517782)))

(declare-fun b!7031019 () Bool)

(assert (=> b!7031019 (= e!4226761 (+ (regexDepthTotal!298 (h!74229 (exprs!6955 (h!74231 lt!2517568)))) (contextDepthTotal!494 (Context!12911 (t!381668 (exprs!6955 (h!74231 lt!2517568)))))))))

(declare-fun b!7031020 () Bool)

(assert (=> b!7031020 (= e!4226761 1)))

(assert (= (and d!2193097 c!1307582) b!7031019))

(assert (= (and d!2193097 (not c!1307582)) b!7031020))

(declare-fun m!7736748 () Bool)

(assert (=> b!7031019 m!7736748))

(declare-fun m!7736750 () Bool)

(assert (=> b!7031019 m!7736750))

(assert (=> b!7030606 d!2193097))

(declare-fun d!2193099 () Bool)

(declare-fun lt!2517784 () Int)

(assert (=> d!2193099 (>= lt!2517784 0)))

(declare-fun e!4226764 () Int)

(assert (=> d!2193099 (= lt!2517784 e!4226764)))

(declare-fun c!1307584 () Bool)

(assert (=> d!2193099 (= c!1307584 ((_ is Cons!67783) (t!381670 lt!2517568)))))

(assert (=> d!2193099 (= (zipperDepthTotal!522 (t!381670 lt!2517568)) lt!2517784)))

(declare-fun b!7031025 () Bool)

(assert (=> b!7031025 (= e!4226764 (+ (contextDepthTotal!494 (h!74231 (t!381670 lt!2517568))) (zipperDepthTotal!522 (t!381670 (t!381670 lt!2517568)))))))

(declare-fun b!7031026 () Bool)

(assert (=> b!7031026 (= e!4226764 0)))

(assert (= (and d!2193099 c!1307584) b!7031025))

(assert (= (and d!2193099 (not c!1307584)) b!7031026))

(declare-fun m!7736752 () Bool)

(assert (=> b!7031025 m!7736752))

(declare-fun m!7736754 () Bool)

(assert (=> b!7031025 m!7736754))

(assert (=> b!7030606 d!2193099))

(declare-fun d!2193101 () Bool)

(declare-fun c!1307585 () Bool)

(assert (=> d!2193101 (= c!1307585 ((_ is Nil!67783) lt!2517699))))

(declare-fun e!4226765 () (InoxSet Context!12910))

(assert (=> d!2193101 (= (content!13520 lt!2517699) e!4226765)))

(declare-fun b!7031027 () Bool)

(assert (=> b!7031027 (= e!4226765 ((as const (Array Context!12910 Bool)) false))))

(declare-fun b!7031028 () Bool)

(assert (=> b!7031028 (= e!4226765 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) (h!74231 lt!2517699) true) (content!13520 (t!381670 lt!2517699))))))

(assert (= (and d!2193101 c!1307585) b!7031027))

(assert (= (and d!2193101 (not c!1307585)) b!7031028))

(declare-fun m!7736756 () Bool)

(assert (=> b!7031028 m!7736756))

(declare-fun m!7736758 () Bool)

(assert (=> b!7031028 m!7736758))

(assert (=> b!7030608 d!2193101))

(declare-fun d!2193103 () Bool)

(declare-fun c!1307586 () Bool)

(assert (=> d!2193103 (= c!1307586 (isEmpty!39526 (t!381669 s!7408)))))

(declare-fun e!4226766 () Bool)

(assert (=> d!2193103 (= (matchZipper!2999 ((_ map or) lt!2517599 lt!2517606) (t!381669 s!7408)) e!4226766)))

(declare-fun b!7031029 () Bool)

(assert (=> b!7031029 (= e!4226766 (nullableZipper!2575 ((_ map or) lt!2517599 lt!2517606)))))

(declare-fun b!7031030 () Bool)

(assert (=> b!7031030 (= e!4226766 (matchZipper!2999 (derivationStepZipper!2915 ((_ map or) lt!2517599 lt!2517606) (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))))))

(assert (= (and d!2193103 c!1307586) b!7031029))

(assert (= (and d!2193103 (not c!1307586)) b!7031030))

(assert (=> d!2193103 m!7735820))

(declare-fun m!7736770 () Bool)

(assert (=> b!7031029 m!7736770))

(assert (=> b!7031030 m!7735824))

(assert (=> b!7031030 m!7735824))

(declare-fun m!7736772 () Bool)

(assert (=> b!7031030 m!7736772))

(assert (=> b!7031030 m!7735830))

(assert (=> b!7031030 m!7736772))

(assert (=> b!7031030 m!7735830))

(declare-fun m!7736774 () Bool)

(assert (=> b!7031030 m!7736774))

(assert (=> d!2192729 d!2193103))

(assert (=> d!2192729 d!2192737))

(declare-fun e!4226769 () Bool)

(declare-fun d!2193107 () Bool)

(assert (=> d!2193107 (= (matchZipper!2999 ((_ map or) lt!2517599 lt!2517606) (t!381669 s!7408)) e!4226769)))

(declare-fun res!2870153 () Bool)

(assert (=> d!2193107 (=> res!2870153 e!4226769)))

(assert (=> d!2193107 (= res!2870153 (matchZipper!2999 lt!2517599 (t!381669 s!7408)))))

(assert (=> d!2193107 true))

(declare-fun _$48!2479 () Unit!161586)

(assert (=> d!2193107 (= (choose!53200 lt!2517599 lt!2517606 (t!381669 s!7408)) _$48!2479)))

(declare-fun b!7031033 () Bool)

(assert (=> b!7031033 (= e!4226769 (matchZipper!2999 lt!2517606 (t!381669 s!7408)))))

(assert (= (and d!2193107 (not res!2870153)) b!7031033))

(assert (=> d!2193107 m!7735902))

(assert (=> d!2193107 m!7735736))

(assert (=> b!7031033 m!7735690))

(assert (=> d!2192729 d!2193107))

(declare-fun d!2193115 () Bool)

(declare-fun c!1307587 () Bool)

(assert (=> d!2193115 (= c!1307587 (isEmpty!39526 s!7408))))

(declare-fun e!4226770 () Bool)

(assert (=> d!2193115 (= (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) lt!2517665 true) s!7408) e!4226770)))

(declare-fun b!7031034 () Bool)

(assert (=> b!7031034 (= e!4226770 (nullableZipper!2575 (store ((as const (Array Context!12910 Bool)) false) lt!2517665 true)))))

(declare-fun b!7031035 () Bool)

(assert (=> b!7031035 (= e!4226770 (matchZipper!2999 (derivationStepZipper!2915 (store ((as const (Array Context!12910 Bool)) false) lt!2517665 true) (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2193115 c!1307587) b!7031034))

(assert (= (and d!2193115 (not c!1307587)) b!7031035))

(assert (=> d!2193115 m!7736016))

(assert (=> b!7031034 m!7736370))

(declare-fun m!7736782 () Bool)

(assert (=> b!7031034 m!7736782))

(assert (=> b!7031035 m!7736020))

(assert (=> b!7031035 m!7736370))

(assert (=> b!7031035 m!7736020))

(declare-fun m!7736784 () Bool)

(assert (=> b!7031035 m!7736784))

(assert (=> b!7031035 m!7736024))

(assert (=> b!7031035 m!7736784))

(assert (=> b!7031035 m!7736024))

(declare-fun m!7736786 () Bool)

(assert (=> b!7031035 m!7736786))

(assert (=> bs!1869974 d!2193115))

(declare-fun d!2193117 () Bool)

(assert (=> d!2193117 (= (nullable!7170 (h!74229 (exprs!6955 lt!2517613))) (nullableFct!2723 (h!74229 (exprs!6955 lt!2517613))))))

(declare-fun bs!1870070 () Bool)

(assert (= bs!1870070 d!2193117))

(declare-fun m!7736788 () Bool)

(assert (=> bs!1870070 m!7736788))

(assert (=> b!7030597 d!2193117))

(declare-fun d!2193119 () Bool)

(declare-fun res!2870158 () Bool)

(declare-fun e!4226775 () Bool)

(assert (=> d!2193119 (=> res!2870158 e!4226775)))

(assert (=> d!2193119 (= res!2870158 ((_ is Nil!67781) (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306))))))

(assert (=> d!2193119 (= (forall!16369 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)) lambda!414255) e!4226775)))

(declare-fun b!7031040 () Bool)

(declare-fun e!4226776 () Bool)

(assert (=> b!7031040 (= e!4226775 e!4226776)))

(declare-fun res!2870159 () Bool)

(assert (=> b!7031040 (=> (not res!2870159) (not e!4226776))))

(declare-fun dynLambda!27364 (Int Regex!17459) Bool)

(assert (=> b!7031040 (= res!2870159 (dynLambda!27364 lambda!414255 (h!74229 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)))))))

(declare-fun b!7031041 () Bool)

(assert (=> b!7031041 (= e!4226776 (forall!16369 (t!381668 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306))) lambda!414255))))

(assert (= (and d!2193119 (not res!2870158)) b!7031040))

(assert (= (and b!7031040 res!2870159) b!7031041))

(declare-fun b_lambda!266225 () Bool)

(assert (=> (not b_lambda!266225) (not b!7031040)))

(declare-fun m!7736790 () Bool)

(assert (=> b!7031040 m!7736790))

(declare-fun m!7736792 () Bool)

(assert (=> b!7031041 m!7736792))

(assert (=> d!2192869 d!2193119))

(assert (=> d!2192869 d!2192873))

(declare-fun d!2193121 () Bool)

(assert (=> d!2193121 (forall!16369 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)) lambda!414255)))

(assert (=> d!2193121 true))

(declare-fun _$78!576 () Unit!161586)

(assert (=> d!2193121 (= (choose!53199 (exprs!6955 lt!2517579) (exprs!6955 ct2!306) lambda!414255) _$78!576)))

(declare-fun bs!1870071 () Bool)

(assert (= bs!1870071 d!2193121))

(assert (=> bs!1870071 m!7735742))

(assert (=> bs!1870071 m!7735742))

(assert (=> bs!1870071 m!7736266))

(assert (=> d!2192869 d!2193121))

(declare-fun d!2193123 () Bool)

(declare-fun res!2870160 () Bool)

(declare-fun e!4226777 () Bool)

(assert (=> d!2193123 (=> res!2870160 e!4226777)))

(assert (=> d!2193123 (= res!2870160 ((_ is Nil!67781) (exprs!6955 lt!2517579)))))

(assert (=> d!2193123 (= (forall!16369 (exprs!6955 lt!2517579) lambda!414255) e!4226777)))

(declare-fun b!7031044 () Bool)

(declare-fun e!4226778 () Bool)

(assert (=> b!7031044 (= e!4226777 e!4226778)))

(declare-fun res!2870161 () Bool)

(assert (=> b!7031044 (=> (not res!2870161) (not e!4226778))))

(assert (=> b!7031044 (= res!2870161 (dynLambda!27364 lambda!414255 (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun b!7031045 () Bool)

(assert (=> b!7031045 (= e!4226778 (forall!16369 (t!381668 (exprs!6955 lt!2517579)) lambda!414255))))

(assert (= (and d!2193123 (not res!2870160)) b!7031044))

(assert (= (and b!7031044 res!2870161) b!7031045))

(declare-fun b_lambda!266227 () Bool)

(assert (=> (not b_lambda!266227) (not b!7031044)))

(declare-fun m!7736794 () Bool)

(assert (=> b!7031044 m!7736794))

(declare-fun m!7736796 () Bool)

(assert (=> b!7031045 m!7736796))

(assert (=> d!2192869 d!2193123))

(declare-fun d!2193125 () Bool)

(declare-fun c!1307592 () Bool)

(assert (=> d!2193125 (= c!1307592 (isEmpty!39526 (tail!13543 (t!381669 s!7408))))))

(declare-fun e!4226785 () Bool)

(assert (=> d!2193125 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517599 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))) e!4226785)))

(declare-fun b!7031054 () Bool)

(assert (=> b!7031054 (= e!4226785 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517599 (head!14256 (t!381669 s!7408)))))))

(declare-fun b!7031055 () Bool)

(assert (=> b!7031055 (= e!4226785 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517599 (head!14256 (t!381669 s!7408))) (head!14256 (tail!13543 (t!381669 s!7408)))) (tail!13543 (tail!13543 (t!381669 s!7408)))))))

(assert (= (and d!2193125 c!1307592) b!7031054))

(assert (= (and d!2193125 (not c!1307592)) b!7031055))

(assert (=> d!2193125 m!7735830))

(declare-fun m!7736798 () Bool)

(assert (=> d!2193125 m!7736798))

(assert (=> b!7031054 m!7735908))

(declare-fun m!7736800 () Bool)

(assert (=> b!7031054 m!7736800))

(assert (=> b!7031055 m!7735830))

(declare-fun m!7736802 () Bool)

(assert (=> b!7031055 m!7736802))

(assert (=> b!7031055 m!7735908))

(assert (=> b!7031055 m!7736802))

(declare-fun m!7736804 () Bool)

(assert (=> b!7031055 m!7736804))

(assert (=> b!7031055 m!7735830))

(declare-fun m!7736806 () Bool)

(assert (=> b!7031055 m!7736806))

(assert (=> b!7031055 m!7736804))

(assert (=> b!7031055 m!7736806))

(declare-fun m!7736808 () Bool)

(assert (=> b!7031055 m!7736808))

(assert (=> b!7030464 d!2193125))

(declare-fun bs!1870072 () Bool)

(declare-fun d!2193127 () Bool)

(assert (= bs!1870072 (and d!2193127 d!2192947)))

(declare-fun lambda!414315 () Int)

(assert (=> bs!1870072 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414315 lambda!414297))))

(declare-fun bs!1870073 () Bool)

(assert (= bs!1870073 (and d!2193127 d!2192927)))

(assert (=> bs!1870073 (= (= (head!14256 (t!381669 s!7408)) (head!14256 (_2!37335 lt!2517607))) (= lambda!414315 lambda!414296))))

(declare-fun bs!1870074 () Bool)

(assert (= bs!1870074 (and d!2193127 b!7030364)))

(assert (=> bs!1870074 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414315 lambda!414256))))

(declare-fun bs!1870075 () Bool)

(assert (= bs!1870075 (and d!2193127 d!2192993)))

(assert (=> bs!1870075 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414315 lambda!414302))))

(declare-fun bs!1870076 () Bool)

(assert (= bs!1870076 (and d!2193127 d!2193013)))

(assert (=> bs!1870076 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414315 lambda!414304))))

(declare-fun bs!1870077 () Bool)

(assert (= bs!1870077 (and d!2193127 d!2192797)))

(assert (=> bs!1870077 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414315 lambda!414279))))

(declare-fun bs!1870078 () Bool)

(assert (= bs!1870078 (and d!2193127 d!2192891)))

(assert (=> bs!1870078 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414315 lambda!414289))))

(assert (=> d!2193127 true))

(assert (=> d!2193127 (= (derivationStepZipper!2915 lt!2517599 (head!14256 (t!381669 s!7408))) (flatMap!2406 lt!2517599 lambda!414315))))

(declare-fun bs!1870079 () Bool)

(assert (= bs!1870079 d!2193127))

(declare-fun m!7736810 () Bool)

(assert (=> bs!1870079 m!7736810))

(assert (=> b!7030464 d!2193127))

(declare-fun d!2193129 () Bool)

(assert (=> d!2193129 (= (head!14256 (t!381669 s!7408)) (h!74230 (t!381669 s!7408)))))

(assert (=> b!7030464 d!2193129))

(declare-fun d!2193131 () Bool)

(assert (=> d!2193131 (= (tail!13543 (t!381669 s!7408)) (t!381669 (t!381669 s!7408)))))

(assert (=> b!7030464 d!2193131))

(declare-fun d!2193133 () Bool)

(declare-fun c!1307593 () Bool)

(assert (=> d!2193133 (= c!1307593 (isEmpty!39526 (tail!13543 (t!381669 s!7408))))))

(declare-fun e!4226788 () Bool)

(assert (=> d!2193133 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517573 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))) e!4226788)))

(declare-fun b!7031058 () Bool)

(assert (=> b!7031058 (= e!4226788 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517573 (head!14256 (t!381669 s!7408)))))))

(declare-fun b!7031059 () Bool)

(assert (=> b!7031059 (= e!4226788 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517573 (head!14256 (t!381669 s!7408))) (head!14256 (tail!13543 (t!381669 s!7408)))) (tail!13543 (tail!13543 (t!381669 s!7408)))))))

(assert (= (and d!2193133 c!1307593) b!7031058))

(assert (= (and d!2193133 (not c!1307593)) b!7031059))

(assert (=> d!2193133 m!7735830))

(assert (=> d!2193133 m!7736798))

(assert (=> b!7031058 m!7735870))

(declare-fun m!7736812 () Bool)

(assert (=> b!7031058 m!7736812))

(assert (=> b!7031059 m!7735830))

(assert (=> b!7031059 m!7736802))

(assert (=> b!7031059 m!7735870))

(assert (=> b!7031059 m!7736802))

(declare-fun m!7736814 () Bool)

(assert (=> b!7031059 m!7736814))

(assert (=> b!7031059 m!7735830))

(assert (=> b!7031059 m!7736806))

(assert (=> b!7031059 m!7736814))

(assert (=> b!7031059 m!7736806))

(declare-fun m!7736816 () Bool)

(assert (=> b!7031059 m!7736816))

(assert (=> b!7030454 d!2193133))

(declare-fun bs!1870080 () Bool)

(declare-fun d!2193135 () Bool)

(assert (= bs!1870080 (and d!2193135 d!2192947)))

(declare-fun lambda!414316 () Int)

(assert (=> bs!1870080 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414316 lambda!414297))))

(declare-fun bs!1870081 () Bool)

(assert (= bs!1870081 (and d!2193135 d!2193127)))

(assert (=> bs!1870081 (= lambda!414316 lambda!414315)))

(declare-fun bs!1870082 () Bool)

(assert (= bs!1870082 (and d!2193135 d!2192927)))

(assert (=> bs!1870082 (= (= (head!14256 (t!381669 s!7408)) (head!14256 (_2!37335 lt!2517607))) (= lambda!414316 lambda!414296))))

(declare-fun bs!1870083 () Bool)

(assert (= bs!1870083 (and d!2193135 b!7030364)))

(assert (=> bs!1870083 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414316 lambda!414256))))

(declare-fun bs!1870084 () Bool)

(assert (= bs!1870084 (and d!2193135 d!2192993)))

(assert (=> bs!1870084 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414316 lambda!414302))))

(declare-fun bs!1870085 () Bool)

(assert (= bs!1870085 (and d!2193135 d!2193013)))

(assert (=> bs!1870085 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414316 lambda!414304))))

(declare-fun bs!1870086 () Bool)

(assert (= bs!1870086 (and d!2193135 d!2192797)))

(assert (=> bs!1870086 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414316 lambda!414279))))

(declare-fun bs!1870087 () Bool)

(assert (= bs!1870087 (and d!2193135 d!2192891)))

(assert (=> bs!1870087 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414316 lambda!414289))))

(assert (=> d!2193135 true))

(assert (=> d!2193135 (= (derivationStepZipper!2915 lt!2517573 (head!14256 (t!381669 s!7408))) (flatMap!2406 lt!2517573 lambda!414316))))

(declare-fun bs!1870088 () Bool)

(assert (= bs!1870088 d!2193135))

(declare-fun m!7736818 () Bool)

(assert (=> bs!1870088 m!7736818))

(assert (=> b!7030454 d!2193135))

(assert (=> b!7030454 d!2193129))

(assert (=> b!7030454 d!2193131))

(declare-fun d!2193137 () Bool)

(assert (=> d!2193137 (= (isEmpty!39529 lt!2517585) (not ((_ is Some!16863) lt!2517585)))))

(assert (=> d!2192883 d!2193137))

(assert (=> d!2192893 d!2192889))

(declare-fun d!2193139 () Bool)

(assert (=> d!2193139 (= (flatMap!2406 lt!2517584 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517582))))

(assert (=> d!2193139 true))

(declare-fun _$13!4465 () Unit!161586)

(assert (=> d!2193139 (= (choose!53203 lt!2517584 lt!2517582 lambda!414256) _$13!4465)))

(declare-fun b_lambda!266229 () Bool)

(assert (=> (not b_lambda!266229) (not d!2193139)))

(declare-fun bs!1870089 () Bool)

(assert (= bs!1870089 d!2193139))

(assert (=> bs!1870089 m!7735712))

(assert (=> bs!1870089 m!7736350))

(assert (=> d!2192893 d!2193139))

(declare-fun bs!1870090 () Bool)

(declare-fun d!2193141 () Bool)

(assert (= bs!1870090 (and d!2193141 b!7030377)))

(declare-fun lambda!414317 () Int)

(assert (=> bs!1870090 (not (= lambda!414317 lambda!414253))))

(declare-fun bs!1870091 () Bool)

(assert (= bs!1870091 (and d!2193141 d!2193043)))

(assert (=> bs!1870091 (= lambda!414317 lambda!414311)))

(declare-fun bs!1870092 () Bool)

(assert (= bs!1870092 (and d!2193141 d!2192775)))

(assert (=> bs!1870092 (not (= lambda!414317 lambda!414275))))

(declare-fun bs!1870093 () Bool)

(assert (= bs!1870093 (and d!2193141 d!2193079)))

(assert (=> bs!1870093 (= lambda!414317 lambda!414312)))

(declare-fun bs!1870094 () Bool)

(assert (= bs!1870094 (and d!2193141 b!7030376)))

(assert (=> bs!1870094 (= lambda!414317 lambda!414257)))

(declare-fun bs!1870095 () Bool)

(assert (= bs!1870095 (and d!2193141 d!2192771)))

(assert (=> bs!1870095 (not (= lambda!414317 lambda!414272))))

(declare-fun bs!1870096 () Bool)

(assert (= bs!1870096 (and d!2193141 d!2193015)))

(assert (=> bs!1870096 (= lambda!414317 lambda!414310)))

(assert (=> d!2193141 (= (nullableZipper!2575 lt!2517606) (exists!3380 lt!2517606 lambda!414317))))

(declare-fun bs!1870097 () Bool)

(assert (= bs!1870097 d!2193141))

(declare-fun m!7736820 () Bool)

(assert (=> bs!1870097 m!7736820))

(assert (=> b!7030441 d!2193141))

(declare-fun b!7031066 () Bool)

(declare-fun c!1307599 () Bool)

(assert (=> b!7031066 (= c!1307599 ((_ is Star!17459) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun e!4226794 () (InoxSet Context!12910))

(declare-fun e!4226798 () (InoxSet Context!12910))

(assert (=> b!7031066 (= e!4226794 e!4226798)))

(declare-fun bm!638463 () Bool)

(declare-fun call!638473 () (InoxSet Context!12910))

(declare-fun call!638469 () (InoxSet Context!12910))

(assert (=> bm!638463 (= call!638473 call!638469)))

(declare-fun b!7031067 () Bool)

(declare-fun e!4226793 () Bool)

(assert (=> b!7031067 (= e!4226793 (nullable!7170 (regOne!35430 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))))))

(declare-fun b!7031068 () Bool)

(declare-fun e!4226797 () (InoxSet Context!12910))

(assert (=> b!7031068 (= e!4226797 e!4226794)))

(declare-fun c!1307600 () Bool)

(assert (=> b!7031068 (= c!1307600 ((_ is Concat!26304) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun call!638472 () List!67905)

(declare-fun bm!638464 () Bool)

(declare-fun c!1307596 () Bool)

(declare-fun call!638471 () (InoxSet Context!12910))

(assert (=> bm!638464 (= call!638471 (derivationStepZipperDown!2123 (ite c!1307596 (regOne!35431 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (regOne!35430 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))) (ite c!1307596 (ite c!1307469 lt!2517613 (Context!12911 call!638432)) (Context!12911 call!638472)) (h!74230 s!7408)))))

(declare-fun c!1307597 () Bool)

(declare-fun bm!638465 () Bool)

(assert (=> bm!638465 (= call!638472 ($colon$colon!2569 (exprs!6955 (ite c!1307469 lt!2517613 (Context!12911 call!638432))) (ite (or c!1307597 c!1307600) (regTwo!35430 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))))))

(declare-fun b!7031069 () Bool)

(assert (=> b!7031069 (= e!4226797 ((_ map or) call!638471 call!638469))))

(declare-fun bm!638466 () Bool)

(declare-fun call!638470 () (InoxSet Context!12910))

(assert (=> bm!638466 (= call!638469 call!638470)))

(declare-fun b!7031070 () Bool)

(declare-fun e!4226795 () (InoxSet Context!12910))

(assert (=> b!7031070 (= e!4226795 ((_ map or) call!638471 call!638470))))

(declare-fun d!2193143 () Bool)

(declare-fun c!1307598 () Bool)

(assert (=> d!2193143 (= c!1307598 (and ((_ is ElementMatch!17459) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (= (c!1307360 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (h!74230 s!7408))))))

(declare-fun e!4226796 () (InoxSet Context!12910))

(assert (=> d!2193143 (= (derivationStepZipperDown!2123 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))) (ite c!1307469 lt!2517613 (Context!12911 call!638432)) (h!74230 s!7408)) e!4226796)))

(declare-fun b!7031071 () Bool)

(assert (=> b!7031071 (= e!4226796 (store ((as const (Array Context!12910 Bool)) false) (ite c!1307469 lt!2517613 (Context!12911 call!638432)) true))))

(declare-fun b!7031072 () Bool)

(assert (=> b!7031072 (= c!1307597 e!4226793)))

(declare-fun res!2870168 () Bool)

(assert (=> b!7031072 (=> (not res!2870168) (not e!4226793))))

(assert (=> b!7031072 (= res!2870168 ((_ is Concat!26304) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(assert (=> b!7031072 (= e!4226795 e!4226797)))

(declare-fun b!7031073 () Bool)

(assert (=> b!7031073 (= e!4226798 call!638473)))

(declare-fun bm!638467 () Bool)

(declare-fun call!638468 () List!67905)

(assert (=> bm!638467 (= call!638470 (derivationStepZipperDown!2123 (ite c!1307596 (regTwo!35431 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (ite c!1307597 (regTwo!35430 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (ite c!1307600 (regOne!35430 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))) (reg!17788 (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579)))))))) (ite (or c!1307596 c!1307597) (ite c!1307469 lt!2517613 (Context!12911 call!638432)) (Context!12911 call!638468)) (h!74230 s!7408)))))

(declare-fun b!7031074 () Bool)

(assert (=> b!7031074 (= e!4226798 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638468 () Bool)

(assert (=> bm!638468 (= call!638468 call!638472)))

(declare-fun b!7031075 () Bool)

(assert (=> b!7031075 (= e!4226794 call!638473)))

(declare-fun b!7031076 () Bool)

(assert (=> b!7031076 (= e!4226796 e!4226795)))

(assert (=> b!7031076 (= c!1307596 ((_ is Union!17459) (ite c!1307469 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(assert (= (and d!2193143 c!1307598) b!7031071))

(assert (= (and d!2193143 (not c!1307598)) b!7031076))

(assert (= (and b!7031076 c!1307596) b!7031070))

(assert (= (and b!7031076 (not c!1307596)) b!7031072))

(assert (= (and b!7031072 res!2870168) b!7031067))

(assert (= (and b!7031072 c!1307597) b!7031069))

(assert (= (and b!7031072 (not c!1307597)) b!7031068))

(assert (= (and b!7031068 c!1307600) b!7031075))

(assert (= (and b!7031068 (not c!1307600)) b!7031066))

(assert (= (and b!7031066 c!1307599) b!7031073))

(assert (= (and b!7031066 (not c!1307599)) b!7031074))

(assert (= (or b!7031075 b!7031073) bm!638468))

(assert (= (or b!7031075 b!7031073) bm!638463))

(assert (= (or b!7031069 bm!638463) bm!638466))

(assert (= (or b!7031069 bm!638468) bm!638465))

(assert (= (or b!7031070 b!7031069) bm!638464))

(assert (= (or b!7031070 bm!638466) bm!638467))

(declare-fun m!7736826 () Bool)

(assert (=> bm!638465 m!7736826))

(declare-fun m!7736830 () Bool)

(assert (=> b!7031067 m!7736830))

(declare-fun m!7736834 () Bool)

(assert (=> bm!638464 m!7736834))

(declare-fun m!7736840 () Bool)

(assert (=> bm!638467 m!7736840))

(declare-fun m!7736842 () Bool)

(assert (=> b!7031071 m!7736842))

(assert (=> bm!638424 d!2193143))

(assert (=> d!2192723 d!2192923))

(assert (=> b!7030726 d!2193087))

(declare-fun bs!1870098 () Bool)

(declare-fun d!2193147 () Bool)

(assert (= bs!1870098 (and d!2193147 b!7030373)))

(declare-fun lambda!414318 () Int)

(assert (=> bs!1870098 (= lambda!414318 lambda!414255)))

(declare-fun bs!1870099 () Bool)

(assert (= bs!1870099 (and d!2193147 d!2192871)))

(assert (=> bs!1870099 (= lambda!414318 lambda!414288)))

(declare-fun bs!1870101 () Bool)

(assert (= bs!1870101 (and d!2193147 d!2192899)))

(assert (=> bs!1870101 (= lambda!414318 lambda!414295)))

(assert (=> d!2193147 (= (inv!86506 setElem!49112) (forall!16369 (exprs!6955 setElem!49112) lambda!414318))))

(declare-fun bs!1870102 () Bool)

(assert (= bs!1870102 d!2193147))

(declare-fun m!7736846 () Bool)

(assert (=> bs!1870102 m!7736846))

(assert (=> setNonEmpty!49112 d!2193147))

(declare-fun b!7031109 () Bool)

(declare-fun lt!2517797 () Unit!161586)

(declare-fun Unit!161589 () Unit!161586)

(assert (=> b!7031109 (= lt!2517797 Unit!161589)))

(assert (=> b!7031109 false))

(declare-fun e!4226823 () Context!12910)

(declare-fun head!14258 (List!67907) Context!12910)

(assert (=> b!7031109 (= e!4226823 (head!14258 (toList!10802 lt!2517572)))))

(declare-fun b!7031110 () Bool)

(declare-fun e!4226822 () Context!12910)

(assert (=> b!7031110 (= e!4226822 e!4226823)))

(declare-fun c!1307612 () Bool)

(assert (=> b!7031110 (= c!1307612 ((_ is Cons!67783) (toList!10802 lt!2517572)))))

(declare-fun b!7031111 () Bool)

(declare-fun e!4226821 () Bool)

(assert (=> b!7031111 (= e!4226821 (dynLambda!27359 lambda!414253 (h!74231 (toList!10802 lt!2517572))))))

(declare-fun b!7031112 () Bool)

(declare-fun e!4226820 () Bool)

(declare-fun lt!2517796 () Context!12910)

(assert (=> b!7031112 (= e!4226820 (contains!20452 (toList!10802 lt!2517572) lt!2517796))))

(declare-fun b!7031113 () Bool)

(assert (=> b!7031113 (= e!4226823 (getWitness!1462 (t!381670 (toList!10802 lt!2517572)) lambda!414253))))

(declare-fun b!7031114 () Bool)

(assert (=> b!7031114 (= e!4226822 (h!74231 (toList!10802 lt!2517572)))))

(declare-fun d!2193151 () Bool)

(assert (=> d!2193151 e!4226820))

(declare-fun res!2870178 () Bool)

(assert (=> d!2193151 (=> (not res!2870178) (not e!4226820))))

(assert (=> d!2193151 (= res!2870178 (dynLambda!27359 lambda!414253 lt!2517796))))

(assert (=> d!2193151 (= lt!2517796 e!4226822)))

(declare-fun c!1307611 () Bool)

(assert (=> d!2193151 (= c!1307611 e!4226821)))

(declare-fun res!2870177 () Bool)

(assert (=> d!2193151 (=> (not res!2870177) (not e!4226821))))

(assert (=> d!2193151 (= res!2870177 ((_ is Cons!67783) (toList!10802 lt!2517572)))))

(assert (=> d!2193151 (exists!3381 (toList!10802 lt!2517572) lambda!414253)))

(assert (=> d!2193151 (= (getWitness!1462 (toList!10802 lt!2517572) lambda!414253) lt!2517796)))

(assert (= (and d!2193151 res!2870177) b!7031111))

(assert (= (and d!2193151 c!1307611) b!7031114))

(assert (= (and d!2193151 (not c!1307611)) b!7031110))

(assert (= (and b!7031110 c!1307612) b!7031113))

(assert (= (and b!7031110 (not c!1307612)) b!7031109))

(assert (= (and d!2193151 res!2870178) b!7031112))

(declare-fun b_lambda!266237 () Bool)

(assert (=> (not b_lambda!266237) (not b!7031111)))

(declare-fun b_lambda!266239 () Bool)

(assert (=> (not b_lambda!266239) (not d!2193151)))

(declare-fun m!7736870 () Bool)

(assert (=> d!2193151 m!7736870))

(assert (=> d!2193151 m!7735720))

(declare-fun m!7736872 () Bool)

(assert (=> d!2193151 m!7736872))

(assert (=> b!7031109 m!7735720))

(declare-fun m!7736874 () Bool)

(assert (=> b!7031109 m!7736874))

(declare-fun m!7736876 () Bool)

(assert (=> b!7031113 m!7736876))

(assert (=> b!7031112 m!7735720))

(declare-fun m!7736878 () Bool)

(assert (=> b!7031112 m!7736878))

(declare-fun m!7736880 () Bool)

(assert (=> b!7031111 m!7736880))

(assert (=> d!2192747 d!2193151))

(assert (=> d!2192747 d!2192779))

(declare-fun d!2193167 () Bool)

(declare-fun lt!2517798 () Bool)

(assert (=> d!2193167 (= lt!2517798 (exists!3381 (toList!10802 lt!2517572) lambda!414253))))

(assert (=> d!2193167 (= lt!2517798 (choose!53210 lt!2517572 lambda!414253))))

(assert (=> d!2193167 (= (exists!3380 lt!2517572 lambda!414253) lt!2517798)))

(declare-fun bs!1870108 () Bool)

(assert (= bs!1870108 d!2193167))

(assert (=> bs!1870108 m!7735720))

(assert (=> bs!1870108 m!7735720))

(assert (=> bs!1870108 m!7736872))

(declare-fun m!7736888 () Bool)

(assert (=> bs!1870108 m!7736888))

(assert (=> d!2192747 d!2193167))

(declare-fun d!2193169 () Bool)

(declare-fun c!1307613 () Bool)

(assert (=> d!2193169 (= c!1307613 (isEmpty!39526 (_2!37335 (get!23744 lt!2517737))))))

(declare-fun e!4226824 () Bool)

(assert (=> d!2193169 (= (matchZipper!2999 lt!2517610 (_2!37335 (get!23744 lt!2517737))) e!4226824)))

(declare-fun b!7031115 () Bool)

(assert (=> b!7031115 (= e!4226824 (nullableZipper!2575 lt!2517610))))

(declare-fun b!7031116 () Bool)

(assert (=> b!7031116 (= e!4226824 (matchZipper!2999 (derivationStepZipper!2915 lt!2517610 (head!14256 (_2!37335 (get!23744 lt!2517737)))) (tail!13543 (_2!37335 (get!23744 lt!2517737)))))))

(assert (= (and d!2193169 c!1307613) b!7031115))

(assert (= (and d!2193169 (not c!1307613)) b!7031116))

(declare-fun m!7736894 () Bool)

(assert (=> d!2193169 m!7736894))

(assert (=> b!7031115 m!7736030))

(declare-fun m!7736896 () Bool)

(assert (=> b!7031116 m!7736896))

(assert (=> b!7031116 m!7736896))

(declare-fun m!7736898 () Bool)

(assert (=> b!7031116 m!7736898))

(declare-fun m!7736900 () Bool)

(assert (=> b!7031116 m!7736900))

(assert (=> b!7031116 m!7736898))

(assert (=> b!7031116 m!7736900))

(declare-fun m!7736906 () Bool)

(assert (=> b!7031116 m!7736906))

(assert (=> b!7030730 d!2193169))

(assert (=> b!7030730 d!2192941))

(assert (=> bs!1869972 d!2192887))

(declare-fun b!7031152 () Bool)

(declare-fun e!4226854 () Bool)

(declare-fun e!4226851 () Bool)

(assert (=> b!7031152 (= e!4226854 e!4226851)))

(declare-fun res!2870199 () Bool)

(declare-fun call!638491 () Bool)

(assert (=> b!7031152 (= res!2870199 call!638491)))

(assert (=> b!7031152 (=> res!2870199 e!4226851)))

(declare-fun b!7031153 () Bool)

(declare-fun e!4226855 () Bool)

(assert (=> b!7031153 (= e!4226854 e!4226855)))

(declare-fun res!2870197 () Bool)

(declare-fun call!638490 () Bool)

(assert (=> b!7031153 (= res!2870197 call!638490)))

(assert (=> b!7031153 (=> (not res!2870197) (not e!4226855))))

(declare-fun bm!638485 () Bool)

(declare-fun c!1307623 () Bool)

(assert (=> bm!638485 (= call!638491 (nullable!7170 (ite c!1307623 (regOne!35431 (h!74229 (exprs!6955 lt!2517579))) (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun b!7031154 () Bool)

(assert (=> b!7031154 (= e!4226851 call!638490)))

(declare-fun b!7031155 () Bool)

(assert (=> b!7031155 (= e!4226855 call!638491)))

(declare-fun bm!638486 () Bool)

(assert (=> bm!638486 (= call!638490 (nullable!7170 (ite c!1307623 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (regOne!35430 (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun b!7031156 () Bool)

(declare-fun e!4226852 () Bool)

(declare-fun e!4226853 () Bool)

(assert (=> b!7031156 (= e!4226852 e!4226853)))

(declare-fun res!2870198 () Bool)

(assert (=> b!7031156 (=> res!2870198 e!4226853)))

(assert (=> b!7031156 (= res!2870198 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun b!7031158 () Bool)

(assert (=> b!7031158 (= e!4226853 e!4226854)))

(assert (=> b!7031158 (= c!1307623 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun b!7031157 () Bool)

(declare-fun e!4226850 () Bool)

(assert (=> b!7031157 (= e!4226850 e!4226852)))

(declare-fun res!2870196 () Bool)

(assert (=> b!7031157 (=> (not res!2870196) (not e!4226852))))

(assert (=> b!7031157 (= res!2870196 (and (not ((_ is EmptyLang!17459) (h!74229 (exprs!6955 lt!2517579)))) (not ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517579))))))))

(declare-fun d!2193175 () Bool)

(declare-fun res!2870200 () Bool)

(assert (=> d!2193175 (=> res!2870200 e!4226850)))

(assert (=> d!2193175 (= res!2870200 ((_ is EmptyExpr!17459) (h!74229 (exprs!6955 lt!2517579))))))

(assert (=> d!2193175 (= (nullableFct!2723 (h!74229 (exprs!6955 lt!2517579))) e!4226850)))

(assert (= (and d!2193175 (not res!2870200)) b!7031157))

(assert (= (and b!7031157 res!2870196) b!7031156))

(assert (= (and b!7031156 (not res!2870198)) b!7031158))

(assert (= (and b!7031158 c!1307623) b!7031152))

(assert (= (and b!7031158 (not c!1307623)) b!7031153))

(assert (= (and b!7031152 (not res!2870199)) b!7031154))

(assert (= (and b!7031153 res!2870197) b!7031155))

(assert (= (or b!7031154 b!7031153) bm!638486))

(assert (= (or b!7031152 b!7031155) bm!638485))

(declare-fun m!7736946 () Bool)

(assert (=> bm!638485 m!7736946))

(declare-fun m!7736948 () Bool)

(assert (=> bm!638486 m!7736948))

(assert (=> d!2192693 d!2193175))

(declare-fun d!2193193 () Bool)

(declare-fun c!1307630 () Bool)

(assert (=> d!2193193 (= c!1307630 ((_ is Nil!67782) lt!2517723))))

(declare-fun e!4226863 () (InoxSet C!35188))

(assert (=> d!2193193 (= (content!13522 lt!2517723) e!4226863)))

(declare-fun b!7031172 () Bool)

(assert (=> b!7031172 (= e!4226863 ((as const (Array C!35188 Bool)) false))))

(declare-fun b!7031173 () Bool)

(assert (=> b!7031173 (= e!4226863 ((_ map or) (store ((as const (Array C!35188 Bool)) false) (h!74230 lt!2517723) true) (content!13522 (t!381669 lt!2517723))))))

(assert (= (and d!2193193 c!1307630) b!7031172))

(assert (= (and d!2193193 (not c!1307630)) b!7031173))

(declare-fun m!7736962 () Bool)

(assert (=> b!7031173 m!7736962))

(declare-fun m!7736964 () Bool)

(assert (=> b!7031173 m!7736964))

(assert (=> d!2192867 d!2193193))

(declare-fun d!2193201 () Bool)

(declare-fun c!1307632 () Bool)

(assert (=> d!2193201 (= c!1307632 ((_ is Nil!67782) (_1!37335 lt!2517607)))))

(declare-fun e!4226865 () (InoxSet C!35188))

(assert (=> d!2193201 (= (content!13522 (_1!37335 lt!2517607)) e!4226865)))

(declare-fun b!7031176 () Bool)

(assert (=> b!7031176 (= e!4226865 ((as const (Array C!35188 Bool)) false))))

(declare-fun b!7031177 () Bool)

(assert (=> b!7031177 (= e!4226865 ((_ map or) (store ((as const (Array C!35188 Bool)) false) (h!74230 (_1!37335 lt!2517607)) true) (content!13522 (t!381669 (_1!37335 lt!2517607)))))))

(assert (= (and d!2193201 c!1307632) b!7031176))

(assert (= (and d!2193201 (not c!1307632)) b!7031177))

(declare-fun m!7736970 () Bool)

(assert (=> b!7031177 m!7736970))

(assert (=> b!7031177 m!7736504))

(assert (=> d!2192867 d!2193201))

(declare-fun d!2193205 () Bool)

(declare-fun c!1307634 () Bool)

(assert (=> d!2193205 (= c!1307634 ((_ is Nil!67782) (_2!37335 lt!2517607)))))

(declare-fun e!4226867 () (InoxSet C!35188))

(assert (=> d!2193205 (= (content!13522 (_2!37335 lt!2517607)) e!4226867)))

(declare-fun b!7031180 () Bool)

(assert (=> b!7031180 (= e!4226867 ((as const (Array C!35188 Bool)) false))))

(declare-fun b!7031181 () Bool)

(assert (=> b!7031181 (= e!4226867 ((_ map or) (store ((as const (Array C!35188 Bool)) false) (h!74230 (_2!37335 lt!2517607)) true) (content!13522 (t!381669 (_2!37335 lt!2517607)))))))

(assert (= (and d!2193205 c!1307634) b!7031180))

(assert (= (and d!2193205 (not c!1307634)) b!7031181))

(declare-fun m!7736976 () Bool)

(assert (=> b!7031181 m!7736976))

(declare-fun m!7736980 () Bool)

(assert (=> b!7031181 m!7736980))

(assert (=> d!2192867 d!2193205))

(declare-fun b!7031182 () Bool)

(declare-fun c!1307638 () Bool)

(assert (=> b!7031182 (= c!1307638 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517582))))))

(declare-fun e!4226869 () (InoxSet Context!12910))

(declare-fun e!4226873 () (InoxSet Context!12910))

(assert (=> b!7031182 (= e!4226869 e!4226873)))

(declare-fun bm!638488 () Bool)

(declare-fun call!638498 () (InoxSet Context!12910))

(declare-fun call!638494 () (InoxSet Context!12910))

(assert (=> bm!638488 (= call!638498 call!638494)))

(declare-fun b!7031183 () Bool)

(declare-fun e!4226868 () Bool)

(assert (=> b!7031183 (= e!4226868 (nullable!7170 (regOne!35430 (h!74229 (exprs!6955 lt!2517582)))))))

(declare-fun b!7031184 () Bool)

(declare-fun e!4226872 () (InoxSet Context!12910))

(assert (=> b!7031184 (= e!4226872 e!4226869)))

(declare-fun c!1307639 () Bool)

(assert (=> b!7031184 (= c!1307639 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517582))))))

(declare-fun bm!638489 () Bool)

(declare-fun c!1307635 () Bool)

(declare-fun call!638497 () List!67905)

(declare-fun call!638496 () (InoxSet Context!12910))

(assert (=> bm!638489 (= call!638496 (derivationStepZipperDown!2123 (ite c!1307635 (regOne!35431 (h!74229 (exprs!6955 lt!2517582))) (regOne!35430 (h!74229 (exprs!6955 lt!2517582)))) (ite c!1307635 (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (Context!12911 call!638497)) (h!74230 s!7408)))))

(declare-fun c!1307636 () Bool)

(declare-fun bm!638490 () Bool)

(assert (=> bm!638490 (= call!638497 ($colon$colon!2569 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517582)))) (ite (or c!1307636 c!1307639) (regTwo!35430 (h!74229 (exprs!6955 lt!2517582))) (h!74229 (exprs!6955 lt!2517582)))))))

(declare-fun b!7031185 () Bool)

(assert (=> b!7031185 (= e!4226872 ((_ map or) call!638496 call!638494))))

(declare-fun bm!638491 () Bool)

(declare-fun call!638495 () (InoxSet Context!12910))

(assert (=> bm!638491 (= call!638494 call!638495)))

(declare-fun b!7031186 () Bool)

(declare-fun e!4226870 () (InoxSet Context!12910))

(assert (=> b!7031186 (= e!4226870 ((_ map or) call!638496 call!638495))))

(declare-fun d!2193207 () Bool)

(declare-fun c!1307637 () Bool)

(assert (=> d!2193207 (= c!1307637 (and ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517582))) (= (c!1307360 (h!74229 (exprs!6955 lt!2517582))) (h!74230 s!7408))))))

(declare-fun e!4226871 () (InoxSet Context!12910))

(assert (=> d!2193207 (= (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517582)) (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (h!74230 s!7408)) e!4226871)))

(declare-fun b!7031187 () Bool)

(assert (=> b!7031187 (= e!4226871 (store ((as const (Array Context!12910 Bool)) false) (Context!12911 (t!381668 (exprs!6955 lt!2517582))) true))))

(declare-fun b!7031188 () Bool)

(assert (=> b!7031188 (= c!1307636 e!4226868)))

(declare-fun res!2870202 () Bool)

(assert (=> b!7031188 (=> (not res!2870202) (not e!4226868))))

(assert (=> b!7031188 (= res!2870202 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517582))))))

(assert (=> b!7031188 (= e!4226870 e!4226872)))

(declare-fun b!7031189 () Bool)

(assert (=> b!7031189 (= e!4226873 call!638498)))

(declare-fun bm!638492 () Bool)

(declare-fun call!638493 () List!67905)

(assert (=> bm!638492 (= call!638495 (derivationStepZipperDown!2123 (ite c!1307635 (regTwo!35431 (h!74229 (exprs!6955 lt!2517582))) (ite c!1307636 (regTwo!35430 (h!74229 (exprs!6955 lt!2517582))) (ite c!1307639 (regOne!35430 (h!74229 (exprs!6955 lt!2517582))) (reg!17788 (h!74229 (exprs!6955 lt!2517582)))))) (ite (or c!1307635 c!1307636) (Context!12911 (t!381668 (exprs!6955 lt!2517582))) (Context!12911 call!638493)) (h!74230 s!7408)))))

(declare-fun b!7031190 () Bool)

(assert (=> b!7031190 (= e!4226873 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638493 () Bool)

(assert (=> bm!638493 (= call!638493 call!638497)))

(declare-fun b!7031191 () Bool)

(assert (=> b!7031191 (= e!4226869 call!638498)))

(declare-fun b!7031192 () Bool)

(assert (=> b!7031192 (= e!4226871 e!4226870)))

(assert (=> b!7031192 (= c!1307635 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517582))))))

(assert (= (and d!2193207 c!1307637) b!7031187))

(assert (= (and d!2193207 (not c!1307637)) b!7031192))

(assert (= (and b!7031192 c!1307635) b!7031186))

(assert (= (and b!7031192 (not c!1307635)) b!7031188))

(assert (= (and b!7031188 res!2870202) b!7031183))

(assert (= (and b!7031188 c!1307636) b!7031185))

(assert (= (and b!7031188 (not c!1307636)) b!7031184))

(assert (= (and b!7031184 c!1307639) b!7031191))

(assert (= (and b!7031184 (not c!1307639)) b!7031182))

(assert (= (and b!7031182 c!1307638) b!7031189))

(assert (= (and b!7031182 (not c!1307638)) b!7031190))

(assert (= (or b!7031191 b!7031189) bm!638493))

(assert (= (or b!7031191 b!7031189) bm!638488))

(assert (= (or b!7031185 bm!638488) bm!638491))

(assert (= (or b!7031185 bm!638493) bm!638490))

(assert (= (or b!7031186 b!7031185) bm!638489))

(assert (= (or b!7031186 bm!638491) bm!638492))

(declare-fun m!7736990 () Bool)

(assert (=> bm!638490 m!7736990))

(declare-fun m!7736992 () Bool)

(assert (=> b!7031183 m!7736992))

(declare-fun m!7736994 () Bool)

(assert (=> bm!638489 m!7736994))

(declare-fun m!7736996 () Bool)

(assert (=> bm!638492 m!7736996))

(declare-fun m!7736998 () Bool)

(assert (=> b!7031187 m!7736998))

(assert (=> bm!638429 d!2193207))

(declare-fun d!2193217 () Bool)

(declare-fun res!2870203 () Bool)

(declare-fun e!4226875 () Bool)

(assert (=> d!2193217 (=> res!2870203 e!4226875)))

(assert (=> d!2193217 (= res!2870203 ((_ is Nil!67781) (exprs!6955 setElem!49106)))))

(assert (=> d!2193217 (= (forall!16369 (exprs!6955 setElem!49106) lambda!414288) e!4226875)))

(declare-fun b!7031195 () Bool)

(declare-fun e!4226876 () Bool)

(assert (=> b!7031195 (= e!4226875 e!4226876)))

(declare-fun res!2870204 () Bool)

(assert (=> b!7031195 (=> (not res!2870204) (not e!4226876))))

(assert (=> b!7031195 (= res!2870204 (dynLambda!27364 lambda!414288 (h!74229 (exprs!6955 setElem!49106))))))

(declare-fun b!7031196 () Bool)

(assert (=> b!7031196 (= e!4226876 (forall!16369 (t!381668 (exprs!6955 setElem!49106)) lambda!414288))))

(assert (= (and d!2193217 (not res!2870203)) b!7031195))

(assert (= (and b!7031195 res!2870204) b!7031196))

(declare-fun b_lambda!266245 () Bool)

(assert (=> (not b_lambda!266245) (not b!7031195)))

(declare-fun m!7737006 () Bool)

(assert (=> b!7031195 m!7737006))

(declare-fun m!7737008 () Bool)

(assert (=> b!7031196 m!7737008))

(assert (=> d!2192871 d!2193217))

(declare-fun c!1307645 () Bool)

(declare-fun b!7031199 () Bool)

(assert (=> b!7031199 (= c!1307645 ((_ is Star!17459) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))))))

(declare-fun e!4226879 () (InoxSet Context!12910))

(declare-fun e!4226883 () (InoxSet Context!12910))

(assert (=> b!7031199 (= e!4226879 e!4226883)))

(declare-fun bm!638494 () Bool)

(declare-fun call!638504 () (InoxSet Context!12910))

(declare-fun call!638500 () (InoxSet Context!12910))

(assert (=> bm!638494 (= call!638504 call!638500)))

(declare-fun e!4226878 () Bool)

(declare-fun b!7031200 () Bool)

(assert (=> b!7031200 (= e!4226878 (nullable!7170 (regOne!35430 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))))))))

(declare-fun b!7031201 () Bool)

(declare-fun e!4226882 () (InoxSet Context!12910))

(assert (=> b!7031201 (= e!4226882 e!4226879)))

(declare-fun c!1307646 () Bool)

(assert (=> b!7031201 (= c!1307646 ((_ is Concat!26304) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))))))

(declare-fun call!638503 () List!67905)

(declare-fun c!1307642 () Bool)

(declare-fun bm!638495 () Bool)

(declare-fun call!638502 () (InoxSet Context!12910))

(assert (=> bm!638495 (= call!638502 (derivationStepZipperDown!2123 (ite c!1307642 (regOne!35431 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (regOne!35430 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))))) (ite c!1307642 (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428)) (Context!12911 call!638503)) (h!74230 s!7408)))))

(declare-fun c!1307643 () Bool)

(declare-fun bm!638496 () Bool)

(assert (=> bm!638496 (= call!638503 ($colon$colon!2569 (exprs!6955 (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428))) (ite (or c!1307643 c!1307646) (regTwo!35430 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))))))))

(declare-fun b!7031202 () Bool)

(assert (=> b!7031202 (= e!4226882 ((_ map or) call!638502 call!638500))))

(declare-fun bm!638497 () Bool)

(declare-fun call!638501 () (InoxSet Context!12910))

(assert (=> bm!638497 (= call!638500 call!638501)))

(declare-fun b!7031203 () Bool)

(declare-fun e!4226880 () (InoxSet Context!12910))

(assert (=> b!7031203 (= e!4226880 ((_ map or) call!638502 call!638501))))

(declare-fun d!2193221 () Bool)

(declare-fun c!1307644 () Bool)

(assert (=> d!2193221 (= c!1307644 (and ((_ is ElementMatch!17459) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (= (c!1307360 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (h!74230 s!7408))))))

(declare-fun e!4226881 () (InoxSet Context!12910))

(assert (=> d!2193221 (= (derivationStepZipperDown!2123 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))) (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428)) (h!74230 s!7408)) e!4226881)))

(declare-fun b!7031204 () Bool)

(assert (=> b!7031204 (= e!4226881 (store ((as const (Array Context!12910 Bool)) false) (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428)) true))))

(declare-fun b!7031205 () Bool)

(assert (=> b!7031205 (= c!1307643 e!4226878)))

(declare-fun res!2870205 () Bool)

(assert (=> b!7031205 (=> (not res!2870205) (not e!4226878))))

(assert (=> b!7031205 (= res!2870205 ((_ is Concat!26304) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))))))

(assert (=> b!7031205 (= e!4226880 e!4226882)))

(declare-fun b!7031206 () Bool)

(assert (=> b!7031206 (= e!4226883 call!638504)))

(declare-fun call!638499 () List!67905)

(declare-fun bm!638498 () Bool)

(assert (=> bm!638498 (= call!638501 (derivationStepZipperDown!2123 (ite c!1307642 (regTwo!35431 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (ite c!1307643 (regTwo!35430 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (ite c!1307646 (regOne!35430 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))) (reg!17788 (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579)))))))))) (ite (or c!1307642 c!1307643) (ite (or c!1307469 c!1307470) lt!2517613 (Context!12911 call!638428)) (Context!12911 call!638499)) (h!74230 s!7408)))))

(declare-fun b!7031207 () Bool)

(assert (=> b!7031207 (= e!4226883 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638499 () Bool)

(assert (=> bm!638499 (= call!638499 call!638503)))

(declare-fun b!7031208 () Bool)

(assert (=> b!7031208 (= e!4226879 call!638504)))

(declare-fun b!7031209 () Bool)

(assert (=> b!7031209 (= e!4226881 e!4226880)))

(assert (=> b!7031209 (= c!1307642 ((_ is Union!17459) (ite c!1307469 (regTwo!35431 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307470 (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (ite c!1307473 (regOne!35430 (h!74229 (exprs!6955 lt!2517579))) (reg!17788 (h!74229 (exprs!6955 lt!2517579))))))))))

(assert (= (and d!2193221 c!1307644) b!7031204))

(assert (= (and d!2193221 (not c!1307644)) b!7031209))

(assert (= (and b!7031209 c!1307642) b!7031203))

(assert (= (and b!7031209 (not c!1307642)) b!7031205))

(assert (= (and b!7031205 res!2870205) b!7031200))

(assert (= (and b!7031205 c!1307643) b!7031202))

(assert (= (and b!7031205 (not c!1307643)) b!7031201))

(assert (= (and b!7031201 c!1307646) b!7031208))

(assert (= (and b!7031201 (not c!1307646)) b!7031199))

(assert (= (and b!7031199 c!1307645) b!7031206))

(assert (= (and b!7031199 (not c!1307645)) b!7031207))

(assert (= (or b!7031208 b!7031206) bm!638499))

(assert (= (or b!7031208 b!7031206) bm!638494))

(assert (= (or b!7031202 bm!638494) bm!638497))

(assert (= (or b!7031202 bm!638499) bm!638496))

(assert (= (or b!7031203 b!7031202) bm!638495))

(assert (= (or b!7031203 bm!638497) bm!638498))

(declare-fun m!7737016 () Bool)

(assert (=> bm!638496 m!7737016))

(declare-fun m!7737018 () Bool)

(assert (=> b!7031200 m!7737018))

(declare-fun m!7737020 () Bool)

(assert (=> bm!638495 m!7737020))

(declare-fun m!7737022 () Bool)

(assert (=> bm!638498 m!7737022))

(declare-fun m!7737024 () Bool)

(assert (=> b!7031204 m!7737024))

(assert (=> bm!638427 d!2193221))

(declare-fun bs!1870142 () Bool)

(declare-fun d!2193225 () Bool)

(assert (= bs!1870142 (and d!2193225 d!2193141)))

(declare-fun lambda!414324 () Int)

(assert (=> bs!1870142 (= lambda!414324 lambda!414317)))

(declare-fun bs!1870143 () Bool)

(assert (= bs!1870143 (and d!2193225 b!7030377)))

(assert (=> bs!1870143 (not (= lambda!414324 lambda!414253))))

(declare-fun bs!1870144 () Bool)

(assert (= bs!1870144 (and d!2193225 d!2193043)))

(assert (=> bs!1870144 (= lambda!414324 lambda!414311)))

(declare-fun bs!1870145 () Bool)

(assert (= bs!1870145 (and d!2193225 d!2192775)))

(assert (=> bs!1870145 (not (= lambda!414324 lambda!414275))))

(declare-fun bs!1870146 () Bool)

(assert (= bs!1870146 (and d!2193225 d!2193079)))

(assert (=> bs!1870146 (= lambda!414324 lambda!414312)))

(declare-fun bs!1870147 () Bool)

(assert (= bs!1870147 (and d!2193225 b!7030376)))

(assert (=> bs!1870147 (= lambda!414324 lambda!414257)))

(declare-fun bs!1870148 () Bool)

(assert (= bs!1870148 (and d!2193225 d!2192771)))

(assert (=> bs!1870148 (not (= lambda!414324 lambda!414272))))

(declare-fun bs!1870149 () Bool)

(assert (= bs!1870149 (and d!2193225 d!2193015)))

(assert (=> bs!1870149 (= lambda!414324 lambda!414310)))

(assert (=> d!2193225 (= (nullableZipper!2575 lt!2517603) (exists!3380 lt!2517603 lambda!414324))))

(declare-fun bs!1870150 () Bool)

(assert (= bs!1870150 d!2193225))

(declare-fun m!7737026 () Bool)

(assert (=> bs!1870150 m!7737026))

(assert (=> b!7030734 d!2193225))

(declare-fun b!7031213 () Bool)

(declare-fun e!4226884 () Bool)

(declare-fun lt!2517800 () List!67906)

(assert (=> b!7031213 (= e!4226884 (or (not (= (t!381669 s!7408) Nil!67782)) (= lt!2517800 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)))))))

(declare-fun b!7031210 () Bool)

(declare-fun e!4226885 () List!67906)

(assert (=> b!7031210 (= e!4226885 (t!381669 s!7408))))

(declare-fun d!2193227 () Bool)

(assert (=> d!2193227 e!4226884))

(declare-fun res!2870206 () Bool)

(assert (=> d!2193227 (=> (not res!2870206) (not e!4226884))))

(assert (=> d!2193227 (= res!2870206 (= (content!13522 lt!2517800) ((_ map or) (content!13522 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))) (content!13522 (t!381669 s!7408)))))))

(assert (=> d!2193227 (= lt!2517800 e!4226885)))

(declare-fun c!1307647 () Bool)

(assert (=> d!2193227 (= c!1307647 ((_ is Nil!67782) (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))))))

(assert (=> d!2193227 (= (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408)) lt!2517800)))

(declare-fun b!7031212 () Bool)

(declare-fun res!2870207 () Bool)

(assert (=> b!7031212 (=> (not res!2870207) (not e!4226884))))

(assert (=> b!7031212 (= res!2870207 (= (size!41055 lt!2517800) (+ (size!41055 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))) (size!41055 (t!381669 s!7408)))))))

(declare-fun b!7031211 () Bool)

(assert (=> b!7031211 (= e!4226885 (Cons!67782 (h!74230 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))) (++!15499 (t!381669 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))) (t!381669 s!7408))))))

(assert (= (and d!2193227 c!1307647) b!7031210))

(assert (= (and d!2193227 (not c!1307647)) b!7031211))

(assert (= (and d!2193227 res!2870206) b!7031212))

(assert (= (and b!7031212 res!2870207) b!7031213))

(declare-fun m!7737028 () Bool)

(assert (=> d!2193227 m!7737028))

(assert (=> d!2193227 m!7736304))

(declare-fun m!7737030 () Bool)

(assert (=> d!2193227 m!7737030))

(declare-fun m!7737032 () Bool)

(assert (=> d!2193227 m!7737032))

(declare-fun m!7737034 () Bool)

(assert (=> b!7031212 m!7737034))

(assert (=> b!7031212 m!7736304))

(declare-fun m!7737036 () Bool)

(assert (=> b!7031212 m!7737036))

(declare-fun m!7737038 () Bool)

(assert (=> b!7031212 m!7737038))

(declare-fun m!7737040 () Bool)

(assert (=> b!7031211 m!7737040))

(assert (=> b!7030725 d!2193227))

(declare-fun b!7031219 () Bool)

(declare-fun e!4226888 () Bool)

(declare-fun lt!2517801 () List!67906)

(assert (=> b!7031219 (= e!4226888 (or (not (= (Cons!67782 (h!74230 s!7408) Nil!67782) Nil!67782)) (= lt!2517801 Nil!67782)))))

(declare-fun b!7031216 () Bool)

(declare-fun e!4226889 () List!67906)

(assert (=> b!7031216 (= e!4226889 (Cons!67782 (h!74230 s!7408) Nil!67782))))

(declare-fun d!2193229 () Bool)

(assert (=> d!2193229 e!4226888))

(declare-fun res!2870210 () Bool)

(assert (=> d!2193229 (=> (not res!2870210) (not e!4226888))))

(assert (=> d!2193229 (= res!2870210 (= (content!13522 lt!2517801) ((_ map or) (content!13522 Nil!67782) (content!13522 (Cons!67782 (h!74230 s!7408) Nil!67782)))))))

(assert (=> d!2193229 (= lt!2517801 e!4226889)))

(declare-fun c!1307648 () Bool)

(assert (=> d!2193229 (= c!1307648 ((_ is Nil!67782) Nil!67782))))

(assert (=> d!2193229 (= (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) lt!2517801)))

(declare-fun b!7031218 () Bool)

(declare-fun res!2870211 () Bool)

(assert (=> b!7031218 (=> (not res!2870211) (not e!4226888))))

(assert (=> b!7031218 (= res!2870211 (= (size!41055 lt!2517801) (+ (size!41055 Nil!67782) (size!41055 (Cons!67782 (h!74230 s!7408) Nil!67782)))))))

(declare-fun b!7031217 () Bool)

(assert (=> b!7031217 (= e!4226889 (Cons!67782 (h!74230 Nil!67782) (++!15499 (t!381669 Nil!67782) (Cons!67782 (h!74230 s!7408) Nil!67782))))))

(assert (= (and d!2193229 c!1307648) b!7031216))

(assert (= (and d!2193229 (not c!1307648)) b!7031217))

(assert (= (and d!2193229 res!2870210) b!7031218))

(assert (= (and b!7031218 res!2870211) b!7031219))

(declare-fun m!7737042 () Bool)

(assert (=> d!2193229 m!7737042))

(assert (=> d!2193229 m!7736734))

(declare-fun m!7737044 () Bool)

(assert (=> d!2193229 m!7737044))

(declare-fun m!7737046 () Bool)

(assert (=> b!7031218 m!7737046))

(assert (=> b!7031218 m!7736742))

(declare-fun m!7737048 () Bool)

(assert (=> b!7031218 m!7737048))

(declare-fun m!7737050 () Bool)

(assert (=> b!7031217 m!7737050))

(assert (=> b!7030725 d!2193229))

(declare-fun d!2193231 () Bool)

(assert (=> d!2193231 (= (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408)) s!7408)))

(declare-fun lt!2517806 () Unit!161586)

(declare-fun choose!53213 (List!67906 C!35188 List!67906 List!67906) Unit!161586)

(assert (=> d!2193231 (= lt!2517806 (choose!53213 Nil!67782 (h!74230 s!7408) (t!381669 s!7408) s!7408))))

(assert (=> d!2193231 (= (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) (t!381669 s!7408))) s!7408)))

(assert (=> d!2193231 (= (lemmaMoveElementToOtherListKeepsConcatEq!2919 Nil!67782 (h!74230 s!7408) (t!381669 s!7408) s!7408) lt!2517806)))

(declare-fun bs!1870163 () Bool)

(assert (= bs!1870163 d!2193231))

(assert (=> bs!1870163 m!7736304))

(assert (=> bs!1870163 m!7736304))

(assert (=> bs!1870163 m!7736306))

(declare-fun m!7737056 () Bool)

(assert (=> bs!1870163 m!7737056))

(declare-fun m!7737058 () Bool)

(assert (=> bs!1870163 m!7737058))

(assert (=> b!7030725 d!2193231))

(declare-fun b!7031231 () Bool)

(declare-fun lt!2517809 () Unit!161586)

(declare-fun lt!2517810 () Unit!161586)

(assert (=> b!7031231 (= lt!2517809 lt!2517810)))

(assert (=> b!7031231 (= (++!15499 (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (Cons!67782 (h!74230 (t!381669 s!7408)) Nil!67782)) (t!381669 (t!381669 s!7408))) s!7408)))

(assert (=> b!7031231 (= lt!2517810 (lemmaMoveElementToOtherListKeepsConcatEq!2919 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (h!74230 (t!381669 s!7408)) (t!381669 (t!381669 s!7408)) s!7408))))

(declare-fun e!4226900 () Option!16864)

(assert (=> b!7031231 (= e!4226900 (findConcatSeparationZippers!380 lt!2517603 lt!2517610 (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (Cons!67782 (h!74230 (t!381669 s!7408)) Nil!67782)) (t!381669 (t!381669 s!7408)) s!7408))))

(declare-fun b!7031232 () Bool)

(declare-fun e!4226895 () Bool)

(declare-fun lt!2517812 () Option!16864)

(assert (=> b!7031232 (= e!4226895 (not (isDefined!13565 lt!2517812)))))

(declare-fun b!7031233 () Bool)

(declare-fun e!4226896 () Bool)

(assert (=> b!7031233 (= e!4226896 (matchZipper!2999 lt!2517610 (t!381669 s!7408)))))

(declare-fun b!7031234 () Bool)

(declare-fun e!4226897 () Option!16864)

(assert (=> b!7031234 (= e!4226897 (Some!16863 (tuple2!68065 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408))))))

(declare-fun d!2193239 () Bool)

(assert (=> d!2193239 e!4226895))

(declare-fun res!2870216 () Bool)

(assert (=> d!2193239 (=> res!2870216 e!4226895)))

(declare-fun e!4226899 () Bool)

(assert (=> d!2193239 (= res!2870216 e!4226899)))

(declare-fun res!2870213 () Bool)

(assert (=> d!2193239 (=> (not res!2870213) (not e!4226899))))

(assert (=> d!2193239 (= res!2870213 (isDefined!13565 lt!2517812))))

(assert (=> d!2193239 (= lt!2517812 e!4226897)))

(declare-fun c!1307653 () Bool)

(assert (=> d!2193239 (= c!1307653 e!4226896)))

(declare-fun res!2870215 () Bool)

(assert (=> d!2193239 (=> (not res!2870215) (not e!4226896))))

(assert (=> d!2193239 (= res!2870215 (matchZipper!2999 lt!2517603 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782))))))

(assert (=> d!2193239 (= (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408)) s!7408)))

(assert (=> d!2193239 (= (findConcatSeparationZippers!380 lt!2517603 lt!2517610 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408) s!7408) lt!2517812)))

(declare-fun b!7031235 () Bool)

(assert (=> b!7031235 (= e!4226897 e!4226900)))

(declare-fun c!1307655 () Bool)

(assert (=> b!7031235 (= c!1307655 ((_ is Nil!67782) (t!381669 s!7408)))))

(declare-fun b!7031236 () Bool)

(declare-fun res!2870214 () Bool)

(assert (=> b!7031236 (=> (not res!2870214) (not e!4226899))))

(assert (=> b!7031236 (= res!2870214 (matchZipper!2999 lt!2517610 (_2!37335 (get!23744 lt!2517812))))))

(declare-fun b!7031237 () Bool)

(declare-fun res!2870217 () Bool)

(assert (=> b!7031237 (=> (not res!2870217) (not e!4226899))))

(assert (=> b!7031237 (= res!2870217 (matchZipper!2999 lt!2517603 (_1!37335 (get!23744 lt!2517812))))))

(declare-fun b!7031238 () Bool)

(assert (=> b!7031238 (= e!4226899 (= (++!15499 (_1!37335 (get!23744 lt!2517812)) (_2!37335 (get!23744 lt!2517812))) s!7408))))

(declare-fun b!7031239 () Bool)

(assert (=> b!7031239 (= e!4226900 None!16863)))

(assert (= (and d!2193239 res!2870215) b!7031233))

(assert (= (and d!2193239 c!1307653) b!7031234))

(assert (= (and d!2193239 (not c!1307653)) b!7031235))

(assert (= (and b!7031235 c!1307655) b!7031239))

(assert (= (and b!7031235 (not c!1307655)) b!7031231))

(assert (= (and d!2193239 res!2870213) b!7031237))

(assert (= (and b!7031237 res!2870217) b!7031236))

(assert (= (and b!7031236 res!2870214) b!7031238))

(assert (= (and d!2193239 (not res!2870216)) b!7031232))

(declare-fun m!7737070 () Bool)

(assert (=> b!7031236 m!7737070))

(declare-fun m!7737072 () Bool)

(assert (=> b!7031236 m!7737072))

(assert (=> b!7031238 m!7737070))

(declare-fun m!7737074 () Bool)

(assert (=> b!7031238 m!7737074))

(assert (=> b!7031237 m!7737070))

(declare-fun m!7737076 () Bool)

(assert (=> b!7031237 m!7737076))

(declare-fun m!7737078 () Bool)

(assert (=> b!7031233 m!7737078))

(assert (=> b!7031231 m!7736304))

(declare-fun m!7737080 () Bool)

(assert (=> b!7031231 m!7737080))

(assert (=> b!7031231 m!7737080))

(declare-fun m!7737082 () Bool)

(assert (=> b!7031231 m!7737082))

(assert (=> b!7031231 m!7736304))

(declare-fun m!7737084 () Bool)

(assert (=> b!7031231 m!7737084))

(assert (=> b!7031231 m!7737080))

(declare-fun m!7737086 () Bool)

(assert (=> b!7031231 m!7737086))

(declare-fun m!7737088 () Bool)

(assert (=> d!2193239 m!7737088))

(assert (=> d!2193239 m!7736304))

(declare-fun m!7737090 () Bool)

(assert (=> d!2193239 m!7737090))

(assert (=> d!2193239 m!7736304))

(assert (=> d!2193239 m!7736306))

(assert (=> b!7031232 m!7737088))

(assert (=> b!7030725 d!2193239))

(declare-fun d!2193247 () Bool)

(assert (=> d!2193247 true))

(declare-fun setRes!49122 () Bool)

(assert (=> d!2193247 setRes!49122))

(declare-fun condSetEmpty!49122 () Bool)

(declare-fun res!2870223 () (InoxSet Context!12910))

(assert (=> d!2193247 (= condSetEmpty!49122 (= res!2870223 ((as const (Array Context!12910 Bool)) false)))))

(assert (=> d!2193247 (= (choose!53205 lt!2517591 lambda!414256) res!2870223)))

(declare-fun setIsEmpty!49122 () Bool)

(assert (=> setIsEmpty!49122 setRes!49122))

(declare-fun e!4226911 () Bool)

(declare-fun setElem!49122 () Context!12910)

(declare-fun tp!1936228 () Bool)

(declare-fun setNonEmpty!49122 () Bool)

(assert (=> setNonEmpty!49122 (= setRes!49122 (and tp!1936228 (inv!86506 setElem!49122) e!4226911))))

(declare-fun setRest!49122 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49122 (= res!2870223 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49122 true) setRest!49122))))

(declare-fun b!7031257 () Bool)

(declare-fun tp!1936229 () Bool)

(assert (=> b!7031257 (= e!4226911 tp!1936229)))

(assert (= (and d!2193247 condSetEmpty!49122) setIsEmpty!49122))

(assert (= (and d!2193247 (not condSetEmpty!49122)) setNonEmpty!49122))

(assert (= setNonEmpty!49122 b!7031257))

(declare-fun m!7737102 () Bool)

(assert (=> setNonEmpty!49122 m!7737102))

(assert (=> d!2192815 d!2193247))

(declare-fun d!2193253 () Bool)

(declare-fun c!1307663 () Bool)

(assert (=> d!2193253 (= c!1307663 (isEmpty!39526 (tail!13543 (t!381669 s!7408))))))

(declare-fun e!4226913 () Bool)

(assert (=> d!2193253 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517614 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))) e!4226913)))

(declare-fun b!7031260 () Bool)

(assert (=> b!7031260 (= e!4226913 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517614 (head!14256 (t!381669 s!7408)))))))

(declare-fun b!7031261 () Bool)

(assert (=> b!7031261 (= e!4226913 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517614 (head!14256 (t!381669 s!7408))) (head!14256 (tail!13543 (t!381669 s!7408)))) (tail!13543 (tail!13543 (t!381669 s!7408)))))))

(assert (= (and d!2193253 c!1307663) b!7031260))

(assert (= (and d!2193253 (not c!1307663)) b!7031261))

(assert (=> d!2193253 m!7735830))

(assert (=> d!2193253 m!7736798))

(assert (=> b!7031260 m!7735922))

(declare-fun m!7737108 () Bool)

(assert (=> b!7031260 m!7737108))

(assert (=> b!7031261 m!7735830))

(assert (=> b!7031261 m!7736802))

(assert (=> b!7031261 m!7735922))

(assert (=> b!7031261 m!7736802))

(declare-fun m!7737110 () Bool)

(assert (=> b!7031261 m!7737110))

(assert (=> b!7031261 m!7735830))

(assert (=> b!7031261 m!7736806))

(assert (=> b!7031261 m!7737110))

(assert (=> b!7031261 m!7736806))

(declare-fun m!7737112 () Bool)

(assert (=> b!7031261 m!7737112))

(assert (=> b!7030468 d!2193253))

(declare-fun bs!1870166 () Bool)

(declare-fun d!2193257 () Bool)

(assert (= bs!1870166 (and d!2193257 d!2192947)))

(declare-fun lambda!414326 () Int)

(assert (=> bs!1870166 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414326 lambda!414297))))

(declare-fun bs!1870169 () Bool)

(assert (= bs!1870169 (and d!2193257 d!2193127)))

(assert (=> bs!1870169 (= lambda!414326 lambda!414315)))

(declare-fun bs!1870171 () Bool)

(assert (= bs!1870171 (and d!2193257 d!2192927)))

(assert (=> bs!1870171 (= (= (head!14256 (t!381669 s!7408)) (head!14256 (_2!37335 lt!2517607))) (= lambda!414326 lambda!414296))))

(declare-fun bs!1870173 () Bool)

(assert (= bs!1870173 (and d!2193257 b!7030364)))

(assert (=> bs!1870173 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414326 lambda!414256))))

(declare-fun bs!1870175 () Bool)

(assert (= bs!1870175 (and d!2193257 d!2192993)))

(assert (=> bs!1870175 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414326 lambda!414302))))

(declare-fun bs!1870177 () Bool)

(assert (= bs!1870177 (and d!2193257 d!2193135)))

(assert (=> bs!1870177 (= lambda!414326 lambda!414316)))

(declare-fun bs!1870179 () Bool)

(assert (= bs!1870179 (and d!2193257 d!2193013)))

(assert (=> bs!1870179 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414326 lambda!414304))))

(declare-fun bs!1870181 () Bool)

(assert (= bs!1870181 (and d!2193257 d!2192797)))

(assert (=> bs!1870181 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414326 lambda!414279))))

(declare-fun bs!1870183 () Bool)

(assert (= bs!1870183 (and d!2193257 d!2192891)))

(assert (=> bs!1870183 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414326 lambda!414289))))

(assert (=> d!2193257 true))

(assert (=> d!2193257 (= (derivationStepZipper!2915 lt!2517614 (head!14256 (t!381669 s!7408))) (flatMap!2406 lt!2517614 lambda!414326))))

(declare-fun bs!1870186 () Bool)

(assert (= bs!1870186 d!2193257))

(declare-fun m!7737114 () Bool)

(assert (=> bs!1870186 m!7737114))

(assert (=> b!7030468 d!2193257))

(assert (=> b!7030468 d!2193129))

(assert (=> b!7030468 d!2193131))

(assert (=> d!2192739 d!2192923))

(declare-fun d!2193261 () Bool)

(assert (=> d!2193261 (isDefined!13565 (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) Nil!67782 s!7408 s!7408))))

(assert (=> d!2193261 true))

(declare-fun _$50!563 () Unit!161586)

(assert (=> d!2193261 (= (choose!53212 lt!2517603 ct2!306 s!7408) _$50!563)))

(declare-fun bs!1870188 () Bool)

(assert (= bs!1870188 d!2193261))

(assert (=> bs!1870188 m!7735676))

(assert (=> bs!1870188 m!7735676))

(assert (=> bs!1870188 m!7736334))

(assert (=> bs!1870188 m!7736334))

(assert (=> bs!1870188 m!7736336))

(assert (=> d!2192885 d!2193261))

(declare-fun d!2193265 () Bool)

(assert (=> d!2193265 (= (isDefined!13565 (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) Nil!67782 s!7408 s!7408)) (not (isEmpty!39529 (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) Nil!67782 s!7408 s!7408))))))

(declare-fun bs!1870189 () Bool)

(assert (= bs!1870189 d!2193265))

(assert (=> bs!1870189 m!7736334))

(declare-fun m!7737118 () Bool)

(assert (=> bs!1870189 m!7737118))

(assert (=> d!2192885 d!2193265))

(declare-fun b!7031278 () Bool)

(declare-fun lt!2517816 () Unit!161586)

(declare-fun lt!2517817 () Unit!161586)

(assert (=> b!7031278 (= lt!2517816 lt!2517817)))

(assert (=> b!7031278 (= (++!15499 (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408)) s!7408)))

(assert (=> b!7031278 (= lt!2517817 (lemmaMoveElementToOtherListKeepsConcatEq!2919 Nil!67782 (h!74230 s!7408) (t!381669 s!7408) s!7408))))

(declare-fun e!4226926 () Option!16864)

(assert (=> b!7031278 (= e!4226926 (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) (++!15499 Nil!67782 (Cons!67782 (h!74230 s!7408) Nil!67782)) (t!381669 s!7408) s!7408))))

(declare-fun b!7031279 () Bool)

(declare-fun e!4226922 () Bool)

(declare-fun lt!2517818 () Option!16864)

(assert (=> b!7031279 (= e!4226922 (not (isDefined!13565 lt!2517818)))))

(declare-fun b!7031280 () Bool)

(declare-fun e!4226923 () Bool)

(assert (=> b!7031280 (= e!4226923 (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) s!7408))))

(declare-fun b!7031281 () Bool)

(declare-fun e!4226924 () Option!16864)

(assert (=> b!7031281 (= e!4226924 (Some!16863 (tuple2!68065 Nil!67782 s!7408)))))

(declare-fun d!2193267 () Bool)

(assert (=> d!2193267 e!4226922))

(declare-fun res!2870227 () Bool)

(assert (=> d!2193267 (=> res!2870227 e!4226922)))

(declare-fun e!4226925 () Bool)

(assert (=> d!2193267 (= res!2870227 e!4226925)))

(declare-fun res!2870224 () Bool)

(assert (=> d!2193267 (=> (not res!2870224) (not e!4226925))))

(assert (=> d!2193267 (= res!2870224 (isDefined!13565 lt!2517818))))

(assert (=> d!2193267 (= lt!2517818 e!4226924)))

(declare-fun c!1307672 () Bool)

(assert (=> d!2193267 (= c!1307672 e!4226923)))

(declare-fun res!2870226 () Bool)

(assert (=> d!2193267 (=> (not res!2870226) (not e!4226923))))

(assert (=> d!2193267 (= res!2870226 (matchZipper!2999 lt!2517603 Nil!67782))))

(assert (=> d!2193267 (= (++!15499 Nil!67782 s!7408) s!7408)))

(assert (=> d!2193267 (= (findConcatSeparationZippers!380 lt!2517603 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) Nil!67782 s!7408 s!7408) lt!2517818)))

(declare-fun b!7031282 () Bool)

(assert (=> b!7031282 (= e!4226924 e!4226926)))

(declare-fun c!1307673 () Bool)

(assert (=> b!7031282 (= c!1307673 ((_ is Nil!67782) s!7408))))

(declare-fun b!7031283 () Bool)

(declare-fun res!2870225 () Bool)

(assert (=> b!7031283 (=> (not res!2870225) (not e!4226925))))

(assert (=> b!7031283 (= res!2870225 (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) ct2!306 true) (_2!37335 (get!23744 lt!2517818))))))

(declare-fun b!7031284 () Bool)

(declare-fun res!2870228 () Bool)

(assert (=> b!7031284 (=> (not res!2870228) (not e!4226925))))

(assert (=> b!7031284 (= res!2870228 (matchZipper!2999 lt!2517603 (_1!37335 (get!23744 lt!2517818))))))

(declare-fun b!7031285 () Bool)

(assert (=> b!7031285 (= e!4226925 (= (++!15499 (_1!37335 (get!23744 lt!2517818)) (_2!37335 (get!23744 lt!2517818))) s!7408))))

(declare-fun b!7031286 () Bool)

(assert (=> b!7031286 (= e!4226926 None!16863)))

(assert (= (and d!2193267 res!2870226) b!7031280))

(assert (= (and d!2193267 c!1307672) b!7031281))

(assert (= (and d!2193267 (not c!1307672)) b!7031282))

(assert (= (and b!7031282 c!1307673) b!7031286))

(assert (= (and b!7031282 (not c!1307673)) b!7031278))

(assert (= (and d!2193267 res!2870224) b!7031284))

(assert (= (and b!7031284 res!2870228) b!7031283))

(assert (= (and b!7031283 res!2870225) b!7031285))

(assert (= (and d!2193267 (not res!2870227)) b!7031279))

(declare-fun m!7737120 () Bool)

(assert (=> b!7031283 m!7737120))

(assert (=> b!7031283 m!7735676))

(declare-fun m!7737124 () Bool)

(assert (=> b!7031283 m!7737124))

(assert (=> b!7031285 m!7737120))

(declare-fun m!7737128 () Bool)

(assert (=> b!7031285 m!7737128))

(assert (=> b!7031284 m!7737120))

(declare-fun m!7737130 () Bool)

(assert (=> b!7031284 m!7737130))

(assert (=> b!7031280 m!7735676))

(declare-fun m!7737132 () Bool)

(assert (=> b!7031280 m!7737132))

(assert (=> b!7031278 m!7736304))

(assert (=> b!7031278 m!7736304))

(assert (=> b!7031278 m!7736306))

(assert (=> b!7031278 m!7736308))

(assert (=> b!7031278 m!7735676))

(assert (=> b!7031278 m!7736304))

(declare-fun m!7737134 () Bool)

(assert (=> b!7031278 m!7737134))

(declare-fun m!7737138 () Bool)

(assert (=> d!2193267 m!7737138))

(assert (=> d!2193267 m!7736314))

(assert (=> d!2193267 m!7736316))

(assert (=> b!7031279 m!7737138))

(assert (=> d!2192885 d!2193267))

(declare-fun bs!1870191 () Bool)

(declare-fun d!2193273 () Bool)

(assert (= bs!1870191 (and d!2193273 b!7030373)))

(declare-fun lambda!414328 () Int)

(assert (=> bs!1870191 (= lambda!414328 lambda!414254)))

(declare-fun bs!1870192 () Bool)

(assert (= bs!1870192 (and d!2193273 d!2192897)))

(assert (=> bs!1870192 (= lambda!414328 lambda!414294)))

(assert (=> d!2193273 true))

(assert (=> d!2193273 (= (appendTo!580 lt!2517603 ct2!306) (map!15756 lt!2517603 lambda!414328))))

(declare-fun bs!1870193 () Bool)

(assert (= bs!1870193 d!2193273))

(declare-fun m!7737154 () Bool)

(assert (=> bs!1870193 m!7737154))

(assert (=> d!2192885 d!2193273))

(declare-fun d!2193281 () Bool)

(declare-fun c!1307679 () Bool)

(assert (=> d!2193281 (= c!1307679 (isEmpty!39526 s!7408))))

(declare-fun e!4226937 () Bool)

(assert (=> d!2193281 (= (matchZipper!2999 (appendTo!580 lt!2517603 ct2!306) s!7408) e!4226937)))

(declare-fun b!7031302 () Bool)

(assert (=> b!7031302 (= e!4226937 (nullableZipper!2575 (appendTo!580 lt!2517603 ct2!306)))))

(declare-fun b!7031303 () Bool)

(assert (=> b!7031303 (= e!4226937 (matchZipper!2999 (derivationStepZipper!2915 (appendTo!580 lt!2517603 ct2!306) (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2193281 c!1307679) b!7031302))

(assert (= (and d!2193281 (not c!1307679)) b!7031303))

(assert (=> d!2193281 m!7736016))

(assert (=> b!7031302 m!7736330))

(declare-fun m!7737160 () Bool)

(assert (=> b!7031302 m!7737160))

(assert (=> b!7031303 m!7736020))

(assert (=> b!7031303 m!7736330))

(assert (=> b!7031303 m!7736020))

(declare-fun m!7737162 () Bool)

(assert (=> b!7031303 m!7737162))

(assert (=> b!7031303 m!7736024))

(assert (=> b!7031303 m!7737162))

(assert (=> b!7031303 m!7736024))

(declare-fun m!7737166 () Bool)

(assert (=> b!7031303 m!7737166))

(assert (=> d!2192885 d!2193281))

(declare-fun d!2193287 () Bool)

(assert (=> d!2193287 true))

(declare-fun setRes!49123 () Bool)

(assert (=> d!2193287 setRes!49123))

(declare-fun condSetEmpty!49123 () Bool)

(declare-fun res!2870233 () (InoxSet Context!12910))

(assert (=> d!2193287 (= condSetEmpty!49123 (= res!2870233 ((as const (Array Context!12910 Bool)) false)))))

(assert (=> d!2193287 (= (choose!53205 lt!2517584 lambda!414256) res!2870233)))

(declare-fun setIsEmpty!49123 () Bool)

(assert (=> setIsEmpty!49123 setRes!49123))

(declare-fun tp!1936232 () Bool)

(declare-fun setElem!49123 () Context!12910)

(declare-fun setNonEmpty!49123 () Bool)

(declare-fun e!4226939 () Bool)

(assert (=> setNonEmpty!49123 (= setRes!49123 (and tp!1936232 (inv!86506 setElem!49123) e!4226939))))

(declare-fun setRest!49123 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49123 (= res!2870233 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49123 true) setRest!49123))))

(declare-fun b!7031306 () Bool)

(declare-fun tp!1936233 () Bool)

(assert (=> b!7031306 (= e!4226939 tp!1936233)))

(assert (= (and d!2193287 condSetEmpty!49123) setIsEmpty!49123))

(assert (= (and d!2193287 (not condSetEmpty!49123)) setNonEmpty!49123))

(assert (= setNonEmpty!49123 b!7031306))

(declare-fun m!7737178 () Bool)

(assert (=> setNonEmpty!49123 m!7737178))

(assert (=> d!2192889 d!2193287))

(declare-fun b!7031307 () Bool)

(declare-fun c!1307684 () Bool)

(assert (=> b!7031307 (= c!1307684 ((_ is Star!17459) (h!74229 (exprs!6955 lt!2517613))))))

(declare-fun e!4226941 () (InoxSet Context!12910))

(declare-fun e!4226945 () (InoxSet Context!12910))

(assert (=> b!7031307 (= e!4226941 e!4226945)))

(declare-fun bm!638515 () Bool)

(declare-fun call!638525 () (InoxSet Context!12910))

(declare-fun call!638521 () (InoxSet Context!12910))

(assert (=> bm!638515 (= call!638525 call!638521)))

(declare-fun b!7031308 () Bool)

(declare-fun e!4226940 () Bool)

(assert (=> b!7031308 (= e!4226940 (nullable!7170 (regOne!35430 (h!74229 (exprs!6955 lt!2517613)))))))

(declare-fun b!7031309 () Bool)

(declare-fun e!4226944 () (InoxSet Context!12910))

(assert (=> b!7031309 (= e!4226944 e!4226941)))

(declare-fun c!1307685 () Bool)

(assert (=> b!7031309 (= c!1307685 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517613))))))

(declare-fun call!638523 () (InoxSet Context!12910))

(declare-fun call!638524 () List!67905)

(declare-fun c!1307681 () Bool)

(declare-fun bm!638516 () Bool)

(assert (=> bm!638516 (= call!638523 (derivationStepZipperDown!2123 (ite c!1307681 (regOne!35431 (h!74229 (exprs!6955 lt!2517613))) (regOne!35430 (h!74229 (exprs!6955 lt!2517613)))) (ite c!1307681 (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (Context!12911 call!638524)) (h!74230 s!7408)))))

(declare-fun c!1307682 () Bool)

(declare-fun bm!638517 () Bool)

(assert (=> bm!638517 (= call!638524 ($colon$colon!2569 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517613)))) (ite (or c!1307682 c!1307685) (regTwo!35430 (h!74229 (exprs!6955 lt!2517613))) (h!74229 (exprs!6955 lt!2517613)))))))

(declare-fun b!7031310 () Bool)

(assert (=> b!7031310 (= e!4226944 ((_ map or) call!638523 call!638521))))

(declare-fun bm!638518 () Bool)

(declare-fun call!638522 () (InoxSet Context!12910))

(assert (=> bm!638518 (= call!638521 call!638522)))

(declare-fun b!7031311 () Bool)

(declare-fun e!4226942 () (InoxSet Context!12910))

(assert (=> b!7031311 (= e!4226942 ((_ map or) call!638523 call!638522))))

(declare-fun d!2193291 () Bool)

(declare-fun c!1307683 () Bool)

(assert (=> d!2193291 (= c!1307683 (and ((_ is ElementMatch!17459) (h!74229 (exprs!6955 lt!2517613))) (= (c!1307360 (h!74229 (exprs!6955 lt!2517613))) (h!74230 s!7408))))))

(declare-fun e!4226943 () (InoxSet Context!12910))

(assert (=> d!2193291 (= (derivationStepZipperDown!2123 (h!74229 (exprs!6955 lt!2517613)) (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (h!74230 s!7408)) e!4226943)))

(declare-fun b!7031312 () Bool)

(assert (=> b!7031312 (= e!4226943 (store ((as const (Array Context!12910 Bool)) false) (Context!12911 (t!381668 (exprs!6955 lt!2517613))) true))))

(declare-fun b!7031313 () Bool)

(assert (=> b!7031313 (= c!1307682 e!4226940)))

(declare-fun res!2870234 () Bool)

(assert (=> b!7031313 (=> (not res!2870234) (not e!4226940))))

(assert (=> b!7031313 (= res!2870234 ((_ is Concat!26304) (h!74229 (exprs!6955 lt!2517613))))))

(assert (=> b!7031313 (= e!4226942 e!4226944)))

(declare-fun b!7031314 () Bool)

(assert (=> b!7031314 (= e!4226945 call!638525)))

(declare-fun bm!638519 () Bool)

(declare-fun call!638520 () List!67905)

(assert (=> bm!638519 (= call!638522 (derivationStepZipperDown!2123 (ite c!1307681 (regTwo!35431 (h!74229 (exprs!6955 lt!2517613))) (ite c!1307682 (regTwo!35430 (h!74229 (exprs!6955 lt!2517613))) (ite c!1307685 (regOne!35430 (h!74229 (exprs!6955 lt!2517613))) (reg!17788 (h!74229 (exprs!6955 lt!2517613)))))) (ite (or c!1307681 c!1307682) (Context!12911 (t!381668 (exprs!6955 lt!2517613))) (Context!12911 call!638520)) (h!74230 s!7408)))))

(declare-fun b!7031315 () Bool)

(assert (=> b!7031315 (= e!4226945 ((as const (Array Context!12910 Bool)) false))))

(declare-fun bm!638520 () Bool)

(assert (=> bm!638520 (= call!638520 call!638524)))

(declare-fun b!7031316 () Bool)

(assert (=> b!7031316 (= e!4226941 call!638525)))

(declare-fun b!7031317 () Bool)

(assert (=> b!7031317 (= e!4226943 e!4226942)))

(assert (=> b!7031317 (= c!1307681 ((_ is Union!17459) (h!74229 (exprs!6955 lt!2517613))))))

(assert (= (and d!2193291 c!1307683) b!7031312))

(assert (= (and d!2193291 (not c!1307683)) b!7031317))

(assert (= (and b!7031317 c!1307681) b!7031311))

(assert (= (and b!7031317 (not c!1307681)) b!7031313))

(assert (= (and b!7031313 res!2870234) b!7031308))

(assert (= (and b!7031313 c!1307682) b!7031310))

(assert (= (and b!7031313 (not c!1307682)) b!7031309))

(assert (= (and b!7031309 c!1307685) b!7031316))

(assert (= (and b!7031309 (not c!1307685)) b!7031307))

(assert (= (and b!7031307 c!1307684) b!7031314))

(assert (= (and b!7031307 (not c!1307684)) b!7031315))

(assert (= (or b!7031316 b!7031314) bm!638520))

(assert (= (or b!7031316 b!7031314) bm!638515))

(assert (= (or b!7031310 bm!638515) bm!638518))

(assert (= (or b!7031310 bm!638520) bm!638517))

(assert (= (or b!7031311 b!7031310) bm!638516))

(assert (= (or b!7031311 bm!638518) bm!638519))

(declare-fun m!7737182 () Bool)

(assert (=> bm!638517 m!7737182))

(declare-fun m!7737184 () Bool)

(assert (=> b!7031308 m!7737184))

(declare-fun m!7737186 () Bool)

(assert (=> bm!638516 m!7737186))

(declare-fun m!7737188 () Bool)

(assert (=> bm!638519 m!7737188))

(declare-fun m!7737190 () Bool)

(assert (=> b!7031312 m!7737190))

(assert (=> bm!638409 d!2193291))

(declare-fun d!2193299 () Bool)

(declare-fun res!2870237 () Bool)

(declare-fun e!4226948 () Bool)

(assert (=> d!2193299 (=> res!2870237 e!4226948)))

(assert (=> d!2193299 (= res!2870237 ((_ is Nil!67783) lt!2517680))))

(assert (=> d!2193299 (= (noDuplicate!2623 lt!2517680) e!4226948)))

(declare-fun b!7031322 () Bool)

(declare-fun e!4226949 () Bool)

(assert (=> b!7031322 (= e!4226948 e!4226949)))

(declare-fun res!2870238 () Bool)

(assert (=> b!7031322 (=> (not res!2870238) (not e!4226949))))

(assert (=> b!7031322 (= res!2870238 (not (contains!20452 (t!381670 lt!2517680) (h!74231 lt!2517680))))))

(declare-fun b!7031323 () Bool)

(assert (=> b!7031323 (= e!4226949 (noDuplicate!2623 (t!381670 lt!2517680)))))

(assert (= (and d!2193299 (not res!2870237)) b!7031322))

(assert (= (and b!7031322 res!2870238) b!7031323))

(declare-fun m!7737206 () Bool)

(assert (=> b!7031322 m!7737206))

(declare-fun m!7737208 () Bool)

(assert (=> b!7031323 m!7737208))

(assert (=> d!2192779 d!2193299))

(declare-fun d!2193303 () Bool)

(declare-fun e!4226952 () Bool)

(assert (=> d!2193303 e!4226952))

(declare-fun res!2870242 () Bool)

(assert (=> d!2193303 (=> (not res!2870242) (not e!4226952))))

(declare-fun res!2870241 () List!67907)

(assert (=> d!2193303 (= res!2870242 (noDuplicate!2623 res!2870241))))

(declare-fun e!4226953 () Bool)

(assert (=> d!2193303 e!4226953))

(assert (=> d!2193303 (= (choose!53202 lt!2517572) res!2870241)))

(declare-fun b!7031329 () Bool)

(declare-fun e!4226954 () Bool)

(declare-fun tp!1936234 () Bool)

(assert (=> b!7031329 (= e!4226954 tp!1936234)))

(declare-fun b!7031328 () Bool)

(declare-fun tp!1936235 () Bool)

(assert (=> b!7031328 (= e!4226953 (and (inv!86506 (h!74231 res!2870241)) e!4226954 tp!1936235))))

(declare-fun b!7031330 () Bool)

(assert (=> b!7031330 (= e!4226952 (= (content!13520 res!2870241) lt!2517572))))

(assert (= b!7031328 b!7031329))

(assert (= (and d!2193303 ((_ is Cons!67783) res!2870241)) b!7031328))

(assert (= (and d!2193303 res!2870242) b!7031330))

(declare-fun m!7737210 () Bool)

(assert (=> d!2193303 m!7737210))

(declare-fun m!7737214 () Bool)

(assert (=> b!7031328 m!7737214))

(declare-fun m!7737218 () Bool)

(assert (=> b!7031330 m!7737218))

(assert (=> d!2192779 d!2193303))

(declare-fun bs!1870203 () Bool)

(declare-fun d!2193305 () Bool)

(assert (= bs!1870203 (and d!2193305 d!2193141)))

(declare-fun lambda!414330 () Int)

(assert (=> bs!1870203 (= lambda!414330 lambda!414317)))

(declare-fun bs!1870204 () Bool)

(assert (= bs!1870204 (and d!2193305 b!7030377)))

(assert (=> bs!1870204 (not (= lambda!414330 lambda!414253))))

(declare-fun bs!1870205 () Bool)

(assert (= bs!1870205 (and d!2193305 d!2193043)))

(assert (=> bs!1870205 (= lambda!414330 lambda!414311)))

(declare-fun bs!1870206 () Bool)

(assert (= bs!1870206 (and d!2193305 d!2193225)))

(assert (=> bs!1870206 (= lambda!414330 lambda!414324)))

(declare-fun bs!1870207 () Bool)

(assert (= bs!1870207 (and d!2193305 d!2192775)))

(assert (=> bs!1870207 (not (= lambda!414330 lambda!414275))))

(declare-fun bs!1870208 () Bool)

(assert (= bs!1870208 (and d!2193305 d!2193079)))

(assert (=> bs!1870208 (= lambda!414330 lambda!414312)))

(declare-fun bs!1870209 () Bool)

(assert (= bs!1870209 (and d!2193305 b!7030376)))

(assert (=> bs!1870209 (= lambda!414330 lambda!414257)))

(declare-fun bs!1870210 () Bool)

(assert (= bs!1870210 (and d!2193305 d!2192771)))

(assert (=> bs!1870210 (not (= lambda!414330 lambda!414272))))

(declare-fun bs!1870211 () Bool)

(assert (= bs!1870211 (and d!2193305 d!2193015)))

(assert (=> bs!1870211 (= lambda!414330 lambda!414310)))

(assert (=> d!2193305 (= (nullableZipper!2575 lt!2517610) (exists!3380 lt!2517610 lambda!414330))))

(declare-fun bs!1870212 () Bool)

(assert (= bs!1870212 d!2193305))

(declare-fun m!7737230 () Bool)

(assert (=> bs!1870212 m!7737230))

(assert (=> b!7030527 d!2193305))

(declare-fun d!2193309 () Bool)

(assert (=> d!2193309 (= (map!15756 z1!570 lambda!414294) (choose!53207 z1!570 lambda!414294))))

(declare-fun bs!1870213 () Bool)

(assert (= bs!1870213 d!2193309))

(declare-fun m!7737232 () Bool)

(assert (=> bs!1870213 m!7737232))

(assert (=> d!2192897 d!2193309))

(declare-fun bs!1870214 () Bool)

(declare-fun d!2193311 () Bool)

(assert (= bs!1870214 (and d!2193311 d!2193141)))

(declare-fun lambda!414331 () Int)

(assert (=> bs!1870214 (= lambda!414331 lambda!414317)))

(declare-fun bs!1870215 () Bool)

(assert (= bs!1870215 (and d!2193311 b!7030377)))

(assert (=> bs!1870215 (not (= lambda!414331 lambda!414253))))

(declare-fun bs!1870216 () Bool)

(assert (= bs!1870216 (and d!2193311 d!2193305)))

(assert (=> bs!1870216 (= lambda!414331 lambda!414330)))

(declare-fun bs!1870217 () Bool)

(assert (= bs!1870217 (and d!2193311 d!2193043)))

(assert (=> bs!1870217 (= lambda!414331 lambda!414311)))

(declare-fun bs!1870218 () Bool)

(assert (= bs!1870218 (and d!2193311 d!2193225)))

(assert (=> bs!1870218 (= lambda!414331 lambda!414324)))

(declare-fun bs!1870219 () Bool)

(assert (= bs!1870219 (and d!2193311 d!2192775)))

(assert (=> bs!1870219 (not (= lambda!414331 lambda!414275))))

(declare-fun bs!1870220 () Bool)

(assert (= bs!1870220 (and d!2193311 d!2193079)))

(assert (=> bs!1870220 (= lambda!414331 lambda!414312)))

(declare-fun bs!1870221 () Bool)

(assert (= bs!1870221 (and d!2193311 b!7030376)))

(assert (=> bs!1870221 (= lambda!414331 lambda!414257)))

(declare-fun bs!1870222 () Bool)

(assert (= bs!1870222 (and d!2193311 d!2192771)))

(assert (=> bs!1870222 (not (= lambda!414331 lambda!414272))))

(declare-fun bs!1870223 () Bool)

(assert (= bs!1870223 (and d!2193311 d!2193015)))

(assert (=> bs!1870223 (= lambda!414331 lambda!414310)))

(assert (=> d!2193311 (= (nullableZipper!2575 lt!2517576) (exists!3380 lt!2517576 lambda!414331))))

(declare-fun bs!1870224 () Bool)

(assert (= bs!1870224 d!2193311))

(declare-fun m!7737234 () Bool)

(assert (=> bs!1870224 m!7737234))

(assert (=> b!7030516 d!2193311))

(declare-fun d!2193313 () Bool)

(declare-fun c!1307688 () Bool)

(assert (=> d!2193313 (= c!1307688 (isEmpty!39526 (_1!37335 (get!23744 lt!2517737))))))

(declare-fun e!4226955 () Bool)

(assert (=> d!2193313 (= (matchZipper!2999 lt!2517603 (_1!37335 (get!23744 lt!2517737))) e!4226955)))

(declare-fun b!7031331 () Bool)

(assert (=> b!7031331 (= e!4226955 (nullableZipper!2575 lt!2517603))))

(declare-fun b!7031332 () Bool)

(assert (=> b!7031332 (= e!4226955 (matchZipper!2999 (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 (get!23744 lt!2517737)))) (tail!13543 (_1!37335 (get!23744 lt!2517737)))))))

(assert (= (and d!2193313 c!1307688) b!7031331))

(assert (= (and d!2193313 (not c!1307688)) b!7031332))

(declare-fun m!7737236 () Bool)

(assert (=> d!2193313 m!7737236))

(assert (=> b!7031331 m!7736318))

(declare-fun m!7737238 () Bool)

(assert (=> b!7031332 m!7737238))

(assert (=> b!7031332 m!7737238))

(declare-fun m!7737240 () Bool)

(assert (=> b!7031332 m!7737240))

(declare-fun m!7737242 () Bool)

(assert (=> b!7031332 m!7737242))

(assert (=> b!7031332 m!7737240))

(assert (=> b!7031332 m!7737242))

(declare-fun m!7737244 () Bool)

(assert (=> b!7031332 m!7737244))

(assert (=> b!7030731 d!2193313))

(assert (=> b!7030731 d!2192941))

(declare-fun d!2193315 () Bool)

(assert (=> d!2193315 (= ($colon$colon!2569 (exprs!6955 lt!2517613) (ite (or c!1307470 c!1307473) (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (h!74229 (exprs!6955 lt!2517579)))) (Cons!67781 (ite (or c!1307470 c!1307473) (regTwo!35430 (h!74229 (exprs!6955 lt!2517579))) (h!74229 (exprs!6955 lt!2517579))) (exprs!6955 lt!2517613)))))

(assert (=> bm!638425 d!2193315))

(declare-fun bs!1870226 () Bool)

(declare-fun d!2193317 () Bool)

(assert (= bs!1870226 (and d!2193317 d!2193141)))

(declare-fun lambda!414332 () Int)

(assert (=> bs!1870226 (not (= lambda!414332 lambda!414317))))

(declare-fun bs!1870227 () Bool)

(assert (= bs!1870227 (and d!2193317 b!7030377)))

(assert (=> bs!1870227 (not (= lambda!414332 lambda!414253))))

(declare-fun bs!1870228 () Bool)

(assert (= bs!1870228 (and d!2193317 d!2193043)))

(assert (=> bs!1870228 (not (= lambda!414332 lambda!414311))))

(declare-fun bs!1870229 () Bool)

(assert (= bs!1870229 (and d!2193317 d!2193225)))

(assert (=> bs!1870229 (not (= lambda!414332 lambda!414324))))

(declare-fun bs!1870230 () Bool)

(assert (= bs!1870230 (and d!2193317 d!2192775)))

(assert (=> bs!1870230 (not (= lambda!414332 lambda!414275))))

(declare-fun bs!1870231 () Bool)

(assert (= bs!1870231 (and d!2193317 d!2193079)))

(assert (=> bs!1870231 (not (= lambda!414332 lambda!414312))))

(declare-fun bs!1870232 () Bool)

(assert (= bs!1870232 (and d!2193317 b!7030376)))

(assert (=> bs!1870232 (not (= lambda!414332 lambda!414257))))

(declare-fun bs!1870233 () Bool)

(assert (= bs!1870233 (and d!2193317 d!2193305)))

(assert (=> bs!1870233 (not (= lambda!414332 lambda!414330))))

(declare-fun bs!1870234 () Bool)

(assert (= bs!1870234 (and d!2193317 d!2193311)))

(assert (=> bs!1870234 (not (= lambda!414332 lambda!414331))))

(declare-fun bs!1870235 () Bool)

(assert (= bs!1870235 (and d!2193317 d!2192771)))

(assert (=> bs!1870235 (= (= lambda!414275 lambda!414253) (= lambda!414332 lambda!414272))))

(declare-fun bs!1870236 () Bool)

(assert (= bs!1870236 (and d!2193317 d!2193015)))

(assert (=> bs!1870236 (not (= lambda!414332 lambda!414310))))

(assert (=> d!2193317 true))

(assert (=> d!2193317 (< (dynLambda!27360 order!28165 lambda!414275) (dynLambda!27360 order!28165 lambda!414332))))

(assert (=> d!2193317 (= (exists!3381 lt!2517567 lambda!414275) (not (forall!16370 lt!2517567 lambda!414332)))))

(declare-fun bs!1870237 () Bool)

(assert (= bs!1870237 d!2193317))

(declare-fun m!7737250 () Bool)

(assert (=> bs!1870237 m!7737250))

(assert (=> d!2192775 d!2193317))

(declare-fun bs!1870252 () Bool)

(declare-fun d!2193321 () Bool)

(assert (= bs!1870252 (and d!2193321 d!2193141)))

(declare-fun lambda!414336 () Int)

(assert (=> bs!1870252 (not (= lambda!414336 lambda!414317))))

(declare-fun bs!1870253 () Bool)

(assert (= bs!1870253 (and d!2193321 b!7030377)))

(assert (=> bs!1870253 (= lambda!414336 lambda!414253)))

(declare-fun bs!1870254 () Bool)

(assert (= bs!1870254 (and d!2193321 d!2193043)))

(assert (=> bs!1870254 (not (= lambda!414336 lambda!414311))))

(declare-fun bs!1870255 () Bool)

(assert (= bs!1870255 (and d!2193321 d!2193225)))

(assert (=> bs!1870255 (not (= lambda!414336 lambda!414324))))

(declare-fun bs!1870256 () Bool)

(assert (= bs!1870256 (and d!2193321 d!2192775)))

(assert (=> bs!1870256 (= lambda!414336 lambda!414275)))

(declare-fun bs!1870257 () Bool)

(assert (= bs!1870257 (and d!2193321 b!7030376)))

(assert (=> bs!1870257 (not (= lambda!414336 lambda!414257))))

(declare-fun bs!1870258 () Bool)

(assert (= bs!1870258 (and d!2193321 d!2193305)))

(assert (=> bs!1870258 (not (= lambda!414336 lambda!414330))))

(declare-fun bs!1870259 () Bool)

(assert (= bs!1870259 (and d!2193321 d!2193311)))

(assert (=> bs!1870259 (not (= lambda!414336 lambda!414331))))

(declare-fun bs!1870260 () Bool)

(assert (= bs!1870260 (and d!2193321 d!2192771)))

(assert (=> bs!1870260 (not (= lambda!414336 lambda!414272))))

(declare-fun bs!1870261 () Bool)

(assert (= bs!1870261 (and d!2193321 d!2193015)))

(assert (=> bs!1870261 (not (= lambda!414336 lambda!414310))))

(declare-fun bs!1870262 () Bool)

(assert (= bs!1870262 (and d!2193321 d!2193317)))

(assert (=> bs!1870262 (not (= lambda!414336 lambda!414332))))

(declare-fun bs!1870263 () Bool)

(assert (= bs!1870263 (and d!2193321 d!2193079)))

(assert (=> bs!1870263 (not (= lambda!414336 lambda!414312))))

(assert (=> d!2193321 true))

(assert (=> d!2193321 (exists!3381 lt!2517567 lambda!414336)))

(assert (=> d!2193321 true))

(declare-fun _$60!1120 () Unit!161586)

(assert (=> d!2193321 (= (choose!53201 lt!2517567 s!7408) _$60!1120)))

(declare-fun bs!1870264 () Bool)

(assert (= bs!1870264 d!2193321))

(declare-fun m!7737280 () Bool)

(assert (=> bs!1870264 m!7737280))

(assert (=> d!2192775 d!2193321))

(declare-fun d!2193333 () Bool)

(declare-fun c!1307699 () Bool)

(assert (=> d!2193333 (= c!1307699 (isEmpty!39526 s!7408))))

(declare-fun e!4226967 () Bool)

(assert (=> d!2193333 (= (matchZipper!2999 (content!13520 lt!2517567) s!7408) e!4226967)))

(declare-fun b!7031354 () Bool)

(assert (=> b!7031354 (= e!4226967 (nullableZipper!2575 (content!13520 lt!2517567)))))

(declare-fun b!7031355 () Bool)

(assert (=> b!7031355 (= e!4226967 (matchZipper!2999 (derivationStepZipper!2915 (content!13520 lt!2517567) (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2193333 c!1307699) b!7031354))

(assert (= (and d!2193333 (not c!1307699)) b!7031355))

(assert (=> d!2193333 m!7736016))

(assert (=> b!7031354 m!7736006))

(declare-fun m!7737292 () Bool)

(assert (=> b!7031354 m!7737292))

(assert (=> b!7031355 m!7736020))

(assert (=> b!7031355 m!7736006))

(assert (=> b!7031355 m!7736020))

(declare-fun m!7737296 () Bool)

(assert (=> b!7031355 m!7737296))

(assert (=> b!7031355 m!7736024))

(assert (=> b!7031355 m!7737296))

(assert (=> b!7031355 m!7736024))

(declare-fun m!7737298 () Bool)

(assert (=> b!7031355 m!7737298))

(assert (=> d!2192775 d!2193333))

(declare-fun d!2193337 () Bool)

(declare-fun c!1307700 () Bool)

(assert (=> d!2193337 (= c!1307700 ((_ is Nil!67783) lt!2517567))))

(declare-fun e!4226968 () (InoxSet Context!12910))

(assert (=> d!2193337 (= (content!13520 lt!2517567) e!4226968)))

(declare-fun b!7031356 () Bool)

(assert (=> b!7031356 (= e!4226968 ((as const (Array Context!12910 Bool)) false))))

(declare-fun b!7031357 () Bool)

(assert (=> b!7031357 (= e!4226968 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) (h!74231 lt!2517567) true) (content!13520 (t!381670 lt!2517567))))))

(assert (= (and d!2193337 c!1307700) b!7031356))

(assert (= (and d!2193337 (not c!1307700)) b!7031357))

(declare-fun m!7737300 () Bool)

(assert (=> b!7031357 m!7737300))

(declare-fun m!7737302 () Bool)

(assert (=> b!7031357 m!7737302))

(assert (=> d!2192775 d!2193337))

(assert (=> bs!1869976 d!2192855))

(declare-fun bs!1870270 () Bool)

(declare-fun d!2193339 () Bool)

(assert (= bs!1870270 (and d!2193339 d!2193141)))

(declare-fun lambda!414338 () Int)

(assert (=> bs!1870270 (not (= lambda!414338 lambda!414317))))

(declare-fun bs!1870272 () Bool)

(assert (= bs!1870272 (and d!2193339 b!7030377)))

(assert (=> bs!1870272 (not (= lambda!414338 lambda!414253))))

(declare-fun bs!1870274 () Bool)

(assert (= bs!1870274 (and d!2193339 d!2193043)))

(assert (=> bs!1870274 (not (= lambda!414338 lambda!414311))))

(declare-fun bs!1870275 () Bool)

(assert (= bs!1870275 (and d!2193339 d!2193225)))

(assert (=> bs!1870275 (not (= lambda!414338 lambda!414324))))

(declare-fun bs!1870277 () Bool)

(assert (= bs!1870277 (and d!2193339 d!2192775)))

(assert (=> bs!1870277 (not (= lambda!414338 lambda!414275))))

(declare-fun bs!1870278 () Bool)

(assert (= bs!1870278 (and d!2193339 d!2193321)))

(assert (=> bs!1870278 (not (= lambda!414338 lambda!414336))))

(declare-fun bs!1870279 () Bool)

(assert (= bs!1870279 (and d!2193339 b!7030376)))

(assert (=> bs!1870279 (not (= lambda!414338 lambda!414257))))

(declare-fun bs!1870280 () Bool)

(assert (= bs!1870280 (and d!2193339 d!2193305)))

(assert (=> bs!1870280 (not (= lambda!414338 lambda!414330))))

(declare-fun bs!1870281 () Bool)

(assert (= bs!1870281 (and d!2193339 d!2193311)))

(assert (=> bs!1870281 (not (= lambda!414338 lambda!414331))))

(declare-fun bs!1870282 () Bool)

(assert (= bs!1870282 (and d!2193339 d!2192771)))

(assert (=> bs!1870282 (= (= lambda!414257 lambda!414253) (= lambda!414338 lambda!414272))))

(declare-fun bs!1870283 () Bool)

(assert (= bs!1870283 (and d!2193339 d!2193015)))

(assert (=> bs!1870283 (not (= lambda!414338 lambda!414310))))

(declare-fun bs!1870284 () Bool)

(assert (= bs!1870284 (and d!2193339 d!2193317)))

(assert (=> bs!1870284 (= (= lambda!414257 lambda!414275) (= lambda!414338 lambda!414332))))

(declare-fun bs!1870285 () Bool)

(assert (= bs!1870285 (and d!2193339 d!2193079)))

(assert (=> bs!1870285 (not (= lambda!414338 lambda!414312))))

(assert (=> d!2193339 true))

(assert (=> d!2193339 (< (dynLambda!27360 order!28165 lambda!414257) (dynLambda!27360 order!28165 lambda!414338))))

(assert (=> d!2193339 (= (exists!3381 (toList!10802 lt!2517603) lambda!414257) (not (forall!16370 (toList!10802 lt!2517603) lambda!414338)))))

(declare-fun bs!1870286 () Bool)

(assert (= bs!1870286 d!2193339))

(assert (=> bs!1870286 m!7736246))

(declare-fun m!7737306 () Bool)

(assert (=> bs!1870286 m!7737306))

(assert (=> d!2192865 d!2193339))

(declare-fun d!2193347 () Bool)

(declare-fun e!4226969 () Bool)

(assert (=> d!2193347 e!4226969))

(declare-fun res!2870248 () Bool)

(assert (=> d!2193347 (=> (not res!2870248) (not e!4226969))))

(declare-fun lt!2517834 () List!67907)

(assert (=> d!2193347 (= res!2870248 (noDuplicate!2623 lt!2517834))))

(assert (=> d!2193347 (= lt!2517834 (choose!53202 lt!2517603))))

(assert (=> d!2193347 (= (toList!10802 lt!2517603) lt!2517834)))

(declare-fun b!7031358 () Bool)

(assert (=> b!7031358 (= e!4226969 (= (content!13520 lt!2517834) lt!2517603))))

(assert (= (and d!2193347 res!2870248) b!7031358))

(declare-fun m!7737308 () Bool)

(assert (=> d!2193347 m!7737308))

(declare-fun m!7737310 () Bool)

(assert (=> d!2193347 m!7737310))

(declare-fun m!7737312 () Bool)

(assert (=> b!7031358 m!7737312))

(assert (=> d!2192865 d!2193347))

(declare-fun d!2193349 () Bool)

(declare-fun res!2870251 () Bool)

(assert (=> d!2193349 (= res!2870251 (exists!3381 (toList!10802 lt!2517603) lambda!414257))))

(assert (=> d!2193349 true))

(assert (=> d!2193349 (= (choose!53210 lt!2517603 lambda!414257) res!2870251)))

(declare-fun bs!1870288 () Bool)

(assert (= bs!1870288 d!2193349))

(assert (=> bs!1870288 m!7736246))

(assert (=> bs!1870288 m!7736246))

(assert (=> bs!1870288 m!7736248))

(assert (=> d!2192865 d!2193349))

(declare-fun d!2193363 () Bool)

(declare-fun c!1307703 () Bool)

(assert (=> d!2193363 (= c!1307703 (isEmpty!39526 (tail!13543 (t!381669 s!7408))))))

(declare-fun e!4226973 () Bool)

(assert (=> d!2193363 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517606 (head!14256 (t!381669 s!7408))) (tail!13543 (t!381669 s!7408))) e!4226973)))

(declare-fun b!7031364 () Bool)

(assert (=> b!7031364 (= e!4226973 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517606 (head!14256 (t!381669 s!7408)))))))

(declare-fun b!7031365 () Bool)

(assert (=> b!7031365 (= e!4226973 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517606 (head!14256 (t!381669 s!7408))) (head!14256 (tail!13543 (t!381669 s!7408)))) (tail!13543 (tail!13543 (t!381669 s!7408)))))))

(assert (= (and d!2193363 c!1307703) b!7031364))

(assert (= (and d!2193363 (not c!1307703)) b!7031365))

(assert (=> d!2193363 m!7735830))

(assert (=> d!2193363 m!7736798))

(assert (=> b!7031364 m!7735828))

(declare-fun m!7737320 () Bool)

(assert (=> b!7031364 m!7737320))

(assert (=> b!7031365 m!7735830))

(assert (=> b!7031365 m!7736802))

(assert (=> b!7031365 m!7735828))

(assert (=> b!7031365 m!7736802))

(declare-fun m!7737322 () Bool)

(assert (=> b!7031365 m!7737322))

(assert (=> b!7031365 m!7735830))

(assert (=> b!7031365 m!7736806))

(assert (=> b!7031365 m!7737322))

(assert (=> b!7031365 m!7736806))

(declare-fun m!7737324 () Bool)

(assert (=> b!7031365 m!7737324))

(assert (=> b!7030442 d!2193363))

(declare-fun bs!1870295 () Bool)

(declare-fun d!2193367 () Bool)

(assert (= bs!1870295 (and d!2193367 d!2192947)))

(declare-fun lambda!414340 () Int)

(assert (=> bs!1870295 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414340 lambda!414297))))

(declare-fun bs!1870297 () Bool)

(assert (= bs!1870297 (and d!2193367 d!2193127)))

(assert (=> bs!1870297 (= lambda!414340 lambda!414315)))

(declare-fun bs!1870298 () Bool)

(assert (= bs!1870298 (and d!2193367 d!2192927)))

(assert (=> bs!1870298 (= (= (head!14256 (t!381669 s!7408)) (head!14256 (_2!37335 lt!2517607))) (= lambda!414340 lambda!414296))))

(declare-fun bs!1870300 () Bool)

(assert (= bs!1870300 (and d!2193367 d!2192993)))

(assert (=> bs!1870300 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414340 lambda!414302))))

(declare-fun bs!1870302 () Bool)

(assert (= bs!1870302 (and d!2193367 d!2193135)))

(assert (=> bs!1870302 (= lambda!414340 lambda!414316)))

(declare-fun bs!1870304 () Bool)

(assert (= bs!1870304 (and d!2193367 d!2193013)))

(assert (=> bs!1870304 (= (= (head!14256 (t!381669 s!7408)) (head!14256 s!7408)) (= lambda!414340 lambda!414304))))

(declare-fun bs!1870306 () Bool)

(assert (= bs!1870306 (and d!2193367 d!2192797)))

(assert (=> bs!1870306 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414340 lambda!414279))))

(declare-fun bs!1870308 () Bool)

(assert (= bs!1870308 (and d!2193367 d!2192891)))

(assert (=> bs!1870308 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414340 lambda!414289))))

(declare-fun bs!1870310 () Bool)

(assert (= bs!1870310 (and d!2193367 d!2193257)))

(assert (=> bs!1870310 (= lambda!414340 lambda!414326)))

(declare-fun bs!1870312 () Bool)

(assert (= bs!1870312 (and d!2193367 b!7030364)))

(assert (=> bs!1870312 (= (= (head!14256 (t!381669 s!7408)) (h!74230 s!7408)) (= lambda!414340 lambda!414256))))

(assert (=> d!2193367 true))

(assert (=> d!2193367 (= (derivationStepZipper!2915 lt!2517606 (head!14256 (t!381669 s!7408))) (flatMap!2406 lt!2517606 lambda!414340))))

(declare-fun bs!1870315 () Bool)

(assert (= bs!1870315 d!2193367))

(declare-fun m!7737328 () Bool)

(assert (=> bs!1870315 m!7737328))

(assert (=> b!7030442 d!2193367))

(assert (=> b!7030442 d!2193129))

(assert (=> b!7030442 d!2193131))

(declare-fun d!2193371 () Bool)

(assert (=> d!2193371 (= (nullable!7170 (h!74229 (exprs!6955 lt!2517592))) (nullableFct!2723 (h!74229 (exprs!6955 lt!2517592))))))

(declare-fun bs!1870316 () Bool)

(assert (= bs!1870316 d!2193371))

(declare-fun m!7737330 () Bool)

(assert (=> bs!1870316 m!7737330))

(assert (=> b!7030635 d!2193371))

(declare-fun d!2193373 () Bool)

(declare-fun c!1307705 () Bool)

(assert (=> d!2193373 (= c!1307705 (isEmpty!39526 s!7408))))

(declare-fun e!4226975 () Bool)

(assert (=> d!2193373 (= (matchZipper!2999 lt!2517610 s!7408) e!4226975)))

(declare-fun b!7031368 () Bool)

(assert (=> b!7031368 (= e!4226975 (nullableZipper!2575 lt!2517610))))

(declare-fun b!7031369 () Bool)

(assert (=> b!7031369 (= e!4226975 (matchZipper!2999 (derivationStepZipper!2915 lt!2517610 (head!14256 s!7408)) (tail!13543 s!7408)))))

(assert (= (and d!2193373 c!1307705) b!7031368))

(assert (= (and d!2193373 (not c!1307705)) b!7031369))

(assert (=> d!2193373 m!7736016))

(assert (=> b!7031368 m!7736030))

(assert (=> b!7031369 m!7736020))

(assert (=> b!7031369 m!7736020))

(declare-fun m!7737336 () Bool)

(assert (=> b!7031369 m!7737336))

(assert (=> b!7031369 m!7736024))

(assert (=> b!7031369 m!7737336))

(assert (=> b!7031369 m!7736024))

(declare-fun m!7737338 () Bool)

(assert (=> b!7031369 m!7737338))

(assert (=> b!7030727 d!2193373))

(assert (=> bs!1869971 d!2192809))

(declare-fun d!2193377 () Bool)

(assert (=> d!2193377 (forall!16369 (++!15498 (exprs!6955 lt!2517728) (exprs!6955 ct2!306)) lambda!414255)))

(declare-fun lt!2517839 () Unit!161586)

(assert (=> d!2193377 (= lt!2517839 (choose!53199 (exprs!6955 lt!2517728) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> d!2193377 (forall!16369 (exprs!6955 lt!2517728) lambda!414255)))

(assert (=> d!2193377 (= (lemmaConcatPreservesForall!780 (exprs!6955 lt!2517728) (exprs!6955 ct2!306) lambda!414255) lt!2517839)))

(declare-fun bs!1870317 () Bool)

(assert (= bs!1870317 d!2193377))

(assert (=> bs!1870317 m!7736376))

(assert (=> bs!1870317 m!7736376))

(declare-fun m!7737344 () Bool)

(assert (=> bs!1870317 m!7737344))

(declare-fun m!7737346 () Bool)

(assert (=> bs!1870317 m!7737346))

(declare-fun m!7737348 () Bool)

(assert (=> bs!1870317 m!7737348))

(assert (=> bs!1869975 d!2193377))

(declare-fun d!2193381 () Bool)

(declare-fun e!4226979 () Bool)

(assert (=> d!2193381 e!4226979))

(declare-fun res!2870254 () Bool)

(assert (=> d!2193381 (=> (not res!2870254) (not e!4226979))))

(declare-fun lt!2517840 () List!67905)

(assert (=> d!2193381 (= res!2870254 (= (content!13521 lt!2517840) ((_ map or) (content!13521 (exprs!6955 lt!2517728)) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4226978 () List!67905)

(assert (=> d!2193381 (= lt!2517840 e!4226978)))

(declare-fun c!1307708 () Bool)

(assert (=> d!2193381 (= c!1307708 ((_ is Nil!67781) (exprs!6955 lt!2517728)))))

(assert (=> d!2193381 (= (++!15498 (exprs!6955 lt!2517728) (exprs!6955 ct2!306)) lt!2517840)))

(declare-fun b!7031375 () Bool)

(assert (=> b!7031375 (= e!4226978 (Cons!67781 (h!74229 (exprs!6955 lt!2517728)) (++!15498 (t!381668 (exprs!6955 lt!2517728)) (exprs!6955 ct2!306))))))

(declare-fun b!7031376 () Bool)

(declare-fun res!2870253 () Bool)

(assert (=> b!7031376 (=> (not res!2870253) (not e!4226979))))

(assert (=> b!7031376 (= res!2870253 (= (size!41054 lt!2517840) (+ (size!41054 (exprs!6955 lt!2517728)) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7031377 () Bool)

(assert (=> b!7031377 (= e!4226979 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517840 (exprs!6955 lt!2517728))))))

(declare-fun b!7031374 () Bool)

(assert (=> b!7031374 (= e!4226978 (exprs!6955 ct2!306))))

(assert (= (and d!2193381 c!1307708) b!7031374))

(assert (= (and d!2193381 (not c!1307708)) b!7031375))

(assert (= (and d!2193381 res!2870254) b!7031376))

(assert (= (and b!7031376 res!2870253) b!7031377))

(declare-fun m!7737356 () Bool)

(assert (=> d!2193381 m!7737356))

(declare-fun m!7737358 () Bool)

(assert (=> d!2193381 m!7737358))

(assert (=> d!2193381 m!7736222))

(declare-fun m!7737360 () Bool)

(assert (=> b!7031375 m!7737360))

(declare-fun m!7737362 () Bool)

(assert (=> b!7031376 m!7737362))

(declare-fun m!7737364 () Bool)

(assert (=> b!7031376 m!7737364))

(assert (=> b!7031376 m!7736230))

(assert (=> bs!1869975 d!2193381))

(assert (=> d!2192853 d!2192835))

(declare-fun d!2193385 () Bool)

(assert (=> d!2193385 (= (map!15756 lt!2517603 lambda!414254) (store ((as const (Array Context!12910 Bool)) false) (dynLambda!27362 lambda!414254 lt!2517592) true))))

(assert (=> d!2193385 true))

(declare-fun _$12!2335 () Unit!161586)

(assert (=> d!2193385 (= (choose!53209 lt!2517603 lt!2517592 lambda!414254) _$12!2335)))

(declare-fun b_lambda!266251 () Bool)

(assert (=> (not b_lambda!266251) (not d!2193385)))

(declare-fun bs!1870327 () Bool)

(assert (= bs!1870327 d!2193385))

(assert (=> bs!1870327 m!7735644))

(assert (=> bs!1870327 m!7736206))

(assert (=> bs!1870327 m!7736206))

(assert (=> bs!1870327 m!7736208))

(assert (=> d!2192853 d!2193385))

(declare-fun d!2193389 () Bool)

(assert (=> d!2193389 true))

(declare-fun setRes!49125 () Bool)

(assert (=> d!2193389 setRes!49125))

(declare-fun condSetEmpty!49125 () Bool)

(declare-fun res!2870255 () (InoxSet Context!12910))

(assert (=> d!2193389 (= condSetEmpty!49125 (= res!2870255 ((as const (Array Context!12910 Bool)) false)))))

(assert (=> d!2193389 (= (choose!53205 lt!2517603 lambda!414256) res!2870255)))

(declare-fun setIsEmpty!49125 () Bool)

(assert (=> setIsEmpty!49125 setRes!49125))

(declare-fun e!4226980 () Bool)

(declare-fun setNonEmpty!49125 () Bool)

(declare-fun setElem!49125 () Context!12910)

(declare-fun tp!1936238 () Bool)

(assert (=> setNonEmpty!49125 (= setRes!49125 (and tp!1936238 (inv!86506 setElem!49125) e!4226980))))

(declare-fun setRest!49125 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49125 (= res!2870255 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49125 true) setRest!49125))))

(declare-fun b!7031378 () Bool)

(declare-fun tp!1936239 () Bool)

(assert (=> b!7031378 (= e!4226980 tp!1936239)))

(assert (= (and d!2193389 condSetEmpty!49125) setIsEmpty!49125))

(assert (= (and d!2193389 (not condSetEmpty!49125)) setNonEmpty!49125))

(assert (= setNonEmpty!49125 b!7031378))

(declare-fun m!7737368 () Bool)

(assert (=> setNonEmpty!49125 m!7737368))

(assert (=> d!2192857 d!2193389))

(assert (=> d!2192819 d!2192857))

(declare-fun d!2193391 () Bool)

(assert (=> d!2193391 (= (flatMap!2406 lt!2517603 lambda!414256) (dynLambda!27361 lambda!414256 lt!2517592))))

(assert (=> d!2193391 true))

(declare-fun _$13!4469 () Unit!161586)

(assert (=> d!2193391 (= (choose!53203 lt!2517603 lt!2517592 lambda!414256) _$13!4469)))

(declare-fun b_lambda!266253 () Bool)

(assert (=> (not b_lambda!266253) (not d!2193391)))

(declare-fun bs!1870328 () Bool)

(assert (= bs!1870328 d!2193391))

(assert (=> bs!1870328 m!7735652))

(assert (=> bs!1870328 m!7736146))

(assert (=> d!2192819 d!2193391))

(declare-fun d!2193393 () Bool)

(declare-fun e!4226986 () Bool)

(assert (=> d!2193393 e!4226986))

(declare-fun res!2870261 () Bool)

(assert (=> d!2193393 (=> (not res!2870261) (not e!4226986))))

(declare-fun lt!2517841 () List!67905)

(assert (=> d!2193393 (= res!2870261 (= (content!13521 lt!2517841) ((_ map or) (content!13521 (t!381668 (exprs!6955 lt!2517579))) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4226985 () List!67905)

(assert (=> d!2193393 (= lt!2517841 e!4226985)))

(declare-fun c!1307709 () Bool)

(assert (=> d!2193393 (= c!1307709 ((_ is Nil!67781) (t!381668 (exprs!6955 lt!2517579))))))

(assert (=> d!2193393 (= (++!15498 (t!381668 (exprs!6955 lt!2517579)) (exprs!6955 ct2!306)) lt!2517841)))

(declare-fun b!7031384 () Bool)

(assert (=> b!7031384 (= e!4226985 (Cons!67781 (h!74229 (t!381668 (exprs!6955 lt!2517579))) (++!15498 (t!381668 (t!381668 (exprs!6955 lt!2517579))) (exprs!6955 ct2!306))))))

(declare-fun b!7031385 () Bool)

(declare-fun res!2870260 () Bool)

(assert (=> b!7031385 (=> (not res!2870260) (not e!4226986))))

(assert (=> b!7031385 (= res!2870260 (= (size!41054 lt!2517841) (+ (size!41054 (t!381668 (exprs!6955 lt!2517579))) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7031386 () Bool)

(assert (=> b!7031386 (= e!4226986 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517841 (t!381668 (exprs!6955 lt!2517579)))))))

(declare-fun b!7031383 () Bool)

(assert (=> b!7031383 (= e!4226985 (exprs!6955 ct2!306))))

(assert (= (and d!2193393 c!1307709) b!7031383))

(assert (= (and d!2193393 (not c!1307709)) b!7031384))

(assert (= (and d!2193393 res!2870261) b!7031385))

(assert (= (and b!7031385 res!2870260) b!7031386))

(declare-fun m!7737370 () Bool)

(assert (=> d!2193393 m!7737370))

(assert (=> d!2193393 m!7736518))

(assert (=> d!2193393 m!7736222))

(declare-fun m!7737372 () Bool)

(assert (=> b!7031384 m!7737372))

(declare-fun m!7737374 () Bool)

(assert (=> b!7031385 m!7737374))

(assert (=> b!7031385 m!7736498))

(assert (=> b!7031385 m!7736230))

(assert (=> b!7030700 d!2193393))

(declare-fun d!2193395 () Bool)

(declare-fun res!2870268 () Bool)

(declare-fun e!4226995 () Bool)

(assert (=> d!2193395 (=> res!2870268 e!4226995)))

(assert (=> d!2193395 (= res!2870268 ((_ is Nil!67781) (++!15498 lt!2517605 (exprs!6955 ct2!306))))))

(assert (=> d!2193395 (= (forall!16369 (++!15498 lt!2517605 (exprs!6955 ct2!306)) lambda!414255) e!4226995)))

(declare-fun b!7031397 () Bool)

(declare-fun e!4226996 () Bool)

(assert (=> b!7031397 (= e!4226995 e!4226996)))

(declare-fun res!2870269 () Bool)

(assert (=> b!7031397 (=> (not res!2870269) (not e!4226996))))

(assert (=> b!7031397 (= res!2870269 (dynLambda!27364 lambda!414255 (h!74229 (++!15498 lt!2517605 (exprs!6955 ct2!306)))))))

(declare-fun b!7031398 () Bool)

(assert (=> b!7031398 (= e!4226996 (forall!16369 (t!381668 (++!15498 lt!2517605 (exprs!6955 ct2!306))) lambda!414255))))

(assert (= (and d!2193395 (not res!2870268)) b!7031397))

(assert (= (and b!7031397 res!2870269) b!7031398))

(declare-fun b_lambda!266255 () Bool)

(assert (=> (not b_lambda!266255) (not b!7031397)))

(declare-fun m!7737376 () Bool)

(assert (=> b!7031397 m!7737376))

(declare-fun m!7737378 () Bool)

(assert (=> b!7031398 m!7737378))

(assert (=> d!2192717 d!2193395))

(assert (=> d!2192717 d!2192859))

(declare-fun d!2193397 () Bool)

(assert (=> d!2193397 (forall!16369 (++!15498 lt!2517605 (exprs!6955 ct2!306)) lambda!414255)))

(assert (=> d!2193397 true))

(declare-fun _$78!578 () Unit!161586)

(assert (=> d!2193397 (= (choose!53199 lt!2517605 (exprs!6955 ct2!306) lambda!414255) _$78!578)))

(declare-fun bs!1870329 () Bool)

(assert (= bs!1870329 d!2193397))

(assert (=> bs!1870329 m!7735666))

(assert (=> bs!1870329 m!7735666))

(assert (=> bs!1870329 m!7735850))

(assert (=> d!2192717 d!2193397))

(declare-fun d!2193399 () Bool)

(declare-fun res!2870270 () Bool)

(declare-fun e!4226997 () Bool)

(assert (=> d!2193399 (=> res!2870270 e!4226997)))

(assert (=> d!2193399 (= res!2870270 ((_ is Nil!67781) lt!2517605))))

(assert (=> d!2193399 (= (forall!16369 lt!2517605 lambda!414255) e!4226997)))

(declare-fun b!7031399 () Bool)

(declare-fun e!4226998 () Bool)

(assert (=> b!7031399 (= e!4226997 e!4226998)))

(declare-fun res!2870271 () Bool)

(assert (=> b!7031399 (=> (not res!2870271) (not e!4226998))))

(assert (=> b!7031399 (= res!2870271 (dynLambda!27364 lambda!414255 (h!74229 lt!2517605)))))

(declare-fun b!7031400 () Bool)

(assert (=> b!7031400 (= e!4226998 (forall!16369 (t!381668 lt!2517605) lambda!414255))))

(assert (= (and d!2193399 (not res!2870270)) b!7031399))

(assert (= (and b!7031399 res!2870271) b!7031400))

(declare-fun b_lambda!266257 () Bool)

(assert (=> (not b_lambda!266257) (not b!7031399)))

(declare-fun m!7737380 () Bool)

(assert (=> b!7031399 m!7737380))

(declare-fun m!7737382 () Bool)

(assert (=> b!7031400 m!7737382))

(assert (=> d!2192717 d!2193399))

(declare-fun d!2193401 () Bool)

(declare-fun c!1307712 () Bool)

(assert (=> d!2193401 (= c!1307712 (isEmpty!39526 (tail!13543 (_1!37335 lt!2517607))))))

(declare-fun e!4226999 () Bool)

(assert (=> d!2193401 (= (matchZipper!2999 (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 lt!2517607))) (tail!13543 (_1!37335 lt!2517607))) e!4226999)))

(declare-fun b!7031401 () Bool)

(assert (=> b!7031401 (= e!4226999 (nullableZipper!2575 (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 lt!2517607)))))))

(declare-fun b!7031402 () Bool)

(assert (=> b!7031402 (= e!4226999 (matchZipper!2999 (derivationStepZipper!2915 (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 lt!2517607))) (head!14256 (tail!13543 (_1!37335 lt!2517607)))) (tail!13543 (tail!13543 (_1!37335 lt!2517607)))))))

(assert (= (and d!2193401 c!1307712) b!7031401))

(assert (= (and d!2193401 (not c!1307712)) b!7031402))

(assert (=> d!2193401 m!7736324))

(declare-fun m!7737384 () Bool)

(assert (=> d!2193401 m!7737384))

(assert (=> b!7031401 m!7736322))

(declare-fun m!7737386 () Bool)

(assert (=> b!7031401 m!7737386))

(assert (=> b!7031402 m!7736324))

(declare-fun m!7737388 () Bool)

(assert (=> b!7031402 m!7737388))

(assert (=> b!7031402 m!7736322))

(assert (=> b!7031402 m!7737388))

(declare-fun m!7737390 () Bool)

(assert (=> b!7031402 m!7737390))

(assert (=> b!7031402 m!7736324))

(declare-fun m!7737392 () Bool)

(assert (=> b!7031402 m!7737392))

(assert (=> b!7031402 m!7737390))

(assert (=> b!7031402 m!7737392))

(declare-fun m!7737394 () Bool)

(assert (=> b!7031402 m!7737394))

(assert (=> b!7030735 d!2193401))

(declare-fun bs!1870330 () Bool)

(declare-fun d!2193403 () Bool)

(assert (= bs!1870330 (and d!2193403 d!2192947)))

(declare-fun lambda!414342 () Int)

(assert (=> bs!1870330 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 s!7408)) (= lambda!414342 lambda!414297))))

(declare-fun bs!1870331 () Bool)

(assert (= bs!1870331 (and d!2193403 d!2193127)))

(assert (=> bs!1870331 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 (t!381669 s!7408))) (= lambda!414342 lambda!414315))))

(declare-fun bs!1870332 () Bool)

(assert (= bs!1870332 (and d!2193403 d!2192927)))

(assert (=> bs!1870332 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 (_2!37335 lt!2517607))) (= lambda!414342 lambda!414296))))

(declare-fun bs!1870333 () Bool)

(assert (= bs!1870333 (and d!2193403 d!2193367)))

(assert (=> bs!1870333 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 (t!381669 s!7408))) (= lambda!414342 lambda!414340))))

(declare-fun bs!1870334 () Bool)

(assert (= bs!1870334 (and d!2193403 d!2192993)))

(assert (=> bs!1870334 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 s!7408)) (= lambda!414342 lambda!414302))))

(declare-fun bs!1870335 () Bool)

(assert (= bs!1870335 (and d!2193403 d!2193135)))

(assert (=> bs!1870335 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 (t!381669 s!7408))) (= lambda!414342 lambda!414316))))

(declare-fun bs!1870336 () Bool)

(assert (= bs!1870336 (and d!2193403 d!2193013)))

(assert (=> bs!1870336 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 s!7408)) (= lambda!414342 lambda!414304))))

(declare-fun bs!1870337 () Bool)

(assert (= bs!1870337 (and d!2193403 d!2192797)))

(assert (=> bs!1870337 (= (= (head!14256 (_1!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414342 lambda!414279))))

(declare-fun bs!1870338 () Bool)

(assert (= bs!1870338 (and d!2193403 d!2192891)))

(assert (=> bs!1870338 (= (= (head!14256 (_1!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414342 lambda!414289))))

(declare-fun bs!1870339 () Bool)

(assert (= bs!1870339 (and d!2193403 d!2193257)))

(assert (=> bs!1870339 (= (= (head!14256 (_1!37335 lt!2517607)) (head!14256 (t!381669 s!7408))) (= lambda!414342 lambda!414326))))

(declare-fun bs!1870340 () Bool)

(assert (= bs!1870340 (and d!2193403 b!7030364)))

(assert (=> bs!1870340 (= (= (head!14256 (_1!37335 lt!2517607)) (h!74230 s!7408)) (= lambda!414342 lambda!414256))))

(assert (=> d!2193403 true))

(assert (=> d!2193403 (= (derivationStepZipper!2915 lt!2517603 (head!14256 (_1!37335 lt!2517607))) (flatMap!2406 lt!2517603 lambda!414342))))

(declare-fun bs!1870341 () Bool)

(assert (= bs!1870341 d!2193403))

(declare-fun m!7737400 () Bool)

(assert (=> bs!1870341 m!7737400))

(assert (=> b!7030735 d!2193403))

(declare-fun d!2193407 () Bool)

(assert (=> d!2193407 (= (head!14256 (_1!37335 lt!2517607)) (h!74230 (_1!37335 lt!2517607)))))

(assert (=> b!7030735 d!2193407))

(declare-fun d!2193409 () Bool)

(assert (=> d!2193409 (= (tail!13543 (_1!37335 lt!2517607)) (t!381669 (_1!37335 lt!2517607)))))

(assert (=> b!7030735 d!2193409))

(declare-fun d!2193411 () Bool)

(assert (=> d!2193411 (= (flatMap!2406 lt!2517584 lambda!414289) (choose!53205 lt!2517584 lambda!414289))))

(declare-fun bs!1870342 () Bool)

(assert (= bs!1870342 d!2193411))

(declare-fun m!7737402 () Bool)

(assert (=> bs!1870342 m!7737402))

(assert (=> d!2192891 d!2193411))

(declare-fun bs!1870343 () Bool)

(declare-fun d!2193413 () Bool)

(assert (= bs!1870343 (and d!2193413 d!2193141)))

(declare-fun lambda!414343 () Int)

(assert (=> bs!1870343 (= lambda!414343 lambda!414317)))

(declare-fun bs!1870344 () Bool)

(assert (= bs!1870344 (and d!2193413 b!7030377)))

(assert (=> bs!1870344 (not (= lambda!414343 lambda!414253))))

(declare-fun bs!1870345 () Bool)

(assert (= bs!1870345 (and d!2193413 d!2193043)))

(assert (=> bs!1870345 (= lambda!414343 lambda!414311)))

(declare-fun bs!1870346 () Bool)

(assert (= bs!1870346 (and d!2193413 d!2193225)))

(assert (=> bs!1870346 (= lambda!414343 lambda!414324)))

(declare-fun bs!1870347 () Bool)

(assert (= bs!1870347 (and d!2193413 d!2192775)))

(assert (=> bs!1870347 (not (= lambda!414343 lambda!414275))))

(declare-fun bs!1870348 () Bool)

(assert (= bs!1870348 (and d!2193413 d!2193339)))

(assert (=> bs!1870348 (not (= lambda!414343 lambda!414338))))

(declare-fun bs!1870349 () Bool)

(assert (= bs!1870349 (and d!2193413 d!2193321)))

(assert (=> bs!1870349 (not (= lambda!414343 lambda!414336))))

(declare-fun bs!1870350 () Bool)

(assert (= bs!1870350 (and d!2193413 b!7030376)))

(assert (=> bs!1870350 (= lambda!414343 lambda!414257)))

(declare-fun bs!1870351 () Bool)

(assert (= bs!1870351 (and d!2193413 d!2193305)))

(assert (=> bs!1870351 (= lambda!414343 lambda!414330)))

(declare-fun bs!1870352 () Bool)

(assert (= bs!1870352 (and d!2193413 d!2193311)))

(assert (=> bs!1870352 (= lambda!414343 lambda!414331)))

(declare-fun bs!1870353 () Bool)

(assert (= bs!1870353 (and d!2193413 d!2192771)))

(assert (=> bs!1870353 (not (= lambda!414343 lambda!414272))))

(declare-fun bs!1870354 () Bool)

(assert (= bs!1870354 (and d!2193413 d!2193015)))

(assert (=> bs!1870354 (= lambda!414343 lambda!414310)))

(declare-fun bs!1870355 () Bool)

(assert (= bs!1870355 (and d!2193413 d!2193317)))

(assert (=> bs!1870355 (not (= lambda!414343 lambda!414332))))

(declare-fun bs!1870356 () Bool)

(assert (= bs!1870356 (and d!2193413 d!2193079)))

(assert (=> bs!1870356 (= lambda!414343 lambda!414312)))

(assert (=> d!2193413 (= (nullableZipper!2575 lt!2517572) (exists!3380 lt!2517572 lambda!414343))))

(declare-fun bs!1870357 () Bool)

(assert (= bs!1870357 d!2193413))

(declare-fun m!7737412 () Bool)

(assert (=> bs!1870357 m!7737412))

(assert (=> b!7030741 d!2193413))

(declare-fun d!2193419 () Bool)

(declare-fun e!4227015 () Bool)

(assert (=> d!2193419 e!4227015))

(declare-fun res!2870279 () Bool)

(assert (=> d!2193419 (=> (not res!2870279) (not e!4227015))))

(declare-fun lt!2517844 () List!67905)

(assert (=> d!2193419 (= res!2870279 (= (content!13521 lt!2517844) ((_ map or) (content!13521 (t!381668 lt!2517605)) (content!13521 (exprs!6955 ct2!306)))))))

(declare-fun e!4227014 () List!67905)

(assert (=> d!2193419 (= lt!2517844 e!4227014)))

(declare-fun c!1307721 () Bool)

(assert (=> d!2193419 (= c!1307721 ((_ is Nil!67781) (t!381668 lt!2517605)))))

(assert (=> d!2193419 (= (++!15498 (t!381668 lt!2517605) (exprs!6955 ct2!306)) lt!2517844)))

(declare-fun b!7031426 () Bool)

(assert (=> b!7031426 (= e!4227014 (Cons!67781 (h!74229 (t!381668 lt!2517605)) (++!15498 (t!381668 (t!381668 lt!2517605)) (exprs!6955 ct2!306))))))

(declare-fun b!7031427 () Bool)

(declare-fun res!2870278 () Bool)

(assert (=> b!7031427 (=> (not res!2870278) (not e!4227015))))

(assert (=> b!7031427 (= res!2870278 (= (size!41054 lt!2517844) (+ (size!41054 (t!381668 lt!2517605)) (size!41054 (exprs!6955 ct2!306)))))))

(declare-fun b!7031428 () Bool)

(assert (=> b!7031428 (= e!4227015 (or (not (= (exprs!6955 ct2!306) Nil!67781)) (= lt!2517844 (t!381668 lt!2517605))))))

(declare-fun b!7031425 () Bool)

(assert (=> b!7031425 (= e!4227014 (exprs!6955 ct2!306))))

(assert (= (and d!2193419 c!1307721) b!7031425))

(assert (= (and d!2193419 (not c!1307721)) b!7031426))

(assert (= (and d!2193419 res!2870279) b!7031427))

(assert (= (and b!7031427 res!2870278) b!7031428))

(declare-fun m!7737422 () Bool)

(assert (=> d!2193419 m!7737422))

(assert (=> d!2193419 m!7736482))

(assert (=> d!2193419 m!7736222))

(declare-fun m!7737430 () Bool)

(assert (=> b!7031426 m!7737430))

(declare-fun m!7737432 () Bool)

(assert (=> b!7031427 m!7737432))

(assert (=> b!7031427 m!7736536))

(assert (=> b!7031427 m!7736230))

(assert (=> b!7030649 d!2193419))

(declare-fun bs!1870358 () Bool)

(declare-fun d!2193423 () Bool)

(assert (= bs!1870358 (and d!2193423 d!2193141)))

(declare-fun lambda!414344 () Int)

(assert (=> bs!1870358 (= lambda!414344 lambda!414317)))

(declare-fun bs!1870359 () Bool)

(assert (= bs!1870359 (and d!2193423 b!7030377)))

(assert (=> bs!1870359 (not (= lambda!414344 lambda!414253))))

(declare-fun bs!1870360 () Bool)

(assert (= bs!1870360 (and d!2193423 d!2193043)))

(assert (=> bs!1870360 (= lambda!414344 lambda!414311)))

(declare-fun bs!1870361 () Bool)

(assert (= bs!1870361 (and d!2193423 d!2193413)))

(assert (=> bs!1870361 (= lambda!414344 lambda!414343)))

(declare-fun bs!1870362 () Bool)

(assert (= bs!1870362 (and d!2193423 d!2193225)))

(assert (=> bs!1870362 (= lambda!414344 lambda!414324)))

(declare-fun bs!1870363 () Bool)

(assert (= bs!1870363 (and d!2193423 d!2192775)))

(assert (=> bs!1870363 (not (= lambda!414344 lambda!414275))))

(declare-fun bs!1870364 () Bool)

(assert (= bs!1870364 (and d!2193423 d!2193339)))

(assert (=> bs!1870364 (not (= lambda!414344 lambda!414338))))

(declare-fun bs!1870365 () Bool)

(assert (= bs!1870365 (and d!2193423 d!2193321)))

(assert (=> bs!1870365 (not (= lambda!414344 lambda!414336))))

(declare-fun bs!1870366 () Bool)

(assert (= bs!1870366 (and d!2193423 b!7030376)))

(assert (=> bs!1870366 (= lambda!414344 lambda!414257)))

(declare-fun bs!1870367 () Bool)

(assert (= bs!1870367 (and d!2193423 d!2193305)))

(assert (=> bs!1870367 (= lambda!414344 lambda!414330)))

(declare-fun bs!1870368 () Bool)

(assert (= bs!1870368 (and d!2193423 d!2193311)))

(assert (=> bs!1870368 (= lambda!414344 lambda!414331)))

(declare-fun bs!1870369 () Bool)

(assert (= bs!1870369 (and d!2193423 d!2192771)))

(assert (=> bs!1870369 (not (= lambda!414344 lambda!414272))))

(declare-fun bs!1870370 () Bool)

(assert (= bs!1870370 (and d!2193423 d!2193015)))

(assert (=> bs!1870370 (= lambda!414344 lambda!414310)))

(declare-fun bs!1870371 () Bool)

(assert (= bs!1870371 (and d!2193423 d!2193317)))

(assert (=> bs!1870371 (not (= lambda!414344 lambda!414332))))

(declare-fun bs!1870372 () Bool)

(assert (= bs!1870372 (and d!2193423 d!2193079)))

(assert (=> bs!1870372 (= lambda!414344 lambda!414312)))

(assert (=> d!2193423 (= (nullableZipper!2575 lt!2517591) (exists!3380 lt!2517591 lambda!414344))))

(declare-fun bs!1870373 () Bool)

(assert (= bs!1870373 d!2193423))

(declare-fun m!7737446 () Bool)

(assert (=> bs!1870373 m!7737446))

(assert (=> b!7030652 d!2193423))

(assert (=> d!2192881 d!2192785))

(declare-fun b!7031444 () Bool)

(declare-fun e!4227025 () Bool)

(assert (=> b!7031444 (= e!4227025 (nullable!7170 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))))))))

(declare-fun d!2193429 () Bool)

(declare-fun c!1307727 () Bool)

(assert (=> d!2193429 (= c!1307727 e!4227025)))

(declare-fun res!2870287 () Bool)

(assert (=> d!2193429 (=> (not res!2870287) (not e!4227025))))

(assert (=> d!2193429 (= res!2870287 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592))))))))

(declare-fun e!4227024 () (InoxSet Context!12910))

(assert (=> d!2193429 (= (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 lt!2517592))) (h!74230 s!7408)) e!4227024)))

(declare-fun bm!638531 () Bool)

(declare-fun call!638536 () (InoxSet Context!12910))

(assert (=> bm!638531 (= call!638536 (derivationStepZipperDown!2123 (h!74229 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592))))) (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))))) (h!74230 s!7408)))))

(declare-fun b!7031445 () Bool)

(declare-fun e!4227026 () (InoxSet Context!12910))

(assert (=> b!7031445 (= e!4227024 e!4227026)))

(declare-fun c!1307726 () Bool)

(assert (=> b!7031445 (= c!1307726 ((_ is Cons!67781) (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592))))))))

(declare-fun b!7031446 () Bool)

(assert (=> b!7031446 (= e!4227026 call!638536)))

(declare-fun b!7031447 () Bool)

(assert (=> b!7031447 (= e!4227024 ((_ map or) call!638536 (derivationStepZipperUp!2069 (Context!12911 (t!381668 (exprs!6955 (Context!12911 (t!381668 (exprs!6955 lt!2517592)))))) (h!74230 s!7408))))))

(declare-fun b!7031448 () Bool)

(assert (=> b!7031448 (= e!4227026 ((as const (Array Context!12910 Bool)) false))))

(assert (= (and d!2193429 res!2870287) b!7031444))

(assert (= (and d!2193429 c!1307727) b!7031447))

(assert (= (and d!2193429 (not c!1307727)) b!7031445))

(assert (= (and b!7031445 c!1307726) b!7031446))

(assert (= (and b!7031445 (not c!1307726)) b!7031448))

(assert (= (or b!7031447 b!7031446) bm!638531))

(declare-fun m!7737454 () Bool)

(assert (=> b!7031444 m!7737454))

(declare-fun m!7737458 () Bool)

(assert (=> bm!638531 m!7737458))

(declare-fun m!7737462 () Bool)

(assert (=> b!7031447 m!7737462))

(assert (=> b!7030638 d!2193429))

(assert (=> b!7030462 d!2192703))

(declare-fun d!2193431 () Bool)

(declare-fun res!2870288 () Bool)

(declare-fun e!4227027 () Bool)

(assert (=> d!2193431 (=> res!2870288 e!4227027)))

(assert (=> d!2193431 (= res!2870288 ((_ is Nil!67781) (exprs!6955 ct2!306)))))

(assert (=> d!2193431 (= (forall!16369 (exprs!6955 ct2!306) lambda!414295) e!4227027)))

(declare-fun b!7031449 () Bool)

(declare-fun e!4227028 () Bool)

(assert (=> b!7031449 (= e!4227027 e!4227028)))

(declare-fun res!2870289 () Bool)

(assert (=> b!7031449 (=> (not res!2870289) (not e!4227028))))

(assert (=> b!7031449 (= res!2870289 (dynLambda!27364 lambda!414295 (h!74229 (exprs!6955 ct2!306))))))

(declare-fun b!7031450 () Bool)

(assert (=> b!7031450 (= e!4227028 (forall!16369 (t!381668 (exprs!6955 ct2!306)) lambda!414295))))

(assert (= (and d!2193431 (not res!2870288)) b!7031449))

(assert (= (and b!7031449 res!2870289) b!7031450))

(declare-fun b_lambda!266259 () Bool)

(assert (=> (not b_lambda!266259) (not b!7031449)))

(declare-fun m!7737468 () Bool)

(assert (=> b!7031449 m!7737468))

(declare-fun m!7737470 () Bool)

(assert (=> b!7031450 m!7737470))

(assert (=> d!2192899 d!2193431))

(declare-fun b!7031451 () Bool)

(declare-fun e!4227029 () Bool)

(declare-fun tp!1936240 () Bool)

(declare-fun tp!1936241 () Bool)

(assert (=> b!7031451 (= e!4227029 (and tp!1936240 tp!1936241))))

(assert (=> b!7030758 (= tp!1936191 e!4227029)))

(assert (= (and b!7030758 ((_ is Cons!67781) (exprs!6955 setElem!49112))) b!7031451))

(declare-fun b!7031465 () Bool)

(declare-fun e!4227032 () Bool)

(declare-fun tp!1936255 () Bool)

(declare-fun tp!1936254 () Bool)

(assert (=> b!7031465 (= e!4227032 (and tp!1936255 tp!1936254))))

(declare-fun b!7031462 () Bool)

(assert (=> b!7031462 (= e!4227032 tp_is_empty!44143)))

(assert (=> b!7030752 (= tp!1936182 e!4227032)))

(declare-fun b!7031464 () Bool)

(declare-fun tp!1936252 () Bool)

(assert (=> b!7031464 (= e!4227032 tp!1936252)))

(declare-fun b!7031463 () Bool)

(declare-fun tp!1936256 () Bool)

(declare-fun tp!1936253 () Bool)

(assert (=> b!7031463 (= e!4227032 (and tp!1936256 tp!1936253))))

(assert (= (and b!7030752 ((_ is ElementMatch!17459) (h!74229 (exprs!6955 setElem!49106)))) b!7031462))

(assert (= (and b!7030752 ((_ is Concat!26304) (h!74229 (exprs!6955 setElem!49106)))) b!7031463))

(assert (= (and b!7030752 ((_ is Star!17459) (h!74229 (exprs!6955 setElem!49106)))) b!7031464))

(assert (= (and b!7030752 ((_ is Union!17459) (h!74229 (exprs!6955 setElem!49106)))) b!7031465))

(declare-fun b!7031466 () Bool)

(declare-fun e!4227033 () Bool)

(declare-fun tp!1936257 () Bool)

(declare-fun tp!1936258 () Bool)

(assert (=> b!7031466 (= e!4227033 (and tp!1936257 tp!1936258))))

(assert (=> b!7030752 (= tp!1936183 e!4227033)))

(assert (= (and b!7030752 ((_ is Cons!67781) (t!381668 (exprs!6955 setElem!49106)))) b!7031466))

(declare-fun b!7031470 () Bool)

(declare-fun e!4227034 () Bool)

(declare-fun tp!1936262 () Bool)

(declare-fun tp!1936261 () Bool)

(assert (=> b!7031470 (= e!4227034 (and tp!1936262 tp!1936261))))

(declare-fun b!7031467 () Bool)

(assert (=> b!7031467 (= e!4227034 tp_is_empty!44143)))

(assert (=> b!7030753 (= tp!1936184 e!4227034)))

(declare-fun b!7031469 () Bool)

(declare-fun tp!1936259 () Bool)

(assert (=> b!7031469 (= e!4227034 tp!1936259)))

(declare-fun b!7031468 () Bool)

(declare-fun tp!1936263 () Bool)

(declare-fun tp!1936260 () Bool)

(assert (=> b!7031468 (= e!4227034 (and tp!1936263 tp!1936260))))

(assert (= (and b!7030753 ((_ is ElementMatch!17459) (h!74229 (exprs!6955 ct2!306)))) b!7031467))

(assert (= (and b!7030753 ((_ is Concat!26304) (h!74229 (exprs!6955 ct2!306)))) b!7031468))

(assert (= (and b!7030753 ((_ is Star!17459) (h!74229 (exprs!6955 ct2!306)))) b!7031469))

(assert (= (and b!7030753 ((_ is Union!17459) (h!74229 (exprs!6955 ct2!306)))) b!7031470))

(declare-fun b!7031471 () Bool)

(declare-fun e!4227035 () Bool)

(declare-fun tp!1936264 () Bool)

(declare-fun tp!1936265 () Bool)

(assert (=> b!7031471 (= e!4227035 (and tp!1936264 tp!1936265))))

(assert (=> b!7030753 (= tp!1936185 e!4227035)))

(assert (= (and b!7030753 ((_ is Cons!67781) (t!381668 (exprs!6955 ct2!306)))) b!7031471))

(declare-fun b!7031472 () Bool)

(declare-fun e!4227036 () Bool)

(declare-fun tp!1936266 () Bool)

(assert (=> b!7031472 (= e!4227036 (and tp_is_empty!44143 tp!1936266))))

(assert (=> b!7030747 (= tp!1936177 e!4227036)))

(assert (= (and b!7030747 ((_ is Cons!67782) (t!381669 (t!381669 s!7408)))) b!7031472))

(declare-fun condSetEmpty!49126 () Bool)

(assert (=> setNonEmpty!49112 (= condSetEmpty!49126 (= setRest!49112 ((as const (Array Context!12910 Bool)) false)))))

(declare-fun setRes!49126 () Bool)

(assert (=> setNonEmpty!49112 (= tp!1936190 setRes!49126)))

(declare-fun setIsEmpty!49126 () Bool)

(assert (=> setIsEmpty!49126 setRes!49126))

(declare-fun tp!1936267 () Bool)

(declare-fun setNonEmpty!49126 () Bool)

(declare-fun e!4227037 () Bool)

(declare-fun setElem!49126 () Context!12910)

(assert (=> setNonEmpty!49126 (= setRes!49126 (and tp!1936267 (inv!86506 setElem!49126) e!4227037))))

(declare-fun setRest!49126 () (InoxSet Context!12910))

(assert (=> setNonEmpty!49126 (= setRest!49112 ((_ map or) (store ((as const (Array Context!12910 Bool)) false) setElem!49126 true) setRest!49126))))

(declare-fun b!7031473 () Bool)

(declare-fun tp!1936268 () Bool)

(assert (=> b!7031473 (= e!4227037 tp!1936268)))

(assert (= (and setNonEmpty!49112 condSetEmpty!49126) setIsEmpty!49126))

(assert (= (and setNonEmpty!49112 (not condSetEmpty!49126)) setNonEmpty!49126))

(assert (= setNonEmpty!49126 b!7031473))

(declare-fun m!7737474 () Bool)

(assert (=> setNonEmpty!49126 m!7737474))

(declare-fun b_lambda!266261 () Bool)

(assert (= b_lambda!266227 (or b!7030373 b_lambda!266261)))

(declare-fun bs!1870375 () Bool)

(declare-fun d!2193437 () Bool)

(assert (= bs!1870375 (and d!2193437 b!7030373)))

(declare-fun validRegex!8927 (Regex!17459) Bool)

(assert (=> bs!1870375 (= (dynLambda!27364 lambda!414255 (h!74229 (exprs!6955 lt!2517579))) (validRegex!8927 (h!74229 (exprs!6955 lt!2517579))))))

(declare-fun m!7737476 () Bool)

(assert (=> bs!1870375 m!7737476))

(assert (=> b!7031044 d!2193437))

(declare-fun b_lambda!266263 () Bool)

(assert (= b_lambda!266239 (or b!7030377 b_lambda!266263)))

(declare-fun bs!1870376 () Bool)

(declare-fun d!2193439 () Bool)

(assert (= bs!1870376 (and d!2193439 b!7030377)))

(assert (=> bs!1870376 (= (dynLambda!27359 lambda!414253 lt!2517796) (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) lt!2517796 true) s!7408))))

(declare-fun m!7737478 () Bool)

(assert (=> bs!1870376 m!7737478))

(assert (=> bs!1870376 m!7737478))

(declare-fun m!7737480 () Bool)

(assert (=> bs!1870376 m!7737480))

(assert (=> d!2193151 d!2193439))

(declare-fun b_lambda!266265 () Bool)

(assert (= b_lambda!266251 (or b!7030373 b_lambda!266265)))

(assert (=> d!2193385 d!2192905))

(declare-fun b_lambda!266267 () Bool)

(assert (= b_lambda!266215 (or b!7030364 b_lambda!266267)))

(assert (=> d!2192959 d!2192901))

(declare-fun b_lambda!266269 () Bool)

(assert (= b_lambda!266217 (or d!2192771 b_lambda!266269)))

(declare-fun bs!1870377 () Bool)

(declare-fun d!2193441 () Bool)

(assert (= bs!1870377 (and d!2193441 d!2192771)))

(assert (=> bs!1870377 (= (dynLambda!27359 lambda!414272 (h!74231 lt!2517567)) (not (dynLambda!27359 lambda!414253 (h!74231 lt!2517567))))))

(declare-fun b_lambda!266289 () Bool)

(assert (=> (not b_lambda!266289) (not bs!1870377)))

(declare-fun m!7737482 () Bool)

(assert (=> bs!1870377 m!7737482))

(assert (=> b!7030839 d!2193441))

(declare-fun b_lambda!266271 () Bool)

(assert (= b_lambda!266257 (or b!7030373 b_lambda!266271)))

(declare-fun bs!1870378 () Bool)

(declare-fun d!2193443 () Bool)

(assert (= bs!1870378 (and d!2193443 b!7030373)))

(assert (=> bs!1870378 (= (dynLambda!27364 lambda!414255 (h!74229 lt!2517605)) (validRegex!8927 (h!74229 lt!2517605)))))

(declare-fun m!7737484 () Bool)

(assert (=> bs!1870378 m!7737484))

(assert (=> b!7031399 d!2193443))

(declare-fun b_lambda!266273 () Bool)

(assert (= b_lambda!266223 (or b!7030373 b_lambda!266273)))

(declare-fun bs!1870379 () Bool)

(declare-fun d!2193445 () Bool)

(assert (= bs!1870379 (and d!2193445 b!7030373)))

(declare-fun lt!2517849 () Unit!161586)

(assert (=> bs!1870379 (= lt!2517849 (lemmaConcatPreservesForall!780 (exprs!6955 a!13184) (exprs!6955 ct2!306) lambda!414255))))

(assert (=> bs!1870379 (= (dynLambda!27362 lambda!414254 a!13184) (Context!12911 (++!15498 (exprs!6955 a!13184) (exprs!6955 ct2!306))))))

(declare-fun m!7737486 () Bool)

(assert (=> bs!1870379 m!7737486))

(declare-fun m!7737488 () Bool)

(assert (=> bs!1870379 m!7737488))

(assert (=> d!2193067 d!2193445))

(declare-fun b_lambda!266275 () Bool)

(assert (= b_lambda!266237 (or b!7030377 b_lambda!266275)))

(declare-fun bs!1870380 () Bool)

(declare-fun d!2193447 () Bool)

(assert (= bs!1870380 (and d!2193447 b!7030377)))

(assert (=> bs!1870380 (= (dynLambda!27359 lambda!414253 (h!74231 (toList!10802 lt!2517572))) (matchZipper!2999 (store ((as const (Array Context!12910 Bool)) false) (h!74231 (toList!10802 lt!2517572)) true) s!7408))))

(declare-fun m!7737490 () Bool)

(assert (=> bs!1870380 m!7737490))

(assert (=> bs!1870380 m!7737490))

(declare-fun m!7737492 () Bool)

(assert (=> bs!1870380 m!7737492))

(assert (=> b!7031111 d!2193447))

(declare-fun b_lambda!266277 () Bool)

(assert (= b_lambda!266253 (or b!7030364 b_lambda!266277)))

(assert (=> d!2193391 d!2192911))

(declare-fun b_lambda!266279 () Bool)

(assert (= b_lambda!266245 (or d!2192871 b_lambda!266279)))

(declare-fun bs!1870381 () Bool)

(declare-fun d!2193449 () Bool)

(assert (= bs!1870381 (and d!2193449 d!2192871)))

(assert (=> bs!1870381 (= (dynLambda!27364 lambda!414288 (h!74229 (exprs!6955 setElem!49106))) (validRegex!8927 (h!74229 (exprs!6955 setElem!49106))))))

(declare-fun m!7737494 () Bool)

(assert (=> bs!1870381 m!7737494))

(assert (=> b!7031195 d!2193449))

(declare-fun b_lambda!266281 () Bool)

(assert (= b_lambda!266255 (or b!7030373 b_lambda!266281)))

(declare-fun bs!1870382 () Bool)

(declare-fun d!2193451 () Bool)

(assert (= bs!1870382 (and d!2193451 b!7030373)))

(assert (=> bs!1870382 (= (dynLambda!27364 lambda!414255 (h!74229 (++!15498 lt!2517605 (exprs!6955 ct2!306)))) (validRegex!8927 (h!74229 (++!15498 lt!2517605 (exprs!6955 ct2!306)))))))

(declare-fun m!7737496 () Bool)

(assert (=> bs!1870382 m!7737496))

(assert (=> b!7031397 d!2193451))

(declare-fun b_lambda!266283 () Bool)

(assert (= b_lambda!266229 (or b!7030364 b_lambda!266283)))

(assert (=> d!2193139 d!2192903))

(declare-fun b_lambda!266285 () Bool)

(assert (= b_lambda!266259 (or d!2192899 b_lambda!266285)))

(declare-fun bs!1870383 () Bool)

(declare-fun d!2193453 () Bool)

(assert (= bs!1870383 (and d!2193453 d!2192899)))

(assert (=> bs!1870383 (= (dynLambda!27364 lambda!414295 (h!74229 (exprs!6955 ct2!306))) (validRegex!8927 (h!74229 (exprs!6955 ct2!306))))))

(declare-fun m!7737498 () Bool)

(assert (=> bs!1870383 m!7737498))

(assert (=> b!7031449 d!2193453))

(declare-fun b_lambda!266287 () Bool)

(assert (= b_lambda!266225 (or b!7030373 b_lambda!266287)))

(declare-fun bs!1870384 () Bool)

(declare-fun d!2193455 () Bool)

(assert (= bs!1870384 (and d!2193455 b!7030373)))

(assert (=> bs!1870384 (= (dynLambda!27364 lambda!414255 (h!74229 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)))) (validRegex!8927 (h!74229 (++!15498 (exprs!6955 lt!2517579) (exprs!6955 ct2!306)))))))

(declare-fun m!7737500 () Bool)

(assert (=> bs!1870384 m!7737500))

(assert (=> b!7031040 d!2193455))

(check-sat (not b!7030812) (not d!2193305) (not b!7031035) (not b!7030924) (not d!2193257) (not b!7031451) (not b!7031358) (not bm!638485) (not bs!1870382) (not d!2193011) (not b!7031014) (not b!7030946) (not bs!1870379) (not b!7031285) (not d!2193253) (not d!2193261) (not b!7030807) (not d!2193317) (not b_lambda!266289) (not d!2193229) (not b_lambda!266211) (not b_lambda!266205) (not b!7031466) (not d!2193347) (not b!7031357) (not d!2193041) (not b!7031109) (not b!7031378) (not bm!638492) (not d!2193081) (not bm!638458) (not b!7030997) (not b!7030834) (not b!7031196) (not bm!638495) (not b!7030848) (not b!7031469) (not b!7031279) (not b!7030850) (not b_lambda!266263) (not d!2193321) (not b!7031183) (not bm!638446) (not b_lambda!266269) (not b!7031384) (not b!7030864) (not d!2193071) (not b!7031385) (not b_lambda!266283) (not b!7031177) (not b!7031303) (not b!7031112) (not b!7031463) (not bm!638456) (not b!7030856) (not d!2192927) (not d!2193397) (not d!2193115) (not d!2193363) (not b!7031278) (not bm!638531) (not bm!638519) (not d!2193103) (not b!7031238) (not b!7030840) (not bs!1870380) (not b!7031473) (not d!2193385) (not setNonEmpty!49122) (not bm!638516) (not b!7031030) (not b!7030830) (not b!7031012) (not d!2193401) (not b_lambda!266275) (not d!2193311) (not d!2193411) (not b!7031034) (not b!7031427) (not b!7030947) (not d!2193403) (not bm!638443) (not d!2193083) (not d!2193133) (not b_lambda!266261) (not b!7030787) (not b!7031016) (not d!2192939) (not d!2193419) (not d!2193265) (not d!2193231) (not b!7030900) (not b!7031376) (not b!7031328) (not d!2193093) (not b!7031472) (not d!2193393) (not b!7031331) (not b!7030976) (not b!7030951) (not d!2193127) (not b!7031025) (not b!7031233) (not b!7031257) (not b_lambda!266213) (not bm!638496) (not d!2192943) (not d!2193309) (not b_lambda!266285) (not b!7031398) (not d!2193381) (not setNonEmpty!49126) (not b!7031302) (not bs!1870376) (not d!2192991) tp_is_empty!44143 (not b!7030964) (not b!7031280) (not b!7030863) (not b!7031200) (not d!2193125) (not b!7031464) (not d!2192925) (not b!7030786) (not d!2193079) (not b!7030853) (not b!7030873) (not d!2193303) (not d!2193367) (not bm!638462) (not b!7030898) (not d!2193141) (not d!2192945) (not b!7031365) (not b!7031033) (not d!2193069) (not d!2193147) (not b!7031284) (not b!7030809) (not b!7031232) (not b!7031181) (not d!2193067) (not bs!1870381) (not d!2193023) (not bm!638461) (not d!2193045) (not b!7030960) (not b!7031045) (not d!2193423) (not b!7031059) (not d!2193089) (not b!7030810) (not b!7030806) (not d!2193371) (not b!7031332) (not d!2193349) (not b!7030918) (not b!7031364) (not b!7031465) (not b_lambda!266203) (not b!7031470) (not b!7031261) (not bm!638455) (not b!7030948) (not b!7031067) (not d!2192947) (not b!7031400) (not bm!638464) (not b!7031029) (not b!7031173) (not b!7031013) (not b!7031041) (not b!7031447) (not d!2193107) (not b!7031354) (not d!2193135) (not d!2193027) (not b!7030934) (not b!7031217) (not b_lambda!266279) (not b!7031368) (not bm!638486) (not b!7030921) (not b!7031426) (not b!7031468) (not b_lambda!266207) (not b!7031055) (not bm!638498) (not bs!1870375) (not b!7031306) (not b!7031355) (not b!7031375) (not b!7031236) (not b!7031218) (not d!2193227) (not bm!638517) (not b_lambda!266273) (not d!2193087) (not b!7031113) (not bm!638467) (not bm!638489) (not b!7030962) (not d!2193015) (not b!7030865) (not bm!638459) (not d!2193333) (not d!2192959) (not d!2193339) (not b!7031444) (not b_lambda!266281) (not b!7031401) (not bm!638490) (not b!7031211) (not d!2193151) (not b!7030871) (not d!2193013) (not b_lambda!266287) (not d!2193313) (not d!2193267) (not b!7031237) (not d!2193139) (not b!7030935) (not b!7031329) (not b_lambda!266265) (not b!7030846) (not b!7031019) (not b!7031054) (not b!7031330) (not b_lambda!266277) (not b!7031212) (not b!7030988) (not d!2193413) (not d!2193281) (not bm!638465) (not b!7030953) (not setNonEmpty!49119) (not b!7030901) (not b!7031322) (not b!7031017) (not setNonEmpty!49125) (not b!7031283) (not b!7030832) (not d!2193377) (not d!2193169) (not d!2192983) (not b_lambda!266267) (not b!7031450) (not b!7031308) (not d!2193167) (not d!2193121) (not d!2193239) (not b!7030912) (not b!7031402) (not d!2193225) (not b_lambda!266271) (not b!7030984) (not b!7031058) (not b!7031028) (not b!7031116) (not d!2192993) (not b!7031231) (not b!7030991) (not b!7031471) (not b!7031323) (not b!7030917) (not b!7030852) (not d!2193273) (not bm!638444) (not setNonEmpty!49123) (not b!7031260) (not b_lambda!266209) (not d!2193043) (not b!7031369) (not bs!1870384) (not bs!1870383) (not bs!1870378) (not b!7031115) (not d!2193117) (not d!2193373) (not d!2193391))
(check-sat)
