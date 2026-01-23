; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735936 () Bool)

(assert start!735936)

(declare-fun b!7649725 () Bool)

(declare-fun e!4546185 () Bool)

(declare-fun tp!2233882 () Bool)

(declare-fun tp!2233880 () Bool)

(assert (=> b!7649725 (= e!4546185 (and tp!2233882 tp!2233880))))

(declare-fun res!3063524 () Bool)

(declare-fun e!4546184 () Bool)

(assert (=> start!735936 (=> (not res!3063524) (not e!4546184))))

(declare-datatypes ((C!41280 0))(
  ( (C!41281 (val!31080 Int)) )
))
(declare-datatypes ((Regex!20477 0))(
  ( (ElementMatch!20477 (c!1408862 C!41280)) (Concat!29322 (regOne!41466 Regex!20477) (regTwo!41466 Regex!20477)) (EmptyExpr!20477) (Star!20477 (reg!20806 Regex!20477)) (EmptyLang!20477) (Union!20477 (regOne!41467 Regex!20477) (regTwo!41467 Regex!20477)) )
))
(declare-fun r!14126 () Regex!20477)

(declare-fun validRegex!10895 (Regex!20477) Bool)

(assert (=> start!735936 (= res!3063524 (validRegex!10895 r!14126))))

(assert (=> start!735936 e!4546184))

(assert (=> start!735936 e!4546185))

(declare-fun e!4546183 () Bool)

(assert (=> start!735936 e!4546183))

(declare-fun b!7649726 () Bool)

(declare-fun tp!2233884 () Bool)

(assert (=> b!7649726 (= e!4546185 tp!2233884)))

(declare-fun b!7649727 () Bool)

(declare-fun res!3063525 () Bool)

(assert (=> b!7649727 (=> (not res!3063525) (not e!4546184))))

(get-info :version)

(assert (=> b!7649727 (= res!3063525 (and (not ((_ is EmptyExpr!20477) r!14126)) (not ((_ is EmptyLang!20477) r!14126)) (not ((_ is ElementMatch!20477) r!14126)) (not ((_ is Union!20477) r!14126)) ((_ is Star!20477) r!14126)))))

(declare-fun b!7649728 () Bool)

(declare-fun tp_is_empty!51309 () Bool)

(declare-fun tp!2233885 () Bool)

(assert (=> b!7649728 (= e!4546183 (and tp_is_empty!51309 tp!2233885))))

(declare-fun b!7649729 () Bool)

(declare-fun res!3063523 () Bool)

(assert (=> b!7649729 (=> (not res!3063523) (not e!4546184))))

(declare-datatypes ((List!73328 0))(
  ( (Nil!73204) (Cons!73204 (h!79652 C!41280) (t!388063 List!73328)) )
))
(declare-fun s!9605 () List!73328)

(declare-fun isEmpty!41829 (List!73328) Bool)

(assert (=> b!7649729 (= res!3063523 (not (isEmpty!41829 s!9605)))))

(declare-fun b!7649730 () Bool)

(declare-fun tp!2233883 () Bool)

(declare-fun tp!2233881 () Bool)

(assert (=> b!7649730 (= e!4546185 (and tp!2233883 tp!2233881))))

(declare-fun b!7649731 () Bool)

(declare-fun res!3063526 () Bool)

(assert (=> b!7649731 (=> (not res!3063526) (not e!4546184))))

(assert (=> b!7649731 (= res!3063526 (validRegex!10895 (reg!20806 r!14126)))))

(declare-fun b!7649732 () Bool)

(assert (=> b!7649732 (= e!4546184 (not (validRegex!10895 r!14126)))))

(declare-fun b!7649733 () Bool)

(assert (=> b!7649733 (= e!4546185 tp_is_empty!51309)))

(assert (= (and start!735936 res!3063524) b!7649727))

(assert (= (and b!7649727 res!3063525) b!7649729))

(assert (= (and b!7649729 res!3063523) b!7649731))

(assert (= (and b!7649731 res!3063526) b!7649732))

(assert (= (and start!735936 ((_ is ElementMatch!20477) r!14126)) b!7649733))

(assert (= (and start!735936 ((_ is Concat!29322) r!14126)) b!7649730))

(assert (= (and start!735936 ((_ is Star!20477) r!14126)) b!7649726))

(assert (= (and start!735936 ((_ is Union!20477) r!14126)) b!7649725))

(assert (= (and start!735936 ((_ is Cons!73204) s!9605)) b!7649728))

(declare-fun m!8165572 () Bool)

(assert (=> start!735936 m!8165572))

(declare-fun m!8165574 () Bool)

(assert (=> b!7649729 m!8165574))

(declare-fun m!8165576 () Bool)

(assert (=> b!7649731 m!8165576))

(assert (=> b!7649732 m!8165572))

(check-sat (not b!7649730) (not b!7649728) tp_is_empty!51309 (not b!7649726) (not start!735936) (not b!7649731) (not b!7649732) (not b!7649729) (not b!7649725))
(check-sat)
