; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277034 () Bool)

(assert start!277034)

(declare-fun b!2845530 () Bool)

(declare-fun e!1802897 () Bool)

(assert (=> b!2845530 (= e!1802897 (not true))))

(declare-datatypes ((C!17118 0))(
  ( (C!17119 (val!10593 Int)) )
))
(declare-datatypes ((Regex!8468 0))(
  ( (ElementMatch!8468 (c!459204 C!17118)) (Concat!13771 (regOne!17448 Regex!8468) (regTwo!17448 Regex!8468)) (EmptyExpr!8468) (Star!8468 (reg!8797 Regex!8468)) (EmptyLang!8468) (Union!8468 (regOne!17449 Regex!8468) (regTwo!17449 Regex!8468)) )
))
(declare-fun r!13354 () Regex!8468)

(declare-datatypes ((List!33863 0))(
  ( (Nil!33739) (Cons!33739 (h!39159 C!17118) (t!232886 List!33863)) )
))
(declare-fun lt!1012494 () List!33863)

(declare-datatypes ((List!33864 0))(
  ( (Nil!33740) (Cons!33740 (h!39160 Regex!8468) (t!232887 List!33864)) )
))
(declare-datatypes ((Context!4992 0))(
  ( (Context!4993 (exprs!2996 List!33864)) )
))
(declare-fun lt!1012495 () (Set Context!4992))

(declare-fun prefixMatch!810 (Regex!8468 List!33863) Bool)

(declare-fun prefixMatchZipper!230 ((Set Context!4992) List!33863) Bool)

(assert (=> b!2845530 (= (prefixMatch!810 r!13354 lt!1012494) (prefixMatchZipper!230 lt!1012495 lt!1012494))))

(declare-datatypes ((Unit!47531 0))(
  ( (Unit!47532) )
))
(declare-fun lt!1012491 () Unit!47531)

(declare-datatypes ((List!33865 0))(
  ( (Nil!33741) (Cons!33741 (h!39161 Context!4992) (t!232888 List!33865)) )
))
(declare-fun lt!1012492 () List!33865)

(declare-fun prefixMatchZipperRegexEquiv!226 ((Set Context!4992) List!33865 Regex!8468 List!33863) Unit!47531)

(assert (=> b!2845530 (= lt!1012491 (prefixMatchZipperRegexEquiv!226 lt!1012495 lt!1012492 r!13354 lt!1012494))))

(declare-datatypes ((IArray!20933 0))(
  ( (IArray!20934 (innerList!10524 List!33863)) )
))
(declare-datatypes ((Conc!10464 0))(
  ( (Node!10464 (left!25415 Conc!10464) (right!25745 Conc!10464) (csize!21158 Int) (cheight!10675 Int)) (Leaf!15922 (xs!13582 IArray!20933) (csize!21159 Int)) (Empty!10464) )
))
(declare-datatypes ((BalanceConc!20566 0))(
  ( (BalanceConc!20567 (c!459205 Conc!10464)) )
))
(declare-fun prefix!1325 () BalanceConc!20566)

(declare-fun list!12569 (BalanceConc!20566) List!33863)

(assert (=> b!2845530 (= lt!1012494 (list!12569 prefix!1325))))

(declare-fun toList!1905 ((Set Context!4992)) List!33865)

(assert (=> b!2845530 (= lt!1012492 (toList!1905 lt!1012495))))

(declare-fun dropList!1015 (BalanceConc!20566 Int) List!33863)

(declare-fun prefixMatchZipperSequence!751 ((Set Context!4992) BalanceConc!20566 Int) Bool)

(assert (=> b!2845530 (= (prefixMatchZipper!230 lt!1012495 (dropList!1015 prefix!1325 0)) (prefixMatchZipperSequence!751 lt!1012495 prefix!1325 0))))

(declare-fun lt!1012493 () Unit!47531)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!230 ((Set Context!4992) BalanceConc!20566 Int) Unit!47531)

