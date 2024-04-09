; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135178 () Bool)

(assert start!135178)

(declare-fun b!1572822 () Bool)

(declare-fun res!1074771 () Bool)

(declare-fun e!877089 () Bool)

(assert (=> b!1572822 (=> (not res!1074771) (not e!877089))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572822 (= res!1074771 (validKeyInArray!0 k!754))))

(declare-fun b!1572823 () Bool)

(declare-fun e!877088 () Bool)

(assert (=> b!1572823 (= e!877089 e!877088)))

(declare-fun res!1074773 () Bool)

(assert (=> b!1572823 (=> (not res!1074773) (not e!877088))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13614 0))(
  ( (MissingZero!13614 (index!56853 (_ BitVec 32))) (Found!13614 (index!56854 (_ BitVec 32))) (Intermediate!13614 (undefined!14426 Bool) (index!56855 (_ BitVec 32)) (x!141635 (_ BitVec 32))) (Undefined!13614) (MissingVacant!13614 (index!56856 (_ BitVec 32))) )
))
(declare-fun lt!674122 () SeekEntryResult!13614)

(declare-datatypes ((array!105056 0))(
  ( (array!105057 (arr!50685 (Array (_ BitVec 32) (_ BitVec 64))) (size!51236 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105056)

(assert (=> b!1572823 (= res!1074773 (and (not (undefined!14426 lt!674122)) (is-Intermediate!13614 lt!674122) (not (= (select (arr!50685 _keys!600) (index!56855 lt!674122)) k!754)) (not (= (select (arr!50685 _keys!600) (index!56855 lt!674122)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50685 _keys!600) (index!56855 lt!674122)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56855 lt!674122) #b00000000000000000000000000000000) (bvslt (index!56855 lt!674122) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105056 (_ BitVec 32)) SeekEntryResult!13614)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572823 (= lt!674122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun res!1074772 () Bool)

(assert (=> start!135178 (=> (not res!1074772) (not e!877089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135178 (= res!1074772 (validMask!0 mask!889))))

(assert (=> start!135178 e!877089))

(assert (=> start!135178 true))

(declare-fun array_inv!39330 (array!105056) Bool)

(assert (=> start!135178 (array_inv!39330 _keys!600)))

(declare-fun b!1572821 () Bool)

(declare-fun res!1074770 () Bool)

(assert (=> b!1572821 (=> (not res!1074770) (not e!877089))))

(assert (=> b!1572821 (= res!1074770 (= (size!51236 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572824 () Bool)

(assert (=> b!1572824 (= e!877088 false)))

(declare-fun lt!674121 () SeekEntryResult!13614)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105056 (_ BitVec 32)) SeekEntryResult!13614)

(assert (=> b!1572824 (= lt!674121 (seekKeyOrZeroReturnVacant!0 (x!141635 lt!674122) (index!56855 lt!674122) (index!56855 lt!674122) k!754 _keys!600 mask!889))))

(assert (= (and start!135178 res!1074772) b!1572821))

(assert (= (and b!1572821 res!1074770) b!1572822))

(assert (= (and b!1572822 res!1074771) b!1572823))

(assert (= (and b!1572823 res!1074773) b!1572824))

(declare-fun m!1446515 () Bool)

(assert (=> b!1572822 m!1446515))

(declare-fun m!1446517 () Bool)

(assert (=> b!1572823 m!1446517))

(declare-fun m!1446519 () Bool)

(assert (=> b!1572823 m!1446519))

(assert (=> b!1572823 m!1446519))

(declare-fun m!1446521 () Bool)

(assert (=> b!1572823 m!1446521))

(declare-fun m!1446523 () Bool)

(assert (=> start!135178 m!1446523))

(declare-fun m!1446525 () Bool)

(assert (=> start!135178 m!1446525))

(declare-fun m!1446527 () Bool)

(assert (=> b!1572824 m!1446527))

(push 1)

