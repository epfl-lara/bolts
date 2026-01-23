; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!729314 () Bool)

(assert start!729314)

(declare-fun b!7540838 () Bool)

(declare-fun e!4492947 () Bool)

(declare-fun e!4492951 () Bool)

(assert (=> b!7540838 (= e!4492947 e!4492951)))

(declare-fun res!3022023 () Bool)

(assert (=> b!7540838 (=> res!3022023 e!4492951)))

(declare-datatypes ((C!40134 0))(
  ( (C!40135 (val!30507 Int)) )
))
(declare-datatypes ((List!72787 0))(
  ( (Nil!72663) (Cons!72663 (h!79111 C!40134) (t!387494 List!72787)) )
))
(declare-fun lt!2643229 () List!72787)

(declare-fun input!7874 () List!72787)

(assert (=> b!7540838 (= res!3022023 (not (= lt!2643229 input!7874)))))

(declare-fun lt!2643224 () List!72787)

(assert (=> b!7540838 (= lt!2643224 lt!2643229)))

(declare-fun testedP!423 () List!72787)

(declare-fun lt!2643230 () List!72787)

(declare-fun ++!17421 (List!72787 List!72787) List!72787)

(assert (=> b!7540838 (= lt!2643229 (++!17421 testedP!423 lt!2643230))))

(declare-fun lt!2643217 () List!72787)

(declare-fun lt!2643231 () List!72787)

(assert (=> b!7540838 (= lt!2643230 (++!17421 lt!2643217 lt!2643231))))

(declare-datatypes ((Unit!166746 0))(
  ( (Unit!166747) )
))
(declare-fun lt!2643228 () Unit!166746)

(declare-fun lemmaConcatAssociativity!3069 (List!72787 List!72787 List!72787) Unit!166746)

(assert (=> b!7540838 (= lt!2643228 (lemmaConcatAssociativity!3069 testedP!423 lt!2643217 lt!2643231))))

(declare-fun b!7540839 () Bool)

(declare-fun res!3022014 () Bool)

(declare-fun e!4492952 () Bool)

(assert (=> b!7540839 (=> res!3022014 e!4492952)))

(declare-datatypes ((Regex!19904 0))(
  ( (ElementMatch!19904 (c!1392271 C!40134)) (Concat!28749 (regOne!40320 Regex!19904) (regTwo!40320 Regex!19904)) (EmptyExpr!19904) (Star!19904 (reg!20233 Regex!19904)) (EmptyLang!19904) (Union!19904 (regOne!40321 Regex!19904) (regTwo!40321 Regex!19904)) )
))
(declare-fun r!24333 () Regex!19904)

(declare-fun lostCause!1696 (Regex!19904) Bool)

(assert (=> b!7540839 (= res!3022014 (lostCause!1696 r!24333))))

(declare-fun b!7540840 () Bool)

(declare-fun e!4492950 () Bool)

(declare-fun tp!2193396 () Bool)

(declare-fun tp!2193390 () Bool)

(assert (=> b!7540840 (= e!4492950 (and tp!2193396 tp!2193390))))

(declare-fun b!7540841 () Bool)

(declare-fun e!4492943 () Bool)

(declare-fun tp_is_empty!50163 () Bool)

(declare-fun tp!2193397 () Bool)

(assert (=> b!7540841 (= e!4492943 (and tp_is_empty!50163 tp!2193397))))

(declare-fun b!7540842 () Bool)

(declare-fun e!4492948 () Bool)

(assert (=> b!7540842 (= e!4492952 e!4492948)))

(declare-fun res!3022026 () Bool)

(assert (=> b!7540842 (=> res!3022026 e!4492948)))

(declare-fun knownP!30 () List!72787)

(assert (=> b!7540842 (= res!3022026 (not (= (++!17421 knownP!30 lt!2643231) input!7874)))))

(declare-fun getSuffix!3590 (List!72787 List!72787) List!72787)

(assert (=> b!7540842 (= lt!2643231 (getSuffix!3590 input!7874 knownP!30))))

(declare-fun lt!2643219 () List!72787)

(declare-fun lt!2643222 () List!72787)

(assert (=> b!7540842 (= lt!2643219 (getSuffix!3590 knownP!30 lt!2643222))))

(declare-fun isPrefix!6110 (List!72787 List!72787) Bool)

(assert (=> b!7540842 (isPrefix!6110 lt!2643222 knownP!30)))

(declare-fun lt!2643232 () Unit!166746)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!860 (List!72787 List!72787 List!72787) Unit!166746)

(assert (=> b!7540842 (= lt!2643232 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!860 knownP!30 lt!2643222 input!7874))))

(declare-fun baseR!101 () Regex!19904)

(declare-fun lt!2643233 () C!40134)

(declare-fun derivative!436 (Regex!19904 List!72787) Regex!19904)

(declare-fun derivativeStep!5694 (Regex!19904 C!40134) Regex!19904)

(assert (=> b!7540842 (= (derivative!436 baseR!101 lt!2643222) (derivativeStep!5694 r!24333 lt!2643233))))

(declare-fun lt!2643218 () Unit!166746)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!142 (Regex!19904 Regex!19904 List!72787 C!40134) Unit!166746)

(assert (=> b!7540842 (= lt!2643218 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!142 baseR!101 r!24333 testedP!423 lt!2643233))))

(assert (=> b!7540842 (isPrefix!6110 lt!2643222 input!7874)))

(declare-fun lt!2643221 () Unit!166746)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1175 (List!72787 List!72787) Unit!166746)

(assert (=> b!7540842 (= lt!2643221 (lemmaAddHeadSuffixToPrefixStillPrefix!1175 testedP!423 input!7874))))

(assert (=> b!7540842 (= lt!2643222 (++!17421 testedP!423 (Cons!72663 lt!2643233 Nil!72663)))))

(declare-fun lt!2643234 () List!72787)

(declare-fun head!15494 (List!72787) C!40134)

(assert (=> b!7540842 (= lt!2643233 (head!15494 lt!2643234))))

(assert (=> b!7540842 (= lt!2643234 (getSuffix!3590 input!7874 testedP!423))))

(declare-fun b!7540843 () Bool)

(declare-fun e!4492953 () Bool)

(assert (=> b!7540843 (= e!4492951 e!4492953)))

(declare-fun res!3022024 () Bool)

(assert (=> b!7540843 (=> res!3022024 e!4492953)))

(assert (=> b!7540843 (= res!3022024 (not (= (head!15494 lt!2643217) lt!2643233)))))

(assert (=> b!7540843 (= lt!2643230 lt!2643234)))

(declare-fun lt!2643225 () Unit!166746)

(declare-fun lemmaSamePrefixThenSameSuffix!2838 (List!72787 List!72787 List!72787 List!72787 List!72787) Unit!166746)

(assert (=> b!7540843 (= lt!2643225 (lemmaSamePrefixThenSameSuffix!2838 testedP!423 lt!2643230 testedP!423 lt!2643234 input!7874))))

(declare-fun b!7540844 () Bool)

(declare-fun res!3022011 () Bool)

(declare-fun e!4492946 () Bool)

(assert (=> b!7540844 (=> (not res!3022011) (not e!4492946))))

(assert (=> b!7540844 (= res!3022011 (isPrefix!6110 knownP!30 input!7874))))

(declare-fun b!7540845 () Bool)

(declare-fun res!3022015 () Bool)

(assert (=> b!7540845 (=> (not res!3022015) (not e!4492946))))

(assert (=> b!7540845 (= res!3022015 (isPrefix!6110 testedP!423 input!7874))))

(declare-fun b!7540846 () Bool)

(assert (=> b!7540846 (= e!4492948 e!4492947)))

(declare-fun res!3022018 () Bool)

(assert (=> b!7540846 (=> res!3022018 e!4492947)))

(assert (=> b!7540846 (= res!3022018 (not (= lt!2643224 input!7874)))))

(declare-fun lt!2643223 () List!72787)

(assert (=> b!7540846 (= lt!2643224 (++!17421 lt!2643223 lt!2643231))))

(assert (=> b!7540846 (= lt!2643223 (++!17421 testedP!423 lt!2643217))))

(declare-fun b!7540847 () Bool)

(declare-fun e!4492945 () Bool)

(declare-fun tp!2193400 () Bool)

(assert (=> b!7540847 (= e!4492945 tp!2193400)))

(declare-fun b!7540848 () Bool)

(declare-fun res!3022022 () Bool)

(assert (=> b!7540848 (=> res!3022022 e!4492947)))

(assert (=> b!7540848 (= res!3022022 (not (= (++!17421 testedP!423 lt!2643234) input!7874)))))

(declare-fun res!3022017 () Bool)

(assert (=> start!729314 (=> (not res!3022017) (not e!4492946))))

(declare-fun validRegex!10332 (Regex!19904) Bool)

(assert (=> start!729314 (= res!3022017 (validRegex!10332 baseR!101))))

(assert (=> start!729314 e!4492946))

(assert (=> start!729314 e!4492950))

(declare-fun e!4492942 () Bool)

(assert (=> start!729314 e!4492942))

(declare-fun e!4492944 () Bool)

(assert (=> start!729314 e!4492944))

(assert (=> start!729314 e!4492943))

(assert (=> start!729314 e!4492945))

(declare-fun b!7540849 () Bool)

(declare-fun tp!2193391 () Bool)

(assert (=> b!7540849 (= e!4492942 (and tp_is_empty!50163 tp!2193391))))

(declare-fun b!7540850 () Bool)

(declare-fun tp!2193394 () Bool)

(assert (=> b!7540850 (= e!4492944 (and tp_is_empty!50163 tp!2193394))))

(declare-fun b!7540851 () Bool)

(declare-fun tp!2193399 () Bool)

(declare-fun tp!2193388 () Bool)

(assert (=> b!7540851 (= e!4492945 (and tp!2193399 tp!2193388))))

(declare-fun b!7540852 () Bool)

(declare-fun res!3022025 () Bool)

(assert (=> b!7540852 (=> res!3022025 e!4492953)))

(declare-fun $colon$colon!3364 (List!72787 C!40134) List!72787)

(declare-fun tail!15040 (List!72787) List!72787)

(assert (=> b!7540852 (= res!3022025 (not (= lt!2643217 ($colon$colon!3364 (tail!15040 lt!2643217) lt!2643233))))))

(declare-fun b!7540853 () Bool)

(declare-fun tp!2193395 () Bool)

(declare-fun tp!2193389 () Bool)

(assert (=> b!7540853 (= e!4492950 (and tp!2193395 tp!2193389))))

(declare-fun b!7540854 () Bool)

(assert (=> b!7540854 (= e!4492950 tp_is_empty!50163)))

(declare-fun b!7540855 () Bool)

(declare-fun res!3022019 () Bool)

(assert (=> b!7540855 (=> res!3022019 e!4492952)))

(declare-fun lt!2643227 () Int)

(declare-fun lt!2643226 () Int)

(assert (=> b!7540855 (= res!3022019 (= lt!2643227 lt!2643226))))

(declare-fun b!7540856 () Bool)

(assert (=> b!7540856 (= e!4492953 (or (not (= lt!2643223 knownP!30)) (not (= lt!2643234 Nil!72663))))))

(declare-fun b!7540857 () Bool)

(declare-fun tp!2193392 () Bool)

(declare-fun tp!2193398 () Bool)

(assert (=> b!7540857 (= e!4492945 (and tp!2193392 tp!2193398))))

(declare-fun b!7540858 () Bool)

(assert (=> b!7540858 (= e!4492945 tp_is_empty!50163)))

(declare-fun b!7540859 () Bool)

(declare-fun e!4492949 () Bool)

(assert (=> b!7540859 (= e!4492946 e!4492949)))

(declare-fun res!3022027 () Bool)

(assert (=> b!7540859 (=> (not res!3022027) (not e!4492949))))

(assert (=> b!7540859 (= res!3022027 (>= lt!2643226 lt!2643227))))

(declare-fun size!42400 (List!72787) Int)

(assert (=> b!7540859 (= lt!2643227 (size!42400 testedP!423))))

(assert (=> b!7540859 (= lt!2643226 (size!42400 knownP!30))))

(declare-fun b!7540860 () Bool)

(declare-fun res!3022016 () Bool)

(assert (=> b!7540860 (=> (not res!3022016) (not e!4492946))))

(assert (=> b!7540860 (= res!3022016 (validRegex!10332 r!24333))))

(declare-fun b!7540861 () Bool)

(assert (=> b!7540861 (= e!4492949 (not e!4492952))))

(declare-fun res!3022013 () Bool)

(assert (=> b!7540861 (=> res!3022013 e!4492952)))

(declare-fun matchR!9506 (Regex!19904 List!72787) Bool)

(assert (=> b!7540861 (= res!3022013 (not (matchR!9506 r!24333 lt!2643217)))))

(assert (=> b!7540861 (= lt!2643217 (getSuffix!3590 knownP!30 testedP!423))))

(assert (=> b!7540861 (isPrefix!6110 testedP!423 knownP!30)))

(declare-fun lt!2643220 () Unit!166746)

(assert (=> b!7540861 (= lt!2643220 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!860 knownP!30 testedP!423 input!7874))))

(declare-fun b!7540862 () Bool)

(declare-fun res!3022020 () Bool)

(assert (=> b!7540862 (=> res!3022020 e!4492952)))

