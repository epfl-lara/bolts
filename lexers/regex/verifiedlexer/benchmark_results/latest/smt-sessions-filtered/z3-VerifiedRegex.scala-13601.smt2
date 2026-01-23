; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731012 () Bool)

(assert start!731012)

(declare-fun res!3032152 () Bool)

(declare-fun e!4506310 () Bool)

(assert (=> start!731012 (=> (not res!3032152) (not e!4506310))))

(declare-datatypes ((C!40320 0))(
  ( (C!40321 (val!30600 Int)) )
))
(declare-datatypes ((Regex!19997 0))(
  ( (ElementMatch!19997 (c!1396632 C!40320)) (Concat!28842 (regOne!40506 Regex!19997) (regTwo!40506 Regex!19997)) (EmptyExpr!19997) (Star!19997 (reg!20326 Regex!19997)) (EmptyLang!19997) (Union!19997 (regOne!40507 Regex!19997) (regTwo!40507 Regex!19997)) )
))
(declare-fun baseR!100 () Regex!19997)

(declare-fun validRegex!10425 (Regex!19997) Bool)

(assert (=> start!731012 (= res!3032152 (validRegex!10425 baseR!100))))

(assert (=> start!731012 e!4506310))

(declare-fun e!4506312 () Bool)

(assert (=> start!731012 e!4506312))

(declare-fun e!4506311 () Bool)

(assert (=> start!731012 e!4506311))

(declare-fun e!4506309 () Bool)

(assert (=> start!731012 e!4506309))

(declare-fun e!4506308 () Bool)

(assert (=> start!731012 e!4506308))

(declare-fun b!7568878 () Bool)

(declare-fun tp!2204749 () Bool)

(declare-fun tp!2204752 () Bool)

(assert (=> b!7568878 (= e!4506311 (and tp!2204749 tp!2204752))))

(declare-fun b!7568879 () Bool)

(declare-fun tp!2204753 () Bool)

(assert (=> b!7568879 (= e!4506311 tp!2204753)))

(declare-fun b!7568880 () Bool)

(declare-fun tp!2204747 () Bool)

(declare-fun tp!2204750 () Bool)

(assert (=> b!7568880 (= e!4506311 (and tp!2204747 tp!2204750))))

(declare-fun b!7568881 () Bool)

(declare-fun res!3032147 () Bool)

(assert (=> b!7568881 (=> (not res!3032147) (not e!4506310))))

(declare-datatypes ((List!72880 0))(
  ( (Nil!72756) (Cons!72756 (h!79204 C!40320) (t!387615 List!72880)) )
))
(declare-fun testedP!418 () List!72880)

(declare-fun input!7855 () List!72880)

(declare-fun isPrefix!6203 (List!72880 List!72880) Bool)

(assert (=> b!7568881 (= res!3032147 (isPrefix!6203 testedP!418 input!7855))))

(declare-fun b!7568882 () Bool)

(declare-fun tp!2204757 () Bool)

(declare-fun tp!2204755 () Bool)

(assert (=> b!7568882 (= e!4506312 (and tp!2204757 tp!2204755))))

(declare-fun b!7568883 () Bool)

(declare-fun tp!2204754 () Bool)

(assert (=> b!7568883 (= e!4506312 tp!2204754)))

(declare-fun b!7568884 () Bool)

(declare-fun tp!2204756 () Bool)

(declare-fun tp!2204751 () Bool)

(assert (=> b!7568884 (= e!4506312 (and tp!2204756 tp!2204751))))

(declare-fun b!7568885 () Bool)

(declare-fun res!3032150 () Bool)

(assert (=> b!7568885 (=> (not res!3032150) (not e!4506310))))

(declare-fun matchR!9597 (Regex!19997 List!72880) Bool)

(assert (=> b!7568885 (= res!3032150 (matchR!9597 baseR!100 testedP!418))))

(declare-fun b!7568886 () Bool)

(declare-fun e!4506307 () Bool)

(assert (=> b!7568886 (= e!4506310 e!4506307)))

(declare-fun res!3032153 () Bool)

(assert (=> b!7568886 (=> (not res!3032153) (not e!4506307))))

(declare-fun lt!2650924 () Regex!19997)

(declare-fun r!24129 () Regex!19997)

(assert (=> b!7568886 (= res!3032153 (= lt!2650924 r!24129))))

(declare-fun derivative!523 (Regex!19997 List!72880) Regex!19997)

(assert (=> b!7568886 (= lt!2650924 (derivative!523 baseR!100 testedP!418))))

(declare-fun b!7568887 () Bool)

(declare-fun tp_is_empty!50349 () Bool)

(declare-fun tp!2204748 () Bool)

(assert (=> b!7568887 (= e!4506308 (and tp_is_empty!50349 tp!2204748))))

(declare-fun b!7568888 () Bool)

(assert (=> b!7568888 (= e!4506311 tp_is_empty!50349)))

(declare-fun b!7568889 () Bool)

(declare-fun res!3032148 () Bool)

(assert (=> b!7568889 (=> (not res!3032148) (not e!4506310))))

(assert (=> b!7568889 (= res!3032148 (validRegex!10425 r!24129))))

(declare-fun b!7568890 () Bool)

