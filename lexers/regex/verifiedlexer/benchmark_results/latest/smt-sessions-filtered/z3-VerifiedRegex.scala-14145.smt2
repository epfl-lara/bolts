; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742982 () Bool)

(assert start!742982)

(declare-fun b!7845964 () Bool)

(declare-fun e!4638493 () Bool)

(declare-fun tp!2323074 () Bool)

(declare-fun tp!2323065 () Bool)

(assert (=> b!7845964 (= e!4638493 (and tp!2323074 tp!2323065))))

(declare-fun b!7845965 () Bool)

(declare-fun e!4638497 () Bool)

(declare-fun tp_is_empty!52525 () Bool)

(assert (=> b!7845965 (= e!4638497 tp_is_empty!52525)))

(declare-fun b!7845966 () Bool)

(declare-fun res!3120269 () Bool)

(declare-fun e!4638492 () Bool)

(assert (=> b!7845966 (=> (not res!3120269) (not e!4638492))))

(declare-datatypes ((C!42452 0))(
  ( (C!42453 (val!31688 Int)) )
))
(declare-datatypes ((Regex!21063 0))(
  ( (ElementMatch!21063 (c!1442157 C!42452)) (Concat!29908 (regOne!42638 Regex!21063) (regTwo!42638 Regex!21063)) (EmptyExpr!21063) (Star!21063 (reg!21392 Regex!21063)) (EmptyLang!21063) (Union!21063 (regOne!42639 Regex!21063) (regTwo!42639 Regex!21063)) )
))
(declare-fun r2!6165 () Regex!21063)

(declare-fun validRegex!11473 (Regex!21063) Bool)

(assert (=> b!7845966 (= res!3120269 (validRegex!11473 r2!6165))))

(declare-fun b!7845967 () Bool)

(assert (=> b!7845967 (= e!4638493 tp_is_empty!52525)))

(declare-fun b!7845968 () Bool)

(declare-fun tp!2323075 () Bool)

(declare-fun tp!2323073 () Bool)

(assert (=> b!7845968 (= e!4638493 (and tp!2323075 tp!2323073))))

(declare-fun res!3120273 () Bool)

(assert (=> start!742982 (=> (not res!3120273) (not e!4638492))))

(declare-fun r1!6227 () Regex!21063)

(assert (=> start!742982 (= res!3120273 (validRegex!11473 r1!6227))))

(assert (=> start!742982 e!4638492))

(assert (=> start!742982 e!4638497))

(assert (=> start!742982 e!4638493))

(declare-fun e!4638496 () Bool)

(assert (=> start!742982 e!4638496))

(declare-fun e!4638495 () Bool)

(assert (=> start!742982 e!4638495))

(declare-fun b!7845969 () Bool)

(declare-fun e!4638494 () Bool)

(assert (=> b!7845969 (= e!4638494 true)))

(declare-fun b!7845970 () Bool)

(declare-fun tp!2323069 () Bool)

(declare-fun tp!2323076 () Bool)

(assert (=> b!7845970 (= e!4638497 (and tp!2323069 tp!2323076))))

(declare-fun b!7845971 () Bool)

(declare-fun res!3120268 () Bool)

(assert (=> b!7845971 (=> (not res!3120268) (not e!4638492))))

(declare-datatypes ((List!73922 0))(
  ( (Nil!73798) (Cons!73798 (h!80246 C!42452) (t!388657 List!73922)) )
))
(declare-fun s2!3706 () List!73922)

(declare-fun matchR!10499 (Regex!21063 List!73922) Bool)

(assert (=> b!7845971 (= res!3120268 (matchR!10499 r2!6165 s2!3706))))

(declare-fun b!7845972 () Bool)

(declare-fun tp!2323068 () Bool)

(assert (=> b!7845972 (= e!4638497 tp!2323068)))

(declare-fun b!7845973 () Bool)

(declare-fun res!3120272 () Bool)

(assert (=> b!7845973 (=> (not res!3120272) (not e!4638492))))

(declare-fun s1!4084 () List!73922)

(assert (=> b!7845973 (= res!3120272 (matchR!10499 r1!6227 s1!4084))))

(declare-fun b!7845974 () Bool)

(assert (=> b!7845974 (= e!4638492 (not e!4638494))))

(declare-fun res!3120271 () Bool)

(assert (=> b!7845974 (=> res!3120271 e!4638494)))

(declare-fun nullable!9337 (Regex!21063) Bool)

(assert (=> b!7845974 (= res!3120271 (not (nullable!9337 r1!6227)))))

(declare-fun lt!2679143 () Regex!21063)

(declare-fun ++!18073 (List!73922 List!73922) List!73922)

(assert (=> b!7845974 (matchR!10499 lt!2679143 (++!18073 (t!388657 s1!4084) s2!3706))))

(declare-fun lt!2679141 () Regex!21063)

(assert (=> b!7845974 (= lt!2679143 (Concat!29908 lt!2679141 r2!6165))))

