; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46070 () Bool)

(assert start!46070)

(declare-fun b!509913 () Bool)

(declare-fun res!310912 () Bool)

(declare-fun e!298111 () Bool)

(assert (=> b!509913 (=> (not res!310912) (not e!298111))))

(declare-datatypes ((array!32741 0))(
  ( (array!32742 (arr!15746 (Array (_ BitVec 32) (_ BitVec 64))) (size!16110 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32741)

(declare-datatypes ((List!9957 0))(
  ( (Nil!9954) (Cons!9953 (h!10830 (_ BitVec 64)) (t!16193 List!9957)) )
))
(declare-fun arrayNoDuplicates!0 (array!32741 (_ BitVec 32) List!9957) Bool)

(assert (=> b!509913 (= res!310912 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9954))))

(declare-fun res!310916 () Bool)

(declare-fun e!298114 () Bool)

(assert (=> start!46070 (=> (not res!310916) (not e!298114))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46070 (= res!310916 (validMask!0 mask!3524))))

(assert (=> start!46070 e!298114))

(assert (=> start!46070 true))

(declare-fun array_inv!11520 (array!32741) Bool)

(assert (=> start!46070 (array_inv!11520 a!3235)))

(declare-fun b!509914 () Bool)

(assert (=> b!509914 (= e!298114 e!298111)))

(declare-fun res!310909 () Bool)

(assert (=> b!509914 (=> (not res!310909) (not e!298111))))

(declare-datatypes ((SeekEntryResult!4220 0))(
  ( (MissingZero!4220 (index!19068 (_ BitVec 32))) (Found!4220 (index!19069 (_ BitVec 32))) (Intermediate!4220 (undefined!5032 Bool) (index!19070 (_ BitVec 32)) (x!48056 (_ BitVec 32))) (Undefined!4220) (MissingVacant!4220 (index!19071 (_ BitVec 32))) )
))
(declare-fun lt!233124 () SeekEntryResult!4220)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509914 (= res!310909 (or (= lt!233124 (MissingZero!4220 i!1204)) (= lt!233124 (MissingVacant!4220 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32741 (_ BitVec 32)) SeekEntryResult!4220)

(assert (=> b!509914 (= lt!233124 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509915 () Bool)

(declare-fun res!310908 () Bool)

(assert (=> b!509915 (=> (not res!310908) (not e!298114))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509915 (= res!310908 (validKeyInArray!0 (select (arr!15746 a!3235) j!176)))))

(declare-fun b!509916 () Bool)

(declare-fun res!310914 () Bool)

(assert (=> b!509916 (=> (not res!310914) (not e!298114))))

(assert (=> b!509916 (= res!310914 (and (= (size!16110 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16110 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16110 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509917 () Bool)

(declare-fun res!310915 () Bool)

(assert (=> b!509917 (=> (not res!310915) (not e!298114))))

(assert (=> b!509917 (= res!310915 (validKeyInArray!0 k!2280))))

(declare-fun b!509918 () Bool)

(declare-fun res!310913 () Bool)

(assert (=> b!509918 (=> (not res!310913) (not e!298114))))

(declare-fun arrayContainsKey!0 (array!32741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509918 (= res!310913 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509919 () Bool)

(declare-fun res!310911 () Bool)

(assert (=> b!509919 (=> (not res!310911) (not e!298111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32741 (_ BitVec 32)) Bool)

(assert (=> b!509919 (= res!310911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509920 () Bool)

(declare-fun e!298113 () Bool)

(assert (=> b!509920 (= e!298113 (= (seekEntryOrOpen!0 (select (arr!15746 a!3235) j!176) a!3235 mask!3524) (Found!4220 j!176)))))

(declare-fun b!509921 () Bool)

(assert (=> b!509921 (= e!298111 (not true))))

(declare-fun lt!233128 () SeekEntryResult!4220)

(declare-fun lt!233129 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32741 (_ BitVec 32)) SeekEntryResult!4220)

(assert (=> b!509921 (= lt!233128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233129 (select (store (arr!15746 a!3235) i!1204 k!2280) j!176) (array!32742 (store (arr!15746 a!3235) i!1204 k!2280) (size!16110 a!3235)) mask!3524))))

(declare-fun lt!233127 () SeekEntryResult!4220)

(declare-fun lt!233126 () (_ BitVec 32))

(assert (=> b!509921 (= lt!233127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233126 (select (arr!15746 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509921 (= lt!233129 (toIndex!0 (select (store (arr!15746 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509921 (= lt!233126 (toIndex!0 (select (arr!15746 a!3235) j!176) mask!3524))))

(assert (=> b!509921 e!298113))

(declare-fun res!310910 () Bool)

(assert (=> b!509921 (=> (not res!310910) (not e!298113))))

(assert (=> b!509921 (= res!310910 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15690 0))(
  ( (Unit!15691) )
))
(declare-fun lt!233125 () Unit!15690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15690)

(assert (=> b!509921 (= lt!233125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46070 res!310916) b!509916))

(assert (= (and b!509916 res!310914) b!509915))

(assert (= (and b!509915 res!310908) b!509917))

(assert (= (and b!509917 res!310915) b!509918))

(assert (= (and b!509918 res!310913) b!509914))

(assert (= (and b!509914 res!310909) b!509919))

(assert (= (and b!509919 res!310911) b!509913))

(assert (= (and b!509913 res!310912) b!509921))

(assert (= (and b!509921 res!310910) b!509920))

(declare-fun m!491059 () Bool)

(assert (=> b!509920 m!491059))

(assert (=> b!509920 m!491059))

(declare-fun m!491061 () Bool)

(assert (=> b!509920 m!491061))

(declare-fun m!491063 () Bool)

(assert (=> b!509921 m!491063))

(declare-fun m!491065 () Bool)

(assert (=> b!509921 m!491065))

(declare-fun m!491067 () Bool)

(assert (=> b!509921 m!491067))

(assert (=> b!509921 m!491059))

(declare-fun m!491069 () Bool)

(assert (=> b!509921 m!491069))

(assert (=> b!509921 m!491059))

(declare-fun m!491071 () Bool)

(assert (=> b!509921 m!491071))

(assert (=> b!509921 m!491059))

(declare-fun m!491073 () Bool)

(assert (=> b!509921 m!491073))

(assert (=> b!509921 m!491067))

(declare-fun m!491075 () Bool)

(assert (=> b!509921 m!491075))

(assert (=> b!509921 m!491067))

(declare-fun m!491077 () Bool)

(assert (=> b!509921 m!491077))

(declare-fun m!491079 () Bool)

(assert (=> b!509918 m!491079))

(declare-fun m!491081 () Bool)

(assert (=> b!509917 m!491081))

(declare-fun m!491083 () Bool)

(assert (=> b!509919 m!491083))

(declare-fun m!491085 () Bool)

(assert (=> b!509914 m!491085))

(assert (=> b!509915 m!491059))

(assert (=> b!509915 m!491059))

(declare-fun m!491087 () Bool)

(assert (=> b!509915 m!491087))

(declare-fun m!491089 () Bool)

(assert (=> b!509913 m!491089))

(declare-fun m!491091 () Bool)

(assert (=> start!46070 m!491091))

(declare-fun m!491093 () Bool)

(assert (=> start!46070 m!491093))

(push 1)

