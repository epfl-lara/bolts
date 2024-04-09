; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27112 () Bool)

(assert start!27112)

(declare-fun b!280059 () Bool)

(declare-fun res!143176 () Bool)

(declare-fun e!178442 () Bool)

(assert (=> b!280059 (=> (not res!143176) (not e!178442))))

(declare-datatypes ((array!13919 0))(
  ( (array!13920 (arr!6601 (Array (_ BitVec 32) (_ BitVec 64))) (size!6953 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13919)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13919 (_ BitVec 32)) Bool)

(assert (=> b!280059 (= res!143176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280061 () Bool)

(assert (=> b!280061 (= e!178442 false)))

(declare-fun lt!138796 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4430 0))(
  ( (Nil!4427) (Cons!4426 (h!5096 (_ BitVec 64)) (t!9520 List!4430)) )
))
(declare-fun contains!1980 (List!4430 (_ BitVec 64)) Bool)

(assert (=> b!280061 (= lt!138796 (contains!1980 Nil!4427 k!2581))))

(declare-fun b!280062 () Bool)

(declare-fun res!143174 () Bool)

(assert (=> b!280062 (=> (not res!143174) (not e!178442))))

(assert (=> b!280062 (= res!143174 (not (contains!1980 Nil!4427 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280063 () Bool)

(declare-fun res!143169 () Bool)

(declare-fun e!178443 () Bool)

(assert (=> b!280063 (=> (not res!143169) (not e!178443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280063 (= res!143169 (validKeyInArray!0 k!2581))))

(declare-fun b!280064 () Bool)

(declare-fun res!143173 () Bool)

(assert (=> b!280064 (=> (not res!143173) (not e!178443))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280064 (= res!143173 (and (= (size!6953 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6953 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6953 a!3325))))))

(declare-fun b!280065 () Bool)

(assert (=> b!280065 (= e!178443 e!178442)))

(declare-fun res!143167 () Bool)

(assert (=> b!280065 (=> (not res!143167) (not e!178442))))

(declare-datatypes ((SeekEntryResult!1770 0))(
  ( (MissingZero!1770 (index!9250 (_ BitVec 32))) (Found!1770 (index!9251 (_ BitVec 32))) (Intermediate!1770 (undefined!2582 Bool) (index!9252 (_ BitVec 32)) (x!27464 (_ BitVec 32))) (Undefined!1770) (MissingVacant!1770 (index!9253 (_ BitVec 32))) )
))
(declare-fun lt!138797 () SeekEntryResult!1770)

(assert (=> b!280065 (= res!143167 (or (= lt!138797 (MissingZero!1770 i!1267)) (= lt!138797 (MissingVacant!1770 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13919 (_ BitVec 32)) SeekEntryResult!1770)

(assert (=> b!280065 (= lt!138797 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280066 () Bool)

(declare-fun res!143175 () Bool)

(assert (=> b!280066 (=> (not res!143175) (not e!178442))))

(assert (=> b!280066 (= res!143175 (validKeyInArray!0 (select (arr!6601 a!3325) startIndex!26)))))

(declare-fun b!280067 () Bool)

(declare-fun res!143177 () Bool)

(assert (=> b!280067 (=> (not res!143177) (not e!178442))))

(declare-fun noDuplicate!164 (List!4430) Bool)

(assert (=> b!280067 (= res!143177 (noDuplicate!164 Nil!4427))))

(declare-fun b!280060 () Bool)

(declare-fun res!143168 () Bool)

(assert (=> b!280060 (=> (not res!143168) (not e!178442))))

(assert (=> b!280060 (= res!143168 (and (bvslt (size!6953 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6953 a!3325))))))

(declare-fun res!143171 () Bool)

(assert (=> start!27112 (=> (not res!143171) (not e!178443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27112 (= res!143171 (validMask!0 mask!3868))))

(assert (=> start!27112 e!178443))

(declare-fun array_inv!4555 (array!13919) Bool)

(assert (=> start!27112 (array_inv!4555 a!3325)))

(assert (=> start!27112 true))

(declare-fun b!280068 () Bool)

(declare-fun res!143178 () Bool)

(assert (=> b!280068 (=> (not res!143178) (not e!178443))))

(declare-fun arrayContainsKey!0 (array!13919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280068 (= res!143178 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280069 () Bool)

(declare-fun res!143172 () Bool)

(assert (=> b!280069 (=> (not res!143172) (not e!178443))))

(declare-fun arrayNoDuplicates!0 (array!13919 (_ BitVec 32) List!4430) Bool)

(assert (=> b!280069 (= res!143172 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4427))))

(declare-fun b!280070 () Bool)

(declare-fun res!143166 () Bool)

(assert (=> b!280070 (=> (not res!143166) (not e!178442))))

(assert (=> b!280070 (= res!143166 (not (contains!1980 Nil!4427 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280071 () Bool)

(declare-fun res!143170 () Bool)

(assert (=> b!280071 (=> (not res!143170) (not e!178442))))

(assert (=> b!280071 (= res!143170 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27112 res!143171) b!280064))

(assert (= (and b!280064 res!143173) b!280063))

(assert (= (and b!280063 res!143169) b!280069))

(assert (= (and b!280069 res!143172) b!280068))

(assert (= (and b!280068 res!143178) b!280065))

(assert (= (and b!280065 res!143167) b!280059))

(assert (= (and b!280059 res!143176) b!280071))

(assert (= (and b!280071 res!143170) b!280066))

(assert (= (and b!280066 res!143175) b!280060))

(assert (= (and b!280060 res!143168) b!280067))

(assert (= (and b!280067 res!143177) b!280070))

(assert (= (and b!280070 res!143166) b!280062))

(assert (= (and b!280062 res!143174) b!280061))

(declare-fun m!294643 () Bool)

(assert (=> b!280061 m!294643))

(declare-fun m!294645 () Bool)

(assert (=> b!280070 m!294645))

(declare-fun m!294647 () Bool)

(assert (=> b!280067 m!294647))

(declare-fun m!294649 () Bool)

(assert (=> b!280066 m!294649))

(assert (=> b!280066 m!294649))

(declare-fun m!294651 () Bool)

(assert (=> b!280066 m!294651))

(declare-fun m!294653 () Bool)

(assert (=> b!280063 m!294653))

(declare-fun m!294655 () Bool)

(assert (=> b!280068 m!294655))

(declare-fun m!294657 () Bool)

(assert (=> start!27112 m!294657))

(declare-fun m!294659 () Bool)

(assert (=> start!27112 m!294659))

(declare-fun m!294661 () Bool)

(assert (=> b!280062 m!294661))

(declare-fun m!294663 () Bool)

(assert (=> b!280059 m!294663))

(declare-fun m!294665 () Bool)

(assert (=> b!280065 m!294665))

(declare-fun m!294667 () Bool)

(assert (=> b!280069 m!294667))

(push 1)

