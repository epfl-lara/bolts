; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136142 () Bool)

(assert start!136142)

(declare-fun res!1076920 () Bool)

(declare-fun e!879140 () Bool)

(assert (=> start!136142 (=> (not res!1076920) (not e!879140))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136142 (= res!1076920 (validMask!0 mask!898))))

(assert (=> start!136142 e!879140))

(assert (=> start!136142 true))

(declare-datatypes ((array!105453 0))(
  ( (array!105454 (arr!50852 (Array (_ BitVec 32) (_ BitVec 64))) (size!51403 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105453)

(declare-fun array_inv!39497 (array!105453) Bool)

(assert (=> start!136142 (array_inv!39497 _keys!605)))

(declare-fun b!1576157 () Bool)

(declare-fun res!1076918 () Bool)

(assert (=> b!1576157 (=> (not res!1076918) (not e!879140))))

(assert (=> b!1576157 (= res!1076918 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51403 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576159 () Bool)

(declare-fun e!879139 () Bool)

(assert (=> b!1576159 (= e!879140 e!879139)))

(declare-fun res!1076919 () Bool)

(assert (=> b!1576159 (=> (not res!1076919) (not e!879139))))

(declare-datatypes ((SeekEntryResult!13733 0))(
  ( (MissingZero!13733 (index!57329 (_ BitVec 32))) (Found!13733 (index!57330 (_ BitVec 32))) (Intermediate!13733 (undefined!14545 Bool) (index!57331 (_ BitVec 32)) (x!142325 (_ BitVec 32))) (Undefined!13733) (MissingVacant!13733 (index!57332 (_ BitVec 32))) )
))
(declare-fun lt!675465 () SeekEntryResult!13733)

(declare-fun k0!761 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1576159 (= res!1076919 (and (not (undefined!14545 lt!675465)) ((_ is Intermediate!13733) lt!675465) (not (= (select (arr!50852 _keys!605) (index!57331 lt!675465)) k0!761)) (not (= (select (arr!50852 _keys!605) (index!57331 lt!675465)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50852 _keys!605) (index!57331 lt!675465)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57331 lt!675465) #b00000000000000000000000000000000) (bvslt (index!57331 lt!675465) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105453 (_ BitVec 32)) SeekEntryResult!13733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576159 (= lt!675465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576158 () Bool)

(declare-fun res!1076921 () Bool)

(assert (=> b!1576158 (=> (not res!1076921) (not e!879140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576158 (= res!1076921 (validKeyInArray!0 k0!761))))

(declare-fun b!1576160 () Bool)

(declare-fun lt!675466 () SeekEntryResult!13733)

(assert (=> b!1576160 (= e!879139 (and (not ((_ is Undefined!13733) lt!675466)) (ite ((_ is Found!13733) lt!675466) (not (= (select (arr!50852 _keys!605) (index!57330 lt!675466)) k0!761)) (ite ((_ is MissingZero!13733) lt!675466) (not (= (select (arr!50852 _keys!605) (index!57329 lt!675466)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not ((_ is MissingVacant!13733) lt!675466)) (not (= (select (arr!50852 _keys!605) (index!57332 lt!675466)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105453 (_ BitVec 32)) SeekEntryResult!13733)

(assert (=> b!1576160 (= lt!675466 (seekKeyOrZeroReturnVacant!0 (x!142325 lt!675465) (index!57331 lt!675465) (index!57331 lt!675465) k0!761 _keys!605 mask!898))))

(assert (= (and start!136142 res!1076920) b!1576157))

(assert (= (and b!1576157 res!1076918) b!1576158))

(assert (= (and b!1576158 res!1076921) b!1576159))

(assert (= (and b!1576159 res!1076919) b!1576160))

(declare-fun m!1448901 () Bool)

(assert (=> start!136142 m!1448901))

(declare-fun m!1448903 () Bool)

(assert (=> start!136142 m!1448903))

(declare-fun m!1448905 () Bool)

(assert (=> b!1576159 m!1448905))

(declare-fun m!1448907 () Bool)

(assert (=> b!1576159 m!1448907))

(assert (=> b!1576159 m!1448907))

(declare-fun m!1448909 () Bool)

(assert (=> b!1576159 m!1448909))

(declare-fun m!1448911 () Bool)

(assert (=> b!1576158 m!1448911))

(declare-fun m!1448913 () Bool)

(assert (=> b!1576160 m!1448913))

(declare-fun m!1448915 () Bool)

(assert (=> b!1576160 m!1448915))

(declare-fun m!1448917 () Bool)

(assert (=> b!1576160 m!1448917))

(declare-fun m!1448919 () Bool)

(assert (=> b!1576160 m!1448919))

(check-sat (not b!1576158) (not b!1576159) (not start!136142) (not b!1576160))
(check-sat)
(get-model)