(declare-datatypes ((Unit!168872 0))(
  ( (Unit!168873) )
))
(declare-fun lt!2679142 () Unit!168872)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!434 (Regex!21063 Regex!21063 List!73922 List!73922) Unit!168872)

(assert (=> b!7845974 (= lt!2679142 (lemmaTwoRegexMatchThenConcatMatchesConcatString!434 lt!2679141 r2!6165 (t!388657 s1!4084) s2!3706))))

(declare-fun derivativeStep!6300 (Regex!21063 C!42452) Regex!21063)

(assert (=> b!7845974 (= lt!2679141 (derivativeStep!6300 r1!6227 (h!80246 s1!4084)))))

(declare-fun b!7845975 () Bool)

(declare-fun tp!2323067 () Bool)

(assert (=> b!7845975 (= e!4638493 tp!2323067)))

(declare-fun b!7845976 () Bool)

(declare-fun res!3120270 () Bool)

(assert (=> b!7845976 (=> (not res!3120270) (not e!4638492))))

(get-info :version)

(assert (=> b!7845976 (= res!3120270 ((_ is Cons!73798) s1!4084))))

(declare-fun b!7845977 () Bool)

(declare-fun res!3120274 () Bool)

(assert (=> b!7845977 (=> res!3120274 e!4638494)))

(assert (=> b!7845977 (= res!3120274 (not (= (derivativeStep!6300 (Concat!29908 r1!6227 r2!6165) (h!80246 s1!4084)) (Union!21063 lt!2679143 (derivativeStep!6300 r2!6165 (h!80246 s1!4084))))))))

(declare-fun b!7845978 () Bool)

(declare-fun tp!2323072 () Bool)

(assert (=> b!7845978 (= e!4638496 (and tp_is_empty!52525 tp!2323072))))

(declare-fun b!7845979 () Bool)

(declare-fun tp!2323071 () Bool)

(declare-fun tp!2323066 () Bool)

(assert (=> b!7845979 (= e!4638497 (and tp!2323071 tp!2323066))))

(declare-fun b!7845980 () Bool)

(declare-fun tp!2323070 () Bool)

(assert (=> b!7845980 (= e!4638495 (and tp_is_empty!52525 tp!2323070))))

(assert (= (and start!742982 res!3120273) b!7845966))

(assert (= (and b!7845966 res!3120269) b!7845973))

(assert (= (and b!7845973 res!3120272) b!7845971))

(assert (= (and b!7845971 res!3120268) b!7845976))

(assert (= (and b!7845976 res!3120270) b!7845974))

(assert (= (and b!7845974 (not res!3120271)) b!7845977))

(assert (= (and b!7845977 (not res!3120274)) b!7845969))

(assert (= (and start!742982 ((_ is ElementMatch!21063) r1!6227)) b!7845965))

(assert (= (and start!742982 ((_ is Concat!29908) r1!6227)) b!7845979))

(assert (= (and start!742982 ((_ is Star!21063) r1!6227)) b!7845972))

(assert (= (and start!742982 ((_ is Union!21063) r1!6227)) b!7845970))

(assert (= (and start!742982 ((_ is ElementMatch!21063) r2!6165)) b!7845967))

(assert (= (and start!742982 ((_ is Concat!29908) r2!6165)) b!7845968))

(assert (= (and start!742982 ((_ is Star!21063) r2!6165)) b!7845975))

(assert (= (and start!742982 ((_ is Union!21063) r2!6165)) b!7845964))

(assert (= (and start!742982 ((_ is Cons!73798) s1!4084)) b!7845978))

(assert (= (and start!742982 ((_ is Cons!73798) s2!3706)) b!7845980))

(declare-fun m!8255906 () Bool)

(assert (=> b!7845974 m!8255906))

(declare-fun m!8255908 () Bool)

(assert (=> b!7845974 m!8255908))

(declare-fun m!8255910 () Bool)

(assert (=> b!7845974 m!8255910))

(declare-fun m!8255912 () Bool)

(assert (=> b!7845974 m!8255912))

(declare-fun m!8255914 () Bool)

(assert (=> b!7845974 m!8255914))

(assert (=> b!7845974 m!8255908))

(declare-fun m!8255916 () Bool)

(assert (=> start!742982 m!8255916))

(declare-fun m!8255918 () Bool)

(assert (=> b!7845973 m!8255918))

(declare-fun m!8255920 () Bool)

(assert (=> b!7845977 m!8255920))

(declare-fun m!8255922 () Bool)

(assert (=> b!7845977 m!8255922))

(declare-fun m!8255924 () Bool)

(assert (=> b!7845971 m!8255924))

(declare-fun m!8255926 () Bool)

(assert (=> b!7845966 m!8255926))

(check-sat (not b!7845966) (not b!7845970) (not b!7845973) (not b!7845977) (not b!7845971) (not b!7845979) (not b!7845972) (not b!7845980) (not b!7845964) (not b!7845974) (not b!7845968) tp_is_empty!52525 (not start!742982) (not b!7845978) (not b!7845975))
(check-sat)
