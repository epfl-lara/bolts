; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135670 () Bool)

(assert start!135670)

(declare-fun res!1075893 () Bool)

(declare-fun e!878115 () Bool)

(assert (=> start!135670 (=> (not res!1075893) (not e!878115))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135670 (= res!1075893 (validMask!0 mask!898))))

(assert (=> start!135670 e!878115))

(assert (=> start!135670 true))

(declare-datatypes ((array!105269 0))(
  ( (array!105270 (arr!50775 (Array (_ BitVec 32) (_ BitVec 64))) (size!51326 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105269)

(declare-fun array_inv!39420 (array!105269) Bool)

(assert (=> start!135670 (array_inv!39420 _keys!605)))

(declare-fun b!1574460 () Bool)

(declare-fun res!1075894 () Bool)

(assert (=> b!1574460 (=> (not res!1075894) (not e!878115))))

(assert (=> b!1574460 (= res!1075894 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51326 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574461 () Bool)

(declare-fun res!1075895 () Bool)

(assert (=> b!1574461 (=> (not res!1075895) (not e!878115))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574461 (= res!1075895 (validKeyInArray!0 k!761))))

(declare-fun b!1574462 () Bool)

(assert (=> b!1574462 (= e!878115 false)))

(declare-datatypes ((SeekEntryResult!13656 0))(
  ( (MissingZero!13656 (index!57021 (_ BitVec 32))) (Found!13656 (index!57022 (_ BitVec 32))) (Intermediate!13656 (undefined!14468 Bool) (index!57023 (_ BitVec 32)) (x!141971 (_ BitVec 32))) (Undefined!13656) (MissingVacant!13656 (index!57024 (_ BitVec 32))) )
))
(declare-fun lt!674788 () SeekEntryResult!13656)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105269 (_ BitVec 32)) SeekEntryResult!13656)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574462 (= lt!674788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135670 res!1075893) b!1574460))

(assert (= (and b!1574460 res!1075894) b!1574461))

(assert (= (and b!1574461 res!1075895) b!1574462))

(declare-fun m!1447737 () Bool)

(assert (=> start!135670 m!1447737))

(declare-fun m!1447739 () Bool)

(assert (=> start!135670 m!1447739))

(declare-fun m!1447741 () Bool)

(assert (=> b!1574461 m!1447741))

(declare-fun m!1447743 () Bool)

(assert (=> b!1574462 m!1447743))

(assert (=> b!1574462 m!1447743))

(declare-fun m!1447745 () Bool)

(assert (=> b!1574462 m!1447745))

(push 1)

(assert (not b!1574462))

(assert (not start!135670))

(assert (not b!1574461))

(check-sat)

