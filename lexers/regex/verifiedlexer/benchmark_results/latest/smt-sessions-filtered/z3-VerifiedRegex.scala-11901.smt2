; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667430 () Bool)

(assert start!667430)

(declare-fun b!6954847 () Bool)

(assert (=> b!6954847 true))

(assert (=> b!6954847 true))

(declare-fun b!6954846 () Bool)

(declare-fun e!4182281 () Bool)

(declare-fun tp!1917331 () Bool)

(declare-fun tp!1917330 () Bool)

(assert (=> b!6954846 (= e!4182281 (and tp!1917331 tp!1917330))))

(declare-fun res!2837705 () Bool)

(declare-fun e!4182280 () Bool)

(assert (=> b!6954847 (=> (not res!2837705) (not e!4182280))))

(declare-fun lambda!396712 () Int)

(declare-fun Exists!4045 (Int) Bool)

(assert (=> b!6954847 (= res!2837705 (not (Exists!4045 lambda!396712)))))

(declare-fun res!2837704 () Bool)

(assert (=> start!667430 (=> (not res!2837704) (not e!4182280))))

(declare-datatypes ((C!34368 0))(
  ( (C!34369 (val!26886 Int)) )
))
(declare-datatypes ((Regex!17049 0))(
  ( (ElementMatch!17049 (c!1289789 C!34368)) (Concat!25894 (regOne!34610 Regex!17049) (regTwo!34610 Regex!17049)) (EmptyExpr!17049) (Star!17049 (reg!17378 Regex!17049)) (EmptyLang!17049) (Union!17049 (regOne!34611 Regex!17049) (regTwo!34611 Regex!17049)) )
))
(declare-fun rInner!765 () Regex!17049)

(declare-fun validRegex!8755 (Regex!17049) Bool)

(assert (=> start!667430 (= res!2837704 (validRegex!8755 rInner!765))))

(assert (=> start!667430 e!4182280))

(assert (=> start!667430 e!4182281))

(declare-fun e!4182282 () Bool)

(assert (=> start!667430 e!4182282))

(declare-fun b!6954848 () Bool)

(declare-fun res!2837706 () Bool)

(assert (=> b!6954848 (=> (not res!2837706) (not e!4182280))))

(declare-fun nullable!6862 (Regex!17049) Bool)

(assert (=> b!6954848 (= res!2837706 (not (nullable!6862 rInner!765)))))

(declare-fun b!6954849 () Bool)

(declare-fun tp_is_empty!43323 () Bool)

(assert (=> b!6954849 (= e!4182281 tp_is_empty!43323)))

(declare-fun b!6954850 () Bool)

(declare-fun tp!1917329 () Bool)

(assert (=> b!6954850 (= e!4182282 (and tp_is_empty!43323 tp!1917329))))

(declare-fun b!6954851 () Bool)

(assert (=> b!6954851 (= e!4182280 (Exists!4045 lambda!396712))))

(declare-fun b!6954852 () Bool)

(declare-fun tp!1917332 () Bool)

(declare-fun tp!1917328 () Bool)

(assert (=> b!6954852 (= e!4182281 (and tp!1917332 tp!1917328))))

(declare-fun b!6954853 () Bool)

(declare-fun tp!1917333 () Bool)

(assert (=> b!6954853 (= e!4182281 tp!1917333)))

(assert (= (and start!667430 res!2837704) b!6954848))

(assert (= (and b!6954848 res!2837706) b!6954847))

(assert (= (and b!6954847 res!2837705) b!6954851))

(get-info :version)

(assert (= (and start!667430 ((_ is ElementMatch!17049) rInner!765)) b!6954849))

(assert (= (and start!667430 ((_ is Concat!25894) rInner!765)) b!6954852))

(assert (= (and start!667430 ((_ is Star!17049) rInner!765)) b!6954853))

(assert (= (and start!667430 ((_ is Union!17049) rInner!765)) b!6954846))

(declare-datatypes ((List!66802 0))(
  ( (Nil!66678) (Cons!66678 (h!73126 C!34368) (t!380545 List!66802)) )
))
(declare-fun s!10388 () List!66802)

(assert (= (and start!667430 ((_ is Cons!66678) s!10388)) b!6954850))

(declare-fun m!7653810 () Bool)

(assert (=> b!6954847 m!7653810))

(declare-fun m!7653812 () Bool)

(assert (=> start!667430 m!7653812))

(declare-fun m!7653814 () Bool)

(assert (=> b!6954848 m!7653814))

(assert (=> b!6954851 m!7653810))

(check-sat (not b!6954847) tp_is_empty!43323 (not b!6954852) (not start!667430) (not b!6954853) (not b!6954851) (not b!6954846) (not b!6954848) (not b!6954850))
(check-sat)
