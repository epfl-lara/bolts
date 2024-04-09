; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26068 () Bool)

(assert start!26068)

(declare-fun b!268747 () Bool)

(declare-fun e!173542 () Bool)

(declare-fun e!173540 () Bool)

(assert (=> b!268747 (= e!173542 e!173540)))

(declare-fun res!133064 () Bool)

(assert (=> b!268747 (=> (not res!133064) (not e!173540))))

(declare-datatypes ((SeekEntryResult!1395 0))(
  ( (MissingZero!1395 (index!7750 (_ BitVec 32))) (Found!1395 (index!7751 (_ BitVec 32))) (Intermediate!1395 (undefined!2207 Bool) (index!7752 (_ BitVec 32)) (x!26080 (_ BitVec 32))) (Undefined!1395) (MissingVacant!1395 (index!7753 (_ BitVec 32))) )
))
(declare-fun lt!135016 () SeekEntryResult!1395)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268747 (= res!133064 (or (= lt!135016 (MissingZero!1395 i!1267)) (= lt!135016 (MissingVacant!1395 i!1267))))))

(declare-datatypes ((array!13154 0))(
  ( (array!13155 (arr!6226 (Array (_ BitVec 32) (_ BitVec 64))) (size!6578 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13154)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13154 (_ BitVec 32)) SeekEntryResult!1395)

(assert (=> b!268747 (= lt!135016 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!133065 () Bool)

(assert (=> start!26068 (=> (not res!133065) (not e!173542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26068 (= res!133065 (validMask!0 mask!3868))))

(assert (=> start!26068 e!173542))

(declare-fun array_inv!4180 (array!13154) Bool)

(assert (=> start!26068 (array_inv!4180 a!3325)))

(assert (=> start!26068 true))

(declare-fun b!268748 () Bool)

(declare-fun res!133067 () Bool)

(assert (=> b!268748 (=> (not res!133067) (not e!173542))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268748 (= res!133067 (and (= (size!6578 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6578 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6578 a!3325))))))

(declare-fun b!268749 () Bool)

(declare-fun res!133066 () Bool)

(assert (=> b!268749 (=> (not res!133066) (not e!173542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268749 (= res!133066 (validKeyInArray!0 k!2581))))

(declare-fun b!268750 () Bool)

(declare-fun res!133063 () Bool)

(assert (=> b!268750 (=> (not res!133063) (not e!173542))))

(declare-fun arrayContainsKey!0 (array!13154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268750 (= res!133063 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268751 () Bool)

(declare-fun res!133068 () Bool)

(assert (=> b!268751 (=> (not res!133068) (not e!173542))))

(declare-datatypes ((List!4055 0))(
  ( (Nil!4052) (Cons!4051 (h!4718 (_ BitVec 64)) (t!9145 List!4055)) )
))
(declare-fun arrayNoDuplicates!0 (array!13154 (_ BitVec 32) List!4055) Bool)

(assert (=> b!268751 (= res!133068 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4052))))

(declare-fun b!268752 () Bool)

(assert (=> b!268752 (= e!173540 false)))

(declare-fun lt!135017 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13154 (_ BitVec 32)) Bool)

(assert (=> b!268752 (= lt!135017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26068 res!133065) b!268748))

(assert (= (and b!268748 res!133067) b!268749))

(assert (= (and b!268749 res!133066) b!268751))

(assert (= (and b!268751 res!133068) b!268750))

(assert (= (and b!268750 res!133063) b!268747))

(assert (= (and b!268747 res!133064) b!268752))

(declare-fun m!284839 () Bool)

(assert (=> b!268749 m!284839))

(declare-fun m!284841 () Bool)

(assert (=> b!268750 m!284841))

(declare-fun m!284843 () Bool)

(assert (=> b!268747 m!284843))

(declare-fun m!284845 () Bool)

(assert (=> start!26068 m!284845))

(declare-fun m!284847 () Bool)

(assert (=> start!26068 m!284847))

(declare-fun m!284849 () Bool)

(assert (=> b!268751 m!284849))

(declare-fun m!284851 () Bool)

(assert (=> b!268752 m!284851))

(push 1)

(assert (not b!268751))

(assert (not b!268749))

(assert (not start!26068))

(assert (not b!268750))

(assert (not b!268752))

(assert (not b!268747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

