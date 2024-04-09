; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25700 () Bool)

(assert start!25700)

(declare-fun b!266336 () Bool)

(declare-fun res!130673 () Bool)

(declare-fun e!172356 () Bool)

(assert (=> b!266336 (=> (not res!130673) (not e!172356))))

(declare-datatypes ((array!12866 0))(
  ( (array!12867 (arr!6087 (Array (_ BitVec 32) (_ BitVec 64))) (size!6439 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12866)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12866 (_ BitVec 32)) Bool)

(assert (=> b!266336 (= res!130673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266337 () Bool)

(declare-fun res!130676 () Bool)

(declare-fun e!172355 () Bool)

(assert (=> b!266337 (=> (not res!130676) (not e!172355))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266337 (= res!130676 (and (= (size!6439 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6439 a!3436))))))

(declare-fun b!266338 () Bool)

(declare-fun res!130675 () Bool)

(assert (=> b!266338 (=> (not res!130675) (not e!172355))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266338 (= res!130675 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!130677 () Bool)

(assert (=> start!25700 (=> (not res!130677) (not e!172355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25700 (= res!130677 (validMask!0 mask!4002))))

(assert (=> start!25700 e!172355))

(assert (=> start!25700 true))

(declare-fun array_inv!4041 (array!12866) Bool)

(assert (=> start!25700 (array_inv!4041 a!3436)))

(declare-fun b!266339 () Bool)

(assert (=> b!266339 (= e!172356 (not true))))

(assert (=> b!266339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12867 (store (arr!6087 a!3436) i!1355 k!2698) (size!6439 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8278 0))(
  ( (Unit!8279) )
))
(declare-fun lt!134431 () Unit!8278)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12866 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8278)

(assert (=> b!266339 (= lt!134431 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266340 () Bool)

(declare-fun res!130671 () Bool)

(assert (=> b!266340 (=> (not res!130671) (not e!172356))))

(assert (=> b!266340 (= res!130671 (bvslt #b00000000000000000000000000000000 (size!6439 a!3436)))))

(declare-fun b!266341 () Bool)

(declare-fun res!130674 () Bool)

(assert (=> b!266341 (=> (not res!130674) (not e!172356))))

(declare-datatypes ((List!3922 0))(
  ( (Nil!3919) (Cons!3918 (h!4585 (_ BitVec 64)) (t!9012 List!3922)) )
))
(declare-fun arrayNoDuplicates!0 (array!12866 (_ BitVec 32) List!3922) Bool)

(assert (=> b!266341 (= res!130674 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3919))))

(declare-fun b!266342 () Bool)

(assert (=> b!266342 (= e!172355 e!172356)))

(declare-fun res!130670 () Bool)

(assert (=> b!266342 (=> (not res!130670) (not e!172356))))

(declare-datatypes ((SeekEntryResult!1289 0))(
  ( (MissingZero!1289 (index!7326 (_ BitVec 32))) (Found!1289 (index!7327 (_ BitVec 32))) (Intermediate!1289 (undefined!2101 Bool) (index!7328 (_ BitVec 32)) (x!25598 (_ BitVec 32))) (Undefined!1289) (MissingVacant!1289 (index!7329 (_ BitVec 32))) )
))
(declare-fun lt!134432 () SeekEntryResult!1289)

(assert (=> b!266342 (= res!130670 (or (= lt!134432 (MissingZero!1289 i!1355)) (= lt!134432 (MissingVacant!1289 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12866 (_ BitVec 32)) SeekEntryResult!1289)

(assert (=> b!266342 (= lt!134432 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266343 () Bool)

(declare-fun res!130672 () Bool)

(assert (=> b!266343 (=> (not res!130672) (not e!172355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266343 (= res!130672 (validKeyInArray!0 k!2698))))

(assert (= (and start!25700 res!130677) b!266337))

(assert (= (and b!266337 res!130676) b!266343))

(assert (= (and b!266343 res!130672) b!266338))

(assert (= (and b!266338 res!130675) b!266342))

(assert (= (and b!266342 res!130670) b!266336))

(assert (= (and b!266336 res!130673) b!266341))

(assert (= (and b!266341 res!130674) b!266340))

(assert (= (and b!266340 res!130671) b!266339))

(declare-fun m!282981 () Bool)

(assert (=> b!266339 m!282981))

(declare-fun m!282983 () Bool)

(assert (=> b!266339 m!282983))

(declare-fun m!282985 () Bool)

(assert (=> b!266339 m!282985))

(declare-fun m!282987 () Bool)

(assert (=> start!25700 m!282987))

(declare-fun m!282989 () Bool)

(assert (=> start!25700 m!282989))

(declare-fun m!282991 () Bool)

(assert (=> b!266343 m!282991))

(declare-fun m!282993 () Bool)

(assert (=> b!266341 m!282993))

(declare-fun m!282995 () Bool)

(assert (=> b!266342 m!282995))

(declare-fun m!282997 () Bool)

(assert (=> b!266336 m!282997))

(declare-fun m!282999 () Bool)

(assert (=> b!266338 m!282999))

(push 1)

(assert (not b!266339))

(assert (not b!266343))

(assert (not b!266341))

(assert (not start!25700))

(assert (not b!266336))