(assert (=> b!7540862 (= res!3022020 (not (= (derivative!436 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7540863 () Bool)

(declare-fun res!3022012 () Bool)

(assert (=> b!7540863 (=> res!3022012 e!4492952)))

(assert (=> b!7540863 (= res!3022012 (>= lt!2643227 (size!42400 input!7874)))))

(declare-fun b!7540864 () Bool)

(declare-fun tp!2193393 () Bool)

(assert (=> b!7540864 (= e!4492950 tp!2193393)))

(declare-fun b!7540865 () Bool)

(declare-fun res!3022021 () Bool)

(assert (=> b!7540865 (=> (not res!3022021) (not e!4492949))))

(assert (=> b!7540865 (= res!3022021 (matchR!9506 baseR!101 knownP!30))))

(assert (= (and start!729314 res!3022017) b!7540860))

(assert (= (and b!7540860 res!3022016) b!7540845))

(assert (= (and b!7540845 res!3022015) b!7540844))

(assert (= (and b!7540844 res!3022011) b!7540859))

(assert (= (and b!7540859 res!3022027) b!7540865))

(assert (= (and b!7540865 res!3022021) b!7540861))

(assert (= (and b!7540861 (not res!3022013)) b!7540862))

(assert (= (and b!7540862 (not res!3022020)) b!7540839))

(assert (= (and b!7540839 (not res!3022014)) b!7540855))

(assert (= (and b!7540855 (not res!3022019)) b!7540863))

(assert (= (and b!7540863 (not res!3022012)) b!7540842))

(assert (= (and b!7540842 (not res!3022026)) b!7540846))

(assert (= (and b!7540846 (not res!3022018)) b!7540848))

(assert (= (and b!7540848 (not res!3022022)) b!7540838))

(assert (= (and b!7540838 (not res!3022023)) b!7540843))

(assert (= (and b!7540843 (not res!3022024)) b!7540852))

(assert (= (and b!7540852 (not res!3022025)) b!7540856))

(assert (= (and start!729314 (is-ElementMatch!19904 baseR!101)) b!7540854))

(assert (= (and start!729314 (is-Concat!28749 baseR!101)) b!7540853))

(assert (= (and start!729314 (is-Star!19904 baseR!101)) b!7540864))

(assert (= (and start!729314 (is-Union!19904 baseR!101)) b!7540840))

(assert (= (and start!729314 (is-Cons!72663 input!7874)) b!7540849))

(assert (= (and start!729314 (is-Cons!72663 knownP!30)) b!7540850))

(assert (= (and start!729314 (is-Cons!72663 testedP!423)) b!7540841))

(assert (= (and start!729314 (is-ElementMatch!19904 r!24333)) b!7540858))

(assert (= (and start!729314 (is-Concat!28749 r!24333)) b!7540857))

(assert (= (and start!729314 (is-Star!19904 r!24333)) b!7540847))

(assert (= (and start!729314 (is-Union!19904 r!24333)) b!7540851))

(declare-fun m!8110166 () Bool)

(assert (=> b!7540852 m!8110166))

(assert (=> b!7540852 m!8110166))

(declare-fun m!8110168 () Bool)

(assert (=> b!7540852 m!8110168))

(declare-fun m!8110170 () Bool)

(assert (=> b!7540842 m!8110170))

(declare-fun m!8110172 () Bool)

(assert (=> b!7540842 m!8110172))

(declare-fun m!8110174 () Bool)

(assert (=> b!7540842 m!8110174))

(declare-fun m!8110176 () Bool)

(assert (=> b!7540842 m!8110176))

(declare-fun m!8110178 () Bool)

(assert (=> b!7540842 m!8110178))

(declare-fun m!8110180 () Bool)

(assert (=> b!7540842 m!8110180))

(declare-fun m!8110182 () Bool)

(assert (=> b!7540842 m!8110182))

(declare-fun m!8110184 () Bool)

(assert (=> b!7540842 m!8110184))

(declare-fun m!8110186 () Bool)

(assert (=> b!7540842 m!8110186))

(declare-fun m!8110188 () Bool)

(assert (=> b!7540842 m!8110188))

(declare-fun m!8110190 () Bool)

(assert (=> b!7540842 m!8110190))

(declare-fun m!8110192 () Bool)

(assert (=> b!7540842 m!8110192))

(declare-fun m!8110194 () Bool)

(assert (=> b!7540842 m!8110194))

(declare-fun m!8110196 () Bool)

(assert (=> start!729314 m!8110196))

(declare-fun m!8110198 () Bool)

(assert (=> b!7540860 m!8110198))

(declare-fun m!8110200 () Bool)

(assert (=> b!7540838 m!8110200))

(declare-fun m!8110202 () Bool)

(assert (=> b!7540838 m!8110202))

(declare-fun m!8110204 () Bool)

(assert (=> b!7540838 m!8110204))

(declare-fun m!8110206 () Bool)

(assert (=> b!7540843 m!8110206))

(declare-fun m!8110208 () Bool)

(assert (=> b!7540843 m!8110208))

(declare-fun m!8110210 () Bool)

(assert (=> b!7540863 m!8110210))

(declare-fun m!8110212 () Bool)

(assert (=> b!7540839 m!8110212))

(declare-fun m!8110214 () Bool)

(assert (=> b!7540859 m!8110214))

(declare-fun m!8110216 () Bool)

(assert (=> b!7540859 m!8110216))

(declare-fun m!8110218 () Bool)

(assert (=> b!7540861 m!8110218))

(declare-fun m!8110220 () Bool)

(assert (=> b!7540861 m!8110220))

(declare-fun m!8110222 () Bool)

(assert (=> b!7540861 m!8110222))

(declare-fun m!8110224 () Bool)

(assert (=> b!7540861 m!8110224))

(declare-fun m!8110226 () Bool)

(assert (=> b!7540846 m!8110226))

(declare-fun m!8110228 () Bool)

(assert (=> b!7540846 m!8110228))

(declare-fun m!8110230 () Bool)

(assert (=> b!7540865 m!8110230))

(declare-fun m!8110232 () Bool)

(assert (=> b!7540848 m!8110232))

(declare-fun m!8110234 () Bool)

(assert (=> b!7540862 m!8110234))

(declare-fun m!8110236 () Bool)

(assert (=> b!7540844 m!8110236))

(declare-fun m!8110238 () Bool)

(assert (=> b!7540845 m!8110238))

(push 1)

(assert (not b!7540857))

(assert (not b!7540864))

(assert (not b!7540859))

(assert (not b!7540860))

(assert (not b!7540843))

(assert (not b!7540845))

(assert (not b!7540849))

(assert (not b!7540841))

(assert (not b!7540846))

(assert (not start!729314))

(assert (not b!7540865))

(assert (not b!7540840))

(assert (not b!7540851))

(assert (not b!7540842))

(assert (not b!7540839))

(assert (not b!7540852))

(assert (not b!7540853))

(assert (not b!7540862))

(assert (not b!7540863))

(assert tp_is_empty!50163)

(assert (not b!7540838))

(assert (not b!7540861))

(assert (not b!7540844))

(assert (not b!7540850))

(assert (not b!7540847))

(assert (not b!7540848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2311286 () Bool)

(declare-fun lt!2643291 () Int)

(assert (=> d!2311286 (>= lt!2643291 0)))

(declare-fun e!4492992 () Int)

(assert (=> d!2311286 (= lt!2643291 e!4492992)))

(declare-fun c!1392275 () Bool)

(assert (=> d!2311286 (= c!1392275 (is-Nil!72663 input!7874))))

(assert (=> d!2311286 (= (size!42400 input!7874) lt!2643291)))

(declare-fun b!7540954 () Bool)

(assert (=> b!7540954 (= e!4492992 0)))

(declare-fun b!7540955 () Bool)

(assert (=> b!7540955 (= e!4492992 (+ 1 (size!42400 (t!387494 input!7874))))))

(assert (= (and d!2311286 c!1392275) b!7540954))

(assert (= (and d!2311286 (not c!1392275)) b!7540955))

(declare-fun m!8110314 () Bool)

(assert (=> b!7540955 m!8110314))

(assert (=> b!7540863 d!2311286))

(declare-fun d!2311288 () Bool)

(assert (=> d!2311288 (= (head!15494 lt!2643234) (h!79111 lt!2643234))))

(assert (=> b!7540842 d!2311288))

(declare-fun d!2311290 () Bool)

(declare-fun lt!2643296 () List!72787)

(assert (=> d!2311290 (= (++!17421 testedP!423 lt!2643296) input!7874)))

(declare-fun e!4493009 () List!72787)

(assert (=> d!2311290 (= lt!2643296 e!4493009)))

(declare-fun c!1392284 () Bool)

(assert (=> d!2311290 (= c!1392284 (is-Cons!72663 testedP!423))))

(assert (=> d!2311290 (>= (size!42400 input!7874) (size!42400 testedP!423))))

(assert (=> d!2311290 (= (getSuffix!3590 input!7874 testedP!423) lt!2643296)))

(declare-fun b!7540988 () Bool)

(assert (=> b!7540988 (= e!4493009 (getSuffix!3590 (tail!15040 input!7874) (t!387494 testedP!423)))))

(declare-fun b!7540989 () Bool)

(assert (=> b!7540989 (= e!4493009 input!7874)))

(assert (= (and d!2311290 c!1392284) b!7540988))

(assert (= (and d!2311290 (not c!1392284)) b!7540989))

(declare-fun m!8110316 () Bool)

(assert (=> d!2311290 m!8110316))

(assert (=> d!2311290 m!8110210))

(assert (=> d!2311290 m!8110214))

(declare-fun m!8110318 () Bool)

(assert (=> b!7540988 m!8110318))

(assert (=> b!7540988 m!8110318))

(declare-fun m!8110320 () Bool)

(assert (=> b!7540988 m!8110320))

(assert (=> b!7540842 d!2311290))

(declare-fun b!7541013 () Bool)

(declare-fun res!3022111 () Bool)

(declare-fun e!4493024 () Bool)

(assert (=> b!7541013 (=> (not res!3022111) (not e!4493024))))

(assert (=> b!7541013 (= res!3022111 (= (head!15494 lt!2643222) (head!15494 input!7874)))))

(declare-fun b!7541014 () Bool)

(assert (=> b!7541014 (= e!4493024 (isPrefix!6110 (tail!15040 lt!2643222) (tail!15040 input!7874)))))

(declare-fun b!7541015 () Bool)

(declare-fun e!4493023 () Bool)

(assert (=> b!7541015 (= e!4493023 (>= (size!42400 input!7874) (size!42400 lt!2643222)))))

(declare-fun b!7541012 () Bool)

(declare-fun e!4493025 () Bool)

(assert (=> b!7541012 (= e!4493025 e!4493024)))

(declare-fun res!3022114 () Bool)

(assert (=> b!7541012 (=> (not res!3022114) (not e!4493024))))

(assert (=> b!7541012 (= res!3022114 (not (is-Nil!72663 input!7874)))))

(declare-fun d!2311292 () Bool)

(assert (=> d!2311292 e!4493023))

(declare-fun res!3022112 () Bool)

(assert (=> d!2311292 (=> res!3022112 e!4493023)))

(declare-fun lt!2643300 () Bool)

(assert (=> d!2311292 (= res!3022112 (not lt!2643300))))

(assert (=> d!2311292 (= lt!2643300 e!4493025)))

(declare-fun res!3022113 () Bool)

(assert (=> d!2311292 (=> res!3022113 e!4493025)))

(assert (=> d!2311292 (= res!3022113 (is-Nil!72663 lt!2643222))))

(assert (=> d!2311292 (= (isPrefix!6110 lt!2643222 input!7874) lt!2643300)))

(assert (= (and d!2311292 (not res!3022113)) b!7541012))

(assert (= (and b!7541012 res!3022114) b!7541013))

(assert (= (and b!7541013 res!3022111) b!7541014))

(assert (= (and d!2311292 (not res!3022112)) b!7541015))

(declare-fun m!8110336 () Bool)

(assert (=> b!7541013 m!8110336))

(declare-fun m!8110338 () Bool)

(assert (=> b!7541013 m!8110338))

(declare-fun m!8110340 () Bool)

(assert (=> b!7541014 m!8110340))

(assert (=> b!7541014 m!8110318))

(assert (=> b!7541014 m!8110340))

(assert (=> b!7541014 m!8110318))

(declare-fun m!8110342 () Bool)

(assert (=> b!7541014 m!8110342))

(assert (=> b!7541015 m!8110210))

(declare-fun m!8110344 () Bool)

(assert (=> b!7541015 m!8110344))

(assert (=> b!7540842 d!2311292))

(declare-fun d!2311298 () Bool)

(declare-fun lt!2643306 () Regex!19904)

(assert (=> d!2311298 (validRegex!10332 lt!2643306)))

(declare-fun e!4493028 () Regex!19904)

(assert (=> d!2311298 (= lt!2643306 e!4493028)))

(declare-fun c!1392290 () Bool)

(assert (=> d!2311298 (= c!1392290 (is-Cons!72663 lt!2643222))))

(assert (=> d!2311298 (validRegex!10332 baseR!101)))

(assert (=> d!2311298 (= (derivative!436 baseR!101 lt!2643222) lt!2643306)))

(declare-fun b!7541020 () Bool)

(assert (=> b!7541020 (= e!4493028 (derivative!436 (derivativeStep!5694 baseR!101 (h!79111 lt!2643222)) (t!387494 lt!2643222)))))

(declare-fun b!7541021 () Bool)

(assert (=> b!7541021 (= e!4493028 baseR!101)))

(assert (= (and d!2311298 c!1392290) b!7541020))

(assert (= (and d!2311298 (not c!1392290)) b!7541021))

(declare-fun m!8110348 () Bool)

(assert (=> d!2311298 m!8110348))

(assert (=> d!2311298 m!8110196))

(declare-fun m!8110350 () Bool)

(assert (=> b!7541020 m!8110350))

(assert (=> b!7541020 m!8110350))

(declare-fun m!8110352 () Bool)

(assert (=> b!7541020 m!8110352))

(assert (=> b!7540842 d!2311298))

(declare-fun d!2311302 () Bool)

(declare-fun lt!2643307 () List!72787)

(assert (=> d!2311302 (= (++!17421 lt!2643222 lt!2643307) knownP!30)))

(declare-fun e!4493029 () List!72787)

(assert (=> d!2311302 (= lt!2643307 e!4493029)))

(declare-fun c!1392291 () Bool)

(assert (=> d!2311302 (= c!1392291 (is-Cons!72663 lt!2643222))))

(assert (=> d!2311302 (>= (size!42400 knownP!30) (size!42400 lt!2643222))))

(assert (=> d!2311302 (= (getSuffix!3590 knownP!30 lt!2643222) lt!2643307)))

(declare-fun b!7541022 () Bool)

(assert (=> b!7541022 (= e!4493029 (getSuffix!3590 (tail!15040 knownP!30) (t!387494 lt!2643222)))))

(declare-fun b!7541023 () Bool)

(assert (=> b!7541023 (= e!4493029 knownP!30)))

(assert (= (and d!2311302 c!1392291) b!7541022))

(assert (= (and d!2311302 (not c!1392291)) b!7541023))

(declare-fun m!8110354 () Bool)

(assert (=> d!2311302 m!8110354))

(assert (=> d!2311302 m!8110216))

(assert (=> d!2311302 m!8110344))

(declare-fun m!8110356 () Bool)

(assert (=> b!7541022 m!8110356))

(assert (=> b!7541022 m!8110356))

(declare-fun m!8110358 () Bool)

(assert (=> b!7541022 m!8110358))

(assert (=> b!7540842 d!2311302))

(declare-fun d!2311304 () Bool)

(assert (=> d!2311304 (isPrefix!6110 lt!2643222 knownP!30)))

(declare-fun lt!2643313 () Unit!166746)

(declare-fun choose!58345 (List!72787 List!72787 List!72787) Unit!166746)

(assert (=> d!2311304 (= lt!2643313 (choose!58345 knownP!30 lt!2643222 input!7874))))

(assert (=> d!2311304 (isPrefix!6110 knownP!30 input!7874)))

(assert (=> d!2311304 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!860 knownP!30 lt!2643222 input!7874) lt!2643313)))

(declare-fun bs!1940002 () Bool)

(assert (= bs!1940002 d!2311304))

(assert (=> bs!1940002 m!8110186))

(declare-fun m!8110362 () Bool)

(assert (=> bs!1940002 m!8110362))

(assert (=> bs!1940002 m!8110236))

(assert (=> b!7540842 d!2311304))

(declare-fun b!7541057 () Bool)

(declare-fun e!4493051 () List!72787)

(assert (=> b!7541057 (= e!4493051 (Cons!72663 (h!79111 knownP!30) (++!17421 (t!387494 knownP!30) lt!2643231)))))

(declare-fun b!7541056 () Bool)

(assert (=> b!7541056 (= e!4493051 lt!2643231)))

(declare-fun e!4493052 () Bool)

(declare-fun b!7541059 () Bool)

(declare-fun lt!2643316 () List!72787)

(assert (=> b!7541059 (= e!4493052 (or (not (= lt!2643231 Nil!72663)) (= lt!2643316 knownP!30)))))

(declare-fun d!2311308 () Bool)

(assert (=> d!2311308 e!4493052))

(declare-fun res!3022129 () Bool)

(assert (=> d!2311308 (=> (not res!3022129) (not e!4493052))))

(declare-fun content!15367 (List!72787) (Set C!40134))

(assert (=> d!2311308 (= res!3022129 (= (content!15367 lt!2643316) (set.union (content!15367 knownP!30) (content!15367 lt!2643231))))))

(assert (=> d!2311308 (= lt!2643316 e!4493051)))

(declare-fun c!1392301 () Bool)

(assert (=> d!2311308 (= c!1392301 (is-Nil!72663 knownP!30))))

(assert (=> d!2311308 (= (++!17421 knownP!30 lt!2643231) lt!2643316)))

(declare-fun b!7541058 () Bool)

(declare-fun res!3022130 () Bool)

(assert (=> b!7541058 (=> (not res!3022130) (not e!4493052))))

(assert (=> b!7541058 (= res!3022130 (= (size!42400 lt!2643316) (+ (size!42400 knownP!30) (size!42400 lt!2643231))))))

(assert (= (and d!2311308 c!1392301) b!7541056))

(assert (= (and d!2311308 (not c!1392301)) b!7541057))

(assert (= (and d!2311308 res!3022129) b!7541058))

(assert (= (and b!7541058 res!3022130) b!7541059))

(declare-fun m!8110364 () Bool)

(assert (=> b!7541057 m!8110364))

(declare-fun m!8110366 () Bool)

(assert (=> d!2311308 m!8110366))

(declare-fun m!8110368 () Bool)

(assert (=> d!2311308 m!8110368))

(declare-fun m!8110370 () Bool)

(assert (=> d!2311308 m!8110370))

(declare-fun m!8110372 () Bool)

(assert (=> b!7541058 m!8110372))

(assert (=> b!7541058 m!8110216))

(declare-fun m!8110374 () Bool)

(assert (=> b!7541058 m!8110374))

(assert (=> b!7540842 d!2311308))

(declare-fun d!2311310 () Bool)

(assert (=> d!2311310 (isPrefix!6110 (++!17421 testedP!423 (Cons!72663 (head!15494 (getSuffix!3590 input!7874 testedP!423)) Nil!72663)) input!7874)))

(declare-fun lt!2643319 () Unit!166746)

(declare-fun choose!58346 (List!72787 List!72787) Unit!166746)

(assert (=> d!2311310 (= lt!2643319 (choose!58346 testedP!423 input!7874))))

(assert (=> d!2311310 (isPrefix!6110 testedP!423 input!7874)))

(assert (=> d!2311310 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1175 testedP!423 input!7874) lt!2643319)))

(declare-fun bs!1940003 () Bool)

(assert (= bs!1940003 d!2311310))

(assert (=> bs!1940003 m!8110174))

(assert (=> bs!1940003 m!8110174))

(declare-fun m!8110376 () Bool)

(assert (=> bs!1940003 m!8110376))

(declare-fun m!8110378 () Bool)

(assert (=> bs!1940003 m!8110378))

(declare-fun m!8110380 () Bool)

(assert (=> bs!1940003 m!8110380))

(assert (=> bs!1940003 m!8110238))

(assert (=> bs!1940003 m!8110380))

(declare-fun m!8110382 () Bool)

(assert (=> bs!1940003 m!8110382))

(assert (=> b!7540842 d!2311310))

(declare-fun d!2311312 () Bool)

(assert (=> d!2311312 (= (derivative!436 baseR!101 (++!17421 testedP!423 (Cons!72663 lt!2643233 Nil!72663))) (derivativeStep!5694 r!24333 lt!2643233))))

(declare-fun lt!2643322 () Unit!166746)

(declare-fun choose!58347 (Regex!19904 Regex!19904 List!72787 C!40134) Unit!166746)

(assert (=> d!2311312 (= lt!2643322 (choose!58347 baseR!101 r!24333 testedP!423 lt!2643233))))

(assert (=> d!2311312 (validRegex!10332 baseR!101)))

(assert (=> d!2311312 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!142 baseR!101 r!24333 testedP!423 lt!2643233) lt!2643322)))

