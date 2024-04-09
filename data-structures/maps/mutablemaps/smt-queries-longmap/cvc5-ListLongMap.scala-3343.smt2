; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46060 () Bool)

(assert start!46060)

(declare-fun b!509778 () Bool)

(declare-fun e!298053 () Bool)

(declare-fun e!298054 () Bool)

(assert (=> b!509778 (= e!298053 e!298054)))

(declare-fun res!310777 () Bool)

(assert (=> b!509778 (=> (not res!310777) (not e!298054))))

(declare-datatypes ((SeekEntryResult!4215 0))(
  ( (MissingZero!4215 (index!19048 (_ BitVec 32))) (Found!4215 (index!19049 (_ BitVec 32))) (Intermediate!4215 (undefined!5027 Bool) (index!19050 (_ BitVec 32)) (x!48043 (_ BitVec 32))) (Undefined!4215) (MissingVacant!4215 (index!19051 (_ BitVec 32))) )
))
(declare-fun lt!233034 () SeekEntryResult!4215)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509778 (= res!310777 (or (= lt!233034 (MissingZero!4215 i!1204)) (= lt!233034 (MissingVacant!4215 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32731 0))(
  ( (array!32732 (arr!15741 (Array (_ BitVec 32) (_ BitVec 64))) (size!16105 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32731)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32731 (_ BitVec 32)) SeekEntryResult!4215)

(assert (=> b!509778 (= lt!233034 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509780 () Bool)

(declare-fun res!310781 () Bool)

(assert (=> b!509780 (=> (not res!310781) (not e!298054))))

(declare-datatypes ((List!9952 0))(
  ( (Nil!9949) (Cons!9948 (h!10825 (_ BitVec 64)) (t!16188 List!9952)) )
))
(declare-fun arrayNoDuplicates!0 (array!32731 (_ BitVec 32) List!9952) Bool)

(assert (=> b!509780 (= res!310781 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9949))))

(declare-fun b!509781 () Bool)

(assert (=> b!509781 (= e!298054 (not true))))

(declare-fun lt!233035 () SeekEntryResult!4215)

(declare-fun lt!233036 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32731 (_ BitVec 32)) SeekEntryResult!4215)

(assert (=> b!509781 (= lt!233035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233036 (select (store (arr!15741 a!3235) i!1204 k!2280) j!176) (array!32732 (store (arr!15741 a!3235) i!1204 k!2280) (size!16105 a!3235)) mask!3524))))

(declare-fun lt!233039 () SeekEntryResult!4215)

(declare-fun lt!233037 () (_ BitVec 32))

(assert (=> b!509781 (= lt!233039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233037 (select (arr!15741 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509781 (= lt!233036 (toIndex!0 (select (store (arr!15741 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509781 (= lt!233037 (toIndex!0 (select (arr!15741 a!3235) j!176) mask!3524))))

(declare-fun e!298052 () Bool)

(assert (=> b!509781 e!298052))

(declare-fun res!310773 () Bool)

(assert (=> b!509781 (=> (not res!310773) (not e!298052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32731 (_ BitVec 32)) Bool)

(assert (=> b!509781 (= res!310773 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15680 0))(
  ( (Unit!15681) )
))
(declare-fun lt!233038 () Unit!15680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15680)

(assert (=> b!509781 (= lt!233038 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509782 () Bool)

(declare-fun res!310778 () Bool)

(assert (=> b!509782 (=> (not res!310778) (not e!298054))))

(assert (=> b!509782 (= res!310778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509783 () Bool)

(declare-fun res!310774 () Bool)

(assert (=> b!509783 (=> (not res!310774) (not e!298053))))

(assert (=> b!509783 (= res!310774 (and (= (size!16105 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16105 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16105 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509784 () Bool)

(declare-fun res!310775 () Bool)

(assert (=> b!509784 (=> (not res!310775) (not e!298053))))

(declare-fun arrayContainsKey!0 (array!32731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509784 (= res!310775 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509779 () Bool)

(declare-fun res!310776 () Bool)

(assert (=> b!509779 (=> (not res!310776) (not e!298053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509779 (= res!310776 (validKeyInArray!0 (select (arr!15741 a!3235) j!176)))))

(declare-fun res!310779 () Bool)

(assert (=> start!46060 (=> (not res!310779) (not e!298053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46060 (= res!310779 (validMask!0 mask!3524))))

(assert (=> start!46060 e!298053))

(assert (=> start!46060 true))

(declare-fun array_inv!11515 (array!32731) Bool)

(assert (=> start!46060 (array_inv!11515 a!3235)))

(declare-fun b!509785 () Bool)

(declare-fun res!310780 () Bool)

(assert (=> b!509785 (=> (not res!310780) (not e!298053))))

(assert (=> b!509785 (= res!310780 (validKeyInArray!0 k!2280))))

(declare-fun b!509786 () Bool)

(assert (=> b!509786 (= e!298052 (= (seekEntryOrOpen!0 (select (arr!15741 a!3235) j!176) a!3235 mask!3524) (Found!4215 j!176)))))

(assert (= (and start!46060 res!310779) b!509783))

(assert (= (and b!509783 res!310774) b!509779))

(assert (= (and b!509779 res!310776) b!509785))

(assert (= (and b!509785 res!310780) b!509784))

(assert (= (and b!509784 res!310775) b!509778))

(assert (= (and b!509778 res!310777) b!509782))

(assert (= (and b!509782 res!310778) b!509780))

(assert (= (and b!509780 res!310781) b!509781))

(assert (= (and b!509781 res!310773) b!509786))

(declare-fun m!490879 () Bool)

(assert (=> b!509786 m!490879))

(assert (=> b!509786 m!490879))

(declare-fun m!490881 () Bool)

(assert (=> b!509786 m!490881))

(declare-fun m!490883 () Bool)

(assert (=> b!509785 m!490883))

(declare-fun m!490885 () Bool)

(assert (=> b!509784 m!490885))

(assert (=> b!509779 m!490879))

(assert (=> b!509779 m!490879))

(declare-fun m!490887 () Bool)

(assert (=> b!509779 m!490887))

(declare-fun m!490889 () Bool)

(assert (=> b!509781 m!490889))

(declare-fun m!490891 () Bool)

(assert (=> b!509781 m!490891))

(declare-fun m!490893 () Bool)

(assert (=> b!509781 m!490893))

(assert (=> b!509781 m!490879))

(declare-fun m!490895 () Bool)

(assert (=> b!509781 m!490895))

(assert (=> b!509781 m!490879))

(declare-fun m!490897 () Bool)

(assert (=> b!509781 m!490897))

(assert (=> b!509781 m!490879))

(assert (=> b!509781 m!490893))

(declare-fun m!490899 () Bool)

(assert (=> b!509781 m!490899))

(assert (=> b!509781 m!490893))

(declare-fun m!490901 () Bool)

(assert (=> b!509781 m!490901))

(declare-fun m!490903 () Bool)

(assert (=> b!509781 m!490903))

(declare-fun m!490905 () Bool)

(assert (=> b!509780 m!490905))

(declare-fun m!490907 () Bool)

(assert (=> start!46060 m!490907))

(declare-fun m!490909 () Bool)

(assert (=> start!46060 m!490909))

(declare-fun m!490911 () Bool)

(assert (=> b!509782 m!490911))

(declare-fun m!490913 () Bool)

(assert (=> b!509778 m!490913))

(push 1)

