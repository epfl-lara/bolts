; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135732 () Bool)

(assert start!135732)

(declare-fun res!1076068 () Bool)

(declare-fun e!878256 () Bool)

(assert (=> start!135732 (=> (not res!1076068) (not e!878256))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135732 (= res!1076068 (validMask!0 mask!898))))

(assert (=> start!135732 e!878256))

(assert (=> start!135732 true))

(declare-datatypes ((array!105304 0))(
  ( (array!105305 (arr!50791 (Array (_ BitVec 32) (_ BitVec 64))) (size!51342 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105304)

(declare-fun array_inv!39436 (array!105304) Bool)

(assert (=> start!135732 (array_inv!39436 _keys!605)))

(declare-fun b!1574685 () Bool)

(declare-fun res!1076069 () Bool)

(assert (=> b!1574685 (=> (not res!1076069) (not e!878256))))

(assert (=> b!1574685 (= res!1076069 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51342 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574686 () Bool)

(declare-fun res!1076067 () Bool)

(assert (=> b!1574686 (=> (not res!1076067) (not e!878256))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574686 (= res!1076067 (validKeyInArray!0 k!761))))

(declare-fun b!1574687 () Bool)

(assert (=> b!1574687 (= e!878256 false)))

(declare-datatypes ((SeekEntryResult!13672 0))(
  ( (MissingZero!13672 (index!57085 (_ BitVec 32))) (Found!13672 (index!57086 (_ BitVec 32))) (Intermediate!13672 (undefined!14484 Bool) (index!57087 (_ BitVec 32)) (x!142041 (_ BitVec 32))) (Undefined!13672) (MissingVacant!13672 (index!57088 (_ BitVec 32))) )
))
(declare-fun lt!674872 () SeekEntryResult!13672)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105304 (_ BitVec 32)) SeekEntryResult!13672)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574687 (= lt!674872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135732 res!1076068) b!1574685))

(assert (= (and b!1574685 res!1076069) b!1574686))

(assert (= (and b!1574686 res!1076067) b!1574687))

(declare-fun m!1447927 () Bool)

(assert (=> start!135732 m!1447927))

(declare-fun m!1447929 () Bool)

(assert (=> start!135732 m!1447929))

(declare-fun m!1447931 () Bool)

(assert (=> b!1574686 m!1447931))

(declare-fun m!1447933 () Bool)

(assert (=> b!1574687 m!1447933))

(assert (=> b!1574687 m!1447933))

(declare-fun m!1447935 () Bool)

(assert (=> b!1574687 m!1447935))

(push 1)

(assert (not b!1574687))

(assert (not start!135732))

(assert (not b!1574686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

