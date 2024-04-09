; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26044 () Bool)

(assert start!26044)

(declare-fun b!268531 () Bool)

(declare-fun e!173432 () Bool)

(assert (=> b!268531 (= e!173432 false)))

(declare-fun lt!134944 () Bool)

(declare-datatypes ((array!13130 0))(
  ( (array!13131 (arr!6214 (Array (_ BitVec 32) (_ BitVec 64))) (size!6566 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13130)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13130 (_ BitVec 32)) Bool)

(assert (=> b!268531 (= lt!134944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!132849 () Bool)

(declare-fun e!173434 () Bool)

(assert (=> start!26044 (=> (not res!132849) (not e!173434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26044 (= res!132849 (validMask!0 mask!3868))))

(assert (=> start!26044 e!173434))

(declare-fun array_inv!4168 (array!13130) Bool)

(assert (=> start!26044 (array_inv!4168 a!3325)))

(assert (=> start!26044 true))

(declare-fun b!268532 () Bool)

(declare-fun res!132848 () Bool)

(assert (=> b!268532 (=> (not res!132848) (not e!173434))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268532 (= res!132848 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268533 () Bool)

(declare-fun res!132850 () Bool)

(assert (=> b!268533 (=> (not res!132850) (not e!173434))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268533 (= res!132850 (and (= (size!6566 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6566 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6566 a!3325))))))

(declare-fun b!268534 () Bool)

(declare-fun res!132847 () Bool)

(assert (=> b!268534 (=> (not res!132847) (not e!173434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268534 (= res!132847 (validKeyInArray!0 k!2581))))

(declare-fun b!268535 () Bool)

(declare-fun res!132852 () Bool)

(assert (=> b!268535 (=> (not res!132852) (not e!173434))))

(declare-datatypes ((List!4043 0))(
  ( (Nil!4040) (Cons!4039 (h!4706 (_ BitVec 64)) (t!9133 List!4043)) )
))
(declare-fun arrayNoDuplicates!0 (array!13130 (_ BitVec 32) List!4043) Bool)

(assert (=> b!268535 (= res!132852 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4040))))

(declare-fun b!268536 () Bool)

(assert (=> b!268536 (= e!173434 e!173432)))

(declare-fun res!132851 () Bool)

(assert (=> b!268536 (=> (not res!132851) (not e!173432))))

(declare-datatypes ((SeekEntryResult!1383 0))(
  ( (MissingZero!1383 (index!7702 (_ BitVec 32))) (Found!1383 (index!7703 (_ BitVec 32))) (Intermediate!1383 (undefined!2195 Bool) (index!7704 (_ BitVec 32)) (x!26036 (_ BitVec 32))) (Undefined!1383) (MissingVacant!1383 (index!7705 (_ BitVec 32))) )
))
(declare-fun lt!134945 () SeekEntryResult!1383)

(assert (=> b!268536 (= res!132851 (or (= lt!134945 (MissingZero!1383 i!1267)) (= lt!134945 (MissingVacant!1383 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13130 (_ BitVec 32)) SeekEntryResult!1383)

(assert (=> b!268536 (= lt!134945 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26044 res!132849) b!268533))

(assert (= (and b!268533 res!132850) b!268534))

(assert (= (and b!268534 res!132847) b!268535))

(assert (= (and b!268535 res!132852) b!268532))

(assert (= (and b!268532 res!132848) b!268536))

(assert (= (and b!268536 res!132851) b!268531))

(declare-fun m!284671 () Bool)

(assert (=> b!268536 m!284671))

(declare-fun m!284673 () Bool)

(assert (=> start!26044 m!284673))

(declare-fun m!284675 () Bool)

(assert (=> start!26044 m!284675))

(declare-fun m!284677 () Bool)

(assert (=> b!268531 m!284677))

(declare-fun m!284679 () Bool)

(assert (=> b!268532 m!284679))

(declare-fun m!284681 () Bool)

(assert (=> b!268534 m!284681))

(declare-fun m!284683 () Bool)

(assert (=> b!268535 m!284683))

(push 1)

(assert (not b!268531))

(assert (not b!268536))

(assert (not b!268534))

(assert (not start!26044))

(assert (not b!268535))

(assert (not b!268532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