(declare-fun res!3032149 () Bool)

(declare-fun e!4506313 () Bool)

(assert (=> b!7568890 (=> res!3032149 e!4506313)))

(declare-fun nullable!8723 (Regex!19997) Bool)

(assert (=> b!7568890 (= res!3032149 (not (nullable!8723 r!24129)))))

(declare-fun b!7568891 () Bool)

(assert (=> b!7568891 (= e!4506312 tp_is_empty!50349)))

(declare-fun b!7568892 () Bool)

(assert (=> b!7568892 (= e!4506307 (not e!4506313))))

(declare-fun res!3032154 () Bool)

(assert (=> b!7568892 (=> res!3032154 e!4506313)))

(assert (=> b!7568892 (= res!3032154 (not (matchR!9597 r!24129 Nil!72756)))))

(assert (=> b!7568892 (matchR!9597 lt!2650924 Nil!72756)))

(declare-datatypes ((Unit!166946 0))(
  ( (Unit!166947) )
))
(declare-fun lt!2650925 () Unit!166946)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!266 (Regex!19997 List!72880) Unit!166946)

(assert (=> b!7568892 (= lt!2650925 (lemmaMatchRIsSameAsWholeDerivativeAndNil!266 baseR!100 testedP!418))))

(declare-fun b!7568893 () Bool)

(assert (=> b!7568893 (= e!4506313 true)))

(assert (=> b!7568893 false))

(declare-fun lt!2650926 () Unit!166946)

(declare-fun lemmaLostCauseCannotMatch!59 (Regex!19997 List!72880) Unit!166946)

(assert (=> b!7568893 (= lt!2650926 (lemmaLostCauseCannotMatch!59 r!24129 Nil!72756))))

(declare-fun b!7568894 () Bool)

(declare-fun tp!2204746 () Bool)

(assert (=> b!7568894 (= e!4506309 (and tp_is_empty!50349 tp!2204746))))

(declare-fun b!7568895 () Bool)

(declare-fun res!3032151 () Bool)

(assert (=> b!7568895 (=> res!3032151 e!4506313)))

(declare-fun lostCause!1777 (Regex!19997) Bool)

(assert (=> b!7568895 (= res!3032151 (not (lostCause!1777 r!24129)))))

(assert (= (and start!731012 res!3032152) b!7568889))

(assert (= (and b!7568889 res!3032148) b!7568881))

(assert (= (and b!7568881 res!3032147) b!7568885))

(assert (= (and b!7568885 res!3032150) b!7568886))

(assert (= (and b!7568886 res!3032153) b!7568892))

(assert (= (and b!7568892 (not res!3032154)) b!7568890))

(assert (= (and b!7568890 (not res!3032149)) b!7568895))

(assert (= (and b!7568895 (not res!3032151)) b!7568893))

(get-info :version)

(assert (= (and start!731012 ((_ is ElementMatch!19997) baseR!100)) b!7568891))

(assert (= (and start!731012 ((_ is Concat!28842) baseR!100)) b!7568882))

(assert (= (and start!731012 ((_ is Star!19997) baseR!100)) b!7568883))

(assert (= (and start!731012 ((_ is Union!19997) baseR!100)) b!7568884))

(assert (= (and start!731012 ((_ is ElementMatch!19997) r!24129)) b!7568888))

(assert (= (and start!731012 ((_ is Concat!28842) r!24129)) b!7568878))

(assert (= (and start!731012 ((_ is Star!19997) r!24129)) b!7568879))

(assert (= (and start!731012 ((_ is Union!19997) r!24129)) b!7568880))

(assert (= (and start!731012 ((_ is Cons!72756) testedP!418)) b!7568894))

(assert (= (and start!731012 ((_ is Cons!72756) input!7855)) b!7568887))

(declare-fun m!8131032 () Bool)

(assert (=> b!7568892 m!8131032))

(declare-fun m!8131034 () Bool)

(assert (=> b!7568892 m!8131034))

(declare-fun m!8131036 () Bool)

(assert (=> b!7568892 m!8131036))

(declare-fun m!8131038 () Bool)

(assert (=> start!731012 m!8131038))

(declare-fun m!8131040 () Bool)

(assert (=> b!7568885 m!8131040))

(declare-fun m!8131042 () Bool)

(assert (=> b!7568889 m!8131042))

(declare-fun m!8131044 () Bool)

(assert (=> b!7568886 m!8131044))

(declare-fun m!8131046 () Bool)

(assert (=> b!7568890 m!8131046))

(declare-fun m!8131048 () Bool)

(assert (=> b!7568881 m!8131048))

(declare-fun m!8131050 () Bool)

(assert (=> b!7568895 m!8131050))

(declare-fun m!8131052 () Bool)

(assert (=> b!7568893 m!8131052))

(check-sat (not b!7568893) (not b!7568883) (not b!7568890) (not b!7568880) (not b!7568884) (not b!7568894) (not b!7568882) tp_is_empty!50349 (not b!7568889) (not b!7568881) (not b!7568878) (not b!7568885) (not start!731012) (not b!7568892) (not b!7568887) (not b!7568895) (not b!7568886) (not b!7568879))
(check-sat)
