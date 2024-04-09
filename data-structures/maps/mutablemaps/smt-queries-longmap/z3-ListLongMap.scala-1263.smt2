; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26148 () Bool)

(assert start!26148)

(declare-fun b!269775 () Bool)

(declare-fun e!173986 () Bool)

(declare-fun e!173985 () Bool)

(assert (=> b!269775 (= e!173986 e!173985)))

(declare-fun res!133942 () Bool)

(assert (=> b!269775 (=> (not res!133942) (not e!173985))))

(declare-datatypes ((SeekEntryResult!1435 0))(
  ( (MissingZero!1435 (index!7910 (_ BitVec 32))) (Found!1435 (index!7911 (_ BitVec 32))) (Intermediate!1435 (undefined!2247 Bool) (index!7912 (_ BitVec 32)) (x!26224 (_ BitVec 32))) (Undefined!1435) (MissingVacant!1435 (index!7913 (_ BitVec 32))) )
))
(declare-fun lt!135345 () SeekEntryResult!1435)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269775 (= res!133942 (or (= lt!135345 (MissingZero!1435 i!1267)) (= lt!135345 (MissingVacant!1435 i!1267))))))

(declare-datatypes ((array!13234 0))(
  ( (array!13235 (arr!6266 (Array (_ BitVec 32) (_ BitVec 64))) (size!6618 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13234)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13234 (_ BitVec 32)) SeekEntryResult!1435)

(assert (=> b!269775 (= lt!135345 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269776 () Bool)

(declare-datatypes ((Unit!8379 0))(
  ( (Unit!8380) )
))
(declare-fun e!173982 () Unit!8379)

(declare-fun lt!135346 () Unit!8379)

(assert (=> b!269776 (= e!173982 lt!135346)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13234 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8379)

(assert (=> b!269776 (= lt!135346 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!135344 () array!13234)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13234 (_ BitVec 32)) Bool)

(assert (=> b!269776 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135344 mask!3868)))

(declare-fun b!269777 () Bool)

(declare-fun res!133939 () Bool)

(assert (=> b!269777 (=> (not res!133939) (not e!173986))))

(declare-fun arrayContainsKey!0 (array!13234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269777 (= res!133939 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133944 () Bool)

(assert (=> start!26148 (=> (not res!133944) (not e!173986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26148 (= res!133944 (validMask!0 mask!3868))))

(assert (=> start!26148 e!173986))

(declare-fun array_inv!4220 (array!13234) Bool)

(assert (=> start!26148 (array_inv!4220 a!3325)))

(assert (=> start!26148 true))

(declare-fun b!269778 () Bool)

(declare-fun res!133937 () Bool)

(assert (=> b!269778 (=> (not res!133937) (not e!173986))))

(assert (=> b!269778 (= res!133937 (and (= (size!6618 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6618 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6618 a!3325))))))

(declare-fun b!269779 () Bool)

(declare-fun e!173983 () Bool)

(assert (=> b!269779 (= e!173983 (not true))))

(assert (=> b!269779 (= (seekEntryOrOpen!0 k0!2581 lt!135344 mask!3868) (Found!1435 i!1267))))

(declare-fun lt!135347 () Unit!8379)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13234 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8379)

(assert (=> b!269779 (= lt!135347 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135343 () Unit!8379)

(assert (=> b!269779 (= lt!135343 e!173982)))

(declare-fun c!45470 () Bool)

(assert (=> b!269779 (= c!45470 (bvslt startIndex!26 (bvsub (size!6618 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269780 () Bool)

(declare-fun res!133941 () Bool)

(assert (=> b!269780 (=> (not res!133941) (not e!173986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269780 (= res!133941 (validKeyInArray!0 k0!2581))))

(declare-fun b!269781 () Bool)

(declare-fun res!133943 () Bool)

(assert (=> b!269781 (=> (not res!133943) (not e!173985))))

(assert (=> b!269781 (= res!133943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269782 () Bool)

(declare-fun res!133940 () Bool)

(assert (=> b!269782 (=> (not res!133940) (not e!173986))))

(declare-datatypes ((List!4095 0))(
  ( (Nil!4092) (Cons!4091 (h!4758 (_ BitVec 64)) (t!9185 List!4095)) )
))
(declare-fun arrayNoDuplicates!0 (array!13234 (_ BitVec 32) List!4095) Bool)

(assert (=> b!269782 (= res!133940 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4092))))

(declare-fun b!269783 () Bool)

(declare-fun Unit!8381 () Unit!8379)

(assert (=> b!269783 (= e!173982 Unit!8381)))

(declare-fun b!269784 () Bool)

(assert (=> b!269784 (= e!173985 e!173983)))

(declare-fun res!133938 () Bool)

(assert (=> b!269784 (=> (not res!133938) (not e!173983))))

(assert (=> b!269784 (= res!133938 (= startIndex!26 i!1267))))

(assert (=> b!269784 (= lt!135344 (array!13235 (store (arr!6266 a!3325) i!1267 k0!2581) (size!6618 a!3325)))))

(assert (= (and start!26148 res!133944) b!269778))

(assert (= (and b!269778 res!133937) b!269780))

(assert (= (and b!269780 res!133941) b!269782))

(assert (= (and b!269782 res!133940) b!269777))

(assert (= (and b!269777 res!133939) b!269775))

(assert (= (and b!269775 res!133942) b!269781))

(assert (= (and b!269781 res!133943) b!269784))

(assert (= (and b!269784 res!133938) b!269779))

(assert (= (and b!269779 c!45470) b!269776))

(assert (= (and b!269779 (not c!45470)) b!269783))

(declare-fun m!285553 () Bool)

(assert (=> start!26148 m!285553))

(declare-fun m!285555 () Bool)

(assert (=> start!26148 m!285555))

(declare-fun m!285557 () Bool)

(assert (=> b!269776 m!285557))

(declare-fun m!285559 () Bool)

(assert (=> b!269776 m!285559))

(declare-fun m!285561 () Bool)

(assert (=> b!269781 m!285561))

(declare-fun m!285563 () Bool)

(assert (=> b!269784 m!285563))

(declare-fun m!285565 () Bool)

(assert (=> b!269780 m!285565))

(declare-fun m!285567 () Bool)

(assert (=> b!269782 m!285567))

(declare-fun m!285569 () Bool)

(assert (=> b!269775 m!285569))

(declare-fun m!285571 () Bool)

(assert (=> b!269777 m!285571))

(declare-fun m!285573 () Bool)

(assert (=> b!269779 m!285573))

(declare-fun m!285575 () Bool)

(assert (=> b!269779 m!285575))

(check-sat (not b!269776) (not b!269777) (not b!269775) (not b!269780) (not b!269781) (not b!269782) (not start!26148) (not b!269779))
(check-sat)
