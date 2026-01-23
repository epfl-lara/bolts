; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688808 () Bool)

(assert start!688808)

(declare-fun b!7080996 () Bool)

(assert (=> b!7080996 true))

(declare-fun b!7080992 () Bool)

(assert (=> b!7080992 true))

(declare-fun b!7080988 () Bool)

(assert (=> b!7080988 true))

(declare-fun b!7080986 () Bool)

(declare-fun e!4257042 () Bool)

(declare-fun tp_is_empty!44607 () Bool)

(declare-fun tp!1943511 () Bool)

(assert (=> b!7080986 (= e!4257042 (and tp_is_empty!44607 tp!1943511))))

(declare-fun b!7080987 () Bool)

(declare-fun res!2892501 () Bool)

(declare-fun e!4257043 () Bool)

(assert (=> b!7080987 (=> res!2892501 e!4257043)))

(declare-datatypes ((C!35652 0))(
  ( (C!35653 (val!27528 Int)) )
))
(declare-datatypes ((Regex!17691 0))(
  ( (ElementMatch!17691 (c!1321616 C!35652)) (Concat!26536 (regOne!35894 Regex!17691) (regTwo!35894 Regex!17691)) (EmptyExpr!17691) (Star!17691 (reg!18020 Regex!17691)) (EmptyLang!17691) (Union!17691 (regOne!35895 Regex!17691) (regTwo!35895 Regex!17691)) )
))
(declare-datatypes ((List!68599 0))(
  ( (Nil!68475) (Cons!68475 (h!74923 Regex!17691) (t!382384 List!68599)) )
))
(declare-datatypes ((Context!13374 0))(
  ( (Context!13375 (exprs!7187 List!68599)) )
))
(declare-fun lt!2552454 () Context!13374)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2552448 () (InoxSet Context!13374))

(assert (=> b!7080987 (= res!2892501 (not (select lt!2552448 lt!2552454)))))

(declare-fun res!2892505 () Bool)

(declare-fun e!4257047 () Bool)

(assert (=> start!688808 (=> (not res!2892505) (not e!4257047))))

(declare-datatypes ((List!68600 0))(
  ( (Nil!68476) (Cons!68476 (h!74924 C!35652) (t!382385 List!68600)) )
))
(declare-fun s!7408 () List!68600)

(declare-fun matchZipper!3231 ((InoxSet Context!13374) List!68600) Bool)