(declare-fun bs!1940004 () Bool)

(assert (= bs!1940004 d!2311312))

(assert (=> bs!1940004 m!8110188))

(assert (=> bs!1940004 m!8110196))

(assert (=> bs!1940004 m!8110194))

(assert (=> bs!1940004 m!8110188))

(declare-fun m!8110390 () Bool)

(assert (=> bs!1940004 m!8110390))

(declare-fun m!8110392 () Bool)

(assert (=> bs!1940004 m!8110392))

(assert (=> b!7540842 d!2311312))

(declare-fun b!7541076 () Bool)

(declare-fun e!4493064 () List!72787)

(assert (=> b!7541076 (= e!4493064 (Cons!72663 (h!79111 testedP!423) (++!17421 (t!387494 testedP!423) (Cons!72663 lt!2643233 Nil!72663))))))

(declare-fun b!7541075 () Bool)

(assert (=> b!7541075 (= e!4493064 (Cons!72663 lt!2643233 Nil!72663))))

(declare-fun lt!2643325 () List!72787)

(declare-fun e!4493065 () Bool)

(declare-fun b!7541078 () Bool)

(assert (=> b!7541078 (= e!4493065 (or (not (= (Cons!72663 lt!2643233 Nil!72663) Nil!72663)) (= lt!2643325 testedP!423)))))

(declare-fun d!2311316 () Bool)

(assert (=> d!2311316 e!4493065))

(declare-fun res!3022142 () Bool)

(assert (=> d!2311316 (=> (not res!3022142) (not e!4493065))))

(assert (=> d!2311316 (= res!3022142 (= (content!15367 lt!2643325) (set.union (content!15367 testedP!423) (content!15367 (Cons!72663 lt!2643233 Nil!72663)))))))

(assert (=> d!2311316 (= lt!2643325 e!4493064)))

(declare-fun c!1392305 () Bool)

(assert (=> d!2311316 (= c!1392305 (is-Nil!72663 testedP!423))))

(assert (=> d!2311316 (= (++!17421 testedP!423 (Cons!72663 lt!2643233 Nil!72663)) lt!2643325)))

(declare-fun b!7541077 () Bool)

(declare-fun res!3022143 () Bool)

(assert (=> b!7541077 (=> (not res!3022143) (not e!4493065))))

(assert (=> b!7541077 (= res!3022143 (= (size!42400 lt!2643325) (+ (size!42400 testedP!423) (size!42400 (Cons!72663 lt!2643233 Nil!72663)))))))

(assert (= (and d!2311316 c!1392305) b!7541075))

(assert (= (and d!2311316 (not c!1392305)) b!7541076))

(assert (= (and d!2311316 res!3022142) b!7541077))

(assert (= (and b!7541077 res!3022143) b!7541078))

(declare-fun m!8110394 () Bool)

(assert (=> b!7541076 m!8110394))

(declare-fun m!8110396 () Bool)

(assert (=> d!2311316 m!8110396))

(declare-fun m!8110398 () Bool)

(assert (=> d!2311316 m!8110398))

(declare-fun m!8110400 () Bool)

(assert (=> d!2311316 m!8110400))

(declare-fun m!8110402 () Bool)

(assert (=> b!7541077 m!8110402))

(assert (=> b!7541077 m!8110214))

(declare-fun m!8110404 () Bool)

(assert (=> b!7541077 m!8110404))

(assert (=> b!7540842 d!2311316))

(declare-fun b!7541121 () Bool)

(declare-fun c!1392324 () Bool)

(assert (=> b!7541121 (= c!1392324 (is-Union!19904 r!24333))))

(declare-fun e!4493090 () Regex!19904)

(declare-fun e!4493091 () Regex!19904)

(assert (=> b!7541121 (= e!4493090 e!4493091)))

(declare-fun call!691735 () Regex!19904)

(declare-fun c!1392322 () Bool)

(declare-fun bm!691728 () Bool)

(assert (=> bm!691728 (= call!691735 (derivativeStep!5694 (ite c!1392324 (regTwo!40321 r!24333) (ite c!1392322 (reg!20233 r!24333) (regOne!40320 r!24333))) lt!2643233))))

(declare-fun bm!691729 () Bool)

(declare-fun call!691734 () Regex!19904)

(assert (=> bm!691729 (= call!691734 call!691735)))

(declare-fun b!7541122 () Bool)

(declare-fun e!4493089 () Regex!19904)

(assert (=> b!7541122 (= e!4493089 e!4493090)))

(declare-fun c!1392320 () Bool)

(assert (=> b!7541122 (= c!1392320 (is-ElementMatch!19904 r!24333))))

(declare-fun b!7541123 () Bool)

(declare-fun e!4493093 () Regex!19904)

(declare-fun call!691736 () Regex!19904)

(assert (=> b!7541123 (= e!4493093 (Union!19904 (Concat!28749 call!691736 (regTwo!40320 r!24333)) EmptyLang!19904))))

(declare-fun b!7541124 () Bool)

(assert (=> b!7541124 (= e!4493090 (ite (= lt!2643233 (c!1392271 r!24333)) EmptyExpr!19904 EmptyLang!19904))))

(declare-fun call!691733 () Regex!19904)

(declare-fun b!7541125 () Bool)

(assert (=> b!7541125 (= e!4493093 (Union!19904 (Concat!28749 call!691736 (regTwo!40320 r!24333)) call!691733))))

(declare-fun b!7541126 () Bool)

(declare-fun e!4493092 () Regex!19904)

(assert (=> b!7541126 (= e!4493092 (Concat!28749 call!691734 r!24333))))

(declare-fun b!7541127 () Bool)

(assert (=> b!7541127 (= e!4493091 (Union!19904 call!691733 call!691735))))

(declare-fun bm!691730 () Bool)

(assert (=> bm!691730 (= call!691733 (derivativeStep!5694 (ite c!1392324 (regOne!40321 r!24333) (regTwo!40320 r!24333)) lt!2643233))))

(declare-fun b!7541128 () Bool)

(assert (=> b!7541128 (= e!4493089 EmptyLang!19904)))

(declare-fun bm!691731 () Bool)

(assert (=> bm!691731 (= call!691736 call!691734)))

(declare-fun b!7541129 () Bool)

(assert (=> b!7541129 (= e!4493091 e!4493092)))

(assert (=> b!7541129 (= c!1392322 (is-Star!19904 r!24333))))

(declare-fun d!2311318 () Bool)

(declare-fun lt!2643335 () Regex!19904)

(assert (=> d!2311318 (validRegex!10332 lt!2643335)))

(assert (=> d!2311318 (= lt!2643335 e!4493089)))

(declare-fun c!1392321 () Bool)

(assert (=> d!2311318 (= c!1392321 (or (is-EmptyExpr!19904 r!24333) (is-EmptyLang!19904 r!24333)))))

(assert (=> d!2311318 (validRegex!10332 r!24333)))

(assert (=> d!2311318 (= (derivativeStep!5694 r!24333 lt!2643233) lt!2643335)))

(declare-fun b!7541130 () Bool)

(declare-fun c!1392323 () Bool)

(declare-fun nullable!8679 (Regex!19904) Bool)

(assert (=> b!7541130 (= c!1392323 (nullable!8679 (regOne!40320 r!24333)))))

(assert (=> b!7541130 (= e!4493092 e!4493093)))

(assert (= (and d!2311318 c!1392321) b!7541128))

(assert (= (and d!2311318 (not c!1392321)) b!7541122))

(assert (= (and b!7541122 c!1392320) b!7541124))

(assert (= (and b!7541122 (not c!1392320)) b!7541121))

(assert (= (and b!7541121 c!1392324) b!7541127))

(assert (= (and b!7541121 (not c!1392324)) b!7541129))

(assert (= (and b!7541129 c!1392322) b!7541126))

(assert (= (and b!7541129 (not c!1392322)) b!7541130))

(assert (= (and b!7541130 c!1392323) b!7541125))

(assert (= (and b!7541130 (not c!1392323)) b!7541123))

(assert (= (or b!7541125 b!7541123) bm!691731))

(assert (= (or b!7541126 bm!691731) bm!691729))

(assert (= (or b!7541127 bm!691729) bm!691728))

(assert (= (or b!7541127 b!7541125) bm!691730))

(declare-fun m!8110438 () Bool)

(assert (=> bm!691728 m!8110438))

(declare-fun m!8110440 () Bool)

(assert (=> bm!691730 m!8110440))

(declare-fun m!8110442 () Bool)

(assert (=> d!2311318 m!8110442))

(assert (=> d!2311318 m!8110198))

(declare-fun m!8110444 () Bool)

(assert (=> b!7541130 m!8110444))

(assert (=> b!7540842 d!2311318))

(declare-fun b!7541132 () Bool)

(declare-fun res!3022158 () Bool)

(declare-fun e!4493095 () Bool)

(assert (=> b!7541132 (=> (not res!3022158) (not e!4493095))))

(assert (=> b!7541132 (= res!3022158 (= (head!15494 lt!2643222) (head!15494 knownP!30)))))

(declare-fun b!7541133 () Bool)

(assert (=> b!7541133 (= e!4493095 (isPrefix!6110 (tail!15040 lt!2643222) (tail!15040 knownP!30)))))

(declare-fun b!7541134 () Bool)

(declare-fun e!4493094 () Bool)

(assert (=> b!7541134 (= e!4493094 (>= (size!42400 knownP!30) (size!42400 lt!2643222)))))

(declare-fun b!7541131 () Bool)

(declare-fun e!4493096 () Bool)

