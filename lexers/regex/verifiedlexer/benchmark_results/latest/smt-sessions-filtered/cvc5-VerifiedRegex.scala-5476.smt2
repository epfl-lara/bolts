; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277476 () Bool)

(assert start!277476)

(declare-fun b!2848775 () Bool)

(declare-fun e!1805275 () Bool)

(assert (=> b!2848775 (= e!1805275 (not true))))

(declare-fun lt!1013096 () Bool)

(declare-datatypes ((C!17194 0))(
  ( (C!17195 (val!10631 Int)) )
))
(declare-datatypes ((Regex!8506 0))(
  ( (ElementMatch!8506 (c!459537 C!17194)) (Concat!13827 (regOne!17524 Regex!8506) (regTwo!17524 Regex!8506)) (EmptyExpr!8506) (Star!8506 (reg!8835 Regex!8506)) (EmptyLang!8506) (Union!8506 (regOne!17525 Regex!8506) (regTwo!17525 Regex!8506)) )
))
(declare-datatypes ((List!33985 0))(
  ( (Nil!33861) (Cons!33861 (h!39281 Regex!8506) (t!233012 List!33985)) )
))
(declare-datatypes ((Context!5032 0))(
  ( (Context!5033 (exprs!3016 List!33985)) )
))
(declare-fun lt!1013095 () (Set Context!5032))

(declare-datatypes ((List!33986 0))(
  ( (Nil!33862) (Cons!33862 (h!39282 C!17194) (t!233013 List!33986)) )
))
(declare-datatypes ((IArray!21003 0))(
  ( (IArray!21004 (innerList!10559 List!33986)) )
))
(declare-datatypes ((Conc!10499 0))(
  ( (Node!10499 (left!25495 Conc!10499) (right!25825 Conc!10499) (csize!21228 Int) (cheight!10710 Int)) (Leaf!15976 (xs!13617 IArray!21003) (csize!21229 Int)) (Empty!10499) )
))
(declare-datatypes ((BalanceConc!20636 0))(
  ( (BalanceConc!20637 (c!459538 Conc!10499)) )
))
(declare-fun prefix!1313 () BalanceConc!20636)

(declare-fun prefixMatchZipperSequence!764 ((Set Context!5032) BalanceConc!20636 Int) Bool)

(assert (=> b!2848775 (= lt!1013096 (prefixMatchZipperSequence!764 lt!1013095 prefix!1313 0))))

(declare-fun r!13328 () Regex!8506)

(declare-fun lt!1013099 () List!33986)

(declare-fun prefixMatch!816 (Regex!8506 List!33986) Bool)

(declare-fun prefixMatchZipper!240 ((Set Context!5032) List!33986) Bool)

(assert (=> b!2848775 (= (prefixMatch!816 r!13328 lt!1013099) (prefixMatchZipper!240 lt!1013095 lt!1013099))))

(declare-datatypes ((Unit!47599 0))(
  ( (Unit!47600) )
))
(declare-fun lt!1013098 () Unit!47599)

(declare-datatypes ((List!33987 0))(
  ( (Nil!33863) (Cons!33863 (h!39283 Context!5032) (t!233014 List!33987)) )
))
(declare-fun lt!1013094 () List!33987)

(declare-fun prefixMatchZipperRegexEquiv!232 ((Set Context!5032) List!33987 Regex!8506 List!33986) Unit!47599)

(assert (=> b!2848775 (= lt!1013098 (prefixMatchZipperRegexEquiv!232 lt!1013095 lt!1013094 r!13328 lt!1013099))))

(declare-fun list!12587 (BalanceConc!20636) List!33986)

(assert (=> b!2848775 (= lt!1013099 (list!12587 prefix!1313))))

(declare-fun toList!1919 ((Set Context!5032)) List!33987)

(assert (=> b!2848775 (= lt!1013094 (toList!1919 lt!1013095))))

(declare-fun dropList!1025 (BalanceConc!20636 Int) List!33986)

(assert (=> b!2848775 (= (prefixMatchZipper!240 lt!1013095 (dropList!1025 prefix!1313 0)) (prefixMatchZipperSequence!764 lt!1013095 prefix!1313 0))))

