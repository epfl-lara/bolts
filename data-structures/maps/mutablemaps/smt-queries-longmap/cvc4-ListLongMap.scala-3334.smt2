; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46010 () Bool)

(assert start!46010)

(declare-fun b!509103 () Bool)

(declare-fun res!310106 () Bool)

(declare-fun e!297751 () Bool)

(assert (=> b!509103 (=> (not res!310106) (not e!297751))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32681 0))(
  ( (array!32682 (arr!15716 (Array (_ BitVec 32) (_ BitVec 64))) (size!16080 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32681)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509103 (= res!310106 (and (= (size!16080 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16080 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16080 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509104 () Bool)

(declare-fun res!310100 () Bool)

(assert (=> b!509104 (=> (not res!310100) (not e!297751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509104 (= res!310100 (validKeyInArray!0 (select (arr!15716 a!3235) j!176)))))

(declare-fun b!509106 () Bool)

(declare-fun e!297752 () Bool)

(declare-datatypes ((SeekEntryResult!4190 0))(
  ( (MissingZero!4190 (index!18948 (_ BitVec 32))) (Found!4190 (index!18949 (_ BitVec 32))) (Intermediate!4190 (undefined!5002 Bool) (index!18950 (_ BitVec 32)) (x!47946 (_ BitVec 32))) (Undefined!4190) (MissingVacant!4190 (index!18951 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32681 (_ BitVec 32)) SeekEntryResult!4190)

(assert (=> b!509106 (= e!297752 (= (seekEntryOrOpen!0 (select (arr!15716 a!3235) j!176) a!3235 mask!3524) (Found!4190 j!176)))))

(declare-fun b!509107 () Bool)

(declare-fun res!310103 () Bool)

(declare-fun e!297754 () Bool)

(assert (=> b!509107 (=> (not res!310103) (not e!297754))))

(declare-datatypes ((List!9927 0))(
  ( (Nil!9924) (Cons!9923 (h!10800 (_ BitVec 64)) (t!16163 List!9927)) )
))
(declare-fun arrayNoDuplicates!0 (array!32681 (_ BitVec 32) List!9927) Bool)

(assert (=> b!509107 (= res!310103 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9924))))

(declare-fun b!509108 () Bool)

(declare-fun res!310098 () Bool)

(assert (=> b!509108 (=> (not res!310098) (not e!297751))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!509108 (= res!310098 (validKeyInArray!0 k!2280))))

(declare-fun b!509109 () Bool)

(assert (=> b!509109 (= e!297751 e!297754)))

(declare-fun res!310101 () Bool)

(assert (=> b!509109 (=> (not res!310101) (not e!297754))))

(declare-fun lt!232588 () SeekEntryResult!4190)

(assert (=> b!509109 (= res!310101 (or (= lt!232588 (MissingZero!4190 i!1204)) (= lt!232588 (MissingVacant!4190 i!1204))))))

(assert (=> b!509109 (= lt!232588 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!310105 () Bool)

(assert (=> start!46010 (=> (not res!310105) (not e!297751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46010 (= res!310105 (validMask!0 mask!3524))))

(assert (=> start!46010 e!297751))

(assert (=> start!46010 true))

(declare-fun array_inv!11490 (array!32681) Bool)

(assert (=> start!46010 (array_inv!11490 a!3235)))

(declare-fun b!509105 () Bool)

(declare-fun res!310099 () Bool)

(assert (=> b!509105 (=> (not res!310099) (not e!297751))))

(declare-fun arrayContainsKey!0 (array!32681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509105 (= res!310099 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509110 () Bool)

(assert (=> b!509110 (= e!297754 (not true))))

(declare-fun lt!232586 () (_ BitVec 32))

(declare-fun lt!232585 () SeekEntryResult!4190)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32681 (_ BitVec 32)) SeekEntryResult!4190)

(assert (=> b!509110 (= lt!232585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232586 (select (store (arr!15716 a!3235) i!1204 k!2280) j!176) (array!32682 (store (arr!15716 a!3235) i!1204 k!2280) (size!16080 a!3235)) mask!3524))))

(declare-fun lt!232587 () SeekEntryResult!4190)

(declare-fun lt!232589 () (_ BitVec 32))

(assert (=> b!509110 (= lt!232587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232589 (select (arr!15716 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509110 (= lt!232586 (toIndex!0 (select (store (arr!15716 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509110 (= lt!232589 (toIndex!0 (select (arr!15716 a!3235) j!176) mask!3524))))

(assert (=> b!509110 e!297752))

(declare-fun res!310102 () Bool)

(assert (=> b!509110 (=> (not res!310102) (not e!297752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32681 (_ BitVec 32)) Bool)

(assert (=> b!509110 (= res!310102 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15630 0))(
  ( (Unit!15631) )
))
(declare-fun lt!232584 () Unit!15630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15630)

(assert (=> b!509110 (= lt!232584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509111 () Bool)

(declare-fun res!310104 () Bool)

(assert (=> b!509111 (=> (not res!310104) (not e!297754))))

(assert (=> b!509111 (= res!310104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46010 res!310105) b!509103))

(assert (= (and b!509103 res!310106) b!509104))

(assert (= (and b!509104 res!310100) b!509108))

(assert (= (and b!509108 res!310098) b!509105))

(assert (= (and b!509105 res!310099) b!509109))

(assert (= (and b!509109 res!310101) b!509111))

(assert (= (and b!509111 res!310104) b!509107))

(assert (= (and b!509107 res!310103) b!509110))

(assert (= (and b!509110 res!310102) b!509106))

(declare-fun m!489979 () Bool)

(assert (=> b!509106 m!489979))

(assert (=> b!509106 m!489979))

(declare-fun m!489981 () Bool)

(assert (=> b!509106 m!489981))

(declare-fun m!489983 () Bool)

(assert (=> b!509107 m!489983))

(declare-fun m!489985 () Bool)

(assert (=> b!509108 m!489985))

(declare-fun m!489987 () Bool)

(assert (=> b!509110 m!489987))

(declare-fun m!489989 () Bool)

(assert (=> b!509110 m!489989))

(declare-fun m!489991 () Bool)

(assert (=> b!509110 m!489991))

(assert (=> b!509110 m!489979))

(declare-fun m!489993 () Bool)

(assert (=> b!509110 m!489993))

(assert (=> b!509110 m!489979))

(declare-fun m!489995 () Bool)

(assert (=> b!509110 m!489995))

(assert (=> b!509110 m!489991))

(declare-fun m!489997 () Bool)

(assert (=> b!509110 m!489997))

(assert (=> b!509110 m!489979))

(declare-fun m!489999 () Bool)

(assert (=> b!509110 m!489999))

(assert (=> b!509110 m!489991))

(declare-fun m!490001 () Bool)

(assert (=> b!509110 m!490001))

(declare-fun m!490003 () Bool)

(assert (=> b!509105 m!490003))

(assert (=> b!509104 m!489979))

(assert (=> b!509104 m!489979))

(declare-fun m!490005 () Bool)

(assert (=> b!509104 m!490005))

(declare-fun m!490007 () Bool)

(assert (=> start!46010 m!490007))

(declare-fun m!490009 () Bool)

(assert (=> start!46010 m!490009))

(declare-fun m!490011 () Bool)

(assert (=> b!509111 m!490011))

(declare-fun m!490013 () Bool)

(assert (=> b!509109 m!490013))

(push 1)

