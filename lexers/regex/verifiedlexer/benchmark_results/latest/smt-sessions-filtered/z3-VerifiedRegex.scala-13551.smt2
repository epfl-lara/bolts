; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729060 () Bool)

(assert start!729060)

(declare-fun b!7538092 () Bool)

(declare-fun e!4491568 () Bool)

(declare-fun tp!2192607 () Bool)

(declare-fun tp!2192595 () Bool)

(assert (=> b!7538092 (= e!4491568 (and tp!2192607 tp!2192595))))

(declare-fun b!7538093 () Bool)

(declare-fun res!3020907 () Bool)

(declare-fun e!4491564 () Bool)

(assert (=> b!7538093 (=> (not res!3020907) (not e!4491564))))

(declare-datatypes ((C!40120 0))(
  ( (C!40121 (val!30500 Int)) )
))
(declare-datatypes ((List!72780 0))(
  ( (Nil!72656) (Cons!72656 (h!79104 C!40120) (t!387487 List!72780)) )
))
(declare-fun testedP!423 () List!72780)

(declare-fun input!7874 () List!72780)

(declare-fun isPrefix!6103 (List!72780 List!72780) Bool)

(assert (=> b!7538093 (= res!3020907 (isPrefix!6103 testedP!423 input!7874))))

(declare-fun b!7538094 () Bool)

(declare-fun tp_is_empty!50149 () Bool)

(assert (=> b!7538094 (= e!4491568 tp_is_empty!50149)))

(declare-fun b!7538095 () Bool)

(declare-fun e!4491562 () Bool)

(assert (=> b!7538095 (= e!4491562 tp_is_empty!50149)))

(declare-fun b!7538096 () Bool)

(declare-fun res!3020897 () Bool)

(assert (=> b!7538096 (=> (not res!3020897) (not e!4491564))))

(declare-datatypes ((Regex!19897 0))(
  ( (ElementMatch!19897 (c!1391784 C!40120)) (Concat!28742 (regOne!40306 Regex!19897) (regTwo!40306 Regex!19897)) (EmptyExpr!19897) (Star!19897 (reg!20226 Regex!19897)) (EmptyLang!19897) (Union!19897 (regOne!40307 Regex!19897) (regTwo!40307 Regex!19897)) )
))
(declare-fun r!24333 () Regex!19897)

(declare-fun validRegex!10325 (Regex!19897) Bool)

(assert (=> b!7538096 (= res!3020897 (validRegex!10325 r!24333))))

(declare-fun b!7538097 () Bool)

(declare-fun tp!2192598 () Bool)

(declare-fun tp!2192601 () Bool)

(assert (=> b!7538097 (= e!4491562 (and tp!2192598 tp!2192601))))

(declare-fun b!7538098 () Bool)

(declare-fun e!4491569 () Bool)

(declare-fun e!4491563 () Bool)

(assert (=> b!7538098 (= e!4491569 e!4491563)))

(declare-fun res!3020906 () Bool)

(assert (=> b!7538098 (=> res!3020906 e!4491563)))

(declare-fun lt!2642433 () List!72780)

(assert (=> b!7538098 (= res!3020906 (not (= lt!2642433 input!7874)))))

(declare-fun lt!2642438 () List!72780)

(assert (=> b!7538098 (= lt!2642438 lt!2642433)))

(declare-fun lt!2642436 () List!72780)

(declare-fun ++!17414 (List!72780 List!72780) List!72780)

(assert (=> b!7538098 (= lt!2642433 (++!17414 testedP!423 lt!2642436))))

(declare-fun lt!2642435 () List!72780)

(declare-fun lt!2642428 () List!72780)

(assert (=> b!7538098 (= lt!2642436 (++!17414 lt!2642435 lt!2642428))))

(declare-datatypes ((Unit!166732 0))(
  ( (Unit!166733) )
))
(declare-fun lt!2642434 () Unit!166732)

(declare-fun lemmaConcatAssociativity!3062 (List!72780 List!72780 List!72780) Unit!166732)

(assert (=> b!7538098 (= lt!2642434 (lemmaConcatAssociativity!3062 testedP!423 lt!2642435 lt!2642428))))

(declare-fun b!7538099 () Bool)

(declare-fun res!3020904 () Bool)

(assert (=> b!7538099 (=> res!3020904 e!4491569)))

(declare-fun lt!2642432 () List!72780)

(assert (=> b!7538099 (= res!3020904 (not (= (++!17414 testedP!423 lt!2642432) input!7874)))))

(declare-fun b!7538100 () Bool)

(declare-fun res!3020900 () Bool)

(declare-fun e!4491571 () Bool)

(assert (=> b!7538100 (=> res!3020900 e!4491571)))

(declare-fun lt!2642437 () Int)

(declare-fun size!42393 (List!72780) Int)

(assert (=> b!7538100 (= res!3020900 (>= lt!2642437 (size!42393 input!7874)))))

(declare-fun b!7538101 () Bool)

(declare-fun tp!2192600 () Bool)

(assert (=> b!7538101 (= e!4491562 tp!2192600)))

(declare-fun b!7538102 () Bool)

(declare-fun res!3020908 () Bool)

(declare-fun e!4491561 () Bool)

(assert (=> b!7538102 (=> (not res!3020908) (not e!4491561))))

(declare-fun baseR!101 () Regex!19897)

(declare-fun knownP!30 () List!72780)

(declare-fun matchR!9499 (Regex!19897 List!72780) Bool)

(assert (=> b!7538102 (= res!3020908 (matchR!9499 baseR!101 knownP!30))))

(declare-fun b!7538103 () Bool)

(declare-fun tp!2192602 () Bool)

(declare-fun tp!2192606 () Bool)

(assert (=> b!7538103 (= e!4491568 (and tp!2192602 tp!2192606))))

(declare-fun res!3020898 () Bool)

(assert (=> start!729060 (=> (not res!3020898) (not e!4491564))))

(assert (=> start!729060 (= res!3020898 (validRegex!10325 baseR!101))))

(assert (=> start!729060 e!4491564))

(assert (=> start!729060 e!4491568))

(declare-fun e!4491565 () Bool)

(assert (=> start!729060 e!4491565))

(declare-fun e!4491566 () Bool)

(assert (=> start!729060 e!4491566))

(declare-fun e!4491570 () Bool)

(assert (=> start!729060 e!4491570))

(assert (=> start!729060 e!4491562))

(declare-fun b!7538104 () Bool)

(declare-fun res!3020903 () Bool)

(assert (=> b!7538104 (=> res!3020903 e!4491571)))

(declare-fun derivative!429 (Regex!19897 List!72780) Regex!19897)

(assert (=> b!7538104 (= res!3020903 (not (= (derivative!429 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7538105 () Bool)

(declare-fun res!3020896 () Bool)

(assert (=> b!7538105 (=> (not res!3020896) (not e!4491564))))

(assert (=> b!7538105 (= res!3020896 (isPrefix!6103 knownP!30 input!7874))))

(declare-fun b!7538106 () Bool)

(declare-fun e!4491567 () Bool)

(assert (=> b!7538106 (= e!4491567 e!4491569)))

(declare-fun res!3020902 () Bool)

(assert (=> b!7538106 (=> res!3020902 e!4491569)))

(assert (=> b!7538106 (= res!3020902 (not (= lt!2642438 input!7874)))))

(assert (=> b!7538106 (= lt!2642438 (++!17414 (++!17414 testedP!423 lt!2642435) lt!2642428))))

(declare-fun b!7538107 () Bool)

(declare-fun res!3020899 () Bool)

(assert (=> b!7538107 (=> res!3020899 e!4491571)))

(declare-fun lostCause!1689 (Regex!19897) Bool)

(assert (=> b!7538107 (= res!3020899 (lostCause!1689 r!24333))))

(declare-fun b!7538108 () Bool)

(declare-fun tp!2192596 () Bool)

(declare-fun tp!2192603 () Bool)

(assert (=> b!7538108 (= e!4491562 (and tp!2192596 tp!2192603))))

(declare-fun b!7538109 () Bool)

(declare-fun tp!2192604 () Bool)

(assert (=> b!7538109 (= e!4491565 (and tp_is_empty!50149 tp!2192604))))

(declare-fun b!7538110 () Bool)

(declare-fun tp!2192599 () Bool)

(assert (=> b!7538110 (= e!4491570 (and tp_is_empty!50149 tp!2192599))))

(declare-fun b!7538111 () Bool)

(assert (=> b!7538111 (= e!4491563 (not (= lt!2642435 Nil!72656)))))

(assert (=> b!7538111 (= lt!2642436 lt!2642432)))

(declare-fun lt!2642426 () Unit!166732)

(declare-fun lemmaSamePrefixThenSameSuffix!2831 (List!72780 List!72780 List!72780 List!72780 List!72780) Unit!166732)

(assert (=> b!7538111 (= lt!2642426 (lemmaSamePrefixThenSameSuffix!2831 testedP!423 lt!2642436 testedP!423 lt!2642432 input!7874))))

(declare-fun b!7538112 () Bool)

(assert (=> b!7538112 (= e!4491564 e!4491561)))

(declare-fun res!3020909 () Bool)

(assert (=> b!7538112 (=> (not res!3020909) (not e!4491561))))

(declare-fun lt!2642439 () Int)

(assert (=> b!7538112 (= res!3020909 (>= lt!2642439 lt!2642437))))

(assert (=> b!7538112 (= lt!2642437 (size!42393 testedP!423))))

(assert (=> b!7538112 (= lt!2642439 (size!42393 knownP!30))))

(declare-fun b!7538113 () Bool)

(declare-fun tp!2192597 () Bool)

(assert (=> b!7538113 (= e!4491568 tp!2192597)))

(declare-fun b!7538114 () Bool)

(assert (=> b!7538114 (= e!4491571 e!4491567)))

(declare-fun res!3020901 () Bool)

(assert (=> b!7538114 (=> res!3020901 e!4491567)))

(assert (=> b!7538114 (= res!3020901 (not (= (++!17414 knownP!30 lt!2642428) input!7874)))))

(declare-fun getSuffix!3583 (List!72780 List!72780) List!72780)

(assert (=> b!7538114 (= lt!2642428 (getSuffix!3583 input!7874 knownP!30))))

(declare-fun lt!2642441 () List!72780)

(declare-fun lt!2642431 () List!72780)

(assert (=> b!7538114 (= lt!2642441 (getSuffix!3583 knownP!30 lt!2642431))))

(assert (=> b!7538114 (isPrefix!6103 lt!2642431 knownP!30)))

(declare-fun lt!2642429 () Unit!166732)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!853 (List!72780 List!72780 List!72780) Unit!166732)

(assert (=> b!7538114 (= lt!2642429 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!853 knownP!30 lt!2642431 input!7874))))

(declare-fun lt!2642427 () C!40120)

(declare-fun derivativeStep!5687 (Regex!19897 C!40120) Regex!19897)

(assert (=> b!7538114 (= (derivative!429 baseR!101 lt!2642431) (derivativeStep!5687 r!24333 lt!2642427))))

(declare-fun lt!2642442 () Unit!166732)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!135 (Regex!19897 Regex!19897 List!72780 C!40120) Unit!166732)

(assert (=> b!7538114 (= lt!2642442 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!135 baseR!101 r!24333 testedP!423 lt!2642427))))

(assert (=> b!7538114 (isPrefix!6103 lt!2642431 input!7874)))

(declare-fun lt!2642440 () Unit!166732)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1168 (List!72780 List!72780) Unit!166732)

(assert (=> b!7538114 (= lt!2642440 (lemmaAddHeadSuffixToPrefixStillPrefix!1168 testedP!423 input!7874))))

(assert (=> b!7538114 (= lt!2642431 (++!17414 testedP!423 (Cons!72656 lt!2642427 Nil!72656)))))

(declare-fun head!15487 (List!72780) C!40120)

(assert (=> b!7538114 (= lt!2642427 (head!15487 lt!2642432))))

(assert (=> b!7538114 (= lt!2642432 (getSuffix!3583 input!7874 testedP!423))))

(declare-fun b!7538115 () Bool)

(declare-fun res!3020910 () Bool)

(assert (=> b!7538115 (=> res!3020910 e!4491571)))

(assert (=> b!7538115 (= res!3020910 (= lt!2642437 lt!2642439))))

(declare-fun b!7538116 () Bool)

(declare-fun tp!2192605 () Bool)

(assert (=> b!7538116 (= e!4491566 (and tp_is_empty!50149 tp!2192605))))

(declare-fun b!7538117 () Bool)

(assert (=> b!7538117 (= e!4491561 (not e!4491571))))

(declare-fun res!3020905 () Bool)

(assert (=> b!7538117 (=> res!3020905 e!4491571)))

(assert (=> b!7538117 (= res!3020905 (not (matchR!9499 r!24333 lt!2642435)))))

(assert (=> b!7538117 (= lt!2642435 (getSuffix!3583 knownP!30 testedP!423))))

(assert (=> b!7538117 (isPrefix!6103 testedP!423 knownP!30)))

(declare-fun lt!2642430 () Unit!166732)

(assert (=> b!7538117 (= lt!2642430 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!853 knownP!30 testedP!423 input!7874))))

(assert (= (and start!729060 res!3020898) b!7538096))

(assert (= (and b!7538096 res!3020897) b!7538093))

(assert (= (and b!7538093 res!3020907) b!7538105))

(assert (= (and b!7538105 res!3020896) b!7538112))

(assert (= (and b!7538112 res!3020909) b!7538102))

(assert (= (and b!7538102 res!3020908) b!7538117))

(assert (= (and b!7538117 (not res!3020905)) b!7538104))

(assert (= (and b!7538104 (not res!3020903)) b!7538107))

(assert (= (and b!7538107 (not res!3020899)) b!7538115))

(assert (= (and b!7538115 (not res!3020910)) b!7538100))

(assert (= (and b!7538100 (not res!3020900)) b!7538114))

(assert (= (and b!7538114 (not res!3020901)) b!7538106))

(assert (= (and b!7538106 (not res!3020902)) b!7538099))

(assert (= (and b!7538099 (not res!3020904)) b!7538098))

(assert (= (and b!7538098 (not res!3020906)) b!7538111))

(get-info :version)

(assert (= (and start!729060 ((_ is ElementMatch!19897) baseR!101)) b!7538094))

(assert (= (and start!729060 ((_ is Concat!28742) baseR!101)) b!7538092))

