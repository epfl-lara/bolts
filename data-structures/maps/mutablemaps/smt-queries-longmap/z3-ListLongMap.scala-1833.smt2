; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33218 () Bool)

(assert start!33218)

(declare-fun b!329967 () Bool)

(declare-fun res!181897 () Bool)

(declare-fun e!202622 () Bool)

(assert (=> b!329967 (=> (not res!181897) (not e!202622))))

(declare-datatypes ((array!16873 0))(
  ( (array!16874 (arr!7976 (Array (_ BitVec 32) (_ BitVec 64))) (size!8328 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16873)

(declare-datatypes ((SeekEntryResult!3118 0))(
  ( (MissingZero!3118 (index!14648 (_ BitVec 32))) (Found!3118 (index!14649 (_ BitVec 32))) (Intermediate!3118 (undefined!3930 Bool) (index!14650 (_ BitVec 32)) (x!32896 (_ BitVec 32))) (Undefined!3118) (MissingVacant!3118 (index!14651 (_ BitVec 32))) )
))
(declare-fun lt!158423 () SeekEntryResult!3118)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16873 (_ BitVec 32)) SeekEntryResult!3118)

(assert (=> b!329967 (= res!181897 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158423))))

(declare-fun b!329968 () Bool)

(declare-fun res!181896 () Bool)

(declare-fun e!202623 () Bool)

(assert (=> b!329968 (=> (not res!181896) (not e!202623))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16873 (_ BitVec 32)) SeekEntryResult!3118)

(assert (=> b!329968 (= res!181896 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3118 i!1250)))))

(declare-fun b!329970 () Bool)

(declare-datatypes ((Unit!10245 0))(
  ( (Unit!10246) )
))
(declare-fun e!202624 () Unit!10245)

(declare-fun e!202620 () Unit!10245)

(assert (=> b!329970 (= e!202624 e!202620)))

(declare-fun c!51683 () Bool)

