; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26032 () Bool)

(assert start!26032)

(declare-fun res!132741 () Bool)

(declare-fun e!173378 () Bool)

(assert (=> start!26032 (=> (not res!132741) (not e!173378))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26032 (= res!132741 (validMask!0 mask!3868))))

(assert (=> start!26032 e!173378))

(declare-datatypes ((array!13118 0))(
  ( (array!13119 (arr!6208 (Array (_ BitVec 32) (_ BitVec 64))) (size!6560 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13118)

(declare-fun array_inv!4162 (array!13118) Bool)

(assert (=> start!26032 (array_inv!4162 a!3325)))

(assert (=> start!26032 true))

(declare-fun b!268423 () Bool)

(declare-fun e!173380 () Bool)

(assert (=> b!268423 (= e!173380 false)))

(declare-fun lt!134908 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13118 (_ BitVec 32)) Bool)

(assert (=> b!268423 (= lt!134908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268424 () Bool)

(assert (=> b!268424 (= e!173378 e!173380)))

(declare-fun res!132740 () Bool)

(assert (=> b!268424 (=> (not res!132740) (not e!173380))))

(declare-datatypes ((SeekEntryResult!1377 0))(
  ( (MissingZero!1377 (index!7678 (_ BitVec 32))) (Found!1377 (index!7679 (_ BitVec 32))) (Intermediate!1377 (undefined!2189 Bool) (index!7680 (_ BitVec 32)) (x!26014 (_ BitVec 32))) (Undefined!1377) (MissingVacant!1377 (index!7681 (_ BitVec 32))) )
))
(declare-fun lt!134909 () SeekEntryResult!1377)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268424 (= res!132740 (or (= lt!134909 (MissingZero!1377 i!1267)) (= lt!134909 (MissingVacant!1377 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13118 (_ BitVec 32)) SeekEntryResult!1377)

(assert (=> b!268424 (= lt!134909 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268425 () Bool)

(declare-fun res!132743 () Bool)

(assert (=> b!268425 (=> (not res!132743) (not e!173378))))

(declare-datatypes ((List!4037 0))(
  ( (Nil!4034) (Cons!4033 (h!4700 (_ BitVec 64)) (t!9127 List!4037)) )
))
(declare-fun arrayNoDuplicates!0 (array!13118 (_ BitVec 32) List!4037) Bool)

(assert (=> b!268425 (= res!132743 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4034))))

(declare-fun b!268426 () Bool)

(declare-fun res!132744 () Bool)

(assert (=> b!268426 (=> (not res!132744) (not e!173378))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268426 (= res!132744 (and (= (size!6560 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6560 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6560 a!3325))))))

(declare-fun b!268427 () Bool)

(declare-fun res!132742 () Bool)

(assert (=> b!268427 (=> (not res!132742) (not e!173378))))

(declare-fun arrayContainsKey!0 (array!13118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268427 (= res!132742 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268428 () Bool)

(declare-fun res!132739 () Bool)

(assert (=> b!268428 (=> (not res!132739) (not e!173378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268428 (= res!132739 (validKeyInArray!0 k!2581))))

(assert (= (and start!26032 res!132741) b!268426))

(assert (= (and b!268426 res!132744) b!268428))

(assert (= (and b!268428 res!132739) b!268425))

(assert (= (and b!268425 res!132743) b!268427))

(assert (= (and b!268427 res!132742) b!268424))

(assert (= (and b!268424 res!132740) b!268423))

(declare-fun m!284587 () Bool)

(assert (=> b!268425 m!284587))

(declare-fun m!284589 () Bool)

(assert (=> b!268427 m!284589))

(declare-fun m!284591 () Bool)

(assert (=> b!268424 m!284591))

(declare-fun m!284593 () Bool)

(assert (=> b!268428 m!284593))

(declare-fun m!284595 () Bool)

(assert (=> start!26032 m!284595))

(declare-fun m!284597 () Bool)

(assert (=> start!26032 m!284597))

(declare-fun m!284599 () Bool)

(assert (=> b!268423 m!284599))

(push 1)

(assert (not b!268423))