(assert (=> b!7541131 (= e!4493096 e!4493095)))

(declare-fun res!3022161 () Bool)

(assert (=> b!7541131 (=> (not res!3022161) (not e!4493095))))

(assert (=> b!7541131 (= res!3022161 (not (is-Nil!72663 knownP!30)))))

(declare-fun d!2311326 () Bool)

(assert (=> d!2311326 e!4493094))

(declare-fun res!3022159 () Bool)

(assert (=> d!2311326 (=> res!3022159 e!4493094)))

(declare-fun lt!2643337 () Bool)

(assert (=> d!2311326 (= res!3022159 (not lt!2643337))))

(assert (=> d!2311326 (= lt!2643337 e!4493096)))

(declare-fun res!3022160 () Bool)

(assert (=> d!2311326 (=> res!3022160 e!4493096)))

(assert (=> d!2311326 (= res!3022160 (is-Nil!72663 lt!2643222))))

(assert (=> d!2311326 (= (isPrefix!6110 lt!2643222 knownP!30) lt!2643337)))

(assert (= (and d!2311326 (not res!3022160)) b!7541131))

(assert (= (and b!7541131 res!3022161) b!7541132))

(assert (= (and b!7541132 res!3022158) b!7541133))

(assert (= (and d!2311326 (not res!3022159)) b!7541134))

(assert (=> b!7541132 m!8110336))

(declare-fun m!8110452 () Bool)

(assert (=> b!7541132 m!8110452))

(assert (=> b!7541133 m!8110340))

(assert (=> b!7541133 m!8110356))

(assert (=> b!7541133 m!8110340))

(assert (=> b!7541133 m!8110356))

(declare-fun m!8110454 () Bool)

(assert (=> b!7541133 m!8110454))

(assert (=> b!7541134 m!8110216))

(assert (=> b!7541134 m!8110344))

(assert (=> b!7540842 d!2311326))

(declare-fun d!2311330 () Bool)

(declare-fun lt!2643339 () List!72787)

(assert (=> d!2311330 (= (++!17421 knownP!30 lt!2643339) input!7874)))

(declare-fun e!4493104 () List!72787)

(assert (=> d!2311330 (= lt!2643339 e!4493104)))

(declare-fun c!1392328 () Bool)

(assert (=> d!2311330 (= c!1392328 (is-Cons!72663 knownP!30))))

(assert (=> d!2311330 (>= (size!42400 input!7874) (size!42400 knownP!30))))

(assert (=> d!2311330 (= (getSuffix!3590 input!7874 knownP!30) lt!2643339)))

(declare-fun b!7541149 () Bool)

(assert (=> b!7541149 (= e!4493104 (getSuffix!3590 (tail!15040 input!7874) (t!387494 knownP!30)))))

(declare-fun b!7541150 () Bool)

(assert (=> b!7541150 (= e!4493104 input!7874)))

(assert (= (and d!2311330 c!1392328) b!7541149))

(assert (= (and d!2311330 (not c!1392328)) b!7541150))

(declare-fun m!8110456 () Bool)

(assert (=> d!2311330 m!8110456))

(assert (=> d!2311330 m!8110210))

(assert (=> d!2311330 m!8110216))

(assert (=> b!7541149 m!8110318))

(assert (=> b!7541149 m!8110318))

(declare-fun m!8110458 () Bool)

(assert (=> b!7541149 m!8110458))

(assert (=> b!7540842 d!2311330))

(declare-fun d!2311332 () Bool)

(assert (=> d!2311332 (= ($colon$colon!3364 (tail!15040 lt!2643217) lt!2643233) (Cons!72663 lt!2643233 (tail!15040 lt!2643217)))))

(assert (=> b!7540852 d!2311332))

(declare-fun d!2311334 () Bool)

(assert (=> d!2311334 (= (tail!15040 lt!2643217) (t!387494 lt!2643217))))

(assert (=> b!7540852 d!2311334))

(declare-fun d!2311336 () Bool)

(assert (=> d!2311336 (= (head!15494 lt!2643217) (h!79111 lt!2643217))))

(assert (=> b!7540843 d!2311336))

(declare-fun d!2311338 () Bool)

(assert (=> d!2311338 (= lt!2643230 lt!2643234)))

(declare-fun lt!2643342 () Unit!166746)

(declare-fun choose!58349 (List!72787 List!72787 List!72787 List!72787 List!72787) Unit!166746)

(assert (=> d!2311338 (= lt!2643342 (choose!58349 testedP!423 lt!2643230 testedP!423 lt!2643234 input!7874))))

(assert (=> d!2311338 (isPrefix!6110 testedP!423 input!7874)))

(assert (=> d!2311338 (= (lemmaSamePrefixThenSameSuffix!2838 testedP!423 lt!2643230 testedP!423 lt!2643234 input!7874) lt!2643342)))

(declare-fun bs!1940006 () Bool)

(assert (= bs!1940006 d!2311338))

(declare-fun m!8110470 () Bool)

(assert (=> bs!1940006 m!8110470))

(assert (=> bs!1940006 m!8110238))

(assert (=> b!7540843 d!2311338))

(declare-fun b!7541179 () Bool)

(declare-fun e!4493125 () Bool)

(declare-fun e!4493128 () Bool)

(assert (=> b!7541179 (= e!4493125 e!4493128)))

(declare-fun c!1392336 () Bool)

(assert (=> b!7541179 (= c!1392336 (is-Star!19904 baseR!101))))

(declare-fun b!7541180 () Bool)

(declare-fun e!4493126 () Bool)

(declare-fun call!691744 () Bool)

(assert (=> b!7541180 (= e!4493126 call!691744)))

(declare-fun b!7541181 () Bool)

(declare-fun e!4493130 () Bool)

(declare-fun call!691746 () Bool)

(assert (=> b!7541181 (= e!4493130 call!691746)))

(declare-fun b!7541182 () Bool)

(declare-fun e!4493131 () Bool)

(assert (=> b!7541182 (= e!4493128 e!4493131)))

(declare-fun c!1392337 () Bool)

(assert (=> b!7541182 (= c!1392337 (is-Union!19904 baseR!101))))

(declare-fun bm!691739 () Bool)

(assert (=> bm!691739 (= call!691744 call!691746)))

(declare-fun bm!691740 () Bool)

(assert (=> bm!691740 (= call!691746 (validRegex!10332 (ite c!1392336 (reg!20233 baseR!101) (ite c!1392337 (regTwo!40321 baseR!101) (regTwo!40320 baseR!101)))))))

(declare-fun b!7541183 () Bool)

(declare-fun res!3022188 () Bool)

(declare-fun e!4493127 () Bool)

(assert (=> b!7541183 (=> res!3022188 e!4493127)))

(assert (=> b!7541183 (= res!3022188 (not (is-Concat!28749 baseR!101)))))

(assert (=> b!7541183 (= e!4493131 e!4493127)))

(declare-fun b!7541184 () Bool)

(assert (=> b!7541184 (= e!4493127 e!4493126)))

(declare-fun res!3022187 () Bool)

(assert (=> b!7541184 (=> (not res!3022187) (not e!4493126))))

(declare-fun call!691745 () Bool)

(assert (=> b!7541184 (= res!3022187 call!691745)))

(declare-fun d!2311342 () Bool)

(declare-fun res!3022185 () Bool)

(assert (=> d!2311342 (=> res!3022185 e!4493125)))

(assert (=> d!2311342 (= res!3022185 (is-ElementMatch!19904 baseR!101))))

(assert (=> d!2311342 (= (validRegex!10332 baseR!101) e!4493125)))

(declare-fun bm!691741 () Bool)

(assert (=> bm!691741 (= call!691745 (validRegex!10332 (ite c!1392337 (regOne!40321 baseR!101) (regOne!40320 baseR!101))))))

(declare-fun b!7541185 () Bool)

(declare-fun e!4493129 () Bool)

(assert (=> b!7541185 (= e!4493129 call!691744)))

(declare-fun b!7541186 () Bool)

(declare-fun res!3022186 () Bool)

(assert (=> b!7541186 (=> (not res!3022186) (not e!4493129))))

(assert (=> b!7541186 (= res!3022186 call!691745)))

(assert (=> b!7541186 (= e!4493131 e!4493129)))

(declare-fun b!7541187 () Bool)

(assert (=> b!7541187 (= e!4493128 e!4493130)))

(declare-fun res!3022184 () Bool)

(assert (=> b!7541187 (= res!3022184 (not (nullable!8679 (reg!20233 baseR!101))))))

(assert (=> b!7541187 (=> (not res!3022184) (not e!4493130))))

(assert (= (and d!2311342 (not res!3022185)) b!7541179))

(assert (= (and b!7541179 c!1392336) b!7541187))

(assert (= (and b!7541179 (not c!1392336)) b!7541182))

(assert (= (and b!7541187 res!3022184) b!7541181))

(assert (= (and b!7541182 c!1392337) b!7541186))

(assert (= (and b!7541182 (not c!1392337)) b!7541183))

(assert (= (and b!7541186 res!3022186) b!7541185))

(assert (= (and b!7541183 (not res!3022188)) b!7541184))

(assert (= (and b!7541184 res!3022187) b!7541180))

(assert (= (or b!7541186 b!7541184) bm!691741))

(assert (= (or b!7541185 b!7541180) bm!691739))

(assert (= (or b!7541181 bm!691739) bm!691740))

(declare-fun m!8110488 () Bool)

(assert (=> bm!691740 m!8110488))

(declare-fun m!8110492 () Bool)

(assert (=> bm!691741 m!8110492))

(declare-fun m!8110494 () Bool)

(assert (=> b!7541187 m!8110494))

(assert (=> start!729314 d!2311342))

(declare-fun b!7541247 () Bool)

(declare-fun e!4493171 () Bool)

(assert (=> b!7541247 (= e!4493171 (matchR!9506 (derivativeStep!5694 baseR!101 (head!15494 knownP!30)) (tail!15040 knownP!30)))))

(declare-fun b!7541248 () Bool)

(declare-fun e!4493168 () Bool)

(declare-fun e!4493165 () Bool)

(assert (=> b!7541248 (= e!4493168 e!4493165)))

(declare-fun res!3022222 () Bool)

(assert (=> b!7541248 (=> res!3022222 e!4493165)))

(declare-fun call!691752 () Bool)

(assert (=> b!7541248 (= res!3022222 call!691752)))

(declare-fun b!7541249 () Bool)

(declare-fun res!3022221 () Bool)

(declare-fun e!4493170 () Bool)

(assert (=> b!7541249 (=> (not res!3022221) (not e!4493170))))

(assert (=> b!7541249 (= res!3022221 (not call!691752))))

(declare-fun b!7541250 () Bool)

(assert (=> b!7541250 (= e!4493165 (not (= (head!15494 knownP!30) (c!1392271 baseR!101))))))

(declare-fun b!7541251 () Bool)

(assert (=> b!7541251 (= e!4493170 (= (head!15494 knownP!30) (c!1392271 baseR!101)))))

(declare-fun b!7541252 () Bool)

(declare-fun res!3022227 () Bool)

(declare-fun e!4493167 () Bool)

(assert (=> b!7541252 (=> res!3022227 e!4493167)))

(assert (=> b!7541252 (= res!3022227 (not (is-ElementMatch!19904 baseR!101)))))

(declare-fun e!4493169 () Bool)

(assert (=> b!7541252 (= e!4493169 e!4493167)))

(declare-fun b!7541253 () Bool)

(assert (=> b!7541253 (= e!4493171 (nullable!8679 baseR!101))))

(declare-fun b!7541254 () Bool)

(declare-fun res!3022220 () Bool)

(assert (=> b!7541254 (=> res!3022220 e!4493167)))

(assert (=> b!7541254 (= res!3022220 e!4493170)))

(declare-fun res!3022223 () Bool)

(assert (=> b!7541254 (=> (not res!3022223) (not e!4493170))))

(declare-fun lt!2643359 () Bool)

(assert (=> b!7541254 (= res!3022223 lt!2643359)))

(declare-fun bm!691747 () Bool)

(declare-fun isEmpty!41375 (List!72787) Bool)

(assert (=> bm!691747 (= call!691752 (isEmpty!41375 knownP!30))))

(declare-fun d!2311350 () Bool)

(declare-fun e!4493166 () Bool)

(assert (=> d!2311350 e!4493166))

(declare-fun c!1392352 () Bool)

(assert (=> d!2311350 (= c!1392352 (is-EmptyExpr!19904 baseR!101))))

(assert (=> d!2311350 (= lt!2643359 e!4493171)))

(declare-fun c!1392353 () Bool)

(assert (=> d!2311350 (= c!1392353 (isEmpty!41375 knownP!30))))

(assert (=> d!2311350 (validRegex!10332 baseR!101)))

(assert (=> d!2311350 (= (matchR!9506 baseR!101 knownP!30) lt!2643359)))

(declare-fun b!7541255 () Bool)

(assert (=> b!7541255 (= e!4493166 (= lt!2643359 call!691752))))

(declare-fun b!7541256 () Bool)

(assert (=> b!7541256 (= e!4493167 e!4493168)))

(declare-fun res!3022224 () Bool)

(assert (=> b!7541256 (=> (not res!3022224) (not e!4493168))))

(assert (=> b!7541256 (= res!3022224 (not lt!2643359))))

(declare-fun b!7541257 () Bool)

(declare-fun res!3022225 () Bool)

(assert (=> b!7541257 (=> (not res!3022225) (not e!4493170))))

(assert (=> b!7541257 (= res!3022225 (isEmpty!41375 (tail!15040 knownP!30)))))

(declare-fun b!7541258 () Bool)

(assert (=> b!7541258 (= e!4493169 (not lt!2643359))))

(declare-fun b!7541259 () Bool)

(assert (=> b!7541259 (= e!4493166 e!4493169)))

(declare-fun c!1392354 () Bool)

(assert (=> b!7541259 (= c!1392354 (is-EmptyLang!19904 baseR!101))))

(declare-fun b!7541260 () Bool)

(declare-fun res!3022226 () Bool)

(assert (=> b!7541260 (=> res!3022226 e!4493165)))

(assert (=> b!7541260 (= res!3022226 (not (isEmpty!41375 (tail!15040 knownP!30))))))

(assert (= (and d!2311350 c!1392353) b!7541253))

(assert (= (and d!2311350 (not c!1392353)) b!7541247))

(assert (= (and d!2311350 c!1392352) b!7541255))

(assert (= (and d!2311350 (not c!1392352)) b!7541259))

(assert (= (and b!7541259 c!1392354) b!7541258))

(assert (= (and b!7541259 (not c!1392354)) b!7541252))

(assert (= (and b!7541252 (not res!3022227)) b!7541254))

(assert (= (and b!7541254 res!3022223) b!7541249))

