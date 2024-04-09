; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135122 () Bool)

(assert start!135122)

(declare-fun res!1074599 () Bool)

(declare-fun e!876939 () Bool)

(assert (=> start!135122 (=> (not res!1074599) (not e!876939))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135122 (= res!1074599 (validMask!0 mask!889))))

(assert (=> start!135122 e!876939))

(assert (=> start!135122 true))

(declare-datatypes ((array!105027 0))(
  ( (array!105028 (arr!50672 (Array (_ BitVec 32) (_ BitVec 64))) (size!51223 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105027)

(declare-fun array_inv!39317 (array!105027) Bool)

(assert (=> start!135122 (array_inv!39317 _keys!600)))

(declare-fun b!1572597 () Bool)

(declare-fun res!1074597 () Bool)

(assert (=> b!1572597 (=> (not res!1074597) (not e!876939))))

(assert (=> b!1572597 (= res!1074597 (= (size!51223 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572598 () Bool)

(declare-fun res!1074598 () Bool)

(assert (=> b!1572598 (=> (not res!1074598) (not e!876939))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572598 (= res!1074598 (validKeyInArray!0 k0!754))))

(declare-fun b!1572599 () Bool)

(assert (=> b!1572599 (= e!876939 false)))

(declare-datatypes ((SeekEntryResult!13601 0))(
  ( (MissingZero!13601 (index!56801 (_ BitVec 32))) (Found!13601 (index!56802 (_ BitVec 32))) (Intermediate!13601 (undefined!14413 Bool) (index!56803 (_ BitVec 32)) (x!141584 (_ BitVec 32))) (Undefined!13601) (MissingVacant!13601 (index!56804 (_ BitVec 32))) )
))
(declare-fun lt!674020 () SeekEntryResult!13601)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105027 (_ BitVec 32)) SeekEntryResult!13601)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572599 (= lt!674020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135122 res!1074599) b!1572597))

(assert (= (and b!1572597 res!1074597) b!1572598))

(assert (= (and b!1572598 res!1074598) b!1572599))

(declare-fun m!1446323 () Bool)

(assert (=> start!135122 m!1446323))

(declare-fun m!1446325 () Bool)

(assert (=> start!135122 m!1446325))

(declare-fun m!1446327 () Bool)

(assert (=> b!1572598 m!1446327))

(declare-fun m!1446329 () Bool)

(assert (=> b!1572599 m!1446329))

(assert (=> b!1572599 m!1446329))

(declare-fun m!1446331 () Bool)

(assert (=> b!1572599 m!1446331))

(check-sat (not b!1572598) (not start!135122) (not b!1572599))
