; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744202 () Bool)

(assert start!744202)

(declare-fun b!7878626 () Bool)

(declare-fun res!3129075 () Bool)

(declare-fun e!4652985 () Bool)

(assert (=> b!7878626 (=> (not res!3129075) (not e!4652985))))

(declare-datatypes ((C!42676 0))(
  ( (C!42677 (val!31800 Int)) )
))
(declare-datatypes ((Regex!21175 0))(
  ( (ElementMatch!21175 (c!1446875 C!42676)) (Concat!30020 (regOne!42862 Regex!21175) (regTwo!42862 Regex!21175)) (EmptyExpr!21175) (Star!21175 (reg!21504 Regex!21175)) (EmptyLang!21175) (Union!21175 (regOne!42863 Regex!21175) (regTwo!42863 Regex!21175)) )
))
(declare-fun r1!6200 () Regex!21175)

(declare-datatypes ((List!74034 0))(
  ( (Nil!73910) (Cons!73910 (h!80358 C!42676) (t!388769 List!74034)) )
))
(declare-fun s!14219 () List!74034)

(declare-fun matchR!10611 (Regex!21175 List!74034) Bool)

(assert (=> b!7878626 (= res!3129075 (matchR!10611 r1!6200 s!14219))))

(declare-fun b!7878627 () Bool)

(declare-fun e!4652984 () Bool)

(declare-fun tp!2340767 () Bool)

(declare-fun tp!2340773 () Bool)

(assert (=> b!7878627 (= e!4652984 (and tp!2340767 tp!2340773))))

(declare-fun res!3129076 () Bool)

(assert (=> start!744202 (=> (not res!3129076) (not e!4652985))))

(declare-fun validRegex!11585 (Regex!21175) Bool)

(assert (=> start!744202 (= res!3129076 (validRegex!11585 r1!6200))))

(assert (=> start!744202 e!4652985))

(assert (=> start!744202 e!4652984))

(declare-fun e!4652982 () Bool)

(assert (=> start!744202 e!4652982))

(declare-fun e!4652983 () Bool)

(assert (=> start!744202 e!4652983))

(declare-fun b!7878628 () Bool)

(declare-fun tp!2340766 () Bool)

(declare-fun tp!2340769 () Bool)

(assert (=> b!7878628 (= e!4652984 (and tp!2340766 tp!2340769))))

(declare-fun b!7878629 () Bool)

(declare-fun tp!2340774 () Bool)

(assert (=> b!7878629 (= e!4652982 tp!2340774)))

(declare-fun b!7878630 () Bool)

(declare-fun tp!2340776 () Bool)

(assert (=> b!7878630 (= e!4652984 tp!2340776)))

(declare-fun b!7878631 () Bool)

(declare-fun res!3129077 () Bool)

(assert (=> b!7878631 (=> (not res!3129077) (not e!4652985))))

(get-info :version)

(assert (=> b!7878631 (= res!3129077 ((_ is Cons!73910) s!14219))))

(declare-fun b!7878632 () Bool)

(declare-fun res!3129078 () Bool)

(assert (=> b!7878632 (=> (not res!3129078) (not e!4652985))))

(declare-fun r2!6138 () Regex!21175)

(assert (=> b!7878632 (= res!3129078 (validRegex!11585 r2!6138))))

(declare-fun b!7878633 () Bool)

(declare-fun tp!2340768 () Bool)

(declare-fun tp!2340775 () Bool)

(assert (=> b!7878633 (= e!4652982 (and tp!2340768 tp!2340775))))

(declare-fun b!7878634 () Bool)

(declare-fun tp!2340770 () Bool)

(declare-fun tp!2340771 () Bool)

(assert (=> b!7878634 (= e!4652982 (and tp!2340770 tp!2340771))))

(declare-fun b!7878635 () Bool)

(declare-fun tp_is_empty!52749 () Bool)

(declare-fun tp!2340772 () Bool)

(assert (=> b!7878635 (= e!4652983 (and tp_is_empty!52749 tp!2340772))))

(declare-fun b!7878636 () Bool)

(assert (=> b!7878636 (= e!4652984 tp_is_empty!52749)))

(declare-fun b!7878637 () Bool)

(assert (=> b!7878637 (= e!4652985 (not true))))

(declare-fun lt!2681129 () Bool)

(assert (=> b!7878637 (= lt!2681129 (matchR!10611 (Union!21175 r1!6200 r2!6138) s!14219))))

(declare-fun lt!2681126 () Regex!21175)

(declare-fun lt!2681127 () Regex!21175)

(assert (=> b!7878637 (matchR!10611 (Union!21175 lt!2681126 lt!2681127) (t!388769 s!14219))))

(declare-datatypes ((Unit!168984 0))(
  ( (Unit!168985) )
))
(declare-fun lt!2681128 () Unit!168984)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!148 (Regex!21175 Regex!21175 List!74034) Unit!168984)

(assert (=> b!7878637 (= lt!2681128 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!148 lt!2681126 lt!2681127 (t!388769 s!14219)))))

(declare-fun derivativeStep!6406 (Regex!21175 C!42676) Regex!21175)

(assert (=> b!7878637 (= lt!2681127 (derivativeStep!6406 r2!6138 (h!80358 s!14219)))))

(assert (=> b!7878637 (= lt!2681126 (derivativeStep!6406 r1!6200 (h!80358 s!14219)))))

(declare-fun b!7878638 () Bool)

(assert (=> b!7878638 (= e!4652982 tp_is_empty!52749)))

(assert (= (and start!744202 res!3129076) b!7878632))

(assert (= (and b!7878632 res!3129078) b!7878626))

(assert (= (and b!7878626 res!3129075) b!7878631))

(assert (= (and b!7878631 res!3129077) b!7878637))

(assert (= (and start!744202 ((_ is ElementMatch!21175) r1!6200)) b!7878636))

(assert (= (and start!744202 ((_ is Concat!30020) r1!6200)) b!7878628))

(assert (= (and start!744202 ((_ is Star!21175) r1!6200)) b!7878630))

(assert (= (and start!744202 ((_ is Union!21175) r1!6200)) b!7878627))

(assert (= (and start!744202 ((_ is ElementMatch!21175) r2!6138)) b!7878638))

(assert (= (and start!744202 ((_ is Concat!30020) r2!6138)) b!7878633))

(assert (= (and start!744202 ((_ is Star!21175) r2!6138)) b!7878629))

(assert (= (and start!744202 ((_ is Union!21175) r2!6138)) b!7878634))

(assert (= (and start!744202 ((_ is Cons!73910) s!14219)) b!7878635))

(declare-fun m!8267236 () Bool)

(assert (=> b!7878626 m!8267236))

(declare-fun m!8267238 () Bool)

(assert (=> start!744202 m!8267238))

(declare-fun m!8267240 () Bool)

(assert (=> b!7878632 m!8267240))

(declare-fun m!8267242 () Bool)

(assert (=> b!7878637 m!8267242))

(declare-fun m!8267244 () Bool)

(assert (=> b!7878637 m!8267244))

(declare-fun m!8267246 () Bool)

(assert (=> b!7878637 m!8267246))

(declare-fun m!8267248 () Bool)

(assert (=> b!7878637 m!8267248))

(declare-fun m!8267250 () Bool)

(assert (=> b!7878637 m!8267250))

(check-sat (not b!7878626) (not b!7878630) (not start!744202) (not b!7878635) (not b!7878629) (not b!7878627) (not b!7878634) (not b!7878633) (not b!7878637) tp_is_empty!52749 (not b!7878628) (not b!7878632))
(check-sat)
