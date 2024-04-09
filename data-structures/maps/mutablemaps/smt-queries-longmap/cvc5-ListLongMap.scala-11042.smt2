; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129130 () Bool)

(assert start!129130)

(declare-fun b!1514382 () Bool)

(declare-fun res!1034361 () Bool)

(declare-fun e!845174 () Bool)

(assert (=> b!1514382 (=> (not res!1034361) (not e!845174))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100899 0))(
  ( (array!100900 (arr!48682 (Array (_ BitVec 32) (_ BitVec 64))) (size!49233 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100899)

(declare-datatypes ((SeekEntryResult!12874 0))(
  ( (MissingZero!12874 (index!53890 (_ BitVec 32))) (Found!12874 (index!53891 (_ BitVec 32))) (Intermediate!12874 (undefined!13686 Bool) (index!53892 (_ BitVec 32)) (x!135613 (_ BitVec 32))) (Undefined!12874) (MissingVacant!12874 (index!53893 (_ BitVec 32))) )
))
(declare-fun lt!656292 () SeekEntryResult!12874)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100899 (_ BitVec 32)) SeekEntryResult!12874)

(assert (=> b!1514382 (= res!1034361 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48682 a!2804) j!70) a!2804 mask!2512) lt!656292))))

(declare-fun b!1514383 () Bool)

(declare-fun e!845173 () Bool)

(assert (=> b!1514383 (= e!845173 (not true))))

(declare-fun e!845172 () Bool)

(assert (=> b!1514383 e!845172))

(declare-fun res!1034370 () Bool)

