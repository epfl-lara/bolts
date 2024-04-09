; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27154 () Bool)

(assert start!27154)

(declare-fun b!280726 () Bool)

(declare-fun res!143834 () Bool)

(declare-fun e!178633 () Bool)

(assert (=> b!280726 (=> (not res!143834) (not e!178633))))

(declare-datatypes ((array!13961 0))(
  ( (array!13962 (arr!6622 (Array (_ BitVec 32) (_ BitVec 64))) (size!6974 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13961)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280726 (= res!143834 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280727 () Bool)

(declare-fun res!143837 () Bool)

(assert (=> b!280727 (=> (not res!143837) (not e!178633))))

(declare-datatypes ((List!4451 0))(
  ( (Nil!4448) (Cons!4447 (h!5117 (_ BitVec 64)) (t!9541 List!4451)) )
))
(declare-fun arrayNoDuplicates!0 (array!13961 (_ BitVec 32) List!4451) Bool)

(assert (=> b!280727 (= res!143837 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4448))))

(declare-fun b!280728 () Bool)

(declare-fun res!143839 () Bool)

(declare-fun e!178631 () Bool)

(assert (=> b!280728 (=> (not res!143839) (not e!178631))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13961 (_ BitVec 32)) Bool)

(assert (=> b!280728 (= res!143839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280729 () Bool)

(declare-fun res!143841 () Bool)

(assert (=> b!280729 (=> (not res!143841) (not e!178633))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280729 (= res!143841 (and (= (size!6974 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6974 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6974 a!3325))))))

(declare-fun b!280730 () Bool)

(declare-fun res!143838 () Bool)

(assert (=> b!280730 (=> (not res!143838) (not e!178631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280730 (= res!143838 (validKeyInArray!0 (select (arr!6622 a!3325) startIndex!26)))))

(declare-fun res!143836 () Bool)

(assert (=> start!27154 (=> (not res!143836) (not e!178633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27154 (= res!143836 (validMask!0 mask!3868))))

(assert (=> start!27154 e!178633))

(declare-fun array_inv!4576 (array!13961) Bool)

(assert (=> start!27154 (array_inv!4576 a!3325)))

(assert (=> start!27154 true))

(declare-fun b!280731 () Bool)

(declare-fun res!143835 () Bool)

(assert (=> b!280731 (=> (not res!143835) (not e!178633))))

(assert (=> b!280731 (= res!143835 (validKeyInArray!0 k!2581))))

(declare-fun b!280732 () Bool)

(declare-fun res!143833 () Bool)

(assert (=> b!280732 (=> (not res!143833) (not e!178631))))

(assert (=> b!280732 (= res!143833 (not (= startIndex!26 i!1267)))))

(declare-fun b!280733 () Bool)

(assert (=> b!280733 (= e!178633 e!178631)))

(declare-fun res!143840 () Bool)

(assert (=> b!280733 (=> (not res!143840) (not e!178631))))

(declare-datatypes ((SeekEntryResult!1791 0))(
  ( (MissingZero!1791 (index!9334 (_ BitVec 32))) (Found!1791 (index!9335 (_ BitVec 32))) (Intermediate!1791 (undefined!2603 Bool) (index!9336 (_ BitVec 32)) (x!27541 (_ BitVec 32))) (Undefined!1791) (MissingVacant!1791 (index!9337 (_ BitVec 32))) )
))
(declare-fun lt!138922 () SeekEntryResult!1791)

(assert (=> b!280733 (= res!143840 (or (= lt!138922 (MissingZero!1791 i!1267)) (= lt!138922 (MissingVacant!1791 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13961 (_ BitVec 32)) SeekEntryResult!1791)

(assert (=> b!280733 (= lt!138922 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280734 () Bool)

(assert (=> b!280734 (= e!178631 (not true))))

(assert (=> b!280734 (arrayNoDuplicates!0 (array!13962 (store (arr!6622 a!3325) i!1267 k!2581) (size!6974 a!3325)) #b00000000000000000000000000000000 Nil!4448)))

(declare-datatypes ((Unit!8845 0))(
  ( (Unit!8846) )
))
(declare-fun lt!138923 () Unit!8845)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13961 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4451) Unit!8845)

(assert (=> b!280734 (= lt!138923 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4448))))

(assert (= (and start!27154 res!143836) b!280729))

(assert (= (and b!280729 res!143841) b!280731))

(assert (= (and b!280731 res!143835) b!280727))

(assert (= (and b!280727 res!143837) b!280726))

(assert (= (and b!280726 res!143834) b!280733))

(assert (= (and b!280733 res!143840) b!280728))

(assert (= (and b!280728 res!143839) b!280732))

(assert (= (and b!280732 res!143833) b!280730))

(assert (= (and b!280730 res!143838) b!280734))

(declare-fun m!295165 () Bool)

(assert (=> b!280734 m!295165))

(declare-fun m!295167 () Bool)

(assert (=> b!280734 m!295167))

(declare-fun m!295169 () Bool)

(assert (=> b!280734 m!295169))

(declare-fun m!295171 () Bool)

(assert (=> start!27154 m!295171))

(declare-fun m!295173 () Bool)

(assert (=> start!27154 m!295173))

(declare-fun m!295175 () Bool)

(assert (=> b!280728 m!295175))

(declare-fun m!295177 () Bool)

(assert (=> b!280731 m!295177))

(declare-fun m!295179 () Bool)

(assert (=> b!280730 m!295179))

(assert (=> b!280730 m!295179))

(declare-fun m!295181 () Bool)

(assert (=> b!280730 m!295181))

(declare-fun m!295183 () Bool)

(assert (=> b!280726 m!295183))

(declare-fun m!295185 () Bool)

(assert (=> b!280727 m!295185))

(declare-fun m!295187 () Bool)

(assert (=> b!280733 m!295187))

(push 1)

