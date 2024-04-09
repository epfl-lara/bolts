; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26314 () Bool)

(assert start!26314)

(declare-fun b!272479 () Bool)

(declare-fun res!136514 () Bool)

(declare-fun e!174863 () Bool)

(assert (=> b!272479 (=> (not res!136514) (not e!174863))))

(declare-datatypes ((array!13400 0))(
  ( (array!13401 (arr!6349 (Array (_ BitVec 32) (_ BitVec 64))) (size!6701 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13400)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272479 (= res!136514 (validKeyInArray!0 (select (arr!6349 a!3325) startIndex!26)))))

(declare-fun b!272480 () Bool)

(declare-fun res!136507 () Bool)

(assert (=> b!272480 (=> (not res!136507) (not e!174863))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13400 (_ BitVec 32)) Bool)

(assert (=> b!272480 (= res!136507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272481 () Bool)

(declare-fun res!136515 () Bool)

(declare-fun e!174864 () Bool)

(assert (=> b!272481 (=> (not res!136515) (not e!174864))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272481 (= res!136515 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!136512 () Bool)

(assert (=> start!26314 (=> (not res!136512) (not e!174864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26314 (= res!136512 (validMask!0 mask!3868))))

(assert (=> start!26314 e!174864))

(declare-fun array_inv!4303 (array!13400) Bool)

(assert (=> start!26314 (array_inv!4303 a!3325)))

(assert (=> start!26314 true))

(declare-fun b!272482 () Bool)

(declare-fun res!136513 () Bool)

(assert (=> b!272482 (=> (not res!136513) (not e!174863))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272482 (= res!136513 (not (= startIndex!26 i!1267)))))

(declare-fun b!272483 () Bool)

(declare-fun res!136509 () Bool)

(assert (=> b!272483 (=> (not res!136509) (not e!174864))))

(declare-datatypes ((List!4178 0))(
  ( (Nil!4175) (Cons!4174 (h!4841 (_ BitVec 64)) (t!9268 List!4178)) )
))
(declare-fun arrayNoDuplicates!0 (array!13400 (_ BitVec 32) List!4178) Bool)

(assert (=> b!272483 (= res!136509 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4175))))

(declare-fun b!272484 () Bool)

(assert (=> b!272484 (= e!174863 (not true))))

(assert (=> b!272484 (arrayNoDuplicates!0 (array!13401 (store (arr!6349 a!3325) i!1267 k!2581) (size!6701 a!3325)) #b00000000000000000000000000000000 Nil!4175)))

(declare-datatypes ((Unit!8502 0))(
  ( (Unit!8503) )
))
(declare-fun lt!136042 () Unit!8502)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13400 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4178) Unit!8502)

(assert (=> b!272484 (= lt!136042 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4175))))

(declare-fun b!272485 () Bool)

(declare-fun res!136508 () Bool)

(assert (=> b!272485 (=> (not res!136508) (not e!174864))))

(assert (=> b!272485 (= res!136508 (validKeyInArray!0 k!2581))))

(declare-fun b!272486 () Bool)

(assert (=> b!272486 (= e!174864 e!174863)))

(declare-fun res!136510 () Bool)

(assert (=> b!272486 (=> (not res!136510) (not e!174863))))

(declare-datatypes ((SeekEntryResult!1518 0))(
  ( (MissingZero!1518 (index!8242 (_ BitVec 32))) (Found!1518 (index!8243 (_ BitVec 32))) (Intermediate!1518 (undefined!2330 Bool) (index!8244 (_ BitVec 32)) (x!26531 (_ BitVec 32))) (Undefined!1518) (MissingVacant!1518 (index!8245 (_ BitVec 32))) )
))
(declare-fun lt!136043 () SeekEntryResult!1518)

(assert (=> b!272486 (= res!136510 (or (= lt!136043 (MissingZero!1518 i!1267)) (= lt!136043 (MissingVacant!1518 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13400 (_ BitVec 32)) SeekEntryResult!1518)

(assert (=> b!272486 (= lt!136043 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272487 () Bool)

(declare-fun res!136511 () Bool)

(assert (=> b!272487 (=> (not res!136511) (not e!174864))))

(assert (=> b!272487 (= res!136511 (and (= (size!6701 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6701 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6701 a!3325))))))

(assert (= (and start!26314 res!136512) b!272487))

(assert (= (and b!272487 res!136511) b!272485))

(assert (= (and b!272485 res!136508) b!272483))

(assert (= (and b!272483 res!136509) b!272481))

(assert (= (and b!272481 res!136515) b!272486))

(assert (= (and b!272486 res!136510) b!272480))

(assert (= (and b!272480 res!136507) b!272482))

(assert (= (and b!272482 res!136513) b!272479))

(assert (= (and b!272479 res!136514) b!272484))

(declare-fun m!287611 () Bool)

(assert (=> start!26314 m!287611))

(declare-fun m!287613 () Bool)

(assert (=> start!26314 m!287613))

(declare-fun m!287615 () Bool)

(assert (=> b!272479 m!287615))

(assert (=> b!272479 m!287615))

(declare-fun m!287617 () Bool)

(assert (=> b!272479 m!287617))

(declare-fun m!287619 () Bool)

(assert (=> b!272480 m!287619))

(declare-fun m!287621 () Bool)

(assert (=> b!272484 m!287621))

(declare-fun m!287623 () Bool)

(assert (=> b!272484 m!287623))

(declare-fun m!287625 () Bool)

(assert (=> b!272484 m!287625))

(declare-fun m!287627 () Bool)

(assert (=> b!272486 m!287627))

(declare-fun m!287629 () Bool)

(assert (=> b!272485 m!287629))

(declare-fun m!287631 () Bool)

(assert (=> b!272481 m!287631))

(declare-fun m!287633 () Bool)

(assert (=> b!272483 m!287633))

(push 1)

