; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277984 () Bool)

(assert start!277984)

(declare-fun res!1186409 () Bool)

(declare-fun e!1808729 () Bool)

(assert (=> start!277984 (=> (not res!1186409) (not e!1808729))))

(declare-datatypes ((C!17318 0))(
  ( (C!17319 (val!10693 Int)) )
))
(declare-datatypes ((Regex!8568 0))(
  ( (ElementMatch!8568 (c!460225 C!17318)) (Concat!13889 (regOne!17648 Regex!8568) (regTwo!17648 Regex!8568)) (EmptyExpr!8568) (Star!8568 (reg!8897 Regex!8568)) (EmptyLang!8568) (Union!8568 (regOne!17649 Regex!8568) (regTwo!17649 Regex!8568)) )
))
(declare-fun r!23423 () Regex!8568)

(declare-fun validRegex!3438 (Regex!8568) Bool)

(assert (=> start!277984 (= res!1186409 (validRegex!3438 r!23423))))

(assert (=> start!277984 e!1808729))

(declare-fun e!1808727 () Bool)

(assert (=> start!277984 e!1808727))

(declare-fun e!1808728 () Bool)

(assert (=> start!277984 e!1808728))

(declare-fun b!2855723 () Bool)

(declare-fun res!1186410 () Bool)

(assert (=> b!2855723 (=> (not res!1186410) (not e!1808729))))

(declare-datatypes ((List!34165 0))(
  ( (Nil!34041) (Cons!34041 (h!39461 C!17318) (t!233196 List!34165)) )
))
(declare-fun prefix!1470 () List!34165)

(declare-fun prefixMatch!876 (Regex!8568 List!34165) Bool)

(assert (=> b!2855723 (= res!1186410 (prefixMatch!876 r!23423 prefix!1470))))

(declare-fun b!2855724 () Bool)

(declare-fun tp_is_empty!14873 () Bool)

(declare-fun tp!918901 () Bool)

(assert (=> b!2855724 (= e!1808728 (and tp_is_empty!14873 tp!918901))))

(declare-fun b!2855725 () Bool)

(declare-fun tp!918902 () Bool)

(declare-fun tp!918897 () Bool)

(assert (=> b!2855725 (= e!1808727 (and tp!918902 tp!918897))))

(declare-fun b!2855726 () Bool)

(declare-fun tp!918900 () Bool)

(declare-fun tp!918898 () Bool)

(assert (=> b!2855726 (= e!1808727 (and tp!918900 tp!918898))))

(declare-fun b!2855727 () Bool)

(assert (=> b!2855727 (= e!1808729 false)))

(declare-datatypes ((Option!6305 0))(
  ( (None!6304) (Some!6304 (v!34426 List!34165)) )
))
(declare-fun lt!1013894 () Option!6305)

(declare-fun getLanguageWitness!236 (Regex!8568) Option!6305)

(assert (=> b!2855727 (= lt!1013894 (getLanguageWitness!236 r!23423))))

(declare-fun b!2855728 () Bool)

(assert (=> b!2855728 (= e!1808727 tp_is_empty!14873)))

(declare-fun b!2855729 () Bool)

(declare-fun tp!918899 () Bool)

(assert (=> b!2855729 (= e!1808727 tp!918899)))

(declare-fun b!2855730 () Bool)

(declare-fun res!1186411 () Bool)

(assert (=> b!2855730 (=> (not res!1186411) (not e!1808729))))

(assert (=> b!2855730 (= res!1186411 (is-Nil!34041 prefix!1470))))

(assert (= (and start!277984 res!1186409) b!2855723))

(assert (= (and b!2855723 res!1186410) b!2855730))

(assert (= (and b!2855730 res!1186411) b!2855727))

(assert (= (and start!277984 (is-ElementMatch!8568 r!23423)) b!2855728))

(assert (= (and start!277984 (is-Concat!13889 r!23423)) b!2855726))

(assert (= (and start!277984 (is-Star!8568 r!23423)) b!2855729))

(assert (= (and start!277984 (is-Union!8568 r!23423)) b!2855725))

(assert (= (and start!277984 (is-Cons!34041 prefix!1470)) b!2855724))

(declare-fun m!3278629 () Bool)

(assert (=> start!277984 m!3278629))

(declare-fun m!3278631 () Bool)

(assert (=> b!2855723 m!3278631))

(declare-fun m!3278633 () Bool)

(assert (=> b!2855727 m!3278633))

(push 1)

(assert (not b!2855723))

(assert (not b!2855727))

(assert (not b!2855729))

(assert (not b!2855724))

(assert tp_is_empty!14873)

(assert (not b!2855726))

(assert (not start!277984))

(assert (not b!2855725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

