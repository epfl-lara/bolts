; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31996 () Bool)

(assert start!31996)

(declare-fun res!173797 () Bool)

(declare-fun e!198300 () Bool)

(assert (=> start!31996 (=> (not res!173797) (not e!198300))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31996 (= res!173797 (validMask!0 mask!3777))))

(assert (=> start!31996 e!198300))

(assert (=> start!31996 true))

(declare-datatypes ((array!16299 0))(
  ( (array!16300 (arr!7710 (Array (_ BitVec 32) (_ BitVec 64))) (size!8062 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16299)

(declare-fun array_inv!5664 (array!16299) Bool)

(assert (=> start!31996 (array_inv!5664 a!3305)))

(declare-fun b!319254 () Bool)

(declare-fun res!173796 () Bool)

(assert (=> b!319254 (=> (not res!173796) (not e!198300))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319254 (= res!173796 (and (= (size!8062 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8062 a!3305))))))

(declare-fun b!319255 () Bool)

(declare-fun res!173798 () Bool)

(assert (=> b!319255 (=> (not res!173798) (not e!198300))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319255 (= res!173798 (validKeyInArray!0 k!2497))))

(declare-fun b!319257 () Bool)

(assert (=> b!319257 (= e!198300 false)))

(declare-datatypes ((SeekEntryResult!2852 0))(
  ( (MissingZero!2852 (index!13584 (_ BitVec 32))) (Found!2852 (index!13585 (_ BitVec 32))) (Intermediate!2852 (undefined!3664 Bool) (index!13586 (_ BitVec 32)) (x!31825 (_ BitVec 32))) (Undefined!2852) (MissingVacant!2852 (index!13587 (_ BitVec 32))) )
))
(declare-fun lt!155765 () SeekEntryResult!2852)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16299 (_ BitVec 32)) SeekEntryResult!2852)

(assert (=> b!319257 (= lt!155765 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun b!319256 () Bool)

(declare-fun res!173799 () Bool)

(assert (=> b!319256 (=> (not res!173799) (not e!198300))))

(declare-fun arrayContainsKey!0 (array!16299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319256 (= res!173799 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!31996 res!173797) b!319254))

(assert (= (and b!319254 res!173796) b!319255))

(assert (= (and b!319255 res!173798) b!319256))

(assert (= (and b!319256 res!173799) b!319257))

(declare-fun m!327897 () Bool)

(assert (=> start!31996 m!327897))

(declare-fun m!327899 () Bool)

(assert (=> start!31996 m!327899))

(declare-fun m!327901 () Bool)

(assert (=> b!319255 m!327901))

(declare-fun m!327903 () Bool)

(assert (=> b!319257 m!327903))

(declare-fun m!327905 () Bool)

(assert (=> b!319256 m!327905))

(push 1)

(assert (not b!319257))

(assert (not b!319256))

(assert (not start!31996))

(assert (not b!319255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

