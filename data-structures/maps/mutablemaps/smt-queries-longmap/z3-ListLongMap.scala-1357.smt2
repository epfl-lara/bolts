; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26712 () Bool)

(assert start!26712)

(declare-fun res!141147 () Bool)

(declare-fun e!176939 () Bool)

(assert (=> start!26712 (=> (not res!141147) (not e!176939))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26712 (= res!141147 (validMask!0 mask!3868))))

(assert (=> start!26712 e!176939))

(declare-datatypes ((array!13798 0))(
  ( (array!13799 (arr!6548 (Array (_ BitVec 32) (_ BitVec 64))) (size!6900 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13798)

(declare-fun array_inv!4502 (array!13798) Bool)

(assert (=> start!26712 (array_inv!4502 a!3325)))

(assert (=> start!26712 true))

(declare-fun b!277164 () Bool)

(declare-fun res!141149 () Bool)

(assert (=> b!277164 (=> (not res!141149) (not e!176939))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277164 (= res!141149 (validKeyInArray!0 k0!2581))))

(declare-fun b!277165 () Bool)

(declare-fun res!141150 () Bool)

(assert (=> b!277165 (=> (not res!141150) (not e!176939))))

(declare-fun arrayContainsKey!0 (array!13798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277165 (= res!141150 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277166 () Bool)

(declare-fun e!176938 () Bool)

(assert (=> b!277166 (= e!176939 e!176938)))

(declare-fun res!141153 () Bool)

(assert (=> b!277166 (=> (not res!141153) (not e!176938))))

(declare-datatypes ((SeekEntryResult!1717 0))(
  ( (MissingZero!1717 (index!9038 (_ BitVec 32))) (Found!1717 (index!9039 (_ BitVec 32))) (Intermediate!1717 (undefined!2529 Bool) (index!9040 (_ BitVec 32)) (x!27258 (_ BitVec 32))) (Undefined!1717) (MissingVacant!1717 (index!9041 (_ BitVec 32))) )
))
(declare-fun lt!137890 () SeekEntryResult!1717)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277166 (= res!141153 (or (= lt!137890 (MissingZero!1717 i!1267)) (= lt!137890 (MissingVacant!1717 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13798 (_ BitVec 32)) SeekEntryResult!1717)

(assert (=> b!277166 (= lt!137890 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277167 () Bool)

(declare-fun res!141146 () Bool)

(assert (=> b!277167 (=> (not res!141146) (not e!176938))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277167 (= res!141146 (= startIndex!26 i!1267))))

(declare-fun b!277168 () Bool)

(declare-datatypes ((Unit!8721 0))(
  ( (Unit!8722) )
))
(declare-fun e!176941 () Unit!8721)

(declare-fun Unit!8723 () Unit!8721)

(assert (=> b!277168 (= e!176941 Unit!8723)))

(declare-fun b!277169 () Bool)

(declare-fun res!141148 () Bool)

(assert (=> b!277169 (=> (not res!141148) (not e!176938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13798 (_ BitVec 32)) Bool)

(assert (=> b!277169 (= res!141148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277170 () Bool)

(declare-fun res!141152 () Bool)

(assert (=> b!277170 (=> (not res!141152) (not e!176939))))

(assert (=> b!277170 (= res!141152 (and (= (size!6900 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6900 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6900 a!3325))))))

(declare-fun b!277171 () Bool)

(declare-fun lt!137891 () Unit!8721)

(assert (=> b!277171 (= e!176941 lt!137891)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13798 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8721)

(assert (=> b!277171 (= lt!137891 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277171 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13799 (store (arr!6548 a!3325) i!1267 k0!2581) (size!6900 a!3325)) mask!3868)))

(declare-fun b!277172 () Bool)

(assert (=> b!277172 (= e!176938 false)))

(declare-fun lt!137889 () Unit!8721)

(assert (=> b!277172 (= lt!137889 e!176941)))

(declare-fun c!45560 () Bool)

(assert (=> b!277172 (= c!45560 (bvslt startIndex!26 (bvsub (size!6900 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277173 () Bool)

(declare-fun res!141151 () Bool)

(assert (=> b!277173 (=> (not res!141151) (not e!176939))))

(declare-datatypes ((List!4377 0))(
  ( (Nil!4374) (Cons!4373 (h!5040 (_ BitVec 64)) (t!9467 List!4377)) )
))
(declare-fun arrayNoDuplicates!0 (array!13798 (_ BitVec 32) List!4377) Bool)

(assert (=> b!277173 (= res!141151 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4374))))

(assert (= (and start!26712 res!141147) b!277170))

(assert (= (and b!277170 res!141152) b!277164))

(assert (= (and b!277164 res!141149) b!277173))

(assert (= (and b!277173 res!141151) b!277165))

(assert (= (and b!277165 res!141150) b!277166))

(assert (= (and b!277166 res!141153) b!277169))

(assert (= (and b!277169 res!141148) b!277167))

(assert (= (and b!277167 res!141146) b!277172))

(assert (= (and b!277172 c!45560) b!277171))

(assert (= (and b!277172 (not c!45560)) b!277168))

(declare-fun m!292329 () Bool)

(assert (=> b!277166 m!292329))

(declare-fun m!292331 () Bool)

(assert (=> b!277164 m!292331))

(declare-fun m!292333 () Bool)

(assert (=> b!277173 m!292333))

(declare-fun m!292335 () Bool)

(assert (=> b!277165 m!292335))

(declare-fun m!292337 () Bool)

(assert (=> b!277171 m!292337))

(declare-fun m!292339 () Bool)

(assert (=> b!277171 m!292339))

(declare-fun m!292341 () Bool)

(assert (=> b!277171 m!292341))

(declare-fun m!292343 () Bool)

(assert (=> b!277169 m!292343))

(declare-fun m!292345 () Bool)

(assert (=> start!26712 m!292345))

(declare-fun m!292347 () Bool)

(assert (=> start!26712 m!292347))

(check-sat (not b!277166) (not start!26712) (not b!277169) (not b!277165) (not b!277164) (not b!277171) (not b!277173))
(check-sat)
