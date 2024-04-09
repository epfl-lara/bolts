; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135818 () Bool)

(assert start!135818)

(declare-fun res!1076246 () Bool)

(declare-fun e!878424 () Bool)

(assert (=> start!135818 (=> (not res!1076246) (not e!878424))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135818 (= res!1076246 (validMask!0 mask!898))))

(assert (=> start!135818 e!878424))

(assert (=> start!135818 true))

(declare-datatypes ((array!105336 0))(
  ( (array!105337 (arr!50804 (Array (_ BitVec 32) (_ BitVec 64))) (size!51355 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105336)

(declare-fun array_inv!39449 (array!105336) Bool)

(assert (=> start!135818 (array_inv!39449 _keys!605)))

(declare-fun b!1574964 () Bool)

(declare-fun res!1076244 () Bool)

(assert (=> b!1574964 (=> (not res!1076244) (not e!878424))))

(assert (=> b!1574964 (= res!1076244 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51355 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574965 () Bool)

(declare-fun res!1076245 () Bool)

(assert (=> b!1574965 (=> (not res!1076245) (not e!878424))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574965 (= res!1076245 (validKeyInArray!0 k0!761))))

(declare-fun b!1574966 () Bool)

(assert (=> b!1574966 (= e!878424 false)))

(declare-datatypes ((SeekEntryResult!13685 0))(
  ( (MissingZero!13685 (index!57137 (_ BitVec 32))) (Found!13685 (index!57138 (_ BitVec 32))) (Intermediate!13685 (undefined!14497 Bool) (index!57139 (_ BitVec 32)) (x!142098 (_ BitVec 32))) (Undefined!13685) (MissingVacant!13685 (index!57140 (_ BitVec 32))) )
))
(declare-fun lt!674983 () SeekEntryResult!13685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105336 (_ BitVec 32)) SeekEntryResult!13685)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574966 (= lt!674983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135818 res!1076246) b!1574964))

(assert (= (and b!1574964 res!1076244) b!1574965))

(assert (= (and b!1574965 res!1076245) b!1574966))

(declare-fun m!1448117 () Bool)

(assert (=> start!135818 m!1448117))

(declare-fun m!1448119 () Bool)

(assert (=> start!135818 m!1448119))

(declare-fun m!1448121 () Bool)

(assert (=> b!1574965 m!1448121))

(declare-fun m!1448123 () Bool)

(assert (=> b!1574966 m!1448123))

(assert (=> b!1574966 m!1448123))

(declare-fun m!1448125 () Bool)

(assert (=> b!1574966 m!1448125))

(check-sat (not b!1574965) (not start!135818) (not b!1574966))
