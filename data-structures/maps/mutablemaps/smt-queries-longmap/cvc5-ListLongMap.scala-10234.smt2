; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120496 () Bool)

(assert start!120496)

(declare-fun b!1402417 () Bool)

(declare-fun res!941044 () Bool)

(declare-fun e!794152 () Bool)

(assert (=> b!1402417 (=> (not res!941044) (not e!794152))))

(declare-datatypes ((array!95823 0))(
  ( (array!95824 (arr!46258 (Array (_ BitVec 32) (_ BitVec 64))) (size!46809 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95823)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95823 (_ BitVec 32)) Bool)

(assert (=> b!1402417 (= res!941044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402418 () Bool)

(declare-fun res!941046 () Bool)

(assert (=> b!1402418 (=> (not res!941046) (not e!794152))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402418 (= res!941046 (validKeyInArray!0 (select (arr!46258 a!2901) i!1037)))))

(declare-fun b!1402419 () Bool)

(declare-fun e!794155 () Bool)

(declare-fun e!794156 () Bool)

(assert (=> b!1402419 (= e!794155 e!794156)))

(declare-fun res!941039 () Bool)

(assert (=> b!1402419 (=> res!941039 e!794156)))

(declare-datatypes ((SeekEntryResult!10597 0))(
  ( (MissingZero!10597 (index!44764 (_ BitVec 32))) (Found!10597 (index!44765 (_ BitVec 32))) (Intermediate!10597 (undefined!11409 Bool) (index!44766 (_ BitVec 32)) (x!126395 (_ BitVec 32))) (Undefined!10597) (MissingVacant!10597 (index!44767 (_ BitVec 32))) )
))
(declare-fun lt!617727 () SeekEntryResult!10597)

(declare-fun lt!617728 () (_ BitVec 32))

(declare-fun lt!617726 () SeekEntryResult!10597)

(assert (=> b!1402419 (= res!941039 (or (bvslt (x!126395 lt!617727) #b00000000000000000000000000000000) (bvsgt (x!126395 lt!617727) #b01111111111111111111111111111110) (bvslt (x!126395 lt!617726) #b00000000000000000000000000000000) (bvsgt (x!126395 lt!617726) #b01111111111111111111111111111110) (bvslt lt!617728 #b00000000000000000000000000000000) (bvsge lt!617728 (size!46809 a!2901)) (bvslt (index!44766 lt!617727) #b00000000000000000000000000000000) (bvsge (index!44766 lt!617727) (size!46809 a!2901)) (bvslt (index!44766 lt!617726) #b00000000000000000000000000000000) (bvsge (index!44766 lt!617726) (size!46809 a!2901)) (not (= lt!617727 (Intermediate!10597 false (index!44766 lt!617727) (x!126395 lt!617727)))) (not (= lt!617726 (Intermediate!10597 false (index!44766 lt!617726) (x!126395 lt!617726))))))))

(declare-fun lt!617724 () SeekEntryResult!10597)

(declare-fun lt!617729 () array!95823)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95823 (_ BitVec 32)) SeekEntryResult!10597)

(assert (=> b!1402419 (= lt!617724 (seekKeyOrZeroReturnVacant!0 (x!126395 lt!617726) (index!44766 lt!617726) (index!44766 lt!617726) (select (arr!46258 a!2901) j!112) lt!617729 mask!2840))))

(declare-fun lt!617731 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95823 (_ BitVec 32)) SeekEntryResult!10597)

(assert (=> b!1402419 (= lt!617724 (seekEntryOrOpen!0 lt!617731 lt!617729 mask!2840))))

(assert (=> b!1402419 (and (not (undefined!11409 lt!617726)) (= (index!44766 lt!617726) i!1037) (bvslt (x!126395 lt!617726) (x!126395 lt!617727)) (= (select (store (arr!46258 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44766 lt!617726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47148 0))(
  ( (Unit!47149) )
))
(declare-fun lt!617723 () Unit!47148)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47148)

(assert (=> b!1402419 (= lt!617723 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617728 (x!126395 lt!617727) (index!44766 lt!617727) (x!126395 lt!617726) (index!44766 lt!617726) (undefined!11409 lt!617726) mask!2840))))

(declare-fun b!1402420 () Bool)

(declare-fun res!941045 () Bool)

(assert (=> b!1402420 (=> (not res!941045) (not e!794152))))

(declare-datatypes ((List!32957 0))(
  ( (Nil!32954) (Cons!32953 (h!34201 (_ BitVec 64)) (t!47658 List!32957)) )
))
(declare-fun arrayNoDuplicates!0 (array!95823 (_ BitVec 32) List!32957) Bool)

(assert (=> b!1402420 (= res!941045 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32954))))

(declare-fun b!1402421 () Bool)

(declare-fun e!794153 () Bool)

(assert (=> b!1402421 (= e!794152 (not e!794153))))

(declare-fun res!941040 () Bool)

(assert (=> b!1402421 (=> res!941040 e!794153)))

(assert (=> b!1402421 (= res!941040 (or (not (is-Intermediate!10597 lt!617727)) (undefined!11409 lt!617727)))))

(declare-fun lt!617722 () SeekEntryResult!10597)

(assert (=> b!1402421 (= lt!617722 (Found!10597 j!112))))

(assert (=> b!1402421 (= lt!617722 (seekEntryOrOpen!0 (select (arr!46258 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402421 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617725 () Unit!47148)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47148)

(assert (=> b!1402421 (= lt!617725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95823 (_ BitVec 32)) SeekEntryResult!10597)

(assert (=> b!1402421 (= lt!617727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617728 (select (arr!46258 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402421 (= lt!617728 (toIndex!0 (select (arr!46258 a!2901) j!112) mask!2840))))

(declare-fun b!1402422 () Bool)

(declare-fun res!941037 () Bool)

(assert (=> b!1402422 (=> (not res!941037) (not e!794152))))

(assert (=> b!1402422 (= res!941037 (and (= (size!46809 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46809 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46809 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402423 () Bool)

(assert (=> b!1402423 (= e!794153 e!794155)))

(declare-fun res!941038 () Bool)

(assert (=> b!1402423 (=> res!941038 e!794155)))

(assert (=> b!1402423 (= res!941038 (or (= lt!617727 lt!617726) (not (is-Intermediate!10597 lt!617726))))))

(assert (=> b!1402423 (= lt!617726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617731 mask!2840) lt!617731 lt!617729 mask!2840))))

(assert (=> b!1402423 (= lt!617731 (select (store (arr!46258 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402423 (= lt!617729 (array!95824 (store (arr!46258 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46809 a!2901)))))

(declare-fun res!941042 () Bool)

(assert (=> start!120496 (=> (not res!941042) (not e!794152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120496 (= res!941042 (validMask!0 mask!2840))))

(assert (=> start!120496 e!794152))

(assert (=> start!120496 true))

(declare-fun array_inv!35203 (array!95823) Bool)

(assert (=> start!120496 (array_inv!35203 a!2901)))

(declare-fun b!1402424 () Bool)

(declare-fun res!941041 () Bool)

(assert (=> b!1402424 (=> (not res!941041) (not e!794152))))

(assert (=> b!1402424 (= res!941041 (validKeyInArray!0 (select (arr!46258 a!2901) j!112)))))

(declare-fun b!1402425 () Bool)

(assert (=> b!1402425 (= e!794156 true)))

(assert (=> b!1402425 (= lt!617722 lt!617724)))

(declare-fun lt!617730 () Unit!47148)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47148)

(assert (=> b!1402425 (= lt!617730 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617728 (x!126395 lt!617727) (index!44766 lt!617727) (x!126395 lt!617726) (index!44766 lt!617726) mask!2840))))

(declare-fun b!1402426 () Bool)

(declare-fun res!941043 () Bool)

(assert (=> b!1402426 (=> res!941043 e!794156)))

(assert (=> b!1402426 (= res!941043 (not (= lt!617726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617728 lt!617731 lt!617729 mask!2840))))))

(assert (= (and start!120496 res!941042) b!1402422))

(assert (= (and b!1402422 res!941037) b!1402418))

(assert (= (and b!1402418 res!941046) b!1402424))

(assert (= (and b!1402424 res!941041) b!1402417))

(assert (= (and b!1402417 res!941044) b!1402420))

(assert (= (and b!1402420 res!941045) b!1402421))

(assert (= (and b!1402421 (not res!941040)) b!1402423))

(assert (= (and b!1402423 (not res!941038)) b!1402419))

(assert (= (and b!1402419 (not res!941039)) b!1402426))

(assert (= (and b!1402426 (not res!941043)) b!1402425))

(declare-fun m!1290671 () Bool)

(assert (=> b!1402420 m!1290671))

(declare-fun m!1290673 () Bool)

(assert (=> b!1402419 m!1290673))

(declare-fun m!1290675 () Bool)

(assert (=> b!1402419 m!1290675))

(declare-fun m!1290677 () Bool)

(assert (=> b!1402419 m!1290677))

(declare-fun m!1290679 () Bool)

(assert (=> b!1402419 m!1290679))

(assert (=> b!1402419 m!1290675))

(declare-fun m!1290681 () Bool)

(assert (=> b!1402419 m!1290681))

(declare-fun m!1290683 () Bool)

(assert (=> b!1402419 m!1290683))

(declare-fun m!1290685 () Bool)

(assert (=> b!1402417 m!1290685))

(declare-fun m!1290687 () Bool)

(assert (=> b!1402418 m!1290687))

(assert (=> b!1402418 m!1290687))

(declare-fun m!1290689 () Bool)

(assert (=> b!1402418 m!1290689))

(declare-fun m!1290691 () Bool)

(assert (=> b!1402426 m!1290691))

(declare-fun m!1290693 () Bool)

(assert (=> start!120496 m!1290693))

(declare-fun m!1290695 () Bool)

(assert (=> start!120496 m!1290695))

(assert (=> b!1402421 m!1290675))

(declare-fun m!1290697 () Bool)

(assert (=> b!1402421 m!1290697))

(assert (=> b!1402421 m!1290675))

(assert (=> b!1402421 m!1290675))

(declare-fun m!1290699 () Bool)

(assert (=> b!1402421 m!1290699))

(declare-fun m!1290701 () Bool)

(assert (=> b!1402421 m!1290701))

(assert (=> b!1402421 m!1290675))

(declare-fun m!1290703 () Bool)

(assert (=> b!1402421 m!1290703))

(declare-fun m!1290705 () Bool)

(assert (=> b!1402421 m!1290705))

(declare-fun m!1290707 () Bool)

(assert (=> b!1402425 m!1290707))

(declare-fun m!1290709 () Bool)

(assert (=> b!1402423 m!1290709))

(assert (=> b!1402423 m!1290709))

(declare-fun m!1290711 () Bool)

(assert (=> b!1402423 m!1290711))

(assert (=> b!1402423 m!1290683))

(declare-fun m!1290713 () Bool)

(assert (=> b!1402423 m!1290713))

(assert (=> b!1402424 m!1290675))

(assert (=> b!1402424 m!1290675))

(declare-fun m!1290715 () Bool)

(assert (=> b!1402424 m!1290715))

(push 1)

