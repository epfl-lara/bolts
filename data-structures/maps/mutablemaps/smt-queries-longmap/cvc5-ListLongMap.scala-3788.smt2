; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51920 () Bool)

(assert start!51920)

(declare-fun res!357869 () Bool)

(declare-fun e!326366 () Bool)

(assert (=> start!51920 (=> (not res!357869) (not e!326366))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51920 (= res!357869 (validMask!0 mask!3119))))

(assert (=> start!51920 e!326366))

(assert (=> start!51920 true))

(declare-datatypes ((array!35568 0))(
  ( (array!35569 (arr!17076 (Array (_ BitVec 32) (_ BitVec 64))) (size!17440 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35568)

(declare-fun array_inv!12850 (array!35568) Bool)

(assert (=> start!51920 (array_inv!12850 a!3118)))

(declare-fun b!567128 () Bool)

(declare-fun res!357871 () Bool)

(declare-fun e!326365 () Bool)

(assert (=> b!567128 (=> (not res!357871) (not e!326365))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5532 0))(
  ( (MissingZero!5532 (index!24355 (_ BitVec 32))) (Found!5532 (index!24356 (_ BitVec 32))) (Intermediate!5532 (undefined!6344 Bool) (index!24357 (_ BitVec 32)) (x!53256 (_ BitVec 32))) (Undefined!5532) (MissingVacant!5532 (index!24358 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35568 (_ BitVec 32)) SeekEntryResult!5532)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567128 (= res!357871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17076 a!3118) j!142) mask!3119) (select (arr!17076 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17076 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17076 a!3118) i!1132 k!1914) j!142) (array!35569 (store (arr!17076 a!3118) i!1132 k!1914) (size!17440 a!3118)) mask!3119)))))

(declare-fun b!567129 () Bool)

(assert (=> b!567129 (= e!326365 (not true))))

(declare-fun e!326368 () Bool)

(assert (=> b!567129 e!326368))

(declare-fun res!357864 () Bool)

(assert (=> b!567129 (=> (not res!357864) (not e!326368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35568 (_ BitVec 32)) Bool)

(assert (=> b!567129 (= res!357864 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17766 0))(
  ( (Unit!17767) )
))
(declare-fun lt!258454 () Unit!17766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17766)

(assert (=> b!567129 (= lt!258454 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567130 () Bool)

(declare-fun res!357870 () Bool)

(assert (=> b!567130 (=> (not res!357870) (not e!326366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567130 (= res!357870 (validKeyInArray!0 (select (arr!17076 a!3118) j!142)))))

(declare-fun b!567131 () Bool)

(declare-fun res!357867 () Bool)

(assert (=> b!567131 (=> (not res!357867) (not e!326366))))

(assert (=> b!567131 (= res!357867 (validKeyInArray!0 k!1914))))

(declare-fun b!567132 () Bool)

(declare-fun res!357863 () Bool)

(assert (=> b!567132 (=> (not res!357863) (not e!326365))))

(assert (=> b!567132 (= res!357863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567133 () Bool)

(declare-fun res!357866 () Bool)

(assert (=> b!567133 (=> (not res!357866) (not e!326366))))

(declare-fun arrayContainsKey!0 (array!35568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567133 (= res!357866 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567134 () Bool)

(declare-fun res!357868 () Bool)

(assert (=> b!567134 (=> (not res!357868) (not e!326365))))

(declare-datatypes ((List!11209 0))(
  ( (Nil!11206) (Cons!11205 (h!12217 (_ BitVec 64)) (t!17445 List!11209)) )
))
(declare-fun arrayNoDuplicates!0 (array!35568 (_ BitVec 32) List!11209) Bool)

(assert (=> b!567134 (= res!357868 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11206))))

(declare-fun b!567135 () Bool)

(assert (=> b!567135 (= e!326366 e!326365)))

(declare-fun res!357872 () Bool)

(assert (=> b!567135 (=> (not res!357872) (not e!326365))))

(declare-fun lt!258455 () SeekEntryResult!5532)

(assert (=> b!567135 (= res!357872 (or (= lt!258455 (MissingZero!5532 i!1132)) (= lt!258455 (MissingVacant!5532 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35568 (_ BitVec 32)) SeekEntryResult!5532)

(assert (=> b!567135 (= lt!258455 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567136 () Bool)

(declare-fun res!357865 () Bool)

(assert (=> b!567136 (=> (not res!357865) (not e!326366))))

(assert (=> b!567136 (= res!357865 (and (= (size!17440 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17440 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17440 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567137 () Bool)

(assert (=> b!567137 (= e!326368 (= (seekEntryOrOpen!0 (select (arr!17076 a!3118) j!142) a!3118 mask!3119) (Found!5532 j!142)))))

(assert (= (and start!51920 res!357869) b!567136))

(assert (= (and b!567136 res!357865) b!567130))

(assert (= (and b!567130 res!357870) b!567131))

(assert (= (and b!567131 res!357867) b!567133))

(assert (= (and b!567133 res!357866) b!567135))

(assert (= (and b!567135 res!357872) b!567132))

(assert (= (and b!567132 res!357863) b!567134))

(assert (= (and b!567134 res!357868) b!567128))

(assert (= (and b!567128 res!357871) b!567129))

(assert (= (and b!567129 res!357864) b!567137))

(declare-fun m!545731 () Bool)

(assert (=> start!51920 m!545731))

(declare-fun m!545733 () Bool)

(assert (=> start!51920 m!545733))

(declare-fun m!545735 () Bool)

(assert (=> b!567135 m!545735))

(declare-fun m!545737 () Bool)

(assert (=> b!567128 m!545737))

(declare-fun m!545739 () Bool)

(assert (=> b!567128 m!545739))

(assert (=> b!567128 m!545737))

(declare-fun m!545741 () Bool)

(assert (=> b!567128 m!545741))

(declare-fun m!545743 () Bool)

(assert (=> b!567128 m!545743))

(assert (=> b!567128 m!545741))

(declare-fun m!545745 () Bool)

(assert (=> b!567128 m!545745))

(assert (=> b!567128 m!545739))

(assert (=> b!567128 m!545737))

(declare-fun m!545747 () Bool)

(assert (=> b!567128 m!545747))

(declare-fun m!545749 () Bool)

(assert (=> b!567128 m!545749))

(assert (=> b!567128 m!545741))

(assert (=> b!567128 m!545743))

(assert (=> b!567137 m!545737))

(assert (=> b!567137 m!545737))

(declare-fun m!545751 () Bool)

(assert (=> b!567137 m!545751))

(declare-fun m!545753 () Bool)

(assert (=> b!567133 m!545753))

(declare-fun m!545755 () Bool)

(assert (=> b!567132 m!545755))

(declare-fun m!545757 () Bool)

(assert (=> b!567131 m!545757))

(assert (=> b!567130 m!545737))

(assert (=> b!567130 m!545737))

(declare-fun m!545759 () Bool)

(assert (=> b!567130 m!545759))

(declare-fun m!545761 () Bool)

(assert (=> b!567134 m!545761))

(declare-fun m!545763 () Bool)

(assert (=> b!567129 m!545763))

(declare-fun m!545765 () Bool)

(assert (=> b!567129 m!545765))

(push 1)

