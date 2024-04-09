; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45666 () Bool)

(assert start!45666)

(declare-fun b!503461 () Bool)

(declare-datatypes ((Unit!15258 0))(
  ( (Unit!15259) )
))
(declare-fun e!294835 () Unit!15258)

(declare-fun Unit!15260 () Unit!15258)

(assert (=> b!503461 (= e!294835 Unit!15260)))

(declare-fun b!503462 () Bool)

(declare-fun res!304893 () Bool)

(declare-fun e!294830 () Bool)

(assert (=> b!503462 (=> (not res!304893) (not e!294830))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!32382 0))(
  ( (array!32383 (arr!15568 (Array (_ BitVec 32) (_ BitVec 64))) (size!15932 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32382)

(assert (=> b!503462 (= res!304893 (and (= (size!15932 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15932 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15932 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503463 () Bool)

(declare-fun e!294838 () Bool)

(declare-fun e!294837 () Bool)

(assert (=> b!503463 (= e!294838 (not e!294837))))

(declare-fun res!304890 () Bool)

(assert (=> b!503463 (=> res!304890 e!294837)))

(declare-fun lt!229127 () array!32382)

(declare-fun lt!229126 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4042 0))(
  ( (MissingZero!4042 (index!18356 (_ BitVec 32))) (Found!4042 (index!18357 (_ BitVec 32))) (Intermediate!4042 (undefined!4854 Bool) (index!18358 (_ BitVec 32)) (x!47406 (_ BitVec 32))) (Undefined!4042) (MissingVacant!4042 (index!18359 (_ BitVec 32))) )
))
(declare-fun lt!229131 () SeekEntryResult!4042)

(declare-fun lt!229134 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32382 (_ BitVec 32)) SeekEntryResult!4042)

(assert (=> b!503463 (= res!304890 (= lt!229131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229126 lt!229134 lt!229127 mask!3524)))))

(declare-fun lt!229135 () (_ BitVec 32))

(assert (=> b!503463 (= lt!229131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229135 (select (arr!15568 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503463 (= lt!229126 (toIndex!0 lt!229134 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!503463 (= lt!229134 (select (store (arr!15568 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503463 (= lt!229135 (toIndex!0 (select (arr!15568 a!3235) j!176) mask!3524))))

(assert (=> b!503463 (= lt!229127 (array!32383 (store (arr!15568 a!3235) i!1204 k0!2280) (size!15932 a!3235)))))

(declare-fun e!294834 () Bool)

(assert (=> b!503463 e!294834))

(declare-fun res!304885 () Bool)

(assert (=> b!503463 (=> (not res!304885) (not e!294834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32382 (_ BitVec 32)) Bool)

(assert (=> b!503463 (= res!304885 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229129 () Unit!15258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15258)

(assert (=> b!503463 (= lt!229129 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503464 () Bool)

(declare-fun res!304897 () Bool)

(assert (=> b!503464 (=> (not res!304897) (not e!294830))))

(declare-fun arrayContainsKey!0 (array!32382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503464 (= res!304897 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503465 () Bool)

(declare-fun e!294831 () Bool)

(assert (=> b!503465 (= e!294837 e!294831)))

(declare-fun res!304884 () Bool)

(assert (=> b!503465 (=> res!304884 e!294831)))

(assert (=> b!503465 (= res!304884 (or (bvsgt (x!47406 lt!229131) #b01111111111111111111111111111110) (bvslt lt!229135 #b00000000000000000000000000000000) (bvsge lt!229135 (size!15932 a!3235)) (bvslt (index!18358 lt!229131) #b00000000000000000000000000000000) (bvsge (index!18358 lt!229131) (size!15932 a!3235)) (not (= lt!229131 (Intermediate!4042 false (index!18358 lt!229131) (x!47406 lt!229131))))))))

(assert (=> b!503465 (= (index!18358 lt!229131) i!1204)))

(declare-fun lt!229133 () Unit!15258)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32382 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15258)

(assert (=> b!503465 (= lt!229133 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229135 #b00000000000000000000000000000000 (index!18358 lt!229131) (x!47406 lt!229131) mask!3524))))

(assert (=> b!503465 (and (or (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229130 () Unit!15258)

(assert (=> b!503465 (= lt!229130 e!294835)))

(declare-fun c!59567 () Bool)

(assert (=> b!503465 (= c!59567 (= (select (arr!15568 a!3235) (index!18358 lt!229131)) (select (arr!15568 a!3235) j!176)))))

(assert (=> b!503465 (and (bvslt (x!47406 lt!229131) #b01111111111111111111111111111110) (or (= (select (arr!15568 a!3235) (index!18358 lt!229131)) (select (arr!15568 a!3235) j!176)) (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15568 a!3235) (index!18358 lt!229131)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503466 () Bool)

(declare-fun res!304898 () Bool)

(assert (=> b!503466 (=> (not res!304898) (not e!294838))))

(declare-datatypes ((List!9779 0))(
  ( (Nil!9776) (Cons!9775 (h!10652 (_ BitVec 64)) (t!16015 List!9779)) )
))
(declare-fun arrayNoDuplicates!0 (array!32382 (_ BitVec 32) List!9779) Bool)

(assert (=> b!503466 (= res!304898 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9776))))

(declare-fun b!503467 () Bool)

(declare-fun Unit!15261 () Unit!15258)

(assert (=> b!503467 (= e!294835 Unit!15261)))

(declare-fun lt!229128 () Unit!15258)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32382 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15258)

(assert (=> b!503467 (= lt!229128 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229135 #b00000000000000000000000000000000 (index!18358 lt!229131) (x!47406 lt!229131) mask!3524))))

(declare-fun res!304887 () Bool)

(assert (=> b!503467 (= res!304887 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229135 lt!229134 lt!229127 mask!3524) (Intermediate!4042 false (index!18358 lt!229131) (x!47406 lt!229131))))))

(declare-fun e!294836 () Bool)

(assert (=> b!503467 (=> (not res!304887) (not e!294836))))

(assert (=> b!503467 e!294836))

(declare-fun b!503468 () Bool)

(declare-fun res!304892 () Bool)

(assert (=> b!503468 (=> (not res!304892) (not e!294830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503468 (= res!304892 (validKeyInArray!0 (select (arr!15568 a!3235) j!176)))))

(declare-fun b!503469 () Bool)

(declare-fun res!304886 () Bool)

(assert (=> b!503469 (=> (not res!304886) (not e!294830))))

(assert (=> b!503469 (= res!304886 (validKeyInArray!0 k0!2280))))

(declare-fun b!503470 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32382 (_ BitVec 32)) SeekEntryResult!4042)

(assert (=> b!503470 (= e!294834 (= (seekEntryOrOpen!0 (select (arr!15568 a!3235) j!176) a!3235 mask!3524) (Found!4042 j!176)))))

(declare-fun b!503471 () Bool)

(assert (=> b!503471 (= e!294830 e!294838)))

(declare-fun res!304888 () Bool)

(assert (=> b!503471 (=> (not res!304888) (not e!294838))))

(declare-fun lt!229132 () SeekEntryResult!4042)

(assert (=> b!503471 (= res!304888 (or (= lt!229132 (MissingZero!4042 i!1204)) (= lt!229132 (MissingVacant!4042 i!1204))))))

(assert (=> b!503471 (= lt!229132 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503472 () Bool)

(declare-fun res!304895 () Bool)

(assert (=> b!503472 (=> (not res!304895) (not e!294838))))

(assert (=> b!503472 (= res!304895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503473 () Bool)

(assert (=> b!503473 (= e!294836 false)))

(declare-fun b!503474 () Bool)

(declare-fun res!304889 () Bool)

(assert (=> b!503474 (=> res!304889 e!294837)))

(get-info :version)

(assert (=> b!503474 (= res!304889 (or (undefined!4854 lt!229131) (not ((_ is Intermediate!4042) lt!229131))))))

(declare-fun b!503475 () Bool)

(declare-fun res!304891 () Bool)

(assert (=> b!503475 (=> res!304891 e!294831)))

(declare-fun e!294832 () Bool)

(assert (=> b!503475 (= res!304891 e!294832)))

(declare-fun res!304896 () Bool)

(assert (=> b!503475 (=> (not res!304896) (not e!294832))))

(assert (=> b!503475 (= res!304896 (bvsgt #b00000000000000000000000000000000 (x!47406 lt!229131)))))

(declare-fun res!304894 () Bool)

(assert (=> start!45666 (=> (not res!304894) (not e!294830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45666 (= res!304894 (validMask!0 mask!3524))))

(assert (=> start!45666 e!294830))

(assert (=> start!45666 true))

(declare-fun array_inv!11342 (array!32382) Bool)

(assert (=> start!45666 (array_inv!11342 a!3235)))

(declare-fun b!503476 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32382 (_ BitVec 32)) SeekEntryResult!4042)

(assert (=> b!503476 (= e!294832 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229135 (index!18358 lt!229131) (select (arr!15568 a!3235) j!176) a!3235 mask!3524) (Found!4042 j!176))))))

(declare-fun b!503477 () Bool)

(assert (=> b!503477 (= e!294831 true)))

(declare-fun lt!229136 () SeekEntryResult!4042)

(assert (=> b!503477 (= lt!229136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229135 lt!229134 lt!229127 mask!3524))))

(assert (= (and start!45666 res!304894) b!503462))

(assert (= (and b!503462 res!304893) b!503468))

(assert (= (and b!503468 res!304892) b!503469))

(assert (= (and b!503469 res!304886) b!503464))

(assert (= (and b!503464 res!304897) b!503471))

(assert (= (and b!503471 res!304888) b!503472))

(assert (= (and b!503472 res!304895) b!503466))

(assert (= (and b!503466 res!304898) b!503463))

(assert (= (and b!503463 res!304885) b!503470))

(assert (= (and b!503463 (not res!304890)) b!503474))

(assert (= (and b!503474 (not res!304889)) b!503465))

(assert (= (and b!503465 c!59567) b!503467))

(assert (= (and b!503465 (not c!59567)) b!503461))

(assert (= (and b!503467 res!304887) b!503473))

(assert (= (and b!503465 (not res!304884)) b!503475))

(assert (= (and b!503475 res!304896) b!503476))

(assert (= (and b!503475 (not res!304891)) b!503477))

(declare-fun m!484313 () Bool)

(assert (=> b!503464 m!484313))

(declare-fun m!484315 () Bool)

(assert (=> b!503465 m!484315))

(declare-fun m!484317 () Bool)

(assert (=> b!503465 m!484317))

(declare-fun m!484319 () Bool)

(assert (=> b!503465 m!484319))

(assert (=> b!503476 m!484319))

(assert (=> b!503476 m!484319))

(declare-fun m!484321 () Bool)

(assert (=> b!503476 m!484321))

(declare-fun m!484323 () Bool)

(assert (=> b!503469 m!484323))

(declare-fun m!484325 () Bool)

(assert (=> b!503477 m!484325))

(declare-fun m!484327 () Bool)

(assert (=> b!503472 m!484327))

(declare-fun m!484329 () Bool)

(assert (=> b!503463 m!484329))

(declare-fun m!484331 () Bool)

(assert (=> b!503463 m!484331))

(declare-fun m!484333 () Bool)

(assert (=> b!503463 m!484333))

(declare-fun m!484335 () Bool)

(assert (=> b!503463 m!484335))

(assert (=> b!503463 m!484319))

(declare-fun m!484337 () Bool)

(assert (=> b!503463 m!484337))

(declare-fun m!484339 () Bool)

(assert (=> b!503463 m!484339))

(declare-fun m!484341 () Bool)

(assert (=> b!503463 m!484341))

(assert (=> b!503463 m!484319))

(assert (=> b!503463 m!484319))

(declare-fun m!484343 () Bool)

(assert (=> b!503463 m!484343))

(declare-fun m!484345 () Bool)

(assert (=> b!503466 m!484345))

(assert (=> b!503470 m!484319))

(assert (=> b!503470 m!484319))

(declare-fun m!484347 () Bool)

(assert (=> b!503470 m!484347))

(declare-fun m!484349 () Bool)

(assert (=> b!503467 m!484349))

(assert (=> b!503467 m!484325))

(declare-fun m!484351 () Bool)

(assert (=> b!503471 m!484351))

(assert (=> b!503468 m!484319))

(assert (=> b!503468 m!484319))

(declare-fun m!484353 () Bool)

(assert (=> b!503468 m!484353))

(declare-fun m!484355 () Bool)

(assert (=> start!45666 m!484355))

(declare-fun m!484357 () Bool)

(assert (=> start!45666 m!484357))

(check-sat (not b!503472) (not b!503471) (not b!503469) (not b!503468) (not b!503465) (not b!503477) (not b!503467) (not b!503466) (not start!45666) (not b!503476) (not b!503463) (not b!503464) (not b!503470))
(check-sat)
