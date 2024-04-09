; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32522 () Bool)

(assert start!32522)

(declare-fun b!324960 () Bool)

(declare-fun res!178453 () Bool)

(declare-fun e!200386 () Bool)

(assert (=> b!324960 (=> (not res!178453) (not e!200386))))

(declare-datatypes ((array!16657 0))(
  ( (array!16658 (arr!7883 (Array (_ BitVec 32) (_ BitVec 64))) (size!8235 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16657)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324960 (= res!178453 (and (= (size!8235 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8235 a!3305))))))

(declare-fun res!178451 () Bool)

(assert (=> start!32522 (=> (not res!178451) (not e!200386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32522 (= res!178451 (validMask!0 mask!3777))))

(assert (=> start!32522 e!200386))

(declare-fun array_inv!5837 (array!16657) Bool)

(assert (=> start!32522 (array_inv!5837 a!3305)))

(assert (=> start!32522 true))

(declare-fun b!324961 () Bool)

(declare-fun e!200385 () Bool)

(assert (=> b!324961 (= e!200386 e!200385)))

(declare-fun res!178455 () Bool)

(assert (=> b!324961 (=> (not res!178455) (not e!200385))))

(declare-datatypes ((SeekEntryResult!3025 0))(
  ( (MissingZero!3025 (index!14276 (_ BitVec 32))) (Found!3025 (index!14277 (_ BitVec 32))) (Intermediate!3025 (undefined!3837 Bool) (index!14278 (_ BitVec 32)) (x!32480 (_ BitVec 32))) (Undefined!3025) (MissingVacant!3025 (index!14279 (_ BitVec 32))) )
))
(declare-fun lt!156907 () SeekEntryResult!3025)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16657 (_ BitVec 32)) SeekEntryResult!3025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324961 (= res!178455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156907))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324961 (= lt!156907 (Intermediate!3025 false resIndex!58 resX!58))))

(declare-fun b!324962 () Bool)

(declare-fun res!178449 () Bool)

(assert (=> b!324962 (=> (not res!178449) (not e!200385))))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!324962 (= res!178449 (and (= (select (arr!7883 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8235 a!3305))))))

(declare-fun b!324963 () Bool)

(declare-fun res!178452 () Bool)

(assert (=> b!324963 (=> (not res!178452) (not e!200386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16657 (_ BitVec 32)) Bool)

(assert (=> b!324963 (= res!178452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324964 () Bool)

(declare-fun res!178458 () Bool)

(assert (=> b!324964 (=> (not res!178458) (not e!200386))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16657 (_ BitVec 32)) SeekEntryResult!3025)

(assert (=> b!324964 (= res!178458 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3025 i!1250)))))

(declare-fun b!324965 () Bool)

(declare-fun res!178457 () Bool)

(assert (=> b!324965 (=> (not res!178457) (not e!200386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324965 (= res!178457 (validKeyInArray!0 k0!2497))))

(declare-fun b!324966 () Bool)

(declare-fun res!178450 () Bool)

(assert (=> b!324966 (=> (not res!178450) (not e!200385))))

(assert (=> b!324966 (= res!178450 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7883 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324967 () Bool)

(declare-fun res!178454 () Bool)

(assert (=> b!324967 (=> (not res!178454) (not e!200386))))

(declare-fun arrayContainsKey!0 (array!16657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324967 (= res!178454 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324968 () Bool)

(assert (=> b!324968 (= e!200385 false)))

(declare-fun lt!156908 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324968 (= lt!156908 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324969 () Bool)

(declare-fun res!178456 () Bool)

(assert (=> b!324969 (=> (not res!178456) (not e!200385))))

(assert (=> b!324969 (= res!178456 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156907))))

(assert (= (and start!32522 res!178451) b!324960))

(assert (= (and b!324960 res!178453) b!324965))

(assert (= (and b!324965 res!178457) b!324967))

(assert (= (and b!324967 res!178454) b!324964))

(assert (= (and b!324964 res!178458) b!324963))

(assert (= (and b!324963 res!178452) b!324961))

(assert (= (and b!324961 res!178455) b!324962))

(assert (= (and b!324962 res!178449) b!324969))

(assert (= (and b!324969 res!178456) b!324966))

(assert (= (and b!324966 res!178450) b!324968))

(declare-fun m!331903 () Bool)

(assert (=> b!324964 m!331903))

(declare-fun m!331905 () Bool)

(assert (=> b!324966 m!331905))

(declare-fun m!331907 () Bool)

(assert (=> b!324969 m!331907))

(declare-fun m!331909 () Bool)

(assert (=> b!324968 m!331909))

(declare-fun m!331911 () Bool)

(assert (=> b!324965 m!331911))

(declare-fun m!331913 () Bool)

(assert (=> start!32522 m!331913))

(declare-fun m!331915 () Bool)

(assert (=> start!32522 m!331915))

(declare-fun m!331917 () Bool)

(assert (=> b!324961 m!331917))

(assert (=> b!324961 m!331917))

(declare-fun m!331919 () Bool)

(assert (=> b!324961 m!331919))

(declare-fun m!331921 () Bool)

(assert (=> b!324962 m!331921))

(declare-fun m!331923 () Bool)

(assert (=> b!324967 m!331923))

(declare-fun m!331925 () Bool)

(assert (=> b!324963 m!331925))

(check-sat (not b!324968) (not start!32522) (not b!324964) (not b!324969) (not b!324963) (not b!324967) (not b!324961) (not b!324965))
(check-sat)
