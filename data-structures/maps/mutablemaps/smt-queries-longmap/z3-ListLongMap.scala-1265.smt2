; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26160 () Bool)

(assert start!26160)

(declare-fun b!269955 () Bool)

(declare-datatypes ((Unit!8397 0))(
  ( (Unit!8398) )
))
(declare-fun e!174076 () Unit!8397)

(declare-fun Unit!8399 () Unit!8397)

(assert (=> b!269955 (= e!174076 Unit!8399)))

(declare-fun b!269956 () Bool)

(declare-fun res!134082 () Bool)

(declare-fun e!174072 () Bool)

(assert (=> b!269956 (=> (not res!134082) (not e!174072))))

(declare-datatypes ((array!13246 0))(
  ( (array!13247 (arr!6272 (Array (_ BitVec 32) (_ BitVec 64))) (size!6624 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13246)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13246 (_ BitVec 32)) Bool)

(assert (=> b!269956 (= res!134082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269957 () Bool)

(declare-fun lt!135434 () Unit!8397)

(assert (=> b!269957 (= e!174076 lt!135434)))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13246 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8397)

(assert (=> b!269957 (= lt!135434 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!135435 () array!13246)

(assert (=> b!269957 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135435 mask!3868)))

(declare-fun b!269958 () Bool)

(declare-fun e!174074 () Bool)

(assert (=> b!269958 (= e!174072 e!174074)))

(declare-fun res!134083 () Bool)

(assert (=> b!269958 (=> (not res!134083) (not e!174074))))

(assert (=> b!269958 (= res!134083 (= startIndex!26 i!1267))))

(assert (=> b!269958 (= lt!135435 (array!13247 (store (arr!6272 a!3325) i!1267 k0!2581) (size!6624 a!3325)))))

(declare-fun b!269959 () Bool)

(declare-fun res!134085 () Bool)

(declare-fun e!174075 () Bool)

(assert (=> b!269959 (=> (not res!134085) (not e!174075))))

(declare-datatypes ((List!4101 0))(
  ( (Nil!4098) (Cons!4097 (h!4764 (_ BitVec 64)) (t!9191 List!4101)) )
))
(declare-fun arrayNoDuplicates!0 (array!13246 (_ BitVec 32) List!4101) Bool)

(assert (=> b!269959 (= res!134085 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4098))))

(declare-fun b!269961 () Bool)

(declare-fun res!134086 () Bool)

(assert (=> b!269961 (=> (not res!134086) (not e!174075))))

(assert (=> b!269961 (= res!134086 (and (= (size!6624 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6624 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6624 a!3325))))))

(declare-fun b!269962 () Bool)

(declare-fun res!134081 () Bool)

(assert (=> b!269962 (=> (not res!134081) (not e!174075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269962 (= res!134081 (validKeyInArray!0 k0!2581))))

(declare-fun b!269963 () Bool)

(declare-fun res!134088 () Bool)

(assert (=> b!269963 (=> (not res!134088) (not e!174075))))

(declare-fun arrayContainsKey!0 (array!13246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269963 (= res!134088 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269964 () Bool)

(assert (=> b!269964 (= e!174075 e!174072)))

(declare-fun res!134087 () Bool)

(assert (=> b!269964 (=> (not res!134087) (not e!174072))))

(declare-datatypes ((SeekEntryResult!1441 0))(
  ( (MissingZero!1441 (index!7934 (_ BitVec 32))) (Found!1441 (index!7935 (_ BitVec 32))) (Intermediate!1441 (undefined!2253 Bool) (index!7936 (_ BitVec 32)) (x!26246 (_ BitVec 32))) (Undefined!1441) (MissingVacant!1441 (index!7937 (_ BitVec 32))) )
))
(declare-fun lt!135437 () SeekEntryResult!1441)

(assert (=> b!269964 (= res!134087 (or (= lt!135437 (MissingZero!1441 i!1267)) (= lt!135437 (MissingVacant!1441 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13246 (_ BitVec 32)) SeekEntryResult!1441)

(assert (=> b!269964 (= lt!135437 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!134084 () Bool)

(assert (=> start!26160 (=> (not res!134084) (not e!174075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26160 (= res!134084 (validMask!0 mask!3868))))

(assert (=> start!26160 e!174075))

(declare-fun array_inv!4226 (array!13246) Bool)

(assert (=> start!26160 (array_inv!4226 a!3325)))

(assert (=> start!26160 true))

(declare-fun b!269960 () Bool)

(assert (=> b!269960 (= e!174074 (not true))))

(assert (=> b!269960 (= (seekEntryOrOpen!0 k0!2581 lt!135435 mask!3868) (Found!1441 i!1267))))

(declare-fun lt!135433 () Unit!8397)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13246 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8397)

(assert (=> b!269960 (= lt!135433 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135436 () Unit!8397)

(assert (=> b!269960 (= lt!135436 e!174076)))

(declare-fun c!45488 () Bool)

(assert (=> b!269960 (= c!45488 (bvslt startIndex!26 (bvsub (size!6624 a!3325) #b00000000000000000000000000000001)))))

(assert (= (and start!26160 res!134084) b!269961))

(assert (= (and b!269961 res!134086) b!269962))

(assert (= (and b!269962 res!134081) b!269959))

(assert (= (and b!269959 res!134085) b!269963))

(assert (= (and b!269963 res!134088) b!269964))

(assert (= (and b!269964 res!134087) b!269956))

(assert (= (and b!269956 res!134082) b!269958))

(assert (= (and b!269958 res!134083) b!269960))

(assert (= (and b!269960 c!45488) b!269957))

(assert (= (and b!269960 (not c!45488)) b!269955))

(declare-fun m!285697 () Bool)

(assert (=> b!269957 m!285697))

(declare-fun m!285699 () Bool)

(assert (=> b!269957 m!285699))

(declare-fun m!285701 () Bool)

(assert (=> b!269958 m!285701))

(declare-fun m!285703 () Bool)

(assert (=> start!26160 m!285703))

(declare-fun m!285705 () Bool)

(assert (=> start!26160 m!285705))

(declare-fun m!285707 () Bool)

(assert (=> b!269962 m!285707))

(declare-fun m!285709 () Bool)

(assert (=> b!269956 m!285709))

(declare-fun m!285711 () Bool)

(assert (=> b!269960 m!285711))

(declare-fun m!285713 () Bool)

(assert (=> b!269960 m!285713))

(declare-fun m!285715 () Bool)

(assert (=> b!269959 m!285715))

(declare-fun m!285717 () Bool)

(assert (=> b!269963 m!285717))

(declare-fun m!285719 () Bool)

(assert (=> b!269964 m!285719))

(check-sat (not b!269964) (not start!26160) (not b!269963) (not b!269960) (not b!269957) (not b!269962) (not b!269959) (not b!269956))
(check-sat)
