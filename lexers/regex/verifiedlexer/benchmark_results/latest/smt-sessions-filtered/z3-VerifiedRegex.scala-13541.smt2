; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728840 () Bool)

(assert start!728840)

(declare-fun b!7534506 () Bool)

(declare-fun e!4489955 () Bool)

(declare-fun tp!2190929 () Bool)

(declare-fun tp!2190921 () Bool)

(assert (=> b!7534506 (= e!4489955 (and tp!2190929 tp!2190921))))

(declare-fun res!3019525 () Bool)

(declare-fun e!4489953 () Bool)

(assert (=> start!728840 (=> (not res!3019525) (not e!4489953))))

(declare-datatypes ((C!40080 0))(
  ( (C!40081 (val!30480 Int)) )
))
(declare-datatypes ((Regex!19877 0))(
  ( (ElementMatch!19877 (c!1391358 C!40080)) (Concat!28722 (regOne!40266 Regex!19877) (regTwo!40266 Regex!19877)) (EmptyExpr!19877) (Star!19877 (reg!20206 Regex!19877)) (EmptyLang!19877) (Union!19877 (regOne!40267 Regex!19877) (regTwo!40267 Regex!19877)) )
))
(declare-fun baseR!101 () Regex!19877)

(declare-fun validRegex!10305 (Regex!19877) Bool)

(assert (=> start!728840 (= res!3019525 (validRegex!10305 baseR!101))))

(assert (=> start!728840 e!4489953))

(declare-fun e!4489951 () Bool)

(assert (=> start!728840 e!4489951))

(declare-fun e!4489952 () Bool)

(assert (=> start!728840 e!4489952))

(declare-fun e!4489950 () Bool)

(assert (=> start!728840 e!4489950))

(declare-fun e!4489957 () Bool)

(assert (=> start!728840 e!4489957))

(assert (=> start!728840 e!4489955))

(declare-fun b!7534507 () Bool)

(declare-fun tp_is_empty!50109 () Bool)

(declare-fun tp!2190923 () Bool)

(assert (=> b!7534507 (= e!4489950 (and tp_is_empty!50109 tp!2190923))))

(declare-fun b!7534508 () Bool)

(declare-fun tp!2190925 () Bool)

(assert (=> b!7534508 (= e!4489957 (and tp_is_empty!50109 tp!2190925))))

(declare-fun b!7534509 () Bool)

(declare-fun tp!2190920 () Bool)

(assert (=> b!7534509 (= e!4489955 tp!2190920)))

(declare-fun b!7534510 () Bool)

(declare-fun res!3019532 () Bool)

(declare-fun e!4489954 () Bool)

(assert (=> b!7534510 (=> (not res!3019532) (not e!4489954))))

(declare-datatypes ((List!72760 0))(
  ( (Nil!72636) (Cons!72636 (h!79084 C!40080) (t!387467 List!72760)) )
))
(declare-fun knownP!30 () List!72760)

(declare-fun matchR!9479 (Regex!19877 List!72760) Bool)

(assert (=> b!7534510 (= res!3019532 (matchR!9479 baseR!101 knownP!30))))

(declare-fun b!7534511 () Bool)

(declare-fun res!3019522 () Bool)

(declare-fun e!4489956 () Bool)

(assert (=> b!7534511 (=> res!3019522 e!4489956)))

(declare-fun testedP!423 () List!72760)

(declare-fun r!24333 () Regex!19877)

(declare-fun derivative!409 (Regex!19877 List!72760) Regex!19877)

