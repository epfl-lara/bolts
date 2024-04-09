; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51580 () Bool)

(assert start!51580)

(declare-fun b!564020 () Bool)

(declare-fun e!324925 () Bool)

(assert (=> b!564020 (= e!324925 false)))

(declare-fun lt!257434 () Bool)

(declare-datatypes ((array!35399 0))(
  ( (array!35400 (arr!16996 (Array (_ BitVec 32) (_ BitVec 64))) (size!17360 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35399)

(declare-datatypes ((List!11129 0))(
  ( (Nil!11126) (Cons!11125 (h!12128 (_ BitVec 64)) (t!17365 List!11129)) )
))
(declare-fun arrayNoDuplicates!0 (array!35399 (_ BitVec 32) List!11129) Bool)

(assert (=> b!564020 (= lt!257434 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11126))))

(declare-fun b!564021 () Bool)

(declare-fun res!355322 () Bool)

(declare-fun e!324923 () Bool)

(assert (=> b!564021 (=> (not res!355322) (not e!324923))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564021 (= res!355322 (and (= (size!17360 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17360 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17360 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564022 () Bool)

(declare-fun res!355324 () Bool)

(assert (=> b!564022 (=> (not res!355324) (not e!324923))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564022 (= res!355324 (validKeyInArray!0 k0!1914))))

(declare-fun b!564023 () Bool)

(declare-fun res!355326 () Bool)

(assert (=> b!564023 (=> (not res!355326) (not e!324925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35399 (_ BitVec 32)) Bool)

(assert (=> b!564023 (= res!355326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564024 () Bool)

(declare-fun res!355323 () Bool)

(assert (=> b!564024 (=> (not res!355323) (not e!324923))))

(declare-fun arrayContainsKey!0 (array!35399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564024 (= res!355323 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564025 () Bool)

(assert (=> b!564025 (= e!324923 e!324925)))

(declare-fun res!355327 () Bool)

(assert (=> b!564025 (=> (not res!355327) (not e!324925))))

(declare-datatypes ((SeekEntryResult!5452 0))(
  ( (MissingZero!5452 (index!24035 (_ BitVec 32))) (Found!5452 (index!24036 (_ BitVec 32))) (Intermediate!5452 (undefined!6264 Bool) (index!24037 (_ BitVec 32)) (x!52942 (_ BitVec 32))) (Undefined!5452) (MissingVacant!5452 (index!24038 (_ BitVec 32))) )
))
(declare-fun lt!257435 () SeekEntryResult!5452)

(assert (=> b!564025 (= res!355327 (or (= lt!257435 (MissingZero!5452 i!1132)) (= lt!257435 (MissingVacant!5452 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35399 (_ BitVec 32)) SeekEntryResult!5452)

(assert (=> b!564025 (= lt!257435 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!355325 () Bool)

(assert (=> start!51580 (=> (not res!355325) (not e!324923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51580 (= res!355325 (validMask!0 mask!3119))))

(assert (=> start!51580 e!324923))

(assert (=> start!51580 true))

(declare-fun array_inv!12770 (array!35399) Bool)

(assert (=> start!51580 (array_inv!12770 a!3118)))

(declare-fun b!564026 () Bool)

(declare-fun res!355328 () Bool)

(assert (=> b!564026 (=> (not res!355328) (not e!324923))))

(assert (=> b!564026 (= res!355328 (validKeyInArray!0 (select (arr!16996 a!3118) j!142)))))

(assert (= (and start!51580 res!355325) b!564021))

(assert (= (and b!564021 res!355322) b!564026))

(assert (= (and b!564026 res!355328) b!564022))

(assert (= (and b!564022 res!355324) b!564024))

(assert (= (and b!564024 res!355323) b!564025))

(assert (= (and b!564025 res!355327) b!564023))

(assert (= (and b!564023 res!355326) b!564020))

(declare-fun m!542509 () Bool)

(assert (=> b!564024 m!542509))

(declare-fun m!542511 () Bool)

(assert (=> b!564025 m!542511))

(declare-fun m!542513 () Bool)

(assert (=> b!564020 m!542513))

(declare-fun m!542515 () Bool)

(assert (=> start!51580 m!542515))

(declare-fun m!542517 () Bool)

(assert (=> start!51580 m!542517))

(declare-fun m!542519 () Bool)

(assert (=> b!564023 m!542519))

(declare-fun m!542521 () Bool)

(assert (=> b!564026 m!542521))

(assert (=> b!564026 m!542521))

(declare-fun m!542523 () Bool)

(assert (=> b!564026 m!542523))

(declare-fun m!542525 () Bool)

(assert (=> b!564022 m!542525))

(check-sat (not b!564023) (not start!51580) (not b!564022) (not b!564026) (not b!564024) (not b!564025) (not b!564020))
(check-sat)
