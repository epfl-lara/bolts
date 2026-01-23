; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728548 () Bool)

(assert start!728548)

(declare-fun b!7529993 () Bool)

(declare-fun e!4487854 () Bool)

(declare-fun tp!2188907 () Bool)

(assert (=> b!7529993 (= e!4487854 tp!2188907)))

(declare-fun b!7529994 () Bool)

(declare-fun e!4487852 () Bool)

(declare-fun e!4487850 () Bool)

(assert (=> b!7529994 (= e!4487852 (not e!4487850))))

(declare-fun res!3017901 () Bool)

(assert (=> b!7529994 (=> res!3017901 e!4487850)))

(declare-datatypes ((C!40036 0))(
  ( (C!40037 (val!30458 Int)) )
))
(declare-datatypes ((List!72738 0))(
  ( (Nil!72614) (Cons!72614 (h!79062 C!40036) (t!387445 List!72738)) )
))
(declare-fun knownP!30 () List!72738)

(declare-fun testedP!423 () List!72738)

(declare-datatypes ((Regex!19855 0))(
  ( (ElementMatch!19855 (c!1390744 C!40036)) (Concat!28700 (regOne!40222 Regex!19855) (regTwo!40222 Regex!19855)) (EmptyExpr!19855) (Star!19855 (reg!20184 Regex!19855)) (EmptyLang!19855) (Union!19855 (regOne!40223 Regex!19855) (regTwo!40223 Regex!19855)) )
))
(declare-fun r!24333 () Regex!19855)

(declare-fun matchR!9457 (Regex!19855 List!72738) Bool)

(declare-fun getSuffix!3541 (List!72738 List!72738) List!72738)

(assert (=> b!7529994 (= res!3017901 (not (matchR!9457 r!24333 (getSuffix!3541 knownP!30 testedP!423))))))

(declare-fun isPrefix!6061 (List!72738 List!72738) Bool)

