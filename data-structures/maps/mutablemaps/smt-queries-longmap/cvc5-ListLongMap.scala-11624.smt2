; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135666 () Bool)

(assert start!135666)

(declare-fun res!1075875 () Bool)

(declare-fun e!878103 () Bool)

(assert (=> start!135666 (=> (not res!1075875) (not e!878103))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135666 (= res!1075875 (validMask!0 mask!898))))

(assert (=> start!135666 e!878103))

(assert (=> start!135666 true))

(declare-datatypes ((array!105265 0))(
  ( (array!105266 (arr!50773 (Array (_ BitVec 32) (_ BitVec 64))) (size!51324 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105265)

(declare-fun array_inv!39418 (array!105265) Bool)

(assert (=> start!135666 (array_inv!39418 _keys!605)))

(declare-fun b!1574442 () Bool)

(declare-fun res!1075876 () Bool)

(assert (=> b!1574442 (=> (not res!1075876) (not e!878103))))

(assert (=> b!1574442 (= res!1075876 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51324 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574443 () Bool)

(declare-fun res!1075877 () Bool)

(assert (=> b!1574443 (=> (not res!1075877) (not e!878103))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574443 (= res!1075877 (validKeyInArray!0 k!761))))

(declare-fun b!1574444 () Bool)

(assert (=> b!1574444 (= e!878103 false)))

(declare-datatypes ((SeekEntryResult!13654 0))(
  ( (MissingZero!13654 (index!57013 (_ BitVec 32))) (Found!13654 (index!57014 (_ BitVec 32))) (Intermediate!13654 (undefined!14466 Bool) (index!57015 (_ BitVec 32)) (x!141969 (_ BitVec 32))) (Undefined!13654) (MissingVacant!13654 (index!57016 (_ BitVec 32))) )
))
(declare-fun lt!674782 () SeekEntryResult!13654)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105265 (_ BitVec 32)) SeekEntryResult!13654)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574444 (= lt!674782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135666 res!1075875) b!1574442))

(assert (= (and b!1574442 res!1075876) b!1574443))

(assert (= (and b!1574443 res!1075877) b!1574444))

(declare-fun m!1447717 () Bool)

(assert (=> start!135666 m!1447717))

(declare-fun m!1447719 () Bool)

(assert (=> start!135666 m!1447719))

(declare-fun m!1447721 () Bool)

(assert (=> b!1574443 m!1447721))

(declare-fun m!1447723 () Bool)

(assert (=> b!1574444 m!1447723))

(assert (=> b!1574444 m!1447723))

(declare-fun m!1447725 () Bool)

(assert (=> b!1574444 m!1447725))

(push 1)

(assert (not b!1574444))

(assert (not start!135666))

(assert (not b!1574443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

