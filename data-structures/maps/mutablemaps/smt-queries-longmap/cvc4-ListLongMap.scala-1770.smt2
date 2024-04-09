; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32278 () Bool)

(assert start!32278)

(declare-fun b!321292 () Bool)

(declare-fun res!175572 () Bool)

(declare-fun e!199084 () Bool)

(assert (=> b!321292 (=> (not res!175572) (not e!199084))))

(declare-datatypes ((array!16464 0))(
  ( (array!16465 (arr!7788 (Array (_ BitVec 32) (_ BitVec 64))) (size!8140 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16464)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321292 (= res!175572 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321293 () Bool)

(declare-fun res!175571 () Bool)

(assert (=> b!321293 (=> (not res!175571) (not e!199084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321293 (= res!175571 (validKeyInArray!0 k!2497))))

(declare-fun b!321294 () Bool)

(declare-fun res!175573 () Bool)

(declare-fun e!199082 () Bool)

(assert (=> b!321294 (=> (not res!175573) (not e!199082))))

(declare-datatypes ((SeekEntryResult!2930 0))(
  ( (MissingZero!2930 (index!13896 (_ BitVec 32))) (Found!2930 (index!13897 (_ BitVec 32))) (Intermediate!2930 (undefined!3742 Bool) (index!13898 (_ BitVec 32)) (x!32120 (_ BitVec 32))) (Undefined!2930) (MissingVacant!2930 (index!13899 (_ BitVec 32))) )
))
(declare-fun lt!156161 () SeekEntryResult!2930)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16464 (_ BitVec 32)) SeekEntryResult!2930)

(assert (=> b!321294 (= res!175573 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156161))))

(declare-fun b!321295 () Bool)

(declare-fun res!175574 () Bool)

(assert (=> b!321295 (=> (not res!175574) (not e!199084))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16464 (_ BitVec 32)) SeekEntryResult!2930)

(assert (=> b!321295 (= res!175574 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2930 i!1250)))))

(declare-fun b!321296 () Bool)

(declare-fun res!175578 () Bool)

(assert (=> b!321296 (=> (not res!175578) (not e!199084))))

(assert (=> b!321296 (= res!175578 (and (= (size!8140 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8140 a!3305))))))

(declare-fun res!175577 () Bool)

(assert (=> start!32278 (=> (not res!175577) (not e!199084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32278 (= res!175577 (validMask!0 mask!3777))))

(assert (=> start!32278 e!199084))

(declare-fun array_inv!5742 (array!16464) Bool)

(assert (=> start!32278 (array_inv!5742 a!3305)))

(assert (=> start!32278 true))

(declare-fun b!321297 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321297 (= e!199082 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7788 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7788 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7788 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!321298 () Bool)

(declare-fun res!175570 () Bool)

(assert (=> b!321298 (=> (not res!175570) (not e!199084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16464 (_ BitVec 32)) Bool)

(assert (=> b!321298 (= res!175570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321299 () Bool)

(declare-fun res!175576 () Bool)

(assert (=> b!321299 (=> (not res!175576) (not e!199082))))

(assert (=> b!321299 (= res!175576 (and (= (select (arr!7788 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8140 a!3305))))))

(declare-fun b!321300 () Bool)

(assert (=> b!321300 (= e!199084 e!199082)))

(declare-fun res!175575 () Bool)

(assert (=> b!321300 (=> (not res!175575) (not e!199082))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321300 (= res!175575 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156161))))

(assert (=> b!321300 (= lt!156161 (Intermediate!2930 false resIndex!58 resX!58))))

(assert (= (and start!32278 res!175577) b!321296))

(assert (= (and b!321296 res!175578) b!321293))

(assert (= (and b!321293 res!175571) b!321292))

(assert (= (and b!321292 res!175572) b!321295))

(assert (= (and b!321295 res!175574) b!321298))

(assert (= (and b!321298 res!175570) b!321300))

(assert (= (and b!321300 res!175575) b!321299))

(assert (= (and b!321299 res!175576) b!321294))

(assert (= (and b!321294 res!175573) b!321297))

(declare-fun m!329469 () Bool)

(assert (=> b!321299 m!329469))

(declare-fun m!329471 () Bool)

(assert (=> b!321300 m!329471))

(assert (=> b!321300 m!329471))

(declare-fun m!329473 () Bool)

(assert (=> b!321300 m!329473))

(declare-fun m!329475 () Bool)

(assert (=> b!321295 m!329475))

(declare-fun m!329477 () Bool)

(assert (=> b!321293 m!329477))

(declare-fun m!329479 () Bool)

(assert (=> b!321297 m!329479))

(declare-fun m!329481 () Bool)

(assert (=> b!321294 m!329481))

(declare-fun m!329483 () Bool)

(assert (=> b!321298 m!329483))

(declare-fun m!329485 () Bool)

(assert (=> start!32278 m!329485))

(declare-fun m!329487 () Bool)

(assert (=> start!32278 m!329487))

(declare-fun m!329489 () Bool)

(assert (=> b!321292 m!329489))

(push 1)

(assert (not b!321294))

(assert (not b!321295))

(assert (not b!321292))

(assert (not b!321298))

(assert (not b!321300))

(assert (not start!32278))

(assert (not b!321293))

