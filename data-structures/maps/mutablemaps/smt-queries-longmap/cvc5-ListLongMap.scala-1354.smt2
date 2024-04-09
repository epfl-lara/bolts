; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26692 () Bool)

(assert start!26692)

(declare-fun b!276885 () Bool)

(declare-fun res!140916 () Bool)

(declare-fun e!176826 () Bool)

(assert (=> b!276885 (=> (not res!140916) (not e!176826))))

(declare-datatypes ((array!13778 0))(
  ( (array!13779 (arr!6538 (Array (_ BitVec 32) (_ BitVec 64))) (size!6890 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13778)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276885 (= res!140916 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140917 () Bool)

(assert (=> start!26692 (=> (not res!140917) (not e!176826))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26692 (= res!140917 (validMask!0 mask!3868))))

(assert (=> start!26692 e!176826))

(declare-fun array_inv!4492 (array!13778) Bool)

(assert (=> start!26692 (array_inv!4492 a!3325)))

(assert (=> start!26692 true))

(declare-fun b!276886 () Bool)

(declare-fun res!140919 () Bool)

(assert (=> b!276886 (=> (not res!140919) (not e!176826))))

(declare-datatypes ((List!4367 0))(
  ( (Nil!4364) (Cons!4363 (h!5030 (_ BitVec 64)) (t!9457 List!4367)) )
))
(declare-fun arrayNoDuplicates!0 (array!13778 (_ BitVec 32) List!4367) Bool)

(assert (=> b!276886 (= res!140919 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4364))))

(declare-fun b!276887 () Bool)

(declare-fun e!176825 () Bool)

(assert (=> b!276887 (= e!176826 e!176825)))

(declare-fun res!140915 () Bool)

(assert (=> b!276887 (=> (not res!140915) (not e!176825))))

(declare-datatypes ((SeekEntryResult!1707 0))(
  ( (MissingZero!1707 (index!8998 (_ BitVec 32))) (Found!1707 (index!8999 (_ BitVec 32))) (Intermediate!1707 (undefined!2519 Bool) (index!9000 (_ BitVec 32)) (x!27224 (_ BitVec 32))) (Undefined!1707) (MissingVacant!1707 (index!9001 (_ BitVec 32))) )
))
(declare-fun lt!137813 () SeekEntryResult!1707)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276887 (= res!140915 (or (= lt!137813 (MissingZero!1707 i!1267)) (= lt!137813 (MissingVacant!1707 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13778 (_ BitVec 32)) SeekEntryResult!1707)

(assert (=> b!276887 (= lt!137813 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276888 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276888 (= e!176825 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6890 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!6890 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!6890 a!3325) startIndex!26))))))

(declare-fun b!276889 () Bool)

(declare-fun res!140918 () Bool)

(assert (=> b!276889 (=> (not res!140918) (not e!176826))))

(assert (=> b!276889 (= res!140918 (and (= (size!6890 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6890 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6890 a!3325))))))

(declare-fun b!276890 () Bool)

(declare-fun res!140913 () Bool)

(assert (=> b!276890 (=> (not res!140913) (not e!176825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13778 (_ BitVec 32)) Bool)

(assert (=> b!276890 (= res!140913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276891 () Bool)

(declare-fun res!140914 () Bool)

(assert (=> b!276891 (=> (not res!140914) (not e!176826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276891 (= res!140914 (validKeyInArray!0 k!2581))))

(assert (= (and start!26692 res!140917) b!276889))

(assert (= (and b!276889 res!140918) b!276891))

(assert (= (and b!276891 res!140914) b!276886))

(assert (= (and b!276886 res!140919) b!276885))

(assert (= (and b!276885 res!140916) b!276887))

(assert (= (and b!276887 res!140915) b!276890))

(assert (= (and b!276890 res!140913) b!276888))

(declare-fun m!292147 () Bool)

(assert (=> start!26692 m!292147))

(declare-fun m!292149 () Bool)

(assert (=> start!26692 m!292149))

(declare-fun m!292151 () Bool)

(assert (=> b!276887 m!292151))

(declare-fun m!292153 () Bool)

(assert (=> b!276886 m!292153))

(declare-fun m!292155 () Bool)

(assert (=> b!276891 m!292155))

(declare-fun m!292157 () Bool)

(assert (=> b!276890 m!292157))

(declare-fun m!292159 () Bool)

(assert (=> b!276885 m!292159))

(push 1)

(assert (not b!276886))

(assert (not start!26692))

(assert (not b!276890))

(assert (not b!276887))

(assert (not b!276885))

(assert (not b!276891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

