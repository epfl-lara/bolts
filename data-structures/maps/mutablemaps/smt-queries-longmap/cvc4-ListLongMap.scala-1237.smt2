; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25994 () Bool)

(assert start!25994)

(declare-fun b!268082 () Bool)

(declare-fun res!132402 () Bool)

(declare-fun e!173218 () Bool)

(assert (=> b!268082 (=> (not res!132402) (not e!173218))))

(declare-datatypes ((array!13080 0))(
  ( (array!13081 (arr!6189 (Array (_ BitVec 32) (_ BitVec 64))) (size!6541 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13080)

(declare-datatypes ((List!4018 0))(
  ( (Nil!4015) (Cons!4014 (h!4681 (_ BitVec 64)) (t!9108 List!4018)) )
))
(declare-fun arrayNoDuplicates!0 (array!13080 (_ BitVec 32) List!4018) Bool)

(assert (=> b!268082 (= res!132402 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4015))))

(declare-fun b!268083 () Bool)

(declare-fun res!132400 () Bool)

(assert (=> b!268083 (=> (not res!132400) (not e!173218))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268083 (= res!132400 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268084 () Bool)

(declare-fun res!132401 () Bool)

(assert (=> b!268084 (=> (not res!132401) (not e!173218))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268084 (= res!132401 (and (= (size!6541 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6541 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6541 a!3325))))))

(declare-fun b!268085 () Bool)

(declare-fun res!132399 () Bool)

(assert (=> b!268085 (=> (not res!132399) (not e!173218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268085 (= res!132399 (validKeyInArray!0 k!2581))))

(declare-fun b!268086 () Bool)

(assert (=> b!268086 (= e!173218 false)))

(declare-datatypes ((SeekEntryResult!1358 0))(
  ( (MissingZero!1358 (index!7602 (_ BitVec 32))) (Found!1358 (index!7603 (_ BitVec 32))) (Intermediate!1358 (undefined!2170 Bool) (index!7604 (_ BitVec 32)) (x!25939 (_ BitVec 32))) (Undefined!1358) (MissingVacant!1358 (index!7605 (_ BitVec 32))) )
))
(declare-fun lt!134813 () SeekEntryResult!1358)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13080 (_ BitVec 32)) SeekEntryResult!1358)

(assert (=> b!268086 (= lt!134813 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!132398 () Bool)

(assert (=> start!25994 (=> (not res!132398) (not e!173218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25994 (= res!132398 (validMask!0 mask!3868))))

(assert (=> start!25994 e!173218))

(declare-fun array_inv!4143 (array!13080) Bool)

(assert (=> start!25994 (array_inv!4143 a!3325)))

(assert (=> start!25994 true))

(assert (= (and start!25994 res!132398) b!268084))

(assert (= (and b!268084 res!132401) b!268085))

(assert (= (and b!268085 res!132399) b!268082))

(assert (= (and b!268082 res!132402) b!268083))

(assert (= (and b!268083 res!132400) b!268086))

(declare-fun m!284329 () Bool)

(assert (=> b!268086 m!284329))

(declare-fun m!284331 () Bool)

(assert (=> b!268085 m!284331))

(declare-fun m!284333 () Bool)

(assert (=> b!268083 m!284333))

(declare-fun m!284335 () Bool)

(assert (=> start!25994 m!284335))

(declare-fun m!284337 () Bool)

(assert (=> start!25994 m!284337))

(declare-fun m!284339 () Bool)

(assert (=> b!268082 m!284339))

(push 1)

(assert (not b!268086))

(assert (not start!25994))

(assert (not b!268083))

(assert (not b!268082))

(assert (not b!268085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

