; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663788 () Bool)

(assert start!663788)

(declare-fun b!6879927 () Bool)

(assert (=> b!6879927 true))

(assert (=> b!6879927 true))

(assert (=> b!6879927 true))

(declare-fun b!6879912 () Bool)

(declare-fun e!4146136 () Bool)

(declare-fun e!4146131 () Bool)

(assert (=> b!6879912 (= e!4146136 (not e!4146131))))

(declare-fun res!2804582 () Bool)

(assert (=> b!6879912 (=> res!2804582 e!4146131)))

(declare-fun lt!2459511 () Bool)

(assert (=> b!6879912 (= res!2804582 (not lt!2459511))))

(declare-datatypes ((C!33782 0))(
  ( (C!33783 (val!26593 Int)) )
))
(declare-datatypes ((Regex!16756 0))(
  ( (ElementMatch!16756 (c!1279974 C!33782)) (Concat!25601 (regOne!34024 Regex!16756) (regTwo!34024 Regex!16756)) (EmptyExpr!16756) (Star!16756 (reg!17085 Regex!16756)) (EmptyLang!16756) (Union!16756 (regOne!34025 Regex!16756) (regTwo!34025 Regex!16756)) )
))
(declare-fun lt!2459510 () Regex!16756)

(declare-datatypes ((List!66513 0))(
  ( (Nil!66389) (Cons!66389 (h!72837 C!33782) (t!380256 List!66513)) )
))
(declare-fun s!14361 () List!66513)

(declare-fun matchR!8901 (Regex!16756 List!66513) Bool)

(declare-fun matchRSpec!3819 (Regex!16756 List!66513) Bool)

(assert (=> b!6879912 (= (matchR!8901 lt!2459510 s!14361) (matchRSpec!3819 lt!2459510 s!14361))))

(declare-datatypes ((Unit!160232 0))(
  ( (Unit!160233) )
))
(declare-fun lt!2459513 () Unit!160232)

(declare-fun mainMatchTheorem!3819 (Regex!16756 List!66513) Unit!160232)

(assert (=> b!6879912 (= lt!2459513 (mainMatchTheorem!3819 lt!2459510 s!14361))))

(declare-fun lt!2459512 () Regex!16756)

(assert (=> b!6879912 (= lt!2459511 (matchRSpec!3819 lt!2459512 s!14361))))

(assert (=> b!6879912 (= lt!2459511 (matchR!8901 lt!2459512 s!14361))))

(declare-fun lt!2459509 () Unit!160232)

(assert (=> b!6879912 (= lt!2459509 (mainMatchTheorem!3819 lt!2459512 s!14361))))

(declare-fun r1!6342 () Regex!16756)

(declare-fun r3!135 () Regex!16756)

(declare-fun r2!6280 () Regex!16756)

(assert (=> b!6879912 (= lt!2459510 (Concat!25601 r1!6342 (Concat!25601 r2!6280 r3!135)))))

(declare-fun lt!2459514 () Regex!16756)

(assert (=> b!6879912 (= lt!2459512 (Concat!25601 lt!2459514 r3!135))))

(assert (=> b!6879912 (= lt!2459514 (Concat!25601 r1!6342 r2!6280))))

(declare-fun b!6879913 () Bool)

(declare-fun e!4146135 () Bool)

(declare-fun tp!1891808 () Bool)

(declare-fun tp!1891805 () Bool)

(assert (=> b!6879913 (= e!4146135 (and tp!1891808 tp!1891805))))

(declare-fun b!6879914 () Bool)

(declare-fun tp!1891801 () Bool)

(declare-fun tp!1891800 () Bool)

(assert (=> b!6879914 (= e!4146135 (and tp!1891801 tp!1891800))))

(declare-fun b!6879915 () Bool)

(declare-fun res!2804584 () Bool)

(assert (=> b!6879915 (=> (not res!2804584) (not e!4146136))))

(declare-fun validRegex!8464 (Regex!16756) Bool)

(assert (=> b!6879915 (= res!2804584 (validRegex!8464 r2!6280))))

(declare-fun b!6879917 () Bool)

(declare-fun e!4146133 () Bool)

(declare-fun tp_is_empty!42737 () Bool)

(assert (=> b!6879917 (= e!4146133 tp_is_empty!42737)))

(declare-fun b!6879918 () Bool)

(declare-fun e!4146132 () Bool)

(declare-fun tp!1891813 () Bool)

(declare-fun tp!1891809 () Bool)

(assert (=> b!6879918 (= e!4146132 (and tp!1891813 tp!1891809))))

(declare-fun b!6879919 () Bool)

(assert (=> b!6879919 (= e!4146132 tp_is_empty!42737)))

(declare-fun b!6879920 () Bool)

(declare-fun tp!1891804 () Bool)

(declare-fun tp!1891812 () Bool)

(assert (=> b!6879920 (= e!4146132 (and tp!1891804 tp!1891812))))

(declare-fun b!6879921 () Bool)

(assert (=> b!6879921 (= e!4146135 tp_is_empty!42737)))

(declare-fun b!6879922 () Bool)

(declare-fun tp!1891803 () Bool)

(declare-fun tp!1891810 () Bool)

(assert (=> b!6879922 (= e!4146133 (and tp!1891803 tp!1891810))))

(declare-fun b!6879923 () Bool)

(declare-fun tp!1891806 () Bool)

(assert (=> b!6879923 (= e!4146133 tp!1891806)))

(declare-fun b!6879924 () Bool)

(declare-fun e!4146134 () Bool)

(declare-fun tp!1891802 () Bool)

(assert (=> b!6879924 (= e!4146134 (and tp_is_empty!42737 tp!1891802))))

