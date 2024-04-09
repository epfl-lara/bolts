; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26064 () Bool)

(assert start!26064)

(declare-fun b!268711 () Bool)

(declare-fun e!173522 () Bool)

(assert (=> b!268711 (= e!173522 false)))

(declare-fun lt!135004 () Bool)

(declare-datatypes ((array!13150 0))(
  ( (array!13151 (arr!6224 (Array (_ BitVec 32) (_ BitVec 64))) (size!6576 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13150)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13150 (_ BitVec 32)) Bool)

(assert (=> b!268711 (= lt!135004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268712 () Bool)

(declare-fun res!133029 () Bool)

(declare-fun e!173524 () Bool)

(assert (=> b!268712 (=> (not res!133029) (not e!173524))))

(declare-datatypes ((List!4053 0))(
  ( (Nil!4050) (Cons!4049 (h!4716 (_ BitVec 64)) (t!9143 List!4053)) )
))
(declare-fun arrayNoDuplicates!0 (array!13150 (_ BitVec 32) List!4053) Bool)

(assert (=> b!268712 (= res!133029 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4050))))

(declare-fun b!268713 () Bool)

(declare-fun res!133032 () Bool)

(assert (=> b!268713 (=> (not res!133032) (not e!173524))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268713 (= res!133032 (validKeyInArray!0 k0!2581))))

(declare-fun b!268714 () Bool)

(assert (=> b!268714 (= e!173524 e!173522)))

(declare-fun res!133027 () Bool)

(assert (=> b!268714 (=> (not res!133027) (not e!173522))))

(declare-datatypes ((SeekEntryResult!1393 0))(
  ( (MissingZero!1393 (index!7742 (_ BitVec 32))) (Found!1393 (index!7743 (_ BitVec 32))) (Intermediate!1393 (undefined!2205 Bool) (index!7744 (_ BitVec 32)) (x!26070 (_ BitVec 32))) (Undefined!1393) (MissingVacant!1393 (index!7745 (_ BitVec 32))) )
))
(declare-fun lt!135005 () SeekEntryResult!1393)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268714 (= res!133027 (or (= lt!135005 (MissingZero!1393 i!1267)) (= lt!135005 (MissingVacant!1393 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13150 (_ BitVec 32)) SeekEntryResult!1393)

(assert (=> b!268714 (= lt!135005 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268715 () Bool)

(declare-fun res!133028 () Bool)

(assert (=> b!268715 (=> (not res!133028) (not e!173524))))

(declare-fun arrayContainsKey!0 (array!13150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268715 (= res!133028 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268716 () Bool)

(declare-fun res!133030 () Bool)

(assert (=> b!268716 (=> (not res!133030) (not e!173524))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268716 (= res!133030 (and (= (size!6576 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6576 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6576 a!3325))))))

(declare-fun res!133031 () Bool)

(assert (=> start!26064 (=> (not res!133031) (not e!173524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26064 (= res!133031 (validMask!0 mask!3868))))

(assert (=> start!26064 e!173524))

(declare-fun array_inv!4178 (array!13150) Bool)

(assert (=> start!26064 (array_inv!4178 a!3325)))

(assert (=> start!26064 true))

(assert (= (and start!26064 res!133031) b!268716))

(assert (= (and b!268716 res!133030) b!268713))

(assert (= (and b!268713 res!133032) b!268712))

(assert (= (and b!268712 res!133029) b!268715))

(assert (= (and b!268715 res!133028) b!268714))

(assert (= (and b!268714 res!133027) b!268711))

(declare-fun m!284811 () Bool)

(assert (=> b!268715 m!284811))

(declare-fun m!284813 () Bool)

(assert (=> b!268713 m!284813))

(declare-fun m!284815 () Bool)

(assert (=> b!268711 m!284815))

(declare-fun m!284817 () Bool)

(assert (=> start!26064 m!284817))

(declare-fun m!284819 () Bool)

(assert (=> start!26064 m!284819))

(declare-fun m!284821 () Bool)

(assert (=> b!268714 m!284821))

(declare-fun m!284823 () Bool)

(assert (=> b!268712 m!284823))

(check-sat (not start!26064) (not b!268713) (not b!268711) (not b!268715) (not b!268714) (not b!268712))
(check-sat)
