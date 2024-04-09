; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135106 () Bool)

(assert start!135106)

(declare-fun res!1074525 () Bool)

(declare-fun e!876891 () Bool)

(assert (=> start!135106 (=> (not res!1074525) (not e!876891))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135106 (= res!1074525 (validMask!0 mask!889))))

(assert (=> start!135106 e!876891))

(assert (=> start!135106 true))

(declare-datatypes ((array!105011 0))(
  ( (array!105012 (arr!50664 (Array (_ BitVec 32) (_ BitVec 64))) (size!51215 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105011)

(declare-fun array_inv!39309 (array!105011) Bool)

(assert (=> start!135106 (array_inv!39309 _keys!600)))

(declare-fun b!1572525 () Bool)

(declare-fun res!1074526 () Bool)

(assert (=> b!1572525 (=> (not res!1074526) (not e!876891))))

(assert (=> b!1572525 (= res!1074526 (= (size!51215 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572526 () Bool)

(declare-fun res!1074527 () Bool)

(assert (=> b!1572526 (=> (not res!1074527) (not e!876891))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572526 (= res!1074527 (validKeyInArray!0 k!754))))

(declare-fun b!1572527 () Bool)

(assert (=> b!1572527 (= e!876891 false)))

(declare-datatypes ((SeekEntryResult!13593 0))(
  ( (MissingZero!13593 (index!56769 (_ BitVec 32))) (Found!13593 (index!56770 (_ BitVec 32))) (Intermediate!13593 (undefined!14405 Bool) (index!56771 (_ BitVec 32)) (x!141552 (_ BitVec 32))) (Undefined!13593) (MissingVacant!13593 (index!56772 (_ BitVec 32))) )
))
(declare-fun lt!673996 () SeekEntryResult!13593)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105011 (_ BitVec 32)) SeekEntryResult!13593)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572527 (= lt!673996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135106 res!1074525) b!1572525))

(assert (= (and b!1572525 res!1074526) b!1572526))

(assert (= (and b!1572526 res!1074527) b!1572527))

(declare-fun m!1446243 () Bool)

(assert (=> start!135106 m!1446243))

(declare-fun m!1446245 () Bool)

(assert (=> start!135106 m!1446245))

(declare-fun m!1446247 () Bool)

(assert (=> b!1572526 m!1446247))

(declare-fun m!1446249 () Bool)

(assert (=> b!1572527 m!1446249))

(assert (=> b!1572527 m!1446249))

(declare-fun m!1446251 () Bool)

(assert (=> b!1572527 m!1446251))

(push 1)

