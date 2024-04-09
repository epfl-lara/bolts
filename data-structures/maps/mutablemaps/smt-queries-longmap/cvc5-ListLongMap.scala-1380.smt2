; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27142 () Bool)

(assert start!27142)

(declare-fun b!280564 () Bool)

(declare-fun res!143673 () Bool)

(declare-fun e!178577 () Bool)

(assert (=> b!280564 (=> (not res!143673) (not e!178577))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280564 (= res!143673 (validKeyInArray!0 k!2581))))

(declare-fun b!280565 () Bool)

(declare-fun res!143674 () Bool)

(assert (=> b!280565 (=> (not res!143674) (not e!178577))))

(declare-datatypes ((array!13949 0))(
  ( (array!13950 (arr!6616 (Array (_ BitVec 32) (_ BitVec 64))) (size!6968 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13949)

(declare-fun arrayContainsKey!0 (array!13949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280565 (= res!143674 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280566 () Bool)

(declare-fun e!178578 () Bool)

(assert (=> b!280566 (= e!178578 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4445 0))(
  ( (Nil!4442) (Cons!4441 (h!5111 (_ BitVec 64)) (t!9535 List!4445)) )
))
(declare-fun arrayNoDuplicates!0 (array!13949 (_ BitVec 32) List!4445) Bool)

(assert (=> b!280566 (arrayNoDuplicates!0 (array!13950 (store (arr!6616 a!3325) i!1267 k!2581) (size!6968 a!3325)) #b00000000000000000000000000000000 Nil!4442)))

(declare-datatypes ((Unit!8833 0))(
  ( (Unit!8834) )
))
(declare-fun lt!138886 () Unit!8833)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13949 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4445) Unit!8833)

(assert (=> b!280566 (= lt!138886 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4442))))

(declare-fun res!143679 () Bool)

(assert (=> start!27142 (=> (not res!143679) (not e!178577))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27142 (= res!143679 (validMask!0 mask!3868))))

(assert (=> start!27142 e!178577))

(declare-fun array_inv!4570 (array!13949) Bool)

(assert (=> start!27142 (array_inv!4570 a!3325)))

(assert (=> start!27142 true))

(declare-fun b!280567 () Bool)

(declare-fun res!143677 () Bool)

(assert (=> b!280567 (=> (not res!143677) (not e!178577))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280567 (= res!143677 (and (= (size!6968 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6968 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6968 a!3325))))))

(declare-fun b!280568 () Bool)

(declare-fun res!143678 () Bool)

(assert (=> b!280568 (=> (not res!143678) (not e!178578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13949 (_ BitVec 32)) Bool)

(assert (=> b!280568 (= res!143678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280569 () Bool)

(assert (=> b!280569 (= e!178577 e!178578)))

(declare-fun res!143671 () Bool)

(assert (=> b!280569 (=> (not res!143671) (not e!178578))))

(declare-datatypes ((SeekEntryResult!1785 0))(
  ( (MissingZero!1785 (index!9310 (_ BitVec 32))) (Found!1785 (index!9311 (_ BitVec 32))) (Intermediate!1785 (undefined!2597 Bool) (index!9312 (_ BitVec 32)) (x!27519 (_ BitVec 32))) (Undefined!1785) (MissingVacant!1785 (index!9313 (_ BitVec 32))) )
))
(declare-fun lt!138887 () SeekEntryResult!1785)

(assert (=> b!280569 (= res!143671 (or (= lt!138887 (MissingZero!1785 i!1267)) (= lt!138887 (MissingVacant!1785 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13949 (_ BitVec 32)) SeekEntryResult!1785)

(assert (=> b!280569 (= lt!138887 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280570 () Bool)

(declare-fun res!143672 () Bool)

(assert (=> b!280570 (=> (not res!143672) (not e!178578))))

(assert (=> b!280570 (= res!143672 (validKeyInArray!0 (select (arr!6616 a!3325) startIndex!26)))))

(declare-fun b!280571 () Bool)

(declare-fun res!143675 () Bool)

(assert (=> b!280571 (=> (not res!143675) (not e!178578))))

(assert (=> b!280571 (= res!143675 (not (= startIndex!26 i!1267)))))

(declare-fun b!280572 () Bool)

(declare-fun res!143676 () Bool)

(assert (=> b!280572 (=> (not res!143676) (not e!178577))))

(assert (=> b!280572 (= res!143676 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4442))))

(assert (= (and start!27142 res!143679) b!280567))

(assert (= (and b!280567 res!143677) b!280564))

(assert (= (and b!280564 res!143673) b!280572))

(assert (= (and b!280572 res!143676) b!280565))

(assert (= (and b!280565 res!143674) b!280569))

(assert (= (and b!280569 res!143671) b!280568))

(assert (= (and b!280568 res!143678) b!280571))

(assert (= (and b!280571 res!143675) b!280570))

(assert (= (and b!280570 res!143672) b!280566))

(declare-fun m!295021 () Bool)

(assert (=> b!280570 m!295021))

(assert (=> b!280570 m!295021))

(declare-fun m!295023 () Bool)

(assert (=> b!280570 m!295023))

(declare-fun m!295025 () Bool)

(assert (=> b!280569 m!295025))

(declare-fun m!295027 () Bool)

(assert (=> b!280564 m!295027))

(declare-fun m!295029 () Bool)

(assert (=> start!27142 m!295029))

(declare-fun m!295031 () Bool)

(assert (=> start!27142 m!295031))

(declare-fun m!295033 () Bool)

(assert (=> b!280568 m!295033))

(declare-fun m!295035 () Bool)

(assert (=> b!280566 m!295035))

(declare-fun m!295037 () Bool)

(assert (=> b!280566 m!295037))

(declare-fun m!295039 () Bool)

(assert (=> b!280566 m!295039))

(declare-fun m!295041 () Bool)

(assert (=> b!280572 m!295041))

(declare-fun m!295043 () Bool)

(assert (=> b!280565 m!295043))

(push 1)

