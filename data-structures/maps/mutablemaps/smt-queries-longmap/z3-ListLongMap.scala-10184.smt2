; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120072 () Bool)

(assert start!120072)

(declare-fun b!1397306 () Bool)

(declare-fun res!936336 () Bool)

(declare-fun e!791086 () Bool)

(assert (=> b!1397306 (=> (not res!936336) (not e!791086))))

(declare-datatypes ((array!95519 0))(
  ( (array!95520 (arr!46109 (Array (_ BitVec 32) (_ BitVec 64))) (size!46660 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95519)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397306 (= res!936336 (validKeyInArray!0 (select (arr!46109 a!2901) j!112)))))

(declare-fun b!1397307 () Bool)

(declare-fun e!791090 () Bool)

(assert (=> b!1397307 (= e!791086 (not e!791090))))

(declare-fun res!936331 () Bool)

(assert (=> b!1397307 (=> res!936331 e!791090)))

(declare-datatypes ((SeekEntryResult!10448 0))(
  ( (MissingZero!10448 (index!44162 (_ BitVec 32))) (Found!10448 (index!44163 (_ BitVec 32))) (Intermediate!10448 (undefined!11260 Bool) (index!44164 (_ BitVec 32)) (x!125825 (_ BitVec 32))) (Undefined!10448) (MissingVacant!10448 (index!44165 (_ BitVec 32))) )
))
(declare-fun lt!614110 () SeekEntryResult!10448)

(get-info :version)

(assert (=> b!1397307 (= res!936331 (or (not ((_ is Intermediate!10448) lt!614110)) (undefined!11260 lt!614110)))))

(declare-fun e!791088 () Bool)

(assert (=> b!1397307 e!791088))

(declare-fun res!936335 () Bool)

(assert (=> b!1397307 (=> (not res!936335) (not e!791088))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95519 (_ BitVec 32)) Bool)

(assert (=> b!1397307 (= res!936335 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46850 0))(
  ( (Unit!46851) )
))
(declare-fun lt!614105 () Unit!46850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46850)

(assert (=> b!1397307 (= lt!614105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614106 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95519 (_ BitVec 32)) SeekEntryResult!10448)

(assert (=> b!1397307 (= lt!614110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614106 (select (arr!46109 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397307 (= lt!614106 (toIndex!0 (select (arr!46109 a!2901) j!112) mask!2840))))

(declare-fun b!1397308 () Bool)

(declare-fun res!936332 () Bool)

(assert (=> b!1397308 (=> (not res!936332) (not e!791086))))

(declare-datatypes ((List!32808 0))(
  ( (Nil!32805) (Cons!32804 (h!34046 (_ BitVec 64)) (t!47509 List!32808)) )
))
(declare-fun arrayNoDuplicates!0 (array!95519 (_ BitVec 32) List!32808) Bool)

(assert (=> b!1397308 (= res!936332 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32805))))

(declare-fun b!1397309 () Bool)

(declare-fun res!936328 () Bool)

(assert (=> b!1397309 (=> (not res!936328) (not e!791086))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397309 (= res!936328 (validKeyInArray!0 (select (arr!46109 a!2901) i!1037)))))

(declare-fun b!1397310 () Bool)

(declare-fun res!936330 () Bool)

(assert (=> b!1397310 (=> (not res!936330) (not e!791086))))

(assert (=> b!1397310 (= res!936330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397311 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95519 (_ BitVec 32)) SeekEntryResult!10448)

(assert (=> b!1397311 (= e!791088 (= (seekEntryOrOpen!0 (select (arr!46109 a!2901) j!112) a!2901 mask!2840) (Found!10448 j!112)))))

(declare-fun b!1397312 () Bool)

(declare-fun res!936334 () Bool)

(assert (=> b!1397312 (=> (not res!936334) (not e!791086))))

(assert (=> b!1397312 (= res!936334 (and (= (size!46660 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46660 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46660 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397313 () Bool)

(declare-fun e!791087 () Bool)

(assert (=> b!1397313 (= e!791090 e!791087)))

(declare-fun res!936333 () Bool)

(assert (=> b!1397313 (=> res!936333 e!791087)))

(declare-fun lt!614107 () SeekEntryResult!10448)

(assert (=> b!1397313 (= res!936333 (or (= lt!614110 lt!614107) (not ((_ is Intermediate!10448) lt!614107)) (bvslt (x!125825 lt!614110) #b00000000000000000000000000000000) (bvsgt (x!125825 lt!614110) #b01111111111111111111111111111110) (bvslt lt!614106 #b00000000000000000000000000000000) (bvsge lt!614106 (size!46660 a!2901)) (bvslt (index!44164 lt!614110) #b00000000000000000000000000000000) (bvsge (index!44164 lt!614110) (size!46660 a!2901)) (not (= lt!614110 (Intermediate!10448 false (index!44164 lt!614110) (x!125825 lt!614110)))) (not (= lt!614107 (Intermediate!10448 (undefined!11260 lt!614107) (index!44164 lt!614107) (x!125825 lt!614107))))))))

(declare-fun lt!614104 () (_ BitVec 64))

(declare-fun lt!614108 () array!95519)

(assert (=> b!1397313 (= lt!614107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614104 mask!2840) lt!614104 lt!614108 mask!2840))))

(assert (=> b!1397313 (= lt!614104 (select (store (arr!46109 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397313 (= lt!614108 (array!95520 (store (arr!46109 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46660 a!2901)))))

(declare-fun b!1397314 () Bool)

(assert (=> b!1397314 (= e!791087 true)))

(declare-fun lt!614109 () SeekEntryResult!10448)

(assert (=> b!1397314 (= lt!614109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614106 lt!614104 lt!614108 mask!2840))))

(declare-fun res!936329 () Bool)

(assert (=> start!120072 (=> (not res!936329) (not e!791086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120072 (= res!936329 (validMask!0 mask!2840))))

(assert (=> start!120072 e!791086))

(assert (=> start!120072 true))

(declare-fun array_inv!35054 (array!95519) Bool)

(assert (=> start!120072 (array_inv!35054 a!2901)))

(assert (= (and start!120072 res!936329) b!1397312))

(assert (= (and b!1397312 res!936334) b!1397309))

(assert (= (and b!1397309 res!936328) b!1397306))

(assert (= (and b!1397306 res!936336) b!1397310))

(assert (= (and b!1397310 res!936330) b!1397308))

(assert (= (and b!1397308 res!936332) b!1397307))

(assert (= (and b!1397307 res!936335) b!1397311))

(assert (= (and b!1397307 (not res!936331)) b!1397313))

(assert (= (and b!1397313 (not res!936333)) b!1397314))

(declare-fun m!1284119 () Bool)

(assert (=> b!1397306 m!1284119))

(assert (=> b!1397306 m!1284119))

(declare-fun m!1284121 () Bool)

(assert (=> b!1397306 m!1284121))

(declare-fun m!1284123 () Bool)

(assert (=> b!1397309 m!1284123))

(assert (=> b!1397309 m!1284123))

(declare-fun m!1284125 () Bool)

(assert (=> b!1397309 m!1284125))

(declare-fun m!1284127 () Bool)

(assert (=> start!120072 m!1284127))

(declare-fun m!1284129 () Bool)

(assert (=> start!120072 m!1284129))

(declare-fun m!1284131 () Bool)

(assert (=> b!1397310 m!1284131))

(declare-fun m!1284133 () Bool)

(assert (=> b!1397308 m!1284133))

(declare-fun m!1284135 () Bool)

(assert (=> b!1397314 m!1284135))

(declare-fun m!1284137 () Bool)

(assert (=> b!1397313 m!1284137))

(assert (=> b!1397313 m!1284137))

(declare-fun m!1284139 () Bool)

(assert (=> b!1397313 m!1284139))

(declare-fun m!1284141 () Bool)

(assert (=> b!1397313 m!1284141))

(declare-fun m!1284143 () Bool)

(assert (=> b!1397313 m!1284143))

(assert (=> b!1397311 m!1284119))

(assert (=> b!1397311 m!1284119))

(declare-fun m!1284145 () Bool)

(assert (=> b!1397311 m!1284145))

(assert (=> b!1397307 m!1284119))

(declare-fun m!1284147 () Bool)

(assert (=> b!1397307 m!1284147))

(assert (=> b!1397307 m!1284119))

(declare-fun m!1284149 () Bool)

(assert (=> b!1397307 m!1284149))

(assert (=> b!1397307 m!1284119))

(declare-fun m!1284151 () Bool)

(assert (=> b!1397307 m!1284151))

(declare-fun m!1284153 () Bool)

(assert (=> b!1397307 m!1284153))

(check-sat (not b!1397311) (not b!1397308) (not b!1397310) (not start!120072) (not b!1397309) (not b!1397306) (not b!1397313) (not b!1397314) (not b!1397307))
(check-sat)
