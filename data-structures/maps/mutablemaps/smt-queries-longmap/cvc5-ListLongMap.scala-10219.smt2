; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120406 () Bool)

(assert start!120406)

(declare-fun b!1400961 () Bool)

(declare-fun e!793267 () Bool)

(declare-fun e!793270 () Bool)

(assert (=> b!1400961 (= e!793267 (not e!793270))))

(declare-fun res!939582 () Bool)

(assert (=> b!1400961 (=> res!939582 e!793270)))

(declare-datatypes ((SeekEntryResult!10552 0))(
  ( (MissingZero!10552 (index!44584 (_ BitVec 32))) (Found!10552 (index!44585 (_ BitVec 32))) (Intermediate!10552 (undefined!11364 Bool) (index!44586 (_ BitVec 32)) (x!126230 (_ BitVec 32))) (Undefined!10552) (MissingVacant!10552 (index!44587 (_ BitVec 32))) )
))
(declare-fun lt!616591 () SeekEntryResult!10552)

(assert (=> b!1400961 (= res!939582 (or (not (is-Intermediate!10552 lt!616591)) (undefined!11364 lt!616591)))))

(declare-fun e!793268 () Bool)

(assert (=> b!1400961 e!793268))

(declare-fun res!939585 () Bool)

(assert (=> b!1400961 (=> (not res!939585) (not e!793268))))

