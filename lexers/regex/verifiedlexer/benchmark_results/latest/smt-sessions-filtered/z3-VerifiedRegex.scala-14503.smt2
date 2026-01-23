; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754192 () Bool)

(assert start!754192)

(declare-fun b!8014201 () Bool)

(declare-fun e!4720958 () Bool)

(declare-fun e!4720961 () Bool)

(assert (=> b!8014201 (= e!4720958 e!4720961)))

(declare-fun res!3168926 () Bool)

(assert (=> b!8014201 (=> res!3168926 e!4720961)))

(declare-fun lt!2717902 () Int)

(declare-fun lt!2717899 () Int)

(assert (=> b!8014201 (= res!3168926 (>= lt!2717902 lt!2717899))))

(declare-datatypes ((Unit!170854 0))(
  ( (Unit!170855) )
))
(declare-fun lt!2717895 () Unit!170854)

(declare-fun e!4720968 () Unit!170854)

(assert (=> b!8014201 (= lt!2717895 e!4720968)))

(declare-fun c!1470875 () Bool)

(assert (=> b!8014201 (= c!1470875 (= lt!2717902 lt!2717899))))

(assert (=> b!8014201 (<= lt!2717902 lt!2717899)))

(declare-fun lt!2717897 () Unit!170854)

(declare-datatypes ((C!43712 0))(
  ( (C!43713 (val!32404 Int)) )
))
(declare-datatypes ((List!74916 0))(
  ( (Nil!74792) (Cons!74792 (h!81240 C!43712) (t!390659 List!74916)) )
))
(declare-fun testedP!353 () List!74916)

(declare-fun totalInput!1349 () List!74916)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1222 (List!74916 List!74916) Unit!170854)

(assert (=> b!8014201 (= lt!2717897 (lemmaIsPrefixThenSmallerEqSize!1222 testedP!353 totalInput!1349))))

(declare-fun b!8014202 () Bool)

(declare-fun e!4720971 () Bool)

(declare-fun tp_is_empty!53917 () Bool)

(declare-fun tp!2398775 () Bool)

(assert (=> b!8014202 (= e!4720971 (and tp_is_empty!53917 tp!2398775))))

(declare-fun b!8014203 () Bool)

(declare-fun e!4720970 () Bool)

(declare-fun e!4720964 () Bool)

(assert (=> b!8014203 (= e!4720970 (not e!4720964))))

(declare-fun res!3168922 () Bool)

(assert (=> b!8014203 (=> res!3168922 e!4720964)))

(declare-fun isPrefix!6739 (List!74916 List!74916) Bool)

(assert (=> b!8014203 (= res!3168922 (not (isPrefix!6739 testedP!353 totalInput!1349)))))

(declare-fun lt!2717905 () List!74916)

(assert (=> b!8014203 (isPrefix!6739 testedP!353 lt!2717905)))

(declare-fun lt!2717892 () Unit!170854)

(declare-fun testedSuffix!271 () List!74916)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3970 (List!74916 List!74916) Unit!170854)

(assert (=> b!8014203 (= lt!2717892 (lemmaConcatTwoListThenFirstIsPrefix!3970 testedP!353 testedSuffix!271))))

(declare-fun b!8014204 () Bool)

(declare-fun e!4720967 () Bool)

(assert (=> b!8014204 (= e!4720961 e!4720967)))

(declare-fun res!3168928 () Bool)

(assert (=> b!8014204 (=> res!3168928 e!4720967)))

(declare-datatypes ((Regex!21687 0))(
  ( (ElementMatch!21687 (c!1470876 C!43712)) (Concat!30686 (regOne!43886 Regex!21687) (regTwo!43886 Regex!21687)) (EmptyExpr!21687) (Star!21687 (reg!22016 Regex!21687)) (EmptyLang!21687) (Union!21687 (regOne!43887 Regex!21687) (regTwo!43887 Regex!21687)) )
))
(declare-fun r!15422 () Regex!21687)

(declare-fun nullable!9729 (Regex!21687) Bool)

(assert (=> b!8014204 (= res!3168928 (not (nullable!9729 r!15422)))))

(declare-fun lt!2717907 () List!74916)

(declare-fun lt!2717898 () List!74916)

(declare-fun ++!18513 (List!74916 List!74916) List!74916)

(assert (=> b!8014204 (= (++!18513 lt!2717907 lt!2717898) totalInput!1349)))

(declare-fun lt!2717906 () Unit!170854)

(declare-fun lt!2717904 () C!43712)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3594 (List!74916 C!43712 List!74916 List!74916) Unit!170854)

(assert (=> b!8014204 (= lt!2717906 (lemmaMoveElementToOtherListKeepsConcatEq!3594 testedP!353 lt!2717904 lt!2717898 totalInput!1349))))

(declare-fun tail!15884 (List!74916) List!74916)

(assert (=> b!8014204 (= lt!2717898 (tail!15884 testedSuffix!271))))

(declare-fun lt!2717896 () List!74916)

(declare-fun head!16361 (List!74916) C!43712)

(assert (=> b!8014204 (isPrefix!6739 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) totalInput!1349)))

(declare-fun lt!2717894 () Unit!170854)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1412 (List!74916 List!74916) Unit!170854)

(assert (=> b!8014204 (= lt!2717894 (lemmaAddHeadSuffixToPrefixStillPrefix!1412 testedP!353 totalInput!1349))))

(assert (=> b!8014204 (= lt!2717907 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)))))

(assert (=> b!8014204 (= lt!2717904 (head!16361 testedSuffix!271))))

(declare-fun b!8014205 () Bool)

(declare-fun e!4720959 () Bool)

(declare-fun e!4720965 () Bool)

(assert (=> b!8014205 (= e!4720959 e!4720965)))

(declare-fun res!3168924 () Bool)

(assert (=> b!8014205 (=> (not res!3168924) (not e!4720965))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8014205 (= res!3168924 (= testedPSize!271 lt!2717902))))

(declare-fun size!43589 (List!74916) Int)

(assert (=> b!8014205 (= lt!2717902 (size!43589 testedP!353))))

(declare-fun b!8014206 () Bool)

(declare-fun e!4720969 () Bool)

(declare-fun tp!2398778 () Bool)

(declare-fun tp!2398774 () Bool)

(assert (=> b!8014206 (= e!4720969 (and tp!2398778 tp!2398774))))

(declare-fun res!3168920 () Bool)

(declare-fun e!4720963 () Bool)

(assert (=> start!754192 (=> (not res!3168920) (not e!4720963))))

(declare-fun validRegex!11991 (Regex!21687) Bool)

(assert (=> start!754192 (= res!3168920 (validRegex!11991 r!15422))))

(assert (=> start!754192 e!4720963))

(declare-fun e!4720960 () Bool)

(assert (=> start!754192 e!4720960))

(assert (=> start!754192 true))

(declare-fun e!4720957 () Bool)

(assert (=> start!754192 e!4720957))

(assert (=> start!754192 e!4720969))

(assert (=> start!754192 e!4720971))

(declare-fun b!8014207 () Bool)

(declare-fun res!3168929 () Bool)

