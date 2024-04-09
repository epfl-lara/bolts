; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120066 () Bool)

(assert start!120066)

(declare-fun b!1397225 () Bool)

(declare-fun e!791041 () Bool)

(declare-fun e!791043 () Bool)

(assert (=> b!1397225 (= e!791041 (not e!791043))))

(declare-fun res!936251 () Bool)

(assert (=> b!1397225 (=> res!936251 e!791043)))

(declare-datatypes ((SeekEntryResult!10445 0))(
  ( (MissingZero!10445 (index!44150 (_ BitVec 32))) (Found!10445 (index!44151 (_ BitVec 32))) (Intermediate!10445 (undefined!11257 Bool) (index!44152 (_ BitVec 32)) (x!125814 (_ BitVec 32))) (Undefined!10445) (MissingVacant!10445 (index!44153 (_ BitVec 32))) )
))
(declare-fun lt!614045 () SeekEntryResult!10445)

(get-info :version)

(assert (=> b!1397225 (= res!936251 (or (not ((_ is Intermediate!10445) lt!614045)) (undefined!11257 lt!614045)))))

(declare-fun e!791045 () Bool)

(assert (=> b!1397225 e!791045))

(declare-fun res!936253 () Bool)

(assert (=> b!1397225 (=> (not res!936253) (not e!791045))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95513 0))(
  ( (array!95514 (arr!46106 (Array (_ BitVec 32) (_ BitVec 64))) (size!46657 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95513)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95513 (_ BitVec 32)) Bool)

(assert (=> b!1397225 (= res!936253 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46844 0))(
  ( (Unit!46845) )
))
(declare-fun lt!614047 () Unit!46844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46844)

(assert (=> b!1397225 (= lt!614047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614041 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95513 (_ BitVec 32)) SeekEntryResult!10445)

(assert (=> b!1397225 (= lt!614045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614041 (select (arr!46106 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397225 (= lt!614041 (toIndex!0 (select (arr!46106 a!2901) j!112) mask!2840))))

(declare-fun res!936254 () Bool)

(assert (=> start!120066 (=> (not res!936254) (not e!791041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120066 (= res!936254 (validMask!0 mask!2840))))

(assert (=> start!120066 e!791041))

(assert (=> start!120066 true))

(declare-fun array_inv!35051 (array!95513) Bool)

(assert (=> start!120066 (array_inv!35051 a!2901)))

(declare-fun b!1397226 () Bool)

(declare-fun res!936252 () Bool)

(assert (=> b!1397226 (=> (not res!936252) (not e!791041))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397226 (= res!936252 (validKeyInArray!0 (select (arr!46106 a!2901) i!1037)))))

(declare-fun b!1397227 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95513 (_ BitVec 32)) SeekEntryResult!10445)

(assert (=> b!1397227 (= e!791045 (= (seekEntryOrOpen!0 (select (arr!46106 a!2901) j!112) a!2901 mask!2840) (Found!10445 j!112)))))

(declare-fun b!1397228 () Bool)

(declare-fun res!936250 () Bool)

(assert (=> b!1397228 (=> (not res!936250) (not e!791041))))

(declare-datatypes ((List!32805 0))(
  ( (Nil!32802) (Cons!32801 (h!34043 (_ BitVec 64)) (t!47506 List!32805)) )
))
(declare-fun arrayNoDuplicates!0 (array!95513 (_ BitVec 32) List!32805) Bool)

(assert (=> b!1397228 (= res!936250 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32802))))

(declare-fun b!1397229 () Bool)

(declare-fun res!936248 () Bool)

(assert (=> b!1397229 (=> (not res!936248) (not e!791041))))

(assert (=> b!1397229 (= res!936248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397230 () Bool)

(declare-fun res!936249 () Bool)

(assert (=> b!1397230 (=> (not res!936249) (not e!791041))))

(assert (=> b!1397230 (= res!936249 (and (= (size!46657 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46657 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46657 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397231 () Bool)

(declare-fun res!936255 () Bool)

(assert (=> b!1397231 (=> (not res!936255) (not e!791041))))

(assert (=> b!1397231 (= res!936255 (validKeyInArray!0 (select (arr!46106 a!2901) j!112)))))

(declare-fun b!1397232 () Bool)

(declare-fun e!791044 () Bool)

(assert (=> b!1397232 (= e!791043 e!791044)))

(declare-fun res!936247 () Bool)

(assert (=> b!1397232 (=> res!936247 e!791044)))

(declare-fun lt!614044 () SeekEntryResult!10445)

(assert (=> b!1397232 (= res!936247 (or (= lt!614045 lt!614044) (not ((_ is Intermediate!10445) lt!614044)) (bvslt (x!125814 lt!614045) #b00000000000000000000000000000000) (bvsgt (x!125814 lt!614045) #b01111111111111111111111111111110) (bvslt lt!614041 #b00000000000000000000000000000000) (bvsge lt!614041 (size!46657 a!2901)) (bvslt (index!44152 lt!614045) #b00000000000000000000000000000000) (bvsge (index!44152 lt!614045) (size!46657 a!2901)) (not (= lt!614045 (Intermediate!10445 false (index!44152 lt!614045) (x!125814 lt!614045)))) (not (= lt!614044 (Intermediate!10445 (undefined!11257 lt!614044) (index!44152 lt!614044) (x!125814 lt!614044))))))))

(declare-fun lt!614046 () (_ BitVec 64))

(declare-fun lt!614042 () array!95513)

(assert (=> b!1397232 (= lt!614044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614046 mask!2840) lt!614046 lt!614042 mask!2840))))

(assert (=> b!1397232 (= lt!614046 (select (store (arr!46106 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397232 (= lt!614042 (array!95514 (store (arr!46106 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46657 a!2901)))))

(declare-fun b!1397233 () Bool)

(assert (=> b!1397233 (= e!791044 true)))

(declare-fun lt!614043 () SeekEntryResult!10445)

(assert (=> b!1397233 (= lt!614043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614041 lt!614046 lt!614042 mask!2840))))

(assert (= (and start!120066 res!936254) b!1397230))

(assert (= (and b!1397230 res!936249) b!1397226))

(assert (= (and b!1397226 res!936252) b!1397231))

(assert (= (and b!1397231 res!936255) b!1397229))

(assert (= (and b!1397229 res!936248) b!1397228))

(assert (= (and b!1397228 res!936250) b!1397225))

(assert (= (and b!1397225 res!936253) b!1397227))

(assert (= (and b!1397225 (not res!936251)) b!1397232))

(assert (= (and b!1397232 (not res!936247)) b!1397233))

(declare-fun m!1284011 () Bool)

(assert (=> b!1397229 m!1284011))

(declare-fun m!1284013 () Bool)

(assert (=> b!1397225 m!1284013))

(declare-fun m!1284015 () Bool)

(assert (=> b!1397225 m!1284015))

(assert (=> b!1397225 m!1284013))

(assert (=> b!1397225 m!1284013))

(declare-fun m!1284017 () Bool)

(assert (=> b!1397225 m!1284017))

(declare-fun m!1284019 () Bool)

(assert (=> b!1397225 m!1284019))

(declare-fun m!1284021 () Bool)

(assert (=> b!1397225 m!1284021))

(assert (=> b!1397227 m!1284013))

(assert (=> b!1397227 m!1284013))

(declare-fun m!1284023 () Bool)

(assert (=> b!1397227 m!1284023))

(declare-fun m!1284025 () Bool)

(assert (=> b!1397233 m!1284025))

(declare-fun m!1284027 () Bool)

(assert (=> b!1397232 m!1284027))

(assert (=> b!1397232 m!1284027))

(declare-fun m!1284029 () Bool)

(assert (=> b!1397232 m!1284029))

(declare-fun m!1284031 () Bool)

(assert (=> b!1397232 m!1284031))

(declare-fun m!1284033 () Bool)

(assert (=> b!1397232 m!1284033))

(declare-fun m!1284035 () Bool)

(assert (=> start!120066 m!1284035))

(declare-fun m!1284037 () Bool)

(assert (=> start!120066 m!1284037))

(declare-fun m!1284039 () Bool)

(assert (=> b!1397226 m!1284039))

(assert (=> b!1397226 m!1284039))

(declare-fun m!1284041 () Bool)

(assert (=> b!1397226 m!1284041))

(declare-fun m!1284043 () Bool)

(assert (=> b!1397228 m!1284043))

(assert (=> b!1397231 m!1284013))

(assert (=> b!1397231 m!1284013))

(declare-fun m!1284045 () Bool)

(assert (=> b!1397231 m!1284045))

(check-sat (not b!1397225) (not start!120066) (not b!1397226) (not b!1397231) (not b!1397232) (not b!1397229) (not b!1397228) (not b!1397233) (not b!1397227))
(check-sat)
