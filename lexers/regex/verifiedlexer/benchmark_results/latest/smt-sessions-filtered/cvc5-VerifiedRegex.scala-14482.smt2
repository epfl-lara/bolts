; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!753534 () Bool)

(assert start!753534)

(declare-fun b!8008049 () Bool)

(declare-fun e!4717410 () Bool)

(declare-fun e!4717413 () Bool)

(assert (=> b!8008049 (= e!4717410 e!4717413)))

(declare-fun res!3166641 () Bool)

(assert (=> b!8008049 (=> (not res!3166641) (not e!4717413))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2715923 () Int)

(assert (=> b!8008049 (= res!3166641 (= testedPSize!271 lt!2715923))))

(declare-datatypes ((C!43626 0))(
  ( (C!43627 (val!32361 Int)) )
))
(declare-datatypes ((List!74873 0))(
  ( (Nil!74749) (Cons!74749 (h!81197 C!43626) (t!390616 List!74873)) )
))
(declare-fun testedP!353 () List!74873)

(declare-fun size!43546 (List!74873) Int)

(assert (=> b!8008049 (= lt!2715923 (size!43546 testedP!353))))

(declare-fun b!8008050 () Bool)

(declare-fun e!4717412 () Bool)

(declare-fun tp_is_empty!53831 () Bool)

(declare-fun tp!2396177 () Bool)

(assert (=> b!8008050 (= e!4717412 (and tp_is_empty!53831 tp!2396177))))

(declare-fun b!8008051 () Bool)

(declare-fun e!4717418 () Bool)

(declare-fun e!4717407 () Bool)

(assert (=> b!8008051 (= e!4717418 e!4717407)))

(declare-fun res!3166640 () Bool)

(assert (=> b!8008051 (=> res!3166640 e!4717407)))

(declare-fun lt!2715912 () Int)

(assert (=> b!8008051 (= res!3166640 (>= lt!2715923 lt!2715912))))

(declare-datatypes ((Unit!170734 0))(
  ( (Unit!170735) )
))
(declare-fun lt!2715914 () Unit!170734)

(declare-fun e!4717415 () Unit!170734)

(assert (=> b!8008051 (= lt!2715914 e!4717415)))

(declare-fun c!1470027 () Bool)

(assert (=> b!8008051 (= c!1470027 (= lt!2715923 lt!2715912))))

(assert (=> b!8008051 (<= lt!2715923 lt!2715912)))

(declare-fun lt!2715917 () Unit!170734)

(declare-fun totalInput!1349 () List!74873)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1199 (List!74873 List!74873) Unit!170734)

(assert (=> b!8008051 (= lt!2715917 (lemmaIsPrefixThenSmallerEqSize!1199 testedP!353 totalInput!1349))))

(declare-fun b!8008052 () Bool)

(declare-fun e!4717416 () Bool)

(declare-fun tp!2396171 () Bool)

(assert (=> b!8008052 (= e!4717416 tp!2396171)))

(declare-fun b!8008053 () Bool)

(assert (=> b!8008053 (= e!4717416 tp_is_empty!53831)))

(declare-fun b!8008054 () Bool)

(declare-fun e!4717411 () Bool)

(declare-fun e!4717408 () Bool)

(assert (=> b!8008054 (= e!4717411 (not e!4717408))))

(declare-fun res!3166643 () Bool)

(assert (=> b!8008054 (=> res!3166643 e!4717408)))

(declare-fun isPrefix!6698 (List!74873 List!74873) Bool)

(assert (=> b!8008054 (= res!3166643 (not (isPrefix!6698 testedP!353 totalInput!1349)))))

(declare-fun lt!2715920 () List!74873)

(assert (=> b!8008054 (isPrefix!6698 testedP!353 lt!2715920)))

(declare-fun lt!2715918 () Unit!170734)

(declare-fun testedSuffix!271 () List!74873)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3929 (List!74873 List!74873) Unit!170734)

(assert (=> b!8008054 (= lt!2715918 (lemmaConcatTwoListThenFirstIsPrefix!3929 testedP!353 testedSuffix!271))))

(declare-fun b!8008055 () Bool)

(assert (=> b!8008055 (= e!4717408 e!4717418)))

(declare-fun res!3166639 () Bool)

(assert (=> b!8008055 (=> res!3166639 e!4717418)))

(declare-datatypes ((Regex!21644 0))(
  ( (ElementMatch!21644 (c!1470028 C!43626)) (Concat!30643 (regOne!43800 Regex!21644) (regTwo!43800 Regex!21644)) (EmptyExpr!21644) (Star!21644 (reg!21973 Regex!21644)) (EmptyLang!21644) (Union!21644 (regOne!43801 Regex!21644) (regTwo!43801 Regex!21644)) )
))
(declare-fun r!15422 () Regex!21644)

(declare-fun lostCause!2041 (Regex!21644) Bool)

(assert (=> b!8008055 (= res!3166639 (lostCause!2041 r!15422))))

(declare-fun lt!2715908 () List!74873)

(assert (=> b!8008055 (and (= testedSuffix!271 lt!2715908) (= lt!2715908 testedSuffix!271))))

(declare-fun lt!2715915 () Unit!170734)

(declare-fun lemmaSamePrefixThenSameSuffix!3061 (List!74873 List!74873 List!74873 List!74873 List!74873) Unit!170734)

(assert (=> b!8008055 (= lt!2715915 (lemmaSamePrefixThenSameSuffix!3061 testedP!353 testedSuffix!271 testedP!353 lt!2715908 totalInput!1349))))

(declare-fun getSuffix!3895 (List!74873 List!74873) List!74873)

(assert (=> b!8008055 (= lt!2715908 (getSuffix!3895 totalInput!1349 testedP!353))))

(declare-fun b!8008056 () Bool)

(declare-fun e!4717414 () Bool)

(declare-fun tp!2396172 () Bool)

(assert (=> b!8008056 (= e!4717414 (and tp_is_empty!53831 tp!2396172))))

(declare-fun b!8008057 () Bool)

(declare-fun e!4717417 () Bool)

(assert (=> b!8008057 (= e!4717407 e!4717417)))

(declare-fun res!3166647 () Bool)

(assert (=> b!8008057 (=> res!3166647 e!4717417)))

(declare-fun nullable!9702 (Regex!21644) Bool)

(assert (=> b!8008057 (= res!3166647 (nullable!9702 r!15422))))

(declare-fun lt!2715911 () List!74873)

(declare-fun lt!2715913 () List!74873)

(declare-fun ++!18470 (List!74873 List!74873) List!74873)

(assert (=> b!8008057 (= (++!18470 lt!2715911 lt!2715913) totalInput!1349)))

(declare-fun lt!2715922 () C!43626)

(declare-fun lt!2715909 () Unit!170734)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3579 (List!74873 C!43626 List!74873 List!74873) Unit!170734)

(assert (=> b!8008057 (= lt!2715909 (lemmaMoveElementToOtherListKeepsConcatEq!3579 testedP!353 lt!2715922 lt!2715913 totalInput!1349))))

(declare-fun tail!15859 (List!74873) List!74873)

(assert (=> b!8008057 (= lt!2715913 (tail!15859 testedSuffix!271))))

(declare-fun head!16336 (List!74873) C!43626)

(assert (=> b!8008057 (isPrefix!6698 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749)) totalInput!1349)))

(declare-fun lt!2715916 () Unit!170734)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1395 (List!74873 List!74873) Unit!170734)

(assert (=> b!8008057 (= lt!2715916 (lemmaAddHeadSuffixToPrefixStillPrefix!1395 testedP!353 totalInput!1349))))

(assert (=> b!8008057 (= lt!2715911 (++!18470 testedP!353 (Cons!74749 lt!2715922 Nil!74749)))))

(assert (=> b!8008057 (= lt!2715922 (head!16336 testedSuffix!271))))

(declare-fun b!8008058 () Bool)

(declare-fun e!4717409 () Bool)

(assert (=> b!8008058 (= e!4717409 e!4717410)))

(declare-fun res!3166646 () Bool)

(assert (=> b!8008058 (=> (not res!3166646) (not e!4717410))))

(assert (=> b!8008058 (= res!3166646 (= lt!2715920 totalInput!1349))))

(assert (=> b!8008058 (= lt!2715920 (++!18470 testedP!353 testedSuffix!271))))

(declare-fun b!8008059 () Bool)

(declare-fun res!3166644 () Bool)