(assert (=> b!7529994 (isPrefix!6061 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72738)

(declare-datatypes ((Unit!166624 0))(
  ( (Unit!166625) )
))
(declare-fun lt!2640196 () Unit!166624)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!811 (List!72738 List!72738 List!72738) Unit!166624)

(assert (=> b!7529994 (= lt!2640196 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!811 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529995 () Bool)

(declare-fun e!4487851 () Bool)

(declare-fun tp!2188905 () Bool)

(declare-fun tp!2188906 () Bool)

(assert (=> b!7529995 (= e!4487851 (and tp!2188905 tp!2188906))))

(declare-fun b!7529997 () Bool)

(declare-fun res!3017896 () Bool)

(declare-fun e!4487857 () Bool)

(assert (=> b!7529997 (=> (not res!3017896) (not e!4487857))))

(assert (=> b!7529997 (= res!3017896 (isPrefix!6061 knownP!30 input!7874))))

(declare-fun b!7529998 () Bool)

(declare-fun tp_is_empty!50065 () Bool)

(assert (=> b!7529998 (= e!4487854 tp_is_empty!50065)))

(declare-fun b!7529999 () Bool)

(declare-fun res!3017899 () Bool)

(assert (=> b!7529999 (=> res!3017899 e!4487850)))

(declare-fun baseR!101 () Regex!19855)

(declare-fun derivative!387 (Regex!19855 List!72738) Regex!19855)

(assert (=> b!7529999 (= res!3017899 (not (= (derivative!387 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7530000 () Bool)

(declare-fun res!3017898 () Bool)

(assert (=> b!7530000 (=> (not res!3017898) (not e!4487857))))

(declare-fun validRegex!10283 (Regex!19855) Bool)

(assert (=> b!7530000 (= res!3017898 (validRegex!10283 r!24333))))

(declare-fun b!7530001 () Bool)

(declare-fun e!4487855 () Bool)

(declare-fun tp!2188916 () Bool)

(assert (=> b!7530001 (= e!4487855 (and tp_is_empty!50065 tp!2188916))))

(declare-fun b!7530002 () Bool)

(declare-fun tp!2188912 () Bool)

(assert (=> b!7530002 (= e!4487851 tp!2188912)))

(declare-fun b!7530003 () Bool)

(declare-fun res!3017902 () Bool)

(assert (=> b!7530003 (=> res!3017902 e!4487850)))

(declare-fun lt!2640197 () Int)

(declare-fun lt!2640195 () Int)

(assert (=> b!7530003 (= res!3017902 (not (= lt!2640197 lt!2640195)))))

(declare-fun b!7530004 () Bool)

(declare-fun tp!2188914 () Bool)

(declare-fun tp!2188917 () Bool)

(assert (=> b!7530004 (= e!4487854 (and tp!2188914 tp!2188917))))

(declare-fun b!7530005 () Bool)

(assert (=> b!7530005 (= e!4487857 e!4487852)))

(declare-fun res!3017904 () Bool)

(assert (=> b!7530005 (=> (not res!3017904) (not e!4487852))))

(assert (=> b!7530005 (= res!3017904 (>= lt!2640195 lt!2640197))))

(declare-fun size!42351 (List!72738) Int)

(assert (=> b!7530005 (= lt!2640197 (size!42351 testedP!423))))

(assert (=> b!7530005 (= lt!2640195 (size!42351 knownP!30))))

(declare-fun b!7530006 () Bool)

(declare-fun res!3017900 () Bool)

(assert (=> b!7530006 (=> (not res!3017900) (not e!4487852))))

(assert (=> b!7530006 (= res!3017900 (matchR!9457 baseR!101 knownP!30))))

(declare-fun res!3017903 () Bool)

(assert (=> start!728548 (=> (not res!3017903) (not e!4487857))))

(assert (=> start!728548 (= res!3017903 (validRegex!10283 baseR!101))))

(assert (=> start!728548 e!4487857))

(assert (=> start!728548 e!4487851))

(declare-fun e!4487856 () Bool)

(assert (=> start!728548 e!4487856))

(declare-fun e!4487853 () Bool)

(assert (=> start!728548 e!4487853))

(assert (=> start!728548 e!4487855))

(assert (=> start!728548 e!4487854))

(declare-fun b!7529996 () Bool)

(declare-fun res!3017897 () Bool)

(assert (=> b!7529996 (=> res!3017897 e!4487850)))

(declare-fun lostCause!1647 (Regex!19855) Bool)

(assert (=> b!7529996 (= res!3017897 (lostCause!1647 r!24333))))

(declare-fun b!7530007 () Bool)

(declare-fun res!3017895 () Bool)

(assert (=> b!7530007 (=> (not res!3017895) (not e!4487857))))

(assert (=> b!7530007 (= res!3017895 (isPrefix!6061 testedP!423 input!7874))))

(declare-fun b!7530008 () Bool)

(declare-fun tp!2188915 () Bool)

(assert (=> b!7530008 (= e!4487853 (and tp_is_empty!50065 tp!2188915))))

(declare-fun b!7530009 () Bool)

(assert (=> b!7530009 (= e!4487850 true)))

(declare-fun lt!2640198 () Bool)

(assert (=> b!7530009 (= lt!2640198 (matchR!9457 baseR!101 testedP!423))))

(assert (=> b!7530009 (= testedP!423 knownP!30)))

(declare-fun lt!2640194 () Unit!166624)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1515 (List!72738 List!72738 List!72738) Unit!166624)

(assert (=> b!7530009 (= lt!2640194 (lemmaIsPrefixSameLengthThenSameList!1515 testedP!423 knownP!30 input!7874))))

(declare-fun b!7530010 () Bool)

(declare-fun tp!2188913 () Bool)

(declare-fun tp!2188909 () Bool)

(assert (=> b!7530010 (= e!4487851 (and tp!2188913 tp!2188909))))

(declare-fun b!7530011 () Bool)

(assert (=> b!7530011 (= e!4487851 tp_is_empty!50065)))

(declare-fun b!7530012 () Bool)

(declare-fun tp!2188911 () Bool)

(assert (=> b!7530012 (= e!4487856 (and tp_is_empty!50065 tp!2188911))))

(declare-fun b!7530013 () Bool)

(declare-fun tp!2188908 () Bool)

(declare-fun tp!2188910 () Bool)

(assert (=> b!7530013 (= e!4487854 (and tp!2188908 tp!2188910))))

(assert (= (and start!728548 res!3017903) b!7530000))

(assert (= (and b!7530000 res!3017898) b!7530007))

(assert (= (and b!7530007 res!3017895) b!7529997))

(assert (= (and b!7529997 res!3017896) b!7530005))

(assert (= (and b!7530005 res!3017904) b!7530006))

(assert (= (and b!7530006 res!3017900) b!7529994))

(assert (= (and b!7529994 (not res!3017901)) b!7529999))

(assert (= (and b!7529999 (not res!3017899)) b!7529996))

(assert (= (and b!7529996 (not res!3017897)) b!7530003))

(assert (= (and b!7530003 (not res!3017902)) b!7530009))

(get-info :version)

(assert (= (and start!728548 ((_ is ElementMatch!19855) baseR!101)) b!7530011))

(assert (= (and start!728548 ((_ is Concat!28700) baseR!101)) b!7530010))

(assert (= (and start!728548 ((_ is Star!19855) baseR!101)) b!7530002))

(assert (= (and start!728548 ((_ is Union!19855) baseR!101)) b!7529995))

(assert (= (and start!728548 ((_ is Cons!72614) input!7874)) b!7530012))

(assert (= (and start!728548 ((_ is Cons!72614) knownP!30)) b!7530008))

(assert (= (and start!728548 ((_ is Cons!72614) testedP!423)) b!7530001))

(assert (= (and start!728548 ((_ is ElementMatch!19855) r!24333)) b!7529998))

(assert (= (and start!728548 ((_ is Concat!28700) r!24333)) b!7530013))

(assert (= (and start!728548 ((_ is Star!19855) r!24333)) b!7529993))

(assert (= (and start!728548 ((_ is Union!19855) r!24333)) b!7530004))

(declare-fun m!8103596 () Bool)

(assert (=> b!7530006 m!8103596))

(declare-fun m!8103598 () Bool)

(assert (=> b!7530007 m!8103598))

(declare-fun m!8103600 () Bool)

(assert (=> b!7529997 m!8103600))

(declare-fun m!8103602 () Bool)

(assert (=> b!7530000 m!8103602))

(declare-fun m!8103604 () Bool)

(assert (=> b!7529994 m!8103604))

(assert (=> b!7529994 m!8103604))

(declare-fun m!8103606 () Bool)

(assert (=> b!7529994 m!8103606))

(declare-fun m!8103608 () Bool)

(assert (=> b!7529994 m!8103608))

(declare-fun m!8103610 () Bool)

(assert (=> b!7529994 m!8103610))

(declare-fun m!8103612 () Bool)

(assert (=> b!7529996 m!8103612))

(declare-fun m!8103614 () Bool)

(assert (=> start!728548 m!8103614))

(declare-fun m!8103616 () Bool)

(assert (=> b!7529999 m!8103616))

(declare-fun m!8103618 () Bool)

(assert (=> b!7530009 m!8103618))

(declare-fun m!8103620 () Bool)

(assert (=> b!7530009 m!8103620))

(declare-fun m!8103622 () Bool)

(assert (=> b!7530005 m!8103622))

(declare-fun m!8103624 () Bool)

(assert (=> b!7530005 m!8103624))

(check-sat (not b!7529994) (not b!7529993) (not b!7530012) (not b!7530008) (not b!7529997) (not b!7529999) (not start!728548) (not b!7529995) (not b!7530010) tp_is_empty!50065 (not b!7530013) (not b!7530004) (not b!7530001) (not b!7530009) (not b!7529996) (not b!7530007) (not b!7530005) (not b!7530002) (not b!7530000) (not b!7530006))
(check-sat)
