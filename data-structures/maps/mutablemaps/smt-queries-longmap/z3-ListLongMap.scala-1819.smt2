; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32732 () Bool)

(assert start!32732)

(declare-fun b!326958 () Bool)

(declare-fun res!180155 () Bool)

(declare-fun e!201132 () Bool)

(assert (=> b!326958 (=> (not res!180155) (not e!201132))))

(declare-datatypes ((array!16765 0))(
  ( (array!16766 (arr!7934 (Array (_ BitVec 32) (_ BitVec 64))) (size!8286 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16765)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3076 0))(
  ( (MissingZero!3076 (index!14480 (_ BitVec 32))) (Found!3076 (index!14481 (_ BitVec 32))) (Intermediate!3076 (undefined!3888 Bool) (index!14482 (_ BitVec 32)) (x!32685 (_ BitVec 32))) (Undefined!3076) (MissingVacant!3076 (index!14483 (_ BitVec 32))) )
))
(declare-fun lt!157430 () SeekEntryResult!3076)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16765 (_ BitVec 32)) SeekEntryResult!3076)

(assert (=> b!326958 (= res!180155 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157430))))

(declare-fun b!326959 () Bool)

(declare-fun e!201133 () Bool)

(assert (=> b!326959 (= e!201133 e!201132)))

(declare-fun res!180147 () Bool)

(assert (=> b!326959 (=> (not res!180147) (not e!201132))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326959 (= res!180147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157430))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326959 (= lt!157430 (Intermediate!3076 false resIndex!58 resX!58))))

(declare-fun b!326960 () Bool)

(declare-fun res!180151 () Bool)

(assert (=> b!326960 (=> (not res!180151) (not e!201133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16765 (_ BitVec 32)) Bool)

(assert (=> b!326960 (= res!180151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326961 () Bool)

(declare-fun res!180154 () Bool)

(assert (=> b!326961 (=> (not res!180154) (not e!201133))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16765 (_ BitVec 32)) SeekEntryResult!3076)

(assert (=> b!326961 (= res!180154 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3076 i!1250)))))

(declare-fun b!326962 () Bool)

(declare-fun res!180156 () Bool)

(assert (=> b!326962 (=> (not res!180156) (not e!201132))))

(assert (=> b!326962 (= res!180156 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7934 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326963 () Bool)

(declare-fun res!180150 () Bool)

(assert (=> b!326963 (=> (not res!180150) (not e!201132))))

(assert (=> b!326963 (= res!180150 (and (= (select (arr!7934 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8286 a!3305))))))

(declare-fun b!326964 () Bool)

(declare-fun res!180153 () Bool)

(assert (=> b!326964 (=> (not res!180153) (not e!201133))))

(assert (=> b!326964 (= res!180153 (and (= (size!8286 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8286 a!3305))))))

(declare-fun res!180148 () Bool)

(assert (=> start!32732 (=> (not res!180148) (not e!201133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32732 (= res!180148 (validMask!0 mask!3777))))

(assert (=> start!32732 e!201133))

(declare-fun array_inv!5888 (array!16765) Bool)

(assert (=> start!32732 (array_inv!5888 a!3305)))

(assert (=> start!32732 true))

(declare-fun b!326965 () Bool)

(declare-fun res!180152 () Bool)

(assert (=> b!326965 (=> (not res!180152) (not e!201133))))

(declare-fun arrayContainsKey!0 (array!16765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326965 (= res!180152 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326966 () Bool)

(declare-fun res!180149 () Bool)

(assert (=> b!326966 (=> (not res!180149) (not e!201133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326966 (= res!180149 (validKeyInArray!0 k0!2497))))

(declare-fun b!326967 () Bool)

(assert (=> b!326967 (= e!201132 false)))

(declare-datatypes ((Unit!10161 0))(
  ( (Unit!10162) )
))
(declare-fun lt!157429 () Unit!10161)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16765 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10161)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326967 (= lt!157429 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(assert (= (and start!32732 res!180148) b!326964))

(assert (= (and b!326964 res!180153) b!326966))

(assert (= (and b!326966 res!180149) b!326965))

(assert (= (and b!326965 res!180152) b!326961))

(assert (= (and b!326961 res!180154) b!326960))

(assert (= (and b!326960 res!180151) b!326959))

(assert (= (and b!326959 res!180147) b!326963))

(assert (= (and b!326963 res!180150) b!326958))

(assert (= (and b!326958 res!180155) b!326962))

(assert (= (and b!326962 res!180156) b!326967))

(declare-fun m!333453 () Bool)

(assert (=> b!326959 m!333453))

(assert (=> b!326959 m!333453))

(declare-fun m!333455 () Bool)

(assert (=> b!326959 m!333455))

(declare-fun m!333457 () Bool)

(assert (=> b!326965 m!333457))

(declare-fun m!333459 () Bool)

(assert (=> start!32732 m!333459))

(declare-fun m!333461 () Bool)

(assert (=> start!32732 m!333461))

(declare-fun m!333463 () Bool)

(assert (=> b!326967 m!333463))

(assert (=> b!326967 m!333463))

(declare-fun m!333465 () Bool)

(assert (=> b!326967 m!333465))

(declare-fun m!333467 () Bool)

(assert (=> b!326958 m!333467))

(declare-fun m!333469 () Bool)

(assert (=> b!326963 m!333469))

(declare-fun m!333471 () Bool)

(assert (=> b!326962 m!333471))

(declare-fun m!333473 () Bool)

(assert (=> b!326961 m!333473))

(declare-fun m!333475 () Bool)

(assert (=> b!326966 m!333475))

(declare-fun m!333477 () Bool)

(assert (=> b!326960 m!333477))

(check-sat (not b!326967) (not start!32732) (not b!326960) (not b!326958) (not b!326965) (not b!326966) (not b!326961) (not b!326959))
(check-sat)