(assert (=> b!8008059 (=> res!3166644 e!4717418)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8008059 (= res!3166644 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8008060 () Bool)

(assert (=> b!8008060 (= e!4717417 (not (= testedSuffix!271 Nil!74749)))))

(declare-fun lt!2715921 () Regex!21644)

(declare-fun derivativeStep!6623 (Regex!21644 C!43626) Regex!21644)

(assert (=> b!8008060 (= lt!2715921 (derivativeStep!6623 r!15422 lt!2715922))))

(declare-fun b!8008061 () Bool)

(declare-fun e!4717406 () Bool)

(declare-fun tp!2396176 () Bool)

(assert (=> b!8008061 (= e!4717406 (and tp_is_empty!53831 tp!2396176))))

(declare-fun b!8008062 () Bool)

(declare-fun Unit!170736 () Unit!170734)

(assert (=> b!8008062 (= e!4717415 Unit!170736)))

(declare-fun lt!2715910 () Unit!170734)

(declare-fun lemmaIsPrefixRefl!4150 (List!74873 List!74873) Unit!170734)

(assert (=> b!8008062 (= lt!2715910 (lemmaIsPrefixRefl!4150 totalInput!1349 totalInput!1349))))

(assert (=> b!8008062 (isPrefix!6698 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715919 () Unit!170734)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1724 (List!74873 List!74873 List!74873) Unit!170734)

(assert (=> b!8008062 (= lt!2715919 (lemmaIsPrefixSameLengthThenSameList!1724 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8008062 false))

(declare-fun b!8008063 () Bool)

(declare-fun Unit!170737 () Unit!170734)

(assert (=> b!8008063 (= e!4717415 Unit!170737)))

(declare-fun b!8008064 () Bool)

(assert (=> b!8008064 (= e!4717413 e!4717411)))

(declare-fun res!3166642 () Bool)

(assert (=> b!8008064 (=> (not res!3166642) (not e!4717411))))

(assert (=> b!8008064 (= res!3166642 (= totalInputSize!629 lt!2715912))))

(assert (=> b!8008064 (= lt!2715912 (size!43546 totalInput!1349))))

(declare-fun b!8008065 () Bool)

(declare-fun tp!2396174 () Bool)

(declare-fun tp!2396173 () Bool)

(assert (=> b!8008065 (= e!4717416 (and tp!2396174 tp!2396173))))

(declare-fun b!8008066 () Bool)

(declare-fun tp!2396178 () Bool)

(declare-fun tp!2396175 () Bool)

(assert (=> b!8008066 (= e!4717416 (and tp!2396178 tp!2396175))))

(declare-fun res!3166645 () Bool)

(assert (=> start!753534 (=> (not res!3166645) (not e!4717409))))

(declare-fun validRegex!11948 (Regex!21644) Bool)

(assert (=> start!753534 (= res!3166645 (validRegex!11948 r!15422))))

(assert (=> start!753534 e!4717409))

(assert (=> start!753534 e!4717414))

(assert (=> start!753534 true))

(assert (=> start!753534 e!4717406))

(assert (=> start!753534 e!4717416))

(assert (=> start!753534 e!4717412))

(assert (= (and start!753534 res!3166645) b!8008058))

(assert (= (and b!8008058 res!3166646) b!8008049))

(assert (= (and b!8008049 res!3166641) b!8008064))

(assert (= (and b!8008064 res!3166642) b!8008054))

(assert (= (and b!8008054 (not res!3166643)) b!8008055))

(assert (= (and b!8008055 (not res!3166639)) b!8008059))

(assert (= (and b!8008059 (not res!3166644)) b!8008051))

(assert (= (and b!8008051 c!1470027) b!8008062))

(assert (= (and b!8008051 (not c!1470027)) b!8008063))

(assert (= (and b!8008051 (not res!3166640)) b!8008057))

(assert (= (and b!8008057 (not res!3166647)) b!8008060))

(assert (= (and start!753534 (is-Cons!74749 totalInput!1349)) b!8008056))

(assert (= (and start!753534 (is-Cons!74749 testedSuffix!271)) b!8008061))

(assert (= (and start!753534 (is-ElementMatch!21644 r!15422)) b!8008053))

(assert (= (and start!753534 (is-Concat!30643 r!15422)) b!8008066))

(assert (= (and start!753534 (is-Star!21644 r!15422)) b!8008052))

(assert (= (and start!753534 (is-Union!21644 r!15422)) b!8008065))

(assert (= (and start!753534 (is-Cons!74749 testedP!353)) b!8008050))

(declare-fun m!8373042 () Bool)

(assert (=> start!753534 m!8373042))

(declare-fun m!8373044 () Bool)

(assert (=> b!8008062 m!8373044))

(declare-fun m!8373046 () Bool)

(assert (=> b!8008062 m!8373046))

(declare-fun m!8373048 () Bool)

(assert (=> b!8008062 m!8373048))

(declare-fun m!8373050 () Bool)

(assert (=> b!8008049 m!8373050))

(declare-fun m!8373052 () Bool)

(assert (=> b!8008060 m!8373052))

(declare-fun m!8373054 () Bool)

(assert (=> b!8008055 m!8373054))

(declare-fun m!8373056 () Bool)

(assert (=> b!8008055 m!8373056))

(declare-fun m!8373058 () Bool)

(assert (=> b!8008055 m!8373058))

(declare-fun m!8373060 () Bool)

(assert (=> b!8008057 m!8373060))

(declare-fun m!8373062 () Bool)

(assert (=> b!8008057 m!8373062))

(declare-fun m!8373064 () Bool)

(assert (=> b!8008057 m!8373064))

(declare-fun m!8373066 () Bool)

(assert (=> b!8008057 m!8373066))

(declare-fun m!8373068 () Bool)

(assert (=> b!8008057 m!8373068))

(declare-fun m!8373070 () Bool)

(assert (=> b!8008057 m!8373070))

(assert (=> b!8008057 m!8373068))

(declare-fun m!8373072 () Bool)

(assert (=> b!8008057 m!8373072))

(declare-fun m!8373074 () Bool)

(assert (=> b!8008057 m!8373074))

(declare-fun m!8373076 () Bool)

(assert (=> b!8008057 m!8373076))

(declare-fun m!8373078 () Bool)

(assert (=> b!8008057 m!8373078))

(declare-fun m!8373080 () Bool)

(assert (=> b!8008051 m!8373080))

(declare-fun m!8373082 () Bool)

(assert (=> b!8008058 m!8373082))

(declare-fun m!8373084 () Bool)

(assert (=> b!8008054 m!8373084))

(declare-fun m!8373086 () Bool)

(assert (=> b!8008054 m!8373086))

(declare-fun m!8373088 () Bool)

(assert (=> b!8008054 m!8373088))

(declare-fun m!8373090 () Bool)

(assert (=> b!8008064 m!8373090))

(push 1)

(assert (not b!8008051))

(assert (not b!8008066))

(assert (not b!8008065))

(assert (not start!753534))

(assert (not b!8008049))

(assert (not b!8008060))

(assert (not b!8008056))

(assert (not b!8008064))

(assert tp_is_empty!53831)

(assert (not b!8008058))

(assert (not b!8008057))

(assert (not b!8008052))

(assert (not b!8008062))

(assert (not b!8008050))

(assert (not b!8008061))

(assert (not b!8008054))

(assert (not b!8008055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2387951 () Bool)

(declare-fun lt!2715977 () Int)

(assert (=> d!2387951 (>= lt!2715977 0)))

(declare-fun e!4717463 () Int)

(assert (=> d!2387951 (= lt!2715977 e!4717463)))

(declare-fun c!1470038 () Bool)

(assert (=> d!2387951 (= c!1470038 (is-Nil!74749 totalInput!1349))))

(assert (=> d!2387951 (= (size!43546 totalInput!1349) lt!2715977)))

(declare-fun b!8008131 () Bool)

(assert (=> b!8008131 (= e!4717463 0)))

(declare-fun b!8008132 () Bool)

(assert (=> b!8008132 (= e!4717463 (+ 1 (size!43546 (t!390616 totalInput!1349))))))

(assert (= (and d!2387951 c!1470038) b!8008131))

(assert (= (and d!2387951 (not c!1470038)) b!8008132))

(declare-fun m!8373144 () Bool)

(assert (=> b!8008132 m!8373144))

(assert (=> b!8008064 d!2387951))

(declare-fun b!8008144 () Bool)

(declare-fun e!4717469 () Bool)

(declare-fun lt!2715983 () List!74873)

(assert (=> b!8008144 (= e!4717469 (or (not (= testedSuffix!271 Nil!74749)) (= lt!2715983 testedP!353)))))

(declare-fun b!8008142 () Bool)

(declare-fun e!4717468 () List!74873)

(assert (=> b!8008142 (= e!4717468 (Cons!74749 (h!81197 testedP!353) (++!18470 (t!390616 testedP!353) testedSuffix!271)))))

(declare-fun b!8008141 () Bool)

(assert (=> b!8008141 (= e!4717468 testedSuffix!271)))

(declare-fun d!2387953 () Bool)

(assert (=> d!2387953 e!4717469))

(declare-fun res!3166680 () Bool)

(assert (=> d!2387953 (=> (not res!3166680) (not e!4717469))))

(declare-fun content!15897 (List!74873) (Set C!43626))

(assert (=> d!2387953 (= res!3166680 (= (content!15897 lt!2715983) (set.union (content!15897 testedP!353) (content!15897 testedSuffix!271))))))

(assert (=> d!2387953 (= lt!2715983 e!4717468)))

(declare-fun c!1470041 () Bool)

(assert (=> d!2387953 (= c!1470041 (is-Nil!74749 testedP!353))))

(assert (=> d!2387953 (= (++!18470 testedP!353 testedSuffix!271) lt!2715983)))

(declare-fun b!8008143 () Bool)

(declare-fun res!3166679 () Bool)

(assert (=> b!8008143 (=> (not res!3166679) (not e!4717469))))

(assert (=> b!8008143 (= res!3166679 (= (size!43546 lt!2715983) (+ (size!43546 testedP!353) (size!43546 testedSuffix!271))))))

(assert (= (and d!2387953 c!1470041) b!8008141))

(assert (= (and d!2387953 (not c!1470041)) b!8008142))

(assert (= (and d!2387953 res!3166680) b!8008143))

(assert (= (and b!8008143 res!3166679) b!8008144))

(declare-fun m!8373152 () Bool)

(assert (=> b!8008142 m!8373152))

(declare-fun m!8373154 () Bool)

(assert (=> d!2387953 m!8373154))

(declare-fun m!8373156 () Bool)

(assert (=> d!2387953 m!8373156))

(declare-fun m!8373158 () Bool)

(assert (=> d!2387953 m!8373158))

(declare-fun m!8373160 () Bool)

(assert (=> b!8008143 m!8373160))

(assert (=> b!8008143 m!8373050))

(declare-fun m!8373162 () Bool)

(assert (=> b!8008143 m!8373162))

(assert (=> b!8008058 d!2387953))

(declare-fun c!1470057 () Bool)

(declare-fun bm!743942 () Bool)

(declare-fun call!743949 () Regex!21644)

(declare-fun c!1470058 () Bool)

(declare-fun c!1470061 () Bool)

(assert (=> bm!743942 (= call!743949 (derivativeStep!6623 (ite c!1470061 (regTwo!43801 r!15422) (ite c!1470057 (reg!21973 r!15422) (ite c!1470058 (regTwo!43800 r!15422) (regOne!43800 r!15422)))) lt!2715922))))

(declare-fun b!8008185 () Bool)

(declare-fun e!4717492 () Regex!21644)

(assert (=> b!8008185 (= e!4717492 EmptyLang!21644)))

(declare-fun b!8008186 () Bool)

(declare-fun e!4717494 () Regex!21644)

(declare-fun e!4717493 () Regex!21644)

(assert (=> b!8008186 (= e!4717494 e!4717493)))

(assert (=> b!8008186 (= c!1470057 (is-Star!21644 r!15422))))

(declare-fun call!743950 () Regex!21644)

(declare-fun bm!743943 () Bool)

(assert (=> bm!743943 (= call!743950 (derivativeStep!6623 (ite c!1470061 (regOne!43801 r!15422) (regOne!43800 r!15422)) lt!2715922))))

(declare-fun d!2387959 () Bool)

(declare-fun lt!2715991 () Regex!21644)

(assert (=> d!2387959 (validRegex!11948 lt!2715991)))

(assert (=> d!2387959 (= lt!2715991 e!4717492)))

(declare-fun c!1470060 () Bool)

(assert (=> d!2387959 (= c!1470060 (or (is-EmptyExpr!21644 r!15422) (is-EmptyLang!21644 r!15422)))))

(assert (=> d!2387959 (validRegex!11948 r!15422)))

(assert (=> d!2387959 (= (derivativeStep!6623 r!15422 lt!2715922) lt!2715991)))

(declare-fun b!8008187 () Bool)

(declare-fun e!4717490 () Regex!21644)

(assert (=> b!8008187 (= e!4717492 e!4717490)))

(declare-fun c!1470059 () Bool)

(assert (=> b!8008187 (= c!1470059 (is-ElementMatch!21644 r!15422))))

(declare-fun b!8008188 () Bool)

(assert (=> b!8008188 (= e!4717494 (Union!21644 call!743950 call!743949))))

(declare-fun bm!743944 () Bool)

(declare-fun call!743948 () Regex!21644)

(declare-fun call!743947 () Regex!21644)

(assert (=> bm!743944 (= call!743948 call!743947)))

(declare-fun b!8008189 () Bool)

(declare-fun e!4717491 () Regex!21644)

(assert (=> b!8008189 (= e!4717491 (Union!21644 (Concat!30643 call!743948 (regTwo!43800 r!15422)) EmptyLang!21644))))

(declare-fun b!8008190 () Bool)

(assert (=> b!8008190 (= e!4717491 (Union!21644 (Concat!30643 call!743950 (regTwo!43800 r!15422)) call!743948))))

(declare-fun b!8008191 () Bool)

(assert (=> b!8008191 (= e!4717490 (ite (= lt!2715922 (c!1470028 r!15422)) EmptyExpr!21644 EmptyLang!21644))))

(declare-fun b!8008192 () Bool)

(assert (=> b!8008192 (= c!1470058 (nullable!9702 (regOne!43800 r!15422)))))

(assert (=> b!8008192 (= e!4717493 e!4717491)))

(declare-fun b!8008193 () Bool)

(assert (=> b!8008193 (= c!1470061 (is-Union!21644 r!15422))))

(assert (=> b!8008193 (= e!4717490 e!4717494)))

(declare-fun bm!743945 () Bool)

(assert (=> bm!743945 (= call!743947 call!743949)))

(declare-fun b!8008194 () Bool)

(assert (=> b!8008194 (= e!4717493 (Concat!30643 call!743947 r!15422))))

(assert (= (and d!2387959 c!1470060) b!8008185))

(assert (= (and d!2387959 (not c!1470060)) b!8008187))

(assert (= (and b!8008187 c!1470059) b!8008191))

(assert (= (and b!8008187 (not c!1470059)) b!8008193))

(assert (= (and b!8008193 c!1470061) b!8008188))

(assert (= (and b!8008193 (not c!1470061)) b!8008186))

(assert (= (and b!8008186 c!1470057) b!8008194))

(assert (= (and b!8008186 (not c!1470057)) b!8008192))

(assert (= (and b!8008192 c!1470058) b!8008190))

(assert (= (and b!8008192 (not c!1470058)) b!8008189))

(assert (= (or b!8008190 b!8008189) bm!743944))

(assert (= (or b!8008194 bm!743944) bm!743945))

(assert (= (or b!8008188 bm!743945) bm!743942))

(assert (= (or b!8008188 b!8008190) bm!743943))

(declare-fun m!8373202 () Bool)

(assert (=> bm!743942 m!8373202))

(declare-fun m!8373204 () Bool)

(assert (=> bm!743943 m!8373204))

(declare-fun m!8373206 () Bool)

(assert (=> d!2387959 m!8373206))

(assert (=> d!2387959 m!8373042))

(declare-fun m!8373208 () Bool)

(assert (=> b!8008192 m!8373208))

(assert (=> b!8008060 d!2387959))

(declare-fun d!2387973 () Bool)

(declare-fun lostCauseFct!600 (Regex!21644) Bool)

(assert (=> d!2387973 (= (lostCause!2041 r!15422) (lostCauseFct!600 r!15422))))

(declare-fun bs!1970769 () Bool)

(assert (= bs!1970769 d!2387973))

(declare-fun m!8373210 () Bool)

(assert (=> bs!1970769 m!8373210))

(assert (=> b!8008055 d!2387973))

(declare-fun d!2387975 () Bool)

(assert (=> d!2387975 (= testedSuffix!271 lt!2715908)))

(declare-fun lt!2715997 () Unit!170734)

(declare-fun choose!60303 (List!74873 List!74873 List!74873 List!74873 List!74873) Unit!170734)

(assert (=> d!2387975 (= lt!2715997 (choose!60303 testedP!353 testedSuffix!271 testedP!353 lt!2715908 totalInput!1349))))

(assert (=> d!2387975 (isPrefix!6698 testedP!353 totalInput!1349)))

(assert (=> d!2387975 (= (lemmaSamePrefixThenSameSuffix!3061 testedP!353 testedSuffix!271 testedP!353 lt!2715908 totalInput!1349) lt!2715997)))

(declare-fun bs!1970771 () Bool)

(assert (= bs!1970771 d!2387975))

(declare-fun m!8373220 () Bool)

(assert (=> bs!1970771 m!8373220))

(assert (=> bs!1970771 m!8373084))

(assert (=> b!8008055 d!2387975))

(declare-fun d!2387979 () Bool)

(declare-fun lt!2716002 () List!74873)

(assert (=> d!2387979 (= (++!18470 testedP!353 lt!2716002) totalInput!1349)))

(declare-fun e!4717503 () List!74873)

(assert (=> d!2387979 (= lt!2716002 e!4717503)))

(declare-fun c!1470064 () Bool)

(assert (=> d!2387979 (= c!1470064 (is-Cons!74749 testedP!353))))

(assert (=> d!2387979 (>= (size!43546 totalInput!1349) (size!43546 testedP!353))))

(assert (=> d!2387979 (= (getSuffix!3895 totalInput!1349 testedP!353) lt!2716002)))

(declare-fun b!8008207 () Bool)

(assert (=> b!8008207 (= e!4717503 (getSuffix!3895 (tail!15859 totalInput!1349) (t!390616 testedP!353)))))

(declare-fun b!8008208 () Bool)

(assert (=> b!8008208 (= e!4717503 totalInput!1349)))

(assert (= (and d!2387979 c!1470064) b!8008207))

(assert (= (and d!2387979 (not c!1470064)) b!8008208))

(declare-fun m!8373222 () Bool)

(assert (=> d!2387979 m!8373222))

(assert (=> d!2387979 m!8373090))

(assert (=> d!2387979 m!8373050))

(declare-fun m!8373224 () Bool)

(assert (=> b!8008207 m!8373224))

(assert (=> b!8008207 m!8373224))

(declare-fun m!8373226 () Bool)

(assert (=> b!8008207 m!8373226))

(assert (=> b!8008055 d!2387979))

(declare-fun b!8008223 () Bool)

(declare-fun e!4717515 () Bool)

(declare-fun e!4717514 () Bool)

(assert (=> b!8008223 (= e!4717515 e!4717514)))

(declare-fun res!3166713 () Bool)

(assert (=> b!8008223 (=> (not res!3166713) (not e!4717514))))

(assert (=> b!8008223 (= res!3166713 (not (is-Nil!74749 totalInput!1349)))))

(declare-fun b!8008224 () Bool)

(declare-fun res!3166711 () Bool)

(assert (=> b!8008224 (=> (not res!3166711) (not e!4717514))))

(assert (=> b!8008224 (= res!3166711 (= (head!16336 testedP!353) (head!16336 totalInput!1349)))))

(declare-fun b!8008226 () Bool)

(declare-fun e!4717516 () Bool)

(assert (=> b!8008226 (= e!4717516 (>= (size!43546 totalInput!1349) (size!43546 testedP!353)))))

(declare-fun b!8008225 () Bool)

(assert (=> b!8008225 (= e!4717514 (isPrefix!6698 (tail!15859 testedP!353) (tail!15859 totalInput!1349)))))

(declare-fun d!2387981 () Bool)

(assert (=> d!2387981 e!4717516))

(declare-fun res!3166714 () Bool)

(assert (=> d!2387981 (=> res!3166714 e!4717516)))

(declare-fun lt!2716007 () Bool)

(assert (=> d!2387981 (= res!3166714 (not lt!2716007))))

(assert (=> d!2387981 (= lt!2716007 e!4717515)))

(declare-fun res!3166712 () Bool)

(assert (=> d!2387981 (=> res!3166712 e!4717515)))

(assert (=> d!2387981 (= res!3166712 (is-Nil!74749 testedP!353))))

(assert (=> d!2387981 (= (isPrefix!6698 testedP!353 totalInput!1349) lt!2716007)))

(assert (= (and d!2387981 (not res!3166712)) b!8008223))

(assert (= (and b!8008223 res!3166713) b!8008224))

(assert (= (and b!8008224 res!3166711) b!8008225))

(assert (= (and d!2387981 (not res!3166714)) b!8008226))

(declare-fun m!8373242 () Bool)

(assert (=> b!8008224 m!8373242))

(declare-fun m!8373244 () Bool)

(assert (=> b!8008224 m!8373244))

(assert (=> b!8008226 m!8373090))

(assert (=> b!8008226 m!8373050))

(declare-fun m!8373246 () Bool)

(assert (=> b!8008225 m!8373246))

(assert (=> b!8008225 m!8373224))

(assert (=> b!8008225 m!8373246))

(assert (=> b!8008225 m!8373224))

(declare-fun m!8373248 () Bool)

(assert (=> b!8008225 m!8373248))

(assert (=> b!8008054 d!2387981))

(declare-fun b!8008231 () Bool)

(declare-fun e!4717520 () Bool)

(declare-fun e!4717519 () Bool)

(assert (=> b!8008231 (= e!4717520 e!4717519)))

(declare-fun res!3166719 () Bool)

(assert (=> b!8008231 (=> (not res!3166719) (not e!4717519))))

(assert (=> b!8008231 (= res!3166719 (not (is-Nil!74749 lt!2715920)))))

(declare-fun b!8008232 () Bool)

(declare-fun res!3166717 () Bool)

(assert (=> b!8008232 (=> (not res!3166717) (not e!4717519))))

(assert (=> b!8008232 (= res!3166717 (= (head!16336 testedP!353) (head!16336 lt!2715920)))))

(declare-fun b!8008234 () Bool)

(declare-fun e!4717521 () Bool)

(assert (=> b!8008234 (= e!4717521 (>= (size!43546 lt!2715920) (size!43546 testedP!353)))))

(declare-fun b!8008233 () Bool)

(assert (=> b!8008233 (= e!4717519 (isPrefix!6698 (tail!15859 testedP!353) (tail!15859 lt!2715920)))))

(declare-fun d!2387987 () Bool)

(assert (=> d!2387987 e!4717521))

(declare-fun res!3166720 () Bool)

(assert (=> d!2387987 (=> res!3166720 e!4717521)))

(declare-fun lt!2716008 () Bool)

(assert (=> d!2387987 (= res!3166720 (not lt!2716008))))

(assert (=> d!2387987 (= lt!2716008 e!4717520)))

(declare-fun res!3166718 () Bool)

(assert (=> d!2387987 (=> res!3166718 e!4717520)))

(assert (=> d!2387987 (= res!3166718 (is-Nil!74749 testedP!353))))

(assert (=> d!2387987 (= (isPrefix!6698 testedP!353 lt!2715920) lt!2716008)))

(assert (= (and d!2387987 (not res!3166718)) b!8008231))

(assert (= (and b!8008231 res!3166719) b!8008232))

(assert (= (and b!8008232 res!3166717) b!8008233))

(assert (= (and d!2387987 (not res!3166720)) b!8008234))

(assert (=> b!8008232 m!8373242))

(declare-fun m!8373250 () Bool)

(assert (=> b!8008232 m!8373250))

(declare-fun m!8373252 () Bool)

(assert (=> b!8008234 m!8373252))

(assert (=> b!8008234 m!8373050))

(assert (=> b!8008233 m!8373246))

(declare-fun m!8373254 () Bool)

(assert (=> b!8008233 m!8373254))

(assert (=> b!8008233 m!8373246))

(assert (=> b!8008233 m!8373254))

(declare-fun m!8373256 () Bool)

(assert (=> b!8008233 m!8373256))

(assert (=> b!8008054 d!2387987))

(declare-fun d!2387989 () Bool)

(assert (=> d!2387989 (isPrefix!6698 testedP!353 (++!18470 testedP!353 testedSuffix!271))))

(declare-fun lt!2716011 () Unit!170734)

(declare-fun choose!60304 (List!74873 List!74873) Unit!170734)

(assert (=> d!2387989 (= lt!2716011 (choose!60304 testedP!353 testedSuffix!271))))

(assert (=> d!2387989 (= (lemmaConcatTwoListThenFirstIsPrefix!3929 testedP!353 testedSuffix!271) lt!2716011)))

(declare-fun bs!1970772 () Bool)

(assert (= bs!1970772 d!2387989))

(assert (=> bs!1970772 m!8373082))

(assert (=> bs!1970772 m!8373082))

(declare-fun m!8373258 () Bool)

(assert (=> bs!1970772 m!8373258))

(declare-fun m!8373260 () Bool)

(assert (=> bs!1970772 m!8373260))

(assert (=> b!8008054 d!2387989))

(declare-fun d!2387991 () Bool)

(declare-fun lt!2716012 () Int)

(assert (=> d!2387991 (>= lt!2716012 0)))

(declare-fun e!4717534 () Int)

(assert (=> d!2387991 (= lt!2716012 e!4717534)))

(declare-fun c!1470070 () Bool)

(assert (=> d!2387991 (= c!1470070 (is-Nil!74749 testedP!353))))

(assert (=> d!2387991 (= (size!43546 testedP!353) lt!2716012)))

(declare-fun b!8008249 () Bool)

(assert (=> b!8008249 (= e!4717534 0)))

(declare-fun b!8008250 () Bool)

(assert (=> b!8008250 (= e!4717534 (+ 1 (size!43546 (t!390616 testedP!353))))))

(assert (= (and d!2387991 c!1470070) b!8008249))

(assert (= (and d!2387991 (not c!1470070)) b!8008250))

(declare-fun m!8373262 () Bool)

(assert (=> b!8008250 m!8373262))

(assert (=> b!8008049 d!2387991))

(declare-fun d!2387993 () Bool)

(assert (=> d!2387993 (<= (size!43546 testedP!353) (size!43546 totalInput!1349))))

(declare-fun lt!2716015 () Unit!170734)

(declare-fun choose!60305 (List!74873 List!74873) Unit!170734)

(assert (=> d!2387993 (= lt!2716015 (choose!60305 testedP!353 totalInput!1349))))

(assert (=> d!2387993 (isPrefix!6698 testedP!353 totalInput!1349)))

(assert (=> d!2387993 (= (lemmaIsPrefixThenSmallerEqSize!1199 testedP!353 totalInput!1349) lt!2716015)))

(declare-fun bs!1970773 () Bool)

(assert (= bs!1970773 d!2387993))

(assert (=> bs!1970773 m!8373050))

(assert (=> bs!1970773 m!8373090))

(declare-fun m!8373264 () Bool)

(assert (=> bs!1970773 m!8373264))

(assert (=> bs!1970773 m!8373084))

(assert (=> b!8008051 d!2387993))

(declare-fun b!8008278 () Bool)

(declare-fun res!3166748 () Bool)

(declare-fun e!4717557 () Bool)

(assert (=> b!8008278 (=> res!3166748 e!4717557)))

(assert (=> b!8008278 (= res!3166748 (not (is-Concat!30643 r!15422)))))

(declare-fun e!4717562 () Bool)

(assert (=> b!8008278 (= e!4717562 e!4717557)))

(declare-fun b!8008279 () Bool)

(declare-fun e!4717560 () Bool)

(assert (=> b!8008279 (= e!4717560 e!4717562)))

(declare-fun c!1470078 () Bool)

(assert (=> b!8008279 (= c!1470078 (is-Union!21644 r!15422))))

(declare-fun b!8008281 () Bool)

(declare-fun e!4717561 () Bool)

(declare-fun call!743968 () Bool)

(assert (=> b!8008281 (= e!4717561 call!743968)))

(declare-fun b!8008282 () Bool)

(assert (=> b!8008282 (= e!4717557 e!4717561)))

(declare-fun res!3166745 () Bool)

(assert (=> b!8008282 (=> (not res!3166745) (not e!4717561))))

(declare-fun call!743967 () Bool)

(assert (=> b!8008282 (= res!3166745 call!743967)))

(declare-fun bm!743961 () Bool)

(declare-fun call!743966 () Bool)

(assert (=> bm!743961 (= call!743968 call!743966)))

(declare-fun b!8008283 () Bool)

(declare-fun e!4717559 () Bool)

(assert (=> b!8008283 (= e!4717559 call!743966)))

(declare-fun b!8008284 () Bool)

(declare-fun res!3166747 () Bool)

(declare-fun e!4717556 () Bool)

(assert (=> b!8008284 (=> (not res!3166747) (not e!4717556))))

(assert (=> b!8008284 (= res!3166747 call!743967)))

(assert (=> b!8008284 (= e!4717562 e!4717556)))

(declare-fun bm!743962 () Bool)

(declare-fun c!1470077 () Bool)

(assert (=> bm!743962 (= call!743966 (validRegex!11948 (ite c!1470077 (reg!21973 r!15422) (ite c!1470078 (regTwo!43801 r!15422) (regTwo!43800 r!15422)))))))

(declare-fun b!8008285 () Bool)

(assert (=> b!8008285 (= e!4717556 call!743968)))

(declare-fun bm!743963 () Bool)

(assert (=> bm!743963 (= call!743967 (validRegex!11948 (ite c!1470078 (regOne!43801 r!15422) (regOne!43800 r!15422))))))

(declare-fun b!8008286 () Bool)

(declare-fun e!4717558 () Bool)

(assert (=> b!8008286 (= e!4717558 e!4717560)))

(assert (=> b!8008286 (= c!1470077 (is-Star!21644 r!15422))))

(declare-fun d!2387995 () Bool)

(declare-fun res!3166744 () Bool)

(assert (=> d!2387995 (=> res!3166744 e!4717558)))

(assert (=> d!2387995 (= res!3166744 (is-ElementMatch!21644 r!15422))))

(assert (=> d!2387995 (= (validRegex!11948 r!15422) e!4717558)))

(declare-fun b!8008280 () Bool)

(assert (=> b!8008280 (= e!4717560 e!4717559)))

(declare-fun res!3166746 () Bool)

(assert (=> b!8008280 (= res!3166746 (not (nullable!9702 (reg!21973 r!15422))))))

(assert (=> b!8008280 (=> (not res!3166746) (not e!4717559))))

(assert (= (and d!2387995 (not res!3166744)) b!8008286))

(assert (= (and b!8008286 c!1470077) b!8008280))

(assert (= (and b!8008286 (not c!1470077)) b!8008279))

(assert (= (and b!8008280 res!3166746) b!8008283))

(assert (= (and b!8008279 c!1470078) b!8008284))

(assert (= (and b!8008279 (not c!1470078)) b!8008278))

(assert (= (and b!8008284 res!3166747) b!8008285))

(assert (= (and b!8008278 (not res!3166748)) b!8008282))

(assert (= (and b!8008282 res!3166745) b!8008281))

(assert (= (or b!8008285 b!8008281) bm!743961))

(assert (= (or b!8008284 b!8008282) bm!743963))

(assert (= (or b!8008283 bm!743961) bm!743962))

(declare-fun m!8373268 () Bool)

(assert (=> bm!743962 m!8373268))

(declare-fun m!8373272 () Bool)

(assert (=> bm!743963 m!8373272))

(declare-fun m!8373274 () Bool)

(assert (=> b!8008280 m!8373274))

(assert (=> start!753534 d!2387995))

(declare-fun d!2387997 () Bool)

(assert (=> d!2387997 (isPrefix!6698 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716019 () Unit!170734)

(declare-fun choose!60306 (List!74873 List!74873) Unit!170734)

(assert (=> d!2387997 (= lt!2716019 (choose!60306 totalInput!1349 totalInput!1349))))

(assert (=> d!2387997 (= (lemmaIsPrefixRefl!4150 totalInput!1349 totalInput!1349) lt!2716019)))

(declare-fun bs!1970774 () Bool)

(assert (= bs!1970774 d!2387997))

(assert (=> bs!1970774 m!8373046))

(declare-fun m!8373284 () Bool)

(assert (=> bs!1970774 m!8373284))

(assert (=> b!8008062 d!2387997))

(declare-fun b!8008295 () Bool)

(declare-fun e!4717570 () Bool)

(declare-fun e!4717569 () Bool)

(assert (=> b!8008295 (= e!4717570 e!4717569)))

(declare-fun res!3166759 () Bool)

(assert (=> b!8008295 (=> (not res!3166759) (not e!4717569))))

(assert (=> b!8008295 (= res!3166759 (not (is-Nil!74749 totalInput!1349)))))

(declare-fun b!8008296 () Bool)

(declare-fun res!3166757 () Bool)

(assert (=> b!8008296 (=> (not res!3166757) (not e!4717569))))

(assert (=> b!8008296 (= res!3166757 (= (head!16336 totalInput!1349) (head!16336 totalInput!1349)))))

(declare-fun b!8008298 () Bool)

(declare-fun e!4717571 () Bool)

(assert (=> b!8008298 (= e!4717571 (>= (size!43546 totalInput!1349) (size!43546 totalInput!1349)))))

(declare-fun b!8008297 () Bool)

(assert (=> b!8008297 (= e!4717569 (isPrefix!6698 (tail!15859 totalInput!1349) (tail!15859 totalInput!1349)))))

(declare-fun d!2388003 () Bool)

(assert (=> d!2388003 e!4717571))

(declare-fun res!3166760 () Bool)

(assert (=> d!2388003 (=> res!3166760 e!4717571)))

(declare-fun lt!2716021 () Bool)

(assert (=> d!2388003 (= res!3166760 (not lt!2716021))))

(assert (=> d!2388003 (= lt!2716021 e!4717570)))

(declare-fun res!3166758 () Bool)

(assert (=> d!2388003 (=> res!3166758 e!4717570)))

(assert (=> d!2388003 (= res!3166758 (is-Nil!74749 totalInput!1349))))

(assert (=> d!2388003 (= (isPrefix!6698 totalInput!1349 totalInput!1349) lt!2716021)))

(assert (= (and d!2388003 (not res!3166758)) b!8008295))

(assert (= (and b!8008295 res!3166759) b!8008296))

(assert (= (and b!8008296 res!3166757) b!8008297))

(assert (= (and d!2388003 (not res!3166760)) b!8008298))

(assert (=> b!8008296 m!8373244))

(assert (=> b!8008296 m!8373244))

(assert (=> b!8008298 m!8373090))

(assert (=> b!8008298 m!8373090))

(assert (=> b!8008297 m!8373224))

(assert (=> b!8008297 m!8373224))

(assert (=> b!8008297 m!8373224))

(assert (=> b!8008297 m!8373224))

(declare-fun m!8373286 () Bool)

(assert (=> b!8008297 m!8373286))

(assert (=> b!8008062 d!2388003))

(declare-fun d!2388005 () Bool)

(assert (=> d!2388005 (= totalInput!1349 testedP!353)))

(declare-fun lt!2716024 () Unit!170734)

(declare-fun choose!60307 (List!74873 List!74873 List!74873) Unit!170734)

(assert (=> d!2388005 (= lt!2716024 (choose!60307 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388005 (isPrefix!6698 totalInput!1349 totalInput!1349)))

(assert (=> d!2388005 (= (lemmaIsPrefixSameLengthThenSameList!1724 totalInput!1349 testedP!353 totalInput!1349) lt!2716024)))

(declare-fun bs!1970775 () Bool)

(assert (= bs!1970775 d!2388005))

(declare-fun m!8373296 () Bool)

(assert (=> bs!1970775 m!8373296))

(assert (=> bs!1970775 m!8373046))

(assert (=> b!8008062 d!2388005))

(declare-fun d!2388009 () Bool)

(assert (=> d!2388009 (isPrefix!6698 (++!18470 testedP!353 (Cons!74749 (head!16336 (getSuffix!3895 totalInput!1349 testedP!353)) Nil!74749)) totalInput!1349)))

(declare-fun lt!2716030 () Unit!170734)

(declare-fun choose!60308 (List!74873 List!74873) Unit!170734)

(assert (=> d!2388009 (= lt!2716030 (choose!60308 testedP!353 totalInput!1349))))

(assert (=> d!2388009 (isPrefix!6698 testedP!353 totalInput!1349)))

(assert (=> d!2388009 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1395 testedP!353 totalInput!1349) lt!2716030)))

(declare-fun bs!1970777 () Bool)

(assert (= bs!1970777 d!2388009))

(declare-fun m!8373302 () Bool)

(assert (=> bs!1970777 m!8373302))

(assert (=> bs!1970777 m!8373058))

(assert (=> bs!1970777 m!8373058))

(declare-fun m!8373304 () Bool)

(assert (=> bs!1970777 m!8373304))

(assert (=> bs!1970777 m!8373302))

(declare-fun m!8373306 () Bool)

(assert (=> bs!1970777 m!8373306))

(declare-fun m!8373308 () Bool)

(assert (=> bs!1970777 m!8373308))

(assert (=> bs!1970777 m!8373084))

(assert (=> b!8008057 d!2388009))

(declare-fun d!2388013 () Bool)

(assert (=> d!2388013 (= (++!18470 (++!18470 testedP!353 (Cons!74749 lt!2715922 Nil!74749)) lt!2715913) totalInput!1349)))

(declare-fun lt!2716034 () Unit!170734)

(declare-fun choose!60309 (List!74873 C!43626 List!74873 List!74873) Unit!170734)

(assert (=> d!2388013 (= lt!2716034 (choose!60309 testedP!353 lt!2715922 lt!2715913 totalInput!1349))))

(assert (=> d!2388013 (= (++!18470 testedP!353 (Cons!74749 lt!2715922 lt!2715913)) totalInput!1349)))

(assert (=> d!2388013 (= (lemmaMoveElementToOtherListKeepsConcatEq!3579 testedP!353 lt!2715922 lt!2715913 totalInput!1349) lt!2716034)))

(declare-fun bs!1970778 () Bool)

(assert (= bs!1970778 d!2388013))

(assert (=> bs!1970778 m!8373066))

(assert (=> bs!1970778 m!8373066))

(declare-fun m!8373320 () Bool)

(assert (=> bs!1970778 m!8373320))

(declare-fun m!8373322 () Bool)

(assert (=> bs!1970778 m!8373322))

(declare-fun m!8373324 () Bool)

(assert (=> bs!1970778 m!8373324))

(assert (=> b!8008057 d!2388013))

(declare-fun d!2388017 () Bool)

(assert (=> d!2388017 (= (head!16336 lt!2715908) (h!81197 lt!2715908))))

(assert (=> b!8008057 d!2388017))

(declare-fun d!2388019 () Bool)

(assert (=> d!2388019 (= (head!16336 testedSuffix!271) (h!81197 testedSuffix!271))))

(assert (=> b!8008057 d!2388019))

(declare-fun d!2388021 () Bool)

(declare-fun nullableFct!3830 (Regex!21644) Bool)

(assert (=> d!2388021 (= (nullable!9702 r!15422) (nullableFct!3830 r!15422))))

(declare-fun bs!1970780 () Bool)

(assert (= bs!1970780 d!2388021))

(declare-fun m!8373328 () Bool)

(assert (=> bs!1970780 m!8373328))

(assert (=> b!8008057 d!2388021))

(declare-fun lt!2716039 () List!74873)

(declare-fun e!4717578 () Bool)

(declare-fun b!8008310 () Bool)

(assert (=> b!8008310 (= e!4717578 (or (not (= (Cons!74749 (head!16336 lt!2715908) Nil!74749) Nil!74749)) (= lt!2716039 testedP!353)))))

(declare-fun b!8008308 () Bool)

(declare-fun e!4717577 () List!74873)

(assert (=> b!8008308 (= e!4717577 (Cons!74749 (h!81197 testedP!353) (++!18470 (t!390616 testedP!353) (Cons!74749 (head!16336 lt!2715908) Nil!74749))))))

(declare-fun b!8008307 () Bool)

(assert (=> b!8008307 (= e!4717577 (Cons!74749 (head!16336 lt!2715908) Nil!74749))))

(declare-fun d!2388025 () Bool)

(assert (=> d!2388025 e!4717578))

(declare-fun res!3166768 () Bool)

(assert (=> d!2388025 (=> (not res!3166768) (not e!4717578))))

(assert (=> d!2388025 (= res!3166768 (= (content!15897 lt!2716039) (set.union (content!15897 testedP!353) (content!15897 (Cons!74749 (head!16336 lt!2715908) Nil!74749)))))))

(assert (=> d!2388025 (= lt!2716039 e!4717577)))

(declare-fun c!1470080 () Bool)

(assert (=> d!2388025 (= c!1470080 (is-Nil!74749 testedP!353))))

(assert (=> d!2388025 (= (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749)) lt!2716039)))

(declare-fun b!8008309 () Bool)

(declare-fun res!3166767 () Bool)

(assert (=> b!8008309 (=> (not res!3166767) (not e!4717578))))

(assert (=> b!8008309 (= res!3166767 (= (size!43546 lt!2716039) (+ (size!43546 testedP!353) (size!43546 (Cons!74749 (head!16336 lt!2715908) Nil!74749)))))))

(assert (= (and d!2388025 c!1470080) b!8008307))

(assert (= (and d!2388025 (not c!1470080)) b!8008308))

(assert (= (and d!2388025 res!3166768) b!8008309))

(assert (= (and b!8008309 res!3166767) b!8008310))

(declare-fun m!8373330 () Bool)

(assert (=> b!8008308 m!8373330))

(declare-fun m!8373332 () Bool)

(assert (=> d!2388025 m!8373332))

(assert (=> d!2388025 m!8373156))

(declare-fun m!8373334 () Bool)

(assert (=> d!2388025 m!8373334))

(declare-fun m!8373336 () Bool)

(assert (=> b!8008309 m!8373336))

(assert (=> b!8008309 m!8373050))

(declare-fun m!8373338 () Bool)

(assert (=> b!8008309 m!8373338))

(assert (=> b!8008057 d!2388025))

(declare-fun b!8008311 () Bool)

(declare-fun e!4717580 () Bool)

(declare-fun e!4717579 () Bool)

(assert (=> b!8008311 (= e!4717580 e!4717579)))

(declare-fun res!3166771 () Bool)

(assert (=> b!8008311 (=> (not res!3166771) (not e!4717579))))

(assert (=> b!8008311 (= res!3166771 (not (is-Nil!74749 totalInput!1349)))))

(declare-fun b!8008312 () Bool)

(declare-fun res!3166769 () Bool)

(assert (=> b!8008312 (=> (not res!3166769) (not e!4717579))))

(assert (=> b!8008312 (= res!3166769 (= (head!16336 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749))) (head!16336 totalInput!1349)))))

(declare-fun b!8008314 () Bool)

(declare-fun e!4717581 () Bool)

(assert (=> b!8008314 (= e!4717581 (>= (size!43546 totalInput!1349) (size!43546 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749)))))))

(declare-fun b!8008313 () Bool)

(assert (=> b!8008313 (= e!4717579 (isPrefix!6698 (tail!15859 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749))) (tail!15859 totalInput!1349)))))

(declare-fun d!2388027 () Bool)

(assert (=> d!2388027 e!4717581))

(declare-fun res!3166772 () Bool)

(assert (=> d!2388027 (=> res!3166772 e!4717581)))

(declare-fun lt!2716040 () Bool)

(assert (=> d!2388027 (= res!3166772 (not lt!2716040))))

(assert (=> d!2388027 (= lt!2716040 e!4717580)))

(declare-fun res!3166770 () Bool)

(assert (=> d!2388027 (=> res!3166770 e!4717580)))

(assert (=> d!2388027 (= res!3166770 (is-Nil!74749 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749))))))

