; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728600 () Bool)

(assert start!728600)

(declare-fun b!7530719 () Bool)

(declare-fun e!4488196 () Bool)

(declare-fun tp_is_empty!50073 () Bool)

(declare-fun tp!2189202 () Bool)

(assert (=> b!7530719 (= e!4488196 (and tp_is_empty!50073 tp!2189202))))

(declare-fun b!7530720 () Bool)

(declare-fun e!4488199 () Bool)

(declare-fun tp!2189196 () Bool)

(assert (=> b!7530720 (= e!4488199 (and tp_is_empty!50073 tp!2189196))))

(declare-fun b!7530721 () Bool)

(declare-fun e!4488198 () Bool)

(declare-fun tp!2189203 () Bool)

(assert (=> b!7530721 (= e!4488198 (and tp_is_empty!50073 tp!2189203))))

(declare-fun b!7530722 () Bool)

(declare-fun e!4488197 () Bool)

(declare-fun tp!2189197 () Bool)

(assert (=> b!7530722 (= e!4488197 tp!2189197)))

(declare-fun b!7530723 () Bool)

(declare-fun res!3018172 () Bool)

(declare-fun e!4488203 () Bool)

(assert (=> b!7530723 (=> res!3018172 e!4488203)))

(declare-fun lt!2640496 () Int)

(declare-fun lt!2640499 () Int)

(assert (=> b!7530723 (= res!3018172 (not (= lt!2640496 lt!2640499)))))

(declare-fun res!3018175 () Bool)

(declare-fun e!4488202 () Bool)

(assert (=> start!728600 (=> (not res!3018175) (not e!4488202))))

(declare-datatypes ((C!40044 0))(
  ( (C!40045 (val!30462 Int)) )
))
(declare-datatypes ((Regex!19859 0))(
  ( (ElementMatch!19859 (c!1390850 C!40044)) (Concat!28704 (regOne!40230 Regex!19859) (regTwo!40230 Regex!19859)) (EmptyExpr!19859) (Star!19859 (reg!20188 Regex!19859)) (EmptyLang!19859) (Union!19859 (regOne!40231 Regex!19859) (regTwo!40231 Regex!19859)) )
))
(declare-fun baseR!101 () Regex!19859)

(declare-fun validRegex!10287 (Regex!19859) Bool)

(assert (=> start!728600 (= res!3018175 (validRegex!10287 baseR!101))))

(assert (=> start!728600 e!4488202))

(assert (=> start!728600 e!4488197))

(assert (=> start!728600 e!4488199))

(assert (=> start!728600 e!4488198))

(assert (=> start!728600 e!4488196))

(declare-fun e!4488201 () Bool)

(assert (=> start!728600 e!4488201))

(declare-fun b!7530724 () Bool)

(declare-fun tp!2189199 () Bool)

(assert (=> b!7530724 (= e!4488201 tp!2189199)))

(declare-fun b!7530725 () Bool)

(assert (=> b!7530725 (= e!4488203 true)))

(declare-datatypes ((List!72742 0))(
  ( (Nil!72618) (Cons!72618 (h!79066 C!40044) (t!387449 List!72742)) )
))
(declare-fun input!7874 () List!72742)

(declare-fun testedP!423 () List!72742)

(declare-fun r!24333 () Regex!19859)

(declare-fun size!42355 (List!72742) Int)

(declare-datatypes ((tuple2!68820 0))(
  ( (tuple2!68821 (_1!37713 List!72742) (_2!37713 List!72742)) )
))
(declare-fun findLongestMatchInner!2118 (Regex!19859 List!72742 Int List!72742 List!72742 Int) tuple2!68820)

(declare-fun getSuffix!3545 (List!72742 List!72742) List!72742)

(assert (=> b!7530725 (>= (size!42355 (_1!37713 (findLongestMatchInner!2118 r!24333 testedP!423 lt!2640496 (getSuffix!3545 input!7874 testedP!423) input!7874 (size!42355 input!7874)))) lt!2640496)))

(declare-datatypes ((Unit!166638 0))(
  ( (Unit!166639) )
))
(declare-fun lt!2640497 () Unit!166638)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!4 (Regex!19859 Regex!19859 List!72742 List!72742) Unit!166638)

(assert (=> b!7530725 (= lt!2640497 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!4 baseR!101 r!24333 input!7874 testedP!423))))

(declare-fun knownP!30 () List!72742)

