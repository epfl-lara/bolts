; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25694 () Bool)

(assert start!25694)

(declare-fun res!130599 () Bool)

(declare-fun e!172329 () Bool)

(assert (=> start!25694 (=> (not res!130599) (not e!172329))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25694 (= res!130599 (validMask!0 mask!4002))))

(assert (=> start!25694 e!172329))

(assert (=> start!25694 true))

(declare-datatypes ((array!12860 0))(
  ( (array!12861 (arr!6084 (Array (_ BitVec 32) (_ BitVec 64))) (size!6436 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12860)

(declare-fun array_inv!4038 (array!12860) Bool)

(assert (=> start!25694 (array_inv!4038 a!3436)))

(declare-fun b!266264 () Bool)

(declare-fun res!130600 () Bool)

(assert (=> b!266264 (=> (not res!130600) (not e!172329))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266264 (= res!130600 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266265 () Bool)

(declare-fun e!172330 () Bool)

(assert (=> b!266265 (= e!172329 e!172330)))

(declare-fun res!130601 () Bool)

(assert (=> b!266265 (=> (not res!130601) (not e!172330))))

(declare-datatypes ((SeekEntryResult!1286 0))(
  ( (MissingZero!1286 (index!7314 (_ BitVec 32))) (Found!1286 (index!7315 (_ BitVec 32))) (Intermediate!1286 (undefined!2098 Bool) (index!7316 (_ BitVec 32)) (x!25587 (_ BitVec 32))) (Undefined!1286) (MissingVacant!1286 (index!7317 (_ BitVec 32))) )
))
(declare-fun lt!134414 () SeekEntryResult!1286)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266265 (= res!130601 (or (= lt!134414 (MissingZero!1286 i!1355)) (= lt!134414 (MissingVacant!1286 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12860 (_ BitVec 32)) SeekEntryResult!1286)

(assert (=> b!266265 (= lt!134414 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266266 () Bool)

(declare-fun res!130598 () Bool)

(assert (=> b!266266 (=> (not res!130598) (not e!172330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12860 (_ BitVec 32)) Bool)

(assert (=> b!266266 (= res!130598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266267 () Bool)

(declare-fun res!130604 () Bool)

(assert (=> b!266267 (=> (not res!130604) (not e!172330))))

(assert (=> b!266267 (= res!130604 (bvslt #b00000000000000000000000000000000 (size!6436 a!3436)))))

(declare-fun b!266268 () Bool)

(declare-fun res!130603 () Bool)

(assert (=> b!266268 (=> (not res!130603) (not e!172330))))

(declare-datatypes ((List!3919 0))(
  ( (Nil!3916) (Cons!3915 (h!4582 (_ BitVec 64)) (t!9009 List!3919)) )
))
(declare-fun arrayNoDuplicates!0 (array!12860 (_ BitVec 32) List!3919) Bool)

(assert (=> b!266268 (= res!130603 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3916))))

(declare-fun b!266269 () Bool)

(declare-fun res!130605 () Bool)

(assert (=> b!266269 (=> (not res!130605) (not e!172329))))

(assert (=> b!266269 (= res!130605 (and (= (size!6436 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6436 a!3436))))))

(declare-fun b!266270 () Bool)

(assert (=> b!266270 (= e!172330 (not true))))

(assert (=> b!266270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12861 (store (arr!6084 a!3436) i!1355 k!2698) (size!6436 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8272 0))(
  ( (Unit!8273) )
))
(declare-fun lt!134413 () Unit!8272)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12860 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8272)

(assert (=> b!266270 (= lt!134413 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266271 () Bool)

(declare-fun res!130602 () Bool)

(assert (=> b!266271 (=> (not res!130602) (not e!172329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266271 (= res!130602 (validKeyInArray!0 k!2698))))

(assert (= (and start!25694 res!130599) b!266269))

(assert (= (and b!266269 res!130605) b!266271))

(assert (= (and b!266271 res!130602) b!266264))

(assert (= (and b!266264 res!130600) b!266265))

(assert (= (and b!266265 res!130601) b!266266))

(assert (= (and b!266266 res!130598) b!266268))

(assert (= (and b!266268 res!130603) b!266267))

(assert (= (and b!266267 res!130604) b!266270))

(declare-fun m!282921 () Bool)

(assert (=> b!266264 m!282921))

(declare-fun m!282923 () Bool)

(assert (=> b!266271 m!282923))

(declare-fun m!282925 () Bool)

(assert (=> b!266268 m!282925))

(declare-fun m!282927 () Bool)

(assert (=> start!25694 m!282927))

(declare-fun m!282929 () Bool)

(assert (=> start!25694 m!282929))

(declare-fun m!282931 () Bool)

(assert (=> b!266265 m!282931))

(declare-fun m!282933 () Bool)

(assert (=> b!266266 m!282933))

(declare-fun m!282935 () Bool)

(assert (=> b!266270 m!282935))

(declare-fun m!282937 () Bool)

(assert (=> b!266270 m!282937))

(declare-fun m!282939 () Bool)

(assert (=> b!266270 m!282939))

(push 1)

(assert (not b!266270))

