; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25696 () Bool)

(assert start!25696)

(declare-fun b!266288 () Bool)

(declare-fun res!130623 () Bool)

(declare-fun e!172337 () Bool)

(assert (=> b!266288 (=> (not res!130623) (not e!172337))))

(declare-datatypes ((array!12862 0))(
  ( (array!12863 (arr!6085 (Array (_ BitVec 32) (_ BitVec 64))) (size!6437 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12862)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266288 (= res!130623 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266289 () Bool)

(declare-fun res!130625 () Bool)

(assert (=> b!266289 (=> (not res!130625) (not e!172337))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266289 (= res!130625 (and (= (size!6437 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6437 a!3436))))))

(declare-fun b!266290 () Bool)

(declare-fun e!172339 () Bool)

(assert (=> b!266290 (= e!172337 e!172339)))

(declare-fun res!130622 () Bool)

(assert (=> b!266290 (=> (not res!130622) (not e!172339))))

(declare-datatypes ((SeekEntryResult!1287 0))(
  ( (MissingZero!1287 (index!7318 (_ BitVec 32))) (Found!1287 (index!7319 (_ BitVec 32))) (Intermediate!1287 (undefined!2099 Bool) (index!7320 (_ BitVec 32)) (x!25596 (_ BitVec 32))) (Undefined!1287) (MissingVacant!1287 (index!7321 (_ BitVec 32))) )
))
(declare-fun lt!134420 () SeekEntryResult!1287)

(assert (=> b!266290 (= res!130622 (or (= lt!134420 (MissingZero!1287 i!1355)) (= lt!134420 (MissingVacant!1287 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12862 (_ BitVec 32)) SeekEntryResult!1287)

(assert (=> b!266290 (= lt!134420 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266292 () Bool)

(assert (=> b!266292 (= e!172339 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12862 (_ BitVec 32)) Bool)

(assert (=> b!266292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12863 (store (arr!6085 a!3436) i!1355 k!2698) (size!6437 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8274 0))(
  ( (Unit!8275) )
))
(declare-fun lt!134419 () Unit!8274)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12862 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8274)

(assert (=> b!266292 (= lt!134419 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266293 () Bool)

(declare-fun res!130624 () Bool)

(assert (=> b!266293 (=> (not res!130624) (not e!172339))))

(declare-datatypes ((List!3920 0))(
  ( (Nil!3917) (Cons!3916 (h!4583 (_ BitVec 64)) (t!9010 List!3920)) )
))
(declare-fun arrayNoDuplicates!0 (array!12862 (_ BitVec 32) List!3920) Bool)

(assert (=> b!266293 (= res!130624 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3917))))

(declare-fun b!266294 () Bool)

(declare-fun res!130626 () Bool)

(assert (=> b!266294 (=> (not res!130626) (not e!172339))))

(assert (=> b!266294 (= res!130626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266295 () Bool)

(declare-fun res!130628 () Bool)

(assert (=> b!266295 (=> (not res!130628) (not e!172337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266295 (= res!130628 (validKeyInArray!0 k!2698))))

(declare-fun b!266291 () Bool)

(declare-fun res!130627 () Bool)

(assert (=> b!266291 (=> (not res!130627) (not e!172339))))

(assert (=> b!266291 (= res!130627 (bvslt #b00000000000000000000000000000000 (size!6437 a!3436)))))

(declare-fun res!130629 () Bool)

(assert (=> start!25696 (=> (not res!130629) (not e!172337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25696 (= res!130629 (validMask!0 mask!4002))))

(assert (=> start!25696 e!172337))

(assert (=> start!25696 true))

(declare-fun array_inv!4039 (array!12862) Bool)

(assert (=> start!25696 (array_inv!4039 a!3436)))

(assert (= (and start!25696 res!130629) b!266289))

(assert (= (and b!266289 res!130625) b!266295))

(assert (= (and b!266295 res!130628) b!266288))

(assert (= (and b!266288 res!130623) b!266290))

(assert (= (and b!266290 res!130622) b!266294))

(assert (= (and b!266294 res!130626) b!266293))

(assert (= (and b!266293 res!130624) b!266291))

(assert (= (and b!266291 res!130627) b!266292))

(declare-fun m!282941 () Bool)

(assert (=> b!266293 m!282941))

(declare-fun m!282943 () Bool)

(assert (=> b!266290 m!282943))

(declare-fun m!282945 () Bool)

(assert (=> start!25696 m!282945))

(declare-fun m!282947 () Bool)

(assert (=> start!25696 m!282947))

(declare-fun m!282949 () Bool)

(assert (=> b!266295 m!282949))

(declare-fun m!282951 () Bool)

(assert (=> b!266294 m!282951))

(declare-fun m!282953 () Bool)

(assert (=> b!266288 m!282953))

(declare-fun m!282955 () Bool)

(assert (=> b!266292 m!282955))

(declare-fun m!282957 () Bool)

(assert (=> b!266292 m!282957))

(declare-fun m!282959 () Bool)

(assert (=> b!266292 m!282959))

(push 1)

