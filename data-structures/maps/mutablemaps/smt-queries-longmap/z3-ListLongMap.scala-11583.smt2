; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135020 () Bool)

(assert start!135020)

(declare-fun res!1074348 () Bool)

(declare-fun e!876723 () Bool)

(assert (=> start!135020 (=> (not res!1074348) (not e!876723))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135020 (= res!1074348 (validMask!0 mask!889))))

(assert (=> start!135020 e!876723))

(assert (=> start!135020 true))

(declare-datatypes ((array!104979 0))(
  ( (array!104980 (arr!50651 (Array (_ BitVec 32) (_ BitVec 64))) (size!51202 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104979)

(declare-fun array_inv!39296 (array!104979) Bool)

(assert (=> start!135020 (array_inv!39296 _keys!600)))

(declare-fun b!1572246 () Bool)

(declare-fun res!1074349 () Bool)

(assert (=> b!1572246 (=> (not res!1074349) (not e!876723))))

(assert (=> b!1572246 (= res!1074349 (= (size!51202 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572247 () Bool)

(declare-fun res!1074350 () Bool)

(assert (=> b!1572247 (=> (not res!1074350) (not e!876723))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572247 (= res!1074350 (validKeyInArray!0 k0!754))))

(declare-fun b!1572248 () Bool)

(assert (=> b!1572248 (= e!876723 false)))

(declare-datatypes ((SeekEntryResult!13580 0))(
  ( (MissingZero!13580 (index!56717 (_ BitVec 32))) (Found!13580 (index!56718 (_ BitVec 32))) (Intermediate!13580 (undefined!14392 Bool) (index!56719 (_ BitVec 32)) (x!141495 (_ BitVec 32))) (Undefined!13580) (MissingVacant!13580 (index!56720 (_ BitVec 32))) )
))
(declare-fun lt!673885 () SeekEntryResult!13580)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104979 (_ BitVec 32)) SeekEntryResult!13580)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572248 (= lt!673885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135020 res!1074348) b!1572246))

(assert (= (and b!1572246 res!1074349) b!1572247))

(assert (= (and b!1572247 res!1074350) b!1572248))

(declare-fun m!1446059 () Bool)

(assert (=> start!135020 m!1446059))

(declare-fun m!1446061 () Bool)

(assert (=> start!135020 m!1446061))

(declare-fun m!1446063 () Bool)

(assert (=> b!1572247 m!1446063))

(declare-fun m!1446065 () Bool)

(assert (=> b!1572248 m!1446065))

(assert (=> b!1572248 m!1446065))

(declare-fun m!1446067 () Bool)

(assert (=> b!1572248 m!1446067))

(check-sat (not b!1572247) (not start!135020) (not b!1572248))
