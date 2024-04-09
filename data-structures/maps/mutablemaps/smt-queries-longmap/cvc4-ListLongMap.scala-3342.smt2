; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46058 () Bool)

(assert start!46058)

(declare-fun b!509751 () Bool)

(declare-fun res!310754 () Bool)

(declare-fun e!298042 () Bool)

(assert (=> b!509751 (=> (not res!310754) (not e!298042))))

(declare-datatypes ((array!32729 0))(
  ( (array!32730 (arr!15740 (Array (_ BitVec 32) (_ BitVec 64))) (size!16104 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32729)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509751 (= res!310754 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!310748 () Bool)

(assert (=> start!46058 (=> (not res!310748) (not e!298042))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46058 (= res!310748 (validMask!0 mask!3524))))

(assert (=> start!46058 e!298042))

(assert (=> start!46058 true))

(declare-fun array_inv!11514 (array!32729) Bool)

(assert (=> start!46058 (array_inv!11514 a!3235)))

(declare-fun b!509752 () Bool)

(declare-fun res!310751 () Bool)

(declare-fun e!298039 () Bool)

(assert (=> b!509752 (=> (not res!310751) (not e!298039))))

(declare-datatypes ((List!9951 0))(
  ( (Nil!9948) (Cons!9947 (h!10824 (_ BitVec 64)) (t!16187 List!9951)) )
))
(declare-fun arrayNoDuplicates!0 (array!32729 (_ BitVec 32) List!9951) Bool)

(assert (=> b!509752 (= res!310751 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9948))))

(declare-fun b!509753 () Bool)

(declare-fun res!310747 () Bool)

(assert (=> b!509753 (=> (not res!310747) (not e!298039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32729 (_ BitVec 32)) Bool)

(assert (=> b!509753 (= res!310747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509754 () Bool)

(assert (=> b!509754 (= e!298042 e!298039)))

(declare-fun res!310752 () Bool)

(assert (=> b!509754 (=> (not res!310752) (not e!298039))))

(declare-datatypes ((SeekEntryResult!4214 0))(
  ( (MissingZero!4214 (index!19044 (_ BitVec 32))) (Found!4214 (index!19045 (_ BitVec 32))) (Intermediate!4214 (undefined!5026 Bool) (index!19046 (_ BitVec 32)) (x!48034 (_ BitVec 32))) (Undefined!4214) (MissingVacant!4214 (index!19047 (_ BitVec 32))) )
))
(declare-fun lt!233021 () SeekEntryResult!4214)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509754 (= res!310752 (or (= lt!233021 (MissingZero!4214 i!1204)) (= lt!233021 (MissingVacant!4214 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32729 (_ BitVec 32)) SeekEntryResult!4214)

(assert (=> b!509754 (= lt!233021 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509755 () Bool)

(declare-fun res!310753 () Bool)

(assert (=> b!509755 (=> (not res!310753) (not e!298042))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509755 (= res!310753 (and (= (size!16104 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16104 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16104 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!298040 () Bool)

(declare-fun b!509756 () Bool)

(assert (=> b!509756 (= e!298040 (= (seekEntryOrOpen!0 (select (arr!15740 a!3235) j!176) a!3235 mask!3524) (Found!4214 j!176)))))

(declare-fun b!509757 () Bool)

(declare-fun res!310746 () Bool)

(assert (=> b!509757 (=> (not res!310746) (not e!298042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509757 (= res!310746 (validKeyInArray!0 k!2280))))

(declare-fun b!509758 () Bool)

(declare-fun res!310750 () Bool)

(assert (=> b!509758 (=> (not res!310750) (not e!298042))))

(assert (=> b!509758 (= res!310750 (validKeyInArray!0 (select (arr!15740 a!3235) j!176)))))

(declare-fun b!509759 () Bool)

(assert (=> b!509759 (= e!298039 (not true))))

(declare-fun lt!233019 () (_ BitVec 32))

(declare-fun lt!233017 () SeekEntryResult!4214)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32729 (_ BitVec 32)) SeekEntryResult!4214)

(assert (=> b!509759 (= lt!233017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233019 (select (store (arr!15740 a!3235) i!1204 k!2280) j!176) (array!32730 (store (arr!15740 a!3235) i!1204 k!2280) (size!16104 a!3235)) mask!3524))))

(declare-fun lt!233018 () (_ BitVec 32))

(declare-fun lt!233016 () SeekEntryResult!4214)

(assert (=> b!509759 (= lt!233016 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233018 (select (arr!15740 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509759 (= lt!233019 (toIndex!0 (select (store (arr!15740 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509759 (= lt!233018 (toIndex!0 (select (arr!15740 a!3235) j!176) mask!3524))))

(assert (=> b!509759 e!298040))

(declare-fun res!310749 () Bool)

(assert (=> b!509759 (=> (not res!310749) (not e!298040))))

(assert (=> b!509759 (= res!310749 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15678 0))(
  ( (Unit!15679) )
))
(declare-fun lt!233020 () Unit!15678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15678)

(assert (=> b!509759 (= lt!233020 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46058 res!310748) b!509755))

(assert (= (and b!509755 res!310753) b!509758))

(assert (= (and b!509758 res!310750) b!509757))

(assert (= (and b!509757 res!310746) b!509751))

(assert (= (and b!509751 res!310754) b!509754))

(assert (= (and b!509754 res!310752) b!509753))

(assert (= (and b!509753 res!310747) b!509752))

(assert (= (and b!509752 res!310751) b!509759))

(assert (= (and b!509759 res!310749) b!509756))

(declare-fun m!490843 () Bool)

(assert (=> start!46058 m!490843))

(declare-fun m!490845 () Bool)

(assert (=> start!46058 m!490845))

(declare-fun m!490847 () Bool)

(assert (=> b!509756 m!490847))

(assert (=> b!509756 m!490847))

(declare-fun m!490849 () Bool)

(assert (=> b!509756 m!490849))

(declare-fun m!490851 () Bool)

(assert (=> b!509759 m!490851))

(declare-fun m!490853 () Bool)

(assert (=> b!509759 m!490853))

(declare-fun m!490855 () Bool)

(assert (=> b!509759 m!490855))

(assert (=> b!509759 m!490847))

(declare-fun m!490857 () Bool)

(assert (=> b!509759 m!490857))

(assert (=> b!509759 m!490847))

(declare-fun m!490859 () Bool)

(assert (=> b!509759 m!490859))

(assert (=> b!509759 m!490855))

(declare-fun m!490861 () Bool)

(assert (=> b!509759 m!490861))

(assert (=> b!509759 m!490847))

(declare-fun m!490863 () Bool)

(assert (=> b!509759 m!490863))

(assert (=> b!509759 m!490855))

(declare-fun m!490865 () Bool)

(assert (=> b!509759 m!490865))

(declare-fun m!490867 () Bool)

(assert (=> b!509751 m!490867))

(declare-fun m!490869 () Bool)

(assert (=> b!509754 m!490869))

(assert (=> b!509758 m!490847))

(assert (=> b!509758 m!490847))

(declare-fun m!490871 () Bool)

(assert (=> b!509758 m!490871))

(declare-fun m!490873 () Bool)

(assert (=> b!509752 m!490873))

(declare-fun m!490875 () Bool)

(assert (=> b!509757 m!490875))

(declare-fun m!490877 () Bool)

(assert (=> b!509753 m!490877))

(push 1)

