; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26080 () Bool)

(assert start!26080)

(declare-fun b!268855 () Bool)

(declare-fun res!133176 () Bool)

(declare-fun e!173594 () Bool)

(assert (=> b!268855 (=> (not res!133176) (not e!173594))))

(declare-datatypes ((array!13166 0))(
  ( (array!13167 (arr!6232 (Array (_ BitVec 32) (_ BitVec 64))) (size!6584 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13166)

(declare-datatypes ((List!4061 0))(
  ( (Nil!4058) (Cons!4057 (h!4724 (_ BitVec 64)) (t!9151 List!4061)) )
))
(declare-fun arrayNoDuplicates!0 (array!13166 (_ BitVec 32) List!4061) Bool)

(assert (=> b!268855 (= res!133176 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4058))))

(declare-fun b!268856 () Bool)

(declare-fun res!133174 () Bool)

(assert (=> b!268856 (=> (not res!133174) (not e!173594))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268856 (= res!133174 (and (= (size!6584 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6584 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6584 a!3325))))))

(declare-fun b!268857 () Bool)

(declare-fun e!173595 () Bool)

(assert (=> b!268857 (= e!173595 false)))

(declare-fun lt!135052 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13166 (_ BitVec 32)) Bool)

(assert (=> b!268857 (= lt!135052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268858 () Bool)

(declare-fun res!133173 () Bool)

(assert (=> b!268858 (=> (not res!133173) (not e!173594))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268858 (= res!133173 (validKeyInArray!0 k!2581))))

(declare-fun b!268859 () Bool)

(declare-fun res!133172 () Bool)

(assert (=> b!268859 (=> (not res!133172) (not e!173594))))

(declare-fun arrayContainsKey!0 (array!13166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268859 (= res!133172 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268860 () Bool)

(assert (=> b!268860 (= e!173594 e!173595)))

(declare-fun res!133171 () Bool)

(assert (=> b!268860 (=> (not res!133171) (not e!173595))))

(declare-datatypes ((SeekEntryResult!1401 0))(
  ( (MissingZero!1401 (index!7774 (_ BitVec 32))) (Found!1401 (index!7775 (_ BitVec 32))) (Intermediate!1401 (undefined!2213 Bool) (index!7776 (_ BitVec 32)) (x!26102 (_ BitVec 32))) (Undefined!1401) (MissingVacant!1401 (index!7777 (_ BitVec 32))) )
))
(declare-fun lt!135053 () SeekEntryResult!1401)

(assert (=> b!268860 (= res!133171 (or (= lt!135053 (MissingZero!1401 i!1267)) (= lt!135053 (MissingVacant!1401 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13166 (_ BitVec 32)) SeekEntryResult!1401)

(assert (=> b!268860 (= lt!135053 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!133175 () Bool)

(assert (=> start!26080 (=> (not res!133175) (not e!173594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26080 (= res!133175 (validMask!0 mask!3868))))

(assert (=> start!26080 e!173594))

(declare-fun array_inv!4186 (array!13166) Bool)

(assert (=> start!26080 (array_inv!4186 a!3325)))

(assert (=> start!26080 true))

(assert (= (and start!26080 res!133175) b!268856))

(assert (= (and b!268856 res!133174) b!268858))

(assert (= (and b!268858 res!133173) b!268855))

(assert (= (and b!268855 res!133176) b!268859))

(assert (= (and b!268859 res!133172) b!268860))

(assert (= (and b!268860 res!133171) b!268857))

(declare-fun m!284923 () Bool)

(assert (=> b!268858 m!284923))

(declare-fun m!284925 () Bool)

(assert (=> b!268860 m!284925))

(declare-fun m!284927 () Bool)

(assert (=> b!268857 m!284927))

(declare-fun m!284929 () Bool)

(assert (=> b!268855 m!284929))

(declare-fun m!284931 () Bool)

(assert (=> start!26080 m!284931))

(declare-fun m!284933 () Bool)

(assert (=> start!26080 m!284933))

(declare-fun m!284935 () Bool)

(assert (=> b!268859 m!284935))

(push 1)

(assert (not b!268857))

