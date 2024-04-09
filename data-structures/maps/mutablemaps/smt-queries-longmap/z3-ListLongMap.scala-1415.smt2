; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27528 () Bool)

(assert start!27528)

(declare-fun b!284305 () Bool)

(declare-fun e!180381 () Bool)

(assert (=> b!284305 (= e!180381 false)))

(declare-fun lt!140513 () Bool)

(declare-datatypes ((array!14167 0))(
  ( (array!14168 (arr!6722 (Array (_ BitVec 32) (_ BitVec 64))) (size!7074 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14167)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14167 (_ BitVec 32)) Bool)

(assert (=> b!284305 (= lt!140513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284306 () Bool)

(declare-fun res!146852 () Bool)

(declare-fun e!180382 () Bool)

(assert (=> b!284306 (=> (not res!146852) (not e!180382))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284306 (= res!146852 (validKeyInArray!0 k0!2581))))

(declare-fun b!284307 () Bool)

(declare-fun res!146853 () Bool)

(assert (=> b!284307 (=> (not res!146853) (not e!180382))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284307 (= res!146853 (and (= (size!7074 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7074 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7074 a!3325))))))

(declare-fun b!284308 () Bool)

(declare-fun res!146855 () Bool)

(assert (=> b!284308 (=> (not res!146855) (not e!180382))))

(declare-fun arrayContainsKey!0 (array!14167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284308 (= res!146855 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284309 () Bool)

(declare-fun res!146854 () Bool)

(assert (=> b!284309 (=> (not res!146854) (not e!180382))))

(declare-datatypes ((List!4551 0))(
  ( (Nil!4548) (Cons!4547 (h!5220 (_ BitVec 64)) (t!9641 List!4551)) )
))
(declare-fun arrayNoDuplicates!0 (array!14167 (_ BitVec 32) List!4551) Bool)

(assert (=> b!284309 (= res!146854 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4548))))

(declare-fun res!146856 () Bool)

(assert (=> start!27528 (=> (not res!146856) (not e!180382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27528 (= res!146856 (validMask!0 mask!3868))))

(assert (=> start!27528 e!180382))

(declare-fun array_inv!4676 (array!14167) Bool)

(assert (=> start!27528 (array_inv!4676 a!3325)))

(assert (=> start!27528 true))

(declare-fun b!284310 () Bool)

(assert (=> b!284310 (= e!180382 e!180381)))

(declare-fun res!146851 () Bool)

(assert (=> b!284310 (=> (not res!146851) (not e!180381))))

(declare-datatypes ((SeekEntryResult!1891 0))(
  ( (MissingZero!1891 (index!9734 (_ BitVec 32))) (Found!1891 (index!9735 (_ BitVec 32))) (Intermediate!1891 (undefined!2703 Bool) (index!9736 (_ BitVec 32)) (x!27914 (_ BitVec 32))) (Undefined!1891) (MissingVacant!1891 (index!9737 (_ BitVec 32))) )
))
(declare-fun lt!140512 () SeekEntryResult!1891)

(assert (=> b!284310 (= res!146851 (or (= lt!140512 (MissingZero!1891 i!1267)) (= lt!140512 (MissingVacant!1891 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14167 (_ BitVec 32)) SeekEntryResult!1891)

(assert (=> b!284310 (= lt!140512 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!27528 res!146856) b!284307))

(assert (= (and b!284307 res!146853) b!284306))

(assert (= (and b!284306 res!146852) b!284309))

(assert (= (and b!284309 res!146854) b!284308))

(assert (= (and b!284308 res!146855) b!284310))

(assert (= (and b!284310 res!146851) b!284305))

(declare-fun m!299391 () Bool)

(assert (=> b!284310 m!299391))

(declare-fun m!299393 () Bool)

(assert (=> b!284305 m!299393))

(declare-fun m!299395 () Bool)

(assert (=> b!284306 m!299395))

(declare-fun m!299397 () Bool)

(assert (=> start!27528 m!299397))

(declare-fun m!299399 () Bool)

(assert (=> start!27528 m!299399))

(declare-fun m!299401 () Bool)

(assert (=> b!284308 m!299401))

(declare-fun m!299403 () Bool)

(assert (=> b!284309 m!299403))

(check-sat (not b!284310) (not start!27528) (not b!284308) (not b!284306) (not b!284309) (not b!284305))
(check-sat)
