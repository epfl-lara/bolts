; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32214 () Bool)

(assert start!32214)

(declare-fun b!320485 () Bool)

(declare-fun res!174768 () Bool)

(declare-fun e!198838 () Bool)

(assert (=> b!320485 (=> (not res!174768) (not e!198838))))

(declare-datatypes ((array!16400 0))(
  ( (array!16401 (arr!7756 (Array (_ BitVec 32) (_ BitVec 64))) (size!8108 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16400)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16400 (_ BitVec 32)) Bool)

(assert (=> b!320485 (= res!174768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174764 () Bool)

(assert (=> start!32214 (=> (not res!174764) (not e!198838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32214 (= res!174764 (validMask!0 mask!3777))))

(assert (=> start!32214 e!198838))

(assert (=> start!32214 true))

(declare-fun array_inv!5710 (array!16400) Bool)

(assert (=> start!32214 (array_inv!5710 a!3305)))

(declare-fun b!320486 () Bool)

(declare-fun res!174767 () Bool)

(assert (=> b!320486 (=> (not res!174767) (not e!198838))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320486 (= res!174767 (and (= (size!8108 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8108 a!3305))))))

(declare-fun b!320487 () Bool)

(declare-fun res!174766 () Bool)

(assert (=> b!320487 (=> (not res!174766) (not e!198838))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320487 (= res!174766 (validKeyInArray!0 k!2497))))

(declare-fun b!320488 () Bool)

(assert (=> b!320488 (= e!198838 false)))

(declare-datatypes ((SeekEntryResult!2898 0))(
  ( (MissingZero!2898 (index!13768 (_ BitVec 32))) (Found!2898 (index!13769 (_ BitVec 32))) (Intermediate!2898 (undefined!3710 Bool) (index!13770 (_ BitVec 32)) (x!32008 (_ BitVec 32))) (Undefined!2898) (MissingVacant!2898 (index!13771 (_ BitVec 32))) )
))
(declare-fun lt!156065 () SeekEntryResult!2898)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16400 (_ BitVec 32)) SeekEntryResult!2898)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320488 (= lt!156065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320489 () Bool)

(declare-fun res!174765 () Bool)

(assert (=> b!320489 (=> (not res!174765) (not e!198838))))

(declare-fun arrayContainsKey!0 (array!16400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320489 (= res!174765 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320490 () Bool)

(declare-fun res!174763 () Bool)

(assert (=> b!320490 (=> (not res!174763) (not e!198838))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16400 (_ BitVec 32)) SeekEntryResult!2898)

(assert (=> b!320490 (= res!174763 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2898 i!1250)))))

(assert (= (and start!32214 res!174764) b!320486))

(assert (= (and b!320486 res!174767) b!320487))

(assert (= (and b!320487 res!174766) b!320489))

(assert (= (and b!320489 res!174765) b!320490))

(assert (= (and b!320490 res!174763) b!320485))

(assert (= (and b!320485 res!174768) b!320488))

(declare-fun m!328807 () Bool)

(assert (=> b!320488 m!328807))

(assert (=> b!320488 m!328807))

(declare-fun m!328809 () Bool)

(assert (=> b!320488 m!328809))

(declare-fun m!328811 () Bool)

(assert (=> b!320490 m!328811))

(declare-fun m!328813 () Bool)

(assert (=> start!32214 m!328813))

(declare-fun m!328815 () Bool)

(assert (=> start!32214 m!328815))

(declare-fun m!328817 () Bool)

(assert (=> b!320489 m!328817))

(declare-fun m!328819 () Bool)

(assert (=> b!320487 m!328819))

(declare-fun m!328821 () Bool)

(assert (=> b!320485 m!328821))

(push 1)

(assert (not b!320490))

(assert (not b!320489))

(assert (not b!320487))

(assert (not start!32214))

(assert (not b!320488))

(assert (not b!320485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

