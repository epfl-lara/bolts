; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33230 () Bool)

(assert start!33230)

(declare-fun b!330255 () Bool)

(declare-datatypes ((Unit!10287 0))(
  ( (Unit!10288) )
))
(declare-fun e!202727 () Unit!10287)

(declare-fun Unit!10289 () Unit!10287)

(assert (=> b!330255 (= e!202727 Unit!10289)))

(declare-fun b!330256 () Bool)

(declare-fun res!182075 () Bool)

(declare-fun e!202732 () Bool)

(assert (=> b!330256 (=> (not res!182075) (not e!202732))))

(declare-datatypes ((array!16885 0))(
  ( (array!16886 (arr!7982 (Array (_ BitVec 32) (_ BitVec 64))) (size!8334 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16885)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330256 (= res!182075 (and (= (size!8334 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8334 a!3305))))))

(declare-fun b!330257 () Bool)

(declare-fun res!182077 () Bool)

(assert (=> b!330257 (=> (not res!182077) (not e!202732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16885 (_ BitVec 32)) Bool)

(assert (=> b!330257 (= res!182077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330258 () Bool)

(declare-fun res!182070 () Bool)

(assert (=> b!330258 (=> (not res!182070) (not e!202732))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3124 0))(
  ( (MissingZero!3124 (index!14672 (_ BitVec 32))) (Found!3124 (index!14673 (_ BitVec 32))) (Intermediate!3124 (undefined!3936 Bool) (index!14674 (_ BitVec 32)) (x!32918 (_ BitVec 32))) (Undefined!3124) (MissingVacant!3124 (index!14675 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16885 (_ BitVec 32)) SeekEntryResult!3124)

(assert (=> b!330258 (= res!182070 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3124 i!1250)))))

(declare-fun b!330259 () Bool)

(declare-fun e!202728 () Unit!10287)

(declare-fun Unit!10290 () Unit!10287)

(assert (=> b!330259 (= e!202728 Unit!10290)))

(assert (=> b!330259 false))

(declare-fun res!182073 () Bool)

(assert (=> start!33230 (=> (not res!182073) (not e!202732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33230 (= res!182073 (validMask!0 mask!3777))))

(assert (=> start!33230 e!202732))

(declare-fun array_inv!5936 (array!16885) Bool)

(assert (=> start!33230 (array_inv!5936 a!3305)))

(assert (=> start!33230 true))

(declare-fun b!330260 () Bool)

(declare-fun res!182072 () Bool)

(declare-fun e!202729 () Bool)

(assert (=> b!330260 (=> (not res!182072) (not e!202729))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!330260 (= res!182072 (and (= (select (arr!7982 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8334 a!3305))))))

(declare-fun b!330261 () Bool)

(assert (=> b!330261 (= e!202729 (not true))))

(assert (=> b!330261 (= index!1840 resIndex!58)))

(declare-fun lt!158477 () Unit!10287)

(assert (=> b!330261 (= lt!158477 e!202727)))

(declare-fun c!51736 () Bool)

(assert (=> b!330261 (= c!51736 (not (= resIndex!58 index!1840)))))

(declare-fun b!330262 () Bool)

(assert (=> b!330262 (= e!202732 e!202729)))

(declare-fun res!182071 () Bool)

(assert (=> b!330262 (=> (not res!182071) (not e!202729))))

(declare-fun lt!158475 () SeekEntryResult!3124)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16885 (_ BitVec 32)) SeekEntryResult!3124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330262 (= res!182071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158475))))

(assert (=> b!330262 (= lt!158475 (Intermediate!3124 false resIndex!58 resX!58))))

(declare-fun b!330263 () Bool)

(assert (=> b!330263 false))

(declare-fun lt!158476 () Unit!10287)

(assert (=> b!330263 (= lt!158476 e!202728)))

(declare-fun c!51737 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330263 (= c!51737 ((_ is Intermediate!3124) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!202731 () Unit!10287)

(declare-fun Unit!10291 () Unit!10287)

(assert (=> b!330263 (= e!202731 Unit!10291)))

(declare-fun b!330264 () Bool)

(declare-fun res!182078 () Bool)

(assert (=> b!330264 (=> (not res!182078) (not e!202732))))

(declare-fun arrayContainsKey!0 (array!16885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330264 (= res!182078 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330265 () Bool)

(assert (=> b!330265 (= e!202727 e!202731)))

(declare-fun c!51735 () Bool)

(assert (=> b!330265 (= c!51735 (or (= (select (arr!7982 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7982 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330266 () Bool)

(declare-fun res!182079 () Bool)

(assert (=> b!330266 (=> (not res!182079) (not e!202729))))

(assert (=> b!330266 (= res!182079 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158475))))

(declare-fun b!330267 () Bool)

(assert (=> b!330267 false))

(declare-fun Unit!10292 () Unit!10287)

(assert (=> b!330267 (= e!202731 Unit!10292)))

(declare-fun b!330268 () Bool)

(declare-fun res!182074 () Bool)

(assert (=> b!330268 (=> (not res!182074) (not e!202729))))

(assert (=> b!330268 (= res!182074 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7982 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!330269 () Bool)

(declare-fun res!182076 () Bool)

(assert (=> b!330269 (=> (not res!182076) (not e!202732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330269 (= res!182076 (validKeyInArray!0 k0!2497))))

(declare-fun b!330270 () Bool)

(declare-fun Unit!10293 () Unit!10287)

(assert (=> b!330270 (= e!202728 Unit!10293)))

(assert (= (and start!33230 res!182073) b!330256))

(assert (= (and b!330256 res!182075) b!330269))

(assert (= (and b!330269 res!182076) b!330264))

(assert (= (and b!330264 res!182078) b!330258))

(assert (= (and b!330258 res!182070) b!330257))

(assert (= (and b!330257 res!182077) b!330262))

(assert (= (and b!330262 res!182071) b!330260))

(assert (= (and b!330260 res!182072) b!330266))

(assert (= (and b!330266 res!182079) b!330268))

(assert (= (and b!330268 res!182074) b!330261))

(assert (= (and b!330261 c!51736) b!330265))

(assert (= (and b!330261 (not c!51736)) b!330255))

(assert (= (and b!330265 c!51735) b!330267))

(assert (= (and b!330265 (not c!51735)) b!330263))

(assert (= (and b!330263 c!51737) b!330270))

(assert (= (and b!330263 (not c!51737)) b!330259))

(declare-fun m!335523 () Bool)

(assert (=> b!330262 m!335523))

(assert (=> b!330262 m!335523))

(declare-fun m!335525 () Bool)

(assert (=> b!330262 m!335525))

(declare-fun m!335527 () Bool)

(assert (=> b!330257 m!335527))

(declare-fun m!335529 () Bool)

(assert (=> b!330264 m!335529))

(declare-fun m!335531 () Bool)

(assert (=> b!330269 m!335531))

(declare-fun m!335533 () Bool)

(assert (=> start!33230 m!335533))

(declare-fun m!335535 () Bool)

(assert (=> start!33230 m!335535))

(declare-fun m!335537 () Bool)

(assert (=> b!330266 m!335537))

(declare-fun m!335539 () Bool)

(assert (=> b!330260 m!335539))

(declare-fun m!335541 () Bool)

(assert (=> b!330258 m!335541))

(declare-fun m!335543 () Bool)

(assert (=> b!330263 m!335543))

(assert (=> b!330263 m!335543))

(declare-fun m!335545 () Bool)

(assert (=> b!330263 m!335545))

(declare-fun m!335547 () Bool)

(assert (=> b!330265 m!335547))

(assert (=> b!330268 m!335547))

(check-sat (not start!33230) (not b!330266) (not b!330258) (not b!330257) (not b!330269) (not b!330263) (not b!330262) (not b!330264))
(check-sat)
