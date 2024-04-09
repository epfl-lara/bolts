; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115386 () Bool)

(assert start!115386)

(declare-fun res!908258 () Bool)

(declare-fun e!773920 () Bool)

(assert (=> start!115386 (=> (not res!908258) (not e!773920))))

(declare-datatypes ((List!32011 0))(
  ( (Nil!32008) (Cons!32007 (h!33216 (_ BitVec 64)) (t!46712 List!32011)) )
))
(declare-fun l!3677 () List!32011)

(declare-datatypes ((tuple2!24544 0))(
  ( (tuple2!24545 (_1!12282 (_ BitVec 64)) (_2!12282 List!32011)) )
))
(declare-datatypes ((Option!798 0))(
  ( (Some!797 (v!21594 tuple2!24544)) (None!796) )
))
(declare-fun isEmpty!1123 (Option!798) Bool)

(declare-fun unapply!63 (List!32011) Option!798)

(assert (=> start!115386 (= res!908258 (isEmpty!1123 (unapply!63 l!3677)))))

(assert (=> start!115386 e!773920))

(assert (=> start!115386 true))

(declare-fun b!1364563 () Bool)

(declare-fun res!908259 () Bool)

(assert (=> b!1364563 (=> (not res!908259) (not e!773920))))

(assert (=> b!1364563 (= res!908259 (is-Nil!32008 l!3677))))

(declare-fun b!1364564 () Bool)

(declare-fun subseq!946 (List!32011 List!32011) Bool)

(assert (=> b!1364564 (= e!773920 (not (subseq!946 l!3677 l!3677)))))

(assert (= (and start!115386 res!908258) b!1364563))

(assert (= (and b!1364563 res!908259) b!1364564))

(declare-fun m!1249393 () Bool)

(assert (=> start!115386 m!1249393))

(assert (=> start!115386 m!1249393))

(declare-fun m!1249395 () Bool)

(assert (=> start!115386 m!1249395))

(declare-fun m!1249397 () Bool)

(assert (=> b!1364564 m!1249397))

(push 1)

(assert (not b!1364564))

(assert (not start!115386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1364595 () Bool)

(declare-fun e!773949 () Bool)

(assert (=> b!1364595 (= e!773949 (subseq!946 (t!46712 l!3677) (t!46712 l!3677)))))

(declare-fun d!146465 () Bool)

(declare-fun res!908289 () Bool)

(declare-fun e!773950 () Bool)

(assert (=> d!146465 (=> res!908289 e!773950)))

(assert (=> d!146465 (= res!908289 (is-Nil!32008 l!3677))))

(assert (=> d!146465 (= (subseq!946 l!3677 l!3677) e!773950)))

(declare-fun b!1364594 () Bool)

(declare-fun e!773952 () Bool)

(declare-fun e!773951 () Bool)

(assert (=> b!1364594 (= e!773952 e!773951)))

(declare-fun res!908291 () Bool)

(assert (=> b!1364594 (=> res!908291 e!773951)))

(assert (=> b!1364594 (= res!908291 e!773949)))

(declare-fun res!908290 () Bool)

(assert (=> b!1364594 (=> (not res!908290) (not e!773949))))

(assert (=> b!1364594 (= res!908290 (= (h!33216 l!3677) (h!33216 l!3677)))))

(declare-fun b!1364596 () Bool)

(assert (=> b!1364596 (= e!773951 (subseq!946 l!3677 (t!46712 l!3677)))))

(declare-fun b!1364593 () Bool)

(assert (=> b!1364593 (= e!773950 e!773952)))

(declare-fun res!908288 () Bool)

(assert (=> b!1364593 (=> (not res!908288) (not e!773952))))

(assert (=> b!1364593 (= res!908288 (is-Cons!32007 l!3677))))

(assert (= (and d!146465 (not res!908289)) b!1364593))

(assert (= (and b!1364593 res!908288) b!1364594))

(assert (= (and b!1364594 res!908290) b!1364595))

(assert (= (and b!1364594 (not res!908291)) b!1364596))

(declare-fun m!1249403 () Bool)

(assert (=> b!1364595 m!1249403))

(declare-fun m!1249405 () Bool)

(assert (=> b!1364596 m!1249405))

(assert (=> b!1364564 d!146465))

(declare-fun d!146473 () Bool)

(assert (=> d!146473 (= (isEmpty!1123 (unapply!63 l!3677)) (not (is-Some!797 (unapply!63 l!3677))))))

(assert (=> start!115386 d!146473))

(declare-fun d!146477 () Bool)