(assert (=> d!2388027 (= (isPrefix!6698 (++!18470 testedP!353 (Cons!74749 (head!16336 lt!2715908) Nil!74749)) totalInput!1349) lt!2716040)))

(assert (= (and d!2388027 (not res!3166770)) b!8008311))

(assert (= (and b!8008311 res!3166771) b!8008312))

(assert (= (and b!8008312 res!3166769) b!8008313))

(assert (= (and d!2388027 (not res!3166772)) b!8008314))

(assert (=> b!8008312 m!8373068))

(declare-fun m!8373342 () Bool)

(assert (=> b!8008312 m!8373342))

(assert (=> b!8008312 m!8373244))

(assert (=> b!8008314 m!8373090))

(assert (=> b!8008314 m!8373068))

(declare-fun m!8373344 () Bool)

(assert (=> b!8008314 m!8373344))

(assert (=> b!8008313 m!8373068))

(declare-fun m!8373346 () Bool)

(assert (=> b!8008313 m!8373346))

(assert (=> b!8008313 m!8373224))

(assert (=> b!8008313 m!8373346))

(assert (=> b!8008313 m!8373224))

(declare-fun m!8373348 () Bool)

(assert (=> b!8008313 m!8373348))

(assert (=> b!8008057 d!2388027))

(declare-fun b!8008318 () Bool)