(assert (= (and b!7541249 res!3022221) b!7541257))

(assert (= (and b!7541257 res!3022225) b!7541251))

(assert (= (and b!7541254 (not res!3022220)) b!7541256))

(assert (= (and b!7541256 res!3022224) b!7541248))

(assert (= (and b!7541248 (not res!3022222)) b!7541260))

(assert (= (and b!7541260 (not res!3022226)) b!7541250))

(assert (= (or b!7541255 b!7541248 b!7541249) bm!691747))

(assert (=> b!7541251 m!8110452))

(assert (=> b!7541247 m!8110452))

(assert (=> b!7541247 m!8110452))

(declare-fun m!8110530 () Bool)

(assert (=> b!7541247 m!8110530))

(assert (=> b!7541247 m!8110356))

(assert (=> b!7541247 m!8110530))

(assert (=> b!7541247 m!8110356))

(declare-fun m!8110532 () Bool)

(assert (=> b!7541247 m!8110532))

(assert (=> b!7541260 m!8110356))

(assert (=> b!7541260 m!8110356))

(declare-fun m!8110534 () Bool)

(assert (=> b!7541260 m!8110534))

(declare-fun m!8110536 () Bool)

(assert (=> b!7541253 m!8110536))

(declare-fun m!8110538 () Bool)

(assert (=> bm!691747 m!8110538))

(assert (=> b!7541250 m!8110452))

(assert (=> b!7541257 m!8110356))

(assert (=> b!7541257 m!8110356))

(assert (=> b!7541257 m!8110534))

(assert (=> d!2311350 m!8110538))

(assert (=> d!2311350 m!8110196))

(assert (=> b!7540865 d!2311350))

(declare-fun b!7541262 () Bool)

(declare-fun res!3022228 () Bool)

(declare-fun e!4493173 () Bool)

(assert (=> b!7541262 (=> (not res!3022228) (not e!4493173))))

(assert (=> b!7541262 (= res!3022228 (= (head!15494 knownP!30) (head!15494 input!7874)))))

(declare-fun b!7541263 () Bool)

(assert (=> b!7541263 (= e!4493173 (isPrefix!6110 (tail!15040 knownP!30) (tail!15040 input!7874)))))

(declare-fun b!7541264 () Bool)

(declare-fun e!4493172 () Bool)

(assert (=> b!7541264 (= e!4493172 (>= (size!42400 input!7874) (size!42400 knownP!30)))))

(declare-fun b!7541261 () Bool)

(declare-fun e!4493174 () Bool)

(assert (=> b!7541261 (= e!4493174 e!4493173)))

(declare-fun res!3022231 () Bool)

(assert (=> b!7541261 (=> (not res!3022231) (not e!4493173))))

(assert (=> b!7541261 (= res!3022231 (not (is-Nil!72663 input!7874)))))

(declare-fun d!2311368 () Bool)

(assert (=> d!2311368 e!4493172))

(declare-fun res!3022229 () Bool)

(assert (=> d!2311368 (=> res!3022229 e!4493172)))

(declare-fun lt!2643360 () Bool)

(assert (=> d!2311368 (= res!3022229 (not lt!2643360))))

(assert (=> d!2311368 (= lt!2643360 e!4493174)))

(declare-fun res!3022230 () Bool)

(assert (=> d!2311368 (=> res!3022230 e!4493174)))

(assert (=> d!2311368 (= res!3022230 (is-Nil!72663 knownP!30))))

(assert (=> d!2311368 (= (isPrefix!6110 knownP!30 input!7874) lt!2643360)))

(assert (= (and d!2311368 (not res!3022230)) b!7541261))

(assert (= (and b!7541261 res!3022231) b!7541262))

(assert (= (and b!7541262 res!3022228) b!7541263))

(assert (= (and d!2311368 (not res!3022229)) b!7541264))

(assert (=> b!7541262 m!8110452))

(assert (=> b!7541262 m!8110338))

(assert (=> b!7541263 m!8110356))

(assert (=> b!7541263 m!8110318))

(assert (=> b!7541263 m!8110356))

(assert (=> b!7541263 m!8110318))

(declare-fun m!8110542 () Bool)

(assert (=> b!7541263 m!8110542))

(assert (=> b!7541264 m!8110210))

(assert (=> b!7541264 m!8110216))

(assert (=> b!7540844 d!2311368))

(declare-fun b!7541268 () Bool)

(declare-fun e!4493176 () List!72787)

(assert (=> b!7541268 (= e!4493176 (Cons!72663 (h!79111 lt!2643223) (++!17421 (t!387494 lt!2643223) lt!2643231)))))

(declare-fun b!7541267 () Bool)

(assert (=> b!7541267 (= e!4493176 lt!2643231)))

(declare-fun b!7541270 () Bool)

(declare-fun lt!2643362 () List!72787)

(declare-fun e!4493177 () Bool)

(assert (=> b!7541270 (= e!4493177 (or (not (= lt!2643231 Nil!72663)) (= lt!2643362 lt!2643223)))))

(declare-fun d!2311372 () Bool)

(assert (=> d!2311372 e!4493177))

(declare-fun res!3022232 () Bool)

(assert (=> d!2311372 (=> (not res!3022232) (not e!4493177))))

(assert (=> d!2311372 (= res!3022232 (= (content!15367 lt!2643362) (set.union (content!15367 lt!2643223) (content!15367 lt!2643231))))))

(assert (=> d!2311372 (= lt!2643362 e!4493176)))

(declare-fun c!1392356 () Bool)

(assert (=> d!2311372 (= c!1392356 (is-Nil!72663 lt!2643223))))

(assert (=> d!2311372 (= (++!17421 lt!2643223 lt!2643231) lt!2643362)))

(declare-fun b!7541269 () Bool)

(declare-fun res!3022233 () Bool)

(assert (=> b!7541269 (=> (not res!3022233) (not e!4493177))))

(assert (=> b!7541269 (= res!3022233 (= (size!42400 lt!2643362) (+ (size!42400 lt!2643223) (size!42400 lt!2643231))))))

(assert (= (and d!2311372 c!1392356) b!7541267))

(assert (= (and d!2311372 (not c!1392356)) b!7541268))

(assert (= (and d!2311372 res!3022232) b!7541269))

(assert (= (and b!7541269 res!3022233) b!7541270))

(declare-fun m!8110546 () Bool)

(assert (=> b!7541268 m!8110546))

(declare-fun m!8110548 () Bool)

(assert (=> d!2311372 m!8110548))

(declare-fun m!8110550 () Bool)

(assert (=> d!2311372 m!8110550))

(assert (=> d!2311372 m!8110370))

(declare-fun m!8110554 () Bool)

(assert (=> b!7541269 m!8110554))

(declare-fun m!8110556 () Bool)

(assert (=> b!7541269 m!8110556))

(assert (=> b!7541269 m!8110374))

(assert (=> b!7540846 d!2311372))

(declare-fun b!7541274 () Bool)

(declare-fun e!4493179 () List!72787)

(assert (=> b!7541274 (= e!4493179 (Cons!72663 (h!79111 testedP!423) (++!17421 (t!387494 testedP!423) lt!2643217)))))

(declare-fun b!7541273 () Bool)

(assert (=> b!7541273 (= e!4493179 lt!2643217)))

(declare-fun b!7541276 () Bool)

(declare-fun lt!2643364 () List!72787)

(declare-fun e!4493180 () Bool)

(assert (=> b!7541276 (= e!4493180 (or (not (= lt!2643217 Nil!72663)) (= lt!2643364 testedP!423)))))

(declare-fun d!2311378 () Bool)

(assert (=> d!2311378 e!4493180))

(declare-fun res!3022234 () Bool)

(assert (=> d!2311378 (=> (not res!3022234) (not e!4493180))))

(assert (=> d!2311378 (= res!3022234 (= (content!15367 lt!2643364) (set.union (content!15367 testedP!423) (content!15367 lt!2643217))))))

(assert (=> d!2311378 (= lt!2643364 e!4493179)))

(declare-fun c!1392358 () Bool)

(assert (=> d!2311378 (= c!1392358 (is-Nil!72663 testedP!423))))

(assert (=> d!2311378 (= (++!17421 testedP!423 lt!2643217) lt!2643364)))

(declare-fun b!7541275 () Bool)

(declare-fun res!3022235 () Bool)

(assert (=> b!7541275 (=> (not res!3022235) (not e!4493180))))

(assert (=> b!7541275 (= res!3022235 (= (size!42400 lt!2643364) (+ (size!42400 testedP!423) (size!42400 lt!2643217))))))

(assert (= (and d!2311378 c!1392358) b!7541273))

(assert (= (and d!2311378 (not c!1392358)) b!7541274))

(assert (= (and d!2311378 res!3022234) b!7541275))

(assert (= (and b!7541275 res!3022235) b!7541276))

(declare-fun m!8110558 () Bool)

(assert (=> b!7541274 m!8110558))

(declare-fun m!8110560 () Bool)

(assert (=> d!2311378 m!8110560))

(assert (=> d!2311378 m!8110398))

(declare-fun m!8110562 () Bool)

(assert (=> d!2311378 m!8110562))

(declare-fun m!8110564 () Bool)

(assert (=> b!7541275 m!8110564))

(assert (=> b!7541275 m!8110214))

(declare-fun m!8110566 () Bool)

(assert (=> b!7541275 m!8110566))

(assert (=> b!7540846 d!2311378))

(declare-fun b!7541278 () Bool)

(declare-fun res!3022236 () Bool)

(declare-fun e!4493182 () Bool)

(assert (=> b!7541278 (=> (not res!3022236) (not e!4493182))))

(assert (=> b!7541278 (= res!3022236 (= (head!15494 testedP!423) (head!15494 input!7874)))))

(declare-fun b!7541279 () Bool)

(assert (=> b!7541279 (= e!4493182 (isPrefix!6110 (tail!15040 testedP!423) (tail!15040 input!7874)))))

(declare-fun b!7541280 () Bool)

(declare-fun e!4493181 () Bool)

(assert (=> b!7541280 (= e!4493181 (>= (size!42400 input!7874) (size!42400 testedP!423)))))

(declare-fun b!7541277 () Bool)

(declare-fun e!4493183 () Bool)

(assert (=> b!7541277 (= e!4493183 e!4493182)))

(declare-fun res!3022239 () Bool)

(assert (=> b!7541277 (=> (not res!3022239) (not e!4493182))))

(assert (=> b!7541277 (= res!3022239 (not (is-Nil!72663 input!7874)))))

(declare-fun d!2311380 () Bool)

(assert (=> d!2311380 e!4493181))

(declare-fun res!3022237 () Bool)

(assert (=> d!2311380 (=> res!3022237 e!4493181)))

(declare-fun lt!2643365 () Bool)

(assert (=> d!2311380 (= res!3022237 (not lt!2643365))))

(assert (=> d!2311380 (= lt!2643365 e!4493183)))

(declare-fun res!3022238 () Bool)

(assert (=> d!2311380 (=> res!3022238 e!4493183)))

(assert (=> d!2311380 (= res!3022238 (is-Nil!72663 testedP!423))))

(assert (=> d!2311380 (= (isPrefix!6110 testedP!423 input!7874) lt!2643365)))

(assert (= (and d!2311380 (not res!3022238)) b!7541277))

(assert (= (and b!7541277 res!3022239) b!7541278))

(assert (= (and b!7541278 res!3022236) b!7541279))

(assert (= (and d!2311380 (not res!3022237)) b!7541280))

(declare-fun m!8110568 () Bool)

(assert (=> b!7541278 m!8110568))

(assert (=> b!7541278 m!8110338))

(declare-fun m!8110570 () Bool)

(assert (=> b!7541279 m!8110570))

(assert (=> b!7541279 m!8110318))

(assert (=> b!7541279 m!8110570))

(assert (=> b!7541279 m!8110318))

(declare-fun m!8110572 () Bool)

(assert (=> b!7541279 m!8110572))

(assert (=> b!7541280 m!8110210))

(assert (=> b!7541280 m!8110214))

(assert (=> b!7540845 d!2311380))

(declare-fun d!2311382 () Bool)

(declare-fun lt!2643366 () Int)

(assert (=> d!2311382 (>= lt!2643366 0)))

(declare-fun e!4493184 () Int)

(assert (=> d!2311382 (= lt!2643366 e!4493184)))

(declare-fun c!1392359 () Bool)

(assert (=> d!2311382 (= c!1392359 (is-Nil!72663 testedP!423))))

(assert (=> d!2311382 (= (size!42400 testedP!423) lt!2643366)))

(declare-fun b!7541281 () Bool)

(assert (=> b!7541281 (= e!4493184 0)))

(declare-fun b!7541282 () Bool)

(assert (=> b!7541282 (= e!4493184 (+ 1 (size!42400 (t!387494 testedP!423))))))

(assert (= (and d!2311382 c!1392359) b!7541281))

(assert (= (and d!2311382 (not c!1392359)) b!7541282))

(declare-fun m!8110574 () Bool)

(assert (=> b!7541282 m!8110574))

(assert (=> b!7540859 d!2311382))

(declare-fun d!2311384 () Bool)

(declare-fun lt!2643367 () Int)

(assert (=> d!2311384 (>= lt!2643367 0)))

(declare-fun e!4493185 () Int)

(assert (=> d!2311384 (= lt!2643367 e!4493185)))

(declare-fun c!1392360 () Bool)

(assert (=> d!2311384 (= c!1392360 (is-Nil!72663 knownP!30))))

(assert (=> d!2311384 (= (size!42400 knownP!30) lt!2643367)))

(declare-fun b!7541283 () Bool)

(assert (=> b!7541283 (= e!4493185 0)))

(declare-fun b!7541284 () Bool)

(assert (=> b!7541284 (= e!4493185 (+ 1 (size!42400 (t!387494 knownP!30))))))

(assert (= (and d!2311384 c!1392360) b!7541283))

(assert (= (and d!2311384 (not c!1392360)) b!7541284))

(declare-fun m!8110576 () Bool)

(assert (=> b!7541284 m!8110576))

(assert (=> b!7540859 d!2311384))

(declare-fun b!7541286 () Bool)

(declare-fun e!4493186 () List!72787)

(assert (=> b!7541286 (= e!4493186 (Cons!72663 (h!79111 testedP!423) (++!17421 (t!387494 testedP!423) lt!2643230)))))

(declare-fun b!7541285 () Bool)

(assert (=> b!7541285 (= e!4493186 lt!2643230)))

(declare-fun b!7541288 () Bool)

(declare-fun lt!2643368 () List!72787)

(declare-fun e!4493187 () Bool)

(assert (=> b!7541288 (= e!4493187 (or (not (= lt!2643230 Nil!72663)) (= lt!2643368 testedP!423)))))

