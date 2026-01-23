; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756702 () Bool)

(assert start!756702)

(declare-fun res!3176772 () Bool)

(declare-fun e!4732621 () Bool)

(assert (=> start!756702 (=> (not res!3176772) (not e!4732621))))

(declare-datatypes ((C!43790 0))(
  ( (C!43791 (val!32671 Int)) )
))
(declare-datatypes ((Regex!21726 0))(
  ( (ElementMatch!21726 (c!1473765 C!43790)) (Concat!30729 (regOne!43964 Regex!21726) (regTwo!43964 Regex!21726)) (EmptyExpr!21726) (Star!21726 (reg!22055 Regex!21726)) (EmptyLang!21726) (Union!21726 (regOne!43965 Regex!21726) (regTwo!43965 Regex!21726)) )
))
(declare-fun r!13107 () Regex!21726)

(declare-fun validRegex!12022 (Regex!21726) Bool)

(assert (=> start!756702 (= res!3176772 (validRegex!12022 r!13107))))

(assert (=> start!756702 e!4732621))

(declare-fun e!4732620 () Bool)

(assert (=> start!756702 e!4732620))

(declare-fun b!8033796 () Bool)

(assert (=> b!8033796 (= e!4732621 false)))

(declare-fun b!8033797 () Bool)

(declare-fun tp!2404954 () Bool)

(assert (=> b!8033797 (= e!4732620 tp!2404954)))

(declare-fun b!8033798 () Bool)

(declare-fun tp!2404957 () Bool)

(declare-fun tp!2404958 () Bool)

(assert (=> b!8033798 (= e!4732620 (and tp!2404957 tp!2404958))))

(declare-fun b!8033799 () Bool)

(declare-fun tp_is_empty!54447 () Bool)

(assert (=> b!8033799 (= e!4732620 tp_is_empty!54447)))

(declare-fun b!8033800 () Bool)

(declare-fun tp!2404956 () Bool)

(declare-fun tp!2404955 () Bool)

(assert (=> b!8033800 (= e!4732620 (and tp!2404956 tp!2404955))))

(assert (= (and start!756702 res!3176772) b!8033796))

(assert (= (and start!756702 (is-ElementMatch!21726 r!13107)) b!8033799))

(assert (= (and start!756702 (is-Concat!30729 r!13107)) b!8033800))

(assert (= (and start!756702 (is-Star!21726 r!13107)) b!8033797))

(assert (= (and start!756702 (is-Union!21726 r!13107)) b!8033798))

(declare-fun m!8392798 () Bool)

(assert (=> start!756702 m!8392798))

(push 1)

(assert (not start!756702))

(assert (not b!8033800))

(assert (not b!8033798))

(assert tp_is_empty!54447)

(assert (not b!8033797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

