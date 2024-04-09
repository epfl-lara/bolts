; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32684 () Bool)

(assert start!32684)

(declare-fun b!326238 () Bool)

(declare-fun res!179432 () Bool)

(declare-fun e!200917 () Bool)

(assert (=> b!326238 (=> (not res!179432) (not e!200917))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326238 (= res!179432 (validKeyInArray!0 k0!2497))))

(declare-fun b!326239 () Bool)

(declare-fun res!179431 () Bool)

(assert (=> b!326239 (=> (not res!179431) (not e!200917))))

(declare-datatypes ((array!16717 0))(
  ( (array!16718 (arr!7910 (Array (_ BitVec 32) (_ BitVec 64))) (size!8262 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16717)

(declare-fun arrayContainsKey!0 (array!16717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326239 (= res!179431 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!179427 () Bool)

(assert (=> start!32684 (=> (not res!179427) (not e!200917))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32684 (= res!179427 (validMask!0 mask!3777))))

(assert (=> start!32684 e!200917))

(declare-fun array_inv!5864 (array!16717) Bool)

(assert (=> start!32684 (array_inv!5864 a!3305)))

(assert (=> start!32684 true))

(declare-fun b!326240 () Bool)

(declare-fun e!200915 () Bool)

(assert (=> b!326240 (= e!200917 e!200915)))

(declare-fun res!179435 () Bool)

(assert (=> b!326240 (=> (not res!179435) (not e!200915))))

(declare-datatypes ((SeekEntryResult!3052 0))(
  ( (MissingZero!3052 (index!14384 (_ BitVec 32))) (Found!3052 (index!14385 (_ BitVec 32))) (Intermediate!3052 (undefined!3864 Bool) (index!14386 (_ BitVec 32)) (x!32597 (_ BitVec 32))) (Undefined!3052) (MissingVacant!3052 (index!14387 (_ BitVec 32))) )
))
(declare-fun lt!157286 () SeekEntryResult!3052)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16717 (_ BitVec 32)) SeekEntryResult!3052)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326240 (= res!179435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157286))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326240 (= lt!157286 (Intermediate!3052 false resIndex!58 resX!58))))

(declare-fun b!326241 () Bool)

(declare-fun res!179428 () Bool)

(assert (=> b!326241 (=> (not res!179428) (not e!200915))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326241 (= res!179428 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7910 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326242 () Bool)

(declare-fun res!179436 () Bool)

(assert (=> b!326242 (=> (not res!179436) (not e!200917))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326242 (= res!179436 (and (= (size!8262 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8262 a!3305))))))

(declare-fun b!326243 () Bool)

(declare-fun res!179434 () Bool)

(assert (=> b!326243 (=> (not res!179434) (not e!200917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16717 (_ BitVec 32)) Bool)

(assert (=> b!326243 (= res!179434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326244 () Bool)

(assert (=> b!326244 (= e!200915 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10113 0))(
  ( (Unit!10114) )
))
(declare-fun lt!157285 () Unit!10113)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16717 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10113)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326244 (= lt!157285 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326245 () Bool)

(declare-fun res!179430 () Bool)

(assert (=> b!326245 (=> (not res!179430) (not e!200915))))

(assert (=> b!326245 (= res!179430 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157286))))

(declare-fun b!326246 () Bool)

(declare-fun res!179429 () Bool)

(assert (=> b!326246 (=> (not res!179429) (not e!200917))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16717 (_ BitVec 32)) SeekEntryResult!3052)

(assert (=> b!326246 (= res!179429 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3052 i!1250)))))

(declare-fun b!326247 () Bool)

(declare-fun res!179433 () Bool)

(assert (=> b!326247 (=> (not res!179433) (not e!200915))))

(assert (=> b!326247 (= res!179433 (and (= (select (arr!7910 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8262 a!3305))))))

(assert (= (and start!32684 res!179427) b!326242))

(assert (= (and b!326242 res!179436) b!326238))

(assert (= (and b!326238 res!179432) b!326239))

(assert (= (and b!326239 res!179431) b!326246))

(assert (= (and b!326246 res!179429) b!326243))

(assert (= (and b!326243 res!179434) b!326240))

(assert (= (and b!326240 res!179435) b!326247))

(assert (= (and b!326247 res!179433) b!326245))

(assert (= (and b!326245 res!179430) b!326241))

(assert (= (and b!326241 res!179428) b!326244))

(declare-fun m!332829 () Bool)

(assert (=> b!326247 m!332829))

(declare-fun m!332831 () Bool)

(assert (=> start!32684 m!332831))

(declare-fun m!332833 () Bool)

(assert (=> start!32684 m!332833))

(declare-fun m!332835 () Bool)

(assert (=> b!326245 m!332835))

(declare-fun m!332837 () Bool)

(assert (=> b!326238 m!332837))

(declare-fun m!332839 () Bool)

(assert (=> b!326243 m!332839))

(declare-fun m!332841 () Bool)

(assert (=> b!326246 m!332841))

(declare-fun m!332843 () Bool)

(assert (=> b!326241 m!332843))

(declare-fun m!332845 () Bool)

(assert (=> b!326244 m!332845))

(assert (=> b!326244 m!332845))

(declare-fun m!332847 () Bool)

(assert (=> b!326244 m!332847))

(declare-fun m!332849 () Bool)

(assert (=> b!326239 m!332849))

(declare-fun m!332851 () Bool)

(assert (=> b!326240 m!332851))

(assert (=> b!326240 m!332851))

(declare-fun m!332853 () Bool)

(assert (=> b!326240 m!332853))

(check-sat (not b!326240) (not b!326244) (not b!326245) (not b!326246) (not b!326238) (not b!326243) (not start!32684) (not b!326239))
(check-sat)
