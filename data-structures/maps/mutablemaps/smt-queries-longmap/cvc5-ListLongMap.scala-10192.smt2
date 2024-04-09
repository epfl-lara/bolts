; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120118 () Bool)

(assert start!120118)

(declare-fun b!1397927 () Bool)

(declare-fun res!936955 () Bool)

(declare-fun e!791434 () Bool)

(assert (=> b!1397927 (=> (not res!936955) (not e!791434))))

(declare-datatypes ((array!95565 0))(
  ( (array!95566 (arr!46132 (Array (_ BitVec 32) (_ BitVec 64))) (size!46683 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95565)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95565 (_ BitVec 32)) Bool)

(assert (=> b!1397927 (= res!936955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397928 () Bool)

(declare-fun res!936951 () Bool)

(assert (=> b!1397928 (=> (not res!936951) (not e!791434))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397928 (= res!936951 (validKeyInArray!0 (select (arr!46132 a!2901) j!112)))))

(declare-fun b!1397929 () Bool)

(declare-fun e!791433 () Bool)

(declare-fun e!791432 () Bool)

(assert (=> b!1397929 (= e!791433 e!791432)))

(declare-fun res!936952 () Bool)

(assert (=> b!1397929 (=> res!936952 e!791432)))

(declare-datatypes ((SeekEntryResult!10471 0))(
  ( (MissingZero!10471 (index!44254 (_ BitVec 32))) (Found!10471 (index!44255 (_ BitVec 32))) (Intermediate!10471 (undefined!11283 Bool) (index!44256 (_ BitVec 32)) (x!125912 (_ BitVec 32))) (Undefined!10471) (MissingVacant!10471 (index!44257 (_ BitVec 32))) )
))
(declare-fun lt!614586 () SeekEntryResult!10471)

(declare-fun lt!614587 () SeekEntryResult!10471)

(assert (=> b!1397929 (= res!936952 (or (= lt!614586 lt!614587) (not (is-Intermediate!10471 lt!614587))))))

(declare-fun lt!614585 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95565 (_ BitVec 32)) SeekEntryResult!10471)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397929 (= lt!614587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614585 mask!2840) lt!614585 (array!95566 (store (arr!46132 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46683 a!2901)) mask!2840))))

