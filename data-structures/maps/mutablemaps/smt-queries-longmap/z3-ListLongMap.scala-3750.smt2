; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51514 () Bool)

(assert start!51514)

(declare-fun b!563090 () Bool)

(declare-fun res!354393 () Bool)

(declare-fun e!324517 () Bool)

(assert (=> b!563090 (=> (not res!354393) (not e!324517))))

(declare-datatypes ((array!35333 0))(
  ( (array!35334 (arr!16963 (Array (_ BitVec 32) (_ BitVec 64))) (size!17327 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35333)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563090 (= res!354393 (validKeyInArray!0 (select (arr!16963 a!3118) j!142)))))

(declare-fun b!563091 () Bool)

(declare-fun res!354395 () Bool)

(declare-fun e!324514 () Bool)

(assert (=> b!563091 (=> (not res!354395) (not e!324514))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5419 0))(
  ( (MissingZero!5419 (index!23903 (_ BitVec 32))) (Found!5419 (index!23904 (_ BitVec 32))) (Intermediate!5419 (undefined!6231 Bool) (index!23905 (_ BitVec 32)) (x!52821 (_ BitVec 32))) (Undefined!5419) (MissingVacant!5419 (index!23906 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35333 (_ BitVec 32)) SeekEntryResult!5419)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563091 (= res!354395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16963 a!3118) j!142) mask!3119) (select (arr!16963 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16963 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16963 a!3118) i!1132 k0!1914) j!142) (array!35334 (store (arr!16963 a!3118) i!1132 k0!1914) (size!17327 a!3118)) mask!3119)))))

(declare-fun b!563092 () Bool)

(declare-fun res!354392 () Bool)

(assert (=> b!563092 (=> (not res!354392) (not e!324517))))

(declare-fun arrayContainsKey!0 (array!35333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563092 (= res!354392 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563093 () Bool)

(declare-fun e!324515 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35333 (_ BitVec 32)) SeekEntryResult!5419)

(assert (=> b!563093 (= e!324515 (= (seekEntryOrOpen!0 (select (arr!16963 a!3118) j!142) a!3118 mask!3119) (Found!5419 j!142)))))

(declare-fun b!563094 () Bool)

(declare-fun res!354401 () Bool)

(assert (=> b!563094 (=> (not res!354401) (not e!324514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35333 (_ BitVec 32)) Bool)

(assert (=> b!563094 (= res!354401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!354396 () Bool)

(assert (=> start!51514 (=> (not res!354396) (not e!324517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51514 (= res!354396 (validMask!0 mask!3119))))

(assert (=> start!51514 e!324517))

(assert (=> start!51514 true))

(declare-fun array_inv!12737 (array!35333) Bool)

(assert (=> start!51514 (array_inv!12737 a!3118)))

(declare-fun b!563095 () Bool)

(declare-fun res!354398 () Bool)

(assert (=> b!563095 (=> (not res!354398) (not e!324517))))

(assert (=> b!563095 (= res!354398 (and (= (size!17327 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17327 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17327 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563096 () Bool)

(assert (=> b!563096 (= e!324514 (not true))))

(assert (=> b!563096 e!324515))

(declare-fun res!354399 () Bool)

(assert (=> b!563096 (=> (not res!354399) (not e!324515))))

(assert (=> b!563096 (= res!354399 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17612 0))(
  ( (Unit!17613) )
))
(declare-fun lt!257129 () Unit!17612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17612)

(assert (=> b!563096 (= lt!257129 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563097 () Bool)

(assert (=> b!563097 (= e!324517 e!324514)))

(declare-fun res!354397 () Bool)

(assert (=> b!563097 (=> (not res!354397) (not e!324514))))

(declare-fun lt!257128 () SeekEntryResult!5419)

(assert (=> b!563097 (= res!354397 (or (= lt!257128 (MissingZero!5419 i!1132)) (= lt!257128 (MissingVacant!5419 i!1132))))))

(assert (=> b!563097 (= lt!257128 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563098 () Bool)

(declare-fun res!354394 () Bool)

(assert (=> b!563098 (=> (not res!354394) (not e!324514))))

(declare-datatypes ((List!11096 0))(
  ( (Nil!11093) (Cons!11092 (h!12095 (_ BitVec 64)) (t!17332 List!11096)) )
))
(declare-fun arrayNoDuplicates!0 (array!35333 (_ BitVec 32) List!11096) Bool)

(assert (=> b!563098 (= res!354394 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11093))))

(declare-fun b!563099 () Bool)

(declare-fun res!354400 () Bool)

(assert (=> b!563099 (=> (not res!354400) (not e!324517))))

(assert (=> b!563099 (= res!354400 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51514 res!354396) b!563095))

(assert (= (and b!563095 res!354398) b!563090))

(assert (= (and b!563090 res!354393) b!563099))

(assert (= (and b!563099 res!354400) b!563092))

(assert (= (and b!563092 res!354392) b!563097))

(assert (= (and b!563097 res!354397) b!563094))

(assert (= (and b!563094 res!354401) b!563098))

(assert (= (and b!563098 res!354394) b!563091))

(assert (= (and b!563091 res!354395) b!563096))

(assert (= (and b!563096 res!354399) b!563093))

(declare-fun m!541441 () Bool)

(assert (=> b!563093 m!541441))

(assert (=> b!563093 m!541441))

(declare-fun m!541443 () Bool)

(assert (=> b!563093 m!541443))

(declare-fun m!541445 () Bool)

(assert (=> b!563099 m!541445))

(assert (=> b!563091 m!541441))

(declare-fun m!541447 () Bool)

(assert (=> b!563091 m!541447))

(assert (=> b!563091 m!541441))

(declare-fun m!541449 () Bool)

(assert (=> b!563091 m!541449))

(declare-fun m!541451 () Bool)

(assert (=> b!563091 m!541451))

(assert (=> b!563091 m!541449))

(declare-fun m!541453 () Bool)

(assert (=> b!563091 m!541453))

(assert (=> b!563091 m!541447))

(assert (=> b!563091 m!541441))

(declare-fun m!541455 () Bool)

(assert (=> b!563091 m!541455))

(declare-fun m!541457 () Bool)

(assert (=> b!563091 m!541457))

(assert (=> b!563091 m!541449))

(assert (=> b!563091 m!541451))

(declare-fun m!541459 () Bool)

(assert (=> b!563092 m!541459))

(declare-fun m!541461 () Bool)

(assert (=> b!563097 m!541461))

(declare-fun m!541463 () Bool)

(assert (=> b!563096 m!541463))

(declare-fun m!541465 () Bool)

(assert (=> b!563096 m!541465))

(assert (=> b!563090 m!541441))

(assert (=> b!563090 m!541441))

(declare-fun m!541467 () Bool)

(assert (=> b!563090 m!541467))

(declare-fun m!541469 () Bool)

(assert (=> start!51514 m!541469))

(declare-fun m!541471 () Bool)

(assert (=> start!51514 m!541471))

(declare-fun m!541473 () Bool)

(assert (=> b!563094 m!541473))

(declare-fun m!541475 () Bool)

(assert (=> b!563098 m!541475))

(check-sat (not b!563090) (not b!563098) (not b!563094) (not b!563099) (not b!563093) (not b!563092) (not b!563097) (not start!51514) (not b!563091) (not b!563096))
(check-sat)
