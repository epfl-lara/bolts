; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756714 () Bool)

(assert start!756714)

(declare-fun b!8033886 () Bool)

(declare-fun e!4732656 () Bool)

(declare-fun tp!2405046 () Bool)

(declare-fun tp!2405048 () Bool)

(assert (=> b!8033886 (= e!4732656 (and tp!2405046 tp!2405048))))

(declare-fun b!8033887 () Bool)

(declare-fun tp!2405045 () Bool)

(assert (=> b!8033887 (= e!4732656 tp!2405045)))

(declare-fun b!8033888 () Bool)

(declare-fun tp!2405047 () Bool)

(declare-fun tp!2405044 () Bool)

(assert (=> b!8033888 (= e!4732656 (and tp!2405047 tp!2405044))))

(declare-fun res!3176790 () Bool)

(declare-fun e!4732657 () Bool)

(assert (=> start!756714 (=> (not res!3176790) (not e!4732657))))

(declare-datatypes ((C!43802 0))(
  ( (C!43803 (val!32677 Int)) )
))
(declare-datatypes ((Regex!21732 0))(
  ( (ElementMatch!21732 (c!1473771 C!43802)) (Concat!30735 (regOne!43976 Regex!21732) (regTwo!43976 Regex!21732)) (EmptyExpr!21732) (Star!21732 (reg!22061 Regex!21732)) (EmptyLang!21732) (Union!21732 (regOne!43977 Regex!21732) (regTwo!43977 Regex!21732)) )
))
(declare-fun r!13107 () Regex!21732)

(declare-fun validRegex!12028 (Regex!21732) Bool)

(assert (=> start!756714 (= res!3176790 (validRegex!12028 r!13107))))

(assert (=> start!756714 e!4732657))

(assert (=> start!756714 e!4732656))

(declare-fun tp_is_empty!54459 () Bool)

(assert (=> start!756714 tp_is_empty!54459))

(declare-fun b!8033889 () Bool)

(declare-fun a!2390 () C!43802)

(assert (=> b!8033889 (= e!4732657 false)))

(declare-fun b!8033890 () Bool)

(assert (=> b!8033890 (= e!4732656 tp_is_empty!54459)))

(assert (= (and start!756714 res!3176790) b!8033889))

(assert (= (and start!756714 (is-ElementMatch!21732 r!13107)) b!8033890))

(assert (= (and start!756714 (is-Concat!30735 r!13107)) b!8033888))

(assert (= (and start!756714 (is-Star!21732 r!13107)) b!8033887))

(assert (= (and start!756714 (is-Union!21732 r!13107)) b!8033886))

(declare-fun m!8392810 () Bool)

(assert (=> start!756714 m!8392810))

(push 1)

(assert (not b!8033888))

(assert (not start!756714))

(assert (not b!8033886))

(assert tp_is_empty!54459)

(assert (not b!8033887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