(declare-fun lt!2716041 () List!74873)

(declare-fun e!4717583 () Bool)

(assert (=> b!8008318 (= e!4717583 (or (not (= lt!2715913 Nil!74749)) (= lt!2716041 lt!2715911)))))

(declare-fun b!8008316 () Bool)

(declare-fun e!4717582 () List!74873)

(assert (=> b!8008316 (= e!4717582 (Cons!74749 (h!81197 lt!2715911) (++!18470 (t!390616 lt!2715911) lt!2715913)))))

(declare-fun b!8008315 () Bool)

(assert (=> b!8008315 (= e!4717582 lt!2715913)))

(declare-fun d!2388031 () Bool)

(assert (=> d!2388031 e!4717583))

(declare-fun res!3166774 () Bool)

(assert (=> d!2388031 (=> (not res!3166774) (not e!4717583))))

(assert (=> d!2388031 (= res!3166774 (= (content!15897 lt!2716041) (set.union (content!15897 lt!2715911) (content!15897 lt!2715913))))))

(assert (=> d!2388031 (= lt!2716041 e!4717582)))

(declare-fun c!1470081 () Bool)

(assert (=> d!2388031 (= c!1470081 (is-Nil!74749 lt!2715911))))

(assert (=> d!2388031 (= (++!18470 lt!2715911 lt!2715913) lt!2716041)))

