; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118352 () Bool)

(assert start!118352)

(declare-fun b!1383652 () Bool)

(declare-fun res!925356 () Bool)

(declare-fun e!784168 () Bool)

(assert (=> b!1383652 (=> (not res!925356) (not e!784168))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94573 0))(
  ( (array!94574 (arr!45660 (Array (_ BitVec 32) (_ BitVec 64))) (size!46211 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94573)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383652 (= res!925356 (and (= (size!46211 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46211 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46211 a!2938))))))

(declare-fun b!1383653 () Bool)

(assert (=> b!1383653 (= e!784168 (not true))))

(declare-datatypes ((SeekEntryResult!10074 0))(
  ( (MissingZero!10074 (index!42666 (_ BitVec 32))) (Found!10074 (index!42667 (_ BitVec 32))) (Intermediate!10074 (undefined!10886 Bool) (index!42668 (_ BitVec 32)) (x!124182 (_ BitVec 32))) (Undefined!10074) (MissingVacant!10074 (index!42669 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94573 (_ BitVec 32)) SeekEntryResult!10074)

(assert (=> b!1383653 (= (seekEntryOrOpen!0 (select (arr!45660 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45660 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94574 (store (arr!45660 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46211 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46039 0))(
  ( (Unit!46040) )
))
(declare-fun lt!608596 () Unit!46039)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46039)

(assert (=> b!1383653 (= lt!608596 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383654 () Bool)

(declare-fun res!925353 () Bool)

(assert (=> b!1383654 (=> (not res!925353) (not e!784168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383654 (= res!925353 (validKeyInArray!0 (select (arr!45660 a!2938) startIndex!16)))))

(declare-fun res!925354 () Bool)

(assert (=> start!118352 (=> (not res!925354) (not e!784168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118352 (= res!925354 (validMask!0 mask!2987))))

(assert (=> start!118352 e!784168))

(assert (=> start!118352 true))

(declare-fun array_inv!34605 (array!94573) Bool)

(assert (=> start!118352 (array_inv!34605 a!2938)))

(declare-fun b!1383655 () Bool)

(declare-fun res!925357 () Bool)

(assert (=> b!1383655 (=> (not res!925357) (not e!784168))))

(assert (=> b!1383655 (= res!925357 (and (not (= (select (arr!45660 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45660 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383656 () Bool)

(declare-fun res!925359 () Bool)

(assert (=> b!1383656 (=> (not res!925359) (not e!784168))))

(declare-datatypes ((List!32368 0))(
  ( (Nil!32365) (Cons!32364 (h!33573 (_ BitVec 64)) (t!47069 List!32368)) )
))
(declare-fun arrayNoDuplicates!0 (array!94573 (_ BitVec 32) List!32368) Bool)

(assert (=> b!1383656 (= res!925359 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32365))))

(declare-fun b!1383657 () Bool)

(declare-fun res!925358 () Bool)

(assert (=> b!1383657 (=> (not res!925358) (not e!784168))))

(assert (=> b!1383657 (= res!925358 (validKeyInArray!0 (select (arr!45660 a!2938) i!1065)))))

(declare-fun b!1383658 () Bool)

(declare-fun res!925355 () Bool)

(assert (=> b!1383658 (=> (not res!925355) (not e!784168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94573 (_ BitVec 32)) Bool)

(assert (=> b!1383658 (= res!925355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118352 res!925354) b!1383652))

(assert (= (and b!1383652 res!925356) b!1383657))

(assert (= (and b!1383657 res!925358) b!1383656))

(assert (= (and b!1383656 res!925359) b!1383658))

(assert (= (and b!1383658 res!925355) b!1383655))

(assert (= (and b!1383655 res!925357) b!1383654))

(assert (= (and b!1383654 res!925353) b!1383653))

(declare-fun m!1268877 () Bool)

(assert (=> b!1383656 m!1268877))

(declare-fun m!1268879 () Bool)

(assert (=> b!1383653 m!1268879))

(assert (=> b!1383653 m!1268879))

(declare-fun m!1268881 () Bool)

(assert (=> b!1383653 m!1268881))

(declare-fun m!1268883 () Bool)

(assert (=> b!1383653 m!1268883))

(declare-fun m!1268885 () Bool)

(assert (=> b!1383653 m!1268885))

(declare-fun m!1268887 () Bool)

(assert (=> b!1383653 m!1268887))

(assert (=> b!1383653 m!1268887))

(declare-fun m!1268889 () Bool)

(assert (=> b!1383653 m!1268889))

(declare-fun m!1268891 () Bool)

(assert (=> b!1383655 m!1268891))

(declare-fun m!1268893 () Bool)

(assert (=> b!1383658 m!1268893))

(assert (=> b!1383657 m!1268891))

(assert (=> b!1383657 m!1268891))

(declare-fun m!1268895 () Bool)

(assert (=> b!1383657 m!1268895))

(declare-fun m!1268897 () Bool)

(assert (=> start!118352 m!1268897))

(declare-fun m!1268899 () Bool)

(assert (=> start!118352 m!1268899))

(assert (=> b!1383654 m!1268887))

(assert (=> b!1383654 m!1268887))

(declare-fun m!1268901 () Bool)

(assert (=> b!1383654 m!1268901))

(push 1)

(assert (not b!1383654))

(assert (not start!118352))

(assert (not b!1383656))

(assert (not b!1383658))

(assert (not b!1383657))

(assert (not b!1383653))

(check-sat)

