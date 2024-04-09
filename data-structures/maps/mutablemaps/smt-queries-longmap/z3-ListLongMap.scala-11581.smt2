; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135008 () Bool)

(assert start!135008)

(declare-fun res!1074296 () Bool)

(declare-fun e!876686 () Bool)

(assert (=> start!135008 (=> (not res!1074296) (not e!876686))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135008 (= res!1074296 (validMask!0 mask!889))))

(assert (=> start!135008 e!876686))

(assert (=> start!135008 true))

(declare-datatypes ((array!104967 0))(
  ( (array!104968 (arr!50645 (Array (_ BitVec 32) (_ BitVec 64))) (size!51196 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104967)

(declare-fun array_inv!39290 (array!104967) Bool)

(assert (=> start!135008 (array_inv!39290 _keys!600)))

(declare-fun b!1572192 () Bool)

(declare-fun res!1074295 () Bool)

(assert (=> b!1572192 (=> (not res!1074295) (not e!876686))))

(assert (=> b!1572192 (= res!1074295 (= (size!51196 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572193 () Bool)

(declare-fun res!1074294 () Bool)

(assert (=> b!1572193 (=> (not res!1074294) (not e!876686))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572193 (= res!1074294 (validKeyInArray!0 k0!754))))

(declare-fun b!1572194 () Bool)

(assert (=> b!1572194 (= e!876686 false)))

(declare-datatypes ((SeekEntryResult!13574 0))(
  ( (MissingZero!13574 (index!56693 (_ BitVec 32))) (Found!13574 (index!56694 (_ BitVec 32))) (Intermediate!13574 (undefined!14386 Bool) (index!56695 (_ BitVec 32)) (x!141473 (_ BitVec 32))) (Undefined!13574) (MissingVacant!13574 (index!56696 (_ BitVec 32))) )
))
(declare-fun lt!673867 () SeekEntryResult!13574)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104967 (_ BitVec 32)) SeekEntryResult!13574)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572194 (= lt!673867 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135008 res!1074296) b!1572192))

(assert (= (and b!1572192 res!1074295) b!1572193))

(assert (= (and b!1572193 res!1074294) b!1572194))

(declare-fun m!1445999 () Bool)

(assert (=> start!135008 m!1445999))

(declare-fun m!1446001 () Bool)

(assert (=> start!135008 m!1446001))

(declare-fun m!1446003 () Bool)

(assert (=> b!1572193 m!1446003))

(declare-fun m!1446005 () Bool)

(assert (=> b!1572194 m!1446005))

(assert (=> b!1572194 m!1446005))

(declare-fun m!1446007 () Bool)

(assert (=> b!1572194 m!1446007))

(check-sat (not b!1572193) (not start!135008) (not b!1572194))
(check-sat)
