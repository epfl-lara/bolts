; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49350 () Bool)

(assert start!49350)

(declare-fun b!543315 () Bool)

(declare-fun res!338026 () Bool)

(declare-fun e!314216 () Bool)

(assert (=> b!543315 (=> (not res!338026) (not e!314216))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34314 0))(
  ( (array!34315 (arr!16486 (Array (_ BitVec 32) (_ BitVec 64))) (size!16850 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34314)

(assert (=> b!543315 (= res!338026 (and (not (= (select (arr!16486 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16486 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16486 a!3154) index!1177) (select (arr!16486 a!3154) j!147)))))))

(declare-fun res!338022 () Bool)

(declare-fun e!314215 () Bool)

(assert (=> start!49350 (=> (not res!338022) (not e!314215))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49350 (= res!338022 (validMask!0 mask!3216))))

(assert (=> start!49350 e!314215))

(assert (=> start!49350 true))

(declare-fun array_inv!12260 (array!34314) Bool)

(assert (=> start!49350 (array_inv!12260 a!3154)))

(declare-fun b!543316 () Bool)

(assert (=> b!543316 (= e!314216 false)))

(declare-fun lt!248151 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543316 (= lt!248151 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543317 () Bool)

(declare-fun res!338024 () Bool)

(assert (=> b!543317 (=> (not res!338024) (not e!314216))))

(declare-datatypes ((SeekEntryResult!4951 0))(
  ( (MissingZero!4951 (index!22028 (_ BitVec 32))) (Found!4951 (index!22029 (_ BitVec 32))) (Intermediate!4951 (undefined!5763 Bool) (index!22030 (_ BitVec 32)) (x!50961 (_ BitVec 32))) (Undefined!4951) (MissingVacant!4951 (index!22031 (_ BitVec 32))) )
))
(declare-fun lt!248152 () SeekEntryResult!4951)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34314 (_ BitVec 32)) SeekEntryResult!4951)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543317 (= res!338024 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16486 a!3154) j!147) mask!3216) (select (arr!16486 a!3154) j!147) a!3154 mask!3216) lt!248152))))

(declare-fun b!543318 () Bool)

(declare-fun e!314218 () Bool)

(assert (=> b!543318 (= e!314215 e!314218)))

(declare-fun res!338023 () Bool)

(assert (=> b!543318 (=> (not res!338023) (not e!314218))))

(declare-fun lt!248153 () SeekEntryResult!4951)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543318 (= res!338023 (or (= lt!248153 (MissingZero!4951 i!1153)) (= lt!248153 (MissingVacant!4951 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34314 (_ BitVec 32)) SeekEntryResult!4951)

(assert (=> b!543318 (= lt!248153 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543319 () Bool)

(declare-fun res!338017 () Bool)

(assert (=> b!543319 (=> (not res!338017) (not e!314215))))

(assert (=> b!543319 (= res!338017 (and (= (size!16850 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16850 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16850 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543320 () Bool)

(declare-fun res!338021 () Bool)

(assert (=> b!543320 (=> (not res!338021) (not e!314218))))

(declare-datatypes ((List!10658 0))(
  ( (Nil!10655) (Cons!10654 (h!11609 (_ BitVec 64)) (t!16894 List!10658)) )
))
(declare-fun arrayNoDuplicates!0 (array!34314 (_ BitVec 32) List!10658) Bool)

(assert (=> b!543320 (= res!338021 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10655))))

(declare-fun b!543321 () Bool)

(declare-fun res!338027 () Bool)

(assert (=> b!543321 (=> (not res!338027) (not e!314218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34314 (_ BitVec 32)) Bool)

(assert (=> b!543321 (= res!338027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543322 () Bool)

(declare-fun res!338019 () Bool)

(assert (=> b!543322 (=> (not res!338019) (not e!314215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543322 (= res!338019 (validKeyInArray!0 k0!1998))))

(declare-fun b!543323 () Bool)

(declare-fun res!338018 () Bool)

(assert (=> b!543323 (=> (not res!338018) (not e!314215))))

(declare-fun arrayContainsKey!0 (array!34314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543323 (= res!338018 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543324 () Bool)

(assert (=> b!543324 (= e!314218 e!314216)))

(declare-fun res!338016 () Bool)

(assert (=> b!543324 (=> (not res!338016) (not e!314216))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543324 (= res!338016 (= lt!248152 (Intermediate!4951 false resIndex!32 resX!32)))))

(assert (=> b!543324 (= lt!248152 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16486 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543325 () Bool)

(declare-fun res!338025 () Bool)

(assert (=> b!543325 (=> (not res!338025) (not e!314215))))

(assert (=> b!543325 (= res!338025 (validKeyInArray!0 (select (arr!16486 a!3154) j!147)))))

(declare-fun b!543326 () Bool)

(declare-fun res!338020 () Bool)

(assert (=> b!543326 (=> (not res!338020) (not e!314218))))

(assert (=> b!543326 (= res!338020 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16850 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16850 a!3154)) (= (select (arr!16486 a!3154) resIndex!32) (select (arr!16486 a!3154) j!147))))))

(assert (= (and start!49350 res!338022) b!543319))

(assert (= (and b!543319 res!338017) b!543325))

(assert (= (and b!543325 res!338025) b!543322))

(assert (= (and b!543322 res!338019) b!543323))

(assert (= (and b!543323 res!338018) b!543318))

(assert (= (and b!543318 res!338023) b!543321))

(assert (= (and b!543321 res!338027) b!543320))

(assert (= (and b!543320 res!338021) b!543326))

(assert (= (and b!543326 res!338020) b!543324))

(assert (= (and b!543324 res!338016) b!543317))

(assert (= (and b!543317 res!338024) b!543315))

(assert (= (and b!543315 res!338026) b!543316))

(declare-fun m!521431 () Bool)

(assert (=> b!543318 m!521431))

(declare-fun m!521433 () Bool)

(assert (=> b!543317 m!521433))

(assert (=> b!543317 m!521433))

(declare-fun m!521435 () Bool)

(assert (=> b!543317 m!521435))

(assert (=> b!543317 m!521435))

(assert (=> b!543317 m!521433))

(declare-fun m!521437 () Bool)

(assert (=> b!543317 m!521437))

(declare-fun m!521439 () Bool)

(assert (=> b!543326 m!521439))

(assert (=> b!543326 m!521433))

(declare-fun m!521441 () Bool)

(assert (=> b!543316 m!521441))

(declare-fun m!521443 () Bool)

(assert (=> b!543322 m!521443))

(declare-fun m!521445 () Bool)

(assert (=> b!543323 m!521445))

(declare-fun m!521447 () Bool)

(assert (=> b!543320 m!521447))

(declare-fun m!521449 () Bool)

(assert (=> b!543321 m!521449))

(assert (=> b!543325 m!521433))

(assert (=> b!543325 m!521433))

(declare-fun m!521451 () Bool)

(assert (=> b!543325 m!521451))

(declare-fun m!521453 () Bool)

(assert (=> start!49350 m!521453))

(declare-fun m!521455 () Bool)

(assert (=> start!49350 m!521455))

(declare-fun m!521457 () Bool)

(assert (=> b!543315 m!521457))

(assert (=> b!543315 m!521433))

(assert (=> b!543324 m!521433))

(assert (=> b!543324 m!521433))

(declare-fun m!521459 () Bool)

(assert (=> b!543324 m!521459))

(check-sat (not b!543323) (not b!543325) (not b!543322) (not start!49350) (not b!543324) (not b!543320) (not b!543317) (not b!543318) (not b!543321) (not b!543316))
(check-sat)
