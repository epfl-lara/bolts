; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32220 () Bool)

(assert start!32220)

(declare-fun b!320543 () Bool)

(declare-fun e!198856 () Bool)

(assert (=> b!320543 (= e!198856 false)))

(declare-datatypes ((array!16406 0))(
  ( (array!16407 (arr!7759 (Array (_ BitVec 32) (_ BitVec 64))) (size!8111 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16406)

(declare-datatypes ((SeekEntryResult!2901 0))(
  ( (MissingZero!2901 (index!13780 (_ BitVec 32))) (Found!2901 (index!13781 (_ BitVec 32))) (Intermediate!2901 (undefined!3713 Bool) (index!13782 (_ BitVec 32)) (x!32019 (_ BitVec 32))) (Undefined!2901) (MissingVacant!2901 (index!13783 (_ BitVec 32))) )
))
(declare-fun lt!156074 () SeekEntryResult!2901)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16406 (_ BitVec 32)) SeekEntryResult!2901)

(assert (=> b!320543 (= lt!156074 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!320544 () Bool)

(declare-fun res!174827 () Bool)

(assert (=> b!320544 (=> (not res!174827) (not e!198856))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320544 (= res!174827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2901 false resIndex!58 resX!58)))))

(declare-fun b!320545 () Bool)

(declare-fun res!174821 () Bool)

(assert (=> b!320545 (=> (not res!174821) (not e!198856))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16406 (_ BitVec 32)) SeekEntryResult!2901)

(assert (=> b!320545 (= res!174821 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2901 i!1250)))))

(declare-fun b!320546 () Bool)

(declare-fun res!174828 () Bool)

(assert (=> b!320546 (=> (not res!174828) (not e!198856))))

(declare-fun arrayContainsKey!0 (array!16406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320546 (= res!174828 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320547 () Bool)

(declare-fun res!174822 () Bool)

(assert (=> b!320547 (=> (not res!174822) (not e!198856))))

(assert (=> b!320547 (= res!174822 (and (= (size!8111 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8111 a!3305))))))

(declare-fun b!320548 () Bool)

(declare-fun res!174823 () Bool)

(assert (=> b!320548 (=> (not res!174823) (not e!198856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320548 (= res!174823 (validKeyInArray!0 k!2497))))

(declare-fun res!174824 () Bool)

(assert (=> start!32220 (=> (not res!174824) (not e!198856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32220 (= res!174824 (validMask!0 mask!3777))))

(assert (=> start!32220 e!198856))

(declare-fun array_inv!5713 (array!16406) Bool)

(assert (=> start!32220 (array_inv!5713 a!3305)))

(assert (=> start!32220 true))

(declare-fun b!320549 () Bool)

(declare-fun res!174825 () Bool)

(assert (=> b!320549 (=> (not res!174825) (not e!198856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16406 (_ BitVec 32)) Bool)

(assert (=> b!320549 (= res!174825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320550 () Bool)

(declare-fun res!174826 () Bool)

(assert (=> b!320550 (=> (not res!174826) (not e!198856))))

(assert (=> b!320550 (= res!174826 (and (= (select (arr!7759 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8111 a!3305))))))

(assert (= (and start!32220 res!174824) b!320547))

(assert (= (and b!320547 res!174822) b!320548))

(assert (= (and b!320548 res!174823) b!320546))

(assert (= (and b!320546 res!174828) b!320545))

(assert (= (and b!320545 res!174821) b!320549))

(assert (= (and b!320549 res!174825) b!320544))

(assert (= (and b!320544 res!174827) b!320550))

(assert (= (and b!320550 res!174826) b!320543))

(declare-fun m!328855 () Bool)

(assert (=> b!320550 m!328855))

(declare-fun m!328857 () Bool)

(assert (=> b!320549 m!328857))

(declare-fun m!328859 () Bool)

(assert (=> b!320546 m!328859))

(declare-fun m!328861 () Bool)

(assert (=> b!320548 m!328861))

(declare-fun m!328863 () Bool)

(assert (=> start!32220 m!328863))

(declare-fun m!328865 () Bool)

(assert (=> start!32220 m!328865))

(declare-fun m!328867 () Bool)

(assert (=> b!320545 m!328867))

(declare-fun m!328869 () Bool)

(assert (=> b!320544 m!328869))

(assert (=> b!320544 m!328869))

(declare-fun m!328871 () Bool)

(assert (=> b!320544 m!328871))

(declare-fun m!328873 () Bool)

(assert (=> b!320543 m!328873))

(push 1)

(assert (not b!320543))

(assert (not b!320548))

(assert (not b!320544))

(assert (not b!320549))

(assert (not b!320545))

(assert (not start!32220))

(assert (not b!320546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

