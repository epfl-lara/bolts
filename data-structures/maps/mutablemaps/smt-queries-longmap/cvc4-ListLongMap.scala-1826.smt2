; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33022 () Bool)

(assert start!33022)

(declare-fun b!328610 () Bool)

(declare-fun res!181101 () Bool)

(declare-fun e!201963 () Bool)

(assert (=> b!328610 (=> (not res!181101) (not e!201963))))

(declare-datatypes ((array!16824 0))(
  ( (array!16825 (arr!7956 (Array (_ BitVec 32) (_ BitVec 64))) (size!8308 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16824)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328610 (= res!181101 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328611 () Bool)

(assert (=> b!328611 (= e!201963 false)))

(declare-datatypes ((SeekEntryResult!3098 0))(
  ( (MissingZero!3098 (index!14568 (_ BitVec 32))) (Found!3098 (index!14569 (_ BitVec 32))) (Intermediate!3098 (undefined!3910 Bool) (index!14570 (_ BitVec 32)) (x!32796 (_ BitVec 32))) (Undefined!3098) (MissingVacant!3098 (index!14571 (_ BitVec 32))) )
))
(declare-fun lt!157988 () SeekEntryResult!3098)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16824 (_ BitVec 32)) SeekEntryResult!3098)

(assert (=> b!328611 (= lt!157988 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328612 () Bool)

(declare-fun res!181098 () Bool)

(assert (=> b!328612 (=> (not res!181098) (not e!201963))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16824 (_ BitVec 32)) SeekEntryResult!3098)

(assert (=> b!328612 (= res!181098 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3098 i!1250)))))

(declare-fun b!328613 () Bool)

(declare-fun res!181094 () Bool)

(assert (=> b!328613 (=> (not res!181094) (not e!201963))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328613 (= res!181094 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3098 false resIndex!58 resX!58)))))

(declare-fun b!328614 () Bool)

(declare-fun res!181096 () Bool)

(assert (=> b!328614 (=> (not res!181096) (not e!201963))))

(assert (=> b!328614 (= res!181096 (and (= (size!8308 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8308 a!3305))))))

(declare-fun b!328615 () Bool)

(declare-fun res!181097 () Bool)

(assert (=> b!328615 (=> (not res!181097) (not e!201963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328615 (= res!181097 (validKeyInArray!0 k!2497))))

(declare-fun b!328616 () Bool)

(declare-fun res!181099 () Bool)

(assert (=> b!328616 (=> (not res!181099) (not e!201963))))

(assert (=> b!328616 (= res!181099 (and (= (select (arr!7956 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8308 a!3305))))))

(declare-fun res!181095 () Bool)

(assert (=> start!33022 (=> (not res!181095) (not e!201963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33022 (= res!181095 (validMask!0 mask!3777))))

(assert (=> start!33022 e!201963))

(declare-fun array_inv!5910 (array!16824) Bool)

(assert (=> start!33022 (array_inv!5910 a!3305)))

(assert (=> start!33022 true))

(declare-fun b!328617 () Bool)

(declare-fun res!181100 () Bool)

(assert (=> b!328617 (=> (not res!181100) (not e!201963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16824 (_ BitVec 32)) Bool)

(assert (=> b!328617 (= res!181100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!33022 res!181095) b!328614))

(assert (= (and b!328614 res!181096) b!328615))

(assert (= (and b!328615 res!181097) b!328610))

(assert (= (and b!328610 res!181101) b!328612))

(assert (= (and b!328612 res!181098) b!328617))

(assert (= (and b!328617 res!181100) b!328613))

(assert (= (and b!328613 res!181094) b!328616))

(assert (= (and b!328616 res!181099) b!328611))

(declare-fun m!334505 () Bool)

(assert (=> b!328613 m!334505))

(assert (=> b!328613 m!334505))

(declare-fun m!334507 () Bool)

(assert (=> b!328613 m!334507))

(declare-fun m!334509 () Bool)

(assert (=> b!328612 m!334509))

(declare-fun m!334511 () Bool)

(assert (=> b!328610 m!334511))

(declare-fun m!334513 () Bool)

(assert (=> b!328617 m!334513))

(declare-fun m!334515 () Bool)

(assert (=> start!33022 m!334515))

(declare-fun m!334517 () Bool)

(assert (=> start!33022 m!334517))

(declare-fun m!334519 () Bool)

(assert (=> b!328616 m!334519))

(declare-fun m!334521 () Bool)

(assert (=> b!328611 m!334521))

(declare-fun m!334523 () Bool)

(assert (=> b!328615 m!334523))

(push 1)

(assert (not b!328611))

(assert (not b!328617))

(assert (not b!328613))

(assert (not b!328615))

(assert (not b!328612))

(assert (not b!328610))

(assert (not start!33022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

