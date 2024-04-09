; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26740 () Bool)

(assert start!26740)

(declare-fun b!277584 () Bool)

(declare-fun res!141487 () Bool)

(declare-fun e!177107 () Bool)

(assert (=> b!277584 (=> (not res!141487) (not e!177107))))

(declare-datatypes ((array!13826 0))(
  ( (array!13827 (arr!6562 (Array (_ BitVec 32) (_ BitVec 64))) (size!6914 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13826)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13826 (_ BitVec 32)) Bool)

(assert (=> b!277584 (= res!141487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277585 () Bool)

(assert (=> b!277585 (= e!177107 false)))

(declare-datatypes ((Unit!8763 0))(
  ( (Unit!8764) )
))
(declare-fun lt!138016 () Unit!8763)

(declare-fun e!177106 () Unit!8763)

(assert (=> b!277585 (= lt!138016 e!177106)))

(declare-fun c!45602 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277585 (= c!45602 (bvslt startIndex!26 (bvsub (size!6914 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277586 () Bool)

(declare-fun res!141489 () Bool)

(assert (=> b!277586 (=> (not res!141489) (not e!177107))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277586 (= res!141489 (= startIndex!26 i!1267))))

(declare-fun b!277587 () Bool)

(declare-fun Unit!8765 () Unit!8763)

(assert (=> b!277587 (= e!177106 Unit!8765)))

(declare-fun b!277588 () Bool)

(declare-fun res!141486 () Bool)

(declare-fun e!177108 () Bool)

(assert (=> b!277588 (=> (not res!141486) (not e!177108))))

(declare-datatypes ((List!4391 0))(
  ( (Nil!4388) (Cons!4387 (h!5054 (_ BitVec 64)) (t!9481 List!4391)) )
))
(declare-fun arrayNoDuplicates!0 (array!13826 (_ BitVec 32) List!4391) Bool)

(assert (=> b!277588 (= res!141486 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4388))))

(declare-fun b!277590 () Bool)

(declare-fun res!141488 () Bool)

(assert (=> b!277590 (=> (not res!141488) (not e!177108))))

(assert (=> b!277590 (= res!141488 (and (= (size!6914 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6914 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6914 a!3325))))))

(declare-fun b!277591 () Bool)

(declare-fun res!141483 () Bool)

(assert (=> b!277591 (=> (not res!141483) (not e!177108))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277591 (= res!141483 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277592 () Bool)

(declare-fun res!141484 () Bool)

(assert (=> b!277592 (=> (not res!141484) (not e!177108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277592 (= res!141484 (validKeyInArray!0 k!2581))))

(declare-fun b!277593 () Bool)

(assert (=> b!277593 (= e!177108 e!177107)))

(declare-fun res!141482 () Bool)

(assert (=> b!277593 (=> (not res!141482) (not e!177107))))

(declare-datatypes ((SeekEntryResult!1731 0))(
  ( (MissingZero!1731 (index!9094 (_ BitVec 32))) (Found!1731 (index!9095 (_ BitVec 32))) (Intermediate!1731 (undefined!2543 Bool) (index!9096 (_ BitVec 32)) (x!27312 (_ BitVec 32))) (Undefined!1731) (MissingVacant!1731 (index!9097 (_ BitVec 32))) )
))
(declare-fun lt!138015 () SeekEntryResult!1731)

(assert (=> b!277593 (= res!141482 (or (= lt!138015 (MissingZero!1731 i!1267)) (= lt!138015 (MissingVacant!1731 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13826 (_ BitVec 32)) SeekEntryResult!1731)

(assert (=> b!277593 (= lt!138015 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!141485 () Bool)

(assert (=> start!26740 (=> (not res!141485) (not e!177108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26740 (= res!141485 (validMask!0 mask!3868))))

(assert (=> start!26740 e!177108))

(declare-fun array_inv!4516 (array!13826) Bool)

(assert (=> start!26740 (array_inv!4516 a!3325)))

(assert (=> start!26740 true))

(declare-fun b!277589 () Bool)

(declare-fun lt!138017 () Unit!8763)

(assert (=> b!277589 (= e!177106 lt!138017)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13826 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8763)

(assert (=> b!277589 (= lt!138017 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277589 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13827 (store (arr!6562 a!3325) i!1267 k!2581) (size!6914 a!3325)) mask!3868)))

(assert (= (and start!26740 res!141485) b!277590))

(assert (= (and b!277590 res!141488) b!277592))

(assert (= (and b!277592 res!141484) b!277588))

(assert (= (and b!277588 res!141486) b!277591))

(assert (= (and b!277591 res!141483) b!277593))

(assert (= (and b!277593 res!141482) b!277584))

(assert (= (and b!277584 res!141487) b!277586))

(assert (= (and b!277586 res!141489) b!277585))

(assert (= (and b!277585 c!45602) b!277589))

(assert (= (and b!277585 (not c!45602)) b!277587))

(declare-fun m!292609 () Bool)

(assert (=> b!277589 m!292609))

(declare-fun m!292611 () Bool)

(assert (=> b!277589 m!292611))

(declare-fun m!292613 () Bool)

(assert (=> b!277589 m!292613))

(declare-fun m!292615 () Bool)

(assert (=> b!277588 m!292615))

(declare-fun m!292617 () Bool)

(assert (=> b!277592 m!292617))

(declare-fun m!292619 () Bool)

(assert (=> start!26740 m!292619))

(declare-fun m!292621 () Bool)

(assert (=> start!26740 m!292621))

(declare-fun m!292623 () Bool)

(assert (=> b!277593 m!292623))

(declare-fun m!292625 () Bool)

(assert (=> b!277584 m!292625))

(declare-fun m!292627 () Bool)

(assert (=> b!277591 m!292627))

(push 1)

