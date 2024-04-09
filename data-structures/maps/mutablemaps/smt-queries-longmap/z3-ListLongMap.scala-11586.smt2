; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135098 () Bool)

(assert start!135098)

(declare-fun res!1074490 () Bool)

(declare-fun e!876866 () Bool)

(assert (=> start!135098 (=> (not res!1074490) (not e!876866))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135098 (= res!1074490 (validMask!0 mask!889))))

(assert (=> start!135098 e!876866))

(assert (=> start!135098 true))

(declare-datatypes ((array!105003 0))(
  ( (array!105004 (arr!50660 (Array (_ BitVec 32) (_ BitVec 64))) (size!51211 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105003)

(declare-fun array_inv!39305 (array!105003) Bool)

(assert (=> start!135098 (array_inv!39305 _keys!600)))

(declare-fun b!1572489 () Bool)

(declare-fun res!1074489 () Bool)

(assert (=> b!1572489 (=> (not res!1074489) (not e!876866))))

(assert (=> b!1572489 (= res!1074489 (= (size!51211 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572490 () Bool)

(declare-fun res!1074491 () Bool)

(assert (=> b!1572490 (=> (not res!1074491) (not e!876866))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572490 (= res!1074491 (validKeyInArray!0 k0!754))))

(declare-fun b!1572491 () Bool)

(assert (=> b!1572491 (= e!876866 false)))

(declare-datatypes ((SeekEntryResult!13589 0))(
  ( (MissingZero!13589 (index!56753 (_ BitVec 32))) (Found!13589 (index!56754 (_ BitVec 32))) (Intermediate!13589 (undefined!14401 Bool) (index!56755 (_ BitVec 32)) (x!141540 (_ BitVec 32))) (Undefined!13589) (MissingVacant!13589 (index!56756 (_ BitVec 32))) )
))
(declare-fun lt!673984 () SeekEntryResult!13589)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105003 (_ BitVec 32)) SeekEntryResult!13589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572491 (= lt!673984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135098 res!1074490) b!1572489))

(assert (= (and b!1572489 res!1074489) b!1572490))

(assert (= (and b!1572490 res!1074491) b!1572491))

(declare-fun m!1446203 () Bool)

(assert (=> start!135098 m!1446203))

(declare-fun m!1446205 () Bool)

(assert (=> start!135098 m!1446205))

(declare-fun m!1446207 () Bool)

(assert (=> b!1572490 m!1446207))

(declare-fun m!1446209 () Bool)

(assert (=> b!1572491 m!1446209))

(assert (=> b!1572491 m!1446209))

(declare-fun m!1446211 () Bool)

(assert (=> b!1572491 m!1446211))

(check-sat (not b!1572490) (not b!1572491) (not start!135098))
(check-sat)
