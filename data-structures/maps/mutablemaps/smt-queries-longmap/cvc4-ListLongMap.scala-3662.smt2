; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50610 () Bool)

(assert start!50610)

(declare-fun b!552599 () Bool)

(declare-fun e!318859 () Bool)

(assert (=> b!552599 (= e!318859 (not true))))

(declare-fun e!318858 () Bool)

(assert (=> b!552599 e!318858))

(declare-fun res!345168 () Bool)

(assert (=> b!552599 (=> (not res!345168) (not e!318858))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34789 0))(
  ( (array!34790 (arr!16700 (Array (_ BitVec 32) (_ BitVec 64))) (size!17064 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34789)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34789 (_ BitVec 32)) Bool)

(assert (=> b!552599 (= res!345168 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17086 0))(
  ( (Unit!17087) )
))
(declare-fun lt!251240 () Unit!17086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17086)

(assert (=> b!552599 (= lt!251240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552601 () Bool)

(declare-fun res!345162 () Bool)

(assert (=> b!552601 (=> (not res!345162) (not e!318859))))

(assert (=> b!552601 (= res!345162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552602 () Bool)

(declare-fun e!318856 () Bool)

(assert (=> b!552602 (= e!318856 e!318859)))

(declare-fun res!345169 () Bool)

(assert (=> b!552602 (=> (not res!345169) (not e!318859))))

(declare-datatypes ((SeekEntryResult!5156 0))(
  ( (MissingZero!5156 (index!22851 (_ BitVec 32))) (Found!5156 (index!22852 (_ BitVec 32))) (Intermediate!5156 (undefined!5968 Bool) (index!22853 (_ BitVec 32)) (x!51809 (_ BitVec 32))) (Undefined!5156) (MissingVacant!5156 (index!22854 (_ BitVec 32))) )
))
(declare-fun lt!251239 () SeekEntryResult!5156)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552602 (= res!345169 (or (= lt!251239 (MissingZero!5156 i!1132)) (= lt!251239 (MissingVacant!5156 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34789 (_ BitVec 32)) SeekEntryResult!5156)

(assert (=> b!552602 (= lt!251239 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552603 () Bool)

(declare-fun res!345166 () Bool)

(assert (=> b!552603 (=> (not res!345166) (not e!318856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552603 (= res!345166 (validKeyInArray!0 k!1914))))

(declare-fun b!552604 () Bool)

(declare-fun res!345170 () Bool)

(assert (=> b!552604 (=> (not res!345170) (not e!318856))))

(assert (=> b!552604 (= res!345170 (validKeyInArray!0 (select (arr!16700 a!3118) j!142)))))

(declare-fun b!552605 () Bool)

(assert (=> b!552605 (= e!318858 (= (seekEntryOrOpen!0 (select (arr!16700 a!3118) j!142) a!3118 mask!3119) (Found!5156 j!142)))))

(declare-fun b!552606 () Bool)

(declare-fun res!345164 () Bool)

(assert (=> b!552606 (=> (not res!345164) (not e!318859))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34789 (_ BitVec 32)) SeekEntryResult!5156)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552606 (= res!345164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16700 a!3118) j!142) mask!3119) (select (arr!16700 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16700 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16700 a!3118) i!1132 k!1914) j!142) (array!34790 (store (arr!16700 a!3118) i!1132 k!1914) (size!17064 a!3118)) mask!3119)))))

(declare-fun b!552600 () Bool)

(declare-fun res!345163 () Bool)

(assert (=> b!552600 (=> (not res!345163) (not e!318856))))

(declare-fun arrayContainsKey!0 (array!34789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552600 (= res!345163 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!345167 () Bool)

(assert (=> start!50610 (=> (not res!345167) (not e!318856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50610 (= res!345167 (validMask!0 mask!3119))))

(assert (=> start!50610 e!318856))

(assert (=> start!50610 true))

(declare-fun array_inv!12474 (array!34789) Bool)

(assert (=> start!50610 (array_inv!12474 a!3118)))

(declare-fun b!552607 () Bool)

(declare-fun res!345165 () Bool)

(assert (=> b!552607 (=> (not res!345165) (not e!318856))))

(assert (=> b!552607 (= res!345165 (and (= (size!17064 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17064 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17064 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552608 () Bool)

(declare-fun res!345161 () Bool)

(assert (=> b!552608 (=> (not res!345161) (not e!318859))))

(declare-datatypes ((List!10833 0))(
  ( (Nil!10830) (Cons!10829 (h!11814 (_ BitVec 64)) (t!17069 List!10833)) )
))
(declare-fun arrayNoDuplicates!0 (array!34789 (_ BitVec 32) List!10833) Bool)

(assert (=> b!552608 (= res!345161 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10830))))

(assert (= (and start!50610 res!345167) b!552607))

(assert (= (and b!552607 res!345165) b!552604))

(assert (= (and b!552604 res!345170) b!552603))

(assert (= (and b!552603 res!345166) b!552600))

(assert (= (and b!552600 res!345163) b!552602))

(assert (= (and b!552602 res!345169) b!552601))

(assert (= (and b!552601 res!345162) b!552608))

(assert (= (and b!552608 res!345161) b!552606))

(assert (= (and b!552606 res!345164) b!552599))

(assert (= (and b!552599 res!345168) b!552605))

(declare-fun m!529591 () Bool)

(assert (=> b!552604 m!529591))

(assert (=> b!552604 m!529591))

(declare-fun m!529593 () Bool)

(assert (=> b!552604 m!529593))

(declare-fun m!529595 () Bool)

(assert (=> b!552600 m!529595))

(declare-fun m!529597 () Bool)

(assert (=> b!552602 m!529597))

(declare-fun m!529599 () Bool)

(assert (=> b!552599 m!529599))

(declare-fun m!529601 () Bool)

(assert (=> b!552599 m!529601))

(declare-fun m!529603 () Bool)

(assert (=> b!552603 m!529603))

(assert (=> b!552605 m!529591))

(assert (=> b!552605 m!529591))

(declare-fun m!529605 () Bool)

(assert (=> b!552605 m!529605))

(declare-fun m!529607 () Bool)

(assert (=> b!552608 m!529607))

(declare-fun m!529609 () Bool)

(assert (=> b!552601 m!529609))

(assert (=> b!552606 m!529591))

(declare-fun m!529611 () Bool)

(assert (=> b!552606 m!529611))

(assert (=> b!552606 m!529591))

(declare-fun m!529613 () Bool)

(assert (=> b!552606 m!529613))

(declare-fun m!529615 () Bool)

(assert (=> b!552606 m!529615))

(assert (=> b!552606 m!529613))

(declare-fun m!529617 () Bool)

(assert (=> b!552606 m!529617))

(assert (=> b!552606 m!529611))

(assert (=> b!552606 m!529591))

(declare-fun m!529619 () Bool)

(assert (=> b!552606 m!529619))

(declare-fun m!529621 () Bool)

(assert (=> b!552606 m!529621))

(assert (=> b!552606 m!529613))

(assert (=> b!552606 m!529615))

(declare-fun m!529623 () Bool)

(assert (=> start!50610 m!529623))

(declare-fun m!529625 () Bool)

(assert (=> start!50610 m!529625))

(push 1)

