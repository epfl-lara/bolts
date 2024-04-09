; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26166 () Bool)

(assert start!26166)

(declare-fun b!270045 () Bool)

(declare-fun res!134157 () Bool)

(declare-fun e!174120 () Bool)

(assert (=> b!270045 (=> (not res!134157) (not e!174120))))

(declare-datatypes ((array!13252 0))(
  ( (array!13253 (arr!6275 (Array (_ BitVec 32) (_ BitVec 64))) (size!6627 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13252)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13252 (_ BitVec 32)) Bool)

(assert (=> b!270045 (= res!134157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270046 () Bool)

(declare-fun res!134158 () Bool)

(declare-fun e!174121 () Bool)

(assert (=> b!270046 (=> (not res!134158) (not e!174121))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270046 (= res!134158 (validKeyInArray!0 k0!2581))))

(declare-fun b!270047 () Bool)

(declare-fun e!174119 () Bool)

(assert (=> b!270047 (= e!174120 e!174119)))

(declare-fun res!134159 () Bool)

(assert (=> b!270047 (=> (not res!134159) (not e!174119))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270047 (= res!134159 (= startIndex!26 i!1267))))

(declare-fun lt!135478 () array!13252)

(assert (=> b!270047 (= lt!135478 (array!13253 (store (arr!6275 a!3325) i!1267 k0!2581) (size!6627 a!3325)))))

(declare-fun b!270048 () Bool)

(assert (=> b!270048 (= e!174119 (not true))))

(declare-datatypes ((SeekEntryResult!1444 0))(
  ( (MissingZero!1444 (index!7946 (_ BitVec 32))) (Found!1444 (index!7947 (_ BitVec 32))) (Intermediate!1444 (undefined!2256 Bool) (index!7948 (_ BitVec 32)) (x!26257 (_ BitVec 32))) (Undefined!1444) (MissingVacant!1444 (index!7949 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13252 (_ BitVec 32)) SeekEntryResult!1444)

(assert (=> b!270048 (= (seekEntryOrOpen!0 k0!2581 lt!135478 mask!3868) (Found!1444 i!1267))))

(declare-datatypes ((Unit!8406 0))(
  ( (Unit!8407) )
))
(declare-fun lt!135479 () Unit!8406)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13252 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8406)

(assert (=> b!270048 (= lt!135479 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135481 () Unit!8406)

(declare-fun e!174117 () Unit!8406)

(assert (=> b!270048 (= lt!135481 e!174117)))

(declare-fun c!45497 () Bool)

(assert (=> b!270048 (= c!45497 (bvslt startIndex!26 (bvsub (size!6627 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270049 () Bool)

(assert (=> b!270049 (= e!174121 e!174120)))

(declare-fun res!134155 () Bool)

(assert (=> b!270049 (=> (not res!134155) (not e!174120))))

(declare-fun lt!135482 () SeekEntryResult!1444)

(assert (=> b!270049 (= res!134155 (or (= lt!135482 (MissingZero!1444 i!1267)) (= lt!135482 (MissingVacant!1444 i!1267))))))

(assert (=> b!270049 (= lt!135482 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270050 () Bool)

(declare-fun res!134156 () Bool)

(assert (=> b!270050 (=> (not res!134156) (not e!174121))))

(assert (=> b!270050 (= res!134156 (and (= (size!6627 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6627 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6627 a!3325))))))

(declare-fun b!270051 () Bool)

(declare-fun res!134160 () Bool)

(assert (=> b!270051 (=> (not res!134160) (not e!174121))))

(declare-datatypes ((List!4104 0))(
  ( (Nil!4101) (Cons!4100 (h!4767 (_ BitVec 64)) (t!9194 List!4104)) )
))
(declare-fun arrayNoDuplicates!0 (array!13252 (_ BitVec 32) List!4104) Bool)

(assert (=> b!270051 (= res!134160 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4101))))

(declare-fun b!270052 () Bool)

(declare-fun lt!135480 () Unit!8406)

(assert (=> b!270052 (= e!174117 lt!135480)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13252 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8406)

(assert (=> b!270052 (= lt!135480 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270052 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135478 mask!3868)))

(declare-fun res!134153 () Bool)

(assert (=> start!26166 (=> (not res!134153) (not e!174121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26166 (= res!134153 (validMask!0 mask!3868))))

(assert (=> start!26166 e!174121))

(declare-fun array_inv!4229 (array!13252) Bool)

(assert (=> start!26166 (array_inv!4229 a!3325)))

(assert (=> start!26166 true))

(declare-fun b!270053 () Bool)

(declare-fun Unit!8408 () Unit!8406)

(assert (=> b!270053 (= e!174117 Unit!8408)))

(declare-fun b!270054 () Bool)

(declare-fun res!134154 () Bool)

(assert (=> b!270054 (=> (not res!134154) (not e!174121))))

(declare-fun arrayContainsKey!0 (array!13252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270054 (= res!134154 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26166 res!134153) b!270050))

(assert (= (and b!270050 res!134156) b!270046))

(assert (= (and b!270046 res!134158) b!270051))

(assert (= (and b!270051 res!134160) b!270054))

(assert (= (and b!270054 res!134154) b!270049))

(assert (= (and b!270049 res!134155) b!270045))

(assert (= (and b!270045 res!134157) b!270047))

(assert (= (and b!270047 res!134159) b!270048))

(assert (= (and b!270048 c!45497) b!270052))

(assert (= (and b!270048 (not c!45497)) b!270053))

(declare-fun m!285769 () Bool)

(assert (=> start!26166 m!285769))

(declare-fun m!285771 () Bool)

(assert (=> start!26166 m!285771))

(declare-fun m!285773 () Bool)

(assert (=> b!270045 m!285773))

(declare-fun m!285775 () Bool)

(assert (=> b!270049 m!285775))

(declare-fun m!285777 () Bool)

(assert (=> b!270046 m!285777))

(declare-fun m!285779 () Bool)

(assert (=> b!270047 m!285779))

(declare-fun m!285781 () Bool)

(assert (=> b!270051 m!285781))

(declare-fun m!285783 () Bool)

(assert (=> b!270054 m!285783))

(declare-fun m!285785 () Bool)

(assert (=> b!270048 m!285785))

(declare-fun m!285787 () Bool)

(assert (=> b!270048 m!285787))

(declare-fun m!285789 () Bool)

(assert (=> b!270052 m!285789))

(declare-fun m!285791 () Bool)

(assert (=> b!270052 m!285791))

(check-sat (not b!270046) (not b!270045) (not b!270052) (not b!270048) (not b!270049) (not b!270051) (not b!270054) (not start!26166))
(check-sat)
