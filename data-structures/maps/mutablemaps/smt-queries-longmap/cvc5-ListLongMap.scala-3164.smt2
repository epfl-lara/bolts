; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44620 () Bool)

(assert start!44620)

(declare-fun b!489132 () Bool)

(declare-fun res!292219 () Bool)

(declare-fun e!287705 () Bool)

(assert (=> b!489132 (=> (not res!292219) (not e!287705))))

(declare-datatypes ((array!31639 0))(
  ( (array!31640 (arr!15204 (Array (_ BitVec 32) (_ BitVec 64))) (size!15568 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31639)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489132 (= res!292219 (validKeyInArray!0 (select (arr!15204 a!3235) j!176)))))

(declare-fun b!489133 () Bool)

(declare-fun res!292226 () Bool)

(declare-fun e!287704 () Bool)

(assert (=> b!489133 (=> (not res!292226) (not e!287704))))

(declare-datatypes ((List!9415 0))(
  ( (Nil!9412) (Cons!9411 (h!10273 (_ BitVec 64)) (t!15651 List!9415)) )
))
(declare-fun arrayNoDuplicates!0 (array!31639 (_ BitVec 32) List!9415) Bool)

(assert (=> b!489133 (= res!292226 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9412))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!287707 () Bool)

(declare-fun b!489134 () Bool)

(declare-datatypes ((SeekEntryResult!3678 0))(
  ( (MissingZero!3678 (index!16891 (_ BitVec 32))) (Found!3678 (index!16892 (_ BitVec 32))) (Intermediate!3678 (undefined!4490 Bool) (index!16893 (_ BitVec 32)) (x!46035 (_ BitVec 32))) (Undefined!3678) (MissingVacant!3678 (index!16894 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31639 (_ BitVec 32)) SeekEntryResult!3678)

(assert (=> b!489134 (= e!287707 (= (seekEntryOrOpen!0 (select (arr!15204 a!3235) j!176) a!3235 mask!3524) (Found!3678 j!176)))))

(declare-fun b!489135 () Bool)

(declare-fun res!292223 () Bool)

(assert (=> b!489135 (=> (not res!292223) (not e!287705))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489135 (= res!292223 (and (= (size!15568 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15568 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15568 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292225 () Bool)

(assert (=> start!44620 (=> (not res!292225) (not e!287705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44620 (= res!292225 (validMask!0 mask!3524))))

(assert (=> start!44620 e!287705))

(assert (=> start!44620 true))

(declare-fun array_inv!10978 (array!31639) Bool)

(assert (=> start!44620 (array_inv!10978 a!3235)))

(declare-fun b!489136 () Bool)

(declare-fun res!292220 () Bool)

(assert (=> b!489136 (=> (not res!292220) (not e!287705))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489136 (= res!292220 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489137 () Bool)

(declare-fun res!292222 () Bool)

(assert (=> b!489137 (=> (not res!292222) (not e!287704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31639 (_ BitVec 32)) Bool)

(assert (=> b!489137 (= res!292222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489138 () Bool)

(declare-fun res!292218 () Bool)

(assert (=> b!489138 (=> (not res!292218) (not e!287705))))

(assert (=> b!489138 (= res!292218 (validKeyInArray!0 k!2280))))

(declare-fun b!489139 () Bool)

(assert (=> b!489139 (= e!287705 e!287704)))

(declare-fun res!292224 () Bool)

(assert (=> b!489139 (=> (not res!292224) (not e!287704))))

(declare-fun lt!220713 () SeekEntryResult!3678)

(assert (=> b!489139 (= res!292224 (or (= lt!220713 (MissingZero!3678 i!1204)) (= lt!220713 (MissingVacant!3678 i!1204))))))

(assert (=> b!489139 (= lt!220713 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489140 () Bool)

(assert (=> b!489140 (= e!287704 (not true))))

(declare-fun lt!220714 () (_ BitVec 32))

(declare-fun lt!220715 () SeekEntryResult!3678)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31639 (_ BitVec 32)) SeekEntryResult!3678)

(assert (=> b!489140 (= lt!220715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220714 (select (store (arr!15204 a!3235) i!1204 k!2280) j!176) (array!31640 (store (arr!15204 a!3235) i!1204 k!2280) (size!15568 a!3235)) mask!3524))))

(declare-fun lt!220717 () SeekEntryResult!3678)

(declare-fun lt!220716 () (_ BitVec 32))

(assert (=> b!489140 (= lt!220717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220716 (select (arr!15204 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489140 (= lt!220714 (toIndex!0 (select (store (arr!15204 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489140 (= lt!220716 (toIndex!0 (select (arr!15204 a!3235) j!176) mask!3524))))

(assert (=> b!489140 e!287707))

(declare-fun res!292221 () Bool)

(assert (=> b!489140 (=> (not res!292221) (not e!287707))))

(assert (=> b!489140 (= res!292221 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14294 0))(
  ( (Unit!14295) )
))
(declare-fun lt!220718 () Unit!14294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14294)

(assert (=> b!489140 (= lt!220718 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44620 res!292225) b!489135))

(assert (= (and b!489135 res!292223) b!489132))

(assert (= (and b!489132 res!292219) b!489138))

(assert (= (and b!489138 res!292218) b!489136))

(assert (= (and b!489136 res!292220) b!489139))

(assert (= (and b!489139 res!292224) b!489137))

(assert (= (and b!489137 res!292222) b!489133))

(assert (= (and b!489133 res!292226) b!489140))

(assert (= (and b!489140 res!292221) b!489134))

(declare-fun m!468907 () Bool)

(assert (=> b!489137 m!468907))

(declare-fun m!468909 () Bool)

(assert (=> b!489133 m!468909))

(declare-fun m!468911 () Bool)

(assert (=> b!489138 m!468911))

(declare-fun m!468913 () Bool)

(assert (=> b!489136 m!468913))

(declare-fun m!468915 () Bool)

(assert (=> start!44620 m!468915))

(declare-fun m!468917 () Bool)

(assert (=> start!44620 m!468917))

(declare-fun m!468919 () Bool)

(assert (=> b!489132 m!468919))

(assert (=> b!489132 m!468919))

(declare-fun m!468921 () Bool)

(assert (=> b!489132 m!468921))

(declare-fun m!468923 () Bool)

(assert (=> b!489139 m!468923))

(assert (=> b!489140 m!468919))

(declare-fun m!468925 () Bool)

(assert (=> b!489140 m!468925))

(declare-fun m!468927 () Bool)

(assert (=> b!489140 m!468927))

(declare-fun m!468929 () Bool)

(assert (=> b!489140 m!468929))

(declare-fun m!468931 () Bool)

(assert (=> b!489140 m!468931))

(assert (=> b!489140 m!468919))

(declare-fun m!468933 () Bool)

(assert (=> b!489140 m!468933))

(assert (=> b!489140 m!468919))

(declare-fun m!468935 () Bool)

(assert (=> b!489140 m!468935))

(assert (=> b!489140 m!468931))

(declare-fun m!468937 () Bool)

(assert (=> b!489140 m!468937))

(assert (=> b!489140 m!468931))

(declare-fun m!468939 () Bool)

(assert (=> b!489140 m!468939))

(assert (=> b!489134 m!468919))

(assert (=> b!489134 m!468919))

(declare-fun m!468941 () Bool)

(assert (=> b!489134 m!468941))

(push 1)

