; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753684 () Bool)

(assert start!753684)

(declare-fun b!8009074 () Bool)

(declare-fun res!3167055 () Bool)

(declare-fun e!4718044 () Bool)

(assert (=> b!8009074 (=> res!3167055 e!4718044)))

(declare-datatypes ((C!43640 0))(
  ( (C!43641 (val!32368 Int)) )
))
(declare-datatypes ((Regex!21651 0))(
  ( (ElementMatch!21651 (c!1470196 C!43640)) (Concat!30650 (regOne!43814 Regex!21651) (regTwo!43814 Regex!21651)) (EmptyExpr!21651) (Star!21651 (reg!21980 Regex!21651)) (EmptyLang!21651) (Union!21651 (regOne!43815 Regex!21651) (regTwo!43815 Regex!21651)) )
))
(declare-fun r!15422 () Regex!21651)

(declare-fun lt!2716418 () C!43640)

(declare-fun validRegex!11955 (Regex!21651) Bool)

(declare-fun derivativeStep!6630 (Regex!21651 C!43640) Regex!21651)

(assert (=> b!8009074 (= res!3167055 (not (validRegex!11955 (derivativeStep!6630 r!15422 lt!2716418))))))

(declare-fun b!8009075 () Bool)

(declare-fun e!4718033 () Bool)

(declare-fun e!4718036 () Bool)

(assert (=> b!8009075 (= e!4718033 e!4718036)))

(declare-fun res!3167053 () Bool)

(assert (=> b!8009075 (=> res!3167053 e!4718036)))

(declare-fun lt!2716408 () Int)

(declare-fun lt!2716407 () Int)

(assert (=> b!8009075 (= res!3167053 (>= lt!2716408 lt!2716407))))

(declare-datatypes ((Unit!170762 0))(
  ( (Unit!170763) )
))
(declare-fun lt!2716417 () Unit!170762)

(declare-fun e!4718041 () Unit!170762)

(assert (=> b!8009075 (= lt!2716417 e!4718041)))

(declare-fun c!1470195 () Bool)

(assert (=> b!8009075 (= c!1470195 (= lt!2716408 lt!2716407))))

(assert (=> b!8009075 (<= lt!2716408 lt!2716407)))

(declare-fun lt!2716411 () Unit!170762)

(declare-datatypes ((List!74880 0))(
  ( (Nil!74756) (Cons!74756 (h!81204 C!43640) (t!390623 List!74880)) )
))
(declare-fun testedP!353 () List!74880)

(declare-fun totalInput!1349 () List!74880)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1206 (List!74880 List!74880) Unit!170762)

(assert (=> b!8009075 (= lt!2716411 (lemmaIsPrefixThenSmallerEqSize!1206 testedP!353 totalInput!1349))))

(declare-fun b!8009076 () Bool)

(declare-fun e!4718037 () Bool)

(declare-fun e!4718035 () Bool)

(assert (=> b!8009076 (= e!4718037 (not e!4718035))))

(declare-fun res!3167054 () Bool)

(assert (=> b!8009076 (=> res!3167054 e!4718035)))

(declare-fun isPrefix!6705 (List!74880 List!74880) Bool)

(assert (=> b!8009076 (= res!3167054 (not (isPrefix!6705 testedP!353 totalInput!1349)))))

(declare-fun lt!2716409 () List!74880)

(assert (=> b!8009076 (isPrefix!6705 testedP!353 lt!2716409)))

(declare-fun lt!2716406 () Unit!170762)

(declare-fun testedSuffix!271 () List!74880)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3936 (List!74880 List!74880) Unit!170762)

(assert (=> b!8009076 (= lt!2716406 (lemmaConcatTwoListThenFirstIsPrefix!3936 testedP!353 testedSuffix!271))))

(declare-fun b!8009077 () Bool)

(declare-fun e!4718038 () Bool)

(declare-fun tp_is_empty!53845 () Bool)

(declare-fun tp!2396499 () Bool)

(assert (=> b!8009077 (= e!4718038 (and tp_is_empty!53845 tp!2396499))))

(declare-fun b!8009078 () Bool)

(assert (=> b!8009078 (= e!4718036 e!4718044)))

(declare-fun res!3167048 () Bool)

(assert (=> b!8009078 (=> res!3167048 e!4718044)))

(declare-fun nullable!9709 (Regex!21651) Bool)

(assert (=> b!8009078 (= res!3167048 (nullable!9709 r!15422))))

(declare-fun lt!2716416 () List!74880)

(declare-fun lt!2716413 () List!74880)

(declare-fun ++!18477 (List!74880 List!74880) List!74880)

(assert (=> b!8009078 (= (++!18477 lt!2716416 lt!2716413) totalInput!1349)))

(declare-fun lt!2716412 () Unit!170762)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3586 (List!74880 C!43640 List!74880 List!74880) Unit!170762)

(assert (=> b!8009078 (= lt!2716412 (lemmaMoveElementToOtherListKeepsConcatEq!3586 testedP!353 lt!2716418 lt!2716413 totalInput!1349))))

(declare-fun tail!15866 (List!74880) List!74880)

(assert (=> b!8009078 (= lt!2716413 (tail!15866 testedSuffix!271))))

(declare-fun lt!2716415 () List!74880)

(declare-fun head!16343 (List!74880) C!43640)

(assert (=> b!8009078 (isPrefix!6705 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) totalInput!1349)))

(declare-fun lt!2716405 () Unit!170762)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1402 (List!74880 List!74880) Unit!170762)

(assert (=> b!8009078 (= lt!2716405 (lemmaAddHeadSuffixToPrefixStillPrefix!1402 testedP!353 totalInput!1349))))

(assert (=> b!8009078 (= lt!2716416 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)))))

(assert (=> b!8009078 (= lt!2716418 (head!16343 testedSuffix!271))))

(declare-fun b!8009079 () Bool)

(declare-fun e!4718039 () Bool)

(assert (=> b!8009079 (= e!4718039 tp_is_empty!53845)))

(declare-fun b!8009080 () Bool)

(declare-fun e!4718034 () Bool)

(assert (=> b!8009080 (= e!4718034 e!4718037)))

(declare-fun res!3167056 () Bool)

(assert (=> b!8009080 (=> (not res!3167056) (not e!4718037))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8009080 (= res!3167056 (= totalInputSize!629 lt!2716407))))

(declare-fun size!43553 (List!74880) Int)

(assert (=> b!8009080 (= lt!2716407 (size!43553 totalInput!1349))))

(declare-fun res!3167052 () Bool)

(declare-fun e!4718043 () Bool)

(assert (=> start!753684 (=> (not res!3167052) (not e!4718043))))

(assert (=> start!753684 (= res!3167052 (validRegex!11955 r!15422))))

(assert (=> start!753684 e!4718043))

(assert (=> start!753684 e!4718038))

(assert (=> start!753684 true))

(declare-fun e!4718045 () Bool)

(assert (=> start!753684 e!4718045))

(assert (=> start!753684 e!4718039))

(declare-fun e!4718040 () Bool)

(assert (=> start!753684 e!4718040))

(declare-fun b!8009081 () Bool)

(declare-fun res!3167050 () Bool)

(assert (=> b!8009081 (=> res!3167050 e!4718033)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8009081 (= res!3167050 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8009082 () Bool)

(declare-fun tp!2396506 () Bool)

(declare-fun tp!2396503 () Bool)

(assert (=> b!8009082 (= e!4718039 (and tp!2396506 tp!2396503))))

(declare-fun b!8009083 () Bool)

(assert (=> b!8009083 (= e!4718035 e!4718033)))

(declare-fun res!3167047 () Bool)

(assert (=> b!8009083 (=> res!3167047 e!4718033)))

(declare-fun lostCause!2048 (Regex!21651) Bool)

(assert (=> b!8009083 (= res!3167047 (lostCause!2048 r!15422))))

(assert (=> b!8009083 (and (= testedSuffix!271 lt!2716415) (= lt!2716415 testedSuffix!271))))

(declare-fun lt!2716419 () Unit!170762)

(declare-fun lemmaSamePrefixThenSameSuffix!3068 (List!74880 List!74880 List!74880 List!74880 List!74880) Unit!170762)

(assert (=> b!8009083 (= lt!2716419 (lemmaSamePrefixThenSameSuffix!3068 testedP!353 testedSuffix!271 testedP!353 lt!2716415 totalInput!1349))))

(declare-fun getSuffix!3902 (List!74880 List!74880) List!74880)

(assert (=> b!8009083 (= lt!2716415 (getSuffix!3902 totalInput!1349 testedP!353))))

(declare-fun b!8009084 () Bool)

(declare-fun tp!2396502 () Bool)

(assert (=> b!8009084 (= e!4718040 (and tp_is_empty!53845 tp!2396502))))

(declare-fun b!8009085 () Bool)

(declare-fun Unit!170764 () Unit!170762)

(assert (=> b!8009085 (= e!4718041 Unit!170764)))

(declare-fun lt!2716414 () Unit!170762)

(declare-fun lemmaIsPrefixRefl!4157 (List!74880 List!74880) Unit!170762)

(assert (=> b!8009085 (= lt!2716414 (lemmaIsPrefixRefl!4157 totalInput!1349 totalInput!1349))))

(assert (=> b!8009085 (isPrefix!6705 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716410 () Unit!170762)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1731 (List!74880 List!74880 List!74880) Unit!170762)

(assert (=> b!8009085 (= lt!2716410 (lemmaIsPrefixSameLengthThenSameList!1731 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8009085 false))

(declare-fun b!8009086 () Bool)

(declare-fun tp!2396504 () Bool)

(assert (=> b!8009086 (= e!4718045 (and tp_is_empty!53845 tp!2396504))))

(declare-fun b!8009087 () Bool)

(declare-fun tp!2396505 () Bool)

(declare-fun tp!2396500 () Bool)

(assert (=> b!8009087 (= e!4718039 (and tp!2396505 tp!2396500))))

(declare-fun b!8009088 () Bool)

(assert (=> b!8009088 (= e!4718044 (= (+ 1 testedPSize!271) (size!43553 lt!2716416)))))

(declare-fun b!8009089 () Bool)

(declare-fun e!4718042 () Bool)

(assert (=> b!8009089 (= e!4718042 e!4718034)))

(declare-fun res!3167049 () Bool)

(assert (=> b!8009089 (=> (not res!3167049) (not e!4718034))))

(assert (=> b!8009089 (= res!3167049 (= testedPSize!271 lt!2716408))))

(assert (=> b!8009089 (= lt!2716408 (size!43553 testedP!353))))

(declare-fun b!8009090 () Bool)

(declare-fun tp!2396501 () Bool)

(assert (=> b!8009090 (= e!4718039 tp!2396501)))

(declare-fun b!8009091 () Bool)

(assert (=> b!8009091 (= e!4718043 e!4718042)))

(declare-fun res!3167051 () Bool)

(assert (=> b!8009091 (=> (not res!3167051) (not e!4718042))))

(assert (=> b!8009091 (= res!3167051 (= lt!2716409 totalInput!1349))))

(assert (=> b!8009091 (= lt!2716409 (++!18477 testedP!353 testedSuffix!271))))

(declare-fun b!8009092 () Bool)

(declare-fun Unit!170765 () Unit!170762)

(assert (=> b!8009092 (= e!4718041 Unit!170765)))

(assert (= (and start!753684 res!3167052) b!8009091))

(assert (= (and b!8009091 res!3167051) b!8009089))

(assert (= (and b!8009089 res!3167049) b!8009080))

(assert (= (and b!8009080 res!3167056) b!8009076))

(assert (= (and b!8009076 (not res!3167054)) b!8009083))

(assert (= (and b!8009083 (not res!3167047)) b!8009081))

(assert (= (and b!8009081 (not res!3167050)) b!8009075))

(assert (= (and b!8009075 c!1470195) b!8009085))

(assert (= (and b!8009075 (not c!1470195)) b!8009092))

(assert (= (and b!8009075 (not res!3167053)) b!8009078))

(assert (= (and b!8009078 (not res!3167048)) b!8009074))

(assert (= (and b!8009074 (not res!3167055)) b!8009088))

(get-info :version)

(assert (= (and start!753684 ((_ is Cons!74756) totalInput!1349)) b!8009077))

(assert (= (and start!753684 ((_ is Cons!74756) testedSuffix!271)) b!8009086))

(assert (= (and start!753684 ((_ is ElementMatch!21651) r!15422)) b!8009079))

(assert (= (and start!753684 ((_ is Concat!30650) r!15422)) b!8009087))

(assert (= (and start!753684 ((_ is Star!21651) r!15422)) b!8009090))

(assert (= (and start!753684 ((_ is Union!21651) r!15422)) b!8009082))

(assert (= (and start!753684 ((_ is Cons!74756) testedP!353)) b!8009084))

(declare-fun m!8373920 () Bool)

(assert (=> b!8009074 m!8373920))

(assert (=> b!8009074 m!8373920))

(declare-fun m!8373922 () Bool)

(assert (=> b!8009074 m!8373922))

(declare-fun m!8373924 () Bool)

(assert (=> b!8009085 m!8373924))

(declare-fun m!8373926 () Bool)

(assert (=> b!8009085 m!8373926))

(declare-fun m!8373928 () Bool)

(assert (=> b!8009085 m!8373928))

(declare-fun m!8373930 () Bool)

(assert (=> b!8009080 m!8373930))

(declare-fun m!8373932 () Bool)

(assert (=> b!8009078 m!8373932))

(declare-fun m!8373934 () Bool)

(assert (=> b!8009078 m!8373934))

(declare-fun m!8373936 () Bool)

(assert (=> b!8009078 m!8373936))

(declare-fun m!8373938 () Bool)

(assert (=> b!8009078 m!8373938))

(declare-fun m!8373940 () Bool)

(assert (=> b!8009078 m!8373940))

(declare-fun m!8373942 () Bool)

(assert (=> b!8009078 m!8373942))

(declare-fun m!8373944 () Bool)

(assert (=> b!8009078 m!8373944))

(declare-fun m!8373946 () Bool)

(assert (=> b!8009078 m!8373946))

(declare-fun m!8373948 () Bool)

(assert (=> b!8009078 m!8373948))

(declare-fun m!8373950 () Bool)

(assert (=> b!8009078 m!8373950))

(assert (=> b!8009078 m!8373938))

(declare-fun m!8373952 () Bool)

(assert (=> b!8009083 m!8373952))

(declare-fun m!8373954 () Bool)

(assert (=> b!8009083 m!8373954))

(declare-fun m!8373956 () Bool)

(assert (=> b!8009083 m!8373956))

(declare-fun m!8373958 () Bool)

(assert (=> start!753684 m!8373958))

(declare-fun m!8373960 () Bool)

(assert (=> b!8009075 m!8373960))

(declare-fun m!8373962 () Bool)

(assert (=> b!8009088 m!8373962))

(declare-fun m!8373964 () Bool)

(assert (=> b!8009076 m!8373964))

(declare-fun m!8373966 () Bool)

(assert (=> b!8009076 m!8373966))

(declare-fun m!8373968 () Bool)

(assert (=> b!8009076 m!8373968))

(declare-fun m!8373970 () Bool)

(assert (=> b!8009089 m!8373970))

(declare-fun m!8373972 () Bool)

(assert (=> b!8009091 m!8373972))

(check-sat (not b!8009076) (not b!8009078) (not b!8009080) (not b!8009075) (not b!8009074) (not b!8009091) (not b!8009086) (not b!8009083) (not b!8009090) (not b!8009087) (not b!8009077) (not b!8009088) (not b!8009085) (not b!8009089) (not start!753684) (not b!8009084) (not b!8009082) tp_is_empty!53845)
(check-sat)
(get-model)

(declare-fun d!2388154 () Bool)

(declare-fun lt!2716422 () Int)

(assert (=> d!2388154 (>= lt!2716422 0)))

(declare-fun e!4718048 () Int)

(assert (=> d!2388154 (= lt!2716422 e!4718048)))

(declare-fun c!1470199 () Bool)

(assert (=> d!2388154 (= c!1470199 ((_ is Nil!74756) totalInput!1349))))

(assert (=> d!2388154 (= (size!43553 totalInput!1349) lt!2716422)))

(declare-fun b!8009097 () Bool)

(assert (=> b!8009097 (= e!4718048 0)))

(declare-fun b!8009098 () Bool)

(assert (=> b!8009098 (= e!4718048 (+ 1 (size!43553 (t!390623 totalInput!1349))))))

(assert (= (and d!2388154 c!1470199) b!8009097))

(assert (= (and d!2388154 (not c!1470199)) b!8009098))

(declare-fun m!8373974 () Bool)

(assert (=> b!8009098 m!8373974))

(assert (=> b!8009080 d!2388154))

(declare-fun b!8009108 () Bool)

(declare-fun e!4718054 () List!74880)

(assert (=> b!8009108 (= e!4718054 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) testedSuffix!271)))))

(declare-fun b!8009107 () Bool)

(assert (=> b!8009107 (= e!4718054 testedSuffix!271)))

(declare-fun d!2388156 () Bool)

(declare-fun e!4718053 () Bool)

(assert (=> d!2388156 e!4718053))

(declare-fun res!3167061 () Bool)

(assert (=> d!2388156 (=> (not res!3167061) (not e!4718053))))

(declare-fun lt!2716425 () List!74880)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15902 (List!74880) (InoxSet C!43640))

(assert (=> d!2388156 (= res!3167061 (= (content!15902 lt!2716425) ((_ map or) (content!15902 testedP!353) (content!15902 testedSuffix!271))))))

(assert (=> d!2388156 (= lt!2716425 e!4718054)))

(declare-fun c!1470202 () Bool)

(assert (=> d!2388156 (= c!1470202 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388156 (= (++!18477 testedP!353 testedSuffix!271) lt!2716425)))

(declare-fun b!8009109 () Bool)

(declare-fun res!3167062 () Bool)

(assert (=> b!8009109 (=> (not res!3167062) (not e!4718053))))

(assert (=> b!8009109 (= res!3167062 (= (size!43553 lt!2716425) (+ (size!43553 testedP!353) (size!43553 testedSuffix!271))))))

(declare-fun b!8009110 () Bool)

(assert (=> b!8009110 (= e!4718053 (or (not (= testedSuffix!271 Nil!74756)) (= lt!2716425 testedP!353)))))

(assert (= (and d!2388156 c!1470202) b!8009107))

(assert (= (and d!2388156 (not c!1470202)) b!8009108))

(assert (= (and d!2388156 res!3167061) b!8009109))

(assert (= (and b!8009109 res!3167062) b!8009110))

(declare-fun m!8373976 () Bool)

(assert (=> b!8009108 m!8373976))

(declare-fun m!8373978 () Bool)

(assert (=> d!2388156 m!8373978))

(declare-fun m!8373980 () Bool)

(assert (=> d!2388156 m!8373980))

(declare-fun m!8373982 () Bool)

(assert (=> d!2388156 m!8373982))

(declare-fun m!8373984 () Bool)

(assert (=> b!8009109 m!8373984))

(assert (=> b!8009109 m!8373970))

(declare-fun m!8373986 () Bool)

(assert (=> b!8009109 m!8373986))

(assert (=> b!8009091 d!2388156))

(declare-fun d!2388158 () Bool)

(declare-fun lt!2716426 () Int)

(assert (=> d!2388158 (>= lt!2716426 0)))

(declare-fun e!4718055 () Int)

(assert (=> d!2388158 (= lt!2716426 e!4718055)))

(declare-fun c!1470203 () Bool)

(assert (=> d!2388158 (= c!1470203 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388158 (= (size!43553 testedP!353) lt!2716426)))

(declare-fun b!8009111 () Bool)

(assert (=> b!8009111 (= e!4718055 0)))

(declare-fun b!8009112 () Bool)

(assert (=> b!8009112 (= e!4718055 (+ 1 (size!43553 (t!390623 testedP!353))))))

(assert (= (and d!2388158 c!1470203) b!8009111))

(assert (= (and d!2388158 (not c!1470203)) b!8009112))

(declare-fun m!8373988 () Bool)

(assert (=> b!8009112 m!8373988))

(assert (=> b!8009089 d!2388158))

(declare-fun d!2388162 () Bool)

(declare-fun lt!2716427 () Int)

(assert (=> d!2388162 (>= lt!2716427 0)))

(declare-fun e!4718056 () Int)

(assert (=> d!2388162 (= lt!2716427 e!4718056)))

(declare-fun c!1470204 () Bool)

(assert (=> d!2388162 (= c!1470204 ((_ is Nil!74756) lt!2716416))))

(assert (=> d!2388162 (= (size!43553 lt!2716416) lt!2716427)))

(declare-fun b!8009113 () Bool)

(assert (=> b!8009113 (= e!4718056 0)))

(declare-fun b!8009114 () Bool)

(assert (=> b!8009114 (= e!4718056 (+ 1 (size!43553 (t!390623 lt!2716416))))))

(assert (= (and d!2388162 c!1470204) b!8009113))

(assert (= (and d!2388162 (not c!1470204)) b!8009114))

(declare-fun m!8373990 () Bool)

(assert (=> b!8009114 m!8373990))

(assert (=> b!8009088 d!2388162))

(declare-fun d!2388164 () Bool)

(assert (=> d!2388164 (isPrefix!6705 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)) totalInput!1349)))

(declare-fun lt!2716432 () Unit!170762)

(declare-fun choose!60328 (List!74880 List!74880) Unit!170762)

(assert (=> d!2388164 (= lt!2716432 (choose!60328 testedP!353 totalInput!1349))))

(assert (=> d!2388164 (isPrefix!6705 testedP!353 totalInput!1349)))

(assert (=> d!2388164 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1402 testedP!353 totalInput!1349) lt!2716432)))

(declare-fun bs!1970809 () Bool)

(assert (= bs!1970809 d!2388164))

(assert (=> bs!1970809 m!8373964))

(assert (=> bs!1970809 m!8373956))

(declare-fun m!8373992 () Bool)

(assert (=> bs!1970809 m!8373992))

(declare-fun m!8373994 () Bool)

(assert (=> bs!1970809 m!8373994))

(assert (=> bs!1970809 m!8373956))

(declare-fun m!8373996 () Bool)

(assert (=> bs!1970809 m!8373996))

(declare-fun m!8373998 () Bool)

(assert (=> bs!1970809 m!8373998))

(assert (=> bs!1970809 m!8373992))

(assert (=> b!8009078 d!2388164))

(declare-fun d!2388166 () Bool)

(assert (=> d!2388166 (= (head!16343 testedSuffix!271) (h!81204 testedSuffix!271))))

(assert (=> b!8009078 d!2388166))

(declare-fun d!2388168 () Bool)

(declare-fun nullableFct!3835 (Regex!21651) Bool)

(assert (=> d!2388168 (= (nullable!9709 r!15422) (nullableFct!3835 r!15422))))

(declare-fun bs!1970810 () Bool)

(assert (= bs!1970810 d!2388168))

(declare-fun m!8374000 () Bool)

(assert (=> bs!1970810 m!8374000))

(assert (=> b!8009078 d!2388168))

(declare-fun b!8009124 () Bool)

(declare-fun e!4718062 () List!74880)

(assert (=> b!8009124 (= e!4718062 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) (Cons!74756 lt!2716418 Nil!74756))))))

(declare-fun b!8009123 () Bool)

(assert (=> b!8009123 (= e!4718062 (Cons!74756 lt!2716418 Nil!74756))))

(declare-fun d!2388170 () Bool)

(declare-fun e!4718061 () Bool)

(assert (=> d!2388170 e!4718061))

(declare-fun res!3167067 () Bool)

(assert (=> d!2388170 (=> (not res!3167067) (not e!4718061))))

(declare-fun lt!2716433 () List!74880)

(assert (=> d!2388170 (= res!3167067 (= (content!15902 lt!2716433) ((_ map or) (content!15902 testedP!353) (content!15902 (Cons!74756 lt!2716418 Nil!74756)))))))

(assert (=> d!2388170 (= lt!2716433 e!4718062)))

(declare-fun c!1470207 () Bool)

(assert (=> d!2388170 (= c!1470207 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388170 (= (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)) lt!2716433)))

(declare-fun b!8009125 () Bool)

(declare-fun res!3167068 () Bool)

(assert (=> b!8009125 (=> (not res!3167068) (not e!4718061))))

(assert (=> b!8009125 (= res!3167068 (= (size!43553 lt!2716433) (+ (size!43553 testedP!353) (size!43553 (Cons!74756 lt!2716418 Nil!74756)))))))

(declare-fun b!8009126 () Bool)

(assert (=> b!8009126 (= e!4718061 (or (not (= (Cons!74756 lt!2716418 Nil!74756) Nil!74756)) (= lt!2716433 testedP!353)))))

(assert (= (and d!2388170 c!1470207) b!8009123))

(assert (= (and d!2388170 (not c!1470207)) b!8009124))

(assert (= (and d!2388170 res!3167067) b!8009125))

(assert (= (and b!8009125 res!3167068) b!8009126))

(declare-fun m!8374002 () Bool)

(assert (=> b!8009124 m!8374002))

(declare-fun m!8374004 () Bool)

(assert (=> d!2388170 m!8374004))

(assert (=> d!2388170 m!8373980))

(declare-fun m!8374006 () Bool)

(assert (=> d!2388170 m!8374006))

(declare-fun m!8374008 () Bool)

(assert (=> b!8009125 m!8374008))

(assert (=> b!8009125 m!8373970))

(declare-fun m!8374010 () Bool)

(assert (=> b!8009125 m!8374010))

(assert (=> b!8009078 d!2388170))

(declare-fun b!8009132 () Bool)

(declare-fun e!4718066 () List!74880)

(assert (=> b!8009132 (= e!4718066 (Cons!74756 (h!81204 lt!2716416) (++!18477 (t!390623 lt!2716416) lt!2716413)))))

(declare-fun b!8009131 () Bool)

(assert (=> b!8009131 (= e!4718066 lt!2716413)))

(declare-fun d!2388172 () Bool)

(declare-fun e!4718065 () Bool)

(assert (=> d!2388172 e!4718065))

(declare-fun res!3167071 () Bool)

(assert (=> d!2388172 (=> (not res!3167071) (not e!4718065))))

(declare-fun lt!2716435 () List!74880)

(assert (=> d!2388172 (= res!3167071 (= (content!15902 lt!2716435) ((_ map or) (content!15902 lt!2716416) (content!15902 lt!2716413))))))

(assert (=> d!2388172 (= lt!2716435 e!4718066)))

(declare-fun c!1470209 () Bool)

(assert (=> d!2388172 (= c!1470209 ((_ is Nil!74756) lt!2716416))))

(assert (=> d!2388172 (= (++!18477 lt!2716416 lt!2716413) lt!2716435)))

(declare-fun b!8009133 () Bool)

(declare-fun res!3167072 () Bool)

(assert (=> b!8009133 (=> (not res!3167072) (not e!4718065))))

(assert (=> b!8009133 (= res!3167072 (= (size!43553 lt!2716435) (+ (size!43553 lt!2716416) (size!43553 lt!2716413))))))

(declare-fun b!8009134 () Bool)

(assert (=> b!8009134 (= e!4718065 (or (not (= lt!2716413 Nil!74756)) (= lt!2716435 lt!2716416)))))

(assert (= (and d!2388172 c!1470209) b!8009131))

(assert (= (and d!2388172 (not c!1470209)) b!8009132))

(assert (= (and d!2388172 res!3167071) b!8009133))

(assert (= (and b!8009133 res!3167072) b!8009134))

(declare-fun m!8374024 () Bool)

(assert (=> b!8009132 m!8374024))

(declare-fun m!8374026 () Bool)

(assert (=> d!2388172 m!8374026))

(declare-fun m!8374028 () Bool)

(assert (=> d!2388172 m!8374028))

(declare-fun m!8374030 () Bool)

(assert (=> d!2388172 m!8374030))

(declare-fun m!8374032 () Bool)

(assert (=> b!8009133 m!8374032))

(assert (=> b!8009133 m!8373962))

(declare-fun m!8374034 () Bool)

(assert (=> b!8009133 m!8374034))

(assert (=> b!8009078 d!2388172))

(declare-fun d!2388176 () Bool)

(assert (=> d!2388176 (= (++!18477 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)) lt!2716413) totalInput!1349)))

(declare-fun lt!2716441 () Unit!170762)

(declare-fun choose!60329 (List!74880 C!43640 List!74880 List!74880) Unit!170762)

