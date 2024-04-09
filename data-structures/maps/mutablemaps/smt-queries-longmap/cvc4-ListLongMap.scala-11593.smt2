; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135172 () Bool)

(assert start!135172)

(declare-fun b!1572785 () Bool)

(declare-fun res!1074736 () Bool)

(declare-fun e!877061 () Bool)

(assert (=> b!1572785 (=> (not res!1074736) (not e!877061))))

(declare-datatypes ((array!105050 0))(
  ( (array!105051 (arr!50682 (Array (_ BitVec 32) (_ BitVec 64))) (size!51233 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105050)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1572785 (= res!1074736 (= (size!51233 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572788 () Bool)

(declare-fun e!877060 () Bool)

(assert (=> b!1572788 (= e!877060 false)))

(declare-datatypes ((SeekEntryResult!13611 0))(
  ( (MissingZero!13611 (index!56841 (_ BitVec 32))) (Found!13611 (index!56842 (_ BitVec 32))) (Intermediate!13611 (undefined!14423 Bool) (index!56843 (_ BitVec 32)) (x!141624 (_ BitVec 32))) (Undefined!13611) (MissingVacant!13611 (index!56844 (_ BitVec 32))) )
))
(declare-fun lt!674103 () SeekEntryResult!13611)

(declare-fun k!754 () (_ BitVec 64))

(declare-fun lt!674104 () SeekEntryResult!13611)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105050 (_ BitVec 32)) SeekEntryResult!13611)

(assert (=> b!1572788 (= lt!674103 (seekKeyOrZeroReturnVacant!0 (x!141624 lt!674104) (index!56843 lt!674104) (index!56843 lt!674104) k!754 _keys!600 mask!889))))

(declare-fun res!1074735 () Bool)

(assert (=> start!135172 (=> (not res!1074735) (not e!877061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135172 (= res!1074735 (validMask!0 mask!889))))

(assert (=> start!135172 e!877061))

(assert (=> start!135172 true))

(declare-fun array_inv!39327 (array!105050) Bool)

(assert (=> start!135172 (array_inv!39327 _keys!600)))

(declare-fun b!1572787 () Bool)

(assert (=> b!1572787 (= e!877061 e!877060)))

(declare-fun res!1074737 () Bool)

(assert (=> b!1572787 (=> (not res!1074737) (not e!877060))))

(assert (=> b!1572787 (= res!1074737 (and (not (undefined!14423 lt!674104)) (is-Intermediate!13611 lt!674104) (not (= (select (arr!50682 _keys!600) (index!56843 lt!674104)) k!754)) (not (= (select (arr!50682 _keys!600) (index!56843 lt!674104)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50682 _keys!600) (index!56843 lt!674104)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56843 lt!674104) #b00000000000000000000000000000000) (bvslt (index!56843 lt!674104) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105050 (_ BitVec 32)) SeekEntryResult!13611)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572787 (= lt!674104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572786 () Bool)

(declare-fun res!1074734 () Bool)

(assert (=> b!1572786 (=> (not res!1074734) (not e!877061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572786 (= res!1074734 (validKeyInArray!0 k!754))))

(assert (= (and start!135172 res!1074735) b!1572785))

(assert (= (and b!1572785 res!1074736) b!1572786))

(assert (= (and b!1572786 res!1074734) b!1572787))

(assert (= (and b!1572787 res!1074737) b!1572788))

(declare-fun m!1446473 () Bool)

(assert (=> b!1572788 m!1446473))

(declare-fun m!1446475 () Bool)

(assert (=> start!135172 m!1446475))

(declare-fun m!1446477 () Bool)

(assert (=> start!135172 m!1446477))

(declare-fun m!1446479 () Bool)

(assert (=> b!1572787 m!1446479))

(declare-fun m!1446481 () Bool)

(assert (=> b!1572787 m!1446481))

(assert (=> b!1572787 m!1446481))

(declare-fun m!1446483 () Bool)

(assert (=> b!1572787 m!1446483))

(declare-fun m!1446485 () Bool)

(assert (=> b!1572786 m!1446485))

(push 1)

(assert (not start!135172))

(assert (not b!1572787))

