; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26054 () Bool)

(assert start!26054)

(declare-fun b!268621 () Bool)

(declare-fun e!173479 () Bool)

(declare-fun e!173477 () Bool)

(assert (=> b!268621 (= e!173479 e!173477)))

(declare-fun res!132940 () Bool)

(assert (=> b!268621 (=> (not res!132940) (not e!173477))))

(declare-datatypes ((SeekEntryResult!1388 0))(
  ( (MissingZero!1388 (index!7722 (_ BitVec 32))) (Found!1388 (index!7723 (_ BitVec 32))) (Intermediate!1388 (undefined!2200 Bool) (index!7724 (_ BitVec 32)) (x!26049 (_ BitVec 32))) (Undefined!1388) (MissingVacant!1388 (index!7725 (_ BitVec 32))) )
))
(declare-fun lt!134975 () SeekEntryResult!1388)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268621 (= res!132940 (or (= lt!134975 (MissingZero!1388 i!1267)) (= lt!134975 (MissingVacant!1388 i!1267))))))

(declare-datatypes ((array!13140 0))(
  ( (array!13141 (arr!6219 (Array (_ BitVec 32) (_ BitVec 64))) (size!6571 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13140)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13140 (_ BitVec 32)) SeekEntryResult!1388)

(assert (=> b!268621 (= lt!134975 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268622 () Bool)

(declare-fun res!132937 () Bool)

(assert (=> b!268622 (=> (not res!132937) (not e!173479))))

(declare-fun arrayContainsKey!0 (array!13140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268622 (= res!132937 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268623 () Bool)

(declare-fun res!132942 () Bool)

(assert (=> b!268623 (=> (not res!132942) (not e!173479))))

(declare-datatypes ((List!4048 0))(
  ( (Nil!4045) (Cons!4044 (h!4711 (_ BitVec 64)) (t!9138 List!4048)) )
))
(declare-fun arrayNoDuplicates!0 (array!13140 (_ BitVec 32) List!4048) Bool)

(assert (=> b!268623 (= res!132942 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4045))))

(declare-fun b!268624 () Bool)

(declare-fun res!132938 () Bool)

(assert (=> b!268624 (=> (not res!132938) (not e!173479))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268624 (= res!132938 (and (= (size!6571 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6571 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6571 a!3325))))))

(declare-fun res!132941 () Bool)

(assert (=> start!26054 (=> (not res!132941) (not e!173479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26054 (= res!132941 (validMask!0 mask!3868))))

(assert (=> start!26054 e!173479))

(declare-fun array_inv!4173 (array!13140) Bool)

(assert (=> start!26054 (array_inv!4173 a!3325)))

(assert (=> start!26054 true))

(declare-fun b!268625 () Bool)

(assert (=> b!268625 (= e!173477 false)))

(declare-fun lt!134974 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13140 (_ BitVec 32)) Bool)

(assert (=> b!268625 (= lt!134974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268626 () Bool)

(declare-fun res!132939 () Bool)

(assert (=> b!268626 (=> (not res!132939) (not e!173479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268626 (= res!132939 (validKeyInArray!0 k!2581))))

(assert (= (and start!26054 res!132941) b!268624))

(assert (= (and b!268624 res!132938) b!268626))

(assert (= (and b!268626 res!132939) b!268623))

(assert (= (and b!268623 res!132942) b!268622))

(assert (= (and b!268622 res!132937) b!268621))

(assert (= (and b!268621 res!132940) b!268625))

(declare-fun m!284741 () Bool)

(assert (=> start!26054 m!284741))

(declare-fun m!284743 () Bool)

(assert (=> start!26054 m!284743))

(declare-fun m!284745 () Bool)

(assert (=> b!268626 m!284745))

(declare-fun m!284747 () Bool)

(assert (=> b!268622 m!284747))

(declare-fun m!284749 () Bool)

(assert (=> b!268625 m!284749))

(declare-fun m!284751 () Bool)

(assert (=> b!268623 m!284751))

(declare-fun m!284753 () Bool)

(assert (=> b!268621 m!284753))

(push 1)

(assert (not b!268626))

(assert (not b!268623))

(assert (not b!268621))

(assert (not start!26054))

(assert (not b!268622))

(assert (not b!268625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

