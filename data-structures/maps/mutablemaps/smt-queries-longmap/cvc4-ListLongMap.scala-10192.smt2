; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120122 () Bool)

(assert start!120122)

(declare-fun b!1397981 () Bool)

(declare-fun res!937008 () Bool)

(declare-fun e!791462 () Bool)

(assert (=> b!1397981 (=> (not res!937008) (not e!791462))))

(declare-datatypes ((array!95569 0))(
  ( (array!95570 (arr!46134 (Array (_ BitVec 32) (_ BitVec 64))) (size!46685 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95569)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95569 (_ BitVec 32)) Bool)

(assert (=> b!1397981 (= res!937008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397982 () Bool)

(declare-fun res!937007 () Bool)

(assert (=> b!1397982 (=> (not res!937007) (not e!791462))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397982 (= res!937007 (validKeyInArray!0 (select (arr!46134 a!2901) j!112)))))

(declare-fun res!937005 () Bool)

(assert (=> start!120122 (=> (not res!937005) (not e!791462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120122 (= res!937005 (validMask!0 mask!2840))))

(assert (=> start!120122 e!791462))

(assert (=> start!120122 true))

(declare-fun array_inv!35079 (array!95569) Bool)

(assert (=> start!120122 (array_inv!35079 a!2901)))

(declare-fun b!1397983 () Bool)

(declare-fun res!937004 () Bool)

(assert (=> b!1397983 (=> (not res!937004) (not e!791462))))

(declare-datatypes ((List!32833 0))(
  ( (Nil!32830) (Cons!32829 (h!34071 (_ BitVec 64)) (t!47534 List!32833)) )
))
(declare-fun arrayNoDuplicates!0 (array!95569 (_ BitVec 32) List!32833) Bool)

(assert (=> b!1397983 (= res!937004 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32830))))

(declare-fun b!1397984 () Bool)

(declare-fun e!791465 () Bool)

(declare-fun e!791464 () Bool)

(assert (=> b!1397984 (= e!791465 e!791464)))

(declare-fun res!937003 () Bool)

(assert (=> b!1397984 (=> res!937003 e!791464)))

(declare-datatypes ((SeekEntryResult!10473 0))(
  ( (MissingZero!10473 (index!44262 (_ BitVec 32))) (Found!10473 (index!44263 (_ BitVec 32))) (Intermediate!10473 (undefined!11285 Bool) (index!44264 (_ BitVec 32)) (x!125914 (_ BitVec 32))) (Undefined!10473) (MissingVacant!10473 (index!44265 (_ BitVec 32))) )
))
(declare-fun lt!614622 () SeekEntryResult!10473)

(declare-fun lt!614623 () SeekEntryResult!10473)

(assert (=> b!1397984 (= res!937003 (or (= lt!614622 lt!614623) (not (is-Intermediate!10473 lt!614623))))))

(declare-fun lt!614625 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95569 (_ BitVec 32)) SeekEntryResult!10473)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397984 (= lt!614623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614625 mask!2840) lt!614625 (array!95570 (store (arr!46134 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46685 a!2901)) mask!2840))))

(assert (=> b!1397984 (= lt!614625 (select (store (arr!46134 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1397985 () Bool)

(assert (=> b!1397985 (= e!791464 true)))

(assert (=> b!1397985 (and (not (undefined!11285 lt!614623)) (= (index!44264 lt!614623) i!1037) (bvslt (x!125914 lt!614623) (x!125914 lt!614622)) (= (select (store (arr!46134 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44264 lt!614623)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46900 0))(
  ( (Unit!46901) )
))
(declare-fun lt!614624 () Unit!46900)

(declare-fun lt!614626 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46900)

(assert (=> b!1397985 (= lt!614624 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614626 (x!125914 lt!614622) (index!44264 lt!614622) (x!125914 lt!614623) (index!44264 lt!614623) (undefined!11285 lt!614623) mask!2840))))

(declare-fun b!1397986 () Bool)

(declare-fun res!937010 () Bool)

(assert (=> b!1397986 (=> (not res!937010) (not e!791462))))

(assert (=> b!1397986 (= res!937010 (validKeyInArray!0 (select (arr!46134 a!2901) i!1037)))))

(declare-fun e!791463 () Bool)

(declare-fun b!1397987 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95569 (_ BitVec 32)) SeekEntryResult!10473)

(assert (=> b!1397987 (= e!791463 (= (seekEntryOrOpen!0 (select (arr!46134 a!2901) j!112) a!2901 mask!2840) (Found!10473 j!112)))))

(declare-fun b!1397988 () Bool)

(declare-fun res!937009 () Bool)

(assert (=> b!1397988 (=> (not res!937009) (not e!791462))))

(assert (=> b!1397988 (= res!937009 (and (= (size!46685 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46685 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46685 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397989 () Bool)

(assert (=> b!1397989 (= e!791462 (not e!791465))))

(declare-fun res!937006 () Bool)

(assert (=> b!1397989 (=> res!937006 e!791465)))

(assert (=> b!1397989 (= res!937006 (or (not (is-Intermediate!10473 lt!614622)) (undefined!11285 lt!614622)))))

(assert (=> b!1397989 e!791463))

(declare-fun res!937011 () Bool)

(assert (=> b!1397989 (=> (not res!937011) (not e!791463))))

(assert (=> b!1397989 (= res!937011 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614621 () Unit!46900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46900)

(assert (=> b!1397989 (= lt!614621 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397989 (= lt!614622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614626 (select (arr!46134 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397989 (= lt!614626 (toIndex!0 (select (arr!46134 a!2901) j!112) mask!2840))))

(assert (= (and start!120122 res!937005) b!1397988))

(assert (= (and b!1397988 res!937009) b!1397986))

(assert (= (and b!1397986 res!937010) b!1397982))

(assert (= (and b!1397982 res!937007) b!1397981))

(assert (= (and b!1397981 res!937008) b!1397983))

(assert (= (and b!1397983 res!937004) b!1397989))

(assert (= (and b!1397989 res!937011) b!1397987))

(assert (= (and b!1397989 (not res!937006)) b!1397984))

(assert (= (and b!1397984 (not res!937003)) b!1397985))

(declare-fun m!1285023 () Bool)

(assert (=> b!1397981 m!1285023))

(declare-fun m!1285025 () Bool)

(assert (=> b!1397983 m!1285025))

(declare-fun m!1285027 () Bool)

(assert (=> b!1397986 m!1285027))

(assert (=> b!1397986 m!1285027))

(declare-fun m!1285029 () Bool)

(assert (=> b!1397986 m!1285029))

(declare-fun m!1285031 () Bool)

(assert (=> start!120122 m!1285031))

(declare-fun m!1285033 () Bool)

(assert (=> start!120122 m!1285033))

(declare-fun m!1285035 () Bool)

(assert (=> b!1397984 m!1285035))

(declare-fun m!1285037 () Bool)

(assert (=> b!1397984 m!1285037))

(assert (=> b!1397984 m!1285035))

(declare-fun m!1285039 () Bool)

(assert (=> b!1397984 m!1285039))

(declare-fun m!1285041 () Bool)

(assert (=> b!1397984 m!1285041))

(assert (=> b!1397985 m!1285037))

(declare-fun m!1285043 () Bool)

(assert (=> b!1397985 m!1285043))

(declare-fun m!1285045 () Bool)

(assert (=> b!1397985 m!1285045))

(declare-fun m!1285047 () Bool)

(assert (=> b!1397982 m!1285047))

(assert (=> b!1397982 m!1285047))

(declare-fun m!1285049 () Bool)

(assert (=> b!1397982 m!1285049))

(assert (=> b!1397989 m!1285047))

(declare-fun m!1285051 () Bool)

(assert (=> b!1397989 m!1285051))

(assert (=> b!1397989 m!1285047))

(declare-fun m!1285053 () Bool)

(assert (=> b!1397989 m!1285053))

(declare-fun m!1285055 () Bool)

(assert (=> b!1397989 m!1285055))

(assert (=> b!1397989 m!1285047))

(declare-fun m!1285057 () Bool)

(assert (=> b!1397989 m!1285057))

(assert (=> b!1397987 m!1285047))

(assert (=> b!1397987 m!1285047))

(declare-fun m!1285059 () Bool)

(assert (=> b!1397987 m!1285059))

(push 1)