(assert (=> d!2388176 (= lt!2716441 (choose!60329 testedP!353 lt!2716418 lt!2716413 totalInput!1349))))

(assert (=> d!2388176 (= (++!18477 testedP!353 (Cons!74756 lt!2716418 lt!2716413)) totalInput!1349)))

(assert (=> d!2388176 (= (lemmaMoveElementToOtherListKeepsConcatEq!3586 testedP!353 lt!2716418 lt!2716413 totalInput!1349) lt!2716441)))

(declare-fun bs!1970811 () Bool)

(assert (= bs!1970811 d!2388176))

(assert (=> bs!1970811 m!8373944))

(assert (=> bs!1970811 m!8373944))

(declare-fun m!8374038 () Bool)

(assert (=> bs!1970811 m!8374038))

(declare-fun m!8374040 () Bool)

(assert (=> bs!1970811 m!8374040))

(declare-fun m!8374042 () Bool)

(assert (=> bs!1970811 m!8374042))

(assert (=> b!8009078 d!2388176))

(declare-fun d!2388180 () Bool)

(assert (=> d!2388180 (= (head!16343 lt!2716415) (h!81204 lt!2716415))))

(assert (=> b!8009078 d!2388180))

(declare-fun d!2388182 () Bool)

(assert (=> d!2388182 (= (tail!15866 testedSuffix!271) (t!390623 testedSuffix!271))))

(assert (=> b!8009078 d!2388182))

(declare-fun e!4718077 () Bool)

(declare-fun b!8009152 () Bool)

