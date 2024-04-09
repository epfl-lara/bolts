; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135672 () Bool)

(assert start!135672)

(declare-fun res!1075904 () Bool)

(declare-fun e!878121 () Bool)

(assert (=> start!135672 (=> (not res!1075904) (not e!878121))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135672 (= res!1075904 (validMask!0 mask!898))))

(assert (=> start!135672 e!878121))

(assert (=> start!135672 true))

(declare-datatypes ((array!105271 0))(
  ( (array!105272 (arr!50776 (Array (_ BitVec 32) (_ BitVec 64))) (size!51327 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105271)

(declare-fun array_inv!39421 (array!105271) Bool)

(assert (=> start!135672 (array_inv!39421 _keys!605)))

(declare-fun b!1574469 () Bool)

(declare-fun res!1075903 () Bool)

(assert (=> b!1574469 (=> (not res!1075903) (not e!878121))))

(assert (=> b!1574469 (= res!1075903 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51327 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574470 () Bool)

(declare-fun res!1075902 () Bool)

(assert (=> b!1574470 (=> (not res!1075902) (not e!878121))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574470 (= res!1075902 (validKeyInArray!0 k!761))))

(declare-fun b!1574471 () Bool)

(assert (=> b!1574471 (= e!878121 false)))

(declare-datatypes ((SeekEntryResult!13657 0))(
  ( (MissingZero!13657 (index!57025 (_ BitVec 32))) (Found!13657 (index!57026 (_ BitVec 32))) (Intermediate!13657 (undefined!14469 Bool) (index!57027 (_ BitVec 32)) (x!141980 (_ BitVec 32))) (Undefined!13657) (MissingVacant!13657 (index!57028 (_ BitVec 32))) )
))
(declare-fun lt!674791 () SeekEntryResult!13657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105271 (_ BitVec 32)) SeekEntryResult!13657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574471 (= lt!674791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135672 res!1075904) b!1574469))

(assert (= (and b!1574469 res!1075903) b!1574470))

(assert (= (and b!1574470 res!1075902) b!1574471))

(declare-fun m!1447747 () Bool)

(assert (=> start!135672 m!1447747))

(declare-fun m!1447749 () Bool)

(assert (=> start!135672 m!1447749))

(declare-fun m!1447751 () Bool)

(assert (=> b!1574470 m!1447751))

(declare-fun m!1447753 () Bool)

(assert (=> b!1574471 m!1447753))

(assert (=> b!1574471 m!1447753))

(declare-fun m!1447755 () Bool)

(assert (=> b!1574471 m!1447755))

(push 1)

(assert (not b!1574470))

(assert (not start!135672))

(assert (not b!1574471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

