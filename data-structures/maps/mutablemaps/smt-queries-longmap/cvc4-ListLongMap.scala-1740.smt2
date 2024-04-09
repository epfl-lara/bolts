; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31954 () Bool)

(assert start!31954)

(declare-fun res!173664 () Bool)

(declare-fun e!198228 () Bool)

(assert (=> start!31954 (=> (not res!173664) (not e!198228))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31954 (= res!173664 (validMask!0 mask!3777))))

(assert (=> start!31954 e!198228))

(assert (=> start!31954 true))

(declare-datatypes ((array!16272 0))(
  ( (array!16273 (arr!7698 (Array (_ BitVec 32) (_ BitVec 64))) (size!8050 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16272)

(declare-fun array_inv!5652 (array!16272) Bool)

(assert (=> start!31954 (array_inv!5652 a!3305)))

(declare-fun b!319120 () Bool)

(declare-fun res!173663 () Bool)

(assert (=> b!319120 (=> (not res!173663) (not e!198228))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319120 (= res!173663 (and (= (size!8050 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8050 a!3305))))))

(declare-fun b!319121 () Bool)

(declare-fun res!173662 () Bool)

(assert (=> b!319121 (=> (not res!173662) (not e!198228))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319121 (= res!173662 (validKeyInArray!0 k!2497))))

(declare-fun b!319122 () Bool)

(assert (=> b!319122 (= e!198228 (bvsge #b00000000000000000000000000000000 (size!8050 a!3305)))))

(assert (= (and start!31954 res!173664) b!319120))

(assert (= (and b!319120 res!173663) b!319121))

(assert (= (and b!319121 res!173662) b!319122))

(declare-fun m!327799 () Bool)

(assert (=> start!31954 m!327799))

(declare-fun m!327801 () Bool)

(assert (=> start!31954 m!327801))

(declare-fun m!327803 () Bool)

(assert (=> b!319121 m!327803))

(push 1)

(assert (not start!31954))

(assert (not b!319121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

