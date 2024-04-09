; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31950 () Bool)

(assert start!31950)

(declare-fun res!173645 () Bool)

(declare-fun e!198217 () Bool)

(assert (=> start!31950 (=> (not res!173645) (not e!198217))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31950 (= res!173645 (validMask!0 mask!3777))))

(assert (=> start!31950 e!198217))

(assert (=> start!31950 true))

(declare-datatypes ((array!16268 0))(
  ( (array!16269 (arr!7696 (Array (_ BitVec 32) (_ BitVec 64))) (size!8048 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16268)

(declare-fun array_inv!5650 (array!16268) Bool)

(assert (=> start!31950 (array_inv!5650 a!3305)))

(declare-fun b!319102 () Bool)

(declare-fun res!173646 () Bool)

(assert (=> b!319102 (=> (not res!173646) (not e!198217))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319102 (= res!173646 (and (= (size!8048 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8048 a!3305))))))

(declare-fun b!319103 () Bool)

(declare-fun res!173644 () Bool)

(assert (=> b!319103 (=> (not res!173644) (not e!198217))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319103 (= res!173644 (validKeyInArray!0 k!2497))))

(declare-fun b!319104 () Bool)

(assert (=> b!319104 (= e!198217 (bvsge #b00000000000000000000000000000000 (size!8048 a!3305)))))

(assert (= (and start!31950 res!173645) b!319102))

(assert (= (and b!319102 res!173646) b!319103))

(assert (= (and b!319103 res!173644) b!319104))

(declare-fun m!327787 () Bool)

(assert (=> start!31950 m!327787))

(declare-fun m!327789 () Bool)

(assert (=> start!31950 m!327789))

(declare-fun m!327791 () Bool)

(assert (=> b!319103 m!327791))

(push 1)

(assert (not b!319103))

(assert (not start!31950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

