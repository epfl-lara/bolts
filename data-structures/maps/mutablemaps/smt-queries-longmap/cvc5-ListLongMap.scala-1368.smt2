; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26914 () Bool)

(assert start!26914)

(declare-fun b!278794 () Bool)

(declare-fun res!142174 () Bool)

(declare-fun e!177812 () Bool)

(assert (=> b!278794 (=> (not res!142174) (not e!177812))))

(declare-datatypes ((array!13868 0))(
  ( (array!13869 (arr!6580 (Array (_ BitVec 32) (_ BitVec 64))) (size!6932 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13868)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278794 (= res!142174 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278795 () Bool)

(declare-fun res!142171 () Bool)

(assert (=> b!278795 (=> (not res!142171) (not e!177812))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!278795 (= res!142171 (and (= (size!6932 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6932 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6932 a!3325))))))

(declare-fun b!278796 () Bool)

(declare-fun res!142173 () Bool)

(assert (=> b!278796 (=> (not res!142173) (not e!177812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278796 (= res!142173 (validKeyInArray!0 k!2581))))

(declare-fun b!278797 () Bool)

(declare-fun e!177813 () Bool)

(assert (=> b!278797 (= e!177813 false)))

(declare-fun lt!138518 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13868 (_ BitVec 32)) Bool)

(assert (=> b!278797 (= lt!138518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278798 () Bool)

(declare-fun res!142176 () Bool)

(assert (=> b!278798 (=> (not res!142176) (not e!177812))))

(declare-datatypes ((List!4409 0))(
  ( (Nil!4406) (Cons!4405 (h!5075 (_ BitVec 64)) (t!9499 List!4409)) )
))
(declare-fun arrayNoDuplicates!0 (array!13868 (_ BitVec 32) List!4409) Bool)

(assert (=> b!278798 (= res!142176 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4406))))

(declare-fun res!142175 () Bool)

(assert (=> start!26914 (=> (not res!142175) (not e!177812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26914 (= res!142175 (validMask!0 mask!3868))))

(assert (=> start!26914 e!177812))

(declare-fun array_inv!4534 (array!13868) Bool)

(assert (=> start!26914 (array_inv!4534 a!3325)))

(assert (=> start!26914 true))

(declare-fun b!278799 () Bool)

(assert (=> b!278799 (= e!177812 e!177813)))

(declare-fun res!142172 () Bool)

(assert (=> b!278799 (=> (not res!142172) (not e!177813))))

(declare-datatypes ((SeekEntryResult!1749 0))(
  ( (MissingZero!1749 (index!9166 (_ BitVec 32))) (Found!1749 (index!9167 (_ BitVec 32))) (Intermediate!1749 (undefined!2561 Bool) (index!9168 (_ BitVec 32)) (x!27387 (_ BitVec 32))) (Undefined!1749) (MissingVacant!1749 (index!9169 (_ BitVec 32))) )
))
(declare-fun lt!138517 () SeekEntryResult!1749)

(assert (=> b!278799 (= res!142172 (or (= lt!138517 (MissingZero!1749 i!1267)) (= lt!138517 (MissingVacant!1749 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13868 (_ BitVec 32)) SeekEntryResult!1749)

(assert (=> b!278799 (= lt!138517 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26914 res!142175) b!278795))

(assert (= (and b!278795 res!142171) b!278796))

(assert (= (and b!278796 res!142173) b!278798))

(assert (= (and b!278798 res!142176) b!278794))

(assert (= (and b!278794 res!142174) b!278799))

(assert (= (and b!278799 res!142172) b!278797))

(declare-fun m!293785 () Bool)

(assert (=> b!278797 m!293785))

(declare-fun m!293787 () Bool)

(assert (=> b!278796 m!293787))

(declare-fun m!293789 () Bool)

(assert (=> start!26914 m!293789))

(declare-fun m!293791 () Bool)

(assert (=> start!26914 m!293791))

(declare-fun m!293793 () Bool)

(assert (=> b!278799 m!293793))

(declare-fun m!293795 () Bool)

(assert (=> b!278798 m!293795))

(declare-fun m!293797 () Bool)

(assert (=> b!278794 m!293797))

(push 1)

(assert (not b!278794))

