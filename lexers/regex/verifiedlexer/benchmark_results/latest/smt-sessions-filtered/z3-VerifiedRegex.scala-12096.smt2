; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!678004 () Bool)

(assert start!678004)

(declare-fun b!7024446 () Bool)

(assert (=> b!7024446 true))

(declare-fun b!7024452 () Bool)

(assert (=> b!7024452 true))

(declare-fun b!7024459 () Bool)

(assert (=> b!7024459 true))

(declare-fun setIsEmpty!48944 () Bool)

(declare-fun setRes!48944 () Bool)

(assert (=> setIsEmpty!48944 setRes!48944))

(declare-fun b!7024445 () Bool)

(declare-fun e!4222686 () Bool)

(declare-fun e!4222684 () Bool)

(assert (=> b!7024445 (= e!4222686 e!4222684)))

(declare-fun res!2867571 () Bool)

(assert (=> b!7024445 (=> res!2867571 e!4222684)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35148 0))(
  ( (C!35149 (val!27276 Int)) )
))
(declare-datatypes ((Regex!17439 0))(
  ( (ElementMatch!17439 (c!1305604 C!35148)) (Concat!26284 (regOne!35390 Regex!17439) (regTwo!35390 Regex!17439)) (EmptyExpr!17439) (Star!17439 (reg!17768 Regex!17439)) (EmptyLang!17439) (Union!17439 (regOne!35391 Regex!17439) (regTwo!35391 Regex!17439)) )
))
(declare-datatypes ((List!67845 0))(
  ( (Nil!67721) (Cons!67721 (h!74169 Regex!17439) (t!381600 List!67845)) )
))
(declare-datatypes ((Context!12870 0))(
  ( (Context!12871 (exprs!6935 List!67845)) )
))
(declare-fun lt!2513905 () (InoxSet Context!12870))

(declare-fun lt!2513913 () (InoxSet Context!12870))

(assert (=> b!7024445 (= res!2867571 (not (= lt!2513905 lt!2513913)))))

(declare-fun lt!2513930 () (InoxSet Context!12870))

(declare-fun lt!2513921 () (InoxSet Context!12870))

(assert (=> b!7024445 (= lt!2513913 ((_ map or) lt!2513930 lt!2513921))))

(declare-fun lt!2513918 () Context!12870)

(declare-datatypes ((List!67846 0))(
  ( (Nil!67722) (Cons!67722 (h!74170 C!35148) (t!381601 List!67846)) )
))
(declare-fun s!7408 () List!67846)

(declare-fun derivationStepZipperUp!2049 (Context!12870 C!35148) (InoxSet Context!12870))

(assert (=> b!7024445 (= lt!2513921 (derivationStepZipperUp!2049 lt!2513918 (h!74170 s!7408)))))

(declare-fun lt!2513910 () Context!12870)

(declare-fun derivationStepZipperDown!2103 (Regex!17439 Context!12870 C!35148) (InoxSet Context!12870))

(assert (=> b!7024445 (= lt!2513930 (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513910)) lt!2513918 (h!74170 s!7408)))))

(declare-fun lt!2513914 () List!67845)

(declare-fun ct2!306 () Context!12870)

(declare-fun ++!15472 (List!67845 List!67845) List!67845)

(assert (=> b!7024445 (= lt!2513918 (Context!12871 (++!15472 lt!2513914 (exprs!6935 ct2!306))))))

(declare-fun lambda!412664 () Int)

(declare-datatypes ((Unit!161540 0))(
  ( (Unit!161541) )
))
(declare-fun lt!2513915 () Unit!161540)

(declare-fun lemmaConcatPreservesForall!760 (List!67845 List!67845 Int) Unit!161540)

