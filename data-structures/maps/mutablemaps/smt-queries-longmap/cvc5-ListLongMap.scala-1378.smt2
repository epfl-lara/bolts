; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27130 () Bool)

(assert start!27130)

(declare-fun b!280402 () Bool)

(declare-fun res!143516 () Bool)

(declare-fun e!178523 () Bool)

(assert (=> b!280402 (=> (not res!143516) (not e!178523))))

(declare-datatypes ((array!13937 0))(
  ( (array!13938 (arr!6610 (Array (_ BitVec 32) (_ BitVec 64))) (size!6962 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13937)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280402 (= res!143516 (and (= (size!6962 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6962 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6962 a!3325))))))

(declare-fun b!280403 () Bool)

(declare-fun e!178525 () Bool)

(assert (=> b!280403 (= e!178523 e!178525)))

(declare-fun res!143511 () Bool)

(assert (=> b!280403 (=> (not res!143511) (not e!178525))))

(declare-datatypes ((SeekEntryResult!1779 0))(
  ( (MissingZero!1779 (index!9286 (_ BitVec 32))) (Found!1779 (index!9287 (_ BitVec 32))) (Intermediate!1779 (undefined!2591 Bool) (index!9288 (_ BitVec 32)) (x!27497 (_ BitVec 32))) (Undefined!1779) (MissingVacant!1779 (index!9289 (_ BitVec 32))) )
))
(declare-fun lt!138850 () SeekEntryResult!1779)

(assert (=> b!280403 (= res!143511 (or (= lt!138850 (MissingZero!1779 i!1267)) (= lt!138850 (MissingVacant!1779 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13937 (_ BitVec 32)) SeekEntryResult!1779)

(assert (=> b!280403 (= lt!138850 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280404 () Bool)

(declare-fun res!143510 () Bool)

(assert (=> b!280404 (=> (not res!143510) (not e!178525))))

(assert (=> b!280404 (= res!143510 (not (= startIndex!26 i!1267)))))

(declare-fun b!280405 () Bool)

(declare-fun res!143515 () Bool)

(assert (=> b!280405 (=> (not res!143515) (not e!178525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13937 (_ BitVec 32)) Bool)

(assert (=> b!280405 (= res!143515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280406 () Bool)

(declare-fun res!143514 () Bool)

(assert (=> b!280406 (=> (not res!143514) (not e!178523))))

(declare-datatypes ((List!4439 0))(
  ( (Nil!4436) (Cons!4435 (h!5105 (_ BitVec 64)) (t!9529 List!4439)) )
))
(declare-fun arrayNoDuplicates!0 (array!13937 (_ BitVec 32) List!4439) Bool)

(assert (=> b!280406 (= res!143514 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4436))))

(declare-fun b!280407 () Bool)

(declare-fun res!143513 () Bool)

(assert (=> b!280407 (=> (not res!143513) (not e!178523))))

(declare-fun arrayContainsKey!0 (array!13937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280407 (= res!143513 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280408 () Bool)

(declare-fun res!143517 () Bool)

(assert (=> b!280408 (=> (not res!143517) (not e!178523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280408 (= res!143517 (validKeyInArray!0 k!2581))))

(declare-fun res!143512 () Bool)

(assert (=> start!27130 (=> (not res!143512) (not e!178523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27130 (= res!143512 (validMask!0 mask!3868))))

(assert (=> start!27130 e!178523))

(declare-fun array_inv!4564 (array!13937) Bool)

(assert (=> start!27130 (array_inv!4564 a!3325)))

(assert (=> start!27130 true))

(declare-fun b!280409 () Bool)

(assert (=> b!280409 (= e!178525 (not true))))

(assert (=> b!280409 (arrayNoDuplicates!0 (array!13938 (store (arr!6610 a!3325) i!1267 k!2581) (size!6962 a!3325)) #b00000000000000000000000000000000 Nil!4436)))

(declare-datatypes ((Unit!8821 0))(
  ( (Unit!8822) )
))
(declare-fun lt!138851 () Unit!8821)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13937 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4439) Unit!8821)

(assert (=> b!280409 (= lt!138851 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4436))))

(declare-fun b!280410 () Bool)

(declare-fun res!143509 () Bool)

(assert (=> b!280410 (=> (not res!143509) (not e!178525))))

(assert (=> b!280410 (= res!143509 (validKeyInArray!0 (select (arr!6610 a!3325) startIndex!26)))))

(assert (= (and start!27130 res!143512) b!280402))

(assert (= (and b!280402 res!143516) b!280408))

(assert (= (and b!280408 res!143517) b!280406))

(assert (= (and b!280406 res!143514) b!280407))

(assert (= (and b!280407 res!143513) b!280403))

(assert (= (and b!280403 res!143511) b!280405))

(assert (= (and b!280405 res!143515) b!280404))

(assert (= (and b!280404 res!143510) b!280410))

(assert (= (and b!280410 res!143509) b!280409))

(declare-fun m!294877 () Bool)

(assert (=> b!280409 m!294877))

(declare-fun m!294879 () Bool)

(assert (=> b!280409 m!294879))

(declare-fun m!294881 () Bool)

(assert (=> b!280409 m!294881))

(declare-fun m!294883 () Bool)

(assert (=> start!27130 m!294883))

(declare-fun m!294885 () Bool)

(assert (=> start!27130 m!294885))

(declare-fun m!294887 () Bool)

(assert (=> b!280408 m!294887))

(declare-fun m!294889 () Bool)

(assert (=> b!280405 m!294889))

(declare-fun m!294891 () Bool)

(assert (=> b!280410 m!294891))

(assert (=> b!280410 m!294891))

(declare-fun m!294893 () Bool)

(assert (=> b!280410 m!294893))

(declare-fun m!294895 () Bool)

(assert (=> b!280407 m!294895))

(declare-fun m!294897 () Bool)

(assert (=> b!280406 m!294897))

(declare-fun m!294899 () Bool)

(assert (=> b!280403 m!294899))

(push 1)

