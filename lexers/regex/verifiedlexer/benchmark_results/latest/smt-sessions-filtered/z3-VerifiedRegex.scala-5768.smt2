; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285516 () Bool)

(assert start!285516)

(declare-fun b!2939200 () Bool)

(declare-fun e!1852512 () Bool)

(declare-fun tp_is_empty!15737 () Bool)

(assert (=> b!2939200 (= e!1852512 tp_is_empty!15737)))

(declare-fun b!2939201 () Bool)

(declare-fun tp!940865 () Bool)

(assert (=> b!2939201 (= e!1852512 tp!940865)))

(declare-fun res!1213178 () Bool)

(declare-fun e!1852513 () Bool)

(assert (=> start!285516 (=> (not res!1213178) (not e!1852513))))

(declare-datatypes ((C!18360 0))(
  ( (C!18361 (val!11216 Int)) )
))
(declare-datatypes ((Regex!9087 0))(
  ( (ElementMatch!9087 (c!480461 C!18360)) (Concat!14408 (regOne!18686 Regex!9087) (regTwo!18686 Regex!9087)) (EmptyExpr!9087) (Star!9087 (reg!9416 Regex!9087)) (EmptyLang!9087) (Union!9087 (regOne!18687 Regex!9087) (regTwo!18687 Regex!9087)) )
))
(declare-fun r!17423 () Regex!9087)

(declare-fun validRegex!3820 (Regex!9087) Bool)

(assert (=> start!285516 (= res!1213178 (validRegex!3820 r!17423))))

(assert (=> start!285516 e!1852513))

(assert (=> start!285516 e!1852512))

(declare-fun e!1852511 () Bool)

(assert (=> start!285516 e!1852511))

(declare-fun b!2939202 () Bool)

(declare-fun e!1852510 () Bool)

(assert (=> b!2939202 (= e!1852513 (not e!1852510))))

(declare-fun res!1213180 () Bool)

(assert (=> b!2939202 (=> res!1213180 e!1852510)))

(declare-fun lt!1029732 () Bool)

(get-info :version)

(assert (=> b!2939202 (= res!1213180 (or lt!1029732 (not ((_ is Concat!14408) r!17423))))))

(declare-datatypes ((List!34952 0))(
  ( (Nil!34828) (Cons!34828 (h!40248 C!18360) (t!234017 List!34952)) )
))
(declare-fun s!11993 () List!34952)

(declare-fun matchRSpec!1224 (Regex!9087 List!34952) Bool)

(assert (=> b!2939202 (= lt!1029732 (matchRSpec!1224 r!17423 s!11993))))

(declare-fun matchR!3969 (Regex!9087 List!34952) Bool)

(assert (=> b!2939202 (= lt!1029732 (matchR!3969 r!17423 s!11993))))

(declare-datatypes ((Unit!48553 0))(
  ( (Unit!48554) )
))
(declare-fun lt!1029733 () Unit!48553)

(declare-fun mainMatchTheorem!1224 (Regex!9087 List!34952) Unit!48553)

(assert (=> b!2939202 (= lt!1029733 (mainMatchTheorem!1224 r!17423 s!11993))))

(declare-fun b!2939203 () Bool)

(assert (=> b!2939203 (= e!1852510 true)))

(declare-fun lt!1029730 () Regex!9087)

(declare-fun simplify!92 (Regex!9087) Regex!9087)

(assert (=> b!2939203 (= lt!1029730 (simplify!92 (regTwo!18686 r!17423)))))

(declare-fun lt!1029731 () Regex!9087)

(assert (=> b!2939203 (= lt!1029731 (simplify!92 (regOne!18686 r!17423)))))

(declare-fun b!2939204 () Bool)

(declare-fun res!1213179 () Bool)

(assert (=> b!2939204 (=> res!1213179 e!1852510)))

(declare-fun isEmpty!19089 (List!34952) Bool)

(assert (=> b!2939204 (= res!1213179 (isEmpty!19089 s!11993))))

(declare-fun b!2939205 () Bool)

(declare-fun tp!940863 () Bool)

(assert (=> b!2939205 (= e!1852511 (and tp_is_empty!15737 tp!940863))))

(declare-fun b!2939206 () Bool)

(declare-fun tp!940864 () Bool)

(declare-fun tp!940861 () Bool)

(assert (=> b!2939206 (= e!1852512 (and tp!940864 tp!940861))))

(declare-fun b!2939207 () Bool)

(declare-fun tp!940862 () Bool)

(declare-fun tp!940860 () Bool)

(assert (=> b!2939207 (= e!1852512 (and tp!940862 tp!940860))))

(assert (= (and start!285516 res!1213178) b!2939202))

(assert (= (and b!2939202 (not res!1213180)) b!2939204))

(assert (= (and b!2939204 (not res!1213179)) b!2939203))

(assert (= (and start!285516 ((_ is ElementMatch!9087) r!17423)) b!2939200))

(assert (= (and start!285516 ((_ is Concat!14408) r!17423)) b!2939206))

(assert (= (and start!285516 ((_ is Star!9087) r!17423)) b!2939201))

(assert (= (and start!285516 ((_ is Union!9087) r!17423)) b!2939207))

(assert (= (and start!285516 ((_ is Cons!34828) s!11993)) b!2939205))

(declare-fun m!3324735 () Bool)

(assert (=> start!285516 m!3324735))

(declare-fun m!3324737 () Bool)

(assert (=> b!2939202 m!3324737))

(declare-fun m!3324739 () Bool)

(assert (=> b!2939202 m!3324739))

(declare-fun m!3324741 () Bool)

(assert (=> b!2939202 m!3324741))

(declare-fun m!3324743 () Bool)

(assert (=> b!2939203 m!3324743))

(declare-fun m!3324745 () Bool)

(assert (=> b!2939203 m!3324745))

(declare-fun m!3324747 () Bool)

(assert (=> b!2939204 m!3324747))

(check-sat tp_is_empty!15737 (not b!2939204) (not b!2939202) (not b!2939203) (not b!2939207) (not b!2939201) (not start!285516) (not b!2939205) (not b!2939206))
(check-sat)
