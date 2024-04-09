; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27134 () Bool)

(assert start!27134)

(declare-fun b!280456 () Bool)

(declare-fun res!143571 () Bool)

(declare-fun e!178543 () Bool)

(assert (=> b!280456 (=> (not res!143571) (not e!178543))))

(declare-datatypes ((array!13941 0))(
  ( (array!13942 (arr!6612 (Array (_ BitVec 32) (_ BitVec 64))) (size!6964 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13941)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280456 (= res!143571 (validKeyInArray!0 (select (arr!6612 a!3325) startIndex!26)))))

(declare-fun b!280457 () Bool)

(declare-fun res!143566 () Bool)

(assert (=> b!280457 (=> (not res!143566) (not e!178543))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13941 (_ BitVec 32)) Bool)

(assert (=> b!280457 (= res!143566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280458 () Bool)

(declare-fun res!143567 () Bool)

(assert (=> b!280458 (=> (not res!143567) (not e!178543))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280458 (= res!143567 (not (= startIndex!26 i!1267)))))

(declare-fun b!280459 () Bool)

(declare-fun res!143565 () Bool)

(declare-fun e!178542 () Bool)

(assert (=> b!280459 (=> (not res!143565) (not e!178542))))

(declare-datatypes ((List!4441 0))(
  ( (Nil!4438) (Cons!4437 (h!5107 (_ BitVec 64)) (t!9531 List!4441)) )
))
(declare-fun arrayNoDuplicates!0 (array!13941 (_ BitVec 32) List!4441) Bool)

(assert (=> b!280459 (= res!143565 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4438))))

(declare-fun res!143568 () Bool)

(assert (=> start!27134 (=> (not res!143568) (not e!178542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27134 (= res!143568 (validMask!0 mask!3868))))

(assert (=> start!27134 e!178542))

(declare-fun array_inv!4566 (array!13941) Bool)

(assert (=> start!27134 (array_inv!4566 a!3325)))

(assert (=> start!27134 true))

(declare-fun b!280460 () Bool)

(declare-fun res!143569 () Bool)

(assert (=> b!280460 (=> (not res!143569) (not e!178542))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280460 (= res!143569 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280461 () Bool)

(declare-fun res!143564 () Bool)

(assert (=> b!280461 (=> (not res!143564) (not e!178542))))

(assert (=> b!280461 (= res!143564 (and (= (size!6964 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6964 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6964 a!3325))))))

(declare-fun b!280462 () Bool)

(assert (=> b!280462 (= e!178542 e!178543)))

(declare-fun res!143563 () Bool)

(assert (=> b!280462 (=> (not res!143563) (not e!178543))))

(declare-datatypes ((SeekEntryResult!1781 0))(
  ( (MissingZero!1781 (index!9294 (_ BitVec 32))) (Found!1781 (index!9295 (_ BitVec 32))) (Intermediate!1781 (undefined!2593 Bool) (index!9296 (_ BitVec 32)) (x!27499 (_ BitVec 32))) (Undefined!1781) (MissingVacant!1781 (index!9297 (_ BitVec 32))) )
))
(declare-fun lt!138863 () SeekEntryResult!1781)

(assert (=> b!280462 (= res!143563 (or (= lt!138863 (MissingZero!1781 i!1267)) (= lt!138863 (MissingVacant!1781 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13941 (_ BitVec 32)) SeekEntryResult!1781)

(assert (=> b!280462 (= lt!138863 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280463 () Bool)

(assert (=> b!280463 (= e!178543 (not true))))

(assert (=> b!280463 (arrayNoDuplicates!0 (array!13942 (store (arr!6612 a!3325) i!1267 k!2581) (size!6964 a!3325)) #b00000000000000000000000000000000 Nil!4438)))

(declare-datatypes ((Unit!8825 0))(
  ( (Unit!8826) )
))
(declare-fun lt!138862 () Unit!8825)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13941 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4441) Unit!8825)

(assert (=> b!280463 (= lt!138862 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4438))))

(declare-fun b!280464 () Bool)

(declare-fun res!143570 () Bool)

(assert (=> b!280464 (=> (not res!143570) (not e!178542))))

(assert (=> b!280464 (= res!143570 (validKeyInArray!0 k!2581))))

(assert (= (and start!27134 res!143568) b!280461))

(assert (= (and b!280461 res!143564) b!280464))

(assert (= (and b!280464 res!143570) b!280459))

(assert (= (and b!280459 res!143565) b!280460))

(assert (= (and b!280460 res!143569) b!280462))

(assert (= (and b!280462 res!143563) b!280457))

(assert (= (and b!280457 res!143566) b!280458))

(assert (= (and b!280458 res!143567) b!280456))

(assert (= (and b!280456 res!143571) b!280463))

(declare-fun m!294925 () Bool)

(assert (=> b!280463 m!294925))

(declare-fun m!294927 () Bool)

(assert (=> b!280463 m!294927))

(declare-fun m!294929 () Bool)

(assert (=> b!280463 m!294929))

(declare-fun m!294931 () Bool)

(assert (=> b!280460 m!294931))

(declare-fun m!294933 () Bool)

(assert (=> b!280459 m!294933))

(declare-fun m!294935 () Bool)

(assert (=> b!280464 m!294935))

(declare-fun m!294937 () Bool)

(assert (=> b!280456 m!294937))

(assert (=> b!280456 m!294937))

(declare-fun m!294939 () Bool)

(assert (=> b!280456 m!294939))

(declare-fun m!294941 () Bool)

(assert (=> start!27134 m!294941))

(declare-fun m!294943 () Bool)

(assert (=> start!27134 m!294943))

(declare-fun m!294945 () Bool)

(assert (=> b!280457 m!294945))

(declare-fun m!294947 () Bool)

(assert (=> b!280462 m!294947))

(push 1)

