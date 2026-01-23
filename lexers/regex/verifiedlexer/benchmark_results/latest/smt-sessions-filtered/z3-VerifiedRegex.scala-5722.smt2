; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284404 () Bool)

(assert start!284404)

(declare-fun b!2921075 () Bool)

(declare-fun e!1842817 () Bool)

(declare-fun tp_is_empty!15553 () Bool)

(declare-fun tp!937305 () Bool)

(assert (=> b!2921075 (= e!1842817 (and tp_is_empty!15553 tp!937305))))

(declare-fun b!2921076 () Bool)

(declare-fun e!1842820 () Bool)

(assert (=> b!2921076 (= e!1842820 tp_is_empty!15553)))

(declare-fun b!2921077 () Bool)

(declare-fun e!1842818 () Bool)

(declare-datatypes ((C!18176 0))(
  ( (C!18177 (val!11124 Int)) )
))
(declare-datatypes ((Regex!8995 0))(
  ( (ElementMatch!8995 (c!476677 C!18176)) (Concat!14316 (regOne!18502 Regex!8995) (regTwo!18502 Regex!8995)) (EmptyExpr!8995) (Star!8995 (reg!9324 Regex!8995)) (EmptyLang!8995) (Union!8995 (regOne!18503 Regex!8995) (regTwo!18503 Regex!8995)) )
))
(declare-fun r!17423 () Regex!8995)

(declare-datatypes ((List!34860 0))(
  ( (Nil!34736) (Cons!34736 (h!40156 C!18176) (t!233925 List!34860)) )
))
(declare-fun s!11993 () List!34860)

(declare-fun matchR!3877 (Regex!8995 List!34860) Bool)

(assert (=> b!2921077 (= e!1842818 (matchR!3877 (regTwo!18503 r!17423) s!11993))))

(declare-fun b!2921078 () Bool)

(declare-fun e!1842819 () Bool)

(assert (=> b!2921078 (= e!1842819 true)))

(declare-fun lt!1025701 () Regex!8995)

(declare-fun simplify!26 (Regex!8995) Regex!8995)

(assert (=> b!2921078 (= lt!1025701 (simplify!26 (regTwo!18503 r!17423)))))

(assert (=> b!2921078 (matchR!3877 (simplify!26 (regOne!18503 r!17423)) s!11993)))

(declare-datatypes ((Unit!48329 0))(
  ( (Unit!48330) )
))
(declare-fun lt!1025702 () Unit!48329)

(declare-fun lemmaSimplifySound!24 (Regex!8995 List!34860) Unit!48329)

(assert (=> b!2921078 (= lt!1025702 (lemmaSimplifySound!24 (regOne!18503 r!17423) s!11993))))

(declare-fun b!2921079 () Bool)

(declare-fun tp!937304 () Bool)

(declare-fun tp!937306 () Bool)

(assert (=> b!2921079 (= e!1842820 (and tp!937304 tp!937306))))

(declare-fun b!2921081 () Bool)

(declare-fun tp!937308 () Bool)

(assert (=> b!2921081 (= e!1842820 tp!937308)))

(declare-fun b!2921082 () Bool)

(declare-fun e!1842821 () Bool)

(assert (=> b!2921082 (= e!1842821 e!1842819)))

(declare-fun res!1205864 () Bool)

(assert (=> b!2921082 (=> res!1205864 e!1842819)))

(declare-fun lt!1025700 () Bool)

(assert (=> b!2921082 (= res!1205864 (not lt!1025700))))

(assert (=> b!2921082 e!1842818))

(declare-fun res!1205863 () Bool)

(assert (=> b!2921082 (=> res!1205863 e!1842818)))

(assert (=> b!2921082 (= res!1205863 lt!1025700)))

(assert (=> b!2921082 (= lt!1025700 (matchR!3877 (regOne!18503 r!17423) s!11993))))

(declare-fun lt!1025699 () Unit!48329)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!244 (Regex!8995 Regex!8995 List!34860) Unit!48329)

