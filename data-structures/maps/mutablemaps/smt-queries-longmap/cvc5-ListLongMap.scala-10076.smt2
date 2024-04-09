; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118630 () Bool)

(assert start!118630)

(declare-fun b!1386305 () Bool)

(declare-fun res!927627 () Bool)

(declare-fun e!785358 () Bool)

(assert (=> b!1386305 (=> (not res!927627) (not e!785358))))

(declare-datatypes ((array!94824 0))(
  ( (array!94825 (arr!45784 (Array (_ BitVec 32) (_ BitVec 64))) (size!46335 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94824)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94824 (_ BitVec 32)) Bool)

(assert (=> b!1386305 (= res!927627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386306 () Bool)

(declare-fun res!927628 () Bool)

(assert (=> b!1386306 (=> (not res!927628) (not e!785358))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386306 (= res!927628 (validKeyInArray!0 (select (arr!45784 a!2938) i!1065)))))

(declare-fun b!1386307 () Bool)

(declare-fun res!927629 () Bool)

(assert (=> b!1386307 (=> (not res!927629) (not e!785358))))

(declare-datatypes ((List!32492 0))(
  ( (Nil!32489) (Cons!32488 (h!33697 (_ BitVec 64)) (t!47193 List!32492)) )
))
(declare-fun arrayNoDuplicates!0 (array!94824 (_ BitVec 32) List!32492) Bool)

(assert (=> b!1386307 (= res!927629 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32489))))

(declare-fun b!1386308 () Bool)

(declare-fun res!927630 () Bool)

(assert (=> b!1386308 (=> (not res!927630) (not e!785358))))

(assert (=> b!1386308 (= res!927630 (and (not (= (select (arr!45784 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45784 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386309 () Bool)

(declare-datatypes ((Unit!46246 0))(
  ( (Unit!46247) )
))
(declare-fun e!785357 () Unit!46246)

(declare-fun lt!609388 () Unit!46246)

(assert (=> b!1386309 (= e!785357 lt!609388)))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!609387 () Unit!46246)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46246)

(assert (=> b!1386309 (= lt!609387 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10149 0))(
  ( (MissingZero!10149 (index!42966 (_ BitVec 32))) (Found!10149 (index!42967 (_ BitVec 32))) (Intermediate!10149 (undefined!10961 Bool) (index!42968 (_ BitVec 32)) (x!124593 (_ BitVec 32))) (Undefined!10149) (MissingVacant!10149 (index!42969 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94824 (_ BitVec 32)) SeekEntryResult!10149)

(assert (=> b!1386309 (= (seekEntryOrOpen!0 (select (arr!45784 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45784 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94825 (store (arr!45784 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46335 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46246)

(assert (=> b!1386309 (= lt!609388 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386309 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386310 () Bool)

(declare-fun Unit!46248 () Unit!46246)

(assert (=> b!1386310 (= e!785357 Unit!46248)))

(declare-fun res!927626 () Bool)

(assert (=> start!118630 (=> (not res!927626) (not e!785358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118630 (= res!927626 (validMask!0 mask!2987))))

(assert (=> start!118630 e!785358))

(assert (=> start!118630 true))

(declare-fun array_inv!34729 (array!94824) Bool)

(assert (=> start!118630 (array_inv!34729 a!2938)))

(declare-fun b!1386311 () Bool)

(declare-fun e!785360 () Bool)

(assert (=> b!1386311 (= e!785360 (validKeyInArray!0 (select (arr!45784 a!2938) startIndex!16)))))

(declare-fun b!1386312 () Bool)

(declare-fun res!927625 () Bool)

(assert (=> b!1386312 (=> (not res!927625) (not e!785358))))

(assert (=> b!1386312 (= res!927625 (and (= (size!46335 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46335 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46335 a!2938))))))

(declare-fun b!1386313 () Bool)

(assert (=> b!1386313 (= e!785358 false)))

(declare-fun lt!609386 () Unit!46246)

(assert (=> b!1386313 (= lt!609386 e!785357)))

(declare-fun c!128783 () Bool)

(assert (=> b!1386313 (= c!128783 e!785360)))

(declare-fun res!927624 () Bool)

(assert (=> b!1386313 (=> (not res!927624) (not e!785360))))

(assert (=> b!1386313 (= res!927624 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118630 res!927626) b!1386312))

(assert (= (and b!1386312 res!927625) b!1386306))

(assert (= (and b!1386306 res!927628) b!1386307))

(assert (= (and b!1386307 res!927629) b!1386305))

(assert (= (and b!1386305 res!927627) b!1386308))

(assert (= (and b!1386308 res!927630) b!1386313))

(assert (= (and b!1386313 res!927624) b!1386311))

(assert (= (and b!1386313 c!128783) b!1386309))

(assert (= (and b!1386313 (not c!128783)) b!1386310))

(declare-fun m!1271723 () Bool)

(assert (=> b!1386308 m!1271723))

(declare-fun m!1271725 () Bool)

(assert (=> b!1386305 m!1271725))

(declare-fun m!1271727 () Bool)

(assert (=> start!118630 m!1271727))

(declare-fun m!1271729 () Bool)

(assert (=> start!118630 m!1271729))

(declare-fun m!1271731 () Bool)

(assert (=> b!1386309 m!1271731))

(declare-fun m!1271733 () Bool)

(assert (=> b!1386309 m!1271733))

(assert (=> b!1386309 m!1271733))

(declare-fun m!1271735 () Bool)

(assert (=> b!1386309 m!1271735))

(declare-fun m!1271737 () Bool)

(assert (=> b!1386309 m!1271737))

(declare-fun m!1271739 () Bool)

(assert (=> b!1386309 m!1271739))

(declare-fun m!1271741 () Bool)

(assert (=> b!1386309 m!1271741))

(declare-fun m!1271743 () Bool)

(assert (=> b!1386309 m!1271743))

(assert (=> b!1386309 m!1271741))

(declare-fun m!1271745 () Bool)

(assert (=> b!1386309 m!1271745))

(assert (=> b!1386306 m!1271723))

(assert (=> b!1386306 m!1271723))

(declare-fun m!1271747 () Bool)

(assert (=> b!1386306 m!1271747))

(declare-fun m!1271749 () Bool)

(assert (=> b!1386307 m!1271749))

(assert (=> b!1386311 m!1271741))

(assert (=> b!1386311 m!1271741))

(declare-fun m!1271751 () Bool)

(assert (=> b!1386311 m!1271751))

(push 1)

(assert (not start!118630))

(assert (not b!1386307))

(assert (not b!1386311))

(assert (not b!1386309))

(assert (not b!1386306))

(assert (not b!1386305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

