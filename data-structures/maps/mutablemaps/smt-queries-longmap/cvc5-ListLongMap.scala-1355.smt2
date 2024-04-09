; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26698 () Bool)

(assert start!26698)

(declare-fun b!276954 () Bool)

(declare-fun res!140980 () Bool)

(declare-fun e!176856 () Bool)

(assert (=> b!276954 (=> (not res!140980) (not e!176856))))

(declare-datatypes ((array!13784 0))(
  ( (array!13785 (arr!6541 (Array (_ BitVec 32) (_ BitVec 64))) (size!6893 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13784)

(declare-datatypes ((List!4370 0))(
  ( (Nil!4367) (Cons!4366 (h!5033 (_ BitVec 64)) (t!9460 List!4370)) )
))
(declare-fun arrayNoDuplicates!0 (array!13784 (_ BitVec 32) List!4370) Bool)

(assert (=> b!276954 (= res!140980 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4367))))

(declare-fun b!276955 () Bool)

(declare-fun res!140981 () Bool)

(declare-fun e!176857 () Bool)

(assert (=> b!276955 (=> (not res!140981) (not e!176857))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13784 (_ BitVec 32)) Bool)

(assert (=> b!276955 (= res!140981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276956 () Bool)

(assert (=> b!276956 (= e!176857 false)))

(declare-datatypes ((Unit!8700 0))(
  ( (Unit!8701) )
))
(declare-fun lt!137828 () Unit!8700)

(declare-fun e!176855 () Unit!8700)

(assert (=> b!276956 (= lt!137828 e!176855)))

(declare-fun c!45539 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276956 (= c!45539 (bvslt startIndex!26 (bvsub (size!6893 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!276957 () Bool)

(declare-fun Unit!8702 () Unit!8700)

(assert (=> b!276957 (= e!176855 Unit!8702)))

(declare-fun res!140983 () Bool)

(assert (=> start!26698 (=> (not res!140983) (not e!176856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26698 (= res!140983 (validMask!0 mask!3868))))

(assert (=> start!26698 e!176856))

(declare-fun array_inv!4495 (array!13784) Bool)

(assert (=> start!26698 (array_inv!4495 a!3325)))

(assert (=> start!26698 true))

(declare-fun b!276958 () Bool)

(declare-fun res!140985 () Bool)

(assert (=> b!276958 (=> (not res!140985) (not e!176856))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276958 (= res!140985 (and (= (size!6893 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6893 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6893 a!3325))))))

(declare-fun b!276959 () Bool)

(assert (=> b!276959 (= e!176856 e!176857)))

(declare-fun res!140978 () Bool)

(assert (=> b!276959 (=> (not res!140978) (not e!176857))))

(declare-datatypes ((SeekEntryResult!1710 0))(
  ( (MissingZero!1710 (index!9010 (_ BitVec 32))) (Found!1710 (index!9011 (_ BitVec 32))) (Intermediate!1710 (undefined!2522 Bool) (index!9012 (_ BitVec 32)) (x!27235 (_ BitVec 32))) (Undefined!1710) (MissingVacant!1710 (index!9013 (_ BitVec 32))) )
))
(declare-fun lt!137827 () SeekEntryResult!1710)

(assert (=> b!276959 (= res!140978 (or (= lt!137827 (MissingZero!1710 i!1267)) (= lt!137827 (MissingVacant!1710 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13784 (_ BitVec 32)) SeekEntryResult!1710)

(assert (=> b!276959 (= lt!137827 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276960 () Bool)

(declare-fun res!140984 () Bool)

(assert (=> b!276960 (=> (not res!140984) (not e!176856))))

(declare-fun arrayContainsKey!0 (array!13784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276960 (= res!140984 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276961 () Bool)

(declare-fun res!140979 () Bool)

(assert (=> b!276961 (=> (not res!140979) (not e!176857))))

(assert (=> b!276961 (= res!140979 (= startIndex!26 i!1267))))

(declare-fun b!276962 () Bool)

(declare-fun lt!137826 () Unit!8700)

(assert (=> b!276962 (= e!176855 lt!137826)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13784 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8700)

(assert (=> b!276962 (= lt!137826 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!276962 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13785 (store (arr!6541 a!3325) i!1267 k!2581) (size!6893 a!3325)) mask!3868)))

(declare-fun b!276963 () Bool)

(declare-fun res!140982 () Bool)

(assert (=> b!276963 (=> (not res!140982) (not e!176856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276963 (= res!140982 (validKeyInArray!0 k!2581))))

(assert (= (and start!26698 res!140983) b!276958))

(assert (= (and b!276958 res!140985) b!276963))

(assert (= (and b!276963 res!140982) b!276954))

(assert (= (and b!276954 res!140980) b!276960))

(assert (= (and b!276960 res!140984) b!276959))

(assert (= (and b!276959 res!140978) b!276955))

(assert (= (and b!276955 res!140981) b!276961))

(assert (= (and b!276961 res!140979) b!276956))

(assert (= (and b!276956 c!45539) b!276962))

(assert (= (and b!276956 (not c!45539)) b!276957))

(declare-fun m!292189 () Bool)

(assert (=> start!26698 m!292189))

(declare-fun m!292191 () Bool)

(assert (=> start!26698 m!292191))

(declare-fun m!292193 () Bool)

(assert (=> b!276959 m!292193))

(declare-fun m!292195 () Bool)

(assert (=> b!276954 m!292195))

(declare-fun m!292197 () Bool)

(assert (=> b!276962 m!292197))

(declare-fun m!292199 () Bool)

(assert (=> b!276962 m!292199))

(declare-fun m!292201 () Bool)

(assert (=> b!276962 m!292201))

(declare-fun m!292203 () Bool)

(assert (=> b!276955 m!292203))

(declare-fun m!292205 () Bool)

(assert (=> b!276963 m!292205))

(declare-fun m!292207 () Bool)

(assert (=> b!276960 m!292207))

(push 1)