(assert (= (and start!729060 ((_ is Star!19897) baseR!101)) b!7538113))

(assert (= (and start!729060 ((_ is Union!19897) baseR!101)) b!7538103))

(assert (= (and start!729060 ((_ is Cons!72656) input!7874)) b!7538109))

(assert (= (and start!729060 ((_ is Cons!72656) knownP!30)) b!7538116))

(assert (= (and start!729060 ((_ is Cons!72656) testedP!423)) b!7538110))

(assert (= (and start!729060 ((_ is ElementMatch!19897) r!24333)) b!7538095))

(assert (= (and start!729060 ((_ is Concat!28742) r!24333)) b!7538108))

(assert (= (and start!729060 ((_ is Star!19897) r!24333)) b!7538101))

(assert (= (and start!729060 ((_ is Union!19897) r!24333)) b!7538097))

(declare-fun m!8108090 () Bool)

(assert (=> b!7538106 m!8108090))

(assert (=> b!7538106 m!8108090))

(declare-fun m!8108092 () Bool)

(assert (=> b!7538106 m!8108092))

(declare-fun m!8108094 () Bool)

(assert (=> b!7538117 m!8108094))

(declare-fun m!8108096 () Bool)

(assert (=> b!7538117 m!8108096))

(declare-fun m!8108098 () Bool)

(assert (=> b!7538117 m!8108098))

(declare-fun m!8108100 () Bool)

(assert (=> b!7538117 m!8108100))

(declare-fun m!8108102 () Bool)

(assert (=> b!7538096 m!8108102))

(declare-fun m!8108104 () Bool)

(assert (=> b!7538099 m!8108104))

(declare-fun m!8108106 () Bool)

(assert (=> b!7538105 m!8108106))

(declare-fun m!8108108 () Bool)

(assert (=> start!729060 m!8108108))

(declare-fun m!8108110 () Bool)

(assert (=> b!7538114 m!8108110))

(declare-fun m!8108112 () Bool)

(assert (=> b!7538114 m!8108112))

(declare-fun m!8108114 () Bool)

(assert (=> b!7538114 m!8108114))

(declare-fun m!8108116 () Bool)

(assert (=> b!7538114 m!8108116))

(declare-fun m!8108118 () Bool)

(assert (=> b!7538114 m!8108118))

(declare-fun m!8108120 () Bool)

(assert (=> b!7538114 m!8108120))

(declare-fun m!8108122 () Bool)

(assert (=> b!7538114 m!8108122))

(declare-fun m!8108124 () Bool)

(assert (=> b!7538114 m!8108124))

(declare-fun m!8108126 () Bool)

(assert (=> b!7538114 m!8108126))

(declare-fun m!8108128 () Bool)

(assert (=> b!7538114 m!8108128))

(declare-fun m!8108130 () Bool)

(assert (=> b!7538114 m!8108130))

(declare-fun m!8108132 () Bool)

(assert (=> b!7538114 m!8108132))

(declare-fun m!8108134 () Bool)

(assert (=> b!7538114 m!8108134))

(declare-fun m!8108136 () Bool)

(assert (=> b!7538111 m!8108136))

(declare-fun m!8108138 () Bool)

(assert (=> b!7538093 m!8108138))

(declare-fun m!8108140 () Bool)

(assert (=> b!7538104 m!8108140))

(declare-fun m!8108142 () Bool)

(assert (=> b!7538102 m!8108142))

(declare-fun m!8108144 () Bool)

(assert (=> b!7538112 m!8108144))

(declare-fun m!8108146 () Bool)

(assert (=> b!7538112 m!8108146))

(declare-fun m!8108148 () Bool)

(assert (=> b!7538098 m!8108148))

(declare-fun m!8108150 () Bool)

(assert (=> b!7538098 m!8108150))

(declare-fun m!8108152 () Bool)

(assert (=> b!7538098 m!8108152))

(declare-fun m!8108154 () Bool)

(assert (=> b!7538107 m!8108154))

(declare-fun m!8108156 () Bool)

(assert (=> b!7538100 m!8108156))

(check-sat (not b!7538104) (not b!7538103) (not b!7538113) (not b!7538093) (not b!7538107) (not b!7538096) (not b!7538114) (not b!7538097) (not b!7538116) (not b!7538099) (not b!7538098) (not start!729060) (not b!7538111) (not b!7538108) (not b!7538110) (not b!7538117) (not b!7538106) (not b!7538102) (not b!7538100) (not b!7538101) (not b!7538092) (not b!7538105) (not b!7538112) (not b!7538109) tp_is_empty!50149)
(check-sat)
(get-model)

(declare-fun b!7538127 () Bool)

(declare-fun e!4491576 () List!72780)

(assert (=> b!7538127 (= e!4491576 (Cons!72656 (h!79104 testedP!423) (++!17414 (t!387487 testedP!423) lt!2642432)))))

(declare-fun d!2310728 () Bool)

(declare-fun e!4491577 () Bool)

(assert (=> d!2310728 e!4491577))

(declare-fun res!3020916 () Bool)

(assert (=> d!2310728 (=> (not res!3020916) (not e!4491577))))

(declare-fun lt!2642445 () List!72780)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15359 (List!72780) (InoxSet C!40120))

(assert (=> d!2310728 (= res!3020916 (= (content!15359 lt!2642445) ((_ map or) (content!15359 testedP!423) (content!15359 lt!2642432))))))

(assert (=> d!2310728 (= lt!2642445 e!4491576)))

(declare-fun c!1391787 () Bool)

