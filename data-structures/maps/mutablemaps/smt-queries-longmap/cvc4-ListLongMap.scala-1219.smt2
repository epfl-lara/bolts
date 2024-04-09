; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25796 () Bool)

(assert start!25796)

(declare-fun b!267281 () Bool)

(declare-fun e!172787 () Bool)

(assert (=> b!267281 (= e!172787 (not true))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12962 0))(
  ( (array!12963 (arr!6135 (Array (_ BitVec 32) (_ BitVec 64))) (size!6487 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12962)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12962 (_ BitVec 32)) Bool)

(assert (=> b!267281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12963 (store (arr!6135 a!3436) i!1355 k!2698) (size!6487 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8302 0))(
  ( (Unit!8303) )
))
(declare-fun lt!134711 () Unit!8302)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12962 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8302)

(assert (=> b!267281 (= lt!134711 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!267282 () Bool)

(declare-fun res!131621 () Bool)

(assert (=> b!267282 (=> (not res!131621) (not e!172787))))

(assert (=> b!267282 (= res!131621 (bvslt #b00000000000000000000000000000000 (size!6487 a!3436)))))

(declare-fun b!267284 () Bool)

(declare-fun res!131622 () Bool)

(assert (=> b!267284 (=> (not res!131622) (not e!172787))))

(assert (=> b!267284 (= res!131622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267285 () Bool)

(declare-fun res!131618 () Bool)

(declare-fun e!172788 () Bool)

(assert (=> b!267285 (=> (not res!131618) (not e!172788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267285 (= res!131618 (validKeyInArray!0 k!2698))))

(declare-fun b!267286 () Bool)

(declare-fun res!131616 () Bool)

(assert (=> b!267286 (=> (not res!131616) (not e!172788))))

(assert (=> b!267286 (= res!131616 (and (= (size!6487 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6487 a!3436))))))

(declare-fun res!131617 () Bool)

(assert (=> start!25796 (=> (not res!131617) (not e!172788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25796 (= res!131617 (validMask!0 mask!4002))))

(assert (=> start!25796 e!172788))

(assert (=> start!25796 true))

(declare-fun array_inv!4089 (array!12962) Bool)

(assert (=> start!25796 (array_inv!4089 a!3436)))

(declare-fun b!267283 () Bool)

(declare-fun res!131615 () Bool)

(assert (=> b!267283 (=> (not res!131615) (not e!172788))))

(declare-fun arrayContainsKey!0 (array!12962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267283 (= res!131615 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267287 () Bool)

(assert (=> b!267287 (= e!172788 e!172787)))

(declare-fun res!131619 () Bool)

(assert (=> b!267287 (=> (not res!131619) (not e!172787))))

(declare-datatypes ((SeekEntryResult!1337 0))(
  ( (MissingZero!1337 (index!7518 (_ BitVec 32))) (Found!1337 (index!7519 (_ BitVec 32))) (Intermediate!1337 (undefined!2149 Bool) (index!7520 (_ BitVec 32)) (x!25774 (_ BitVec 32))) (Undefined!1337) (MissingVacant!1337 (index!7521 (_ BitVec 32))) )
))
(declare-fun lt!134710 () SeekEntryResult!1337)

(assert (=> b!267287 (= res!131619 (or (= lt!134710 (MissingZero!1337 i!1355)) (= lt!134710 (MissingVacant!1337 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12962 (_ BitVec 32)) SeekEntryResult!1337)

(assert (=> b!267287 (= lt!134710 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267288 () Bool)

(declare-fun res!131620 () Bool)

(assert (=> b!267288 (=> (not res!131620) (not e!172787))))

(declare-datatypes ((List!3970 0))(
  ( (Nil!3967) (Cons!3966 (h!4633 (_ BitVec 64)) (t!9060 List!3970)) )
))
(declare-fun arrayNoDuplicates!0 (array!12962 (_ BitVec 32) List!3970) Bool)

(assert (=> b!267288 (= res!131620 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3967))))

(assert (= (and start!25796 res!131617) b!267286))

(assert (= (and b!267286 res!131616) b!267285))

(assert (= (and b!267285 res!131618) b!267283))

(assert (= (and b!267283 res!131615) b!267287))

(assert (= (and b!267287 res!131619) b!267284))

(assert (= (and b!267284 res!131622) b!267288))

(assert (= (and b!267288 res!131620) b!267282))

(assert (= (and b!267282 res!131621) b!267281))

(declare-fun m!283725 () Bool)

(assert (=> b!267284 m!283725))

(declare-fun m!283727 () Bool)

(assert (=> b!267281 m!283727))

(declare-fun m!283729 () Bool)

(assert (=> b!267281 m!283729))

(declare-fun m!283731 () Bool)

(assert (=> b!267281 m!283731))

(declare-fun m!283733 () Bool)

(assert (=> b!267287 m!283733))

(declare-fun m!283735 () Bool)

(assert (=> b!267288 m!283735))

(declare-fun m!283737 () Bool)

(assert (=> b!267283 m!283737))

(declare-fun m!283739 () Bool)

(assert (=> b!267285 m!283739))

(declare-fun m!283741 () Bool)

(assert (=> start!25796 m!283741))

(declare-fun m!283743 () Bool)

(assert (=> start!25796 m!283743))

(push 1)

(assert (not b!267284))

(assert (not b!267287))

(assert (not b!267285))

(assert (not b!267283))

(assert (not start!25796))

