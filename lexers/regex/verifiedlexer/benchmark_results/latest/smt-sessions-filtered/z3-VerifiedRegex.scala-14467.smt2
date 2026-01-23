; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753008 () Bool)

(assert start!753008)

(declare-fun b!8003955 () Bool)

(declare-fun e!4714921 () Bool)

(declare-fun e!4714919 () Bool)

(assert (=> b!8003955 (= e!4714921 e!4714919)))

(declare-fun res!3165000 () Bool)

(assert (=> b!8003955 (=> (not res!3165000) (not e!4714919))))

(declare-datatypes ((C!43568 0))(
  ( (C!43569 (val!32332 Int)) )
))
(declare-datatypes ((List!74844 0))(
  ( (Nil!74720) (Cons!74720 (h!81168 C!43568) (t!390587 List!74844)) )
))
(declare-fun lt!2714113 () List!74844)

(declare-fun totalInput!1349 () List!74844)

(assert (=> b!8003955 (= res!3165000 (= lt!2714113 totalInput!1349))))

(declare-fun testedP!353 () List!74844)

(declare-fun testedSuffix!271 () List!74844)

(declare-fun ++!18441 (List!74844 List!74844) List!74844)

(assert (=> b!8003955 (= lt!2714113 (++!18441 testedP!353 testedSuffix!271))))

(declare-fun b!8003956 () Bool)

(declare-fun e!4714922 () Bool)

(declare-fun tp!2394664 () Bool)

(assert (=> b!8003956 (= e!4714922 tp!2394664)))

(declare-fun b!8003957 () Bool)

(declare-fun e!4714920 () Bool)

(assert (=> b!8003957 (= e!4714920 true)))

(declare-fun lt!2714117 () Int)

(declare-fun lt!2714116 () Int)

(assert (=> b!8003957 (<= lt!2714117 lt!2714116)))

(declare-datatypes ((Unit!170624 0))(
  ( (Unit!170625) )
))
(declare-fun lt!2714115 () Unit!170624)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1170 (List!74844 List!74844) Unit!170624)

(assert (=> b!8003957 (= lt!2714115 (lemmaIsPrefixThenSmallerEqSize!1170 testedP!353 totalInput!1349))))

(declare-fun b!8003958 () Bool)

(declare-fun e!4714917 () Bool)

(declare-fun e!4714918 () Bool)

(assert (=> b!8003958 (= e!4714917 (not e!4714918))))

(declare-fun res!3164999 () Bool)

(assert (=> b!8003958 (=> res!3164999 e!4714918)))

(declare-fun isPrefix!6669 (List!74844 List!74844) Bool)

(assert (=> b!8003958 (= res!3164999 (not (isPrefix!6669 testedP!353 totalInput!1349)))))

(assert (=> b!8003958 (isPrefix!6669 testedP!353 lt!2714113)))

(declare-fun lt!2714114 () Unit!170624)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3900 (List!74844 List!74844) Unit!170624)

(assert (=> b!8003958 (= lt!2714114 (lemmaConcatTwoListThenFirstIsPrefix!3900 testedP!353 testedSuffix!271))))

(declare-fun b!8003959 () Bool)

(declare-fun tp!2394666 () Bool)

(declare-fun tp!2394661 () Bool)

(assert (=> b!8003959 (= e!4714922 (and tp!2394666 tp!2394661))))

(declare-fun b!8003960 () Bool)

(declare-fun e!4714924 () Bool)

(assert (=> b!8003960 (= e!4714919 e!4714924)))

(declare-fun res!3164995 () Bool)

(assert (=> b!8003960 (=> (not res!3164995) (not e!4714924))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8003960 (= res!3164995 (= testedPSize!271 lt!2714117))))

(declare-fun size!43517 (List!74844) Int)

(assert (=> b!8003960 (= lt!2714117 (size!43517 testedP!353))))

(declare-fun b!8003961 () Bool)

(assert (=> b!8003961 (= e!4714918 e!4714920)))

(declare-fun res!3164994 () Bool)

(assert (=> b!8003961 (=> res!3164994 e!4714920)))

(declare-datatypes ((Regex!21615 0))(
  ( (ElementMatch!21615 (c!1469440 C!43568)) (Concat!30614 (regOne!43742 Regex!21615) (regTwo!43742 Regex!21615)) (EmptyExpr!21615) (Star!21615 (reg!21944 Regex!21615)) (EmptyLang!21615) (Union!21615 (regOne!43743 Regex!21615) (regTwo!43743 Regex!21615)) )
))
(declare-fun r!15422 () Regex!21615)

(declare-fun lostCause!2012 (Regex!21615) Bool)

(assert (=> b!8003961 (= res!3164994 (lostCause!2012 r!15422))))

(declare-fun lt!2714111 () List!74844)

(assert (=> b!8003961 (and (= testedSuffix!271 lt!2714111) (= lt!2714111 testedSuffix!271))))

(declare-fun lt!2714112 () Unit!170624)

(declare-fun lemmaSamePrefixThenSameSuffix!3032 (List!74844 List!74844 List!74844 List!74844 List!74844) Unit!170624)

