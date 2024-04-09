; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120474 () Bool)

(assert start!120474)

(declare-fun b!1402083 () Bool)

(declare-fun e!793984 () Bool)

(declare-fun e!793985 () Bool)

(assert (=> b!1402083 (= e!793984 (not e!793985))))

(declare-fun res!940708 () Bool)

(assert (=> b!1402083 (=> res!940708 e!793985)))

(declare-datatypes ((SeekEntryResult!10586 0))(
  ( (MissingZero!10586 (index!44720 (_ BitVec 32))) (Found!10586 (index!44721 (_ BitVec 32))) (Intermediate!10586 (undefined!11398 Bool) (index!44722 (_ BitVec 32)) (x!126352 (_ BitVec 32))) (Undefined!10586) (MissingVacant!10586 (index!44723 (_ BitVec 32))) )
))
(declare-fun lt!617407 () SeekEntryResult!10586)

(get-info :version)

(assert (=> b!1402083 (= res!940708 (or (not ((_ is Intermediate!10586) lt!617407)) (undefined!11398 lt!617407)))))

(declare-fun e!793979 () Bool)

(assert (=> b!1402083 e!793979))

(declare-fun res!940704 () Bool)

(assert (=> b!1402083 (=> (not res!940704) (not e!793979))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95801 0))(
  ( (array!95802 (arr!46247 (Array (_ BitVec 32) (_ BitVec 64))) (size!46798 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95801)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95801 (_ BitVec 32)) Bool)

(assert (=> b!1402083 (= res!940704 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47126 0))(
  ( (Unit!47127) )
))
(declare-fun lt!617403 () Unit!47126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47126)

(assert (=> b!1402083 (= lt!617403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617405 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95801 (_ BitVec 32)) SeekEntryResult!10586)

(assert (=> b!1402083 (= lt!617407 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617405 (select (arr!46247 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402083 (= lt!617405 (toIndex!0 (select (arr!46247 a!2901) j!112) mask!2840))))

(declare-fun lt!617400 () (_ BitVec 64))

(declare-fun e!793981 () Bool)

(declare-fun b!1402084 () Bool)

(declare-fun lt!617402 () array!95801)

(declare-fun lt!617404 () SeekEntryResult!10586)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95801 (_ BitVec 32)) SeekEntryResult!10586)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95801 (_ BitVec 32)) SeekEntryResult!10586)

(assert (=> b!1402084 (= e!793981 (= (seekEntryOrOpen!0 lt!617400 lt!617402 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126352 lt!617404) (index!44722 lt!617404) (index!44722 lt!617404) (select (arr!46247 a!2901) j!112) lt!617402 mask!2840)))))

(declare-fun b!1402085 () Bool)

(declare-fun res!940707 () Bool)

(assert (=> b!1402085 (=> (not res!940707) (not e!793984))))

(declare-datatypes ((List!32946 0))(
  ( (Nil!32943) (Cons!32942 (h!34190 (_ BitVec 64)) (t!47647 List!32946)) )
))
(declare-fun arrayNoDuplicates!0 (array!95801 (_ BitVec 32) List!32946) Bool)

(assert (=> b!1402085 (= res!940707 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32943))))

(declare-fun b!1402086 () Bool)

(declare-fun res!940705 () Bool)

(assert (=> b!1402086 (=> (not res!940705) (not e!793984))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402086 (= res!940705 (validKeyInArray!0 (select (arr!46247 a!2901) i!1037)))))

(declare-fun b!1402087 () Bool)

(declare-fun res!940713 () Bool)

(assert (=> b!1402087 (=> (not res!940713) (not e!793984))))

