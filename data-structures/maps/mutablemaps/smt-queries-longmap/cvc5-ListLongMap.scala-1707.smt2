; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31380 () Bool)

(assert start!31380)

(declare-fun res!170171 () Bool)

(declare-fun e!195742 () Bool)

(assert (=> start!31380 (=> (not res!170171) (not e!195742))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31380 (= res!170171 (validMask!0 mask!3709))))

(assert (=> start!31380 e!195742))

(declare-datatypes ((array!16049 0))(
  ( (array!16050 (arr!7597 (Array (_ BitVec 32) (_ BitVec 64))) (size!7949 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16049)

(declare-fun array_inv!5551 (array!16049) Bool)

(assert (=> start!31380 (array_inv!5551 a!3293)))

(assert (=> start!31380 true))

(declare-fun b!314261 () Bool)

(declare-fun res!170172 () Bool)

(assert (=> b!314261 (=> (not res!170172) (not e!195742))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2748 0))(
  ( (MissingZero!2748 (index!13168 (_ BitVec 32))) (Found!2748 (index!13169 (_ BitVec 32))) (Intermediate!2748 (undefined!3560 Bool) (index!13170 (_ BitVec 32)) (x!31365 (_ BitVec 32))) (Undefined!2748) (MissingVacant!2748 (index!13171 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16049 (_ BitVec 32)) SeekEntryResult!2748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314261 (= res!170172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2748 false resIndex!52 resX!52)))))

(declare-fun b!314262 () Bool)

(declare-fun res!170170 () Bool)

(assert (=> b!314262 (=> (not res!170170) (not e!195742))))

(declare-fun arrayContainsKey!0 (array!16049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314262 (= res!170170 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314263 () Bool)

(assert (=> b!314263 (= e!195742 false)))

(declare-fun lt!153869 () SeekEntryResult!2748)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314263 (= lt!153869 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314264 () Bool)

(declare-fun res!170175 () Bool)

(assert (=> b!314264 (=> (not res!170175) (not e!195742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16049 (_ BitVec 32)) Bool)

(assert (=> b!314264 (= res!170175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314265 () Bool)

(declare-fun res!170174 () Bool)

(assert (=> b!314265 (=> (not res!170174) (not e!195742))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314265 (= res!170174 (and (= (select (arr!7597 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7949 a!3293))))))

(declare-fun b!314266 () Bool)

(declare-fun res!170168 () Bool)

(assert (=> b!314266 (=> (not res!170168) (not e!195742))))

(assert (=> b!314266 (= res!170168 (and (= (size!7949 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7949 a!3293))))))

(declare-fun b!314267 () Bool)

(declare-fun res!170173 () Bool)

(assert (=> b!314267 (=> (not res!170173) (not e!195742))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16049 (_ BitVec 32)) SeekEntryResult!2748)

(assert (=> b!314267 (= res!170173 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2748 i!1240)))))

(declare-fun b!314268 () Bool)

(declare-fun res!170169 () Bool)

(assert (=> b!314268 (=> (not res!170169) (not e!195742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314268 (= res!170169 (validKeyInArray!0 k!2441))))

(assert (= (and start!31380 res!170171) b!314266))

(assert (= (and b!314266 res!170168) b!314268))

(assert (= (and b!314268 res!170169) b!314262))

(assert (= (and b!314262 res!170170) b!314267))

(assert (= (and b!314267 res!170173) b!314264))

(assert (= (and b!314264 res!170175) b!314261))

(assert (= (and b!314261 res!170172) b!314265))

(assert (= (and b!314265 res!170174) b!314263))

(declare-fun m!323857 () Bool)

(assert (=> b!314261 m!323857))

(assert (=> b!314261 m!323857))

(declare-fun m!323859 () Bool)

(assert (=> b!314261 m!323859))

(declare-fun m!323861 () Bool)

(assert (=> b!314267 m!323861))

(declare-fun m!323863 () Bool)

(assert (=> b!314265 m!323863))

(declare-fun m!323865 () Bool)

(assert (=> b!314262 m!323865))

(declare-fun m!323867 () Bool)

(assert (=> start!31380 m!323867))

(declare-fun m!323869 () Bool)

(assert (=> start!31380 m!323869))

(declare-fun m!323871 () Bool)

(assert (=> b!314264 m!323871))

(declare-fun m!323873 () Bool)

(assert (=> b!314268 m!323873))

(declare-fun m!323875 () Bool)

(assert (=> b!314263 m!323875))

(push 1)

(assert (not b!314264))

(assert (not start!31380))

(assert (not b!314262))

(assert (not b!314261))

(assert (not b!314263))

(assert (not b!314267))

(assert (not b!314268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

