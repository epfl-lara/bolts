; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135678 () Bool)

(assert start!135678)

(declare-fun res!1075930 () Bool)

(declare-fun e!878139 () Bool)

(assert (=> start!135678 (=> (not res!1075930) (not e!878139))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135678 (= res!1075930 (validMask!0 mask!898))))

(assert (=> start!135678 e!878139))

(assert (=> start!135678 true))

(declare-datatypes ((array!105277 0))(
  ( (array!105278 (arr!50779 (Array (_ BitVec 32) (_ BitVec 64))) (size!51330 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105277)

(declare-fun array_inv!39424 (array!105277) Bool)

(assert (=> start!135678 (array_inv!39424 _keys!605)))

(declare-fun b!1574496 () Bool)

(declare-fun res!1075931 () Bool)

(assert (=> b!1574496 (=> (not res!1075931) (not e!878139))))

(assert (=> b!1574496 (= res!1075931 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51330 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574497 () Bool)

(declare-fun res!1075929 () Bool)

(assert (=> b!1574497 (=> (not res!1075929) (not e!878139))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574497 (= res!1075929 (validKeyInArray!0 k!761))))

(declare-fun b!1574498 () Bool)

(assert (=> b!1574498 (= e!878139 false)))

(declare-datatypes ((SeekEntryResult!13660 0))(
  ( (MissingZero!13660 (index!57037 (_ BitVec 32))) (Found!13660 (index!57038 (_ BitVec 32))) (Intermediate!13660 (undefined!14472 Bool) (index!57039 (_ BitVec 32)) (x!141991 (_ BitVec 32))) (Undefined!13660) (MissingVacant!13660 (index!57040 (_ BitVec 32))) )
))
(declare-fun lt!674800 () SeekEntryResult!13660)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105277 (_ BitVec 32)) SeekEntryResult!13660)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574498 (= lt!674800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135678 res!1075930) b!1574496))

(assert (= (and b!1574496 res!1075931) b!1574497))

(assert (= (and b!1574497 res!1075929) b!1574498))

(declare-fun m!1447777 () Bool)

(assert (=> start!135678 m!1447777))

(declare-fun m!1447779 () Bool)

(assert (=> start!135678 m!1447779))

(declare-fun m!1447781 () Bool)

(assert (=> b!1574497 m!1447781))

(declare-fun m!1447783 () Bool)

(assert (=> b!1574498 m!1447783))

(assert (=> b!1574498 m!1447783))

(declare-fun m!1447785 () Bool)

(assert (=> b!1574498 m!1447785))

(push 1)

(assert (not b!1574497))

(assert (not b!1574498))

(assert (not start!135678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

