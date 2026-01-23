; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663786 () Bool)

(assert start!663786)

(declare-fun b!6879858 () Bool)

(declare-fun e!4146112 () Bool)

(declare-fun tp!1891752 () Bool)

(declare-fun tp!1891758 () Bool)

(assert (=> b!6879858 (= e!4146112 (and tp!1891752 tp!1891758))))

(declare-fun b!6879859 () Bool)

(declare-fun tp!1891755 () Bool)

(declare-fun tp!1891757 () Bool)

(assert (=> b!6879859 (= e!4146112 (and tp!1891755 tp!1891757))))

(declare-fun b!6879860 () Bool)

(declare-fun e!4146113 () Bool)

(declare-fun tp!1891765 () Bool)

(assert (=> b!6879860 (= e!4146113 tp!1891765)))

(declare-fun b!6879861 () Bool)

(declare-fun e!4146114 () Bool)

(declare-fun tp!1891756 () Bool)

(assert (=> b!6879861 (= e!4146114 tp!1891756)))

(declare-fun b!6879862 () Bool)

(declare-fun tp_is_empty!42735 () Bool)

(assert (=> b!6879862 (= e!4146113 tp_is_empty!42735)))

(declare-fun b!6879863 () Bool)

(declare-fun tp!1891760 () Bool)

(declare-fun tp!1891753 () Bool)

(assert (=> b!6879863 (= e!4146113 (and tp!1891760 tp!1891753))))

(declare-fun b!6879864 () Bool)

(declare-fun res!2804568 () Bool)

(declare-fun e!4146115 () Bool)

(assert (=> b!6879864 (=> (not res!2804568) (not e!4146115))))

(declare-datatypes ((C!33780 0))(
  ( (C!33781 (val!26592 Int)) )
))
(declare-datatypes ((Regex!16755 0))(
  ( (ElementMatch!16755 (c!1279973 C!33780)) (Concat!25600 (regOne!34022 Regex!16755) (regTwo!34022 Regex!16755)) (EmptyExpr!16755) (Star!16755 (reg!17084 Regex!16755)) (EmptyLang!16755) (Union!16755 (regOne!34023 Regex!16755) (regTwo!34023 Regex!16755)) )
))
(declare-fun r3!135 () Regex!16755)

(declare-fun validRegex!8463 (Regex!16755) Bool)

(assert (=> b!6879864 (= res!2804568 (validRegex!8463 r3!135))))

(declare-fun b!6879865 () Bool)

(declare-fun tp!1891763 () Bool)

(assert (=> b!6879865 (= e!4146112 tp!1891763)))

(declare-fun b!6879866 () Bool)

(declare-fun tp!1891762 () Bool)

(declare-fun tp!1891766 () Bool)

(assert (=> b!6879866 (= e!4146113 (and tp!1891762 tp!1891766))))

(declare-fun res!2804567 () Bool)

(assert (=> start!663786 (=> (not res!2804567) (not e!4146115))))

(declare-fun r1!6342 () Regex!16755)

(assert (=> start!663786 (= res!2804567 (validRegex!8463 r1!6342))))

(assert (=> start!663786 e!4146115))

(assert (=> start!663786 e!4146114))

(assert (=> start!663786 e!4146112))

(assert (=> start!663786 e!4146113))

(declare-fun e!4146116 () Bool)

(assert (=> start!663786 e!4146116))

(declare-fun b!6879867 () Bool)

(assert (=> b!6879867 (= e!4146114 tp_is_empty!42735)))

(declare-fun b!6879868 () Bool)

(declare-fun tp!1891761 () Bool)

(declare-fun tp!1891764 () Bool)

(assert (=> b!6879868 (= e!4146114 (and tp!1891761 tp!1891764))))

(declare-fun b!6879869 () Bool)

(declare-fun res!2804566 () Bool)

(assert (=> b!6879869 (=> (not res!2804566) (not e!4146115))))

(declare-fun r2!6280 () Regex!16755)

(assert (=> b!6879869 (= res!2804566 (validRegex!8463 r2!6280))))

(declare-fun b!6879870 () Bool)

(declare-fun tp!1891767 () Bool)

(declare-fun tp!1891754 () Bool)

(assert (=> b!6879870 (= e!4146114 (and tp!1891767 tp!1891754))))

(declare-fun b!6879871 () Bool)

(assert (=> b!6879871 (= e!4146112 tp_is_empty!42735)))

(declare-fun b!6879872 () Bool)

(declare-fun tp!1891759 () Bool)

