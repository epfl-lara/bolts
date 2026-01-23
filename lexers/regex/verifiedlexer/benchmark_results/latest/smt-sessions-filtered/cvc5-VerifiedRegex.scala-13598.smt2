; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730998 () Bool)

(assert start!730998)

(declare-fun b!7568540 () Bool)

(declare-fun e!4506174 () Bool)

(declare-fun tp!2204505 () Bool)

(declare-fun tp!2204494 () Bool)

(assert (=> b!7568540 (= e!4506174 (and tp!2204505 tp!2204494))))

(declare-fun b!7568541 () Bool)

(declare-fun res!3032019 () Bool)

(declare-fun e!4506177 () Bool)

(assert (=> b!7568541 (=> (not res!3032019) (not e!4506177))))

(declare-datatypes ((C!40306 0))(
  ( (C!40307 (val!30593 Int)) )
))
(declare-datatypes ((Regex!19990 0))(
  ( (ElementMatch!19990 (c!1396625 C!40306)) (Concat!28835 (regOne!40492 Regex!19990) (regTwo!40492 Regex!19990)) (EmptyExpr!19990) (Star!19990 (reg!20319 Regex!19990)) (EmptyLang!19990) (Union!19990 (regOne!40493 Regex!19990) (regTwo!40493 Regex!19990)) )
))
(declare-fun r!24129 () Regex!19990)

(declare-fun validRegex!10418 (Regex!19990) Bool)

(assert (=> b!7568541 (= res!3032019 (validRegex!10418 r!24129))))

(declare-fun b!7568542 () Bool)

(declare-fun tp!2204497 () Bool)

(declare-fun tp!2204499 () Bool)

(assert (=> b!7568542 (= e!4506174 (and tp!2204497 tp!2204499))))

(declare-fun b!7568543 () Bool)

(assert (=> b!7568543 (= e!4506177 false)))

(declare-fun lt!2650875 () Regex!19990)

(declare-fun baseR!100 () Regex!19990)

(declare-datatypes ((List!72873 0))(
  ( (Nil!72749) (Cons!72749 (h!79197 C!40306) (t!387608 List!72873)) )
))
(declare-fun testedP!418 () List!72873)

(declare-fun derivative!516 (Regex!19990 List!72873) Regex!19990)

(assert (=> b!7568543 (= lt!2650875 (derivative!516 baseR!100 testedP!418))))

(declare-fun b!7568544 () Bool)

(declare-fun tp_is_empty!50335 () Bool)

(assert (=> b!7568544 (= e!4506174 tp_is_empty!50335)))

(declare-fun b!7568545 () Bool)

(declare-fun e!4506178 () Bool)

(declare-fun tp!2204504 () Bool)

(assert (=> b!7568545 (= e!4506178 (and tp_is_empty!50335 tp!2204504))))

(declare-fun b!7568546 () Bool)

(declare-fun e!4506176 () Bool)

(declare-fun tp!2204501 () Bool)

(assert (=> b!7568546 (= e!4506176 tp!2204501)))

(declare-fun b!7568547 () Bool)

(declare-fun tp!2204495 () Bool)

(declare-fun tp!2204496 () Bool)

(assert (=> b!7568547 (= e!4506176 (and tp!2204495 tp!2204496))))

(declare-fun b!7568548 () Bool)

(declare-fun res!3032020 () Bool)

(assert (=> b!7568548 (=> (not res!3032020) (not e!4506177))))

(declare-fun matchR!9590 (Regex!19990 List!72873) Bool)

(assert (=> b!7568548 (= res!3032020 (matchR!9590 baseR!100 testedP!418))))

(declare-fun b!7568549 () Bool)

(declare-fun res!3032022 () Bool)

(assert (=> b!7568549 (=> (not res!3032022) (not e!4506177))))

(declare-fun input!7855 () List!72873)

(declare-fun isPrefix!6196 (List!72873 List!72873) Bool)

(assert (=> b!7568549 (= res!3032022 (isPrefix!6196 testedP!418 input!7855))))

(declare-fun b!7568550 () Bool)

(declare-fun e!4506175 () Bool)

(declare-fun tp!2204500 () Bool)

(assert (=> b!7568550 (= e!4506175 (and tp_is_empty!50335 tp!2204500))))

(declare-fun b!7568551 () Bool)

(declare-fun tp!2204502 () Bool)

(declare-fun tp!2204498 () Bool)

(assert (=> b!7568551 (= e!4506176 (and tp!2204502 tp!2204498))))

(declare-fun res!3032021 () Bool)

(assert (=> start!730998 (=> (not res!3032021) (not e!4506177))))

(assert (=> start!730998 (= res!3032021 (validRegex!10418 baseR!100))))

(assert (=> start!730998 e!4506177))

(assert (=> start!730998 e!4506176))

(assert (=> start!730998 e!4506174))

(assert (=> start!730998 e!4506175))

(assert (=> start!730998 e!4506178))

(declare-fun b!7568552 () Bool)

(declare-fun tp!2204503 () Bool)

(assert (=> b!7568552 (= e!4506174 tp!2204503)))

(declare-fun b!7568553 () Bool)

(assert (=> b!7568553 (= e!4506176 tp_is_empty!50335)))

(assert (= (and start!730998 res!3032021) b!7568541))

(assert (= (and b!7568541 res!3032019) b!7568549))

(assert (= (and b!7568549 res!3032022) b!7568548))

(assert (= (and b!7568548 res!3032020) b!7568543))

(assert (= (and start!730998 (is-ElementMatch!19990 baseR!100)) b!7568553))

(assert (= (and start!730998 (is-Concat!28835 baseR!100)) b!7568551))

(assert (= (and start!730998 (is-Star!19990 baseR!100)) b!7568546))

(assert (= (and start!730998 (is-Union!19990 baseR!100)) b!7568547))

(assert (= (and start!730998 (is-ElementMatch!19990 r!24129)) b!7568544))

(assert (= (and start!730998 (is-Concat!28835 r!24129)) b!7568542))

(assert (= (and start!730998 (is-Star!19990 r!24129)) b!7568552))

(assert (= (and start!730998 (is-Union!19990 r!24129)) b!7568540))

(assert (= (and start!730998 (is-Cons!72749 testedP!418)) b!7568550))

(assert (= (and start!730998 (is-Cons!72749 input!7855)) b!7568545))

(declare-fun m!8130922 () Bool)

(assert (=> start!730998 m!8130922))

(declare-fun m!8130924 () Bool)

(assert (=> b!7568549 m!8130924))

(declare-fun m!8130926 () Bool)

(assert (=> b!7568543 m!8130926))

(declare-fun m!8130928 () Bool)

(assert (=> b!7568541 m!8130928))

(declare-fun m!8130930 () Bool)

(assert (=> b!7568548 m!8130930))

(push 1)

(assert (not b!7568548))

(assert tp_is_empty!50335)

(assert (not start!730998))

(assert (not b!7568549))

(assert (not b!7568542))

(assert (not b!7568546))

(assert (not b!7568543))

(assert (not b!7568552))

(assert (not b!7568545))

(assert (not b!7568550))

(assert (not b!7568541))

(assert (not b!7568540))

(assert (not b!7568547))

(assert (not b!7568551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

