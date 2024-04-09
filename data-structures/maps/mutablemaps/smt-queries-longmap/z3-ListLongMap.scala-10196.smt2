; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120144 () Bool)

(assert start!120144)

(declare-fun b!1398287 () Bool)

(declare-fun res!937312 () Bool)

(declare-fun e!791635 () Bool)

(assert (=> b!1398287 (=> (not res!937312) (not e!791635))))

(declare-datatypes ((array!95591 0))(
  ( (array!95592 (arr!46145 (Array (_ BitVec 32) (_ BitVec 64))) (size!46696 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95591)

(declare-datatypes ((List!32844 0))(
  ( (Nil!32841) (Cons!32840 (h!34082 (_ BitVec 64)) (t!47545 List!32844)) )
))
(declare-fun arrayNoDuplicates!0 (array!95591 (_ BitVec 32) List!32844) Bool)

(assert (=> b!1398287 (= res!937312 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32841))))

(declare-fun b!1398288 () Bool)

(declare-fun res!937315 () Bool)

(assert (=> b!1398288 (=> (not res!937315) (not e!791635))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398288 (= res!937315 (validKeyInArray!0 (select (arr!46145 a!2901) j!112)))))

(declare-fun b!1398289 () Bool)

(declare-fun e!791639 () Bool)

(assert (=> b!1398289 (= e!791639 true)))

(declare-datatypes ((SeekEntryResult!10484 0))(
  ( (MissingZero!10484 (index!44306 (_ BitVec 32))) (Found!10484 (index!44307 (_ BitVec 32))) (Intermediate!10484 (undefined!11296 Bool) (index!44308 (_ BitVec 32)) (x!125957 (_ BitVec 32))) (Undefined!10484) (MissingVacant!10484 (index!44309 (_ BitVec 32))) )
))
(declare-fun lt!614819 () SeekEntryResult!10484)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!614822 () SeekEntryResult!10484)

(assert (=> b!1398289 (and (not (undefined!11296 lt!614822)) (= (index!44308 lt!614822) i!1037) (bvslt (x!125957 lt!614822) (x!125957 lt!614819)) (= (select (store (arr!46145 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44308 lt!614822)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!46922 0))(
  ( (Unit!46923) )
))
(declare-fun lt!614820 () Unit!46922)

(declare-fun lt!614821 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46922)

(assert (=> b!1398289 (= lt!614820 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614821 (x!125957 lt!614819) (index!44308 lt!614819) (x!125957 lt!614822) (index!44308 lt!614822) (undefined!11296 lt!614822) mask!2840))))

(declare-fun res!937311 () Bool)

(assert (=> start!120144 (=> (not res!937311) (not e!791635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120144 (= res!937311 (validMask!0 mask!2840))))

(assert (=> start!120144 e!791635))

(assert (=> start!120144 true))

(declare-fun array_inv!35090 (array!95591) Bool)

(assert (=> start!120144 (array_inv!35090 a!2901)))

(declare-fun e!791638 () Bool)

(declare-fun b!1398290 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95591 (_ BitVec 32)) SeekEntryResult!10484)

(assert (=> b!1398290 (= e!791638 (= (seekEntryOrOpen!0 (select (arr!46145 a!2901) j!112) a!2901 mask!2840) (Found!10484 j!112)))))

(declare-fun b!1398291 () Bool)

(declare-fun res!937317 () Bool)

(assert (=> b!1398291 (=> (not res!937317) (not e!791635))))

(assert (=> b!1398291 (= res!937317 (and (= (size!46696 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46696 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46696 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398292 () Bool)

(declare-fun res!937316 () Bool)

(assert (=> b!1398292 (=> (not res!937316) (not e!791635))))

(assert (=> b!1398292 (= res!937316 (validKeyInArray!0 (select (arr!46145 a!2901) i!1037)))))

(declare-fun b!1398293 () Bool)

(declare-fun e!791637 () Bool)

(assert (=> b!1398293 (= e!791637 e!791639)))

(declare-fun res!937309 () Bool)

(assert (=> b!1398293 (=> res!937309 e!791639)))

(get-info :version)

(assert (=> b!1398293 (= res!937309 (or (= lt!614819 lt!614822) (not ((_ is Intermediate!10484) lt!614822))))))

(declare-fun lt!614823 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95591 (_ BitVec 32)) SeekEntryResult!10484)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398293 (= lt!614822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614823 mask!2840) lt!614823 (array!95592 (store (arr!46145 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46696 a!2901)) mask!2840))))

(assert (=> b!1398293 (= lt!614823 (select (store (arr!46145 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398294 () Bool)

(assert (=> b!1398294 (= e!791635 (not e!791637))))

(declare-fun res!937313 () Bool)

(assert (=> b!1398294 (=> res!937313 e!791637)))

(assert (=> b!1398294 (= res!937313 (or (not ((_ is Intermediate!10484) lt!614819)) (undefined!11296 lt!614819)))))

(assert (=> b!1398294 e!791638))

(declare-fun res!937314 () Bool)

(assert (=> b!1398294 (=> (not res!937314) (not e!791638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95591 (_ BitVec 32)) Bool)

(assert (=> b!1398294 (= res!937314 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614824 () Unit!46922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46922)

(assert (=> b!1398294 (= lt!614824 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398294 (= lt!614819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614821 (select (arr!46145 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398294 (= lt!614821 (toIndex!0 (select (arr!46145 a!2901) j!112) mask!2840))))

(declare-fun b!1398295 () Bool)

(declare-fun res!937310 () Bool)

(assert (=> b!1398295 (=> (not res!937310) (not e!791635))))

(assert (=> b!1398295 (= res!937310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120144 res!937311) b!1398291))

(assert (= (and b!1398291 res!937317) b!1398292))

(assert (= (and b!1398292 res!937316) b!1398288))

(assert (= (and b!1398288 res!937315) b!1398295))

(assert (= (and b!1398295 res!937310) b!1398287))

(assert (= (and b!1398287 res!937312) b!1398294))

(assert (= (and b!1398294 res!937314) b!1398290))

(assert (= (and b!1398294 (not res!937313)) b!1398293))

(assert (= (and b!1398293 (not res!937309)) b!1398289))

(declare-fun m!1285447 () Bool)

(assert (=> b!1398292 m!1285447))

(assert (=> b!1398292 m!1285447))

(declare-fun m!1285449 () Bool)

(assert (=> b!1398292 m!1285449))

(declare-fun m!1285451 () Bool)

(assert (=> start!120144 m!1285451))

(declare-fun m!1285453 () Bool)

(assert (=> start!120144 m!1285453))

(declare-fun m!1285455 () Bool)

(assert (=> b!1398287 m!1285455))

(declare-fun m!1285457 () Bool)

(assert (=> b!1398294 m!1285457))

(declare-fun m!1285459 () Bool)

(assert (=> b!1398294 m!1285459))

(declare-fun m!1285461 () Bool)

(assert (=> b!1398294 m!1285461))

(assert (=> b!1398294 m!1285457))

(declare-fun m!1285463 () Bool)

(assert (=> b!1398294 m!1285463))

(assert (=> b!1398294 m!1285457))

(declare-fun m!1285465 () Bool)

(assert (=> b!1398294 m!1285465))

(declare-fun m!1285467 () Bool)

(assert (=> b!1398289 m!1285467))

(declare-fun m!1285469 () Bool)

(assert (=> b!1398289 m!1285469))

(declare-fun m!1285471 () Bool)

(assert (=> b!1398289 m!1285471))

(declare-fun m!1285473 () Bool)

(assert (=> b!1398295 m!1285473))

(assert (=> b!1398288 m!1285457))

(assert (=> b!1398288 m!1285457))

(declare-fun m!1285475 () Bool)

(assert (=> b!1398288 m!1285475))

(assert (=> b!1398290 m!1285457))

(assert (=> b!1398290 m!1285457))

(declare-fun m!1285477 () Bool)

(assert (=> b!1398290 m!1285477))

(declare-fun m!1285479 () Bool)

(assert (=> b!1398293 m!1285479))

(assert (=> b!1398293 m!1285467))

(assert (=> b!1398293 m!1285479))

(declare-fun m!1285481 () Bool)

(assert (=> b!1398293 m!1285481))

(declare-fun m!1285483 () Bool)

(assert (=> b!1398293 m!1285483))

(check-sat (not b!1398290) (not start!120144) (not b!1398289) (not b!1398293) (not b!1398288) (not b!1398295) (not b!1398292) (not b!1398294) (not b!1398287))
(check-sat)
