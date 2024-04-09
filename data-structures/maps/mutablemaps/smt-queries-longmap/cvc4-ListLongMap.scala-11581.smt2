; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135010 () Bool)

(assert start!135010)

(declare-fun res!1074304 () Bool)

(declare-fun e!876693 () Bool)

(assert (=> start!135010 (=> (not res!1074304) (not e!876693))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135010 (= res!1074304 (validMask!0 mask!889))))

(assert (=> start!135010 e!876693))

(assert (=> start!135010 true))

(declare-datatypes ((array!104969 0))(
  ( (array!104970 (arr!50646 (Array (_ BitVec 32) (_ BitVec 64))) (size!51197 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104969)

(declare-fun array_inv!39291 (array!104969) Bool)

(assert (=> start!135010 (array_inv!39291 _keys!600)))

(declare-fun b!1572201 () Bool)

(declare-fun res!1074305 () Bool)

(assert (=> b!1572201 (=> (not res!1074305) (not e!876693))))

(assert (=> b!1572201 (= res!1074305 (= (size!51197 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572202 () Bool)

(declare-fun res!1074303 () Bool)

(assert (=> b!1572202 (=> (not res!1074303) (not e!876693))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572202 (= res!1074303 (validKeyInArray!0 k!754))))

(declare-fun b!1572203 () Bool)

(assert (=> b!1572203 (= e!876693 false)))

(declare-datatypes ((SeekEntryResult!13575 0))(
  ( (MissingZero!13575 (index!56697 (_ BitVec 32))) (Found!13575 (index!56698 (_ BitVec 32))) (Intermediate!13575 (undefined!14387 Bool) (index!56699 (_ BitVec 32)) (x!141474 (_ BitVec 32))) (Undefined!13575) (MissingVacant!13575 (index!56700 (_ BitVec 32))) )
))
(declare-fun lt!673870 () SeekEntryResult!13575)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104969 (_ BitVec 32)) SeekEntryResult!13575)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572203 (= lt!673870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135010 res!1074304) b!1572201))

(assert (= (and b!1572201 res!1074305) b!1572202))

(assert (= (and b!1572202 res!1074303) b!1572203))

(declare-fun m!1446009 () Bool)

(assert (=> start!135010 m!1446009))

(declare-fun m!1446011 () Bool)

(assert (=> start!135010 m!1446011))

(declare-fun m!1446013 () Bool)

(assert (=> b!1572202 m!1446013))

(declare-fun m!1446015 () Bool)

(assert (=> b!1572203 m!1446015))

(assert (=> b!1572203 m!1446015))

(declare-fun m!1446017 () Bool)

(assert (=> b!1572203 m!1446017))

(push 1)

(assert (not b!1572203))

(assert (not b!1572202))

(assert (not start!135010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