(assert (=> d!2310728 (= c!1391787 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310728 (= (++!17414 testedP!423 lt!2642432) lt!2642445)))

(declare-fun b!7538126 () Bool)

(assert (=> b!7538126 (= e!4491576 lt!2642432)))

(declare-fun b!7538128 () Bool)

(declare-fun res!3020915 () Bool)

(assert (=> b!7538128 (=> (not res!3020915) (not e!4491577))))

(assert (=> b!7538128 (= res!3020915 (= (size!42393 lt!2642445) (+ (size!42393 testedP!423) (size!42393 lt!2642432))))))

(declare-fun b!7538129 () Bool)

(assert (=> b!7538129 (= e!4491577 (or (not (= lt!2642432 Nil!72656)) (= lt!2642445 testedP!423)))))

(assert (= (and d!2310728 c!1391787) b!7538126))

(assert (= (and d!2310728 (not c!1391787)) b!7538127))

(assert (= (and d!2310728 res!3020916) b!7538128))

(assert (= (and b!7538128 res!3020915) b!7538129))

(declare-fun m!8108158 () Bool)

(assert (=> b!7538127 m!8108158))

(declare-fun m!8108160 () Bool)

(assert (=> d!2310728 m!8108160))

(declare-fun m!8108162 () Bool)

(assert (=> d!2310728 m!8108162))

(declare-fun m!8108164 () Bool)

(assert (=> d!2310728 m!8108164))

(declare-fun m!8108166 () Bool)

(assert (=> b!7538128 m!8108166))

(assert (=> b!7538128 m!8108144))

(declare-fun m!8108168 () Bool)

(assert (=> b!7538128 m!8108168))

(assert (=> b!7538099 d!2310728))

(declare-fun b!7538133 () Bool)

(declare-fun e!4491578 () List!72780)

(assert (=> b!7538133 (= e!4491578 (Cons!72656 (h!79104 testedP!423) (++!17414 (t!387487 testedP!423) lt!2642436)))))

(declare-fun d!2310732 () Bool)

(declare-fun e!4491579 () Bool)

(assert (=> d!2310732 e!4491579))

(declare-fun res!3020918 () Bool)

(assert (=> d!2310732 (=> (not res!3020918) (not e!4491579))))

(declare-fun lt!2642448 () List!72780)

(assert (=> d!2310732 (= res!3020918 (= (content!15359 lt!2642448) ((_ map or) (content!15359 testedP!423) (content!15359 lt!2642436))))))

(assert (=> d!2310732 (= lt!2642448 e!4491578)))

(declare-fun c!1391788 () Bool)

(assert (=> d!2310732 (= c!1391788 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310732 (= (++!17414 testedP!423 lt!2642436) lt!2642448)))

(declare-fun b!7538132 () Bool)

(assert (=> b!7538132 (= e!4491578 lt!2642436)))

(declare-fun b!7538134 () Bool)

(declare-fun res!3020917 () Bool)

(assert (=> b!7538134 (=> (not res!3020917) (not e!4491579))))

(assert (=> b!7538134 (= res!3020917 (= (size!42393 lt!2642448) (+ (size!42393 testedP!423) (size!42393 lt!2642436))))))

(declare-fun b!7538136 () Bool)

(assert (=> b!7538136 (= e!4491579 (or (not (= lt!2642436 Nil!72656)) (= lt!2642448 testedP!423)))))

(assert (= (and d!2310732 c!1391788) b!7538132))

(assert (= (and d!2310732 (not c!1391788)) b!7538133))

(assert (= (and d!2310732 res!3020918) b!7538134))

(assert (= (and b!7538134 res!3020917) b!7538136))

(declare-fun m!8108170 () Bool)

(assert (=> b!7538133 m!8108170))

(declare-fun m!8108172 () Bool)

(assert (=> d!2310732 m!8108172))

(assert (=> d!2310732 m!8108162))

(declare-fun m!8108174 () Bool)

(assert (=> d!2310732 m!8108174))

(declare-fun m!8108176 () Bool)

(assert (=> b!7538134 m!8108176))

(assert (=> b!7538134 m!8108144))

(declare-fun m!8108178 () Bool)

(assert (=> b!7538134 m!8108178))

(assert (=> b!7538098 d!2310732))

(declare-fun b!7538139 () Bool)

(declare-fun e!4491582 () List!72780)

(assert (=> b!7538139 (= e!4491582 (Cons!72656 (h!79104 lt!2642435) (++!17414 (t!387487 lt!2642435) lt!2642428)))))

(declare-fun d!2310734 () Bool)

(declare-fun e!4491583 () Bool)

(assert (=> d!2310734 e!4491583))

(declare-fun res!3020920 () Bool)

(assert (=> d!2310734 (=> (not res!3020920) (not e!4491583))))

(declare-fun lt!2642449 () List!72780)

(assert (=> d!2310734 (= res!3020920 (= (content!15359 lt!2642449) ((_ map or) (content!15359 lt!2642435) (content!15359 lt!2642428))))))

(assert (=> d!2310734 (= lt!2642449 e!4491582)))

(declare-fun c!1391791 () Bool)

(assert (=> d!2310734 (= c!1391791 ((_ is Nil!72656) lt!2642435))))

(assert (=> d!2310734 (= (++!17414 lt!2642435 lt!2642428) lt!2642449)))

(declare-fun b!7538138 () Bool)

(assert (=> b!7538138 (= e!4491582 lt!2642428)))

(declare-fun b!7538140 () Bool)

(declare-fun res!3020919 () Bool)

(assert (=> b!7538140 (=> (not res!3020919) (not e!4491583))))

(assert (=> b!7538140 (= res!3020919 (= (size!42393 lt!2642449) (+ (size!42393 lt!2642435) (size!42393 lt!2642428))))))

(declare-fun b!7538141 () Bool)

(assert (=> b!7538141 (= e!4491583 (or (not (= lt!2642428 Nil!72656)) (= lt!2642449 lt!2642435)))))

(assert (= (and d!2310734 c!1391791) b!7538138))

(assert (= (and d!2310734 (not c!1391791)) b!7538139))

(assert (= (and d!2310734 res!3020920) b!7538140))

(assert (= (and b!7538140 res!3020919) b!7538141))

(declare-fun m!8108180 () Bool)

(assert (=> b!7538139 m!8108180))

(declare-fun m!8108182 () Bool)

(assert (=> d!2310734 m!8108182))

(declare-fun m!8108184 () Bool)

(assert (=> d!2310734 m!8108184))

(declare-fun m!8108186 () Bool)

(assert (=> d!2310734 m!8108186))

(declare-fun m!8108188 () Bool)

(assert (=> b!7538140 m!8108188))

(declare-fun m!8108190 () Bool)

(assert (=> b!7538140 m!8108190))

(declare-fun m!8108192 () Bool)

(assert (=> b!7538140 m!8108192))

(assert (=> b!7538098 d!2310734))

(declare-fun d!2310736 () Bool)

(assert (=> d!2310736 (= (++!17414 (++!17414 testedP!423 lt!2642435) lt!2642428) (++!17414 testedP!423 (++!17414 lt!2642435 lt!2642428)))))

(declare-fun lt!2642453 () Unit!166732)

(declare-fun choose!58305 (List!72780 List!72780 List!72780) Unit!166732)

(assert (=> d!2310736 (= lt!2642453 (choose!58305 testedP!423 lt!2642435 lt!2642428))))

(assert (=> d!2310736 (= (lemmaConcatAssociativity!3062 testedP!423 lt!2642435 lt!2642428) lt!2642453)))

(declare-fun bs!1939937 () Bool)

(assert (= bs!1939937 d!2310736))

(assert (=> bs!1939937 m!8108150))

(assert (=> bs!1939937 m!8108150))

(declare-fun m!8108196 () Bool)

(assert (=> bs!1939937 m!8108196))

(assert (=> bs!1939937 m!8108090))

(assert (=> bs!1939937 m!8108090))

(assert (=> bs!1939937 m!8108092))

(declare-fun m!8108198 () Bool)

(assert (=> bs!1939937 m!8108198))

(assert (=> b!7538098 d!2310736))

(declare-fun d!2310740 () Bool)

(declare-fun lostCauseFct!426 (Regex!19897) Bool)

(assert (=> d!2310740 (= (lostCause!1689 r!24333) (lostCauseFct!426 r!24333))))

(declare-fun bs!1939938 () Bool)

(assert (= bs!1939938 d!2310740))

(declare-fun m!8108200 () Bool)

(assert (=> bs!1939938 m!8108200))

(assert (=> b!7538107 d!2310740))

(declare-fun b!7538180 () Bool)

(declare-fun res!3020943 () Bool)

(declare-fun e!4491616 () Bool)

(assert (=> b!7538180 (=> (not res!3020943) (not e!4491616))))

(declare-fun call!691502 () Bool)

(assert (=> b!7538180 (= res!3020943 call!691502)))

(declare-fun e!4491619 () Bool)

(assert (=> b!7538180 (= e!4491619 e!4491616)))

(declare-fun b!7538181 () Bool)

(declare-fun e!4491618 () Bool)

(declare-fun call!691501 () Bool)

(assert (=> b!7538181 (= e!4491618 call!691501)))

(declare-fun bm!691496 () Bool)

(declare-fun c!1391802 () Bool)

(declare-fun call!691503 () Bool)

(declare-fun c!1391801 () Bool)

(assert (=> bm!691496 (= call!691503 (validRegex!10325 (ite c!1391802 (reg!20226 r!24333) (ite c!1391801 (regTwo!40307 r!24333) (regTwo!40306 r!24333)))))))

(declare-fun b!7538182 () Bool)

(declare-fun e!4491614 () Bool)

(assert (=> b!7538182 (= e!4491614 e!4491618)))

(declare-fun res!3020941 () Bool)

(assert (=> b!7538182 (=> (not res!3020941) (not e!4491618))))

(assert (=> b!7538182 (= res!3020941 call!691502)))

(declare-fun b!7538183 () Bool)

(declare-fun e!4491617 () Bool)

(assert (=> b!7538183 (= e!4491617 e!4491619)))

(assert (=> b!7538183 (= c!1391801 ((_ is Union!19897) r!24333))))

(declare-fun b!7538184 () Bool)

(declare-fun e!4491615 () Bool)

(assert (=> b!7538184 (= e!4491615 e!4491617)))

(assert (=> b!7538184 (= c!1391802 ((_ is Star!19897) r!24333))))

(declare-fun bm!691497 () Bool)

(assert (=> bm!691497 (= call!691501 call!691503)))

(declare-fun b!7538185 () Bool)

(declare-fun e!4491613 () Bool)

(assert (=> b!7538185 (= e!4491617 e!4491613)))

(declare-fun res!3020944 () Bool)

(declare-fun nullable!8670 (Regex!19897) Bool)

(assert (=> b!7538185 (= res!3020944 (not (nullable!8670 (reg!20226 r!24333))))))

(assert (=> b!7538185 (=> (not res!3020944) (not e!4491613))))

(declare-fun d!2310742 () Bool)

(declare-fun res!3020942 () Bool)

(assert (=> d!2310742 (=> res!3020942 e!4491615)))

(assert (=> d!2310742 (= res!3020942 ((_ is ElementMatch!19897) r!24333))))

(assert (=> d!2310742 (= (validRegex!10325 r!24333) e!4491615)))

(declare-fun b!7538186 () Bool)

(assert (=> b!7538186 (= e!4491613 call!691503)))

(declare-fun b!7538187 () Bool)

(assert (=> b!7538187 (= e!4491616 call!691501)))

(declare-fun b!7538188 () Bool)

(declare-fun res!3020945 () Bool)

(assert (=> b!7538188 (=> res!3020945 e!4491614)))

(assert (=> b!7538188 (= res!3020945 (not ((_ is Concat!28742) r!24333)))))

(assert (=> b!7538188 (= e!4491619 e!4491614)))

(declare-fun bm!691498 () Bool)

(assert (=> bm!691498 (= call!691502 (validRegex!10325 (ite c!1391801 (regOne!40307 r!24333) (regOne!40306 r!24333))))))

(assert (= (and d!2310742 (not res!3020942)) b!7538184))

(assert (= (and b!7538184 c!1391802) b!7538185))

(assert (= (and b!7538184 (not c!1391802)) b!7538183))

(assert (= (and b!7538185 res!3020944) b!7538186))

(assert (= (and b!7538183 c!1391801) b!7538180))

(assert (= (and b!7538183 (not c!1391801)) b!7538188))

(assert (= (and b!7538180 res!3020943) b!7538187))

(assert (= (and b!7538188 (not res!3020945)) b!7538182))

(assert (= (and b!7538182 res!3020941) b!7538181))

(assert (= (or b!7538180 b!7538182) bm!691498))

(assert (= (or b!7538187 b!7538181) bm!691497))

(assert (= (or b!7538186 bm!691497) bm!691496))

(declare-fun m!8108202 () Bool)

(assert (=> bm!691496 m!8108202))

(declare-fun m!8108204 () Bool)

(assert (=> b!7538185 m!8108204))

(declare-fun m!8108206 () Bool)

(assert (=> bm!691498 m!8108206))

(assert (=> b!7538096 d!2310742))

(declare-fun b!7538226 () Bool)

(declare-fun res!3020970 () Bool)

(declare-fun e!4491647 () Bool)

(assert (=> b!7538226 (=> (not res!3020970) (not e!4491647))))

(declare-fun isEmpty!41366 (List!72780) Bool)

(declare-fun tail!15032 (List!72780) List!72780)

(assert (=> b!7538226 (= res!3020970 (isEmpty!41366 (tail!15032 lt!2642435)))))

(declare-fun b!7538228 () Bool)

(declare-fun e!4491645 () Bool)

(declare-fun e!4491646 () Bool)

(assert (=> b!7538228 (= e!4491645 e!4491646)))

(declare-fun c!1391811 () Bool)

(assert (=> b!7538228 (= c!1391811 ((_ is EmptyLang!19897) r!24333))))

(declare-fun b!7538229 () Bool)

(declare-fun e!4491644 () Bool)

(assert (=> b!7538229 (= e!4491644 (nullable!8670 r!24333))))

(declare-fun b!7538230 () Bool)

(declare-fun e!4491642 () Bool)

(assert (=> b!7538230 (= e!4491642 (not (= (head!15487 lt!2642435) (c!1391784 r!24333))))))

(declare-fun b!7538231 () Bool)

(assert (=> b!7538231 (= e!4491647 (= (head!15487 lt!2642435) (c!1391784 r!24333)))))

(declare-fun b!7538232 () Bool)

(assert (=> b!7538232 (= e!4491644 (matchR!9499 (derivativeStep!5687 r!24333 (head!15487 lt!2642435)) (tail!15032 lt!2642435)))))

(declare-fun b!7538233 () Bool)

(declare-fun res!3020968 () Bool)

(declare-fun e!4491641 () Bool)

(assert (=> b!7538233 (=> res!3020968 e!4491641)))

(assert (=> b!7538233 (= res!3020968 e!4491647)))

(declare-fun res!3020973 () Bool)

(assert (=> b!7538233 (=> (not res!3020973) (not e!4491647))))

(declare-fun lt!2642456 () Bool)

(assert (=> b!7538233 (= res!3020973 lt!2642456)))

(declare-fun b!7538234 () Bool)

(declare-fun e!4491643 () Bool)

(assert (=> b!7538234 (= e!4491643 e!4491642)))

(declare-fun res!3020972 () Bool)

(assert (=> b!7538234 (=> res!3020972 e!4491642)))

(declare-fun call!691509 () Bool)

(assert (=> b!7538234 (= res!3020972 call!691509)))

(declare-fun b!7538235 () Bool)

(assert (=> b!7538235 (= e!4491645 (= lt!2642456 call!691509))))

(declare-fun d!2310744 () Bool)

(assert (=> d!2310744 e!4491645))

(declare-fun c!1391812 () Bool)

(assert (=> d!2310744 (= c!1391812 ((_ is EmptyExpr!19897) r!24333))))

(assert (=> d!2310744 (= lt!2642456 e!4491644)))

(declare-fun c!1391813 () Bool)

(assert (=> d!2310744 (= c!1391813 (isEmpty!41366 lt!2642435))))

(assert (=> d!2310744 (validRegex!10325 r!24333)))

(assert (=> d!2310744 (= (matchR!9499 r!24333 lt!2642435) lt!2642456)))

(declare-fun b!7538227 () Bool)

(assert (=> b!7538227 (= e!4491646 (not lt!2642456))))

(declare-fun bm!691504 () Bool)

(assert (=> bm!691504 (= call!691509 (isEmpty!41366 lt!2642435))))

(declare-fun b!7538236 () Bool)

(declare-fun res!3020974 () Bool)

(assert (=> b!7538236 (=> (not res!3020974) (not e!4491647))))

(assert (=> b!7538236 (= res!3020974 (not call!691509))))

(declare-fun b!7538237 () Bool)

(assert (=> b!7538237 (= e!4491641 e!4491643)))

(declare-fun res!3020971 () Bool)

(assert (=> b!7538237 (=> (not res!3020971) (not e!4491643))))

(assert (=> b!7538237 (= res!3020971 (not lt!2642456))))

(declare-fun b!7538238 () Bool)

(declare-fun res!3020967 () Bool)

(assert (=> b!7538238 (=> res!3020967 e!4491641)))

(assert (=> b!7538238 (= res!3020967 (not ((_ is ElementMatch!19897) r!24333)))))

(assert (=> b!7538238 (= e!4491646 e!4491641)))

(declare-fun b!7538239 () Bool)

(declare-fun res!3020969 () Bool)

(assert (=> b!7538239 (=> res!3020969 e!4491642)))

(assert (=> b!7538239 (= res!3020969 (not (isEmpty!41366 (tail!15032 lt!2642435))))))

(assert (= (and d!2310744 c!1391813) b!7538229))

(assert (= (and d!2310744 (not c!1391813)) b!7538232))

(assert (= (and d!2310744 c!1391812) b!7538235))

(assert (= (and d!2310744 (not c!1391812)) b!7538228))

(assert (= (and b!7538228 c!1391811) b!7538227))

(assert (= (and b!7538228 (not c!1391811)) b!7538238))

(assert (= (and b!7538238 (not res!3020967)) b!7538233))

(assert (= (and b!7538233 res!3020973) b!7538236))

(assert (= (and b!7538236 res!3020974) b!7538226))

(assert (= (and b!7538226 res!3020970) b!7538231))

(assert (= (and b!7538233 (not res!3020968)) b!7538237))

(assert (= (and b!7538237 res!3020971) b!7538234))

(assert (= (and b!7538234 (not res!3020972)) b!7538239))

(assert (= (and b!7538239 (not res!3020969)) b!7538230))

(assert (= (or b!7538235 b!7538234 b!7538236) bm!691504))

(declare-fun m!8108214 () Bool)

(assert (=> b!7538229 m!8108214))

(declare-fun m!8108216 () Bool)

(assert (=> d!2310744 m!8108216))

(assert (=> d!2310744 m!8108102))

(declare-fun m!8108218 () Bool)

(assert (=> b!7538239 m!8108218))

(assert (=> b!7538239 m!8108218))

(declare-fun m!8108220 () Bool)

(assert (=> b!7538239 m!8108220))

(declare-fun m!8108222 () Bool)

(assert (=> b!7538231 m!8108222))

(assert (=> bm!691504 m!8108216))

(assert (=> b!7538230 m!8108222))

(assert (=> b!7538232 m!8108222))

(assert (=> b!7538232 m!8108222))

(declare-fun m!8108224 () Bool)

(assert (=> b!7538232 m!8108224))

(assert (=> b!7538232 m!8108218))

(assert (=> b!7538232 m!8108224))

(assert (=> b!7538232 m!8108218))

(declare-fun m!8108226 () Bool)

(assert (=> b!7538232 m!8108226))

(assert (=> b!7538226 m!8108218))

(assert (=> b!7538226 m!8108218))

(assert (=> b!7538226 m!8108220))

(assert (=> b!7538117 d!2310744))

(declare-fun d!2310748 () Bool)

(declare-fun lt!2642461 () List!72780)

(assert (=> d!2310748 (= (++!17414 testedP!423 lt!2642461) knownP!30)))

(declare-fun e!4491660 () List!72780)

(assert (=> d!2310748 (= lt!2642461 e!4491660)))

(declare-fun c!1391822 () Bool)

(assert (=> d!2310748 (= c!1391822 ((_ is Cons!72656) testedP!423))))

(assert (=> d!2310748 (>= (size!42393 knownP!30) (size!42393 testedP!423))))

(assert (=> d!2310748 (= (getSuffix!3583 knownP!30 testedP!423) lt!2642461)))

(declare-fun b!7538262 () Bool)

(assert (=> b!7538262 (= e!4491660 (getSuffix!3583 (tail!15032 knownP!30) (t!387487 testedP!423)))))

(declare-fun b!7538263 () Bool)

(assert (=> b!7538263 (= e!4491660 knownP!30)))

(assert (= (and d!2310748 c!1391822) b!7538262))

(assert (= (and d!2310748 (not c!1391822)) b!7538263))

(declare-fun m!8108228 () Bool)

(assert (=> d!2310748 m!8108228))

(assert (=> d!2310748 m!8108146))

(assert (=> d!2310748 m!8108144))

(declare-fun m!8108230 () Bool)

(assert (=> b!7538262 m!8108230))

(assert (=> b!7538262 m!8108230))

(declare-fun m!8108232 () Bool)

(assert (=> b!7538262 m!8108232))

(assert (=> b!7538117 d!2310748))

(declare-fun d!2310750 () Bool)

(declare-fun e!4491671 () Bool)

(assert (=> d!2310750 e!4491671))

(declare-fun res!3021001 () Bool)

(assert (=> d!2310750 (=> res!3021001 e!4491671)))

(declare-fun lt!2642464 () Bool)

(assert (=> d!2310750 (= res!3021001 (not lt!2642464))))

(declare-fun e!4491673 () Bool)

(assert (=> d!2310750 (= lt!2642464 e!4491673)))

(declare-fun res!3021002 () Bool)

(assert (=> d!2310750 (=> res!3021002 e!4491673)))

(assert (=> d!2310750 (= res!3021002 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310750 (= (isPrefix!6103 testedP!423 knownP!30) lt!2642464)))

(declare-fun b!7538285 () Bool)

(assert (=> b!7538285 (= e!4491671 (>= (size!42393 knownP!30) (size!42393 testedP!423)))))

(declare-fun b!7538284 () Bool)

(declare-fun e!4491672 () Bool)

(assert (=> b!7538284 (= e!4491672 (isPrefix!6103 (tail!15032 testedP!423) (tail!15032 knownP!30)))))

(declare-fun b!7538283 () Bool)

(declare-fun res!3021000 () Bool)

(assert (=> b!7538283 (=> (not res!3021000) (not e!4491672))))

(assert (=> b!7538283 (= res!3021000 (= (head!15487 testedP!423) (head!15487 knownP!30)))))

(declare-fun b!7538282 () Bool)

(assert (=> b!7538282 (= e!4491673 e!4491672)))

(declare-fun res!3020999 () Bool)

(assert (=> b!7538282 (=> (not res!3020999) (not e!4491672))))

(assert (=> b!7538282 (= res!3020999 (not ((_ is Nil!72656) knownP!30)))))

(assert (= (and d!2310750 (not res!3021002)) b!7538282))

(assert (= (and b!7538282 res!3020999) b!7538283))

(assert (= (and b!7538283 res!3021000) b!7538284))

(assert (= (and d!2310750 (not res!3021001)) b!7538285))

(assert (=> b!7538285 m!8108146))

(assert (=> b!7538285 m!8108144))

(declare-fun m!8108234 () Bool)

(assert (=> b!7538284 m!8108234))

(assert (=> b!7538284 m!8108230))

(assert (=> b!7538284 m!8108234))

(assert (=> b!7538284 m!8108230))

(declare-fun m!8108236 () Bool)

(assert (=> b!7538284 m!8108236))

(declare-fun m!8108238 () Bool)

(assert (=> b!7538283 m!8108238))

(declare-fun m!8108240 () Bool)

(assert (=> b!7538283 m!8108240))

(assert (=> b!7538117 d!2310750))

(declare-fun d!2310752 () Bool)

(assert (=> d!2310752 (isPrefix!6103 testedP!423 knownP!30)))

(declare-fun lt!2642467 () Unit!166732)

(declare-fun choose!58306 (List!72780 List!72780 List!72780) Unit!166732)

(assert (=> d!2310752 (= lt!2642467 (choose!58306 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310752 (isPrefix!6103 knownP!30 input!7874)))

(assert (=> d!2310752 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!853 knownP!30 testedP!423 input!7874) lt!2642467)))

(declare-fun bs!1939939 () Bool)

(assert (= bs!1939939 d!2310752))

(assert (=> bs!1939939 m!8108098))

(declare-fun m!8108242 () Bool)

(assert (=> bs!1939939 m!8108242))

(assert (=> bs!1939939 m!8108106))

(assert (=> b!7538117 d!2310752))

(declare-fun b!7538287 () Bool)

(declare-fun e!4491674 () List!72780)

(assert (=> b!7538287 (= e!4491674 (Cons!72656 (h!79104 (++!17414 testedP!423 lt!2642435)) (++!17414 (t!387487 (++!17414 testedP!423 lt!2642435)) lt!2642428)))))

(declare-fun d!2310754 () Bool)

(declare-fun e!4491675 () Bool)

(assert (=> d!2310754 e!4491675))

(declare-fun res!3021004 () Bool)

(assert (=> d!2310754 (=> (not res!3021004) (not e!4491675))))

(declare-fun lt!2642468 () List!72780)

(assert (=> d!2310754 (= res!3021004 (= (content!15359 lt!2642468) ((_ map or) (content!15359 (++!17414 testedP!423 lt!2642435)) (content!15359 lt!2642428))))))

(assert (=> d!2310754 (= lt!2642468 e!4491674)))

(declare-fun c!1391823 () Bool)

(assert (=> d!2310754 (= c!1391823 ((_ is Nil!72656) (++!17414 testedP!423 lt!2642435)))))

(assert (=> d!2310754 (= (++!17414 (++!17414 testedP!423 lt!2642435) lt!2642428) lt!2642468)))

(declare-fun b!7538286 () Bool)

(assert (=> b!7538286 (= e!4491674 lt!2642428)))

(declare-fun b!7538288 () Bool)

(declare-fun res!3021003 () Bool)

(assert (=> b!7538288 (=> (not res!3021003) (not e!4491675))))

(assert (=> b!7538288 (= res!3021003 (= (size!42393 lt!2642468) (+ (size!42393 (++!17414 testedP!423 lt!2642435)) (size!42393 lt!2642428))))))

(declare-fun b!7538289 () Bool)

(assert (=> b!7538289 (= e!4491675 (or (not (= lt!2642428 Nil!72656)) (= lt!2642468 (++!17414 testedP!423 lt!2642435))))))

(assert (= (and d!2310754 c!1391823) b!7538286))

(assert (= (and d!2310754 (not c!1391823)) b!7538287))

(assert (= (and d!2310754 res!3021004) b!7538288))

(assert (= (and b!7538288 res!3021003) b!7538289))

(declare-fun m!8108244 () Bool)

(assert (=> b!7538287 m!8108244))

(declare-fun m!8108246 () Bool)

(assert (=> d!2310754 m!8108246))

(assert (=> d!2310754 m!8108090))

(declare-fun m!8108248 () Bool)

(assert (=> d!2310754 m!8108248))

(assert (=> d!2310754 m!8108186))

(declare-fun m!8108250 () Bool)

(assert (=> b!7538288 m!8108250))

(assert (=> b!7538288 m!8108090))

(declare-fun m!8108252 () Bool)

(assert (=> b!7538288 m!8108252))

(assert (=> b!7538288 m!8108192))

(assert (=> b!7538106 d!2310754))

(declare-fun b!7538291 () Bool)

(declare-fun e!4491676 () List!72780)

(assert (=> b!7538291 (= e!4491676 (Cons!72656 (h!79104 testedP!423) (++!17414 (t!387487 testedP!423) lt!2642435)))))

(declare-fun d!2310756 () Bool)

(declare-fun e!4491677 () Bool)

(assert (=> d!2310756 e!4491677))

(declare-fun res!3021006 () Bool)

(assert (=> d!2310756 (=> (not res!3021006) (not e!4491677))))

(declare-fun lt!2642469 () List!72780)

(assert (=> d!2310756 (= res!3021006 (= (content!15359 lt!2642469) ((_ map or) (content!15359 testedP!423) (content!15359 lt!2642435))))))

(assert (=> d!2310756 (= lt!2642469 e!4491676)))

(declare-fun c!1391824 () Bool)

(assert (=> d!2310756 (= c!1391824 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310756 (= (++!17414 testedP!423 lt!2642435) lt!2642469)))

(declare-fun b!7538290 () Bool)

(assert (=> b!7538290 (= e!4491676 lt!2642435)))

(declare-fun b!7538292 () Bool)

(declare-fun res!3021005 () Bool)

(assert (=> b!7538292 (=> (not res!3021005) (not e!4491677))))

(assert (=> b!7538292 (= res!3021005 (= (size!42393 lt!2642469) (+ (size!42393 testedP!423) (size!42393 lt!2642435))))))

(declare-fun b!7538293 () Bool)

(assert (=> b!7538293 (= e!4491677 (or (not (= lt!2642435 Nil!72656)) (= lt!2642469 testedP!423)))))

(assert (= (and d!2310756 c!1391824) b!7538290))

(assert (= (and d!2310756 (not c!1391824)) b!7538291))

(assert (= (and d!2310756 res!3021006) b!7538292))

(assert (= (and b!7538292 res!3021005) b!7538293))

(declare-fun m!8108254 () Bool)

(assert (=> b!7538291 m!8108254))

(declare-fun m!8108256 () Bool)

(assert (=> d!2310756 m!8108256))

(assert (=> d!2310756 m!8108162))

(assert (=> d!2310756 m!8108184))

(declare-fun m!8108258 () Bool)

(assert (=> b!7538292 m!8108258))

(assert (=> b!7538292 m!8108144))

(assert (=> b!7538292 m!8108190))

(assert (=> b!7538106 d!2310756))

(declare-fun d!2310758 () Bool)

(declare-fun lt!2642473 () Regex!19897)

(assert (=> d!2310758 (validRegex!10325 lt!2642473)))

(declare-fun e!4491687 () Regex!19897)

(assert (=> d!2310758 (= lt!2642473 e!4491687)))

(declare-fun c!1391830 () Bool)

(assert (=> d!2310758 (= c!1391830 ((_ is Cons!72656) testedP!423))))

(assert (=> d!2310758 (validRegex!10325 baseR!101)))

(assert (=> d!2310758 (= (derivative!429 baseR!101 testedP!423) lt!2642473)))

(declare-fun b!7538312 () Bool)

(assert (=> b!7538312 (= e!4491687 (derivative!429 (derivativeStep!5687 baseR!101 (h!79104 testedP!423)) (t!387487 testedP!423)))))

(declare-fun b!7538313 () Bool)

(assert (=> b!7538313 (= e!4491687 baseR!101)))

(assert (= (and d!2310758 c!1391830) b!7538312))

(assert (= (and d!2310758 (not c!1391830)) b!7538313))

(declare-fun m!8108268 () Bool)

(assert (=> d!2310758 m!8108268))

(assert (=> d!2310758 m!8108108))

(declare-fun m!8108272 () Bool)

(assert (=> b!7538312 m!8108272))

(assert (=> b!7538312 m!8108272))

(declare-fun m!8108274 () Bool)

(assert (=> b!7538312 m!8108274))

(assert (=> b!7538104 d!2310758))

(declare-fun d!2310760 () Bool)

(declare-fun e!4491688 () Bool)

(assert (=> d!2310760 e!4491688))

(declare-fun res!3021017 () Bool)

(assert (=> d!2310760 (=> res!3021017 e!4491688)))

(declare-fun lt!2642474 () Bool)

(assert (=> d!2310760 (= res!3021017 (not lt!2642474))))

(declare-fun e!4491690 () Bool)

(assert (=> d!2310760 (= lt!2642474 e!4491690)))

(declare-fun res!3021018 () Bool)

(assert (=> d!2310760 (=> res!3021018 e!4491690)))

(assert (=> d!2310760 (= res!3021018 ((_ is Nil!72656) knownP!30))))

(assert (=> d!2310760 (= (isPrefix!6103 knownP!30 input!7874) lt!2642474)))

(declare-fun b!7538317 () Bool)

(assert (=> b!7538317 (= e!4491688 (>= (size!42393 input!7874) (size!42393 knownP!30)))))

(declare-fun b!7538316 () Bool)

(declare-fun e!4491689 () Bool)

(assert (=> b!7538316 (= e!4491689 (isPrefix!6103 (tail!15032 knownP!30) (tail!15032 input!7874)))))

(declare-fun b!7538315 () Bool)

(declare-fun res!3021016 () Bool)

(assert (=> b!7538315 (=> (not res!3021016) (not e!4491689))))

(assert (=> b!7538315 (= res!3021016 (= (head!15487 knownP!30) (head!15487 input!7874)))))

(declare-fun b!7538314 () Bool)

(assert (=> b!7538314 (= e!4491690 e!4491689)))

(declare-fun res!3021015 () Bool)

(assert (=> b!7538314 (=> (not res!3021015) (not e!4491689))))

(assert (=> b!7538314 (= res!3021015 (not ((_ is Nil!72656) input!7874)))))

(assert (= (and d!2310760 (not res!3021018)) b!7538314))

(assert (= (and b!7538314 res!3021015) b!7538315))

(assert (= (and b!7538315 res!3021016) b!7538316))

(assert (= (and d!2310760 (not res!3021017)) b!7538317))

(assert (=> b!7538317 m!8108156))

(assert (=> b!7538317 m!8108146))

(assert (=> b!7538316 m!8108230))

(declare-fun m!8108280 () Bool)

(assert (=> b!7538316 m!8108280))

(assert (=> b!7538316 m!8108230))

(assert (=> b!7538316 m!8108280))

(declare-fun m!8108282 () Bool)

(assert (=> b!7538316 m!8108282))

(assert (=> b!7538315 m!8108240))

(declare-fun m!8108284 () Bool)

(assert (=> b!7538315 m!8108284))

(assert (=> b!7538105 d!2310760))

(declare-fun b!7538332 () Bool)

(declare-fun res!3021029 () Bool)

(declare-fun e!4491701 () Bool)

(assert (=> b!7538332 (=> (not res!3021029) (not e!4491701))))

(declare-fun call!691515 () Bool)

(assert (=> b!7538332 (= res!3021029 call!691515)))

(declare-fun e!4491704 () Bool)

(assert (=> b!7538332 (= e!4491704 e!4491701)))

(declare-fun b!7538333 () Bool)

(declare-fun e!4491703 () Bool)

(declare-fun call!691514 () Bool)

(assert (=> b!7538333 (= e!4491703 call!691514)))

(declare-fun bm!691509 () Bool)

(declare-fun call!691516 () Bool)

(declare-fun c!1391835 () Bool)

(declare-fun c!1391834 () Bool)

(assert (=> bm!691509 (= call!691516 (validRegex!10325 (ite c!1391835 (reg!20226 baseR!101) (ite c!1391834 (regTwo!40307 baseR!101) (regTwo!40306 baseR!101)))))))

(declare-fun b!7538334 () Bool)

(declare-fun e!4491699 () Bool)

(assert (=> b!7538334 (= e!4491699 e!4491703)))

(declare-fun res!3021027 () Bool)

(assert (=> b!7538334 (=> (not res!3021027) (not e!4491703))))

(assert (=> b!7538334 (= res!3021027 call!691515)))

(declare-fun b!7538335 () Bool)

(declare-fun e!4491702 () Bool)

(assert (=> b!7538335 (= e!4491702 e!4491704)))

(assert (=> b!7538335 (= c!1391834 ((_ is Union!19897) baseR!101))))

(declare-fun b!7538336 () Bool)

(declare-fun e!4491700 () Bool)

(assert (=> b!7538336 (= e!4491700 e!4491702)))

(assert (=> b!7538336 (= c!1391835 ((_ is Star!19897) baseR!101))))

(declare-fun bm!691510 () Bool)

(assert (=> bm!691510 (= call!691514 call!691516)))

(declare-fun b!7538337 () Bool)

(declare-fun e!4491698 () Bool)

(assert (=> b!7538337 (= e!4491702 e!4491698)))

(declare-fun res!3021030 () Bool)

(assert (=> b!7538337 (= res!3021030 (not (nullable!8670 (reg!20226 baseR!101))))))

(assert (=> b!7538337 (=> (not res!3021030) (not e!4491698))))

(declare-fun d!2310764 () Bool)

(declare-fun res!3021028 () Bool)

(assert (=> d!2310764 (=> res!3021028 e!4491700)))

(assert (=> d!2310764 (= res!3021028 ((_ is ElementMatch!19897) baseR!101))))

(assert (=> d!2310764 (= (validRegex!10325 baseR!101) e!4491700)))

(declare-fun b!7538338 () Bool)

(assert (=> b!7538338 (= e!4491698 call!691516)))

(declare-fun b!7538339 () Bool)

(assert (=> b!7538339 (= e!4491701 call!691514)))

(declare-fun b!7538340 () Bool)

(declare-fun res!3021031 () Bool)

(assert (=> b!7538340 (=> res!3021031 e!4491699)))

(assert (=> b!7538340 (= res!3021031 (not ((_ is Concat!28742) baseR!101)))))

(assert (=> b!7538340 (= e!4491704 e!4491699)))

(declare-fun bm!691511 () Bool)

(assert (=> bm!691511 (= call!691515 (validRegex!10325 (ite c!1391834 (regOne!40307 baseR!101) (regOne!40306 baseR!101))))))

(assert (= (and d!2310764 (not res!3021028)) b!7538336))

(assert (= (and b!7538336 c!1391835) b!7538337))

(assert (= (and b!7538336 (not c!1391835)) b!7538335))

(assert (= (and b!7538337 res!3021030) b!7538338))

(assert (= (and b!7538335 c!1391834) b!7538332))

(assert (= (and b!7538335 (not c!1391834)) b!7538340))

(assert (= (and b!7538332 res!3021029) b!7538339))

(assert (= (and b!7538340 (not res!3021031)) b!7538334))

(assert (= (and b!7538334 res!3021027) b!7538333))

(assert (= (or b!7538332 b!7538334) bm!691511))

(assert (= (or b!7538339 b!7538333) bm!691510))

(assert (= (or b!7538338 bm!691510) bm!691509))

(declare-fun m!8108286 () Bool)

(assert (=> bm!691509 m!8108286))

(declare-fun m!8108288 () Bool)

(assert (=> b!7538337 m!8108288))

(declare-fun m!8108290 () Bool)

(assert (=> bm!691511 m!8108290))

(assert (=> start!729060 d!2310764))

(declare-fun d!2310766 () Bool)

(declare-fun e!4491705 () Bool)

(assert (=> d!2310766 e!4491705))

(declare-fun res!3021034 () Bool)

(assert (=> d!2310766 (=> res!3021034 e!4491705)))

(declare-fun lt!2642476 () Bool)

(assert (=> d!2310766 (= res!3021034 (not lt!2642476))))

(declare-fun e!4491707 () Bool)

(assert (=> d!2310766 (= lt!2642476 e!4491707)))

(declare-fun res!3021035 () Bool)

(assert (=> d!2310766 (=> res!3021035 e!4491707)))

(assert (=> d!2310766 (= res!3021035 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310766 (= (isPrefix!6103 testedP!423 input!7874) lt!2642476)))

(declare-fun b!7538344 () Bool)

(assert (=> b!7538344 (= e!4491705 (>= (size!42393 input!7874) (size!42393 testedP!423)))))

(declare-fun b!7538343 () Bool)

(declare-fun e!4491706 () Bool)

(assert (=> b!7538343 (= e!4491706 (isPrefix!6103 (tail!15032 testedP!423) (tail!15032 input!7874)))))

(declare-fun b!7538342 () Bool)

(declare-fun res!3021033 () Bool)

(assert (=> b!7538342 (=> (not res!3021033) (not e!4491706))))

(assert (=> b!7538342 (= res!3021033 (= (head!15487 testedP!423) (head!15487 input!7874)))))

(declare-fun b!7538341 () Bool)

(assert (=> b!7538341 (= e!4491707 e!4491706)))

(declare-fun res!3021032 () Bool)

(assert (=> b!7538341 (=> (not res!3021032) (not e!4491706))))

(assert (=> b!7538341 (= res!3021032 (not ((_ is Nil!72656) input!7874)))))

(assert (= (and d!2310766 (not res!3021035)) b!7538341))

(assert (= (and b!7538341 res!3021032) b!7538342))

(assert (= (and b!7538342 res!3021033) b!7538343))

(assert (= (and d!2310766 (not res!3021034)) b!7538344))

(assert (=> b!7538344 m!8108156))

(assert (=> b!7538344 m!8108144))

(assert (=> b!7538343 m!8108234))

(assert (=> b!7538343 m!8108280))

(assert (=> b!7538343 m!8108234))

(assert (=> b!7538343 m!8108280))

(declare-fun m!8108292 () Bool)

(assert (=> b!7538343 m!8108292))

(assert (=> b!7538342 m!8108238))

(assert (=> b!7538342 m!8108284))

(assert (=> b!7538093 d!2310766))

(declare-fun d!2310768 () Bool)

(assert (=> d!2310768 (isPrefix!6103 lt!2642431 knownP!30)))

(declare-fun lt!2642477 () Unit!166732)

(assert (=> d!2310768 (= lt!2642477 (choose!58306 knownP!30 lt!2642431 input!7874))))

(assert (=> d!2310768 (isPrefix!6103 knownP!30 input!7874)))

(assert (=> d!2310768 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!853 knownP!30 lt!2642431 input!7874) lt!2642477)))

(declare-fun bs!1939940 () Bool)

(assert (= bs!1939940 d!2310768))

(assert (=> bs!1939940 m!8108134))

(declare-fun m!8108298 () Bool)

(assert (=> bs!1939940 m!8108298))

(assert (=> bs!1939940 m!8108106))

(assert (=> b!7538114 d!2310768))

(declare-fun d!2310770 () Bool)

(declare-fun e!4491708 () Bool)

(assert (=> d!2310770 e!4491708))

(declare-fun res!3021038 () Bool)

(assert (=> d!2310770 (=> res!3021038 e!4491708)))

(declare-fun lt!2642478 () Bool)

(assert (=> d!2310770 (= res!3021038 (not lt!2642478))))

(declare-fun e!4491710 () Bool)

(assert (=> d!2310770 (= lt!2642478 e!4491710)))

(declare-fun res!3021039 () Bool)

(assert (=> d!2310770 (=> res!3021039 e!4491710)))

(assert (=> d!2310770 (= res!3021039 ((_ is Nil!72656) lt!2642431))))

(assert (=> d!2310770 (= (isPrefix!6103 lt!2642431 knownP!30) lt!2642478)))

(declare-fun b!7538348 () Bool)

(assert (=> b!7538348 (= e!4491708 (>= (size!42393 knownP!30) (size!42393 lt!2642431)))))

(declare-fun b!7538347 () Bool)

(declare-fun e!4491709 () Bool)

(assert (=> b!7538347 (= e!4491709 (isPrefix!6103 (tail!15032 lt!2642431) (tail!15032 knownP!30)))))

(declare-fun b!7538346 () Bool)

(declare-fun res!3021037 () Bool)

(assert (=> b!7538346 (=> (not res!3021037) (not e!4491709))))

(assert (=> b!7538346 (= res!3021037 (= (head!15487 lt!2642431) (head!15487 knownP!30)))))

(declare-fun b!7538345 () Bool)

(assert (=> b!7538345 (= e!4491710 e!4491709)))

(declare-fun res!3021036 () Bool)

(assert (=> b!7538345 (=> (not res!3021036) (not e!4491709))))

(assert (=> b!7538345 (= res!3021036 (not ((_ is Nil!72656) knownP!30)))))

(assert (= (and d!2310770 (not res!3021039)) b!7538345))

(assert (= (and b!7538345 res!3021036) b!7538346))

(assert (= (and b!7538346 res!3021037) b!7538347))

(assert (= (and d!2310770 (not res!3021038)) b!7538348))

(assert (=> b!7538348 m!8108146))

(declare-fun m!8108308 () Bool)

(assert (=> b!7538348 m!8108308))

(declare-fun m!8108310 () Bool)

(assert (=> b!7538347 m!8108310))

(assert (=> b!7538347 m!8108230))

(assert (=> b!7538347 m!8108310))

(assert (=> b!7538347 m!8108230))

(declare-fun m!8108314 () Bool)

(assert (=> b!7538347 m!8108314))

(declare-fun m!8108316 () Bool)

(assert (=> b!7538346 m!8108316))

(assert (=> b!7538346 m!8108240))

(assert (=> b!7538114 d!2310770))

(declare-fun d!2310774 () Bool)

(declare-fun lt!2642479 () List!72780)

(assert (=> d!2310774 (= (++!17414 testedP!423 lt!2642479) input!7874)))

(declare-fun e!4491711 () List!72780)

(assert (=> d!2310774 (= lt!2642479 e!4491711)))

(declare-fun c!1391836 () Bool)

(assert (=> d!2310774 (= c!1391836 ((_ is Cons!72656) testedP!423))))

(assert (=> d!2310774 (>= (size!42393 input!7874) (size!42393 testedP!423))))

(assert (=> d!2310774 (= (getSuffix!3583 input!7874 testedP!423) lt!2642479)))

(declare-fun b!7538349 () Bool)

(assert (=> b!7538349 (= e!4491711 (getSuffix!3583 (tail!15032 input!7874) (t!387487 testedP!423)))))

(declare-fun b!7538350 () Bool)

(assert (=> b!7538350 (= e!4491711 input!7874)))

(assert (= (and d!2310774 c!1391836) b!7538349))

(assert (= (and d!2310774 (not c!1391836)) b!7538350))

(declare-fun m!8108318 () Bool)

(assert (=> d!2310774 m!8108318))

(assert (=> d!2310774 m!8108156))

(assert (=> d!2310774 m!8108144))

(assert (=> b!7538349 m!8108280))

(assert (=> b!7538349 m!8108280))

(declare-fun m!8108320 () Bool)

(assert (=> b!7538349 m!8108320))

(assert (=> b!7538114 d!2310774))

(declare-fun d!2310776 () Bool)

(declare-fun e!4491712 () Bool)

(assert (=> d!2310776 e!4491712))

(declare-fun res!3021042 () Bool)

(assert (=> d!2310776 (=> res!3021042 e!4491712)))

(declare-fun lt!2642480 () Bool)

(assert (=> d!2310776 (= res!3021042 (not lt!2642480))))

(declare-fun e!4491714 () Bool)

(assert (=> d!2310776 (= lt!2642480 e!4491714)))

(declare-fun res!3021043 () Bool)

(assert (=> d!2310776 (=> res!3021043 e!4491714)))

(assert (=> d!2310776 (= res!3021043 ((_ is Nil!72656) lt!2642431))))

(assert (=> d!2310776 (= (isPrefix!6103 lt!2642431 input!7874) lt!2642480)))

(declare-fun b!7538354 () Bool)

(assert (=> b!7538354 (= e!4491712 (>= (size!42393 input!7874) (size!42393 lt!2642431)))))

(declare-fun b!7538353 () Bool)

(declare-fun e!4491713 () Bool)

(assert (=> b!7538353 (= e!4491713 (isPrefix!6103 (tail!15032 lt!2642431) (tail!15032 input!7874)))))

(declare-fun b!7538352 () Bool)

(declare-fun res!3021041 () Bool)

(assert (=> b!7538352 (=> (not res!3021041) (not e!4491713))))

(assert (=> b!7538352 (= res!3021041 (= (head!15487 lt!2642431) (head!15487 input!7874)))))

(declare-fun b!7538351 () Bool)

(assert (=> b!7538351 (= e!4491714 e!4491713)))

(declare-fun res!3021040 () Bool)

(assert (=> b!7538351 (=> (not res!3021040) (not e!4491713))))

(assert (=> b!7538351 (= res!3021040 (not ((_ is Nil!72656) input!7874)))))

(assert (= (and d!2310776 (not res!3021043)) b!7538351))

(assert (= (and b!7538351 res!3021040) b!7538352))

(assert (= (and b!7538352 res!3021041) b!7538353))

(assert (= (and d!2310776 (not res!3021042)) b!7538354))

(assert (=> b!7538354 m!8108156))

(assert (=> b!7538354 m!8108308))

(assert (=> b!7538353 m!8108310))

(assert (=> b!7538353 m!8108280))

(assert (=> b!7538353 m!8108310))

(assert (=> b!7538353 m!8108280))

(declare-fun m!8108322 () Bool)

(assert (=> b!7538353 m!8108322))

(assert (=> b!7538352 m!8108316))

(assert (=> b!7538352 m!8108284))

(assert (=> b!7538114 d!2310776))

(declare-fun d!2310778 () Bool)

(assert (=> d!2310778 (= (derivative!429 baseR!101 (++!17414 testedP!423 (Cons!72656 lt!2642427 Nil!72656))) (derivativeStep!5687 r!24333 lt!2642427))))

(declare-fun lt!2642485 () Unit!166732)

(declare-fun choose!58308 (Regex!19897 Regex!19897 List!72780 C!40120) Unit!166732)

(assert (=> d!2310778 (= lt!2642485 (choose!58308 baseR!101 r!24333 testedP!423 lt!2642427))))

(assert (=> d!2310778 (validRegex!10325 baseR!101)))

(assert (=> d!2310778 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!135 baseR!101 r!24333 testedP!423 lt!2642427) lt!2642485)))

(declare-fun bs!1939941 () Bool)

(assert (= bs!1939941 d!2310778))

(assert (=> bs!1939941 m!8108116))

(declare-fun m!8108324 () Bool)

(assert (=> bs!1939941 m!8108324))

(declare-fun m!8108326 () Bool)

(assert (=> bs!1939941 m!8108326))

(assert (=> bs!1939941 m!8108126))

(assert (=> bs!1939941 m!8108108))

(assert (=> bs!1939941 m!8108116))

(assert (=> b!7538114 d!2310778))

(declare-fun d!2310780 () Bool)

(declare-fun lt!2642486 () List!72780)

(assert (=> d!2310780 (= (++!17414 lt!2642431 lt!2642486) knownP!30)))

(declare-fun e!4491717 () List!72780)

(assert (=> d!2310780 (= lt!2642486 e!4491717)))

(declare-fun c!1391840 () Bool)

(assert (=> d!2310780 (= c!1391840 ((_ is Cons!72656) lt!2642431))))

(assert (=> d!2310780 (>= (size!42393 knownP!30) (size!42393 lt!2642431))))

(assert (=> d!2310780 (= (getSuffix!3583 knownP!30 lt!2642431) lt!2642486)))

(declare-fun b!7538359 () Bool)

(assert (=> b!7538359 (= e!4491717 (getSuffix!3583 (tail!15032 knownP!30) (t!387487 lt!2642431)))))

(declare-fun b!7538360 () Bool)

(assert (=> b!7538360 (= e!4491717 knownP!30)))

(assert (= (and d!2310780 c!1391840) b!7538359))

(assert (= (and d!2310780 (not c!1391840)) b!7538360))

(declare-fun m!8108328 () Bool)

(assert (=> d!2310780 m!8108328))

(assert (=> d!2310780 m!8108146))

(assert (=> d!2310780 m!8108308))

(assert (=> b!7538359 m!8108230))

(assert (=> b!7538359 m!8108230))

(declare-fun m!8108330 () Bool)

(assert (=> b!7538359 m!8108330))

(assert (=> b!7538114 d!2310780))

(declare-fun b!7538395 () Bool)

(declare-fun e!4491742 () Regex!19897)

(declare-fun e!4491738 () Regex!19897)

(assert (=> b!7538395 (= e!4491742 e!4491738)))

(declare-fun c!1391855 () Bool)

(assert (=> b!7538395 (= c!1391855 ((_ is ElementMatch!19897) r!24333))))

(declare-fun b!7538396 () Bool)

(declare-fun e!4491740 () Regex!19897)

(declare-fun call!691525 () Regex!19897)

(declare-fun call!691527 () Regex!19897)

(assert (=> b!7538396 (= e!4491740 (Union!19897 call!691525 call!691527))))

(declare-fun b!7538397 () Bool)

(assert (=> b!7538397 (= e!4491738 (ite (= lt!2642427 (c!1391784 r!24333)) EmptyExpr!19897 EmptyLang!19897))))

(declare-fun b!7538398 () Bool)

(declare-fun e!4491741 () Regex!19897)

(assert (=> b!7538398 (= e!4491740 e!4491741)))

(declare-fun c!1391852 () Bool)

(assert (=> b!7538398 (= c!1391852 ((_ is Star!19897) r!24333))))

(declare-fun b!7538399 () Bool)

(declare-fun call!691528 () Regex!19897)

(assert (=> b!7538399 (= e!4491741 (Concat!28742 call!691528 r!24333))))

(declare-fun d!2310782 () Bool)

(declare-fun lt!2642493 () Regex!19897)

(assert (=> d!2310782 (validRegex!10325 lt!2642493)))

(assert (=> d!2310782 (= lt!2642493 e!4491742)))

(declare-fun c!1391853 () Bool)

(assert (=> d!2310782 (= c!1391853 (or ((_ is EmptyExpr!19897) r!24333) ((_ is EmptyLang!19897) r!24333)))))

(assert (=> d!2310782 (validRegex!10325 r!24333)))

(assert (=> d!2310782 (= (derivativeStep!5687 r!24333 lt!2642427) lt!2642493)))

(declare-fun bm!691520 () Bool)

(assert (=> bm!691520 (= call!691528 call!691527)))

(declare-fun bm!691521 () Bool)

(declare-fun c!1391856 () Bool)

(assert (=> bm!691521 (= call!691525 (derivativeStep!5687 (ite c!1391856 (regOne!40307 r!24333) (regTwo!40306 r!24333)) lt!2642427))))

(declare-fun b!7538400 () Bool)

(assert (=> b!7538400 (= c!1391856 ((_ is Union!19897) r!24333))))

(assert (=> b!7538400 (= e!4491738 e!4491740)))

(declare-fun b!7538401 () Bool)

(assert (=> b!7538401 (= e!4491742 EmptyLang!19897)))

(declare-fun e!4491739 () Regex!19897)

(declare-fun call!691526 () Regex!19897)

(declare-fun b!7538402 () Bool)

(assert (=> b!7538402 (= e!4491739 (Union!19897 (Concat!28742 call!691526 (regTwo!40306 r!24333)) call!691525))))

(declare-fun bm!691522 () Bool)

(assert (=> bm!691522 (= call!691526 call!691528)))

(declare-fun bm!691523 () Bool)

(assert (=> bm!691523 (= call!691527 (derivativeStep!5687 (ite c!1391856 (regTwo!40307 r!24333) (ite c!1391852 (reg!20226 r!24333) (regOne!40306 r!24333))) lt!2642427))))

(declare-fun b!7538403 () Bool)

(assert (=> b!7538403 (= e!4491739 (Union!19897 (Concat!28742 call!691526 (regTwo!40306 r!24333)) EmptyLang!19897))))

(declare-fun b!7538404 () Bool)

(declare-fun c!1391854 () Bool)

(assert (=> b!7538404 (= c!1391854 (nullable!8670 (regOne!40306 r!24333)))))

(assert (=> b!7538404 (= e!4491741 e!4491739)))

(assert (= (and d!2310782 c!1391853) b!7538401))

(assert (= (and d!2310782 (not c!1391853)) b!7538395))

(assert (= (and b!7538395 c!1391855) b!7538397))

(assert (= (and b!7538395 (not c!1391855)) b!7538400))

(assert (= (and b!7538400 c!1391856) b!7538396))

(assert (= (and b!7538400 (not c!1391856)) b!7538398))

(assert (= (and b!7538398 c!1391852) b!7538399))

(assert (= (and b!7538398 (not c!1391852)) b!7538404))

(assert (= (and b!7538404 c!1391854) b!7538402))

(assert (= (and b!7538404 (not c!1391854)) b!7538403))

(assert (= (or b!7538402 b!7538403) bm!691522))

(assert (= (or b!7538399 bm!691522) bm!691520))

(assert (= (or b!7538396 bm!691520) bm!691523))

(assert (= (or b!7538396 b!7538402) bm!691521))

(declare-fun m!8108342 () Bool)

(assert (=> d!2310782 m!8108342))

(assert (=> d!2310782 m!8108102))

(declare-fun m!8108344 () Bool)

(assert (=> bm!691521 m!8108344))

(declare-fun m!8108346 () Bool)

(assert (=> bm!691523 m!8108346))

(declare-fun m!8108348 () Bool)

(assert (=> b!7538404 m!8108348))

(assert (=> b!7538114 d!2310782))

(declare-fun d!2310788 () Bool)

(assert (=> d!2310788 (= (head!15487 lt!2642432) (h!79104 lt!2642432))))

(assert (=> b!7538114 d!2310788))

(declare-fun b!7538406 () Bool)

(declare-fun e!4491743 () List!72780)

(assert (=> b!7538406 (= e!4491743 (Cons!72656 (h!79104 knownP!30) (++!17414 (t!387487 knownP!30) lt!2642428)))))

(declare-fun d!2310790 () Bool)

(declare-fun e!4491744 () Bool)

(assert (=> d!2310790 e!4491744))

(declare-fun res!3021057 () Bool)

(assert (=> d!2310790 (=> (not res!3021057) (not e!4491744))))

(declare-fun lt!2642494 () List!72780)

(assert (=> d!2310790 (= res!3021057 (= (content!15359 lt!2642494) ((_ map or) (content!15359 knownP!30) (content!15359 lt!2642428))))))

(assert (=> d!2310790 (= lt!2642494 e!4491743)))

(declare-fun c!1391857 () Bool)

(assert (=> d!2310790 (= c!1391857 ((_ is Nil!72656) knownP!30))))

(assert (=> d!2310790 (= (++!17414 knownP!30 lt!2642428) lt!2642494)))

(declare-fun b!7538405 () Bool)

(assert (=> b!7538405 (= e!4491743 lt!2642428)))

(declare-fun b!7538407 () Bool)

(declare-fun res!3021056 () Bool)

(assert (=> b!7538407 (=> (not res!3021056) (not e!4491744))))

(assert (=> b!7538407 (= res!3021056 (= (size!42393 lt!2642494) (+ (size!42393 knownP!30) (size!42393 lt!2642428))))))

(declare-fun b!7538408 () Bool)

(assert (=> b!7538408 (= e!4491744 (or (not (= lt!2642428 Nil!72656)) (= lt!2642494 knownP!30)))))

(assert (= (and d!2310790 c!1391857) b!7538405))

(assert (= (and d!2310790 (not c!1391857)) b!7538406))

(assert (= (and d!2310790 res!3021057) b!7538407))

(assert (= (and b!7538407 res!3021056) b!7538408))

(declare-fun m!8108350 () Bool)

(assert (=> b!7538406 m!8108350))

(declare-fun m!8108352 () Bool)

(assert (=> d!2310790 m!8108352))

(declare-fun m!8108354 () Bool)

(assert (=> d!2310790 m!8108354))

(assert (=> d!2310790 m!8108186))

(declare-fun m!8108356 () Bool)

(assert (=> b!7538407 m!8108356))

(assert (=> b!7538407 m!8108146))

(assert (=> b!7538407 m!8108192))

(assert (=> b!7538114 d!2310790))

(declare-fun b!7538410 () Bool)

(declare-fun e!4491745 () List!72780)

(assert (=> b!7538410 (= e!4491745 (Cons!72656 (h!79104 testedP!423) (++!17414 (t!387487 testedP!423) (Cons!72656 lt!2642427 Nil!72656))))))

(declare-fun d!2310792 () Bool)

(declare-fun e!4491746 () Bool)

(assert (=> d!2310792 e!4491746))

(declare-fun res!3021059 () Bool)

(assert (=> d!2310792 (=> (not res!3021059) (not e!4491746))))

(declare-fun lt!2642495 () List!72780)

(assert (=> d!2310792 (= res!3021059 (= (content!15359 lt!2642495) ((_ map or) (content!15359 testedP!423) (content!15359 (Cons!72656 lt!2642427 Nil!72656)))))))

(assert (=> d!2310792 (= lt!2642495 e!4491745)))

(declare-fun c!1391858 () Bool)

(assert (=> d!2310792 (= c!1391858 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310792 (= (++!17414 testedP!423 (Cons!72656 lt!2642427 Nil!72656)) lt!2642495)))

(declare-fun b!7538409 () Bool)

(assert (=> b!7538409 (= e!4491745 (Cons!72656 lt!2642427 Nil!72656))))

(declare-fun b!7538411 () Bool)

(declare-fun res!3021058 () Bool)

(assert (=> b!7538411 (=> (not res!3021058) (not e!4491746))))

(assert (=> b!7538411 (= res!3021058 (= (size!42393 lt!2642495) (+ (size!42393 testedP!423) (size!42393 (Cons!72656 lt!2642427 Nil!72656)))))))

(declare-fun b!7538412 () Bool)

(assert (=> b!7538412 (= e!4491746 (or (not (= (Cons!72656 lt!2642427 Nil!72656) Nil!72656)) (= lt!2642495 testedP!423)))))

(assert (= (and d!2310792 c!1391858) b!7538409))

(assert (= (and d!2310792 (not c!1391858)) b!7538410))

(assert (= (and d!2310792 res!3021059) b!7538411))

(assert (= (and b!7538411 res!3021058) b!7538412))

(declare-fun m!8108358 () Bool)

(assert (=> b!7538410 m!8108358))

(declare-fun m!8108360 () Bool)

(assert (=> d!2310792 m!8108360))

(assert (=> d!2310792 m!8108162))

(declare-fun m!8108362 () Bool)

(assert (=> d!2310792 m!8108362))

(declare-fun m!8108364 () Bool)

(assert (=> b!7538411 m!8108364))

(assert (=> b!7538411 m!8108144))

(declare-fun m!8108366 () Bool)

(assert (=> b!7538411 m!8108366))

(assert (=> b!7538114 d!2310792))

(declare-fun d!2310794 () Bool)

(declare-fun lt!2642498 () List!72780)

(assert (=> d!2310794 (= (++!17414 knownP!30 lt!2642498) input!7874)))

(declare-fun e!4491747 () List!72780)

(assert (=> d!2310794 (= lt!2642498 e!4491747)))

(declare-fun c!1391859 () Bool)

(assert (=> d!2310794 (= c!1391859 ((_ is Cons!72656) knownP!30))))

(assert (=> d!2310794 (>= (size!42393 input!7874) (size!42393 knownP!30))))

(assert (=> d!2310794 (= (getSuffix!3583 input!7874 knownP!30) lt!2642498)))

(declare-fun b!7538413 () Bool)

(assert (=> b!7538413 (= e!4491747 (getSuffix!3583 (tail!15032 input!7874) (t!387487 knownP!30)))))

(declare-fun b!7538414 () Bool)

(assert (=> b!7538414 (= e!4491747 input!7874)))

(assert (= (and d!2310794 c!1391859) b!7538413))

(assert (= (and d!2310794 (not c!1391859)) b!7538414))

(declare-fun m!8108368 () Bool)

(assert (=> d!2310794 m!8108368))

(assert (=> d!2310794 m!8108156))

(assert (=> d!2310794 m!8108146))

(assert (=> b!7538413 m!8108280))

(assert (=> b!7538413 m!8108280))

(declare-fun m!8108370 () Bool)

(assert (=> b!7538413 m!8108370))

(assert (=> b!7538114 d!2310794))

(declare-fun d!2310796 () Bool)

(assert (=> d!2310796 (isPrefix!6103 (++!17414 testedP!423 (Cons!72656 (head!15487 (getSuffix!3583 input!7874 testedP!423)) Nil!72656)) input!7874)))

(declare-fun lt!2642503 () Unit!166732)

(declare-fun choose!58309 (List!72780 List!72780) Unit!166732)

(assert (=> d!2310796 (= lt!2642503 (choose!58309 testedP!423 input!7874))))

(assert (=> d!2310796 (isPrefix!6103 testedP!423 input!7874)))

(assert (=> d!2310796 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1168 testedP!423 input!7874) lt!2642503)))

