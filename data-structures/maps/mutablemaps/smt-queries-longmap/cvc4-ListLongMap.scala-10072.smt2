; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118610 () Bool)

(assert start!118610)

(declare-fun b!1386056 () Bool)

(declare-fun res!927420 () Bool)

(declare-fun e!785257 () Bool)

(assert (=> b!1386056 (=> (not res!927420) (not e!785257))))

(declare-datatypes ((array!94804 0))(
  ( (array!94805 (arr!45774 (Array (_ BitVec 32) (_ BitVec 64))) (size!46325 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94804)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386056 (= res!927420 (validKeyInArray!0 (select (arr!45774 a!2938) i!1065)))))

(declare-fun b!1386057 () Bool)

(declare-fun res!927417 () Bool)

(assert (=> b!1386057 (=> (not res!927417) (not e!785257))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1386057 (= res!927417 (and (= (size!46325 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46325 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46325 a!2938))))))

(declare-fun b!1386058 () Bool)

(assert (=> b!1386058 (= e!785257 (not (or (bvsgt #b00000000000000000000000000000000 (size!46325 a!2938)) (bvsle startIndex!16 (size!46325 a!2938)))))))

(declare-datatypes ((SeekEntryResult!10139 0))(
  ( (MissingZero!10139 (index!42926 (_ BitVec 32))) (Found!10139 (index!42927 (_ BitVec 32))) (Intermediate!10139 (undefined!10951 Bool) (index!42928 (_ BitVec 32)) (x!124551 (_ BitVec 32))) (Undefined!10139) (MissingVacant!10139 (index!42929 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94804 (_ BitVec 32)) SeekEntryResult!10139)

(assert (=> b!1386058 (= (seekEntryOrOpen!0 (select (arr!45774 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45774 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94805 (store (arr!45774 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46325 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46220 0))(
  ( (Unit!46221) )
))
(declare-fun lt!609316 () Unit!46220)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94804 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46220)

(assert (=> b!1386058 (= lt!609316 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1386059 () Bool)

(declare-fun res!927416 () Bool)

(assert (=> b!1386059 (=> (not res!927416) (not e!785257))))

(assert (=> b!1386059 (= res!927416 (validKeyInArray!0 (select (arr!45774 a!2938) startIndex!16)))))

(declare-fun b!1386060 () Bool)

(declare-fun res!927418 () Bool)

(assert (=> b!1386060 (=> (not res!927418) (not e!785257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94804 (_ BitVec 32)) Bool)

(assert (=> b!1386060 (= res!927418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386061 () Bool)

(declare-fun res!927414 () Bool)

(assert (=> b!1386061 (=> (not res!927414) (not e!785257))))

(declare-datatypes ((List!32482 0))(
  ( (Nil!32479) (Cons!32478 (h!33687 (_ BitVec 64)) (t!47183 List!32482)) )
))
(declare-fun arrayNoDuplicates!0 (array!94804 (_ BitVec 32) List!32482) Bool)

(assert (=> b!1386061 (= res!927414 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32479))))

(declare-fun res!927415 () Bool)

(assert (=> start!118610 (=> (not res!927415) (not e!785257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118610 (= res!927415 (validMask!0 mask!2987))))

(assert (=> start!118610 e!785257))

(assert (=> start!118610 true))

(declare-fun array_inv!34719 (array!94804) Bool)

(assert (=> start!118610 (array_inv!34719 a!2938)))

(declare-fun b!1386055 () Bool)

(declare-fun res!927419 () Bool)

(assert (=> b!1386055 (=> (not res!927419) (not e!785257))))

(assert (=> b!1386055 (= res!927419 (and (not (= (select (arr!45774 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45774 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118610 res!927415) b!1386057))

(assert (= (and b!1386057 res!927417) b!1386056))

(assert (= (and b!1386056 res!927420) b!1386061))

(assert (= (and b!1386061 res!927414) b!1386060))

(assert (= (and b!1386060 res!927418) b!1386055))

(assert (= (and b!1386055 res!927419) b!1386059))

(assert (= (and b!1386059 res!927416) b!1386058))

(declare-fun m!1271439 () Bool)

(assert (=> b!1386060 m!1271439))

(declare-fun m!1271441 () Bool)

(assert (=> b!1386059 m!1271441))

(assert (=> b!1386059 m!1271441))

(declare-fun m!1271443 () Bool)

(assert (=> b!1386059 m!1271443))

(declare-fun m!1271445 () Bool)

(assert (=> b!1386061 m!1271445))

(declare-fun m!1271447 () Bool)

(assert (=> b!1386055 m!1271447))

(declare-fun m!1271449 () Bool)

(assert (=> start!118610 m!1271449))

(declare-fun m!1271451 () Bool)

(assert (=> start!118610 m!1271451))

(declare-fun m!1271453 () Bool)

(assert (=> b!1386058 m!1271453))

(assert (=> b!1386058 m!1271453))

(declare-fun m!1271455 () Bool)

(assert (=> b!1386058 m!1271455))

(declare-fun m!1271457 () Bool)

(assert (=> b!1386058 m!1271457))

(declare-fun m!1271459 () Bool)

(assert (=> b!1386058 m!1271459))

(assert (=> b!1386058 m!1271441))

(assert (=> b!1386058 m!1271441))

(declare-fun m!1271461 () Bool)

(assert (=> b!1386058 m!1271461))

(assert (=> b!1386056 m!1271447))

(assert (=> b!1386056 m!1271447))

(declare-fun m!1271463 () Bool)

(assert (=> b!1386056 m!1271463))

(push 1)

(assert (not b!1386059))

(assert (not b!1386060))

(assert (not b!1386058))

(assert (not b!1386061))

(assert (not start!118610))

(assert (not b!1386056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

