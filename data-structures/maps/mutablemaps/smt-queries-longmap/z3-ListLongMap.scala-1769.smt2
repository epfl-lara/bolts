; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32270 () Bool)

(assert start!32270)

(declare-fun b!321184 () Bool)

(declare-fun res!175470 () Bool)

(declare-fun e!199048 () Bool)

(assert (=> b!321184 (=> (not res!175470) (not e!199048))))

(declare-datatypes ((array!16456 0))(
  ( (array!16457 (arr!7784 (Array (_ BitVec 32) (_ BitVec 64))) (size!8136 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16456)

(declare-datatypes ((SeekEntryResult!2926 0))(
  ( (MissingZero!2926 (index!13880 (_ BitVec 32))) (Found!2926 (index!13881 (_ BitVec 32))) (Intermediate!2926 (undefined!3738 Bool) (index!13882 (_ BitVec 32)) (x!32108 (_ BitVec 32))) (Undefined!2926) (MissingVacant!2926 (index!13883 (_ BitVec 32))) )
))
(declare-fun lt!156149 () SeekEntryResult!2926)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16456 (_ BitVec 32)) SeekEntryResult!2926)

(assert (=> b!321184 (= res!175470 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156149))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun b!321185 () Bool)

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321185 (= e!199048 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7784 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7784 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7784 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!321186 () Bool)

(declare-fun e!199046 () Bool)

(assert (=> b!321186 (= e!199046 e!199048)))

(declare-fun res!175464 () Bool)

(assert (=> b!321186 (=> (not res!175464) (not e!199048))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321186 (= res!175464 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156149))))

(assert (=> b!321186 (= lt!156149 (Intermediate!2926 false resIndex!58 resX!58))))

(declare-fun b!321187 () Bool)

(declare-fun res!175466 () Bool)

(assert (=> b!321187 (=> (not res!175466) (not e!199046))))

(declare-fun arrayContainsKey!0 (array!16456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321187 (= res!175466 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321188 () Bool)

(declare-fun res!175467 () Bool)

(assert (=> b!321188 (=> (not res!175467) (not e!199046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321188 (= res!175467 (validKeyInArray!0 k0!2497))))

(declare-fun b!321189 () Bool)

(declare-fun res!175469 () Bool)

(assert (=> b!321189 (=> (not res!175469) (not e!199046))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16456 (_ BitVec 32)) SeekEntryResult!2926)

(assert (=> b!321189 (= res!175469 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2926 i!1250)))))

(declare-fun b!321190 () Bool)

(declare-fun res!175462 () Bool)

(assert (=> b!321190 (=> (not res!175462) (not e!199048))))

(assert (=> b!321190 (= res!175462 (and (= (select (arr!7784 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8136 a!3305))))))

(declare-fun b!321191 () Bool)

(declare-fun res!175463 () Bool)

(assert (=> b!321191 (=> (not res!175463) (not e!199046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16456 (_ BitVec 32)) Bool)

(assert (=> b!321191 (= res!175463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321192 () Bool)

(declare-fun res!175465 () Bool)

(assert (=> b!321192 (=> (not res!175465) (not e!199046))))

(assert (=> b!321192 (= res!175465 (and (= (size!8136 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8136 a!3305))))))

(declare-fun res!175468 () Bool)

(assert (=> start!32270 (=> (not res!175468) (not e!199046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32270 (= res!175468 (validMask!0 mask!3777))))

(assert (=> start!32270 e!199046))

(declare-fun array_inv!5738 (array!16456) Bool)

(assert (=> start!32270 (array_inv!5738 a!3305)))

(assert (=> start!32270 true))

(assert (= (and start!32270 res!175468) b!321192))

(assert (= (and b!321192 res!175465) b!321188))

(assert (= (and b!321188 res!175467) b!321187))

(assert (= (and b!321187 res!175466) b!321189))

(assert (= (and b!321189 res!175469) b!321191))

(assert (= (and b!321191 res!175463) b!321186))

(assert (= (and b!321186 res!175464) b!321190))

(assert (= (and b!321190 res!175462) b!321184))

(assert (= (and b!321184 res!175470) b!321185))

(declare-fun m!329381 () Bool)

(assert (=> b!321185 m!329381))

(declare-fun m!329383 () Bool)

(assert (=> b!321187 m!329383))

(declare-fun m!329385 () Bool)

(assert (=> start!32270 m!329385))

(declare-fun m!329387 () Bool)

(assert (=> start!32270 m!329387))

(declare-fun m!329389 () Bool)

(assert (=> b!321186 m!329389))

(assert (=> b!321186 m!329389))

(declare-fun m!329391 () Bool)

(assert (=> b!321186 m!329391))

(declare-fun m!329393 () Bool)

(assert (=> b!321184 m!329393))

(declare-fun m!329395 () Bool)

(assert (=> b!321189 m!329395))

(declare-fun m!329397 () Bool)

(assert (=> b!321188 m!329397))

(declare-fun m!329399 () Bool)

(assert (=> b!321190 m!329399))

(declare-fun m!329401 () Bool)

(assert (=> b!321191 m!329401))

(check-sat (not b!321188) (not b!321187) (not b!321186) (not b!321191) (not b!321184) (not start!32270) (not b!321189))
(check-sat)
