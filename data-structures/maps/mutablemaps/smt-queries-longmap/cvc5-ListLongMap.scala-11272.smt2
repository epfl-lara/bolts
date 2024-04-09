; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131506 () Bool)

(assert start!131506)

(declare-fun b!1540881 () Bool)

(declare-fun res!1057569 () Bool)

(declare-fun e!856993 () Bool)

(assert (=> b!1540881 (=> (not res!1057569) (not e!856993))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102336 0))(
  ( (array!102337 (arr!49372 (Array (_ BitVec 32) (_ BitVec 64))) (size!49923 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102336)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1540881 (= res!1057569 (and (= (size!49923 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49923 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49923 a!3920))))))

(declare-fun res!1057567 () Bool)

(assert (=> start!131506 (=> (not res!1057567) (not e!856993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131506 (= res!1057567 (validMask!0 mask!4052))))

(assert (=> start!131506 e!856993))

(assert (=> start!131506 true))

(declare-fun array_inv!38317 (array!102336) Bool)

(assert (=> start!131506 (array_inv!38317 a!3920)))

(declare-fun b!1540882 () Bool)

(assert (=> b!1540882 (= e!856993 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102336 (_ BitVec 32)) Bool)

(assert (=> b!1540882 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51404 0))(
  ( (Unit!51405) )
))
(declare-fun lt!665485 () Unit!51404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51404)

(assert (=> b!1540882 (= lt!665485 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540883 () Bool)

(declare-fun res!1057566 () Bool)

(assert (=> b!1540883 (=> (not res!1057566) (not e!856993))))

(assert (=> b!1540883 (= res!1057566 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49923 a!3920))))))

(declare-fun b!1540884 () Bool)

(declare-fun res!1057565 () Bool)

(assert (=> b!1540884 (=> (not res!1057565) (not e!856993))))

(assert (=> b!1540884 (= res!1057565 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540885 () Bool)

(declare-fun res!1057568 () Bool)

(assert (=> b!1540885 (=> (not res!1057568) (not e!856993))))

(assert (=> b!1540885 (= res!1057568 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131506 res!1057567) b!1540881))

(assert (= (and b!1540881 res!1057569) b!1540884))

(assert (= (and b!1540884 res!1057565) b!1540883))

(assert (= (and b!1540883 res!1057566) b!1540885))

(assert (= (and b!1540885 res!1057568) b!1540882))

(declare-fun m!1422969 () Bool)

(assert (=> start!131506 m!1422969))

(declare-fun m!1422971 () Bool)

(assert (=> start!131506 m!1422971))

(declare-fun m!1422973 () Bool)

(assert (=> b!1540882 m!1422973))

(declare-fun m!1422975 () Bool)

(assert (=> b!1540882 m!1422975))

(declare-fun m!1422977 () Bool)

(assert (=> b!1540884 m!1422977))

(declare-fun m!1422979 () Bool)

(assert (=> b!1540885 m!1422979))

(push 1)

(assert (not b!1540882))

(assert (not start!131506))

(assert (not b!1540884))

(assert (not b!1540885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