(assert (=> b!7024445 (= lt!2513915 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun lt!2513928 () Unit!161540)

(assert (=> b!7024445 (= lt!2513928 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun e!4222676 () Bool)

(declare-fun e!4222683 () Bool)

(assert (=> b!7024446 (= e!4222676 (not e!4222683))))

(declare-fun res!2867568 () Bool)

(assert (=> b!7024446 (=> res!2867568 e!4222683)))

(declare-fun lt!2513931 () (InoxSet Context!12870))

(declare-fun matchZipper!2979 ((InoxSet Context!12870) List!67846) Bool)

(assert (=> b!7024446 (= res!2867568 (not (matchZipper!2979 lt!2513931 s!7408)))))

(declare-fun lt!2513922 () Context!12870)

(assert (=> b!7024446 (= lt!2513931 (store ((as const (Array Context!12870 Bool)) false) lt!2513922 true))))

(declare-fun lt!2513925 () (InoxSet Context!12870))

(declare-fun lambda!412662 () Int)

(declare-fun getWitness!1426 ((InoxSet Context!12870) Int) Context!12870)

(assert (=> b!7024446 (= lt!2513922 (getWitness!1426 lt!2513925 lambda!412662))))

(declare-datatypes ((List!67847 0))(
  ( (Nil!67723) (Cons!67723 (h!74171 Context!12870) (t!381602 List!67847)) )
))
(declare-fun lt!2513920 () List!67847)

(declare-fun exists!3345 (List!67847 Int) Bool)

(assert (=> b!7024446 (exists!3345 lt!2513920 lambda!412662)))

(declare-fun lt!2513924 () Unit!161540)

(declare-fun lemmaZipperMatchesExistsMatchingContext!378 (List!67847 List!67846) Unit!161540)

(assert (=> b!7024446 (= lt!2513924 (lemmaZipperMatchesExistsMatchingContext!378 lt!2513920 s!7408))))

(declare-fun toList!10782 ((InoxSet Context!12870)) List!67847)

(assert (=> b!7024446 (= lt!2513920 (toList!10782 lt!2513925))))

(declare-fun b!7024447 () Bool)

(declare-fun res!2867572 () Bool)

(assert (=> b!7024447 (=> (not res!2867572) (not e!4222676))))

(get-info :version)

(assert (=> b!7024447 (= res!2867572 ((_ is Cons!67722) s!7408))))

(declare-fun b!7024448 () Bool)

(declare-fun e!4222678 () Bool)

(assert (=> b!7024448 (= e!4222678 (not (matchZipper!2979 lt!2513921 (t!381601 s!7408))))))

(declare-fun lt!2513911 () Unit!161540)

(assert (=> b!7024448 (= lt!2513911 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun setNonEmpty!48944 () Bool)

(declare-fun setElem!48944 () Context!12870)

(declare-fun e!4222682 () Bool)

(declare-fun tp!1935241 () Bool)

(declare-fun inv!86456 (Context!12870) Bool)

(assert (=> setNonEmpty!48944 (= setRes!48944 (and tp!1935241 (inv!86456 setElem!48944) e!4222682))))

(declare-fun z1!570 () (InoxSet Context!12870))

(declare-fun setRest!48944 () (InoxSet Context!12870))

(assert (=> setNonEmpty!48944 (= z1!570 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) setElem!48944 true) setRest!48944))))

(declare-fun b!7024449 () Bool)

(declare-fun e!4222680 () Bool)

(assert (=> b!7024449 (= e!4222684 e!4222680)))

(declare-fun res!2867577 () Bool)

(assert (=> b!7024449 (=> res!2867577 e!4222680)))

(assert (=> b!7024449 (= res!2867577 e!4222678)))

(declare-fun res!2867575 () Bool)

(assert (=> b!7024449 (=> (not res!2867575) (not e!4222678))))

(declare-fun lt!2513926 () Bool)

(declare-fun lt!2513916 () Bool)

(assert (=> b!7024449 (= res!2867575 (not (= lt!2513926 lt!2513916)))))

(assert (=> b!7024449 (= lt!2513926 (matchZipper!2979 lt!2513905 (t!381601 s!7408)))))

(declare-fun lt!2513927 () Unit!161540)

(assert (=> b!7024449 (= lt!2513927 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun e!4222675 () Bool)

(assert (=> b!7024449 (= (matchZipper!2979 lt!2513913 (t!381601 s!7408)) e!4222675)))

(declare-fun res!2867569 () Bool)

(assert (=> b!7024449 (=> res!2867569 e!4222675)))

(assert (=> b!7024449 (= res!2867569 lt!2513916)))

(assert (=> b!7024449 (= lt!2513916 (matchZipper!2979 lt!2513930 (t!381601 s!7408)))))

(declare-fun lt!2513906 () Unit!161540)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1512 ((InoxSet Context!12870) (InoxSet Context!12870) List!67846) Unit!161540)

(assert (=> b!7024449 (= lt!2513906 (lemmaZipperConcatMatchesSameAsBothZippers!1512 lt!2513930 lt!2513921 (t!381601 s!7408)))))

(declare-fun lt!2513909 () Unit!161540)

(assert (=> b!7024449 (= lt!2513909 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun lt!2513917 () Unit!161540)

(assert (=> b!7024449 (= lt!2513917 (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(declare-fun b!7024450 () Bool)

(declare-fun e!4222677 () Bool)

(assert (=> b!7024450 (= e!4222677 e!4222686)))

(declare-fun res!2867576 () Bool)

(assert (=> b!7024450 (=> res!2867576 e!4222686)))

(declare-fun nullable!7150 (Regex!17439) Bool)

(assert (=> b!7024450 (= res!2867576 (not (nullable!7150 (h!74169 (exprs!6935 lt!2513910)))))))

(declare-fun tail!13506 (List!67845) List!67845)

(assert (=> b!7024450 (= lt!2513914 (tail!13506 (exprs!6935 lt!2513910)))))

(declare-fun b!7024451 () Bool)

(declare-fun res!2867574 () Bool)

(assert (=> b!7024451 (=> res!2867574 e!4222677)))

(assert (=> b!7024451 (= res!2867574 (not ((_ is Cons!67721) (exprs!6935 lt!2513910))))))

(declare-fun res!2867567 () Bool)

(assert (=> start!678004 (=> (not res!2867567) (not e!4222676))))

(assert (=> start!678004 (= res!2867567 (matchZipper!2979 lt!2513925 s!7408))))

(declare-fun appendTo!560 ((InoxSet Context!12870) Context!12870) (InoxSet Context!12870))

(assert (=> start!678004 (= lt!2513925 (appendTo!560 z1!570 ct2!306))))

(assert (=> start!678004 e!4222676))

(declare-fun condSetEmpty!48944 () Bool)

(assert (=> start!678004 (= condSetEmpty!48944 (= z1!570 ((as const (Array Context!12870 Bool)) false)))))

(assert (=> start!678004 setRes!48944))

(declare-fun e!4222687 () Bool)

(assert (=> start!678004 (and (inv!86456 ct2!306) e!4222687)))

(declare-fun e!4222681 () Bool)

(assert (=> start!678004 e!4222681))

(declare-fun e!4222685 () Bool)

(assert (=> b!7024452 (= e!4222683 e!4222685)))

(declare-fun res!2867566 () Bool)

(assert (=> b!7024452 (=> res!2867566 e!4222685)))

(declare-fun lt!2513919 () Context!12870)

(assert (=> b!7024452 (= res!2867566 (or (not (= lt!2513919 lt!2513922)) (not (select z1!570 lt!2513910))))))

(assert (=> b!7024452 (= lt!2513919 (Context!12871 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306))))))

(declare-fun lt!2513923 () Unit!161540)

(assert (=> b!7024452 (= lt!2513923 (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664))))

(declare-fun lambda!412663 () Int)

(declare-fun mapPost2!280 ((InoxSet Context!12870) Int Context!12870) Context!12870)

(assert (=> b!7024452 (= lt!2513910 (mapPost2!280 z1!570 lambda!412663 lt!2513922))))

(declare-fun b!7024453 () Bool)

(declare-fun e!4222679 () Bool)

(assert (=> b!7024453 (= e!4222685 e!4222679)))

(declare-fun res!2867578 () Bool)

(assert (=> b!7024453 (=> res!2867578 e!4222679)))

(declare-fun lt!2513907 () (InoxSet Context!12870))

(assert (=> b!7024453 (= res!2867578 (not (= lt!2513907 lt!2513931)))))

(assert (=> b!7024453 (= lt!2513907 (store ((as const (Array Context!12870 Bool)) false) lt!2513919 true))))

(declare-fun lt!2513929 () Unit!161540)

(assert (=> b!7024453 (= lt!2513929 (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664))))

(declare-fun b!7024454 () Bool)

(declare-fun tp!1935239 () Bool)

(assert (=> b!7024454 (= e!4222682 tp!1935239)))

(declare-fun b!7024455 () Bool)

(declare-fun res!2867565 () Bool)

(assert (=> b!7024455 (=> res!2867565 e!4222683)))

(assert (=> b!7024455 (= res!2867565 (not (select lt!2513925 lt!2513922)))))

(declare-fun b!7024456 () Bool)

(declare-fun tp!1935240 () Bool)

(assert (=> b!7024456 (= e!4222687 tp!1935240)))

(declare-fun b!7024457 () Bool)

(assert (=> b!7024457 (= e!4222680 lt!2513926)))

(declare-fun b!7024458 () Bool)

(assert (=> b!7024458 (= e!4222675 (matchZipper!2979 lt!2513921 (t!381601 s!7408)))))

(assert (=> b!7024459 (= e!4222679 e!4222677)))

(declare-fun res!2867573 () Bool)

(assert (=> b!7024459 (=> res!2867573 e!4222677)))

(declare-fun derivationStepZipper!2895 ((InoxSet Context!12870) C!35148) (InoxSet Context!12870))

(assert (=> b!7024459 (= res!2867573 (not (= (derivationStepZipper!2895 lt!2513907 (h!74170 s!7408)) lt!2513905)))))

(declare-fun lambda!412665 () Int)

(declare-fun flatMap!2386 ((InoxSet Context!12870) Int) (InoxSet Context!12870))

(assert (=> b!7024459 (= (flatMap!2386 lt!2513907 lambda!412665) (derivationStepZipperUp!2049 lt!2513919 (h!74170 s!7408)))))

(declare-fun lt!2513912 () Unit!161540)

(declare-fun lemmaFlatMapOnSingletonSet!1900 ((InoxSet Context!12870) Context!12870 Int) Unit!161540)

(assert (=> b!7024459 (= lt!2513912 (lemmaFlatMapOnSingletonSet!1900 lt!2513907 lt!2513919 lambda!412665))))

(assert (=> b!7024459 (= lt!2513905 (derivationStepZipperUp!2049 lt!2513919 (h!74170 s!7408)))))

(declare-fun lt!2513908 () Unit!161540)

(assert (=> b!7024459 (= lt!2513908 (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664))))

(declare-fun b!7024460 () Bool)

(declare-fun res!2867570 () Bool)

(assert (=> b!7024460 (=> res!2867570 e!4222677)))

(declare-fun isEmpty!39485 (List!67845) Bool)

(assert (=> b!7024460 (= res!2867570 (isEmpty!39485 (exprs!6935 lt!2513910)))))

(declare-fun b!7024461 () Bool)

(declare-fun tp_is_empty!44103 () Bool)

(declare-fun tp!1935238 () Bool)

(assert (=> b!7024461 (= e!4222681 (and tp_is_empty!44103 tp!1935238))))

(assert (= (and start!678004 res!2867567) b!7024447))

(assert (= (and b!7024447 res!2867572) b!7024446))

(assert (= (and b!7024446 (not res!2867568)) b!7024455))

(assert (= (and b!7024455 (not res!2867565)) b!7024452))

(assert (= (and b!7024452 (not res!2867566)) b!7024453))

(assert (= (and b!7024453 (not res!2867578)) b!7024459))

(assert (= (and b!7024459 (not res!2867573)) b!7024451))

(assert (= (and b!7024451 (not res!2867574)) b!7024460))

(assert (= (and b!7024460 (not res!2867570)) b!7024450))

(assert (= (and b!7024450 (not res!2867576)) b!7024445))

(assert (= (and b!7024445 (not res!2867571)) b!7024449))

(assert (= (and b!7024449 (not res!2867569)) b!7024458))

(assert (= (and b!7024449 res!2867575) b!7024448))

(assert (= (and b!7024449 (not res!2867577)) b!7024457))

(assert (= (and start!678004 condSetEmpty!48944) setIsEmpty!48944))

(assert (= (and start!678004 (not condSetEmpty!48944)) setNonEmpty!48944))

(assert (= setNonEmpty!48944 b!7024454))

(assert (= start!678004 b!7024456))

(assert (= (and start!678004 ((_ is Cons!67722) s!7408)) b!7024461))

(declare-fun m!7727188 () Bool)

(assert (=> b!7024445 m!7727188))

(declare-fun m!7727190 () Bool)

(assert (=> b!7024445 m!7727190))

(declare-fun m!7727192 () Bool)

(assert (=> b!7024445 m!7727192))

(declare-fun m!7727194 () Bool)

(assert (=> b!7024445 m!7727194))

(assert (=> b!7024445 m!7727192))

(declare-fun m!7727196 () Bool)

(assert (=> b!7024458 m!7727196))

(declare-fun m!7727198 () Bool)

(assert (=> b!7024459 m!7727198))

(declare-fun m!7727200 () Bool)

(assert (=> b!7024459 m!7727200))

(declare-fun m!7727202 () Bool)

(assert (=> b!7024459 m!7727202))

(declare-fun m!7727204 () Bool)

(assert (=> b!7024459 m!7727204))

(declare-fun m!7727206 () Bool)

(assert (=> b!7024459 m!7727206))

(declare-fun m!7727208 () Bool)

(assert (=> setNonEmpty!48944 m!7727208))

(declare-fun m!7727210 () Bool)

(assert (=> b!7024455 m!7727210))

(assert (=> b!7024448 m!7727196))

(assert (=> b!7024448 m!7727192))

(declare-fun m!7727212 () Bool)

(assert (=> b!7024453 m!7727212))

(assert (=> b!7024453 m!7727198))

(declare-fun m!7727214 () Bool)

(assert (=> b!7024449 m!7727214))

(assert (=> b!7024449 m!7727192))

(assert (=> b!7024449 m!7727192))

(assert (=> b!7024449 m!7727192))

(declare-fun m!7727216 () Bool)

(assert (=> b!7024449 m!7727216))

(declare-fun m!7727218 () Bool)

(assert (=> b!7024449 m!7727218))

(declare-fun m!7727220 () Bool)

(assert (=> b!7024449 m!7727220))

(declare-fun m!7727222 () Bool)

(assert (=> b!7024460 m!7727222))

(declare-fun m!7727224 () Bool)

(assert (=> b!7024452 m!7727224))

(declare-fun m!7727226 () Bool)

(assert (=> b!7024452 m!7727226))

(assert (=> b!7024452 m!7727198))

(declare-fun m!7727228 () Bool)

(assert (=> b!7024452 m!7727228))

(declare-fun m!7727230 () Bool)

(assert (=> b!7024446 m!7727230))

(declare-fun m!7727232 () Bool)

(assert (=> b!7024446 m!7727232))

(declare-fun m!7727234 () Bool)

(assert (=> b!7024446 m!7727234))

(declare-fun m!7727236 () Bool)

(assert (=> b!7024446 m!7727236))

(declare-fun m!7727238 () Bool)

(assert (=> b!7024446 m!7727238))

(declare-fun m!7727240 () Bool)

(assert (=> b!7024446 m!7727240))

(declare-fun m!7727242 () Bool)

(assert (=> b!7024450 m!7727242))

(declare-fun m!7727244 () Bool)

(assert (=> b!7024450 m!7727244))

(declare-fun m!7727246 () Bool)

(assert (=> start!678004 m!7727246))

(declare-fun m!7727248 () Bool)

(assert (=> start!678004 m!7727248))

(declare-fun m!7727250 () Bool)

(assert (=> start!678004 m!7727250))

(check-sat (not b!7024454) (not b!7024460) (not b!7024456) (not b!7024459) (not b!7024445) (not setNonEmpty!48944) (not b!7024449) (not start!678004) (not b!7024450) (not b!7024448) (not b!7024458) (not b!7024452) (not b!7024453) (not b!7024461) (not b!7024446) tp_is_empty!44103)
(check-sat)
(get-model)

(declare-fun b!7024569 () Bool)

(declare-fun e!4222746 () Bool)

(assert (=> b!7024569 (= e!4222746 (nullable!7150 (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun b!7024570 () Bool)

(declare-fun e!4222748 () (InoxSet Context!12870))

(assert (=> b!7024570 (= e!4222748 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024571 () Bool)

(declare-fun e!4222747 () (InoxSet Context!12870))

(assert (=> b!7024571 (= e!4222747 e!4222748)))

(declare-fun c!1305645 () Bool)

(assert (=> b!7024571 (= c!1305645 ((_ is Cons!67721) (exprs!6935 lt!2513918)))))

(declare-fun b!7024572 () Bool)

(declare-fun call!637713 () (InoxSet Context!12870))

(assert (=> b!7024572 (= e!4222747 ((_ map or) call!637713 (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (h!74170 s!7408))))))

(declare-fun b!7024573 () Bool)

(assert (=> b!7024573 (= e!4222748 call!637713)))

(declare-fun d!2189699 () Bool)

(declare-fun c!1305644 () Bool)

(assert (=> d!2189699 (= c!1305644 e!4222746)))

(declare-fun res!2867609 () Bool)

(assert (=> d!2189699 (=> (not res!2867609) (not e!4222746))))

(assert (=> d!2189699 (= res!2867609 ((_ is Cons!67721) (exprs!6935 lt!2513918)))))

(assert (=> d!2189699 (= (derivationStepZipperUp!2049 lt!2513918 (h!74170 s!7408)) e!4222747)))

(declare-fun bm!637707 () Bool)

(assert (=> bm!637707 (= call!637713 (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513918)) (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (h!74170 s!7408)))))

(assert (= (and d!2189699 res!2867609) b!7024569))

(assert (= (and d!2189699 c!1305644) b!7024572))

(assert (= (and d!2189699 (not c!1305644)) b!7024571))

(assert (= (and b!7024571 c!1305645) b!7024573))

(assert (= (and b!7024571 (not c!1305645)) b!7024570))

(assert (= (or b!7024572 b!7024573) bm!637707))

(declare-fun m!7727402 () Bool)

(assert (=> b!7024569 m!7727402))

(declare-fun m!7727404 () Bool)

(assert (=> b!7024572 m!7727404))

(declare-fun m!7727406 () Bool)

(assert (=> bm!637707 m!7727406))

(assert (=> b!7024445 d!2189699))

(declare-fun b!7024596 () Bool)

(declare-fun e!4222759 () Bool)

(declare-fun lt!2513962 () List!67845)

(assert (=> b!7024596 (= e!4222759 (or (not (= (exprs!6935 ct2!306) Nil!67721)) (= lt!2513962 lt!2513914)))))

(declare-fun b!7024593 () Bool)

(declare-fun e!4222760 () List!67845)

(assert (=> b!7024593 (= e!4222760 (exprs!6935 ct2!306))))

(declare-fun d!2189701 () Bool)

(assert (=> d!2189701 e!4222759))

(declare-fun res!2867616 () Bool)

(assert (=> d!2189701 (=> (not res!2867616) (not e!4222759))))

(declare-fun content!13490 (List!67845) (InoxSet Regex!17439))

(assert (=> d!2189701 (= res!2867616 (= (content!13490 lt!2513962) ((_ map or) (content!13490 lt!2513914) (content!13490 (exprs!6935 ct2!306)))))))

(assert (=> d!2189701 (= lt!2513962 e!4222760)))

(declare-fun c!1305653 () Bool)

(assert (=> d!2189701 (= c!1305653 ((_ is Nil!67721) lt!2513914))))

(assert (=> d!2189701 (= (++!15472 lt!2513914 (exprs!6935 ct2!306)) lt!2513962)))

(declare-fun b!7024595 () Bool)

(declare-fun res!2867615 () Bool)

(assert (=> b!7024595 (=> (not res!2867615) (not e!4222759))))

(declare-fun size!41038 (List!67845) Int)

(assert (=> b!7024595 (= res!2867615 (= (size!41038 lt!2513962) (+ (size!41038 lt!2513914) (size!41038 (exprs!6935 ct2!306)))))))

(declare-fun b!7024594 () Bool)

(assert (=> b!7024594 (= e!4222760 (Cons!67721 (h!74169 lt!2513914) (++!15472 (t!381600 lt!2513914) (exprs!6935 ct2!306))))))

(assert (= (and d!2189701 c!1305653) b!7024593))

(assert (= (and d!2189701 (not c!1305653)) b!7024594))

(assert (= (and d!2189701 res!2867616) b!7024595))

(assert (= (and b!7024595 res!2867615) b!7024596))

(declare-fun m!7727408 () Bool)

(assert (=> d!2189701 m!7727408))

(declare-fun m!7727410 () Bool)

(assert (=> d!2189701 m!7727410))

(declare-fun m!7727412 () Bool)

(assert (=> d!2189701 m!7727412))

(declare-fun m!7727414 () Bool)

(assert (=> b!7024595 m!7727414))

(declare-fun m!7727416 () Bool)

(assert (=> b!7024595 m!7727416))

(declare-fun m!7727418 () Bool)

(assert (=> b!7024595 m!7727418))

(declare-fun m!7727420 () Bool)

(assert (=> b!7024594 m!7727420))

(assert (=> b!7024445 d!2189701))

(declare-fun d!2189703 () Bool)

(declare-fun forall!16340 (List!67845 Int) Bool)

(assert (=> d!2189703 (forall!16340 (++!15472 lt!2513914 (exprs!6935 ct2!306)) lambda!412664)))

(declare-fun lt!2513965 () Unit!161540)

(declare-fun choose!53056 (List!67845 List!67845 Int) Unit!161540)

(assert (=> d!2189703 (= lt!2513965 (choose!53056 lt!2513914 (exprs!6935 ct2!306) lambda!412664))))

(assert (=> d!2189703 (forall!16340 lt!2513914 lambda!412664)))

(assert (=> d!2189703 (= (lemmaConcatPreservesForall!760 lt!2513914 (exprs!6935 ct2!306) lambda!412664) lt!2513965)))

(declare-fun bs!1868259 () Bool)

(assert (= bs!1868259 d!2189703))

(assert (=> bs!1868259 m!7727188))

(assert (=> bs!1868259 m!7727188))

(declare-fun m!7727434 () Bool)

(assert (=> bs!1868259 m!7727434))

(declare-fun m!7727436 () Bool)

(assert (=> bs!1868259 m!7727436))

(declare-fun m!7727438 () Bool)

(assert (=> bs!1868259 m!7727438))

(assert (=> b!7024445 d!2189703))

(declare-fun bm!637729 () Bool)

(declare-fun call!637734 () (InoxSet Context!12870))

(declare-fun call!637736 () (InoxSet Context!12870))

(assert (=> bm!637729 (= call!637734 call!637736)))

(declare-fun d!2189705 () Bool)

(declare-fun c!1305665 () Bool)

(assert (=> d!2189705 (= c!1305665 (and ((_ is ElementMatch!17439) (h!74169 (exprs!6935 lt!2513910))) (= (c!1305604 (h!74169 (exprs!6935 lt!2513910))) (h!74170 s!7408))))))

(declare-fun e!4222783 () (InoxSet Context!12870))

(assert (=> d!2189705 (= (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513910)) lt!2513918 (h!74170 s!7408)) e!4222783)))

(declare-fun b!7024635 () Bool)

(assert (=> b!7024635 (= e!4222783 (store ((as const (Array Context!12870 Bool)) false) lt!2513918 true))))

(declare-fun b!7024636 () Bool)

(declare-fun e!4222784 () Bool)

(assert (=> b!7024636 (= e!4222784 (nullable!7150 (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))))

(declare-fun b!7024637 () Bool)

(declare-fun c!1305667 () Bool)

(assert (=> b!7024637 (= c!1305667 e!4222784)))

(declare-fun res!2867619 () Bool)

(assert (=> b!7024637 (=> (not res!2867619) (not e!4222784))))

(assert (=> b!7024637 (= res!2867619 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun e!4222786 () (InoxSet Context!12870))

(declare-fun e!4222788 () (InoxSet Context!12870))

(assert (=> b!7024637 (= e!4222786 e!4222788)))

(declare-fun b!7024638 () Bool)

(declare-fun call!637735 () (InoxSet Context!12870))

(assert (=> b!7024638 (= e!4222788 ((_ map or) call!637735 call!637736))))

(declare-fun b!7024639 () Bool)

(declare-fun e!4222785 () (InoxSet Context!12870))

(assert (=> b!7024639 (= e!4222785 call!637734)))

(declare-fun b!7024640 () Bool)

(declare-fun c!1305668 () Bool)

(assert (=> b!7024640 (= c!1305668 ((_ is Star!17439) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun e!4222787 () (InoxSet Context!12870))

(assert (=> b!7024640 (= e!4222787 e!4222785)))

(declare-fun b!7024641 () Bool)

(assert (=> b!7024641 (= e!4222785 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024642 () Bool)

(assert (=> b!7024642 (= e!4222787 call!637734)))

(declare-fun b!7024643 () Bool)

(assert (=> b!7024643 (= e!4222788 e!4222787)))

(declare-fun c!1305664 () Bool)

(assert (=> b!7024643 (= c!1305664 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun call!637738 () List!67845)

(declare-fun bm!637730 () Bool)

(declare-fun call!637737 () (InoxSet Context!12870))

(declare-fun c!1305666 () Bool)

(assert (=> bm!637730 (= call!637737 (derivationStepZipperDown!2103 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))) (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738)) (h!74170 s!7408)))))

(declare-fun call!637739 () List!67845)

(declare-fun bm!637731 () Bool)

(declare-fun $colon$colon!2555 (List!67845 Regex!17439) List!67845)

(assert (=> bm!637731 (= call!637739 ($colon$colon!2555 (exprs!6935 lt!2513918) (ite (or c!1305667 c!1305664) (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (h!74169 (exprs!6935 lt!2513910)))))))

(declare-fun b!7024644 () Bool)

(assert (=> b!7024644 (= e!4222783 e!4222786)))

(assert (=> b!7024644 (= c!1305666 ((_ is Union!17439) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun bm!637732 () Bool)

(assert (=> bm!637732 (= call!637735 (derivationStepZipperDown!2103 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))) (ite c!1305666 lt!2513918 (Context!12871 call!637739)) (h!74170 s!7408)))))

(declare-fun b!7024645 () Bool)

(assert (=> b!7024645 (= e!4222786 ((_ map or) call!637735 call!637737))))

(declare-fun bm!637733 () Bool)

(assert (=> bm!637733 (= call!637738 call!637739)))

(declare-fun bm!637734 () Bool)

(assert (=> bm!637734 (= call!637736 call!637737)))

(assert (= (and d!2189705 c!1305665) b!7024635))

(assert (= (and d!2189705 (not c!1305665)) b!7024644))

(assert (= (and b!7024644 c!1305666) b!7024645))

(assert (= (and b!7024644 (not c!1305666)) b!7024637))

(assert (= (and b!7024637 res!2867619) b!7024636))

(assert (= (and b!7024637 c!1305667) b!7024638))

(assert (= (and b!7024637 (not c!1305667)) b!7024643))

(assert (= (and b!7024643 c!1305664) b!7024642))

(assert (= (and b!7024643 (not c!1305664)) b!7024640))

(assert (= (and b!7024640 c!1305668) b!7024639))

(assert (= (and b!7024640 (not c!1305668)) b!7024641))

(assert (= (or b!7024642 b!7024639) bm!637733))

(assert (= (or b!7024642 b!7024639) bm!637729))

(assert (= (or b!7024638 bm!637729) bm!637734))

(assert (= (or b!7024638 bm!637733) bm!637731))

(assert (= (or b!7024645 b!7024638) bm!637732))

(assert (= (or b!7024645 bm!637734) bm!637730))

(declare-fun m!7727448 () Bool)

(assert (=> bm!637730 m!7727448))

(declare-fun m!7727450 () Bool)

(assert (=> bm!637732 m!7727450))

(declare-fun m!7727452 () Bool)

(assert (=> bm!637731 m!7727452))

(declare-fun m!7727454 () Bool)

(assert (=> b!7024635 m!7727454))

(declare-fun m!7727456 () Bool)

(assert (=> b!7024636 m!7727456))

(assert (=> b!7024445 d!2189705))

(declare-fun bs!1868263 () Bool)

(declare-fun d!2189713 () Bool)

(assert (= bs!1868263 (and d!2189713 b!7024446)))

(declare-fun lambda!412686 () Int)

(assert (=> bs!1868263 (not (= lambda!412686 lambda!412662))))

(assert (=> d!2189713 true))

(declare-fun order!28135 () Int)

(declare-fun dynLambda!27294 (Int Int) Int)

(assert (=> d!2189713 (< (dynLambda!27294 order!28135 lambda!412662) (dynLambda!27294 order!28135 lambda!412686))))

(declare-fun forall!16341 (List!67847 Int) Bool)

(assert (=> d!2189713 (= (exists!3345 lt!2513920 lambda!412662) (not (forall!16341 lt!2513920 lambda!412686)))))

(declare-fun bs!1868264 () Bool)

(assert (= bs!1868264 d!2189713))

(declare-fun m!7727458 () Bool)

(assert (=> bs!1868264 m!7727458))

(assert (=> b!7024446 d!2189713))

(declare-fun d!2189715 () Bool)

(declare-fun c!1305671 () Bool)

(declare-fun isEmpty!39487 (List!67846) Bool)

(assert (=> d!2189715 (= c!1305671 (isEmpty!39487 s!7408))))

(declare-fun e!4222791 () Bool)

(assert (=> d!2189715 (= (matchZipper!2979 lt!2513931 s!7408) e!4222791)))

(declare-fun b!7024652 () Bool)

(declare-fun nullableZipper!2560 ((InoxSet Context!12870)) Bool)

(assert (=> b!7024652 (= e!4222791 (nullableZipper!2560 lt!2513931))))

(declare-fun b!7024653 () Bool)

(declare-fun head!14235 (List!67846) C!35148)

(declare-fun tail!13508 (List!67846) List!67846)

(assert (=> b!7024653 (= e!4222791 (matchZipper!2979 (derivationStepZipper!2895 lt!2513931 (head!14235 s!7408)) (tail!13508 s!7408)))))

(assert (= (and d!2189715 c!1305671) b!7024652))

(assert (= (and d!2189715 (not c!1305671)) b!7024653))

(declare-fun m!7727460 () Bool)

(assert (=> d!2189715 m!7727460))

(declare-fun m!7727462 () Bool)

(assert (=> b!7024652 m!7727462))

(declare-fun m!7727464 () Bool)

(assert (=> b!7024653 m!7727464))

(assert (=> b!7024653 m!7727464))

(declare-fun m!7727466 () Bool)

(assert (=> b!7024653 m!7727466))

(declare-fun m!7727468 () Bool)

(assert (=> b!7024653 m!7727468))

(assert (=> b!7024653 m!7727466))

(assert (=> b!7024653 m!7727468))

(declare-fun m!7727470 () Bool)

(assert (=> b!7024653 m!7727470))

(assert (=> b!7024446 d!2189715))

(declare-fun d!2189717 () Bool)

(declare-fun e!4222794 () Bool)

(assert (=> d!2189717 e!4222794))

(declare-fun res!2867622 () Bool)

(assert (=> d!2189717 (=> (not res!2867622) (not e!4222794))))

(declare-fun lt!2513969 () List!67847)

(declare-fun noDuplicate!2609 (List!67847) Bool)

(assert (=> d!2189717 (= res!2867622 (noDuplicate!2609 lt!2513969))))

(declare-fun choose!53057 ((InoxSet Context!12870)) List!67847)

(assert (=> d!2189717 (= lt!2513969 (choose!53057 lt!2513925))))

(assert (=> d!2189717 (= (toList!10782 lt!2513925) lt!2513969)))

(declare-fun b!7024656 () Bool)

(declare-fun content!13491 (List!67847) (InoxSet Context!12870))

(assert (=> b!7024656 (= e!4222794 (= (content!13491 lt!2513969) lt!2513925))))

(assert (= (and d!2189717 res!2867622) b!7024656))

(declare-fun m!7727472 () Bool)

(assert (=> d!2189717 m!7727472))

(declare-fun m!7727474 () Bool)

(assert (=> d!2189717 m!7727474))

(declare-fun m!7727476 () Bool)

(assert (=> b!7024656 m!7727476))

(assert (=> b!7024446 d!2189717))

(declare-fun bs!1868265 () Bool)

(declare-fun d!2189719 () Bool)

(assert (= bs!1868265 (and d!2189719 b!7024446)))

(declare-fun lambda!412689 () Int)

(assert (=> bs!1868265 (= lambda!412689 lambda!412662)))

(declare-fun bs!1868266 () Bool)

(assert (= bs!1868266 (and d!2189719 d!2189713)))

(assert (=> bs!1868266 (not (= lambda!412689 lambda!412686))))

(assert (=> d!2189719 true))

(assert (=> d!2189719 (exists!3345 lt!2513920 lambda!412689)))

(declare-fun lt!2513972 () Unit!161540)

(declare-fun choose!53058 (List!67847 List!67846) Unit!161540)

(assert (=> d!2189719 (= lt!2513972 (choose!53058 lt!2513920 s!7408))))

(assert (=> d!2189719 (matchZipper!2979 (content!13491 lt!2513920) s!7408)))

(assert (=> d!2189719 (= (lemmaZipperMatchesExistsMatchingContext!378 lt!2513920 s!7408) lt!2513972)))

(declare-fun bs!1868267 () Bool)

(assert (= bs!1868267 d!2189719))

(declare-fun m!7727478 () Bool)

(assert (=> bs!1868267 m!7727478))

(declare-fun m!7727480 () Bool)

(assert (=> bs!1868267 m!7727480))

(declare-fun m!7727482 () Bool)

(assert (=> bs!1868267 m!7727482))

(assert (=> bs!1868267 m!7727482))

(declare-fun m!7727484 () Bool)

(assert (=> bs!1868267 m!7727484))

(assert (=> b!7024446 d!2189719))

(declare-fun d!2189721 () Bool)

(declare-fun e!4222797 () Bool)

(assert (=> d!2189721 e!4222797))

(declare-fun res!2867625 () Bool)

(assert (=> d!2189721 (=> (not res!2867625) (not e!4222797))))

(declare-fun lt!2513975 () Context!12870)

(declare-fun dynLambda!27295 (Int Context!12870) Bool)

(assert (=> d!2189721 (= res!2867625 (dynLambda!27295 lambda!412662 lt!2513975))))

(declare-fun getWitness!1428 (List!67847 Int) Context!12870)

(assert (=> d!2189721 (= lt!2513975 (getWitness!1428 (toList!10782 lt!2513925) lambda!412662))))

(declare-fun exists!3347 ((InoxSet Context!12870) Int) Bool)

(assert (=> d!2189721 (exists!3347 lt!2513925 lambda!412662)))

(assert (=> d!2189721 (= (getWitness!1426 lt!2513925 lambda!412662) lt!2513975)))

(declare-fun b!7024659 () Bool)

(assert (=> b!7024659 (= e!4222797 (select lt!2513925 lt!2513975))))

(assert (= (and d!2189721 res!2867625) b!7024659))

(declare-fun b_lambda!265443 () Bool)

(assert (=> (not b_lambda!265443) (not d!2189721)))

(declare-fun m!7727486 () Bool)

(assert (=> d!2189721 m!7727486))

(assert (=> d!2189721 m!7727234))

(assert (=> d!2189721 m!7727234))

(declare-fun m!7727488 () Bool)

(assert (=> d!2189721 m!7727488))

(declare-fun m!7727490 () Bool)

(assert (=> d!2189721 m!7727490))

(declare-fun m!7727492 () Bool)

(assert (=> b!7024659 m!7727492))

(assert (=> b!7024446 d!2189721))

(declare-fun d!2189723 () Bool)

(declare-fun c!1305674 () Bool)

(assert (=> d!2189723 (= c!1305674 (isEmpty!39487 (t!381601 s!7408)))))

(declare-fun e!4222798 () Bool)

(assert (=> d!2189723 (= (matchZipper!2979 lt!2513921 (t!381601 s!7408)) e!4222798)))

(declare-fun b!7024660 () Bool)

(assert (=> b!7024660 (= e!4222798 (nullableZipper!2560 lt!2513921))))

(declare-fun b!7024661 () Bool)

(assert (=> b!7024661 (= e!4222798 (matchZipper!2979 (derivationStepZipper!2895 lt!2513921 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))))))

(assert (= (and d!2189723 c!1305674) b!7024660))

(assert (= (and d!2189723 (not c!1305674)) b!7024661))

(declare-fun m!7727494 () Bool)

(assert (=> d!2189723 m!7727494))

(declare-fun m!7727496 () Bool)

(assert (=> b!7024660 m!7727496))

(declare-fun m!7727498 () Bool)

(assert (=> b!7024661 m!7727498))

(assert (=> b!7024661 m!7727498))

(declare-fun m!7727500 () Bool)

(assert (=> b!7024661 m!7727500))

(declare-fun m!7727502 () Bool)

(assert (=> b!7024661 m!7727502))

(assert (=> b!7024661 m!7727500))

(assert (=> b!7024661 m!7727502))

(declare-fun m!7727504 () Bool)

(assert (=> b!7024661 m!7727504))

(assert (=> b!7024448 d!2189723))

(assert (=> b!7024448 d!2189703))

(declare-fun bs!1868268 () Bool)

(declare-fun d!2189725 () Bool)

(assert (= bs!1868268 (and d!2189725 b!7024459)))

(declare-fun lambda!412692 () Int)

(assert (=> bs!1868268 (= lambda!412692 lambda!412665)))

(assert (=> d!2189725 true))

(assert (=> d!2189725 (= (derivationStepZipper!2895 lt!2513907 (h!74170 s!7408)) (flatMap!2386 lt!2513907 lambda!412692))))

(declare-fun bs!1868269 () Bool)

(assert (= bs!1868269 d!2189725))

(declare-fun m!7727506 () Bool)

(assert (=> bs!1868269 m!7727506))

(assert (=> b!7024459 d!2189725))

(declare-fun d!2189727 () Bool)

(assert (=> d!2189727 (forall!16340 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)) lambda!412664)))

(declare-fun lt!2513976 () Unit!161540)

(assert (=> d!2189727 (= lt!2513976 (choose!53056 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664))))

(assert (=> d!2189727 (forall!16340 (exprs!6935 lt!2513910) lambda!412664)))

(assert (=> d!2189727 (= (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664) lt!2513976)))

(declare-fun bs!1868270 () Bool)

(assert (= bs!1868270 d!2189727))

(assert (=> bs!1868270 m!7727226))

(assert (=> bs!1868270 m!7727226))

(declare-fun m!7727508 () Bool)

(assert (=> bs!1868270 m!7727508))

(declare-fun m!7727510 () Bool)

(assert (=> bs!1868270 m!7727510))

(declare-fun m!7727512 () Bool)

(assert (=> bs!1868270 m!7727512))

(assert (=> b!7024459 d!2189727))

(declare-fun d!2189729 () Bool)

(declare-fun dynLambda!27296 (Int Context!12870) (InoxSet Context!12870))

(assert (=> d!2189729 (= (flatMap!2386 lt!2513907 lambda!412665) (dynLambda!27296 lambda!412665 lt!2513919))))

(declare-fun lt!2513979 () Unit!161540)

(declare-fun choose!53059 ((InoxSet Context!12870) Context!12870 Int) Unit!161540)

(assert (=> d!2189729 (= lt!2513979 (choose!53059 lt!2513907 lt!2513919 lambda!412665))))

(assert (=> d!2189729 (= lt!2513907 (store ((as const (Array Context!12870 Bool)) false) lt!2513919 true))))

(assert (=> d!2189729 (= (lemmaFlatMapOnSingletonSet!1900 lt!2513907 lt!2513919 lambda!412665) lt!2513979)))

(declare-fun b_lambda!265445 () Bool)

(assert (=> (not b_lambda!265445) (not d!2189729)))

(declare-fun bs!1868271 () Bool)

(assert (= bs!1868271 d!2189729))

(assert (=> bs!1868271 m!7727206))

(declare-fun m!7727514 () Bool)

(assert (=> bs!1868271 m!7727514))

(declare-fun m!7727516 () Bool)

(assert (=> bs!1868271 m!7727516))

(assert (=> bs!1868271 m!7727212))

(assert (=> b!7024459 d!2189729))

(declare-fun b!7024664 () Bool)

(declare-fun e!4222799 () Bool)

(assert (=> b!7024664 (= e!4222799 (nullable!7150 (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun b!7024665 () Bool)

(declare-fun e!4222801 () (InoxSet Context!12870))

(assert (=> b!7024665 (= e!4222801 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024666 () Bool)

(declare-fun e!4222800 () (InoxSet Context!12870))

(assert (=> b!7024666 (= e!4222800 e!4222801)))

(declare-fun c!1305678 () Bool)

(assert (=> b!7024666 (= c!1305678 ((_ is Cons!67721) (exprs!6935 lt!2513919)))))

(declare-fun call!637740 () (InoxSet Context!12870))

(declare-fun b!7024667 () Bool)

(assert (=> b!7024667 (= e!4222800 ((_ map or) call!637740 (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (h!74170 s!7408))))))

(declare-fun b!7024668 () Bool)

(assert (=> b!7024668 (= e!4222801 call!637740)))

(declare-fun d!2189731 () Bool)

(declare-fun c!1305677 () Bool)

(assert (=> d!2189731 (= c!1305677 e!4222799)))

(declare-fun res!2867626 () Bool)

(assert (=> d!2189731 (=> (not res!2867626) (not e!4222799))))

(assert (=> d!2189731 (= res!2867626 ((_ is Cons!67721) (exprs!6935 lt!2513919)))))

(assert (=> d!2189731 (= (derivationStepZipperUp!2049 lt!2513919 (h!74170 s!7408)) e!4222800)))

(declare-fun bm!637735 () Bool)

(assert (=> bm!637735 (= call!637740 (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513919)) (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (h!74170 s!7408)))))

(assert (= (and d!2189731 res!2867626) b!7024664))

(assert (= (and d!2189731 c!1305677) b!7024667))

(assert (= (and d!2189731 (not c!1305677)) b!7024666))

(assert (= (and b!7024666 c!1305678) b!7024668))

(assert (= (and b!7024666 (not c!1305678)) b!7024665))

(assert (= (or b!7024667 b!7024668) bm!637735))

(declare-fun m!7727518 () Bool)

(assert (=> b!7024664 m!7727518))

(declare-fun m!7727520 () Bool)

(assert (=> b!7024667 m!7727520))

(declare-fun m!7727522 () Bool)

(assert (=> bm!637735 m!7727522))

(assert (=> b!7024459 d!2189731))

(declare-fun d!2189733 () Bool)

(declare-fun choose!53060 ((InoxSet Context!12870) Int) (InoxSet Context!12870))

(assert (=> d!2189733 (= (flatMap!2386 lt!2513907 lambda!412665) (choose!53060 lt!2513907 lambda!412665))))

(declare-fun bs!1868272 () Bool)

(assert (= bs!1868272 d!2189733))

(declare-fun m!7727524 () Bool)

(assert (=> bs!1868272 m!7727524))

(assert (=> b!7024459 d!2189733))

(declare-fun bs!1868273 () Bool)

(declare-fun d!2189735 () Bool)

(assert (= bs!1868273 (and d!2189735 b!7024452)))

(declare-fun lambda!412695 () Int)

(assert (=> bs!1868273 (= lambda!412695 lambda!412664)))

(assert (=> d!2189735 (= (inv!86456 setElem!48944) (forall!16340 (exprs!6935 setElem!48944) lambda!412695))))

(declare-fun bs!1868274 () Bool)

(assert (= bs!1868274 d!2189735))

(declare-fun m!7727526 () Bool)

(assert (=> bs!1868274 m!7727526))

(assert (=> setNonEmpty!48944 d!2189735))

(assert (=> b!7024458 d!2189723))

(declare-fun d!2189737 () Bool)

(assert (=> d!2189737 (= (isEmpty!39485 (exprs!6935 lt!2513910)) ((_ is Nil!67721) (exprs!6935 lt!2513910)))))

(assert (=> b!7024460 d!2189737))

(declare-fun d!2189739 () Bool)

(declare-fun c!1305679 () Bool)

(assert (=> d!2189739 (= c!1305679 (isEmpty!39487 (t!381601 s!7408)))))

(declare-fun e!4222802 () Bool)

(assert (=> d!2189739 (= (matchZipper!2979 lt!2513905 (t!381601 s!7408)) e!4222802)))

(declare-fun b!7024669 () Bool)

(assert (=> b!7024669 (= e!4222802 (nullableZipper!2560 lt!2513905))))

(declare-fun b!7024670 () Bool)

(assert (=> b!7024670 (= e!4222802 (matchZipper!2979 (derivationStepZipper!2895 lt!2513905 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))))))

(assert (= (and d!2189739 c!1305679) b!7024669))

(assert (= (and d!2189739 (not c!1305679)) b!7024670))

(assert (=> d!2189739 m!7727494))

(declare-fun m!7727528 () Bool)

(assert (=> b!7024669 m!7727528))

(assert (=> b!7024670 m!7727498))

(assert (=> b!7024670 m!7727498))

(declare-fun m!7727530 () Bool)

(assert (=> b!7024670 m!7727530))

(assert (=> b!7024670 m!7727502))

(assert (=> b!7024670 m!7727530))

(assert (=> b!7024670 m!7727502))

(declare-fun m!7727532 () Bool)

(assert (=> b!7024670 m!7727532))

(assert (=> b!7024449 d!2189739))

(declare-fun d!2189741 () Bool)

(declare-fun c!1305680 () Bool)

(assert (=> d!2189741 (= c!1305680 (isEmpty!39487 (t!381601 s!7408)))))

(declare-fun e!4222803 () Bool)

(assert (=> d!2189741 (= (matchZipper!2979 lt!2513913 (t!381601 s!7408)) e!4222803)))

(declare-fun b!7024671 () Bool)

(assert (=> b!7024671 (= e!4222803 (nullableZipper!2560 lt!2513913))))

(declare-fun b!7024672 () Bool)

(assert (=> b!7024672 (= e!4222803 (matchZipper!2979 (derivationStepZipper!2895 lt!2513913 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))))))

(assert (= (and d!2189741 c!1305680) b!7024671))

(assert (= (and d!2189741 (not c!1305680)) b!7024672))

(assert (=> d!2189741 m!7727494))

(declare-fun m!7727534 () Bool)

(assert (=> b!7024671 m!7727534))

(assert (=> b!7024672 m!7727498))

(assert (=> b!7024672 m!7727498))

(declare-fun m!7727536 () Bool)

(assert (=> b!7024672 m!7727536))

(assert (=> b!7024672 m!7727502))

(assert (=> b!7024672 m!7727536))

(assert (=> b!7024672 m!7727502))

(declare-fun m!7727538 () Bool)

(assert (=> b!7024672 m!7727538))

(assert (=> b!7024449 d!2189741))

(declare-fun d!2189743 () Bool)

(declare-fun c!1305681 () Bool)

(assert (=> d!2189743 (= c!1305681 (isEmpty!39487 (t!381601 s!7408)))))

(declare-fun e!4222804 () Bool)

(assert (=> d!2189743 (= (matchZipper!2979 lt!2513930 (t!381601 s!7408)) e!4222804)))

(declare-fun b!7024673 () Bool)

(assert (=> b!7024673 (= e!4222804 (nullableZipper!2560 lt!2513930))))

(declare-fun b!7024674 () Bool)

(assert (=> b!7024674 (= e!4222804 (matchZipper!2979 (derivationStepZipper!2895 lt!2513930 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))))))

(assert (= (and d!2189743 c!1305681) b!7024673))

(assert (= (and d!2189743 (not c!1305681)) b!7024674))

(assert (=> d!2189743 m!7727494))

(declare-fun m!7727540 () Bool)

(assert (=> b!7024673 m!7727540))

(assert (=> b!7024674 m!7727498))

(assert (=> b!7024674 m!7727498))

(declare-fun m!7727542 () Bool)

(assert (=> b!7024674 m!7727542))

(assert (=> b!7024674 m!7727502))

(assert (=> b!7024674 m!7727542))

(assert (=> b!7024674 m!7727502))

(declare-fun m!7727544 () Bool)

(assert (=> b!7024674 m!7727544))

(assert (=> b!7024449 d!2189743))

(assert (=> b!7024449 d!2189703))

(declare-fun d!2189745 () Bool)

(declare-fun e!4222807 () Bool)

(assert (=> d!2189745 (= (matchZipper!2979 ((_ map or) lt!2513930 lt!2513921) (t!381601 s!7408)) e!4222807)))

(declare-fun res!2867629 () Bool)

(assert (=> d!2189745 (=> res!2867629 e!4222807)))

(assert (=> d!2189745 (= res!2867629 (matchZipper!2979 lt!2513930 (t!381601 s!7408)))))

(declare-fun lt!2513982 () Unit!161540)

(declare-fun choose!53061 ((InoxSet Context!12870) (InoxSet Context!12870) List!67846) Unit!161540)

(assert (=> d!2189745 (= lt!2513982 (choose!53061 lt!2513930 lt!2513921 (t!381601 s!7408)))))

(assert (=> d!2189745 (= (lemmaZipperConcatMatchesSameAsBothZippers!1512 lt!2513930 lt!2513921 (t!381601 s!7408)) lt!2513982)))

(declare-fun b!7024677 () Bool)

(assert (=> b!7024677 (= e!4222807 (matchZipper!2979 lt!2513921 (t!381601 s!7408)))))

(assert (= (and d!2189745 (not res!2867629)) b!7024677))

(declare-fun m!7727546 () Bool)

(assert (=> d!2189745 m!7727546))

(assert (=> d!2189745 m!7727218))

(declare-fun m!7727548 () Bool)

(assert (=> d!2189745 m!7727548))

(assert (=> b!7024677 m!7727196))

(assert (=> b!7024449 d!2189745))

(declare-fun d!2189747 () Bool)

(declare-fun nullableFct!2709 (Regex!17439) Bool)

(assert (=> d!2189747 (= (nullable!7150 (h!74169 (exprs!6935 lt!2513910))) (nullableFct!2709 (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun bs!1868275 () Bool)

(assert (= bs!1868275 d!2189747))

(declare-fun m!7727550 () Bool)

(assert (=> bs!1868275 m!7727550))

(assert (=> b!7024450 d!2189747))

(declare-fun d!2189749 () Bool)

(assert (=> d!2189749 (= (tail!13506 (exprs!6935 lt!2513910)) (t!381600 (exprs!6935 lt!2513910)))))

(assert (=> b!7024450 d!2189749))

(declare-fun b!7024681 () Bool)

(declare-fun lt!2513983 () List!67845)

(declare-fun e!4222808 () Bool)

(assert (=> b!7024681 (= e!4222808 (or (not (= (exprs!6935 ct2!306) Nil!67721)) (= lt!2513983 (exprs!6935 lt!2513910))))))

(declare-fun b!7024678 () Bool)

(declare-fun e!4222809 () List!67845)

(assert (=> b!7024678 (= e!4222809 (exprs!6935 ct2!306))))

(declare-fun d!2189751 () Bool)

(assert (=> d!2189751 e!4222808))

(declare-fun res!2867631 () Bool)

(assert (=> d!2189751 (=> (not res!2867631) (not e!4222808))))

(assert (=> d!2189751 (= res!2867631 (= (content!13490 lt!2513983) ((_ map or) (content!13490 (exprs!6935 lt!2513910)) (content!13490 (exprs!6935 ct2!306)))))))

(assert (=> d!2189751 (= lt!2513983 e!4222809)))

(declare-fun c!1305682 () Bool)

(assert (=> d!2189751 (= c!1305682 ((_ is Nil!67721) (exprs!6935 lt!2513910)))))

(assert (=> d!2189751 (= (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)) lt!2513983)))

(declare-fun b!7024680 () Bool)

(declare-fun res!2867630 () Bool)

(assert (=> b!7024680 (=> (not res!2867630) (not e!4222808))))

(assert (=> b!7024680 (= res!2867630 (= (size!41038 lt!2513983) (+ (size!41038 (exprs!6935 lt!2513910)) (size!41038 (exprs!6935 ct2!306)))))))

(declare-fun b!7024679 () Bool)

(assert (=> b!7024679 (= e!4222809 (Cons!67721 (h!74169 (exprs!6935 lt!2513910)) (++!15472 (t!381600 (exprs!6935 lt!2513910)) (exprs!6935 ct2!306))))))

(assert (= (and d!2189751 c!1305682) b!7024678))

(assert (= (and d!2189751 (not c!1305682)) b!7024679))

(assert (= (and d!2189751 res!2867631) b!7024680))

(assert (= (and b!7024680 res!2867630) b!7024681))

(declare-fun m!7727552 () Bool)

(assert (=> d!2189751 m!7727552))

(declare-fun m!7727554 () Bool)

(assert (=> d!2189751 m!7727554))

(assert (=> d!2189751 m!7727412))

(declare-fun m!7727556 () Bool)

(assert (=> b!7024680 m!7727556))

(declare-fun m!7727558 () Bool)

(assert (=> b!7024680 m!7727558))

(assert (=> b!7024680 m!7727418))

(declare-fun m!7727560 () Bool)

(assert (=> b!7024679 m!7727560))

(assert (=> b!7024452 d!2189751))

(assert (=> b!7024452 d!2189727))

(declare-fun d!2189753 () Bool)

(declare-fun e!4222812 () Bool)

(assert (=> d!2189753 e!4222812))

(declare-fun res!2867634 () Bool)

(assert (=> d!2189753 (=> (not res!2867634) (not e!4222812))))

(declare-fun lt!2513986 () Context!12870)

(declare-fun dynLambda!27297 (Int Context!12870) Context!12870)

(assert (=> d!2189753 (= res!2867634 (= lt!2513922 (dynLambda!27297 lambda!412663 lt!2513986)))))

(declare-fun choose!53062 ((InoxSet Context!12870) Int Context!12870) Context!12870)

(assert (=> d!2189753 (= lt!2513986 (choose!53062 z1!570 lambda!412663 lt!2513922))))

(declare-fun map!15726 ((InoxSet Context!12870) Int) (InoxSet Context!12870))

(assert (=> d!2189753 (select (map!15726 z1!570 lambda!412663) lt!2513922)))

(assert (=> d!2189753 (= (mapPost2!280 z1!570 lambda!412663 lt!2513922) lt!2513986)))

(declare-fun b!7024685 () Bool)

(assert (=> b!7024685 (= e!4222812 (select z1!570 lt!2513986))))

(assert (= (and d!2189753 res!2867634) b!7024685))

(declare-fun b_lambda!265447 () Bool)

(assert (=> (not b_lambda!265447) (not d!2189753)))

(declare-fun m!7727562 () Bool)

(assert (=> d!2189753 m!7727562))

(declare-fun m!7727564 () Bool)

(assert (=> d!2189753 m!7727564))

(declare-fun m!7727566 () Bool)

(assert (=> d!2189753 m!7727566))

(declare-fun m!7727568 () Bool)

(assert (=> d!2189753 m!7727568))

(declare-fun m!7727570 () Bool)

(assert (=> b!7024685 m!7727570))

(assert (=> b!7024452 d!2189753))

(assert (=> b!7024453 d!2189727))

(declare-fun d!2189755 () Bool)

(declare-fun c!1305683 () Bool)

(assert (=> d!2189755 (= c!1305683 (isEmpty!39487 s!7408))))

(declare-fun e!4222813 () Bool)

(assert (=> d!2189755 (= (matchZipper!2979 lt!2513925 s!7408) e!4222813)))

(declare-fun b!7024686 () Bool)

(assert (=> b!7024686 (= e!4222813 (nullableZipper!2560 lt!2513925))))

(declare-fun b!7024687 () Bool)

(assert (=> b!7024687 (= e!4222813 (matchZipper!2979 (derivationStepZipper!2895 lt!2513925 (head!14235 s!7408)) (tail!13508 s!7408)))))

(assert (= (and d!2189755 c!1305683) b!7024686))

(assert (= (and d!2189755 (not c!1305683)) b!7024687))

(assert (=> d!2189755 m!7727460))

(declare-fun m!7727572 () Bool)

(assert (=> b!7024686 m!7727572))

(assert (=> b!7024687 m!7727464))

(assert (=> b!7024687 m!7727464))

(declare-fun m!7727574 () Bool)

(assert (=> b!7024687 m!7727574))

(assert (=> b!7024687 m!7727468))

(assert (=> b!7024687 m!7727574))

(assert (=> b!7024687 m!7727468))

(declare-fun m!7727576 () Bool)

(assert (=> b!7024687 m!7727576))

(assert (=> start!678004 d!2189755))

(declare-fun bs!1868276 () Bool)

(declare-fun d!2189757 () Bool)

(assert (= bs!1868276 (and d!2189757 b!7024452)))

(declare-fun lambda!412700 () Int)

(assert (=> bs!1868276 (= lambda!412700 lambda!412663)))

(assert (=> d!2189757 true))

(assert (=> d!2189757 (= (appendTo!560 z1!570 ct2!306) (map!15726 z1!570 lambda!412700))))

(declare-fun bs!1868277 () Bool)

(assert (= bs!1868277 d!2189757))

(declare-fun m!7727578 () Bool)

(assert (=> bs!1868277 m!7727578))

(assert (=> start!678004 d!2189757))

(declare-fun bs!1868278 () Bool)

(declare-fun d!2189759 () Bool)

(assert (= bs!1868278 (and d!2189759 b!7024452)))

(declare-fun lambda!412701 () Int)

(assert (=> bs!1868278 (= lambda!412701 lambda!412664)))

(declare-fun bs!1868279 () Bool)

(assert (= bs!1868279 (and d!2189759 d!2189735)))

(assert (=> bs!1868279 (= lambda!412701 lambda!412695)))

(assert (=> d!2189759 (= (inv!86456 ct2!306) (forall!16340 (exprs!6935 ct2!306) lambda!412701))))

(declare-fun bs!1868280 () Bool)

(assert (= bs!1868280 d!2189759))

(declare-fun m!7727580 () Bool)

(assert (=> bs!1868280 m!7727580))

(assert (=> start!678004 d!2189759))

(declare-fun b!7024692 () Bool)

(declare-fun e!4222816 () Bool)

(declare-fun tp!1935263 () Bool)

(declare-fun tp!1935264 () Bool)

(assert (=> b!7024692 (= e!4222816 (and tp!1935263 tp!1935264))))

(assert (=> b!7024454 (= tp!1935239 e!4222816)))

(assert (= (and b!7024454 ((_ is Cons!67721) (exprs!6935 setElem!48944))) b!7024692))

(declare-fun b!7024693 () Bool)

(declare-fun e!4222817 () Bool)

(declare-fun tp!1935265 () Bool)

(declare-fun tp!1935266 () Bool)

(assert (=> b!7024693 (= e!4222817 (and tp!1935265 tp!1935266))))

(assert (=> b!7024456 (= tp!1935240 e!4222817)))

(assert (= (and b!7024456 ((_ is Cons!67721) (exprs!6935 ct2!306))) b!7024693))

(declare-fun b!7024698 () Bool)

(declare-fun e!4222820 () Bool)

(declare-fun tp!1935269 () Bool)

(assert (=> b!7024698 (= e!4222820 (and tp_is_empty!44103 tp!1935269))))

(assert (=> b!7024461 (= tp!1935238 e!4222820)))

(assert (= (and b!7024461 ((_ is Cons!67722) (t!381601 s!7408))) b!7024698))

(declare-fun condSetEmpty!48950 () Bool)

(assert (=> setNonEmpty!48944 (= condSetEmpty!48950 (= setRest!48944 ((as const (Array Context!12870 Bool)) false)))))

(declare-fun setRes!48950 () Bool)

(assert (=> setNonEmpty!48944 (= tp!1935241 setRes!48950)))

(declare-fun setIsEmpty!48950 () Bool)

(assert (=> setIsEmpty!48950 setRes!48950))

(declare-fun e!4222823 () Bool)

(declare-fun setElem!48950 () Context!12870)

(declare-fun tp!1935275 () Bool)

(declare-fun setNonEmpty!48950 () Bool)

(assert (=> setNonEmpty!48950 (= setRes!48950 (and tp!1935275 (inv!86456 setElem!48950) e!4222823))))

(declare-fun setRest!48950 () (InoxSet Context!12870))

(assert (=> setNonEmpty!48950 (= setRest!48944 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) setElem!48950 true) setRest!48950))))

(declare-fun b!7024703 () Bool)

(declare-fun tp!1935274 () Bool)

(assert (=> b!7024703 (= e!4222823 tp!1935274)))

(assert (= (and setNonEmpty!48944 condSetEmpty!48950) setIsEmpty!48950))

(assert (= (and setNonEmpty!48944 (not condSetEmpty!48950)) setNonEmpty!48950))

(assert (= setNonEmpty!48950 b!7024703))

(declare-fun m!7727582 () Bool)

(assert (=> setNonEmpty!48950 m!7727582))

(declare-fun b_lambda!265449 () Bool)

(assert (= b_lambda!265443 (or b!7024446 b_lambda!265449)))

(declare-fun bs!1868281 () Bool)

(declare-fun d!2189761 () Bool)

(assert (= bs!1868281 (and d!2189761 b!7024446)))

(assert (=> bs!1868281 (= (dynLambda!27295 lambda!412662 lt!2513975) (matchZipper!2979 (store ((as const (Array Context!12870 Bool)) false) lt!2513975 true) s!7408))))

(declare-fun m!7727584 () Bool)

(assert (=> bs!1868281 m!7727584))

(assert (=> bs!1868281 m!7727584))

(declare-fun m!7727586 () Bool)

(assert (=> bs!1868281 m!7727586))

(assert (=> d!2189721 d!2189761))

(declare-fun b_lambda!265451 () Bool)

(assert (= b_lambda!265447 (or b!7024452 b_lambda!265451)))

(declare-fun bs!1868282 () Bool)

(declare-fun d!2189763 () Bool)

(assert (= bs!1868282 (and d!2189763 b!7024452)))

(declare-fun lt!2513989 () Unit!161540)

(assert (=> bs!1868282 (= lt!2513989 (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513986) (exprs!6935 ct2!306) lambda!412664))))

(assert (=> bs!1868282 (= (dynLambda!27297 lambda!412663 lt!2513986) (Context!12871 (++!15472 (exprs!6935 lt!2513986) (exprs!6935 ct2!306))))))

(declare-fun m!7727588 () Bool)

(assert (=> bs!1868282 m!7727588))

(declare-fun m!7727590 () Bool)

(assert (=> bs!1868282 m!7727590))

(assert (=> d!2189753 d!2189763))

(declare-fun b_lambda!265453 () Bool)

(assert (= b_lambda!265445 (or b!7024459 b_lambda!265453)))

(declare-fun bs!1868283 () Bool)

(declare-fun d!2189765 () Bool)

(assert (= bs!1868283 (and d!2189765 b!7024459)))

(assert (=> bs!1868283 (= (dynLambda!27296 lambda!412665 lt!2513919) (derivationStepZipperUp!2049 lt!2513919 (h!74170 s!7408)))))

(assert (=> bs!1868283 m!7727204))

(assert (=> d!2189729 d!2189765))

(check-sat (not d!2189741) (not b!7024674) (not d!2189759) (not b!7024661) (not d!2189735) (not b!7024667) (not d!2189729) (not b!7024698) (not d!2189713) (not d!2189755) (not d!2189757) (not d!2189703) (not b!7024594) (not b_lambda!265451) (not d!2189747) (not setNonEmpty!48950) (not bm!637732) (not bm!637731) (not bm!637730) (not b!7024686) (not b!7024572) (not b!7024656) (not d!2189733) (not b!7024692) (not b!7024653) (not bm!637707) (not d!2189753) (not b!7024652) (not d!2189725) (not bs!1868283) (not b!7024569) (not bs!1868282) (not d!2189715) (not d!2189745) (not b!7024636) (not d!2189721) (not b!7024687) (not b!7024660) (not b!7024595) (not b!7024679) (not d!2189723) (not b!7024671) (not b!7024673) tp_is_empty!44103 (not b!7024672) (not d!2189727) (not b!7024693) (not b!7024669) (not b_lambda!265453) (not b!7024677) (not d!2189751) (not b_lambda!265449) (not b!7024664) (not bs!1868281) (not d!2189717) (not d!2189743) (not bm!637735) (not b!7024680) (not b!7024670) (not d!2189739) (not d!2189701) (not d!2189719) (not b!7024703))
(check-sat)
(get-model)

(declare-fun d!2189767 () Bool)

(assert (=> d!2189767 true))

(declare-fun setRes!48953 () Bool)

(assert (=> d!2189767 setRes!48953))

(declare-fun condSetEmpty!48953 () Bool)

(declare-fun res!2867637 () (InoxSet Context!12870))

(assert (=> d!2189767 (= condSetEmpty!48953 (= res!2867637 ((as const (Array Context!12870 Bool)) false)))))

(assert (=> d!2189767 (= (choose!53060 lt!2513907 lambda!412665) res!2867637)))

(declare-fun setIsEmpty!48953 () Bool)

(assert (=> setIsEmpty!48953 setRes!48953))

(declare-fun setElem!48953 () Context!12870)

(declare-fun e!4222826 () Bool)

(declare-fun tp!1935281 () Bool)

(declare-fun setNonEmpty!48953 () Bool)

(assert (=> setNonEmpty!48953 (= setRes!48953 (and tp!1935281 (inv!86456 setElem!48953) e!4222826))))

(declare-fun setRest!48953 () (InoxSet Context!12870))

(assert (=> setNonEmpty!48953 (= res!2867637 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) setElem!48953 true) setRest!48953))))

(declare-fun b!7024706 () Bool)

(declare-fun tp!1935280 () Bool)

(assert (=> b!7024706 (= e!4222826 tp!1935280)))

(assert (= (and d!2189767 condSetEmpty!48953) setIsEmpty!48953))

(assert (= (and d!2189767 (not condSetEmpty!48953)) setNonEmpty!48953))

(assert (= setNonEmpty!48953 b!7024706))

(declare-fun m!7727592 () Bool)

(assert (=> setNonEmpty!48953 m!7727592))

(assert (=> d!2189733 d!2189767))

(declare-fun bs!1868284 () Bool)

(declare-fun d!2189769 () Bool)

(assert (= bs!1868284 (and d!2189769 b!7024446)))

(declare-fun lambda!412704 () Int)

(assert (=> bs!1868284 (not (= lambda!412704 lambda!412662))))

(declare-fun bs!1868285 () Bool)

(assert (= bs!1868285 (and d!2189769 d!2189713)))

(assert (=> bs!1868285 (not (= lambda!412704 lambda!412686))))

(declare-fun bs!1868286 () Bool)

(assert (= bs!1868286 (and d!2189769 d!2189719)))

(assert (=> bs!1868286 (not (= lambda!412704 lambda!412689))))

(assert (=> d!2189769 (= (nullableZipper!2560 lt!2513921) (exists!3347 lt!2513921 lambda!412704))))

(declare-fun bs!1868287 () Bool)

(assert (= bs!1868287 d!2189769))

(declare-fun m!7727594 () Bool)

(assert (=> bs!1868287 m!7727594))

(assert (=> b!7024660 d!2189769))

(declare-fun d!2189771 () Bool)

(declare-fun e!4222831 () Bool)

(assert (=> d!2189771 e!4222831))

(declare-fun res!2867640 () Bool)

(assert (=> d!2189771 (=> (not res!2867640) (not e!4222831))))

(declare-fun a!13113 () Context!12870)

(assert (=> d!2189771 (= res!2867640 (= lt!2513922 (dynLambda!27297 lambda!412663 a!13113)))))

(declare-fun e!4222832 () Bool)

(assert (=> d!2189771 (and (inv!86456 a!13113) e!4222832)))

(assert (=> d!2189771 (= (choose!53062 z1!570 lambda!412663 lt!2513922) a!13113)))

(declare-fun b!7024712 () Bool)

(declare-fun tp!1935284 () Bool)

(assert (=> b!7024712 (= e!4222832 tp!1935284)))

(declare-fun b!7024713 () Bool)

(assert (=> b!7024713 (= e!4222831 (select z1!570 a!13113))))

(assert (= d!2189771 b!7024712))

(assert (= (and d!2189771 res!2867640) b!7024713))

(declare-fun b_lambda!265455 () Bool)

(assert (=> (not b_lambda!265455) (not d!2189771)))

(declare-fun m!7727596 () Bool)

(assert (=> d!2189771 m!7727596))

(declare-fun m!7727598 () Bool)

(assert (=> d!2189771 m!7727598))

(declare-fun m!7727600 () Bool)

(assert (=> b!7024713 m!7727600))

(assert (=> d!2189753 d!2189771))

(declare-fun d!2189773 () Bool)

(declare-fun choose!53063 ((InoxSet Context!12870) Int) (InoxSet Context!12870))

(assert (=> d!2189773 (= (map!15726 z1!570 lambda!412663) (choose!53063 z1!570 lambda!412663))))

(declare-fun bs!1868288 () Bool)

(assert (= bs!1868288 d!2189773))

(declare-fun m!7727602 () Bool)

(assert (=> bs!1868288 m!7727602))

(assert (=> d!2189753 d!2189773))

(declare-fun d!2189775 () Bool)

(declare-fun res!2867645 () Bool)

(declare-fun e!4222837 () Bool)

(assert (=> d!2189775 (=> res!2867645 e!4222837)))

(assert (=> d!2189775 (= res!2867645 ((_ is Nil!67723) lt!2513920))))

(assert (=> d!2189775 (= (forall!16341 lt!2513920 lambda!412686) e!4222837)))

(declare-fun b!7024718 () Bool)

(declare-fun e!4222838 () Bool)

(assert (=> b!7024718 (= e!4222837 e!4222838)))

(declare-fun res!2867646 () Bool)

(assert (=> b!7024718 (=> (not res!2867646) (not e!4222838))))

(assert (=> b!7024718 (= res!2867646 (dynLambda!27295 lambda!412686 (h!74171 lt!2513920)))))

(declare-fun b!7024719 () Bool)

(assert (=> b!7024719 (= e!4222838 (forall!16341 (t!381602 lt!2513920) lambda!412686))))

(assert (= (and d!2189775 (not res!2867645)) b!7024718))

(assert (= (and b!7024718 res!2867646) b!7024719))

(declare-fun b_lambda!265457 () Bool)

(assert (=> (not b_lambda!265457) (not b!7024718)))

(declare-fun m!7727604 () Bool)

(assert (=> b!7024718 m!7727604))

(declare-fun m!7727606 () Bool)

(assert (=> b!7024719 m!7727606))

(assert (=> d!2189713 d!2189775))

(declare-fun bs!1868289 () Bool)

(declare-fun d!2189777 () Bool)

(assert (= bs!1868289 (and d!2189777 b!7024446)))

(declare-fun lambda!412705 () Int)

(assert (=> bs!1868289 (not (= lambda!412705 lambda!412662))))

(declare-fun bs!1868290 () Bool)

(assert (= bs!1868290 (and d!2189777 d!2189713)))

(assert (=> bs!1868290 (not (= lambda!412705 lambda!412686))))

(declare-fun bs!1868291 () Bool)

(assert (= bs!1868291 (and d!2189777 d!2189719)))

(assert (=> bs!1868291 (not (= lambda!412705 lambda!412689))))

(declare-fun bs!1868292 () Bool)

(assert (= bs!1868292 (and d!2189777 d!2189769)))

(assert (=> bs!1868292 (= lambda!412705 lambda!412704)))

(assert (=> d!2189777 (= (nullableZipper!2560 lt!2513913) (exists!3347 lt!2513913 lambda!412705))))

(declare-fun bs!1868293 () Bool)

(assert (= bs!1868293 d!2189777))

(declare-fun m!7727608 () Bool)

(assert (=> bs!1868293 m!7727608))

(assert (=> b!7024671 d!2189777))

(declare-fun d!2189779 () Bool)

(assert (=> d!2189779 (= (map!15726 z1!570 lambda!412700) (choose!53063 z1!570 lambda!412700))))

(declare-fun bs!1868294 () Bool)

(assert (= bs!1868294 d!2189779))

(declare-fun m!7727610 () Bool)

(assert (=> bs!1868294 m!7727610))

(assert (=> d!2189757 d!2189779))

(declare-fun d!2189781 () Bool)

(declare-fun c!1305687 () Bool)

(assert (=> d!2189781 (= c!1305687 (isEmpty!39487 (t!381601 s!7408)))))

(declare-fun e!4222839 () Bool)

(assert (=> d!2189781 (= (matchZipper!2979 ((_ map or) lt!2513930 lt!2513921) (t!381601 s!7408)) e!4222839)))

(declare-fun b!7024720 () Bool)

(assert (=> b!7024720 (= e!4222839 (nullableZipper!2560 ((_ map or) lt!2513930 lt!2513921)))))

(declare-fun b!7024721 () Bool)

(assert (=> b!7024721 (= e!4222839 (matchZipper!2979 (derivationStepZipper!2895 ((_ map or) lt!2513930 lt!2513921) (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))))))

(assert (= (and d!2189781 c!1305687) b!7024720))

(assert (= (and d!2189781 (not c!1305687)) b!7024721))

(assert (=> d!2189781 m!7727494))

(declare-fun m!7727612 () Bool)

(assert (=> b!7024720 m!7727612))

(assert (=> b!7024721 m!7727498))

(assert (=> b!7024721 m!7727498))

(declare-fun m!7727614 () Bool)

(assert (=> b!7024721 m!7727614))

(assert (=> b!7024721 m!7727502))

(assert (=> b!7024721 m!7727614))

(assert (=> b!7024721 m!7727502))

(declare-fun m!7727616 () Bool)

(assert (=> b!7024721 m!7727616))

(assert (=> d!2189745 d!2189781))

(assert (=> d!2189745 d!2189743))

(declare-fun d!2189783 () Bool)

(declare-fun e!4222842 () Bool)

(assert (=> d!2189783 (= (matchZipper!2979 ((_ map or) lt!2513930 lt!2513921) (t!381601 s!7408)) e!4222842)))

(declare-fun res!2867649 () Bool)

(assert (=> d!2189783 (=> res!2867649 e!4222842)))

(assert (=> d!2189783 (= res!2867649 (matchZipper!2979 lt!2513930 (t!381601 s!7408)))))

(assert (=> d!2189783 true))

(declare-fun _$48!2455 () Unit!161540)

(assert (=> d!2189783 (= (choose!53061 lt!2513930 lt!2513921 (t!381601 s!7408)) _$48!2455)))

(declare-fun b!7024724 () Bool)

(assert (=> b!7024724 (= e!4222842 (matchZipper!2979 lt!2513921 (t!381601 s!7408)))))

(assert (= (and d!2189783 (not res!2867649)) b!7024724))

(assert (=> d!2189783 m!7727546))

(assert (=> d!2189783 m!7727218))

(assert (=> b!7024724 m!7727196))

(assert (=> d!2189745 d!2189783))

(assert (=> d!2189729 d!2189733))

(declare-fun d!2189785 () Bool)

(assert (=> d!2189785 (= (flatMap!2386 lt!2513907 lambda!412665) (dynLambda!27296 lambda!412665 lt!2513919))))

(assert (=> d!2189785 true))

(declare-fun _$13!4430 () Unit!161540)

(assert (=> d!2189785 (= (choose!53059 lt!2513907 lt!2513919 lambda!412665) _$13!4430)))

(declare-fun b_lambda!265459 () Bool)

(assert (=> (not b_lambda!265459) (not d!2189785)))

(declare-fun bs!1868295 () Bool)

(assert (= bs!1868295 d!2189785))

(assert (=> bs!1868295 m!7727206))

(assert (=> bs!1868295 m!7727514))

(assert (=> d!2189729 d!2189785))

(declare-fun bm!637736 () Bool)

(declare-fun call!637741 () (InoxSet Context!12870))

(declare-fun call!637743 () (InoxSet Context!12870))

(assert (=> bm!637736 (= call!637741 call!637743)))

(declare-fun d!2189787 () Bool)

(declare-fun c!1305689 () Bool)

(assert (=> d!2189787 (= c!1305689 (and ((_ is ElementMatch!17439) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (= (c!1305604 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (h!74170 s!7408))))))

(declare-fun e!4222843 () (InoxSet Context!12870))

(assert (=> d!2189787 (= (derivationStepZipperDown!2103 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))) (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738)) (h!74170 s!7408)) e!4222843)))

(declare-fun b!7024725 () Bool)

(assert (=> b!7024725 (= e!4222843 (store ((as const (Array Context!12870 Bool)) false) (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738)) true))))

(declare-fun b!7024726 () Bool)

(declare-fun e!4222844 () Bool)

(assert (=> b!7024726 (= e!4222844 (nullable!7150 (regOne!35390 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))))))))

(declare-fun b!7024727 () Bool)

(declare-fun c!1305691 () Bool)

(assert (=> b!7024727 (= c!1305691 e!4222844)))

(declare-fun res!2867650 () Bool)

(assert (=> b!7024727 (=> (not res!2867650) (not e!4222844))))

(assert (=> b!7024727 (= res!2867650 ((_ is Concat!26284) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))))))

(declare-fun e!4222846 () (InoxSet Context!12870))

(declare-fun e!4222848 () (InoxSet Context!12870))

(assert (=> b!7024727 (= e!4222846 e!4222848)))

(declare-fun b!7024728 () Bool)

(declare-fun call!637742 () (InoxSet Context!12870))

(assert (=> b!7024728 (= e!4222848 ((_ map or) call!637742 call!637743))))

(declare-fun b!7024729 () Bool)

(declare-fun e!4222845 () (InoxSet Context!12870))

(assert (=> b!7024729 (= e!4222845 call!637741)))

(declare-fun c!1305692 () Bool)

(declare-fun b!7024730 () Bool)

(assert (=> b!7024730 (= c!1305692 ((_ is Star!17439) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))))))

(declare-fun e!4222847 () (InoxSet Context!12870))

(assert (=> b!7024730 (= e!4222847 e!4222845)))

(declare-fun b!7024731 () Bool)

(assert (=> b!7024731 (= e!4222845 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024732 () Bool)

(assert (=> b!7024732 (= e!4222847 call!637741)))

(declare-fun b!7024733 () Bool)

(assert (=> b!7024733 (= e!4222848 e!4222847)))

(declare-fun c!1305688 () Bool)

(assert (=> b!7024733 (= c!1305688 ((_ is Concat!26284) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))))))

(declare-fun call!637745 () List!67845)

(declare-fun bm!637737 () Bool)

(declare-fun c!1305690 () Bool)

(declare-fun call!637744 () (InoxSet Context!12870))

(assert (=> bm!637737 (= call!637744 (derivationStepZipperDown!2103 (ite c!1305690 (regTwo!35391 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (ite c!1305691 (regTwo!35390 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (ite c!1305688 (regOne!35390 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (reg!17768 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))))))) (ite (or c!1305690 c!1305691) (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738)) (Context!12871 call!637745)) (h!74170 s!7408)))))

(declare-fun call!637746 () List!67845)

(declare-fun bm!637738 () Bool)

(assert (=> bm!637738 (= call!637746 ($colon$colon!2555 (exprs!6935 (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738))) (ite (or c!1305691 c!1305688) (regTwo!35390 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))))))))

