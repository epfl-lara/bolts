; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135660 () Bool)

(assert start!135660)

(declare-fun res!1075848 () Bool)

(declare-fun e!878084 () Bool)

(assert (=> start!135660 (=> (not res!1075848) (not e!878084))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135660 (= res!1075848 (validMask!0 mask!898))))

(assert (=> start!135660 e!878084))

(assert (=> start!135660 true))

(declare-datatypes ((array!105259 0))(
  ( (array!105260 (arr!50770 (Array (_ BitVec 32) (_ BitVec 64))) (size!51321 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105259)

(declare-fun array_inv!39415 (array!105259) Bool)

(assert (=> start!135660 (array_inv!39415 _keys!605)))

(declare-fun b!1574415 () Bool)

(declare-fun res!1075849 () Bool)

(assert (=> b!1574415 (=> (not res!1075849) (not e!878084))))

(assert (=> b!1574415 (= res!1075849 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51321 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574416 () Bool)

(declare-fun res!1075850 () Bool)

(assert (=> b!1574416 (=> (not res!1075850) (not e!878084))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574416 (= res!1075850 (validKeyInArray!0 k!761))))

(declare-fun b!1574417 () Bool)

(assert (=> b!1574417 (= e!878084 false)))

(declare-datatypes ((SeekEntryResult!13651 0))(
  ( (MissingZero!13651 (index!57001 (_ BitVec 32))) (Found!13651 (index!57002 (_ BitVec 32))) (Intermediate!13651 (undefined!14463 Bool) (index!57003 (_ BitVec 32)) (x!141958 (_ BitVec 32))) (Undefined!13651) (MissingVacant!13651 (index!57004 (_ BitVec 32))) )
))
(declare-fun lt!674773 () SeekEntryResult!13651)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105259 (_ BitVec 32)) SeekEntryResult!13651)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574417 (= lt!674773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135660 res!1075848) b!1574415))

(assert (= (and b!1574415 res!1075849) b!1574416))

(assert (= (and b!1574416 res!1075850) b!1574417))

(declare-fun m!1447687 () Bool)

(assert (=> start!135660 m!1447687))

(declare-fun m!1447689 () Bool)

(assert (=> start!135660 m!1447689))

(declare-fun m!1447691 () Bool)

(assert (=> b!1574416 m!1447691))

(declare-fun m!1447693 () Bool)

(assert (=> b!1574417 m!1447693))

(assert (=> b!1574417 m!1447693))

(declare-fun m!1447695 () Bool)

(assert (=> b!1574417 m!1447695))

(push 1)

(assert (not b!1574416))

(assert (not start!135660))

(assert (not b!1574417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

