; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729952 () Bool)

(assert start!729952)

(declare-fun b!7548971 () Bool)

(declare-fun res!3025681 () Bool)

(declare-fun e!4496948 () Bool)

(assert (=> b!7548971 (=> res!3025681 e!4496948)))

(declare-datatypes ((C!40204 0))(
  ( (C!40205 (val!30542 Int)) )
))
(declare-datatypes ((Regex!19939 0))(
  ( (ElementMatch!19939 (c!1393406 C!40204)) (Concat!28784 (regOne!40390 Regex!19939) (regTwo!40390 Regex!19939)) (EmptyExpr!19939) (Star!19939 (reg!20268 Regex!19939)) (EmptyLang!19939) (Union!19939 (regOne!40391 Regex!19939) (regTwo!40391 Regex!19939)) )
))
(declare-fun r!24333 () Regex!19939)

(declare-fun lostCause!1731 (Regex!19939) Bool)

(assert (=> b!7548971 (= res!3025681 (lostCause!1731 r!24333))))

(declare-fun b!7548972 () Bool)

(declare-fun e!4496954 () Bool)

(declare-fun tp_is_empty!50233 () Bool)

(assert (=> b!7548972 (= e!4496954 tp_is_empty!50233)))

(declare-fun b!7548973 () Bool)

(declare-fun res!3025682 () Bool)

(assert (=> b!7548973 (=> res!3025682 e!4496948)))

(declare-fun baseR!101 () Regex!19939)

(declare-datatypes ((List!72822 0))(
  ( (Nil!72698) (Cons!72698 (h!79146 C!40204) (t!387539 List!72822)) )
))
(declare-fun testedP!423 () List!72822)

(declare-fun derivative!471 (Regex!19939 List!72822) Regex!19939)

(assert (=> b!7548973 (= res!3025682 (not (= (derivative!471 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7548974 () Bool)

(declare-fun e!4496947 () Bool)

(declare-fun tp!2196058 () Bool)

(assert (=> b!7548974 (= e!4496947 (and tp_is_empty!50233 tp!2196058))))

(declare-fun b!7548975 () Bool)

(declare-fun e!4496955 () Bool)

(declare-fun e!4496949 () Bool)

(assert (=> b!7548975 (= e!4496955 e!4496949)))

(declare-fun res!3025685 () Bool)

(assert (=> b!7548975 (=> (not res!3025685) (not e!4496949))))

(declare-fun lt!2646172 () Int)

(declare-fun lt!2646166 () Int)

(assert (=> b!7548975 (= res!3025685 (>= lt!2646172 lt!2646166))))

(declare-fun size!42435 (List!72822) Int)

(assert (=> b!7548975 (= lt!2646166 (size!42435 testedP!423))))

(declare-fun knownP!30 () List!72822)

(assert (=> b!7548975 (= lt!2646172 (size!42435 knownP!30))))

(declare-fun b!7548976 () Bool)

(declare-fun e!4496951 () Bool)

(assert (=> b!7548976 (= e!4496951 tp_is_empty!50233)))

(declare-fun b!7548977 () Bool)

(declare-fun tp!2196054 () Bool)

(declare-fun tp!2196065 () Bool)

(assert (=> b!7548977 (= e!4496951 (and tp!2196054 tp!2196065))))

(declare-fun b!7548979 () Bool)

(declare-fun res!3025692 () Bool)

(declare-fun e!4496953 () Bool)

(assert (=> b!7548979 (=> res!3025692 e!4496953)))

(declare-fun lt!2646168 () List!72822)

(declare-fun input!7874 () List!72822)

(declare-fun ++!17455 (List!72822 List!72822) List!72822)

(assert (=> b!7548979 (= res!3025692 (not (= (++!17455 testedP!423 lt!2646168) input!7874)))))

(declare-fun b!7548980 () Bool)

(declare-fun tp!2196059 () Bool)

(declare-fun tp!2196061 () Bool)

(assert (=> b!7548980 (= e!4496954 (and tp!2196059 tp!2196061))))

(declare-fun b!7548981 () Bool)

(declare-fun res!3025689 () Bool)

(assert (=> b!7548981 (=> res!3025689 e!4496948)))

(assert (=> b!7548981 (= res!3025689 (= lt!2646166 lt!2646172))))

(declare-fun b!7548982 () Bool)

(declare-fun res!3025684 () Bool)

(assert (=> b!7548982 (=> (not res!3025684) (not e!4496955))))

(declare-fun validRegex!10367 (Regex!19939) Bool)

(assert (=> b!7548982 (= res!3025684 (validRegex!10367 r!24333))))

(declare-fun b!7548983 () Bool)

(declare-fun e!4496950 () Bool)

(declare-fun tp!2196053 () Bool)

(assert (=> b!7548983 (= e!4496950 (and tp_is_empty!50233 tp!2196053))))

(declare-fun b!7548984 () Bool)

(declare-fun e!4496952 () Bool)

(assert (=> b!7548984 (= e!4496948 e!4496952)))

(declare-fun res!3025691 () Bool)

(assert (=> b!7548984 (=> res!3025691 e!4496952)))

(declare-fun lt!2646171 () List!72822)

(assert (=> b!7548984 (= res!3025691 (not (= (++!17455 knownP!30 lt!2646171) input!7874)))))

(declare-fun getSuffix!3625 (List!72822 List!72822) List!72822)

(assert (=> b!7548984 (= lt!2646171 (getSuffix!3625 input!7874 knownP!30))))

(declare-fun lt!2646165 () List!72822)

(declare-fun lt!2646164 () List!72822)

(assert (=> b!7548984 (= lt!2646165 (getSuffix!3625 knownP!30 lt!2646164))))

(declare-fun isPrefix!6145 (List!72822 List!72822) Bool)

(assert (=> b!7548984 (isPrefix!6145 lt!2646164 knownP!30)))

(declare-datatypes ((Unit!166816 0))(
  ( (Unit!166817) )
))
(declare-fun lt!2646173 () Unit!166816)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!895 (List!72822 List!72822 List!72822) Unit!166816)

(assert (=> b!7548984 (= lt!2646173 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!895 knownP!30 lt!2646164 input!7874))))

(declare-fun lt!2646170 () C!40204)

(declare-fun derivativeStep!5729 (Regex!19939 C!40204) Regex!19939)

(assert (=> b!7548984 (= (derivative!471 baseR!101 lt!2646164) (derivativeStep!5729 r!24333 lt!2646170))))

(declare-fun lt!2646163 () Unit!166816)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!173 (Regex!19939 Regex!19939 List!72822 C!40204) Unit!166816)

(assert (=> b!7548984 (= lt!2646163 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!173 baseR!101 r!24333 testedP!423 lt!2646170))))

(assert (=> b!7548984 (isPrefix!6145 lt!2646164 input!7874)))

(declare-fun lt!2646175 () Unit!166816)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1206 (List!72822 List!72822) Unit!166816)

