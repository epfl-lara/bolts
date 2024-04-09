; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135926 () Bool)

(assert start!135926)

(declare-fun res!1076522 () Bool)

(declare-fun e!878657 () Bool)

(assert (=> start!135926 (=> (not res!1076522) (not e!878657))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135926 (= res!1076522 (validMask!0 mask!898))))

(assert (=> start!135926 e!878657))

(assert (=> start!135926 true))

(declare-datatypes ((array!105390 0))(
  ( (array!105391 (arr!50828 (Array (_ BitVec 32) (_ BitVec 64))) (size!51379 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105390)

(declare-fun array_inv!39473 (array!105390) Bool)

(assert (=> start!135926 (array_inv!39473 _keys!605)))

(declare-fun b!1575342 () Bool)

(declare-fun res!1076520 () Bool)

(assert (=> b!1575342 (=> (not res!1076520) (not e!878657))))

(assert (=> b!1575342 (= res!1076520 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51379 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575343 () Bool)

(declare-fun res!1076521 () Bool)

(assert (=> b!1575343 (=> (not res!1076521) (not e!878657))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575343 (= res!1076521 (validKeyInArray!0 k0!761))))

(declare-fun b!1575344 () Bool)

(assert (=> b!1575344 (= e!878657 false)))

(declare-datatypes ((SeekEntryResult!13709 0))(
  ( (MissingZero!13709 (index!57233 (_ BitVec 32))) (Found!13709 (index!57234 (_ BitVec 32))) (Intermediate!13709 (undefined!14521 Bool) (index!57235 (_ BitVec 32)) (x!142198 (_ BitVec 32))) (Undefined!13709) (MissingVacant!13709 (index!57236 (_ BitVec 32))) )
))
(declare-fun lt!675127 () SeekEntryResult!13709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105390 (_ BitVec 32)) SeekEntryResult!13709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575344 (= lt!675127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135926 res!1076522) b!1575342))

(assert (= (and b!1575342 res!1076520) b!1575343))

(assert (= (and b!1575343 res!1076521) b!1575344))

(declare-fun m!1448411 () Bool)

(assert (=> start!135926 m!1448411))

(declare-fun m!1448413 () Bool)

(assert (=> start!135926 m!1448413))

(declare-fun m!1448415 () Bool)

(assert (=> b!1575343 m!1448415))

(declare-fun m!1448417 () Bool)

(assert (=> b!1575344 m!1448417))

(assert (=> b!1575344 m!1448417))

(declare-fun m!1448419 () Bool)

(assert (=> b!1575344 m!1448419))

(check-sat (not start!135926) (not b!1575343) (not b!1575344))
