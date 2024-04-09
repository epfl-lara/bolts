; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122040 () Bool)

(assert start!122040)

(declare-fun b!1415905 () Bool)

(declare-fun res!952062 () Bool)

(declare-fun e!801416 () Bool)

(assert (=> b!1415905 (=> (not res!952062) (not e!801416))))

(declare-datatypes ((array!96644 0))(
  ( (array!96645 (arr!46649 (Array (_ BitVec 32) (_ BitVec 64))) (size!47200 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96644)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415905 (= res!952062 (validKeyInArray!0 (select (arr!46649 a!2901) i!1037)))))

(declare-fun b!1415906 () Bool)

(declare-fun res!952061 () Bool)

(assert (=> b!1415906 (=> (not res!952061) (not e!801416))))

(declare-datatypes ((List!33348 0))(
  ( (Nil!33345) (Cons!33344 (h!34631 (_ BitVec 64)) (t!48049 List!33348)) )
))
(declare-fun arrayNoDuplicates!0 (array!96644 (_ BitVec 32) List!33348) Bool)

(assert (=> b!1415906 (= res!952061 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33345))))

(declare-fun b!1415907 () Bool)

(declare-fun res!952065 () Bool)

(declare-fun e!801419 () Bool)

(assert (=> b!1415907 (=> res!952065 e!801419)))

(declare-fun lt!624487 () (_ BitVec 32))

(declare-fun lt!624482 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10982 0))(
  ( (MissingZero!10982 (index!46319 (_ BitVec 32))) (Found!10982 (index!46320 (_ BitVec 32))) (Intermediate!10982 (undefined!11794 Bool) (index!46321 (_ BitVec 32)) (x!127928 (_ BitVec 32))) (Undefined!10982) (MissingVacant!10982 (index!46322 (_ BitVec 32))) )
))
(declare-fun lt!624481 () SeekEntryResult!10982)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624489 () array!96644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96644 (_ BitVec 32)) SeekEntryResult!10982)

(assert (=> b!1415907 (= res!952065 (not (= lt!624481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624487 lt!624482 lt!624489 mask!2840))))))

(declare-fun b!1415908 () Bool)

(declare-fun res!952063 () Bool)

