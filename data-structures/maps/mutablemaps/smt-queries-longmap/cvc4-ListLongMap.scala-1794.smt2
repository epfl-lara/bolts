; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32476 () Bool)

(assert start!32476)

(declare-fun res!177761 () Bool)

(declare-fun e!200179 () Bool)

(assert (=> start!32476 (=> (not res!177761) (not e!200179))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32476 (= res!177761 (validMask!0 mask!3777))))

(assert (=> start!32476 e!200179))

(declare-datatypes ((array!16611 0))(
  ( (array!16612 (arr!7860 (Array (_ BitVec 32) (_ BitVec 64))) (size!8212 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16611)

(declare-fun array_inv!5814 (array!16611) Bool)

(assert (=> start!32476 (array_inv!5814 a!3305)))

(assert (=> start!32476 true))

(declare-fun b!324270 () Bool)

(declare-fun res!177760 () Bool)

(declare-fun e!200178 () Bool)

(assert (=> b!324270 (=> (not res!177760) (not e!200178))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!324270 (= res!177760 (and (= (select (arr!7860 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8212 a!3305))))))

(declare-fun b!324271 () Bool)

(assert (=> b!324271 (= e!200179 e!200178)))

(declare-fun res!177767 () Bool)

(assert (=> b!324271 (=> (not res!177767) (not e!200178))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3002 0))(
  ( (MissingZero!3002 (index!14184 (_ BitVec 32))) (Found!3002 (index!14185 (_ BitVec 32))) (Intermediate!3002 (undefined!3814 Bool) (index!14186 (_ BitVec 32)) (x!32393 (_ BitVec 32))) (Undefined!3002) (MissingVacant!3002 (index!14187 (_ BitVec 32))) )
))
(declare-fun lt!156769 () SeekEntryResult!3002)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16611 (_ BitVec 32)) SeekEntryResult!3002)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324271 (= res!177767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156769))))

(assert (=> b!324271 (= lt!156769 (Intermediate!3002 false resIndex!58 resX!58))))

(declare-fun b!324272 () Bool)

(declare-fun res!177759 () Bool)

(assert (=> b!324272 (=> (not res!177759) (not e!200179))))

(declare-fun arrayContainsKey!0 (array!16611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324272 (= res!177759 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324273 () Bool)

(declare-fun res!177762 () Bool)

(assert (=> b!324273 (=> (not res!177762) (not e!200179))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16611 (_ BitVec 32)) SeekEntryResult!3002)

(assert (=> b!324273 (= res!177762 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3002 i!1250)))))

(declare-fun b!324274 () Bool)

(declare-fun res!177766 () Bool)

(assert (=> b!324274 (=> (not res!177766) (not e!200179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324274 (= res!177766 (validKeyInArray!0 k!2497))))

(declare-fun b!324275 () Bool)

(declare-fun res!177768 () Bool)

(assert (=> b!324275 (=> (not res!177768) (not e!200179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16611 (_ BitVec 32)) Bool)

(assert (=> b!324275 (= res!177768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324276 () Bool)

(declare-fun res!177765 () Bool)

(assert (=> b!324276 (=> (not res!177765) (not e!200179))))

(assert (=> b!324276 (= res!177765 (and (= (size!8212 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8212 a!3305))))))

(declare-fun b!324277 () Bool)

(declare-fun res!177764 () Bool)

(assert (=> b!324277 (=> (not res!177764) (not e!200178))))

(assert (=> b!324277 (= res!177764 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7860 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324278 () Bool)

(declare-fun res!177763 () Bool)

(assert (=> b!324278 (=> (not res!177763) (not e!200178))))

(assert (=> b!324278 (= res!177763 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156769))))

(declare-fun b!324279 () Bool)

(assert (=> b!324279 (= e!200178 false)))

(declare-fun lt!156770 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324279 (= lt!156770 (nextIndex!0 index!1840 x!1490 mask!3777))))

(assert (= (and start!32476 res!177761) b!324276))

(assert (= (and b!324276 res!177765) b!324274))

(assert (= (and b!324274 res!177766) b!324272))

(assert (= (and b!324272 res!177759) b!324273))

(assert (= (and b!324273 res!177762) b!324275))

(assert (= (and b!324275 res!177768) b!324271))

(assert (= (and b!324271 res!177767) b!324270))

(assert (= (and b!324270 res!177760) b!324278))

(assert (= (and b!324278 res!177763) b!324277))

(assert (= (and b!324277 res!177764) b!324279))

(declare-fun m!331351 () Bool)

(assert (=> b!324270 m!331351))

(declare-fun m!331353 () Bool)

(assert (=> b!324278 m!331353))

(declare-fun m!331355 () Bool)

(assert (=> start!32476 m!331355))

(declare-fun m!331357 () Bool)

(assert (=> start!32476 m!331357))

(declare-fun m!331359 () Bool)

(assert (=> b!324275 m!331359))

(declare-fun m!331361 () Bool)

(assert (=> b!324273 m!331361))

(declare-fun m!331363 () Bool)

(assert (=> b!324277 m!331363))

(declare-fun m!331365 () Bool)

(assert (=> b!324272 m!331365))

(declare-fun m!331367 () Bool)

(assert (=> b!324279 m!331367))

(declare-fun m!331369 () Bool)

(assert (=> b!324271 m!331369))

(assert (=> b!324271 m!331369))

(declare-fun m!331371 () Bool)

(assert (=> b!324271 m!331371))

(declare-fun m!331373 () Bool)

(assert (=> b!324274 m!331373))

(push 1)

(assert (not start!32476))

(assert (not b!324273))

(assert (not b!324279))

(assert (not b!324275))

(assert (not b!324274))

(assert (not b!324278))

