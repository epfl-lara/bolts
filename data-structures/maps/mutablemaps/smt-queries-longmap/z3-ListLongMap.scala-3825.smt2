; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52456 () Bool)

(assert start!52456)

(declare-fun b!572309 () Bool)

(declare-fun res!361972 () Bool)

(declare-fun e!329213 () Bool)

(assert (=> b!572309 (=> (not res!361972) (not e!329213))))

(declare-datatypes ((array!35807 0))(
  ( (array!35808 (arr!17188 (Array (_ BitVec 32) (_ BitVec 64))) (size!17552 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35807)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35807 (_ BitVec 32)) Bool)

(assert (=> b!572309 (= res!361972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572310 () Bool)

(declare-fun res!361973 () Bool)

(declare-fun e!329214 () Bool)

(assert (=> b!572310 (=> (not res!361973) (not e!329214))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572310 (= res!361973 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572311 () Bool)

(declare-fun e!329208 () Bool)

(assert (=> b!572311 (= e!329213 e!329208)))

(declare-fun res!361976 () Bool)

(assert (=> b!572311 (=> (not res!361976) (not e!329208))))

(declare-fun lt!261248 () (_ BitVec 32))

(declare-fun lt!261245 () (_ BitVec 64))

(declare-fun lt!261249 () array!35807)

(declare-datatypes ((SeekEntryResult!5644 0))(
  ( (MissingZero!5644 (index!24803 (_ BitVec 32))) (Found!5644 (index!24804 (_ BitVec 32))) (Intermediate!5644 (undefined!6456 Bool) (index!24805 (_ BitVec 32)) (x!53700 (_ BitVec 32))) (Undefined!5644) (MissingVacant!5644 (index!24806 (_ BitVec 32))) )
))
(declare-fun lt!261250 () SeekEntryResult!5644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35807 (_ BitVec 32)) SeekEntryResult!5644)

(assert (=> b!572311 (= res!361976 (= lt!261250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261248 lt!261245 lt!261249 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261243 () (_ BitVec 32))

(assert (=> b!572311 (= lt!261250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261243 (select (arr!17188 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572311 (= lt!261248 (toIndex!0 lt!261245 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572311 (= lt!261245 (select (store (arr!17188 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572311 (= lt!261243 (toIndex!0 (select (arr!17188 a!3118) j!142) mask!3119))))

(assert (=> b!572311 (= lt!261249 (array!35808 (store (arr!17188 a!3118) i!1132 k0!1914) (size!17552 a!3118)))))

(declare-fun b!572313 () Bool)

(declare-fun res!361978 () Bool)

(assert (=> b!572313 (=> (not res!361978) (not e!329214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572313 (= res!361978 (validKeyInArray!0 k0!1914))))

(declare-fun b!572314 () Bool)

(declare-fun e!329211 () Bool)

(declare-fun e!329210 () Bool)

(assert (=> b!572314 (= e!329211 e!329210)))

(declare-fun res!361974 () Bool)

(assert (=> b!572314 (=> (not res!361974) (not e!329210))))

(declare-fun lt!261244 () SeekEntryResult!5644)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35807 (_ BitVec 32)) SeekEntryResult!5644)

(assert (=> b!572314 (= res!361974 (= lt!261244 (seekKeyOrZeroReturnVacant!0 (x!53700 lt!261250) (index!24805 lt!261250) (index!24805 lt!261250) (select (arr!17188 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572315 () Bool)

(declare-fun res!361970 () Bool)

(assert (=> b!572315 (=> (not res!361970) (not e!329214))))

(assert (=> b!572315 (= res!361970 (validKeyInArray!0 (select (arr!17188 a!3118) j!142)))))

(declare-fun b!572316 () Bool)

(declare-fun e!329215 () Bool)

(declare-fun e!329209 () Bool)

(assert (=> b!572316 (= e!329215 e!329209)))

(declare-fun res!361977 () Bool)

(assert (=> b!572316 (=> res!361977 e!329209)))

(get-info :version)

(assert (=> b!572316 (= res!361977 (or (undefined!6456 lt!261250) (not ((_ is Intermediate!5644) lt!261250))))))

(declare-fun b!572317 () Bool)

(assert (=> b!572317 (= e!329214 e!329213)))

(declare-fun res!361971 () Bool)

(assert (=> b!572317 (=> (not res!361971) (not e!329213))))

(declare-fun lt!261247 () SeekEntryResult!5644)

(assert (=> b!572317 (= res!361971 (or (= lt!261247 (MissingZero!5644 i!1132)) (= lt!261247 (MissingVacant!5644 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35807 (_ BitVec 32)) SeekEntryResult!5644)

(assert (=> b!572317 (= lt!261247 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!361967 () Bool)

(assert (=> start!52456 (=> (not res!361967) (not e!329214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52456 (= res!361967 (validMask!0 mask!3119))))

(assert (=> start!52456 e!329214))

(assert (=> start!52456 true))

(declare-fun array_inv!12962 (array!35807) Bool)

(assert (=> start!52456 (array_inv!12962 a!3118)))

(declare-fun b!572312 () Bool)

(declare-fun res!361968 () Bool)

(assert (=> b!572312 (=> (not res!361968) (not e!329213))))

(declare-datatypes ((List!11321 0))(
  ( (Nil!11318) (Cons!11317 (h!12344 (_ BitVec 64)) (t!17557 List!11321)) )
))
(declare-fun arrayNoDuplicates!0 (array!35807 (_ BitVec 32) List!11321) Bool)

(assert (=> b!572312 (= res!361968 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11318))))

(declare-fun b!572318 () Bool)

(assert (=> b!572318 (= e!329210 (= (seekEntryOrOpen!0 lt!261245 lt!261249 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53700 lt!261250) (index!24805 lt!261250) (index!24805 lt!261250) lt!261245 lt!261249 mask!3119)))))

(declare-fun b!572319 () Bool)

(assert (=> b!572319 (= e!329208 (not true))))

(assert (=> b!572319 e!329215))

(declare-fun res!361969 () Bool)

(assert (=> b!572319 (=> (not res!361969) (not e!329215))))

(assert (=> b!572319 (= res!361969 (= lt!261244 (Found!5644 j!142)))))

(assert (=> b!572319 (= lt!261244 (seekEntryOrOpen!0 (select (arr!17188 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572319 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17990 0))(
  ( (Unit!17991) )
))
(declare-fun lt!261246 () Unit!17990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17990)

(assert (=> b!572319 (= lt!261246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572320 () Bool)

(assert (=> b!572320 (= e!329209 e!329211)))

(declare-fun res!361975 () Bool)

(assert (=> b!572320 (=> res!361975 e!329211)))

(declare-fun lt!261251 () (_ BitVec 64))

(assert (=> b!572320 (= res!361975 (or (= lt!261251 (select (arr!17188 a!3118) j!142)) (= lt!261251 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572320 (= lt!261251 (select (arr!17188 a!3118) (index!24805 lt!261250)))))

(declare-fun b!572321 () Bool)

(declare-fun res!361979 () Bool)

(assert (=> b!572321 (=> (not res!361979) (not e!329214))))

(assert (=> b!572321 (= res!361979 (and (= (size!17552 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17552 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17552 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52456 res!361967) b!572321))

(assert (= (and b!572321 res!361979) b!572315))

(assert (= (and b!572315 res!361970) b!572313))

(assert (= (and b!572313 res!361978) b!572310))

(assert (= (and b!572310 res!361973) b!572317))

(assert (= (and b!572317 res!361971) b!572309))

(assert (= (and b!572309 res!361972) b!572312))

(assert (= (and b!572312 res!361968) b!572311))

(assert (= (and b!572311 res!361976) b!572319))

(assert (= (and b!572319 res!361969) b!572316))

(assert (= (and b!572316 (not res!361977)) b!572320))

(assert (= (and b!572320 (not res!361975)) b!572314))

(assert (= (and b!572314 res!361974) b!572318))

(declare-fun m!551331 () Bool)

(assert (=> b!572311 m!551331))

(declare-fun m!551333 () Bool)

(assert (=> b!572311 m!551333))

(declare-fun m!551335 () Bool)

(assert (=> b!572311 m!551335))

(assert (=> b!572311 m!551331))

(declare-fun m!551337 () Bool)

(assert (=> b!572311 m!551337))

(declare-fun m!551339 () Bool)

(assert (=> b!572311 m!551339))

(declare-fun m!551341 () Bool)

(assert (=> b!572311 m!551341))

(assert (=> b!572311 m!551331))

(declare-fun m!551343 () Bool)

(assert (=> b!572311 m!551343))

(declare-fun m!551345 () Bool)

(assert (=> b!572310 m!551345))

(assert (=> b!572320 m!551331))

(declare-fun m!551347 () Bool)

(assert (=> b!572320 m!551347))

(assert (=> b!572319 m!551331))

(assert (=> b!572319 m!551331))

(declare-fun m!551349 () Bool)

(assert (=> b!572319 m!551349))

(declare-fun m!551351 () Bool)

(assert (=> b!572319 m!551351))

(declare-fun m!551353 () Bool)

(assert (=> b!572319 m!551353))

(declare-fun m!551355 () Bool)

(assert (=> b!572318 m!551355))

(declare-fun m!551357 () Bool)

(assert (=> b!572318 m!551357))

(declare-fun m!551359 () Bool)

(assert (=> start!52456 m!551359))

(declare-fun m!551361 () Bool)

(assert (=> start!52456 m!551361))

(declare-fun m!551363 () Bool)

(assert (=> b!572313 m!551363))

(assert (=> b!572314 m!551331))

(assert (=> b!572314 m!551331))

(declare-fun m!551365 () Bool)

(assert (=> b!572314 m!551365))

(declare-fun m!551367 () Bool)

(assert (=> b!572312 m!551367))

(assert (=> b!572315 m!551331))

(assert (=> b!572315 m!551331))

(declare-fun m!551369 () Bool)

(assert (=> b!572315 m!551369))

(declare-fun m!551371 () Bool)

(assert (=> b!572317 m!551371))

(declare-fun m!551373 () Bool)

(assert (=> b!572309 m!551373))

(check-sat (not start!52456) (not b!572314) (not b!572315) (not b!572319) (not b!572318) (not b!572317) (not b!572310) (not b!572309) (not b!572312) (not b!572313) (not b!572311))
(check-sat)
