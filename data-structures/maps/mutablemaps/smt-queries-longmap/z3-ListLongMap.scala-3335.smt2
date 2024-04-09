; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46014 () Bool)

(assert start!46014)

(declare-fun b!509157 () Bool)

(declare-fun res!310155 () Bool)

(declare-fun e!297775 () Bool)

(assert (=> b!509157 (=> (not res!310155) (not e!297775))))

(declare-datatypes ((array!32685 0))(
  ( (array!32686 (arr!15718 (Array (_ BitVec 32) (_ BitVec 64))) (size!16082 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32685)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32685 (_ BitVec 32)) Bool)

(assert (=> b!509157 (= res!310155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509158 () Bool)

(declare-fun res!310154 () Bool)

(declare-fun e!297778 () Bool)

(assert (=> b!509158 (=> (not res!310154) (not e!297778))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509158 (= res!310154 (validKeyInArray!0 (select (arr!15718 a!3235) j!176)))))

(declare-fun e!297776 () Bool)

(declare-fun b!509159 () Bool)

(declare-datatypes ((SeekEntryResult!4192 0))(
  ( (MissingZero!4192 (index!18956 (_ BitVec 32))) (Found!4192 (index!18957 (_ BitVec 32))) (Intermediate!4192 (undefined!5004 Bool) (index!18958 (_ BitVec 32)) (x!47956 (_ BitVec 32))) (Undefined!4192) (MissingVacant!4192 (index!18959 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32685 (_ BitVec 32)) SeekEntryResult!4192)

(assert (=> b!509159 (= e!297776 (= (seekEntryOrOpen!0 (select (arr!15718 a!3235) j!176) a!3235 mask!3524) (Found!4192 j!176)))))

(declare-fun b!509160 () Bool)

(declare-fun res!310159 () Bool)

(assert (=> b!509160 (=> (not res!310159) (not e!297775))))

(declare-datatypes ((List!9929 0))(
  ( (Nil!9926) (Cons!9925 (h!10802 (_ BitVec 64)) (t!16165 List!9929)) )
))
(declare-fun arrayNoDuplicates!0 (array!32685 (_ BitVec 32) List!9929) Bool)

(assert (=> b!509160 (= res!310159 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9926))))

(declare-fun b!509161 () Bool)

(assert (=> b!509161 (= e!297775 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!232623 () (_ BitVec 32))

(declare-fun lt!232624 () SeekEntryResult!4192)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32685 (_ BitVec 32)) SeekEntryResult!4192)

(assert (=> b!509161 (= lt!232624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232623 (select (store (arr!15718 a!3235) i!1204 k0!2280) j!176) (array!32686 (store (arr!15718 a!3235) i!1204 k0!2280) (size!16082 a!3235)) mask!3524))))

(declare-fun lt!232621 () (_ BitVec 32))

(declare-fun lt!232622 () SeekEntryResult!4192)

(assert (=> b!509161 (= lt!232622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232621 (select (arr!15718 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509161 (= lt!232623 (toIndex!0 (select (store (arr!15718 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509161 (= lt!232621 (toIndex!0 (select (arr!15718 a!3235) j!176) mask!3524))))

(assert (=> b!509161 e!297776))

(declare-fun res!310158 () Bool)

(assert (=> b!509161 (=> (not res!310158) (not e!297776))))

(assert (=> b!509161 (= res!310158 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15634 0))(
  ( (Unit!15635) )
))
(declare-fun lt!232620 () Unit!15634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15634)

(assert (=> b!509161 (= lt!232620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509162 () Bool)

(declare-fun res!310157 () Bool)

(assert (=> b!509162 (=> (not res!310157) (not e!297778))))

(assert (=> b!509162 (= res!310157 (and (= (size!16082 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16082 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16082 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509164 () Bool)

(declare-fun res!310156 () Bool)

(assert (=> b!509164 (=> (not res!310156) (not e!297778))))

(assert (=> b!509164 (= res!310156 (validKeyInArray!0 k0!2280))))

(declare-fun b!509165 () Bool)

(assert (=> b!509165 (= e!297778 e!297775)))

(declare-fun res!310152 () Bool)

(assert (=> b!509165 (=> (not res!310152) (not e!297775))))

(declare-fun lt!232625 () SeekEntryResult!4192)

(assert (=> b!509165 (= res!310152 (or (= lt!232625 (MissingZero!4192 i!1204)) (= lt!232625 (MissingVacant!4192 i!1204))))))

(assert (=> b!509165 (= lt!232625 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!310153 () Bool)

(assert (=> start!46014 (=> (not res!310153) (not e!297778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46014 (= res!310153 (validMask!0 mask!3524))))

(assert (=> start!46014 e!297778))

(assert (=> start!46014 true))

(declare-fun array_inv!11492 (array!32685) Bool)

(assert (=> start!46014 (array_inv!11492 a!3235)))

(declare-fun b!509163 () Bool)

(declare-fun res!310160 () Bool)

(assert (=> b!509163 (=> (not res!310160) (not e!297778))))

(declare-fun arrayContainsKey!0 (array!32685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509163 (= res!310160 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46014 res!310153) b!509162))

(assert (= (and b!509162 res!310157) b!509158))

(assert (= (and b!509158 res!310154) b!509164))

(assert (= (and b!509164 res!310156) b!509163))

(assert (= (and b!509163 res!310160) b!509165))

(assert (= (and b!509165 res!310152) b!509157))

(assert (= (and b!509157 res!310155) b!509160))

(assert (= (and b!509160 res!310159) b!509161))

(assert (= (and b!509161 res!310158) b!509159))

(declare-fun m!490051 () Bool)

(assert (=> b!509161 m!490051))

(declare-fun m!490053 () Bool)

(assert (=> b!509161 m!490053))

(declare-fun m!490055 () Bool)

(assert (=> b!509161 m!490055))

(declare-fun m!490057 () Bool)

(assert (=> b!509161 m!490057))

(declare-fun m!490059 () Bool)

(assert (=> b!509161 m!490059))

(assert (=> b!509161 m!490057))

(declare-fun m!490061 () Bool)

(assert (=> b!509161 m!490061))

(assert (=> b!509161 m!490057))

(declare-fun m!490063 () Bool)

(assert (=> b!509161 m!490063))

(assert (=> b!509161 m!490055))

(declare-fun m!490065 () Bool)

(assert (=> b!509161 m!490065))

(assert (=> b!509161 m!490055))

(declare-fun m!490067 () Bool)

(assert (=> b!509161 m!490067))

(declare-fun m!490069 () Bool)

(assert (=> start!46014 m!490069))

(declare-fun m!490071 () Bool)

(assert (=> start!46014 m!490071))

(declare-fun m!490073 () Bool)

(assert (=> b!509157 m!490073))

(assert (=> b!509159 m!490057))

(assert (=> b!509159 m!490057))

(declare-fun m!490075 () Bool)

(assert (=> b!509159 m!490075))

(assert (=> b!509158 m!490057))

(assert (=> b!509158 m!490057))

(declare-fun m!490077 () Bool)

(assert (=> b!509158 m!490077))

(declare-fun m!490079 () Bool)

(assert (=> b!509160 m!490079))

(declare-fun m!490081 () Bool)

(assert (=> b!509163 m!490081))

(declare-fun m!490083 () Bool)

(assert (=> b!509165 m!490083))

(declare-fun m!490085 () Bool)

(assert (=> b!509164 m!490085))

(check-sat (not b!509164) (not b!509157) (not b!509165) (not start!46014) (not b!509163) (not b!509159) (not b!509161) (not b!509158) (not b!509160))
(check-sat)
