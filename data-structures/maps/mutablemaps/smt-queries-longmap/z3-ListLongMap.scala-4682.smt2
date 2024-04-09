; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65172 () Bool)

(assert start!65172)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41298 0))(
  ( (array!41299 (arr!19759 (Array (_ BitVec 32) (_ BitVec 64))) (size!20180 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41298)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!411878 () Bool)

(declare-fun b!736194 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7366 0))(
  ( (MissingZero!7366 (index!31831 (_ BitVec 32))) (Found!7366 (index!31832 (_ BitVec 32))) (Intermediate!7366 (undefined!8178 Bool) (index!31833 (_ BitVec 32)) (x!62861 (_ BitVec 32))) (Undefined!7366) (MissingVacant!7366 (index!31834 (_ BitVec 32))) )
))
(declare-fun lt!326504 () SeekEntryResult!7366)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41298 (_ BitVec 32)) SeekEntryResult!7366)

(assert (=> b!736194 (= e!411878 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326504))))

(declare-fun b!736195 () Bool)

(declare-fun res!494855 () Bool)

(declare-fun e!411872 () Bool)

(assert (=> b!736195 (=> (not res!494855) (not e!411872))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736195 (= res!494855 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736196 () Bool)

(declare-fun e!411871 () Bool)

(assert (=> b!736196 (= e!411871 e!411878)))

(declare-fun res!494866 () Bool)

(assert (=> b!736196 (=> (not res!494866) (not e!411878))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41298 (_ BitVec 32)) SeekEntryResult!7366)

(assert (=> b!736196 (= res!494866 (= (seekEntryOrOpen!0 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326504))))

(assert (=> b!736196 (= lt!326504 (Found!7366 j!159))))

(declare-fun b!736197 () Bool)

(declare-fun res!494852 () Bool)

(assert (=> b!736197 (=> (not res!494852) (not e!411872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736197 (= res!494852 (validKeyInArray!0 (select (arr!19759 a!3186) j!159)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!736198 () Bool)

(declare-fun e!411879 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!736198 (= e!411879 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) (Found!7366 j!159)))))

(declare-fun b!736199 () Bool)

(declare-fun res!494865 () Bool)

(declare-fun e!411876 () Bool)

(assert (=> b!736199 (=> (not res!494865) (not e!411876))))

(assert (=> b!736199 (= res!494865 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20180 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20180 a!3186))))))

(declare-fun b!736200 () Bool)

(declare-fun res!494853 () Bool)

(assert (=> b!736200 (=> (not res!494853) (not e!411872))))

(assert (=> b!736200 (= res!494853 (validKeyInArray!0 k0!2102))))

(declare-fun b!736201 () Bool)

(declare-fun e!411875 () Bool)

(assert (=> b!736201 (= e!411876 e!411875)))

(declare-fun res!494861 () Bool)

(assert (=> b!736201 (=> (not res!494861) (not e!411875))))

(declare-fun lt!326492 () SeekEntryResult!7366)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41298 (_ BitVec 32)) SeekEntryResult!7366)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736201 (= res!494861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19759 a!3186) j!159) mask!3328) (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326492))))

