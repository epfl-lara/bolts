; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135812 () Bool)

(assert start!135812)

(declare-fun res!1076218 () Bool)

(declare-fun e!878406 () Bool)

(assert (=> start!135812 (=> (not res!1076218) (not e!878406))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135812 (= res!1076218 (validMask!0 mask!898))))

(assert (=> start!135812 e!878406))

(assert (=> start!135812 true))

(declare-datatypes ((array!105330 0))(
  ( (array!105331 (arr!50801 (Array (_ BitVec 32) (_ BitVec 64))) (size!51352 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105330)

(declare-fun array_inv!39446 (array!105330) Bool)

(assert (=> start!135812 (array_inv!39446 _keys!605)))

(declare-fun b!1574937 () Bool)

(declare-fun res!1076217 () Bool)

(assert (=> b!1574937 (=> (not res!1076217) (not e!878406))))

(assert (=> b!1574937 (= res!1076217 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51352 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574938 () Bool)

(declare-fun res!1076219 () Bool)

(assert (=> b!1574938 (=> (not res!1076219) (not e!878406))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574938 (= res!1076219 (validKeyInArray!0 k0!761))))

(declare-fun b!1574939 () Bool)

(assert (=> b!1574939 (= e!878406 false)))

(declare-datatypes ((SeekEntryResult!13682 0))(
  ( (MissingZero!13682 (index!57125 (_ BitVec 32))) (Found!13682 (index!57126 (_ BitVec 32))) (Intermediate!13682 (undefined!14494 Bool) (index!57127 (_ BitVec 32)) (x!142087 (_ BitVec 32))) (Undefined!13682) (MissingVacant!13682 (index!57128 (_ BitVec 32))) )
))
(declare-fun lt!674974 () SeekEntryResult!13682)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105330 (_ BitVec 32)) SeekEntryResult!13682)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574939 (= lt!674974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135812 res!1076218) b!1574937))

(assert (= (and b!1574937 res!1076217) b!1574938))

(assert (= (and b!1574938 res!1076219) b!1574939))

(declare-fun m!1448087 () Bool)

(assert (=> start!135812 m!1448087))

(declare-fun m!1448089 () Bool)

(assert (=> start!135812 m!1448089))

(declare-fun m!1448091 () Bool)

(assert (=> b!1574938 m!1448091))

(declare-fun m!1448093 () Bool)

(assert (=> b!1574939 m!1448093))

(assert (=> b!1574939 m!1448093))

(declare-fun m!1448095 () Bool)

(assert (=> b!1574939 m!1448095))

(check-sat (not start!135812) (not b!1574939) (not b!1574938))
(check-sat)