(assert (=> b!6879872 (= e!4146116 (and tp_is_empty!42735 tp!1891759))))

(declare-fun b!6879873 () Bool)

(assert (=> b!6879873 (= e!4146115 (not true))))

(declare-fun lt!2459492 () Regex!16755)

(declare-datatypes ((List!66512 0))(
  ( (Nil!66388) (Cons!66388 (h!72836 C!33780) (t!380255 List!66512)) )
))
(declare-fun s!14361 () List!66512)

(declare-fun matchR!8900 (Regex!16755 List!66512) Bool)

(declare-fun matchRSpec!3818 (Regex!16755 List!66512) Bool)

(assert (=> b!6879873 (= (matchR!8900 lt!2459492 s!14361) (matchRSpec!3818 lt!2459492 s!14361))))

(declare-datatypes ((Unit!160230 0))(
  ( (Unit!160231) )
))
(declare-fun lt!2459491 () Unit!160230)

(declare-fun mainMatchTheorem!3818 (Regex!16755 List!66512) Unit!160230)

(assert (=> b!6879873 (= lt!2459491 (mainMatchTheorem!3818 lt!2459492 s!14361))))

(declare-fun lt!2459493 () Regex!16755)

(assert (=> b!6879873 (= (matchR!8900 lt!2459493 s!14361) (matchRSpec!3818 lt!2459493 s!14361))))

(declare-fun lt!2459490 () Unit!160230)

(assert (=> b!6879873 (= lt!2459490 (mainMatchTheorem!3818 lt!2459493 s!14361))))

(assert (=> b!6879873 (= lt!2459492 (Concat!25600 r1!6342 (Concat!25600 r2!6280 r3!135)))))

(assert (=> b!6879873 (= lt!2459493 (Concat!25600 (Concat!25600 r1!6342 r2!6280) r3!135))))

(assert (= (and start!663786 res!2804567) b!6879869))

(assert (= (and b!6879869 res!2804566) b!6879864))

(assert (= (and b!6879864 res!2804568) b!6879873))

(get-info :version)

(assert (= (and start!663786 ((_ is ElementMatch!16755) r1!6342)) b!6879867))

(assert (= (and start!663786 ((_ is Concat!25600) r1!6342)) b!6879868))

(assert (= (and start!663786 ((_ is Star!16755) r1!6342)) b!6879861))

(assert (= (and start!663786 ((_ is Union!16755) r1!6342)) b!6879870))

(assert (= (and start!663786 ((_ is ElementMatch!16755) r2!6280)) b!6879871))

(assert (= (and start!663786 ((_ is Concat!25600) r2!6280)) b!6879859))

(assert (= (and start!663786 ((_ is Star!16755) r2!6280)) b!6879865))

(assert (= (and start!663786 ((_ is Union!16755) r2!6280)) b!6879858))

(assert (= (and start!663786 ((_ is ElementMatch!16755) r3!135)) b!6879862))

(assert (= (and start!663786 ((_ is Concat!25600) r3!135)) b!6879863))

(assert (= (and start!663786 ((_ is Star!16755) r3!135)) b!6879860))

(assert (= (and start!663786 ((_ is Union!16755) r3!135)) b!6879866))

(assert (= (and start!663786 ((_ is Cons!66388) s!14361)) b!6879872))

(declare-fun m!7605862 () Bool)

(assert (=> b!6879864 m!7605862))

(declare-fun m!7605864 () Bool)

(assert (=> start!663786 m!7605864))

(declare-fun m!7605866 () Bool)

(assert (=> b!6879869 m!7605866))

(declare-fun m!7605868 () Bool)

(assert (=> b!6879873 m!7605868))

(declare-fun m!7605870 () Bool)

(assert (=> b!6879873 m!7605870))

(declare-fun m!7605872 () Bool)

(assert (=> b!6879873 m!7605872))

(declare-fun m!7605874 () Bool)

(assert (=> b!6879873 m!7605874))

(declare-fun m!7605876 () Bool)

(assert (=> b!6879873 m!7605876))

(declare-fun m!7605878 () Bool)

(assert (=> b!6879873 m!7605878))

(check-sat (not b!6879858) (not b!6879864) (not b!6879869) (not b!6879866) (not b!6879872) (not b!6879873) (not b!6879863) (not b!6879861) (not b!6879870) (not b!6879859) (not b!6879868) (not start!663786) (not b!6879860) tp_is_empty!42735 (not b!6879865))
(check-sat)