(assert (=> b!8014207 (=> res!3168929 e!4720958)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8014207 (= res!3168929 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8014208 () Bool)

(assert (=> b!8014208 (= e!4720964 e!4720958)))

(declare-fun res!3168927 () Bool)

(assert (=> b!8014208 (=> res!3168927 e!4720958)))

(declare-fun lostCause!2074 (Regex!21687) Bool)

(assert (=> b!8014208 (= res!3168927 (lostCause!2074 r!15422))))

(assert (=> b!8014208 (and (= testedSuffix!271 lt!2717896) (= lt!2717896 testedSuffix!271))))

(declare-fun lt!2717900 () Unit!170854)

(declare-fun lemmaSamePrefixThenSameSuffix!3096 (List!74916 List!74916 List!74916 List!74916 List!74916) Unit!170854)

(assert (=> b!8014208 (= lt!2717900 (lemmaSamePrefixThenSameSuffix!3096 testedP!353 testedSuffix!271 testedP!353 lt!2717896 totalInput!1349))))

(declare-fun getSuffix!3934 (List!74916 List!74916) List!74916)

(assert (=> b!8014208 (= lt!2717896 (getSuffix!3934 totalInput!1349 testedP!353))))

(declare-fun b!8014209 () Bool)

(assert (=> b!8014209 (= e!4720969 tp_is_empty!53917)))

(declare-fun b!8014210 () Bool)

(declare-fun e!4720962 () Bool)

(declare-fun e!4720966 () Bool)

(assert (=> b!8014210 (= e!4720962 e!4720966)))

(declare-fun res!3168925 () Bool)

(assert (=> b!8014210 (=> (not res!3168925) (not e!4720966))))

(declare-datatypes ((tuple2!70772 0))(
  ( (tuple2!70773 (_1!38689 List!74916) (_2!38689 List!74916)) )
))
(declare-fun lt!2717903 () tuple2!70772)

(assert (=> b!8014210 (= res!3168925 (= (++!18513 (_1!38689 lt!2717903) (_2!38689 lt!2717903)) totalInput!1349))))

(declare-fun b!8014211 () Bool)

(declare-fun tp!2398776 () Bool)

(assert (=> b!8014211 (= e!4720960 (and tp_is_empty!53917 tp!2398776))))

(declare-fun b!8014212 () Bool)

(assert (=> b!8014212 (= e!4720967 e!4720962)))

(declare-fun res!3168930 () Bool)

(assert (=> b!8014212 (=> res!3168930 e!4720962)))

(declare-fun isEmpty!42978 (List!74916) Bool)

(assert (=> b!8014212 (= res!3168930 (isEmpty!42978 (_1!38689 lt!2717903)))))

(declare-fun findLongestMatchInner!2336 (Regex!21687 List!74916 Int List!74916 List!74916 Int) tuple2!70772)

(declare-fun derivativeStep!6638 (Regex!21687 C!43712) Regex!21687)

(assert (=> b!8014212 (= lt!2717903 (findLongestMatchInner!2336 (derivativeStep!6638 r!15422 lt!2717904) lt!2717907 (+ 1 testedPSize!271) lt!2717898 totalInput!1349 totalInputSize!629))))

(declare-fun b!8014213 () Bool)

(assert (=> b!8014213 (= e!4720966 (>= (size!43589 (_1!38689 lt!2717903)) lt!2717902))))

(declare-fun b!8014214 () Bool)

(declare-fun tp!2398773 () Bool)

(assert (=> b!8014214 (= e!4720969 tp!2398773)))

(declare-fun b!8014215 () Bool)

(declare-fun Unit!170856 () Unit!170854)

(assert (=> b!8014215 (= e!4720968 Unit!170856)))

(declare-fun b!8014216 () Bool)

(assert (=> b!8014216 (= e!4720965 e!4720970)))

(declare-fun res!3168923 () Bool)

(assert (=> b!8014216 (=> (not res!3168923) (not e!4720970))))

(assert (=> b!8014216 (= res!3168923 (= totalInputSize!629 lt!2717899))))

(assert (=> b!8014216 (= lt!2717899 (size!43589 totalInput!1349))))

(declare-fun b!8014217 () Bool)

(declare-fun tp!2398777 () Bool)

(assert (=> b!8014217 (= e!4720957 (and tp_is_empty!53917 tp!2398777))))

(declare-fun b!8014218 () Bool)

(assert (=> b!8014218 (= e!4720963 e!4720959)))

(declare-fun res!3168921 () Bool)

(assert (=> b!8014218 (=> (not res!3168921) (not e!4720959))))

(assert (=> b!8014218 (= res!3168921 (= lt!2717905 totalInput!1349))))

(assert (=> b!8014218 (= lt!2717905 (++!18513 testedP!353 testedSuffix!271))))

(declare-fun b!8014219 () Bool)

(declare-fun tp!2398771 () Bool)

(declare-fun tp!2398772 () Bool)

(assert (=> b!8014219 (= e!4720969 (and tp!2398771 tp!2398772))))

(declare-fun b!8014220 () Bool)

(declare-fun Unit!170857 () Unit!170854)

(assert (=> b!8014220 (= e!4720968 Unit!170857)))

(declare-fun lt!2717893 () Unit!170854)

(declare-fun lemmaIsPrefixRefl!4181 (List!74916 List!74916) Unit!170854)

(assert (=> b!8014220 (= lt!2717893 (lemmaIsPrefixRefl!4181 totalInput!1349 totalInput!1349))))

(assert (=> b!8014220 (isPrefix!6739 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717901 () Unit!170854)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1751 (List!74916 List!74916 List!74916) Unit!170854)

(assert (=> b!8014220 (= lt!2717901 (lemmaIsPrefixSameLengthThenSameList!1751 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8014220 false))

(assert (= (and start!754192 res!3168920) b!8014218))

(assert (= (and b!8014218 res!3168921) b!8014205))

(assert (= (and b!8014205 res!3168924) b!8014216))

(assert (= (and b!8014216 res!3168923) b!8014203))

(assert (= (and b!8014203 (not res!3168922)) b!8014208))

(assert (= (and b!8014208 (not res!3168927)) b!8014207))

(assert (= (and b!8014207 (not res!3168929)) b!8014201))

(assert (= (and b!8014201 c!1470875) b!8014220))

(assert (= (and b!8014201 (not c!1470875)) b!8014215))

(assert (= (and b!8014201 (not res!3168926)) b!8014204))

(assert (= (and b!8014204 (not res!3168928)) b!8014212))

(assert (= (and b!8014212 (not res!3168930)) b!8014210))

(assert (= (and b!8014210 res!3168925) b!8014213))

(get-info :version)

(assert (= (and start!754192 ((_ is Cons!74792) totalInput!1349)) b!8014211))

(assert (= (and start!754192 ((_ is Cons!74792) testedSuffix!271)) b!8014217))

(assert (= (and start!754192 ((_ is ElementMatch!21687) r!15422)) b!8014209))

(assert (= (and start!754192 ((_ is Concat!30686) r!15422)) b!8014206))

(assert (= (and start!754192 ((_ is Star!21687) r!15422)) b!8014214))

(assert (= (and start!754192 ((_ is Union!21687) r!15422)) b!8014219))

(assert (= (and start!754192 ((_ is Cons!74792) testedP!353)) b!8014202))

(declare-fun m!8377372 () Bool)

(assert (=> b!8014203 m!8377372))

(declare-fun m!8377374 () Bool)

(assert (=> b!8014203 m!8377374))

(declare-fun m!8377376 () Bool)

(assert (=> b!8014203 m!8377376))

(declare-fun m!8377378 () Bool)

(assert (=> b!8014212 m!8377378))

(declare-fun m!8377380 () Bool)

(assert (=> b!8014212 m!8377380))

(assert (=> b!8014212 m!8377380))

(declare-fun m!8377382 () Bool)

(assert (=> b!8014212 m!8377382))

(declare-fun m!8377384 () Bool)

(assert (=> b!8014220 m!8377384))

(declare-fun m!8377386 () Bool)

(assert (=> b!8014220 m!8377386))

(declare-fun m!8377388 () Bool)

(assert (=> b!8014220 m!8377388))

(declare-fun m!8377390 () Bool)

(assert (=> b!8014216 m!8377390))

(declare-fun m!8377392 () Bool)

(assert (=> start!754192 m!8377392))

(declare-fun m!8377394 () Bool)

(assert (=> b!8014205 m!8377394))

(declare-fun m!8377396 () Bool)

(assert (=> b!8014204 m!8377396))

(declare-fun m!8377398 () Bool)

(assert (=> b!8014204 m!8377398))

(declare-fun m!8377400 () Bool)

(assert (=> b!8014204 m!8377400))

(declare-fun m!8377402 () Bool)

(assert (=> b!8014204 m!8377402))

(declare-fun m!8377404 () Bool)

(assert (=> b!8014204 m!8377404))

(declare-fun m!8377406 () Bool)

(assert (=> b!8014204 m!8377406))

(declare-fun m!8377408 () Bool)

(assert (=> b!8014204 m!8377408))

(declare-fun m!8377410 () Bool)

(assert (=> b!8014204 m!8377410))

(declare-fun m!8377412 () Bool)

(assert (=> b!8014204 m!8377412))

(assert (=> b!8014204 m!8377404))

(declare-fun m!8377414 () Bool)

(assert (=> b!8014204 m!8377414))

(declare-fun m!8377416 () Bool)

(assert (=> b!8014201 m!8377416))

(declare-fun m!8377418 () Bool)

(assert (=> b!8014213 m!8377418))

(declare-fun m!8377420 () Bool)

(assert (=> b!8014208 m!8377420))

(declare-fun m!8377422 () Bool)

(assert (=> b!8014208 m!8377422))

(declare-fun m!8377424 () Bool)

(assert (=> b!8014208 m!8377424))

(declare-fun m!8377426 () Bool)

(assert (=> b!8014218 m!8377426))

(declare-fun m!8377428 () Bool)

(assert (=> b!8014210 m!8377428))

(check-sat tp_is_empty!53917 (not b!8014217) (not b!8014212) (not b!8014214) (not b!8014216) (not b!8014213) (not b!8014219) (not b!8014210) (not b!8014202) (not b!8014203) (not b!8014218) (not b!8014201) (not b!8014205) (not b!8014220) (not b!8014206) (not b!8014208) (not start!754192) (not b!8014204) (not b!8014211))
(check-sat)
(get-model)

(declare-fun b!8014230 () Bool)

(declare-fun e!4720977 () List!74916)

(assert (=> b!8014230 (= e!4720977 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) testedSuffix!271)))))

(declare-fun e!4720976 () Bool)

(declare-fun lt!2717910 () List!74916)

(declare-fun b!8014232 () Bool)

(assert (=> b!8014232 (= e!4720976 (or (not (= testedSuffix!271 Nil!74792)) (= lt!2717910 testedP!353)))))

(declare-fun b!8014229 () Bool)

(assert (=> b!8014229 (= e!4720977 testedSuffix!271)))

(declare-fun d!2389256 () Bool)

(assert (=> d!2389256 e!4720976))

(declare-fun res!3168936 () Bool)

(assert (=> d!2389256 (=> (not res!3168936) (not e!4720976))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15918 (List!74916) (InoxSet C!43712))

(assert (=> d!2389256 (= res!3168936 (= (content!15918 lt!2717910) ((_ map or) (content!15918 testedP!353) (content!15918 testedSuffix!271))))))

(assert (=> d!2389256 (= lt!2717910 e!4720977)))

(declare-fun c!1470879 () Bool)

(assert (=> d!2389256 (= c!1470879 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389256 (= (++!18513 testedP!353 testedSuffix!271) lt!2717910)))

(declare-fun b!8014231 () Bool)

(declare-fun res!3168935 () Bool)

(assert (=> b!8014231 (=> (not res!3168935) (not e!4720976))))

(assert (=> b!8014231 (= res!3168935 (= (size!43589 lt!2717910) (+ (size!43589 testedP!353) (size!43589 testedSuffix!271))))))

(assert (= (and d!2389256 c!1470879) b!8014229))

(assert (= (and d!2389256 (not c!1470879)) b!8014230))

(assert (= (and d!2389256 res!3168936) b!8014231))

(assert (= (and b!8014231 res!3168935) b!8014232))

(declare-fun m!8377430 () Bool)

(assert (=> b!8014230 m!8377430))

(declare-fun m!8377432 () Bool)

(assert (=> d!2389256 m!8377432))

(declare-fun m!8377434 () Bool)

(assert (=> d!2389256 m!8377434))

(declare-fun m!8377436 () Bool)

(assert (=> d!2389256 m!8377436))

(declare-fun m!8377438 () Bool)

(assert (=> b!8014231 m!8377438))

(assert (=> b!8014231 m!8377394))

(declare-fun m!8377440 () Bool)

(assert (=> b!8014231 m!8377440))

(assert (=> b!8014218 d!2389256))

(declare-fun d!2389258 () Bool)

(declare-fun lt!2717913 () Int)

(assert (=> d!2389258 (>= lt!2717913 0)))

(declare-fun e!4720980 () Int)

(assert (=> d!2389258 (= lt!2717913 e!4720980)))

(declare-fun c!1470882 () Bool)

(assert (=> d!2389258 (= c!1470882 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389258 (= (size!43589 testedP!353) lt!2717913)))

(declare-fun b!8014237 () Bool)

(assert (=> b!8014237 (= e!4720980 0)))

(declare-fun b!8014238 () Bool)

(assert (=> b!8014238 (= e!4720980 (+ 1 (size!43589 (t!390659 testedP!353))))))

(assert (= (and d!2389258 c!1470882) b!8014237))

(assert (= (and d!2389258 (not c!1470882)) b!8014238))

(declare-fun m!8377442 () Bool)

(assert (=> b!8014238 m!8377442))

(assert (=> b!8014205 d!2389258))

(declare-fun d!2389260 () Bool)

(declare-fun lt!2717914 () Int)

(assert (=> d!2389260 (>= lt!2717914 0)))

(declare-fun e!4720981 () Int)

(assert (=> d!2389260 (= lt!2717914 e!4720981)))

(declare-fun c!1470883 () Bool)

(assert (=> d!2389260 (= c!1470883 ((_ is Nil!74792) totalInput!1349))))

(assert (=> d!2389260 (= (size!43589 totalInput!1349) lt!2717914)))

(declare-fun b!8014239 () Bool)

(assert (=> b!8014239 (= e!4720981 0)))

(declare-fun b!8014240 () Bool)

(assert (=> b!8014240 (= e!4720981 (+ 1 (size!43589 (t!390659 totalInput!1349))))))

(assert (= (and d!2389260 c!1470883) b!8014239))

(assert (= (and d!2389260 (not c!1470883)) b!8014240))

(declare-fun m!8377444 () Bool)

(assert (=> b!8014240 m!8377444))

(assert (=> b!8014216 d!2389260))

(declare-fun b!8014242 () Bool)

(declare-fun e!4720983 () List!74916)

(assert (=> b!8014242 (= e!4720983 (Cons!74792 (h!81240 (_1!38689 lt!2717903)) (++!18513 (t!390659 (_1!38689 lt!2717903)) (_2!38689 lt!2717903))))))

(declare-fun b!8014244 () Bool)

(declare-fun e!4720982 () Bool)

(declare-fun lt!2717915 () List!74916)

(assert (=> b!8014244 (= e!4720982 (or (not (= (_2!38689 lt!2717903) Nil!74792)) (= lt!2717915 (_1!38689 lt!2717903))))))

(declare-fun b!8014241 () Bool)

(assert (=> b!8014241 (= e!4720983 (_2!38689 lt!2717903))))

(declare-fun d!2389262 () Bool)

(assert (=> d!2389262 e!4720982))

(declare-fun res!3168938 () Bool)

(assert (=> d!2389262 (=> (not res!3168938) (not e!4720982))))

(assert (=> d!2389262 (= res!3168938 (= (content!15918 lt!2717915) ((_ map or) (content!15918 (_1!38689 lt!2717903)) (content!15918 (_2!38689 lt!2717903)))))))

(assert (=> d!2389262 (= lt!2717915 e!4720983)))

(declare-fun c!1470884 () Bool)

(assert (=> d!2389262 (= c!1470884 ((_ is Nil!74792) (_1!38689 lt!2717903)))))

(assert (=> d!2389262 (= (++!18513 (_1!38689 lt!2717903) (_2!38689 lt!2717903)) lt!2717915)))

(declare-fun b!8014243 () Bool)

(declare-fun res!3168937 () Bool)

(assert (=> b!8014243 (=> (not res!3168937) (not e!4720982))))

(assert (=> b!8014243 (= res!3168937 (= (size!43589 lt!2717915) (+ (size!43589 (_1!38689 lt!2717903)) (size!43589 (_2!38689 lt!2717903)))))))

(assert (= (and d!2389262 c!1470884) b!8014241))

(assert (= (and d!2389262 (not c!1470884)) b!8014242))

(assert (= (and d!2389262 res!3168938) b!8014243))

(assert (= (and b!8014243 res!3168937) b!8014244))

(declare-fun m!8377446 () Bool)

(assert (=> b!8014242 m!8377446))

(declare-fun m!8377448 () Bool)

(assert (=> d!2389262 m!8377448))

(declare-fun m!8377450 () Bool)

(assert (=> d!2389262 m!8377450))

(declare-fun m!8377452 () Bool)

(assert (=> d!2389262 m!8377452))

(declare-fun m!8377454 () Bool)

(assert (=> b!8014243 m!8377454))

(assert (=> b!8014243 m!8377418))

(declare-fun m!8377456 () Bool)

(assert (=> b!8014243 m!8377456))

(assert (=> b!8014210 d!2389262))

(declare-fun d!2389264 () Bool)

(assert (=> d!2389264 (isPrefix!6739 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717918 () Unit!170854)

(declare-fun choose!60392 (List!74916 List!74916) Unit!170854)

(assert (=> d!2389264 (= lt!2717918 (choose!60392 totalInput!1349 totalInput!1349))))

(assert (=> d!2389264 (= (lemmaIsPrefixRefl!4181 totalInput!1349 totalInput!1349) lt!2717918)))

(declare-fun bs!1970959 () Bool)

(assert (= bs!1970959 d!2389264))

(assert (=> bs!1970959 m!8377386))

(declare-fun m!8377458 () Bool)

(assert (=> bs!1970959 m!8377458))

(assert (=> b!8014220 d!2389264))

(declare-fun b!8014270 () Bool)

(declare-fun res!3168954 () Bool)

(declare-fun e!4720997 () Bool)

(assert (=> b!8014270 (=> (not res!3168954) (not e!4720997))))

(assert (=> b!8014270 (= res!3168954 (= (head!16361 totalInput!1349) (head!16361 totalInput!1349)))))

(declare-fun d!2389268 () Bool)

(declare-fun e!4720999 () Bool)

(assert (=> d!2389268 e!4720999))

(declare-fun res!3168956 () Bool)

(assert (=> d!2389268 (=> res!3168956 e!4720999)))

(declare-fun lt!2717926 () Bool)

(assert (=> d!2389268 (= res!3168956 (not lt!2717926))))

(declare-fun e!4720996 () Bool)

(assert (=> d!2389268 (= lt!2717926 e!4720996)))

(declare-fun res!3168953 () Bool)

(assert (=> d!2389268 (=> res!3168953 e!4720996)))

(assert (=> d!2389268 (= res!3168953 ((_ is Nil!74792) totalInput!1349))))

(assert (=> d!2389268 (= (isPrefix!6739 totalInput!1349 totalInput!1349) lt!2717926)))

(declare-fun b!8014271 () Bool)

(assert (=> b!8014271 (= e!4720997 (isPrefix!6739 (tail!15884 totalInput!1349) (tail!15884 totalInput!1349)))))

(declare-fun b!8014268 () Bool)

(assert (=> b!8014268 (= e!4720996 e!4720997)))

(declare-fun res!3168955 () Bool)

(assert (=> b!8014268 (=> (not res!3168955) (not e!4720997))))

(assert (=> b!8014268 (= res!3168955 (not ((_ is Nil!74792) totalInput!1349)))))

(declare-fun b!8014272 () Bool)

(assert (=> b!8014272 (= e!4720999 (>= (size!43589 totalInput!1349) (size!43589 totalInput!1349)))))

(assert (= (and d!2389268 (not res!3168953)) b!8014268))

(assert (= (and b!8014268 res!3168955) b!8014270))

(assert (= (and b!8014270 res!3168954) b!8014271))

(assert (= (and d!2389268 (not res!3168956)) b!8014272))

(declare-fun m!8377472 () Bool)

(assert (=> b!8014270 m!8377472))

(assert (=> b!8014270 m!8377472))

(declare-fun m!8377474 () Bool)

(assert (=> b!8014271 m!8377474))

(assert (=> b!8014271 m!8377474))

(assert (=> b!8014271 m!8377474))

(assert (=> b!8014271 m!8377474))

(declare-fun m!8377476 () Bool)

(assert (=> b!8014271 m!8377476))

(assert (=> b!8014272 m!8377390))

(assert (=> b!8014272 m!8377390))

(assert (=> b!8014220 d!2389268))

(declare-fun d!2389272 () Bool)

(assert (=> d!2389272 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717934 () Unit!170854)

(declare-fun choose!60393 (List!74916 List!74916 List!74916) Unit!170854)

(assert (=> d!2389272 (= lt!2717934 (choose!60393 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2389272 (isPrefix!6739 totalInput!1349 totalInput!1349)))

(assert (=> d!2389272 (= (lemmaIsPrefixSameLengthThenSameList!1751 totalInput!1349 testedP!353 totalInput!1349) lt!2717934)))

(declare-fun bs!1970962 () Bool)

(assert (= bs!1970962 d!2389272))

(declare-fun m!8377486 () Bool)

(assert (=> bs!1970962 m!8377486))

(assert (=> bs!1970962 m!8377386))

(assert (=> b!8014220 d!2389272))

(declare-fun d!2389282 () Bool)

(declare-fun res!3168975 () Bool)

(declare-fun e!4721031 () Bool)

(assert (=> d!2389282 (=> res!3168975 e!4721031)))

(assert (=> d!2389282 (= res!3168975 ((_ is ElementMatch!21687) r!15422))))

(assert (=> d!2389282 (= (validRegex!11991 r!15422) e!4721031)))

(declare-fun b!8014313 () Bool)

(declare-fun res!3168973 () Bool)

(declare-fun e!4721026 () Bool)

(assert (=> b!8014313 (=> (not res!3168973) (not e!4721026))))

(declare-fun call!744374 () Bool)

(assert (=> b!8014313 (= res!3168973 call!744374)))

(declare-fun e!4721030 () Bool)

(assert (=> b!8014313 (= e!4721030 e!4721026)))

(declare-fun b!8014314 () Bool)

(declare-fun e!4721029 () Bool)

(declare-fun e!4721032 () Bool)

(assert (=> b!8014314 (= e!4721029 e!4721032)))

(declare-fun res!3168977 () Bool)

(assert (=> b!8014314 (=> (not res!3168977) (not e!4721032))))

(assert (=> b!8014314 (= res!3168977 call!744374)))

(declare-fun b!8014315 () Bool)

(declare-fun call!744375 () Bool)

(assert (=> b!8014315 (= e!4721032 call!744375)))

(declare-fun c!1470902 () Bool)

(declare-fun c!1470903 () Bool)

(declare-fun bm!744368 () Bool)

(declare-fun call!744373 () Bool)

(assert (=> bm!744368 (= call!744373 (validRegex!11991 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))

(declare-fun b!8014316 () Bool)

(assert (=> b!8014316 (= e!4721026 call!744375)))

(declare-fun b!8014317 () Bool)

(declare-fun e!4721027 () Bool)

(declare-fun e!4721028 () Bool)

(assert (=> b!8014317 (= e!4721027 e!4721028)))

(declare-fun res!3168974 () Bool)

(assert (=> b!8014317 (= res!3168974 (not (nullable!9729 (reg!22016 r!15422))))))

(assert (=> b!8014317 (=> (not res!3168974) (not e!4721028))))

(declare-fun b!8014318 () Bool)

(assert (=> b!8014318 (= e!4721027 e!4721030)))

(assert (=> b!8014318 (= c!1470903 ((_ is Union!21687) r!15422))))

(declare-fun b!8014319 () Bool)

(assert (=> b!8014319 (= e!4721028 call!744373)))

(declare-fun b!8014320 () Bool)

(assert (=> b!8014320 (= e!4721031 e!4721027)))

(assert (=> b!8014320 (= c!1470902 ((_ is Star!21687) r!15422))))

(declare-fun b!8014321 () Bool)

(declare-fun res!3168976 () Bool)

(assert (=> b!8014321 (=> res!3168976 e!4721029)))

(assert (=> b!8014321 (= res!3168976 (not ((_ is Concat!30686) r!15422)))))

(assert (=> b!8014321 (= e!4721030 e!4721029)))

(declare-fun bm!744369 () Bool)

(assert (=> bm!744369 (= call!744374 (validRegex!11991 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun bm!744370 () Bool)

(assert (=> bm!744370 (= call!744375 call!744373)))

(assert (= (and d!2389282 (not res!3168975)) b!8014320))

(assert (= (and b!8014320 c!1470902) b!8014317))

(assert (= (and b!8014320 (not c!1470902)) b!8014318))

(assert (= (and b!8014317 res!3168974) b!8014319))

(assert (= (and b!8014318 c!1470903) b!8014313))

(assert (= (and b!8014318 (not c!1470903)) b!8014321))

(assert (= (and b!8014313 res!3168973) b!8014316))

(assert (= (and b!8014321 (not res!3168976)) b!8014314))

(assert (= (and b!8014314 res!3168977) b!8014315))

(assert (= (or b!8014316 b!8014315) bm!744370))

(assert (= (or b!8014313 b!8014314) bm!744369))

(assert (= (or b!8014319 bm!744370) bm!744368))

(declare-fun m!8377546 () Bool)

(assert (=> bm!744368 m!8377546))

(declare-fun m!8377548 () Bool)

(assert (=> b!8014317 m!8377548))

(declare-fun m!8377550 () Bool)

(assert (=> bm!744369 m!8377550))

(assert (=> start!754192 d!2389282))

(declare-fun d!2389304 () Bool)

(declare-fun lostCauseFct!616 (Regex!21687) Bool)

(assert (=> d!2389304 (= (lostCause!2074 r!15422) (lostCauseFct!616 r!15422))))

(declare-fun bs!1970967 () Bool)

(assert (= bs!1970967 d!2389304))

(declare-fun m!8377562 () Bool)

(assert (=> bs!1970967 m!8377562))

(assert (=> b!8014208 d!2389304))

(declare-fun d!2389308 () Bool)

(assert (=> d!2389308 (= testedSuffix!271 lt!2717896)))

(declare-fun lt!2717956 () Unit!170854)

(declare-fun choose!60394 (List!74916 List!74916 List!74916 List!74916 List!74916) Unit!170854)

(assert (=> d!2389308 (= lt!2717956 (choose!60394 testedP!353 testedSuffix!271 testedP!353 lt!2717896 totalInput!1349))))

(assert (=> d!2389308 (isPrefix!6739 testedP!353 totalInput!1349)))

(assert (=> d!2389308 (= (lemmaSamePrefixThenSameSuffix!3096 testedP!353 testedSuffix!271 testedP!353 lt!2717896 totalInput!1349) lt!2717956)))

(declare-fun bs!1970968 () Bool)

(assert (= bs!1970968 d!2389308))

(declare-fun m!8377566 () Bool)

(assert (=> bs!1970968 m!8377566))

(assert (=> bs!1970968 m!8377372))

(assert (=> b!8014208 d!2389308))

(declare-fun d!2389316 () Bool)

(declare-fun lt!2717959 () List!74916)

(assert (=> d!2389316 (= (++!18513 testedP!353 lt!2717959) totalInput!1349)))

(declare-fun e!4721045 () List!74916)

(assert (=> d!2389316 (= lt!2717959 e!4721045)))

(declare-fun c!1470907 () Bool)

(assert (=> d!2389316 (= c!1470907 ((_ is Cons!74792) testedP!353))))

(assert (=> d!2389316 (>= (size!43589 totalInput!1349) (size!43589 testedP!353))))

(assert (=> d!2389316 (= (getSuffix!3934 totalInput!1349 testedP!353) lt!2717959)))

(declare-fun b!8014340 () Bool)

(assert (=> b!8014340 (= e!4721045 (getSuffix!3934 (tail!15884 totalInput!1349) (t!390659 testedP!353)))))

(declare-fun b!8014341 () Bool)

(assert (=> b!8014341 (= e!4721045 totalInput!1349)))

(assert (= (and d!2389316 c!1470907) b!8014340))

(assert (= (and d!2389316 (not c!1470907)) b!8014341))

(declare-fun m!8377568 () Bool)

(assert (=> d!2389316 m!8377568))

(assert (=> d!2389316 m!8377390))

(assert (=> d!2389316 m!8377394))

(assert (=> b!8014340 m!8377474))

(assert (=> b!8014340 m!8377474))

(declare-fun m!8377570 () Bool)

(assert (=> b!8014340 m!8377570))

(assert (=> b!8014208 d!2389316))

(declare-fun d!2389318 () Bool)

(assert (=> d!2389318 (<= (size!43589 testedP!353) (size!43589 totalInput!1349))))

(declare-fun lt!2717962 () Unit!170854)

(declare-fun choose!60395 (List!74916 List!74916) Unit!170854)

(assert (=> d!2389318 (= lt!2717962 (choose!60395 testedP!353 totalInput!1349))))

(assert (=> d!2389318 (isPrefix!6739 testedP!353 totalInput!1349)))

(assert (=> d!2389318 (= (lemmaIsPrefixThenSmallerEqSize!1222 testedP!353 totalInput!1349) lt!2717962)))

(declare-fun bs!1970969 () Bool)

(assert (= bs!1970969 d!2389318))

(assert (=> bs!1970969 m!8377394))

(assert (=> bs!1970969 m!8377390))

(declare-fun m!8377572 () Bool)

(assert (=> bs!1970969 m!8377572))

(assert (=> bs!1970969 m!8377372))

(assert (=> b!8014201 d!2389318))

(declare-fun d!2389320 () Bool)

(assert (=> d!2389320 (= (isEmpty!42978 (_1!38689 lt!2717903)) ((_ is Nil!74792) (_1!38689 lt!2717903)))))

(assert (=> b!8014212 d!2389320))

(declare-fun b!8014522 () Bool)

(declare-fun e!4721146 () tuple2!70772)

(declare-fun call!744444 () tuple2!70772)

(assert (=> b!8014522 (= e!4721146 call!744444)))

(declare-fun d!2389322 () Bool)

(declare-fun e!4721152 () Bool)

(assert (=> d!2389322 e!4721152))

(declare-fun res!3169030 () Bool)

(assert (=> d!2389322 (=> (not res!3169030) (not e!4721152))))

(declare-fun lt!2718135 () tuple2!70772)

(assert (=> d!2389322 (= res!3169030 (= (++!18513 (_1!38689 lt!2718135) (_2!38689 lt!2718135)) totalInput!1349))))

(declare-fun e!4721145 () tuple2!70772)

(assert (=> d!2389322 (= lt!2718135 e!4721145)))

(declare-fun c!1470963 () Bool)

(assert (=> d!2389322 (= c!1470963 (lostCause!2074 (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun lt!2718146 () Unit!170854)

(declare-fun Unit!170861 () Unit!170854)

(assert (=> d!2389322 (= lt!2718146 Unit!170861)))

(assert (=> d!2389322 (= (getSuffix!3934 totalInput!1349 lt!2717907) lt!2717898)))

(declare-fun lt!2718144 () Unit!170854)

(declare-fun lt!2718141 () Unit!170854)

(assert (=> d!2389322 (= lt!2718144 lt!2718141)))

(declare-fun lt!2718119 () List!74916)

(assert (=> d!2389322 (= lt!2717898 lt!2718119)))

(assert (=> d!2389322 (= lt!2718141 (lemmaSamePrefixThenSameSuffix!3096 lt!2717907 lt!2717898 lt!2717907 lt!2718119 totalInput!1349))))

(assert (=> d!2389322 (= lt!2718119 (getSuffix!3934 totalInput!1349 lt!2717907))))

(declare-fun lt!2718122 () Unit!170854)

(declare-fun lt!2718136 () Unit!170854)

(assert (=> d!2389322 (= lt!2718122 lt!2718136)))

(assert (=> d!2389322 (isPrefix!6739 lt!2717907 (++!18513 lt!2717907 lt!2717898))))

(assert (=> d!2389322 (= lt!2718136 (lemmaConcatTwoListThenFirstIsPrefix!3970 lt!2717907 lt!2717898))))

(assert (=> d!2389322 (validRegex!11991 (derivativeStep!6638 r!15422 lt!2717904))))

(assert (=> d!2389322 (= (findLongestMatchInner!2336 (derivativeStep!6638 r!15422 lt!2717904) lt!2717907 (+ 1 testedPSize!271) lt!2717898 totalInput!1349 totalInputSize!629) lt!2718135)))

(declare-fun call!744438 () Regex!21687)

(declare-fun lt!2718145 () List!74916)

(declare-fun call!744442 () List!74916)

(declare-fun bm!744432 () Bool)

(assert (=> bm!744432 (= call!744444 (findLongestMatchInner!2336 call!744438 lt!2718145 (+ 1 testedPSize!271 1) call!744442 totalInput!1349 totalInputSize!629))))

(declare-fun b!8014523 () Bool)

(declare-fun c!1470961 () Bool)

(declare-fun call!744440 () Bool)

(assert (=> b!8014523 (= c!1470961 call!744440)))

(declare-fun lt!2718133 () Unit!170854)

(declare-fun lt!2718140 () Unit!170854)

(assert (=> b!8014523 (= lt!2718133 lt!2718140)))

(assert (=> b!8014523 (= totalInput!1349 lt!2717907)))

(declare-fun call!744441 () Unit!170854)

(assert (=> b!8014523 (= lt!2718140 call!744441)))

(declare-fun lt!2718134 () Unit!170854)

(declare-fun lt!2718121 () Unit!170854)

(assert (=> b!8014523 (= lt!2718134 lt!2718121)))

(declare-fun call!744437 () Bool)

(assert (=> b!8014523 call!744437))

(declare-fun call!744443 () Unit!170854)

(assert (=> b!8014523 (= lt!2718121 call!744443)))

(declare-fun e!4721149 () tuple2!70772)

(declare-fun e!4721147 () tuple2!70772)

(assert (=> b!8014523 (= e!4721149 e!4721147)))

(declare-fun b!8014524 () Bool)

(declare-fun e!4721151 () Bool)

(assert (=> b!8014524 (= e!4721151 (>= (size!43589 (_1!38689 lt!2718135)) (size!43589 lt!2717907)))))

(declare-fun b!8014525 () Bool)

(declare-fun c!1470965 () Bool)

(assert (=> b!8014525 (= c!1470965 call!744440)))

(declare-fun lt!2718130 () Unit!170854)

(declare-fun lt!2718123 () Unit!170854)

(assert (=> b!8014525 (= lt!2718130 lt!2718123)))

(declare-fun lt!2718120 () C!43712)

(declare-fun lt!2718139 () List!74916)

(assert (=> b!8014525 (= (++!18513 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792)) lt!2718139) totalInput!1349)))

(assert (=> b!8014525 (= lt!2718123 (lemmaMoveElementToOtherListKeepsConcatEq!3594 lt!2717907 lt!2718120 lt!2718139 totalInput!1349))))

(assert (=> b!8014525 (= lt!2718139 (tail!15884 lt!2717898))))

(assert (=> b!8014525 (= lt!2718120 (head!16361 lt!2717898))))

(declare-fun lt!2718128 () Unit!170854)

(declare-fun lt!2718137 () Unit!170854)

(assert (=> b!8014525 (= lt!2718128 lt!2718137)))

(assert (=> b!8014525 (isPrefix!6739 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)) totalInput!1349)))

(assert (=> b!8014525 (= lt!2718137 (lemmaAddHeadSuffixToPrefixStillPrefix!1412 lt!2717907 totalInput!1349))))

(declare-fun lt!2718124 () Unit!170854)

(declare-fun lt!2718132 () Unit!170854)

(assert (=> b!8014525 (= lt!2718124 lt!2718132)))

(assert (=> b!8014525 (= lt!2718132 (lemmaAddHeadSuffixToPrefixStillPrefix!1412 lt!2717907 totalInput!1349))))

(assert (=> b!8014525 (= lt!2718145 (++!18513 lt!2717907 (Cons!74792 (head!16361 lt!2717898) Nil!74792)))))

(declare-fun lt!2718127 () Unit!170854)

(declare-fun e!4721150 () Unit!170854)

(assert (=> b!8014525 (= lt!2718127 e!4721150)))

(declare-fun c!1470960 () Bool)

(assert (=> b!8014525 (= c!1470960 (= (size!43589 lt!2717907) (size!43589 totalInput!1349)))))

(declare-fun lt!2718131 () Unit!170854)

(declare-fun lt!2718126 () Unit!170854)

(assert (=> b!8014525 (= lt!2718131 lt!2718126)))

(assert (=> b!8014525 (<= (size!43589 lt!2717907) (size!43589 totalInput!1349))))

(assert (=> b!8014525 (= lt!2718126 (lemmaIsPrefixThenSmallerEqSize!1222 lt!2717907 totalInput!1349))))

(assert (=> b!8014525 (= e!4721149 e!4721146)))

(declare-fun b!8014526 () Bool)

(assert (=> b!8014526 (= e!4721145 (tuple2!70773 Nil!74792 totalInput!1349))))

(declare-fun b!8014527 () Bool)

(declare-fun Unit!170862 () Unit!170854)

(assert (=> b!8014527 (= e!4721150 Unit!170862)))

(declare-fun lt!2718125 () Unit!170854)

(assert (=> b!8014527 (= lt!2718125 call!744443)))

(assert (=> b!8014527 call!744437))

(declare-fun lt!2718143 () Unit!170854)

(assert (=> b!8014527 (= lt!2718143 lt!2718125)))

(declare-fun lt!2718138 () Unit!170854)

(assert (=> b!8014527 (= lt!2718138 call!744441)))

(assert (=> b!8014527 (= totalInput!1349 lt!2717907)))

(declare-fun lt!2718142 () Unit!170854)

(assert (=> b!8014527 (= lt!2718142 lt!2718138)))

(assert (=> b!8014527 false))

(declare-fun bm!744433 () Bool)

(declare-fun call!744439 () C!43712)

(assert (=> bm!744433 (= call!744439 (head!16361 lt!2717898))))

(declare-fun b!8014528 () Bool)

(assert (=> b!8014528 (= e!4721152 e!4721151)))

(declare-fun res!3169029 () Bool)

(assert (=> b!8014528 (=> res!3169029 e!4721151)))

(assert (=> b!8014528 (= res!3169029 (isEmpty!42978 (_1!38689 lt!2718135)))))

(declare-fun bm!744434 () Bool)

(assert (=> bm!744434 (= call!744443 (lemmaIsPrefixRefl!4181 totalInput!1349 totalInput!1349))))

(declare-fun b!8014529 () Bool)

(declare-fun Unit!170863 () Unit!170854)

(assert (=> b!8014529 (= e!4721150 Unit!170863)))

(declare-fun b!8014530 () Bool)

(declare-fun e!4721148 () tuple2!70772)

(declare-fun lt!2718129 () tuple2!70772)

(assert (=> b!8014530 (= e!4721148 lt!2718129)))

(declare-fun bm!744435 () Bool)

(assert (=> bm!744435 (= call!744437 (isPrefix!6739 totalInput!1349 totalInput!1349))))

(declare-fun bm!744436 () Bool)

(assert (=> bm!744436 (= call!744438 (derivativeStep!6638 (derivativeStep!6638 r!15422 lt!2717904) call!744439))))

(declare-fun b!8014531 () Bool)

(assert (=> b!8014531 (= e!4721145 e!4721149)))

(declare-fun c!1470964 () Bool)

(assert (=> b!8014531 (= c!1470964 (= (+ 1 testedPSize!271) totalInputSize!629))))

(declare-fun bm!744437 () Bool)

(assert (=> bm!744437 (= call!744441 (lemmaIsPrefixSameLengthThenSameList!1751 totalInput!1349 lt!2717907 totalInput!1349))))

(declare-fun b!8014532 () Bool)

(assert (=> b!8014532 (= e!4721148 (tuple2!70773 lt!2717907 lt!2717898))))

(declare-fun b!8014533 () Bool)

(assert (=> b!8014533 (= e!4721146 e!4721148)))

(assert (=> b!8014533 (= lt!2718129 call!744444)))

(declare-fun c!1470962 () Bool)

(assert (=> b!8014533 (= c!1470962 (isEmpty!42978 (_1!38689 lt!2718129)))))

(declare-fun bm!744438 () Bool)

(assert (=> bm!744438 (= call!744442 (tail!15884 lt!2717898))))

(declare-fun b!8014534 () Bool)

(assert (=> b!8014534 (= e!4721147 (tuple2!70773 lt!2717907 Nil!74792))))

(declare-fun bm!744439 () Bool)

(assert (=> bm!744439 (= call!744440 (nullable!9729 (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun b!8014535 () Bool)

(assert (=> b!8014535 (= e!4721147 (tuple2!70773 Nil!74792 totalInput!1349))))

(assert (= (and d!2389322 c!1470963) b!8014526))

(assert (= (and d!2389322 (not c!1470963)) b!8014531))

(assert (= (and b!8014531 c!1470964) b!8014523))

(assert (= (and b!8014531 (not c!1470964)) b!8014525))

(assert (= (and b!8014523 c!1470961) b!8014534))

(assert (= (and b!8014523 (not c!1470961)) b!8014535))

(assert (= (and b!8014525 c!1470960) b!8014527))

(assert (= (and b!8014525 (not c!1470960)) b!8014529))

(assert (= (and b!8014525 c!1470965) b!8014533))

(assert (= (and b!8014525 (not c!1470965)) b!8014522))

(assert (= (and b!8014533 c!1470962) b!8014532))

(assert (= (and b!8014533 (not c!1470962)) b!8014530))

(assert (= (or b!8014533 b!8014522) bm!744433))

(assert (= (or b!8014533 b!8014522) bm!744438))

(assert (= (or b!8014533 b!8014522) bm!744436))

(assert (= (or b!8014533 b!8014522) bm!744432))

(assert (= (or b!8014523 b!8014525) bm!744439))

(assert (= (or b!8014523 b!8014527) bm!744435))

(assert (= (or b!8014523 b!8014527) bm!744437))

(assert (= (or b!8014523 b!8014527) bm!744434))

(assert (= (and d!2389322 res!3169030) b!8014528))

(assert (= (and b!8014528 (not res!3169029)) b!8014524))

(declare-fun m!8377674 () Bool)

(assert (=> bm!744432 m!8377674))

(assert (=> bm!744439 m!8377380))

(declare-fun m!8377676 () Bool)

(assert (=> bm!744439 m!8377676))

(declare-fun m!8377678 () Bool)

(assert (=> b!8014525 m!8377678))

(declare-fun m!8377680 () Bool)

(assert (=> b!8014525 m!8377680))

(declare-fun m!8377682 () Bool)

(assert (=> b!8014525 m!8377682))

(assert (=> b!8014525 m!8377682))

(declare-fun m!8377684 () Bool)

(assert (=> b!8014525 m!8377684))

(declare-fun m!8377686 () Bool)

(assert (=> b!8014525 m!8377686))

(assert (=> b!8014525 m!8377390))

(declare-fun m!8377688 () Bool)

(assert (=> b!8014525 m!8377688))

(declare-fun m!8377690 () Bool)

(assert (=> b!8014525 m!8377690))

(declare-fun m!8377692 () Bool)

(assert (=> b!8014525 m!8377692))

(declare-fun m!8377694 () Bool)

(assert (=> b!8014525 m!8377694))

(assert (=> b!8014525 m!8377678))

(declare-fun m!8377696 () Bool)

(assert (=> b!8014525 m!8377696))

(declare-fun m!8377698 () Bool)

(assert (=> b!8014525 m!8377698))

(declare-fun m!8377700 () Bool)

(assert (=> b!8014525 m!8377700))

(declare-fun m!8377702 () Bool)

(assert (=> b!8014525 m!8377702))

(assert (=> b!8014525 m!8377698))

(assert (=> bm!744434 m!8377384))

(declare-fun m!8377704 () Bool)

(assert (=> b!8014533 m!8377704))

(declare-fun m!8377706 () Bool)

(assert (=> d!2389322 m!8377706))

(assert (=> d!2389322 m!8377408))

(declare-fun m!8377708 () Bool)

(assert (=> d!2389322 m!8377708))

(assert (=> d!2389322 m!8377380))

(declare-fun m!8377710 () Bool)

(assert (=> d!2389322 m!8377710))

(assert (=> d!2389322 m!8377408))

(assert (=> d!2389322 m!8377698))

(declare-fun m!8377712 () Bool)

(assert (=> d!2389322 m!8377712))

(declare-fun m!8377714 () Bool)

(assert (=> d!2389322 m!8377714))

(assert (=> d!2389322 m!8377380))

(declare-fun m!8377716 () Bool)

(assert (=> d!2389322 m!8377716))

(declare-fun m!8377718 () Bool)

(assert (=> b!8014524 m!8377718))

(assert (=> b!8014524 m!8377688))

(assert (=> bm!744433 m!8377694))

(assert (=> bm!744436 m!8377380))

(declare-fun m!8377720 () Bool)

(assert (=> bm!744436 m!8377720))

(declare-fun m!8377722 () Bool)

(assert (=> b!8014528 m!8377722))

(assert (=> bm!744435 m!8377386))

(assert (=> bm!744438 m!8377680))

(declare-fun m!8377724 () Bool)

(assert (=> bm!744437 m!8377724))

(assert (=> b!8014212 d!2389322))

(declare-fun call!744455 () Regex!21687)

(declare-fun c!1470978 () Bool)

(declare-fun bm!744448 () Bool)

(declare-fun c!1470977 () Bool)

(declare-fun c!1470979 () Bool)

(assert (=> bm!744448 (= call!744455 (derivativeStep!6638 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))) lt!2717904))))

(declare-fun call!744453 () Regex!21687)

(declare-fun call!744454 () Regex!21687)

(declare-fun b!8014556 () Bool)

(declare-fun e!4721163 () Regex!21687)

(assert (=> b!8014556 (= e!4721163 (Union!21687 (Concat!30686 call!744453 (regTwo!43886 r!15422)) call!744454))))

(declare-fun bm!744449 () Bool)

(declare-fun call!744456 () Regex!21687)

(assert (=> bm!744449 (= call!744454 call!744456)))

(declare-fun b!8014557 () Bool)

(declare-fun e!4721164 () Regex!21687)

(assert (=> b!8014557 (= e!4721164 (Concat!30686 call!744456 r!15422))))

(declare-fun b!8014558 () Bool)

(assert (=> b!8014558 (= c!1470979 (nullable!9729 (regOne!43886 r!15422)))))

(assert (=> b!8014558 (= e!4721164 e!4721163)))

(declare-fun bm!744450 () Bool)

(assert (=> bm!744450 (= call!744453 (derivativeStep!6638 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)) lt!2717904))))

(declare-fun b!8014559 () Bool)

(assert (=> b!8014559 (= e!4721163 (Union!21687 (Concat!30686 call!744454 (regTwo!43886 r!15422)) EmptyLang!21687))))

(declare-fun b!8014560 () Bool)

(assert (=> b!8014560 (= c!1470978 ((_ is Union!21687) r!15422))))

(declare-fun e!4721166 () Regex!21687)

(declare-fun e!4721167 () Regex!21687)

(assert (=> b!8014560 (= e!4721166 e!4721167)))

(declare-fun b!8014561 () Bool)

(declare-fun e!4721165 () Regex!21687)

(assert (=> b!8014561 (= e!4721165 EmptyLang!21687)))

(declare-fun b!8014562 () Bool)

(assert (=> b!8014562 (= e!4721167 e!4721164)))

(assert (=> b!8014562 (= c!1470977 ((_ is Star!21687) r!15422))))

(declare-fun d!2389342 () Bool)

(declare-fun lt!2718149 () Regex!21687)

(assert (=> d!2389342 (validRegex!11991 lt!2718149)))

(assert (=> d!2389342 (= lt!2718149 e!4721165)))

(declare-fun c!1470976 () Bool)

(assert (=> d!2389342 (= c!1470976 (or ((_ is EmptyExpr!21687) r!15422) ((_ is EmptyLang!21687) r!15422)))))

(assert (=> d!2389342 (validRegex!11991 r!15422)))

(assert (=> d!2389342 (= (derivativeStep!6638 r!15422 lt!2717904) lt!2718149)))

(declare-fun b!8014563 () Bool)

(assert (=> b!8014563 (= e!4721166 (ite (= lt!2717904 (c!1470876 r!15422)) EmptyExpr!21687 EmptyLang!21687))))

(declare-fun bm!744451 () Bool)

(assert (=> bm!744451 (= call!744456 call!744455)))

(declare-fun b!8014564 () Bool)

(assert (=> b!8014564 (= e!4721167 (Union!21687 call!744453 call!744455))))

(declare-fun b!8014565 () Bool)

(assert (=> b!8014565 (= e!4721165 e!4721166)))

(declare-fun c!1470980 () Bool)

(assert (=> b!8014565 (= c!1470980 ((_ is ElementMatch!21687) r!15422))))

(assert (= (and d!2389342 c!1470976) b!8014561))

(assert (= (and d!2389342 (not c!1470976)) b!8014565))

(assert (= (and b!8014565 c!1470980) b!8014563))

(assert (= (and b!8014565 (not c!1470980)) b!8014560))

(assert (= (and b!8014560 c!1470978) b!8014564))

(assert (= (and b!8014560 (not c!1470978)) b!8014562))

(assert (= (and b!8014562 c!1470977) b!8014557))

(assert (= (and b!8014562 (not c!1470977)) b!8014558))

(assert (= (and b!8014558 c!1470979) b!8014556))

(assert (= (and b!8014558 (not c!1470979)) b!8014559))

(assert (= (or b!8014556 b!8014559) bm!744449))

(assert (= (or b!8014557 bm!744449) bm!744451))

(assert (= (or b!8014564 bm!744451) bm!744448))

(assert (= (or b!8014564 b!8014556) bm!744450))

(declare-fun m!8377726 () Bool)

(assert (=> bm!744448 m!8377726))

(declare-fun m!8377728 () Bool)

(assert (=> b!8014558 m!8377728))

(declare-fun m!8377730 () Bool)

(assert (=> bm!744450 m!8377730))

(declare-fun m!8377732 () Bool)

(assert (=> d!2389342 m!8377732))

(assert (=> d!2389342 m!8377392))

(assert (=> b!8014212 d!2389342))

(declare-fun d!2389344 () Bool)

(assert (=> d!2389344 (isPrefix!6739 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)) totalInput!1349)))

(declare-fun lt!2718152 () Unit!170854)

(declare-fun choose!60399 (List!74916 List!74916) Unit!170854)

(assert (=> d!2389344 (= lt!2718152 (choose!60399 testedP!353 totalInput!1349))))

(assert (=> d!2389344 (isPrefix!6739 testedP!353 totalInput!1349)))

(assert (=> d!2389344 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1412 testedP!353 totalInput!1349) lt!2718152)))

(declare-fun bs!1970973 () Bool)

(assert (= bs!1970973 d!2389344))

(declare-fun m!8377734 () Bool)

(assert (=> bs!1970973 m!8377734))

(declare-fun m!8377736 () Bool)

(assert (=> bs!1970973 m!8377736))

(assert (=> bs!1970973 m!8377734))

(declare-fun m!8377738 () Bool)

(assert (=> bs!1970973 m!8377738))

(assert (=> bs!1970973 m!8377372))

(assert (=> bs!1970973 m!8377424))

(assert (=> bs!1970973 m!8377424))

(declare-fun m!8377740 () Bool)

(assert (=> bs!1970973 m!8377740))

(assert (=> b!8014204 d!2389344))

(declare-fun b!8014567 () Bool)

(declare-fun e!4721169 () List!74916)

(assert (=> b!8014567 (= e!4721169 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) (Cons!74792 lt!2717904 Nil!74792))))))

(declare-fun lt!2718153 () List!74916)

(declare-fun e!4721168 () Bool)

(declare-fun b!8014569 () Bool)

(assert (=> b!8014569 (= e!4721168 (or (not (= (Cons!74792 lt!2717904 Nil!74792) Nil!74792)) (= lt!2718153 testedP!353)))))

(declare-fun b!8014566 () Bool)

(assert (=> b!8014566 (= e!4721169 (Cons!74792 lt!2717904 Nil!74792))))

(declare-fun d!2389346 () Bool)

(assert (=> d!2389346 e!4721168))

(declare-fun res!3169032 () Bool)

(assert (=> d!2389346 (=> (not res!3169032) (not e!4721168))))

(assert (=> d!2389346 (= res!3169032 (= (content!15918 lt!2718153) ((_ map or) (content!15918 testedP!353) (content!15918 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (=> d!2389346 (= lt!2718153 e!4721169)))

(declare-fun c!1470981 () Bool)

(assert (=> d!2389346 (= c!1470981 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389346 (= (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)) lt!2718153)))

(declare-fun b!8014568 () Bool)

(declare-fun res!3169031 () Bool)

(assert (=> b!8014568 (=> (not res!3169031) (not e!4721168))))

(assert (=> b!8014568 (= res!3169031 (= (size!43589 lt!2718153) (+ (size!43589 testedP!353) (size!43589 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (= (and d!2389346 c!1470981) b!8014566))

(assert (= (and d!2389346 (not c!1470981)) b!8014567))

(assert (= (and d!2389346 res!3169032) b!8014568))

(assert (= (and b!8014568 res!3169031) b!8014569))

(declare-fun m!8377742 () Bool)

(assert (=> b!8014567 m!8377742))

(declare-fun m!8377744 () Bool)

(assert (=> d!2389346 m!8377744))

(assert (=> d!2389346 m!8377434))

(declare-fun m!8377746 () Bool)

(assert (=> d!2389346 m!8377746))

(declare-fun m!8377748 () Bool)

(assert (=> b!8014568 m!8377748))

(assert (=> b!8014568 m!8377394))

(declare-fun m!8377750 () Bool)

(assert (=> b!8014568 m!8377750))

(assert (=> b!8014204 d!2389346))

(declare-fun d!2389348 () Bool)

(assert (=> d!2389348 (= (head!16361 testedSuffix!271) (h!81240 testedSuffix!271))))

(assert (=> b!8014204 d!2389348))

(declare-fun d!2389350 () Bool)

(declare-fun nullableFct!3845 (Regex!21687) Bool)

(assert (=> d!2389350 (= (nullable!9729 r!15422) (nullableFct!3845 r!15422))))

(declare-fun bs!1970974 () Bool)

(assert (= bs!1970974 d!2389350))

(declare-fun m!8377752 () Bool)

(assert (=> bs!1970974 m!8377752))

(assert (=> b!8014204 d!2389350))

(declare-fun b!8014571 () Bool)

(declare-fun res!3169034 () Bool)

(declare-fun e!4721171 () Bool)

(assert (=> b!8014571 (=> (not res!3169034) (not e!4721171))))

(assert (=> b!8014571 (= res!3169034 (= (head!16361 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) (head!16361 totalInput!1349)))))

(declare-fun d!2389352 () Bool)

(declare-fun e!4721172 () Bool)

(assert (=> d!2389352 e!4721172))

(declare-fun res!3169036 () Bool)

(assert (=> d!2389352 (=> res!3169036 e!4721172)))

(declare-fun lt!2718154 () Bool)

(assert (=> d!2389352 (= res!3169036 (not lt!2718154))))

(declare-fun e!4721170 () Bool)

(assert (=> d!2389352 (= lt!2718154 e!4721170)))

(declare-fun res!3169033 () Bool)

(assert (=> d!2389352 (=> res!3169033 e!4721170)))

(assert (=> d!2389352 (= res!3169033 ((_ is Nil!74792) (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(assert (=> d!2389352 (= (isPrefix!6739 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) totalInput!1349) lt!2718154)))

(declare-fun b!8014572 () Bool)

(assert (=> b!8014572 (= e!4721171 (isPrefix!6739 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) (tail!15884 totalInput!1349)))))

(declare-fun b!8014570 () Bool)

(assert (=> b!8014570 (= e!4721170 e!4721171)))

(declare-fun res!3169035 () Bool)

(assert (=> b!8014570 (=> (not res!3169035) (not e!4721171))))

(assert (=> b!8014570 (= res!3169035 (not ((_ is Nil!74792) totalInput!1349)))))

(declare-fun b!8014573 () Bool)

(assert (=> b!8014573 (= e!4721172 (>= (size!43589 totalInput!1349) (size!43589 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (= (and d!2389352 (not res!3169033)) b!8014570))

(assert (= (and b!8014570 res!3169035) b!8014571))

(assert (= (and b!8014571 res!3169034) b!8014572))

(assert (= (and d!2389352 (not res!3169036)) b!8014573))

(assert (=> b!8014571 m!8377404))

(declare-fun m!8377754 () Bool)

(assert (=> b!8014571 m!8377754))

(assert (=> b!8014571 m!8377472))

(assert (=> b!8014572 m!8377404))

(declare-fun m!8377756 () Bool)

(assert (=> b!8014572 m!8377756))

(assert (=> b!8014572 m!8377474))

(assert (=> b!8014572 m!8377756))

(assert (=> b!8014572 m!8377474))

(declare-fun m!8377758 () Bool)

(assert (=> b!8014572 m!8377758))

(assert (=> b!8014573 m!8377390))

(assert (=> b!8014573 m!8377404))

(declare-fun m!8377760 () Bool)

(assert (=> b!8014573 m!8377760))

(assert (=> b!8014204 d!2389352))

(declare-fun d!2389354 () Bool)

(assert (=> d!2389354 (= (head!16361 lt!2717896) (h!81240 lt!2717896))))

(assert (=> b!8014204 d!2389354))

(declare-fun d!2389356 () Bool)

(assert (=> d!2389356 (= (++!18513 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)) lt!2717898) totalInput!1349)))

(declare-fun lt!2718157 () Unit!170854)

(declare-fun choose!60400 (List!74916 C!43712 List!74916 List!74916) Unit!170854)

(assert (=> d!2389356 (= lt!2718157 (choose!60400 testedP!353 lt!2717904 lt!2717898 totalInput!1349))))

(assert (=> d!2389356 (= (++!18513 testedP!353 (Cons!74792 lt!2717904 lt!2717898)) totalInput!1349)))

(assert (=> d!2389356 (= (lemmaMoveElementToOtherListKeepsConcatEq!3594 testedP!353 lt!2717904 lt!2717898 totalInput!1349) lt!2718157)))

(declare-fun bs!1970975 () Bool)

(assert (= bs!1970975 d!2389356))

(assert (=> bs!1970975 m!8377396))

(assert (=> bs!1970975 m!8377396))

(declare-fun m!8377762 () Bool)

(assert (=> bs!1970975 m!8377762))

(declare-fun m!8377764 () Bool)

(assert (=> bs!1970975 m!8377764))

(declare-fun m!8377766 () Bool)

(assert (=> bs!1970975 m!8377766))

(assert (=> b!8014204 d!2389356))

(declare-fun b!8014575 () Bool)

(declare-fun e!4721174 () List!74916)

(assert (=> b!8014575 (= e!4721174 (Cons!74792 (h!81240 lt!2717907) (++!18513 (t!390659 lt!2717907) lt!2717898)))))

(declare-fun e!4721173 () Bool)

(declare-fun lt!2718158 () List!74916)

(declare-fun b!8014577 () Bool)

(assert (=> b!8014577 (= e!4721173 (or (not (= lt!2717898 Nil!74792)) (= lt!2718158 lt!2717907)))))

(declare-fun b!8014574 () Bool)

(assert (=> b!8014574 (= e!4721174 lt!2717898)))

(declare-fun d!2389358 () Bool)

(assert (=> d!2389358 e!4721173))

(declare-fun res!3169038 () Bool)

(assert (=> d!2389358 (=> (not res!3169038) (not e!4721173))))

(assert (=> d!2389358 (= res!3169038 (= (content!15918 lt!2718158) ((_ map or) (content!15918 lt!2717907) (content!15918 lt!2717898))))))

(assert (=> d!2389358 (= lt!2718158 e!4721174)))

(declare-fun c!1470982 () Bool)

(assert (=> d!2389358 (= c!1470982 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389358 (= (++!18513 lt!2717907 lt!2717898) lt!2718158)))

(declare-fun b!8014576 () Bool)

(declare-fun res!3169037 () Bool)

(assert (=> b!8014576 (=> (not res!3169037) (not e!4721173))))

(assert (=> b!8014576 (= res!3169037 (= (size!43589 lt!2718158) (+ (size!43589 lt!2717907) (size!43589 lt!2717898))))))

(assert (= (and d!2389358 c!1470982) b!8014574))

(assert (= (and d!2389358 (not c!1470982)) b!8014575))

(assert (= (and d!2389358 res!3169038) b!8014576))

(assert (= (and b!8014576 res!3169037) b!8014577))

(declare-fun m!8377768 () Bool)

(assert (=> b!8014575 m!8377768))

(declare-fun m!8377770 () Bool)

(assert (=> d!2389358 m!8377770))

(declare-fun m!8377772 () Bool)

(assert (=> d!2389358 m!8377772))

(declare-fun m!8377774 () Bool)

(assert (=> d!2389358 m!8377774))

(declare-fun m!8377776 () Bool)

(assert (=> b!8014576 m!8377776))

(assert (=> b!8014576 m!8377688))

(declare-fun m!8377778 () Bool)

(assert (=> b!8014576 m!8377778))

(assert (=> b!8014204 d!2389358))

(declare-fun d!2389360 () Bool)

(assert (=> d!2389360 (= (tail!15884 testedSuffix!271) (t!390659 testedSuffix!271))))

(assert (=> b!8014204 d!2389360))

(declare-fun b!8014579 () Bool)

(declare-fun e!4721176 () List!74916)

(assert (=> b!8014579 (= e!4721176 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(declare-fun b!8014581 () Bool)

(declare-fun e!4721175 () Bool)

(declare-fun lt!2718159 () List!74916)

(assert (=> b!8014581 (= e!4721175 (or (not (= (Cons!74792 (head!16361 lt!2717896) Nil!74792) Nil!74792)) (= lt!2718159 testedP!353)))))

(declare-fun b!8014578 () Bool)

(assert (=> b!8014578 (= e!4721176 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))

(declare-fun d!2389362 () Bool)

(assert (=> d!2389362 e!4721175))

(declare-fun res!3169040 () Bool)

(assert (=> d!2389362 (=> (not res!3169040) (not e!4721175))))

(assert (=> d!2389362 (= res!3169040 (= (content!15918 lt!2718159) ((_ map or) (content!15918 testedP!353) (content!15918 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (=> d!2389362 (= lt!2718159 e!4721176)))

(declare-fun c!1470983 () Bool)

(assert (=> d!2389362 (= c!1470983 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389362 (= (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) lt!2718159)))

(declare-fun b!8014580 () Bool)

(declare-fun res!3169039 () Bool)

(assert (=> b!8014580 (=> (not res!3169039) (not e!4721175))))

(assert (=> b!8014580 (= res!3169039 (= (size!43589 lt!2718159) (+ (size!43589 testedP!353) (size!43589 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (= (and d!2389362 c!1470983) b!8014578))

(assert (= (and d!2389362 (not c!1470983)) b!8014579))

(assert (= (and d!2389362 res!3169040) b!8014580))

(assert (= (and b!8014580 res!3169039) b!8014581))

(declare-fun m!8377780 () Bool)

(assert (=> b!8014579 m!8377780))

(declare-fun m!8377782 () Bool)

(assert (=> d!2389362 m!8377782))

(assert (=> d!2389362 m!8377434))

(declare-fun m!8377784 () Bool)

(assert (=> d!2389362 m!8377784))

(declare-fun m!8377786 () Bool)

(assert (=> b!8014580 m!8377786))

(assert (=> b!8014580 m!8377394))

(declare-fun m!8377788 () Bool)

(assert (=> b!8014580 m!8377788))

(assert (=> b!8014204 d!2389362))

(declare-fun b!8014583 () Bool)

(declare-fun res!3169042 () Bool)

(declare-fun e!4721178 () Bool)

(assert (=> b!8014583 (=> (not res!3169042) (not e!4721178))))

(assert (=> b!8014583 (= res!3169042 (= (head!16361 testedP!353) (head!16361 totalInput!1349)))))

(declare-fun d!2389364 () Bool)

(declare-fun e!4721179 () Bool)

(assert (=> d!2389364 e!4721179))

(declare-fun res!3169044 () Bool)

(assert (=> d!2389364 (=> res!3169044 e!4721179)))

(declare-fun lt!2718160 () Bool)

(assert (=> d!2389364 (= res!3169044 (not lt!2718160))))

(declare-fun e!4721177 () Bool)

(assert (=> d!2389364 (= lt!2718160 e!4721177)))

(declare-fun res!3169041 () Bool)

(assert (=> d!2389364 (=> res!3169041 e!4721177)))

(assert (=> d!2389364 (= res!3169041 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389364 (= (isPrefix!6739 testedP!353 totalInput!1349) lt!2718160)))

(declare-fun b!8014584 () Bool)

(assert (=> b!8014584 (= e!4721178 (isPrefix!6739 (tail!15884 testedP!353) (tail!15884 totalInput!1349)))))

(declare-fun b!8014582 () Bool)

(assert (=> b!8014582 (= e!4721177 e!4721178)))

(declare-fun res!3169043 () Bool)

(assert (=> b!8014582 (=> (not res!3169043) (not e!4721178))))

(assert (=> b!8014582 (= res!3169043 (not ((_ is Nil!74792) totalInput!1349)))))

(declare-fun b!8014585 () Bool)

(assert (=> b!8014585 (= e!4721179 (>= (size!43589 totalInput!1349) (size!43589 testedP!353)))))

(assert (= (and d!2389364 (not res!3169041)) b!8014582))

(assert (= (and b!8014582 res!3169043) b!8014583))

(assert (= (and b!8014583 res!3169042) b!8014584))

(assert (= (and d!2389364 (not res!3169044)) b!8014585))

(declare-fun m!8377790 () Bool)

(assert (=> b!8014583 m!8377790))

(assert (=> b!8014583 m!8377472))

(declare-fun m!8377792 () Bool)

(assert (=> b!8014584 m!8377792))

(assert (=> b!8014584 m!8377474))

(assert (=> b!8014584 m!8377792))

(assert (=> b!8014584 m!8377474))

(declare-fun m!8377794 () Bool)

(assert (=> b!8014584 m!8377794))

(assert (=> b!8014585 m!8377390))

(assert (=> b!8014585 m!8377394))

(assert (=> b!8014203 d!2389364))

(declare-fun b!8014587 () Bool)

(declare-fun res!3169046 () Bool)

(declare-fun e!4721181 () Bool)

(assert (=> b!8014587 (=> (not res!3169046) (not e!4721181))))

(assert (=> b!8014587 (= res!3169046 (= (head!16361 testedP!353) (head!16361 lt!2717905)))))

(declare-fun d!2389366 () Bool)

(declare-fun e!4721182 () Bool)

(assert (=> d!2389366 e!4721182))

(declare-fun res!3169048 () Bool)

(assert (=> d!2389366 (=> res!3169048 e!4721182)))

(declare-fun lt!2718161 () Bool)

(assert (=> d!2389366 (= res!3169048 (not lt!2718161))))

(declare-fun e!4721180 () Bool)

(assert (=> d!2389366 (= lt!2718161 e!4721180)))

(declare-fun res!3169045 () Bool)

(assert (=> d!2389366 (=> res!3169045 e!4721180)))

(assert (=> d!2389366 (= res!3169045 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389366 (= (isPrefix!6739 testedP!353 lt!2717905) lt!2718161)))

(declare-fun b!8014588 () Bool)

(assert (=> b!8014588 (= e!4721181 (isPrefix!6739 (tail!15884 testedP!353) (tail!15884 lt!2717905)))))

(declare-fun b!8014586 () Bool)

(assert (=> b!8014586 (= e!4721180 e!4721181)))

(declare-fun res!3169047 () Bool)

(assert (=> b!8014586 (=> (not res!3169047) (not e!4721181))))

(assert (=> b!8014586 (= res!3169047 (not ((_ is Nil!74792) lt!2717905)))))

(declare-fun b!8014589 () Bool)

(assert (=> b!8014589 (= e!4721182 (>= (size!43589 lt!2717905) (size!43589 testedP!353)))))

(assert (= (and d!2389366 (not res!3169045)) b!8014586))

(assert (= (and b!8014586 res!3169047) b!8014587))

(assert (= (and b!8014587 res!3169046) b!8014588))

(assert (= (and d!2389366 (not res!3169048)) b!8014589))

(assert (=> b!8014587 m!8377790))

(declare-fun m!8377796 () Bool)

(assert (=> b!8014587 m!8377796))

(assert (=> b!8014588 m!8377792))

(declare-fun m!8377798 () Bool)

(assert (=> b!8014588 m!8377798))

(assert (=> b!8014588 m!8377792))

(assert (=> b!8014588 m!8377798))

(declare-fun m!8377800 () Bool)

(assert (=> b!8014588 m!8377800))

(declare-fun m!8377802 () Bool)

(assert (=> b!8014589 m!8377802))

(assert (=> b!8014589 m!8377394))

(assert (=> b!8014203 d!2389366))

(declare-fun d!2389368 () Bool)

(assert (=> d!2389368 (isPrefix!6739 testedP!353 (++!18513 testedP!353 testedSuffix!271))))

(declare-fun lt!2718164 () Unit!170854)

(declare-fun choose!60401 (List!74916 List!74916) Unit!170854)

(assert (=> d!2389368 (= lt!2718164 (choose!60401 testedP!353 testedSuffix!271))))

(assert (=> d!2389368 (= (lemmaConcatTwoListThenFirstIsPrefix!3970 testedP!353 testedSuffix!271) lt!2718164)))

(declare-fun bs!1970976 () Bool)

(assert (= bs!1970976 d!2389368))

(assert (=> bs!1970976 m!8377426))

(assert (=> bs!1970976 m!8377426))

(declare-fun m!8377804 () Bool)

(assert (=> bs!1970976 m!8377804))

(declare-fun m!8377806 () Bool)

(assert (=> bs!1970976 m!8377806))

(assert (=> b!8014203 d!2389368))

(declare-fun d!2389370 () Bool)

(declare-fun lt!2718165 () Int)

(assert (=> d!2389370 (>= lt!2718165 0)))

(declare-fun e!4721183 () Int)

(assert (=> d!2389370 (= lt!2718165 e!4721183)))

(declare-fun c!1470984 () Bool)

(assert (=> d!2389370 (= c!1470984 ((_ is Nil!74792) (_1!38689 lt!2717903)))))

(assert (=> d!2389370 (= (size!43589 (_1!38689 lt!2717903)) lt!2718165)))

(declare-fun b!8014590 () Bool)

(assert (=> b!8014590 (= e!4721183 0)))

(declare-fun b!8014591 () Bool)

(assert (=> b!8014591 (= e!4721183 (+ 1 (size!43589 (t!390659 (_1!38689 lt!2717903)))))))

(assert (= (and d!2389370 c!1470984) b!8014590))

(assert (= (and d!2389370 (not c!1470984)) b!8014591))

(declare-fun m!8377808 () Bool)

(assert (=> b!8014591 m!8377808))

(assert (=> b!8014213 d!2389370))

(declare-fun b!8014596 () Bool)

(declare-fun e!4721186 () Bool)

(declare-fun tp!2398821 () Bool)

(assert (=> b!8014596 (= e!4721186 (and tp_is_empty!53917 tp!2398821))))

(assert (=> b!8014202 (= tp!2398775 e!4721186)))

(assert (= (and b!8014202 ((_ is Cons!74792) (t!390659 testedP!353))) b!8014596))

(declare-fun b!8014597 () Bool)

(declare-fun e!4721187 () Bool)

(declare-fun tp!2398822 () Bool)

(assert (=> b!8014597 (= e!4721187 (and tp_is_empty!53917 tp!2398822))))

(assert (=> b!8014217 (= tp!2398777 e!4721187)))

(assert (= (and b!8014217 ((_ is Cons!74792) (t!390659 testedSuffix!271))) b!8014597))

(declare-fun b!8014598 () Bool)

(declare-fun e!4721188 () Bool)

(declare-fun tp!2398823 () Bool)

(assert (=> b!8014598 (= e!4721188 (and tp_is_empty!53917 tp!2398823))))

(assert (=> b!8014211 (= tp!2398776 e!4721188)))

(assert (= (and b!8014211 ((_ is Cons!74792) (t!390659 totalInput!1349))) b!8014598))

(declare-fun b!8014609 () Bool)

(declare-fun e!4721191 () Bool)

(assert (=> b!8014609 (= e!4721191 tp_is_empty!53917)))

(declare-fun b!8014610 () Bool)

(declare-fun tp!2398838 () Bool)

(declare-fun tp!2398837 () Bool)

(assert (=> b!8014610 (= e!4721191 (and tp!2398838 tp!2398837))))

(declare-fun b!8014612 () Bool)

(declare-fun tp!2398835 () Bool)

(declare-fun tp!2398834 () Bool)

(assert (=> b!8014612 (= e!4721191 (and tp!2398835 tp!2398834))))

(declare-fun b!8014611 () Bool)

(declare-fun tp!2398836 () Bool)

(assert (=> b!8014611 (= e!4721191 tp!2398836)))

(assert (=> b!8014206 (= tp!2398778 e!4721191)))

(assert (= (and b!8014206 ((_ is ElementMatch!21687) (regOne!43886 r!15422))) b!8014609))

(assert (= (and b!8014206 ((_ is Concat!30686) (regOne!43886 r!15422))) b!8014610))

(assert (= (and b!8014206 ((_ is Star!21687) (regOne!43886 r!15422))) b!8014611))

(assert (= (and b!8014206 ((_ is Union!21687) (regOne!43886 r!15422))) b!8014612))

(declare-fun b!8014613 () Bool)

(declare-fun e!4721192 () Bool)

(assert (=> b!8014613 (= e!4721192 tp_is_empty!53917)))

(declare-fun b!8014614 () Bool)

(declare-fun tp!2398843 () Bool)

(declare-fun tp!2398842 () Bool)

(assert (=> b!8014614 (= e!4721192 (and tp!2398843 tp!2398842))))

(declare-fun b!8014616 () Bool)

(declare-fun tp!2398840 () Bool)

(declare-fun tp!2398839 () Bool)

(assert (=> b!8014616 (= e!4721192 (and tp!2398840 tp!2398839))))

(declare-fun b!8014615 () Bool)

(declare-fun tp!2398841 () Bool)

(assert (=> b!8014615 (= e!4721192 tp!2398841)))

(assert (=> b!8014206 (= tp!2398774 e!4721192)))

(assert (= (and b!8014206 ((_ is ElementMatch!21687) (regTwo!43886 r!15422))) b!8014613))

(assert (= (and b!8014206 ((_ is Concat!30686) (regTwo!43886 r!15422))) b!8014614))

(assert (= (and b!8014206 ((_ is Star!21687) (regTwo!43886 r!15422))) b!8014615))

(assert (= (and b!8014206 ((_ is Union!21687) (regTwo!43886 r!15422))) b!8014616))

(declare-fun b!8014617 () Bool)

(declare-fun e!4721193 () Bool)

(assert (=> b!8014617 (= e!4721193 tp_is_empty!53917)))

(declare-fun b!8014618 () Bool)

(declare-fun tp!2398848 () Bool)

(declare-fun tp!2398847 () Bool)

(assert (=> b!8014618 (= e!4721193 (and tp!2398848 tp!2398847))))

(declare-fun b!8014620 () Bool)

(declare-fun tp!2398845 () Bool)

(declare-fun tp!2398844 () Bool)

(assert (=> b!8014620 (= e!4721193 (and tp!2398845 tp!2398844))))

(declare-fun b!8014619 () Bool)

(declare-fun tp!2398846 () Bool)

(assert (=> b!8014619 (= e!4721193 tp!2398846)))

(assert (=> b!8014219 (= tp!2398771 e!4721193)))

(assert (= (and b!8014219 ((_ is ElementMatch!21687) (regOne!43887 r!15422))) b!8014617))

(assert (= (and b!8014219 ((_ is Concat!30686) (regOne!43887 r!15422))) b!8014618))

(assert (= (and b!8014219 ((_ is Star!21687) (regOne!43887 r!15422))) b!8014619))

(assert (= (and b!8014219 ((_ is Union!21687) (regOne!43887 r!15422))) b!8014620))

(declare-fun b!8014621 () Bool)

(declare-fun e!4721194 () Bool)

(assert (=> b!8014621 (= e!4721194 tp_is_empty!53917)))

(declare-fun b!8014622 () Bool)

(declare-fun tp!2398853 () Bool)

(declare-fun tp!2398852 () Bool)

(assert (=> b!8014622 (= e!4721194 (and tp!2398853 tp!2398852))))

(declare-fun b!8014624 () Bool)

(declare-fun tp!2398850 () Bool)

(declare-fun tp!2398849 () Bool)

(assert (=> b!8014624 (= e!4721194 (and tp!2398850 tp!2398849))))

(declare-fun b!8014623 () Bool)

(declare-fun tp!2398851 () Bool)

(assert (=> b!8014623 (= e!4721194 tp!2398851)))

(assert (=> b!8014219 (= tp!2398772 e!4721194)))

(assert (= (and b!8014219 ((_ is ElementMatch!21687) (regTwo!43887 r!15422))) b!8014621))

(assert (= (and b!8014219 ((_ is Concat!30686) (regTwo!43887 r!15422))) b!8014622))

(assert (= (and b!8014219 ((_ is Star!21687) (regTwo!43887 r!15422))) b!8014623))

(assert (= (and b!8014219 ((_ is Union!21687) (regTwo!43887 r!15422))) b!8014624))

(declare-fun b!8014625 () Bool)

(declare-fun e!4721195 () Bool)

(assert (=> b!8014625 (= e!4721195 tp_is_empty!53917)))

(declare-fun b!8014626 () Bool)

(declare-fun tp!2398858 () Bool)

(declare-fun tp!2398857 () Bool)

(assert (=> b!8014626 (= e!4721195 (and tp!2398858 tp!2398857))))

(declare-fun b!8014628 () Bool)

(declare-fun tp!2398855 () Bool)

(declare-fun tp!2398854 () Bool)

(assert (=> b!8014628 (= e!4721195 (and tp!2398855 tp!2398854))))

(declare-fun b!8014627 () Bool)

(declare-fun tp!2398856 () Bool)

(assert (=> b!8014627 (= e!4721195 tp!2398856)))

(assert (=> b!8014214 (= tp!2398773 e!4721195)))

(assert (= (and b!8014214 ((_ is ElementMatch!21687) (reg!22016 r!15422))) b!8014625))

(assert (= (and b!8014214 ((_ is Concat!30686) (reg!22016 r!15422))) b!8014626))

(assert (= (and b!8014214 ((_ is Star!21687) (reg!22016 r!15422))) b!8014627))

(assert (= (and b!8014214 ((_ is Union!21687) (reg!22016 r!15422))) b!8014628))

(check-sat (not b!8014591) (not b!8014340) (not b!8014524) (not b!8014573) (not d!2389264) (not d!2389362) (not d!2389316) (not d!2389262) (not d!2389256) (not b!8014231) (not b!8014571) (not b!8014568) (not bm!744450) (not bm!744436) (not d!2389350) (not bm!744432) tp_is_empty!53917 (not bm!744437) (not b!8014584) (not b!8014271) (not d!2389358) (not b!8014230) (not b!8014614) (not bm!744439) (not b!8014528) (not b!8014588) (not b!8014597) (not d!2389344) (not b!8014627) (not b!8014583) (not b!8014558) (not b!8014615) (not bm!744433) (not b!8014616) (not bm!744435) (not d!2389342) (not b!8014622) (not b!8014243) (not b!8014580) (not b!8014533) (not d!2389356) (not b!8014576) (not b!8014572) (not b!8014611) (not b!8014567) (not bm!744438) (not b!8014596) (not b!8014624) (not bm!744448) (not b!8014240) (not d!2389304) (not b!8014525) (not b!8014317) (not b!8014619) (not b!8014610) (not b!8014612) (not d!2389346) (not bm!744368) (not b!8014589) (not b!8014618) (not b!8014575) (not b!8014628) (not b!8014598) (not b!8014587) (not b!8014626) (not d!2389272) (not d!2389368) (not b!8014272) (not b!8014242) (not bm!744434) (not b!8014585) (not b!8014579) (not d!2389322) (not b!8014620) (not bm!744369) (not b!8014238) (not d!2389308) (not b!8014270) (not d!2389318) (not b!8014623))
(check-sat)
(get-model)

(assert (=> d!2389264 d!2389268))

(declare-fun d!2389372 () Bool)

(assert (=> d!2389372 (isPrefix!6739 totalInput!1349 totalInput!1349)))

(assert (=> d!2389372 true))

(declare-fun _$45!2536 () Unit!170854)

(assert (=> d!2389372 (= (choose!60392 totalInput!1349 totalInput!1349) _$45!2536)))

(declare-fun bs!1970977 () Bool)

(assert (= bs!1970977 d!2389372))

(assert (=> bs!1970977 m!8377386))

(assert (=> d!2389264 d!2389372))

(declare-fun d!2389374 () Bool)

(declare-fun res!3169051 () Bool)

(declare-fun e!4721201 () Bool)

(assert (=> d!2389374 (=> res!3169051 e!4721201)))

(assert (=> d!2389374 (= res!3169051 ((_ is ElementMatch!21687) (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(assert (=> d!2389374 (= (validRegex!11991 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))) e!4721201)))

(declare-fun b!8014629 () Bool)

(declare-fun res!3169049 () Bool)

(declare-fun e!4721196 () Bool)

(assert (=> b!8014629 (=> (not res!3169049) (not e!4721196))))

(declare-fun call!744458 () Bool)

(assert (=> b!8014629 (= res!3169049 call!744458)))

(declare-fun e!4721200 () Bool)

(assert (=> b!8014629 (= e!4721200 e!4721196)))

(declare-fun b!8014630 () Bool)

(declare-fun e!4721199 () Bool)

(declare-fun e!4721202 () Bool)

(assert (=> b!8014630 (= e!4721199 e!4721202)))

(declare-fun res!3169053 () Bool)

(assert (=> b!8014630 (=> (not res!3169053) (not e!4721202))))

(assert (=> b!8014630 (= res!3169053 call!744458)))

(declare-fun b!8014631 () Bool)

(declare-fun call!744459 () Bool)

(assert (=> b!8014631 (= e!4721202 call!744459)))

(declare-fun c!1470985 () Bool)

(declare-fun call!744457 () Bool)

(declare-fun bm!744452 () Bool)

(declare-fun c!1470986 () Bool)

(assert (=> bm!744452 (= call!744457 (validRegex!11991 (ite c!1470985 (reg!22016 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))) (ite c!1470986 (regTwo!43887 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))) (regTwo!43886 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422)))))))))

(declare-fun b!8014632 () Bool)

(assert (=> b!8014632 (= e!4721196 call!744459)))

(declare-fun b!8014633 () Bool)

(declare-fun e!4721197 () Bool)

(declare-fun e!4721198 () Bool)

(assert (=> b!8014633 (= e!4721197 e!4721198)))

(declare-fun res!3169050 () Bool)

(assert (=> b!8014633 (= res!3169050 (not (nullable!9729 (reg!22016 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))))

(assert (=> b!8014633 (=> (not res!3169050) (not e!4721198))))

(declare-fun b!8014634 () Bool)

(assert (=> b!8014634 (= e!4721197 e!4721200)))

(assert (=> b!8014634 (= c!1470986 ((_ is Union!21687) (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun b!8014635 () Bool)

(assert (=> b!8014635 (= e!4721198 call!744457)))

(declare-fun b!8014636 () Bool)

(assert (=> b!8014636 (= e!4721201 e!4721197)))

(assert (=> b!8014636 (= c!1470985 ((_ is Star!21687) (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun b!8014637 () Bool)

(declare-fun res!3169052 () Bool)

(assert (=> b!8014637 (=> res!3169052 e!4721199)))

(assert (=> b!8014637 (= res!3169052 (not ((_ is Concat!30686) (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422)))))))

(assert (=> b!8014637 (= e!4721200 e!4721199)))

(declare-fun bm!744453 () Bool)

(assert (=> bm!744453 (= call!744458 (validRegex!11991 (ite c!1470986 (regOne!43887 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))) (regOne!43886 (ite c!1470903 (regOne!43887 r!15422) (regOne!43886 r!15422))))))))

(declare-fun bm!744454 () Bool)

(assert (=> bm!744454 (= call!744459 call!744457)))

(assert (= (and d!2389374 (not res!3169051)) b!8014636))

(assert (= (and b!8014636 c!1470985) b!8014633))

(assert (= (and b!8014636 (not c!1470985)) b!8014634))

(assert (= (and b!8014633 res!3169050) b!8014635))

(assert (= (and b!8014634 c!1470986) b!8014629))

(assert (= (and b!8014634 (not c!1470986)) b!8014637))

(assert (= (and b!8014629 res!3169049) b!8014632))

(assert (= (and b!8014637 (not res!3169052)) b!8014630))

(assert (= (and b!8014630 res!3169053) b!8014631))

(assert (= (or b!8014632 b!8014631) bm!744454))

(assert (= (or b!8014629 b!8014630) bm!744453))

(assert (= (or b!8014635 bm!744454) bm!744452))

(declare-fun m!8377810 () Bool)

(assert (=> bm!744452 m!8377810))

(declare-fun m!8377812 () Bool)

(assert (=> b!8014633 m!8377812))

(declare-fun m!8377814 () Bool)

(assert (=> bm!744453 m!8377814))

(assert (=> bm!744369 d!2389374))

(assert (=> d!2389318 d!2389258))

(assert (=> d!2389318 d!2389260))

(declare-fun d!2389376 () Bool)

(assert (=> d!2389376 (<= (size!43589 testedP!353) (size!43589 totalInput!1349))))

(assert (=> d!2389376 true))

(declare-fun _$64!988 () Unit!170854)

(assert (=> d!2389376 (= (choose!60395 testedP!353 totalInput!1349) _$64!988)))

(declare-fun bs!1970978 () Bool)

(assert (= bs!1970978 d!2389376))

(assert (=> bs!1970978 m!8377394))

(assert (=> bs!1970978 m!8377390))

(assert (=> d!2389318 d!2389376))

(assert (=> d!2389318 d!2389364))

(declare-fun b!8014639 () Bool)

(declare-fun e!4721204 () List!74916)

(assert (=> b!8014639 (= e!4721204 (Cons!74792 (h!81240 (t!390659 testedP!353)) (++!18513 (t!390659 (t!390659 testedP!353)) (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(declare-fun b!8014641 () Bool)

(declare-fun e!4721203 () Bool)

(declare-fun lt!2718166 () List!74916)

(assert (=> b!8014641 (= e!4721203 (or (not (= (Cons!74792 (head!16361 lt!2717896) Nil!74792) Nil!74792)) (= lt!2718166 (t!390659 testedP!353))))))

(declare-fun b!8014638 () Bool)

(assert (=> b!8014638 (= e!4721204 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))

(declare-fun d!2389378 () Bool)

(assert (=> d!2389378 e!4721203))

(declare-fun res!3169055 () Bool)

(assert (=> d!2389378 (=> (not res!3169055) (not e!4721203))))

(assert (=> d!2389378 (= res!3169055 (= (content!15918 lt!2718166) ((_ map or) (content!15918 (t!390659 testedP!353)) (content!15918 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (=> d!2389378 (= lt!2718166 e!4721204)))

(declare-fun c!1470987 () Bool)

(assert (=> d!2389378 (= c!1470987 ((_ is Nil!74792) (t!390659 testedP!353)))))

(assert (=> d!2389378 (= (++!18513 (t!390659 testedP!353) (Cons!74792 (head!16361 lt!2717896) Nil!74792)) lt!2718166)))

(declare-fun b!8014640 () Bool)

(declare-fun res!3169054 () Bool)

(assert (=> b!8014640 (=> (not res!3169054) (not e!4721203))))

(assert (=> b!8014640 (= res!3169054 (= (size!43589 lt!2718166) (+ (size!43589 (t!390659 testedP!353)) (size!43589 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (= (and d!2389378 c!1470987) b!8014638))

(assert (= (and d!2389378 (not c!1470987)) b!8014639))

(assert (= (and d!2389378 res!3169055) b!8014640))

(assert (= (and b!8014640 res!3169054) b!8014641))

(declare-fun m!8377816 () Bool)

(assert (=> b!8014639 m!8377816))

(declare-fun m!8377818 () Bool)

(assert (=> d!2389378 m!8377818))

(declare-fun m!8377820 () Bool)

(assert (=> d!2389378 m!8377820))

(assert (=> d!2389378 m!8377784))

(declare-fun m!8377822 () Bool)

(assert (=> b!8014640 m!8377822))

(assert (=> b!8014640 m!8377442))

(assert (=> b!8014640 m!8377788))

(assert (=> b!8014579 d!2389378))

(declare-fun c!1470990 () Bool)

(declare-fun call!744462 () Regex!21687)

(declare-fun bm!744455 () Bool)

(declare-fun c!1470989 () Bool)

(declare-fun c!1470991 () Bool)

(assert (=> bm!744455 (= call!744462 (derivativeStep!6638 (ite c!1470990 (regTwo!43887 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))) (ite c!1470989 (reg!22016 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))) (ite c!1470991 (regTwo!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))) (regOne!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))))) lt!2717904))))

(declare-fun e!4721205 () Regex!21687)

(declare-fun call!744461 () Regex!21687)

(declare-fun call!744460 () Regex!21687)

(declare-fun b!8014642 () Bool)

(assert (=> b!8014642 (= e!4721205 (Union!21687 (Concat!30686 call!744460 (regTwo!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))) call!744461))))

(declare-fun bm!744456 () Bool)

(declare-fun call!744463 () Regex!21687)

(assert (=> bm!744456 (= call!744461 call!744463)))

(declare-fun b!8014643 () Bool)

(declare-fun e!4721206 () Regex!21687)

(assert (=> b!8014643 (= e!4721206 (Concat!30686 call!744463 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun b!8014644 () Bool)

(assert (=> b!8014644 (= c!1470991 (nullable!9729 (regOne!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))))))

(assert (=> b!8014644 (= e!4721206 e!4721205)))

(declare-fun bm!744457 () Bool)

(assert (=> bm!744457 (= call!744460 (derivativeStep!6638 (ite c!1470990 (regOne!43887 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))) (regOne!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))) lt!2717904))))

(declare-fun b!8014645 () Bool)

(assert (=> b!8014645 (= e!4721205 (Union!21687 (Concat!30686 call!744461 (regTwo!43886 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))) EmptyLang!21687))))

(declare-fun b!8014646 () Bool)

(assert (=> b!8014646 (= c!1470990 ((_ is Union!21687) (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun e!4721208 () Regex!21687)

(declare-fun e!4721209 () Regex!21687)

(assert (=> b!8014646 (= e!4721208 e!4721209)))

(declare-fun b!8014647 () Bool)

(declare-fun e!4721207 () Regex!21687)

(assert (=> b!8014647 (= e!4721207 EmptyLang!21687)))

(declare-fun b!8014648 () Bool)

(assert (=> b!8014648 (= e!4721209 e!4721206)))

(assert (=> b!8014648 (= c!1470989 ((_ is Star!21687) (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun d!2389380 () Bool)

(declare-fun lt!2718167 () Regex!21687)

(assert (=> d!2389380 (validRegex!11991 lt!2718167)))

(assert (=> d!2389380 (= lt!2718167 e!4721207)))

(declare-fun c!1470988 () Bool)

(assert (=> d!2389380 (= c!1470988 (or ((_ is EmptyExpr!21687) (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))) ((_ is EmptyLang!21687) (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))))))

(assert (=> d!2389380 (validRegex!11991 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))))

(assert (=> d!2389380 (= (derivativeStep!6638 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)) lt!2717904) lt!2718167)))

(declare-fun b!8014649 () Bool)

(assert (=> b!8014649 (= e!4721208 (ite (= lt!2717904 (c!1470876 (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422)))) EmptyExpr!21687 EmptyLang!21687))))

(declare-fun bm!744458 () Bool)

(assert (=> bm!744458 (= call!744463 call!744462)))

(declare-fun b!8014650 () Bool)

(assert (=> b!8014650 (= e!4721209 (Union!21687 call!744460 call!744462))))

(declare-fun b!8014651 () Bool)

(assert (=> b!8014651 (= e!4721207 e!4721208)))

(declare-fun c!1470992 () Bool)

(assert (=> b!8014651 (= c!1470992 ((_ is ElementMatch!21687) (ite c!1470978 (regOne!43887 r!15422) (regOne!43886 r!15422))))))

(assert (= (and d!2389380 c!1470988) b!8014647))

(assert (= (and d!2389380 (not c!1470988)) b!8014651))

(assert (= (and b!8014651 c!1470992) b!8014649))

(assert (= (and b!8014651 (not c!1470992)) b!8014646))

(assert (= (and b!8014646 c!1470990) b!8014650))

(assert (= (and b!8014646 (not c!1470990)) b!8014648))

(assert (= (and b!8014648 c!1470989) b!8014643))

(assert (= (and b!8014648 (not c!1470989)) b!8014644))

(assert (= (and b!8014644 c!1470991) b!8014642))

(assert (= (and b!8014644 (not c!1470991)) b!8014645))

(assert (= (or b!8014642 b!8014645) bm!744456))

(assert (= (or b!8014643 bm!744456) bm!744458))

(assert (= (or b!8014650 bm!744458) bm!744455))

(assert (= (or b!8014650 b!8014642) bm!744457))

(declare-fun m!8377824 () Bool)

(assert (=> bm!744455 m!8377824))

(declare-fun m!8377826 () Bool)

(assert (=> b!8014644 m!8377826))

(declare-fun m!8377828 () Bool)

(assert (=> bm!744457 m!8377828))

(declare-fun m!8377830 () Bool)

(assert (=> d!2389380 m!8377830))

(declare-fun m!8377832 () Bool)

(assert (=> d!2389380 m!8377832))

(assert (=> bm!744450 d!2389380))

(assert (=> bm!744435 d!2389268))

(declare-fun d!2389382 () Bool)

(declare-fun lt!2718168 () Int)

(assert (=> d!2389382 (>= lt!2718168 0)))

(declare-fun e!4721210 () Int)

(assert (=> d!2389382 (= lt!2718168 e!4721210)))

(declare-fun c!1470993 () Bool)

(assert (=> d!2389382 (= c!1470993 ((_ is Nil!74792) lt!2718153))))

(assert (=> d!2389382 (= (size!43589 lt!2718153) lt!2718168)))

(declare-fun b!8014652 () Bool)

(assert (=> b!8014652 (= e!4721210 0)))

(declare-fun b!8014653 () Bool)

(assert (=> b!8014653 (= e!4721210 (+ 1 (size!43589 (t!390659 lt!2718153))))))

(assert (= (and d!2389382 c!1470993) b!8014652))

(assert (= (and d!2389382 (not c!1470993)) b!8014653))

(declare-fun m!8377834 () Bool)

(assert (=> b!8014653 m!8377834))

(assert (=> b!8014568 d!2389382))

(assert (=> b!8014568 d!2389258))

(declare-fun d!2389384 () Bool)

(declare-fun lt!2718169 () Int)

(assert (=> d!2389384 (>= lt!2718169 0)))

(declare-fun e!4721211 () Int)

(assert (=> d!2389384 (= lt!2718169 e!4721211)))

(declare-fun c!1470994 () Bool)

(assert (=> d!2389384 (= c!1470994 ((_ is Nil!74792) (Cons!74792 lt!2717904 Nil!74792)))))

(assert (=> d!2389384 (= (size!43589 (Cons!74792 lt!2717904 Nil!74792)) lt!2718169)))

(declare-fun b!8014654 () Bool)

(assert (=> b!8014654 (= e!4721211 0)))

(declare-fun b!8014655 () Bool)

(assert (=> b!8014655 (= e!4721211 (+ 1 (size!43589 (t!390659 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (= (and d!2389384 c!1470994) b!8014654))

(assert (= (and d!2389384 (not c!1470994)) b!8014655))

(declare-fun m!8377836 () Bool)

(assert (=> b!8014655 m!8377836))

(assert (=> b!8014568 d!2389384))

(declare-fun d!2389386 () Bool)

(assert (=> d!2389386 (= (head!16361 testedP!353) (h!81240 testedP!353))))

(assert (=> b!8014587 d!2389386))

(declare-fun d!2389388 () Bool)

(assert (=> d!2389388 (= (head!16361 lt!2717905) (h!81240 lt!2717905))))

(assert (=> b!8014587 d!2389388))

(declare-fun d!2389390 () Bool)

(assert (=> d!2389390 (= (lostCause!2074 (derivativeStep!6638 r!15422 lt!2717904)) (lostCauseFct!616 (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun bs!1970979 () Bool)

(assert (= bs!1970979 d!2389390))

(assert (=> bs!1970979 m!8377380))

(declare-fun m!8377838 () Bool)

(assert (=> bs!1970979 m!8377838))

(assert (=> d!2389322 d!2389390))

(declare-fun d!2389392 () Bool)

(assert (=> d!2389392 (isPrefix!6739 lt!2717907 (++!18513 lt!2717907 lt!2717898))))

(declare-fun lt!2718170 () Unit!170854)

(assert (=> d!2389392 (= lt!2718170 (choose!60401 lt!2717907 lt!2717898))))

(assert (=> d!2389392 (= (lemmaConcatTwoListThenFirstIsPrefix!3970 lt!2717907 lt!2717898) lt!2718170)))

(declare-fun bs!1970980 () Bool)

(assert (= bs!1970980 d!2389392))

(assert (=> bs!1970980 m!8377408))

(assert (=> bs!1970980 m!8377408))

(assert (=> bs!1970980 m!8377708))

(declare-fun m!8377840 () Bool)

(assert (=> bs!1970980 m!8377840))

(assert (=> d!2389322 d!2389392))

(declare-fun d!2389394 () Bool)

(declare-fun lt!2718171 () List!74916)

(assert (=> d!2389394 (= (++!18513 lt!2717907 lt!2718171) totalInput!1349)))

(declare-fun e!4721212 () List!74916)

(assert (=> d!2389394 (= lt!2718171 e!4721212)))

(declare-fun c!1470995 () Bool)

(assert (=> d!2389394 (= c!1470995 ((_ is Cons!74792) lt!2717907))))

(assert (=> d!2389394 (>= (size!43589 totalInput!1349) (size!43589 lt!2717907))))

(assert (=> d!2389394 (= (getSuffix!3934 totalInput!1349 lt!2717907) lt!2718171)))

(declare-fun b!8014656 () Bool)

(assert (=> b!8014656 (= e!4721212 (getSuffix!3934 (tail!15884 totalInput!1349) (t!390659 lt!2717907)))))

(declare-fun b!8014657 () Bool)

(assert (=> b!8014657 (= e!4721212 totalInput!1349)))

(assert (= (and d!2389394 c!1470995) b!8014656))

(assert (= (and d!2389394 (not c!1470995)) b!8014657))

(declare-fun m!8377842 () Bool)

(assert (=> d!2389394 m!8377842))

(assert (=> d!2389394 m!8377390))

(assert (=> d!2389394 m!8377688))

(assert (=> b!8014656 m!8377474))

(assert (=> b!8014656 m!8377474))

(declare-fun m!8377844 () Bool)

(assert (=> b!8014656 m!8377844))

(assert (=> d!2389322 d!2389394))

(declare-fun b!8014659 () Bool)

(declare-fun res!3169057 () Bool)

(declare-fun e!4721214 () Bool)

(assert (=> b!8014659 (=> (not res!3169057) (not e!4721214))))

(assert (=> b!8014659 (= res!3169057 (= (head!16361 lt!2717907) (head!16361 (++!18513 lt!2717907 lt!2717898))))))

(declare-fun d!2389396 () Bool)

(declare-fun e!4721215 () Bool)

(assert (=> d!2389396 e!4721215))

(declare-fun res!3169059 () Bool)

(assert (=> d!2389396 (=> res!3169059 e!4721215)))

(declare-fun lt!2718172 () Bool)

(assert (=> d!2389396 (= res!3169059 (not lt!2718172))))

(declare-fun e!4721213 () Bool)

(assert (=> d!2389396 (= lt!2718172 e!4721213)))

(declare-fun res!3169056 () Bool)

(assert (=> d!2389396 (=> res!3169056 e!4721213)))

(assert (=> d!2389396 (= res!3169056 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389396 (= (isPrefix!6739 lt!2717907 (++!18513 lt!2717907 lt!2717898)) lt!2718172)))

(declare-fun b!8014660 () Bool)

(assert (=> b!8014660 (= e!4721214 (isPrefix!6739 (tail!15884 lt!2717907) (tail!15884 (++!18513 lt!2717907 lt!2717898))))))

(declare-fun b!8014658 () Bool)

(assert (=> b!8014658 (= e!4721213 e!4721214)))

(declare-fun res!3169058 () Bool)

(assert (=> b!8014658 (=> (not res!3169058) (not e!4721214))))

(assert (=> b!8014658 (= res!3169058 (not ((_ is Nil!74792) (++!18513 lt!2717907 lt!2717898))))))

(declare-fun b!8014661 () Bool)

(assert (=> b!8014661 (= e!4721215 (>= (size!43589 (++!18513 lt!2717907 lt!2717898)) (size!43589 lt!2717907)))))

(assert (= (and d!2389396 (not res!3169056)) b!8014658))

(assert (= (and b!8014658 res!3169058) b!8014659))

(assert (= (and b!8014659 res!3169057) b!8014660))

(assert (= (and d!2389396 (not res!3169059)) b!8014661))

(declare-fun m!8377846 () Bool)

(assert (=> b!8014659 m!8377846))

(assert (=> b!8014659 m!8377408))

(declare-fun m!8377848 () Bool)

(assert (=> b!8014659 m!8377848))

(declare-fun m!8377850 () Bool)

(assert (=> b!8014660 m!8377850))

(assert (=> b!8014660 m!8377408))

(declare-fun m!8377852 () Bool)

(assert (=> b!8014660 m!8377852))

(assert (=> b!8014660 m!8377850))

(assert (=> b!8014660 m!8377852))

(declare-fun m!8377854 () Bool)

(assert (=> b!8014660 m!8377854))

(assert (=> b!8014661 m!8377408))

(declare-fun m!8377856 () Bool)

(assert (=> b!8014661 m!8377856))

(assert (=> b!8014661 m!8377688))

(assert (=> d!2389322 d!2389396))

(declare-fun b!8014663 () Bool)

(declare-fun e!4721217 () List!74916)

(assert (=> b!8014663 (= e!4721217 (Cons!74792 (h!81240 (_1!38689 lt!2718135)) (++!18513 (t!390659 (_1!38689 lt!2718135)) (_2!38689 lt!2718135))))))

(declare-fun b!8014665 () Bool)

(declare-fun e!4721216 () Bool)

(declare-fun lt!2718173 () List!74916)

(assert (=> b!8014665 (= e!4721216 (or (not (= (_2!38689 lt!2718135) Nil!74792)) (= lt!2718173 (_1!38689 lt!2718135))))))

(declare-fun b!8014662 () Bool)

(assert (=> b!8014662 (= e!4721217 (_2!38689 lt!2718135))))

(declare-fun d!2389398 () Bool)

(assert (=> d!2389398 e!4721216))

(declare-fun res!3169061 () Bool)

(assert (=> d!2389398 (=> (not res!3169061) (not e!4721216))))

(assert (=> d!2389398 (= res!3169061 (= (content!15918 lt!2718173) ((_ map or) (content!15918 (_1!38689 lt!2718135)) (content!15918 (_2!38689 lt!2718135)))))))

(assert (=> d!2389398 (= lt!2718173 e!4721217)))

(declare-fun c!1470996 () Bool)

(assert (=> d!2389398 (= c!1470996 ((_ is Nil!74792) (_1!38689 lt!2718135)))))

(assert (=> d!2389398 (= (++!18513 (_1!38689 lt!2718135) (_2!38689 lt!2718135)) lt!2718173)))

(declare-fun b!8014664 () Bool)

(declare-fun res!3169060 () Bool)

(assert (=> b!8014664 (=> (not res!3169060) (not e!4721216))))

(assert (=> b!8014664 (= res!3169060 (= (size!43589 lt!2718173) (+ (size!43589 (_1!38689 lt!2718135)) (size!43589 (_2!38689 lt!2718135)))))))

(assert (= (and d!2389398 c!1470996) b!8014662))

(assert (= (and d!2389398 (not c!1470996)) b!8014663))

(assert (= (and d!2389398 res!3169061) b!8014664))

(assert (= (and b!8014664 res!3169060) b!8014665))

(declare-fun m!8377858 () Bool)

(assert (=> b!8014663 m!8377858))

(declare-fun m!8377860 () Bool)

(assert (=> d!2389398 m!8377860))

(declare-fun m!8377862 () Bool)

(assert (=> d!2389398 m!8377862))

(declare-fun m!8377864 () Bool)

(assert (=> d!2389398 m!8377864))

(declare-fun m!8377866 () Bool)

(assert (=> b!8014664 m!8377866))

(assert (=> b!8014664 m!8377718))

(declare-fun m!8377868 () Bool)

(assert (=> b!8014664 m!8377868))

(assert (=> d!2389322 d!2389398))

(assert (=> d!2389322 d!2389358))

(declare-fun d!2389400 () Bool)

(declare-fun res!3169064 () Bool)

(declare-fun e!4721223 () Bool)

(assert (=> d!2389400 (=> res!3169064 e!4721223)))

(assert (=> d!2389400 (= res!3169064 ((_ is ElementMatch!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(assert (=> d!2389400 (= (validRegex!11991 (derivativeStep!6638 r!15422 lt!2717904)) e!4721223)))

(declare-fun b!8014666 () Bool)

(declare-fun res!3169062 () Bool)

(declare-fun e!4721218 () Bool)

(assert (=> b!8014666 (=> (not res!3169062) (not e!4721218))))

(declare-fun call!744465 () Bool)

(assert (=> b!8014666 (= res!3169062 call!744465)))

(declare-fun e!4721222 () Bool)

(assert (=> b!8014666 (= e!4721222 e!4721218)))

(declare-fun b!8014667 () Bool)

(declare-fun e!4721221 () Bool)

(declare-fun e!4721224 () Bool)

(assert (=> b!8014667 (= e!4721221 e!4721224)))

(declare-fun res!3169066 () Bool)

(assert (=> b!8014667 (=> (not res!3169066) (not e!4721224))))

(assert (=> b!8014667 (= res!3169066 call!744465)))

(declare-fun b!8014668 () Bool)

(declare-fun call!744466 () Bool)

(assert (=> b!8014668 (= e!4721224 call!744466)))

(declare-fun c!1470998 () Bool)

(declare-fun c!1470997 () Bool)

(declare-fun call!744464 () Bool)

(declare-fun bm!744459 () Bool)

(assert (=> bm!744459 (= call!744464 (validRegex!11991 (ite c!1470997 (reg!22016 (derivativeStep!6638 r!15422 lt!2717904)) (ite c!1470998 (regTwo!43887 (derivativeStep!6638 r!15422 lt!2717904)) (regTwo!43886 (derivativeStep!6638 r!15422 lt!2717904))))))))

(declare-fun b!8014669 () Bool)

(assert (=> b!8014669 (= e!4721218 call!744466)))

(declare-fun b!8014670 () Bool)

(declare-fun e!4721219 () Bool)

(declare-fun e!4721220 () Bool)

(assert (=> b!8014670 (= e!4721219 e!4721220)))

(declare-fun res!3169063 () Bool)

(assert (=> b!8014670 (= res!3169063 (not (nullable!9729 (reg!22016 (derivativeStep!6638 r!15422 lt!2717904)))))))

(assert (=> b!8014670 (=> (not res!3169063) (not e!4721220))))

(declare-fun b!8014671 () Bool)

(assert (=> b!8014671 (= e!4721219 e!4721222)))

(assert (=> b!8014671 (= c!1470998 ((_ is Union!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun b!8014672 () Bool)

(assert (=> b!8014672 (= e!4721220 call!744464)))

(declare-fun b!8014673 () Bool)

(assert (=> b!8014673 (= e!4721223 e!4721219)))

(assert (=> b!8014673 (= c!1470997 ((_ is Star!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun b!8014674 () Bool)

(declare-fun res!3169065 () Bool)

(assert (=> b!8014674 (=> res!3169065 e!4721221)))

(assert (=> b!8014674 (= res!3169065 (not ((_ is Concat!30686) (derivativeStep!6638 r!15422 lt!2717904))))))

(assert (=> b!8014674 (= e!4721222 e!4721221)))

(declare-fun bm!744460 () Bool)

(assert (=> bm!744460 (= call!744465 (validRegex!11991 (ite c!1470998 (regOne!43887 (derivativeStep!6638 r!15422 lt!2717904)) (regOne!43886 (derivativeStep!6638 r!15422 lt!2717904)))))))

(declare-fun bm!744461 () Bool)

(assert (=> bm!744461 (= call!744466 call!744464)))

(assert (= (and d!2389400 (not res!3169064)) b!8014673))

(assert (= (and b!8014673 c!1470997) b!8014670))

(assert (= (and b!8014673 (not c!1470997)) b!8014671))

(assert (= (and b!8014670 res!3169063) b!8014672))

(assert (= (and b!8014671 c!1470998) b!8014666))

(assert (= (and b!8014671 (not c!1470998)) b!8014674))

(assert (= (and b!8014666 res!3169062) b!8014669))

(assert (= (and b!8014674 (not res!3169065)) b!8014667))

(assert (= (and b!8014667 res!3169066) b!8014668))

(assert (= (or b!8014669 b!8014668) bm!744461))

(assert (= (or b!8014666 b!8014667) bm!744460))

(assert (= (or b!8014672 bm!744461) bm!744459))

(declare-fun m!8377870 () Bool)

(assert (=> bm!744459 m!8377870))

(declare-fun m!8377872 () Bool)

(assert (=> b!8014670 m!8377872))

(declare-fun m!8377874 () Bool)

(assert (=> bm!744460 m!8377874))

(assert (=> d!2389322 d!2389400))

(declare-fun d!2389402 () Bool)

(assert (=> d!2389402 (= lt!2717898 lt!2718119)))

(declare-fun lt!2718174 () Unit!170854)

(assert (=> d!2389402 (= lt!2718174 (choose!60394 lt!2717907 lt!2717898 lt!2717907 lt!2718119 totalInput!1349))))

(assert (=> d!2389402 (isPrefix!6739 lt!2717907 totalInput!1349)))

(assert (=> d!2389402 (= (lemmaSamePrefixThenSameSuffix!3096 lt!2717907 lt!2717898 lt!2717907 lt!2718119 totalInput!1349) lt!2718174)))

(declare-fun bs!1970981 () Bool)

(assert (= bs!1970981 d!2389402))

(declare-fun m!8377876 () Bool)

(assert (=> bs!1970981 m!8377876))

(declare-fun m!8377878 () Bool)

(assert (=> bs!1970981 m!8377878))

(assert (=> d!2389322 d!2389402))

(declare-fun d!2389404 () Bool)

(assert (=> d!2389404 (= (head!16361 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) (h!81240 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(assert (=> b!8014571 d!2389404))

(declare-fun d!2389406 () Bool)

(assert (=> d!2389406 (= (head!16361 totalInput!1349) (h!81240 totalInput!1349))))

(assert (=> b!8014571 d!2389406))

(declare-fun d!2389408 () Bool)

(assert (=> d!2389408 (= (isEmpty!42978 (_1!38689 lt!2718135)) ((_ is Nil!74792) (_1!38689 lt!2718135)))))

(assert (=> b!8014528 d!2389408))

(declare-fun b!8014676 () Bool)

(declare-fun e!4721226 () List!74916)

(assert (=> b!8014676 (= e!4721226 (Cons!74792 (h!81240 (t!390659 testedP!353)) (++!18513 (t!390659 (t!390659 testedP!353)) testedSuffix!271)))))

(declare-fun lt!2718175 () List!74916)

(declare-fun b!8014678 () Bool)

(declare-fun e!4721225 () Bool)

(assert (=> b!8014678 (= e!4721225 (or (not (= testedSuffix!271 Nil!74792)) (= lt!2718175 (t!390659 testedP!353))))))

(declare-fun b!8014675 () Bool)

(assert (=> b!8014675 (= e!4721226 testedSuffix!271)))

(declare-fun d!2389410 () Bool)

(assert (=> d!2389410 e!4721225))

(declare-fun res!3169068 () Bool)

(assert (=> d!2389410 (=> (not res!3169068) (not e!4721225))))

(assert (=> d!2389410 (= res!3169068 (= (content!15918 lt!2718175) ((_ map or) (content!15918 (t!390659 testedP!353)) (content!15918 testedSuffix!271))))))

(assert (=> d!2389410 (= lt!2718175 e!4721226)))

(declare-fun c!1470999 () Bool)

(assert (=> d!2389410 (= c!1470999 ((_ is Nil!74792) (t!390659 testedP!353)))))

(assert (=> d!2389410 (= (++!18513 (t!390659 testedP!353) testedSuffix!271) lt!2718175)))

(declare-fun b!8014677 () Bool)

(declare-fun res!3169067 () Bool)

(assert (=> b!8014677 (=> (not res!3169067) (not e!4721225))))

(assert (=> b!8014677 (= res!3169067 (= (size!43589 lt!2718175) (+ (size!43589 (t!390659 testedP!353)) (size!43589 testedSuffix!271))))))

(assert (= (and d!2389410 c!1470999) b!8014675))

(assert (= (and d!2389410 (not c!1470999)) b!8014676))

(assert (= (and d!2389410 res!3169068) b!8014677))

(assert (= (and b!8014677 res!3169067) b!8014678))

(declare-fun m!8377880 () Bool)

(assert (=> b!8014676 m!8377880))

(declare-fun m!8377882 () Bool)

(assert (=> d!2389410 m!8377882))

(assert (=> d!2389410 m!8377820))

(assert (=> d!2389410 m!8377436))

(declare-fun m!8377884 () Bool)

(assert (=> b!8014677 m!8377884))

(assert (=> b!8014677 m!8377442))

(assert (=> b!8014677 m!8377440))

(assert (=> b!8014230 d!2389410))

(assert (=> b!8014573 d!2389260))

(declare-fun d!2389412 () Bool)

(declare-fun lt!2718176 () Int)

(assert (=> d!2389412 (>= lt!2718176 0)))

(declare-fun e!4721227 () Int)

(assert (=> d!2389412 (= lt!2718176 e!4721227)))

(declare-fun c!1471000 () Bool)

(assert (=> d!2389412 (= c!1471000 ((_ is Nil!74792) (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(assert (=> d!2389412 (= (size!43589 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) lt!2718176)))

(declare-fun b!8014679 () Bool)

(assert (=> b!8014679 (= e!4721227 0)))

(declare-fun b!8014680 () Bool)

(assert (=> b!8014680 (= e!4721227 (+ 1 (size!43589 (t!390659 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))))

(assert (= (and d!2389412 c!1471000) b!8014679))

(assert (= (and d!2389412 (not c!1471000)) b!8014680))

(declare-fun m!8377886 () Bool)

(assert (=> b!8014680 m!8377886))

(assert (=> b!8014573 d!2389412))

(declare-fun b!8014682 () Bool)

(declare-fun e!4721229 () List!74916)

(assert (=> b!8014682 (= e!4721229 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) lt!2717959)))))

(declare-fun e!4721228 () Bool)

(declare-fun lt!2718177 () List!74916)

(declare-fun b!8014684 () Bool)

(assert (=> b!8014684 (= e!4721228 (or (not (= lt!2717959 Nil!74792)) (= lt!2718177 testedP!353)))))

(declare-fun b!8014681 () Bool)

(assert (=> b!8014681 (= e!4721229 lt!2717959)))

(declare-fun d!2389414 () Bool)

(assert (=> d!2389414 e!4721228))

(declare-fun res!3169070 () Bool)

(assert (=> d!2389414 (=> (not res!3169070) (not e!4721228))))

(assert (=> d!2389414 (= res!3169070 (= (content!15918 lt!2718177) ((_ map or) (content!15918 testedP!353) (content!15918 lt!2717959))))))

(assert (=> d!2389414 (= lt!2718177 e!4721229)))

(declare-fun c!1471001 () Bool)

(assert (=> d!2389414 (= c!1471001 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389414 (= (++!18513 testedP!353 lt!2717959) lt!2718177)))

(declare-fun b!8014683 () Bool)

(declare-fun res!3169069 () Bool)

(assert (=> b!8014683 (=> (not res!3169069) (not e!4721228))))

(assert (=> b!8014683 (= res!3169069 (= (size!43589 lt!2718177) (+ (size!43589 testedP!353) (size!43589 lt!2717959))))))

(assert (= (and d!2389414 c!1471001) b!8014681))

(assert (= (and d!2389414 (not c!1471001)) b!8014682))

(assert (= (and d!2389414 res!3169070) b!8014683))

(assert (= (and b!8014683 res!3169069) b!8014684))

(declare-fun m!8377888 () Bool)

(assert (=> b!8014682 m!8377888))

(declare-fun m!8377890 () Bool)

(assert (=> d!2389414 m!8377890))

(assert (=> d!2389414 m!8377434))

(declare-fun m!8377892 () Bool)

(assert (=> d!2389414 m!8377892))

(declare-fun m!8377894 () Bool)

(assert (=> b!8014683 m!8377894))

(assert (=> b!8014683 m!8377394))

(declare-fun m!8377896 () Bool)

(assert (=> b!8014683 m!8377896))

(assert (=> d!2389316 d!2389414))

(assert (=> d!2389316 d!2389260))

(assert (=> d!2389316 d!2389258))

(declare-fun b!8014686 () Bool)

(declare-fun e!4721231 () List!74916)

(assert (=> b!8014686 (= e!4721231 (Cons!74792 (h!81240 (t!390659 lt!2717907)) (++!18513 (t!390659 (t!390659 lt!2717907)) lt!2717898)))))

(declare-fun e!4721230 () Bool)

(declare-fun b!8014688 () Bool)

(declare-fun lt!2718178 () List!74916)

(assert (=> b!8014688 (= e!4721230 (or (not (= lt!2717898 Nil!74792)) (= lt!2718178 (t!390659 lt!2717907))))))

(declare-fun b!8014685 () Bool)

(assert (=> b!8014685 (= e!4721231 lt!2717898)))

(declare-fun d!2389416 () Bool)

(assert (=> d!2389416 e!4721230))

(declare-fun res!3169072 () Bool)

(assert (=> d!2389416 (=> (not res!3169072) (not e!4721230))))

(assert (=> d!2389416 (= res!3169072 (= (content!15918 lt!2718178) ((_ map or) (content!15918 (t!390659 lt!2717907)) (content!15918 lt!2717898))))))

(assert (=> d!2389416 (= lt!2718178 e!4721231)))

(declare-fun c!1471002 () Bool)

(assert (=> d!2389416 (= c!1471002 ((_ is Nil!74792) (t!390659 lt!2717907)))))

(assert (=> d!2389416 (= (++!18513 (t!390659 lt!2717907) lt!2717898) lt!2718178)))

(declare-fun b!8014687 () Bool)

(declare-fun res!3169071 () Bool)

(assert (=> b!8014687 (=> (not res!3169071) (not e!4721230))))

(assert (=> b!8014687 (= res!3169071 (= (size!43589 lt!2718178) (+ (size!43589 (t!390659 lt!2717907)) (size!43589 lt!2717898))))))

(assert (= (and d!2389416 c!1471002) b!8014685))

(assert (= (and d!2389416 (not c!1471002)) b!8014686))

(assert (= (and d!2389416 res!3169072) b!8014687))

(assert (= (and b!8014687 res!3169071) b!8014688))

(declare-fun m!8377898 () Bool)

(assert (=> b!8014686 m!8377898))

(declare-fun m!8377900 () Bool)

(assert (=> d!2389416 m!8377900))

(declare-fun m!8377902 () Bool)

(assert (=> d!2389416 m!8377902))

(assert (=> d!2389416 m!8377774))

(declare-fun m!8377904 () Bool)

(assert (=> b!8014687 m!8377904))

(declare-fun m!8377906 () Bool)

(assert (=> b!8014687 m!8377906))

(assert (=> b!8014687 m!8377778))

(assert (=> b!8014575 d!2389416))

(declare-fun d!2389418 () Bool)

(declare-fun c!1471005 () Bool)

(assert (=> d!2389418 (= c!1471005 ((_ is Nil!74792) lt!2718159))))

(declare-fun e!4721234 () (InoxSet C!43712))

(assert (=> d!2389418 (= (content!15918 lt!2718159) e!4721234)))

(declare-fun b!8014693 () Bool)

(assert (=> b!8014693 (= e!4721234 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014694 () Bool)

(assert (=> b!8014694 (= e!4721234 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2718159) true) (content!15918 (t!390659 lt!2718159))))))

(assert (= (and d!2389418 c!1471005) b!8014693))

(assert (= (and d!2389418 (not c!1471005)) b!8014694))

(declare-fun m!8377908 () Bool)

(assert (=> b!8014694 m!8377908))

(declare-fun m!8377910 () Bool)

(assert (=> b!8014694 m!8377910))

(assert (=> d!2389362 d!2389418))

(declare-fun d!2389420 () Bool)

(declare-fun c!1471006 () Bool)

(assert (=> d!2389420 (= c!1471006 ((_ is Nil!74792) testedP!353))))

(declare-fun e!4721235 () (InoxSet C!43712))

(assert (=> d!2389420 (= (content!15918 testedP!353) e!4721235)))

(declare-fun b!8014695 () Bool)

(assert (=> b!8014695 (= e!4721235 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014696 () Bool)

(assert (=> b!8014696 (= e!4721235 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 testedP!353) true) (content!15918 (t!390659 testedP!353))))))

(assert (= (and d!2389420 c!1471006) b!8014695))

(assert (= (and d!2389420 (not c!1471006)) b!8014696))

(declare-fun m!8377912 () Bool)

(assert (=> b!8014696 m!8377912))

(assert (=> b!8014696 m!8377820))

(assert (=> d!2389362 d!2389420))

(declare-fun d!2389422 () Bool)

(declare-fun c!1471007 () Bool)

(assert (=> d!2389422 (= c!1471007 ((_ is Nil!74792) (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))

(declare-fun e!4721236 () (InoxSet C!43712))

(assert (=> d!2389422 (= (content!15918 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) e!4721236)))

(declare-fun b!8014697 () Bool)

(assert (=> b!8014697 (= e!4721236 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014698 () Bool)

(assert (=> b!8014698 (= e!4721236 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) true) (content!15918 (t!390659 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (= (and d!2389422 c!1471007) b!8014697))

(assert (= (and d!2389422 (not c!1471007)) b!8014698))

(declare-fun m!8377914 () Bool)

(assert (=> b!8014698 m!8377914))

(declare-fun m!8377916 () Bool)

(assert (=> b!8014698 m!8377916))

(assert (=> d!2389362 d!2389422))

(declare-fun d!2389424 () Bool)

(assert (=> d!2389424 (= (head!16361 lt!2717898) (h!81240 lt!2717898))))

(assert (=> b!8014525 d!2389424))

(declare-fun d!2389426 () Bool)

(assert (=> d!2389426 (= (tail!15884 lt!2717898) (t!390659 lt!2717898))))

(assert (=> b!8014525 d!2389426))

(declare-fun b!8014700 () Bool)

(declare-fun e!4721238 () List!74916)

(assert (=> b!8014700 (= e!4721238 (Cons!74792 (h!81240 lt!2717907) (++!18513 (t!390659 lt!2717907) (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792))))))

(declare-fun e!4721237 () Bool)

(declare-fun b!8014702 () Bool)

(declare-fun lt!2718179 () List!74916)

(assert (=> b!8014702 (= e!4721237 (or (not (= (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792) Nil!74792)) (= lt!2718179 lt!2717907)))))

(declare-fun b!8014699 () Bool)

(assert (=> b!8014699 (= e!4721238 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792))))

(declare-fun d!2389428 () Bool)

(assert (=> d!2389428 e!4721237))

(declare-fun res!3169074 () Bool)

(assert (=> d!2389428 (=> (not res!3169074) (not e!4721237))))

(assert (=> d!2389428 (= res!3169074 (= (content!15918 lt!2718179) ((_ map or) (content!15918 lt!2717907) (content!15918 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)))))))

(assert (=> d!2389428 (= lt!2718179 e!4721238)))

(declare-fun c!1471008 () Bool)

(assert (=> d!2389428 (= c!1471008 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389428 (= (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)) lt!2718179)))

(declare-fun b!8014701 () Bool)

(declare-fun res!3169073 () Bool)

(assert (=> b!8014701 (=> (not res!3169073) (not e!4721237))))

(assert (=> b!8014701 (= res!3169073 (= (size!43589 lt!2718179) (+ (size!43589 lt!2717907) (size!43589 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)))))))

(assert (= (and d!2389428 c!1471008) b!8014699))

(assert (= (and d!2389428 (not c!1471008)) b!8014700))

(assert (= (and d!2389428 res!3169074) b!8014701))

(assert (= (and b!8014701 res!3169073) b!8014702))

(declare-fun m!8377918 () Bool)

(assert (=> b!8014700 m!8377918))

(declare-fun m!8377920 () Bool)

(assert (=> d!2389428 m!8377920))

(assert (=> d!2389428 m!8377772))

(declare-fun m!8377922 () Bool)

(assert (=> d!2389428 m!8377922))

(declare-fun m!8377924 () Bool)

(assert (=> b!8014701 m!8377924))

(assert (=> b!8014701 m!8377688))

(declare-fun m!8377926 () Bool)

(assert (=> b!8014701 m!8377926))

(assert (=> b!8014525 d!2389428))

(declare-fun d!2389430 () Bool)

(assert (=> d!2389430 (isPrefix!6739 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)) totalInput!1349)))

(declare-fun lt!2718180 () Unit!170854)

(assert (=> d!2389430 (= lt!2718180 (choose!60399 lt!2717907 totalInput!1349))))

(assert (=> d!2389430 (isPrefix!6739 lt!2717907 totalInput!1349)))

(assert (=> d!2389430 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1412 lt!2717907 totalInput!1349) lt!2718180)))

(declare-fun bs!1970982 () Bool)

(assert (= bs!1970982 d!2389430))

(assert (=> bs!1970982 m!8377682))

(declare-fun m!8377928 () Bool)

(assert (=> bs!1970982 m!8377928))

(assert (=> bs!1970982 m!8377682))

(assert (=> bs!1970982 m!8377684))

(assert (=> bs!1970982 m!8377878))

(assert (=> bs!1970982 m!8377698))

(assert (=> bs!1970982 m!8377698))

(assert (=> bs!1970982 m!8377700))

(assert (=> b!8014525 d!2389430))

(declare-fun b!8014704 () Bool)

(declare-fun e!4721240 () List!74916)

(assert (=> b!8014704 (= e!4721240 (Cons!74792 (h!81240 lt!2717907) (++!18513 (t!390659 lt!2717907) (Cons!74792 (head!16361 lt!2717898) Nil!74792))))))

(declare-fun e!4721239 () Bool)

(declare-fun lt!2718181 () List!74916)

(declare-fun b!8014706 () Bool)

(assert (=> b!8014706 (= e!4721239 (or (not (= (Cons!74792 (head!16361 lt!2717898) Nil!74792) Nil!74792)) (= lt!2718181 lt!2717907)))))

(declare-fun b!8014703 () Bool)

(assert (=> b!8014703 (= e!4721240 (Cons!74792 (head!16361 lt!2717898) Nil!74792))))

(declare-fun d!2389432 () Bool)

(assert (=> d!2389432 e!4721239))

(declare-fun res!3169076 () Bool)

(assert (=> d!2389432 (=> (not res!3169076) (not e!4721239))))

(assert (=> d!2389432 (= res!3169076 (= (content!15918 lt!2718181) ((_ map or) (content!15918 lt!2717907) (content!15918 (Cons!74792 (head!16361 lt!2717898) Nil!74792)))))))

(assert (=> d!2389432 (= lt!2718181 e!4721240)))

(declare-fun c!1471009 () Bool)

(assert (=> d!2389432 (= c!1471009 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389432 (= (++!18513 lt!2717907 (Cons!74792 (head!16361 lt!2717898) Nil!74792)) lt!2718181)))

(declare-fun b!8014705 () Bool)

(declare-fun res!3169075 () Bool)

(assert (=> b!8014705 (=> (not res!3169075) (not e!4721239))))

(assert (=> b!8014705 (= res!3169075 (= (size!43589 lt!2718181) (+ (size!43589 lt!2717907) (size!43589 (Cons!74792 (head!16361 lt!2717898) Nil!74792)))))))

(assert (= (and d!2389432 c!1471009) b!8014703))

(assert (= (and d!2389432 (not c!1471009)) b!8014704))

(assert (= (and d!2389432 res!3169076) b!8014705))

(assert (= (and b!8014705 res!3169075) b!8014706))

(declare-fun m!8377930 () Bool)

(assert (=> b!8014704 m!8377930))

(declare-fun m!8377932 () Bool)

(assert (=> d!2389432 m!8377932))

(assert (=> d!2389432 m!8377772))

(declare-fun m!8377934 () Bool)

(assert (=> d!2389432 m!8377934))

(declare-fun m!8377936 () Bool)

(assert (=> b!8014705 m!8377936))

(assert (=> b!8014705 m!8377688))

(declare-fun m!8377938 () Bool)

(assert (=> b!8014705 m!8377938))

(assert (=> b!8014525 d!2389432))

(declare-fun d!2389434 () Bool)

(assert (=> d!2389434 (<= (size!43589 lt!2717907) (size!43589 totalInput!1349))))

(declare-fun lt!2718182 () Unit!170854)

(assert (=> d!2389434 (= lt!2718182 (choose!60395 lt!2717907 totalInput!1349))))

(assert (=> d!2389434 (isPrefix!6739 lt!2717907 totalInput!1349)))

(assert (=> d!2389434 (= (lemmaIsPrefixThenSmallerEqSize!1222 lt!2717907 totalInput!1349) lt!2718182)))

(declare-fun bs!1970983 () Bool)

(assert (= bs!1970983 d!2389434))

(assert (=> bs!1970983 m!8377688))

(assert (=> bs!1970983 m!8377390))

(declare-fun m!8377940 () Bool)

(assert (=> bs!1970983 m!8377940))

(assert (=> bs!1970983 m!8377878))

(assert (=> b!8014525 d!2389434))

(declare-fun b!8014708 () Bool)

(declare-fun e!4721242 () List!74916)

(assert (=> b!8014708 (= e!4721242 (Cons!74792 (h!81240 lt!2717907) (++!18513 (t!390659 lt!2717907) (Cons!74792 lt!2718120 Nil!74792))))))

(declare-fun lt!2718183 () List!74916)

(declare-fun b!8014710 () Bool)

(declare-fun e!4721241 () Bool)

(assert (=> b!8014710 (= e!4721241 (or (not (= (Cons!74792 lt!2718120 Nil!74792) Nil!74792)) (= lt!2718183 lt!2717907)))))

(declare-fun b!8014707 () Bool)

(assert (=> b!8014707 (= e!4721242 (Cons!74792 lt!2718120 Nil!74792))))

(declare-fun d!2389436 () Bool)

(assert (=> d!2389436 e!4721241))

(declare-fun res!3169078 () Bool)

(assert (=> d!2389436 (=> (not res!3169078) (not e!4721241))))

(assert (=> d!2389436 (= res!3169078 (= (content!15918 lt!2718183) ((_ map or) (content!15918 lt!2717907) (content!15918 (Cons!74792 lt!2718120 Nil!74792)))))))

(assert (=> d!2389436 (= lt!2718183 e!4721242)))

(declare-fun c!1471010 () Bool)

(assert (=> d!2389436 (= c!1471010 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389436 (= (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792)) lt!2718183)))

(declare-fun b!8014709 () Bool)

(declare-fun res!3169077 () Bool)

(assert (=> b!8014709 (=> (not res!3169077) (not e!4721241))))

(assert (=> b!8014709 (= res!3169077 (= (size!43589 lt!2718183) (+ (size!43589 lt!2717907) (size!43589 (Cons!74792 lt!2718120 Nil!74792)))))))

(assert (= (and d!2389436 c!1471010) b!8014707))

(assert (= (and d!2389436 (not c!1471010)) b!8014708))

(assert (= (and d!2389436 res!3169078) b!8014709))

(assert (= (and b!8014709 res!3169077) b!8014710))

(declare-fun m!8377942 () Bool)

(assert (=> b!8014708 m!8377942))

(declare-fun m!8377944 () Bool)

(assert (=> d!2389436 m!8377944))

(assert (=> d!2389436 m!8377772))

(declare-fun m!8377946 () Bool)

(assert (=> d!2389436 m!8377946))

(declare-fun m!8377948 () Bool)

(assert (=> b!8014709 m!8377948))

(assert (=> b!8014709 m!8377688))

(declare-fun m!8377950 () Bool)

(assert (=> b!8014709 m!8377950))

(assert (=> b!8014525 d!2389436))

(declare-fun e!4721244 () List!74916)

(declare-fun b!8014712 () Bool)

(assert (=> b!8014712 (= e!4721244 (Cons!74792 (h!81240 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792))) (++!18513 (t!390659 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792))) lt!2718139)))))

(declare-fun e!4721243 () Bool)

(declare-fun b!8014714 () Bool)

(declare-fun lt!2718184 () List!74916)

(assert (=> b!8014714 (= e!4721243 (or (not (= lt!2718139 Nil!74792)) (= lt!2718184 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792)))))))

(declare-fun b!8014711 () Bool)

(assert (=> b!8014711 (= e!4721244 lt!2718139)))

(declare-fun d!2389438 () Bool)

(assert (=> d!2389438 e!4721243))

(declare-fun res!3169080 () Bool)

(assert (=> d!2389438 (=> (not res!3169080) (not e!4721243))))

(assert (=> d!2389438 (= res!3169080 (= (content!15918 lt!2718184) ((_ map or) (content!15918 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792))) (content!15918 lt!2718139))))))

(assert (=> d!2389438 (= lt!2718184 e!4721244)))

(declare-fun c!1471011 () Bool)

(assert (=> d!2389438 (= c!1471011 ((_ is Nil!74792) (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792))))))

(assert (=> d!2389438 (= (++!18513 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792)) lt!2718139) lt!2718184)))

(declare-fun b!8014713 () Bool)

(declare-fun res!3169079 () Bool)

(assert (=> b!8014713 (=> (not res!3169079) (not e!4721243))))

(assert (=> b!8014713 (= res!3169079 (= (size!43589 lt!2718184) (+ (size!43589 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792))) (size!43589 lt!2718139))))))

(assert (= (and d!2389438 c!1471011) b!8014711))

(assert (= (and d!2389438 (not c!1471011)) b!8014712))

(assert (= (and d!2389438 res!3169080) b!8014713))

(assert (= (and b!8014713 res!3169079) b!8014714))

(declare-fun m!8377952 () Bool)

(assert (=> b!8014712 m!8377952))

(declare-fun m!8377954 () Bool)

(assert (=> d!2389438 m!8377954))

(assert (=> d!2389438 m!8377678))

(declare-fun m!8377956 () Bool)

(assert (=> d!2389438 m!8377956))

(declare-fun m!8377958 () Bool)

(assert (=> d!2389438 m!8377958))

(declare-fun m!8377960 () Bool)

(assert (=> b!8014713 m!8377960))

(assert (=> b!8014713 m!8377678))

(declare-fun m!8377962 () Bool)

(assert (=> b!8014713 m!8377962))

(declare-fun m!8377964 () Bool)

(assert (=> b!8014713 m!8377964))

(assert (=> b!8014525 d!2389438))

(assert (=> b!8014525 d!2389260))

(declare-fun b!8014716 () Bool)

(declare-fun res!3169082 () Bool)

(declare-fun e!4721246 () Bool)

(assert (=> b!8014716 (=> (not res!3169082) (not e!4721246))))

(assert (=> b!8014716 (= res!3169082 (= (head!16361 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792))) (head!16361 totalInput!1349)))))

(declare-fun d!2389440 () Bool)

(declare-fun e!4721247 () Bool)

(assert (=> d!2389440 e!4721247))

(declare-fun res!3169084 () Bool)

(assert (=> d!2389440 (=> res!3169084 e!4721247)))

(declare-fun lt!2718185 () Bool)

(assert (=> d!2389440 (= res!3169084 (not lt!2718185))))

(declare-fun e!4721245 () Bool)

(assert (=> d!2389440 (= lt!2718185 e!4721245)))

(declare-fun res!3169081 () Bool)

(assert (=> d!2389440 (=> res!3169081 e!4721245)))

(assert (=> d!2389440 (= res!3169081 ((_ is Nil!74792) (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792))))))

(assert (=> d!2389440 (= (isPrefix!6739 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)) totalInput!1349) lt!2718185)))

(declare-fun b!8014717 () Bool)

(assert (=> b!8014717 (= e!4721246 (isPrefix!6739 (tail!15884 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792))) (tail!15884 totalInput!1349)))))

(declare-fun b!8014715 () Bool)

(assert (=> b!8014715 (= e!4721245 e!4721246)))

(declare-fun res!3169083 () Bool)

(assert (=> b!8014715 (=> (not res!3169083) (not e!4721246))))

(assert (=> b!8014715 (= res!3169083 (not ((_ is Nil!74792) totalInput!1349)))))

(declare-fun b!8014718 () Bool)

(assert (=> b!8014718 (= e!4721247 (>= (size!43589 totalInput!1349) (size!43589 (++!18513 lt!2717907 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) Nil!74792)))))))

(assert (= (and d!2389440 (not res!3169081)) b!8014715))

(assert (= (and b!8014715 res!3169083) b!8014716))

(assert (= (and b!8014716 res!3169082) b!8014717))

(assert (= (and d!2389440 (not res!3169084)) b!8014718))

(assert (=> b!8014716 m!8377682))

(declare-fun m!8377966 () Bool)

(assert (=> b!8014716 m!8377966))

(assert (=> b!8014716 m!8377472))

(assert (=> b!8014717 m!8377682))

(declare-fun m!8377968 () Bool)

(assert (=> b!8014717 m!8377968))

(assert (=> b!8014717 m!8377474))

(assert (=> b!8014717 m!8377968))

(assert (=> b!8014717 m!8377474))

(declare-fun m!8377970 () Bool)

(assert (=> b!8014717 m!8377970))

(assert (=> b!8014718 m!8377390))

(assert (=> b!8014718 m!8377682))

(declare-fun m!8377972 () Bool)

(assert (=> b!8014718 m!8377972))

(assert (=> b!8014525 d!2389440))

(declare-fun d!2389442 () Bool)

(assert (=> d!2389442 (= (head!16361 (getSuffix!3934 totalInput!1349 lt!2717907)) (h!81240 (getSuffix!3934 totalInput!1349 lt!2717907)))))

(assert (=> b!8014525 d!2389442))

(declare-fun d!2389444 () Bool)

(declare-fun lt!2718186 () Int)

(assert (=> d!2389444 (>= lt!2718186 0)))

(declare-fun e!4721248 () Int)

(assert (=> d!2389444 (= lt!2718186 e!4721248)))

(declare-fun c!1471012 () Bool)

(assert (=> d!2389444 (= c!1471012 ((_ is Nil!74792) lt!2717907))))

(assert (=> d!2389444 (= (size!43589 lt!2717907) lt!2718186)))

(declare-fun b!8014719 () Bool)

(assert (=> b!8014719 (= e!4721248 0)))

(declare-fun b!8014720 () Bool)

(assert (=> b!8014720 (= e!4721248 (+ 1 (size!43589 (t!390659 lt!2717907))))))

(assert (= (and d!2389444 c!1471012) b!8014719))

(assert (= (and d!2389444 (not c!1471012)) b!8014720))

(assert (=> b!8014720 m!8377906))

(assert (=> b!8014525 d!2389444))

(declare-fun d!2389446 () Bool)

(assert (=> d!2389446 (= (++!18513 (++!18513 lt!2717907 (Cons!74792 lt!2718120 Nil!74792)) lt!2718139) totalInput!1349)))

(declare-fun lt!2718187 () Unit!170854)

(assert (=> d!2389446 (= lt!2718187 (choose!60400 lt!2717907 lt!2718120 lt!2718139 totalInput!1349))))

(assert (=> d!2389446 (= (++!18513 lt!2717907 (Cons!74792 lt!2718120 lt!2718139)) totalInput!1349)))

(assert (=> d!2389446 (= (lemmaMoveElementToOtherListKeepsConcatEq!3594 lt!2717907 lt!2718120 lt!2718139 totalInput!1349) lt!2718187)))

(declare-fun bs!1970984 () Bool)

(assert (= bs!1970984 d!2389446))

(assert (=> bs!1970984 m!8377678))

(assert (=> bs!1970984 m!8377678))

(assert (=> bs!1970984 m!8377696))

(declare-fun m!8377974 () Bool)

(assert (=> bs!1970984 m!8377974))

(declare-fun m!8377976 () Bool)

(assert (=> bs!1970984 m!8377976))

(assert (=> b!8014525 d!2389446))

(assert (=> b!8014525 d!2389394))

(declare-fun b!8014722 () Bool)

(declare-fun e!4721250 () List!74916)

(assert (=> b!8014722 (= e!4721250 (Cons!74792 (h!81240 (t!390659 (_1!38689 lt!2717903))) (++!18513 (t!390659 (t!390659 (_1!38689 lt!2717903))) (_2!38689 lt!2717903))))))

(declare-fun b!8014724 () Bool)

(declare-fun e!4721249 () Bool)

(declare-fun lt!2718188 () List!74916)

(assert (=> b!8014724 (= e!4721249 (or (not (= (_2!38689 lt!2717903) Nil!74792)) (= lt!2718188 (t!390659 (_1!38689 lt!2717903)))))))

(declare-fun b!8014721 () Bool)

(assert (=> b!8014721 (= e!4721250 (_2!38689 lt!2717903))))

(declare-fun d!2389448 () Bool)

(assert (=> d!2389448 e!4721249))

(declare-fun res!3169086 () Bool)

(assert (=> d!2389448 (=> (not res!3169086) (not e!4721249))))

(assert (=> d!2389448 (= res!3169086 (= (content!15918 lt!2718188) ((_ map or) (content!15918 (t!390659 (_1!38689 lt!2717903))) (content!15918 (_2!38689 lt!2717903)))))))

(assert (=> d!2389448 (= lt!2718188 e!4721250)))

(declare-fun c!1471013 () Bool)

(assert (=> d!2389448 (= c!1471013 ((_ is Nil!74792) (t!390659 (_1!38689 lt!2717903))))))

(assert (=> d!2389448 (= (++!18513 (t!390659 (_1!38689 lt!2717903)) (_2!38689 lt!2717903)) lt!2718188)))

(declare-fun b!8014723 () Bool)

(declare-fun res!3169085 () Bool)

(assert (=> b!8014723 (=> (not res!3169085) (not e!4721249))))

(assert (=> b!8014723 (= res!3169085 (= (size!43589 lt!2718188) (+ (size!43589 (t!390659 (_1!38689 lt!2717903))) (size!43589 (_2!38689 lt!2717903)))))))

(assert (= (and d!2389448 c!1471013) b!8014721))

(assert (= (and d!2389448 (not c!1471013)) b!8014722))

(assert (= (and d!2389448 res!3169086) b!8014723))

(assert (= (and b!8014723 res!3169085) b!8014724))

(declare-fun m!8377978 () Bool)

(assert (=> b!8014722 m!8377978))

(declare-fun m!8377980 () Bool)

(assert (=> d!2389448 m!8377980))

(declare-fun m!8377982 () Bool)

(assert (=> d!2389448 m!8377982))

(assert (=> d!2389448 m!8377452))

(declare-fun m!8377984 () Bool)

(assert (=> b!8014723 m!8377984))

(assert (=> b!8014723 m!8377808))

(assert (=> b!8014723 m!8377456))

(assert (=> b!8014242 d!2389448))

(declare-fun d!2389450 () Bool)

(declare-fun lt!2718189 () Int)

(assert (=> d!2389450 (>= lt!2718189 0)))

(declare-fun e!4721251 () Int)

(assert (=> d!2389450 (= lt!2718189 e!4721251)))

(declare-fun c!1471014 () Bool)

(assert (=> d!2389450 (= c!1471014 ((_ is Nil!74792) (t!390659 testedP!353)))))

(assert (=> d!2389450 (= (size!43589 (t!390659 testedP!353)) lt!2718189)))

(declare-fun b!8014725 () Bool)

(assert (=> b!8014725 (= e!4721251 0)))

(declare-fun b!8014726 () Bool)

(assert (=> b!8014726 (= e!4721251 (+ 1 (size!43589 (t!390659 (t!390659 testedP!353)))))))

(assert (= (and d!2389450 c!1471014) b!8014725))

(assert (= (and d!2389450 (not c!1471014)) b!8014726))

(declare-fun m!8377986 () Bool)

(assert (=> b!8014726 m!8377986))

(assert (=> b!8014238 d!2389450))

(assert (=> b!8014585 d!2389260))

(assert (=> b!8014585 d!2389258))

(declare-fun d!2389452 () Bool)

(declare-fun c!1471015 () Bool)

(assert (=> d!2389452 (= c!1471015 ((_ is Nil!74792) lt!2718158))))

(declare-fun e!4721252 () (InoxSet C!43712))

(assert (=> d!2389452 (= (content!15918 lt!2718158) e!4721252)))

(declare-fun b!8014727 () Bool)

(assert (=> b!8014727 (= e!4721252 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014728 () Bool)

(assert (=> b!8014728 (= e!4721252 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2718158) true) (content!15918 (t!390659 lt!2718158))))))

(assert (= (and d!2389452 c!1471015) b!8014727))

(assert (= (and d!2389452 (not c!1471015)) b!8014728))

(declare-fun m!8377988 () Bool)

(assert (=> b!8014728 m!8377988))

(declare-fun m!8377990 () Bool)

(assert (=> b!8014728 m!8377990))

(assert (=> d!2389358 d!2389452))

(declare-fun d!2389454 () Bool)

(declare-fun c!1471016 () Bool)

(assert (=> d!2389454 (= c!1471016 ((_ is Nil!74792) lt!2717907))))

(declare-fun e!4721253 () (InoxSet C!43712))

(assert (=> d!2389454 (= (content!15918 lt!2717907) e!4721253)))

(declare-fun b!8014729 () Bool)

(assert (=> b!8014729 (= e!4721253 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014730 () Bool)

(assert (=> b!8014730 (= e!4721253 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2717907) true) (content!15918 (t!390659 lt!2717907))))))

(assert (= (and d!2389454 c!1471016) b!8014729))

(assert (= (and d!2389454 (not c!1471016)) b!8014730))

(declare-fun m!8377992 () Bool)

(assert (=> b!8014730 m!8377992))

(assert (=> b!8014730 m!8377902))

(assert (=> d!2389358 d!2389454))

(declare-fun d!2389456 () Bool)

(declare-fun c!1471017 () Bool)

(assert (=> d!2389456 (= c!1471017 ((_ is Nil!74792) lt!2717898))))

(declare-fun e!4721254 () (InoxSet C!43712))

(assert (=> d!2389456 (= (content!15918 lt!2717898) e!4721254)))

(declare-fun b!8014731 () Bool)

(assert (=> b!8014731 (= e!4721254 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014732 () Bool)

(assert (=> b!8014732 (= e!4721254 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2717898) true) (content!15918 (t!390659 lt!2717898))))))

(assert (= (and d!2389456 c!1471017) b!8014731))

(assert (= (and d!2389456 (not c!1471017)) b!8014732))

(declare-fun m!8377994 () Bool)

(assert (=> b!8014732 m!8377994))

(declare-fun m!8377996 () Bool)

(assert (=> b!8014732 m!8377996))

(assert (=> d!2389358 d!2389456))

(declare-fun d!2389458 () Bool)

(assert (=> d!2389458 (= (isEmpty!42978 (_1!38689 lt!2718129)) ((_ is Nil!74792) (_1!38689 lt!2718129)))))

(assert (=> b!8014533 d!2389458))

(declare-fun b!8014767 () Bool)

(declare-fun e!4721281 () Bool)

(declare-fun e!4721280 () Bool)

(assert (=> b!8014767 (= e!4721281 e!4721280)))

(declare-fun res!3169106 () Bool)

(declare-fun call!744476 () Bool)

(assert (=> b!8014767 (= res!3169106 call!744476)))

(assert (=> b!8014767 (=> res!3169106 e!4721280)))

(declare-fun b!8014768 () Bool)

(declare-fun e!4721278 () Bool)

(assert (=> b!8014768 (= e!4721281 e!4721278)))

(declare-fun res!3169107 () Bool)

(declare-fun call!744475 () Bool)

(assert (=> b!8014768 (= res!3169107 call!744475)))

(assert (=> b!8014768 (=> (not res!3169107) (not e!4721278))))

(declare-fun bm!744471 () Bool)

(declare-fun c!1471027 () Bool)

(assert (=> bm!744471 (= call!744476 (lostCause!2074 (ite c!1471027 (regTwo!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun b!8014769 () Bool)

(declare-fun e!4721282 () Bool)

(assert (=> b!8014769 (= e!4721282 e!4721281)))

(assert (=> b!8014769 (= c!1471027 ((_ is Union!21687) r!15422))))

(declare-fun b!8014770 () Bool)

(declare-fun e!4721279 () Bool)

(declare-fun e!4721283 () Bool)

(assert (=> b!8014770 (= e!4721279 e!4721283)))

(declare-fun res!3169105 () Bool)

(assert (=> b!8014770 (=> res!3169105 e!4721283)))

(assert (=> b!8014770 (= res!3169105 ((_ is EmptyLang!21687) r!15422))))

(declare-fun b!8014771 () Bool)

(assert (=> b!8014771 (= e!4721278 call!744476)))

(declare-fun d!2389460 () Bool)

(declare-fun lt!2718196 () Bool)

(declare-datatypes ((Option!17968 0))(
  ( (None!17967) (Some!17967 (v!55152 List!74916)) )
))
(declare-fun isEmpty!42979 (Option!17968) Bool)

(declare-fun getLanguageWitness!1159 (Regex!21687) Option!17968)

(assert (=> d!2389460 (= lt!2718196 (isEmpty!42979 (getLanguageWitness!1159 r!15422)))))

(assert (=> d!2389460 (= lt!2718196 e!4721279)))

(declare-fun res!3169103 () Bool)

(assert (=> d!2389460 (=> (not res!3169103) (not e!4721279))))

(assert (=> d!2389460 (= res!3169103 (not ((_ is EmptyExpr!21687) r!15422)))))

(assert (=> d!2389460 (= (lostCauseFct!616 r!15422) lt!2718196)))

(declare-fun bm!744470 () Bool)

(assert (=> bm!744470 (= call!744475 (lostCause!2074 (ite c!1471027 (regOne!43887 r!15422) (regTwo!43886 r!15422))))))

(declare-fun b!8014772 () Bool)

(assert (=> b!8014772 (= e!4721280 call!744475)))

(declare-fun b!8014773 () Bool)

(assert (=> b!8014773 (= e!4721283 e!4721282)))

(declare-fun res!3169104 () Bool)

(assert (=> b!8014773 (=> (not res!3169104) (not e!4721282))))

(assert (=> b!8014773 (= res!3169104 (and (not ((_ is ElementMatch!21687) r!15422)) (not ((_ is Star!21687) r!15422))))))

(assert (= (and d!2389460 res!3169103) b!8014770))

(assert (= (and b!8014770 (not res!3169105)) b!8014773))

(assert (= (and b!8014773 res!3169104) b!8014769))

(assert (= (and b!8014769 c!1471027) b!8014768))

(assert (= (and b!8014769 (not c!1471027)) b!8014767))

(assert (= (and b!8014768 res!3169107) b!8014771))

(assert (= (and b!8014767 (not res!3169106)) b!8014772))

(assert (= (or b!8014768 b!8014772) bm!744470))

(assert (= (or b!8014771 b!8014767) bm!744471))

(declare-fun m!8378026 () Bool)

(assert (=> bm!744471 m!8378026))

(declare-fun m!8378028 () Bool)

(assert (=> d!2389460 m!8378028))

(assert (=> d!2389460 m!8378028))

(declare-fun m!8378030 () Bool)

(assert (=> d!2389460 m!8378030))

(declare-fun m!8378032 () Bool)

(assert (=> bm!744470 m!8378032))

(assert (=> d!2389304 d!2389460))

(declare-fun c!1471033 () Bool)

(declare-fun call!744482 () Regex!21687)

(declare-fun c!1471032 () Bool)

(declare-fun bm!744475 () Bool)

(declare-fun c!1471031 () Bool)

(assert (=> bm!744475 (= call!744482 (derivativeStep!6638 (ite c!1471032 (regTwo!43887 (derivativeStep!6638 r!15422 lt!2717904)) (ite c!1471031 (reg!22016 (derivativeStep!6638 r!15422 lt!2717904)) (ite c!1471033 (regTwo!43886 (derivativeStep!6638 r!15422 lt!2717904)) (regOne!43886 (derivativeStep!6638 r!15422 lt!2717904))))) call!744439))))

(declare-fun call!744481 () Regex!21687)

(declare-fun e!4721291 () Regex!21687)

(declare-fun call!744480 () Regex!21687)

(declare-fun b!8014783 () Bool)

(assert (=> b!8014783 (= e!4721291 (Union!21687 (Concat!30686 call!744480 (regTwo!43886 (derivativeStep!6638 r!15422 lt!2717904))) call!744481))))

(declare-fun bm!744476 () Bool)

(declare-fun call!744483 () Regex!21687)

(assert (=> bm!744476 (= call!744481 call!744483)))

(declare-fun b!8014784 () Bool)

(declare-fun e!4721292 () Regex!21687)

(assert (=> b!8014784 (= e!4721292 (Concat!30686 call!744483 (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun b!8014785 () Bool)

(assert (=> b!8014785 (= c!1471033 (nullable!9729 (regOne!43886 (derivativeStep!6638 r!15422 lt!2717904))))))

(assert (=> b!8014785 (= e!4721292 e!4721291)))

(declare-fun bm!744477 () Bool)

(assert (=> bm!744477 (= call!744480 (derivativeStep!6638 (ite c!1471032 (regOne!43887 (derivativeStep!6638 r!15422 lt!2717904)) (regOne!43886 (derivativeStep!6638 r!15422 lt!2717904))) call!744439))))

(declare-fun b!8014786 () Bool)

(assert (=> b!8014786 (= e!4721291 (Union!21687 (Concat!30686 call!744481 (regTwo!43886 (derivativeStep!6638 r!15422 lt!2717904))) EmptyLang!21687))))

(declare-fun b!8014787 () Bool)

(assert (=> b!8014787 (= c!1471032 ((_ is Union!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun e!4721294 () Regex!21687)

(declare-fun e!4721295 () Regex!21687)

(assert (=> b!8014787 (= e!4721294 e!4721295)))

(declare-fun b!8014788 () Bool)

(declare-fun e!4721293 () Regex!21687)

(assert (=> b!8014788 (= e!4721293 EmptyLang!21687)))

(declare-fun b!8014789 () Bool)

(assert (=> b!8014789 (= e!4721295 e!4721292)))

(assert (=> b!8014789 (= c!1471031 ((_ is Star!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun d!2389474 () Bool)

(declare-fun lt!2718197 () Regex!21687)

(assert (=> d!2389474 (validRegex!11991 lt!2718197)))

(assert (=> d!2389474 (= lt!2718197 e!4721293)))

(declare-fun c!1471030 () Bool)

(assert (=> d!2389474 (= c!1471030 (or ((_ is EmptyExpr!21687) (derivativeStep!6638 r!15422 lt!2717904)) ((_ is EmptyLang!21687) (derivativeStep!6638 r!15422 lt!2717904))))))

(assert (=> d!2389474 (validRegex!11991 (derivativeStep!6638 r!15422 lt!2717904))))

(assert (=> d!2389474 (= (derivativeStep!6638 (derivativeStep!6638 r!15422 lt!2717904) call!744439) lt!2718197)))

(declare-fun b!8014790 () Bool)

(assert (=> b!8014790 (= e!4721294 (ite (= call!744439 (c!1470876 (derivativeStep!6638 r!15422 lt!2717904))) EmptyExpr!21687 EmptyLang!21687))))

(declare-fun bm!744478 () Bool)

(assert (=> bm!744478 (= call!744483 call!744482)))

(declare-fun b!8014791 () Bool)

(assert (=> b!8014791 (= e!4721295 (Union!21687 call!744480 call!744482))))

(declare-fun b!8014792 () Bool)

(assert (=> b!8014792 (= e!4721293 e!4721294)))

(declare-fun c!1471034 () Bool)

(assert (=> b!8014792 (= c!1471034 ((_ is ElementMatch!21687) (derivativeStep!6638 r!15422 lt!2717904)))))

(assert (= (and d!2389474 c!1471030) b!8014788))

(assert (= (and d!2389474 (not c!1471030)) b!8014792))

(assert (= (and b!8014792 c!1471034) b!8014790))

(assert (= (and b!8014792 (not c!1471034)) b!8014787))

(assert (= (and b!8014787 c!1471032) b!8014791))

(assert (= (and b!8014787 (not c!1471032)) b!8014789))

(assert (= (and b!8014789 c!1471031) b!8014784))

(assert (= (and b!8014789 (not c!1471031)) b!8014785))

(assert (= (and b!8014785 c!1471033) b!8014783))

(assert (= (and b!8014785 (not c!1471033)) b!8014786))

(assert (= (or b!8014783 b!8014786) bm!744476))

(assert (= (or b!8014784 bm!744476) bm!744478))

(assert (= (or b!8014791 bm!744478) bm!744475))

(assert (= (or b!8014791 b!8014783) bm!744477))

(declare-fun m!8378040 () Bool)

(assert (=> bm!744475 m!8378040))

(declare-fun m!8378042 () Bool)

(assert (=> b!8014785 m!8378042))

(declare-fun m!8378044 () Bool)

(assert (=> bm!744477 m!8378044))

(declare-fun m!8378046 () Bool)

(assert (=> d!2389474 m!8378046))

(assert (=> d!2389474 m!8377380))

(assert (=> d!2389474 m!8377716))

(assert (=> bm!744436 d!2389474))

(declare-fun b!8014844 () Bool)

(declare-fun e!4721335 () Bool)

(declare-fun e!4721339 () Bool)

(assert (=> b!8014844 (= e!4721335 e!4721339)))

(declare-fun res!3169145 () Bool)

(assert (=> b!8014844 (=> res!3169145 e!4721339)))

(assert (=> b!8014844 (= res!3169145 ((_ is Star!21687) r!15422))))

(declare-fun d!2389478 () Bool)

(declare-fun res!3169147 () Bool)

(declare-fun e!4721338 () Bool)

(assert (=> d!2389478 (=> res!3169147 e!4721338)))

(assert (=> d!2389478 (= res!3169147 ((_ is EmptyExpr!21687) r!15422))))

(assert (=> d!2389478 (= (nullableFct!3845 r!15422) e!4721338)))

(declare-fun b!8014845 () Bool)

(declare-fun e!4721337 () Bool)

(declare-fun e!4721340 () Bool)

(assert (=> b!8014845 (= e!4721337 e!4721340)))

(declare-fun res!3169146 () Bool)

(declare-fun call!744492 () Bool)

(assert (=> b!8014845 (= res!3169146 call!744492)))

(assert (=> b!8014845 (=> res!3169146 e!4721340)))

(declare-fun b!8014846 () Bool)

(declare-fun e!4721336 () Bool)

(assert (=> b!8014846 (= e!4721337 e!4721336)))

(declare-fun res!3169148 () Bool)

(declare-fun call!744491 () Bool)

(assert (=> b!8014846 (= res!3169148 call!744491)))

(assert (=> b!8014846 (=> (not res!3169148) (not e!4721336))))

(declare-fun b!8014847 () Bool)

(assert (=> b!8014847 (= e!4721339 e!4721337)))

(declare-fun c!1471045 () Bool)

(assert (=> b!8014847 (= c!1471045 ((_ is Union!21687) r!15422))))

(declare-fun bm!744486 () Bool)

(assert (=> bm!744486 (= call!744491 (nullable!9729 (ite c!1471045 (regTwo!43887 r!15422) (regOne!43886 r!15422))))))

(declare-fun b!8014848 () Bool)

(assert (=> b!8014848 (= e!4721336 call!744492)))

(declare-fun b!8014849 () Bool)

(assert (=> b!8014849 (= e!4721338 e!4721335)))

(declare-fun res!3169144 () Bool)

(assert (=> b!8014849 (=> (not res!3169144) (not e!4721335))))

(assert (=> b!8014849 (= res!3169144 (and (not ((_ is EmptyLang!21687) r!15422)) (not ((_ is ElementMatch!21687) r!15422))))))

(declare-fun bm!744487 () Bool)

(assert (=> bm!744487 (= call!744492 (nullable!9729 (ite c!1471045 (regOne!43887 r!15422) (regTwo!43886 r!15422))))))

(declare-fun b!8014850 () Bool)

(assert (=> b!8014850 (= e!4721340 call!744491)))

(assert (= (and d!2389478 (not res!3169147)) b!8014849))

(assert (= (and b!8014849 res!3169144) b!8014844))

(assert (= (and b!8014844 (not res!3169145)) b!8014847))

(assert (= (and b!8014847 c!1471045) b!8014845))

(assert (= (and b!8014847 (not c!1471045)) b!8014846))

(assert (= (and b!8014845 (not res!3169146)) b!8014850))

(assert (= (and b!8014846 res!3169148) b!8014848))

(assert (= (or b!8014845 b!8014848) bm!744487))

(assert (= (or b!8014850 b!8014846) bm!744486))

(declare-fun m!8378094 () Bool)

(assert (=> bm!744486 m!8378094))

(declare-fun m!8378096 () Bool)

(assert (=> bm!744487 m!8378096))

(assert (=> d!2389350 d!2389478))

(declare-fun d!2389498 () Bool)

(declare-fun res!3169151 () Bool)

(declare-fun e!4721346 () Bool)

(assert (=> d!2389498 (=> res!3169151 e!4721346)))

(assert (=> d!2389498 (= res!3169151 ((_ is ElementMatch!21687) lt!2718149))))

(assert (=> d!2389498 (= (validRegex!11991 lt!2718149) e!4721346)))

(declare-fun b!8014851 () Bool)

(declare-fun res!3169149 () Bool)

(declare-fun e!4721341 () Bool)

(assert (=> b!8014851 (=> (not res!3169149) (not e!4721341))))

(declare-fun call!744498 () Bool)

(assert (=> b!8014851 (= res!3169149 call!744498)))

(declare-fun e!4721345 () Bool)

(assert (=> b!8014851 (= e!4721345 e!4721341)))

(declare-fun b!8014852 () Bool)

(declare-fun e!4721344 () Bool)

(declare-fun e!4721347 () Bool)

(assert (=> b!8014852 (= e!4721344 e!4721347)))

(declare-fun res!3169153 () Bool)

(assert (=> b!8014852 (=> (not res!3169153) (not e!4721347))))

(assert (=> b!8014852 (= res!3169153 call!744498)))

(declare-fun b!8014853 () Bool)

(declare-fun call!744499 () Bool)

(assert (=> b!8014853 (= e!4721347 call!744499)))

(declare-fun c!1471046 () Bool)

(declare-fun c!1471047 () Bool)

(declare-fun call!744497 () Bool)

(declare-fun bm!744492 () Bool)

(assert (=> bm!744492 (= call!744497 (validRegex!11991 (ite c!1471046 (reg!22016 lt!2718149) (ite c!1471047 (regTwo!43887 lt!2718149) (regTwo!43886 lt!2718149)))))))

(declare-fun b!8014854 () Bool)

(assert (=> b!8014854 (= e!4721341 call!744499)))

(declare-fun b!8014855 () Bool)

(declare-fun e!4721342 () Bool)

(declare-fun e!4721343 () Bool)

(assert (=> b!8014855 (= e!4721342 e!4721343)))

(declare-fun res!3169150 () Bool)

(assert (=> b!8014855 (= res!3169150 (not (nullable!9729 (reg!22016 lt!2718149))))))

(assert (=> b!8014855 (=> (not res!3169150) (not e!4721343))))

(declare-fun b!8014856 () Bool)

(assert (=> b!8014856 (= e!4721342 e!4721345)))

(assert (=> b!8014856 (= c!1471047 ((_ is Union!21687) lt!2718149))))

(declare-fun b!8014857 () Bool)

(assert (=> b!8014857 (= e!4721343 call!744497)))

(declare-fun b!8014858 () Bool)

(assert (=> b!8014858 (= e!4721346 e!4721342)))

(assert (=> b!8014858 (= c!1471046 ((_ is Star!21687) lt!2718149))))

(declare-fun b!8014859 () Bool)

(declare-fun res!3169152 () Bool)

(assert (=> b!8014859 (=> res!3169152 e!4721344)))

(assert (=> b!8014859 (= res!3169152 (not ((_ is Concat!30686) lt!2718149)))))

(assert (=> b!8014859 (= e!4721345 e!4721344)))

(declare-fun bm!744493 () Bool)

(assert (=> bm!744493 (= call!744498 (validRegex!11991 (ite c!1471047 (regOne!43887 lt!2718149) (regOne!43886 lt!2718149))))))

(declare-fun bm!744494 () Bool)

(assert (=> bm!744494 (= call!744499 call!744497)))

(assert (= (and d!2389498 (not res!3169151)) b!8014858))

(assert (= (and b!8014858 c!1471046) b!8014855))

(assert (= (and b!8014858 (not c!1471046)) b!8014856))

(assert (= (and b!8014855 res!3169150) b!8014857))

(assert (= (and b!8014856 c!1471047) b!8014851))

(assert (= (and b!8014856 (not c!1471047)) b!8014859))

(assert (= (and b!8014851 res!3169149) b!8014854))

(assert (= (and b!8014859 (not res!3169152)) b!8014852))

(assert (= (and b!8014852 res!3169153) b!8014853))

(assert (= (or b!8014854 b!8014853) bm!744494))

(assert (= (or b!8014851 b!8014852) bm!744493))

(assert (= (or b!8014857 bm!744494) bm!744492))

(declare-fun m!8378098 () Bool)

(assert (=> bm!744492 m!8378098))

(declare-fun m!8378100 () Bool)

(assert (=> b!8014855 m!8378100))

(declare-fun m!8378102 () Bool)

(assert (=> bm!744493 m!8378102))

(assert (=> d!2389342 d!2389498))

(assert (=> d!2389342 d!2389282))

(declare-fun b!8014861 () Bool)

(declare-fun res!3169155 () Bool)

(declare-fun e!4721349 () Bool)

(assert (=> b!8014861 (=> (not res!3169155) (not e!4721349))))

(assert (=> b!8014861 (= res!3169155 (= (head!16361 (tail!15884 testedP!353)) (head!16361 (tail!15884 lt!2717905))))))

(declare-fun d!2389500 () Bool)

(declare-fun e!4721350 () Bool)

(assert (=> d!2389500 e!4721350))

(declare-fun res!3169157 () Bool)

(assert (=> d!2389500 (=> res!3169157 e!4721350)))

(declare-fun lt!2718205 () Bool)

(assert (=> d!2389500 (= res!3169157 (not lt!2718205))))

(declare-fun e!4721348 () Bool)

(assert (=> d!2389500 (= lt!2718205 e!4721348)))

(declare-fun res!3169154 () Bool)

(assert (=> d!2389500 (=> res!3169154 e!4721348)))

(assert (=> d!2389500 (= res!3169154 ((_ is Nil!74792) (tail!15884 testedP!353)))))

(assert (=> d!2389500 (= (isPrefix!6739 (tail!15884 testedP!353) (tail!15884 lt!2717905)) lt!2718205)))

(declare-fun b!8014862 () Bool)

(assert (=> b!8014862 (= e!4721349 (isPrefix!6739 (tail!15884 (tail!15884 testedP!353)) (tail!15884 (tail!15884 lt!2717905))))))

(declare-fun b!8014860 () Bool)

(assert (=> b!8014860 (= e!4721348 e!4721349)))

(declare-fun res!3169156 () Bool)

(assert (=> b!8014860 (=> (not res!3169156) (not e!4721349))))

(assert (=> b!8014860 (= res!3169156 (not ((_ is Nil!74792) (tail!15884 lt!2717905))))))

(declare-fun b!8014863 () Bool)

(assert (=> b!8014863 (= e!4721350 (>= (size!43589 (tail!15884 lt!2717905)) (size!43589 (tail!15884 testedP!353))))))

(assert (= (and d!2389500 (not res!3169154)) b!8014860))

(assert (= (and b!8014860 res!3169156) b!8014861))

(assert (= (and b!8014861 res!3169155) b!8014862))

(assert (= (and d!2389500 (not res!3169157)) b!8014863))

(assert (=> b!8014861 m!8377792))

(declare-fun m!8378104 () Bool)

(assert (=> b!8014861 m!8378104))

(assert (=> b!8014861 m!8377798))

(declare-fun m!8378106 () Bool)

(assert (=> b!8014861 m!8378106))

(assert (=> b!8014862 m!8377792))

(declare-fun m!8378108 () Bool)

(assert (=> b!8014862 m!8378108))

(assert (=> b!8014862 m!8377798))

(declare-fun m!8378110 () Bool)

(assert (=> b!8014862 m!8378110))

(assert (=> b!8014862 m!8378108))

(assert (=> b!8014862 m!8378110))

(declare-fun m!8378112 () Bool)

(assert (=> b!8014862 m!8378112))

(assert (=> b!8014863 m!8377798))

(declare-fun m!8378114 () Bool)

(assert (=> b!8014863 m!8378114))

(assert (=> b!8014863 m!8377792))

(declare-fun m!8378116 () Bool)

(assert (=> b!8014863 m!8378116))

(assert (=> b!8014588 d!2389500))

(declare-fun d!2389502 () Bool)

(assert (=> d!2389502 (= (tail!15884 testedP!353) (t!390659 testedP!353))))

(assert (=> b!8014588 d!2389502))

(declare-fun d!2389504 () Bool)

(assert (=> d!2389504 (= (tail!15884 lt!2717905) (t!390659 lt!2717905))))

(assert (=> b!8014588 d!2389504))

(assert (=> b!8014583 d!2389386))

(assert (=> b!8014583 d!2389406))

(declare-fun d!2389506 () Bool)

(declare-fun lt!2718206 () Int)

(assert (=> d!2389506 (>= lt!2718206 0)))

(declare-fun e!4721351 () Int)

(assert (=> d!2389506 (= lt!2718206 e!4721351)))

(declare-fun c!1471048 () Bool)

(assert (=> d!2389506 (= c!1471048 ((_ is Nil!74792) lt!2718159))))

(assert (=> d!2389506 (= (size!43589 lt!2718159) lt!2718206)))

(declare-fun b!8014864 () Bool)

(assert (=> b!8014864 (= e!4721351 0)))

(declare-fun b!8014865 () Bool)

(assert (=> b!8014865 (= e!4721351 (+ 1 (size!43589 (t!390659 lt!2718159))))))

(assert (= (and d!2389506 c!1471048) b!8014864))

(assert (= (and d!2389506 (not c!1471048)) b!8014865))

(declare-fun m!8378118 () Bool)

(assert (=> b!8014865 m!8378118))

(assert (=> b!8014580 d!2389506))

(assert (=> b!8014580 d!2389258))

(declare-fun d!2389508 () Bool)

(declare-fun lt!2718207 () Int)

(assert (=> d!2389508 (>= lt!2718207 0)))

(declare-fun e!4721352 () Int)

(assert (=> d!2389508 (= lt!2718207 e!4721352)))

(declare-fun c!1471049 () Bool)

(assert (=> d!2389508 (= c!1471049 ((_ is Nil!74792) (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))

(assert (=> d!2389508 (= (size!43589 (Cons!74792 (head!16361 lt!2717896) Nil!74792)) lt!2718207)))

(declare-fun b!8014866 () Bool)

(assert (=> b!8014866 (= e!4721352 0)))

(declare-fun b!8014867 () Bool)

(assert (=> b!8014867 (= e!4721352 (+ 1 (size!43589 (t!390659 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (= (and d!2389508 c!1471049) b!8014866))

(assert (= (and d!2389508 (not c!1471049)) b!8014867))

(declare-fun m!8378120 () Bool)

(assert (=> b!8014867 m!8378120))

(assert (=> b!8014580 d!2389508))

(declare-fun b!8014869 () Bool)

(declare-fun e!4721354 () List!74916)

(assert (=> b!8014869 (= e!4721354 (Cons!74792 (h!81240 (t!390659 testedP!353)) (++!18513 (t!390659 (t!390659 testedP!353)) (Cons!74792 lt!2717904 Nil!74792))))))

(declare-fun e!4721353 () Bool)

(declare-fun lt!2718208 () List!74916)

(declare-fun b!8014871 () Bool)

(assert (=> b!8014871 (= e!4721353 (or (not (= (Cons!74792 lt!2717904 Nil!74792) Nil!74792)) (= lt!2718208 (t!390659 testedP!353))))))

(declare-fun b!8014868 () Bool)

(assert (=> b!8014868 (= e!4721354 (Cons!74792 lt!2717904 Nil!74792))))

(declare-fun d!2389510 () Bool)

(assert (=> d!2389510 e!4721353))

(declare-fun res!3169159 () Bool)

(assert (=> d!2389510 (=> (not res!3169159) (not e!4721353))))

(assert (=> d!2389510 (= res!3169159 (= (content!15918 lt!2718208) ((_ map or) (content!15918 (t!390659 testedP!353)) (content!15918 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (=> d!2389510 (= lt!2718208 e!4721354)))

(declare-fun c!1471050 () Bool)

(assert (=> d!2389510 (= c!1471050 ((_ is Nil!74792) (t!390659 testedP!353)))))

(assert (=> d!2389510 (= (++!18513 (t!390659 testedP!353) (Cons!74792 lt!2717904 Nil!74792)) lt!2718208)))

(declare-fun b!8014870 () Bool)

(declare-fun res!3169158 () Bool)

(assert (=> b!8014870 (=> (not res!3169158) (not e!4721353))))

(assert (=> b!8014870 (= res!3169158 (= (size!43589 lt!2718208) (+ (size!43589 (t!390659 testedP!353)) (size!43589 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (= (and d!2389510 c!1471050) b!8014868))

(assert (= (and d!2389510 (not c!1471050)) b!8014869))

(assert (= (and d!2389510 res!3169159) b!8014870))

(assert (= (and b!8014870 res!3169158) b!8014871))

(declare-fun m!8378122 () Bool)

(assert (=> b!8014869 m!8378122))

(declare-fun m!8378124 () Bool)

(assert (=> d!2389510 m!8378124))

(assert (=> d!2389510 m!8377820))

(assert (=> d!2389510 m!8377746))

(declare-fun m!8378126 () Bool)

(assert (=> b!8014870 m!8378126))

(assert (=> b!8014870 m!8377442))

(assert (=> b!8014870 m!8377750))

(assert (=> b!8014567 d!2389510))

(declare-fun d!2389512 () Bool)

(assert (=> d!2389512 (= totalInput!1349 lt!2717907)))

(declare-fun lt!2718209 () Unit!170854)

(assert (=> d!2389512 (= lt!2718209 (choose!60393 totalInput!1349 lt!2717907 totalInput!1349))))

(assert (=> d!2389512 (isPrefix!6739 totalInput!1349 totalInput!1349)))

(assert (=> d!2389512 (= (lemmaIsPrefixSameLengthThenSameList!1751 totalInput!1349 lt!2717907 totalInput!1349) lt!2718209)))

(declare-fun bs!1970988 () Bool)

(assert (= bs!1970988 d!2389512))

(declare-fun m!8378128 () Bool)

(assert (=> bs!1970988 m!8378128))

(assert (=> bs!1970988 m!8377386))

(assert (=> bm!744437 d!2389512))

(declare-fun d!2389514 () Bool)

(assert (=> d!2389514 (= totalInput!1349 testedP!353)))

(assert (=> d!2389514 true))

(declare-fun _$60!1402 () Unit!170854)

(assert (=> d!2389514 (= (choose!60393 totalInput!1349 testedP!353 totalInput!1349) _$60!1402)))

(assert (=> d!2389272 d!2389514))

(assert (=> d!2389272 d!2389268))

(declare-fun d!2389516 () Bool)

(declare-fun lt!2718210 () Int)

(assert (=> d!2389516 (>= lt!2718210 0)))

(declare-fun e!4721361 () Int)

(assert (=> d!2389516 (= lt!2718210 e!4721361)))

(declare-fun c!1471052 () Bool)

(assert (=> d!2389516 (= c!1471052 ((_ is Nil!74792) lt!2717910))))

(assert (=> d!2389516 (= (size!43589 lt!2717910) lt!2718210)))

(declare-fun b!8014879 () Bool)

(assert (=> b!8014879 (= e!4721361 0)))

(declare-fun b!8014880 () Bool)

(assert (=> b!8014880 (= e!4721361 (+ 1 (size!43589 (t!390659 lt!2717910))))))

(assert (= (and d!2389516 c!1471052) b!8014879))

(assert (= (and d!2389516 (not c!1471052)) b!8014880))

(declare-fun m!8378136 () Bool)

(assert (=> b!8014880 m!8378136))

(assert (=> b!8014231 d!2389516))

(assert (=> b!8014231 d!2389258))

(declare-fun d!2389522 () Bool)

(declare-fun lt!2718211 () Int)

(assert (=> d!2389522 (>= lt!2718211 0)))

(declare-fun e!4721362 () Int)

(assert (=> d!2389522 (= lt!2718211 e!4721362)))

(declare-fun c!1471053 () Bool)

(assert (=> d!2389522 (= c!1471053 ((_ is Nil!74792) testedSuffix!271))))

(assert (=> d!2389522 (= (size!43589 testedSuffix!271) lt!2718211)))

(declare-fun b!8014881 () Bool)

(assert (=> b!8014881 (= e!4721362 0)))

(declare-fun b!8014882 () Bool)

(assert (=> b!8014882 (= e!4721362 (+ 1 (size!43589 (t!390659 testedSuffix!271))))))

(assert (= (and d!2389522 c!1471053) b!8014881))

(assert (= (and d!2389522 (not c!1471053)) b!8014882))

(declare-fun m!8378138 () Bool)

(assert (=> b!8014882 m!8378138))

(assert (=> b!8014231 d!2389522))

(declare-fun d!2389524 () Bool)

(assert (=> d!2389524 (isPrefix!6739 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)) totalInput!1349)))

(assert (=> d!2389524 true))

(declare-fun _$65!2015 () Unit!170854)

(assert (=> d!2389524 (= (choose!60399 testedP!353 totalInput!1349) _$65!2015)))

(declare-fun bs!1970991 () Bool)

(assert (= bs!1970991 d!2389524))

(assert (=> bs!1970991 m!8377424))

(assert (=> bs!1970991 m!8377424))

(assert (=> bs!1970991 m!8377740))

(assert (=> bs!1970991 m!8377734))

(assert (=> bs!1970991 m!8377734))

(assert (=> bs!1970991 m!8377738))

(assert (=> d!2389344 d!2389524))

(declare-fun b!8014890 () Bool)

(declare-fun res!3169168 () Bool)

(declare-fun e!4721367 () Bool)

(assert (=> b!8014890 (=> (not res!3169168) (not e!4721367))))

(assert (=> b!8014890 (= res!3169168 (= (head!16361 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792))) (head!16361 totalInput!1349)))))

(declare-fun d!2389532 () Bool)

(declare-fun e!4721368 () Bool)

(assert (=> d!2389532 e!4721368))

(declare-fun res!3169170 () Bool)

(assert (=> d!2389532 (=> res!3169170 e!4721368)))

(declare-fun lt!2718214 () Bool)

(assert (=> d!2389532 (= res!3169170 (not lt!2718214))))

(declare-fun e!4721366 () Bool)

(assert (=> d!2389532 (= lt!2718214 e!4721366)))

(declare-fun res!3169167 () Bool)

(assert (=> d!2389532 (=> res!3169167 e!4721366)))

(assert (=> d!2389532 (= res!3169167 ((_ is Nil!74792) (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792))))))

(assert (=> d!2389532 (= (isPrefix!6739 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)) totalInput!1349) lt!2718214)))

(declare-fun b!8014891 () Bool)

(assert (=> b!8014891 (= e!4721367 (isPrefix!6739 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792))) (tail!15884 totalInput!1349)))))

(declare-fun b!8014889 () Bool)

(assert (=> b!8014889 (= e!4721366 e!4721367)))

(declare-fun res!3169169 () Bool)

(assert (=> b!8014889 (=> (not res!3169169) (not e!4721367))))

(assert (=> b!8014889 (= res!3169169 (not ((_ is Nil!74792) totalInput!1349)))))

(declare-fun b!8014893 () Bool)

(assert (=> b!8014893 (= e!4721368 (>= (size!43589 totalInput!1349) (size!43589 (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)))))))

(assert (= (and d!2389532 (not res!3169167)) b!8014889))

(assert (= (and b!8014889 res!3169169) b!8014890))

(assert (= (and b!8014890 res!3169168) b!8014891))

(assert (= (and d!2389532 (not res!3169170)) b!8014893))

(assert (=> b!8014890 m!8377734))

(declare-fun m!8378154 () Bool)

(assert (=> b!8014890 m!8378154))

(assert (=> b!8014890 m!8377472))

(assert (=> b!8014891 m!8377734))

(declare-fun m!8378156 () Bool)

(assert (=> b!8014891 m!8378156))

(assert (=> b!8014891 m!8377474))

(assert (=> b!8014891 m!8378156))

(assert (=> b!8014891 m!8377474))

(declare-fun m!8378158 () Bool)

(assert (=> b!8014891 m!8378158))

(assert (=> b!8014893 m!8377390))

(assert (=> b!8014893 m!8377734))

(declare-fun m!8378164 () Bool)

(assert (=> b!8014893 m!8378164))

(assert (=> d!2389344 d!2389532))

(assert (=> d!2389344 d!2389316))

(declare-fun d!2389538 () Bool)

(assert (=> d!2389538 (= (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) (h!81240 (getSuffix!3934 totalInput!1349 testedP!353)))))

(assert (=> d!2389344 d!2389538))

(assert (=> d!2389344 d!2389364))

(declare-fun b!8014900 () Bool)

(declare-fun e!4721373 () List!74916)

(assert (=> b!8014900 (= e!4721373 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792))))))

(declare-fun b!8014902 () Bool)

(declare-fun e!4721372 () Bool)

(declare-fun lt!2718217 () List!74916)

(assert (=> b!8014902 (= e!4721372 (or (not (= (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792) Nil!74792)) (= lt!2718217 testedP!353)))))

(declare-fun b!8014899 () Bool)

(assert (=> b!8014899 (= e!4721373 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792))))

(declare-fun d!2389542 () Bool)

(assert (=> d!2389542 e!4721372))

(declare-fun res!3169174 () Bool)

(assert (=> d!2389542 (=> (not res!3169174) (not e!4721372))))

(assert (=> d!2389542 (= res!3169174 (= (content!15918 lt!2718217) ((_ map or) (content!15918 testedP!353) (content!15918 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)))))))

(assert (=> d!2389542 (= lt!2718217 e!4721373)))

(declare-fun c!1471058 () Bool)

(assert (=> d!2389542 (= c!1471058 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389542 (= (++!18513 testedP!353 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)) lt!2718217)))

(declare-fun b!8014901 () Bool)

(declare-fun res!3169173 () Bool)

(assert (=> b!8014901 (=> (not res!3169173) (not e!4721372))))

(assert (=> b!8014901 (= res!3169173 (= (size!43589 lt!2718217) (+ (size!43589 testedP!353) (size!43589 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 testedP!353)) Nil!74792)))))))

(assert (= (and d!2389542 c!1471058) b!8014899))

(assert (= (and d!2389542 (not c!1471058)) b!8014900))

(assert (= (and d!2389542 res!3169174) b!8014901))

(assert (= (and b!8014901 res!3169173) b!8014902))

(declare-fun m!8378174 () Bool)

(assert (=> b!8014900 m!8378174))

(declare-fun m!8378176 () Bool)

(assert (=> d!2389542 m!8378176))

(assert (=> d!2389542 m!8377434))

(declare-fun m!8378178 () Bool)

(assert (=> d!2389542 m!8378178))

(declare-fun m!8378180 () Bool)

(assert (=> b!8014901 m!8378180))

(assert (=> b!8014901 m!8377394))

(declare-fun m!8378182 () Bool)

(assert (=> b!8014901 m!8378182))

(assert (=> d!2389344 d!2389542))

(declare-fun d!2389546 () Bool)

(assert (=> d!2389546 (= (nullable!9729 (reg!22016 r!15422)) (nullableFct!3845 (reg!22016 r!15422)))))

(declare-fun bs!1970993 () Bool)

(assert (= bs!1970993 d!2389546))

(declare-fun m!8378184 () Bool)

(assert (=> bs!1970993 m!8378184))

(assert (=> b!8014317 d!2389546))

(declare-fun d!2389548 () Bool)

(declare-fun lt!2718218 () Int)

(assert (=> d!2389548 (>= lt!2718218 0)))

(declare-fun e!4721374 () Int)

(assert (=> d!2389548 (= lt!2718218 e!4721374)))

(declare-fun c!1471059 () Bool)

(assert (=> d!2389548 (= c!1471059 ((_ is Nil!74792) (t!390659 totalInput!1349)))))

(assert (=> d!2389548 (= (size!43589 (t!390659 totalInput!1349)) lt!2718218)))

(declare-fun b!8014903 () Bool)

(assert (=> b!8014903 (= e!4721374 0)))

(declare-fun b!8014904 () Bool)

(assert (=> b!8014904 (= e!4721374 (+ 1 (size!43589 (t!390659 (t!390659 totalInput!1349)))))))

(assert (= (and d!2389548 c!1471059) b!8014903))

(assert (= (and d!2389548 (not c!1471059)) b!8014904))

(declare-fun m!8378186 () Bool)

(assert (=> b!8014904 m!8378186))

(assert (=> b!8014240 d!2389548))

(declare-fun d!2389550 () Bool)

(declare-fun c!1471062 () Bool)

(assert (=> d!2389550 (= c!1471062 ((_ is Nil!74792) lt!2718153))))

(declare-fun e!4721377 () (InoxSet C!43712))

(assert (=> d!2389550 (= (content!15918 lt!2718153) e!4721377)))

(declare-fun b!8014909 () Bool)

(assert (=> b!8014909 (= e!4721377 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014910 () Bool)

(assert (=> b!8014910 (= e!4721377 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2718153) true) (content!15918 (t!390659 lt!2718153))))))

(assert (= (and d!2389550 c!1471062) b!8014909))

(assert (= (and d!2389550 (not c!1471062)) b!8014910))

(declare-fun m!8378188 () Bool)

(assert (=> b!8014910 m!8378188))

(declare-fun m!8378190 () Bool)

(assert (=> b!8014910 m!8378190))

(assert (=> d!2389346 d!2389550))

(assert (=> d!2389346 d!2389420))

(declare-fun d!2389552 () Bool)

(declare-fun c!1471063 () Bool)

(assert (=> d!2389552 (= c!1471063 ((_ is Nil!74792) (Cons!74792 lt!2717904 Nil!74792)))))

(declare-fun e!4721378 () (InoxSet C!43712))

(assert (=> d!2389552 (= (content!15918 (Cons!74792 lt!2717904 Nil!74792)) e!4721378)))

(declare-fun b!8014911 () Bool)

(assert (=> b!8014911 (= e!4721378 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014912 () Bool)

(assert (=> b!8014912 (= e!4721378 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 (Cons!74792 lt!2717904 Nil!74792)) true) (content!15918 (t!390659 (Cons!74792 lt!2717904 Nil!74792)))))))

(assert (= (and d!2389552 c!1471063) b!8014911))

(assert (= (and d!2389552 (not c!1471063)) b!8014912))

(declare-fun m!8378192 () Bool)

(assert (=> b!8014912 m!8378192))

(declare-fun m!8378194 () Bool)

(assert (=> b!8014912 m!8378194))

(assert (=> d!2389346 d!2389552))

(assert (=> bm!744433 d!2389424))

(declare-fun c!1471067 () Bool)

(declare-fun c!1471066 () Bool)

(declare-fun c!1471065 () Bool)

(declare-fun bm!744497 () Bool)

(declare-fun call!744504 () Regex!21687)

(assert (=> bm!744497 (= call!744504 (derivativeStep!6638 (ite c!1471066 (regTwo!43887 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))) (ite c!1471065 (reg!22016 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))) (ite c!1471067 (regTwo!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))) (regOne!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))))) lt!2717904))))

(declare-fun e!4721379 () Regex!21687)

(declare-fun call!744503 () Regex!21687)

(declare-fun b!8014913 () Bool)

(declare-fun call!744502 () Regex!21687)

(assert (=> b!8014913 (= e!4721379 (Union!21687 (Concat!30686 call!744502 (regTwo!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))) call!744503))))

(declare-fun bm!744498 () Bool)

(declare-fun call!744505 () Regex!21687)

(assert (=> bm!744498 (= call!744503 call!744505)))

(declare-fun b!8014914 () Bool)

(declare-fun e!4721380 () Regex!21687)

(assert (=> b!8014914 (= e!4721380 (Concat!30686 call!744505 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))))))

(declare-fun b!8014915 () Bool)

(assert (=> b!8014915 (= c!1471067 (nullable!9729 (regOne!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))))))

(assert (=> b!8014915 (= e!4721380 e!4721379)))

(declare-fun bm!744499 () Bool)

(assert (=> bm!744499 (= call!744502 (derivativeStep!6638 (ite c!1471066 (regOne!43887 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))) (regOne!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))) lt!2717904))))

(declare-fun b!8014916 () Bool)

(assert (=> b!8014916 (= e!4721379 (Union!21687 (Concat!30686 call!744503 (regTwo!43886 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))) EmptyLang!21687))))

(declare-fun b!8014917 () Bool)

(assert (=> b!8014917 (= c!1471066 ((_ is Union!21687) (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))))))

(declare-fun e!4721382 () Regex!21687)

(declare-fun e!4721383 () Regex!21687)

(assert (=> b!8014917 (= e!4721382 e!4721383)))

(declare-fun b!8014918 () Bool)

(declare-fun e!4721381 () Regex!21687)

(assert (=> b!8014918 (= e!4721381 EmptyLang!21687)))

(declare-fun b!8014919 () Bool)

(assert (=> b!8014919 (= e!4721383 e!4721380)))

(assert (=> b!8014919 (= c!1471065 ((_ is Star!21687) (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))))))

(declare-fun d!2389554 () Bool)

(declare-fun lt!2718219 () Regex!21687)

(assert (=> d!2389554 (validRegex!11991 lt!2718219)))

(assert (=> d!2389554 (= lt!2718219 e!4721381)))

(declare-fun c!1471064 () Bool)

(assert (=> d!2389554 (= c!1471064 (or ((_ is EmptyExpr!21687) (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))) ((_ is EmptyLang!21687) (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))))))

(assert (=> d!2389554 (validRegex!11991 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))))

(assert (=> d!2389554 (= (derivativeStep!6638 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))) lt!2717904) lt!2718219)))

(declare-fun b!8014920 () Bool)

(assert (=> b!8014920 (= e!4721382 (ite (= lt!2717904 (c!1470876 (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422)))))) EmptyExpr!21687 EmptyLang!21687))))

(declare-fun bm!744500 () Bool)

(assert (=> bm!744500 (= call!744505 call!744504)))

(declare-fun b!8014921 () Bool)

(assert (=> b!8014921 (= e!4721383 (Union!21687 call!744502 call!744504))))

(declare-fun b!8014922 () Bool)

(assert (=> b!8014922 (= e!4721381 e!4721382)))

(declare-fun c!1471068 () Bool)

(assert (=> b!8014922 (= c!1471068 ((_ is ElementMatch!21687) (ite c!1470978 (regTwo!43887 r!15422) (ite c!1470977 (reg!22016 r!15422) (ite c!1470979 (regTwo!43886 r!15422) (regOne!43886 r!15422))))))))

(assert (= (and d!2389554 c!1471064) b!8014918))

(assert (= (and d!2389554 (not c!1471064)) b!8014922))

(assert (= (and b!8014922 c!1471068) b!8014920))

(assert (= (and b!8014922 (not c!1471068)) b!8014917))

(assert (= (and b!8014917 c!1471066) b!8014921))

(assert (= (and b!8014917 (not c!1471066)) b!8014919))

(assert (= (and b!8014919 c!1471065) b!8014914))

(assert (= (and b!8014919 (not c!1471065)) b!8014915))

(assert (= (and b!8014915 c!1471067) b!8014913))

(assert (= (and b!8014915 (not c!1471067)) b!8014916))

(assert (= (or b!8014913 b!8014916) bm!744498))

(assert (= (or b!8014914 bm!744498) bm!744500))

(assert (= (or b!8014921 bm!744500) bm!744497))

(assert (= (or b!8014921 b!8014913) bm!744499))

(declare-fun m!8378202 () Bool)

(assert (=> bm!744497 m!8378202))

(declare-fun m!8378204 () Bool)

(assert (=> b!8014915 m!8378204))

(declare-fun m!8378206 () Bool)

(assert (=> bm!744499 m!8378206))

(declare-fun m!8378208 () Bool)

(assert (=> d!2389554 m!8378208))

(declare-fun m!8378210 () Bool)

(assert (=> d!2389554 m!8378210))

(assert (=> bm!744448 d!2389554))

(declare-fun d!2389560 () Bool)

(declare-fun lt!2718220 () Int)

(assert (=> d!2389560 (>= lt!2718220 0)))

(declare-fun e!4721387 () Int)

(assert (=> d!2389560 (= lt!2718220 e!4721387)))

(declare-fun c!1471072 () Bool)

(assert (=> d!2389560 (= c!1471072 ((_ is Nil!74792) lt!2718158))))

(assert (=> d!2389560 (= (size!43589 lt!2718158) lt!2718220)))

(declare-fun b!8014929 () Bool)

(assert (=> b!8014929 (= e!4721387 0)))

(declare-fun b!8014930 () Bool)

(assert (=> b!8014930 (= e!4721387 (+ 1 (size!43589 (t!390659 lt!2718158))))))

(assert (= (and d!2389560 c!1471072) b!8014929))

(assert (= (and d!2389560 (not c!1471072)) b!8014930))

(declare-fun m!8378216 () Bool)

(assert (=> b!8014930 m!8378216))

(assert (=> b!8014576 d!2389560))

(assert (=> b!8014576 d!2389444))

(declare-fun d!2389564 () Bool)

(declare-fun lt!2718222 () Int)

(assert (=> d!2389564 (>= lt!2718222 0)))

(declare-fun e!4721390 () Int)

(assert (=> d!2389564 (= lt!2718222 e!4721390)))

(declare-fun c!1471074 () Bool)

(assert (=> d!2389564 (= c!1471074 ((_ is Nil!74792) lt!2717898))))

(assert (=> d!2389564 (= (size!43589 lt!2717898) lt!2718222)))

(declare-fun b!8014935 () Bool)

(assert (=> b!8014935 (= e!4721390 0)))

(declare-fun b!8014936 () Bool)

(assert (=> b!8014936 (= e!4721390 (+ 1 (size!43589 (t!390659 lt!2717898))))))

(assert (= (and d!2389564 c!1471074) b!8014935))

(assert (= (and d!2389564 (not c!1471074)) b!8014936))

(declare-fun m!8378218 () Bool)

(assert (=> b!8014936 m!8378218))

(assert (=> b!8014576 d!2389564))

(declare-fun d!2389566 () Bool)

(declare-fun c!1471075 () Bool)

(assert (=> d!2389566 (= c!1471075 ((_ is Nil!74792) lt!2717915))))

(declare-fun e!4721391 () (InoxSet C!43712))

(assert (=> d!2389566 (= (content!15918 lt!2717915) e!4721391)))

(declare-fun b!8014937 () Bool)

(assert (=> b!8014937 (= e!4721391 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014938 () Bool)

(assert (=> b!8014938 (= e!4721391 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2717915) true) (content!15918 (t!390659 lt!2717915))))))

(assert (= (and d!2389566 c!1471075) b!8014937))

(assert (= (and d!2389566 (not c!1471075)) b!8014938))

(declare-fun m!8378226 () Bool)

(assert (=> b!8014938 m!8378226))

(declare-fun m!8378228 () Bool)

(assert (=> b!8014938 m!8378228))

(assert (=> d!2389262 d!2389566))

(declare-fun d!2389570 () Bool)

(declare-fun c!1471076 () Bool)

(assert (=> d!2389570 (= c!1471076 ((_ is Nil!74792) (_1!38689 lt!2717903)))))

(declare-fun e!4721395 () (InoxSet C!43712))

(assert (=> d!2389570 (= (content!15918 (_1!38689 lt!2717903)) e!4721395)))

(declare-fun b!8014943 () Bool)

(assert (=> b!8014943 (= e!4721395 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014944 () Bool)

(assert (=> b!8014944 (= e!4721395 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 (_1!38689 lt!2717903)) true) (content!15918 (t!390659 (_1!38689 lt!2717903)))))))

(assert (= (and d!2389570 c!1471076) b!8014943))

(assert (= (and d!2389570 (not c!1471076)) b!8014944))

(declare-fun m!8378230 () Bool)

(assert (=> b!8014944 m!8378230))

(assert (=> b!8014944 m!8377982))

(assert (=> d!2389262 d!2389570))

(declare-fun d!2389572 () Bool)

(declare-fun c!1471077 () Bool)

(assert (=> d!2389572 (= c!1471077 ((_ is Nil!74792) (_2!38689 lt!2717903)))))

(declare-fun e!4721396 () (InoxSet C!43712))

(assert (=> d!2389572 (= (content!15918 (_2!38689 lt!2717903)) e!4721396)))

(declare-fun b!8014945 () Bool)

(assert (=> b!8014945 (= e!4721396 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8014946 () Bool)

(assert (=> b!8014946 (= e!4721396 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 (_2!38689 lt!2717903)) true) (content!15918 (t!390659 (_2!38689 lt!2717903)))))))

(assert (= (and d!2389572 c!1471077) b!8014945))

(assert (= (and d!2389572 (not c!1471077)) b!8014946))

(declare-fun m!8378234 () Bool)

(assert (=> b!8014946 m!8378234))

(declare-fun m!8378238 () Bool)

(assert (=> b!8014946 m!8378238))

(assert (=> d!2389262 d!2389572))

(declare-fun d!2389574 () Bool)

(assert (=> d!2389574 (= (nullable!9729 (regOne!43886 r!15422)) (nullableFct!3845 (regOne!43886 r!15422)))))

(declare-fun bs!1970994 () Bool)

(assert (= bs!1970994 d!2389574))

(declare-fun m!8378242 () Bool)

(assert (=> bs!1970994 m!8378242))

(assert (=> b!8014558 d!2389574))

(assert (=> bm!744434 d!2389264))

(declare-fun b!8014948 () Bool)

(declare-fun res!3169182 () Bool)

(declare-fun e!4721398 () Bool)

(assert (=> b!8014948 (=> (not res!3169182) (not e!4721398))))

(assert (=> b!8014948 (= res!3169182 (= (head!16361 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))) (head!16361 (tail!15884 totalInput!1349))))))

(declare-fun d!2389576 () Bool)

(declare-fun e!4721399 () Bool)

(assert (=> d!2389576 e!4721399))

(declare-fun res!3169184 () Bool)

(assert (=> d!2389576 (=> res!3169184 e!4721399)))

(declare-fun lt!2718224 () Bool)

(assert (=> d!2389576 (= res!3169184 (not lt!2718224))))

(declare-fun e!4721397 () Bool)

(assert (=> d!2389576 (= lt!2718224 e!4721397)))

(declare-fun res!3169181 () Bool)

(assert (=> d!2389576 (=> res!3169181 e!4721397)))

(assert (=> d!2389576 (= res!3169181 ((_ is Nil!74792) (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))))))

(assert (=> d!2389576 (= (isPrefix!6739 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) (tail!15884 totalInput!1349)) lt!2718224)))

(declare-fun b!8014949 () Bool)

(assert (=> b!8014949 (= e!4721398 (isPrefix!6739 (tail!15884 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792)))) (tail!15884 (tail!15884 totalInput!1349))))))

(declare-fun b!8014947 () Bool)

(assert (=> b!8014947 (= e!4721397 e!4721398)))

(declare-fun res!3169183 () Bool)

(assert (=> b!8014947 (=> (not res!3169183) (not e!4721398))))

(assert (=> b!8014947 (= res!3169183 (not ((_ is Nil!74792) (tail!15884 totalInput!1349))))))

(declare-fun b!8014950 () Bool)

(assert (=> b!8014950 (= e!4721399 (>= (size!43589 (tail!15884 totalInput!1349)) (size!43589 (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))))

(assert (= (and d!2389576 (not res!3169181)) b!8014947))

(assert (= (and b!8014947 res!3169183) b!8014948))

(assert (= (and b!8014948 res!3169182) b!8014949))

(assert (= (and d!2389576 (not res!3169184)) b!8014950))

(assert (=> b!8014948 m!8377756))

(declare-fun m!8378248 () Bool)

(assert (=> b!8014948 m!8378248))

(assert (=> b!8014948 m!8377474))

(declare-fun m!8378250 () Bool)

(assert (=> b!8014948 m!8378250))

(assert (=> b!8014949 m!8377756))

(declare-fun m!8378252 () Bool)

(assert (=> b!8014949 m!8378252))

(assert (=> b!8014949 m!8377474))

(declare-fun m!8378254 () Bool)

(assert (=> b!8014949 m!8378254))

(assert (=> b!8014949 m!8378252))

(assert (=> b!8014949 m!8378254))

(declare-fun m!8378256 () Bool)

(assert (=> b!8014949 m!8378256))

(assert (=> b!8014950 m!8377474))

(declare-fun m!8378258 () Bool)

(assert (=> b!8014950 m!8378258))

(assert (=> b!8014950 m!8377756))

(declare-fun m!8378260 () Bool)

(assert (=> b!8014950 m!8378260))

(assert (=> b!8014572 d!2389576))

(declare-fun d!2389586 () Bool)

(assert (=> d!2389586 (= (tail!15884 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))) (t!390659 (++!18513 testedP!353 (Cons!74792 (head!16361 lt!2717896) Nil!74792))))))

(assert (=> b!8014572 d!2389586))

(declare-fun d!2389588 () Bool)

(assert (=> d!2389588 (= (tail!15884 totalInput!1349) (t!390659 totalInput!1349))))

(assert (=> b!8014572 d!2389588))

(declare-fun d!2389590 () Bool)

(declare-fun lt!2718226 () Int)

(assert (=> d!2389590 (>= lt!2718226 0)))

(declare-fun e!4721401 () Int)

(assert (=> d!2389590 (= lt!2718226 e!4721401)))

(declare-fun c!1471079 () Bool)

(assert (=> d!2389590 (= c!1471079 ((_ is Nil!74792) (_1!38689 lt!2718135)))))

(assert (=> d!2389590 (= (size!43589 (_1!38689 lt!2718135)) lt!2718226)))

(declare-fun b!8014953 () Bool)

(assert (=> b!8014953 (= e!4721401 0)))

(declare-fun b!8014954 () Bool)

(assert (=> b!8014954 (= e!4721401 (+ 1 (size!43589 (t!390659 (_1!38689 lt!2718135)))))))

(assert (= (and d!2389590 c!1471079) b!8014953))

(assert (= (and d!2389590 (not c!1471079)) b!8014954))

(declare-fun m!8378262 () Bool)

(assert (=> b!8014954 m!8378262))

(assert (=> b!8014524 d!2389590))

(assert (=> b!8014524 d!2389444))

(declare-fun d!2389592 () Bool)

(declare-fun lt!2718227 () Int)

(assert (=> d!2389592 (>= lt!2718227 0)))

(declare-fun e!4721402 () Int)

(assert (=> d!2389592 (= lt!2718227 e!4721402)))

(declare-fun c!1471080 () Bool)

(assert (=> d!2389592 (= c!1471080 ((_ is Nil!74792) (t!390659 (_1!38689 lt!2717903))))))

(assert (=> d!2389592 (= (size!43589 (t!390659 (_1!38689 lt!2717903))) lt!2718227)))

(declare-fun b!8014955 () Bool)

(assert (=> b!8014955 (= e!4721402 0)))

(declare-fun b!8014956 () Bool)

(assert (=> b!8014956 (= e!4721402 (+ 1 (size!43589 (t!390659 (t!390659 (_1!38689 lt!2717903))))))))

(assert (= (and d!2389592 c!1471080) b!8014955))

(assert (= (and d!2389592 (not c!1471080)) b!8014956))

(declare-fun m!8378264 () Bool)

(assert (=> b!8014956 m!8378264))

(assert (=> b!8014591 d!2389592))

(declare-fun b!8014957 () Bool)

(declare-fun e!4721404 () tuple2!70772)

(declare-fun call!744513 () tuple2!70772)

(assert (=> b!8014957 (= e!4721404 call!744513)))

(declare-fun d!2389594 () Bool)

(declare-fun e!4721410 () Bool)

(assert (=> d!2389594 e!4721410))

(declare-fun res!3169186 () Bool)

(assert (=> d!2389594 (=> (not res!3169186) (not e!4721410))))

(declare-fun lt!2718244 () tuple2!70772)

(assert (=> d!2389594 (= res!3169186 (= (++!18513 (_1!38689 lt!2718244) (_2!38689 lt!2718244)) totalInput!1349))))

(declare-fun e!4721403 () tuple2!70772)

(assert (=> d!2389594 (= lt!2718244 e!4721403)))

(declare-fun c!1471084 () Bool)

(assert (=> d!2389594 (= c!1471084 (lostCause!2074 call!744438))))

(declare-fun lt!2718255 () Unit!170854)

(declare-fun Unit!170864 () Unit!170854)

(assert (=> d!2389594 (= lt!2718255 Unit!170864)))

(assert (=> d!2389594 (= (getSuffix!3934 totalInput!1349 lt!2718145) call!744442)))

(declare-fun lt!2718253 () Unit!170854)

(declare-fun lt!2718250 () Unit!170854)

(assert (=> d!2389594 (= lt!2718253 lt!2718250)))

(declare-fun lt!2718228 () List!74916)

(assert (=> d!2389594 (= call!744442 lt!2718228)))

(assert (=> d!2389594 (= lt!2718250 (lemmaSamePrefixThenSameSuffix!3096 lt!2718145 call!744442 lt!2718145 lt!2718228 totalInput!1349))))

(assert (=> d!2389594 (= lt!2718228 (getSuffix!3934 totalInput!1349 lt!2718145))))

(declare-fun lt!2718231 () Unit!170854)

(declare-fun lt!2718245 () Unit!170854)

(assert (=> d!2389594 (= lt!2718231 lt!2718245)))

(assert (=> d!2389594 (isPrefix!6739 lt!2718145 (++!18513 lt!2718145 call!744442))))

(assert (=> d!2389594 (= lt!2718245 (lemmaConcatTwoListThenFirstIsPrefix!3970 lt!2718145 call!744442))))

(assert (=> d!2389594 (validRegex!11991 call!744438)))

(assert (=> d!2389594 (= (findLongestMatchInner!2336 call!744438 lt!2718145 (+ 1 testedPSize!271 1) call!744442 totalInput!1349 totalInputSize!629) lt!2718244)))

(declare-fun call!744507 () Regex!21687)

(declare-fun call!744511 () List!74916)

(declare-fun bm!744501 () Bool)

(declare-fun lt!2718254 () List!74916)

(assert (=> bm!744501 (= call!744513 (findLongestMatchInner!2336 call!744507 lt!2718254 (+ 1 testedPSize!271 1 1) call!744511 totalInput!1349 totalInputSize!629))))

(declare-fun b!8014958 () Bool)

(declare-fun c!1471082 () Bool)

(declare-fun call!744509 () Bool)

(assert (=> b!8014958 (= c!1471082 call!744509)))

(declare-fun lt!2718242 () Unit!170854)

(declare-fun lt!2718249 () Unit!170854)

(assert (=> b!8014958 (= lt!2718242 lt!2718249)))

(assert (=> b!8014958 (= totalInput!1349 lt!2718145)))

(declare-fun call!744510 () Unit!170854)

(assert (=> b!8014958 (= lt!2718249 call!744510)))

(declare-fun lt!2718243 () Unit!170854)

(declare-fun lt!2718230 () Unit!170854)

(assert (=> b!8014958 (= lt!2718243 lt!2718230)))

(declare-fun call!744506 () Bool)

(assert (=> b!8014958 call!744506))

(declare-fun call!744512 () Unit!170854)

(assert (=> b!8014958 (= lt!2718230 call!744512)))

(declare-fun e!4721407 () tuple2!70772)

(declare-fun e!4721405 () tuple2!70772)

(assert (=> b!8014958 (= e!4721407 e!4721405)))

(declare-fun b!8014959 () Bool)

(declare-fun e!4721409 () Bool)

(assert (=> b!8014959 (= e!4721409 (>= (size!43589 (_1!38689 lt!2718244)) (size!43589 lt!2718145)))))

(declare-fun b!8014960 () Bool)

(declare-fun c!1471086 () Bool)

(assert (=> b!8014960 (= c!1471086 call!744509)))

(declare-fun lt!2718239 () Unit!170854)

(declare-fun lt!2718232 () Unit!170854)

(assert (=> b!8014960 (= lt!2718239 lt!2718232)))

(declare-fun lt!2718248 () List!74916)

(declare-fun lt!2718229 () C!43712)

(assert (=> b!8014960 (= (++!18513 (++!18513 lt!2718145 (Cons!74792 lt!2718229 Nil!74792)) lt!2718248) totalInput!1349)))

(assert (=> b!8014960 (= lt!2718232 (lemmaMoveElementToOtherListKeepsConcatEq!3594 lt!2718145 lt!2718229 lt!2718248 totalInput!1349))))

(assert (=> b!8014960 (= lt!2718248 (tail!15884 call!744442))))

(assert (=> b!8014960 (= lt!2718229 (head!16361 call!744442))))

(declare-fun lt!2718237 () Unit!170854)

(declare-fun lt!2718246 () Unit!170854)

(assert (=> b!8014960 (= lt!2718237 lt!2718246)))

(assert (=> b!8014960 (isPrefix!6739 (++!18513 lt!2718145 (Cons!74792 (head!16361 (getSuffix!3934 totalInput!1349 lt!2718145)) Nil!74792)) totalInput!1349)))

(assert (=> b!8014960 (= lt!2718246 (lemmaAddHeadSuffixToPrefixStillPrefix!1412 lt!2718145 totalInput!1349))))

(declare-fun lt!2718233 () Unit!170854)

(declare-fun lt!2718241 () Unit!170854)

(assert (=> b!8014960 (= lt!2718233 lt!2718241)))

(assert (=> b!8014960 (= lt!2718241 (lemmaAddHeadSuffixToPrefixStillPrefix!1412 lt!2718145 totalInput!1349))))

(assert (=> b!8014960 (= lt!2718254 (++!18513 lt!2718145 (Cons!74792 (head!16361 call!744442) Nil!74792)))))

(declare-fun lt!2718236 () Unit!170854)

(declare-fun e!4721408 () Unit!170854)

(assert (=> b!8014960 (= lt!2718236 e!4721408)))

(declare-fun c!1471081 () Bool)

(assert (=> b!8014960 (= c!1471081 (= (size!43589 lt!2718145) (size!43589 totalInput!1349)))))

(declare-fun lt!2718240 () Unit!170854)

(declare-fun lt!2718235 () Unit!170854)

(assert (=> b!8014960 (= lt!2718240 lt!2718235)))

(assert (=> b!8014960 (<= (size!43589 lt!2718145) (size!43589 totalInput!1349))))

(assert (=> b!8014960 (= lt!2718235 (lemmaIsPrefixThenSmallerEqSize!1222 lt!2718145 totalInput!1349))))

(assert (=> b!8014960 (= e!4721407 e!4721404)))

(declare-fun b!8014961 () Bool)

(assert (=> b!8014961 (= e!4721403 (tuple2!70773 Nil!74792 totalInput!1349))))

(declare-fun b!8014962 () Bool)

(declare-fun Unit!170865 () Unit!170854)

(assert (=> b!8014962 (= e!4721408 Unit!170865)))

(declare-fun lt!2718234 () Unit!170854)

(assert (=> b!8014962 (= lt!2718234 call!744512)))

(assert (=> b!8014962 call!744506))

(declare-fun lt!2718252 () Unit!170854)

(assert (=> b!8014962 (= lt!2718252 lt!2718234)))

(declare-fun lt!2718247 () Unit!170854)

(assert (=> b!8014962 (= lt!2718247 call!744510)))

(assert (=> b!8014962 (= totalInput!1349 lt!2718145)))

(declare-fun lt!2718251 () Unit!170854)

(assert (=> b!8014962 (= lt!2718251 lt!2718247)))

(assert (=> b!8014962 false))

(declare-fun bm!744502 () Bool)

(declare-fun call!744508 () C!43712)

(assert (=> bm!744502 (= call!744508 (head!16361 call!744442))))

(declare-fun b!8014963 () Bool)

(assert (=> b!8014963 (= e!4721410 e!4721409)))

(declare-fun res!3169185 () Bool)

(assert (=> b!8014963 (=> res!3169185 e!4721409)))

(assert (=> b!8014963 (= res!3169185 (isEmpty!42978 (_1!38689 lt!2718244)))))

(declare-fun bm!744503 () Bool)

(assert (=> bm!744503 (= call!744512 (lemmaIsPrefixRefl!4181 totalInput!1349 totalInput!1349))))

(declare-fun b!8014964 () Bool)

(declare-fun Unit!170867 () Unit!170854)

(assert (=> b!8014964 (= e!4721408 Unit!170867)))

(declare-fun b!8014965 () Bool)

(declare-fun e!4721406 () tuple2!70772)

(declare-fun lt!2718238 () tuple2!70772)

(assert (=> b!8014965 (= e!4721406 lt!2718238)))

(declare-fun bm!744504 () Bool)

(assert (=> bm!744504 (= call!744506 (isPrefix!6739 totalInput!1349 totalInput!1349))))

(declare-fun bm!744505 () Bool)

(assert (=> bm!744505 (= call!744507 (derivativeStep!6638 call!744438 call!744508))))

(declare-fun b!8014966 () Bool)

(assert (=> b!8014966 (= e!4721403 e!4721407)))

(declare-fun c!1471085 () Bool)

(assert (=> b!8014966 (= c!1471085 (= (+ 1 testedPSize!271 1) totalInputSize!629))))

(declare-fun bm!744506 () Bool)

(assert (=> bm!744506 (= call!744510 (lemmaIsPrefixSameLengthThenSameList!1751 totalInput!1349 lt!2718145 totalInput!1349))))

(declare-fun b!8014967 () Bool)

(assert (=> b!8014967 (= e!4721406 (tuple2!70773 lt!2718145 call!744442))))

(declare-fun b!8014968 () Bool)

(assert (=> b!8014968 (= e!4721404 e!4721406)))

(assert (=> b!8014968 (= lt!2718238 call!744513)))

(declare-fun c!1471083 () Bool)

(assert (=> b!8014968 (= c!1471083 (isEmpty!42978 (_1!38689 lt!2718238)))))

(declare-fun bm!744507 () Bool)

(assert (=> bm!744507 (= call!744511 (tail!15884 call!744442))))

(declare-fun b!8014969 () Bool)

(assert (=> b!8014969 (= e!4721405 (tuple2!70773 lt!2718145 Nil!74792))))

(declare-fun bm!744508 () Bool)

(assert (=> bm!744508 (= call!744509 (nullable!9729 call!744438))))

(declare-fun b!8014970 () Bool)

(assert (=> b!8014970 (= e!4721405 (tuple2!70773 Nil!74792 totalInput!1349))))

(assert (= (and d!2389594 c!1471084) b!8014961))

(assert (= (and d!2389594 (not c!1471084)) b!8014966))

(assert (= (and b!8014966 c!1471085) b!8014958))

(assert (= (and b!8014966 (not c!1471085)) b!8014960))

(assert (= (and b!8014958 c!1471082) b!8014969))

(assert (= (and b!8014958 (not c!1471082)) b!8014970))

(assert (= (and b!8014960 c!1471081) b!8014962))

(assert (= (and b!8014960 (not c!1471081)) b!8014964))

(assert (= (and b!8014960 c!1471086) b!8014968))

(assert (= (and b!8014960 (not c!1471086)) b!8014957))

(assert (= (and b!8014968 c!1471083) b!8014967))

(assert (= (and b!8014968 (not c!1471083)) b!8014965))

(assert (= (or b!8014968 b!8014957) bm!744502))

(assert (= (or b!8014968 b!8014957) bm!744507))

(assert (= (or b!8014968 b!8014957) bm!744505))

(assert (= (or b!8014968 b!8014957) bm!744501))

(assert (= (or b!8014958 b!8014960) bm!744508))

(assert (= (or b!8014958 b!8014962) bm!744504))

(assert (= (or b!8014958 b!8014962) bm!744506))

(assert (= (or b!8014958 b!8014962) bm!744503))

(assert (= (and d!2389594 res!3169186) b!8014963))

(assert (= (and b!8014963 (not res!3169185)) b!8014959))

(declare-fun m!8378274 () Bool)

(assert (=> bm!744501 m!8378274))

(declare-fun m!8378276 () Bool)

(assert (=> bm!744508 m!8378276))

(declare-fun m!8378278 () Bool)

(assert (=> b!8014960 m!8378278))

(declare-fun m!8378280 () Bool)

(assert (=> b!8014960 m!8378280))

(declare-fun m!8378282 () Bool)

(assert (=> b!8014960 m!8378282))

(assert (=> b!8014960 m!8378282))

(declare-fun m!8378284 () Bool)

(assert (=> b!8014960 m!8378284))

(declare-fun m!8378286 () Bool)

(assert (=> b!8014960 m!8378286))

(assert (=> b!8014960 m!8377390))

(declare-fun m!8378290 () Bool)

(assert (=> b!8014960 m!8378290))

(declare-fun m!8378294 () Bool)

(assert (=> b!8014960 m!8378294))

(declare-fun m!8378298 () Bool)

(assert (=> b!8014960 m!8378298))

(declare-fun m!8378302 () Bool)

(assert (=> b!8014960 m!8378302))

(assert (=> b!8014960 m!8378278))

(declare-fun m!8378306 () Bool)

(assert (=> b!8014960 m!8378306))

(declare-fun m!8378308 () Bool)

(assert (=> b!8014960 m!8378308))

(declare-fun m!8378310 () Bool)

(assert (=> b!8014960 m!8378310))

(declare-fun m!8378312 () Bool)

(assert (=> b!8014960 m!8378312))

(assert (=> b!8014960 m!8378308))

(assert (=> bm!744503 m!8377384))

(declare-fun m!8378314 () Bool)

(assert (=> b!8014968 m!8378314))

(declare-fun m!8378316 () Bool)

(assert (=> d!2389594 m!8378316))

(declare-fun m!8378322 () Bool)

(assert (=> d!2389594 m!8378322))

(declare-fun m!8378324 () Bool)

(assert (=> d!2389594 m!8378324))

(declare-fun m!8378326 () Bool)

(assert (=> d!2389594 m!8378326))

(assert (=> d!2389594 m!8378322))

(assert (=> d!2389594 m!8378308))

(declare-fun m!8378328 () Bool)

(assert (=> d!2389594 m!8378328))

(declare-fun m!8378330 () Bool)

(assert (=> d!2389594 m!8378330))

(declare-fun m!8378332 () Bool)

(assert (=> d!2389594 m!8378332))

(declare-fun m!8378334 () Bool)

(assert (=> b!8014959 m!8378334))

(assert (=> b!8014959 m!8378290))

(assert (=> bm!744502 m!8378302))

(declare-fun m!8378338 () Bool)

(assert (=> bm!744505 m!8378338))

(declare-fun m!8378340 () Bool)

(assert (=> b!8014963 m!8378340))

(assert (=> bm!744504 m!8377386))

(assert (=> bm!744507 m!8378280))

(declare-fun m!8378342 () Bool)

(assert (=> bm!744506 m!8378342))

(assert (=> bm!744432 d!2389594))

(declare-fun b!8014986 () Bool)

(declare-fun e!4721420 () List!74916)

(assert (=> b!8014986 (= e!4721420 (Cons!74792 (h!81240 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792))) (++!18513 (t!390659 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792))) lt!2717898)))))

(declare-fun b!8014988 () Bool)

(declare-fun e!4721419 () Bool)

(declare-fun lt!2718258 () List!74916)

(assert (=> b!8014988 (= e!4721419 (or (not (= lt!2717898 Nil!74792)) (= lt!2718258 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)))))))

(declare-fun b!8014985 () Bool)

(assert (=> b!8014985 (= e!4721420 lt!2717898)))

(declare-fun d!2389608 () Bool)

(assert (=> d!2389608 e!4721419))

(declare-fun res!3169194 () Bool)

(assert (=> d!2389608 (=> (not res!3169194) (not e!4721419))))

(assert (=> d!2389608 (= res!3169194 (= (content!15918 lt!2718258) ((_ map or) (content!15918 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792))) (content!15918 lt!2717898))))))

(assert (=> d!2389608 (= lt!2718258 e!4721420)))

(declare-fun c!1471091 () Bool)

(assert (=> d!2389608 (= c!1471091 ((_ is Nil!74792) (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792))))))

(assert (=> d!2389608 (= (++!18513 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)) lt!2717898) lt!2718258)))

(declare-fun b!8014987 () Bool)

(declare-fun res!3169193 () Bool)

(assert (=> b!8014987 (=> (not res!3169193) (not e!4721419))))

(assert (=> b!8014987 (= res!3169193 (= (size!43589 lt!2718258) (+ (size!43589 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792))) (size!43589 lt!2717898))))))

(assert (= (and d!2389608 c!1471091) b!8014985))

(assert (= (and d!2389608 (not c!1471091)) b!8014986))

(assert (= (and d!2389608 res!3169194) b!8014987))

(assert (= (and b!8014987 res!3169193) b!8014988))

(declare-fun m!8378348 () Bool)

(assert (=> b!8014986 m!8378348))

(declare-fun m!8378350 () Bool)

(assert (=> d!2389608 m!8378350))

(assert (=> d!2389608 m!8377396))

(declare-fun m!8378352 () Bool)

(assert (=> d!2389608 m!8378352))

(assert (=> d!2389608 m!8377774))

(declare-fun m!8378356 () Bool)

(assert (=> b!8014987 m!8378356))

(assert (=> b!8014987 m!8377396))

(declare-fun m!8378358 () Bool)

(assert (=> b!8014987 m!8378358))

(assert (=> b!8014987 m!8377778))

(assert (=> d!2389356 d!2389608))

(assert (=> d!2389356 d!2389346))

(declare-fun d!2389612 () Bool)

(assert (=> d!2389612 (= (++!18513 (++!18513 testedP!353 (Cons!74792 lt!2717904 Nil!74792)) lt!2717898) totalInput!1349)))

(assert (=> d!2389612 true))

(declare-fun _$68!1554 () Unit!170854)

(assert (=> d!2389612 (= (choose!60400 testedP!353 lt!2717904 lt!2717898 totalInput!1349) _$68!1554)))

(declare-fun bs!1970997 () Bool)

(assert (= bs!1970997 d!2389612))

(assert (=> bs!1970997 m!8377396))

(assert (=> bs!1970997 m!8377396))

(assert (=> bs!1970997 m!8377762))

(assert (=> d!2389356 d!2389612))

(declare-fun b!8015006 () Bool)

(declare-fun e!4721431 () List!74916)

(assert (=> b!8015006 (= e!4721431 (Cons!74792 (h!81240 testedP!353) (++!18513 (t!390659 testedP!353) (Cons!74792 lt!2717904 lt!2717898))))))

(declare-fun b!8015008 () Bool)

(declare-fun lt!2718264 () List!74916)

(declare-fun e!4721430 () Bool)

(assert (=> b!8015008 (= e!4721430 (or (not (= (Cons!74792 lt!2717904 lt!2717898) Nil!74792)) (= lt!2718264 testedP!353)))))

(declare-fun b!8015005 () Bool)

(assert (=> b!8015005 (= e!4721431 (Cons!74792 lt!2717904 lt!2717898))))

(declare-fun d!2389624 () Bool)

(assert (=> d!2389624 e!4721430))

(declare-fun res!3169206 () Bool)

(assert (=> d!2389624 (=> (not res!3169206) (not e!4721430))))

(assert (=> d!2389624 (= res!3169206 (= (content!15918 lt!2718264) ((_ map or) (content!15918 testedP!353) (content!15918 (Cons!74792 lt!2717904 lt!2717898)))))))

(assert (=> d!2389624 (= lt!2718264 e!4721431)))

(declare-fun c!1471095 () Bool)

(assert (=> d!2389624 (= c!1471095 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389624 (= (++!18513 testedP!353 (Cons!74792 lt!2717904 lt!2717898)) lt!2718264)))

(declare-fun b!8015007 () Bool)

(declare-fun res!3169205 () Bool)

(assert (=> b!8015007 (=> (not res!3169205) (not e!4721430))))

(assert (=> b!8015007 (= res!3169205 (= (size!43589 lt!2718264) (+ (size!43589 testedP!353) (size!43589 (Cons!74792 lt!2717904 lt!2717898)))))))

(assert (= (and d!2389624 c!1471095) b!8015005))

(assert (= (and d!2389624 (not c!1471095)) b!8015006))

(assert (= (and d!2389624 res!3169206) b!8015007))

(assert (= (and b!8015007 res!3169205) b!8015008))

(declare-fun m!8378402 () Bool)

(assert (=> b!8015006 m!8378402))

(declare-fun m!8378404 () Bool)

(assert (=> d!2389624 m!8378404))

(assert (=> d!2389624 m!8377434))

(declare-fun m!8378406 () Bool)

(assert (=> d!2389624 m!8378406))

(declare-fun m!8378408 () Bool)

(assert (=> b!8015007 m!8378408))

(assert (=> b!8015007 m!8377394))

(declare-fun m!8378410 () Bool)

(assert (=> b!8015007 m!8378410))

(assert (=> d!2389356 d!2389624))

(declare-fun d!2389628 () Bool)

(declare-fun res!3169209 () Bool)

(declare-fun e!4721438 () Bool)

(assert (=> d!2389628 (=> res!3169209 e!4721438)))

(assert (=> d!2389628 (= res!3169209 ((_ is ElementMatch!21687) (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))

(assert (=> d!2389628 (= (validRegex!11991 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))) e!4721438)))

(declare-fun b!8015011 () Bool)

(declare-fun res!3169207 () Bool)

(declare-fun e!4721433 () Bool)

(assert (=> b!8015011 (=> (not res!3169207) (not e!4721433))))

(declare-fun call!744515 () Bool)

(assert (=> b!8015011 (= res!3169207 call!744515)))

(declare-fun e!4721437 () Bool)

(assert (=> b!8015011 (= e!4721437 e!4721433)))

(declare-fun b!8015012 () Bool)

(declare-fun e!4721436 () Bool)

(declare-fun e!4721439 () Bool)

(assert (=> b!8015012 (= e!4721436 e!4721439)))

(declare-fun res!3169211 () Bool)

(assert (=> b!8015012 (=> (not res!3169211) (not e!4721439))))

(assert (=> b!8015012 (= res!3169211 call!744515)))

(declare-fun b!8015013 () Bool)

(declare-fun call!744516 () Bool)

(assert (=> b!8015013 (= e!4721439 call!744516)))

(declare-fun c!1471097 () Bool)

(declare-fun c!1471098 () Bool)

(declare-fun call!744514 () Bool)

(declare-fun bm!744509 () Bool)

(assert (=> bm!744509 (= call!744514 (validRegex!11991 (ite c!1471097 (reg!22016 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))) (ite c!1471098 (regTwo!43887 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))) (regTwo!43886 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422))))))))))

(declare-fun b!8015014 () Bool)

(assert (=> b!8015014 (= e!4721433 call!744516)))

(declare-fun b!8015015 () Bool)

(declare-fun e!4721434 () Bool)

(declare-fun e!4721435 () Bool)

(assert (=> b!8015015 (= e!4721434 e!4721435)))

(declare-fun res!3169208 () Bool)

(assert (=> b!8015015 (= res!3169208 (not (nullable!9729 (reg!22016 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))))

(assert (=> b!8015015 (=> (not res!3169208) (not e!4721435))))

(declare-fun b!8015016 () Bool)

(assert (=> b!8015016 (= e!4721434 e!4721437)))

(assert (=> b!8015016 (= c!1471098 ((_ is Union!21687) (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))

(declare-fun b!8015017 () Bool)

(assert (=> b!8015017 (= e!4721435 call!744514)))

(declare-fun b!8015018 () Bool)

(assert (=> b!8015018 (= e!4721438 e!4721434)))

(assert (=> b!8015018 (= c!1471097 ((_ is Star!21687) (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))

(declare-fun b!8015019 () Bool)

(declare-fun res!3169210 () Bool)

(assert (=> b!8015019 (=> res!3169210 e!4721436)))

(assert (=> b!8015019 (= res!3169210 (not ((_ is Concat!30686) (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422))))))))

(assert (=> b!8015019 (= e!4721437 e!4721436)))

(declare-fun bm!744510 () Bool)

(assert (=> bm!744510 (= call!744515 (validRegex!11991 (ite c!1471098 (regOne!43887 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))) (regOne!43886 (ite c!1470902 (reg!22016 r!15422) (ite c!1470903 (regTwo!43887 r!15422) (regTwo!43886 r!15422)))))))))

(declare-fun bm!744511 () Bool)

(assert (=> bm!744511 (= call!744516 call!744514)))

(assert (= (and d!2389628 (not res!3169209)) b!8015018))

(assert (= (and b!8015018 c!1471097) b!8015015))

(assert (= (and b!8015018 (not c!1471097)) b!8015016))

(assert (= (and b!8015015 res!3169208) b!8015017))

(assert (= (and b!8015016 c!1471098) b!8015011))

(assert (= (and b!8015016 (not c!1471098)) b!8015019))

(assert (= (and b!8015011 res!3169207) b!8015014))

(assert (= (and b!8015019 (not res!3169210)) b!8015012))

(assert (= (and b!8015012 res!3169211) b!8015013))

(assert (= (or b!8015014 b!8015013) bm!744511))

(assert (= (or b!8015011 b!8015012) bm!744510))

(assert (= (or b!8015017 bm!744511) bm!744509))

(declare-fun m!8378426 () Bool)

(assert (=> bm!744509 m!8378426))

(declare-fun m!8378428 () Bool)

(assert (=> b!8015015 m!8378428))

(declare-fun m!8378430 () Bool)

(assert (=> bm!744510 m!8378430))

(assert (=> bm!744368 d!2389628))

(declare-fun d!2389636 () Bool)

(declare-fun lt!2718269 () List!74916)

(assert (=> d!2389636 (= (++!18513 (t!390659 testedP!353) lt!2718269) (tail!15884 totalInput!1349))))

(declare-fun e!4721442 () List!74916)

(assert (=> d!2389636 (= lt!2718269 e!4721442)))

(declare-fun c!1471100 () Bool)

(assert (=> d!2389636 (= c!1471100 ((_ is Cons!74792) (t!390659 testedP!353)))))

(assert (=> d!2389636 (>= (size!43589 (tail!15884 totalInput!1349)) (size!43589 (t!390659 testedP!353)))))

(assert (=> d!2389636 (= (getSuffix!3934 (tail!15884 totalInput!1349) (t!390659 testedP!353)) lt!2718269)))

(declare-fun b!8015024 () Bool)

(assert (=> b!8015024 (= e!4721442 (getSuffix!3934 (tail!15884 (tail!15884 totalInput!1349)) (t!390659 (t!390659 testedP!353))))))

(declare-fun b!8015025 () Bool)

(assert (=> b!8015025 (= e!4721442 (tail!15884 totalInput!1349))))

(assert (= (and d!2389636 c!1471100) b!8015024))

(assert (= (and d!2389636 (not c!1471100)) b!8015025))

(declare-fun m!8378434 () Bool)

(assert (=> d!2389636 m!8378434))

(assert (=> d!2389636 m!8377474))

(assert (=> d!2389636 m!8378258))

(assert (=> d!2389636 m!8377442))

(assert (=> b!8015024 m!8377474))

(assert (=> b!8015024 m!8378254))

(assert (=> b!8015024 m!8378254))

(declare-fun m!8378436 () Bool)

(assert (=> b!8015024 m!8378436))

(assert (=> b!8014340 d!2389636))

(assert (=> b!8014340 d!2389588))

(declare-fun b!8015027 () Bool)

(declare-fun res!3169215 () Bool)

(declare-fun e!4721444 () Bool)

(assert (=> b!8015027 (=> (not res!3169215) (not e!4721444))))

(assert (=> b!8015027 (= res!3169215 (= (head!16361 testedP!353) (head!16361 (++!18513 testedP!353 testedSuffix!271))))))

(declare-fun d!2389642 () Bool)

(declare-fun e!4721445 () Bool)

(assert (=> d!2389642 e!4721445))

(declare-fun res!3169217 () Bool)

(assert (=> d!2389642 (=> res!3169217 e!4721445)))

(declare-fun lt!2718270 () Bool)

(assert (=> d!2389642 (= res!3169217 (not lt!2718270))))

(declare-fun e!4721443 () Bool)

(assert (=> d!2389642 (= lt!2718270 e!4721443)))

(declare-fun res!3169214 () Bool)

(assert (=> d!2389642 (=> res!3169214 e!4721443)))

(assert (=> d!2389642 (= res!3169214 ((_ is Nil!74792) testedP!353))))

(assert (=> d!2389642 (= (isPrefix!6739 testedP!353 (++!18513 testedP!353 testedSuffix!271)) lt!2718270)))

(declare-fun b!8015028 () Bool)

(assert (=> b!8015028 (= e!4721444 (isPrefix!6739 (tail!15884 testedP!353) (tail!15884 (++!18513 testedP!353 testedSuffix!271))))))

(declare-fun b!8015026 () Bool)

(assert (=> b!8015026 (= e!4721443 e!4721444)))

(declare-fun res!3169216 () Bool)

(assert (=> b!8015026 (=> (not res!3169216) (not e!4721444))))

(assert (=> b!8015026 (= res!3169216 (not ((_ is Nil!74792) (++!18513 testedP!353 testedSuffix!271))))))

(declare-fun b!8015029 () Bool)

(assert (=> b!8015029 (= e!4721445 (>= (size!43589 (++!18513 testedP!353 testedSuffix!271)) (size!43589 testedP!353)))))

(assert (= (and d!2389642 (not res!3169214)) b!8015026))

(assert (= (and b!8015026 res!3169216) b!8015027))

(assert (= (and b!8015027 res!3169215) b!8015028))

(assert (= (and d!2389642 (not res!3169217)) b!8015029))

(assert (=> b!8015027 m!8377790))

(assert (=> b!8015027 m!8377426))

(declare-fun m!8378438 () Bool)

(assert (=> b!8015027 m!8378438))

(assert (=> b!8015028 m!8377792))

(assert (=> b!8015028 m!8377426))

(declare-fun m!8378440 () Bool)

(assert (=> b!8015028 m!8378440))

(assert (=> b!8015028 m!8377792))

(assert (=> b!8015028 m!8378440))

(declare-fun m!8378442 () Bool)

(assert (=> b!8015028 m!8378442))

(assert (=> b!8015029 m!8377426))

(declare-fun m!8378444 () Bool)

(assert (=> b!8015029 m!8378444))

(assert (=> b!8015029 m!8377394))

(assert (=> d!2389368 d!2389642))

(assert (=> d!2389368 d!2389256))

(declare-fun d!2389644 () Bool)

(assert (=> d!2389644 (isPrefix!6739 testedP!353 (++!18513 testedP!353 testedSuffix!271))))

(assert (=> d!2389644 true))

(declare-fun _$46!2166 () Unit!170854)

(assert (=> d!2389644 (= (choose!60401 testedP!353 testedSuffix!271) _$46!2166)))

(declare-fun bs!1971001 () Bool)

(assert (= bs!1971001 d!2389644))

(assert (=> bs!1971001 m!8377426))

(assert (=> bs!1971001 m!8377426))

(assert (=> bs!1971001 m!8377804))

(assert (=> d!2389368 d!2389644))

(assert (=> bm!744438 d!2389426))

(declare-fun b!8015035 () Bool)

(declare-fun res!3169223 () Bool)

(declare-fun e!4721450 () Bool)

(assert (=> b!8015035 (=> (not res!3169223) (not e!4721450))))

(assert (=> b!8015035 (= res!3169223 (= (head!16361 (tail!15884 testedP!353)) (head!16361 (tail!15884 totalInput!1349))))))

(declare-fun d!2389650 () Bool)

(declare-fun e!4721451 () Bool)

(assert (=> d!2389650 e!4721451))

(declare-fun res!3169225 () Bool)

(assert (=> d!2389650 (=> res!3169225 e!4721451)))

(declare-fun lt!2718272 () Bool)

(assert (=> d!2389650 (= res!3169225 (not lt!2718272))))

(declare-fun e!4721449 () Bool)

(assert (=> d!2389650 (= lt!2718272 e!4721449)))

(declare-fun res!3169222 () Bool)

(assert (=> d!2389650 (=> res!3169222 e!4721449)))

(assert (=> d!2389650 (= res!3169222 ((_ is Nil!74792) (tail!15884 testedP!353)))))

(assert (=> d!2389650 (= (isPrefix!6739 (tail!15884 testedP!353) (tail!15884 totalInput!1349)) lt!2718272)))

(declare-fun b!8015036 () Bool)

(assert (=> b!8015036 (= e!4721450 (isPrefix!6739 (tail!15884 (tail!15884 testedP!353)) (tail!15884 (tail!15884 totalInput!1349))))))

(declare-fun b!8015034 () Bool)

(assert (=> b!8015034 (= e!4721449 e!4721450)))

(declare-fun res!3169224 () Bool)

(assert (=> b!8015034 (=> (not res!3169224) (not e!4721450))))

(assert (=> b!8015034 (= res!3169224 (not ((_ is Nil!74792) (tail!15884 totalInput!1349))))))

(declare-fun b!8015037 () Bool)

(assert (=> b!8015037 (= e!4721451 (>= (size!43589 (tail!15884 totalInput!1349)) (size!43589 (tail!15884 testedP!353))))))

(assert (= (and d!2389650 (not res!3169222)) b!8015034))

(assert (= (and b!8015034 res!3169224) b!8015035))

(assert (= (and b!8015035 res!3169223) b!8015036))

(assert (= (and d!2389650 (not res!3169225)) b!8015037))

(assert (=> b!8015035 m!8377792))

(assert (=> b!8015035 m!8378104))

(assert (=> b!8015035 m!8377474))

(assert (=> b!8015035 m!8378250))

(assert (=> b!8015036 m!8377792))

(assert (=> b!8015036 m!8378108))

(assert (=> b!8015036 m!8377474))

(assert (=> b!8015036 m!8378254))

(assert (=> b!8015036 m!8378108))

(assert (=> b!8015036 m!8378254))

(declare-fun m!8378454 () Bool)

(assert (=> b!8015036 m!8378454))

(assert (=> b!8015037 m!8377474))

(assert (=> b!8015037 m!8378258))

(assert (=> b!8015037 m!8377792))

(assert (=> b!8015037 m!8378116))

(assert (=> b!8014584 d!2389650))

(assert (=> b!8014584 d!2389502))

(assert (=> b!8014584 d!2389588))

(declare-fun d!2389652 () Bool)

(assert (=> d!2389652 (= testedSuffix!271 lt!2717896)))

(assert (=> d!2389652 true))

(declare-fun _$63!1473 () Unit!170854)

(assert (=> d!2389652 (= (choose!60394 testedP!353 testedSuffix!271 testedP!353 lt!2717896 totalInput!1349) _$63!1473)))

(assert (=> d!2389308 d!2389652))

(assert (=> d!2389308 d!2389364))

(assert (=> b!8014270 d!2389406))

(declare-fun d!2389656 () Bool)

(declare-fun lt!2718273 () Int)

(assert (=> d!2389656 (>= lt!2718273 0)))

(declare-fun e!4721452 () Int)

(assert (=> d!2389656 (= lt!2718273 e!4721452)))

(declare-fun c!1471101 () Bool)

(assert (=> d!2389656 (= c!1471101 ((_ is Nil!74792) lt!2717905))))

(assert (=> d!2389656 (= (size!43589 lt!2717905) lt!2718273)))

(declare-fun b!8015038 () Bool)

(assert (=> b!8015038 (= e!4721452 0)))

(declare-fun b!8015039 () Bool)

(assert (=> b!8015039 (= e!4721452 (+ 1 (size!43589 (t!390659 lt!2717905))))))

(assert (= (and d!2389656 c!1471101) b!8015038))

(assert (= (and d!2389656 (not c!1471101)) b!8015039))

(declare-fun m!8378456 () Bool)

(assert (=> b!8015039 m!8378456))

(assert (=> b!8014589 d!2389656))

(assert (=> b!8014589 d!2389258))

(declare-fun d!2389658 () Bool)

(declare-fun c!1471102 () Bool)

(assert (=> d!2389658 (= c!1471102 ((_ is Nil!74792) lt!2717910))))

(declare-fun e!4721453 () (InoxSet C!43712))

(assert (=> d!2389658 (= (content!15918 lt!2717910) e!4721453)))

(declare-fun b!8015040 () Bool)

(assert (=> b!8015040 (= e!4721453 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8015041 () Bool)

(assert (=> b!8015041 (= e!4721453 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 lt!2717910) true) (content!15918 (t!390659 lt!2717910))))))

(assert (= (and d!2389658 c!1471102) b!8015040))

(assert (= (and d!2389658 (not c!1471102)) b!8015041))

(declare-fun m!8378458 () Bool)

(assert (=> b!8015041 m!8378458))

(declare-fun m!8378460 () Bool)

(assert (=> b!8015041 m!8378460))

(assert (=> d!2389256 d!2389658))

(assert (=> d!2389256 d!2389420))

(declare-fun d!2389662 () Bool)

(declare-fun c!1471103 () Bool)

(assert (=> d!2389662 (= c!1471103 ((_ is Nil!74792) testedSuffix!271))))

(declare-fun e!4721457 () (InoxSet C!43712))

(assert (=> d!2389662 (= (content!15918 testedSuffix!271) e!4721457)))

(declare-fun b!8015046 () Bool)

(assert (=> b!8015046 (= e!4721457 ((as const (Array C!43712 Bool)) false))))

(declare-fun b!8015047 () Bool)

(assert (=> b!8015047 (= e!4721457 ((_ map or) (store ((as const (Array C!43712 Bool)) false) (h!81240 testedSuffix!271) true) (content!15918 (t!390659 testedSuffix!271))))))

(assert (= (and d!2389662 c!1471103) b!8015046))

(assert (= (and d!2389662 (not c!1471103)) b!8015047))

(declare-fun m!8378462 () Bool)

(assert (=> b!8015047 m!8378462))

(declare-fun m!8378464 () Bool)

(assert (=> b!8015047 m!8378464))

(assert (=> d!2389256 d!2389662))

(assert (=> b!8014272 d!2389260))

(declare-fun d!2389664 () Bool)

(declare-fun lt!2718275 () Int)

(assert (=> d!2389664 (>= lt!2718275 0)))

(declare-fun e!4721458 () Int)

(assert (=> d!2389664 (= lt!2718275 e!4721458)))

(declare-fun c!1471104 () Bool)

(assert (=> d!2389664 (= c!1471104 ((_ is Nil!74792) lt!2717915))))

(assert (=> d!2389664 (= (size!43589 lt!2717915) lt!2718275)))

(declare-fun b!8015048 () Bool)

(assert (=> b!8015048 (= e!4721458 0)))

(declare-fun b!8015049 () Bool)

(assert (=> b!8015049 (= e!4721458 (+ 1 (size!43589 (t!390659 lt!2717915))))))

(assert (= (and d!2389664 c!1471104) b!8015048))

(assert (= (and d!2389664 (not c!1471104)) b!8015049))

(declare-fun m!8378472 () Bool)

(assert (=> b!8015049 m!8378472))

(assert (=> b!8014243 d!2389664))

(assert (=> b!8014243 d!2389370))

(declare-fun d!2389666 () Bool)

(declare-fun lt!2718276 () Int)

(assert (=> d!2389666 (>= lt!2718276 0)))

(declare-fun e!4721459 () Int)

(assert (=> d!2389666 (= lt!2718276 e!4721459)))

(declare-fun c!1471105 () Bool)

(assert (=> d!2389666 (= c!1471105 ((_ is Nil!74792) (_2!38689 lt!2717903)))))

(assert (=> d!2389666 (= (size!43589 (_2!38689 lt!2717903)) lt!2718276)))

(declare-fun b!8015050 () Bool)

(assert (=> b!8015050 (= e!4721459 0)))

(declare-fun b!8015051 () Bool)

(assert (=> b!8015051 (= e!4721459 (+ 1 (size!43589 (t!390659 (_2!38689 lt!2717903)))))))

(assert (= (and d!2389666 c!1471105) b!8015050))

(assert (= (and d!2389666 (not c!1471105)) b!8015051))

(declare-fun m!8378476 () Bool)

(assert (=> b!8015051 m!8378476))

(assert (=> b!8014243 d!2389666))

(declare-fun b!8015057 () Bool)

(declare-fun res!3169235 () Bool)

(declare-fun e!4721464 () Bool)

(assert (=> b!8015057 (=> (not res!3169235) (not e!4721464))))

(assert (=> b!8015057 (= res!3169235 (= (head!16361 (tail!15884 totalInput!1349)) (head!16361 (tail!15884 totalInput!1349))))))

(declare-fun d!2389672 () Bool)

(declare-fun e!4721465 () Bool)

(assert (=> d!2389672 e!4721465))

(declare-fun res!3169237 () Bool)

(assert (=> d!2389672 (=> res!3169237 e!4721465)))

(declare-fun lt!2718278 () Bool)

(assert (=> d!2389672 (= res!3169237 (not lt!2718278))))

(declare-fun e!4721463 () Bool)

(assert (=> d!2389672 (= lt!2718278 e!4721463)))

(declare-fun res!3169234 () Bool)

(assert (=> d!2389672 (=> res!3169234 e!4721463)))

(assert (=> d!2389672 (= res!3169234 ((_ is Nil!74792) (tail!15884 totalInput!1349)))))

(assert (=> d!2389672 (= (isPrefix!6739 (tail!15884 totalInput!1349) (tail!15884 totalInput!1349)) lt!2718278)))

(declare-fun b!8015058 () Bool)

(assert (=> b!8015058 (= e!4721464 (isPrefix!6739 (tail!15884 (tail!15884 totalInput!1349)) (tail!15884 (tail!15884 totalInput!1349))))))

(declare-fun b!8015056 () Bool)

(assert (=> b!8015056 (= e!4721463 e!4721464)))

(declare-fun res!3169236 () Bool)

(assert (=> b!8015056 (=> (not res!3169236) (not e!4721464))))

(assert (=> b!8015056 (= res!3169236 (not ((_ is Nil!74792) (tail!15884 totalInput!1349))))))

(declare-fun b!8015059 () Bool)

(assert (=> b!8015059 (= e!4721465 (>= (size!43589 (tail!15884 totalInput!1349)) (size!43589 (tail!15884 totalInput!1349))))))

(assert (= (and d!2389672 (not res!3169234)) b!8015056))

(assert (= (and b!8015056 res!3169236) b!8015057))

(assert (= (and b!8015057 res!3169235) b!8015058))

(assert (= (and d!2389672 (not res!3169237)) b!8015059))

(assert (=> b!8015057 m!8377474))

(assert (=> b!8015057 m!8378250))

(assert (=> b!8015057 m!8377474))

(assert (=> b!8015057 m!8378250))

(assert (=> b!8015058 m!8377474))

(assert (=> b!8015058 m!8378254))

(assert (=> b!8015058 m!8377474))

(assert (=> b!8015058 m!8378254))

(assert (=> b!8015058 m!8378254))

(assert (=> b!8015058 m!8378254))

(declare-fun m!8378484 () Bool)

(assert (=> b!8015058 m!8378484))

(assert (=> b!8015059 m!8377474))

(assert (=> b!8015059 m!8378258))

(assert (=> b!8015059 m!8377474))

(assert (=> b!8015059 m!8378258))

(assert (=> b!8014271 d!2389672))

(assert (=> b!8014271 d!2389588))

(declare-fun d!2389676 () Bool)

(assert (=> d!2389676 (= (nullable!9729 (derivativeStep!6638 r!15422 lt!2717904)) (nullableFct!3845 (derivativeStep!6638 r!15422 lt!2717904)))))

(declare-fun bs!1971003 () Bool)

(assert (= bs!1971003 d!2389676))

(assert (=> bs!1971003 m!8377380))

(declare-fun m!8378488 () Bool)

(assert (=> bs!1971003 m!8378488))

(assert (=> bm!744439 d!2389676))

(declare-fun b!8015069 () Bool)

(declare-fun e!4721473 () Bool)

(declare-fun tp!2398859 () Bool)

(assert (=> b!8015069 (= e!4721473 (and tp_is_empty!53917 tp!2398859))))

(assert (=> b!8014597 (= tp!2398822 e!4721473)))

(assert (= (and b!8014597 ((_ is Cons!74792) (t!390659 (t!390659 testedSuffix!271)))) b!8015069))

(declare-fun b!8015070 () Bool)

(declare-fun e!4721474 () Bool)

(assert (=> b!8015070 (= e!4721474 tp_is_empty!53917)))

(declare-fun b!8015071 () Bool)

(declare-fun tp!2398864 () Bool)

(declare-fun tp!2398863 () Bool)

(assert (=> b!8015071 (= e!4721474 (and tp!2398864 tp!2398863))))

(declare-fun b!8015073 () Bool)

(declare-fun tp!2398861 () Bool)

(declare-fun tp!2398860 () Bool)

(assert (=> b!8015073 (= e!4721474 (and tp!2398861 tp!2398860))))

(declare-fun b!8015072 () Bool)

(declare-fun tp!2398862 () Bool)

(assert (=> b!8015072 (= e!4721474 tp!2398862)))

(assert (=> b!8014622 (= tp!2398853 e!4721474)))

(assert (= (and b!8014622 ((_ is ElementMatch!21687) (regOne!43886 (regTwo!43887 r!15422)))) b!8015070))

(assert (= (and b!8014622 ((_ is Concat!30686) (regOne!43886 (regTwo!43887 r!15422)))) b!8015071))

(assert (= (and b!8014622 ((_ is Star!21687) (regOne!43886 (regTwo!43887 r!15422)))) b!8015072))

(assert (= (and b!8014622 ((_ is Union!21687) (regOne!43886 (regTwo!43887 r!15422)))) b!8015073))

(declare-fun b!8015074 () Bool)

(declare-fun e!4721475 () Bool)

(assert (=> b!8015074 (= e!4721475 tp_is_empty!53917)))

(declare-fun b!8015075 () Bool)

(declare-fun tp!2398869 () Bool)

(declare-fun tp!2398868 () Bool)

(assert (=> b!8015075 (= e!4721475 (and tp!2398869 tp!2398868))))

(declare-fun b!8015077 () Bool)

(declare-fun tp!2398866 () Bool)

(declare-fun tp!2398865 () Bool)

(assert (=> b!8015077 (= e!4721475 (and tp!2398866 tp!2398865))))

(declare-fun b!8015076 () Bool)

(declare-fun tp!2398867 () Bool)

(assert (=> b!8015076 (= e!4721475 tp!2398867)))

(assert (=> b!8014622 (= tp!2398852 e!4721475)))

(assert (= (and b!8014622 ((_ is ElementMatch!21687) (regTwo!43886 (regTwo!43887 r!15422)))) b!8015074))

(assert (= (and b!8014622 ((_ is Concat!30686) (regTwo!43886 (regTwo!43887 r!15422)))) b!8015075))

(assert (= (and b!8014622 ((_ is Star!21687) (regTwo!43886 (regTwo!43887 r!15422)))) b!8015076))

(assert (= (and b!8014622 ((_ is Union!21687) (regTwo!43886 (regTwo!43887 r!15422)))) b!8015077))

(declare-fun b!8015088 () Bool)

(declare-fun e!4721481 () Bool)

(declare-fun tp!2398870 () Bool)

(assert (=> b!8015088 (= e!4721481 (and tp_is_empty!53917 tp!2398870))))

(assert (=> b!8014598 (= tp!2398823 e!4721481)))

(assert (= (and b!8014598 ((_ is Cons!74792) (t!390659 (t!390659 totalInput!1349)))) b!8015088))

(declare-fun b!8015089 () Bool)

(declare-fun e!4721482 () Bool)

(assert (=> b!8015089 (= e!4721482 tp_is_empty!53917)))

(declare-fun b!8015090 () Bool)

(declare-fun tp!2398875 () Bool)

(declare-fun tp!2398874 () Bool)

(assert (=> b!8015090 (= e!4721482 (and tp!2398875 tp!2398874))))

(declare-fun b!8015092 () Bool)

(declare-fun tp!2398872 () Bool)

(declare-fun tp!2398871 () Bool)

(assert (=> b!8015092 (= e!4721482 (and tp!2398872 tp!2398871))))

(declare-fun b!8015091 () Bool)

(declare-fun tp!2398873 () Bool)

(assert (=> b!8015091 (= e!4721482 tp!2398873)))

(assert (=> b!8014627 (= tp!2398856 e!4721482)))

(assert (= (and b!8014627 ((_ is ElementMatch!21687) (reg!22016 (reg!22016 r!15422)))) b!8015089))

(assert (= (and b!8014627 ((_ is Concat!30686) (reg!22016 (reg!22016 r!15422)))) b!8015090))

(assert (= (and b!8014627 ((_ is Star!21687) (reg!22016 (reg!22016 r!15422)))) b!8015091))

(assert (= (and b!8014627 ((_ is Union!21687) (reg!22016 (reg!22016 r!15422)))) b!8015092))

(declare-fun b!8015093 () Bool)

(declare-fun e!4721483 () Bool)

(assert (=> b!8015093 (= e!4721483 tp_is_empty!53917)))

(declare-fun b!8015094 () Bool)

(declare-fun tp!2398880 () Bool)

(declare-fun tp!2398879 () Bool)

(assert (=> b!8015094 (= e!4721483 (and tp!2398880 tp!2398879))))

(declare-fun b!8015096 () Bool)

(declare-fun tp!2398877 () Bool)

(declare-fun tp!2398876 () Bool)

(assert (=> b!8015096 (= e!4721483 (and tp!2398877 tp!2398876))))

(declare-fun b!8015095 () Bool)

(declare-fun tp!2398878 () Bool)

(assert (=> b!8015095 (= e!4721483 tp!2398878)))

(assert (=> b!8014618 (= tp!2398848 e!4721483)))

(assert (= (and b!8014618 ((_ is ElementMatch!21687) (regOne!43886 (regOne!43887 r!15422)))) b!8015093))

(assert (= (and b!8014618 ((_ is Concat!30686) (regOne!43886 (regOne!43887 r!15422)))) b!8015094))

(assert (= (and b!8014618 ((_ is Star!21687) (regOne!43886 (regOne!43887 r!15422)))) b!8015095))

(assert (= (and b!8014618 ((_ is Union!21687) (regOne!43886 (regOne!43887 r!15422)))) b!8015096))

(declare-fun b!8015097 () Bool)

(declare-fun e!4721484 () Bool)

(assert (=> b!8015097 (= e!4721484 tp_is_empty!53917)))

(declare-fun b!8015098 () Bool)

(declare-fun tp!2398885 () Bool)

(declare-fun tp!2398884 () Bool)

(assert (=> b!8015098 (= e!4721484 (and tp!2398885 tp!2398884))))

(declare-fun b!8015100 () Bool)

(declare-fun tp!2398882 () Bool)

(declare-fun tp!2398881 () Bool)

(assert (=> b!8015100 (= e!4721484 (and tp!2398882 tp!2398881))))

(declare-fun b!8015099 () Bool)

(declare-fun tp!2398883 () Bool)

(assert (=> b!8015099 (= e!4721484 tp!2398883)))

(assert (=> b!8014618 (= tp!2398847 e!4721484)))

(assert (= (and b!8014618 ((_ is ElementMatch!21687) (regTwo!43886 (regOne!43887 r!15422)))) b!8015097))

(assert (= (and b!8014618 ((_ is Concat!30686) (regTwo!43886 (regOne!43887 r!15422)))) b!8015098))

(assert (= (and b!8014618 ((_ is Star!21687) (regTwo!43886 (regOne!43887 r!15422)))) b!8015099))

(assert (= (and b!8014618 ((_ is Union!21687) (regTwo!43886 (regOne!43887 r!15422)))) b!8015100))

(declare-fun b!8015101 () Bool)

(declare-fun e!4721485 () Bool)

(assert (=> b!8015101 (= e!4721485 tp_is_empty!53917)))

(declare-fun b!8015102 () Bool)

(declare-fun tp!2398890 () Bool)

(declare-fun tp!2398889 () Bool)

(assert (=> b!8015102 (= e!4721485 (and tp!2398890 tp!2398889))))

(declare-fun b!8015104 () Bool)

(declare-fun tp!2398887 () Bool)

(declare-fun tp!2398886 () Bool)

(assert (=> b!8015104 (= e!4721485 (and tp!2398887 tp!2398886))))

(declare-fun b!8015103 () Bool)

(declare-fun tp!2398888 () Bool)

(assert (=> b!8015103 (= e!4721485 tp!2398888)))

(assert (=> b!8014623 (= tp!2398851 e!4721485)))

(assert (= (and b!8014623 ((_ is ElementMatch!21687) (reg!22016 (regTwo!43887 r!15422)))) b!8015101))

(assert (= (and b!8014623 ((_ is Concat!30686) (reg!22016 (regTwo!43887 r!15422)))) b!8015102))

(assert (= (and b!8014623 ((_ is Star!21687) (reg!22016 (regTwo!43887 r!15422)))) b!8015103))

(assert (= (and b!8014623 ((_ is Union!21687) (reg!22016 (regTwo!43887 r!15422)))) b!8015104))

(declare-fun b!8015105 () Bool)

(declare-fun e!4721486 () Bool)

(assert (=> b!8015105 (= e!4721486 tp_is_empty!53917)))

(declare-fun b!8015106 () Bool)

(declare-fun tp!2398895 () Bool)

(declare-fun tp!2398894 () Bool)

(assert (=> b!8015106 (= e!4721486 (and tp!2398895 tp!2398894))))

(declare-fun b!8015108 () Bool)

(declare-fun tp!2398892 () Bool)

(declare-fun tp!2398891 () Bool)

(assert (=> b!8015108 (= e!4721486 (and tp!2398892 tp!2398891))))

(declare-fun b!8015107 () Bool)

(declare-fun tp!2398893 () Bool)

(assert (=> b!8015107 (= e!4721486 tp!2398893)))

(assert (=> b!8014626 (= tp!2398858 e!4721486)))

(assert (= (and b!8014626 ((_ is ElementMatch!21687) (regOne!43886 (reg!22016 r!15422)))) b!8015105))

(assert (= (and b!8014626 ((_ is Concat!30686) (regOne!43886 (reg!22016 r!15422)))) b!8015106))

(assert (= (and b!8014626 ((_ is Star!21687) (regOne!43886 (reg!22016 r!15422)))) b!8015107))

(assert (= (and b!8014626 ((_ is Union!21687) (regOne!43886 (reg!22016 r!15422)))) b!8015108))

(declare-fun b!8015113 () Bool)

(declare-fun e!4721489 () Bool)

(assert (=> b!8015113 (= e!4721489 tp_is_empty!53917)))

(declare-fun b!8015114 () Bool)

(declare-fun tp!2398900 () Bool)

(declare-fun tp!2398899 () Bool)

(assert (=> b!8015114 (= e!4721489 (and tp!2398900 tp!2398899))))

(declare-fun b!8015116 () Bool)

(declare-fun tp!2398897 () Bool)

(declare-fun tp!2398896 () Bool)

(assert (=> b!8015116 (= e!4721489 (and tp!2398897 tp!2398896))))

(declare-fun b!8015115 () Bool)

(declare-fun tp!2398898 () Bool)

(assert (=> b!8015115 (= e!4721489 tp!2398898)))

(assert (=> b!8014626 (= tp!2398857 e!4721489)))

(assert (= (and b!8014626 ((_ is ElementMatch!21687) (regTwo!43886 (reg!22016 r!15422)))) b!8015113))

(assert (= (and b!8014626 ((_ is Concat!30686) (regTwo!43886 (reg!22016 r!15422)))) b!8015114))

(assert (= (and b!8014626 ((_ is Star!21687) (regTwo!43886 (reg!22016 r!15422)))) b!8015115))

(assert (= (and b!8014626 ((_ is Union!21687) (regTwo!43886 (reg!22016 r!15422)))) b!8015116))

(declare-fun b!8015117 () Bool)

(declare-fun e!4721490 () Bool)

(assert (=> b!8015117 (= e!4721490 tp_is_empty!53917)))

(declare-fun b!8015118 () Bool)

(declare-fun tp!2398905 () Bool)

(declare-fun tp!2398904 () Bool)

(assert (=> b!8015118 (= e!4721490 (and tp!2398905 tp!2398904))))

(declare-fun b!8015120 () Bool)

(declare-fun tp!2398902 () Bool)

(declare-fun tp!2398901 () Bool)

(assert (=> b!8015120 (= e!4721490 (and tp!2398902 tp!2398901))))

(declare-fun b!8015119 () Bool)

(declare-fun tp!2398903 () Bool)

(assert (=> b!8015119 (= e!4721490 tp!2398903)))

(assert (=> b!8014620 (= tp!2398845 e!4721490)))

(assert (= (and b!8014620 ((_ is ElementMatch!21687) (regOne!43887 (regOne!43887 r!15422)))) b!8015117))

(assert (= (and b!8014620 ((_ is Concat!30686) (regOne!43887 (regOne!43887 r!15422)))) b!8015118))

(assert (= (and b!8014620 ((_ is Star!21687) (regOne!43887 (regOne!43887 r!15422)))) b!8015119))

(assert (= (and b!8014620 ((_ is Union!21687) (regOne!43887 (regOne!43887 r!15422)))) b!8015120))

(declare-fun b!8015123 () Bool)

(declare-fun e!4721492 () Bool)

(assert (=> b!8015123 (= e!4721492 tp_is_empty!53917)))

(declare-fun b!8015124 () Bool)

(declare-fun tp!2398910 () Bool)

(declare-fun tp!2398909 () Bool)

(assert (=> b!8015124 (= e!4721492 (and tp!2398910 tp!2398909))))

(declare-fun b!8015126 () Bool)

(declare-fun tp!2398907 () Bool)

(declare-fun tp!2398906 () Bool)

(assert (=> b!8015126 (= e!4721492 (and tp!2398907 tp!2398906))))

(declare-fun b!8015125 () Bool)

(declare-fun tp!2398908 () Bool)

(assert (=> b!8015125 (= e!4721492 tp!2398908)))

(assert (=> b!8014620 (= tp!2398844 e!4721492)))

(assert (= (and b!8014620 ((_ is ElementMatch!21687) (regTwo!43887 (regOne!43887 r!15422)))) b!8015123))

(assert (= (and b!8014620 ((_ is Concat!30686) (regTwo!43887 (regOne!43887 r!15422)))) b!8015124))

(assert (= (and b!8014620 ((_ is Star!21687) (regTwo!43887 (regOne!43887 r!15422)))) b!8015125))

(assert (= (and b!8014620 ((_ is Union!21687) (regTwo!43887 (regOne!43887 r!15422)))) b!8015126))

(declare-fun b!8015129 () Bool)

(declare-fun e!4721494 () Bool)

(assert (=> b!8015129 (= e!4721494 tp_is_empty!53917)))

(declare-fun b!8015130 () Bool)

(declare-fun tp!2398915 () Bool)

(declare-fun tp!2398914 () Bool)

(assert (=> b!8015130 (= e!4721494 (and tp!2398915 tp!2398914))))

(declare-fun b!8015132 () Bool)

(declare-fun tp!2398912 () Bool)

(declare-fun tp!2398911 () Bool)

(assert (=> b!8015132 (= e!4721494 (and tp!2398912 tp!2398911))))

(declare-fun b!8015131 () Bool)

(declare-fun tp!2398913 () Bool)

(assert (=> b!8015131 (= e!4721494 tp!2398913)))

(assert (=> b!8014611 (= tp!2398836 e!4721494)))

(assert (= (and b!8014611 ((_ is ElementMatch!21687) (reg!22016 (regOne!43886 r!15422)))) b!8015129))

(assert (= (and b!8014611 ((_ is Concat!30686) (reg!22016 (regOne!43886 r!15422)))) b!8015130))

(assert (= (and b!8014611 ((_ is Star!21687) (reg!22016 (regOne!43886 r!15422)))) b!8015131))

(assert (= (and b!8014611 ((_ is Union!21687) (reg!22016 (regOne!43886 r!15422)))) b!8015132))

(declare-fun b!8015133 () Bool)

(declare-fun e!4721496 () Bool)

(assert (=> b!8015133 (= e!4721496 tp_is_empty!53917)))

(declare-fun b!8015134 () Bool)

(declare-fun tp!2398920 () Bool)

(declare-fun tp!2398919 () Bool)

(assert (=> b!8015134 (= e!4721496 (and tp!2398920 tp!2398919))))

(declare-fun b!8015136 () Bool)

(declare-fun tp!2398917 () Bool)

(declare-fun tp!2398916 () Bool)

(assert (=> b!8015136 (= e!4721496 (and tp!2398917 tp!2398916))))

(declare-fun b!8015135 () Bool)

(declare-fun tp!2398918 () Bool)

(assert (=> b!8015135 (= e!4721496 tp!2398918)))

(assert (=> b!8014616 (= tp!2398840 e!4721496)))

(assert (= (and b!8014616 ((_ is ElementMatch!21687) (regOne!43887 (regTwo!43886 r!15422)))) b!8015133))

(assert (= (and b!8014616 ((_ is Concat!30686) (regOne!43887 (regTwo!43886 r!15422)))) b!8015134))

(assert (= (and b!8014616 ((_ is Star!21687) (regOne!43887 (regTwo!43886 r!15422)))) b!8015135))

(assert (= (and b!8014616 ((_ is Union!21687) (regOne!43887 (regTwo!43886 r!15422)))) b!8015136))

(declare-fun b!8015146 () Bool)

(declare-fun e!4721504 () Bool)

(assert (=> b!8015146 (= e!4721504 tp_is_empty!53917)))

(declare-fun b!8015147 () Bool)

(declare-fun tp!2398925 () Bool)

(declare-fun tp!2398924 () Bool)

(assert (=> b!8015147 (= e!4721504 (and tp!2398925 tp!2398924))))

(declare-fun b!8015151 () Bool)

(declare-fun tp!2398922 () Bool)

(declare-fun tp!2398921 () Bool)

(assert (=> b!8015151 (= e!4721504 (and tp!2398922 tp!2398921))))

(declare-fun b!8015149 () Bool)

(declare-fun tp!2398923 () Bool)

(assert (=> b!8015149 (= e!4721504 tp!2398923)))

(assert (=> b!8014616 (= tp!2398839 e!4721504)))

(assert (= (and b!8014616 ((_ is ElementMatch!21687) (regTwo!43887 (regTwo!43886 r!15422)))) b!8015146))

(assert (= (and b!8014616 ((_ is Concat!30686) (regTwo!43887 (regTwo!43886 r!15422)))) b!8015147))

(assert (= (and b!8014616 ((_ is Star!21687) (regTwo!43887 (regTwo!43886 r!15422)))) b!8015149))

(assert (= (and b!8014616 ((_ is Union!21687) (regTwo!43887 (regTwo!43886 r!15422)))) b!8015151))

(declare-fun b!8015155 () Bool)

(declare-fun e!4721505 () Bool)

(assert (=> b!8015155 (= e!4721505 tp_is_empty!53917)))

(declare-fun b!8015156 () Bool)

(declare-fun tp!2398930 () Bool)

(declare-fun tp!2398929 () Bool)

(assert (=> b!8015156 (= e!4721505 (and tp!2398930 tp!2398929))))

(declare-fun b!8015158 () Bool)

(declare-fun tp!2398927 () Bool)

(declare-fun tp!2398926 () Bool)

(assert (=> b!8015158 (= e!4721505 (and tp!2398927 tp!2398926))))

(declare-fun b!8015157 () Bool)

(declare-fun tp!2398928 () Bool)

(assert (=> b!8015157 (= e!4721505 tp!2398928)))

(assert (=> b!8014628 (= tp!2398855 e!4721505)))

(assert (= (and b!8014628 ((_ is ElementMatch!21687) (regOne!43887 (reg!22016 r!15422)))) b!8015155))

(assert (= (and b!8014628 ((_ is Concat!30686) (regOne!43887 (reg!22016 r!15422)))) b!8015156))

(assert (= (and b!8014628 ((_ is Star!21687) (regOne!43887 (reg!22016 r!15422)))) b!8015157))

(assert (= (and b!8014628 ((_ is Union!21687) (regOne!43887 (reg!22016 r!15422)))) b!8015158))

(declare-fun b!8015159 () Bool)

(declare-fun e!4721506 () Bool)

(assert (=> b!8015159 (= e!4721506 tp_is_empty!53917)))

(declare-fun b!8015160 () Bool)

(declare-fun tp!2398935 () Bool)

(declare-fun tp!2398934 () Bool)

(assert (=> b!8015160 (= e!4721506 (and tp!2398935 tp!2398934))))

(declare-fun b!8015162 () Bool)

(declare-fun tp!2398932 () Bool)

(declare-fun tp!2398931 () Bool)

(assert (=> b!8015162 (= e!4721506 (and tp!2398932 tp!2398931))))

(declare-fun b!8015161 () Bool)

(declare-fun tp!2398933 () Bool)

(assert (=> b!8015161 (= e!4721506 tp!2398933)))

(assert (=> b!8014628 (= tp!2398854 e!4721506)))

(assert (= (and b!8014628 ((_ is ElementMatch!21687) (regTwo!43887 (reg!22016 r!15422)))) b!8015159))

(assert (= (and b!8014628 ((_ is Concat!30686) (regTwo!43887 (reg!22016 r!15422)))) b!8015160))

(assert (= (and b!8014628 ((_ is Star!21687) (regTwo!43887 (reg!22016 r!15422)))) b!8015161))

(assert (= (and b!8014628 ((_ is Union!21687) (regTwo!43887 (reg!22016 r!15422)))) b!8015162))

(declare-fun b!8015163 () Bool)

(declare-fun e!4721507 () Bool)

(assert (=> b!8015163 (= e!4721507 tp_is_empty!53917)))

(declare-fun b!8015164 () Bool)

(declare-fun tp!2398940 () Bool)

(declare-fun tp!2398939 () Bool)

(assert (=> b!8015164 (= e!4721507 (and tp!2398940 tp!2398939))))

(declare-fun b!8015166 () Bool)

(declare-fun tp!2398937 () Bool)

(declare-fun tp!2398936 () Bool)

(assert (=> b!8015166 (= e!4721507 (and tp!2398937 tp!2398936))))

(declare-fun b!8015165 () Bool)

(declare-fun tp!2398938 () Bool)

(assert (=> b!8015165 (= e!4721507 tp!2398938)))

(assert (=> b!8014614 (= tp!2398843 e!4721507)))

(assert (= (and b!8014614 ((_ is ElementMatch!21687) (regOne!43886 (regTwo!43886 r!15422)))) b!8015163))

(assert (= (and b!8014614 ((_ is Concat!30686) (regOne!43886 (regTwo!43886 r!15422)))) b!8015164))

(assert (= (and b!8014614 ((_ is Star!21687) (regOne!43886 (regTwo!43886 r!15422)))) b!8015165))

(assert (= (and b!8014614 ((_ is Union!21687) (regOne!43886 (regTwo!43886 r!15422)))) b!8015166))

(declare-fun b!8015167 () Bool)

(declare-fun e!4721508 () Bool)

(assert (=> b!8015167 (= e!4721508 tp_is_empty!53917)))

(declare-fun b!8015168 () Bool)

(declare-fun tp!2398945 () Bool)

(declare-fun tp!2398944 () Bool)

(assert (=> b!8015168 (= e!4721508 (and tp!2398945 tp!2398944))))

(declare-fun b!8015170 () Bool)

(declare-fun tp!2398942 () Bool)

(declare-fun tp!2398941 () Bool)

(assert (=> b!8015170 (= e!4721508 (and tp!2398942 tp!2398941))))

(declare-fun b!8015169 () Bool)

(declare-fun tp!2398943 () Bool)

(assert (=> b!8015169 (= e!4721508 tp!2398943)))

(assert (=> b!8014614 (= tp!2398842 e!4721508)))

(assert (= (and b!8014614 ((_ is ElementMatch!21687) (regTwo!43886 (regTwo!43886 r!15422)))) b!8015167))

(assert (= (and b!8014614 ((_ is Concat!30686) (regTwo!43886 (regTwo!43886 r!15422)))) b!8015168))

(assert (= (and b!8014614 ((_ is Star!21687) (regTwo!43886 (regTwo!43886 r!15422)))) b!8015169))

(assert (= (and b!8014614 ((_ is Union!21687) (regTwo!43886 (regTwo!43886 r!15422)))) b!8015170))

(declare-fun b!8015171 () Bool)

(declare-fun e!4721509 () Bool)

(assert (=> b!8015171 (= e!4721509 tp_is_empty!53917)))

(declare-fun b!8015172 () Bool)

(declare-fun tp!2398950 () Bool)

(declare-fun tp!2398949 () Bool)

(assert (=> b!8015172 (= e!4721509 (and tp!2398950 tp!2398949))))

(declare-fun b!8015174 () Bool)

(declare-fun tp!2398947 () Bool)

(declare-fun tp!2398946 () Bool)

(assert (=> b!8015174 (= e!4721509 (and tp!2398947 tp!2398946))))

(declare-fun b!8015173 () Bool)

(declare-fun tp!2398948 () Bool)

(assert (=> b!8015173 (= e!4721509 tp!2398948)))

(assert (=> b!8014619 (= tp!2398846 e!4721509)))

(assert (= (and b!8014619 ((_ is ElementMatch!21687) (reg!22016 (regOne!43887 r!15422)))) b!8015171))

(assert (= (and b!8014619 ((_ is Concat!30686) (reg!22016 (regOne!43887 r!15422)))) b!8015172))

(assert (= (and b!8014619 ((_ is Star!21687) (reg!22016 (regOne!43887 r!15422)))) b!8015173))

(assert (= (and b!8014619 ((_ is Union!21687) (reg!22016 (regOne!43887 r!15422)))) b!8015174))

(declare-fun b!8015175 () Bool)

(declare-fun e!4721510 () Bool)

(assert (=> b!8015175 (= e!4721510 tp_is_empty!53917)))

(declare-fun b!8015176 () Bool)

(declare-fun tp!2398955 () Bool)

(declare-fun tp!2398954 () Bool)

(assert (=> b!8015176 (= e!4721510 (and tp!2398955 tp!2398954))))

(declare-fun b!8015178 () Bool)

(declare-fun tp!2398952 () Bool)

(declare-fun tp!2398951 () Bool)

(assert (=> b!8015178 (= e!4721510 (and tp!2398952 tp!2398951))))

(declare-fun b!8015177 () Bool)

(declare-fun tp!2398953 () Bool)

(assert (=> b!8015177 (= e!4721510 tp!2398953)))

(assert (=> b!8014624 (= tp!2398850 e!4721510)))

(assert (= (and b!8014624 ((_ is ElementMatch!21687) (regOne!43887 (regTwo!43887 r!15422)))) b!8015175))

(assert (= (and b!8014624 ((_ is Concat!30686) (regOne!43887 (regTwo!43887 r!15422)))) b!8015176))

(assert (= (and b!8014624 ((_ is Star!21687) (regOne!43887 (regTwo!43887 r!15422)))) b!8015177))

(assert (= (and b!8014624 ((_ is Union!21687) (regOne!43887 (regTwo!43887 r!15422)))) b!8015178))

(declare-fun b!8015179 () Bool)

(declare-fun e!4721511 () Bool)

(assert (=> b!8015179 (= e!4721511 tp_is_empty!53917)))

(declare-fun b!8015180 () Bool)

(declare-fun tp!2398960 () Bool)

(declare-fun tp!2398959 () Bool)

(assert (=> b!8015180 (= e!4721511 (and tp!2398960 tp!2398959))))

(declare-fun b!8015182 () Bool)

(declare-fun tp!2398957 () Bool)

(declare-fun tp!2398956 () Bool)

(assert (=> b!8015182 (= e!4721511 (and tp!2398957 tp!2398956))))

(declare-fun b!8015181 () Bool)

(declare-fun tp!2398958 () Bool)

(assert (=> b!8015181 (= e!4721511 tp!2398958)))

(assert (=> b!8014624 (= tp!2398849 e!4721511)))

(assert (= (and b!8014624 ((_ is ElementMatch!21687) (regTwo!43887 (regTwo!43887 r!15422)))) b!8015179))

(assert (= (and b!8014624 ((_ is Concat!30686) (regTwo!43887 (regTwo!43887 r!15422)))) b!8015180))

(assert (= (and b!8014624 ((_ is Star!21687) (regTwo!43887 (regTwo!43887 r!15422)))) b!8015181))

(assert (= (and b!8014624 ((_ is Union!21687) (regTwo!43887 (regTwo!43887 r!15422)))) b!8015182))

(declare-fun b!8015183 () Bool)

(declare-fun e!4721512 () Bool)

(assert (=> b!8015183 (= e!4721512 tp_is_empty!53917)))

(declare-fun b!8015184 () Bool)

(declare-fun tp!2398965 () Bool)

(declare-fun tp!2398964 () Bool)

(assert (=> b!8015184 (= e!4721512 (and tp!2398965 tp!2398964))))

(declare-fun b!8015186 () Bool)

(declare-fun tp!2398962 () Bool)

(declare-fun tp!2398961 () Bool)

(assert (=> b!8015186 (= e!4721512 (and tp!2398962 tp!2398961))))

(declare-fun b!8015185 () Bool)

(declare-fun tp!2398963 () Bool)

(assert (=> b!8015185 (= e!4721512 tp!2398963)))

(assert (=> b!8014610 (= tp!2398838 e!4721512)))

(assert (= (and b!8014610 ((_ is ElementMatch!21687) (regOne!43886 (regOne!43886 r!15422)))) b!8015183))

(assert (= (and b!8014610 ((_ is Concat!30686) (regOne!43886 (regOne!43886 r!15422)))) b!8015184))

(assert (= (and b!8014610 ((_ is Star!21687) (regOne!43886 (regOne!43886 r!15422)))) b!8015185))

(assert (= (and b!8014610 ((_ is Union!21687) (regOne!43886 (regOne!43886 r!15422)))) b!8015186))

(declare-fun b!8015187 () Bool)

(declare-fun e!4721513 () Bool)

(assert (=> b!8015187 (= e!4721513 tp_is_empty!53917)))

(declare-fun b!8015188 () Bool)

(declare-fun tp!2398970 () Bool)

(declare-fun tp!2398969 () Bool)

(assert (=> b!8015188 (= e!4721513 (and tp!2398970 tp!2398969))))

(declare-fun b!8015190 () Bool)

(declare-fun tp!2398967 () Bool)

(declare-fun tp!2398966 () Bool)

(assert (=> b!8015190 (= e!4721513 (and tp!2398967 tp!2398966))))

(declare-fun b!8015189 () Bool)

(declare-fun tp!2398968 () Bool)

(assert (=> b!8015189 (= e!4721513 tp!2398968)))

(assert (=> b!8014610 (= tp!2398837 e!4721513)))

(assert (= (and b!8014610 ((_ is ElementMatch!21687) (regTwo!43886 (regOne!43886 r!15422)))) b!8015187))

(assert (= (and b!8014610 ((_ is Concat!30686) (regTwo!43886 (regOne!43886 r!15422)))) b!8015188))

(assert (= (and b!8014610 ((_ is Star!21687) (regTwo!43886 (regOne!43886 r!15422)))) b!8015189))

(assert (= (and b!8014610 ((_ is Union!21687) (regTwo!43886 (regOne!43886 r!15422)))) b!8015190))

(declare-fun b!8015191 () Bool)

(declare-fun e!4721514 () Bool)

(assert (=> b!8015191 (= e!4721514 tp_is_empty!53917)))

(declare-fun b!8015192 () Bool)

(declare-fun tp!2398975 () Bool)

(declare-fun tp!2398974 () Bool)

(assert (=> b!8015192 (= e!4721514 (and tp!2398975 tp!2398974))))

(declare-fun b!8015194 () Bool)

(declare-fun tp!2398972 () Bool)

(declare-fun tp!2398971 () Bool)

(assert (=> b!8015194 (= e!4721514 (and tp!2398972 tp!2398971))))

(declare-fun b!8015193 () Bool)

(declare-fun tp!2398973 () Bool)

(assert (=> b!8015193 (= e!4721514 tp!2398973)))

(assert (=> b!8014615 (= tp!2398841 e!4721514)))

(assert (= (and b!8014615 ((_ is ElementMatch!21687) (reg!22016 (regTwo!43886 r!15422)))) b!8015191))

(assert (= (and b!8014615 ((_ is Concat!30686) (reg!22016 (regTwo!43886 r!15422)))) b!8015192))

(assert (= (and b!8014615 ((_ is Star!21687) (reg!22016 (regTwo!43886 r!15422)))) b!8015193))

(assert (= (and b!8014615 ((_ is Union!21687) (reg!22016 (regTwo!43886 r!15422)))) b!8015194))

(declare-fun b!8015195 () Bool)

(declare-fun e!4721515 () Bool)

(assert (=> b!8015195 (= e!4721515 tp_is_empty!53917)))

(declare-fun b!8015196 () Bool)

(declare-fun tp!2398980 () Bool)

(declare-fun tp!2398979 () Bool)

(assert (=> b!8015196 (= e!4721515 (and tp!2398980 tp!2398979))))

(declare-fun b!8015198 () Bool)

(declare-fun tp!2398977 () Bool)

(declare-fun tp!2398976 () Bool)

(assert (=> b!8015198 (= e!4721515 (and tp!2398977 tp!2398976))))

(declare-fun b!8015197 () Bool)

(declare-fun tp!2398978 () Bool)

(assert (=> b!8015197 (= e!4721515 tp!2398978)))

(assert (=> b!8014612 (= tp!2398835 e!4721515)))

(assert (= (and b!8014612 ((_ is ElementMatch!21687) (regOne!43887 (regOne!43886 r!15422)))) b!8015195))

(assert (= (and b!8014612 ((_ is Concat!30686) (regOne!43887 (regOne!43886 r!15422)))) b!8015196))

(assert (= (and b!8014612 ((_ is Star!21687) (regOne!43887 (regOne!43886 r!15422)))) b!8015197))

(assert (= (and b!8014612 ((_ is Union!21687) (regOne!43887 (regOne!43886 r!15422)))) b!8015198))

(declare-fun b!8015199 () Bool)

(declare-fun e!4721516 () Bool)

(assert (=> b!8015199 (= e!4721516 tp_is_empty!53917)))

(declare-fun b!8015200 () Bool)

(declare-fun tp!2398985 () Bool)

(declare-fun tp!2398984 () Bool)

(assert (=> b!8015200 (= e!4721516 (and tp!2398985 tp!2398984))))

(declare-fun b!8015202 () Bool)

(declare-fun tp!2398982 () Bool)

(declare-fun tp!2398981 () Bool)

(assert (=> b!8015202 (= e!4721516 (and tp!2398982 tp!2398981))))

(declare-fun b!8015201 () Bool)

(declare-fun tp!2398983 () Bool)

(assert (=> b!8015201 (= e!4721516 tp!2398983)))

(assert (=> b!8014612 (= tp!2398834 e!4721516)))

(assert (= (and b!8014612 ((_ is ElementMatch!21687) (regTwo!43887 (regOne!43886 r!15422)))) b!8015199))

(assert (= (and b!8014612 ((_ is Concat!30686) (regTwo!43887 (regOne!43886 r!15422)))) b!8015200))

(assert (= (and b!8014612 ((_ is Star!21687) (regTwo!43887 (regOne!43886 r!15422)))) b!8015201))

(assert (= (and b!8014612 ((_ is Union!21687) (regTwo!43887 (regOne!43886 r!15422)))) b!8015202))

(declare-fun b!8015203 () Bool)

(declare-fun e!4721517 () Bool)

(declare-fun tp!2398986 () Bool)

(assert (=> b!8015203 (= e!4721517 (and tp_is_empty!53917 tp!2398986))))

(assert (=> b!8014596 (= tp!2398821 e!4721517)))

(assert (= (and b!8014596 ((_ is Cons!74792) (t!390659 (t!390659 testedP!353)))) b!8015203))

(check-sat (not b!8014694) (not b!8015076) (not b!8015069) (not b!8015193) (not b!8015092) (not bm!744453) (not b!8015029) (not b!8015103) (not b!8014956) (not b!8014869) (not b!8015162) (not b!8015158) (not b!8014910) (not b!8015091) (not b!8014960) (not b!8015120) (not d!2389372) (not bm!744505) (not b!8015131) (not b!8014670) (not b!8015174) (not b!8015202) (not b!8015196) (not b!8015102) (not b!8015190) (not b!8015041) (not b!8015189) (not b!8014728) (not b!8014723) (not bm!744497) (not b!8014700) (not bm!744493) (not b!8015180) (not b!8014726) tp_is_empty!53917 (not b!8014664) (not b!8015168) (not b!8015075) (not d!2389546) (not b!8015165) (not b!8015184) (not d!2389390) (not b!8015049) (not d!2389434) (not d!2389676) (not b!8014676) (not b!8014655) (not b!8015036) (not b!8015024) (not b!8014680) (not d!2389380) (not b!8014659) (not bm!744510) (not b!8015198) (not b!8014954) (not d!2389574) (not bm!744477) (not b!8015118) (not b!8015176) (not d!2389612) (not b!8014640) (not b!8014901) (not b!8014696) (not d!2389644) (not d!2389474) (not b!8015114) (not b!8014722) (not b!8014708) (not b!8014963) (not b!8014861) (not b!8014900) (not b!8015192) (not bm!744486) (not b!8014732) (not b!8015119) (not bm!744492) (not b!8015177) (not b!8015126) (not b!8015151) (not b!8014948) (not b!8014716) (not b!8015099) (not b!8015160) (not d!2389438) (not bm!744508) (not bm!744501) (not b!8014944) (not b!8015115) (not b!8015200) (not b!8015098) (not b!8014882) (not bm!744471) (not b!8015188) (not b!8014863) (not b!8014915) (not b!8014663) (not b!8014959) (not b!8015051) (not b!8015015) (not b!8015136) (not b!8015169) (not b!8015185) (not b!8014704) (not bm!744499) (not b!8015073) (not bm!744455) (not b!8015149) (not d!2389448) (not d!2389510) (not bm!744503) (not b!8014867) (not d!2389608) (not b!8014946) (not bm!744470) (not bm!744459) (not b!8015059) (not b!8015006) (not d!2389398) (not b!8015197) (not b!8015095) (not b!8015071) (not b!8015077) (not b!8014865) (not b!8015182) (not b!8015108) (not b!8015130) (not d!2389624) (not b!8014682) (not b!8015058) (not b!8015181) (not d!2389430) (not b!8014661) (not b!8015028) (not b!8014705) (not b!8015057) (not b!8014709) (not b!8015035) (not bm!744502) (not bm!744457) (not b!8014713) (not b!8014717) (not d!2389512) (not bm!744507) (not b!8015201) (not b!8015094) (not b!8014862) (not b!8015147) (not b!8015116) (not b!8014656) (not b!8015088) (not b!8014687) (not b!8015104) (not b!8015072) (not b!8014893) (not b!8015124) (not b!8015132) (not b!8015107) (not b!8015194) (not b!8014683) (not d!2389376) (not b!8015039) (not b!8014912) (not b!8014968) (not b!8014660) (not b!8015157) (not b!8015096) (not b!8014891) (not b!8015178) (not d!2389636) (not b!8014633) (not d!2389428) (not b!8015007) (not bm!744509) (not d!2389414) (not d!2389542) (not b!8014870) (not b!8014890) (not bm!744475) (not b!8015134) (not b!8015135) (not d!2389446) (not bm!744504) (not d!2389392) (not b!8014644) (not d!2389554) (not b!8014950) (not b!8015106) (not b!8015027) (not bm!744506) (not b!8014718) (not b!8015156) (not b!8015170) (not b!8015100) (not b!8015173) (not b!8014639) (not b!8015164) (not b!8014677) (not d!2389378) (not b!8014904) (not d!2389394) (not d!2389436) (not b!8014730) (not d!2389416) (not b!8014930) (not b!8014855) (not b!8014701) (not bm!744487) (not b!8015047) (not b!8014949) (not d!2389524) (not d!2389410) (not b!8015161) (not b!8015186) (not b!8014712) (not b!8014936) (not b!8014987) (not b!8014653) (not b!8015090) (not bm!744452) (not d!2389432) (not b!8015172) (not b!8014698) (not b!8014785) (not b!8014880) (not d!2389402) (not b!8015166) (not b!8014986) (not b!8015037) (not b!8014720) (not b!8014938) (not bm!744460) (not d!2389594) (not b!8014686) (not b!8015125) (not d!2389460) (not b!8015203))
(check-sat)
