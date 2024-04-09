; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51526 () Bool)

(assert start!51526)

(declare-fun b!563270 () Bool)

(declare-fun res!354576 () Bool)

(declare-fun e!324598 () Bool)

(assert (=> b!563270 (=> (not res!354576) (not e!324598))))

(declare-datatypes ((array!35345 0))(
  ( (array!35346 (arr!16969 (Array (_ BitVec 32) (_ BitVec 64))) (size!17333 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35345)

(declare-datatypes ((List!11102 0))(
  ( (Nil!11099) (Cons!11098 (h!12101 (_ BitVec 64)) (t!17338 List!11102)) )
))
(declare-fun arrayNoDuplicates!0 (array!35345 (_ BitVec 32) List!11102) Bool)

(assert (=> b!563270 (= res!354576 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11099))))

(declare-fun b!563271 () Bool)

(assert (=> b!563271 (= e!324598 (not true))))

(declare-fun e!324595 () Bool)

(assert (=> b!563271 e!324595))

(declare-fun res!354574 () Bool)

(assert (=> b!563271 (=> (not res!354574) (not e!324595))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35345 (_ BitVec 32)) Bool)

(assert (=> b!563271 (= res!354574 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17624 0))(
  ( (Unit!17625) )
))
(declare-fun lt!257200 () Unit!17624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17624)

(assert (=> b!563271 (= lt!257200 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563272 () Bool)

(declare-datatypes ((SeekEntryResult!5425 0))(
  ( (MissingZero!5425 (index!23927 (_ BitVec 32))) (Found!5425 (index!23928 (_ BitVec 32))) (Intermediate!5425 (undefined!6237 Bool) (index!23929 (_ BitVec 32)) (x!52843 (_ BitVec 32))) (Undefined!5425) (MissingVacant!5425 (index!23930 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35345 (_ BitVec 32)) SeekEntryResult!5425)

(assert (=> b!563272 (= e!324595 (= (seekEntryOrOpen!0 (select (arr!16969 a!3118) j!142) a!3118 mask!3119) (Found!5425 j!142)))))

(declare-fun b!563273 () Bool)

(declare-fun e!324596 () Bool)

(assert (=> b!563273 (= e!324596 e!324598)))

(declare-fun res!354575 () Bool)

(assert (=> b!563273 (=> (not res!354575) (not e!324598))))

(declare-fun lt!257201 () SeekEntryResult!5425)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563273 (= res!354575 (or (= lt!257201 (MissingZero!5425 i!1132)) (= lt!257201 (MissingVacant!5425 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!563273 (= lt!257201 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563274 () Bool)

(declare-fun res!354581 () Bool)

(assert (=> b!563274 (=> (not res!354581) (not e!324596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563274 (= res!354581 (validKeyInArray!0 (select (arr!16969 a!3118) j!142)))))

(declare-fun b!563275 () Bool)

(declare-fun res!354573 () Bool)

(assert (=> b!563275 (=> (not res!354573) (not e!324598))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35345 (_ BitVec 32)) SeekEntryResult!5425)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563275 (= res!354573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16969 a!3118) j!142) mask!3119) (select (arr!16969 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16969 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16969 a!3118) i!1132 k0!1914) j!142) (array!35346 (store (arr!16969 a!3118) i!1132 k0!1914) (size!17333 a!3118)) mask!3119)))))

(declare-fun b!563276 () Bool)

(declare-fun res!354580 () Bool)

(assert (=> b!563276 (=> (not res!354580) (not e!324596))))

(assert (=> b!563276 (= res!354580 (and (= (size!17333 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17333 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17333 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563278 () Bool)

(declare-fun res!354572 () Bool)

(assert (=> b!563278 (=> (not res!354572) (not e!324598))))

(assert (=> b!563278 (= res!354572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563279 () Bool)

(declare-fun res!354579 () Bool)

(assert (=> b!563279 (=> (not res!354579) (not e!324596))))

(assert (=> b!563279 (= res!354579 (validKeyInArray!0 k0!1914))))

(declare-fun b!563277 () Bool)

(declare-fun res!354577 () Bool)

(assert (=> b!563277 (=> (not res!354577) (not e!324596))))

(declare-fun arrayContainsKey!0 (array!35345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563277 (= res!354577 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354578 () Bool)

(assert (=> start!51526 (=> (not res!354578) (not e!324596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51526 (= res!354578 (validMask!0 mask!3119))))

(assert (=> start!51526 e!324596))

(assert (=> start!51526 true))

(declare-fun array_inv!12743 (array!35345) Bool)

(assert (=> start!51526 (array_inv!12743 a!3118)))

(assert (= (and start!51526 res!354578) b!563276))

(assert (= (and b!563276 res!354580) b!563274))

(assert (= (and b!563274 res!354581) b!563279))

(assert (= (and b!563279 res!354579) b!563277))

(assert (= (and b!563277 res!354577) b!563273))

(assert (= (and b!563273 res!354575) b!563278))

(assert (= (and b!563278 res!354572) b!563270))

(assert (= (and b!563270 res!354576) b!563275))

(assert (= (and b!563275 res!354573) b!563271))

(assert (= (and b!563271 res!354574) b!563272))

(declare-fun m!541657 () Bool)

(assert (=> b!563275 m!541657))

(declare-fun m!541659 () Bool)

(assert (=> b!563275 m!541659))

(assert (=> b!563275 m!541657))

(declare-fun m!541661 () Bool)

(assert (=> b!563275 m!541661))

(declare-fun m!541663 () Bool)

(assert (=> b!563275 m!541663))

(assert (=> b!563275 m!541661))

(declare-fun m!541665 () Bool)

(assert (=> b!563275 m!541665))

(assert (=> b!563275 m!541659))

(assert (=> b!563275 m!541657))

(declare-fun m!541667 () Bool)

(assert (=> b!563275 m!541667))

(declare-fun m!541669 () Bool)

(assert (=> b!563275 m!541669))

(assert (=> b!563275 m!541661))

(assert (=> b!563275 m!541663))

(declare-fun m!541671 () Bool)

(assert (=> b!563278 m!541671))

(assert (=> b!563274 m!541657))

(assert (=> b!563274 m!541657))

(declare-fun m!541673 () Bool)

(assert (=> b!563274 m!541673))

(declare-fun m!541675 () Bool)

(assert (=> b!563270 m!541675))

(declare-fun m!541677 () Bool)

(assert (=> b!563273 m!541677))

(declare-fun m!541679 () Bool)

(assert (=> b!563271 m!541679))

(declare-fun m!541681 () Bool)

(assert (=> b!563271 m!541681))

(declare-fun m!541683 () Bool)

(assert (=> b!563279 m!541683))

(declare-fun m!541685 () Bool)

(assert (=> start!51526 m!541685))

(declare-fun m!541687 () Bool)

(assert (=> start!51526 m!541687))

(assert (=> b!563272 m!541657))

(assert (=> b!563272 m!541657))

(declare-fun m!541689 () Bool)

(assert (=> b!563272 m!541689))

(declare-fun m!541691 () Bool)

(assert (=> b!563277 m!541691))

(check-sat (not b!563274) (not start!51526) (not b!563270) (not b!563278) (not b!563277) (not b!563271) (not b!563275) (not b!563272) (not b!563279) (not b!563273))
(check-sat)
