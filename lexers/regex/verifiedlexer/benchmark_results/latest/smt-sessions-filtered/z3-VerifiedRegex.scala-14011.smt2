; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740466 () Bool)

(assert start!740466)

(declare-fun b!7779825 () Bool)

(declare-fun e!4608643 () Bool)

(assert (=> b!7779825 (= e!4608643 (not true))))

(declare-datatypes ((C!41960 0))(
  ( (C!41961 (val!31420 Int)) )
))
(declare-datatypes ((List!73656 0))(
  ( (Nil!73532) (Cons!73532 (h!79980 C!41960) (t!388391 List!73656)) )
))
(declare-fun s!14292 () List!73656)

(declare-datatypes ((Regex!20817 0))(
  ( (ElementMatch!20817 (c!1433564 C!41960)) (Concat!29662 (regOne!42146 Regex!20817) (regTwo!42146 Regex!20817)) (EmptyExpr!20817) (Star!20817 (reg!21146 Regex!20817)) (EmptyLang!20817) (Union!20817 (regOne!42147 Regex!20817) (regTwo!42147 Regex!20817)) )
))
(declare-fun derivative!545 (Regex!20817 List!73656) Regex!20817)

(assert (=> b!7779825 (= (derivative!545 EmptyLang!20817 (t!388391 s!14292)) EmptyLang!20817)))

(declare-datatypes ((Unit!168524 0))(
  ( (Unit!168525) )
))
(declare-fun lt!2672721 () Unit!168524)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!80 (Regex!20817 List!73656) Unit!168524)

(assert (=> b!7779825 (= lt!2672721 (lemmaEmptyLangDerivativeIsAFixPoint!80 EmptyLang!20817 (t!388391 s!14292)))))

(declare-fun e!4608644 () Bool)

(assert (=> b!7779825 e!4608644))

(declare-fun res!3101070 () Bool)

(assert (=> b!7779825 (=> res!3101070 e!4608644)))

(declare-fun lt!2672722 () Regex!20817)

(declare-fun matchR!10277 (Regex!20817 List!73656) Bool)

(assert (=> b!7779825 (= res!3101070 (matchR!10277 lt!2672722 (t!388391 s!14292)))))

(declare-fun lt!2672724 () Unit!168524)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!386 (Regex!20817 Regex!20817 List!73656) Unit!168524)

(assert (=> b!7779825 (= lt!2672724 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!386 lt!2672722 EmptyLang!20817 (t!388391 s!14292)))))

(declare-fun b!7779826 () Bool)

(declare-fun e!4608646 () Bool)

(assert (=> b!7779826 (= e!4608646 e!4608643)))

(declare-fun res!3101069 () Bool)

(assert (=> b!7779826 (=> (not res!3101069) (not e!4608643))))

(declare-fun lt!2672723 () Regex!20817)

(assert (=> b!7779826 (= res!3101069 (= lt!2672723 (Union!20817 lt!2672722 EmptyLang!20817)))))

(declare-fun r2!6217 () Regex!20817)

(declare-fun r1!6279 () Regex!20817)

(declare-fun derivativeStep!6160 (Regex!20817 C!41960) Regex!20817)

(assert (=> b!7779826 (= lt!2672722 (Concat!29662 (derivativeStep!6160 r1!6279 (h!79980 s!14292)) r2!6217))))

(declare-fun b!7779827 () Bool)

(declare-fun res!3101068 () Bool)

(declare-fun e!4608647 () Bool)

(assert (=> b!7779827 (=> (not res!3101068) (not e!4608647))))

(get-info :version)

(assert (=> b!7779827 (= res!3101068 ((_ is Cons!73532) s!14292))))

(declare-fun b!7779828 () Bool)

(declare-fun res!3101066 () Bool)

(declare-fun e!4608642 () Bool)

(assert (=> b!7779828 (=> (not res!3101066) (not e!4608642))))

(declare-fun validRegex!11231 (Regex!20817) Bool)

(assert (=> b!7779828 (= res!3101066 (validRegex!11231 r2!6217))))

(declare-fun b!7779829 () Bool)

(declare-fun e!4608641 () Bool)

(declare-fun tp_is_empty!51989 () Bool)

(assert (=> b!7779829 (= e!4608641 tp_is_empty!51989)))

(declare-fun b!7779830 () Bool)

(declare-fun tp!2286581 () Bool)

(declare-fun tp!2286571 () Bool)

(assert (=> b!7779830 (= e!4608641 (and tp!2286581 tp!2286571))))

(declare-fun b!7779831 () Bool)

(declare-fun e!4608640 () Bool)

(declare-fun tp!2286577 () Bool)

(assert (=> b!7779831 (= e!4608640 tp!2286577)))

(declare-fun res!3101065 () Bool)

(assert (=> start!740466 (=> (not res!3101065) (not e!4608642))))

(assert (=> start!740466 (= res!3101065 (validRegex!11231 r1!6279))))

(assert (=> start!740466 e!4608642))

(assert (=> start!740466 e!4608641))

(assert (=> start!740466 e!4608640))

(declare-fun e!4608645 () Bool)

(assert (=> start!740466 e!4608645))

(declare-fun b!7779832 () Bool)

(declare-fun tp!2286575 () Bool)

(assert (=> b!7779832 (= e!4608641 tp!2286575)))

(declare-fun b!7779833 () Bool)