(declare-fun b!7024734 () Bool)

(assert (=> b!7024734 (= e!4222843 e!4222846)))

(assert (=> b!7024734 (= c!1305690 ((_ is Union!17439) (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))))))

(declare-fun bm!637739 () Bool)

(assert (=> bm!637739 (= call!637742 (derivationStepZipperDown!2103 (ite c!1305690 (regOne!35391 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910))))))) (regOne!35390 (ite c!1305666 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305667 (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (ite c!1305664 (regOne!35390 (h!74169 (exprs!6935 lt!2513910))) (reg!17768 (h!74169 (exprs!6935 lt!2513910)))))))) (ite c!1305690 (ite (or c!1305666 c!1305667) lt!2513918 (Context!12871 call!637738)) (Context!12871 call!637746)) (h!74170 s!7408)))))

(declare-fun b!7024735 () Bool)

(assert (=> b!7024735 (= e!4222846 ((_ map or) call!637742 call!637744))))

(declare-fun bm!637740 () Bool)

(assert (=> bm!637740 (= call!637745 call!637746)))

(declare-fun bm!637741 () Bool)

(assert (=> bm!637741 (= call!637743 call!637744)))

(assert (= (and d!2189787 c!1305689) b!7024725))

(assert (= (and d!2189787 (not c!1305689)) b!7024734))