(assert (=> b!2845530 (= lt!1012493 (lemmaprefixMatchZipperSequenceEquivalent!230 lt!1012495 prefix!1325 0))))

(declare-fun focus!300 (Regex!8468) (Set Context!4992))

(assert (=> b!2845530 (= lt!1012495 (focus!300 r!13354))))

(declare-fun res!1183496 () Bool)

(assert (=> start!277034 (=> (not res!1183496) (not e!1802897))))

(declare-fun validRegex!3361 (Regex!8468) Bool)

(assert (=> start!277034 (= res!1183496 (validRegex!3361 r!13354))))

(assert (=> start!277034 e!1802897))

(declare-fun e!1802896 () Bool)

(assert (=> start!277034 e!1802896))

(declare-fun e!1802895 () Bool)

(declare-fun inv!45749 (BalanceConc!20566) Bool)

(assert (=> start!277034 (and (inv!45749 prefix!1325) e!1802895)))

(declare-fun b!2845531 () Bool)

(declare-fun tp!912336 () Bool)

(declare-fun inv!45750 (Conc!10464) Bool)

(assert (=> b!2845531 (= e!1802895 (and (inv!45750 (c!459205 prefix!1325)) tp!912336))))

(declare-fun b!2845532 () Bool)

(declare-fun tp!912335 () Bool)

(declare-fun tp!912334 () Bool)

(assert (=> b!2845532 (= e!1802896 (and tp!912335 tp!912334))))

(declare-fun b!2845533 () Bool)

(declare-fun tp_is_empty!14699 () Bool)

(assert (=> b!2845533 (= e!1802896 tp_is_empty!14699)))

(declare-fun b!2845534 () Bool)

(declare-fun tp!912338 () Bool)

(assert (=> b!2845534 (= e!1802896 tp!912338)))

(declare-fun b!2845535 () Bool)

(declare-fun tp!912337 () Bool)

(declare-fun tp!912339 () Bool)

(assert (=> b!2845535 (= e!1802896 (and tp!912337 tp!912339))))

(assert (= (and start!277034 res!1183496) b!2845530))

(assert (= (and start!277034 (is-ElementMatch!8468 r!13354)) b!2845533))

(assert (= (and start!277034 (is-Concat!13771 r!13354)) b!2845532))

(assert (= (and start!277034 (is-Star!8468 r!13354)) b!2845534))

(assert (= (and start!277034 (is-Union!8468 r!13354)) b!2845535))

(assert (= start!277034 b!2845531))

(declare-fun m!3273461 () Bool)

(assert (=> b!2845530 m!3273461))

(declare-fun m!3273463 () Bool)

(assert (=> b!2845530 m!3273463))

(declare-fun m!3273465 () Bool)

(assert (=> b!2845530 m!3273465))

(declare-fun m!3273467 () Bool)

(assert (=> b!2845530 m!3273467))

(declare-fun m!3273469 () Bool)

(assert (=> b!2845530 m!3273469))

(declare-fun m!3273471 () Bool)

(assert (=> b!2845530 m!3273471))

(assert (=> b!2845530 m!3273465))

(declare-fun m!3273473 () Bool)

(assert (=> b!2845530 m!3273473))

(declare-fun m!3273475 () Bool)

(assert (=> b!2845530 m!3273475))

(declare-fun m!3273477 () Bool)

(assert (=> b!2845530 m!3273477))

(declare-fun m!3273479 () Bool)

(assert (=> b!2845530 m!3273479))

(declare-fun m!3273481 () Bool)

(assert (=> start!277034 m!3273481))

(declare-fun m!3273483 () Bool)

(assert (=> start!277034 m!3273483))

(declare-fun m!3273485 () Bool)

(assert (=> b!2845531 m!3273485))

(push 1)

(assert tp_is_empty!14699)

(assert (not b!2845532))

(assert (not b!2845535))

(assert (not start!277034))

(assert (not b!2845534))

(assert (not b!2845531))

(assert (not b!2845530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

