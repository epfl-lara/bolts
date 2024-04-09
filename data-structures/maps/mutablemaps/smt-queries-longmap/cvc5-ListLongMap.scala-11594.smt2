; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135174 () Bool)

(assert start!135174)

(declare-fun b!1572798 () Bool)

(declare-fun res!1074749 () Bool)

(declare-fun e!877071 () Bool)

(assert (=> b!1572798 (=> (not res!1074749) (not e!877071))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572798 (= res!1074749 (validKeyInArray!0 k!754))))

(declare-fun b!1572797 () Bool)

(declare-fun res!1074746 () Bool)

(assert (=> b!1572797 (=> (not res!1074746) (not e!877071))))

(declare-datatypes ((array!105052 0))(
  ( (array!105053 (arr!50683 (Array (_ BitVec 32) (_ BitVec 64))) (size!51234 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105052)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1572797 (= res!1074746 (= (size!51234 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572800 () Bool)

(declare-fun e!877069 () Bool)

(assert (=> b!1572800 (= e!877069 false)))

(declare-datatypes ((SeekEntryResult!13612 0))(
  ( (MissingZero!13612 (index!56845 (_ BitVec 32))) (Found!13612 (index!56846 (_ BitVec 32))) (Intermediate!13612 (undefined!14424 Bool) (index!56847 (_ BitVec 32)) (x!141633 (_ BitVec 32))) (Undefined!13612) (MissingVacant!13612 (index!56848 (_ BitVec 32))) )
))
(declare-fun lt!674109 () SeekEntryResult!13612)

(declare-fun lt!674110 () SeekEntryResult!13612)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105052 (_ BitVec 32)) SeekEntryResult!13612)

(assert (=> b!1572800 (= lt!674110 (seekKeyOrZeroReturnVacant!0 (x!141633 lt!674109) (index!56847 lt!674109) (index!56847 lt!674109) k!754 _keys!600 mask!889))))

(declare-fun b!1572799 () Bool)

(assert (=> b!1572799 (= e!877071 e!877069)))

(declare-fun res!1074747 () Bool)

(assert (=> b!1572799 (=> (not res!1074747) (not e!877069))))

(assert (=> b!1572799 (= res!1074747 (and (not (undefined!14424 lt!674109)) (is-Intermediate!13612 lt!674109) (not (= (select (arr!50683 _keys!600) (index!56847 lt!674109)) k!754)) (not (= (select (arr!50683 _keys!600) (index!56847 lt!674109)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50683 _keys!600) (index!56847 lt!674109)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56847 lt!674109) #b00000000000000000000000000000000) (bvslt (index!56847 lt!674109) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105052 (_ BitVec 32)) SeekEntryResult!13612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572799 (= lt!674109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun res!1074748 () Bool)

(assert (=> start!135174 (=> (not res!1074748) (not e!877071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135174 (= res!1074748 (validMask!0 mask!889))))

(assert (=> start!135174 e!877071))

(assert (=> start!135174 true))

(declare-fun array_inv!39328 (array!105052) Bool)

(assert (=> start!135174 (array_inv!39328 _keys!600)))

(assert (= (and start!135174 res!1074748) b!1572797))

(assert (= (and b!1572797 res!1074746) b!1572798))

(assert (= (and b!1572798 res!1074749) b!1572799))

(assert (= (and b!1572799 res!1074747) b!1572800))

(declare-fun m!1446487 () Bool)

(assert (=> b!1572798 m!1446487))

(declare-fun m!1446489 () Bool)

(assert (=> b!1572800 m!1446489))

(declare-fun m!1446491 () Bool)

(assert (=> b!1572799 m!1446491))

(declare-fun m!1446493 () Bool)

(assert (=> b!1572799 m!1446493))

(assert (=> b!1572799 m!1446493))

(declare-fun m!1446495 () Bool)

(assert (=> b!1572799 m!1446495))

(declare-fun m!1446497 () Bool)

(assert (=> start!135174 m!1446497))

(declare-fun m!1446499 () Bool)

(assert (=> start!135174 m!1446499))

(push 1)

(assert (not b!1572800))