(assert (=> b!8009152 (= e!4718077 (>= (size!43553 totalInput!1349) (size!43553 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(declare-fun b!8009149 () Bool)

(declare-fun e!4718076 () Bool)

(declare-fun e!4718078 () Bool)

(assert (=> b!8009149 (= e!4718076 e!4718078)))

(declare-fun res!3167084 () Bool)

(assert (=> b!8009149 (=> (not res!3167084) (not e!4718078))))

(assert (=> b!8009149 (= res!3167084 (not ((_ is Nil!74756) totalInput!1349)))))

(declare-fun d!2388184 () Bool)

(assert (=> d!2388184 e!4718077))

(declare-fun res!3167081 () Bool)

(assert (=> d!2388184 (=> res!3167081 e!4718077)))

(declare-fun lt!2716450 () Bool)

(assert (=> d!2388184 (= res!3167081 (not lt!2716450))))

(assert (=> d!2388184 (= lt!2716450 e!4718076)))

(declare-fun res!3167083 () Bool)

(assert (=> d!2388184 (=> res!3167083 e!4718076)))

(assert (=> d!2388184 (= res!3167083 ((_ is Nil!74756) (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(assert (=> d!2388184 (= (isPrefix!6705 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) totalInput!1349) lt!2716450)))

(declare-fun b!8009151 () Bool)

(assert (=> b!8009151 (= e!4718078 (isPrefix!6705 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) (tail!15866 totalInput!1349)))))

(declare-fun b!8009150 () Bool)

(declare-fun res!3167082 () Bool)

(assert (=> b!8009150 (=> (not res!3167082) (not e!4718078))))

(assert (=> b!8009150 (= res!3167082 (= (head!16343 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) (head!16343 totalInput!1349)))))

(assert (= (and d!2388184 (not res!3167083)) b!8009149))

(assert (= (and b!8009149 res!3167084) b!8009150))

(assert (= (and b!8009150 res!3167082) b!8009151))

(assert (= (and d!2388184 (not res!3167081)) b!8009152))

(assert (=> b!8009152 m!8373930))

(assert (=> b!8009152 m!8373938))

(declare-fun m!8374058 () Bool)

(assert (=> b!8009152 m!8374058))

(assert (=> b!8009151 m!8373938))

(declare-fun m!8374060 () Bool)

(assert (=> b!8009151 m!8374060))

(declare-fun m!8374062 () Bool)

(assert (=> b!8009151 m!8374062))

(assert (=> b!8009151 m!8374060))

(assert (=> b!8009151 m!8374062))

(declare-fun m!8374064 () Bool)

(assert (=> b!8009151 m!8374064))

(assert (=> b!8009150 m!8373938))

(declare-fun m!8374066 () Bool)

(assert (=> b!8009150 m!8374066))

(declare-fun m!8374068 () Bool)

(assert (=> b!8009150 m!8374068))

(assert (=> b!8009078 d!2388184))

(declare-fun b!8009158 () Bool)

(declare-fun e!4718082 () List!74880)

(assert (=> b!8009158 (= e!4718082 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(declare-fun b!8009157 () Bool)

(assert (=> b!8009157 (= e!4718082 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))

(declare-fun d!2388192 () Bool)

(declare-fun e!4718081 () Bool)

(assert (=> d!2388192 e!4718081))

(declare-fun res!3167087 () Bool)

(assert (=> d!2388192 (=> (not res!3167087) (not e!4718081))))

(declare-fun lt!2716452 () List!74880)

(assert (=> d!2388192 (= res!3167087 (= (content!15902 lt!2716452) ((_ map or) (content!15902 testedP!353) (content!15902 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(assert (=> d!2388192 (= lt!2716452 e!4718082)))

(declare-fun c!1470214 () Bool)

(assert (=> d!2388192 (= c!1470214 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388192 (= (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) lt!2716452)))

(declare-fun b!8009159 () Bool)

(declare-fun res!3167088 () Bool)

(assert (=> b!8009159 (=> (not res!3167088) (not e!4718081))))

(assert (=> b!8009159 (= res!3167088 (= (size!43553 lt!2716452) (+ (size!43553 testedP!353) (size!43553 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(declare-fun b!8009160 () Bool)

(assert (=> b!8009160 (= e!4718081 (or (not (= (Cons!74756 (head!16343 lt!2716415) Nil!74756) Nil!74756)) (= lt!2716452 testedP!353)))))

(assert (= (and d!2388192 c!1470214) b!8009157))

(assert (= (and d!2388192 (not c!1470214)) b!8009158))

(assert (= (and d!2388192 res!3167087) b!8009159))

(assert (= (and b!8009159 res!3167088) b!8009160))

(declare-fun m!8374080 () Bool)

(assert (=> b!8009158 m!8374080))

(declare-fun m!8374082 () Bool)

(assert (=> d!2388192 m!8374082))

(assert (=> d!2388192 m!8373980))

(declare-fun m!8374084 () Bool)

(assert (=> d!2388192 m!8374084))

(declare-fun m!8374086 () Bool)

(assert (=> b!8009159 m!8374086))

(assert (=> b!8009159 m!8373970))

(declare-fun m!8374088 () Bool)

(assert (=> b!8009159 m!8374088))

(assert (=> b!8009078 d!2388192))

(declare-fun b!8009164 () Bool)

(declare-fun e!4718084 () Bool)

(assert (=> b!8009164 (= e!4718084 (>= (size!43553 totalInput!1349) (size!43553 testedP!353)))))

(declare-fun b!8009161 () Bool)

(declare-fun e!4718083 () Bool)

(declare-fun e!4718085 () Bool)

(assert (=> b!8009161 (= e!4718083 e!4718085)))

(declare-fun res!3167092 () Bool)

(assert (=> b!8009161 (=> (not res!3167092) (not e!4718085))))

(assert (=> b!8009161 (= res!3167092 (not ((_ is Nil!74756) totalInput!1349)))))

(declare-fun d!2388198 () Bool)

(assert (=> d!2388198 e!4718084))

(declare-fun res!3167089 () Bool)

(assert (=> d!2388198 (=> res!3167089 e!4718084)))

(declare-fun lt!2716453 () Bool)

(assert (=> d!2388198 (= res!3167089 (not lt!2716453))))

(assert (=> d!2388198 (= lt!2716453 e!4718083)))

(declare-fun res!3167091 () Bool)

(assert (=> d!2388198 (=> res!3167091 e!4718083)))

(assert (=> d!2388198 (= res!3167091 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388198 (= (isPrefix!6705 testedP!353 totalInput!1349) lt!2716453)))

(declare-fun b!8009163 () Bool)

(assert (=> b!8009163 (= e!4718085 (isPrefix!6705 (tail!15866 testedP!353) (tail!15866 totalInput!1349)))))

(declare-fun b!8009162 () Bool)

(declare-fun res!3167090 () Bool)

(assert (=> b!8009162 (=> (not res!3167090) (not e!4718085))))

(assert (=> b!8009162 (= res!3167090 (= (head!16343 testedP!353) (head!16343 totalInput!1349)))))

(assert (= (and d!2388198 (not res!3167091)) b!8009161))

(assert (= (and b!8009161 res!3167092) b!8009162))

(assert (= (and b!8009162 res!3167090) b!8009163))

(assert (= (and d!2388198 (not res!3167089)) b!8009164))

(assert (=> b!8009164 m!8373930))

(assert (=> b!8009164 m!8373970))

(declare-fun m!8374092 () Bool)

(assert (=> b!8009163 m!8374092))

(assert (=> b!8009163 m!8374062))

(assert (=> b!8009163 m!8374092))

(assert (=> b!8009163 m!8374062))

(declare-fun m!8374094 () Bool)

(assert (=> b!8009163 m!8374094))

(declare-fun m!8374096 () Bool)

(assert (=> b!8009162 m!8374096))

(assert (=> b!8009162 m!8374068))

(assert (=> b!8009076 d!2388198))

(declare-fun b!8009168 () Bool)

(declare-fun e!4718087 () Bool)

(assert (=> b!8009168 (= e!4718087 (>= (size!43553 lt!2716409) (size!43553 testedP!353)))))

(declare-fun b!8009165 () Bool)

(declare-fun e!4718086 () Bool)

(declare-fun e!4718088 () Bool)

(assert (=> b!8009165 (= e!4718086 e!4718088)))

(declare-fun res!3167096 () Bool)

(assert (=> b!8009165 (=> (not res!3167096) (not e!4718088))))

(assert (=> b!8009165 (= res!3167096 (not ((_ is Nil!74756) lt!2716409)))))

(declare-fun d!2388202 () Bool)

(assert (=> d!2388202 e!4718087))

(declare-fun res!3167093 () Bool)

(assert (=> d!2388202 (=> res!3167093 e!4718087)))

(declare-fun lt!2716454 () Bool)

(assert (=> d!2388202 (= res!3167093 (not lt!2716454))))

(assert (=> d!2388202 (= lt!2716454 e!4718086)))

(declare-fun res!3167095 () Bool)

(assert (=> d!2388202 (=> res!3167095 e!4718086)))

(assert (=> d!2388202 (= res!3167095 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388202 (= (isPrefix!6705 testedP!353 lt!2716409) lt!2716454)))

(declare-fun b!8009167 () Bool)

(assert (=> b!8009167 (= e!4718088 (isPrefix!6705 (tail!15866 testedP!353) (tail!15866 lt!2716409)))))

(declare-fun b!8009166 () Bool)

(declare-fun res!3167094 () Bool)

(assert (=> b!8009166 (=> (not res!3167094) (not e!4718088))))

(assert (=> b!8009166 (= res!3167094 (= (head!16343 testedP!353) (head!16343 lt!2716409)))))

(assert (= (and d!2388202 (not res!3167095)) b!8009165))

(assert (= (and b!8009165 res!3167096) b!8009166))

(assert (= (and b!8009166 res!3167094) b!8009167))

(assert (= (and d!2388202 (not res!3167093)) b!8009168))

(declare-fun m!8374098 () Bool)

(assert (=> b!8009168 m!8374098))

(assert (=> b!8009168 m!8373970))

(assert (=> b!8009167 m!8374092))

(declare-fun m!8374100 () Bool)

(assert (=> b!8009167 m!8374100))

(assert (=> b!8009167 m!8374092))

(assert (=> b!8009167 m!8374100))

(declare-fun m!8374102 () Bool)

(assert (=> b!8009167 m!8374102))

(assert (=> b!8009166 m!8374096))

(declare-fun m!8374104 () Bool)

(assert (=> b!8009166 m!8374104))

(assert (=> b!8009076 d!2388202))

(declare-fun d!2388204 () Bool)

(assert (=> d!2388204 (isPrefix!6705 testedP!353 (++!18477 testedP!353 testedSuffix!271))))

(declare-fun lt!2716459 () Unit!170762)

(declare-fun choose!60330 (List!74880 List!74880) Unit!170762)

(assert (=> d!2388204 (= lt!2716459 (choose!60330 testedP!353 testedSuffix!271))))

(assert (=> d!2388204 (= (lemmaConcatTwoListThenFirstIsPrefix!3936 testedP!353 testedSuffix!271) lt!2716459)))

(declare-fun bs!1970815 () Bool)

(assert (= bs!1970815 d!2388204))

(assert (=> bs!1970815 m!8373972))

(assert (=> bs!1970815 m!8373972))

(declare-fun m!8374106 () Bool)

(assert (=> bs!1970815 m!8374106))

(declare-fun m!8374108 () Bool)

(assert (=> bs!1970815 m!8374108))

(assert (=> b!8009076 d!2388204))

(declare-fun d!2388206 () Bool)

(assert (=> d!2388206 (isPrefix!6705 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716463 () Unit!170762)

(declare-fun choose!60331 (List!74880 List!74880) Unit!170762)

(assert (=> d!2388206 (= lt!2716463 (choose!60331 totalInput!1349 totalInput!1349))))

(assert (=> d!2388206 (= (lemmaIsPrefixRefl!4157 totalInput!1349 totalInput!1349) lt!2716463)))

(declare-fun bs!1970816 () Bool)

(assert (= bs!1970816 d!2388206))

(assert (=> bs!1970816 m!8373926))

(declare-fun m!8374122 () Bool)

(assert (=> bs!1970816 m!8374122))

(assert (=> b!8009085 d!2388206))

(declare-fun b!8009188 () Bool)

(declare-fun e!4718101 () Bool)

(assert (=> b!8009188 (= e!4718101 (>= (size!43553 totalInput!1349) (size!43553 totalInput!1349)))))

(declare-fun b!8009185 () Bool)

(declare-fun e!4718100 () Bool)

(declare-fun e!4718102 () Bool)

(assert (=> b!8009185 (= e!4718100 e!4718102)))

(declare-fun res!3167114 () Bool)

(assert (=> b!8009185 (=> (not res!3167114) (not e!4718102))))

(assert (=> b!8009185 (= res!3167114 (not ((_ is Nil!74756) totalInput!1349)))))

(declare-fun d!2388210 () Bool)

(assert (=> d!2388210 e!4718101))

(declare-fun res!3167111 () Bool)

(assert (=> d!2388210 (=> res!3167111 e!4718101)))

(declare-fun lt!2716465 () Bool)

(assert (=> d!2388210 (= res!3167111 (not lt!2716465))))

(assert (=> d!2388210 (= lt!2716465 e!4718100)))

(declare-fun res!3167113 () Bool)

(assert (=> d!2388210 (=> res!3167113 e!4718100)))

(assert (=> d!2388210 (= res!3167113 ((_ is Nil!74756) totalInput!1349))))

(assert (=> d!2388210 (= (isPrefix!6705 totalInput!1349 totalInput!1349) lt!2716465)))

(declare-fun b!8009187 () Bool)

(assert (=> b!8009187 (= e!4718102 (isPrefix!6705 (tail!15866 totalInput!1349) (tail!15866 totalInput!1349)))))

(declare-fun b!8009186 () Bool)

(declare-fun res!3167112 () Bool)

(assert (=> b!8009186 (=> (not res!3167112) (not e!4718102))))

(assert (=> b!8009186 (= res!3167112 (= (head!16343 totalInput!1349) (head!16343 totalInput!1349)))))

(assert (= (and d!2388210 (not res!3167113)) b!8009185))

(assert (= (and b!8009185 res!3167114) b!8009186))

(assert (= (and b!8009186 res!3167112) b!8009187))

(assert (= (and d!2388210 (not res!3167111)) b!8009188))

(assert (=> b!8009188 m!8373930))

(assert (=> b!8009188 m!8373930))

(assert (=> b!8009187 m!8374062))

(assert (=> b!8009187 m!8374062))

(assert (=> b!8009187 m!8374062))

(assert (=> b!8009187 m!8374062))

(declare-fun m!8374136 () Bool)

(assert (=> b!8009187 m!8374136))

(assert (=> b!8009186 m!8374068))

(assert (=> b!8009186 m!8374068))

(assert (=> b!8009085 d!2388210))

(declare-fun d!2388214 () Bool)

(assert (=> d!2388214 (= totalInput!1349 testedP!353)))

(declare-fun lt!2716469 () Unit!170762)

(declare-fun choose!60332 (List!74880 List!74880 List!74880) Unit!170762)

(assert (=> d!2388214 (= lt!2716469 (choose!60332 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388214 (isPrefix!6705 totalInput!1349 totalInput!1349)))

(assert (=> d!2388214 (= (lemmaIsPrefixSameLengthThenSameList!1731 totalInput!1349 testedP!353 totalInput!1349) lt!2716469)))

(declare-fun bs!1970817 () Bool)

(assert (= bs!1970817 d!2388214))

(declare-fun m!8374148 () Bool)

(assert (=> bs!1970817 m!8374148))

(assert (=> bs!1970817 m!8373926))

(assert (=> b!8009085 d!2388214))

(declare-fun d!2388220 () Bool)

(assert (=> d!2388220 (<= (size!43553 testedP!353) (size!43553 totalInput!1349))))

(declare-fun lt!2716472 () Unit!170762)

(declare-fun choose!60333 (List!74880 List!74880) Unit!170762)

(assert (=> d!2388220 (= lt!2716472 (choose!60333 testedP!353 totalInput!1349))))

(assert (=> d!2388220 (isPrefix!6705 testedP!353 totalInput!1349)))

(assert (=> d!2388220 (= (lemmaIsPrefixThenSmallerEqSize!1206 testedP!353 totalInput!1349) lt!2716472)))

(declare-fun bs!1970818 () Bool)

(assert (= bs!1970818 d!2388220))

(assert (=> bs!1970818 m!8373970))

(assert (=> bs!1970818 m!8373930))

(declare-fun m!8374150 () Bool)

(assert (=> bs!1970818 m!8374150))

(assert (=> bs!1970818 m!8373964))

(assert (=> b!8009075 d!2388220))

(declare-fun b!8009238 () Bool)

(declare-fun e!4718145 () Bool)

(declare-fun call!744046 () Bool)

(assert (=> b!8009238 (= e!4718145 call!744046)))

(declare-fun b!8009241 () Bool)

(declare-fun e!4718140 () Bool)

(assert (=> b!8009241 (= e!4718140 call!744046)))

(declare-fun b!8009242 () Bool)

(declare-fun e!4718142 () Bool)

(declare-fun call!744045 () Bool)

(assert (=> b!8009242 (= e!4718142 call!744045)))

(declare-fun bm!744039 () Bool)

(declare-fun call!744044 () Bool)

(assert (=> bm!744039 (= call!744044 call!744045)))

(declare-fun bm!744040 () Bool)

(declare-fun c!1470228 () Bool)

(assert (=> bm!744040 (= call!744046 (validRegex!11955 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))

(declare-fun b!8009243 () Bool)

(declare-fun e!4718146 () Bool)

(declare-fun e!4718144 () Bool)

(assert (=> b!8009243 (= e!4718146 e!4718144)))

(assert (=> b!8009243 (= c!1470228 ((_ is Union!21651) r!15422))))

(declare-fun b!8009244 () Bool)

(declare-fun e!4718143 () Bool)

(assert (=> b!8009244 (= e!4718143 e!4718146)))

(declare-fun c!1470227 () Bool)

(assert (=> b!8009244 (= c!1470227 ((_ is Star!21651) r!15422))))

(declare-fun bm!744041 () Bool)

(assert (=> bm!744041 (= call!744045 (validRegex!11955 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009245 () Bool)

(declare-fun res!3167146 () Bool)

(declare-fun e!4718141 () Bool)

(assert (=> b!8009245 (=> res!3167146 e!4718141)))

(assert (=> b!8009245 (= res!3167146 (not ((_ is Concat!30650) r!15422)))))

(assert (=> b!8009245 (= e!4718144 e!4718141)))

(declare-fun b!8009247 () Bool)

(assert (=> b!8009247 (= e!4718146 e!4718142)))

(declare-fun res!3167144 () Bool)

(assert (=> b!8009247 (= res!3167144 (not (nullable!9709 (reg!21980 r!15422))))))

(assert (=> b!8009247 (=> (not res!3167144) (not e!4718142))))

(declare-fun b!8009248 () Bool)

(declare-fun res!3167143 () Bool)

(assert (=> b!8009248 (=> (not res!3167143) (not e!4718140))))

(assert (=> b!8009248 (= res!3167143 call!744044)))

(assert (=> b!8009248 (= e!4718144 e!4718140)))

(declare-fun d!2388222 () Bool)

(declare-fun res!3167145 () Bool)

(assert (=> d!2388222 (=> res!3167145 e!4718143)))

(assert (=> d!2388222 (= res!3167145 ((_ is ElementMatch!21651) r!15422))))

(assert (=> d!2388222 (= (validRegex!11955 r!15422) e!4718143)))

(declare-fun b!8009246 () Bool)

(assert (=> b!8009246 (= e!4718141 e!4718145)))

(declare-fun res!3167142 () Bool)

(assert (=> b!8009246 (=> (not res!3167142) (not e!4718145))))

(assert (=> b!8009246 (= res!3167142 call!744044)))

(assert (= (and d!2388222 (not res!3167145)) b!8009244))

(assert (= (and b!8009244 c!1470227) b!8009247))

(assert (= (and b!8009244 (not c!1470227)) b!8009243))

(assert (= (and b!8009247 res!3167144) b!8009242))

(assert (= (and b!8009243 c!1470228) b!8009248))

(assert (= (and b!8009243 (not c!1470228)) b!8009245))

(assert (= (and b!8009248 res!3167143) b!8009241))

(assert (= (and b!8009245 (not res!3167146)) b!8009246))

(assert (= (and b!8009246 res!3167142) b!8009238))

(assert (= (or b!8009241 b!8009238) bm!744040))

(assert (= (or b!8009248 b!8009246) bm!744039))

(assert (= (or b!8009242 bm!744039) bm!744041))

(declare-fun m!8374158 () Bool)

(assert (=> bm!744040 m!8374158))

(declare-fun m!8374160 () Bool)

(assert (=> bm!744041 m!8374160))

(declare-fun m!8374162 () Bool)

(assert (=> b!8009247 m!8374162))

(assert (=> start!753684 d!2388222))

(declare-fun b!8009267 () Bool)

(declare-fun e!4718162 () Bool)

(declare-fun call!744051 () Bool)

(assert (=> b!8009267 (= e!4718162 call!744051)))

(declare-fun b!8009268 () Bool)

(declare-fun e!4718157 () Bool)

(assert (=> b!8009268 (= e!4718157 call!744051)))

(declare-fun b!8009269 () Bool)

(declare-fun e!4718159 () Bool)

(declare-fun call!744050 () Bool)

(assert (=> b!8009269 (= e!4718159 call!744050)))

(declare-fun bm!744044 () Bool)

(declare-fun call!744049 () Bool)

(assert (=> bm!744044 (= call!744049 call!744050)))

(declare-fun c!1470240 () Bool)

(declare-fun bm!744045 () Bool)

(assert (=> bm!744045 (= call!744051 (validRegex!11955 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))

(declare-fun b!8009270 () Bool)

(declare-fun e!4718163 () Bool)

(declare-fun e!4718161 () Bool)

(assert (=> b!8009270 (= e!4718163 e!4718161)))

(assert (=> b!8009270 (= c!1470240 ((_ is Union!21651) (derivativeStep!6630 r!15422 lt!2716418)))))

(declare-fun b!8009271 () Bool)

(declare-fun e!4718160 () Bool)

(assert (=> b!8009271 (= e!4718160 e!4718163)))

(declare-fun c!1470239 () Bool)

(assert (=> b!8009271 (= c!1470239 ((_ is Star!21651) (derivativeStep!6630 r!15422 lt!2716418)))))

(declare-fun bm!744046 () Bool)

(assert (=> bm!744046 (= call!744050 (validRegex!11955 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))

(declare-fun b!8009272 () Bool)

(declare-fun res!3167151 () Bool)

(declare-fun e!4718158 () Bool)

(assert (=> b!8009272 (=> res!3167151 e!4718158)))

(assert (=> b!8009272 (= res!3167151 (not ((_ is Concat!30650) (derivativeStep!6630 r!15422 lt!2716418))))))

(assert (=> b!8009272 (= e!4718161 e!4718158)))

(declare-fun b!8009274 () Bool)

(assert (=> b!8009274 (= e!4718163 e!4718159)))

(declare-fun res!3167149 () Bool)

(assert (=> b!8009274 (= res!3167149 (not (nullable!9709 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)))))))

(assert (=> b!8009274 (=> (not res!3167149) (not e!4718159))))

(declare-fun b!8009275 () Bool)

(declare-fun res!3167148 () Bool)

(assert (=> b!8009275 (=> (not res!3167148) (not e!4718157))))

(assert (=> b!8009275 (= res!3167148 call!744049)))

(assert (=> b!8009275 (= e!4718161 e!4718157)))

(declare-fun d!2388226 () Bool)

(declare-fun res!3167150 () Bool)

(assert (=> d!2388226 (=> res!3167150 e!4718160)))

(assert (=> d!2388226 (= res!3167150 ((_ is ElementMatch!21651) (derivativeStep!6630 r!15422 lt!2716418)))))

(assert (=> d!2388226 (= (validRegex!11955 (derivativeStep!6630 r!15422 lt!2716418)) e!4718160)))

(declare-fun b!8009273 () Bool)

(assert (=> b!8009273 (= e!4718158 e!4718162)))

(declare-fun res!3167147 () Bool)

(assert (=> b!8009273 (=> (not res!3167147) (not e!4718162))))

(assert (=> b!8009273 (= res!3167147 call!744049)))

(assert (= (and d!2388226 (not res!3167150)) b!8009271))

(assert (= (and b!8009271 c!1470239) b!8009274))

(assert (= (and b!8009271 (not c!1470239)) b!8009270))

(assert (= (and b!8009274 res!3167149) b!8009269))

(assert (= (and b!8009270 c!1470240) b!8009275))

(assert (= (and b!8009270 (not c!1470240)) b!8009272))

(assert (= (and b!8009275 res!3167148) b!8009268))

(assert (= (and b!8009272 (not res!3167151)) b!8009273))

(assert (= (and b!8009273 res!3167147) b!8009267))

(assert (= (or b!8009268 b!8009267) bm!744045))

(assert (= (or b!8009275 b!8009273) bm!744044))

(assert (= (or b!8009269 bm!744044) bm!744046))

(declare-fun m!8374164 () Bool)

(assert (=> bm!744045 m!8374164))

(declare-fun m!8374166 () Bool)

(assert (=> bm!744046 m!8374166))

(declare-fun m!8374168 () Bool)

(assert (=> b!8009274 m!8374168))

(assert (=> b!8009074 d!2388226))

(declare-fun b!8009331 () Bool)

(declare-fun e!4718201 () Regex!21651)

(assert (=> b!8009331 (= e!4718201 (ite (= lt!2716418 (c!1470196 r!15422)) EmptyExpr!21651 EmptyLang!21651))))

(declare-fun b!8009332 () Bool)

(declare-fun e!4718198 () Regex!21651)

(declare-fun call!744074 () Regex!21651)

(assert (=> b!8009332 (= e!4718198 (Concat!30650 call!744074 r!15422))))

(declare-fun b!8009333 () Bool)

(declare-fun e!4718199 () Regex!21651)

(declare-fun call!744073 () Regex!21651)

(assert (=> b!8009333 (= e!4718199 (Union!21651 (Concat!30650 call!744073 (regTwo!43814 r!15422)) EmptyLang!21651))))

(declare-fun bm!744068 () Bool)

(declare-fun call!744075 () Regex!21651)

(assert (=> bm!744068 (= call!744074 call!744075)))

(declare-fun b!8009334 () Bool)

(assert (=> b!8009334 (= e!4718199 (Union!21651 (Concat!30650 call!744074 (regTwo!43814 r!15422)) call!744073))))

(declare-fun b!8009335 () Bool)

(declare-fun e!4718197 () Regex!21651)

(assert (=> b!8009335 (= e!4718197 e!4718198)))

(declare-fun c!1470260 () Bool)

(assert (=> b!8009335 (= c!1470260 ((_ is Star!21651) r!15422))))

(declare-fun b!8009336 () Bool)

(declare-fun e!4718200 () Regex!21651)

(assert (=> b!8009336 (= e!4718200 EmptyLang!21651)))

(declare-fun b!8009337 () Bool)

(declare-fun c!1470264 () Bool)

(assert (=> b!8009337 (= c!1470264 (nullable!9709 (regOne!43814 r!15422)))))

(assert (=> b!8009337 (= e!4718198 e!4718199)))

(declare-fun b!8009338 () Bool)

(declare-fun c!1470263 () Bool)

(assert (=> b!8009338 (= c!1470263 ((_ is Union!21651) r!15422))))

(assert (=> b!8009338 (= e!4718201 e!4718197)))

(declare-fun bm!744069 () Bool)

(declare-fun call!744076 () Regex!21651)

(assert (=> bm!744069 (= call!744076 (derivativeStep!6630 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))) lt!2716418))))

(declare-fun b!8009339 () Bool)

(assert (=> b!8009339 (= e!4718197 (Union!21651 call!744076 call!744075))))

(declare-fun bm!744070 () Bool)

(assert (=> bm!744070 (= call!744075 (derivativeStep!6630 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))) lt!2716418))))

(declare-fun d!2388228 () Bool)

(declare-fun lt!2716495 () Regex!21651)

(assert (=> d!2388228 (validRegex!11955 lt!2716495)))

(assert (=> d!2388228 (= lt!2716495 e!4718200)))

(declare-fun c!1470262 () Bool)

(assert (=> d!2388228 (= c!1470262 (or ((_ is EmptyExpr!21651) r!15422) ((_ is EmptyLang!21651) r!15422)))))

(assert (=> d!2388228 (validRegex!11955 r!15422)))

(assert (=> d!2388228 (= (derivativeStep!6630 r!15422 lt!2716418) lt!2716495)))

(declare-fun bm!744071 () Bool)

(assert (=> bm!744071 (= call!744073 call!744076)))

(declare-fun b!8009340 () Bool)

(assert (=> b!8009340 (= e!4718200 e!4718201)))

(declare-fun c!1470261 () Bool)

(assert (=> b!8009340 (= c!1470261 ((_ is ElementMatch!21651) r!15422))))

(assert (= (and d!2388228 c!1470262) b!8009336))

(assert (= (and d!2388228 (not c!1470262)) b!8009340))

(assert (= (and b!8009340 c!1470261) b!8009331))

(assert (= (and b!8009340 (not c!1470261)) b!8009338))

(assert (= (and b!8009338 c!1470263) b!8009339))

(assert (= (and b!8009338 (not c!1470263)) b!8009335))

(assert (= (and b!8009335 c!1470260) b!8009332))

(assert (= (and b!8009335 (not c!1470260)) b!8009337))

(assert (= (and b!8009337 c!1470264) b!8009334))

(assert (= (and b!8009337 (not c!1470264)) b!8009333))

(assert (= (or b!8009334 b!8009333) bm!744071))

(assert (= (or b!8009332 b!8009334) bm!744068))

(assert (= (or b!8009339 bm!744068) bm!744070))

(assert (= (or b!8009339 bm!744071) bm!744069))

(declare-fun m!8374218 () Bool)

(assert (=> b!8009337 m!8374218))

(declare-fun m!8374220 () Bool)

(assert (=> bm!744069 m!8374220))

(declare-fun m!8374222 () Bool)

(assert (=> bm!744070 m!8374222))

(declare-fun m!8374224 () Bool)

(assert (=> d!2388228 m!8374224))

(assert (=> d!2388228 m!8373958))

(assert (=> b!8009074 d!2388228))

(declare-fun d!2388256 () Bool)

(declare-fun lostCauseFct!603 (Regex!21651) Bool)

(assert (=> d!2388256 (= (lostCause!2048 r!15422) (lostCauseFct!603 r!15422))))

(declare-fun bs!1970825 () Bool)

(assert (= bs!1970825 d!2388256))

(declare-fun m!8374230 () Bool)

(assert (=> bs!1970825 m!8374230))

(assert (=> b!8009083 d!2388256))

(declare-fun d!2388258 () Bool)

(assert (=> d!2388258 (= testedSuffix!271 lt!2716415)))

(declare-fun lt!2716504 () Unit!170762)

(declare-fun choose!60338 (List!74880 List!74880 List!74880 List!74880 List!74880) Unit!170762)

(assert (=> d!2388258 (= lt!2716504 (choose!60338 testedP!353 testedSuffix!271 testedP!353 lt!2716415 totalInput!1349))))

(assert (=> d!2388258 (isPrefix!6705 testedP!353 totalInput!1349)))

(assert (=> d!2388258 (= (lemmaSamePrefixThenSameSuffix!3068 testedP!353 testedSuffix!271 testedP!353 lt!2716415 totalInput!1349) lt!2716504)))

(declare-fun bs!1970826 () Bool)

(assert (= bs!1970826 d!2388258))

(declare-fun m!8374232 () Bool)

(assert (=> bs!1970826 m!8374232))

(assert (=> bs!1970826 m!8373964))

(assert (=> b!8009083 d!2388258))

(declare-fun d!2388260 () Bool)

(declare-fun lt!2716507 () List!74880)

(assert (=> d!2388260 (= (++!18477 testedP!353 lt!2716507) totalInput!1349)))

(declare-fun e!4718219 () List!74880)

(assert (=> d!2388260 (= lt!2716507 e!4718219)))

(declare-fun c!1470270 () Bool)

(assert (=> d!2388260 (= c!1470270 ((_ is Cons!74756) testedP!353))))

(assert (=> d!2388260 (>= (size!43553 totalInput!1349) (size!43553 testedP!353))))

(assert (=> d!2388260 (= (getSuffix!3902 totalInput!1349 testedP!353) lt!2716507)))

(declare-fun b!8009388 () Bool)

(assert (=> b!8009388 (= e!4718219 (getSuffix!3902 (tail!15866 totalInput!1349) (t!390623 testedP!353)))))

(declare-fun b!8009389 () Bool)

(assert (=> b!8009389 (= e!4718219 totalInput!1349)))

(assert (= (and d!2388260 c!1470270) b!8009388))

(assert (= (and d!2388260 (not c!1470270)) b!8009389))

(declare-fun m!8374234 () Bool)

(assert (=> d!2388260 m!8374234))

(assert (=> d!2388260 m!8373930))

(assert (=> d!2388260 m!8373970))

(assert (=> b!8009388 m!8374062))

(assert (=> b!8009388 m!8374062))

(declare-fun m!8374236 () Bool)

(assert (=> b!8009388 m!8374236))

(assert (=> b!8009083 d!2388260))

(declare-fun b!8009394 () Bool)

(declare-fun e!4718222 () Bool)

(declare-fun tp!2396549 () Bool)

(assert (=> b!8009394 (= e!4718222 (and tp_is_empty!53845 tp!2396549))))

(assert (=> b!8009086 (= tp!2396504 e!4718222)))

(assert (= (and b!8009086 ((_ is Cons!74756) (t!390623 testedSuffix!271))) b!8009394))

(declare-fun b!8009395 () Bool)

(declare-fun e!4718223 () Bool)

(declare-fun tp!2396550 () Bool)

(assert (=> b!8009395 (= e!4718223 (and tp_is_empty!53845 tp!2396550))))

(assert (=> b!8009084 (= tp!2396502 e!4718223)))

(assert (= (and b!8009084 ((_ is Cons!74756) (t!390623 testedP!353))) b!8009395))

(declare-fun b!8009407 () Bool)

(declare-fun e!4718226 () Bool)

(declare-fun tp!2396562 () Bool)

(declare-fun tp!2396564 () Bool)

(assert (=> b!8009407 (= e!4718226 (and tp!2396562 tp!2396564))))

(declare-fun b!8009409 () Bool)

(declare-fun tp!2396561 () Bool)

(declare-fun tp!2396565 () Bool)

(assert (=> b!8009409 (= e!4718226 (and tp!2396561 tp!2396565))))

(assert (=> b!8009090 (= tp!2396501 e!4718226)))

(declare-fun b!8009408 () Bool)

(declare-fun tp!2396563 () Bool)

(assert (=> b!8009408 (= e!4718226 tp!2396563)))

(declare-fun b!8009406 () Bool)

(assert (=> b!8009406 (= e!4718226 tp_is_empty!53845)))

(assert (= (and b!8009090 ((_ is ElementMatch!21651) (reg!21980 r!15422))) b!8009406))

(assert (= (and b!8009090 ((_ is Concat!30650) (reg!21980 r!15422))) b!8009407))

(assert (= (and b!8009090 ((_ is Star!21651) (reg!21980 r!15422))) b!8009408))

(assert (= (and b!8009090 ((_ is Union!21651) (reg!21980 r!15422))) b!8009409))

(declare-fun b!8009410 () Bool)

(declare-fun e!4718227 () Bool)

(declare-fun tp!2396566 () Bool)

(assert (=> b!8009410 (= e!4718227 (and tp_is_empty!53845 tp!2396566))))

(assert (=> b!8009077 (= tp!2396499 e!4718227)))

(assert (= (and b!8009077 ((_ is Cons!74756) (t!390623 totalInput!1349))) b!8009410))

(declare-fun b!8009412 () Bool)

(declare-fun e!4718228 () Bool)

(declare-fun tp!2396568 () Bool)

(declare-fun tp!2396570 () Bool)

(assert (=> b!8009412 (= e!4718228 (and tp!2396568 tp!2396570))))

(declare-fun b!8009414 () Bool)

(declare-fun tp!2396567 () Bool)

(declare-fun tp!2396571 () Bool)

(assert (=> b!8009414 (= e!4718228 (and tp!2396567 tp!2396571))))

(assert (=> b!8009082 (= tp!2396506 e!4718228)))

(declare-fun b!8009413 () Bool)

(declare-fun tp!2396569 () Bool)

(assert (=> b!8009413 (= e!4718228 tp!2396569)))

(declare-fun b!8009411 () Bool)

(assert (=> b!8009411 (= e!4718228 tp_is_empty!53845)))

(assert (= (and b!8009082 ((_ is ElementMatch!21651) (regOne!43815 r!15422))) b!8009411))

(assert (= (and b!8009082 ((_ is Concat!30650) (regOne!43815 r!15422))) b!8009412))

(assert (= (and b!8009082 ((_ is Star!21651) (regOne!43815 r!15422))) b!8009413))

(assert (= (and b!8009082 ((_ is Union!21651) (regOne!43815 r!15422))) b!8009414))

(declare-fun b!8009416 () Bool)

(declare-fun e!4718229 () Bool)

(declare-fun tp!2396573 () Bool)

(declare-fun tp!2396575 () Bool)

(assert (=> b!8009416 (= e!4718229 (and tp!2396573 tp!2396575))))

(declare-fun b!8009418 () Bool)

(declare-fun tp!2396572 () Bool)

(declare-fun tp!2396576 () Bool)

(assert (=> b!8009418 (= e!4718229 (and tp!2396572 tp!2396576))))

(assert (=> b!8009082 (= tp!2396503 e!4718229)))

(declare-fun b!8009417 () Bool)

(declare-fun tp!2396574 () Bool)

(assert (=> b!8009417 (= e!4718229 tp!2396574)))

(declare-fun b!8009415 () Bool)

(assert (=> b!8009415 (= e!4718229 tp_is_empty!53845)))

(assert (= (and b!8009082 ((_ is ElementMatch!21651) (regTwo!43815 r!15422))) b!8009415))

(assert (= (and b!8009082 ((_ is Concat!30650) (regTwo!43815 r!15422))) b!8009416))

(assert (= (and b!8009082 ((_ is Star!21651) (regTwo!43815 r!15422))) b!8009417))

(assert (= (and b!8009082 ((_ is Union!21651) (regTwo!43815 r!15422))) b!8009418))

(declare-fun b!8009420 () Bool)

(declare-fun e!4718230 () Bool)

(declare-fun tp!2396578 () Bool)

(declare-fun tp!2396580 () Bool)

(assert (=> b!8009420 (= e!4718230 (and tp!2396578 tp!2396580))))

(declare-fun b!8009422 () Bool)

(declare-fun tp!2396577 () Bool)

(declare-fun tp!2396581 () Bool)

(assert (=> b!8009422 (= e!4718230 (and tp!2396577 tp!2396581))))

(assert (=> b!8009087 (= tp!2396505 e!4718230)))

(declare-fun b!8009421 () Bool)

(declare-fun tp!2396579 () Bool)

(assert (=> b!8009421 (= e!4718230 tp!2396579)))

(declare-fun b!8009419 () Bool)

(assert (=> b!8009419 (= e!4718230 tp_is_empty!53845)))

(assert (= (and b!8009087 ((_ is ElementMatch!21651) (regOne!43814 r!15422))) b!8009419))

(assert (= (and b!8009087 ((_ is Concat!30650) (regOne!43814 r!15422))) b!8009420))

(assert (= (and b!8009087 ((_ is Star!21651) (regOne!43814 r!15422))) b!8009421))

(assert (= (and b!8009087 ((_ is Union!21651) (regOne!43814 r!15422))) b!8009422))

(declare-fun b!8009424 () Bool)

(declare-fun e!4718231 () Bool)

(declare-fun tp!2396583 () Bool)

(declare-fun tp!2396585 () Bool)

(assert (=> b!8009424 (= e!4718231 (and tp!2396583 tp!2396585))))

(declare-fun b!8009426 () Bool)

(declare-fun tp!2396582 () Bool)

(declare-fun tp!2396586 () Bool)

(assert (=> b!8009426 (= e!4718231 (and tp!2396582 tp!2396586))))

(assert (=> b!8009087 (= tp!2396500 e!4718231)))

(declare-fun b!8009425 () Bool)

(declare-fun tp!2396584 () Bool)

(assert (=> b!8009425 (= e!4718231 tp!2396584)))

(declare-fun b!8009423 () Bool)

(assert (=> b!8009423 (= e!4718231 tp_is_empty!53845)))

(assert (= (and b!8009087 ((_ is ElementMatch!21651) (regTwo!43814 r!15422))) b!8009423))

(assert (= (and b!8009087 ((_ is Concat!30650) (regTwo!43814 r!15422))) b!8009424))

(assert (= (and b!8009087 ((_ is Star!21651) (regTwo!43814 r!15422))) b!8009425))

(assert (= (and b!8009087 ((_ is Union!21651) (regTwo!43814 r!15422))) b!8009426))

(check-sat (not d!2388192) (not b!8009151) (not d!2388220) (not b!8009132) (not b!8009414) (not d!2388156) (not b!8009159) (not bm!744041) (not d!2388164) (not d!2388206) (not d!2388204) (not b!8009247) (not b!8009152) (not b!8009133) (not b!8009125) (not b!8009187) (not bm!744069) (not b!8009425) (not b!8009420) (not b!8009166) (not b!8009408) (not b!8009395) (not d!2388172) (not b!8009163) (not b!8009413) (not d!2388228) (not b!8009412) (not b!8009409) (not d!2388168) (not b!8009150) (not d!2388170) (not b!8009109) (not b!8009410) (not b!8009162) (not d!2388256) (not b!8009274) (not b!8009417) (not d!2388176) (not b!8009416) (not bm!744046) (not b!8009167) (not bm!744045) (not b!8009394) (not b!8009188) (not b!8009112) (not b!8009124) (not bm!744070) (not b!8009337) (not b!8009108) (not d!2388258) (not b!8009186) (not b!8009114) (not b!8009422) (not b!8009421) (not b!8009388) (not b!8009426) tp_is_empty!53845 (not b!8009098) (not b!8009418) (not d!2388260) (not b!8009158) (not b!8009424) (not b!8009168) (not b!8009164) (not b!8009407) (not d!2388214) (not bm!744040))
(check-sat)
(get-model)

(declare-fun d!2388262 () Bool)

(declare-fun lt!2716508 () Int)

(assert (=> d!2388262 (>= lt!2716508 0)))

(declare-fun e!4718232 () Int)

(assert (=> d!2388262 (= lt!2716508 e!4718232)))

(declare-fun c!1470271 () Bool)

(assert (=> d!2388262 (= c!1470271 ((_ is Nil!74756) (t!390623 totalInput!1349)))))

(assert (=> d!2388262 (= (size!43553 (t!390623 totalInput!1349)) lt!2716508)))

(declare-fun b!8009427 () Bool)

(assert (=> b!8009427 (= e!4718232 0)))

(declare-fun b!8009428 () Bool)

(assert (=> b!8009428 (= e!4718232 (+ 1 (size!43553 (t!390623 (t!390623 totalInput!1349)))))))

(assert (= (and d!2388262 c!1470271) b!8009427))

(assert (= (and d!2388262 (not c!1470271)) b!8009428))

(declare-fun m!8374238 () Bool)

(assert (=> b!8009428 m!8374238))

(assert (=> b!8009098 d!2388262))

(declare-fun b!8009429 () Bool)

(declare-fun e!4718238 () Bool)

(declare-fun call!744079 () Bool)

(assert (=> b!8009429 (= e!4718238 call!744079)))

(declare-fun b!8009430 () Bool)

(declare-fun e!4718233 () Bool)

(assert (=> b!8009430 (= e!4718233 call!744079)))

(declare-fun b!8009431 () Bool)

(declare-fun e!4718235 () Bool)

(declare-fun call!744078 () Bool)

(assert (=> b!8009431 (= e!4718235 call!744078)))

(declare-fun bm!744072 () Bool)

(declare-fun call!744077 () Bool)

(assert (=> bm!744072 (= call!744077 call!744078)))

(declare-fun bm!744073 () Bool)

(declare-fun c!1470273 () Bool)

(assert (=> bm!744073 (= call!744079 (validRegex!11955 (ite c!1470273 (regTwo!43815 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))) (regTwo!43814 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))))

(declare-fun b!8009432 () Bool)

(declare-fun e!4718239 () Bool)

(declare-fun e!4718237 () Bool)

(assert (=> b!8009432 (= e!4718239 e!4718237)))

(assert (=> b!8009432 (= c!1470273 ((_ is Union!21651) (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))

(declare-fun b!8009433 () Bool)

(declare-fun e!4718236 () Bool)

(assert (=> b!8009433 (= e!4718236 e!4718239)))

(declare-fun c!1470272 () Bool)

(assert (=> b!8009433 (= c!1470272 ((_ is Star!21651) (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))

(declare-fun bm!744074 () Bool)

(assert (=> bm!744074 (= call!744078 (validRegex!11955 (ite c!1470272 (reg!21980 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))) (ite c!1470273 (regOne!43815 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))) (regOne!43814 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))))

(declare-fun b!8009434 () Bool)

(declare-fun res!3167173 () Bool)

(declare-fun e!4718234 () Bool)

(assert (=> b!8009434 (=> res!3167173 e!4718234)))

(assert (=> b!8009434 (= res!3167173 (not ((_ is Concat!30650) (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))

(assert (=> b!8009434 (= e!4718237 e!4718234)))

(declare-fun b!8009436 () Bool)

(assert (=> b!8009436 (= e!4718239 e!4718235)))

(declare-fun res!3167171 () Bool)

(assert (=> b!8009436 (= res!3167171 (not (nullable!9709 (reg!21980 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))))

(assert (=> b!8009436 (=> (not res!3167171) (not e!4718235))))

(declare-fun b!8009437 () Bool)

(declare-fun res!3167170 () Bool)

(assert (=> b!8009437 (=> (not res!3167170) (not e!4718233))))

(assert (=> b!8009437 (= res!3167170 call!744077)))

(assert (=> b!8009437 (= e!4718237 e!4718233)))

(declare-fun d!2388264 () Bool)

(declare-fun res!3167172 () Bool)

(assert (=> d!2388264 (=> res!3167172 e!4718236)))

(assert (=> d!2388264 (= res!3167172 ((_ is ElementMatch!21651) (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))

(assert (=> d!2388264 (= (validRegex!11955 (ite c!1470240 (regTwo!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regTwo!43814 (derivativeStep!6630 r!15422 lt!2716418)))) e!4718236)))

(declare-fun b!8009435 () Bool)

(assert (=> b!8009435 (= e!4718234 e!4718238)))

(declare-fun res!3167169 () Bool)

(assert (=> b!8009435 (=> (not res!3167169) (not e!4718238))))

(assert (=> b!8009435 (= res!3167169 call!744077)))

(assert (= (and d!2388264 (not res!3167172)) b!8009433))

(assert (= (and b!8009433 c!1470272) b!8009436))

(assert (= (and b!8009433 (not c!1470272)) b!8009432))

(assert (= (and b!8009436 res!3167171) b!8009431))

(assert (= (and b!8009432 c!1470273) b!8009437))

(assert (= (and b!8009432 (not c!1470273)) b!8009434))

(assert (= (and b!8009437 res!3167170) b!8009430))

(assert (= (and b!8009434 (not res!3167173)) b!8009435))

(assert (= (and b!8009435 res!3167169) b!8009429))

(assert (= (or b!8009430 b!8009429) bm!744073))

(assert (= (or b!8009437 b!8009435) bm!744072))

(assert (= (or b!8009431 bm!744072) bm!744074))

(declare-fun m!8374240 () Bool)

(assert (=> bm!744073 m!8374240))

(declare-fun m!8374242 () Bool)

(assert (=> bm!744074 m!8374242))

(declare-fun m!8374244 () Bool)

(assert (=> b!8009436 m!8374244))

(assert (=> bm!744045 d!2388264))

(declare-fun d!2388266 () Bool)

(declare-fun lt!2716509 () Int)

(assert (=> d!2388266 (>= lt!2716509 0)))

(declare-fun e!4718240 () Int)

(assert (=> d!2388266 (= lt!2716509 e!4718240)))

(declare-fun c!1470274 () Bool)

(assert (=> d!2388266 (= c!1470274 ((_ is Nil!74756) lt!2716435))))

(assert (=> d!2388266 (= (size!43553 lt!2716435) lt!2716509)))

(declare-fun b!8009438 () Bool)

(assert (=> b!8009438 (= e!4718240 0)))

(declare-fun b!8009439 () Bool)

(assert (=> b!8009439 (= e!4718240 (+ 1 (size!43553 (t!390623 lt!2716435))))))

(assert (= (and d!2388266 c!1470274) b!8009438))

(assert (= (and d!2388266 (not c!1470274)) b!8009439))

(declare-fun m!8374246 () Bool)

(assert (=> b!8009439 m!8374246))

(assert (=> b!8009133 d!2388266))

(assert (=> b!8009133 d!2388162))

(declare-fun d!2388268 () Bool)

(declare-fun lt!2716510 () Int)

(assert (=> d!2388268 (>= lt!2716510 0)))

(declare-fun e!4718241 () Int)

(assert (=> d!2388268 (= lt!2716510 e!4718241)))

(declare-fun c!1470275 () Bool)

(assert (=> d!2388268 (= c!1470275 ((_ is Nil!74756) lt!2716413))))

(assert (=> d!2388268 (= (size!43553 lt!2716413) lt!2716510)))

(declare-fun b!8009440 () Bool)

(assert (=> b!8009440 (= e!4718241 0)))

(declare-fun b!8009441 () Bool)

(assert (=> b!8009441 (= e!4718241 (+ 1 (size!43553 (t!390623 lt!2716413))))))

(assert (= (and d!2388268 c!1470275) b!8009440))

(assert (= (and d!2388268 (not c!1470275)) b!8009441))

(declare-fun m!8374248 () Bool)

(assert (=> b!8009441 m!8374248))

(assert (=> b!8009133 d!2388268))

(declare-fun b!8009445 () Bool)

(declare-fun e!4718243 () Bool)

(assert (=> b!8009445 (= e!4718243 (>= (size!43553 (tail!15866 lt!2716409)) (size!43553 (tail!15866 testedP!353))))))

(declare-fun b!8009442 () Bool)

(declare-fun e!4718242 () Bool)

(declare-fun e!4718244 () Bool)

(assert (=> b!8009442 (= e!4718242 e!4718244)))

(declare-fun res!3167177 () Bool)

(assert (=> b!8009442 (=> (not res!3167177) (not e!4718244))))

(assert (=> b!8009442 (= res!3167177 (not ((_ is Nil!74756) (tail!15866 lt!2716409))))))

(declare-fun d!2388270 () Bool)

(assert (=> d!2388270 e!4718243))

(declare-fun res!3167174 () Bool)

(assert (=> d!2388270 (=> res!3167174 e!4718243)))

(declare-fun lt!2716511 () Bool)

(assert (=> d!2388270 (= res!3167174 (not lt!2716511))))

(assert (=> d!2388270 (= lt!2716511 e!4718242)))

(declare-fun res!3167176 () Bool)

(assert (=> d!2388270 (=> res!3167176 e!4718242)))

(assert (=> d!2388270 (= res!3167176 ((_ is Nil!74756) (tail!15866 testedP!353)))))

(assert (=> d!2388270 (= (isPrefix!6705 (tail!15866 testedP!353) (tail!15866 lt!2716409)) lt!2716511)))

(declare-fun b!8009444 () Bool)

(assert (=> b!8009444 (= e!4718244 (isPrefix!6705 (tail!15866 (tail!15866 testedP!353)) (tail!15866 (tail!15866 lt!2716409))))))

(declare-fun b!8009443 () Bool)

(declare-fun res!3167175 () Bool)

(assert (=> b!8009443 (=> (not res!3167175) (not e!4718244))))

(assert (=> b!8009443 (= res!3167175 (= (head!16343 (tail!15866 testedP!353)) (head!16343 (tail!15866 lt!2716409))))))

(assert (= (and d!2388270 (not res!3167176)) b!8009442))

(assert (= (and b!8009442 res!3167177) b!8009443))

(assert (= (and b!8009443 res!3167175) b!8009444))

(assert (= (and d!2388270 (not res!3167174)) b!8009445))

(assert (=> b!8009445 m!8374100))

(declare-fun m!8374250 () Bool)

(assert (=> b!8009445 m!8374250))

(assert (=> b!8009445 m!8374092))

(declare-fun m!8374252 () Bool)

(assert (=> b!8009445 m!8374252))

(assert (=> b!8009444 m!8374092))

(declare-fun m!8374254 () Bool)

(assert (=> b!8009444 m!8374254))

(assert (=> b!8009444 m!8374100))

(declare-fun m!8374256 () Bool)

(assert (=> b!8009444 m!8374256))

(assert (=> b!8009444 m!8374254))

(assert (=> b!8009444 m!8374256))

(declare-fun m!8374258 () Bool)

(assert (=> b!8009444 m!8374258))

(assert (=> b!8009443 m!8374092))

(declare-fun m!8374260 () Bool)

(assert (=> b!8009443 m!8374260))

(assert (=> b!8009443 m!8374100))

(declare-fun m!8374262 () Bool)

(assert (=> b!8009443 m!8374262))

(assert (=> b!8009167 d!2388270))

(declare-fun d!2388272 () Bool)

(assert (=> d!2388272 (= (tail!15866 testedP!353) (t!390623 testedP!353))))

(assert (=> b!8009167 d!2388272))

(declare-fun d!2388274 () Bool)

(assert (=> d!2388274 (= (tail!15866 lt!2716409) (t!390623 lt!2716409))))

(assert (=> b!8009167 d!2388274))

(declare-fun e!4718246 () List!74880)

(declare-fun b!8009447 () Bool)

(assert (=> b!8009447 (= e!4718246 (Cons!74756 (h!81204 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756))) (++!18477 (t!390623 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756))) lt!2716413)))))

(declare-fun b!8009446 () Bool)

(assert (=> b!8009446 (= e!4718246 lt!2716413)))

(declare-fun d!2388276 () Bool)

(declare-fun e!4718245 () Bool)

(assert (=> d!2388276 e!4718245))

(declare-fun res!3167178 () Bool)

(assert (=> d!2388276 (=> (not res!3167178) (not e!4718245))))

(declare-fun lt!2716512 () List!74880)

(assert (=> d!2388276 (= res!3167178 (= (content!15902 lt!2716512) ((_ map or) (content!15902 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756))) (content!15902 lt!2716413))))))

(assert (=> d!2388276 (= lt!2716512 e!4718246)))

(declare-fun c!1470276 () Bool)

(assert (=> d!2388276 (= c!1470276 ((_ is Nil!74756) (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756))))))

(assert (=> d!2388276 (= (++!18477 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)) lt!2716413) lt!2716512)))

(declare-fun b!8009448 () Bool)

(declare-fun res!3167179 () Bool)

(assert (=> b!8009448 (=> (not res!3167179) (not e!4718245))))

(assert (=> b!8009448 (= res!3167179 (= (size!43553 lt!2716512) (+ (size!43553 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756))) (size!43553 lt!2716413))))))

(declare-fun b!8009449 () Bool)

(assert (=> b!8009449 (= e!4718245 (or (not (= lt!2716413 Nil!74756)) (= lt!2716512 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)))))))

(assert (= (and d!2388276 c!1470276) b!8009446))

(assert (= (and d!2388276 (not c!1470276)) b!8009447))

(assert (= (and d!2388276 res!3167178) b!8009448))

(assert (= (and b!8009448 res!3167179) b!8009449))

(declare-fun m!8374264 () Bool)

(assert (=> b!8009447 m!8374264))

(declare-fun m!8374266 () Bool)

(assert (=> d!2388276 m!8374266))

(assert (=> d!2388276 m!8373944))

(declare-fun m!8374268 () Bool)

(assert (=> d!2388276 m!8374268))

(assert (=> d!2388276 m!8374030))

(declare-fun m!8374270 () Bool)

(assert (=> b!8009448 m!8374270))

(assert (=> b!8009448 m!8373944))

(declare-fun m!8374272 () Bool)

(assert (=> b!8009448 m!8374272))

(assert (=> b!8009448 m!8374034))

(assert (=> d!2388176 d!2388276))

(assert (=> d!2388176 d!2388170))

(declare-fun d!2388278 () Bool)

(assert (=> d!2388278 (= (++!18477 (++!18477 testedP!353 (Cons!74756 lt!2716418 Nil!74756)) lt!2716413) totalInput!1349)))

(assert (=> d!2388278 true))

(declare-fun _$68!1542 () Unit!170762)

(assert (=> d!2388278 (= (choose!60329 testedP!353 lt!2716418 lt!2716413 totalInput!1349) _$68!1542)))

(declare-fun bs!1970827 () Bool)

(assert (= bs!1970827 d!2388278))

(assert (=> bs!1970827 m!8373944))

(assert (=> bs!1970827 m!8373944))

(assert (=> bs!1970827 m!8374038))

(assert (=> d!2388176 d!2388278))

(declare-fun b!8009451 () Bool)

(declare-fun e!4718248 () List!74880)

(assert (=> b!8009451 (= e!4718248 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) (Cons!74756 lt!2716418 lt!2716413))))))

(declare-fun b!8009450 () Bool)

(assert (=> b!8009450 (= e!4718248 (Cons!74756 lt!2716418 lt!2716413))))

(declare-fun d!2388280 () Bool)

(declare-fun e!4718247 () Bool)

(assert (=> d!2388280 e!4718247))

(declare-fun res!3167180 () Bool)

(assert (=> d!2388280 (=> (not res!3167180) (not e!4718247))))

(declare-fun lt!2716513 () List!74880)

(assert (=> d!2388280 (= res!3167180 (= (content!15902 lt!2716513) ((_ map or) (content!15902 testedP!353) (content!15902 (Cons!74756 lt!2716418 lt!2716413)))))))

(assert (=> d!2388280 (= lt!2716513 e!4718248)))

(declare-fun c!1470277 () Bool)

(assert (=> d!2388280 (= c!1470277 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388280 (= (++!18477 testedP!353 (Cons!74756 lt!2716418 lt!2716413)) lt!2716513)))

(declare-fun b!8009452 () Bool)

(declare-fun res!3167181 () Bool)

(assert (=> b!8009452 (=> (not res!3167181) (not e!4718247))))

(assert (=> b!8009452 (= res!3167181 (= (size!43553 lt!2716513) (+ (size!43553 testedP!353) (size!43553 (Cons!74756 lt!2716418 lt!2716413)))))))

(declare-fun b!8009453 () Bool)

(assert (=> b!8009453 (= e!4718247 (or (not (= (Cons!74756 lt!2716418 lt!2716413) Nil!74756)) (= lt!2716513 testedP!353)))))

(assert (= (and d!2388280 c!1470277) b!8009450))

(assert (= (and d!2388280 (not c!1470277)) b!8009451))

(assert (= (and d!2388280 res!3167180) b!8009452))

(assert (= (and b!8009452 res!3167181) b!8009453))

(declare-fun m!8374274 () Bool)

(assert (=> b!8009451 m!8374274))

(declare-fun m!8374276 () Bool)

(assert (=> d!2388280 m!8374276))

(assert (=> d!2388280 m!8373980))

(declare-fun m!8374278 () Bool)

(assert (=> d!2388280 m!8374278))

(declare-fun m!8374280 () Bool)

(assert (=> b!8009452 m!8374280))

(assert (=> b!8009452 m!8373970))

(declare-fun m!8374282 () Bool)

(assert (=> b!8009452 m!8374282))

(assert (=> d!2388176 d!2388280))

(declare-fun d!2388282 () Bool)

(declare-fun lt!2716514 () List!74880)

(assert (=> d!2388282 (= (++!18477 (t!390623 testedP!353) lt!2716514) (tail!15866 totalInput!1349))))

(declare-fun e!4718249 () List!74880)

(assert (=> d!2388282 (= lt!2716514 e!4718249)))

(declare-fun c!1470278 () Bool)

(assert (=> d!2388282 (= c!1470278 ((_ is Cons!74756) (t!390623 testedP!353)))))

(assert (=> d!2388282 (>= (size!43553 (tail!15866 totalInput!1349)) (size!43553 (t!390623 testedP!353)))))

(assert (=> d!2388282 (= (getSuffix!3902 (tail!15866 totalInput!1349) (t!390623 testedP!353)) lt!2716514)))

(declare-fun b!8009454 () Bool)

(assert (=> b!8009454 (= e!4718249 (getSuffix!3902 (tail!15866 (tail!15866 totalInput!1349)) (t!390623 (t!390623 testedP!353))))))

(declare-fun b!8009455 () Bool)

(assert (=> b!8009455 (= e!4718249 (tail!15866 totalInput!1349))))

(assert (= (and d!2388282 c!1470278) b!8009454))

(assert (= (and d!2388282 (not c!1470278)) b!8009455))

(declare-fun m!8374284 () Bool)

(assert (=> d!2388282 m!8374284))

(assert (=> d!2388282 m!8374062))

(declare-fun m!8374286 () Bool)

(assert (=> d!2388282 m!8374286))

(assert (=> d!2388282 m!8373988))

(assert (=> b!8009454 m!8374062))

(declare-fun m!8374288 () Bool)

(assert (=> b!8009454 m!8374288))

(assert (=> b!8009454 m!8374288))

(declare-fun m!8374290 () Bool)

(assert (=> b!8009454 m!8374290))

(assert (=> b!8009388 d!2388282))

(declare-fun d!2388284 () Bool)

(assert (=> d!2388284 (= (tail!15866 totalInput!1349) (t!390623 totalInput!1349))))

(assert (=> b!8009388 d!2388284))

(declare-fun d!2388286 () Bool)

(declare-fun c!1470281 () Bool)

(assert (=> d!2388286 (= c!1470281 ((_ is Nil!74756) lt!2716425))))

(declare-fun e!4718252 () (InoxSet C!43640))

(assert (=> d!2388286 (= (content!15902 lt!2716425) e!4718252)))

(declare-fun b!8009460 () Bool)

(assert (=> b!8009460 (= e!4718252 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009461 () Bool)

(assert (=> b!8009461 (= e!4718252 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716425) true) (content!15902 (t!390623 lt!2716425))))))

(assert (= (and d!2388286 c!1470281) b!8009460))

(assert (= (and d!2388286 (not c!1470281)) b!8009461))

(declare-fun m!8374292 () Bool)

(assert (=> b!8009461 m!8374292))

(declare-fun m!8374294 () Bool)

(assert (=> b!8009461 m!8374294))

(assert (=> d!2388156 d!2388286))

(declare-fun d!2388288 () Bool)

(declare-fun c!1470282 () Bool)

(assert (=> d!2388288 (= c!1470282 ((_ is Nil!74756) testedP!353))))

(declare-fun e!4718253 () (InoxSet C!43640))

(assert (=> d!2388288 (= (content!15902 testedP!353) e!4718253)))

(declare-fun b!8009462 () Bool)

(assert (=> b!8009462 (= e!4718253 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009463 () Bool)

(assert (=> b!8009463 (= e!4718253 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 testedP!353) true) (content!15902 (t!390623 testedP!353))))))

(assert (= (and d!2388288 c!1470282) b!8009462))

(assert (= (and d!2388288 (not c!1470282)) b!8009463))

(declare-fun m!8374296 () Bool)

(assert (=> b!8009463 m!8374296))

(declare-fun m!8374298 () Bool)

(assert (=> b!8009463 m!8374298))

(assert (=> d!2388156 d!2388288))

(declare-fun d!2388290 () Bool)

(declare-fun c!1470283 () Bool)

(assert (=> d!2388290 (= c!1470283 ((_ is Nil!74756) testedSuffix!271))))

(declare-fun e!4718254 () (InoxSet C!43640))

(assert (=> d!2388290 (= (content!15902 testedSuffix!271) e!4718254)))

(declare-fun b!8009464 () Bool)

(assert (=> b!8009464 (= e!4718254 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009465 () Bool)

(assert (=> b!8009465 (= e!4718254 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 testedSuffix!271) true) (content!15902 (t!390623 testedSuffix!271))))))

(assert (= (and d!2388290 c!1470283) b!8009464))

(assert (= (and d!2388290 (not c!1470283)) b!8009465))

(declare-fun m!8374300 () Bool)

(assert (=> b!8009465 m!8374300))

(declare-fun m!8374302 () Bool)

(assert (=> b!8009465 m!8374302))

(assert (=> d!2388156 d!2388290))

(assert (=> b!8009188 d!2388154))

(declare-fun d!2388292 () Bool)

(assert (=> d!2388292 (= testedSuffix!271 lt!2716415)))

(assert (=> d!2388292 true))

(declare-fun _$63!1458 () Unit!170762)

(assert (=> d!2388292 (= (choose!60338 testedP!353 testedSuffix!271 testedP!353 lt!2716415 totalInput!1349) _$63!1458)))

(assert (=> d!2388258 d!2388292))

(assert (=> d!2388258 d!2388198))

(declare-fun b!8009466 () Bool)

(declare-fun e!4718259 () Regex!21651)

(assert (=> b!8009466 (= e!4718259 (ite (= lt!2716418 (c!1470196 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))) EmptyExpr!21651 EmptyLang!21651))))

(declare-fun e!4718256 () Regex!21651)

(declare-fun call!744081 () Regex!21651)

(declare-fun b!8009467 () Bool)

(assert (=> b!8009467 (= e!4718256 (Concat!30650 call!744081 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009468 () Bool)

(declare-fun call!744080 () Regex!21651)

(declare-fun e!4718257 () Regex!21651)

(assert (=> b!8009468 (= e!4718257 (Union!21651 (Concat!30650 call!744080 (regTwo!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))) EmptyLang!21651))))

(declare-fun bm!744075 () Bool)

(declare-fun call!744082 () Regex!21651)

(assert (=> bm!744075 (= call!744081 call!744082)))

(declare-fun b!8009469 () Bool)

(assert (=> b!8009469 (= e!4718257 (Union!21651 (Concat!30650 call!744081 (regTwo!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))) call!744080))))

(declare-fun b!8009470 () Bool)

(declare-fun e!4718255 () Regex!21651)

(assert (=> b!8009470 (= e!4718255 e!4718256)))

(declare-fun c!1470284 () Bool)

(assert (=> b!8009470 (= c!1470284 ((_ is Star!21651) (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009471 () Bool)

(declare-fun e!4718258 () Regex!21651)

(assert (=> b!8009471 (= e!4718258 EmptyLang!21651)))

(declare-fun b!8009472 () Bool)

(declare-fun c!1470288 () Bool)

(assert (=> b!8009472 (= c!1470288 (nullable!9709 (regOne!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))))))

(assert (=> b!8009472 (= e!4718256 e!4718257)))

(declare-fun b!8009473 () Bool)

(declare-fun c!1470287 () Bool)

(assert (=> b!8009473 (= c!1470287 ((_ is Union!21651) (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))))

(assert (=> b!8009473 (= e!4718259 e!4718255)))

(declare-fun call!744083 () Regex!21651)

(declare-fun bm!744076 () Bool)

(assert (=> bm!744076 (= call!744083 (derivativeStep!6630 (ite c!1470287 (regOne!43815 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))) (ite c!1470288 (regTwo!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))) (regOne!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))) lt!2716418))))

(declare-fun b!8009474 () Bool)

(assert (=> b!8009474 (= e!4718255 (Union!21651 call!744083 call!744082))))

(declare-fun bm!744077 () Bool)

(assert (=> bm!744077 (= call!744082 (derivativeStep!6630 (ite c!1470287 (regTwo!43815 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))) (ite c!1470284 (reg!21980 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))) (regOne!43814 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))) lt!2716418))))

(declare-fun d!2388294 () Bool)

(declare-fun lt!2716515 () Regex!21651)

(assert (=> d!2388294 (validRegex!11955 lt!2716515)))

(assert (=> d!2388294 (= lt!2716515 e!4718258)))

(declare-fun c!1470286 () Bool)

(assert (=> d!2388294 (= c!1470286 (or ((_ is EmptyExpr!21651) (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))) ((_ is EmptyLang!21651) (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))))))

(assert (=> d!2388294 (validRegex!11955 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))))))

(assert (=> d!2388294 (= (derivativeStep!6630 (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422))) lt!2716418) lt!2716515)))

(declare-fun bm!744078 () Bool)

(assert (=> bm!744078 (= call!744080 call!744083)))

(declare-fun b!8009475 () Bool)

(assert (=> b!8009475 (= e!4718258 e!4718259)))

(declare-fun c!1470285 () Bool)

(assert (=> b!8009475 (= c!1470285 ((_ is ElementMatch!21651) (ite c!1470263 (regOne!43815 r!15422) (ite c!1470264 (regTwo!43814 r!15422) (regOne!43814 r!15422)))))))

(assert (= (and d!2388294 c!1470286) b!8009471))

(assert (= (and d!2388294 (not c!1470286)) b!8009475))

(assert (= (and b!8009475 c!1470285) b!8009466))

(assert (= (and b!8009475 (not c!1470285)) b!8009473))

(assert (= (and b!8009473 c!1470287) b!8009474))

(assert (= (and b!8009473 (not c!1470287)) b!8009470))

(assert (= (and b!8009470 c!1470284) b!8009467))

(assert (= (and b!8009470 (not c!1470284)) b!8009472))

(assert (= (and b!8009472 c!1470288) b!8009469))

(assert (= (and b!8009472 (not c!1470288)) b!8009468))

(assert (= (or b!8009469 b!8009468) bm!744078))

(assert (= (or b!8009467 b!8009469) bm!744075))

(assert (= (or b!8009474 bm!744075) bm!744077))

(assert (= (or b!8009474 bm!744078) bm!744076))

(declare-fun m!8374304 () Bool)

(assert (=> b!8009472 m!8374304))

(declare-fun m!8374306 () Bool)

(assert (=> bm!744076 m!8374306))

(declare-fun m!8374308 () Bool)

(assert (=> bm!744077 m!8374308))

(declare-fun m!8374310 () Bool)

(assert (=> d!2388294 m!8374310))

(declare-fun m!8374312 () Bool)

(assert (=> d!2388294 m!8374312))

(assert (=> bm!744069 d!2388294))

(declare-fun d!2388296 () Bool)

(assert (=> d!2388296 (= totalInput!1349 testedP!353)))

(assert (=> d!2388296 true))

(declare-fun _$60!1390 () Unit!170762)

(assert (=> d!2388296 (= (choose!60332 totalInput!1349 testedP!353 totalInput!1349) _$60!1390)))

(assert (=> d!2388214 d!2388296))

(assert (=> d!2388214 d!2388210))

(declare-fun d!2388298 () Bool)

(assert (=> d!2388298 (= (nullable!9709 (regOne!43814 r!15422)) (nullableFct!3835 (regOne!43814 r!15422)))))

(declare-fun bs!1970828 () Bool)

(assert (= bs!1970828 d!2388298))

(declare-fun m!8374314 () Bool)

(assert (=> bs!1970828 m!8374314))

(assert (=> b!8009337 d!2388298))

(declare-fun d!2388300 () Bool)

(assert (=> d!2388300 (= (head!16343 totalInput!1349) (h!81204 totalInput!1349))))

(assert (=> b!8009186 d!2388300))

(declare-fun b!8009476 () Bool)

(declare-fun e!4718265 () Bool)

(declare-fun call!744086 () Bool)

(assert (=> b!8009476 (= e!4718265 call!744086)))

(declare-fun b!8009477 () Bool)

(declare-fun e!4718260 () Bool)

(assert (=> b!8009477 (= e!4718260 call!744086)))

(declare-fun b!8009478 () Bool)

(declare-fun e!4718262 () Bool)

(declare-fun call!744085 () Bool)

(assert (=> b!8009478 (= e!4718262 call!744085)))

(declare-fun bm!744079 () Bool)

(declare-fun call!744084 () Bool)

(assert (=> bm!744079 (= call!744084 call!744085)))

(declare-fun bm!744080 () Bool)

(declare-fun c!1470290 () Bool)

(assert (=> bm!744080 (= call!744086 (validRegex!11955 (ite c!1470290 (regTwo!43815 lt!2716495) (regTwo!43814 lt!2716495))))))

(declare-fun b!8009479 () Bool)

(declare-fun e!4718266 () Bool)

(declare-fun e!4718264 () Bool)

(assert (=> b!8009479 (= e!4718266 e!4718264)))

(assert (=> b!8009479 (= c!1470290 ((_ is Union!21651) lt!2716495))))

(declare-fun b!8009480 () Bool)

(declare-fun e!4718263 () Bool)

(assert (=> b!8009480 (= e!4718263 e!4718266)))

(declare-fun c!1470289 () Bool)

(assert (=> b!8009480 (= c!1470289 ((_ is Star!21651) lt!2716495))))

(declare-fun bm!744081 () Bool)

(assert (=> bm!744081 (= call!744085 (validRegex!11955 (ite c!1470289 (reg!21980 lt!2716495) (ite c!1470290 (regOne!43815 lt!2716495) (regOne!43814 lt!2716495)))))))

(declare-fun b!8009481 () Bool)

(declare-fun res!3167186 () Bool)

(declare-fun e!4718261 () Bool)

(assert (=> b!8009481 (=> res!3167186 e!4718261)))

(assert (=> b!8009481 (= res!3167186 (not ((_ is Concat!30650) lt!2716495)))))

(assert (=> b!8009481 (= e!4718264 e!4718261)))

(declare-fun b!8009483 () Bool)

(assert (=> b!8009483 (= e!4718266 e!4718262)))

(declare-fun res!3167184 () Bool)

(assert (=> b!8009483 (= res!3167184 (not (nullable!9709 (reg!21980 lt!2716495))))))

(assert (=> b!8009483 (=> (not res!3167184) (not e!4718262))))

(declare-fun b!8009484 () Bool)

(declare-fun res!3167183 () Bool)

(assert (=> b!8009484 (=> (not res!3167183) (not e!4718260))))

(assert (=> b!8009484 (= res!3167183 call!744084)))

(assert (=> b!8009484 (= e!4718264 e!4718260)))

(declare-fun d!2388302 () Bool)

(declare-fun res!3167185 () Bool)

(assert (=> d!2388302 (=> res!3167185 e!4718263)))

(assert (=> d!2388302 (= res!3167185 ((_ is ElementMatch!21651) lt!2716495))))

(assert (=> d!2388302 (= (validRegex!11955 lt!2716495) e!4718263)))

(declare-fun b!8009482 () Bool)

(assert (=> b!8009482 (= e!4718261 e!4718265)))

(declare-fun res!3167182 () Bool)

(assert (=> b!8009482 (=> (not res!3167182) (not e!4718265))))

(assert (=> b!8009482 (= res!3167182 call!744084)))

(assert (= (and d!2388302 (not res!3167185)) b!8009480))

(assert (= (and b!8009480 c!1470289) b!8009483))

(assert (= (and b!8009480 (not c!1470289)) b!8009479))

(assert (= (and b!8009483 res!3167184) b!8009478))

(assert (= (and b!8009479 c!1470290) b!8009484))

(assert (= (and b!8009479 (not c!1470290)) b!8009481))

(assert (= (and b!8009484 res!3167183) b!8009477))

(assert (= (and b!8009481 (not res!3167186)) b!8009482))

(assert (= (and b!8009482 res!3167182) b!8009476))

(assert (= (or b!8009477 b!8009476) bm!744080))

(assert (= (or b!8009484 b!8009482) bm!744079))

(assert (= (or b!8009478 bm!744079) bm!744081))

(declare-fun m!8374316 () Bool)

(assert (=> bm!744080 m!8374316))

(declare-fun m!8374318 () Bool)

(assert (=> bm!744081 m!8374318))

(declare-fun m!8374320 () Bool)

(assert (=> b!8009483 m!8374320))

(assert (=> d!2388228 d!2388302))

(assert (=> d!2388228 d!2388222))

(declare-fun e!4718268 () Bool)

(declare-fun b!8009488 () Bool)

(assert (=> b!8009488 (= e!4718268 (>= (size!43553 (tail!15866 totalInput!1349)) (size!43553 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))))

(declare-fun b!8009485 () Bool)

(declare-fun e!4718267 () Bool)

(declare-fun e!4718269 () Bool)

(assert (=> b!8009485 (= e!4718267 e!4718269)))

(declare-fun res!3167190 () Bool)

(assert (=> b!8009485 (=> (not res!3167190) (not e!4718269))))

(assert (=> b!8009485 (= res!3167190 (not ((_ is Nil!74756) (tail!15866 totalInput!1349))))))

(declare-fun d!2388304 () Bool)

(assert (=> d!2388304 e!4718268))

(declare-fun res!3167187 () Bool)

(assert (=> d!2388304 (=> res!3167187 e!4718268)))

(declare-fun lt!2716516 () Bool)

(assert (=> d!2388304 (= res!3167187 (not lt!2716516))))

(assert (=> d!2388304 (= lt!2716516 e!4718267)))

(declare-fun res!3167189 () Bool)

(assert (=> d!2388304 (=> res!3167189 e!4718267)))

(assert (=> d!2388304 (= res!3167189 ((_ is Nil!74756) (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(assert (=> d!2388304 (= (isPrefix!6705 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) (tail!15866 totalInput!1349)) lt!2716516)))

(declare-fun b!8009487 () Bool)

(assert (=> b!8009487 (= e!4718269 (isPrefix!6705 (tail!15866 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))) (tail!15866 (tail!15866 totalInput!1349))))))

(declare-fun b!8009486 () Bool)

(declare-fun res!3167188 () Bool)

(assert (=> b!8009486 (=> (not res!3167188) (not e!4718269))))

(assert (=> b!8009486 (= res!3167188 (= (head!16343 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))) (head!16343 (tail!15866 totalInput!1349))))))

(assert (= (and d!2388304 (not res!3167189)) b!8009485))

(assert (= (and b!8009485 res!3167190) b!8009486))

(assert (= (and b!8009486 res!3167188) b!8009487))

(assert (= (and d!2388304 (not res!3167187)) b!8009488))

(assert (=> b!8009488 m!8374062))

(assert (=> b!8009488 m!8374286))

(assert (=> b!8009488 m!8374060))

(declare-fun m!8374322 () Bool)

(assert (=> b!8009488 m!8374322))

(assert (=> b!8009487 m!8374060))

(declare-fun m!8374324 () Bool)

(assert (=> b!8009487 m!8374324))

(assert (=> b!8009487 m!8374062))

(assert (=> b!8009487 m!8374288))

(assert (=> b!8009487 m!8374324))

(assert (=> b!8009487 m!8374288))

(declare-fun m!8374326 () Bool)

(assert (=> b!8009487 m!8374326))

(assert (=> b!8009486 m!8374060))

(declare-fun m!8374328 () Bool)

(assert (=> b!8009486 m!8374328))

(assert (=> b!8009486 m!8374062))

(declare-fun m!8374330 () Bool)

(assert (=> b!8009486 m!8374330))

(assert (=> b!8009151 d!2388304))

(declare-fun d!2388306 () Bool)

(assert (=> d!2388306 (= (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) (t!390623 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(assert (=> b!8009151 d!2388306))

(assert (=> b!8009151 d!2388284))

(declare-fun b!8009489 () Bool)

(declare-fun e!4718275 () Bool)

(declare-fun call!744089 () Bool)

(assert (=> b!8009489 (= e!4718275 call!744089)))

(declare-fun b!8009490 () Bool)

(declare-fun e!4718270 () Bool)

(assert (=> b!8009490 (= e!4718270 call!744089)))

(declare-fun b!8009491 () Bool)

(declare-fun e!4718272 () Bool)

(declare-fun call!744088 () Bool)

(assert (=> b!8009491 (= e!4718272 call!744088)))

(declare-fun bm!744082 () Bool)

(declare-fun call!744087 () Bool)

(assert (=> bm!744082 (= call!744087 call!744088)))

(declare-fun c!1470292 () Bool)

(declare-fun bm!744083 () Bool)

(assert (=> bm!744083 (= call!744089 (validRegex!11955 (ite c!1470292 (regTwo!43815 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))) (regTwo!43814 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))))

(declare-fun b!8009492 () Bool)

(declare-fun e!4718276 () Bool)

(declare-fun e!4718274 () Bool)

(assert (=> b!8009492 (= e!4718276 e!4718274)))

(assert (=> b!8009492 (= c!1470292 ((_ is Union!21651) (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009493 () Bool)

(declare-fun e!4718273 () Bool)

(assert (=> b!8009493 (= e!4718273 e!4718276)))

(declare-fun c!1470291 () Bool)

(assert (=> b!8009493 (= c!1470291 ((_ is Star!21651) (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))

(declare-fun bm!744084 () Bool)

(assert (=> bm!744084 (= call!744088 (validRegex!11955 (ite c!1470291 (reg!21980 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))) (ite c!1470292 (regOne!43815 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))) (regOne!43814 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422))))))))))

(declare-fun b!8009494 () Bool)

(declare-fun res!3167195 () Bool)

(declare-fun e!4718271 () Bool)

(assert (=> b!8009494 (=> res!3167195 e!4718271)))

(assert (=> b!8009494 (= res!3167195 (not ((_ is Concat!30650) (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422))))))))

(assert (=> b!8009494 (= e!4718274 e!4718271)))

(declare-fun b!8009496 () Bool)

(assert (=> b!8009496 (= e!4718276 e!4718272)))

(declare-fun res!3167193 () Bool)

(assert (=> b!8009496 (= res!3167193 (not (nullable!9709 (reg!21980 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))))

(assert (=> b!8009496 (=> (not res!3167193) (not e!4718272))))

(declare-fun b!8009497 () Bool)

(declare-fun res!3167192 () Bool)

(assert (=> b!8009497 (=> (not res!3167192) (not e!4718270))))

(assert (=> b!8009497 (= res!3167192 call!744087)))

(assert (=> b!8009497 (= e!4718274 e!4718270)))

(declare-fun d!2388308 () Bool)

(declare-fun res!3167194 () Bool)

(assert (=> d!2388308 (=> res!3167194 e!4718273)))

(assert (=> d!2388308 (= res!3167194 ((_ is ElementMatch!21651) (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))))))

(assert (=> d!2388308 (= (validRegex!11955 (ite c!1470227 (reg!21980 r!15422) (ite c!1470228 (regOne!43815 r!15422) (regOne!43814 r!15422)))) e!4718273)))

(declare-fun b!8009495 () Bool)

(assert (=> b!8009495 (= e!4718271 e!4718275)))

(declare-fun res!3167191 () Bool)

(assert (=> b!8009495 (=> (not res!3167191) (not e!4718275))))

(assert (=> b!8009495 (= res!3167191 call!744087)))

(assert (= (and d!2388308 (not res!3167194)) b!8009493))

(assert (= (and b!8009493 c!1470291) b!8009496))

(assert (= (and b!8009493 (not c!1470291)) b!8009492))

(assert (= (and b!8009496 res!3167193) b!8009491))

(assert (= (and b!8009492 c!1470292) b!8009497))

(assert (= (and b!8009492 (not c!1470292)) b!8009494))

(assert (= (and b!8009497 res!3167192) b!8009490))

(assert (= (and b!8009494 (not res!3167195)) b!8009495))

(assert (= (and b!8009495 res!3167191) b!8009489))

(assert (= (or b!8009490 b!8009489) bm!744083))

(assert (= (or b!8009497 b!8009495) bm!744082))

(assert (= (or b!8009491 bm!744082) bm!744084))

(declare-fun m!8374332 () Bool)

(assert (=> bm!744083 m!8374332))

(declare-fun m!8374334 () Bool)

(assert (=> bm!744084 m!8374334))

(declare-fun m!8374336 () Bool)

(assert (=> b!8009496 m!8374336))

(assert (=> bm!744041 d!2388308))

(declare-fun d!2388310 () Bool)

(declare-fun c!1470293 () Bool)

(assert (=> d!2388310 (= c!1470293 ((_ is Nil!74756) lt!2716435))))

(declare-fun e!4718277 () (InoxSet C!43640))

(assert (=> d!2388310 (= (content!15902 lt!2716435) e!4718277)))

(declare-fun b!8009498 () Bool)

(assert (=> b!8009498 (= e!4718277 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009499 () Bool)

(assert (=> b!8009499 (= e!4718277 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716435) true) (content!15902 (t!390623 lt!2716435))))))

(assert (= (and d!2388310 c!1470293) b!8009498))

(assert (= (and d!2388310 (not c!1470293)) b!8009499))

(declare-fun m!8374338 () Bool)

(assert (=> b!8009499 m!8374338))

(declare-fun m!8374340 () Bool)

(assert (=> b!8009499 m!8374340))

(assert (=> d!2388172 d!2388310))

(declare-fun d!2388312 () Bool)

(declare-fun c!1470294 () Bool)

(assert (=> d!2388312 (= c!1470294 ((_ is Nil!74756) lt!2716416))))

(declare-fun e!4718278 () (InoxSet C!43640))

(assert (=> d!2388312 (= (content!15902 lt!2716416) e!4718278)))

(declare-fun b!8009500 () Bool)

(assert (=> b!8009500 (= e!4718278 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009501 () Bool)

(assert (=> b!8009501 (= e!4718278 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716416) true) (content!15902 (t!390623 lt!2716416))))))

(assert (= (and d!2388312 c!1470294) b!8009500))

(assert (= (and d!2388312 (not c!1470294)) b!8009501))

(declare-fun m!8374342 () Bool)

(assert (=> b!8009501 m!8374342))

(declare-fun m!8374344 () Bool)

(assert (=> b!8009501 m!8374344))

(assert (=> d!2388172 d!2388312))

(declare-fun d!2388314 () Bool)

(declare-fun c!1470295 () Bool)

(assert (=> d!2388314 (= c!1470295 ((_ is Nil!74756) lt!2716413))))

(declare-fun e!4718279 () (InoxSet C!43640))

(assert (=> d!2388314 (= (content!15902 lt!2716413) e!4718279)))

(declare-fun b!8009502 () Bool)

(assert (=> b!8009502 (= e!4718279 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009503 () Bool)

(assert (=> b!8009503 (= e!4718279 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716413) true) (content!15902 (t!390623 lt!2716413))))))

(assert (= (and d!2388314 c!1470295) b!8009502))

(assert (= (and d!2388314 (not c!1470295)) b!8009503))

(declare-fun m!8374346 () Bool)

(assert (=> b!8009503 m!8374346))

(declare-fun m!8374348 () Bool)

(assert (=> b!8009503 m!8374348))

(assert (=> d!2388172 d!2388314))

(declare-fun e!4718284 () Regex!21651)

(declare-fun b!8009504 () Bool)

(assert (=> b!8009504 (= e!4718284 (ite (= lt!2716418 (c!1470196 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))) EmptyExpr!21651 EmptyLang!21651))))

(declare-fun call!744091 () Regex!21651)

(declare-fun b!8009505 () Bool)

(declare-fun e!4718281 () Regex!21651)

(assert (=> b!8009505 (= e!4718281 (Concat!30650 call!744091 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009506 () Bool)

(declare-fun e!4718282 () Regex!21651)

(declare-fun call!744090 () Regex!21651)

(assert (=> b!8009506 (= e!4718282 (Union!21651 (Concat!30650 call!744090 (regTwo!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))) EmptyLang!21651))))

(declare-fun bm!744085 () Bool)

(declare-fun call!744092 () Regex!21651)

(assert (=> bm!744085 (= call!744091 call!744092)))

(declare-fun b!8009507 () Bool)

(assert (=> b!8009507 (= e!4718282 (Union!21651 (Concat!30650 call!744091 (regTwo!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))) call!744090))))

(declare-fun b!8009508 () Bool)

(declare-fun e!4718280 () Regex!21651)

(assert (=> b!8009508 (= e!4718280 e!4718281)))

(declare-fun c!1470296 () Bool)

(assert (=> b!8009508 (= c!1470296 ((_ is Star!21651) (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))))

(declare-fun b!8009509 () Bool)

(declare-fun e!4718283 () Regex!21651)

(assert (=> b!8009509 (= e!4718283 EmptyLang!21651)))

(declare-fun c!1470300 () Bool)

(declare-fun b!8009510 () Bool)

(assert (=> b!8009510 (= c!1470300 (nullable!9709 (regOne!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))))))

(assert (=> b!8009510 (= e!4718281 e!4718282)))

(declare-fun b!8009511 () Bool)

(declare-fun c!1470299 () Bool)

(assert (=> b!8009511 (= c!1470299 ((_ is Union!21651) (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))))

(assert (=> b!8009511 (= e!4718284 e!4718280)))

(declare-fun call!744093 () Regex!21651)

(declare-fun bm!744086 () Bool)

(assert (=> bm!744086 (= call!744093 (derivativeStep!6630 (ite c!1470299 (regOne!43815 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))) (ite c!1470300 (regTwo!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))) (regOne!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))) lt!2716418))))

(declare-fun b!8009512 () Bool)

(assert (=> b!8009512 (= e!4718280 (Union!21651 call!744093 call!744092))))

(declare-fun bm!744087 () Bool)

(assert (=> bm!744087 (= call!744092 (derivativeStep!6630 (ite c!1470299 (regTwo!43815 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))) (ite c!1470296 (reg!21980 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))) (regOne!43814 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))) lt!2716418))))

(declare-fun d!2388316 () Bool)

(declare-fun lt!2716517 () Regex!21651)

(assert (=> d!2388316 (validRegex!11955 lt!2716517)))

(assert (=> d!2388316 (= lt!2716517 e!4718283)))

(declare-fun c!1470298 () Bool)

(assert (=> d!2388316 (= c!1470298 (or ((_ is EmptyExpr!21651) (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))) ((_ is EmptyLang!21651) (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))))))

(assert (=> d!2388316 (validRegex!11955 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))))))

(assert (=> d!2388316 (= (derivativeStep!6630 (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422))) lt!2716418) lt!2716517)))

(declare-fun bm!744088 () Bool)

(assert (=> bm!744088 (= call!744090 call!744093)))

(declare-fun b!8009513 () Bool)

(assert (=> b!8009513 (= e!4718283 e!4718284)))

(declare-fun c!1470297 () Bool)

(assert (=> b!8009513 (= c!1470297 ((_ is ElementMatch!21651) (ite c!1470263 (regTwo!43815 r!15422) (ite c!1470260 (reg!21980 r!15422) (regOne!43814 r!15422)))))))

(assert (= (and d!2388316 c!1470298) b!8009509))

(assert (= (and d!2388316 (not c!1470298)) b!8009513))

(assert (= (and b!8009513 c!1470297) b!8009504))

(assert (= (and b!8009513 (not c!1470297)) b!8009511))

(assert (= (and b!8009511 c!1470299) b!8009512))

(assert (= (and b!8009511 (not c!1470299)) b!8009508))

(assert (= (and b!8009508 c!1470296) b!8009505))

(assert (= (and b!8009508 (not c!1470296)) b!8009510))

(assert (= (and b!8009510 c!1470300) b!8009507))

(assert (= (and b!8009510 (not c!1470300)) b!8009506))

(assert (= (or b!8009507 b!8009506) bm!744088))

(assert (= (or b!8009505 b!8009507) bm!744085))

(assert (= (or b!8009512 bm!744085) bm!744087))

(assert (= (or b!8009512 bm!744088) bm!744086))

(declare-fun m!8374350 () Bool)

(assert (=> b!8009510 m!8374350))

(declare-fun m!8374352 () Bool)

(assert (=> bm!744086 m!8374352))

(declare-fun m!8374354 () Bool)

(assert (=> bm!744087 m!8374354))

(declare-fun m!8374356 () Bool)

(assert (=> d!2388316 m!8374356))

(declare-fun m!8374358 () Bool)

(assert (=> d!2388316 m!8374358))

(assert (=> bm!744070 d!2388316))

(declare-fun d!2388318 () Bool)

(declare-fun lt!2716518 () Int)

(assert (=> d!2388318 (>= lt!2716518 0)))

(declare-fun e!4718285 () Int)

(assert (=> d!2388318 (= lt!2716518 e!4718285)))

(declare-fun c!1470301 () Bool)

(assert (=> d!2388318 (= c!1470301 ((_ is Nil!74756) lt!2716433))))

(assert (=> d!2388318 (= (size!43553 lt!2716433) lt!2716518)))

(declare-fun b!8009514 () Bool)

(assert (=> b!8009514 (= e!4718285 0)))

(declare-fun b!8009515 () Bool)

(assert (=> b!8009515 (= e!4718285 (+ 1 (size!43553 (t!390623 lt!2716433))))))

(assert (= (and d!2388318 c!1470301) b!8009514))

(assert (= (and d!2388318 (not c!1470301)) b!8009515))

(declare-fun m!8374360 () Bool)

(assert (=> b!8009515 m!8374360))

(assert (=> b!8009125 d!2388318))

(assert (=> b!8009125 d!2388158))

(declare-fun d!2388320 () Bool)

(declare-fun lt!2716519 () Int)

(assert (=> d!2388320 (>= lt!2716519 0)))

(declare-fun e!4718286 () Int)

(assert (=> d!2388320 (= lt!2716519 e!4718286)))

(declare-fun c!1470302 () Bool)

(assert (=> d!2388320 (= c!1470302 ((_ is Nil!74756) (Cons!74756 lt!2716418 Nil!74756)))))

(assert (=> d!2388320 (= (size!43553 (Cons!74756 lt!2716418 Nil!74756)) lt!2716519)))

(declare-fun b!8009516 () Bool)

(assert (=> b!8009516 (= e!4718286 0)))

(declare-fun b!8009517 () Bool)

(assert (=> b!8009517 (= e!4718286 (+ 1 (size!43553 (t!390623 (Cons!74756 lt!2716418 Nil!74756)))))))

(assert (= (and d!2388320 c!1470302) b!8009516))

(assert (= (and d!2388320 (not c!1470302)) b!8009517))

(declare-fun m!8374362 () Bool)

(assert (=> b!8009517 m!8374362))

(assert (=> b!8009125 d!2388320))

(declare-fun b!8009519 () Bool)

(declare-fun e!4718288 () List!74880)

(assert (=> b!8009519 (= e!4718288 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) lt!2716507)))))

(declare-fun b!8009518 () Bool)

(assert (=> b!8009518 (= e!4718288 lt!2716507)))

(declare-fun d!2388322 () Bool)

(declare-fun e!4718287 () Bool)

(assert (=> d!2388322 e!4718287))

(declare-fun res!3167196 () Bool)

(assert (=> d!2388322 (=> (not res!3167196) (not e!4718287))))

(declare-fun lt!2716520 () List!74880)

(assert (=> d!2388322 (= res!3167196 (= (content!15902 lt!2716520) ((_ map or) (content!15902 testedP!353) (content!15902 lt!2716507))))))

(assert (=> d!2388322 (= lt!2716520 e!4718288)))

(declare-fun c!1470303 () Bool)

(assert (=> d!2388322 (= c!1470303 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388322 (= (++!18477 testedP!353 lt!2716507) lt!2716520)))

(declare-fun b!8009520 () Bool)

(declare-fun res!3167197 () Bool)

(assert (=> b!8009520 (=> (not res!3167197) (not e!4718287))))

(assert (=> b!8009520 (= res!3167197 (= (size!43553 lt!2716520) (+ (size!43553 testedP!353) (size!43553 lt!2716507))))))

(declare-fun b!8009521 () Bool)

(assert (=> b!8009521 (= e!4718287 (or (not (= lt!2716507 Nil!74756)) (= lt!2716520 testedP!353)))))

(assert (= (and d!2388322 c!1470303) b!8009518))

(assert (= (and d!2388322 (not c!1470303)) b!8009519))

(assert (= (and d!2388322 res!3167196) b!8009520))

(assert (= (and b!8009520 res!3167197) b!8009521))

(declare-fun m!8374364 () Bool)

(assert (=> b!8009519 m!8374364))

(declare-fun m!8374366 () Bool)

(assert (=> d!2388322 m!8374366))

(assert (=> d!2388322 m!8373980))

(declare-fun m!8374368 () Bool)

(assert (=> d!2388322 m!8374368))

(declare-fun m!8374370 () Bool)

(assert (=> b!8009520 m!8374370))

(assert (=> b!8009520 m!8373970))

(declare-fun m!8374372 () Bool)

(assert (=> b!8009520 m!8374372))

(assert (=> d!2388260 d!2388322))

(assert (=> d!2388260 d!2388154))

(assert (=> d!2388260 d!2388158))

(declare-fun d!2388324 () Bool)

(assert (=> d!2388324 (= (nullable!9709 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418))) (nullableFct!3835 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418))))))