(declare-fun b!6879925 () Bool)

(declare-fun tp!1891815 () Bool)

(assert (=> b!6879925 (= e!4146132 tp!1891815)))

(declare-fun b!6879926 () Bool)

(declare-fun tp!1891811 () Bool)

(declare-fun tp!1891814 () Bool)

(assert (=> b!6879926 (= e!4146133 (and tp!1891811 tp!1891814))))

(assert (=> b!6879927 (= e!4146131 true)))

(declare-fun lambda!389389 () Int)

(declare-datatypes ((tuple2!67258 0))(
  ( (tuple2!67259 (_1!36932 List!66513) (_2!36932 List!66513)) )
))
(declare-datatypes ((Option!16541 0))(
  ( (None!16540) (Some!16540 (v!52812 tuple2!67258)) )
))
(declare-fun isDefined!13244 (Option!16541) Bool)

(declare-fun findConcatSeparation!2955 (Regex!16756 Regex!16756 List!66513 List!66513 List!66513) Option!16541)

(declare-fun Exists!3768 (Int) Bool)

(assert (=> b!6879927 (= (isDefined!13244 (findConcatSeparation!2955 lt!2459514 r3!135 Nil!66389 s!14361 s!14361)) (Exists!3768 lambda!389389))))

(declare-fun lt!2459508 () Unit!160232)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2719 (Regex!16756 Regex!16756 List!66513) Unit!160232)

(assert (=> b!6879927 (= lt!2459508 (lemmaFindConcatSeparationEquivalentToExists!2719 lt!2459514 r3!135 s!14361))))

(declare-fun b!6879928 () Bool)

(declare-fun res!2804583 () Bool)

(assert (=> b!6879928 (=> (not res!2804583) (not e!4146136))))

(assert (=> b!6879928 (= res!2804583 (validRegex!8464 r3!135))))

(declare-fun res!2804581 () Bool)

(assert (=> start!663788 (=> (not res!2804581) (not e!4146136))))

(assert (=> start!663788 (= res!2804581 (validRegex!8464 r1!6342))))

(assert (=> start!663788 e!4146136))

(assert (=> start!663788 e!4146133))

(assert (=> start!663788 e!4146132))

(assert (=> start!663788 e!4146135))

(assert (=> start!663788 e!4146134))

(declare-fun b!6879916 () Bool)

(declare-fun tp!1891807 () Bool)

(assert (=> b!6879916 (= e!4146135 tp!1891807)))

(assert (= (and start!663788 res!2804581) b!6879915))

(assert (= (and b!6879915 res!2804584) b!6879928))

(assert (= (and b!6879928 res!2804583) b!6879912))

(assert (= (and b!6879912 (not res!2804582)) b!6879927))

(assert (= (and start!663788 (is-ElementMatch!16756 r1!6342)) b!6879917))

(assert (= (and start!663788 (is-Concat!25601 r1!6342)) b!6879926))

(assert (= (and start!663788 (is-Star!16756 r1!6342)) b!6879923))

(assert (= (and start!663788 (is-Union!16756 r1!6342)) b!6879922))

(assert (= (and start!663788 (is-ElementMatch!16756 r2!6280)) b!6879919))

(assert (= (and start!663788 (is-Concat!25601 r2!6280)) b!6879920))

(assert (= (and start!663788 (is-Star!16756 r2!6280)) b!6879925))

(assert (= (and start!663788 (is-Union!16756 r2!6280)) b!6879918))

(assert (= (and start!663788 (is-ElementMatch!16756 r3!135)) b!6879921))

(assert (= (and start!663788 (is-Concat!25601 r3!135)) b!6879914))

(assert (= (and start!663788 (is-Star!16756 r3!135)) b!6879916))

(assert (= (and start!663788 (is-Union!16756 r3!135)) b!6879913))

(assert (= (and start!663788 (is-Cons!66389 s!14361)) b!6879924))

(declare-fun m!7605880 () Bool)

(assert (=> b!6879928 m!7605880))

(declare-fun m!7605882 () Bool)

(assert (=> b!6879912 m!7605882))

(declare-fun m!7605884 () Bool)

(assert (=> b!6879912 m!7605884))

(declare-fun m!7605886 () Bool)

(assert (=> b!6879912 m!7605886))

(declare-fun m!7605888 () Bool)

(assert (=> b!6879912 m!7605888))

(declare-fun m!7605890 () Bool)

(assert (=> b!6879912 m!7605890))

(declare-fun m!7605892 () Bool)

(assert (=> b!6879912 m!7605892))

(declare-fun m!7605894 () Bool)

(assert (=> b!6879915 m!7605894))

(declare-fun m!7605896 () Bool)

(assert (=> b!6879927 m!7605896))

(assert (=> b!6879927 m!7605896))

(declare-fun m!7605898 () Bool)

(assert (=> b!6879927 m!7605898))

(declare-fun m!7605900 () Bool)

(assert (=> b!6879927 m!7605900))

(declare-fun m!7605902 () Bool)

(assert (=> b!6879927 m!7605902))

(declare-fun m!7605904 () Bool)

(assert (=> start!663788 m!7605904))

(push 1)

(assert (not b!6879913))

(assert (not b!6879914))

(assert tp_is_empty!42737)

(assert (not b!6879922))

(assert (not b!6879923))

(assert (not b!6879926))

(assert (not b!6879928))

(assert (not b!6879925))

(assert (not b!6879924))

(assert (not b!6879915))

(assert (not b!6879912))

(assert (not b!6879918))

(assert (not start!663788))

(assert (not b!6879927))

(assert (not b!6879920))

(assert (not b!6879916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