(declare-fun b!8008317 () Bool)

(declare-fun res!3166773 () Bool)

(assert (=> b!8008317 (=> (not res!3166773) (not e!4717583))))

(assert (=> b!8008317 (= res!3166773 (= (size!43546 lt!2716041) (+ (size!43546 lt!2715911) (size!43546 lt!2715913))))))

(assert (= (and d!2388031 c!1470081) b!8008315))

(assert (= (and d!2388031 (not c!1470081)) b!8008316))

(assert (= (and d!2388031 res!3166774) b!8008317))

(assert (= (and b!8008317 res!3166773) b!8008318))

(declare-fun m!8373350 () Bool)

(assert (=> b!8008316 m!8373350))

(declare-fun m!8373352 () Bool)

(assert (=> d!2388031 m!8373352))

(declare-fun m!8373354 () Bool)

(assert (=> d!2388031 m!8373354))

(declare-fun m!8373356 () Bool)

(assert (=> d!2388031 m!8373356))

(declare-fun m!8373358 () Bool)

(assert (=> b!8008317 m!8373358))

(declare-fun m!8373360 () Bool)

(assert (=> b!8008317 m!8373360))

(declare-fun m!8373362 () Bool)

(assert (=> b!8008317 m!8373362))

(assert (=> b!8008057 d!2388031))

