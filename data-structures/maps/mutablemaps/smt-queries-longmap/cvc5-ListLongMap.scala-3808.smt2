; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52220 () Bool)

(assert start!52220)

(declare-fun b!569702 () Bool)

(declare-fun res!359873 () Bool)

(declare-fun e!327671 () Bool)

(assert (=> b!569702 (=> (not res!359873) (not e!327671))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569702 (= res!359873 (validKeyInArray!0 k!1914))))

(declare-fun b!569703 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!327672 () Bool)

(declare-datatypes ((array!35697 0))(
  ( (array!35698 (arr!17136 (Array (_ BitVec 32) (_ BitVec 64))) (size!17500 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35697)

(declare-datatypes ((SeekEntryResult!5592 0))(
  ( (MissingZero!5592 (index!24595 (_ BitVec 32))) (Found!5592 (index!24596 (_ BitVec 32))) (Intermediate!5592 (undefined!6404 Bool) (index!24597 (_ BitVec 32)) (x!53494 (_ BitVec 32))) (Undefined!5592) (MissingVacant!5592 (index!24598 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35697 (_ BitVec 32)) SeekEntryResult!5592)

(assert (=> b!569703 (= e!327672 (= (seekEntryOrOpen!0 (select (arr!17136 a!3118) j!142) a!3118 mask!3119) (Found!5592 j!142)))))

(declare-fun b!569704 () Bool)

(declare-fun res!359878 () Bool)

(declare-fun e!327670 () Bool)

(assert (=> b!569704 (=> (not res!359878) (not e!327670))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35697 (_ BitVec 32)) SeekEntryResult!5592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569704 (= res!359878 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17136 a!3118) j!142) mask!3119) (select (arr!17136 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17136 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17136 a!3118) i!1132 k!1914) j!142) (array!35698 (store (arr!17136 a!3118) i!1132 k!1914) (size!17500 a!3118)) mask!3119)))))

(declare-fun b!569705 () Bool)

(declare-fun res!359874 () Bool)

(assert (=> b!569705 (=> (not res!359874) (not e!327670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35697 (_ BitVec 32)) Bool)

(assert (=> b!569705 (= res!359874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569706 () Bool)

(declare-fun res!359871 () Bool)

(assert (=> b!569706 (=> (not res!359871) (not e!327671))))

(assert (=> b!569706 (= res!359871 (and (= (size!17500 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17500 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17500 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569707 () Bool)

(declare-fun res!359879 () Bool)

(assert (=> b!569707 (=> (not res!359879) (not e!327671))))

(assert (=> b!569707 (= res!359879 (validKeyInArray!0 (select (arr!17136 a!3118) j!142)))))

(declare-fun b!569708 () Bool)

(declare-fun res!359876 () Bool)

(assert (=> b!569708 (=> (not res!359876) (not e!327670))))

(declare-datatypes ((List!11269 0))(
  ( (Nil!11266) (Cons!11265 (h!12286 (_ BitVec 64)) (t!17505 List!11269)) )
))
(declare-fun arrayNoDuplicates!0 (array!35697 (_ BitVec 32) List!11269) Bool)

(assert (=> b!569708 (= res!359876 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11266))))

(declare-fun b!569710 () Bool)

(assert (=> b!569710 (= e!327671 e!327670)))

(declare-fun res!359870 () Bool)

(assert (=> b!569710 (=> (not res!359870) (not e!327670))))

(declare-fun lt!259759 () SeekEntryResult!5592)

(assert (=> b!569710 (= res!359870 (or (= lt!259759 (MissingZero!5592 i!1132)) (= lt!259759 (MissingVacant!5592 i!1132))))))

(assert (=> b!569710 (= lt!259759 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569711 () Bool)

(declare-fun res!359877 () Bool)

(assert (=> b!569711 (=> (not res!359877) (not e!327671))))

(declare-fun arrayContainsKey!0 (array!35697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569711 (= res!359877 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!359872 () Bool)

(assert (=> start!52220 (=> (not res!359872) (not e!327671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52220 (= res!359872 (validMask!0 mask!3119))))

(assert (=> start!52220 e!327671))

(assert (=> start!52220 true))

(declare-fun array_inv!12910 (array!35697) Bool)

(assert (=> start!52220 (array_inv!12910 a!3118)))

(declare-fun b!569709 () Bool)

(assert (=> b!569709 (= e!327670 (not true))))

(assert (=> b!569709 e!327672))

(declare-fun res!359875 () Bool)

(assert (=> b!569709 (=> (not res!359875) (not e!327672))))

(assert (=> b!569709 (= res!359875 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17886 0))(
  ( (Unit!17887) )
))
(declare-fun lt!259760 () Unit!17886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17886)

(assert (=> b!569709 (= lt!259760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52220 res!359872) b!569706))

(assert (= (and b!569706 res!359871) b!569707))

(assert (= (and b!569707 res!359879) b!569702))

(assert (= (and b!569702 res!359873) b!569711))

(assert (= (and b!569711 res!359877) b!569710))

(assert (= (and b!569710 res!359870) b!569705))

(assert (= (and b!569705 res!359874) b!569708))

(assert (= (and b!569708 res!359876) b!569704))

(assert (= (and b!569704 res!359878) b!569709))

(assert (= (and b!569709 res!359875) b!569703))

(declare-fun m!548635 () Bool)

(assert (=> b!569704 m!548635))

(declare-fun m!548637 () Bool)

(assert (=> b!569704 m!548637))

(assert (=> b!569704 m!548635))

(declare-fun m!548639 () Bool)

(assert (=> b!569704 m!548639))

(declare-fun m!548641 () Bool)

(assert (=> b!569704 m!548641))

(assert (=> b!569704 m!548639))

(declare-fun m!548643 () Bool)

(assert (=> b!569704 m!548643))

(assert (=> b!569704 m!548637))

(assert (=> b!569704 m!548635))

(declare-fun m!548645 () Bool)

(assert (=> b!569704 m!548645))

(declare-fun m!548647 () Bool)

(assert (=> b!569704 m!548647))

(assert (=> b!569704 m!548639))

(assert (=> b!569704 m!548641))

(assert (=> b!569707 m!548635))

(assert (=> b!569707 m!548635))

(declare-fun m!548649 () Bool)

(assert (=> b!569707 m!548649))

(declare-fun m!548651 () Bool)

(assert (=> b!569709 m!548651))

(declare-fun m!548653 () Bool)

(assert (=> b!569709 m!548653))

(declare-fun m!548655 () Bool)

(assert (=> b!569705 m!548655))

(declare-fun m!548657 () Bool)

(assert (=> b!569710 m!548657))

(declare-fun m!548659 () Bool)

(assert (=> b!569708 m!548659))

(declare-fun m!548661 () Bool)

(assert (=> start!52220 m!548661))

(declare-fun m!548663 () Bool)

(assert (=> start!52220 m!548663))

(declare-fun m!548665 () Bool)

(assert (=> b!569711 m!548665))

(declare-fun m!548667 () Bool)

(assert (=> b!569702 m!548667))

(assert (=> b!569703 m!548635))

(assert (=> b!569703 m!548635))

(declare-fun m!548669 () Bool)

(assert (=> b!569703 m!548669))

(push 1)

