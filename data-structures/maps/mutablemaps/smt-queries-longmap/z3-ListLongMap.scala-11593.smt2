; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135170 () Bool)

(assert start!135170)

(declare-fun b!1572773 () Bool)

(declare-fun res!1074722 () Bool)

(declare-fun e!877052 () Bool)

(assert (=> b!1572773 (=> (not res!1074722) (not e!877052))))

(declare-datatypes ((array!105048 0))(
  ( (array!105049 (arr!50681 (Array (_ BitVec 32) (_ BitVec 64))) (size!51232 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105048)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1572773 (= res!1074722 (= (size!51232 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572775 () Bool)

(declare-fun e!877051 () Bool)

(assert (=> b!1572775 (= e!877052 e!877051)))

(declare-fun res!1074724 () Bool)

(assert (=> b!1572775 (=> (not res!1074724) (not e!877051))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13610 0))(
  ( (MissingZero!13610 (index!56837 (_ BitVec 32))) (Found!13610 (index!56838 (_ BitVec 32))) (Intermediate!13610 (undefined!14422 Bool) (index!56839 (_ BitVec 32)) (x!141623 (_ BitVec 32))) (Undefined!13610) (MissingVacant!13610 (index!56840 (_ BitVec 32))) )
))
(declare-fun lt!674098 () SeekEntryResult!13610)

(get-info :version)

(assert (=> b!1572775 (= res!1074724 (and (not (undefined!14422 lt!674098)) ((_ is Intermediate!13610) lt!674098) (not (= (select (arr!50681 _keys!600) (index!56839 lt!674098)) k0!754)) (not (= (select (arr!50681 _keys!600) (index!56839 lt!674098)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50681 _keys!600) (index!56839 lt!674098)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56839 lt!674098) #b00000000000000000000000000000000) (bvslt (index!56839 lt!674098) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105048 (_ BitVec 32)) SeekEntryResult!13610)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572775 (= lt!674098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572774 () Bool)

(declare-fun res!1074725 () Bool)

(assert (=> b!1572774 (=> (not res!1074725) (not e!877052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572774 (= res!1074725 (validKeyInArray!0 k0!754))))

(declare-fun b!1572776 () Bool)

(assert (=> b!1572776 (= e!877051 false)))

(declare-fun lt!674097 () SeekEntryResult!13610)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105048 (_ BitVec 32)) SeekEntryResult!13610)

(assert (=> b!1572776 (= lt!674097 (seekKeyOrZeroReturnVacant!0 (x!141623 lt!674098) (index!56839 lt!674098) (index!56839 lt!674098) k0!754 _keys!600 mask!889))))

(declare-fun res!1074723 () Bool)

(assert (=> start!135170 (=> (not res!1074723) (not e!877052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135170 (= res!1074723 (validMask!0 mask!889))))

(assert (=> start!135170 e!877052))

(assert (=> start!135170 true))

(declare-fun array_inv!39326 (array!105048) Bool)

(assert (=> start!135170 (array_inv!39326 _keys!600)))

(assert (= (and start!135170 res!1074723) b!1572773))

(assert (= (and b!1572773 res!1074722) b!1572774))

(assert (= (and b!1572774 res!1074725) b!1572775))

(assert (= (and b!1572775 res!1074724) b!1572776))

(declare-fun m!1446459 () Bool)

(assert (=> b!1572775 m!1446459))

(declare-fun m!1446461 () Bool)

(assert (=> b!1572775 m!1446461))

(assert (=> b!1572775 m!1446461))

(declare-fun m!1446463 () Bool)

(assert (=> b!1572775 m!1446463))

(declare-fun m!1446465 () Bool)

(assert (=> b!1572774 m!1446465))

(declare-fun m!1446467 () Bool)

(assert (=> b!1572776 m!1446467))

(declare-fun m!1446469 () Bool)

(assert (=> start!135170 m!1446469))

(declare-fun m!1446471 () Bool)

(assert (=> start!135170 m!1446471))

(check-sat (not b!1572774) (not start!135170) (not b!1572775) (not b!1572776))
(check-sat)
