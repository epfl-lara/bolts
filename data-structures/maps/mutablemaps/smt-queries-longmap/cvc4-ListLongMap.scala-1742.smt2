; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31984 () Bool)

(assert start!31984)

(declare-fun res!173725 () Bool)

(declare-fun e!198265 () Bool)

(assert (=> start!31984 (=> (not res!173725) (not e!198265))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31984 (= res!173725 (validMask!0 mask!3777))))

(assert (=> start!31984 e!198265))

(assert (=> start!31984 true))

(declare-datatypes ((array!16287 0))(
  ( (array!16288 (arr!7704 (Array (_ BitVec 32) (_ BitVec 64))) (size!8056 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16287)

(declare-fun array_inv!5658 (array!16287) Bool)

(assert (=> start!31984 (array_inv!5658 a!3305)))

(declare-fun b!319184 () Bool)

(declare-fun res!173726 () Bool)

(assert (=> b!319184 (=> (not res!173726) (not e!198265))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319184 (= res!173726 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319182 () Bool)

(declare-fun res!173724 () Bool)

(assert (=> b!319182 (=> (not res!173724) (not e!198265))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319182 (= res!173724 (and (= (size!8056 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8056 a!3305))))))

(declare-fun b!319185 () Bool)

(assert (=> b!319185 (= e!198265 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun b!319183 () Bool)

(declare-fun res!173727 () Bool)

(assert (=> b!319183 (=> (not res!173727) (not e!198265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319183 (= res!173727 (validKeyInArray!0 k!2497))))

(assert (= (and start!31984 res!173725) b!319182))

(assert (= (and b!319182 res!173724) b!319183))

(assert (= (and b!319183 res!173727) b!319184))

(assert (= (and b!319184 res!173726) b!319185))

(declare-fun m!327839 () Bool)

(assert (=> start!31984 m!327839))

(declare-fun m!327841 () Bool)

(assert (=> start!31984 m!327841))

(declare-fun m!327843 () Bool)

(assert (=> b!319184 m!327843))

(declare-fun m!327845 () Bool)

(assert (=> b!319183 m!327845))

(push 1)

(assert (not b!319183))

(assert (not start!31984))

(assert (not b!319184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

