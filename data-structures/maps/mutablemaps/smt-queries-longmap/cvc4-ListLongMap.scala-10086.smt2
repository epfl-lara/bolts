; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118802 () Bool)

(assert start!118802)

(declare-fun b!1387776 () Bool)

(declare-fun e!786147 () Bool)

(assert (=> b!1387776 (= e!786147 false)))

(declare-datatypes ((Unit!46342 0))(
  ( (Unit!46343) )
))
(declare-fun lt!610008 () Unit!46342)

(declare-fun e!786148 () Unit!46342)

(assert (=> b!1387776 (= lt!610008 e!786148)))

(declare-fun c!129068 () Bool)

(declare-fun e!786149 () Bool)

(assert (=> b!1387776 (= c!129068 e!786149)))

(declare-fun res!928533 () Bool)

(assert (=> b!1387776 (=> (not res!928533) (not e!786149))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387776 (= res!928533 (not (= startIndex!16 i!1065)))))

(declare-fun b!1387777 () Bool)

(declare-fun res!928532 () Bool)

(assert (=> b!1387777 (=> (not res!928532) (not e!786147))))

(declare-datatypes ((array!94891 0))(
  ( (array!94892 (arr!45816 (Array (_ BitVec 32) (_ BitVec 64))) (size!46367 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94891)

(declare-datatypes ((List!32524 0))(
  ( (Nil!32521) (Cons!32520 (h!33732 (_ BitVec 64)) (t!47225 List!32524)) )
))
(declare-fun arrayNoDuplicates!0 (array!94891 (_ BitVec 32) List!32524) Bool)

(assert (=> b!1387777 (= res!928532 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32521))))

(declare-fun b!1387778 () Bool)

(declare-fun res!928527 () Bool)

(assert (=> b!1387778 (=> (not res!928527) (not e!786147))))

(assert (=> b!1387778 (= res!928527 (and (not (= (select (arr!45816 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45816 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387779 () Bool)

(declare-fun res!928528 () Bool)

(assert (=> b!1387779 (=> (not res!928528) (not e!786147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387779 (= res!928528 (validKeyInArray!0 (select (arr!45816 a!2938) i!1065)))))

(declare-fun res!928530 () Bool)

(assert (=> start!118802 (=> (not res!928530) (not e!786147))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118802 (= res!928530 (validMask!0 mask!2987))))

(assert (=> start!118802 e!786147))

(assert (=> start!118802 true))

(declare-fun array_inv!34761 (array!94891) Bool)

(assert (=> start!118802 (array_inv!34761 a!2938)))

(declare-fun b!1387775 () Bool)

(declare-fun res!928529 () Bool)

(assert (=> b!1387775 (=> (not res!928529) (not e!786147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94891 (_ BitVec 32)) Bool)

(assert (=> b!1387775 (= res!928529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387780 () Bool)

(declare-fun lt!610009 () Unit!46342)

(assert (=> b!1387780 (= e!786148 lt!610009)))

(declare-fun lt!610007 () Unit!46342)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46342)

(assert (=> b!1387780 (= lt!610007 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10181 0))(
  ( (MissingZero!10181 (index!43094 (_ BitVec 32))) (Found!10181 (index!43095 (_ BitVec 32))) (Intermediate!10181 (undefined!10993 Bool) (index!43096 (_ BitVec 32)) (x!124714 (_ BitVec 32))) (Undefined!10181) (MissingVacant!10181 (index!43097 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94891 (_ BitVec 32)) SeekEntryResult!10181)

(assert (=> b!1387780 (= (seekEntryOrOpen!0 (select (arr!45816 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45816 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94892 (store (arr!45816 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46367 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46342)

(assert (=> b!1387780 (= lt!610009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1387780 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387781 () Bool)

(assert (=> b!1387781 (= e!786149 (validKeyInArray!0 (select (arr!45816 a!2938) startIndex!16)))))

(declare-fun b!1387782 () Bool)

(declare-fun res!928531 () Bool)

(assert (=> b!1387782 (=> (not res!928531) (not e!786147))))

(assert (=> b!1387782 (= res!928531 (and (= (size!46367 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46367 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46367 a!2938))))))

(declare-fun b!1387783 () Bool)

(declare-fun Unit!46344 () Unit!46342)

(assert (=> b!1387783 (= e!786148 Unit!46344)))

(assert (= (and start!118802 res!928530) b!1387782))

(assert (= (and b!1387782 res!928531) b!1387779))

(assert (= (and b!1387779 res!928528) b!1387777))

(assert (= (and b!1387777 res!928532) b!1387775))

(assert (= (and b!1387775 res!928529) b!1387778))

(assert (= (and b!1387778 res!928527) b!1387776))

(assert (= (and b!1387776 res!928533) b!1387781))

(assert (= (and b!1387776 c!129068) b!1387780))

(assert (= (and b!1387776 (not c!129068)) b!1387783))

(declare-fun m!1273487 () Bool)

(assert (=> b!1387781 m!1273487))

(assert (=> b!1387781 m!1273487))

(declare-fun m!1273489 () Bool)

(assert (=> b!1387781 m!1273489))

(declare-fun m!1273491 () Bool)

(assert (=> b!1387780 m!1273491))

(declare-fun m!1273493 () Bool)

(assert (=> b!1387780 m!1273493))

(assert (=> b!1387780 m!1273493))

(declare-fun m!1273495 () Bool)

(assert (=> b!1387780 m!1273495))

(declare-fun m!1273497 () Bool)

(assert (=> b!1387780 m!1273497))

(declare-fun m!1273499 () Bool)

(assert (=> b!1387780 m!1273499))

(assert (=> b!1387780 m!1273487))

(declare-fun m!1273501 () Bool)

(assert (=> b!1387780 m!1273501))

(assert (=> b!1387780 m!1273487))

(declare-fun m!1273503 () Bool)

(assert (=> b!1387780 m!1273503))

(declare-fun m!1273505 () Bool)

(assert (=> b!1387775 m!1273505))

(declare-fun m!1273507 () Bool)

(assert (=> b!1387777 m!1273507))

(declare-fun m!1273509 () Bool)

(assert (=> start!118802 m!1273509))

(declare-fun m!1273511 () Bool)

(assert (=> start!118802 m!1273511))

(declare-fun m!1273513 () Bool)

(assert (=> b!1387779 m!1273513))

(assert (=> b!1387779 m!1273513))

(declare-fun m!1273515 () Bool)

(assert (=> b!1387779 m!1273515))

(assert (=> b!1387778 m!1273513))

(push 1)

(assert (not b!1387780))

(assert (not b!1387779))

(assert (not b!1387777))

(assert (not start!118802))

(assert (not b!1387775))

(assert (not b!1387781))

(check-sat)

(pop 1)

