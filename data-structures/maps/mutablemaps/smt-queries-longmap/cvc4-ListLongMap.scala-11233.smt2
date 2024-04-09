; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131066 () Bool)

(assert start!131066)

(declare-fun b!1537368 () Bool)

(declare-fun e!855616 () Bool)

(assert (=> b!1537368 (= e!855616 (not true))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102091 0))(
  ( (array!102092 (arr!49257 (Array (_ BitVec 32) (_ BitVec 64))) (size!49808 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102091)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13412 0))(
  ( (MissingZero!13412 (index!56042 (_ BitVec 32))) (Found!13412 (index!56043 (_ BitVec 32))) (Intermediate!13412 (undefined!14224 Bool) (index!56044 (_ BitVec 32)) (x!137769 (_ BitVec 32))) (Undefined!13412) (MissingVacant!13412 (index!56045 (_ BitVec 32))) )
))
(declare-fun lt!664658 () SeekEntryResult!13412)

(declare-fun lt!664657 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102091 (_ BitVec 32)) SeekEntryResult!13412)

(assert (=> b!1537368 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664657 vacantIndex!5 (select (store (arr!49257 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102092 (store (arr!49257 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49808 a!2792)) mask!2480) lt!664658)))

(declare-datatypes ((Unit!51348 0))(
  ( (Unit!51349) )
))
(declare-fun lt!664660 () Unit!51348)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51348)

(assert (=> b!1537368 (= lt!664660 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664657 vacantIndex!5 mask!2480))))

(declare-fun b!1537369 () Bool)

(declare-fun res!1054597 () Bool)

(declare-fun e!855620 () Bool)