(assert (=> b!1397929 (= lt!614585 (select (store (arr!46132 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1397930 () Bool)

(assert (=> b!1397930 (= e!791432 true)))

(assert (=> b!1397930 (and (not (undefined!11283 lt!614587)) (= (index!44256 lt!614587) i!1037) (bvslt (x!125912 lt!614587) (x!125912 lt!614586)) (= (select (store (arr!46132 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44256 lt!614587)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46896 0))(
  ( (Unit!46897) )
))
(declare-fun lt!614589 () Unit!46896)

(declare-fun lt!614588 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46896)

(assert (=> b!1397930 (= lt!614589 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614588 (x!125912 lt!614586) (index!44256 lt!614586) (x!125912 lt!614587) (index!44256 lt!614587) (undefined!11283 lt!614587) mask!2840))))

(declare-fun b!1397931 () Bool)

(declare-fun res!936954 () Bool)

(assert (=> b!1397931 (=> (not res!936954) (not e!791434))))

(assert (=> b!1397931 (= res!936954 (validKeyInArray!0 (select (arr!46132 a!2901) i!1037)))))

(declare-fun b!1397932 () Bool)

(declare-fun res!936953 () Bool)

(assert (=> b!1397932 (=> (not res!936953) (not e!791434))))

(assert (=> b!1397932 (= res!936953 (and (= (size!46683 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46683 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46683 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397933 () Bool)

(assert (=> b!1397933 (= e!791434 (not e!791433))))

(declare-fun res!936956 () Bool)

(assert (=> b!1397933 (=> res!936956 e!791433)))

(assert (=> b!1397933 (= res!936956 (or (not (is-Intermediate!10471 lt!614586)) (undefined!11283 lt!614586)))))

(declare-fun e!791431 () Bool)

(assert (=> b!1397933 e!791431))

(declare-fun res!936949 () Bool)

(assert (=> b!1397933 (=> (not res!936949) (not e!791431))))

(assert (=> b!1397933 (= res!936949 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614590 () Unit!46896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46896)

(assert (=> b!1397933 (= lt!614590 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397933 (= lt!614586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614588 (select (arr!46132 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397933 (= lt!614588 (toIndex!0 (select (arr!46132 a!2901) j!112) mask!2840))))

(declare-fun res!936950 () Bool)

(assert (=> start!120118 (=> (not res!936950) (not e!791434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120118 (= res!936950 (validMask!0 mask!2840))))

(assert (=> start!120118 e!791434))

(assert (=> start!120118 true))

(declare-fun array_inv!35077 (array!95565) Bool)

(assert (=> start!120118 (array_inv!35077 a!2901)))

(declare-fun b!1397934 () Bool)

(declare-fun res!936957 () Bool)

(assert (=> b!1397934 (=> (not res!936957) (not e!791434))))

(declare-datatypes ((List!32831 0))(
  ( (Nil!32828) (Cons!32827 (h!34069 (_ BitVec 64)) (t!47532 List!32831)) )
))
(declare-fun arrayNoDuplicates!0 (array!95565 (_ BitVec 32) List!32831) Bool)

(assert (=> b!1397934 (= res!936957 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32828))))

(declare-fun b!1397935 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95565 (_ BitVec 32)) SeekEntryResult!10471)

(assert (=> b!1397935 (= e!791431 (= (seekEntryOrOpen!0 (select (arr!46132 a!2901) j!112) a!2901 mask!2840) (Found!10471 j!112)))))

(assert (= (and start!120118 res!936950) b!1397932))

(assert (= (and b!1397932 res!936953) b!1397931))

(assert (= (and b!1397931 res!936954) b!1397928))

(assert (= (and b!1397928 res!936951) b!1397927))

(assert (= (and b!1397927 res!936955) b!1397934))

(assert (= (and b!1397934 res!936957) b!1397933))

(assert (= (and b!1397933 res!936949) b!1397935))

(assert (= (and b!1397933 (not res!936956)) b!1397929))

(assert (= (and b!1397929 (not res!936952)) b!1397930))

(declare-fun m!1284947 () Bool)

(assert (=> b!1397928 m!1284947))

(assert (=> b!1397928 m!1284947))

(declare-fun m!1284949 () Bool)

(assert (=> b!1397928 m!1284949))

(assert (=> b!1397935 m!1284947))

(assert (=> b!1397935 m!1284947))

(declare-fun m!1284951 () Bool)

(assert (=> b!1397935 m!1284951))

(declare-fun m!1284953 () Bool)

(assert (=> b!1397927 m!1284953))

(declare-fun m!1284955 () Bool)

(assert (=> start!120118 m!1284955))

(declare-fun m!1284957 () Bool)

(assert (=> start!120118 m!1284957))

(assert (=> b!1397933 m!1284947))

(declare-fun m!1284959 () Bool)

(assert (=> b!1397933 m!1284959))

(assert (=> b!1397933 m!1284947))

(declare-fun m!1284961 () Bool)

(assert (=> b!1397933 m!1284961))

(assert (=> b!1397933 m!1284947))

(declare-fun m!1284963 () Bool)

(assert (=> b!1397933 m!1284963))

(declare-fun m!1284965 () Bool)

(assert (=> b!1397933 m!1284965))

(declare-fun m!1284967 () Bool)

(assert (=> b!1397931 m!1284967))

(assert (=> b!1397931 m!1284967))

(declare-fun m!1284969 () Bool)

(assert (=> b!1397931 m!1284969))

(declare-fun m!1284971 () Bool)

(assert (=> b!1397934 m!1284971))

(declare-fun m!1284973 () Bool)

(assert (=> b!1397929 m!1284973))

(declare-fun m!1284975 () Bool)

(assert (=> b!1397929 m!1284975))

(assert (=> b!1397929 m!1284973))

(declare-fun m!1284977 () Bool)

(assert (=> b!1397929 m!1284977))

(declare-fun m!1284979 () Bool)

(assert (=> b!1397929 m!1284979))

(assert (=> b!1397930 m!1284975))

(declare-fun m!1284981 () Bool)

(assert (=> b!1397930 m!1284981))

(declare-fun m!1284983 () Bool)

(assert (=> b!1397930 m!1284983))

(push 1)

(assert (not b!1397930))

(assert (not b!1397927))

(assert (not b!1397929))

(assert (not b!1397935))

(assert (not b!1397933))

(assert (not b!1397928))

(assert (not start!120118))

(assert (not b!1397931))

