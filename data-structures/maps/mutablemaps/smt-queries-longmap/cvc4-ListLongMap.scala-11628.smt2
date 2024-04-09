; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135724 () Bool)

(assert start!135724)

(declare-fun res!1076031 () Bool)

(declare-fun e!878231 () Bool)

(assert (=> start!135724 (=> (not res!1076031) (not e!878231))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135724 (= res!1076031 (validMask!0 mask!898))))

(assert (=> start!135724 e!878231))

(assert (=> start!135724 true))

(declare-datatypes ((array!105296 0))(
  ( (array!105297 (arr!50787 (Array (_ BitVec 32) (_ BitVec 64))) (size!51338 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105296)

(declare-fun array_inv!39432 (array!105296) Bool)

(assert (=> start!135724 (array_inv!39432 _keys!605)))

(declare-fun b!1574649 () Bool)

(declare-fun res!1076032 () Bool)

(assert (=> b!1574649 (=> (not res!1076032) (not e!878231))))

(assert (=> b!1574649 (= res!1076032 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51338 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574650 () Bool)

(declare-fun res!1076033 () Bool)

(assert (=> b!1574650 (=> (not res!1076033) (not e!878231))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574650 (= res!1076033 (validKeyInArray!0 k!761))))

(declare-fun b!1574651 () Bool)

(assert (=> b!1574651 (= e!878231 false)))

(declare-datatypes ((SeekEntryResult!13668 0))(
  ( (MissingZero!13668 (index!57069 (_ BitVec 32))) (Found!13668 (index!57070 (_ BitVec 32))) (Intermediate!13668 (undefined!14480 Bool) (index!57071 (_ BitVec 32)) (x!142021 (_ BitVec 32))) (Undefined!13668) (MissingVacant!13668 (index!57072 (_ BitVec 32))) )
))
(declare-fun lt!674860 () SeekEntryResult!13668)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105296 (_ BitVec 32)) SeekEntryResult!13668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574651 (= lt!674860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135724 res!1076031) b!1574649))

(assert (= (and b!1574649 res!1076032) b!1574650))

(assert (= (and b!1574650 res!1076033) b!1574651))

(declare-fun m!1447887 () Bool)

(assert (=> start!135724 m!1447887))

(declare-fun m!1447889 () Bool)

(assert (=> start!135724 m!1447889))

(declare-fun m!1447891 () Bool)

(assert (=> b!1574650 m!1447891))

(declare-fun m!1447893 () Bool)

(assert (=> b!1574651 m!1447893))

(assert (=> b!1574651 m!1447893))

(declare-fun m!1447895 () Bool)

(assert (=> b!1574651 m!1447895))

(push 1)

(assert (not b!1574651))

(assert (not b!1574650))

(assert (not start!135724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

