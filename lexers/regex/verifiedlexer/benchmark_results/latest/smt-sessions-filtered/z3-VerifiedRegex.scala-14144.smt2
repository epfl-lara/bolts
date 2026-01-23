; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742978 () Bool)

(assert start!742978)

(declare-fun b!7845863 () Bool)

(declare-fun e!4638457 () Bool)

(declare-fun tp_is_empty!52521 () Bool)

(assert (=> b!7845863 (= e!4638457 tp_is_empty!52521)))

(declare-fun b!7845864 () Bool)

(declare-fun e!4638461 () Bool)

(declare-fun e!4638460 () Bool)

(assert (=> b!7845864 (= e!4638461 (not e!4638460))))

(declare-fun res!3120231 () Bool)

(assert (=> b!7845864 (=> res!3120231 e!4638460)))

(declare-datatypes ((C!42448 0))(
  ( (C!42449 (val!31686 Int)) )
))
(declare-datatypes ((Regex!21061 0))(
  ( (ElementMatch!21061 (c!1442155 C!42448)) (Concat!29906 (regOne!42634 Regex!21061) (regTwo!42634 Regex!21061)) (EmptyExpr!21061) (Star!21061 (reg!21390 Regex!21061)) (EmptyLang!21061) (Union!21061 (regOne!42635 Regex!21061) (regTwo!42635 Regex!21061)) )
))
(declare-fun r1!6227 () Regex!21061)

(declare-fun nullable!9335 (Regex!21061) Bool)

(assert (=> b!7845864 (= res!3120231 (not (nullable!9335 r1!6227)))))

(declare-fun lt!2679125 () Regex!21061)

(declare-fun r2!6165 () Regex!21061)

(declare-datatypes ((List!73920 0))(
  ( (Nil!73796) (Cons!73796 (h!80244 C!42448) (t!388655 List!73920)) )
))
(declare-fun s2!3706 () List!73920)

(declare-fun s1!4084 () List!73920)

(declare-fun matchR!10497 (Regex!21061 List!73920) Bool)

(declare-fun ++!18071 (List!73920 List!73920) List!73920)