(declare-fun d!2311386 () Bool)

(assert (=> d!2311386 e!4493187))

(declare-fun res!3022240 () Bool)

(assert (=> d!2311386 (=> (not res!3022240) (not e!4493187))))

(assert (=> d!2311386 (= res!3022240 (= (content!15367 lt!2643368) (set.union (content!15367 testedP!423) (content!15367 lt!2643230))))))

(assert (=> d!2311386 (= lt!2643368 e!4493186)))

(declare-fun c!1392361 () Bool)

(assert (=> d!2311386 (= c!1392361 (is-Nil!72663 testedP!423))))

(assert (=> d!2311386 (= (++!17421 testedP!423 lt!2643230) lt!2643368)))

(declare-fun b!7541287 () Bool)

(declare-fun res!3022241 () Bool)

(assert (=> b!7541287 (=> (not res!3022241) (not e!4493187))))

(assert (=> b!7541287 (= res!3022241 (= (size!42400 lt!2643368) (+ (size!42400 testedP!423) (size!42400 lt!2643230))))))

(assert (= (and d!2311386 c!1392361) b!7541285))

(assert (= (and d!2311386 (not c!1392361)) b!7541286))

(assert (= (and d!2311386 res!3022240) b!7541287))

(assert (= (and b!7541287 res!3022241) b!7541288))

(declare-fun m!8110578 () Bool)

(assert (=> b!7541286 m!8110578))

(declare-fun m!8110580 () Bool)

(assert (=> d!2311386 m!8110580))

(assert (=> d!2311386 m!8110398))

(declare-fun m!8110582 () Bool)

(assert (=> d!2311386 m!8110582))

(declare-fun m!8110584 () Bool)

(assert (=> b!7541287 m!8110584))

(assert (=> b!7541287 m!8110214))

(declare-fun m!8110586 () Bool)

(assert (=> b!7541287 m!8110586))

(assert (=> b!7540838 d!2311386))

(declare-fun b!7541290 () Bool)

(declare-fun e!4493188 () List!72787)

(assert (=> b!7541290 (= e!4493188 (Cons!72663 (h!79111 lt!2643217) (++!17421 (t!387494 lt!2643217) lt!2643231)))))

(declare-fun b!7541289 () Bool)

(assert (=> b!7541289 (= e!4493188 lt!2643231)))

(declare-fun e!4493189 () Bool)

(declare-fun lt!2643369 () List!72787)

(declare-fun b!7541292 () Bool)

(assert (=> b!7541292 (= e!4493189 (or (not (= lt!2643231 Nil!72663)) (= lt!2643369 lt!2643217)))))

(declare-fun d!2311388 () Bool)

(assert (=> d!2311388 e!4493189))

(declare-fun res!3022242 () Bool)

(assert (=> d!2311388 (=> (not res!3022242) (not e!4493189))))

(assert (=> d!2311388 (= res!3022242 (= (content!15367 lt!2643369) (set.union (content!15367 lt!2643217) (content!15367 lt!2643231))))))

(assert (=> d!2311388 (= lt!2643369 e!4493188)))

(declare-fun c!1392362 () Bool)

(assert (=> d!2311388 (= c!1392362 (is-Nil!72663 lt!2643217))))

(assert (=> d!2311388 (= (++!17421 lt!2643217 lt!2643231) lt!2643369)))

(declare-fun b!7541291 () Bool)

(declare-fun res!3022243 () Bool)

(assert (=> b!7541291 (=> (not res!3022243) (not e!4493189))))

(assert (=> b!7541291 (= res!3022243 (= (size!42400 lt!2643369) (+ (size!42400 lt!2643217) (size!42400 lt!2643231))))))

(assert (= (and d!2311388 c!1392362) b!7541289))

(assert (= (and d!2311388 (not c!1392362)) b!7541290))

(assert (= (and d!2311388 res!3022242) b!7541291))

(assert (= (and b!7541291 res!3022243) b!7541292))

(declare-fun m!8110588 () Bool)

(assert (=> b!7541290 m!8110588))

(declare-fun m!8110590 () Bool)

(assert (=> d!2311388 m!8110590))

(assert (=> d!2311388 m!8110562))

(assert (=> d!2311388 m!8110370))

(declare-fun m!8110592 () Bool)

(assert (=> b!7541291 m!8110592))

(assert (=> b!7541291 m!8110566))

(assert (=> b!7541291 m!8110374))

(assert (=> b!7540838 d!2311388))

(declare-fun d!2311390 () Bool)

(assert (=> d!2311390 (= (++!17421 (++!17421 testedP!423 lt!2643217) lt!2643231) (++!17421 testedP!423 (++!17421 lt!2643217 lt!2643231)))))

(declare-fun lt!2643372 () Unit!166746)

(declare-fun choose!58352 (List!72787 List!72787 List!72787) Unit!166746)

(assert (=> d!2311390 (= lt!2643372 (choose!58352 testedP!423 lt!2643217 lt!2643231))))

(assert (=> d!2311390 (= (lemmaConcatAssociativity!3069 testedP!423 lt!2643217 lt!2643231) lt!2643372)))

(declare-fun bs!1940009 () Bool)

(assert (= bs!1940009 d!2311390))

(declare-fun m!8110594 () Bool)

(assert (=> bs!1940009 m!8110594))

(assert (=> bs!1940009 m!8110228))

(declare-fun m!8110596 () Bool)

(assert (=> bs!1940009 m!8110596))

(assert (=> bs!1940009 m!8110202))

(assert (=> bs!1940009 m!8110228))

(assert (=> bs!1940009 m!8110202))

(declare-fun m!8110598 () Bool)

(assert (=> bs!1940009 m!8110598))

(assert (=> b!7540838 d!2311390))

(declare-fun b!7541294 () Bool)

(declare-fun e!4493190 () List!72787)

(assert (=> b!7541294 (= e!4493190 (Cons!72663 (h!79111 testedP!423) (++!17421 (t!387494 testedP!423) lt!2643234)))))

(declare-fun b!7541293 () Bool)

(assert (=> b!7541293 (= e!4493190 lt!2643234)))

(declare-fun e!4493191 () Bool)

(declare-fun b!7541296 () Bool)

(declare-fun lt!2643373 () List!72787)

(assert (=> b!7541296 (= e!4493191 (or (not (= lt!2643234 Nil!72663)) (= lt!2643373 testedP!423)))))

(declare-fun d!2311392 () Bool)

(assert (=> d!2311392 e!4493191))

(declare-fun res!3022244 () Bool)

(assert (=> d!2311392 (=> (not res!3022244) (not e!4493191))))

(assert (=> d!2311392 (= res!3022244 (= (content!15367 lt!2643373) (set.union (content!15367 testedP!423) (content!15367 lt!2643234))))))

(assert (=> d!2311392 (= lt!2643373 e!4493190)))

(declare-fun c!1392363 () Bool)

(assert (=> d!2311392 (= c!1392363 (is-Nil!72663 testedP!423))))

(assert (=> d!2311392 (= (++!17421 testedP!423 lt!2643234) lt!2643373)))

(declare-fun b!7541295 () Bool)

(declare-fun res!3022245 () Bool)

(assert (=> b!7541295 (=> (not res!3022245) (not e!4493191))))

(assert (=> b!7541295 (= res!3022245 (= (size!42400 lt!2643373) (+ (size!42400 testedP!423) (size!42400 lt!2643234))))))

(assert (= (and d!2311392 c!1392363) b!7541293))

(assert (= (and d!2311392 (not c!1392363)) b!7541294))

(assert (= (and d!2311392 res!3022244) b!7541295))

(assert (= (and b!7541295 res!3022245) b!7541296))

(declare-fun m!8110600 () Bool)

(assert (=> b!7541294 m!8110600))

(declare-fun m!8110602 () Bool)

(assert (=> d!2311392 m!8110602))

(assert (=> d!2311392 m!8110398))

(declare-fun m!8110604 () Bool)

(assert (=> d!2311392 m!8110604))

(declare-fun m!8110606 () Bool)

(assert (=> b!7541295 m!8110606))

(assert (=> b!7541295 m!8110214))

(declare-fun m!8110608 () Bool)

(assert (=> b!7541295 m!8110608))

(assert (=> b!7540848 d!2311392))

(declare-fun d!2311394 () Bool)

(declare-fun lostCauseFct!434 (Regex!19904) Bool)

(assert (=> d!2311394 (= (lostCause!1696 r!24333) (lostCauseFct!434 r!24333))))

(declare-fun bs!1940010 () Bool)

(assert (= bs!1940010 d!2311394))

(declare-fun m!8110610 () Bool)

(assert (=> bs!1940010 m!8110610))

(assert (=> b!7540839 d!2311394))

(declare-fun b!7541305 () Bool)

(declare-fun e!4493196 () Bool)

(declare-fun e!4493199 () Bool)

(assert (=> b!7541305 (= e!4493196 e!4493199)))

(declare-fun c!1392368 () Bool)

(assert (=> b!7541305 (= c!1392368 (is-Star!19904 r!24333))))

(declare-fun b!7541309 () Bool)

(declare-fun e!4493197 () Bool)

(declare-fun call!691753 () Bool)

(assert (=> b!7541309 (= e!4493197 call!691753)))

(declare-fun b!7541311 () Bool)

(declare-fun e!4493201 () Bool)

(declare-fun call!691755 () Bool)

(assert (=> b!7541311 (= e!4493201 call!691755)))

(declare-fun b!7541312 () Bool)

(declare-fun e!4493202 () Bool)

(assert (=> b!7541312 (= e!4493199 e!4493202)))

(declare-fun c!1392369 () Bool)

(assert (=> b!7541312 (= c!1392369 (is-Union!19904 r!24333))))

(declare-fun bm!691748 () Bool)

(assert (=> bm!691748 (= call!691753 call!691755)))

(declare-fun bm!691749 () Bool)

(assert (=> bm!691749 (= call!691755 (validRegex!10332 (ite c!1392368 (reg!20233 r!24333) (ite c!1392369 (regTwo!40321 r!24333) (regTwo!40320 r!24333)))))))

(declare-fun b!7541313 () Bool)

(declare-fun res!3022250 () Bool)

(declare-fun e!4493198 () Bool)

(assert (=> b!7541313 (=> res!3022250 e!4493198)))

(assert (=> b!7541313 (= res!3022250 (not (is-Concat!28749 r!24333)))))

(assert (=> b!7541313 (= e!4493202 e!4493198)))

(declare-fun b!7541314 () Bool)

(assert (=> b!7541314 (= e!4493198 e!4493197)))

(declare-fun res!3022249 () Bool)

(assert (=> b!7541314 (=> (not res!3022249) (not e!4493197))))

(declare-fun call!691754 () Bool)

(assert (=> b!7541314 (= res!3022249 call!691754)))

(declare-fun d!2311396 () Bool)

(declare-fun res!3022247 () Bool)

(assert (=> d!2311396 (=> res!3022247 e!4493196)))

(assert (=> d!2311396 (= res!3022247 (is-ElementMatch!19904 r!24333))))

(assert (=> d!2311396 (= (validRegex!10332 r!24333) e!4493196)))

(declare-fun bm!691750 () Bool)

(assert (=> bm!691750 (= call!691754 (validRegex!10332 (ite c!1392369 (regOne!40321 r!24333) (regOne!40320 r!24333))))))

(declare-fun b!7541315 () Bool)

(declare-fun e!4493200 () Bool)

(assert (=> b!7541315 (= e!4493200 call!691753)))

(declare-fun b!7541316 () Bool)

(declare-fun res!3022248 () Bool)

(assert (=> b!7541316 (=> (not res!3022248) (not e!4493200))))

(assert (=> b!7541316 (= res!3022248 call!691754)))

(assert (=> b!7541316 (= e!4493202 e!4493200)))

(declare-fun b!7541317 () Bool)

(assert (=> b!7541317 (= e!4493199 e!4493201)))

(declare-fun res!3022246 () Bool)

(assert (=> b!7541317 (= res!3022246 (not (nullable!8679 (reg!20233 r!24333))))))

(assert (=> b!7541317 (=> (not res!3022246) (not e!4493201))))

(assert (= (and d!2311396 (not res!3022247)) b!7541305))

(assert (= (and b!7541305 c!1392368) b!7541317))

(assert (= (and b!7541305 (not c!1392368)) b!7541312))

(assert (= (and b!7541317 res!3022246) b!7541311))

(assert (= (and b!7541312 c!1392369) b!7541316))

(assert (= (and b!7541312 (not c!1392369)) b!7541313))

(assert (= (and b!7541316 res!3022248) b!7541315))

(assert (= (and b!7541313 (not res!3022250)) b!7541314))

(assert (= (and b!7541314 res!3022249) b!7541309))

(assert (= (or b!7541316 b!7541314) bm!691750))

(assert (= (or b!7541315 b!7541309) bm!691748))

(assert (= (or b!7541311 bm!691748) bm!691749))

(declare-fun m!8110612 () Bool)

(assert (=> bm!691749 m!8110612))

(declare-fun m!8110614 () Bool)

(assert (=> bm!691750 m!8110614))

(declare-fun m!8110616 () Bool)

(assert (=> b!7541317 m!8110616))

(assert (=> b!7540860 d!2311396))

(declare-fun d!2311398 () Bool)

(declare-fun lt!2643376 () Regex!19904)

(assert (=> d!2311398 (validRegex!10332 lt!2643376)))

(declare-fun e!4493209 () Regex!19904)

(assert (=> d!2311398 (= lt!2643376 e!4493209)))

(declare-fun c!1392376 () Bool)

(assert (=> d!2311398 (= c!1392376 (is-Cons!72663 testedP!423))))

(assert (=> d!2311398 (validRegex!10332 baseR!101)))

(assert (=> d!2311398 (= (derivative!436 baseR!101 testedP!423) lt!2643376)))

(declare-fun b!7541326 () Bool)

(assert (=> b!7541326 (= e!4493209 (derivative!436 (derivativeStep!5694 baseR!101 (h!79111 testedP!423)) (t!387494 testedP!423)))))

(declare-fun b!7541327 () Bool)

(assert (=> b!7541327 (= e!4493209 baseR!101)))

(assert (= (and d!2311398 c!1392376) b!7541326))

(assert (= (and d!2311398 (not c!1392376)) b!7541327))

(declare-fun m!8110618 () Bool)

(assert (=> d!2311398 m!8110618))

(assert (=> d!2311398 m!8110196))

(declare-fun m!8110620 () Bool)

(assert (=> b!7541326 m!8110620))

(assert (=> b!7541326 m!8110620))

(declare-fun m!8110622 () Bool)

(assert (=> b!7541326 m!8110622))

(assert (=> b!7540862 d!2311398))