(assert (=> start!688808 (= res!2892505 (matchZipper!3231 lt!2552448 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13374))

(declare-fun ct2!306 () Context!13374)

(declare-fun appendTo!812 ((InoxSet Context!13374) Context!13374) (InoxSet Context!13374))

(assert (=> start!688808 (= lt!2552448 (appendTo!812 z1!570 ct2!306))))

(assert (=> start!688808 e!4257047))

(declare-fun condSetEmpty!50503 () Bool)

(assert (=> start!688808 (= condSetEmpty!50503 (= z1!570 ((as const (Array Context!13374 Bool)) false)))))

(declare-fun setRes!50503 () Bool)

(assert (=> start!688808 setRes!50503))

(declare-fun e!4257045 () Bool)

(declare-fun inv!87086 (Context!13374) Bool)

(assert (=> start!688808 (and (inv!87086 ct2!306) e!4257045)))

(assert (=> start!688808 e!4257042))

(declare-fun e!4257044 () Bool)

(declare-fun e!4257046 () Bool)

(assert (=> b!7080988 (= e!4257044 e!4257046)))

(declare-fun res!2892506 () Bool)

(assert (=> b!7080988 (=> res!2892506 e!4257046)))

(declare-fun lt!2552444 () (InoxSet Context!13374))

(declare-fun lt!2552447 () (InoxSet Context!13374))

(declare-fun derivationStepZipper!3141 ((InoxSet Context!13374) C!35652) (InoxSet Context!13374))

(assert (=> b!7080988 (= res!2892506 (not (= (derivationStepZipper!3141 lt!2552444 (h!74924 s!7408)) lt!2552447)))))

(declare-fun lambda!427857 () Int)

(declare-fun lt!2552445 () Context!13374)

(declare-fun flatMap!2617 ((InoxSet Context!13374) Int) (InoxSet Context!13374))

(declare-fun derivationStepZipperUp!2275 (Context!13374 C!35652) (InoxSet Context!13374))

(assert (=> b!7080988 (= (flatMap!2617 lt!2552444 lambda!427857) (derivationStepZipperUp!2275 lt!2552445 (h!74924 s!7408)))))

(declare-datatypes ((Unit!162093 0))(
  ( (Unit!162094) )
))
(declare-fun lt!2552446 () Unit!162093)

(declare-fun lemmaFlatMapOnSingletonSet!2126 ((InoxSet Context!13374) Context!13374 Int) Unit!162093)

(assert (=> b!7080988 (= lt!2552446 (lemmaFlatMapOnSingletonSet!2126 lt!2552444 lt!2552445 lambda!427857))))

(assert (=> b!7080988 (= lt!2552447 (derivationStepZipperUp!2275 lt!2552445 (h!74924 s!7408)))))

(declare-fun lt!2552441 () Context!13374)

(declare-fun lambda!427856 () Int)

(declare-fun lt!2552452 () Unit!162093)

(declare-fun lemmaConcatPreservesForall!1002 (List!68599 List!68599 Int) Unit!162093)

(assert (=> b!7080988 (= lt!2552452 (lemmaConcatPreservesForall!1002 (exprs!7187 lt!2552441) (exprs!7187 ct2!306) lambda!427856))))

(declare-fun b!7080989 () Bool)

(declare-fun res!2892510 () Bool)

(assert (=> b!7080989 (=> (not res!2892510) (not e!4257047))))

(get-info :version)

(assert (=> b!7080989 (= res!2892510 ((_ is Cons!68476) s!7408))))

(declare-fun b!7080990 () Bool)

(declare-fun res!2892509 () Bool)

(declare-fun e!4257041 () Bool)

(assert (=> b!7080990 (=> res!2892509 e!4257041)))

(assert (=> b!7080990 (= res!2892509 (not (matchZipper!3231 (store ((as const (Array Context!13374 Bool)) false) ct2!306 true) s!7408)))))

(declare-fun b!7080991 () Bool)

(assert (=> b!7080991 (= e!4257041 (= (store ((as const (Array Context!13374 Bool)) false) lt!2552441 true) (store ((as const (Array Context!13374 Bool)) false) (Context!13375 Nil!68475) true)))))

(declare-fun setIsEmpty!50503 () Bool)

(assert (=> setIsEmpty!50503 setRes!50503))

(declare-fun e!4257048 () Bool)

(assert (=> b!7080992 (= e!4257043 e!4257048)))

(declare-fun res!2892507 () Bool)

(assert (=> b!7080992 (=> res!2892507 e!4257048)))

(assert (=> b!7080992 (= res!2892507 (or (not (= lt!2552445 lt!2552454)) (not (select z1!570 lt!2552441))))))

(declare-fun ++!15854 (List!68599 List!68599) List!68599)

(assert (=> b!7080992 (= lt!2552445 (Context!13375 (++!15854 (exprs!7187 lt!2552441) (exprs!7187 ct2!306))))))

(declare-fun lt!2552442 () Unit!162093)

(assert (=> b!7080992 (= lt!2552442 (lemmaConcatPreservesForall!1002 (exprs!7187 lt!2552441) (exprs!7187 ct2!306) lambda!427856))))

(declare-fun lambda!427855 () Int)

(declare-fun mapPost2!520 ((InoxSet Context!13374) Int Context!13374) Context!13374)

(assert (=> b!7080992 (= lt!2552441 (mapPost2!520 z1!570 lambda!427855 lt!2552454))))

(declare-fun b!7080993 () Bool)

(declare-fun e!4257040 () Bool)

(declare-fun tp!1943510 () Bool)

(assert (=> b!7080993 (= e!4257040 tp!1943510)))

(declare-fun tp!1943509 () Bool)

(declare-fun setNonEmpty!50503 () Bool)

(declare-fun setElem!50503 () Context!13374)

(assert (=> setNonEmpty!50503 (= setRes!50503 (and tp!1943509 (inv!87086 setElem!50503) e!4257040))))

(declare-fun setRest!50503 () (InoxSet Context!13374))

(assert (=> setNonEmpty!50503 (= z1!570 ((_ map or) (store ((as const (Array Context!13374 Bool)) false) setElem!50503 true) setRest!50503))))

(declare-fun b!7080994 () Bool)

(assert (=> b!7080994 (= e!4257046 e!4257041)))

(declare-fun res!2892508 () Bool)

(assert (=> b!7080994 (=> res!2892508 e!4257041)))

(assert (=> b!7080994 (= res!2892508 (not (= lt!2552445 ct2!306)))))

(declare-fun lt!2552443 () Unit!162093)

(assert (=> b!7080994 (= lt!2552443 (lemmaConcatPreservesForall!1002 (exprs!7187 lt!2552441) (exprs!7187 ct2!306) lambda!427856))))

(declare-fun b!7080995 () Bool)

(declare-fun res!2892502 () Bool)

(assert (=> b!7080995 (=> res!2892502 e!4257046)))

(assert (=> b!7080995 (= res!2892502 ((_ is Cons!68475) (exprs!7187 lt!2552441)))))

(assert (=> b!7080996 (= e!4257047 (not e!4257043))))

(declare-fun res!2892504 () Bool)

(assert (=> b!7080996 (=> res!2892504 e!4257043)))

(declare-fun lt!2552451 () (InoxSet Context!13374))

(assert (=> b!7080996 (= res!2892504 (not (matchZipper!3231 lt!2552451 s!7408)))))

(assert (=> b!7080996 (= lt!2552451 (store ((as const (Array Context!13374 Bool)) false) lt!2552454 true))))

(declare-fun lambda!427854 () Int)

(declare-fun getWitness!1820 ((InoxSet Context!13374) Int) Context!13374)

(assert (=> b!7080996 (= lt!2552454 (getWitness!1820 lt!2552448 lambda!427854))))

(declare-datatypes ((List!68601 0))(
  ( (Nil!68477) (Cons!68477 (h!74925 Context!13374) (t!382386 List!68601)) )
))
(declare-fun lt!2552453 () List!68601)

(declare-fun exists!3775 (List!68601 Int) Bool)

(assert (=> b!7080996 (exists!3775 lt!2552453 lambda!427854)))

(declare-fun lt!2552450 () Unit!162093)

(declare-fun lemmaZipperMatchesExistsMatchingContext!612 (List!68601 List!68600) Unit!162093)

(assert (=> b!7080996 (= lt!2552450 (lemmaZipperMatchesExistsMatchingContext!612 lt!2552453 s!7408))))

(declare-fun toList!11032 ((InoxSet Context!13374)) List!68601)

(assert (=> b!7080996 (= lt!2552453 (toList!11032 lt!2552448))))

(declare-fun b!7080997 () Bool)

(assert (=> b!7080997 (= e!4257048 e!4257044)))

(declare-fun res!2892503 () Bool)

(assert (=> b!7080997 (=> res!2892503 e!4257044)))

(assert (=> b!7080997 (= res!2892503 (not (= lt!2552444 lt!2552451)))))

(assert (=> b!7080997 (= lt!2552444 (store ((as const (Array Context!13374 Bool)) false) lt!2552445 true))))

(declare-fun lt!2552449 () Unit!162093)

(assert (=> b!7080997 (= lt!2552449 (lemmaConcatPreservesForall!1002 (exprs!7187 lt!2552441) (exprs!7187 ct2!306) lambda!427856))))

(declare-fun b!7080998 () Bool)

(declare-fun tp!1943512 () Bool)

(assert (=> b!7080998 (= e!4257045 tp!1943512)))

(assert (= (and start!688808 res!2892505) b!7080989))

(assert (= (and b!7080989 res!2892510) b!7080996))

(assert (= (and b!7080996 (not res!2892504)) b!7080987))

(assert (= (and b!7080987 (not res!2892501)) b!7080992))

(assert (= (and b!7080992 (not res!2892507)) b!7080997))

(assert (= (and b!7080997 (not res!2892503)) b!7080988))

(assert (= (and b!7080988 (not res!2892506)) b!7080995))

(assert (= (and b!7080995 (not res!2892502)) b!7080994))

(assert (= (and b!7080994 (not res!2892508)) b!7080990))

(assert (= (and b!7080990 (not res!2892509)) b!7080991))

(assert (= (and start!688808 condSetEmpty!50503) setIsEmpty!50503))

(assert (= (and start!688808 (not condSetEmpty!50503)) setNonEmpty!50503))

(assert (= setNonEmpty!50503 b!7080993))

(assert (= start!688808 b!7080998))

(assert (= (and start!688808 ((_ is Cons!68476) s!7408)) b!7080986))

(declare-fun m!7811934 () Bool)

(assert (=> start!688808 m!7811934))

(declare-fun m!7811936 () Bool)

(assert (=> start!688808 m!7811936))

(declare-fun m!7811938 () Bool)

(assert (=> start!688808 m!7811938))

(declare-fun m!7811940 () Bool)

(assert (=> b!7080988 m!7811940))

(declare-fun m!7811942 () Bool)

(assert (=> b!7080988 m!7811942))

(declare-fun m!7811944 () Bool)

(assert (=> b!7080988 m!7811944))

(declare-fun m!7811946 () Bool)

(assert (=> b!7080988 m!7811946))

(declare-fun m!7811948 () Bool)

(assert (=> b!7080988 m!7811948))

(declare-fun m!7811950 () Bool)

(assert (=> b!7080987 m!7811950))

(declare-fun m!7811952 () Bool)

(assert (=> b!7080992 m!7811952))

(declare-fun m!7811954 () Bool)

(assert (=> b!7080992 m!7811954))

(assert (=> b!7080992 m!7811946))

(declare-fun m!7811956 () Bool)

(assert (=> b!7080992 m!7811956))

(declare-fun m!7811958 () Bool)

(assert (=> b!7080996 m!7811958))

(declare-fun m!7811960 () Bool)

(assert (=> b!7080996 m!7811960))

(declare-fun m!7811962 () Bool)

(assert (=> b!7080996 m!7811962))

(declare-fun m!7811964 () Bool)

(assert (=> b!7080996 m!7811964))

(declare-fun m!7811966 () Bool)

(assert (=> b!7080996 m!7811966))

(declare-fun m!7811968 () Bool)

(assert (=> b!7080996 m!7811968))

(declare-fun m!7811970 () Bool)

(assert (=> b!7080990 m!7811970))

(assert (=> b!7080990 m!7811970))

(declare-fun m!7811972 () Bool)

(assert (=> b!7080990 m!7811972))

(assert (=> b!7080994 m!7811946))

(declare-fun m!7811974 () Bool)

(assert (=> b!7080991 m!7811974))

(declare-fun m!7811976 () Bool)

(assert (=> setNonEmpty!50503 m!7811976))

(declare-fun m!7811978 () Bool)

(assert (=> b!7080997 m!7811978))

(assert (=> b!7080997 m!7811946))

(check-sat (not b!7080990) (not b!7080993) (not b!7080998) (not b!7080994) tp_is_empty!44607 (not start!688808) (not setNonEmpty!50503) (not b!7080988) (not b!7080992) (not b!7080986) (not b!7080996) (not b!7080997))
(check-sat)
