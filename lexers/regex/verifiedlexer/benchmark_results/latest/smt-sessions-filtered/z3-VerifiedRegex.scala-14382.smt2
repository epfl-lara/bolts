; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749932 () Bool)

(assert start!749932)

(declare-fun b!7946477 () Bool)

(declare-fun e!4688197 () Bool)

(declare-fun tp!2363837 () Bool)

(assert (=> b!7946477 (= e!4688197 tp!2363837)))

(declare-fun b!7946478 () Bool)

(declare-fun e!4688196 () Bool)

(declare-fun tp!2363841 () Bool)

(assert (=> b!7946478 (= e!4688196 tp!2363841)))

(declare-fun res!3151834 () Bool)

(declare-fun e!4688192 () Bool)

(assert (=> start!749932 (=> (not res!3151834) (not e!4688192))))

(declare-datatypes ((C!43228 0))(
  ( (C!43229 (val!32162 Int)) )
))
(declare-datatypes ((Regex!21445 0))(
  ( (ElementMatch!21445 (c!1459730 C!43228)) (Concat!30444 (regOne!43402 Regex!21445) (regTwo!43402 Regex!21445)) (EmptyExpr!21445) (Star!21445 (reg!21774 Regex!21445)) (EmptyLang!21445) (Union!21445 (regOne!43403 Regex!21445) (regTwo!43403 Regex!21445)) )
))
(declare-fun baseR!116 () Regex!21445)

(declare-fun validRegex!11749 (Regex!21445) Bool)

(assert (=> start!749932 (= res!3151834 (validRegex!11749 baseR!116))))

(assert (=> start!749932 e!4688192))

(assert (=> start!749932 e!4688196))

(declare-fun e!4688195 () Bool)

(assert (=> start!749932 e!4688195))

(declare-fun e!4688193 () Bool)

(assert (=> start!749932 e!4688193))

(assert (=> start!749932 e!4688197))

(declare-fun b!7946479 () Bool)

(declare-fun res!3151831 () Bool)

(declare-fun e!4688194 () Bool)

(assert (=> b!7946479 (=> (not res!3151831) (not e!4688194))))

(declare-datatypes ((List!74674 0))(
  ( (Nil!74550) (Cons!74550 (h!80998 C!43228) (t!390417 List!74674)) )
))
(declare-fun testedP!447 () List!74674)

(declare-fun input!7927 () List!74674)

(assert (=> b!7946479 (= res!3151831 (= testedP!447 input!7927))))

(declare-fun b!7946480 () Bool)

(declare-fun tp_is_empty!53433 () Bool)

(assert (=> b!7946480 (= e!4688197 tp_is_empty!53433)))

(declare-fun b!7946481 () Bool)

(assert (=> b!7946481 (= e!4688192 e!4688194)))

(declare-fun res!3151832 () Bool)

(assert (=> b!7946481 (=> (not res!3151832) (not e!4688194))))

(declare-fun lt!2698373 () Int)

(declare-fun lt!2698375 () List!74674)

(declare-fun r!24602 () Regex!21445)

(declare-fun lt!2698374 () Int)

(declare-fun isEmpty!42849 (List!74674) Bool)

(declare-datatypes ((tuple2!70552 0))(
  ( (tuple2!70553 (_1!38579 List!74674) (_2!38579 List!74674)) )
))
(declare-fun findLongestMatchInner!2226 (Regex!21445 List!74674 Int List!74674 List!74674 Int) tuple2!70552)

(assert (=> b!7946481 (= res!3151832 (not (isEmpty!42849 (_1!38579 (findLongestMatchInner!2226 r!24602 testedP!447 lt!2698374 lt!2698375 input!7927 lt!2698373)))))))

(declare-fun size!43381 (List!74674) Int)

(assert (=> b!7946481 (= lt!2698373 (size!43381 input!7927))))

(declare-fun getSuffix!3748 (List!74674 List!74674) List!74674)

(assert (=> b!7946481 (= lt!2698375 (getSuffix!3748 input!7927 testedP!447))))

(assert (=> b!7946481 (= lt!2698374 (size!43381 testedP!447))))

(declare-fun b!7946482 () Bool)

(declare-fun res!3151836 () Bool)

(assert (=> b!7946482 (=> (not res!3151836) (not e!4688192))))

(declare-fun isPrefix!6545 (List!74674 List!74674) Bool)

(assert (=> b!7946482 (= res!3151836 (isPrefix!6545 testedP!447 input!7927))))

(declare-fun b!7946483 () Bool)

(declare-fun tp!2363845 () Bool)

(declare-fun tp!2363843 () Bool)