(assert (=> b!736201 (= lt!326492 (Intermediate!7366 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736202 () Bool)

(declare-fun res!494856 () Bool)

(assert (=> b!736202 (=> (not res!494856) (not e!411876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41298 (_ BitVec 32)) Bool)

(assert (=> b!736202 (= res!494856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736203 () Bool)

(declare-fun res!494858 () Bool)

(assert (=> b!736203 (=> (not res!494858) (not e!411875))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736203 (= res!494858 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19759 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736204 () Bool)

(declare-fun res!494863 () Bool)

(declare-fun e!411877 () Bool)

(assert (=> b!736204 (=> res!494863 e!411877)))

(declare-fun e!411869 () Bool)

(assert (=> b!736204 (= res!494863 e!411869)))

(declare-fun c!81052 () Bool)

(declare-fun lt!326502 () Bool)

(assert (=> b!736204 (= c!81052 lt!326502)))

(declare-fun b!736205 () Bool)

(declare-fun lt!326501 () (_ BitVec 32))

(declare-fun lt!326494 () SeekEntryResult!7366)

(assert (=> b!736205 (= e!411869 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326501 resIntermediateIndex!5 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326494)))))

(declare-fun b!736206 () Bool)

(assert (=> b!736206 (= e!411877 true)))

(declare-fun lt!326496 () SeekEntryResult!7366)

(declare-fun lt!326500 () array!41298)

(declare-fun lt!326497 () (_ BitVec 64))

(assert (=> b!736206 (= lt!326496 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326501 lt!326497 lt!326500 mask!3328))))

(declare-fun b!736207 () Bool)

(declare-fun e!411873 () Bool)

(assert (=> b!736207 (= e!411873 e!411877)))

(declare-fun res!494864 () Bool)

(assert (=> b!736207 (=> res!494864 e!411877)))

(assert (=> b!736207 (= res!494864 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326501 #b00000000000000000000000000000000) (bvsge lt!326501 (size!20180 a!3186))))))

(declare-datatypes ((Unit!25082 0))(
  ( (Unit!25083) )
))
(declare-fun lt!326491 () Unit!25082)

(declare-fun e!411874 () Unit!25082)

(assert (=> b!736207 (= lt!326491 e!411874)))

(declare-fun c!81054 () Bool)

(assert (=> b!736207 (= c!81054 lt!326502)))

(assert (=> b!736207 (= lt!326502 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736207 (= lt!326501 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736208 () Bool)

(declare-fun e!411870 () Bool)

(assert (=> b!736208 (= e!411875 e!411870)))

(declare-fun res!494859 () Bool)

(assert (=> b!736208 (=> (not res!494859) (not e!411870))))

(declare-fun lt!326498 () SeekEntryResult!7366)

(declare-fun lt!326499 () SeekEntryResult!7366)

(assert (=> b!736208 (= res!494859 (= lt!326498 lt!326499))))

(assert (=> b!736208 (= lt!326499 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326497 lt!326500 mask!3328))))

(assert (=> b!736208 (= lt!326498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326497 mask!3328) lt!326497 lt!326500 mask!3328))))

(assert (=> b!736208 (= lt!326497 (select (store (arr!19759 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!736208 (= lt!326500 (array!41299 (store (arr!19759 a!3186) i!1173 k0!2102) (size!20180 a!3186)))))

(declare-fun b!736209 () Bool)

(assert (=> b!736209 (= e!411872 e!411876)))

(declare-fun res!494860 () Bool)

(assert (=> b!736209 (=> (not res!494860) (not e!411876))))

(declare-fun lt!326495 () SeekEntryResult!7366)

(assert (=> b!736209 (= res!494860 (or (= lt!326495 (MissingZero!7366 i!1173)) (= lt!326495 (MissingVacant!7366 i!1173))))))

(assert (=> b!736209 (= lt!326495 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!736210 () Bool)

(declare-fun res!494862 () Bool)

(assert (=> b!736210 (=> (not res!494862) (not e!411872))))

(assert (=> b!736210 (= res!494862 (and (= (size!20180 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20180 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20180 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736211 () Bool)

(declare-fun res!494851 () Bool)

(assert (=> b!736211 (=> (not res!494851) (not e!411875))))

(assert (=> b!736211 (= res!494851 e!411879)))

(declare-fun c!81053 () Bool)

(assert (=> b!736211 (= c!81053 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736212 () Bool)

(assert (=> b!736212 (= e!411879 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326492))))

(declare-fun b!736213 () Bool)

(declare-fun res!494854 () Bool)

(assert (=> b!736213 (=> (not res!494854) (not e!411876))))

(declare-datatypes ((List!13814 0))(
  ( (Nil!13811) (Cons!13810 (h!14882 (_ BitVec 64)) (t!20137 List!13814)) )
))
(declare-fun arrayNoDuplicates!0 (array!41298 (_ BitVec 32) List!13814) Bool)

(assert (=> b!736213 (= res!494854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13811))))

(declare-fun b!736214 () Bool)

(assert (=> b!736214 (= e!411869 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326501 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326492)))))

(declare-fun res!494857 () Bool)

(assert (=> start!65172 (=> (not res!494857) (not e!411872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65172 (= res!494857 (validMask!0 mask!3328))))

(assert (=> start!65172 e!411872))

(assert (=> start!65172 true))

(declare-fun array_inv!15533 (array!41298) Bool)

(assert (=> start!65172 (array_inv!15533 a!3186)))

(declare-fun b!736215 () Bool)

(assert (=> b!736215 (= e!411870 (not e!411873))))

(declare-fun res!494868 () Bool)

(assert (=> b!736215 (=> res!494868 e!411873)))

(get-info :version)

(assert (=> b!736215 (= res!494868 (or (not ((_ is Intermediate!7366) lt!326499)) (bvsge x!1131 (x!62861 lt!326499))))))

(assert (=> b!736215 (= lt!326494 (Found!7366 j!159))))

(assert (=> b!736215 e!411871))

(declare-fun res!494867 () Bool)

(assert (=> b!736215 (=> (not res!494867) (not e!411871))))

(assert (=> b!736215 (= res!494867 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326493 () Unit!25082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25082)

(assert (=> b!736215 (= lt!326493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736216 () Bool)

(declare-fun Unit!25084 () Unit!25082)

(assert (=> b!736216 (= e!411874 Unit!25084)))

(declare-fun lt!326503 () SeekEntryResult!7366)

(assert (=> b!736216 (= lt!326503 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19759 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736216 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326501 resIntermediateIndex!5 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326494)))

(declare-fun b!736217 () Bool)

(declare-fun Unit!25085 () Unit!25082)

(assert (=> b!736217 (= e!411874 Unit!25085)))

(assert (=> b!736217 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326501 (select (arr!19759 a!3186) j!159) a!3186 mask!3328) lt!326492)))

(assert (= (and start!65172 res!494857) b!736210))

(assert (= (and b!736210 res!494862) b!736197))

(assert (= (and b!736197 res!494852) b!736200))

(assert (= (and b!736200 res!494853) b!736195))

(assert (= (and b!736195 res!494855) b!736209))

(assert (= (and b!736209 res!494860) b!736202))

(assert (= (and b!736202 res!494856) b!736213))

(assert (= (and b!736213 res!494854) b!736199))

(assert (= (and b!736199 res!494865) b!736201))

(assert (= (and b!736201 res!494861) b!736203))

(assert (= (and b!736203 res!494858) b!736211))

(assert (= (and b!736211 c!81053) b!736212))

(assert (= (and b!736211 (not c!81053)) b!736198))

(assert (= (and b!736211 res!494851) b!736208))

(assert (= (and b!736208 res!494859) b!736215))

(assert (= (and b!736215 res!494867) b!736196))

(assert (= (and b!736196 res!494866) b!736194))

(assert (= (and b!736215 (not res!494868)) b!736207))

(assert (= (and b!736207 c!81054) b!736217))

(assert (= (and b!736207 (not c!81054)) b!736216))

(assert (= (and b!736207 (not res!494864)) b!736204))

(assert (= (and b!736204 c!81052) b!736214))

(assert (= (and b!736204 (not c!81052)) b!736205))

(assert (= (and b!736204 (not res!494863)) b!736206))

(declare-fun m!688453 () Bool)

(assert (=> b!736198 m!688453))

(assert (=> b!736198 m!688453))

(declare-fun m!688455 () Bool)

(assert (=> b!736198 m!688455))

(assert (=> b!736205 m!688453))

(assert (=> b!736205 m!688453))

(declare-fun m!688457 () Bool)

(assert (=> b!736205 m!688457))

(declare-fun m!688459 () Bool)

(assert (=> b!736208 m!688459))

(declare-fun m!688461 () Bool)

(assert (=> b!736208 m!688461))

(declare-fun m!688463 () Bool)

(assert (=> b!736208 m!688463))

(declare-fun m!688465 () Bool)

(assert (=> b!736208 m!688465))

(declare-fun m!688467 () Bool)

(assert (=> b!736208 m!688467))

(assert (=> b!736208 m!688459))

(declare-fun m!688469 () Bool)

(assert (=> b!736213 m!688469))

(declare-fun m!688471 () Bool)

(assert (=> b!736203 m!688471))

(declare-fun m!688473 () Bool)

(assert (=> b!736195 m!688473))

(assert (=> b!736217 m!688453))

(assert (=> b!736217 m!688453))

(declare-fun m!688475 () Bool)

(assert (=> b!736217 m!688475))

(assert (=> b!736216 m!688453))

(assert (=> b!736216 m!688453))

(assert (=> b!736216 m!688455))

(assert (=> b!736216 m!688453))

(assert (=> b!736216 m!688457))

(declare-fun m!688477 () Bool)

(assert (=> b!736200 m!688477))

(assert (=> b!736214 m!688453))

(assert (=> b!736214 m!688453))

(assert (=> b!736214 m!688475))

(assert (=> b!736196 m!688453))

(assert (=> b!736196 m!688453))

(declare-fun m!688479 () Bool)

(assert (=> b!736196 m!688479))

(declare-fun m!688481 () Bool)

(assert (=> b!736202 m!688481))

(assert (=> b!736197 m!688453))

(assert (=> b!736197 m!688453))

(declare-fun m!688483 () Bool)

(assert (=> b!736197 m!688483))

(declare-fun m!688485 () Bool)

(assert (=> b!736209 m!688485))

(declare-fun m!688487 () Bool)

(assert (=> b!736206 m!688487))

(assert (=> b!736212 m!688453))

(assert (=> b!736212 m!688453))

(declare-fun m!688489 () Bool)

(assert (=> b!736212 m!688489))

(declare-fun m!688491 () Bool)

(assert (=> b!736215 m!688491))

(declare-fun m!688493 () Bool)

(assert (=> b!736215 m!688493))

(assert (=> b!736194 m!688453))

(assert (=> b!736194 m!688453))

(declare-fun m!688495 () Bool)

(assert (=> b!736194 m!688495))

(declare-fun m!688497 () Bool)

(assert (=> b!736207 m!688497))

(assert (=> b!736201 m!688453))

(assert (=> b!736201 m!688453))

(declare-fun m!688499 () Bool)

(assert (=> b!736201 m!688499))

(assert (=> b!736201 m!688499))

(assert (=> b!736201 m!688453))

(declare-fun m!688501 () Bool)

(assert (=> b!736201 m!688501))

(declare-fun m!688503 () Bool)

(assert (=> start!65172 m!688503))

(declare-fun m!688505 () Bool)

(assert (=> start!65172 m!688505))

(check-sat (not b!736206) (not b!736196) (not b!736212) (not b!736198) (not b!736209) (not b!736197) (not b!736215) (not start!65172) (not b!736200) (not b!736207) (not b!736217) (not b!736202) (not b!736216) (not b!736213) (not b!736214) (not b!736208) (not b!736205) (not b!736201) (not b!736195) (not b!736194))
(check-sat)
