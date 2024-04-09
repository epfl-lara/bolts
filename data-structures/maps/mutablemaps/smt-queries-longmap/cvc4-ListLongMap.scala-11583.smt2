; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135022 () Bool)

(assert start!135022)

(declare-fun res!1074359 () Bool)

(declare-fun e!876729 () Bool)

(assert (=> start!135022 (=> (not res!1074359) (not e!876729))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135022 (= res!1074359 (validMask!0 mask!889))))

(assert (=> start!135022 e!876729))

(assert (=> start!135022 true))

(declare-datatypes ((array!104981 0))(
  ( (array!104982 (arr!50652 (Array (_ BitVec 32) (_ BitVec 64))) (size!51203 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104981)

(declare-fun array_inv!39297 (array!104981) Bool)

(assert (=> start!135022 (array_inv!39297 _keys!600)))

(declare-fun b!1572255 () Bool)

(declare-fun res!1074358 () Bool)

(assert (=> b!1572255 (=> (not res!1074358) (not e!876729))))

(assert (=> b!1572255 (= res!1074358 (= (size!51203 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572256 () Bool)

(declare-fun res!1074357 () Bool)

(assert (=> b!1572256 (=> (not res!1074357) (not e!876729))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572256 (= res!1074357 (validKeyInArray!0 k!754))))

(declare-fun b!1572257 () Bool)

(assert (=> b!1572257 (= e!876729 false)))

(declare-datatypes ((SeekEntryResult!13581 0))(
  ( (MissingZero!13581 (index!56721 (_ BitVec 32))) (Found!13581 (index!56722 (_ BitVec 32))) (Intermediate!13581 (undefined!14393 Bool) (index!56723 (_ BitVec 32)) (x!141496 (_ BitVec 32))) (Undefined!13581) (MissingVacant!13581 (index!56724 (_ BitVec 32))) )
))
(declare-fun lt!673888 () SeekEntryResult!13581)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104981 (_ BitVec 32)) SeekEntryResult!13581)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572257 (= lt!673888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135022 res!1074359) b!1572255))

(assert (= (and b!1572255 res!1074358) b!1572256))

(assert (= (and b!1572256 res!1074357) b!1572257))

(declare-fun m!1446069 () Bool)

(assert (=> start!135022 m!1446069))

(declare-fun m!1446071 () Bool)

(assert (=> start!135022 m!1446071))

(declare-fun m!1446073 () Bool)

(assert (=> b!1572256 m!1446073))

(declare-fun m!1446075 () Bool)

(assert (=> b!1572257 m!1446075))

(assert (=> b!1572257 m!1446075))

(declare-fun m!1446077 () Bool)

(assert (=> b!1572257 m!1446077))

(push 1)

(assert (not start!135022))

(assert (not b!1572257))

(assert (not b!1572256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