(assert (= (and b!7024734 c!1305690) b!7024735))

(assert (= (and b!7024734 (not c!1305690)) b!7024727))

(assert (= (and b!7024727 res!2867650) b!7024726))

(assert (= (and b!7024727 c!1305691) b!7024728))

(assert (= (and b!7024727 (not c!1305691)) b!7024733))

(assert (= (and b!7024733 c!1305688) b!7024732))

(assert (= (and b!7024733 (not c!1305688)) b!7024730))

(assert (= (and b!7024730 c!1305692) b!7024729))

(assert (= (and b!7024730 (not c!1305692)) b!7024731))

(assert (= (or b!7024732 b!7024729) bm!637740))

(assert (= (or b!7024732 b!7024729) bm!637736))

(assert (= (or b!7024728 bm!637736) bm!637741))

(assert (= (or b!7024728 bm!637740) bm!637738))

(assert (= (or b!7024735 b!7024728) bm!637739))

(assert (= (or b!7024735 bm!637741) bm!637737))

(declare-fun m!7727618 () Bool)

(assert (=> bm!637737 m!7727618))

(declare-fun m!7727620 () Bool)

(assert (=> bm!637739 m!7727620))

(declare-fun m!7727622 () Bool)

(assert (=> bm!637738 m!7727622))

(declare-fun m!7727624 () Bool)

(assert (=> b!7024725 m!7727624))

(declare-fun m!7727626 () Bool)

(assert (=> b!7024726 m!7727626))

(assert (=> bm!637730 d!2189787))

(declare-fun d!2189789 () Bool)

(declare-fun res!2867655 () Bool)

(declare-fun e!4222853 () Bool)

(assert (=> d!2189789 (=> res!2867655 e!4222853)))

(assert (=> d!2189789 (= res!2867655 ((_ is Nil!67721) (exprs!6935 ct2!306)))))

(assert (=> d!2189789 (= (forall!16340 (exprs!6935 ct2!306) lambda!412701) e!4222853)))

(declare-fun b!7024740 () Bool)

(declare-fun e!4222854 () Bool)

(assert (=> b!7024740 (= e!4222853 e!4222854)))

(declare-fun res!2867656 () Bool)

(assert (=> b!7024740 (=> (not res!2867656) (not e!4222854))))

(declare-fun dynLambda!27298 (Int Regex!17439) Bool)

(assert (=> b!7024740 (= res!2867656 (dynLambda!27298 lambda!412701 (h!74169 (exprs!6935 ct2!306))))))

(declare-fun b!7024741 () Bool)

(assert (=> b!7024741 (= e!4222854 (forall!16340 (t!381600 (exprs!6935 ct2!306)) lambda!412701))))

(assert (= (and d!2189789 (not res!2867655)) b!7024740))

(assert (= (and b!7024740 res!2867656) b!7024741))

(declare-fun b_lambda!265461 () Bool)

(assert (=> (not b_lambda!265461) (not b!7024740)))

(declare-fun m!7727628 () Bool)

(assert (=> b!7024740 m!7727628))

(declare-fun m!7727630 () Bool)

(assert (=> b!7024741 m!7727630))

(assert (=> d!2189759 d!2189789))

(declare-fun d!2189791 () Bool)

(declare-fun c!1305695 () Bool)

(assert (=> d!2189791 (= c!1305695 ((_ is Nil!67721) lt!2513962))))

(declare-fun e!4222857 () (InoxSet Regex!17439))

(assert (=> d!2189791 (= (content!13490 lt!2513962) e!4222857)))

(declare-fun b!7024746 () Bool)

(assert (=> b!7024746 (= e!4222857 ((as const (Array Regex!17439 Bool)) false))))

(declare-fun b!7024747 () Bool)

(assert (=> b!7024747 (= e!4222857 ((_ map or) (store ((as const (Array Regex!17439 Bool)) false) (h!74169 lt!2513962) true) (content!13490 (t!381600 lt!2513962))))))

(assert (= (and d!2189791 c!1305695) b!7024746))

(assert (= (and d!2189791 (not c!1305695)) b!7024747))

(declare-fun m!7727632 () Bool)

(assert (=> b!7024747 m!7727632))

(declare-fun m!7727634 () Bool)

(assert (=> b!7024747 m!7727634))

(assert (=> d!2189701 d!2189791))

(declare-fun d!2189793 () Bool)

(declare-fun c!1305696 () Bool)

(assert (=> d!2189793 (= c!1305696 ((_ is Nil!67721) lt!2513914))))

(declare-fun e!4222858 () (InoxSet Regex!17439))

(assert (=> d!2189793 (= (content!13490 lt!2513914) e!4222858)))

(declare-fun b!7024748 () Bool)

(assert (=> b!7024748 (= e!4222858 ((as const (Array Regex!17439 Bool)) false))))

(declare-fun b!7024749 () Bool)

(assert (=> b!7024749 (= e!4222858 ((_ map or) (store ((as const (Array Regex!17439 Bool)) false) (h!74169 lt!2513914) true) (content!13490 (t!381600 lt!2513914))))))

(assert (= (and d!2189793 c!1305696) b!7024748))

(assert (= (and d!2189793 (not c!1305696)) b!7024749))

(declare-fun m!7727636 () Bool)

(assert (=> b!7024749 m!7727636))

(declare-fun m!7727638 () Bool)

(assert (=> b!7024749 m!7727638))

(assert (=> d!2189701 d!2189793))

(declare-fun d!2189795 () Bool)

(declare-fun c!1305697 () Bool)

(assert (=> d!2189795 (= c!1305697 ((_ is Nil!67721) (exprs!6935 ct2!306)))))

(declare-fun e!4222859 () (InoxSet Regex!17439))

(assert (=> d!2189795 (= (content!13490 (exprs!6935 ct2!306)) e!4222859)))

(declare-fun b!7024750 () Bool)

(assert (=> b!7024750 (= e!4222859 ((as const (Array Regex!17439 Bool)) false))))

(declare-fun b!7024751 () Bool)

(assert (=> b!7024751 (= e!4222859 ((_ map or) (store ((as const (Array Regex!17439 Bool)) false) (h!74169 (exprs!6935 ct2!306)) true) (content!13490 (t!381600 (exprs!6935 ct2!306)))))))

(assert (= (and d!2189795 c!1305697) b!7024750))

(assert (= (and d!2189795 (not c!1305697)) b!7024751))

(declare-fun m!7727640 () Bool)

(assert (=> b!7024751 m!7727640))

(declare-fun m!7727642 () Bool)

(assert (=> b!7024751 m!7727642))

(assert (=> d!2189701 d!2189795))

(declare-fun d!2189797 () Bool)

(declare-fun c!1305698 () Bool)

(assert (=> d!2189797 (= c!1305698 (isEmpty!39487 (tail!13508 s!7408)))))

(declare-fun e!4222860 () Bool)

(assert (=> d!2189797 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513931 (head!14235 s!7408)) (tail!13508 s!7408)) e!4222860)))

(declare-fun b!7024752 () Bool)

(assert (=> b!7024752 (= e!4222860 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513931 (head!14235 s!7408))))))

(declare-fun b!7024753 () Bool)

(assert (=> b!7024753 (= e!4222860 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513931 (head!14235 s!7408)) (head!14235 (tail!13508 s!7408))) (tail!13508 (tail!13508 s!7408))))))

(assert (= (and d!2189797 c!1305698) b!7024752))

(assert (= (and d!2189797 (not c!1305698)) b!7024753))

(assert (=> d!2189797 m!7727468))

(declare-fun m!7727644 () Bool)

(assert (=> d!2189797 m!7727644))

(assert (=> b!7024752 m!7727466))

(declare-fun m!7727646 () Bool)

(assert (=> b!7024752 m!7727646))

(assert (=> b!7024753 m!7727468))

(declare-fun m!7727648 () Bool)

(assert (=> b!7024753 m!7727648))

(assert (=> b!7024753 m!7727466))

(assert (=> b!7024753 m!7727648))

(declare-fun m!7727650 () Bool)

(assert (=> b!7024753 m!7727650))

(assert (=> b!7024753 m!7727468))

(declare-fun m!7727652 () Bool)

(assert (=> b!7024753 m!7727652))

(assert (=> b!7024753 m!7727650))

(assert (=> b!7024753 m!7727652))

(declare-fun m!7727654 () Bool)

(assert (=> b!7024753 m!7727654))

(assert (=> b!7024653 d!2189797))

(declare-fun bs!1868296 () Bool)

(declare-fun d!2189799 () Bool)

(assert (= bs!1868296 (and d!2189799 b!7024459)))

(declare-fun lambda!412706 () Int)

(assert (=> bs!1868296 (= (= (head!14235 s!7408) (h!74170 s!7408)) (= lambda!412706 lambda!412665))))

(declare-fun bs!1868297 () Bool)

(assert (= bs!1868297 (and d!2189799 d!2189725)))

(assert (=> bs!1868297 (= (= (head!14235 s!7408) (h!74170 s!7408)) (= lambda!412706 lambda!412692))))

(assert (=> d!2189799 true))

(assert (=> d!2189799 (= (derivationStepZipper!2895 lt!2513931 (head!14235 s!7408)) (flatMap!2386 lt!2513931 lambda!412706))))

(declare-fun bs!1868298 () Bool)

(assert (= bs!1868298 d!2189799))

(declare-fun m!7727656 () Bool)

(assert (=> bs!1868298 m!7727656))

(assert (=> b!7024653 d!2189799))

(declare-fun d!2189801 () Bool)

(assert (=> d!2189801 (= (head!14235 s!7408) (h!74170 s!7408))))

(assert (=> b!7024653 d!2189801))

(declare-fun d!2189803 () Bool)

(assert (=> d!2189803 (= (tail!13508 s!7408) (t!381601 s!7408))))

(assert (=> b!7024653 d!2189803))

(declare-fun b!7024768 () Bool)

(declare-fun e!4222873 () Bool)

(declare-fun call!637752 () Bool)

(assert (=> b!7024768 (= e!4222873 call!637752)))

(declare-fun b!7024769 () Bool)

(declare-fun e!4222874 () Bool)

(declare-fun e!4222878 () Bool)

(assert (=> b!7024769 (= e!4222874 e!4222878)))

(declare-fun res!2867671 () Bool)

(assert (=> b!7024769 (=> (not res!2867671) (not e!4222878))))

