; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27114 () Bool)

(assert start!27114)

(declare-fun b!280098 () Bool)

(declare-fun e!178452 () Bool)

(assert (=> b!280098 (= e!178452 false)))

(declare-fun lt!138802 () Bool)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4431 0))(
  ( (Nil!4428) (Cons!4427 (h!5097 (_ BitVec 64)) (t!9521 List!4431)) )
))
(declare-fun contains!1981 (List!4431 (_ BitVec 64)) Bool)

(assert (=> b!280098 (= lt!138802 (contains!1981 Nil!4428 k0!2581))))

(declare-fun b!280099 () Bool)

(declare-fun res!143209 () Bool)

(declare-fun e!178453 () Bool)

(assert (=> b!280099 (=> (not res!143209) (not e!178453))))

(declare-datatypes ((array!13921 0))(
  ( (array!13922 (arr!6602 (Array (_ BitVec 32) (_ BitVec 64))) (size!6954 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13921)

(declare-fun arrayContainsKey!0 (array!13921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280099 (= res!143209 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280100 () Bool)

(declare-fun res!143217 () Bool)

(assert (=> b!280100 (=> (not res!143217) (not e!178453))))

(declare-fun arrayNoDuplicates!0 (array!13921 (_ BitVec 32) List!4431) Bool)

(assert (=> b!280100 (= res!143217 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4428))))

(declare-fun b!280101 () Bool)

(declare-fun res!143206 () Bool)

(assert (=> b!280101 (=> (not res!143206) (not e!178453))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280101 (= res!143206 (and (= (size!6954 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6954 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6954 a!3325))))))

(declare-fun b!280102 () Bool)

(assert (=> b!280102 (= e!178453 e!178452)))

(declare-fun res!143207 () Bool)

(assert (=> b!280102 (=> (not res!143207) (not e!178452))))

(declare-datatypes ((SeekEntryResult!1771 0))(
  ( (MissingZero!1771 (index!9254 (_ BitVec 32))) (Found!1771 (index!9255 (_ BitVec 32))) (Intermediate!1771 (undefined!2583 Bool) (index!9256 (_ BitVec 32)) (x!27465 (_ BitVec 32))) (Undefined!1771) (MissingVacant!1771 (index!9257 (_ BitVec 32))) )
))
(declare-fun lt!138803 () SeekEntryResult!1771)

(assert (=> b!280102 (= res!143207 (or (= lt!138803 (MissingZero!1771 i!1267)) (= lt!138803 (MissingVacant!1771 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13921 (_ BitVec 32)) SeekEntryResult!1771)

(assert (=> b!280102 (= lt!138803 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280104 () Bool)

(declare-fun res!143214 () Bool)

(assert (=> b!280104 (=> (not res!143214) (not e!178452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280104 (= res!143214 (validKeyInArray!0 (select (arr!6602 a!3325) startIndex!26)))))

(declare-fun b!280105 () Bool)

(declare-fun res!143213 () Bool)

(assert (=> b!280105 (=> (not res!143213) (not e!178452))))

(declare-fun noDuplicate!165 (List!4431) Bool)

(assert (=> b!280105 (= res!143213 (noDuplicate!165 Nil!4428))))

(declare-fun b!280106 () Bool)

(declare-fun res!143205 () Bool)

(assert (=> b!280106 (=> (not res!143205) (not e!178452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13921 (_ BitVec 32)) Bool)

(assert (=> b!280106 (= res!143205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280107 () Bool)

(declare-fun res!143215 () Bool)

(assert (=> b!280107 (=> (not res!143215) (not e!178452))))

(assert (=> b!280107 (= res!143215 (not (contains!1981 Nil!4428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280108 () Bool)

(declare-fun res!143212 () Bool)

(assert (=> b!280108 (=> (not res!143212) (not e!178452))))

(assert (=> b!280108 (= res!143212 (and (bvslt (size!6954 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6954 a!3325))))))

(declare-fun b!280109 () Bool)

(declare-fun res!143208 () Bool)

(assert (=> b!280109 (=> (not res!143208) (not e!178453))))

(assert (=> b!280109 (= res!143208 (validKeyInArray!0 k0!2581))))

(declare-fun b!280110 () Bool)

(declare-fun res!143211 () Bool)

(assert (=> b!280110 (=> (not res!143211) (not e!178452))))

(assert (=> b!280110 (= res!143211 (not (contains!1981 Nil!4428 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!143210 () Bool)

(assert (=> start!27114 (=> (not res!143210) (not e!178453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27114 (= res!143210 (validMask!0 mask!3868))))

(assert (=> start!27114 e!178453))

(declare-fun array_inv!4556 (array!13921) Bool)

(assert (=> start!27114 (array_inv!4556 a!3325)))

(assert (=> start!27114 true))

(declare-fun b!280103 () Bool)

(declare-fun res!143216 () Bool)

(assert (=> b!280103 (=> (not res!143216) (not e!178452))))

(assert (=> b!280103 (= res!143216 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27114 res!143210) b!280101))

(assert (= (and b!280101 res!143206) b!280109))

(assert (= (and b!280109 res!143208) b!280100))

(assert (= (and b!280100 res!143217) b!280099))

(assert (= (and b!280099 res!143209) b!280102))

(assert (= (and b!280102 res!143207) b!280106))

(assert (= (and b!280106 res!143205) b!280103))

(assert (= (and b!280103 res!143216) b!280104))

(assert (= (and b!280104 res!143214) b!280108))

(assert (= (and b!280108 res!143212) b!280105))

(assert (= (and b!280105 res!143213) b!280107))

(assert (= (and b!280107 res!143215) b!280110))

(assert (= (and b!280110 res!143211) b!280098))

(declare-fun m!294669 () Bool)

(assert (=> start!27114 m!294669))

(declare-fun m!294671 () Bool)

(assert (=> start!27114 m!294671))

(declare-fun m!294673 () Bool)

(assert (=> b!280102 m!294673))

(declare-fun m!294675 () Bool)

(assert (=> b!280100 m!294675))

(declare-fun m!294677 () Bool)

(assert (=> b!280107 m!294677))

(declare-fun m!294679 () Bool)

(assert (=> b!280098 m!294679))

(declare-fun m!294681 () Bool)

(assert (=> b!280110 m!294681))

(declare-fun m!294683 () Bool)

(assert (=> b!280104 m!294683))

(assert (=> b!280104 m!294683))

(declare-fun m!294685 () Bool)

(assert (=> b!280104 m!294685))

(declare-fun m!294687 () Bool)

(assert (=> b!280099 m!294687))

(declare-fun m!294689 () Bool)

(assert (=> b!280106 m!294689))

(declare-fun m!294691 () Bool)

(assert (=> b!280109 m!294691))

(declare-fun m!294693 () Bool)

(assert (=> b!280105 m!294693))

(check-sat (not start!27114) (not b!280100) (not b!280104) (not b!280099) (not b!280105) (not b!280107) (not b!280102) (not b!280098) (not b!280109) (not b!280106) (not b!280110))
(check-sat)