(assert (=> b!1402087 (= res!940713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402088 () Bool)

(declare-fun e!793980 () Bool)

(declare-fun e!793982 () Bool)

(assert (=> b!1402088 (= e!793980 e!793982)))

(declare-fun res!940710 () Bool)

(assert (=> b!1402088 (=> res!940710 e!793982)))

(assert (=> b!1402088 (= res!940710 (or (bvslt (x!126352 lt!617407) #b00000000000000000000000000000000) (bvsgt (x!126352 lt!617407) #b01111111111111111111111111111110) (bvslt (x!126352 lt!617404) #b00000000000000000000000000000000) (bvsgt (x!126352 lt!617404) #b01111111111111111111111111111110) (bvslt lt!617405 #b00000000000000000000000000000000) (bvsge lt!617405 (size!46798 a!2901)) (bvslt (index!44722 lt!617407) #b00000000000000000000000000000000) (bvsge (index!44722 lt!617407) (size!46798 a!2901)) (bvslt (index!44722 lt!617404) #b00000000000000000000000000000000) (bvsge (index!44722 lt!617404) (size!46798 a!2901)) (not (= lt!617407 (Intermediate!10586 false (index!44722 lt!617407) (x!126352 lt!617407)))) (not (= lt!617404 (Intermediate!10586 false (index!44722 lt!617404) (x!126352 lt!617404))))))))

(assert (=> b!1402088 e!793981))

(declare-fun res!940703 () Bool)

(assert (=> b!1402088 (=> (not res!940703) (not e!793981))))

(assert (=> b!1402088 (= res!940703 (and (not (undefined!11398 lt!617404)) (= (index!44722 lt!617404) i!1037) (bvslt (x!126352 lt!617404) (x!126352 lt!617407)) (= (select (store (arr!46247 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44722 lt!617404)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617406 () Unit!47126)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47126)

(assert (=> b!1402088 (= lt!617406 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617405 (x!126352 lt!617407) (index!44722 lt!617407) (x!126352 lt!617404) (index!44722 lt!617404) (undefined!11398 lt!617404) mask!2840))))

(declare-fun b!1402089 () Bool)

(declare-fun res!940711 () Bool)

(assert (=> b!1402089 (=> (not res!940711) (not e!793984))))

(assert (=> b!1402089 (= res!940711 (and (= (size!46798 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46798 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46798 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!940706 () Bool)

(assert (=> start!120474 (=> (not res!940706) (not e!793984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120474 (= res!940706 (validMask!0 mask!2840))))

(assert (=> start!120474 e!793984))

(assert (=> start!120474 true))

(declare-fun array_inv!35192 (array!95801) Bool)

(assert (=> start!120474 (array_inv!35192 a!2901)))

(declare-fun b!1402090 () Bool)

(assert (=> b!1402090 (= e!793979 (= (seekEntryOrOpen!0 (select (arr!46247 a!2901) j!112) a!2901 mask!2840) (Found!10586 j!112)))))

(declare-fun b!1402091 () Bool)

(assert (=> b!1402091 (= e!793982 true)))

(declare-fun lt!617401 () SeekEntryResult!10586)

(assert (=> b!1402091 (= lt!617401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617405 lt!617400 lt!617402 mask!2840))))

(declare-fun b!1402092 () Bool)

(assert (=> b!1402092 (= e!793985 e!793980)))

(declare-fun res!940709 () Bool)

(assert (=> b!1402092 (=> res!940709 e!793980)))

(assert (=> b!1402092 (= res!940709 (or (= lt!617407 lt!617404) (not ((_ is Intermediate!10586) lt!617404))))))

(assert (=> b!1402092 (= lt!617404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617400 mask!2840) lt!617400 lt!617402 mask!2840))))

(assert (=> b!1402092 (= lt!617400 (select (store (arr!46247 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402092 (= lt!617402 (array!95802 (store (arr!46247 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46798 a!2901)))))

(declare-fun b!1402093 () Bool)

(declare-fun res!940712 () Bool)

(assert (=> b!1402093 (=> (not res!940712) (not e!793984))))

(assert (=> b!1402093 (= res!940712 (validKeyInArray!0 (select (arr!46247 a!2901) j!112)))))

(assert (= (and start!120474 res!940706) b!1402089))

(assert (= (and b!1402089 res!940711) b!1402086))

(assert (= (and b!1402086 res!940705) b!1402093))

(assert (= (and b!1402093 res!940712) b!1402087))

(assert (= (and b!1402087 res!940713) b!1402085))

(assert (= (and b!1402085 res!940707) b!1402083))

(assert (= (and b!1402083 res!940704) b!1402090))

(assert (= (and b!1402083 (not res!940708)) b!1402092))

(assert (= (and b!1402092 (not res!940709)) b!1402088))

(assert (= (and b!1402088 res!940703) b!1402084))

(assert (= (and b!1402088 (not res!940710)) b!1402091))

(declare-fun m!1290169 () Bool)

(assert (=> start!120474 m!1290169))

(declare-fun m!1290171 () Bool)

(assert (=> start!120474 m!1290171))

(declare-fun m!1290173 () Bool)

(assert (=> b!1402087 m!1290173))

(declare-fun m!1290175 () Bool)

(assert (=> b!1402085 m!1290175))

(declare-fun m!1290177 () Bool)

(assert (=> b!1402092 m!1290177))

(assert (=> b!1402092 m!1290177))

(declare-fun m!1290179 () Bool)

(assert (=> b!1402092 m!1290179))

(declare-fun m!1290181 () Bool)

(assert (=> b!1402092 m!1290181))

(declare-fun m!1290183 () Bool)

(assert (=> b!1402092 m!1290183))

(declare-fun m!1290185 () Bool)

(assert (=> b!1402086 m!1290185))

(assert (=> b!1402086 m!1290185))

(declare-fun m!1290187 () Bool)

(assert (=> b!1402086 m!1290187))

(declare-fun m!1290189 () Bool)

(assert (=> b!1402090 m!1290189))

(assert (=> b!1402090 m!1290189))

(declare-fun m!1290191 () Bool)

(assert (=> b!1402090 m!1290191))

(declare-fun m!1290193 () Bool)

(assert (=> b!1402084 m!1290193))

(assert (=> b!1402084 m!1290189))

(assert (=> b!1402084 m!1290189))

(declare-fun m!1290195 () Bool)

(assert (=> b!1402084 m!1290195))

(declare-fun m!1290197 () Bool)

(assert (=> b!1402091 m!1290197))

(assert (=> b!1402093 m!1290189))

(assert (=> b!1402093 m!1290189))

(declare-fun m!1290199 () Bool)

(assert (=> b!1402093 m!1290199))

(assert (=> b!1402083 m!1290189))

(declare-fun m!1290201 () Bool)

(assert (=> b!1402083 m!1290201))

(assert (=> b!1402083 m!1290189))

(declare-fun m!1290203 () Bool)

(assert (=> b!1402083 m!1290203))

(declare-fun m!1290205 () Bool)

(assert (=> b!1402083 m!1290205))

(assert (=> b!1402083 m!1290189))

(declare-fun m!1290207 () Bool)

(assert (=> b!1402083 m!1290207))

(assert (=> b!1402088 m!1290181))

(declare-fun m!1290209 () Bool)

(assert (=> b!1402088 m!1290209))

(declare-fun m!1290211 () Bool)

(assert (=> b!1402088 m!1290211))

(check-sat (not b!1402085) (not b!1402092) (not b!1402093) (not b!1402087) (not b!1402091) (not b!1402088) (not b!1402086) (not start!120474) (not b!1402083) (not b!1402084) (not b!1402090))
(check-sat)
