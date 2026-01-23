; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736782 () Bool)

(assert start!736782)

(declare-fun b!7693976 () Bool)

(assert (=> b!7693976 true))

(assert (=> b!7693976 true))

(declare-fun b!7693972 () Bool)

(declare-fun e!4566896 () Bool)

(declare-fun tp!2253905 () Bool)

(assert (=> b!7693972 (= e!4566896 tp!2253905)))

(declare-fun b!7693973 () Bool)

(declare-fun e!4566894 () Bool)

(declare-datatypes ((C!41350 0))(
  ( (C!41351 (val!31115 Int)) )
))
(declare-datatypes ((Regex!20512 0))(
  ( (ElementMatch!20512 (c!1417981 C!41350)) (Concat!29357 (regOne!41536 Regex!20512) (regTwo!41536 Regex!20512)) (EmptyExpr!20512) (Star!20512 (reg!20841 Regex!20512)) (EmptyLang!20512) (Union!20512 (regOne!41537 Regex!20512) (regTwo!41537 Regex!20512)) )
))
(declare-fun r!14126 () Regex!20512)

(declare-datatypes ((List!73363 0))(
  ( (Nil!73239) (Cons!73239 (h!79687 C!41350) (t!388098 List!73363)) )
))
(declare-fun s!9605 () List!73363)

(declare-fun matchR!10008 (Regex!20512 List!73363) Bool)

(assert (=> b!7693973 (= e!4566894 (matchR!10008 r!14126 s!9605))))

(declare-fun b!7693974 () Bool)

(declare-fun res!3073388 () Bool)

(declare-fun e!4566897 () Bool)

(assert (=> b!7693974 (=> (not res!3073388) (not e!4566897))))

(declare-fun isEmpty!41884 (List!73363) Bool)

(assert (=> b!7693974 (= res!3073388 (not (isEmpty!41884 s!9605)))))

(assert (=> b!7693976 (= e!4566897 (not e!4566894))))

(declare-fun res!3073385 () Bool)

(assert (=> b!7693976 (=> res!3073385 e!4566894)))

(declare-fun lt!2664178 () Bool)

(assert (=> b!7693976 (= res!3073385 lt!2664178)))

(declare-fun lambda!470444 () Int)

(declare-fun Exists!4637 (Int) Bool)

(assert (=> b!7693976 (= lt!2664178 (Exists!4637 lambda!470444))))

(declare-datatypes ((tuple2!69486 0))(
  ( (tuple2!69487 (_1!38046 List!73363) (_2!38046 List!73363)) )
))
(declare-datatypes ((Option!17537 0))(
  ( (None!17536) (Some!17536 (v!54671 tuple2!69486)) )
))
(declare-fun isDefined!14153 (Option!17537) Bool)

(declare-fun findConcatSeparation!3567 (Regex!20512 Regex!20512 List!73363 List!73363 List!73363) Option!17537)

(assert (=> b!7693976 (= lt!2664178 (isDefined!14153 (findConcatSeparation!3567 (reg!20841 r!14126) r!14126 Nil!73239 s!9605 s!9605)))))

(declare-datatypes ((Unit!168056 0))(
  ( (Unit!168057) )
))
(declare-fun lt!2664177 () Unit!168056)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3325 (Regex!20512 Regex!20512 List!73363) Unit!168056)

(assert (=> b!7693976 (= lt!2664177 (lemmaFindConcatSeparationEquivalentToExists!3325 (reg!20841 r!14126) r!14126 s!9605))))

(declare-fun b!7693977 () Bool)

(declare-fun res!3073387 () Bool)

(assert (=> b!7693977 (=> res!3073387 e!4566894)))

(declare-fun validRegex!10930 (Regex!20512) Bool)

(assert (=> b!7693977 (= res!3073387 (not (validRegex!10930 r!14126)))))

(declare-fun b!7693978 () Bool)

(declare-fun e!4566895 () Bool)

