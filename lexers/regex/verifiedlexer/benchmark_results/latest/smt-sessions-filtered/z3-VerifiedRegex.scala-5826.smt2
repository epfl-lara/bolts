; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286936 () Bool)

(assert start!286936)

(declare-fun b!2961858 () Bool)

(declare-fun e!1864340 () Bool)

(declare-fun tp!945230 () Bool)

(declare-fun tp!945231 () Bool)

(assert (=> b!2961858 (= e!1864340 (and tp!945230 tp!945231))))

(declare-fun b!2961859 () Bool)

(declare-fun e!1864341 () Bool)

(declare-fun tp_is_empty!15969 () Bool)

(declare-fun tp!945232 () Bool)

(assert (=> b!2961859 (= e!1864341 (and tp_is_empty!15969 tp!945232))))

(declare-fun b!2961860 () Bool)

(declare-fun e!1864343 () Bool)

(assert (=> b!2961860 (= e!1864343 true)))

(declare-datatypes ((C!18592 0))(
  ( (C!18593 (val!11332 Int)) )
))
(declare-datatypes ((Regex!9203 0))(
  ( (ElementMatch!9203 (c!485433 C!18592)) (Concat!14524 (regOne!18918 Regex!9203) (regTwo!18918 Regex!9203)) (EmptyExpr!9203) (Star!9203 (reg!9532 Regex!9203)) (EmptyLang!9203) (Union!9203 (regOne!18919 Regex!9203) (regTwo!18919 Regex!9203)) )
))
(declare-fun r!17423 () Regex!9203)

(declare-datatypes ((List!35068 0))(
  ( (Nil!34944) (Cons!34944 (h!40364 C!18592) (t!234133 List!35068)) )
))
(declare-fun s!11993 () List!35068)

(declare-fun lt!1034353 () Regex!9203)

(declare-fun matchR!4085 (Regex!9203 List!35068) Bool)

(assert (=> b!2961860 (= (matchR!4085 (regTwo!18919 r!17423) s!11993) (matchR!4085 lt!1034353 s!11993))))

(declare-datatypes ((Unit!48785 0))(
  ( (Unit!48786) )
))
(declare-fun lt!1034352 () Unit!48785)

(declare-fun lemmaSimplifySound!132 (Regex!9203 List!35068) Unit!48785)

(assert (=> b!2961860 (= lt!1034352 (lemmaSimplifySound!132 (regTwo!18919 r!17423) s!11993))))

(declare-fun res!1221964 () Bool)

(declare-fun e!1864342 () Bool)

(assert (=> start!286936 (=> (not res!1221964) (not e!1864342))))

(declare-fun validRegex!3936 (Regex!9203) Bool)

(assert (=> start!286936 (= res!1221964 (validRegex!3936 r!17423))))

(assert (=> start!286936 e!1864342))

(assert (=> start!286936 e!1864340))

(assert (=> start!286936 e!1864341))

(declare-fun b!2961861 () Bool)

(declare-fun e!1864339 () Bool)

(assert (=> b!2961861 (= e!1864339 e!1864343)))

(declare-fun res!1221966 () Bool)

(assert (=> b!2961861 (=> res!1221966 e!1864343)))

(declare-fun lt!1034351 () Regex!9203)

(declare-fun isEmptyLang!321 (Regex!9203) Bool)

(assert (=> b!2961861 (= res!1221966 (not (isEmptyLang!321 lt!1034351)))))

(declare-fun simplify!206 (Regex!9203) Regex!9203)

(assert (=> b!2961861 (= lt!1034353 (simplify!206 (regTwo!18919 r!17423)))))

(assert (=> b!2961861 (= lt!1034351 (simplify!206 (regOne!18919 r!17423)))))

(declare-fun b!2961862 () Bool)

(assert (=> b!2961862 (= e!1864340 tp_is_empty!15969)))

(declare-fun b!2961863 () Bool)

(declare-fun tp!945229 () Bool)

(declare-fun tp!945228 () Bool)

(assert (=> b!2961863 (= e!1864340 (and tp!945229 tp!945228))))

(declare-fun b!2961864 () Bool)

(assert (=> b!2961864 (= e!1864342 (not e!1864339))))

(declare-fun res!1221965 () Bool)

(assert (=> b!2961864 (=> res!1221965 e!1864339)))

(declare-fun lt!1034350 () Bool)

(get-info :version)

(assert (=> b!2961864 (= res!1221965 (or lt!1034350 ((_ is Concat!14524) r!17423) (not ((_ is Union!9203) r!17423))))))

(declare-fun matchRSpec!1340 (Regex!9203 List!35068) Bool)

(assert (=> b!2961864 (= lt!1034350 (matchRSpec!1340 r!17423 s!11993))))

(assert (=> b!2961864 (= lt!1034350 (matchR!4085 r!17423 s!11993))))

(declare-fun lt!1034354 () Unit!48785)

(declare-fun mainMatchTheorem!1340 (Regex!9203 List!35068) Unit!48785)

(assert (=> b!2961864 (= lt!1034354 (mainMatchTheorem!1340 r!17423 s!11993))))

(declare-fun b!2961865 () Bool)

(declare-fun tp!945233 () Bool)

(assert (=> b!2961865 (= e!1864340 tp!945233)))

(assert (= (and start!286936 res!1221964) b!2961864))

(assert (= (and b!2961864 (not res!1221965)) b!2961861))

(assert (= (and b!2961861 (not res!1221966)) b!2961860))

(assert (= (and start!286936 ((_ is ElementMatch!9203) r!17423)) b!2961862))

(assert (= (and start!286936 ((_ is Concat!14524) r!17423)) b!2961858))

(assert (= (and start!286936 ((_ is Star!9203) r!17423)) b!2961865))

(assert (= (and start!286936 ((_ is Union!9203) r!17423)) b!2961863))

(assert (= (and start!286936 ((_ is Cons!34944) s!11993)) b!2961859))

(declare-fun m!3334667 () Bool)

(assert (=> b!2961860 m!3334667))

(declare-fun m!3334669 () Bool)

(assert (=> b!2961860 m!3334669))

(declare-fun m!3334671 () Bool)

(assert (=> b!2961860 m!3334671))

(declare-fun m!3334673 () Bool)

(assert (=> start!286936 m!3334673))

(declare-fun m!3334675 () Bool)

(assert (=> b!2961861 m!3334675))

(declare-fun m!3334677 () Bool)

(assert (=> b!2961861 m!3334677))

(declare-fun m!3334679 () Bool)

(assert (=> b!2961861 m!3334679))

(declare-fun m!3334681 () Bool)

(assert (=> b!2961864 m!3334681))

(declare-fun m!3334683 () Bool)

(assert (=> b!2961864 m!3334683))

(declare-fun m!3334685 () Bool)

(assert (=> b!2961864 m!3334685))

(check-sat tp_is_empty!15969 (not b!2961865) (not b!2961859) (not b!2961861) (not b!2961863) (not b!2961858) (not b!2961860) (not b!2961864) (not start!286936))
(check-sat)
