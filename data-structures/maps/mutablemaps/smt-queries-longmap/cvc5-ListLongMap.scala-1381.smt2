; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27148 () Bool)

(assert start!27148)

(declare-fun res!143753 () Bool)

(declare-fun e!178605 () Bool)

(assert (=> start!27148 (=> (not res!143753) (not e!178605))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27148 (= res!143753 (validMask!0 mask!3868))))

(assert (=> start!27148 e!178605))

(declare-datatypes ((array!13955 0))(
  ( (array!13956 (arr!6619 (Array (_ BitVec 32) (_ BitVec 64))) (size!6971 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13955)

(declare-fun array_inv!4573 (array!13955) Bool)

(assert (=> start!27148 (array_inv!4573 a!3325)))

(assert (=> start!27148 true))

(declare-fun b!280645 () Bool)

(declare-fun e!178606 () Bool)

(assert (=> b!280645 (= e!178605 e!178606)))

(declare-fun res!143755 () Bool)

(assert (=> b!280645 (=> (not res!143755) (not e!178606))))

(declare-datatypes ((SeekEntryResult!1788 0))(
  ( (MissingZero!1788 (index!9322 (_ BitVec 32))) (Found!1788 (index!9323 (_ BitVec 32))) (Intermediate!1788 (undefined!2600 Bool) (index!9324 (_ BitVec 32)) (x!27530 (_ BitVec 32))) (Undefined!1788) (MissingVacant!1788 (index!9325 (_ BitVec 32))) )
))
(declare-fun lt!138904 () SeekEntryResult!1788)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280645 (= res!143755 (or (= lt!138904 (MissingZero!1788 i!1267)) (= lt!138904 (MissingVacant!1788 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13955 (_ BitVec 32)) SeekEntryResult!1788)

(assert (=> b!280645 (= lt!138904 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280646 () Bool)

(declare-fun res!143757 () Bool)

(assert (=> b!280646 (=> (not res!143757) (not e!178605))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280646 (= res!143757 (and (= (size!6971 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6971 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6971 a!3325))))))

(declare-fun b!280647 () Bool)

(declare-fun res!143756 () Bool)

(assert (=> b!280647 (=> (not res!143756) (not e!178606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280647 (= res!143756 (validKeyInArray!0 (select (arr!6619 a!3325) startIndex!26)))))

(declare-fun b!280648 () Bool)

(declare-fun res!143760 () Bool)

(assert (=> b!280648 (=> (not res!143760) (not e!178606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13955 (_ BitVec 32)) Bool)

(assert (=> b!280648 (= res!143760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280649 () Bool)

(declare-fun res!143754 () Bool)

(assert (=> b!280649 (=> (not res!143754) (not e!178605))))

(declare-fun arrayContainsKey!0 (array!13955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280649 (= res!143754 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280650 () Bool)

(declare-fun res!143759 () Bool)

(assert (=> b!280650 (=> (not res!143759) (not e!178605))))

(declare-datatypes ((List!4448 0))(
  ( (Nil!4445) (Cons!4444 (h!5114 (_ BitVec 64)) (t!9538 List!4448)) )
))
(declare-fun arrayNoDuplicates!0 (array!13955 (_ BitVec 32) List!4448) Bool)

(assert (=> b!280650 (= res!143759 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4445))))

(declare-fun b!280651 () Bool)

(declare-fun res!143752 () Bool)

(assert (=> b!280651 (=> (not res!143752) (not e!178606))))

(assert (=> b!280651 (= res!143752 (not (= startIndex!26 i!1267)))))

(declare-fun b!280652 () Bool)

(declare-fun res!143758 () Bool)

(assert (=> b!280652 (=> (not res!143758) (not e!178605))))

(assert (=> b!280652 (= res!143758 (validKeyInArray!0 k!2581))))

(declare-fun b!280653 () Bool)

(assert (=> b!280653 (= e!178606 (not true))))

(assert (=> b!280653 (arrayNoDuplicates!0 (array!13956 (store (arr!6619 a!3325) i!1267 k!2581) (size!6971 a!3325)) #b00000000000000000000000000000000 Nil!4445)))

(declare-datatypes ((Unit!8839 0))(
  ( (Unit!8840) )
))
(declare-fun lt!138905 () Unit!8839)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13955 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4448) Unit!8839)

(assert (=> b!280653 (= lt!138905 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4445))))

(assert (= (and start!27148 res!143753) b!280646))

(assert (= (and b!280646 res!143757) b!280652))

(assert (= (and b!280652 res!143758) b!280650))

(assert (= (and b!280650 res!143759) b!280649))

(assert (= (and b!280649 res!143754) b!280645))

(assert (= (and b!280645 res!143755) b!280648))

(assert (= (and b!280648 res!143760) b!280651))

(assert (= (and b!280651 res!143752) b!280647))

(assert (= (and b!280647 res!143756) b!280653))

(declare-fun m!295093 () Bool)

(assert (=> b!280650 m!295093))

(declare-fun m!295095 () Bool)

(assert (=> b!280645 m!295095))

(declare-fun m!295097 () Bool)

(assert (=> b!280648 m!295097))

(declare-fun m!295099 () Bool)

(assert (=> start!27148 m!295099))

(declare-fun m!295101 () Bool)

(assert (=> start!27148 m!295101))

(declare-fun m!295103 () Bool)

(assert (=> b!280647 m!295103))

(assert (=> b!280647 m!295103))

(declare-fun m!295105 () Bool)

(assert (=> b!280647 m!295105))

(declare-fun m!295107 () Bool)

(assert (=> b!280653 m!295107))

(declare-fun m!295109 () Bool)

(assert (=> b!280653 m!295109))

(declare-fun m!295111 () Bool)

(assert (=> b!280653 m!295111))

(declare-fun m!295113 () Bool)

(assert (=> b!280649 m!295113))

(declare-fun m!295115 () Bool)

(assert (=> b!280652 m!295115))

(push 1)

