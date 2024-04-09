; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31992 () Bool)

(assert start!31992)

(declare-fun b!319230 () Bool)

(declare-fun res!173772 () Bool)

(declare-fun e!198288 () Bool)

(assert (=> b!319230 (=> (not res!173772) (not e!198288))))

(declare-datatypes ((array!16295 0))(
  ( (array!16296 (arr!7708 (Array (_ BitVec 32) (_ BitVec 64))) (size!8060 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16295)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319230 (= res!173772 (and (= (size!8060 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8060 a!3305))))))

(declare-fun b!319232 () Bool)

(declare-fun res!173775 () Bool)

(assert (=> b!319232 (=> (not res!173775) (not e!198288))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319232 (= res!173775 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319231 () Bool)

(declare-fun res!173773 () Bool)

(assert (=> b!319231 (=> (not res!173773) (not e!198288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319231 (= res!173773 (validKeyInArray!0 k!2497))))

(declare-fun b!319233 () Bool)

(assert (=> b!319233 (= e!198288 false)))

(declare-datatypes ((SeekEntryResult!2850 0))(
  ( (MissingZero!2850 (index!13576 (_ BitVec 32))) (Found!2850 (index!13577 (_ BitVec 32))) (Intermediate!2850 (undefined!3662 Bool) (index!13578 (_ BitVec 32)) (x!31823 (_ BitVec 32))) (Undefined!2850) (MissingVacant!2850 (index!13579 (_ BitVec 32))) )
))
(declare-fun lt!155759 () SeekEntryResult!2850)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16295 (_ BitVec 32)) SeekEntryResult!2850)

(assert (=> b!319233 (= lt!155759 (seekEntryOrOpen!0 k!2497 a!3305 mask!3777))))

(declare-fun res!173774 () Bool)

(assert (=> start!31992 (=> (not res!173774) (not e!198288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31992 (= res!173774 (validMask!0 mask!3777))))

(assert (=> start!31992 e!198288))

(assert (=> start!31992 true))

(declare-fun array_inv!5662 (array!16295) Bool)

(assert (=> start!31992 (array_inv!5662 a!3305)))

(assert (= (and start!31992 res!173774) b!319230))

(assert (= (and b!319230 res!173772) b!319231))

(assert (= (and b!319231 res!173773) b!319232))

(assert (= (and b!319232 res!173775) b!319233))

(declare-fun m!327877 () Bool)

(assert (=> b!319232 m!327877))

(declare-fun m!327879 () Bool)

(assert (=> b!319231 m!327879))

(declare-fun m!327881 () Bool)

(assert (=> b!319233 m!327881))

(declare-fun m!327883 () Bool)

(assert (=> start!31992 m!327883))

(declare-fun m!327885 () Bool)

(assert (=> start!31992 m!327885))

(push 1)

(assert (not b!319231))

(assert (not b!319233))

(assert (not b!319232))

(assert (not start!31992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

