; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135166 () Bool)

(assert start!135166)

(declare-fun b!1572751 () Bool)

(declare-fun e!877035 () Bool)

(declare-fun e!877033 () Bool)

(assert (=> b!1572751 (= e!877035 e!877033)))

(declare-fun res!1074700 () Bool)

(assert (=> b!1572751 (=> (not res!1074700) (not e!877033))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105044 0))(
  ( (array!105045 (arr!50679 (Array (_ BitVec 32) (_ BitVec 64))) (size!51230 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105044)

(declare-datatypes ((SeekEntryResult!13608 0))(
  ( (MissingZero!13608 (index!56829 (_ BitVec 32))) (Found!13608 (index!56830 (_ BitVec 32))) (Intermediate!13608 (undefined!14420 Bool) (index!56831 (_ BitVec 32)) (x!141613 (_ BitVec 32))) (Undefined!13608) (MissingVacant!13608 (index!56832 (_ BitVec 32))) )
))
(declare-fun lt!674085 () SeekEntryResult!13608)

(declare-fun k!754 () (_ BitVec 64))

(assert (=> b!1572751 (= res!1074700 (and (not (undefined!14420 lt!674085)) (is-Intermediate!13608 lt!674085) (not (= (select (arr!50679 _keys!600) (index!56831 lt!674085)) k!754)) (not (= (select (arr!50679 _keys!600) (index!56831 lt!674085)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50679 _keys!600) (index!56831 lt!674085)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56831 lt!674085) #b00000000000000000000000000000000) (bvslt (index!56831 lt!674085) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105044 (_ BitVec 32)) SeekEntryResult!13608)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572751 (= lt!674085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572752 () Bool)

(assert (=> b!1572752 (= e!877033 false)))

(declare-fun lt!674086 () SeekEntryResult!13608)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105044 (_ BitVec 32)) SeekEntryResult!13608)

(assert (=> b!1572752 (= lt!674086 (seekKeyOrZeroReturnVacant!0 (x!141613 lt!674085) (index!56831 lt!674085) (index!56831 lt!674085) k!754 _keys!600 mask!889))))

(declare-fun b!1572749 () Bool)

(declare-fun res!1074699 () Bool)

(assert (=> b!1572749 (=> (not res!1074699) (not e!877035))))

(assert (=> b!1572749 (= res!1074699 (= (size!51230 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572750 () Bool)

(declare-fun res!1074698 () Bool)

(assert (=> b!1572750 (=> (not res!1074698) (not e!877035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572750 (= res!1074698 (validKeyInArray!0 k!754))))

(declare-fun res!1074701 () Bool)

(assert (=> start!135166 (=> (not res!1074701) (not e!877035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135166 (= res!1074701 (validMask!0 mask!889))))

(assert (=> start!135166 e!877035))

(assert (=> start!135166 true))

(declare-fun array_inv!39324 (array!105044) Bool)

(assert (=> start!135166 (array_inv!39324 _keys!600)))

(assert (= (and start!135166 res!1074701) b!1572749))

(assert (= (and b!1572749 res!1074699) b!1572750))

(assert (= (and b!1572750 res!1074698) b!1572751))

(assert (= (and b!1572751 res!1074700) b!1572752))

(declare-fun m!1446431 () Bool)

(assert (=> b!1572751 m!1446431))

(declare-fun m!1446433 () Bool)

(assert (=> b!1572751 m!1446433))

(assert (=> b!1572751 m!1446433))

(declare-fun m!1446435 () Bool)

(assert (=> b!1572751 m!1446435))

(declare-fun m!1446437 () Bool)

(assert (=> b!1572752 m!1446437))

(declare-fun m!1446439 () Bool)

(assert (=> b!1572750 m!1446439))

(declare-fun m!1446441 () Bool)

(assert (=> start!135166 m!1446441))

(declare-fun m!1446443 () Bool)

(assert (=> start!135166 m!1446443))

(push 1)

