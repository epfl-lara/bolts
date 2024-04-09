; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52462 () Bool)

(assert start!52462)

(declare-fun b!572426 () Bool)

(declare-fun res!362096 () Bool)

(declare-fun e!329287 () Bool)

(assert (=> b!572426 (=> (not res!362096) (not e!329287))))

(declare-datatypes ((array!35813 0))(
  ( (array!35814 (arr!17191 (Array (_ BitVec 32) (_ BitVec 64))) (size!17555 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35813)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572426 (= res!362096 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5647 0))(
  ( (MissingZero!5647 (index!24815 (_ BitVec 32))) (Found!5647 (index!24816 (_ BitVec 32))) (Intermediate!5647 (undefined!6459 Bool) (index!24817 (_ BitVec 32)) (x!53711 (_ BitVec 32))) (Undefined!5647) (MissingVacant!5647 (index!24818 (_ BitVec 32))) )
))
(declare-fun lt!261324 () SeekEntryResult!5647)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!329280 () Bool)

(declare-fun lt!261329 () (_ BitVec 64))

(declare-fun lt!261326 () array!35813)

(declare-fun b!572427 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35813 (_ BitVec 32)) SeekEntryResult!5647)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35813 (_ BitVec 32)) SeekEntryResult!5647)

(assert (=> b!572427 (= e!329280 (= (seekEntryOrOpen!0 lt!261329 lt!261326 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53711 lt!261324) (index!24817 lt!261324) (index!24817 lt!261324) lt!261329 lt!261326 mask!3119)))))

(declare-fun b!572428 () Bool)

(declare-fun e!329281 () Bool)

(assert (=> b!572428 (= e!329281 (not true))))

(declare-fun e!329283 () Bool)

(assert (=> b!572428 e!329283))

(declare-fun res!362093 () Bool)

(assert (=> b!572428 (=> (not res!362093) (not e!329283))))

(declare-fun lt!261330 () SeekEntryResult!5647)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!572428 (= res!362093 (= lt!261330 (Found!5647 j!142)))))

