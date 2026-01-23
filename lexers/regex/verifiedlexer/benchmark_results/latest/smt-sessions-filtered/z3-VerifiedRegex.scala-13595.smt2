; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730852 () Bool)

(assert start!730852)

(declare-fun b!7566189 () Bool)

(declare-fun res!3031387 () Bool)

(declare-fun e!4505022 () Bool)

(assert (=> b!7566189 (=> res!3031387 e!4505022)))

(declare-datatypes ((C!40296 0))(
  ( (C!40297 (val!30588 Int)) )
))
(declare-datatypes ((List!72868 0))(
  ( (Nil!72744) (Cons!72744 (h!79192 C!40296) (t!387601 List!72868)) )
))
(declare-fun lt!2650108 () List!72868)

(declare-fun knownP!30 () List!72868)

(assert (=> b!7566189 (= res!3031387 (not (= lt!2650108 knownP!30)))))

(declare-fun b!7566190 () Bool)

(declare-fun res!3031384 () Bool)

(declare-fun e!4505015 () Bool)

(assert (=> b!7566190 (=> (not res!3031384) (not e!4505015))))

(declare-datatypes ((Regex!19985 0))(
  ( (ElementMatch!19985 (c!1396094 C!40296)) (Concat!28830 (regOne!40482 Regex!19985) (regTwo!40482 Regex!19985)) (EmptyExpr!19985) (Star!19985 (reg!20314 Regex!19985)) (EmptyLang!19985) (Union!19985 (regOne!40483 Regex!19985) (regTwo!40483 Regex!19985)) )
))
(declare-fun r!24333 () Regex!19985)

(declare-fun validRegex!10413 (Regex!19985) Bool)

(assert (=> b!7566190 (= res!3031384 (validRegex!10413 r!24333))))

(declare-fun b!7566191 () Bool)

(declare-fun e!4505019 () Bool)

(declare-fun tp!2203681 () Bool)

(assert (=> b!7566191 (= e!4505019 tp!2203681)))

(declare-fun b!7566192 () Bool)

(declare-fun e!4505024 () Bool)

(declare-fun tp!2203679 () Bool)

(assert (=> b!7566192 (= e!4505024 tp!2203679)))

(declare-fun b!7566193 () Bool)

(declare-fun e!4505026 () Bool)

(declare-fun e!4505021 () Bool)

(assert (=> b!7566193 (= e!4505026 e!4505021)))

(declare-fun res!3031393 () Bool)

(assert (=> b!7566193 (=> res!3031393 e!4505021)))

(declare-fun lt!2650112 () List!72868)

(declare-fun input!7874 () List!72868)

(assert (=> b!7566193 (= res!3031393 (not (= lt!2650112 input!7874)))))

(declare-fun lt!2650116 () List!72868)

(declare-fun ++!17489 (List!72868 List!72868) List!72868)

(assert (=> b!7566193 (= lt!2650112 (++!17489 lt!2650108 lt!2650116))))

(declare-fun testedP!423 () List!72868)

(declare-fun lt!2650099 () List!72868)

(assert (=> b!7566193 (= lt!2650108 (++!17489 testedP!423 lt!2650099))))

(declare-fun res!3031391 () Bool)

(assert (=> start!730852 (=> (not res!3031391) (not e!4505015))))

(declare-fun baseR!101 () Regex!19985)

(assert (=> start!730852 (= res!3031391 (validRegex!10413 baseR!101))))

(assert (=> start!730852 e!4505015))

(assert (=> start!730852 e!4505024))

(declare-fun e!4505029 () Bool)

(assert (=> start!730852 e!4505029))

(declare-fun e!4505027 () Bool)

(assert (=> start!730852 e!4505027))

(declare-fun e!4505017 () Bool)

(assert (=> start!730852 e!4505017))

(assert (=> start!730852 e!4505019))

(declare-fun b!7566194 () Bool)

(declare-fun tp!2203683 () Bool)

(declare-fun tp!2203688 () Bool)

(assert (=> b!7566194 (= e!4505024 (and tp!2203683 tp!2203688))))

(declare-fun b!7566195 () Bool)

(declare-fun tp!2203684 () Bool)

(declare-fun tp!2203678 () Bool)

(assert (=> b!7566195 (= e!4505019 (and tp!2203684 tp!2203678))))

(declare-fun b!7566196 () Bool)

(declare-fun res!3031396 () Bool)

(assert (=> b!7566196 (=> (not res!3031396) (not e!4505015))))

(declare-fun isPrefix!6191 (List!72868 List!72868) Bool)

(assert (=> b!7566196 (= res!3031396 (isPrefix!6191 testedP!423 input!7874))))

(declare-fun b!7566197 () Bool)

(declare-fun e!4505014 () Bool)

(declare-fun e!4505020 () Bool)

(assert (=> b!7566197 (= e!4505014 e!4505020)))

(declare-fun res!3031395 () Bool)

(assert (=> b!7566197 (=> res!3031395 e!4505020)))

(declare-fun lt!2650113 () List!72868)

(declare-fun lt!2650107 () List!72868)

(assert (=> b!7566197 (= res!3031395 (not (= lt!2650113 lt!2650107)))))

(declare-fun lt!2650104 () List!72868)

(assert (=> b!7566197 (= lt!2650104 lt!2650099)))

(declare-datatypes ((Unit!166904 0))(
  ( (Unit!166905) )
))
(declare-fun lt!2650096 () Unit!166904)

(declare-fun lemmaSamePrefixThenSameSuffix!2891 (List!72868 List!72868 List!72868 List!72868 List!72868) Unit!166904)

(assert (=> b!7566197 (= lt!2650096 (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650104 testedP!423 lt!2650099 knownP!30))))

(declare-fun lt!2650091 () List!72868)

(assert (=> b!7566197 (= lt!2650091 (++!17489 testedP!423 lt!2650104))))

(declare-fun lt!2650098 () List!72868)

(assert (=> b!7566197 (= lt!2650104 (++!17489 lt!2650098 lt!2650107))))

(declare-fun lt!2650103 () Unit!166904)

(declare-fun lemmaConcatAssociativity!3124 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> b!7566197 (= lt!2650103 (lemmaConcatAssociativity!3124 testedP!423 lt!2650098 lt!2650107))))

(declare-fun lt!2650111 () Int)

(declare-fun lt!2650115 () List!72868)

(declare-fun lt!2650097 () Int)

(declare-fun lt!2650110 () Int)

(declare-fun b!7566198 () Bool)

(declare-fun size!42481 (List!72868) Int)

(declare-datatypes ((tuple2!68864 0))(
  ( (tuple2!68865 (_1!37735 List!72868) (_2!37735 List!72868)) )
))
(declare-fun findLongestMatchInner!2140 (Regex!19985 List!72868 Int List!72868 List!72868 Int) tuple2!68864)

(assert (=> b!7566198 (= e!4505020 (>= (size!42481 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110))) lt!2650097))))

(declare-fun lt!2650106 () Regex!19985)

(declare-fun lt!2650100 () List!72868)

(declare-fun getSuffix!3669 (List!72868 List!72868) List!72868)

(assert (=> b!7566198 (>= (size!42481 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110))) lt!2650097)))

(declare-fun lt!2650093 () Unit!166904)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!29 (Regex!19985 Regex!19985 List!72868 List!72868 List!72868) Unit!166904)

(assert (=> b!7566198 (= lt!2650093 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!29 baseR!101 lt!2650106 input!7874 lt!2650100 knownP!30))))

(declare-fun b!7566199 () Bool)

(declare-fun res!3031383 () Bool)

(declare-fun e!4505018 () Bool)

(assert (=> b!7566199 (=> res!3031383 e!4505018)))

(declare-fun lostCause!1773 (Regex!19985) Bool)

(assert (=> b!7566199 (= res!3031383 (lostCause!1773 r!24333))))

(declare-fun b!7566200 () Bool)

(declare-fun e!4505025 () Bool)

(assert (=> b!7566200 (= e!4505021 e!4505025)))

(declare-fun res!3031398 () Bool)

(assert (=> b!7566200 (=> res!3031398 e!4505025)))

(declare-fun lt!2650094 () List!72868)

(assert (=> b!7566200 (= res!3031398 (not (= lt!2650094 input!7874)))))

(assert (=> b!7566200 (= lt!2650112 lt!2650094)))

(declare-fun lt!2650101 () List!72868)

(assert (=> b!7566200 (= lt!2650094 (++!17489 testedP!423 lt!2650101))))

(assert (=> b!7566200 (= lt!2650101 (++!17489 lt!2650099 lt!2650116))))

(declare-fun lt!2650092 () Unit!166904)

(assert (=> b!7566200 (= lt!2650092 (lemmaConcatAssociativity!3124 testedP!423 lt!2650099 lt!2650116))))

(declare-fun b!7566201 () Bool)

(declare-fun res!3031392 () Bool)

(declare-fun e!4505023 () Bool)

(assert (=> b!7566201 (=> (not res!3031392) (not e!4505023))))

(declare-fun matchR!9587 (Regex!19985 List!72868) Bool)

(assert (=> b!7566201 (= res!3031392 (matchR!9587 baseR!101 knownP!30))))

(declare-fun b!7566202 () Bool)

(declare-fun e!4505028 () Bool)

(assert (=> b!7566202 (= e!4505028 e!4505026)))

(declare-fun res!3031397 () Bool)

(assert (=> b!7566202 (=> res!3031397 e!4505026)))

(assert (=> b!7566202 (= res!3031397 (not (= (++!17489 knownP!30 lt!2650116) input!7874)))))

(assert (=> b!7566202 (= lt!2650116 (getSuffix!3669 input!7874 knownP!30))))

(assert (=> b!7566202 (= lt!2650107 (getSuffix!3669 knownP!30 lt!2650100))))

(assert (=> b!7566202 (isPrefix!6191 lt!2650100 knownP!30)))

(declare-fun lt!2650089 () Unit!166904)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!939 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> b!7566202 (= lt!2650089 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!939 knownP!30 lt!2650100 input!7874))))

(declare-fun lt!2650114 () Regex!19985)

(assert (=> b!7566202 (= lt!2650114 lt!2650106)))

(declare-fun lt!2650090 () C!40296)

(declare-fun derivativeStep!5763 (Regex!19985 C!40296) Regex!19985)

(assert (=> b!7566202 (= lt!2650106 (derivativeStep!5763 r!24333 lt!2650090))))

(declare-fun derivative!515 (Regex!19985 List!72868) Regex!19985)

(assert (=> b!7566202 (= lt!2650114 (derivative!515 baseR!101 lt!2650100))))

(declare-fun lt!2650102 () Unit!166904)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!207 (Regex!19985 Regex!19985 List!72868 C!40296) Unit!166904)

(assert (=> b!7566202 (= lt!2650102 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!207 baseR!101 r!24333 testedP!423 lt!2650090))))

(assert (=> b!7566202 (isPrefix!6191 lt!2650100 input!7874)))

(declare-fun lt!2650109 () Unit!166904)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1240 (List!72868 List!72868) Unit!166904)

(assert (=> b!7566202 (= lt!2650109 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 testedP!423 input!7874))))

(assert (=> b!7566202 (= lt!2650100 (++!17489 testedP!423 lt!2650098))))

(assert (=> b!7566202 (= lt!2650098 (Cons!72744 lt!2650090 Nil!72744))))

(declare-fun head!15563 (List!72868) C!40296)

(assert (=> b!7566202 (= lt!2650090 (head!15563 lt!2650115))))

(assert (=> b!7566202 (= lt!2650115 (getSuffix!3669 input!7874 testedP!423))))

(declare-fun b!7566203 () Bool)

(declare-fun e!4505016 () Bool)

(assert (=> b!7566203 (= e!4505025 e!4505016)))

(declare-fun res!3031394 () Bool)

(assert (=> b!7566203 (=> res!3031394 e!4505016)))

(assert (=> b!7566203 (= res!3031394 (not (= (head!15563 lt!2650099) lt!2650090)))))

(assert (=> b!7566203 (= lt!2650101 lt!2650115)))

(declare-fun lt!2650095 () Unit!166904)

(assert (=> b!7566203 (= lt!2650095 (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650101 testedP!423 lt!2650115 input!7874))))

(declare-fun b!7566204 () Bool)

(assert (=> b!7566204 (= e!4505016 e!4505022)))

(declare-fun res!3031390 () Bool)

(assert (=> b!7566204 (=> res!3031390 e!4505022)))

(declare-fun $colon$colon!3413 (List!72868 C!40296) List!72868)

(assert (=> b!7566204 (= res!3031390 (not (= lt!2650099 ($colon$colon!3413 lt!2650113 lt!2650090))))))

(declare-fun tail!15103 (List!72868) List!72868)

(assert (=> b!7566204 (= lt!2650113 (tail!15103 lt!2650099))))

(declare-fun b!7566205 () Bool)

(declare-fun tp_is_empty!50325 () Bool)

(declare-fun tp!2203686 () Bool)

(assert (=> b!7566205 (= e!4505017 (and tp_is_empty!50325 tp!2203686))))

(declare-fun b!7566206 () Bool)

(assert (=> b!7566206 (= e!4505024 tp_is_empty!50325)))

(declare-fun b!7566207 () Bool)

(declare-fun res!3031402 () Bool)

(assert (=> b!7566207 (=> (not res!3031402) (not e!4505015))))

(assert (=> b!7566207 (= res!3031402 (isPrefix!6191 knownP!30 input!7874))))

(declare-fun b!7566208 () Bool)

(assert (=> b!7566208 (= e!4505022 e!4505014)))

(declare-fun res!3031389 () Bool)

(assert (=> b!7566208 (=> res!3031389 e!4505014)))

(assert (=> b!7566208 (= res!3031389 (not (= lt!2650091 knownP!30)))))

(assert (=> b!7566208 (= lt!2650091 (++!17489 lt!2650100 lt!2650107))))

(declare-fun b!7566209 () Bool)

(declare-fun tp!2203680 () Bool)

(assert (=> b!7566209 (= e!4505029 (and tp_is_empty!50325 tp!2203680))))

(declare-fun b!7566210 () Bool)

(declare-fun res!3031401 () Bool)

(assert (=> b!7566210 (=> res!3031401 e!4505018)))

(assert (=> b!7566210 (= res!3031401 (= lt!2650111 lt!2650097))))

(declare-fun b!7566211 () Bool)

(assert (=> b!7566211 (= e!4505018 e!4505028)))

(declare-fun res!3031388 () Bool)

(assert (=> b!7566211 (=> res!3031388 e!4505028)))

(assert (=> b!7566211 (= res!3031388 (>= lt!2650111 lt!2650110))))

(assert (=> b!7566211 (= lt!2650110 (size!42481 input!7874))))

(declare-fun b!7566212 () Bool)

(declare-fun tp!2203687 () Bool)

(declare-fun tp!2203689 () Bool)

(assert (=> b!7566212 (= e!4505019 (and tp!2203687 tp!2203689))))

(declare-fun b!7566213 () Bool)

(assert (=> b!7566213 (= e!4505015 e!4505023)))

(declare-fun res!3031385 () Bool)

(assert (=> b!7566213 (=> (not res!3031385) (not e!4505023))))

(assert (=> b!7566213 (= res!3031385 (>= lt!2650097 lt!2650111))))

(assert (=> b!7566213 (= lt!2650111 (size!42481 testedP!423))))

(assert (=> b!7566213 (= lt!2650097 (size!42481 knownP!30))))

(declare-fun b!7566214 () Bool)

(declare-fun tp!2203685 () Bool)

(assert (=> b!7566214 (= e!4505027 (and tp_is_empty!50325 tp!2203685))))

(declare-fun b!7566215 () Bool)

(declare-fun tp!2203682 () Bool)

(declare-fun tp!2203677 () Bool)

(assert (=> b!7566215 (= e!4505024 (and tp!2203682 tp!2203677))))

(declare-fun b!7566216 () Bool)

(assert (=> b!7566216 (= e!4505019 tp_is_empty!50325)))

(declare-fun b!7566217 () Bool)

(declare-fun res!3031386 () Bool)

(assert (=> b!7566217 (=> res!3031386 e!4505021)))

(assert (=> b!7566217 (= res!3031386 (not (= (++!17489 testedP!423 lt!2650115) input!7874)))))

(declare-fun b!7566218 () Bool)

(assert (=> b!7566218 (= e!4505023 (not e!4505018))))

(declare-fun res!3031400 () Bool)

(assert (=> b!7566218 (=> res!3031400 e!4505018)))

(assert (=> b!7566218 (= res!3031400 (not (matchR!9587 r!24333 lt!2650099)))))

(assert (=> b!7566218 (= lt!2650099 (getSuffix!3669 knownP!30 testedP!423))))

(assert (=> b!7566218 (isPrefix!6191 testedP!423 knownP!30)))

(declare-fun lt!2650105 () Unit!166904)

(assert (=> b!7566218 (= lt!2650105 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!939 knownP!30 testedP!423 input!7874))))

(declare-fun b!7566219 () Bool)

(declare-fun res!3031399 () Bool)

(assert (=> b!7566219 (=> res!3031399 e!4505018)))

(assert (=> b!7566219 (= res!3031399 (not (= (derivative!515 baseR!101 testedP!423) r!24333)))))

(assert (= (and start!730852 res!3031391) b!7566190))

(assert (= (and b!7566190 res!3031384) b!7566196))

(assert (= (and b!7566196 res!3031396) b!7566207))

(assert (= (and b!7566207 res!3031402) b!7566213))

(assert (= (and b!7566213 res!3031385) b!7566201))

(assert (= (and b!7566201 res!3031392) b!7566218))

(assert (= (and b!7566218 (not res!3031400)) b!7566219))

(assert (= (and b!7566219 (not res!3031399)) b!7566199))

(assert (= (and b!7566199 (not res!3031383)) b!7566210))

(assert (= (and b!7566210 (not res!3031401)) b!7566211))

(assert (= (and b!7566211 (not res!3031388)) b!7566202))

(assert (= (and b!7566202 (not res!3031397)) b!7566193))

(assert (= (and b!7566193 (not res!3031393)) b!7566217))

(assert (= (and b!7566217 (not res!3031386)) b!7566200))

(assert (= (and b!7566200 (not res!3031398)) b!7566203))

(assert (= (and b!7566203 (not res!3031394)) b!7566204))

(assert (= (and b!7566204 (not res!3031390)) b!7566189))

(assert (= (and b!7566189 (not res!3031387)) b!7566208))

(assert (= (and b!7566208 (not res!3031389)) b!7566197))

(assert (= (and b!7566197 (not res!3031395)) b!7566198))

(get-info :version)

(assert (= (and start!730852 ((_ is ElementMatch!19985) baseR!101)) b!7566206))

(assert (= (and start!730852 ((_ is Concat!28830) baseR!101)) b!7566215))

(assert (= (and start!730852 ((_ is Star!19985) baseR!101)) b!7566192))

(assert (= (and start!730852 ((_ is Union!19985) baseR!101)) b!7566194))

(assert (= (and start!730852 ((_ is Cons!72744) input!7874)) b!7566209))

(assert (= (and start!730852 ((_ is Cons!72744) knownP!30)) b!7566214))

(assert (= (and start!730852 ((_ is Cons!72744) testedP!423)) b!7566205))

(assert (= (and start!730852 ((_ is ElementMatch!19985) r!24333)) b!7566216))

(assert (= (and start!730852 ((_ is Concat!28830) r!24333)) b!7566212))

(assert (= (and start!730852 ((_ is Star!19985) r!24333)) b!7566191))

(assert (= (and start!730852 ((_ is Union!19985) r!24333)) b!7566195))

(declare-fun m!8128472 () Bool)

(assert (=> b!7566213 m!8128472))

(declare-fun m!8128474 () Bool)

(assert (=> b!7566213 m!8128474))

(declare-fun m!8128476 () Bool)

(assert (=> b!7566211 m!8128476))

(declare-fun m!8128478 () Bool)

(assert (=> b!7566197 m!8128478))

(declare-fun m!8128480 () Bool)

(assert (=> b!7566197 m!8128480))

(declare-fun m!8128482 () Bool)

(assert (=> b!7566197 m!8128482))

(declare-fun m!8128484 () Bool)

(assert (=> b!7566197 m!8128484))

(declare-fun m!8128486 () Bool)

(assert (=> b!7566201 m!8128486))

(declare-fun m!8128488 () Bool)

(assert (=> b!7566207 m!8128488))

(declare-fun m!8128490 () Bool)

(assert (=> b!7566196 m!8128490))

(declare-fun m!8128492 () Bool)

(assert (=> b!7566208 m!8128492))

(declare-fun m!8128494 () Bool)

(assert (=> b!7566217 m!8128494))

(declare-fun m!8128496 () Bool)

(assert (=> b!7566204 m!8128496))

(declare-fun m!8128498 () Bool)

(assert (=> b!7566204 m!8128498))

(declare-fun m!8128500 () Bool)

(assert (=> b!7566218 m!8128500))

(declare-fun m!8128502 () Bool)

(assert (=> b!7566218 m!8128502))

(declare-fun m!8128504 () Bool)

(assert (=> b!7566218 m!8128504))

(declare-fun m!8128506 () Bool)

(assert (=> b!7566218 m!8128506))

(declare-fun m!8128508 () Bool)

(assert (=> b!7566193 m!8128508))

(declare-fun m!8128510 () Bool)

(assert (=> b!7566193 m!8128510))

(declare-fun m!8128512 () Bool)

(assert (=> b!7566203 m!8128512))

(declare-fun m!8128514 () Bool)

(assert (=> b!7566203 m!8128514))

(declare-fun m!8128516 () Bool)

(assert (=> b!7566199 m!8128516))

(declare-fun m!8128518 () Bool)

(assert (=> start!730852 m!8128518))

(declare-fun m!8128520 () Bool)

(assert (=> b!7566200 m!8128520))

(declare-fun m!8128522 () Bool)

(assert (=> b!7566200 m!8128522))

(declare-fun m!8128524 () Bool)

(assert (=> b!7566200 m!8128524))

(declare-fun m!8128526 () Bool)

(assert (=> b!7566190 m!8128526))

(declare-fun m!8128528 () Bool)

(assert (=> b!7566198 m!8128528))

(declare-fun m!8128530 () Bool)

(assert (=> b!7566198 m!8128530))

(declare-fun m!8128532 () Bool)

(assert (=> b!7566198 m!8128532))

(declare-fun m!8128534 () Bool)

(assert (=> b!7566198 m!8128534))

(declare-fun m!8128536 () Bool)

(assert (=> b!7566198 m!8128536))

(declare-fun m!8128538 () Bool)

(assert (=> b!7566198 m!8128538))

(assert (=> b!7566198 m!8128538))

(assert (=> b!7566198 m!8128530))

(declare-fun m!8128540 () Bool)

(assert (=> b!7566198 m!8128540))

(declare-fun m!8128542 () Bool)

(assert (=> b!7566202 m!8128542))

(declare-fun m!8128544 () Bool)

(assert (=> b!7566202 m!8128544))

(declare-fun m!8128546 () Bool)

(assert (=> b!7566202 m!8128546))

(declare-fun m!8128548 () Bool)

(assert (=> b!7566202 m!8128548))

(declare-fun m!8128550 () Bool)

(assert (=> b!7566202 m!8128550))

(declare-fun m!8128552 () Bool)

(assert (=> b!7566202 m!8128552))

(declare-fun m!8128554 () Bool)

(assert (=> b!7566202 m!8128554))

(declare-fun m!8128556 () Bool)

(assert (=> b!7566202 m!8128556))

(declare-fun m!8128558 () Bool)

(assert (=> b!7566202 m!8128558))

(declare-fun m!8128560 () Bool)

(assert (=> b!7566202 m!8128560))

(declare-fun m!8128562 () Bool)

(assert (=> b!7566202 m!8128562))

(declare-fun m!8128564 () Bool)

(assert (=> b!7566202 m!8128564))

(declare-fun m!8128566 () Bool)

(assert (=> b!7566202 m!8128566))

(declare-fun m!8128568 () Bool)

(assert (=> b!7566219 m!8128568))

(check-sat (not b!7566219) (not b!7566190) (not b!7566207) (not start!730852) (not b!7566194) (not b!7566218) (not b!7566198) (not b!7566192) (not b!7566195) (not b!7566214) tp_is_empty!50325 (not b!7566202) (not b!7566203) (not b!7566212) (not b!7566215) (not b!7566191) (not b!7566209) (not b!7566217) (not b!7566205) (not b!7566197) (not b!7566204) (not b!7566200) (not b!7566193) (not b!7566208) (not b!7566213) (not b!7566201) (not b!7566211) (not b!7566196) (not b!7566199))
(check-sat)
(get-model)

(declare-fun d!2316398 () Bool)

(declare-fun lostCauseFct!471 (Regex!19985) Bool)

(assert (=> d!2316398 (= (lostCause!1773 r!24333) (lostCauseFct!471 r!24333))))

(declare-fun bs!1940473 () Bool)

(assert (= bs!1940473 d!2316398))

(declare-fun m!8128570 () Bool)

(assert (=> bs!1940473 m!8128570))

(assert (=> b!7566199 d!2316398))

(declare-fun d!2316400 () Bool)

(assert (=> d!2316400 (>= (size!42481 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)))) (size!42481 knownP!30))))

(declare-fun lt!2650122 () Unit!166904)

(declare-fun choose!58512 (Regex!19985 Regex!19985 List!72868 List!72868 List!72868) Unit!166904)

(assert (=> d!2316400 (= lt!2650122 (choose!58512 baseR!101 lt!2650106 input!7874 lt!2650100 knownP!30))))

(assert (=> d!2316400 (validRegex!10413 baseR!101)))

(assert (=> d!2316400 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!29 baseR!101 lt!2650106 input!7874 lt!2650100 knownP!30) lt!2650122)))

(declare-fun bs!1940474 () Bool)

(assert (= bs!1940474 d!2316400))

(assert (=> bs!1940474 m!8128538))

(assert (=> bs!1940474 m!8128474))

(assert (=> bs!1940474 m!8128530))

(assert (=> bs!1940474 m!8128538))

(assert (=> bs!1940474 m!8128530))

(assert (=> bs!1940474 m!8128476))

(declare-fun m!8128590 () Bool)

(assert (=> bs!1940474 m!8128590))

(declare-fun m!8128592 () Bool)

(assert (=> bs!1940474 m!8128592))

(assert (=> bs!1940474 m!8128518))

(declare-fun m!8128594 () Bool)

(assert (=> bs!1940474 m!8128594))

(assert (=> bs!1940474 m!8128476))

(assert (=> b!7566198 d!2316400))

(declare-fun d!2316406 () Bool)

(declare-fun lt!2650128 () Int)

(assert (=> d!2316406 (>= lt!2650128 0)))

(declare-fun e!4505062 () Int)

(assert (=> d!2316406 (= lt!2650128 e!4505062)))

(declare-fun c!1396109 () Bool)

(assert (=> d!2316406 (= c!1396109 ((_ is Nil!72744) (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110))))))

(assert (=> d!2316406 (= (size!42481 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110))) lt!2650128)))

(declare-fun b!7566269 () Bool)

(assert (=> b!7566269 (= e!4505062 0)))

(declare-fun b!7566270 () Bool)

(assert (=> b!7566270 (= e!4505062 (+ 1 (size!42481 (t!387601 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110))))))))

(assert (= (and d!2316406 c!1396109) b!7566269))

(assert (= (and d!2316406 (not c!1396109)) b!7566270))

(declare-fun m!8128598 () Bool)

(assert (=> b!7566270 m!8128598))

(assert (=> b!7566198 d!2316406))

(declare-fun b!7566419 () Bool)

(declare-fun e!4505150 () Bool)

(declare-fun lt!2650232 () tuple2!68864)

(assert (=> b!7566419 (= e!4505150 (>= (size!42481 (_1!37735 lt!2650232)) (size!42481 testedP!423)))))

(declare-fun b!7566420 () Bool)

(declare-fun e!4505147 () tuple2!68864)

(assert (=> b!7566420 (= e!4505147 (tuple2!68865 testedP!423 lt!2650115))))

(declare-fun b!7566422 () Bool)

(declare-fun c!1396156 () Bool)

(declare-fun call!693670 () Bool)

(assert (=> b!7566422 (= c!1396156 call!693670)))

(declare-fun lt!2650227 () Unit!166904)

(declare-fun lt!2650237 () Unit!166904)

(assert (=> b!7566422 (= lt!2650227 lt!2650237)))

(declare-fun lt!2650235 () C!40296)

(declare-fun lt!2650242 () List!72868)

(assert (=> b!7566422 (= (++!17489 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744)) lt!2650242) input!7874)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3180 (List!72868 C!40296 List!72868 List!72868) Unit!166904)

(assert (=> b!7566422 (= lt!2650237 (lemmaMoveElementToOtherListKeepsConcatEq!3180 testedP!423 lt!2650235 lt!2650242 input!7874))))

(assert (=> b!7566422 (= lt!2650242 (tail!15103 lt!2650115))))

(assert (=> b!7566422 (= lt!2650235 (head!15563 lt!2650115))))

(declare-fun lt!2650244 () Unit!166904)

(declare-fun lt!2650226 () Unit!166904)

(assert (=> b!7566422 (= lt!2650244 lt!2650226)))

(assert (=> b!7566422 (isPrefix!6191 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)) input!7874)))

(assert (=> b!7566422 (= lt!2650226 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 testedP!423 input!7874))))

(declare-fun lt!2650229 () Unit!166904)

(declare-fun lt!2650228 () Unit!166904)

(assert (=> b!7566422 (= lt!2650229 lt!2650228)))

(assert (=> b!7566422 (= lt!2650228 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 testedP!423 input!7874))))

(declare-fun lt!2650251 () List!72868)

(assert (=> b!7566422 (= lt!2650251 (++!17489 testedP!423 (Cons!72744 (head!15563 lt!2650115) Nil!72744)))))

(declare-fun lt!2650225 () Unit!166904)

(declare-fun e!4505148 () Unit!166904)

(assert (=> b!7566422 (= lt!2650225 e!4505148)))

(declare-fun c!1396153 () Bool)

(assert (=> b!7566422 (= c!1396153 (= (size!42481 testedP!423) (size!42481 input!7874)))))

(declare-fun lt!2650233 () Unit!166904)

(declare-fun lt!2650239 () Unit!166904)

(assert (=> b!7566422 (= lt!2650233 lt!2650239)))

(assert (=> b!7566422 (<= (size!42481 testedP!423) (size!42481 input!7874))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1019 (List!72868 List!72868) Unit!166904)

(assert (=> b!7566422 (= lt!2650239 (lemmaIsPrefixThenSmallerEqSize!1019 testedP!423 input!7874))))

(declare-fun e!4505149 () tuple2!68864)

(declare-fun e!4505143 () tuple2!68864)

(assert (=> b!7566422 (= e!4505149 e!4505143)))

(declare-fun b!7566423 () Bool)

(assert (=> b!7566423 (= e!4505143 e!4505147)))

(declare-fun lt!2650241 () tuple2!68864)

(declare-fun call!693673 () tuple2!68864)

(assert (=> b!7566423 (= lt!2650241 call!693673)))

(declare-fun c!1396154 () Bool)

(declare-fun isEmpty!41423 (List!72868) Bool)

(assert (=> b!7566423 (= c!1396154 (isEmpty!41423 (_1!37735 lt!2650241)))))

(declare-fun b!7566424 () Bool)

(assert (=> b!7566424 (= e!4505147 lt!2650241)))

(declare-fun b!7566425 () Bool)

(declare-fun e!4505144 () tuple2!68864)

(assert (=> b!7566425 (= e!4505144 e!4505149)))

(declare-fun c!1396151 () Bool)

(assert (=> b!7566425 (= c!1396151 (= lt!2650111 lt!2650110))))

(declare-fun b!7566426 () Bool)

(declare-fun Unit!166906 () Unit!166904)

(assert (=> b!7566426 (= e!4505148 Unit!166906)))

(declare-fun lt!2650250 () Unit!166904)

(declare-fun call!693668 () Unit!166904)

(assert (=> b!7566426 (= lt!2650250 call!693668)))

(declare-fun call!693674 () Bool)

(assert (=> b!7566426 call!693674))

(declare-fun lt!2650230 () Unit!166904)

(assert (=> b!7566426 (= lt!2650230 lt!2650250)))

(declare-fun lt!2650234 () Unit!166904)

(declare-fun call!693675 () Unit!166904)

(assert (=> b!7566426 (= lt!2650234 call!693675)))

(assert (=> b!7566426 (= input!7874 testedP!423)))

(declare-fun lt!2650240 () Unit!166904)

(assert (=> b!7566426 (= lt!2650240 lt!2650234)))

(assert (=> b!7566426 false))

(declare-fun b!7566427 () Bool)

(declare-fun c!1396155 () Bool)

(assert (=> b!7566427 (= c!1396155 call!693670)))

(declare-fun lt!2650243 () Unit!166904)

(declare-fun lt!2650246 () Unit!166904)

(assert (=> b!7566427 (= lt!2650243 lt!2650246)))

(assert (=> b!7566427 (= input!7874 testedP!423)))

(assert (=> b!7566427 (= lt!2650246 call!693675)))

(declare-fun lt!2650249 () Unit!166904)

(declare-fun lt!2650245 () Unit!166904)

(assert (=> b!7566427 (= lt!2650249 lt!2650245)))

(assert (=> b!7566427 call!693674))

(assert (=> b!7566427 (= lt!2650245 call!693668)))

(declare-fun e!4505146 () tuple2!68864)

(assert (=> b!7566427 (= e!4505149 e!4505146)))

(declare-fun call!693671 () List!72868)

(declare-fun call!693669 () Regex!19985)

(declare-fun bm!693663 () Bool)

(assert (=> bm!693663 (= call!693673 (findLongestMatchInner!2140 call!693669 lt!2650251 (+ lt!2650111 1) call!693671 input!7874 lt!2650110))))

(declare-fun bm!693664 () Bool)

(declare-fun lemmaIsPrefixRefl!3871 (List!72868 List!72868) Unit!166904)

(assert (=> bm!693664 (= call!693668 (lemmaIsPrefixRefl!3871 input!7874 input!7874))))

(declare-fun b!7566428 () Bool)

(declare-fun Unit!166907 () Unit!166904)

(assert (=> b!7566428 (= e!4505148 Unit!166907)))

(declare-fun bm!693665 () Bool)

(declare-fun call!693672 () C!40296)

(assert (=> bm!693665 (= call!693672 (head!15563 lt!2650115))))

(declare-fun bm!693666 () Bool)

(assert (=> bm!693666 (= call!693669 (derivativeStep!5763 r!24333 call!693672))))

(declare-fun bm!693667 () Bool)

(declare-fun nullable!8719 (Regex!19985) Bool)

(assert (=> bm!693667 (= call!693670 (nullable!8719 r!24333))))

(declare-fun b!7566429 () Bool)

(declare-fun e!4505145 () Bool)

(assert (=> b!7566429 (= e!4505145 e!4505150)))

(declare-fun res!3031490 () Bool)

(assert (=> b!7566429 (=> res!3031490 e!4505150)))

(assert (=> b!7566429 (= res!3031490 (isEmpty!41423 (_1!37735 lt!2650232)))))

(declare-fun b!7566430 () Bool)

(assert (=> b!7566430 (= e!4505143 call!693673)))

(declare-fun b!7566431 () Bool)

(assert (=> b!7566431 (= e!4505144 (tuple2!68865 Nil!72744 input!7874))))

(declare-fun b!7566421 () Bool)

(assert (=> b!7566421 (= e!4505146 (tuple2!68865 testedP!423 Nil!72744))))

(declare-fun d!2316410 () Bool)

(assert (=> d!2316410 e!4505145))

(declare-fun res!3031491 () Bool)

(assert (=> d!2316410 (=> (not res!3031491) (not e!4505145))))

(assert (=> d!2316410 (= res!3031491 (= (++!17489 (_1!37735 lt!2650232) (_2!37735 lt!2650232)) input!7874))))

(assert (=> d!2316410 (= lt!2650232 e!4505144)))

(declare-fun c!1396152 () Bool)

(assert (=> d!2316410 (= c!1396152 (lostCause!1773 r!24333))))

(declare-fun lt!2650247 () Unit!166904)

(declare-fun Unit!166908 () Unit!166904)

(assert (=> d!2316410 (= lt!2650247 Unit!166908)))

(assert (=> d!2316410 (= (getSuffix!3669 input!7874 testedP!423) lt!2650115)))

(declare-fun lt!2650224 () Unit!166904)

(declare-fun lt!2650236 () Unit!166904)

(assert (=> d!2316410 (= lt!2650224 lt!2650236)))

(declare-fun lt!2650248 () List!72868)

(assert (=> d!2316410 (= lt!2650115 lt!2650248)))

(assert (=> d!2316410 (= lt!2650236 (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650115 testedP!423 lt!2650248 input!7874))))

(assert (=> d!2316410 (= lt!2650248 (getSuffix!3669 input!7874 testedP!423))))

(declare-fun lt!2650231 () Unit!166904)

(declare-fun lt!2650238 () Unit!166904)

(assert (=> d!2316410 (= lt!2650231 lt!2650238)))

(assert (=> d!2316410 (isPrefix!6191 testedP!423 (++!17489 testedP!423 lt!2650115))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3744 (List!72868 List!72868) Unit!166904)

(assert (=> d!2316410 (= lt!2650238 (lemmaConcatTwoListThenFirstIsPrefix!3744 testedP!423 lt!2650115))))

(assert (=> d!2316410 (validRegex!10413 r!24333)))

(assert (=> d!2316410 (= (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110) lt!2650232)))

(declare-fun bm!693668 () Bool)

(assert (=> bm!693668 (= call!693671 (tail!15103 lt!2650115))))

(declare-fun bm!693669 () Bool)

(assert (=> bm!693669 (= call!693674 (isPrefix!6191 input!7874 input!7874))))

(declare-fun bm!693670 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1536 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> bm!693670 (= call!693675 (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 testedP!423 input!7874))))

(declare-fun b!7566432 () Bool)

(assert (=> b!7566432 (= e!4505146 (tuple2!68865 Nil!72744 input!7874))))

(assert (= (and d!2316410 c!1396152) b!7566431))

(assert (= (and d!2316410 (not c!1396152)) b!7566425))

(assert (= (and b!7566425 c!1396151) b!7566427))

(assert (= (and b!7566425 (not c!1396151)) b!7566422))

(assert (= (and b!7566427 c!1396155) b!7566421))

(assert (= (and b!7566427 (not c!1396155)) b!7566432))

(assert (= (and b!7566422 c!1396153) b!7566426))

(assert (= (and b!7566422 (not c!1396153)) b!7566428))

(assert (= (and b!7566422 c!1396156) b!7566423))

(assert (= (and b!7566422 (not c!1396156)) b!7566430))

(assert (= (and b!7566423 c!1396154) b!7566420))

(assert (= (and b!7566423 (not c!1396154)) b!7566424))

(assert (= (or b!7566423 b!7566430) bm!693668))

(assert (= (or b!7566423 b!7566430) bm!693665))

(assert (= (or b!7566423 b!7566430) bm!693666))

(assert (= (or b!7566423 b!7566430) bm!693663))

(assert (= (or b!7566427 b!7566426) bm!693669))

(assert (= (or b!7566427 b!7566422) bm!693667))

(assert (= (or b!7566427 b!7566426) bm!693670))

(assert (= (or b!7566427 b!7566426) bm!693664))

(assert (= (and d!2316410 res!3031491) b!7566429))

(assert (= (and b!7566429 (not res!3031490)) b!7566419))

(declare-fun m!8128750 () Bool)

(assert (=> bm!693670 m!8128750))

(declare-fun m!8128752 () Bool)

(assert (=> b!7566429 m!8128752))

(declare-fun m!8128754 () Bool)

(assert (=> bm!693663 m!8128754))

(declare-fun m!8128756 () Bool)

(assert (=> bm!693664 m!8128756))

(declare-fun m!8128758 () Bool)

(assert (=> b!7566423 m!8128758))

(declare-fun m!8128760 () Bool)

(assert (=> bm!693668 m!8128760))

(declare-fun m!8128762 () Bool)

(assert (=> b!7566422 m!8128762))

(declare-fun m!8128764 () Bool)

(assert (=> b!7566422 m!8128764))

(assert (=> b!7566422 m!8128476))

(declare-fun m!8128766 () Bool)

(assert (=> b!7566422 m!8128766))

(assert (=> b!7566422 m!8128550))

(declare-fun m!8128768 () Bool)

(assert (=> b!7566422 m!8128768))

(assert (=> b!7566422 m!8128556))

(declare-fun m!8128770 () Bool)

(assert (=> b!7566422 m!8128770))

(declare-fun m!8128772 () Bool)

(assert (=> b!7566422 m!8128772))

(assert (=> b!7566422 m!8128760))

(assert (=> b!7566422 m!8128472))

(assert (=> b!7566422 m!8128762))

(declare-fun m!8128774 () Bool)

(assert (=> b!7566422 m!8128774))

(assert (=> b!7566422 m!8128550))

(assert (=> b!7566422 m!8128770))

(declare-fun m!8128776 () Bool)

(assert (=> b!7566422 m!8128776))

(assert (=> b!7566422 m!8128544))

(assert (=> bm!693665 m!8128556))

(declare-fun m!8128778 () Bool)

(assert (=> b!7566419 m!8128778))

(assert (=> b!7566419 m!8128472))

(declare-fun m!8128780 () Bool)

(assert (=> bm!693669 m!8128780))

(declare-fun m!8128782 () Bool)

(assert (=> bm!693667 m!8128782))

(declare-fun m!8128784 () Bool)

(assert (=> bm!693666 m!8128784))

(assert (=> d!2316410 m!8128526))

(declare-fun m!8128786 () Bool)

(assert (=> d!2316410 m!8128786))

(assert (=> d!2316410 m!8128494))

(declare-fun m!8128788 () Bool)

(assert (=> d!2316410 m!8128788))

(assert (=> d!2316410 m!8128516))

(assert (=> d!2316410 m!8128550))

(assert (=> d!2316410 m!8128494))

(declare-fun m!8128790 () Bool)

(assert (=> d!2316410 m!8128790))

(declare-fun m!8128792 () Bool)

(assert (=> d!2316410 m!8128792))

(assert (=> b!7566198 d!2316410))

(declare-fun d!2316464 () Bool)

(declare-fun lt!2650254 () List!72868)

(assert (=> d!2316464 (= (++!17489 lt!2650100 lt!2650254) input!7874)))

(declare-fun e!4505153 () List!72868)

(assert (=> d!2316464 (= lt!2650254 e!4505153)))

(declare-fun c!1396159 () Bool)

(assert (=> d!2316464 (= c!1396159 ((_ is Cons!72744) lt!2650100))))

(assert (=> d!2316464 (>= (size!42481 input!7874) (size!42481 lt!2650100))))

(assert (=> d!2316464 (= (getSuffix!3669 input!7874 lt!2650100) lt!2650254)))

(declare-fun b!7566437 () Bool)

(assert (=> b!7566437 (= e!4505153 (getSuffix!3669 (tail!15103 input!7874) (t!387601 lt!2650100)))))

(declare-fun b!7566438 () Bool)

(assert (=> b!7566438 (= e!4505153 input!7874)))

(assert (= (and d!2316464 c!1396159) b!7566437))

(assert (= (and d!2316464 (not c!1396159)) b!7566438))

(declare-fun m!8128794 () Bool)

(assert (=> d!2316464 m!8128794))

(assert (=> d!2316464 m!8128476))

(assert (=> d!2316464 m!8128538))

(declare-fun m!8128796 () Bool)

(assert (=> b!7566437 m!8128796))

(assert (=> b!7566437 m!8128796))

(declare-fun m!8128798 () Bool)

(assert (=> b!7566437 m!8128798))

(assert (=> b!7566198 d!2316464))

(declare-fun d!2316466 () Bool)

(declare-fun lt!2650255 () Int)

(assert (=> d!2316466 (>= lt!2650255 0)))

(declare-fun e!4505154 () Int)

(assert (=> d!2316466 (= lt!2650255 e!4505154)))

(declare-fun c!1396160 () Bool)

(assert (=> d!2316466 (= c!1396160 ((_ is Nil!72744) (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110))))))

(assert (=> d!2316466 (= (size!42481 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110))) lt!2650255)))

(declare-fun b!7566439 () Bool)

(assert (=> b!7566439 (= e!4505154 0)))

(declare-fun b!7566440 () Bool)

(assert (=> b!7566440 (= e!4505154 (+ 1 (size!42481 (t!387601 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110))))))))

(assert (= (and d!2316466 c!1396160) b!7566439))

(assert (= (and d!2316466 (not c!1396160)) b!7566440))

(declare-fun m!8128800 () Bool)

(assert (=> b!7566440 m!8128800))

(assert (=> b!7566198 d!2316466))

(declare-fun b!7566441 () Bool)

(declare-fun e!4505162 () Bool)

(declare-fun lt!2650264 () tuple2!68864)

(assert (=> b!7566441 (= e!4505162 (>= (size!42481 (_1!37735 lt!2650264)) (size!42481 lt!2650100)))))

(declare-fun b!7566442 () Bool)

(declare-fun e!4505159 () tuple2!68864)

(assert (=> b!7566442 (= e!4505159 (tuple2!68865 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun b!7566444 () Bool)

(declare-fun c!1396166 () Bool)

(declare-fun call!693678 () Bool)

(assert (=> b!7566444 (= c!1396166 call!693678)))

(declare-fun lt!2650259 () Unit!166904)

(declare-fun lt!2650269 () Unit!166904)

(assert (=> b!7566444 (= lt!2650259 lt!2650269)))

(declare-fun lt!2650267 () C!40296)

(declare-fun lt!2650274 () List!72868)

(assert (=> b!7566444 (= (++!17489 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744)) lt!2650274) input!7874)))

(assert (=> b!7566444 (= lt!2650269 (lemmaMoveElementToOtherListKeepsConcatEq!3180 lt!2650100 lt!2650267 lt!2650274 input!7874))))

(assert (=> b!7566444 (= lt!2650274 (tail!15103 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> b!7566444 (= lt!2650267 (head!15563 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun lt!2650276 () Unit!166904)

(declare-fun lt!2650258 () Unit!166904)

(assert (=> b!7566444 (= lt!2650276 lt!2650258)))

(assert (=> b!7566444 (isPrefix!6191 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)) input!7874)))

(assert (=> b!7566444 (= lt!2650258 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650100 input!7874))))

(declare-fun lt!2650261 () Unit!166904)

(declare-fun lt!2650260 () Unit!166904)

(assert (=> b!7566444 (= lt!2650261 lt!2650260)))

(assert (=> b!7566444 (= lt!2650260 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650100 input!7874))))

(declare-fun lt!2650283 () List!72868)

(assert (=> b!7566444 (= lt!2650283 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)))))

(declare-fun lt!2650257 () Unit!166904)

(declare-fun e!4505160 () Unit!166904)

(assert (=> b!7566444 (= lt!2650257 e!4505160)))

(declare-fun c!1396163 () Bool)

(assert (=> b!7566444 (= c!1396163 (= (size!42481 lt!2650100) (size!42481 input!7874)))))

(declare-fun lt!2650265 () Unit!166904)

(declare-fun lt!2650271 () Unit!166904)

(assert (=> b!7566444 (= lt!2650265 lt!2650271)))

(assert (=> b!7566444 (<= (size!42481 lt!2650100) (size!42481 input!7874))))

(assert (=> b!7566444 (= lt!2650271 (lemmaIsPrefixThenSmallerEqSize!1019 lt!2650100 input!7874))))

(declare-fun e!4505161 () tuple2!68864)

(declare-fun e!4505155 () tuple2!68864)

(assert (=> b!7566444 (= e!4505161 e!4505155)))

(declare-fun b!7566445 () Bool)

(assert (=> b!7566445 (= e!4505155 e!4505159)))

(declare-fun lt!2650273 () tuple2!68864)

(declare-fun call!693681 () tuple2!68864)

(assert (=> b!7566445 (= lt!2650273 call!693681)))

(declare-fun c!1396164 () Bool)

(assert (=> b!7566445 (= c!1396164 (isEmpty!41423 (_1!37735 lt!2650273)))))

(declare-fun b!7566446 () Bool)

(assert (=> b!7566446 (= e!4505159 lt!2650273)))

(declare-fun b!7566447 () Bool)

(declare-fun e!4505156 () tuple2!68864)

(assert (=> b!7566447 (= e!4505156 e!4505161)))

(declare-fun c!1396161 () Bool)

(assert (=> b!7566447 (= c!1396161 (= (size!42481 lt!2650100) lt!2650110))))

(declare-fun b!7566448 () Bool)

(declare-fun Unit!166909 () Unit!166904)

(assert (=> b!7566448 (= e!4505160 Unit!166909)))

(declare-fun lt!2650282 () Unit!166904)

(declare-fun call!693676 () Unit!166904)

(assert (=> b!7566448 (= lt!2650282 call!693676)))

(declare-fun call!693682 () Bool)

(assert (=> b!7566448 call!693682))

(declare-fun lt!2650262 () Unit!166904)

(assert (=> b!7566448 (= lt!2650262 lt!2650282)))

(declare-fun lt!2650266 () Unit!166904)

(declare-fun call!693683 () Unit!166904)

(assert (=> b!7566448 (= lt!2650266 call!693683)))

(assert (=> b!7566448 (= input!7874 lt!2650100)))

(declare-fun lt!2650272 () Unit!166904)

(assert (=> b!7566448 (= lt!2650272 lt!2650266)))

(assert (=> b!7566448 false))

(declare-fun b!7566449 () Bool)

(declare-fun c!1396165 () Bool)

(assert (=> b!7566449 (= c!1396165 call!693678)))

(declare-fun lt!2650275 () Unit!166904)

(declare-fun lt!2650278 () Unit!166904)

(assert (=> b!7566449 (= lt!2650275 lt!2650278)))

(assert (=> b!7566449 (= input!7874 lt!2650100)))

(assert (=> b!7566449 (= lt!2650278 call!693683)))

(declare-fun lt!2650281 () Unit!166904)

(declare-fun lt!2650277 () Unit!166904)

(assert (=> b!7566449 (= lt!2650281 lt!2650277)))

(assert (=> b!7566449 call!693682))

(assert (=> b!7566449 (= lt!2650277 call!693676)))

(declare-fun e!4505158 () tuple2!68864)

(assert (=> b!7566449 (= e!4505161 e!4505158)))

(declare-fun bm!693671 () Bool)

(declare-fun call!693677 () Regex!19985)

(declare-fun call!693679 () List!72868)

(assert (=> bm!693671 (= call!693681 (findLongestMatchInner!2140 call!693677 lt!2650283 (+ (size!42481 lt!2650100) 1) call!693679 input!7874 lt!2650110))))

(declare-fun bm!693672 () Bool)

(assert (=> bm!693672 (= call!693676 (lemmaIsPrefixRefl!3871 input!7874 input!7874))))

(declare-fun b!7566450 () Bool)

(declare-fun Unit!166910 () Unit!166904)

(assert (=> b!7566450 (= e!4505160 Unit!166910)))

(declare-fun bm!693673 () Bool)

(declare-fun call!693680 () C!40296)

(assert (=> bm!693673 (= call!693680 (head!15563 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun bm!693674 () Bool)

(assert (=> bm!693674 (= call!693677 (derivativeStep!5763 lt!2650106 call!693680))))

(declare-fun bm!693675 () Bool)

(assert (=> bm!693675 (= call!693678 (nullable!8719 lt!2650106))))

(declare-fun b!7566451 () Bool)

(declare-fun e!4505157 () Bool)

(assert (=> b!7566451 (= e!4505157 e!4505162)))

(declare-fun res!3031492 () Bool)

(assert (=> b!7566451 (=> res!3031492 e!4505162)))

(assert (=> b!7566451 (= res!3031492 (isEmpty!41423 (_1!37735 lt!2650264)))))

(declare-fun b!7566452 () Bool)

(assert (=> b!7566452 (= e!4505155 call!693681)))

(declare-fun b!7566453 () Bool)

(assert (=> b!7566453 (= e!4505156 (tuple2!68865 Nil!72744 input!7874))))

(declare-fun b!7566443 () Bool)

(assert (=> b!7566443 (= e!4505158 (tuple2!68865 lt!2650100 Nil!72744))))

(declare-fun d!2316468 () Bool)

(assert (=> d!2316468 e!4505157))

(declare-fun res!3031493 () Bool)

(assert (=> d!2316468 (=> (not res!3031493) (not e!4505157))))

(assert (=> d!2316468 (= res!3031493 (= (++!17489 (_1!37735 lt!2650264) (_2!37735 lt!2650264)) input!7874))))

(assert (=> d!2316468 (= lt!2650264 e!4505156)))

(declare-fun c!1396162 () Bool)

(assert (=> d!2316468 (= c!1396162 (lostCause!1773 lt!2650106))))

(declare-fun lt!2650279 () Unit!166904)

(declare-fun Unit!166911 () Unit!166904)

(assert (=> d!2316468 (= lt!2650279 Unit!166911)))

(assert (=> d!2316468 (= (getSuffix!3669 input!7874 lt!2650100) (getSuffix!3669 input!7874 lt!2650100))))

(declare-fun lt!2650256 () Unit!166904)

(declare-fun lt!2650268 () Unit!166904)

(assert (=> d!2316468 (= lt!2650256 lt!2650268)))

(declare-fun lt!2650280 () List!72868)

(assert (=> d!2316468 (= (getSuffix!3669 input!7874 lt!2650100) lt!2650280)))

(assert (=> d!2316468 (= lt!2650268 (lemmaSamePrefixThenSameSuffix!2891 lt!2650100 (getSuffix!3669 input!7874 lt!2650100) lt!2650100 lt!2650280 input!7874))))

(assert (=> d!2316468 (= lt!2650280 (getSuffix!3669 input!7874 lt!2650100))))

(declare-fun lt!2650263 () Unit!166904)

(declare-fun lt!2650270 () Unit!166904)

(assert (=> d!2316468 (= lt!2650263 lt!2650270)))

(assert (=> d!2316468 (isPrefix!6191 lt!2650100 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> d!2316468 (= lt!2650270 (lemmaConcatTwoListThenFirstIsPrefix!3744 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> d!2316468 (validRegex!10413 lt!2650106)))

(assert (=> d!2316468 (= (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110) lt!2650264)))

(declare-fun bm!693676 () Bool)

(assert (=> bm!693676 (= call!693679 (tail!15103 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun bm!693677 () Bool)

(assert (=> bm!693677 (= call!693682 (isPrefix!6191 input!7874 input!7874))))

(declare-fun bm!693678 () Bool)

(assert (=> bm!693678 (= call!693683 (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 lt!2650100 input!7874))))

(declare-fun b!7566454 () Bool)

(assert (=> b!7566454 (= e!4505158 (tuple2!68865 Nil!72744 input!7874))))

(assert (= (and d!2316468 c!1396162) b!7566453))

(assert (= (and d!2316468 (not c!1396162)) b!7566447))

(assert (= (and b!7566447 c!1396161) b!7566449))

(assert (= (and b!7566447 (not c!1396161)) b!7566444))

(assert (= (and b!7566449 c!1396165) b!7566443))

(assert (= (and b!7566449 (not c!1396165)) b!7566454))

(assert (= (and b!7566444 c!1396163) b!7566448))

(assert (= (and b!7566444 (not c!1396163)) b!7566450))

(assert (= (and b!7566444 c!1396166) b!7566445))

(assert (= (and b!7566444 (not c!1396166)) b!7566452))

(assert (= (and b!7566445 c!1396164) b!7566442))

(assert (= (and b!7566445 (not c!1396164)) b!7566446))

(assert (= (or b!7566445 b!7566452) bm!693676))

(assert (= (or b!7566445 b!7566452) bm!693673))

(assert (= (or b!7566445 b!7566452) bm!693674))

(assert (= (or b!7566445 b!7566452) bm!693671))

(assert (= (or b!7566449 b!7566448) bm!693677))

(assert (= (or b!7566449 b!7566444) bm!693675))

(assert (= (or b!7566449 b!7566448) bm!693678))

(assert (= (or b!7566449 b!7566448) bm!693672))

(assert (= (and d!2316468 res!3031493) b!7566451))

(assert (= (and b!7566451 (not res!3031492)) b!7566441))

(declare-fun m!8128802 () Bool)

(assert (=> bm!693678 m!8128802))

(declare-fun m!8128804 () Bool)

(assert (=> b!7566451 m!8128804))

(declare-fun m!8128806 () Bool)

(assert (=> bm!693671 m!8128806))

(assert (=> bm!693672 m!8128756))

(declare-fun m!8128808 () Bool)

(assert (=> b!7566445 m!8128808))

(assert (=> bm!693676 m!8128530))

(declare-fun m!8128810 () Bool)

(assert (=> bm!693676 m!8128810))

(declare-fun m!8128812 () Bool)

(assert (=> b!7566444 m!8128812))

(declare-fun m!8128814 () Bool)

(assert (=> b!7566444 m!8128814))

(assert (=> b!7566444 m!8128476))

(declare-fun m!8128816 () Bool)

(assert (=> b!7566444 m!8128816))

(assert (=> b!7566444 m!8128530))

(declare-fun m!8128818 () Bool)

(assert (=> b!7566444 m!8128818))

(assert (=> b!7566444 m!8128530))

(assert (=> b!7566444 m!8128818))

(declare-fun m!8128820 () Bool)

(assert (=> b!7566444 m!8128820))

(assert (=> b!7566444 m!8128820))

(assert (=> b!7566444 m!8128530))

(assert (=> b!7566444 m!8128810))

(assert (=> b!7566444 m!8128538))

(assert (=> b!7566444 m!8128812))

(declare-fun m!8128822 () Bool)

(assert (=> b!7566444 m!8128822))

(assert (=> b!7566444 m!8128530))

(assert (=> b!7566444 m!8128820))

(declare-fun m!8128824 () Bool)

(assert (=> b!7566444 m!8128824))

(declare-fun m!8128826 () Bool)

(assert (=> b!7566444 m!8128826))

(assert (=> bm!693673 m!8128530))

(assert (=> bm!693673 m!8128818))

(declare-fun m!8128828 () Bool)

(assert (=> b!7566441 m!8128828))

(assert (=> b!7566441 m!8128538))

(assert (=> bm!693677 m!8128780))

(declare-fun m!8128830 () Bool)

(assert (=> bm!693675 m!8128830))

(declare-fun m!8128832 () Bool)

(assert (=> bm!693674 m!8128832))

(declare-fun m!8128834 () Bool)

(assert (=> d!2316468 m!8128834))

(declare-fun m!8128836 () Bool)

(assert (=> d!2316468 m!8128836))

(declare-fun m!8128838 () Bool)

(assert (=> d!2316468 m!8128838))

(declare-fun m!8128840 () Bool)

(assert (=> d!2316468 m!8128840))

(declare-fun m!8128842 () Bool)

(assert (=> d!2316468 m!8128842))

(assert (=> d!2316468 m!8128530))

(assert (=> d!2316468 m!8128530))

(assert (=> d!2316468 m!8128838))

(assert (=> d!2316468 m!8128530))

(declare-fun m!8128844 () Bool)

(assert (=> d!2316468 m!8128844))

(assert (=> d!2316468 m!8128530))

(declare-fun m!8128846 () Bool)

(assert (=> d!2316468 m!8128846))

(assert (=> b!7566198 d!2316468))

(declare-fun d!2316470 () Bool)

(declare-fun lt!2650284 () Int)

(assert (=> d!2316470 (>= lt!2650284 0)))

(declare-fun e!4505163 () Int)

(assert (=> d!2316470 (= lt!2650284 e!4505163)))

(declare-fun c!1396167 () Bool)

(assert (=> d!2316470 (= c!1396167 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316470 (= (size!42481 lt!2650100) lt!2650284)))

(declare-fun b!7566455 () Bool)

(assert (=> b!7566455 (= e!4505163 0)))

(declare-fun b!7566456 () Bool)

(assert (=> b!7566456 (= e!4505163 (+ 1 (size!42481 (t!387601 lt!2650100))))))

(assert (= (and d!2316470 c!1396167) b!7566455))

(assert (= (and d!2316470 (not c!1396167)) b!7566456))

(declare-fun m!8128848 () Bool)

(assert (=> b!7566456 m!8128848))

(assert (=> b!7566198 d!2316470))

(declare-fun d!2316472 () Bool)

(declare-fun lt!2650287 () Regex!19985)

(assert (=> d!2316472 (validRegex!10413 lt!2650287)))

(declare-fun e!4505166 () Regex!19985)

(assert (=> d!2316472 (= lt!2650287 e!4505166)))

(declare-fun c!1396170 () Bool)

(assert (=> d!2316472 (= c!1396170 ((_ is Cons!72744) testedP!423))))

(assert (=> d!2316472 (validRegex!10413 baseR!101)))

(assert (=> d!2316472 (= (derivative!515 baseR!101 testedP!423) lt!2650287)))

(declare-fun b!7566461 () Bool)

(assert (=> b!7566461 (= e!4505166 (derivative!515 (derivativeStep!5763 baseR!101 (h!79192 testedP!423)) (t!387601 testedP!423)))))

(declare-fun b!7566462 () Bool)

(assert (=> b!7566462 (= e!4505166 baseR!101)))

(assert (= (and d!2316472 c!1396170) b!7566461))

(assert (= (and d!2316472 (not c!1396170)) b!7566462))

(declare-fun m!8128850 () Bool)

(assert (=> d!2316472 m!8128850))

(assert (=> d!2316472 m!8128518))

(declare-fun m!8128852 () Bool)

(assert (=> b!7566461 m!8128852))

(assert (=> b!7566461 m!8128852))

(declare-fun m!8128854 () Bool)

(assert (=> b!7566461 m!8128854))

(assert (=> b!7566219 d!2316472))

(declare-fun b!7566473 () Bool)

(declare-fun res!3031499 () Bool)

(declare-fun e!4505171 () Bool)

(assert (=> b!7566473 (=> (not res!3031499) (not e!4505171))))

(declare-fun lt!2650290 () List!72868)

(assert (=> b!7566473 (= res!3031499 (= (size!42481 lt!2650290) (+ (size!42481 lt!2650100) (size!42481 lt!2650107))))))

(declare-fun d!2316474 () Bool)

(assert (=> d!2316474 e!4505171))

(declare-fun res!3031498 () Bool)

(assert (=> d!2316474 (=> (not res!3031498) (not e!4505171))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15406 (List!72868) (InoxSet C!40296))

(assert (=> d!2316474 (= res!3031498 (= (content!15406 lt!2650290) ((_ map or) (content!15406 lt!2650100) (content!15406 lt!2650107))))))

(declare-fun e!4505172 () List!72868)

(assert (=> d!2316474 (= lt!2650290 e!4505172)))

(declare-fun c!1396173 () Bool)

(assert (=> d!2316474 (= c!1396173 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316474 (= (++!17489 lt!2650100 lt!2650107) lt!2650290)))

(declare-fun b!7566474 () Bool)

(assert (=> b!7566474 (= e!4505171 (or (not (= lt!2650107 Nil!72744)) (= lt!2650290 lt!2650100)))))

(declare-fun b!7566472 () Bool)

(assert (=> b!7566472 (= e!4505172 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) lt!2650107)))))

(declare-fun b!7566471 () Bool)

(assert (=> b!7566471 (= e!4505172 lt!2650107)))

(assert (= (and d!2316474 c!1396173) b!7566471))

(assert (= (and d!2316474 (not c!1396173)) b!7566472))

(assert (= (and d!2316474 res!3031498) b!7566473))

(assert (= (and b!7566473 res!3031499) b!7566474))

(declare-fun m!8128856 () Bool)

(assert (=> b!7566473 m!8128856))

(assert (=> b!7566473 m!8128538))

(declare-fun m!8128858 () Bool)

(assert (=> b!7566473 m!8128858))

(declare-fun m!8128860 () Bool)

(assert (=> d!2316474 m!8128860))

(declare-fun m!8128862 () Bool)

(assert (=> d!2316474 m!8128862))

(declare-fun m!8128864 () Bool)

(assert (=> d!2316474 m!8128864))

(declare-fun m!8128866 () Bool)

(assert (=> b!7566472 m!8128866))

(assert (=> b!7566208 d!2316474))

(declare-fun d!2316476 () Bool)

(assert (=> d!2316476 (= lt!2650104 lt!2650099)))

(declare-fun lt!2650293 () Unit!166904)

(declare-fun choose!58516 (List!72868 List!72868 List!72868 List!72868 List!72868) Unit!166904)

(assert (=> d!2316476 (= lt!2650293 (choose!58516 testedP!423 lt!2650104 testedP!423 lt!2650099 knownP!30))))

(assert (=> d!2316476 (isPrefix!6191 testedP!423 knownP!30)))

(assert (=> d!2316476 (= (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650104 testedP!423 lt!2650099 knownP!30) lt!2650293)))

(declare-fun bs!1940481 () Bool)

(assert (= bs!1940481 d!2316476))

(declare-fun m!8128868 () Bool)

(assert (=> bs!1940481 m!8128868))

(assert (=> bs!1940481 m!8128504))

(assert (=> b!7566197 d!2316476))

(declare-fun b!7566477 () Bool)

(declare-fun res!3031501 () Bool)

(declare-fun e!4505173 () Bool)

(assert (=> b!7566477 (=> (not res!3031501) (not e!4505173))))

(declare-fun lt!2650294 () List!72868)

(assert (=> b!7566477 (= res!3031501 (= (size!42481 lt!2650294) (+ (size!42481 testedP!423) (size!42481 lt!2650104))))))

(declare-fun d!2316478 () Bool)

(assert (=> d!2316478 e!4505173))

(declare-fun res!3031500 () Bool)

(assert (=> d!2316478 (=> (not res!3031500) (not e!4505173))))

(assert (=> d!2316478 (= res!3031500 (= (content!15406 lt!2650294) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650104))))))

(declare-fun e!4505174 () List!72868)

(assert (=> d!2316478 (= lt!2650294 e!4505174)))

(declare-fun c!1396174 () Bool)

(assert (=> d!2316478 (= c!1396174 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316478 (= (++!17489 testedP!423 lt!2650104) lt!2650294)))

(declare-fun b!7566478 () Bool)

(assert (=> b!7566478 (= e!4505173 (or (not (= lt!2650104 Nil!72744)) (= lt!2650294 testedP!423)))))

(declare-fun b!7566476 () Bool)

(assert (=> b!7566476 (= e!4505174 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650104)))))

(declare-fun b!7566475 () Bool)

(assert (=> b!7566475 (= e!4505174 lt!2650104)))

(assert (= (and d!2316478 c!1396174) b!7566475))

(assert (= (and d!2316478 (not c!1396174)) b!7566476))

(assert (= (and d!2316478 res!3031500) b!7566477))

(assert (= (and b!7566477 res!3031501) b!7566478))

(declare-fun m!8128870 () Bool)

(assert (=> b!7566477 m!8128870))

(assert (=> b!7566477 m!8128472))

(declare-fun m!8128872 () Bool)

(assert (=> b!7566477 m!8128872))

(declare-fun m!8128874 () Bool)

(assert (=> d!2316478 m!8128874))

(declare-fun m!8128876 () Bool)

(assert (=> d!2316478 m!8128876))

(declare-fun m!8128878 () Bool)

(assert (=> d!2316478 m!8128878))

(declare-fun m!8128880 () Bool)

(assert (=> b!7566476 m!8128880))

(assert (=> b!7566197 d!2316478))

(declare-fun b!7566481 () Bool)

(declare-fun res!3031503 () Bool)

(declare-fun e!4505175 () Bool)

(assert (=> b!7566481 (=> (not res!3031503) (not e!4505175))))

(declare-fun lt!2650295 () List!72868)

(assert (=> b!7566481 (= res!3031503 (= (size!42481 lt!2650295) (+ (size!42481 lt!2650098) (size!42481 lt!2650107))))))

(declare-fun d!2316480 () Bool)

(assert (=> d!2316480 e!4505175))

(declare-fun res!3031502 () Bool)

(assert (=> d!2316480 (=> (not res!3031502) (not e!4505175))))

(assert (=> d!2316480 (= res!3031502 (= (content!15406 lt!2650295) ((_ map or) (content!15406 lt!2650098) (content!15406 lt!2650107))))))

(declare-fun e!4505176 () List!72868)

(assert (=> d!2316480 (= lt!2650295 e!4505176)))

(declare-fun c!1396175 () Bool)

(assert (=> d!2316480 (= c!1396175 ((_ is Nil!72744) lt!2650098))))

(assert (=> d!2316480 (= (++!17489 lt!2650098 lt!2650107) lt!2650295)))

(declare-fun b!7566482 () Bool)

(assert (=> b!7566482 (= e!4505175 (or (not (= lt!2650107 Nil!72744)) (= lt!2650295 lt!2650098)))))

(declare-fun b!7566480 () Bool)

(assert (=> b!7566480 (= e!4505176 (Cons!72744 (h!79192 lt!2650098) (++!17489 (t!387601 lt!2650098) lt!2650107)))))

(declare-fun b!7566479 () Bool)

(assert (=> b!7566479 (= e!4505176 lt!2650107)))

(assert (= (and d!2316480 c!1396175) b!7566479))

(assert (= (and d!2316480 (not c!1396175)) b!7566480))

(assert (= (and d!2316480 res!3031502) b!7566481))

(assert (= (and b!7566481 res!3031503) b!7566482))

(declare-fun m!8128882 () Bool)

(assert (=> b!7566481 m!8128882))

(declare-fun m!8128884 () Bool)

(assert (=> b!7566481 m!8128884))

(assert (=> b!7566481 m!8128858))

(declare-fun m!8128886 () Bool)

(assert (=> d!2316480 m!8128886))

(declare-fun m!8128888 () Bool)

(assert (=> d!2316480 m!8128888))

(assert (=> d!2316480 m!8128864))

(declare-fun m!8128890 () Bool)

(assert (=> b!7566480 m!8128890))

(assert (=> b!7566197 d!2316480))

(declare-fun d!2316482 () Bool)

(assert (=> d!2316482 (= (++!17489 (++!17489 testedP!423 lt!2650098) lt!2650107) (++!17489 testedP!423 (++!17489 lt!2650098 lt!2650107)))))

(declare-fun lt!2650298 () Unit!166904)

(declare-fun choose!58517 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> d!2316482 (= lt!2650298 (choose!58517 testedP!423 lt!2650098 lt!2650107))))

(assert (=> d!2316482 (= (lemmaConcatAssociativity!3124 testedP!423 lt!2650098 lt!2650107) lt!2650298)))

(declare-fun bs!1940482 () Bool)

(assert (= bs!1940482 d!2316482))

(declare-fun m!8128892 () Bool)

(assert (=> bs!1940482 m!8128892))

(assert (=> bs!1940482 m!8128482))

(assert (=> bs!1940482 m!8128482))

(declare-fun m!8128894 () Bool)

(assert (=> bs!1940482 m!8128894))

(assert (=> bs!1940482 m!8128564))

(assert (=> bs!1940482 m!8128564))

(declare-fun m!8128896 () Bool)

(assert (=> bs!1940482 m!8128896))

(assert (=> b!7566197 d!2316482))

(declare-fun b!7566535 () Bool)

(declare-fun e!4505203 () Bool)

(declare-fun e!4505205 () Bool)

(assert (=> b!7566535 (= e!4505203 e!4505205)))

(declare-fun res!3031526 () Bool)

(assert (=> b!7566535 (=> res!3031526 e!4505205)))

(declare-fun call!693702 () Bool)

(assert (=> b!7566535 (= res!3031526 call!693702)))

(declare-fun d!2316484 () Bool)

(declare-fun e!4505209 () Bool)

(assert (=> d!2316484 e!4505209))

(declare-fun c!1396195 () Bool)

(assert (=> d!2316484 (= c!1396195 ((_ is EmptyExpr!19985) r!24333))))

(declare-fun lt!2650357 () Bool)

(declare-fun e!4505204 () Bool)

(assert (=> d!2316484 (= lt!2650357 e!4505204)))

(declare-fun c!1396194 () Bool)

(assert (=> d!2316484 (= c!1396194 (isEmpty!41423 lt!2650099))))

(assert (=> d!2316484 (validRegex!10413 r!24333)))

(assert (=> d!2316484 (= (matchR!9587 r!24333 lt!2650099) lt!2650357)))

(declare-fun b!7566536 () Bool)

(declare-fun res!3031521 () Bool)

(assert (=> b!7566536 (=> res!3031521 e!4505205)))

(assert (=> b!7566536 (= res!3031521 (not (isEmpty!41423 (tail!15103 lt!2650099))))))

(declare-fun bm!693695 () Bool)

(assert (=> bm!693695 (= call!693702 (isEmpty!41423 lt!2650099))))

(declare-fun b!7566537 () Bool)

(assert (=> b!7566537 (= e!4505204 (matchR!9587 (derivativeStep!5763 r!24333 (head!15563 lt!2650099)) (tail!15103 lt!2650099)))))

(declare-fun b!7566538 () Bool)

(declare-fun e!4505206 () Bool)

(assert (=> b!7566538 (= e!4505209 e!4505206)))

(declare-fun c!1396196 () Bool)

(assert (=> b!7566538 (= c!1396196 ((_ is EmptyLang!19985) r!24333))))

(declare-fun b!7566539 () Bool)

(assert (=> b!7566539 (= e!4505206 (not lt!2650357))))

(declare-fun b!7566540 () Bool)

(assert (=> b!7566540 (= e!4505209 (= lt!2650357 call!693702))))

(declare-fun b!7566541 () Bool)

(declare-fun res!3031523 () Bool)

(declare-fun e!4505208 () Bool)

(assert (=> b!7566541 (=> (not res!3031523) (not e!4505208))))

(assert (=> b!7566541 (= res!3031523 (isEmpty!41423 (tail!15103 lt!2650099)))))

(declare-fun b!7566542 () Bool)

(declare-fun res!3031520 () Bool)

(assert (=> b!7566542 (=> (not res!3031520) (not e!4505208))))

(assert (=> b!7566542 (= res!3031520 (not call!693702))))

(declare-fun b!7566543 () Bool)

(declare-fun res!3031527 () Bool)

(declare-fun e!4505207 () Bool)

(assert (=> b!7566543 (=> res!3031527 e!4505207)))

(assert (=> b!7566543 (= res!3031527 (not ((_ is ElementMatch!19985) r!24333)))))

(assert (=> b!7566543 (= e!4505206 e!4505207)))

(declare-fun b!7566544 () Bool)

(assert (=> b!7566544 (= e!4505205 (not (= (head!15563 lt!2650099) (c!1396094 r!24333))))))

(declare-fun b!7566545 () Bool)

(assert (=> b!7566545 (= e!4505204 (nullable!8719 r!24333))))

(declare-fun b!7566546 () Bool)

(declare-fun res!3031525 () Bool)

(assert (=> b!7566546 (=> res!3031525 e!4505207)))

(assert (=> b!7566546 (= res!3031525 e!4505208)))

(declare-fun res!3031522 () Bool)

(assert (=> b!7566546 (=> (not res!3031522) (not e!4505208))))

(assert (=> b!7566546 (= res!3031522 lt!2650357)))

(declare-fun b!7566547 () Bool)

(assert (=> b!7566547 (= e!4505208 (= (head!15563 lt!2650099) (c!1396094 r!24333)))))

(declare-fun b!7566548 () Bool)

(assert (=> b!7566548 (= e!4505207 e!4505203)))

(declare-fun res!3031524 () Bool)

(assert (=> b!7566548 (=> (not res!3031524) (not e!4505203))))

(assert (=> b!7566548 (= res!3031524 (not lt!2650357))))

(assert (= (and d!2316484 c!1396194) b!7566545))

(assert (= (and d!2316484 (not c!1396194)) b!7566537))

(assert (= (and d!2316484 c!1396195) b!7566540))

(assert (= (and d!2316484 (not c!1396195)) b!7566538))

(assert (= (and b!7566538 c!1396196) b!7566539))

(assert (= (and b!7566538 (not c!1396196)) b!7566543))

(assert (= (and b!7566543 (not res!3031527)) b!7566546))

(assert (= (and b!7566546 res!3031522) b!7566542))

(assert (= (and b!7566542 res!3031520) b!7566541))

(assert (= (and b!7566541 res!3031523) b!7566547))

(assert (= (and b!7566546 (not res!3031525)) b!7566548))

(assert (= (and b!7566548 res!3031524) b!7566535))

(assert (= (and b!7566535 (not res!3031526)) b!7566536))

(assert (= (and b!7566536 (not res!3031521)) b!7566544))

(assert (= (or b!7566540 b!7566535 b!7566542) bm!693695))

(assert (=> b!7566536 m!8128498))

(assert (=> b!7566536 m!8128498))

(declare-fun m!8128898 () Bool)

(assert (=> b!7566536 m!8128898))

(assert (=> b!7566545 m!8128782))

(assert (=> b!7566537 m!8128512))

(assert (=> b!7566537 m!8128512))

(declare-fun m!8128900 () Bool)

(assert (=> b!7566537 m!8128900))

(assert (=> b!7566537 m!8128498))

(assert (=> b!7566537 m!8128900))

(assert (=> b!7566537 m!8128498))

(declare-fun m!8128902 () Bool)

(assert (=> b!7566537 m!8128902))

(assert (=> b!7566544 m!8128512))

(declare-fun m!8128904 () Bool)

(assert (=> d!2316484 m!8128904))

(assert (=> d!2316484 m!8128526))

(assert (=> b!7566547 m!8128512))

(assert (=> b!7566541 m!8128498))

(assert (=> b!7566541 m!8128498))

(assert (=> b!7566541 m!8128898))

(assert (=> bm!693695 m!8128904))

(assert (=> b!7566218 d!2316484))

(declare-fun d!2316486 () Bool)

(declare-fun lt!2650358 () List!72868)

(assert (=> d!2316486 (= (++!17489 testedP!423 lt!2650358) knownP!30)))

(declare-fun e!4505210 () List!72868)

(assert (=> d!2316486 (= lt!2650358 e!4505210)))

(declare-fun c!1396197 () Bool)

(assert (=> d!2316486 (= c!1396197 ((_ is Cons!72744) testedP!423))))

(assert (=> d!2316486 (>= (size!42481 knownP!30) (size!42481 testedP!423))))

(assert (=> d!2316486 (= (getSuffix!3669 knownP!30 testedP!423) lt!2650358)))

(declare-fun b!7566549 () Bool)

(assert (=> b!7566549 (= e!4505210 (getSuffix!3669 (tail!15103 knownP!30) (t!387601 testedP!423)))))

(declare-fun b!7566550 () Bool)

(assert (=> b!7566550 (= e!4505210 knownP!30)))

(assert (= (and d!2316486 c!1396197) b!7566549))

(assert (= (and d!2316486 (not c!1396197)) b!7566550))

(declare-fun m!8128906 () Bool)

(assert (=> d!2316486 m!8128906))

(assert (=> d!2316486 m!8128474))

(assert (=> d!2316486 m!8128472))

(declare-fun m!8128908 () Bool)

(assert (=> b!7566549 m!8128908))

(assert (=> b!7566549 m!8128908))

(declare-fun m!8128910 () Bool)

(assert (=> b!7566549 m!8128910))

(assert (=> b!7566218 d!2316486))

(declare-fun b!7566566 () Bool)

(declare-fun e!4505222 () Bool)

(assert (=> b!7566566 (= e!4505222 (>= (size!42481 knownP!30) (size!42481 testedP!423)))))

(declare-fun b!7566563 () Bool)

(declare-fun e!4505221 () Bool)

(declare-fun e!4505223 () Bool)

(assert (=> b!7566563 (= e!4505221 e!4505223)))

(declare-fun res!3031540 () Bool)

(assert (=> b!7566563 (=> (not res!3031540) (not e!4505223))))

(assert (=> b!7566563 (= res!3031540 (not ((_ is Nil!72744) knownP!30)))))

(declare-fun d!2316488 () Bool)

(assert (=> d!2316488 e!4505222))

(declare-fun res!3031542 () Bool)

(assert (=> d!2316488 (=> res!3031542 e!4505222)))

(declare-fun lt!2650361 () Bool)

(assert (=> d!2316488 (= res!3031542 (not lt!2650361))))

(assert (=> d!2316488 (= lt!2650361 e!4505221)))

(declare-fun res!3031543 () Bool)

(assert (=> d!2316488 (=> res!3031543 e!4505221)))

(assert (=> d!2316488 (= res!3031543 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316488 (= (isPrefix!6191 testedP!423 knownP!30) lt!2650361)))

(declare-fun b!7566565 () Bool)

(assert (=> b!7566565 (= e!4505223 (isPrefix!6191 (tail!15103 testedP!423) (tail!15103 knownP!30)))))

(declare-fun b!7566564 () Bool)

(declare-fun res!3031541 () Bool)

(assert (=> b!7566564 (=> (not res!3031541) (not e!4505223))))

(assert (=> b!7566564 (= res!3031541 (= (head!15563 testedP!423) (head!15563 knownP!30)))))

(assert (= (and d!2316488 (not res!3031543)) b!7566563))

(assert (= (and b!7566563 res!3031540) b!7566564))

(assert (= (and b!7566564 res!3031541) b!7566565))

(assert (= (and d!2316488 (not res!3031542)) b!7566566))

(assert (=> b!7566566 m!8128474))

(assert (=> b!7566566 m!8128472))

(declare-fun m!8128912 () Bool)

(assert (=> b!7566565 m!8128912))

(assert (=> b!7566565 m!8128908))

(assert (=> b!7566565 m!8128912))

(assert (=> b!7566565 m!8128908))

(declare-fun m!8128914 () Bool)

(assert (=> b!7566565 m!8128914))

(declare-fun m!8128916 () Bool)

(assert (=> b!7566564 m!8128916))

(declare-fun m!8128918 () Bool)

(assert (=> b!7566564 m!8128918))

(assert (=> b!7566218 d!2316488))

(declare-fun d!2316490 () Bool)

(assert (=> d!2316490 (isPrefix!6191 testedP!423 knownP!30)))

(declare-fun lt!2650364 () Unit!166904)

(declare-fun choose!58519 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> d!2316490 (= lt!2650364 (choose!58519 knownP!30 testedP!423 input!7874))))

(assert (=> d!2316490 (isPrefix!6191 knownP!30 input!7874)))

(assert (=> d!2316490 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!939 knownP!30 testedP!423 input!7874) lt!2650364)))

(declare-fun bs!1940483 () Bool)

(assert (= bs!1940483 d!2316490))

(assert (=> bs!1940483 m!8128504))

(declare-fun m!8128920 () Bool)

(assert (=> bs!1940483 m!8128920))

(assert (=> bs!1940483 m!8128488))

(assert (=> b!7566218 d!2316490))

(declare-fun b!7566570 () Bool)

(declare-fun e!4505225 () Bool)

(assert (=> b!7566570 (= e!4505225 (>= (size!42481 input!7874) (size!42481 knownP!30)))))

(declare-fun b!7566567 () Bool)

(declare-fun e!4505224 () Bool)

(declare-fun e!4505226 () Bool)

(assert (=> b!7566567 (= e!4505224 e!4505226)))

(declare-fun res!3031544 () Bool)

(assert (=> b!7566567 (=> (not res!3031544) (not e!4505226))))

(assert (=> b!7566567 (= res!3031544 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316492 () Bool)

(assert (=> d!2316492 e!4505225))

(declare-fun res!3031546 () Bool)

(assert (=> d!2316492 (=> res!3031546 e!4505225)))

(declare-fun lt!2650365 () Bool)

(assert (=> d!2316492 (= res!3031546 (not lt!2650365))))

(assert (=> d!2316492 (= lt!2650365 e!4505224)))

(declare-fun res!3031547 () Bool)

(assert (=> d!2316492 (=> res!3031547 e!4505224)))

(assert (=> d!2316492 (= res!3031547 ((_ is Nil!72744) knownP!30))))

(assert (=> d!2316492 (= (isPrefix!6191 knownP!30 input!7874) lt!2650365)))

(declare-fun b!7566569 () Bool)

(assert (=> b!7566569 (= e!4505226 (isPrefix!6191 (tail!15103 knownP!30) (tail!15103 input!7874)))))

(declare-fun b!7566568 () Bool)

(declare-fun res!3031545 () Bool)

(assert (=> b!7566568 (=> (not res!3031545) (not e!4505226))))

(assert (=> b!7566568 (= res!3031545 (= (head!15563 knownP!30) (head!15563 input!7874)))))

(assert (= (and d!2316492 (not res!3031547)) b!7566567))

(assert (= (and b!7566567 res!3031544) b!7566568))

(assert (= (and b!7566568 res!3031545) b!7566569))

(assert (= (and d!2316492 (not res!3031546)) b!7566570))

(assert (=> b!7566570 m!8128476))

(assert (=> b!7566570 m!8128474))

(assert (=> b!7566569 m!8128908))

(assert (=> b!7566569 m!8128796))

(assert (=> b!7566569 m!8128908))

(assert (=> b!7566569 m!8128796))

(declare-fun m!8128922 () Bool)

(assert (=> b!7566569 m!8128922))

(assert (=> b!7566568 m!8128918))

(declare-fun m!8128924 () Bool)

(assert (=> b!7566568 m!8128924))

(assert (=> b!7566207 d!2316492))

(declare-fun b!7566574 () Bool)

(declare-fun e!4505228 () Bool)

(assert (=> b!7566574 (= e!4505228 (>= (size!42481 input!7874) (size!42481 testedP!423)))))

(declare-fun b!7566571 () Bool)

(declare-fun e!4505227 () Bool)

(declare-fun e!4505229 () Bool)

(assert (=> b!7566571 (= e!4505227 e!4505229)))

(declare-fun res!3031548 () Bool)

(assert (=> b!7566571 (=> (not res!3031548) (not e!4505229))))

(assert (=> b!7566571 (= res!3031548 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316494 () Bool)

(assert (=> d!2316494 e!4505228))

(declare-fun res!3031550 () Bool)

(assert (=> d!2316494 (=> res!3031550 e!4505228)))

(declare-fun lt!2650366 () Bool)

(assert (=> d!2316494 (= res!3031550 (not lt!2650366))))

(assert (=> d!2316494 (= lt!2650366 e!4505227)))

(declare-fun res!3031551 () Bool)

(assert (=> d!2316494 (=> res!3031551 e!4505227)))

(assert (=> d!2316494 (= res!3031551 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316494 (= (isPrefix!6191 testedP!423 input!7874) lt!2650366)))

(declare-fun b!7566573 () Bool)

(assert (=> b!7566573 (= e!4505229 (isPrefix!6191 (tail!15103 testedP!423) (tail!15103 input!7874)))))

(declare-fun b!7566572 () Bool)

(declare-fun res!3031549 () Bool)

(assert (=> b!7566572 (=> (not res!3031549) (not e!4505229))))

(assert (=> b!7566572 (= res!3031549 (= (head!15563 testedP!423) (head!15563 input!7874)))))

(assert (= (and d!2316494 (not res!3031551)) b!7566571))

(assert (= (and b!7566571 res!3031548) b!7566572))

(assert (= (and b!7566572 res!3031549) b!7566573))

(assert (= (and d!2316494 (not res!3031550)) b!7566574))

(assert (=> b!7566574 m!8128476))

(assert (=> b!7566574 m!8128472))

(assert (=> b!7566573 m!8128912))

(assert (=> b!7566573 m!8128796))

(assert (=> b!7566573 m!8128912))

(assert (=> b!7566573 m!8128796))

(declare-fun m!8128926 () Bool)

(assert (=> b!7566573 m!8128926))

(assert (=> b!7566572 m!8128916))

(assert (=> b!7566572 m!8128924))

(assert (=> b!7566196 d!2316494))

(declare-fun b!7566577 () Bool)

(declare-fun res!3031553 () Bool)

(declare-fun e!4505230 () Bool)

(assert (=> b!7566577 (=> (not res!3031553) (not e!4505230))))

(declare-fun lt!2650367 () List!72868)

(assert (=> b!7566577 (= res!3031553 (= (size!42481 lt!2650367) (+ (size!42481 testedP!423) (size!42481 lt!2650115))))))

(declare-fun d!2316496 () Bool)

(assert (=> d!2316496 e!4505230))

(declare-fun res!3031552 () Bool)

(assert (=> d!2316496 (=> (not res!3031552) (not e!4505230))))

(assert (=> d!2316496 (= res!3031552 (= (content!15406 lt!2650367) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650115))))))

(declare-fun e!4505231 () List!72868)

(assert (=> d!2316496 (= lt!2650367 e!4505231)))

(declare-fun c!1396198 () Bool)

(assert (=> d!2316496 (= c!1396198 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316496 (= (++!17489 testedP!423 lt!2650115) lt!2650367)))

(declare-fun b!7566578 () Bool)

(assert (=> b!7566578 (= e!4505230 (or (not (= lt!2650115 Nil!72744)) (= lt!2650367 testedP!423)))))

(declare-fun b!7566576 () Bool)

(assert (=> b!7566576 (= e!4505231 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650115)))))

(declare-fun b!7566575 () Bool)

(assert (=> b!7566575 (= e!4505231 lt!2650115)))

(assert (= (and d!2316496 c!1396198) b!7566575))

(assert (= (and d!2316496 (not c!1396198)) b!7566576))

(assert (= (and d!2316496 res!3031552) b!7566577))

(assert (= (and b!7566577 res!3031553) b!7566578))

(declare-fun m!8128928 () Bool)

(assert (=> b!7566577 m!8128928))

(assert (=> b!7566577 m!8128472))

(declare-fun m!8128930 () Bool)

(assert (=> b!7566577 m!8128930))

(declare-fun m!8128932 () Bool)

(assert (=> d!2316496 m!8128932))

(assert (=> d!2316496 m!8128876))

(declare-fun m!8128934 () Bool)

(assert (=> d!2316496 m!8128934))

(declare-fun m!8128936 () Bool)

(assert (=> b!7566576 m!8128936))

(assert (=> b!7566217 d!2316496))

(declare-fun d!2316498 () Bool)

(assert (=> d!2316498 (= ($colon$colon!3413 lt!2650113 lt!2650090) (Cons!72744 lt!2650090 lt!2650113))))

(assert (=> b!7566204 d!2316498))

(declare-fun d!2316500 () Bool)

(assert (=> d!2316500 (= (tail!15103 lt!2650099) (t!387601 lt!2650099))))

(assert (=> b!7566204 d!2316500))

(declare-fun b!7566595 () Bool)

(declare-fun res!3031557 () Bool)

(declare-fun e!4505240 () Bool)

(assert (=> b!7566595 (=> (not res!3031557) (not e!4505240))))

(declare-fun lt!2650396 () List!72868)

(assert (=> b!7566595 (= res!3031557 (= (size!42481 lt!2650396) (+ (size!42481 lt!2650108) (size!42481 lt!2650116))))))

(declare-fun d!2316502 () Bool)

(assert (=> d!2316502 e!4505240))

(declare-fun res!3031556 () Bool)

(assert (=> d!2316502 (=> (not res!3031556) (not e!4505240))))

(assert (=> d!2316502 (= res!3031556 (= (content!15406 lt!2650396) ((_ map or) (content!15406 lt!2650108) (content!15406 lt!2650116))))))

(declare-fun e!4505241 () List!72868)

(assert (=> d!2316502 (= lt!2650396 e!4505241)))

(declare-fun c!1396205 () Bool)

(assert (=> d!2316502 (= c!1396205 ((_ is Nil!72744) lt!2650108))))

(assert (=> d!2316502 (= (++!17489 lt!2650108 lt!2650116) lt!2650396)))

(declare-fun b!7566596 () Bool)

(assert (=> b!7566596 (= e!4505240 (or (not (= lt!2650116 Nil!72744)) (= lt!2650396 lt!2650108)))))

(declare-fun b!7566594 () Bool)

(assert (=> b!7566594 (= e!4505241 (Cons!72744 (h!79192 lt!2650108) (++!17489 (t!387601 lt!2650108) lt!2650116)))))

(declare-fun b!7566593 () Bool)

(assert (=> b!7566593 (= e!4505241 lt!2650116)))

(assert (= (and d!2316502 c!1396205) b!7566593))

(assert (= (and d!2316502 (not c!1396205)) b!7566594))

(assert (= (and d!2316502 res!3031556) b!7566595))

(assert (= (and b!7566595 res!3031557) b!7566596))

(declare-fun m!8128938 () Bool)

(assert (=> b!7566595 m!8128938))

(declare-fun m!8128940 () Bool)

(assert (=> b!7566595 m!8128940))

(declare-fun m!8128942 () Bool)

(assert (=> b!7566595 m!8128942))

(declare-fun m!8128944 () Bool)

(assert (=> d!2316502 m!8128944))

(declare-fun m!8128946 () Bool)

(assert (=> d!2316502 m!8128946))

(declare-fun m!8128948 () Bool)

(assert (=> d!2316502 m!8128948))

(declare-fun m!8128950 () Bool)

(assert (=> b!7566594 m!8128950))

(assert (=> b!7566193 d!2316502))

(declare-fun b!7566599 () Bool)

(declare-fun res!3031559 () Bool)

(declare-fun e!4505242 () Bool)

(assert (=> b!7566599 (=> (not res!3031559) (not e!4505242))))

(declare-fun lt!2650397 () List!72868)

(assert (=> b!7566599 (= res!3031559 (= (size!42481 lt!2650397) (+ (size!42481 testedP!423) (size!42481 lt!2650099))))))

(declare-fun d!2316504 () Bool)

(assert (=> d!2316504 e!4505242))

(declare-fun res!3031558 () Bool)

(assert (=> d!2316504 (=> (not res!3031558) (not e!4505242))))

(assert (=> d!2316504 (= res!3031558 (= (content!15406 lt!2650397) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650099))))))

(declare-fun e!4505243 () List!72868)

(assert (=> d!2316504 (= lt!2650397 e!4505243)))

(declare-fun c!1396206 () Bool)

(assert (=> d!2316504 (= c!1396206 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316504 (= (++!17489 testedP!423 lt!2650099) lt!2650397)))

(declare-fun b!7566600 () Bool)

(assert (=> b!7566600 (= e!4505242 (or (not (= lt!2650099 Nil!72744)) (= lt!2650397 testedP!423)))))

(declare-fun b!7566598 () Bool)

(assert (=> b!7566598 (= e!4505243 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650099)))))

(declare-fun b!7566597 () Bool)

(assert (=> b!7566597 (= e!4505243 lt!2650099)))

(assert (= (and d!2316504 c!1396206) b!7566597))

(assert (= (and d!2316504 (not c!1396206)) b!7566598))

(assert (= (and d!2316504 res!3031558) b!7566599))

(assert (= (and b!7566599 res!3031559) b!7566600))

(declare-fun m!8128952 () Bool)

(assert (=> b!7566599 m!8128952))

(assert (=> b!7566599 m!8128472))

(declare-fun m!8128954 () Bool)

(assert (=> b!7566599 m!8128954))

(declare-fun m!8128956 () Bool)

(assert (=> d!2316504 m!8128956))

(assert (=> d!2316504 m!8128876))

(declare-fun m!8128958 () Bool)

(assert (=> d!2316504 m!8128958))

(declare-fun m!8128960 () Bool)

(assert (=> b!7566598 m!8128960))

(assert (=> b!7566193 d!2316504))

(declare-fun d!2316506 () Bool)

(assert (=> d!2316506 (= (head!15563 lt!2650099) (h!79192 lt!2650099))))

(assert (=> b!7566203 d!2316506))

(declare-fun d!2316508 () Bool)

(assert (=> d!2316508 (= lt!2650101 lt!2650115)))

(declare-fun lt!2650398 () Unit!166904)

(assert (=> d!2316508 (= lt!2650398 (choose!58516 testedP!423 lt!2650101 testedP!423 lt!2650115 input!7874))))

(assert (=> d!2316508 (isPrefix!6191 testedP!423 input!7874)))

(assert (=> d!2316508 (= (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650101 testedP!423 lt!2650115 input!7874) lt!2650398)))

(declare-fun bs!1940484 () Bool)

(assert (= bs!1940484 d!2316508))

(declare-fun m!8128986 () Bool)

(assert (=> bs!1940484 m!8128986))

(assert (=> bs!1940484 m!8128490))

(assert (=> b!7566203 d!2316508))

(declare-fun bm!693720 () Bool)

(declare-fun call!693726 () Bool)

(declare-fun c!1396223 () Bool)

(assert (=> bm!693720 (= call!693726 (validRegex!10413 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))

(declare-fun b!7566651 () Bool)

(declare-fun e!4505283 () Bool)

(declare-fun e!4505277 () Bool)

(assert (=> b!7566651 (= e!4505283 e!4505277)))

(assert (=> b!7566651 (= c!1396223 ((_ is Union!19985) baseR!101))))

(declare-fun b!7566652 () Bool)

(declare-fun e!4505279 () Bool)

(assert (=> b!7566652 (= e!4505283 e!4505279)))

(declare-fun res!3031582 () Bool)

(assert (=> b!7566652 (= res!3031582 (not (nullable!8719 (reg!20314 baseR!101))))))

(assert (=> b!7566652 (=> (not res!3031582) (not e!4505279))))

(declare-fun b!7566653 () Bool)

(declare-fun res!3031581 () Bool)

(declare-fun e!4505282 () Bool)

(assert (=> b!7566653 (=> res!3031581 e!4505282)))

(assert (=> b!7566653 (= res!3031581 (not ((_ is Concat!28830) baseR!101)))))

(assert (=> b!7566653 (= e!4505277 e!4505282)))

(declare-fun b!7566654 () Bool)

(declare-fun e!4505281 () Bool)

(assert (=> b!7566654 (= e!4505282 e!4505281)))

(declare-fun res!3031583 () Bool)

(assert (=> b!7566654 (=> (not res!3031583) (not e!4505281))))

(assert (=> b!7566654 (= res!3031583 call!693726)))

(declare-fun b!7566655 () Bool)

(declare-fun call!693725 () Bool)

(assert (=> b!7566655 (= e!4505281 call!693725)))

(declare-fun b!7566656 () Bool)

(declare-fun e!4505280 () Bool)

(assert (=> b!7566656 (= e!4505280 call!693725)))

(declare-fun b!7566657 () Bool)

(declare-fun call!693727 () Bool)

(assert (=> b!7566657 (= e!4505279 call!693727)))

(declare-fun b!7566658 () Bool)

(declare-fun res!3031584 () Bool)

(assert (=> b!7566658 (=> (not res!3031584) (not e!4505280))))

(assert (=> b!7566658 (= res!3031584 call!693726)))

(assert (=> b!7566658 (= e!4505277 e!4505280)))

(declare-fun b!7566659 () Bool)

(declare-fun e!4505278 () Bool)

(assert (=> b!7566659 (= e!4505278 e!4505283)))

(declare-fun c!1396222 () Bool)

(assert (=> b!7566659 (= c!1396222 ((_ is Star!19985) baseR!101))))

(declare-fun bm!693721 () Bool)

(assert (=> bm!693721 (= call!693727 (validRegex!10413 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))

(declare-fun bm!693722 () Bool)

(assert (=> bm!693722 (= call!693725 call!693727)))

(declare-fun d!2316510 () Bool)

(declare-fun res!3031580 () Bool)

(assert (=> d!2316510 (=> res!3031580 e!4505278)))

(assert (=> d!2316510 (= res!3031580 ((_ is ElementMatch!19985) baseR!101))))

(assert (=> d!2316510 (= (validRegex!10413 baseR!101) e!4505278)))

(assert (= (and d!2316510 (not res!3031580)) b!7566659))

(assert (= (and b!7566659 c!1396222) b!7566652))

(assert (= (and b!7566659 (not c!1396222)) b!7566651))

(assert (= (and b!7566652 res!3031582) b!7566657))

(assert (= (and b!7566651 c!1396223) b!7566658))

(assert (= (and b!7566651 (not c!1396223)) b!7566653))

(assert (= (and b!7566658 res!3031584) b!7566656))

(assert (= (and b!7566653 (not res!3031581)) b!7566654))

(assert (= (and b!7566654 res!3031583) b!7566655))

(assert (= (or b!7566658 b!7566654) bm!693720))

(assert (= (or b!7566656 b!7566655) bm!693722))

(assert (= (or b!7566657 bm!693722) bm!693721))

(declare-fun m!8129082 () Bool)

(assert (=> bm!693720 m!8129082))

(declare-fun m!8129084 () Bool)

(assert (=> b!7566652 m!8129084))

(declare-fun m!8129088 () Bool)

(assert (=> bm!693721 m!8129088))

(assert (=> start!730852 d!2316510))

(declare-fun d!2316534 () Bool)

(declare-fun lt!2650436 () Int)

(assert (=> d!2316534 (>= lt!2650436 0)))

(declare-fun e!4505286 () Int)

(assert (=> d!2316534 (= lt!2650436 e!4505286)))

(declare-fun c!1396225 () Bool)

(assert (=> d!2316534 (= c!1396225 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316534 (= (size!42481 testedP!423) lt!2650436)))

(declare-fun b!7566664 () Bool)

(assert (=> b!7566664 (= e!4505286 0)))

(declare-fun b!7566665 () Bool)

(assert (=> b!7566665 (= e!4505286 (+ 1 (size!42481 (t!387601 testedP!423))))))

(assert (= (and d!2316534 c!1396225) b!7566664))

(assert (= (and d!2316534 (not c!1396225)) b!7566665))

(declare-fun m!8129096 () Bool)

(assert (=> b!7566665 m!8129096))

(assert (=> b!7566213 d!2316534))

(declare-fun d!2316538 () Bool)

(declare-fun lt!2650437 () Int)

(assert (=> d!2316538 (>= lt!2650437 0)))

(declare-fun e!4505287 () Int)

(assert (=> d!2316538 (= lt!2650437 e!4505287)))

(declare-fun c!1396226 () Bool)

(assert (=> d!2316538 (= c!1396226 ((_ is Nil!72744) knownP!30))))

(assert (=> d!2316538 (= (size!42481 knownP!30) lt!2650437)))

(declare-fun b!7566666 () Bool)

(assert (=> b!7566666 (= e!4505287 0)))

(declare-fun b!7566667 () Bool)

(assert (=> b!7566667 (= e!4505287 (+ 1 (size!42481 (t!387601 knownP!30))))))

(assert (= (and d!2316538 c!1396226) b!7566666))

(assert (= (and d!2316538 (not c!1396226)) b!7566667))

(declare-fun m!8129098 () Bool)

(assert (=> b!7566667 m!8129098))

(assert (=> b!7566213 d!2316538))

(declare-fun d!2316540 () Bool)

(declare-fun lt!2650438 () List!72868)

(assert (=> d!2316540 (= (++!17489 lt!2650100 lt!2650438) knownP!30)))

(declare-fun e!4505288 () List!72868)

(assert (=> d!2316540 (= lt!2650438 e!4505288)))

(declare-fun c!1396227 () Bool)

(assert (=> d!2316540 (= c!1396227 ((_ is Cons!72744) lt!2650100))))

(assert (=> d!2316540 (>= (size!42481 knownP!30) (size!42481 lt!2650100))))

(assert (=> d!2316540 (= (getSuffix!3669 knownP!30 lt!2650100) lt!2650438)))

(declare-fun b!7566668 () Bool)

(assert (=> b!7566668 (= e!4505288 (getSuffix!3669 (tail!15103 knownP!30) (t!387601 lt!2650100)))))

(declare-fun b!7566669 () Bool)

(assert (=> b!7566669 (= e!4505288 knownP!30)))

(assert (= (and d!2316540 c!1396227) b!7566668))

(assert (= (and d!2316540 (not c!1396227)) b!7566669))

(declare-fun m!8129100 () Bool)

(assert (=> d!2316540 m!8129100))

(assert (=> d!2316540 m!8128474))

(assert (=> d!2316540 m!8128538))

(assert (=> b!7566668 m!8128908))

(assert (=> b!7566668 m!8128908))

(declare-fun m!8129102 () Bool)

(assert (=> b!7566668 m!8129102))

(assert (=> b!7566202 d!2316540))

(declare-fun b!7566672 () Bool)

(declare-fun res!3031588 () Bool)

(declare-fun e!4505289 () Bool)

(assert (=> b!7566672 (=> (not res!3031588) (not e!4505289))))

(declare-fun lt!2650439 () List!72868)

(assert (=> b!7566672 (= res!3031588 (= (size!42481 lt!2650439) (+ (size!42481 testedP!423) (size!42481 lt!2650098))))))

(declare-fun d!2316542 () Bool)

(assert (=> d!2316542 e!4505289))

(declare-fun res!3031587 () Bool)

(assert (=> d!2316542 (=> (not res!3031587) (not e!4505289))))

(assert (=> d!2316542 (= res!3031587 (= (content!15406 lt!2650439) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650098))))))

(declare-fun e!4505290 () List!72868)

(assert (=> d!2316542 (= lt!2650439 e!4505290)))

(declare-fun c!1396228 () Bool)

(assert (=> d!2316542 (= c!1396228 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316542 (= (++!17489 testedP!423 lt!2650098) lt!2650439)))

(declare-fun b!7566673 () Bool)

(assert (=> b!7566673 (= e!4505289 (or (not (= lt!2650098 Nil!72744)) (= lt!2650439 testedP!423)))))

(declare-fun b!7566671 () Bool)

(assert (=> b!7566671 (= e!4505290 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650098)))))

(declare-fun b!7566670 () Bool)

(assert (=> b!7566670 (= e!4505290 lt!2650098)))

(assert (= (and d!2316542 c!1396228) b!7566670))

(assert (= (and d!2316542 (not c!1396228)) b!7566671))

(assert (= (and d!2316542 res!3031587) b!7566672))

(assert (= (and b!7566672 res!3031588) b!7566673))

(declare-fun m!8129104 () Bool)

(assert (=> b!7566672 m!8129104))

(assert (=> b!7566672 m!8128472))

(assert (=> b!7566672 m!8128884))

(declare-fun m!8129106 () Bool)

(assert (=> d!2316542 m!8129106))

(assert (=> d!2316542 m!8128876))

(assert (=> d!2316542 m!8128888))

(declare-fun m!8129108 () Bool)

(assert (=> b!7566671 m!8129108))

(assert (=> b!7566202 d!2316542))

(declare-fun d!2316544 () Bool)

(declare-fun lt!2650440 () Regex!19985)

(assert (=> d!2316544 (validRegex!10413 lt!2650440)))

(declare-fun e!4505291 () Regex!19985)

(assert (=> d!2316544 (= lt!2650440 e!4505291)))

(declare-fun c!1396229 () Bool)

(assert (=> d!2316544 (= c!1396229 ((_ is Cons!72744) lt!2650100))))

(assert (=> d!2316544 (validRegex!10413 baseR!101)))

(assert (=> d!2316544 (= (derivative!515 baseR!101 lt!2650100) lt!2650440)))

(declare-fun b!7566674 () Bool)

(assert (=> b!7566674 (= e!4505291 (derivative!515 (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)) (t!387601 lt!2650100)))))

(declare-fun b!7566675 () Bool)

(assert (=> b!7566675 (= e!4505291 baseR!101)))

(assert (= (and d!2316544 c!1396229) b!7566674))

(assert (= (and d!2316544 (not c!1396229)) b!7566675))

(declare-fun m!8129110 () Bool)

(assert (=> d!2316544 m!8129110))

(assert (=> d!2316544 m!8128518))

(declare-fun m!8129112 () Bool)

(assert (=> b!7566674 m!8129112))

(assert (=> b!7566674 m!8129112))

(declare-fun m!8129114 () Bool)

(assert (=> b!7566674 m!8129114))

(assert (=> b!7566202 d!2316544))

(declare-fun bm!693731 () Bool)

(declare-fun call!693738 () Regex!19985)

(declare-fun call!693739 () Regex!19985)

(assert (=> bm!693731 (= call!693738 call!693739)))

(declare-fun bm!693732 () Bool)

(declare-fun call!693736 () Regex!19985)

(assert (=> bm!693732 (= call!693736 call!693738)))

(declare-fun bm!693733 () Bool)

(declare-fun c!1396247 () Bool)

(declare-fun call!693737 () Regex!19985)

(assert (=> bm!693733 (= call!693737 (derivativeStep!5763 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)) lt!2650090))))

(declare-fun c!1396243 () Bool)

(declare-fun bm!693734 () Bool)

(assert (=> bm!693734 (= call!693739 (derivativeStep!5763 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))) lt!2650090))))

(declare-fun b!7566702 () Bool)

(assert (=> b!7566702 (= c!1396247 ((_ is Union!19985) r!24333))))

(declare-fun e!4505305 () Regex!19985)

(declare-fun e!4505309 () Regex!19985)

(assert (=> b!7566702 (= e!4505305 e!4505309)))

(declare-fun e!4505307 () Regex!19985)

(declare-fun b!7566703 () Bool)

(assert (=> b!7566703 (= e!4505307 (Union!19985 (Concat!28830 call!693736 (regTwo!40482 r!24333)) call!693737))))

(declare-fun b!7566704 () Bool)

(declare-fun e!4505306 () Regex!19985)

(assert (=> b!7566704 (= e!4505306 EmptyLang!19985)))

(declare-fun d!2316546 () Bool)

(declare-fun lt!2650451 () Regex!19985)

(assert (=> d!2316546 (validRegex!10413 lt!2650451)))

(assert (=> d!2316546 (= lt!2650451 e!4505306)))

(declare-fun c!1396244 () Bool)

(assert (=> d!2316546 (= c!1396244 (or ((_ is EmptyExpr!19985) r!24333) ((_ is EmptyLang!19985) r!24333)))))

(assert (=> d!2316546 (validRegex!10413 r!24333)))

(assert (=> d!2316546 (= (derivativeStep!5763 r!24333 lt!2650090) lt!2650451)))

(declare-fun b!7566705 () Bool)

(assert (=> b!7566705 (= e!4505305 (ite (= lt!2650090 (c!1396094 r!24333)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7566706 () Bool)

(assert (=> b!7566706 (= e!4505309 (Union!19985 call!693737 call!693739))))

(declare-fun b!7566707 () Bool)

(assert (=> b!7566707 (= e!4505307 (Union!19985 (Concat!28830 call!693736 (regTwo!40482 r!24333)) EmptyLang!19985))))

(declare-fun b!7566708 () Bool)

(declare-fun e!4505308 () Regex!19985)

(assert (=> b!7566708 (= e!4505308 (Concat!28830 call!693738 r!24333))))

(declare-fun b!7566709 () Bool)

(assert (=> b!7566709 (= e!4505306 e!4505305)))

(declare-fun c!1396246 () Bool)

(assert (=> b!7566709 (= c!1396246 ((_ is ElementMatch!19985) r!24333))))

(declare-fun b!7566710 () Bool)

(declare-fun c!1396245 () Bool)

(assert (=> b!7566710 (= c!1396245 (nullable!8719 (regOne!40482 r!24333)))))

(assert (=> b!7566710 (= e!4505308 e!4505307)))

(declare-fun b!7566711 () Bool)

(assert (=> b!7566711 (= e!4505309 e!4505308)))

(assert (=> b!7566711 (= c!1396243 ((_ is Star!19985) r!24333))))

(assert (= (and d!2316546 c!1396244) b!7566704))

(assert (= (and d!2316546 (not c!1396244)) b!7566709))

(assert (= (and b!7566709 c!1396246) b!7566705))

(assert (= (and b!7566709 (not c!1396246)) b!7566702))

(assert (= (and b!7566702 c!1396247) b!7566706))

(assert (= (and b!7566702 (not c!1396247)) b!7566711))

(assert (= (and b!7566711 c!1396243) b!7566708))

(assert (= (and b!7566711 (not c!1396243)) b!7566710))

(assert (= (and b!7566710 c!1396245) b!7566703))

(assert (= (and b!7566710 (not c!1396245)) b!7566707))

(assert (= (or b!7566703 b!7566707) bm!693732))

(assert (= (or b!7566708 bm!693732) bm!693731))

(assert (= (or b!7566706 bm!693731) bm!693734))

(assert (= (or b!7566706 b!7566703) bm!693733))

(declare-fun m!8129134 () Bool)

(assert (=> bm!693733 m!8129134))

(declare-fun m!8129136 () Bool)

(assert (=> bm!693734 m!8129136))

(declare-fun m!8129138 () Bool)

(assert (=> d!2316546 m!8129138))

(assert (=> d!2316546 m!8128526))

(declare-fun m!8129140 () Bool)

(assert (=> b!7566710 m!8129140))

(assert (=> b!7566202 d!2316546))

(declare-fun d!2316556 () Bool)

(declare-fun lt!2650454 () List!72868)

(assert (=> d!2316556 (= (++!17489 testedP!423 lt!2650454) input!7874)))

(declare-fun e!4505312 () List!72868)

(assert (=> d!2316556 (= lt!2650454 e!4505312)))

(declare-fun c!1396250 () Bool)

(assert (=> d!2316556 (= c!1396250 ((_ is Cons!72744) testedP!423))))

(assert (=> d!2316556 (>= (size!42481 input!7874) (size!42481 testedP!423))))

(assert (=> d!2316556 (= (getSuffix!3669 input!7874 testedP!423) lt!2650454)))

(declare-fun b!7566716 () Bool)

(assert (=> b!7566716 (= e!4505312 (getSuffix!3669 (tail!15103 input!7874) (t!387601 testedP!423)))))

(declare-fun b!7566717 () Bool)

(assert (=> b!7566717 (= e!4505312 input!7874)))

(assert (= (and d!2316556 c!1396250) b!7566716))

(assert (= (and d!2316556 (not c!1396250)) b!7566717))

(declare-fun m!8129142 () Bool)

(assert (=> d!2316556 m!8129142))

(assert (=> d!2316556 m!8128476))

(assert (=> d!2316556 m!8128472))

(assert (=> b!7566716 m!8128796))

(assert (=> b!7566716 m!8128796))

(declare-fun m!8129144 () Bool)

(assert (=> b!7566716 m!8129144))

(assert (=> b!7566202 d!2316556))

(declare-fun d!2316558 () Bool)

(assert (=> d!2316558 (= (head!15563 lt!2650115) (h!79192 lt!2650115))))

(assert (=> b!7566202 d!2316558))

(declare-fun d!2316560 () Bool)

(assert (=> d!2316560 (= (derivative!515 baseR!101 (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744))) (derivativeStep!5763 r!24333 lt!2650090))))

(declare-fun lt!2650457 () Unit!166904)

(declare-fun choose!58520 (Regex!19985 Regex!19985 List!72868 C!40296) Unit!166904)

(assert (=> d!2316560 (= lt!2650457 (choose!58520 baseR!101 r!24333 testedP!423 lt!2650090))))

(assert (=> d!2316560 (validRegex!10413 baseR!101)))

(assert (=> d!2316560 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!207 baseR!101 r!24333 testedP!423 lt!2650090) lt!2650457)))

(declare-fun bs!1940488 () Bool)

(assert (= bs!1940488 d!2316560))

(declare-fun m!8129146 () Bool)

(assert (=> bs!1940488 m!8129146))

(declare-fun m!8129148 () Bool)

(assert (=> bs!1940488 m!8129148))

(assert (=> bs!1940488 m!8129146))

(assert (=> bs!1940488 m!8128554))

(assert (=> bs!1940488 m!8128518))

(declare-fun m!8129150 () Bool)

(assert (=> bs!1940488 m!8129150))

(assert (=> b!7566202 d!2316560))

(declare-fun b!7566736 () Bool)

(declare-fun res!3031592 () Bool)

(declare-fun e!4505321 () Bool)

(assert (=> b!7566736 (=> (not res!3031592) (not e!4505321))))

(declare-fun lt!2650458 () List!72868)

(assert (=> b!7566736 (= res!3031592 (= (size!42481 lt!2650458) (+ (size!42481 knownP!30) (size!42481 lt!2650116))))))

(declare-fun d!2316562 () Bool)

(assert (=> d!2316562 e!4505321))

(declare-fun res!3031591 () Bool)

(assert (=> d!2316562 (=> (not res!3031591) (not e!4505321))))

(assert (=> d!2316562 (= res!3031591 (= (content!15406 lt!2650458) ((_ map or) (content!15406 knownP!30) (content!15406 lt!2650116))))))

(declare-fun e!4505322 () List!72868)

(assert (=> d!2316562 (= lt!2650458 e!4505322)))

(declare-fun c!1396260 () Bool)

(assert (=> d!2316562 (= c!1396260 ((_ is Nil!72744) knownP!30))))

(assert (=> d!2316562 (= (++!17489 knownP!30 lt!2650116) lt!2650458)))

(declare-fun b!7566737 () Bool)

(assert (=> b!7566737 (= e!4505321 (or (not (= lt!2650116 Nil!72744)) (= lt!2650458 knownP!30)))))

(declare-fun b!7566735 () Bool)

(assert (=> b!7566735 (= e!4505322 (Cons!72744 (h!79192 knownP!30) (++!17489 (t!387601 knownP!30) lt!2650116)))))

(declare-fun b!7566734 () Bool)

(assert (=> b!7566734 (= e!4505322 lt!2650116)))

(assert (= (and d!2316562 c!1396260) b!7566734))

(assert (= (and d!2316562 (not c!1396260)) b!7566735))

(assert (= (and d!2316562 res!3031591) b!7566736))

(assert (= (and b!7566736 res!3031592) b!7566737))

(declare-fun m!8129152 () Bool)

(assert (=> b!7566736 m!8129152))

(assert (=> b!7566736 m!8128474))

(assert (=> b!7566736 m!8128942))

(declare-fun m!8129154 () Bool)

(assert (=> d!2316562 m!8129154))

(declare-fun m!8129156 () Bool)

(assert (=> d!2316562 m!8129156))

(assert (=> d!2316562 m!8128948))

(declare-fun m!8129158 () Bool)

(assert (=> b!7566735 m!8129158))

(assert (=> b!7566202 d!2316562))

(declare-fun d!2316564 () Bool)

(assert (=> d!2316564 (isPrefix!6191 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)) input!7874)))

(declare-fun lt!2650462 () Unit!166904)

(declare-fun choose!58521 (List!72868 List!72868) Unit!166904)

(assert (=> d!2316564 (= lt!2650462 (choose!58521 testedP!423 input!7874))))

(assert (=> d!2316564 (isPrefix!6191 testedP!423 input!7874)))

(assert (=> d!2316564 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1240 testedP!423 input!7874) lt!2650462)))

(declare-fun bs!1940489 () Bool)

(assert (= bs!1940489 d!2316564))

(assert (=> bs!1940489 m!8128550))

(assert (=> bs!1940489 m!8128768))

(assert (=> bs!1940489 m!8128770))

(declare-fun m!8129174 () Bool)

(assert (=> bs!1940489 m!8129174))

(assert (=> bs!1940489 m!8128770))

(assert (=> bs!1940489 m!8128776))

(assert (=> bs!1940489 m!8128490))

(assert (=> bs!1940489 m!8128550))

(assert (=> b!7566202 d!2316564))

(declare-fun b!7566760 () Bool)

(declare-fun e!4505336 () Bool)

(assert (=> b!7566760 (= e!4505336 (>= (size!42481 knownP!30) (size!42481 lt!2650100)))))

(declare-fun b!7566757 () Bool)

(declare-fun e!4505335 () Bool)

(declare-fun e!4505337 () Bool)

(assert (=> b!7566757 (= e!4505335 e!4505337)))

(declare-fun res!3031598 () Bool)

(assert (=> b!7566757 (=> (not res!3031598) (not e!4505337))))

(assert (=> b!7566757 (= res!3031598 (not ((_ is Nil!72744) knownP!30)))))

(declare-fun d!2316570 () Bool)

(assert (=> d!2316570 e!4505336))

(declare-fun res!3031600 () Bool)

(assert (=> d!2316570 (=> res!3031600 e!4505336)))

(declare-fun lt!2650463 () Bool)

(assert (=> d!2316570 (= res!3031600 (not lt!2650463))))

(assert (=> d!2316570 (= lt!2650463 e!4505335)))

(declare-fun res!3031601 () Bool)

(assert (=> d!2316570 (=> res!3031601 e!4505335)))

(assert (=> d!2316570 (= res!3031601 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316570 (= (isPrefix!6191 lt!2650100 knownP!30) lt!2650463)))

(declare-fun b!7566759 () Bool)

(assert (=> b!7566759 (= e!4505337 (isPrefix!6191 (tail!15103 lt!2650100) (tail!15103 knownP!30)))))

(declare-fun b!7566758 () Bool)

(declare-fun res!3031599 () Bool)

(assert (=> b!7566758 (=> (not res!3031599) (not e!4505337))))

(assert (=> b!7566758 (= res!3031599 (= (head!15563 lt!2650100) (head!15563 knownP!30)))))

(assert (= (and d!2316570 (not res!3031601)) b!7566757))

(assert (= (and b!7566757 res!3031598) b!7566758))

(assert (= (and b!7566758 res!3031599) b!7566759))

(assert (= (and d!2316570 (not res!3031600)) b!7566760))

(assert (=> b!7566760 m!8128474))

(assert (=> b!7566760 m!8128538))

(declare-fun m!8129176 () Bool)

(assert (=> b!7566759 m!8129176))

(assert (=> b!7566759 m!8128908))

(assert (=> b!7566759 m!8129176))

(assert (=> b!7566759 m!8128908))

(declare-fun m!8129178 () Bool)

(assert (=> b!7566759 m!8129178))

(declare-fun m!8129180 () Bool)

(assert (=> b!7566758 m!8129180))

(assert (=> b!7566758 m!8128918))

(assert (=> b!7566202 d!2316570))

(declare-fun b!7566764 () Bool)

(declare-fun e!4505339 () Bool)

(assert (=> b!7566764 (= e!4505339 (>= (size!42481 input!7874) (size!42481 lt!2650100)))))

(declare-fun b!7566761 () Bool)

(declare-fun e!4505338 () Bool)

(declare-fun e!4505340 () Bool)

(assert (=> b!7566761 (= e!4505338 e!4505340)))

(declare-fun res!3031602 () Bool)

(assert (=> b!7566761 (=> (not res!3031602) (not e!4505340))))

(assert (=> b!7566761 (= res!3031602 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316572 () Bool)

(assert (=> d!2316572 e!4505339))

(declare-fun res!3031604 () Bool)

(assert (=> d!2316572 (=> res!3031604 e!4505339)))

(declare-fun lt!2650464 () Bool)

(assert (=> d!2316572 (= res!3031604 (not lt!2650464))))

(assert (=> d!2316572 (= lt!2650464 e!4505338)))

(declare-fun res!3031605 () Bool)

(assert (=> d!2316572 (=> res!3031605 e!4505338)))

(assert (=> d!2316572 (= res!3031605 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316572 (= (isPrefix!6191 lt!2650100 input!7874) lt!2650464)))

(declare-fun b!7566763 () Bool)

(assert (=> b!7566763 (= e!4505340 (isPrefix!6191 (tail!15103 lt!2650100) (tail!15103 input!7874)))))

(declare-fun b!7566762 () Bool)

(declare-fun res!3031603 () Bool)

(assert (=> b!7566762 (=> (not res!3031603) (not e!4505340))))

(assert (=> b!7566762 (= res!3031603 (= (head!15563 lt!2650100) (head!15563 input!7874)))))

(assert (= (and d!2316572 (not res!3031605)) b!7566761))

(assert (= (and b!7566761 res!3031602) b!7566762))

(assert (= (and b!7566762 res!3031603) b!7566763))

(assert (= (and d!2316572 (not res!3031604)) b!7566764))

(assert (=> b!7566764 m!8128476))

(assert (=> b!7566764 m!8128538))

(assert (=> b!7566763 m!8129176))

(assert (=> b!7566763 m!8128796))

(assert (=> b!7566763 m!8129176))

(assert (=> b!7566763 m!8128796))

(declare-fun m!8129184 () Bool)

(assert (=> b!7566763 m!8129184))

(assert (=> b!7566762 m!8129180))

(assert (=> b!7566762 m!8128924))

(assert (=> b!7566202 d!2316572))

(declare-fun d!2316576 () Bool)

(assert (=> d!2316576 (isPrefix!6191 lt!2650100 knownP!30)))

(declare-fun lt!2650466 () Unit!166904)

(assert (=> d!2316576 (= lt!2650466 (choose!58519 knownP!30 lt!2650100 input!7874))))

(assert (=> d!2316576 (isPrefix!6191 knownP!30 input!7874)))

(assert (=> d!2316576 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!939 knownP!30 lt!2650100 input!7874) lt!2650466)))

(declare-fun bs!1940491 () Bool)

(assert (= bs!1940491 d!2316576))

(assert (=> bs!1940491 m!8128560))

(declare-fun m!8129188 () Bool)

(assert (=> bs!1940491 m!8129188))

(assert (=> bs!1940491 m!8128488))

(assert (=> b!7566202 d!2316576))

(declare-fun d!2316578 () Bool)

(declare-fun lt!2650467 () List!72868)

(assert (=> d!2316578 (= (++!17489 knownP!30 lt!2650467) input!7874)))

(declare-fun e!4505344 () List!72868)

(assert (=> d!2316578 (= lt!2650467 e!4505344)))

(declare-fun c!1396268 () Bool)

(assert (=> d!2316578 (= c!1396268 ((_ is Cons!72744) knownP!30))))

(assert (=> d!2316578 (>= (size!42481 input!7874) (size!42481 knownP!30))))

(assert (=> d!2316578 (= (getSuffix!3669 input!7874 knownP!30) lt!2650467)))

(declare-fun b!7566769 () Bool)

(assert (=> b!7566769 (= e!4505344 (getSuffix!3669 (tail!15103 input!7874) (t!387601 knownP!30)))))

(declare-fun b!7566770 () Bool)

(assert (=> b!7566770 (= e!4505344 input!7874)))

(assert (= (and d!2316578 c!1396268) b!7566769))

(assert (= (and d!2316578 (not c!1396268)) b!7566770))

(declare-fun m!8129190 () Bool)

(assert (=> d!2316578 m!8129190))

(assert (=> d!2316578 m!8128476))

(assert (=> d!2316578 m!8128474))

(assert (=> b!7566769 m!8128796))

(assert (=> b!7566769 m!8128796))

(declare-fun m!8129192 () Bool)

(assert (=> b!7566769 m!8129192))

(assert (=> b!7566202 d!2316578))

(declare-fun b!7566777 () Bool)

(declare-fun e!4505347 () Bool)

(declare-fun e!4505349 () Bool)

(assert (=> b!7566777 (= e!4505347 e!4505349)))

(declare-fun res!3031616 () Bool)

(assert (=> b!7566777 (=> res!3031616 e!4505349)))

(declare-fun call!693755 () Bool)

(assert (=> b!7566777 (= res!3031616 call!693755)))

(declare-fun d!2316580 () Bool)

(declare-fun e!4505353 () Bool)

(assert (=> d!2316580 e!4505353))

(declare-fun c!1396270 () Bool)

(assert (=> d!2316580 (= c!1396270 ((_ is EmptyExpr!19985) baseR!101))))

(declare-fun lt!2650468 () Bool)

(declare-fun e!4505348 () Bool)

(assert (=> d!2316580 (= lt!2650468 e!4505348)))

(declare-fun c!1396269 () Bool)

(assert (=> d!2316580 (= c!1396269 (isEmpty!41423 knownP!30))))

(assert (=> d!2316580 (validRegex!10413 baseR!101)))

(assert (=> d!2316580 (= (matchR!9587 baseR!101 knownP!30) lt!2650468)))

(declare-fun b!7566778 () Bool)

(declare-fun res!3031611 () Bool)

(assert (=> b!7566778 (=> res!3031611 e!4505349)))

(assert (=> b!7566778 (= res!3031611 (not (isEmpty!41423 (tail!15103 knownP!30))))))

(declare-fun bm!693750 () Bool)

(assert (=> bm!693750 (= call!693755 (isEmpty!41423 knownP!30))))

(declare-fun b!7566781 () Bool)

(assert (=> b!7566781 (= e!4505348 (matchR!9587 (derivativeStep!5763 baseR!101 (head!15563 knownP!30)) (tail!15103 knownP!30)))))

(declare-fun b!7566782 () Bool)

(declare-fun e!4505350 () Bool)

(assert (=> b!7566782 (= e!4505353 e!4505350)))

(declare-fun c!1396271 () Bool)

(assert (=> b!7566782 (= c!1396271 ((_ is EmptyLang!19985) baseR!101))))

(declare-fun b!7566783 () Bool)

(assert (=> b!7566783 (= e!4505350 (not lt!2650468))))

(declare-fun b!7566784 () Bool)

(assert (=> b!7566784 (= e!4505353 (= lt!2650468 call!693755))))

(declare-fun b!7566785 () Bool)

(declare-fun res!3031613 () Bool)

(declare-fun e!4505352 () Bool)

(assert (=> b!7566785 (=> (not res!3031613) (not e!4505352))))

(assert (=> b!7566785 (= res!3031613 (isEmpty!41423 (tail!15103 knownP!30)))))

(declare-fun b!7566786 () Bool)

(declare-fun res!3031610 () Bool)

(assert (=> b!7566786 (=> (not res!3031610) (not e!4505352))))

(assert (=> b!7566786 (= res!3031610 (not call!693755))))

(declare-fun b!7566787 () Bool)

(declare-fun res!3031617 () Bool)

(declare-fun e!4505351 () Bool)

(assert (=> b!7566787 (=> res!3031617 e!4505351)))

(assert (=> b!7566787 (= res!3031617 (not ((_ is ElementMatch!19985) baseR!101)))))

(assert (=> b!7566787 (= e!4505350 e!4505351)))

(declare-fun b!7566788 () Bool)

(assert (=> b!7566788 (= e!4505349 (not (= (head!15563 knownP!30) (c!1396094 baseR!101))))))

(declare-fun b!7566789 () Bool)

(assert (=> b!7566789 (= e!4505348 (nullable!8719 baseR!101))))

(declare-fun b!7566790 () Bool)

(declare-fun res!3031615 () Bool)

(assert (=> b!7566790 (=> res!3031615 e!4505351)))

(assert (=> b!7566790 (= res!3031615 e!4505352)))

(declare-fun res!3031612 () Bool)

(assert (=> b!7566790 (=> (not res!3031612) (not e!4505352))))

(assert (=> b!7566790 (= res!3031612 lt!2650468)))

(declare-fun b!7566791 () Bool)

(assert (=> b!7566791 (= e!4505352 (= (head!15563 knownP!30) (c!1396094 baseR!101)))))

(declare-fun b!7566792 () Bool)

(assert (=> b!7566792 (= e!4505351 e!4505347)))

(declare-fun res!3031614 () Bool)

(assert (=> b!7566792 (=> (not res!3031614) (not e!4505347))))

(assert (=> b!7566792 (= res!3031614 (not lt!2650468))))

(assert (= (and d!2316580 c!1396269) b!7566789))

(assert (= (and d!2316580 (not c!1396269)) b!7566781))

(assert (= (and d!2316580 c!1396270) b!7566784))

(assert (= (and d!2316580 (not c!1396270)) b!7566782))

(assert (= (and b!7566782 c!1396271) b!7566783))

(assert (= (and b!7566782 (not c!1396271)) b!7566787))

(assert (= (and b!7566787 (not res!3031617)) b!7566790))

(assert (= (and b!7566790 res!3031612) b!7566786))

(assert (= (and b!7566786 res!3031610) b!7566785))

(assert (= (and b!7566785 res!3031613) b!7566791))

(assert (= (and b!7566790 (not res!3031615)) b!7566792))

(assert (= (and b!7566792 res!3031614) b!7566777))

(assert (= (and b!7566777 (not res!3031616)) b!7566778))

(assert (= (and b!7566778 (not res!3031611)) b!7566788))

(assert (= (or b!7566784 b!7566777 b!7566786) bm!693750))

(assert (=> b!7566778 m!8128908))

(assert (=> b!7566778 m!8128908))

(declare-fun m!8129194 () Bool)

(assert (=> b!7566778 m!8129194))

(declare-fun m!8129196 () Bool)

(assert (=> b!7566789 m!8129196))

(assert (=> b!7566781 m!8128918))

(assert (=> b!7566781 m!8128918))

(declare-fun m!8129198 () Bool)

(assert (=> b!7566781 m!8129198))

(assert (=> b!7566781 m!8128908))

(assert (=> b!7566781 m!8129198))

(assert (=> b!7566781 m!8128908))

(declare-fun m!8129200 () Bool)

(assert (=> b!7566781 m!8129200))

(assert (=> b!7566788 m!8128918))

(declare-fun m!8129202 () Bool)

(assert (=> d!2316580 m!8129202))

(assert (=> d!2316580 m!8128518))

(assert (=> b!7566791 m!8128918))

(assert (=> b!7566785 m!8128908))

(assert (=> b!7566785 m!8128908))

(assert (=> b!7566785 m!8129194))

(assert (=> bm!693750 m!8129202))

(assert (=> b!7566201 d!2316580))

(declare-fun bm!693751 () Bool)

(declare-fun call!693757 () Bool)

(declare-fun c!1396273 () Bool)

(assert (=> bm!693751 (= call!693757 (validRegex!10413 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))

(declare-fun b!7566803 () Bool)

(declare-fun e!4505362 () Bool)

(declare-fun e!4505356 () Bool)

(assert (=> b!7566803 (= e!4505362 e!4505356)))

(assert (=> b!7566803 (= c!1396273 ((_ is Union!19985) r!24333))))

(declare-fun b!7566804 () Bool)

(declare-fun e!4505358 () Bool)

(assert (=> b!7566804 (= e!4505362 e!4505358)))

(declare-fun res!3031620 () Bool)

(assert (=> b!7566804 (= res!3031620 (not (nullable!8719 (reg!20314 r!24333))))))

(assert (=> b!7566804 (=> (not res!3031620) (not e!4505358))))

(declare-fun b!7566805 () Bool)

(declare-fun res!3031619 () Bool)

(declare-fun e!4505361 () Bool)

(assert (=> b!7566805 (=> res!3031619 e!4505361)))

(assert (=> b!7566805 (= res!3031619 (not ((_ is Concat!28830) r!24333)))))

(assert (=> b!7566805 (= e!4505356 e!4505361)))

(declare-fun b!7566806 () Bool)

(declare-fun e!4505360 () Bool)

(assert (=> b!7566806 (= e!4505361 e!4505360)))

(declare-fun res!3031621 () Bool)

(assert (=> b!7566806 (=> (not res!3031621) (not e!4505360))))

(assert (=> b!7566806 (= res!3031621 call!693757)))

(declare-fun b!7566807 () Bool)

(declare-fun call!693756 () Bool)

(assert (=> b!7566807 (= e!4505360 call!693756)))

(declare-fun b!7566808 () Bool)

(declare-fun e!4505359 () Bool)

(assert (=> b!7566808 (= e!4505359 call!693756)))

(declare-fun b!7566809 () Bool)

(declare-fun call!693758 () Bool)

(assert (=> b!7566809 (= e!4505358 call!693758)))

(declare-fun b!7566810 () Bool)

(declare-fun res!3031622 () Bool)

(assert (=> b!7566810 (=> (not res!3031622) (not e!4505359))))

(assert (=> b!7566810 (= res!3031622 call!693757)))

(assert (=> b!7566810 (= e!4505356 e!4505359)))

(declare-fun b!7566811 () Bool)

(declare-fun e!4505357 () Bool)

(assert (=> b!7566811 (= e!4505357 e!4505362)))

(declare-fun c!1396272 () Bool)

(assert (=> b!7566811 (= c!1396272 ((_ is Star!19985) r!24333))))

(declare-fun bm!693752 () Bool)

(assert (=> bm!693752 (= call!693758 (validRegex!10413 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))

(declare-fun bm!693753 () Bool)

(assert (=> bm!693753 (= call!693756 call!693758)))

(declare-fun d!2316582 () Bool)

(declare-fun res!3031618 () Bool)

(assert (=> d!2316582 (=> res!3031618 e!4505357)))

(assert (=> d!2316582 (= res!3031618 ((_ is ElementMatch!19985) r!24333))))

(assert (=> d!2316582 (= (validRegex!10413 r!24333) e!4505357)))

(assert (= (and d!2316582 (not res!3031618)) b!7566811))

(assert (= (and b!7566811 c!1396272) b!7566804))

(assert (= (and b!7566811 (not c!1396272)) b!7566803))

(assert (= (and b!7566804 res!3031620) b!7566809))

(assert (= (and b!7566803 c!1396273) b!7566810))

(assert (= (and b!7566803 (not c!1396273)) b!7566805))

(assert (= (and b!7566810 res!3031622) b!7566808))

(assert (= (and b!7566805 (not res!3031619)) b!7566806))

(assert (= (and b!7566806 res!3031621) b!7566807))

(assert (= (or b!7566810 b!7566806) bm!693751))

(assert (= (or b!7566808 b!7566807) bm!693753))

(assert (= (or b!7566809 bm!693753) bm!693752))

(declare-fun m!8129204 () Bool)

(assert (=> bm!693751 m!8129204))

(declare-fun m!8129206 () Bool)

(assert (=> b!7566804 m!8129206))

(declare-fun m!8129208 () Bool)

(assert (=> bm!693752 m!8129208))

(assert (=> b!7566190 d!2316582))

(declare-fun d!2316584 () Bool)

(declare-fun lt!2650469 () Int)

(assert (=> d!2316584 (>= lt!2650469 0)))

(declare-fun e!4505368 () Int)

(assert (=> d!2316584 (= lt!2650469 e!4505368)))

(declare-fun c!1396274 () Bool)

(assert (=> d!2316584 (= c!1396274 ((_ is Nil!72744) input!7874))))

(assert (=> d!2316584 (= (size!42481 input!7874) lt!2650469)))

(declare-fun b!7566824 () Bool)

(assert (=> b!7566824 (= e!4505368 0)))

(declare-fun b!7566826 () Bool)

(assert (=> b!7566826 (= e!4505368 (+ 1 (size!42481 (t!387601 input!7874))))))

(assert (= (and d!2316584 c!1396274) b!7566824))

(assert (= (and d!2316584 (not c!1396274)) b!7566826))

(declare-fun m!8129210 () Bool)

(assert (=> b!7566826 m!8129210))

(assert (=> b!7566211 d!2316584))

(declare-fun b!7566833 () Bool)

(declare-fun res!3031624 () Bool)

(declare-fun e!4505369 () Bool)

(assert (=> b!7566833 (=> (not res!3031624) (not e!4505369))))

(declare-fun lt!2650470 () List!72868)

(assert (=> b!7566833 (= res!3031624 (= (size!42481 lt!2650470) (+ (size!42481 testedP!423) (size!42481 lt!2650101))))))

(declare-fun d!2316586 () Bool)

(assert (=> d!2316586 e!4505369))

(declare-fun res!3031623 () Bool)

(assert (=> d!2316586 (=> (not res!3031623) (not e!4505369))))

(assert (=> d!2316586 (= res!3031623 (= (content!15406 lt!2650470) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650101))))))

(declare-fun e!4505371 () List!72868)

(assert (=> d!2316586 (= lt!2650470 e!4505371)))

(declare-fun c!1396275 () Bool)

(assert (=> d!2316586 (= c!1396275 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316586 (= (++!17489 testedP!423 lt!2650101) lt!2650470)))

(declare-fun b!7566834 () Bool)

(assert (=> b!7566834 (= e!4505369 (or (not (= lt!2650101 Nil!72744)) (= lt!2650470 testedP!423)))))

(declare-fun b!7566832 () Bool)

(assert (=> b!7566832 (= e!4505371 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650101)))))

(declare-fun b!7566831 () Bool)

(assert (=> b!7566831 (= e!4505371 lt!2650101)))

(assert (= (and d!2316586 c!1396275) b!7566831))

(assert (= (and d!2316586 (not c!1396275)) b!7566832))

(assert (= (and d!2316586 res!3031623) b!7566833))

(assert (= (and b!7566833 res!3031624) b!7566834))

(declare-fun m!8129212 () Bool)

(assert (=> b!7566833 m!8129212))

(assert (=> b!7566833 m!8128472))

(declare-fun m!8129214 () Bool)

(assert (=> b!7566833 m!8129214))

(declare-fun m!8129216 () Bool)

(assert (=> d!2316586 m!8129216))

(assert (=> d!2316586 m!8128876))

(declare-fun m!8129218 () Bool)

(assert (=> d!2316586 m!8129218))

(declare-fun m!8129220 () Bool)

(assert (=> b!7566832 m!8129220))

(assert (=> b!7566200 d!2316586))

(declare-fun b!7566845 () Bool)

(declare-fun res!3031626 () Bool)

(declare-fun e!4505374 () Bool)

(assert (=> b!7566845 (=> (not res!3031626) (not e!4505374))))

(declare-fun lt!2650471 () List!72868)

(assert (=> b!7566845 (= res!3031626 (= (size!42481 lt!2650471) (+ (size!42481 lt!2650099) (size!42481 lt!2650116))))))

(declare-fun d!2316588 () Bool)

(assert (=> d!2316588 e!4505374))

(declare-fun res!3031625 () Bool)

(assert (=> d!2316588 (=> (not res!3031625) (not e!4505374))))

(assert (=> d!2316588 (= res!3031625 (= (content!15406 lt!2650471) ((_ map or) (content!15406 lt!2650099) (content!15406 lt!2650116))))))

(declare-fun e!4505375 () List!72868)

(assert (=> d!2316588 (= lt!2650471 e!4505375)))

(declare-fun c!1396276 () Bool)

(assert (=> d!2316588 (= c!1396276 ((_ is Nil!72744) lt!2650099))))

(assert (=> d!2316588 (= (++!17489 lt!2650099 lt!2650116) lt!2650471)))

(declare-fun b!7566846 () Bool)

(assert (=> b!7566846 (= e!4505374 (or (not (= lt!2650116 Nil!72744)) (= lt!2650471 lt!2650099)))))

(declare-fun b!7566844 () Bool)

(assert (=> b!7566844 (= e!4505375 (Cons!72744 (h!79192 lt!2650099) (++!17489 (t!387601 lt!2650099) lt!2650116)))))

(declare-fun b!7566843 () Bool)

(assert (=> b!7566843 (= e!4505375 lt!2650116)))

(assert (= (and d!2316588 c!1396276) b!7566843))

(assert (= (and d!2316588 (not c!1396276)) b!7566844))

(assert (= (and d!2316588 res!3031625) b!7566845))

(assert (= (and b!7566845 res!3031626) b!7566846))

(declare-fun m!8129222 () Bool)

(assert (=> b!7566845 m!8129222))

(assert (=> b!7566845 m!8128954))

(assert (=> b!7566845 m!8128942))

(declare-fun m!8129224 () Bool)

(assert (=> d!2316588 m!8129224))

(assert (=> d!2316588 m!8128958))

(assert (=> d!2316588 m!8128948))

(declare-fun m!8129226 () Bool)

(assert (=> b!7566844 m!8129226))

(assert (=> b!7566200 d!2316588))

(declare-fun d!2316590 () Bool)

(assert (=> d!2316590 (= (++!17489 (++!17489 testedP!423 lt!2650099) lt!2650116) (++!17489 testedP!423 (++!17489 lt!2650099 lt!2650116)))))

(declare-fun lt!2650472 () Unit!166904)

(assert (=> d!2316590 (= lt!2650472 (choose!58517 testedP!423 lt!2650099 lt!2650116))))

(assert (=> d!2316590 (= (lemmaConcatAssociativity!3124 testedP!423 lt!2650099 lt!2650116) lt!2650472)))

(declare-fun bs!1940492 () Bool)

(assert (= bs!1940492 d!2316590))

(declare-fun m!8129228 () Bool)

(assert (=> bs!1940492 m!8129228))

(assert (=> bs!1940492 m!8128522))

(assert (=> bs!1940492 m!8128522))

(declare-fun m!8129230 () Bool)

(assert (=> bs!1940492 m!8129230))

(assert (=> bs!1940492 m!8128510))

(assert (=> bs!1940492 m!8128510))

(declare-fun m!8129232 () Bool)

(assert (=> bs!1940492 m!8129232))

(assert (=> b!7566200 d!2316590))

(declare-fun b!7566872 () Bool)

(declare-fun e!4505383 () Bool)

(declare-fun tp!2203769 () Bool)

(declare-fun tp!2203768 () Bool)

(assert (=> b!7566872 (= e!4505383 (and tp!2203769 tp!2203768))))

(declare-fun b!7566874 () Bool)

(declare-fun tp!2203767 () Bool)

(declare-fun tp!2203765 () Bool)

(assert (=> b!7566874 (= e!4505383 (and tp!2203767 tp!2203765))))

(declare-fun b!7566871 () Bool)

(assert (=> b!7566871 (= e!4505383 tp_is_empty!50325)))

(declare-fun b!7566873 () Bool)

(declare-fun tp!2203766 () Bool)

(assert (=> b!7566873 (= e!4505383 tp!2203766)))

(assert (=> b!7566215 (= tp!2203682 e!4505383)))

(assert (= (and b!7566215 ((_ is ElementMatch!19985) (regOne!40482 baseR!101))) b!7566871))

(assert (= (and b!7566215 ((_ is Concat!28830) (regOne!40482 baseR!101))) b!7566872))

(assert (= (and b!7566215 ((_ is Star!19985) (regOne!40482 baseR!101))) b!7566873))

(assert (= (and b!7566215 ((_ is Union!19985) (regOne!40482 baseR!101))) b!7566874))

(declare-fun b!7566876 () Bool)

(declare-fun e!4505384 () Bool)

(declare-fun tp!2203774 () Bool)

(declare-fun tp!2203773 () Bool)

(assert (=> b!7566876 (= e!4505384 (and tp!2203774 tp!2203773))))

(declare-fun b!7566878 () Bool)

(declare-fun tp!2203772 () Bool)

(declare-fun tp!2203770 () Bool)

(assert (=> b!7566878 (= e!4505384 (and tp!2203772 tp!2203770))))

(declare-fun b!7566875 () Bool)

(assert (=> b!7566875 (= e!4505384 tp_is_empty!50325)))

(declare-fun b!7566877 () Bool)

(declare-fun tp!2203771 () Bool)

(assert (=> b!7566877 (= e!4505384 tp!2203771)))

(assert (=> b!7566215 (= tp!2203677 e!4505384)))

(assert (= (and b!7566215 ((_ is ElementMatch!19985) (regTwo!40482 baseR!101))) b!7566875))

(assert (= (and b!7566215 ((_ is Concat!28830) (regTwo!40482 baseR!101))) b!7566876))

(assert (= (and b!7566215 ((_ is Star!19985) (regTwo!40482 baseR!101))) b!7566877))

(assert (= (and b!7566215 ((_ is Union!19985) (regTwo!40482 baseR!101))) b!7566878))

(declare-fun b!7566883 () Bool)

(declare-fun e!4505387 () Bool)

(declare-fun tp!2203777 () Bool)

(assert (=> b!7566883 (= e!4505387 (and tp_is_empty!50325 tp!2203777))))

(assert (=> b!7566209 (= tp!2203680 e!4505387)))

(assert (= (and b!7566209 ((_ is Cons!72744) (t!387601 input!7874))) b!7566883))

(declare-fun b!7566884 () Bool)

(declare-fun e!4505388 () Bool)

(declare-fun tp!2203778 () Bool)

(assert (=> b!7566884 (= e!4505388 (and tp_is_empty!50325 tp!2203778))))

(assert (=> b!7566214 (= tp!2203685 e!4505388)))

(assert (= (and b!7566214 ((_ is Cons!72744) (t!387601 knownP!30))) b!7566884))

(declare-fun b!7566886 () Bool)

(declare-fun e!4505389 () Bool)

(declare-fun tp!2203783 () Bool)

(declare-fun tp!2203782 () Bool)

(assert (=> b!7566886 (= e!4505389 (and tp!2203783 tp!2203782))))

(declare-fun b!7566888 () Bool)

(declare-fun tp!2203781 () Bool)

(declare-fun tp!2203779 () Bool)

(assert (=> b!7566888 (= e!4505389 (and tp!2203781 tp!2203779))))

(declare-fun b!7566885 () Bool)

(assert (=> b!7566885 (= e!4505389 tp_is_empty!50325)))

(declare-fun b!7566887 () Bool)

(declare-fun tp!2203780 () Bool)

(assert (=> b!7566887 (= e!4505389 tp!2203780)))

(assert (=> b!7566192 (= tp!2203679 e!4505389)))

(assert (= (and b!7566192 ((_ is ElementMatch!19985) (reg!20314 baseR!101))) b!7566885))

(assert (= (and b!7566192 ((_ is Concat!28830) (reg!20314 baseR!101))) b!7566886))

(assert (= (and b!7566192 ((_ is Star!19985) (reg!20314 baseR!101))) b!7566887))

(assert (= (and b!7566192 ((_ is Union!19985) (reg!20314 baseR!101))) b!7566888))

(declare-fun b!7566890 () Bool)

(declare-fun e!4505390 () Bool)

(declare-fun tp!2203788 () Bool)

(declare-fun tp!2203787 () Bool)

(assert (=> b!7566890 (= e!4505390 (and tp!2203788 tp!2203787))))

(declare-fun b!7566892 () Bool)

(declare-fun tp!2203786 () Bool)

(declare-fun tp!2203784 () Bool)

(assert (=> b!7566892 (= e!4505390 (and tp!2203786 tp!2203784))))

(declare-fun b!7566889 () Bool)

(assert (=> b!7566889 (= e!4505390 tp_is_empty!50325)))

(declare-fun b!7566891 () Bool)

(declare-fun tp!2203785 () Bool)

(assert (=> b!7566891 (= e!4505390 tp!2203785)))

(assert (=> b!7566191 (= tp!2203681 e!4505390)))

(assert (= (and b!7566191 ((_ is ElementMatch!19985) (reg!20314 r!24333))) b!7566889))

(assert (= (and b!7566191 ((_ is Concat!28830) (reg!20314 r!24333))) b!7566890))

(assert (= (and b!7566191 ((_ is Star!19985) (reg!20314 r!24333))) b!7566891))

(assert (= (and b!7566191 ((_ is Union!19985) (reg!20314 r!24333))) b!7566892))

(declare-fun b!7566894 () Bool)

(declare-fun e!4505391 () Bool)

(declare-fun tp!2203793 () Bool)

(declare-fun tp!2203792 () Bool)

(assert (=> b!7566894 (= e!4505391 (and tp!2203793 tp!2203792))))

(declare-fun b!7566896 () Bool)

(declare-fun tp!2203791 () Bool)

(declare-fun tp!2203789 () Bool)

(assert (=> b!7566896 (= e!4505391 (and tp!2203791 tp!2203789))))

(declare-fun b!7566893 () Bool)

(assert (=> b!7566893 (= e!4505391 tp_is_empty!50325)))

(declare-fun b!7566895 () Bool)

(declare-fun tp!2203790 () Bool)

(assert (=> b!7566895 (= e!4505391 tp!2203790)))

(assert (=> b!7566212 (= tp!2203687 e!4505391)))

(assert (= (and b!7566212 ((_ is ElementMatch!19985) (regOne!40482 r!24333))) b!7566893))

(assert (= (and b!7566212 ((_ is Concat!28830) (regOne!40482 r!24333))) b!7566894))

(assert (= (and b!7566212 ((_ is Star!19985) (regOne!40482 r!24333))) b!7566895))

(assert (= (and b!7566212 ((_ is Union!19985) (regOne!40482 r!24333))) b!7566896))

(declare-fun b!7566898 () Bool)

(declare-fun e!4505392 () Bool)

(declare-fun tp!2203798 () Bool)

(declare-fun tp!2203797 () Bool)

(assert (=> b!7566898 (= e!4505392 (and tp!2203798 tp!2203797))))

(declare-fun b!7566900 () Bool)

(declare-fun tp!2203796 () Bool)

(declare-fun tp!2203794 () Bool)

(assert (=> b!7566900 (= e!4505392 (and tp!2203796 tp!2203794))))

(declare-fun b!7566897 () Bool)

(assert (=> b!7566897 (= e!4505392 tp_is_empty!50325)))

(declare-fun b!7566899 () Bool)

(declare-fun tp!2203795 () Bool)

(assert (=> b!7566899 (= e!4505392 tp!2203795)))

(assert (=> b!7566212 (= tp!2203689 e!4505392)))

(assert (= (and b!7566212 ((_ is ElementMatch!19985) (regTwo!40482 r!24333))) b!7566897))

(assert (= (and b!7566212 ((_ is Concat!28830) (regTwo!40482 r!24333))) b!7566898))

(assert (= (and b!7566212 ((_ is Star!19985) (regTwo!40482 r!24333))) b!7566899))

(assert (= (and b!7566212 ((_ is Union!19985) (regTwo!40482 r!24333))) b!7566900))

(declare-fun b!7566902 () Bool)

(declare-fun e!4505393 () Bool)

(declare-fun tp!2203803 () Bool)

(declare-fun tp!2203802 () Bool)

(assert (=> b!7566902 (= e!4505393 (and tp!2203803 tp!2203802))))

(declare-fun b!7566904 () Bool)

(declare-fun tp!2203801 () Bool)

(declare-fun tp!2203799 () Bool)

(assert (=> b!7566904 (= e!4505393 (and tp!2203801 tp!2203799))))

(declare-fun b!7566901 () Bool)

(assert (=> b!7566901 (= e!4505393 tp_is_empty!50325)))

(declare-fun b!7566903 () Bool)

(declare-fun tp!2203800 () Bool)

(assert (=> b!7566903 (= e!4505393 tp!2203800)))

(assert (=> b!7566195 (= tp!2203684 e!4505393)))

(assert (= (and b!7566195 ((_ is ElementMatch!19985) (regOne!40483 r!24333))) b!7566901))

(assert (= (and b!7566195 ((_ is Concat!28830) (regOne!40483 r!24333))) b!7566902))

(assert (= (and b!7566195 ((_ is Star!19985) (regOne!40483 r!24333))) b!7566903))

(assert (= (and b!7566195 ((_ is Union!19985) (regOne!40483 r!24333))) b!7566904))

(declare-fun b!7566906 () Bool)

(declare-fun e!4505394 () Bool)

(declare-fun tp!2203808 () Bool)

(declare-fun tp!2203807 () Bool)

(assert (=> b!7566906 (= e!4505394 (and tp!2203808 tp!2203807))))

(declare-fun b!7566908 () Bool)

(declare-fun tp!2203806 () Bool)

(declare-fun tp!2203804 () Bool)

(assert (=> b!7566908 (= e!4505394 (and tp!2203806 tp!2203804))))

(declare-fun b!7566905 () Bool)

(assert (=> b!7566905 (= e!4505394 tp_is_empty!50325)))

(declare-fun b!7566907 () Bool)

(declare-fun tp!2203805 () Bool)

(assert (=> b!7566907 (= e!4505394 tp!2203805)))

(assert (=> b!7566195 (= tp!2203678 e!4505394)))

(assert (= (and b!7566195 ((_ is ElementMatch!19985) (regTwo!40483 r!24333))) b!7566905))

(assert (= (and b!7566195 ((_ is Concat!28830) (regTwo!40483 r!24333))) b!7566906))

(assert (= (and b!7566195 ((_ is Star!19985) (regTwo!40483 r!24333))) b!7566907))

(assert (= (and b!7566195 ((_ is Union!19985) (regTwo!40483 r!24333))) b!7566908))

(declare-fun b!7566909 () Bool)

(declare-fun e!4505395 () Bool)

(declare-fun tp!2203809 () Bool)

(assert (=> b!7566909 (= e!4505395 (and tp_is_empty!50325 tp!2203809))))

(assert (=> b!7566205 (= tp!2203686 e!4505395)))

(assert (= (and b!7566205 ((_ is Cons!72744) (t!387601 testedP!423))) b!7566909))

(declare-fun b!7566911 () Bool)

(declare-fun e!4505396 () Bool)

(declare-fun tp!2203814 () Bool)

(declare-fun tp!2203813 () Bool)

(assert (=> b!7566911 (= e!4505396 (and tp!2203814 tp!2203813))))

(declare-fun b!7566913 () Bool)

(declare-fun tp!2203812 () Bool)

(declare-fun tp!2203810 () Bool)

(assert (=> b!7566913 (= e!4505396 (and tp!2203812 tp!2203810))))

(declare-fun b!7566910 () Bool)

(assert (=> b!7566910 (= e!4505396 tp_is_empty!50325)))

(declare-fun b!7566912 () Bool)

(declare-fun tp!2203811 () Bool)

(assert (=> b!7566912 (= e!4505396 tp!2203811)))

(assert (=> b!7566194 (= tp!2203683 e!4505396)))

(assert (= (and b!7566194 ((_ is ElementMatch!19985) (regOne!40483 baseR!101))) b!7566910))

(assert (= (and b!7566194 ((_ is Concat!28830) (regOne!40483 baseR!101))) b!7566911))

(assert (= (and b!7566194 ((_ is Star!19985) (regOne!40483 baseR!101))) b!7566912))

(assert (= (and b!7566194 ((_ is Union!19985) (regOne!40483 baseR!101))) b!7566913))

(declare-fun b!7566915 () Bool)

(declare-fun e!4505397 () Bool)

(declare-fun tp!2203819 () Bool)

(declare-fun tp!2203818 () Bool)

(assert (=> b!7566915 (= e!4505397 (and tp!2203819 tp!2203818))))

(declare-fun b!7566917 () Bool)

(declare-fun tp!2203817 () Bool)

(declare-fun tp!2203815 () Bool)

(assert (=> b!7566917 (= e!4505397 (and tp!2203817 tp!2203815))))

(declare-fun b!7566914 () Bool)

(assert (=> b!7566914 (= e!4505397 tp_is_empty!50325)))

(declare-fun b!7566916 () Bool)

(declare-fun tp!2203816 () Bool)

(assert (=> b!7566916 (= e!4505397 tp!2203816)))

(assert (=> b!7566194 (= tp!2203688 e!4505397)))

(assert (= (and b!7566194 ((_ is ElementMatch!19985) (regTwo!40483 baseR!101))) b!7566914))

(assert (= (and b!7566194 ((_ is Concat!28830) (regTwo!40483 baseR!101))) b!7566915))

(assert (= (and b!7566194 ((_ is Star!19985) (regTwo!40483 baseR!101))) b!7566916))

(assert (= (and b!7566194 ((_ is Union!19985) (regTwo!40483 baseR!101))) b!7566917))

(check-sat (not b!7566915) (not d!2316480) (not b!7566599) (not b!7566804) (not b!7566916) (not d!2316564) (not bm!693669) (not b!7566903) (not b!7566886) (not b!7566887) (not b!7566781) (not b!7566598) (not b!7566878) (not b!7566568) (not d!2316544) (not b!7566429) (not b!7566549) (not b!7566907) (not d!2316474) (not b!7566912) (not b!7566476) (not bm!693721) (not b!7566900) (not d!2316580) (not b!7566451) (not b!7566906) (not b!7566672) (not d!2316486) (not bm!693664) (not bm!693670) (not d!2316540) (not bm!693665) (not b!7566441) (not b!7566570) (not b!7566877) (not b!7566791) (not b!7566894) (not b!7566785) (not d!2316588) (not b!7566788) (not b!7566832) (not bm!693733) (not b!7566544) (not b!7566844) (not b!7566710) (not b!7566895) (not b!7566917) (not bm!693675) (not b!7566665) (not bm!693667) (not b!7566667) (not b!7566896) (not b!7566569) (not d!2316504) (not d!2316560) (not d!2316586) (not b!7566892) (not b!7566735) (not b!7566826) (not b!7566758) (not b!7566762) (not b!7566872) (not b!7566440) (not b!7566769) (not d!2316400) (not b!7566760) (not b!7566472) (not b!7566873) (not b!7566908) (not d!2316542) (not b!7566884) (not b!7566674) (not b!7566736) (not d!2316508) (not bm!693672) (not b!7566759) (not b!7566595) (not b!7566456) (not b!7566572) (not bm!693751) (not b!7566577) (not d!2316546) (not bm!693720) (not b!7566902) (not d!2316562) (not bm!693673) (not b!7566898) (not d!2316398) (not b!7566899) (not bm!693734) (not b!7566671) (not b!7566574) (not bm!693676) (not b!7566477) (not b!7566541) (not d!2316556) (not b!7566419) (not d!2316482) (not b!7566913) (not d!2316476) (not bm!693752) (not b!7566480) (not b!7566845) (not b!7566444) (not d!2316576) (not b!7566891) (not bm!693671) (not b!7566423) (not bm!693674) (not b!7566652) (not b!7566874) (not b!7566437) (not d!2316472) (not b!7566888) (not b!7566445) (not b!7566537) (not bm!693668) (not d!2316578) (not b!7566668) (not b!7566573) tp_is_empty!50325 (not b!7566764) (not b!7566481) (not d!2316478) (not b!7566778) (not d!2316496) (not b!7566461) (not b!7566789) (not d!2316502) (not bm!693663) (not b!7566909) (not b!7566473) (not bm!693678) (not d!2316590) (not b!7566565) (not b!7566911) (not d!2316410) (not b!7566536) (not b!7566566) (not b!7566545) (not d!2316484) (not b!7566763) (not b!7566547) (not d!2316464) (not bm!693666) (not b!7566594) (not b!7566833) (not b!7566876) (not bm!693695) (not b!7566890) (not bm!693750) (not b!7566904) (not b!7566270) (not b!7566716) (not d!2316490) (not b!7566564) (not b!7566883) (not bm!693677) (not b!7566576) (not b!7566422) (not d!2316468))
(check-sat)
(get-model)

(declare-fun b!7566918 () Bool)

(declare-fun e!4505405 () Bool)

(declare-fun lt!2650481 () tuple2!68864)

(assert (=> b!7566918 (= e!4505405 (>= (size!42481 (_1!37735 lt!2650481)) (size!42481 lt!2650251)))))

(declare-fun b!7566919 () Bool)

(declare-fun e!4505402 () tuple2!68864)

(assert (=> b!7566919 (= e!4505402 (tuple2!68865 lt!2650251 call!693671))))

(declare-fun b!7566921 () Bool)

(declare-fun c!1396282 () Bool)

(declare-fun call!693761 () Bool)

(assert (=> b!7566921 (= c!1396282 call!693761)))

(declare-fun lt!2650476 () Unit!166904)

(declare-fun lt!2650486 () Unit!166904)

(assert (=> b!7566921 (= lt!2650476 lt!2650486)))

(declare-fun lt!2650484 () C!40296)

(declare-fun lt!2650491 () List!72868)

(assert (=> b!7566921 (= (++!17489 (++!17489 lt!2650251 (Cons!72744 lt!2650484 Nil!72744)) lt!2650491) input!7874)))

(assert (=> b!7566921 (= lt!2650486 (lemmaMoveElementToOtherListKeepsConcatEq!3180 lt!2650251 lt!2650484 lt!2650491 input!7874))))

(assert (=> b!7566921 (= lt!2650491 (tail!15103 call!693671))))

(assert (=> b!7566921 (= lt!2650484 (head!15563 call!693671))))

(declare-fun lt!2650493 () Unit!166904)

(declare-fun lt!2650475 () Unit!166904)

(assert (=> b!7566921 (= lt!2650493 lt!2650475)))

(assert (=> b!7566921 (isPrefix!6191 (++!17489 lt!2650251 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650251)) Nil!72744)) input!7874)))

(assert (=> b!7566921 (= lt!2650475 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650251 input!7874))))

(declare-fun lt!2650478 () Unit!166904)

(declare-fun lt!2650477 () Unit!166904)

(assert (=> b!7566921 (= lt!2650478 lt!2650477)))

(assert (=> b!7566921 (= lt!2650477 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650251 input!7874))))

(declare-fun lt!2650500 () List!72868)

(assert (=> b!7566921 (= lt!2650500 (++!17489 lt!2650251 (Cons!72744 (head!15563 call!693671) Nil!72744)))))

(declare-fun lt!2650474 () Unit!166904)

(declare-fun e!4505403 () Unit!166904)

(assert (=> b!7566921 (= lt!2650474 e!4505403)))

(declare-fun c!1396279 () Bool)

(assert (=> b!7566921 (= c!1396279 (= (size!42481 lt!2650251) (size!42481 input!7874)))))

(declare-fun lt!2650482 () Unit!166904)

(declare-fun lt!2650488 () Unit!166904)

(assert (=> b!7566921 (= lt!2650482 lt!2650488)))

(assert (=> b!7566921 (<= (size!42481 lt!2650251) (size!42481 input!7874))))

(assert (=> b!7566921 (= lt!2650488 (lemmaIsPrefixThenSmallerEqSize!1019 lt!2650251 input!7874))))

(declare-fun e!4505404 () tuple2!68864)

(declare-fun e!4505398 () tuple2!68864)

(assert (=> b!7566921 (= e!4505404 e!4505398)))

(declare-fun b!7566922 () Bool)

(assert (=> b!7566922 (= e!4505398 e!4505402)))

(declare-fun lt!2650490 () tuple2!68864)

(declare-fun call!693764 () tuple2!68864)

(assert (=> b!7566922 (= lt!2650490 call!693764)))

(declare-fun c!1396280 () Bool)

(assert (=> b!7566922 (= c!1396280 (isEmpty!41423 (_1!37735 lt!2650490)))))

(declare-fun b!7566923 () Bool)

(assert (=> b!7566923 (= e!4505402 lt!2650490)))

(declare-fun b!7566924 () Bool)

(declare-fun e!4505399 () tuple2!68864)

(assert (=> b!7566924 (= e!4505399 e!4505404)))

(declare-fun c!1396277 () Bool)

(assert (=> b!7566924 (= c!1396277 (= (+ lt!2650111 1) lt!2650110))))

(declare-fun b!7566925 () Bool)

(declare-fun Unit!166918 () Unit!166904)

(assert (=> b!7566925 (= e!4505403 Unit!166918)))

(declare-fun lt!2650499 () Unit!166904)

(declare-fun call!693759 () Unit!166904)

(assert (=> b!7566925 (= lt!2650499 call!693759)))

(declare-fun call!693765 () Bool)

(assert (=> b!7566925 call!693765))

(declare-fun lt!2650479 () Unit!166904)

(assert (=> b!7566925 (= lt!2650479 lt!2650499)))

(declare-fun lt!2650483 () Unit!166904)

(declare-fun call!693766 () Unit!166904)

(assert (=> b!7566925 (= lt!2650483 call!693766)))

(assert (=> b!7566925 (= input!7874 lt!2650251)))

(declare-fun lt!2650489 () Unit!166904)

(assert (=> b!7566925 (= lt!2650489 lt!2650483)))

(assert (=> b!7566925 false))

(declare-fun b!7566926 () Bool)

(declare-fun c!1396281 () Bool)

(assert (=> b!7566926 (= c!1396281 call!693761)))

(declare-fun lt!2650492 () Unit!166904)

(declare-fun lt!2650495 () Unit!166904)

(assert (=> b!7566926 (= lt!2650492 lt!2650495)))

(assert (=> b!7566926 (= input!7874 lt!2650251)))

(assert (=> b!7566926 (= lt!2650495 call!693766)))

(declare-fun lt!2650498 () Unit!166904)

(declare-fun lt!2650494 () Unit!166904)

(assert (=> b!7566926 (= lt!2650498 lt!2650494)))

(assert (=> b!7566926 call!693765))

(assert (=> b!7566926 (= lt!2650494 call!693759)))

(declare-fun e!4505401 () tuple2!68864)

(assert (=> b!7566926 (= e!4505404 e!4505401)))

(declare-fun call!693762 () List!72868)

(declare-fun bm!693754 () Bool)

(declare-fun call!693760 () Regex!19985)

(assert (=> bm!693754 (= call!693764 (findLongestMatchInner!2140 call!693760 lt!2650500 (+ lt!2650111 1 1) call!693762 input!7874 lt!2650110))))

(declare-fun bm!693755 () Bool)

(assert (=> bm!693755 (= call!693759 (lemmaIsPrefixRefl!3871 input!7874 input!7874))))

(declare-fun b!7566927 () Bool)

(declare-fun Unit!166919 () Unit!166904)

(assert (=> b!7566927 (= e!4505403 Unit!166919)))

(declare-fun bm!693756 () Bool)

(declare-fun call!693763 () C!40296)

(assert (=> bm!693756 (= call!693763 (head!15563 call!693671))))

(declare-fun bm!693757 () Bool)

(assert (=> bm!693757 (= call!693760 (derivativeStep!5763 call!693669 call!693763))))

(declare-fun bm!693758 () Bool)

(assert (=> bm!693758 (= call!693761 (nullable!8719 call!693669))))

(declare-fun b!7566928 () Bool)

(declare-fun e!4505400 () Bool)

(assert (=> b!7566928 (= e!4505400 e!4505405)))

(declare-fun res!3031627 () Bool)

(assert (=> b!7566928 (=> res!3031627 e!4505405)))

(assert (=> b!7566928 (= res!3031627 (isEmpty!41423 (_1!37735 lt!2650481)))))

(declare-fun b!7566929 () Bool)

(assert (=> b!7566929 (= e!4505398 call!693764)))

(declare-fun b!7566930 () Bool)

(assert (=> b!7566930 (= e!4505399 (tuple2!68865 Nil!72744 input!7874))))

(declare-fun b!7566920 () Bool)

(assert (=> b!7566920 (= e!4505401 (tuple2!68865 lt!2650251 Nil!72744))))

(declare-fun d!2316592 () Bool)

(assert (=> d!2316592 e!4505400))

(declare-fun res!3031628 () Bool)

(assert (=> d!2316592 (=> (not res!3031628) (not e!4505400))))

(assert (=> d!2316592 (= res!3031628 (= (++!17489 (_1!37735 lt!2650481) (_2!37735 lt!2650481)) input!7874))))

(assert (=> d!2316592 (= lt!2650481 e!4505399)))

(declare-fun c!1396278 () Bool)

(assert (=> d!2316592 (= c!1396278 (lostCause!1773 call!693669))))

(declare-fun lt!2650496 () Unit!166904)

(declare-fun Unit!166920 () Unit!166904)

(assert (=> d!2316592 (= lt!2650496 Unit!166920)))

(assert (=> d!2316592 (= (getSuffix!3669 input!7874 lt!2650251) call!693671)))

(declare-fun lt!2650473 () Unit!166904)

(declare-fun lt!2650485 () Unit!166904)

(assert (=> d!2316592 (= lt!2650473 lt!2650485)))

(declare-fun lt!2650497 () List!72868)

(assert (=> d!2316592 (= call!693671 lt!2650497)))

(assert (=> d!2316592 (= lt!2650485 (lemmaSamePrefixThenSameSuffix!2891 lt!2650251 call!693671 lt!2650251 lt!2650497 input!7874))))

(assert (=> d!2316592 (= lt!2650497 (getSuffix!3669 input!7874 lt!2650251))))

(declare-fun lt!2650480 () Unit!166904)

(declare-fun lt!2650487 () Unit!166904)

(assert (=> d!2316592 (= lt!2650480 lt!2650487)))

(assert (=> d!2316592 (isPrefix!6191 lt!2650251 (++!17489 lt!2650251 call!693671))))

(assert (=> d!2316592 (= lt!2650487 (lemmaConcatTwoListThenFirstIsPrefix!3744 lt!2650251 call!693671))))

(assert (=> d!2316592 (validRegex!10413 call!693669)))

(assert (=> d!2316592 (= (findLongestMatchInner!2140 call!693669 lt!2650251 (+ lt!2650111 1) call!693671 input!7874 lt!2650110) lt!2650481)))

(declare-fun bm!693759 () Bool)

(assert (=> bm!693759 (= call!693762 (tail!15103 call!693671))))

(declare-fun bm!693760 () Bool)

(assert (=> bm!693760 (= call!693765 (isPrefix!6191 input!7874 input!7874))))

(declare-fun bm!693761 () Bool)

(assert (=> bm!693761 (= call!693766 (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 lt!2650251 input!7874))))

(declare-fun b!7566931 () Bool)

(assert (=> b!7566931 (= e!4505401 (tuple2!68865 Nil!72744 input!7874))))

(assert (= (and d!2316592 c!1396278) b!7566930))

(assert (= (and d!2316592 (not c!1396278)) b!7566924))

(assert (= (and b!7566924 c!1396277) b!7566926))

(assert (= (and b!7566924 (not c!1396277)) b!7566921))

(assert (= (and b!7566926 c!1396281) b!7566920))

(assert (= (and b!7566926 (not c!1396281)) b!7566931))

(assert (= (and b!7566921 c!1396279) b!7566925))

(assert (= (and b!7566921 (not c!1396279)) b!7566927))

(assert (= (and b!7566921 c!1396282) b!7566922))

(assert (= (and b!7566921 (not c!1396282)) b!7566929))

(assert (= (and b!7566922 c!1396280) b!7566919))

(assert (= (and b!7566922 (not c!1396280)) b!7566923))

(assert (= (or b!7566922 b!7566929) bm!693759))

(assert (= (or b!7566922 b!7566929) bm!693756))

(assert (= (or b!7566922 b!7566929) bm!693757))

(assert (= (or b!7566922 b!7566929) bm!693754))

(assert (= (or b!7566926 b!7566925) bm!693760))

(assert (= (or b!7566926 b!7566921) bm!693758))

(assert (= (or b!7566926 b!7566925) bm!693761))

(assert (= (or b!7566926 b!7566925) bm!693755))

(assert (= (and d!2316592 res!3031628) b!7566928))

(assert (= (and b!7566928 (not res!3031627)) b!7566918))

(declare-fun m!8129234 () Bool)

(assert (=> bm!693761 m!8129234))

(declare-fun m!8129236 () Bool)

(assert (=> b!7566928 m!8129236))

(declare-fun m!8129238 () Bool)

(assert (=> bm!693754 m!8129238))

(assert (=> bm!693755 m!8128756))

(declare-fun m!8129240 () Bool)

(assert (=> b!7566922 m!8129240))

(declare-fun m!8129242 () Bool)

(assert (=> bm!693759 m!8129242))

(declare-fun m!8129244 () Bool)

(assert (=> b!7566921 m!8129244))

(declare-fun m!8129246 () Bool)

(assert (=> b!7566921 m!8129246))

(assert (=> b!7566921 m!8128476))

(declare-fun m!8129248 () Bool)

(assert (=> b!7566921 m!8129248))

(declare-fun m!8129250 () Bool)

(assert (=> b!7566921 m!8129250))

(declare-fun m!8129252 () Bool)

(assert (=> b!7566921 m!8129252))

(declare-fun m!8129254 () Bool)

(assert (=> b!7566921 m!8129254))

(declare-fun m!8129256 () Bool)

(assert (=> b!7566921 m!8129256))

(declare-fun m!8129258 () Bool)

(assert (=> b!7566921 m!8129258))

(assert (=> b!7566921 m!8129242))

(declare-fun m!8129260 () Bool)

(assert (=> b!7566921 m!8129260))

(assert (=> b!7566921 m!8129244))

(declare-fun m!8129262 () Bool)

(assert (=> b!7566921 m!8129262))

(assert (=> b!7566921 m!8129250))

(assert (=> b!7566921 m!8129256))

(declare-fun m!8129264 () Bool)

(assert (=> b!7566921 m!8129264))

(declare-fun m!8129266 () Bool)

(assert (=> b!7566921 m!8129266))

(assert (=> bm!693756 m!8129254))

(declare-fun m!8129268 () Bool)

(assert (=> b!7566918 m!8129268))

(assert (=> b!7566918 m!8129260))

(assert (=> bm!693760 m!8128780))

(declare-fun m!8129270 () Bool)

(assert (=> bm!693758 m!8129270))

(declare-fun m!8129272 () Bool)

(assert (=> bm!693757 m!8129272))

(declare-fun m!8129274 () Bool)

(assert (=> d!2316592 m!8129274))

(declare-fun m!8129276 () Bool)

(assert (=> d!2316592 m!8129276))

(declare-fun m!8129278 () Bool)

(assert (=> d!2316592 m!8129278))

(declare-fun m!8129280 () Bool)

(assert (=> d!2316592 m!8129280))

(declare-fun m!8129282 () Bool)

(assert (=> d!2316592 m!8129282))

(assert (=> d!2316592 m!8129250))

(assert (=> d!2316592 m!8129278))

(declare-fun m!8129284 () Bool)

(assert (=> d!2316592 m!8129284))

(declare-fun m!8129286 () Bool)

(assert (=> d!2316592 m!8129286))

(assert (=> bm!693663 d!2316592))

(declare-fun b!7566935 () Bool)

(declare-fun e!4505407 () Bool)

(assert (=> b!7566935 (= e!4505407 (>= (size!42481 (tail!15103 knownP!30)) (size!42481 (tail!15103 testedP!423))))))

(declare-fun b!7566932 () Bool)

(declare-fun e!4505406 () Bool)

(declare-fun e!4505408 () Bool)

(assert (=> b!7566932 (= e!4505406 e!4505408)))

(declare-fun res!3031629 () Bool)

(assert (=> b!7566932 (=> (not res!3031629) (not e!4505408))))

(assert (=> b!7566932 (= res!3031629 (not ((_ is Nil!72744) (tail!15103 knownP!30))))))

(declare-fun d!2316594 () Bool)

(assert (=> d!2316594 e!4505407))

(declare-fun res!3031631 () Bool)

(assert (=> d!2316594 (=> res!3031631 e!4505407)))

(declare-fun lt!2650501 () Bool)

(assert (=> d!2316594 (= res!3031631 (not lt!2650501))))

(assert (=> d!2316594 (= lt!2650501 e!4505406)))

(declare-fun res!3031632 () Bool)

(assert (=> d!2316594 (=> res!3031632 e!4505406)))

(assert (=> d!2316594 (= res!3031632 ((_ is Nil!72744) (tail!15103 testedP!423)))))

(assert (=> d!2316594 (= (isPrefix!6191 (tail!15103 testedP!423) (tail!15103 knownP!30)) lt!2650501)))

(declare-fun b!7566934 () Bool)

(assert (=> b!7566934 (= e!4505408 (isPrefix!6191 (tail!15103 (tail!15103 testedP!423)) (tail!15103 (tail!15103 knownP!30))))))

(declare-fun b!7566933 () Bool)

(declare-fun res!3031630 () Bool)

(assert (=> b!7566933 (=> (not res!3031630) (not e!4505408))))

(assert (=> b!7566933 (= res!3031630 (= (head!15563 (tail!15103 testedP!423)) (head!15563 (tail!15103 knownP!30))))))

(assert (= (and d!2316594 (not res!3031632)) b!7566932))

(assert (= (and b!7566932 res!3031629) b!7566933))

(assert (= (and b!7566933 res!3031630) b!7566934))

(assert (= (and d!2316594 (not res!3031631)) b!7566935))

(assert (=> b!7566935 m!8128908))

(declare-fun m!8129288 () Bool)

(assert (=> b!7566935 m!8129288))

(assert (=> b!7566935 m!8128912))

(declare-fun m!8129290 () Bool)

(assert (=> b!7566935 m!8129290))

(assert (=> b!7566934 m!8128912))

(declare-fun m!8129292 () Bool)

(assert (=> b!7566934 m!8129292))

(assert (=> b!7566934 m!8128908))

(declare-fun m!8129294 () Bool)

(assert (=> b!7566934 m!8129294))

(assert (=> b!7566934 m!8129292))

(assert (=> b!7566934 m!8129294))

(declare-fun m!8129296 () Bool)

(assert (=> b!7566934 m!8129296))

(assert (=> b!7566933 m!8128912))

(declare-fun m!8129298 () Bool)

(assert (=> b!7566933 m!8129298))

(assert (=> b!7566933 m!8128908))

(declare-fun m!8129300 () Bool)

(assert (=> b!7566933 m!8129300))

(assert (=> b!7566565 d!2316594))

(declare-fun d!2316596 () Bool)

(assert (=> d!2316596 (= (tail!15103 testedP!423) (t!387601 testedP!423))))

(assert (=> b!7566565 d!2316596))

(declare-fun d!2316598 () Bool)

(assert (=> d!2316598 (= (tail!15103 knownP!30) (t!387601 knownP!30))))

(assert (=> b!7566565 d!2316598))

(assert (=> d!2316482 d!2316542))

(declare-fun b!7566938 () Bool)

(declare-fun res!3031634 () Bool)

(declare-fun e!4505409 () Bool)

(assert (=> b!7566938 (=> (not res!3031634) (not e!4505409))))

(declare-fun lt!2650502 () List!72868)

(assert (=> b!7566938 (= res!3031634 (= (size!42481 lt!2650502) (+ (size!42481 testedP!423) (size!42481 (++!17489 lt!2650098 lt!2650107)))))))

(declare-fun d!2316600 () Bool)

(assert (=> d!2316600 e!4505409))

(declare-fun res!3031633 () Bool)

(assert (=> d!2316600 (=> (not res!3031633) (not e!4505409))))

(assert (=> d!2316600 (= res!3031633 (= (content!15406 lt!2650502) ((_ map or) (content!15406 testedP!423) (content!15406 (++!17489 lt!2650098 lt!2650107)))))))

(declare-fun e!4505410 () List!72868)

(assert (=> d!2316600 (= lt!2650502 e!4505410)))

(declare-fun c!1396283 () Bool)

(assert (=> d!2316600 (= c!1396283 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316600 (= (++!17489 testedP!423 (++!17489 lt!2650098 lt!2650107)) lt!2650502)))

(declare-fun b!7566939 () Bool)

(assert (=> b!7566939 (= e!4505409 (or (not (= (++!17489 lt!2650098 lt!2650107) Nil!72744)) (= lt!2650502 testedP!423)))))

(declare-fun b!7566937 () Bool)

(assert (=> b!7566937 (= e!4505410 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (++!17489 lt!2650098 lt!2650107))))))

(declare-fun b!7566936 () Bool)

(assert (=> b!7566936 (= e!4505410 (++!17489 lt!2650098 lt!2650107))))

(assert (= (and d!2316600 c!1396283) b!7566936))

(assert (= (and d!2316600 (not c!1396283)) b!7566937))

(assert (= (and d!2316600 res!3031633) b!7566938))

(assert (= (and b!7566938 res!3031634) b!7566939))

(declare-fun m!8129302 () Bool)

(assert (=> b!7566938 m!8129302))

(assert (=> b!7566938 m!8128472))

(assert (=> b!7566938 m!8128482))

(declare-fun m!8129304 () Bool)

(assert (=> b!7566938 m!8129304))

(declare-fun m!8129306 () Bool)

(assert (=> d!2316600 m!8129306))

(assert (=> d!2316600 m!8128876))

(assert (=> d!2316600 m!8128482))

(declare-fun m!8129308 () Bool)

(assert (=> d!2316600 m!8129308))

(assert (=> b!7566937 m!8128482))

(declare-fun m!8129310 () Bool)

(assert (=> b!7566937 m!8129310))

(assert (=> d!2316482 d!2316600))

(assert (=> d!2316482 d!2316480))

(declare-fun d!2316602 () Bool)

(assert (=> d!2316602 (= (++!17489 (++!17489 testedP!423 lt!2650098) lt!2650107) (++!17489 testedP!423 (++!17489 lt!2650098 lt!2650107)))))

(assert (=> d!2316602 true))

(declare-fun _$52!2497 () Unit!166904)

(assert (=> d!2316602 (= (choose!58517 testedP!423 lt!2650098 lt!2650107) _$52!2497)))

(declare-fun bs!1940493 () Bool)

(assert (= bs!1940493 d!2316602))

(assert (=> bs!1940493 m!8128564))

(assert (=> bs!1940493 m!8128564))

(assert (=> bs!1940493 m!8128896))

(assert (=> bs!1940493 m!8128482))

(assert (=> bs!1940493 m!8128482))

(assert (=> bs!1940493 m!8128894))

(assert (=> d!2316482 d!2316602))

(declare-fun b!7566942 () Bool)

(declare-fun res!3031636 () Bool)

(declare-fun e!4505411 () Bool)

(assert (=> b!7566942 (=> (not res!3031636) (not e!4505411))))

(declare-fun lt!2650503 () List!72868)

(assert (=> b!7566942 (= res!3031636 (= (size!42481 lt!2650503) (+ (size!42481 (++!17489 testedP!423 lt!2650098)) (size!42481 lt!2650107))))))

(declare-fun d!2316604 () Bool)

(assert (=> d!2316604 e!4505411))

(declare-fun res!3031635 () Bool)

(assert (=> d!2316604 (=> (not res!3031635) (not e!4505411))))

(assert (=> d!2316604 (= res!3031635 (= (content!15406 lt!2650503) ((_ map or) (content!15406 (++!17489 testedP!423 lt!2650098)) (content!15406 lt!2650107))))))

(declare-fun e!4505412 () List!72868)

(assert (=> d!2316604 (= lt!2650503 e!4505412)))

(declare-fun c!1396284 () Bool)

(assert (=> d!2316604 (= c!1396284 ((_ is Nil!72744) (++!17489 testedP!423 lt!2650098)))))

(assert (=> d!2316604 (= (++!17489 (++!17489 testedP!423 lt!2650098) lt!2650107) lt!2650503)))

(declare-fun b!7566943 () Bool)

(assert (=> b!7566943 (= e!4505411 (or (not (= lt!2650107 Nil!72744)) (= lt!2650503 (++!17489 testedP!423 lt!2650098))))))

(declare-fun b!7566941 () Bool)

(assert (=> b!7566941 (= e!4505412 (Cons!72744 (h!79192 (++!17489 testedP!423 lt!2650098)) (++!17489 (t!387601 (++!17489 testedP!423 lt!2650098)) lt!2650107)))))

(declare-fun b!7566940 () Bool)

(assert (=> b!7566940 (= e!4505412 lt!2650107)))

(assert (= (and d!2316604 c!1396284) b!7566940))

(assert (= (and d!2316604 (not c!1396284)) b!7566941))

(assert (= (and d!2316604 res!3031635) b!7566942))

(assert (= (and b!7566942 res!3031636) b!7566943))

(declare-fun m!8129312 () Bool)

(assert (=> b!7566942 m!8129312))

(assert (=> b!7566942 m!8128564))

(declare-fun m!8129314 () Bool)

(assert (=> b!7566942 m!8129314))

(assert (=> b!7566942 m!8128858))

(declare-fun m!8129316 () Bool)

(assert (=> d!2316604 m!8129316))

(assert (=> d!2316604 m!8128564))

(declare-fun m!8129318 () Bool)

(assert (=> d!2316604 m!8129318))

(assert (=> d!2316604 m!8128864))

(declare-fun m!8129320 () Bool)

(assert (=> b!7566941 m!8129320))

(assert (=> d!2316482 d!2316604))

(declare-fun d!2316606 () Bool)

(assert (=> d!2316606 (= (isEmpty!41423 lt!2650099) ((_ is Nil!72744) lt!2650099))))

(assert (=> bm!693695 d!2316606))

(declare-fun d!2316608 () Bool)

(declare-fun lt!2650504 () Int)

(assert (=> d!2316608 (>= lt!2650504 0)))

(declare-fun e!4505413 () Int)

(assert (=> d!2316608 (= lt!2650504 e!4505413)))

(declare-fun c!1396285 () Bool)

(assert (=> d!2316608 (= c!1396285 ((_ is Nil!72744) (_1!37735 lt!2650264)))))

(assert (=> d!2316608 (= (size!42481 (_1!37735 lt!2650264)) lt!2650504)))

(declare-fun b!7566944 () Bool)

(assert (=> b!7566944 (= e!4505413 0)))

(declare-fun b!7566945 () Bool)

(assert (=> b!7566945 (= e!4505413 (+ 1 (size!42481 (t!387601 (_1!37735 lt!2650264)))))))

(assert (= (and d!2316608 c!1396285) b!7566944))

(assert (= (and d!2316608 (not c!1396285)) b!7566945))

(declare-fun m!8129322 () Bool)

(assert (=> b!7566945 m!8129322))

(assert (=> b!7566441 d!2316608))

(assert (=> b!7566441 d!2316470))

(declare-fun bm!693762 () Bool)

(declare-fun call!693769 () Regex!19985)

(declare-fun call!693770 () Regex!19985)

(assert (=> bm!693762 (= call!693769 call!693770)))

(declare-fun bm!693763 () Bool)

(declare-fun call!693767 () Regex!19985)

(assert (=> bm!693763 (= call!693767 call!693769)))

(declare-fun call!693768 () Regex!19985)

(declare-fun bm!693764 () Bool)

(declare-fun c!1396290 () Bool)

(assert (=> bm!693764 (= call!693768 (derivativeStep!5763 (ite c!1396290 (regOne!40483 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))) (regTwo!40482 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))) lt!2650090))))

(declare-fun c!1396286 () Bool)

(declare-fun bm!693765 () Bool)

(assert (=> bm!693765 (= call!693770 (derivativeStep!5763 (ite c!1396290 (regTwo!40483 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))) (ite c!1396286 (reg!20314 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))) (regOne!40482 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))))) lt!2650090))))

(declare-fun b!7566946 () Bool)

(assert (=> b!7566946 (= c!1396290 ((_ is Union!19985) (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))))))

(declare-fun e!4505414 () Regex!19985)

(declare-fun e!4505418 () Regex!19985)

(assert (=> b!7566946 (= e!4505414 e!4505418)))

(declare-fun e!4505416 () Regex!19985)

(declare-fun b!7566947 () Bool)

(assert (=> b!7566947 (= e!4505416 (Union!19985 (Concat!28830 call!693767 (regTwo!40482 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))) call!693768))))

(declare-fun b!7566948 () Bool)

(declare-fun e!4505415 () Regex!19985)

(assert (=> b!7566948 (= e!4505415 EmptyLang!19985)))

(declare-fun d!2316610 () Bool)

(declare-fun lt!2650505 () Regex!19985)

(assert (=> d!2316610 (validRegex!10413 lt!2650505)))

(assert (=> d!2316610 (= lt!2650505 e!4505415)))

(declare-fun c!1396287 () Bool)

(assert (=> d!2316610 (= c!1396287 (or ((_ is EmptyExpr!19985) (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))) ((_ is EmptyLang!19985) (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))))))

(assert (=> d!2316610 (validRegex!10413 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))))

(assert (=> d!2316610 (= (derivativeStep!5763 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)) lt!2650090) lt!2650505)))

(declare-fun b!7566949 () Bool)

(assert (=> b!7566949 (= e!4505414 (ite (= lt!2650090 (c!1396094 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7566950 () Bool)

(assert (=> b!7566950 (= e!4505418 (Union!19985 call!693768 call!693770))))

(declare-fun b!7566951 () Bool)

(assert (=> b!7566951 (= e!4505416 (Union!19985 (Concat!28830 call!693767 (regTwo!40482 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))) EmptyLang!19985))))

(declare-fun e!4505417 () Regex!19985)

(declare-fun b!7566952 () Bool)

(assert (=> b!7566952 (= e!4505417 (Concat!28830 call!693769 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))))))

(declare-fun b!7566953 () Bool)

(assert (=> b!7566953 (= e!4505415 e!4505414)))

(declare-fun c!1396289 () Bool)

(assert (=> b!7566953 (= c!1396289 ((_ is ElementMatch!19985) (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))))))

(declare-fun b!7566954 () Bool)

(declare-fun c!1396288 () Bool)

(assert (=> b!7566954 (= c!1396288 (nullable!8719 (regOne!40482 (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333)))))))

(assert (=> b!7566954 (= e!4505417 e!4505416)))

(declare-fun b!7566955 () Bool)

(assert (=> b!7566955 (= e!4505418 e!4505417)))

(assert (=> b!7566955 (= c!1396286 ((_ is Star!19985) (ite c!1396247 (regOne!40483 r!24333) (regTwo!40482 r!24333))))))

(assert (= (and d!2316610 c!1396287) b!7566948))

(assert (= (and d!2316610 (not c!1396287)) b!7566953))

(assert (= (and b!7566953 c!1396289) b!7566949))

(assert (= (and b!7566953 (not c!1396289)) b!7566946))

(assert (= (and b!7566946 c!1396290) b!7566950))

(assert (= (and b!7566946 (not c!1396290)) b!7566955))

(assert (= (and b!7566955 c!1396286) b!7566952))

(assert (= (and b!7566955 (not c!1396286)) b!7566954))

(assert (= (and b!7566954 c!1396288) b!7566947))

(assert (= (and b!7566954 (not c!1396288)) b!7566951))

(assert (= (or b!7566947 b!7566951) bm!693763))

(assert (= (or b!7566952 bm!693763) bm!693762))

(assert (= (or b!7566950 bm!693762) bm!693765))

(assert (= (or b!7566950 b!7566947) bm!693764))

(declare-fun m!8129324 () Bool)

(assert (=> bm!693764 m!8129324))

(declare-fun m!8129326 () Bool)

(assert (=> bm!693765 m!8129326))

(declare-fun m!8129328 () Bool)

(assert (=> d!2316610 m!8129328))

(declare-fun m!8129330 () Bool)

(assert (=> d!2316610 m!8129330))

(declare-fun m!8129332 () Bool)

(assert (=> b!7566954 m!8129332))

(assert (=> bm!693733 d!2316610))

(declare-fun b!7566959 () Bool)

(declare-fun e!4505420 () Bool)

(assert (=> b!7566959 (= e!4505420 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (tail!15103 lt!2650100))))))

(declare-fun b!7566956 () Bool)

(declare-fun e!4505419 () Bool)

(declare-fun e!4505421 () Bool)

(assert (=> b!7566956 (= e!4505419 e!4505421)))

(declare-fun res!3031637 () Bool)

(assert (=> b!7566956 (=> (not res!3031637) (not e!4505421))))

(assert (=> b!7566956 (= res!3031637 (not ((_ is Nil!72744) (tail!15103 input!7874))))))

(declare-fun d!2316612 () Bool)

(assert (=> d!2316612 e!4505420))

(declare-fun res!3031639 () Bool)

(assert (=> d!2316612 (=> res!3031639 e!4505420)))

(declare-fun lt!2650506 () Bool)

(assert (=> d!2316612 (= res!3031639 (not lt!2650506))))

(assert (=> d!2316612 (= lt!2650506 e!4505419)))

(declare-fun res!3031640 () Bool)

(assert (=> d!2316612 (=> res!3031640 e!4505419)))

(assert (=> d!2316612 (= res!3031640 ((_ is Nil!72744) (tail!15103 lt!2650100)))))

(assert (=> d!2316612 (= (isPrefix!6191 (tail!15103 lt!2650100) (tail!15103 input!7874)) lt!2650506)))

(declare-fun b!7566958 () Bool)

(assert (=> b!7566958 (= e!4505421 (isPrefix!6191 (tail!15103 (tail!15103 lt!2650100)) (tail!15103 (tail!15103 input!7874))))))

(declare-fun b!7566957 () Bool)

(declare-fun res!3031638 () Bool)

(assert (=> b!7566957 (=> (not res!3031638) (not e!4505421))))

(assert (=> b!7566957 (= res!3031638 (= (head!15563 (tail!15103 lt!2650100)) (head!15563 (tail!15103 input!7874))))))

(assert (= (and d!2316612 (not res!3031640)) b!7566956))

(assert (= (and b!7566956 res!3031637) b!7566957))

(assert (= (and b!7566957 res!3031638) b!7566958))

(assert (= (and d!2316612 (not res!3031639)) b!7566959))

(assert (=> b!7566959 m!8128796))

(declare-fun m!8129334 () Bool)

(assert (=> b!7566959 m!8129334))

(assert (=> b!7566959 m!8129176))

(declare-fun m!8129336 () Bool)

(assert (=> b!7566959 m!8129336))

(assert (=> b!7566958 m!8129176))

(declare-fun m!8129338 () Bool)

(assert (=> b!7566958 m!8129338))

(assert (=> b!7566958 m!8128796))

(declare-fun m!8129340 () Bool)

(assert (=> b!7566958 m!8129340))

(assert (=> b!7566958 m!8129338))

(assert (=> b!7566958 m!8129340))

(declare-fun m!8129342 () Bool)

(assert (=> b!7566958 m!8129342))

(assert (=> b!7566957 m!8129176))

(declare-fun m!8129344 () Bool)

(assert (=> b!7566957 m!8129344))

(assert (=> b!7566957 m!8128796))

(declare-fun m!8129346 () Bool)

(assert (=> b!7566957 m!8129346))

(assert (=> b!7566763 d!2316612))

(declare-fun d!2316614 () Bool)

(assert (=> d!2316614 (= (tail!15103 lt!2650100) (t!387601 lt!2650100))))

(assert (=> b!7566763 d!2316614))

(declare-fun d!2316616 () Bool)

(assert (=> d!2316616 (= (tail!15103 input!7874) (t!387601 input!7874))))

(assert (=> b!7566763 d!2316616))

(declare-fun d!2316618 () Bool)

(declare-fun c!1396293 () Bool)

(assert (=> d!2316618 (= c!1396293 ((_ is Nil!72744) lt!2650290))))

(declare-fun e!4505424 () (InoxSet C!40296))

(assert (=> d!2316618 (= (content!15406 lt!2650290) e!4505424)))

(declare-fun b!7566964 () Bool)

(assert (=> b!7566964 (= e!4505424 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7566965 () Bool)

(assert (=> b!7566965 (= e!4505424 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650290) true) (content!15406 (t!387601 lt!2650290))))))

(assert (= (and d!2316618 c!1396293) b!7566964))

(assert (= (and d!2316618 (not c!1396293)) b!7566965))

(declare-fun m!8129348 () Bool)

(assert (=> b!7566965 m!8129348))

(declare-fun m!8129350 () Bool)

(assert (=> b!7566965 m!8129350))

(assert (=> d!2316474 d!2316618))

(declare-fun d!2316620 () Bool)

(declare-fun c!1396294 () Bool)

(assert (=> d!2316620 (= c!1396294 ((_ is Nil!72744) lt!2650100))))

(declare-fun e!4505425 () (InoxSet C!40296))

(assert (=> d!2316620 (= (content!15406 lt!2650100) e!4505425)))

(declare-fun b!7566966 () Bool)

(assert (=> b!7566966 (= e!4505425 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7566967 () Bool)

(assert (=> b!7566967 (= e!4505425 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650100) true) (content!15406 (t!387601 lt!2650100))))))

(assert (= (and d!2316620 c!1396294) b!7566966))

(assert (= (and d!2316620 (not c!1396294)) b!7566967))

(declare-fun m!8129352 () Bool)

(assert (=> b!7566967 m!8129352))

(declare-fun m!8129354 () Bool)

(assert (=> b!7566967 m!8129354))

(assert (=> d!2316474 d!2316620))

(declare-fun d!2316622 () Bool)

(declare-fun c!1396295 () Bool)

(assert (=> d!2316622 (= c!1396295 ((_ is Nil!72744) lt!2650107))))

(declare-fun e!4505426 () (InoxSet C!40296))

(assert (=> d!2316622 (= (content!15406 lt!2650107) e!4505426)))

(declare-fun b!7566968 () Bool)

(assert (=> b!7566968 (= e!4505426 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7566969 () Bool)

(assert (=> b!7566969 (= e!4505426 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650107) true) (content!15406 (t!387601 lt!2650107))))))

(assert (= (and d!2316622 c!1396295) b!7566968))

(assert (= (and d!2316622 (not c!1396295)) b!7566969))

(declare-fun m!8129356 () Bool)

(assert (=> b!7566969 m!8129356))

(declare-fun m!8129358 () Bool)

(assert (=> b!7566969 m!8129358))

(assert (=> d!2316474 d!2316622))

(assert (=> b!7566544 d!2316506))

(declare-fun d!2316624 () Bool)

(declare-fun lt!2650507 () Int)

(assert (=> d!2316624 (>= lt!2650507 0)))

(declare-fun e!4505427 () Int)

(assert (=> d!2316624 (= lt!2650507 e!4505427)))

(declare-fun c!1396296 () Bool)

(assert (=> d!2316624 (= c!1396296 ((_ is Nil!72744) lt!2650367))))

(assert (=> d!2316624 (= (size!42481 lt!2650367) lt!2650507)))

(declare-fun b!7566970 () Bool)

(assert (=> b!7566970 (= e!4505427 0)))

(declare-fun b!7566971 () Bool)

(assert (=> b!7566971 (= e!4505427 (+ 1 (size!42481 (t!387601 lt!2650367))))))

(assert (= (and d!2316624 c!1396296) b!7566970))

(assert (= (and d!2316624 (not c!1396296)) b!7566971))

(declare-fun m!8129360 () Bool)

(assert (=> b!7566971 m!8129360))

(assert (=> b!7566577 d!2316624))

(assert (=> b!7566577 d!2316534))

(declare-fun d!2316626 () Bool)

(declare-fun lt!2650508 () Int)

(assert (=> d!2316626 (>= lt!2650508 0)))

(declare-fun e!4505428 () Int)

(assert (=> d!2316626 (= lt!2650508 e!4505428)))

(declare-fun c!1396297 () Bool)

(assert (=> d!2316626 (= c!1396297 ((_ is Nil!72744) lt!2650115))))

(assert (=> d!2316626 (= (size!42481 lt!2650115) lt!2650508)))

(declare-fun b!7566972 () Bool)

(assert (=> b!7566972 (= e!4505428 0)))

(declare-fun b!7566973 () Bool)

(assert (=> b!7566973 (= e!4505428 (+ 1 (size!42481 (t!387601 lt!2650115))))))

(assert (= (and d!2316626 c!1396297) b!7566972))

(assert (= (and d!2316626 (not c!1396297)) b!7566973))

(declare-fun m!8129362 () Bool)

(assert (=> b!7566973 m!8129362))

(assert (=> b!7566577 d!2316626))

(declare-fun bm!693766 () Bool)

(declare-fun call!693773 () Regex!19985)

(declare-fun call!693774 () Regex!19985)

(assert (=> bm!693766 (= call!693773 call!693774)))

(declare-fun bm!693767 () Bool)

(declare-fun call!693771 () Regex!19985)

(assert (=> bm!693767 (= call!693771 call!693773)))

(declare-fun bm!693768 () Bool)

(declare-fun call!693772 () Regex!19985)

(declare-fun c!1396302 () Bool)

(assert (=> bm!693768 (= call!693772 (derivativeStep!5763 (ite c!1396302 (regOne!40483 r!24333) (regTwo!40482 r!24333)) call!693672))))

(declare-fun bm!693769 () Bool)

(declare-fun c!1396298 () Bool)

(assert (=> bm!693769 (= call!693774 (derivativeStep!5763 (ite c!1396302 (regTwo!40483 r!24333) (ite c!1396298 (reg!20314 r!24333) (regOne!40482 r!24333))) call!693672))))

(declare-fun b!7566974 () Bool)

(assert (=> b!7566974 (= c!1396302 ((_ is Union!19985) r!24333))))

(declare-fun e!4505429 () Regex!19985)

(declare-fun e!4505433 () Regex!19985)

(assert (=> b!7566974 (= e!4505429 e!4505433)))

(declare-fun e!4505431 () Regex!19985)

(declare-fun b!7566975 () Bool)

(assert (=> b!7566975 (= e!4505431 (Union!19985 (Concat!28830 call!693771 (regTwo!40482 r!24333)) call!693772))))

(declare-fun b!7566976 () Bool)

(declare-fun e!4505430 () Regex!19985)

(assert (=> b!7566976 (= e!4505430 EmptyLang!19985)))

(declare-fun d!2316628 () Bool)

(declare-fun lt!2650509 () Regex!19985)

(assert (=> d!2316628 (validRegex!10413 lt!2650509)))

(assert (=> d!2316628 (= lt!2650509 e!4505430)))

(declare-fun c!1396299 () Bool)

(assert (=> d!2316628 (= c!1396299 (or ((_ is EmptyExpr!19985) r!24333) ((_ is EmptyLang!19985) r!24333)))))

(assert (=> d!2316628 (validRegex!10413 r!24333)))

(assert (=> d!2316628 (= (derivativeStep!5763 r!24333 call!693672) lt!2650509)))

(declare-fun b!7566977 () Bool)

(assert (=> b!7566977 (= e!4505429 (ite (= call!693672 (c!1396094 r!24333)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7566978 () Bool)

(assert (=> b!7566978 (= e!4505433 (Union!19985 call!693772 call!693774))))

(declare-fun b!7566979 () Bool)

(assert (=> b!7566979 (= e!4505431 (Union!19985 (Concat!28830 call!693771 (regTwo!40482 r!24333)) EmptyLang!19985))))

(declare-fun b!7566980 () Bool)

(declare-fun e!4505432 () Regex!19985)

(assert (=> b!7566980 (= e!4505432 (Concat!28830 call!693773 r!24333))))

(declare-fun b!7566981 () Bool)

(assert (=> b!7566981 (= e!4505430 e!4505429)))

(declare-fun c!1396301 () Bool)

(assert (=> b!7566981 (= c!1396301 ((_ is ElementMatch!19985) r!24333))))

(declare-fun b!7566982 () Bool)

(declare-fun c!1396300 () Bool)

(assert (=> b!7566982 (= c!1396300 (nullable!8719 (regOne!40482 r!24333)))))

(assert (=> b!7566982 (= e!4505432 e!4505431)))

(declare-fun b!7566983 () Bool)

(assert (=> b!7566983 (= e!4505433 e!4505432)))

(assert (=> b!7566983 (= c!1396298 ((_ is Star!19985) r!24333))))

(assert (= (and d!2316628 c!1396299) b!7566976))

(assert (= (and d!2316628 (not c!1396299)) b!7566981))

(assert (= (and b!7566981 c!1396301) b!7566977))

(assert (= (and b!7566981 (not c!1396301)) b!7566974))

(assert (= (and b!7566974 c!1396302) b!7566978))

(assert (= (and b!7566974 (not c!1396302)) b!7566983))

(assert (= (and b!7566983 c!1396298) b!7566980))

(assert (= (and b!7566983 (not c!1396298)) b!7566982))

(assert (= (and b!7566982 c!1396300) b!7566975))

(assert (= (and b!7566982 (not c!1396300)) b!7566979))

(assert (= (or b!7566975 b!7566979) bm!693767))

(assert (= (or b!7566980 bm!693767) bm!693766))

(assert (= (or b!7566978 bm!693766) bm!693769))

(assert (= (or b!7566978 b!7566975) bm!693768))

(declare-fun m!8129364 () Bool)

(assert (=> bm!693768 m!8129364))

(declare-fun m!8129366 () Bool)

(assert (=> bm!693769 m!8129366))

(declare-fun m!8129368 () Bool)

(assert (=> d!2316628 m!8129368))

(assert (=> d!2316628 m!8128526))

(assert (=> b!7566982 m!8129140))

(assert (=> bm!693666 d!2316628))

(declare-fun d!2316630 () Bool)

(assert (=> d!2316630 (= (head!15563 knownP!30) (h!79192 knownP!30))))

(assert (=> b!7566788 d!2316630))

(declare-fun b!7566986 () Bool)

(declare-fun res!3031642 () Bool)

(declare-fun e!4505434 () Bool)

(assert (=> b!7566986 (=> (not res!3031642) (not e!4505434))))

(declare-fun lt!2650510 () List!72868)

(assert (=> b!7566986 (= res!3031642 (= (size!42481 lt!2650510) (+ (size!42481 (t!387601 testedP!423)) (size!42481 lt!2650104))))))

(declare-fun d!2316632 () Bool)

(assert (=> d!2316632 e!4505434))

(declare-fun res!3031641 () Bool)

(assert (=> d!2316632 (=> (not res!3031641) (not e!4505434))))

(assert (=> d!2316632 (= res!3031641 (= (content!15406 lt!2650510) ((_ map or) (content!15406 (t!387601 testedP!423)) (content!15406 lt!2650104))))))

(declare-fun e!4505435 () List!72868)

(assert (=> d!2316632 (= lt!2650510 e!4505435)))

(declare-fun c!1396303 () Bool)

(assert (=> d!2316632 (= c!1396303 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2316632 (= (++!17489 (t!387601 testedP!423) lt!2650104) lt!2650510)))

(declare-fun b!7566987 () Bool)

(assert (=> b!7566987 (= e!4505434 (or (not (= lt!2650104 Nil!72744)) (= lt!2650510 (t!387601 testedP!423))))))

(declare-fun b!7566985 () Bool)

(assert (=> b!7566985 (= e!4505435 (Cons!72744 (h!79192 (t!387601 testedP!423)) (++!17489 (t!387601 (t!387601 testedP!423)) lt!2650104)))))

(declare-fun b!7566984 () Bool)

(assert (=> b!7566984 (= e!4505435 lt!2650104)))

(assert (= (and d!2316632 c!1396303) b!7566984))

(assert (= (and d!2316632 (not c!1396303)) b!7566985))

(assert (= (and d!2316632 res!3031641) b!7566986))

(assert (= (and b!7566986 res!3031642) b!7566987))

(declare-fun m!8129370 () Bool)

(assert (=> b!7566986 m!8129370))

(assert (=> b!7566986 m!8129096))

(assert (=> b!7566986 m!8128872))

(declare-fun m!8129372 () Bool)

(assert (=> d!2316632 m!8129372))

(declare-fun m!8129374 () Bool)

(assert (=> d!2316632 m!8129374))

(assert (=> d!2316632 m!8128878))

(declare-fun m!8129376 () Bool)

(assert (=> b!7566985 m!8129376))

(assert (=> b!7566476 d!2316632))

(declare-fun d!2316634 () Bool)

(declare-fun lt!2650511 () Int)

(assert (=> d!2316634 (>= lt!2650511 0)))

(declare-fun e!4505436 () Int)

(assert (=> d!2316634 (= lt!2650511 e!4505436)))

(declare-fun c!1396304 () Bool)

(assert (=> d!2316634 (= c!1396304 ((_ is Nil!72744) (t!387601 knownP!30)))))

(assert (=> d!2316634 (= (size!42481 (t!387601 knownP!30)) lt!2650511)))

(declare-fun b!7566988 () Bool)

(assert (=> b!7566988 (= e!4505436 0)))

(declare-fun b!7566989 () Bool)

(assert (=> b!7566989 (= e!4505436 (+ 1 (size!42481 (t!387601 (t!387601 knownP!30)))))))

(assert (= (and d!2316634 c!1396304) b!7566988))

(assert (= (and d!2316634 (not c!1396304)) b!7566989))

(declare-fun m!8129378 () Bool)

(assert (=> b!7566989 m!8129378))

(assert (=> b!7566667 d!2316634))

(declare-fun d!2316636 () Bool)

(assert (=> d!2316636 (= (isEmpty!41423 (_1!37735 lt!2650273)) ((_ is Nil!72744) (_1!37735 lt!2650273)))))

(assert (=> b!7566445 d!2316636))

(assert (=> d!2316564 d!2316556))

(declare-fun b!7566993 () Bool)

(declare-fun e!4505438 () Bool)

(assert (=> b!7566993 (= e!4505438 (>= (size!42481 input!7874) (size!42481 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)))))))

(declare-fun b!7566990 () Bool)

(declare-fun e!4505437 () Bool)

(declare-fun e!4505439 () Bool)

(assert (=> b!7566990 (= e!4505437 e!4505439)))

(declare-fun res!3031643 () Bool)

(assert (=> b!7566990 (=> (not res!3031643) (not e!4505439))))

(assert (=> b!7566990 (= res!3031643 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316638 () Bool)

(assert (=> d!2316638 e!4505438))

(declare-fun res!3031645 () Bool)

(assert (=> d!2316638 (=> res!3031645 e!4505438)))

(declare-fun lt!2650512 () Bool)

(assert (=> d!2316638 (= res!3031645 (not lt!2650512))))

(assert (=> d!2316638 (= lt!2650512 e!4505437)))

(declare-fun res!3031646 () Bool)

(assert (=> d!2316638 (=> res!3031646 e!4505437)))

(assert (=> d!2316638 (= res!3031646 ((_ is Nil!72744) (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744))))))

(assert (=> d!2316638 (= (isPrefix!6191 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)) input!7874) lt!2650512)))

(declare-fun b!7566992 () Bool)

(assert (=> b!7566992 (= e!4505439 (isPrefix!6191 (tail!15103 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744))) (tail!15103 input!7874)))))

(declare-fun b!7566991 () Bool)

(declare-fun res!3031644 () Bool)

(assert (=> b!7566991 (=> (not res!3031644) (not e!4505439))))

(assert (=> b!7566991 (= res!3031644 (= (head!15563 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744))) (head!15563 input!7874)))))

(assert (= (and d!2316638 (not res!3031646)) b!7566990))

(assert (= (and b!7566990 res!3031643) b!7566991))

(assert (= (and b!7566991 res!3031644) b!7566992))

(assert (= (and d!2316638 (not res!3031645)) b!7566993))

(assert (=> b!7566993 m!8128476))

(assert (=> b!7566993 m!8128770))

(declare-fun m!8129380 () Bool)

(assert (=> b!7566993 m!8129380))

(assert (=> b!7566992 m!8128770))

(declare-fun m!8129382 () Bool)

(assert (=> b!7566992 m!8129382))

(assert (=> b!7566992 m!8128796))

(assert (=> b!7566992 m!8129382))

(assert (=> b!7566992 m!8128796))

(declare-fun m!8129384 () Bool)

(assert (=> b!7566992 m!8129384))

(assert (=> b!7566991 m!8128770))

(declare-fun m!8129386 () Bool)

(assert (=> b!7566991 m!8129386))

(assert (=> b!7566991 m!8128924))

(assert (=> d!2316564 d!2316638))

(declare-fun d!2316640 () Bool)

(assert (=> d!2316640 (isPrefix!6191 (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)) input!7874)))

(assert (=> d!2316640 true))

(declare-fun _$65!1919 () Unit!166904)

(assert (=> d!2316640 (= (choose!58521 testedP!423 input!7874) _$65!1919)))

(declare-fun bs!1940494 () Bool)

(assert (= bs!1940494 d!2316640))

(assert (=> bs!1940494 m!8128550))

(assert (=> bs!1940494 m!8128550))

(assert (=> bs!1940494 m!8128768))

(assert (=> bs!1940494 m!8128770))

(assert (=> bs!1940494 m!8128770))

(assert (=> bs!1940494 m!8128776))

(assert (=> d!2316564 d!2316640))

(assert (=> d!2316564 d!2316494))

(declare-fun b!7566996 () Bool)

(declare-fun res!3031648 () Bool)

(declare-fun e!4505440 () Bool)

(assert (=> b!7566996 (=> (not res!3031648) (not e!4505440))))

(declare-fun lt!2650513 () List!72868)

(assert (=> b!7566996 (= res!3031648 (= (size!42481 lt!2650513) (+ (size!42481 testedP!423) (size!42481 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)))))))

(declare-fun d!2316642 () Bool)

(assert (=> d!2316642 e!4505440))

(declare-fun res!3031647 () Bool)

(assert (=> d!2316642 (=> (not res!3031647) (not e!4505440))))

(assert (=> d!2316642 (= res!3031647 (= (content!15406 lt!2650513) ((_ map or) (content!15406 testedP!423) (content!15406 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)))))))

(declare-fun e!4505441 () List!72868)

(assert (=> d!2316642 (= lt!2650513 e!4505441)))

(declare-fun c!1396305 () Bool)

(assert (=> d!2316642 (= c!1396305 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316642 (= (++!17489 testedP!423 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744)) lt!2650513)))

(declare-fun b!7566997 () Bool)

(assert (=> b!7566997 (= e!4505440 (or (not (= (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744) Nil!72744)) (= lt!2650513 testedP!423)))))

(declare-fun b!7566995 () Bool)

(assert (=> b!7566995 (= e!4505441 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744))))))

(declare-fun b!7566994 () Bool)

(assert (=> b!7566994 (= e!4505441 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 testedP!423)) Nil!72744))))

(assert (= (and d!2316642 c!1396305) b!7566994))

(assert (= (and d!2316642 (not c!1396305)) b!7566995))

(assert (= (and d!2316642 res!3031647) b!7566996))

(assert (= (and b!7566996 res!3031648) b!7566997))

(declare-fun m!8129388 () Bool)

(assert (=> b!7566996 m!8129388))

(assert (=> b!7566996 m!8128472))

(declare-fun m!8129390 () Bool)

(assert (=> b!7566996 m!8129390))

(declare-fun m!8129392 () Bool)

(assert (=> d!2316642 m!8129392))

(assert (=> d!2316642 m!8128876))

(declare-fun m!8129394 () Bool)

(assert (=> d!2316642 m!8129394))

(declare-fun m!8129396 () Bool)

(assert (=> b!7566995 m!8129396))

(assert (=> d!2316564 d!2316642))

(declare-fun d!2316644 () Bool)

(assert (=> d!2316644 (= (head!15563 (getSuffix!3669 input!7874 testedP!423)) (h!79192 (getSuffix!3669 input!7874 testedP!423)))))

(assert (=> d!2316564 d!2316644))

(declare-fun bm!693770 () Bool)

(declare-fun call!693777 () Regex!19985)

(declare-fun call!693778 () Regex!19985)

(assert (=> bm!693770 (= call!693777 call!693778)))

(declare-fun bm!693771 () Bool)

(declare-fun call!693775 () Regex!19985)

(assert (=> bm!693771 (= call!693775 call!693777)))

(declare-fun call!693776 () Regex!19985)

(declare-fun bm!693772 () Bool)

(declare-fun c!1396310 () Bool)

(assert (=> bm!693772 (= call!693776 (derivativeStep!5763 (ite c!1396310 (regOne!40483 lt!2650106) (regTwo!40482 lt!2650106)) call!693680))))

(declare-fun bm!693773 () Bool)

(declare-fun c!1396306 () Bool)

(assert (=> bm!693773 (= call!693778 (derivativeStep!5763 (ite c!1396310 (regTwo!40483 lt!2650106) (ite c!1396306 (reg!20314 lt!2650106) (regOne!40482 lt!2650106))) call!693680))))

(declare-fun b!7566998 () Bool)

(assert (=> b!7566998 (= c!1396310 ((_ is Union!19985) lt!2650106))))

(declare-fun e!4505442 () Regex!19985)

(declare-fun e!4505446 () Regex!19985)

(assert (=> b!7566998 (= e!4505442 e!4505446)))

(declare-fun b!7566999 () Bool)

(declare-fun e!4505444 () Regex!19985)

(assert (=> b!7566999 (= e!4505444 (Union!19985 (Concat!28830 call!693775 (regTwo!40482 lt!2650106)) call!693776))))

(declare-fun b!7567000 () Bool)

(declare-fun e!4505443 () Regex!19985)

(assert (=> b!7567000 (= e!4505443 EmptyLang!19985)))

(declare-fun d!2316646 () Bool)

(declare-fun lt!2650514 () Regex!19985)

(assert (=> d!2316646 (validRegex!10413 lt!2650514)))

(assert (=> d!2316646 (= lt!2650514 e!4505443)))

(declare-fun c!1396307 () Bool)

(assert (=> d!2316646 (= c!1396307 (or ((_ is EmptyExpr!19985) lt!2650106) ((_ is EmptyLang!19985) lt!2650106)))))

(assert (=> d!2316646 (validRegex!10413 lt!2650106)))

(assert (=> d!2316646 (= (derivativeStep!5763 lt!2650106 call!693680) lt!2650514)))

(declare-fun b!7567001 () Bool)

(assert (=> b!7567001 (= e!4505442 (ite (= call!693680 (c!1396094 lt!2650106)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567002 () Bool)

(assert (=> b!7567002 (= e!4505446 (Union!19985 call!693776 call!693778))))

(declare-fun b!7567003 () Bool)

(assert (=> b!7567003 (= e!4505444 (Union!19985 (Concat!28830 call!693775 (regTwo!40482 lt!2650106)) EmptyLang!19985))))

(declare-fun b!7567004 () Bool)

(declare-fun e!4505445 () Regex!19985)

(assert (=> b!7567004 (= e!4505445 (Concat!28830 call!693777 lt!2650106))))

(declare-fun b!7567005 () Bool)

(assert (=> b!7567005 (= e!4505443 e!4505442)))

(declare-fun c!1396309 () Bool)

(assert (=> b!7567005 (= c!1396309 ((_ is ElementMatch!19985) lt!2650106))))

(declare-fun b!7567006 () Bool)

(declare-fun c!1396308 () Bool)

(assert (=> b!7567006 (= c!1396308 (nullable!8719 (regOne!40482 lt!2650106)))))

(assert (=> b!7567006 (= e!4505445 e!4505444)))

(declare-fun b!7567007 () Bool)

(assert (=> b!7567007 (= e!4505446 e!4505445)))

(assert (=> b!7567007 (= c!1396306 ((_ is Star!19985) lt!2650106))))

(assert (= (and d!2316646 c!1396307) b!7567000))

(assert (= (and d!2316646 (not c!1396307)) b!7567005))

(assert (= (and b!7567005 c!1396309) b!7567001))

(assert (= (and b!7567005 (not c!1396309)) b!7566998))

(assert (= (and b!7566998 c!1396310) b!7567002))

(assert (= (and b!7566998 (not c!1396310)) b!7567007))

(assert (= (and b!7567007 c!1396306) b!7567004))

(assert (= (and b!7567007 (not c!1396306)) b!7567006))

(assert (= (and b!7567006 c!1396308) b!7566999))

(assert (= (and b!7567006 (not c!1396308)) b!7567003))

(assert (= (or b!7566999 b!7567003) bm!693771))

(assert (= (or b!7567004 bm!693771) bm!693770))

(assert (= (or b!7567002 bm!693770) bm!693773))

(assert (= (or b!7567002 b!7566999) bm!693772))

(declare-fun m!8129398 () Bool)

(assert (=> bm!693772 m!8129398))

(declare-fun m!8129400 () Bool)

(assert (=> bm!693773 m!8129400))

(declare-fun m!8129402 () Bool)

(assert (=> d!2316646 m!8129402))

(assert (=> d!2316646 m!8128834))

(declare-fun m!8129404 () Bool)

(assert (=> b!7567006 m!8129404))

(assert (=> bm!693674 d!2316646))

(declare-fun b!7567010 () Bool)

(declare-fun res!3031650 () Bool)

(declare-fun e!4505447 () Bool)

(assert (=> b!7567010 (=> (not res!3031650) (not e!4505447))))

(declare-fun lt!2650515 () List!72868)

(assert (=> b!7567010 (= res!3031650 (= (size!42481 lt!2650515) (+ (size!42481 (t!387601 knownP!30)) (size!42481 lt!2650116))))))

(declare-fun d!2316648 () Bool)

(assert (=> d!2316648 e!4505447))

(declare-fun res!3031649 () Bool)

(assert (=> d!2316648 (=> (not res!3031649) (not e!4505447))))

(assert (=> d!2316648 (= res!3031649 (= (content!15406 lt!2650515) ((_ map or) (content!15406 (t!387601 knownP!30)) (content!15406 lt!2650116))))))

(declare-fun e!4505448 () List!72868)

(assert (=> d!2316648 (= lt!2650515 e!4505448)))

(declare-fun c!1396311 () Bool)

(assert (=> d!2316648 (= c!1396311 ((_ is Nil!72744) (t!387601 knownP!30)))))

(assert (=> d!2316648 (= (++!17489 (t!387601 knownP!30) lt!2650116) lt!2650515)))

(declare-fun b!7567011 () Bool)

(assert (=> b!7567011 (= e!4505447 (or (not (= lt!2650116 Nil!72744)) (= lt!2650515 (t!387601 knownP!30))))))

(declare-fun b!7567009 () Bool)

(assert (=> b!7567009 (= e!4505448 (Cons!72744 (h!79192 (t!387601 knownP!30)) (++!17489 (t!387601 (t!387601 knownP!30)) lt!2650116)))))

(declare-fun b!7567008 () Bool)

(assert (=> b!7567008 (= e!4505448 lt!2650116)))

(assert (= (and d!2316648 c!1396311) b!7567008))

(assert (= (and d!2316648 (not c!1396311)) b!7567009))

(assert (= (and d!2316648 res!3031649) b!7567010))

(assert (= (and b!7567010 res!3031650) b!7567011))

(declare-fun m!8129406 () Bool)

(assert (=> b!7567010 m!8129406))

(assert (=> b!7567010 m!8129098))

(assert (=> b!7567010 m!8128942))

(declare-fun m!8129408 () Bool)

(assert (=> d!2316648 m!8129408))

(declare-fun m!8129410 () Bool)

(assert (=> d!2316648 m!8129410))

(assert (=> d!2316648 m!8128948))

(declare-fun m!8129412 () Bool)

(assert (=> b!7567009 m!8129412))

(assert (=> b!7566735 d!2316648))

(declare-fun d!2316650 () Bool)

(assert (=> d!2316650 (= (tail!15103 lt!2650115) (t!387601 lt!2650115))))

(assert (=> bm!693668 d!2316650))

(declare-fun d!2316652 () Bool)

(declare-fun lt!2650516 () List!72868)

(assert (=> d!2316652 (= (++!17489 (t!387601 knownP!30) lt!2650516) (tail!15103 input!7874))))

(declare-fun e!4505449 () List!72868)

(assert (=> d!2316652 (= lt!2650516 e!4505449)))

(declare-fun c!1396312 () Bool)

(assert (=> d!2316652 (= c!1396312 ((_ is Cons!72744) (t!387601 knownP!30)))))

(assert (=> d!2316652 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (t!387601 knownP!30)))))

(assert (=> d!2316652 (= (getSuffix!3669 (tail!15103 input!7874) (t!387601 knownP!30)) lt!2650516)))

(declare-fun b!7567012 () Bool)

(assert (=> b!7567012 (= e!4505449 (getSuffix!3669 (tail!15103 (tail!15103 input!7874)) (t!387601 (t!387601 knownP!30))))))

(declare-fun b!7567013 () Bool)

(assert (=> b!7567013 (= e!4505449 (tail!15103 input!7874))))

(assert (= (and d!2316652 c!1396312) b!7567012))

(assert (= (and d!2316652 (not c!1396312)) b!7567013))

(declare-fun m!8129414 () Bool)

(assert (=> d!2316652 m!8129414))

(assert (=> d!2316652 m!8128796))

(assert (=> d!2316652 m!8129334))

(assert (=> d!2316652 m!8129098))

(assert (=> b!7567012 m!8128796))

(assert (=> b!7567012 m!8129340))

(assert (=> b!7567012 m!8129340))

(declare-fun m!8129416 () Bool)

(assert (=> b!7567012 m!8129416))

(assert (=> b!7566769 d!2316652))

(assert (=> b!7566769 d!2316616))

(declare-fun b!7567014 () Bool)

(declare-fun e!4505457 () Bool)

(declare-fun lt!2650525 () tuple2!68864)

(assert (=> b!7567014 (= e!4505457 (>= (size!42481 (_1!37735 lt!2650525)) (size!42481 lt!2650283)))))

(declare-fun b!7567015 () Bool)

(declare-fun e!4505454 () tuple2!68864)

(assert (=> b!7567015 (= e!4505454 (tuple2!68865 lt!2650283 call!693679))))

(declare-fun b!7567017 () Bool)

(declare-fun c!1396318 () Bool)

(declare-fun call!693781 () Bool)

(assert (=> b!7567017 (= c!1396318 call!693781)))

(declare-fun lt!2650520 () Unit!166904)

(declare-fun lt!2650530 () Unit!166904)

(assert (=> b!7567017 (= lt!2650520 lt!2650530)))

(declare-fun lt!2650535 () List!72868)

(declare-fun lt!2650528 () C!40296)

(assert (=> b!7567017 (= (++!17489 (++!17489 lt!2650283 (Cons!72744 lt!2650528 Nil!72744)) lt!2650535) input!7874)))

(assert (=> b!7567017 (= lt!2650530 (lemmaMoveElementToOtherListKeepsConcatEq!3180 lt!2650283 lt!2650528 lt!2650535 input!7874))))

(assert (=> b!7567017 (= lt!2650535 (tail!15103 call!693679))))

(assert (=> b!7567017 (= lt!2650528 (head!15563 call!693679))))

(declare-fun lt!2650537 () Unit!166904)

(declare-fun lt!2650519 () Unit!166904)

(assert (=> b!7567017 (= lt!2650537 lt!2650519)))

(assert (=> b!7567017 (isPrefix!6191 (++!17489 lt!2650283 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650283)) Nil!72744)) input!7874)))

(assert (=> b!7567017 (= lt!2650519 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650283 input!7874))))

(declare-fun lt!2650522 () Unit!166904)

(declare-fun lt!2650521 () Unit!166904)

(assert (=> b!7567017 (= lt!2650522 lt!2650521)))

(assert (=> b!7567017 (= lt!2650521 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650283 input!7874))))

(declare-fun lt!2650544 () List!72868)

(assert (=> b!7567017 (= lt!2650544 (++!17489 lt!2650283 (Cons!72744 (head!15563 call!693679) Nil!72744)))))

(declare-fun lt!2650518 () Unit!166904)

(declare-fun e!4505455 () Unit!166904)

(assert (=> b!7567017 (= lt!2650518 e!4505455)))

(declare-fun c!1396315 () Bool)

(assert (=> b!7567017 (= c!1396315 (= (size!42481 lt!2650283) (size!42481 input!7874)))))

(declare-fun lt!2650526 () Unit!166904)

(declare-fun lt!2650532 () Unit!166904)

(assert (=> b!7567017 (= lt!2650526 lt!2650532)))

(assert (=> b!7567017 (<= (size!42481 lt!2650283) (size!42481 input!7874))))

(assert (=> b!7567017 (= lt!2650532 (lemmaIsPrefixThenSmallerEqSize!1019 lt!2650283 input!7874))))

(declare-fun e!4505456 () tuple2!68864)

(declare-fun e!4505450 () tuple2!68864)

(assert (=> b!7567017 (= e!4505456 e!4505450)))

(declare-fun b!7567018 () Bool)

(assert (=> b!7567018 (= e!4505450 e!4505454)))

(declare-fun lt!2650534 () tuple2!68864)

(declare-fun call!693784 () tuple2!68864)

(assert (=> b!7567018 (= lt!2650534 call!693784)))

(declare-fun c!1396316 () Bool)

(assert (=> b!7567018 (= c!1396316 (isEmpty!41423 (_1!37735 lt!2650534)))))

(declare-fun b!7567019 () Bool)

(assert (=> b!7567019 (= e!4505454 lt!2650534)))

(declare-fun b!7567020 () Bool)

(declare-fun e!4505451 () tuple2!68864)

(assert (=> b!7567020 (= e!4505451 e!4505456)))

(declare-fun c!1396313 () Bool)

(assert (=> b!7567020 (= c!1396313 (= (+ (size!42481 lt!2650100) 1) lt!2650110))))

(declare-fun b!7567021 () Bool)

(declare-fun Unit!166921 () Unit!166904)

(assert (=> b!7567021 (= e!4505455 Unit!166921)))

(declare-fun lt!2650543 () Unit!166904)

(declare-fun call!693779 () Unit!166904)

(assert (=> b!7567021 (= lt!2650543 call!693779)))

(declare-fun call!693785 () Bool)

(assert (=> b!7567021 call!693785))

(declare-fun lt!2650523 () Unit!166904)

(assert (=> b!7567021 (= lt!2650523 lt!2650543)))

(declare-fun lt!2650527 () Unit!166904)

(declare-fun call!693786 () Unit!166904)

(assert (=> b!7567021 (= lt!2650527 call!693786)))

(assert (=> b!7567021 (= input!7874 lt!2650283)))

(declare-fun lt!2650533 () Unit!166904)

(assert (=> b!7567021 (= lt!2650533 lt!2650527)))

(assert (=> b!7567021 false))

(declare-fun b!7567022 () Bool)

(declare-fun c!1396317 () Bool)

(assert (=> b!7567022 (= c!1396317 call!693781)))

(declare-fun lt!2650536 () Unit!166904)

(declare-fun lt!2650539 () Unit!166904)

(assert (=> b!7567022 (= lt!2650536 lt!2650539)))

(assert (=> b!7567022 (= input!7874 lt!2650283)))

(assert (=> b!7567022 (= lt!2650539 call!693786)))

(declare-fun lt!2650542 () Unit!166904)

(declare-fun lt!2650538 () Unit!166904)

(assert (=> b!7567022 (= lt!2650542 lt!2650538)))

(assert (=> b!7567022 call!693785))

(assert (=> b!7567022 (= lt!2650538 call!693779)))

(declare-fun e!4505453 () tuple2!68864)

(assert (=> b!7567022 (= e!4505456 e!4505453)))

(declare-fun bm!693774 () Bool)

(declare-fun call!693780 () Regex!19985)

(declare-fun call!693782 () List!72868)

(assert (=> bm!693774 (= call!693784 (findLongestMatchInner!2140 call!693780 lt!2650544 (+ (size!42481 lt!2650100) 1 1) call!693782 input!7874 lt!2650110))))

(declare-fun bm!693775 () Bool)

(assert (=> bm!693775 (= call!693779 (lemmaIsPrefixRefl!3871 input!7874 input!7874))))

(declare-fun b!7567023 () Bool)

(declare-fun Unit!166922 () Unit!166904)

(assert (=> b!7567023 (= e!4505455 Unit!166922)))

(declare-fun bm!693776 () Bool)

(declare-fun call!693783 () C!40296)

(assert (=> bm!693776 (= call!693783 (head!15563 call!693679))))

(declare-fun bm!693777 () Bool)

(assert (=> bm!693777 (= call!693780 (derivativeStep!5763 call!693677 call!693783))))

(declare-fun bm!693778 () Bool)

(assert (=> bm!693778 (= call!693781 (nullable!8719 call!693677))))

(declare-fun b!7567024 () Bool)

(declare-fun e!4505452 () Bool)

(assert (=> b!7567024 (= e!4505452 e!4505457)))

(declare-fun res!3031651 () Bool)

(assert (=> b!7567024 (=> res!3031651 e!4505457)))

(assert (=> b!7567024 (= res!3031651 (isEmpty!41423 (_1!37735 lt!2650525)))))

(declare-fun b!7567025 () Bool)

(assert (=> b!7567025 (= e!4505450 call!693784)))

(declare-fun b!7567026 () Bool)

(assert (=> b!7567026 (= e!4505451 (tuple2!68865 Nil!72744 input!7874))))

(declare-fun b!7567016 () Bool)

(assert (=> b!7567016 (= e!4505453 (tuple2!68865 lt!2650283 Nil!72744))))

(declare-fun d!2316654 () Bool)

(assert (=> d!2316654 e!4505452))

(declare-fun res!3031652 () Bool)

(assert (=> d!2316654 (=> (not res!3031652) (not e!4505452))))

(assert (=> d!2316654 (= res!3031652 (= (++!17489 (_1!37735 lt!2650525) (_2!37735 lt!2650525)) input!7874))))

(assert (=> d!2316654 (= lt!2650525 e!4505451)))

(declare-fun c!1396314 () Bool)

(assert (=> d!2316654 (= c!1396314 (lostCause!1773 call!693677))))

(declare-fun lt!2650540 () Unit!166904)

(declare-fun Unit!166923 () Unit!166904)

(assert (=> d!2316654 (= lt!2650540 Unit!166923)))

(assert (=> d!2316654 (= (getSuffix!3669 input!7874 lt!2650283) call!693679)))

(declare-fun lt!2650517 () Unit!166904)

(declare-fun lt!2650529 () Unit!166904)

(assert (=> d!2316654 (= lt!2650517 lt!2650529)))

(declare-fun lt!2650541 () List!72868)

(assert (=> d!2316654 (= call!693679 lt!2650541)))

(assert (=> d!2316654 (= lt!2650529 (lemmaSamePrefixThenSameSuffix!2891 lt!2650283 call!693679 lt!2650283 lt!2650541 input!7874))))

(assert (=> d!2316654 (= lt!2650541 (getSuffix!3669 input!7874 lt!2650283))))

(declare-fun lt!2650524 () Unit!166904)

(declare-fun lt!2650531 () Unit!166904)

(assert (=> d!2316654 (= lt!2650524 lt!2650531)))

(assert (=> d!2316654 (isPrefix!6191 lt!2650283 (++!17489 lt!2650283 call!693679))))

(assert (=> d!2316654 (= lt!2650531 (lemmaConcatTwoListThenFirstIsPrefix!3744 lt!2650283 call!693679))))

(assert (=> d!2316654 (validRegex!10413 call!693677)))

(assert (=> d!2316654 (= (findLongestMatchInner!2140 call!693677 lt!2650283 (+ (size!42481 lt!2650100) 1) call!693679 input!7874 lt!2650110) lt!2650525)))

(declare-fun bm!693779 () Bool)

(assert (=> bm!693779 (= call!693782 (tail!15103 call!693679))))

(declare-fun bm!693780 () Bool)

(assert (=> bm!693780 (= call!693785 (isPrefix!6191 input!7874 input!7874))))

(declare-fun bm!693781 () Bool)

(assert (=> bm!693781 (= call!693786 (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 lt!2650283 input!7874))))

(declare-fun b!7567027 () Bool)

(assert (=> b!7567027 (= e!4505453 (tuple2!68865 Nil!72744 input!7874))))

(assert (= (and d!2316654 c!1396314) b!7567026))

(assert (= (and d!2316654 (not c!1396314)) b!7567020))

(assert (= (and b!7567020 c!1396313) b!7567022))

(assert (= (and b!7567020 (not c!1396313)) b!7567017))

(assert (= (and b!7567022 c!1396317) b!7567016))

(assert (= (and b!7567022 (not c!1396317)) b!7567027))

(assert (= (and b!7567017 c!1396315) b!7567021))

(assert (= (and b!7567017 (not c!1396315)) b!7567023))

(assert (= (and b!7567017 c!1396318) b!7567018))

(assert (= (and b!7567017 (not c!1396318)) b!7567025))

(assert (= (and b!7567018 c!1396316) b!7567015))

(assert (= (and b!7567018 (not c!1396316)) b!7567019))

(assert (= (or b!7567018 b!7567025) bm!693779))

(assert (= (or b!7567018 b!7567025) bm!693776))

(assert (= (or b!7567018 b!7567025) bm!693777))

(assert (= (or b!7567018 b!7567025) bm!693774))

(assert (= (or b!7567022 b!7567021) bm!693780))

(assert (= (or b!7567022 b!7567017) bm!693778))

(assert (= (or b!7567022 b!7567021) bm!693781))

(assert (= (or b!7567022 b!7567021) bm!693775))

(assert (= (and d!2316654 res!3031652) b!7567024))

(assert (= (and b!7567024 (not res!3031651)) b!7567014))

(declare-fun m!8129418 () Bool)

(assert (=> bm!693781 m!8129418))

(declare-fun m!8129420 () Bool)

(assert (=> b!7567024 m!8129420))

(declare-fun m!8129422 () Bool)

(assert (=> bm!693774 m!8129422))

(assert (=> bm!693775 m!8128756))

(declare-fun m!8129424 () Bool)

(assert (=> b!7567018 m!8129424))

(declare-fun m!8129426 () Bool)

(assert (=> bm!693779 m!8129426))

(declare-fun m!8129428 () Bool)

(assert (=> b!7567017 m!8129428))

(declare-fun m!8129430 () Bool)

(assert (=> b!7567017 m!8129430))

(assert (=> b!7567017 m!8128476))

(declare-fun m!8129432 () Bool)

(assert (=> b!7567017 m!8129432))

(declare-fun m!8129434 () Bool)

(assert (=> b!7567017 m!8129434))

(declare-fun m!8129436 () Bool)

(assert (=> b!7567017 m!8129436))

(declare-fun m!8129438 () Bool)

(assert (=> b!7567017 m!8129438))

(declare-fun m!8129440 () Bool)

(assert (=> b!7567017 m!8129440))

(declare-fun m!8129442 () Bool)

(assert (=> b!7567017 m!8129442))

(assert (=> b!7567017 m!8129426))

(declare-fun m!8129444 () Bool)

(assert (=> b!7567017 m!8129444))

(assert (=> b!7567017 m!8129428))

(declare-fun m!8129446 () Bool)

(assert (=> b!7567017 m!8129446))

(assert (=> b!7567017 m!8129434))

(assert (=> b!7567017 m!8129440))

(declare-fun m!8129448 () Bool)

(assert (=> b!7567017 m!8129448))

(declare-fun m!8129450 () Bool)

(assert (=> b!7567017 m!8129450))

(assert (=> bm!693776 m!8129438))

(declare-fun m!8129452 () Bool)

(assert (=> b!7567014 m!8129452))

(assert (=> b!7567014 m!8129444))

(assert (=> bm!693780 m!8128780))

(declare-fun m!8129454 () Bool)

(assert (=> bm!693778 m!8129454))

(declare-fun m!8129456 () Bool)

(assert (=> bm!693777 m!8129456))

(declare-fun m!8129458 () Bool)

(assert (=> d!2316654 m!8129458))

(declare-fun m!8129460 () Bool)

(assert (=> d!2316654 m!8129460))

(declare-fun m!8129462 () Bool)

(assert (=> d!2316654 m!8129462))

(declare-fun m!8129464 () Bool)

(assert (=> d!2316654 m!8129464))

(declare-fun m!8129466 () Bool)

(assert (=> d!2316654 m!8129466))

(assert (=> d!2316654 m!8129434))

(assert (=> d!2316654 m!8129462))

(declare-fun m!8129468 () Bool)

(assert (=> d!2316654 m!8129468))

(declare-fun m!8129470 () Bool)

(assert (=> d!2316654 m!8129470))

(assert (=> bm!693671 d!2316654))

(declare-fun d!2316656 () Bool)

(declare-fun nullableFct!3480 (Regex!19985) Bool)

(assert (=> d!2316656 (= (nullable!8719 r!24333) (nullableFct!3480 r!24333))))

(declare-fun bs!1940495 () Bool)

(assert (= bs!1940495 d!2316656))

(declare-fun m!8129472 () Bool)

(assert (=> bs!1940495 m!8129472))

(assert (=> b!7566545 d!2316656))

(declare-fun d!2316658 () Bool)

(declare-fun c!1396319 () Bool)

(assert (=> d!2316658 (= c!1396319 ((_ is Nil!72744) lt!2650294))))

(declare-fun e!4505458 () (InoxSet C!40296))

(assert (=> d!2316658 (= (content!15406 lt!2650294) e!4505458)))

(declare-fun b!7567028 () Bool)

(assert (=> b!7567028 (= e!4505458 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567029 () Bool)

(assert (=> b!7567029 (= e!4505458 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650294) true) (content!15406 (t!387601 lt!2650294))))))

(assert (= (and d!2316658 c!1396319) b!7567028))

(assert (= (and d!2316658 (not c!1396319)) b!7567029))

(declare-fun m!8129474 () Bool)

(assert (=> b!7567029 m!8129474))

(declare-fun m!8129476 () Bool)

(assert (=> b!7567029 m!8129476))

(assert (=> d!2316478 d!2316658))

(declare-fun d!2316660 () Bool)

(declare-fun c!1396320 () Bool)

(assert (=> d!2316660 (= c!1396320 ((_ is Nil!72744) testedP!423))))

(declare-fun e!4505459 () (InoxSet C!40296))

(assert (=> d!2316660 (= (content!15406 testedP!423) e!4505459)))

(declare-fun b!7567030 () Bool)

(assert (=> b!7567030 (= e!4505459 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567031 () Bool)

(assert (=> b!7567031 (= e!4505459 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 testedP!423) true) (content!15406 (t!387601 testedP!423))))))

(assert (= (and d!2316660 c!1396320) b!7567030))

(assert (= (and d!2316660 (not c!1396320)) b!7567031))

(declare-fun m!8129478 () Bool)

(assert (=> b!7567031 m!8129478))

(assert (=> b!7567031 m!8129374))

(assert (=> d!2316478 d!2316660))

(declare-fun d!2316662 () Bool)

(declare-fun c!1396321 () Bool)

(assert (=> d!2316662 (= c!1396321 ((_ is Nil!72744) lt!2650104))))

(declare-fun e!4505460 () (InoxSet C!40296))

(assert (=> d!2316662 (= (content!15406 lt!2650104) e!4505460)))

(declare-fun b!7567032 () Bool)

(assert (=> b!7567032 (= e!4505460 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567033 () Bool)

(assert (=> b!7567033 (= e!4505460 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650104) true) (content!15406 (t!387601 lt!2650104))))))

(assert (= (and d!2316662 c!1396321) b!7567032))

(assert (= (and d!2316662 (not c!1396321)) b!7567033))

(declare-fun m!8129480 () Bool)

(assert (=> b!7567033 m!8129480))

(declare-fun m!8129482 () Bool)

(assert (=> b!7567033 m!8129482))

(assert (=> d!2316478 d!2316662))

(assert (=> d!2316484 d!2316606))

(assert (=> d!2316484 d!2316582))

(assert (=> b!7566568 d!2316630))

(declare-fun d!2316664 () Bool)

(assert (=> d!2316664 (= (head!15563 input!7874) (h!79192 input!7874))))

(assert (=> b!7566568 d!2316664))

(assert (=> d!2316560 d!2316546))

(declare-fun b!7567036 () Bool)

(declare-fun res!3031654 () Bool)

(declare-fun e!4505461 () Bool)

(assert (=> b!7567036 (=> (not res!3031654) (not e!4505461))))

(declare-fun lt!2650545 () List!72868)

(assert (=> b!7567036 (= res!3031654 (= (size!42481 lt!2650545) (+ (size!42481 testedP!423) (size!42481 (Cons!72744 lt!2650090 Nil!72744)))))))

(declare-fun d!2316666 () Bool)

(assert (=> d!2316666 e!4505461))

(declare-fun res!3031653 () Bool)

(assert (=> d!2316666 (=> (not res!3031653) (not e!4505461))))

(assert (=> d!2316666 (= res!3031653 (= (content!15406 lt!2650545) ((_ map or) (content!15406 testedP!423) (content!15406 (Cons!72744 lt!2650090 Nil!72744)))))))

(declare-fun e!4505462 () List!72868)

(assert (=> d!2316666 (= lt!2650545 e!4505462)))

(declare-fun c!1396322 () Bool)

(assert (=> d!2316666 (= c!1396322 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316666 (= (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744)) lt!2650545)))

(declare-fun b!7567037 () Bool)

(assert (=> b!7567037 (= e!4505461 (or (not (= (Cons!72744 lt!2650090 Nil!72744) Nil!72744)) (= lt!2650545 testedP!423)))))

(declare-fun b!7567035 () Bool)

(assert (=> b!7567035 (= e!4505462 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (Cons!72744 lt!2650090 Nil!72744))))))

(declare-fun b!7567034 () Bool)

(assert (=> b!7567034 (= e!4505462 (Cons!72744 lt!2650090 Nil!72744))))

(assert (= (and d!2316666 c!1396322) b!7567034))

(assert (= (and d!2316666 (not c!1396322)) b!7567035))

(assert (= (and d!2316666 res!3031653) b!7567036))

(assert (= (and b!7567036 res!3031654) b!7567037))

(declare-fun m!8129484 () Bool)

(assert (=> b!7567036 m!8129484))

(assert (=> b!7567036 m!8128472))

(declare-fun m!8129486 () Bool)

(assert (=> b!7567036 m!8129486))

(declare-fun m!8129488 () Bool)

(assert (=> d!2316666 m!8129488))

(assert (=> d!2316666 m!8128876))

(declare-fun m!8129490 () Bool)

(assert (=> d!2316666 m!8129490))

(declare-fun m!8129492 () Bool)

(assert (=> b!7567035 m!8129492))

(assert (=> d!2316560 d!2316666))

(declare-fun d!2316668 () Bool)

(assert (=> d!2316668 (= (derivative!515 baseR!101 (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744))) (derivativeStep!5763 r!24333 lt!2650090))))

(assert (=> d!2316668 true))

(declare-fun _$109!54 () Unit!166904)

(assert (=> d!2316668 (= (choose!58520 baseR!101 r!24333 testedP!423 lt!2650090) _$109!54)))

(declare-fun bs!1940496 () Bool)

(assert (= bs!1940496 d!2316668))

(assert (=> bs!1940496 m!8129146))

(assert (=> bs!1940496 m!8129146))

(assert (=> bs!1940496 m!8129148))

(assert (=> bs!1940496 m!8128554))

(assert (=> d!2316560 d!2316668))

(declare-fun d!2316670 () Bool)

(declare-fun lt!2650546 () Regex!19985)

(assert (=> d!2316670 (validRegex!10413 lt!2650546)))

(declare-fun e!4505463 () Regex!19985)

(assert (=> d!2316670 (= lt!2650546 e!4505463)))

(declare-fun c!1396324 () Bool)

(assert (=> d!2316670 (= c!1396324 ((_ is Cons!72744) (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744))))))

(assert (=> d!2316670 (validRegex!10413 baseR!101)))

(assert (=> d!2316670 (= (derivative!515 baseR!101 (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744))) lt!2650546)))

(declare-fun b!7567038 () Bool)

(assert (=> b!7567038 (= e!4505463 (derivative!515 (derivativeStep!5763 baseR!101 (h!79192 (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744)))) (t!387601 (++!17489 testedP!423 (Cons!72744 lt!2650090 Nil!72744)))))))

(declare-fun b!7567039 () Bool)

(assert (=> b!7567039 (= e!4505463 baseR!101)))

(assert (= (and d!2316670 c!1396324) b!7567038))

(assert (= (and d!2316670 (not c!1396324)) b!7567039))

(declare-fun m!8129494 () Bool)

(assert (=> d!2316670 m!8129494))

(assert (=> d!2316670 m!8128518))

(declare-fun m!8129496 () Bool)

(assert (=> b!7567038 m!8129496))

(assert (=> b!7567038 m!8129496))

(declare-fun m!8129498 () Bool)

(assert (=> b!7567038 m!8129498))

(assert (=> d!2316560 d!2316670))

(assert (=> d!2316560 d!2316510))

(declare-fun d!2316672 () Bool)

(assert (=> d!2316672 (= (isEmpty!41423 knownP!30) ((_ is Nil!72744) knownP!30))))

(assert (=> bm!693750 d!2316672))

(declare-fun d!2316674 () Bool)

(declare-fun lt!2650547 () List!72868)

(assert (=> d!2316674 (= (++!17489 (t!387601 lt!2650100) lt!2650547) (tail!15103 input!7874))))

(declare-fun e!4505464 () List!72868)

(assert (=> d!2316674 (= lt!2650547 e!4505464)))

(declare-fun c!1396325 () Bool)

(assert (=> d!2316674 (= c!1396325 ((_ is Cons!72744) (t!387601 lt!2650100)))))

(assert (=> d!2316674 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (t!387601 lt!2650100)))))

(assert (=> d!2316674 (= (getSuffix!3669 (tail!15103 input!7874) (t!387601 lt!2650100)) lt!2650547)))

(declare-fun b!7567040 () Bool)

(assert (=> b!7567040 (= e!4505464 (getSuffix!3669 (tail!15103 (tail!15103 input!7874)) (t!387601 (t!387601 lt!2650100))))))

(declare-fun b!7567041 () Bool)

(assert (=> b!7567041 (= e!4505464 (tail!15103 input!7874))))

(assert (= (and d!2316674 c!1396325) b!7567040))

(assert (= (and d!2316674 (not c!1396325)) b!7567041))

(declare-fun m!8129500 () Bool)

(assert (=> d!2316674 m!8129500))

(assert (=> d!2316674 m!8128796))

(assert (=> d!2316674 m!8129334))

(assert (=> d!2316674 m!8128848))

(assert (=> b!7567040 m!8128796))

(assert (=> b!7567040 m!8129340))

(assert (=> b!7567040 m!8129340))

(declare-fun m!8129502 () Bool)

(assert (=> b!7567040 m!8129502))

(assert (=> b!7566437 d!2316674))

(assert (=> b!7566437 d!2316616))

(declare-fun d!2316676 () Bool)

(assert (=> d!2316676 (= (++!17489 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744)) lt!2650274) input!7874)))

(declare-fun lt!2650550 () Unit!166904)

(declare-fun choose!58525 (List!72868 C!40296 List!72868 List!72868) Unit!166904)

(assert (=> d!2316676 (= lt!2650550 (choose!58525 lt!2650100 lt!2650267 lt!2650274 input!7874))))

(assert (=> d!2316676 (= (++!17489 lt!2650100 (Cons!72744 lt!2650267 lt!2650274)) input!7874)))

(assert (=> d!2316676 (= (lemmaMoveElementToOtherListKeepsConcatEq!3180 lt!2650100 lt!2650267 lt!2650274 input!7874) lt!2650550)))

(declare-fun bs!1940497 () Bool)

(assert (= bs!1940497 d!2316676))

(assert (=> bs!1940497 m!8128812))

(assert (=> bs!1940497 m!8128812))

(assert (=> bs!1940497 m!8128814))

(declare-fun m!8129504 () Bool)

(assert (=> bs!1940497 m!8129504))

(declare-fun m!8129506 () Bool)

(assert (=> bs!1940497 m!8129506))

(assert (=> b!7566444 d!2316676))

(declare-fun d!2316678 () Bool)

(assert (=> d!2316678 (= (head!15563 (getSuffix!3669 input!7874 lt!2650100)) (h!79192 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> b!7566444 d!2316678))

(declare-fun d!2316680 () Bool)

(assert (=> d!2316680 (isPrefix!6191 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)) input!7874)))

(declare-fun lt!2650551 () Unit!166904)

(assert (=> d!2316680 (= lt!2650551 (choose!58521 lt!2650100 input!7874))))

(assert (=> d!2316680 (isPrefix!6191 lt!2650100 input!7874)))

(assert (=> d!2316680 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650100 input!7874) lt!2650551)))

(declare-fun bs!1940498 () Bool)

(assert (= bs!1940498 d!2316680))

(assert (=> bs!1940498 m!8128530))

(assert (=> bs!1940498 m!8128818))

(assert (=> bs!1940498 m!8128820))

(declare-fun m!8129508 () Bool)

(assert (=> bs!1940498 m!8129508))

(assert (=> bs!1940498 m!8128820))

(assert (=> bs!1940498 m!8128824))

(assert (=> bs!1940498 m!8128562))

(assert (=> bs!1940498 m!8128530))

(assert (=> b!7566444 d!2316680))

(assert (=> b!7566444 d!2316584))

(declare-fun b!7567045 () Bool)

(declare-fun e!4505466 () Bool)

(assert (=> b!7567045 (= e!4505466 (>= (size!42481 input!7874) (size!42481 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)))))))

(declare-fun b!7567042 () Bool)

(declare-fun e!4505465 () Bool)

(declare-fun e!4505467 () Bool)

(assert (=> b!7567042 (= e!4505465 e!4505467)))

(declare-fun res!3031655 () Bool)

(assert (=> b!7567042 (=> (not res!3031655) (not e!4505467))))

(assert (=> b!7567042 (= res!3031655 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316682 () Bool)

(assert (=> d!2316682 e!4505466))

(declare-fun res!3031657 () Bool)

(assert (=> d!2316682 (=> res!3031657 e!4505466)))

(declare-fun lt!2650552 () Bool)

(assert (=> d!2316682 (= res!3031657 (not lt!2650552))))

(assert (=> d!2316682 (= lt!2650552 e!4505465)))

(declare-fun res!3031658 () Bool)

(assert (=> d!2316682 (=> res!3031658 e!4505465)))

(assert (=> d!2316682 (= res!3031658 ((_ is Nil!72744) (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744))))))

(assert (=> d!2316682 (= (isPrefix!6191 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)) input!7874) lt!2650552)))

(declare-fun b!7567044 () Bool)

(assert (=> b!7567044 (= e!4505467 (isPrefix!6191 (tail!15103 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744))) (tail!15103 input!7874)))))

(declare-fun b!7567043 () Bool)

(declare-fun res!3031656 () Bool)

(assert (=> b!7567043 (=> (not res!3031656) (not e!4505467))))

(assert (=> b!7567043 (= res!3031656 (= (head!15563 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744))) (head!15563 input!7874)))))

(assert (= (and d!2316682 (not res!3031658)) b!7567042))

(assert (= (and b!7567042 res!3031655) b!7567043))

(assert (= (and b!7567043 res!3031656) b!7567044))

(assert (= (and d!2316682 (not res!3031657)) b!7567045))

(assert (=> b!7567045 m!8128476))

(assert (=> b!7567045 m!8128820))

(declare-fun m!8129510 () Bool)

(assert (=> b!7567045 m!8129510))

(assert (=> b!7567044 m!8128820))

(declare-fun m!8129512 () Bool)

(assert (=> b!7567044 m!8129512))

(assert (=> b!7567044 m!8128796))

(assert (=> b!7567044 m!8129512))

(assert (=> b!7567044 m!8128796))

(declare-fun m!8129514 () Bool)

(assert (=> b!7567044 m!8129514))

(assert (=> b!7567043 m!8128820))

(declare-fun m!8129516 () Bool)

(assert (=> b!7567043 m!8129516))

(assert (=> b!7567043 m!8128924))

(assert (=> b!7566444 d!2316682))

(declare-fun d!2316684 () Bool)

(assert (=> d!2316684 (<= (size!42481 lt!2650100) (size!42481 input!7874))))

(declare-fun lt!2650555 () Unit!166904)

(declare-fun choose!58526 (List!72868 List!72868) Unit!166904)

(assert (=> d!2316684 (= lt!2650555 (choose!58526 lt!2650100 input!7874))))

(assert (=> d!2316684 (isPrefix!6191 lt!2650100 input!7874)))

(assert (=> d!2316684 (= (lemmaIsPrefixThenSmallerEqSize!1019 lt!2650100 input!7874) lt!2650555)))

(declare-fun bs!1940499 () Bool)

(assert (= bs!1940499 d!2316684))

(assert (=> bs!1940499 m!8128538))

(assert (=> bs!1940499 m!8128476))

(declare-fun m!8129518 () Bool)

(assert (=> bs!1940499 m!8129518))

(assert (=> bs!1940499 m!8128562))

(assert (=> b!7566444 d!2316684))

(assert (=> b!7566444 d!2316470))

(assert (=> b!7566444 d!2316464))

(declare-fun b!7567048 () Bool)

(declare-fun res!3031660 () Bool)

(declare-fun e!4505468 () Bool)

(assert (=> b!7567048 (=> (not res!3031660) (not e!4505468))))

(declare-fun lt!2650556 () List!72868)

(assert (=> b!7567048 (= res!3031660 (= (size!42481 lt!2650556) (+ (size!42481 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744))) (size!42481 lt!2650274))))))

(declare-fun d!2316686 () Bool)

(assert (=> d!2316686 e!4505468))

(declare-fun res!3031659 () Bool)

(assert (=> d!2316686 (=> (not res!3031659) (not e!4505468))))

(assert (=> d!2316686 (= res!3031659 (= (content!15406 lt!2650556) ((_ map or) (content!15406 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744))) (content!15406 lt!2650274))))))

(declare-fun e!4505469 () List!72868)

(assert (=> d!2316686 (= lt!2650556 e!4505469)))

(declare-fun c!1396326 () Bool)

(assert (=> d!2316686 (= c!1396326 ((_ is Nil!72744) (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744))))))

(assert (=> d!2316686 (= (++!17489 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744)) lt!2650274) lt!2650556)))

(declare-fun b!7567049 () Bool)

(assert (=> b!7567049 (= e!4505468 (or (not (= lt!2650274 Nil!72744)) (= lt!2650556 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744)))))))

(declare-fun b!7567047 () Bool)

(assert (=> b!7567047 (= e!4505469 (Cons!72744 (h!79192 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744))) (++!17489 (t!387601 (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744))) lt!2650274)))))

(declare-fun b!7567046 () Bool)

(assert (=> b!7567046 (= e!4505469 lt!2650274)))

(assert (= (and d!2316686 c!1396326) b!7567046))

(assert (= (and d!2316686 (not c!1396326)) b!7567047))

(assert (= (and d!2316686 res!3031659) b!7567048))

(assert (= (and b!7567048 res!3031660) b!7567049))

(declare-fun m!8129520 () Bool)

(assert (=> b!7567048 m!8129520))

(assert (=> b!7567048 m!8128812))

(declare-fun m!8129522 () Bool)

(assert (=> b!7567048 m!8129522))

(declare-fun m!8129524 () Bool)

(assert (=> b!7567048 m!8129524))

(declare-fun m!8129526 () Bool)

(assert (=> d!2316686 m!8129526))

(assert (=> d!2316686 m!8128812))

(declare-fun m!8129528 () Bool)

(assert (=> d!2316686 m!8129528))

(declare-fun m!8129530 () Bool)

(assert (=> d!2316686 m!8129530))

(declare-fun m!8129532 () Bool)

(assert (=> b!7567047 m!8129532))

(assert (=> b!7566444 d!2316686))

(declare-fun b!7567052 () Bool)

(declare-fun res!3031662 () Bool)

(declare-fun e!4505470 () Bool)

(assert (=> b!7567052 (=> (not res!3031662) (not e!4505470))))

(declare-fun lt!2650557 () List!72868)

(assert (=> b!7567052 (= res!3031662 (= (size!42481 lt!2650557) (+ (size!42481 lt!2650100) (size!42481 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)))))))

(declare-fun d!2316688 () Bool)

(assert (=> d!2316688 e!4505470))

(declare-fun res!3031661 () Bool)

(assert (=> d!2316688 (=> (not res!3031661) (not e!4505470))))

(assert (=> d!2316688 (= res!3031661 (= (content!15406 lt!2650557) ((_ map or) (content!15406 lt!2650100) (content!15406 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)))))))

(declare-fun e!4505471 () List!72868)

(assert (=> d!2316688 (= lt!2650557 e!4505471)))

(declare-fun c!1396327 () Bool)

(assert (=> d!2316688 (= c!1396327 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316688 (= (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)) lt!2650557)))

(declare-fun b!7567053 () Bool)

(assert (=> b!7567053 (= e!4505470 (or (not (= (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744) Nil!72744)) (= lt!2650557 lt!2650100)))))

(declare-fun b!7567051 () Bool)

(assert (=> b!7567051 (= e!4505471 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744))))))

(declare-fun b!7567050 () Bool)

(assert (=> b!7567050 (= e!4505471 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744))))

(assert (= (and d!2316688 c!1396327) b!7567050))

(assert (= (and d!2316688 (not c!1396327)) b!7567051))

(assert (= (and d!2316688 res!3031661) b!7567052))

(assert (= (and b!7567052 res!3031662) b!7567053))

(declare-fun m!8129534 () Bool)

(assert (=> b!7567052 m!8129534))

(assert (=> b!7567052 m!8128538))

(declare-fun m!8129536 () Bool)

(assert (=> b!7567052 m!8129536))

(declare-fun m!8129538 () Bool)

(assert (=> d!2316688 m!8129538))

(assert (=> d!2316688 m!8128862))

(declare-fun m!8129540 () Bool)

(assert (=> d!2316688 m!8129540))

(declare-fun m!8129542 () Bool)

(assert (=> b!7567051 m!8129542))

(assert (=> b!7566444 d!2316688))

(declare-fun d!2316690 () Bool)

(assert (=> d!2316690 (= (tail!15103 (getSuffix!3669 input!7874 lt!2650100)) (t!387601 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> b!7566444 d!2316690))

(declare-fun b!7567056 () Bool)

(declare-fun res!3031664 () Bool)

(declare-fun e!4505472 () Bool)

(assert (=> b!7567056 (=> (not res!3031664) (not e!4505472))))

(declare-fun lt!2650558 () List!72868)

(assert (=> b!7567056 (= res!3031664 (= (size!42481 lt!2650558) (+ (size!42481 lt!2650100) (size!42481 (Cons!72744 lt!2650267 Nil!72744)))))))

(declare-fun d!2316692 () Bool)

(assert (=> d!2316692 e!4505472))

(declare-fun res!3031663 () Bool)

(assert (=> d!2316692 (=> (not res!3031663) (not e!4505472))))

(assert (=> d!2316692 (= res!3031663 (= (content!15406 lt!2650558) ((_ map or) (content!15406 lt!2650100) (content!15406 (Cons!72744 lt!2650267 Nil!72744)))))))

(declare-fun e!4505473 () List!72868)

(assert (=> d!2316692 (= lt!2650558 e!4505473)))

(declare-fun c!1396328 () Bool)

(assert (=> d!2316692 (= c!1396328 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316692 (= (++!17489 lt!2650100 (Cons!72744 lt!2650267 Nil!72744)) lt!2650558)))

(declare-fun b!7567057 () Bool)

(assert (=> b!7567057 (= e!4505472 (or (not (= (Cons!72744 lt!2650267 Nil!72744) Nil!72744)) (= lt!2650558 lt!2650100)))))

(declare-fun b!7567055 () Bool)

(assert (=> b!7567055 (= e!4505473 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) (Cons!72744 lt!2650267 Nil!72744))))))

(declare-fun b!7567054 () Bool)

(assert (=> b!7567054 (= e!4505473 (Cons!72744 lt!2650267 Nil!72744))))

(assert (= (and d!2316692 c!1396328) b!7567054))

(assert (= (and d!2316692 (not c!1396328)) b!7567055))

(assert (= (and d!2316692 res!3031663) b!7567056))

(assert (= (and b!7567056 res!3031664) b!7567057))

(declare-fun m!8129544 () Bool)

(assert (=> b!7567056 m!8129544))

(assert (=> b!7567056 m!8128538))

(declare-fun m!8129546 () Bool)

(assert (=> b!7567056 m!8129546))

(declare-fun m!8129548 () Bool)

(assert (=> d!2316692 m!8129548))

(assert (=> d!2316692 m!8128862))

(declare-fun m!8129550 () Bool)

(assert (=> d!2316692 m!8129550))

(declare-fun m!8129552 () Bool)

(assert (=> b!7567055 m!8129552))

(assert (=> b!7566444 d!2316692))

(declare-fun d!2316694 () Bool)

(assert (=> d!2316694 (= lt!2650101 lt!2650115)))

(assert (=> d!2316694 true))

(declare-fun _$63!1400 () Unit!166904)

(assert (=> d!2316694 (= (choose!58516 testedP!423 lt!2650101 testedP!423 lt!2650115 input!7874) _$63!1400)))

(assert (=> d!2316508 d!2316694))

(assert (=> d!2316508 d!2316494))

(declare-fun d!2316696 () Bool)

(assert (=> d!2316696 (= (head!15563 testedP!423) (h!79192 testedP!423))))

(assert (=> b!7566564 d!2316696))

(assert (=> b!7566564 d!2316630))

(declare-fun b!7567060 () Bool)

(declare-fun res!3031666 () Bool)

(declare-fun e!4505474 () Bool)

(assert (=> b!7567060 (=> (not res!3031666) (not e!4505474))))

(declare-fun lt!2650559 () List!72868)

(assert (=> b!7567060 (= res!3031666 (= (size!42481 lt!2650559) (+ (size!42481 testedP!423) (size!42481 lt!2650358))))))

(declare-fun d!2316698 () Bool)

(assert (=> d!2316698 e!4505474))

(declare-fun res!3031665 () Bool)

(assert (=> d!2316698 (=> (not res!3031665) (not e!4505474))))

(assert (=> d!2316698 (= res!3031665 (= (content!15406 lt!2650559) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650358))))))

(declare-fun e!4505475 () List!72868)

(assert (=> d!2316698 (= lt!2650559 e!4505475)))

(declare-fun c!1396329 () Bool)

(assert (=> d!2316698 (= c!1396329 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316698 (= (++!17489 testedP!423 lt!2650358) lt!2650559)))

(declare-fun b!7567061 () Bool)

(assert (=> b!7567061 (= e!4505474 (or (not (= lt!2650358 Nil!72744)) (= lt!2650559 testedP!423)))))

(declare-fun b!7567059 () Bool)

(assert (=> b!7567059 (= e!4505475 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650358)))))

(declare-fun b!7567058 () Bool)

(assert (=> b!7567058 (= e!4505475 lt!2650358)))

(assert (= (and d!2316698 c!1396329) b!7567058))

(assert (= (and d!2316698 (not c!1396329)) b!7567059))

(assert (= (and d!2316698 res!3031665) b!7567060))

(assert (= (and b!7567060 res!3031666) b!7567061))

(declare-fun m!8129554 () Bool)

(assert (=> b!7567060 m!8129554))

(assert (=> b!7567060 m!8128472))

(declare-fun m!8129556 () Bool)

(assert (=> b!7567060 m!8129556))

(declare-fun m!8129558 () Bool)

(assert (=> d!2316698 m!8129558))

(assert (=> d!2316698 m!8128876))

(declare-fun m!8129560 () Bool)

(assert (=> d!2316698 m!8129560))

(declare-fun m!8129562 () Bool)

(assert (=> b!7567059 m!8129562))

(assert (=> d!2316486 d!2316698))

(assert (=> d!2316486 d!2316538))

(assert (=> d!2316486 d!2316534))

(declare-fun d!2316700 () Bool)

(assert (=> d!2316700 (= (nullable!8719 (reg!20314 r!24333)) (nullableFct!3480 (reg!20314 r!24333)))))

(declare-fun bs!1940500 () Bool)

(assert (= bs!1940500 d!2316700))

(declare-fun m!8129564 () Bool)

(assert (=> bs!1940500 m!8129564))

(assert (=> b!7566804 d!2316700))

(declare-fun d!2316702 () Bool)

(declare-fun lt!2650560 () Regex!19985)

(assert (=> d!2316702 (validRegex!10413 lt!2650560)))

(declare-fun e!4505476 () Regex!19985)

(assert (=> d!2316702 (= lt!2650560 e!4505476)))

(declare-fun c!1396330 () Bool)

(assert (=> d!2316702 (= c!1396330 ((_ is Cons!72744) (t!387601 lt!2650100)))))

(assert (=> d!2316702 (validRegex!10413 (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)))))

(assert (=> d!2316702 (= (derivative!515 (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)) (t!387601 lt!2650100)) lt!2650560)))

(declare-fun b!7567062 () Bool)

(assert (=> b!7567062 (= e!4505476 (derivative!515 (derivativeStep!5763 (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)) (h!79192 (t!387601 lt!2650100))) (t!387601 (t!387601 lt!2650100))))))

(declare-fun b!7567063 () Bool)

(assert (=> b!7567063 (= e!4505476 (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)))))

(assert (= (and d!2316702 c!1396330) b!7567062))

(assert (= (and d!2316702 (not c!1396330)) b!7567063))

(declare-fun m!8129566 () Bool)

(assert (=> d!2316702 m!8129566))

(assert (=> d!2316702 m!8129112))

(declare-fun m!8129568 () Bool)

(assert (=> d!2316702 m!8129568))

(assert (=> b!7567062 m!8129112))

(declare-fun m!8129570 () Bool)

(assert (=> b!7567062 m!8129570))

(assert (=> b!7567062 m!8129570))

(declare-fun m!8129572 () Bool)

(assert (=> b!7567062 m!8129572))

(assert (=> b!7566674 d!2316702))

(declare-fun bm!693782 () Bool)

(declare-fun call!693789 () Regex!19985)

(declare-fun call!693790 () Regex!19985)

(assert (=> bm!693782 (= call!693789 call!693790)))

(declare-fun bm!693783 () Bool)

(declare-fun call!693787 () Regex!19985)

(assert (=> bm!693783 (= call!693787 call!693789)))

(declare-fun c!1396335 () Bool)

(declare-fun bm!693784 () Bool)

(declare-fun call!693788 () Regex!19985)

(assert (=> bm!693784 (= call!693788 (derivativeStep!5763 (ite c!1396335 (regOne!40483 baseR!101) (regTwo!40482 baseR!101)) (h!79192 lt!2650100)))))

(declare-fun bm!693785 () Bool)

(declare-fun c!1396331 () Bool)

(assert (=> bm!693785 (= call!693790 (derivativeStep!5763 (ite c!1396335 (regTwo!40483 baseR!101) (ite c!1396331 (reg!20314 baseR!101) (regOne!40482 baseR!101))) (h!79192 lt!2650100)))))

(declare-fun b!7567064 () Bool)

(assert (=> b!7567064 (= c!1396335 ((_ is Union!19985) baseR!101))))

(declare-fun e!4505477 () Regex!19985)

(declare-fun e!4505481 () Regex!19985)

(assert (=> b!7567064 (= e!4505477 e!4505481)))

(declare-fun e!4505479 () Regex!19985)

(declare-fun b!7567065 () Bool)

(assert (=> b!7567065 (= e!4505479 (Union!19985 (Concat!28830 call!693787 (regTwo!40482 baseR!101)) call!693788))))

(declare-fun b!7567066 () Bool)

(declare-fun e!4505478 () Regex!19985)

(assert (=> b!7567066 (= e!4505478 EmptyLang!19985)))

(declare-fun d!2316704 () Bool)

(declare-fun lt!2650561 () Regex!19985)

(assert (=> d!2316704 (validRegex!10413 lt!2650561)))

(assert (=> d!2316704 (= lt!2650561 e!4505478)))

(declare-fun c!1396332 () Bool)

(assert (=> d!2316704 (= c!1396332 (or ((_ is EmptyExpr!19985) baseR!101) ((_ is EmptyLang!19985) baseR!101)))))

(assert (=> d!2316704 (validRegex!10413 baseR!101)))

(assert (=> d!2316704 (= (derivativeStep!5763 baseR!101 (h!79192 lt!2650100)) lt!2650561)))

(declare-fun b!7567067 () Bool)

(assert (=> b!7567067 (= e!4505477 (ite (= (h!79192 lt!2650100) (c!1396094 baseR!101)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567068 () Bool)

(assert (=> b!7567068 (= e!4505481 (Union!19985 call!693788 call!693790))))

(declare-fun b!7567069 () Bool)

(assert (=> b!7567069 (= e!4505479 (Union!19985 (Concat!28830 call!693787 (regTwo!40482 baseR!101)) EmptyLang!19985))))

(declare-fun b!7567070 () Bool)

(declare-fun e!4505480 () Regex!19985)

(assert (=> b!7567070 (= e!4505480 (Concat!28830 call!693789 baseR!101))))

(declare-fun b!7567071 () Bool)

(assert (=> b!7567071 (= e!4505478 e!4505477)))

(declare-fun c!1396334 () Bool)

(assert (=> b!7567071 (= c!1396334 ((_ is ElementMatch!19985) baseR!101))))

(declare-fun b!7567072 () Bool)

(declare-fun c!1396333 () Bool)

(assert (=> b!7567072 (= c!1396333 (nullable!8719 (regOne!40482 baseR!101)))))

(assert (=> b!7567072 (= e!4505480 e!4505479)))

(declare-fun b!7567073 () Bool)

(assert (=> b!7567073 (= e!4505481 e!4505480)))

(assert (=> b!7567073 (= c!1396331 ((_ is Star!19985) baseR!101))))

(assert (= (and d!2316704 c!1396332) b!7567066))

(assert (= (and d!2316704 (not c!1396332)) b!7567071))

(assert (= (and b!7567071 c!1396334) b!7567067))

(assert (= (and b!7567071 (not c!1396334)) b!7567064))

(assert (= (and b!7567064 c!1396335) b!7567068))

(assert (= (and b!7567064 (not c!1396335)) b!7567073))

(assert (= (and b!7567073 c!1396331) b!7567070))

(assert (= (and b!7567073 (not c!1396331)) b!7567072))

(assert (= (and b!7567072 c!1396333) b!7567065))

(assert (= (and b!7567072 (not c!1396333)) b!7567069))

(assert (= (or b!7567065 b!7567069) bm!693783))

(assert (= (or b!7567070 bm!693783) bm!693782))

(assert (= (or b!7567068 bm!693782) bm!693785))

(assert (= (or b!7567068 b!7567065) bm!693784))

(declare-fun m!8129574 () Bool)

(assert (=> bm!693784 m!8129574))

(declare-fun m!8129576 () Bool)

(assert (=> bm!693785 m!8129576))

(declare-fun m!8129578 () Bool)

(assert (=> d!2316704 m!8129578))

(assert (=> d!2316704 m!8128518))

(declare-fun m!8129580 () Bool)

(assert (=> b!7567072 m!8129580))

(assert (=> b!7566674 d!2316704))

(declare-fun d!2316706 () Bool)

(assert (=> d!2316706 (= (isEmpty!41423 (tail!15103 lt!2650099)) ((_ is Nil!72744) (tail!15103 lt!2650099)))))

(assert (=> b!7566536 d!2316706))

(assert (=> b!7566536 d!2316500))

(declare-fun d!2316708 () Bool)

(declare-fun c!1396336 () Bool)

(assert (=> d!2316708 (= c!1396336 ((_ is Nil!72744) lt!2650295))))

(declare-fun e!4505482 () (InoxSet C!40296))

(assert (=> d!2316708 (= (content!15406 lt!2650295) e!4505482)))

(declare-fun b!7567074 () Bool)

(assert (=> b!7567074 (= e!4505482 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567075 () Bool)

(assert (=> b!7567075 (= e!4505482 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650295) true) (content!15406 (t!387601 lt!2650295))))))

(assert (= (and d!2316708 c!1396336) b!7567074))

(assert (= (and d!2316708 (not c!1396336)) b!7567075))

(declare-fun m!8129582 () Bool)

(assert (=> b!7567075 m!8129582))

(declare-fun m!8129584 () Bool)

(assert (=> b!7567075 m!8129584))

(assert (=> d!2316480 d!2316708))

(declare-fun d!2316710 () Bool)

(declare-fun c!1396337 () Bool)

(assert (=> d!2316710 (= c!1396337 ((_ is Nil!72744) lt!2650098))))

(declare-fun e!4505483 () (InoxSet C!40296))

(assert (=> d!2316710 (= (content!15406 lt!2650098) e!4505483)))

(declare-fun b!7567076 () Bool)

(assert (=> b!7567076 (= e!4505483 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567077 () Bool)

(assert (=> b!7567077 (= e!4505483 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650098) true) (content!15406 (t!387601 lt!2650098))))))

(assert (= (and d!2316710 c!1396337) b!7567076))

(assert (= (and d!2316710 (not c!1396337)) b!7567077))

(declare-fun m!8129586 () Bool)

(assert (=> b!7567077 m!8129586))

(declare-fun m!8129588 () Bool)

(assert (=> b!7567077 m!8129588))

(assert (=> d!2316480 d!2316710))

(assert (=> d!2316480 d!2316622))

(declare-fun d!2316712 () Bool)

(assert (=> d!2316712 (= input!7874 lt!2650100)))

(declare-fun lt!2650564 () Unit!166904)

(declare-fun choose!58527 (List!72868 List!72868 List!72868) Unit!166904)

(assert (=> d!2316712 (= lt!2650564 (choose!58527 input!7874 lt!2650100 input!7874))))

(assert (=> d!2316712 (isPrefix!6191 input!7874 input!7874)))

(assert (=> d!2316712 (= (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 lt!2650100 input!7874) lt!2650564)))

(declare-fun bs!1940501 () Bool)

(assert (= bs!1940501 d!2316712))

(declare-fun m!8129590 () Bool)

(assert (=> bs!1940501 m!8129590))

(assert (=> bs!1940501 m!8128780))

(assert (=> bm!693678 d!2316712))

(assert (=> b!7566791 d!2316630))

(declare-fun b!7567080 () Bool)

(declare-fun res!3031668 () Bool)

(declare-fun e!4505484 () Bool)

(assert (=> b!7567080 (=> (not res!3031668) (not e!4505484))))

(declare-fun lt!2650565 () List!72868)

(assert (=> b!7567080 (= res!3031668 (= (size!42481 lt!2650565) (+ (size!42481 (t!387601 lt!2650098)) (size!42481 lt!2650107))))))

(declare-fun d!2316714 () Bool)

(assert (=> d!2316714 e!4505484))

(declare-fun res!3031667 () Bool)

(assert (=> d!2316714 (=> (not res!3031667) (not e!4505484))))

(assert (=> d!2316714 (= res!3031667 (= (content!15406 lt!2650565) ((_ map or) (content!15406 (t!387601 lt!2650098)) (content!15406 lt!2650107))))))

(declare-fun e!4505485 () List!72868)

(assert (=> d!2316714 (= lt!2650565 e!4505485)))

(declare-fun c!1396338 () Bool)

(assert (=> d!2316714 (= c!1396338 ((_ is Nil!72744) (t!387601 lt!2650098)))))

(assert (=> d!2316714 (= (++!17489 (t!387601 lt!2650098) lt!2650107) lt!2650565)))

(declare-fun b!7567081 () Bool)

(assert (=> b!7567081 (= e!4505484 (or (not (= lt!2650107 Nil!72744)) (= lt!2650565 (t!387601 lt!2650098))))))

(declare-fun b!7567079 () Bool)

(assert (=> b!7567079 (= e!4505485 (Cons!72744 (h!79192 (t!387601 lt!2650098)) (++!17489 (t!387601 (t!387601 lt!2650098)) lt!2650107)))))

(declare-fun b!7567078 () Bool)

(assert (=> b!7567078 (= e!4505485 lt!2650107)))

(assert (= (and d!2316714 c!1396338) b!7567078))

(assert (= (and d!2316714 (not c!1396338)) b!7567079))

(assert (= (and d!2316714 res!3031667) b!7567080))

(assert (= (and b!7567080 res!3031668) b!7567081))

(declare-fun m!8129592 () Bool)

(assert (=> b!7567080 m!8129592))

(declare-fun m!8129594 () Bool)

(assert (=> b!7567080 m!8129594))

(assert (=> b!7567080 m!8128858))

(declare-fun m!8129596 () Bool)

(assert (=> d!2316714 m!8129596))

(assert (=> d!2316714 m!8129588))

(assert (=> d!2316714 m!8128864))

(declare-fun m!8129598 () Bool)

(assert (=> b!7567079 m!8129598))

(assert (=> b!7566480 d!2316714))

(declare-fun d!2316716 () Bool)

(declare-fun lt!2650566 () Int)

(assert (=> d!2316716 (>= lt!2650566 0)))

(declare-fun e!4505486 () Int)

(assert (=> d!2316716 (= lt!2650566 e!4505486)))

(declare-fun c!1396339 () Bool)

(assert (=> d!2316716 (= c!1396339 ((_ is Nil!72744) lt!2650439))))

(assert (=> d!2316716 (= (size!42481 lt!2650439) lt!2650566)))

(declare-fun b!7567082 () Bool)

(assert (=> b!7567082 (= e!4505486 0)))

(declare-fun b!7567083 () Bool)

(assert (=> b!7567083 (= e!4505486 (+ 1 (size!42481 (t!387601 lt!2650439))))))

(assert (= (and d!2316716 c!1396339) b!7567082))

(assert (= (and d!2316716 (not c!1396339)) b!7567083))

(declare-fun m!8129600 () Bool)

(assert (=> b!7567083 m!8129600))

(assert (=> b!7566672 d!2316716))

(assert (=> b!7566672 d!2316534))

(declare-fun d!2316718 () Bool)

(declare-fun lt!2650567 () Int)

(assert (=> d!2316718 (>= lt!2650567 0)))

(declare-fun e!4505487 () Int)

(assert (=> d!2316718 (= lt!2650567 e!4505487)))

(declare-fun c!1396340 () Bool)

(assert (=> d!2316718 (= c!1396340 ((_ is Nil!72744) lt!2650098))))

(assert (=> d!2316718 (= (size!42481 lt!2650098) lt!2650567)))

(declare-fun b!7567084 () Bool)

(assert (=> b!7567084 (= e!4505487 0)))

(declare-fun b!7567085 () Bool)

(assert (=> b!7567085 (= e!4505487 (+ 1 (size!42481 (t!387601 lt!2650098))))))

(assert (= (and d!2316718 c!1396340) b!7567084))

(assert (= (and d!2316718 (not c!1396340)) b!7567085))

(assert (=> b!7567085 m!8129594))

(assert (=> b!7566672 d!2316718))

(declare-fun d!2316720 () Bool)

(declare-fun lt!2650568 () List!72868)

(assert (=> d!2316720 (= (++!17489 (t!387601 testedP!423) lt!2650568) (tail!15103 knownP!30))))

(declare-fun e!4505488 () List!72868)

(assert (=> d!2316720 (= lt!2650568 e!4505488)))

(declare-fun c!1396341 () Bool)

(assert (=> d!2316720 (= c!1396341 ((_ is Cons!72744) (t!387601 testedP!423)))))

(assert (=> d!2316720 (>= (size!42481 (tail!15103 knownP!30)) (size!42481 (t!387601 testedP!423)))))

(assert (=> d!2316720 (= (getSuffix!3669 (tail!15103 knownP!30) (t!387601 testedP!423)) lt!2650568)))

(declare-fun b!7567086 () Bool)

(assert (=> b!7567086 (= e!4505488 (getSuffix!3669 (tail!15103 (tail!15103 knownP!30)) (t!387601 (t!387601 testedP!423))))))

(declare-fun b!7567087 () Bool)

(assert (=> b!7567087 (= e!4505488 (tail!15103 knownP!30))))

(assert (= (and d!2316720 c!1396341) b!7567086))

(assert (= (and d!2316720 (not c!1396341)) b!7567087))

(declare-fun m!8129602 () Bool)

(assert (=> d!2316720 m!8129602))

(assert (=> d!2316720 m!8128908))

(assert (=> d!2316720 m!8129288))

(assert (=> d!2316720 m!8129096))

(assert (=> b!7567086 m!8128908))

(assert (=> b!7567086 m!8129294))

(assert (=> b!7567086 m!8129294))

(declare-fun m!8129604 () Bool)

(assert (=> b!7567086 m!8129604))

(assert (=> b!7566549 d!2316720))

(assert (=> b!7566549 d!2316598))

(declare-fun b!7567090 () Bool)

(declare-fun res!3031670 () Bool)

(declare-fun e!4505489 () Bool)

(assert (=> b!7567090 (=> (not res!3031670) (not e!4505489))))

(declare-fun lt!2650569 () List!72868)

(assert (=> b!7567090 (= res!3031670 (= (size!42481 lt!2650569) (+ (size!42481 (t!387601 testedP!423)) (size!42481 lt!2650115))))))

(declare-fun d!2316722 () Bool)

(assert (=> d!2316722 e!4505489))

(declare-fun res!3031669 () Bool)

(assert (=> d!2316722 (=> (not res!3031669) (not e!4505489))))

(assert (=> d!2316722 (= res!3031669 (= (content!15406 lt!2650569) ((_ map or) (content!15406 (t!387601 testedP!423)) (content!15406 lt!2650115))))))

(declare-fun e!4505490 () List!72868)

(assert (=> d!2316722 (= lt!2650569 e!4505490)))

(declare-fun c!1396342 () Bool)

(assert (=> d!2316722 (= c!1396342 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2316722 (= (++!17489 (t!387601 testedP!423) lt!2650115) lt!2650569)))

(declare-fun b!7567091 () Bool)

(assert (=> b!7567091 (= e!4505489 (or (not (= lt!2650115 Nil!72744)) (= lt!2650569 (t!387601 testedP!423))))))

(declare-fun b!7567089 () Bool)

(assert (=> b!7567089 (= e!4505490 (Cons!72744 (h!79192 (t!387601 testedP!423)) (++!17489 (t!387601 (t!387601 testedP!423)) lt!2650115)))))

(declare-fun b!7567088 () Bool)

(assert (=> b!7567088 (= e!4505490 lt!2650115)))

(assert (= (and d!2316722 c!1396342) b!7567088))

(assert (= (and d!2316722 (not c!1396342)) b!7567089))

(assert (= (and d!2316722 res!3031669) b!7567090))

(assert (= (and b!7567090 res!3031670) b!7567091))

(declare-fun m!8129606 () Bool)

(assert (=> b!7567090 m!8129606))

(assert (=> b!7567090 m!8129096))

(assert (=> b!7567090 m!8128930))

(declare-fun m!8129608 () Bool)

(assert (=> d!2316722 m!8129608))

(assert (=> d!2316722 m!8129374))

(assert (=> d!2316722 m!8128934))

(declare-fun m!8129610 () Bool)

(assert (=> b!7567089 m!8129610))

(assert (=> b!7566576 d!2316722))

(declare-fun d!2316724 () Bool)

(assert (=> d!2316724 (= (++!17489 (++!17489 testedP!423 lt!2650099) lt!2650116) (++!17489 testedP!423 (++!17489 lt!2650099 lt!2650116)))))

(assert (=> d!2316724 true))

(declare-fun _$52!2498 () Unit!166904)

(assert (=> d!2316724 (= (choose!58517 testedP!423 lt!2650099 lt!2650116) _$52!2498)))

(declare-fun bs!1940502 () Bool)

(assert (= bs!1940502 d!2316724))

(assert (=> bs!1940502 m!8128510))

(assert (=> bs!1940502 m!8128510))

(assert (=> bs!1940502 m!8129232))

(assert (=> bs!1940502 m!8128522))

(assert (=> bs!1940502 m!8128522))

(assert (=> bs!1940502 m!8129230))

(assert (=> d!2316590 d!2316724))

(declare-fun b!7567094 () Bool)

(declare-fun res!3031672 () Bool)

(declare-fun e!4505491 () Bool)

(assert (=> b!7567094 (=> (not res!3031672) (not e!4505491))))

(declare-fun lt!2650570 () List!72868)

(assert (=> b!7567094 (= res!3031672 (= (size!42481 lt!2650570) (+ (size!42481 (++!17489 testedP!423 lt!2650099)) (size!42481 lt!2650116))))))

(declare-fun d!2316726 () Bool)

(assert (=> d!2316726 e!4505491))

(declare-fun res!3031671 () Bool)

(assert (=> d!2316726 (=> (not res!3031671) (not e!4505491))))

(assert (=> d!2316726 (= res!3031671 (= (content!15406 lt!2650570) ((_ map or) (content!15406 (++!17489 testedP!423 lt!2650099)) (content!15406 lt!2650116))))))

(declare-fun e!4505492 () List!72868)

(assert (=> d!2316726 (= lt!2650570 e!4505492)))

(declare-fun c!1396343 () Bool)

(assert (=> d!2316726 (= c!1396343 ((_ is Nil!72744) (++!17489 testedP!423 lt!2650099)))))

(assert (=> d!2316726 (= (++!17489 (++!17489 testedP!423 lt!2650099) lt!2650116) lt!2650570)))

(declare-fun b!7567095 () Bool)

(assert (=> b!7567095 (= e!4505491 (or (not (= lt!2650116 Nil!72744)) (= lt!2650570 (++!17489 testedP!423 lt!2650099))))))

(declare-fun b!7567093 () Bool)

(assert (=> b!7567093 (= e!4505492 (Cons!72744 (h!79192 (++!17489 testedP!423 lt!2650099)) (++!17489 (t!387601 (++!17489 testedP!423 lt!2650099)) lt!2650116)))))

(declare-fun b!7567092 () Bool)

(assert (=> b!7567092 (= e!4505492 lt!2650116)))

(assert (= (and d!2316726 c!1396343) b!7567092))

(assert (= (and d!2316726 (not c!1396343)) b!7567093))

(assert (= (and d!2316726 res!3031671) b!7567094))

(assert (= (and b!7567094 res!3031672) b!7567095))

(declare-fun m!8129612 () Bool)

(assert (=> b!7567094 m!8129612))

(assert (=> b!7567094 m!8128510))

(declare-fun m!8129614 () Bool)

(assert (=> b!7567094 m!8129614))

(assert (=> b!7567094 m!8128942))

(declare-fun m!8129616 () Bool)

(assert (=> d!2316726 m!8129616))

(assert (=> d!2316726 m!8128510))

(declare-fun m!8129618 () Bool)

(assert (=> d!2316726 m!8129618))

(assert (=> d!2316726 m!8128948))

(declare-fun m!8129620 () Bool)

(assert (=> b!7567093 m!8129620))

(assert (=> d!2316590 d!2316726))

(assert (=> d!2316590 d!2316504))

(assert (=> d!2316590 d!2316588))

(declare-fun b!7567098 () Bool)

(declare-fun res!3031674 () Bool)

(declare-fun e!4505493 () Bool)

(assert (=> b!7567098 (=> (not res!3031674) (not e!4505493))))

(declare-fun lt!2650571 () List!72868)

(assert (=> b!7567098 (= res!3031674 (= (size!42481 lt!2650571) (+ (size!42481 testedP!423) (size!42481 (++!17489 lt!2650099 lt!2650116)))))))

(declare-fun d!2316728 () Bool)

(assert (=> d!2316728 e!4505493))

(declare-fun res!3031673 () Bool)

(assert (=> d!2316728 (=> (not res!3031673) (not e!4505493))))

(assert (=> d!2316728 (= res!3031673 (= (content!15406 lt!2650571) ((_ map or) (content!15406 testedP!423) (content!15406 (++!17489 lt!2650099 lt!2650116)))))))

(declare-fun e!4505494 () List!72868)

(assert (=> d!2316728 (= lt!2650571 e!4505494)))

(declare-fun c!1396344 () Bool)

(assert (=> d!2316728 (= c!1396344 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316728 (= (++!17489 testedP!423 (++!17489 lt!2650099 lt!2650116)) lt!2650571)))

(declare-fun b!7567099 () Bool)

(assert (=> b!7567099 (= e!4505493 (or (not (= (++!17489 lt!2650099 lt!2650116) Nil!72744)) (= lt!2650571 testedP!423)))))

(declare-fun b!7567097 () Bool)

(assert (=> b!7567097 (= e!4505494 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (++!17489 lt!2650099 lt!2650116))))))

(declare-fun b!7567096 () Bool)

(assert (=> b!7567096 (= e!4505494 (++!17489 lt!2650099 lt!2650116))))

(assert (= (and d!2316728 c!1396344) b!7567096))

(assert (= (and d!2316728 (not c!1396344)) b!7567097))

(assert (= (and d!2316728 res!3031673) b!7567098))

(assert (= (and b!7567098 res!3031674) b!7567099))

(declare-fun m!8129622 () Bool)

(assert (=> b!7567098 m!8129622))

(assert (=> b!7567098 m!8128472))

(assert (=> b!7567098 m!8128522))

(declare-fun m!8129624 () Bool)

(assert (=> b!7567098 m!8129624))

(declare-fun m!8129626 () Bool)

(assert (=> d!2316728 m!8129626))

(assert (=> d!2316728 m!8128876))

(assert (=> d!2316728 m!8128522))

(declare-fun m!8129628 () Bool)

(assert (=> d!2316728 m!8129628))

(assert (=> b!7567097 m!8128522))

(declare-fun m!8129630 () Bool)

(assert (=> b!7567097 m!8129630))

(assert (=> d!2316590 d!2316728))

(assert (=> bm!693665 d!2316558))

(declare-fun d!2316730 () Bool)

(assert (=> d!2316730 (= (isEmpty!41423 (tail!15103 knownP!30)) ((_ is Nil!72744) (tail!15103 knownP!30)))))

(assert (=> b!7566778 d!2316730))

(assert (=> b!7566778 d!2316598))

(declare-fun d!2316732 () Bool)

(declare-fun lt!2650572 () List!72868)

(assert (=> d!2316732 (= (++!17489 (t!387601 lt!2650100) lt!2650572) (tail!15103 knownP!30))))

(declare-fun e!4505495 () List!72868)

(assert (=> d!2316732 (= lt!2650572 e!4505495)))

(declare-fun c!1396345 () Bool)

(assert (=> d!2316732 (= c!1396345 ((_ is Cons!72744) (t!387601 lt!2650100)))))

(assert (=> d!2316732 (>= (size!42481 (tail!15103 knownP!30)) (size!42481 (t!387601 lt!2650100)))))

(assert (=> d!2316732 (= (getSuffix!3669 (tail!15103 knownP!30) (t!387601 lt!2650100)) lt!2650572)))

(declare-fun b!7567100 () Bool)

(assert (=> b!7567100 (= e!4505495 (getSuffix!3669 (tail!15103 (tail!15103 knownP!30)) (t!387601 (t!387601 lt!2650100))))))

(declare-fun b!7567101 () Bool)

(assert (=> b!7567101 (= e!4505495 (tail!15103 knownP!30))))

(assert (= (and d!2316732 c!1396345) b!7567100))

(assert (= (and d!2316732 (not c!1396345)) b!7567101))

(declare-fun m!8129632 () Bool)

(assert (=> d!2316732 m!8129632))

(assert (=> d!2316732 m!8128908))

(assert (=> d!2316732 m!8129288))

(assert (=> d!2316732 m!8128848))

(assert (=> b!7567100 m!8128908))

(assert (=> b!7567100 m!8129294))

(assert (=> b!7567100 m!8129294))

(declare-fun m!8129634 () Bool)

(assert (=> b!7567100 m!8129634))

(assert (=> b!7566668 d!2316732))

(assert (=> b!7566668 d!2316598))

(assert (=> bm!693673 d!2316678))

(declare-fun d!2316734 () Bool)

(assert (=> d!2316734 (= (nullable!8719 (reg!20314 baseR!101)) (nullableFct!3480 (reg!20314 baseR!101)))))

(declare-fun bs!1940503 () Bool)

(assert (= bs!1940503 d!2316734))

(declare-fun m!8129636 () Bool)

(assert (=> bs!1940503 m!8129636))

(assert (=> b!7566652 d!2316734))

(declare-fun d!2316736 () Bool)

(declare-fun lt!2650573 () Int)

(assert (=> d!2316736 (>= lt!2650573 0)))

(declare-fun e!4505496 () Int)

(assert (=> d!2316736 (= lt!2650573 e!4505496)))

(declare-fun c!1396346 () Bool)

(assert (=> d!2316736 (= c!1396346 ((_ is Nil!72744) (t!387601 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110)))))))

(assert (=> d!2316736 (= (size!42481 (t!387601 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110)))) lt!2650573)))

(declare-fun b!7567102 () Bool)

(assert (=> b!7567102 (= e!4505496 0)))

(declare-fun b!7567103 () Bool)

(assert (=> b!7567103 (= e!4505496 (+ 1 (size!42481 (t!387601 (t!387601 (_1!37735 (findLongestMatchInner!2140 r!24333 testedP!423 lt!2650111 lt!2650115 input!7874 lt!2650110)))))))))

(assert (= (and d!2316736 c!1396346) b!7567102))

(assert (= (and d!2316736 (not c!1396346)) b!7567103))

(declare-fun m!8129638 () Bool)

(assert (=> b!7567103 m!8129638))

(assert (=> b!7566270 d!2316736))

(declare-fun d!2316738 () Bool)

(declare-fun lt!2650574 () Regex!19985)

(assert (=> d!2316738 (validRegex!10413 lt!2650574)))

(declare-fun e!4505497 () Regex!19985)

(assert (=> d!2316738 (= lt!2650574 e!4505497)))

(declare-fun c!1396347 () Bool)

(assert (=> d!2316738 (= c!1396347 ((_ is Cons!72744) (t!387601 testedP!423)))))

(assert (=> d!2316738 (validRegex!10413 (derivativeStep!5763 baseR!101 (h!79192 testedP!423)))))

(assert (=> d!2316738 (= (derivative!515 (derivativeStep!5763 baseR!101 (h!79192 testedP!423)) (t!387601 testedP!423)) lt!2650574)))

(declare-fun b!7567104 () Bool)

(assert (=> b!7567104 (= e!4505497 (derivative!515 (derivativeStep!5763 (derivativeStep!5763 baseR!101 (h!79192 testedP!423)) (h!79192 (t!387601 testedP!423))) (t!387601 (t!387601 testedP!423))))))

(declare-fun b!7567105 () Bool)

(assert (=> b!7567105 (= e!4505497 (derivativeStep!5763 baseR!101 (h!79192 testedP!423)))))

(assert (= (and d!2316738 c!1396347) b!7567104))

(assert (= (and d!2316738 (not c!1396347)) b!7567105))

(declare-fun m!8129640 () Bool)

(assert (=> d!2316738 m!8129640))

(assert (=> d!2316738 m!8128852))

(declare-fun m!8129642 () Bool)

(assert (=> d!2316738 m!8129642))

(assert (=> b!7567104 m!8128852))

(declare-fun m!8129644 () Bool)

(assert (=> b!7567104 m!8129644))

(assert (=> b!7567104 m!8129644))

(declare-fun m!8129646 () Bool)

(assert (=> b!7567104 m!8129646))

(assert (=> b!7566461 d!2316738))

(declare-fun bm!693786 () Bool)

(declare-fun call!693793 () Regex!19985)

(declare-fun call!693794 () Regex!19985)

(assert (=> bm!693786 (= call!693793 call!693794)))

(declare-fun bm!693787 () Bool)

(declare-fun call!693791 () Regex!19985)

(assert (=> bm!693787 (= call!693791 call!693793)))

(declare-fun bm!693788 () Bool)

(declare-fun c!1396352 () Bool)

(declare-fun call!693792 () Regex!19985)

(assert (=> bm!693788 (= call!693792 (derivativeStep!5763 (ite c!1396352 (regOne!40483 baseR!101) (regTwo!40482 baseR!101)) (h!79192 testedP!423)))))

(declare-fun c!1396348 () Bool)

(declare-fun bm!693789 () Bool)

(assert (=> bm!693789 (= call!693794 (derivativeStep!5763 (ite c!1396352 (regTwo!40483 baseR!101) (ite c!1396348 (reg!20314 baseR!101) (regOne!40482 baseR!101))) (h!79192 testedP!423)))))

(declare-fun b!7567106 () Bool)

(assert (=> b!7567106 (= c!1396352 ((_ is Union!19985) baseR!101))))

(declare-fun e!4505498 () Regex!19985)

(declare-fun e!4505502 () Regex!19985)

(assert (=> b!7567106 (= e!4505498 e!4505502)))

(declare-fun b!7567107 () Bool)

(declare-fun e!4505500 () Regex!19985)

(assert (=> b!7567107 (= e!4505500 (Union!19985 (Concat!28830 call!693791 (regTwo!40482 baseR!101)) call!693792))))

(declare-fun b!7567108 () Bool)

(declare-fun e!4505499 () Regex!19985)

(assert (=> b!7567108 (= e!4505499 EmptyLang!19985)))

(declare-fun d!2316740 () Bool)

(declare-fun lt!2650575 () Regex!19985)

(assert (=> d!2316740 (validRegex!10413 lt!2650575)))

(assert (=> d!2316740 (= lt!2650575 e!4505499)))

(declare-fun c!1396349 () Bool)

(assert (=> d!2316740 (= c!1396349 (or ((_ is EmptyExpr!19985) baseR!101) ((_ is EmptyLang!19985) baseR!101)))))

(assert (=> d!2316740 (validRegex!10413 baseR!101)))

(assert (=> d!2316740 (= (derivativeStep!5763 baseR!101 (h!79192 testedP!423)) lt!2650575)))

(declare-fun b!7567109 () Bool)

(assert (=> b!7567109 (= e!4505498 (ite (= (h!79192 testedP!423) (c!1396094 baseR!101)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567110 () Bool)

(assert (=> b!7567110 (= e!4505502 (Union!19985 call!693792 call!693794))))

(declare-fun b!7567111 () Bool)

(assert (=> b!7567111 (= e!4505500 (Union!19985 (Concat!28830 call!693791 (regTwo!40482 baseR!101)) EmptyLang!19985))))

(declare-fun b!7567112 () Bool)

(declare-fun e!4505501 () Regex!19985)

(assert (=> b!7567112 (= e!4505501 (Concat!28830 call!693793 baseR!101))))

(declare-fun b!7567113 () Bool)

(assert (=> b!7567113 (= e!4505499 e!4505498)))

(declare-fun c!1396351 () Bool)

(assert (=> b!7567113 (= c!1396351 ((_ is ElementMatch!19985) baseR!101))))

(declare-fun b!7567114 () Bool)

(declare-fun c!1396350 () Bool)

(assert (=> b!7567114 (= c!1396350 (nullable!8719 (regOne!40482 baseR!101)))))

(assert (=> b!7567114 (= e!4505501 e!4505500)))

(declare-fun b!7567115 () Bool)

(assert (=> b!7567115 (= e!4505502 e!4505501)))

(assert (=> b!7567115 (= c!1396348 ((_ is Star!19985) baseR!101))))

(assert (= (and d!2316740 c!1396349) b!7567108))

(assert (= (and d!2316740 (not c!1396349)) b!7567113))

(assert (= (and b!7567113 c!1396351) b!7567109))

(assert (= (and b!7567113 (not c!1396351)) b!7567106))

(assert (= (and b!7567106 c!1396352) b!7567110))

(assert (= (and b!7567106 (not c!1396352)) b!7567115))

(assert (= (and b!7567115 c!1396348) b!7567112))

(assert (= (and b!7567115 (not c!1396348)) b!7567114))

(assert (= (and b!7567114 c!1396350) b!7567107))

(assert (= (and b!7567114 (not c!1396350)) b!7567111))

(assert (= (or b!7567107 b!7567111) bm!693787))

(assert (= (or b!7567112 bm!693787) bm!693786))

(assert (= (or b!7567110 bm!693786) bm!693789))

(assert (= (or b!7567110 b!7567107) bm!693788))

(declare-fun m!8129648 () Bool)

(assert (=> bm!693788 m!8129648))

(declare-fun m!8129650 () Bool)

(assert (=> bm!693789 m!8129650))

(declare-fun m!8129652 () Bool)

(assert (=> d!2316740 m!8129652))

(assert (=> d!2316740 m!8128518))

(assert (=> b!7567114 m!8129580))

(assert (=> b!7566461 d!2316740))

(declare-fun d!2316742 () Bool)

(declare-fun lt!2650576 () Int)

(assert (=> d!2316742 (>= lt!2650576 0)))

(declare-fun e!4505503 () Int)

(assert (=> d!2316742 (= lt!2650576 e!4505503)))

(declare-fun c!1396353 () Bool)

(assert (=> d!2316742 (= c!1396353 ((_ is Nil!72744) lt!2650290))))

(assert (=> d!2316742 (= (size!42481 lt!2650290) lt!2650576)))

(declare-fun b!7567116 () Bool)

(assert (=> b!7567116 (= e!4505503 0)))

(declare-fun b!7567117 () Bool)

(assert (=> b!7567117 (= e!4505503 (+ 1 (size!42481 (t!387601 lt!2650290))))))

(assert (= (and d!2316742 c!1396353) b!7567116))

(assert (= (and d!2316742 (not c!1396353)) b!7567117))

(declare-fun m!8129654 () Bool)

(assert (=> b!7567117 m!8129654))

(assert (=> b!7566473 d!2316742))

(assert (=> b!7566473 d!2316470))

(declare-fun d!2316744 () Bool)

(declare-fun lt!2650577 () Int)

(assert (=> d!2316744 (>= lt!2650577 0)))

(declare-fun e!4505504 () Int)

(assert (=> d!2316744 (= lt!2650577 e!4505504)))

(declare-fun c!1396354 () Bool)

(assert (=> d!2316744 (= c!1396354 ((_ is Nil!72744) lt!2650107))))

(assert (=> d!2316744 (= (size!42481 lt!2650107) lt!2650577)))

(declare-fun b!7567118 () Bool)

(assert (=> b!7567118 (= e!4505504 0)))

(declare-fun b!7567119 () Bool)

(assert (=> b!7567119 (= e!4505504 (+ 1 (size!42481 (t!387601 lt!2650107))))))

(assert (= (and d!2316744 c!1396354) b!7567118))

(assert (= (and d!2316744 (not c!1396354)) b!7567119))

(declare-fun m!8129656 () Bool)

(assert (=> b!7567119 m!8129656))

(assert (=> b!7566473 d!2316744))

(declare-fun bm!693790 () Bool)

(declare-fun call!693796 () Bool)

(declare-fun c!1396356 () Bool)

(assert (=> bm!693790 (= call!693796 (validRegex!10413 (ite c!1396356 (regOne!40483 lt!2650451) (regOne!40482 lt!2650451))))))

(declare-fun b!7567120 () Bool)

(declare-fun e!4505511 () Bool)

(declare-fun e!4505505 () Bool)

(assert (=> b!7567120 (= e!4505511 e!4505505)))

(assert (=> b!7567120 (= c!1396356 ((_ is Union!19985) lt!2650451))))

(declare-fun b!7567121 () Bool)

(declare-fun e!4505507 () Bool)

(assert (=> b!7567121 (= e!4505511 e!4505507)))

(declare-fun res!3031677 () Bool)

(assert (=> b!7567121 (= res!3031677 (not (nullable!8719 (reg!20314 lt!2650451))))))

(assert (=> b!7567121 (=> (not res!3031677) (not e!4505507))))

(declare-fun b!7567122 () Bool)

(declare-fun res!3031676 () Bool)

(declare-fun e!4505510 () Bool)

(assert (=> b!7567122 (=> res!3031676 e!4505510)))

(assert (=> b!7567122 (= res!3031676 (not ((_ is Concat!28830) lt!2650451)))))

(assert (=> b!7567122 (= e!4505505 e!4505510)))

(declare-fun b!7567123 () Bool)

(declare-fun e!4505509 () Bool)

(assert (=> b!7567123 (= e!4505510 e!4505509)))

(declare-fun res!3031678 () Bool)

(assert (=> b!7567123 (=> (not res!3031678) (not e!4505509))))

(assert (=> b!7567123 (= res!3031678 call!693796)))

(declare-fun b!7567124 () Bool)

(declare-fun call!693795 () Bool)

(assert (=> b!7567124 (= e!4505509 call!693795)))

(declare-fun b!7567125 () Bool)

(declare-fun e!4505508 () Bool)

(assert (=> b!7567125 (= e!4505508 call!693795)))

(declare-fun b!7567126 () Bool)

(declare-fun call!693797 () Bool)

(assert (=> b!7567126 (= e!4505507 call!693797)))

(declare-fun b!7567127 () Bool)

(declare-fun res!3031679 () Bool)

(assert (=> b!7567127 (=> (not res!3031679) (not e!4505508))))

(assert (=> b!7567127 (= res!3031679 call!693796)))

(assert (=> b!7567127 (= e!4505505 e!4505508)))

(declare-fun b!7567128 () Bool)

(declare-fun e!4505506 () Bool)

(assert (=> b!7567128 (= e!4505506 e!4505511)))

(declare-fun c!1396355 () Bool)

(assert (=> b!7567128 (= c!1396355 ((_ is Star!19985) lt!2650451))))

(declare-fun bm!693791 () Bool)

(assert (=> bm!693791 (= call!693797 (validRegex!10413 (ite c!1396355 (reg!20314 lt!2650451) (ite c!1396356 (regTwo!40483 lt!2650451) (regTwo!40482 lt!2650451)))))))

(declare-fun bm!693792 () Bool)

(assert (=> bm!693792 (= call!693795 call!693797)))

(declare-fun d!2316746 () Bool)

(declare-fun res!3031675 () Bool)

(assert (=> d!2316746 (=> res!3031675 e!4505506)))

(assert (=> d!2316746 (= res!3031675 ((_ is ElementMatch!19985) lt!2650451))))

(assert (=> d!2316746 (= (validRegex!10413 lt!2650451) e!4505506)))

(assert (= (and d!2316746 (not res!3031675)) b!7567128))

(assert (= (and b!7567128 c!1396355) b!7567121))

(assert (= (and b!7567128 (not c!1396355)) b!7567120))

(assert (= (and b!7567121 res!3031677) b!7567126))

(assert (= (and b!7567120 c!1396356) b!7567127))

(assert (= (and b!7567120 (not c!1396356)) b!7567122))

(assert (= (and b!7567127 res!3031679) b!7567125))

(assert (= (and b!7567122 (not res!3031676)) b!7567123))

(assert (= (and b!7567123 res!3031678) b!7567124))

(assert (= (or b!7567127 b!7567123) bm!693790))

(assert (= (or b!7567125 b!7567124) bm!693792))

(assert (= (or b!7567126 bm!693792) bm!693791))

(declare-fun m!8129658 () Bool)

(assert (=> bm!693790 m!8129658))

(declare-fun m!8129660 () Bool)

(assert (=> b!7567121 m!8129660))

(declare-fun m!8129662 () Bool)

(assert (=> bm!693791 m!8129662))

(assert (=> d!2316546 d!2316746))

(assert (=> d!2316546 d!2316582))

(declare-fun d!2316748 () Bool)

(declare-fun lt!2650578 () Int)

(assert (=> d!2316748 (>= lt!2650578 0)))

(declare-fun e!4505512 () Int)

(assert (=> d!2316748 (= lt!2650578 e!4505512)))

(declare-fun c!1396357 () Bool)

(assert (=> d!2316748 (= c!1396357 ((_ is Nil!72744) lt!2650295))))

(assert (=> d!2316748 (= (size!42481 lt!2650295) lt!2650578)))

(declare-fun b!7567129 () Bool)

(assert (=> b!7567129 (= e!4505512 0)))

(declare-fun b!7567130 () Bool)

(assert (=> b!7567130 (= e!4505512 (+ 1 (size!42481 (t!387601 lt!2650295))))))

(assert (= (and d!2316748 c!1396357) b!7567129))

(assert (= (and d!2316748 (not c!1396357)) b!7567130))

(declare-fun m!8129664 () Bool)

(assert (=> b!7567130 m!8129664))

(assert (=> b!7566481 d!2316748))

(assert (=> b!7566481 d!2316718))

(assert (=> b!7566481 d!2316744))

(declare-fun b!7567133 () Bool)

(declare-fun res!3031681 () Bool)

(declare-fun e!4505513 () Bool)

(assert (=> b!7567133 (=> (not res!3031681) (not e!4505513))))

(declare-fun lt!2650579 () List!72868)

(assert (=> b!7567133 (= res!3031681 (= (size!42481 lt!2650579) (+ (size!42481 lt!2650100) (size!42481 lt!2650438))))))

(declare-fun d!2316750 () Bool)

(assert (=> d!2316750 e!4505513))

(declare-fun res!3031680 () Bool)

(assert (=> d!2316750 (=> (not res!3031680) (not e!4505513))))

(assert (=> d!2316750 (= res!3031680 (= (content!15406 lt!2650579) ((_ map or) (content!15406 lt!2650100) (content!15406 lt!2650438))))))

(declare-fun e!4505514 () List!72868)

(assert (=> d!2316750 (= lt!2650579 e!4505514)))

(declare-fun c!1396358 () Bool)

(assert (=> d!2316750 (= c!1396358 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316750 (= (++!17489 lt!2650100 lt!2650438) lt!2650579)))

(declare-fun b!7567134 () Bool)

(assert (=> b!7567134 (= e!4505513 (or (not (= lt!2650438 Nil!72744)) (= lt!2650579 lt!2650100)))))

(declare-fun b!7567132 () Bool)

(assert (=> b!7567132 (= e!4505514 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) lt!2650438)))))

(declare-fun b!7567131 () Bool)

(assert (=> b!7567131 (= e!4505514 lt!2650438)))

(assert (= (and d!2316750 c!1396358) b!7567131))

(assert (= (and d!2316750 (not c!1396358)) b!7567132))

(assert (= (and d!2316750 res!3031680) b!7567133))

(assert (= (and b!7567133 res!3031681) b!7567134))

(declare-fun m!8129666 () Bool)

(assert (=> b!7567133 m!8129666))

(assert (=> b!7567133 m!8128538))

(declare-fun m!8129668 () Bool)

(assert (=> b!7567133 m!8129668))

(declare-fun m!8129670 () Bool)

(assert (=> d!2316750 m!8129670))

(assert (=> d!2316750 m!8128862))

(declare-fun m!8129672 () Bool)

(assert (=> d!2316750 m!8129672))

(declare-fun m!8129674 () Bool)

(assert (=> b!7567132 m!8129674))

(assert (=> d!2316540 d!2316750))

(assert (=> d!2316540 d!2316538))

(assert (=> d!2316540 d!2316470))

(declare-fun call!693799 () Bool)

(declare-fun bm!693793 () Bool)

(declare-fun c!1396360 () Bool)

(assert (=> bm!693793 (= call!693799 (validRegex!10413 (ite c!1396360 (regOne!40483 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))) (regOne!40482 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))))

(declare-fun b!7567135 () Bool)

(declare-fun e!4505521 () Bool)

(declare-fun e!4505515 () Bool)

(assert (=> b!7567135 (= e!4505521 e!4505515)))

(assert (=> b!7567135 (= c!1396360 ((_ is Union!19985) (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))

(declare-fun b!7567136 () Bool)

(declare-fun e!4505517 () Bool)

(assert (=> b!7567136 (= e!4505521 e!4505517)))

(declare-fun res!3031684 () Bool)

(assert (=> b!7567136 (= res!3031684 (not (nullable!8719 (reg!20314 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))))

(assert (=> b!7567136 (=> (not res!3031684) (not e!4505517))))

(declare-fun b!7567137 () Bool)

(declare-fun res!3031683 () Bool)

(declare-fun e!4505520 () Bool)

(assert (=> b!7567137 (=> res!3031683 e!4505520)))

(assert (=> b!7567137 (= res!3031683 (not ((_ is Concat!28830) (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101))))))))

(assert (=> b!7567137 (= e!4505515 e!4505520)))

(declare-fun b!7567138 () Bool)

(declare-fun e!4505519 () Bool)

(assert (=> b!7567138 (= e!4505520 e!4505519)))

(declare-fun res!3031685 () Bool)

(assert (=> b!7567138 (=> (not res!3031685) (not e!4505519))))

(assert (=> b!7567138 (= res!3031685 call!693799)))

(declare-fun b!7567139 () Bool)

(declare-fun call!693798 () Bool)

(assert (=> b!7567139 (= e!4505519 call!693798)))

(declare-fun b!7567140 () Bool)

(declare-fun e!4505518 () Bool)

(assert (=> b!7567140 (= e!4505518 call!693798)))

(declare-fun b!7567141 () Bool)

(declare-fun call!693800 () Bool)

(assert (=> b!7567141 (= e!4505517 call!693800)))

(declare-fun b!7567142 () Bool)

(declare-fun res!3031686 () Bool)

(assert (=> b!7567142 (=> (not res!3031686) (not e!4505518))))

(assert (=> b!7567142 (= res!3031686 call!693799)))

(assert (=> b!7567142 (= e!4505515 e!4505518)))

(declare-fun b!7567143 () Bool)

(declare-fun e!4505516 () Bool)

(assert (=> b!7567143 (= e!4505516 e!4505521)))

(declare-fun c!1396359 () Bool)

(assert (=> b!7567143 (= c!1396359 ((_ is Star!19985) (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))

(declare-fun bm!693794 () Bool)

(assert (=> bm!693794 (= call!693800 (validRegex!10413 (ite c!1396359 (reg!20314 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))) (ite c!1396360 (regTwo!40483 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))) (regTwo!40482 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101))))))))))

(declare-fun bm!693795 () Bool)

(assert (=> bm!693795 (= call!693798 call!693800)))

(declare-fun d!2316752 () Bool)

(declare-fun res!3031682 () Bool)

(assert (=> d!2316752 (=> res!3031682 e!4505516)))

(assert (=> d!2316752 (= res!3031682 ((_ is ElementMatch!19985) (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))))))

(assert (=> d!2316752 (= (validRegex!10413 (ite c!1396222 (reg!20314 baseR!101) (ite c!1396223 (regTwo!40483 baseR!101) (regTwo!40482 baseR!101)))) e!4505516)))

(assert (= (and d!2316752 (not res!3031682)) b!7567143))

(assert (= (and b!7567143 c!1396359) b!7567136))

(assert (= (and b!7567143 (not c!1396359)) b!7567135))

(assert (= (and b!7567136 res!3031684) b!7567141))

(assert (= (and b!7567135 c!1396360) b!7567142))

(assert (= (and b!7567135 (not c!1396360)) b!7567137))

(assert (= (and b!7567142 res!3031686) b!7567140))

(assert (= (and b!7567137 (not res!3031683)) b!7567138))

(assert (= (and b!7567138 res!3031685) b!7567139))

(assert (= (or b!7567142 b!7567138) bm!693793))

(assert (= (or b!7567140 b!7567139) bm!693795))

(assert (= (or b!7567141 bm!693795) bm!693794))

(declare-fun m!8129676 () Bool)

(assert (=> bm!693793 m!8129676))

(declare-fun m!8129678 () Bool)

(assert (=> b!7567136 m!8129678))

(declare-fun m!8129680 () Bool)

(assert (=> bm!693794 m!8129680))

(assert (=> bm!693721 d!2316752))

(declare-fun d!2316754 () Bool)

(declare-fun c!1396361 () Bool)

(assert (=> d!2316754 (= c!1396361 ((_ is Nil!72744) lt!2650367))))

(declare-fun e!4505522 () (InoxSet C!40296))

(assert (=> d!2316754 (= (content!15406 lt!2650367) e!4505522)))

(declare-fun b!7567144 () Bool)

(assert (=> b!7567144 (= e!4505522 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567145 () Bool)

(assert (=> b!7567145 (= e!4505522 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650367) true) (content!15406 (t!387601 lt!2650367))))))

(assert (= (and d!2316754 c!1396361) b!7567144))

(assert (= (and d!2316754 (not c!1396361)) b!7567145))

(declare-fun m!8129682 () Bool)

(assert (=> b!7567145 m!8129682))

(declare-fun m!8129684 () Bool)

(assert (=> b!7567145 m!8129684))

(assert (=> d!2316496 d!2316754))

(assert (=> d!2316496 d!2316660))

(declare-fun d!2316756 () Bool)

(declare-fun c!1396362 () Bool)

(assert (=> d!2316756 (= c!1396362 ((_ is Nil!72744) lt!2650115))))

(declare-fun e!4505523 () (InoxSet C!40296))

(assert (=> d!2316756 (= (content!15406 lt!2650115) e!4505523)))

(declare-fun b!7567146 () Bool)

(assert (=> b!7567146 (= e!4505523 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567147 () Bool)

(assert (=> b!7567147 (= e!4505523 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650115) true) (content!15406 (t!387601 lt!2650115))))))

(assert (= (and d!2316756 c!1396362) b!7567146))

(assert (= (and d!2316756 (not c!1396362)) b!7567147))

(declare-fun m!8129686 () Bool)

(assert (=> b!7567147 m!8129686))

(declare-fun m!8129688 () Bool)

(assert (=> b!7567147 m!8129688))

(assert (=> d!2316496 d!2316756))

(declare-fun d!2316758 () Bool)

(declare-fun lt!2650580 () Int)

(assert (=> d!2316758 (>= lt!2650580 0)))

(declare-fun e!4505524 () Int)

(assert (=> d!2316758 (= lt!2650580 e!4505524)))

(declare-fun c!1396363 () Bool)

(assert (=> d!2316758 (= c!1396363 ((_ is Nil!72744) lt!2650471))))

(assert (=> d!2316758 (= (size!42481 lt!2650471) lt!2650580)))

(declare-fun b!7567148 () Bool)

(assert (=> b!7567148 (= e!4505524 0)))

(declare-fun b!7567149 () Bool)

(assert (=> b!7567149 (= e!4505524 (+ 1 (size!42481 (t!387601 lt!2650471))))))

(assert (= (and d!2316758 c!1396363) b!7567148))

(assert (= (and d!2316758 (not c!1396363)) b!7567149))

(declare-fun m!8129690 () Bool)

(assert (=> b!7567149 m!8129690))

(assert (=> b!7566845 d!2316758))

(declare-fun d!2316760 () Bool)

(declare-fun lt!2650581 () Int)

(assert (=> d!2316760 (>= lt!2650581 0)))

(declare-fun e!4505525 () Int)

(assert (=> d!2316760 (= lt!2650581 e!4505525)))

(declare-fun c!1396364 () Bool)

(assert (=> d!2316760 (= c!1396364 ((_ is Nil!72744) lt!2650099))))

(assert (=> d!2316760 (= (size!42481 lt!2650099) lt!2650581)))

(declare-fun b!7567150 () Bool)

(assert (=> b!7567150 (= e!4505525 0)))

(declare-fun b!7567151 () Bool)

(assert (=> b!7567151 (= e!4505525 (+ 1 (size!42481 (t!387601 lt!2650099))))))

(assert (= (and d!2316760 c!1396364) b!7567150))

(assert (= (and d!2316760 (not c!1396364)) b!7567151))

(declare-fun m!8129692 () Bool)

(assert (=> b!7567151 m!8129692))

(assert (=> b!7566845 d!2316760))

(declare-fun d!2316762 () Bool)

(declare-fun lt!2650582 () Int)

(assert (=> d!2316762 (>= lt!2650582 0)))

(declare-fun e!4505526 () Int)

(assert (=> d!2316762 (= lt!2650582 e!4505526)))

(declare-fun c!1396365 () Bool)

(assert (=> d!2316762 (= c!1396365 ((_ is Nil!72744) lt!2650116))))

(assert (=> d!2316762 (= (size!42481 lt!2650116) lt!2650582)))

(declare-fun b!7567152 () Bool)

(assert (=> b!7567152 (= e!4505526 0)))

(declare-fun b!7567153 () Bool)

(assert (=> b!7567153 (= e!4505526 (+ 1 (size!42481 (t!387601 lt!2650116))))))

(assert (= (and d!2316762 c!1396365) b!7567152))

(assert (= (and d!2316762 (not c!1396365)) b!7567153))

(declare-fun m!8129694 () Bool)

(assert (=> b!7567153 m!8129694))

(assert (=> b!7566845 d!2316762))

(declare-fun d!2316764 () Bool)

(assert (=> d!2316764 (= (head!15563 lt!2650100) (h!79192 lt!2650100))))

(assert (=> b!7566762 d!2316764))

(assert (=> b!7566762 d!2316664))

(declare-fun d!2316766 () Bool)

(assert (=> d!2316766 (= (isEmpty!41423 (_1!37735 lt!2650241)) ((_ is Nil!72744) (_1!37735 lt!2650241)))))

(assert (=> b!7566423 d!2316766))

(assert (=> b!7566760 d!2316538))

(assert (=> b!7566760 d!2316470))

(declare-fun d!2316768 () Bool)

(declare-fun lt!2650583 () Int)

(assert (=> d!2316768 (>= lt!2650583 0)))

(declare-fun e!4505527 () Int)

(assert (=> d!2316768 (= lt!2650583 e!4505527)))

(declare-fun c!1396366 () Bool)

(assert (=> d!2316768 (= c!1396366 ((_ is Nil!72744) lt!2650470))))

(assert (=> d!2316768 (= (size!42481 lt!2650470) lt!2650583)))

(declare-fun b!7567154 () Bool)

(assert (=> b!7567154 (= e!4505527 0)))

(declare-fun b!7567155 () Bool)

(assert (=> b!7567155 (= e!4505527 (+ 1 (size!42481 (t!387601 lt!2650470))))))

(assert (= (and d!2316768 c!1396366) b!7567154))

(assert (= (and d!2316768 (not c!1396366)) b!7567155))

(declare-fun m!8129696 () Bool)

(assert (=> b!7567155 m!8129696))

(assert (=> b!7566833 d!2316768))

(assert (=> b!7566833 d!2316534))

(declare-fun d!2316770 () Bool)

(declare-fun lt!2650584 () Int)

(assert (=> d!2316770 (>= lt!2650584 0)))

(declare-fun e!4505528 () Int)

(assert (=> d!2316770 (= lt!2650584 e!4505528)))

(declare-fun c!1396367 () Bool)

(assert (=> d!2316770 (= c!1396367 ((_ is Nil!72744) lt!2650101))))

(assert (=> d!2316770 (= (size!42481 lt!2650101) lt!2650584)))

(declare-fun b!7567156 () Bool)

(assert (=> b!7567156 (= e!4505528 0)))

(declare-fun b!7567157 () Bool)

(assert (=> b!7567157 (= e!4505528 (+ 1 (size!42481 (t!387601 lt!2650101))))))

(assert (= (and d!2316770 c!1396367) b!7567156))

(assert (= (and d!2316770 (not c!1396367)) b!7567157))

(declare-fun m!8129698 () Bool)

(assert (=> b!7567157 m!8129698))

(assert (=> b!7566833 d!2316770))

(declare-fun b!7567160 () Bool)

(declare-fun res!3031688 () Bool)

(declare-fun e!4505529 () Bool)

(assert (=> b!7567160 (=> (not res!3031688) (not e!4505529))))

(declare-fun lt!2650585 () List!72868)

(assert (=> b!7567160 (= res!3031688 (= (size!42481 lt!2650585) (+ (size!42481 lt!2650100) (size!42481 lt!2650254))))))

(declare-fun d!2316772 () Bool)

(assert (=> d!2316772 e!4505529))

(declare-fun res!3031687 () Bool)

(assert (=> d!2316772 (=> (not res!3031687) (not e!4505529))))

(assert (=> d!2316772 (= res!3031687 (= (content!15406 lt!2650585) ((_ map or) (content!15406 lt!2650100) (content!15406 lt!2650254))))))

(declare-fun e!4505530 () List!72868)

(assert (=> d!2316772 (= lt!2650585 e!4505530)))

(declare-fun c!1396368 () Bool)

(assert (=> d!2316772 (= c!1396368 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2316772 (= (++!17489 lt!2650100 lt!2650254) lt!2650585)))

(declare-fun b!7567161 () Bool)

(assert (=> b!7567161 (= e!4505529 (or (not (= lt!2650254 Nil!72744)) (= lt!2650585 lt!2650100)))))

(declare-fun b!7567159 () Bool)

(assert (=> b!7567159 (= e!4505530 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) lt!2650254)))))

(declare-fun b!7567158 () Bool)

(assert (=> b!7567158 (= e!4505530 lt!2650254)))

(assert (= (and d!2316772 c!1396368) b!7567158))

(assert (= (and d!2316772 (not c!1396368)) b!7567159))

(assert (= (and d!2316772 res!3031687) b!7567160))

(assert (= (and b!7567160 res!3031688) b!7567161))

(declare-fun m!8129700 () Bool)

(assert (=> b!7567160 m!8129700))

(assert (=> b!7567160 m!8128538))

(declare-fun m!8129702 () Bool)

(assert (=> b!7567160 m!8129702))

(declare-fun m!8129704 () Bool)

(assert (=> d!2316772 m!8129704))

(assert (=> d!2316772 m!8128862))

(declare-fun m!8129706 () Bool)

(assert (=> d!2316772 m!8129706))

(declare-fun m!8129708 () Bool)

(assert (=> b!7567159 m!8129708))

(assert (=> d!2316464 d!2316772))

(assert (=> d!2316464 d!2316584))

(assert (=> d!2316464 d!2316470))

(declare-fun bm!693796 () Bool)

(declare-fun call!693802 () Bool)

(declare-fun c!1396370 () Bool)

(assert (=> bm!693796 (= call!693802 (validRegex!10413 (ite c!1396370 (regOne!40483 lt!2650440) (regOne!40482 lt!2650440))))))

(declare-fun b!7567162 () Bool)

(declare-fun e!4505537 () Bool)

(declare-fun e!4505531 () Bool)

(assert (=> b!7567162 (= e!4505537 e!4505531)))

(assert (=> b!7567162 (= c!1396370 ((_ is Union!19985) lt!2650440))))

(declare-fun b!7567163 () Bool)

(declare-fun e!4505533 () Bool)

(assert (=> b!7567163 (= e!4505537 e!4505533)))

(declare-fun res!3031691 () Bool)

(assert (=> b!7567163 (= res!3031691 (not (nullable!8719 (reg!20314 lt!2650440))))))

(assert (=> b!7567163 (=> (not res!3031691) (not e!4505533))))

(declare-fun b!7567164 () Bool)

(declare-fun res!3031690 () Bool)

(declare-fun e!4505536 () Bool)

(assert (=> b!7567164 (=> res!3031690 e!4505536)))

(assert (=> b!7567164 (= res!3031690 (not ((_ is Concat!28830) lt!2650440)))))

(assert (=> b!7567164 (= e!4505531 e!4505536)))

(declare-fun b!7567165 () Bool)

(declare-fun e!4505535 () Bool)

(assert (=> b!7567165 (= e!4505536 e!4505535)))

(declare-fun res!3031692 () Bool)

(assert (=> b!7567165 (=> (not res!3031692) (not e!4505535))))

(assert (=> b!7567165 (= res!3031692 call!693802)))

(declare-fun b!7567166 () Bool)

(declare-fun call!693801 () Bool)

(assert (=> b!7567166 (= e!4505535 call!693801)))

(declare-fun b!7567167 () Bool)

(declare-fun e!4505534 () Bool)

(assert (=> b!7567167 (= e!4505534 call!693801)))

(declare-fun b!7567168 () Bool)

(declare-fun call!693803 () Bool)

(assert (=> b!7567168 (= e!4505533 call!693803)))

(declare-fun b!7567169 () Bool)

(declare-fun res!3031693 () Bool)

(assert (=> b!7567169 (=> (not res!3031693) (not e!4505534))))

(assert (=> b!7567169 (= res!3031693 call!693802)))

(assert (=> b!7567169 (= e!4505531 e!4505534)))

(declare-fun b!7567170 () Bool)

(declare-fun e!4505532 () Bool)

(assert (=> b!7567170 (= e!4505532 e!4505537)))

(declare-fun c!1396369 () Bool)

(assert (=> b!7567170 (= c!1396369 ((_ is Star!19985) lt!2650440))))

(declare-fun bm!693797 () Bool)

(assert (=> bm!693797 (= call!693803 (validRegex!10413 (ite c!1396369 (reg!20314 lt!2650440) (ite c!1396370 (regTwo!40483 lt!2650440) (regTwo!40482 lt!2650440)))))))

(declare-fun bm!693798 () Bool)

(assert (=> bm!693798 (= call!693801 call!693803)))

(declare-fun d!2316774 () Bool)

(declare-fun res!3031689 () Bool)

(assert (=> d!2316774 (=> res!3031689 e!4505532)))

(assert (=> d!2316774 (= res!3031689 ((_ is ElementMatch!19985) lt!2650440))))

(assert (=> d!2316774 (= (validRegex!10413 lt!2650440) e!4505532)))

(assert (= (and d!2316774 (not res!3031689)) b!7567170))

(assert (= (and b!7567170 c!1396369) b!7567163))

(assert (= (and b!7567170 (not c!1396369)) b!7567162))

(assert (= (and b!7567163 res!3031691) b!7567168))

(assert (= (and b!7567162 c!1396370) b!7567169))

(assert (= (and b!7567162 (not c!1396370)) b!7567164))

(assert (= (and b!7567169 res!3031693) b!7567167))

(assert (= (and b!7567164 (not res!3031690)) b!7567165))

(assert (= (and b!7567165 res!3031692) b!7567166))

(assert (= (or b!7567169 b!7567165) bm!693796))

(assert (= (or b!7567167 b!7567166) bm!693798))

(assert (= (or b!7567168 bm!693798) bm!693797))

(declare-fun m!8129710 () Bool)

(assert (=> bm!693796 m!8129710))

(declare-fun m!8129712 () Bool)

(assert (=> b!7567163 m!8129712))

(declare-fun m!8129714 () Bool)

(assert (=> bm!693797 m!8129714))

(assert (=> d!2316544 d!2316774))

(assert (=> d!2316544 d!2316510))

(declare-fun b!7567185 () Bool)

(declare-fun e!4505551 () Bool)

(declare-fun call!693809 () Bool)

(assert (=> b!7567185 (= e!4505551 call!693809)))

(declare-fun b!7567186 () Bool)

(declare-fun e!4505550 () Bool)

(declare-fun e!4505552 () Bool)

(assert (=> b!7567186 (= e!4505550 e!4505552)))

(declare-fun c!1396373 () Bool)

(assert (=> b!7567186 (= c!1396373 ((_ is Union!19985) r!24333))))

(declare-fun b!7567187 () Bool)

(declare-fun e!4505553 () Bool)

(assert (=> b!7567187 (= e!4505552 e!4505553)))

(declare-fun res!3031704 () Bool)

(assert (=> b!7567187 (= res!3031704 call!693809)))

(assert (=> b!7567187 (=> (not res!3031704) (not e!4505553))))

(declare-fun b!7567188 () Bool)

(declare-fun call!693808 () Bool)

(assert (=> b!7567188 (= e!4505553 call!693808)))

(declare-fun d!2316776 () Bool)

(declare-fun lt!2650588 () Bool)

(declare-datatypes ((Option!17269 0))(
  ( (None!17268) (Some!17268 (v!54403 List!72868)) )
))
(declare-fun isEmpty!41424 (Option!17269) Bool)

(declare-fun getLanguageWitness!1112 (Regex!19985) Option!17269)

(assert (=> d!2316776 (= lt!2650588 (isEmpty!41424 (getLanguageWitness!1112 r!24333)))))

(declare-fun e!4505555 () Bool)

(assert (=> d!2316776 (= lt!2650588 e!4505555)))

(declare-fun res!3031707 () Bool)

(assert (=> d!2316776 (=> (not res!3031707) (not e!4505555))))

(assert (=> d!2316776 (= res!3031707 (not ((_ is EmptyExpr!19985) r!24333)))))

(assert (=> d!2316776 (= (lostCauseFct!471 r!24333) lt!2650588)))

(declare-fun bm!693803 () Bool)

(assert (=> bm!693803 (= call!693809 (lostCause!1773 (ite c!1396373 (regOne!40483 r!24333) (regTwo!40482 r!24333))))))

(declare-fun b!7567189 () Bool)

(declare-fun e!4505554 () Bool)

(assert (=> b!7567189 (= e!4505555 e!4505554)))

(declare-fun res!3031706 () Bool)

(assert (=> b!7567189 (=> res!3031706 e!4505554)))

(assert (=> b!7567189 (= res!3031706 ((_ is EmptyLang!19985) r!24333))))

(declare-fun b!7567190 () Bool)

(assert (=> b!7567190 (= e!4505552 e!4505551)))

(declare-fun res!3031705 () Bool)

(assert (=> b!7567190 (= res!3031705 call!693808)))

(assert (=> b!7567190 (=> res!3031705 e!4505551)))

(declare-fun b!7567191 () Bool)

(assert (=> b!7567191 (= e!4505554 e!4505550)))

(declare-fun res!3031708 () Bool)

(assert (=> b!7567191 (=> (not res!3031708) (not e!4505550))))

(assert (=> b!7567191 (= res!3031708 (and (not ((_ is ElementMatch!19985) r!24333)) (not ((_ is Star!19985) r!24333))))))

(declare-fun bm!693804 () Bool)

(assert (=> bm!693804 (= call!693808 (lostCause!1773 (ite c!1396373 (regTwo!40483 r!24333) (regOne!40482 r!24333))))))

(assert (= (and d!2316776 res!3031707) b!7567189))

(assert (= (and b!7567189 (not res!3031706)) b!7567191))

(assert (= (and b!7567191 res!3031708) b!7567186))

(assert (= (and b!7567186 c!1396373) b!7567187))

(assert (= (and b!7567186 (not c!1396373)) b!7567190))

(assert (= (and b!7567187 res!3031704) b!7567188))

(assert (= (and b!7567190 (not res!3031705)) b!7567185))

(assert (= (or b!7567187 b!7567185) bm!693803))

(assert (= (or b!7567188 b!7567190) bm!693804))

(declare-fun m!8129716 () Bool)

(assert (=> d!2316776 m!8129716))

(assert (=> d!2316776 m!8129716))

(declare-fun m!8129718 () Bool)

(assert (=> d!2316776 m!8129718))

(declare-fun m!8129720 () Bool)

(assert (=> bm!693803 m!8129720))

(declare-fun m!8129722 () Bool)

(assert (=> bm!693804 m!8129722))

(assert (=> d!2316398 d!2316776))

(declare-fun d!2316778 () Bool)

(declare-fun lt!2650589 () Int)

(assert (=> d!2316778 (>= lt!2650589 0)))

(declare-fun e!4505556 () Int)

(assert (=> d!2316778 (= lt!2650589 e!4505556)))

(declare-fun c!1396374 () Bool)

(assert (=> d!2316778 (= c!1396374 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2316778 (= (size!42481 (t!387601 testedP!423)) lt!2650589)))

(declare-fun b!7567192 () Bool)

(assert (=> b!7567192 (= e!4505556 0)))

(declare-fun b!7567193 () Bool)

(assert (=> b!7567193 (= e!4505556 (+ 1 (size!42481 (t!387601 (t!387601 testedP!423)))))))

(assert (= (and d!2316778 c!1396374) b!7567192))

(assert (= (and d!2316778 (not c!1396374)) b!7567193))

(declare-fun m!8129724 () Bool)

(assert (=> b!7567193 m!8129724))

(assert (=> b!7566665 d!2316778))

(declare-fun b!7567194 () Bool)

(declare-fun e!4505557 () Bool)

(declare-fun e!4505559 () Bool)

(assert (=> b!7567194 (= e!4505557 e!4505559)))

(declare-fun res!3031715 () Bool)

(assert (=> b!7567194 (=> res!3031715 e!4505559)))

(declare-fun call!693810 () Bool)

(assert (=> b!7567194 (= res!3031715 call!693810)))

(declare-fun d!2316780 () Bool)

(declare-fun e!4505563 () Bool)

(assert (=> d!2316780 e!4505563))

(declare-fun c!1396376 () Bool)

(assert (=> d!2316780 (= c!1396376 ((_ is EmptyExpr!19985) (derivativeStep!5763 baseR!101 (head!15563 knownP!30))))))

(declare-fun lt!2650590 () Bool)

(declare-fun e!4505558 () Bool)

(assert (=> d!2316780 (= lt!2650590 e!4505558)))

(declare-fun c!1396375 () Bool)

(assert (=> d!2316780 (= c!1396375 (isEmpty!41423 (tail!15103 knownP!30)))))

(assert (=> d!2316780 (validRegex!10413 (derivativeStep!5763 baseR!101 (head!15563 knownP!30)))))

(assert (=> d!2316780 (= (matchR!9587 (derivativeStep!5763 baseR!101 (head!15563 knownP!30)) (tail!15103 knownP!30)) lt!2650590)))

(declare-fun b!7567195 () Bool)

(declare-fun res!3031710 () Bool)

(assert (=> b!7567195 (=> res!3031710 e!4505559)))

(assert (=> b!7567195 (= res!3031710 (not (isEmpty!41423 (tail!15103 (tail!15103 knownP!30)))))))

(declare-fun bm!693805 () Bool)

(assert (=> bm!693805 (= call!693810 (isEmpty!41423 (tail!15103 knownP!30)))))

(declare-fun b!7567196 () Bool)

(assert (=> b!7567196 (= e!4505558 (matchR!9587 (derivativeStep!5763 (derivativeStep!5763 baseR!101 (head!15563 knownP!30)) (head!15563 (tail!15103 knownP!30))) (tail!15103 (tail!15103 knownP!30))))))

(declare-fun b!7567197 () Bool)

(declare-fun e!4505560 () Bool)

(assert (=> b!7567197 (= e!4505563 e!4505560)))

(declare-fun c!1396377 () Bool)

(assert (=> b!7567197 (= c!1396377 ((_ is EmptyLang!19985) (derivativeStep!5763 baseR!101 (head!15563 knownP!30))))))

(declare-fun b!7567198 () Bool)

(assert (=> b!7567198 (= e!4505560 (not lt!2650590))))

(declare-fun b!7567199 () Bool)

(assert (=> b!7567199 (= e!4505563 (= lt!2650590 call!693810))))

(declare-fun b!7567200 () Bool)

(declare-fun res!3031712 () Bool)

(declare-fun e!4505562 () Bool)

(assert (=> b!7567200 (=> (not res!3031712) (not e!4505562))))

(assert (=> b!7567200 (= res!3031712 (isEmpty!41423 (tail!15103 (tail!15103 knownP!30))))))

(declare-fun b!7567201 () Bool)

(declare-fun res!3031709 () Bool)

(assert (=> b!7567201 (=> (not res!3031709) (not e!4505562))))

(assert (=> b!7567201 (= res!3031709 (not call!693810))))

(declare-fun b!7567202 () Bool)

(declare-fun res!3031716 () Bool)

(declare-fun e!4505561 () Bool)

(assert (=> b!7567202 (=> res!3031716 e!4505561)))

(assert (=> b!7567202 (= res!3031716 (not ((_ is ElementMatch!19985) (derivativeStep!5763 baseR!101 (head!15563 knownP!30)))))))

(assert (=> b!7567202 (= e!4505560 e!4505561)))

(declare-fun b!7567203 () Bool)

(assert (=> b!7567203 (= e!4505559 (not (= (head!15563 (tail!15103 knownP!30)) (c!1396094 (derivativeStep!5763 baseR!101 (head!15563 knownP!30))))))))

(declare-fun b!7567204 () Bool)

(assert (=> b!7567204 (= e!4505558 (nullable!8719 (derivativeStep!5763 baseR!101 (head!15563 knownP!30))))))

(declare-fun b!7567205 () Bool)

(declare-fun res!3031714 () Bool)

(assert (=> b!7567205 (=> res!3031714 e!4505561)))

(assert (=> b!7567205 (= res!3031714 e!4505562)))

(declare-fun res!3031711 () Bool)

(assert (=> b!7567205 (=> (not res!3031711) (not e!4505562))))

(assert (=> b!7567205 (= res!3031711 lt!2650590)))

(declare-fun b!7567206 () Bool)

(assert (=> b!7567206 (= e!4505562 (= (head!15563 (tail!15103 knownP!30)) (c!1396094 (derivativeStep!5763 baseR!101 (head!15563 knownP!30)))))))

(declare-fun b!7567207 () Bool)

(assert (=> b!7567207 (= e!4505561 e!4505557)))

(declare-fun res!3031713 () Bool)

(assert (=> b!7567207 (=> (not res!3031713) (not e!4505557))))

(assert (=> b!7567207 (= res!3031713 (not lt!2650590))))

(assert (= (and d!2316780 c!1396375) b!7567204))

(assert (= (and d!2316780 (not c!1396375)) b!7567196))

(assert (= (and d!2316780 c!1396376) b!7567199))

(assert (= (and d!2316780 (not c!1396376)) b!7567197))

(assert (= (and b!7567197 c!1396377) b!7567198))

(assert (= (and b!7567197 (not c!1396377)) b!7567202))

(assert (= (and b!7567202 (not res!3031716)) b!7567205))

(assert (= (and b!7567205 res!3031711) b!7567201))

(assert (= (and b!7567201 res!3031709) b!7567200))

(assert (= (and b!7567200 res!3031712) b!7567206))

(assert (= (and b!7567205 (not res!3031714)) b!7567207))

(assert (= (and b!7567207 res!3031713) b!7567194))

(assert (= (and b!7567194 (not res!3031715)) b!7567195))

(assert (= (and b!7567195 (not res!3031710)) b!7567203))

(assert (= (or b!7567199 b!7567194 b!7567201) bm!693805))

(assert (=> b!7567195 m!8128908))

(assert (=> b!7567195 m!8129294))

(assert (=> b!7567195 m!8129294))

(declare-fun m!8129726 () Bool)

(assert (=> b!7567195 m!8129726))

(assert (=> b!7567204 m!8129198))

(declare-fun m!8129728 () Bool)

(assert (=> b!7567204 m!8129728))

(assert (=> b!7567196 m!8128908))

(assert (=> b!7567196 m!8129300))

(assert (=> b!7567196 m!8129198))

(assert (=> b!7567196 m!8129300))

(declare-fun m!8129730 () Bool)

(assert (=> b!7567196 m!8129730))

(assert (=> b!7567196 m!8128908))

(assert (=> b!7567196 m!8129294))

(assert (=> b!7567196 m!8129730))

(assert (=> b!7567196 m!8129294))

(declare-fun m!8129732 () Bool)

(assert (=> b!7567196 m!8129732))

(assert (=> b!7567203 m!8128908))

(assert (=> b!7567203 m!8129300))

(assert (=> d!2316780 m!8128908))

(assert (=> d!2316780 m!8129194))

(assert (=> d!2316780 m!8129198))

(declare-fun m!8129734 () Bool)

(assert (=> d!2316780 m!8129734))

(assert (=> b!7567206 m!8128908))

(assert (=> b!7567206 m!8129300))

(assert (=> b!7567200 m!8128908))

(assert (=> b!7567200 m!8129294))

(assert (=> b!7567200 m!8129294))

(assert (=> b!7567200 m!8129726))

(assert (=> bm!693805 m!8128908))

(assert (=> bm!693805 m!8129194))

(assert (=> b!7566781 d!2316780))

(declare-fun bm!693806 () Bool)

(declare-fun call!693813 () Regex!19985)

(declare-fun call!693814 () Regex!19985)

(assert (=> bm!693806 (= call!693813 call!693814)))

(declare-fun bm!693807 () Bool)

(declare-fun call!693811 () Regex!19985)

(assert (=> bm!693807 (= call!693811 call!693813)))

(declare-fun bm!693808 () Bool)

(declare-fun c!1396382 () Bool)

(declare-fun call!693812 () Regex!19985)

(assert (=> bm!693808 (= call!693812 (derivativeStep!5763 (ite c!1396382 (regOne!40483 baseR!101) (regTwo!40482 baseR!101)) (head!15563 knownP!30)))))

(declare-fun bm!693809 () Bool)

(declare-fun c!1396378 () Bool)

(assert (=> bm!693809 (= call!693814 (derivativeStep!5763 (ite c!1396382 (regTwo!40483 baseR!101) (ite c!1396378 (reg!20314 baseR!101) (regOne!40482 baseR!101))) (head!15563 knownP!30)))))

(declare-fun b!7567208 () Bool)

(assert (=> b!7567208 (= c!1396382 ((_ is Union!19985) baseR!101))))

(declare-fun e!4505564 () Regex!19985)

(declare-fun e!4505568 () Regex!19985)

(assert (=> b!7567208 (= e!4505564 e!4505568)))

(declare-fun e!4505566 () Regex!19985)

(declare-fun b!7567209 () Bool)

(assert (=> b!7567209 (= e!4505566 (Union!19985 (Concat!28830 call!693811 (regTwo!40482 baseR!101)) call!693812))))

(declare-fun b!7567210 () Bool)

(declare-fun e!4505565 () Regex!19985)

(assert (=> b!7567210 (= e!4505565 EmptyLang!19985)))

(declare-fun d!2316782 () Bool)

(declare-fun lt!2650591 () Regex!19985)

(assert (=> d!2316782 (validRegex!10413 lt!2650591)))

(assert (=> d!2316782 (= lt!2650591 e!4505565)))

(declare-fun c!1396379 () Bool)

(assert (=> d!2316782 (= c!1396379 (or ((_ is EmptyExpr!19985) baseR!101) ((_ is EmptyLang!19985) baseR!101)))))

(assert (=> d!2316782 (validRegex!10413 baseR!101)))

(assert (=> d!2316782 (= (derivativeStep!5763 baseR!101 (head!15563 knownP!30)) lt!2650591)))

(declare-fun b!7567211 () Bool)

(assert (=> b!7567211 (= e!4505564 (ite (= (head!15563 knownP!30) (c!1396094 baseR!101)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567212 () Bool)

(assert (=> b!7567212 (= e!4505568 (Union!19985 call!693812 call!693814))))

(declare-fun b!7567213 () Bool)

(assert (=> b!7567213 (= e!4505566 (Union!19985 (Concat!28830 call!693811 (regTwo!40482 baseR!101)) EmptyLang!19985))))

(declare-fun b!7567214 () Bool)

(declare-fun e!4505567 () Regex!19985)

(assert (=> b!7567214 (= e!4505567 (Concat!28830 call!693813 baseR!101))))

(declare-fun b!7567215 () Bool)

(assert (=> b!7567215 (= e!4505565 e!4505564)))

(declare-fun c!1396381 () Bool)

(assert (=> b!7567215 (= c!1396381 ((_ is ElementMatch!19985) baseR!101))))

(declare-fun b!7567216 () Bool)

(declare-fun c!1396380 () Bool)

(assert (=> b!7567216 (= c!1396380 (nullable!8719 (regOne!40482 baseR!101)))))

(assert (=> b!7567216 (= e!4505567 e!4505566)))

(declare-fun b!7567217 () Bool)

(assert (=> b!7567217 (= e!4505568 e!4505567)))

(assert (=> b!7567217 (= c!1396378 ((_ is Star!19985) baseR!101))))

(assert (= (and d!2316782 c!1396379) b!7567210))

(assert (= (and d!2316782 (not c!1396379)) b!7567215))

(assert (= (and b!7567215 c!1396381) b!7567211))

(assert (= (and b!7567215 (not c!1396381)) b!7567208))

(assert (= (and b!7567208 c!1396382) b!7567212))

(assert (= (and b!7567208 (not c!1396382)) b!7567217))

(assert (= (and b!7567217 c!1396378) b!7567214))

(assert (= (and b!7567217 (not c!1396378)) b!7567216))

(assert (= (and b!7567216 c!1396380) b!7567209))

(assert (= (and b!7567216 (not c!1396380)) b!7567213))

(assert (= (or b!7567209 b!7567213) bm!693807))

(assert (= (or b!7567214 bm!693807) bm!693806))

(assert (= (or b!7567212 bm!693806) bm!693809))

(assert (= (or b!7567212 b!7567209) bm!693808))

(assert (=> bm!693808 m!8128918))

(declare-fun m!8129736 () Bool)

(assert (=> bm!693808 m!8129736))

(assert (=> bm!693809 m!8128918))

(declare-fun m!8129738 () Bool)

(assert (=> bm!693809 m!8129738))

(declare-fun m!8129740 () Bool)

(assert (=> d!2316782 m!8129740))

(assert (=> d!2316782 m!8128518))

(assert (=> b!7567216 m!8129580))

(assert (=> b!7566781 d!2316782))

(assert (=> b!7566781 d!2316630))

(assert (=> b!7566781 d!2316598))

(assert (=> b!7566574 d!2316584))

(assert (=> b!7566574 d!2316534))

(declare-fun b!7567220 () Bool)

(declare-fun res!3031718 () Bool)

(declare-fun e!4505569 () Bool)

(assert (=> b!7567220 (=> (not res!3031718) (not e!4505569))))

(declare-fun lt!2650592 () List!72868)

(assert (=> b!7567220 (= res!3031718 (= (size!42481 lt!2650592) (+ (size!42481 (_1!37735 lt!2650232)) (size!42481 (_2!37735 lt!2650232)))))))

(declare-fun d!2316784 () Bool)

(assert (=> d!2316784 e!4505569))

(declare-fun res!3031717 () Bool)

(assert (=> d!2316784 (=> (not res!3031717) (not e!4505569))))

(assert (=> d!2316784 (= res!3031717 (= (content!15406 lt!2650592) ((_ map or) (content!15406 (_1!37735 lt!2650232)) (content!15406 (_2!37735 lt!2650232)))))))

(declare-fun e!4505570 () List!72868)

(assert (=> d!2316784 (= lt!2650592 e!4505570)))

(declare-fun c!1396383 () Bool)

(assert (=> d!2316784 (= c!1396383 ((_ is Nil!72744) (_1!37735 lt!2650232)))))

(assert (=> d!2316784 (= (++!17489 (_1!37735 lt!2650232) (_2!37735 lt!2650232)) lt!2650592)))

(declare-fun b!7567221 () Bool)

(assert (=> b!7567221 (= e!4505569 (or (not (= (_2!37735 lt!2650232) Nil!72744)) (= lt!2650592 (_1!37735 lt!2650232))))))

(declare-fun b!7567219 () Bool)

(assert (=> b!7567219 (= e!4505570 (Cons!72744 (h!79192 (_1!37735 lt!2650232)) (++!17489 (t!387601 (_1!37735 lt!2650232)) (_2!37735 lt!2650232))))))

(declare-fun b!7567218 () Bool)

(assert (=> b!7567218 (= e!4505570 (_2!37735 lt!2650232))))

(assert (= (and d!2316784 c!1396383) b!7567218))

(assert (= (and d!2316784 (not c!1396383)) b!7567219))

(assert (= (and d!2316784 res!3031717) b!7567220))

(assert (= (and b!7567220 res!3031718) b!7567221))

(declare-fun m!8129742 () Bool)

(assert (=> b!7567220 m!8129742))

(assert (=> b!7567220 m!8128778))

(declare-fun m!8129744 () Bool)

(assert (=> b!7567220 m!8129744))

(declare-fun m!8129746 () Bool)

(assert (=> d!2316784 m!8129746))

(declare-fun m!8129748 () Bool)

(assert (=> d!2316784 m!8129748))

(declare-fun m!8129750 () Bool)

(assert (=> d!2316784 m!8129750))

(declare-fun m!8129752 () Bool)

(assert (=> b!7567219 m!8129752))

(assert (=> d!2316410 d!2316784))

(assert (=> d!2316410 d!2316398))

(assert (=> d!2316410 d!2316556))

(assert (=> d!2316410 d!2316582))

(declare-fun d!2316786 () Bool)

(assert (=> d!2316786 (isPrefix!6191 testedP!423 (++!17489 testedP!423 lt!2650115))))

(declare-fun lt!2650595 () Unit!166904)

(declare-fun choose!58531 (List!72868 List!72868) Unit!166904)

(assert (=> d!2316786 (= lt!2650595 (choose!58531 testedP!423 lt!2650115))))

(assert (=> d!2316786 (= (lemmaConcatTwoListThenFirstIsPrefix!3744 testedP!423 lt!2650115) lt!2650595)))

(declare-fun bs!1940504 () Bool)

(assert (= bs!1940504 d!2316786))

(assert (=> bs!1940504 m!8128494))

(assert (=> bs!1940504 m!8128494))

(assert (=> bs!1940504 m!8128788))

(declare-fun m!8129754 () Bool)

(assert (=> bs!1940504 m!8129754))

(assert (=> d!2316410 d!2316786))

(assert (=> d!2316410 d!2316496))

(declare-fun b!7567225 () Bool)

(declare-fun e!4505572 () Bool)

(assert (=> b!7567225 (= e!4505572 (>= (size!42481 (++!17489 testedP!423 lt!2650115)) (size!42481 testedP!423)))))

(declare-fun b!7567222 () Bool)

(declare-fun e!4505571 () Bool)

(declare-fun e!4505573 () Bool)

(assert (=> b!7567222 (= e!4505571 e!4505573)))

(declare-fun res!3031719 () Bool)

(assert (=> b!7567222 (=> (not res!3031719) (not e!4505573))))

(assert (=> b!7567222 (= res!3031719 (not ((_ is Nil!72744) (++!17489 testedP!423 lt!2650115))))))

(declare-fun d!2316788 () Bool)

(assert (=> d!2316788 e!4505572))

(declare-fun res!3031721 () Bool)

(assert (=> d!2316788 (=> res!3031721 e!4505572)))

(declare-fun lt!2650596 () Bool)

(assert (=> d!2316788 (= res!3031721 (not lt!2650596))))

(assert (=> d!2316788 (= lt!2650596 e!4505571)))

(declare-fun res!3031722 () Bool)

(assert (=> d!2316788 (=> res!3031722 e!4505571)))

(assert (=> d!2316788 (= res!3031722 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316788 (= (isPrefix!6191 testedP!423 (++!17489 testedP!423 lt!2650115)) lt!2650596)))

(declare-fun b!7567224 () Bool)

(assert (=> b!7567224 (= e!4505573 (isPrefix!6191 (tail!15103 testedP!423) (tail!15103 (++!17489 testedP!423 lt!2650115))))))

(declare-fun b!7567223 () Bool)

(declare-fun res!3031720 () Bool)

(assert (=> b!7567223 (=> (not res!3031720) (not e!4505573))))

(assert (=> b!7567223 (= res!3031720 (= (head!15563 testedP!423) (head!15563 (++!17489 testedP!423 lt!2650115))))))

(assert (= (and d!2316788 (not res!3031722)) b!7567222))

(assert (= (and b!7567222 res!3031719) b!7567223))

(assert (= (and b!7567223 res!3031720) b!7567224))

(assert (= (and d!2316788 (not res!3031721)) b!7567225))

(assert (=> b!7567225 m!8128494))

(declare-fun m!8129756 () Bool)

(assert (=> b!7567225 m!8129756))

(assert (=> b!7567225 m!8128472))

(assert (=> b!7567224 m!8128912))

(assert (=> b!7567224 m!8128494))

(declare-fun m!8129758 () Bool)

(assert (=> b!7567224 m!8129758))

(assert (=> b!7567224 m!8128912))

(assert (=> b!7567224 m!8129758))

(declare-fun m!8129760 () Bool)

(assert (=> b!7567224 m!8129760))

(assert (=> b!7567223 m!8128916))

(assert (=> b!7567223 m!8128494))

(declare-fun m!8129762 () Bool)

(assert (=> b!7567223 m!8129762))

(assert (=> d!2316410 d!2316788))

(declare-fun d!2316790 () Bool)

(assert (=> d!2316790 (= lt!2650115 lt!2650248)))

(declare-fun lt!2650597 () Unit!166904)

(assert (=> d!2316790 (= lt!2650597 (choose!58516 testedP!423 lt!2650115 testedP!423 lt!2650248 input!7874))))

(assert (=> d!2316790 (isPrefix!6191 testedP!423 input!7874)))

(assert (=> d!2316790 (= (lemmaSamePrefixThenSameSuffix!2891 testedP!423 lt!2650115 testedP!423 lt!2650248 input!7874) lt!2650597)))

(declare-fun bs!1940505 () Bool)

(assert (= bs!1940505 d!2316790))

(declare-fun m!8129764 () Bool)

(assert (=> bs!1940505 m!8129764))

(assert (=> bs!1940505 m!8128490))

(assert (=> d!2316410 d!2316790))

(declare-fun d!2316792 () Bool)

(declare-fun lt!2650598 () Int)

(assert (=> d!2316792 (>= lt!2650598 0)))

(declare-fun e!4505574 () Int)

(assert (=> d!2316792 (= lt!2650598 e!4505574)))

(declare-fun c!1396384 () Bool)

(assert (=> d!2316792 (= c!1396384 ((_ is Nil!72744) (_1!37735 lt!2650232)))))

(assert (=> d!2316792 (= (size!42481 (_1!37735 lt!2650232)) lt!2650598)))

(declare-fun b!7567226 () Bool)

(assert (=> b!7567226 (= e!4505574 0)))

(declare-fun b!7567227 () Bool)

(assert (=> b!7567227 (= e!4505574 (+ 1 (size!42481 (t!387601 (_1!37735 lt!2650232)))))))

(assert (= (and d!2316792 c!1396384) b!7567226))

(assert (= (and d!2316792 (not c!1396384)) b!7567227))

(declare-fun m!8129766 () Bool)

(assert (=> b!7567227 m!8129766))

(assert (=> b!7566419 d!2316792))

(assert (=> b!7566419 d!2316534))

(declare-fun d!2316794 () Bool)

(declare-fun c!1396385 () Bool)

(assert (=> d!2316794 (= c!1396385 ((_ is Nil!72744) lt!2650397))))

(declare-fun e!4505575 () (InoxSet C!40296))

(assert (=> d!2316794 (= (content!15406 lt!2650397) e!4505575)))

(declare-fun b!7567228 () Bool)

(assert (=> b!7567228 (= e!4505575 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567229 () Bool)

(assert (=> b!7567229 (= e!4505575 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650397) true) (content!15406 (t!387601 lt!2650397))))))

(assert (= (and d!2316794 c!1396385) b!7567228))

(assert (= (and d!2316794 (not c!1396385)) b!7567229))

(declare-fun m!8129768 () Bool)

(assert (=> b!7567229 m!8129768))

(declare-fun m!8129770 () Bool)

(assert (=> b!7567229 m!8129770))

(assert (=> d!2316504 d!2316794))

(assert (=> d!2316504 d!2316660))

(declare-fun d!2316796 () Bool)

(declare-fun c!1396386 () Bool)

(assert (=> d!2316796 (= c!1396386 ((_ is Nil!72744) lt!2650099))))

(declare-fun e!4505576 () (InoxSet C!40296))

(assert (=> d!2316796 (= (content!15406 lt!2650099) e!4505576)))

(declare-fun b!7567230 () Bool)

(assert (=> b!7567230 (= e!4505576 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567231 () Bool)

(assert (=> b!7567231 (= e!4505576 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650099) true) (content!15406 (t!387601 lt!2650099))))))

(assert (= (and d!2316796 c!1396386) b!7567230))

(assert (= (and d!2316796 (not c!1396386)) b!7567231))

(declare-fun m!8129772 () Bool)

(assert (=> b!7567231 m!8129772))

(declare-fun m!8129774 () Bool)

(assert (=> b!7567231 m!8129774))

(assert (=> d!2316504 d!2316796))

(declare-fun d!2316798 () Bool)

(declare-fun c!1396387 () Bool)

(assert (=> d!2316798 (= c!1396387 ((_ is Nil!72744) lt!2650439))))

(declare-fun e!4505577 () (InoxSet C!40296))

(assert (=> d!2316798 (= (content!15406 lt!2650439) e!4505577)))

(declare-fun b!7567232 () Bool)

(assert (=> b!7567232 (= e!4505577 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567233 () Bool)

(assert (=> b!7567233 (= e!4505577 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650439) true) (content!15406 (t!387601 lt!2650439))))))

(assert (= (and d!2316798 c!1396387) b!7567232))

(assert (= (and d!2316798 (not c!1396387)) b!7567233))

(declare-fun m!8129776 () Bool)

(assert (=> b!7567233 m!8129776))

(declare-fun m!8129778 () Bool)

(assert (=> b!7567233 m!8129778))

(assert (=> d!2316542 d!2316798))

(assert (=> d!2316542 d!2316660))

(assert (=> d!2316542 d!2316710))

(declare-fun d!2316800 () Bool)

(assert (=> d!2316800 (= (isEmpty!41423 (_1!37735 lt!2650232)) ((_ is Nil!72744) (_1!37735 lt!2650232)))))

(assert (=> b!7566429 d!2316800))

(declare-fun c!1396389 () Bool)

(declare-fun call!693816 () Bool)

(declare-fun bm!693810 () Bool)

(assert (=> bm!693810 (= call!693816 (validRegex!10413 (ite c!1396389 (regOne!40483 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))) (regOne!40482 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))))

(declare-fun b!7567234 () Bool)

(declare-fun e!4505584 () Bool)

(declare-fun e!4505578 () Bool)

(assert (=> b!7567234 (= e!4505584 e!4505578)))

(assert (=> b!7567234 (= c!1396389 ((_ is Union!19985) (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))

(declare-fun b!7567235 () Bool)

(declare-fun e!4505580 () Bool)

(assert (=> b!7567235 (= e!4505584 e!4505580)))

(declare-fun res!3031725 () Bool)

(assert (=> b!7567235 (= res!3031725 (not (nullable!8719 (reg!20314 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))))

(assert (=> b!7567235 (=> (not res!3031725) (not e!4505580))))

(declare-fun b!7567236 () Bool)

(declare-fun res!3031724 () Bool)

(declare-fun e!4505583 () Bool)

(assert (=> b!7567236 (=> res!3031724 e!4505583)))

(assert (=> b!7567236 (= res!3031724 (not ((_ is Concat!28830) (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101)))))))

(assert (=> b!7567236 (= e!4505578 e!4505583)))

(declare-fun b!7567237 () Bool)

(declare-fun e!4505582 () Bool)

(assert (=> b!7567237 (= e!4505583 e!4505582)))

(declare-fun res!3031726 () Bool)

(assert (=> b!7567237 (=> (not res!3031726) (not e!4505582))))

(assert (=> b!7567237 (= res!3031726 call!693816)))

(declare-fun b!7567238 () Bool)

(declare-fun call!693815 () Bool)

(assert (=> b!7567238 (= e!4505582 call!693815)))

(declare-fun b!7567239 () Bool)

(declare-fun e!4505581 () Bool)

(assert (=> b!7567239 (= e!4505581 call!693815)))

(declare-fun b!7567240 () Bool)

(declare-fun call!693817 () Bool)

(assert (=> b!7567240 (= e!4505580 call!693817)))

(declare-fun b!7567241 () Bool)

(declare-fun res!3031727 () Bool)

(assert (=> b!7567241 (=> (not res!3031727) (not e!4505581))))

(assert (=> b!7567241 (= res!3031727 call!693816)))

(assert (=> b!7567241 (= e!4505578 e!4505581)))

(declare-fun b!7567242 () Bool)

(declare-fun e!4505579 () Bool)

(assert (=> b!7567242 (= e!4505579 e!4505584)))

(declare-fun c!1396388 () Bool)

(assert (=> b!7567242 (= c!1396388 ((_ is Star!19985) (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))

(declare-fun bm!693811 () Bool)

(assert (=> bm!693811 (= call!693817 (validRegex!10413 (ite c!1396388 (reg!20314 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))) (ite c!1396389 (regTwo!40483 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))) (regTwo!40482 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101)))))))))

(declare-fun bm!693812 () Bool)

(assert (=> bm!693812 (= call!693815 call!693817)))

(declare-fun d!2316802 () Bool)

(declare-fun res!3031723 () Bool)

(assert (=> d!2316802 (=> res!3031723 e!4505579)))

(assert (=> d!2316802 (= res!3031723 ((_ is ElementMatch!19985) (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))))))

(assert (=> d!2316802 (= (validRegex!10413 (ite c!1396223 (regOne!40483 baseR!101) (regOne!40482 baseR!101))) e!4505579)))

(assert (= (and d!2316802 (not res!3031723)) b!7567242))

(assert (= (and b!7567242 c!1396388) b!7567235))

(assert (= (and b!7567242 (not c!1396388)) b!7567234))

(assert (= (and b!7567235 res!3031725) b!7567240))

(assert (= (and b!7567234 c!1396389) b!7567241))

(assert (= (and b!7567234 (not c!1396389)) b!7567236))

(assert (= (and b!7567241 res!3031727) b!7567239))

(assert (= (and b!7567236 (not res!3031724)) b!7567237))

(assert (= (and b!7567237 res!3031726) b!7567238))

(assert (= (or b!7567241 b!7567237) bm!693810))

(assert (= (or b!7567239 b!7567238) bm!693812))

(assert (= (or b!7567240 bm!693812) bm!693811))

(declare-fun m!8129780 () Bool)

(assert (=> bm!693810 m!8129780))

(declare-fun m!8129782 () Bool)

(assert (=> b!7567235 m!8129782))

(declare-fun m!8129784 () Bool)

(assert (=> bm!693811 m!8129784))

(assert (=> bm!693720 d!2316802))

(declare-fun d!2316804 () Bool)

(assert (=> d!2316804 (= (nullable!8719 (regOne!40482 r!24333)) (nullableFct!3480 (regOne!40482 r!24333)))))

(declare-fun bs!1940506 () Bool)

(assert (= bs!1940506 d!2316804))

(declare-fun m!8129786 () Bool)

(assert (=> bs!1940506 m!8129786))

(assert (=> b!7566710 d!2316804))

(declare-fun d!2316806 () Bool)

(declare-fun lt!2650599 () Int)

(assert (=> d!2316806 (>= lt!2650599 0)))

(declare-fun e!4505585 () Int)

(assert (=> d!2316806 (= lt!2650599 e!4505585)))

(declare-fun c!1396390 () Bool)

(assert (=> d!2316806 (= c!1396390 ((_ is Nil!72744) (t!387601 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110)))))))

(assert (=> d!2316806 (= (size!42481 (t!387601 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110)))) lt!2650599)))

(declare-fun b!7567243 () Bool)

(assert (=> b!7567243 (= e!4505585 0)))

(declare-fun b!7567244 () Bool)

(assert (=> b!7567244 (= e!4505585 (+ 1 (size!42481 (t!387601 (t!387601 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 lt!2650110)))))))))

(assert (= (and d!2316806 c!1396390) b!7567243))

(assert (= (and d!2316806 (not c!1396390)) b!7567244))

(declare-fun m!8129788 () Bool)

(assert (=> b!7567244 m!8129788))

(assert (=> b!7566440 d!2316806))

(declare-fun d!2316810 () Bool)

(declare-fun lt!2650600 () Int)

(assert (=> d!2316810 (>= lt!2650600 0)))

(declare-fun e!4505586 () Int)

(assert (=> d!2316810 (= lt!2650600 e!4505586)))

(declare-fun c!1396391 () Bool)

(assert (=> d!2316810 (= c!1396391 ((_ is Nil!72744) lt!2650396))))

(assert (=> d!2316810 (= (size!42481 lt!2650396) lt!2650600)))

(declare-fun b!7567245 () Bool)

(assert (=> b!7567245 (= e!4505586 0)))

(declare-fun b!7567246 () Bool)

(assert (=> b!7567246 (= e!4505586 (+ 1 (size!42481 (t!387601 lt!2650396))))))

(assert (= (and d!2316810 c!1396391) b!7567245))

(assert (= (and d!2316810 (not c!1396391)) b!7567246))

(declare-fun m!8129790 () Bool)

(assert (=> b!7567246 m!8129790))

(assert (=> b!7566595 d!2316810))

(declare-fun d!2316812 () Bool)

(declare-fun lt!2650602 () Int)

(assert (=> d!2316812 (>= lt!2650602 0)))

(declare-fun e!4505590 () Int)

(assert (=> d!2316812 (= lt!2650602 e!4505590)))

(declare-fun c!1396392 () Bool)

(assert (=> d!2316812 (= c!1396392 ((_ is Nil!72744) lt!2650108))))

(assert (=> d!2316812 (= (size!42481 lt!2650108) lt!2650602)))

(declare-fun b!7567251 () Bool)

(assert (=> b!7567251 (= e!4505590 0)))

(declare-fun b!7567252 () Bool)

(assert (=> b!7567252 (= e!4505590 (+ 1 (size!42481 (t!387601 lt!2650108))))))

(assert (= (and d!2316812 c!1396392) b!7567251))

(assert (= (and d!2316812 (not c!1396392)) b!7567252))

(declare-fun m!8129792 () Bool)

(assert (=> b!7567252 m!8129792))

(assert (=> b!7566595 d!2316812))

(assert (=> b!7566595 d!2316762))

(declare-fun b!7567255 () Bool)

(declare-fun res!3031733 () Bool)

(declare-fun e!4505591 () Bool)

(assert (=> b!7567255 (=> (not res!3031733) (not e!4505591))))

(declare-fun lt!2650603 () List!72868)

(assert (=> b!7567255 (= res!3031733 (= (size!42481 lt!2650603) (+ (size!42481 (t!387601 testedP!423)) (size!42481 lt!2650098))))))

(declare-fun d!2316814 () Bool)

(assert (=> d!2316814 e!4505591))

(declare-fun res!3031732 () Bool)

(assert (=> d!2316814 (=> (not res!3031732) (not e!4505591))))

(assert (=> d!2316814 (= res!3031732 (= (content!15406 lt!2650603) ((_ map or) (content!15406 (t!387601 testedP!423)) (content!15406 lt!2650098))))))

(declare-fun e!4505592 () List!72868)

(assert (=> d!2316814 (= lt!2650603 e!4505592)))

(declare-fun c!1396393 () Bool)

(assert (=> d!2316814 (= c!1396393 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2316814 (= (++!17489 (t!387601 testedP!423) lt!2650098) lt!2650603)))

(declare-fun b!7567256 () Bool)

(assert (=> b!7567256 (= e!4505591 (or (not (= lt!2650098 Nil!72744)) (= lt!2650603 (t!387601 testedP!423))))))

(declare-fun b!7567254 () Bool)

(assert (=> b!7567254 (= e!4505592 (Cons!72744 (h!79192 (t!387601 testedP!423)) (++!17489 (t!387601 (t!387601 testedP!423)) lt!2650098)))))

(declare-fun b!7567253 () Bool)

(assert (=> b!7567253 (= e!4505592 lt!2650098)))

(assert (= (and d!2316814 c!1396393) b!7567253))

(assert (= (and d!2316814 (not c!1396393)) b!7567254))

(assert (= (and d!2316814 res!3031732) b!7567255))

(assert (= (and b!7567255 res!3031733) b!7567256))

(declare-fun m!8129802 () Bool)

(assert (=> b!7567255 m!8129802))

(assert (=> b!7567255 m!8129096))

(assert (=> b!7567255 m!8128884))

(declare-fun m!8129808 () Bool)

(assert (=> d!2316814 m!8129808))

(assert (=> d!2316814 m!8129374))

(assert (=> d!2316814 m!8128888))

(declare-fun m!8129812 () Bool)

(assert (=> b!7567254 m!8129812))

(assert (=> b!7566671 d!2316814))

(declare-fun d!2316818 () Bool)

(assert (=> d!2316818 (= lt!2650104 lt!2650099)))

(assert (=> d!2316818 true))

(declare-fun _$63!1401 () Unit!166904)

(assert (=> d!2316818 (= (choose!58516 testedP!423 lt!2650104 testedP!423 lt!2650099 knownP!30) _$63!1401)))

(assert (=> d!2316476 d!2316818))

(assert (=> d!2316476 d!2316488))

(assert (=> d!2316580 d!2316672))

(assert (=> d!2316580 d!2316510))

(declare-fun bm!693813 () Bool)

(declare-fun call!693819 () Bool)

(declare-fun c!1396395 () Bool)

(assert (=> bm!693813 (= call!693819 (validRegex!10413 (ite c!1396395 (regOne!40483 lt!2650287) (regOne!40482 lt!2650287))))))

(declare-fun b!7567257 () Bool)

(declare-fun e!4505599 () Bool)

(declare-fun e!4505593 () Bool)

(assert (=> b!7567257 (= e!4505599 e!4505593)))

(assert (=> b!7567257 (= c!1396395 ((_ is Union!19985) lt!2650287))))

(declare-fun b!7567258 () Bool)

(declare-fun e!4505595 () Bool)

(assert (=> b!7567258 (= e!4505599 e!4505595)))

(declare-fun res!3031736 () Bool)

(assert (=> b!7567258 (= res!3031736 (not (nullable!8719 (reg!20314 lt!2650287))))))

(assert (=> b!7567258 (=> (not res!3031736) (not e!4505595))))

(declare-fun b!7567259 () Bool)

(declare-fun res!3031735 () Bool)

(declare-fun e!4505598 () Bool)

(assert (=> b!7567259 (=> res!3031735 e!4505598)))

(assert (=> b!7567259 (= res!3031735 (not ((_ is Concat!28830) lt!2650287)))))

(assert (=> b!7567259 (= e!4505593 e!4505598)))

(declare-fun b!7567260 () Bool)

(declare-fun e!4505597 () Bool)

(assert (=> b!7567260 (= e!4505598 e!4505597)))

(declare-fun res!3031737 () Bool)

(assert (=> b!7567260 (=> (not res!3031737) (not e!4505597))))

(assert (=> b!7567260 (= res!3031737 call!693819)))

(declare-fun b!7567261 () Bool)

(declare-fun call!693818 () Bool)

(assert (=> b!7567261 (= e!4505597 call!693818)))

(declare-fun b!7567262 () Bool)

(declare-fun e!4505596 () Bool)

(assert (=> b!7567262 (= e!4505596 call!693818)))

(declare-fun b!7567263 () Bool)

(declare-fun call!693820 () Bool)

(assert (=> b!7567263 (= e!4505595 call!693820)))

(declare-fun b!7567265 () Bool)

(declare-fun res!3031739 () Bool)

(assert (=> b!7567265 (=> (not res!3031739) (not e!4505596))))

(assert (=> b!7567265 (= res!3031739 call!693819)))

(assert (=> b!7567265 (= e!4505593 e!4505596)))

(declare-fun b!7567267 () Bool)

(declare-fun e!4505594 () Bool)

(assert (=> b!7567267 (= e!4505594 e!4505599)))

(declare-fun c!1396394 () Bool)

(assert (=> b!7567267 (= c!1396394 ((_ is Star!19985) lt!2650287))))

(declare-fun bm!693814 () Bool)

(assert (=> bm!693814 (= call!693820 (validRegex!10413 (ite c!1396394 (reg!20314 lt!2650287) (ite c!1396395 (regTwo!40483 lt!2650287) (regTwo!40482 lt!2650287)))))))

(declare-fun bm!693815 () Bool)

(assert (=> bm!693815 (= call!693818 call!693820)))

(declare-fun d!2316824 () Bool)

(declare-fun res!3031734 () Bool)

(assert (=> d!2316824 (=> res!3031734 e!4505594)))

(assert (=> d!2316824 (= res!3031734 ((_ is ElementMatch!19985) lt!2650287))))

(assert (=> d!2316824 (= (validRegex!10413 lt!2650287) e!4505594)))

(assert (= (and d!2316824 (not res!3031734)) b!7567267))

(assert (= (and b!7567267 c!1396394) b!7567258))

(assert (= (and b!7567267 (not c!1396394)) b!7567257))

(assert (= (and b!7567258 res!3031736) b!7567263))

(assert (= (and b!7567257 c!1396395) b!7567265))

(assert (= (and b!7567257 (not c!1396395)) b!7567259))

(assert (= (and b!7567265 res!3031739) b!7567262))

(assert (= (and b!7567259 (not res!3031735)) b!7567260))

(assert (= (and b!7567260 res!3031737) b!7567261))

(assert (= (or b!7567265 b!7567260) bm!693813))

(assert (= (or b!7567262 b!7567261) bm!693815))

(assert (= (or b!7567263 bm!693815) bm!693814))

(declare-fun m!8129822 () Bool)

(assert (=> bm!693813 m!8129822))

(declare-fun m!8129826 () Bool)

(assert (=> b!7567258 m!8129826))

(declare-fun m!8129828 () Bool)

(assert (=> bm!693814 m!8129828))

(assert (=> d!2316472 d!2316824))

(assert (=> d!2316472 d!2316510))

(declare-fun d!2316828 () Bool)

(assert (=> d!2316828 (= input!7874 testedP!423)))

(declare-fun lt!2650605 () Unit!166904)

(assert (=> d!2316828 (= lt!2650605 (choose!58527 input!7874 testedP!423 input!7874))))

(assert (=> d!2316828 (isPrefix!6191 input!7874 input!7874)))

(assert (=> d!2316828 (= (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 testedP!423 input!7874) lt!2650605)))

(declare-fun bs!1940507 () Bool)

(assert (= bs!1940507 d!2316828))

(declare-fun m!8129830 () Bool)

(assert (=> bs!1940507 m!8129830))

(assert (=> bs!1940507 m!8128780))

(assert (=> bm!693670 d!2316828))

(declare-fun b!7567273 () Bool)

(declare-fun e!4505603 () Bool)

(assert (=> b!7567273 (= e!4505603 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (tail!15103 testedP!423))))))

(declare-fun b!7567270 () Bool)

(declare-fun e!4505602 () Bool)

(declare-fun e!4505604 () Bool)

(assert (=> b!7567270 (= e!4505602 e!4505604)))

(declare-fun res!3031741 () Bool)

(assert (=> b!7567270 (=> (not res!3031741) (not e!4505604))))

(assert (=> b!7567270 (= res!3031741 (not ((_ is Nil!72744) (tail!15103 input!7874))))))

(declare-fun d!2316830 () Bool)

(assert (=> d!2316830 e!4505603))

(declare-fun res!3031743 () Bool)

(assert (=> d!2316830 (=> res!3031743 e!4505603)))

(declare-fun lt!2650606 () Bool)

(assert (=> d!2316830 (= res!3031743 (not lt!2650606))))

(assert (=> d!2316830 (= lt!2650606 e!4505602)))

(declare-fun res!3031744 () Bool)

(assert (=> d!2316830 (=> res!3031744 e!4505602)))

(assert (=> d!2316830 (= res!3031744 ((_ is Nil!72744) (tail!15103 testedP!423)))))

(assert (=> d!2316830 (= (isPrefix!6191 (tail!15103 testedP!423) (tail!15103 input!7874)) lt!2650606)))

(declare-fun b!7567272 () Bool)

(assert (=> b!7567272 (= e!4505604 (isPrefix!6191 (tail!15103 (tail!15103 testedP!423)) (tail!15103 (tail!15103 input!7874))))))

(declare-fun b!7567271 () Bool)

(declare-fun res!3031742 () Bool)

(assert (=> b!7567271 (=> (not res!3031742) (not e!4505604))))

(assert (=> b!7567271 (= res!3031742 (= (head!15563 (tail!15103 testedP!423)) (head!15563 (tail!15103 input!7874))))))

(assert (= (and d!2316830 (not res!3031744)) b!7567270))

(assert (= (and b!7567270 res!3031741) b!7567271))

(assert (= (and b!7567271 res!3031742) b!7567272))

(assert (= (and d!2316830 (not res!3031743)) b!7567273))

(assert (=> b!7567273 m!8128796))

(assert (=> b!7567273 m!8129334))

(assert (=> b!7567273 m!8128912))

(assert (=> b!7567273 m!8129290))

(assert (=> b!7567272 m!8128912))

(assert (=> b!7567272 m!8129292))

(assert (=> b!7567272 m!8128796))

(assert (=> b!7567272 m!8129340))

(assert (=> b!7567272 m!8129292))

(assert (=> b!7567272 m!8129340))

(declare-fun m!8129832 () Bool)

(assert (=> b!7567272 m!8129832))

(assert (=> b!7567271 m!8128912))

(assert (=> b!7567271 m!8129298))

(assert (=> b!7567271 m!8128796))

(assert (=> b!7567271 m!8129346))

(assert (=> b!7566573 d!2316830))

(assert (=> b!7566573 d!2316596))

(assert (=> b!7566573 d!2316616))

(assert (=> b!7566547 d!2316506))

(declare-fun d!2316832 () Bool)

(declare-fun lt!2650607 () Int)

(assert (=> d!2316832 (>= lt!2650607 0)))

(declare-fun e!4505605 () Int)

(assert (=> d!2316832 (= lt!2650607 e!4505605)))

(declare-fun c!1396397 () Bool)

(assert (=> d!2316832 (= c!1396397 ((_ is Nil!72744) lt!2650397))))

(assert (=> d!2316832 (= (size!42481 lt!2650397) lt!2650607)))

(declare-fun b!7567274 () Bool)

(assert (=> b!7567274 (= e!4505605 0)))

(declare-fun b!7567275 () Bool)

(assert (=> b!7567275 (= e!4505605 (+ 1 (size!42481 (t!387601 lt!2650397))))))

(assert (= (and d!2316832 c!1396397) b!7567274))

(assert (= (and d!2316832 (not c!1396397)) b!7567275))

(declare-fun m!8129834 () Bool)

(assert (=> b!7567275 m!8129834))

(assert (=> b!7566599 d!2316832))

(assert (=> b!7566599 d!2316534))

(assert (=> b!7566599 d!2316760))

(declare-fun bm!693816 () Bool)

(declare-fun call!693822 () Bool)

(declare-fun c!1396399 () Bool)

(assert (=> bm!693816 (= call!693822 (validRegex!10413 (ite c!1396399 (regOne!40483 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))) (regOne!40482 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))))

(declare-fun b!7567276 () Bool)

(declare-fun e!4505612 () Bool)

(declare-fun e!4505606 () Bool)

(assert (=> b!7567276 (= e!4505612 e!4505606)))

(assert (=> b!7567276 (= c!1396399 ((_ is Union!19985) (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))

(declare-fun b!7567277 () Bool)

(declare-fun e!4505608 () Bool)

(assert (=> b!7567277 (= e!4505612 e!4505608)))

(declare-fun res!3031747 () Bool)

(assert (=> b!7567277 (= res!3031747 (not (nullable!8719 (reg!20314 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))))

(assert (=> b!7567277 (=> (not res!3031747) (not e!4505608))))

(declare-fun b!7567278 () Bool)

(declare-fun res!3031746 () Bool)

(declare-fun e!4505611 () Bool)

(assert (=> b!7567278 (=> res!3031746 e!4505611)))

(assert (=> b!7567278 (= res!3031746 (not ((_ is Concat!28830) (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333))))))))

(assert (=> b!7567278 (= e!4505606 e!4505611)))

(declare-fun b!7567279 () Bool)

(declare-fun e!4505610 () Bool)

(assert (=> b!7567279 (= e!4505611 e!4505610)))

(declare-fun res!3031748 () Bool)

(assert (=> b!7567279 (=> (not res!3031748) (not e!4505610))))

(assert (=> b!7567279 (= res!3031748 call!693822)))

(declare-fun b!7567280 () Bool)

(declare-fun call!693821 () Bool)

(assert (=> b!7567280 (= e!4505610 call!693821)))

(declare-fun b!7567281 () Bool)

(declare-fun e!4505609 () Bool)

(assert (=> b!7567281 (= e!4505609 call!693821)))

(declare-fun b!7567282 () Bool)

(declare-fun call!693823 () Bool)

(assert (=> b!7567282 (= e!4505608 call!693823)))

(declare-fun b!7567283 () Bool)

(declare-fun res!3031749 () Bool)

(assert (=> b!7567283 (=> (not res!3031749) (not e!4505609))))

(assert (=> b!7567283 (= res!3031749 call!693822)))

(assert (=> b!7567283 (= e!4505606 e!4505609)))

(declare-fun b!7567284 () Bool)

(declare-fun e!4505607 () Bool)

(assert (=> b!7567284 (= e!4505607 e!4505612)))

(declare-fun c!1396398 () Bool)

(assert (=> b!7567284 (= c!1396398 ((_ is Star!19985) (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))

(declare-fun bm!693817 () Bool)

(assert (=> bm!693817 (= call!693823 (validRegex!10413 (ite c!1396398 (reg!20314 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))) (ite c!1396399 (regTwo!40483 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))) (regTwo!40482 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333))))))))))

(declare-fun bm!693818 () Bool)

(assert (=> bm!693818 (= call!693821 call!693823)))

(declare-fun d!2316834 () Bool)

(declare-fun res!3031745 () Bool)

(assert (=> d!2316834 (=> res!3031745 e!4505607)))

(assert (=> d!2316834 (= res!3031745 ((_ is ElementMatch!19985) (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))))))

(assert (=> d!2316834 (= (validRegex!10413 (ite c!1396272 (reg!20314 r!24333) (ite c!1396273 (regTwo!40483 r!24333) (regTwo!40482 r!24333)))) e!4505607)))

(assert (= (and d!2316834 (not res!3031745)) b!7567284))

(assert (= (and b!7567284 c!1396398) b!7567277))

(assert (= (and b!7567284 (not c!1396398)) b!7567276))

(assert (= (and b!7567277 res!3031747) b!7567282))

(assert (= (and b!7567276 c!1396399) b!7567283))

(assert (= (and b!7567276 (not c!1396399)) b!7567278))

(assert (= (and b!7567283 res!3031749) b!7567281))

(assert (= (and b!7567278 (not res!3031746)) b!7567279))

(assert (= (and b!7567279 res!3031748) b!7567280))

(assert (= (or b!7567283 b!7567279) bm!693816))

(assert (= (or b!7567281 b!7567280) bm!693818))

(assert (= (or b!7567282 bm!693818) bm!693817))

(declare-fun m!8129836 () Bool)

(assert (=> bm!693816 m!8129836))

(declare-fun m!8129838 () Bool)

(assert (=> b!7567277 m!8129838))

(declare-fun m!8129840 () Bool)

(assert (=> bm!693817 m!8129840))

(assert (=> bm!693752 d!2316834))

(declare-fun d!2316838 () Bool)

(declare-fun lt!2650608 () Int)

(assert (=> d!2316838 (>= lt!2650608 0)))

(declare-fun e!4505614 () Int)

(assert (=> d!2316838 (= lt!2650608 e!4505614)))

(declare-fun c!1396400 () Bool)

(assert (=> d!2316838 (= c!1396400 ((_ is Nil!72744) (t!387601 lt!2650100)))))

(assert (=> d!2316838 (= (size!42481 (t!387601 lt!2650100)) lt!2650608)))

(declare-fun b!7567285 () Bool)

(assert (=> b!7567285 (= e!4505614 0)))

(declare-fun b!7567286 () Bool)

(assert (=> b!7567286 (= e!4505614 (+ 1 (size!42481 (t!387601 (t!387601 lt!2650100)))))))

(assert (= (and d!2316838 c!1396400) b!7567285))

(assert (= (and d!2316838 (not c!1396400)) b!7567286))

(declare-fun m!8129842 () Bool)

(assert (=> b!7567286 m!8129842))

(assert (=> b!7566456 d!2316838))

(declare-fun b!7567293 () Bool)

(declare-fun res!3031753 () Bool)

(declare-fun e!4505616 () Bool)

(assert (=> b!7567293 (=> (not res!3031753) (not e!4505616))))

(declare-fun lt!2650610 () List!72868)

(assert (=> b!7567293 (= res!3031753 (= (size!42481 lt!2650610) (+ (size!42481 (t!387601 lt!2650100)) (size!42481 lt!2650107))))))

(declare-fun d!2316840 () Bool)

(assert (=> d!2316840 e!4505616))

(declare-fun res!3031752 () Bool)

(assert (=> d!2316840 (=> (not res!3031752) (not e!4505616))))

(assert (=> d!2316840 (= res!3031752 (= (content!15406 lt!2650610) ((_ map or) (content!15406 (t!387601 lt!2650100)) (content!15406 lt!2650107))))))

(declare-fun e!4505617 () List!72868)

(assert (=> d!2316840 (= lt!2650610 e!4505617)))

(declare-fun c!1396402 () Bool)

(assert (=> d!2316840 (= c!1396402 ((_ is Nil!72744) (t!387601 lt!2650100)))))

(assert (=> d!2316840 (= (++!17489 (t!387601 lt!2650100) lt!2650107) lt!2650610)))

(declare-fun b!7567294 () Bool)

(assert (=> b!7567294 (= e!4505616 (or (not (= lt!2650107 Nil!72744)) (= lt!2650610 (t!387601 lt!2650100))))))

(declare-fun b!7567292 () Bool)

(assert (=> b!7567292 (= e!4505617 (Cons!72744 (h!79192 (t!387601 lt!2650100)) (++!17489 (t!387601 (t!387601 lt!2650100)) lt!2650107)))))

(declare-fun b!7567291 () Bool)

(assert (=> b!7567291 (= e!4505617 lt!2650107)))

(assert (= (and d!2316840 c!1396402) b!7567291))

(assert (= (and d!2316840 (not c!1396402)) b!7567292))

(assert (= (and d!2316840 res!3031752) b!7567293))

(assert (= (and b!7567293 res!3031753) b!7567294))

(declare-fun m!8129854 () Bool)

(assert (=> b!7567293 m!8129854))

(assert (=> b!7567293 m!8128848))

(assert (=> b!7567293 m!8128858))

(declare-fun m!8129856 () Bool)

(assert (=> d!2316840 m!8129856))

(assert (=> d!2316840 m!8129354))

(assert (=> d!2316840 m!8128864))

(declare-fun m!8129858 () Bool)

(assert (=> b!7567292 m!8129858))

(assert (=> b!7566472 d!2316840))

(declare-fun d!2316844 () Bool)

(declare-fun c!1396403 () Bool)

(assert (=> d!2316844 (= c!1396403 ((_ is Nil!72744) lt!2650471))))

(declare-fun e!4505618 () (InoxSet C!40296))

(assert (=> d!2316844 (= (content!15406 lt!2650471) e!4505618)))

(declare-fun b!7567295 () Bool)

(assert (=> b!7567295 (= e!4505618 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567296 () Bool)

(assert (=> b!7567296 (= e!4505618 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650471) true) (content!15406 (t!387601 lt!2650471))))))

(assert (= (and d!2316844 c!1396403) b!7567295))

(assert (= (and d!2316844 (not c!1396403)) b!7567296))

(declare-fun m!8129860 () Bool)

(assert (=> b!7567296 m!8129860))

(declare-fun m!8129862 () Bool)

(assert (=> b!7567296 m!8129862))

(assert (=> d!2316588 d!2316844))

(assert (=> d!2316588 d!2316796))

(declare-fun d!2316846 () Bool)

(declare-fun c!1396404 () Bool)

(assert (=> d!2316846 (= c!1396404 ((_ is Nil!72744) lt!2650116))))

(declare-fun e!4505619 () (InoxSet C!40296))

(assert (=> d!2316846 (= (content!15406 lt!2650116) e!4505619)))

(declare-fun b!7567297 () Bool)

(assert (=> b!7567297 (= e!4505619 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567298 () Bool)

(assert (=> b!7567298 (= e!4505619 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650116) true) (content!15406 (t!387601 lt!2650116))))))

(assert (= (and d!2316846 c!1396404) b!7567297))

(assert (= (and d!2316846 (not c!1396404)) b!7567298))

(declare-fun m!8129864 () Bool)

(assert (=> b!7567298 m!8129864))

(declare-fun m!8129866 () Bool)

(assert (=> b!7567298 m!8129866))

(assert (=> d!2316588 d!2316846))

(declare-fun b!7567302 () Bool)

(declare-fun e!4505621 () Bool)

(assert (=> b!7567302 (= e!4505621 (>= (size!42481 input!7874) (size!42481 input!7874)))))

(declare-fun b!7567299 () Bool)

(declare-fun e!4505620 () Bool)

(declare-fun e!4505622 () Bool)

(assert (=> b!7567299 (= e!4505620 e!4505622)))

(declare-fun res!3031754 () Bool)

(assert (=> b!7567299 (=> (not res!3031754) (not e!4505622))))

(assert (=> b!7567299 (= res!3031754 (not ((_ is Nil!72744) input!7874)))))

(declare-fun d!2316848 () Bool)

(assert (=> d!2316848 e!4505621))

(declare-fun res!3031756 () Bool)

(assert (=> d!2316848 (=> res!3031756 e!4505621)))

(declare-fun lt!2650611 () Bool)

(assert (=> d!2316848 (= res!3031756 (not lt!2650611))))

(assert (=> d!2316848 (= lt!2650611 e!4505620)))

(declare-fun res!3031757 () Bool)

(assert (=> d!2316848 (=> res!3031757 e!4505620)))

(assert (=> d!2316848 (= res!3031757 ((_ is Nil!72744) input!7874))))

(assert (=> d!2316848 (= (isPrefix!6191 input!7874 input!7874) lt!2650611)))

(declare-fun b!7567301 () Bool)

(assert (=> b!7567301 (= e!4505622 (isPrefix!6191 (tail!15103 input!7874) (tail!15103 input!7874)))))

(declare-fun b!7567300 () Bool)

(declare-fun res!3031755 () Bool)

(assert (=> b!7567300 (=> (not res!3031755) (not e!4505622))))

(assert (=> b!7567300 (= res!3031755 (= (head!15563 input!7874) (head!15563 input!7874)))))

(assert (= (and d!2316848 (not res!3031757)) b!7567299))

(assert (= (and b!7567299 res!3031754) b!7567300))

(assert (= (and b!7567300 res!3031755) b!7567301))

(assert (= (and d!2316848 (not res!3031756)) b!7567302))

(assert (=> b!7567302 m!8128476))

(assert (=> b!7567302 m!8128476))

(assert (=> b!7567301 m!8128796))

(assert (=> b!7567301 m!8128796))

(assert (=> b!7567301 m!8128796))

(assert (=> b!7567301 m!8128796))

(declare-fun m!8129872 () Bool)

(assert (=> b!7567301 m!8129872))

(assert (=> b!7567300 m!8128924))

(assert (=> b!7567300 m!8128924))

(assert (=> bm!693677 d!2316848))

(declare-fun b!7567308 () Bool)

(declare-fun e!4505625 () Bool)

(assert (=> b!7567308 (= e!4505625 (>= (size!42481 (tail!15103 knownP!30)) (size!42481 (tail!15103 lt!2650100))))))

(declare-fun b!7567305 () Bool)

(declare-fun e!4505624 () Bool)

(declare-fun e!4505626 () Bool)

(assert (=> b!7567305 (= e!4505624 e!4505626)))

(declare-fun res!3031758 () Bool)

(assert (=> b!7567305 (=> (not res!3031758) (not e!4505626))))

(assert (=> b!7567305 (= res!3031758 (not ((_ is Nil!72744) (tail!15103 knownP!30))))))

(declare-fun d!2316854 () Bool)

(assert (=> d!2316854 e!4505625))

(declare-fun res!3031760 () Bool)

(assert (=> d!2316854 (=> res!3031760 e!4505625)))

(declare-fun lt!2650613 () Bool)

(assert (=> d!2316854 (= res!3031760 (not lt!2650613))))

(assert (=> d!2316854 (= lt!2650613 e!4505624)))

(declare-fun res!3031761 () Bool)

(assert (=> d!2316854 (=> res!3031761 e!4505624)))

(assert (=> d!2316854 (= res!3031761 ((_ is Nil!72744) (tail!15103 lt!2650100)))))

(assert (=> d!2316854 (= (isPrefix!6191 (tail!15103 lt!2650100) (tail!15103 knownP!30)) lt!2650613)))

(declare-fun b!7567307 () Bool)

(assert (=> b!7567307 (= e!4505626 (isPrefix!6191 (tail!15103 (tail!15103 lt!2650100)) (tail!15103 (tail!15103 knownP!30))))))

(declare-fun b!7567306 () Bool)

(declare-fun res!3031759 () Bool)

(assert (=> b!7567306 (=> (not res!3031759) (not e!4505626))))

(assert (=> b!7567306 (= res!3031759 (= (head!15563 (tail!15103 lt!2650100)) (head!15563 (tail!15103 knownP!30))))))

(assert (= (and d!2316854 (not res!3031761)) b!7567305))

(assert (= (and b!7567305 res!3031758) b!7567306))

(assert (= (and b!7567306 res!3031759) b!7567307))

(assert (= (and d!2316854 (not res!3031760)) b!7567308))

(assert (=> b!7567308 m!8128908))

(assert (=> b!7567308 m!8129288))

(assert (=> b!7567308 m!8129176))

(assert (=> b!7567308 m!8129336))

(assert (=> b!7567307 m!8129176))

(assert (=> b!7567307 m!8129338))

(assert (=> b!7567307 m!8128908))

(assert (=> b!7567307 m!8129294))

(assert (=> b!7567307 m!8129338))

(assert (=> b!7567307 m!8129294))

(declare-fun m!8129882 () Bool)

(assert (=> b!7567307 m!8129882))

(assert (=> b!7567306 m!8129176))

(assert (=> b!7567306 m!8129344))

(assert (=> b!7567306 m!8128908))

(assert (=> b!7567306 m!8129300))

(assert (=> b!7566759 d!2316854))

(assert (=> b!7566759 d!2316614))

(assert (=> b!7566759 d!2316598))

(declare-fun b!7567311 () Bool)

(declare-fun res!3031763 () Bool)

(declare-fun e!4505627 () Bool)

(assert (=> b!7567311 (=> (not res!3031763) (not e!4505627))))

(declare-fun lt!2650614 () List!72868)

(assert (=> b!7567311 (= res!3031763 (= (size!42481 lt!2650614) (+ (size!42481 (t!387601 testedP!423)) (size!42481 lt!2650101))))))

(declare-fun d!2316860 () Bool)

(assert (=> d!2316860 e!4505627))

(declare-fun res!3031762 () Bool)

(assert (=> d!2316860 (=> (not res!3031762) (not e!4505627))))

(assert (=> d!2316860 (= res!3031762 (= (content!15406 lt!2650614) ((_ map or) (content!15406 (t!387601 testedP!423)) (content!15406 lt!2650101))))))

(declare-fun e!4505628 () List!72868)

(assert (=> d!2316860 (= lt!2650614 e!4505628)))

(declare-fun c!1396406 () Bool)

(assert (=> d!2316860 (= c!1396406 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2316860 (= (++!17489 (t!387601 testedP!423) lt!2650101) lt!2650614)))

(declare-fun b!7567312 () Bool)

(assert (=> b!7567312 (= e!4505627 (or (not (= lt!2650101 Nil!72744)) (= lt!2650614 (t!387601 testedP!423))))))

(declare-fun b!7567310 () Bool)

(assert (=> b!7567310 (= e!4505628 (Cons!72744 (h!79192 (t!387601 testedP!423)) (++!17489 (t!387601 (t!387601 testedP!423)) lt!2650101)))))

(declare-fun b!7567309 () Bool)

(assert (=> b!7567309 (= e!4505628 lt!2650101)))

(assert (= (and d!2316860 c!1396406) b!7567309))

(assert (= (and d!2316860 (not c!1396406)) b!7567310))

(assert (= (and d!2316860 res!3031762) b!7567311))

(assert (= (and b!7567311 res!3031763) b!7567312))

(declare-fun m!8129884 () Bool)

(assert (=> b!7567311 m!8129884))

(assert (=> b!7567311 m!8129096))

(assert (=> b!7567311 m!8129214))

(declare-fun m!8129886 () Bool)

(assert (=> d!2316860 m!8129886))

(assert (=> d!2316860 m!8129374))

(assert (=> d!2316860 m!8129218))

(declare-fun m!8129888 () Bool)

(assert (=> b!7567310 m!8129888))

(assert (=> b!7566832 d!2316860))

(assert (=> b!7566422 d!2316584))

(declare-fun d!2316862 () Bool)

(assert (=> d!2316862 (= (++!17489 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744)) lt!2650242) input!7874)))

(declare-fun lt!2650615 () Unit!166904)

(assert (=> d!2316862 (= lt!2650615 (choose!58525 testedP!423 lt!2650235 lt!2650242 input!7874))))

(assert (=> d!2316862 (= (++!17489 testedP!423 (Cons!72744 lt!2650235 lt!2650242)) input!7874)))

(assert (=> d!2316862 (= (lemmaMoveElementToOtherListKeepsConcatEq!3180 testedP!423 lt!2650235 lt!2650242 input!7874) lt!2650615)))

(declare-fun bs!1940511 () Bool)

(assert (= bs!1940511 d!2316862))

(assert (=> bs!1940511 m!8128762))

(assert (=> bs!1940511 m!8128762))

(assert (=> bs!1940511 m!8128764))

(declare-fun m!8129890 () Bool)

(assert (=> bs!1940511 m!8129890))

(declare-fun m!8129892 () Bool)

(assert (=> bs!1940511 m!8129892))

(assert (=> b!7566422 d!2316862))

(assert (=> b!7566422 d!2316556))

(assert (=> b!7566422 d!2316558))

(declare-fun b!7567319 () Bool)

(declare-fun res!3031765 () Bool)

(declare-fun e!4505631 () Bool)

(assert (=> b!7567319 (=> (not res!3031765) (not e!4505631))))

(declare-fun lt!2650616 () List!72868)

(assert (=> b!7567319 (= res!3031765 (= (size!42481 lt!2650616) (+ (size!42481 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744))) (size!42481 lt!2650242))))))

(declare-fun d!2316864 () Bool)

(assert (=> d!2316864 e!4505631))

(declare-fun res!3031764 () Bool)

(assert (=> d!2316864 (=> (not res!3031764) (not e!4505631))))

(assert (=> d!2316864 (= res!3031764 (= (content!15406 lt!2650616) ((_ map or) (content!15406 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744))) (content!15406 lt!2650242))))))

(declare-fun e!4505632 () List!72868)

(assert (=> d!2316864 (= lt!2650616 e!4505632)))

(declare-fun c!1396409 () Bool)

(assert (=> d!2316864 (= c!1396409 ((_ is Nil!72744) (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744))))))

(assert (=> d!2316864 (= (++!17489 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744)) lt!2650242) lt!2650616)))

(declare-fun b!7567320 () Bool)

(assert (=> b!7567320 (= e!4505631 (or (not (= lt!2650242 Nil!72744)) (= lt!2650616 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744)))))))

(declare-fun b!7567318 () Bool)

(assert (=> b!7567318 (= e!4505632 (Cons!72744 (h!79192 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744))) (++!17489 (t!387601 (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744))) lt!2650242)))))

(declare-fun b!7567317 () Bool)

(assert (=> b!7567317 (= e!4505632 lt!2650242)))

(assert (= (and d!2316864 c!1396409) b!7567317))

(assert (= (and d!2316864 (not c!1396409)) b!7567318))

(assert (= (and d!2316864 res!3031764) b!7567319))

(assert (= (and b!7567319 res!3031765) b!7567320))

(declare-fun m!8129894 () Bool)

(assert (=> b!7567319 m!8129894))

(assert (=> b!7567319 m!8128762))

(declare-fun m!8129896 () Bool)

(assert (=> b!7567319 m!8129896))

(declare-fun m!8129898 () Bool)

(assert (=> b!7567319 m!8129898))

(declare-fun m!8129900 () Bool)

(assert (=> d!2316864 m!8129900))

(assert (=> d!2316864 m!8128762))

(declare-fun m!8129902 () Bool)

(assert (=> d!2316864 m!8129902))

(declare-fun m!8129904 () Bool)

(assert (=> d!2316864 m!8129904))

(declare-fun m!8129906 () Bool)

(assert (=> b!7567318 m!8129906))

(assert (=> b!7566422 d!2316864))

(assert (=> b!7566422 d!2316534))

(declare-fun b!7567325 () Bool)

(declare-fun res!3031767 () Bool)

(declare-fun e!4505634 () Bool)

(assert (=> b!7567325 (=> (not res!3031767) (not e!4505634))))

(declare-fun lt!2650617 () List!72868)

(assert (=> b!7567325 (= res!3031767 (= (size!42481 lt!2650617) (+ (size!42481 testedP!423) (size!42481 (Cons!72744 (head!15563 lt!2650115) Nil!72744)))))))

(declare-fun d!2316866 () Bool)

(assert (=> d!2316866 e!4505634))

(declare-fun res!3031766 () Bool)

(assert (=> d!2316866 (=> (not res!3031766) (not e!4505634))))

(assert (=> d!2316866 (= res!3031766 (= (content!15406 lt!2650617) ((_ map or) (content!15406 testedP!423) (content!15406 (Cons!72744 (head!15563 lt!2650115) Nil!72744)))))))

(declare-fun e!4505635 () List!72868)

(assert (=> d!2316866 (= lt!2650617 e!4505635)))

(declare-fun c!1396411 () Bool)

(assert (=> d!2316866 (= c!1396411 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316866 (= (++!17489 testedP!423 (Cons!72744 (head!15563 lt!2650115) Nil!72744)) lt!2650617)))

(declare-fun b!7567326 () Bool)

(assert (=> b!7567326 (= e!4505634 (or (not (= (Cons!72744 (head!15563 lt!2650115) Nil!72744) Nil!72744)) (= lt!2650617 testedP!423)))))

(declare-fun b!7567324 () Bool)

(assert (=> b!7567324 (= e!4505635 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (Cons!72744 (head!15563 lt!2650115) Nil!72744))))))

(declare-fun b!7567323 () Bool)

(assert (=> b!7567323 (= e!4505635 (Cons!72744 (head!15563 lt!2650115) Nil!72744))))

(assert (= (and d!2316866 c!1396411) b!7567323))

(assert (= (and d!2316866 (not c!1396411)) b!7567324))

(assert (= (and d!2316866 res!3031766) b!7567325))

(assert (= (and b!7567325 res!3031767) b!7567326))

(declare-fun m!8129916 () Bool)

(assert (=> b!7567325 m!8129916))

(assert (=> b!7567325 m!8128472))

(declare-fun m!8129918 () Bool)

(assert (=> b!7567325 m!8129918))

(declare-fun m!8129920 () Bool)

(assert (=> d!2316866 m!8129920))

(assert (=> d!2316866 m!8128876))

(declare-fun m!8129922 () Bool)

(assert (=> d!2316866 m!8129922))

(declare-fun m!8129928 () Bool)

(assert (=> b!7567324 m!8129928))

(assert (=> b!7566422 d!2316866))

(declare-fun b!7567335 () Bool)

(declare-fun res!3031769 () Bool)

(declare-fun e!4505639 () Bool)

(assert (=> b!7567335 (=> (not res!3031769) (not e!4505639))))

(declare-fun lt!2650618 () List!72868)

(assert (=> b!7567335 (= res!3031769 (= (size!42481 lt!2650618) (+ (size!42481 testedP!423) (size!42481 (Cons!72744 lt!2650235 Nil!72744)))))))

(declare-fun d!2316872 () Bool)

(assert (=> d!2316872 e!4505639))

(declare-fun res!3031768 () Bool)

(assert (=> d!2316872 (=> (not res!3031768) (not e!4505639))))

(assert (=> d!2316872 (= res!3031768 (= (content!15406 lt!2650618) ((_ map or) (content!15406 testedP!423) (content!15406 (Cons!72744 lt!2650235 Nil!72744)))))))

(declare-fun e!4505640 () List!72868)

(assert (=> d!2316872 (= lt!2650618 e!4505640)))

(declare-fun c!1396415 () Bool)

(assert (=> d!2316872 (= c!1396415 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2316872 (= (++!17489 testedP!423 (Cons!72744 lt!2650235 Nil!72744)) lt!2650618)))

(declare-fun b!7567336 () Bool)

(assert (=> b!7567336 (= e!4505639 (or (not (= (Cons!72744 lt!2650235 Nil!72744) Nil!72744)) (= lt!2650618 testedP!423)))))

(declare-fun b!7567334 () Bool)

(assert (=> b!7567334 (= e!4505640 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) (Cons!72744 lt!2650235 Nil!72744))))))

(declare-fun b!7567333 () Bool)

(assert (=> b!7567333 (= e!4505640 (Cons!72744 lt!2650235 Nil!72744))))

(assert (= (and d!2316872 c!1396415) b!7567333))

(assert (= (and d!2316872 (not c!1396415)) b!7567334))

(assert (= (and d!2316872 res!3031768) b!7567335))

(assert (= (and b!7567335 res!3031769) b!7567336))

(declare-fun m!8129938 () Bool)

(assert (=> b!7567335 m!8129938))

(assert (=> b!7567335 m!8128472))

(declare-fun m!8129940 () Bool)

(assert (=> b!7567335 m!8129940))

(declare-fun m!8129942 () Bool)

(assert (=> d!2316872 m!8129942))

(assert (=> d!2316872 m!8128876))

(declare-fun m!8129944 () Bool)

(assert (=> d!2316872 m!8129944))

(declare-fun m!8129946 () Bool)

(assert (=> b!7567334 m!8129946))

(assert (=> b!7566422 d!2316872))

(declare-fun d!2316880 () Bool)

(assert (=> d!2316880 (<= (size!42481 testedP!423) (size!42481 input!7874))))

(declare-fun lt!2650619 () Unit!166904)

(assert (=> d!2316880 (= lt!2650619 (choose!58526 testedP!423 input!7874))))

(assert (=> d!2316880 (isPrefix!6191 testedP!423 input!7874)))

(assert (=> d!2316880 (= (lemmaIsPrefixThenSmallerEqSize!1019 testedP!423 input!7874) lt!2650619)))

(declare-fun bs!1940512 () Bool)

(assert (= bs!1940512 d!2316880))

(assert (=> bs!1940512 m!8128472))

(assert (=> bs!1940512 m!8128476))

(declare-fun m!8129952 () Bool)

(assert (=> bs!1940512 m!8129952))

(assert (=> bs!1940512 m!8128490))

(assert (=> b!7566422 d!2316880))

(assert (=> b!7566422 d!2316564))

(assert (=> b!7566422 d!2316642))

(assert (=> b!7566422 d!2316644))

(assert (=> b!7566422 d!2316650))

(assert (=> b!7566422 d!2316638))

(assert (=> b!7566570 d!2316584))

(assert (=> b!7566570 d!2316538))

(declare-fun b!7567347 () Bool)

(declare-fun res!3031773 () Bool)

(declare-fun e!4505645 () Bool)

(assert (=> b!7567347 (=> (not res!3031773) (not e!4505645))))

(declare-fun lt!2650621 () List!72868)

(assert (=> b!7567347 (= res!3031773 (= (size!42481 lt!2650621) (+ (size!42481 (t!387601 lt!2650099)) (size!42481 lt!2650116))))))

(declare-fun d!2316884 () Bool)

(assert (=> d!2316884 e!4505645))

(declare-fun res!3031772 () Bool)

(assert (=> d!2316884 (=> (not res!3031772) (not e!4505645))))

(assert (=> d!2316884 (= res!3031772 (= (content!15406 lt!2650621) ((_ map or) (content!15406 (t!387601 lt!2650099)) (content!15406 lt!2650116))))))

(declare-fun e!4505646 () List!72868)

(assert (=> d!2316884 (= lt!2650621 e!4505646)))

(declare-fun c!1396419 () Bool)

(assert (=> d!2316884 (= c!1396419 ((_ is Nil!72744) (t!387601 lt!2650099)))))

(assert (=> d!2316884 (= (++!17489 (t!387601 lt!2650099) lt!2650116) lt!2650621)))

(declare-fun b!7567348 () Bool)

(assert (=> b!7567348 (= e!4505645 (or (not (= lt!2650116 Nil!72744)) (= lt!2650621 (t!387601 lt!2650099))))))

(declare-fun b!7567346 () Bool)

(assert (=> b!7567346 (= e!4505646 (Cons!72744 (h!79192 (t!387601 lt!2650099)) (++!17489 (t!387601 (t!387601 lt!2650099)) lt!2650116)))))

(declare-fun b!7567345 () Bool)

(assert (=> b!7567345 (= e!4505646 lt!2650116)))

(assert (= (and d!2316884 c!1396419) b!7567345))

(assert (= (and d!2316884 (not c!1396419)) b!7567346))

(assert (= (and d!2316884 res!3031772) b!7567347))

(assert (= (and b!7567347 res!3031773) b!7567348))

(declare-fun m!8129964 () Bool)

(assert (=> b!7567347 m!8129964))

(assert (=> b!7567347 m!8129692))

(assert (=> b!7567347 m!8128942))

(declare-fun m!8129966 () Bool)

(assert (=> d!2316884 m!8129966))

(assert (=> d!2316884 m!8129774))

(assert (=> d!2316884 m!8128948))

(declare-fun m!8129968 () Bool)

(assert (=> b!7567346 m!8129968))

(assert (=> b!7566844 d!2316884))

(assert (=> d!2316400 d!2316584))

(declare-fun d!2316888 () Bool)

(assert (=> d!2316888 (>= (size!42481 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)))) (size!42481 knownP!30))))

(assert (=> d!2316888 true))

(declare-fun _$106!19 () Unit!166904)

(assert (=> d!2316888 (= (choose!58512 baseR!101 lt!2650106 input!7874 lt!2650100 knownP!30) _$106!19)))

(declare-fun bs!1940514 () Bool)

(assert (= bs!1940514 d!2316888))

(assert (=> bs!1940514 m!8128538))

(assert (=> bs!1940514 m!8128530))

(assert (=> bs!1940514 m!8128538))

(assert (=> bs!1940514 m!8128530))

(assert (=> bs!1940514 m!8128476))

(assert (=> bs!1940514 m!8128590))

(assert (=> bs!1940514 m!8128474))

(assert (=> bs!1940514 m!8128476))

(assert (=> bs!1940514 m!8128594))

(assert (=> d!2316400 d!2316888))

(declare-fun d!2316916 () Bool)

(declare-fun lt!2650632 () Int)

(assert (=> d!2316916 (>= lt!2650632 0)))

(declare-fun e!4505673 () Int)

(assert (=> d!2316916 (= lt!2650632 e!4505673)))

(declare-fun c!1396440 () Bool)

(assert (=> d!2316916 (= c!1396440 ((_ is Nil!72744) (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)))))))

(assert (=> d!2316916 (= (size!42481 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)))) lt!2650632)))

(declare-fun b!7567401 () Bool)

(assert (=> b!7567401 (= e!4505673 0)))

(declare-fun b!7567402 () Bool)

(assert (=> b!7567402 (= e!4505673 (+ 1 (size!42481 (t!387601 (_1!37735 (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)))))))))

(assert (= (and d!2316916 c!1396440) b!7567401))

(assert (= (and d!2316916 (not c!1396440)) b!7567402))

(declare-fun m!8130026 () Bool)

(assert (=> b!7567402 m!8130026))

(assert (=> d!2316400 d!2316916))

(assert (=> d!2316400 d!2316470))

(assert (=> d!2316400 d!2316510))

(assert (=> d!2316400 d!2316464))

(declare-fun b!7567413 () Bool)

(declare-fun e!4505686 () Bool)

(declare-fun lt!2650641 () tuple2!68864)

(assert (=> b!7567413 (= e!4505686 (>= (size!42481 (_1!37735 lt!2650641)) (size!42481 lt!2650100)))))

(declare-fun b!7567414 () Bool)

(declare-fun e!4505681 () tuple2!68864)

(assert (=> b!7567414 (= e!4505681 (tuple2!68865 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun b!7567416 () Bool)

(declare-fun c!1396451 () Bool)

(declare-fun call!693836 () Bool)

(assert (=> b!7567416 (= c!1396451 call!693836)))

(declare-fun lt!2650636 () Unit!166904)

(declare-fun lt!2650647 () Unit!166904)

(assert (=> b!7567416 (= lt!2650636 lt!2650647)))

(declare-fun lt!2650644 () C!40296)

(declare-fun lt!2650652 () List!72868)

(assert (=> b!7567416 (= (++!17489 (++!17489 lt!2650100 (Cons!72744 lt!2650644 Nil!72744)) lt!2650652) input!7874)))

(assert (=> b!7567416 (= lt!2650647 (lemmaMoveElementToOtherListKeepsConcatEq!3180 lt!2650100 lt!2650644 lt!2650652 input!7874))))

(assert (=> b!7567416 (= lt!2650652 (tail!15103 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> b!7567416 (= lt!2650644 (head!15563 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun lt!2650654 () Unit!166904)

(declare-fun lt!2650635 () Unit!166904)

(assert (=> b!7567416 (= lt!2650654 lt!2650635)))

(assert (=> b!7567416 (isPrefix!6191 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)) input!7874)))

(assert (=> b!7567416 (= lt!2650635 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650100 input!7874))))

(declare-fun lt!2650638 () Unit!166904)

(declare-fun lt!2650637 () Unit!166904)

(assert (=> b!7567416 (= lt!2650638 lt!2650637)))

(assert (=> b!7567416 (= lt!2650637 (lemmaAddHeadSuffixToPrefixStillPrefix!1240 lt!2650100 input!7874))))

(declare-fun lt!2650661 () List!72868)

(assert (=> b!7567416 (= lt!2650661 (++!17489 lt!2650100 (Cons!72744 (head!15563 (getSuffix!3669 input!7874 lt!2650100)) Nil!72744)))))

(declare-fun lt!2650634 () Unit!166904)

(declare-fun e!4505684 () Unit!166904)

(assert (=> b!7567416 (= lt!2650634 e!4505684)))

(declare-fun c!1396448 () Bool)

(assert (=> b!7567416 (= c!1396448 (= (size!42481 lt!2650100) (size!42481 input!7874)))))

(declare-fun lt!2650642 () Unit!166904)

(declare-fun lt!2650649 () Unit!166904)

(assert (=> b!7567416 (= lt!2650642 lt!2650649)))

(assert (=> b!7567416 (<= (size!42481 lt!2650100) (size!42481 input!7874))))

(assert (=> b!7567416 (= lt!2650649 (lemmaIsPrefixThenSmallerEqSize!1019 lt!2650100 input!7874))))

(declare-fun e!4505685 () tuple2!68864)

(declare-fun e!4505674 () tuple2!68864)

(assert (=> b!7567416 (= e!4505685 e!4505674)))

(declare-fun b!7567417 () Bool)

(assert (=> b!7567417 (= e!4505674 e!4505681)))

(declare-fun lt!2650651 () tuple2!68864)

(declare-fun call!693842 () tuple2!68864)

(assert (=> b!7567417 (= lt!2650651 call!693842)))

(declare-fun c!1396449 () Bool)

(assert (=> b!7567417 (= c!1396449 (isEmpty!41423 (_1!37735 lt!2650651)))))

(declare-fun b!7567418 () Bool)

(assert (=> b!7567418 (= e!4505681 lt!2650651)))

(declare-fun b!7567419 () Bool)

(declare-fun e!4505675 () tuple2!68864)

(assert (=> b!7567419 (= e!4505675 e!4505685)))

(declare-fun c!1396441 () Bool)

(assert (=> b!7567419 (= c!1396441 (= (size!42481 lt!2650100) (size!42481 input!7874)))))

(declare-fun b!7567420 () Bool)

(declare-fun Unit!166930 () Unit!166904)

(assert (=> b!7567420 (= e!4505684 Unit!166930)))

(declare-fun lt!2650660 () Unit!166904)

(declare-fun call!693833 () Unit!166904)

(assert (=> b!7567420 (= lt!2650660 call!693833)))

(declare-fun call!693843 () Bool)

(assert (=> b!7567420 call!693843))

(declare-fun lt!2650639 () Unit!166904)

(assert (=> b!7567420 (= lt!2650639 lt!2650660)))

(declare-fun lt!2650643 () Unit!166904)

(declare-fun call!693844 () Unit!166904)

(assert (=> b!7567420 (= lt!2650643 call!693844)))

(assert (=> b!7567420 (= input!7874 lt!2650100)))

(declare-fun lt!2650650 () Unit!166904)

(assert (=> b!7567420 (= lt!2650650 lt!2650643)))

(assert (=> b!7567420 false))

(declare-fun b!7567421 () Bool)

(declare-fun c!1396450 () Bool)

(assert (=> b!7567421 (= c!1396450 call!693836)))

(declare-fun lt!2650653 () Unit!166904)

(declare-fun lt!2650656 () Unit!166904)

(assert (=> b!7567421 (= lt!2650653 lt!2650656)))

(assert (=> b!7567421 (= input!7874 lt!2650100)))

(assert (=> b!7567421 (= lt!2650656 call!693844)))

(declare-fun lt!2650659 () Unit!166904)

(declare-fun lt!2650655 () Unit!166904)

(assert (=> b!7567421 (= lt!2650659 lt!2650655)))

(assert (=> b!7567421 call!693843))

(assert (=> b!7567421 (= lt!2650655 call!693833)))

(declare-fun e!4505679 () tuple2!68864)

(assert (=> b!7567421 (= e!4505685 e!4505679)))

(declare-fun call!693838 () List!72868)

(declare-fun call!693834 () Regex!19985)

(declare-fun bm!693832 () Bool)

(assert (=> bm!693832 (= call!693842 (findLongestMatchInner!2140 call!693834 lt!2650661 (+ (size!42481 lt!2650100) 1) call!693838 input!7874 (size!42481 input!7874)))))

(declare-fun bm!693833 () Bool)

(assert (=> bm!693833 (= call!693833 (lemmaIsPrefixRefl!3871 input!7874 input!7874))))

(declare-fun b!7567422 () Bool)

(declare-fun Unit!166931 () Unit!166904)

(assert (=> b!7567422 (= e!4505684 Unit!166931)))

(declare-fun bm!693834 () Bool)

(declare-fun call!693841 () C!40296)

(assert (=> bm!693834 (= call!693841 (head!15563 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun bm!693835 () Bool)

(assert (=> bm!693835 (= call!693834 (derivativeStep!5763 lt!2650106 call!693841))))

(declare-fun bm!693836 () Bool)

(assert (=> bm!693836 (= call!693836 (nullable!8719 lt!2650106))))

(declare-fun b!7567423 () Bool)

(declare-fun e!4505676 () Bool)

(assert (=> b!7567423 (= e!4505676 e!4505686)))

(declare-fun res!3031786 () Bool)

(assert (=> b!7567423 (=> res!3031786 e!4505686)))

(assert (=> b!7567423 (= res!3031786 (isEmpty!41423 (_1!37735 lt!2650641)))))

(declare-fun b!7567424 () Bool)

(assert (=> b!7567424 (= e!4505674 call!693842)))

(declare-fun b!7567425 () Bool)

(assert (=> b!7567425 (= e!4505675 (tuple2!68865 Nil!72744 input!7874))))

(declare-fun b!7567415 () Bool)

(assert (=> b!7567415 (= e!4505679 (tuple2!68865 lt!2650100 Nil!72744))))

(declare-fun d!2316918 () Bool)

(assert (=> d!2316918 e!4505676))

(declare-fun res!3031787 () Bool)

(assert (=> d!2316918 (=> (not res!3031787) (not e!4505676))))

(assert (=> d!2316918 (= res!3031787 (= (++!17489 (_1!37735 lt!2650641) (_2!37735 lt!2650641)) input!7874))))

(assert (=> d!2316918 (= lt!2650641 e!4505675)))

(declare-fun c!1396446 () Bool)

(assert (=> d!2316918 (= c!1396446 (lostCause!1773 lt!2650106))))

(declare-fun lt!2650657 () Unit!166904)

(declare-fun Unit!166932 () Unit!166904)

(assert (=> d!2316918 (= lt!2650657 Unit!166932)))

(assert (=> d!2316918 (= (getSuffix!3669 input!7874 lt!2650100) (getSuffix!3669 input!7874 lt!2650100))))

(declare-fun lt!2650633 () Unit!166904)

(declare-fun lt!2650646 () Unit!166904)

(assert (=> d!2316918 (= lt!2650633 lt!2650646)))

(declare-fun lt!2650658 () List!72868)

(assert (=> d!2316918 (= (getSuffix!3669 input!7874 lt!2650100) lt!2650658)))

(assert (=> d!2316918 (= lt!2650646 (lemmaSamePrefixThenSameSuffix!2891 lt!2650100 (getSuffix!3669 input!7874 lt!2650100) lt!2650100 lt!2650658 input!7874))))

(assert (=> d!2316918 (= lt!2650658 (getSuffix!3669 input!7874 lt!2650100))))

(declare-fun lt!2650640 () Unit!166904)

(declare-fun lt!2650648 () Unit!166904)

(assert (=> d!2316918 (= lt!2650640 lt!2650648)))

(assert (=> d!2316918 (isPrefix!6191 lt!2650100 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> d!2316918 (= lt!2650648 (lemmaConcatTwoListThenFirstIsPrefix!3744 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> d!2316918 (validRegex!10413 lt!2650106)))

(assert (=> d!2316918 (= (findLongestMatchInner!2140 lt!2650106 lt!2650100 (size!42481 lt!2650100) (getSuffix!3669 input!7874 lt!2650100) input!7874 (size!42481 input!7874)) lt!2650641)))

(declare-fun bm!693837 () Bool)

(assert (=> bm!693837 (= call!693838 (tail!15103 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun bm!693838 () Bool)

(assert (=> bm!693838 (= call!693843 (isPrefix!6191 input!7874 input!7874))))

(declare-fun bm!693839 () Bool)

(assert (=> bm!693839 (= call!693844 (lemmaIsPrefixSameLengthThenSameList!1536 input!7874 lt!2650100 input!7874))))

(declare-fun b!7567426 () Bool)

(assert (=> b!7567426 (= e!4505679 (tuple2!68865 Nil!72744 input!7874))))

(assert (= (and d!2316918 c!1396446) b!7567425))

(assert (= (and d!2316918 (not c!1396446)) b!7567419))

(assert (= (and b!7567419 c!1396441) b!7567421))

(assert (= (and b!7567419 (not c!1396441)) b!7567416))

(assert (= (and b!7567421 c!1396450) b!7567415))

(assert (= (and b!7567421 (not c!1396450)) b!7567426))

(assert (= (and b!7567416 c!1396448) b!7567420))

(assert (= (and b!7567416 (not c!1396448)) b!7567422))

(assert (= (and b!7567416 c!1396451) b!7567417))

(assert (= (and b!7567416 (not c!1396451)) b!7567424))

(assert (= (and b!7567417 c!1396449) b!7567414))

(assert (= (and b!7567417 (not c!1396449)) b!7567418))

(assert (= (or b!7567417 b!7567424) bm!693837))

(assert (= (or b!7567417 b!7567424) bm!693834))

(assert (= (or b!7567417 b!7567424) bm!693835))

(assert (= (or b!7567417 b!7567424) bm!693832))

(assert (= (or b!7567421 b!7567420) bm!693838))

(assert (= (or b!7567421 b!7567416) bm!693836))

(assert (= (or b!7567421 b!7567420) bm!693839))

(assert (= (or b!7567421 b!7567420) bm!693833))

(assert (= (and d!2316918 res!3031787) b!7567423))

(assert (= (and b!7567423 (not res!3031786)) b!7567413))

(assert (=> bm!693839 m!8128802))

(declare-fun m!8130044 () Bool)

(assert (=> b!7567423 m!8130044))

(assert (=> bm!693832 m!8128476))

(declare-fun m!8130048 () Bool)

(assert (=> bm!693832 m!8130048))

(assert (=> bm!693833 m!8128756))

(declare-fun m!8130052 () Bool)

(assert (=> b!7567417 m!8130052))

(assert (=> bm!693837 m!8128530))

(assert (=> bm!693837 m!8128810))

(declare-fun m!8130056 () Bool)

(assert (=> b!7567416 m!8130056))

(declare-fun m!8130058 () Bool)

(assert (=> b!7567416 m!8130058))

(assert (=> b!7567416 m!8128476))

(declare-fun m!8130060 () Bool)

(assert (=> b!7567416 m!8130060))

(assert (=> b!7567416 m!8128530))

(assert (=> b!7567416 m!8128818))

(assert (=> b!7567416 m!8128530))

(assert (=> b!7567416 m!8128818))

(assert (=> b!7567416 m!8128820))

(assert (=> b!7567416 m!8128820))

(assert (=> b!7567416 m!8128530))

(assert (=> b!7567416 m!8128810))

(assert (=> b!7567416 m!8128538))

(assert (=> b!7567416 m!8130056))

(assert (=> b!7567416 m!8128822))

(assert (=> b!7567416 m!8128530))

(assert (=> b!7567416 m!8128820))

(assert (=> b!7567416 m!8128824))

(assert (=> b!7567416 m!8128826))

(assert (=> bm!693834 m!8128530))

(assert (=> bm!693834 m!8128818))

(declare-fun m!8130064 () Bool)

(assert (=> b!7567413 m!8130064))

(assert (=> b!7567413 m!8128538))

(assert (=> bm!693838 m!8128780))

(assert (=> bm!693836 m!8128830))

(declare-fun m!8130066 () Bool)

(assert (=> bm!693835 m!8130066))

(assert (=> d!2316918 m!8128834))

(declare-fun m!8130068 () Bool)

(assert (=> d!2316918 m!8130068))

(assert (=> d!2316918 m!8128838))

(assert (=> d!2316918 m!8128840))

(assert (=> d!2316918 m!8128842))

(assert (=> d!2316918 m!8128530))

(assert (=> d!2316918 m!8128530))

(assert (=> d!2316918 m!8128838))

(assert (=> d!2316918 m!8128530))

(assert (=> d!2316918 m!8128844))

(assert (=> d!2316918 m!8128530))

(declare-fun m!8130078 () Bool)

(assert (=> d!2316918 m!8130078))

(assert (=> d!2316400 d!2316918))

(assert (=> d!2316400 d!2316538))

(declare-fun d!2316930 () Bool)

(assert (=> d!2316930 (= (isEmpty!41423 (_1!37735 lt!2650264)) ((_ is Nil!72744) (_1!37735 lt!2650264)))))

(assert (=> b!7566451 d!2316930))

(assert (=> d!2316490 d!2316488))

(declare-fun d!2316934 () Bool)

(assert (=> d!2316934 (isPrefix!6191 testedP!423 knownP!30)))

(assert (=> d!2316934 true))

(declare-fun _$69!429 () Unit!166904)

(assert (=> d!2316934 (= (choose!58519 knownP!30 testedP!423 input!7874) _$69!429)))

(declare-fun bs!1940516 () Bool)

(assert (= bs!1940516 d!2316934))

(assert (=> bs!1940516 m!8128504))

(assert (=> d!2316490 d!2316934))

(assert (=> d!2316490 d!2316492))

(assert (=> b!7566785 d!2316730))

(assert (=> b!7566785 d!2316598))

(declare-fun d!2316938 () Bool)

(assert (=> d!2316938 (isPrefix!6191 input!7874 input!7874)))

(declare-fun lt!2650671 () Unit!166904)

(declare-fun choose!58533 (List!72868 List!72868) Unit!166904)

(assert (=> d!2316938 (= lt!2650671 (choose!58533 input!7874 input!7874))))

(assert (=> d!2316938 (= (lemmaIsPrefixRefl!3871 input!7874 input!7874) lt!2650671)))

(declare-fun bs!1940518 () Bool)

(assert (= bs!1940518 d!2316938))

(assert (=> bs!1940518 m!8128780))

(declare-fun m!8130090 () Bool)

(assert (=> bs!1940518 m!8130090))

(assert (=> bm!693664 d!2316938))

(declare-fun bm!693843 () Bool)

(declare-fun call!693849 () Bool)

(declare-fun c!1396457 () Bool)

(assert (=> bm!693843 (= call!693849 (validRegex!10413 (ite c!1396457 (regOne!40483 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))) (regOne!40482 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))))

(declare-fun b!7567448 () Bool)

(declare-fun e!4505707 () Bool)

(declare-fun e!4505701 () Bool)

(assert (=> b!7567448 (= e!4505707 e!4505701)))

(assert (=> b!7567448 (= c!1396457 ((_ is Union!19985) (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))

(declare-fun b!7567449 () Bool)

(declare-fun e!4505703 () Bool)

(assert (=> b!7567449 (= e!4505707 e!4505703)))

(declare-fun res!3031803 () Bool)

(assert (=> b!7567449 (= res!3031803 (not (nullable!8719 (reg!20314 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))))

(assert (=> b!7567449 (=> (not res!3031803) (not e!4505703))))

(declare-fun b!7567450 () Bool)

(declare-fun res!3031802 () Bool)

(declare-fun e!4505706 () Bool)

(assert (=> b!7567450 (=> res!3031802 e!4505706)))

(assert (=> b!7567450 (= res!3031802 (not ((_ is Concat!28830) (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333)))))))

(assert (=> b!7567450 (= e!4505701 e!4505706)))

(declare-fun b!7567451 () Bool)

(declare-fun e!4505705 () Bool)

(assert (=> b!7567451 (= e!4505706 e!4505705)))

(declare-fun res!3031804 () Bool)

(assert (=> b!7567451 (=> (not res!3031804) (not e!4505705))))

(assert (=> b!7567451 (= res!3031804 call!693849)))

(declare-fun b!7567452 () Bool)

(declare-fun call!693848 () Bool)

(assert (=> b!7567452 (= e!4505705 call!693848)))

(declare-fun b!7567453 () Bool)

(declare-fun e!4505704 () Bool)

(assert (=> b!7567453 (= e!4505704 call!693848)))

(declare-fun b!7567454 () Bool)

(declare-fun call!693850 () Bool)

(assert (=> b!7567454 (= e!4505703 call!693850)))

(declare-fun b!7567455 () Bool)

(declare-fun res!3031805 () Bool)

(assert (=> b!7567455 (=> (not res!3031805) (not e!4505704))))

(assert (=> b!7567455 (= res!3031805 call!693849)))

(assert (=> b!7567455 (= e!4505701 e!4505704)))

(declare-fun b!7567456 () Bool)

(declare-fun e!4505702 () Bool)

(assert (=> b!7567456 (= e!4505702 e!4505707)))

(declare-fun c!1396456 () Bool)

(assert (=> b!7567456 (= c!1396456 ((_ is Star!19985) (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))

(declare-fun bm!693844 () Bool)

(assert (=> bm!693844 (= call!693850 (validRegex!10413 (ite c!1396456 (reg!20314 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))) (ite c!1396457 (regTwo!40483 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))) (regTwo!40482 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333)))))))))

(declare-fun bm!693845 () Bool)

(assert (=> bm!693845 (= call!693848 call!693850)))

(declare-fun d!2316940 () Bool)

(declare-fun res!3031801 () Bool)

(assert (=> d!2316940 (=> res!3031801 e!4505702)))

(assert (=> d!2316940 (= res!3031801 ((_ is ElementMatch!19985) (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))))))

(assert (=> d!2316940 (= (validRegex!10413 (ite c!1396273 (regOne!40483 r!24333) (regOne!40482 r!24333))) e!4505702)))

(assert (= (and d!2316940 (not res!3031801)) b!7567456))

(assert (= (and b!7567456 c!1396456) b!7567449))

(assert (= (and b!7567456 (not c!1396456)) b!7567448))

(assert (= (and b!7567449 res!3031803) b!7567454))

(assert (= (and b!7567448 c!1396457) b!7567455))

(assert (= (and b!7567448 (not c!1396457)) b!7567450))

(assert (= (and b!7567455 res!3031805) b!7567453))

(assert (= (and b!7567450 (not res!3031802)) b!7567451))

(assert (= (and b!7567451 res!3031804) b!7567452))

(assert (= (or b!7567455 b!7567451) bm!693843))

(assert (= (or b!7567453 b!7567452) bm!693845))

(assert (= (or b!7567454 bm!693845) bm!693844))

(declare-fun m!8130108 () Bool)

(assert (=> bm!693843 m!8130108))

(declare-fun m!8130110 () Bool)

(assert (=> b!7567449 m!8130110))

(declare-fun m!8130112 () Bool)

(assert (=> bm!693844 m!8130112))

(assert (=> bm!693751 d!2316940))

(declare-fun b!7567463 () Bool)

(declare-fun e!4505711 () Bool)

(declare-fun e!4505713 () Bool)

(assert (=> b!7567463 (= e!4505711 e!4505713)))

(declare-fun res!3031814 () Bool)

(assert (=> b!7567463 (=> res!3031814 e!4505713)))

(declare-fun call!693851 () Bool)

(assert (=> b!7567463 (= res!3031814 call!693851)))

(declare-fun d!2316948 () Bool)

(declare-fun e!4505717 () Bool)

(assert (=> d!2316948 e!4505717))

(declare-fun c!1396461 () Bool)

(assert (=> d!2316948 (= c!1396461 ((_ is EmptyExpr!19985) (derivativeStep!5763 r!24333 (head!15563 lt!2650099))))))

(declare-fun lt!2650674 () Bool)

(declare-fun e!4505712 () Bool)

(assert (=> d!2316948 (= lt!2650674 e!4505712)))

(declare-fun c!1396460 () Bool)

(assert (=> d!2316948 (= c!1396460 (isEmpty!41423 (tail!15103 lt!2650099)))))

(assert (=> d!2316948 (validRegex!10413 (derivativeStep!5763 r!24333 (head!15563 lt!2650099)))))

(assert (=> d!2316948 (= (matchR!9587 (derivativeStep!5763 r!24333 (head!15563 lt!2650099)) (tail!15103 lt!2650099)) lt!2650674)))

(declare-fun b!7567464 () Bool)

(declare-fun res!3031809 () Bool)

(assert (=> b!7567464 (=> res!3031809 e!4505713)))

(assert (=> b!7567464 (= res!3031809 (not (isEmpty!41423 (tail!15103 (tail!15103 lt!2650099)))))))

(declare-fun bm!693846 () Bool)

(assert (=> bm!693846 (= call!693851 (isEmpty!41423 (tail!15103 lt!2650099)))))

(declare-fun b!7567465 () Bool)

(assert (=> b!7567465 (= e!4505712 (matchR!9587 (derivativeStep!5763 (derivativeStep!5763 r!24333 (head!15563 lt!2650099)) (head!15563 (tail!15103 lt!2650099))) (tail!15103 (tail!15103 lt!2650099))))))

(declare-fun b!7567466 () Bool)

(declare-fun e!4505714 () Bool)

(assert (=> b!7567466 (= e!4505717 e!4505714)))

(declare-fun c!1396462 () Bool)

(assert (=> b!7567466 (= c!1396462 ((_ is EmptyLang!19985) (derivativeStep!5763 r!24333 (head!15563 lt!2650099))))))

(declare-fun b!7567467 () Bool)

(assert (=> b!7567467 (= e!4505714 (not lt!2650674))))

(declare-fun b!7567468 () Bool)

(assert (=> b!7567468 (= e!4505717 (= lt!2650674 call!693851))))

(declare-fun b!7567469 () Bool)

(declare-fun res!3031811 () Bool)

(declare-fun e!4505716 () Bool)

(assert (=> b!7567469 (=> (not res!3031811) (not e!4505716))))

(assert (=> b!7567469 (= res!3031811 (isEmpty!41423 (tail!15103 (tail!15103 lt!2650099))))))

(declare-fun b!7567470 () Bool)

(declare-fun res!3031808 () Bool)

(assert (=> b!7567470 (=> (not res!3031808) (not e!4505716))))

(assert (=> b!7567470 (= res!3031808 (not call!693851))))

(declare-fun b!7567471 () Bool)

(declare-fun res!3031815 () Bool)

(declare-fun e!4505715 () Bool)

(assert (=> b!7567471 (=> res!3031815 e!4505715)))

(assert (=> b!7567471 (= res!3031815 (not ((_ is ElementMatch!19985) (derivativeStep!5763 r!24333 (head!15563 lt!2650099)))))))

(assert (=> b!7567471 (= e!4505714 e!4505715)))

(declare-fun b!7567472 () Bool)

(assert (=> b!7567472 (= e!4505713 (not (= (head!15563 (tail!15103 lt!2650099)) (c!1396094 (derivativeStep!5763 r!24333 (head!15563 lt!2650099))))))))

(declare-fun b!7567473 () Bool)

(assert (=> b!7567473 (= e!4505712 (nullable!8719 (derivativeStep!5763 r!24333 (head!15563 lt!2650099))))))

(declare-fun b!7567474 () Bool)

(declare-fun res!3031813 () Bool)

(assert (=> b!7567474 (=> res!3031813 e!4505715)))

(assert (=> b!7567474 (= res!3031813 e!4505716)))

(declare-fun res!3031810 () Bool)

(assert (=> b!7567474 (=> (not res!3031810) (not e!4505716))))

(assert (=> b!7567474 (= res!3031810 lt!2650674)))

(declare-fun b!7567475 () Bool)

(assert (=> b!7567475 (= e!4505716 (= (head!15563 (tail!15103 lt!2650099)) (c!1396094 (derivativeStep!5763 r!24333 (head!15563 lt!2650099)))))))

(declare-fun b!7567476 () Bool)

(assert (=> b!7567476 (= e!4505715 e!4505711)))

(declare-fun res!3031812 () Bool)

(assert (=> b!7567476 (=> (not res!3031812) (not e!4505711))))

(assert (=> b!7567476 (= res!3031812 (not lt!2650674))))

(assert (= (and d!2316948 c!1396460) b!7567473))

(assert (= (and d!2316948 (not c!1396460)) b!7567465))

(assert (= (and d!2316948 c!1396461) b!7567468))

(assert (= (and d!2316948 (not c!1396461)) b!7567466))

(assert (= (and b!7567466 c!1396462) b!7567467))

(assert (= (and b!7567466 (not c!1396462)) b!7567471))

(assert (= (and b!7567471 (not res!3031815)) b!7567474))

(assert (= (and b!7567474 res!3031810) b!7567470))

(assert (= (and b!7567470 res!3031808) b!7567469))

(assert (= (and b!7567469 res!3031811) b!7567475))

(assert (= (and b!7567474 (not res!3031813)) b!7567476))

(assert (= (and b!7567476 res!3031812) b!7567463))

(assert (= (and b!7567463 (not res!3031814)) b!7567464))

(assert (= (and b!7567464 (not res!3031809)) b!7567472))

(assert (= (or b!7567468 b!7567463 b!7567470) bm!693846))

(assert (=> b!7567464 m!8128498))

(declare-fun m!8130116 () Bool)

(assert (=> b!7567464 m!8130116))

(assert (=> b!7567464 m!8130116))

(declare-fun m!8130118 () Bool)

(assert (=> b!7567464 m!8130118))

(assert (=> b!7567473 m!8128900))

(declare-fun m!8130120 () Bool)

(assert (=> b!7567473 m!8130120))

(assert (=> b!7567465 m!8128498))

(declare-fun m!8130122 () Bool)

(assert (=> b!7567465 m!8130122))

(assert (=> b!7567465 m!8128900))

(assert (=> b!7567465 m!8130122))

(declare-fun m!8130124 () Bool)

(assert (=> b!7567465 m!8130124))

(assert (=> b!7567465 m!8128498))

(assert (=> b!7567465 m!8130116))

(assert (=> b!7567465 m!8130124))

(assert (=> b!7567465 m!8130116))

(declare-fun m!8130126 () Bool)

(assert (=> b!7567465 m!8130126))

(assert (=> b!7567472 m!8128498))

(assert (=> b!7567472 m!8130122))

(assert (=> d!2316948 m!8128498))

(assert (=> d!2316948 m!8128898))

(assert (=> d!2316948 m!8128900))

(declare-fun m!8130128 () Bool)

(assert (=> d!2316948 m!8130128))

(assert (=> b!7567475 m!8128498))

(assert (=> b!7567475 m!8130122))

(assert (=> b!7567469 m!8128498))

(assert (=> b!7567469 m!8130116))

(assert (=> b!7567469 m!8130116))

(assert (=> b!7567469 m!8130118))

(assert (=> bm!693846 m!8128498))

(assert (=> bm!693846 m!8128898))

(assert (=> b!7566537 d!2316948))

(declare-fun bm!693855 () Bool)

(declare-fun call!693862 () Regex!19985)

(declare-fun call!693863 () Regex!19985)

(assert (=> bm!693855 (= call!693862 call!693863)))

(declare-fun bm!693856 () Bool)

(declare-fun call!693860 () Regex!19985)

(assert (=> bm!693856 (= call!693860 call!693862)))

(declare-fun c!1396473 () Bool)

(declare-fun call!693861 () Regex!19985)

(declare-fun bm!693857 () Bool)

(assert (=> bm!693857 (= call!693861 (derivativeStep!5763 (ite c!1396473 (regOne!40483 r!24333) (regTwo!40482 r!24333)) (head!15563 lt!2650099)))))

(declare-fun bm!693858 () Bool)

(declare-fun c!1396469 () Bool)

(assert (=> bm!693858 (= call!693863 (derivativeStep!5763 (ite c!1396473 (regTwo!40483 r!24333) (ite c!1396469 (reg!20314 r!24333) (regOne!40482 r!24333))) (head!15563 lt!2650099)))))

(declare-fun b!7567491 () Bool)

(assert (=> b!7567491 (= c!1396473 ((_ is Union!19985) r!24333))))

(declare-fun e!4505726 () Regex!19985)

(declare-fun e!4505730 () Regex!19985)

(assert (=> b!7567491 (= e!4505726 e!4505730)))

(declare-fun b!7567492 () Bool)

(declare-fun e!4505728 () Regex!19985)

(assert (=> b!7567492 (= e!4505728 (Union!19985 (Concat!28830 call!693860 (regTwo!40482 r!24333)) call!693861))))

(declare-fun b!7567493 () Bool)

(declare-fun e!4505727 () Regex!19985)

(assert (=> b!7567493 (= e!4505727 EmptyLang!19985)))

(declare-fun d!2316952 () Bool)

(declare-fun lt!2650703 () Regex!19985)

(assert (=> d!2316952 (validRegex!10413 lt!2650703)))

(assert (=> d!2316952 (= lt!2650703 e!4505727)))

(declare-fun c!1396470 () Bool)

(assert (=> d!2316952 (= c!1396470 (or ((_ is EmptyExpr!19985) r!24333) ((_ is EmptyLang!19985) r!24333)))))

(assert (=> d!2316952 (validRegex!10413 r!24333)))

(assert (=> d!2316952 (= (derivativeStep!5763 r!24333 (head!15563 lt!2650099)) lt!2650703)))

(declare-fun b!7567494 () Bool)

(assert (=> b!7567494 (= e!4505726 (ite (= (head!15563 lt!2650099) (c!1396094 r!24333)) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567495 () Bool)

(assert (=> b!7567495 (= e!4505730 (Union!19985 call!693861 call!693863))))

(declare-fun b!7567496 () Bool)

(assert (=> b!7567496 (= e!4505728 (Union!19985 (Concat!28830 call!693860 (regTwo!40482 r!24333)) EmptyLang!19985))))

(declare-fun b!7567497 () Bool)

(declare-fun e!4505729 () Regex!19985)

(assert (=> b!7567497 (= e!4505729 (Concat!28830 call!693862 r!24333))))

(declare-fun b!7567498 () Bool)

(assert (=> b!7567498 (= e!4505727 e!4505726)))

(declare-fun c!1396472 () Bool)

(assert (=> b!7567498 (= c!1396472 ((_ is ElementMatch!19985) r!24333))))

(declare-fun b!7567499 () Bool)

(declare-fun c!1396471 () Bool)

(assert (=> b!7567499 (= c!1396471 (nullable!8719 (regOne!40482 r!24333)))))

(assert (=> b!7567499 (= e!4505729 e!4505728)))

(declare-fun b!7567500 () Bool)

(assert (=> b!7567500 (= e!4505730 e!4505729)))

(assert (=> b!7567500 (= c!1396469 ((_ is Star!19985) r!24333))))

(assert (= (and d!2316952 c!1396470) b!7567493))

(assert (= (and d!2316952 (not c!1396470)) b!7567498))

(assert (= (and b!7567498 c!1396472) b!7567494))

(assert (= (and b!7567498 (not c!1396472)) b!7567491))

(assert (= (and b!7567491 c!1396473) b!7567495))

(assert (= (and b!7567491 (not c!1396473)) b!7567500))

(assert (= (and b!7567500 c!1396469) b!7567497))

(assert (= (and b!7567500 (not c!1396469)) b!7567499))

(assert (= (and b!7567499 c!1396471) b!7567492))

(assert (= (and b!7567499 (not c!1396471)) b!7567496))

(assert (= (or b!7567492 b!7567496) bm!693856))

(assert (= (or b!7567497 bm!693856) bm!693855))

(assert (= (or b!7567495 bm!693855) bm!693858))

(assert (= (or b!7567495 b!7567492) bm!693857))

(assert (=> bm!693857 m!8128512))

(declare-fun m!8130130 () Bool)

(assert (=> bm!693857 m!8130130))

(assert (=> bm!693858 m!8128512))

(declare-fun m!8130138 () Bool)

(assert (=> bm!693858 m!8130138))

(declare-fun m!8130142 () Bool)

(assert (=> d!2316952 m!8130142))

(assert (=> d!2316952 m!8128526))

(assert (=> b!7567499 m!8129140))

(assert (=> b!7566537 d!2316952))

(assert (=> b!7566537 d!2316506))

(assert (=> b!7566537 d!2316500))

(assert (=> b!7566764 d!2316584))

(assert (=> b!7566764 d!2316470))

(declare-fun bm!693859 () Bool)

(declare-fun call!693866 () Regex!19985)

(declare-fun call!693867 () Regex!19985)

(assert (=> bm!693859 (= call!693866 call!693867)))

(declare-fun bm!693860 () Bool)

(declare-fun call!693864 () Regex!19985)

(assert (=> bm!693860 (= call!693864 call!693866)))

(declare-fun bm!693861 () Bool)

(declare-fun c!1396478 () Bool)

(declare-fun call!693865 () Regex!19985)

(assert (=> bm!693861 (= call!693865 (derivativeStep!5763 (ite c!1396478 (regOne!40483 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))) (regTwo!40482 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))) lt!2650090))))

(declare-fun c!1396474 () Bool)

(declare-fun bm!693862 () Bool)

(assert (=> bm!693862 (= call!693867 (derivativeStep!5763 (ite c!1396478 (regTwo!40483 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))) (ite c!1396474 (reg!20314 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))) (regOne!40482 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))))) lt!2650090))))

(declare-fun b!7567501 () Bool)

(assert (=> b!7567501 (= c!1396478 ((_ is Union!19985) (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))))))

(declare-fun e!4505731 () Regex!19985)

(declare-fun e!4505735 () Regex!19985)

(assert (=> b!7567501 (= e!4505731 e!4505735)))

(declare-fun b!7567502 () Bool)

(declare-fun e!4505733 () Regex!19985)

(assert (=> b!7567502 (= e!4505733 (Union!19985 (Concat!28830 call!693864 (regTwo!40482 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))) call!693865))))

(declare-fun b!7567503 () Bool)

(declare-fun e!4505732 () Regex!19985)

(assert (=> b!7567503 (= e!4505732 EmptyLang!19985)))

(declare-fun d!2316954 () Bool)

(declare-fun lt!2650704 () Regex!19985)

(assert (=> d!2316954 (validRegex!10413 lt!2650704)))

(assert (=> d!2316954 (= lt!2650704 e!4505732)))

(declare-fun c!1396475 () Bool)

(assert (=> d!2316954 (= c!1396475 (or ((_ is EmptyExpr!19985) (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))) ((_ is EmptyLang!19985) (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))))))

(assert (=> d!2316954 (validRegex!10413 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))))

(assert (=> d!2316954 (= (derivativeStep!5763 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))) lt!2650090) lt!2650704)))

(declare-fun b!7567504 () Bool)

(assert (=> b!7567504 (= e!4505731 (ite (= lt!2650090 (c!1396094 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))) EmptyExpr!19985 EmptyLang!19985))))

(declare-fun b!7567505 () Bool)

(assert (=> b!7567505 (= e!4505735 (Union!19985 call!693865 call!693867))))

(declare-fun b!7567506 () Bool)

(assert (=> b!7567506 (= e!4505733 (Union!19985 (Concat!28830 call!693864 (regTwo!40482 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))) EmptyLang!19985))))

(declare-fun e!4505734 () Regex!19985)

(declare-fun b!7567507 () Bool)

(assert (=> b!7567507 (= e!4505734 (Concat!28830 call!693866 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))))))

(declare-fun b!7567508 () Bool)

(assert (=> b!7567508 (= e!4505732 e!4505731)))

(declare-fun c!1396477 () Bool)

(assert (=> b!7567508 (= c!1396477 ((_ is ElementMatch!19985) (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))))))

(declare-fun b!7567509 () Bool)

(declare-fun c!1396476 () Bool)

(assert (=> b!7567509 (= c!1396476 (nullable!8719 (regOne!40482 (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333))))))))

(assert (=> b!7567509 (= e!4505734 e!4505733)))

(declare-fun b!7567510 () Bool)

(assert (=> b!7567510 (= e!4505735 e!4505734)))

(assert (=> b!7567510 (= c!1396474 ((_ is Star!19985) (ite c!1396247 (regTwo!40483 r!24333) (ite c!1396243 (reg!20314 r!24333) (regOne!40482 r!24333)))))))

(assert (= (and d!2316954 c!1396475) b!7567503))

(assert (= (and d!2316954 (not c!1396475)) b!7567508))

(assert (= (and b!7567508 c!1396477) b!7567504))

(assert (= (and b!7567508 (not c!1396477)) b!7567501))

(assert (= (and b!7567501 c!1396478) b!7567505))

(assert (= (and b!7567501 (not c!1396478)) b!7567510))

(assert (= (and b!7567510 c!1396474) b!7567507))

(assert (= (and b!7567510 (not c!1396474)) b!7567509))

(assert (= (and b!7567509 c!1396476) b!7567502))

(assert (= (and b!7567509 (not c!1396476)) b!7567506))

(assert (= (or b!7567502 b!7567506) bm!693860))

(assert (= (or b!7567507 bm!693860) bm!693859))

(assert (= (or b!7567505 bm!693859) bm!693862))

(assert (= (or b!7567505 b!7567502) bm!693861))

(declare-fun m!8130190 () Bool)

(assert (=> bm!693861 m!8130190))

(declare-fun m!8130192 () Bool)

(assert (=> bm!693862 m!8130192))

(declare-fun m!8130194 () Bool)

(assert (=> d!2316954 m!8130194))

(declare-fun m!8130196 () Bool)

(assert (=> d!2316954 m!8130196))

(declare-fun m!8130198 () Bool)

(assert (=> b!7567509 m!8130198))

(assert (=> bm!693734 d!2316954))

(declare-fun d!2316958 () Bool)

(declare-fun c!1396480 () Bool)

(assert (=> d!2316958 (= c!1396480 ((_ is Nil!72744) lt!2650470))))

(declare-fun e!4505737 () (InoxSet C!40296))

(assert (=> d!2316958 (= (content!15406 lt!2650470) e!4505737)))

(declare-fun b!7567513 () Bool)

(assert (=> b!7567513 (= e!4505737 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567514 () Bool)

(assert (=> b!7567514 (= e!4505737 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650470) true) (content!15406 (t!387601 lt!2650470))))))

(assert (= (and d!2316958 c!1396480) b!7567513))

(assert (= (and d!2316958 (not c!1396480)) b!7567514))

(declare-fun m!8130204 () Bool)

(assert (=> b!7567514 m!8130204))

(declare-fun m!8130206 () Bool)

(assert (=> b!7567514 m!8130206))

(assert (=> d!2316586 d!2316958))

(assert (=> d!2316586 d!2316660))

(declare-fun d!2316962 () Bool)

(declare-fun c!1396482 () Bool)

(assert (=> d!2316962 (= c!1396482 ((_ is Nil!72744) lt!2650101))))

(declare-fun e!4505739 () (InoxSet C!40296))

(assert (=> d!2316962 (= (content!15406 lt!2650101) e!4505739)))

(declare-fun b!7567517 () Bool)

(assert (=> b!7567517 (= e!4505739 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567518 () Bool)

(assert (=> b!7567518 (= e!4505739 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650101) true) (content!15406 (t!387601 lt!2650101))))))

(assert (= (and d!2316962 c!1396482) b!7567517))

(assert (= (and d!2316962 (not c!1396482)) b!7567518))

(declare-fun m!8130212 () Bool)

(assert (=> b!7567518 m!8130212))

(declare-fun m!8130214 () Bool)

(assert (=> b!7567518 m!8130214))

(assert (=> d!2316586 d!2316962))

(assert (=> d!2316576 d!2316570))

(declare-fun d!2316966 () Bool)

(assert (=> d!2316966 (isPrefix!6191 lt!2650100 knownP!30)))

(assert (=> d!2316966 true))

(declare-fun _$69!430 () Unit!166904)

(assert (=> d!2316966 (= (choose!58519 knownP!30 lt!2650100 input!7874) _$69!430)))

(declare-fun bs!1940520 () Bool)

(assert (= bs!1940520 d!2316966))

(assert (=> bs!1940520 m!8128560))

(assert (=> d!2316576 d!2316966))

(assert (=> d!2316576 d!2316492))

(declare-fun d!2316968 () Bool)

(assert (=> d!2316968 (= (nullable!8719 baseR!101) (nullableFct!3480 baseR!101))))

(declare-fun bs!1940521 () Bool)

(assert (= bs!1940521 d!2316968))

(declare-fun m!8130224 () Bool)

(assert (=> bs!1940521 m!8130224))

(assert (=> b!7566789 d!2316968))

(assert (=> bm!693667 d!2316656))

(declare-fun d!2316972 () Bool)

(declare-fun lt!2650706 () Int)

(assert (=> d!2316972 (>= lt!2650706 0)))

(declare-fun e!4505743 () Int)

(assert (=> d!2316972 (= lt!2650706 e!4505743)))

(declare-fun c!1396483 () Bool)

(assert (=> d!2316972 (= c!1396483 ((_ is Nil!72744) lt!2650294))))

(assert (=> d!2316972 (= (size!42481 lt!2650294) lt!2650706)))

(declare-fun b!7567523 () Bool)

(assert (=> b!7567523 (= e!4505743 0)))

(declare-fun b!7567524 () Bool)

(assert (=> b!7567524 (= e!4505743 (+ 1 (size!42481 (t!387601 lt!2650294))))))

(assert (= (and d!2316972 c!1396483) b!7567523))

(assert (= (and d!2316972 (not c!1396483)) b!7567524))

(declare-fun m!8130226 () Bool)

(assert (=> b!7567524 m!8130226))

(assert (=> b!7566477 d!2316972))

(assert (=> b!7566477 d!2316534))

(declare-fun d!2316976 () Bool)

(declare-fun lt!2650708 () Int)

(assert (=> d!2316976 (>= lt!2650708 0)))

(declare-fun e!4505747 () Int)

(assert (=> d!2316976 (= lt!2650708 e!4505747)))

(declare-fun c!1396484 () Bool)

(assert (=> d!2316976 (= c!1396484 ((_ is Nil!72744) lt!2650104))))

(assert (=> d!2316976 (= (size!42481 lt!2650104) lt!2650708)))

(declare-fun b!7567529 () Bool)

(assert (=> b!7567529 (= e!4505747 0)))

(declare-fun b!7567530 () Bool)

(assert (=> b!7567530 (= e!4505747 (+ 1 (size!42481 (t!387601 lt!2650104))))))

(assert (= (and d!2316976 c!1396484) b!7567529))

(assert (= (and d!2316976 (not c!1396484)) b!7567530))

(declare-fun m!8130228 () Bool)

(assert (=> b!7567530 m!8130228))

(assert (=> b!7566477 d!2316976))

(declare-fun b!7567533 () Bool)

(declare-fun res!3031827 () Bool)

(declare-fun e!4505748 () Bool)

(assert (=> b!7567533 (=> (not res!3031827) (not e!4505748))))

(declare-fun lt!2650709 () List!72868)

(assert (=> b!7567533 (= res!3031827 (= (size!42481 lt!2650709) (+ (size!42481 knownP!30) (size!42481 lt!2650467))))))

(declare-fun d!2316978 () Bool)

(assert (=> d!2316978 e!4505748))

(declare-fun res!3031826 () Bool)

(assert (=> d!2316978 (=> (not res!3031826) (not e!4505748))))

(assert (=> d!2316978 (= res!3031826 (= (content!15406 lt!2650709) ((_ map or) (content!15406 knownP!30) (content!15406 lt!2650467))))))

(declare-fun e!4505749 () List!72868)

(assert (=> d!2316978 (= lt!2650709 e!4505749)))

(declare-fun c!1396485 () Bool)

(assert (=> d!2316978 (= c!1396485 ((_ is Nil!72744) knownP!30))))

(assert (=> d!2316978 (= (++!17489 knownP!30 lt!2650467) lt!2650709)))

(declare-fun b!7567534 () Bool)

(assert (=> b!7567534 (= e!4505748 (or (not (= lt!2650467 Nil!72744)) (= lt!2650709 knownP!30)))))

(declare-fun b!7567532 () Bool)

(assert (=> b!7567532 (= e!4505749 (Cons!72744 (h!79192 knownP!30) (++!17489 (t!387601 knownP!30) lt!2650467)))))

(declare-fun b!7567531 () Bool)

(assert (=> b!7567531 (= e!4505749 lt!2650467)))

(assert (= (and d!2316978 c!1396485) b!7567531))

(assert (= (and d!2316978 (not c!1396485)) b!7567532))

(assert (= (and d!2316978 res!3031826) b!7567533))

(assert (= (and b!7567533 res!3031827) b!7567534))

(declare-fun m!8130236 () Bool)

(assert (=> b!7567533 m!8130236))

(assert (=> b!7567533 m!8128474))

(declare-fun m!8130238 () Bool)

(assert (=> b!7567533 m!8130238))

(declare-fun m!8130240 () Bool)

(assert (=> d!2316978 m!8130240))

(assert (=> d!2316978 m!8129156))

(declare-fun m!8130242 () Bool)

(assert (=> d!2316978 m!8130242))

(declare-fun m!8130244 () Bool)

(assert (=> b!7567532 m!8130244))

(assert (=> d!2316578 d!2316978))

(assert (=> d!2316578 d!2316584))

(assert (=> d!2316578 d!2316538))

(assert (=> b!7566541 d!2316706))

(assert (=> b!7566541 d!2316500))

(declare-fun b!7567541 () Bool)

(declare-fun res!3031829 () Bool)

(declare-fun e!4505752 () Bool)

(assert (=> b!7567541 (=> (not res!3031829) (not e!4505752))))

(declare-fun lt!2650712 () List!72868)

(assert (=> b!7567541 (= res!3031829 (= (size!42481 lt!2650712) (+ (size!42481 (t!387601 lt!2650108)) (size!42481 lt!2650116))))))

(declare-fun d!2316984 () Bool)

(assert (=> d!2316984 e!4505752))

(declare-fun res!3031828 () Bool)

(assert (=> d!2316984 (=> (not res!3031828) (not e!4505752))))

(assert (=> d!2316984 (= res!3031828 (= (content!15406 lt!2650712) ((_ map or) (content!15406 (t!387601 lt!2650108)) (content!15406 lt!2650116))))))

(declare-fun e!4505753 () List!72868)

(assert (=> d!2316984 (= lt!2650712 e!4505753)))

(declare-fun c!1396488 () Bool)

(assert (=> d!2316984 (= c!1396488 ((_ is Nil!72744) (t!387601 lt!2650108)))))

(assert (=> d!2316984 (= (++!17489 (t!387601 lt!2650108) lt!2650116) lt!2650712)))

(declare-fun b!7567542 () Bool)

(assert (=> b!7567542 (= e!4505752 (or (not (= lt!2650116 Nil!72744)) (= lt!2650712 (t!387601 lt!2650108))))))

(declare-fun b!7567540 () Bool)

(assert (=> b!7567540 (= e!4505753 (Cons!72744 (h!79192 (t!387601 lt!2650108)) (++!17489 (t!387601 (t!387601 lt!2650108)) lt!2650116)))))

(declare-fun b!7567539 () Bool)

(assert (=> b!7567539 (= e!4505753 lt!2650116)))

(assert (= (and d!2316984 c!1396488) b!7567539))

(assert (= (and d!2316984 (not c!1396488)) b!7567540))

(assert (= (and d!2316984 res!3031828) b!7567541))

(assert (= (and b!7567541 res!3031829) b!7567542))

(declare-fun m!8130250 () Bool)

(assert (=> b!7567541 m!8130250))

(assert (=> b!7567541 m!8129792))

(assert (=> b!7567541 m!8128942))

(declare-fun m!8130252 () Bool)

(assert (=> d!2316984 m!8130252))

(declare-fun m!8130254 () Bool)

(assert (=> d!2316984 m!8130254))

(assert (=> d!2316984 m!8128948))

(declare-fun m!8130256 () Bool)

(assert (=> b!7567540 m!8130256))

(assert (=> b!7566594 d!2316984))

(declare-fun d!2316990 () Bool)

(declare-fun c!1396491 () Bool)

(assert (=> d!2316990 (= c!1396491 ((_ is Nil!72744) lt!2650458))))

(declare-fun e!4505757 () (InoxSet C!40296))

(assert (=> d!2316990 (= (content!15406 lt!2650458) e!4505757)))

(declare-fun b!7567549 () Bool)

(assert (=> b!7567549 (= e!4505757 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567550 () Bool)

(assert (=> b!7567550 (= e!4505757 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650458) true) (content!15406 (t!387601 lt!2650458))))))

(assert (= (and d!2316990 c!1396491) b!7567549))

(assert (= (and d!2316990 (not c!1396491)) b!7567550))

(declare-fun m!8130260 () Bool)

(assert (=> b!7567550 m!8130260))

(declare-fun m!8130262 () Bool)

(assert (=> b!7567550 m!8130262))

(assert (=> d!2316562 d!2316990))

(declare-fun d!2316992 () Bool)

(declare-fun c!1396492 () Bool)

(assert (=> d!2316992 (= c!1396492 ((_ is Nil!72744) knownP!30))))

(declare-fun e!4505758 () (InoxSet C!40296))

(assert (=> d!2316992 (= (content!15406 knownP!30) e!4505758)))

(declare-fun b!7567551 () Bool)

(assert (=> b!7567551 (= e!4505758 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567552 () Bool)

(assert (=> b!7567552 (= e!4505758 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 knownP!30) true) (content!15406 (t!387601 knownP!30))))))

(assert (= (and d!2316992 c!1396492) b!7567551))

(assert (= (and d!2316992 (not c!1396492)) b!7567552))

(declare-fun m!8130272 () Bool)

(assert (=> b!7567552 m!8130272))

(assert (=> b!7567552 m!8129410))

(assert (=> d!2316562 d!2316992))

(assert (=> d!2316562 d!2316846))

(assert (=> b!7566566 d!2316538))

(assert (=> b!7566566 d!2316534))

(declare-fun d!2316998 () Bool)

(assert (=> d!2316998 (= (nullable!8719 lt!2650106) (nullableFct!3480 lt!2650106))))

(declare-fun bs!1940522 () Bool)

(assert (= bs!1940522 d!2316998))

(declare-fun m!8130274 () Bool)

(assert (=> bs!1940522 m!8130274))

(assert (=> bm!693675 d!2316998))

(assert (=> bm!693669 d!2316848))

(assert (=> b!7566572 d!2316696))

(assert (=> b!7566572 d!2316664))

(declare-fun b!7567559 () Bool)

(declare-fun res!3031835 () Bool)

(declare-fun e!4505761 () Bool)

(assert (=> b!7567559 (=> (not res!3031835) (not e!4505761))))

(declare-fun lt!2650716 () List!72868)

(assert (=> b!7567559 (= res!3031835 (= (size!42481 lt!2650716) (+ (size!42481 testedP!423) (size!42481 lt!2650454))))))

(declare-fun d!2317000 () Bool)

(assert (=> d!2317000 e!4505761))

(declare-fun res!3031834 () Bool)

(assert (=> d!2317000 (=> (not res!3031834) (not e!4505761))))

(assert (=> d!2317000 (= res!3031834 (= (content!15406 lt!2650716) ((_ map or) (content!15406 testedP!423) (content!15406 lt!2650454))))))

(declare-fun e!4505762 () List!72868)

(assert (=> d!2317000 (= lt!2650716 e!4505762)))

(declare-fun c!1396494 () Bool)

(assert (=> d!2317000 (= c!1396494 ((_ is Nil!72744) testedP!423))))

(assert (=> d!2317000 (= (++!17489 testedP!423 lt!2650454) lt!2650716)))

(declare-fun b!7567560 () Bool)

(assert (=> b!7567560 (= e!4505761 (or (not (= lt!2650454 Nil!72744)) (= lt!2650716 testedP!423)))))

(declare-fun b!7567558 () Bool)

(assert (=> b!7567558 (= e!4505762 (Cons!72744 (h!79192 testedP!423) (++!17489 (t!387601 testedP!423) lt!2650454)))))

(declare-fun b!7567557 () Bool)

(assert (=> b!7567557 (= e!4505762 lt!2650454)))

(assert (= (and d!2317000 c!1396494) b!7567557))

(assert (= (and d!2317000 (not c!1396494)) b!7567558))

(assert (= (and d!2317000 res!3031834) b!7567559))

(assert (= (and b!7567559 res!3031835) b!7567560))

(declare-fun m!8130288 () Bool)

(assert (=> b!7567559 m!8130288))

(assert (=> b!7567559 m!8128472))

(declare-fun m!8130292 () Bool)

(assert (=> b!7567559 m!8130292))

(declare-fun m!8130294 () Bool)

(assert (=> d!2317000 m!8130294))

(assert (=> d!2317000 m!8128876))

(declare-fun m!8130296 () Bool)

(assert (=> d!2317000 m!8130296))

(declare-fun m!8130298 () Bool)

(assert (=> b!7567558 m!8130298))

(assert (=> d!2316556 d!2317000))

(assert (=> d!2316556 d!2316584))

(assert (=> d!2316556 d!2316534))

(declare-fun b!7567568 () Bool)

(declare-fun e!4505767 () Bool)

(assert (=> b!7567568 (= e!4505767 (>= (size!42481 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100))) (size!42481 lt!2650100)))))

(declare-fun b!7567565 () Bool)

(declare-fun e!4505766 () Bool)

(declare-fun e!4505768 () Bool)

(assert (=> b!7567565 (= e!4505766 e!4505768)))

(declare-fun res!3031840 () Bool)

(assert (=> b!7567565 (=> (not res!3031840) (not e!4505768))))

(assert (=> b!7567565 (= res!3031840 (not ((_ is Nil!72744) (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))))

(declare-fun d!2317004 () Bool)

(assert (=> d!2317004 e!4505767))

(declare-fun res!3031842 () Bool)

(assert (=> d!2317004 (=> res!3031842 e!4505767)))

(declare-fun lt!2650718 () Bool)

(assert (=> d!2317004 (= res!3031842 (not lt!2650718))))

(assert (=> d!2317004 (= lt!2650718 e!4505766)))

(declare-fun res!3031843 () Bool)

(assert (=> d!2317004 (=> res!3031843 e!4505766)))

(assert (=> d!2317004 (= res!3031843 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2317004 (= (isPrefix!6191 lt!2650100 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100))) lt!2650718)))

(declare-fun b!7567567 () Bool)

(assert (=> b!7567567 (= e!4505768 (isPrefix!6191 (tail!15103 lt!2650100) (tail!15103 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))))

(declare-fun b!7567566 () Bool)

(declare-fun res!3031841 () Bool)

(assert (=> b!7567566 (=> (not res!3031841) (not e!4505768))))

(assert (=> b!7567566 (= res!3031841 (= (head!15563 lt!2650100) (head!15563 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))))

(assert (= (and d!2317004 (not res!3031843)) b!7567565))

(assert (= (and b!7567565 res!3031840) b!7567566))

(assert (= (and b!7567566 res!3031841) b!7567567))

(assert (= (and d!2317004 (not res!3031842)) b!7567568))

(assert (=> b!7567568 m!8128838))

(declare-fun m!8130304 () Bool)

(assert (=> b!7567568 m!8130304))

(assert (=> b!7567568 m!8128538))

(assert (=> b!7567567 m!8129176))

(assert (=> b!7567567 m!8128838))

(declare-fun m!8130306 () Bool)

(assert (=> b!7567567 m!8130306))

(assert (=> b!7567567 m!8129176))

(assert (=> b!7567567 m!8130306))

(declare-fun m!8130310 () Bool)

(assert (=> b!7567567 m!8130310))

(assert (=> b!7567566 m!8129180))

(assert (=> b!7567566 m!8128838))

(declare-fun m!8130314 () Bool)

(assert (=> b!7567566 m!8130314))

(assert (=> d!2316468 d!2317004))

(declare-fun d!2317008 () Bool)

(assert (=> d!2317008 (isPrefix!6191 lt!2650100 (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(declare-fun lt!2650719 () Unit!166904)

(assert (=> d!2317008 (= lt!2650719 (choose!58531 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)))))

(assert (=> d!2317008 (= (lemmaConcatTwoListThenFirstIsPrefix!3744 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)) lt!2650719)))

(declare-fun bs!1940523 () Bool)

(assert (= bs!1940523 d!2317008))

(assert (=> bs!1940523 m!8128530))

(assert (=> bs!1940523 m!8128838))

(assert (=> bs!1940523 m!8128838))

(assert (=> bs!1940523 m!8128840))

(assert (=> bs!1940523 m!8128530))

(declare-fun m!8130316 () Bool)

(assert (=> bs!1940523 m!8130316))

(assert (=> d!2316468 d!2317008))

(declare-fun b!7567571 () Bool)

(declare-fun res!3031845 () Bool)

(declare-fun e!4505769 () Bool)

(assert (=> b!7567571 (=> (not res!3031845) (not e!4505769))))

(declare-fun lt!2650720 () List!72868)

(assert (=> b!7567571 (= res!3031845 (= (size!42481 lt!2650720) (+ (size!42481 (_1!37735 lt!2650264)) (size!42481 (_2!37735 lt!2650264)))))))

(declare-fun d!2317010 () Bool)

(assert (=> d!2317010 e!4505769))

(declare-fun res!3031844 () Bool)

(assert (=> d!2317010 (=> (not res!3031844) (not e!4505769))))

(assert (=> d!2317010 (= res!3031844 (= (content!15406 lt!2650720) ((_ map or) (content!15406 (_1!37735 lt!2650264)) (content!15406 (_2!37735 lt!2650264)))))))

(declare-fun e!4505770 () List!72868)

(assert (=> d!2317010 (= lt!2650720 e!4505770)))

(declare-fun c!1396495 () Bool)

(assert (=> d!2317010 (= c!1396495 ((_ is Nil!72744) (_1!37735 lt!2650264)))))

(assert (=> d!2317010 (= (++!17489 (_1!37735 lt!2650264) (_2!37735 lt!2650264)) lt!2650720)))

(declare-fun b!7567572 () Bool)

(assert (=> b!7567572 (= e!4505769 (or (not (= (_2!37735 lt!2650264) Nil!72744)) (= lt!2650720 (_1!37735 lt!2650264))))))

(declare-fun b!7567570 () Bool)

(assert (=> b!7567570 (= e!4505770 (Cons!72744 (h!79192 (_1!37735 lt!2650264)) (++!17489 (t!387601 (_1!37735 lt!2650264)) (_2!37735 lt!2650264))))))

(declare-fun b!7567569 () Bool)

(assert (=> b!7567569 (= e!4505770 (_2!37735 lt!2650264))))

(assert (= (and d!2317010 c!1396495) b!7567569))

(assert (= (and d!2317010 (not c!1396495)) b!7567570))

(assert (= (and d!2317010 res!3031844) b!7567571))

(assert (= (and b!7567571 res!3031845) b!7567572))

(declare-fun m!8130318 () Bool)

(assert (=> b!7567571 m!8130318))

(assert (=> b!7567571 m!8128828))

(declare-fun m!8130320 () Bool)

(assert (=> b!7567571 m!8130320))

(declare-fun m!8130322 () Bool)

(assert (=> d!2317010 m!8130322))

(declare-fun m!8130324 () Bool)

(assert (=> d!2317010 m!8130324))

(declare-fun m!8130326 () Bool)

(assert (=> d!2317010 m!8130326))

(declare-fun m!8130328 () Bool)

(assert (=> b!7567570 m!8130328))

(assert (=> d!2316468 d!2317010))

(declare-fun d!2317012 () Bool)

(assert (=> d!2317012 (= (lostCause!1773 lt!2650106) (lostCauseFct!471 lt!2650106))))

(declare-fun bs!1940524 () Bool)

(assert (= bs!1940524 d!2317012))

(declare-fun m!8130330 () Bool)

(assert (=> bs!1940524 m!8130330))

(assert (=> d!2316468 d!2317012))

(declare-fun d!2317014 () Bool)

(assert (=> d!2317014 (= (getSuffix!3669 input!7874 lt!2650100) lt!2650280)))

(declare-fun lt!2650721 () Unit!166904)

(assert (=> d!2317014 (= lt!2650721 (choose!58516 lt!2650100 (getSuffix!3669 input!7874 lt!2650100) lt!2650100 lt!2650280 input!7874))))

(assert (=> d!2317014 (isPrefix!6191 lt!2650100 input!7874)))

(assert (=> d!2317014 (= (lemmaSamePrefixThenSameSuffix!2891 lt!2650100 (getSuffix!3669 input!7874 lt!2650100) lt!2650100 lt!2650280 input!7874) lt!2650721)))

(declare-fun bs!1940525 () Bool)

(assert (= bs!1940525 d!2317014))

(assert (=> bs!1940525 m!8128530))

(declare-fun m!8130332 () Bool)

(assert (=> bs!1940525 m!8130332))

(assert (=> bs!1940525 m!8128562))

(assert (=> d!2316468 d!2317014))

(assert (=> d!2316468 d!2316464))

(declare-fun b!7567575 () Bool)

(declare-fun res!3031847 () Bool)

(declare-fun e!4505771 () Bool)

(assert (=> b!7567575 (=> (not res!3031847) (not e!4505771))))

(declare-fun lt!2650722 () List!72868)

(assert (=> b!7567575 (= res!3031847 (= (size!42481 lt!2650722) (+ (size!42481 lt!2650100) (size!42481 (getSuffix!3669 input!7874 lt!2650100)))))))

(declare-fun d!2317016 () Bool)

(assert (=> d!2317016 e!4505771))

(declare-fun res!3031846 () Bool)

(assert (=> d!2317016 (=> (not res!3031846) (not e!4505771))))

(assert (=> d!2317016 (= res!3031846 (= (content!15406 lt!2650722) ((_ map or) (content!15406 lt!2650100) (content!15406 (getSuffix!3669 input!7874 lt!2650100)))))))

(declare-fun e!4505772 () List!72868)

(assert (=> d!2317016 (= lt!2650722 e!4505772)))

(declare-fun c!1396496 () Bool)

(assert (=> d!2317016 (= c!1396496 ((_ is Nil!72744) lt!2650100))))

(assert (=> d!2317016 (= (++!17489 lt!2650100 (getSuffix!3669 input!7874 lt!2650100)) lt!2650722)))

(declare-fun b!7567576 () Bool)

(assert (=> b!7567576 (= e!4505771 (or (not (= (getSuffix!3669 input!7874 lt!2650100) Nil!72744)) (= lt!2650722 lt!2650100)))))

(declare-fun b!7567574 () Bool)

(assert (=> b!7567574 (= e!4505772 (Cons!72744 (h!79192 lt!2650100) (++!17489 (t!387601 lt!2650100) (getSuffix!3669 input!7874 lt!2650100))))))

(declare-fun b!7567573 () Bool)

(assert (=> b!7567573 (= e!4505772 (getSuffix!3669 input!7874 lt!2650100))))

(assert (= (and d!2317016 c!1396496) b!7567573))

(assert (= (and d!2317016 (not c!1396496)) b!7567574))

(assert (= (and d!2317016 res!3031846) b!7567575))

(assert (= (and b!7567575 res!3031847) b!7567576))

(declare-fun m!8130334 () Bool)

(assert (=> b!7567575 m!8130334))

(assert (=> b!7567575 m!8128538))

(assert (=> b!7567575 m!8128530))

(declare-fun m!8130336 () Bool)

(assert (=> b!7567575 m!8130336))

(declare-fun m!8130338 () Bool)

(assert (=> d!2317016 m!8130338))

(assert (=> d!2317016 m!8128862))

(assert (=> d!2317016 m!8128530))

(declare-fun m!8130340 () Bool)

(assert (=> d!2317016 m!8130340))

(assert (=> b!7567574 m!8128530))

(declare-fun m!8130342 () Bool)

(assert (=> b!7567574 m!8130342))

(assert (=> d!2316468 d!2317016))

(declare-fun bm!693863 () Bool)

(declare-fun call!693869 () Bool)

(declare-fun c!1396498 () Bool)

(assert (=> bm!693863 (= call!693869 (validRegex!10413 (ite c!1396498 (regOne!40483 lt!2650106) (regOne!40482 lt!2650106))))))

(declare-fun b!7567577 () Bool)

(declare-fun e!4505779 () Bool)

(declare-fun e!4505773 () Bool)

(assert (=> b!7567577 (= e!4505779 e!4505773)))

(assert (=> b!7567577 (= c!1396498 ((_ is Union!19985) lt!2650106))))

(declare-fun b!7567578 () Bool)

(declare-fun e!4505775 () Bool)

(assert (=> b!7567578 (= e!4505779 e!4505775)))

(declare-fun res!3031850 () Bool)

(assert (=> b!7567578 (= res!3031850 (not (nullable!8719 (reg!20314 lt!2650106))))))

(assert (=> b!7567578 (=> (not res!3031850) (not e!4505775))))

(declare-fun b!7567579 () Bool)

(declare-fun res!3031849 () Bool)

(declare-fun e!4505778 () Bool)

(assert (=> b!7567579 (=> res!3031849 e!4505778)))

(assert (=> b!7567579 (= res!3031849 (not ((_ is Concat!28830) lt!2650106)))))

(assert (=> b!7567579 (= e!4505773 e!4505778)))

(declare-fun b!7567580 () Bool)

(declare-fun e!4505777 () Bool)

(assert (=> b!7567580 (= e!4505778 e!4505777)))

(declare-fun res!3031851 () Bool)

(assert (=> b!7567580 (=> (not res!3031851) (not e!4505777))))

(assert (=> b!7567580 (= res!3031851 call!693869)))

(declare-fun b!7567581 () Bool)

(declare-fun call!693868 () Bool)

(assert (=> b!7567581 (= e!4505777 call!693868)))

(declare-fun b!7567582 () Bool)

(declare-fun e!4505776 () Bool)

(assert (=> b!7567582 (= e!4505776 call!693868)))

(declare-fun b!7567583 () Bool)

(declare-fun call!693870 () Bool)

(assert (=> b!7567583 (= e!4505775 call!693870)))

(declare-fun b!7567584 () Bool)

(declare-fun res!3031852 () Bool)

(assert (=> b!7567584 (=> (not res!3031852) (not e!4505776))))

(assert (=> b!7567584 (= res!3031852 call!693869)))

(assert (=> b!7567584 (= e!4505773 e!4505776)))

(declare-fun b!7567585 () Bool)

(declare-fun e!4505774 () Bool)

(assert (=> b!7567585 (= e!4505774 e!4505779)))

(declare-fun c!1396497 () Bool)

(assert (=> b!7567585 (= c!1396497 ((_ is Star!19985) lt!2650106))))

(declare-fun bm!693864 () Bool)

(assert (=> bm!693864 (= call!693870 (validRegex!10413 (ite c!1396497 (reg!20314 lt!2650106) (ite c!1396498 (regTwo!40483 lt!2650106) (regTwo!40482 lt!2650106)))))))

(declare-fun bm!693865 () Bool)

(assert (=> bm!693865 (= call!693868 call!693870)))

(declare-fun d!2317018 () Bool)

(declare-fun res!3031848 () Bool)

(assert (=> d!2317018 (=> res!3031848 e!4505774)))

(assert (=> d!2317018 (= res!3031848 ((_ is ElementMatch!19985) lt!2650106))))

(assert (=> d!2317018 (= (validRegex!10413 lt!2650106) e!4505774)))

(assert (= (and d!2317018 (not res!3031848)) b!7567585))

(assert (= (and b!7567585 c!1396497) b!7567578))

(assert (= (and b!7567585 (not c!1396497)) b!7567577))

(assert (= (and b!7567578 res!3031850) b!7567583))

(assert (= (and b!7567577 c!1396498) b!7567584))

(assert (= (and b!7567577 (not c!1396498)) b!7567579))

(assert (= (and b!7567584 res!3031852) b!7567582))

(assert (= (and b!7567579 (not res!3031849)) b!7567580))

(assert (= (and b!7567580 res!3031851) b!7567581))

(assert (= (or b!7567584 b!7567580) bm!693863))

(assert (= (or b!7567582 b!7567581) bm!693865))

(assert (= (or b!7567583 bm!693865) bm!693864))

(declare-fun m!8130344 () Bool)

(assert (=> bm!693863 m!8130344))

(declare-fun m!8130346 () Bool)

(assert (=> b!7567578 m!8130346))

(declare-fun m!8130348 () Bool)

(assert (=> bm!693864 m!8130348))

(assert (=> d!2316468 d!2317018))

(declare-fun b!7567588 () Bool)

(declare-fun res!3031854 () Bool)

(declare-fun e!4505780 () Bool)

(assert (=> b!7567588 (=> (not res!3031854) (not e!4505780))))

(declare-fun lt!2650725 () List!72868)

(assert (=> b!7567588 (= res!3031854 (= (size!42481 lt!2650725) (+ (size!42481 (t!387601 testedP!423)) (size!42481 lt!2650099))))))

(declare-fun d!2317020 () Bool)

(assert (=> d!2317020 e!4505780))

(declare-fun res!3031853 () Bool)

(assert (=> d!2317020 (=> (not res!3031853) (not e!4505780))))

(assert (=> d!2317020 (= res!3031853 (= (content!15406 lt!2650725) ((_ map or) (content!15406 (t!387601 testedP!423)) (content!15406 lt!2650099))))))

(declare-fun e!4505781 () List!72868)

(assert (=> d!2317020 (= lt!2650725 e!4505781)))

(declare-fun c!1396499 () Bool)

(assert (=> d!2317020 (= c!1396499 ((_ is Nil!72744) (t!387601 testedP!423)))))

(assert (=> d!2317020 (= (++!17489 (t!387601 testedP!423) lt!2650099) lt!2650725)))

(declare-fun b!7567589 () Bool)

(assert (=> b!7567589 (= e!4505780 (or (not (= lt!2650099 Nil!72744)) (= lt!2650725 (t!387601 testedP!423))))))

(declare-fun b!7567587 () Bool)

(assert (=> b!7567587 (= e!4505781 (Cons!72744 (h!79192 (t!387601 testedP!423)) (++!17489 (t!387601 (t!387601 testedP!423)) lt!2650099)))))

(declare-fun b!7567586 () Bool)

(assert (=> b!7567586 (= e!4505781 lt!2650099)))

(assert (= (and d!2317020 c!1396499) b!7567586))

(assert (= (and d!2317020 (not c!1396499)) b!7567587))

(assert (= (and d!2317020 res!3031853) b!7567588))

(assert (= (and b!7567588 res!3031854) b!7567589))

(declare-fun m!8130350 () Bool)

(assert (=> b!7567588 m!8130350))

(assert (=> b!7567588 m!8129096))

(assert (=> b!7567588 m!8128954))

(declare-fun m!8130352 () Bool)

(assert (=> d!2317020 m!8130352))

(assert (=> d!2317020 m!8129374))

(assert (=> d!2317020 m!8128958))

(declare-fun m!8130354 () Bool)

(assert (=> b!7567587 m!8130354))

(assert (=> b!7566598 d!2317020))

(assert (=> bm!693672 d!2316938))

(declare-fun d!2317022 () Bool)

(declare-fun c!1396500 () Bool)

(assert (=> d!2317022 (= c!1396500 ((_ is Nil!72744) lt!2650396))))

(declare-fun e!4505782 () (InoxSet C!40296))

(assert (=> d!2317022 (= (content!15406 lt!2650396) e!4505782)))

(declare-fun b!7567590 () Bool)

(assert (=> b!7567590 (= e!4505782 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567591 () Bool)

(assert (=> b!7567591 (= e!4505782 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650396) true) (content!15406 (t!387601 lt!2650396))))))

(assert (= (and d!2317022 c!1396500) b!7567590))

(assert (= (and d!2317022 (not c!1396500)) b!7567591))

(declare-fun m!8130356 () Bool)

(assert (=> b!7567591 m!8130356))

(declare-fun m!8130358 () Bool)

(assert (=> b!7567591 m!8130358))

(assert (=> d!2316502 d!2317022))

(declare-fun d!2317024 () Bool)

(declare-fun c!1396501 () Bool)

(assert (=> d!2317024 (= c!1396501 ((_ is Nil!72744) lt!2650108))))

(declare-fun e!4505783 () (InoxSet C!40296))

(assert (=> d!2317024 (= (content!15406 lt!2650108) e!4505783)))

(declare-fun b!7567592 () Bool)

(assert (=> b!7567592 (= e!4505783 ((as const (Array C!40296 Bool)) false))))

(declare-fun b!7567593 () Bool)

(assert (=> b!7567593 (= e!4505783 ((_ map or) (store ((as const (Array C!40296 Bool)) false) (h!79192 lt!2650108) true) (content!15406 (t!387601 lt!2650108))))))

(assert (= (and d!2317024 c!1396501) b!7567592))

(assert (= (and d!2317024 (not c!1396501)) b!7567593))

(declare-fun m!8130360 () Bool)

(assert (=> b!7567593 m!8130360))

(assert (=> b!7567593 m!8130254))

(assert (=> d!2316502 d!2317024))

(assert (=> d!2316502 d!2316846))

(assert (=> bm!693676 d!2316690))

(declare-fun b!7567597 () Bool)

(declare-fun e!4505785 () Bool)

(assert (=> b!7567597 (= e!4505785 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (tail!15103 knownP!30))))))

(declare-fun b!7567594 () Bool)

(declare-fun e!4505784 () Bool)

(declare-fun e!4505786 () Bool)

(assert (=> b!7567594 (= e!4505784 e!4505786)))

(declare-fun res!3031855 () Bool)

(assert (=> b!7567594 (=> (not res!3031855) (not e!4505786))))

(assert (=> b!7567594 (= res!3031855 (not ((_ is Nil!72744) (tail!15103 input!7874))))))

(declare-fun d!2317026 () Bool)

(assert (=> d!2317026 e!4505785))

(declare-fun res!3031857 () Bool)

(assert (=> d!2317026 (=> res!3031857 e!4505785)))

(declare-fun lt!2650727 () Bool)

(assert (=> d!2317026 (= res!3031857 (not lt!2650727))))

(assert (=> d!2317026 (= lt!2650727 e!4505784)))

(declare-fun res!3031858 () Bool)

(assert (=> d!2317026 (=> res!3031858 e!4505784)))

(assert (=> d!2317026 (= res!3031858 ((_ is Nil!72744) (tail!15103 knownP!30)))))

(assert (=> d!2317026 (= (isPrefix!6191 (tail!15103 knownP!30) (tail!15103 input!7874)) lt!2650727)))

(declare-fun b!7567596 () Bool)

(assert (=> b!7567596 (= e!4505786 (isPrefix!6191 (tail!15103 (tail!15103 knownP!30)) (tail!15103 (tail!15103 input!7874))))))

(declare-fun b!7567595 () Bool)

(declare-fun res!3031856 () Bool)

(assert (=> b!7567595 (=> (not res!3031856) (not e!4505786))))

(assert (=> b!7567595 (= res!3031856 (= (head!15563 (tail!15103 knownP!30)) (head!15563 (tail!15103 input!7874))))))

(assert (= (and d!2317026 (not res!3031858)) b!7567594))

(assert (= (and b!7567594 res!3031855) b!7567595))

(assert (= (and b!7567595 res!3031856) b!7567596))

(assert (= (and d!2317026 (not res!3031857)) b!7567597))

(assert (=> b!7567597 m!8128796))

(assert (=> b!7567597 m!8129334))

(assert (=> b!7567597 m!8128908))

(assert (=> b!7567597 m!8129288))

(assert (=> b!7567596 m!8128908))

(assert (=> b!7567596 m!8129294))

(assert (=> b!7567596 m!8128796))

(assert (=> b!7567596 m!8129340))

(assert (=> b!7567596 m!8129294))

(assert (=> b!7567596 m!8129340))

(declare-fun m!8130368 () Bool)

(assert (=> b!7567596 m!8130368))

(assert (=> b!7567595 m!8128908))

(assert (=> b!7567595 m!8129300))

(assert (=> b!7567595 m!8128796))

(assert (=> b!7567595 m!8129346))

(assert (=> b!7566569 d!2317026))

(assert (=> b!7566569 d!2316598))

(assert (=> b!7566569 d!2316616))

(assert (=> b!7566758 d!2316764))

(assert (=> b!7566758 d!2316630))

(declare-fun d!2317030 () Bool)

(declare-fun lt!2650729 () Int)

(assert (=> d!2317030 (>= lt!2650729 0)))

(declare-fun e!4505787 () Int)

(assert (=> d!2317030 (= lt!2650729 e!4505787)))

(declare-fun c!1396502 () Bool)

(assert (=> d!2317030 (= c!1396502 ((_ is Nil!72744) (t!387601 input!7874)))))

(assert (=> d!2317030 (= (size!42481 (t!387601 input!7874)) lt!2650729)))

(declare-fun b!7567598 () Bool)

(assert (=> b!7567598 (= e!4505787 0)))

(declare-fun b!7567599 () Bool)

(assert (=> b!7567599 (= e!4505787 (+ 1 (size!42481 (t!387601 (t!387601 input!7874)))))))

(assert (= (and d!2317030 c!1396502) b!7567598))

(assert (= (and d!2317030 (not c!1396502)) b!7567599))

(declare-fun m!8130370 () Bool)

(assert (=> b!7567599 m!8130370))

(assert (=> b!7566826 d!2317030))

(declare-fun d!2317034 () Bool)

(declare-fun lt!2650731 () List!72868)

(assert (=> d!2317034 (= (++!17489 (t!387601 testedP!423) lt!2650731) (tail!15103 input!7874))))

(declare-fun e!4505790 () List!72868)

(assert (=> d!2317034 (= lt!2650731 e!4505790)))

(declare-fun c!1396504 () Bool)

(assert (=> d!2317034 (= c!1396504 ((_ is Cons!72744) (t!387601 testedP!423)))))

(assert (=> d!2317034 (>= (size!42481 (tail!15103 input!7874)) (size!42481 (t!387601 testedP!423)))))

(assert (=> d!2317034 (= (getSuffix!3669 (tail!15103 input!7874) (t!387601 testedP!423)) lt!2650731)))

(declare-fun b!7567604 () Bool)

(assert (=> b!7567604 (= e!4505790 (getSuffix!3669 (tail!15103 (tail!15103 input!7874)) (t!387601 (t!387601 testedP!423))))))

(declare-fun b!7567605 () Bool)

(assert (=> b!7567605 (= e!4505790 (tail!15103 input!7874))))

(assert (= (and d!2317034 c!1396504) b!7567604))

(assert (= (and d!2317034 (not c!1396504)) b!7567605))

(declare-fun m!8130372 () Bool)

(assert (=> d!2317034 m!8130372))

(assert (=> d!2317034 m!8128796))

(assert (=> d!2317034 m!8129334))

(assert (=> d!2317034 m!8129096))

(assert (=> b!7567604 m!8128796))

(assert (=> b!7567604 m!8129340))

(assert (=> b!7567604 m!8129340))

(declare-fun m!8130380 () Bool)

(assert (=> b!7567604 m!8130380))

(assert (=> b!7566716 d!2317034))

(assert (=> b!7566716 d!2316616))

(declare-fun d!2317036 () Bool)

(declare-fun lt!2650732 () Int)

(assert (=> d!2317036 (>= lt!2650732 0)))

(declare-fun e!4505791 () Int)

(assert (=> d!2317036 (= lt!2650732 e!4505791)))

(declare-fun c!1396505 () Bool)

(assert (=> d!2317036 (= c!1396505 ((_ is Nil!72744) lt!2650458))))

(assert (=> d!2317036 (= (size!42481 lt!2650458) lt!2650732)))

(declare-fun b!7567606 () Bool)

(assert (=> b!7567606 (= e!4505791 0)))

(declare-fun b!7567607 () Bool)

(assert (=> b!7567607 (= e!4505791 (+ 1 (size!42481 (t!387601 lt!2650458))))))

(assert (= (and d!2317036 c!1396505) b!7567606))

(assert (= (and d!2317036 (not c!1396505)) b!7567607))

(declare-fun m!8130386 () Bool)

(assert (=> b!7567607 m!8130386))

(assert (=> b!7566736 d!2317036))

(assert (=> b!7566736 d!2316538))

(assert (=> b!7566736 d!2316762))

(declare-fun b!7567609 () Bool)

(declare-fun e!4505792 () Bool)

(declare-fun tp!2203824 () Bool)

(declare-fun tp!2203823 () Bool)

(assert (=> b!7567609 (= e!4505792 (and tp!2203824 tp!2203823))))

(declare-fun b!7567611 () Bool)

(declare-fun tp!2203822 () Bool)

(declare-fun tp!2203820 () Bool)

(assert (=> b!7567611 (= e!4505792 (and tp!2203822 tp!2203820))))

(declare-fun b!7567608 () Bool)

(assert (=> b!7567608 (= e!4505792 tp_is_empty!50325)))

(declare-fun b!7567610 () Bool)

(declare-fun tp!2203821 () Bool)

(assert (=> b!7567610 (= e!4505792 tp!2203821)))

(assert (=> b!7566907 (= tp!2203805 e!4505792)))

(assert (= (and b!7566907 ((_ is ElementMatch!19985) (reg!20314 (regTwo!40483 r!24333)))) b!7567608))

(assert (= (and b!7566907 ((_ is Concat!28830) (reg!20314 (regTwo!40483 r!24333)))) b!7567609))

(assert (= (and b!7566907 ((_ is Star!19985) (reg!20314 (regTwo!40483 r!24333)))) b!7567610))

(assert (= (and b!7566907 ((_ is Union!19985) (reg!20314 (regTwo!40483 r!24333)))) b!7567611))

(declare-fun b!7567613 () Bool)

(declare-fun e!4505793 () Bool)

(declare-fun tp!2203829 () Bool)

(declare-fun tp!2203828 () Bool)

(assert (=> b!7567613 (= e!4505793 (and tp!2203829 tp!2203828))))

(declare-fun b!7567615 () Bool)

(declare-fun tp!2203827 () Bool)

(declare-fun tp!2203825 () Bool)

(assert (=> b!7567615 (= e!4505793 (and tp!2203827 tp!2203825))))

(declare-fun b!7567612 () Bool)

(assert (=> b!7567612 (= e!4505793 tp_is_empty!50325)))

(declare-fun b!7567614 () Bool)

(declare-fun tp!2203826 () Bool)

(assert (=> b!7567614 (= e!4505793 tp!2203826)))

(assert (=> b!7566898 (= tp!2203798 e!4505793)))

(assert (= (and b!7566898 ((_ is ElementMatch!19985) (regOne!40482 (regTwo!40482 r!24333)))) b!7567612))

(assert (= (and b!7566898 ((_ is Concat!28830) (regOne!40482 (regTwo!40482 r!24333)))) b!7567613))

(assert (= (and b!7566898 ((_ is Star!19985) (regOne!40482 (regTwo!40482 r!24333)))) b!7567614))

(assert (= (and b!7566898 ((_ is Union!19985) (regOne!40482 (regTwo!40482 r!24333)))) b!7567615))

(declare-fun b!7567617 () Bool)

(declare-fun e!4505794 () Bool)

(declare-fun tp!2203834 () Bool)

(declare-fun tp!2203833 () Bool)

(assert (=> b!7567617 (= e!4505794 (and tp!2203834 tp!2203833))))

(declare-fun b!7567619 () Bool)

(declare-fun tp!2203832 () Bool)

(declare-fun tp!2203830 () Bool)

(assert (=> b!7567619 (= e!4505794 (and tp!2203832 tp!2203830))))

(declare-fun b!7567616 () Bool)

(assert (=> b!7567616 (= e!4505794 tp_is_empty!50325)))

(declare-fun b!7567618 () Bool)

(declare-fun tp!2203831 () Bool)

(assert (=> b!7567618 (= e!4505794 tp!2203831)))

(assert (=> b!7566898 (= tp!2203797 e!4505794)))

(assert (= (and b!7566898 ((_ is ElementMatch!19985) (regTwo!40482 (regTwo!40482 r!24333)))) b!7567616))

(assert (= (and b!7566898 ((_ is Concat!28830) (regTwo!40482 (regTwo!40482 r!24333)))) b!7567617))

(assert (= (and b!7566898 ((_ is Star!19985) (regTwo!40482 (regTwo!40482 r!24333)))) b!7567618))

(assert (= (and b!7566898 ((_ is Union!19985) (regTwo!40482 (regTwo!40482 r!24333)))) b!7567619))

(declare-fun b!7567621 () Bool)

(declare-fun e!4505795 () Bool)

(declare-fun tp!2203839 () Bool)

(declare-fun tp!2203838 () Bool)

(assert (=> b!7567621 (= e!4505795 (and tp!2203839 tp!2203838))))

(declare-fun b!7567623 () Bool)

(declare-fun tp!2203837 () Bool)

(declare-fun tp!2203835 () Bool)

(assert (=> b!7567623 (= e!4505795 (and tp!2203837 tp!2203835))))

(declare-fun b!7567620 () Bool)

(assert (=> b!7567620 (= e!4505795 tp_is_empty!50325)))

(declare-fun b!7567622 () Bool)

(declare-fun tp!2203836 () Bool)

(assert (=> b!7567622 (= e!4505795 tp!2203836)))

(assert (=> b!7566915 (= tp!2203819 e!4505795)))

(assert (= (and b!7566915 ((_ is ElementMatch!19985) (regOne!40482 (regTwo!40483 baseR!101)))) b!7567620))

(assert (= (and b!7566915 ((_ is Concat!28830) (regOne!40482 (regTwo!40483 baseR!101)))) b!7567621))

(assert (= (and b!7566915 ((_ is Star!19985) (regOne!40482 (regTwo!40483 baseR!101)))) b!7567622))

(assert (= (and b!7566915 ((_ is Union!19985) (regOne!40482 (regTwo!40483 baseR!101)))) b!7567623))

(declare-fun b!7567625 () Bool)

(declare-fun e!4505796 () Bool)

(declare-fun tp!2203844 () Bool)

(declare-fun tp!2203843 () Bool)

(assert (=> b!7567625 (= e!4505796 (and tp!2203844 tp!2203843))))

(declare-fun b!7567627 () Bool)

(declare-fun tp!2203842 () Bool)

(declare-fun tp!2203840 () Bool)

(assert (=> b!7567627 (= e!4505796 (and tp!2203842 tp!2203840))))

(declare-fun b!7567624 () Bool)

(assert (=> b!7567624 (= e!4505796 tp_is_empty!50325)))

(declare-fun b!7567626 () Bool)

(declare-fun tp!2203841 () Bool)

(assert (=> b!7567626 (= e!4505796 tp!2203841)))

(assert (=> b!7566915 (= tp!2203818 e!4505796)))

(assert (= (and b!7566915 ((_ is ElementMatch!19985) (regTwo!40482 (regTwo!40483 baseR!101)))) b!7567624))

(assert (= (and b!7566915 ((_ is Concat!28830) (regTwo!40482 (regTwo!40483 baseR!101)))) b!7567625))

(assert (= (and b!7566915 ((_ is Star!19985) (regTwo!40482 (regTwo!40483 baseR!101)))) b!7567626))

(assert (= (and b!7566915 ((_ is Union!19985) (regTwo!40482 (regTwo!40483 baseR!101)))) b!7567627))

(declare-fun b!7567629 () Bool)

(declare-fun e!4505797 () Bool)

(declare-fun tp!2203849 () Bool)

(declare-fun tp!2203848 () Bool)

(assert (=> b!7567629 (= e!4505797 (and tp!2203849 tp!2203848))))

(declare-fun b!7567631 () Bool)

(declare-fun tp!2203847 () Bool)

(declare-fun tp!2203845 () Bool)

(assert (=> b!7567631 (= e!4505797 (and tp!2203847 tp!2203845))))

(declare-fun b!7567628 () Bool)

(assert (=> b!7567628 (= e!4505797 tp_is_empty!50325)))

(declare-fun b!7567630 () Bool)

(declare-fun tp!2203846 () Bool)

(assert (=> b!7567630 (= e!4505797 tp!2203846)))

(assert (=> b!7566874 (= tp!2203767 e!4505797)))

(assert (= (and b!7566874 ((_ is ElementMatch!19985) (regOne!40483 (regOne!40482 baseR!101)))) b!7567628))

(assert (= (and b!7566874 ((_ is Concat!28830) (regOne!40483 (regOne!40482 baseR!101)))) b!7567629))

(assert (= (and b!7566874 ((_ is Star!19985) (regOne!40483 (regOne!40482 baseR!101)))) b!7567630))

(assert (= (and b!7566874 ((_ is Union!19985) (regOne!40483 (regOne!40482 baseR!101)))) b!7567631))

(declare-fun b!7567633 () Bool)

(declare-fun e!4505798 () Bool)

(declare-fun tp!2203854 () Bool)

(declare-fun tp!2203853 () Bool)

(assert (=> b!7567633 (= e!4505798 (and tp!2203854 tp!2203853))))

(declare-fun b!7567635 () Bool)

(declare-fun tp!2203852 () Bool)

(declare-fun tp!2203850 () Bool)

(assert (=> b!7567635 (= e!4505798 (and tp!2203852 tp!2203850))))

(declare-fun b!7567632 () Bool)

(assert (=> b!7567632 (= e!4505798 tp_is_empty!50325)))

(declare-fun b!7567634 () Bool)

(declare-fun tp!2203851 () Bool)

(assert (=> b!7567634 (= e!4505798 tp!2203851)))

(assert (=> b!7566874 (= tp!2203765 e!4505798)))

(assert (= (and b!7566874 ((_ is ElementMatch!19985) (regTwo!40483 (regOne!40482 baseR!101)))) b!7567632))

(assert (= (and b!7566874 ((_ is Concat!28830) (regTwo!40483 (regOne!40482 baseR!101)))) b!7567633))

(assert (= (and b!7566874 ((_ is Star!19985) (regTwo!40483 (regOne!40482 baseR!101)))) b!7567634))

(assert (= (and b!7566874 ((_ is Union!19985) (regTwo!40483 (regOne!40482 baseR!101)))) b!7567635))

(declare-fun b!7567637 () Bool)

(declare-fun e!4505799 () Bool)

(declare-fun tp!2203859 () Bool)

(declare-fun tp!2203858 () Bool)

(assert (=> b!7567637 (= e!4505799 (and tp!2203859 tp!2203858))))

(declare-fun b!7567639 () Bool)

(declare-fun tp!2203857 () Bool)

(declare-fun tp!2203855 () Bool)

(assert (=> b!7567639 (= e!4505799 (and tp!2203857 tp!2203855))))

(declare-fun b!7567636 () Bool)

(assert (=> b!7567636 (= e!4505799 tp_is_empty!50325)))

(declare-fun b!7567638 () Bool)

(declare-fun tp!2203856 () Bool)

(assert (=> b!7567638 (= e!4505799 tp!2203856)))

(assert (=> b!7566906 (= tp!2203808 e!4505799)))

(assert (= (and b!7566906 ((_ is ElementMatch!19985) (regOne!40482 (regTwo!40483 r!24333)))) b!7567636))

(assert (= (and b!7566906 ((_ is Concat!28830) (regOne!40482 (regTwo!40483 r!24333)))) b!7567637))

(assert (= (and b!7566906 ((_ is Star!19985) (regOne!40482 (regTwo!40483 r!24333)))) b!7567638))

(assert (= (and b!7566906 ((_ is Union!19985) (regOne!40482 (regTwo!40483 r!24333)))) b!7567639))

(declare-fun b!7567641 () Bool)

(declare-fun e!4505800 () Bool)

(declare-fun tp!2203864 () Bool)

(declare-fun tp!2203863 () Bool)

(assert (=> b!7567641 (= e!4505800 (and tp!2203864 tp!2203863))))

(declare-fun b!7567643 () Bool)

(declare-fun tp!2203862 () Bool)

(declare-fun tp!2203860 () Bool)

(assert (=> b!7567643 (= e!4505800 (and tp!2203862 tp!2203860))))

(declare-fun b!7567640 () Bool)

(assert (=> b!7567640 (= e!4505800 tp_is_empty!50325)))

(declare-fun b!7567642 () Bool)

(declare-fun tp!2203861 () Bool)

(assert (=> b!7567642 (= e!4505800 tp!2203861)))

(assert (=> b!7566906 (= tp!2203807 e!4505800)))

(assert (= (and b!7566906 ((_ is ElementMatch!19985) (regTwo!40482 (regTwo!40483 r!24333)))) b!7567640))

(assert (= (and b!7566906 ((_ is Concat!28830) (regTwo!40482 (regTwo!40483 r!24333)))) b!7567641))

(assert (= (and b!7566906 ((_ is Star!19985) (regTwo!40482 (regTwo!40483 r!24333)))) b!7567642))

(assert (= (and b!7566906 ((_ is Union!19985) (regTwo!40482 (regTwo!40483 r!24333)))) b!7567643))

(declare-fun b!7567647 () Bool)

(declare-fun e!4505802 () Bool)

(declare-fun tp!2203869 () Bool)

(declare-fun tp!2203868 () Bool)

(assert (=> b!7567647 (= e!4505802 (and tp!2203869 tp!2203868))))

(declare-fun b!7567649 () Bool)

(declare-fun tp!2203867 () Bool)

(declare-fun tp!2203865 () Bool)

(assert (=> b!7567649 (= e!4505802 (and tp!2203867 tp!2203865))))

(declare-fun b!7567646 () Bool)

(assert (=> b!7567646 (= e!4505802 tp_is_empty!50325)))

(declare-fun b!7567648 () Bool)

(declare-fun tp!2203866 () Bool)

(assert (=> b!7567648 (= e!4505802 tp!2203866)))

(assert (=> b!7566873 (= tp!2203766 e!4505802)))

(assert (= (and b!7566873 ((_ is ElementMatch!19985) (reg!20314 (regOne!40482 baseR!101)))) b!7567646))

(assert (= (and b!7566873 ((_ is Concat!28830) (reg!20314 (regOne!40482 baseR!101)))) b!7567647))

(assert (= (and b!7566873 ((_ is Star!19985) (reg!20314 (regOne!40482 baseR!101)))) b!7567648))

(assert (= (and b!7566873 ((_ is Union!19985) (reg!20314 (regOne!40482 baseR!101)))) b!7567649))

(declare-fun b!7567653 () Bool)

(declare-fun e!4505804 () Bool)

(declare-fun tp!2203874 () Bool)

(declare-fun tp!2203873 () Bool)

(assert (=> b!7567653 (= e!4505804 (and tp!2203874 tp!2203873))))

(declare-fun b!7567655 () Bool)

(declare-fun tp!2203872 () Bool)

(declare-fun tp!2203870 () Bool)

(assert (=> b!7567655 (= e!4505804 (and tp!2203872 tp!2203870))))

(declare-fun b!7567652 () Bool)

(assert (=> b!7567652 (= e!4505804 tp_is_empty!50325)))

(declare-fun b!7567654 () Bool)

(declare-fun tp!2203871 () Bool)

(assert (=> b!7567654 (= e!4505804 tp!2203871)))

(assert (=> b!7566872 (= tp!2203769 e!4505804)))

(assert (= (and b!7566872 ((_ is ElementMatch!19985) (regOne!40482 (regOne!40482 baseR!101)))) b!7567652))

(assert (= (and b!7566872 ((_ is Concat!28830) (regOne!40482 (regOne!40482 baseR!101)))) b!7567653))

(assert (= (and b!7566872 ((_ is Star!19985) (regOne!40482 (regOne!40482 baseR!101)))) b!7567654))

(assert (= (and b!7566872 ((_ is Union!19985) (regOne!40482 (regOne!40482 baseR!101)))) b!7567655))

(declare-fun b!7567661 () Bool)

(declare-fun e!4505808 () Bool)

(declare-fun tp!2203879 () Bool)

(declare-fun tp!2203878 () Bool)

(assert (=> b!7567661 (= e!4505808 (and tp!2203879 tp!2203878))))

(declare-fun b!7567663 () Bool)

(declare-fun tp!2203877 () Bool)

(declare-fun tp!2203875 () Bool)

(assert (=> b!7567663 (= e!4505808 (and tp!2203877 tp!2203875))))

(declare-fun b!7567660 () Bool)

(assert (=> b!7567660 (= e!4505808 tp_is_empty!50325)))

(declare-fun b!7567662 () Bool)

(declare-fun tp!2203876 () Bool)

(assert (=> b!7567662 (= e!4505808 tp!2203876)))

(assert (=> b!7566872 (= tp!2203768 e!4505808)))

(assert (= (and b!7566872 ((_ is ElementMatch!19985) (regTwo!40482 (regOne!40482 baseR!101)))) b!7567660))

(assert (= (and b!7566872 ((_ is Concat!28830) (regTwo!40482 (regOne!40482 baseR!101)))) b!7567661))

(assert (= (and b!7566872 ((_ is Star!19985) (regTwo!40482 (regOne!40482 baseR!101)))) b!7567662))

(assert (= (and b!7566872 ((_ is Union!19985) (regTwo!40482 (regOne!40482 baseR!101)))) b!7567663))

(declare-fun b!7567664 () Bool)

(declare-fun e!4505809 () Bool)

(declare-fun tp!2203880 () Bool)

(assert (=> b!7567664 (= e!4505809 (and tp_is_empty!50325 tp!2203880))))

(assert (=> b!7566884 (= tp!2203778 e!4505809)))

(assert (= (and b!7566884 ((_ is Cons!72744) (t!387601 (t!387601 knownP!30)))) b!7567664))

(declare-fun b!7567666 () Bool)

(declare-fun e!4505810 () Bool)

(declare-fun tp!2203885 () Bool)

(declare-fun tp!2203884 () Bool)

(assert (=> b!7567666 (= e!4505810 (and tp!2203885 tp!2203884))))

(declare-fun b!7567668 () Bool)

(declare-fun tp!2203883 () Bool)

(declare-fun tp!2203881 () Bool)

(assert (=> b!7567668 (= e!4505810 (and tp!2203883 tp!2203881))))

(declare-fun b!7567665 () Bool)

(assert (=> b!7567665 (= e!4505810 tp_is_empty!50325)))

(declare-fun b!7567667 () Bool)

(declare-fun tp!2203882 () Bool)

(assert (=> b!7567667 (= e!4505810 tp!2203882)))

(assert (=> b!7566892 (= tp!2203786 e!4505810)))

(assert (= (and b!7566892 ((_ is ElementMatch!19985) (regOne!40483 (reg!20314 r!24333)))) b!7567665))

(assert (= (and b!7566892 ((_ is Concat!28830) (regOne!40483 (reg!20314 r!24333)))) b!7567666))

(assert (= (and b!7566892 ((_ is Star!19985) (regOne!40483 (reg!20314 r!24333)))) b!7567667))

(assert (= (and b!7566892 ((_ is Union!19985) (regOne!40483 (reg!20314 r!24333)))) b!7567668))

(declare-fun b!7567670 () Bool)

(declare-fun e!4505811 () Bool)

(declare-fun tp!2203890 () Bool)

(declare-fun tp!2203889 () Bool)

(assert (=> b!7567670 (= e!4505811 (and tp!2203890 tp!2203889))))

(declare-fun b!7567672 () Bool)

(declare-fun tp!2203888 () Bool)

(declare-fun tp!2203886 () Bool)

(assert (=> b!7567672 (= e!4505811 (and tp!2203888 tp!2203886))))

(declare-fun b!7567669 () Bool)

(assert (=> b!7567669 (= e!4505811 tp_is_empty!50325)))

(declare-fun b!7567671 () Bool)

(declare-fun tp!2203887 () Bool)

(assert (=> b!7567671 (= e!4505811 tp!2203887)))

(assert (=> b!7566892 (= tp!2203784 e!4505811)))

(assert (= (and b!7566892 ((_ is ElementMatch!19985) (regTwo!40483 (reg!20314 r!24333)))) b!7567669))

(assert (= (and b!7566892 ((_ is Concat!28830) (regTwo!40483 (reg!20314 r!24333)))) b!7567670))

(assert (= (and b!7566892 ((_ is Star!19985) (regTwo!40483 (reg!20314 r!24333)))) b!7567671))

(assert (= (and b!7566892 ((_ is Union!19985) (regTwo!40483 (reg!20314 r!24333)))) b!7567672))

(declare-fun b!7567675 () Bool)

(declare-fun e!4505813 () Bool)

(declare-fun tp!2203891 () Bool)

(assert (=> b!7567675 (= e!4505813 (and tp_is_empty!50325 tp!2203891))))

(assert (=> b!7566909 (= tp!2203809 e!4505813)))

(assert (= (and b!7566909 ((_ is Cons!72744) (t!387601 (t!387601 testedP!423)))) b!7567675))

(declare-fun b!7567681 () Bool)

(declare-fun e!4505817 () Bool)

(declare-fun tp!2203896 () Bool)

(declare-fun tp!2203895 () Bool)

(assert (=> b!7567681 (= e!4505817 (and tp!2203896 tp!2203895))))

(declare-fun b!7567683 () Bool)

(declare-fun tp!2203894 () Bool)

(declare-fun tp!2203892 () Bool)

(assert (=> b!7567683 (= e!4505817 (and tp!2203894 tp!2203892))))

(declare-fun b!7567680 () Bool)

(assert (=> b!7567680 (= e!4505817 tp_is_empty!50325)))

(declare-fun b!7567682 () Bool)

(declare-fun tp!2203893 () Bool)

(assert (=> b!7567682 (= e!4505817 tp!2203893)))

(assert (=> b!7566900 (= tp!2203796 e!4505817)))

(assert (= (and b!7566900 ((_ is ElementMatch!19985) (regOne!40483 (regTwo!40482 r!24333)))) b!7567680))

(assert (= (and b!7566900 ((_ is Concat!28830) (regOne!40483 (regTwo!40482 r!24333)))) b!7567681))

(assert (= (and b!7566900 ((_ is Star!19985) (regOne!40483 (regTwo!40482 r!24333)))) b!7567682))

(assert (= (and b!7566900 ((_ is Union!19985) (regOne!40483 (regTwo!40482 r!24333)))) b!7567683))

(declare-fun b!7567685 () Bool)

(declare-fun e!4505818 () Bool)

(declare-fun tp!2203901 () Bool)

(declare-fun tp!2203900 () Bool)

(assert (=> b!7567685 (= e!4505818 (and tp!2203901 tp!2203900))))

(declare-fun b!7567687 () Bool)

(declare-fun tp!2203899 () Bool)

(declare-fun tp!2203897 () Bool)

(assert (=> b!7567687 (= e!4505818 (and tp!2203899 tp!2203897))))

(declare-fun b!7567684 () Bool)

(assert (=> b!7567684 (= e!4505818 tp_is_empty!50325)))

(declare-fun b!7567686 () Bool)

(declare-fun tp!2203898 () Bool)

(assert (=> b!7567686 (= e!4505818 tp!2203898)))

(assert (=> b!7566900 (= tp!2203794 e!4505818)))

(assert (= (and b!7566900 ((_ is ElementMatch!19985) (regTwo!40483 (regTwo!40482 r!24333)))) b!7567684))

(assert (= (and b!7566900 ((_ is Concat!28830) (regTwo!40483 (regTwo!40482 r!24333)))) b!7567685))

(assert (= (and b!7566900 ((_ is Star!19985) (regTwo!40483 (regTwo!40482 r!24333)))) b!7567686))

(assert (= (and b!7566900 ((_ is Union!19985) (regTwo!40483 (regTwo!40482 r!24333)))) b!7567687))

(declare-fun b!7567689 () Bool)

(declare-fun e!4505819 () Bool)

(declare-fun tp!2203906 () Bool)

(declare-fun tp!2203905 () Bool)

(assert (=> b!7567689 (= e!4505819 (and tp!2203906 tp!2203905))))

(declare-fun b!7567691 () Bool)

(declare-fun tp!2203904 () Bool)

(declare-fun tp!2203902 () Bool)

(assert (=> b!7567691 (= e!4505819 (and tp!2203904 tp!2203902))))

(declare-fun b!7567688 () Bool)

(assert (=> b!7567688 (= e!4505819 tp_is_empty!50325)))

(declare-fun b!7567690 () Bool)

(declare-fun tp!2203903 () Bool)

(assert (=> b!7567690 (= e!4505819 tp!2203903)))

(assert (=> b!7566891 (= tp!2203785 e!4505819)))

(assert (= (and b!7566891 ((_ is ElementMatch!19985) (reg!20314 (reg!20314 r!24333)))) b!7567688))

(assert (= (and b!7566891 ((_ is Concat!28830) (reg!20314 (reg!20314 r!24333)))) b!7567689))

(assert (= (and b!7566891 ((_ is Star!19985) (reg!20314 (reg!20314 r!24333)))) b!7567690))

(assert (= (and b!7566891 ((_ is Union!19985) (reg!20314 (reg!20314 r!24333)))) b!7567691))

(declare-fun b!7567693 () Bool)

(declare-fun e!4505820 () Bool)

(declare-fun tp!2203911 () Bool)

(declare-fun tp!2203910 () Bool)

(assert (=> b!7567693 (= e!4505820 (and tp!2203911 tp!2203910))))

(declare-fun b!7567695 () Bool)

(declare-fun tp!2203909 () Bool)

(declare-fun tp!2203907 () Bool)

(assert (=> b!7567695 (= e!4505820 (and tp!2203909 tp!2203907))))

(declare-fun b!7567692 () Bool)

(assert (=> b!7567692 (= e!4505820 tp_is_empty!50325)))

(declare-fun b!7567694 () Bool)

(declare-fun tp!2203908 () Bool)

(assert (=> b!7567694 (= e!4505820 tp!2203908)))

(assert (=> b!7566917 (= tp!2203817 e!4505820)))

(assert (= (and b!7566917 ((_ is ElementMatch!19985) (regOne!40483 (regTwo!40483 baseR!101)))) b!7567692))

(assert (= (and b!7566917 ((_ is Concat!28830) (regOne!40483 (regTwo!40483 baseR!101)))) b!7567693))

(assert (= (and b!7566917 ((_ is Star!19985) (regOne!40483 (regTwo!40483 baseR!101)))) b!7567694))

(assert (= (and b!7566917 ((_ is Union!19985) (regOne!40483 (regTwo!40483 baseR!101)))) b!7567695))

(declare-fun b!7567697 () Bool)

(declare-fun e!4505821 () Bool)

(declare-fun tp!2203916 () Bool)

(declare-fun tp!2203915 () Bool)

(assert (=> b!7567697 (= e!4505821 (and tp!2203916 tp!2203915))))

(declare-fun b!7567699 () Bool)

(declare-fun tp!2203914 () Bool)

(declare-fun tp!2203912 () Bool)

(assert (=> b!7567699 (= e!4505821 (and tp!2203914 tp!2203912))))

(declare-fun b!7567696 () Bool)

(assert (=> b!7567696 (= e!4505821 tp_is_empty!50325)))

(declare-fun b!7567698 () Bool)

(declare-fun tp!2203913 () Bool)

(assert (=> b!7567698 (= e!4505821 tp!2203913)))

(assert (=> b!7566917 (= tp!2203815 e!4505821)))

(assert (= (and b!7566917 ((_ is ElementMatch!19985) (regTwo!40483 (regTwo!40483 baseR!101)))) b!7567696))

(assert (= (and b!7566917 ((_ is Concat!28830) (regTwo!40483 (regTwo!40483 baseR!101)))) b!7567697))

(assert (= (and b!7566917 ((_ is Star!19985) (regTwo!40483 (regTwo!40483 baseR!101)))) b!7567698))

(assert (= (and b!7566917 ((_ is Union!19985) (regTwo!40483 (regTwo!40483 baseR!101)))) b!7567699))

(declare-fun b!7567701 () Bool)

(declare-fun e!4505822 () Bool)

(declare-fun tp!2203921 () Bool)

(declare-fun tp!2203920 () Bool)

(assert (=> b!7567701 (= e!4505822 (and tp!2203921 tp!2203920))))

(declare-fun b!7567703 () Bool)

(declare-fun tp!2203919 () Bool)

(declare-fun tp!2203917 () Bool)

(assert (=> b!7567703 (= e!4505822 (and tp!2203919 tp!2203917))))

(declare-fun b!7567700 () Bool)

(assert (=> b!7567700 (= e!4505822 tp_is_empty!50325)))

(declare-fun b!7567702 () Bool)

(declare-fun tp!2203918 () Bool)

(assert (=> b!7567702 (= e!4505822 tp!2203918)))

(assert (=> b!7566908 (= tp!2203806 e!4505822)))

(assert (= (and b!7566908 ((_ is ElementMatch!19985) (regOne!40483 (regTwo!40483 r!24333)))) b!7567700))

(assert (= (and b!7566908 ((_ is Concat!28830) (regOne!40483 (regTwo!40483 r!24333)))) b!7567701))

(assert (= (and b!7566908 ((_ is Star!19985) (regOne!40483 (regTwo!40483 r!24333)))) b!7567702))

(assert (= (and b!7566908 ((_ is Union!19985) (regOne!40483 (regTwo!40483 r!24333)))) b!7567703))

(declare-fun b!7567705 () Bool)

(declare-fun e!4505823 () Bool)

(declare-fun tp!2203926 () Bool)

(declare-fun tp!2203925 () Bool)

(assert (=> b!7567705 (= e!4505823 (and tp!2203926 tp!2203925))))

(declare-fun b!7567707 () Bool)

(declare-fun tp!2203924 () Bool)

(declare-fun tp!2203922 () Bool)

(assert (=> b!7567707 (= e!4505823 (and tp!2203924 tp!2203922))))

(declare-fun b!7567704 () Bool)

(assert (=> b!7567704 (= e!4505823 tp_is_empty!50325)))

(declare-fun b!7567706 () Bool)

(declare-fun tp!2203923 () Bool)

(assert (=> b!7567706 (= e!4505823 tp!2203923)))

(assert (=> b!7566908 (= tp!2203804 e!4505823)))

(assert (= (and b!7566908 ((_ is ElementMatch!19985) (regTwo!40483 (regTwo!40483 r!24333)))) b!7567704))

(assert (= (and b!7566908 ((_ is Concat!28830) (regTwo!40483 (regTwo!40483 r!24333)))) b!7567705))

(assert (= (and b!7566908 ((_ is Star!19985) (regTwo!40483 (regTwo!40483 r!24333)))) b!7567706))

(assert (= (and b!7566908 ((_ is Union!19985) (regTwo!40483 (regTwo!40483 r!24333)))) b!7567707))

(declare-fun b!7567709 () Bool)

(declare-fun e!4505824 () Bool)

(declare-fun tp!2203931 () Bool)

(declare-fun tp!2203930 () Bool)

(assert (=> b!7567709 (= e!4505824 (and tp!2203931 tp!2203930))))

(declare-fun b!7567711 () Bool)

(declare-fun tp!2203929 () Bool)

(declare-fun tp!2203927 () Bool)

(assert (=> b!7567711 (= e!4505824 (and tp!2203929 tp!2203927))))

(declare-fun b!7567708 () Bool)

(assert (=> b!7567708 (= e!4505824 tp_is_empty!50325)))

(declare-fun b!7567710 () Bool)

(declare-fun tp!2203928 () Bool)

(assert (=> b!7567710 (= e!4505824 tp!2203928)))

(assert (=> b!7566899 (= tp!2203795 e!4505824)))

(assert (= (and b!7566899 ((_ is ElementMatch!19985) (reg!20314 (regTwo!40482 r!24333)))) b!7567708))

(assert (= (and b!7566899 ((_ is Concat!28830) (reg!20314 (regTwo!40482 r!24333)))) b!7567709))

(assert (= (and b!7566899 ((_ is Star!19985) (reg!20314 (regTwo!40482 r!24333)))) b!7567710))

(assert (= (and b!7566899 ((_ is Union!19985) (reg!20314 (regTwo!40482 r!24333)))) b!7567711))

(declare-fun b!7567713 () Bool)

(declare-fun e!4505825 () Bool)

(declare-fun tp!2203936 () Bool)

(declare-fun tp!2203935 () Bool)

(assert (=> b!7567713 (= e!4505825 (and tp!2203936 tp!2203935))))

(declare-fun b!7567715 () Bool)

(declare-fun tp!2203934 () Bool)

(declare-fun tp!2203932 () Bool)

(assert (=> b!7567715 (= e!4505825 (and tp!2203934 tp!2203932))))

(declare-fun b!7567712 () Bool)

(assert (=> b!7567712 (= e!4505825 tp_is_empty!50325)))

(declare-fun b!7567714 () Bool)

(declare-fun tp!2203933 () Bool)

(assert (=> b!7567714 (= e!4505825 tp!2203933)))

(assert (=> b!7566890 (= tp!2203788 e!4505825)))

(assert (= (and b!7566890 ((_ is ElementMatch!19985) (regOne!40482 (reg!20314 r!24333)))) b!7567712))

(assert (= (and b!7566890 ((_ is Concat!28830) (regOne!40482 (reg!20314 r!24333)))) b!7567713))

(assert (= (and b!7566890 ((_ is Star!19985) (regOne!40482 (reg!20314 r!24333)))) b!7567714))

(assert (= (and b!7566890 ((_ is Union!19985) (regOne!40482 (reg!20314 r!24333)))) b!7567715))

(declare-fun b!7567717 () Bool)

(declare-fun e!4505826 () Bool)

(declare-fun tp!2203941 () Bool)

(declare-fun tp!2203940 () Bool)

(assert (=> b!7567717 (= e!4505826 (and tp!2203941 tp!2203940))))

(declare-fun b!7567719 () Bool)

(declare-fun tp!2203939 () Bool)

(declare-fun tp!2203937 () Bool)

(assert (=> b!7567719 (= e!4505826 (and tp!2203939 tp!2203937))))

(declare-fun b!7567716 () Bool)

(assert (=> b!7567716 (= e!4505826 tp_is_empty!50325)))

(declare-fun b!7567718 () Bool)

(declare-fun tp!2203938 () Bool)

(assert (=> b!7567718 (= e!4505826 tp!2203938)))

(assert (=> b!7566890 (= tp!2203787 e!4505826)))

(assert (= (and b!7566890 ((_ is ElementMatch!19985) (regTwo!40482 (reg!20314 r!24333)))) b!7567716))

(assert (= (and b!7566890 ((_ is Concat!28830) (regTwo!40482 (reg!20314 r!24333)))) b!7567717))

(assert (= (and b!7566890 ((_ is Star!19985) (regTwo!40482 (reg!20314 r!24333)))) b!7567718))

(assert (= (and b!7566890 ((_ is Union!19985) (regTwo!40482 (reg!20314 r!24333)))) b!7567719))

(declare-fun b!7567721 () Bool)

(declare-fun e!4505827 () Bool)

(declare-fun tp!2203946 () Bool)

(declare-fun tp!2203945 () Bool)

(assert (=> b!7567721 (= e!4505827 (and tp!2203946 tp!2203945))))

(declare-fun b!7567723 () Bool)

(declare-fun tp!2203944 () Bool)

(declare-fun tp!2203942 () Bool)

(assert (=> b!7567723 (= e!4505827 (and tp!2203944 tp!2203942))))

(declare-fun b!7567720 () Bool)

(assert (=> b!7567720 (= e!4505827 tp_is_empty!50325)))

(declare-fun b!7567722 () Bool)

(declare-fun tp!2203943 () Bool)

(assert (=> b!7567722 (= e!4505827 tp!2203943)))

(assert (=> b!7566916 (= tp!2203816 e!4505827)))

(assert (= (and b!7566916 ((_ is ElementMatch!19985) (reg!20314 (regTwo!40483 baseR!101)))) b!7567720))

(assert (= (and b!7566916 ((_ is Concat!28830) (reg!20314 (regTwo!40483 baseR!101)))) b!7567721))

(assert (= (and b!7566916 ((_ is Star!19985) (reg!20314 (regTwo!40483 baseR!101)))) b!7567722))

(assert (= (and b!7566916 ((_ is Union!19985) (reg!20314 (regTwo!40483 baseR!101)))) b!7567723))

(declare-fun b!7567724 () Bool)

(declare-fun e!4505828 () Bool)

(declare-fun tp!2203947 () Bool)

(assert (=> b!7567724 (= e!4505828 (and tp_is_empty!50325 tp!2203947))))

(assert (=> b!7566883 (= tp!2203777 e!4505828)))

(assert (= (and b!7566883 ((_ is Cons!72744) (t!387601 (t!387601 input!7874)))) b!7567724))

(declare-fun b!7567726 () Bool)

(declare-fun e!4505829 () Bool)

(declare-fun tp!2203952 () Bool)

(declare-fun tp!2203951 () Bool)

(assert (=> b!7567726 (= e!4505829 (and tp!2203952 tp!2203951))))

(declare-fun b!7567728 () Bool)

(declare-fun tp!2203950 () Bool)

(declare-fun tp!2203948 () Bool)

(assert (=> b!7567728 (= e!4505829 (and tp!2203950 tp!2203948))))

(declare-fun b!7567725 () Bool)

(assert (=> b!7567725 (= e!4505829 tp_is_empty!50325)))

(declare-fun b!7567727 () Bool)

(declare-fun tp!2203949 () Bool)

(assert (=> b!7567727 (= e!4505829 tp!2203949)))

(assert (=> b!7566902 (= tp!2203803 e!4505829)))

(assert (= (and b!7566902 ((_ is ElementMatch!19985) (regOne!40482 (regOne!40483 r!24333)))) b!7567725))

(assert (= (and b!7566902 ((_ is Concat!28830) (regOne!40482 (regOne!40483 r!24333)))) b!7567726))

(assert (= (and b!7566902 ((_ is Star!19985) (regOne!40482 (regOne!40483 r!24333)))) b!7567727))

(assert (= (and b!7566902 ((_ is Union!19985) (regOne!40482 (regOne!40483 r!24333)))) b!7567728))

(declare-fun b!7567730 () Bool)

(declare-fun e!4505830 () Bool)

(declare-fun tp!2203957 () Bool)

(declare-fun tp!2203956 () Bool)

(assert (=> b!7567730 (= e!4505830 (and tp!2203957 tp!2203956))))

(declare-fun b!7567732 () Bool)

(declare-fun tp!2203955 () Bool)

(declare-fun tp!2203953 () Bool)

(assert (=> b!7567732 (= e!4505830 (and tp!2203955 tp!2203953))))

(declare-fun b!7567729 () Bool)

(assert (=> b!7567729 (= e!4505830 tp_is_empty!50325)))

(declare-fun b!7567731 () Bool)

(declare-fun tp!2203954 () Bool)

(assert (=> b!7567731 (= e!4505830 tp!2203954)))

(assert (=> b!7566902 (= tp!2203802 e!4505830)))

(assert (= (and b!7566902 ((_ is ElementMatch!19985) (regTwo!40482 (regOne!40483 r!24333)))) b!7567729))

(assert (= (and b!7566902 ((_ is Concat!28830) (regTwo!40482 (regOne!40483 r!24333)))) b!7567730))

(assert (= (and b!7566902 ((_ is Star!19985) (regTwo!40482 (regOne!40483 r!24333)))) b!7567731))

(assert (= (and b!7566902 ((_ is Union!19985) (regTwo!40482 (regOne!40483 r!24333)))) b!7567732))

(declare-fun b!7567734 () Bool)

(declare-fun e!4505831 () Bool)

(declare-fun tp!2203962 () Bool)

(declare-fun tp!2203961 () Bool)

(assert (=> b!7567734 (= e!4505831 (and tp!2203962 tp!2203961))))

(declare-fun b!7567736 () Bool)

(declare-fun tp!2203960 () Bool)

(declare-fun tp!2203958 () Bool)

(assert (=> b!7567736 (= e!4505831 (and tp!2203960 tp!2203958))))

(declare-fun b!7567733 () Bool)

(assert (=> b!7567733 (= e!4505831 tp_is_empty!50325)))

(declare-fun b!7567735 () Bool)

(declare-fun tp!2203959 () Bool)

(assert (=> b!7567735 (= e!4505831 tp!2203959)))

(assert (=> b!7566903 (= tp!2203800 e!4505831)))

(assert (= (and b!7566903 ((_ is ElementMatch!19985) (reg!20314 (regOne!40483 r!24333)))) b!7567733))

(assert (= (and b!7566903 ((_ is Concat!28830) (reg!20314 (regOne!40483 r!24333)))) b!7567734))

(assert (= (and b!7566903 ((_ is Star!19985) (reg!20314 (regOne!40483 r!24333)))) b!7567735))

(assert (= (and b!7566903 ((_ is Union!19985) (reg!20314 (regOne!40483 r!24333)))) b!7567736))

(declare-fun b!7567738 () Bool)

(declare-fun e!4505832 () Bool)

(declare-fun tp!2203967 () Bool)

(declare-fun tp!2203966 () Bool)

(assert (=> b!7567738 (= e!4505832 (and tp!2203967 tp!2203966))))

(declare-fun b!7567740 () Bool)

(declare-fun tp!2203965 () Bool)

(declare-fun tp!2203963 () Bool)

(assert (=> b!7567740 (= e!4505832 (and tp!2203965 tp!2203963))))

(declare-fun b!7567737 () Bool)

(assert (=> b!7567737 (= e!4505832 tp_is_empty!50325)))

(declare-fun b!7567739 () Bool)

(declare-fun tp!2203964 () Bool)

(assert (=> b!7567739 (= e!4505832 tp!2203964)))

(assert (=> b!7566878 (= tp!2203772 e!4505832)))

(assert (= (and b!7566878 ((_ is ElementMatch!19985) (regOne!40483 (regTwo!40482 baseR!101)))) b!7567737))

(assert (= (and b!7566878 ((_ is Concat!28830) (regOne!40483 (regTwo!40482 baseR!101)))) b!7567738))

(assert (= (and b!7566878 ((_ is Star!19985) (regOne!40483 (regTwo!40482 baseR!101)))) b!7567739))

(assert (= (and b!7566878 ((_ is Union!19985) (regOne!40483 (regTwo!40482 baseR!101)))) b!7567740))

(declare-fun b!7567742 () Bool)

(declare-fun e!4505833 () Bool)

(declare-fun tp!2203972 () Bool)

(declare-fun tp!2203971 () Bool)

(assert (=> b!7567742 (= e!4505833 (and tp!2203972 tp!2203971))))

(declare-fun b!7567744 () Bool)

(declare-fun tp!2203970 () Bool)

(declare-fun tp!2203968 () Bool)

(assert (=> b!7567744 (= e!4505833 (and tp!2203970 tp!2203968))))

(declare-fun b!7567741 () Bool)

(assert (=> b!7567741 (= e!4505833 tp_is_empty!50325)))

(declare-fun b!7567743 () Bool)

(declare-fun tp!2203969 () Bool)

(assert (=> b!7567743 (= e!4505833 tp!2203969)))

(assert (=> b!7566878 (= tp!2203770 e!4505833)))

(assert (= (and b!7566878 ((_ is ElementMatch!19985) (regTwo!40483 (regTwo!40482 baseR!101)))) b!7567741))

(assert (= (and b!7566878 ((_ is Concat!28830) (regTwo!40483 (regTwo!40482 baseR!101)))) b!7567742))

(assert (= (and b!7566878 ((_ is Star!19985) (regTwo!40483 (regTwo!40482 baseR!101)))) b!7567743))

(assert (= (and b!7566878 ((_ is Union!19985) (regTwo!40483 (regTwo!40482 baseR!101)))) b!7567744))

(declare-fun b!7567746 () Bool)

(declare-fun e!4505834 () Bool)

(declare-fun tp!2203977 () Bool)

(declare-fun tp!2203976 () Bool)

(assert (=> b!7567746 (= e!4505834 (and tp!2203977 tp!2203976))))

(declare-fun b!7567748 () Bool)

(declare-fun tp!2203975 () Bool)

(declare-fun tp!2203973 () Bool)

(assert (=> b!7567748 (= e!4505834 (and tp!2203975 tp!2203973))))

(declare-fun b!7567745 () Bool)

(assert (=> b!7567745 (= e!4505834 tp_is_empty!50325)))

(declare-fun b!7567747 () Bool)

(declare-fun tp!2203974 () Bool)

(assert (=> b!7567747 (= e!4505834 tp!2203974)))

(assert (=> b!7566876 (= tp!2203774 e!4505834)))

(assert (= (and b!7566876 ((_ is ElementMatch!19985) (regOne!40482 (regTwo!40482 baseR!101)))) b!7567745))

(assert (= (and b!7566876 ((_ is Concat!28830) (regOne!40482 (regTwo!40482 baseR!101)))) b!7567746))

(assert (= (and b!7566876 ((_ is Star!19985) (regOne!40482 (regTwo!40482 baseR!101)))) b!7567747))

(assert (= (and b!7566876 ((_ is Union!19985) (regOne!40482 (regTwo!40482 baseR!101)))) b!7567748))

(declare-fun b!7567754 () Bool)

(declare-fun e!4505837 () Bool)

(declare-fun tp!2203982 () Bool)

(declare-fun tp!2203981 () Bool)

(assert (=> b!7567754 (= e!4505837 (and tp!2203982 tp!2203981))))

(declare-fun b!7567756 () Bool)

(declare-fun tp!2203980 () Bool)

(declare-fun tp!2203978 () Bool)

(assert (=> b!7567756 (= e!4505837 (and tp!2203980 tp!2203978))))

(declare-fun b!7567753 () Bool)

(assert (=> b!7567753 (= e!4505837 tp_is_empty!50325)))

(declare-fun b!7567755 () Bool)

(declare-fun tp!2203979 () Bool)

(assert (=> b!7567755 (= e!4505837 tp!2203979)))

(assert (=> b!7566876 (= tp!2203773 e!4505837)))

(assert (= (and b!7566876 ((_ is ElementMatch!19985) (regTwo!40482 (regTwo!40482 baseR!101)))) b!7567753))

(assert (= (and b!7566876 ((_ is Concat!28830) (regTwo!40482 (regTwo!40482 baseR!101)))) b!7567754))

(assert (= (and b!7566876 ((_ is Star!19985) (regTwo!40482 (regTwo!40482 baseR!101)))) b!7567755))

(assert (= (and b!7566876 ((_ is Union!19985) (regTwo!40482 (regTwo!40482 baseR!101)))) b!7567756))

(declare-fun b!7567758 () Bool)

(declare-fun e!4505838 () Bool)

(declare-fun tp!2203987 () Bool)

(declare-fun tp!2203986 () Bool)

(assert (=> b!7567758 (= e!4505838 (and tp!2203987 tp!2203986))))

(declare-fun b!7567760 () Bool)

(declare-fun tp!2203985 () Bool)

(declare-fun tp!2203983 () Bool)

(assert (=> b!7567760 (= e!4505838 (and tp!2203985 tp!2203983))))

(declare-fun b!7567757 () Bool)

(assert (=> b!7567757 (= e!4505838 tp_is_empty!50325)))

(declare-fun b!7567759 () Bool)

(declare-fun tp!2203984 () Bool)

(assert (=> b!7567759 (= e!4505838 tp!2203984)))

(assert (=> b!7566877 (= tp!2203771 e!4505838)))

(assert (= (and b!7566877 ((_ is ElementMatch!19985) (reg!20314 (regTwo!40482 baseR!101)))) b!7567757))

(assert (= (and b!7566877 ((_ is Concat!28830) (reg!20314 (regTwo!40482 baseR!101)))) b!7567758))

(assert (= (and b!7566877 ((_ is Star!19985) (reg!20314 (regTwo!40482 baseR!101)))) b!7567759))

(assert (= (and b!7566877 ((_ is Union!19985) (reg!20314 (regTwo!40482 baseR!101)))) b!7567760))

(declare-fun b!7567762 () Bool)

(declare-fun e!4505839 () Bool)

(declare-fun tp!2203992 () Bool)

(declare-fun tp!2203991 () Bool)

(assert (=> b!7567762 (= e!4505839 (and tp!2203992 tp!2203991))))

(declare-fun b!7567764 () Bool)

(declare-fun tp!2203990 () Bool)

(declare-fun tp!2203988 () Bool)

(assert (=> b!7567764 (= e!4505839 (and tp!2203990 tp!2203988))))

(declare-fun b!7567761 () Bool)

(assert (=> b!7567761 (= e!4505839 tp_is_empty!50325)))

(declare-fun b!7567763 () Bool)

(declare-fun tp!2203989 () Bool)

(assert (=> b!7567763 (= e!4505839 tp!2203989)))

(assert (=> b!7566888 (= tp!2203781 e!4505839)))

(assert (= (and b!7566888 ((_ is ElementMatch!19985) (regOne!40483 (reg!20314 baseR!101)))) b!7567761))

(assert (= (and b!7566888 ((_ is Concat!28830) (regOne!40483 (reg!20314 baseR!101)))) b!7567762))

(assert (= (and b!7566888 ((_ is Star!19985) (regOne!40483 (reg!20314 baseR!101)))) b!7567763))

(assert (= (and b!7566888 ((_ is Union!19985) (regOne!40483 (reg!20314 baseR!101)))) b!7567764))

(declare-fun b!7567766 () Bool)

(declare-fun e!4505840 () Bool)

(declare-fun tp!2203997 () Bool)

(declare-fun tp!2203996 () Bool)

(assert (=> b!7567766 (= e!4505840 (and tp!2203997 tp!2203996))))

(declare-fun b!7567768 () Bool)

(declare-fun tp!2203995 () Bool)

(declare-fun tp!2203993 () Bool)

(assert (=> b!7567768 (= e!4505840 (and tp!2203995 tp!2203993))))

(declare-fun b!7567765 () Bool)

(assert (=> b!7567765 (= e!4505840 tp_is_empty!50325)))

(declare-fun b!7567767 () Bool)

(declare-fun tp!2203994 () Bool)

(assert (=> b!7567767 (= e!4505840 tp!2203994)))

(assert (=> b!7566888 (= tp!2203779 e!4505840)))

(assert (= (and b!7566888 ((_ is ElementMatch!19985) (regTwo!40483 (reg!20314 baseR!101)))) b!7567765))

(assert (= (and b!7566888 ((_ is Concat!28830) (regTwo!40483 (reg!20314 baseR!101)))) b!7567766))

(assert (= (and b!7566888 ((_ is Star!19985) (regTwo!40483 (reg!20314 baseR!101)))) b!7567767))

(assert (= (and b!7566888 ((_ is Union!19985) (regTwo!40483 (reg!20314 baseR!101)))) b!7567768))

(declare-fun b!7567772 () Bool)

(declare-fun e!4505842 () Bool)

(declare-fun tp!2204002 () Bool)

(declare-fun tp!2204001 () Bool)

(assert (=> b!7567772 (= e!4505842 (and tp!2204002 tp!2204001))))

(declare-fun b!7567774 () Bool)

(declare-fun tp!2204000 () Bool)

(declare-fun tp!2203998 () Bool)

(assert (=> b!7567774 (= e!4505842 (and tp!2204000 tp!2203998))))

(declare-fun b!7567771 () Bool)

(assert (=> b!7567771 (= e!4505842 tp_is_empty!50325)))

(declare-fun b!7567773 () Bool)

(declare-fun tp!2203999 () Bool)

(assert (=> b!7567773 (= e!4505842 tp!2203999)))

(assert (=> b!7566886 (= tp!2203783 e!4505842)))

(assert (= (and b!7566886 ((_ is ElementMatch!19985) (regOne!40482 (reg!20314 baseR!101)))) b!7567771))

(assert (= (and b!7566886 ((_ is Concat!28830) (regOne!40482 (reg!20314 baseR!101)))) b!7567772))

(assert (= (and b!7566886 ((_ is Star!19985) (regOne!40482 (reg!20314 baseR!101)))) b!7567773))

(assert (= (and b!7566886 ((_ is Union!19985) (regOne!40482 (reg!20314 baseR!101)))) b!7567774))

(declare-fun b!7567776 () Bool)

(declare-fun e!4505843 () Bool)

(declare-fun tp!2204007 () Bool)

(declare-fun tp!2204006 () Bool)

(assert (=> b!7567776 (= e!4505843 (and tp!2204007 tp!2204006))))

(declare-fun b!7567778 () Bool)

(declare-fun tp!2204005 () Bool)

(declare-fun tp!2204003 () Bool)

(assert (=> b!7567778 (= e!4505843 (and tp!2204005 tp!2204003))))

(declare-fun b!7567775 () Bool)

(assert (=> b!7567775 (= e!4505843 tp_is_empty!50325)))

(declare-fun b!7567777 () Bool)

(declare-fun tp!2204004 () Bool)

(assert (=> b!7567777 (= e!4505843 tp!2204004)))

(assert (=> b!7566886 (= tp!2203782 e!4505843)))

(assert (= (and b!7566886 ((_ is ElementMatch!19985) (regTwo!40482 (reg!20314 baseR!101)))) b!7567775))

(assert (= (and b!7566886 ((_ is Concat!28830) (regTwo!40482 (reg!20314 baseR!101)))) b!7567776))

(assert (= (and b!7566886 ((_ is Star!19985) (regTwo!40482 (reg!20314 baseR!101)))) b!7567777))

(assert (= (and b!7566886 ((_ is Union!19985) (regTwo!40482 (reg!20314 baseR!101)))) b!7567778))

(declare-fun b!7567780 () Bool)

(declare-fun e!4505844 () Bool)

(declare-fun tp!2204012 () Bool)

(declare-fun tp!2204011 () Bool)

(assert (=> b!7567780 (= e!4505844 (and tp!2204012 tp!2204011))))

(declare-fun b!7567782 () Bool)

(declare-fun tp!2204010 () Bool)

(declare-fun tp!2204008 () Bool)

(assert (=> b!7567782 (= e!4505844 (and tp!2204010 tp!2204008))))

(declare-fun b!7567779 () Bool)

(assert (=> b!7567779 (= e!4505844 tp_is_empty!50325)))

(declare-fun b!7567781 () Bool)

(declare-fun tp!2204009 () Bool)

(assert (=> b!7567781 (= e!4505844 tp!2204009)))

(assert (=> b!7566912 (= tp!2203811 e!4505844)))

(assert (= (and b!7566912 ((_ is ElementMatch!19985) (reg!20314 (regOne!40483 baseR!101)))) b!7567779))

(assert (= (and b!7566912 ((_ is Concat!28830) (reg!20314 (regOne!40483 baseR!101)))) b!7567780))

(assert (= (and b!7566912 ((_ is Star!19985) (reg!20314 (regOne!40483 baseR!101)))) b!7567781))

(assert (= (and b!7566912 ((_ is Union!19985) (reg!20314 (regOne!40483 baseR!101)))) b!7567782))

(declare-fun b!7567784 () Bool)

(declare-fun e!4505845 () Bool)

(declare-fun tp!2204017 () Bool)

(declare-fun tp!2204016 () Bool)

(assert (=> b!7567784 (= e!4505845 (and tp!2204017 tp!2204016))))

(declare-fun b!7567786 () Bool)

(declare-fun tp!2204015 () Bool)

(declare-fun tp!2204013 () Bool)

(assert (=> b!7567786 (= e!4505845 (and tp!2204015 tp!2204013))))

(declare-fun b!7567783 () Bool)

(assert (=> b!7567783 (= e!4505845 tp_is_empty!50325)))

(declare-fun b!7567785 () Bool)

(declare-fun tp!2204014 () Bool)

(assert (=> b!7567785 (= e!4505845 tp!2204014)))

(assert (=> b!7566896 (= tp!2203791 e!4505845)))

(assert (= (and b!7566896 ((_ is ElementMatch!19985) (regOne!40483 (regOne!40482 r!24333)))) b!7567783))

(assert (= (and b!7566896 ((_ is Concat!28830) (regOne!40483 (regOne!40482 r!24333)))) b!7567784))

(assert (= (and b!7566896 ((_ is Star!19985) (regOne!40483 (regOne!40482 r!24333)))) b!7567785))

(assert (= (and b!7566896 ((_ is Union!19985) (regOne!40483 (regOne!40482 r!24333)))) b!7567786))

(declare-fun b!7567788 () Bool)

(declare-fun e!4505846 () Bool)

(declare-fun tp!2204022 () Bool)

(declare-fun tp!2204021 () Bool)

(assert (=> b!7567788 (= e!4505846 (and tp!2204022 tp!2204021))))

(declare-fun b!7567790 () Bool)

(declare-fun tp!2204020 () Bool)

(declare-fun tp!2204018 () Bool)

(assert (=> b!7567790 (= e!4505846 (and tp!2204020 tp!2204018))))

(declare-fun b!7567787 () Bool)

(assert (=> b!7567787 (= e!4505846 tp_is_empty!50325)))

(declare-fun b!7567789 () Bool)

(declare-fun tp!2204019 () Bool)

(assert (=> b!7567789 (= e!4505846 tp!2204019)))

(assert (=> b!7566896 (= tp!2203789 e!4505846)))

(assert (= (and b!7566896 ((_ is ElementMatch!19985) (regTwo!40483 (regOne!40482 r!24333)))) b!7567787))

(assert (= (and b!7566896 ((_ is Concat!28830) (regTwo!40483 (regOne!40482 r!24333)))) b!7567788))

(assert (= (and b!7566896 ((_ is Star!19985) (regTwo!40483 (regOne!40482 r!24333)))) b!7567789))

(assert (= (and b!7566896 ((_ is Union!19985) (regTwo!40483 (regOne!40482 r!24333)))) b!7567790))

(declare-fun b!7567792 () Bool)

(declare-fun e!4505847 () Bool)

(declare-fun tp!2204027 () Bool)

(declare-fun tp!2204026 () Bool)

(assert (=> b!7567792 (= e!4505847 (and tp!2204027 tp!2204026))))

(declare-fun b!7567794 () Bool)

(declare-fun tp!2204025 () Bool)

(declare-fun tp!2204023 () Bool)

(assert (=> b!7567794 (= e!4505847 (and tp!2204025 tp!2204023))))

(declare-fun b!7567791 () Bool)

(assert (=> b!7567791 (= e!4505847 tp_is_empty!50325)))

(declare-fun b!7567793 () Bool)

(declare-fun tp!2204024 () Bool)

(assert (=> b!7567793 (= e!4505847 tp!2204024)))

(assert (=> b!7566887 (= tp!2203780 e!4505847)))

(assert (= (and b!7566887 ((_ is ElementMatch!19985) (reg!20314 (reg!20314 baseR!101)))) b!7567791))

(assert (= (and b!7566887 ((_ is Concat!28830) (reg!20314 (reg!20314 baseR!101)))) b!7567792))

(assert (= (and b!7566887 ((_ is Star!19985) (reg!20314 (reg!20314 baseR!101)))) b!7567793))

(assert (= (and b!7566887 ((_ is Union!19985) (reg!20314 (reg!20314 baseR!101)))) b!7567794))

(declare-fun b!7567796 () Bool)

(declare-fun e!4505848 () Bool)

(declare-fun tp!2204032 () Bool)

(declare-fun tp!2204031 () Bool)

(assert (=> b!7567796 (= e!4505848 (and tp!2204032 tp!2204031))))

(declare-fun b!7567798 () Bool)

(declare-fun tp!2204030 () Bool)

(declare-fun tp!2204028 () Bool)

(assert (=> b!7567798 (= e!4505848 (and tp!2204030 tp!2204028))))

(declare-fun b!7567795 () Bool)

(assert (=> b!7567795 (= e!4505848 tp_is_empty!50325)))

(declare-fun b!7567797 () Bool)

(declare-fun tp!2204029 () Bool)

(assert (=> b!7567797 (= e!4505848 tp!2204029)))

(assert (=> b!7566913 (= tp!2203812 e!4505848)))

(assert (= (and b!7566913 ((_ is ElementMatch!19985) (regOne!40483 (regOne!40483 baseR!101)))) b!7567795))

(assert (= (and b!7566913 ((_ is Concat!28830) (regOne!40483 (regOne!40483 baseR!101)))) b!7567796))

(assert (= (and b!7566913 ((_ is Star!19985) (regOne!40483 (regOne!40483 baseR!101)))) b!7567797))

(assert (= (and b!7566913 ((_ is Union!19985) (regOne!40483 (regOne!40483 baseR!101)))) b!7567798))

(declare-fun b!7567800 () Bool)

(declare-fun e!4505849 () Bool)

(declare-fun tp!2204037 () Bool)

(declare-fun tp!2204036 () Bool)

(assert (=> b!7567800 (= e!4505849 (and tp!2204037 tp!2204036))))

(declare-fun b!7567802 () Bool)

(declare-fun tp!2204035 () Bool)

(declare-fun tp!2204033 () Bool)

(assert (=> b!7567802 (= e!4505849 (and tp!2204035 tp!2204033))))

(declare-fun b!7567799 () Bool)

(assert (=> b!7567799 (= e!4505849 tp_is_empty!50325)))

(declare-fun b!7567801 () Bool)

(declare-fun tp!2204034 () Bool)

(assert (=> b!7567801 (= e!4505849 tp!2204034)))

(assert (=> b!7566913 (= tp!2203810 e!4505849)))

(assert (= (and b!7566913 ((_ is ElementMatch!19985) (regTwo!40483 (regOne!40483 baseR!101)))) b!7567799))

(assert (= (and b!7566913 ((_ is Concat!28830) (regTwo!40483 (regOne!40483 baseR!101)))) b!7567800))

(assert (= (and b!7566913 ((_ is Star!19985) (regTwo!40483 (regOne!40483 baseR!101)))) b!7567801))

(assert (= (and b!7566913 ((_ is Union!19985) (regTwo!40483 (regOne!40483 baseR!101)))) b!7567802))

(declare-fun b!7567804 () Bool)

(declare-fun e!4505850 () Bool)

(declare-fun tp!2204042 () Bool)

(declare-fun tp!2204041 () Bool)

(assert (=> b!7567804 (= e!4505850 (and tp!2204042 tp!2204041))))

(declare-fun b!7567806 () Bool)

(declare-fun tp!2204040 () Bool)

(declare-fun tp!2204038 () Bool)

(assert (=> b!7567806 (= e!4505850 (and tp!2204040 tp!2204038))))

(declare-fun b!7567803 () Bool)

(assert (=> b!7567803 (= e!4505850 tp_is_empty!50325)))

(declare-fun b!7567805 () Bool)

(declare-fun tp!2204039 () Bool)

(assert (=> b!7567805 (= e!4505850 tp!2204039)))

(assert (=> b!7566894 (= tp!2203793 e!4505850)))

(assert (= (and b!7566894 ((_ is ElementMatch!19985) (regOne!40482 (regOne!40482 r!24333)))) b!7567803))

(assert (= (and b!7566894 ((_ is Concat!28830) (regOne!40482 (regOne!40482 r!24333)))) b!7567804))

(assert (= (and b!7566894 ((_ is Star!19985) (regOne!40482 (regOne!40482 r!24333)))) b!7567805))

(assert (= (and b!7566894 ((_ is Union!19985) (regOne!40482 (regOne!40482 r!24333)))) b!7567806))

(declare-fun b!7567808 () Bool)

(declare-fun e!4505851 () Bool)

(declare-fun tp!2204047 () Bool)

(declare-fun tp!2204046 () Bool)

(assert (=> b!7567808 (= e!4505851 (and tp!2204047 tp!2204046))))

(declare-fun b!7567810 () Bool)

(declare-fun tp!2204045 () Bool)

(declare-fun tp!2204043 () Bool)

(assert (=> b!7567810 (= e!4505851 (and tp!2204045 tp!2204043))))

(declare-fun b!7567807 () Bool)

(assert (=> b!7567807 (= e!4505851 tp_is_empty!50325)))

(declare-fun b!7567809 () Bool)

(declare-fun tp!2204044 () Bool)

(assert (=> b!7567809 (= e!4505851 tp!2204044)))

(assert (=> b!7566894 (= tp!2203792 e!4505851)))

(assert (= (and b!7566894 ((_ is ElementMatch!19985) (regTwo!40482 (regOne!40482 r!24333)))) b!7567807))

(assert (= (and b!7566894 ((_ is Concat!28830) (regTwo!40482 (regOne!40482 r!24333)))) b!7567808))

(assert (= (and b!7566894 ((_ is Star!19985) (regTwo!40482 (regOne!40482 r!24333)))) b!7567809))

(assert (= (and b!7566894 ((_ is Union!19985) (regTwo!40482 (regOne!40482 r!24333)))) b!7567810))

(declare-fun b!7567812 () Bool)

(declare-fun e!4505852 () Bool)

(declare-fun tp!2204052 () Bool)

(declare-fun tp!2204051 () Bool)

(assert (=> b!7567812 (= e!4505852 (and tp!2204052 tp!2204051))))

(declare-fun b!7567814 () Bool)

(declare-fun tp!2204050 () Bool)

(declare-fun tp!2204048 () Bool)

(assert (=> b!7567814 (= e!4505852 (and tp!2204050 tp!2204048))))

(declare-fun b!7567811 () Bool)

(assert (=> b!7567811 (= e!4505852 tp_is_empty!50325)))

(declare-fun b!7567813 () Bool)

(declare-fun tp!2204049 () Bool)

(assert (=> b!7567813 (= e!4505852 tp!2204049)))

(assert (=> b!7566911 (= tp!2203814 e!4505852)))

(assert (= (and b!7566911 ((_ is ElementMatch!19985) (regOne!40482 (regOne!40483 baseR!101)))) b!7567811))

(assert (= (and b!7566911 ((_ is Concat!28830) (regOne!40482 (regOne!40483 baseR!101)))) b!7567812))

(assert (= (and b!7566911 ((_ is Star!19985) (regOne!40482 (regOne!40483 baseR!101)))) b!7567813))

(assert (= (and b!7566911 ((_ is Union!19985) (regOne!40482 (regOne!40483 baseR!101)))) b!7567814))

(declare-fun b!7567818 () Bool)

(declare-fun e!4505854 () Bool)

(declare-fun tp!2204057 () Bool)

(declare-fun tp!2204056 () Bool)

(assert (=> b!7567818 (= e!4505854 (and tp!2204057 tp!2204056))))

(declare-fun b!7567820 () Bool)

(declare-fun tp!2204055 () Bool)

(declare-fun tp!2204053 () Bool)

(assert (=> b!7567820 (= e!4505854 (and tp!2204055 tp!2204053))))

(declare-fun b!7567817 () Bool)

(assert (=> b!7567817 (= e!4505854 tp_is_empty!50325)))

(declare-fun b!7567819 () Bool)

(declare-fun tp!2204054 () Bool)

(assert (=> b!7567819 (= e!4505854 tp!2204054)))

(assert (=> b!7566911 (= tp!2203813 e!4505854)))

(assert (= (and b!7566911 ((_ is ElementMatch!19985) (regTwo!40482 (regOne!40483 baseR!101)))) b!7567817))

(assert (= (and b!7566911 ((_ is Concat!28830) (regTwo!40482 (regOne!40483 baseR!101)))) b!7567818))

(assert (= (and b!7566911 ((_ is Star!19985) (regTwo!40482 (regOne!40483 baseR!101)))) b!7567819))

(assert (= (and b!7566911 ((_ is Union!19985) (regTwo!40482 (regOne!40483 baseR!101)))) b!7567820))

(declare-fun b!7567822 () Bool)

(declare-fun e!4505855 () Bool)

(declare-fun tp!2204062 () Bool)

(declare-fun tp!2204061 () Bool)

(assert (=> b!7567822 (= e!4505855 (and tp!2204062 tp!2204061))))

(declare-fun b!7567824 () Bool)

(declare-fun tp!2204060 () Bool)

(declare-fun tp!2204058 () Bool)

(assert (=> b!7567824 (= e!4505855 (and tp!2204060 tp!2204058))))

(declare-fun b!7567821 () Bool)

(assert (=> b!7567821 (= e!4505855 tp_is_empty!50325)))

(declare-fun b!7567823 () Bool)

(declare-fun tp!2204059 () Bool)

(assert (=> b!7567823 (= e!4505855 tp!2204059)))

(assert (=> b!7566904 (= tp!2203801 e!4505855)))

(assert (= (and b!7566904 ((_ is ElementMatch!19985) (regOne!40483 (regOne!40483 r!24333)))) b!7567821))

(assert (= (and b!7566904 ((_ is Concat!28830) (regOne!40483 (regOne!40483 r!24333)))) b!7567822))

(assert (= (and b!7566904 ((_ is Star!19985) (regOne!40483 (regOne!40483 r!24333)))) b!7567823))

(assert (= (and b!7566904 ((_ is Union!19985) (regOne!40483 (regOne!40483 r!24333)))) b!7567824))

(declare-fun b!7567826 () Bool)

(declare-fun e!4505856 () Bool)

(declare-fun tp!2204067 () Bool)

(declare-fun tp!2204066 () Bool)

(assert (=> b!7567826 (= e!4505856 (and tp!2204067 tp!2204066))))

(declare-fun b!7567828 () Bool)

(declare-fun tp!2204065 () Bool)

(declare-fun tp!2204063 () Bool)

(assert (=> b!7567828 (= e!4505856 (and tp!2204065 tp!2204063))))

(declare-fun b!7567825 () Bool)

(assert (=> b!7567825 (= e!4505856 tp_is_empty!50325)))

(declare-fun b!7567827 () Bool)

(declare-fun tp!2204064 () Bool)

(assert (=> b!7567827 (= e!4505856 tp!2204064)))

(assert (=> b!7566904 (= tp!2203799 e!4505856)))

(assert (= (and b!7566904 ((_ is ElementMatch!19985) (regTwo!40483 (regOne!40483 r!24333)))) b!7567825))

(assert (= (and b!7566904 ((_ is Concat!28830) (regTwo!40483 (regOne!40483 r!24333)))) b!7567826))

(assert (= (and b!7566904 ((_ is Star!19985) (regTwo!40483 (regOne!40483 r!24333)))) b!7567827))

(assert (= (and b!7566904 ((_ is Union!19985) (regTwo!40483 (regOne!40483 r!24333)))) b!7567828))

(declare-fun b!7567832 () Bool)

(declare-fun e!4505858 () Bool)

(declare-fun tp!2204072 () Bool)

(declare-fun tp!2204071 () Bool)

(assert (=> b!7567832 (= e!4505858 (and tp!2204072 tp!2204071))))

(declare-fun b!7567834 () Bool)

(declare-fun tp!2204070 () Bool)

(declare-fun tp!2204068 () Bool)

(assert (=> b!7567834 (= e!4505858 (and tp!2204070 tp!2204068))))

(declare-fun b!7567831 () Bool)

(assert (=> b!7567831 (= e!4505858 tp_is_empty!50325)))

(declare-fun b!7567833 () Bool)

(declare-fun tp!2204069 () Bool)

(assert (=> b!7567833 (= e!4505858 tp!2204069)))

(assert (=> b!7566895 (= tp!2203790 e!4505858)))

(assert (= (and b!7566895 ((_ is ElementMatch!19985) (reg!20314 (regOne!40482 r!24333)))) b!7567831))

(assert (= (and b!7566895 ((_ is Concat!28830) (reg!20314 (regOne!40482 r!24333)))) b!7567832))

(assert (= (and b!7566895 ((_ is Star!19985) (reg!20314 (regOne!40482 r!24333)))) b!7567833))

(assert (= (and b!7566895 ((_ is Union!19985) (reg!20314 (regOne!40482 r!24333)))) b!7567834))

(check-sat (not b!7567293) (not b!7567570) (not b!7566959) (not bm!693804) (not b!7566958) (not b!7567666) (not d!2316628) (not b!7567012) (not d!2316786) (not d!2317000) (not b!7567588) (not b!7567627) (not b!7567075) (not bm!693788) (not b!7567744) (not bm!693794) (not b!7567335) (not b!7567018) (not b!7566986) (not b!7567552) (not d!2316840) (not bm!693797) (not b!7567254) (not b!7567119) (not b!7567157) (not b!7567631) (not bm!693784) (not b!7567683) (not d!2316750) (not b!7567819) (not d!2316738) (not b!7567689) (not b!7567044) (not b!7567713) (not b!7567804) (not b!7567080) (not bm!693832) (not b!7567043) (not d!2316600) (not b!7567682) (not b!7567796) (not b!7567206) (not b!7567626) (not bm!693768) (not bm!693810) (not b!7566935) (not b!7567233) (not d!2316668) (not d!2316684) (not bm!693835) (not b!7567663) (not b!7567103) (not b!7567423) (not b!7567827) (not bm!693759) (not d!2316724) (not b!7567151) (not b!7567029) (not b!7567093) (not b!7567273) (not bm!693857) (not b!7567596) (not b!7567780) (not b!7567686) (not bm!693811) (not b!7567810) (not b!7567695) (not d!2316652) (not d!2316888) (not b!7567514) (not b!7566996) (not b!7567633) (not b!7567802) (not d!2317014) (not b!7567755) (not d!2316740) (not d!2316948) (not b!7567739) (not b!7567417) (not b!7567133) (not b!7567597) (not b!7567475) (not b!7567823) (not b!7567781) (not b!7567785) (not b!7567047) (not b!7567310) (not d!2316872) (not b!7566922) (not b!7567801) (not b!7567227) (not d!2316714) (not bm!693809) (not b!7567231) (not b!7567800) (not b!7566941) (not b!7567193) (not b!7567667) (not b!7567010) (not b!7567637) (not b!7567098) (not d!2316966) (not b!7567672) (not b!7567311) (not b!7567813) (not bm!693760) (not b!7567308) (not b!7567754) (not d!2316884) (not bm!693765) (not d!2316828) (not b!7567724) (not b!7567571) (not bm!693844) (not b!7567252) (not b!7567743) (not b!7567740) (not b!7567723) (not b!7567060) (not b!7567614) (not b!7567301) (not b!7567072) (not d!2316968) (not d!2316712) (not b!7567086) (not b!7567643) (not b!7567786) (not b!7567699) (not d!2316632) (not b!7567735) (not b!7567159) (not b!7567334) (not b!7567541) (not b!7567611) (not d!2316698) (not d!2316676) (not b!7567809) (not b!7567653) (not b!7567155) (not b!7566945) (not b!7567798) (not b!7567710) (not b!7567574) (not b!7567532) (not b!7567302) (not d!2316674) (not d!2316772) (not b!7567147) (not d!2317020) (not b!7566938) (not bm!693781) (not b!7566967) (not b!7567822) (not b!7566971) (not b!7567607) (not b!7566969) (not b!7567697) (not bm!693776) (not b!7567784) (not bm!693761) (not b!7567473) (not bm!693755) (not bm!693805) (not b!7567089) (not b!7567296) (not b!7567738) (not b!7567711) (not b!7566985) (not b!7567728) (not b!7567163) (not b!7567153) (not b!7567499) (not b!7567040) (not b!7567558) (not bm!693858) (not b!7567286) (not b!7567347) (not bm!693774) (not b!7567613) (not b!7567509) (not d!2316642) (not d!2316864) (not b!7567766) (not d!2316602) (not d!2316934) (not b!7567145) (not b!7567277) (not d!2316978) (not b!7567687) (not b!7567275) (not d!2316998) (not b!7567828) (not bm!693843) (not b!7566991) (not b!7567530) (not d!2316640) (not b!7567009) (not b!7567746) (not bm!693758) (not b!7566937) (not b!7567035) (not b!7567690) (not b!7567778) (not b!7567204) (not b!7567693) (not d!2317010) (not b!7567726) (not b!7567691) (not b!7567402) (not b!7567777) (not b!7567721) (not b!7567824) (not b!7567661) (not b!7567730) (not b!7567346) (not b!7567638) (not bm!693817) (not b!7567762) (not b!7567647) (not d!2316790) (not b!7567593) (not bm!693861) (not d!2316776) (not d!2316648) (not b!7567702) (not b!7566993) (not b!7567469) (not b!7567200) (not b!7567794) (not b!7567681) (not bm!693764) (not b!7567797) (not b!7567258) (not b!7567820) (not b!7567203) (not b!7567623) (not b!7567734) (not b!7567615) (not b!7567732) (not b!7567568) (not b!7566934) (not b!7567629) (not d!2316732) (not b!7567742) (not b!7567595) (not b!7567705) (not b!7567196) (not b!7567671) (not b!7567756) (not d!2316862) (not bm!693772) (not b!7567319) (not b!7567717) (not b!7567790) (not bm!693839) (not b!7567566) (not b!7567449) (not b!7567668) (not b!7567719) (not b!7567767) (not b!7567077) (not b!7567773) (not b!7567806) (not b!7567255) (not b!7567235) (not b!7566965) (not bm!693773) (not b!7567814) (not d!2316654) (not b!7567324) (not b!7567664) (not b!7567244) (not b!7567764) (not b!7567578) (not bm!693836) (not b!7567219) (not b!7567763) (not bm!693863) (not b!7567622) (not bm!693816) (not b!7567292) (not bm!693793) (not b!7567036) (not b!7567006) (not b!7567758) (not d!2316610) (not b!7567718) (not d!2316860) (not b!7567224) (not b!7567033) (not b!7567136) (not bm!693779) (not b!7567832) (not b!7567472) (not bm!693789) (not b!7567300) (not b!7566928) (not d!2316604) (not d!2316938) (not b!7567808) (not b!7567675) (not b!7567045) (not bm!693790) tp_is_empty!50325 (not b!7566989) (not b!7567625) (not b!7567788) (not b!7567618) (not b!7567306) (not d!2316670) (not d!2316722) (not d!2316782) (not b!7567220) (not b!7567298) (not b!7567642) (not d!2316984) (not b!7567714) (not b!7567621) (not b!7567834) (not b!7567630) (not b!7567634) (not b!7566973) (not bm!693791) (not b!7566957) (not b!7567619) (not b!7566954) (not b!7567654) (not bm!693775) (not b!7567465) (not b!7567048) (not d!2316702) (not b!7566942) (not d!2316700) (not b!7567639) (not b!7567567) (not b!7567271) (not bm!693837) (not b!7567195) (not bm!693838) (not b!7567715) (not b!7567540) (not bm!693785) (not b!7567413) (not b!7567225) (not b!7567833) (not b!7567698) (not d!2317012) (not b!7567792) (not b!7567024) (not bm!693796) (not b!7567031) (not b!7567805) (not b!7567609) (not b!7567223) (not b!7567635) (not b!7567132) (not d!2316866) (not d!2317034) (not b!7567793) (not bm!693808) (not b!7567818) (not b!7567318) (not d!2317016) (not b!7567759) (not b!7567772) (not b!7567760) (not b!7567722) (not bm!693754) (not d!2316804) (not b!7567587) (not b!7567083) (not b!7567604) (not b!7567768) (not b!7567056) (not bm!693846) (not b!7567090) (not b!7567591) (not b!7567617) (not b!7567701) (not b!7567017) (not b!7567533) (not b!7567649) (not b!7566982) (not d!2316720) (not b!7567014) (not b!7567518) (not d!2316952) (not bm!693780) (not b!7567706) (not d!2316646) (not b!7567100) (not d!2317008) (not bm!693864) (not b!7567776) (not d!2316592) (not bm!693814) (not b!7567774) (not b!7567727) (not d!2316666) (not b!7567694) (not d!2316880) (not b!7567662) (not b!7567325) (not b!7567121) (not b!7567812) (not d!2316918) (not b!7567655) (not b!7566995) (not b!7567826) (not b!7567094) (not b!7567272) (not b!7567085) (not b!7567051) (not d!2316734) (not b!7567736) (not b!7567550) (not b!7567038) (not bm!693833) (not bm!693834) (not b!7567130) (not d!2316692) (not b!7567747) (not d!2316686) (not b!7567149) (not b!7567097) (not b!7567114) (not b!7567246) (not b!7566918) (not b!7567052) (not b!7567707) (not b!7567648) (not b!7567709) (not d!2316704) (not d!2316656) (not b!7567216) (not b!7567670) (not b!7567055) (not b!7567685) (not b!7567789) (not b!7567610) (not bm!693777) (not bm!693803) (not b!7567160) (not bm!693756) (not d!2316688) (not d!2316780) (not b!7567731) (not b!7567464) (not d!2316814) (not d!2316680) (not b!7567104) (not bm!693769) (not b!7567229) (not b!7567782) (not bm!693757) (not bm!693813) (not d!2316728) (not d!2316954) (not b!7567748) (not b!7567307) (not b!7567117) (not b!7567524) (not b!7567416) (not b!7567079) (not d!2316784) (not b!7566933) (not b!7567599) (not b!7567059) (not bm!693862) (not b!7567062) (not b!7567703) (not d!2316726) (not b!7567575) (not b!7566992) (not bm!693778) (not b!7567559) (not b!7566921) (not b!7567641))
(check-sat)
