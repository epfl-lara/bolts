; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120388 () Bool)

(assert start!120388)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95715 0))(
  ( (array!95716 (arr!46204 (Array (_ BitVec 32) (_ BitVec 64))) (size!46755 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95715)

(declare-fun e!793077 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1400664 () Bool)

(declare-datatypes ((SeekEntryResult!10543 0))(
  ( (MissingZero!10543 (index!44548 (_ BitVec 32))) (Found!10543 (index!44549 (_ BitVec 32))) (Intermediate!10543 (undefined!11355 Bool) (index!44550 (_ BitVec 32)) (x!126197 (_ BitVec 32))) (Undefined!10543) (MissingVacant!10543 (index!44551 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95715 (_ BitVec 32)) SeekEntryResult!10543)

(assert (=> b!1400664 (= e!793077 (= (seekEntryOrOpen!0 (select (arr!46204 a!2901) j!112) a!2901 mask!2840) (Found!10543 j!112)))))

(declare-fun b!1400665 () Bool)

(declare-fun e!793081 () Bool)

(declare-fun e!793079 () Bool)

(assert (=> b!1400665 (= e!793081 (not e!793079))))

(declare-fun res!939284 () Bool)

(assert (=> b!1400665 (=> res!939284 e!793079)))

(declare-fun lt!616373 () SeekEntryResult!10543)

(assert (=> b!1400665 (= res!939284 (or (not (is-Intermediate!10543 lt!616373)) (undefined!11355 lt!616373)))))

(assert (=> b!1400665 e!793077))

(declare-fun res!939290 () Bool)

(assert (=> b!1400665 (=> (not res!939290) (not e!793077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95715 (_ BitVec 32)) Bool)

(assert (=> b!1400665 (= res!939290 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47040 0))(
  ( (Unit!47041) )
))
(declare-fun lt!616372 () Unit!47040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47040)

(assert (=> b!1400665 (= lt!616372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616371 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95715 (_ BitVec 32)) SeekEntryResult!10543)

(assert (=> b!1400665 (= lt!616373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616371 (select (arr!46204 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400665 (= lt!616371 (toIndex!0 (select (arr!46204 a!2901) j!112) mask!2840))))

(declare-fun b!1400666 () Bool)

(declare-fun res!939285 () Bool)

(assert (=> b!1400666 (=> (not res!939285) (not e!793081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400666 (= res!939285 (validKeyInArray!0 (select (arr!46204 a!2901) j!112)))))

(declare-fun b!1400667 () Bool)

(declare-fun e!793076 () Bool)

(assert (=> b!1400667 (= e!793079 e!793076)))

(declare-fun res!939286 () Bool)

(assert (=> b!1400667 (=> res!939286 e!793076)))

(declare-fun lt!616374 () SeekEntryResult!10543)

(assert (=> b!1400667 (= res!939286 (or (= lt!616373 lt!616374) (not (is-Intermediate!10543 lt!616374))))))

(declare-fun lt!616375 () (_ BitVec 64))

(declare-fun lt!616368 () array!95715)

(assert (=> b!1400667 (= lt!616374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616375 mask!2840) lt!616375 lt!616368 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400667 (= lt!616375 (select (store (arr!46204 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400667 (= lt!616368 (array!95716 (store (arr!46204 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46755 a!2901)))))

(declare-fun b!1400668 () Bool)

(declare-fun res!939287 () Bool)

(assert (=> b!1400668 (=> (not res!939287) (not e!793081))))

(assert (=> b!1400668 (= res!939287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400670 () Bool)

(declare-fun res!939289 () Bool)

(assert (=> b!1400670 (=> (not res!939289) (not e!793081))))

(declare-datatypes ((List!32903 0))(
  ( (Nil!32900) (Cons!32899 (h!34147 (_ BitVec 64)) (t!47604 List!32903)) )
))
(declare-fun arrayNoDuplicates!0 (array!95715 (_ BitVec 32) List!32903) Bool)

(assert (=> b!1400670 (= res!939289 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32900))))

(declare-fun b!1400671 () Bool)

(declare-fun e!793078 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95715 (_ BitVec 32)) SeekEntryResult!10543)

(assert (=> b!1400671 (= e!793078 (= (seekEntryOrOpen!0 lt!616375 lt!616368 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126197 lt!616374) (index!44550 lt!616374) (index!44550 lt!616374) (select (arr!46204 a!2901) j!112) lt!616368 mask!2840)))))

(declare-fun b!1400672 () Bool)

(declare-fun e!793082 () Bool)

(assert (=> b!1400672 (= e!793082 true)))

(declare-fun lt!616369 () SeekEntryResult!10543)

(assert (=> b!1400672 (= lt!616369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616371 lt!616375 lt!616368 mask!2840))))

(declare-fun b!1400673 () Bool)

(assert (=> b!1400673 (= e!793076 e!793082)))

(declare-fun res!939293 () Bool)

(assert (=> b!1400673 (=> res!939293 e!793082)))

(assert (=> b!1400673 (= res!939293 (or (bvslt (x!126197 lt!616373) #b00000000000000000000000000000000) (bvsgt (x!126197 lt!616373) #b01111111111111111111111111111110) (bvslt (x!126197 lt!616374) #b00000000000000000000000000000000) (bvsgt (x!126197 lt!616374) #b01111111111111111111111111111110) (bvslt lt!616371 #b00000000000000000000000000000000) (bvsge lt!616371 (size!46755 a!2901)) (bvslt (index!44550 lt!616373) #b00000000000000000000000000000000) (bvsge (index!44550 lt!616373) (size!46755 a!2901)) (bvslt (index!44550 lt!616374) #b00000000000000000000000000000000) (bvsge (index!44550 lt!616374) (size!46755 a!2901)) (not (= lt!616373 (Intermediate!10543 false (index!44550 lt!616373) (x!126197 lt!616373)))) (not (= lt!616374 (Intermediate!10543 false (index!44550 lt!616374) (x!126197 lt!616374))))))))

(assert (=> b!1400673 e!793078))

(declare-fun res!939288 () Bool)

(assert (=> b!1400673 (=> (not res!939288) (not e!793078))))

(assert (=> b!1400673 (= res!939288 (and (not (undefined!11355 lt!616374)) (= (index!44550 lt!616374) i!1037) (bvslt (x!126197 lt!616374) (x!126197 lt!616373)) (= (select (store (arr!46204 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44550 lt!616374)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616370 () Unit!47040)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47040)

(assert (=> b!1400673 (= lt!616370 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616371 (x!126197 lt!616373) (index!44550 lt!616373) (x!126197 lt!616374) (index!44550 lt!616374) (undefined!11355 lt!616374) mask!2840))))

(declare-fun b!1400674 () Bool)

(declare-fun res!939291 () Bool)

(assert (=> b!1400674 (=> (not res!939291) (not e!793081))))

(assert (=> b!1400674 (= res!939291 (validKeyInArray!0 (select (arr!46204 a!2901) i!1037)))))

(declare-fun res!939292 () Bool)

(assert (=> start!120388 (=> (not res!939292) (not e!793081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120388 (= res!939292 (validMask!0 mask!2840))))

(assert (=> start!120388 e!793081))

(assert (=> start!120388 true))

(declare-fun array_inv!35149 (array!95715) Bool)

(assert (=> start!120388 (array_inv!35149 a!2901)))

(declare-fun b!1400669 () Bool)

(declare-fun res!939294 () Bool)

(assert (=> b!1400669 (=> (not res!939294) (not e!793081))))

(assert (=> b!1400669 (= res!939294 (and (= (size!46755 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46755 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46755 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120388 res!939292) b!1400669))

(assert (= (and b!1400669 res!939294) b!1400674))

(assert (= (and b!1400674 res!939291) b!1400666))

(assert (= (and b!1400666 res!939285) b!1400668))

(assert (= (and b!1400668 res!939287) b!1400670))

(assert (= (and b!1400670 res!939289) b!1400665))

(assert (= (and b!1400665 res!939290) b!1400664))

(assert (= (and b!1400665 (not res!939284)) b!1400667))

(assert (= (and b!1400667 (not res!939286)) b!1400673))

(assert (= (and b!1400673 res!939288) b!1400671))

(assert (= (and b!1400673 (not res!939293)) b!1400672))

(declare-fun m!1288277 () Bool)

(assert (=> b!1400674 m!1288277))

(assert (=> b!1400674 m!1288277))

(declare-fun m!1288279 () Bool)

(assert (=> b!1400674 m!1288279))

(declare-fun m!1288281 () Bool)

(assert (=> b!1400664 m!1288281))

(assert (=> b!1400664 m!1288281))

(declare-fun m!1288283 () Bool)

(assert (=> b!1400664 m!1288283))

(assert (=> b!1400665 m!1288281))

(declare-fun m!1288285 () Bool)

(assert (=> b!1400665 m!1288285))

(assert (=> b!1400665 m!1288281))

(declare-fun m!1288287 () Bool)

(assert (=> b!1400665 m!1288287))

(declare-fun m!1288289 () Bool)

(assert (=> b!1400665 m!1288289))

(assert (=> b!1400665 m!1288281))

(declare-fun m!1288291 () Bool)

(assert (=> b!1400665 m!1288291))

(declare-fun m!1288293 () Bool)

(assert (=> b!1400668 m!1288293))

(declare-fun m!1288295 () Bool)

(assert (=> b!1400667 m!1288295))

(assert (=> b!1400667 m!1288295))

(declare-fun m!1288297 () Bool)

(assert (=> b!1400667 m!1288297))

(declare-fun m!1288299 () Bool)

(assert (=> b!1400667 m!1288299))

(declare-fun m!1288301 () Bool)

(assert (=> b!1400667 m!1288301))

(assert (=> b!1400673 m!1288299))

(declare-fun m!1288303 () Bool)

(assert (=> b!1400673 m!1288303))

(declare-fun m!1288305 () Bool)

(assert (=> b!1400673 m!1288305))

(declare-fun m!1288307 () Bool)

(assert (=> b!1400672 m!1288307))

(declare-fun m!1288309 () Bool)

(assert (=> b!1400670 m!1288309))

(declare-fun m!1288311 () Bool)

(assert (=> b!1400671 m!1288311))

(assert (=> b!1400671 m!1288281))

(assert (=> b!1400671 m!1288281))

(declare-fun m!1288313 () Bool)

(assert (=> b!1400671 m!1288313))

(assert (=> b!1400666 m!1288281))

(assert (=> b!1400666 m!1288281))

(declare-fun m!1288315 () Bool)

(assert (=> b!1400666 m!1288315))

(declare-fun m!1288317 () Bool)

(assert (=> start!120388 m!1288317))

(declare-fun m!1288319 () Bool)

(assert (=> start!120388 m!1288319))

(push 1)