(assert (=> b!7534511 (= res!3019522 (not (= (derivative!409 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7534512 () Bool)

(declare-fun res!3019528 () Bool)

(assert (=> b!7534512 (=> res!3019528 e!4489956)))

(declare-fun lt!2641602 () Int)

(declare-fun lt!2641599 () Int)

(assert (=> b!7534512 (= res!3019528 (= lt!2641602 lt!2641599))))

(declare-fun b!7534513 () Bool)

(assert (=> b!7534513 (= e!4489956 true)))

(declare-fun lt!2641600 () List!72760)

(declare-fun input!7874 () List!72760)

(declare-fun ++!17394 (List!72760 List!72760) List!72760)

(declare-fun head!15467 (List!72760) C!40080)

(declare-fun getSuffix!3563 (List!72760 List!72760) List!72760)

(assert (=> b!7534513 (= lt!2641600 (++!17394 testedP!423 (Cons!72636 (head!15467 (getSuffix!3563 input!7874 testedP!423)) Nil!72636)))))

(declare-fun b!7534514 () Bool)

(declare-fun tp!2190931 () Bool)

(declare-fun tp!2190928 () Bool)

(assert (=> b!7534514 (= e!4489951 (and tp!2190931 tp!2190928))))

(declare-fun b!7534515 () Bool)

(declare-fun res!3019531 () Bool)

(assert (=> b!7534515 (=> (not res!3019531) (not e!4489953))))

(assert (=> b!7534515 (= res!3019531 (validRegex!10305 r!24333))))

(declare-fun b!7534516 () Bool)

(declare-fun res!3019529 () Bool)

(assert (=> b!7534516 (=> res!3019529 e!4489956)))

(declare-fun lostCause!1669 (Regex!19877) Bool)

(assert (=> b!7534516 (= res!3019529 (lostCause!1669 r!24333))))

(declare-fun b!7534517 () Bool)

(assert (=> b!7534517 (= e!4489953 e!4489954)))

(declare-fun res!3019527 () Bool)

(assert (=> b!7534517 (=> (not res!3019527) (not e!4489954))))

(assert (=> b!7534517 (= res!3019527 (>= lt!2641599 lt!2641602))))

(declare-fun size!42373 (List!72760) Int)

(assert (=> b!7534517 (= lt!2641602 (size!42373 testedP!423))))

(assert (=> b!7534517 (= lt!2641599 (size!42373 knownP!30))))

(declare-fun b!7534518 () Bool)

(declare-fun res!3019523 () Bool)

(assert (=> b!7534518 (=> res!3019523 e!4489956)))

(assert (=> b!7534518 (= res!3019523 (>= lt!2641602 (size!42373 input!7874)))))

(declare-fun b!7534519 () Bool)

(assert (=> b!7534519 (= e!4489954 (not e!4489956))))

(declare-fun res!3019526 () Bool)

(assert (=> b!7534519 (=> res!3019526 e!4489956)))

(assert (=> b!7534519 (= res!3019526 (not (matchR!9479 r!24333 (getSuffix!3563 knownP!30 testedP!423))))))

(declare-fun isPrefix!6083 (List!72760 List!72760) Bool)

(assert (=> b!7534519 (isPrefix!6083 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166692 0))(
  ( (Unit!166693) )
))
(declare-fun lt!2641601 () Unit!166692)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!833 (List!72760 List!72760 List!72760) Unit!166692)

(assert (=> b!7534519 (= lt!2641601 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!833 knownP!30 testedP!423 input!7874))))

(declare-fun b!7534520 () Bool)

(declare-fun tp!2190924 () Bool)

(assert (=> b!7534520 (= e!4489952 (and tp_is_empty!50109 tp!2190924))))

(declare-fun b!7534521 () Bool)

(declare-fun res!3019530 () Bool)

(assert (=> b!7534521 (=> (not res!3019530) (not e!4489953))))

(assert (=> b!7534521 (= res!3019530 (isPrefix!6083 knownP!30 input!7874))))

(declare-fun b!7534522 () Bool)

(declare-fun tp!2190922 () Bool)

(declare-fun tp!2190930 () Bool)

(assert (=> b!7534522 (= e!4489951 (and tp!2190922 tp!2190930))))

(declare-fun b!7534523 () Bool)

(declare-fun res!3019524 () Bool)

(assert (=> b!7534523 (=> (not res!3019524) (not e!4489953))))

(assert (=> b!7534523 (= res!3019524 (isPrefix!6083 testedP!423 input!7874))))

(declare-fun b!7534524 () Bool)

(declare-fun tp!2190919 () Bool)

(assert (=> b!7534524 (= e!4489951 tp!2190919)))

(declare-fun b!7534525 () Bool)

(assert (=> b!7534525 (= e!4489955 tp_is_empty!50109)))

(declare-fun b!7534526 () Bool)

(declare-fun tp!2190926 () Bool)

(declare-fun tp!2190927 () Bool)

(assert (=> b!7534526 (= e!4489955 (and tp!2190926 tp!2190927))))

(declare-fun b!7534527 () Bool)

(assert (=> b!7534527 (= e!4489951 tp_is_empty!50109)))

(assert (= (and start!728840 res!3019525) b!7534515))

(assert (= (and b!7534515 res!3019531) b!7534523))

(assert (= (and b!7534523 res!3019524) b!7534521))

(assert (= (and b!7534521 res!3019530) b!7534517))

(assert (= (and b!7534517 res!3019527) b!7534510))

(assert (= (and b!7534510 res!3019532) b!7534519))

(assert (= (and b!7534519 (not res!3019526)) b!7534511))

(assert (= (and b!7534511 (not res!3019522)) b!7534516))

(assert (= (and b!7534516 (not res!3019529)) b!7534512))

(assert (= (and b!7534512 (not res!3019528)) b!7534518))

(assert (= (and b!7534518 (not res!3019523)) b!7534513))

(get-info :version)

(assert (= (and start!728840 ((_ is ElementMatch!19877) baseR!101)) b!7534527))

(assert (= (and start!728840 ((_ is Concat!28722) baseR!101)) b!7534522))

(assert (= (and start!728840 ((_ is Star!19877) baseR!101)) b!7534524))

(assert (= (and start!728840 ((_ is Union!19877) baseR!101)) b!7534514))

(assert (= (and start!728840 ((_ is Cons!72636) input!7874)) b!7534520))

(assert (= (and start!728840 ((_ is Cons!72636) knownP!30)) b!7534507))

(assert (= (and start!728840 ((_ is Cons!72636) testedP!423)) b!7534508))

(assert (= (and start!728840 ((_ is ElementMatch!19877) r!24333)) b!7534525))

(assert (= (and start!728840 ((_ is Concat!28722) r!24333)) b!7534526))

(assert (= (and start!728840 ((_ is Star!19877) r!24333)) b!7534509))

(assert (= (and start!728840 ((_ is Union!19877) r!24333)) b!7534506))

(declare-fun m!8105984 () Bool)

(assert (=> b!7534517 m!8105984))

(declare-fun m!8105986 () Bool)

(assert (=> b!7534517 m!8105986))

(declare-fun m!8105988 () Bool)

(assert (=> b!7534511 m!8105988))

(declare-fun m!8105990 () Bool)

(assert (=> b!7534519 m!8105990))

(assert (=> b!7534519 m!8105990))

(declare-fun m!8105992 () Bool)

(assert (=> b!7534519 m!8105992))

(declare-fun m!8105994 () Bool)

(assert (=> b!7534519 m!8105994))

(declare-fun m!8105996 () Bool)

(assert (=> b!7534519 m!8105996))

(declare-fun m!8105998 () Bool)

(assert (=> b!7534515 m!8105998))

(declare-fun m!8106000 () Bool)

(assert (=> b!7534510 m!8106000))

(declare-fun m!8106002 () Bool)

(assert (=> b!7534518 m!8106002))

(declare-fun m!8106004 () Bool)

(assert (=> b!7534513 m!8106004))

(assert (=> b!7534513 m!8106004))

(declare-fun m!8106006 () Bool)

(assert (=> b!7534513 m!8106006))

(declare-fun m!8106008 () Bool)

(assert (=> b!7534513 m!8106008))

(declare-fun m!8106010 () Bool)

(assert (=> b!7534523 m!8106010))

(declare-fun m!8106012 () Bool)

(assert (=> start!728840 m!8106012))

(declare-fun m!8106014 () Bool)

(assert (=> b!7534516 m!8106014))

(declare-fun m!8106016 () Bool)

(assert (=> b!7534521 m!8106016))

(check-sat (not b!7534516) (not b!7534526) (not b!7534509) tp_is_empty!50109 (not b!7534521) (not b!7534517) (not b!7534507) (not start!728840) (not b!7534508) (not b!7534523) (not b!7534515) (not b!7534522) (not b!7534511) (not b!7534520) (not b!7534524) (not b!7534518) (not b!7534519) (not b!7534513) (not b!7534514) (not b!7534506) (not b!7534510))
(check-sat)
