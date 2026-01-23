; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740418 () Bool)

(assert start!740418)

(declare-fun res!3100665 () Bool)

(declare-fun e!4608169 () Bool)

(assert (=> start!740418 (=> (not res!3100665) (not e!4608169))))

(declare-datatypes ((C!41940 0))(
  ( (C!41941 (val!31410 Int)) )
))
(declare-datatypes ((Regex!20807 0))(
  ( (ElementMatch!20807 (c!1433452 C!41940)) (Concat!29652 (regOne!42126 Regex!20807) (regTwo!42126 Regex!20807)) (EmptyExpr!20807) (Star!20807 (reg!21136 Regex!20807)) (EmptyLang!20807) (Union!20807 (regOne!42127 Regex!20807) (regTwo!42127 Regex!20807)) )
))
(declare-fun r1!6279 () Regex!20807)

(declare-fun validRegex!11221 (Regex!20807) Bool)

(assert (=> start!740418 (= res!3100665 (validRegex!11221 r1!6279))))

(assert (=> start!740418 e!4608169))

(declare-fun e!4608171 () Bool)

(assert (=> start!740418 e!4608171))

(declare-fun e!4608167 () Bool)

(assert (=> start!740418 e!4608167))

(declare-fun e!4608168 () Bool)

(assert (=> start!740418 e!4608168))

(declare-fun b!7778839 () Bool)

(declare-fun res!3100662 () Bool)

(declare-fun e!4608170 () Bool)

(assert (=> b!7778839 (=> (not res!3100662) (not e!4608170))))

(declare-datatypes ((List!73646 0))(
  ( (Nil!73522) (Cons!73522 (h!79970 C!41940) (t!388381 List!73646)) )
))
(declare-fun s!14292 () List!73646)

(get-info :version)

(assert (=> b!7778839 (= res!3100662 ((_ is Cons!73522) s!14292))))

(declare-fun b!7778840 () Bool)

(declare-fun tp!2286116 () Bool)

(declare-fun tp!2286122 () Bool)

(assert (=> b!7778840 (= e!4608167 (and tp!2286116 tp!2286122))))

(declare-fun b!7778841 () Bool)

(declare-fun tp!2286124 () Bool)

(declare-fun tp!2286121 () Bool)

(assert (=> b!7778841 (= e!4608167 (and tp!2286124 tp!2286121))))

(declare-fun b!7778842 () Bool)

(assert (=> b!7778842 (= e!4608169 e!4608170)))

(declare-fun res!3100661 () Bool)

(assert (=> b!7778842 (=> (not res!3100661) (not e!4608170))))

(declare-fun lt!2672541 () Regex!20807)

(declare-fun matchR!10267 (Regex!20807 List!73646) Bool)

(assert (=> b!7778842 (= res!3100661 (matchR!10267 lt!2672541 s!14292))))

(declare-fun r2!6217 () Regex!20807)

(assert (=> b!7778842 (= lt!2672541 (Concat!29652 r1!6279 r2!6217))))

(declare-fun b!7778843 () Bool)

(declare-fun tp_is_empty!51969 () Bool)

(assert (=> b!7778843 (= e!4608167 tp_is_empty!51969)))

(declare-fun b!7778844 () Bool)

(assert (=> b!7778844 (= e!4608170 false)))

(declare-fun lt!2672542 () Regex!20807)

(declare-fun derivativeStep!6150 (Regex!20807 C!41940) Regex!20807)

(assert (=> b!7778844 (= lt!2672542 (derivativeStep!6150 r1!6279 (h!79970 s!14292)))))

(declare-fun b!7778845 () Bool)

(assert (=> b!7778845 (= e!4608171 tp_is_empty!51969)))

(declare-fun b!7778846 () Bool)

(declare-fun tp!2286120 () Bool)

(assert (=> b!7778846 (= e!4608171 tp!2286120)))

(declare-fun b!7778847 () Bool)

(declare-fun tp!2286123 () Bool)

