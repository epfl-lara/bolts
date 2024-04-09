; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120084 () Bool)

(assert start!120084)

(declare-fun b!1397468 () Bool)

(declare-fun e!791179 () Bool)

(declare-fun e!791177 () Bool)

(assert (=> b!1397468 (= e!791179 (not e!791177))))

(declare-fun res!936497 () Bool)

(assert (=> b!1397468 (=> res!936497 e!791177)))

(declare-datatypes ((SeekEntryResult!10454 0))(
  ( (MissingZero!10454 (index!44186 (_ BitVec 32))) (Found!10454 (index!44187 (_ BitVec 32))) (Intermediate!10454 (undefined!11266 Bool) (index!44188 (_ BitVec 32)) (x!125847 (_ BitVec 32))) (Undefined!10454) (MissingVacant!10454 (index!44189 (_ BitVec 32))) )
))
(declare-fun lt!614232 () SeekEntryResult!10454)

(get-info :version)

(assert (=> b!1397468 (= res!936497 (or (not ((_ is Intermediate!10454) lt!614232)) (undefined!11266 lt!614232)))))

(declare-fun e!791180 () Bool)

(assert (=> b!1397468 e!791180))

(declare-fun res!936490 () Bool)

(assert (=> b!1397468 (=> (not res!936490) (not e!791180))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95531 0))(
  ( (array!95532 (arr!46115 (Array (_ BitVec 32) (_ BitVec 64))) (size!46666 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95531)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95531 (_ BitVec 32)) Bool)

(assert (=> b!1397468 (= res!936490 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46862 0))(
  ( (Unit!46863) )
))
(declare-fun lt!614231 () Unit!46862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46862)

(assert (=> b!1397468 (= lt!614231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95531 (_ BitVec 32)) SeekEntryResult!10454)

(assert (=> b!1397468 (= lt!614232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614236 (select (arr!46115 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397468 (= lt!614236 (toIndex!0 (select (arr!46115 a!2901) j!112) mask!2840))))

(declare-fun b!1397469 () Bool)

(declare-fun res!936498 () Bool)

(assert (=> b!1397469 (=> (not res!936498) (not e!791179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397469 (= res!936498 (validKeyInArray!0 (select (arr!46115 a!2901) j!112)))))

(declare-fun res!936491 () Bool)

(assert (=> start!120084 (=> (not res!936491) (not e!791179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120084 (= res!936491 (validMask!0 mask!2840))))

(assert (=> start!120084 e!791179))

(assert (=> start!120084 true))

(declare-fun array_inv!35060 (array!95531) Bool)

(assert (=> start!120084 (array_inv!35060 a!2901)))

(declare-fun b!1397470 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95531 (_ BitVec 32)) SeekEntryResult!10454)

(assert (=> b!1397470 (= e!791180 (= (seekEntryOrOpen!0 (select (arr!46115 a!2901) j!112) a!2901 mask!2840) (Found!10454 j!112)))))

(declare-fun b!1397471 () Bool)

(declare-fun res!936493 () Bool)

(assert (=> b!1397471 (=> (not res!936493) (not e!791179))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397471 (= res!936493 (validKeyInArray!0 (select (arr!46115 a!2901) i!1037)))))

(declare-fun b!1397472 () Bool)

(declare-fun e!791176 () Bool)

(assert (=> b!1397472 (= e!791176 true)))

(declare-fun lt!614230 () array!95531)

(declare-fun lt!614235 () SeekEntryResult!10454)

(declare-fun lt!614233 () (_ BitVec 64))

(assert (=> b!1397472 (= lt!614235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614236 lt!614233 lt!614230 mask!2840))))

(declare-fun b!1397473 () Bool)

(assert (=> b!1397473 (= e!791177 e!791176)))

(declare-fun res!936492 () Bool)

(assert (=> b!1397473 (=> res!936492 e!791176)))

(declare-fun lt!614234 () SeekEntryResult!10454)

(assert (=> b!1397473 (= res!936492 (or (= lt!614232 lt!614234) (not ((_ is Intermediate!10454) lt!614234)) (bvslt (x!125847 lt!614232) #b00000000000000000000000000000000) (bvsgt (x!125847 lt!614232) #b01111111111111111111111111111110) (bvslt lt!614236 #b00000000000000000000000000000000) (bvsge lt!614236 (size!46666 a!2901)) (bvslt (index!44188 lt!614232) #b00000000000000000000000000000000) (bvsge (index!44188 lt!614232) (size!46666 a!2901)) (not (= lt!614232 (Intermediate!10454 false (index!44188 lt!614232) (x!125847 lt!614232)))) (not (= lt!614234 (Intermediate!10454 (undefined!11266 lt!614234) (index!44188 lt!614234) (x!125847 lt!614234))))))))

(assert (=> b!1397473 (= lt!614234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614233 mask!2840) lt!614233 lt!614230 mask!2840))))

(assert (=> b!1397473 (= lt!614233 (select (store (arr!46115 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397473 (= lt!614230 (array!95532 (store (arr!46115 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46666 a!2901)))))

(declare-fun b!1397474 () Bool)

(declare-fun res!936495 () Bool)

(assert (=> b!1397474 (=> (not res!936495) (not e!791179))))

(declare-datatypes ((List!32814 0))(
  ( (Nil!32811) (Cons!32810 (h!34052 (_ BitVec 64)) (t!47515 List!32814)) )
))
(declare-fun arrayNoDuplicates!0 (array!95531 (_ BitVec 32) List!32814) Bool)

(assert (=> b!1397474 (= res!936495 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32811))))

(declare-fun b!1397475 () Bool)

(declare-fun res!936494 () Bool)

(assert (=> b!1397475 (=> (not res!936494) (not e!791179))))

(assert (=> b!1397475 (= res!936494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397476 () Bool)

(declare-fun res!936496 () Bool)

(assert (=> b!1397476 (=> (not res!936496) (not e!791179))))

(assert (=> b!1397476 (= res!936496 (and (= (size!46666 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46666 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46666 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120084 res!936491) b!1397476))

(assert (= (and b!1397476 res!936496) b!1397471))

(assert (= (and b!1397471 res!936493) b!1397469))

(assert (= (and b!1397469 res!936498) b!1397475))

(assert (= (and b!1397475 res!936494) b!1397474))

(assert (= (and b!1397474 res!936495) b!1397468))

(assert (= (and b!1397468 res!936490) b!1397470))

(assert (= (and b!1397468 (not res!936497)) b!1397473))

(assert (= (and b!1397473 (not res!936492)) b!1397472))

(declare-fun m!1284335 () Bool)

(assert (=> b!1397475 m!1284335))

(declare-fun m!1284337 () Bool)

(assert (=> b!1397470 m!1284337))

(assert (=> b!1397470 m!1284337))

(declare-fun m!1284339 () Bool)

(assert (=> b!1397470 m!1284339))

(assert (=> b!1397469 m!1284337))

(assert (=> b!1397469 m!1284337))

(declare-fun m!1284341 () Bool)

(assert (=> b!1397469 m!1284341))

(declare-fun m!1284343 () Bool)

(assert (=> start!120084 m!1284343))

(declare-fun m!1284345 () Bool)

(assert (=> start!120084 m!1284345))

(declare-fun m!1284347 () Bool)

(assert (=> b!1397472 m!1284347))

(declare-fun m!1284349 () Bool)

(assert (=> b!1397474 m!1284349))

(declare-fun m!1284351 () Bool)

(assert (=> b!1397473 m!1284351))

(assert (=> b!1397473 m!1284351))

(declare-fun m!1284353 () Bool)

(assert (=> b!1397473 m!1284353))

(declare-fun m!1284355 () Bool)

(assert (=> b!1397473 m!1284355))

(declare-fun m!1284357 () Bool)

(assert (=> b!1397473 m!1284357))

(assert (=> b!1397468 m!1284337))

(declare-fun m!1284359 () Bool)

(assert (=> b!1397468 m!1284359))

(assert (=> b!1397468 m!1284337))

(declare-fun m!1284361 () Bool)

(assert (=> b!1397468 m!1284361))

(assert (=> b!1397468 m!1284337))

(declare-fun m!1284363 () Bool)

(assert (=> b!1397468 m!1284363))

(declare-fun m!1284365 () Bool)

(assert (=> b!1397468 m!1284365))

(declare-fun m!1284367 () Bool)

(assert (=> b!1397471 m!1284367))

(assert (=> b!1397471 m!1284367))

(declare-fun m!1284369 () Bool)

(assert (=> b!1397471 m!1284369))

(check-sat (not b!1397468) (not b!1397471) (not b!1397472) (not b!1397475) (not b!1397469) (not start!120084) (not b!1397474) (not b!1397473) (not b!1397470))
(check-sat)