(declare-datatypes ((array!95733 0))(
  ( (array!95734 (arr!46213 (Array (_ BitVec 32) (_ BitVec 64))) (size!46764 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95733)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95733 (_ BitVec 32)) Bool)

(assert (=> b!1400961 (= res!939585 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47058 0))(
  ( (Unit!47059) )
))
(declare-fun lt!616590 () Unit!47058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47058)

(assert (=> b!1400961 (= lt!616590 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616586 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95733 (_ BitVec 32)) SeekEntryResult!10552)

(assert (=> b!1400961 (= lt!616591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616586 (select (arr!46213 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400961 (= lt!616586 (toIndex!0 (select (arr!46213 a!2901) j!112) mask!2840))))

(declare-fun b!1400962 () Bool)

(declare-fun e!793271 () Bool)

(assert (=> b!1400962 (= e!793271 true)))

(declare-fun lt!616585 () SeekEntryResult!10552)

(declare-fun lt!616588 () (_ BitVec 64))

(declare-fun lt!616589 () array!95733)

(assert (=> b!1400962 (= lt!616585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616586 lt!616588 lt!616589 mask!2840))))

(declare-fun res!939581 () Bool)

(assert (=> start!120406 (=> (not res!939581) (not e!793267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120406 (= res!939581 (validMask!0 mask!2840))))

(assert (=> start!120406 e!793267))

(assert (=> start!120406 true))

(declare-fun array_inv!35158 (array!95733) Bool)

(assert (=> start!120406 (array_inv!35158 a!2901)))

(declare-fun b!1400963 () Bool)

(declare-fun e!793269 () Bool)

(declare-fun lt!616584 () SeekEntryResult!10552)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95733 (_ BitVec 32)) SeekEntryResult!10552)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95733 (_ BitVec 32)) SeekEntryResult!10552)

(assert (=> b!1400963 (= e!793269 (= (seekEntryOrOpen!0 lt!616588 lt!616589 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126230 lt!616584) (index!44586 lt!616584) (index!44586 lt!616584) (select (arr!46213 a!2901) j!112) lt!616589 mask!2840)))))

(declare-fun b!1400964 () Bool)

(assert (=> b!1400964 (= e!793268 (= (seekEntryOrOpen!0 (select (arr!46213 a!2901) j!112) a!2901 mask!2840) (Found!10552 j!112)))))

(declare-fun b!1400965 () Bool)

(declare-fun e!793265 () Bool)

(assert (=> b!1400965 (= e!793270 e!793265)))

(declare-fun res!939590 () Bool)

(assert (=> b!1400965 (=> res!939590 e!793265)))

(assert (=> b!1400965 (= res!939590 (or (= lt!616591 lt!616584) (not (is-Intermediate!10552 lt!616584))))))

(assert (=> b!1400965 (= lt!616584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616588 mask!2840) lt!616588 lt!616589 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400965 (= lt!616588 (select (store (arr!46213 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400965 (= lt!616589 (array!95734 (store (arr!46213 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46764 a!2901)))))

(declare-fun b!1400966 () Bool)

(declare-fun res!939584 () Bool)

(assert (=> b!1400966 (=> (not res!939584) (not e!793267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400966 (= res!939584 (validKeyInArray!0 (select (arr!46213 a!2901) j!112)))))

(declare-fun b!1400967 () Bool)

(declare-fun res!939586 () Bool)

(assert (=> b!1400967 (=> (not res!939586) (not e!793267))))

(assert (=> b!1400967 (= res!939586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400968 () Bool)

(declare-fun res!939588 () Bool)

(assert (=> b!1400968 (=> (not res!939588) (not e!793267))))

(declare-datatypes ((List!32912 0))(
  ( (Nil!32909) (Cons!32908 (h!34156 (_ BitVec 64)) (t!47613 List!32912)) )
))
(declare-fun arrayNoDuplicates!0 (array!95733 (_ BitVec 32) List!32912) Bool)

(assert (=> b!1400968 (= res!939588 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32909))))

(declare-fun b!1400969 () Bool)

(declare-fun res!939587 () Bool)

(assert (=> b!1400969 (=> (not res!939587) (not e!793267))))

(assert (=> b!1400969 (= res!939587 (validKeyInArray!0 (select (arr!46213 a!2901) i!1037)))))

(declare-fun b!1400970 () Bool)

(assert (=> b!1400970 (= e!793265 e!793271)))

(declare-fun res!939591 () Bool)

(assert (=> b!1400970 (=> res!939591 e!793271)))

(assert (=> b!1400970 (= res!939591 (or (bvslt (x!126230 lt!616591) #b00000000000000000000000000000000) (bvsgt (x!126230 lt!616591) #b01111111111111111111111111111110) (bvslt (x!126230 lt!616584) #b00000000000000000000000000000000) (bvsgt (x!126230 lt!616584) #b01111111111111111111111111111110) (bvslt lt!616586 #b00000000000000000000000000000000) (bvsge lt!616586 (size!46764 a!2901)) (bvslt (index!44586 lt!616591) #b00000000000000000000000000000000) (bvsge (index!44586 lt!616591) (size!46764 a!2901)) (bvslt (index!44586 lt!616584) #b00000000000000000000000000000000) (bvsge (index!44586 lt!616584) (size!46764 a!2901)) (not (= lt!616591 (Intermediate!10552 false (index!44586 lt!616591) (x!126230 lt!616591)))) (not (= lt!616584 (Intermediate!10552 false (index!44586 lt!616584) (x!126230 lt!616584))))))))

(assert (=> b!1400970 e!793269))

(declare-fun res!939583 () Bool)

(assert (=> b!1400970 (=> (not res!939583) (not e!793269))))

(assert (=> b!1400970 (= res!939583 (and (not (undefined!11364 lt!616584)) (= (index!44586 lt!616584) i!1037) (bvslt (x!126230 lt!616584) (x!126230 lt!616591)) (= (select (store (arr!46213 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44586 lt!616584)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616587 () Unit!47058)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47058)

(assert (=> b!1400970 (= lt!616587 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616586 (x!126230 lt!616591) (index!44586 lt!616591) (x!126230 lt!616584) (index!44586 lt!616584) (undefined!11364 lt!616584) mask!2840))))

(declare-fun b!1400971 () Bool)

(declare-fun res!939589 () Bool)

(assert (=> b!1400971 (=> (not res!939589) (not e!793267))))

(assert (=> b!1400971 (= res!939589 (and (= (size!46764 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46764 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46764 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120406 res!939581) b!1400971))

(assert (= (and b!1400971 res!939589) b!1400969))

(assert (= (and b!1400969 res!939587) b!1400966))

(assert (= (and b!1400966 res!939584) b!1400967))

(assert (= (and b!1400967 res!939586) b!1400968))

(assert (= (and b!1400968 res!939588) b!1400961))

(assert (= (and b!1400961 res!939585) b!1400964))

(assert (= (and b!1400961 (not res!939582)) b!1400965))

(assert (= (and b!1400965 (not res!939590)) b!1400970))

(assert (= (and b!1400970 res!939583) b!1400963))

(assert (= (and b!1400970 (not res!939591)) b!1400962))

(declare-fun m!1288673 () Bool)

(assert (=> start!120406 m!1288673))

(declare-fun m!1288675 () Bool)

(assert (=> start!120406 m!1288675))

(declare-fun m!1288677 () Bool)

(assert (=> b!1400968 m!1288677))

(declare-fun m!1288679 () Bool)

(assert (=> b!1400965 m!1288679))

(assert (=> b!1400965 m!1288679))

(declare-fun m!1288681 () Bool)

(assert (=> b!1400965 m!1288681))

(declare-fun m!1288683 () Bool)

(assert (=> b!1400965 m!1288683))

(declare-fun m!1288685 () Bool)

(assert (=> b!1400965 m!1288685))

(assert (=> b!1400970 m!1288683))

(declare-fun m!1288687 () Bool)

(assert (=> b!1400970 m!1288687))

(declare-fun m!1288689 () Bool)

(assert (=> b!1400970 m!1288689))

(declare-fun m!1288691 () Bool)

(assert (=> b!1400961 m!1288691))

(declare-fun m!1288693 () Bool)

(assert (=> b!1400961 m!1288693))

(assert (=> b!1400961 m!1288691))

(declare-fun m!1288695 () Bool)

(assert (=> b!1400961 m!1288695))

(declare-fun m!1288697 () Bool)

(assert (=> b!1400961 m!1288697))

(assert (=> b!1400961 m!1288691))

(declare-fun m!1288699 () Bool)

(assert (=> b!1400961 m!1288699))

(assert (=> b!1400966 m!1288691))

(assert (=> b!1400966 m!1288691))

(declare-fun m!1288701 () Bool)

(assert (=> b!1400966 m!1288701))

(declare-fun m!1288703 () Bool)

(assert (=> b!1400969 m!1288703))

(assert (=> b!1400969 m!1288703))

(declare-fun m!1288705 () Bool)

(assert (=> b!1400969 m!1288705))

(declare-fun m!1288707 () Bool)

(assert (=> b!1400962 m!1288707))

(assert (=> b!1400964 m!1288691))

(assert (=> b!1400964 m!1288691))

(declare-fun m!1288709 () Bool)

(assert (=> b!1400964 m!1288709))

(declare-fun m!1288711 () Bool)

(assert (=> b!1400963 m!1288711))

(assert (=> b!1400963 m!1288691))

(assert (=> b!1400963 m!1288691))

(declare-fun m!1288713 () Bool)

(assert (=> b!1400963 m!1288713))

(declare-fun m!1288715 () Bool)

(assert (=> b!1400967 m!1288715))

(push 1)

