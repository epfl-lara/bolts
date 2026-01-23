; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736778 () Bool)

(assert start!736778)

(declare-fun b!7693895 () Bool)

(assert (=> b!7693895 true))

(assert (=> b!7693895 true))

(declare-fun b!7693894 () Bool)

(declare-fun e!4566869 () Bool)

(declare-fun tp_is_empty!51375 () Bool)

(declare-fun tp!2253867 () Bool)

(assert (=> b!7693894 (= e!4566869 (and tp_is_empty!51375 tp!2253867))))

(declare-fun e!4566867 () Bool)

(declare-fun e!4566866 () Bool)

(assert (=> b!7693895 (= e!4566867 (not e!4566866))))

(declare-fun res!3073346 () Bool)

(assert (=> b!7693895 (=> res!3073346 e!4566866)))

(declare-fun lt!2664166 () Bool)

(assert (=> b!7693895 (= res!3073346 lt!2664166)))

(declare-fun lambda!470438 () Int)

(declare-fun Exists!4635 (Int) Bool)

(assert (=> b!7693895 (= lt!2664166 (Exists!4635 lambda!470438))))

(declare-datatypes ((C!41346 0))(
  ( (C!41347 (val!31113 Int)) )
))
(declare-datatypes ((Regex!20510 0))(
  ( (ElementMatch!20510 (c!1417979 C!41346)) (Concat!29355 (regOne!41532 Regex!20510) (regTwo!41532 Regex!20510)) (EmptyExpr!20510) (Star!20510 (reg!20839 Regex!20510)) (EmptyLang!20510) (Union!20510 (regOne!41533 Regex!20510) (regTwo!41533 Regex!20510)) )
))
(declare-fun r!14126 () Regex!20510)

(declare-datatypes ((List!73361 0))(
  ( (Nil!73237) (Cons!73237 (h!79685 C!41346) (t!388096 List!73361)) )
))
(declare-fun s!9605 () List!73361)

(declare-datatypes ((tuple2!69482 0))(
  ( (tuple2!69483 (_1!38044 List!73361) (_2!38044 List!73361)) )
))
(declare-datatypes ((Option!17535 0))(
  ( (None!17534) (Some!17534 (v!54669 tuple2!69482)) )
))
(declare-fun isDefined!14151 (Option!17535) Bool)

(declare-fun findConcatSeparation!3565 (Regex!20510 Regex!20510 List!73361 List!73361 List!73361) Option!17535)

(assert (=> b!7693895 (= lt!2664166 (isDefined!14151 (findConcatSeparation!3565 (reg!20839 r!14126) r!14126 Nil!73237 s!9605 s!9605)))))

(declare-datatypes ((Unit!168052 0))(
  ( (Unit!168053) )
))
(declare-fun lt!2664165 () Unit!168052)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3323 (Regex!20510 Regex!20510 List!73361) Unit!168052)

(assert (=> b!7693895 (= lt!2664165 (lemmaFindConcatSeparationEquivalentToExists!3323 (reg!20839 r!14126) r!14126 s!9605))))

(declare-fun b!7693896 () Bool)

(declare-fun e!4566868 () Bool)

(assert (=> b!7693896 (= e!4566868 tp_is_empty!51375)))

(declare-fun b!7693897 () Bool)

(declare-fun res!3073344 () Bool)

(assert (=> b!7693897 (=> (not res!3073344) (not e!4566867))))

(declare-fun isEmpty!41882 (List!73361) Bool)

(assert (=> b!7693897 (= res!3073344 (not (isEmpty!41882 s!9605)))))

(declare-fun b!7693898 () Bool)

(declare-fun res!3073343 () Bool)

(assert (=> b!7693898 (=> (not res!3073343) (not e!4566867))))

(assert (=> b!7693898 (= res!3073343 (and (not (is-EmptyExpr!20510 r!14126)) (not (is-EmptyLang!20510 r!14126)) (not (is-ElementMatch!20510 r!14126)) (not (is-Union!20510 r!14126)) (is-Star!20510 r!14126)))))

(declare-fun b!7693899 () Bool)

(declare-fun res!3073347 () Bool)

(assert (=> b!7693899 (=> res!3073347 e!4566866)))

(declare-fun matchR!10006 (Regex!20510 List!73361) Bool)

(assert (=> b!7693899 (= res!3073347 (not (matchR!10006 r!14126 s!9605)))))

(declare-fun res!3073345 () Bool)

(assert (=> start!736778 (=> (not res!3073345) (not e!4566867))))

(declare-fun validRegex!10928 (Regex!20510) Bool)

(assert (=> start!736778 (= res!3073345 (validRegex!10928 r!14126))))

(assert (=> start!736778 e!4566867))

(assert (=> start!736778 e!4566868))

(assert (=> start!736778 e!4566869))

(declare-fun b!7693900 () Bool)

(declare-fun tp!2253869 () Bool)

(assert (=> b!7693900 (= e!4566868 tp!2253869)))

(declare-fun b!7693901 () Bool)

(declare-fun tp!2253866 () Bool)

(declare-fun tp!2253871 () Bool)

(assert (=> b!7693901 (= e!4566868 (and tp!2253866 tp!2253871))))

(declare-fun b!7693902 () Bool)

(declare-fun tp!2253870 () Bool)

(declare-fun tp!2253868 () Bool)

(assert (=> b!7693902 (= e!4566868 (and tp!2253870 tp!2253868))))

(declare-fun b!7693903 () Bool)

(assert (=> b!7693903 (= e!4566866 (validRegex!10928 r!14126))))

(assert (= (and start!736778 res!3073345) b!7693898))

(assert (= (and b!7693898 res!3073343) b!7693897))

(assert (= (and b!7693897 res!3073344) b!7693895))

(assert (= (and b!7693895 (not res!3073346)) b!7693899))

(assert (= (and b!7693899 (not res!3073347)) b!7693903))

(assert (= (and start!736778 (is-ElementMatch!20510 r!14126)) b!7693896))

(assert (= (and start!736778 (is-Concat!29355 r!14126)) b!7693901))

(assert (= (and start!736778 (is-Star!20510 r!14126)) b!7693900))

(assert (= (and start!736778 (is-Union!20510 r!14126)) b!7693902))

(assert (= (and start!736778 (is-Cons!73237 s!9605)) b!7693894))

(declare-fun m!8187274 () Bool)

(assert (=> start!736778 m!8187274))

(declare-fun m!8187276 () Bool)

(assert (=> b!7693895 m!8187276))

(declare-fun m!8187278 () Bool)

(assert (=> b!7693895 m!8187278))

(assert (=> b!7693895 m!8187278))

(declare-fun m!8187280 () Bool)

(assert (=> b!7693895 m!8187280))

(declare-fun m!8187282 () Bool)

(assert (=> b!7693895 m!8187282))

(declare-fun m!8187284 () Bool)

(assert (=> b!7693897 m!8187284))

(assert (=> b!7693903 m!8187274))

(declare-fun m!8187286 () Bool)

(assert (=> b!7693899 m!8187286))

(push 1)

(assert (not start!736778))

(assert tp_is_empty!51375)

(assert (not b!7693894))

(assert (not b!7693900))

(assert (not b!7693902))

(assert (not b!7693897))

(assert (not b!7693903))

(assert (not b!7693895))

(assert (not b!7693901))

(assert (not b!7693899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

