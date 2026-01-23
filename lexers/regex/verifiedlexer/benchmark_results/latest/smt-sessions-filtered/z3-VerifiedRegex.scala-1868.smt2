; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92326 () Bool)

(assert start!92326)

(declare-fun b!1085301 () Bool)

(assert (=> b!1085301 true))

(declare-fun b!1085297 () Bool)

(declare-fun res!482751 () Bool)

(declare-fun e!686349 () Bool)

(assert (=> b!1085297 (=> (not res!482751) (not e!686349))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6560 0))(
  ( (C!6561 (val!3528 Int)) )
))
(declare-datatypes ((Regex!2995 0))(
  ( (ElementMatch!2995 (c!183355 C!6560)) (Concat!4828 (regOne!6502 Regex!2995) (regTwo!6502 Regex!2995)) (EmptyExpr!2995) (Star!2995 (reg!3324 Regex!2995)) (EmptyLang!2995) (Union!2995 (regOne!6503 Regex!2995) (regTwo!6503 Regex!2995)) )
))
(declare-datatypes ((List!10288 0))(
  ( (Nil!10272) (Cons!10272 (h!15673 Regex!2995) (t!101334 List!10288)) )
))
(declare-datatypes ((Context!950 0))(
  ( (Context!951 (exprs!975 List!10288)) )
))
(declare-fun z!1122 () (InoxSet Context!950))

(declare-datatypes ((List!10289 0))(
  ( (Nil!10273) (Cons!10273 (h!15674 C!6560) (t!101335 List!10289)) )
))
(declare-fun s!2287 () List!10289)

(declare-fun matchZipper!43 ((InoxSet Context!950) List!10289) Bool)

(assert (=> b!1085297 (= res!482751 (matchZipper!43 z!1122 s!2287))))

(declare-fun setIsEmpty!7518 () Bool)

(declare-fun setRes!7518 () Bool)

(assert (=> setIsEmpty!7518 setRes!7518))

(declare-fun b!1085298 () Bool)

(declare-datatypes ((Unit!15667 0))(
  ( (Unit!15668) )
))
(declare-fun e!686348 () Unit!15667)

(declare-fun Unit!15669 () Unit!15667)

(assert (=> b!1085298 (= e!686348 Unit!15669)))

(declare-fun lt!362993 () Unit!15667)

(declare-fun lt!362989 () (InoxSet Context!950))

(declare-fun lemmaLostCauseCannotMatch!7 ((InoxSet Context!950) List!10289) Unit!15667)

(assert (=> b!1085298 (= lt!362993 (lemmaLostCauseCannotMatch!7 lt!362989 s!2287))))

(assert (=> b!1085298 false))

(declare-fun b!1085299 () Bool)

(declare-fun e!686356 () Bool)

(declare-fun tp!324848 () Bool)

(assert (=> b!1085299 (= e!686356 tp!324848)))

(declare-fun e!686353 () Bool)

(declare-fun tp!324846 () Bool)

(declare-fun b!1085300 () Bool)

(declare-datatypes ((List!10290 0))(
  ( (Nil!10274) (Cons!10274 (h!15675 Context!950) (t!101336 List!10290)) )
))
(declare-fun zl!316 () List!10290)

(declare-fun inv!13200 (Context!950) Bool)

(assert (=> b!1085300 (= e!686353 (and (inv!13200 (h!15675 zl!316)) e!686356 tp!324846))))

(declare-fun e!686351 () Bool)

(assert (=> b!1085301 (= e!686349 (not e!686351))))

(declare-fun res!482753 () Bool)

(assert (=> b!1085301 (=> res!482753 e!686351)))

(declare-fun lambda!39754 () Int)

(declare-fun exists!131 ((InoxSet Context!950) Int) Bool)

(assert (=> b!1085301 (= res!482753 (not (exists!131 z!1122 lambda!39754)))))

(declare-fun exists!132 (List!10290 Int) Bool)

(assert (=> b!1085301 (exists!132 zl!316 lambda!39754)))

(declare-fun lt!362992 () Unit!15667)

(declare-fun lemmaZipperMatchesExistsMatchingContext!22 (List!10290 List!10289) Unit!15667)

(assert (=> b!1085301 (= lt!362992 (lemmaZipperMatchesExistsMatchingContext!22 zl!316 s!2287))))

(declare-fun b!1085302 () Bool)

(declare-fun e!686350 () Bool)

(assert (=> b!1085302 (= e!686351 e!686350)))

(declare-fun res!482749 () Bool)

(assert (=> b!1085302 (=> res!482749 e!686350)))

(declare-fun lt!362988 () Context!950)

(assert (=> b!1085302 (= res!482749 (not (select z!1122 lt!362988)))))

(declare-fun getWitness!60 ((InoxSet Context!950) Int) Context!950)

(assert (=> b!1085302 (= lt!362988 (getWitness!60 z!1122 lambda!39754))))

(declare-fun tp!324844 () Bool)

(declare-fun setElem!7518 () Context!950)

(declare-fun setNonEmpty!7518 () Bool)

(declare-fun e!686354 () Bool)

