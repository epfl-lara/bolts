; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26074 () Bool)

(assert start!26074)

(declare-fun b!268801 () Bool)

(declare-fun res!133121 () Bool)

(declare-fun e!173567 () Bool)

(assert (=> b!268801 (=> (not res!133121) (not e!173567))))

(declare-datatypes ((array!13160 0))(
  ( (array!13161 (arr!6229 (Array (_ BitVec 32) (_ BitVec 64))) (size!6581 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13160)

(declare-datatypes ((List!4058 0))(
  ( (Nil!4055) (Cons!4054 (h!4721 (_ BitVec 64)) (t!9148 List!4058)) )
))
(declare-fun arrayNoDuplicates!0 (array!13160 (_ BitVec 32) List!4058) Bool)

(assert (=> b!268801 (= res!133121 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4055))))

(declare-fun b!268802 () Bool)

(declare-fun res!133120 () Bool)

(assert (=> b!268802 (=> (not res!133120) (not e!173567))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268802 (= res!133120 (and (= (size!6581 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6581 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6581 a!3325))))))

(declare-fun b!268803 () Bool)

(declare-fun e!173569 () Bool)

(assert (=> b!268803 (= e!173567 e!173569)))

(declare-fun res!133117 () Bool)

(assert (=> b!268803 (=> (not res!133117) (not e!173569))))

(declare-datatypes ((SeekEntryResult!1398 0))(
  ( (MissingZero!1398 (index!7762 (_ BitVec 32))) (Found!1398 (index!7763 (_ BitVec 32))) (Intermediate!1398 (undefined!2210 Bool) (index!7764 (_ BitVec 32)) (x!26091 (_ BitVec 32))) (Undefined!1398) (MissingVacant!1398 (index!7765 (_ BitVec 32))) )
))
(declare-fun lt!135034 () SeekEntryResult!1398)

(assert (=> b!268803 (= res!133117 (or (= lt!135034 (MissingZero!1398 i!1267)) (= lt!135034 (MissingVacant!1398 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13160 (_ BitVec 32)) SeekEntryResult!1398)

(assert (=> b!268803 (= lt!135034 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268804 () Bool)

(assert (=> b!268804 (= e!173569 false)))

(declare-fun lt!135035 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13160 (_ BitVec 32)) Bool)

(assert (=> b!268804 (= lt!135035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268805 () Bool)

(declare-fun res!133119 () Bool)

(assert (=> b!268805 (=> (not res!133119) (not e!173567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268805 (= res!133119 (validKeyInArray!0 k!2581))))

(declare-fun b!268806 () Bool)

(declare-fun res!133118 () Bool)

(assert (=> b!268806 (=> (not res!133118) (not e!173567))))

(declare-fun arrayContainsKey!0 (array!13160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268806 (= res!133118 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133122 () Bool)

(assert (=> start!26074 (=> (not res!133122) (not e!173567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26074 (= res!133122 (validMask!0 mask!3868))))

(assert (=> start!26074 e!173567))

(declare-fun array_inv!4183 (array!13160) Bool)

(assert (=> start!26074 (array_inv!4183 a!3325)))

(assert (=> start!26074 true))

(assert (= (and start!26074 res!133122) b!268802))

(assert (= (and b!268802 res!133120) b!268805))

(assert (= (and b!268805 res!133119) b!268801))

(assert (= (and b!268801 res!133121) b!268806))

(assert (= (and b!268806 res!133118) b!268803))

(assert (= (and b!268803 res!133117) b!268804))

(declare-fun m!284881 () Bool)

(assert (=> start!26074 m!284881))

(declare-fun m!284883 () Bool)

(assert (=> start!26074 m!284883))

(declare-fun m!284885 () Bool)

(assert (=> b!268804 m!284885))

(declare-fun m!284887 () Bool)

(assert (=> b!268801 m!284887))

(declare-fun m!284889 () Bool)

(assert (=> b!268803 m!284889))

(declare-fun m!284891 () Bool)

(assert (=> b!268805 m!284891))

(declare-fun m!284893 () Bool)

(assert (=> b!268806 m!284893))

(push 1)

(assert (not b!268803))

(assert (not b!268805))

(assert (not b!268801))

(assert (not start!26074))

(assert (not b!268804))

(assert (not b!268806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

