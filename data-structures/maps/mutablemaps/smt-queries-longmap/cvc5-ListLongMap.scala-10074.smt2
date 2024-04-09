; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118618 () Bool)

(assert start!118618)

(declare-fun b!1386143 () Bool)

(declare-fun res!927504 () Bool)

(declare-fun e!785285 () Bool)

(assert (=> b!1386143 (=> (not res!927504) (not e!785285))))

(declare-datatypes ((array!94812 0))(
  ( (array!94813 (arr!45778 (Array (_ BitVec 32) (_ BitVec 64))) (size!46329 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94812)

(declare-datatypes ((List!32486 0))(
  ( (Nil!32483) (Cons!32482 (h!33691 (_ BitVec 64)) (t!47187 List!32486)) )
))
(declare-fun arrayNoDuplicates!0 (array!94812 (_ BitVec 32) List!32486) Bool)

(assert (=> b!1386143 (= res!927504 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32483))))

(declare-fun res!927502 () Bool)

(assert (=> start!118618 (=> (not res!927502) (not e!785285))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118618 (= res!927502 (validMask!0 mask!2987))))

(assert (=> start!118618 e!785285))

(assert (=> start!118618 true))

(declare-fun array_inv!34723 (array!94812) Bool)

(assert (=> start!118618 (array_inv!34723 a!2938)))

(declare-fun b!1386144 () Bool)

(declare-fun res!927498 () Bool)

(assert (=> b!1386144 (=> (not res!927498) (not e!785285))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386144 (= res!927498 (and (not (= (select (arr!45778 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45778 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386145 () Bool)

(declare-datatypes ((Unit!46228 0))(
  ( (Unit!46229) )
))
(declare-fun e!785288 () Unit!46228)

(declare-fun lt!609333 () Unit!46228)

(assert (=> b!1386145 (= e!785288 lt!609333)))

(declare-fun lt!609334 () Unit!46228)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46228)

(assert (=> b!1386145 (= lt!609334 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10143 0))(
  ( (MissingZero!10143 (index!42942 (_ BitVec 32))) (Found!10143 (index!42943 (_ BitVec 32))) (Intermediate!10143 (undefined!10955 Bool) (index!42944 (_ BitVec 32)) (x!124571 (_ BitVec 32))) (Undefined!10143) (MissingVacant!10143 (index!42945 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94812 (_ BitVec 32)) SeekEntryResult!10143)

(assert (=> b!1386145 (= (seekEntryOrOpen!0 (select (arr!45778 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45778 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94813 (store (arr!45778 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46329 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46228)

(assert (=> b!1386145 (= lt!609333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94812 (_ BitVec 32)) Bool)

(assert (=> b!1386145 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386146 () Bool)

(declare-fun res!927503 () Bool)

(assert (=> b!1386146 (=> (not res!927503) (not e!785285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386146 (= res!927503 (validKeyInArray!0 (select (arr!45778 a!2938) i!1065)))))

(declare-fun b!1386147 () Bool)

(declare-fun res!927500 () Bool)

(assert (=> b!1386147 (=> (not res!927500) (not e!785285))))

(assert (=> b!1386147 (= res!927500 (and (= (size!46329 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46329 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46329 a!2938))))))

(declare-fun b!1386148 () Bool)

(declare-fun res!927499 () Bool)

(assert (=> b!1386148 (=> (not res!927499) (not e!785285))))

(assert (=> b!1386148 (= res!927499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386149 () Bool)

(declare-fun Unit!46230 () Unit!46228)

(assert (=> b!1386149 (= e!785288 Unit!46230)))

(declare-fun b!1386150 () Bool)

(assert (=> b!1386150 (= e!785285 false)))

(declare-fun lt!609332 () Unit!46228)

(assert (=> b!1386150 (= lt!609332 e!785288)))

(declare-fun c!128765 () Bool)

(declare-fun e!785286 () Bool)

(assert (=> b!1386150 (= c!128765 e!785286)))

(declare-fun res!927501 () Bool)

(assert (=> b!1386150 (=> (not res!927501) (not e!785286))))

(assert (=> b!1386150 (= res!927501 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386151 () Bool)

(assert (=> b!1386151 (= e!785286 (validKeyInArray!0 (select (arr!45778 a!2938) startIndex!16)))))

(assert (= (and start!118618 res!927502) b!1386147))

(assert (= (and b!1386147 res!927500) b!1386146))

(assert (= (and b!1386146 res!927503) b!1386143))

(assert (= (and b!1386143 res!927504) b!1386148))

(assert (= (and b!1386148 res!927499) b!1386144))

(assert (= (and b!1386144 res!927498) b!1386150))

(assert (= (and b!1386150 res!927501) b!1386151))

(assert (= (and b!1386150 c!128765) b!1386145))

(assert (= (and b!1386150 (not c!128765)) b!1386149))

(declare-fun m!1271543 () Bool)

(assert (=> b!1386146 m!1271543))

(assert (=> b!1386146 m!1271543))

(declare-fun m!1271545 () Bool)

(assert (=> b!1386146 m!1271545))

(declare-fun m!1271547 () Bool)

(assert (=> b!1386148 m!1271547))

(declare-fun m!1271549 () Bool)

(assert (=> start!118618 m!1271549))

(declare-fun m!1271551 () Bool)

(assert (=> start!118618 m!1271551))

(declare-fun m!1271553 () Bool)

(assert (=> b!1386143 m!1271553))

(assert (=> b!1386144 m!1271543))

(declare-fun m!1271555 () Bool)

(assert (=> b!1386145 m!1271555))

(declare-fun m!1271557 () Bool)

(assert (=> b!1386145 m!1271557))

(assert (=> b!1386145 m!1271557))

(declare-fun m!1271559 () Bool)

(assert (=> b!1386145 m!1271559))

(declare-fun m!1271561 () Bool)

(assert (=> b!1386145 m!1271561))

(declare-fun m!1271563 () Bool)

(assert (=> b!1386145 m!1271563))

(declare-fun m!1271565 () Bool)

(assert (=> b!1386145 m!1271565))

(declare-fun m!1271567 () Bool)

(assert (=> b!1386145 m!1271567))

(assert (=> b!1386145 m!1271565))

(declare-fun m!1271569 () Bool)

(assert (=> b!1386145 m!1271569))

(assert (=> b!1386151 m!1271565))

(assert (=> b!1386151 m!1271565))

(declare-fun m!1271571 () Bool)

(assert (=> b!1386151 m!1271571))

(push 1)

(assert (not start!118618))

(assert (not b!1386146))

(assert (not b!1386148))

(assert (not b!1386151))

(assert (not b!1386143))

(assert (not b!1386145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

