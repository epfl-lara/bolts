; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118658 () Bool)

(assert start!118658)

(declare-fun res!927919 () Bool)

(declare-fun e!785526 () Bool)

(assert (=> start!118658 (=> (not res!927919) (not e!785526))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118658 (= res!927919 (validMask!0 mask!2987))))

(assert (=> start!118658 e!785526))

(assert (=> start!118658 true))

(declare-datatypes ((array!94852 0))(
  ( (array!94853 (arr!45798 (Array (_ BitVec 32) (_ BitVec 64))) (size!46349 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94852)

(declare-fun array_inv!34743 (array!94852) Bool)

(assert (=> start!118658 (array_inv!34743 a!2938)))

(declare-fun b!1386683 () Bool)

(declare-fun res!927923 () Bool)

(assert (=> b!1386683 (=> (not res!927923) (not e!785526))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386683 (= res!927923 (validKeyInArray!0 (select (arr!45798 a!2938) i!1065)))))

(declare-fun b!1386684 () Bool)

(declare-fun res!927921 () Bool)

(assert (=> b!1386684 (=> (not res!927921) (not e!785526))))

(declare-datatypes ((List!32506 0))(
  ( (Nil!32503) (Cons!32502 (h!33711 (_ BitVec 64)) (t!47207 List!32506)) )
))
(declare-fun arrayNoDuplicates!0 (array!94852 (_ BitVec 32) List!32506) Bool)

(assert (=> b!1386684 (= res!927921 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32503))))

(declare-fun b!1386685 () Bool)

(declare-fun e!785525 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386685 (= e!785525 (validKeyInArray!0 (select (arr!45798 a!2938) startIndex!16)))))

(declare-fun b!1386686 () Bool)

(assert (=> b!1386686 (= e!785526 false)))

(declare-datatypes ((Unit!46288 0))(
  ( (Unit!46289) )
))
(declare-fun lt!609514 () Unit!46288)

(declare-fun e!785527 () Unit!46288)

(assert (=> b!1386686 (= lt!609514 e!785527)))

(declare-fun c!128825 () Bool)

(assert (=> b!1386686 (= c!128825 e!785525)))

(declare-fun res!927924 () Bool)

(assert (=> b!1386686 (=> (not res!927924) (not e!785525))))

(assert (=> b!1386686 (= res!927924 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386687 () Bool)

(declare-fun res!927918 () Bool)

(assert (=> b!1386687 (=> (not res!927918) (not e!785526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94852 (_ BitVec 32)) Bool)

(assert (=> b!1386687 (= res!927918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386688 () Bool)

(declare-fun res!927922 () Bool)

(assert (=> b!1386688 (=> (not res!927922) (not e!785526))))

(assert (=> b!1386688 (= res!927922 (and (= (size!46349 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46349 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46349 a!2938))))))

(declare-fun b!1386689 () Bool)

(declare-fun res!927920 () Bool)

(assert (=> b!1386689 (=> (not res!927920) (not e!785526))))

(assert (=> b!1386689 (= res!927920 (and (not (= (select (arr!45798 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45798 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386690 () Bool)

(declare-fun Unit!46290 () Unit!46288)

(assert (=> b!1386690 (= e!785527 Unit!46290)))

(declare-fun b!1386691 () Bool)

(declare-fun lt!609512 () Unit!46288)

(assert (=> b!1386691 (= e!785527 lt!609512)))

(declare-fun lt!609513 () Unit!46288)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46288)

(assert (=> b!1386691 (= lt!609513 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10163 0))(
  ( (MissingZero!10163 (index!43022 (_ BitVec 32))) (Found!10163 (index!43023 (_ BitVec 32))) (Intermediate!10163 (undefined!10975 Bool) (index!43024 (_ BitVec 32)) (x!124639 (_ BitVec 32))) (Undefined!10163) (MissingVacant!10163 (index!43025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94852 (_ BitVec 32)) SeekEntryResult!10163)

(assert (=> b!1386691 (= (seekEntryOrOpen!0 (select (arr!45798 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45798 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94853 (store (arr!45798 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46349 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46288)

(assert (=> b!1386691 (= lt!609512 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386691 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118658 res!927919) b!1386688))

(assert (= (and b!1386688 res!927922) b!1386683))

(assert (= (and b!1386683 res!927923) b!1386684))

(assert (= (and b!1386684 res!927921) b!1386687))

(assert (= (and b!1386687 res!927918) b!1386689))

(assert (= (and b!1386689 res!927920) b!1386686))

(assert (= (and b!1386686 res!927924) b!1386685))

(assert (= (and b!1386686 c!128825) b!1386691))

(assert (= (and b!1386686 (not c!128825)) b!1386690))

(declare-fun m!1272143 () Bool)

(assert (=> b!1386689 m!1272143))

(declare-fun m!1272145 () Bool)

(assert (=> b!1386687 m!1272145))

(declare-fun m!1272147 () Bool)

(assert (=> b!1386685 m!1272147))

(assert (=> b!1386685 m!1272147))

(declare-fun m!1272149 () Bool)

(assert (=> b!1386685 m!1272149))

(declare-fun m!1272151 () Bool)

(assert (=> b!1386691 m!1272151))

(declare-fun m!1272153 () Bool)

(assert (=> b!1386691 m!1272153))

(assert (=> b!1386691 m!1272153))

(declare-fun m!1272155 () Bool)

(assert (=> b!1386691 m!1272155))

(declare-fun m!1272157 () Bool)

(assert (=> b!1386691 m!1272157))

(declare-fun m!1272159 () Bool)

(assert (=> b!1386691 m!1272159))

(assert (=> b!1386691 m!1272147))

(declare-fun m!1272161 () Bool)

(assert (=> b!1386691 m!1272161))

(assert (=> b!1386691 m!1272147))

(declare-fun m!1272163 () Bool)

(assert (=> b!1386691 m!1272163))

(assert (=> b!1386683 m!1272143))

(assert (=> b!1386683 m!1272143))

(declare-fun m!1272165 () Bool)

(assert (=> b!1386683 m!1272165))

(declare-fun m!1272167 () Bool)

(assert (=> b!1386684 m!1272167))

(declare-fun m!1272169 () Bool)

(assert (=> start!118658 m!1272169))

(declare-fun m!1272171 () Bool)

(assert (=> start!118658 m!1272171))

(push 1)

(assert (not start!118658))

(assert (not b!1386683))

(assert (not b!1386685))

(assert (not b!1386691))

(assert (not b!1386684))

(assert (not b!1386687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

