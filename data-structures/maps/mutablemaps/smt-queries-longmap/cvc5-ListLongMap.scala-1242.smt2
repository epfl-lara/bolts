; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26020 () Bool)

(assert start!26020)

(declare-fun b!268308 () Bool)

(declare-fun res!132627 () Bool)

(declare-fun e!173324 () Bool)

(assert (=> b!268308 (=> (not res!132627) (not e!173324))))

(declare-datatypes ((array!13106 0))(
  ( (array!13107 (arr!6202 (Array (_ BitVec 32) (_ BitVec 64))) (size!6554 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13106)

(declare-datatypes ((List!4031 0))(
  ( (Nil!4028) (Cons!4027 (h!4694 (_ BitVec 64)) (t!9121 List!4031)) )
))
(declare-fun arrayNoDuplicates!0 (array!13106 (_ BitVec 32) List!4031) Bool)

(assert (=> b!268308 (= res!132627 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4028))))

(declare-fun b!268309 () Bool)

(declare-fun res!132625 () Bool)

(assert (=> b!268309 (=> (not res!132625) (not e!173324))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268309 (= res!132625 (and (= (size!6554 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6554 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6554 a!3325))))))

(declare-fun b!268310 () Bool)

(declare-fun res!132630 () Bool)

(assert (=> b!268310 (=> (not res!132630) (not e!173324))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268310 (= res!132630 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268311 () Bool)

(declare-fun e!173325 () Bool)

(assert (=> b!268311 (= e!173324 e!173325)))

(declare-fun res!132624 () Bool)

(assert (=> b!268311 (=> (not res!132624) (not e!173325))))

(declare-datatypes ((SeekEntryResult!1371 0))(
  ( (MissingZero!1371 (index!7654 (_ BitVec 32))) (Found!1371 (index!7655 (_ BitVec 32))) (Intermediate!1371 (undefined!2183 Bool) (index!7656 (_ BitVec 32)) (x!25992 (_ BitVec 32))) (Undefined!1371) (MissingVacant!1371 (index!7657 (_ BitVec 32))) )
))
(declare-fun lt!134879 () SeekEntryResult!1371)

(assert (=> b!268311 (= res!132624 (or (= lt!134879 (MissingZero!1371 i!1267)) (= lt!134879 (MissingVacant!1371 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13106 (_ BitVec 32)) SeekEntryResult!1371)

(assert (=> b!268311 (= lt!134879 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268312 () Bool)

(assert (=> b!268312 (= e!173325 (bvsgt #b00000000000000000000000000000000 (size!6554 a!3325)))))

(declare-fun b!268313 () Bool)

(declare-fun res!132628 () Bool)

(assert (=> b!268313 (=> (not res!132628) (not e!173324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268313 (= res!132628 (validKeyInArray!0 k!2581))))

(declare-fun b!268314 () Bool)

(declare-fun res!132626 () Bool)

(assert (=> b!268314 (=> (not res!132626) (not e!173325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13106 (_ BitVec 32)) Bool)

(assert (=> b!268314 (= res!132626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!132629 () Bool)

(assert (=> start!26020 (=> (not res!132629) (not e!173324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26020 (= res!132629 (validMask!0 mask!3868))))

(assert (=> start!26020 e!173324))

(declare-fun array_inv!4156 (array!13106) Bool)

(assert (=> start!26020 (array_inv!4156 a!3325)))

(assert (=> start!26020 true))

(assert (= (and start!26020 res!132629) b!268309))

(assert (= (and b!268309 res!132625) b!268313))

(assert (= (and b!268313 res!132628) b!268308))

(assert (= (and b!268308 res!132627) b!268310))

(assert (= (and b!268310 res!132630) b!268311))

(assert (= (and b!268311 res!132624) b!268314))

(assert (= (and b!268314 res!132626) b!268312))

(declare-fun m!284503 () Bool)

(assert (=> b!268311 m!284503))

(declare-fun m!284505 () Bool)

(assert (=> b!268308 m!284505))

(declare-fun m!284507 () Bool)

(assert (=> start!26020 m!284507))

(declare-fun m!284509 () Bool)

(assert (=> start!26020 m!284509))

(declare-fun m!284511 () Bool)

(assert (=> b!268310 m!284511))

(declare-fun m!284513 () Bool)

(assert (=> b!268314 m!284513))

(declare-fun m!284515 () Bool)

(assert (=> b!268313 m!284515))

(push 1)