(assert (=> b!7024769 (= res!2867671 (and (not ((_ is EmptyLang!17439) (h!74169 (exprs!6935 lt!2513910)))) (not ((_ is ElementMatch!17439) (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun b!7024770 () Bool)

(declare-fun e!4222875 () Bool)

(declare-fun e!4222876 () Bool)

(assert (=> b!7024770 (= e!4222875 e!4222876)))

(declare-fun c!1305701 () Bool)

(assert (=> b!7024770 (= c!1305701 ((_ is Union!17439) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun bm!637746 () Bool)

(declare-fun call!637751 () Bool)

(assert (=> bm!637746 (= call!637751 (nullable!7150 (ite c!1305701 (regTwo!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun b!7024771 () Bool)

(assert (=> b!7024771 (= e!4222876 e!4222873)))

(declare-fun res!2867667 () Bool)

(assert (=> b!7024771 (= res!2867667 call!637751)))

(assert (=> b!7024771 (=> (not res!2867667) (not e!4222873))))

(declare-fun b!7024772 () Bool)

(assert (=> b!7024772 (= e!4222878 e!4222875)))

(declare-fun res!2867670 () Bool)

(assert (=> b!7024772 (=> res!2867670 e!4222875)))

(assert (=> b!7024772 (= res!2867670 ((_ is Star!17439) (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun bm!637747 () Bool)

(assert (=> bm!637747 (= call!637752 (nullable!7150 (ite c!1305701 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun b!7024773 () Bool)

(declare-fun e!4222877 () Bool)

(assert (=> b!7024773 (= e!4222876 e!4222877)))

(declare-fun res!2867669 () Bool)

(assert (=> b!7024773 (= res!2867669 call!637752)))

(assert (=> b!7024773 (=> res!2867669 e!4222877)))

(declare-fun d!2189805 () Bool)

(declare-fun res!2867668 () Bool)

(assert (=> d!2189805 (=> res!2867668 e!4222874)))

(assert (=> d!2189805 (= res!2867668 ((_ is EmptyExpr!17439) (h!74169 (exprs!6935 lt!2513910))))))

(assert (=> d!2189805 (= (nullableFct!2709 (h!74169 (exprs!6935 lt!2513910))) e!4222874)))

(declare-fun b!7024774 () Bool)

(assert (=> b!7024774 (= e!4222877 call!637751)))

(assert (= (and d!2189805 (not res!2867668)) b!7024769))

(assert (= (and b!7024769 res!2867671) b!7024772))

(assert (= (and b!7024772 (not res!2867670)) b!7024770))

(assert (= (and b!7024770 c!1305701) b!7024773))

(assert (= (and b!7024770 (not c!1305701)) b!7024771))

(assert (= (and b!7024773 (not res!2867669)) b!7024774))

(assert (= (and b!7024771 res!2867667) b!7024768))

(assert (= (or b!7024774 b!7024771) bm!637746))

(assert (= (or b!7024773 b!7024768) bm!637747))

(declare-fun m!7727658 () Bool)

(assert (=> bm!637746 m!7727658))

(declare-fun m!7727660 () Bool)

(assert (=> bm!637747 m!7727660))

(assert (=> d!2189747 d!2189805))

(declare-fun d!2189807 () Bool)

(assert (=> d!2189807 (= (nullable!7150 (h!74169 (exprs!6935 lt!2513918))) (nullableFct!2709 (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun bs!1868299 () Bool)

(assert (= bs!1868299 d!2189807))

(declare-fun m!7727662 () Bool)

(assert (=> bs!1868299 m!7727662))

(assert (=> b!7024569 d!2189807))

(declare-fun d!2189809 () Bool)

(assert (=> d!2189809 (= (nullable!7150 (h!74169 (exprs!6935 lt!2513919))) (nullableFct!2709 (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun bs!1868300 () Bool)

(assert (= bs!1868300 d!2189809))

(declare-fun m!7727664 () Bool)

(assert (=> bs!1868300 m!7727664))

(assert (=> b!7024664 d!2189809))

(declare-fun d!2189811 () Bool)

(assert (=> d!2189811 (= (isEmpty!39487 (t!381601 s!7408)) ((_ is Nil!67722) (t!381601 s!7408)))))

(assert (=> d!2189739 d!2189811))

(declare-fun lt!2513990 () List!67845)

(declare-fun e!4222879 () Bool)

(declare-fun b!7024778 () Bool)

(assert (=> b!7024778 (= e!4222879 (or (not (= (exprs!6935 ct2!306) Nil!67721)) (= lt!2513990 (t!381600 lt!2513914))))))

(declare-fun b!7024775 () Bool)

(declare-fun e!4222880 () List!67845)

(assert (=> b!7024775 (= e!4222880 (exprs!6935 ct2!306))))

(declare-fun d!2189813 () Bool)

(assert (=> d!2189813 e!4222879))

(declare-fun res!2867673 () Bool)

(assert (=> d!2189813 (=> (not res!2867673) (not e!4222879))))

(assert (=> d!2189813 (= res!2867673 (= (content!13490 lt!2513990) ((_ map or) (content!13490 (t!381600 lt!2513914)) (content!13490 (exprs!6935 ct2!306)))))))

(assert (=> d!2189813 (= lt!2513990 e!4222880)))

(declare-fun c!1305702 () Bool)

(assert (=> d!2189813 (= c!1305702 ((_ is Nil!67721) (t!381600 lt!2513914)))))

(assert (=> d!2189813 (= (++!15472 (t!381600 lt!2513914) (exprs!6935 ct2!306)) lt!2513990)))

(declare-fun b!7024777 () Bool)

(declare-fun res!2867672 () Bool)

(assert (=> b!7024777 (=> (not res!2867672) (not e!4222879))))

(assert (=> b!7024777 (= res!2867672 (= (size!41038 lt!2513990) (+ (size!41038 (t!381600 lt!2513914)) (size!41038 (exprs!6935 ct2!306)))))))

(declare-fun b!7024776 () Bool)

(assert (=> b!7024776 (= e!4222880 (Cons!67721 (h!74169 (t!381600 lt!2513914)) (++!15472 (t!381600 (t!381600 lt!2513914)) (exprs!6935 ct2!306))))))

(assert (= (and d!2189813 c!1305702) b!7024775))

(assert (= (and d!2189813 (not c!1305702)) b!7024776))

(assert (= (and d!2189813 res!2867673) b!7024777))

(assert (= (and b!7024777 res!2867672) b!7024778))

(declare-fun m!7727666 () Bool)

(assert (=> d!2189813 m!7727666))

(assert (=> d!2189813 m!7727638))

(assert (=> d!2189813 m!7727412))

(declare-fun m!7727668 () Bool)

(assert (=> b!7024777 m!7727668))

(declare-fun m!7727670 () Bool)

(assert (=> b!7024777 m!7727670))

(assert (=> b!7024777 m!7727418))

(declare-fun m!7727672 () Bool)

(assert (=> b!7024776 m!7727672))

(assert (=> b!7024594 d!2189813))

(declare-fun d!2189815 () Bool)

(declare-fun lt!2513993 () Int)

(assert (=> d!2189815 (>= lt!2513993 0)))

(declare-fun e!4222883 () Int)

(assert (=> d!2189815 (= lt!2513993 e!4222883)))

(declare-fun c!1305705 () Bool)

(assert (=> d!2189815 (= c!1305705 ((_ is Nil!67721) lt!2513983))))

(assert (=> d!2189815 (= (size!41038 lt!2513983) lt!2513993)))

(declare-fun b!7024783 () Bool)

(assert (=> b!7024783 (= e!4222883 0)))

(declare-fun b!7024784 () Bool)

(assert (=> b!7024784 (= e!4222883 (+ 1 (size!41038 (t!381600 lt!2513983))))))

(assert (= (and d!2189815 c!1305705) b!7024783))

(assert (= (and d!2189815 (not c!1305705)) b!7024784))

(declare-fun m!7727674 () Bool)

(assert (=> b!7024784 m!7727674))

(assert (=> b!7024680 d!2189815))

(declare-fun d!2189817 () Bool)

(declare-fun lt!2513994 () Int)

(assert (=> d!2189817 (>= lt!2513994 0)))

(declare-fun e!4222884 () Int)

(assert (=> d!2189817 (= lt!2513994 e!4222884)))

(declare-fun c!1305706 () Bool)

(assert (=> d!2189817 (= c!1305706 ((_ is Nil!67721) (exprs!6935 lt!2513910)))))

(assert (=> d!2189817 (= (size!41038 (exprs!6935 lt!2513910)) lt!2513994)))

(declare-fun b!7024785 () Bool)

(assert (=> b!7024785 (= e!4222884 0)))

(declare-fun b!7024786 () Bool)

(assert (=> b!7024786 (= e!4222884 (+ 1 (size!41038 (t!381600 (exprs!6935 lt!2513910)))))))

(assert (= (and d!2189817 c!1305706) b!7024785))

(assert (= (and d!2189817 (not c!1305706)) b!7024786))

(declare-fun m!7727676 () Bool)

(assert (=> b!7024786 m!7727676))

(assert (=> b!7024680 d!2189817))

(declare-fun d!2189819 () Bool)

(declare-fun lt!2513995 () Int)

(assert (=> d!2189819 (>= lt!2513995 0)))

(declare-fun e!4222885 () Int)

(assert (=> d!2189819 (= lt!2513995 e!4222885)))

(declare-fun c!1305707 () Bool)

(assert (=> d!2189819 (= c!1305707 ((_ is Nil!67721) (exprs!6935 ct2!306)))))

(assert (=> d!2189819 (= (size!41038 (exprs!6935 ct2!306)) lt!2513995)))

(declare-fun b!7024787 () Bool)

(assert (=> b!7024787 (= e!4222885 0)))

(declare-fun b!7024788 () Bool)

(assert (=> b!7024788 (= e!4222885 (+ 1 (size!41038 (t!381600 (exprs!6935 ct2!306)))))))

(assert (= (and d!2189819 c!1305707) b!7024787))

(assert (= (and d!2189819 (not c!1305707)) b!7024788))

(declare-fun m!7727678 () Bool)

(assert (=> b!7024788 m!7727678))

(assert (=> b!7024680 d!2189819))

(declare-fun d!2189821 () Bool)

(declare-fun c!1305708 () Bool)

(assert (=> d!2189821 (= c!1305708 (isEmpty!39487 (tail!13508 (t!381601 s!7408))))))

(declare-fun e!4222886 () Bool)

(assert (=> d!2189821 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513905 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))) e!4222886)))

(declare-fun b!7024789 () Bool)

(assert (=> b!7024789 (= e!4222886 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513905 (head!14235 (t!381601 s!7408)))))))

(declare-fun b!7024790 () Bool)

(assert (=> b!7024790 (= e!4222886 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513905 (head!14235 (t!381601 s!7408))) (head!14235 (tail!13508 (t!381601 s!7408)))) (tail!13508 (tail!13508 (t!381601 s!7408)))))))

(assert (= (and d!2189821 c!1305708) b!7024789))

(assert (= (and d!2189821 (not c!1305708)) b!7024790))

(assert (=> d!2189821 m!7727502))

(declare-fun m!7727680 () Bool)

(assert (=> d!2189821 m!7727680))

(assert (=> b!7024789 m!7727530))

(declare-fun m!7727682 () Bool)

(assert (=> b!7024789 m!7727682))

(assert (=> b!7024790 m!7727502))

(declare-fun m!7727684 () Bool)

(assert (=> b!7024790 m!7727684))

(assert (=> b!7024790 m!7727530))

(assert (=> b!7024790 m!7727684))

(declare-fun m!7727686 () Bool)

(assert (=> b!7024790 m!7727686))

(assert (=> b!7024790 m!7727502))

(declare-fun m!7727688 () Bool)

(assert (=> b!7024790 m!7727688))

(assert (=> b!7024790 m!7727686))

(assert (=> b!7024790 m!7727688))

(declare-fun m!7727690 () Bool)

(assert (=> b!7024790 m!7727690))

(assert (=> b!7024670 d!2189821))

(declare-fun bs!1868301 () Bool)

(declare-fun d!2189823 () Bool)

(assert (= bs!1868301 (and d!2189823 b!7024459)))

(declare-fun lambda!412707 () Int)

(assert (=> bs!1868301 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412707 lambda!412665))))

(declare-fun bs!1868302 () Bool)

(assert (= bs!1868302 (and d!2189823 d!2189725)))

(assert (=> bs!1868302 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412707 lambda!412692))))

(declare-fun bs!1868303 () Bool)

(assert (= bs!1868303 (and d!2189823 d!2189799)))

(assert (=> bs!1868303 (= (= (head!14235 (t!381601 s!7408)) (head!14235 s!7408)) (= lambda!412707 lambda!412706))))

(assert (=> d!2189823 true))

(assert (=> d!2189823 (= (derivationStepZipper!2895 lt!2513905 (head!14235 (t!381601 s!7408))) (flatMap!2386 lt!2513905 lambda!412707))))

(declare-fun bs!1868304 () Bool)

(assert (= bs!1868304 d!2189823))

(declare-fun m!7727692 () Bool)

(assert (=> bs!1868304 m!7727692))

(assert (=> b!7024670 d!2189823))

(declare-fun d!2189825 () Bool)

(assert (=> d!2189825 (= (head!14235 (t!381601 s!7408)) (h!74170 (t!381601 s!7408)))))

(assert (=> b!7024670 d!2189825))

(declare-fun d!2189827 () Bool)

(assert (=> d!2189827 (= (tail!13508 (t!381601 s!7408)) (t!381601 (t!381601 s!7408)))))

(assert (=> b!7024670 d!2189827))

(declare-fun bs!1868305 () Bool)

(declare-fun d!2189829 () Bool)

(assert (= bs!1868305 (and d!2189829 b!7024446)))

(declare-fun lambda!412708 () Int)

(assert (=> bs!1868305 (not (= lambda!412708 lambda!412662))))

(declare-fun bs!1868306 () Bool)

(assert (= bs!1868306 (and d!2189829 d!2189777)))

(assert (=> bs!1868306 (= lambda!412708 lambda!412705)))

(declare-fun bs!1868307 () Bool)

(assert (= bs!1868307 (and d!2189829 d!2189713)))

(assert (=> bs!1868307 (not (= lambda!412708 lambda!412686))))

(declare-fun bs!1868308 () Bool)

(assert (= bs!1868308 (and d!2189829 d!2189769)))

(assert (=> bs!1868308 (= lambda!412708 lambda!412704)))

(declare-fun bs!1868309 () Bool)

(assert (= bs!1868309 (and d!2189829 d!2189719)))

(assert (=> bs!1868309 (not (= lambda!412708 lambda!412689))))

(assert (=> d!2189829 (= (nullableZipper!2560 lt!2513930) (exists!3347 lt!2513930 lambda!412708))))

(declare-fun bs!1868310 () Bool)

(assert (= bs!1868310 d!2189829))

(declare-fun m!7727694 () Bool)

(assert (=> bs!1868310 m!7727694))

(assert (=> b!7024673 d!2189829))

(declare-fun d!2189831 () Bool)

(declare-fun res!2867674 () Bool)

(declare-fun e!4222887 () Bool)

(assert (=> d!2189831 (=> res!2867674 e!4222887)))

(assert (=> d!2189831 (= res!2867674 ((_ is Nil!67721) (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306))))))

(assert (=> d!2189831 (= (forall!16340 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)) lambda!412664) e!4222887)))

(declare-fun b!7024791 () Bool)

(declare-fun e!4222888 () Bool)

(assert (=> b!7024791 (= e!4222887 e!4222888)))

(declare-fun res!2867675 () Bool)

(assert (=> b!7024791 (=> (not res!2867675) (not e!4222888))))

(assert (=> b!7024791 (= res!2867675 (dynLambda!27298 lambda!412664 (h!74169 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)))))))

(declare-fun b!7024792 () Bool)

(assert (=> b!7024792 (= e!4222888 (forall!16340 (t!381600 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306))) lambda!412664))))

(assert (= (and d!2189831 (not res!2867674)) b!7024791))

(assert (= (and b!7024791 res!2867675) b!7024792))

(declare-fun b_lambda!265463 () Bool)

(assert (=> (not b_lambda!265463) (not b!7024791)))

(declare-fun m!7727696 () Bool)

(assert (=> b!7024791 m!7727696))

(declare-fun m!7727698 () Bool)

(assert (=> b!7024792 m!7727698))

(assert (=> d!2189727 d!2189831))

(assert (=> d!2189727 d!2189751))

(declare-fun d!2189833 () Bool)

(assert (=> d!2189833 (forall!16340 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)) lambda!412664)))

(assert (=> d!2189833 true))

(declare-fun _$78!541 () Unit!161540)

(assert (=> d!2189833 (= (choose!53056 (exprs!6935 lt!2513910) (exprs!6935 ct2!306) lambda!412664) _$78!541)))

(declare-fun bs!1868311 () Bool)

(assert (= bs!1868311 d!2189833))

(assert (=> bs!1868311 m!7727226))

(assert (=> bs!1868311 m!7727226))

(assert (=> bs!1868311 m!7727508))

(assert (=> d!2189727 d!2189833))

(declare-fun d!2189835 () Bool)

(declare-fun res!2867676 () Bool)

(declare-fun e!4222889 () Bool)

(assert (=> d!2189835 (=> res!2867676 e!4222889)))

(assert (=> d!2189835 (= res!2867676 ((_ is Nil!67721) (exprs!6935 lt!2513910)))))

(assert (=> d!2189835 (= (forall!16340 (exprs!6935 lt!2513910) lambda!412664) e!4222889)))

(declare-fun b!7024793 () Bool)

(declare-fun e!4222890 () Bool)

(assert (=> b!7024793 (= e!4222889 e!4222890)))

(declare-fun res!2867677 () Bool)

(assert (=> b!7024793 (=> (not res!2867677) (not e!4222890))))

(assert (=> b!7024793 (= res!2867677 (dynLambda!27298 lambda!412664 (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun b!7024794 () Bool)

(assert (=> b!7024794 (= e!4222890 (forall!16340 (t!381600 (exprs!6935 lt!2513910)) lambda!412664))))

(assert (= (and d!2189835 (not res!2867676)) b!7024793))

(assert (= (and b!7024793 res!2867677) b!7024794))

(declare-fun b_lambda!265465 () Bool)

(assert (=> (not b_lambda!265465) (not b!7024793)))

(declare-fun m!7727700 () Bool)

(assert (=> b!7024793 m!7727700))

(declare-fun m!7727702 () Bool)

(assert (=> b!7024794 m!7727702))

(assert (=> d!2189727 d!2189835))

(declare-fun bm!637748 () Bool)

(declare-fun call!637753 () (InoxSet Context!12870))

(declare-fun call!637755 () (InoxSet Context!12870))

(assert (=> bm!637748 (= call!637753 call!637755)))

(declare-fun d!2189837 () Bool)

(declare-fun c!1305710 () Bool)

(assert (=> d!2189837 (= c!1305710 (and ((_ is ElementMatch!17439) (h!74169 (exprs!6935 lt!2513918))) (= (c!1305604 (h!74169 (exprs!6935 lt!2513918))) (h!74170 s!7408))))))

(declare-fun e!4222891 () (InoxSet Context!12870))

(assert (=> d!2189837 (= (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513918)) (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (h!74170 s!7408)) e!4222891)))

(declare-fun b!7024795 () Bool)

(assert (=> b!7024795 (= e!4222891 (store ((as const (Array Context!12870 Bool)) false) (Context!12871 (t!381600 (exprs!6935 lt!2513918))) true))))

(declare-fun b!7024796 () Bool)

(declare-fun e!4222892 () Bool)

(assert (=> b!7024796 (= e!4222892 (nullable!7150 (regOne!35390 (h!74169 (exprs!6935 lt!2513918)))))))

(declare-fun b!7024797 () Bool)

(declare-fun c!1305712 () Bool)

(assert (=> b!7024797 (= c!1305712 e!4222892)))

(declare-fun res!2867678 () Bool)

(assert (=> b!7024797 (=> (not res!2867678) (not e!4222892))))

(assert (=> b!7024797 (= res!2867678 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun e!4222894 () (InoxSet Context!12870))

(declare-fun e!4222896 () (InoxSet Context!12870))

(assert (=> b!7024797 (= e!4222894 e!4222896)))

(declare-fun b!7024798 () Bool)

(declare-fun call!637754 () (InoxSet Context!12870))

(assert (=> b!7024798 (= e!4222896 ((_ map or) call!637754 call!637755))))

(declare-fun b!7024799 () Bool)

(declare-fun e!4222893 () (InoxSet Context!12870))

(assert (=> b!7024799 (= e!4222893 call!637753)))

(declare-fun b!7024800 () Bool)

(declare-fun c!1305713 () Bool)

(assert (=> b!7024800 (= c!1305713 ((_ is Star!17439) (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun e!4222895 () (InoxSet Context!12870))

(assert (=> b!7024800 (= e!4222895 e!4222893)))

(declare-fun b!7024801 () Bool)

(assert (=> b!7024801 (= e!4222893 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024802 () Bool)

(assert (=> b!7024802 (= e!4222895 call!637753)))

(declare-fun b!7024803 () Bool)

(assert (=> b!7024803 (= e!4222896 e!4222895)))

(declare-fun c!1305709 () Bool)

(assert (=> b!7024803 (= c!1305709 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun c!1305711 () Bool)

(declare-fun call!637757 () List!67845)

(declare-fun call!637756 () (InoxSet Context!12870))

(declare-fun bm!637749 () Bool)

(assert (=> bm!637749 (= call!637756 (derivationStepZipperDown!2103 (ite c!1305711 (regTwo!35391 (h!74169 (exprs!6935 lt!2513918))) (ite c!1305712 (regTwo!35390 (h!74169 (exprs!6935 lt!2513918))) (ite c!1305709 (regOne!35390 (h!74169 (exprs!6935 lt!2513918))) (reg!17768 (h!74169 (exprs!6935 lt!2513918)))))) (ite (or c!1305711 c!1305712) (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (Context!12871 call!637757)) (h!74170 s!7408)))))

(declare-fun call!637758 () List!67845)

(declare-fun bm!637750 () Bool)

(assert (=> bm!637750 (= call!637758 ($colon$colon!2555 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918)))) (ite (or c!1305712 c!1305709) (regTwo!35390 (h!74169 (exprs!6935 lt!2513918))) (h!74169 (exprs!6935 lt!2513918)))))))

(declare-fun b!7024804 () Bool)

(assert (=> b!7024804 (= e!4222891 e!4222894)))

(assert (=> b!7024804 (= c!1305711 ((_ is Union!17439) (h!74169 (exprs!6935 lt!2513918))))))

(declare-fun bm!637751 () Bool)

(assert (=> bm!637751 (= call!637754 (derivationStepZipperDown!2103 (ite c!1305711 (regOne!35391 (h!74169 (exprs!6935 lt!2513918))) (regOne!35390 (h!74169 (exprs!6935 lt!2513918)))) (ite c!1305711 (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (Context!12871 call!637758)) (h!74170 s!7408)))))

(declare-fun b!7024805 () Bool)

(assert (=> b!7024805 (= e!4222894 ((_ map or) call!637754 call!637756))))

(declare-fun bm!637752 () Bool)

(assert (=> bm!637752 (= call!637757 call!637758)))

(declare-fun bm!637753 () Bool)

(assert (=> bm!637753 (= call!637755 call!637756)))

(assert (= (and d!2189837 c!1305710) b!7024795))

(assert (= (and d!2189837 (not c!1305710)) b!7024804))

(assert (= (and b!7024804 c!1305711) b!7024805))

(assert (= (and b!7024804 (not c!1305711)) b!7024797))

(assert (= (and b!7024797 res!2867678) b!7024796))

(assert (= (and b!7024797 c!1305712) b!7024798))

(assert (= (and b!7024797 (not c!1305712)) b!7024803))

(assert (= (and b!7024803 c!1305709) b!7024802))

(assert (= (and b!7024803 (not c!1305709)) b!7024800))

(assert (= (and b!7024800 c!1305713) b!7024799))

(assert (= (and b!7024800 (not c!1305713)) b!7024801))

(assert (= (or b!7024802 b!7024799) bm!637752))

(assert (= (or b!7024802 b!7024799) bm!637748))

(assert (= (or b!7024798 bm!637748) bm!637753))

(assert (= (or b!7024798 bm!637752) bm!637750))

(assert (= (or b!7024805 b!7024798) bm!637751))

(assert (= (or b!7024805 bm!637753) bm!637749))

(declare-fun m!7727704 () Bool)

(assert (=> bm!637749 m!7727704))

(declare-fun m!7727706 () Bool)

(assert (=> bm!637751 m!7727706))

(declare-fun m!7727708 () Bool)

(assert (=> bm!637750 m!7727708))

(declare-fun m!7727710 () Bool)

(assert (=> b!7024795 m!7727710))

(declare-fun m!7727712 () Bool)

(assert (=> b!7024796 m!7727712))

(assert (=> bm!637707 d!2189837))

(declare-fun bs!1868312 () Bool)

(declare-fun d!2189839 () Bool)

(assert (= bs!1868312 (and d!2189839 d!2189829)))

(declare-fun lambda!412709 () Int)

(assert (=> bs!1868312 (= lambda!412709 lambda!412708)))

(declare-fun bs!1868313 () Bool)

(assert (= bs!1868313 (and d!2189839 b!7024446)))

(assert (=> bs!1868313 (not (= lambda!412709 lambda!412662))))

(declare-fun bs!1868314 () Bool)

(assert (= bs!1868314 (and d!2189839 d!2189777)))

(assert (=> bs!1868314 (= lambda!412709 lambda!412705)))

(declare-fun bs!1868315 () Bool)

(assert (= bs!1868315 (and d!2189839 d!2189713)))

(assert (=> bs!1868315 (not (= lambda!412709 lambda!412686))))

(declare-fun bs!1868316 () Bool)

(assert (= bs!1868316 (and d!2189839 d!2189769)))

(assert (=> bs!1868316 (= lambda!412709 lambda!412704)))

(declare-fun bs!1868317 () Bool)

(assert (= bs!1868317 (and d!2189839 d!2189719)))

(assert (=> bs!1868317 (not (= lambda!412709 lambda!412689))))

(assert (=> d!2189839 (= (nullableZipper!2560 lt!2513925) (exists!3347 lt!2513925 lambda!412709))))

(declare-fun bs!1868318 () Bool)

(assert (= bs!1868318 d!2189839))

(declare-fun m!7727714 () Bool)

(assert (=> bs!1868318 m!7727714))

(assert (=> b!7024686 d!2189839))

(declare-fun d!2189841 () Bool)

(declare-fun c!1305716 () Bool)

(assert (=> d!2189841 (= c!1305716 ((_ is Nil!67723) lt!2513969))))

(declare-fun e!4222899 () (InoxSet Context!12870))

(assert (=> d!2189841 (= (content!13491 lt!2513969) e!4222899)))

(declare-fun b!7024810 () Bool)

(assert (=> b!7024810 (= e!4222899 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024811 () Bool)

(assert (=> b!7024811 (= e!4222899 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) (h!74171 lt!2513969) true) (content!13491 (t!381602 lt!2513969))))))

(assert (= (and d!2189841 c!1305716) b!7024810))

(assert (= (and d!2189841 (not c!1305716)) b!7024811))

(declare-fun m!7727716 () Bool)

(assert (=> b!7024811 m!7727716))

(declare-fun m!7727718 () Bool)

(assert (=> b!7024811 m!7727718))

(assert (=> b!7024656 d!2189841))

(assert (=> d!2189723 d!2189811))

(declare-fun d!2189843 () Bool)

(assert (=> d!2189843 (forall!16340 (++!15472 (exprs!6935 lt!2513986) (exprs!6935 ct2!306)) lambda!412664)))

(declare-fun lt!2513996 () Unit!161540)

(assert (=> d!2189843 (= lt!2513996 (choose!53056 (exprs!6935 lt!2513986) (exprs!6935 ct2!306) lambda!412664))))

(assert (=> d!2189843 (forall!16340 (exprs!6935 lt!2513986) lambda!412664)))

(assert (=> d!2189843 (= (lemmaConcatPreservesForall!760 (exprs!6935 lt!2513986) (exprs!6935 ct2!306) lambda!412664) lt!2513996)))

(declare-fun bs!1868319 () Bool)

(assert (= bs!1868319 d!2189843))

(assert (=> bs!1868319 m!7727590))

(assert (=> bs!1868319 m!7727590))

(declare-fun m!7727720 () Bool)

(assert (=> bs!1868319 m!7727720))

(declare-fun m!7727722 () Bool)

(assert (=> bs!1868319 m!7727722))

(declare-fun m!7727724 () Bool)

(assert (=> bs!1868319 m!7727724))

(assert (=> bs!1868282 d!2189843))

(declare-fun e!4222900 () Bool)

(declare-fun lt!2513997 () List!67845)

(declare-fun b!7024815 () Bool)

(assert (=> b!7024815 (= e!4222900 (or (not (= (exprs!6935 ct2!306) Nil!67721)) (= lt!2513997 (exprs!6935 lt!2513986))))))

(declare-fun b!7024812 () Bool)

(declare-fun e!4222901 () List!67845)

(assert (=> b!7024812 (= e!4222901 (exprs!6935 ct2!306))))

(declare-fun d!2189845 () Bool)

(assert (=> d!2189845 e!4222900))

(declare-fun res!2867680 () Bool)

(assert (=> d!2189845 (=> (not res!2867680) (not e!4222900))))

(assert (=> d!2189845 (= res!2867680 (= (content!13490 lt!2513997) ((_ map or) (content!13490 (exprs!6935 lt!2513986)) (content!13490 (exprs!6935 ct2!306)))))))

(assert (=> d!2189845 (= lt!2513997 e!4222901)))

(declare-fun c!1305717 () Bool)

(assert (=> d!2189845 (= c!1305717 ((_ is Nil!67721) (exprs!6935 lt!2513986)))))

(assert (=> d!2189845 (= (++!15472 (exprs!6935 lt!2513986) (exprs!6935 ct2!306)) lt!2513997)))

(declare-fun b!7024814 () Bool)

(declare-fun res!2867679 () Bool)

(assert (=> b!7024814 (=> (not res!2867679) (not e!4222900))))

(assert (=> b!7024814 (= res!2867679 (= (size!41038 lt!2513997) (+ (size!41038 (exprs!6935 lt!2513986)) (size!41038 (exprs!6935 ct2!306)))))))

(declare-fun b!7024813 () Bool)

(assert (=> b!7024813 (= e!4222901 (Cons!67721 (h!74169 (exprs!6935 lt!2513986)) (++!15472 (t!381600 (exprs!6935 lt!2513986)) (exprs!6935 ct2!306))))))

(assert (= (and d!2189845 c!1305717) b!7024812))

(assert (= (and d!2189845 (not c!1305717)) b!7024813))

(assert (= (and d!2189845 res!2867680) b!7024814))

(assert (= (and b!7024814 res!2867679) b!7024815))

(declare-fun m!7727726 () Bool)

(assert (=> d!2189845 m!7727726))

(declare-fun m!7727728 () Bool)

(assert (=> d!2189845 m!7727728))

(assert (=> d!2189845 m!7727412))

(declare-fun m!7727730 () Bool)

(assert (=> b!7024814 m!7727730))

(declare-fun m!7727732 () Bool)

(assert (=> b!7024814 m!7727732))

(assert (=> b!7024814 m!7727418))

(declare-fun m!7727734 () Bool)

(assert (=> b!7024813 m!7727734))

(assert (=> bs!1868282 d!2189845))

(declare-fun bs!1868320 () Bool)

(declare-fun d!2189847 () Bool)

(assert (= bs!1868320 (and d!2189847 b!7024452)))

(declare-fun lambda!412710 () Int)

(assert (=> bs!1868320 (= lambda!412710 lambda!412664)))

(declare-fun bs!1868321 () Bool)

(assert (= bs!1868321 (and d!2189847 d!2189735)))

(assert (=> bs!1868321 (= lambda!412710 lambda!412695)))

(declare-fun bs!1868322 () Bool)

(assert (= bs!1868322 (and d!2189847 d!2189759)))

(assert (=> bs!1868322 (= lambda!412710 lambda!412701)))

(assert (=> d!2189847 (= (inv!86456 setElem!48950) (forall!16340 (exprs!6935 setElem!48950) lambda!412710))))

(declare-fun bs!1868323 () Bool)

(assert (= bs!1868323 d!2189847))

(declare-fun m!7727736 () Bool)

(assert (=> bs!1868323 m!7727736))

(assert (=> setNonEmpty!48950 d!2189847))

(assert (=> d!2189741 d!2189811))

(declare-fun d!2189849 () Bool)

(declare-fun c!1305718 () Bool)

(assert (=> d!2189849 (= c!1305718 (isEmpty!39487 (tail!13508 (t!381601 s!7408))))))

(declare-fun e!4222902 () Bool)

(assert (=> d!2189849 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513921 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))) e!4222902)))

(declare-fun b!7024816 () Bool)

(assert (=> b!7024816 (= e!4222902 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513921 (head!14235 (t!381601 s!7408)))))))

(declare-fun b!7024817 () Bool)

(assert (=> b!7024817 (= e!4222902 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513921 (head!14235 (t!381601 s!7408))) (head!14235 (tail!13508 (t!381601 s!7408)))) (tail!13508 (tail!13508 (t!381601 s!7408)))))))

(assert (= (and d!2189849 c!1305718) b!7024816))

(assert (= (and d!2189849 (not c!1305718)) b!7024817))

(assert (=> d!2189849 m!7727502))

(assert (=> d!2189849 m!7727680))

(assert (=> b!7024816 m!7727500))

(declare-fun m!7727738 () Bool)

(assert (=> b!7024816 m!7727738))

(assert (=> b!7024817 m!7727502))

(assert (=> b!7024817 m!7727684))

(assert (=> b!7024817 m!7727500))

(assert (=> b!7024817 m!7727684))

(declare-fun m!7727740 () Bool)

(assert (=> b!7024817 m!7727740))

(assert (=> b!7024817 m!7727502))

(assert (=> b!7024817 m!7727688))

(assert (=> b!7024817 m!7727740))

(assert (=> b!7024817 m!7727688))

(declare-fun m!7727742 () Bool)

(assert (=> b!7024817 m!7727742))

(assert (=> b!7024661 d!2189849))

(declare-fun bs!1868324 () Bool)

(declare-fun d!2189851 () Bool)

(assert (= bs!1868324 (and d!2189851 b!7024459)))

(declare-fun lambda!412711 () Int)

(assert (=> bs!1868324 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412711 lambda!412665))))

(declare-fun bs!1868325 () Bool)

(assert (= bs!1868325 (and d!2189851 d!2189725)))

(assert (=> bs!1868325 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412711 lambda!412692))))

(declare-fun bs!1868326 () Bool)

(assert (= bs!1868326 (and d!2189851 d!2189799)))

(assert (=> bs!1868326 (= (= (head!14235 (t!381601 s!7408)) (head!14235 s!7408)) (= lambda!412711 lambda!412706))))

(declare-fun bs!1868327 () Bool)

(assert (= bs!1868327 (and d!2189851 d!2189823)))

(assert (=> bs!1868327 (= lambda!412711 lambda!412707)))

(assert (=> d!2189851 true))

(assert (=> d!2189851 (= (derivationStepZipper!2895 lt!2513921 (head!14235 (t!381601 s!7408))) (flatMap!2386 lt!2513921 lambda!412711))))

(declare-fun bs!1868328 () Bool)

(assert (= bs!1868328 d!2189851))

(declare-fun m!7727744 () Bool)

(assert (=> bs!1868328 m!7727744))

(assert (=> b!7024661 d!2189851))

(assert (=> b!7024661 d!2189825))

(assert (=> b!7024661 d!2189827))

(declare-fun d!2189853 () Bool)

(declare-fun c!1305719 () Bool)

(assert (=> d!2189853 (= c!1305719 ((_ is Nil!67721) lt!2513983))))

(declare-fun e!4222903 () (InoxSet Regex!17439))

(assert (=> d!2189853 (= (content!13490 lt!2513983) e!4222903)))

(declare-fun b!7024818 () Bool)

(assert (=> b!7024818 (= e!4222903 ((as const (Array Regex!17439 Bool)) false))))

(declare-fun b!7024819 () Bool)

(assert (=> b!7024819 (= e!4222903 ((_ map or) (store ((as const (Array Regex!17439 Bool)) false) (h!74169 lt!2513983) true) (content!13490 (t!381600 lt!2513983))))))

(assert (= (and d!2189853 c!1305719) b!7024818))

(assert (= (and d!2189853 (not c!1305719)) b!7024819))

(declare-fun m!7727746 () Bool)

(assert (=> b!7024819 m!7727746))

(declare-fun m!7727748 () Bool)

(assert (=> b!7024819 m!7727748))

(assert (=> d!2189751 d!2189853))

(declare-fun d!2189855 () Bool)

(declare-fun c!1305720 () Bool)

(assert (=> d!2189855 (= c!1305720 ((_ is Nil!67721) (exprs!6935 lt!2513910)))))

(declare-fun e!4222904 () (InoxSet Regex!17439))

(assert (=> d!2189855 (= (content!13490 (exprs!6935 lt!2513910)) e!4222904)))

(declare-fun b!7024820 () Bool)

(assert (=> b!7024820 (= e!4222904 ((as const (Array Regex!17439 Bool)) false))))

(declare-fun b!7024821 () Bool)

(assert (=> b!7024821 (= e!4222904 ((_ map or) (store ((as const (Array Regex!17439 Bool)) false) (h!74169 (exprs!6935 lt!2513910)) true) (content!13490 (t!381600 (exprs!6935 lt!2513910)))))))

(assert (= (and d!2189855 c!1305720) b!7024820))

(assert (= (and d!2189855 (not c!1305720)) b!7024821))

(declare-fun m!7727750 () Bool)

(assert (=> b!7024821 m!7727750))

(declare-fun m!7727752 () Bool)

(assert (=> b!7024821 m!7727752))

(assert (=> d!2189751 d!2189855))

(assert (=> d!2189751 d!2189795))

(assert (=> b!7024677 d!2189723))

(declare-fun d!2189857 () Bool)

(declare-fun res!2867685 () Bool)

(declare-fun e!4222909 () Bool)

(assert (=> d!2189857 (=> res!2867685 e!4222909)))

(assert (=> d!2189857 (= res!2867685 ((_ is Nil!67723) lt!2513969))))

(assert (=> d!2189857 (= (noDuplicate!2609 lt!2513969) e!4222909)))

(declare-fun b!7024826 () Bool)

(declare-fun e!4222910 () Bool)

(assert (=> b!7024826 (= e!4222909 e!4222910)))

(declare-fun res!2867686 () Bool)

(assert (=> b!7024826 (=> (not res!2867686) (not e!4222910))))

(declare-fun contains!20439 (List!67847 Context!12870) Bool)

(assert (=> b!7024826 (= res!2867686 (not (contains!20439 (t!381602 lt!2513969) (h!74171 lt!2513969))))))

(declare-fun b!7024827 () Bool)

(assert (=> b!7024827 (= e!4222910 (noDuplicate!2609 (t!381602 lt!2513969)))))

(assert (= (and d!2189857 (not res!2867685)) b!7024826))

(assert (= (and b!7024826 res!2867686) b!7024827))

(declare-fun m!7727754 () Bool)

(assert (=> b!7024826 m!7727754))

(declare-fun m!7727756 () Bool)

(assert (=> b!7024827 m!7727756))

(assert (=> d!2189717 d!2189857))

(declare-fun d!2189859 () Bool)

(declare-fun e!4222919 () Bool)

(assert (=> d!2189859 e!4222919))

(declare-fun res!2867692 () Bool)

(assert (=> d!2189859 (=> (not res!2867692) (not e!4222919))))

(declare-fun res!2867691 () List!67847)

(assert (=> d!2189859 (= res!2867692 (noDuplicate!2609 res!2867691))))

(declare-fun e!4222917 () Bool)

(assert (=> d!2189859 e!4222917))

(assert (=> d!2189859 (= (choose!53057 lt!2513925) res!2867691)))

(declare-fun b!7024835 () Bool)

(declare-fun e!4222918 () Bool)

(declare-fun tp!1935289 () Bool)

(assert (=> b!7024835 (= e!4222918 tp!1935289)))

(declare-fun tp!1935290 () Bool)

(declare-fun b!7024834 () Bool)

(assert (=> b!7024834 (= e!4222917 (and (inv!86456 (h!74171 res!2867691)) e!4222918 tp!1935290))))

(declare-fun b!7024836 () Bool)

(assert (=> b!7024836 (= e!4222919 (= (content!13491 res!2867691) lt!2513925))))

(assert (= b!7024834 b!7024835))

(assert (= (and d!2189859 ((_ is Cons!67723) res!2867691)) b!7024834))

(assert (= (and d!2189859 res!2867692) b!7024836))

(declare-fun m!7727758 () Bool)

(assert (=> d!2189859 m!7727758))

(declare-fun m!7727760 () Bool)

(assert (=> b!7024834 m!7727760))

(declare-fun m!7727762 () Bool)

(assert (=> b!7024836 m!7727762))

(assert (=> d!2189717 d!2189859))

(declare-fun bs!1868329 () Bool)

(declare-fun d!2189861 () Bool)

(assert (= bs!1868329 (and d!2189861 d!2189829)))

(declare-fun lambda!412712 () Int)

(assert (=> bs!1868329 (not (= lambda!412712 lambda!412708))))

(declare-fun bs!1868330 () Bool)

(assert (= bs!1868330 (and d!2189861 b!7024446)))

(assert (=> bs!1868330 (not (= lambda!412712 lambda!412662))))

(declare-fun bs!1868331 () Bool)

(assert (= bs!1868331 (and d!2189861 d!2189777)))

(assert (=> bs!1868331 (not (= lambda!412712 lambda!412705))))

(declare-fun bs!1868332 () Bool)

(assert (= bs!1868332 (and d!2189861 d!2189713)))

(assert (=> bs!1868332 (= (= lambda!412689 lambda!412662) (= lambda!412712 lambda!412686))))

(declare-fun bs!1868333 () Bool)

(assert (= bs!1868333 (and d!2189861 d!2189839)))

(assert (=> bs!1868333 (not (= lambda!412712 lambda!412709))))

(declare-fun bs!1868334 () Bool)

(assert (= bs!1868334 (and d!2189861 d!2189769)))

(assert (=> bs!1868334 (not (= lambda!412712 lambda!412704))))

(declare-fun bs!1868335 () Bool)

(assert (= bs!1868335 (and d!2189861 d!2189719)))

(assert (=> bs!1868335 (not (= lambda!412712 lambda!412689))))

(assert (=> d!2189861 true))

(assert (=> d!2189861 (< (dynLambda!27294 order!28135 lambda!412689) (dynLambda!27294 order!28135 lambda!412712))))

(assert (=> d!2189861 (= (exists!3345 lt!2513920 lambda!412689) (not (forall!16341 lt!2513920 lambda!412712)))))

(declare-fun bs!1868336 () Bool)

(assert (= bs!1868336 d!2189861))

(declare-fun m!7727764 () Bool)

(assert (=> bs!1868336 m!7727764))

(assert (=> d!2189719 d!2189861))

(declare-fun bs!1868337 () Bool)

(declare-fun d!2189863 () Bool)

(assert (= bs!1868337 (and d!2189863 d!2189829)))

(declare-fun lambda!412715 () Int)

(assert (=> bs!1868337 (not (= lambda!412715 lambda!412708))))

(declare-fun bs!1868338 () Bool)

(assert (= bs!1868338 (and d!2189863 d!2189777)))

(assert (=> bs!1868338 (not (= lambda!412715 lambda!412705))))

(declare-fun bs!1868339 () Bool)

(assert (= bs!1868339 (and d!2189863 d!2189713)))

(assert (=> bs!1868339 (not (= lambda!412715 lambda!412686))))

(declare-fun bs!1868340 () Bool)

(assert (= bs!1868340 (and d!2189863 d!2189839)))

(assert (=> bs!1868340 (not (= lambda!412715 lambda!412709))))

(declare-fun bs!1868341 () Bool)

(assert (= bs!1868341 (and d!2189863 b!7024446)))

(assert (=> bs!1868341 (= lambda!412715 lambda!412662)))

(declare-fun bs!1868342 () Bool)

(assert (= bs!1868342 (and d!2189863 d!2189861)))

(assert (=> bs!1868342 (not (= lambda!412715 lambda!412712))))

(declare-fun bs!1868343 () Bool)

(assert (= bs!1868343 (and d!2189863 d!2189769)))

(assert (=> bs!1868343 (not (= lambda!412715 lambda!412704))))

(declare-fun bs!1868344 () Bool)

(assert (= bs!1868344 (and d!2189863 d!2189719)))

(assert (=> bs!1868344 (= lambda!412715 lambda!412689)))

(assert (=> d!2189863 true))

(assert (=> d!2189863 (exists!3345 lt!2513920 lambda!412715)))

(assert (=> d!2189863 true))

(declare-fun _$60!1093 () Unit!161540)

(assert (=> d!2189863 (= (choose!53058 lt!2513920 s!7408) _$60!1093)))

(declare-fun bs!1868345 () Bool)

(assert (= bs!1868345 d!2189863))

(declare-fun m!7727766 () Bool)

(assert (=> bs!1868345 m!7727766))

(assert (=> d!2189719 d!2189863))

(declare-fun d!2189865 () Bool)

(declare-fun c!1305723 () Bool)

(assert (=> d!2189865 (= c!1305723 (isEmpty!39487 s!7408))))

(declare-fun e!4222920 () Bool)

(assert (=> d!2189865 (= (matchZipper!2979 (content!13491 lt!2513920) s!7408) e!4222920)))

(declare-fun b!7024837 () Bool)

(assert (=> b!7024837 (= e!4222920 (nullableZipper!2560 (content!13491 lt!2513920)))))

(declare-fun b!7024838 () Bool)

(assert (=> b!7024838 (= e!4222920 (matchZipper!2979 (derivationStepZipper!2895 (content!13491 lt!2513920) (head!14235 s!7408)) (tail!13508 s!7408)))))

(assert (= (and d!2189865 c!1305723) b!7024837))

(assert (= (and d!2189865 (not c!1305723)) b!7024838))

(assert (=> d!2189865 m!7727460))

(assert (=> b!7024837 m!7727482))

(declare-fun m!7727768 () Bool)

(assert (=> b!7024837 m!7727768))

(assert (=> b!7024838 m!7727464))

(assert (=> b!7024838 m!7727482))

(assert (=> b!7024838 m!7727464))

(declare-fun m!7727770 () Bool)

(assert (=> b!7024838 m!7727770))

(assert (=> b!7024838 m!7727468))

(assert (=> b!7024838 m!7727770))

(assert (=> b!7024838 m!7727468))

(declare-fun m!7727772 () Bool)

(assert (=> b!7024838 m!7727772))

(assert (=> d!2189719 d!2189865))

(declare-fun d!2189867 () Bool)

(declare-fun c!1305724 () Bool)

(assert (=> d!2189867 (= c!1305724 ((_ is Nil!67723) lt!2513920))))

(declare-fun e!4222921 () (InoxSet Context!12870))

(assert (=> d!2189867 (= (content!13491 lt!2513920) e!4222921)))

(declare-fun b!7024839 () Bool)

(assert (=> b!7024839 (= e!4222921 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024840 () Bool)

(assert (=> b!7024840 (= e!4222921 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) (h!74171 lt!2513920) true) (content!13491 (t!381602 lt!2513920))))))

(assert (= (and d!2189867 c!1305724) b!7024839))

(assert (= (and d!2189867 (not c!1305724)) b!7024840))

(declare-fun m!7727774 () Bool)

(assert (=> b!7024840 m!7727774))

(declare-fun m!7727776 () Bool)

(assert (=> b!7024840 m!7727776))

(assert (=> d!2189719 d!2189867))

(declare-fun d!2189869 () Bool)

(declare-fun c!1305725 () Bool)

(assert (=> d!2189869 (= c!1305725 (isEmpty!39487 (tail!13508 (t!381601 s!7408))))))

(declare-fun e!4222922 () Bool)

(assert (=> d!2189869 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513913 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))) e!4222922)))

