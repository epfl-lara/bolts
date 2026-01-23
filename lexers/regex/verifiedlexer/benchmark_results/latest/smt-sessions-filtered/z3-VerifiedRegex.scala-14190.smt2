; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743974 () Bool)

(assert start!743974)

(declare-fun b!7869401 () Bool)

(declare-fun e!4649088 () Bool)

(declare-fun tp!2334780 () Bool)

(declare-fun tp!2334776 () Bool)

(assert (=> b!7869401 (= e!4649088 (and tp!2334780 tp!2334776))))

(declare-fun b!7869402 () Bool)

(declare-fun e!4649087 () Bool)

(declare-fun tp_is_empty!52705 () Bool)

(assert (=> b!7869402 (= e!4649087 tp_is_empty!52705)))

(declare-fun b!7869403 () Bool)

(assert (=> b!7869403 (= e!4649088 tp_is_empty!52705)))

(declare-fun b!7869404 () Bool)

(declare-fun tp!2334777 () Bool)

(declare-fun tp!2334781 () Bool)

(assert (=> b!7869404 (= e!4649088 (and tp!2334777 tp!2334781))))

(declare-fun b!7869405 () Bool)

(declare-fun tp!2334772 () Bool)

(assert (=> b!7869405 (= e!4649087 tp!2334772)))

(declare-fun b!7869406 () Bool)

(declare-fun res!3127034 () Bool)

(declare-fun e!4649090 () Bool)

(assert (=> b!7869406 (=> (not res!3127034) (not e!4649090))))

(declare-datatypes ((C!42632 0))(
  ( (C!42633 (val!31778 Int)) )
))
(declare-datatypes ((Regex!21153 0))(
  ( (ElementMatch!21153 (c!1445713 C!42632)) (Concat!29998 (regOne!42818 Regex!21153) (regTwo!42818 Regex!21153)) (EmptyExpr!21153) (Star!21153 (reg!21482 Regex!21153)) (EmptyLang!21153) (Union!21153 (regOne!42819 Regex!21153) (regTwo!42819 Regex!21153)) )
))
(declare-fun r2!6138 () Regex!21153)

(declare-fun validRegex!11563 (Regex!21153) Bool)

(assert (=> b!7869406 (= res!3127034 (validRegex!11563 r2!6138))))

(declare-fun b!7869407 () Bool)

(declare-fun e!4649091 () Bool)

(declare-fun tp!2334779 () Bool)

(assert (=> b!7869407 (= e!4649091 (and tp_is_empty!52705 tp!2334779))))

(declare-fun b!7869408 () Bool)

(declare-fun e!4649089 () Bool)

(assert (=> b!7869408 (= e!4649089 false)))

(declare-fun lt!2680780 () Bool)

(declare-fun lt!2680781 () Regex!21153)

(declare-datatypes ((List!74012 0))(
  ( (Nil!73888) (Cons!73888 (h!80336 C!42632) (t!388747 List!74012)) )
))
(declare-fun s!14219 () List!74012)

(declare-fun matchR!10589 (Regex!21153 List!74012) Bool)

(assert (=> b!7869408 (= lt!2680780 (matchR!10589 lt!2680781 (t!388747 s!14219)))))

(declare-fun b!7869409 () Bool)

(assert (=> b!7869409 (= e!4649090 e!4649089)))

(declare-fun res!3127031 () Bool)

(assert (=> b!7869409 (=> (not res!3127031) (not e!4649089))))

(assert (=> b!7869409 (= res!3127031 (validRegex!11563 lt!2680781))))

(declare-fun lt!2680779 () Regex!21153)

(declare-fun derivativeStep!6384 (Regex!21153 C!42632) Regex!21153)

(assert (=> b!7869409 (= lt!2680779 (derivativeStep!6384 r2!6138 (h!80336 s!14219)))))

(declare-fun r1!6200 () Regex!21153)

(assert (=> b!7869409 (= lt!2680781 (derivativeStep!6384 r1!6200 (h!80336 s!14219)))))

(declare-fun b!7869410 () Bool)

(declare-fun res!3127033 () Bool)

