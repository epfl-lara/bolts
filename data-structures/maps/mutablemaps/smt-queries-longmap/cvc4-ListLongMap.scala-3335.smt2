; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46016 () Bool)

(assert start!46016)

(declare-fun b!509184 () Bool)

(declare-fun e!297789 () Bool)

(assert (=> b!509184 (= e!297789 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!232641 () (_ BitVec 32))

(declare-datatypes ((array!32687 0))(
  ( (array!32688 (arr!15719 (Array (_ BitVec 32) (_ BitVec 64))) (size!16083 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32687)

(declare-datatypes ((SeekEntryResult!4193 0))(
  ( (MissingZero!4193 (index!18960 (_ BitVec 32))) (Found!4193 (index!18961 (_ BitVec 32))) (Intermediate!4193 (undefined!5005 Bool) (index!18962 (_ BitVec 32)) (x!47957 (_ BitVec 32))) (Undefined!4193) (MissingVacant!4193 (index!18963 (_ BitVec 32))) )
))
(declare-fun lt!232638 () SeekEntryResult!4193)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32687 (_ BitVec 32)) SeekEntryResult!4193)

(assert (=> b!509184 (= lt!232638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232641 (select (store (arr!15719 a!3235) i!1204 k!2280) j!176) (array!32688 (store (arr!15719 a!3235) i!1204 k!2280) (size!16083 a!3235)) mask!3524))))

(declare-fun lt!232639 () (_ BitVec 32))

(declare-fun lt!232642 () SeekEntryResult!4193)

(assert (=> b!509184 (= lt!232642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232639 (select (arr!15719 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509184 (= lt!232641 (toIndex!0 (select (store (arr!15719 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509184 (= lt!232639 (toIndex!0 (select (arr!15719 a!3235) j!176) mask!3524))))

(declare-fun e!297790 () Bool)

(assert (=> b!509184 e!297790))

(declare-fun res!310186 () Bool)

(assert (=> b!509184 (=> (not res!310186) (not e!297790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32687 (_ BitVec 32)) Bool)

(assert (=> b!509184 (= res!310186 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15636 0))(
  ( (Unit!15637) )
))
(declare-fun lt!232640 () Unit!15636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15636)

(assert (=> b!509184 (= lt!232640 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509185 () Bool)

(declare-fun res!310183 () Bool)

(declare-fun e!297787 () Bool)

(assert (=> b!509185 (=> (not res!310183) (not e!297787))))

(declare-fun arrayContainsKey!0 (array!32687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509185 (= res!310183 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509186 () Bool)

(declare-fun res!310179 () Bool)

(assert (=> b!509186 (=> (not res!310179) (not e!297789))))

(assert (=> b!509186 (= res!310179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!310185 () Bool)

(assert (=> start!46016 (=> (not res!310185) (not e!297787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46016 (= res!310185 (validMask!0 mask!3524))))

(assert (=> start!46016 e!297787))

(assert (=> start!46016 true))

(declare-fun array_inv!11493 (array!32687) Bool)

(assert (=> start!46016 (array_inv!11493 a!3235)))

(declare-fun b!509187 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32687 (_ BitVec 32)) SeekEntryResult!4193)

(assert (=> b!509187 (= e!297790 (= (seekEntryOrOpen!0 (select (arr!15719 a!3235) j!176) a!3235 mask!3524) (Found!4193 j!176)))))

(declare-fun b!509188 () Bool)

(declare-fun res!310187 () Bool)

(assert (=> b!509188 (=> (not res!310187) (not e!297787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509188 (= res!310187 (validKeyInArray!0 (select (arr!15719 a!3235) j!176)))))

(declare-fun b!509189 () Bool)

(declare-fun res!310182 () Bool)

(assert (=> b!509189 (=> (not res!310182) (not e!297787))))

(assert (=> b!509189 (= res!310182 (and (= (size!16083 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16083 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16083 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509190 () Bool)

(assert (=> b!509190 (= e!297787 e!297789)))

(declare-fun res!310184 () Bool)

(assert (=> b!509190 (=> (not res!310184) (not e!297789))))

(declare-fun lt!232643 () SeekEntryResult!4193)

(assert (=> b!509190 (= res!310184 (or (= lt!232643 (MissingZero!4193 i!1204)) (= lt!232643 (MissingVacant!4193 i!1204))))))

(assert (=> b!509190 (= lt!232643 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509191 () Bool)

(declare-fun res!310181 () Bool)

(assert (=> b!509191 (=> (not res!310181) (not e!297787))))

(assert (=> b!509191 (= res!310181 (validKeyInArray!0 k!2280))))

(declare-fun b!509192 () Bool)

(declare-fun res!310180 () Bool)

(assert (=> b!509192 (=> (not res!310180) (not e!297789))))

(declare-datatypes ((List!9930 0))(
  ( (Nil!9927) (Cons!9926 (h!10803 (_ BitVec 64)) (t!16166 List!9930)) )
))
(declare-fun arrayNoDuplicates!0 (array!32687 (_ BitVec 32) List!9930) Bool)

(assert (=> b!509192 (= res!310180 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9927))))

(assert (= (and start!46016 res!310185) b!509189))

(assert (= (and b!509189 res!310182) b!509188))

(assert (= (and b!509188 res!310187) b!509191))

(assert (= (and b!509191 res!310181) b!509185))

(assert (= (and b!509185 res!310183) b!509190))

(assert (= (and b!509190 res!310184) b!509186))

(assert (= (and b!509186 res!310179) b!509192))

(assert (= (and b!509192 res!310180) b!509184))

(assert (= (and b!509184 res!310186) b!509187))

(declare-fun m!490087 () Bool)

(assert (=> b!509187 m!490087))

(assert (=> b!509187 m!490087))

(declare-fun m!490089 () Bool)

(assert (=> b!509187 m!490089))

(assert (=> b!509184 m!490087))

(declare-fun m!490091 () Bool)

(assert (=> b!509184 m!490091))

(declare-fun m!490093 () Bool)

(assert (=> b!509184 m!490093))

(declare-fun m!490095 () Bool)

(assert (=> b!509184 m!490095))

(declare-fun m!490097 () Bool)

(assert (=> b!509184 m!490097))

(assert (=> b!509184 m!490087))

(declare-fun m!490099 () Bool)

(assert (=> b!509184 m!490099))

(assert (=> b!509184 m!490087))

(declare-fun m!490101 () Bool)

(assert (=> b!509184 m!490101))

(assert (=> b!509184 m!490097))

(declare-fun m!490103 () Bool)

(assert (=> b!509184 m!490103))

(assert (=> b!509184 m!490097))

(declare-fun m!490105 () Bool)

(assert (=> b!509184 m!490105))

(declare-fun m!490107 () Bool)

(assert (=> b!509192 m!490107))

(declare-fun m!490109 () Bool)

(assert (=> b!509190 m!490109))

(declare-fun m!490111 () Bool)

(assert (=> b!509186 m!490111))

(declare-fun m!490113 () Bool)

(assert (=> b!509185 m!490113))

(declare-fun m!490115 () Bool)

(assert (=> b!509191 m!490115))

(declare-fun m!490117 () Bool)

(assert (=> start!46016 m!490117))

(declare-fun m!490119 () Bool)

(assert (=> start!46016 m!490119))

(assert (=> b!509188 m!490087))

(assert (=> b!509188 m!490087))

(declare-fun m!490121 () Bool)

(assert (=> b!509188 m!490121))

(push 1)

