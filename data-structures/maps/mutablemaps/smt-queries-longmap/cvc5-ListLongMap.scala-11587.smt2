; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135102 () Bool)

(assert start!135102)

(declare-fun res!1074509 () Bool)

(declare-fun e!876879 () Bool)

(assert (=> start!135102 (=> (not res!1074509) (not e!876879))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135102 (= res!1074509 (validMask!0 mask!889))))

(assert (=> start!135102 e!876879))

(assert (=> start!135102 true))

(declare-datatypes ((array!105007 0))(
  ( (array!105008 (arr!50662 (Array (_ BitVec 32) (_ BitVec 64))) (size!51213 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105007)

(declare-fun array_inv!39307 (array!105007) Bool)

(assert (=> start!135102 (array_inv!39307 _keys!600)))

(declare-fun b!1572507 () Bool)

(declare-fun res!1074508 () Bool)

(assert (=> b!1572507 (=> (not res!1074508) (not e!876879))))

(assert (=> b!1572507 (= res!1074508 (= (size!51213 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572508 () Bool)

(declare-fun res!1074507 () Bool)

(assert (=> b!1572508 (=> (not res!1074507) (not e!876879))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572508 (= res!1074507 (validKeyInArray!0 k!754))))

(declare-fun b!1572509 () Bool)

(assert (=> b!1572509 (= e!876879 false)))

(declare-datatypes ((SeekEntryResult!13591 0))(
  ( (MissingZero!13591 (index!56761 (_ BitVec 32))) (Found!13591 (index!56762 (_ BitVec 32))) (Intermediate!13591 (undefined!14403 Bool) (index!56763 (_ BitVec 32)) (x!141550 (_ BitVec 32))) (Undefined!13591) (MissingVacant!13591 (index!56764 (_ BitVec 32))) )
))
(declare-fun lt!673990 () SeekEntryResult!13591)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105007 (_ BitVec 32)) SeekEntryResult!13591)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572509 (= lt!673990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135102 res!1074509) b!1572507))

(assert (= (and b!1572507 res!1074508) b!1572508))

(assert (= (and b!1572508 res!1074507) b!1572509))

(declare-fun m!1446223 () Bool)

(assert (=> start!135102 m!1446223))

(declare-fun m!1446225 () Bool)

(assert (=> start!135102 m!1446225))

(declare-fun m!1446227 () Bool)

(assert (=> b!1572508 m!1446227))

(declare-fun m!1446229 () Bool)

(assert (=> b!1572509 m!1446229))

(assert (=> b!1572509 m!1446229))

(declare-fun m!1446231 () Bool)

(assert (=> b!1572509 m!1446231))

(push 1)

(assert (not b!1572508))

(assert (not b!1572509))

(assert (not start!135102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

