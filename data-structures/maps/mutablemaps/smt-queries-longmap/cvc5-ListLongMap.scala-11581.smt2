; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135006 () Bool)

(assert start!135006)

(declare-fun res!1074287 () Bool)

(declare-fun e!876680 () Bool)

(assert (=> start!135006 (=> (not res!1074287) (not e!876680))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135006 (= res!1074287 (validMask!0 mask!889))))

(assert (=> start!135006 e!876680))

(assert (=> start!135006 true))

(declare-datatypes ((array!104965 0))(
  ( (array!104966 (arr!50644 (Array (_ BitVec 32) (_ BitVec 64))) (size!51195 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104965)

(declare-fun array_inv!39289 (array!104965) Bool)

(assert (=> start!135006 (array_inv!39289 _keys!600)))

(declare-fun b!1572183 () Bool)

(declare-fun res!1074285 () Bool)

(assert (=> b!1572183 (=> (not res!1074285) (not e!876680))))

(assert (=> b!1572183 (= res!1074285 (= (size!51195 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572184 () Bool)

(declare-fun res!1074286 () Bool)

(assert (=> b!1572184 (=> (not res!1074286) (not e!876680))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572184 (= res!1074286 (validKeyInArray!0 k!754))))

(declare-fun b!1572185 () Bool)

(assert (=> b!1572185 (= e!876680 false)))

(declare-datatypes ((SeekEntryResult!13573 0))(
  ( (MissingZero!13573 (index!56689 (_ BitVec 32))) (Found!13573 (index!56690 (_ BitVec 32))) (Intermediate!13573 (undefined!14385 Bool) (index!56691 (_ BitVec 32)) (x!141472 (_ BitVec 32))) (Undefined!13573) (MissingVacant!13573 (index!56692 (_ BitVec 32))) )
))
(declare-fun lt!673864 () SeekEntryResult!13573)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104965 (_ BitVec 32)) SeekEntryResult!13573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572185 (= lt!673864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135006 res!1074287) b!1572183))

(assert (= (and b!1572183 res!1074285) b!1572184))

(assert (= (and b!1572184 res!1074286) b!1572185))

(declare-fun m!1445989 () Bool)

(assert (=> start!135006 m!1445989))

(declare-fun m!1445991 () Bool)

(assert (=> start!135006 m!1445991))

(declare-fun m!1445993 () Bool)

(assert (=> b!1572184 m!1445993))

(declare-fun m!1445995 () Bool)

(assert (=> b!1572185 m!1445995))

(assert (=> b!1572185 m!1445995))

(declare-fun m!1445997 () Bool)

(assert (=> b!1572185 m!1445997))

(push 1)

(assert (not b!1572185))

(assert (not b!1572184))

(assert (not start!135006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