(assert (=> b!8003961 (= lt!2714112 (lemmaSamePrefixThenSameSuffix!3032 testedP!353 testedSuffix!271 testedP!353 lt!2714111 totalInput!1349))))

(declare-fun getSuffix!3866 (List!74844 List!74844) List!74844)

(assert (=> b!8003961 (= lt!2714111 (getSuffix!3866 totalInput!1349 testedP!353))))

(declare-fun b!8003962 () Bool)

(declare-fun e!4714916 () Bool)

(declare-fun tp_is_empty!53773 () Bool)

(declare-fun tp!2394665 () Bool)

(assert (=> b!8003962 (= e!4714916 (and tp_is_empty!53773 tp!2394665))))

(declare-fun b!8003963 () Bool)

(declare-fun e!4714925 () Bool)

(declare-fun tp!2394662 () Bool)

(assert (=> b!8003963 (= e!4714925 (and tp_is_empty!53773 tp!2394662))))

(declare-fun b!8003964 () Bool)

(declare-fun tp!2394659 () Bool)

(declare-fun tp!2394660 () Bool)

(assert (=> b!8003964 (= e!4714922 (and tp!2394659 tp!2394660))))

(declare-fun b!8003966 () Bool)

(declare-fun e!4714923 () Bool)

(declare-fun tp!2394663 () Bool)

(assert (=> b!8003966 (= e!4714923 (and tp_is_empty!53773 tp!2394663))))

(declare-fun b!8003967 () Bool)

(assert (=> b!8003967 (= e!4714922 tp_is_empty!53773)))

(declare-fun b!8003968 () Bool)

(declare-fun res!3164996 () Bool)

(assert (=> b!8003968 (=> res!3164996 e!4714920)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8003968 (= res!3164996 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8003965 () Bool)

(assert (=> b!8003965 (= e!4714924 e!4714917)))

(declare-fun res!3164998 () Bool)

(assert (=> b!8003965 (=> (not res!3164998) (not e!4714917))))

(assert (=> b!8003965 (= res!3164998 (= totalInputSize!629 lt!2714116))))

(assert (=> b!8003965 (= lt!2714116 (size!43517 totalInput!1349))))

(declare-fun res!3164997 () Bool)

(assert (=> start!753008 (=> (not res!3164997) (not e!4714921))))

(declare-fun validRegex!11919 (Regex!21615) Bool)

(assert (=> start!753008 (= res!3164997 (validRegex!11919 r!15422))))

(assert (=> start!753008 e!4714921))

(assert (=> start!753008 e!4714925))

(assert (=> start!753008 true))

(assert (=> start!753008 e!4714916))

(assert (=> start!753008 e!4714922))

(assert (=> start!753008 e!4714923))

(assert (= (and start!753008 res!3164997) b!8003955))

(assert (= (and b!8003955 res!3165000) b!8003960))

(assert (= (and b!8003960 res!3164995) b!8003965))

(assert (= (and b!8003965 res!3164998) b!8003958))

(assert (= (and b!8003958 (not res!3164999)) b!8003961))

(assert (= (and b!8003961 (not res!3164994)) b!8003968))

(assert (= (and b!8003968 (not res!3164996)) b!8003957))

(get-info :version)

(assert (= (and start!753008 ((_ is Cons!74720) totalInput!1349)) b!8003963))

(assert (= (and start!753008 ((_ is Cons!74720) testedSuffix!271)) b!8003962))

(assert (= (and start!753008 ((_ is ElementMatch!21615) r!15422)) b!8003967))

(assert (= (and start!753008 ((_ is Concat!30614) r!15422)) b!8003959))

(assert (= (and start!753008 ((_ is Star!21615) r!15422)) b!8003956))

(assert (= (and start!753008 ((_ is Union!21615) r!15422)) b!8003964))

(assert (= (and start!753008 ((_ is Cons!74720) testedP!353)) b!8003966))

(declare-fun m!8369728 () Bool)

(assert (=> b!8003961 m!8369728))

(declare-fun m!8369730 () Bool)

(assert (=> b!8003961 m!8369730))

(declare-fun m!8369732 () Bool)

(assert (=> b!8003961 m!8369732))

(declare-fun m!8369734 () Bool)

(assert (=> b!8003965 m!8369734))

(declare-fun m!8369736 () Bool)

(assert (=> b!8003957 m!8369736))

(declare-fun m!8369738 () Bool)

(assert (=> b!8003960 m!8369738))

(declare-fun m!8369740 () Bool)

(assert (=> start!753008 m!8369740))

(declare-fun m!8369742 () Bool)

(assert (=> b!8003955 m!8369742))

(declare-fun m!8369744 () Bool)

(assert (=> b!8003958 m!8369744))

(declare-fun m!8369746 () Bool)

(assert (=> b!8003958 m!8369746))

(declare-fun m!8369748 () Bool)

(assert (=> b!8003958 m!8369748))

(check-sat (not b!8003966) (not b!8003962) tp_is_empty!53773 (not b!8003960) (not b!8003965) (not b!8003959) (not b!8003961) (not b!8003955) (not b!8003958) (not b!8003956) (not b!8003957) (not b!8003963) (not b!8003964) (not start!753008))
(check-sat)