(declare-fun bs!1970829 () Bool)

(assert (= bs!1970829 d!2388324))

(declare-fun m!8374374 () Bool)

(assert (=> bs!1970829 m!8374374))

(assert (=> b!8009274 d!2388324))

(declare-fun d!2388326 () Bool)

(declare-fun lt!2716521 () Int)

(assert (=> d!2388326 (>= lt!2716521 0)))

(declare-fun e!4718289 () Int)

(assert (=> d!2388326 (= lt!2716521 e!4718289)))

(declare-fun c!1470304 () Bool)

(assert (=> d!2388326 (= c!1470304 ((_ is Nil!74756) lt!2716425))))

(assert (=> d!2388326 (= (size!43553 lt!2716425) lt!2716521)))

(declare-fun b!8009522 () Bool)

(assert (=> b!8009522 (= e!4718289 0)))

(declare-fun b!8009523 () Bool)

(assert (=> b!8009523 (= e!4718289 (+ 1 (size!43553 (t!390623 lt!2716425))))))

(assert (= (and d!2388326 c!1470304) b!8009522))

(assert (= (and d!2388326 (not c!1470304)) b!8009523))

(declare-fun m!8374376 () Bool)

(assert (=> b!8009523 m!8374376))

(assert (=> b!8009109 d!2388326))