(assert (=> b!7779833 (= e!4608640 tp_is_empty!51989)))

(declare-fun b!7779834 () Bool)

(declare-fun tp!2286579 () Bool)

(declare-fun tp!2286573 () Bool)

(assert (=> b!7779834 (= e!4608640 (and tp!2286579 tp!2286573))))

(declare-fun b!7779835 () Bool)

(assert (=> b!7779835 (= e!4608642 e!4608647)))

(declare-fun res!3101064 () Bool)

(assert (=> b!7779835 (=> (not res!3101064) (not e!4608647))))

(declare-fun lt!2672720 () Regex!20817)

(assert (=> b!7779835 (= res!3101064 (matchR!10277 lt!2672720 s!14292))))

(assert (=> b!7779835 (= lt!2672720 (Concat!29662 r1!6279 r2!6217))))

(declare-fun b!7779836 () Bool)

(assert (=> b!7779836 (= e!4608644 (matchR!10277 EmptyLang!20817 (t!388391 s!14292)))))

(declare-fun b!7779837 () Bool)

(declare-fun tp!2286574 () Bool)

(declare-fun tp!2286572 () Bool)

(assert (=> b!7779837 (= e!4608640 (and tp!2286574 tp!2286572))))

(declare-fun b!7779838 () Bool)

(declare-fun res!3101067 () Bool)

(assert (=> b!7779838 (=> (not res!3101067) (not e!4608646))))

(declare-fun nullable!9205 (Regex!20817) Bool)

(assert (=> b!7779838 (= res!3101067 (not (nullable!9205 r1!6279)))))

(declare-fun b!7779839 () Bool)

(assert (=> b!7779839 (= e!4608647 e!4608646)))

(declare-fun res!3101063 () Bool)

(assert (=> b!7779839 (=> (not res!3101063) (not e!4608646))))

(assert (=> b!7779839 (= res!3101063 (matchR!10277 lt!2672723 (t!388391 s!14292)))))

(assert (=> b!7779839 (= lt!2672723 (derivativeStep!6160 lt!2672720 (h!79980 s!14292)))))

(declare-fun b!7779840 () Bool)

(declare-fun tp!2286578 () Bool)

(declare-fun tp!2286576 () Bool)

(assert (=> b!7779840 (= e!4608641 (and tp!2286578 tp!2286576))))

(declare-fun b!7779841 () Bool)

(declare-fun tp!2286580 () Bool)

(assert (=> b!7779841 (= e!4608645 (and tp_is_empty!51989 tp!2286580))))

(assert (= (and start!740466 res!3101065) b!7779828))

(assert (= (and b!7779828 res!3101066) b!7779835))

(assert (= (and b!7779835 res!3101064) b!7779827))

(assert (= (and b!7779827 res!3101068) b!7779839))

(assert (= (and b!7779839 res!3101063) b!7779838))

(assert (= (and b!7779838 res!3101067) b!7779826))

(assert (= (and b!7779826 res!3101069) b!7779825))

(assert (= (and b!7779825 (not res!3101070)) b!7779836))

(assert (= (and start!740466 ((_ is ElementMatch!20817) r1!6279)) b!7779829))

(assert (= (and start!740466 ((_ is Concat!29662) r1!6279)) b!7779830))

(assert (= (and start!740466 ((_ is Star!20817) r1!6279)) b!7779832))

(assert (= (and start!740466 ((_ is Union!20817) r1!6279)) b!7779840))

(assert (= (and start!740466 ((_ is ElementMatch!20817) r2!6217)) b!7779833))

(assert (= (and start!740466 ((_ is Concat!29662) r2!6217)) b!7779834))

(assert (= (and start!740466 ((_ is Star!20817) r2!6217)) b!7779831))

(assert (= (and start!740466 ((_ is Union!20817) r2!6217)) b!7779837))

(assert (= (and start!740466 ((_ is Cons!73532) s!14292)) b!7779841))

(declare-fun m!8228506 () Bool)

(assert (=> b!7779836 m!8228506))

(declare-fun m!8228508 () Bool)

(assert (=> b!7779825 m!8228508))

(declare-fun m!8228510 () Bool)

(assert (=> b!7779825 m!8228510))

(declare-fun m!8228512 () Bool)

(assert (=> b!7779825 m!8228512))

(declare-fun m!8228514 () Bool)

(assert (=> b!7779825 m!8228514))

(declare-fun m!8228516 () Bool)

(assert (=> b!7779838 m!8228516))

(declare-fun m!8228518 () Bool)

(assert (=> start!740466 m!8228518))

(declare-fun m!8228520 () Bool)

(assert (=> b!7779826 m!8228520))

(declare-fun m!8228522 () Bool)

(assert (=> b!7779839 m!8228522))

(declare-fun m!8228524 () Bool)

(assert (=> b!7779839 m!8228524))

(declare-fun m!8228526 () Bool)

(assert (=> b!7779835 m!8228526))

(declare-fun m!8228528 () Bool)

(assert (=> b!7779828 m!8228528))

(check-sat tp_is_empty!51989 (not b!7779836) (not b!7779826) (not b!7779838) (not b!7779835) (not b!7779828) (not b!7779830) (not b!7779825) (not b!7779837) (not start!740466) (not b!7779831) (not b!7779840) (not b!7779839) (not b!7779834) (not b!7779841) (not b!7779832))
(check-sat)