(assert (=> b!1537369 (=> (not res!1054597) (not e!855620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102091 (_ BitVec 32)) Bool)

(assert (=> b!1537369 (= res!1054597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1054601 () Bool)

(assert (=> start!131066 (=> (not res!1054601) (not e!855620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131066 (= res!1054601 (validMask!0 mask!2480))))

(assert (=> start!131066 e!855620))

(assert (=> start!131066 true))

(declare-fun array_inv!38202 (array!102091) Bool)

(assert (=> start!131066 (array_inv!38202 a!2792)))

(declare-fun b!1537370 () Bool)

(declare-fun res!1054602 () Bool)

(assert (=> b!1537370 (=> (not res!1054602) (not e!855620))))

(assert (=> b!1537370 (= res!1054602 (and (= (size!49808 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49808 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49808 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537371 () Bool)

(declare-fun res!1054598 () Bool)

(assert (=> b!1537371 (=> (not res!1054598) (not e!855620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537371 (= res!1054598 (validKeyInArray!0 (select (arr!49257 a!2792) i!951)))))

(declare-fun b!1537372 () Bool)

(declare-fun res!1054595 () Bool)

(assert (=> b!1537372 (=> (not res!1054595) (not e!855620))))

(assert (=> b!1537372 (= res!1054595 (validKeyInArray!0 (select (arr!49257 a!2792) j!64)))))

(declare-fun b!1537373 () Bool)

(declare-fun res!1054596 () Bool)

(assert (=> b!1537373 (=> (not res!1054596) (not e!855620))))

(declare-datatypes ((List!35911 0))(
  ( (Nil!35908) (Cons!35907 (h!37353 (_ BitVec 64)) (t!50612 List!35911)) )
))
(declare-fun arrayNoDuplicates!0 (array!102091 (_ BitVec 32) List!35911) Bool)

(assert (=> b!1537373 (= res!1054596 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35908))))

(declare-fun b!1537374 () Bool)

(declare-fun e!855619 () Bool)

(assert (=> b!1537374 (= e!855620 e!855619)))

(declare-fun res!1054594 () Bool)

(assert (=> b!1537374 (=> (not res!1054594) (not e!855619))))

(declare-fun lt!664659 () SeekEntryResult!13412)

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537374 (= res!1054594 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49257 a!2792) j!64) a!2792 mask!2480) lt!664659))))

(assert (=> b!1537374 (= lt!664659 (Found!13412 j!64))))

(declare-fun b!1537375 () Bool)

(declare-fun e!855617 () Bool)

(assert (=> b!1537375 (= e!855617 e!855616)))

(declare-fun res!1054600 () Bool)

(assert (=> b!1537375 (=> (not res!1054600) (not e!855616))))

(assert (=> b!1537375 (= res!1054600 (= lt!664658 lt!664659))))

(assert (=> b!1537375 (= lt!664658 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664657 vacantIndex!5 (select (arr!49257 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537376 () Bool)

(declare-fun res!1054592 () Bool)

(assert (=> b!1537376 (=> (not res!1054592) (not e!855620))))

(assert (=> b!1537376 (= res!1054592 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49808 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49808 a!2792)) (= (select (arr!49257 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537377 () Bool)

(declare-fun res!1054593 () Bool)

(assert (=> b!1537377 (=> (not res!1054593) (not e!855619))))

(assert (=> b!1537377 (= res!1054593 (not (= (select (arr!49257 a!2792) index!463) (select (arr!49257 a!2792) j!64))))))

(declare-fun b!1537378 () Bool)

(assert (=> b!1537378 (= e!855619 e!855617)))

(declare-fun res!1054599 () Bool)

(assert (=> b!1537378 (=> (not res!1054599) (not e!855617))))

(assert (=> b!1537378 (= res!1054599 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664657 #b00000000000000000000000000000000) (bvslt lt!664657 (size!49808 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537378 (= lt!664657 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131066 res!1054601) b!1537370))

(assert (= (and b!1537370 res!1054602) b!1537371))

(assert (= (and b!1537371 res!1054598) b!1537372))

(assert (= (and b!1537372 res!1054595) b!1537369))

(assert (= (and b!1537369 res!1054597) b!1537373))

(assert (= (and b!1537373 res!1054596) b!1537376))

(assert (= (and b!1537376 res!1054592) b!1537374))

(assert (= (and b!1537374 res!1054594) b!1537377))

(assert (= (and b!1537377 res!1054593) b!1537378))

(assert (= (and b!1537378 res!1054599) b!1537375))

(assert (= (and b!1537375 res!1054600) b!1537368))

(declare-fun m!1419923 () Bool)

(assert (=> b!1537371 m!1419923))

(assert (=> b!1537371 m!1419923))

(declare-fun m!1419925 () Bool)

(assert (=> b!1537371 m!1419925))

(declare-fun m!1419927 () Bool)

(assert (=> b!1537378 m!1419927))

(declare-fun m!1419929 () Bool)

(assert (=> b!1537373 m!1419929))

(declare-fun m!1419931 () Bool)

(assert (=> b!1537369 m!1419931))

(declare-fun m!1419933 () Bool)

(assert (=> start!131066 m!1419933))

(declare-fun m!1419935 () Bool)

(assert (=> start!131066 m!1419935))

(declare-fun m!1419937 () Bool)

(assert (=> b!1537374 m!1419937))

(assert (=> b!1537374 m!1419937))

(declare-fun m!1419939 () Bool)

(assert (=> b!1537374 m!1419939))

(assert (=> b!1537372 m!1419937))

(assert (=> b!1537372 m!1419937))

(declare-fun m!1419941 () Bool)

(assert (=> b!1537372 m!1419941))

(assert (=> b!1537375 m!1419937))

(assert (=> b!1537375 m!1419937))

(declare-fun m!1419943 () Bool)

(assert (=> b!1537375 m!1419943))

(declare-fun m!1419945 () Bool)

(assert (=> b!1537376 m!1419945))

(declare-fun m!1419947 () Bool)

(assert (=> b!1537377 m!1419947))

(assert (=> b!1537377 m!1419937))

(declare-fun m!1419949 () Bool)

(assert (=> b!1537368 m!1419949))

(declare-fun m!1419951 () Bool)

(assert (=> b!1537368 m!1419951))

(assert (=> b!1537368 m!1419951))

(declare-fun m!1419953 () Bool)

(assert (=> b!1537368 m!1419953))

(declare-fun m!1419955 () Bool)

(assert (=> b!1537368 m!1419955))

(push 1)

(assert (not b!1537373))

(assert (not b!1537372))

(assert (not b!1537374))

(assert (not b!1537375))

(assert (not b!1537369))

(assert (not start!131066))

(assert (not b!1537371))

(assert (not b!1537378))

(assert (not b!1537368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

