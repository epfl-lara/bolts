; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32722 () Bool)

(assert start!32722)

(declare-fun b!326808 () Bool)

(declare-fun res!180002 () Bool)

(declare-fun e!201087 () Bool)

(assert (=> b!326808 (=> (not res!180002) (not e!201087))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326808 (= res!180002 (validKeyInArray!0 k!2497))))

(declare-fun b!326809 () Bool)

(declare-fun res!179997 () Bool)

(declare-fun e!201086 () Bool)

(assert (=> b!326809 (=> (not res!179997) (not e!201086))))

(declare-datatypes ((array!16755 0))(
  ( (array!16756 (arr!7929 (Array (_ BitVec 32) (_ BitVec 64))) (size!8281 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16755)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326809 (= res!179997 (and (= (select (arr!7929 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8281 a!3305))))))

(declare-fun b!326810 () Bool)

(declare-fun res!179999 () Bool)

(assert (=> b!326810 (=> (not res!179999) (not e!201086))))

(declare-datatypes ((SeekEntryResult!3071 0))(
  ( (MissingZero!3071 (index!14460 (_ BitVec 32))) (Found!3071 (index!14461 (_ BitVec 32))) (Intermediate!3071 (undefined!3883 Bool) (index!14462 (_ BitVec 32)) (x!32664 (_ BitVec 32))) (Undefined!3071) (MissingVacant!3071 (index!14463 (_ BitVec 32))) )
))
(declare-fun lt!157399 () SeekEntryResult!3071)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16755 (_ BitVec 32)) SeekEntryResult!3071)

(assert (=> b!326810 (= res!179999 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157399))))

(declare-fun b!326811 () Bool)

(assert (=> b!326811 (= e!201087 e!201086)))

(declare-fun res!180005 () Bool)

(assert (=> b!326811 (=> (not res!180005) (not e!201086))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326811 (= res!180005 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157399))))

(assert (=> b!326811 (= lt!157399 (Intermediate!3071 false resIndex!58 resX!58))))

(declare-fun b!326813 () Bool)

(declare-fun res!180004 () Bool)

(assert (=> b!326813 (=> (not res!180004) (not e!201087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16755 (_ BitVec 32)) Bool)

(assert (=> b!326813 (= res!180004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326814 () Bool)

(declare-fun res!179998 () Bool)

(assert (=> b!326814 (=> (not res!179998) (not e!201086))))

(assert (=> b!326814 (= res!179998 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7929 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326815 () Bool)

(declare-fun res!180006 () Bool)

(assert (=> b!326815 (=> (not res!180006) (not e!201087))))

(assert (=> b!326815 (= res!180006 (and (= (size!8281 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8281 a!3305))))))

(declare-fun b!326816 () Bool)

(assert (=> b!326816 (= e!201086 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10151 0))(
  ( (Unit!10152) )
))
(declare-fun lt!157400 () Unit!10151)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10151)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326816 (= lt!157400 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326817 () Bool)

(declare-fun res!180000 () Bool)

(assert (=> b!326817 (=> (not res!180000) (not e!201087))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16755 (_ BitVec 32)) SeekEntryResult!3071)

(assert (=> b!326817 (= res!180000 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3071 i!1250)))))

(declare-fun res!180001 () Bool)

(assert (=> start!32722 (=> (not res!180001) (not e!201087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32722 (= res!180001 (validMask!0 mask!3777))))

(assert (=> start!32722 e!201087))

(declare-fun array_inv!5883 (array!16755) Bool)

(assert (=> start!32722 (array_inv!5883 a!3305)))

(assert (=> start!32722 true))

(declare-fun b!326812 () Bool)

(declare-fun res!180003 () Bool)

(assert (=> b!326812 (=> (not res!180003) (not e!201087))))

(declare-fun arrayContainsKey!0 (array!16755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326812 (= res!180003 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32722 res!180001) b!326815))

(assert (= (and b!326815 res!180006) b!326808))

(assert (= (and b!326808 res!180002) b!326812))

(assert (= (and b!326812 res!180003) b!326817))

(assert (= (and b!326817 res!180000) b!326813))

(assert (= (and b!326813 res!180004) b!326811))

(assert (= (and b!326811 res!180005) b!326809))

(assert (= (and b!326809 res!179997) b!326810))

(assert (= (and b!326810 res!179999) b!326814))

(assert (= (and b!326814 res!179998) b!326816))

(declare-fun m!333323 () Bool)

(assert (=> b!326810 m!333323))

(declare-fun m!333325 () Bool)

(assert (=> b!326809 m!333325))

(declare-fun m!333327 () Bool)

(assert (=> b!326814 m!333327))

(declare-fun m!333329 () Bool)

(assert (=> b!326816 m!333329))

(assert (=> b!326816 m!333329))

(declare-fun m!333331 () Bool)

(assert (=> b!326816 m!333331))

(declare-fun m!333333 () Bool)

(assert (=> b!326817 m!333333))

(declare-fun m!333335 () Bool)

(assert (=> start!32722 m!333335))

(declare-fun m!333337 () Bool)

(assert (=> start!32722 m!333337))

(declare-fun m!333339 () Bool)

(assert (=> b!326812 m!333339))

(declare-fun m!333341 () Bool)

(assert (=> b!326808 m!333341))

(declare-fun m!333343 () Bool)

(assert (=> b!326811 m!333343))

(assert (=> b!326811 m!333343))

(declare-fun m!333345 () Bool)

(assert (=> b!326811 m!333345))

(declare-fun m!333347 () Bool)

(assert (=> b!326813 m!333347))

(push 1)

(assert (not b!326812))

(assert (not start!32722))

(assert (not b!326808))

(assert (not b!326811))

(assert (not b!326817))

(assert (not b!326816))

(assert (not b!326813))

(assert (not b!326810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

