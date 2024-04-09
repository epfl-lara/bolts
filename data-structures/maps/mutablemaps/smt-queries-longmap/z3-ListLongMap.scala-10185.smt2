; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120078 () Bool)

(assert start!120078)

(declare-fun res!936416 () Bool)

(declare-fun e!791134 () Bool)

(assert (=> start!120078 (=> (not res!936416) (not e!791134))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120078 (= res!936416 (validMask!0 mask!2840))))

(assert (=> start!120078 e!791134))

(assert (=> start!120078 true))

(declare-datatypes ((array!95525 0))(
  ( (array!95526 (arr!46112 (Array (_ BitVec 32) (_ BitVec 64))) (size!46663 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95525)

(declare-fun array_inv!35057 (array!95525) Bool)

(assert (=> start!120078 (array_inv!35057 a!2901)))

(declare-fun b!1397387 () Bool)

(declare-fun res!936410 () Bool)

(assert (=> b!1397387 (=> (not res!936410) (not e!791134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95525 (_ BitVec 32)) Bool)

(assert (=> b!1397387 (= res!936410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397388 () Bool)

(declare-fun res!936409 () Bool)

(assert (=> b!1397388 (=> (not res!936409) (not e!791134))))

(declare-datatypes ((List!32811 0))(
  ( (Nil!32808) (Cons!32807 (h!34049 (_ BitVec 64)) (t!47512 List!32811)) )
))
(declare-fun arrayNoDuplicates!0 (array!95525 (_ BitVec 32) List!32811) Bool)

(assert (=> b!1397388 (= res!936409 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32808))))

(declare-fun b!1397389 () Bool)

(declare-fun e!791131 () Bool)

(declare-fun e!791135 () Bool)

(assert (=> b!1397389 (= e!791131 e!791135)))

(declare-fun res!936413 () Bool)

(assert (=> b!1397389 (=> res!936413 e!791135)))

(declare-datatypes ((SeekEntryResult!10451 0))(
  ( (MissingZero!10451 (index!44174 (_ BitVec 32))) (Found!10451 (index!44175 (_ BitVec 32))) (Intermediate!10451 (undefined!11263 Bool) (index!44176 (_ BitVec 32)) (x!125836 (_ BitVec 32))) (Undefined!10451) (MissingVacant!10451 (index!44177 (_ BitVec 32))) )
))
(declare-fun lt!614170 () SeekEntryResult!10451)

(declare-fun lt!614169 () SeekEntryResult!10451)

(declare-fun lt!614168 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1397389 (= res!936413 (or (= lt!614169 lt!614170) (not ((_ is Intermediate!10451) lt!614170)) (bvslt (x!125836 lt!614169) #b00000000000000000000000000000000) (bvsgt (x!125836 lt!614169) #b01111111111111111111111111111110) (bvslt lt!614168 #b00000000000000000000000000000000) (bvsge lt!614168 (size!46663 a!2901)) (bvslt (index!44176 lt!614169) #b00000000000000000000000000000000) (bvsge (index!44176 lt!614169) (size!46663 a!2901)) (not (= lt!614169 (Intermediate!10451 false (index!44176 lt!614169) (x!125836 lt!614169)))) (not (= lt!614170 (Intermediate!10451 (undefined!11263 lt!614170) (index!44176 lt!614170) (x!125836 lt!614170))))))))

(declare-fun lt!614171 () (_ BitVec 64))

(declare-fun lt!614172 () array!95525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95525 (_ BitVec 32)) SeekEntryResult!10451)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397389 (= lt!614170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614171 mask!2840) lt!614171 lt!614172 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397389 (= lt!614171 (select (store (arr!46112 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397389 (= lt!614172 (array!95526 (store (arr!46112 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46663 a!2901)))))

(declare-fun b!1397390 () Bool)

(assert (=> b!1397390 (= e!791135 true)))

(declare-fun lt!614173 () SeekEntryResult!10451)

(assert (=> b!1397390 (= lt!614173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614168 lt!614171 lt!614172 mask!2840))))

(declare-fun b!1397391 () Bool)

(declare-fun res!936412 () Bool)

(assert (=> b!1397391 (=> (not res!936412) (not e!791134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397391 (= res!936412 (validKeyInArray!0 (select (arr!46112 a!2901) j!112)))))

(declare-fun b!1397392 () Bool)

(declare-fun res!936415 () Bool)

(assert (=> b!1397392 (=> (not res!936415) (not e!791134))))

(assert (=> b!1397392 (= res!936415 (and (= (size!46663 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46663 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46663 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397393 () Bool)

(assert (=> b!1397393 (= e!791134 (not e!791131))))

(declare-fun res!936417 () Bool)

(assert (=> b!1397393 (=> res!936417 e!791131)))

(assert (=> b!1397393 (= res!936417 (or (not ((_ is Intermediate!10451) lt!614169)) (undefined!11263 lt!614169)))))

(declare-fun e!791133 () Bool)

(assert (=> b!1397393 e!791133))

(declare-fun res!936414 () Bool)

(assert (=> b!1397393 (=> (not res!936414) (not e!791133))))

(assert (=> b!1397393 (= res!936414 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46856 0))(
  ( (Unit!46857) )
))
(declare-fun lt!614167 () Unit!46856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46856)

(assert (=> b!1397393 (= lt!614167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397393 (= lt!614169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614168 (select (arr!46112 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397393 (= lt!614168 (toIndex!0 (select (arr!46112 a!2901) j!112) mask!2840))))

(declare-fun b!1397394 () Bool)

(declare-fun res!936411 () Bool)

(assert (=> b!1397394 (=> (not res!936411) (not e!791134))))

(assert (=> b!1397394 (= res!936411 (validKeyInArray!0 (select (arr!46112 a!2901) i!1037)))))

(declare-fun b!1397395 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95525 (_ BitVec 32)) SeekEntryResult!10451)

(assert (=> b!1397395 (= e!791133 (= (seekEntryOrOpen!0 (select (arr!46112 a!2901) j!112) a!2901 mask!2840) (Found!10451 j!112)))))

(assert (= (and start!120078 res!936416) b!1397392))

(assert (= (and b!1397392 res!936415) b!1397394))

(assert (= (and b!1397394 res!936411) b!1397391))

(assert (= (and b!1397391 res!936412) b!1397387))

(assert (= (and b!1397387 res!936410) b!1397388))

(assert (= (and b!1397388 res!936409) b!1397393))

(assert (= (and b!1397393 res!936414) b!1397395))

(assert (= (and b!1397393 (not res!936417)) b!1397389))

(assert (= (and b!1397389 (not res!936413)) b!1397390))

(declare-fun m!1284227 () Bool)

(assert (=> b!1397387 m!1284227))

(declare-fun m!1284229 () Bool)

(assert (=> b!1397391 m!1284229))

(assert (=> b!1397391 m!1284229))

(declare-fun m!1284231 () Bool)

(assert (=> b!1397391 m!1284231))

(assert (=> b!1397393 m!1284229))

(declare-fun m!1284233 () Bool)

(assert (=> b!1397393 m!1284233))

(declare-fun m!1284235 () Bool)

(assert (=> b!1397393 m!1284235))

(assert (=> b!1397393 m!1284229))

(declare-fun m!1284237 () Bool)

(assert (=> b!1397393 m!1284237))

(assert (=> b!1397393 m!1284229))

(declare-fun m!1284239 () Bool)

(assert (=> b!1397393 m!1284239))

(declare-fun m!1284241 () Bool)

(assert (=> b!1397394 m!1284241))

(assert (=> b!1397394 m!1284241))

(declare-fun m!1284243 () Bool)

(assert (=> b!1397394 m!1284243))

(declare-fun m!1284245 () Bool)

(assert (=> b!1397389 m!1284245))

(assert (=> b!1397389 m!1284245))

(declare-fun m!1284247 () Bool)

(assert (=> b!1397389 m!1284247))

(declare-fun m!1284249 () Bool)

(assert (=> b!1397389 m!1284249))

(declare-fun m!1284251 () Bool)

(assert (=> b!1397389 m!1284251))

(declare-fun m!1284253 () Bool)

(assert (=> start!120078 m!1284253))

(declare-fun m!1284255 () Bool)

(assert (=> start!120078 m!1284255))

(declare-fun m!1284257 () Bool)

(assert (=> b!1397390 m!1284257))

(declare-fun m!1284259 () Bool)

(assert (=> b!1397388 m!1284259))

(assert (=> b!1397395 m!1284229))

(assert (=> b!1397395 m!1284229))

(declare-fun m!1284261 () Bool)

(assert (=> b!1397395 m!1284261))

(check-sat (not start!120078) (not b!1397393) (not b!1397394) (not b!1397391) (not b!1397387) (not b!1397389) (not b!1397390) (not b!1397395) (not b!1397388))
(check-sat)
