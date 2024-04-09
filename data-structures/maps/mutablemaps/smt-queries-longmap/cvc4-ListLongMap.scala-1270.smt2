; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26192 () Bool)

(assert start!26192)

(declare-fun b!270436 () Bool)

(declare-datatypes ((Unit!8445 0))(
  ( (Unit!8446) )
))
(declare-fun e!174315 () Unit!8445)

(declare-fun Unit!8447 () Unit!8445)

(assert (=> b!270436 (= e!174315 Unit!8447)))

(declare-fun b!270437 () Bool)

(declare-fun res!134465 () Bool)

(declare-fun e!174313 () Bool)

(assert (=> b!270437 (=> (not res!134465) (not e!174313))))

(declare-datatypes ((array!13278 0))(
  ( (array!13279 (arr!6288 (Array (_ BitVec 32) (_ BitVec 64))) (size!6640 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13278)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270437 (= res!134465 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270438 () Bool)

(declare-fun res!134468 () Bool)

(declare-fun e!174314 () Bool)

(assert (=> b!270438 (=> (not res!134468) (not e!174314))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13278 (_ BitVec 32)) Bool)

(assert (=> b!270438 (= res!134468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270439 () Bool)

(declare-fun e!174312 () Bool)

(assert (=> b!270439 (= e!174314 e!174312)))

(declare-fun res!134471 () Bool)

(assert (=> b!270439 (=> (not res!134471) (not e!174312))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270439 (= res!134471 (= startIndex!26 i!1267))))

(declare-fun lt!135673 () array!13278)

(assert (=> b!270439 (= lt!135673 (array!13279 (store (arr!6288 a!3325) i!1267 k!2581) (size!6640 a!3325)))))

(declare-fun b!270440 () Bool)

(declare-fun res!134466 () Bool)

(assert (=> b!270440 (=> (not res!134466) (not e!174313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270440 (= res!134466 (validKeyInArray!0 k!2581))))

(declare-fun b!270435 () Bool)

(declare-fun res!134469 () Bool)

(assert (=> b!270435 (=> (not res!134469) (not e!174313))))

(declare-datatypes ((List!4117 0))(
  ( (Nil!4114) (Cons!4113 (h!4780 (_ BitVec 64)) (t!9207 List!4117)) )
))
(declare-fun arrayNoDuplicates!0 (array!13278 (_ BitVec 32) List!4117) Bool)

(assert (=> b!270435 (= res!134469 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4114))))

(declare-fun res!134467 () Bool)

(assert (=> start!26192 (=> (not res!134467) (not e!174313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26192 (= res!134467 (validMask!0 mask!3868))))

(assert (=> start!26192 e!174313))

(declare-fun array_inv!4242 (array!13278) Bool)

(assert (=> start!26192 (array_inv!4242 a!3325)))

(assert (=> start!26192 true))

(declare-fun b!270441 () Bool)

(declare-fun lt!135674 () Unit!8445)

(assert (=> b!270441 (= e!174315 lt!135674)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13278 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8445)

(assert (=> b!270441 (= lt!135674 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270441 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135673 mask!3868)))

(declare-fun b!270442 () Bool)

(declare-fun res!134470 () Bool)

(assert (=> b!270442 (=> (not res!134470) (not e!174313))))

(assert (=> b!270442 (= res!134470 (and (= (size!6640 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6640 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6640 a!3325))))))

(declare-fun b!270443 () Bool)

(assert (=> b!270443 (= e!174312 (not (bvsle startIndex!26 (size!6640 a!3325))))))

(declare-datatypes ((SeekEntryResult!1457 0))(
  ( (MissingZero!1457 (index!7998 (_ BitVec 32))) (Found!1457 (index!7999 (_ BitVec 32))) (Intermediate!1457 (undefined!2269 Bool) (index!8000 (_ BitVec 32)) (x!26302 (_ BitVec 32))) (Undefined!1457) (MissingVacant!1457 (index!8001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13278 (_ BitVec 32)) SeekEntryResult!1457)

(assert (=> b!270443 (= (seekEntryOrOpen!0 k!2581 lt!135673 mask!3868) (Found!1457 i!1267))))

(declare-fun lt!135676 () Unit!8445)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13278 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8445)

(assert (=> b!270443 (= lt!135676 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135677 () Unit!8445)

(assert (=> b!270443 (= lt!135677 e!174315)))

(declare-fun c!45536 () Bool)

(assert (=> b!270443 (= c!45536 (bvslt startIndex!26 (bvsub (size!6640 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270444 () Bool)

(assert (=> b!270444 (= e!174313 e!174314)))

(declare-fun res!134472 () Bool)

(assert (=> b!270444 (=> (not res!134472) (not e!174314))))

(declare-fun lt!135675 () SeekEntryResult!1457)

(assert (=> b!270444 (= res!134472 (or (= lt!135675 (MissingZero!1457 i!1267)) (= lt!135675 (MissingVacant!1457 i!1267))))))

(assert (=> b!270444 (= lt!135675 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26192 res!134467) b!270442))

(assert (= (and b!270442 res!134470) b!270440))

(assert (= (and b!270440 res!134466) b!270435))

(assert (= (and b!270435 res!134469) b!270437))

(assert (= (and b!270437 res!134465) b!270444))

(assert (= (and b!270444 res!134472) b!270438))

(assert (= (and b!270438 res!134468) b!270439))

(assert (= (and b!270439 res!134471) b!270443))

(assert (= (and b!270443 c!45536) b!270441))

(assert (= (and b!270443 (not c!45536)) b!270436))

(declare-fun m!286081 () Bool)

(assert (=> b!270444 m!286081))

(declare-fun m!286083 () Bool)

(assert (=> b!270439 m!286083))

(declare-fun m!286085 () Bool)

(assert (=> b!270441 m!286085))

(declare-fun m!286087 () Bool)

(assert (=> b!270441 m!286087))

(declare-fun m!286089 () Bool)

(assert (=> b!270440 m!286089))

(declare-fun m!286091 () Bool)

(assert (=> b!270437 m!286091))

(declare-fun m!286093 () Bool)

(assert (=> b!270438 m!286093))

(declare-fun m!286095 () Bool)

(assert (=> start!26192 m!286095))

(declare-fun m!286097 () Bool)

(assert (=> start!26192 m!286097))

(declare-fun m!286099 () Bool)

(assert (=> b!270435 m!286099))

(declare-fun m!286101 () Bool)

(assert (=> b!270443 m!286101))

(declare-fun m!286103 () Bool)

(assert (=> b!270443 m!286103))

(push 1)

(assert (not b!270440))

(assert (not b!270438))

(assert (not b!270437))

(assert (not b!270441))

(assert (not b!270444))

(assert (not b!270435))

(assert (not start!26192))

(assert (not b!270443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