(declare-fun b!8008322 () Bool)

(declare-fun e!4717585 () Bool)

(declare-fun lt!2716042 () List!74873)

(assert (=> b!8008322 (= e!4717585 (or (not (= (Cons!74749 lt!2715922 Nil!74749) Nil!74749)) (= lt!2716042 testedP!353)))))

(declare-fun b!8008320 () Bool)

(declare-fun e!4717584 () List!74873)

(assert (=> b!8008320 (= e!4717584 (Cons!74749 (h!81197 testedP!353) (++!18470 (t!390616 testedP!353) (Cons!74749 lt!2715922 Nil!74749))))))

(declare-fun b!8008319 () Bool)

(assert (=> b!8008319 (= e!4717584 (Cons!74749 lt!2715922 Nil!74749))))

(declare-fun d!2388033 () Bool)

(assert (=> d!2388033 e!4717585))

(declare-fun res!3166776 () Bool)

(assert (=> d!2388033 (=> (not res!3166776) (not e!4717585))))

(assert (=> d!2388033 (= res!3166776 (= (content!15897 lt!2716042) (set.union (content!15897 testedP!353) (content!15897 (Cons!74749 lt!2715922 Nil!74749)))))))

(assert (=> d!2388033 (= lt!2716042 e!4717584)))

