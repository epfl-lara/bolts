; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46012 () Bool)

(assert start!46012)

(declare-fun b!509131 () Bool)

(declare-fun res!310126 () Bool)

(declare-fun e!297766 () Bool)

(assert (=> b!509131 (=> (not res!310126) (not e!297766))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32683 0))(
  ( (array!32684 (arr!15717 (Array (_ BitVec 32) (_ BitVec 64))) (size!16081 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32683)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!509131 (= res!310126 (and (= (size!16081 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16081 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16081 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509132 () Bool)

(declare-fun e!297763 () Bool)

(assert (=> b!509132 (= e!297763 (not true))))

(declare-fun lt!232602 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4191 0))(
  ( (MissingZero!4191 (index!18952 (_ BitVec 32))) (Found!4191 (index!18953 (_ BitVec 32))) (Intermediate!4191 (undefined!5003 Bool) (index!18954 (_ BitVec 32)) (x!47955 (_ BitVec 32))) (Undefined!4191) (MissingVacant!4191 (index!18955 (_ BitVec 32))) )
))
(declare-fun lt!232604 () SeekEntryResult!4191)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32683 (_ BitVec 32)) SeekEntryResult!4191)

(assert (=> b!509132 (= lt!232604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232602 (select (store (arr!15717 a!3235) i!1204 k!2280) j!176) (array!32684 (store (arr!15717 a!3235) i!1204 k!2280) (size!16081 a!3235)) mask!3524))))

(declare-fun lt!232603 () SeekEntryResult!4191)

(declare-fun lt!232606 () (_ BitVec 32))

(assert (=> b!509132 (= lt!232603 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232606 (select (arr!15717 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509132 (= lt!232602 (toIndex!0 (select (store (arr!15717 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509132 (= lt!232606 (toIndex!0 (select (arr!15717 a!3235) j!176) mask!3524))))

(declare-fun e!297765 () Bool)

(assert (=> b!509132 e!297765))

(declare-fun res!310131 () Bool)

(assert (=> b!509132 (=> (not res!310131) (not e!297765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32683 (_ BitVec 32)) Bool)

(assert (=> b!509132 (= res!310131 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15632 0))(
  ( (Unit!15633) )
))
(declare-fun lt!232605 () Unit!15632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15632)

(assert (=> b!509132 (= lt!232605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509133 () Bool)

(declare-fun res!310130 () Bool)

(assert (=> b!509133 (=> (not res!310130) (not e!297766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509133 (= res!310130 (validKeyInArray!0 (select (arr!15717 a!3235) j!176)))))

(declare-fun b!509134 () Bool)

(declare-fun res!310132 () Bool)

(assert (=> b!509134 (=> (not res!310132) (not e!297763))))

(declare-datatypes ((List!9928 0))(
  ( (Nil!9925) (Cons!9924 (h!10801 (_ BitVec 64)) (t!16164 List!9928)) )
))
(declare-fun arrayNoDuplicates!0 (array!32683 (_ BitVec 32) List!9928) Bool)

(assert (=> b!509134 (= res!310132 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9925))))

(declare-fun b!509135 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32683 (_ BitVec 32)) SeekEntryResult!4191)

(assert (=> b!509135 (= e!297765 (= (seekEntryOrOpen!0 (select (arr!15717 a!3235) j!176) a!3235 mask!3524) (Found!4191 j!176)))))

(declare-fun b!509136 () Bool)

(declare-fun res!310127 () Bool)

(assert (=> b!509136 (=> (not res!310127) (not e!297766))))

(assert (=> b!509136 (= res!310127 (validKeyInArray!0 k!2280))))

(declare-fun res!310133 () Bool)

(assert (=> start!46012 (=> (not res!310133) (not e!297766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46012 (= res!310133 (validMask!0 mask!3524))))

(assert (=> start!46012 e!297766))

(assert (=> start!46012 true))

(declare-fun array_inv!11491 (array!32683) Bool)

(assert (=> start!46012 (array_inv!11491 a!3235)))

(declare-fun b!509130 () Bool)

(assert (=> b!509130 (= e!297766 e!297763)))

(declare-fun res!310129 () Bool)

(assert (=> b!509130 (=> (not res!310129) (not e!297763))))

(declare-fun lt!232607 () SeekEntryResult!4191)

(assert (=> b!509130 (= res!310129 (or (= lt!232607 (MissingZero!4191 i!1204)) (= lt!232607 (MissingVacant!4191 i!1204))))))

(assert (=> b!509130 (= lt!232607 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509137 () Bool)

(declare-fun res!310125 () Bool)

(assert (=> b!509137 (=> (not res!310125) (not e!297763))))

(assert (=> b!509137 (= res!310125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509138 () Bool)

(declare-fun res!310128 () Bool)

(assert (=> b!509138 (=> (not res!310128) (not e!297766))))

(declare-fun arrayContainsKey!0 (array!32683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509138 (= res!310128 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46012 res!310133) b!509131))

(assert (= (and b!509131 res!310126) b!509133))

(assert (= (and b!509133 res!310130) b!509136))

(assert (= (and b!509136 res!310127) b!509138))

(assert (= (and b!509138 res!310128) b!509130))

(assert (= (and b!509130 res!310129) b!509137))

(assert (= (and b!509137 res!310125) b!509134))

(assert (= (and b!509134 res!310132) b!509132))

(assert (= (and b!509132 res!310131) b!509135))

(declare-fun m!490015 () Bool)

(assert (=> start!46012 m!490015))

(declare-fun m!490017 () Bool)

(assert (=> start!46012 m!490017))

(declare-fun m!490019 () Bool)

(assert (=> b!509135 m!490019))

(assert (=> b!509135 m!490019))

(declare-fun m!490021 () Bool)

(assert (=> b!509135 m!490021))

(declare-fun m!490023 () Bool)

(assert (=> b!509132 m!490023))

(declare-fun m!490025 () Bool)

(assert (=> b!509132 m!490025))

(declare-fun m!490027 () Bool)

(assert (=> b!509132 m!490027))

(declare-fun m!490029 () Bool)

(assert (=> b!509132 m!490029))

(assert (=> b!509132 m!490025))

(assert (=> b!509132 m!490019))

(declare-fun m!490031 () Bool)

(assert (=> b!509132 m!490031))

(assert (=> b!509132 m!490019))

(declare-fun m!490033 () Bool)

(assert (=> b!509132 m!490033))

(assert (=> b!509132 m!490019))

(declare-fun m!490035 () Bool)

(assert (=> b!509132 m!490035))

(assert (=> b!509132 m!490025))

(declare-fun m!490037 () Bool)

(assert (=> b!509132 m!490037))

(declare-fun m!490039 () Bool)

(assert (=> b!509134 m!490039))

(declare-fun m!490041 () Bool)

(assert (=> b!509130 m!490041))

(declare-fun m!490043 () Bool)

(assert (=> b!509136 m!490043))

(declare-fun m!490045 () Bool)

(assert (=> b!509137 m!490045))

(declare-fun m!490047 () Bool)

(assert (=> b!509138 m!490047))

(assert (=> b!509133 m!490019))

(assert (=> b!509133 m!490019))

(declare-fun m!490049 () Bool)

(assert (=> b!509133 m!490049))

(push 1)

