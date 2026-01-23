; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753680 () Bool)

(assert start!753680)

(declare-fun b!8008961 () Bool)

(declare-fun e!4717956 () Bool)

(declare-fun e!4717960 () Bool)

(assert (=> b!8008961 (= e!4717956 e!4717960)))

(declare-fun res!3166994 () Bool)

(assert (=> b!8008961 (=> res!3166994 e!4717960)))

(declare-datatypes ((C!43636 0))(
  ( (C!43637 (val!32366 Int)) )
))
(declare-datatypes ((Regex!21649 0))(
  ( (ElementMatch!21649 (c!1470188 C!43636)) (Concat!30648 (regOne!43810 Regex!21649) (regTwo!43810 Regex!21649)) (EmptyExpr!21649) (Star!21649 (reg!21978 Regex!21649)) (EmptyLang!21649) (Union!21649 (regOne!43811 Regex!21649) (regTwo!43811 Regex!21649)) )
))
(declare-fun r!15422 () Regex!21649)

(declare-fun nullable!9707 (Regex!21649) Bool)

(assert (=> b!8008961 (= res!3166994 (nullable!9707 r!15422))))

(declare-datatypes ((List!74878 0))(
  ( (Nil!74754) (Cons!74754 (h!81202 C!43636) (t!390621 List!74878)) )
))
(declare-fun lt!2716314 () List!74878)

(declare-fun lt!2716321 () List!74878)

(declare-fun totalInput!1349 () List!74878)

(declare-fun ++!18475 (List!74878 List!74878) List!74878)

(assert (=> b!8008961 (= (++!18475 lt!2716314 lt!2716321) totalInput!1349)))

(declare-fun testedP!353 () List!74878)

(declare-datatypes ((Unit!170754 0))(
  ( (Unit!170755) )
))
(declare-fun lt!2716325 () Unit!170754)

(declare-fun lt!2716326 () C!43636)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3584 (List!74878 C!43636 List!74878 List!74878) Unit!170754)

(assert (=> b!8008961 (= lt!2716325 (lemmaMoveElementToOtherListKeepsConcatEq!3584 testedP!353 lt!2716326 lt!2716321 totalInput!1349))))

(declare-fun testedSuffix!271 () List!74878)

(declare-fun tail!15864 (List!74878) List!74878)

(assert (=> b!8008961 (= lt!2716321 (tail!15864 testedSuffix!271))))

(declare-fun lt!2716319 () List!74878)

(declare-fun isPrefix!6703 (List!74878 List!74878) Bool)

(declare-fun head!16341 (List!74878) C!43636)

(assert (=> b!8008961 (isPrefix!6703 (++!18475 testedP!353 (Cons!74754 (head!16341 lt!2716319) Nil!74754)) totalInput!1349)))

(declare-fun lt!2716328 () Unit!170754)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1400 (List!74878 List!74878) Unit!170754)

(assert (=> b!8008961 (= lt!2716328 (lemmaAddHeadSuffixToPrefixStillPrefix!1400 testedP!353 totalInput!1349))))

(assert (=> b!8008961 (= lt!2716314 (++!18475 testedP!353 (Cons!74754 lt!2716326 Nil!74754)))))

(assert (=> b!8008961 (= lt!2716326 (head!16341 testedSuffix!271))))

(declare-fun b!8008962 () Bool)

(declare-fun e!4717957 () Bool)

(declare-fun e!4717967 () Bool)

(assert (=> b!8008962 (= e!4717957 e!4717967)))

(declare-fun res!3166992 () Bool)