(assert (=> b!8009109 d!2388158))

(declare-fun d!2388328 () Bool)

(declare-fun lt!2716522 () Int)

(assert (=> d!2388328 (>= lt!2716522 0)))

(declare-fun e!4718290 () Int)

(assert (=> d!2388328 (= lt!2716522 e!4718290)))

(declare-fun c!1470305 () Bool)

(assert (=> d!2388328 (= c!1470305 ((_ is Nil!74756) testedSuffix!271))))

(assert (=> d!2388328 (= (size!43553 testedSuffix!271) lt!2716522)))

(declare-fun b!8009524 () Bool)

(assert (=> b!8009524 (= e!4718290 0)))

(declare-fun b!8009525 () Bool)

(assert (=> b!8009525 (= e!4718290 (+ 1 (size!43553 (t!390623 testedSuffix!271))))))

(assert (= (and d!2388328 c!1470305) b!8009524))

(assert (= (and d!2388328 (not c!1470305)) b!8009525))

(declare-fun m!8374378 () Bool)

(assert (=> b!8009525 m!8374378))

(assert (=> b!8009109 d!2388328))

(declare-fun d!2388330 () Bool)

(declare-fun lt!2716523 () Int)

(assert (=> d!2388330 (>= lt!2716523 0)))

(declare-fun e!4718291 () Int)

(assert (=> d!2388330 (= lt!2716523 e!4718291)))

(declare-fun c!1470306 () Bool)

(assert (=> d!2388330 (= c!1470306 ((_ is Nil!74756) lt!2716452))))

(assert (=> d!2388330 (= (size!43553 lt!2716452) lt!2716523)))

(declare-fun b!8009526 () Bool)

(assert (=> b!8009526 (= e!4718291 0)))

(declare-fun b!8009527 () Bool)

(assert (=> b!8009527 (= e!4718291 (+ 1 (size!43553 (t!390623 lt!2716452))))))

(assert (= (and d!2388330 c!1470306) b!8009526))

(assert (= (and d!2388330 (not c!1470306)) b!8009527))

(declare-fun m!8374380 () Bool)

(assert (=> b!8009527 m!8374380))

(assert (=> b!8009159 d!2388330))

(assert (=> b!8009159 d!2388158))

(declare-fun d!2388332 () Bool)

(declare-fun lt!2716524 () Int)

(assert (=> d!2388332 (>= lt!2716524 0)))

(declare-fun e!4718292 () Int)

(assert (=> d!2388332 (= lt!2716524 e!4718292)))

(declare-fun c!1470307 () Bool)

