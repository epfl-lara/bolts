; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135828 () Bool)

(assert start!135828)

(declare-fun res!1076291 () Bool)

(declare-fun e!878454 () Bool)

(assert (=> start!135828 (=> (not res!1076291) (not e!878454))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135828 (= res!1076291 (validMask!0 mask!898))))

(assert (=> start!135828 e!878454))

(assert (=> start!135828 true))

(declare-datatypes ((array!105346 0))(
  ( (array!105347 (arr!50809 (Array (_ BitVec 32) (_ BitVec 64))) (size!51360 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105346)

(declare-fun array_inv!39454 (array!105346) Bool)

(assert (=> start!135828 (array_inv!39454 _keys!605)))

(declare-fun b!1575009 () Bool)

(declare-fun res!1076289 () Bool)

(assert (=> b!1575009 (=> (not res!1076289) (not e!878454))))

(assert (=> b!1575009 (= res!1076289 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51360 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575010 () Bool)

(declare-fun res!1076290 () Bool)

(assert (=> b!1575010 (=> (not res!1076290) (not e!878454))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575010 (= res!1076290 (validKeyInArray!0 k!761))))

(declare-fun b!1575011 () Bool)

(assert (=> b!1575011 (= e!878454 false)))

(declare-datatypes ((SeekEntryResult!13690 0))(
  ( (MissingZero!13690 (index!57157 (_ BitVec 32))) (Found!13690 (index!57158 (_ BitVec 32))) (Intermediate!13690 (undefined!14502 Bool) (index!57159 (_ BitVec 32)) (x!142119 (_ BitVec 32))) (Undefined!13690) (MissingVacant!13690 (index!57160 (_ BitVec 32))) )
))
(declare-fun lt!674998 () SeekEntryResult!13690)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105346 (_ BitVec 32)) SeekEntryResult!13690)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575011 (= lt!674998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135828 res!1076291) b!1575009))

(assert (= (and b!1575009 res!1076289) b!1575010))

(assert (= (and b!1575010 res!1076290) b!1575011))

(declare-fun m!1448167 () Bool)

(assert (=> start!135828 m!1448167))

(declare-fun m!1448169 () Bool)

(assert (=> start!135828 m!1448169))

(declare-fun m!1448171 () Bool)

(assert (=> b!1575010 m!1448171))

(declare-fun m!1448173 () Bool)

(assert (=> b!1575011 m!1448173))

(assert (=> b!1575011 m!1448173))

(declare-fun m!1448175 () Bool)

(assert (=> b!1575011 m!1448175))

(push 1)

(assert (not b!1575010))

(assert (not start!135828))

(assert (not b!1575011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

