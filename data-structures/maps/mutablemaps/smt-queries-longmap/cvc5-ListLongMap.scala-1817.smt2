; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32718 () Bool)

(assert start!32718)

(declare-fun b!326748 () Bool)

(declare-fun res!179937 () Bool)

(declare-fun e!201068 () Bool)

(assert (=> b!326748 (=> (not res!179937) (not e!201068))))

(declare-datatypes ((array!16751 0))(
  ( (array!16752 (arr!7927 (Array (_ BitVec 32) (_ BitVec 64))) (size!8279 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16751)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326748 (= res!179937 (and (= (size!8279 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8279 a!3305))))))

(declare-fun b!326749 () Bool)

(declare-fun res!179944 () Bool)

(assert (=> b!326749 (=> (not res!179944) (not e!201068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16751 (_ BitVec 32)) Bool)

(assert (=> b!326749 (= res!179944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326750 () Bool)

(declare-fun res!179940 () Bool)

(assert (=> b!326750 (=> (not res!179940) (not e!201068))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326750 (= res!179940 (validKeyInArray!0 k!2497))))

(declare-fun b!326751 () Bool)

(declare-fun res!179946 () Bool)

(declare-fun e!201069 () Bool)

(assert (=> b!326751 (=> (not res!179946) (not e!201069))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326751 (= res!179946 (and (= (select (arr!7927 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8279 a!3305))))))

(declare-fun res!179943 () Bool)

(assert (=> start!32718 (=> (not res!179943) (not e!201068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32718 (= res!179943 (validMask!0 mask!3777))))

(assert (=> start!32718 e!201068))

(declare-fun array_inv!5881 (array!16751) Bool)

(assert (=> start!32718 (array_inv!5881 a!3305)))

(assert (=> start!32718 true))

(declare-fun b!326752 () Bool)

(assert (=> b!326752 (= e!201069 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10147 0))(
  ( (Unit!10148) )
))
(declare-fun lt!157388 () Unit!10147)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16751 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10147)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326752 (= lt!157388 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326753 () Bool)

(declare-fun res!179939 () Bool)

(assert (=> b!326753 (=> (not res!179939) (not e!201068))))

(declare-fun arrayContainsKey!0 (array!16751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326753 (= res!179939 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326754 () Bool)

(declare-fun res!179941 () Bool)

(assert (=> b!326754 (=> (not res!179941) (not e!201069))))

(declare-datatypes ((SeekEntryResult!3069 0))(
  ( (MissingZero!3069 (index!14452 (_ BitVec 32))) (Found!3069 (index!14453 (_ BitVec 32))) (Intermediate!3069 (undefined!3881 Bool) (index!14454 (_ BitVec 32)) (x!32662 (_ BitVec 32))) (Undefined!3069) (MissingVacant!3069 (index!14455 (_ BitVec 32))) )
))
(declare-fun lt!157387 () SeekEntryResult!3069)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16751 (_ BitVec 32)) SeekEntryResult!3069)

(assert (=> b!326754 (= res!179941 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157387))))

(declare-fun b!326755 () Bool)

(declare-fun res!179942 () Bool)

(assert (=> b!326755 (=> (not res!179942) (not e!201069))))

(assert (=> b!326755 (= res!179942 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7927 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326756 () Bool)

(assert (=> b!326756 (= e!201068 e!201069)))

(declare-fun res!179938 () Bool)

(assert (=> b!326756 (=> (not res!179938) (not e!201069))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326756 (= res!179938 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157387))))

(assert (=> b!326756 (= lt!157387 (Intermediate!3069 false resIndex!58 resX!58))))

(declare-fun b!326757 () Bool)

(declare-fun res!179945 () Bool)

(assert (=> b!326757 (=> (not res!179945) (not e!201068))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16751 (_ BitVec 32)) SeekEntryResult!3069)

(assert (=> b!326757 (= res!179945 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3069 i!1250)))))

(assert (= (and start!32718 res!179943) b!326748))

(assert (= (and b!326748 res!179937) b!326750))

(assert (= (and b!326750 res!179940) b!326753))

(assert (= (and b!326753 res!179939) b!326757))

(assert (= (and b!326757 res!179945) b!326749))

(assert (= (and b!326749 res!179944) b!326756))

(assert (= (and b!326756 res!179938) b!326751))

(assert (= (and b!326751 res!179946) b!326754))

(assert (= (and b!326754 res!179941) b!326755))

(assert (= (and b!326755 res!179942) b!326752))

(declare-fun m!333271 () Bool)

(assert (=> b!326752 m!333271))

(assert (=> b!326752 m!333271))

(declare-fun m!333273 () Bool)

(assert (=> b!326752 m!333273))

(declare-fun m!333275 () Bool)

(assert (=> b!326757 m!333275))

(declare-fun m!333277 () Bool)

(assert (=> b!326749 m!333277))

(declare-fun m!333279 () Bool)

(assert (=> b!326751 m!333279))

(declare-fun m!333281 () Bool)

(assert (=> b!326756 m!333281))

(assert (=> b!326756 m!333281))

(declare-fun m!333283 () Bool)

(assert (=> b!326756 m!333283))

(declare-fun m!333285 () Bool)

(assert (=> b!326753 m!333285))

(declare-fun m!333287 () Bool)

(assert (=> b!326755 m!333287))

(declare-fun m!333289 () Bool)

(assert (=> b!326750 m!333289))

(declare-fun m!333291 () Bool)

(assert (=> b!326754 m!333291))

(declare-fun m!333293 () Bool)

(assert (=> start!32718 m!333293))

(declare-fun m!333295 () Bool)

(assert (=> start!32718 m!333295))

(push 1)

(assert (not b!326750))

(assert (not start!32718))

(assert (not b!326749))

(assert (not b!326754))

(assert (not b!326756))

(assert (not b!326752))

(assert (not b!326753))

(assert (not b!326757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