(assert (=> b!2921082 (= lt!1025699 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!244 (regOne!18503 r!17423) (regTwo!18503 r!17423) s!11993))))

(declare-fun b!2921083 () Bool)

(declare-fun e!1842816 () Bool)

(assert (=> b!2921083 (= e!1842816 (not e!1842821))))

(declare-fun res!1205866 () Bool)

(assert (=> b!2921083 (=> res!1205866 e!1842821)))

(declare-fun lt!1025698 () Bool)

(get-info :version)

(assert (=> b!2921083 (= res!1205866 (or (not lt!1025698) ((_ is Concat!14316) r!17423) (not ((_ is Union!8995) r!17423))))))

(declare-fun matchRSpec!1132 (Regex!8995 List!34860) Bool)

(assert (=> b!2921083 (= lt!1025698 (matchRSpec!1132 r!17423 s!11993))))

(assert (=> b!2921083 (= lt!1025698 (matchR!3877 r!17423 s!11993))))

(declare-fun lt!1025703 () Unit!48329)

(declare-fun mainMatchTheorem!1132 (Regex!8995 List!34860) Unit!48329)

(assert (=> b!2921083 (= lt!1025703 (mainMatchTheorem!1132 r!17423 s!11993))))

(declare-fun res!1205865 () Bool)

(assert (=> start!284404 (=> (not res!1205865) (not e!1842816))))

(declare-fun validRegex!3728 (Regex!8995) Bool)

(assert (=> start!284404 (= res!1205865 (validRegex!3728 r!17423))))

(assert (=> start!284404 e!1842816))

(assert (=> start!284404 e!1842820))

(assert (=> start!284404 e!1842817))

(declare-fun b!2921080 () Bool)

(declare-fun tp!937307 () Bool)

(declare-fun tp!937309 () Bool)

(assert (=> b!2921080 (= e!1842820 (and tp!937307 tp!937309))))

(assert (= (and start!284404 res!1205865) b!2921083))

(assert (= (and b!2921083 (not res!1205866)) b!2921082))

(assert (= (and b!2921082 (not res!1205863)) b!2921077))

(assert (= (and b!2921082 (not res!1205864)) b!2921078))

(assert (= (and start!284404 ((_ is ElementMatch!8995) r!17423)) b!2921076))

(assert (= (and start!284404 ((_ is Concat!14316) r!17423)) b!2921080))

(assert (= (and start!284404 ((_ is Star!8995) r!17423)) b!2921081))

(assert (= (and start!284404 ((_ is Union!8995) r!17423)) b!2921079))

(assert (= (and start!284404 ((_ is Cons!34736) s!11993)) b!2921075))

(declare-fun m!3317027 () Bool)

(assert (=> start!284404 m!3317027))

(declare-fun m!3317029 () Bool)

(assert (=> b!2921083 m!3317029))

(declare-fun m!3317031 () Bool)

(assert (=> b!2921083 m!3317031))

(declare-fun m!3317033 () Bool)

(assert (=> b!2921083 m!3317033))

(declare-fun m!3317035 () Bool)

(assert (=> b!2921082 m!3317035))

(declare-fun m!3317037 () Bool)

(assert (=> b!2921082 m!3317037))

(declare-fun m!3317039 () Bool)

(assert (=> b!2921077 m!3317039))

(declare-fun m!3317041 () Bool)

(assert (=> b!2921078 m!3317041))

(declare-fun m!3317043 () Bool)

(assert (=> b!2921078 m!3317043))

(assert (=> b!2921078 m!3317043))

(declare-fun m!3317045 () Bool)

(assert (=> b!2921078 m!3317045))

(declare-fun m!3317047 () Bool)

(assert (=> b!2921078 m!3317047))

(check-sat (not b!2921077) (not b!2921078) (not b!2921075) (not b!2921081) (not b!2921082) (not b!2921079) (not b!2921083) (not start!284404) (not b!2921080) tp_is_empty!15553)
(check-sat)
