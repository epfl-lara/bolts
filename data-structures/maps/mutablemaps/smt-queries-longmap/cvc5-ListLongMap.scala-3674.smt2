; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50678 () Bool)

(assert start!50678)

(declare-fun b!553628 () Bool)

(declare-fun res!346198 () Bool)

(declare-fun e!319309 () Bool)

(assert (=> b!553628 (=> (not res!346198) (not e!319309))))

(declare-datatypes ((array!34857 0))(
  ( (array!34858 (arr!16734 (Array (_ BitVec 32) (_ BitVec 64))) (size!17098 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34857)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553628 (= res!346198 (validKeyInArray!0 (select (arr!16734 a!3118) j!142)))))

(declare-fun b!553629 () Bool)

(declare-fun e!319310 () Bool)

(assert (=> b!553629 (= e!319310 (not true))))

(declare-fun e!319311 () Bool)

(assert (=> b!553629 e!319311))

(declare-fun res!346194 () Bool)

(assert (=> b!553629 (=> (not res!346194) (not e!319311))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34857 (_ BitVec 32)) Bool)

(assert (=> b!553629 (= res!346194 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17154 0))(
  ( (Unit!17155) )
))
(declare-fun lt!251551 () Unit!17154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17154)

(assert (=> b!553629 (= lt!251551 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!346190 () Bool)

(assert (=> start!50678 (=> (not res!346190) (not e!319309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50678 (= res!346190 (validMask!0 mask!3119))))

(assert (=> start!50678 e!319309))

(assert (=> start!50678 true))

(declare-fun array_inv!12508 (array!34857) Bool)

(assert (=> start!50678 (array_inv!12508 a!3118)))

(declare-fun b!553630 () Bool)

(declare-fun res!346193 () Bool)

(assert (=> b!553630 (=> (not res!346193) (not e!319309))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553630 (= res!346193 (and (= (size!17098 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17098 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17098 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553631 () Bool)

(declare-fun res!346192 () Bool)

(assert (=> b!553631 (=> (not res!346192) (not e!319310))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5190 0))(
  ( (MissingZero!5190 (index!22987 (_ BitVec 32))) (Found!5190 (index!22988 (_ BitVec 32))) (Intermediate!5190 (undefined!6002 Bool) (index!22989 (_ BitVec 32)) (x!51939 (_ BitVec 32))) (Undefined!5190) (MissingVacant!5190 (index!22990 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34857 (_ BitVec 32)) SeekEntryResult!5190)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553631 (= res!346192 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16734 a!3118) j!142) mask!3119) (select (arr!16734 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16734 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16734 a!3118) i!1132 k!1914) j!142) (array!34858 (store (arr!16734 a!3118) i!1132 k!1914) (size!17098 a!3118)) mask!3119)))))

(declare-fun b!553632 () Bool)

(declare-fun res!346191 () Bool)

(assert (=> b!553632 (=> (not res!346191) (not e!319310))))

(declare-datatypes ((List!10867 0))(
  ( (Nil!10864) (Cons!10863 (h!11848 (_ BitVec 64)) (t!17103 List!10867)) )
))
(declare-fun arrayNoDuplicates!0 (array!34857 (_ BitVec 32) List!10867) Bool)

(assert (=> b!553632 (= res!346191 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10864))))

(declare-fun b!553633 () Bool)

(declare-fun res!346196 () Bool)

(assert (=> b!553633 (=> (not res!346196) (not e!319310))))

(assert (=> b!553633 (= res!346196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553634 () Bool)

(declare-fun res!346195 () Bool)

(assert (=> b!553634 (=> (not res!346195) (not e!319309))))

(declare-fun arrayContainsKey!0 (array!34857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553634 (= res!346195 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34857 (_ BitVec 32)) SeekEntryResult!5190)

(assert (=> b!553635 (= e!319311 (= (seekEntryOrOpen!0 (select (arr!16734 a!3118) j!142) a!3118 mask!3119) (Found!5190 j!142)))))

(declare-fun b!553636 () Bool)

(assert (=> b!553636 (= e!319309 e!319310)))

(declare-fun res!346197 () Bool)

(assert (=> b!553636 (=> (not res!346197) (not e!319310))))

(declare-fun lt!251552 () SeekEntryResult!5190)

(assert (=> b!553636 (= res!346197 (or (= lt!251552 (MissingZero!5190 i!1132)) (= lt!251552 (MissingVacant!5190 i!1132))))))

(assert (=> b!553636 (= lt!251552 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553637 () Bool)

(declare-fun res!346199 () Bool)

(assert (=> b!553637 (=> (not res!346199) (not e!319309))))

(assert (=> b!553637 (= res!346199 (validKeyInArray!0 k!1914))))

(assert (= (and start!50678 res!346190) b!553630))

(assert (= (and b!553630 res!346193) b!553628))

(assert (= (and b!553628 res!346198) b!553637))

(assert (= (and b!553637 res!346199) b!553634))

(assert (= (and b!553634 res!346195) b!553636))

(assert (= (and b!553636 res!346197) b!553633))

(assert (= (and b!553633 res!346196) b!553632))

(assert (= (and b!553632 res!346191) b!553631))

(assert (= (and b!553631 res!346192) b!553629))

(assert (= (and b!553629 res!346194) b!553635))

(declare-fun m!530827 () Bool)

(assert (=> b!553635 m!530827))

(assert (=> b!553635 m!530827))

(declare-fun m!530829 () Bool)

(assert (=> b!553635 m!530829))

(assert (=> b!553628 m!530827))

(assert (=> b!553628 m!530827))

(declare-fun m!530831 () Bool)

(assert (=> b!553628 m!530831))

(assert (=> b!553631 m!530827))

(declare-fun m!530833 () Bool)

(assert (=> b!553631 m!530833))

(assert (=> b!553631 m!530827))

(declare-fun m!530835 () Bool)

(assert (=> b!553631 m!530835))

(declare-fun m!530837 () Bool)

(assert (=> b!553631 m!530837))

(assert (=> b!553631 m!530835))

(declare-fun m!530839 () Bool)

(assert (=> b!553631 m!530839))

(assert (=> b!553631 m!530833))

(assert (=> b!553631 m!530827))

(declare-fun m!530841 () Bool)

(assert (=> b!553631 m!530841))

(declare-fun m!530843 () Bool)

(assert (=> b!553631 m!530843))

(assert (=> b!553631 m!530835))

(assert (=> b!553631 m!530837))

(declare-fun m!530845 () Bool)

(assert (=> b!553637 m!530845))

(declare-fun m!530847 () Bool)

(assert (=> b!553632 m!530847))

(declare-fun m!530849 () Bool)

(assert (=> b!553633 m!530849))

(declare-fun m!530851 () Bool)

(assert (=> start!50678 m!530851))

(declare-fun m!530853 () Bool)

(assert (=> start!50678 m!530853))

(declare-fun m!530855 () Bool)

(assert (=> b!553634 m!530855))

(declare-fun m!530857 () Bool)

(assert (=> b!553636 m!530857))

(declare-fun m!530859 () Bool)

(assert (=> b!553629 m!530859))

(declare-fun m!530861 () Bool)

(assert (=> b!553629 m!530861))

(push 1)