(assert (=> b!7548984 (= lt!2646175 (lemmaAddHeadSuffixToPrefixStillPrefix!1206 testedP!423 input!7874))))

(assert (=> b!7548984 (= lt!2646164 (++!17455 testedP!423 (Cons!72698 lt!2646170 Nil!72698)))))

(declare-fun head!15529 (List!72822) C!40204)

(assert (=> b!7548984 (= lt!2646170 (head!15529 lt!2646168))))

(assert (=> b!7548984 (= lt!2646168 (getSuffix!3625 input!7874 testedP!423))))

(declare-fun b!7548985 () Bool)

(assert (=> b!7548985 (= e!4496952 e!4496953)))

(declare-fun res!3025693 () Bool)

(assert (=> b!7548985 (=> res!3025693 e!4496953)))

(declare-fun lt!2646176 () List!72822)

(assert (=> b!7548985 (= res!3025693 (not (= lt!2646176 input!7874)))))

(declare-fun lt!2646162 () List!72822)

(assert (=> b!7548985 (= lt!2646176 (++!17455 (++!17455 testedP!423 lt!2646162) lt!2646171))))

(declare-fun b!7548986 () Bool)

(declare-fun res!3025686 () Bool)

(assert (=> b!7548986 (=> (not res!3025686) (not e!4496955))))

(assert (=> b!7548986 (= res!3025686 (isPrefix!6145 testedP!423 input!7874))))

(declare-fun b!7548987 () Bool)

(declare-fun e!4496946 () Bool)

(declare-fun tp!2196063 () Bool)

(assert (=> b!7548987 (= e!4496946 (and tp_is_empty!50233 tp!2196063))))

(declare-fun b!7548988 () Bool)

(declare-fun tp!2196056 () Bool)

(assert (=> b!7548988 (= e!4496951 tp!2196056)))

(declare-fun b!7548989 () Bool)

(declare-fun tp!2196055 () Bool)

(declare-fun tp!2196057 () Bool)

(assert (=> b!7548989 (= e!4496951 (and tp!2196055 tp!2196057))))

