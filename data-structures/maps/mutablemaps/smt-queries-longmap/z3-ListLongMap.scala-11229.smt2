; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131040 () Bool)

(assert start!131040)

(declare-fun b!1536939 () Bool)

(declare-fun res!1054166 () Bool)

(declare-fun e!855422 () Bool)

(assert (=> b!1536939 (=> (not res!1054166) (not e!855422))))

(declare-datatypes ((array!102065 0))(
  ( (array!102066 (arr!49244 (Array (_ BitVec 32) (_ BitVec 64))) (size!49795 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102065)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536939 (= res!1054166 (validKeyInArray!0 (select (arr!49244 a!2792) i!951)))))

(declare-fun b!1536940 () Bool)

(declare-fun res!1054169 () Bool)

(assert (=> b!1536940 (=> (not res!1054169) (not e!855422))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102065 (_ BitVec 32)) Bool)

(assert (=> b!1536940 (= res!1054169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536941 () Bool)

(declare-fun res!1054172 () Bool)

(assert (=> b!1536941 (=> (not res!1054172) (not e!855422))))

(declare-datatypes ((List!35898 0))(
  ( (Nil!35895) (Cons!35894 (h!37340 (_ BitVec 64)) (t!50599 List!35898)) )
))
(declare-fun arrayNoDuplicates!0 (array!102065 (_ BitVec 32) List!35898) Bool)

(assert (=> b!1536941 (= res!1054172 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35895))))

(declare-fun b!1536942 () Bool)

(declare-fun res!1054167 () Bool)

(assert (=> b!1536942 (=> (not res!1054167) (not e!855422))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1536942 (= res!1054167 (validKeyInArray!0 (select (arr!49244 a!2792) j!64)))))

(declare-fun b!1536943 () Bool)

(declare-fun res!1054163 () Bool)

(assert (=> b!1536943 (=> (not res!1054163) (not e!855422))))

(assert (=> b!1536943 (= res!1054163 (and (= (size!49795 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49795 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49795 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054171 () Bool)

(assert (=> start!131040 (=> (not res!1054171) (not e!855422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131040 (= res!1054171 (validMask!0 mask!2480))))

(assert (=> start!131040 e!855422))

(assert (=> start!131040 true))

(declare-fun array_inv!38189 (array!102065) Bool)

(assert (=> start!131040 (array_inv!38189 a!2792)))

(declare-fun b!1536944 () Bool)

(declare-fun res!1054173 () Bool)

(declare-fun e!855425 () Bool)

(assert (=> b!1536944 (=> (not res!1054173) (not e!855425))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536944 (= res!1054173 (not (= (select (arr!49244 a!2792) index!463) (select (arr!49244 a!2792) j!64))))))

(declare-fun b!1536945 () Bool)

(declare-fun res!1054165 () Bool)

(assert (=> b!1536945 (=> (not res!1054165) (not e!855422))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1536945 (= res!1054165 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49795 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49795 a!2792)) (= (select (arr!49244 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536946 () Bool)

(declare-fun e!855423 () Bool)

(assert (=> b!1536946 (= e!855423 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-fun lt!664501 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13399 0))(
  ( (MissingZero!13399 (index!55990 (_ BitVec 32))) (Found!13399 (index!55991 (_ BitVec 32))) (Intermediate!13399 (undefined!14211 Bool) (index!55992 (_ BitVec 32)) (x!137724 (_ BitVec 32))) (Undefined!13399) (MissingVacant!13399 (index!55993 (_ BitVec 32))) )
))
(declare-fun lt!664502 () SeekEntryResult!13399)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102065 (_ BitVec 32)) SeekEntryResult!13399)

(assert (=> b!1536946 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664501 vacantIndex!5 (select (store (arr!49244 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102066 (store (arr!49244 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49795 a!2792)) mask!2480) lt!664502)))

(declare-datatypes ((Unit!51322 0))(
  ( (Unit!51323) )
))
(declare-fun lt!664503 () Unit!51322)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51322)

(assert (=> b!1536946 (= lt!664503 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664501 vacantIndex!5 mask!2480))))

(declare-fun b!1536947 () Bool)

(declare-fun e!855421 () Bool)

(assert (=> b!1536947 (= e!855421 e!855423)))

(declare-fun res!1054164 () Bool)

(assert (=> b!1536947 (=> (not res!1054164) (not e!855423))))

(declare-fun lt!664504 () SeekEntryResult!13399)

(assert (=> b!1536947 (= res!1054164 (= lt!664502 lt!664504))))

(assert (=> b!1536947 (= lt!664502 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664501 vacantIndex!5 (select (arr!49244 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536948 () Bool)

(assert (=> b!1536948 (= e!855422 e!855425)))

(declare-fun res!1054170 () Bool)

(assert (=> b!1536948 (=> (not res!1054170) (not e!855425))))

(assert (=> b!1536948 (= res!1054170 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49244 a!2792) j!64) a!2792 mask!2480) lt!664504))))

(assert (=> b!1536948 (= lt!664504 (Found!13399 j!64))))

(declare-fun b!1536949 () Bool)

(assert (=> b!1536949 (= e!855425 e!855421)))

(declare-fun res!1054168 () Bool)

(assert (=> b!1536949 (=> (not res!1054168) (not e!855421))))

(assert (=> b!1536949 (= res!1054168 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664501 #b00000000000000000000000000000000) (bvslt lt!664501 (size!49795 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536949 (= lt!664501 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131040 res!1054171) b!1536943))

(assert (= (and b!1536943 res!1054163) b!1536939))

(assert (= (and b!1536939 res!1054166) b!1536942))

(assert (= (and b!1536942 res!1054167) b!1536940))

(assert (= (and b!1536940 res!1054169) b!1536941))

(assert (= (and b!1536941 res!1054172) b!1536945))

(assert (= (and b!1536945 res!1054165) b!1536948))

(assert (= (and b!1536948 res!1054170) b!1536944))

(assert (= (and b!1536944 res!1054173) b!1536949))

(assert (= (and b!1536949 res!1054168) b!1536947))

(assert (= (and b!1536947 res!1054164) b!1536946))

(declare-fun m!1419481 () Bool)

(assert (=> b!1536944 m!1419481))

(declare-fun m!1419483 () Bool)

(assert (=> b!1536944 m!1419483))

(assert (=> b!1536942 m!1419483))

(assert (=> b!1536942 m!1419483))

(declare-fun m!1419485 () Bool)

(assert (=> b!1536942 m!1419485))

(declare-fun m!1419487 () Bool)

(assert (=> b!1536949 m!1419487))

(declare-fun m!1419489 () Bool)

(assert (=> b!1536945 m!1419489))

(declare-fun m!1419491 () Bool)

(assert (=> b!1536940 m!1419491))

(declare-fun m!1419493 () Bool)

(assert (=> b!1536946 m!1419493))

(declare-fun m!1419495 () Bool)

(assert (=> b!1536946 m!1419495))

(assert (=> b!1536946 m!1419495))

(declare-fun m!1419497 () Bool)

(assert (=> b!1536946 m!1419497))

(declare-fun m!1419499 () Bool)

(assert (=> b!1536946 m!1419499))

(declare-fun m!1419501 () Bool)

(assert (=> start!131040 m!1419501))

(declare-fun m!1419503 () Bool)

(assert (=> start!131040 m!1419503))

(assert (=> b!1536948 m!1419483))

(assert (=> b!1536948 m!1419483))

(declare-fun m!1419505 () Bool)

(assert (=> b!1536948 m!1419505))

(declare-fun m!1419507 () Bool)

(assert (=> b!1536941 m!1419507))

(declare-fun m!1419509 () Bool)

(assert (=> b!1536939 m!1419509))

(assert (=> b!1536939 m!1419509))

(declare-fun m!1419511 () Bool)

(assert (=> b!1536939 m!1419511))

(assert (=> b!1536947 m!1419483))

(assert (=> b!1536947 m!1419483))

(declare-fun m!1419513 () Bool)

(assert (=> b!1536947 m!1419513))

(check-sat (not b!1536946) (not b!1536939) (not b!1536948) (not start!131040) (not b!1536942) (not b!1536941) (not b!1536949) (not b!1536947) (not b!1536940))
(check-sat)
