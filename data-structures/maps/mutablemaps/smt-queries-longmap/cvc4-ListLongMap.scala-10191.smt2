; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120116 () Bool)

(assert start!120116)

(declare-fun b!1397900 () Bool)

(declare-fun res!936930 () Bool)

(declare-fun e!791419 () Bool)

(assert (=> b!1397900 (=> (not res!936930) (not e!791419))))

(declare-datatypes ((array!95563 0))(
  ( (array!95564 (arr!46131 (Array (_ BitVec 32) (_ BitVec 64))) (size!46682 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95563)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95563 (_ BitVec 32)) Bool)

(assert (=> b!1397900 (= res!936930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397901 () Bool)

(declare-fun res!936923 () Bool)

(assert (=> b!1397901 (=> (not res!936923) (not e!791419))))

(declare-datatypes ((List!32830 0))(
  ( (Nil!32827) (Cons!32826 (h!34068 (_ BitVec 64)) (t!47531 List!32830)) )
))
(declare-fun arrayNoDuplicates!0 (array!95563 (_ BitVec 32) List!32830) Bool)

(assert (=> b!1397901 (= res!936923 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32827))))

(declare-fun b!1397902 () Bool)

(declare-fun res!936926 () Bool)

(assert (=> b!1397902 (=> (not res!936926) (not e!791419))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397902 (= res!936926 (and (= (size!46682 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46682 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46682 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!936927 () Bool)

(assert (=> start!120116 (=> (not res!936927) (not e!791419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120116 (= res!936927 (validMask!0 mask!2840))))

(assert (=> start!120116 e!791419))

(assert (=> start!120116 true))

(declare-fun array_inv!35076 (array!95563) Bool)

(assert (=> start!120116 (array_inv!35076 a!2901)))

(declare-fun b!1397903 () Bool)

(declare-fun e!791417 () Bool)

(declare-fun e!791420 () Bool)

(assert (=> b!1397903 (= e!791417 e!791420)))

(declare-fun res!936929 () Bool)

(assert (=> b!1397903 (=> res!936929 e!791420)))

(declare-datatypes ((SeekEntryResult!10470 0))(
  ( (MissingZero!10470 (index!44250 (_ BitVec 32))) (Found!10470 (index!44251 (_ BitVec 32))) (Intermediate!10470 (undefined!11282 Bool) (index!44252 (_ BitVec 32)) (x!125903 (_ BitVec 32))) (Undefined!10470) (MissingVacant!10470 (index!44253 (_ BitVec 32))) )
))
(declare-fun lt!614572 () SeekEntryResult!10470)

(declare-fun lt!614568 () SeekEntryResult!10470)

(declare-fun lt!614570 () (_ BitVec 32))

(assert (=> b!1397903 (= res!936929 (or (= lt!614568 lt!614572) (not (is-Intermediate!10470 lt!614572)) (bvslt (x!125903 lt!614568) #b00000000000000000000000000000000) (bvsgt (x!125903 lt!614568) #b01111111111111111111111111111110) (bvslt lt!614570 #b00000000000000000000000000000000) (bvsge lt!614570 (size!46682 a!2901)) (bvslt (index!44252 lt!614568) #b00000000000000000000000000000000) (bvsge (index!44252 lt!614568) (size!46682 a!2901)) (not (= lt!614568 (Intermediate!10470 false (index!44252 lt!614568) (x!125903 lt!614568)))) (not (= lt!614572 (Intermediate!10470 (undefined!11282 lt!614572) (index!44252 lt!614572) (x!125903 lt!614572))))))))

(declare-fun lt!614569 () array!95563)

(declare-fun lt!614566 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95563 (_ BitVec 32)) SeekEntryResult!10470)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397903 (= lt!614572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614566 mask!2840) lt!614566 lt!614569 mask!2840))))

(assert (=> b!1397903 (= lt!614566 (select (store (arr!46131 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397903 (= lt!614569 (array!95564 (store (arr!46131 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46682 a!2901)))))

(declare-fun b!1397904 () Bool)

(assert (=> b!1397904 (= e!791419 (not e!791417))))

(declare-fun res!936928 () Bool)

(assert (=> b!1397904 (=> res!936928 e!791417)))

(assert (=> b!1397904 (= res!936928 (or (not (is-Intermediate!10470 lt!614568)) (undefined!11282 lt!614568)))))

(declare-fun e!791416 () Bool)

(assert (=> b!1397904 e!791416))

(declare-fun res!936925 () Bool)

(assert (=> b!1397904 (=> (not res!936925) (not e!791416))))

(assert (=> b!1397904 (= res!936925 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46894 0))(
  ( (Unit!46895) )
))
(declare-fun lt!614571 () Unit!46894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46894)

(assert (=> b!1397904 (= lt!614571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397904 (= lt!614568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614570 (select (arr!46131 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397904 (= lt!614570 (toIndex!0 (select (arr!46131 a!2901) j!112) mask!2840))))

(declare-fun b!1397905 () Bool)

(assert (=> b!1397905 (= e!791420 true)))

(declare-fun lt!614567 () SeekEntryResult!10470)

(assert (=> b!1397905 (= lt!614567 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614570 lt!614566 lt!614569 mask!2840))))

(declare-fun b!1397906 () Bool)

(declare-fun res!936922 () Bool)

(assert (=> b!1397906 (=> (not res!936922) (not e!791419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397906 (= res!936922 (validKeyInArray!0 (select (arr!46131 a!2901) i!1037)))))

(declare-fun b!1397907 () Bool)

(declare-fun res!936924 () Bool)

(assert (=> b!1397907 (=> (not res!936924) (not e!791419))))

(assert (=> b!1397907 (= res!936924 (validKeyInArray!0 (select (arr!46131 a!2901) j!112)))))

(declare-fun b!1397908 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95563 (_ BitVec 32)) SeekEntryResult!10470)

(assert (=> b!1397908 (= e!791416 (= (seekEntryOrOpen!0 (select (arr!46131 a!2901) j!112) a!2901 mask!2840) (Found!10470 j!112)))))

(assert (= (and start!120116 res!936927) b!1397902))

(assert (= (and b!1397902 res!936926) b!1397906))

(assert (= (and b!1397906 res!936922) b!1397907))

(assert (= (and b!1397907 res!936924) b!1397900))

(assert (= (and b!1397900 res!936930) b!1397901))

(assert (= (and b!1397901 res!936923) b!1397904))

(assert (= (and b!1397904 res!936925) b!1397908))

(assert (= (and b!1397904 (not res!936928)) b!1397903))

(assert (= (and b!1397903 (not res!936929)) b!1397905))

(declare-fun m!1284911 () Bool)

(assert (=> b!1397901 m!1284911))

(declare-fun m!1284913 () Bool)

(assert (=> b!1397904 m!1284913))

(declare-fun m!1284915 () Bool)

(assert (=> b!1397904 m!1284915))

(assert (=> b!1397904 m!1284913))

(assert (=> b!1397904 m!1284913))

(declare-fun m!1284917 () Bool)

(assert (=> b!1397904 m!1284917))

(declare-fun m!1284919 () Bool)

(assert (=> b!1397904 m!1284919))

(declare-fun m!1284921 () Bool)

(assert (=> b!1397904 m!1284921))

(declare-fun m!1284923 () Bool)

(assert (=> b!1397900 m!1284923))

(declare-fun m!1284925 () Bool)

(assert (=> b!1397905 m!1284925))

(assert (=> b!1397908 m!1284913))

(assert (=> b!1397908 m!1284913))

(declare-fun m!1284927 () Bool)

(assert (=> b!1397908 m!1284927))

(assert (=> b!1397907 m!1284913))

(assert (=> b!1397907 m!1284913))

(declare-fun m!1284929 () Bool)

(assert (=> b!1397907 m!1284929))

(declare-fun m!1284931 () Bool)

(assert (=> b!1397906 m!1284931))

(assert (=> b!1397906 m!1284931))

(declare-fun m!1284933 () Bool)

(assert (=> b!1397906 m!1284933))

(declare-fun m!1284935 () Bool)

(assert (=> start!120116 m!1284935))

(declare-fun m!1284937 () Bool)

(assert (=> start!120116 m!1284937))

(declare-fun m!1284939 () Bool)

(assert (=> b!1397903 m!1284939))

(assert (=> b!1397903 m!1284939))

(declare-fun m!1284941 () Bool)

(assert (=> b!1397903 m!1284941))

(declare-fun m!1284943 () Bool)

(assert (=> b!1397903 m!1284943))

(declare-fun m!1284945 () Bool)

(assert (=> b!1397903 m!1284945))

(push 1)

