; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26458 () Bool)

(assert start!26458)

(declare-fun b!274452 () Bool)

(declare-fun e!175724 () Bool)

(declare-fun e!175722 () Bool)

(assert (=> b!274452 (= e!175724 (not e!175722))))

(declare-fun res!138484 () Bool)

(assert (=> b!274452 (=> res!138484 e!175722)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13544 0))(
  ( (array!13545 (arr!6421 (Array (_ BitVec 32) (_ BitVec 64))) (size!6773 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13544)

(assert (=> b!274452 (= res!138484 (or (bvsge startIndex!26 (bvsub (size!6773 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13544 (_ BitVec 32)) Bool)

(assert (=> b!274452 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8646 0))(
  ( (Unit!8647) )
))
(declare-fun lt!137006 () Unit!8646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8646)

(assert (=> b!274452 (= lt!137006 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!137007 () array!13544)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1590 0))(
  ( (MissingZero!1590 (index!8530 (_ BitVec 32))) (Found!1590 (index!8531 (_ BitVec 32))) (Intermediate!1590 (undefined!2402 Bool) (index!8532 (_ BitVec 32)) (x!26795 (_ BitVec 32))) (Undefined!1590) (MissingVacant!1590 (index!8533 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13544 (_ BitVec 32)) SeekEntryResult!1590)

(assert (=> b!274452 (= (seekEntryOrOpen!0 (select (arr!6421 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6421 a!3325) i!1267 k!2581) startIndex!26) lt!137007 mask!3868))))

(declare-fun lt!137004 () Unit!8646)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13544 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8646)

(assert (=> b!274452 (= lt!137004 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4250 0))(
  ( (Nil!4247) (Cons!4246 (h!4913 (_ BitVec 64)) (t!9340 List!4250)) )
))
(declare-fun arrayNoDuplicates!0 (array!13544 (_ BitVec 32) List!4250) Bool)

(assert (=> b!274452 (arrayNoDuplicates!0 lt!137007 #b00000000000000000000000000000000 Nil!4247)))

(declare-fun lt!137005 () Unit!8646)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4250) Unit!8646)

(assert (=> b!274452 (= lt!137005 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4247))))

(declare-fun b!274453 () Bool)

(declare-fun res!138489 () Bool)

(declare-fun e!175725 () Bool)

(assert (=> b!274453 (=> (not res!138489) (not e!175725))))

(assert (=> b!274453 (= res!138489 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4247))))

(declare-fun b!274454 () Bool)

(declare-fun res!138482 () Bool)

(assert (=> b!274454 (=> (not res!138482) (not e!175725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274454 (= res!138482 (validKeyInArray!0 k!2581))))

(declare-fun b!274455 () Bool)

(assert (=> b!274455 (= e!175722 (bvsle startIndex!26 (size!6773 a!3325)))))

(assert (=> b!274455 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!137007 mask!3868)))

(declare-fun lt!137008 () Unit!8646)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13544 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8646)

(assert (=> b!274455 (= lt!137008 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun res!138483 () Bool)

(assert (=> start!26458 (=> (not res!138483) (not e!175725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26458 (= res!138483 (validMask!0 mask!3868))))

(assert (=> start!26458 e!175725))

(declare-fun array_inv!4375 (array!13544) Bool)

(assert (=> start!26458 (array_inv!4375 a!3325)))

(assert (=> start!26458 true))

(declare-fun b!274456 () Bool)

(declare-fun e!175726 () Bool)

(assert (=> b!274456 (= e!175726 e!175724)))

(declare-fun res!138487 () Bool)

(assert (=> b!274456 (=> (not res!138487) (not e!175724))))

(assert (=> b!274456 (= res!138487 (not (= startIndex!26 i!1267)))))

(assert (=> b!274456 (= lt!137007 (array!13545 (store (arr!6421 a!3325) i!1267 k!2581) (size!6773 a!3325)))))

(declare-fun b!274457 () Bool)

(declare-fun res!138480 () Bool)

(assert (=> b!274457 (=> (not res!138480) (not e!175725))))

(assert (=> b!274457 (= res!138480 (and (= (size!6773 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6773 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6773 a!3325))))))

(declare-fun b!274458 () Bool)

(assert (=> b!274458 (= e!175725 e!175726)))

(declare-fun res!138485 () Bool)

(assert (=> b!274458 (=> (not res!138485) (not e!175726))))

(declare-fun lt!137009 () SeekEntryResult!1590)

(assert (=> b!274458 (= res!138485 (or (= lt!137009 (MissingZero!1590 i!1267)) (= lt!137009 (MissingVacant!1590 i!1267))))))

(assert (=> b!274458 (= lt!137009 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274459 () Bool)

(declare-fun res!138486 () Bool)

(assert (=> b!274459 (=> (not res!138486) (not e!175725))))

(declare-fun arrayContainsKey!0 (array!13544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274459 (= res!138486 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274460 () Bool)

(declare-fun res!138481 () Bool)

(assert (=> b!274460 (=> (not res!138481) (not e!175724))))

(assert (=> b!274460 (= res!138481 (validKeyInArray!0 (select (arr!6421 a!3325) startIndex!26)))))

(declare-fun b!274461 () Bool)

(declare-fun res!138488 () Bool)

(assert (=> b!274461 (=> (not res!138488) (not e!175726))))

(assert (=> b!274461 (= res!138488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26458 res!138483) b!274457))

(assert (= (and b!274457 res!138480) b!274454))

(assert (= (and b!274454 res!138482) b!274453))

(assert (= (and b!274453 res!138489) b!274459))

(assert (= (and b!274459 res!138486) b!274458))

(assert (= (and b!274458 res!138485) b!274461))

(assert (= (and b!274461 res!138488) b!274456))

(assert (= (and b!274456 res!138487) b!274460))

(assert (= (and b!274460 res!138481) b!274452))

(assert (= (and b!274452 (not res!138484)) b!274455))

(declare-fun m!290035 () Bool)

(assert (=> b!274458 m!290035))

(declare-fun m!290037 () Bool)

(assert (=> b!274459 m!290037))

(declare-fun m!290039 () Bool)

(assert (=> b!274454 m!290039))

(declare-fun m!290041 () Bool)

(assert (=> b!274453 m!290041))

(declare-fun m!290043 () Bool)

(assert (=> b!274455 m!290043))

(declare-fun m!290045 () Bool)

(assert (=> b!274455 m!290045))

(declare-fun m!290047 () Bool)

(assert (=> start!26458 m!290047))

(declare-fun m!290049 () Bool)

(assert (=> start!26458 m!290049))

(declare-fun m!290051 () Bool)

(assert (=> b!274456 m!290051))

(declare-fun m!290053 () Bool)

(assert (=> b!274452 m!290053))

(declare-fun m!290055 () Bool)

(assert (=> b!274452 m!290055))

(assert (=> b!274452 m!290055))

(declare-fun m!290057 () Bool)

(assert (=> b!274452 m!290057))

(assert (=> b!274452 m!290051))

(declare-fun m!290059 () Bool)

(assert (=> b!274452 m!290059))

(declare-fun m!290061 () Bool)

(assert (=> b!274452 m!290061))

(declare-fun m!290063 () Bool)

(assert (=> b!274452 m!290063))

(declare-fun m!290065 () Bool)

(assert (=> b!274452 m!290065))

(assert (=> b!274452 m!290061))

(declare-fun m!290067 () Bool)

(assert (=> b!274452 m!290067))

(declare-fun m!290069 () Bool)

(assert (=> b!274452 m!290069))

(assert (=> b!274460 m!290061))

(assert (=> b!274460 m!290061))

(declare-fun m!290071 () Bool)

(assert (=> b!274460 m!290071))

(declare-fun m!290073 () Bool)

(assert (=> b!274461 m!290073))

(push 1)

(assert (not b!274455))

(assert (not b!274452))

(assert (not b!274460))

(assert (not b!274454))

(assert (not start!26458))

(assert (not b!274461))

(assert (not b!274458))

(assert (not b!274459))

(assert (not b!274453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