(assert (=> b!7530725 (= testedP!423 knownP!30)))

(declare-fun lt!2640500 () Unit!166638)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1519 (List!72742 List!72742 List!72742) Unit!166638)

(assert (=> b!7530725 (= lt!2640500 (lemmaIsPrefixSameLengthThenSameList!1519 testedP!423 knownP!30 input!7874))))

(declare-fun b!7530726 () Bool)

(assert (=> b!7530726 (= e!4488201 tp_is_empty!50073)))

(declare-fun b!7530727 () Bool)

(declare-fun tp!2189193 () Bool)

(declare-fun tp!2189200 () Bool)

(assert (=> b!7530727 (= e!4488201 (and tp!2189193 tp!2189200))))

(declare-fun b!7530728 () Bool)

(declare-fun res!3018179 () Bool)

(assert (=> b!7530728 (=> (not res!3018179) (not e!4488202))))

(declare-fun isPrefix!6065 (List!72742 List!72742) Bool)

(assert (=> b!7530728 (= res!3018179 (isPrefix!6065 knownP!30 input!7874))))

(declare-fun b!7530729 () Bool)

(assert (=> b!7530729 (= e!4488197 tp_is_empty!50073)))

(declare-fun b!7530730 () Bool)

(declare-fun res!3018178 () Bool)

(declare-fun e!4488200 () Bool)

(assert (=> b!7530730 (=> (not res!3018178) (not e!4488200))))

(declare-fun matchR!9461 (Regex!19859 List!72742) Bool)

(assert (=> b!7530730 (= res!3018178 (matchR!9461 baseR!101 knownP!30))))

(declare-fun b!7530731 () Bool)

(assert (=> b!7530731 (= e!4488200 (not e!4488203))))

(declare-fun res!3018174 () Bool)

(assert (=> b!7530731 (=> res!3018174 e!4488203)))

(assert (=> b!7530731 (= res!3018174 (not (matchR!9461 r!24333 (getSuffix!3545 knownP!30 testedP!423))))))

(assert (=> b!7530731 (isPrefix!6065 testedP!423 knownP!30)))

(declare-fun lt!2640498 () Unit!166638)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!815 (List!72742 List!72742 List!72742) Unit!166638)

(assert (=> b!7530731 (= lt!2640498 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!815 knownP!30 testedP!423 input!7874))))

(declare-fun b!7530732 () Bool)

(declare-fun res!3018180 () Bool)

(assert (=> b!7530732 (=> res!3018180 e!4488203)))

(declare-fun derivative!391 (Regex!19859 List!72742) Regex!19859)