(declare-fun tp_is_empty!51379 () Bool)

(declare-fun tp!2253903 () Bool)

(assert (=> b!7693978 (= e!4566895 (and tp_is_empty!51379 tp!2253903))))

(declare-fun b!7693979 () Bool)

(declare-fun tp!2253904 () Bool)

(declare-fun tp!2253906 () Bool)

(assert (=> b!7693979 (= e!4566896 (and tp!2253904 tp!2253906))))

(declare-fun b!7693980 () Bool)

(declare-fun tp!2253907 () Bool)

(declare-fun tp!2253902 () Bool)

(assert (=> b!7693980 (= e!4566896 (and tp!2253907 tp!2253902))))

(declare-fun b!7693981 () Bool)

(declare-fun res!3073386 () Bool)

(assert (=> b!7693981 (=> (not res!3073386) (not e!4566897))))

(assert (=> b!7693981 (= res!3073386 (and (not (is-EmptyExpr!20512 r!14126)) (not (is-EmptyLang!20512 r!14126)) (not (is-ElementMatch!20512 r!14126)) (not (is-Union!20512 r!14126)) (is-Star!20512 r!14126)))))

(declare-fun b!7693982 () Bool)

(assert (=> b!7693982 (= e!4566896 tp_is_empty!51379)))

(declare-fun b!7693975 () Bool)

(declare-fun res!3073383 () Bool)

(assert (=> b!7693975 (=> res!3073383 e!4566894)))

(assert (=> b!7693975 (= res!3073383 (not (matchR!10008 r!14126 s!9605)))))

(declare-fun res!3073384 () Bool)

(assert (=> start!736782 (=> (not res!3073384) (not e!4566897))))

(assert (=> start!736782 (= res!3073384 (validRegex!10930 r!14126))))

(assert (=> start!736782 e!4566897))

(assert (=> start!736782 e!4566896))

(assert (=> start!736782 e!4566895))

(assert (= (and start!736782 res!3073384) b!7693981))

(assert (= (and b!7693981 res!3073386) b!7693974))

(assert (= (and b!7693974 res!3073388) b!7693976))

(assert (= (and b!7693976 (not res!3073385)) b!7693975))

(assert (= (and b!7693975 (not res!3073383)) b!7693977))

(assert (= (and b!7693977 (not res!3073387)) b!7693973))

(assert (= (and start!736782 (is-ElementMatch!20512 r!14126)) b!7693982))

(assert (= (and start!736782 (is-Concat!29357 r!14126)) b!7693980))

(assert (= (and start!736782 (is-Star!20512 r!14126)) b!7693972))

(assert (= (and start!736782 (is-Union!20512 r!14126)) b!7693979))

(assert (= (and start!736782 (is-Cons!73239 s!9605)) b!7693978))

(declare-fun m!8187302 () Bool)

(assert (=> start!736782 m!8187302))

(declare-fun m!8187304 () Bool)

(assert (=> b!7693975 m!8187304))

(assert (=> b!7693973 m!8187304))

(assert (=> b!7693977 m!8187302))

(declare-fun m!8187306 () Bool)

(assert (=> b!7693976 m!8187306))

(declare-fun m!8187308 () Bool)

(assert (=> b!7693976 m!8187308))

(assert (=> b!7693976 m!8187308))

(declare-fun m!8187310 () Bool)

(assert (=> b!7693976 m!8187310))

(declare-fun m!8187312 () Bool)

(assert (=> b!7693976 m!8187312))

(declare-fun m!8187314 () Bool)

(assert (=> b!7693974 m!8187314))

(push 1)

(assert tp_is_empty!51379)

(assert (not b!7693973))

(assert (not start!736782))

(assert (not b!7693977))

(assert (not b!7693980))

(assert (not b!7693972))

(assert (not b!7693974))

(assert (not b!7693978))

(assert (not b!7693975))

(assert (not b!7693976))

(assert (not b!7693979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

