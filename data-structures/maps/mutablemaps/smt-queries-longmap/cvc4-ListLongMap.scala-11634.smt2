; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135820 () Bool)

(assert start!135820)

(declare-fun res!1076254 () Bool)

(declare-fun e!878429 () Bool)

(assert (=> start!135820 (=> (not res!1076254) (not e!878429))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135820 (= res!1076254 (validMask!0 mask!898))))

(assert (=> start!135820 e!878429))

(assert (=> start!135820 true))

(declare-datatypes ((array!105338 0))(
  ( (array!105339 (arr!50805 (Array (_ BitVec 32) (_ BitVec 64))) (size!51356 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105338)

(declare-fun array_inv!39450 (array!105338) Bool)

(assert (=> start!135820 (array_inv!39450 _keys!605)))

(declare-fun b!1574973 () Bool)

(declare-fun res!1076255 () Bool)

(assert (=> b!1574973 (=> (not res!1076255) (not e!878429))))

(assert (=> b!1574973 (= res!1076255 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51356 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574974 () Bool)

(declare-fun res!1076253 () Bool)

(assert (=> b!1574974 (=> (not res!1076253) (not e!878429))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574974 (= res!1076253 (validKeyInArray!0 k!761))))

(declare-fun b!1574975 () Bool)

(assert (=> b!1574975 (= e!878429 false)))

(declare-datatypes ((SeekEntryResult!13686 0))(
  ( (MissingZero!13686 (index!57141 (_ BitVec 32))) (Found!13686 (index!57142 (_ BitVec 32))) (Intermediate!13686 (undefined!14498 Bool) (index!57143 (_ BitVec 32)) (x!142099 (_ BitVec 32))) (Undefined!13686) (MissingVacant!13686 (index!57144 (_ BitVec 32))) )
))
(declare-fun lt!674986 () SeekEntryResult!13686)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105338 (_ BitVec 32)) SeekEntryResult!13686)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574975 (= lt!674986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135820 res!1076254) b!1574973))

(assert (= (and b!1574973 res!1076255) b!1574974))

(assert (= (and b!1574974 res!1076253) b!1574975))

(declare-fun m!1448127 () Bool)

(assert (=> start!135820 m!1448127))

(declare-fun m!1448129 () Bool)

(assert (=> start!135820 m!1448129))

(declare-fun m!1448131 () Bool)

(assert (=> b!1574974 m!1448131))

(declare-fun m!1448133 () Bool)

(assert (=> b!1574975 m!1448133))

(assert (=> b!1574975 m!1448133))

(declare-fun m!1448135 () Bool)

(assert (=> b!1574975 m!1448135))

(push 1)

(assert (not b!1574974))

(assert (not start!135820))

(assert (not b!1574975))

(check-sat)

