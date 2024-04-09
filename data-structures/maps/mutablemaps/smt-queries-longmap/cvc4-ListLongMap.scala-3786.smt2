; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51912 () Bool)

(assert start!51912)

(declare-fun b!567008 () Bool)

(declare-fun e!326320 () Bool)

(declare-fun e!326318 () Bool)

(assert (=> b!567008 (= e!326320 e!326318)))

(declare-fun res!357743 () Bool)

(assert (=> b!567008 (=> (not res!357743) (not e!326318))))

(declare-datatypes ((SeekEntryResult!5528 0))(
  ( (MissingZero!5528 (index!24339 (_ BitVec 32))) (Found!5528 (index!24340 (_ BitVec 32))) (Intermediate!5528 (undefined!6340 Bool) (index!24341 (_ BitVec 32)) (x!53236 (_ BitVec 32))) (Undefined!5528) (MissingVacant!5528 (index!24342 (_ BitVec 32))) )
))
(declare-fun lt!258431 () SeekEntryResult!5528)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567008 (= res!357743 (or (= lt!258431 (MissingZero!5528 i!1132)) (= lt!258431 (MissingVacant!5528 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35560 0))(
  ( (array!35561 (arr!17072 (Array (_ BitVec 32) (_ BitVec 64))) (size!17436 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35560)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35560 (_ BitVec 32)) SeekEntryResult!5528)

(assert (=> b!567008 (= lt!258431 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!326319 () Bool)

(declare-fun b!567009 () Bool)

(assert (=> b!567009 (= e!326319 (= (seekEntryOrOpen!0 (select (arr!17072 a!3118) j!142) a!3118 mask!3119) (Found!5528 j!142)))))

(declare-fun b!567010 () Bool)

(assert (=> b!567010 (= e!326318 (not true))))

(assert (=> b!567010 e!326319))

(declare-fun res!357745 () Bool)

(assert (=> b!567010 (=> (not res!357745) (not e!326319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35560 (_ BitVec 32)) Bool)

(assert (=> b!567010 (= res!357745 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17758 0))(
  ( (Unit!17759) )
))
(declare-fun lt!258430 () Unit!17758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17758)

(assert (=> b!567010 (= lt!258430 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567011 () Bool)

(declare-fun res!357751 () Bool)

(assert (=> b!567011 (=> (not res!357751) (not e!326318))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35560 (_ BitVec 32)) SeekEntryResult!5528)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567011 (= res!357751 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17072 a!3118) j!142) mask!3119) (select (arr!17072 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17072 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17072 a!3118) i!1132 k!1914) j!142) (array!35561 (store (arr!17072 a!3118) i!1132 k!1914) (size!17436 a!3118)) mask!3119)))))

(declare-fun res!357749 () Bool)

(assert (=> start!51912 (=> (not res!357749) (not e!326320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51912 (= res!357749 (validMask!0 mask!3119))))

(assert (=> start!51912 e!326320))

(assert (=> start!51912 true))

(declare-fun array_inv!12846 (array!35560) Bool)

(assert (=> start!51912 (array_inv!12846 a!3118)))

(declare-fun b!567012 () Bool)

(declare-fun res!357752 () Bool)

(assert (=> b!567012 (=> (not res!357752) (not e!326320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567012 (= res!357752 (validKeyInArray!0 (select (arr!17072 a!3118) j!142)))))

(declare-fun b!567013 () Bool)

(declare-fun res!357744 () Bool)

(assert (=> b!567013 (=> (not res!357744) (not e!326320))))

(assert (=> b!567013 (= res!357744 (validKeyInArray!0 k!1914))))

(declare-fun b!567014 () Bool)

(declare-fun res!357747 () Bool)

(assert (=> b!567014 (=> (not res!357747) (not e!326318))))

(declare-datatypes ((List!11205 0))(
  ( (Nil!11202) (Cons!11201 (h!12213 (_ BitVec 64)) (t!17441 List!11205)) )
))
(declare-fun arrayNoDuplicates!0 (array!35560 (_ BitVec 32) List!11205) Bool)

(assert (=> b!567014 (= res!357747 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11202))))

(declare-fun b!567015 () Bool)

(declare-fun res!357750 () Bool)

(assert (=> b!567015 (=> (not res!357750) (not e!326320))))

(declare-fun arrayContainsKey!0 (array!35560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567015 (= res!357750 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567016 () Bool)

(declare-fun res!357748 () Bool)

(assert (=> b!567016 (=> (not res!357748) (not e!326318))))

(assert (=> b!567016 (= res!357748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567017 () Bool)

(declare-fun res!357746 () Bool)

(assert (=> b!567017 (=> (not res!357746) (not e!326320))))

(assert (=> b!567017 (= res!357746 (and (= (size!17436 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17436 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17436 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51912 res!357749) b!567017))

(assert (= (and b!567017 res!357746) b!567012))

(assert (= (and b!567012 res!357752) b!567013))

(assert (= (and b!567013 res!357744) b!567015))

(assert (= (and b!567015 res!357750) b!567008))

(assert (= (and b!567008 res!357743) b!567016))

(assert (= (and b!567016 res!357748) b!567014))

(assert (= (and b!567014 res!357747) b!567011))

(assert (= (and b!567011 res!357751) b!567010))

(assert (= (and b!567010 res!357745) b!567009))

(declare-fun m!545587 () Bool)

(assert (=> b!567016 m!545587))

(declare-fun m!545589 () Bool)

(assert (=> b!567009 m!545589))

(assert (=> b!567009 m!545589))

(declare-fun m!545591 () Bool)

(assert (=> b!567009 m!545591))

(declare-fun m!545593 () Bool)

(assert (=> b!567014 m!545593))

(assert (=> b!567011 m!545589))

(declare-fun m!545595 () Bool)

(assert (=> b!567011 m!545595))

(assert (=> b!567011 m!545589))

(declare-fun m!545597 () Bool)

(assert (=> b!567011 m!545597))

(declare-fun m!545599 () Bool)

(assert (=> b!567011 m!545599))

(assert (=> b!567011 m!545597))

(declare-fun m!545601 () Bool)

(assert (=> b!567011 m!545601))

(assert (=> b!567011 m!545595))

(assert (=> b!567011 m!545589))

(declare-fun m!545603 () Bool)

(assert (=> b!567011 m!545603))

(declare-fun m!545605 () Bool)

(assert (=> b!567011 m!545605))

(assert (=> b!567011 m!545597))

(assert (=> b!567011 m!545599))

(declare-fun m!545607 () Bool)

(assert (=> start!51912 m!545607))

(declare-fun m!545609 () Bool)

(assert (=> start!51912 m!545609))

(declare-fun m!545611 () Bool)

(assert (=> b!567013 m!545611))

(declare-fun m!545613 () Bool)

(assert (=> b!567010 m!545613))

(declare-fun m!545615 () Bool)

(assert (=> b!567010 m!545615))

(assert (=> b!567012 m!545589))

(assert (=> b!567012 m!545589))

(declare-fun m!545617 () Bool)

(assert (=> b!567012 m!545617))

(declare-fun m!545619 () Bool)

(assert (=> b!567008 m!545619))

(declare-fun m!545621 () Bool)

(assert (=> b!567015 m!545621))

(push 1)

