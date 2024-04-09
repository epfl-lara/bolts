; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32002 () Bool)

(assert start!32002)

(declare-fun b!319291 () Bool)

(declare-fun res!173832 () Bool)

(declare-fun e!198319 () Bool)

(assert (=> b!319291 (=> (not res!173832) (not e!198319))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319291 (= res!173832 (validKeyInArray!0 k!2497))))

(declare-fun b!319290 () Bool)

(declare-fun res!173834 () Bool)

(assert (=> b!319290 (=> (not res!173834) (not e!198319))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16305 0))(
  ( (array!16306 (arr!7713 (Array (_ BitVec 32) (_ BitVec 64))) (size!8065 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16305)

(assert (=> b!319290 (= res!173834 (and (= (size!8065 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8065 a!3305))))))

(declare-fun b!319292 () Bool)

(declare-fun res!173835 () Bool)

(assert (=> b!319292 (=> (not res!173835) (not e!198319))))

(declare-fun arrayContainsKey!0 (array!16305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319292 (= res!173835 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319293 () Bool)

(assert (=> b!319293 (= e!198319 false)))

(declare-datatypes ((SeekEntryResult!2855 0))(
  ( (MissingZero!2855 (index!13596 (_ BitVec 32))) (Found!2855 (index!13597 (_ BitVec 32))) (Intermediate!2855 (undefined!3667 Bool) (index!13598 (_ BitVec 32)) (x!31836 (_ BitVec 32))) (Undefined!2855) (MissingVacant!2855 (index!13599 (_ BitVec 32))) )
))
(declare-fun lt!155774 () SeekEntryResult!2855)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16305 (_ BitVec 32)) SeekEntryResult!2855)

(assert (=> b!319293 (= lt!155774 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun res!173833 () Bool)

(assert (=> start!32002 (=> (not res!173833) (not e!198319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32002 (= res!173833 (validMask!0 mask!3777))))

(assert (=> start!32002 e!198319))

(assert (=> start!32002 true))

(declare-fun array_inv!5667 (array!16305) Bool)

(assert (=> start!32002 (array_inv!5667 a!3305)))

(assert (= (and start!32002 res!173833) b!319290))

(assert (= (and b!319290 res!173834) b!319291))

(assert (= (and b!319291 res!173832) b!319292))

(assert (= (and b!319292 res!173835) b!319293))

(declare-fun m!327927 () Bool)

(assert (=> b!319291 m!327927))

(declare-fun m!327929 () Bool)

(assert (=> b!319292 m!327929))

(declare-fun m!327931 () Bool)

(assert (=> b!319293 m!327931))

(declare-fun m!327933 () Bool)

(assert (=> start!32002 m!327933))

(declare-fun m!327935 () Bool)

(assert (=> start!32002 m!327935))

(push 1)

(assert (not b!319293))

(assert (not b!319292))

(assert (not start!32002))

(assert (not b!319291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

