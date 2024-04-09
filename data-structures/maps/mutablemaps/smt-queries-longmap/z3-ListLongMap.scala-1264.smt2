; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26154 () Bool)

(assert start!26154)

(declare-fun b!269865 () Bool)

(declare-fun e!174031 () Bool)

(declare-fun e!174030 () Bool)

(assert (=> b!269865 (= e!174031 e!174030)))

(declare-fun res!134012 () Bool)

(assert (=> b!269865 (=> (not res!134012) (not e!174030))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269865 (= res!134012 (= startIndex!26 i!1267))))

(declare-datatypes ((array!13240 0))(
  ( (array!13241 (arr!6269 (Array (_ BitVec 32) (_ BitVec 64))) (size!6621 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13240)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!135391 () array!13240)

(assert (=> b!269865 (= lt!135391 (array!13241 (store (arr!6269 a!3325) i!1267 k0!2581) (size!6621 a!3325)))))

(declare-fun b!269866 () Bool)

(declare-fun res!134014 () Bool)

(declare-fun e!174029 () Bool)

(assert (=> b!269866 (=> (not res!134014) (not e!174029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269866 (= res!134014 (validKeyInArray!0 k0!2581))))

(declare-fun res!134016 () Bool)

(assert (=> start!26154 (=> (not res!134016) (not e!174029))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26154 (= res!134016 (validMask!0 mask!3868))))

(assert (=> start!26154 e!174029))

(declare-fun array_inv!4223 (array!13240) Bool)

(assert (=> start!26154 (array_inv!4223 a!3325)))

(assert (=> start!26154 true))

(declare-fun b!269867 () Bool)

(declare-datatypes ((Unit!8388 0))(
  ( (Unit!8389) )
))
(declare-fun e!174028 () Unit!8388)

(declare-fun Unit!8390 () Unit!8388)

(assert (=> b!269867 (= e!174028 Unit!8390)))

(declare-fun b!269868 () Bool)

(assert (=> b!269868 (= e!174030 (not (bvsge mask!3868 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!1438 0))(
  ( (MissingZero!1438 (index!7922 (_ BitVec 32))) (Found!1438 (index!7923 (_ BitVec 32))) (Intermediate!1438 (undefined!2250 Bool) (index!7924 (_ BitVec 32)) (x!26235 (_ BitVec 32))) (Undefined!1438) (MissingVacant!1438 (index!7925 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13240 (_ BitVec 32)) SeekEntryResult!1438)

(assert (=> b!269868 (= (seekEntryOrOpen!0 k0!2581 lt!135391 mask!3868) (Found!1438 i!1267))))

(declare-fun lt!135389 () Unit!8388)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13240 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8388)

(assert (=> b!269868 (= lt!135389 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135390 () Unit!8388)

(assert (=> b!269868 (= lt!135390 e!174028)))

(declare-fun c!45479 () Bool)

(assert (=> b!269868 (= c!45479 (bvslt startIndex!26 (bvsub (size!6621 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269869 () Bool)

(declare-fun res!134010 () Bool)

(assert (=> b!269869 (=> (not res!134010) (not e!174029))))

(declare-datatypes ((List!4098 0))(
  ( (Nil!4095) (Cons!4094 (h!4761 (_ BitVec 64)) (t!9188 List!4098)) )
))
(declare-fun arrayNoDuplicates!0 (array!13240 (_ BitVec 32) List!4098) Bool)

(assert (=> b!269869 (= res!134010 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4095))))

(declare-fun b!269870 () Bool)

(assert (=> b!269870 (= e!174029 e!174031)))

(declare-fun res!134015 () Bool)

(assert (=> b!269870 (=> (not res!134015) (not e!174031))))

(declare-fun lt!135388 () SeekEntryResult!1438)

(assert (=> b!269870 (= res!134015 (or (= lt!135388 (MissingZero!1438 i!1267)) (= lt!135388 (MissingVacant!1438 i!1267))))))

(assert (=> b!269870 (= lt!135388 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269871 () Bool)

(declare-fun res!134009 () Bool)

(assert (=> b!269871 (=> (not res!134009) (not e!174029))))

(declare-fun arrayContainsKey!0 (array!13240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269871 (= res!134009 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269872 () Bool)

(declare-fun lt!135392 () Unit!8388)

(assert (=> b!269872 (= e!174028 lt!135392)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13240 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8388)

(assert (=> b!269872 (= lt!135392 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13240 (_ BitVec 32)) Bool)

(assert (=> b!269872 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135391 mask!3868)))

(declare-fun b!269873 () Bool)

(declare-fun res!134011 () Bool)

(assert (=> b!269873 (=> (not res!134011) (not e!174031))))

(assert (=> b!269873 (= res!134011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269874 () Bool)

(declare-fun res!134013 () Bool)

(assert (=> b!269874 (=> (not res!134013) (not e!174029))))

(assert (=> b!269874 (= res!134013 (and (= (size!6621 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6621 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6621 a!3325))))))

(assert (= (and start!26154 res!134016) b!269874))

(assert (= (and b!269874 res!134013) b!269866))

(assert (= (and b!269866 res!134014) b!269869))

(assert (= (and b!269869 res!134010) b!269871))

(assert (= (and b!269871 res!134009) b!269870))

(assert (= (and b!269870 res!134015) b!269873))

(assert (= (and b!269873 res!134011) b!269865))

(assert (= (and b!269865 res!134012) b!269868))

(assert (= (and b!269868 c!45479) b!269872))

(assert (= (and b!269868 (not c!45479)) b!269867))

(declare-fun m!285625 () Bool)

(assert (=> b!269873 m!285625))

(declare-fun m!285627 () Bool)

(assert (=> b!269871 m!285627))

(declare-fun m!285629 () Bool)

(assert (=> b!269870 m!285629))

(declare-fun m!285631 () Bool)

(assert (=> b!269868 m!285631))

(declare-fun m!285633 () Bool)

(assert (=> b!269868 m!285633))

(declare-fun m!285635 () Bool)

(assert (=> b!269866 m!285635))

(declare-fun m!285637 () Bool)

(assert (=> b!269872 m!285637))

(declare-fun m!285639 () Bool)

(assert (=> b!269872 m!285639))

(declare-fun m!285641 () Bool)

(assert (=> start!26154 m!285641))

(declare-fun m!285643 () Bool)

(assert (=> start!26154 m!285643))

(declare-fun m!285645 () Bool)

(assert (=> b!269865 m!285645))

(declare-fun m!285647 () Bool)

(assert (=> b!269869 m!285647))

(check-sat (not b!269873) (not b!269869) (not b!269868) (not b!269866) (not b!269872) (not start!26154) (not b!269870) (not b!269871))
(check-sat)
