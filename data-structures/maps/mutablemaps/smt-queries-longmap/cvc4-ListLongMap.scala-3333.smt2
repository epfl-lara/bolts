; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46004 () Bool)

(assert start!46004)

(declare-fun b!509022 () Bool)

(declare-fun res!310024 () Bool)

(declare-fun e!297717 () Bool)

(assert (=> b!509022 (=> (not res!310024) (not e!297717))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509022 (= res!310024 (validKeyInArray!0 k!2280))))

(declare-fun b!509023 () Bool)

(declare-fun res!310017 () Bool)

(declare-fun e!297715 () Bool)

(assert (=> b!509023 (=> (not res!310017) (not e!297715))))

(declare-datatypes ((array!32675 0))(
  ( (array!32676 (arr!15713 (Array (_ BitVec 32) (_ BitVec 64))) (size!16077 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32675)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32675 (_ BitVec 32)) Bool)

(assert (=> b!509023 (= res!310017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509024 () Bool)

(declare-fun res!310020 () Bool)

(assert (=> b!509024 (=> (not res!310020) (not e!297717))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509024 (= res!310020 (and (= (size!16077 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16077 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16077 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509025 () Bool)

(declare-fun res!310019 () Bool)

(assert (=> b!509025 (=> (not res!310019) (not e!297717))))

(assert (=> b!509025 (= res!310019 (validKeyInArray!0 (select (arr!15713 a!3235) j!176)))))

(declare-fun b!509026 () Bool)

(declare-fun res!310022 () Bool)

(assert (=> b!509026 (=> (not res!310022) (not e!297715))))

(declare-datatypes ((List!9924 0))(
  ( (Nil!9921) (Cons!9920 (h!10797 (_ BitVec 64)) (t!16160 List!9924)) )
))
(declare-fun arrayNoDuplicates!0 (array!32675 (_ BitVec 32) List!9924) Bool)

(assert (=> b!509026 (= res!310022 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9921))))

(declare-fun b!509027 () Bool)

(declare-fun e!297718 () Bool)

(declare-datatypes ((SeekEntryResult!4187 0))(
  ( (MissingZero!4187 (index!18936 (_ BitVec 32))) (Found!4187 (index!18937 (_ BitVec 32))) (Intermediate!4187 (undefined!4999 Bool) (index!18938 (_ BitVec 32)) (x!47935 (_ BitVec 32))) (Undefined!4187) (MissingVacant!4187 (index!18939 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32675 (_ BitVec 32)) SeekEntryResult!4187)

(assert (=> b!509027 (= e!297718 (= (seekEntryOrOpen!0 (select (arr!15713 a!3235) j!176) a!3235 mask!3524) (Found!4187 j!176)))))

(declare-fun b!509028 () Bool)

(assert (=> b!509028 (= e!297717 e!297715)))

(declare-fun res!310023 () Bool)

(assert (=> b!509028 (=> (not res!310023) (not e!297715))))

(declare-fun lt!232530 () SeekEntryResult!4187)

(assert (=> b!509028 (= res!310023 (or (= lt!232530 (MissingZero!4187 i!1204)) (= lt!232530 (MissingVacant!4187 i!1204))))))

(assert (=> b!509028 (= lt!232530 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!310018 () Bool)

(assert (=> start!46004 (=> (not res!310018) (not e!297717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46004 (= res!310018 (validMask!0 mask!3524))))

(assert (=> start!46004 e!297717))

(assert (=> start!46004 true))

(declare-fun array_inv!11487 (array!32675) Bool)

(assert (=> start!46004 (array_inv!11487 a!3235)))

(declare-fun b!509029 () Bool)

(assert (=> b!509029 (= e!297715 (not true))))

(declare-fun lt!232532 () SeekEntryResult!4187)

(declare-fun lt!232534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32675 (_ BitVec 32)) SeekEntryResult!4187)

(assert (=> b!509029 (= lt!232532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232534 (select (store (arr!15713 a!3235) i!1204 k!2280) j!176) (array!32676 (store (arr!15713 a!3235) i!1204 k!2280) (size!16077 a!3235)) mask!3524))))

(declare-fun lt!232531 () (_ BitVec 32))

(declare-fun lt!232533 () SeekEntryResult!4187)

(assert (=> b!509029 (= lt!232533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232531 (select (arr!15713 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509029 (= lt!232534 (toIndex!0 (select (store (arr!15713 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509029 (= lt!232531 (toIndex!0 (select (arr!15713 a!3235) j!176) mask!3524))))

(assert (=> b!509029 e!297718))

(declare-fun res!310025 () Bool)

(assert (=> b!509029 (=> (not res!310025) (not e!297718))))

(assert (=> b!509029 (= res!310025 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15624 0))(
  ( (Unit!15625) )
))
(declare-fun lt!232535 () Unit!15624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15624)

(assert (=> b!509029 (= lt!232535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509030 () Bool)

(declare-fun res!310021 () Bool)

(assert (=> b!509030 (=> (not res!310021) (not e!297717))))

(declare-fun arrayContainsKey!0 (array!32675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509030 (= res!310021 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46004 res!310018) b!509024))

(assert (= (and b!509024 res!310020) b!509025))

(assert (= (and b!509025 res!310019) b!509022))

(assert (= (and b!509022 res!310024) b!509030))

(assert (= (and b!509030 res!310021) b!509028))

(assert (= (and b!509028 res!310023) b!509023))

(assert (= (and b!509023 res!310017) b!509026))

(assert (= (and b!509026 res!310022) b!509029))

(assert (= (and b!509029 res!310025) b!509027))

(declare-fun m!489871 () Bool)

(assert (=> b!509028 m!489871))

(declare-fun m!489873 () Bool)

(assert (=> b!509026 m!489873))

(declare-fun m!489875 () Bool)

(assert (=> b!509029 m!489875))

(declare-fun m!489877 () Bool)

(assert (=> b!509029 m!489877))

(declare-fun m!489879 () Bool)

(assert (=> b!509029 m!489879))

(declare-fun m!489881 () Bool)

(assert (=> b!509029 m!489881))

(declare-fun m!489883 () Bool)

(assert (=> b!509029 m!489883))

(assert (=> b!509029 m!489881))

(declare-fun m!489885 () Bool)

(assert (=> b!509029 m!489885))

(assert (=> b!509029 m!489879))

(declare-fun m!489887 () Bool)

(assert (=> b!509029 m!489887))

(assert (=> b!509029 m!489879))

(declare-fun m!489889 () Bool)

(assert (=> b!509029 m!489889))

(assert (=> b!509029 m!489881))

(declare-fun m!489891 () Bool)

(assert (=> b!509029 m!489891))

(assert (=> b!509025 m!489881))

(assert (=> b!509025 m!489881))

(declare-fun m!489893 () Bool)

(assert (=> b!509025 m!489893))

(assert (=> b!509027 m!489881))

(assert (=> b!509027 m!489881))

(declare-fun m!489895 () Bool)

(assert (=> b!509027 m!489895))

(declare-fun m!489897 () Bool)

(assert (=> b!509030 m!489897))

(declare-fun m!489899 () Bool)

(assert (=> b!509022 m!489899))

(declare-fun m!489901 () Bool)

(assert (=> start!46004 m!489901))

(declare-fun m!489903 () Bool)

(assert (=> start!46004 m!489903))

(declare-fun m!489905 () Bool)

(assert (=> b!509023 m!489905))

(push 1)

