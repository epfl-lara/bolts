; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25960 () Bool)

(assert start!25960)

(declare-fun b!267820 () Bool)

(declare-fun e!173116 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267820 (= e!173116 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun res!132136 () Bool)

(assert (=> start!25960 (=> (not res!132136) (not e!173116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25960 (= res!132136 (validMask!0 mask!3868))))

(assert (=> start!25960 e!173116))

(declare-datatypes ((array!13046 0))(
  ( (array!13047 (arr!6172 (Array (_ BitVec 32) (_ BitVec 64))) (size!6524 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13046)

(declare-fun array_inv!4126 (array!13046) Bool)

(assert (=> start!25960 (array_inv!4126 a!3325)))

(assert (=> start!25960 true))

(declare-fun b!267821 () Bool)

(declare-fun res!132138 () Bool)

(assert (=> b!267821 (=> (not res!132138) (not e!173116))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267821 (= res!132138 (validKeyInArray!0 k!2581))))

(declare-fun b!267822 () Bool)

(declare-fun res!132141 () Bool)

(assert (=> b!267822 (=> (not res!132141) (not e!173116))))

(declare-datatypes ((List!4001 0))(
  ( (Nil!3998) (Cons!3997 (h!4664 (_ BitVec 64)) (t!9091 List!4001)) )
))
(declare-fun arrayNoDuplicates!0 (array!13046 (_ BitVec 32) List!4001) Bool)

(assert (=> b!267822 (= res!132141 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3998))))

(declare-fun b!267823 () Bool)

(declare-fun res!132137 () Bool)

(assert (=> b!267823 (=> (not res!132137) (not e!173116))))

(declare-fun arrayContainsKey!0 (array!13046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267823 (= res!132137 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267824 () Bool)

(declare-fun res!132139 () Bool)

(assert (=> b!267824 (=> (not res!132139) (not e!173116))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1341 0))(
  ( (MissingZero!1341 (index!7534 (_ BitVec 32))) (Found!1341 (index!7535 (_ BitVec 32))) (Intermediate!1341 (undefined!2153 Bool) (index!7536 (_ BitVec 32)) (x!25882 (_ BitVec 32))) (Undefined!1341) (MissingVacant!1341 (index!7537 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13046 (_ BitVec 32)) SeekEntryResult!1341)

(assert (=> b!267824 (= res!132139 (not (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) (MissingZero!1341 i!1267))))))

(declare-fun b!267825 () Bool)

(declare-fun res!132140 () Bool)

(assert (=> b!267825 (=> (not res!132140) (not e!173116))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267825 (= res!132140 (and (= (size!6524 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6524 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6524 a!3325))))))

(assert (= (and start!25960 res!132136) b!267825))

(assert (= (and b!267825 res!132140) b!267821))

(assert (= (and b!267821 res!132138) b!267822))

(assert (= (and b!267822 res!132141) b!267823))

(assert (= (and b!267823 res!132137) b!267824))

(assert (= (and b!267824 res!132139) b!267820))

(declare-fun m!284125 () Bool)

(assert (=> b!267824 m!284125))

(declare-fun m!284127 () Bool)

(assert (=> b!267821 m!284127))

(declare-fun m!284129 () Bool)

(assert (=> b!267823 m!284129))

(declare-fun m!284131 () Bool)

(assert (=> start!25960 m!284131))

(declare-fun m!284133 () Bool)

(assert (=> start!25960 m!284133))

(declare-fun m!284135 () Bool)

(assert (=> b!267822 m!284135))

(push 1)

(assert (not b!267822))

(assert (not b!267824))

(assert (not start!25960))

(assert (not b!267823))

(assert (not b!267821))

