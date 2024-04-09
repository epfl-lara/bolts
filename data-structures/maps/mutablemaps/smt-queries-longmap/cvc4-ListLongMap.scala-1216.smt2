; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25778 () Bool)

(assert start!25778)

(declare-fun b!267086 () Bool)

(declare-fun e!172706 () Bool)

(declare-fun e!172708 () Bool)

(assert (=> b!267086 (= e!172706 e!172708)))

(declare-fun res!131420 () Bool)

(assert (=> b!267086 (=> (not res!131420) (not e!172708))))

(declare-datatypes ((SeekEntryResult!1328 0))(
  ( (MissingZero!1328 (index!7482 (_ BitVec 32))) (Found!1328 (index!7483 (_ BitVec 32))) (Intermediate!1328 (undefined!2140 Bool) (index!7484 (_ BitVec 32)) (x!25741 (_ BitVec 32))) (Undefined!1328) (MissingVacant!1328 (index!7485 (_ BitVec 32))) )
))
(declare-fun lt!134657 () SeekEntryResult!1328)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267086 (= res!131420 (or (= lt!134657 (MissingZero!1328 i!1355)) (= lt!134657 (MissingVacant!1328 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12944 0))(
  ( (array!12945 (arr!6126 (Array (_ BitVec 32) (_ BitVec 64))) (size!6478 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12944)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12944 (_ BitVec 32)) SeekEntryResult!1328)

(assert (=> b!267086 (= lt!134657 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267087 () Bool)

(declare-fun res!131422 () Bool)

(assert (=> b!267087 (=> (not res!131422) (not e!172706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267087 (= res!131422 (validKeyInArray!0 k!2698))))

(declare-fun b!267088 () Bool)

(declare-fun res!131423 () Bool)

(assert (=> b!267088 (=> (not res!131423) (not e!172706))))

(assert (=> b!267088 (= res!131423 (and (= (size!6478 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6478 a!3436))))))

(declare-fun b!267089 () Bool)

(declare-fun res!131419 () Bool)

(assert (=> b!267089 (=> (not res!131419) (not e!172708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12944 (_ BitVec 32)) Bool)

(assert (=> b!267089 (= res!131419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267090 () Bool)

(assert (=> b!267090 (= e!172708 false)))

(declare-fun lt!134656 () Bool)

(declare-datatypes ((List!3961 0))(
  ( (Nil!3958) (Cons!3957 (h!4624 (_ BitVec 64)) (t!9051 List!3961)) )
))
(declare-fun arrayNoDuplicates!0 (array!12944 (_ BitVec 32) List!3961) Bool)

(assert (=> b!267090 (= lt!134656 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3958))))

(declare-fun res!131421 () Bool)

(assert (=> start!25778 (=> (not res!131421) (not e!172706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25778 (= res!131421 (validMask!0 mask!4002))))

(assert (=> start!25778 e!172706))

(assert (=> start!25778 true))

(declare-fun array_inv!4080 (array!12944) Bool)

(assert (=> start!25778 (array_inv!4080 a!3436)))

(declare-fun b!267085 () Bool)

(declare-fun res!131424 () Bool)

(assert (=> b!267085 (=> (not res!131424) (not e!172706))))

(declare-fun arrayContainsKey!0 (array!12944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267085 (= res!131424 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25778 res!131421) b!267088))

(assert (= (and b!267088 res!131423) b!267087))

(assert (= (and b!267087 res!131422) b!267085))

(assert (= (and b!267085 res!131424) b!267086))

(assert (= (and b!267086 res!131420) b!267089))

(assert (= (and b!267089 res!131419) b!267090))

(declare-fun m!283569 () Bool)

(assert (=> b!267086 m!283569))

(declare-fun m!283571 () Bool)

(assert (=> b!267085 m!283571))

(declare-fun m!283573 () Bool)

(assert (=> b!267090 m!283573))

(declare-fun m!283575 () Bool)

(assert (=> b!267089 m!283575))

(declare-fun m!283577 () Bool)

(assert (=> start!25778 m!283577))

(declare-fun m!283579 () Bool)

(assert (=> start!25778 m!283579))

(declare-fun m!283581 () Bool)

(assert (=> b!267087 m!283581))

(push 1)

(assert (not start!25778))

(assert (not b!267089))

(assert (not b!267090))

(assert (not b!267087))

