; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120138 () Bool)

(assert start!120138)

(declare-fun b!1398202 () Bool)

(declare-fun res!937232 () Bool)

(declare-fun e!791589 () Bool)

(assert (=> b!1398202 (=> (not res!937232) (not e!791589))))

(declare-datatypes ((array!95585 0))(
  ( (array!95586 (arr!46142 (Array (_ BitVec 32) (_ BitVec 64))) (size!46693 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95585)

(declare-datatypes ((List!32841 0))(
  ( (Nil!32838) (Cons!32837 (h!34079 (_ BitVec 64)) (t!47542 List!32841)) )
))
(declare-fun arrayNoDuplicates!0 (array!95585 (_ BitVec 32) List!32841) Bool)

(assert (=> b!1398202 (= res!937232 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32838))))

(declare-fun b!1398203 () Bool)

(declare-fun res!937226 () Bool)

(assert (=> b!1398203 (=> (not res!937226) (not e!791589))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398203 (= res!937226 (validKeyInArray!0 (select (arr!46142 a!2901) j!112)))))

(declare-fun b!1398205 () Bool)

(declare-fun res!937233 () Bool)

(assert (=> b!1398205 (=> (not res!937233) (not e!791589))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398205 (= res!937233 (validKeyInArray!0 (select (arr!46142 a!2901) i!1037)))))

(declare-fun b!1398206 () Bool)

(declare-fun res!937225 () Bool)

(assert (=> b!1398206 (=> (not res!937225) (not e!791589))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1398206 (= res!937225 (and (= (size!46693 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46693 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46693 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398207 () Bool)

(declare-fun e!791587 () Bool)

(assert (=> b!1398207 (= e!791589 (not e!791587))))

(declare-fun res!937224 () Bool)

(assert (=> b!1398207 (=> res!937224 e!791587)))

(declare-datatypes ((SeekEntryResult!10481 0))(
  ( (MissingZero!10481 (index!44294 (_ BitVec 32))) (Found!10481 (index!44295 (_ BitVec 32))) (Intermediate!10481 (undefined!11293 Bool) (index!44296 (_ BitVec 32)) (x!125946 (_ BitVec 32))) (Undefined!10481) (MissingVacant!10481 (index!44297 (_ BitVec 32))) )
))
(declare-fun lt!614768 () SeekEntryResult!10481)

(get-info :version)

(assert (=> b!1398207 (= res!937224 (or (not ((_ is Intermediate!10481) lt!614768)) (undefined!11293 lt!614768)))))

(declare-fun e!791591 () Bool)

(assert (=> b!1398207 e!791591))

(declare-fun res!937230 () Bool)

(assert (=> b!1398207 (=> (not res!937230) (not e!791591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95585 (_ BitVec 32)) Bool)

(assert (=> b!1398207 (= res!937230 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46916 0))(
  ( (Unit!46917) )
))
(declare-fun lt!614766 () Unit!46916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46916)

(assert (=> b!1398207 (= lt!614766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614769 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95585 (_ BitVec 32)) SeekEntryResult!10481)

(assert (=> b!1398207 (= lt!614768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614769 (select (arr!46142 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398207 (= lt!614769 (toIndex!0 (select (arr!46142 a!2901) j!112) mask!2840))))

(declare-fun b!1398208 () Bool)

(declare-fun e!791586 () Bool)

(declare-fun e!791588 () Bool)

(assert (=> b!1398208 (= e!791586 e!791588)))

(declare-fun res!937229 () Bool)

(assert (=> b!1398208 (=> res!937229 e!791588)))

(assert (=> b!1398208 (= res!937229 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!614770 () SeekEntryResult!10481)

(assert (=> b!1398208 (and (not (undefined!11293 lt!614770)) (= (index!44296 lt!614770) i!1037) (bvslt (x!125946 lt!614770) (x!125946 lt!614768)) (= (select (store (arr!46142 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44296 lt!614770)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614767 () Unit!46916)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46916)

(assert (=> b!1398208 (= lt!614767 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614769 (x!125946 lt!614768) (index!44296 lt!614768) (x!125946 lt!614770) (index!44296 lt!614770) (undefined!11293 lt!614770) mask!2840))))

(declare-fun b!1398209 () Bool)

(declare-fun lt!614765 () (_ BitVec 64))

(assert (=> b!1398209 (= e!791588 (validKeyInArray!0 lt!614765))))

(declare-fun res!937231 () Bool)

(assert (=> start!120138 (=> (not res!937231) (not e!791589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120138 (= res!937231 (validMask!0 mask!2840))))

(assert (=> start!120138 e!791589))

(assert (=> start!120138 true))

(declare-fun array_inv!35087 (array!95585) Bool)

(assert (=> start!120138 (array_inv!35087 a!2901)))

(declare-fun b!1398204 () Bool)

(assert (=> b!1398204 (= e!791587 e!791586)))

(declare-fun res!937227 () Bool)

(assert (=> b!1398204 (=> res!937227 e!791586)))

(assert (=> b!1398204 (= res!937227 (or (= lt!614768 lt!614770) (not ((_ is Intermediate!10481) lt!614770))))))

(assert (=> b!1398204 (= lt!614770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614765 mask!2840) lt!614765 (array!95586 (store (arr!46142 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46693 a!2901)) mask!2840))))

(assert (=> b!1398204 (= lt!614765 (select (store (arr!46142 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398210 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95585 (_ BitVec 32)) SeekEntryResult!10481)

(assert (=> b!1398210 (= e!791591 (= (seekEntryOrOpen!0 (select (arr!46142 a!2901) j!112) a!2901 mask!2840) (Found!10481 j!112)))))

(declare-fun b!1398211 () Bool)

(declare-fun res!937228 () Bool)

(assert (=> b!1398211 (=> (not res!937228) (not e!791589))))

(assert (=> b!1398211 (= res!937228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120138 res!937231) b!1398206))

(assert (= (and b!1398206 res!937225) b!1398205))

(assert (= (and b!1398205 res!937233) b!1398203))

(assert (= (and b!1398203 res!937226) b!1398211))

(assert (= (and b!1398211 res!937228) b!1398202))

(assert (= (and b!1398202 res!937232) b!1398207))

(assert (= (and b!1398207 res!937230) b!1398210))

(assert (= (and b!1398207 (not res!937224)) b!1398204))

(assert (= (and b!1398204 (not res!937227)) b!1398208))

(assert (= (and b!1398208 (not res!937229)) b!1398209))

(declare-fun m!1285329 () Bool)

(assert (=> b!1398203 m!1285329))

(assert (=> b!1398203 m!1285329))

(declare-fun m!1285331 () Bool)

(assert (=> b!1398203 m!1285331))

(assert (=> b!1398207 m!1285329))

(declare-fun m!1285333 () Bool)

(assert (=> b!1398207 m!1285333))

(assert (=> b!1398207 m!1285329))

(declare-fun m!1285335 () Bool)

(assert (=> b!1398207 m!1285335))

(assert (=> b!1398207 m!1285329))

(declare-fun m!1285337 () Bool)

(assert (=> b!1398207 m!1285337))

(declare-fun m!1285339 () Bool)

(assert (=> b!1398207 m!1285339))

(assert (=> b!1398210 m!1285329))

(assert (=> b!1398210 m!1285329))

(declare-fun m!1285341 () Bool)

(assert (=> b!1398210 m!1285341))

(declare-fun m!1285343 () Bool)

(assert (=> b!1398205 m!1285343))

(assert (=> b!1398205 m!1285343))

(declare-fun m!1285345 () Bool)

(assert (=> b!1398205 m!1285345))

(declare-fun m!1285347 () Bool)

(assert (=> b!1398209 m!1285347))

(declare-fun m!1285349 () Bool)

(assert (=> b!1398204 m!1285349))

(declare-fun m!1285351 () Bool)

(assert (=> b!1398204 m!1285351))

(assert (=> b!1398204 m!1285349))

(declare-fun m!1285353 () Bool)

(assert (=> b!1398204 m!1285353))

(declare-fun m!1285355 () Bool)

(assert (=> b!1398204 m!1285355))

(declare-fun m!1285357 () Bool)

(assert (=> start!120138 m!1285357))

(declare-fun m!1285359 () Bool)

(assert (=> start!120138 m!1285359))

(declare-fun m!1285361 () Bool)

(assert (=> b!1398202 m!1285361))

(declare-fun m!1285363 () Bool)

(assert (=> b!1398211 m!1285363))

(assert (=> b!1398208 m!1285351))

(declare-fun m!1285365 () Bool)

(assert (=> b!1398208 m!1285365))

(declare-fun m!1285367 () Bool)

(assert (=> b!1398208 m!1285367))

(check-sat (not b!1398207) (not start!120138) (not b!1398209) (not b!1398204) (not b!1398203) (not b!1398208) (not b!1398205) (not b!1398211) (not b!1398210) (not b!1398202))
(check-sat)
