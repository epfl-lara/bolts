; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32014 () Bool)

(assert start!32014)

(declare-fun b!319387 () Bool)

(declare-fun res!173931 () Bool)

(declare-fun e!198355 () Bool)

(assert (=> b!319387 (=> (not res!173931) (not e!198355))))

(declare-datatypes ((array!16317 0))(
  ( (array!16318 (arr!7719 (Array (_ BitVec 32) (_ BitVec 64))) (size!8071 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16317)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2861 0))(
  ( (MissingZero!2861 (index!13620 (_ BitVec 32))) (Found!2861 (index!13621 (_ BitVec 32))) (Intermediate!2861 (undefined!3673 Bool) (index!13622 (_ BitVec 32)) (x!31858 (_ BitVec 32))) (Undefined!2861) (MissingVacant!2861 (index!13623 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16317 (_ BitVec 32)) SeekEntryResult!2861)

(assert (=> b!319387 (= res!173931 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2861 i!1250)))))

(declare-fun b!319388 () Bool)

(assert (=> b!319388 (= e!198355 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun res!173933 () Bool)

(assert (=> start!32014 (=> (not res!173933) (not e!198355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32014 (= res!173933 (validMask!0 mask!3777))))

(assert (=> start!32014 e!198355))

(assert (=> start!32014 true))

(declare-fun array_inv!5673 (array!16317) Bool)

(assert (=> start!32014 (array_inv!5673 a!3305)))

(declare-fun b!319389 () Bool)

(declare-fun res!173929 () Bool)

(assert (=> b!319389 (=> (not res!173929) (not e!198355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319389 (= res!173929 (validKeyInArray!0 k!2497))))

(declare-fun b!319390 () Bool)

(declare-fun res!173930 () Bool)

(assert (=> b!319390 (=> (not res!173930) (not e!198355))))

(assert (=> b!319390 (= res!173930 (and (= (size!8071 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8071 a!3305))))))

(declare-fun b!319391 () Bool)

(declare-fun res!173932 () Bool)

(assert (=> b!319391 (=> (not res!173932) (not e!198355))))

(declare-fun arrayContainsKey!0 (array!16317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319391 (= res!173932 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319392 () Bool)

(declare-fun res!173934 () Bool)

(assert (=> b!319392 (=> (not res!173934) (not e!198355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16317 (_ BitVec 32)) Bool)

(assert (=> b!319392 (= res!173934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32014 res!173933) b!319390))

(assert (= (and b!319390 res!173930) b!319389))

(assert (= (and b!319389 res!173929) b!319391))

(assert (= (and b!319391 res!173932) b!319387))

(assert (= (and b!319387 res!173931) b!319392))

(assert (= (and b!319392 res!173934) b!319388))

(declare-fun m!327991 () Bool)

(assert (=> b!319391 m!327991))

(declare-fun m!327993 () Bool)

(assert (=> b!319389 m!327993))

(declare-fun m!327995 () Bool)

(assert (=> start!32014 m!327995))

(declare-fun m!327997 () Bool)

(assert (=> start!32014 m!327997))

(declare-fun m!327999 () Bool)

(assert (=> b!319392 m!327999))

(declare-fun m!328001 () Bool)

(assert (=> b!319387 m!328001))

(push 1)

(assert (not b!319391))

(assert (not b!319389))

(assert (not b!319392))

(assert (not b!319387))

(assert (not start!32014))

(check-sat)

(pop 1)