(assert (=> b!572428 (= lt!261330 (seekEntryOrOpen!0 (select (arr!17191 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35813 (_ BitVec 32)) Bool)

(assert (=> b!572428 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17996 0))(
  ( (Unit!17997) )
))
(declare-fun lt!261331 () Unit!17996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17996)

(assert (=> b!572428 (= lt!261331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572429 () Bool)

(declare-fun e!329282 () Bool)

(assert (=> b!572429 (= e!329282 e!329281)))

(declare-fun res!362090 () Bool)

(assert (=> b!572429 (=> (not res!362090) (not e!329281))))

(declare-fun lt!261328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35813 (_ BitVec 32)) SeekEntryResult!5647)

(assert (=> b!572429 (= res!362090 (= lt!261324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261328 lt!261329 lt!261326 mask!3119)))))

(declare-fun lt!261325 () (_ BitVec 32))

(assert (=> b!572429 (= lt!261324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261325 (select (arr!17191 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572429 (= lt!261328 (toIndex!0 lt!261329 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572429 (= lt!261329 (select (store (arr!17191 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572429 (= lt!261325 (toIndex!0 (select (arr!17191 a!3118) j!142) mask!3119))))

(assert (=> b!572429 (= lt!261326 (array!35814 (store (arr!17191 a!3118) i!1132 k0!1914) (size!17555 a!3118)))))

(declare-fun b!572430 () Bool)

(assert (=> b!572430 (= e!329287 e!329282)))

(declare-fun res!362095 () Bool)

(assert (=> b!572430 (=> (not res!362095) (not e!329282))))

(declare-fun lt!261327 () SeekEntryResult!5647)

(assert (=> b!572430 (= res!362095 (or (= lt!261327 (MissingZero!5647 i!1132)) (= lt!261327 (MissingVacant!5647 i!1132))))))

(assert (=> b!572430 (= lt!261327 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572431 () Bool)

(declare-fun e!329286 () Bool)

(declare-fun e!329284 () Bool)

(assert (=> b!572431 (= e!329286 e!329284)))

(declare-fun res!362088 () Bool)

(assert (=> b!572431 (=> res!362088 e!329284)))

(declare-fun lt!261332 () (_ BitVec 64))

(assert (=> b!572431 (= res!362088 (or (= lt!261332 (select (arr!17191 a!3118) j!142)) (= lt!261332 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572431 (= lt!261332 (select (arr!17191 a!3118) (index!24817 lt!261324)))))

(declare-fun res!362094 () Bool)

(assert (=> start!52462 (=> (not res!362094) (not e!329287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52462 (= res!362094 (validMask!0 mask!3119))))

(assert (=> start!52462 e!329287))

(assert (=> start!52462 true))

(declare-fun array_inv!12965 (array!35813) Bool)

(assert (=> start!52462 (array_inv!12965 a!3118)))

(declare-fun b!572432 () Bool)

(declare-fun res!362089 () Bool)

(assert (=> b!572432 (=> (not res!362089) (not e!329287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572432 (= res!362089 (validKeyInArray!0 (select (arr!17191 a!3118) j!142)))))

(declare-fun b!572433 () Bool)

(assert (=> b!572433 (= e!329284 e!329280)))

(declare-fun res!362092 () Bool)

(assert (=> b!572433 (=> (not res!362092) (not e!329280))))

(assert (=> b!572433 (= res!362092 (= lt!261330 (seekKeyOrZeroReturnVacant!0 (x!53711 lt!261324) (index!24817 lt!261324) (index!24817 lt!261324) (select (arr!17191 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572434 () Bool)

(assert (=> b!572434 (= e!329283 e!329286)))

(declare-fun res!362086 () Bool)

(assert (=> b!572434 (=> res!362086 e!329286)))

(get-info :version)

(assert (=> b!572434 (= res!362086 (or (undefined!6459 lt!261324) (not ((_ is Intermediate!5647) lt!261324))))))

(declare-fun b!572435 () Bool)

(declare-fun res!362084 () Bool)

(assert (=> b!572435 (=> (not res!362084) (not e!329282))))

(declare-datatypes ((List!11324 0))(
  ( (Nil!11321) (Cons!11320 (h!12347 (_ BitVec 64)) (t!17560 List!11324)) )
))
(declare-fun arrayNoDuplicates!0 (array!35813 (_ BitVec 32) List!11324) Bool)

(assert (=> b!572435 (= res!362084 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11321))))

(declare-fun b!572436 () Bool)

(declare-fun res!362085 () Bool)

(assert (=> b!572436 (=> (not res!362085) (not e!329287))))

(assert (=> b!572436 (= res!362085 (validKeyInArray!0 k0!1914))))

(declare-fun b!572437 () Bool)

(declare-fun res!362091 () Bool)

(assert (=> b!572437 (=> (not res!362091) (not e!329282))))

(assert (=> b!572437 (= res!362091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572438 () Bool)

(declare-fun res!362087 () Bool)

(assert (=> b!572438 (=> (not res!362087) (not e!329287))))

(assert (=> b!572438 (= res!362087 (and (= (size!17555 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17555 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17555 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52462 res!362094) b!572438))

(assert (= (and b!572438 res!362087) b!572432))

(assert (= (and b!572432 res!362089) b!572436))

(assert (= (and b!572436 res!362085) b!572426))

(assert (= (and b!572426 res!362096) b!572430))

(assert (= (and b!572430 res!362095) b!572437))

(assert (= (and b!572437 res!362091) b!572435))

(assert (= (and b!572435 res!362084) b!572429))

(assert (= (and b!572429 res!362090) b!572428))

(assert (= (and b!572428 res!362093) b!572434))

(assert (= (and b!572434 (not res!362086)) b!572431))

(assert (= (and b!572431 (not res!362088)) b!572433))

(assert (= (and b!572433 res!362092) b!572427))

(declare-fun m!551463 () Bool)

(assert (=> b!572429 m!551463))

(declare-fun m!551465 () Bool)

(assert (=> b!572429 m!551465))

(assert (=> b!572429 m!551463))

(declare-fun m!551467 () Bool)

(assert (=> b!572429 m!551467))

(declare-fun m!551469 () Bool)

(assert (=> b!572429 m!551469))

(assert (=> b!572429 m!551463))

(declare-fun m!551471 () Bool)

(assert (=> b!572429 m!551471))

(declare-fun m!551473 () Bool)

(assert (=> b!572429 m!551473))

(declare-fun m!551475 () Bool)

(assert (=> b!572429 m!551475))

(declare-fun m!551477 () Bool)

(assert (=> b!572437 m!551477))

(assert (=> b!572433 m!551463))

(assert (=> b!572433 m!551463))

(declare-fun m!551479 () Bool)

(assert (=> b!572433 m!551479))

(assert (=> b!572428 m!551463))

(assert (=> b!572428 m!551463))

(declare-fun m!551481 () Bool)

(assert (=> b!572428 m!551481))

(declare-fun m!551483 () Bool)

(assert (=> b!572428 m!551483))

(declare-fun m!551485 () Bool)

(assert (=> b!572428 m!551485))

(declare-fun m!551487 () Bool)

(assert (=> b!572427 m!551487))

(declare-fun m!551489 () Bool)

(assert (=> b!572427 m!551489))

(declare-fun m!551491 () Bool)

(assert (=> start!52462 m!551491))

(declare-fun m!551493 () Bool)

(assert (=> start!52462 m!551493))

(declare-fun m!551495 () Bool)

(assert (=> b!572436 m!551495))

(declare-fun m!551497 () Bool)

(assert (=> b!572430 m!551497))

(assert (=> b!572432 m!551463))

(assert (=> b!572432 m!551463))

(declare-fun m!551499 () Bool)

(assert (=> b!572432 m!551499))

(declare-fun m!551501 () Bool)

(assert (=> b!572426 m!551501))

(declare-fun m!551503 () Bool)

(assert (=> b!572435 m!551503))

(assert (=> b!572431 m!551463))

(declare-fun m!551505 () Bool)

(assert (=> b!572431 m!551505))

(check-sat (not b!572432) (not b!572433) (not b!572429) (not b!572428) (not b!572430) (not start!52462) (not b!572426) (not b!572436) (not b!572427) (not b!572435) (not b!572437))
(check-sat)
