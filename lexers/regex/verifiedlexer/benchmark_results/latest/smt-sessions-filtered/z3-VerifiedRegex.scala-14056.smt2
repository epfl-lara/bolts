; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741774 () Bool)

(assert start!741774)

(declare-fun b!7810919 () Bool)

(declare-fun e!4622989 () Bool)

(declare-fun tp!2301828 () Bool)

(declare-fun tp!2301837 () Bool)

(assert (=> b!7810919 (= e!4622989 (and tp!2301828 tp!2301837))))

(declare-fun b!7810920 () Bool)

(declare-fun res!3110508 () Bool)

(declare-fun e!4622988 () Bool)

(assert (=> b!7810920 (=> (not res!3110508) (not e!4622988))))

(declare-datatypes ((C!42140 0))(
  ( (C!42141 (val!31510 Int)) )
))
(declare-datatypes ((List!73744 0))(
  ( (Nil!73620) (Cons!73620 (h!80068 C!42140) (t!388479 List!73744)) )
))
(declare-fun s!14225 () List!73744)

(declare-datatypes ((Regex!20907 0))(
  ( (ElementMatch!20907 (c!1438214 C!42140)) (Concat!29752 (regOne!42326 Regex!20907) (regTwo!42326 Regex!20907)) (EmptyExpr!20907) (Star!20907 (reg!21236 Regex!20907)) (EmptyLang!20907) (Union!20907 (regOne!42327 Regex!20907) (regTwo!42327 Regex!20907)) )
))
(declare-fun r2!6144 () Regex!20907)

(declare-fun r1!6206 () Regex!20907)

(declare-fun matchR!10365 (Regex!20907 List!73744) Bool)

(assert (=> b!7810920 (= res!3110508 (matchR!10365 (Union!20907 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810921 () Bool)

(declare-fun e!4622986 () Bool)

(declare-fun tp_is_empty!52169 () Bool)

(assert (=> b!7810921 (= e!4622986 tp_is_empty!52169)))

(declare-fun b!7810922 () Bool)

(declare-fun e!4622987 () Bool)

(declare-fun tp!2301834 () Bool)

(assert (=> b!7810922 (= e!4622987 (and tp_is_empty!52169 tp!2301834))))

(declare-fun b!7810923 () Bool)

(declare-fun tp!2301835 () Bool)

(declare-fun tp!2301833 () Bool)

(assert (=> b!7810923 (= e!4622986 (and tp!2301835 tp!2301833))))

(declare-fun b!7810924 () Bool)

(declare-fun tp!2301827 () Bool)

(assert (=> b!7810924 (= e!4622989 tp!2301827)))

(declare-fun b!7810925 () Bool)

(declare-fun res!3110505 () Bool)

(assert (=> b!7810925 (=> (not res!3110505) (not e!4622988))))

(get-info :version)

(assert (=> b!7810925 (= res!3110505 (not ((_ is Cons!73620) s!14225)))))

(declare-fun res!3110507 () Bool)

(assert (=> start!741774 (=> (not res!3110507) (not e!4622988))))

(declare-fun validRegex!11321 (Regex!20907) Bool)

(assert (=> start!741774 (= res!3110507 (validRegex!11321 r1!6206))))

(assert (=> start!741774 e!4622988))

(assert (=> start!741774 e!4622986))

(assert (=> start!741774 e!4622989))

(assert (=> start!741774 e!4622987))

(declare-fun b!7810926 () Bool)

(assert (=> b!7810926 (= e!4622989 tp_is_empty!52169)))

(declare-fun b!7810927 () Bool)

(assert (=> b!7810927 (= e!4622988 false)))

(declare-fun lt!2675848 () Bool)

(assert (=> b!7810927 (= lt!2675848 (matchR!10365 r1!6206 s!14225))))

(declare-fun b!7810928 () Bool)

(declare-fun tp!2301836 () Bool)

(declare-fun tp!2301829 () Bool)

(assert (=> b!7810928 (= e!4622986 (and tp!2301836 tp!2301829))))

(declare-fun b!7810929 () Bool)

(declare-fun tp!2301832 () Bool)

(assert (=> b!7810929 (= e!4622986 tp!2301832)))

(declare-fun b!7810930 () Bool)

(declare-fun res!3110506 () Bool)

(assert (=> b!7810930 (=> (not res!3110506) (not e!4622988))))

(assert (=> b!7810930 (= res!3110506 (validRegex!11321 r2!6144))))

(declare-fun b!7810931 () Bool)

(declare-fun tp!2301831 () Bool)

(declare-fun tp!2301830 () Bool)

(assert (=> b!7810931 (= e!4622989 (and tp!2301831 tp!2301830))))

(assert (= (and start!741774 res!3110507) b!7810930))

(assert (= (and b!7810930 res!3110506) b!7810920))

(assert (= (and b!7810920 res!3110508) b!7810925))

(assert (= (and b!7810925 res!3110505) b!7810927))

(assert (= (and start!741774 ((_ is ElementMatch!20907) r1!6206)) b!7810921))

(assert (= (and start!741774 ((_ is Concat!29752) r1!6206)) b!7810928))

(assert (= (and start!741774 ((_ is Star!20907) r1!6206)) b!7810929))

(assert (= (and start!741774 ((_ is Union!20907) r1!6206)) b!7810923))

(assert (= (and start!741774 ((_ is ElementMatch!20907) r2!6144)) b!7810926))

(assert (= (and start!741774 ((_ is Concat!29752) r2!6144)) b!7810931))

(assert (= (and start!741774 ((_ is Star!20907) r2!6144)) b!7810924))

(assert (= (and start!741774 ((_ is Union!20907) r2!6144)) b!7810919))

(assert (= (and start!741774 ((_ is Cons!73620) s!14225)) b!7810922))

(declare-fun m!8241930 () Bool)

(assert (=> b!7810920 m!8241930))

(declare-fun m!8241932 () Bool)

(assert (=> start!741774 m!8241932))

(declare-fun m!8241934 () Bool)

(assert (=> b!7810927 m!8241934))

(declare-fun m!8241936 () Bool)

(assert (=> b!7810930 m!8241936))

(check-sat tp_is_empty!52169 (not b!7810929) (not b!7810930) (not b!7810931) (not b!7810927) (not start!741774) (not b!7810923) (not b!7810928) (not b!7810920) (not b!7810922) (not b!7810924) (not b!7810919))
(check-sat)
