; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118378 () Bool)

(assert start!118378)

(declare-fun b!1384001 () Bool)

(declare-fun res!925626 () Bool)

(declare-fun e!784324 () Bool)

(assert (=> b!1384001 (=> (not res!925626) (not e!784324))))

(declare-datatypes ((array!94599 0))(
  ( (array!94600 (arr!45673 (Array (_ BitVec 32) (_ BitVec 64))) (size!46224 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94599)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384001 (= res!925626 (and (not (= (select (arr!45673 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45673 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384002 () Bool)

(declare-fun res!925632 () Bool)

(assert (=> b!1384002 (=> (not res!925632) (not e!784324))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94599 (_ BitVec 32)) Bool)

(assert (=> b!1384002 (= res!925632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384003 () Bool)

(declare-datatypes ((Unit!46077 0))(
  ( (Unit!46078) )
))
(declare-fun e!784325 () Unit!46077)

(declare-fun lt!608713 () Unit!46077)

(assert (=> b!1384003 (= e!784325 lt!608713)))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!608711 () Unit!46077)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46077)

(assert (=> b!1384003 (= lt!608711 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10087 0))(
  ( (MissingZero!10087 (index!42718 (_ BitVec 32))) (Found!10087 (index!42719 (_ BitVec 32))) (Intermediate!10087 (undefined!10899 Bool) (index!42720 (_ BitVec 32)) (x!124235 (_ BitVec 32))) (Undefined!10087) (MissingVacant!10087 (index!42721 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94599 (_ BitVec 32)) SeekEntryResult!10087)

(assert (=> b!1384003 (= (seekEntryOrOpen!0 (select (arr!45673 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45673 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94600 (store (arr!45673 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46224 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46077)

(assert (=> b!1384003 (= lt!608713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384003 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384004 () Bool)

(assert (=> b!1384004 (= e!784324 false)))

(declare-fun lt!608712 () Unit!46077)

(assert (=> b!1384004 (= lt!608712 e!784325)))

(declare-fun c!128630 () Bool)

(declare-fun e!784323 () Bool)

(assert (=> b!1384004 (= c!128630 e!784323)))

(declare-fun res!925628 () Bool)

(assert (=> b!1384004 (=> (not res!925628) (not e!784323))))

(assert (=> b!1384004 (= res!925628 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384005 () Bool)

(declare-fun res!925629 () Bool)

(assert (=> b!1384005 (=> (not res!925629) (not e!784324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384005 (= res!925629 (validKeyInArray!0 (select (arr!45673 a!2938) i!1065)))))

(declare-fun res!925630 () Bool)

(assert (=> start!118378 (=> (not res!925630) (not e!784324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118378 (= res!925630 (validMask!0 mask!2987))))

(assert (=> start!118378 e!784324))

(assert (=> start!118378 true))

(declare-fun array_inv!34618 (array!94599) Bool)

(assert (=> start!118378 (array_inv!34618 a!2938)))

(declare-fun b!1384006 () Bool)

(assert (=> b!1384006 (= e!784323 (validKeyInArray!0 (select (arr!45673 a!2938) startIndex!16)))))

(declare-fun b!1384007 () Bool)

(declare-fun res!925631 () Bool)

(assert (=> b!1384007 (=> (not res!925631) (not e!784324))))

(declare-datatypes ((List!32381 0))(
  ( (Nil!32378) (Cons!32377 (h!33586 (_ BitVec 64)) (t!47082 List!32381)) )
))
(declare-fun arrayNoDuplicates!0 (array!94599 (_ BitVec 32) List!32381) Bool)

(assert (=> b!1384007 (= res!925631 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32378))))

(declare-fun b!1384008 () Bool)

(declare-fun Unit!46079 () Unit!46077)

(assert (=> b!1384008 (= e!784325 Unit!46079)))

(declare-fun b!1384009 () Bool)

(declare-fun res!925627 () Bool)

(assert (=> b!1384009 (=> (not res!925627) (not e!784324))))

(assert (=> b!1384009 (= res!925627 (and (= (size!46224 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46224 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46224 a!2938))))))

(assert (= (and start!118378 res!925630) b!1384009))

(assert (= (and b!1384009 res!925627) b!1384005))

(assert (= (and b!1384005 res!925629) b!1384007))

(assert (= (and b!1384007 res!925631) b!1384002))

(assert (= (and b!1384002 res!925632) b!1384001))

(assert (= (and b!1384001 res!925626) b!1384004))

(assert (= (and b!1384004 res!925628) b!1384006))

(assert (= (and b!1384004 c!128630) b!1384003))

(assert (= (and b!1384004 (not c!128630)) b!1384008))

(declare-fun m!1269263 () Bool)

(assert (=> b!1384007 m!1269263))

(declare-fun m!1269265 () Bool)

(assert (=> b!1384005 m!1269265))

(assert (=> b!1384005 m!1269265))

(declare-fun m!1269267 () Bool)

(assert (=> b!1384005 m!1269267))

(declare-fun m!1269269 () Bool)

(assert (=> b!1384006 m!1269269))

(assert (=> b!1384006 m!1269269))

(declare-fun m!1269271 () Bool)

(assert (=> b!1384006 m!1269271))

(declare-fun m!1269273 () Bool)

(assert (=> b!1384002 m!1269273))

(assert (=> b!1384001 m!1269265))

(declare-fun m!1269275 () Bool)

(assert (=> start!118378 m!1269275))

(declare-fun m!1269277 () Bool)

(assert (=> start!118378 m!1269277))

(declare-fun m!1269279 () Bool)

(assert (=> b!1384003 m!1269279))

(declare-fun m!1269281 () Bool)

(assert (=> b!1384003 m!1269281))

(assert (=> b!1384003 m!1269281))

(declare-fun m!1269283 () Bool)

(assert (=> b!1384003 m!1269283))

(declare-fun m!1269285 () Bool)

(assert (=> b!1384003 m!1269285))

(declare-fun m!1269287 () Bool)

(assert (=> b!1384003 m!1269287))

(assert (=> b!1384003 m!1269269))

(declare-fun m!1269289 () Bool)

(assert (=> b!1384003 m!1269289))

(assert (=> b!1384003 m!1269269))

(declare-fun m!1269291 () Bool)

(assert (=> b!1384003 m!1269291))

(push 1)

(assert (not b!1384002))

(assert (not b!1384005))

(assert (not b!1384007))

(assert (not start!118378))

(assert (not b!1384003))

(assert (not b!1384006))

(check-sat)

(pop 1)