(assert (=> d!2388332 (= c!1470307 ((_ is Nil!74756) (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))

(assert (=> d!2388332 (= (size!43553 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) lt!2716524)))

(declare-fun b!8009528 () Bool)

(assert (=> b!8009528 (= e!4718292 0)))

(declare-fun b!8009529 () Bool)

(assert (=> b!8009529 (= e!4718292 (+ 1 (size!43553 (t!390623 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(assert (= (and d!2388332 c!1470307) b!8009528))

(assert (= (and d!2388332 (not c!1470307)) b!8009529))

(declare-fun m!8374382 () Bool)

(assert (=> b!8009529 m!8374382))

(assert (=> b!8009159 d!2388332))

(declare-fun b!8009533 () Bool)

(declare-fun e!4718294 () Bool)

(assert (=> b!8009533 (= e!4718294 (>= (size!43553 (tail!15866 totalInput!1349)) (size!43553 (tail!15866 testedP!353))))))

(declare-fun b!8009530 () Bool)

(declare-fun e!4718293 () Bool)

(declare-fun e!4718295 () Bool)

(assert (=> b!8009530 (= e!4718293 e!4718295)))

(declare-fun res!3167201 () Bool)

(assert (=> b!8009530 (=> (not res!3167201) (not e!4718295))))

(assert (=> b!8009530 (= res!3167201 (not ((_ is Nil!74756) (tail!15866 totalInput!1349))))))

(declare-fun d!2388334 () Bool)

(assert (=> d!2388334 e!4718294))

(declare-fun res!3167198 () Bool)

(assert (=> d!2388334 (=> res!3167198 e!4718294)))

(declare-fun lt!2716525 () Bool)

(assert (=> d!2388334 (= res!3167198 (not lt!2716525))))

(assert (=> d!2388334 (= lt!2716525 e!4718293)))

(declare-fun res!3167200 () Bool)

(assert (=> d!2388334 (=> res!3167200 e!4718293)))

(assert (=> d!2388334 (= res!3167200 ((_ is Nil!74756) (tail!15866 testedP!353)))))

(assert (=> d!2388334 (= (isPrefix!6705 (tail!15866 testedP!353) (tail!15866 totalInput!1349)) lt!2716525)))

(declare-fun b!8009532 () Bool)

(assert (=> b!8009532 (= e!4718295 (isPrefix!6705 (tail!15866 (tail!15866 testedP!353)) (tail!15866 (tail!15866 totalInput!1349))))))

(declare-fun b!8009531 () Bool)

(declare-fun res!3167199 () Bool)

(assert (=> b!8009531 (=> (not res!3167199) (not e!4718295))))

(assert (=> b!8009531 (= res!3167199 (= (head!16343 (tail!15866 testedP!353)) (head!16343 (tail!15866 totalInput!1349))))))

(assert (= (and d!2388334 (not res!3167200)) b!8009530))

(assert (= (and b!8009530 res!3167201) b!8009531))

(assert (= (and b!8009531 res!3167199) b!8009532))

(assert (= (and d!2388334 (not res!3167198)) b!8009533))

(assert (=> b!8009533 m!8374062))

(assert (=> b!8009533 m!8374286))

(assert (=> b!8009533 m!8374092))

(assert (=> b!8009533 m!8374252))

(assert (=> b!8009532 m!8374092))

(assert (=> b!8009532 m!8374254))

(assert (=> b!8009532 m!8374062))

(assert (=> b!8009532 m!8374288))

(assert (=> b!8009532 m!8374254))

(assert (=> b!8009532 m!8374288))

(declare-fun m!8374384 () Bool)

(assert (=> b!8009532 m!8374384))

(assert (=> b!8009531 m!8374092))

(assert (=> b!8009531 m!8374260))

(assert (=> b!8009531 m!8374062))

(assert (=> b!8009531 m!8374330))

(assert (=> b!8009163 d!2388334))

(assert (=> b!8009163 d!2388272))

(assert (=> b!8009163 d!2388284))

(declare-fun b!8009548 () Bool)

(declare-fun e!4718308 () Bool)

(declare-fun call!744098 () Bool)

(assert (=> b!8009548 (= e!4718308 call!744098)))

(declare-fun b!8009549 () Bool)

(declare-fun e!4718312 () Bool)

(declare-fun e!4718311 () Bool)

(assert (=> b!8009549 (= e!4718312 e!4718311)))

(declare-fun res!3167215 () Bool)

(assert (=> b!8009549 (=> res!3167215 e!4718311)))

(assert (=> b!8009549 (= res!3167215 ((_ is Star!21651) r!15422))))

(declare-fun b!8009550 () Bool)

(declare-fun e!4718310 () Bool)

(assert (=> b!8009550 (= e!4718310 e!4718312)))

(declare-fun res!3167216 () Bool)

(assert (=> b!8009550 (=> (not res!3167216) (not e!4718312))))

(assert (=> b!8009550 (= res!3167216 (and (not ((_ is EmptyLang!21651) r!15422)) (not ((_ is ElementMatch!21651) r!15422))))))

(declare-fun b!8009551 () Bool)

(declare-fun e!4718313 () Bool)

(declare-fun e!4718309 () Bool)

(assert (=> b!8009551 (= e!4718313 e!4718309)))

(declare-fun res!3167212 () Bool)

(assert (=> b!8009551 (= res!3167212 call!744098)))

(assert (=> b!8009551 (=> res!3167212 e!4718309)))

(declare-fun b!8009552 () Bool)

(assert (=> b!8009552 (= e!4718311 e!4718313)))

(declare-fun c!1470310 () Bool)

(assert (=> b!8009552 (= c!1470310 ((_ is Union!21651) r!15422))))

(declare-fun d!2388336 () Bool)

(declare-fun res!3167213 () Bool)

(assert (=> d!2388336 (=> res!3167213 e!4718310)))

(assert (=> d!2388336 (= res!3167213 ((_ is EmptyExpr!21651) r!15422))))

(assert (=> d!2388336 (= (nullableFct!3835 r!15422) e!4718310)))

(declare-fun b!8009553 () Bool)

(assert (=> b!8009553 (= e!4718313 e!4718308)))

(declare-fun res!3167214 () Bool)

(declare-fun call!744099 () Bool)

(assert (=> b!8009553 (= res!3167214 call!744099)))

(assert (=> b!8009553 (=> (not res!3167214) (not e!4718308))))

(declare-fun bm!744093 () Bool)

(assert (=> bm!744093 (= call!744099 (nullable!9709 (ite c!1470310 (regTwo!43815 r!15422) (regOne!43814 r!15422))))))

(declare-fun bm!744094 () Bool)

(assert (=> bm!744094 (= call!744098 (nullable!9709 (ite c!1470310 (regOne!43815 r!15422) (regTwo!43814 r!15422))))))

(declare-fun b!8009554 () Bool)

(assert (=> b!8009554 (= e!4718309 call!744099)))

(assert (= (and d!2388336 (not res!3167213)) b!8009550))

(assert (= (and b!8009550 res!3167216) b!8009549))

(assert (= (and b!8009549 (not res!3167215)) b!8009552))

(assert (= (and b!8009552 c!1470310) b!8009551))

(assert (= (and b!8009552 (not c!1470310)) b!8009553))

(assert (= (and b!8009551 (not res!3167212)) b!8009554))

(assert (= (and b!8009553 res!3167214) b!8009548))

(assert (= (or b!8009551 b!8009548) bm!744094))

(assert (= (or b!8009554 b!8009553) bm!744093))

(declare-fun m!8374386 () Bool)

(assert (=> bm!744093 m!8374386))

(declare-fun m!8374388 () Bool)

(assert (=> bm!744094 m!8374388))

(assert (=> d!2388168 d!2388336))

(declare-fun bm!744099 () Bool)

(declare-fun call!744105 () Bool)

(declare-fun c!1470313 () Bool)

(assert (=> bm!744099 (= call!744105 (lostCause!2048 (ite c!1470313 (regTwo!43815 r!15422) (regOne!43814 r!15422))))))

(declare-fun b!8009569 () Bool)

(declare-fun e!4718327 () Bool)

(assert (=> b!8009569 (= e!4718327 call!744105)))

(declare-fun b!8009570 () Bool)

(declare-fun e!4718329 () Bool)

(declare-fun e!4718326 () Bool)

(assert (=> b!8009570 (= e!4718329 e!4718326)))

(declare-fun res!3167229 () Bool)

(assert (=> b!8009570 (=> (not res!3167229) (not e!4718326))))

(assert (=> b!8009570 (= res!3167229 (and (not ((_ is ElementMatch!21651) r!15422)) (not ((_ is Star!21651) r!15422))))))

(declare-fun b!8009571 () Bool)

(declare-fun e!4718331 () Bool)

(declare-fun e!4718328 () Bool)

(assert (=> b!8009571 (= e!4718331 e!4718328)))

(declare-fun res!3167228 () Bool)

(assert (=> b!8009571 (= res!3167228 call!744105)))

(assert (=> b!8009571 (=> res!3167228 e!4718328)))

(declare-fun d!2388338 () Bool)

(declare-fun lt!2716528 () Bool)

(declare-datatypes ((Option!17965 0))(
  ( (None!17964) (Some!17964 (v!55149 List!74880)) )
))
(declare-fun isEmpty!42974 (Option!17965) Bool)

(declare-fun getLanguageWitness!1156 (Regex!21651) Option!17965)

(assert (=> d!2388338 (= lt!2716528 (isEmpty!42974 (getLanguageWitness!1156 r!15422)))))

(declare-fun e!4718330 () Bool)

(assert (=> d!2388338 (= lt!2716528 e!4718330)))

(declare-fun res!3167231 () Bool)

(assert (=> d!2388338 (=> (not res!3167231) (not e!4718330))))

(assert (=> d!2388338 (= res!3167231 (not ((_ is EmptyExpr!21651) r!15422)))))

(assert (=> d!2388338 (= (lostCauseFct!603 r!15422) lt!2716528)))

(declare-fun b!8009572 () Bool)

(assert (=> b!8009572 (= e!4718326 e!4718331)))

(assert (=> b!8009572 (= c!1470313 ((_ is Union!21651) r!15422))))

(declare-fun b!8009573 () Bool)

(assert (=> b!8009573 (= e!4718331 e!4718327)))

(declare-fun res!3167230 () Bool)

(declare-fun call!744104 () Bool)

(assert (=> b!8009573 (= res!3167230 call!744104)))

(assert (=> b!8009573 (=> (not res!3167230) (not e!4718327))))

(declare-fun b!8009574 () Bool)

(assert (=> b!8009574 (= e!4718330 e!4718329)))

(declare-fun res!3167227 () Bool)

(assert (=> b!8009574 (=> res!3167227 e!4718329)))

(assert (=> b!8009574 (= res!3167227 ((_ is EmptyLang!21651) r!15422))))

(declare-fun b!8009575 () Bool)

(assert (=> b!8009575 (= e!4718328 call!744104)))

(declare-fun bm!744100 () Bool)

(assert (=> bm!744100 (= call!744104 (lostCause!2048 (ite c!1470313 (regOne!43815 r!15422) (regTwo!43814 r!15422))))))

(assert (= (and d!2388338 res!3167231) b!8009574))

(assert (= (and b!8009574 (not res!3167227)) b!8009570))

(assert (= (and b!8009570 res!3167229) b!8009572))

(assert (= (and b!8009572 c!1470313) b!8009573))

(assert (= (and b!8009572 (not c!1470313)) b!8009571))

(assert (= (and b!8009573 res!3167230) b!8009569))

(assert (= (and b!8009571 (not res!3167228)) b!8009575))

(assert (= (or b!8009573 b!8009575) bm!744100))

(assert (= (or b!8009569 b!8009571) bm!744099))

(declare-fun m!8374390 () Bool)

(assert (=> bm!744099 m!8374390))

(declare-fun m!8374392 () Bool)

(assert (=> d!2388338 m!8374392))

(assert (=> d!2388338 m!8374392))

(declare-fun m!8374394 () Bool)

(assert (=> d!2388338 m!8374394))

(declare-fun m!8374396 () Bool)

(assert (=> bm!744100 m!8374396))

(assert (=> d!2388256 d!2388338))

(declare-fun d!2388340 () Bool)

(declare-fun lt!2716529 () Int)

(assert (=> d!2388340 (>= lt!2716529 0)))

(declare-fun e!4718332 () Int)

(assert (=> d!2388340 (= lt!2716529 e!4718332)))

(declare-fun c!1470314 () Bool)

(assert (=> d!2388340 (= c!1470314 ((_ is Nil!74756) lt!2716409))))

(assert (=> d!2388340 (= (size!43553 lt!2716409) lt!2716529)))

(declare-fun b!8009576 () Bool)

(assert (=> b!8009576 (= e!4718332 0)))

(declare-fun b!8009577 () Bool)

(assert (=> b!8009577 (= e!4718332 (+ 1 (size!43553 (t!390623 lt!2716409))))))

(assert (= (and d!2388340 c!1470314) b!8009576))

(assert (= (and d!2388340 (not c!1470314)) b!8009577))

(declare-fun m!8374398 () Bool)

(assert (=> b!8009577 m!8374398))

(assert (=> b!8009168 d!2388340))

(assert (=> b!8009168 d!2388158))

(declare-fun d!2388342 () Bool)

(declare-fun c!1470315 () Bool)

(assert (=> d!2388342 (= c!1470315 ((_ is Nil!74756) lt!2716433))))

(declare-fun e!4718333 () (InoxSet C!43640))

(assert (=> d!2388342 (= (content!15902 lt!2716433) e!4718333)))

(declare-fun b!8009578 () Bool)

(assert (=> b!8009578 (= e!4718333 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009579 () Bool)

(assert (=> b!8009579 (= e!4718333 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716433) true) (content!15902 (t!390623 lt!2716433))))))

(assert (= (and d!2388342 c!1470315) b!8009578))

(assert (= (and d!2388342 (not c!1470315)) b!8009579))

(declare-fun m!8374400 () Bool)

(assert (=> b!8009579 m!8374400))

(declare-fun m!8374402 () Bool)

(assert (=> b!8009579 m!8374402))

(assert (=> d!2388170 d!2388342))

(assert (=> d!2388170 d!2388288))

(declare-fun d!2388344 () Bool)

(declare-fun c!1470316 () Bool)

(assert (=> d!2388344 (= c!1470316 ((_ is Nil!74756) (Cons!74756 lt!2716418 Nil!74756)))))

(declare-fun e!4718334 () (InoxSet C!43640))

(assert (=> d!2388344 (= (content!15902 (Cons!74756 lt!2716418 Nil!74756)) e!4718334)))

(declare-fun b!8009580 () Bool)

(assert (=> b!8009580 (= e!4718334 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009581 () Bool)

(assert (=> b!8009581 (= e!4718334 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 (Cons!74756 lt!2716418 Nil!74756)) true) (content!15902 (t!390623 (Cons!74756 lt!2716418 Nil!74756)))))))

(assert (= (and d!2388344 c!1470316) b!8009580))

(assert (= (and d!2388344 (not c!1470316)) b!8009581))

(declare-fun m!8374404 () Bool)

(assert (=> b!8009581 m!8374404))

(declare-fun m!8374406 () Bool)

(assert (=> b!8009581 m!8374406))

(assert (=> d!2388170 d!2388344))

(assert (=> d!2388220 d!2388158))

(assert (=> d!2388220 d!2388154))

(declare-fun d!2388346 () Bool)

(assert (=> d!2388346 (<= (size!43553 testedP!353) (size!43553 totalInput!1349))))

(assert (=> d!2388346 true))

(declare-fun _$64!976 () Unit!170762)

(assert (=> d!2388346 (= (choose!60333 testedP!353 totalInput!1349) _$64!976)))

(declare-fun bs!1970830 () Bool)

(assert (= bs!1970830 d!2388346))

(assert (=> bs!1970830 m!8373970))

(assert (=> bs!1970830 m!8373930))

(assert (=> d!2388220 d!2388346))

(assert (=> d!2388220 d!2388198))

(declare-fun b!8009583 () Bool)

(declare-fun e!4718336 () List!74880)

(assert (=> b!8009583 (= e!4718336 (Cons!74756 (h!81204 (t!390623 lt!2716416)) (++!18477 (t!390623 (t!390623 lt!2716416)) lt!2716413)))))

(declare-fun b!8009582 () Bool)

(assert (=> b!8009582 (= e!4718336 lt!2716413)))

(declare-fun d!2388348 () Bool)

(declare-fun e!4718335 () Bool)

(assert (=> d!2388348 e!4718335))

(declare-fun res!3167232 () Bool)

(assert (=> d!2388348 (=> (not res!3167232) (not e!4718335))))

(declare-fun lt!2716530 () List!74880)

(assert (=> d!2388348 (= res!3167232 (= (content!15902 lt!2716530) ((_ map or) (content!15902 (t!390623 lt!2716416)) (content!15902 lt!2716413))))))

(assert (=> d!2388348 (= lt!2716530 e!4718336)))

(declare-fun c!1470317 () Bool)

(assert (=> d!2388348 (= c!1470317 ((_ is Nil!74756) (t!390623 lt!2716416)))))

(assert (=> d!2388348 (= (++!18477 (t!390623 lt!2716416) lt!2716413) lt!2716530)))

(declare-fun b!8009584 () Bool)

(declare-fun res!3167233 () Bool)

(assert (=> b!8009584 (=> (not res!3167233) (not e!4718335))))

(assert (=> b!8009584 (= res!3167233 (= (size!43553 lt!2716530) (+ (size!43553 (t!390623 lt!2716416)) (size!43553 lt!2716413))))))

(declare-fun b!8009585 () Bool)

(assert (=> b!8009585 (= e!4718335 (or (not (= lt!2716413 Nil!74756)) (= lt!2716530 (t!390623 lt!2716416))))))

(assert (= (and d!2388348 c!1470317) b!8009582))

(assert (= (and d!2388348 (not c!1470317)) b!8009583))

(assert (= (and d!2388348 res!3167232) b!8009584))

(assert (= (and b!8009584 res!3167233) b!8009585))

(declare-fun m!8374408 () Bool)

(assert (=> b!8009583 m!8374408))

(declare-fun m!8374410 () Bool)

(assert (=> d!2388348 m!8374410))

(assert (=> d!2388348 m!8374344))

(assert (=> d!2388348 m!8374030))

(declare-fun m!8374412 () Bool)

(assert (=> b!8009584 m!8374412))

(assert (=> b!8009584 m!8373990))

(assert (=> b!8009584 m!8374034))

(assert (=> b!8009132 d!2388348))

(declare-fun d!2388350 () Bool)

(assert (=> d!2388350 (= (head!16343 testedP!353) (h!81204 testedP!353))))

(assert (=> b!8009166 d!2388350))

(declare-fun d!2388352 () Bool)

(assert (=> d!2388352 (= (head!16343 lt!2716409) (h!81204 lt!2716409))))

(assert (=> b!8009166 d!2388352))

(declare-fun d!2388354 () Bool)

(declare-fun lt!2716531 () Int)

(assert (=> d!2388354 (>= lt!2716531 0)))

(declare-fun e!4718337 () Int)

(assert (=> d!2388354 (= lt!2716531 e!4718337)))

(declare-fun c!1470318 () Bool)

(assert (=> d!2388354 (= c!1470318 ((_ is Nil!74756) (t!390623 lt!2716416)))))

(assert (=> d!2388354 (= (size!43553 (t!390623 lt!2716416)) lt!2716531)))

(declare-fun b!8009586 () Bool)

(assert (=> b!8009586 (= e!4718337 0)))

(declare-fun b!8009587 () Bool)

(assert (=> b!8009587 (= e!4718337 (+ 1 (size!43553 (t!390623 (t!390623 lt!2716416)))))))

(assert (= (and d!2388354 c!1470318) b!8009586))

(assert (= (and d!2388354 (not c!1470318)) b!8009587))

(declare-fun m!8374414 () Bool)

(assert (=> b!8009587 m!8374414))

(assert (=> b!8009114 d!2388354))

(declare-fun b!8009591 () Bool)

(declare-fun e!4718339 () Bool)

(assert (=> b!8009591 (= e!4718339 (>= (size!43553 (tail!15866 totalInput!1349)) (size!43553 (tail!15866 totalInput!1349))))))

(declare-fun b!8009588 () Bool)

(declare-fun e!4718338 () Bool)

(declare-fun e!4718340 () Bool)

(assert (=> b!8009588 (= e!4718338 e!4718340)))

(declare-fun res!3167237 () Bool)

(assert (=> b!8009588 (=> (not res!3167237) (not e!4718340))))

(assert (=> b!8009588 (= res!3167237 (not ((_ is Nil!74756) (tail!15866 totalInput!1349))))))

(declare-fun d!2388356 () Bool)

(assert (=> d!2388356 e!4718339))

(declare-fun res!3167234 () Bool)

(assert (=> d!2388356 (=> res!3167234 e!4718339)))

(declare-fun lt!2716532 () Bool)

(assert (=> d!2388356 (= res!3167234 (not lt!2716532))))

(assert (=> d!2388356 (= lt!2716532 e!4718338)))

(declare-fun res!3167236 () Bool)

(assert (=> d!2388356 (=> res!3167236 e!4718338)))

(assert (=> d!2388356 (= res!3167236 ((_ is Nil!74756) (tail!15866 totalInput!1349)))))

(assert (=> d!2388356 (= (isPrefix!6705 (tail!15866 totalInput!1349) (tail!15866 totalInput!1349)) lt!2716532)))

(declare-fun b!8009590 () Bool)

(assert (=> b!8009590 (= e!4718340 (isPrefix!6705 (tail!15866 (tail!15866 totalInput!1349)) (tail!15866 (tail!15866 totalInput!1349))))))

(declare-fun b!8009589 () Bool)

(declare-fun res!3167235 () Bool)

(assert (=> b!8009589 (=> (not res!3167235) (not e!4718340))))

(assert (=> b!8009589 (= res!3167235 (= (head!16343 (tail!15866 totalInput!1349)) (head!16343 (tail!15866 totalInput!1349))))))

(assert (= (and d!2388356 (not res!3167236)) b!8009588))

(assert (= (and b!8009588 res!3167237) b!8009589))

(assert (= (and b!8009589 res!3167235) b!8009590))

(assert (= (and d!2388356 (not res!3167234)) b!8009591))

(assert (=> b!8009591 m!8374062))

(assert (=> b!8009591 m!8374286))

(assert (=> b!8009591 m!8374062))

(assert (=> b!8009591 m!8374286))

(assert (=> b!8009590 m!8374062))

(assert (=> b!8009590 m!8374288))

(assert (=> b!8009590 m!8374062))

(assert (=> b!8009590 m!8374288))

(assert (=> b!8009590 m!8374288))

(assert (=> b!8009590 m!8374288))

(declare-fun m!8374416 () Bool)

(assert (=> b!8009590 m!8374416))

(assert (=> b!8009589 m!8374062))

(assert (=> b!8009589 m!8374330))

(assert (=> b!8009589 m!8374062))

(assert (=> b!8009589 m!8374330))

(assert (=> b!8009187 d!2388356))

(assert (=> b!8009187 d!2388284))

(declare-fun b!8009592 () Bool)

(declare-fun e!4718346 () Bool)

(declare-fun call!744108 () Bool)

(assert (=> b!8009592 (= e!4718346 call!744108)))

(declare-fun b!8009593 () Bool)

(declare-fun e!4718341 () Bool)

(assert (=> b!8009593 (= e!4718341 call!744108)))

(declare-fun b!8009594 () Bool)

(declare-fun e!4718343 () Bool)

(declare-fun call!744107 () Bool)

(assert (=> b!8009594 (= e!4718343 call!744107)))

(declare-fun bm!744101 () Bool)

(declare-fun call!744106 () Bool)

(assert (=> bm!744101 (= call!744106 call!744107)))

(declare-fun bm!744102 () Bool)

(declare-fun c!1470320 () Bool)

(assert (=> bm!744102 (= call!744108 (validRegex!11955 (ite c!1470320 (regTwo!43815 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))) (regTwo!43814 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))))

(declare-fun b!8009595 () Bool)

(declare-fun e!4718347 () Bool)

(declare-fun e!4718345 () Bool)

(assert (=> b!8009595 (= e!4718347 e!4718345)))

(assert (=> b!8009595 (= c!1470320 ((_ is Union!21651) (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))

(declare-fun b!8009596 () Bool)

(declare-fun e!4718344 () Bool)

(assert (=> b!8009596 (= e!4718344 e!4718347)))

(declare-fun c!1470319 () Bool)

(assert (=> b!8009596 (= c!1470319 ((_ is Star!21651) (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))

(declare-fun bm!744103 () Bool)

(assert (=> bm!744103 (= call!744107 (validRegex!11955 (ite c!1470319 (reg!21980 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))) (ite c!1470320 (regOne!43815 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))) (regOne!43814 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))))))

(declare-fun b!8009597 () Bool)

(declare-fun res!3167242 () Bool)

(declare-fun e!4718342 () Bool)

(assert (=> b!8009597 (=> res!3167242 e!4718342)))

(assert (=> b!8009597 (= res!3167242 (not ((_ is Concat!30650) (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418)))))))))

(assert (=> b!8009597 (= e!4718345 e!4718342)))

(declare-fun b!8009599 () Bool)

(assert (=> b!8009599 (= e!4718347 e!4718343)))

(declare-fun res!3167240 () Bool)

(assert (=> b!8009599 (= res!3167240 (not (nullable!9709 (reg!21980 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))))

(assert (=> b!8009599 (=> (not res!3167240) (not e!4718343))))

(declare-fun b!8009600 () Bool)

(declare-fun res!3167239 () Bool)

(assert (=> b!8009600 (=> (not res!3167239) (not e!4718341))))

(assert (=> b!8009600 (= res!3167239 call!744106)))

(assert (=> b!8009600 (= e!4718345 e!4718341)))

(declare-fun d!2388358 () Bool)

(declare-fun res!3167241 () Bool)

(assert (=> d!2388358 (=> res!3167241 e!4718344)))

(assert (=> d!2388358 (= res!3167241 ((_ is ElementMatch!21651) (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))))))

(assert (=> d!2388358 (= (validRegex!11955 (ite c!1470239 (reg!21980 (derivativeStep!6630 r!15422 lt!2716418)) (ite c!1470240 (regOne!43815 (derivativeStep!6630 r!15422 lt!2716418)) (regOne!43814 (derivativeStep!6630 r!15422 lt!2716418))))) e!4718344)))

(declare-fun b!8009598 () Bool)

(assert (=> b!8009598 (= e!4718342 e!4718346)))

(declare-fun res!3167238 () Bool)

(assert (=> b!8009598 (=> (not res!3167238) (not e!4718346))))

(assert (=> b!8009598 (= res!3167238 call!744106)))

(assert (= (and d!2388358 (not res!3167241)) b!8009596))

(assert (= (and b!8009596 c!1470319) b!8009599))

(assert (= (and b!8009596 (not c!1470319)) b!8009595))

(assert (= (and b!8009599 res!3167240) b!8009594))

(assert (= (and b!8009595 c!1470320) b!8009600))

(assert (= (and b!8009595 (not c!1470320)) b!8009597))

(assert (= (and b!8009600 res!3167239) b!8009593))

(assert (= (and b!8009597 (not res!3167242)) b!8009598))

(assert (= (and b!8009598 res!3167238) b!8009592))

(assert (= (or b!8009593 b!8009592) bm!744102))

(assert (= (or b!8009600 b!8009598) bm!744101))

(assert (= (or b!8009594 bm!744101) bm!744103))

(declare-fun m!8374418 () Bool)

(assert (=> bm!744102 m!8374418))

(declare-fun m!8374420 () Bool)

(assert (=> bm!744103 m!8374420))

(declare-fun m!8374422 () Bool)

(assert (=> b!8009599 m!8374422))

(assert (=> bm!744046 d!2388358))

(declare-fun d!2388360 () Bool)

(assert (=> d!2388360 (= (head!16343 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) (h!81204 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(assert (=> b!8009150 d!2388360))

(assert (=> b!8009150 d!2388300))

(assert (=> b!8009162 d!2388350))

(assert (=> b!8009162 d!2388300))

(declare-fun d!2388362 () Bool)

(declare-fun c!1470321 () Bool)

(assert (=> d!2388362 (= c!1470321 ((_ is Nil!74756) lt!2716452))))

(declare-fun e!4718348 () (InoxSet C!43640))

(assert (=> d!2388362 (= (content!15902 lt!2716452) e!4718348)))

(declare-fun b!8009601 () Bool)

(assert (=> b!8009601 (= e!4718348 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009602 () Bool)

(assert (=> b!8009602 (= e!4718348 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 lt!2716452) true) (content!15902 (t!390623 lt!2716452))))))

(assert (= (and d!2388362 c!1470321) b!8009601))

(assert (= (and d!2388362 (not c!1470321)) b!8009602))

(declare-fun m!8374424 () Bool)

(assert (=> b!8009602 m!8374424))

(declare-fun m!8374426 () Bool)

(assert (=> b!8009602 m!8374426))

(assert (=> d!2388192 d!2388362))

(assert (=> d!2388192 d!2388288))

(declare-fun d!2388364 () Bool)

(declare-fun c!1470322 () Bool)

(assert (=> d!2388364 (= c!1470322 ((_ is Nil!74756) (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))

(declare-fun e!4718349 () (InoxSet C!43640))

(assert (=> d!2388364 (= (content!15902 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) e!4718349)))

(declare-fun b!8009603 () Bool)

(assert (=> b!8009603 (= e!4718349 ((as const (Array C!43640 Bool)) false))))

(declare-fun b!8009604 () Bool)

(assert (=> b!8009604 (= e!4718349 ((_ map or) (store ((as const (Array C!43640 Bool)) false) (h!81204 (Cons!74756 (head!16343 lt!2716415) Nil!74756)) true) (content!15902 (t!390623 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(assert (= (and d!2388364 c!1470322) b!8009603))

(assert (= (and d!2388364 (not c!1470322)) b!8009604))

(declare-fun m!8374428 () Bool)

(assert (=> b!8009604 m!8374428))

(declare-fun m!8374430 () Bool)

(assert (=> b!8009604 m!8374430))

(assert (=> d!2388192 d!2388364))

(assert (=> d!2388206 d!2388210))

(declare-fun d!2388366 () Bool)

(assert (=> d!2388366 (isPrefix!6705 totalInput!1349 totalInput!1349)))

(assert (=> d!2388366 true))

(declare-fun _$45!2524 () Unit!170762)

(assert (=> d!2388366 (= (choose!60331 totalInput!1349 totalInput!1349) _$45!2524)))

(declare-fun bs!1970831 () Bool)

(assert (= bs!1970831 d!2388366))

(assert (=> bs!1970831 m!8373926))

(assert (=> d!2388206 d!2388366))

(declare-fun d!2388368 () Bool)

(assert (=> d!2388368 (isPrefix!6705 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)) totalInput!1349)))

(assert (=> d!2388368 true))

(declare-fun _$65!2003 () Unit!170762)

(assert (=> d!2388368 (= (choose!60328 testedP!353 totalInput!1349) _$65!2003)))

(declare-fun bs!1970832 () Bool)

(assert (= bs!1970832 d!2388368))

(assert (=> bs!1970832 m!8373956))

(assert (=> bs!1970832 m!8373956))

(assert (=> bs!1970832 m!8373996))

(assert (=> bs!1970832 m!8373992))

(assert (=> bs!1970832 m!8373992))

(assert (=> bs!1970832 m!8373994))

(assert (=> d!2388164 d!2388368))

(declare-fun b!8009608 () Bool)

(declare-fun e!4718351 () Bool)

(assert (=> b!8009608 (= e!4718351 (>= (size!43553 totalInput!1349) (size!43553 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)))))))

(declare-fun b!8009605 () Bool)

(declare-fun e!4718350 () Bool)

(declare-fun e!4718352 () Bool)

(assert (=> b!8009605 (= e!4718350 e!4718352)))

(declare-fun res!3167246 () Bool)

(assert (=> b!8009605 (=> (not res!3167246) (not e!4718352))))

(assert (=> b!8009605 (= res!3167246 (not ((_ is Nil!74756) totalInput!1349)))))

(declare-fun d!2388370 () Bool)

(assert (=> d!2388370 e!4718351))

(declare-fun res!3167243 () Bool)

(assert (=> d!2388370 (=> res!3167243 e!4718351)))

(declare-fun lt!2716533 () Bool)

(assert (=> d!2388370 (= res!3167243 (not lt!2716533))))

(assert (=> d!2388370 (= lt!2716533 e!4718350)))

(declare-fun res!3167245 () Bool)

(assert (=> d!2388370 (=> res!3167245 e!4718350)))

(assert (=> d!2388370 (= res!3167245 ((_ is Nil!74756) (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756))))))

(assert (=> d!2388370 (= (isPrefix!6705 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)) totalInput!1349) lt!2716533)))

(declare-fun b!8009607 () Bool)

(assert (=> b!8009607 (= e!4718352 (isPrefix!6705 (tail!15866 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756))) (tail!15866 totalInput!1349)))))

(declare-fun b!8009606 () Bool)

(declare-fun res!3167244 () Bool)

(assert (=> b!8009606 (=> (not res!3167244) (not e!4718352))))

(assert (=> b!8009606 (= res!3167244 (= (head!16343 (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756))) (head!16343 totalInput!1349)))))

(assert (= (and d!2388370 (not res!3167245)) b!8009605))

(assert (= (and b!8009605 res!3167246) b!8009606))

(assert (= (and b!8009606 res!3167244) b!8009607))

(assert (= (and d!2388370 (not res!3167243)) b!8009608))

(assert (=> b!8009608 m!8373930))

(assert (=> b!8009608 m!8373992))

(declare-fun m!8374432 () Bool)

(assert (=> b!8009608 m!8374432))

(assert (=> b!8009607 m!8373992))

(declare-fun m!8374434 () Bool)

(assert (=> b!8009607 m!8374434))

(assert (=> b!8009607 m!8374062))

(assert (=> b!8009607 m!8374434))

(assert (=> b!8009607 m!8374062))

(declare-fun m!8374436 () Bool)

(assert (=> b!8009607 m!8374436))

(assert (=> b!8009606 m!8373992))

(declare-fun m!8374438 () Bool)

(assert (=> b!8009606 m!8374438))

(assert (=> b!8009606 m!8374068))

(assert (=> d!2388164 d!2388370))

(assert (=> d!2388164 d!2388260))

(declare-fun d!2388372 () Bool)

(assert (=> d!2388372 (= (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) (h!81204 (getSuffix!3902 totalInput!1349 testedP!353)))))

(assert (=> d!2388164 d!2388372))

(assert (=> d!2388164 d!2388198))

(declare-fun b!8009610 () Bool)

(declare-fun e!4718354 () List!74880)

(assert (=> b!8009610 (= e!4718354 (Cons!74756 (h!81204 testedP!353) (++!18477 (t!390623 testedP!353) (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756))))))

(declare-fun b!8009609 () Bool)

(assert (=> b!8009609 (= e!4718354 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756))))

(declare-fun d!2388374 () Bool)

(declare-fun e!4718353 () Bool)

(assert (=> d!2388374 e!4718353))

(declare-fun res!3167247 () Bool)

(assert (=> d!2388374 (=> (not res!3167247) (not e!4718353))))

(declare-fun lt!2716534 () List!74880)

(assert (=> d!2388374 (= res!3167247 (= (content!15902 lt!2716534) ((_ map or) (content!15902 testedP!353) (content!15902 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)))))))

(assert (=> d!2388374 (= lt!2716534 e!4718354)))

(declare-fun c!1470323 () Bool)

(assert (=> d!2388374 (= c!1470323 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388374 (= (++!18477 testedP!353 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)) lt!2716534)))

(declare-fun b!8009611 () Bool)

(declare-fun res!3167248 () Bool)

(assert (=> b!8009611 (=> (not res!3167248) (not e!4718353))))

(assert (=> b!8009611 (= res!3167248 (= (size!43553 lt!2716534) (+ (size!43553 testedP!353) (size!43553 (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756)))))))

(declare-fun b!8009612 () Bool)

(assert (=> b!8009612 (= e!4718353 (or (not (= (Cons!74756 (head!16343 (getSuffix!3902 totalInput!1349 testedP!353)) Nil!74756) Nil!74756)) (= lt!2716534 testedP!353)))))

(assert (= (and d!2388374 c!1470323) b!8009609))

(assert (= (and d!2388374 (not c!1470323)) b!8009610))

(assert (= (and d!2388374 res!3167247) b!8009611))

(assert (= (and b!8009611 res!3167248) b!8009612))

(declare-fun m!8374440 () Bool)

(assert (=> b!8009610 m!8374440))

(declare-fun m!8374442 () Bool)

(assert (=> d!2388374 m!8374442))

(assert (=> d!2388374 m!8373980))

(declare-fun m!8374444 () Bool)

(assert (=> d!2388374 m!8374444))

(declare-fun m!8374446 () Bool)

(assert (=> b!8009611 m!8374446))

(assert (=> b!8009611 m!8373970))

(declare-fun m!8374448 () Bool)

(assert (=> b!8009611 m!8374448))

(assert (=> d!2388164 d!2388374))

(declare-fun b!8009616 () Bool)

(declare-fun e!4718356 () Bool)

(assert (=> b!8009616 (= e!4718356 (>= (size!43553 (++!18477 testedP!353 testedSuffix!271)) (size!43553 testedP!353)))))

(declare-fun b!8009613 () Bool)

(declare-fun e!4718355 () Bool)

(declare-fun e!4718357 () Bool)

(assert (=> b!8009613 (= e!4718355 e!4718357)))

(declare-fun res!3167252 () Bool)

(assert (=> b!8009613 (=> (not res!3167252) (not e!4718357))))

(assert (=> b!8009613 (= res!3167252 (not ((_ is Nil!74756) (++!18477 testedP!353 testedSuffix!271))))))

(declare-fun d!2388376 () Bool)

(assert (=> d!2388376 e!4718356))

(declare-fun res!3167249 () Bool)

(assert (=> d!2388376 (=> res!3167249 e!4718356)))

(declare-fun lt!2716535 () Bool)

(assert (=> d!2388376 (= res!3167249 (not lt!2716535))))

(assert (=> d!2388376 (= lt!2716535 e!4718355)))

(declare-fun res!3167251 () Bool)

(assert (=> d!2388376 (=> res!3167251 e!4718355)))

(assert (=> d!2388376 (= res!3167251 ((_ is Nil!74756) testedP!353))))

(assert (=> d!2388376 (= (isPrefix!6705 testedP!353 (++!18477 testedP!353 testedSuffix!271)) lt!2716535)))

(declare-fun b!8009615 () Bool)

(assert (=> b!8009615 (= e!4718357 (isPrefix!6705 (tail!15866 testedP!353) (tail!15866 (++!18477 testedP!353 testedSuffix!271))))))

(declare-fun b!8009614 () Bool)

(declare-fun res!3167250 () Bool)

(assert (=> b!8009614 (=> (not res!3167250) (not e!4718357))))

(assert (=> b!8009614 (= res!3167250 (= (head!16343 testedP!353) (head!16343 (++!18477 testedP!353 testedSuffix!271))))))

(assert (= (and d!2388376 (not res!3167251)) b!8009613))

(assert (= (and b!8009613 res!3167252) b!8009614))

(assert (= (and b!8009614 res!3167250) b!8009615))

(assert (= (and d!2388376 (not res!3167249)) b!8009616))

(assert (=> b!8009616 m!8373972))

(declare-fun m!8374450 () Bool)

(assert (=> b!8009616 m!8374450))

(assert (=> b!8009616 m!8373970))

(assert (=> b!8009615 m!8374092))

(assert (=> b!8009615 m!8373972))

(declare-fun m!8374452 () Bool)

(assert (=> b!8009615 m!8374452))

(assert (=> b!8009615 m!8374092))

(assert (=> b!8009615 m!8374452))

(declare-fun m!8374454 () Bool)

(assert (=> b!8009615 m!8374454))

(assert (=> b!8009614 m!8374096))

(assert (=> b!8009614 m!8373972))

(declare-fun m!8374456 () Bool)

(assert (=> b!8009614 m!8374456))

(assert (=> d!2388204 d!2388376))

(assert (=> d!2388204 d!2388156))

(declare-fun d!2388378 () Bool)

(assert (=> d!2388378 (isPrefix!6705 testedP!353 (++!18477 testedP!353 testedSuffix!271))))

(assert (=> d!2388378 true))

(declare-fun _$46!2154 () Unit!170762)

(assert (=> d!2388378 (= (choose!60330 testedP!353 testedSuffix!271) _$46!2154)))

(declare-fun bs!1970833 () Bool)

(assert (= bs!1970833 d!2388378))

(assert (=> bs!1970833 m!8373972))

(assert (=> bs!1970833 m!8373972))

(assert (=> bs!1970833 m!8374106))

(assert (=> d!2388204 d!2388378))

(declare-fun b!8009617 () Bool)

(declare-fun e!4718363 () Bool)

(declare-fun call!744111 () Bool)

(assert (=> b!8009617 (= e!4718363 call!744111)))

(declare-fun b!8009618 () Bool)

(declare-fun e!4718358 () Bool)

(assert (=> b!8009618 (= e!4718358 call!744111)))

(declare-fun b!8009619 () Bool)

(declare-fun e!4718360 () Bool)

(declare-fun call!744110 () Bool)

(assert (=> b!8009619 (= e!4718360 call!744110)))

(declare-fun bm!744104 () Bool)

(declare-fun call!744109 () Bool)

(assert (=> bm!744104 (= call!744109 call!744110)))

(declare-fun bm!744105 () Bool)

(declare-fun c!1470325 () Bool)

(assert (=> bm!744105 (= call!744111 (validRegex!11955 (ite c!1470325 (regTwo!43815 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))) (regTwo!43814 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))))

(declare-fun b!8009620 () Bool)

(declare-fun e!4718364 () Bool)

(declare-fun e!4718362 () Bool)

(assert (=> b!8009620 (= e!4718364 e!4718362)))

(assert (=> b!8009620 (= c!1470325 ((_ is Union!21651) (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))

(declare-fun b!8009621 () Bool)

(declare-fun e!4718361 () Bool)

(assert (=> b!8009621 (= e!4718361 e!4718364)))

(declare-fun c!1470324 () Bool)

(assert (=> b!8009621 (= c!1470324 ((_ is Star!21651) (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))

(declare-fun bm!744106 () Bool)

(assert (=> bm!744106 (= call!744110 (validRegex!11955 (ite c!1470324 (reg!21980 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))) (ite c!1470325 (regOne!43815 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))) (regOne!43814 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422)))))))))

(declare-fun b!8009622 () Bool)

(declare-fun res!3167257 () Bool)

(declare-fun e!4718359 () Bool)

(assert (=> b!8009622 (=> res!3167257 e!4718359)))

(assert (=> b!8009622 (= res!3167257 (not ((_ is Concat!30650) (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422)))))))

(assert (=> b!8009622 (= e!4718362 e!4718359)))

(declare-fun b!8009624 () Bool)

(assert (=> b!8009624 (= e!4718364 e!4718360)))

(declare-fun res!3167255 () Bool)

(assert (=> b!8009624 (= res!3167255 (not (nullable!9709 (reg!21980 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))))

(assert (=> b!8009624 (=> (not res!3167255) (not e!4718360))))

(declare-fun b!8009625 () Bool)

(declare-fun res!3167254 () Bool)

(assert (=> b!8009625 (=> (not res!3167254) (not e!4718358))))

(assert (=> b!8009625 (= res!3167254 call!744109)))

(assert (=> b!8009625 (= e!4718362 e!4718358)))

(declare-fun d!2388380 () Bool)

(declare-fun res!3167256 () Bool)

(assert (=> d!2388380 (=> res!3167256 e!4718361)))

(assert (=> d!2388380 (= res!3167256 ((_ is ElementMatch!21651) (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))))))

(assert (=> d!2388380 (= (validRegex!11955 (ite c!1470228 (regTwo!43815 r!15422) (regTwo!43814 r!15422))) e!4718361)))

(declare-fun b!8009623 () Bool)

(assert (=> b!8009623 (= e!4718359 e!4718363)))

(declare-fun res!3167253 () Bool)

(assert (=> b!8009623 (=> (not res!3167253) (not e!4718363))))

(assert (=> b!8009623 (= res!3167253 call!744109)))

(assert (= (and d!2388380 (not res!3167256)) b!8009621))

(assert (= (and b!8009621 c!1470324) b!8009624))

(assert (= (and b!8009621 (not c!1470324)) b!8009620))

(assert (= (and b!8009624 res!3167255) b!8009619))

(assert (= (and b!8009620 c!1470325) b!8009625))

(assert (= (and b!8009620 (not c!1470325)) b!8009622))

(assert (= (and b!8009625 res!3167254) b!8009618))

(assert (= (and b!8009622 (not res!3167257)) b!8009623))

(assert (= (and b!8009623 res!3167253) b!8009617))

(assert (= (or b!8009618 b!8009617) bm!744105))

(assert (= (or b!8009625 b!8009623) bm!744104))

(assert (= (or b!8009619 bm!744104) bm!744106))

(declare-fun m!8374458 () Bool)

(assert (=> bm!744105 m!8374458))

(declare-fun m!8374460 () Bool)

(assert (=> bm!744106 m!8374460))

(declare-fun m!8374462 () Bool)

(assert (=> b!8009624 m!8374462))

(assert (=> bm!744040 d!2388380))

(declare-fun b!8009627 () Bool)

(declare-fun e!4718366 () List!74880)

(assert (=> b!8009627 (= e!4718366 (Cons!74756 (h!81204 (t!390623 testedP!353)) (++!18477 (t!390623 (t!390623 testedP!353)) (Cons!74756 lt!2716418 Nil!74756))))))

(declare-fun b!8009626 () Bool)

(assert (=> b!8009626 (= e!4718366 (Cons!74756 lt!2716418 Nil!74756))))

(declare-fun d!2388382 () Bool)

(declare-fun e!4718365 () Bool)

(assert (=> d!2388382 e!4718365))

(declare-fun res!3167258 () Bool)

(assert (=> d!2388382 (=> (not res!3167258) (not e!4718365))))

(declare-fun lt!2716536 () List!74880)

(assert (=> d!2388382 (= res!3167258 (= (content!15902 lt!2716536) ((_ map or) (content!15902 (t!390623 testedP!353)) (content!15902 (Cons!74756 lt!2716418 Nil!74756)))))))

(assert (=> d!2388382 (= lt!2716536 e!4718366)))

(declare-fun c!1470326 () Bool)

(assert (=> d!2388382 (= c!1470326 ((_ is Nil!74756) (t!390623 testedP!353)))))

(assert (=> d!2388382 (= (++!18477 (t!390623 testedP!353) (Cons!74756 lt!2716418 Nil!74756)) lt!2716536)))

(declare-fun b!8009628 () Bool)

(declare-fun res!3167259 () Bool)

(assert (=> b!8009628 (=> (not res!3167259) (not e!4718365))))

(assert (=> b!8009628 (= res!3167259 (= (size!43553 lt!2716536) (+ (size!43553 (t!390623 testedP!353)) (size!43553 (Cons!74756 lt!2716418 Nil!74756)))))))

(declare-fun b!8009629 () Bool)

(assert (=> b!8009629 (= e!4718365 (or (not (= (Cons!74756 lt!2716418 Nil!74756) Nil!74756)) (= lt!2716536 (t!390623 testedP!353))))))

(assert (= (and d!2388382 c!1470326) b!8009626))

(assert (= (and d!2388382 (not c!1470326)) b!8009627))

(assert (= (and d!2388382 res!3167258) b!8009628))

(assert (= (and b!8009628 res!3167259) b!8009629))

(declare-fun m!8374464 () Bool)

(assert (=> b!8009627 m!8374464))

(declare-fun m!8374466 () Bool)

(assert (=> d!2388382 m!8374466))

(assert (=> d!2388382 m!8374298))

(assert (=> d!2388382 m!8374006))

(declare-fun m!8374468 () Bool)

(assert (=> b!8009628 m!8374468))

(assert (=> b!8009628 m!8373988))

(assert (=> b!8009628 m!8374010))

(assert (=> b!8009124 d!2388382))

(declare-fun b!8009631 () Bool)

(declare-fun e!4718368 () List!74880)

(assert (=> b!8009631 (= e!4718368 (Cons!74756 (h!81204 (t!390623 testedP!353)) (++!18477 (t!390623 (t!390623 testedP!353)) (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(declare-fun b!8009630 () Bool)

(assert (=> b!8009630 (= e!4718368 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))

(declare-fun d!2388384 () Bool)

(declare-fun e!4718367 () Bool)

(assert (=> d!2388384 e!4718367))

(declare-fun res!3167260 () Bool)

(assert (=> d!2388384 (=> (not res!3167260) (not e!4718367))))

(declare-fun lt!2716537 () List!74880)

(assert (=> d!2388384 (= res!3167260 (= (content!15902 lt!2716537) ((_ map or) (content!15902 (t!390623 testedP!353)) (content!15902 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(assert (=> d!2388384 (= lt!2716537 e!4718368)))

(declare-fun c!1470327 () Bool)

(assert (=> d!2388384 (= c!1470327 ((_ is Nil!74756) (t!390623 testedP!353)))))

(assert (=> d!2388384 (= (++!18477 (t!390623 testedP!353) (Cons!74756 (head!16343 lt!2716415) Nil!74756)) lt!2716537)))

(declare-fun b!8009632 () Bool)

(declare-fun res!3167261 () Bool)

(assert (=> b!8009632 (=> (not res!3167261) (not e!4718367))))

(assert (=> b!8009632 (= res!3167261 (= (size!43553 lt!2716537) (+ (size!43553 (t!390623 testedP!353)) (size!43553 (Cons!74756 (head!16343 lt!2716415) Nil!74756)))))))

(declare-fun b!8009633 () Bool)

(assert (=> b!8009633 (= e!4718367 (or (not (= (Cons!74756 (head!16343 lt!2716415) Nil!74756) Nil!74756)) (= lt!2716537 (t!390623 testedP!353))))))

(assert (= (and d!2388384 c!1470327) b!8009630))

(assert (= (and d!2388384 (not c!1470327)) b!8009631))

(assert (= (and d!2388384 res!3167260) b!8009632))

(assert (= (and b!8009632 res!3167261) b!8009633))

(declare-fun m!8374470 () Bool)

(assert (=> b!8009631 m!8374470))

(declare-fun m!8374472 () Bool)

(assert (=> d!2388384 m!8374472))

(assert (=> d!2388384 m!8374298))

(assert (=> d!2388384 m!8374084))

(declare-fun m!8374474 () Bool)

(assert (=> b!8009632 m!8374474))

(assert (=> b!8009632 m!8373988))

(assert (=> b!8009632 m!8374088))

(assert (=> b!8009158 d!2388384))

(declare-fun d!2388386 () Bool)

(declare-fun lt!2716538 () Int)

(assert (=> d!2388386 (>= lt!2716538 0)))

(declare-fun e!4718369 () Int)

(assert (=> d!2388386 (= lt!2716538 e!4718369)))

(declare-fun c!1470328 () Bool)

(assert (=> d!2388386 (= c!1470328 ((_ is Nil!74756) (t!390623 testedP!353)))))

(assert (=> d!2388386 (= (size!43553 (t!390623 testedP!353)) lt!2716538)))

(declare-fun b!8009634 () Bool)

(assert (=> b!8009634 (= e!4718369 0)))

(declare-fun b!8009635 () Bool)

(assert (=> b!8009635 (= e!4718369 (+ 1 (size!43553 (t!390623 (t!390623 testedP!353)))))))

(assert (= (and d!2388386 c!1470328) b!8009634))

(assert (= (and d!2388386 (not c!1470328)) b!8009635))

(declare-fun m!8374476 () Bool)

(assert (=> b!8009635 m!8374476))

(assert (=> b!8009112 d!2388386))

(declare-fun b!8009637 () Bool)

(declare-fun e!4718371 () List!74880)

(assert (=> b!8009637 (= e!4718371 (Cons!74756 (h!81204 (t!390623 testedP!353)) (++!18477 (t!390623 (t!390623 testedP!353)) testedSuffix!271)))))

(declare-fun b!8009636 () Bool)

(assert (=> b!8009636 (= e!4718371 testedSuffix!271)))

(declare-fun d!2388388 () Bool)

(declare-fun e!4718370 () Bool)

(assert (=> d!2388388 e!4718370))

(declare-fun res!3167262 () Bool)

(assert (=> d!2388388 (=> (not res!3167262) (not e!4718370))))

(declare-fun lt!2716539 () List!74880)

(assert (=> d!2388388 (= res!3167262 (= (content!15902 lt!2716539) ((_ map or) (content!15902 (t!390623 testedP!353)) (content!15902 testedSuffix!271))))))

(assert (=> d!2388388 (= lt!2716539 e!4718371)))

(declare-fun c!1470329 () Bool)

(assert (=> d!2388388 (= c!1470329 ((_ is Nil!74756) (t!390623 testedP!353)))))

(assert (=> d!2388388 (= (++!18477 (t!390623 testedP!353) testedSuffix!271) lt!2716539)))

(declare-fun b!8009638 () Bool)

(declare-fun res!3167263 () Bool)

(assert (=> b!8009638 (=> (not res!3167263) (not e!4718370))))

(assert (=> b!8009638 (= res!3167263 (= (size!43553 lt!2716539) (+ (size!43553 (t!390623 testedP!353)) (size!43553 testedSuffix!271))))))

(declare-fun b!8009639 () Bool)

(assert (=> b!8009639 (= e!4718370 (or (not (= testedSuffix!271 Nil!74756)) (= lt!2716539 (t!390623 testedP!353))))))

(assert (= (and d!2388388 c!1470329) b!8009636))

(assert (= (and d!2388388 (not c!1470329)) b!8009637))

(assert (= (and d!2388388 res!3167262) b!8009638))

(assert (= (and b!8009638 res!3167263) b!8009639))

(declare-fun m!8374478 () Bool)

(assert (=> b!8009637 m!8374478))

(declare-fun m!8374480 () Bool)

(assert (=> d!2388388 m!8374480))

(assert (=> d!2388388 m!8374298))

(assert (=> d!2388388 m!8373982))

(declare-fun m!8374482 () Bool)

(assert (=> b!8009638 m!8374482))

(assert (=> b!8009638 m!8373988))

(assert (=> b!8009638 m!8373986))

(assert (=> b!8009108 d!2388388))

(assert (=> b!8009164 d!2388154))

(assert (=> b!8009164 d!2388158))

(assert (=> b!8009152 d!2388154))

(declare-fun d!2388390 () Bool)

(declare-fun lt!2716540 () Int)

(assert (=> d!2388390 (>= lt!2716540 0)))

(declare-fun e!4718372 () Int)

(assert (=> d!2388390 (= lt!2716540 e!4718372)))

(declare-fun c!1470330 () Bool)

(assert (=> d!2388390 (= c!1470330 ((_ is Nil!74756) (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))

(assert (=> d!2388390 (= (size!43553 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))) lt!2716540)))

(declare-fun b!8009640 () Bool)

(assert (=> b!8009640 (= e!4718372 0)))

(declare-fun b!8009641 () Bool)

(assert (=> b!8009641 (= e!4718372 (+ 1 (size!43553 (t!390623 (++!18477 testedP!353 (Cons!74756 (head!16343 lt!2716415) Nil!74756))))))))

(assert (= (and d!2388390 c!1470330) b!8009640))

(assert (= (and d!2388390 (not c!1470330)) b!8009641))

(declare-fun m!8374484 () Bool)

(assert (=> b!8009641 m!8374484))

(assert (=> b!8009152 d!2388390))

(declare-fun d!2388392 () Bool)

(assert (=> d!2388392 (= (nullable!9709 (reg!21980 r!15422)) (nullableFct!3835 (reg!21980 r!15422)))))

(declare-fun bs!1970834 () Bool)

(assert (= bs!1970834 d!2388392))

(declare-fun m!8374486 () Bool)

(assert (=> bs!1970834 m!8374486))

(assert (=> b!8009247 d!2388392))

(declare-fun b!8009643 () Bool)

(declare-fun e!4718373 () Bool)

(declare-fun tp!2396588 () Bool)

(declare-fun tp!2396590 () Bool)

(assert (=> b!8009643 (= e!4718373 (and tp!2396588 tp!2396590))))

(declare-fun b!8009645 () Bool)

(declare-fun tp!2396587 () Bool)

(declare-fun tp!2396591 () Bool)

(assert (=> b!8009645 (= e!4718373 (and tp!2396587 tp!2396591))))

(assert (=> b!8009420 (= tp!2396578 e!4718373)))

(declare-fun b!8009644 () Bool)

(declare-fun tp!2396589 () Bool)

(assert (=> b!8009644 (= e!4718373 tp!2396589)))

(declare-fun b!8009642 () Bool)

(assert (=> b!8009642 (= e!4718373 tp_is_empty!53845)))

(assert (= (and b!8009420 ((_ is ElementMatch!21651) (regOne!43814 (regOne!43814 r!15422)))) b!8009642))

(assert (= (and b!8009420 ((_ is Concat!30650) (regOne!43814 (regOne!43814 r!15422)))) b!8009643))

(assert (= (and b!8009420 ((_ is Star!21651) (regOne!43814 (regOne!43814 r!15422)))) b!8009644))

(assert (= (and b!8009420 ((_ is Union!21651) (regOne!43814 (regOne!43814 r!15422)))) b!8009645))

(declare-fun b!8009647 () Bool)

(declare-fun e!4718374 () Bool)

(declare-fun tp!2396593 () Bool)

(declare-fun tp!2396595 () Bool)

(assert (=> b!8009647 (= e!4718374 (and tp!2396593 tp!2396595))))

(declare-fun b!8009649 () Bool)

(declare-fun tp!2396592 () Bool)

(declare-fun tp!2396596 () Bool)

(assert (=> b!8009649 (= e!4718374 (and tp!2396592 tp!2396596))))

(assert (=> b!8009420 (= tp!2396580 e!4718374)))

(declare-fun b!8009648 () Bool)

(declare-fun tp!2396594 () Bool)

(assert (=> b!8009648 (= e!4718374 tp!2396594)))

(declare-fun b!8009646 () Bool)

(assert (=> b!8009646 (= e!4718374 tp_is_empty!53845)))

(assert (= (and b!8009420 ((_ is ElementMatch!21651) (regTwo!43814 (regOne!43814 r!15422)))) b!8009646))

(assert (= (and b!8009420 ((_ is Concat!30650) (regTwo!43814 (regOne!43814 r!15422)))) b!8009647))

(assert (= (and b!8009420 ((_ is Star!21651) (regTwo!43814 (regOne!43814 r!15422)))) b!8009648))

(assert (= (and b!8009420 ((_ is Union!21651) (regTwo!43814 (regOne!43814 r!15422)))) b!8009649))

(declare-fun b!8009651 () Bool)

(declare-fun e!4718375 () Bool)

(declare-fun tp!2396598 () Bool)

(declare-fun tp!2396600 () Bool)

(assert (=> b!8009651 (= e!4718375 (and tp!2396598 tp!2396600))))

(declare-fun b!8009653 () Bool)

(declare-fun tp!2396597 () Bool)

(declare-fun tp!2396601 () Bool)

(assert (=> b!8009653 (= e!4718375 (and tp!2396597 tp!2396601))))

(assert (=> b!8009408 (= tp!2396563 e!4718375)))

(declare-fun b!8009652 () Bool)

(declare-fun tp!2396599 () Bool)

(assert (=> b!8009652 (= e!4718375 tp!2396599)))

(declare-fun b!8009650 () Bool)

(assert (=> b!8009650 (= e!4718375 tp_is_empty!53845)))

(assert (= (and b!8009408 ((_ is ElementMatch!21651) (reg!21980 (reg!21980 r!15422)))) b!8009650))

(assert (= (and b!8009408 ((_ is Concat!30650) (reg!21980 (reg!21980 r!15422)))) b!8009651))

(assert (= (and b!8009408 ((_ is Star!21651) (reg!21980 (reg!21980 r!15422)))) b!8009652))

(assert (= (and b!8009408 ((_ is Union!21651) (reg!21980 (reg!21980 r!15422)))) b!8009653))

(declare-fun b!8009655 () Bool)

(declare-fun e!4718376 () Bool)

(declare-fun tp!2396603 () Bool)

(declare-fun tp!2396605 () Bool)

(assert (=> b!8009655 (= e!4718376 (and tp!2396603 tp!2396605))))

(declare-fun b!8009657 () Bool)

(declare-fun tp!2396602 () Bool)

(declare-fun tp!2396606 () Bool)

(assert (=> b!8009657 (= e!4718376 (and tp!2396602 tp!2396606))))

(assert (=> b!8009424 (= tp!2396583 e!4718376)))

(declare-fun b!8009656 () Bool)

(declare-fun tp!2396604 () Bool)

(assert (=> b!8009656 (= e!4718376 tp!2396604)))

(declare-fun b!8009654 () Bool)

(assert (=> b!8009654 (= e!4718376 tp_is_empty!53845)))

(assert (= (and b!8009424 ((_ is ElementMatch!21651) (regOne!43814 (regTwo!43814 r!15422)))) b!8009654))

(assert (= (and b!8009424 ((_ is Concat!30650) (regOne!43814 (regTwo!43814 r!15422)))) b!8009655))

(assert (= (and b!8009424 ((_ is Star!21651) (regOne!43814 (regTwo!43814 r!15422)))) b!8009656))

(assert (= (and b!8009424 ((_ is Union!21651) (regOne!43814 (regTwo!43814 r!15422)))) b!8009657))

(declare-fun b!8009659 () Bool)

(declare-fun e!4718377 () Bool)

(declare-fun tp!2396608 () Bool)

(declare-fun tp!2396610 () Bool)

(assert (=> b!8009659 (= e!4718377 (and tp!2396608 tp!2396610))))

(declare-fun b!8009661 () Bool)

(declare-fun tp!2396607 () Bool)

(declare-fun tp!2396611 () Bool)

(assert (=> b!8009661 (= e!4718377 (and tp!2396607 tp!2396611))))

(assert (=> b!8009424 (= tp!2396585 e!4718377)))

(declare-fun b!8009660 () Bool)

(declare-fun tp!2396609 () Bool)

(assert (=> b!8009660 (= e!4718377 tp!2396609)))

(declare-fun b!8009658 () Bool)

(assert (=> b!8009658 (= e!4718377 tp_is_empty!53845)))

(assert (= (and b!8009424 ((_ is ElementMatch!21651) (regTwo!43814 (regTwo!43814 r!15422)))) b!8009658))

(assert (= (and b!8009424 ((_ is Concat!30650) (regTwo!43814 (regTwo!43814 r!15422)))) b!8009659))

(assert (= (and b!8009424 ((_ is Star!21651) (regTwo!43814 (regTwo!43814 r!15422)))) b!8009660))

(assert (= (and b!8009424 ((_ is Union!21651) (regTwo!43814 (regTwo!43814 r!15422)))) b!8009661))

(declare-fun b!8009663 () Bool)

(declare-fun e!4718378 () Bool)

(declare-fun tp!2396613 () Bool)

(declare-fun tp!2396615 () Bool)

(assert (=> b!8009663 (= e!4718378 (and tp!2396613 tp!2396615))))

(declare-fun b!8009665 () Bool)

(declare-fun tp!2396612 () Bool)

(declare-fun tp!2396616 () Bool)

(assert (=> b!8009665 (= e!4718378 (and tp!2396612 tp!2396616))))

(assert (=> b!8009407 (= tp!2396562 e!4718378)))

(declare-fun b!8009664 () Bool)

(declare-fun tp!2396614 () Bool)

(assert (=> b!8009664 (= e!4718378 tp!2396614)))

(declare-fun b!8009662 () Bool)

(assert (=> b!8009662 (= e!4718378 tp_is_empty!53845)))

(assert (= (and b!8009407 ((_ is ElementMatch!21651) (regOne!43814 (reg!21980 r!15422)))) b!8009662))

(assert (= (and b!8009407 ((_ is Concat!30650) (regOne!43814 (reg!21980 r!15422)))) b!8009663))

(assert (= (and b!8009407 ((_ is Star!21651) (regOne!43814 (reg!21980 r!15422)))) b!8009664))

(assert (= (and b!8009407 ((_ is Union!21651) (regOne!43814 (reg!21980 r!15422)))) b!8009665))

(declare-fun b!8009667 () Bool)

(declare-fun e!4718379 () Bool)

(declare-fun tp!2396618 () Bool)

(declare-fun tp!2396620 () Bool)

(assert (=> b!8009667 (= e!4718379 (and tp!2396618 tp!2396620))))

(declare-fun b!8009669 () Bool)

(declare-fun tp!2396617 () Bool)

(declare-fun tp!2396621 () Bool)

(assert (=> b!8009669 (= e!4718379 (and tp!2396617 tp!2396621))))

(assert (=> b!8009407 (= tp!2396564 e!4718379)))

(declare-fun b!8009668 () Bool)

(declare-fun tp!2396619 () Bool)

(assert (=> b!8009668 (= e!4718379 tp!2396619)))

(declare-fun b!8009666 () Bool)

(assert (=> b!8009666 (= e!4718379 tp_is_empty!53845)))

(assert (= (and b!8009407 ((_ is ElementMatch!21651) (regTwo!43814 (reg!21980 r!15422)))) b!8009666))

(assert (= (and b!8009407 ((_ is Concat!30650) (regTwo!43814 (reg!21980 r!15422)))) b!8009667))

(assert (= (and b!8009407 ((_ is Star!21651) (regTwo!43814 (reg!21980 r!15422)))) b!8009668))

(assert (= (and b!8009407 ((_ is Union!21651) (regTwo!43814 (reg!21980 r!15422)))) b!8009669))

(declare-fun b!8009671 () Bool)

(declare-fun e!4718380 () Bool)

(declare-fun tp!2396623 () Bool)

(declare-fun tp!2396625 () Bool)

(assert (=> b!8009671 (= e!4718380 (and tp!2396623 tp!2396625))))

(declare-fun b!8009673 () Bool)

(declare-fun tp!2396622 () Bool)

(declare-fun tp!2396626 () Bool)

(assert (=> b!8009673 (= e!4718380 (and tp!2396622 tp!2396626))))

(assert (=> b!8009426 (= tp!2396582 e!4718380)))

(declare-fun b!8009672 () Bool)

(declare-fun tp!2396624 () Bool)

(assert (=> b!8009672 (= e!4718380 tp!2396624)))

(declare-fun b!8009670 () Bool)

(assert (=> b!8009670 (= e!4718380 tp_is_empty!53845)))

(assert (= (and b!8009426 ((_ is ElementMatch!21651) (regOne!43815 (regTwo!43814 r!15422)))) b!8009670))

(assert (= (and b!8009426 ((_ is Concat!30650) (regOne!43815 (regTwo!43814 r!15422)))) b!8009671))

(assert (= (and b!8009426 ((_ is Star!21651) (regOne!43815 (regTwo!43814 r!15422)))) b!8009672))

(assert (= (and b!8009426 ((_ is Union!21651) (regOne!43815 (regTwo!43814 r!15422)))) b!8009673))

(declare-fun b!8009675 () Bool)

(declare-fun e!4718381 () Bool)

(declare-fun tp!2396628 () Bool)

(declare-fun tp!2396630 () Bool)

(assert (=> b!8009675 (= e!4718381 (and tp!2396628 tp!2396630))))

(declare-fun b!8009677 () Bool)

(declare-fun tp!2396627 () Bool)

(declare-fun tp!2396631 () Bool)

(assert (=> b!8009677 (= e!4718381 (and tp!2396627 tp!2396631))))

(assert (=> b!8009426 (= tp!2396586 e!4718381)))

(declare-fun b!8009676 () Bool)

(declare-fun tp!2396629 () Bool)

(assert (=> b!8009676 (= e!4718381 tp!2396629)))

(declare-fun b!8009674 () Bool)

(assert (=> b!8009674 (= e!4718381 tp_is_empty!53845)))

(assert (= (and b!8009426 ((_ is ElementMatch!21651) (regTwo!43815 (regTwo!43814 r!15422)))) b!8009674))

(assert (= (and b!8009426 ((_ is Concat!30650) (regTwo!43815 (regTwo!43814 r!15422)))) b!8009675))

(assert (= (and b!8009426 ((_ is Star!21651) (regTwo!43815 (regTwo!43814 r!15422)))) b!8009676))

(assert (= (and b!8009426 ((_ is Union!21651) (regTwo!43815 (regTwo!43814 r!15422)))) b!8009677))

(declare-fun b!8009679 () Bool)

(declare-fun e!4718382 () Bool)

(declare-fun tp!2396633 () Bool)

(declare-fun tp!2396635 () Bool)

(assert (=> b!8009679 (= e!4718382 (and tp!2396633 tp!2396635))))

(declare-fun b!8009681 () Bool)

(declare-fun tp!2396632 () Bool)

(declare-fun tp!2396636 () Bool)

(assert (=> b!8009681 (= e!4718382 (and tp!2396632 tp!2396636))))

(assert (=> b!8009412 (= tp!2396568 e!4718382)))

(declare-fun b!8009680 () Bool)

(declare-fun tp!2396634 () Bool)

(assert (=> b!8009680 (= e!4718382 tp!2396634)))

(declare-fun b!8009678 () Bool)

(assert (=> b!8009678 (= e!4718382 tp_is_empty!53845)))

(assert (= (and b!8009412 ((_ is ElementMatch!21651) (regOne!43814 (regOne!43815 r!15422)))) b!8009678))

(assert (= (and b!8009412 ((_ is Concat!30650) (regOne!43814 (regOne!43815 r!15422)))) b!8009679))

(assert (= (and b!8009412 ((_ is Star!21651) (regOne!43814 (regOne!43815 r!15422)))) b!8009680))

(assert (= (and b!8009412 ((_ is Union!21651) (regOne!43814 (regOne!43815 r!15422)))) b!8009681))

(declare-fun b!8009683 () Bool)

(declare-fun e!4718383 () Bool)

(declare-fun tp!2396638 () Bool)

(declare-fun tp!2396640 () Bool)

(assert (=> b!8009683 (= e!4718383 (and tp!2396638 tp!2396640))))

(declare-fun b!8009685 () Bool)

(declare-fun tp!2396637 () Bool)

(declare-fun tp!2396641 () Bool)

(assert (=> b!8009685 (= e!4718383 (and tp!2396637 tp!2396641))))

(assert (=> b!8009412 (= tp!2396570 e!4718383)))

(declare-fun b!8009684 () Bool)

(declare-fun tp!2396639 () Bool)

(assert (=> b!8009684 (= e!4718383 tp!2396639)))

(declare-fun b!8009682 () Bool)

(assert (=> b!8009682 (= e!4718383 tp_is_empty!53845)))

(assert (= (and b!8009412 ((_ is ElementMatch!21651) (regTwo!43814 (regOne!43815 r!15422)))) b!8009682))

(assert (= (and b!8009412 ((_ is Concat!30650) (regTwo!43814 (regOne!43815 r!15422)))) b!8009683))

(assert (= (and b!8009412 ((_ is Star!21651) (regTwo!43814 (regOne!43815 r!15422)))) b!8009684))

(assert (= (and b!8009412 ((_ is Union!21651) (regTwo!43814 (regOne!43815 r!15422)))) b!8009685))

(declare-fun b!8009687 () Bool)

(declare-fun e!4718384 () Bool)

(declare-fun tp!2396643 () Bool)

(declare-fun tp!2396645 () Bool)

(assert (=> b!8009687 (= e!4718384 (and tp!2396643 tp!2396645))))

(declare-fun b!8009689 () Bool)

(declare-fun tp!2396642 () Bool)

(declare-fun tp!2396646 () Bool)

(assert (=> b!8009689 (= e!4718384 (and tp!2396642 tp!2396646))))

(assert (=> b!8009421 (= tp!2396579 e!4718384)))

(declare-fun b!8009688 () Bool)

(declare-fun tp!2396644 () Bool)

(assert (=> b!8009688 (= e!4718384 tp!2396644)))

(declare-fun b!8009686 () Bool)

(assert (=> b!8009686 (= e!4718384 tp_is_empty!53845)))

(assert (= (and b!8009421 ((_ is ElementMatch!21651) (reg!21980 (regOne!43814 r!15422)))) b!8009686))

(assert (= (and b!8009421 ((_ is Concat!30650) (reg!21980 (regOne!43814 r!15422)))) b!8009687))

(assert (= (and b!8009421 ((_ is Star!21651) (reg!21980 (regOne!43814 r!15422)))) b!8009688))

(assert (= (and b!8009421 ((_ is Union!21651) (reg!21980 (regOne!43814 r!15422)))) b!8009689))

(declare-fun b!8009691 () Bool)

(declare-fun e!4718385 () Bool)

(declare-fun tp!2396648 () Bool)

(declare-fun tp!2396650 () Bool)

(assert (=> b!8009691 (= e!4718385 (and tp!2396648 tp!2396650))))

(declare-fun b!8009693 () Bool)

(declare-fun tp!2396647 () Bool)

(declare-fun tp!2396651 () Bool)

(assert (=> b!8009693 (= e!4718385 (and tp!2396647 tp!2396651))))

(assert (=> b!8009409 (= tp!2396561 e!4718385)))

(declare-fun b!8009692 () Bool)

(declare-fun tp!2396649 () Bool)

(assert (=> b!8009692 (= e!4718385 tp!2396649)))

(declare-fun b!8009690 () Bool)

(assert (=> b!8009690 (= e!4718385 tp_is_empty!53845)))

(assert (= (and b!8009409 ((_ is ElementMatch!21651) (regOne!43815 (reg!21980 r!15422)))) b!8009690))

(assert (= (and b!8009409 ((_ is Concat!30650) (regOne!43815 (reg!21980 r!15422)))) b!8009691))

(assert (= (and b!8009409 ((_ is Star!21651) (regOne!43815 (reg!21980 r!15422)))) b!8009692))

(assert (= (and b!8009409 ((_ is Union!21651) (regOne!43815 (reg!21980 r!15422)))) b!8009693))

(declare-fun b!8009695 () Bool)

(declare-fun e!4718386 () Bool)

(declare-fun tp!2396653 () Bool)

(declare-fun tp!2396655 () Bool)

(assert (=> b!8009695 (= e!4718386 (and tp!2396653 tp!2396655))))

(declare-fun b!8009697 () Bool)

(declare-fun tp!2396652 () Bool)

(declare-fun tp!2396656 () Bool)

(assert (=> b!8009697 (= e!4718386 (and tp!2396652 tp!2396656))))

(assert (=> b!8009409 (= tp!2396565 e!4718386)))

(declare-fun b!8009696 () Bool)

(declare-fun tp!2396654 () Bool)

(assert (=> b!8009696 (= e!4718386 tp!2396654)))

(declare-fun b!8009694 () Bool)

(assert (=> b!8009694 (= e!4718386 tp_is_empty!53845)))

(assert (= (and b!8009409 ((_ is ElementMatch!21651) (regTwo!43815 (reg!21980 r!15422)))) b!8009694))

(assert (= (and b!8009409 ((_ is Concat!30650) (regTwo!43815 (reg!21980 r!15422)))) b!8009695))

(assert (= (and b!8009409 ((_ is Star!21651) (regTwo!43815 (reg!21980 r!15422)))) b!8009696))

(assert (= (and b!8009409 ((_ is Union!21651) (regTwo!43815 (reg!21980 r!15422)))) b!8009697))

(declare-fun b!8009699 () Bool)

(declare-fun e!4718387 () Bool)

(declare-fun tp!2396658 () Bool)

(declare-fun tp!2396660 () Bool)

(assert (=> b!8009699 (= e!4718387 (and tp!2396658 tp!2396660))))

(declare-fun b!8009701 () Bool)

(declare-fun tp!2396657 () Bool)

(declare-fun tp!2396661 () Bool)

(assert (=> b!8009701 (= e!4718387 (and tp!2396657 tp!2396661))))

(assert (=> b!8009416 (= tp!2396573 e!4718387)))

(declare-fun b!8009700 () Bool)

(declare-fun tp!2396659 () Bool)

(assert (=> b!8009700 (= e!4718387 tp!2396659)))

(declare-fun b!8009698 () Bool)

(assert (=> b!8009698 (= e!4718387 tp_is_empty!53845)))

(assert (= (and b!8009416 ((_ is ElementMatch!21651) (regOne!43814 (regTwo!43815 r!15422)))) b!8009698))

(assert (= (and b!8009416 ((_ is Concat!30650) (regOne!43814 (regTwo!43815 r!15422)))) b!8009699))

(assert (= (and b!8009416 ((_ is Star!21651) (regOne!43814 (regTwo!43815 r!15422)))) b!8009700))

(assert (= (and b!8009416 ((_ is Union!21651) (regOne!43814 (regTwo!43815 r!15422)))) b!8009701))

(declare-fun b!8009703 () Bool)

(declare-fun e!4718388 () Bool)

(declare-fun tp!2396663 () Bool)

(declare-fun tp!2396665 () Bool)

(assert (=> b!8009703 (= e!4718388 (and tp!2396663 tp!2396665))))

(declare-fun b!8009705 () Bool)

(declare-fun tp!2396662 () Bool)

(declare-fun tp!2396666 () Bool)

(assert (=> b!8009705 (= e!4718388 (and tp!2396662 tp!2396666))))

(assert (=> b!8009416 (= tp!2396575 e!4718388)))

(declare-fun b!8009704 () Bool)

(declare-fun tp!2396664 () Bool)

(assert (=> b!8009704 (= e!4718388 tp!2396664)))

(declare-fun b!8009702 () Bool)

(assert (=> b!8009702 (= e!4718388 tp_is_empty!53845)))

(assert (= (and b!8009416 ((_ is ElementMatch!21651) (regTwo!43814 (regTwo!43815 r!15422)))) b!8009702))

(assert (= (and b!8009416 ((_ is Concat!30650) (regTwo!43814 (regTwo!43815 r!15422)))) b!8009703))

(assert (= (and b!8009416 ((_ is Star!21651) (regTwo!43814 (regTwo!43815 r!15422)))) b!8009704))

(assert (= (and b!8009416 ((_ is Union!21651) (regTwo!43814 (regTwo!43815 r!15422)))) b!8009705))

(declare-fun b!8009707 () Bool)

(declare-fun e!4718389 () Bool)

(declare-fun tp!2396668 () Bool)

(declare-fun tp!2396670 () Bool)

(assert (=> b!8009707 (= e!4718389 (and tp!2396668 tp!2396670))))

(declare-fun b!8009709 () Bool)

(declare-fun tp!2396667 () Bool)

(declare-fun tp!2396671 () Bool)

(assert (=> b!8009709 (= e!4718389 (and tp!2396667 tp!2396671))))

(assert (=> b!8009425 (= tp!2396584 e!4718389)))

(declare-fun b!8009708 () Bool)

(declare-fun tp!2396669 () Bool)

(assert (=> b!8009708 (= e!4718389 tp!2396669)))

(declare-fun b!8009706 () Bool)

(assert (=> b!8009706 (= e!4718389 tp_is_empty!53845)))

(assert (= (and b!8009425 ((_ is ElementMatch!21651) (reg!21980 (regTwo!43814 r!15422)))) b!8009706))

(assert (= (and b!8009425 ((_ is Concat!30650) (reg!21980 (regTwo!43814 r!15422)))) b!8009707))

(assert (= (and b!8009425 ((_ is Star!21651) (reg!21980 (regTwo!43814 r!15422)))) b!8009708))

(assert (= (and b!8009425 ((_ is Union!21651) (reg!21980 (regTwo!43814 r!15422)))) b!8009709))

(declare-fun b!8009710 () Bool)

(declare-fun e!4718390 () Bool)

(declare-fun tp!2396672 () Bool)

(assert (=> b!8009710 (= e!4718390 (and tp_is_empty!53845 tp!2396672))))

(assert (=> b!8009395 (= tp!2396550 e!4718390)))

(assert (= (and b!8009395 ((_ is Cons!74756) (t!390623 (t!390623 testedP!353)))) b!8009710))

(declare-fun b!8009712 () Bool)

(declare-fun e!4718391 () Bool)

(declare-fun tp!2396674 () Bool)

(declare-fun tp!2396676 () Bool)

(assert (=> b!8009712 (= e!4718391 (and tp!2396674 tp!2396676))))

(declare-fun b!8009714 () Bool)

(declare-fun tp!2396673 () Bool)

(declare-fun tp!2396677 () Bool)

(assert (=> b!8009714 (= e!4718391 (and tp!2396673 tp!2396677))))

(assert (=> b!8009418 (= tp!2396572 e!4718391)))

(declare-fun b!8009713 () Bool)

(declare-fun tp!2396675 () Bool)

(assert (=> b!8009713 (= e!4718391 tp!2396675)))

(declare-fun b!8009711 () Bool)

(assert (=> b!8009711 (= e!4718391 tp_is_empty!53845)))

(assert (= (and b!8009418 ((_ is ElementMatch!21651) (regOne!43815 (regTwo!43815 r!15422)))) b!8009711))

(assert (= (and b!8009418 ((_ is Concat!30650) (regOne!43815 (regTwo!43815 r!15422)))) b!8009712))

(assert (= (and b!8009418 ((_ is Star!21651) (regOne!43815 (regTwo!43815 r!15422)))) b!8009713))

(assert (= (and b!8009418 ((_ is Union!21651) (regOne!43815 (regTwo!43815 r!15422)))) b!8009714))

(declare-fun b!8009716 () Bool)

(declare-fun e!4718392 () Bool)

(declare-fun tp!2396679 () Bool)

(declare-fun tp!2396681 () Bool)

(assert (=> b!8009716 (= e!4718392 (and tp!2396679 tp!2396681))))

(declare-fun b!8009718 () Bool)

(declare-fun tp!2396678 () Bool)

(declare-fun tp!2396682 () Bool)

(assert (=> b!8009718 (= e!4718392 (and tp!2396678 tp!2396682))))

(assert (=> b!8009418 (= tp!2396576 e!4718392)))

(declare-fun b!8009717 () Bool)

(declare-fun tp!2396680 () Bool)

(assert (=> b!8009717 (= e!4718392 tp!2396680)))

(declare-fun b!8009715 () Bool)

(assert (=> b!8009715 (= e!4718392 tp_is_empty!53845)))

(assert (= (and b!8009418 ((_ is ElementMatch!21651) (regTwo!43815 (regTwo!43815 r!15422)))) b!8009715))

(assert (= (and b!8009418 ((_ is Concat!30650) (regTwo!43815 (regTwo!43815 r!15422)))) b!8009716))

(assert (= (and b!8009418 ((_ is Star!21651) (regTwo!43815 (regTwo!43815 r!15422)))) b!8009717))

(assert (= (and b!8009418 ((_ is Union!21651) (regTwo!43815 (regTwo!43815 r!15422)))) b!8009718))

(declare-fun b!8009720 () Bool)

(declare-fun e!4718393 () Bool)

(declare-fun tp!2396684 () Bool)

(declare-fun tp!2396686 () Bool)

(assert (=> b!8009720 (= e!4718393 (and tp!2396684 tp!2396686))))

(declare-fun b!8009722 () Bool)

(declare-fun tp!2396683 () Bool)

(declare-fun tp!2396687 () Bool)

(assert (=> b!8009722 (= e!4718393 (and tp!2396683 tp!2396687))))

(assert (=> b!8009413 (= tp!2396569 e!4718393)))

(declare-fun b!8009721 () Bool)

(declare-fun tp!2396685 () Bool)

(assert (=> b!8009721 (= e!4718393 tp!2396685)))

(declare-fun b!8009719 () Bool)

(assert (=> b!8009719 (= e!4718393 tp_is_empty!53845)))

(assert (= (and b!8009413 ((_ is ElementMatch!21651) (reg!21980 (regOne!43815 r!15422)))) b!8009719))

(assert (= (and b!8009413 ((_ is Concat!30650) (reg!21980 (regOne!43815 r!15422)))) b!8009720))

(assert (= (and b!8009413 ((_ is Star!21651) (reg!21980 (regOne!43815 r!15422)))) b!8009721))

(assert (= (and b!8009413 ((_ is Union!21651) (reg!21980 (regOne!43815 r!15422)))) b!8009722))

(declare-fun b!8009724 () Bool)

(declare-fun e!4718394 () Bool)

(declare-fun tp!2396689 () Bool)

(declare-fun tp!2396691 () Bool)

(assert (=> b!8009724 (= e!4718394 (and tp!2396689 tp!2396691))))

(declare-fun b!8009726 () Bool)

(declare-fun tp!2396688 () Bool)

(declare-fun tp!2396692 () Bool)

(assert (=> b!8009726 (= e!4718394 (and tp!2396688 tp!2396692))))

(assert (=> b!8009422 (= tp!2396577 e!4718394)))

(declare-fun b!8009725 () Bool)

(declare-fun tp!2396690 () Bool)

(assert (=> b!8009725 (= e!4718394 tp!2396690)))

(declare-fun b!8009723 () Bool)

(assert (=> b!8009723 (= e!4718394 tp_is_empty!53845)))

(assert (= (and b!8009422 ((_ is ElementMatch!21651) (regOne!43815 (regOne!43814 r!15422)))) b!8009723))

(assert (= (and b!8009422 ((_ is Concat!30650) (regOne!43815 (regOne!43814 r!15422)))) b!8009724))

(assert (= (and b!8009422 ((_ is Star!21651) (regOne!43815 (regOne!43814 r!15422)))) b!8009725))

(assert (= (and b!8009422 ((_ is Union!21651) (regOne!43815 (regOne!43814 r!15422)))) b!8009726))

(declare-fun b!8009728 () Bool)

(declare-fun e!4718395 () Bool)

(declare-fun tp!2396694 () Bool)

(declare-fun tp!2396696 () Bool)

(assert (=> b!8009728 (= e!4718395 (and tp!2396694 tp!2396696))))

(declare-fun b!8009730 () Bool)

(declare-fun tp!2396693 () Bool)

(declare-fun tp!2396697 () Bool)

(assert (=> b!8009730 (= e!4718395 (and tp!2396693 tp!2396697))))

(assert (=> b!8009422 (= tp!2396581 e!4718395)))

(declare-fun b!8009729 () Bool)

(declare-fun tp!2396695 () Bool)

(assert (=> b!8009729 (= e!4718395 tp!2396695)))

(declare-fun b!8009727 () Bool)

(assert (=> b!8009727 (= e!4718395 tp_is_empty!53845)))

(assert (= (and b!8009422 ((_ is ElementMatch!21651) (regTwo!43815 (regOne!43814 r!15422)))) b!8009727))

(assert (= (and b!8009422 ((_ is Concat!30650) (regTwo!43815 (regOne!43814 r!15422)))) b!8009728))

(assert (= (and b!8009422 ((_ is Star!21651) (regTwo!43815 (regOne!43814 r!15422)))) b!8009729))

(assert (= (and b!8009422 ((_ is Union!21651) (regTwo!43815 (regOne!43814 r!15422)))) b!8009730))

(declare-fun b!8009732 () Bool)

(declare-fun e!4718396 () Bool)

(declare-fun tp!2396699 () Bool)

(declare-fun tp!2396701 () Bool)

(assert (=> b!8009732 (= e!4718396 (and tp!2396699 tp!2396701))))

(declare-fun b!8009734 () Bool)

(declare-fun tp!2396698 () Bool)

(declare-fun tp!2396702 () Bool)

(assert (=> b!8009734 (= e!4718396 (and tp!2396698 tp!2396702))))

(assert (=> b!8009417 (= tp!2396574 e!4718396)))

(declare-fun b!8009733 () Bool)

(declare-fun tp!2396700 () Bool)

(assert (=> b!8009733 (= e!4718396 tp!2396700)))

(declare-fun b!8009731 () Bool)

(assert (=> b!8009731 (= e!4718396 tp_is_empty!53845)))

(assert (= (and b!8009417 ((_ is ElementMatch!21651) (reg!21980 (regTwo!43815 r!15422)))) b!8009731))

(assert (= (and b!8009417 ((_ is Concat!30650) (reg!21980 (regTwo!43815 r!15422)))) b!8009732))

(assert (= (and b!8009417 ((_ is Star!21651) (reg!21980 (regTwo!43815 r!15422)))) b!8009733))

(assert (= (and b!8009417 ((_ is Union!21651) (reg!21980 (regTwo!43815 r!15422)))) b!8009734))

(declare-fun b!8009735 () Bool)

(declare-fun e!4718397 () Bool)

(declare-fun tp!2396703 () Bool)

(assert (=> b!8009735 (= e!4718397 (and tp_is_empty!53845 tp!2396703))))

(assert (=> b!8009410 (= tp!2396566 e!4718397)))

(assert (= (and b!8009410 ((_ is Cons!74756) (t!390623 (t!390623 totalInput!1349)))) b!8009735))

(declare-fun b!8009736 () Bool)

(declare-fun e!4718398 () Bool)

(declare-fun tp!2396704 () Bool)

(assert (=> b!8009736 (= e!4718398 (and tp_is_empty!53845 tp!2396704))))

(assert (=> b!8009394 (= tp!2396549 e!4718398)))

(assert (= (and b!8009394 ((_ is Cons!74756) (t!390623 (t!390623 testedSuffix!271)))) b!8009736))

(declare-fun b!8009738 () Bool)

(declare-fun e!4718399 () Bool)

(declare-fun tp!2396706 () Bool)

(declare-fun tp!2396708 () Bool)

(assert (=> b!8009738 (= e!4718399 (and tp!2396706 tp!2396708))))

(declare-fun b!8009740 () Bool)

(declare-fun tp!2396705 () Bool)

(declare-fun tp!2396709 () Bool)

(assert (=> b!8009740 (= e!4718399 (and tp!2396705 tp!2396709))))

(assert (=> b!8009414 (= tp!2396567 e!4718399)))

(declare-fun b!8009739 () Bool)

(declare-fun tp!2396707 () Bool)

(assert (=> b!8009739 (= e!4718399 tp!2396707)))

(declare-fun b!8009737 () Bool)

(assert (=> b!8009737 (= e!4718399 tp_is_empty!53845)))

(assert (= (and b!8009414 ((_ is ElementMatch!21651) (regOne!43815 (regOne!43815 r!15422)))) b!8009737))

(assert (= (and b!8009414 ((_ is Concat!30650) (regOne!43815 (regOne!43815 r!15422)))) b!8009738))

(assert (= (and b!8009414 ((_ is Star!21651) (regOne!43815 (regOne!43815 r!15422)))) b!8009739))

(assert (= (and b!8009414 ((_ is Union!21651) (regOne!43815 (regOne!43815 r!15422)))) b!8009740))

(declare-fun b!8009742 () Bool)

(declare-fun e!4718400 () Bool)

(declare-fun tp!2396711 () Bool)

(declare-fun tp!2396713 () Bool)

(assert (=> b!8009742 (= e!4718400 (and tp!2396711 tp!2396713))))

(declare-fun b!8009744 () Bool)

(declare-fun tp!2396710 () Bool)

(declare-fun tp!2396714 () Bool)

(assert (=> b!8009744 (= e!4718400 (and tp!2396710 tp!2396714))))

(assert (=> b!8009414 (= tp!2396571 e!4718400)))

(declare-fun b!8009743 () Bool)

(declare-fun tp!2396712 () Bool)

(assert (=> b!8009743 (= e!4718400 tp!2396712)))

(declare-fun b!8009741 () Bool)

(assert (=> b!8009741 (= e!4718400 tp_is_empty!53845)))

(assert (= (and b!8009414 ((_ is ElementMatch!21651) (regTwo!43815 (regOne!43815 r!15422)))) b!8009741))

(assert (= (and b!8009414 ((_ is Concat!30650) (regTwo!43815 (regOne!43815 r!15422)))) b!8009742))

(assert (= (and b!8009414 ((_ is Star!21651) (regTwo!43815 (regOne!43815 r!15422)))) b!8009743))

(assert (= (and b!8009414 ((_ is Union!21651) (regTwo!43815 (regOne!43815 r!15422)))) b!8009744))

(check-sat (not b!8009668) (not b!8009584) (not b!8009725) (not b!8009486) (not d!2388382) (not b!8009643) (not b!8009439) (not b!8009738) (not b!8009644) (not d!2388346) (not b!8009676) (not b!8009680) (not d!2388278) (not b!8009693) (not b!8009447) (not b!8009705) (not b!8009443) (not bm!744076) (not b!8009647) (not b!8009667) (not b!8009517) (not b!8009519) (not b!8009465) (not b!8009712) (not b!8009628) (not b!8009529) (not b!8009649) (not d!2388338) (not b!8009730) (not b!8009652) (not b!8009472) (not bm!744099) (not b!8009742) (not b!8009714) (not d!2388388) (not b!8009638) (not d!2388276) (not b!8009510) (not b!8009428) (not b!8009704) (not b!8009641) (not b!8009637) (not b!8009743) (not b!8009577) (not bm!744077) (not b!8009665) (not b!8009444) (not b!8009675) (not b!8009448) (not bm!744086) (not b!8009697) (not b!8009583) (not b!8009525) (not b!8009602) (not b!8009454) (not d!2388392) (not b!8009599) (not b!8009627) (not bm!744080) (not b!8009728) (not b!8009655) (not b!8009691) (not b!8009616) (not b!8009590) (not b!8009604) (not b!8009436) (not d!2388348) (not b!8009631) (not b!8009527) (not b!8009496) (not bm!744081) (not b!8009520) (not b!8009736) (not bm!744106) (not b!8009688) (not b!8009632) (not b!8009614) (not b!8009679) (not b!8009696) (not b!8009733) (not d!2388298) (not b!8009587) (not b!8009734) (not d!2388368) (not b!8009589) (not b!8009635) (not b!8009695) (not b!8009441) (not b!8009532) (not b!8009656) (not d!2388316) (not b!8009615) (not b!8009672) (not b!8009671) (not b!8009729) (not b!8009648) (not bm!744087) (not b!8009488) (not b!8009664) (not b!8009689) (not d!2388282) (not b!8009713) (not d!2388324) (not b!8009724) (not b!8009685) (not bm!744084) (not b!8009692) (not b!8009610) (not b!8009661) (not bm!744083) (not bm!744102) (not b!8009531) (not b!8009726) (not b!8009721) (not b!8009710) (not d!2388374) (not b!8009699) (not b!8009624) (not bm!744093) (not b!8009681) (not b!8009503) (not b!8009687) (not b!8009716) (not b!8009683) (not b!8009709) (not b!8009701) (not b!8009684) (not b!8009499) (not b!8009663) (not b!8009732) (not b!8009452) (not b!8009445) (not b!8009645) (not b!8009677) (not b!8009739) (not b!8009722) (not d!2388280) (not b!8009660) (not b!8009461) (not b!8009708) (not b!8009700) (not bm!744100) (not b!8009581) (not b!8009657) (not b!8009487) tp_is_empty!53845 (not bm!744094) (not bm!744073) (not bm!744105) (not d!2388384) (not b!8009653) (not b!8009591) (not b!8009483) (not d!2388378) (not d!2388294) (not bm!744074) (not d!2388366) (not b!8009673) (not b!8009659) (not b!8009651) (not b!8009523) (not b!8009611) (not b!8009451) (not b!8009501) (not b!8009607) (not b!8009707) (not b!8009515) (not b!8009533) (not b!8009703) (not b!8009744) (not b!8009579) (not b!8009669) (not d!2388322) (not b!8009740) (not b!8009463) (not b!8009608) (not b!8009718) (not b!8009735) (not b!8009720) (not bm!744103) (not b!8009717) (not b!8009606))
(check-sat)