(declare-fun bs!1939943 () Bool)

(assert (= bs!1939943 d!2310796))

(declare-fun m!8108386 () Bool)

(assert (=> bs!1939943 m!8108386))

(declare-fun m!8108388 () Bool)

(assert (=> bs!1939943 m!8108388))

(declare-fun m!8108390 () Bool)

(assert (=> bs!1939943 m!8108390))

(assert (=> bs!1939943 m!8108122))

(assert (=> bs!1939943 m!8108138))

(assert (=> bs!1939943 m!8108122))

(declare-fun m!8108392 () Bool)

(assert (=> bs!1939943 m!8108392))

(assert (=> bs!1939943 m!8108388))

(assert (=> b!7538114 d!2310796))

(declare-fun d!2310804 () Bool)

(declare-fun lt!2642504 () Regex!19897)

(assert (=> d!2310804 (validRegex!10325 lt!2642504)))

(declare-fun e!4491758 () Regex!19897)

(assert (=> d!2310804 (= lt!2642504 e!4491758)))

(declare-fun c!1391862 () Bool)

(assert (=> d!2310804 (= c!1391862 ((_ is Cons!72656) lt!2642431))))

(assert (=> d!2310804 (validRegex!10325 baseR!101)))

(assert (=> d!2310804 (= (derivative!429 baseR!101 lt!2642431) lt!2642504)))