(declare-fun c!1470082 () Bool)

(assert (=> d!2388033 (= c!1470082 (is-Nil!74749 testedP!353))))

(assert (=> d!2388033 (= (++!18470 testedP!353 (Cons!74749 lt!2715922 Nil!74749)) lt!2716042)))

(declare-fun b!8008321 () Bool)

(declare-fun res!3166775 () Bool)

(assert (=> b!8008321 (=> (not res!3166775) (not e!4717585))))

(assert (=> b!8008321 (= res!3166775 (= (size!43546 lt!2716042) (+ (size!43546 testedP!353) (size!43546 (Cons!74749 lt!2715922 Nil!74749)))))))

(assert (= (and d!2388033 c!1470082) b!8008319))

(assert (= (and d!2388033 (not c!1470082)) b!8008320))

(assert (= (and d!2388033 res!3166776) b!8008321))

(assert (= (and b!8008321 res!3166775) b!8008322))

(declare-fun m!8373364 () Bool)

(assert (=> b!8008320 m!8373364))

(declare-fun m!8373366 () Bool)

(assert (=> d!2388033 m!8373366))

(assert (=> d!2388033 m!8373156))

(declare-fun m!8373368 () Bool)

(assert (=> d!2388033 m!8373368))

(declare-fun m!8373370 () Bool)

(assert (=> b!8008321 m!8373370))

(assert (=> b!8008321 m!8373050))

(declare-fun m!8373372 () Bool)

(assert (=> b!8008321 m!8373372))

(assert (=> b!8008057 d!2388033))

(declare-fun d!2388035 () Bool)

(assert (=> d!2388035 (= (tail!15859 testedSuffix!271) (t!390616 testedSuffix!271))))

(assert (=> b!8008057 d!2388035))

(declare-fun b!8008335 () Bool)

(declare-fun e!4717588 () Bool)

(declare-fun tp!2396213 () Bool)

(assert (=> b!8008335 (= e!4717588 tp!2396213)))

(declare-fun b!8008334 () Bool)

(declare-fun tp!2396216 () Bool)

(declare-fun tp!2396217 () Bool)

(assert (=> b!8008334 (= e!4717588 (and tp!2396216 tp!2396217))))

(declare-fun b!8008336 () Bool)

(declare-fun tp!2396214 () Bool)

(declare-fun tp!2396215 () Bool)

(assert (=> b!8008336 (= e!4717588 (and tp!2396214 tp!2396215))))

(declare-fun b!8008333 () Bool)

(assert (=> b!8008333 (= e!4717588 tp_is_empty!53831)))

(assert (=> b!8008065 (= tp!2396174 e!4717588)))

(assert (= (and b!8008065 (is-ElementMatch!21644 (regOne!43801 r!15422))) b!8008333))

