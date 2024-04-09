; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26078 () Bool)

(assert start!26078)

(declare-fun b!268838 () Bool)

(declare-fun res!133156 () Bool)

(declare-fun e!173587 () Bool)

(assert (=> b!268838 (=> (not res!133156) (not e!173587))))

(declare-datatypes ((array!13164 0))(
  ( (array!13165 (arr!6231 (Array (_ BitVec 32) (_ BitVec 64))) (size!6583 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13164)

(declare-datatypes ((List!4060 0))(
  ( (Nil!4057) (Cons!4056 (h!4723 (_ BitVec 64)) (t!9150 List!4060)) )
))
(declare-fun arrayNoDuplicates!0 (array!13164 (_ BitVec 32) List!4060) Bool)

(assert (=> b!268838 (= res!133156 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4057))))

(declare-fun b!268839 () Bool)

(declare-fun res!133158 () Bool)

(assert (=> b!268839 (=> (not res!133158) (not e!173587))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268839 (= res!133158 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268840 () Bool)

(declare-fun res!133154 () Bool)

(assert (=> b!268840 (=> (not res!133154) (not e!173587))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268840 (= res!133154 (and (= (size!6583 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6583 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6583 a!3325))))))

(declare-fun b!268837 () Bool)

(declare-fun res!133153 () Bool)

(assert (=> b!268837 (=> (not res!133153) (not e!173587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268837 (= res!133153 (validKeyInArray!0 k!2581))))

(declare-fun res!133155 () Bool)

(assert (=> start!26078 (=> (not res!133155) (not e!173587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26078 (= res!133155 (validMask!0 mask!3868))))

(assert (=> start!26078 e!173587))

(declare-fun array_inv!4185 (array!13164) Bool)

(assert (=> start!26078 (array_inv!4185 a!3325)))

(assert (=> start!26078 true))

(declare-fun b!268841 () Bool)

(declare-fun e!173585 () Bool)

(assert (=> b!268841 (= e!173587 e!173585)))

(declare-fun res!133157 () Bool)

(assert (=> b!268841 (=> (not res!133157) (not e!173585))))

(declare-datatypes ((SeekEntryResult!1400 0))(
  ( (MissingZero!1400 (index!7770 (_ BitVec 32))) (Found!1400 (index!7771 (_ BitVec 32))) (Intermediate!1400 (undefined!2212 Bool) (index!7772 (_ BitVec 32)) (x!26093 (_ BitVec 32))) (Undefined!1400) (MissingVacant!1400 (index!7773 (_ BitVec 32))) )
))
(declare-fun lt!135047 () SeekEntryResult!1400)

(assert (=> b!268841 (= res!133157 (or (= lt!135047 (MissingZero!1400 i!1267)) (= lt!135047 (MissingVacant!1400 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13164 (_ BitVec 32)) SeekEntryResult!1400)

(assert (=> b!268841 (= lt!135047 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268842 () Bool)

(assert (=> b!268842 (= e!173585 false)))

(declare-fun lt!135046 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13164 (_ BitVec 32)) Bool)

(assert (=> b!268842 (= lt!135046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26078 res!133155) b!268840))

(assert (= (and b!268840 res!133154) b!268837))

(assert (= (and b!268837 res!133153) b!268838))

(assert (= (and b!268838 res!133156) b!268839))

(assert (= (and b!268839 res!133158) b!268841))

(assert (= (and b!268841 res!133157) b!268842))

(declare-fun m!284909 () Bool)

(assert (=> b!268838 m!284909))

(declare-fun m!284911 () Bool)

(assert (=> b!268839 m!284911))

(declare-fun m!284913 () Bool)

(assert (=> start!26078 m!284913))

(declare-fun m!284915 () Bool)

(assert (=> start!26078 m!284915))

(declare-fun m!284917 () Bool)

(assert (=> b!268837 m!284917))

(declare-fun m!284919 () Bool)

(assert (=> b!268841 m!284919))

(declare-fun m!284921 () Bool)

(assert (=> b!268842 m!284921))

(push 1)

(assert (not b!268837))

(assert (not start!26078))

(assert (not b!268838))

(assert (not b!268842))

(assert (not b!268841))

(assert (not b!268839))

