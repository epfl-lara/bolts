; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135014 () Bool)

(assert start!135014)

(declare-fun res!1074322 () Bool)

(declare-fun e!876705 () Bool)

(assert (=> start!135014 (=> (not res!1074322) (not e!876705))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135014 (= res!1074322 (validMask!0 mask!889))))

(assert (=> start!135014 e!876705))

(assert (=> start!135014 true))

(declare-datatypes ((array!104973 0))(
  ( (array!104974 (arr!50648 (Array (_ BitVec 32) (_ BitVec 64))) (size!51199 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104973)

(declare-fun array_inv!39293 (array!104973) Bool)

(assert (=> start!135014 (array_inv!39293 _keys!600)))

(declare-fun b!1572219 () Bool)

(declare-fun res!1074323 () Bool)

(assert (=> b!1572219 (=> (not res!1074323) (not e!876705))))

(assert (=> b!1572219 (= res!1074323 (= (size!51199 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572220 () Bool)

(declare-fun res!1074321 () Bool)

(assert (=> b!1572220 (=> (not res!1074321) (not e!876705))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572220 (= res!1074321 (validKeyInArray!0 k0!754))))

(declare-fun b!1572221 () Bool)

(assert (=> b!1572221 (= e!876705 false)))

(declare-datatypes ((SeekEntryResult!13577 0))(
  ( (MissingZero!13577 (index!56705 (_ BitVec 32))) (Found!13577 (index!56706 (_ BitVec 32))) (Intermediate!13577 (undefined!14389 Bool) (index!56707 (_ BitVec 32)) (x!141484 (_ BitVec 32))) (Undefined!13577) (MissingVacant!13577 (index!56708 (_ BitVec 32))) )
))
(declare-fun lt!673876 () SeekEntryResult!13577)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104973 (_ BitVec 32)) SeekEntryResult!13577)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572221 (= lt!673876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135014 res!1074322) b!1572219))

(assert (= (and b!1572219 res!1074323) b!1572220))

(assert (= (and b!1572220 res!1074321) b!1572221))

(declare-fun m!1446029 () Bool)

(assert (=> start!135014 m!1446029))

(declare-fun m!1446031 () Bool)

(assert (=> start!135014 m!1446031))

(declare-fun m!1446033 () Bool)

(assert (=> b!1572220 m!1446033))

(declare-fun m!1446035 () Bool)

(assert (=> b!1572221 m!1446035))

(assert (=> b!1572221 m!1446035))

(declare-fun m!1446037 () Bool)

(assert (=> b!1572221 m!1446037))

(check-sat (not b!1572221) (not start!135014) (not b!1572220))
(check-sat)