(assert (=> b!8008962 (=> (not res!3166992) (not e!4717967))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2716329 () Int)

(assert (=> b!8008962 (= res!3166992 (= testedPSize!271 lt!2716329))))

(declare-fun size!43551 (List!74878) Int)

(assert (=> b!8008962 (= lt!2716329 (size!43551 testedP!353))))

(declare-fun b!8008963 () Bool)

(declare-fun e!4717958 () Unit!170754)

(declare-fun Unit!170756 () Unit!170754)

(assert (=> b!8008963 (= e!4717958 Unit!170756)))

(declare-fun lt!2716318 () Unit!170754)

(declare-fun lemmaIsPrefixRefl!4155 (List!74878 List!74878) Unit!170754)

(assert (=> b!8008963 (= lt!2716318 (lemmaIsPrefixRefl!4155 totalInput!1349 totalInput!1349))))

(assert (=> b!8008963 (isPrefix!6703 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716323 () Unit!170754)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1729 (List!74878 List!74878 List!74878) Unit!170754)

(assert (=> b!8008963 (= lt!2716323 (lemmaIsPrefixSameLengthThenSameList!1729 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8008963 false))

(declare-fun b!8008964 () Bool)

(declare-fun e!4717962 () Bool)

(declare-fun e!4717959 () Bool)

(assert (=> b!8008964 (= e!4717962 e!4717959)))

(declare-fun res!3166989 () Bool)

(assert (=> b!8008964 (=> res!3166989 e!4717959)))

(declare-fun lostCause!2046 (Regex!21649) Bool)

(assert (=> b!8008964 (= res!3166989 (lostCause!2046 r!15422))))

(assert (=> b!8008964 (and (= testedSuffix!271 lt!2716319) (= lt!2716319 testedSuffix!271))))

(declare-fun lt!2716315 () Unit!170754)

(declare-fun lemmaSamePrefixThenSameSuffix!3066 (List!74878 List!74878 List!74878 List!74878 List!74878) Unit!170754)

(assert (=> b!8008964 (= lt!2716315 (lemmaSamePrefixThenSameSuffix!3066 testedP!353 testedSuffix!271 testedP!353 lt!2716319 totalInput!1349))))

(declare-fun getSuffix!3900 (List!74878 List!74878) List!74878)

(assert (=> b!8008964 (= lt!2716319 (getSuffix!3900 totalInput!1349 testedP!353))))

(declare-fun b!8008965 () Bool)

(declare-fun e!4717964 () Bool)

(declare-fun tp!2396457 () Bool)

(assert (=> b!8008965 (= e!4717964 tp!2396457)))

(declare-fun b!8008966 () Bool)

(assert (=> b!8008966 (= e!4717959 e!4717956)))

(declare-fun res!3166995 () Bool)

(assert (=> b!8008966 (=> res!3166995 e!4717956)))

(declare-fun lt!2716322 () Int)

(assert (=> b!8008966 (= res!3166995 (>= lt!2716329 lt!2716322))))

(declare-fun lt!2716327 () Unit!170754)

(assert (=> b!8008966 (= lt!2716327 e!4717958)))

(declare-fun c!1470187 () Bool)

(assert (=> b!8008966 (= c!1470187 (= lt!2716329 lt!2716322))))

(assert (=> b!8008966 (<= lt!2716329 lt!2716322)))

(declare-fun lt!2716317 () Unit!170754)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1204 (List!74878 List!74878) Unit!170754)

(assert (=> b!8008966 (= lt!2716317 (lemmaIsPrefixThenSmallerEqSize!1204 testedP!353 totalInput!1349))))

(declare-fun b!8008967 () Bool)

(assert (=> b!8008967 (= e!4717960 true)))

(declare-fun lt!2716320 () Bool)

(declare-fun validRegex!11953 (Regex!21649) Bool)

(declare-fun derivativeStep!6628 (Regex!21649 C!43636) Regex!21649)

(assert (=> b!8008967 (= lt!2716320 (validRegex!11953 (derivativeStep!6628 r!15422 lt!2716326)))))

(declare-fun b!8008968 () Bool)

(declare-fun res!3166988 () Bool)

(assert (=> b!8008968 (=> res!3166988 e!4717959)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8008968 (= res!3166988 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8008969 () Bool)

(declare-fun e!4717966 () Bool)

(declare-fun tp_is_empty!53841 () Bool)

(declare-fun tp!2396454 () Bool)

(assert (=> b!8008969 (= e!4717966 (and tp_is_empty!53841 tp!2396454))))

(declare-fun res!3166990 () Bool)

(declare-fun e!4717965 () Bool)

(assert (=> start!753680 (=> (not res!3166990) (not e!4717965))))

(assert (=> start!753680 (= res!3166990 (validRegex!11953 r!15422))))

(assert (=> start!753680 e!4717965))

(assert (=> start!753680 e!4717966))

(assert (=> start!753680 true))

(declare-fun e!4717955 () Bool)

(assert (=> start!753680 e!4717955))

(assert (=> start!753680 e!4717964))

(declare-fun e!4717961 () Bool)

(assert (=> start!753680 e!4717961))

(declare-fun b!8008970 () Bool)

(assert (=> b!8008970 (= e!4717964 tp_is_empty!53841)))

(declare-fun b!8008971 () Bool)

(declare-fun Unit!170757 () Unit!170754)

(assert (=> b!8008971 (= e!4717958 Unit!170757)))

(declare-fun b!8008972 () Bool)

(declare-fun tp!2396456 () Bool)

(assert (=> b!8008972 (= e!4717961 (and tp_is_empty!53841 tp!2396456))))

(declare-fun b!8008973 () Bool)

(assert (=> b!8008973 (= e!4717965 e!4717957)))

(declare-fun res!3166993 () Bool)

(assert (=> b!8008973 (=> (not res!3166993) (not e!4717957))))

(declare-fun lt!2716316 () List!74878)

(assert (=> b!8008973 (= res!3166993 (= lt!2716316 totalInput!1349))))

(assert (=> b!8008973 (= lt!2716316 (++!18475 testedP!353 testedSuffix!271))))

(declare-fun b!8008974 () Bool)

(declare-fun tp!2396453 () Bool)

(declare-fun tp!2396458 () Bool)

(assert (=> b!8008974 (= e!4717964 (and tp!2396453 tp!2396458))))

(declare-fun b!8008975 () Bool)

(declare-fun tp!2396455 () Bool)

(declare-fun tp!2396452 () Bool)

(assert (=> b!8008975 (= e!4717964 (and tp!2396455 tp!2396452))))

(declare-fun b!8008976 () Bool)

(declare-fun e!4717963 () Bool)

(assert (=> b!8008976 (= e!4717963 (not e!4717962))))

(declare-fun res!3166996 () Bool)

(assert (=> b!8008976 (=> res!3166996 e!4717962)))

(assert (=> b!8008976 (= res!3166996 (not (isPrefix!6703 testedP!353 totalInput!1349)))))

(assert (=> b!8008976 (isPrefix!6703 testedP!353 lt!2716316)))

(declare-fun lt!2716324 () Unit!170754)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3934 (List!74878 List!74878) Unit!170754)

(assert (=> b!8008976 (= lt!2716324 (lemmaConcatTwoListThenFirstIsPrefix!3934 testedP!353 testedSuffix!271))))

(declare-fun b!8008977 () Bool)

(assert (=> b!8008977 (= e!4717967 e!4717963)))

(declare-fun res!3166991 () Bool)

(assert (=> b!8008977 (=> (not res!3166991) (not e!4717963))))

(assert (=> b!8008977 (= res!3166991 (= totalInputSize!629 lt!2716322))))

(assert (=> b!8008977 (= lt!2716322 (size!43551 totalInput!1349))))

(declare-fun b!8008978 () Bool)

(declare-fun tp!2396451 () Bool)

(assert (=> b!8008978 (= e!4717955 (and tp_is_empty!53841 tp!2396451))))

(assert (= (and start!753680 res!3166990) b!8008973))

(assert (= (and b!8008973 res!3166993) b!8008962))

(assert (= (and b!8008962 res!3166992) b!8008977))

(assert (= (and b!8008977 res!3166991) b!8008976))

(assert (= (and b!8008976 (not res!3166996)) b!8008964))

(assert (= (and b!8008964 (not res!3166989)) b!8008968))

(assert (= (and b!8008968 (not res!3166988)) b!8008966))

(assert (= (and b!8008966 c!1470187) b!8008963))

(assert (= (and b!8008966 (not c!1470187)) b!8008971))

(assert (= (and b!8008966 (not res!3166995)) b!8008961))

(assert (= (and b!8008961 (not res!3166994)) b!8008967))

(get-info :version)

(assert (= (and start!753680 ((_ is Cons!74754) totalInput!1349)) b!8008969))

(assert (= (and start!753680 ((_ is Cons!74754) testedSuffix!271)) b!8008978))

(assert (= (and start!753680 ((_ is ElementMatch!21649) r!15422)) b!8008970))

(assert (= (and start!753680 ((_ is Concat!30648) r!15422)) b!8008974))

(assert (= (and start!753680 ((_ is Star!21649) r!15422)) b!8008965))

(assert (= (and start!753680 ((_ is Union!21649) r!15422)) b!8008975))

(assert (= (and start!753680 ((_ is Cons!74754) testedP!353)) b!8008972))

(declare-fun m!8373814 () Bool)

(assert (=> start!753680 m!8373814))

(declare-fun m!8373816 () Bool)

(assert (=> b!8008966 m!8373816))

(declare-fun m!8373818 () Bool)

(assert (=> b!8008964 m!8373818))

(declare-fun m!8373820 () Bool)

(assert (=> b!8008964 m!8373820))

(declare-fun m!8373822 () Bool)

(assert (=> b!8008964 m!8373822))

(declare-fun m!8373824 () Bool)

(assert (=> b!8008967 m!8373824))

(assert (=> b!8008967 m!8373824))

(declare-fun m!8373826 () Bool)

(assert (=> b!8008967 m!8373826))

(declare-fun m!8373828 () Bool)

(assert (=> b!8008961 m!8373828))

(declare-fun m!8373830 () Bool)

(assert (=> b!8008961 m!8373830))

(declare-fun m!8373832 () Bool)

(assert (=> b!8008961 m!8373832))

(declare-fun m!8373834 () Bool)

(assert (=> b!8008961 m!8373834))

(declare-fun m!8373836 () Bool)

(assert (=> b!8008961 m!8373836))

(declare-fun m!8373838 () Bool)

(assert (=> b!8008961 m!8373838))

(declare-fun m!8373840 () Bool)

(assert (=> b!8008961 m!8373840))

(declare-fun m!8373842 () Bool)

(assert (=> b!8008961 m!8373842))

(declare-fun m!8373844 () Bool)

(assert (=> b!8008961 m!8373844))

(declare-fun m!8373846 () Bool)

(assert (=> b!8008961 m!8373846))

(assert (=> b!8008961 m!8373830))

(declare-fun m!8373848 () Bool)

(assert (=> b!8008962 m!8373848))

(declare-fun m!8373850 () Bool)

(assert (=> b!8008963 m!8373850))

(declare-fun m!8373852 () Bool)

(assert (=> b!8008963 m!8373852))

(declare-fun m!8373854 () Bool)

(assert (=> b!8008963 m!8373854))

(declare-fun m!8373856 () Bool)

(assert (=> b!8008976 m!8373856))

(declare-fun m!8373858 () Bool)

(assert (=> b!8008976 m!8373858))

(declare-fun m!8373860 () Bool)

(assert (=> b!8008976 m!8373860))

(declare-fun m!8373862 () Bool)

(assert (=> b!8008977 m!8373862))

(declare-fun m!8373864 () Bool)

(assert (=> b!8008973 m!8373864))

(check-sat (not b!8008966) (not b!8008973) (not b!8008964) (not b!8008961) (not b!8008967) tp_is_empty!53841 (not b!8008976) (not b!8008963) (not b!8008962) (not b!8008974) (not b!8008965) (not b!8008969) (not b!8008975) (not b!8008972) (not b!8008977) (not start!753680) (not b!8008978))
(check-sat)
