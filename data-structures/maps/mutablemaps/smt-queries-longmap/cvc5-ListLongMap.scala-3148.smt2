; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44320 () Bool)

(assert start!44320)

(declare-fun b!487095 () Bool)

(declare-fun e!286617 () Bool)

(declare-fun e!286616 () Bool)

(assert (=> b!487095 (= e!286617 e!286616)))

(declare-fun res!290636 () Bool)

(assert (=> b!487095 (=> (not res!290636) (not e!286616))))

(declare-datatypes ((SeekEntryResult!3630 0))(
  ( (MissingZero!3630 (index!16699 (_ BitVec 32))) (Found!3630 (index!16700 (_ BitVec 32))) (Intermediate!3630 (undefined!4442 Bool) (index!16701 (_ BitVec 32)) (x!45853 (_ BitVec 32))) (Undefined!3630) (MissingVacant!3630 (index!16702 (_ BitVec 32))) )
))
(declare-fun lt!219950 () SeekEntryResult!3630)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487095 (= res!290636 (or (= lt!219950 (MissingZero!3630 i!1204)) (= lt!219950 (MissingVacant!3630 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31531 0))(
  ( (array!31532 (arr!15156 (Array (_ BitVec 32) (_ BitVec 64))) (size!15520 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31531)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31531 (_ BitVec 32)) SeekEntryResult!3630)

(assert (=> b!487095 (= lt!219950 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487096 () Bool)

(declare-fun res!290639 () Bool)

(assert (=> b!487096 (=> (not res!290639) (not e!286617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487096 (= res!290639 (validKeyInArray!0 k!2280))))

(declare-fun res!290635 () Bool)

(assert (=> start!44320 (=> (not res!290635) (not e!286617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44320 (= res!290635 (validMask!0 mask!3524))))

(assert (=> start!44320 e!286617))

(assert (=> start!44320 true))

(declare-fun array_inv!10930 (array!31531) Bool)

(assert (=> start!44320 (array_inv!10930 a!3235)))

(declare-fun b!487097 () Bool)

(assert (=> b!487097 (= e!286616 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun e!286615 () Bool)

(assert (=> b!487097 e!286615))

(declare-fun res!290634 () Bool)

(assert (=> b!487097 (=> (not res!290634) (not e!286615))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31531 (_ BitVec 32)) Bool)

(assert (=> b!487097 (= res!290634 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14198 0))(
  ( (Unit!14199) )
))
(declare-fun lt!219949 () Unit!14198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14198)

(assert (=> b!487097 (= lt!219949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487098 () Bool)

(declare-fun res!290631 () Bool)

(assert (=> b!487098 (=> (not res!290631) (not e!286617))))

(assert (=> b!487098 (= res!290631 (and (= (size!15520 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15520 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15520 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487099 () Bool)

(declare-fun res!290633 () Bool)

(assert (=> b!487099 (=> (not res!290633) (not e!286616))))

(declare-datatypes ((List!9367 0))(
  ( (Nil!9364) (Cons!9363 (h!10219 (_ BitVec 64)) (t!15603 List!9367)) )
))
(declare-fun arrayNoDuplicates!0 (array!31531 (_ BitVec 32) List!9367) Bool)

(assert (=> b!487099 (= res!290633 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9364))))

(declare-fun b!487100 () Bool)

(assert (=> b!487100 (= e!286615 (= (seekEntryOrOpen!0 (select (arr!15156 a!3235) j!176) a!3235 mask!3524) (Found!3630 j!176)))))

(declare-fun b!487101 () Bool)

(declare-fun res!290638 () Bool)

(assert (=> b!487101 (=> (not res!290638) (not e!286616))))

(assert (=> b!487101 (= res!290638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487102 () Bool)

(declare-fun res!290637 () Bool)

(assert (=> b!487102 (=> (not res!290637) (not e!286617))))

(declare-fun arrayContainsKey!0 (array!31531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487102 (= res!290637 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487103 () Bool)

(declare-fun res!290632 () Bool)

(assert (=> b!487103 (=> (not res!290632) (not e!286617))))

(assert (=> b!487103 (= res!290632 (validKeyInArray!0 (select (arr!15156 a!3235) j!176)))))

(assert (= (and start!44320 res!290635) b!487098))

(assert (= (and b!487098 res!290631) b!487103))

(assert (= (and b!487103 res!290632) b!487096))

(assert (= (and b!487096 res!290639) b!487102))

(assert (= (and b!487102 res!290637) b!487095))

(assert (= (and b!487095 res!290636) b!487101))

(assert (= (and b!487101 res!290638) b!487099))

(assert (= (and b!487099 res!290633) b!487097))

(assert (= (and b!487097 res!290634) b!487100))

(declare-fun m!466963 () Bool)

(assert (=> b!487097 m!466963))

(declare-fun m!466965 () Bool)

(assert (=> b!487097 m!466965))

(declare-fun m!466967 () Bool)

(assert (=> b!487103 m!466967))

(assert (=> b!487103 m!466967))

(declare-fun m!466969 () Bool)

(assert (=> b!487103 m!466969))

(declare-fun m!466971 () Bool)

(assert (=> b!487099 m!466971))

(declare-fun m!466973 () Bool)

(assert (=> b!487096 m!466973))

(assert (=> b!487100 m!466967))

(assert (=> b!487100 m!466967))

(declare-fun m!466975 () Bool)

(assert (=> b!487100 m!466975))

(declare-fun m!466977 () Bool)

(assert (=> b!487102 m!466977))

(declare-fun m!466979 () Bool)

(assert (=> start!44320 m!466979))

(declare-fun m!466981 () Bool)

(assert (=> start!44320 m!466981))

(declare-fun m!466983 () Bool)

(assert (=> b!487101 m!466983))

(declare-fun m!466985 () Bool)

(assert (=> b!487095 m!466985))

(push 1)

