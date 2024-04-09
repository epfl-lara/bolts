; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46776 () Bool)

(assert start!46776)

(declare-fun b!516307 () Bool)

(declare-fun res!316028 () Bool)

(declare-fun e!301324 () Bool)

(assert (=> b!516307 (=> (not res!316028) (not e!301324))))

(declare-datatypes ((array!33048 0))(
  ( (array!33049 (arr!15889 (Array (_ BitVec 32) (_ BitVec 64))) (size!16253 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33048)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516307 (= res!316028 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516309 () Bool)

(declare-fun e!301323 () Bool)

(declare-fun e!301327 () Bool)

(assert (=> b!516309 (= e!301323 (not e!301327))))

(declare-fun res!316025 () Bool)

(assert (=> b!516309 (=> res!316025 e!301327)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4363 0))(
  ( (MissingZero!4363 (index!19640 (_ BitVec 32))) (Found!4363 (index!19641 (_ BitVec 32))) (Intermediate!4363 (undefined!5175 Bool) (index!19642 (_ BitVec 32)) (x!48625 (_ BitVec 32))) (Undefined!4363) (MissingVacant!4363 (index!19643 (_ BitVec 32))) )
))
(declare-fun lt!236410 () SeekEntryResult!4363)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236411 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33048 (_ BitVec 32)) SeekEntryResult!4363)

(assert (=> b!516309 (= res!316025 (= lt!236410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236411 (select (store (arr!15889 a!3235) i!1204 k0!2280) j!176) (array!33049 (store (arr!15889 a!3235) i!1204 k0!2280) (size!16253 a!3235)) mask!3524)))))

(declare-fun lt!236409 () (_ BitVec 32))