(declare-fun b!7548990 () Bool)

(declare-fun tp!2196062 () Bool)

(declare-fun tp!2196060 () Bool)

(assert (=> b!7548990 (= e!4496954 (and tp!2196062 tp!2196060))))

(declare-fun b!7548991 () Bool)

(declare-fun res!3025694 () Bool)

(assert (=> b!7548991 (=> res!3025694 e!4496948)))

(assert (=> b!7548991 (= res!3025694 (>= lt!2646166 (size!42435 input!7874)))))

(declare-fun b!7548992 () Bool)

(declare-fun res!3025687 () Bool)

(assert (=> b!7548992 (=> (not res!3025687) (not e!4496949))))

(declare-fun matchR!9541 (Regex!19939 List!72822) Bool)

(assert (=> b!7548992 (= res!3025687 (matchR!9541 baseR!101 knownP!30))))

(declare-fun b!7548978 () Bool)

(declare-fun tp!2196064 () Bool)

(assert (=> b!7548978 (= e!4496954 tp!2196064)))

(declare-fun res!3025688 () Bool)

(assert (=> start!729952 (=> (not res!3025688) (not e!4496955))))

(assert (=> start!729952 (= res!3025688 (validRegex!10367 baseR!101))))

(assert (=> start!729952 e!4496955))

(assert (=> start!729952 e!4496954))

(assert (=> start!729952 e!4496947))

(assert (=> start!729952 e!4496946))

(assert (=> start!729952 e!4496950))

(assert (=> start!729952 e!4496951))

(declare-fun b!7548993 () Bool)

(declare-fun res!3025683 () Bool)

(assert (=> b!7548993 (=> (not res!3025683) (not e!4496955))))

(assert (=> b!7548993 (= res!3025683 (isPrefix!6145 knownP!30 input!7874))))

(declare-fun b!7548994 () Bool)

(declare-fun lt!2646169 () List!72822)

(assert (=> b!7548994 (= e!4496953 (= lt!2646169 input!7874))))

(assert (=> b!7548994 (= lt!2646176 lt!2646169)))

(assert (=> b!7548994 (= lt!2646169 (++!17455 testedP!423 (++!17455 lt!2646162 lt!2646171)))))

(declare-fun lt!2646174 () Unit!166816)

(declare-fun lemmaConcatAssociativity!3094 (List!72822 List!72822 List!72822) Unit!166816)

(assert (=> b!7548994 (= lt!2646174 (lemmaConcatAssociativity!3094 testedP!423 lt!2646162 lt!2646171))))

(declare-fun b!7548995 () Bool)

(assert (=> b!7548995 (= e!4496949 (not e!4496948))))

(declare-fun res!3025690 () Bool)

(assert (=> b!7548995 (=> res!3025690 e!4496948)))

(assert (=> b!7548995 (= res!3025690 (not (matchR!9541 r!24333 lt!2646162)))))

(assert (=> b!7548995 (= lt!2646162 (getSuffix!3625 knownP!30 testedP!423))))

(assert (=> b!7548995 (isPrefix!6145 testedP!423 knownP!30)))

(declare-fun lt!2646167 () Unit!166816)

(assert (=> b!7548995 (= lt!2646167 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!895 knownP!30 testedP!423 input!7874))))

(assert (= (and start!729952 res!3025688) b!7548982))

(assert (= (and b!7548982 res!3025684) b!7548986))

(assert (= (and b!7548986 res!3025686) b!7548993))

(assert (= (and b!7548993 res!3025683) b!7548975))

(assert (= (and b!7548975 res!3025685) b!7548992))

(assert (= (and b!7548992 res!3025687) b!7548995))

(assert (= (and b!7548995 (not res!3025690)) b!7548973))

(assert (= (and b!7548973 (not res!3025682)) b!7548971))

(assert (= (and b!7548971 (not res!3025681)) b!7548981))

(assert (= (and b!7548981 (not res!3025689)) b!7548991))

(assert (= (and b!7548991 (not res!3025694)) b!7548984))

(assert (= (and b!7548984 (not res!3025691)) b!7548985))

(assert (= (and b!7548985 (not res!3025693)) b!7548979))

(assert (= (and b!7548979 (not res!3025692)) b!7548994))

(get-info :version)

(assert (= (and start!729952 ((_ is ElementMatch!19939) baseR!101)) b!7548972))

(assert (= (and start!729952 ((_ is Concat!28784) baseR!101)) b!7548980))

