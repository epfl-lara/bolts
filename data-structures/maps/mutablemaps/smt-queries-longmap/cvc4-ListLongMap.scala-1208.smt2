; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25730 () Bool)

(assert start!25730)

(declare-fun res!130983 () Bool)

(declare-fun e!172490 () Bool)

(assert (=> start!25730 (=> (not res!130983) (not e!172490))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25730 (= res!130983 (validMask!0 mask!4002))))

(assert (=> start!25730 e!172490))

(assert (=> start!25730 true))

(declare-datatypes ((array!12896 0))(
  ( (array!12897 (arr!6102 (Array (_ BitVec 32) (_ BitVec 64))) (size!6454 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12896)

(declare-fun array_inv!4056 (array!12896) Bool)

(assert (=> start!25730 (array_inv!4056 a!3436)))

(declare-fun b!266644 () Bool)

(declare-fun e!172491 () Bool)

(assert (=> b!266644 (= e!172491 false)))

(declare-fun lt!134521 () Bool)

(declare-datatypes ((List!3937 0))(
  ( (Nil!3934) (Cons!3933 (h!4600 (_ BitVec 64)) (t!9027 List!3937)) )
))
(declare-fun arrayNoDuplicates!0 (array!12896 (_ BitVec 32) List!3937) Bool)

(assert (=> b!266644 (= lt!134521 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3934))))

(declare-fun b!266645 () Bool)

(declare-fun res!130982 () Bool)

(assert (=> b!266645 (=> (not res!130982) (not e!172490))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266645 (= res!130982 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266646 () Bool)

(declare-fun res!130978 () Bool)

(assert (=> b!266646 (=> (not res!130978) (not e!172491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12896 (_ BitVec 32)) Bool)

(assert (=> b!266646 (= res!130978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266647 () Bool)

(declare-fun res!130979 () Bool)

(assert (=> b!266647 (=> (not res!130979) (not e!172490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266647 (= res!130979 (validKeyInArray!0 k!2698))))

(declare-fun b!266648 () Bool)

(declare-fun res!130981 () Bool)

(assert (=> b!266648 (=> (not res!130981) (not e!172490))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266648 (= res!130981 (and (= (size!6454 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6454 a!3436))))))

(declare-fun b!266649 () Bool)

(assert (=> b!266649 (= e!172490 e!172491)))

(declare-fun res!130980 () Bool)

(assert (=> b!266649 (=> (not res!130980) (not e!172491))))

(declare-datatypes ((SeekEntryResult!1304 0))(
  ( (MissingZero!1304 (index!7386 (_ BitVec 32))) (Found!1304 (index!7387 (_ BitVec 32))) (Intermediate!1304 (undefined!2116 Bool) (index!7388 (_ BitVec 32)) (x!25653 (_ BitVec 32))) (Undefined!1304) (MissingVacant!1304 (index!7389 (_ BitVec 32))) )
))
(declare-fun lt!134522 () SeekEntryResult!1304)

(assert (=> b!266649 (= res!130980 (or (= lt!134522 (MissingZero!1304 i!1355)) (= lt!134522 (MissingVacant!1304 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12896 (_ BitVec 32)) SeekEntryResult!1304)

(assert (=> b!266649 (= lt!134522 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25730 res!130983) b!266648))

(assert (= (and b!266648 res!130981) b!266647))

(assert (= (and b!266647 res!130979) b!266645))

(assert (= (and b!266645 res!130982) b!266649))

(assert (= (and b!266649 res!130980) b!266646))

(assert (= (and b!266646 res!130978) b!266644))

(declare-fun m!283233 () Bool)

(assert (=> b!266649 m!283233))

(declare-fun m!283235 () Bool)

(assert (=> b!266645 m!283235))

(declare-fun m!283237 () Bool)

(assert (=> start!25730 m!283237))

(declare-fun m!283239 () Bool)

(assert (=> start!25730 m!283239))

(declare-fun m!283241 () Bool)

(assert (=> b!266644 m!283241))

(declare-fun m!283243 () Bool)

(assert (=> b!266646 m!283243))

(declare-fun m!283245 () Bool)

(assert (=> b!266647 m!283245))

(push 1)

(assert (not b!266647))

(assert (not b!266645))

(assert (not start!25730))

(assert (not b!266646))