(assert (=> b!516309 (= lt!236410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236409 (select (arr!15889 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516309 (= lt!236411 (toIndex!0 (select (store (arr!15889 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516309 (= lt!236409 (toIndex!0 (select (arr!15889 a!3235) j!176) mask!3524))))

(declare-fun e!301325 () Bool)

(assert (=> b!516309 e!301325))

(declare-fun res!316031 () Bool)

(assert (=> b!516309 (=> (not res!316031) (not e!301325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33048 (_ BitVec 32)) Bool)

(assert (=> b!516309 (= res!316031 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15976 0))(
  ( (Unit!15977) )
))
(declare-fun lt!236408 () Unit!15976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15976)

(assert (=> b!516309 (= lt!236408 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516310 () Bool)

(assert (=> b!516310 (= e!301324 e!301323)))

(declare-fun res!316023 () Bool)

(assert (=> b!516310 (=> (not res!316023) (not e!301323))))

(declare-fun lt!236407 () SeekEntryResult!4363)

(assert (=> b!516310 (= res!316023 (or (= lt!236407 (MissingZero!4363 i!1204)) (= lt!236407 (MissingVacant!4363 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33048 (_ BitVec 32)) SeekEntryResult!4363)

(assert (=> b!516310 (= lt!236407 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516311 () Bool)

(declare-fun res!316030 () Bool)

(assert (=> b!516311 (=> (not res!316030) (not e!301324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516311 (= res!316030 (validKeyInArray!0 (select (arr!15889 a!3235) j!176)))))

(declare-fun b!516312 () Bool)

(declare-fun res!316026 () Bool)

(assert (=> b!516312 (=> (not res!316026) (not e!301324))))

(assert (=> b!516312 (= res!316026 (and (= (size!16253 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16253 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16253 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516313 () Bool)

(declare-fun res!316022 () Bool)

(assert (=> b!516313 (=> res!316022 e!301327)))

(get-info :version)

(assert (=> b!516313 (= res!316022 (or (undefined!5175 lt!236410) (not ((_ is Intermediate!4363) lt!236410))))))

(declare-fun b!516314 () Bool)

(declare-fun res!316021 () Bool)

(assert (=> b!516314 (=> (not res!316021) (not e!301324))))

(assert (=> b!516314 (= res!316021 (validKeyInArray!0 k0!2280))))

(declare-fun b!516315 () Bool)

(declare-fun res!316024 () Bool)

(assert (=> b!516315 (=> (not res!316024) (not e!301323))))

(assert (=> b!516315 (= res!316024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516308 () Bool)

(declare-fun res!316029 () Bool)

(assert (=> b!516308 (=> (not res!316029) (not e!301323))))

(declare-datatypes ((List!10100 0))(
  ( (Nil!10097) (Cons!10096 (h!10994 (_ BitVec 64)) (t!16336 List!10100)) )
))
(declare-fun arrayNoDuplicates!0 (array!33048 (_ BitVec 32) List!10100) Bool)

(assert (=> b!516308 (= res!316029 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10097))))

(declare-fun res!316027 () Bool)

(assert (=> start!46776 (=> (not res!316027) (not e!301324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46776 (= res!316027 (validMask!0 mask!3524))))

(assert (=> start!46776 e!301324))

(assert (=> start!46776 true))

(declare-fun array_inv!11663 (array!33048) Bool)

(assert (=> start!46776 (array_inv!11663 a!3235)))

(declare-fun b!516316 () Bool)

(assert (=> b!516316 (= e!301325 (= (seekEntryOrOpen!0 (select (arr!15889 a!3235) j!176) a!3235 mask!3524) (Found!4363 j!176)))))

(declare-fun b!516317 () Bool)

(assert (=> b!516317 (= e!301327 true)))

(assert (=> b!516317 (and (bvslt (x!48625 lt!236410) #b01111111111111111111111111111110) (or (= (select (arr!15889 a!3235) (index!19642 lt!236410)) (select (arr!15889 a!3235) j!176)) (= (select (arr!15889 a!3235) (index!19642 lt!236410)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15889 a!3235) (index!19642 lt!236410)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46776 res!316027) b!516312))

(assert (= (and b!516312 res!316026) b!516311))

(assert (= (and b!516311 res!316030) b!516314))

(assert (= (and b!516314 res!316021) b!516307))

(assert (= (and b!516307 res!316028) b!516310))

(assert (= (and b!516310 res!316023) b!516315))

(assert (= (and b!516315 res!316024) b!516308))

(assert (= (and b!516308 res!316029) b!516309))

(assert (= (and b!516309 res!316031) b!516316))

(assert (= (and b!516309 (not res!316025)) b!516313))

(assert (= (and b!516313 (not res!316022)) b!516317))

(declare-fun m!497841 () Bool)

(assert (=> start!46776 m!497841))

(declare-fun m!497843 () Bool)

(assert (=> start!46776 m!497843))

(declare-fun m!497845 () Bool)

(assert (=> b!516309 m!497845))

(declare-fun m!497847 () Bool)

(assert (=> b!516309 m!497847))

(declare-fun m!497849 () Bool)

(assert (=> b!516309 m!497849))

(declare-fun m!497851 () Bool)

(assert (=> b!516309 m!497851))

(declare-fun m!497853 () Bool)

(assert (=> b!516309 m!497853))

(assert (=> b!516309 m!497851))

(declare-fun m!497855 () Bool)

(assert (=> b!516309 m!497855))

(assert (=> b!516309 m!497851))

(declare-fun m!497857 () Bool)

(assert (=> b!516309 m!497857))

(assert (=> b!516309 m!497849))

(declare-fun m!497859 () Bool)

(assert (=> b!516309 m!497859))

(assert (=> b!516309 m!497849))

(declare-fun m!497861 () Bool)

(assert (=> b!516309 m!497861))

(declare-fun m!497863 () Bool)

(assert (=> b!516315 m!497863))

(declare-fun m!497865 () Bool)

(assert (=> b!516317 m!497865))

(assert (=> b!516317 m!497851))

(declare-fun m!497867 () Bool)

(assert (=> b!516308 m!497867))

(declare-fun m!497869 () Bool)

(assert (=> b!516310 m!497869))

(assert (=> b!516316 m!497851))

(assert (=> b!516316 m!497851))

(declare-fun m!497871 () Bool)

(assert (=> b!516316 m!497871))

(assert (=> b!516311 m!497851))

(assert (=> b!516311 m!497851))

(declare-fun m!497873 () Bool)

(assert (=> b!516311 m!497873))

(declare-fun m!497875 () Bool)

(assert (=> b!516314 m!497875))

(declare-fun m!497877 () Bool)

(assert (=> b!516307 m!497877))

(check-sat (not b!516311) (not b!516307) (not b!516310) (not b!516314) (not b!516315) (not b!516308) (not b!516316) (not start!46776) (not b!516309))
(check-sat)
