; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26110 () Bool)

(assert start!26110)

(declare-fun b!269205 () Bool)

(declare-datatypes ((Unit!8322 0))(
  ( (Unit!8323) )
))
(declare-fun e!173749 () Unit!8322)

(declare-fun lt!135162 () Unit!8322)

(assert (=> b!269205 (= e!173749 lt!135162)))

(declare-datatypes ((array!13196 0))(
  ( (array!13197 (arr!6247 (Array (_ BitVec 32) (_ BitVec 64))) (size!6599 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13196)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13196 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8322)

(assert (=> b!269205 (= lt!135162 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13196 (_ BitVec 32)) Bool)

(assert (=> b!269205 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13197 (store (arr!6247 a!3325) i!1267 k!2581) (size!6599 a!3325)) mask!3868)))

(declare-fun b!269206 () Bool)

(declare-fun res!133487 () Bool)

(declare-fun e!173752 () Bool)

(assert (=> b!269206 (=> (not res!133487) (not e!173752))))

(assert (=> b!269206 (= res!133487 (= startIndex!26 i!1267))))

(declare-fun b!269207 () Bool)

(declare-fun res!133488 () Bool)

(declare-fun e!173751 () Bool)

(assert (=> b!269207 (=> (not res!133488) (not e!173751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269207 (= res!133488 (validKeyInArray!0 k!2581))))

(declare-fun b!269208 () Bool)

(declare-fun Unit!8324 () Unit!8322)

(assert (=> b!269208 (= e!173749 Unit!8324)))

(declare-fun b!269209 () Bool)

(declare-fun res!133483 () Bool)

(assert (=> b!269209 (=> (not res!133483) (not e!173751))))

(declare-datatypes ((List!4076 0))(
  ( (Nil!4073) (Cons!4072 (h!4739 (_ BitVec 64)) (t!9166 List!4076)) )
))
(declare-fun arrayNoDuplicates!0 (array!13196 (_ BitVec 32) List!4076) Bool)

(assert (=> b!269209 (= res!133483 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4073))))

(declare-fun b!269210 () Bool)

(declare-fun res!133481 () Bool)

(assert (=> b!269210 (=> (not res!133481) (not e!173751))))

(assert (=> b!269210 (= res!133481 (and (= (size!6599 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6599 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6599 a!3325))))))

(declare-fun b!269211 () Bool)

(assert (=> b!269211 (= e!173752 false)))

(declare-fun lt!135163 () Unit!8322)

(assert (=> b!269211 (= lt!135163 e!173749)))

(declare-fun c!45413 () Bool)

(assert (=> b!269211 (= c!45413 (bvslt startIndex!26 (bvsub (size!6599 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269212 () Bool)

(declare-fun res!133484 () Bool)

(assert (=> b!269212 (=> (not res!133484) (not e!173751))))

(declare-fun arrayContainsKey!0 (array!13196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269212 (= res!133484 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133485 () Bool)

(assert (=> start!26110 (=> (not res!133485) (not e!173751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26110 (= res!133485 (validMask!0 mask!3868))))

(assert (=> start!26110 e!173751))

(declare-fun array_inv!4201 (array!13196) Bool)

(assert (=> start!26110 (array_inv!4201 a!3325)))

(assert (=> start!26110 true))

(declare-fun b!269213 () Bool)

(declare-fun res!133482 () Bool)

(assert (=> b!269213 (=> (not res!133482) (not e!173752))))

(assert (=> b!269213 (= res!133482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269214 () Bool)

(assert (=> b!269214 (= e!173751 e!173752)))

(declare-fun res!133486 () Bool)

(assert (=> b!269214 (=> (not res!133486) (not e!173752))))

(declare-datatypes ((SeekEntryResult!1416 0))(
  ( (MissingZero!1416 (index!7834 (_ BitVec 32))) (Found!1416 (index!7835 (_ BitVec 32))) (Intermediate!1416 (undefined!2228 Bool) (index!7836 (_ BitVec 32)) (x!26157 (_ BitVec 32))) (Undefined!1416) (MissingVacant!1416 (index!7837 (_ BitVec 32))) )
))
(declare-fun lt!135164 () SeekEntryResult!1416)

(assert (=> b!269214 (= res!133486 (or (= lt!135164 (MissingZero!1416 i!1267)) (= lt!135164 (MissingVacant!1416 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13196 (_ BitVec 32)) SeekEntryResult!1416)

(assert (=> b!269214 (= lt!135164 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26110 res!133485) b!269210))

(assert (= (and b!269210 res!133481) b!269207))

(assert (= (and b!269207 res!133488) b!269209))

(assert (= (and b!269209 res!133483) b!269212))

(assert (= (and b!269212 res!133484) b!269214))

(assert (= (and b!269214 res!133486) b!269213))

(assert (= (and b!269213 res!133482) b!269206))

(assert (= (and b!269206 res!133487) b!269211))

(assert (= (and b!269211 c!45413) b!269205))

(assert (= (and b!269211 (not c!45413)) b!269208))

(declare-fun m!285169 () Bool)

(assert (=> b!269213 m!285169))

(declare-fun m!285171 () Bool)

(assert (=> b!269207 m!285171))

(declare-fun m!285173 () Bool)

(assert (=> b!269209 m!285173))

(declare-fun m!285175 () Bool)

(assert (=> b!269212 m!285175))

(declare-fun m!285177 () Bool)

(assert (=> b!269214 m!285177))

(declare-fun m!285179 () Bool)

(assert (=> start!26110 m!285179))

(declare-fun m!285181 () Bool)

(assert (=> start!26110 m!285181))

(declare-fun m!285183 () Bool)

(assert (=> b!269205 m!285183))

(declare-fun m!285185 () Bool)

(assert (=> b!269205 m!285185))

(declare-fun m!285187 () Bool)

(assert (=> b!269205 m!285187))

(push 1)