(declare-fun b!7538428 () Bool)

(assert (=> b!7538428 (= e!4491758 (derivative!429 (derivativeStep!5687 baseR!101 (h!79104 lt!2642431)) (t!387487 lt!2642431)))))

(declare-fun b!7538429 () Bool)

(assert (=> b!7538429 (= e!4491758 baseR!101)))

(assert (= (and d!2310804 c!1391862) b!7538428))

(assert (= (and d!2310804 (not c!1391862)) b!7538429))

(declare-fun m!8108394 () Bool)

(assert (=> d!2310804 m!8108394))

(assert (=> d!2310804 m!8108108))

(declare-fun m!8108396 () Bool)

(assert (=> b!7538428 m!8108396))

(assert (=> b!7538428 m!8108396))

(declare-fun m!8108398 () Bool)

(assert (=> b!7538428 m!8108398))

(assert (=> b!7538114 d!2310804))

(declare-fun d!2310806 () Bool)

(declare-fun lt!2642507 () Int)

(assert (=> d!2310806 (>= lt!2642507 0)))

(declare-fun e!4491761 () Int)

(assert (=> d!2310806 (= lt!2642507 e!4491761)))

(declare-fun c!1391865 () Bool)

(assert (=> d!2310806 (= c!1391865 ((_ is Nil!72656) testedP!423))))

