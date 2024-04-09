; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135104 () Bool)

(assert start!135104)

(declare-fun res!1074516 () Bool)

(declare-fun e!876885 () Bool)

(assert (=> start!135104 (=> (not res!1074516) (not e!876885))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135104 (= res!1074516 (validMask!0 mask!889))))

(assert (=> start!135104 e!876885))

(assert (=> start!135104 true))

(declare-datatypes ((array!105009 0))(
  ( (array!105010 (arr!50663 (Array (_ BitVec 32) (_ BitVec 64))) (size!51214 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105009)

(declare-fun array_inv!39308 (array!105009) Bool)

(assert (=> start!135104 (array_inv!39308 _keys!600)))

(declare-fun b!1572516 () Bool)

(declare-fun res!1074518 () Bool)

(assert (=> b!1572516 (=> (not res!1074518) (not e!876885))))

(assert (=> b!1572516 (= res!1074518 (= (size!51214 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572517 () Bool)

(declare-fun res!1074517 () Bool)

(assert (=> b!1572517 (=> (not res!1074517) (not e!876885))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572517 (= res!1074517 (validKeyInArray!0 k0!754))))

(declare-fun b!1572518 () Bool)

(assert (=> b!1572518 (= e!876885 false)))

(declare-datatypes ((SeekEntryResult!13592 0))(
  ( (MissingZero!13592 (index!56765 (_ BitVec 32))) (Found!13592 (index!56766 (_ BitVec 32))) (Intermediate!13592 (undefined!14404 Bool) (index!56767 (_ BitVec 32)) (x!141551 (_ BitVec 32))) (Undefined!13592) (MissingVacant!13592 (index!56768 (_ BitVec 32))) )
))
(declare-fun lt!673993 () SeekEntryResult!13592)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105009 (_ BitVec 32)) SeekEntryResult!13592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572518 (= lt!673993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135104 res!1074516) b!1572516))

(assert (= (and b!1572516 res!1074518) b!1572517))

(assert (= (and b!1572517 res!1074517) b!1572518))

(declare-fun m!1446233 () Bool)

(assert (=> start!135104 m!1446233))

(declare-fun m!1446235 () Bool)

(assert (=> start!135104 m!1446235))

(declare-fun m!1446237 () Bool)

(assert (=> b!1572517 m!1446237))

(declare-fun m!1446239 () Bool)

(assert (=> b!1572518 m!1446239))

(assert (=> b!1572518 m!1446239))

(declare-fun m!1446241 () Bool)

(assert (=> b!1572518 m!1446241))

(check-sat (not b!1572518) (not start!135104) (not b!1572517))
(check-sat)