(assert (= (and b!8008065 (is-Concat!30643 (regOne!43801 r!15422))) b!8008334))

(assert (= (and b!8008065 (is-Star!21644 (regOne!43801 r!15422))) b!8008335))

(assert (= (and b!8008065 (is-Union!21644 (regOne!43801 r!15422))) b!8008336))

(declare-fun b!8008339 () Bool)

(declare-fun e!4717589 () Bool)

(declare-fun tp!2396218 () Bool)

(assert (=> b!8008339 (= e!4717589 tp!2396218)))

(declare-fun b!8008338 () Bool)

(declare-fun tp!2396221 () Bool)

(declare-fun tp!2396222 () Bool)

(assert (=> b!8008338 (= e!4717589 (and tp!2396221 tp!2396222))))

(declare-fun b!8008340 () Bool)

(declare-fun tp!2396219 () Bool)

(declare-fun tp!2396220 () Bool)

(assert (=> b!8008340 (= e!4717589 (and tp!2396219 tp!2396220))))

(declare-fun b!8008337 () Bool)

(assert (=> b!8008337 (= e!4717589 tp_is_empty!53831)))

(assert (=> b!8008065 (= tp!2396173 e!4717589)))

(assert (= (and b!8008065 (is-ElementMatch!21644 (regTwo!43801 r!15422))) b!8008337))

(assert (= (and b!8008065 (is-Concat!30643 (regTwo!43801 r!15422))) b!8008338))

(assert (= (and b!8008065 (is-Star!21644 (regTwo!43801 r!15422))) b!8008339))

(assert (= (and b!8008065 (is-Union!21644 (regTwo!43801 r!15422))) b!8008340))

(declare-fun b!8008345 () Bool)

(declare-fun e!4717592 () Bool)

(declare-fun tp!2396225 () Bool)

(assert (=> b!8008345 (= e!4717592 (and tp_is_empty!53831 tp!2396225))))

(assert (=> b!8008056 (= tp!2396172 e!4717592)))

(assert (= (and b!8008056 (is-Cons!74749 (t!390616 totalInput!1349))) b!8008345))

(declare-fun b!8008346 () Bool)

(declare-fun e!4717593 () Bool)

(declare-fun tp!2396226 () Bool)

(assert (=> b!8008346 (= e!4717593 (and tp_is_empty!53831 tp!2396226))))

(assert (=> b!8008050 (= tp!2396177 e!4717593)))

(assert (= (and b!8008050 (is-Cons!74749 (t!390616 testedP!353))) b!8008346))

(declare-fun b!8008349 () Bool)

(declare-fun e!4717594 () Bool)

(declare-fun tp!2396227 () Bool)

(assert (=> b!8008349 (= e!4717594 tp!2396227)))

(declare-fun b!8008348 () Bool)

(declare-fun tp!2396230 () Bool)

(declare-fun tp!2396231 () Bool)

(assert (=> b!8008348 (= e!4717594 (and tp!2396230 tp!2396231))))

(declare-fun b!8008350 () Bool)

(declare-fun tp!2396228 () Bool)

(declare-fun tp!2396229 () Bool)

(assert (=> b!8008350 (= e!4717594 (and tp!2396228 tp!2396229))))

(declare-fun b!8008347 () Bool)

(assert (=> b!8008347 (= e!4717594 tp_is_empty!53831)))

(assert (=> b!8008066 (= tp!2396178 e!4717594)))

(assert (= (and b!8008066 (is-ElementMatch!21644 (regOne!43800 r!15422))) b!8008347))

(assert (= (and b!8008066 (is-Concat!30643 (regOne!43800 r!15422))) b!8008348))

(assert (= (and b!8008066 (is-Star!21644 (regOne!43800 r!15422))) b!8008349))

(assert (= (and b!8008066 (is-Union!21644 (regOne!43800 r!15422))) b!8008350))

(declare-fun b!8008353 () Bool)

(declare-fun e!4717595 () Bool)

(declare-fun tp!2396232 () Bool)

(assert (=> b!8008353 (= e!4717595 tp!2396232)))

(declare-fun b!8008352 () Bool)

(declare-fun tp!2396235 () Bool)

(declare-fun tp!2396236 () Bool)

(assert (=> b!8008352 (= e!4717595 (and tp!2396235 tp!2396236))))

(declare-fun b!8008354 () Bool)

(declare-fun tp!2396233 () Bool)

(declare-fun tp!2396234 () Bool)

(assert (=> b!8008354 (= e!4717595 (and tp!2396233 tp!2396234))))

(declare-fun b!8008351 () Bool)

(assert (=> b!8008351 (= e!4717595 tp_is_empty!53831)))

(assert (=> b!8008066 (= tp!2396175 e!4717595)))

(assert (= (and b!8008066 (is-ElementMatch!21644 (regTwo!43800 r!15422))) b!8008351))

(assert (= (and b!8008066 (is-Concat!30643 (regTwo!43800 r!15422))) b!8008352))

(assert (= (and b!8008066 (is-Star!21644 (regTwo!43800 r!15422))) b!8008353))

(assert (= (and b!8008066 (is-Union!21644 (regTwo!43800 r!15422))) b!8008354))

(declare-fun b!8008355 () Bool)

(declare-fun e!4717596 () Bool)

(declare-fun tp!2396237 () Bool)

(assert (=> b!8008355 (= e!4717596 (and tp_is_empty!53831 tp!2396237))))

(assert (=> b!8008061 (= tp!2396176 e!4717596)))

(assert (= (and b!8008061 (is-Cons!74749 (t!390616 testedSuffix!271))) b!8008355))

(declare-fun b!8008358 () Bool)

(declare-fun e!4717597 () Bool)

(declare-fun tp!2396238 () Bool)

(assert (=> b!8008358 (= e!4717597 tp!2396238)))

(declare-fun b!8008357 () Bool)

(declare-fun tp!2396241 () Bool)

(declare-fun tp!2396242 () Bool)

(assert (=> b!8008357 (= e!4717597 (and tp!2396241 tp!2396242))))

(declare-fun b!8008359 () Bool)

(declare-fun tp!2396239 () Bool)

(declare-fun tp!2396240 () Bool)

(assert (=> b!8008359 (= e!4717597 (and tp!2396239 tp!2396240))))

(declare-fun b!8008356 () Bool)

(assert (=> b!8008356 (= e!4717597 tp_is_empty!53831)))

(assert (=> b!8008052 (= tp!2396171 e!4717597)))

(assert (= (and b!8008052 (is-ElementMatch!21644 (reg!21973 r!15422))) b!8008356))

(assert (= (and b!8008052 (is-Concat!30643 (reg!21973 r!15422))) b!8008357))

(assert (= (and b!8008052 (is-Star!21644 (reg!21973 r!15422))) b!8008358))

(assert (= (and b!8008052 (is-Union!21644 (reg!21973 r!15422))) b!8008359))

(push 1)

(assert (not b!8008346))

(assert (not b!8008296))

(assert (not d!2388005))

(assert (not b!8008314))

(assert (not b!8008355))

(assert (not b!8008321))

(assert (not b!8008358))

(assert (not bm!743942))

(assert (not b!8008225))

(assert (not b!8008207))

(assert (not bm!743962))

(assert (not b!8008348))

(assert (not b!8008298))

(assert (not d!2388033))

(assert (not d!2388021))

(assert (not b!8008349))

(assert (not b!8008143))

(assert (not b!8008280))

(assert (not b!8008297))

(assert (not d!2387989))

(assert (not b!8008250))

(assert (not b!8008312))

(assert (not b!8008359))

(assert (not b!8008339))

(assert (not d!2387973))

(assert (not bm!743943))

(assert (not d!2387997))

(assert (not b!8008234))

(assert (not b!8008317))

(assert (not b!8008336))

(assert (not b!8008352))

(assert (not d!2387953))

(assert (not b!8008224))

(assert (not d!2388031))

(assert (not b!8008335))

(assert (not b!8008233))

(assert (not b!8008132))

(assert (not b!8008192))

(assert (not d!2387979))

(assert tp_is_empty!53831)

(assert (not d!2387993))

(assert (not d!2388009))

(assert (not bm!743963))

(assert (not b!8008142))

(assert (not b!8008309))

(assert (not b!8008316))

(assert (not d!2387959))

(assert (not b!8008340))

(assert (not b!8008350))

(assert (not b!8008226))

(assert (not d!2387975))

(assert (not b!8008354))

(assert (not d!2388013))

(assert (not b!8008357))

(assert (not b!8008338))

(assert (not b!8008334))

(assert (not b!8008320))

(assert (not b!8008353))

(assert (not d!2388025))

(assert (not b!8008313))

(assert (not b!8008345))

(assert (not b!8008232))

(assert (not b!8008308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