(assert (=> b!7845864 (matchR!10497 (Concat!29906 lt!2679125 r2!6165) (++!18071 (t!388655 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168868 0))(
  ( (Unit!168869) )
))
(declare-fun lt!2679122 () Unit!168868)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!432 (Regex!21061 Regex!21061 List!73920 List!73920) Unit!168868)

(assert (=> b!7845864 (= lt!2679122 (lemmaTwoRegexMatchThenConcatMatchesConcatString!432 lt!2679125 r2!6165 (t!388655 s1!4084) s2!3706))))

(declare-fun derivativeStep!6298 (Regex!21061 C!42448) Regex!21061)

(assert (=> b!7845864 (= lt!2679125 (derivativeStep!6298 r1!6227 (h!80244 s1!4084)))))

(declare-fun b!7845865 () Bool)

(declare-fun e!4638459 () Bool)

(declare-fun tp!2322996 () Bool)

(assert (=> b!7845865 (= e!4638459 (and tp_is_empty!52521 tp!2322996))))

(declare-fun b!7845866 () Bool)

(declare-fun e!4638456 () Bool)

(declare-fun tp!2322997 () Bool)

(declare-fun tp!2322998 () Bool)

(assert (=> b!7845866 (= e!4638456 (and tp!2322997 tp!2322998))))

(declare-fun res!3120227 () Bool)

(assert (=> start!742978 (=> (not res!3120227) (not e!4638461))))

(declare-fun validRegex!11471 (Regex!21061) Bool)

(assert (=> start!742978 (= res!3120227 (validRegex!11471 r1!6227))))

(assert (=> start!742978 e!4638461))

(assert (=> start!742978 e!4638457))

(assert (=> start!742978 e!4638456))

(assert (=> start!742978 e!4638459))

(declare-fun e!4638458 () Bool)

(assert (=> start!742978 e!4638458))

(declare-fun b!7845867 () Bool)

(declare-fun tp!2323001 () Bool)

(declare-fun tp!2322995 () Bool)

(assert (=> b!7845867 (= e!4638457 (and tp!2323001 tp!2322995))))

(declare-fun b!7845868 () Bool)

(assert (=> b!7845868 (= e!4638460 true)))

(declare-fun lt!2679124 () Regex!21061)

(assert (=> b!7845868 (= lt!2679124 (derivativeStep!6298 (Concat!29906 r1!6227 r2!6165) (h!80244 s1!4084)))))

(declare-fun lt!2679123 () Regex!21061)

(assert (=> b!7845868 (= lt!2679123 (derivativeStep!6298 r2!6165 (h!80244 s1!4084)))))

(declare-fun b!7845869 () Bool)

(declare-fun tp!2323003 () Bool)

(declare-fun tp!2322999 () Bool)

(assert (=> b!7845869 (= e!4638457 (and tp!2323003 tp!2322999))))

(declare-fun b!7845870 () Bool)

(declare-fun tp!2323002 () Bool)

(assert (=> b!7845870 (= e!4638457 tp!2323002)))

(declare-fun b!7845871 () Bool)

(declare-fun res!3120228 () Bool)

(assert (=> b!7845871 (=> (not res!3120228) (not e!4638461))))

(assert (=> b!7845871 (= res!3120228 (matchR!10497 r2!6165 s2!3706))))

(declare-fun b!7845872 () Bool)

(declare-fun tp!2322993 () Bool)

(declare-fun tp!2322994 () Bool)

(assert (=> b!7845872 (= e!4638456 (and tp!2322993 tp!2322994))))

(declare-fun b!7845873 () Bool)

(declare-fun res!3120230 () Bool)

(assert (=> b!7845873 (=> (not res!3120230) (not e!4638461))))

(get-info :version)

(assert (=> b!7845873 (= res!3120230 ((_ is Cons!73796) s1!4084))))

(declare-fun b!7845874 () Bool)

(declare-fun res!3120232 () Bool)

(assert (=> b!7845874 (=> (not res!3120232) (not e!4638461))))

(assert (=> b!7845874 (= res!3120232 (matchR!10497 r1!6227 s1!4084))))

(declare-fun b!7845875 () Bool)

(assert (=> b!7845875 (= e!4638456 tp_is_empty!52521)))

(declare-fun b!7845876 () Bool)

(declare-fun tp!2323004 () Bool)

(assert (=> b!7845876 (= e!4638458 (and tp_is_empty!52521 tp!2323004))))

(declare-fun b!7845877 () Bool)

(declare-fun res!3120229 () Bool)

(assert (=> b!7845877 (=> (not res!3120229) (not e!4638461))))

(assert (=> b!7845877 (= res!3120229 (validRegex!11471 r2!6165))))

(declare-fun b!7845878 () Bool)

(declare-fun tp!2323000 () Bool)

(assert (=> b!7845878 (= e!4638456 tp!2323000)))

(assert (= (and start!742978 res!3120227) b!7845877))

(assert (= (and b!7845877 res!3120229) b!7845874))

(assert (= (and b!7845874 res!3120232) b!7845871))

(assert (= (and b!7845871 res!3120228) b!7845873))

(assert (= (and b!7845873 res!3120230) b!7845864))

(assert (= (and b!7845864 (not res!3120231)) b!7845868))

(assert (= (and start!742978 ((_ is ElementMatch!21061) r1!6227)) b!7845863))

(assert (= (and start!742978 ((_ is Concat!29906) r1!6227)) b!7845867))

(assert (= (and start!742978 ((_ is Star!21061) r1!6227)) b!7845870))

(assert (= (and start!742978 ((_ is Union!21061) r1!6227)) b!7845869))

(assert (= (and start!742978 ((_ is ElementMatch!21061) r2!6165)) b!7845875))

(assert (= (and start!742978 ((_ is Concat!29906) r2!6165)) b!7845866))

(assert (= (and start!742978 ((_ is Star!21061) r2!6165)) b!7845878))

(assert (= (and start!742978 ((_ is Union!21061) r2!6165)) b!7845872))

(assert (= (and start!742978 ((_ is Cons!73796) s1!4084)) b!7845865))

(assert (= (and start!742978 ((_ is Cons!73796) s2!3706)) b!7845876))

(declare-fun m!8255862 () Bool)

(assert (=> b!7845868 m!8255862))

(declare-fun m!8255864 () Bool)

(assert (=> b!7845868 m!8255864))

(declare-fun m!8255866 () Bool)

(assert (=> b!7845877 m!8255866))

(declare-fun m!8255868 () Bool)

(assert (=> b!7845864 m!8255868))

(declare-fun m!8255870 () Bool)

(assert (=> b!7845864 m!8255870))

(declare-fun m!8255872 () Bool)

(assert (=> b!7845864 m!8255872))

(declare-fun m!8255874 () Bool)

(assert (=> b!7845864 m!8255874))

(declare-fun m!8255876 () Bool)

(assert (=> b!7845864 m!8255876))

(assert (=> b!7845864 m!8255872))

(declare-fun m!8255878 () Bool)

(assert (=> b!7845874 m!8255878))

(declare-fun m!8255880 () Bool)

(assert (=> start!742978 m!8255880))

(declare-fun m!8255882 () Bool)

(assert (=> b!7845871 m!8255882))

(check-sat (not b!7845877) (not b!7845865) (not b!7845878) tp_is_empty!52521 (not b!7845872) (not start!742978) (not b!7845874) (not b!7845868) (not b!7845867) (not b!7845864) (not b!7845871) (not b!7845866) (not b!7845876) (not b!7845870) (not b!7845869))
(check-sat)
