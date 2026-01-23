; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756710 () Bool)

(assert start!756710)

(declare-fun b!8033856 () Bool)

(declare-fun e!4732644 () Bool)

(declare-fun tp!2405014 () Bool)

(declare-fun tp!2405015 () Bool)

(assert (=> b!8033856 (= e!4732644 (and tp!2405014 tp!2405015))))

(declare-fun b!8033857 () Bool)

(declare-fun tp!2405018 () Bool)

(assert (=> b!8033857 (= e!4732644 tp!2405018)))

(declare-fun b!8033858 () Bool)

(declare-fun tp!2405017 () Bool)

(declare-fun tp!2405016 () Bool)

(assert (=> b!8033858 (= e!4732644 (and tp!2405017 tp!2405016))))

(declare-fun res!3176784 () Bool)

(declare-fun e!4732645 () Bool)

(assert (=> start!756710 (=> (not res!3176784) (not e!4732645))))

(declare-datatypes ((C!43798 0))(
  ( (C!43799 (val!32675 Int)) )
))
(declare-datatypes ((Regex!21730 0))(
  ( (ElementMatch!21730 (c!1473769 C!43798)) (Concat!30733 (regOne!43972 Regex!21730) (regTwo!43972 Regex!21730)) (EmptyExpr!21730) (Star!21730 (reg!22059 Regex!21730)) (EmptyLang!21730) (Union!21730 (regOne!43973 Regex!21730) (regTwo!43973 Regex!21730)) )
))
(declare-fun r!13107 () Regex!21730)

(declare-fun validRegex!12026 (Regex!21730) Bool)

(assert (=> start!756710 (= res!3176784 (validRegex!12026 r!13107))))

(assert (=> start!756710 e!4732645))

(assert (=> start!756710 e!4732644))

(declare-fun tp_is_empty!54455 () Bool)

(assert (=> start!756710 tp_is_empty!54455))

(declare-fun b!8033859 () Bool)

(declare-fun a!2390 () C!43798)

(assert (=> b!8033859 (= e!4732645 false)))

(declare-fun b!8033860 () Bool)

(assert (=> b!8033860 (= e!4732644 tp_is_empty!54455)))

(assert (= (and start!756710 res!3176784) b!8033859))

(assert (= (and start!756710 (is-ElementMatch!21730 r!13107)) b!8033860))

(assert (= (and start!756710 (is-Concat!30733 r!13107)) b!8033858))

(assert (= (and start!756710 (is-Star!21730 r!13107)) b!8033857))

(assert (= (and start!756710 (is-Union!21730 r!13107)) b!8033856))

(declare-fun m!8392806 () Bool)

(assert (=> start!756710 m!8392806))

(push 1)

(assert (not start!756710))

(assert (not b!8033857))

(assert (not b!8033858))

(assert tp_is_empty!54455)

(assert (not b!8033856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

