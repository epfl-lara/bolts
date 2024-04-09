; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30240 () Bool)

(assert start!30240)

(declare-fun b!302311 () Bool)

(declare-fun e!190574 () Bool)

(declare-fun e!190576 () Bool)

(assert (=> b!302311 (= e!190574 e!190576)))

(declare-fun res!159963 () Bool)

(assert (=> b!302311 (=> (not res!159963) (not e!190576))))

(declare-datatypes ((array!15344 0))(
  ( (array!15345 (arr!7258 (Array (_ BitVec 32) (_ BitVec 64))) (size!7610 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15344)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2409 0))(
  ( (MissingZero!2409 (index!11812 (_ BitVec 32))) (Found!2409 (index!11813 (_ BitVec 32))) (Intermediate!2409 (undefined!3221 Bool) (index!11814 (_ BitVec 32)) (x!30053 (_ BitVec 32))) (Undefined!2409) (MissingVacant!2409 (index!11815 (_ BitVec 32))) )
))
(declare-fun lt!150059 () SeekEntryResult!2409)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15344 (_ BitVec 32)) SeekEntryResult!2409)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302311 (= res!159963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150059))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302311 (= lt!150059 (Intermediate!2409 false resIndex!52 resX!52))))

(declare-fun b!302312 () Bool)

(declare-fun res!159961 () Bool)

(assert (=> b!302312 (=> (not res!159961) (not e!190574))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302312 (= res!159961 (and (= (size!7610 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7610 a!3293))))))

(declare-fun b!302313 () Bool)

(declare-fun res!159959 () Bool)

(assert (=> b!302313 (=> (not res!159959) (not e!190576))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302313 (= res!159959 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150059))))

(declare-fun b!302314 () Bool)

(declare-fun res!159956 () Bool)

(assert (=> b!302314 (=> (not res!159956) (not e!190576))))

(assert (=> b!302314 (= res!159956 (and (= (select (arr!7258 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7610 a!3293))))))

(declare-fun b!302315 () Bool)

(declare-fun res!159960 () Bool)

(assert (=> b!302315 (=> (not res!159960) (not e!190574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302315 (= res!159960 (validKeyInArray!0 k!2441))))

(declare-fun b!302316 () Bool)

(declare-fun res!159955 () Bool)

(assert (=> b!302316 (=> (not res!159955) (not e!190574))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15344 (_ BitVec 32)) SeekEntryResult!2409)

(assert (=> b!302316 (= res!159955 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2409 i!1240)))))

(declare-fun b!302318 () Bool)

(declare-fun res!159962 () Bool)

(assert (=> b!302318 (=> (not res!159962) (not e!190574))))

(declare-fun arrayContainsKey!0 (array!15344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302318 (= res!159962 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302319 () Bool)

(assert (=> b!302319 (= e!190576 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7258 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7258 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7258 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun res!159957 () Bool)

(assert (=> start!30240 (=> (not res!159957) (not e!190574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30240 (= res!159957 (validMask!0 mask!3709))))

(assert (=> start!30240 e!190574))

(declare-fun array_inv!5212 (array!15344) Bool)

(assert (=> start!30240 (array_inv!5212 a!3293)))

(assert (=> start!30240 true))

(declare-fun b!302317 () Bool)

(declare-fun res!159958 () Bool)

(assert (=> b!302317 (=> (not res!159958) (not e!190574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15344 (_ BitVec 32)) Bool)

(assert (=> b!302317 (= res!159958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30240 res!159957) b!302312))

(assert (= (and b!302312 res!159961) b!302315))

(assert (= (and b!302315 res!159960) b!302318))

(assert (= (and b!302318 res!159962) b!302316))

(assert (= (and b!302316 res!159955) b!302317))

(assert (= (and b!302317 res!159958) b!302311))

(assert (= (and b!302311 res!159963) b!302314))

(assert (= (and b!302314 res!159956) b!302313))

(assert (= (and b!302313 res!159959) b!302319))

(declare-fun m!313867 () Bool)

(assert (=> b!302319 m!313867))

(declare-fun m!313869 () Bool)

(assert (=> b!302311 m!313869))

(assert (=> b!302311 m!313869))

(declare-fun m!313871 () Bool)

(assert (=> b!302311 m!313871))

(declare-fun m!313873 () Bool)

(assert (=> b!302315 m!313873))

(declare-fun m!313875 () Bool)

(assert (=> b!302316 m!313875))

(declare-fun m!313877 () Bool)

(assert (=> b!302318 m!313877))

(declare-fun m!313879 () Bool)

(assert (=> b!302314 m!313879))

(declare-fun m!313881 () Bool)

(assert (=> start!30240 m!313881))

(declare-fun m!313883 () Bool)

(assert (=> start!30240 m!313883))

(declare-fun m!313885 () Bool)

(assert (=> b!302313 m!313885))

(declare-fun m!313887 () Bool)

(assert (=> b!302317 m!313887))

(push 1)

