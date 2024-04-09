; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135676 () Bool)

(assert start!135676)

(declare-fun res!1075921 () Bool)

(declare-fun e!878133 () Bool)

(assert (=> start!135676 (=> (not res!1075921) (not e!878133))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135676 (= res!1075921 (validMask!0 mask!898))))

(assert (=> start!135676 e!878133))

(assert (=> start!135676 true))

(declare-datatypes ((array!105275 0))(
  ( (array!105276 (arr!50778 (Array (_ BitVec 32) (_ BitVec 64))) (size!51329 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105275)

(declare-fun array_inv!39423 (array!105275) Bool)

(assert (=> start!135676 (array_inv!39423 _keys!605)))

(declare-fun b!1574487 () Bool)

(declare-fun res!1075920 () Bool)

(assert (=> b!1574487 (=> (not res!1075920) (not e!878133))))

(assert (=> b!1574487 (= res!1075920 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51329 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574488 () Bool)

(declare-fun res!1075922 () Bool)

(assert (=> b!1574488 (=> (not res!1075922) (not e!878133))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574488 (= res!1075922 (validKeyInArray!0 k!761))))

(declare-fun b!1574489 () Bool)

(assert (=> b!1574489 (= e!878133 false)))

(declare-datatypes ((SeekEntryResult!13659 0))(
  ( (MissingZero!13659 (index!57033 (_ BitVec 32))) (Found!13659 (index!57034 (_ BitVec 32))) (Intermediate!13659 (undefined!14471 Bool) (index!57035 (_ BitVec 32)) (x!141982 (_ BitVec 32))) (Undefined!13659) (MissingVacant!13659 (index!57036 (_ BitVec 32))) )
))
(declare-fun lt!674797 () SeekEntryResult!13659)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105275 (_ BitVec 32)) SeekEntryResult!13659)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574489 (= lt!674797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135676 res!1075921) b!1574487))

(assert (= (and b!1574487 res!1075920) b!1574488))

(assert (= (and b!1574488 res!1075922) b!1574489))

(declare-fun m!1447767 () Bool)

(assert (=> start!135676 m!1447767))

(declare-fun m!1447769 () Bool)

(assert (=> start!135676 m!1447769))

(declare-fun m!1447771 () Bool)

(assert (=> b!1574488 m!1447771))

(declare-fun m!1447773 () Bool)

(assert (=> b!1574489 m!1447773))

(assert (=> b!1574489 m!1447773))

(declare-fun m!1447775 () Bool)

(assert (=> b!1574489 m!1447775))

(push 1)

(assert (not b!1574488))

(assert (not start!135676))

(assert (not b!1574489))

(check-sat)