(assert (=> b!7778847 (= e!4608168 (and tp_is_empty!51969 tp!2286123))))

(declare-fun b!7778848 () Bool)

(declare-fun res!3100666 () Bool)

(assert (=> b!7778848 (=> (not res!3100666) (not e!4608170))))

(declare-fun nullable!9195 (Regex!20807) Bool)

(assert (=> b!7778848 (= res!3100666 (not (nullable!9195 r1!6279)))))

(declare-fun b!7778849 () Bool)

(declare-fun tp!2286118 () Bool)

(declare-fun tp!2286125 () Bool)

(assert (=> b!7778849 (= e!4608171 (and tp!2286118 tp!2286125))))

(declare-fun b!7778850 () Bool)

(declare-fun tp!2286117 () Bool)

(assert (=> b!7778850 (= e!4608167 tp!2286117)))

(declare-fun b!7778851 () Bool)

(declare-fun tp!2286119 () Bool)

(declare-fun tp!2286115 () Bool)

(assert (=> b!7778851 (= e!4608171 (and tp!2286119 tp!2286115))))

(declare-fun b!7778852 () Bool)

(declare-fun res!3100663 () Bool)

(assert (=> b!7778852 (=> (not res!3100663) (not e!4608170))))

(assert (=> b!7778852 (= res!3100663 (matchR!10267 (derivativeStep!6150 lt!2672541 (h!79970 s!14292)) (t!388381 s!14292)))))

(declare-fun b!7778853 () Bool)

(declare-fun res!3100664 () Bool)

(assert (=> b!7778853 (=> (not res!3100664) (not e!4608169))))

(assert (=> b!7778853 (= res!3100664 (validRegex!11221 r2!6217))))

(assert (= (and start!740418 res!3100665) b!7778853))

(assert (= (and b!7778853 res!3100664) b!7778842))

(assert (= (and b!7778842 res!3100661) b!7778839))

(assert (= (and b!7778839 res!3100662) b!7778852))

(assert (= (and b!7778852 res!3100663) b!7778848))

(assert (= (and b!7778848 res!3100666) b!7778844))

(assert (= (and start!740418 ((_ is ElementMatch!20807) r1!6279)) b!7778845))

(assert (= (and start!740418 ((_ is Concat!29652) r1!6279)) b!7778849))

(assert (= (and start!740418 ((_ is Star!20807) r1!6279)) b!7778846))

(assert (= (and start!740418 ((_ is Union!20807) r1!6279)) b!7778851))

(assert (= (and start!740418 ((_ is ElementMatch!20807) r2!6217)) b!7778843))

(assert (= (and start!740418 ((_ is Concat!29652) r2!6217)) b!7778841))

(assert (= (and start!740418 ((_ is Star!20807) r2!6217)) b!7778850))

(assert (= (and start!740418 ((_ is Union!20807) r2!6217)) b!7778840))

(assert (= (and start!740418 ((_ is Cons!73522) s!14292)) b!7778847))

(declare-fun m!8228108 () Bool)

(assert (=> b!7778848 m!8228108))

(declare-fun m!8228110 () Bool)

(assert (=> b!7778844 m!8228110))

(declare-fun m!8228112 () Bool)

(assert (=> b!7778853 m!8228112))

(declare-fun m!8228114 () Bool)

(assert (=> b!7778842 m!8228114))

(declare-fun m!8228116 () Bool)

(assert (=> start!740418 m!8228116))

(declare-fun m!8228118 () Bool)

(assert (=> b!7778852 m!8228118))

(assert (=> b!7778852 m!8228118))

(declare-fun m!8228120 () Bool)

(assert (=> b!7778852 m!8228120))

(check-sat (not b!7778851) tp_is_empty!51969 (not b!7778847) (not b!7778842) (not b!7778844) (not b!7778852) (not b!7778841) (not b!7778840) (not start!740418) (not b!7778846) (not b!7778849) (not b!7778853) (not b!7778848) (not b!7778850))
(check-sat)
