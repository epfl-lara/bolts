; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26066 () Bool)

(assert start!26066)

(declare-fun b!268729 () Bool)

(declare-fun e!173531 () Bool)

(declare-fun e!173533 () Bool)

(assert (=> b!268729 (= e!173531 e!173533)))

(declare-fun res!133050 () Bool)

(assert (=> b!268729 (=> (not res!133050) (not e!173533))))

(declare-datatypes ((SeekEntryResult!1394 0))(
  ( (MissingZero!1394 (index!7746 (_ BitVec 32))) (Found!1394 (index!7747 (_ BitVec 32))) (Intermediate!1394 (undefined!2206 Bool) (index!7748 (_ BitVec 32)) (x!26071 (_ BitVec 32))) (Undefined!1394) (MissingVacant!1394 (index!7749 (_ BitVec 32))) )
))
(declare-fun lt!135011 () SeekEntryResult!1394)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268729 (= res!133050 (or (= lt!135011 (MissingZero!1394 i!1267)) (= lt!135011 (MissingVacant!1394 i!1267))))))

(declare-datatypes ((array!13152 0))(
  ( (array!13153 (arr!6225 (Array (_ BitVec 32) (_ BitVec 64))) (size!6577 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13152)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13152 (_ BitVec 32)) SeekEntryResult!1394)

(assert (=> b!268729 (= lt!135011 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268730 () Bool)

(declare-fun res!133047 () Bool)

(assert (=> b!268730 (=> (not res!133047) (not e!173531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268730 (= res!133047 (validKeyInArray!0 k!2581))))

(declare-fun b!268731 () Bool)

(declare-fun res!133048 () Bool)

(assert (=> b!268731 (=> (not res!133048) (not e!173531))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268731 (= res!133048 (and (= (size!6577 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6577 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6577 a!3325))))))

(declare-fun b!268732 () Bool)

(declare-fun res!133049 () Bool)

(assert (=> b!268732 (=> (not res!133049) (not e!173531))))

(declare-datatypes ((List!4054 0))(
  ( (Nil!4051) (Cons!4050 (h!4717 (_ BitVec 64)) (t!9144 List!4054)) )
))
(declare-fun arrayNoDuplicates!0 (array!13152 (_ BitVec 32) List!4054) Bool)

(assert (=> b!268732 (= res!133049 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4051))))

(declare-fun b!268733 () Bool)

(declare-fun res!133046 () Bool)

(assert (=> b!268733 (=> (not res!133046) (not e!173531))))

(declare-fun arrayContainsKey!0 (array!13152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268733 (= res!133046 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133045 () Bool)

(assert (=> start!26066 (=> (not res!133045) (not e!173531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26066 (= res!133045 (validMask!0 mask!3868))))

(assert (=> start!26066 e!173531))

(declare-fun array_inv!4179 (array!13152) Bool)

(assert (=> start!26066 (array_inv!4179 a!3325)))

(assert (=> start!26066 true))

(declare-fun b!268734 () Bool)

(assert (=> b!268734 (= e!173533 false)))

(declare-fun lt!135010 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13152 (_ BitVec 32)) Bool)

(assert (=> b!268734 (= lt!135010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26066 res!133045) b!268731))

(assert (= (and b!268731 res!133048) b!268730))

(assert (= (and b!268730 res!133047) b!268732))

(assert (= (and b!268732 res!133049) b!268733))

(assert (= (and b!268733 res!133046) b!268729))

(assert (= (and b!268729 res!133050) b!268734))

(declare-fun m!284825 () Bool)

(assert (=> start!26066 m!284825))

(declare-fun m!284827 () Bool)

(assert (=> start!26066 m!284827))

(declare-fun m!284829 () Bool)

(assert (=> b!268733 m!284829))

(declare-fun m!284831 () Bool)

(assert (=> b!268729 m!284831))

(declare-fun m!284833 () Bool)

(assert (=> b!268730 m!284833))

(declare-fun m!284835 () Bool)

(assert (=> b!268732 m!284835))

(declare-fun m!284837 () Bool)

(assert (=> b!268734 m!284837))

(push 1)

(assert (not b!268730))

(assert (not b!268733))

(assert (not b!268732))

(assert (not b!268734))

(assert (not b!268729))

(assert (not start!26066))

(check-sat)

