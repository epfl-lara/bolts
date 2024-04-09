; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25792 () Bool)

(assert start!25792)

(declare-fun b!267233 () Bool)

(declare-fun res!131574 () Bool)

(declare-fun e!172771 () Bool)

(assert (=> b!267233 (=> (not res!131574) (not e!172771))))

(declare-datatypes ((array!12958 0))(
  ( (array!12959 (arr!6133 (Array (_ BitVec 32) (_ BitVec 64))) (size!6485 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12958)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267233 (= res!131574 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267234 () Bool)

(declare-fun res!131573 () Bool)

(assert (=> b!267234 (=> (not res!131573) (not e!172771))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267234 (= res!131573 (and (= (size!6485 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6485 a!3436))))))

(declare-fun b!267235 () Bool)

(declare-fun res!131571 () Bool)

(declare-fun e!172770 () Bool)

(assert (=> b!267235 (=> (not res!131571) (not e!172770))))

(declare-datatypes ((List!3968 0))(
  ( (Nil!3965) (Cons!3964 (h!4631 (_ BitVec 64)) (t!9058 List!3968)) )
))
(declare-fun arrayNoDuplicates!0 (array!12958 (_ BitVec 32) List!3968) Bool)

(assert (=> b!267235 (= res!131571 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3965))))

(declare-fun b!267236 () Bool)

(declare-fun res!131568 () Bool)

(assert (=> b!267236 (=> (not res!131568) (not e!172770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12958 (_ BitVec 32)) Bool)

(assert (=> b!267236 (= res!131568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267237 () Bool)

(assert (=> b!267237 (= e!172771 e!172770)))

(declare-fun res!131572 () Bool)

(assert (=> b!267237 (=> (not res!131572) (not e!172770))))

(declare-datatypes ((SeekEntryResult!1335 0))(
  ( (MissingZero!1335 (index!7510 (_ BitVec 32))) (Found!1335 (index!7511 (_ BitVec 32))) (Intermediate!1335 (undefined!2147 Bool) (index!7512 (_ BitVec 32)) (x!25772 (_ BitVec 32))) (Undefined!1335) (MissingVacant!1335 (index!7513 (_ BitVec 32))) )
))
(declare-fun lt!134699 () SeekEntryResult!1335)

(assert (=> b!267237 (= res!131572 (or (= lt!134699 (MissingZero!1335 i!1355)) (= lt!134699 (MissingVacant!1335 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12958 (_ BitVec 32)) SeekEntryResult!1335)

(assert (=> b!267237 (= lt!134699 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267238 () Bool)

(assert (=> b!267238 (= e!172770 (not true))))

(assert (=> b!267238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12959 (store (arr!6133 a!3436) i!1355 k!2698) (size!6485 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8298 0))(
  ( (Unit!8299) )
))
(declare-fun lt!134698 () Unit!8298)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12958 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8298)

(assert (=> b!267238 (= lt!134698 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun res!131570 () Bool)

(assert (=> start!25792 (=> (not res!131570) (not e!172771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25792 (= res!131570 (validMask!0 mask!4002))))

(assert (=> start!25792 e!172771))

(assert (=> start!25792 true))

(declare-fun array_inv!4087 (array!12958) Bool)

(assert (=> start!25792 (array_inv!4087 a!3436)))

(declare-fun b!267239 () Bool)

(declare-fun res!131567 () Bool)

(assert (=> b!267239 (=> (not res!131567) (not e!172770))))

(assert (=> b!267239 (= res!131567 (bvslt #b00000000000000000000000000000000 (size!6485 a!3436)))))

(declare-fun b!267240 () Bool)

(declare-fun res!131569 () Bool)

(assert (=> b!267240 (=> (not res!131569) (not e!172771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267240 (= res!131569 (validKeyInArray!0 k!2698))))

(assert (= (and start!25792 res!131570) b!267234))

(assert (= (and b!267234 res!131573) b!267240))

(assert (= (and b!267240 res!131569) b!267233))

(assert (= (and b!267233 res!131574) b!267237))

(assert (= (and b!267237 res!131572) b!267236))

(assert (= (and b!267236 res!131568) b!267235))

(assert (= (and b!267235 res!131571) b!267239))

(assert (= (and b!267239 res!131567) b!267238))

(declare-fun m!283685 () Bool)

(assert (=> start!25792 m!283685))

(declare-fun m!283687 () Bool)

(assert (=> start!25792 m!283687))

(declare-fun m!283689 () Bool)

(assert (=> b!267235 m!283689))

(declare-fun m!283691 () Bool)

(assert (=> b!267233 m!283691))

(declare-fun m!283693 () Bool)

(assert (=> b!267237 m!283693))

(declare-fun m!283695 () Bool)

(assert (=> b!267238 m!283695))

(declare-fun m!283697 () Bool)

(assert (=> b!267238 m!283697))

(declare-fun m!283699 () Bool)

(assert (=> b!267238 m!283699))

(declare-fun m!283701 () Bool)

(assert (=> b!267240 m!283701))

(declare-fun m!283703 () Bool)

(assert (=> b!267236 m!283703))

(push 1)

