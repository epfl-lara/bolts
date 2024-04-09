; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44672 () Bool)

(assert start!44672)

(declare-fun b!489834 () Bool)

(declare-fun res!292926 () Bool)

(declare-fun e!288019 () Bool)

(assert (=> b!489834 (=> (not res!292926) (not e!288019))))

(declare-datatypes ((array!31691 0))(
  ( (array!31692 (arr!15230 (Array (_ BitVec 32) (_ BitVec 64))) (size!15594 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31691)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489834 (= res!292926 (validKeyInArray!0 (select (arr!15230 a!3235) j!176)))))

(declare-fun b!489835 () Bool)

(declare-fun res!292924 () Bool)

(declare-fun e!288018 () Bool)

(assert (=> b!489835 (=> (not res!292924) (not e!288018))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31691 (_ BitVec 32)) Bool)

(assert (=> b!489835 (= res!292924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!292920 () Bool)

(assert (=> start!44672 (=> (not res!292920) (not e!288019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44672 (= res!292920 (validMask!0 mask!3524))))

(assert (=> start!44672 e!288019))

(assert (=> start!44672 true))

(declare-fun array_inv!11004 (array!31691) Bool)

(assert (=> start!44672 (array_inv!11004 a!3235)))

(declare-fun b!489836 () Bool)

(assert (=> b!489836 (= e!288018 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!221184 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3704 0))(
  ( (MissingZero!3704 (index!16995 (_ BitVec 32))) (Found!3704 (index!16996 (_ BitVec 32))) (Intermediate!3704 (undefined!4516 Bool) (index!16997 (_ BitVec 32)) (x!46125 (_ BitVec 32))) (Undefined!3704) (MissingVacant!3704 (index!16998 (_ BitVec 32))) )
))
(declare-fun lt!221186 () SeekEntryResult!3704)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31691 (_ BitVec 32)) SeekEntryResult!3704)

(assert (=> b!489836 (= lt!221186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221184 (select (store (arr!15230 a!3235) i!1204 k!2280) j!176) (array!31692 (store (arr!15230 a!3235) i!1204 k!2280) (size!15594 a!3235)) mask!3524))))

(declare-fun lt!221181 () SeekEntryResult!3704)

(declare-fun lt!221183 () (_ BitVec 32))

(assert (=> b!489836 (= lt!221181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221183 (select (arr!15230 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489836 (= lt!221184 (toIndex!0 (select (store (arr!15230 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489836 (= lt!221183 (toIndex!0 (select (arr!15230 a!3235) j!176) mask!3524))))

(declare-fun e!288017 () Bool)

(assert (=> b!489836 e!288017))

(declare-fun res!292925 () Bool)

(assert (=> b!489836 (=> (not res!292925) (not e!288017))))

(assert (=> b!489836 (= res!292925 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14346 0))(
  ( (Unit!14347) )
))
(declare-fun lt!221185 () Unit!14346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14346)

(assert (=> b!489836 (= lt!221185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489837 () Bool)

(declare-fun res!292923 () Bool)

(assert (=> b!489837 (=> (not res!292923) (not e!288019))))

(assert (=> b!489837 (= res!292923 (and (= (size!15594 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15594 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15594 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489838 () Bool)

(declare-fun res!292928 () Bool)

(assert (=> b!489838 (=> (not res!292928) (not e!288018))))

(declare-datatypes ((List!9441 0))(
  ( (Nil!9438) (Cons!9437 (h!10299 (_ BitVec 64)) (t!15677 List!9441)) )
))
(declare-fun arrayNoDuplicates!0 (array!31691 (_ BitVec 32) List!9441) Bool)

(assert (=> b!489838 (= res!292928 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9438))))

(declare-fun b!489839 () Bool)

(declare-fun res!292921 () Bool)

(assert (=> b!489839 (=> (not res!292921) (not e!288019))))

(assert (=> b!489839 (= res!292921 (validKeyInArray!0 k!2280))))

(declare-fun b!489840 () Bool)

(assert (=> b!489840 (= e!288019 e!288018)))

(declare-fun res!292927 () Bool)

(assert (=> b!489840 (=> (not res!292927) (not e!288018))))

(declare-fun lt!221182 () SeekEntryResult!3704)

(assert (=> b!489840 (= res!292927 (or (= lt!221182 (MissingZero!3704 i!1204)) (= lt!221182 (MissingVacant!3704 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31691 (_ BitVec 32)) SeekEntryResult!3704)

(assert (=> b!489840 (= lt!221182 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489841 () Bool)

(declare-fun res!292922 () Bool)

(assert (=> b!489841 (=> (not res!292922) (not e!288019))))

(declare-fun arrayContainsKey!0 (array!31691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489841 (= res!292922 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489842 () Bool)

(assert (=> b!489842 (= e!288017 (= (seekEntryOrOpen!0 (select (arr!15230 a!3235) j!176) a!3235 mask!3524) (Found!3704 j!176)))))

(assert (= (and start!44672 res!292920) b!489837))

(assert (= (and b!489837 res!292923) b!489834))

(assert (= (and b!489834 res!292926) b!489839))

(assert (= (and b!489839 res!292921) b!489841))

(assert (= (and b!489841 res!292922) b!489840))

(assert (= (and b!489840 res!292927) b!489835))

(assert (= (and b!489835 res!292924) b!489838))

(assert (= (and b!489838 res!292928) b!489836))

(assert (= (and b!489836 res!292925) b!489842))

(declare-fun m!469843 () Bool)

(assert (=> b!489839 m!469843))

(declare-fun m!469845 () Bool)

(assert (=> b!489834 m!469845))

(assert (=> b!489834 m!469845))

(declare-fun m!469847 () Bool)

(assert (=> b!489834 m!469847))

(declare-fun m!469849 () Bool)

(assert (=> b!489841 m!469849))

(assert (=> b!489842 m!469845))

(assert (=> b!489842 m!469845))

(declare-fun m!469851 () Bool)

(assert (=> b!489842 m!469851))

(declare-fun m!469853 () Bool)

(assert (=> b!489835 m!469853))

(declare-fun m!469855 () Bool)

(assert (=> b!489840 m!469855))

(declare-fun m!469857 () Bool)

(assert (=> b!489838 m!469857))

(declare-fun m!469859 () Bool)

(assert (=> b!489836 m!469859))

(declare-fun m!469861 () Bool)

(assert (=> b!489836 m!469861))

(declare-fun m!469863 () Bool)

(assert (=> b!489836 m!469863))

(assert (=> b!489836 m!469863))

(declare-fun m!469865 () Bool)

(assert (=> b!489836 m!469865))

(assert (=> b!489836 m!469845))

(declare-fun m!469867 () Bool)

(assert (=> b!489836 m!469867))

(assert (=> b!489836 m!469845))

(declare-fun m!469869 () Bool)

(assert (=> b!489836 m!469869))

(assert (=> b!489836 m!469845))

(declare-fun m!469871 () Bool)

(assert (=> b!489836 m!469871))

(assert (=> b!489836 m!469863))

(declare-fun m!469873 () Bool)

(assert (=> b!489836 m!469873))

(declare-fun m!469875 () Bool)

(assert (=> start!44672 m!469875))

(declare-fun m!469877 () Bool)

(assert (=> start!44672 m!469877))

(push 1)