(assert (=> b!7869410 (=> (not res!3127033) (not e!4649089))))

(assert (=> b!7869410 (= res!3127033 (validRegex!11563 lt!2680779))))

(declare-fun b!7869400 () Bool)

(declare-fun res!3127032 () Bool)

(assert (=> b!7869400 (=> (not res!3127032) (not e!4649090))))

(get-info :version)

(assert (=> b!7869400 (= res!3127032 ((_ is Cons!73888) s!14219))))

(declare-fun res!3127035 () Bool)

(assert (=> start!743974 (=> (not res!3127035) (not e!4649090))))

(assert (=> start!743974 (= res!3127035 (validRegex!11563 r1!6200))))

(assert (=> start!743974 e!4649090))

(assert (=> start!743974 e!4649088))

(assert (=> start!743974 e!4649087))

(assert (=> start!743974 e!4649091))

(declare-fun b!7869411 () Bool)

(declare-fun tp!2334778 () Bool)

(declare-fun tp!2334775 () Bool)

(assert (=> b!7869411 (= e!4649087 (and tp!2334778 tp!2334775))))

(declare-fun b!7869412 () Bool)

(declare-fun tp!2334782 () Bool)

(assert (=> b!7869412 (= e!4649088 tp!2334782)))

(declare-fun b!7869413 () Bool)

(declare-fun res!3127036 () Bool)

(assert (=> b!7869413 (=> (not res!3127036) (not e!4649090))))

(assert (=> b!7869413 (= res!3127036 (matchR!10589 r1!6200 s!14219))))

(declare-fun b!7869414 () Bool)

(declare-fun tp!2334774 () Bool)

(declare-fun tp!2334773 () Bool)

(assert (=> b!7869414 (= e!4649087 (and tp!2334774 tp!2334773))))

(assert (= (and start!743974 res!3127035) b!7869406))

(assert (= (and b!7869406 res!3127034) b!7869413))

(assert (= (and b!7869413 res!3127036) b!7869400))

(assert (= (and b!7869400 res!3127032) b!7869409))

(assert (= (and b!7869409 res!3127031) b!7869410))

(assert (= (and b!7869410 res!3127033) b!7869408))

(assert (= (and start!743974 ((_ is ElementMatch!21153) r1!6200)) b!7869403))

(assert (= (and start!743974 ((_ is Concat!29998) r1!6200)) b!7869401))

(assert (= (and start!743974 ((_ is Star!21153) r1!6200)) b!7869412))

(assert (= (and start!743974 ((_ is Union!21153) r1!6200)) b!7869404))

(assert (= (and start!743974 ((_ is ElementMatch!21153) r2!6138)) b!7869402))

(assert (= (and start!743974 ((_ is Concat!29998) r2!6138)) b!7869414))

(assert (= (and start!743974 ((_ is Star!21153) r2!6138)) b!7869405))

(assert (= (and start!743974 ((_ is Union!21153) r2!6138)) b!7869411))

(assert (= (and start!743974 ((_ is Cons!73888) s!14219)) b!7869407))

(declare-fun m!8264648 () Bool)

(assert (=> b!7869409 m!8264648))

(declare-fun m!8264650 () Bool)

(assert (=> b!7869409 m!8264650))

(declare-fun m!8264652 () Bool)

(assert (=> b!7869409 m!8264652))

(declare-fun m!8264654 () Bool)

(assert (=> b!7869408 m!8264654))

(declare-fun m!8264656 () Bool)

(assert (=> b!7869406 m!8264656))

(declare-fun m!8264658 () Bool)

(assert (=> start!743974 m!8264658))

(declare-fun m!8264660 () Bool)

(assert (=> b!7869413 m!8264660))

(declare-fun m!8264662 () Bool)

(assert (=> b!7869410 m!8264662))

(check-sat (not b!7869412) (not b!7869404) (not b!7869407) (not b!7869413) (not b!7869401) (not b!7869406) (not start!743974) (not b!7869409) tp_is_empty!52705 (not b!7869405) (not b!7869410) (not b!7869411) (not b!7869414) (not b!7869408))
(check-sat)