(declare-fun b!7024841 () Bool)

(assert (=> b!7024841 (= e!4222922 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513913 (head!14235 (t!381601 s!7408)))))))

(declare-fun b!7024842 () Bool)

(assert (=> b!7024842 (= e!4222922 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513913 (head!14235 (t!381601 s!7408))) (head!14235 (tail!13508 (t!381601 s!7408)))) (tail!13508 (tail!13508 (t!381601 s!7408)))))))

(assert (= (and d!2189869 c!1305725) b!7024841))

(assert (= (and d!2189869 (not c!1305725)) b!7024842))

(assert (=> d!2189869 m!7727502))

(assert (=> d!2189869 m!7727680))

(assert (=> b!7024841 m!7727536))

(declare-fun m!7727778 () Bool)

(assert (=> b!7024841 m!7727778))

(assert (=> b!7024842 m!7727502))

(assert (=> b!7024842 m!7727684))

(assert (=> b!7024842 m!7727536))

(assert (=> b!7024842 m!7727684))

(declare-fun m!7727780 () Bool)

(assert (=> b!7024842 m!7727780))

(assert (=> b!7024842 m!7727502))

(assert (=> b!7024842 m!7727688))

(assert (=> b!7024842 m!7727780))

(assert (=> b!7024842 m!7727688))

(declare-fun m!7727782 () Bool)

(assert (=> b!7024842 m!7727782))

(assert (=> b!7024672 d!2189869))

(declare-fun bs!1868346 () Bool)

(declare-fun d!2189871 () Bool)

(assert (= bs!1868346 (and d!2189871 d!2189851)))

(declare-fun lambda!412716 () Int)

(assert (=> bs!1868346 (= lambda!412716 lambda!412711)))

(declare-fun bs!1868347 () Bool)

(assert (= bs!1868347 (and d!2189871 d!2189725)))

(assert (=> bs!1868347 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412716 lambda!412692))))

(declare-fun bs!1868348 () Bool)

(assert (= bs!1868348 (and d!2189871 d!2189799)))

(assert (=> bs!1868348 (= (= (head!14235 (t!381601 s!7408)) (head!14235 s!7408)) (= lambda!412716 lambda!412706))))

(declare-fun bs!1868349 () Bool)

(assert (= bs!1868349 (and d!2189871 b!7024459)))

(assert (=> bs!1868349 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412716 lambda!412665))))

(declare-fun bs!1868350 () Bool)

(assert (= bs!1868350 (and d!2189871 d!2189823)))

(assert (=> bs!1868350 (= lambda!412716 lambda!412707)))

(assert (=> d!2189871 true))

(assert (=> d!2189871 (= (derivationStepZipper!2895 lt!2513913 (head!14235 (t!381601 s!7408))) (flatMap!2386 lt!2513913 lambda!412716))))

(declare-fun bs!1868351 () Bool)

(assert (= bs!1868351 d!2189871))

(declare-fun m!7727784 () Bool)

(assert (=> bs!1868351 m!7727784))

(assert (=> b!7024672 d!2189871))

(assert (=> b!7024672 d!2189825))

(assert (=> b!7024672 d!2189827))

(declare-fun d!2189873 () Bool)

(declare-fun res!2867693 () Bool)

(declare-fun e!4222923 () Bool)

(assert (=> d!2189873 (=> res!2867693 e!4222923)))

(assert (=> d!2189873 (= res!2867693 ((_ is Nil!67721) (++!15472 lt!2513914 (exprs!6935 ct2!306))))))

(assert (=> d!2189873 (= (forall!16340 (++!15472 lt!2513914 (exprs!6935 ct2!306)) lambda!412664) e!4222923)))

(declare-fun b!7024843 () Bool)

(declare-fun e!4222924 () Bool)

(assert (=> b!7024843 (= e!4222923 e!4222924)))

(declare-fun res!2867694 () Bool)

(assert (=> b!7024843 (=> (not res!2867694) (not e!4222924))))

(assert (=> b!7024843 (= res!2867694 (dynLambda!27298 lambda!412664 (h!74169 (++!15472 lt!2513914 (exprs!6935 ct2!306)))))))

(declare-fun b!7024844 () Bool)

(assert (=> b!7024844 (= e!4222924 (forall!16340 (t!381600 (++!15472 lt!2513914 (exprs!6935 ct2!306))) lambda!412664))))

(assert (= (and d!2189873 (not res!2867693)) b!7024843))

(assert (= (and b!7024843 res!2867694) b!7024844))

(declare-fun b_lambda!265467 () Bool)

(assert (=> (not b_lambda!265467) (not b!7024843)))

(declare-fun m!7727786 () Bool)

(assert (=> b!7024843 m!7727786))

(declare-fun m!7727788 () Bool)

(assert (=> b!7024844 m!7727788))

(assert (=> d!2189703 d!2189873))

(assert (=> d!2189703 d!2189701))

(declare-fun d!2189875 () Bool)

(assert (=> d!2189875 (forall!16340 (++!15472 lt!2513914 (exprs!6935 ct2!306)) lambda!412664)))

(assert (=> d!2189875 true))

(declare-fun _$78!542 () Unit!161540)

(assert (=> d!2189875 (= (choose!53056 lt!2513914 (exprs!6935 ct2!306) lambda!412664) _$78!542)))

(declare-fun bs!1868352 () Bool)

(assert (= bs!1868352 d!2189875))

(assert (=> bs!1868352 m!7727188))

(assert (=> bs!1868352 m!7727188))

(assert (=> bs!1868352 m!7727434))

(assert (=> d!2189703 d!2189875))

(declare-fun d!2189877 () Bool)

(declare-fun res!2867695 () Bool)

(declare-fun e!4222925 () Bool)

(assert (=> d!2189877 (=> res!2867695 e!4222925)))

(assert (=> d!2189877 (= res!2867695 ((_ is Nil!67721) lt!2513914))))

(assert (=> d!2189877 (= (forall!16340 lt!2513914 lambda!412664) e!4222925)))

(declare-fun b!7024845 () Bool)

(declare-fun e!4222926 () Bool)

(assert (=> b!7024845 (= e!4222925 e!4222926)))

(declare-fun res!2867696 () Bool)

(assert (=> b!7024845 (=> (not res!2867696) (not e!4222926))))

(assert (=> b!7024845 (= res!2867696 (dynLambda!27298 lambda!412664 (h!74169 lt!2513914)))))

(declare-fun b!7024846 () Bool)

(assert (=> b!7024846 (= e!4222926 (forall!16340 (t!381600 lt!2513914) lambda!412664))))

(assert (= (and d!2189877 (not res!2867695)) b!7024845))

(assert (= (and b!7024845 res!2867696) b!7024846))

(declare-fun b_lambda!265469 () Bool)

(assert (=> (not b_lambda!265469) (not b!7024845)))

(declare-fun m!7727790 () Bool)

(assert (=> b!7024845 m!7727790))

(declare-fun m!7727792 () Bool)

(assert (=> b!7024846 m!7727792))

(assert (=> d!2189703 d!2189877))

(assert (=> bs!1868283 d!2189731))

(declare-fun bs!1868353 () Bool)

(declare-fun d!2189879 () Bool)

(assert (= bs!1868353 (and d!2189879 d!2189829)))

(declare-fun lambda!412717 () Int)

(assert (=> bs!1868353 (= lambda!412717 lambda!412708)))

(declare-fun bs!1868354 () Bool)

(assert (= bs!1868354 (and d!2189879 d!2189777)))

(assert (=> bs!1868354 (= lambda!412717 lambda!412705)))

(declare-fun bs!1868355 () Bool)

(assert (= bs!1868355 (and d!2189879 d!2189713)))

(assert (=> bs!1868355 (not (= lambda!412717 lambda!412686))))

(declare-fun bs!1868356 () Bool)

(assert (= bs!1868356 (and d!2189879 d!2189839)))

(assert (=> bs!1868356 (= lambda!412717 lambda!412709)))

(declare-fun bs!1868357 () Bool)

(assert (= bs!1868357 (and d!2189879 d!2189863)))

(assert (=> bs!1868357 (not (= lambda!412717 lambda!412715))))

(declare-fun bs!1868358 () Bool)

(assert (= bs!1868358 (and d!2189879 b!7024446)))

(assert (=> bs!1868358 (not (= lambda!412717 lambda!412662))))

(declare-fun bs!1868359 () Bool)

(assert (= bs!1868359 (and d!2189879 d!2189861)))

(assert (=> bs!1868359 (not (= lambda!412717 lambda!412712))))

(declare-fun bs!1868360 () Bool)

(assert (= bs!1868360 (and d!2189879 d!2189769)))

(assert (=> bs!1868360 (= lambda!412717 lambda!412704)))

(declare-fun bs!1868361 () Bool)

(assert (= bs!1868361 (and d!2189879 d!2189719)))

(assert (=> bs!1868361 (not (= lambda!412717 lambda!412689))))

(assert (=> d!2189879 (= (nullableZipper!2560 lt!2513931) (exists!3347 lt!2513931 lambda!412717))))

(declare-fun bs!1868362 () Bool)

(assert (= bs!1868362 d!2189879))

(declare-fun m!7727794 () Bool)

(assert (=> bs!1868362 m!7727794))

(assert (=> b!7024652 d!2189879))

(declare-fun d!2189881 () Bool)

(assert (=> d!2189881 (= ($colon$colon!2555 (exprs!6935 lt!2513918) (ite (or c!1305667 c!1305664) (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (h!74169 (exprs!6935 lt!2513910)))) (Cons!67721 (ite (or c!1305667 c!1305664) (regTwo!35390 (h!74169 (exprs!6935 lt!2513910))) (h!74169 (exprs!6935 lt!2513910))) (exprs!6935 lt!2513918)))))

(assert (=> bm!637731 d!2189881))

(declare-fun bm!637754 () Bool)

(declare-fun call!637759 () (InoxSet Context!12870))

(declare-fun call!637761 () (InoxSet Context!12870))

(assert (=> bm!637754 (= call!637759 call!637761)))

(declare-fun d!2189883 () Bool)

(declare-fun c!1305727 () Bool)

(assert (=> d!2189883 (= c!1305727 (and ((_ is ElementMatch!17439) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (= (c!1305604 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (h!74170 s!7408))))))

(declare-fun e!4222927 () (InoxSet Context!12870))

(assert (=> d!2189883 (= (derivationStepZipperDown!2103 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))) (ite c!1305666 lt!2513918 (Context!12871 call!637739)) (h!74170 s!7408)) e!4222927)))

(declare-fun b!7024847 () Bool)

(assert (=> b!7024847 (= e!4222927 (store ((as const (Array Context!12870 Bool)) false) (ite c!1305666 lt!2513918 (Context!12871 call!637739)) true))))

(declare-fun b!7024848 () Bool)

(declare-fun e!4222928 () Bool)

(assert (=> b!7024848 (= e!4222928 (nullable!7150 (regOne!35390 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))))))

(declare-fun b!7024849 () Bool)

(declare-fun c!1305729 () Bool)

(assert (=> b!7024849 (= c!1305729 e!4222928)))

(declare-fun res!2867697 () Bool)

(assert (=> b!7024849 (=> (not res!2867697) (not e!4222928))))