(assert (=> b!7946483 (= e!4688196 (and tp!2363845 tp!2363843))))

(declare-fun b!7946484 () Bool)

(declare-fun tp!2363839 () Bool)

(declare-fun tp!2363844 () Bool)

(assert (=> b!7946484 (= e!4688197 (and tp!2363839 tp!2363844))))

(declare-fun b!7946485 () Bool)

(assert (=> b!7946485 (= e!4688194 (< lt!2698373 lt!2698374))))

(declare-fun b!7946486 () Bool)

(declare-fun res!3151835 () Bool)

(assert (=> b!7946486 (=> (not res!3151835) (not e!4688192))))

(declare-fun derivative!631 (Regex!21445 List!74674) Regex!21445)

(assert (=> b!7946486 (= res!3151835 (= (derivative!631 baseR!116 testedP!447) r!24602))))

(declare-fun b!7946487 () Bool)

(assert (=> b!7946487 (= e!4688196 tp_is_empty!53433)))

(declare-fun b!7946488 () Bool)

(declare-fun res!3151833 () Bool)

(assert (=> b!7946488 (=> (not res!3151833) (not e!4688194))))

(declare-fun nullable!9556 (Regex!21445) Bool)

(assert (=> b!7946488 (= res!3151833 (not (nullable!9556 r!24602)))))

(declare-fun b!7946489 () Bool)

(declare-fun tp!2363840 () Bool)

(declare-fun tp!2363838 () Bool)

(assert (=> b!7946489 (= e!4688197 (and tp!2363840 tp!2363838))))

(declare-fun b!7946490 () Bool)

(declare-fun tp!2363842 () Bool)

(assert (=> b!7946490 (= e!4688193 (and tp_is_empty!53433 tp!2363842))))

(declare-fun b!7946491 () Bool)

(declare-fun tp!2363836 () Bool)

(assert (=> b!7946491 (= e!4688195 (and tp_is_empty!53433 tp!2363836))))

(declare-fun b!7946492 () Bool)

(declare-fun tp!2363846 () Bool)

(declare-fun tp!2363835 () Bool)

(assert (=> b!7946492 (= e!4688196 (and tp!2363846 tp!2363835))))

(assert (= (and start!749932 res!3151834) b!7946482))

(assert (= (and b!7946482 res!3151836) b!7946486))

(assert (= (and b!7946486 res!3151835) b!7946481))

(assert (= (and b!7946481 res!3151832) b!7946479))

(assert (= (and b!7946479 res!3151831) b!7946488))

(assert (= (and b!7946488 res!3151833) b!7946485))

(get-info :version)

(assert (= (and start!749932 ((_ is ElementMatch!21445) baseR!116)) b!7946487))

(assert (= (and start!749932 ((_ is Concat!30444) baseR!116)) b!7946492))

(assert (= (and start!749932 ((_ is Star!21445) baseR!116)) b!7946478))

(assert (= (and start!749932 ((_ is Union!21445) baseR!116)) b!7946483))

(assert (= (and start!749932 ((_ is Cons!74550) testedP!447)) b!7946491))

(assert (= (and start!749932 ((_ is Cons!74550) input!7927)) b!7946490))

(assert (= (and start!749932 ((_ is ElementMatch!21445) r!24602)) b!7946480))

(assert (= (and start!749932 ((_ is Concat!30444) r!24602)) b!7946489))

(assert (= (and start!749932 ((_ is Star!21445) r!24602)) b!7946477))

(assert (= (and start!749932 ((_ is Union!21445) r!24602)) b!7946484))

(declare-fun m!8332616 () Bool)

(assert (=> b!7946482 m!8332616))

(declare-fun m!8332618 () Bool)

(assert (=> b!7946481 m!8332618))

(declare-fun m!8332620 () Bool)

(assert (=> b!7946481 m!8332620))

(declare-fun m!8332622 () Bool)

(assert (=> b!7946481 m!8332622))

(declare-fun m!8332624 () Bool)

(assert (=> b!7946481 m!8332624))

(declare-fun m!8332626 () Bool)

(assert (=> b!7946481 m!8332626))

(declare-fun m!8332628 () Bool)

(assert (=> b!7946486 m!8332628))

(declare-fun m!8332630 () Bool)

(assert (=> start!749932 m!8332630))

(declare-fun m!8332632 () Bool)

(assert (=> b!7946488 m!8332632))

(check-sat (not start!749932) (not b!7946482) (not b!7946484) (not b!7946483) (not b!7946488) (not b!7946489) (not b!7946490) (not b!7946491) (not b!7946486) (not b!7946492) (not b!7946477) (not b!7946481) (not b!7946478) tp_is_empty!53433)
(check-sat)
