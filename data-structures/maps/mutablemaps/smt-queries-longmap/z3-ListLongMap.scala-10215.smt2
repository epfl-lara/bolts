; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120384 () Bool)

(assert start!120384)

(declare-fun b!1400598 () Bool)

(declare-fun res!939218 () Bool)

(declare-fun e!793035 () Bool)

(assert (=> b!1400598 (=> (not res!939218) (not e!793035))))

(declare-datatypes ((array!95711 0))(
  ( (array!95712 (arr!46202 (Array (_ BitVec 32) (_ BitVec 64))) (size!46753 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95711)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400598 (= res!939218 (validKeyInArray!0 (select (arr!46202 a!2901) j!112)))))

(declare-fun res!939223 () Bool)

(assert (=> start!120384 (=> (not res!939223) (not e!793035))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120384 (= res!939223 (validMask!0 mask!2840))))

(assert (=> start!120384 e!793035))

(assert (=> start!120384 true))

(declare-fun array_inv!35147 (array!95711) Bool)

(assert (=> start!120384 (array_inv!35147 a!2901)))

(declare-fun b!1400599 () Bool)

(declare-fun res!939221 () Bool)

(assert (=> b!1400599 (=> (not res!939221) (not e!793035))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400599 (= res!939221 (and (= (size!46753 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46753 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46753 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400600 () Bool)

(declare-fun e!793039 () Bool)

(assert (=> b!1400600 (= e!793035 (not e!793039))))

(declare-fun res!939220 () Bool)

(assert (=> b!1400600 (=> res!939220 e!793039)))

(declare-datatypes ((SeekEntryResult!10541 0))(
  ( (MissingZero!10541 (index!44540 (_ BitVec 32))) (Found!10541 (index!44541 (_ BitVec 32))) (Intermediate!10541 (undefined!11353 Bool) (index!44542 (_ BitVec 32)) (x!126187 (_ BitVec 32))) (Undefined!10541) (MissingVacant!10541 (index!44543 (_ BitVec 32))) )
))
(declare-fun lt!616325 () SeekEntryResult!10541)

(get-info :version)

(assert (=> b!1400600 (= res!939220 (or (not ((_ is Intermediate!10541) lt!616325)) (undefined!11353 lt!616325)))))

(declare-fun e!793040 () Bool)

(assert (=> b!1400600 e!793040))

(declare-fun res!939225 () Bool)

(assert (=> b!1400600 (=> (not res!939225) (not e!793040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95711 (_ BitVec 32)) Bool)

(assert (=> b!1400600 (= res!939225 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47036 0))(
  ( (Unit!47037) )
))
(declare-fun lt!616320 () Unit!47036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47036)

(assert (=> b!1400600 (= lt!616320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616326 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95711 (_ BitVec 32)) SeekEntryResult!10541)

(assert (=> b!1400600 (= lt!616325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616326 (select (arr!46202 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400600 (= lt!616326 (toIndex!0 (select (arr!46202 a!2901) j!112) mask!2840))))

(declare-fun b!1400601 () Bool)

(declare-fun res!939227 () Bool)

(assert (=> b!1400601 (=> (not res!939227) (not e!793035))))

(declare-datatypes ((List!32901 0))(
  ( (Nil!32898) (Cons!32897 (h!34145 (_ BitVec 64)) (t!47602 List!32901)) )
))
(declare-fun arrayNoDuplicates!0 (array!95711 (_ BitVec 32) List!32901) Bool)

(assert (=> b!1400601 (= res!939227 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32898))))

(declare-fun b!1400602 () Bool)

(declare-fun res!939222 () Bool)

(assert (=> b!1400602 (=> (not res!939222) (not e!793035))))

(assert (=> b!1400602 (= res!939222 (validKeyInArray!0 (select (arr!46202 a!2901) i!1037)))))

(declare-fun e!793038 () Bool)

(declare-fun lt!616322 () (_ BitVec 64))

(declare-fun b!1400603 () Bool)

(declare-fun lt!616327 () array!95711)

(declare-fun lt!616324 () SeekEntryResult!10541)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95711 (_ BitVec 32)) SeekEntryResult!10541)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95711 (_ BitVec 32)) SeekEntryResult!10541)

(assert (=> b!1400603 (= e!793038 (= (seekEntryOrOpen!0 lt!616322 lt!616327 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126187 lt!616324) (index!44542 lt!616324) (index!44542 lt!616324) (select (arr!46202 a!2901) j!112) lt!616327 mask!2840)))))

(declare-fun b!1400604 () Bool)

(assert (=> b!1400604 (= e!793040 (= (seekEntryOrOpen!0 (select (arr!46202 a!2901) j!112) a!2901 mask!2840) (Found!10541 j!112)))))

(declare-fun b!1400605 () Bool)

(declare-fun res!939219 () Bool)

(assert (=> b!1400605 (=> (not res!939219) (not e!793035))))

(assert (=> b!1400605 (= res!939219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400606 () Bool)

(declare-fun e!793036 () Bool)

(assert (=> b!1400606 (= e!793036 true)))

(declare-fun lt!616321 () SeekEntryResult!10541)

(assert (=> b!1400606 (= lt!616321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616326 lt!616322 lt!616327 mask!2840))))

(declare-fun b!1400607 () Bool)

(declare-fun e!793037 () Bool)

(assert (=> b!1400607 (= e!793037 e!793036)))

(declare-fun res!939226 () Bool)

(assert (=> b!1400607 (=> res!939226 e!793036)))

(assert (=> b!1400607 (= res!939226 (or (bvslt (x!126187 lt!616325) #b00000000000000000000000000000000) (bvsgt (x!126187 lt!616325) #b01111111111111111111111111111110) (bvslt (x!126187 lt!616324) #b00000000000000000000000000000000) (bvsgt (x!126187 lt!616324) #b01111111111111111111111111111110) (bvslt lt!616326 #b00000000000000000000000000000000) (bvsge lt!616326 (size!46753 a!2901)) (bvslt (index!44542 lt!616325) #b00000000000000000000000000000000) (bvsge (index!44542 lt!616325) (size!46753 a!2901)) (bvslt (index!44542 lt!616324) #b00000000000000000000000000000000) (bvsge (index!44542 lt!616324) (size!46753 a!2901)) (not (= lt!616325 (Intermediate!10541 false (index!44542 lt!616325) (x!126187 lt!616325)))) (not (= lt!616324 (Intermediate!10541 false (index!44542 lt!616324) (x!126187 lt!616324))))))))

(assert (=> b!1400607 e!793038))

(declare-fun res!939224 () Bool)

(assert (=> b!1400607 (=> (not res!939224) (not e!793038))))

(assert (=> b!1400607 (= res!939224 (and (not (undefined!11353 lt!616324)) (= (index!44542 lt!616324) i!1037) (bvslt (x!126187 lt!616324) (x!126187 lt!616325)) (= (select (store (arr!46202 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44542 lt!616324)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616323 () Unit!47036)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47036)

(assert (=> b!1400607 (= lt!616323 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616326 (x!126187 lt!616325) (index!44542 lt!616325) (x!126187 lt!616324) (index!44542 lt!616324) (undefined!11353 lt!616324) mask!2840))))

(declare-fun b!1400608 () Bool)

(assert (=> b!1400608 (= e!793039 e!793037)))

(declare-fun res!939228 () Bool)

(assert (=> b!1400608 (=> res!939228 e!793037)))

(assert (=> b!1400608 (= res!939228 (or (= lt!616325 lt!616324) (not ((_ is Intermediate!10541) lt!616324))))))

(assert (=> b!1400608 (= lt!616324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616322 mask!2840) lt!616322 lt!616327 mask!2840))))

(assert (=> b!1400608 (= lt!616322 (select (store (arr!46202 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400608 (= lt!616327 (array!95712 (store (arr!46202 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46753 a!2901)))))

(assert (= (and start!120384 res!939223) b!1400599))

(assert (= (and b!1400599 res!939221) b!1400602))

(assert (= (and b!1400602 res!939222) b!1400598))

(assert (= (and b!1400598 res!939218) b!1400605))

(assert (= (and b!1400605 res!939219) b!1400601))

(assert (= (and b!1400601 res!939227) b!1400600))

(assert (= (and b!1400600 res!939225) b!1400604))

(assert (= (and b!1400600 (not res!939220)) b!1400608))

(assert (= (and b!1400608 (not res!939228)) b!1400607))

(assert (= (and b!1400607 res!939224) b!1400603))

(assert (= (and b!1400607 (not res!939226)) b!1400606))

(declare-fun m!1288189 () Bool)

(assert (=> b!1400608 m!1288189))

(assert (=> b!1400608 m!1288189))

(declare-fun m!1288191 () Bool)

(assert (=> b!1400608 m!1288191))

(declare-fun m!1288193 () Bool)

(assert (=> b!1400608 m!1288193))

(declare-fun m!1288195 () Bool)

(assert (=> b!1400608 m!1288195))

(declare-fun m!1288197 () Bool)

(assert (=> b!1400600 m!1288197))

(declare-fun m!1288199 () Bool)

(assert (=> b!1400600 m!1288199))

(assert (=> b!1400600 m!1288197))

(declare-fun m!1288201 () Bool)

(assert (=> b!1400600 m!1288201))

(assert (=> b!1400600 m!1288197))

(declare-fun m!1288203 () Bool)

(assert (=> b!1400600 m!1288203))

(declare-fun m!1288205 () Bool)

(assert (=> b!1400600 m!1288205))

(assert (=> b!1400607 m!1288193))

(declare-fun m!1288207 () Bool)

(assert (=> b!1400607 m!1288207))

(declare-fun m!1288209 () Bool)

(assert (=> b!1400607 m!1288209))

(declare-fun m!1288211 () Bool)

(assert (=> start!120384 m!1288211))

(declare-fun m!1288213 () Bool)

(assert (=> start!120384 m!1288213))

(declare-fun m!1288215 () Bool)

(assert (=> b!1400606 m!1288215))

(declare-fun m!1288217 () Bool)

(assert (=> b!1400601 m!1288217))

(declare-fun m!1288219 () Bool)

(assert (=> b!1400605 m!1288219))

(assert (=> b!1400604 m!1288197))

(assert (=> b!1400604 m!1288197))

(declare-fun m!1288221 () Bool)

(assert (=> b!1400604 m!1288221))

(assert (=> b!1400598 m!1288197))

(assert (=> b!1400598 m!1288197))

(declare-fun m!1288223 () Bool)

(assert (=> b!1400598 m!1288223))

(declare-fun m!1288225 () Bool)

(assert (=> b!1400602 m!1288225))

(assert (=> b!1400602 m!1288225))

(declare-fun m!1288227 () Bool)

(assert (=> b!1400602 m!1288227))

(declare-fun m!1288229 () Bool)

(assert (=> b!1400603 m!1288229))

(assert (=> b!1400603 m!1288197))

(assert (=> b!1400603 m!1288197))

(declare-fun m!1288231 () Bool)

(assert (=> b!1400603 m!1288231))

(check-sat (not b!1400602) (not b!1400603) (not b!1400598) (not b!1400604) (not b!1400607) (not b!1400601) (not b!1400600) (not start!120384) (not b!1400608) (not b!1400606) (not b!1400605))
(check-sat)
