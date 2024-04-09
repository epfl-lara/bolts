; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118624 () Bool)

(assert start!118624)

(declare-fun b!1386224 () Bool)

(declare-fun e!785322 () Bool)

(declare-datatypes ((array!94818 0))(
  ( (array!94819 (arr!45781 (Array (_ BitVec 32) (_ BitVec 64))) (size!46332 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94818)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386224 (= e!785322 (validKeyInArray!0 (select (arr!45781 a!2938) startIndex!16)))))

(declare-fun res!927561 () Bool)

(declare-fun e!785324 () Bool)

(assert (=> start!118624 (=> (not res!927561) (not e!785324))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118624 (= res!927561 (validMask!0 mask!2987))))

(assert (=> start!118624 e!785324))

(assert (=> start!118624 true))

(declare-fun array_inv!34726 (array!94818) Bool)

(assert (=> start!118624 (array_inv!34726 a!2938)))

(declare-fun b!1386225 () Bool)

(declare-fun res!927566 () Bool)

(assert (=> b!1386225 (=> (not res!927566) (not e!785324))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386225 (= res!927566 (and (not (= (select (arr!45781 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45781 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386226 () Bool)

(declare-datatypes ((Unit!46237 0))(
  ( (Unit!46238) )
))
(declare-fun e!785321 () Unit!46237)

(declare-fun Unit!46239 () Unit!46237)

(assert (=> b!1386226 (= e!785321 Unit!46239)))

(declare-fun b!1386227 () Bool)

(declare-fun lt!609359 () Unit!46237)

(assert (=> b!1386227 (= e!785321 lt!609359)))

(declare-fun lt!609360 () Unit!46237)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94818 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46237)

(assert (=> b!1386227 (= lt!609360 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10146 0))(
  ( (MissingZero!10146 (index!42954 (_ BitVec 32))) (Found!10146 (index!42955 (_ BitVec 32))) (Intermediate!10146 (undefined!10958 Bool) (index!42956 (_ BitVec 32)) (x!124582 (_ BitVec 32))) (Undefined!10146) (MissingVacant!10146 (index!42957 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94818 (_ BitVec 32)) SeekEntryResult!10146)

(assert (=> b!1386227 (= (seekEntryOrOpen!0 (select (arr!45781 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45781 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94819 (store (arr!45781 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46332 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94818 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46237)

(assert (=> b!1386227 (= lt!609359 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94818 (_ BitVec 32)) Bool)

(assert (=> b!1386227 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386228 () Bool)

(declare-fun res!927567 () Bool)

(assert (=> b!1386228 (=> (not res!927567) (not e!785324))))

(assert (=> b!1386228 (= res!927567 (and (= (size!46332 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46332 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46332 a!2938))))))

(declare-fun b!1386229 () Bool)

(assert (=> b!1386229 (= e!785324 false)))

(declare-fun lt!609361 () Unit!46237)

(assert (=> b!1386229 (= lt!609361 e!785321)))

(declare-fun c!128774 () Bool)

(assert (=> b!1386229 (= c!128774 e!785322)))

(declare-fun res!927563 () Bool)

(assert (=> b!1386229 (=> (not res!927563) (not e!785322))))

(assert (=> b!1386229 (= res!927563 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386230 () Bool)

(declare-fun res!927562 () Bool)

(assert (=> b!1386230 (=> (not res!927562) (not e!785324))))

(assert (=> b!1386230 (= res!927562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386231 () Bool)

(declare-fun res!927564 () Bool)

(assert (=> b!1386231 (=> (not res!927564) (not e!785324))))

(declare-datatypes ((List!32489 0))(
  ( (Nil!32486) (Cons!32485 (h!33694 (_ BitVec 64)) (t!47190 List!32489)) )
))
(declare-fun arrayNoDuplicates!0 (array!94818 (_ BitVec 32) List!32489) Bool)

(assert (=> b!1386231 (= res!927564 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32486))))

(declare-fun b!1386232 () Bool)

(declare-fun res!927565 () Bool)

(assert (=> b!1386232 (=> (not res!927565) (not e!785324))))

(assert (=> b!1386232 (= res!927565 (validKeyInArray!0 (select (arr!45781 a!2938) i!1065)))))

(assert (= (and start!118624 res!927561) b!1386228))

(assert (= (and b!1386228 res!927567) b!1386232))

(assert (= (and b!1386232 res!927565) b!1386231))

(assert (= (and b!1386231 res!927564) b!1386230))

(assert (= (and b!1386230 res!927562) b!1386225))

(assert (= (and b!1386225 res!927566) b!1386229))

(assert (= (and b!1386229 res!927563) b!1386224))

(assert (= (and b!1386229 c!128774) b!1386227))

(assert (= (and b!1386229 (not c!128774)) b!1386226))

(declare-fun m!1271633 () Bool)

(assert (=> b!1386232 m!1271633))

(assert (=> b!1386232 m!1271633))

(declare-fun m!1271635 () Bool)

(assert (=> b!1386232 m!1271635))

(declare-fun m!1271637 () Bool)

(assert (=> b!1386227 m!1271637))

(declare-fun m!1271639 () Bool)

(assert (=> b!1386227 m!1271639))

(assert (=> b!1386227 m!1271639))

(declare-fun m!1271641 () Bool)

(assert (=> b!1386227 m!1271641))

(declare-fun m!1271643 () Bool)

(assert (=> b!1386227 m!1271643))

(declare-fun m!1271645 () Bool)

(assert (=> b!1386227 m!1271645))

(declare-fun m!1271647 () Bool)

(assert (=> b!1386227 m!1271647))

(declare-fun m!1271649 () Bool)

(assert (=> b!1386227 m!1271649))

(assert (=> b!1386227 m!1271647))

(declare-fun m!1271651 () Bool)

(assert (=> b!1386227 m!1271651))

(assert (=> b!1386224 m!1271647))

(assert (=> b!1386224 m!1271647))

(declare-fun m!1271653 () Bool)

(assert (=> b!1386224 m!1271653))

(declare-fun m!1271655 () Bool)

(assert (=> start!118624 m!1271655))

(declare-fun m!1271657 () Bool)

(assert (=> start!118624 m!1271657))

(declare-fun m!1271659 () Bool)

(assert (=> b!1386230 m!1271659))

(assert (=> b!1386225 m!1271633))

(declare-fun m!1271661 () Bool)

(assert (=> b!1386231 m!1271661))

(push 1)

(assert (not b!1386227))

(assert (not b!1386232))

(assert (not b!1386224))

(assert (not b!1386230))

(assert (not b!1386231))

(assert (not start!118624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