(declare-fun b!7541328 () Bool)

(declare-fun e!4493216 () Bool)

(assert (=> b!7541328 (= e!4493216 (matchR!9506 (derivativeStep!5694 r!24333 (head!15494 lt!2643217)) (tail!15040 lt!2643217)))))

(declare-fun b!7541329 () Bool)

(declare-fun e!4493213 () Bool)

(declare-fun e!4493210 () Bool)

(assert (=> b!7541329 (= e!4493213 e!4493210)))

(declare-fun res!3022253 () Bool)

(assert (=> b!7541329 (=> res!3022253 e!4493210)))

(declare-fun call!691760 () Bool)

(assert (=> b!7541329 (= res!3022253 call!691760)))

(declare-fun b!7541330 () Bool)

(declare-fun res!3022252 () Bool)

(declare-fun e!4493215 () Bool)

(assert (=> b!7541330 (=> (not res!3022252) (not e!4493215))))

(assert (=> b!7541330 (= res!3022252 (not call!691760))))

(declare-fun b!7541331 () Bool)

(assert (=> b!7541331 (= e!4493210 (not (= (head!15494 lt!2643217) (c!1392271 r!24333))))))

(declare-fun b!7541332 () Bool)

(assert (=> b!7541332 (= e!4493215 (= (head!15494 lt!2643217) (c!1392271 r!24333)))))

(declare-fun b!7541333 () Bool)

(declare-fun res!3022258 () Bool)

(declare-fun e!4493212 () Bool)

(assert (=> b!7541333 (=> res!3022258 e!4493212)))

(assert (=> b!7541333 (= res!3022258 (not (is-ElementMatch!19904 r!24333)))))

(declare-fun e!4493214 () Bool)

(assert (=> b!7541333 (= e!4493214 e!4493212)))

(declare-fun b!7541334 () Bool)

(assert (=> b!7541334 (= e!4493216 (nullable!8679 r!24333))))

(declare-fun b!7541335 () Bool)

(declare-fun res!3022251 () Bool)

(assert (=> b!7541335 (=> res!3022251 e!4493212)))

(assert (=> b!7541335 (= res!3022251 e!4493215)))

(declare-fun res!3022254 () Bool)

(assert (=> b!7541335 (=> (not res!3022254) (not e!4493215))))

(declare-fun lt!2643377 () Bool)

(assert (=> b!7541335 (= res!3022254 lt!2643377)))

(declare-fun bm!691755 () Bool)

(assert (=> bm!691755 (= call!691760 (isEmpty!41375 lt!2643217))))

(declare-fun d!2311400 () Bool)

(declare-fun e!4493211 () Bool)

(assert (=> d!2311400 e!4493211))

(declare-fun c!1392377 () Bool)

(assert (=> d!2311400 (= c!1392377 (is-EmptyExpr!19904 r!24333))))

(assert (=> d!2311400 (= lt!2643377 e!4493216)))

(declare-fun c!1392378 () Bool)

(assert (=> d!2311400 (= c!1392378 (isEmpty!41375 lt!2643217))))

(assert (=> d!2311400 (validRegex!10332 r!24333)))

(assert (=> d!2311400 (= (matchR!9506 r!24333 lt!2643217) lt!2643377)))

(declare-fun b!7541336 () Bool)

(assert (=> b!7541336 (= e!4493211 (= lt!2643377 call!691760))))

(declare-fun b!7541337 () Bool)

(assert (=> b!7541337 (= e!4493212 e!4493213)))

(declare-fun res!3022255 () Bool)

(assert (=> b!7541337 (=> (not res!3022255) (not e!4493213))))

(assert (=> b!7541337 (= res!3022255 (not lt!2643377))))

(declare-fun b!7541338 () Bool)

(declare-fun res!3022256 () Bool)

(assert (=> b!7541338 (=> (not res!3022256) (not e!4493215))))

(assert (=> b!7541338 (= res!3022256 (isEmpty!41375 (tail!15040 lt!2643217)))))

(declare-fun b!7541339 () Bool)

(assert (=> b!7541339 (= e!4493214 (not lt!2643377))))

(declare-fun b!7541340 () Bool)

(assert (=> b!7541340 (= e!4493211 e!4493214)))

(declare-fun c!1392379 () Bool)

(assert (=> b!7541340 (= c!1392379 (is-EmptyLang!19904 r!24333))))

(declare-fun b!7541341 () Bool)

(declare-fun res!3022257 () Bool)

(assert (=> b!7541341 (=> res!3022257 e!4493210)))

(assert (=> b!7541341 (= res!3022257 (not (isEmpty!41375 (tail!15040 lt!2643217))))))

(assert (= (and d!2311400 c!1392378) b!7541334))

(assert (= (and d!2311400 (not c!1392378)) b!7541328))

(assert (= (and d!2311400 c!1392377) b!7541336))

(assert (= (and d!2311400 (not c!1392377)) b!7541340))

(assert (= (and b!7541340 c!1392379) b!7541339))

(assert (= (and b!7541340 (not c!1392379)) b!7541333))

(assert (= (and b!7541333 (not res!3022258)) b!7541335))

(assert (= (and b!7541335 res!3022254) b!7541330))

(assert (= (and b!7541330 res!3022252) b!7541338))

(assert (= (and b!7541338 res!3022256) b!7541332))

(assert (= (and b!7541335 (not res!3022251)) b!7541337))

(assert (= (and b!7541337 res!3022255) b!7541329))

(assert (= (and b!7541329 (not res!3022253)) b!7541341))

(assert (= (and b!7541341 (not res!3022257)) b!7541331))

(assert (= (or b!7541336 b!7541329 b!7541330) bm!691755))

(assert (=> b!7541332 m!8110206))

(assert (=> b!7541328 m!8110206))

(assert (=> b!7541328 m!8110206))

(declare-fun m!8110624 () Bool)

(assert (=> b!7541328 m!8110624))

(assert (=> b!7541328 m!8110166))

(assert (=> b!7541328 m!8110624))

(assert (=> b!7541328 m!8110166))

(declare-fun m!8110626 () Bool)

(assert (=> b!7541328 m!8110626))

(assert (=> b!7541341 m!8110166))

(assert (=> b!7541341 m!8110166))

(declare-fun m!8110628 () Bool)

(assert (=> b!7541341 m!8110628))

(declare-fun m!8110630 () Bool)

(assert (=> b!7541334 m!8110630))

(declare-fun m!8110632 () Bool)

(assert (=> bm!691755 m!8110632))

(assert (=> b!7541331 m!8110206))

(assert (=> b!7541338 m!8110166))

(assert (=> b!7541338 m!8110166))

(assert (=> b!7541338 m!8110628))

(assert (=> d!2311400 m!8110632))

(assert (=> d!2311400 m!8110198))

(assert (=> b!7540861 d!2311400))

(declare-fun d!2311402 () Bool)

(declare-fun lt!2643378 () List!72787)

(assert (=> d!2311402 (= (++!17421 testedP!423 lt!2643378) knownP!30)))

(declare-fun e!4493217 () List!72787)

(assert (=> d!2311402 (= lt!2643378 e!4493217)))

(declare-fun c!1392380 () Bool)

(assert (=> d!2311402 (= c!1392380 (is-Cons!72663 testedP!423))))

(assert (=> d!2311402 (>= (size!42400 knownP!30) (size!42400 testedP!423))))

(assert (=> d!2311402 (= (getSuffix!3590 knownP!30 testedP!423) lt!2643378)))

(declare-fun b!7541342 () Bool)

(assert (=> b!7541342 (= e!4493217 (getSuffix!3590 (tail!15040 knownP!30) (t!387494 testedP!423)))))

(declare-fun b!7541343 () Bool)

(assert (=> b!7541343 (= e!4493217 knownP!30)))

(assert (= (and d!2311402 c!1392380) b!7541342))

(assert (= (and d!2311402 (not c!1392380)) b!7541343))

(declare-fun m!8110634 () Bool)

(assert (=> d!2311402 m!8110634))

(assert (=> d!2311402 m!8110216))

(assert (=> d!2311402 m!8110214))

(assert (=> b!7541342 m!8110356))

(assert (=> b!7541342 m!8110356))

(declare-fun m!8110636 () Bool)

(assert (=> b!7541342 m!8110636))

(assert (=> b!7540861 d!2311402))

(declare-fun b!7541345 () Bool)

(declare-fun res!3022259 () Bool)

(declare-fun e!4493219 () Bool)

(assert (=> b!7541345 (=> (not res!3022259) (not e!4493219))))

(assert (=> b!7541345 (= res!3022259 (= (head!15494 testedP!423) (head!15494 knownP!30)))))

(declare-fun b!7541346 () Bool)

(assert (=> b!7541346 (= e!4493219 (isPrefix!6110 (tail!15040 testedP!423) (tail!15040 knownP!30)))))

(declare-fun b!7541347 () Bool)

(declare-fun e!4493218 () Bool)

(assert (=> b!7541347 (= e!4493218 (>= (size!42400 knownP!30) (size!42400 testedP!423)))))

(declare-fun b!7541344 () Bool)

(declare-fun e!4493220 () Bool)

(assert (=> b!7541344 (= e!4493220 e!4493219)))

(declare-fun res!3022262 () Bool)

(assert (=> b!7541344 (=> (not res!3022262) (not e!4493219))))

(assert (=> b!7541344 (= res!3022262 (not (is-Nil!72663 knownP!30)))))

(declare-fun d!2311404 () Bool)

(assert (=> d!2311404 e!4493218))

(declare-fun res!3022260 () Bool)

(assert (=> d!2311404 (=> res!3022260 e!4493218)))

(declare-fun lt!2643379 () Bool)

(assert (=> d!2311404 (= res!3022260 (not lt!2643379))))

(assert (=> d!2311404 (= lt!2643379 e!4493220)))

(declare-fun res!3022261 () Bool)

(assert (=> d!2311404 (=> res!3022261 e!4493220)))

(assert (=> d!2311404 (= res!3022261 (is-Nil!72663 testedP!423))))

(assert (=> d!2311404 (= (isPrefix!6110 testedP!423 knownP!30) lt!2643379)))

(assert (= (and d!2311404 (not res!3022261)) b!7541344))

(assert (= (and b!7541344 res!3022262) b!7541345))

(assert (= (and b!7541345 res!3022259) b!7541346))

(assert (= (and d!2311404 (not res!3022260)) b!7541347))

(assert (=> b!7541345 m!8110568))

(assert (=> b!7541345 m!8110452))

(assert (=> b!7541346 m!8110570))

(assert (=> b!7541346 m!8110356))

(assert (=> b!7541346 m!8110570))

(assert (=> b!7541346 m!8110356))

(declare-fun m!8110638 () Bool)

(assert (=> b!7541346 m!8110638))

(assert (=> b!7541347 m!8110216))

(assert (=> b!7541347 m!8110214))

(assert (=> b!7540861 d!2311404))

(declare-fun d!2311406 () Bool)

(assert (=> d!2311406 (isPrefix!6110 testedP!423 knownP!30)))

(declare-fun lt!2643380 () Unit!166746)

(assert (=> d!2311406 (= lt!2643380 (choose!58345 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311406 (isPrefix!6110 knownP!30 input!7874)))

(assert (=> d!2311406 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!860 knownP!30 testedP!423 input!7874) lt!2643380)))

(declare-fun bs!1940011 () Bool)

(assert (= bs!1940011 d!2311406))

(assert (=> bs!1940011 m!8110222))

(declare-fun m!8110640 () Bool)

(assert (=> bs!1940011 m!8110640))

(assert (=> bs!1940011 m!8110236))

(assert (=> b!7540861 d!2311406))

(declare-fun b!7541360 () Bool)

(declare-fun e!4493223 () Bool)

(declare-fun tp!2193454 () Bool)

(assert (=> b!7541360 (= e!4493223 tp!2193454)))

(declare-fun b!7541361 () Bool)

(declare-fun tp!2193451 () Bool)

(declare-fun tp!2193453 () Bool)

(assert (=> b!7541361 (= e!4493223 (and tp!2193451 tp!2193453))))

(declare-fun b!7541359 () Bool)

(declare-fun tp!2193452 () Bool)

(declare-fun tp!2193450 () Bool)

(assert (=> b!7541359 (= e!4493223 (and tp!2193452 tp!2193450))))

(declare-fun b!7541358 () Bool)

(assert (=> b!7541358 (= e!4493223 tp_is_empty!50163)))

(assert (=> b!7540847 (= tp!2193400 e!4493223)))

(assert (= (and b!7540847 (is-ElementMatch!19904 (reg!20233 r!24333))) b!7541358))

(assert (= (and b!7540847 (is-Concat!28749 (reg!20233 r!24333))) b!7541359))

(assert (= (and b!7540847 (is-Star!19904 (reg!20233 r!24333))) b!7541360))

(assert (= (and b!7540847 (is-Union!19904 (reg!20233 r!24333))) b!7541361))

(declare-fun b!7541366 () Bool)

(declare-fun e!4493226 () Bool)

(declare-fun tp!2193457 () Bool)

(assert (=> b!7541366 (= e!4493226 (and tp_is_empty!50163 tp!2193457))))

(assert (=> b!7540841 (= tp!2193397 e!4493226)))

(assert (= (and b!7540841 (is-Cons!72663 (t!387494 testedP!423))) b!7541366))

(declare-fun b!7541369 () Bool)

(declare-fun e!4493227 () Bool)

(declare-fun tp!2193462 () Bool)

(assert (=> b!7541369 (= e!4493227 tp!2193462)))

(declare-fun b!7541370 () Bool)

(declare-fun tp!2193459 () Bool)

(declare-fun tp!2193461 () Bool)

(assert (=> b!7541370 (= e!4493227 (and tp!2193459 tp!2193461))))

(declare-fun b!7541368 () Bool)

(declare-fun tp!2193460 () Bool)

(declare-fun tp!2193458 () Bool)

(assert (=> b!7541368 (= e!4493227 (and tp!2193460 tp!2193458))))

(declare-fun b!7541367 () Bool)

(assert (=> b!7541367 (= e!4493227 tp_is_empty!50163)))

(assert (=> b!7540857 (= tp!2193392 e!4493227)))

(assert (= (and b!7540857 (is-ElementMatch!19904 (regOne!40320 r!24333))) b!7541367))

(assert (= (and b!7540857 (is-Concat!28749 (regOne!40320 r!24333))) b!7541368))

(assert (= (and b!7540857 (is-Star!19904 (regOne!40320 r!24333))) b!7541369))

(assert (= (and b!7540857 (is-Union!19904 (regOne!40320 r!24333))) b!7541370))

(declare-fun b!7541383 () Bool)

(declare-fun e!4493233 () Bool)

