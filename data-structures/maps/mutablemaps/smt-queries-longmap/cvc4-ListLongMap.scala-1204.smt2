; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25706 () Bool)

(assert start!25706)

(declare-fun b!266408 () Bool)

(declare-fun res!130748 () Bool)

(declare-fun e!172382 () Bool)

(assert (=> b!266408 (=> (not res!130748) (not e!172382))))

(declare-datatypes ((array!12872 0))(
  ( (array!12873 (arr!6090 (Array (_ BitVec 32) (_ BitVec 64))) (size!6442 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12872)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12872 (_ BitVec 32)) Bool)

(assert (=> b!266408 (= res!130748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266409 () Bool)

(declare-fun res!130745 () Bool)

(declare-fun e!172384 () Bool)

(assert (=> b!266409 (=> (not res!130745) (not e!172384))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266409 (= res!130745 (and (= (size!6442 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6442 a!3436))))))

(declare-fun b!266410 () Bool)

(assert (=> b!266410 (= e!172384 e!172382)))

(declare-fun res!130746 () Bool)

(assert (=> b!266410 (=> (not res!130746) (not e!172382))))

(declare-datatypes ((SeekEntryResult!1292 0))(
  ( (MissingZero!1292 (index!7338 (_ BitVec 32))) (Found!1292 (index!7339 (_ BitVec 32))) (Intermediate!1292 (undefined!2104 Bool) (index!7340 (_ BitVec 32)) (x!25609 (_ BitVec 32))) (Undefined!1292) (MissingVacant!1292 (index!7341 (_ BitVec 32))) )
))
(declare-fun lt!134450 () SeekEntryResult!1292)

(assert (=> b!266410 (= res!130746 (or (= lt!134450 (MissingZero!1292 i!1355)) (= lt!134450 (MissingVacant!1292 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12872 (_ BitVec 32)) SeekEntryResult!1292)

(assert (=> b!266410 (= lt!134450 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266411 () Bool)

(declare-fun res!130744 () Bool)

(assert (=> b!266411 (=> (not res!130744) (not e!172384))))

(declare-fun arrayContainsKey!0 (array!12872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266411 (= res!130744 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266412 () Bool)

(declare-fun res!130742 () Bool)

(assert (=> b!266412 (=> (not res!130742) (not e!172382))))

(assert (=> b!266412 (= res!130742 (bvslt #b00000000000000000000000000000000 (size!6442 a!3436)))))

(declare-fun res!130743 () Bool)

(assert (=> start!25706 (=> (not res!130743) (not e!172384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25706 (= res!130743 (validMask!0 mask!4002))))

(assert (=> start!25706 e!172384))

(assert (=> start!25706 true))

(declare-fun array_inv!4044 (array!12872) Bool)

(assert (=> start!25706 (array_inv!4044 a!3436)))

(declare-fun b!266413 () Bool)

(assert (=> b!266413 (= e!172382 (not true))))

(assert (=> b!266413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12873 (store (arr!6090 a!3436) i!1355 k!2698) (size!6442 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8284 0))(
  ( (Unit!8285) )
))
(declare-fun lt!134449 () Unit!8284)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12872 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8284)

(assert (=> b!266413 (= lt!134449 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266414 () Bool)

(declare-fun res!130747 () Bool)

(assert (=> b!266414 (=> (not res!130747) (not e!172384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266414 (= res!130747 (validKeyInArray!0 k!2698))))

(declare-fun b!266415 () Bool)

(declare-fun res!130749 () Bool)

(assert (=> b!266415 (=> (not res!130749) (not e!172382))))

(declare-datatypes ((List!3925 0))(
  ( (Nil!3922) (Cons!3921 (h!4588 (_ BitVec 64)) (t!9015 List!3925)) )
))
(declare-fun arrayNoDuplicates!0 (array!12872 (_ BitVec 32) List!3925) Bool)

(assert (=> b!266415 (= res!130749 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3922))))

(assert (= (and start!25706 res!130743) b!266409))

(assert (= (and b!266409 res!130745) b!266414))

(assert (= (and b!266414 res!130747) b!266411))

(assert (= (and b!266411 res!130744) b!266410))

(assert (= (and b!266410 res!130746) b!266408))

(assert (= (and b!266408 res!130748) b!266415))

(assert (= (and b!266415 res!130749) b!266412))

(assert (= (and b!266412 res!130742) b!266413))

(declare-fun m!283041 () Bool)

(assert (=> b!266415 m!283041))

(declare-fun m!283043 () Bool)

(assert (=> start!25706 m!283043))

(declare-fun m!283045 () Bool)

(assert (=> start!25706 m!283045))

(declare-fun m!283047 () Bool)

(assert (=> b!266414 m!283047))

(declare-fun m!283049 () Bool)

(assert (=> b!266411 m!283049))

(declare-fun m!283051 () Bool)

(assert (=> b!266408 m!283051))

(declare-fun m!283053 () Bool)

(assert (=> b!266413 m!283053))

(declare-fun m!283055 () Bool)

(assert (=> b!266413 m!283055))

(declare-fun m!283057 () Bool)

(assert (=> b!266413 m!283057))

(declare-fun m!283059 () Bool)

(assert (=> b!266410 m!283059))

(push 1)

(assert (not b!266415))

(assert (not b!266408))

(assert (not b!266413))