(assert (=> b!1415908 (=> (not res!952063) (not e!801416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96644 (_ BitVec 32)) Bool)

(assert (=> b!1415908 (= res!952063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415909 () Bool)

(declare-fun e!801417 () Bool)

(assert (=> b!1415909 (= e!801417 e!801419)))

(declare-fun res!952059 () Bool)

(assert (=> b!1415909 (=> res!952059 e!801419)))

(declare-fun lt!624488 () SeekEntryResult!10982)

(assert (=> b!1415909 (= res!952059 (or (bvslt (x!127928 lt!624488) #b00000000000000000000000000000000) (bvsgt (x!127928 lt!624488) #b01111111111111111111111111111110) (bvslt (x!127928 lt!624481) #b00000000000000000000000000000000) (bvsgt (x!127928 lt!624481) #b01111111111111111111111111111110) (bvslt lt!624487 #b00000000000000000000000000000000) (bvsge lt!624487 (size!47200 a!2901)) (bvslt (index!46321 lt!624488) #b00000000000000000000000000000000) (bvsge (index!46321 lt!624488) (size!47200 a!2901)) (bvslt (index!46321 lt!624481) #b00000000000000000000000000000000) (bvsge (index!46321 lt!624481) (size!47200 a!2901)) (not (= lt!624488 (Intermediate!10982 false (index!46321 lt!624488) (x!127928 lt!624488)))) (not (= lt!624481 (Intermediate!10982 false (index!46321 lt!624481) (x!127928 lt!624481))))))))

(declare-fun lt!624483 () SeekEntryResult!10982)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96644 (_ BitVec 32)) SeekEntryResult!10982)

(assert (=> b!1415909 (= lt!624483 (seekKeyOrZeroReturnVacant!0 (x!127928 lt!624481) (index!46321 lt!624481) (index!46321 lt!624481) (select (arr!46649 a!2901) j!112) lt!624489 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96644 (_ BitVec 32)) SeekEntryResult!10982)

(assert (=> b!1415909 (= lt!624483 (seekEntryOrOpen!0 lt!624482 lt!624489 mask!2840))))

(assert (=> b!1415909 (and (not (undefined!11794 lt!624481)) (= (index!46321 lt!624481) i!1037) (bvslt (x!127928 lt!624481) (x!127928 lt!624488)) (= (select (store (arr!46649 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46321 lt!624481)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47888 0))(
  ( (Unit!47889) )
))
(declare-fun lt!624484 () Unit!47888)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47888)

(assert (=> b!1415909 (= lt!624484 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624487 (x!127928 lt!624488) (index!46321 lt!624488) (x!127928 lt!624481) (index!46321 lt!624481) (undefined!11794 lt!624481) mask!2840))))

(declare-fun b!1415910 () Bool)

(declare-fun res!952056 () Bool)

(assert (=> b!1415910 (=> (not res!952056) (not e!801416))))

(assert (=> b!1415910 (= res!952056 (validKeyInArray!0 (select (arr!46649 a!2901) j!112)))))

(declare-fun b!1415911 () Bool)

(declare-fun res!952060 () Bool)

(assert (=> b!1415911 (=> (not res!952060) (not e!801416))))

(assert (=> b!1415911 (= res!952060 (and (= (size!47200 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47200 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47200 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415912 () Bool)

(declare-fun e!801415 () Bool)

(assert (=> b!1415912 (= e!801416 (not e!801415))))

(declare-fun res!952058 () Bool)

(assert (=> b!1415912 (=> res!952058 e!801415)))

(get-info :version)

(assert (=> b!1415912 (= res!952058 (or (not ((_ is Intermediate!10982) lt!624488)) (undefined!11794 lt!624488)))))

(declare-fun lt!624486 () SeekEntryResult!10982)

(assert (=> b!1415912 (= lt!624486 (Found!10982 j!112))))

(assert (=> b!1415912 (= lt!624486 (seekEntryOrOpen!0 (select (arr!46649 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415912 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624485 () Unit!47888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47888)

(assert (=> b!1415912 (= lt!624485 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415912 (= lt!624488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624487 (select (arr!46649 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415912 (= lt!624487 (toIndex!0 (select (arr!46649 a!2901) j!112) mask!2840))))

(declare-fun res!952057 () Bool)

(assert (=> start!122040 (=> (not res!952057) (not e!801416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122040 (= res!952057 (validMask!0 mask!2840))))

(assert (=> start!122040 e!801416))

(assert (=> start!122040 true))

(declare-fun array_inv!35594 (array!96644) Bool)

(assert (=> start!122040 (array_inv!35594 a!2901)))

(declare-fun b!1415913 () Bool)

(assert (=> b!1415913 (= e!801419 true)))

(assert (=> b!1415913 (= lt!624486 lt!624483)))

(declare-fun lt!624490 () Unit!47888)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47888)

(assert (=> b!1415913 (= lt!624490 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624487 (x!127928 lt!624488) (index!46321 lt!624488) (x!127928 lt!624481) (index!46321 lt!624481) mask!2840))))

(declare-fun b!1415914 () Bool)

(assert (=> b!1415914 (= e!801415 e!801417)))

(declare-fun res!952064 () Bool)

(assert (=> b!1415914 (=> res!952064 e!801417)))

(assert (=> b!1415914 (= res!952064 (or (= lt!624488 lt!624481) (not ((_ is Intermediate!10982) lt!624481))))))

(assert (=> b!1415914 (= lt!624481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624482 mask!2840) lt!624482 lt!624489 mask!2840))))

(assert (=> b!1415914 (= lt!624482 (select (store (arr!46649 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415914 (= lt!624489 (array!96645 (store (arr!46649 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47200 a!2901)))))

(assert (= (and start!122040 res!952057) b!1415911))

(assert (= (and b!1415911 res!952060) b!1415905))

(assert (= (and b!1415905 res!952062) b!1415910))

(assert (= (and b!1415910 res!952056) b!1415908))

(assert (= (and b!1415908 res!952063) b!1415906))

(assert (= (and b!1415906 res!952061) b!1415912))

(assert (= (and b!1415912 (not res!952058)) b!1415914))

(assert (= (and b!1415914 (not res!952064)) b!1415909))

(assert (= (and b!1415909 (not res!952059)) b!1415907))

(assert (= (and b!1415907 (not res!952065)) b!1415913))

(declare-fun m!1306449 () Bool)

(assert (=> b!1415913 m!1306449))

(declare-fun m!1306451 () Bool)

(assert (=> b!1415909 m!1306451))

(declare-fun m!1306453 () Bool)

(assert (=> b!1415909 m!1306453))

(declare-fun m!1306455 () Bool)

(assert (=> b!1415909 m!1306455))

(declare-fun m!1306457 () Bool)

(assert (=> b!1415909 m!1306457))

(assert (=> b!1415909 m!1306451))

(declare-fun m!1306459 () Bool)

(assert (=> b!1415909 m!1306459))

(declare-fun m!1306461 () Bool)

(assert (=> b!1415909 m!1306461))

(declare-fun m!1306463 () Bool)

(assert (=> b!1415914 m!1306463))

(assert (=> b!1415914 m!1306463))

(declare-fun m!1306465 () Bool)

(assert (=> b!1415914 m!1306465))

(assert (=> b!1415914 m!1306461))

(declare-fun m!1306467 () Bool)

(assert (=> b!1415914 m!1306467))

(assert (=> b!1415912 m!1306451))

(declare-fun m!1306469 () Bool)

(assert (=> b!1415912 m!1306469))

(assert (=> b!1415912 m!1306451))

(declare-fun m!1306471 () Bool)

(assert (=> b!1415912 m!1306471))

(assert (=> b!1415912 m!1306451))

(declare-fun m!1306473 () Bool)

(assert (=> b!1415912 m!1306473))

(assert (=> b!1415912 m!1306451))

(declare-fun m!1306475 () Bool)

(assert (=> b!1415912 m!1306475))

(declare-fun m!1306477 () Bool)

(assert (=> b!1415912 m!1306477))

(declare-fun m!1306479 () Bool)

(assert (=> start!122040 m!1306479))

(declare-fun m!1306481 () Bool)

(assert (=> start!122040 m!1306481))

(assert (=> b!1415910 m!1306451))

(assert (=> b!1415910 m!1306451))

(declare-fun m!1306483 () Bool)

(assert (=> b!1415910 m!1306483))

(declare-fun m!1306485 () Bool)

(assert (=> b!1415907 m!1306485))

(declare-fun m!1306487 () Bool)

(assert (=> b!1415906 m!1306487))

(declare-fun m!1306489 () Bool)

(assert (=> b!1415905 m!1306489))

(assert (=> b!1415905 m!1306489))

(declare-fun m!1306491 () Bool)

(assert (=> b!1415905 m!1306491))

(declare-fun m!1306493 () Bool)

(assert (=> b!1415908 m!1306493))

(check-sat (not b!1415906) (not b!1415909) (not start!122040) (not b!1415912) (not b!1415913) (not b!1415905) (not b!1415907) (not b!1415910) (not b!1415908) (not b!1415914))
(check-sat)
