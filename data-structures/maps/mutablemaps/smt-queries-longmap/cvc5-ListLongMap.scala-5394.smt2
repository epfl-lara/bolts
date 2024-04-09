; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71986 () Bool)

(assert start!71986)

(declare-fun b!836007 () Bool)

(declare-fun res!568914 () Bool)

(declare-fun e!466406 () Bool)

(assert (=> b!836007 (=> (not res!568914) (not e!466406))))

(declare-datatypes ((array!46840 0))(
  ( (array!46841 (arr!22450 (Array (_ BitVec 32) (_ BitVec 64))) (size!22871 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46840)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!836007 (= res!568914 (not (validKeyInArray!0 (select (arr!22450 a!4227) i!1466))))))

(declare-fun b!836008 () Bool)

(declare-fun res!568910 () Bool)

(declare-fun e!466404 () Bool)

(assert (=> b!836008 (=> (not res!568910) (not e!466404))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!836008 (= res!568910 (= to!390 (size!22871 a!4227)))))

(declare-fun b!836010 () Bool)

(declare-fun res!568913 () Bool)

(assert (=> b!836010 (=> (not res!568913) (not e!466406))))

(assert (=> b!836010 (= res!568913 (and (bvslt (size!22871 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22871 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun lt!380322 () array!46840)

(declare-fun b!836011 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46840 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!836011 (= e!466404 (not (= (arrayCountValidKeys!0 lt!380322 (bvadd #b00000000000000000000000000000001 i!1466) (size!22871 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22871 a!4227)))))))

(declare-fun b!836012 () Bool)

(assert (=> b!836012 (= e!466406 e!466404)))

(declare-fun res!568911 () Bool)

(assert (=> b!836012 (=> (not res!568911) (not e!466404))))

(assert (=> b!836012 (= res!568911 (= (arrayCountValidKeys!0 lt!380322 (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!836012 (= lt!380322 (array!46841 (store (arr!22450 a!4227) i!1466 k!2968) (size!22871 a!4227)))))

(declare-fun res!568915 () Bool)

(assert (=> start!71986 (=> (not res!568915) (not e!466406))))

(assert (=> start!71986 (= res!568915 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22871 a!4227))))))

(assert (=> start!71986 e!466406))

(assert (=> start!71986 true))

(declare-fun array_inv!17873 (array!46840) Bool)

(assert (=> start!71986 (array_inv!17873 a!4227)))

(declare-fun b!836009 () Bool)

(declare-fun res!568912 () Bool)

(assert (=> b!836009 (=> (not res!568912) (not e!466406))))

(assert (=> b!836009 (= res!568912 (validKeyInArray!0 k!2968))))

(assert (= (and start!71986 res!568915) b!836007))

(assert (= (and b!836007 res!568914) b!836009))

(assert (= (and b!836009 res!568912) b!836010))

(assert (= (and b!836010 res!568913) b!836012))

(assert (= (and b!836012 res!568911) b!836008))

(assert (= (and b!836008 res!568910) b!836011))

(declare-fun m!781519 () Bool)

(assert (=> b!836012 m!781519))

(declare-fun m!781521 () Bool)

(assert (=> b!836012 m!781521))

(declare-fun m!781523 () Bool)

(assert (=> b!836012 m!781523))

(declare-fun m!781525 () Bool)

(assert (=> b!836009 m!781525))

(declare-fun m!781527 () Bool)

(assert (=> b!836007 m!781527))

(assert (=> b!836007 m!781527))

(declare-fun m!781529 () Bool)

(assert (=> b!836007 m!781529))

(declare-fun m!781531 () Bool)

(assert (=> b!836011 m!781531))

(declare-fun m!781533 () Bool)

(assert (=> b!836011 m!781533))

(declare-fun m!781535 () Bool)

(assert (=> start!71986 m!781535))

(push 1)

(assert (not b!836009))

(assert (not b!836011))

(assert (not b!836007))