(assert (=> b!7024849 (= res!2867697 ((_ is Concat!26284) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun e!4222930 () (InoxSet Context!12870))

(declare-fun e!4222932 () (InoxSet Context!12870))

(assert (=> b!7024849 (= e!4222930 e!4222932)))

(declare-fun b!7024850 () Bool)

(declare-fun call!637760 () (InoxSet Context!12870))

(assert (=> b!7024850 (= e!4222932 ((_ map or) call!637760 call!637761))))

(declare-fun b!7024851 () Bool)

(declare-fun e!4222929 () (InoxSet Context!12870))

(assert (=> b!7024851 (= e!4222929 call!637759)))

(declare-fun b!7024852 () Bool)

(declare-fun c!1305730 () Bool)

(assert (=> b!7024852 (= c!1305730 ((_ is Star!17439) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun e!4222931 () (InoxSet Context!12870))

(assert (=> b!7024852 (= e!4222931 e!4222929)))

(declare-fun b!7024853 () Bool)

(assert (=> b!7024853 (= e!4222929 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024854 () Bool)

(assert (=> b!7024854 (= e!4222931 call!637759)))

(declare-fun b!7024855 () Bool)

(assert (=> b!7024855 (= e!4222932 e!4222931)))

(declare-fun c!1305726 () Bool)

(assert (=> b!7024855 (= c!1305726 ((_ is Concat!26284) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun bm!637755 () Bool)

(declare-fun c!1305728 () Bool)

(declare-fun call!637763 () List!67845)

(declare-fun call!637762 () (InoxSet Context!12870))

(assert (=> bm!637755 (= call!637762 (derivationStepZipperDown!2103 (ite c!1305728 (regTwo!35391 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (ite c!1305729 (regTwo!35390 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (ite c!1305726 (regOne!35390 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (reg!17768 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))))) (ite (or c!1305728 c!1305729) (ite c!1305666 lt!2513918 (Context!12871 call!637739)) (Context!12871 call!637763)) (h!74170 s!7408)))))

(declare-fun bm!637756 () Bool)

(declare-fun call!637764 () List!67845)

(assert (=> bm!637756 (= call!637764 ($colon$colon!2555 (exprs!6935 (ite c!1305666 lt!2513918 (Context!12871 call!637739))) (ite (or c!1305729 c!1305726) (regTwo!35390 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))))))

(declare-fun b!7024856 () Bool)

(assert (=> b!7024856 (= e!4222927 e!4222930)))

(assert (=> b!7024856 (= c!1305728 ((_ is Union!17439) (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))))))

(declare-fun bm!637757 () Bool)

(assert (=> bm!637757 (= call!637760 (derivationStepZipperDown!2103 (ite c!1305728 (regOne!35391 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910))))) (regOne!35390 (ite c!1305666 (regOne!35391 (h!74169 (exprs!6935 lt!2513910))) (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))) (ite c!1305728 (ite c!1305666 lt!2513918 (Context!12871 call!637739)) (Context!12871 call!637764)) (h!74170 s!7408)))))

(declare-fun b!7024857 () Bool)

(assert (=> b!7024857 (= e!4222930 ((_ map or) call!637760 call!637762))))

(declare-fun bm!637758 () Bool)

(assert (=> bm!637758 (= call!637763 call!637764)))

(declare-fun bm!637759 () Bool)

(assert (=> bm!637759 (= call!637761 call!637762)))

(assert (= (and d!2189883 c!1305727) b!7024847))

(assert (= (and d!2189883 (not c!1305727)) b!7024856))

(assert (= (and b!7024856 c!1305728) b!7024857))

(assert (= (and b!7024856 (not c!1305728)) b!7024849))

(assert (= (and b!7024849 res!2867697) b!7024848))

(assert (= (and b!7024849 c!1305729) b!7024850))

(assert (= (and b!7024849 (not c!1305729)) b!7024855))

(assert (= (and b!7024855 c!1305726) b!7024854))

(assert (= (and b!7024855 (not c!1305726)) b!7024852))

(assert (= (and b!7024852 c!1305730) b!7024851))

(assert (= (and b!7024852 (not c!1305730)) b!7024853))

(assert (= (or b!7024854 b!7024851) bm!637758))

(assert (= (or b!7024854 b!7024851) bm!637754))

(assert (= (or b!7024850 bm!637754) bm!637759))

(assert (= (or b!7024850 bm!637758) bm!637756))

(assert (= (or b!7024857 b!7024850) bm!637757))

(assert (= (or b!7024857 bm!637759) bm!637755))

(declare-fun m!7727796 () Bool)

(assert (=> bm!637755 m!7727796))

(declare-fun m!7727798 () Bool)

(assert (=> bm!637757 m!7727798))

(declare-fun m!7727800 () Bool)

(assert (=> bm!637756 m!7727800))

(declare-fun m!7727802 () Bool)

(assert (=> b!7024847 m!7727802))

(declare-fun m!7727804 () Bool)

(assert (=> b!7024848 m!7727804))

(assert (=> bm!637732 d!2189883))

(declare-fun lt!2513998 () List!67845)

(declare-fun e!4222933 () Bool)

(declare-fun b!7024861 () Bool)

(assert (=> b!7024861 (= e!4222933 (or (not (= (exprs!6935 ct2!306) Nil!67721)) (= lt!2513998 (t!381600 (exprs!6935 lt!2513910)))))))

(declare-fun b!7024858 () Bool)

(declare-fun e!4222934 () List!67845)

(assert (=> b!7024858 (= e!4222934 (exprs!6935 ct2!306))))

(declare-fun d!2189885 () Bool)

(assert (=> d!2189885 e!4222933))

(declare-fun res!2867699 () Bool)

(assert (=> d!2189885 (=> (not res!2867699) (not e!4222933))))

(assert (=> d!2189885 (= res!2867699 (= (content!13490 lt!2513998) ((_ map or) (content!13490 (t!381600 (exprs!6935 lt!2513910))) (content!13490 (exprs!6935 ct2!306)))))))

(assert (=> d!2189885 (= lt!2513998 e!4222934)))

(declare-fun c!1305731 () Bool)

(assert (=> d!2189885 (= c!1305731 ((_ is Nil!67721) (t!381600 (exprs!6935 lt!2513910))))))

(assert (=> d!2189885 (= (++!15472 (t!381600 (exprs!6935 lt!2513910)) (exprs!6935 ct2!306)) lt!2513998)))

(declare-fun b!7024860 () Bool)

(declare-fun res!2867698 () Bool)

(assert (=> b!7024860 (=> (not res!2867698) (not e!4222933))))

(assert (=> b!7024860 (= res!2867698 (= (size!41038 lt!2513998) (+ (size!41038 (t!381600 (exprs!6935 lt!2513910))) (size!41038 (exprs!6935 ct2!306)))))))

(declare-fun b!7024859 () Bool)

(assert (=> b!7024859 (= e!4222934 (Cons!67721 (h!74169 (t!381600 (exprs!6935 lt!2513910))) (++!15472 (t!381600 (t!381600 (exprs!6935 lt!2513910))) (exprs!6935 ct2!306))))))

(assert (= (and d!2189885 c!1305731) b!7024858))

(assert (= (and d!2189885 (not c!1305731)) b!7024859))

(assert (= (and d!2189885 res!2867699) b!7024860))

(assert (= (and b!7024860 res!2867698) b!7024861))

(declare-fun m!7727806 () Bool)

(assert (=> d!2189885 m!7727806))

(assert (=> d!2189885 m!7727752))

(assert (=> d!2189885 m!7727412))

(declare-fun m!7727808 () Bool)

(assert (=> b!7024860 m!7727808))

(assert (=> b!7024860 m!7727676))

(assert (=> b!7024860 m!7727418))

(declare-fun m!7727810 () Bool)

(assert (=> b!7024859 m!7727810))

(assert (=> b!7024679 d!2189885))

(declare-fun d!2189887 () Bool)

(declare-fun res!2867700 () Bool)

(declare-fun e!4222935 () Bool)

(assert (=> d!2189887 (=> res!2867700 e!4222935)))

(assert (=> d!2189887 (= res!2867700 ((_ is Nil!67721) (exprs!6935 setElem!48944)))))

(assert (=> d!2189887 (= (forall!16340 (exprs!6935 setElem!48944) lambda!412695) e!4222935)))

(declare-fun b!7024862 () Bool)

(declare-fun e!4222936 () Bool)

(assert (=> b!7024862 (= e!4222935 e!4222936)))

(declare-fun res!2867701 () Bool)

(assert (=> b!7024862 (=> (not res!2867701) (not e!4222936))))

(assert (=> b!7024862 (= res!2867701 (dynLambda!27298 lambda!412695 (h!74169 (exprs!6935 setElem!48944))))))

(declare-fun b!7024863 () Bool)

(assert (=> b!7024863 (= e!4222936 (forall!16340 (t!381600 (exprs!6935 setElem!48944)) lambda!412695))))

(assert (= (and d!2189887 (not res!2867700)) b!7024862))

(assert (= (and b!7024862 res!2867701) b!7024863))

(declare-fun b_lambda!265471 () Bool)

(assert (=> (not b_lambda!265471) (not b!7024862)))

(declare-fun m!7727812 () Bool)

(assert (=> b!7024862 m!7727812))

(declare-fun m!7727814 () Bool)

(assert (=> b!7024863 m!7727814))

(assert (=> d!2189735 d!2189887))

(declare-fun d!2189889 () Bool)

(assert (=> d!2189889 (= (isEmpty!39487 s!7408) ((_ is Nil!67722) s!7408))))

(assert (=> d!2189715 d!2189889))

(declare-fun b!7024864 () Bool)

(declare-fun e!4222937 () Bool)

(assert (=> b!7024864 (= e!4222937 (nullable!7150 (h!74169 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919)))))))))

(declare-fun b!7024865 () Bool)

(declare-fun e!4222939 () (InoxSet Context!12870))

(assert (=> b!7024865 (= e!4222939 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024866 () Bool)

(declare-fun e!4222938 () (InoxSet Context!12870))

(assert (=> b!7024866 (= e!4222938 e!4222939)))

(declare-fun c!1305733 () Bool)

(assert (=> b!7024866 (= c!1305733 ((_ is Cons!67721) (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919))))))))

(declare-fun b!7024867 () Bool)

(declare-fun call!637765 () (InoxSet Context!12870))

(assert (=> b!7024867 (= e!4222938 ((_ map or) call!637765 (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919)))))) (h!74170 s!7408))))))

(declare-fun b!7024868 () Bool)

(assert (=> b!7024868 (= e!4222939 call!637765)))

(declare-fun d!2189891 () Bool)

(declare-fun c!1305732 () Bool)

(assert (=> d!2189891 (= c!1305732 e!4222937)))

(declare-fun res!2867702 () Bool)

(assert (=> d!2189891 (=> (not res!2867702) (not e!4222937))))

(assert (=> d!2189891 (= res!2867702 ((_ is Cons!67721) (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919))))))))

(assert (=> d!2189891 (= (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (h!74170 s!7408)) e!4222938)))

(declare-fun bm!637760 () Bool)

(assert (=> bm!637760 (= call!637765 (derivationStepZipperDown!2103 (h!74169 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919))))) (Context!12871 (t!381600 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919)))))) (h!74170 s!7408)))))

(assert (= (and d!2189891 res!2867702) b!7024864))

(assert (= (and d!2189891 c!1305732) b!7024867))

(assert (= (and d!2189891 (not c!1305732)) b!7024866))

(assert (= (and b!7024866 c!1305733) b!7024868))

(assert (= (and b!7024866 (not c!1305733)) b!7024865))

(assert (= (or b!7024867 b!7024868) bm!637760))

(declare-fun m!7727816 () Bool)

(assert (=> b!7024864 m!7727816))

(declare-fun m!7727818 () Bool)

(assert (=> b!7024867 m!7727818))

(declare-fun m!7727820 () Bool)

(assert (=> bm!637760 m!7727820))

(assert (=> b!7024667 d!2189891))

(declare-fun d!2189893 () Bool)

(declare-fun lt!2513999 () Int)

(assert (=> d!2189893 (>= lt!2513999 0)))

(declare-fun e!4222940 () Int)

(assert (=> d!2189893 (= lt!2513999 e!4222940)))

(declare-fun c!1305734 () Bool)

(assert (=> d!2189893 (= c!1305734 ((_ is Nil!67721) lt!2513962))))

(assert (=> d!2189893 (= (size!41038 lt!2513962) lt!2513999)))

(declare-fun b!7024869 () Bool)

(assert (=> b!7024869 (= e!4222940 0)))

(declare-fun b!7024870 () Bool)

(assert (=> b!7024870 (= e!4222940 (+ 1 (size!41038 (t!381600 lt!2513962))))))

(assert (= (and d!2189893 c!1305734) b!7024869))

(assert (= (and d!2189893 (not c!1305734)) b!7024870))

(declare-fun m!7727822 () Bool)

(assert (=> b!7024870 m!7727822))

(assert (=> b!7024595 d!2189893))

(declare-fun d!2189895 () Bool)

(declare-fun lt!2514000 () Int)

(assert (=> d!2189895 (>= lt!2514000 0)))

(declare-fun e!4222941 () Int)

(assert (=> d!2189895 (= lt!2514000 e!4222941)))

(declare-fun c!1305735 () Bool)

(assert (=> d!2189895 (= c!1305735 ((_ is Nil!67721) lt!2513914))))

(assert (=> d!2189895 (= (size!41038 lt!2513914) lt!2514000)))

(declare-fun b!7024871 () Bool)

(assert (=> b!7024871 (= e!4222941 0)))

(declare-fun b!7024872 () Bool)

(assert (=> b!7024872 (= e!4222941 (+ 1 (size!41038 (t!381600 lt!2513914))))))

(assert (= (and d!2189895 c!1305735) b!7024871))

(assert (= (and d!2189895 (not c!1305735)) b!7024872))

(assert (=> b!7024872 m!7727670))

(assert (=> b!7024595 d!2189895))

(assert (=> b!7024595 d!2189819))

(declare-fun b!7024885 () Bool)

(declare-fun e!4222953 () Context!12870)

(assert (=> b!7024885 (= e!4222953 (getWitness!1428 (t!381602 (toList!10782 lt!2513925)) lambda!412662))))

(declare-fun b!7024886 () Bool)

(declare-fun lt!2514006 () Unit!161540)

(declare-fun Unit!161542 () Unit!161540)

(assert (=> b!7024886 (= lt!2514006 Unit!161542)))

(assert (=> b!7024886 false))

(declare-fun head!14236 (List!67847) Context!12870)

(assert (=> b!7024886 (= e!4222953 (head!14236 (toList!10782 lt!2513925)))))

(declare-fun b!7024887 () Bool)

(declare-fun e!4222951 () Context!12870)

(assert (=> b!7024887 (= e!4222951 e!4222953)))

(declare-fun c!1305740 () Bool)

(assert (=> b!7024887 (= c!1305740 ((_ is Cons!67723) (toList!10782 lt!2513925)))))

(declare-fun b!7024888 () Bool)

(declare-fun e!4222950 () Bool)

(assert (=> b!7024888 (= e!4222950 (dynLambda!27295 lambda!412662 (h!74171 (toList!10782 lt!2513925))))))

(declare-fun d!2189897 () Bool)

(declare-fun e!4222952 () Bool)

(assert (=> d!2189897 e!4222952))

(declare-fun res!2867707 () Bool)

(assert (=> d!2189897 (=> (not res!2867707) (not e!4222952))))

(declare-fun lt!2514005 () Context!12870)

(assert (=> d!2189897 (= res!2867707 (dynLambda!27295 lambda!412662 lt!2514005))))

(assert (=> d!2189897 (= lt!2514005 e!4222951)))

(declare-fun c!1305741 () Bool)

(assert (=> d!2189897 (= c!1305741 e!4222950)))

(declare-fun res!2867708 () Bool)

(assert (=> d!2189897 (=> (not res!2867708) (not e!4222950))))

(assert (=> d!2189897 (= res!2867708 ((_ is Cons!67723) (toList!10782 lt!2513925)))))

(assert (=> d!2189897 (exists!3345 (toList!10782 lt!2513925) lambda!412662)))

(assert (=> d!2189897 (= (getWitness!1428 (toList!10782 lt!2513925) lambda!412662) lt!2514005)))

(declare-fun b!7024889 () Bool)

(assert (=> b!7024889 (= e!4222951 (h!74171 (toList!10782 lt!2513925)))))

(declare-fun b!7024890 () Bool)

(assert (=> b!7024890 (= e!4222952 (contains!20439 (toList!10782 lt!2513925) lt!2514005))))

(assert (= (and d!2189897 res!2867708) b!7024888))

(assert (= (and d!2189897 c!1305741) b!7024889))

(assert (= (and d!2189897 (not c!1305741)) b!7024887))

(assert (= (and b!7024887 c!1305740) b!7024885))

(assert (= (and b!7024887 (not c!1305740)) b!7024886))

(assert (= (and d!2189897 res!2867707) b!7024890))

(declare-fun b_lambda!265473 () Bool)

(assert (=> (not b_lambda!265473) (not b!7024888)))

(declare-fun b_lambda!265475 () Bool)

(assert (=> (not b_lambda!265475) (not d!2189897)))

(assert (=> b!7024886 m!7727234))

(declare-fun m!7727824 () Bool)

(assert (=> b!7024886 m!7727824))

(declare-fun m!7727826 () Bool)

(assert (=> b!7024888 m!7727826))

(declare-fun m!7727828 () Bool)

(assert (=> d!2189897 m!7727828))

(assert (=> d!2189897 m!7727234))

(declare-fun m!7727830 () Bool)

(assert (=> d!2189897 m!7727830))

(declare-fun m!7727832 () Bool)

(assert (=> b!7024885 m!7727832))

(assert (=> b!7024890 m!7727234))

(declare-fun m!7727834 () Bool)

(assert (=> b!7024890 m!7727834))

(assert (=> d!2189721 d!2189897))

(assert (=> d!2189721 d!2189717))

(declare-fun d!2189899 () Bool)

(declare-fun lt!2514009 () Bool)

(assert (=> d!2189899 (= lt!2514009 (exists!3345 (toList!10782 lt!2513925) lambda!412662))))

(declare-fun choose!53064 ((InoxSet Context!12870) Int) Bool)

(assert (=> d!2189899 (= lt!2514009 (choose!53064 lt!2513925 lambda!412662))))

(assert (=> d!2189899 (= (exists!3347 lt!2513925 lambda!412662) lt!2514009)))

(declare-fun bs!1868363 () Bool)

(assert (= bs!1868363 d!2189899))

(assert (=> bs!1868363 m!7727234))

(assert (=> bs!1868363 m!7727234))

(assert (=> bs!1868363 m!7727830))

(declare-fun m!7727836 () Bool)

(assert (=> bs!1868363 m!7727836))

(assert (=> d!2189721 d!2189899))

(declare-fun bs!1868364 () Bool)

(declare-fun d!2189901 () Bool)

(assert (= bs!1868364 (and d!2189901 d!2189829)))

(declare-fun lambda!412718 () Int)

(assert (=> bs!1868364 (= lambda!412718 lambda!412708)))

(declare-fun bs!1868365 () Bool)

(assert (= bs!1868365 (and d!2189901 d!2189879)))

(assert (=> bs!1868365 (= lambda!412718 lambda!412717)))

(declare-fun bs!1868366 () Bool)

(assert (= bs!1868366 (and d!2189901 d!2189777)))

(assert (=> bs!1868366 (= lambda!412718 lambda!412705)))

(declare-fun bs!1868367 () Bool)

(assert (= bs!1868367 (and d!2189901 d!2189713)))

(assert (=> bs!1868367 (not (= lambda!412718 lambda!412686))))

(declare-fun bs!1868368 () Bool)

(assert (= bs!1868368 (and d!2189901 d!2189839)))

(assert (=> bs!1868368 (= lambda!412718 lambda!412709)))

(declare-fun bs!1868369 () Bool)

(assert (= bs!1868369 (and d!2189901 d!2189863)))

(assert (=> bs!1868369 (not (= lambda!412718 lambda!412715))))

(declare-fun bs!1868370 () Bool)

(assert (= bs!1868370 (and d!2189901 b!7024446)))

(assert (=> bs!1868370 (not (= lambda!412718 lambda!412662))))

(declare-fun bs!1868371 () Bool)

(assert (= bs!1868371 (and d!2189901 d!2189861)))

(assert (=> bs!1868371 (not (= lambda!412718 lambda!412712))))

(declare-fun bs!1868372 () Bool)

(assert (= bs!1868372 (and d!2189901 d!2189769)))

(assert (=> bs!1868372 (= lambda!412718 lambda!412704)))

(declare-fun bs!1868373 () Bool)

(assert (= bs!1868373 (and d!2189901 d!2189719)))

(assert (=> bs!1868373 (not (= lambda!412718 lambda!412689))))

(assert (=> d!2189901 (= (nullableZipper!2560 lt!2513905) (exists!3347 lt!2513905 lambda!412718))))

(declare-fun bs!1868374 () Bool)

(assert (= bs!1868374 d!2189901))

(declare-fun m!7727838 () Bool)

(assert (=> bs!1868374 m!7727838))

(assert (=> b!7024669 d!2189901))

(assert (=> d!2189755 d!2189889))

(declare-fun d!2189903 () Bool)

(declare-fun c!1305742 () Bool)

(assert (=> d!2189903 (= c!1305742 (isEmpty!39487 s!7408))))

(declare-fun e!4222954 () Bool)

(assert (=> d!2189903 (= (matchZipper!2979 (store ((as const (Array Context!12870 Bool)) false) lt!2513975 true) s!7408) e!4222954)))

(declare-fun b!7024891 () Bool)

(assert (=> b!7024891 (= e!4222954 (nullableZipper!2560 (store ((as const (Array Context!12870 Bool)) false) lt!2513975 true)))))

(declare-fun b!7024892 () Bool)

(assert (=> b!7024892 (= e!4222954 (matchZipper!2979 (derivationStepZipper!2895 (store ((as const (Array Context!12870 Bool)) false) lt!2513975 true) (head!14235 s!7408)) (tail!13508 s!7408)))))

(assert (= (and d!2189903 c!1305742) b!7024891))

(assert (= (and d!2189903 (not c!1305742)) b!7024892))

(assert (=> d!2189903 m!7727460))

(assert (=> b!7024891 m!7727584))

(declare-fun m!7727840 () Bool)

(assert (=> b!7024891 m!7727840))

(assert (=> b!7024892 m!7727464))

(assert (=> b!7024892 m!7727584))

(assert (=> b!7024892 m!7727464))

(declare-fun m!7727842 () Bool)

(assert (=> b!7024892 m!7727842))

(assert (=> b!7024892 m!7727468))

(assert (=> b!7024892 m!7727842))

(assert (=> b!7024892 m!7727468))

(declare-fun m!7727844 () Bool)

(assert (=> b!7024892 m!7727844))

(assert (=> bs!1868281 d!2189903))

(assert (=> d!2189743 d!2189811))

(declare-fun b!7024893 () Bool)

(declare-fun e!4222955 () Bool)

(assert (=> b!7024893 (= e!4222955 (nullable!7150 (h!74169 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918)))))))))

(declare-fun b!7024894 () Bool)

(declare-fun e!4222957 () (InoxSet Context!12870))

(assert (=> b!7024894 (= e!4222957 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024895 () Bool)

(declare-fun e!4222956 () (InoxSet Context!12870))

(assert (=> b!7024895 (= e!4222956 e!4222957)))

(declare-fun c!1305744 () Bool)

(assert (=> b!7024895 (= c!1305744 ((_ is Cons!67721) (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918))))))))

(declare-fun call!637766 () (InoxSet Context!12870))

(declare-fun b!7024896 () Bool)

(assert (=> b!7024896 (= e!4222956 ((_ map or) call!637766 (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918)))))) (h!74170 s!7408))))))

(declare-fun b!7024897 () Bool)

(assert (=> b!7024897 (= e!4222957 call!637766)))

(declare-fun d!2189905 () Bool)

(declare-fun c!1305743 () Bool)

(assert (=> d!2189905 (= c!1305743 e!4222955)))

(declare-fun res!2867709 () Bool)

(assert (=> d!2189905 (=> (not res!2867709) (not e!4222955))))

(assert (=> d!2189905 (= res!2867709 ((_ is Cons!67721) (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918))))))))

(assert (=> d!2189905 (= (derivationStepZipperUp!2049 (Context!12871 (t!381600 (exprs!6935 lt!2513918))) (h!74170 s!7408)) e!4222956)))

(declare-fun bm!637761 () Bool)

(assert (=> bm!637761 (= call!637766 (derivationStepZipperDown!2103 (h!74169 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918))))) (Context!12871 (t!381600 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513918)))))) (h!74170 s!7408)))))

(assert (= (and d!2189905 res!2867709) b!7024893))

(assert (= (and d!2189905 c!1305743) b!7024896))

(assert (= (and d!2189905 (not c!1305743)) b!7024895))

(assert (= (and b!7024895 c!1305744) b!7024897))

(assert (= (and b!7024895 (not c!1305744)) b!7024894))

(assert (= (or b!7024896 b!7024897) bm!637761))

(declare-fun m!7727846 () Bool)

(assert (=> b!7024893 m!7727846))

(declare-fun m!7727848 () Bool)

(assert (=> b!7024896 m!7727848))

(declare-fun m!7727850 () Bool)

(assert (=> bm!637761 m!7727850))

(assert (=> b!7024572 d!2189905))

(declare-fun bm!637762 () Bool)

(declare-fun call!637767 () (InoxSet Context!12870))

(declare-fun call!637769 () (InoxSet Context!12870))

(assert (=> bm!637762 (= call!637767 call!637769)))

(declare-fun d!2189907 () Bool)

(declare-fun c!1305746 () Bool)

(assert (=> d!2189907 (= c!1305746 (and ((_ is ElementMatch!17439) (h!74169 (exprs!6935 lt!2513919))) (= (c!1305604 (h!74169 (exprs!6935 lt!2513919))) (h!74170 s!7408))))))

(declare-fun e!4222958 () (InoxSet Context!12870))