(declare-fun lt!1013097 () Unit!47599)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!240 ((Set Context!5032) BalanceConc!20636 Int) Unit!47599)

(assert (=> b!2848775 (= lt!1013097 (lemmaprefixMatchZipperSequenceEquivalent!240 lt!1013095 prefix!1313 0))))

(declare-fun focus!310 (Regex!8506) (Set Context!5032))

(assert (=> b!2848775 (= lt!1013095 (focus!310 r!13328))))

(declare-fun b!2848776 () Bool)

(declare-fun e!1805273 () Bool)

(declare-fun tp!914704 () Bool)

(declare-fun inv!45891 (Conc!10499) Bool)

(assert (=> b!2848776 (= e!1805273 (and (inv!45891 (c!459538 prefix!1313)) tp!914704))))

(declare-fun b!2848777 () Bool)

(declare-fun e!1805274 () Bool)

(declare-fun tp_is_empty!14749 () Bool)

(assert (=> b!2848777 (= e!1805274 tp_is_empty!14749)))

(declare-fun b!2848778 () Bool)

(declare-fun tp!914705 () Bool)

(declare-fun tp!914708 () Bool)

(assert (=> b!2848778 (= e!1805274 (and tp!914705 tp!914708))))

(declare-fun res!1184271 () Bool)

(assert (=> start!277476 (=> (not res!1184271) (not e!1805275))))

(declare-fun validRegex!3376 (Regex!8506) Bool)

(assert (=> start!277476 (= res!1184271 (validRegex!3376 r!13328))))

(assert (=> start!277476 e!1805275))

(assert (=> start!277476 e!1805274))

(declare-fun inv!45892 (BalanceConc!20636) Bool)

(assert (=> start!277476 (and (inv!45892 prefix!1313) e!1805273)))

(declare-fun b!2848779 () Bool)

(declare-fun tp!914707 () Bool)

(declare-fun tp!914706 () Bool)

(assert (=> b!2848779 (= e!1805274 (and tp!914707 tp!914706))))

(declare-fun b!2848780 () Bool)

(declare-fun tp!914703 () Bool)

(assert (=> b!2848780 (= e!1805274 tp!914703)))

(assert (= (and start!277476 res!1184271) b!2848775))

(assert (= (and start!277476 (is-ElementMatch!8506 r!13328)) b!2848777))

(assert (= (and start!277476 (is-Concat!13827 r!13328)) b!2848779))

(assert (= (and start!277476 (is-Star!8506 r!13328)) b!2848780))

(assert (= (and start!277476 (is-Union!8506 r!13328)) b!2848778))

(assert (= start!277476 b!2848776))

(declare-fun m!3275717 () Bool)

(assert (=> b!2848775 m!3275717))

(declare-fun m!3275719 () Bool)

(assert (=> b!2848775 m!3275719))

(declare-fun m!3275721 () Bool)

(assert (=> b!2848775 m!3275721))

(declare-fun m!3275723 () Bool)

(assert (=> b!2848775 m!3275723))

(declare-fun m!3275725 () Bool)

(assert (=> b!2848775 m!3275725))

(assert (=> b!2848775 m!3275721))

(declare-fun m!3275727 () Bool)

(assert (=> b!2848775 m!3275727))

(declare-fun m!3275729 () Bool)

(assert (=> b!2848775 m!3275729))

(declare-fun m!3275731 () Bool)

(assert (=> b!2848775 m!3275731))

(declare-fun m!3275733 () Bool)

(assert (=> b!2848775 m!3275733))

(declare-fun m!3275735 () Bool)

(assert (=> b!2848775 m!3275735))

(declare-fun m!3275737 () Bool)

(assert (=> b!2848776 m!3275737))

(declare-fun m!3275739 () Bool)

(assert (=> start!277476 m!3275739))

(declare-fun m!3275741 () Bool)

(assert (=> start!277476 m!3275741))

(push 1)

(assert tp_is_empty!14749)

(assert (not b!2848775))

(assert (not b!2848776))

(assert (not start!277476))

(assert (not b!2848780))

(assert (not b!2848778))

(assert (not b!2848779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

