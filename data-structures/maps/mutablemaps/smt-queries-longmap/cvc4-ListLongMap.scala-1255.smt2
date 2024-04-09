; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26102 () Bool)

(assert start!26102)

(declare-fun b!269085 () Bool)

(declare-fun res!133387 () Bool)

(declare-fun e!173702 () Bool)

(assert (=> b!269085 (=> (not res!133387) (not e!173702))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269085 (= res!133387 (validKeyInArray!0 k!2581))))

(declare-fun b!269086 () Bool)

(declare-fun res!133392 () Bool)

(assert (=> b!269086 (=> (not res!133392) (not e!173702))))

(declare-datatypes ((array!13188 0))(
  ( (array!13189 (arr!6243 (Array (_ BitVec 32) (_ BitVec 64))) (size!6595 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13188)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269086 (= res!133392 (and (= (size!6595 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6595 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6595 a!3325))))))

(declare-fun b!269087 () Bool)

(declare-fun e!173701 () Bool)

(assert (=> b!269087 (= e!173702 e!173701)))

(declare-fun res!133386 () Bool)

(assert (=> b!269087 (=> (not res!133386) (not e!173701))))

(declare-datatypes ((SeekEntryResult!1412 0))(
  ( (MissingZero!1412 (index!7818 (_ BitVec 32))) (Found!1412 (index!7819 (_ BitVec 32))) (Intermediate!1412 (undefined!2224 Bool) (index!7820 (_ BitVec 32)) (x!26137 (_ BitVec 32))) (Undefined!1412) (MissingVacant!1412 (index!7821 (_ BitVec 32))) )
))
(declare-fun lt!135126 () SeekEntryResult!1412)

(assert (=> b!269087 (= res!133386 (or (= lt!135126 (MissingZero!1412 i!1267)) (= lt!135126 (MissingVacant!1412 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13188 (_ BitVec 32)) SeekEntryResult!1412)

(assert (=> b!269087 (= lt!135126 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269088 () Bool)

(assert (=> b!269088 (= e!173701 false)))

(declare-datatypes ((Unit!8310 0))(
  ( (Unit!8311) )
))
(declare-fun lt!135127 () Unit!8310)

(declare-fun e!173704 () Unit!8310)

(assert (=> b!269088 (= lt!135127 e!173704)))

(declare-fun c!45401 () Bool)

(assert (=> b!269088 (= c!45401 (bvslt startIndex!26 (bvsub (size!6595 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269089 () Bool)

(declare-fun Unit!8312 () Unit!8310)

(assert (=> b!269089 (= e!173704 Unit!8312)))

(declare-fun b!269090 () Bool)

(declare-fun res!133390 () Bool)

(assert (=> b!269090 (=> (not res!133390) (not e!173701))))

(assert (=> b!269090 (= res!133390 (= startIndex!26 i!1267))))

(declare-fun b!269091 () Bool)

(declare-fun res!133388 () Bool)

(assert (=> b!269091 (=> (not res!133388) (not e!173702))))

(declare-fun arrayContainsKey!0 (array!13188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269091 (= res!133388 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133391 () Bool)

(assert (=> start!26102 (=> (not res!133391) (not e!173702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26102 (= res!133391 (validMask!0 mask!3868))))

(assert (=> start!26102 e!173702))

(declare-fun array_inv!4197 (array!13188) Bool)

(assert (=> start!26102 (array_inv!4197 a!3325)))

(assert (=> start!26102 true))

(declare-fun b!269092 () Bool)

(declare-fun lt!135128 () Unit!8310)

(assert (=> b!269092 (= e!173704 lt!135128)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13188 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8310)

(assert (=> b!269092 (= lt!135128 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13188 (_ BitVec 32)) Bool)

(assert (=> b!269092 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13189 (store (arr!6243 a!3325) i!1267 k!2581) (size!6595 a!3325)) mask!3868)))

(declare-fun b!269093 () Bool)

(declare-fun res!133385 () Bool)

(assert (=> b!269093 (=> (not res!133385) (not e!173702))))

(declare-datatypes ((List!4072 0))(
  ( (Nil!4069) (Cons!4068 (h!4735 (_ BitVec 64)) (t!9162 List!4072)) )
))
(declare-fun arrayNoDuplicates!0 (array!13188 (_ BitVec 32) List!4072) Bool)

(assert (=> b!269093 (= res!133385 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4069))))

(declare-fun b!269094 () Bool)

(declare-fun res!133389 () Bool)

(assert (=> b!269094 (=> (not res!133389) (not e!173701))))

(assert (=> b!269094 (= res!133389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26102 res!133391) b!269086))

(assert (= (and b!269086 res!133392) b!269085))

(assert (= (and b!269085 res!133387) b!269093))

(assert (= (and b!269093 res!133385) b!269091))

(assert (= (and b!269091 res!133388) b!269087))

(assert (= (and b!269087 res!133386) b!269094))

(assert (= (and b!269094 res!133389) b!269090))

(assert (= (and b!269090 res!133390) b!269088))

(assert (= (and b!269088 c!45401) b!269092))

(assert (= (and b!269088 (not c!45401)) b!269089))

(declare-fun m!285089 () Bool)

(assert (=> b!269093 m!285089))

(declare-fun m!285091 () Bool)

(assert (=> b!269092 m!285091))

(declare-fun m!285093 () Bool)

(assert (=> b!269092 m!285093))

(declare-fun m!285095 () Bool)

(assert (=> b!269092 m!285095))

(declare-fun m!285097 () Bool)

(assert (=> start!26102 m!285097))

(declare-fun m!285099 () Bool)

(assert (=> start!26102 m!285099))

(declare-fun m!285101 () Bool)

(assert (=> b!269094 m!285101))

(declare-fun m!285103 () Bool)

(assert (=> b!269091 m!285103))

(declare-fun m!285105 () Bool)

(assert (=> b!269085 m!285105))

(declare-fun m!285107 () Bool)

(assert (=> b!269087 m!285107))

(push 1)

(assert (not start!26102))

(assert (not b!269085))

(assert (not b!269093))

(assert (not b!269087))

(assert (not b!269094))

(assert (not b!269092))