(declare-fun tp!2193467 () Bool)

(assert (=> b!7541383 (= e!4493233 tp!2193467)))

(declare-fun b!7541384 () Bool)

(declare-fun tp!2193464 () Bool)

(declare-fun tp!2193466 () Bool)

(assert (=> b!7541384 (= e!4493233 (and tp!2193464 tp!2193466))))

(declare-fun b!7541382 () Bool)

(declare-fun tp!2193465 () Bool)

(declare-fun tp!2193463 () Bool)

(assert (=> b!7541382 (= e!4493233 (and tp!2193465 tp!2193463))))

(declare-fun b!7541381 () Bool)

(assert (=> b!7541381 (= e!4493233 tp_is_empty!50163)))

(assert (=> b!7540857 (= tp!2193398 e!4493233)))

(assert (= (and b!7540857 (is-ElementMatch!19904 (regTwo!40320 r!24333))) b!7541381))

(assert (= (and b!7540857 (is-Concat!28749 (regTwo!40320 r!24333))) b!7541382))

(assert (= (and b!7540857 (is-Star!19904 (regTwo!40320 r!24333))) b!7541383))

(assert (= (and b!7540857 (is-Union!19904 (regTwo!40320 r!24333))) b!7541384))

(declare-fun b!7541387 () Bool)

(declare-fun e!4493234 () Bool)

(declare-fun tp!2193472 () Bool)

(assert (=> b!7541387 (= e!4493234 tp!2193472)))

(declare-fun b!7541388 () Bool)

(declare-fun tp!2193469 () Bool)

(declare-fun tp!2193471 () Bool)

(assert (=> b!7541388 (= e!4493234 (and tp!2193469 tp!2193471))))

(declare-fun b!7541386 () Bool)

(declare-fun tp!2193470 () Bool)

(declare-fun tp!2193468 () Bool)

(assert (=> b!7541386 (= e!4493234 (and tp!2193470 tp!2193468))))

(declare-fun b!7541385 () Bool)

(assert (=> b!7541385 (= e!4493234 tp_is_empty!50163)))

(assert (=> b!7540853 (= tp!2193395 e!4493234)))

(assert (= (and b!7540853 (is-ElementMatch!19904 (regOne!40320 baseR!101))) b!7541385))

(assert (= (and b!7540853 (is-Concat!28749 (regOne!40320 baseR!101))) b!7541386))

(assert (= (and b!7540853 (is-Star!19904 (regOne!40320 baseR!101))) b!7541387))

(assert (= (and b!7540853 (is-Union!19904 (regOne!40320 baseR!101))) b!7541388))

(declare-fun b!7541391 () Bool)

(declare-fun e!4493235 () Bool)

(declare-fun tp!2193477 () Bool)

(assert (=> b!7541391 (= e!4493235 tp!2193477)))

(declare-fun b!7541392 () Bool)

(declare-fun tp!2193474 () Bool)

(declare-fun tp!2193476 () Bool)

(assert (=> b!7541392 (= e!4493235 (and tp!2193474 tp!2193476))))

(declare-fun b!7541390 () Bool)

(declare-fun tp!2193475 () Bool)

(declare-fun tp!2193473 () Bool)

(assert (=> b!7541390 (= e!4493235 (and tp!2193475 tp!2193473))))

(declare-fun b!7541389 () Bool)

(assert (=> b!7541389 (= e!4493235 tp_is_empty!50163)))

(assert (=> b!7540853 (= tp!2193389 e!4493235)))

(assert (= (and b!7540853 (is-ElementMatch!19904 (regTwo!40320 baseR!101))) b!7541389))

(assert (= (and b!7540853 (is-Concat!28749 (regTwo!40320 baseR!101))) b!7541390))

(assert (= (and b!7540853 (is-Star!19904 (regTwo!40320 baseR!101))) b!7541391))

(assert (= (and b!7540853 (is-Union!19904 (regTwo!40320 baseR!101))) b!7541392))

(declare-fun b!7541395 () Bool)

(declare-fun e!4493236 () Bool)

(declare-fun tp!2193482 () Bool)

(assert (=> b!7541395 (= e!4493236 tp!2193482)))

(declare-fun b!7541396 () Bool)

(declare-fun tp!2193479 () Bool)

(declare-fun tp!2193481 () Bool)

(assert (=> b!7541396 (= e!4493236 (and tp!2193479 tp!2193481))))

(declare-fun b!7541394 () Bool)

(declare-fun tp!2193480 () Bool)

(declare-fun tp!2193478 () Bool)

(assert (=> b!7541394 (= e!4493236 (and tp!2193480 tp!2193478))))

(declare-fun b!7541393 () Bool)

(assert (=> b!7541393 (= e!4493236 tp_is_empty!50163)))

(assert (=> b!7540864 (= tp!2193393 e!4493236)))

(assert (= (and b!7540864 (is-ElementMatch!19904 (reg!20233 baseR!101))) b!7541393))

(assert (= (and b!7540864 (is-Concat!28749 (reg!20233 baseR!101))) b!7541394))

(assert (= (and b!7540864 (is-Star!19904 (reg!20233 baseR!101))) b!7541395))

(assert (= (and b!7540864 (is-Union!19904 (reg!20233 baseR!101))) b!7541396))

(declare-fun b!7541397 () Bool)

(declare-fun e!4493237 () Bool)

(declare-fun tp!2193483 () Bool)

(assert (=> b!7541397 (= e!4493237 (and tp_is_empty!50163 tp!2193483))))

(assert (=> b!7540850 (= tp!2193394 e!4493237)))

(assert (= (and b!7540850 (is-Cons!72663 (t!387494 knownP!30))) b!7541397))

(declare-fun b!7541402 () Bool)

(declare-fun e!4493240 () Bool)

(declare-fun tp!2193484 () Bool)

(assert (=> b!7541402 (= e!4493240 (and tp_is_empty!50163 tp!2193484))))

(assert (=> b!7540849 (= tp!2193391 e!4493240)))

(assert (= (and b!7540849 (is-Cons!72663 (t!387494 input!7874))) b!7541402))

(declare-fun b!7541405 () Bool)

(declare-fun e!4493241 () Bool)

(declare-fun tp!2193489 () Bool)

(assert (=> b!7541405 (= e!4493241 tp!2193489)))

(declare-fun b!7541406 () Bool)

(declare-fun tp!2193486 () Bool)

(declare-fun tp!2193488 () Bool)

(assert (=> b!7541406 (= e!4493241 (and tp!2193486 tp!2193488))))

(declare-fun b!7541404 () Bool)

(declare-fun tp!2193487 () Bool)

(declare-fun tp!2193485 () Bool)

(assert (=> b!7541404 (= e!4493241 (and tp!2193487 tp!2193485))))

(declare-fun b!7541403 () Bool)

(assert (=> b!7541403 (= e!4493241 tp_is_empty!50163)))

(assert (=> b!7540851 (= tp!2193399 e!4493241)))

(assert (= (and b!7540851 (is-ElementMatch!19904 (regOne!40321 r!24333))) b!7541403))

(assert (= (and b!7540851 (is-Concat!28749 (regOne!40321 r!24333))) b!7541404))

(assert (= (and b!7540851 (is-Star!19904 (regOne!40321 r!24333))) b!7541405))

(assert (= (and b!7540851 (is-Union!19904 (regOne!40321 r!24333))) b!7541406))

(declare-fun b!7541409 () Bool)

(declare-fun e!4493242 () Bool)

(declare-fun tp!2193494 () Bool)

(assert (=> b!7541409 (= e!4493242 tp!2193494)))

(declare-fun b!7541410 () Bool)

(declare-fun tp!2193491 () Bool)

(declare-fun tp!2193493 () Bool)

(assert (=> b!7541410 (= e!4493242 (and tp!2193491 tp!2193493))))

(declare-fun b!7541408 () Bool)

(declare-fun tp!2193492 () Bool)

(declare-fun tp!2193490 () Bool)

(assert (=> b!7541408 (= e!4493242 (and tp!2193492 tp!2193490))))

(declare-fun b!7541407 () Bool)

(assert (=> b!7541407 (= e!4493242 tp_is_empty!50163)))

(assert (=> b!7540851 (= tp!2193388 e!4493242)))

(assert (= (and b!7540851 (is-ElementMatch!19904 (regTwo!40321 r!24333))) b!7541407))

(assert (= (and b!7540851 (is-Concat!28749 (regTwo!40321 r!24333))) b!7541408))

(assert (= (and b!7540851 (is-Star!19904 (regTwo!40321 r!24333))) b!7541409))

(assert (= (and b!7540851 (is-Union!19904 (regTwo!40321 r!24333))) b!7541410))

(declare-fun b!7541417 () Bool)

(declare-fun e!4493246 () Bool)

(declare-fun tp!2193499 () Bool)

(assert (=> b!7541417 (= e!4493246 tp!2193499)))

(declare-fun b!7541418 () Bool)

(declare-fun tp!2193496 () Bool)

(declare-fun tp!2193498 () Bool)

(assert (=> b!7541418 (= e!4493246 (and tp!2193496 tp!2193498))))

(declare-fun b!7541416 () Bool)

(declare-fun tp!2193497 () Bool)

(declare-fun tp!2193495 () Bool)

(assert (=> b!7541416 (= e!4493246 (and tp!2193497 tp!2193495))))

(declare-fun b!7541415 () Bool)

(assert (=> b!7541415 (= e!4493246 tp_is_empty!50163)))

(assert (=> b!7540840 (= tp!2193396 e!4493246)))

(assert (= (and b!7540840 (is-ElementMatch!19904 (regOne!40321 baseR!101))) b!7541415))

(assert (= (and b!7540840 (is-Concat!28749 (regOne!40321 baseR!101))) b!7541416))

(assert (= (and b!7540840 (is-Star!19904 (regOne!40321 baseR!101))) b!7541417))

(assert (= (and b!7540840 (is-Union!19904 (regOne!40321 baseR!101))) b!7541418))

(declare-fun b!7541421 () Bool)

(declare-fun e!4493247 () Bool)

(declare-fun tp!2193504 () Bool)

(assert (=> b!7541421 (= e!4493247 tp!2193504)))

(declare-fun b!7541422 () Bool)

(declare-fun tp!2193501 () Bool)

(declare-fun tp!2193503 () Bool)

(assert (=> b!7541422 (= e!4493247 (and tp!2193501 tp!2193503))))

(declare-fun b!7541420 () Bool)

(declare-fun tp!2193502 () Bool)

(declare-fun tp!2193500 () Bool)

(assert (=> b!7541420 (= e!4493247 (and tp!2193502 tp!2193500))))

(declare-fun b!7541419 () Bool)

(assert (=> b!7541419 (= e!4493247 tp_is_empty!50163)))

(assert (=> b!7540840 (= tp!2193390 e!4493247)))

(assert (= (and b!7540840 (is-ElementMatch!19904 (regTwo!40321 baseR!101))) b!7541419))

(assert (= (and b!7540840 (is-Concat!28749 (regTwo!40321 baseR!101))) b!7541420))

(assert (= (and b!7540840 (is-Star!19904 (regTwo!40321 baseR!101))) b!7541421))

(assert (= (and b!7540840 (is-Union!19904 (regTwo!40321 baseR!101))) b!7541422))

(push 1)

(assert (not b!7541247))

(assert (not b!7541396))

(assert (not b!7541360))

(assert (not d!2311302))

(assert (not b!7541420))

(assert (not b!7541264))

(assert (not b!7541251))

(assert (not b!7541394))

(assert (not b!7541369))

(assert (not d!2311318))

(assert (not b!7541395))

(assert (not d!2311312))

(assert (not b!7541328))

(assert (not b!7541134))

(assert (not b!7541346))

(assert (not b!7541269))

(assert (not b!7541317))

(assert (not d!2311388))

(assert (not bm!691750))

(assert (not b!7541388))

(assert (not b!7541250))

(assert (not b!7541020))

(assert (not b!7541076))

(assert (not bm!691747))

(assert (not b!7541382))

(assert (not b!7541014))

(assert (not d!2311290))

(assert (not b!7540955))

(assert (not b!7541263))

(assert (not b!7541257))

(assert (not b!7541405))

(assert (not b!7541406))

(assert (not b!7541332))

(assert (not d!2311316))

(assert (not b!7541366))

(assert (not d!2311350))

(assert (not b!7541253))

(assert (not b!7541334))

(assert (not b!7541130))

(assert (not b!7541268))

(assert (not b!7541386))

(assert (not b!7541013))

(assert (not b!7541132))

(assert (not b!7541295))

(assert (not d!2311406))

(assert (not b!7541279))

(assert (not b!7541418))

(assert (not b!7541278))

(assert (not b!7541342))

(assert (not d!2311298))

(assert (not d!2311392))

(assert (not b!7541416))

(assert (not b!7541392))

(assert (not d!2311308))

(assert (not b!7541370))

(assert (not b!7541347))

(assert (not b!7541133))

(assert (not b!7541338))

(assert (not b!7541421))

(assert (not b!7541262))

(assert (not b!7541368))

(assert (not b!7541361))

(assert (not b!7541422))

(assert (not bm!691730))

(assert (not d!2311304))

(assert (not b!7541341))

(assert (not d!2311330))

(assert (not b!7541077))

(assert (not b!7541345))

(assert (not b!7541410))

(assert tp_is_empty!50163)

(assert (not bm!691740))

(assert (not b!7541391))

(assert (not bm!691741))

(assert (not b!7541404))

(assert (not b!7541015))

(assert (not d!2311394))

(assert (not b!7541149))

(assert (not bm!691749))

(assert (not b!7541022))

(assert (not b!7541390))

(assert (not b!7541384))

(assert (not b!7541274))

(assert (not b!7541290))

(assert (not bm!691755))

(assert (not bm!691728))

(assert (not d!2311400))

(assert (not b!7541359))

(assert (not d!2311338))

(assert (not b!7541282))

(assert (not b!7541260))

(assert (not b!7541275))

(assert (not b!7541383))

(assert (not b!7540988))

(assert (not d!2311310))

(assert (not b!7541291))

(assert (not b!7541187))

(assert (not d!2311402))

(assert (not b!7541287))

(assert (not d!2311390))

(assert (not b!7541402))

(assert (not b!7541294))

(assert (not b!7541326))

(assert (not b!7541397))

(assert (not d!2311378))

(assert (not d!2311398))

(assert (not b!7541409))

(assert (not b!7541387))

(assert (not b!7541408))

(assert (not d!2311372))

(assert (not b!7541417))

(assert (not d!2311386))

(assert (not b!7541057))

(assert (not b!7541286))

(assert (not b!7541280))

(assert (not b!7541058))

(assert (not b!7541284))

(assert (not b!7541331))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

