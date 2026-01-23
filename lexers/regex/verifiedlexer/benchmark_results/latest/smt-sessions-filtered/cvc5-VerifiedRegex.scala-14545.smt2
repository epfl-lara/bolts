; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755114 () Bool)

(assert start!755114)

(declare-fun b!8021728 () Bool)

(declare-fun e!4725474 () Bool)

(declare-fun tp_is_empty!54083 () Bool)

(declare-fun tp!2400772 () Bool)

(assert (=> b!8021728 (= e!4725474 (and tp_is_empty!54083 tp!2400772))))

(declare-fun res!3171937 () Bool)

(declare-fun e!4725477 () Bool)

(assert (=> start!755114 (=> (not res!3171937) (not e!4725477))))

(declare-datatypes ((B!4195 0))(
  ( (B!4196 (val!32487 Int)) )
))
(declare-datatypes ((List!74999 0))(
  ( (Nil!74875) (Cons!74875 (h!81323 B!4195) (t!390742 List!74999)) )
))
(declare-fun p1!173 () List!74999)

(declare-fun l!3353 () List!74999)

(declare-fun isPrefix!6806 (List!74999 List!74999) Bool)

(assert (=> start!755114 (= res!3171937 (isPrefix!6806 p1!173 l!3353))))

(assert (=> start!755114 e!4725477))

(assert (=> start!755114 e!4725474))

(declare-fun e!4725475 () Bool)

(assert (=> start!755114 e!4725475))

(declare-fun e!4725476 () Bool)

(assert (=> start!755114 e!4725476))

(declare-fun b!8021729 () Bool)

(declare-fun res!3171938 () Bool)

(assert (=> b!8021729 (=> (not res!3171938) (not e!4725477))))

(declare-fun p2!173 () List!74999)

(assert (=> b!8021729 (= res!3171938 (isPrefix!6806 p2!173 l!3353))))

(declare-fun b!8021730 () Bool)

(declare-fun tp!2400771 () Bool)

(assert (=> b!8021730 (= e!4725476 (and tp_is_empty!54083 tp!2400771))))

(declare-fun b!8021731 () Bool)

(declare-fun tp!2400770 () Bool)

(assert (=> b!8021731 (= e!4725475 (and tp_is_empty!54083 tp!2400770))))

(declare-fun b!8021732 () Bool)

(assert (=> b!8021732 (= e!4725477 false)))

(declare-fun lt!2720123 () Int)

(declare-fun size!43660 (List!74999) Int)

(assert (=> b!8021732 (= lt!2720123 (size!43660 p2!173))))

(declare-fun lt!2720124 () Int)

(assert (=> b!8021732 (= lt!2720124 (size!43660 p1!173))))

(assert (= (and start!755114 res!3171937) b!8021729))

(assert (= (and b!8021729 res!3171938) b!8021732))

(assert (= (and start!755114 (is-Cons!74875 p1!173)) b!8021728))

(assert (= (and start!755114 (is-Cons!74875 l!3353)) b!8021731))

(assert (= (and start!755114 (is-Cons!74875 p2!173)) b!8021730))

(declare-fun m!8384598 () Bool)

(assert (=> start!755114 m!8384598))

(declare-fun m!8384600 () Bool)

(assert (=> b!8021729 m!8384600))

(declare-fun m!8384602 () Bool)

(assert (=> b!8021732 m!8384602))

(declare-fun m!8384604 () Bool)

(assert (=> b!8021732 m!8384604))

(push 1)

(assert tp_is_empty!54083)

(assert (not b!8021731))

(assert (not b!8021732))

(assert (not b!8021730))

(assert (not b!8021729))

(assert (not start!755114))

(assert (not b!8021728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

