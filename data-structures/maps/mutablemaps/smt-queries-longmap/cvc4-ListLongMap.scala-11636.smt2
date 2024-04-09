; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135832 () Bool)

(assert start!135832)

(declare-fun res!1076308 () Bool)

(declare-fun e!878465 () Bool)

(assert (=> start!135832 (=> (not res!1076308) (not e!878465))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135832 (= res!1076308 (validMask!0 mask!898))))

(assert (=> start!135832 e!878465))

(assert (=> start!135832 true))

(declare-datatypes ((array!105350 0))(
  ( (array!105351 (arr!50811 (Array (_ BitVec 32) (_ BitVec 64))) (size!51362 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105350)

(declare-fun array_inv!39456 (array!105350) Bool)

(assert (=> start!135832 (array_inv!39456 _keys!605)))

(declare-fun b!1575027 () Bool)

(declare-fun res!1076309 () Bool)

(assert (=> b!1575027 (=> (not res!1076309) (not e!878465))))

(assert (=> b!1575027 (= res!1076309 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51362 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575028 () Bool)

(declare-fun res!1076307 () Bool)

(assert (=> b!1575028 (=> (not res!1076307) (not e!878465))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575028 (= res!1076307 (validKeyInArray!0 k!761))))

(declare-fun b!1575029 () Bool)

(assert (=> b!1575029 (= e!878465 false)))

(declare-datatypes ((SeekEntryResult!13692 0))(
  ( (MissingZero!13692 (index!57165 (_ BitVec 32))) (Found!13692 (index!57166 (_ BitVec 32))) (Intermediate!13692 (undefined!14504 Bool) (index!57167 (_ BitVec 32)) (x!142121 (_ BitVec 32))) (Undefined!13692) (MissingVacant!13692 (index!57168 (_ BitVec 32))) )
))
(declare-fun lt!675004 () SeekEntryResult!13692)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105350 (_ BitVec 32)) SeekEntryResult!13692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575029 (= lt!675004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135832 res!1076308) b!1575027))

(assert (= (and b!1575027 res!1076309) b!1575028))

(assert (= (and b!1575028 res!1076307) b!1575029))

(declare-fun m!1448187 () Bool)

(assert (=> start!135832 m!1448187))

(declare-fun m!1448189 () Bool)

(assert (=> start!135832 m!1448189))

(declare-fun m!1448191 () Bool)

(assert (=> b!1575028 m!1448191))

(declare-fun m!1448193 () Bool)

(assert (=> b!1575029 m!1448193))

(assert (=> b!1575029 m!1448193))

(declare-fun m!1448195 () Bool)

(assert (=> b!1575029 m!1448195))

(push 1)

(assert (not b!1575028))

(assert (not start!135832))