(assert (=> d!2189907 (= (derivationStepZipperDown!2103 (h!74169 (exprs!6935 lt!2513919)) (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (h!74170 s!7408)) e!4222958)))

(declare-fun b!7024898 () Bool)

(assert (=> b!7024898 (= e!4222958 (store ((as const (Array Context!12870 Bool)) false) (Context!12871 (t!381600 (exprs!6935 lt!2513919))) true))))

(declare-fun b!7024899 () Bool)

(declare-fun e!4222959 () Bool)

(assert (=> b!7024899 (= e!4222959 (nullable!7150 (regOne!35390 (h!74169 (exprs!6935 lt!2513919)))))))

(declare-fun b!7024900 () Bool)

(declare-fun c!1305748 () Bool)

(assert (=> b!7024900 (= c!1305748 e!4222959)))

(declare-fun res!2867710 () Bool)

(assert (=> b!7024900 (=> (not res!2867710) (not e!4222959))))

(assert (=> b!7024900 (= res!2867710 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun e!4222961 () (InoxSet Context!12870))

(declare-fun e!4222963 () (InoxSet Context!12870))

(assert (=> b!7024900 (= e!4222961 e!4222963)))

(declare-fun b!7024901 () Bool)

(declare-fun call!637768 () (InoxSet Context!12870))

(assert (=> b!7024901 (= e!4222963 ((_ map or) call!637768 call!637769))))

(declare-fun b!7024902 () Bool)

(declare-fun e!4222960 () (InoxSet Context!12870))

(assert (=> b!7024902 (= e!4222960 call!637767)))

(declare-fun b!7024903 () Bool)

(declare-fun c!1305749 () Bool)

(assert (=> b!7024903 (= c!1305749 ((_ is Star!17439) (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun e!4222962 () (InoxSet Context!12870))

(assert (=> b!7024903 (= e!4222962 e!4222960)))

(declare-fun b!7024904 () Bool)

(assert (=> b!7024904 (= e!4222960 ((as const (Array Context!12870 Bool)) false))))

(declare-fun b!7024905 () Bool)

(assert (=> b!7024905 (= e!4222962 call!637767)))

(declare-fun b!7024906 () Bool)

(assert (=> b!7024906 (= e!4222963 e!4222962)))

(declare-fun c!1305745 () Bool)

(assert (=> b!7024906 (= c!1305745 ((_ is Concat!26284) (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun bm!637763 () Bool)

(declare-fun call!637770 () (InoxSet Context!12870))

(declare-fun c!1305747 () Bool)

(declare-fun call!637771 () List!67845)

(assert (=> bm!637763 (= call!637770 (derivationStepZipperDown!2103 (ite c!1305747 (regTwo!35391 (h!74169 (exprs!6935 lt!2513919))) (ite c!1305748 (regTwo!35390 (h!74169 (exprs!6935 lt!2513919))) (ite c!1305745 (regOne!35390 (h!74169 (exprs!6935 lt!2513919))) (reg!17768 (h!74169 (exprs!6935 lt!2513919)))))) (ite (or c!1305747 c!1305748) (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (Context!12871 call!637771)) (h!74170 s!7408)))))

(declare-fun bm!637764 () Bool)

(declare-fun call!637772 () List!67845)

(assert (=> bm!637764 (= call!637772 ($colon$colon!2555 (exprs!6935 (Context!12871 (t!381600 (exprs!6935 lt!2513919)))) (ite (or c!1305748 c!1305745) (regTwo!35390 (h!74169 (exprs!6935 lt!2513919))) (h!74169 (exprs!6935 lt!2513919)))))))

(declare-fun b!7024907 () Bool)

(assert (=> b!7024907 (= e!4222958 e!4222961)))

(assert (=> b!7024907 (= c!1305747 ((_ is Union!17439) (h!74169 (exprs!6935 lt!2513919))))))

(declare-fun bm!637765 () Bool)

(assert (=> bm!637765 (= call!637768 (derivationStepZipperDown!2103 (ite c!1305747 (regOne!35391 (h!74169 (exprs!6935 lt!2513919))) (regOne!35390 (h!74169 (exprs!6935 lt!2513919)))) (ite c!1305747 (Context!12871 (t!381600 (exprs!6935 lt!2513919))) (Context!12871 call!637772)) (h!74170 s!7408)))))

(declare-fun b!7024908 () Bool)

(assert (=> b!7024908 (= e!4222961 ((_ map or) call!637768 call!637770))))

(declare-fun bm!637766 () Bool)

(assert (=> bm!637766 (= call!637771 call!637772)))

(declare-fun bm!637767 () Bool)

(assert (=> bm!637767 (= call!637769 call!637770)))

(assert (= (and d!2189907 c!1305746) b!7024898))

(assert (= (and d!2189907 (not c!1305746)) b!7024907))

(assert (= (and b!7024907 c!1305747) b!7024908))

(assert (= (and b!7024907 (not c!1305747)) b!7024900))

(assert (= (and b!7024900 res!2867710) b!7024899))

(assert (= (and b!7024900 c!1305748) b!7024901))

(assert (= (and b!7024900 (not c!1305748)) b!7024906))

(assert (= (and b!7024906 c!1305745) b!7024905))

(assert (= (and b!7024906 (not c!1305745)) b!7024903))

(assert (= (and b!7024903 c!1305749) b!7024902))

(assert (= (and b!7024903 (not c!1305749)) b!7024904))

(assert (= (or b!7024905 b!7024902) bm!637766))

(assert (= (or b!7024905 b!7024902) bm!637762))

(assert (= (or b!7024901 bm!637762) bm!637767))

(assert (= (or b!7024901 bm!637766) bm!637764))

(assert (= (or b!7024908 b!7024901) bm!637765))

(assert (= (or b!7024908 bm!637767) bm!637763))

(declare-fun m!7727852 () Bool)

(assert (=> bm!637763 m!7727852))

(declare-fun m!7727854 () Bool)

(assert (=> bm!637765 m!7727854))

(declare-fun m!7727856 () Bool)

(assert (=> bm!637764 m!7727856))

(declare-fun m!7727858 () Bool)

(assert (=> b!7024898 m!7727858))

(declare-fun m!7727860 () Bool)

(assert (=> b!7024899 m!7727860))

(assert (=> bm!637735 d!2189907))

(declare-fun d!2189909 () Bool)

(assert (=> d!2189909 (= (flatMap!2386 lt!2513907 lambda!412692) (choose!53060 lt!2513907 lambda!412692))))

(declare-fun bs!1868375 () Bool)

(assert (= bs!1868375 d!2189909))

(declare-fun m!7727862 () Bool)

(assert (=> bs!1868375 m!7727862))

(assert (=> d!2189725 d!2189909))

(declare-fun d!2189911 () Bool)

(declare-fun c!1305750 () Bool)

(assert (=> d!2189911 (= c!1305750 (isEmpty!39487 (tail!13508 s!7408)))))

(declare-fun e!4222964 () Bool)

(assert (=> d!2189911 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513925 (head!14235 s!7408)) (tail!13508 s!7408)) e!4222964)))

(declare-fun b!7024909 () Bool)

(assert (=> b!7024909 (= e!4222964 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513925 (head!14235 s!7408))))))

(declare-fun b!7024910 () Bool)

(assert (=> b!7024910 (= e!4222964 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513925 (head!14235 s!7408)) (head!14235 (tail!13508 s!7408))) (tail!13508 (tail!13508 s!7408))))))

(assert (= (and d!2189911 c!1305750) b!7024909))

(assert (= (and d!2189911 (not c!1305750)) b!7024910))

(assert (=> d!2189911 m!7727468))

(assert (=> d!2189911 m!7727644))

(assert (=> b!7024909 m!7727574))

(declare-fun m!7727864 () Bool)

(assert (=> b!7024909 m!7727864))

(assert (=> b!7024910 m!7727468))

(assert (=> b!7024910 m!7727648))

(assert (=> b!7024910 m!7727574))

(assert (=> b!7024910 m!7727648))

(declare-fun m!7727866 () Bool)

(assert (=> b!7024910 m!7727866))

(assert (=> b!7024910 m!7727468))

(assert (=> b!7024910 m!7727652))

(assert (=> b!7024910 m!7727866))

(assert (=> b!7024910 m!7727652))

(declare-fun m!7727868 () Bool)

(assert (=> b!7024910 m!7727868))

(assert (=> b!7024687 d!2189911))

(declare-fun bs!1868376 () Bool)

(declare-fun d!2189913 () Bool)

(assert (= bs!1868376 (and d!2189913 d!2189871)))

(declare-fun lambda!412719 () Int)

(assert (=> bs!1868376 (= (= (head!14235 s!7408) (head!14235 (t!381601 s!7408))) (= lambda!412719 lambda!412716))))

(declare-fun bs!1868377 () Bool)

(assert (= bs!1868377 (and d!2189913 d!2189851)))

(assert (=> bs!1868377 (= (= (head!14235 s!7408) (head!14235 (t!381601 s!7408))) (= lambda!412719 lambda!412711))))

(declare-fun bs!1868378 () Bool)

(assert (= bs!1868378 (and d!2189913 d!2189725)))

(assert (=> bs!1868378 (= (= (head!14235 s!7408) (h!74170 s!7408)) (= lambda!412719 lambda!412692))))

(declare-fun bs!1868379 () Bool)

(assert (= bs!1868379 (and d!2189913 d!2189799)))

(assert (=> bs!1868379 (= lambda!412719 lambda!412706)))

(declare-fun bs!1868380 () Bool)

(assert (= bs!1868380 (and d!2189913 b!7024459)))

(assert (=> bs!1868380 (= (= (head!14235 s!7408) (h!74170 s!7408)) (= lambda!412719 lambda!412665))))

(declare-fun bs!1868381 () Bool)

(assert (= bs!1868381 (and d!2189913 d!2189823)))

(assert (=> bs!1868381 (= (= (head!14235 s!7408) (head!14235 (t!381601 s!7408))) (= lambda!412719 lambda!412707))))

(assert (=> d!2189913 true))

(assert (=> d!2189913 (= (derivationStepZipper!2895 lt!2513925 (head!14235 s!7408)) (flatMap!2386 lt!2513925 lambda!412719))))

(declare-fun bs!1868382 () Bool)

(assert (= bs!1868382 d!2189913))

(declare-fun m!7727870 () Bool)

(assert (=> bs!1868382 m!7727870))

(assert (=> b!7024687 d!2189913))

(assert (=> b!7024687 d!2189801))

(assert (=> b!7024687 d!2189803))

(declare-fun d!2189915 () Bool)

(declare-fun c!1305751 () Bool)

(assert (=> d!2189915 (= c!1305751 (isEmpty!39487 (tail!13508 (t!381601 s!7408))))))

(declare-fun e!4222965 () Bool)

(assert (=> d!2189915 (= (matchZipper!2979 (derivationStepZipper!2895 lt!2513930 (head!14235 (t!381601 s!7408))) (tail!13508 (t!381601 s!7408))) e!4222965)))

(declare-fun b!7024911 () Bool)

(assert (=> b!7024911 (= e!4222965 (nullableZipper!2560 (derivationStepZipper!2895 lt!2513930 (head!14235 (t!381601 s!7408)))))))

(declare-fun b!7024912 () Bool)

(assert (=> b!7024912 (= e!4222965 (matchZipper!2979 (derivationStepZipper!2895 (derivationStepZipper!2895 lt!2513930 (head!14235 (t!381601 s!7408))) (head!14235 (tail!13508 (t!381601 s!7408)))) (tail!13508 (tail!13508 (t!381601 s!7408)))))))

(assert (= (and d!2189915 c!1305751) b!7024911))

(assert (= (and d!2189915 (not c!1305751)) b!7024912))

(assert (=> d!2189915 m!7727502))

(assert (=> d!2189915 m!7727680))

(assert (=> b!7024911 m!7727542))

(declare-fun m!7727872 () Bool)

(assert (=> b!7024911 m!7727872))

(assert (=> b!7024912 m!7727502))

(assert (=> b!7024912 m!7727684))

(assert (=> b!7024912 m!7727542))

(assert (=> b!7024912 m!7727684))

(declare-fun m!7727874 () Bool)

(assert (=> b!7024912 m!7727874))

(assert (=> b!7024912 m!7727502))

(assert (=> b!7024912 m!7727688))

(assert (=> b!7024912 m!7727874))

(assert (=> b!7024912 m!7727688))

(declare-fun m!7727876 () Bool)

(assert (=> b!7024912 m!7727876))

(assert (=> b!7024674 d!2189915))

(declare-fun bs!1868383 () Bool)

(declare-fun d!2189917 () Bool)

(assert (= bs!1868383 (and d!2189917 d!2189871)))

(declare-fun lambda!412720 () Int)

(assert (=> bs!1868383 (= lambda!412720 lambda!412716)))

(declare-fun bs!1868384 () Bool)

(assert (= bs!1868384 (and d!2189917 d!2189851)))

(assert (=> bs!1868384 (= lambda!412720 lambda!412711)))

(declare-fun bs!1868385 () Bool)

(assert (= bs!1868385 (and d!2189917 d!2189913)))

(assert (=> bs!1868385 (= (= (head!14235 (t!381601 s!7408)) (head!14235 s!7408)) (= lambda!412720 lambda!412719))))

(declare-fun bs!1868386 () Bool)

(assert (= bs!1868386 (and d!2189917 d!2189725)))

(assert (=> bs!1868386 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412720 lambda!412692))))

(declare-fun bs!1868387 () Bool)

(assert (= bs!1868387 (and d!2189917 d!2189799)))

(assert (=> bs!1868387 (= (= (head!14235 (t!381601 s!7408)) (head!14235 s!7408)) (= lambda!412720 lambda!412706))))

(declare-fun bs!1868388 () Bool)

(assert (= bs!1868388 (and d!2189917 b!7024459)))

(assert (=> bs!1868388 (= (= (head!14235 (t!381601 s!7408)) (h!74170 s!7408)) (= lambda!412720 lambda!412665))))

(declare-fun bs!1868389 () Bool)

(assert (= bs!1868389 (and d!2189917 d!2189823)))

(assert (=> bs!1868389 (= lambda!412720 lambda!412707)))

(assert (=> d!2189917 true))

(assert (=> d!2189917 (= (derivationStepZipper!2895 lt!2513930 (head!14235 (t!381601 s!7408))) (flatMap!2386 lt!2513930 lambda!412720))))

(declare-fun bs!1868390 () Bool)

(assert (= bs!1868390 d!2189917))

(declare-fun m!7727878 () Bool)

(assert (=> bs!1868390 m!7727878))

(assert (=> b!7024674 d!2189917))

(assert (=> b!7024674 d!2189825))

(assert (=> b!7024674 d!2189827))

(declare-fun d!2189919 () Bool)

(assert (=> d!2189919 (= (nullable!7150 (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))) (nullableFct!2709 (regOne!35390 (h!74169 (exprs!6935 lt!2513910)))))))

(declare-fun bs!1868391 () Bool)

(assert (= bs!1868391 d!2189919))

(declare-fun m!7727880 () Bool)

(assert (=> bs!1868391 m!7727880))

(assert (=> b!7024636 d!2189919))

(declare-fun b!7024923 () Bool)

(declare-fun e!4222968 () Bool)

(assert (=> b!7024923 (= e!4222968 tp_is_empty!44103)))

(declare-fun b!7024925 () Bool)

(declare-fun tp!1935305 () Bool)

(assert (=> b!7024925 (= e!4222968 tp!1935305)))

(declare-fun b!7024924 () Bool)

(declare-fun tp!1935303 () Bool)

(declare-fun tp!1935304 () Bool)

(assert (=> b!7024924 (= e!4222968 (and tp!1935303 tp!1935304))))

(declare-fun b!7024926 () Bool)

(declare-fun tp!1935302 () Bool)

(declare-fun tp!1935301 () Bool)

(assert (=> b!7024926 (= e!4222968 (and tp!1935302 tp!1935301))))

(assert (=> b!7024692 (= tp!1935263 e!4222968)))

(assert (= (and b!7024692 ((_ is ElementMatch!17439) (h!74169 (exprs!6935 setElem!48944)))) b!7024923))

(assert (= (and b!7024692 ((_ is Concat!26284) (h!74169 (exprs!6935 setElem!48944)))) b!7024924))

(assert (= (and b!7024692 ((_ is Star!17439) (h!74169 (exprs!6935 setElem!48944)))) b!7024925))

(assert (= (and b!7024692 ((_ is Union!17439) (h!74169 (exprs!6935 setElem!48944)))) b!7024926))

(declare-fun b!7024927 () Bool)

(declare-fun e!4222969 () Bool)

(declare-fun tp!1935306 () Bool)

(declare-fun tp!1935307 () Bool)

(assert (=> b!7024927 (= e!4222969 (and tp!1935306 tp!1935307))))

(assert (=> b!7024692 (= tp!1935264 e!4222969)))

(assert (= (and b!7024692 ((_ is Cons!67721) (t!381600 (exprs!6935 setElem!48944)))) b!7024927))

(declare-fun condSetEmpty!48954 () Bool)

(assert (=> setNonEmpty!48950 (= condSetEmpty!48954 (= setRest!48950 ((as const (Array Context!12870 Bool)) false)))))

(declare-fun setRes!48954 () Bool)

(assert (=> setNonEmpty!48950 (= tp!1935275 setRes!48954)))

(declare-fun setIsEmpty!48954 () Bool)

(assert (=> setIsEmpty!48954 setRes!48954))

(declare-fun tp!1935309 () Bool)

(declare-fun setNonEmpty!48954 () Bool)

(declare-fun setElem!48954 () Context!12870)

(declare-fun e!4222970 () Bool)

(assert (=> setNonEmpty!48954 (= setRes!48954 (and tp!1935309 (inv!86456 setElem!48954) e!4222970))))

(declare-fun setRest!48954 () (InoxSet Context!12870))

(assert (=> setNonEmpty!48954 (= setRest!48950 ((_ map or) (store ((as const (Array Context!12870 Bool)) false) setElem!48954 true) setRest!48954))))

(declare-fun b!7024928 () Bool)

(declare-fun tp!1935308 () Bool)

(assert (=> b!7024928 (= e!4222970 tp!1935308)))

(assert (= (and setNonEmpty!48950 condSetEmpty!48954) setIsEmpty!48954))

(assert (= (and setNonEmpty!48950 (not condSetEmpty!48954)) setNonEmpty!48954))

(assert (= setNonEmpty!48954 b!7024928))

(declare-fun m!7727882 () Bool)

(assert (=> setNonEmpty!48954 m!7727882))

(declare-fun b!7024929 () Bool)

(declare-fun e!4222971 () Bool)

(declare-fun tp!1935310 () Bool)

(declare-fun tp!1935311 () Bool)

(assert (=> b!7024929 (= e!4222971 (and tp!1935310 tp!1935311))))

(assert (=> b!7024703 (= tp!1935274 e!4222971)))

(assert (= (and b!7024703 ((_ is Cons!67721) (exprs!6935 setElem!48950))) b!7024929))

(declare-fun b!7024930 () Bool)

(declare-fun e!4222972 () Bool)

(declare-fun tp!1935312 () Bool)

(assert (=> b!7024930 (= e!4222972 (and tp_is_empty!44103 tp!1935312))))

(assert (=> b!7024698 (= tp!1935269 e!4222972)))

(assert (= (and b!7024698 ((_ is Cons!67722) (t!381601 (t!381601 s!7408)))) b!7024930))

(declare-fun b!7024931 () Bool)

(declare-fun e!4222973 () Bool)

(assert (=> b!7024931 (= e!4222973 tp_is_empty!44103)))

(declare-fun b!7024933 () Bool)

(declare-fun tp!1935317 () Bool)

(assert (=> b!7024933 (= e!4222973 tp!1935317)))

(declare-fun b!7024932 () Bool)

(declare-fun tp!1935315 () Bool)

(declare-fun tp!1935316 () Bool)

(assert (=> b!7024932 (= e!4222973 (and tp!1935315 tp!1935316))))

(declare-fun b!7024934 () Bool)

(declare-fun tp!1935314 () Bool)

(declare-fun tp!1935313 () Bool)

(assert (=> b!7024934 (= e!4222973 (and tp!1935314 tp!1935313))))

(assert (=> b!7024693 (= tp!1935265 e!4222973)))

(assert (= (and b!7024693 ((_ is ElementMatch!17439) (h!74169 (exprs!6935 ct2!306)))) b!7024931))

(assert (= (and b!7024693 ((_ is Concat!26284) (h!74169 (exprs!6935 ct2!306)))) b!7024932))

(assert (= (and b!7024693 ((_ is Star!17439) (h!74169 (exprs!6935 ct2!306)))) b!7024933))

(assert (= (and b!7024693 ((_ is Union!17439) (h!74169 (exprs!6935 ct2!306)))) b!7024934))

(declare-fun b!7024935 () Bool)

(declare-fun e!4222974 () Bool)

(declare-fun tp!1935318 () Bool)

(declare-fun tp!1935319 () Bool)

(assert (=> b!7024935 (= e!4222974 (and tp!1935318 tp!1935319))))

(assert (=> b!7024693 (= tp!1935266 e!4222974)))

(assert (= (and b!7024693 ((_ is Cons!67721) (t!381600 (exprs!6935 ct2!306)))) b!7024935))

(declare-fun b_lambda!265477 () Bool)

(assert (= b_lambda!265475 (or b!7024446 b_lambda!265477)))

(declare-fun bs!1868392 () Bool)

(declare-fun d!2189921 () Bool)

(assert (= bs!1868392 (and d!2189921 b!7024446)))

(assert (=> bs!1868392 (= (dynLambda!27295 lambda!412662 lt!2514005) (matchZipper!2979 (store ((as const (Array Context!12870 Bool)) false) lt!2514005 true) s!7408))))

(declare-fun m!7727884 () Bool)

(assert (=> bs!1868392 m!7727884))

(assert (=> bs!1868392 m!7727884))

(declare-fun m!7727886 () Bool)

(assert (=> bs!1868392 m!7727886))

(assert (=> d!2189897 d!2189921))

(declare-fun b_lambda!265479 () Bool)

(assert (= b_lambda!265473 (or b!7024446 b_lambda!265479)))

(declare-fun bs!1868393 () Bool)

(declare-fun d!2189923 () Bool)

(assert (= bs!1868393 (and d!2189923 b!7024446)))

(assert (=> bs!1868393 (= (dynLambda!27295 lambda!412662 (h!74171 (toList!10782 lt!2513925))) (matchZipper!2979 (store ((as const (Array Context!12870 Bool)) false) (h!74171 (toList!10782 lt!2513925)) true) s!7408))))

(declare-fun m!7727888 () Bool)

(assert (=> bs!1868393 m!7727888))

(assert (=> bs!1868393 m!7727888))

(declare-fun m!7727890 () Bool)

(assert (=> bs!1868393 m!7727890))

(assert (=> b!7024888 d!2189923))

(declare-fun b_lambda!265481 () Bool)

(assert (= b_lambda!265463 (or b!7024452 b_lambda!265481)))

(declare-fun bs!1868394 () Bool)

(declare-fun d!2189925 () Bool)

(assert (= bs!1868394 (and d!2189925 b!7024452)))

(declare-fun validRegex!8922 (Regex!17439) Bool)

(assert (=> bs!1868394 (= (dynLambda!27298 lambda!412664 (h!74169 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)))) (validRegex!8922 (h!74169 (++!15472 (exprs!6935 lt!2513910) (exprs!6935 ct2!306)))))))

(declare-fun m!7727892 () Bool)

(assert (=> bs!1868394 m!7727892))

(assert (=> b!7024791 d!2189925))

(declare-fun b_lambda!265483 () Bool)

(assert (= b_lambda!265459 (or b!7024459 b_lambda!265483)))

(assert (=> d!2189785 d!2189765))

(declare-fun b_lambda!265485 () Bool)

(assert (= b_lambda!265467 (or b!7024452 b_lambda!265485)))

(declare-fun bs!1868395 () Bool)

(declare-fun d!2189927 () Bool)

(assert (= bs!1868395 (and d!2189927 b!7024452)))

(assert (=> bs!1868395 (= (dynLambda!27298 lambda!412664 (h!74169 (++!15472 lt!2513914 (exprs!6935 ct2!306)))) (validRegex!8922 (h!74169 (++!15472 lt!2513914 (exprs!6935 ct2!306)))))))

(declare-fun m!7727894 () Bool)

(assert (=> bs!1868395 m!7727894))

(assert (=> b!7024843 d!2189927))

(declare-fun b_lambda!265487 () Bool)

(assert (= b_lambda!265471 (or d!2189735 b_lambda!265487)))

(declare-fun bs!1868396 () Bool)

(declare-fun d!2189929 () Bool)

(assert (= bs!1868396 (and d!2189929 d!2189735)))

(assert (=> bs!1868396 (= (dynLambda!27298 lambda!412695 (h!74169 (exprs!6935 setElem!48944))) (validRegex!8922 (h!74169 (exprs!6935 setElem!48944))))))

(declare-fun m!7727896 () Bool)

(assert (=> bs!1868396 m!7727896))

(assert (=> b!7024862 d!2189929))

(declare-fun b_lambda!265489 () Bool)

(assert (= b_lambda!265461 (or d!2189759 b_lambda!265489)))

(declare-fun bs!1868397 () Bool)

(declare-fun d!2189931 () Bool)

(assert (= bs!1868397 (and d!2189931 d!2189759)))

(assert (=> bs!1868397 (= (dynLambda!27298 lambda!412701 (h!74169 (exprs!6935 ct2!306))) (validRegex!8922 (h!74169 (exprs!6935 ct2!306))))))

(declare-fun m!7727898 () Bool)

(assert (=> bs!1868397 m!7727898))

(assert (=> b!7024740 d!2189931))

(declare-fun b_lambda!265491 () Bool)

(assert (= b_lambda!265457 (or d!2189713 b_lambda!265491)))

(declare-fun bs!1868398 () Bool)

(declare-fun d!2189933 () Bool)

(assert (= bs!1868398 (and d!2189933 d!2189713)))

(assert (=> bs!1868398 (= (dynLambda!27295 lambda!412686 (h!74171 lt!2513920)) (not (dynLambda!27295 lambda!412662 (h!74171 lt!2513920))))))

(declare-fun b_lambda!265499 () Bool)

(assert (=> (not b_lambda!265499) (not bs!1868398)))

(declare-fun m!7727900 () Bool)

(assert (=> bs!1868398 m!7727900))

(assert (=> b!7024718 d!2189933))

(declare-fun b_lambda!265493 () Bool)

(assert (= b_lambda!265465 (or b!7024452 b_lambda!265493)))

(declare-fun bs!1868399 () Bool)

(declare-fun d!2189935 () Bool)

(assert (= bs!1868399 (and d!2189935 b!7024452)))

(assert (=> bs!1868399 (= (dynLambda!27298 lambda!412664 (h!74169 (exprs!6935 lt!2513910))) (validRegex!8922 (h!74169 (exprs!6935 lt!2513910))))))

(declare-fun m!7727902 () Bool)

(assert (=> bs!1868399 m!7727902))

(assert (=> b!7024793 d!2189935))

(declare-fun b_lambda!265495 () Bool)

(assert (= b_lambda!265469 (or b!7024452 b_lambda!265495)))

(declare-fun bs!1868400 () Bool)

(declare-fun d!2189937 () Bool)

(assert (= bs!1868400 (and d!2189937 b!7024452)))

(assert (=> bs!1868400 (= (dynLambda!27298 lambda!412664 (h!74169 lt!2513914)) (validRegex!8922 (h!74169 lt!2513914)))))

(declare-fun m!7727904 () Bool)

(assert (=> bs!1868400 m!7727904))

(assert (=> b!7024845 d!2189937))

(declare-fun b_lambda!265497 () Bool)

(assert (= b_lambda!265455 (or b!7024452 b_lambda!265497)))

(declare-fun bs!1868401 () Bool)

(declare-fun d!2189939 () Bool)

(assert (= bs!1868401 (and d!2189939 b!7024452)))

(declare-fun lt!2514010 () Unit!161540)

(assert (=> bs!1868401 (= lt!2514010 (lemmaConcatPreservesForall!760 (exprs!6935 a!13113) (exprs!6935 ct2!306) lambda!412664))))

(assert (=> bs!1868401 (= (dynLambda!27297 lambda!412663 a!13113) (Context!12871 (++!15472 (exprs!6935 a!13113) (exprs!6935 ct2!306))))))

(declare-fun m!7727906 () Bool)

(assert (=> bs!1868401 m!7727906))

(declare-fun m!7727908 () Bool)

(assert (=> bs!1868401 m!7727908))

(assert (=> d!2189771 d!2189939))

(check-sat (not d!2189917) (not d!2189859) (not b!7024776) (not b!7024925) (not bm!637756) (not bm!637738) (not b_lambda!265483) (not b_lambda!265451) (not b!7024747) (not d!2189851) (not bm!637746) (not bm!637747) (not bs!1868394) (not b!7024860) (not d!2189833) (not b!7024891) (not bm!637737) (not b!7024928) (not b!7024835) (not d!2189809) (not b!7024792) (not d!2189861) (not b!7024788) (not b!7024926) (not b!7024927) (not b!7024836) (not bs!1868400) (not d!2189813) (not d!2189913) (not d!2189863) (not b!7024786) (not d!2189783) (not b!7024721) (not d!2189839) (not bm!637750) (not b!7024933) (not d!2189773) (not d!2189909) (not setNonEmpty!48954) (not d!2189901) (not b!7024837) (not b!7024777) (not b!7024790) (not b!7024814) (not b!7024840) (not d!2189915) (not setNonEmpty!48953) (not b!7024784) (not b_lambda!265479) (not d!2189779) (not b!7024752) (not d!2189829) (not d!2189843) (not d!2189785) (not b!7024724) (not b!7024826) (not bs!1868397) (not d!2189821) (not b_lambda!265495) (not b!7024719) (not bm!637760) (not b!7024841) (not b!7024821) (not bm!637765) (not d!2189911) (not b!7024842) (not b!7024886) (not b!7024934) (not bs!1868401) (not b!7024930) (not bs!1868395) (not b!7024819) (not b!7024789) (not b!7024893) (not bs!1868396) (not b!7024749) (not b_lambda!265477) (not b!7024817) (not d!2189777) (not b!7024813) (not b!7024890) (not b!7024751) (not b!7024892) (not b!7024899) (not d!2189919) (not b_lambda!265485) (not d!2189865) (not b!7024794) (not b!7024816) (not bm!637749) (not d!2189871) (not b!7024796) (not d!2189903) (not b!7024706) (not d!2189849) (not b!7024910) (not bm!637757) (not d!2189847) (not d!2189899) (not b_lambda!265491) (not b!7024844) (not bm!637761) (not b!7024838) tp_is_empty!44103 (not d!2189797) (not b_lambda!265487) (not bs!1868399) (not b!7024863) (not d!2189807) (not b!7024924) (not b!7024811) (not bm!637755) (not b!7024864) (not b!7024827) (not b!7024870) (not d!2189897) (not d!2189799) (not b!7024712) (not b!7024935) (not d!2189781) (not d!2189885) (not d!2189823) (not b_lambda!265497) (not d!2189875) (not b_lambda!265453) (not bm!637739) (not b!7024753) (not b!7024848) (not bs!1868392) (not bm!637763) (not b!7024872) (not d!2189845) (not b_lambda!265449) (not b!7024726) (not b!7024846) (not b_lambda!265489) (not b_lambda!265493) (not bm!637764) (not b!7024859) (not b_lambda!265481) (not b!7024912) (not b_lambda!265499) (not b!7024911) (not b!7024909) (not bm!637751) (not b!7024867) (not d!2189769) (not b!7024741) (not d!2189869) (not bs!1868393) (not b!7024834) (not b!7024885) (not b!7024929) (not b!7024932) (not d!2189879) (not b!7024896) (not b!7024720) (not d!2189771))
(check-sat)
