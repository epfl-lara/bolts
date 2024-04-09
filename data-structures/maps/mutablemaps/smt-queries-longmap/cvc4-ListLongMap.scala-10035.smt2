; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118358 () Bool)

(assert start!118358)

(declare-fun res!925418 () Bool)

(declare-fun e!784202 () Bool)

(assert (=> start!118358 (=> (not res!925418) (not e!784202))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118358 (= res!925418 (validMask!0 mask!2987))))

(assert (=> start!118358 e!784202))

(assert (=> start!118358 true))

(declare-datatypes ((array!94579 0))(
  ( (array!94580 (arr!45663 (Array (_ BitVec 32) (_ BitVec 64))) (size!46214 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94579)

(declare-fun array_inv!34608 (array!94579) Bool)

(assert (=> start!118358 (array_inv!34608 a!2938)))

(declare-fun b!1383731 () Bool)

(declare-fun res!925420 () Bool)

(assert (=> b!1383731 (=> (not res!925420) (not e!784202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94579 (_ BitVec 32)) Bool)

(assert (=> b!1383731 (= res!925420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383732 () Bool)

(declare-datatypes ((Unit!46047 0))(
  ( (Unit!46048) )
))
(declare-fun e!784204 () Unit!46047)

(declare-fun Unit!46049 () Unit!46047)

(assert (=> b!1383732 (= e!784204 Unit!46049)))

(declare-fun b!1383733 () Bool)

(declare-fun lt!608623 () Unit!46047)

(assert (=> b!1383733 (= e!784204 lt!608623)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!608622 () Unit!46047)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46047)

(assert (=> b!1383733 (= lt!608622 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10077 0))(
  ( (MissingZero!10077 (index!42678 (_ BitVec 32))) (Found!10077 (index!42679 (_ BitVec 32))) (Intermediate!10077 (undefined!10889 Bool) (index!42680 (_ BitVec 32)) (x!124193 (_ BitVec 32))) (Undefined!10077) (MissingVacant!10077 (index!42681 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94579 (_ BitVec 32)) SeekEntryResult!10077)

(assert (=> b!1383733 (= (seekEntryOrOpen!0 (select (arr!45663 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45663 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94580 (store (arr!45663 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46214 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46047)

(assert (=> b!1383733 (= lt!608623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1383733 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383734 () Bool)

(declare-fun res!925416 () Bool)

(assert (=> b!1383734 (=> (not res!925416) (not e!784202))))

(assert (=> b!1383734 (= res!925416 (and (not (= (select (arr!45663 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45663 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383735 () Bool)

(declare-fun e!784203 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383735 (= e!784203 (validKeyInArray!0 (select (arr!45663 a!2938) startIndex!16)))))

(declare-fun b!1383736 () Bool)

(declare-fun res!925421 () Bool)

(assert (=> b!1383736 (=> (not res!925421) (not e!784202))))

(declare-datatypes ((List!32371 0))(
  ( (Nil!32368) (Cons!32367 (h!33576 (_ BitVec 64)) (t!47072 List!32371)) )
))
(declare-fun arrayNoDuplicates!0 (array!94579 (_ BitVec 32) List!32371) Bool)

(assert (=> b!1383736 (= res!925421 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32368))))

(declare-fun b!1383737 () Bool)

(declare-fun res!925417 () Bool)

(assert (=> b!1383737 (=> (not res!925417) (not e!784202))))

(assert (=> b!1383737 (= res!925417 (validKeyInArray!0 (select (arr!45663 a!2938) i!1065)))))

(declare-fun b!1383738 () Bool)

(declare-fun res!925419 () Bool)

(assert (=> b!1383738 (=> (not res!925419) (not e!784202))))

(assert (=> b!1383738 (= res!925419 (and (= (size!46214 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46214 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46214 a!2938))))))

(declare-fun b!1383739 () Bool)

(assert (=> b!1383739 (= e!784202 false)))

(declare-fun lt!608621 () Unit!46047)

(assert (=> b!1383739 (= lt!608621 e!784204)))

(declare-fun c!128600 () Bool)

(assert (=> b!1383739 (= c!128600 e!784203)))

(declare-fun res!925422 () Bool)

(assert (=> b!1383739 (=> (not res!925422) (not e!784203))))

(assert (=> b!1383739 (= res!925422 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118358 res!925418) b!1383738))

(assert (= (and b!1383738 res!925419) b!1383737))

(assert (= (and b!1383737 res!925417) b!1383736))

(assert (= (and b!1383736 res!925421) b!1383731))

(assert (= (and b!1383731 res!925420) b!1383734))

(assert (= (and b!1383734 res!925416) b!1383739))

(assert (= (and b!1383739 res!925422) b!1383735))

(assert (= (and b!1383739 c!128600) b!1383733))

(assert (= (and b!1383739 (not c!128600)) b!1383732))

(declare-fun m!1268963 () Bool)

(assert (=> b!1383737 m!1268963))

(assert (=> b!1383737 m!1268963))

(declare-fun m!1268965 () Bool)

(assert (=> b!1383737 m!1268965))

(declare-fun m!1268967 () Bool)

(assert (=> b!1383731 m!1268967))

(assert (=> b!1383734 m!1268963))

(declare-fun m!1268969 () Bool)

(assert (=> b!1383735 m!1268969))

(assert (=> b!1383735 m!1268969))

(declare-fun m!1268971 () Bool)

(assert (=> b!1383735 m!1268971))

(declare-fun m!1268973 () Bool)

(assert (=> start!118358 m!1268973))

(declare-fun m!1268975 () Bool)

(assert (=> start!118358 m!1268975))

(declare-fun m!1268977 () Bool)

(assert (=> b!1383736 m!1268977))

(declare-fun m!1268979 () Bool)

(assert (=> b!1383733 m!1268979))

(declare-fun m!1268981 () Bool)

(assert (=> b!1383733 m!1268981))

(assert (=> b!1383733 m!1268981))

(declare-fun m!1268983 () Bool)

(assert (=> b!1383733 m!1268983))

(declare-fun m!1268985 () Bool)

(assert (=> b!1383733 m!1268985))

(declare-fun m!1268987 () Bool)

(assert (=> b!1383733 m!1268987))

(assert (=> b!1383733 m!1268969))

(declare-fun m!1268989 () Bool)

(assert (=> b!1383733 m!1268989))

(assert (=> b!1383733 m!1268969))

(declare-fun m!1268991 () Bool)

(assert (=> b!1383733 m!1268991))

(push 1)

(assert (not b!1383731))

(assert (not b!1383737))

(assert (not b!1383736))

(assert (not start!118358))

(assert (not b!1383733))

(assert (not b!1383735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

