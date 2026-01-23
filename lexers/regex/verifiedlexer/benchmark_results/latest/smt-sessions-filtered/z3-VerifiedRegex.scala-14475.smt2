; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753200 () Bool)

(assert start!753200)

(declare-fun b!8005472 () Bool)

(declare-fun e!4715886 () Bool)

(declare-fun tp!2395287 () Bool)

(assert (=> b!8005472 (= e!4715886 tp!2395287)))

(declare-fun b!8005474 () Bool)

(declare-datatypes ((Unit!170682 0))(
  ( (Unit!170683) )
))
(declare-fun e!4715887 () Unit!170682)

(declare-fun Unit!170684 () Unit!170682)

(assert (=> b!8005474 (= e!4715887 Unit!170684)))

(declare-fun lt!2714898 () Unit!170682)

(declare-datatypes ((C!43600 0))(
  ( (C!43601 (val!32348 Int)) )
))
(declare-datatypes ((List!74860 0))(
  ( (Nil!74736) (Cons!74736 (h!81184 C!43600) (t!390603 List!74860)) )
))
(declare-fun totalInput!1349 () List!74860)

(declare-fun lemmaIsPrefixRefl!4137 (List!74860 List!74860) Unit!170682)

(assert (=> b!8005474 (= lt!2714898 (lemmaIsPrefixRefl!4137 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6685 (List!74860 List!74860) Bool)

(assert (=> b!8005474 (isPrefix!6685 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714904 () Unit!170682)

(declare-fun testedP!353 () List!74860)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1711 (List!74860 List!74860 List!74860) Unit!170682)

(assert (=> b!8005474 (= lt!2714904 (lemmaIsPrefixSameLengthThenSameList!1711 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8005474 false))

(declare-fun b!8005475 () Bool)

(declare-fun e!4715889 () Bool)

(declare-fun e!4715884 () Bool)

(assert (=> b!8005475 (= e!4715889 (not e!4715884))))

(declare-fun res!3165663 () Bool)

(assert (=> b!8005475 (=> res!3165663 e!4715884)))

(assert (=> b!8005475 (= res!3165663 (not (isPrefix!6685 testedP!353 totalInput!1349)))))

(declare-fun lt!2714909 () List!74860)

(assert (=> b!8005475 (isPrefix!6685 testedP!353 lt!2714909)))

(declare-fun lt!2714901 () Unit!170682)

(declare-fun testedSuffix!271 () List!74860)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3916 (List!74860 List!74860) Unit!170682)

(assert (=> b!8005475 (= lt!2714901 (lemmaConcatTwoListThenFirstIsPrefix!3916 testedP!353 testedSuffix!271))))

(declare-fun b!8005476 () Bool)

(declare-fun e!4715888 () Bool)

(assert (=> b!8005476 (= e!4715888 true)))

(declare-fun lt!2714907 () List!74860)

(declare-fun lt!2714902 () List!74860)

(declare-fun ++!18457 (List!74860 List!74860) List!74860)

(assert (=> b!8005476 (= (++!18457 lt!2714907 lt!2714902) totalInput!1349)))

(declare-fun lt!2714910 () Unit!170682)

(declare-fun lt!2714900 () C!43600)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3566 (List!74860 C!43600 List!74860 List!74860) Unit!170682)

(assert (=> b!8005476 (= lt!2714910 (lemmaMoveElementToOtherListKeepsConcatEq!3566 testedP!353 lt!2714900 lt!2714902 totalInput!1349))))

(declare-fun tail!15846 (List!74860) List!74860)

(assert (=> b!8005476 (= lt!2714902 (tail!15846 testedSuffix!271))))

(declare-fun lt!2714906 () List!74860)

(declare-fun head!16323 (List!74860) C!43600)

(assert (=> b!8005476 (isPrefix!6685 (++!18457 testedP!353 (Cons!74736 (head!16323 lt!2714906) Nil!74736)) totalInput!1349)))

(declare-fun lt!2714899 () Unit!170682)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1382 (List!74860 List!74860) Unit!170682)

(assert (=> b!8005476 (= lt!2714899 (lemmaAddHeadSuffixToPrefixStillPrefix!1382 testedP!353 totalInput!1349))))

(assert (=> b!8005476 (= lt!2714907 (++!18457 testedP!353 (Cons!74736 lt!2714900 Nil!74736)))))

(assert (=> b!8005476 (= lt!2714900 (head!16323 testedSuffix!271))))

(declare-fun b!8005477 () Bool)

(declare-fun tp!2395288 () Bool)

(declare-fun tp!2395290 () Bool)

(assert (=> b!8005477 (= e!4715886 (and tp!2395288 tp!2395290))))

(declare-fun b!8005478 () Bool)

(declare-fun e!4715890 () Bool)

(assert (=> b!8005478 (= e!4715884 e!4715890)))

(declare-fun res!3165664 () Bool)

(assert (=> b!8005478 (=> res!3165664 e!4715890)))

(declare-datatypes ((Regex!21631 0))(
  ( (ElementMatch!21631 (c!1469604 C!43600)) (Concat!30630 (regOne!43774 Regex!21631) (regTwo!43774 Regex!21631)) (EmptyExpr!21631) (Star!21631 (reg!21960 Regex!21631)) (EmptyLang!21631) (Union!21631 (regOne!43775 Regex!21631) (regTwo!43775 Regex!21631)) )
))
(declare-fun r!15422 () Regex!21631)

(declare-fun lostCause!2028 (Regex!21631) Bool)

(assert (=> b!8005478 (= res!3165664 (lostCause!2028 r!15422))))

(assert (=> b!8005478 (and (= testedSuffix!271 lt!2714906) (= lt!2714906 testedSuffix!271))))

(declare-fun lt!2714911 () Unit!170682)

(declare-fun lemmaSamePrefixThenSameSuffix!3048 (List!74860 List!74860 List!74860 List!74860 List!74860) Unit!170682)

(assert (=> b!8005478 (= lt!2714911 (lemmaSamePrefixThenSameSuffix!3048 testedP!353 testedSuffix!271 testedP!353 lt!2714906 totalInput!1349))))

(declare-fun getSuffix!3882 (List!74860 List!74860) List!74860)

(assert (=> b!8005478 (= lt!2714906 (getSuffix!3882 totalInput!1349 testedP!353))))

(declare-fun b!8005479 () Bool)

(declare-fun e!4715883 () Bool)

(assert (=> b!8005479 (= e!4715883 e!4715889)))

(declare-fun res!3165665 () Bool)

(assert (=> b!8005479 (=> (not res!3165665) (not e!4715889))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2714905 () Int)

(assert (=> b!8005479 (= res!3165665 (= totalInputSize!629 lt!2714905))))

(declare-fun size!43533 (List!74860) Int)

(assert (=> b!8005479 (= lt!2714905 (size!43533 totalInput!1349))))

(declare-fun b!8005480 () Bool)

(declare-fun tp_is_empty!53805 () Bool)

(assert (=> b!8005480 (= e!4715886 tp_is_empty!53805)))

(declare-fun b!8005481 () Bool)

(assert (=> b!8005481 (= e!4715890 e!4715888)))

(declare-fun res!3165666 () Bool)

(assert (=> b!8005481 (=> res!3165666 e!4715888)))

(declare-fun lt!2714897 () Int)

(assert (=> b!8005481 (= res!3165666 (>= lt!2714897 lt!2714905))))

(declare-fun lt!2714903 () Unit!170682)

(assert (=> b!8005481 (= lt!2714903 e!4715887)))

(declare-fun c!1469603 () Bool)

(assert (=> b!8005481 (= c!1469603 (= lt!2714897 lt!2714905))))

(assert (=> b!8005481 (<= lt!2714897 lt!2714905)))

(declare-fun lt!2714908 () Unit!170682)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1186 (List!74860 List!74860) Unit!170682)

(assert (=> b!8005481 (= lt!2714908 (lemmaIsPrefixThenSmallerEqSize!1186 testedP!353 totalInput!1349))))

(declare-fun b!8005482 () Bool)

(declare-fun e!4715891 () Bool)

(declare-fun e!4715893 () Bool)

(assert (=> b!8005482 (= e!4715891 e!4715893)))

(declare-fun res!3165659 () Bool)

(assert (=> b!8005482 (=> (not res!3165659) (not e!4715893))))

(assert (=> b!8005482 (= res!3165659 (= lt!2714909 totalInput!1349))))

(assert (=> b!8005482 (= lt!2714909 (++!18457 testedP!353 testedSuffix!271))))

(declare-fun b!8005483 () Bool)

(declare-fun e!4715892 () Bool)

(declare-fun tp!2395285 () Bool)

(assert (=> b!8005483 (= e!4715892 (and tp_is_empty!53805 tp!2395285))))

(declare-fun b!8005484 () Bool)

(declare-fun Unit!170685 () Unit!170682)

(assert (=> b!8005484 (= e!4715887 Unit!170685)))

(declare-fun b!8005485 () Bool)

(declare-fun tp!2395286 () Bool)

(declare-fun tp!2395284 () Bool)

(assert (=> b!8005485 (= e!4715886 (and tp!2395286 tp!2395284))))

(declare-fun b!8005486 () Bool)

(declare-fun e!4715882 () Bool)

(declare-fun tp!2395283 () Bool)

(assert (=> b!8005486 (= e!4715882 (and tp_is_empty!53805 tp!2395283))))

(declare-fun res!3165660 () Bool)

(assert (=> start!753200 (=> (not res!3165660) (not e!4715891))))

(declare-fun validRegex!11935 (Regex!21631) Bool)

(assert (=> start!753200 (= res!3165660 (validRegex!11935 r!15422))))

(assert (=> start!753200 e!4715891))

(assert (=> start!753200 e!4715882))

(assert (=> start!753200 true))

(assert (=> start!753200 e!4715892))

(assert (=> start!753200 e!4715886))

(declare-fun e!4715885 () Bool)

(assert (=> start!753200 e!4715885))

(declare-fun b!8005473 () Bool)

(declare-fun tp!2395289 () Bool)

(assert (=> b!8005473 (= e!4715885 (and tp_is_empty!53805 tp!2395289))))

(declare-fun b!8005487 () Bool)

(assert (=> b!8005487 (= e!4715893 e!4715883)))

(declare-fun res!3165662 () Bool)

(assert (=> b!8005487 (=> (not res!3165662) (not e!4715883))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8005487 (= res!3165662 (= testedPSize!271 lt!2714897))))

(assert (=> b!8005487 (= lt!2714897 (size!43533 testedP!353))))

(declare-fun b!8005488 () Bool)

(declare-fun res!3165661 () Bool)

(assert (=> b!8005488 (=> res!3165661 e!4715890)))

(assert (=> b!8005488 (= res!3165661 (= testedPSize!271 totalInputSize!629))))

(assert (= (and start!753200 res!3165660) b!8005482))

(assert (= (and b!8005482 res!3165659) b!8005487))

(assert (= (and b!8005487 res!3165662) b!8005479))

(assert (= (and b!8005479 res!3165665) b!8005475))

(assert (= (and b!8005475 (not res!3165663)) b!8005478))

(assert (= (and b!8005478 (not res!3165664)) b!8005488))

(assert (= (and b!8005488 (not res!3165661)) b!8005481))

(assert (= (and b!8005481 c!1469603) b!8005474))

(assert (= (and b!8005481 (not c!1469603)) b!8005484))

(assert (= (and b!8005481 (not res!3165666)) b!8005476))

(get-info :version)

(assert (= (and start!753200 ((_ is Cons!74736) totalInput!1349)) b!8005486))

(assert (= (and start!753200 ((_ is Cons!74736) testedSuffix!271)) b!8005483))

(assert (= (and start!753200 ((_ is ElementMatch!21631) r!15422)) b!8005480))

(assert (= (and start!753200 ((_ is Concat!30630) r!15422)) b!8005485))

(assert (= (and start!753200 ((_ is Star!21631) r!15422)) b!8005472))

(assert (= (and start!753200 ((_ is Union!21631) r!15422)) b!8005477))

(assert (= (and start!753200 ((_ is Cons!74736) testedP!353)) b!8005473))

(declare-fun m!8370860 () Bool)

(assert (=> b!8005478 m!8370860))

(declare-fun m!8370862 () Bool)

(assert (=> b!8005478 m!8370862))

(declare-fun m!8370864 () Bool)

(assert (=> b!8005478 m!8370864))

(declare-fun m!8370866 () Bool)

(assert (=> b!8005479 m!8370866))

(declare-fun m!8370868 () Bool)

(assert (=> b!8005487 m!8370868))

(declare-fun m!8370870 () Bool)

(assert (=> b!8005475 m!8370870))

(declare-fun m!8370872 () Bool)

(assert (=> b!8005475 m!8370872))

(declare-fun m!8370874 () Bool)

(assert (=> b!8005475 m!8370874))

(declare-fun m!8370876 () Bool)

(assert (=> b!8005482 m!8370876))

(declare-fun m!8370878 () Bool)

(assert (=> start!753200 m!8370878))

(declare-fun m!8370880 () Bool)

(assert (=> b!8005481 m!8370880))

(declare-fun m!8370882 () Bool)

(assert (=> b!8005476 m!8370882))

(declare-fun m!8370884 () Bool)

(assert (=> b!8005476 m!8370884))

(declare-fun m!8370886 () Bool)

(assert (=> b!8005476 m!8370886))

(declare-fun m!8370888 () Bool)

(assert (=> b!8005476 m!8370888))

(declare-fun m!8370890 () Bool)

(assert (=> b!8005476 m!8370890))

(declare-fun m!8370892 () Bool)

(assert (=> b!8005476 m!8370892))

(declare-fun m!8370894 () Bool)

(assert (=> b!8005476 m!8370894))

(declare-fun m!8370896 () Bool)

(assert (=> b!8005476 m!8370896))

(assert (=> b!8005476 m!8370888))

(declare-fun m!8370898 () Bool)

(assert (=> b!8005476 m!8370898))

(declare-fun m!8370900 () Bool)

(assert (=> b!8005474 m!8370900))

(declare-fun m!8370902 () Bool)

(assert (=> b!8005474 m!8370902))

(declare-fun m!8370904 () Bool)

(assert (=> b!8005474 m!8370904))

(check-sat (not start!753200) (not b!8005476) (not b!8005481) (not b!8005485) (not b!8005482) (not b!8005477) (not b!8005487) (not b!8005478) (not b!8005475) (not b!8005472) (not b!8005486) (not b!8005479) (not b!8005483) (not b!8005473) (not b!8005474) tp_is_empty!53805)
(check-sat)