(assert (=> b!329970 (= c!51683 (or (= (select (arr!7976 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7976 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329971 () Bool)

(assert (=> b!329971 (= e!202622 (not true))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!329971 (= index!1840 resIndex!58)))

(declare-fun lt!158421 () Unit!10245)

(assert (=> b!329971 (= lt!158421 e!202624)))

(declare-fun c!51682 () Bool)

(assert (=> b!329971 (= c!51682 (not (= resIndex!58 index!1840)))))

(declare-fun b!329972 () Bool)

(declare-fun e!202619 () Unit!10245)

(declare-fun Unit!10247 () Unit!10245)

(assert (=> b!329972 (= e!202619 Unit!10247)))

(assert (=> b!329972 false))

(declare-fun b!329973 () Bool)

(declare-fun res!181892 () Bool)

(assert (=> b!329973 (=> (not res!181892) (not e!202623))))

(declare-fun arrayContainsKey!0 (array!16873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329973 (= res!181892 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329974 () Bool)

(assert (=> b!329974 false))

(declare-fun lt!158422 () Unit!10245)

(assert (=> b!329974 (= lt!158422 e!202619)))

(declare-fun c!51681 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329974 (= c!51681 ((_ is Intermediate!3118) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!10248 () Unit!10245)

(assert (=> b!329974 (= e!202620 Unit!10248)))

(declare-fun b!329975 () Bool)

(assert (=> b!329975 false))

(declare-fun Unit!10249 () Unit!10245)

(assert (=> b!329975 (= e!202620 Unit!10249)))

(declare-fun b!329976 () Bool)

(declare-fun res!181891 () Bool)

(assert (=> b!329976 (=> (not res!181891) (not e!202623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329976 (= res!181891 (validKeyInArray!0 k0!2497))))

(declare-fun res!181894 () Bool)

(assert (=> start!33218 (=> (not res!181894) (not e!202623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33218 (= res!181894 (validMask!0 mask!3777))))

(assert (=> start!33218 e!202623))

(declare-fun array_inv!5930 (array!16873) Bool)

(assert (=> start!33218 (array_inv!5930 a!3305)))

(assert (=> start!33218 true))

(declare-fun b!329969 () Bool)

(assert (=> b!329969 (= e!202623 e!202622)))

(declare-fun res!181890 () Bool)

(assert (=> b!329969 (=> (not res!181890) (not e!202622))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329969 (= res!181890 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158423))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329969 (= lt!158423 (Intermediate!3118 false resIndex!58 resX!58))))

(declare-fun b!329977 () Bool)

(declare-fun res!181893 () Bool)

(assert (=> b!329977 (=> (not res!181893) (not e!202623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16873 (_ BitVec 32)) Bool)

(assert (=> b!329977 (= res!181893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329978 () Bool)

(declare-fun Unit!10250 () Unit!10245)

(assert (=> b!329978 (= e!202624 Unit!10250)))

(declare-fun b!329979 () Bool)

(declare-fun res!181899 () Bool)

(assert (=> b!329979 (=> (not res!181899) (not e!202622))))

(assert (=> b!329979 (= res!181899 (and (= (select (arr!7976 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8328 a!3305))))))

(declare-fun b!329980 () Bool)

(declare-fun res!181898 () Bool)

(assert (=> b!329980 (=> (not res!181898) (not e!202623))))

(assert (=> b!329980 (= res!181898 (and (= (size!8328 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8328 a!3305))))))

(declare-fun b!329981 () Bool)

(declare-fun res!181895 () Bool)

(assert (=> b!329981 (=> (not res!181895) (not e!202622))))

(assert (=> b!329981 (= res!181895 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7976 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!329982 () Bool)

(declare-fun Unit!10251 () Unit!10245)

(assert (=> b!329982 (= e!202619 Unit!10251)))

(assert (= (and start!33218 res!181894) b!329980))

(assert (= (and b!329980 res!181898) b!329976))

(assert (= (and b!329976 res!181891) b!329973))

(assert (= (and b!329973 res!181892) b!329968))

(assert (= (and b!329968 res!181896) b!329977))

(assert (= (and b!329977 res!181893) b!329969))

(assert (= (and b!329969 res!181890) b!329979))

(assert (= (and b!329979 res!181899) b!329967))

(assert (= (and b!329967 res!181897) b!329981))

(assert (= (and b!329981 res!181895) b!329971))

(assert (= (and b!329971 c!51682) b!329970))

(assert (= (and b!329971 (not c!51682)) b!329978))

(assert (= (and b!329970 c!51683) b!329975))

(assert (= (and b!329970 (not c!51683)) b!329974))

(assert (= (and b!329974 c!51681) b!329982))

(assert (= (and b!329974 (not c!51681)) b!329972))

(declare-fun m!335367 () Bool)

(assert (=> b!329979 m!335367))

(declare-fun m!335369 () Bool)

(assert (=> b!329981 m!335369))

(declare-fun m!335371 () Bool)

(assert (=> b!329967 m!335371))

(declare-fun m!335373 () Bool)

(assert (=> b!329977 m!335373))

(declare-fun m!335375 () Bool)

(assert (=> b!329969 m!335375))

(assert (=> b!329969 m!335375))

(declare-fun m!335377 () Bool)

(assert (=> b!329969 m!335377))

(declare-fun m!335379 () Bool)

(assert (=> b!329976 m!335379))

(assert (=> b!329970 m!335369))

(declare-fun m!335381 () Bool)

(assert (=> start!33218 m!335381))

(declare-fun m!335383 () Bool)

(assert (=> start!33218 m!335383))

(declare-fun m!335385 () Bool)

(assert (=> b!329973 m!335385))

(declare-fun m!335387 () Bool)

(assert (=> b!329968 m!335387))

(declare-fun m!335389 () Bool)

(assert (=> b!329974 m!335389))

(assert (=> b!329974 m!335389))

(declare-fun m!335391 () Bool)

(assert (=> b!329974 m!335391))

(check-sat (not b!329974) (not b!329969) (not b!329977) (not b!329967) (not start!33218) (not b!329968) (not b!329973) (not b!329976))
(check-sat)