(assert (=> d!2310806 (= (size!42393 testedP!423) lt!2642507)))

(declare-fun b!7538434 () Bool)

(assert (=> b!7538434 (= e!4491761 0)))

(declare-fun b!7538435 () Bool)

(assert (=> b!7538435 (= e!4491761 (+ 1 (size!42393 (t!387487 testedP!423))))))

(assert (= (and d!2310806 c!1391865) b!7538434))

(assert (= (and d!2310806 (not c!1391865)) b!7538435))

(declare-fun m!8108400 () Bool)

(assert (=> b!7538435 m!8108400))

(assert (=> b!7538112 d!2310806))

(declare-fun d!2310808 () Bool)

(declare-fun lt!2642508 () Int)

(assert (=> d!2310808 (>= lt!2642508 0)))

(declare-fun e!4491762 () Int)

(assert (=> d!2310808 (= lt!2642508 e!4491762)))

(declare-fun c!1391866 () Bool)

(assert (=> d!2310808 (= c!1391866 ((_ is Nil!72656) knownP!30))))

(assert (=> d!2310808 (= (size!42393 knownP!30) lt!2642508)))

(declare-fun b!7538436 () Bool)

(assert (=> b!7538436 (= e!4491762 0)))

(declare-fun b!7538437 () Bool)

