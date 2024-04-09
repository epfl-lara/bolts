; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46286 () Bool)

(assert start!46286)

(declare-fun b!512427 () Bool)

(declare-fun res!313244 () Bool)

(declare-fun e!299234 () Bool)

(assert (=> b!512427 (=> (not res!313244) (not e!299234))))

(declare-datatypes ((array!32900 0))(
  ( (array!32901 (arr!15824 (Array (_ BitVec 32) (_ BitVec 64))) (size!16188 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32900)

(declare-datatypes ((List!10035 0))(
  ( (Nil!10032) (Cons!10031 (h!10911 (_ BitVec 64)) (t!16271 List!10035)) )
))
(declare-fun arrayNoDuplicates!0 (array!32900 (_ BitVec 32) List!10035) Bool)

(assert (=> b!512427 (= res!313244 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10032))))

(declare-fun b!512428 () Bool)

(declare-fun res!313241 () Bool)

(assert (=> b!512428 (=> (not res!313241) (not e!299234))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32900 (_ BitVec 32)) Bool)

(assert (=> b!512428 (= res!313241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512429 () Bool)

(declare-fun res!313242 () Bool)

(declare-fun e!299235 () Bool)

(assert (=> b!512429 (=> (not res!313242) (not e!299235))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512429 (= res!313242 (validKeyInArray!0 (select (arr!15824 a!3235) j!176)))))

(declare-fun b!512430 () Bool)

(declare-fun res!313239 () Bool)

(assert (=> b!512430 (=> (not res!313239) (not e!299235))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512430 (= res!313239 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512431 () Bool)

(declare-fun res!313240 () Bool)

(assert (=> b!512431 (=> (not res!313240) (not e!299235))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512431 (= res!313240 (and (= (size!16188 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16188 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16188 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!299233 () Bool)

(declare-fun b!512432 () Bool)

(declare-datatypes ((SeekEntryResult!4298 0))(
  ( (MissingZero!4298 (index!19380 (_ BitVec 32))) (Found!4298 (index!19381 (_ BitVec 32))) (Intermediate!4298 (undefined!5110 Bool) (index!19382 (_ BitVec 32)) (x!48348 (_ BitVec 32))) (Undefined!4298) (MissingVacant!4298 (index!19383 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32900 (_ BitVec 32)) SeekEntryResult!4298)

(assert (=> b!512432 (= e!299233 (= (seekEntryOrOpen!0 (select (arr!15824 a!3235) j!176) a!3235 mask!3524) (Found!4298 j!176)))))

(declare-fun res!313245 () Bool)

(assert (=> start!46286 (=> (not res!313245) (not e!299235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46286 (= res!313245 (validMask!0 mask!3524))))

(assert (=> start!46286 e!299235))

(assert (=> start!46286 true))

(declare-fun array_inv!11598 (array!32900) Bool)

(assert (=> start!46286 (array_inv!11598 a!3235)))

(declare-fun b!512433 () Bool)

(assert (=> b!512433 (= e!299234 (not true))))

(declare-fun lt!234659 () (_ BitVec 32))

(declare-fun lt!234657 () SeekEntryResult!4298)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32900 (_ BitVec 32)) SeekEntryResult!4298)

(assert (=> b!512433 (= lt!234657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234659 (select (store (arr!15824 a!3235) i!1204 k!2280) j!176) (array!32901 (store (arr!15824 a!3235) i!1204 k!2280) (size!16188 a!3235)) mask!3524))))

(declare-fun lt!234661 () SeekEntryResult!4298)

(declare-fun lt!234660 () (_ BitVec 32))

(assert (=> b!512433 (= lt!234661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234660 (select (arr!15824 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512433 (= lt!234659 (toIndex!0 (select (store (arr!15824 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512433 (= lt!234660 (toIndex!0 (select (arr!15824 a!3235) j!176) mask!3524))))

(assert (=> b!512433 e!299233))

(declare-fun res!313247 () Bool)

(assert (=> b!512433 (=> (not res!313247) (not e!299233))))

(assert (=> b!512433 (= res!313247 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15846 0))(
  ( (Unit!15847) )
))
(declare-fun lt!234662 () Unit!15846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15846)

(assert (=> b!512433 (= lt!234662 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512434 () Bool)

(declare-fun res!313246 () Bool)

(assert (=> b!512434 (=> (not res!313246) (not e!299235))))

(assert (=> b!512434 (= res!313246 (validKeyInArray!0 k!2280))))

(declare-fun b!512435 () Bool)

(assert (=> b!512435 (= e!299235 e!299234)))

(declare-fun res!313243 () Bool)

(assert (=> b!512435 (=> (not res!313243) (not e!299234))))

(declare-fun lt!234658 () SeekEntryResult!4298)

(assert (=> b!512435 (= res!313243 (or (= lt!234658 (MissingZero!4298 i!1204)) (= lt!234658 (MissingVacant!4298 i!1204))))))

(assert (=> b!512435 (= lt!234658 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!46286 res!313245) b!512431))

(assert (= (and b!512431 res!313240) b!512429))

(assert (= (and b!512429 res!313242) b!512434))

(assert (= (and b!512434 res!313246) b!512430))

(assert (= (and b!512430 res!313239) b!512435))

(assert (= (and b!512435 res!313243) b!512428))

(assert (= (and b!512428 res!313241) b!512427))

(assert (= (and b!512427 res!313244) b!512433))

(assert (= (and b!512433 res!313247) b!512432))

(declare-fun m!494167 () Bool)

(assert (=> b!512434 m!494167))

(declare-fun m!494169 () Bool)

(assert (=> b!512433 m!494169))

(declare-fun m!494171 () Bool)

(assert (=> b!512433 m!494171))

(declare-fun m!494173 () Bool)

(assert (=> b!512433 m!494173))

(declare-fun m!494175 () Bool)

(assert (=> b!512433 m!494175))

(declare-fun m!494177 () Bool)

(assert (=> b!512433 m!494177))

(assert (=> b!512433 m!494173))

(declare-fun m!494179 () Bool)

(assert (=> b!512433 m!494179))

(assert (=> b!512433 m!494173))

(declare-fun m!494181 () Bool)

(assert (=> b!512433 m!494181))

(assert (=> b!512433 m!494175))

(declare-fun m!494183 () Bool)

(assert (=> b!512433 m!494183))

(assert (=> b!512433 m!494175))

(declare-fun m!494185 () Bool)

(assert (=> b!512433 m!494185))

(declare-fun m!494187 () Bool)

(assert (=> b!512427 m!494187))

(assert (=> b!512429 m!494175))

(assert (=> b!512429 m!494175))

(declare-fun m!494189 () Bool)

(assert (=> b!512429 m!494189))

(declare-fun m!494191 () Bool)

(assert (=> b!512430 m!494191))

(declare-fun m!494193 () Bool)

(assert (=> start!46286 m!494193))

(declare-fun m!494195 () Bool)

(assert (=> start!46286 m!494195))

(assert (=> b!512432 m!494175))

(assert (=> b!512432 m!494175))

(declare-fun m!494197 () Bool)

(assert (=> b!512432 m!494197))

(declare-fun m!494199 () Bool)

(assert (=> b!512435 m!494199))

(declare-fun m!494201 () Bool)

(assert (=> b!512428 m!494201))

(push 1)

