; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26316 () Bool)

(assert start!26316)

(declare-fun b!272506 () Bool)

(declare-fun e!174874 () Bool)

(assert (=> b!272506 (= e!174874 (not true))))

(declare-datatypes ((array!13402 0))(
  ( (array!13403 (arr!6350 (Array (_ BitVec 32) (_ BitVec 64))) (size!6702 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13402)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4179 0))(
  ( (Nil!4176) (Cons!4175 (h!4842 (_ BitVec 64)) (t!9269 List!4179)) )
))
(declare-fun arrayNoDuplicates!0 (array!13402 (_ BitVec 32) List!4179) Bool)

(assert (=> b!272506 (arrayNoDuplicates!0 (array!13403 (store (arr!6350 a!3325) i!1267 k0!2581) (size!6702 a!3325)) #b00000000000000000000000000000000 Nil!4176)))

(declare-datatypes ((Unit!8504 0))(
  ( (Unit!8505) )
))
(declare-fun lt!136048 () Unit!8504)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13402 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4179) Unit!8504)

(assert (=> b!272506 (= lt!136048 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4176))))

(declare-fun res!136542 () Bool)

(declare-fun e!174873 () Bool)

(assert (=> start!26316 (=> (not res!136542) (not e!174873))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26316 (= res!136542 (validMask!0 mask!3868))))

(assert (=> start!26316 e!174873))

(declare-fun array_inv!4304 (array!13402) Bool)

(assert (=> start!26316 (array_inv!4304 a!3325)))

(assert (=> start!26316 true))

(declare-fun b!272507 () Bool)

(declare-fun res!136537 () Bool)

(assert (=> b!272507 (=> (not res!136537) (not e!174874))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272507 (= res!136537 (not (= startIndex!26 i!1267)))))

(declare-fun b!272508 () Bool)

(assert (=> b!272508 (= e!174873 e!174874)))

(declare-fun res!136538 () Bool)

(assert (=> b!272508 (=> (not res!136538) (not e!174874))))

(declare-datatypes ((SeekEntryResult!1519 0))(
  ( (MissingZero!1519 (index!8246 (_ BitVec 32))) (Found!1519 (index!8247 (_ BitVec 32))) (Intermediate!1519 (undefined!2331 Bool) (index!8248 (_ BitVec 32)) (x!26532 (_ BitVec 32))) (Undefined!1519) (MissingVacant!1519 (index!8249 (_ BitVec 32))) )
))
(declare-fun lt!136049 () SeekEntryResult!1519)

(assert (=> b!272508 (= res!136538 (or (= lt!136049 (MissingZero!1519 i!1267)) (= lt!136049 (MissingVacant!1519 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13402 (_ BitVec 32)) SeekEntryResult!1519)

(assert (=> b!272508 (= lt!136049 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272509 () Bool)

(declare-fun res!136535 () Bool)

(assert (=> b!272509 (=> (not res!136535) (not e!174874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272509 (= res!136535 (validKeyInArray!0 (select (arr!6350 a!3325) startIndex!26)))))

(declare-fun b!272510 () Bool)

(declare-fun res!136534 () Bool)

(assert (=> b!272510 (=> (not res!136534) (not e!174873))))

(assert (=> b!272510 (= res!136534 (and (= (size!6702 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6702 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6702 a!3325))))))

(declare-fun b!272511 () Bool)

(declare-fun res!136536 () Bool)

(assert (=> b!272511 (=> (not res!136536) (not e!174873))))

(assert (=> b!272511 (= res!136536 (validKeyInArray!0 k0!2581))))

(declare-fun b!272512 () Bool)

(declare-fun res!136541 () Bool)

(assert (=> b!272512 (=> (not res!136541) (not e!174873))))

(declare-fun arrayContainsKey!0 (array!13402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272512 (= res!136541 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272513 () Bool)

(declare-fun res!136539 () Bool)

(assert (=> b!272513 (=> (not res!136539) (not e!174874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13402 (_ BitVec 32)) Bool)

(assert (=> b!272513 (= res!136539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272514 () Bool)

(declare-fun res!136540 () Bool)

(assert (=> b!272514 (=> (not res!136540) (not e!174873))))

(assert (=> b!272514 (= res!136540 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4176))))

(assert (= (and start!26316 res!136542) b!272510))

(assert (= (and b!272510 res!136534) b!272511))

(assert (= (and b!272511 res!136536) b!272514))

(assert (= (and b!272514 res!136540) b!272512))

(assert (= (and b!272512 res!136541) b!272508))

(assert (= (and b!272508 res!136538) b!272513))

(assert (= (and b!272513 res!136539) b!272507))

(assert (= (and b!272507 res!136537) b!272509))

(assert (= (and b!272509 res!136535) b!272506))

(declare-fun m!287635 () Bool)

(assert (=> b!272513 m!287635))

(declare-fun m!287637 () Bool)

(assert (=> b!272512 m!287637))

(declare-fun m!287639 () Bool)

(assert (=> b!272509 m!287639))

(assert (=> b!272509 m!287639))

(declare-fun m!287641 () Bool)

(assert (=> b!272509 m!287641))

(declare-fun m!287643 () Bool)

(assert (=> b!272511 m!287643))

(declare-fun m!287645 () Bool)

(assert (=> b!272514 m!287645))

(declare-fun m!287647 () Bool)

(assert (=> b!272508 m!287647))

(declare-fun m!287649 () Bool)

(assert (=> b!272506 m!287649))

(declare-fun m!287651 () Bool)

(assert (=> b!272506 m!287651))

(declare-fun m!287653 () Bool)

(assert (=> b!272506 m!287653))

(declare-fun m!287655 () Bool)

(assert (=> start!26316 m!287655))

(declare-fun m!287657 () Bool)

(assert (=> start!26316 m!287657))

(check-sat (not b!272506) (not b!272514) (not b!272508) (not b!272511) (not b!272512) (not start!26316) (not b!272513) (not b!272509))
(check-sat)
