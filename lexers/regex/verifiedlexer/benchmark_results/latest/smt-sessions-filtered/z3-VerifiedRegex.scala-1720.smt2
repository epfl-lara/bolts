; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86206 () Bool)

(assert start!86206)

(declare-fun b!969670 () Bool)

(declare-fun e!625223 () Bool)

(declare-fun tp!297067 () Bool)

(declare-fun tp!297068 () Bool)

(assert (=> b!969670 (= e!625223 (and tp!297067 tp!297068))))

(declare-fun b!969671 () Bool)

(declare-fun e!625221 () Bool)

(declare-fun tp_is_empty!5041 () Bool)

(declare-fun tp!297069 () Bool)

(assert (=> b!969671 (= e!625221 (and tp_is_empty!5041 tp!297069))))

(declare-fun b!969672 () Bool)

(declare-fun e!625222 () Bool)

(declare-fun lt!348730 () Bool)

(declare-datatypes ((C!5968 0))(
  ( (C!5969 (val!3232 Int)) )
))
(declare-datatypes ((Regex!2699 0))(
  ( (ElementMatch!2699 (c!158120 C!5968)) (Concat!4532 (regOne!5910 Regex!2699) (regTwo!5910 Regex!2699)) (EmptyExpr!2699) (Star!2699 (reg!3028 Regex!2699)) (EmptyLang!2699) (Union!2699 (regOne!5911 Regex!2699) (regTwo!5911 Regex!2699)) )
))
(declare-fun r!15766 () Regex!2699)

(get-info :version)

(assert (=> b!969672 (= e!625222 (not true))))

(declare-datatypes ((List!9929 0))(
  ( (Nil!9913) (Cons!9913 (h!15314 C!5968) (t!100975 List!9929)) )
))
(declare-fun s!10566 () List!9929)

(declare-fun matchRSpec!498 (Regex!2699 List!9929) Bool)

(assert (=> b!969672 (= lt!348730 (matchRSpec!498 r!15766 s!10566))))

(declare-fun matchR!1235 (Regex!2699 List!9929) Bool)

(assert (=> b!969672 (= lt!348730 (matchR!1235 r!15766 s!10566))))

(declare-datatypes ((Unit!15057 0))(
  ( (Unit!15058) )
))
(declare-fun lt!348731 () Unit!15057)

(declare-fun mainMatchTheorem!498 (Regex!2699 List!9929) Unit!15057)

(assert (=> b!969672 (= lt!348731 (mainMatchTheorem!498 r!15766 s!10566))))

(declare-fun b!969673 () Bool)

(declare-fun tp!297071 () Bool)

(assert (=> b!969673 (= e!625223 tp!297071)))

(declare-fun res!440798 () Bool)

(assert (=> start!86206 (=> (not res!440798) (not e!625222))))

(declare-fun validRegex!1168 (Regex!2699) Bool)

(assert (=> start!86206 (= res!440798 (validRegex!1168 r!15766))))

(assert (=> start!86206 e!625222))

(assert (=> start!86206 e!625223))

(assert (=> start!86206 e!625221))

(declare-fun b!969674 () Bool)

(assert (=> b!969674 (= e!625223 tp_is_empty!5041)))

(declare-fun b!969675 () Bool)

(declare-fun tp!297072 () Bool)

(declare-fun tp!297070 () Bool)

(assert (=> b!969675 (= e!625223 (and tp!297072 tp!297070))))

(assert (= (and start!86206 res!440798) b!969672))

(assert (= (and start!86206 ((_ is ElementMatch!2699) r!15766)) b!969674))

(assert (= (and start!86206 ((_ is Concat!4532) r!15766)) b!969675))

(assert (= (and start!86206 ((_ is Star!2699) r!15766)) b!969673))

(assert (= (and start!86206 ((_ is Union!2699) r!15766)) b!969670))

(assert (= (and start!86206 ((_ is Cons!9913) s!10566)) b!969671))

(declare-fun m!1174473 () Bool)

(assert (=> b!969672 m!1174473))

(declare-fun m!1174475 () Bool)

(assert (=> b!969672 m!1174475))

(declare-fun m!1174477 () Bool)

(assert (=> b!969672 m!1174477))

(declare-fun m!1174479 () Bool)

(assert (=> start!86206 m!1174479))

(check-sat (not b!969671) tp_is_empty!5041 (not start!86206) (not b!969675) (not b!969670) (not b!969672) (not b!969673))
(check-sat)
