; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26140 () Bool)

(assert start!26140)

(declare-fun b!269655 () Bool)

(declare-fun res!133847 () Bool)

(declare-fun e!173930 () Bool)

(assert (=> b!269655 (=> (not res!133847) (not e!173930))))

(declare-datatypes ((array!13226 0))(
  ( (array!13227 (arr!6262 (Array (_ BitVec 32) (_ BitVec 64))) (size!6614 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13226)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269655 (= res!133847 (and (= (size!6614 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6614 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6614 a!3325))))))

(declare-fun b!269656 () Bool)

(declare-fun res!133846 () Bool)

(declare-fun e!173929 () Bool)

(assert (=> b!269656 (=> (not res!133846) (not e!173929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13226 (_ BitVec 32)) Bool)

(assert (=> b!269656 (= res!133846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269657 () Bool)

(declare-fun res!133848 () Bool)

(assert (=> b!269657 (=> (not res!133848) (not e!173930))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269657 (= res!133848 (validKeyInArray!0 k!2581))))

(declare-fun b!269658 () Bool)

(assert (=> b!269658 (= e!173930 e!173929)))

(declare-fun res!133841 () Bool)

(assert (=> b!269658 (=> (not res!133841) (not e!173929))))

(declare-datatypes ((SeekEntryResult!1431 0))(
  ( (MissingZero!1431 (index!7894 (_ BitVec 32))) (Found!1431 (index!7895 (_ BitVec 32))) (Intermediate!1431 (undefined!2243 Bool) (index!7896 (_ BitVec 32)) (x!26212 (_ BitVec 32))) (Undefined!1431) (MissingVacant!1431 (index!7897 (_ BitVec 32))) )
))
(declare-fun lt!135297 () SeekEntryResult!1431)

(assert (=> b!269658 (= res!133841 (or (= lt!135297 (MissingZero!1431 i!1267)) (= lt!135297 (MissingVacant!1431 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13226 (_ BitVec 32)) SeekEntryResult!1431)

(assert (=> b!269658 (= lt!135297 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269659 () Bool)

(declare-fun res!133843 () Bool)

(assert (=> b!269659 (=> (not res!133843) (not e!173929))))

(assert (=> b!269659 (= res!133843 (= startIndex!26 i!1267))))

(declare-fun res!133844 () Bool)

(assert (=> start!26140 (=> (not res!133844) (not e!173930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26140 (= res!133844 (validMask!0 mask!3868))))

(assert (=> start!26140 e!173930))

(declare-fun array_inv!4216 (array!13226) Bool)

(assert (=> start!26140 (array_inv!4216 a!3325)))

(assert (=> start!26140 true))

(declare-fun b!269660 () Bool)

(declare-datatypes ((Unit!8367 0))(
  ( (Unit!8368) )
))
(declare-fun e!173932 () Unit!8367)

(declare-fun lt!135298 () Unit!8367)

(assert (=> b!269660 (= e!173932 lt!135298)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13226 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8367)

(assert (=> b!269660 (= lt!135298 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269660 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13227 (store (arr!6262 a!3325) i!1267 k!2581) (size!6614 a!3325)) mask!3868)))

(declare-fun b!269661 () Bool)

(declare-fun Unit!8369 () Unit!8367)

(assert (=> b!269661 (= e!173932 Unit!8369)))

(declare-fun b!269662 () Bool)

(declare-fun res!133845 () Bool)

(assert (=> b!269662 (=> (not res!133845) (not e!173930))))

(declare-fun arrayContainsKey!0 (array!13226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269662 (= res!133845 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269663 () Bool)

(assert (=> b!269663 (= e!173929 false)))

(declare-fun lt!135299 () Unit!8367)

(assert (=> b!269663 (= lt!135299 e!173932)))

(declare-fun c!45458 () Bool)

(assert (=> b!269663 (= c!45458 (bvslt startIndex!26 (bvsub (size!6614 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269664 () Bool)

(declare-fun res!133842 () Bool)

(assert (=> b!269664 (=> (not res!133842) (not e!173930))))

(declare-datatypes ((List!4091 0))(
  ( (Nil!4088) (Cons!4087 (h!4754 (_ BitVec 64)) (t!9181 List!4091)) )
))
(declare-fun arrayNoDuplicates!0 (array!13226 (_ BitVec 32) List!4091) Bool)

(assert (=> b!269664 (= res!133842 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4088))))

(assert (= (and start!26140 res!133844) b!269655))

(assert (= (and b!269655 res!133847) b!269657))

(assert (= (and b!269657 res!133848) b!269664))

(assert (= (and b!269664 res!133842) b!269662))

(assert (= (and b!269662 res!133845) b!269658))

(assert (= (and b!269658 res!133841) b!269656))

(assert (= (and b!269656 res!133846) b!269659))

(assert (= (and b!269659 res!133843) b!269663))

(assert (= (and b!269663 c!45458) b!269660))

(assert (= (and b!269663 (not c!45458)) b!269661))

(declare-fun m!285469 () Bool)

(assert (=> b!269660 m!285469))

(declare-fun m!285471 () Bool)

(assert (=> b!269660 m!285471))

(declare-fun m!285473 () Bool)

(assert (=> b!269660 m!285473))

(declare-fun m!285475 () Bool)

(assert (=> b!269658 m!285475))

(declare-fun m!285477 () Bool)

(assert (=> start!26140 m!285477))

(declare-fun m!285479 () Bool)

(assert (=> start!26140 m!285479))

(declare-fun m!285481 () Bool)

(assert (=> b!269656 m!285481))

(declare-fun m!285483 () Bool)

(assert (=> b!269657 m!285483))

(declare-fun m!285485 () Bool)

(assert (=> b!269662 m!285485))

(declare-fun m!285487 () Bool)

(assert (=> b!269664 m!285487))

(push 1)

