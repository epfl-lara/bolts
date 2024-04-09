; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135164 () Bool)

(assert start!135164)

(declare-fun b!1572739 () Bool)

(declare-fun e!877025 () Bool)

(declare-fun e!877024 () Bool)

(assert (=> b!1572739 (= e!877025 e!877024)))

(declare-fun res!1074689 () Bool)

(assert (=> b!1572739 (=> (not res!1074689) (not e!877024))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13607 0))(
  ( (MissingZero!13607 (index!56825 (_ BitVec 32))) (Found!13607 (index!56826 (_ BitVec 32))) (Intermediate!13607 (undefined!14419 Bool) (index!56827 (_ BitVec 32)) (x!141612 (_ BitVec 32))) (Undefined!13607) (MissingVacant!13607 (index!56828 (_ BitVec 32))) )
))
(declare-fun lt!674079 () SeekEntryResult!13607)

(declare-datatypes ((array!105042 0))(
  ( (array!105043 (arr!50678 (Array (_ BitVec 32) (_ BitVec 64))) (size!51229 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105042)

(get-info :version)

(assert (=> b!1572739 (= res!1074689 (and (not (undefined!14419 lt!674079)) ((_ is Intermediate!13607) lt!674079) (not (= (select (arr!50678 _keys!600) (index!56827 lt!674079)) k0!754)) (not (= (select (arr!50678 _keys!600) (index!56827 lt!674079)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50678 _keys!600) (index!56827 lt!674079)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56827 lt!674079) #b00000000000000000000000000000000) (bvslt (index!56827 lt!674079) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105042 (_ BitVec 32)) SeekEntryResult!13607)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572739 (= lt!674079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572740 () Bool)

(assert (=> b!1572740 (= e!877024 false)))

(declare-fun lt!674080 () SeekEntryResult!13607)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105042 (_ BitVec 32)) SeekEntryResult!13607)

(assert (=> b!1572740 (= lt!674080 (seekKeyOrZeroReturnVacant!0 (x!141612 lt!674079) (index!56827 lt!674079) (index!56827 lt!674079) k0!754 _keys!600 mask!889))))

(declare-fun b!1572738 () Bool)

(declare-fun res!1074688 () Bool)

(assert (=> b!1572738 (=> (not res!1074688) (not e!877025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572738 (= res!1074688 (validKeyInArray!0 k0!754))))

(declare-fun b!1572737 () Bool)

(declare-fun res!1074686 () Bool)

(assert (=> b!1572737 (=> (not res!1074686) (not e!877025))))

(assert (=> b!1572737 (= res!1074686 (= (size!51229 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun res!1074687 () Bool)

(assert (=> start!135164 (=> (not res!1074687) (not e!877025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135164 (= res!1074687 (validMask!0 mask!889))))

(assert (=> start!135164 e!877025))

(assert (=> start!135164 true))

(declare-fun array_inv!39323 (array!105042) Bool)

(assert (=> start!135164 (array_inv!39323 _keys!600)))

(assert (= (and start!135164 res!1074687) b!1572737))

(assert (= (and b!1572737 res!1074686) b!1572738))

(assert (= (and b!1572738 res!1074688) b!1572739))

(assert (= (and b!1572739 res!1074689) b!1572740))

(declare-fun m!1446417 () Bool)

(assert (=> b!1572739 m!1446417))

(declare-fun m!1446419 () Bool)

(assert (=> b!1572739 m!1446419))

(assert (=> b!1572739 m!1446419))

(declare-fun m!1446421 () Bool)

(assert (=> b!1572739 m!1446421))

(declare-fun m!1446423 () Bool)

(assert (=> b!1572740 m!1446423))

(declare-fun m!1446425 () Bool)

(assert (=> b!1572738 m!1446425))

(declare-fun m!1446427 () Bool)

(assert (=> start!135164 m!1446427))

(declare-fun m!1446429 () Bool)

(assert (=> start!135164 m!1446429))

(check-sat (not b!1572740) (not b!1572738) (not start!135164) (not b!1572739))
(check-sat)