(assert (=> b!1514383 (=> (not res!1034370) (not e!845172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100899 (_ BitVec 32)) Bool)

(assert (=> b!1514383 (= res!1034370 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50572 0))(
  ( (Unit!50573) )
))
(declare-fun lt!656291 () Unit!50572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50572)

(assert (=> b!1514383 (= lt!656291 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514384 () Bool)

(declare-fun res!1034367 () Bool)

(declare-fun e!845169 () Bool)

(assert (=> b!1514384 (=> (not res!1034367) (not e!845169))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514384 (= res!1034367 (validKeyInArray!0 (select (arr!48682 a!2804) i!961)))))

(declare-fun res!1034368 () Bool)

(assert (=> start!129130 (=> (not res!1034368) (not e!845169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129130 (= res!1034368 (validMask!0 mask!2512))))

(assert (=> start!129130 e!845169))

(assert (=> start!129130 true))

(declare-fun array_inv!37627 (array!100899) Bool)

(assert (=> start!129130 (array_inv!37627 a!2804)))

(declare-fun b!1514385 () Bool)

(declare-fun e!845170 () Bool)

(declare-fun e!845171 () Bool)

(assert (=> b!1514385 (= e!845170 e!845171)))

(declare-fun res!1034369 () Bool)

(assert (=> b!1514385 (=> (not res!1034369) (not e!845171))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100899 (_ BitVec 32)) SeekEntryResult!12874)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100899 (_ BitVec 32)) SeekEntryResult!12874)

(assert (=> b!1514385 (= res!1034369 (= (seekEntryOrOpen!0 (select (arr!48682 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48682 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514386 () Bool)

(declare-fun res!1034366 () Bool)

(assert (=> b!1514386 (=> (not res!1034366) (not e!845169))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514386 (= res!1034366 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49233 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49233 a!2804))))))

(declare-fun b!1514387 () Bool)

(assert (=> b!1514387 (= e!845172 e!845170)))

(declare-fun res!1034363 () Bool)

(assert (=> b!1514387 (=> res!1034363 e!845170)))

(declare-fun lt!656293 () (_ BitVec 64))

(assert (=> b!1514387 (= res!1034363 (or (not (= (select (arr!48682 a!2804) j!70) lt!656293)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48682 a!2804) index!487) (select (arr!48682 a!2804) j!70)) (not (= (select (arr!48682 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514388 () Bool)

(declare-fun res!1034360 () Bool)

(assert (=> b!1514388 (=> (not res!1034360) (not e!845169))))

(assert (=> b!1514388 (= res!1034360 (validKeyInArray!0 (select (arr!48682 a!2804) j!70)))))

(declare-fun b!1514389 () Bool)

(assert (=> b!1514389 (= e!845174 e!845173)))

(declare-fun res!1034358 () Bool)

(assert (=> b!1514389 (=> (not res!1034358) (not e!845173))))

(declare-fun lt!656289 () array!100899)

(declare-fun lt!656290 () SeekEntryResult!12874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514389 (= res!1034358 (= lt!656290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656293 mask!2512) lt!656293 lt!656289 mask!2512)))))

(assert (=> b!1514389 (= lt!656293 (select (store (arr!48682 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514389 (= lt!656289 (array!100900 (store (arr!48682 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49233 a!2804)))))

(declare-fun b!1514390 () Bool)

(declare-fun res!1034359 () Bool)

(assert (=> b!1514390 (=> (not res!1034359) (not e!845172))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100899 (_ BitVec 32)) SeekEntryResult!12874)

(assert (=> b!1514390 (= res!1034359 (= (seekEntry!0 (select (arr!48682 a!2804) j!70) a!2804 mask!2512) (Found!12874 j!70)))))

(declare-fun b!1514391 () Bool)

(declare-fun res!1034357 () Bool)

(assert (=> b!1514391 (=> (not res!1034357) (not e!845169))))

(assert (=> b!1514391 (= res!1034357 (and (= (size!49233 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49233 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49233 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514392 () Bool)

(declare-fun res!1034364 () Bool)

(assert (=> b!1514392 (=> (not res!1034364) (not e!845169))))

(assert (=> b!1514392 (= res!1034364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514393 () Bool)

(assert (=> b!1514393 (= e!845169 e!845174)))

(declare-fun res!1034365 () Bool)

(assert (=> b!1514393 (=> (not res!1034365) (not e!845174))))

(assert (=> b!1514393 (= res!1034365 (= lt!656290 lt!656292))))

(assert (=> b!1514393 (= lt!656292 (Intermediate!12874 false resIndex!21 resX!21))))

(assert (=> b!1514393 (= lt!656290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48682 a!2804) j!70) mask!2512) (select (arr!48682 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514394 () Bool)

(declare-fun res!1034362 () Bool)

(assert (=> b!1514394 (=> (not res!1034362) (not e!845169))))

(declare-datatypes ((List!35345 0))(
  ( (Nil!35342) (Cons!35341 (h!36754 (_ BitVec 64)) (t!50046 List!35345)) )
))
(declare-fun arrayNoDuplicates!0 (array!100899 (_ BitVec 32) List!35345) Bool)

(assert (=> b!1514394 (= res!1034362 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35342))))

(declare-fun b!1514395 () Bool)

(assert (=> b!1514395 (= e!845171 (= (seekEntryOrOpen!0 lt!656293 lt!656289 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656293 lt!656289 mask!2512)))))

(assert (= (and start!129130 res!1034368) b!1514391))

(assert (= (and b!1514391 res!1034357) b!1514384))

(assert (= (and b!1514384 res!1034367) b!1514388))

(assert (= (and b!1514388 res!1034360) b!1514392))

(assert (= (and b!1514392 res!1034364) b!1514394))

(assert (= (and b!1514394 res!1034362) b!1514386))

(assert (= (and b!1514386 res!1034366) b!1514393))

(assert (= (and b!1514393 res!1034365) b!1514382))

(assert (= (and b!1514382 res!1034361) b!1514389))

(assert (= (and b!1514389 res!1034358) b!1514383))

(assert (= (and b!1514383 res!1034370) b!1514390))

(assert (= (and b!1514390 res!1034359) b!1514387))

(assert (= (and b!1514387 (not res!1034363)) b!1514385))

(assert (= (and b!1514385 res!1034369) b!1514395))

(declare-fun m!1397391 () Bool)

(assert (=> b!1514390 m!1397391))

(assert (=> b!1514390 m!1397391))

(declare-fun m!1397393 () Bool)

(assert (=> b!1514390 m!1397393))

(declare-fun m!1397395 () Bool)

(assert (=> b!1514384 m!1397395))

(assert (=> b!1514384 m!1397395))

(declare-fun m!1397397 () Bool)

(assert (=> b!1514384 m!1397397))

(assert (=> b!1514385 m!1397391))

(assert (=> b!1514385 m!1397391))

(declare-fun m!1397399 () Bool)

(assert (=> b!1514385 m!1397399))

(assert (=> b!1514385 m!1397391))

(declare-fun m!1397401 () Bool)

(assert (=> b!1514385 m!1397401))

(assert (=> b!1514393 m!1397391))

(assert (=> b!1514393 m!1397391))

(declare-fun m!1397403 () Bool)

(assert (=> b!1514393 m!1397403))

(assert (=> b!1514393 m!1397403))

(assert (=> b!1514393 m!1397391))

(declare-fun m!1397405 () Bool)

(assert (=> b!1514393 m!1397405))

(assert (=> b!1514388 m!1397391))

(assert (=> b!1514388 m!1397391))

(declare-fun m!1397407 () Bool)

(assert (=> b!1514388 m!1397407))

(declare-fun m!1397409 () Bool)

(assert (=> start!129130 m!1397409))

(declare-fun m!1397411 () Bool)

(assert (=> start!129130 m!1397411))

(declare-fun m!1397413 () Bool)

(assert (=> b!1514394 m!1397413))

(declare-fun m!1397415 () Bool)

(assert (=> b!1514389 m!1397415))

(assert (=> b!1514389 m!1397415))

(declare-fun m!1397417 () Bool)

(assert (=> b!1514389 m!1397417))

(declare-fun m!1397419 () Bool)

(assert (=> b!1514389 m!1397419))

(declare-fun m!1397421 () Bool)

(assert (=> b!1514389 m!1397421))

(declare-fun m!1397423 () Bool)

(assert (=> b!1514392 m!1397423))

(assert (=> b!1514387 m!1397391))

(declare-fun m!1397425 () Bool)

(assert (=> b!1514387 m!1397425))

(assert (=> b!1514382 m!1397391))

(assert (=> b!1514382 m!1397391))

(declare-fun m!1397427 () Bool)

(assert (=> b!1514382 m!1397427))

(declare-fun m!1397429 () Bool)

(assert (=> b!1514383 m!1397429))

(declare-fun m!1397431 () Bool)

(assert (=> b!1514383 m!1397431))

(declare-fun m!1397433 () Bool)

(assert (=> b!1514395 m!1397433))

(declare-fun m!1397435 () Bool)

(assert (=> b!1514395 m!1397435))

(push 1)