(assert (=> b!7538437 (= e!4491762 (+ 1 (size!42393 (t!387487 knownP!30))))))

(assert (= (and d!2310808 c!1391866) b!7538436))

(assert (= (and d!2310808 (not c!1391866)) b!7538437))

(declare-fun m!8108402 () Bool)

(assert (=> b!7538437 m!8108402))

(assert (=> b!7538112 d!2310808))

(declare-fun b!7538438 () Bool)

(declare-fun res!3021072 () Bool)

(declare-fun e!4491769 () Bool)

(assert (=> b!7538438 (=> (not res!3021072) (not e!4491769))))

(assert (=> b!7538438 (= res!3021072 (isEmpty!41366 (tail!15032 knownP!30)))))

(declare-fun b!7538440 () Bool)

(declare-fun e!4491767 () Bool)

(declare-fun e!4491768 () Bool)

(assert (=> b!7538440 (= e!4491767 e!4491768)))

(declare-fun c!1391867 () Bool)

(assert (=> b!7538440 (= c!1391867 ((_ is EmptyLang!19897) baseR!101))))

(declare-fun b!7538441 () Bool)

(declare-fun e!4491766 () Bool)

(assert (=> b!7538441 (= e!4491766 (nullable!8670 baseR!101))))

(declare-fun b!7538442 () Bool)

(declare-fun e!4491764 () Bool)

(assert (=> b!7538442 (= e!4491764 (not (= (head!15487 knownP!30) (c!1391784 baseR!101))))))

(declare-fun b!7538443 () Bool)

(assert (=> b!7538443 (= e!4491769 (= (head!15487 knownP!30) (c!1391784 baseR!101)))))

(declare-fun b!7538444 () Bool)

(assert (=> b!7538444 (= e!4491766 (matchR!9499 (derivativeStep!5687 baseR!101 (head!15487 knownP!30)) (tail!15032 knownP!30)))))

(declare-fun b!7538445 () Bool)

(declare-fun res!3021070 () Bool)

(declare-fun e!4491763 () Bool)

(assert (=> b!7538445 (=> res!3021070 e!4491763)))

(assert (=> b!7538445 (= res!3021070 e!4491769)))

(declare-fun res!3021075 () Bool)

(assert (=> b!7538445 (=> (not res!3021075) (not e!4491769))))

(declare-fun lt!2642509 () Bool)

(assert (=> b!7538445 (= res!3021075 lt!2642509)))

(declare-fun b!7538446 () Bool)

(declare-fun e!4491765 () Bool)

(assert (=> b!7538446 (= e!4491765 e!4491764)))

(declare-fun res!3021074 () Bool)

(assert (=> b!7538446 (=> res!3021074 e!4491764)))

(declare-fun call!691532 () Bool)

(assert (=> b!7538446 (= res!3021074 call!691532)))

(declare-fun b!7538447 () Bool)

(assert (=> b!7538447 (= e!4491767 (= lt!2642509 call!691532))))

(declare-fun d!2310810 () Bool)

(assert (=> d!2310810 e!4491767))

(declare-fun c!1391868 () Bool)

(assert (=> d!2310810 (= c!1391868 ((_ is EmptyExpr!19897) baseR!101))))

(assert (=> d!2310810 (= lt!2642509 e!4491766)))

(declare-fun c!1391869 () Bool)

(assert (=> d!2310810 (= c!1391869 (isEmpty!41366 knownP!30))))

(assert (=> d!2310810 (validRegex!10325 baseR!101)))

(assert (=> d!2310810 (= (matchR!9499 baseR!101 knownP!30) lt!2642509)))

(declare-fun b!7538439 () Bool)

(assert (=> b!7538439 (= e!4491768 (not lt!2642509))))

(declare-fun bm!691527 () Bool)

(assert (=> bm!691527 (= call!691532 (isEmpty!41366 knownP!30))))

(declare-fun b!7538448 () Bool)

(declare-fun res!3021076 () Bool)

(assert (=> b!7538448 (=> (not res!3021076) (not e!4491769))))

(assert (=> b!7538448 (= res!3021076 (not call!691532))))

(declare-fun b!7538449 () Bool)

(assert (=> b!7538449 (= e!4491763 e!4491765)))

(declare-fun res!3021073 () Bool)

(assert (=> b!7538449 (=> (not res!3021073) (not e!4491765))))

(assert (=> b!7538449 (= res!3021073 (not lt!2642509))))

(declare-fun b!7538450 () Bool)

(declare-fun res!3021069 () Bool)

(assert (=> b!7538450 (=> res!3021069 e!4491763)))

(assert (=> b!7538450 (= res!3021069 (not ((_ is ElementMatch!19897) baseR!101)))))

(assert (=> b!7538450 (= e!4491768 e!4491763)))

(declare-fun b!7538451 () Bool)

(declare-fun res!3021071 () Bool)

(assert (=> b!7538451 (=> res!3021071 e!4491764)))

(assert (=> b!7538451 (= res!3021071 (not (isEmpty!41366 (tail!15032 knownP!30))))))

(assert (= (and d!2310810 c!1391869) b!7538441))

(assert (= (and d!2310810 (not c!1391869)) b!7538444))

(assert (= (and d!2310810 c!1391868) b!7538447))

(assert (= (and d!2310810 (not c!1391868)) b!7538440))

(assert (= (and b!7538440 c!1391867) b!7538439))

(assert (= (and b!7538440 (not c!1391867)) b!7538450))

(assert (= (and b!7538450 (not res!3021069)) b!7538445))

(assert (= (and b!7538445 res!3021075) b!7538448))

(assert (= (and b!7538448 res!3021076) b!7538438))

(assert (= (and b!7538438 res!3021072) b!7538443))

(assert (= (and b!7538445 (not res!3021070)) b!7538449))

(assert (= (and b!7538449 res!3021073) b!7538446))

(assert (= (and b!7538446 (not res!3021074)) b!7538451))

(assert (= (and b!7538451 (not res!3021071)) b!7538442))

(assert (= (or b!7538447 b!7538446 b!7538448) bm!691527))

(declare-fun m!8108404 () Bool)

(assert (=> b!7538441 m!8108404))

(declare-fun m!8108406 () Bool)

(assert (=> d!2310810 m!8108406))

(assert (=> d!2310810 m!8108108))

(assert (=> b!7538451 m!8108230))

(assert (=> b!7538451 m!8108230))

(declare-fun m!8108408 () Bool)

(assert (=> b!7538451 m!8108408))

(assert (=> b!7538443 m!8108240))

(assert (=> bm!691527 m!8108406))

(assert (=> b!7538442 m!8108240))

(assert (=> b!7538444 m!8108240))

(assert (=> b!7538444 m!8108240))

(declare-fun m!8108410 () Bool)

(assert (=> b!7538444 m!8108410))

(assert (=> b!7538444 m!8108230))

(assert (=> b!7538444 m!8108410))

(assert (=> b!7538444 m!8108230))

(declare-fun m!8108412 () Bool)

(assert (=> b!7538444 m!8108412))

(assert (=> b!7538438 m!8108230))

(assert (=> b!7538438 m!8108230))

(assert (=> b!7538438 m!8108408))

(assert (=> b!7538102 d!2310810))

(declare-fun d!2310812 () Bool)

(assert (=> d!2310812 (= lt!2642436 lt!2642432)))

(declare-fun lt!2642514 () Unit!166732)

(declare-fun choose!58311 (List!72780 List!72780 List!72780 List!72780 List!72780) Unit!166732)

(assert (=> d!2310812 (= lt!2642514 (choose!58311 testedP!423 lt!2642436 testedP!423 lt!2642432 input!7874))))

(assert (=> d!2310812 (isPrefix!6103 testedP!423 input!7874)))

(assert (=> d!2310812 (= (lemmaSamePrefixThenSameSuffix!2831 testedP!423 lt!2642436 testedP!423 lt!2642432 input!7874) lt!2642514)))

(declare-fun bs!1939944 () Bool)

(assert (= bs!1939944 d!2310812))

(declare-fun m!8108414 () Bool)

(assert (=> bs!1939944 m!8108414))

(assert (=> bs!1939944 m!8108138))

(assert (=> b!7538111 d!2310812))

(declare-fun d!2310814 () Bool)

(declare-fun lt!2642515 () Int)

(assert (=> d!2310814 (>= lt!2642515 0)))

(declare-fun e!4491774 () Int)

(assert (=> d!2310814 (= lt!2642515 e!4491774)))

(declare-fun c!1391872 () Bool)

(assert (=> d!2310814 (= c!1391872 ((_ is Nil!72656) input!7874))))

(assert (=> d!2310814 (= (size!42393 input!7874) lt!2642515)))

(declare-fun b!7538460 () Bool)

(assert (=> b!7538460 (= e!4491774 0)))

(declare-fun b!7538461 () Bool)

(assert (=> b!7538461 (= e!4491774 (+ 1 (size!42393 (t!387487 input!7874))))))

(assert (= (and d!2310814 c!1391872) b!7538460))

(assert (= (and d!2310814 (not c!1391872)) b!7538461))

(declare-fun m!8108416 () Bool)

(assert (=> b!7538461 m!8108416))

(assert (=> b!7538100 d!2310814))

(declare-fun b!7538466 () Bool)

(declare-fun e!4491777 () Bool)

(declare-fun tp!2192610 () Bool)

(assert (=> b!7538466 (= e!4491777 (and tp_is_empty!50149 tp!2192610))))

(assert (=> b!7538110 (= tp!2192599 e!4491777)))

(assert (= (and b!7538110 ((_ is Cons!72656) (t!387487 testedP!423))) b!7538466))

(declare-fun b!7538484 () Bool)

(declare-fun e!4491782 () Bool)

(declare-fun tp!2192625 () Bool)

(declare-fun tp!2192622 () Bool)

(assert (=> b!7538484 (= e!4491782 (and tp!2192625 tp!2192622))))

(declare-fun b!7538481 () Bool)

(assert (=> b!7538481 (= e!4491782 tp_is_empty!50149)))

(declare-fun b!7538483 () Bool)

(declare-fun tp!2192624 () Bool)

(assert (=> b!7538483 (= e!4491782 tp!2192624)))

(assert (=> b!7538103 (= tp!2192602 e!4491782)))

(declare-fun b!7538482 () Bool)

(declare-fun tp!2192623 () Bool)

(declare-fun tp!2192621 () Bool)

(assert (=> b!7538482 (= e!4491782 (and tp!2192623 tp!2192621))))

(assert (= (and b!7538103 ((_ is ElementMatch!19897) (regOne!40307 baseR!101))) b!7538481))

(assert (= (and b!7538103 ((_ is Concat!28742) (regOne!40307 baseR!101))) b!7538482))

(assert (= (and b!7538103 ((_ is Star!19897) (regOne!40307 baseR!101))) b!7538483))

(assert (= (and b!7538103 ((_ is Union!19897) (regOne!40307 baseR!101))) b!7538484))

(declare-fun b!7538488 () Bool)

(declare-fun e!4491783 () Bool)

(declare-fun tp!2192630 () Bool)

(declare-fun tp!2192627 () Bool)

(assert (=> b!7538488 (= e!4491783 (and tp!2192630 tp!2192627))))

(declare-fun b!7538485 () Bool)

(assert (=> b!7538485 (= e!4491783 tp_is_empty!50149)))

(declare-fun b!7538487 () Bool)

(declare-fun tp!2192629 () Bool)

(assert (=> b!7538487 (= e!4491783 tp!2192629)))

(assert (=> b!7538103 (= tp!2192606 e!4491783)))

(declare-fun b!7538486 () Bool)

(declare-fun tp!2192628 () Bool)

(declare-fun tp!2192626 () Bool)

