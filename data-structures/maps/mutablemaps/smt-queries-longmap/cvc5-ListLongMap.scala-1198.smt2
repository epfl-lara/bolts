; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25666 () Bool)

(assert start!25666)

(declare-fun b!265996 () Bool)

(declare-fun e!172202 () Bool)

(declare-fun e!172204 () Bool)

(assert (=> b!265996 (= e!172202 e!172204)))

(declare-fun res!130331 () Bool)

(assert (=> b!265996 (=> (not res!130331) (not e!172204))))

(declare-datatypes ((SeekEntryResult!1272 0))(
  ( (MissingZero!1272 (index!7258 (_ BitVec 32))) (Found!1272 (index!7259 (_ BitVec 32))) (Intermediate!1272 (undefined!2084 Bool) (index!7260 (_ BitVec 32)) (x!25541 (_ BitVec 32))) (Undefined!1272) (MissingVacant!1272 (index!7261 (_ BitVec 32))) )
))
(declare-fun lt!134330 () SeekEntryResult!1272)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265996 (= res!130331 (or (= lt!134330 (MissingZero!1272 i!1355)) (= lt!134330 (MissingVacant!1272 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12832 0))(
  ( (array!12833 (arr!6070 (Array (_ BitVec 32) (_ BitVec 64))) (size!6422 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12832)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12832 (_ BitVec 32)) SeekEntryResult!1272)

(assert (=> b!265996 (= lt!134330 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265997 () Bool)

(declare-fun res!130333 () Bool)

(assert (=> b!265997 (=> (not res!130333) (not e!172202))))

(declare-fun arrayContainsKey!0 (array!12832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265997 (= res!130333 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265998 () Bool)

(declare-fun res!130332 () Bool)

(assert (=> b!265998 (=> (not res!130332) (not e!172204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12832 (_ BitVec 32)) Bool)

(assert (=> b!265998 (= res!130332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265999 () Bool)

(declare-fun res!130330 () Bool)

(assert (=> b!265999 (=> (not res!130330) (not e!172202))))

(assert (=> b!265999 (= res!130330 (and (= (size!6422 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6422 a!3436))))))

(declare-fun res!130335 () Bool)

(assert (=> start!25666 (=> (not res!130335) (not e!172202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25666 (= res!130335 (validMask!0 mask!4002))))

(assert (=> start!25666 e!172202))

(assert (=> start!25666 true))

(declare-fun array_inv!4024 (array!12832) Bool)

(assert (=> start!25666 (array_inv!4024 a!3436)))

(declare-fun b!266000 () Bool)

(assert (=> b!266000 (= e!172204 false)))

(declare-fun lt!134329 () Bool)

(declare-datatypes ((List!3905 0))(
  ( (Nil!3902) (Cons!3901 (h!4568 (_ BitVec 64)) (t!8995 List!3905)) )
))
(declare-fun arrayNoDuplicates!0 (array!12832 (_ BitVec 32) List!3905) Bool)

(assert (=> b!266000 (= lt!134329 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3902))))

(declare-fun b!266001 () Bool)

(declare-fun res!130334 () Bool)

(assert (=> b!266001 (=> (not res!130334) (not e!172202))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266001 (= res!130334 (validKeyInArray!0 k!2698))))

(assert (= (and start!25666 res!130335) b!265999))

(assert (= (and b!265999 res!130330) b!266001))

(assert (= (and b!266001 res!130334) b!265997))

(assert (= (and b!265997 res!130333) b!265996))

(assert (= (and b!265996 res!130331) b!265998))

(assert (= (and b!265998 res!130332) b!266000))

(declare-fun m!282713 () Bool)

(assert (=> b!265996 m!282713))

(declare-fun m!282715 () Bool)

(assert (=> b!265998 m!282715))

(declare-fun m!282717 () Bool)

(assert (=> b!266000 m!282717))

(declare-fun m!282719 () Bool)

(assert (=> b!266001 m!282719))

(declare-fun m!282721 () Bool)

(assert (=> b!265997 m!282721))

(declare-fun m!282723 () Bool)

(assert (=> start!25666 m!282723))

(declare-fun m!282725 () Bool)

(assert (=> start!25666 m!282725))

(push 1)

(assert (not b!265996))

(assert (not start!25666))

(assert (not b!265997))

(assert (not b!266000))

(assert (not b!265998))

(assert (not b!266001))