(assert (= (and start!729952 ((_ is Star!19939) baseR!101)) b!7548978))

(assert (= (and start!729952 ((_ is Union!19939) baseR!101)) b!7548990))

(assert (= (and start!729952 ((_ is Cons!72698) input!7874)) b!7548974))

(assert (= (and start!729952 ((_ is Cons!72698) knownP!30)) b!7548987))

(assert (= (and start!729952 ((_ is Cons!72698) testedP!423)) b!7548983))

(assert (= (and start!729952 ((_ is ElementMatch!19939) r!24333)) b!7548976))

(assert (= (and start!729952 ((_ is Concat!28784) r!24333)) b!7548977))

(assert (= (and start!729952 ((_ is Star!19939) r!24333)) b!7548988))

(assert (= (and start!729952 ((_ is Union!19939) r!24333)) b!7548989))

(declare-fun m!8116360 () Bool)

(assert (=> b!7548984 m!8116360))

(declare-fun m!8116362 () Bool)

(assert (=> b!7548984 m!8116362))

(declare-fun m!8116364 () Bool)

(assert (=> b!7548984 m!8116364))

(declare-fun m!8116366 () Bool)

(assert (=> b!7548984 m!8116366))

(declare-fun m!8116368 () Bool)

(assert (=> b!7548984 m!8116368))

(declare-fun m!8116370 () Bool)

(assert (=> b!7548984 m!8116370))

(declare-fun m!8116372 () Bool)

(assert (=> b!7548984 m!8116372))

(declare-fun m!8116374 () Bool)

(assert (=> b!7548984 m!8116374))

(declare-fun m!8116376 () Bool)

(assert (=> b!7548984 m!8116376))

(declare-fun m!8116378 () Bool)

(assert (=> b!7548984 m!8116378))

(declare-fun m!8116380 () Bool)

(assert (=> b!7548984 m!8116380))

(declare-fun m!8116382 () Bool)

(assert (=> b!7548984 m!8116382))

(declare-fun m!8116384 () Bool)

(assert (=> b!7548984 m!8116384))

(declare-fun m!8116386 () Bool)

(assert (=> b!7548992 m!8116386))

(declare-fun m!8116388 () Bool)

(assert (=> b!7548975 m!8116388))

(declare-fun m!8116390 () Bool)

(assert (=> b!7548975 m!8116390))

(declare-fun m!8116392 () Bool)

(assert (=> b!7548993 m!8116392))

(declare-fun m!8116394 () Bool)

(assert (=> b!7548979 m!8116394))

(declare-fun m!8116396 () Bool)

(assert (=> b!7548985 m!8116396))

(assert (=> b!7548985 m!8116396))

(declare-fun m!8116398 () Bool)

(assert (=> b!7548985 m!8116398))

(declare-fun m!8116400 () Bool)

(assert (=> b!7548971 m!8116400))

(declare-fun m!8116402 () Bool)

(assert (=> b!7548986 m!8116402))

(declare-fun m!8116404 () Bool)

(assert (=> b!7548991 m!8116404))

(declare-fun m!8116406 () Bool)

(assert (=> start!729952 m!8116406))

(declare-fun m!8116408 () Bool)

(assert (=> b!7548973 m!8116408))

(declare-fun m!8116410 () Bool)

(assert (=> b!7548994 m!8116410))

(assert (=> b!7548994 m!8116410))

(declare-fun m!8116412 () Bool)

(assert (=> b!7548994 m!8116412))

(declare-fun m!8116414 () Bool)

(assert (=> b!7548994 m!8116414))

(declare-fun m!8116416 () Bool)

(assert (=> b!7548995 m!8116416))

(declare-fun m!8116418 () Bool)

(assert (=> b!7548995 m!8116418))

(declare-fun m!8116420 () Bool)

(assert (=> b!7548995 m!8116420))

(declare-fun m!8116422 () Bool)

(assert (=> b!7548995 m!8116422))

(declare-fun m!8116424 () Bool)

(assert (=> b!7548982 m!8116424))

(check-sat (not b!7548973) (not b!7548982) (not b!7548993) (not b!7548984) (not b!7548980) (not b!7548995) (not b!7548986) (not b!7548974) (not start!729952) (not b!7548990) (not b!7548977) (not b!7548983) (not b!7548975) (not b!7548988) (not b!7548979) (not b!7548971) tp_is_empty!50233 (not b!7548994) (not b!7548987) (not b!7548992) (not b!7548989) (not b!7548978) (not b!7548985) (not b!7548991))
(check-sat)