(assert (=> setNonEmpty!7518 (= setRes!7518 (and tp!324844 (inv!13200 setElem!7518) e!686354))))

(declare-fun setRest!7518 () (InoxSet Context!950))

(assert (=> setNonEmpty!7518 (= z!1122 ((_ map or) (store ((as const (Array Context!950 Bool)) false) setElem!7518 true) setRest!7518))))

(declare-fun b!1085303 () Bool)

(declare-fun e!686352 () Bool)

(declare-fun lt!362991 () Bool)

(assert (=> b!1085303 (= e!686352 (not lt!362991))))

(declare-fun lt!362990 () Unit!15667)

(assert (=> b!1085303 (= lt!362990 e!686348)))

(declare-fun c!183354 () Bool)

(assert (=> b!1085303 (= c!183354 lt!362991)))

(declare-fun lostCause!218 (Context!950) Bool)

(assert (=> b!1085303 (= lt!362991 (lostCause!218 lt!362988))))

(declare-fun b!1085304 () Bool)

(assert (=> b!1085304 (= e!686350 e!686352)))

(declare-fun res!482752 () Bool)

(assert (=> b!1085304 (=> res!482752 e!686352)))

(assert (=> b!1085304 (= res!482752 (not (matchZipper!43 lt!362989 s!2287)))))

(assert (=> b!1085304 (= lt!362989 (store ((as const (Array Context!950 Bool)) false) lt!362988 true))))

(declare-fun b!1085305 () Bool)

(declare-fun e!686355 () Bool)

(declare-fun tp_is_empty!5621 () Bool)

(declare-fun tp!324845 () Bool)

(assert (=> b!1085305 (= e!686355 (and tp_is_empty!5621 tp!324845))))

(declare-fun b!1085306 () Bool)

(declare-fun tp!324847 () Bool)

(assert (=> b!1085306 (= e!686354 tp!324847)))

(declare-fun res!482750 () Bool)

(assert (=> start!92326 (=> (not res!482750) (not e!686349))))

(declare-fun toList!613 ((InoxSet Context!950)) List!10290)

(assert (=> start!92326 (= res!482750 (= (toList!613 z!1122) zl!316))))

(assert (=> start!92326 e!686349))

(declare-fun condSetEmpty!7518 () Bool)

(assert (=> start!92326 (= condSetEmpty!7518 (= z!1122 ((as const (Array Context!950 Bool)) false)))))

(assert (=> start!92326 setRes!7518))

(assert (=> start!92326 e!686353))

(assert (=> start!92326 e!686355))

(declare-fun b!1085307 () Bool)

(declare-fun Unit!15670 () Unit!15667)

(assert (=> b!1085307 (= e!686348 Unit!15670)))

(assert (= (and start!92326 res!482750) b!1085297))

(assert (= (and b!1085297 res!482751) b!1085301))

(assert (= (and b!1085301 (not res!482753)) b!1085302))

(assert (= (and b!1085302 (not res!482749)) b!1085304))

(assert (= (and b!1085304 (not res!482752)) b!1085303))

(assert (= (and b!1085303 c!183354) b!1085298))

(assert (= (and b!1085303 (not c!183354)) b!1085307))

(assert (= (and start!92326 condSetEmpty!7518) setIsEmpty!7518))

(assert (= (and start!92326 (not condSetEmpty!7518)) setNonEmpty!7518))

(assert (= setNonEmpty!7518 b!1085306))

(assert (= b!1085300 b!1085299))

(get-info :version)

(assert (= (and start!92326 ((_ is Cons!10274) zl!316)) b!1085300))

(assert (= (and start!92326 ((_ is Cons!10273) s!2287)) b!1085305))

(declare-fun m!1234907 () Bool)

(assert (=> b!1085300 m!1234907))

(declare-fun m!1234909 () Bool)

(assert (=> b!1085303 m!1234909))

(declare-fun m!1234911 () Bool)

(assert (=> b!1085301 m!1234911))

(declare-fun m!1234913 () Bool)

(assert (=> b!1085301 m!1234913))

(declare-fun m!1234915 () Bool)

(assert (=> b!1085301 m!1234915))

(declare-fun m!1234917 () Bool)

(assert (=> b!1085302 m!1234917))

(declare-fun m!1234919 () Bool)

(assert (=> b!1085302 m!1234919))

(declare-fun m!1234921 () Bool)

(assert (=> b!1085298 m!1234921))

(declare-fun m!1234923 () Bool)

(assert (=> start!92326 m!1234923))

(declare-fun m!1234925 () Bool)

(assert (=> setNonEmpty!7518 m!1234925))

(declare-fun m!1234927 () Bool)

(assert (=> b!1085304 m!1234927))

(declare-fun m!1234929 () Bool)

(assert (=> b!1085304 m!1234929))

(declare-fun m!1234931 () Bool)

(assert (=> b!1085297 m!1234931))

(check-sat (not b!1085305) (not b!1085297) (not b!1085300) (not b!1085298) tp_is_empty!5621 (not b!1085304) (not b!1085306) (not setNonEmpty!7518) (not b!1085299) (not b!1085302) (not b!1085301) (not b!1085303) (not start!92326))
(check-sat)