(assert (=> b!7538486 (= e!4491783 (and tp!2192628 tp!2192626))))

(assert (= (and b!7538103 ((_ is ElementMatch!19897) (regTwo!40307 baseR!101))) b!7538485))

(assert (= (and b!7538103 ((_ is Concat!28742) (regTwo!40307 baseR!101))) b!7538486))

(assert (= (and b!7538103 ((_ is Star!19897) (regTwo!40307 baseR!101))) b!7538487))

(assert (= (and b!7538103 ((_ is Union!19897) (regTwo!40307 baseR!101))) b!7538488))

(declare-fun b!7538492 () Bool)

(declare-fun e!4491784 () Bool)

(declare-fun tp!2192635 () Bool)

(declare-fun tp!2192632 () Bool)

(assert (=> b!7538492 (= e!4491784 (and tp!2192635 tp!2192632))))

(declare-fun b!7538489 () Bool)

(assert (=> b!7538489 (= e!4491784 tp_is_empty!50149)))

(declare-fun b!7538491 () Bool)

(declare-fun tp!2192634 () Bool)

(assert (=> b!7538491 (= e!4491784 tp!2192634)))

(assert (=> b!7538092 (= tp!2192607 e!4491784)))

(declare-fun b!7538490 () Bool)

(declare-fun tp!2192633 () Bool)

(declare-fun tp!2192631 () Bool)

(assert (=> b!7538490 (= e!4491784 (and tp!2192633 tp!2192631))))

(assert (= (and b!7538092 ((_ is ElementMatch!19897) (regOne!40306 baseR!101))) b!7538489))

(assert (= (and b!7538092 ((_ is Concat!28742) (regOne!40306 baseR!101))) b!7538490))

(assert (= (and b!7538092 ((_ is Star!19897) (regOne!40306 baseR!101))) b!7538491))

(assert (= (and b!7538092 ((_ is Union!19897) (regOne!40306 baseR!101))) b!7538492))

(declare-fun b!7538496 () Bool)

(declare-fun e!4491785 () Bool)

(declare-fun tp!2192640 () Bool)

(declare-fun tp!2192637 () Bool)

(assert (=> b!7538496 (= e!4491785 (and tp!2192640 tp!2192637))))

(declare-fun b!7538493 () Bool)

(assert (=> b!7538493 (= e!4491785 tp_is_empty!50149)))

(declare-fun b!7538495 () Bool)

(declare-fun tp!2192639 () Bool)

(assert (=> b!7538495 (= e!4491785 tp!2192639)))

(assert (=> b!7538092 (= tp!2192595 e!4491785)))

(declare-fun b!7538494 () Bool)

(declare-fun tp!2192638 () Bool)

(declare-fun tp!2192636 () Bool)

(assert (=> b!7538494 (= e!4491785 (and tp!2192638 tp!2192636))))

(assert (= (and b!7538092 ((_ is ElementMatch!19897) (regTwo!40306 baseR!101))) b!7538493))

(assert (= (and b!7538092 ((_ is Concat!28742) (regTwo!40306 baseR!101))) b!7538494))

(assert (= (and b!7538092 ((_ is Star!19897) (regTwo!40306 baseR!101))) b!7538495))

(assert (= (and b!7538092 ((_ is Union!19897) (regTwo!40306 baseR!101))) b!7538496))

(declare-fun b!7538500 () Bool)

(declare-fun e!4491786 () Bool)

(declare-fun tp!2192645 () Bool)

(declare-fun tp!2192642 () Bool)

(assert (=> b!7538500 (= e!4491786 (and tp!2192645 tp!2192642))))

(declare-fun b!7538497 () Bool)

(assert (=> b!7538497 (= e!4491786 tp_is_empty!50149)))

(declare-fun b!7538499 () Bool)

(declare-fun tp!2192644 () Bool)

(assert (=> b!7538499 (= e!4491786 tp!2192644)))

(assert (=> b!7538108 (= tp!2192596 e!4491786)))

(declare-fun b!7538498 () Bool)

(declare-fun tp!2192643 () Bool)

(declare-fun tp!2192641 () Bool)

(assert (=> b!7538498 (= e!4491786 (and tp!2192643 tp!2192641))))

(assert (= (and b!7538108 ((_ is ElementMatch!19897) (regOne!40306 r!24333))) b!7538497))

(assert (= (and b!7538108 ((_ is Concat!28742) (regOne!40306 r!24333))) b!7538498))

(assert (= (and b!7538108 ((_ is Star!19897) (regOne!40306 r!24333))) b!7538499))

(assert (= (and b!7538108 ((_ is Union!19897) (regOne!40306 r!24333))) b!7538500))

(declare-fun b!7538506 () Bool)

(declare-fun e!4491788 () Bool)

(declare-fun tp!2192650 () Bool)

(declare-fun tp!2192647 () Bool)

(assert (=> b!7538506 (= e!4491788 (and tp!2192650 tp!2192647))))

(declare-fun b!7538503 () Bool)

(assert (=> b!7538503 (= e!4491788 tp_is_empty!50149)))

(declare-fun b!7538505 () Bool)

(declare-fun tp!2192649 () Bool)

(assert (=> b!7538505 (= e!4491788 tp!2192649)))

(assert (=> b!7538108 (= tp!2192603 e!4491788)))

(declare-fun b!7538504 () Bool)

(declare-fun tp!2192648 () Bool)

(declare-fun tp!2192646 () Bool)

(assert (=> b!7538504 (= e!4491788 (and tp!2192648 tp!2192646))))

(assert (= (and b!7538108 ((_ is ElementMatch!19897) (regTwo!40306 r!24333))) b!7538503))

(assert (= (and b!7538108 ((_ is Concat!28742) (regTwo!40306 r!24333))) b!7538504))

(assert (= (and b!7538108 ((_ is Star!19897) (regTwo!40306 r!24333))) b!7538505))

(assert (= (and b!7538108 ((_ is Union!19897) (regTwo!40306 r!24333))) b!7538506))

(declare-fun b!7538507 () Bool)

(declare-fun e!4491789 () Bool)

(declare-fun tp!2192651 () Bool)

(assert (=> b!7538507 (= e!4491789 (and tp_is_empty!50149 tp!2192651))))

(assert (=> b!7538109 (= tp!2192604 e!4491789)))

(assert (= (and b!7538109 ((_ is Cons!72656) (t!387487 input!7874))) b!7538507))

(declare-fun b!7538513 () Bool)

(declare-fun e!4491791 () Bool)

(declare-fun tp!2192656 () Bool)

(declare-fun tp!2192653 () Bool)

(assert (=> b!7538513 (= e!4491791 (and tp!2192656 tp!2192653))))

(declare-fun b!7538510 () Bool)

(assert (=> b!7538510 (= e!4491791 tp_is_empty!50149)))

(declare-fun b!7538512 () Bool)

(declare-fun tp!2192655 () Bool)

(assert (=> b!7538512 (= e!4491791 tp!2192655)))

(assert (=> b!7538097 (= tp!2192598 e!4491791)))

(declare-fun b!7538511 () Bool)

(declare-fun tp!2192654 () Bool)

(declare-fun tp!2192652 () Bool)

(assert (=> b!7538511 (= e!4491791 (and tp!2192654 tp!2192652))))

(assert (= (and b!7538097 ((_ is ElementMatch!19897) (regOne!40307 r!24333))) b!7538510))

(assert (= (and b!7538097 ((_ is Concat!28742) (regOne!40307 r!24333))) b!7538511))

(assert (= (and b!7538097 ((_ is Star!19897) (regOne!40307 r!24333))) b!7538512))

(assert (= (and b!7538097 ((_ is Union!19897) (regOne!40307 r!24333))) b!7538513))

(declare-fun b!7538517 () Bool)

(declare-fun e!4491792 () Bool)

(declare-fun tp!2192661 () Bool)

(declare-fun tp!2192658 () Bool)

(assert (=> b!7538517 (= e!4491792 (and tp!2192661 tp!2192658))))

(declare-fun b!7538514 () Bool)

(assert (=> b!7538514 (= e!4491792 tp_is_empty!50149)))

(declare-fun b!7538516 () Bool)

(declare-fun tp!2192660 () Bool)

(assert (=> b!7538516 (= e!4491792 tp!2192660)))

(assert (=> b!7538097 (= tp!2192601 e!4491792)))

(declare-fun b!7538515 () Bool)

(declare-fun tp!2192659 () Bool)

(declare-fun tp!2192657 () Bool)

(assert (=> b!7538515 (= e!4491792 (and tp!2192659 tp!2192657))))

(assert (= (and b!7538097 ((_ is ElementMatch!19897) (regTwo!40307 r!24333))) b!7538514))

(assert (= (and b!7538097 ((_ is Concat!28742) (regTwo!40307 r!24333))) b!7538515))

(assert (= (and b!7538097 ((_ is Star!19897) (regTwo!40307 r!24333))) b!7538516))

(assert (= (and b!7538097 ((_ is Union!19897) (regTwo!40307 r!24333))) b!7538517))

(declare-fun b!7538525 () Bool)

(declare-fun e!4491795 () Bool)

(declare-fun tp!2192666 () Bool)

(declare-fun tp!2192663 () Bool)

(assert (=> b!7538525 (= e!4491795 (and tp!2192666 tp!2192663))))

(declare-fun b!7538522 () Bool)

(assert (=> b!7538522 (= e!4491795 tp_is_empty!50149)))

(declare-fun b!7538524 () Bool)

(declare-fun tp!2192665 () Bool)

(assert (=> b!7538524 (= e!4491795 tp!2192665)))

(assert (=> b!7538113 (= tp!2192597 e!4491795)))

(declare-fun b!7538523 () Bool)

(declare-fun tp!2192664 () Bool)

(declare-fun tp!2192662 () Bool)

(assert (=> b!7538523 (= e!4491795 (and tp!2192664 tp!2192662))))

(assert (= (and b!7538113 ((_ is ElementMatch!19897) (reg!20226 baseR!101))) b!7538522))

(assert (= (and b!7538113 ((_ is Concat!28742) (reg!20226 baseR!101))) b!7538523))

(assert (= (and b!7538113 ((_ is Star!19897) (reg!20226 baseR!101))) b!7538524))

(assert (= (and b!7538113 ((_ is Union!19897) (reg!20226 baseR!101))) b!7538525))

(declare-fun b!7538526 () Bool)

(declare-fun e!4491796 () Bool)

(declare-fun tp!2192667 () Bool)

(assert (=> b!7538526 (= e!4491796 (and tp_is_empty!50149 tp!2192667))))

(assert (=> b!7538116 (= tp!2192605 e!4491796)))

(assert (= (and b!7538116 ((_ is Cons!72656) (t!387487 knownP!30))) b!7538526))

(declare-fun b!7538530 () Bool)

(declare-fun e!4491797 () Bool)

(declare-fun tp!2192672 () Bool)

(declare-fun tp!2192669 () Bool)

(assert (=> b!7538530 (= e!4491797 (and tp!2192672 tp!2192669))))

(declare-fun b!7538527 () Bool)

(assert (=> b!7538527 (= e!4491797 tp_is_empty!50149)))

(declare-fun b!7538529 () Bool)

(declare-fun tp!2192671 () Bool)

(assert (=> b!7538529 (= e!4491797 tp!2192671)))

(assert (=> b!7538101 (= tp!2192600 e!4491797)))

(declare-fun b!7538528 () Bool)

(declare-fun tp!2192670 () Bool)

(declare-fun tp!2192668 () Bool)

(assert (=> b!7538528 (= e!4491797 (and tp!2192670 tp!2192668))))

(assert (= (and b!7538101 ((_ is ElementMatch!19897) (reg!20226 r!24333))) b!7538527))

(assert (= (and b!7538101 ((_ is Concat!28742) (reg!20226 r!24333))) b!7538528))

(assert (= (and b!7538101 ((_ is Star!19897) (reg!20226 r!24333))) b!7538529))

(assert (= (and b!7538101 ((_ is Union!19897) (reg!20226 r!24333))) b!7538530))

(check-sat (not b!7538406) (not bm!691504) (not b!7538230) (not b!7538349) (not b!7538231) (not b!7538291) (not b!7538443) (not b!7538346) (not b!7538499) (not b!7538529) (not b!7538496) (not b!7538128) (not d!2310796) (not b!7538444) (not bm!691523) (not b!7538354) (not b!7538413) (not b!7538348) (not d!2310794) (not b!7538461) (not b!7538506) (not b!7538530) (not d!2310734) (not d!2310774) (not b!7538292) (not b!7538353) (not b!7538483) (not b!7538524) (not d!2310736) (not b!7538287) (not b!7538347) (not bm!691498) (not d!2310732) (not b!7538487) (not b!7538226) (not d!2310792) (not b!7538495) (not b!7538410) (not d!2310812) (not b!7538504) (not b!7538315) (not b!7538498) (not d!2310758) (not b!7538528) (not d!2310728) (not b!7538507) (not bm!691496) (not b!7538134) (not b!7538512) (not b!7538239) (not d!2310752) (not b!7538437) (not bm!691527) (not b!7538317) (not b!7538283) (not b!7538513) (not b!7538505) (not d!2310744) (not b!7538486) (not b!7538428) (not b!7538262) (not b!7538435) (not b!7538337) (not d!2310810) (not bm!691511) (not b!7538140) (not b!7538441) (not b!7538511) (not d!2310754) (not b!7538525) (not b!7538411) (not b!7538482) (not b!7538352) (not d!2310740) (not bm!691509) (not b!7538284) (not b!7538359) (not b!7538516) (not b!7538288) (not b!7538344) (not b!7538466) (not d!2310782) (not b!7538491) (not b!7538500) (not b!7538407) (not b!7538442) (not b!7538451) (not b!7538342) (not b!7538517) (not d!2310748) (not d!2310768) (not b!7538229) (not d!2310790) (not b!7538127) (not b!7538312) (not d!2310804) (not b!7538285) (not b!7538438) (not b!7538523) (not b!7538526) (not b!7538494) (not b!7538343) (not b!7538492) (not b!7538133) (not d!2310756) (not b!7538185) (not b!7538515) (not b!7538404) (not b!7538488) tp_is_empty!50149 (not bm!691521) (not b!7538232) (not d!2310778) (not b!7538490) (not b!7538316) (not b!7538139) (not b!7538484) (not d!2310780))
(check-sat)
