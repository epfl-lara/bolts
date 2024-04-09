; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26076 () Bool)

(assert start!26076)

(declare-fun b!268819 () Bool)

(declare-fun res!133138 () Bool)

(declare-fun e!173576 () Bool)

(assert (=> b!268819 (=> (not res!133138) (not e!173576))))

(declare-datatypes ((array!13162 0))(
  ( (array!13163 (arr!6230 (Array (_ BitVec 32) (_ BitVec 64))) (size!6582 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13162)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268819 (= res!133138 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268820 () Bool)

(declare-fun res!133135 () Bool)

(assert (=> b!268820 (=> (not res!133135) (not e!173576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268820 (= res!133135 (validKeyInArray!0 k0!2581))))

(declare-fun b!268821 () Bool)

(declare-fun res!133137 () Bool)

(assert (=> b!268821 (=> (not res!133137) (not e!173576))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268821 (= res!133137 (and (= (size!6582 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6582 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6582 a!3325))))))

(declare-fun b!268822 () Bool)

(declare-fun res!133140 () Bool)

(assert (=> b!268822 (=> (not res!133140) (not e!173576))))

(declare-datatypes ((List!4059 0))(
  ( (Nil!4056) (Cons!4055 (h!4722 (_ BitVec 64)) (t!9149 List!4059)) )
))
(declare-fun arrayNoDuplicates!0 (array!13162 (_ BitVec 32) List!4059) Bool)

(assert (=> b!268822 (= res!133140 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4056))))

(declare-fun b!268824 () Bool)

(declare-fun e!173578 () Bool)

(assert (=> b!268824 (= e!173576 e!173578)))

(declare-fun res!133136 () Bool)

(assert (=> b!268824 (=> (not res!133136) (not e!173578))))

(declare-datatypes ((SeekEntryResult!1399 0))(
  ( (MissingZero!1399 (index!7766 (_ BitVec 32))) (Found!1399 (index!7767 (_ BitVec 32))) (Intermediate!1399 (undefined!2211 Bool) (index!7768 (_ BitVec 32)) (x!26092 (_ BitVec 32))) (Undefined!1399) (MissingVacant!1399 (index!7769 (_ BitVec 32))) )
))
(declare-fun lt!135040 () SeekEntryResult!1399)

(assert (=> b!268824 (= res!133136 (or (= lt!135040 (MissingZero!1399 i!1267)) (= lt!135040 (MissingVacant!1399 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13162 (_ BitVec 32)) SeekEntryResult!1399)

(assert (=> b!268824 (= lt!135040 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268823 () Bool)

(assert (=> b!268823 (= e!173578 false)))

(declare-fun lt!135041 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13162 (_ BitVec 32)) Bool)

(assert (=> b!268823 (= lt!135041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133139 () Bool)

(assert (=> start!26076 (=> (not res!133139) (not e!173576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26076 (= res!133139 (validMask!0 mask!3868))))

(assert (=> start!26076 e!173576))

(declare-fun array_inv!4184 (array!13162) Bool)

(assert (=> start!26076 (array_inv!4184 a!3325)))

(assert (=> start!26076 true))

(assert (= (and start!26076 res!133139) b!268821))

(assert (= (and b!268821 res!133137) b!268820))

(assert (= (and b!268820 res!133135) b!268822))

(assert (= (and b!268822 res!133140) b!268819))

(assert (= (and b!268819 res!133138) b!268824))

(assert (= (and b!268824 res!133136) b!268823))

(declare-fun m!284895 () Bool)

(assert (=> b!268822 m!284895))

(declare-fun m!284897 () Bool)

(assert (=> b!268820 m!284897))

(declare-fun m!284899 () Bool)

(assert (=> start!26076 m!284899))

(declare-fun m!284901 () Bool)

(assert (=> start!26076 m!284901))

(declare-fun m!284903 () Bool)

(assert (=> b!268819 m!284903))

(declare-fun m!284905 () Bool)

(assert (=> b!268824 m!284905))

(declare-fun m!284907 () Bool)

(assert (=> b!268823 m!284907))

(check-sat (not b!268822) (not b!268823) (not start!26076) (not b!268820) (not b!268819) (not b!268824))
(check-sat)
