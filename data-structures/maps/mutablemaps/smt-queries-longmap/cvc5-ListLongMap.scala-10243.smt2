; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120550 () Bool)

(assert start!120550)

(declare-fun b!1403160 () Bool)

(declare-fun res!941783 () Bool)

(declare-fun e!794530 () Bool)

(assert (=> b!1403160 (=> (not res!941783) (not e!794530))))

(declare-datatypes ((array!95877 0))(
  ( (array!95878 (arr!46285 (Array (_ BitVec 32) (_ BitVec 64))) (size!46836 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95877)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403160 (= res!941783 (validKeyInArray!0 (select (arr!46285 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1403161 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!794529 () Bool)

(declare-datatypes ((SeekEntryResult!10624 0))(
  ( (MissingZero!10624 (index!44872 (_ BitVec 32))) (Found!10624 (index!44873 (_ BitVec 32))) (Intermediate!10624 (undefined!11436 Bool) (index!44874 (_ BitVec 32)) (x!126494 (_ BitVec 32))) (Undefined!10624) (MissingVacant!10624 (index!44875 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95877 (_ BitVec 32)) SeekEntryResult!10624)

(assert (=> b!1403161 (= e!794529 (= (seekEntryOrOpen!0 (select (arr!46285 a!2901) j!112) a!2901 mask!2840) (Found!10624 j!112)))))

(declare-fun b!1403162 () Bool)

(declare-fun res!941782 () Bool)

(assert (=> b!1403162 (=> (not res!941782) (not e!794530))))

(assert (=> b!1403162 (= res!941782 (validKeyInArray!0 (select (arr!46285 a!2901) j!112)))))

(declare-fun b!1403163 () Bool)

(declare-fun res!941784 () Bool)

(assert (=> b!1403163 (=> (not res!941784) (not e!794530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95877 (_ BitVec 32)) Bool)

(assert (=> b!1403163 (= res!941784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403164 () Bool)

(declare-fun e!794531 () Bool)

(assert (=> b!1403164 (= e!794531 true)))

(declare-fun lt!618267 () SeekEntryResult!10624)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95877 (_ BitVec 32)) SeekEntryResult!10624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403164 (= lt!618267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46285 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46285 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95878 (store (arr!46285 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46836 a!2901)) mask!2840))))

(declare-fun b!1403165 () Bool)

(declare-fun res!941780 () Bool)

(assert (=> b!1403165 (=> (not res!941780) (not e!794530))))

(declare-datatypes ((List!32984 0))(
  ( (Nil!32981) (Cons!32980 (h!34228 (_ BitVec 64)) (t!47685 List!32984)) )
))
(declare-fun arrayNoDuplicates!0 (array!95877 (_ BitVec 32) List!32984) Bool)

(assert (=> b!1403165 (= res!941780 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32981))))

(declare-fun b!1403166 () Bool)

(declare-fun res!941787 () Bool)

(assert (=> b!1403166 (=> (not res!941787) (not e!794530))))

(assert (=> b!1403166 (= res!941787 (and (= (size!46836 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46836 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46836 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403167 () Bool)

(assert (=> b!1403167 (= e!794530 (not e!794531))))

(declare-fun res!941785 () Bool)

(assert (=> b!1403167 (=> res!941785 e!794531)))

(declare-fun lt!618268 () SeekEntryResult!10624)

(assert (=> b!1403167 (= res!941785 (or (not (is-Intermediate!10624 lt!618268)) (undefined!11436 lt!618268)))))

(assert (=> b!1403167 e!794529))

(declare-fun res!941786 () Bool)

(assert (=> b!1403167 (=> (not res!941786) (not e!794529))))

(assert (=> b!1403167 (= res!941786 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47202 0))(
  ( (Unit!47203) )
))
(declare-fun lt!618266 () Unit!47202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47202)

(assert (=> b!1403167 (= lt!618266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403167 (= lt!618268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46285 a!2901) j!112) mask!2840) (select (arr!46285 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!941781 () Bool)

(assert (=> start!120550 (=> (not res!941781) (not e!794530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120550 (= res!941781 (validMask!0 mask!2840))))

(assert (=> start!120550 e!794530))

(assert (=> start!120550 true))

(declare-fun array_inv!35230 (array!95877) Bool)

(assert (=> start!120550 (array_inv!35230 a!2901)))

(assert (= (and start!120550 res!941781) b!1403166))

(assert (= (and b!1403166 res!941787) b!1403160))

(assert (= (and b!1403160 res!941783) b!1403162))

(assert (= (and b!1403162 res!941782) b!1403163))

(assert (= (and b!1403163 res!941784) b!1403165))

(assert (= (and b!1403165 res!941780) b!1403167))

(assert (= (and b!1403167 res!941786) b!1403161))

(assert (= (and b!1403167 (not res!941785)) b!1403164))

(declare-fun m!1291775 () Bool)

(assert (=> b!1403167 m!1291775))

(declare-fun m!1291777 () Bool)

(assert (=> b!1403167 m!1291777))

(assert (=> b!1403167 m!1291775))

(declare-fun m!1291779 () Bool)

(assert (=> b!1403167 m!1291779))

(assert (=> b!1403167 m!1291777))

(assert (=> b!1403167 m!1291775))

(declare-fun m!1291781 () Bool)

(assert (=> b!1403167 m!1291781))

(declare-fun m!1291783 () Bool)

(assert (=> b!1403167 m!1291783))

(declare-fun m!1291785 () Bool)

(assert (=> b!1403164 m!1291785))

(declare-fun m!1291787 () Bool)

(assert (=> b!1403164 m!1291787))

(assert (=> b!1403164 m!1291787))

(declare-fun m!1291789 () Bool)

(assert (=> b!1403164 m!1291789))

(assert (=> b!1403164 m!1291789))

(assert (=> b!1403164 m!1291787))

(declare-fun m!1291791 () Bool)

(assert (=> b!1403164 m!1291791))

(declare-fun m!1291793 () Bool)

(assert (=> b!1403165 m!1291793))

(declare-fun m!1291795 () Bool)

(assert (=> start!120550 m!1291795))

(declare-fun m!1291797 () Bool)

(assert (=> start!120550 m!1291797))

(declare-fun m!1291799 () Bool)

(assert (=> b!1403163 m!1291799))

(declare-fun m!1291801 () Bool)

(assert (=> b!1403160 m!1291801))

(assert (=> b!1403160 m!1291801))

(declare-fun m!1291803 () Bool)

(assert (=> b!1403160 m!1291803))

(assert (=> b!1403162 m!1291775))

(assert (=> b!1403162 m!1291775))

(declare-fun m!1291805 () Bool)

(assert (=> b!1403162 m!1291805))

(assert (=> b!1403161 m!1291775))

(assert (=> b!1403161 m!1291775))

(declare-fun m!1291807 () Bool)

(assert (=> b!1403161 m!1291807))

(push 1)

(assert (not start!120550))

(assert (not b!1403161))

(assert (not b!1403163))

(assert (not b!1403164))

(assert (not b!1403165))

(assert (not b!1403160))

(assert (not b!1403167))

(assert (not b!1403162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

