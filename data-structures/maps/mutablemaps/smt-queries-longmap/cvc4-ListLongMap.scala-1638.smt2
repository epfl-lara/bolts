; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30616 () Bool)

(assert start!30616)

(declare-fun b!306919 () Bool)

(declare-fun res!163837 () Bool)

(declare-fun e!192302 () Bool)

(assert (=> b!306919 (=> (not res!163837) (not e!192302))))

(declare-datatypes ((array!15618 0))(
  ( (array!15619 (arr!7392 (Array (_ BitVec 32) (_ BitVec 64))) (size!7744 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15618)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2543 0))(
  ( (MissingZero!2543 (index!12348 (_ BitVec 32))) (Found!2543 (index!12349 (_ BitVec 32))) (Intermediate!2543 (undefined!3355 Bool) (index!12350 (_ BitVec 32)) (x!30557 (_ BitVec 32))) (Undefined!2543) (MissingVacant!2543 (index!12351 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15618 (_ BitVec 32)) SeekEntryResult!2543)

(assert (=> b!306919 (= res!163837 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2543 i!1240)))))

(declare-fun b!306920 () Bool)

(declare-fun res!163832 () Bool)

(assert (=> b!306920 (=> (not res!163832) (not e!192302))))

(declare-fun arrayContainsKey!0 (array!15618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306920 (= res!163832 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306921 () Bool)

(declare-fun res!163835 () Bool)

(declare-fun e!192303 () Bool)

(assert (=> b!306921 (=> (not res!163835) (not e!192303))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306921 (= res!163835 (and (= (select (arr!7392 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7744 a!3293))))))

(declare-fun b!306922 () Bool)

(declare-fun res!163831 () Bool)

(assert (=> b!306922 (=> (not res!163831) (not e!192302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306922 (= res!163831 (validKeyInArray!0 k!2441))))

(declare-fun b!306923 () Bool)

(declare-fun res!163839 () Bool)

(assert (=> b!306923 (=> (not res!163839) (not e!192303))))

(declare-fun lt!151055 () SeekEntryResult!2543)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15618 (_ BitVec 32)) SeekEntryResult!2543)

(assert (=> b!306923 (= res!163839 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151055))))

(declare-fun res!163833 () Bool)

(assert (=> start!30616 (=> (not res!163833) (not e!192302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30616 (= res!163833 (validMask!0 mask!3709))))

(assert (=> start!30616 e!192302))

(declare-fun array_inv!5346 (array!15618) Bool)

(assert (=> start!30616 (array_inv!5346 a!3293)))

(assert (=> start!30616 true))

(declare-fun b!306924 () Bool)

(declare-fun res!163836 () Bool)

(assert (=> b!306924 (=> (not res!163836) (not e!192302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15618 (_ BitVec 32)) Bool)

(assert (=> b!306924 (= res!163836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306925 () Bool)

(assert (=> b!306925 (= e!192303 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7392 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!306926 () Bool)

(declare-fun res!163838 () Bool)

(assert (=> b!306926 (=> (not res!163838) (not e!192302))))

(assert (=> b!306926 (= res!163838 (and (= (size!7744 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7744 a!3293))))))

(declare-fun b!306927 () Bool)

(assert (=> b!306927 (= e!192302 e!192303)))

(declare-fun res!163834 () Bool)

(assert (=> b!306927 (=> (not res!163834) (not e!192303))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306927 (= res!163834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151055))))

(assert (=> b!306927 (= lt!151055 (Intermediate!2543 false resIndex!52 resX!52))))

(assert (= (and start!30616 res!163833) b!306926))

(assert (= (and b!306926 res!163838) b!306922))

(assert (= (and b!306922 res!163831) b!306920))

(assert (= (and b!306920 res!163832) b!306919))

(assert (= (and b!306919 res!163837) b!306924))

(assert (= (and b!306924 res!163836) b!306927))

(assert (= (and b!306927 res!163834) b!306921))

(assert (= (and b!306921 res!163835) b!306923))

(assert (= (and b!306923 res!163839) b!306925))

(declare-fun m!317325 () Bool)

(assert (=> b!306919 m!317325))

(declare-fun m!317327 () Bool)

(assert (=> b!306921 m!317327))

(declare-fun m!317329 () Bool)

(assert (=> start!30616 m!317329))

(declare-fun m!317331 () Bool)

(assert (=> start!30616 m!317331))

(declare-fun m!317333 () Bool)

(assert (=> b!306927 m!317333))

(assert (=> b!306927 m!317333))

(declare-fun m!317335 () Bool)

(assert (=> b!306927 m!317335))

(declare-fun m!317337 () Bool)

(assert (=> b!306922 m!317337))

(declare-fun m!317339 () Bool)

(assert (=> b!306920 m!317339))

(declare-fun m!317341 () Bool)

(assert (=> b!306923 m!317341))

(declare-fun m!317343 () Bool)

(assert (=> b!306925 m!317343))

(declare-fun m!317345 () Bool)

(assert (=> b!306924 m!317345))

(push 1)

(assert (not b!306923))

(assert (not b!306927))

(assert (not b!306919))

(assert (not b!306922))

(assert (not b!306920))

(assert (not start!30616))

(assert (not b!306924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

