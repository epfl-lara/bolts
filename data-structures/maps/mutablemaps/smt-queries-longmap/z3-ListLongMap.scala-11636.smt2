; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135830 () Bool)

(assert start!135830)

(declare-fun res!1076298 () Bool)

(declare-fun e!878460 () Bool)

(assert (=> start!135830 (=> (not res!1076298) (not e!878460))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135830 (= res!1076298 (validMask!0 mask!898))))

(assert (=> start!135830 e!878460))

(assert (=> start!135830 true))

(declare-datatypes ((array!105348 0))(
  ( (array!105349 (arr!50810 (Array (_ BitVec 32) (_ BitVec 64))) (size!51361 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105348)

(declare-fun array_inv!39455 (array!105348) Bool)

(assert (=> start!135830 (array_inv!39455 _keys!605)))

(declare-fun b!1575018 () Bool)

(declare-fun res!1076300 () Bool)

(assert (=> b!1575018 (=> (not res!1076300) (not e!878460))))

(assert (=> b!1575018 (= res!1076300 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51361 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575019 () Bool)

(declare-fun res!1076299 () Bool)

(assert (=> b!1575019 (=> (not res!1076299) (not e!878460))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575019 (= res!1076299 (validKeyInArray!0 k0!761))))

(declare-fun b!1575020 () Bool)

(assert (=> b!1575020 (= e!878460 false)))

(declare-datatypes ((SeekEntryResult!13691 0))(
  ( (MissingZero!13691 (index!57161 (_ BitVec 32))) (Found!13691 (index!57162 (_ BitVec 32))) (Intermediate!13691 (undefined!14503 Bool) (index!57163 (_ BitVec 32)) (x!142120 (_ BitVec 32))) (Undefined!13691) (MissingVacant!13691 (index!57164 (_ BitVec 32))) )
))
(declare-fun lt!675001 () SeekEntryResult!13691)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105348 (_ BitVec 32)) SeekEntryResult!13691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575020 (= lt!675001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135830 res!1076298) b!1575018))

(assert (= (and b!1575018 res!1076300) b!1575019))

(assert (= (and b!1575019 res!1076299) b!1575020))

(declare-fun m!1448177 () Bool)

(assert (=> start!135830 m!1448177))

(declare-fun m!1448179 () Bool)

(assert (=> start!135830 m!1448179))

(declare-fun m!1448181 () Bool)

(assert (=> b!1575019 m!1448181))

(declare-fun m!1448183 () Bool)

(assert (=> b!1575020 m!1448183))

(assert (=> b!1575020 m!1448183))

(declare-fun m!1448185 () Bool)

(assert (=> b!1575020 m!1448185))

(check-sat (not b!1575019) (not start!135830) (not b!1575020))
