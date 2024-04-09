; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45184 () Bool)

(assert start!45184)

(declare-fun b!495499 () Bool)

(declare-fun e!290678 () Bool)

(declare-fun e!290680 () Bool)

(assert (=> b!495499 (= e!290678 e!290680)))

(declare-fun res!298036 () Bool)

(assert (=> b!495499 (=> (not res!298036) (not e!290680))))

(declare-datatypes ((SeekEntryResult!3870 0))(
  ( (MissingZero!3870 (index!17659 (_ BitVec 32))) (Found!3870 (index!17660 (_ BitVec 32))) (Intermediate!3870 (undefined!4682 Bool) (index!17661 (_ BitVec 32)) (x!46757 (_ BitVec 32))) (Undefined!3870) (MissingVacant!3870 (index!17662 (_ BitVec 32))) )
))
(declare-fun lt!224366 () SeekEntryResult!3870)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495499 (= res!298036 (or (= lt!224366 (MissingZero!3870 i!1204)) (= lt!224366 (MissingVacant!3870 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32032 0))(
  ( (array!32033 (arr!15396 (Array (_ BitVec 32) (_ BitVec 64))) (size!15760 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32032)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32032 (_ BitVec 32)) SeekEntryResult!3870)

(assert (=> b!495499 (= lt!224366 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495500 () Bool)

(declare-fun res!298043 () Bool)

(assert (=> b!495500 (=> (not res!298043) (not e!290678))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495500 (= res!298043 (validKeyInArray!0 (select (arr!15396 a!3235) j!176)))))

(declare-fun b!495502 () Bool)

(declare-fun res!298040 () Bool)

(assert (=> b!495502 (=> (not res!298040) (not e!290678))))

(declare-fun arrayContainsKey!0 (array!32032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495502 (= res!298040 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495503 () Bool)

(declare-fun e!290677 () Bool)

(assert (=> b!495503 (= e!290680 (not e!290677))))

(declare-fun res!298039 () Bool)

(assert (=> b!495503 (=> res!298039 e!290677)))

(declare-fun lt!224365 () (_ BitVec 32))

(declare-fun lt!224367 () SeekEntryResult!3870)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32032 (_ BitVec 32)) SeekEntryResult!3870)

(assert (=> b!495503 (= res!298039 (= lt!224367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224365 (select (store (arr!15396 a!3235) i!1204 k!2280) j!176) (array!32033 (store (arr!15396 a!3235) i!1204 k!2280) (size!15760 a!3235)) mask!3524)))))

(declare-fun lt!224369 () (_ BitVec 32))

(assert (=> b!495503 (= lt!224367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224369 (select (arr!15396 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495503 (= lt!224365 (toIndex!0 (select (store (arr!15396 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495503 (= lt!224369 (toIndex!0 (select (arr!15396 a!3235) j!176) mask!3524))))

(declare-fun e!290679 () Bool)

(assert (=> b!495503 e!290679))

(declare-fun res!298045 () Bool)

(assert (=> b!495503 (=> (not res!298045) (not e!290679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32032 (_ BitVec 32)) Bool)

(assert (=> b!495503 (= res!298045 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14678 0))(
  ( (Unit!14679) )
))
(declare-fun lt!224368 () Unit!14678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14678)

(assert (=> b!495503 (= lt!224368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495504 () Bool)

(declare-fun res!298037 () Bool)

(assert (=> b!495504 (=> (not res!298037) (not e!290678))))

(assert (=> b!495504 (= res!298037 (and (= (size!15760 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15760 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15760 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495505 () Bool)

(declare-fun res!298042 () Bool)

(assert (=> b!495505 (=> res!298042 e!290677)))

(assert (=> b!495505 (= res!298042 (or (undefined!4682 lt!224367) (not (is-Intermediate!3870 lt!224367))))))

(declare-fun b!495506 () Bool)

(declare-fun res!298044 () Bool)

(assert (=> b!495506 (=> (not res!298044) (not e!290680))))

(assert (=> b!495506 (= res!298044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495507 () Bool)

(assert (=> b!495507 (= e!290679 (= (seekEntryOrOpen!0 (select (arr!15396 a!3235) j!176) a!3235 mask!3524) (Found!3870 j!176)))))

(declare-fun b!495508 () Bool)

(assert (=> b!495508 (= e!290677 true)))

(assert (=> b!495508 (and (bvslt (x!46757 lt!224367) #b01111111111111111111111111111110) (or (= (select (arr!15396 a!3235) (index!17661 lt!224367)) (select (arr!15396 a!3235) j!176)) (= (select (arr!15396 a!3235) (index!17661 lt!224367)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15396 a!3235) (index!17661 lt!224367)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495509 () Bool)

(declare-fun res!298046 () Bool)

(assert (=> b!495509 (=> (not res!298046) (not e!290680))))

(declare-datatypes ((List!9607 0))(
  ( (Nil!9604) (Cons!9603 (h!10474 (_ BitVec 64)) (t!15843 List!9607)) )
))
(declare-fun arrayNoDuplicates!0 (array!32032 (_ BitVec 32) List!9607) Bool)

(assert (=> b!495509 (= res!298046 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9604))))

(declare-fun b!495501 () Bool)

(declare-fun res!298038 () Bool)

(assert (=> b!495501 (=> (not res!298038) (not e!290678))))

(assert (=> b!495501 (= res!298038 (validKeyInArray!0 k!2280))))

(declare-fun res!298041 () Bool)

(assert (=> start!45184 (=> (not res!298041) (not e!290678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45184 (= res!298041 (validMask!0 mask!3524))))

(assert (=> start!45184 e!290678))

(assert (=> start!45184 true))

(declare-fun array_inv!11170 (array!32032) Bool)

(assert (=> start!45184 (array_inv!11170 a!3235)))

(assert (= (and start!45184 res!298041) b!495504))

(assert (= (and b!495504 res!298037) b!495500))

(assert (= (and b!495500 res!298043) b!495501))

(assert (= (and b!495501 res!298038) b!495502))

(assert (= (and b!495502 res!298040) b!495499))

(assert (= (and b!495499 res!298036) b!495506))

(assert (= (and b!495506 res!298044) b!495509))

(assert (= (and b!495509 res!298046) b!495503))

(assert (= (and b!495503 res!298045) b!495507))

(assert (= (and b!495503 (not res!298039)) b!495505))

(assert (= (and b!495505 (not res!298042)) b!495508))

(declare-fun m!476659 () Bool)

(assert (=> b!495509 m!476659))

(declare-fun m!476661 () Bool)

(assert (=> b!495501 m!476661))

(declare-fun m!476663 () Bool)

(assert (=> b!495508 m!476663))

(declare-fun m!476665 () Bool)

(assert (=> b!495508 m!476665))

(assert (=> b!495503 m!476665))

(declare-fun m!476667 () Bool)

(assert (=> b!495503 m!476667))

(declare-fun m!476669 () Bool)

(assert (=> b!495503 m!476669))

(declare-fun m!476671 () Bool)

(assert (=> b!495503 m!476671))

(declare-fun m!476673 () Bool)

(assert (=> b!495503 m!476673))

(assert (=> b!495503 m!476673))

(declare-fun m!476675 () Bool)

(assert (=> b!495503 m!476675))

(assert (=> b!495503 m!476665))

(declare-fun m!476677 () Bool)

(assert (=> b!495503 m!476677))

(assert (=> b!495503 m!476665))

(declare-fun m!476679 () Bool)

(assert (=> b!495503 m!476679))

(assert (=> b!495503 m!476673))

(declare-fun m!476681 () Bool)

(assert (=> b!495503 m!476681))

(declare-fun m!476683 () Bool)

(assert (=> b!495499 m!476683))

(assert (=> b!495507 m!476665))

(assert (=> b!495507 m!476665))

(declare-fun m!476685 () Bool)

(assert (=> b!495507 m!476685))

(declare-fun m!476687 () Bool)

(assert (=> b!495506 m!476687))

(declare-fun m!476689 () Bool)

(assert (=> start!45184 m!476689))

(declare-fun m!476691 () Bool)

(assert (=> start!45184 m!476691))

(assert (=> b!495500 m!476665))

(assert (=> b!495500 m!476665))

(declare-fun m!476693 () Bool)

(assert (=> b!495500 m!476693))

(declare-fun m!476695 () Bool)

(assert (=> b!495502 m!476695))

(push 1)