(assert (=> b!7530732 (= res!3018180 (not (= (derivative!391 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7530733 () Bool)

(declare-fun tp!2189198 () Bool)

(declare-fun tp!2189194 () Bool)

(assert (=> b!7530733 (= e!4488197 (and tp!2189198 tp!2189194))))

(declare-fun b!7530734 () Bool)

(declare-fun res!3018176 () Bool)

(assert (=> b!7530734 (=> (not res!3018176) (not e!4488202))))

(assert (=> b!7530734 (= res!3018176 (isPrefix!6065 testedP!423 input!7874))))

(declare-fun b!7530735 () Bool)

(declare-fun res!3018177 () Bool)

(assert (=> b!7530735 (=> (not res!3018177) (not e!4488202))))

(assert (=> b!7530735 (= res!3018177 (validRegex!10287 r!24333))))

(declare-fun b!7530736 () Bool)

(assert (=> b!7530736 (= e!4488202 e!4488200)))

(declare-fun res!3018171 () Bool)

(assert (=> b!7530736 (=> (not res!3018171) (not e!4488200))))

(assert (=> b!7530736 (= res!3018171 (>= lt!2640499 lt!2640496))))

(assert (=> b!7530736 (= lt!2640496 (size!42355 testedP!423))))

(assert (=> b!7530736 (= lt!2640499 (size!42355 knownP!30))))

(declare-fun b!7530737 () Bool)

(declare-fun res!3018173 () Bool)

(assert (=> b!7530737 (=> res!3018173 e!4488203)))

(declare-fun lostCause!1651 (Regex!19859) Bool)

(assert (=> b!7530737 (= res!3018173 (lostCause!1651 r!24333))))

(declare-fun b!7530738 () Bool)

(declare-fun tp!2189192 () Bool)

(declare-fun tp!2189191 () Bool)

(assert (=> b!7530738 (= e!4488201 (and tp!2189192 tp!2189191))))

(declare-fun b!7530739 () Bool)

(declare-fun tp!2189195 () Bool)

(declare-fun tp!2189201 () Bool)

(assert (=> b!7530739 (= e!4488197 (and tp!2189195 tp!2189201))))

(assert (= (and start!728600 res!3018175) b!7530735))

(assert (= (and b!7530735 res!3018177) b!7530734))

(assert (= (and b!7530734 res!3018176) b!7530728))

(assert (= (and b!7530728 res!3018179) b!7530736))

(assert (= (and b!7530736 res!3018171) b!7530730))

(assert (= (and b!7530730 res!3018178) b!7530731))

(assert (= (and b!7530731 (not res!3018174)) b!7530732))

(assert (= (and b!7530732 (not res!3018180)) b!7530737))

(assert (= (and b!7530737 (not res!3018173)) b!7530723))

(assert (= (and b!7530723 (not res!3018172)) b!7530725))

(get-info :version)

(assert (= (and start!728600 ((_ is ElementMatch!19859) baseR!101)) b!7530729))

(assert (= (and start!728600 ((_ is Concat!28704) baseR!101)) b!7530733))

(assert (= (and start!728600 ((_ is Star!19859) baseR!101)) b!7530722))

(assert (= (and start!728600 ((_ is Union!19859) baseR!101)) b!7530739))

(assert (= (and start!728600 ((_ is Cons!72618) input!7874)) b!7530720))

(assert (= (and start!728600 ((_ is Cons!72618) knownP!30)) b!7530721))

(assert (= (and start!728600 ((_ is Cons!72618) testedP!423)) b!7530719))

(assert (= (and start!728600 ((_ is ElementMatch!19859) r!24333)) b!7530726))

(assert (= (and start!728600 ((_ is Concat!28704) r!24333)) b!7530738))

(assert (= (and start!728600 ((_ is Star!19859) r!24333)) b!7530724))

(assert (= (and start!728600 ((_ is Union!19859) r!24333)) b!7530727))

(declare-fun m!8104012 () Bool)

(assert (=> b!7530734 m!8104012))

(declare-fun m!8104014 () Bool)

(assert (=> b!7530725 m!8104014))

(declare-fun m!8104016 () Bool)

(assert (=> b!7530725 m!8104016))

(declare-fun m!8104018 () Bool)

(assert (=> b!7530725 m!8104018))

(declare-fun m!8104020 () Bool)

(assert (=> b!7530725 m!8104020))

(assert (=> b!7530725 m!8104016))

(declare-fun m!8104022 () Bool)

(assert (=> b!7530725 m!8104022))

(assert (=> b!7530725 m!8104020))

(declare-fun m!8104024 () Bool)

(assert (=> b!7530725 m!8104024))

(declare-fun m!8104026 () Bool)

(assert (=> start!728600 m!8104026))

(declare-fun m!8104028 () Bool)

(assert (=> b!7530735 m!8104028))

(declare-fun m!8104030 () Bool)

(assert (=> b!7530728 m!8104030))

(declare-fun m!8104032 () Bool)

(assert (=> b!7530731 m!8104032))

(assert (=> b!7530731 m!8104032))

(declare-fun m!8104034 () Bool)

(assert (=> b!7530731 m!8104034))

(declare-fun m!8104036 () Bool)

(assert (=> b!7530731 m!8104036))

(declare-fun m!8104038 () Bool)

(assert (=> b!7530731 m!8104038))

(declare-fun m!8104040 () Bool)

(assert (=> b!7530737 m!8104040))

(declare-fun m!8104042 () Bool)

(assert (=> b!7530732 m!8104042))

(declare-fun m!8104044 () Bool)

(assert (=> b!7530730 m!8104044))

(declare-fun m!8104046 () Bool)

(assert (=> b!7530736 m!8104046))

(declare-fun m!8104048 () Bool)

(assert (=> b!7530736 m!8104048))

(check-sat (not b!7530731) (not b!7530730) (not b!7530732) (not b!7530722) (not b!7530733) (not b!7530739) (not b!7530734) (not b!7530725) (not b!7530735) (not b!7530721) (not b!7530720) (not b!7530737) (not b!7530719) (not b!7530727) (not b!7530738) tp_is_empty!50073 (not b!7530736) (not b!7530724) (not start!728600) (not b!7530728))
(check-sat)
